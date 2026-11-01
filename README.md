# ACB Rebirth

A hub script for Anime Card Battles: Rebirth.

Every release is a tag in this repository, and the script itself is served from jsDelivr so
loads are cached and a bad push cannot reach everyone at once.

## Load

Pinned to a release (recommended - this is what you copy to share):

```lua
loadstring(game:HttpGet("https://cdn.jsdelivr.net/gh/Cb2O/acbx@v261101-2240/acbx.lua"))()
```

Every release gets its own tag under [Releases](https://github.com/Cb2O/acbx/releases); copy the
line for the one you want instead of editing the tag by hand.

`main` tracks the newest push instead. jsDelivr caches branch refs for a while, so a fresh
release can take up to an hour to appear there; the pinned tag is immediate.

## Versions

| File | What it is |
|---|---|
| `acbx.lua` | the build to load |
| `version.txt` | the build id the script compares itself against |

The script polls `https://raw.githubusercontent.com/Cb2O/acbx/main/version.txt` and offers the
newer build when one is published. Raw GitHub is used for that check because it is never
stale; jsDelivr is used for loading because it is cached.

## Notes

- The script is obfuscated and string-encrypted. The source is not published here.
- Releases are built, verified and live-tested before they are tagged, and the published bytes
  are checked against the tested build by sha256.
