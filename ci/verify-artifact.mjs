#!/usr/bin/env node
// Checks the published artifact on its own.
//
// The workshop's tools/verify.mjs is the real gate, but it needs the source and luaparse, and
// neither belongs in a public repo. This is the part that can be proven from the two files a
// player actually downloads, so a push that corrupts them - a truncated upload, a version.txt
// that disagrees with the blob, a dev-stamped title slipping into a release - fails here even
// though nobody ran the full build.
//
// Run locally:  node ci/verify-artifact.mjs
// In CI:        GITHUB_REF_TYPE / GITHUB_REF_NAME are set, and a tag must match the build id.

import fs from "node:fs";
import path from "node:path";
import crypto from "node:crypto";
import { fileURLToPath } from "node:url";
import luaparse from "luaparse";

const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), "..");
const blobPath = path.join(root, "acbx.lua");
const versionPath = path.join(root, "version.txt");

const problems = [];
const fail = (text) => problems.push(text);
const ok = (text) => console.log(`  ok    ${text}`);

if (!fs.existsSync(blobPath) || !fs.existsSync(versionPath)) {
    console.error("acbx.lua and version.txt must both be present");
    process.exit(1);
}

const blob = fs.readFileSync(blobPath);
const text = blob.toString("utf8");
const version = fs.readFileSync(versionPath, "utf8").trim();

// 1. the version file has to name this build, because everything below compares to it.
//
// Two shapes are legal. The older one is a dotted release (0.998) and the tags still carry a few
// of those. The current one is the build id (v261102-1750): the release a player sees is the
// dotted number in the window title, and the id is what the updater compares. What must never
// reach this repo is `dev` - a chunk that reports itself as a development build to every session
// that loads it.
const isDotted = /^\d+\.\d+$/.test(version);
const isBuildId = /^v\d{6}-\d{4}$/.test(version);

if (version === "dev") {
    fail("version.txt is \"dev\" - that is the workshop stamp, not a build");
} else if (!isDotted && !isBuildId) {
    fail(`version.txt is "${version}", which is neither a release version (0.998) nor a build id (v261102-1750)`);
} else {
    ok(`version.txt ${version}`);
}

// 2. the blob carries its own id, and it is the one version.txt names. The stamp is left
// unencoded by the build precisely so this can be read without running anything.
const ids = [...text.matchAll(/buildId = "([^"]*)"/g)].map((m) => m[1]);

if (ids.length !== 1) {
    fail(`expected exactly one buildId stamp in the blob, found ${ids.length}`);
} else if (ids[0] !== version) {
    fail(`blob says ${ids[0]}, version.txt says ${version} - they must agree or the updater loops`);
} else {
    ok(`buildId in blob ${ids[0]}`);
}

// 3. the title is the release version, never a dev id. A build stamped for development shows
// vYYMMDD-HHMM to players, which is exactly what a published artifact must not do.
//
// Matched on the literal, not on `WINDOW_TITLE = ...`: the mangler renames every local, so the
// identifier is gone by the time this file exists. Only the string survives, which is why the
// build protects it from the string encoder.
const titles = [...text.matchAll(/"(ACB Rebirth v[^"]*)"/g)].map((m) => m[1]);

// The title shows the release a player is on (v1.0); version.txt carries the build id. They are
// two different numbers on purpose, so the compare is: the title must be a dotted release, and on
// a dotted version.txt it must be exactly that number.
if (titles.length !== 1) {
    fail(`expected exactly one window title literal, found ${titles.length}`);
} else {
    const shown = titles[0].replace(/^ACB Rebirth v/, "");

    if (/^\d{6}-\d{4}$/.test(shown)) {
        fail(`window title is "${titles[0]}" - that is the dev stamp, not a release version`);
    } else if (shown === "dev") {
        fail(`window title is "${titles[0]}" - that is the workshop stamp`);
    } else if (isDotted && shown !== version) {
        fail(`window title is "${titles[0]}", expected "ACB Rebirth v${version}"`);
    } else if (!/^\d+(\.\d+)*$/.test(shown)) {
        fail(`window title is "${titles[0]}" - the release shown must be a dotted number (v1.0)`);
    } else {
        ok(`window title "${titles[0]}"`);
    }
}

// 4. it has to still be Lua. A truncated or half-written upload usually fails here and
// nowhere else, because the size and the stamps can both survive a cut.
try {
    luaparse.parse(text, { luaVersion: "5.1" });
    ok("parses as Luau/Lua 5.1");
} catch (error) {
    fail(`blob does not parse: ${error.message}`);
}

// 5. a sane size. The build is ~340 KB; anything far under it is a broken artifact, and this
// catches the case where the file was replaced by an error page rather than truncated.
if (blob.length < 100_000) {
    fail(`blob is ${blob.length} bytes - too small to be a build`);
} else {
    ok(`${blob.length} bytes`);
}

// 6. on a tag push, the tag is the pin players install, so it has to name this exact build.
// A tag on the wrong commit is the failure that would otherwise reach users silently.
const refType = process.env.GITHUB_REF_TYPE;
const refName = process.env.GITHUB_REF_NAME;

if (refType === "tag") {
    if (refName !== version) {
        fail(`tag ${refName} does not match build ${version}`);
    } else {
        ok(`tag ${refName} matches the build`);
    }
}

console.log(`  sha   ${crypto.createHash("sha256").update(blob).digest("hex")}`);

if (problems.length) {
    console.error("\nartifact is not publishable:");
    for (const problem of problems) console.error(`  - ${problem}`);
    process.exit(1);
}

console.log("\nartifact OK");
