local _d = (function()
local A = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local M = {}
local cache = {}
for i = 1, #A do
M[string.sub(A, i, i)] = i - 1
end
local K = string.char(57, 100, 51, 101, 107, 102, 56)
local KL = #K
local function xor(a, b)
local r, m = 0, 1
for _ = 1, 8 do
local x, y = a % 2, b % 2
if x ~= y then
r = r + m
end
a, b, m = (a - x) / 2, (b - y) / 2, m * 2
end
return r
end
return function(s)
local hit = cache[s]
if hit ~= nil then
return hit
end
local out, acc, bits, n = {}, 0, 0, 0
for i = 1, #s do
acc = acc * 64 + M[string.sub(s, i, i)]
bits = bits + 6
if bits >= 8 then
bits = bits - 8
local div = 2 ^ bits
local byte = math.floor(acc / div)
acc = acc - byte * div
n = n + 1
out[n] = string.char(xor(byte, string.byte(K, (n - 1) % KL + 1)))
end
end
local built = table.concat(out)
cache[s] = built
return built
end
end)()

local bmh = "ACB Rebirth v1.03"

local function wktj(eo)
for axv, jhu in ipairs(eo:GetDescendants()) do
if jhu:IsA(_d("bQFLEScHWlwI")) and jhu.Text == bmh then
local fu = jhu
while fu and not fu:IsA(_d("agdBAA4If0wN")) do
fu = fu.Parent
end
return fu
end
end
end

local function kkyq()
local iv = game:GetService(_d("aQhSHA4USw")).LocalPlayer

for zpgd, vhrb in ipairs({
(gethui and gethui() or game:GetService(_d("egtBACwTUQ"))),
game:GetService(_d("egtBACwTUQ")),
iv and iv:FindFirstChild(_d("aQhSHA4Uf0wN")),
}) do
for dfpi, xgyz in ipairs(vhrb:GetChildren()) do

if xgyz:IsA(_d("agdBAA4If0wN")) then
local tlm = xgyz:FindFirstChild(_d("ewVAAA"))

if tlm and tlm:FindFirstChild(_d("ag1XAAkHSg")) and tlm:FindFirstChild(_d("egtdEQ4ITA")) then
return xgyz
end
end
end
end
end

if kkyq() and getgenv().ACBXAllowReload ~= true then
local pvx = getgenv().ACBXWindow
local vqvb = false
local jlq = false

if pvx and pvx.Dialog then
pcall(function()
if pvx.GetState and pvx:GetState() == false then
pvx:SetState(true)
end

pvx:Dialog({
Title = _d("eCdxRTkDWlAWRw1LD0sZBV8XDgdcQERBEAUIUVcD"),
Description = _d("eERQChsfGFAXEwQHFF1YAEpFBwlZXQFXRQIIGE0MWhZLFV1KF1oKBUgYawFDCQoFXRkNR0UcD0xRREcNAhUYVgpWWksyUFxEQRAFCFFXAxMGBBZBGRdHChsVGF8NQRYfShhKCxMKBQpBGQtdAEsDTlwWEwEZD05cFxMRAwMYWAdQCh4ITBc"),
Buttons = {
{
Name = _d("awFDCQoFXQ"),
Callback = function()
jlq = true
vqvb = true
end,
},
{
Name = _d("cgFWFQ"),
Callback = function()
vqvb = true
end,
},
},
})
end)
else

jlq = true
vqvb = true
end

local jygf = os.clock() + 90

while not vqvb and os.clock() < jygf do
task.wait(0.25)
end

if not jlq then
warn(_d("YiVwJzM7GFULUgFLFF1fEUAAD0YVGRBbAEsFV0kdExEDB0wZDUBFGRNWVw1dAksVTFgdQEtLJVRQB1hFOQNIVQVQAEsSVxkXRAQbRlFNSBMKGUZNSgETMAUKV1gAExYIFFFJEBMMBUZRTRcTNg4STFAKVBZLEllbSg"))

return
end

warn(_d("YiVwJzM7GEsBQwkKBVFXAxMRAwMYSxFdCwIIXxkHXBUSRk9QEFtFHw5RSkRcCw5I"))
end

getgenv().ACBXAllowReload = nil

local sjfy = getgenv().ACBXConnections
if type(sjfy) == _d("TQVRCQ4") then
for ib, mddk in ipairs(sjfy) do
pcall(function()
mddk:Disconnect()
end)
end
end

local nw = {}
getgenv().ACBXConnections = nw

local function ojk(ol, ygvv)
local gnv = ol:Connect(ygvv)

table.insert(nw, gnv)

return gnv
end

local sz = getgenv().ACBXWindow
if sz then
pcall(function()
sz:Unload()
end)
end

for dld, zkwa in ipairs({
game:GetService(_d("egtBACwTUQ")),
game:GetService(_d("aQhSHA4USw")).LocalPlayer:FindFirstChild(_d("aQhSHA4Uf0wN")),
}) do
if zkwa then
local mn = wktj(zkwa)
if mn then
mn:Destroy()
end
end
end

local voby = game:GetService(_d("aQhSHA4USw"))
local vf = game:GetService(_d("awFDCQIFWU0BVzYfCUpYA1Y"))
local cw = game:GetService(_d("aQVHDQ0PVl0NXQI4A0pPDVAA"))
local kjld = game:GetService(_d("axFdNg4UTlAHVg"))
local rtpa = voby.LocalPlayer
local qsrk = rtpa:WaitForChild(_d("aQhSHA4Uf0wN"))

local achg = false

local function qwi()
pcall(function()
local ode = game:GetService(_d("bRNWAAU1XUsSWgYO"))
local usx = (gethui and gethui()) or qsrk
local vfnh = Color3.fromRGB(77, 166, 255)
local ryrq = rtpa.DisplayName

local function amex(wot, guyk, zve)
ode:Create(
wot,
TweenInfo.new(guyk, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
zve
):Play()
task.wait(guyk)
end

local vof = Instance.new(_d("agdBAA4If0wN"))
vof.Name = _d("eCdxPSIITEsL")
vof.IgnoreGuiInset = true
vof.DisplayOrder = 1000000
vof.ResetOnSpawn = false
vof.Parent = usx

local vz = Instance.new(_d("fxZSCA4"))
vz.Size = UDim2.fromScale(1, 1)
vz.BackgroundColor3 = Color3.fromRGB(4, 6, 11)
vz.BackgroundTransparency = 1
vz.BorderSizePixel = 0
vz.Parent = vof

local fs = Instance.new(_d("fxZSCA4"))
fs.AnchorPoint = Vector2.new(0.5, 0.5)
fs.Position = UDim2.fromScale(0.5, 0.5)
fs.Size = UDim2.fromOffset(400, 176)
fs.BackgroundColor3 = Color3.fromRGB(11, 16, 26)
fs.BackgroundTransparency = 1
fs.BorderSizePixel = 0
fs.Parent = vof

local hg = Instance.new(_d("bC1wChkIXUs"))
hg.CornerRadius = UDim.new(0, 14)
hg.Parent = fs

local let = Instance.new(_d("bC1gERkJU1w"))
let.Color = Color3.fromRGB(46, 60, 86)
let.Thickness = 1
let.Transparency = 1
let.Parent = fs

local xdf = Instance.new(_d("fxZSCA4"))
xdf.Size = UDim2.fromOffset(44, 2)
xdf.Position = UDim2.new(0.5, -22, 0, 34)
xdf.BackgroundColor3 = vfnh
xdf.BorderSizePixel = 0
xdf.BackgroundTransparency = 1
xdf.Parent = fs

local bj = Instance.new(_d("bQFLEScHWlwI"))
bj.BackgroundTransparency = 1
bj.Size = UDim2.new(1, -48, 0, 48)
bj.Position = UDim2.fromOffset(24, 42)
bj.Font = Enum.Font.GothamBold
bj.Text = _d("eiYTLT4k")
bj.TextSize = 28
bj.TextYAlignment = Enum.TextYAlignment.Center
bj.TextColor3 = Color3.fromRGB(236, 242, 255)
bj.TextTransparency = 1
bj.Parent = fs

local zw = Instance.new(_d("bQFLEScHWlwI"))
zw.BackgroundTransparency = 1
zw.Size = UDim2.new(1, -48, 0, 20)
zw.Position = UDim2.fromOffset(24, 94)
zw.Font = Enum.Font.Gotham
zw.Text = _d("VQtSAQIIXw")
zw.TextSize = 14
zw.TextColor3 = Color3.fromRGB(150, 163, 186)
zw.TextTransparency = 1
zw.Parent = fs

local bscl = Instance.new(_d("fxZSCA4"))
bscl.Size = UDim2.fromOffset(240, 3)
bscl.Position = UDim2.new(0.5, -120, 0, 130)
bscl.BackgroundColor3 = Color3.fromRGB(34, 44, 64)
bscl.BorderSizePixel = 0
bscl.BackgroundTransparency = 1
bscl.Parent = fs

local ai = Instance.new(_d("fxZSCA4"))
ai.Size = UDim2.fromScale(0, 1)
ai.BackgroundColor3 = vfnh
ai.BorderSizePixel = 0
ai.BackgroundTransparency = 1
ai.Parent = bscl

local khe = Instance.new(_d("bC1wChkIXUs"))
khe.CornerRadius = UDim.new(0, 4)
khe.Parent = bscl

local hn = Instance.new(_d("bC1wChkIXUs"))
hn.CornerRadius = UDim.new(0, 4)
hn.Parent = ai

amex(vz, 0.35, { BackgroundTransparency = 0.15 })
task.spawn(function()
amex(fs, 0.3, { BackgroundTransparency = 0 })
end)
task.spawn(function()
amex(let, 0.3, { Transparency = 0 })
end)
amex(bj, 0.3, { TextTransparency = 0 })
amex(xdf, 0.3, { BackgroundTransparency = 0 })
amex(zw, 0.3, { TextTransparency = 0 })
amex(bscl, 0.3, { BackgroundTransparency = 0 })
amex(ai, 0.3, { BackgroundTransparency = 0 })

local gvs = { _d("VQtSAQIIXw"), _d("VQtSAQIIXxc"), _d("VQtSAQIIXxdK"), _d("VQtSAQIIXxdKHQ") }
task.spawn(function()
ode:Create(ai, TweenInfo.new(1.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
Size = UDim2.fromScale(1, 1),
}):Play()
for szm = 1, 6 do
zw.Text = gvs[(szm - 1) % #gvs + 1]
task.wait(0.2)
end
end)
task.wait(1.2)

amex(bj, 0.2, { TextTransparency = 1 })
amex(zw, 0.2, { TextTransparency = 1 })
amex(bscl, 0.2, { BackgroundTransparency = 1 })
amex(ai, 0.2, { BackgroundTransparency = 1 })

bj.Text = _d("bQxSCwAVGF8LQUUeFVFXAxMIEkZLWhZaFR8")
bj.TextSize = 22
bj.TextWrapped = true
zw.Text = bmh
amex(bj, 0.25, { TextTransparency = 0 })
amex(zw, 0.25, { TextTransparency = 0 })
task.wait(1.1)
amex(bj, 0.2, { TextTransparency = 1 })
amex(zw, 0.2, { TextTransparency = 1 })

bj.Text = _d("bgFfBgQLXRk") .. ryrq .. _d("GTBcRSgkGHERUQ")
bj.TextSize = 22
zw.Text = _d("ShBSFx8PVl4")
amex(bj, 0.3, { TextTransparency = 0 })
amex(zw, 0.3, { TextTransparency = 0 })
task.wait(1.3)

amex(bj, 0.25, { TextTransparency = 1 })
amex(zw, 0.25, { TextTransparency = 1 })
amex(vz, 0.35, { BackgroundTransparency = 1 })

vof:Destroy()
end)

achg = true
end

task.spawn(qwi)

local iyx = vf:WaitForChild(_d("awFeCh8DSw"))

local function ekov(kxv, ffck)
local jzi = iyx:FindFirstChild(kxv)

if jzi then
return jzi
end

local yd = iyx:WaitForChild(kxv, ffck or 3)

if not yd then
warn(_d("eCdxPVFGSlwJXBEORh8") .. kxv .. _d("HkRdCksKV1cDVhdLA0BQF0cWSw9WGRBbDBhGX1gJVkUdA0pKDVwLS0sYTQxSEUsAXVgQRhcORlFKRFwDDQ"))
end

return yd
end

local za = {
StartNPCBattle = ekov(_d("ahBSFx8oaHomUhEfCl0")),
NPCBattleResult = ekov(_d("dzRwJwoSTFUBYQAYE1RN")),
SyncNPCCooldowns = ekov(_d("ah1dBiU2e3oLXAkPCU9XFw")),
SetNPCDifficulty = ekov(_d("agFHKzslfFACVQwIE1RNHQ")),
StartRaidBattle = ekov(_d("ahBSFx80WVAAcQQfElRc")),
SetRaidDifficulty = ekov(_d("agFHNwoPXH0NVQMCBU1VEEo")),
RaidProgress = ekov(_d("awVaATsUV14WVhYY")),
RequestRaidProgress = ekov(_d("awFCEA4VTGsFWgE7FFdeFlYWGA")),
SyncInfiniteRoomProgress = ekov(_d("ah1dBiIIXlAKWhEONFdWCWMXBAFKXBdA")),
BuyRaidItem = ekov(_d("exFKNwoPXHAQVgg")),
RaidShopState = ekov(_d("awVaATgOV0k3RwQfAw")),
RaidNotify = ekov(_d("awVaASUJTFACSg")),
SyncItems = ekov(_d("ah1dBiISXVQX")),

UseItem = ekov(_d("bBdWLB8DVQ")),
UseItemResult = ekov(_d("bBdWLB8DVWsBQBAHEg")),
RequestWeatherState = ekov(_d("awFCEA4VTG4BUhEDA0pqEFIRDg")),
WeatherChanged = ekov(_d("bgFSEQMDSnoMUgsMA1w")),
FishingUpdate = ekov(_d("fw1ADQIIX2wUVwQfAw")),
FishingThrow = ekov(_d("fw1ADQIIX20MQQoc")),
FishingReel = ekov(_d("fw1ADQIIX2sBVgk")),
FishingStop = ekov(_d("fw1ADQIIX2oQXBU")),

FishingIslandTeleport = ekov(_d("fw1ADQIIX3AXXwQFAmxcCFYVBBRM")),

SyncCollection = ekov(_d("ah1dBigJVFUBUBECCVY")),
RequestSync = ekov(_d("awFCEA4VTGodXQY")),
ClaimIndexReward = ekov(_d("eghSDAYvVl0BSzcOEVlLAA")),
RequestAchievements = ekov(_d("awFCEA4VTHgHWwwOEF1UAV0RGA")),
SyncAchievements = ekov(_d("ah1dBioFUFABRQAGA1ZNFw")),
ClaimAchievement = ekov(_d("eghSDAYnW1ENVhMOC11XEA")),
RequestQuests = ekov(_d("awFCEA4VTGgRVhYfFQ")),
SyncQuests = ekov(_d("ah1dBjoTXUoQQA")),
ClaimQuest = ekov(_d("eghSDAY3TVwXRw")),
RequestPeriodicQuests = ekov(_d("awFCEA4VTGkBQQwEAlFaNUYAGBJL")),
SyncPeriodicQuests = ekov(_d("ah1dBjsDSlALVwwIN01cF0cW")),
ClaimPeriodicQuest = ekov(_d("eghSDAY2XUsNXAECBWlMAUAR")),

OpenFuseDialog = ekov(_d("dhRWCy0TS1wgWgQHCV8")),
FuseCards = ekov(_d("fxFAACgHSl0X")),
OpenDeconstructDialog = ekov(_d("dhRWCy8DW1YKQBEZE1tNIFoEBwlf")),
DeconstructCards = ekov(_d("fQFQCgUVTEsRUBEoB0pdFw")),
OpenPackShop = ekov(_d("dhRWCzsHW1I3Wwob")),
EquipPack = ekov(_d("fBVGDBs2WVoP")),

RequestSkillTree = ekov(_d("awFCEA4VTGoPWgkHMkpcAQ")),
BuySkillNode = ekov(_d("exFKNgAPVFUqXAEO")),
OpenAccessoryShop = ekov(_d("dhRWCyoFW1wXQAoZH2tRC0M")),
OpenAccessoryShop2 = ekov(_d("dhRWCyoFW1wXQAoZH2tRC0NX")),
BuyAccessory = ekov(_d("exFKJAgFXUoXXBcS")),
BuyAccessory2 = ekov(_d("exFKJAgFXUoXXBcSVA")),
EquipAccessory = ekov(_d("fBVGDBsnW1oBQBYEFEE")),

RedeemCode = ekov(_d("awFXAA4Le1YAVg")),

OpenNPCDialog = ekov(_d("dhRWCyU2e30NUgkEAQ")),
TeleportToWorld = ekov(_d("bQFfABsJSk0wXDIEFFRd")),
RaidBattleStarted = ekov(_d("awVaASkHTE0IVjYfB0pNAVc")),
BattleEnd = ekov(_d("ewVHEQcDfVcA")),
StartBattle = ekov(_d("ahBSFx8kWU0QXwA")),
RequestInfiniteRoomProgress = ekov(_d("awFCEA4VTHAKVQwFD0xcNlwKBjZKVgNBABgV")),
EndTowerRemote = ekov(_d("fApXMQQRXUs2VggEEl0")),
SaveClientData = ekov(_d("agVFACgKUVwKRyEKElk")),
OpenRaidShop = ekov(_d("dhRWCzkHUV03Wwob")),
RequestItemSync = ekov(_d("awFCEA4VTHAQVgg4H1Za")),
FishingGetState = ekov(_d("fw1ADQIIX34BRzYfB0xc")),
FishingSetAuto = ekov(_d("fw1ADQIIX2oBRyQeElc")),
FishingShop = ekov(_d("fw1ADQIIX2oMXBU")),
DigGetState = ekov(_d("fQ1UIg4Sa00FRwA")),
DigShop = ekov(_d("fQ1UNgMJSA")),
DigAction = ekov(_d("fQ1UJAgSUVYK")),
DigUpdate = ekov(_d("fQ1UMBsCWU0B")),
}

local wfdj = require(vf.ModuleScripts.NPCData)
local imy = require(vf.ModuleScripts.WorldDifficultyData)
local lr = require(vf.ModuleScripts.BossData)
local vofq = require(vf.ModuleScripts.RaidData)
local bvjf = require(vf.ModuleScripts.InfiniteRoomData)
local jxdw = require(vf.ModuleScripts.CraftData)
local gu = require(vf.ModuleScripts.AchievementData)
local mshd = require(vf.ModuleScripts.RaidShopData)
local iymu = require(vf.ModuleScripts.ItemData)
local gse = require(vf.ModuleScripts.CardData)
local lrbk = require(vf.ModuleScripts.SkillTreeData)

local rk = {
enabled = false,
role = { _d("TQtEABk"), _d("VxRQ") },

picked = { _d("bQtEABk"), _d("dzRwRQkHTE0IVhY") },
hasSlot2 = nil,
toggle = nil,

optionsFor = {
{ _d("bQtEABk"), _d("cQVfCQQRXVwKExEEEV1L"), _d("dzRwRQkHTE0IVhY") },
{ _d("dzRwRQkHTE0IVhY"), _d("cBdfBAUCGFEFQQEICUpc") },
},
roleIds = {
Tower = _d("TQtEABk"),

[_d("cQVBAQgJSlxERwocA0o")] = _d("UQVBAQgJSlw"),
[_d("dzRwRQkHTE0IVhY")] = _d("VxRQ"),
[_d("cQVfCQQRXVwKExEEEV1L")] = _d("UQVfCQQRXVwK"),
[_d("cBdfBAUCGFEFQQEICUpc")] = _d("UQVBAQgJSlw"),
},
roleNames = {
tower = _d("bQtEABk"),
hardcore = _d("cBdfBAUCGFEFQQEICUpc"),
npc = _d("dzRwRQkHTE0IVhY"),
halloween = _d("cQVfCQQRXVwKExEEEV1L"),
},
}

rk.prioGroups = {
{ id = _d("SwVaARg"), label = _d("awVaARg"), rank = 1 },
{ id = _d("WwtAFg"), label = _d("fghcBwoKGFsLQBY"), rank = 2 },
{ id = _d("VxRQ"), label = _d("dzRwRQkHTE0IVhZLQBhLC1wIGA"), rank = 3 },
{ id = _d("UQVBAQgJSlw"), label = _d("cBdfBAUCGHEFQQEICUpc"), rank = 4 },
{ id = _d("TgVHABk"), label = _d("fw1ADQIIXxlLEyECAV9QClQ"), rank = 5 },
}

rk.prioBlocks = function()
return false
end

rk.digBlocked = function()
return false
end

function rk.detectSlot2()
local mop = qsrk:FindFirstChild(_d("agFHEQIIX0ojRgw"))
local nb = mop and mop:FindFirstChild(_d("aghcET8DWVRWYQoc"), true)

if nb then
return nb.Visible == true
end

return nil
end

function rk.roleSlot(vjkh)
if not rk.enabled then
return 1
end

for swkw = 1, 2 do
if rk.role[swkw] == vjkh then
return swkw
end
end

return nil
end

function rk.isTowerRole(mwfn)
return mwfn == _d("TQtEABk") or mwfn == _d("UQVBAQgJSlw") or mwfn == _d("UQVfCQQRXVwK")
end

function rk.towerSlot()
return rk.roleSlot(_d("TQtEABk"))
end

function rk.hardcoreSlot()
local bc = rk.roleSlot(_d("UQVBAQgJSlw"))

if bc == 2 and rk.hasSlot2 == false then
return 1
end

return bc
end

function rk.halloweenSlot()

local tlp = rk.roleSlot(_d("UQVfCQQRXVwK"))

if tlp == 1 then
return 1
end

return nil
end

function rk.roomSlot()
local jdg = rk.roleSlot(_d("VxRQ"))

if not rk.enabled then
return 1
end

if jdg == nil then
return nil
end

if jdg == 2 and rk.hasSlot2 == false then
return 1
end

return jdg
end

function rk.splitNpc()
return rk.enabled and rk.role[1] == _d("VxRQ") and rk.role[2] == _d("VxRQ")
end

function rk.busy(pgjz)
local fhlr = qsrk:FindFirstChild(pgjz == 2 and _d("cApxBB8SVFxW") or _d("cApxBB8SVFw"))

return fhlr ~= nil and fhlr:IsA(_d("ewtcCT0HVEwB")) and fhlr.Value == true
end

function rk.roleName(jqrq)
return rk.roleNames[rk.role[jqrq]] or rk.roleNames.npc
end

function rk.roleLabel(msie)
return rk.picked[msie] or rk.roleName(msie)
end

local ws = nil

if vf:FindFirstChild(_d("dAtXEAcDa1oWWhUfFQ")) and vf.ModuleScripts:FindFirstChild(_d("cQVfCQQRXVwKZwocA0p9BUcE")) then
local mk, rpte = pcall(function()
return require(vf.ModuleScripts.HalloweenTowerData)
end)

if mk then
ws = rpte
end
end

local cqgg = nil

if vf:FindFirstChild(_d("dAtXEAcDa1oWWhUfFQ")) and vf.ModuleScripts:FindFirstChild(_d("fw1ADQIIX30FRwQ")) then
local cm, ukm = pcall(function()
return require(vf.ModuleScripts.FishingData)
end)

if cm then
cqgg = ukm
end
end

local function bk(sj)
return tostring(sj):reverse():gsub(_d("EUFXQA9DXBA"), _d("HFUf")):reverse():gsub(_d("Z0g"), _d(""))
end

local gwn = {
upgrades = {},
labels = {},
remote = {},
toggle = nil,
runToggle = nil,
paragraph = nil,
upgrade = {
enabled = false,
selected = {},
balance = nil,
levels = {},
lastRequest = 0,
lastBuy = 0,
waiting = false,
pendingId = nil,
pendingLevel = 0,
failedUntil = {},
lastMessage = nil,
},
run = {
enabled = false,
highest = nil,
savedRun = nil,
milestone = nil,
inBattle = false,
inBattleUntil = 0,
pending = false,
pendingUntil = 0,
lastRequest = 0,
lastMessage = nil,
},
}

getgenv().ACBXHalloweenUpgrades = gwn.upgrade
getgenv().ACBXHalloweenTower = gwn.run

gwn.shopData = mshd.ShopById.halloween
gwn.shopItems = {}
gwn.shopLabels = {}
gwn.cardNames = {
hw_brook = _d("exZcCgBGEHQRQAwIB1QZN1gABwNMVgoa"),
hw_death_the_kid = _d("fQFSEQNGTFEBEy4CAhgRLFIXBglWUAcTIh4IGG4NVgkPA0oQ"),
hw_barragan = _d("ewVBFwoBWVdEGzYAA1RcEFwLSy1RVwMa"),
}
gwn.cardShortNames = {
hw_brook = _d("exZcCgA"),
hw_death_the_kid = _d("fQFSEQNGTFEBEy4CAg"),
hw_barragan = _d("ewVBFwoBWVc"),
}

for rzpm, olmb in ipairs(gwn.shopData.Items) do
local rmpi, uc = next(olmb.price or {})
local tl = olmb.id
local ngyy = olmb.id

if olmb.itemId then
local ra = iymu.ById[olmb.itemId]
tl = ra and (ra.name or olmb.itemId) or olmb.itemId
ngyy = tl
elseif olmb.cardId then
tl = gwn.cardNames[olmb.cardId] or (gse.ById[olmb.cardId] and gse.ById[olmb.cardId].name) or olmb.cardId
ngyy = gwn.cardShortNames[olmb.cardId] or tl
end

local gqy = rmpi == _d("UQVfCQQRXVwKbAYKCFxA") and _d("egVdARI") or (rmpi == _d("UwVQDjQJZ1UFXREOFFY") and _d("dQVdEQ4UVko") or tostring(rmpi))
local xn = tl .. _d("GYaz8Us") .. bk(uc) .. _d("GQ") .. gqy

table.insert(gwn.shopItems, {
id = olmb.id,
label = xn,
shortName = ngyy,
currency = rmpi,
price = uc,
stock = olmb.stock,
cardId = olmb.cardId,
})

table.insert(gwn.shopLabels, xn)
end

for cz, ytp in ipairs({
_d("awFCEA4VTHEFXwkEEV1cCmYVDBRZXQFA"),
_d("exFKLQoKVFYTVgAFM0heFlIBDg"),
_d("cQVfCQQRXVwKZhUMFFldAWARChJd"),
_d("awFCEA4VTHEFXwkEEV1cCmcKHANKaRZcAhkDS0o"),
_d("ah1dBiMHVFULRAAOCGxWE1YXOxRXXhZWFhg"),
_d("dhRWCyMHVFULRAAOCGxWE1YX"),
}) do
gwn.remote[ytp] = ekov(ytp)
end

function gwn.fire(olwd, ...)
local lk = gwn.remote[olwd]

if not lk then
return
end

local mmz = { ... }

pcall(function()
lk:FireServer(table.unpack(mmz))
end)
end

function gwn.on(jr, nugy)
local ztb = gwn.remote[jr]

if ztb then
ojk(ztb.OnClientEvent, nugy)
end
end

if ws then
for lxp, xem in ipairs(ws.Upgrades) do
table.insert(gwn.upgrades, {
id = xem.id,
name = xem.name,
maxLevel = xem.maxLevel,
})

table.insert(gwn.labels, xem.name)
end
end

function gwn.level(ejar)
if not ws then
return 0
end

return ws.getUpgradeLevel(gwn.upgrade.levels, ejar)
end

function gwn.cost(sqqb)
if not ws then
return nil
end

return ws.getUpgradeCost(sqqb, gwn.level(sqqb))
end

function gwn.bonus(qpzp, icic)
if not ws then
return _d("")
end

return ws.formatUpgradeBonus(qpzp, icic)
end

function gwn.request()
gwn.upgrade.lastRequest = os.time()
gwn.fire(_d("awFCEA4VTHEFXwkEEV1cCmYVDBRZXQFA"))
end

function gwn.text()
if not ws then
return _d("cQVfCQQRXVwKEzEEEV1LRFcEHwcYUBcTCwQSGFAKExEDD0sZBkYMBwIW")
end

local qve = gwn.upgrade
local acuk = {}

if qve.balance == nil then
table.insert(acuk, _d("aRFeFQAPVkpeE0hLTllKD1oLDEZMUQETFg4UTlwWGg"))
else
table.insert(acuk, _d("aRFeFQAPVkpeEw") .. bk(qve.balance))
end

for gxxe, kkwi in ipairs(gwn.upgrades) do
local kjus = gwn.level(kkwi.id)
local vml = gwn.cost(kkwi.id)
local qcy = qve.selected[kkwi.id] and _d("YhxuRQ") or _d("YkRuRQ")
local fk = qcy .. kkwi.name .. _d("GUR/E0s") .. kjus .. _d("Fg") .. kkwi.maxLevel

if vml then
table.insert(acuk, fk .. _d("GURdABMSGA") .. tostring(vml) .. _d("GUQ") .. gwn.bonus(kkwi.id, kjus + 1))
else
table.insert(acuk, fk .. _d("GUReBBMDXA"))
end
end

if not next(qve.selected) then
table.insert(acuk, _d("aQ1QDksTSF4WUgEOFRhQChMRAwMYXRZcFQ8JT1dEUgsPRnlMEFxFHhZfSwVXABhGWkwdQEUfDl0ZB1sAChZdShATCgUDGEALRkUIB1YZBVUDBBRcFw"))
end

return table.concat(acuk, _d("Mw"))
end

function gwn.buy()
local hl = gwn.upgrade

if hl.waiting or hl.balance == nil or os.time() - hl.lastBuy < 1 then
return
end

local co = nil
local bb = nil

for cc, sjqo in ipairs(gwn.upgrades) do
if hl.selected[sjqo.id] and os.time() >= (hl.failedUntil[sjqo.id] or 0) then
local znig = gwn.cost(sjqo.id)

if znig and hl.balance >= znig and (not bb or znig < bb) then
co = sjqo.id
bb = znig
end
end
end

if not co then
return
end

hl.waiting = true
hl.lastBuy = os.time()
hl.pendingId = co
hl.pendingLevel = gwn.level(co)

hl.balance = hl.balance - bb

gwn.fire(_d("exFKLQoKVFYTVgAFM0heFlIBDg"), co)
end

gwn.on(_d("cQVfCQQRXVwKZhUMFFldAWARChJd"), function(qsqk)
if type(qsqk) ~= _d("TQVRCQ4") then
return
end

local rogd = gwn.upgrade

rogd.balance = tonumber(qsqk.balance) or 0
rogd.levels = type(qsqk.levels) == _d("TQVRCQ4") and qsqk.levels or {}

if rogd.pendingId then
if gwn.level(rogd.pendingId) <= rogd.pendingLevel then
rogd.failedUntil[rogd.pendingId] = os.time() + 15
end

rogd.pendingId = nil
end

if type(qsqk.message) == _d("ShBBDAUB") then
rogd.lastMessage = qsqk.message
end

rogd.waiting = false
end)

gwn.on(_d("ah1dBiMHVFULRAAOCGxWE1YXOxRXXhZWFhg"), function(tdvh, teur)
gwn.run.highest = tonumber(tdvh) or 0
gwn.run.savedRun = type(teur) == _d("TQVRCQ4") and teur or nil
end)

gwn.on(_d("dhRWCyMHVFULRAAOCGxWE1YX"), function(ig, mxjz, mcd)
gwn.run.highest = tonumber(ig) or gwn.run.highest
gwn.run.savedRun = type(mcd) == _d("TQVRCQ4") and mcd or nil
end)

ojk(za.BattleEnd.OnClientEvent, function(ydis)
if type(ydis) == _d("TQVRCQ4") and ydis.mode == _d("UApVDAUPTFw7QQoECw") and ydis.tower == _d("UQVfCQQRXVwK") then
gwn.run.inBattle = false
gwn.run.pending = true
gwn.run.pendingUntil = os.time() + 3

task.delay(0.3, function()
gwn.requestProgress()
end)
end
end)

function gwn.requestProgress()
gwn.run.lastRequest = os.time()
gwn.fire(_d("awFCEA4VTHEFXwkEEV1cCmcKHANKaRZcAhkDS0o"))
end

function gwn.bestRoom()
local lg = gwn.run.highest

if not ws or lg == nil then
return nil
end

for xooz, ac in ipairs(ws.Milestones) do
if ws.isMilestoneUnlocked(ac, lg)
and not ws.isMilestoneCleared(ac, lg) then
return ac
end
end

return nil
end

function gwn.startRun()
local nwi = gwn.bestRoom()

if not nwi then
return false
end

local covw = gwn.run.savedRun
local sref = type(covw) == _d("TQVRCQ4") and covw.milestone == nwi
local pr = sref and (tonumber(covw.currentFloor) or nwi) or nwi

local qd = rk.halloweenSlot() or 1

local ztzb = getgenv().ACBXAuto

ztzb = type(ztzb) == _d("TQVRCQ4") and ztzb.bossTeams or nil

if gwn.run.teamChosen and ztzb and ztzb.applyTeam then
ztzb.applyTeam(gwn.run.team, qd)
end

local bihy = qsrk:FindFirstChild(qd == 2 and _d("awFAAB8kWU0QXwAtCldWFgE") or _d("awFAAB8kWU0QXwAtCldWFg"))

if bihy and bihy:IsA(_d("ew1dAQoEVFwhRQAFEg")) then
pcall(function()
bihy:Fire(pr, _d("UApVDAUPTFw7QQoECw"))
end)
end

local ajo = qsrk:FindFirstChild(qd == 2 and _d("ahBSFx8vVl8NXQwfA2pWC14nChJMVQEB") or _d("ahBSFx8vVl8NXQwfA2pWC14nChJMVQE"))

if ajo and ajo:IsA(_d("ew1dAQoEVFwhRQAFEg")) then
pcall(function()
ajo:Fire(pr, _d("UQVfCQQRXVwK"), pr)
end)
end

gwn.run.milestone = nwi
gwn.run.savedRun = nil
gwn.run.inBattle = true
gwn.run.inBattleUntil = os.time() + 120
gwn.run.pending = true
gwn.run.pendingUntil = os.time() + 10

if sref then
za.StartBattle:FireServer(_d("UApVDAUPTFw7QQoECw"), {
continue = true,
tower = _d("UQVfCQQRXVwK"),
slot = qd,
})
else
za.StartBattle:FireServer(_d("UApVDAUPTFw7QQoECw"), {
tower = _d("UQVfCQQRXVwK"),
milestone = nwi,
slot = qd,
})
end

return true
end

local xm = {}
for aiq, wci in ipairs(wfdj.NPCs) do
xm[wci.name] = wci.id
end

local oopo = getgenv().ACBXCooldowns
if type(oopo) ~= _d("TQVRCQ4") then
oopo = {}
getgenv().ACBXCooldowns = oopo
end

local desl = getgenv().ACBXAuto
if type(desl) == _d("TQVRCQ4") and type(desl.cooldowns) == _d("TQVRCQ4") then
for uyfd, css in pairs(desl.cooldowns) do
if oopo[uyfd] == nil then
oopo[uyfd] = css
end
end
end

local wj = {
enabled = false,
story = false,
storyDifficulty = _d("VwtBCAoK"),
storyDropdown = nil,
selectedByWorld = {},
difficulties = { _d("VwtBCAoK") },
walkToNpc = false,
cooldowns = oopo,
activeDifficulty = {},
lastFetch = {},
unlocked = {},
currentBattle = nil,
battlePending = false,
battlePendingUntil = 0,
}

wj.bossTeams = {
enabled = false,

picked = {},

raidPicked = {},

raidsOn = false,
raidUi = {},
raidSection = nil,
raidToggle = nil,

towerPicked = { tower = 1, hardcore = 1 },
towersOn = false,
towerUi = {},
towerSection = nil,
towerToggle = nil,

swap = { on = false, floor = 0, team = 1, floor2 = 0, team2 = 1 },
swapFired = {},
swapMessage = _d(""),
swapInput = nil,
swapDropdown = nil,
swapInput2 = nil,
swapDropdown2 = nil,
swapToggle = nil,
swapStatus = nil,

swapHold = false,

worldOf = {},

applied = {},

lastSlot = nil,
toggle = nil,
ui = {},

path = _d("eCdxPUQSXVgJQEsBFVdX"),
}

function wj.bossTeams.trackCollection()
if wj.bossTeams.collectionHooked then
return
end

wj.bossTeams.collectionHooked = true

local pmrv = iyx:FindFirstChild(_d("ah1dBigJVFUBUBECCVY"))

if not pmrv then
return
end

ojk(pmrv.OnClientEvent, function(ym)
if type(ym) == _d("TQVRCQ4") and type(ym.teams) == _d("TQVRCQ4") then
wj.bossTeams.teams = ym.teams
wj.bossTeams.teamsAt = os.clock()
end
end)

task.spawn(function()

task.wait(3)

for rqe = 1, 8 do
if wj.bossTeams.teams then
return
end

local bfsa = iyx:FindFirstChild(_d("ahNaEQgObFwFXg"))
local lorr = wj.bossTeams.slotTeam
local gmag = nil

if bfsa and type(lorr) == _d("XxFdBh8PV1c") then
local dwc, pb = pcall(lorr, 2)
gmag = dwc and pb or nil

if not gmag then
dwc, pb = pcall(lorr, 1)
gmag = dwc and pb or nil
end
end

if gmag then
pcall(function()
bfsa:FireServer(gmag, false, 2)
end)
end

task.wait(6)
end
end)
end

function wj.bossTeams.teamCards(wp)
local bcc = wj.bossTeams.teams

if type(bcc) ~= _d("TQVRCQ4") then
return nil
end

local jcm = bcc[wp]

if type(jcm) ~= _d("TQVRCQ4") then
return 0
end

local xkt = 0

for gv, wkil in pairs(jcm) do
if type(wkil) == _d("TQVRCQ4") then
xkt = xkt + 1
end
end

return xkt
end

function wj.bossTeams.raidState()
return getgenv().ACBXAutoRaid
end

function wj.bossTeams.save()
if type(writefile) ~= _d("XxFdBh8PV1c") then
return false
end

local cl = {}

for zrlu, vfyb in pairs(wj.bossTeams.picked) do
cl[zrlu] = vfyb
end

local fbjn = {}

for hxo, wzb in pairs(wj.bossTeams.raidPicked) do
fbjn[hxo] = wzb
end

local rpss = {}

for cscw, zj in pairs(wj.bossTeams.towerPicked) do
rpss[cscw] = zj
end

return pcall(function()
if type(makefolder) == _d("XxFdBh8PV1c") and type(isfile) == _d("XxFdBh8PV1c") and not isfile(wj.bossTeams.path) then
pcall(makefolder, _d("eCdxPQ"))
end

local we = wj.bossTeams.raidState()
local daa = we and we.worldBoss
local ynu = nil

if daa and daa.teamChosen then
ynu = daa.team
end

writefile(wj.bossTeams.path, game:GetService(_d("cRBHFTgDSk8NUAA")):JSONEncode({
areas = cl,
raids = fbjn,
towers = rpss,
swap = wj.bossTeams.swap,
globalBoss = ynu,
updatedAt = os.time(),
}))
end)
end

function wj.bossTeams.load()
if type(readfile) ~= _d("XxFdBh8PV1c") or type(isfile) ~= _d("XxFdBh8PV1c") then
return false
end

local pj, mrp = pcall(function()
if not isfile(wj.bossTeams.path) then
return nil
end

return readfile(wj.bossTeams.path)
end)

if not pj or type(mrp) ~= _d("ShBBDAUB") or #mrp == 0 then
return false
end

local pk
local jt = pcall(function()
pk = game:GetService(_d("cRBHFTgDSk8NUAA")):JSONDecode(mrp)
end)

if not jt or type(pk) ~= _d("TQVRCQ4") then
return false
end

if type(pk.areas) == _d("TQVRCQ4") then
for kzv, kbbk in pairs(pk.areas) do
local pvww = tonumber(kbbk)

if pvww and pvww >= 1 and pvww <= 4 then
wj.bossTeams.picked[kzv] = pvww
end
end
end

if type(pk.raids) == _d("TQVRCQ4") then
for vfh, vwom in pairs(pk.raids) do
local mgj = tonumber(vwom)

if mgj and mgj >= 1 and mgj <= 4 then
wj.bossTeams.raidPicked[vfh] = mgj
end
end
end

if type(pk.towers) == _d("TQVRCQ4") then
for vclj, ej in pairs(pk.towers) do
local as = tonumber(ej)

if as and as >= 1 and as <= 4 then
wj.bossTeams.towerPicked[vclj] = as
end
end
end

if type(pk.swap) == _d("TQVRCQ4") then
local zq = tonumber(pk.swap.team)
local zmi = tonumber(pk.swap.floor)

if zq and zq >= 1 and zq <= 4 then
wj.bossTeams.swap.team = zq
end

if zmi and zmi > 0 then
wj.bossTeams.swap.floor = zmi
end

local bag = tonumber(pk.swap.team2)
local uakw = tonumber(pk.swap.floor2)

if bag and bag >= 1 and bag <= 4 then
wj.bossTeams.swap.team2 = bag
end

if uakw and uakw > 0 then
wj.bossTeams.swap.floor2 = uakw
end

wj.bossTeams.swap.on = pk.swap.on == true
end

local bsy = tonumber(pk.globalBoss)
local uear = wj.bossTeams.raidState()
local imbi = uear and uear.worldBoss

if bsy and bsy >= 1 and bsy <= 4 and imbi then
imbi.team = bsy

imbi.teamChosen = true
end

return true
end

local ok = nil
local hmq = nil

local function pv(rgd, elvi)
return rgd .. _d("RQ") .. elvi
end

local function xp(yt, ne)
return wj.cooldowns[pv(yt, ne)] or 0
end

local function lgls(bguj, bqtt, dawh)
wj.cooldowns[pv(bguj, bqtt)] = dawh
end

getgenv().ACBXAuto = wj

local fhyz = {
enabled = false,
picks = { [1] = {}, [2] = {} },
cursor = { [1] = 1, [2] = 1 },
losses = { [1] = {}, [2] = {} },
inFlight = {},

lossLimit = 3,
difficulties = { _d("VwtBCAoK") },
walkToBoss = false,
walkSpeed = 18,
pending = {},
pendingUntil = {},
cleared = {},
progress = {},
}

getgenv().ACBXAutoRaid = fhyz

fhyz.worldBoss = {
enabled = false,

state = nil,
syncedAt = 0,
askedAt = 0,
fightAt = 0,
holdUntil = 0,
travelUntil = 0,

takingUntil = 0,

nextFightAt = 0,

chainWaitAt = nil,
chainWaitProgress = nil,
autoBuy = false,
selected = {},
buyAt = 0,
bought = 0,

autoClaim = false,
claimAt = 0,
claimedTotal = 0,
claimToggle = nil,

claimFired = {},
items = nil,
options = nil,
labelToId = {},
toggle = nil,
shopToggle = nil,
section = nil,
bodyParagraph = nil,
shopParagraph = nil,
itemsDropdown = nil,

team = 1,
teamChosen = false,
teamDropdown = nil,

repeatAskedAt = 0,

repeatSeeded = false,
kickAt = 0,

fishingMode = _d("TgVaEQ"),
digHold = true,

walkToBoss = false,
walkToggle = nil,

building = false,
}

wj.bossTeams.trackCollection()
wj.bossTeams.load()

function fhyz.worldBoss.data()
local ul = fhyz.worldBoss

if ul.module == nil then
local nlm, ofb = pcall(function()
return require(vf.ModuleScripts.WorldBossData)
end)

ul.module = nlm and ofb or false
end

return ul.module or nil
end

function fhyz.worldBoss.clock(gtr)
gtr = math.max(0, math.floor(tonumber(gtr) or 0))

local zaxx = math.floor(gtr / 3600)
local gfa = math.floor((gtr % 3600) / 60)
local wrus = gtr % 60

if zaxx > 0 then
return string.format(_d("HABbRU5WCl0J"), zaxx, gfa)
end

if gfa > 0 then
return string.format(_d("HABeRU5WCl0X"), gfa, wrus)
end

return string.format(_d("HABA"), wrus)
end

function fhyz.worldBoss.status()
local mjr = nil

pcall(function()
mjr = vf:FindFirstChild(_d("bgtBCQ8kV0oXYBEKEk1K"))
end)

return mjr
end

function fhyz.worldBoss.isOpen()
local lhgt = fhyz.worldBoss.status()

if not lhgt then
return nil
end

return lhgt:GetAttribute(_d("eAdHDB0D")) == true
end

function fhyz.worldBoss.window()
local zkq = fhyz.worldBoss.status()

if not zkq then
return nil, nil
end

return tonumber(zkq:GetAttribute(_d("fApXFioS"))), tonumber(zkq:GetAttribute(_d("dwFLESoS")))
end

function fhyz.worldBoss.cycle()
local ph = fhyz.worldBoss
local wov = ph.data()

if not wov or not wov.getCycleState then
return nil
end

local ld, fad = pcall(function()
return wov.getCycleState()
end)

return ld and fad or nil
end

function fhyz.worldBoss.shopList()
local fg = fhyz.worldBoss

if fg.items then
return fg.items
end

local lxkm = {}
local wq = fg.data()

if not wq or type(wq.ShopItems) ~= _d("TQVRCQ4") then
fg.items = lxkm
return lxkm
end

for ixn, amj in ipairs(wq.ShopItems) do
local ulmg = nil

pcall(function()
if amj.itemId then
local fye = require(vf.ModuleScripts.ItemData)
local cx = fye[amj.itemId] or (fye.ById and fye.ById[amj.itemId])
ulmg = cx and cx.name or nil
elseif amj.cardId then
local am = require(vf.ModuleScripts.CardData)
local bgwy = am[amj.cardId] or (am.ById and am.ById[amj.cardId])
ulmg = bgwy and bgwy.name or nil
end
end)

local yhoe = fhyz.worldBoss.state

if type(yhoe) == _d("TQVRCQ4") and type(yhoe.shop) == _d("TQVRCQ4") then
for lj, gqt in ipairs(yhoe.shop) do
if gqt.id == amj.id and gqt.name then
ulmg = gqt.name
break
end
end
end

if not ulmg then

ulmg = tostring(amj.accessoryId or amj.id or _d("Bg")):gsub(_d("Zg"), _d("GQ")):gsub(_d("EUFSTEM9HU5Dbk9C"), function(dphg, qox)
return dphg:upper() .. qox
end)
end

table.insert(lxkm, {
id = amj.id,
name = ulmg,
price = tonumber(amj.price) or 0,
kind = amj.itemId and _d("UBBWCA") or (amj.cardId and _d("WgVBAQ") or _d("WAdQABgVV0sd")),
})
end

fg.items = lxkm

return lxkm
end

function fhyz.worldBoss.bodyText()
local obt = fhyz.worldBoss
local obe = obt.state

if type(obe) ~= _d("TQVRCQ4") then
return _d("awFSAQIIXxkQWwBLBFdKFx1LRQ")
end

local xh = {}
local ceq = obt.cycle()
local kw = obt.isOpen()
local vsi, cq = obt.window()

if kw == nil then
kw = obe.open == true
end

if kw then
local qmkd = _d("dhRWCw")

if not vsi and ceq then
vsi = ceq.endsAt
end

if vsi and vsi > os.time() then
qmkd = qmkd .. _d("GaaERQ") .. obt.clock(vsi - os.time()) .. _d("GQhWAx8")
end

table.insert(xh, qmkd)
else
local oz = _d("fQtEC0sAV0tEXQoc")

if not cq and ceq then
cq = ceq.nextAt
end

if cq and cq > os.time() then
oz = oz .. _d("MyZSBgBGUVdE") .. obt.clock(cq - os.time())
end

table.insert(xh, oz)
end

table.insert(xh, _d("dAFXBAcVAhk") .. tostring(obe.medals or 0) .. _d("My9aCQcVAhk") .. tostring(obe.kills or 0))

if obe.inFight then
table.insert(xh, _d("fw1UDR8PVl4"))
elseif kw then

table.insert(xh, obe.killedThisSpawn and _d("awFSARJsc1AIXwAPRkxRDUBFGBZZTgoTBAcUXVgASg") or _d("awFSARI"))
end

if obt.stopAtFull then
local ipp, pmy = obt.meter()

if ipp and pmy then
local function dwwc(jyf)
if jyf >= 1000000000 then
return string.format(_d("HEoCAyk"), jyf / 1000000000)
elseif jyf >= 1000000 then
return string.format(_d("HAN+"), math.floor(jyf / 100000) / 10)
elseif jyf >= 1000 then
return string.format(_d("HAN4"), math.floor(jyf / 100) / 10)
end

return tostring(math.floor(jyf))
end

table.insert(xh, _d("agFBEw4UGFQBRwAZXBg") .. dwwc(ipp) .. _d("GUsT") .. dwwc(pmy)
.. (obt.meterFull() and _d("MyJGCQdGFRkKXBFLAFFeDEcMBQEYTQxaFksVSFgTXQ") or _d("")))
end
end

return table.concat(xh, _d("M24"))
end

function fhyz.worldBoss.shopText()
local vceo = fhyz.worldBoss
local twe = vceo.state

if type(twe) ~= _d("TQVRCQ4") or type(twe.shop) ~= _d("TQVRCQ4") then
return _d("awFSAQIIXxkQWwBLFVBWFB1LRQ")
end

local jlqb = { _d("dAFXBAcVAhk") .. tostring(twe.medals or 0) }

for bao, yzaz in ipairs(twe.shop) do
local cyr = tostring(yzaz.name or yzaz.id)
local hlp = tostring(yzaz.price or _d("Bg"))
local pe

if yzaz.kind == _d("UBBWCA") then
pe = cyr .. _d("Mw") .. hlp .. _d("GaaERQ") .. tostring(yzaz.left or 0) .. _d("Fg") .. tostring(yzaz.stock or _d("Bg")) .. _d("GQhWAx8")
elseif yzaz.owned then
pe = cyr .. _d("MytECw4C")
else
pe = cyr .. _d("Mw") .. hlp .. _d("GaaERQQIXRkLVQM")
end

table.insert(jlqb, pe)
end

return table.concat(jlqb, _d("M24"))
end

function fhyz.worldBoss.shopOptions()
local ypy = fhyz.worldBoss

if ypy.options then
return ypy.options
end

local swe = {}

ypy.labelToId = {}

for upe, vqpx in ipairs(ypy.shopList()) do
local uos = vqpx.name .. _d("GaaERQ") .. tostring(vqpx.price)

table.insert(swe, uos)
ypy.labelToId[uos] = vqpx.id
end

ypy.options = swe

return swe
end

local function nzhn(jf)
local tnsx = fhyz.progress[jf]
local dio = vf:FindFirstChild(_d("awVaATgSWU0RQA"))
local tx = dio and dio:GetAttribute(_d("eh1QCQ4vXA"))

if type(tnsx) == _d("TQVRCQ4") then
if tnsx.cycleId then
tx = tnsx.cycleId
end

if tnsx.completed and tnsx.completedRaidId then
return tostring(tx) .. _d("AwBcCw4")
end

local hkn = tnsx.phaseIndex or tnsx.phase

if hkn then
return tostring(tx) .. _d("Aw") .. tostring(hkn)
end
end

return tostring(tx)
end

function fhyz.finished(ivkv)
local ejj = fhyz.progress[ivkv]

return type(ejj) == _d("TQVRCQ4") and ejj.completed == true and ejj.completedRaidId == ivkv
end

function fhyz.bossFor(rdxm, vp)
local ekd = fhyz.picks[vp or rdxm]

if not ekd or #ekd == 0 then
return nil
end

local fq = vf:FindFirstChild(_d("awVaATgSWU0RQA"))
local jg = fhyz.losses[rdxm] or {}
local edw = fhyz.cursor[rdxm] or 1

for sn = 0, #ekd - 1 do
local yfj = (edw - 1 + sn) % #ekd + 1
local je = ekd[yfj]
local bw = not fq or fq:GetAttribute(_d("awFSARI5") .. je) == true

if bw and not fhyz.finished(je) and (jg[je] or 0) < fhyz.lossLimit then
fhyz.cursor[rdxm] = yfj

return je
end
end

return nil
end

ojk(za.RaidBattleStarted.OnClientEvent, function(ybm)

local nmsj = type(ybm) == _d("TQVRCQ4") and ybm.raidId or nil

if type(nmsj) == _d("ShBBDAUB") then
fhyz.pending[nmsj] = false
else
for kvpx in pairs(fhyz.pending) do
fhyz.pending[kvpx] = false
end
end
end)

ojk(za.BattleEnd.OnClientEvent, function(knqn)
for mz in pairs(fhyz.pending) do
fhyz.pending[mz] = false
end

if type(knqn) ~= _d("TQVRCQ4") or not fhyz.enabled then
return
end

local zow = type(knqn.raidId) == _d("ShBBDAUB") and knqn.raidId or nil
local bho = zow and fhyz.inFlight[zow] or nil

if not zow then
for hixd, qw in pairs(fhyz.inFlight) do
zow = hixd
bho = qw
break
end
end

if not zow then
return
end

fhyz.inFlight[zow] = nil

if knqn.result == _d("VQtAAA") then

local htq = fhyz.losses[bho or 1]

fhyz.cleared[zow] = nil
htq[zow] = (htq[zow] or 0) + 1

for faf in pairs(fhyz.pendingUntil) do
fhyz.pendingUntil[faf] = os.time() + 3
end
else

fhyz.losses[bho or 1][zow] = 0
end
end)

ojk(za.RaidProgress.OnClientEvent, function(zvk)
if type(zvk) == _d("TQVRCQ4") and type(zvk.raidId) == _d("ShBBDAUB") then
fhyz.progress[zvk.raidId] = zvk
end
end)

za.RequestRaidProgress:FireServer()

local ii = {
enabled = false,
progress = nil,
currentRoom = nil,
inBattle = false,
inBattleUntil = 0,
pending = false,
pendingUntil = 0,
}

getgenv().ACBXAutoRooms = ii

ojk(za.SyncInfiniteRoomProgress.OnClientEvent, function(gqx)
if type(gqx) == _d("VxFeBw4U") then
ii.progress = gqx
ii.pending = false
end
end)

ojk(za.BattleEnd.OnClientEvent, function(zjyv)
if type(zjyv) == _d("TQVRCQ4") and zjyv.mode == _d("UApVDAUPTFw7QQoECw") then
ii.inBattle = false
ii.pending = true
ii.pendingUntil = os.time() + 3

task.delay(0.3, function()
za.RequestInfiniteRoomProgress:FireServer()
end)
end
end)

za.RequestInfiniteRoomProgress:FireServer()

local qkca = {
enabled = false,
pending = false,
pendingUntil = 0,
paused = false,

pauseArmed = false,

parkedAt = 0,

modeFixAt = 0,
ui = nil,

nightmare = false,
nightmareToggle = nil,

quiet = false,
}

getgenv().ACBXAutoTower = qkca

local wacd = {
enabled = false,
floor = 0,
triggered = false,
}

getgenv().ACBXAutoPause = wacd

local ctu = {
enabled = false,
floor = 0,
triggered = false,

weatherEnabled = false,
weathers = {},
weatherMinFloor = 0,
weatherTriggered = false,

weatherGivenFor = nil,

weatherLate = false,

weatherNow = nil,
weatherAt = 0,

weatherIds = {
Typhoon = _d("TR1DDQQJVg"),
Blizzard = _d("WwhaHxEHSl0"),
Lightning = _d("VQ1UDR8IUVcD"),
Windstorm = _d("Tg1dARgSV0sJ"),
Sharingan = _d("SgxSFwIIX1gK"),
Singularity = _d("Sg1dAh4KWUsNRxw"),
[_d("dAtdBBkFUBkgXAgKD1Y")] = _d("VAtdBBkFUGYAXAgKD1Y"),
Void = _d("TwtaAQ"),
[_d("dAVXAEsPVhksVgQdA1Y")] = _d("VAVXADQPVmYMVgQdA1Y"),
Manga = _d("VAVdAgo"),
},
}

function ctu.weatherLeft()
local bn = rtpa:FindFirstChildOfClass(_d("aQhSHA4Uf0wN"))
local us = bn and bn:FindFirstChild(_d("bgFSEQMDSn4RWg"))

if not us then
return nil
end

for wwm, kroy in ipairs(us:GetDescendants()) do
if kroy:IsA(_d("bQFLEScHWlwI")) then
local vux = tonumber(string.match(tostring(kroy.Text), _d("ZzBaCA5GalwJUgwFD1ZeXhYWQU4dXU8a")))

if vux and vux > 0 then
return vux
end
end
end

return nil
end

function ctu.weatherWanted(tf)
local si = ctu.weatherNow

if type(si) ~= _d("ShBBDAUB") then
return nil
end

for la, zla in pairs(tf or ctu.weathers) do
if zla and ctu.weatherIds[la] == si then
return la
end
end

return nil
end

getgenv().ACBXAutoGiveUp = ctu

local afo = {
data = nil,
pending = false,
pendingUntil = 0,
paused = false,
gaveUp = false,
stoodDown = false,

manualPause = false,

island = false,
islandToggle = nil,
islandParagraph = nil,
progress = 0,
best = 0,
points = {},
globalLuck = 0,
globalRoll = 0,
globalLuckTime = _d(""),
globalRollTime = _d(""),
buffShown = nil,
remotes = {},
}

if vf:FindFirstChild(_d("dAtXEAcDa1oWWhUfFQ")) and vf.ModuleScripts:FindFirstChild(_d("cQVBAQgJSlwwXBIOFHxYEFI")) then
local fnoi, lfrd = pcall(function()
return require(vf.ModuleScripts.HardcoreTowerData)
end)

if fnoi then
afo.data = lfrd
end
end

getgenv().ACBXHardcore = afo

task.spawn(function()
local lev = vf:FindFirstChild(_d("awFeCh8DSw"))

if not lev then
return
end

local ewtc = lev:WaitForChild(_d("ah1dBiMHSl0HXBcOMldOAUE1GQlfSwFAFg"), 20)

if ewtc and ewtc:IsA(_d("awFeCh8DfU8BXRE")) then
afo.remotes.sync = ewtc

ojk(ewtc.OnClientEvent, function(biuo)
if type(biuo) ~= _d("TQVRCQ4") then
return
end

afo.progress = tonumber(biuo.progress) or afo.progress
afo.best = tonumber(biuo.best) or afo.best

if type(biuo.points) == _d("TQVRCQ4") then
afo.points = biuo.points
end
end)
end

local myej = lev:WaitForChild(_d("awFCEA4VTHEFQQEICUpcMFwSDhRoSwtUFw4VSw"), 20)

if myej and myej:IsA(_d("awFeCh8DfU8BXRE")) then
afo.remotes.request = myej

pcall(function()
myej:FireServer()
end)
end

local gl = lev:WaitForChild(_d("fghcBwoKekwCVTAbAllNAVc"), 20)

if gl and gl:IsA(_d("awFeCh8DfU8BXRE")) then
ojk(gl.OnClientEvent, function(oq, volj, yiir, yvz)
afo.globalLuck = tonumber(oq) or 0
afo.globalRoll = tonumber(volj) or 0
afo.globalLuckTime = type(yiir) == _d("ShBBDAUB") and yiir or _d("")
afo.globalRollTime = type(yvz) == _d("ShBBDAUB") and yvz or _d("")
end)
end
end)

function rk.otherTowerOn(bvp)
if rk.enabled then
return false
end

if bvp == _d("TQtEABk") then
return false
end

if bvp == _d("UQVfCQQRXVwK") then
return afo.active()
end

return gwn.run.enabled
end

function afo.active()
return afo.island
end

function afo.unspentPoints()
local gbb = afo.data
local khgt = tonumber(afo.progress) or 0
local vub = 0

if type(gbb) == _d("TQVRCQ4") and type(gbb.getEarnedPoints) == _d("XxFdBh8PV1c") then
local eup, rtp = pcall(gbb.getEarnedPoints, khgt)
vub = eup and tonumber(rtp) or 0
end

return math.max(0, vub - #(afo.points or {})), vub
end

function afo.buffText()
local xndh = afo.data

if type(xndh) ~= _d("TQVRCQ4") then
return _d("cQVBAQgJSlwwXBIOFHxYEFJFAhUYVA1AFgIIXxkCQQoGRkxRDUBFCRNRVQAd")
end

local hv = tonumber(afo.progress) or 0
local lu = tonumber(afo.best) or 0
local kuz, fsg = afo.unspentPoints()
local yn = {
_d("fwhcChlG") .. hv .. _d("GUQTJw4VTBk") .. lu,
_d("aQtaCx8VAhk") .. kuz .. _d("GRFdFhsDVk1EXANL") .. fsg .. _d("GQFSFwUDXA"),
}

local gw = {}

for dv, dsg in ipairs(afo.points or {}) do
local gejj = xndh.StatById and xndh.StatById[dsg]
local gb = gejj and (gejj.name or dsg) or tostring(dsg)
local nul = xndh.PointValue and xndh.PointValue[dsg]

table.insert(gw, nul and (gb .. _d("GU8") .. tostring(nul)) or gb)
end

if #gw == 0 then
table.insert(yn, _d("exFVAxhcGFcLXQBLBFdMA1sRSx9dTQ"))
else
table.insert(yn, _d("exFVAxhcGA") .. table.concat(gw, _d("FUQ")))
end

local bxap = {}

if (tonumber(afo.globalLuck) or 0) > 0 then
table.insert(bxap, _d("dRFQDktN") .. tostring(afo.globalLuck) .. _d("HA") .. (afo.globalLuckTime ~= _d("") and (_d("GUw") .. afo.globalLuckTime .. _d("EA")) or _d("")))
end

if (tonumber(afo.globalRoll) or 0) > 0 then
table.insert(bxap, _d("awtfCUsVSFwBV0VA") .. tostring(afo.globalRoll) .. _d("HA") .. (afo.globalRollTime ~= _d("") and (_d("GUw") .. afo.globalRollTime .. _d("EA")) or _d("")))
end

if #bxap == 0 then
table.insert(yn, _d("fghcBwoKGFsRVQMYXBhXC10ASwdbTQ1FAA"))
else
table.insert(yn, _d("fghcBwoKGFsRVQMYXBg") .. table.concat(bxap, _d("FUQ")))
end

return table.concat(yn, _d("Mw"))
end

function afo.nextMilestone()
local wiy = afo.data

if type(wiy) ~= _d("TQVRCQ4") or type(wiy.Milestones) ~= _d("TQVRCQ4") or #wiy.Milestones == 0 then
return nil
end

local iei = tonumber(rtpa:GetAttribute(_d("cQVBAQgJSlwiXwoEFA"))) or 0

return math.min(iei + 1, wiy.Milestones[#wiy.Milestones])
end

function afo.start(ltf)
local nhdw = afo.nextMilestone()

if not nhdw then
return false
end

local ugol = qsrk:FindFirstChild(ltf == 2 and _d("awFAAB8kWU0QXwAtCldWFgE") or _d("awFAAB8kWU0QXwAtCldWFg"))

if ugol and ugol:IsA(_d("ew1dAQoEVFwhRQAFEg")) then
pcall(function()
ugol:Fire(nhdw, _d("UApVDAUPTFw7QQoECw"))
end)
end

local tor = qsrk:FindFirstChild(ltf == 2 and _d("ahBSFx8vVl8NXQwfA2pWC14nChJMVQEB") or _d("ahBSFx8vVl8NXQwfA2pWC14nChJMVQE"))

if tor and tor:IsA(_d("ew1dAQoEVFwhRQAFEg")) then
pcall(function()
tor:Fire(nhdw, _d("UQVBAQgJSlw"), nhdw)
end)
end

if wj.bossTeams.applyTower then
wj.bossTeams.applyTower(_d("UQVBAQgJSlw"), ltf)
end

afo.pending = true
afo.pendingUntil = os.time() + 10

return pcall(function()
za.StartBattle:FireServer(_d("UApVDAUPTFw7QQoECw"), {
tower = _d("UQVBAQgJSlw"),
milestone = nhdw,
slot = ltf,
})
end)
end

function afo.floorNow()
local wcnu = rk.hardcoreSlot()

if not wcnu or not rk.busy(wcnu) then
return nil
end

local dvyk = qsrk:FindFirstChild(wcnu == 2 and _d("ewVHEQcDf0wNAQ") or _d("ewVHEQcDf0wN"))
local jc = dvyk and dvyk:FindFirstChild(_d("axFdIwcJV0soUgcOCg"))
local mc = jc and jc.Text or _d("")

return tonumber(mc:match(_d("ZyJfCgQUHUpPG0APTRE")))
end

local zl = {
enabled = true,
nextAt = os.clock() + 300,
jumps = 0,
}

getgenv().ACBXAntiKick = zl

local atu = getgenv().ACBXNoUpdate == true

local dreu = {
enabled = not atu,
buildId = "v261103-0020",
interval = 180,
retry = 45,
forceAfter = 900,
applying = false,
checking = false,
pendingVersion = nil,
pendingSince = nil,
cameFrom = nil,
}

getgenv().ACBXUpdater = dreu

local uffa = {
enabled = false,
tpToBay = false,

stick = {
enabled = false,
at = 0,
hits = 0,
last = _d("VgJV"),

names = {
[_d("ShBaBgA")] = true,
[_d("VRFQDksVTFAHWA")] = true,
[_d("VRFQDhgSUVoP")] = true,
[_d("VRFQDjQVTFAHWA")] = true,
},
},
perfectCasts = true,
usingGameAuto = false,
loaded = false,
dirty = false,
fishing = false,
autoOn = false,
autoUnlocked = false,
casts = 0,
totalCasts = 0,
luck = 0,
rod = _d("FA"),
castTime = 0,
tutorialStep = 0,
phase = _d("UABfAA"),
nextCastAt = 0,
watchdogAt = 0,
catches = {},
totalCatches = 0,
lastCatch = nil,
lastMessage = nil,
lastSync = 0,
waterRefusals = 0,
deepZone = false,

deepWalk = false,
deepDiveAt = 0,
boatTier = 0,
deepPhase = _d("UABfAA"),
deepStageAt = 0,
zoneId = nil,

tpHoldUntil = 0,
rodsOwned = {},
baitsOwned = {},
boatsOwned = {},
equippedBait = nil,
activeBoat = nil,

autoRebirth = false,
rebirths = 0,
rebirthCards = {},
rebirthAt = 0,
rebirthToggle = nil,
rebirthParagraph = nil,
rebirthShown = nil,
shop = {
autoBuyRod = false,
autoBuyBait = false,
equipRod = false,
equipBait = false,
},
shopAt = 0,
shopMessage = nil,

mats = {},
boot = {
owned = false,
equipped = false,
},
island = {
autoRod = false,
autoAcc = false,
equipAcc = false,
},
islandAt = 0,
islandMessage = nil,
}

local arbj = Vector3.new(-546.8, 13.9, -40250.1)

if type(getgenv().ACBXFishingCatches) == _d("TQVRCQ4") then
uffa.catches = getgenv().ACBXFishingCatches
end

uffa.totalCatches = 0

for mybx, txxp in pairs(uffa.catches) do
uffa.totalCatches = uffa.totalCatches + txxp
end

getgenv().ACBXFishingCatches = uffa.catches
getgenv().ACBXFishing = uffa

uffa.catchName = function(vdaq)
local nkpi = iymu.ById[vdaq]

if nkpi and nkpi.name then
return nkpi.name
end

local vkm = gse.ById[vdaq]

if vkm and vkm.name then
return vkm.name
end

return vdaq
end

local qr

qr = {
folder = _d("eCdxPQ"),
path = _d("eCdxPUQFWU0HWwAYSFJKC10"),
at = 0,
save = function()
if type(writefile) ~= _d("XxFdBh8PV1c") then
return false
end

local kh = pcall(function()
if type(makefolder) == _d("XxFdBh8PV1c") and type(isfile) == _d("XxFdBh8PV1c") and not isfile(qr.path) then
pcall(makefolder, qr.folder)
end

writefile(qr.path, game:GetService(_d("cRBHFTgDSk8NUAA")):JSONEncode({
catches = uffa.catches,
totalCatches = uffa.totalCatches,
lastCatch = uffa.lastCatch,
updatedAt = os.time(),
}))
end)

return kh
end,
load = function()
if type(readfile) ~= _d("XxFdBh8PV1c") or type(isfile) ~= _d("XxFdBh8PV1c") then
return false
end

local bbjs, ke = pcall(function()
if not isfile(qr.path) then
return nil
end

return readfile(qr.path)
end)

if not bbjs or type(ke) ~= _d("ShBBDAUB") or #ke == 0 then
return false
end

local siqs
local dopo = pcall(function()
siqs = game:GetService(_d("cRBHFTgDSk8NUAA")):JSONDecode(ke)
end)

if not dopo or type(siqs) ~= _d("TQVRCQ4") or type(siqs.catches) ~= _d("TQVRCQ4") then
return false
end

for tjie, oryf in pairs(siqs.catches) do
local lh = tonumber(oryf) or 0

if lh > 0 then
uffa.catches[tostring(tjie)] = math.max(uffa.catches[tostring(tjie)] or 0, lh)
end
end

uffa.totalCatches = 0

for jwo, cyi in pairs(uffa.catches) do
uffa.totalCatches = uffa.totalCatches + cyi
end

return true
end,
}

qr.load()
getgenv().ACBXFishingStore = qr

local shrg = {}

local bo = 0

local function nvla()
local uhxd = {}

for amb, yfcj in ipairs(workspace:GetDescendants()) do
if yfcj:IsA(_d("ewVAADsHSk0")) and yfcj.Name == _d("bgVHABk") then
table.insert(uhxd, yfcj)
end
end

shrg = uhxd
bo = os.clock()
end

local function mcr(pfwx)
if type(pfwx) ~= _d("TQVRCQ4") then
return false
end

uffa.loaded = true
uffa.dirty = false
uffa.fishing = pfwx.fishing == true
uffa.autoOn = pfwx.autoOn == true
uffa.autoUnlocked = pfwx.autoUnlocked == true
uffa.casts = tonumber(pfwx.casts) or uffa.casts
uffa.totalCasts = tonumber(pfwx.totalCasts) or uffa.totalCasts
uffa.luck = tonumber(pfwx.luck) or uffa.luck
uffa.rod = tostring(pfwx.equippedRod or uffa.rod)
uffa.castTime = tonumber(pfwx.castTime) or uffa.castTime
uffa.tutorialStep = tonumber(pfwx.tutorialStep) or uffa.tutorialStep

if type(pfwx.rods) == _d("TQVRCQ4") then
uffa.rodsOwned = pfwx.rods
end

if type(pfwx.baits) == _d("TQVRCQ4") then
uffa.baitsOwned = pfwx.baits
end

if type(pfwx.boats) == _d("TQVRCQ4") then
uffa.boatsOwned = pfwx.boats
end

if type(pfwx.mats) == _d("TQVRCQ4") then
uffa.mats = pfwx.mats
end

if pfwx.bootOwned ~= nil then
uffa.boot.owned = pfwx.bootOwned == true
end

if pfwx.bootEquipped ~= nil then
uffa.boot.equipped = pfwx.bootEquipped == true
end

if pfwx.equippedBait ~= nil then
uffa.equippedBait = tostring(pfwx.equippedBait)
end

if pfwx.activeBoat ~= nil then
uffa.activeBoat = tostring(pfwx.activeBoat)
end

uffa.boatTier = tonumber(pfwx.boatTier) or uffa.boatTier
uffa.islandLocked = pfwx.islandLocked == true
uffa.rebirths = tonumber(pfwx.rebirths) or uffa.rebirths

if type(pfwx.rebirthCards) == _d("TQVRCQ4") then
uffa.rebirthCards = pfwx.rebirthCards
end

uffa.lastSync = os.time()

return true
end

local function vwc()
local bcwf, ncl = pcall(function()
return za.FishingGetState:InvokeServer()
end)

if not bcwf or type(ncl) ~= _d("TQVRCQ4") then
uffa.loaded = false
return false
end

return mcr(ncl)
end

local ty = false

local function qo()
if ty then
return false
end

local bbv = rtpa.Character

if not bbv then
return false
end

if bbv:FindFirstChild(_d("fw1ADQIIX2sLVw")) then
return true
end

local pzr = rtpa:FindFirstChild(_d("ewVQDhsHW1I"))
local pyu = pzr and pzr:FindFirstChild(_d("fw1ADQIIX2sLVw"))
local uop = bbv:FindFirstChildOfClass(_d("cRFeBAUJUV0"))

if not (pyu and uop) then
return false
end

return pcall(function()
uop:EquipTool(pyu)
end)
end

local function ocyg()
local ps = rtpa.Character
local rvs = ps and ps:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not rvs then
return nil
end

local eqr = RaycastParams.new()
eqr.FilterType = Enum.RaycastFilterType.Exclude
eqr.FilterDescendantsInstances = { ps }

local ffy = 24
local phyz = {}
local mxe = 0

for nq = 0, ffy - 1 do
local mqdm = math.rad(nq * (360 / ffy))
local so = Vector3.new(math.sin(mqdm), 0, math.cos(mqdm))
local sey = rvs.Position + so * 20 + Vector3.new(0, 40, 0)
local zhd = workspace:Raycast(sey, Vector3.new(0, -120, 0), eqr)
local jzqo = zhd and (rvs.Position.Y - zhd.Position.Y) or 120

phyz[nq] = jzqo > 12

if phyz[nq] then
mxe = mxe + 1
end
end

if mxe == 0 then
return nil
end

local wiv, rnk = nil, 0

for sm = 0, ffy - 1 do
if phyz[sm] and not phyz[(sm - 1) % ffy] then
local vw = 0

while vw < ffy and phyz[(sm + vw) % ffy] do
vw = vw + 1
end

if vw > rnk then
wiv = sm
rnk = vw
end
end
end

if not wiv then
return nil
end

local ex = wiv + (rnk - 1) / 2
local ppf = math.rad(ex * (360 / ffy))

return Vector3.new(math.sin(ppf), 0, math.cos(ppf))
end

local function igq()
local yery = rtpa.Character
local cr = yery and yery:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not cr then
return nil
end

if #shrg == 0 or os.clock() - bo > 20 then
nvla()
end

local neqm, od = nil, math.huge

for vkyi, rrkd in ipairs(shrg) do
if rrkd.Parent then
local zrnn = (rrkd.Position - cr.Position).Magnitude

if zrnn < od then
od = zrnn
neqm = rrkd
end
end
end

if not neqm or od > 25 then
local vybh = ocyg()

if vybh then
return vybh
end
end

if not neqm then
return nil
end

local rfs = Vector3.new(neqm.Position.X - cr.Position.X, 0, neqm.Position.Z - cr.Position.Z)

if rfs.Magnitude < 0.05 then
return Vector3.new(0, 0, -1)
end

return rfs.Unit
end

local function kzi()
local nres = rtpa.Character
local thm = nres and nres:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not thm then
return nil
end

local zfut = thm.CFrame.LookVector
local ma = Vector3.new(zfut.X, 0, zfut.Z)

if ma.Magnitude < 0.05 then
return nil
end

return ma.Unit
end

local function njm()
local iu = rtpa.Character
local oge = iu and iu:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not oge then
return false
end

local ndh = arbj
local vzu = RaycastParams.new()
vzu.FilterType = Enum.RaycastFilterType.Exclude
vzu.FilterDescendantsInstances = { iu }

local ti = workspace:Raycast(arbj + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), vzu)

if ti and ti.Instance.Name ~= _d("bgVHABk") then
ndh = Vector3.new(arbj.X, ti.Position.Y + 3, arbj.Z)
end

oge.CFrame = CFrame.new(ndh)
task.wait(0.5)
nvla()

return true
end

local function jyo()
local al = rtpa.Character
local hsfy = al and al:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not hsfy then
return false
end

local nya = Vector3.new(arbj.X - hsfy.Position.X, 0, arbj.Z - hsfy.Position.Z)
local tae = nya.Magnitude

if tae < 2 then
return false
end

local puzg = nya.Unit

if tae > 12 then
local tz = math.min(14, tae - 6)
local pemy = hsfy.Position + puzg * tz
local dru = RaycastParams.new()
dru.FilterType = Enum.RaycastFilterType.Exclude
dru.FilterDescendantsInstances = { al }

local rz = workspace:Raycast(pemy + Vector3.new(0, 25, 0), Vector3.new(0, -80, 0), dru)

if rz and rz.Instance.Name ~= _d("bgVHABk") then
local vfy = rz.Position.Y + 3.2

if math.abs(vfy - hsfy.Position.Y) <= 10 then
local fhr = Vector3.new(rz.Position.X, vfy, rz.Position.Z)
hsfy.CFrame = CFrame.lookAt(fhr, fhr + puzg)

return true
end
end
end

hsfy.CFrame = CFrame.lookAt(hsfy.Position, hsfy.Position + puzg)

return true
end

local iz = {}

iz.surfaceWait = 8

iz.walking = false
iz.walkStartedAt = 0

iz.islandHold = Vector3.new(-7384, 16.3, -40539)

iz.custom = nil
iz.customIsland = nil

iz.islandAnchors = {
{ id = _d("WAZSCw8JVlwAbAwYCllXAA"), x = -3800 },
{ id = _d("TRNaCzQEXVgHWwAY"), x = -6180 },
{ id = _d("Tg1dAQYPVFU7WhYHAw"), x = -7480 },
}

iz.arrivals = {
abandoned_island = Vector3.new(-3825, 24, -40260),
twin_beaches = Vector3.new(-6180, 40, -40350),
windmill_isle = Vector3.new(-7480, 30, -40350),
lobby = Vector3.new(-499, 17, -40234),
}

function iz.islandOf(xexa)
if not xexa then
return _d("VQtRBxI")
end

if xexa.X > -4500 then
return _d("VQtRBxI")
end

local me, rtav = _d("WAZSCw8JVlwAbAwYCllXAA"), math.huge

for lt, dik in ipairs(iz.islandAnchors) do
local km = math.abs(xexa.X - dik.x)

if km < rtav then
me = dik.id
rtav = km
end
end

return me
end

iz.savedVersion = 2

do
local fm = getgenv().ACBXDeepSpot

if type(fm) == _d("TQVRCQ4") and fm.v == iz.savedVersion
and tonumber(fm.X) and tonumber(fm.Y) and tonumber(fm.Z) then
iz.custom = Vector3.new(tonumber(fm.X), tonumber(fm.Y), tonumber(fm.Z))
iz.customIsland = fm.island
end
end

function iz.spot()
return iz.custom or iz.islandHold
end

function iz.dropStale()
if not iz.custom then
return false
end

if iz.zoneAt(iz.custom) then
return false
end

iz.custom = nil
iz.customIsland = nil
getgenv().ACBXDeepSpot = nil

return true
end

function iz.capture()
local gzwz = rtpa.Character
local slq = gzwz and gzwz:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not slq then
return false, _d("dwsTBgMHSlgHRwAZRkxWREEACgIYWERAFQQSGF8WXAhF")
end

local zf = slq.Position
local qc = iz.floorAt(Vector3.new(zf.X, zf.Y + 10, zf.Z))

if not qc then
return false, _d("ahBSCw9GV1dEQAoHD1wZA0EKHghcGQJaFxgSGBRERw0CFRhKFFwRSw5ZSkRdCksAVFYLQUUfCRhaBUARSwBKVgkd")
end

local wee = iz.zoneAt(zf)

if not wee then
return false, _d("bQxaFksVSFYQEwwYRldMEEAMDwMYXBJWFxJGXlAXWwwFARhLDV0CS0sYShBSCw9GV08BQUUfDl0ZE1IRDhQYXw1BFh9I")
end

iz.custom = zf
iz.customIsland = iz.islandOf(zf)

getgenv().ACBXDeepSpot = {
X = zf.X,
Y = zf.Y,
Z = zf.Z,
island = iz.customIsland,
v = iz.savedVersion,
}

return true, _d("agVFAA9GTFENQEUYFldNRFIWSxJQXERXAA4WFU4FRwAZRlBWCFdFQw") .. tostring(wee.name) .. _d("EEo")
end

function iz.zoneTable()
local gcu = {}

if cqgg and type(cqgg.Zones) == _d("TQVRCQ4") then
for vb, xib in ipairs(cqgg.Zones) do
gcu[#gcu + 1] = {
id = tostring(xib.id),
name = tostring(xib.name or xib.id),
half = tonumber(xib.half) or 0,
luck = tonumber(xib.luck) or 0,
index = tonumber(xib.index) or 0,
boatTier = tonumber(xib.boatTier) or 0,
}
end
end

table.sort(gcu, function(znse, hsr)
return znse.index < hsr.index
end)

return gcu
end

function iz.zoneAt(vzj)
local jo = cqgg and cqgg.ZoneCenter
local olh = iz.zoneTable()

if not (jo and vzj and #olh > 0) then
return nil
end

local un = math.max(math.abs(vzj.X - jo.X), math.abs(vzj.Z - jo.Z))

for xe, ewk in ipairs(olh) do
if un < ewk.half then
return ewk
end
end

return nil
end

function iz.current()
local nvyy = rtpa.Character
local qtld = nvyy and nvyy:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

return qtld and iz.zoneAt(qtld.Position) or nil
end

function iz.sync()
local vr = iz.current()
uffa.zoneId = vr and vr.id or nil
end

function iz.floorAt(vx)
local ith = rtpa.Character
local zjfa = RaycastParams.new()
zjfa.FilterType = Enum.RaycastFilterType.Exclude
zjfa.FilterDescendantsInstances = { ith }

local mob = workspace:Raycast(Vector3.new(vx.X, vx.Y + 20, vx.Z), Vector3.new(0, -80, 0), zjfa)

if mob and mob.Instance.Name ~= _d("bgVHABk") then
return mob
end

return nil
end

function iz.ensureSpotMap()
local fhf = iz.spot()
local arwb = Vector3.new(fhf.X, fhf.Y + 20, fhf.Z)

if iz.floorAt(arwb) then
return true
end

local wk = workspace:FindFirstChild(_d("dAVDFg"))

if wk and wk:FindFirstChild(_d("egtSFh8HVHULUQcS")) then
if os.clock() - (iz.hopAt or 0) > 1 then
iz.hopAt = os.clock()
iz.hop(fhf)
uffa.lastMessage = _d("dAtFDAUBGE0LExEDAxhdAVYVRhFZTQFBRRgWV00")
end

return false
end

if os.clock() - (iz.islandAskedAt or 0) > 1.2 then
iz.islandAskedAt = os.clock()

local bbzi = iz.customIsland or iz.islandOf(fhf)

if bbzi == _d("VQtRBxI") then
pcall(function()
za.TeleportToWorld:FireServer(_d("VQtRBxI"))
end)
else
pcall(function()
za.FishingIslandTeleport:FireServer(_d("TgVKFQQPVk0"), bbzi)
end)
end

uffa.lastMessage = _d("bQVYDAUBGE0MVkUMB1VcQ0BFHwNUXBRcFx9GTFZERw0ORlxcAUNIHAdMXBYTCAoW")
end

return false
end

function iz.hop(gko)
local xsmw = rtpa.Character
local tn = xsmw and xsmw:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))
local vudk = xsmw and xsmw:FindFirstChildOfClass(_d("cRFeBAUJUV0"))

if not (tn and vudk) then
return false
end

if vudk.SeatPart then
pcall(function()
vudk.Sit = false
end)
end

tn.AssemblyLinearVelocity = Vector3.zero
tn.CFrame = CFrame.new(Vector3.new(gko.X, gko.Y + 8, gko.Z))

return true
end

function iz.faceWater()
local huwh = rtpa.Character
local ip = huwh and huwh:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not ip then
return false
end

local srxu = igq()

if not srxu then
local sd = cqgg and cqgg.ZoneCenter

if sd then
local xnp = Vector3.new(sd.X - ip.Position.X, 0, sd.Z - ip.Position.Z)

srxu = xnp.Magnitude > 1 and xnp.Unit or nil
end
end

if not srxu then
return false
end

ip.CFrame = CFrame.lookAt(ip.Position, ip.Position + srxu)

return true
end

function iz.aimWater(hi)
local jiwc = rtpa.Character
local na = jiwc and jiwc:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not na then
return false
end

if hi then
nvla()
end

local vwp = na.CFrame.LookVector
local tc = Vector3.new(vwp.X, 0, vwp.Z)
local gtk = igq()

if not gtk then
return false
end

if tc.Magnitude > 0.05 and tc.Unit:Dot(gtk) > 0.985 then
return true
end

na.CFrame = CFrame.lookAt(na.Position, na.Position + gtk)

return true
end

function iz.hold(fgpr)
local eawv = rtpa.Character
local twu = eawv and eawv:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))
local iy = eawv and eawv:FindFirstChildOfClass(_d("cRFeBAUJUV0"))

if not (twu and iy) then
return false
end

if iy.SeatPart then
pcall(function()
iy.Sit = false
end)
end

local ooov = iz.floorAt(fgpr)

if not ooov then
return false
end

twu.AssemblyLinearVelocity = Vector3.zero
twu.CFrame = CFrame.new(Vector3.new(fgpr.X, ooov.Position.Y + 3.2, fgpr.Z))

pcall(iz.aimWater, true)

uffa.phase = _d("UABfAA")
uffa.nextCastAt = 0

return true
end

function iz.dive()
local gt = iz.spot()

if not iz.ensureSpotMap() then
return false
end

if not iz.hold(gt) then
return false
end

iz.islandAskedAt = 0

local lgg = iz.zoneAt(gt)

uffa.lastMessage = lgg
and (_d("cQtfAQIIXxkQWwBLAl1cFB4SChJdS0RAFQQSGBE") .. tostring(lgg.name) .. _d("EA"))
or _d("cQtfAQIIXxkQWwBLAl1cFB4SChJdS0RAFQQS")

task.wait(0.25)
iz.sync()
uffa.deepDiveAt = os.clock() + 2

return true
end

function iz.walk()
local cv = rtpa.Character
local rgy = cv and cv:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if iz.walking and os.clock() - (iz.walkStartedAt or 0) < 60 then
return false
end

if not rgy then
return false
end

local gc = iz.spot()

if (rgy.Position - Vector3.new(gc.X, rgy.Position.Y, gc.Z)).Magnitude <= 8 then
uffa.phase = _d("UABfAA")
uffa.nextCastAt = 0

return true
end

iz.walking = true
iz.walkStartedAt = os.clock()
uffa.deepPhase = _d("TgVfDg")
uffa.deepStageAt = os.clock()
uffa.lastMessage = _d("bgVfDgIIXxkQXEUfDl0ZAFYAGwNLTUREBB8DShkXQwof")

task.spawn(function()
local wadk = cv and cv:FindFirstChildOfClass(_d("cRFeBAUJUV0"))

local mgpu, neo = pcall(function()

local cnfk = workspace:FindFirstChild(_d("dAVDFg"))
local at = iz.customIsland or iz.islandOf(gc)
local rbil = (rgy.Position - Vector3.new(gc.X, rgy.Position.Y, gc.Z)).Magnitude

if rbil > 400 then
if not (cnfk and cnfk:FindFirstChild(_d("egtSFh8HVHULUQcS"))) then
pcall(function()
za.TeleportToWorld:FireServer(_d("VQtRBxI"))
end)

local llh = os.clock() + 20

while uffa.deepWalk and os.clock() < llh do
local zzw = workspace:FindFirstChild(_d("dAVDFg"))

if zzw and zzw:FindFirstChild(_d("egtSFh8HVHULUQcS")) then
break
end

task.wait(0.5)
end
end

if uffa.deepWalk then
local dekc = iz.arrivals and iz.arrivals[at]

if dekc then
iz.hop(dekc)
else
local ier = Vector3.new(gc.X - rgy.Position.X, 0, gc.Z - rgy.Position.Z)
local nd = ier.Magnitude > 1 and ier.Unit or Vector3.new(1, 0, 0)

iz.hop(Vector3.new(gc.X - nd.X * 120, gc.Y, gc.Z - nd.Z * 120))
end

task.wait(1.5)
end
end

if uffa.deepWalk and wadk then

local bp = (rgy.Position - Vector3.new(gc.X, rgy.Position.Y, gc.Z)).Magnitude
local ryh = os.clock() + math.clamp(bp / 8, 30, 600)
local ft = 0
local dqc = rgy.Position
local ykzt = os.clock()

while uffa.deepWalk and os.clock() < ryh do
local qowq = Vector3.new(gc.X - rgy.Position.X, 0, gc.Z - rgy.Position.Z)

if qowq.Magnitude <= 3 then
break
end

if os.clock() - ft >= 0.25 then
wadk:MoveTo(Vector3.new(gc.X, rgy.Position.Y, gc.Z))
ft = os.clock()
end

if os.clock() - ykzt >= 1.2 then
if (rgy.Position - dqc).Magnitude < 2 then
wadk.Jump = true
end

dqc = rgy.Position
ykzt = os.clock()
end

task.wait(0.1)
end

wadk:MoveTo(rgy.Position)
end
end)

iz.walking = false

if not mgpu then
uffa.deepPhase = _d("UABfAA")
uffa.deepStageAt = os.clock()
uffa.lastMessage = _d("bgVfDksSVxkgVgAbA0tNRGQEHwNKGQJSDAcDXANE") .. tostring(neo)

return
end

if not uffa.deepWalk then
return
end

local jtmc = Vector3.new(rgy.Position.X - gc.X, 0, rgy.Position.Z - gc.Z)

if jtmc.Magnitude <= 6 then

pcall(iz.aimWater, true)
uffa.phase = _d("UABfAA")
uffa.nextCastAt = 0
uffa.deepPhase = _d("UQtfAQ")
uffa.deepStageAt = os.clock()
iz.sync()
uffa.lastMessage = _d("bgVfDg4CGE0LExEDAxhKBUUAD0ZcXAFDSBwHTFwWExYbCUw")
else

uffa.deepPhase = _d("UABfAA")
uffa.deepStageAt = os.clock()
uffa.lastMessage = _d("egtGCQ9GVlYQExIKClMZEFxFHw5dGQBWABsDS01ERAQfA0oZF0MKH0YVGRBBHAIIXxkFVAQCCA")
end
end)

return false
end

function iz.settle()
for uxv = 1, 30 do
if not uffa.deepZone or uffa.deepWalk then
return false
end

if iz.dive() then
return true
end

task.wait(1)
end

return false
end

function iz.surface()
local uz = rtpa.Character
local fxz = uz and uz:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not fxz then
return false
end

local pgwg = RaycastParams.new()
pgwg.FilterType = Enum.RaycastFilterType.Exclude
pgwg.FilterDescendantsInstances = { uz }

local nzvm = workspace:Raycast(arbj + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), pgwg)
local vl = arbj

if nzvm and nzvm.Instance.Name ~= _d("bgVHABk") then
vl = Vector3.new(arbj.X, nzvm.Position.Y + 3, arbj.Z)
end

fxz.CFrame = CFrame.new(vl)
uffa.phase = _d("UABfAA")
uffa.nextCastAt = 0

return true
end

function uffa.gotoIsland()
local aoww = rtpa.Character
local zzp = aoww and aoww:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))
local agp = workspace:FindFirstChild(_d("cBdfBAUCflAXWwAZC1lXKmMm"), true)

if not (zzp and agp) then
return false
end

local fp = agp:GetPivot()
local oe = RaycastParams.new()
oe.FilterType = Enum.RaycastFilterType.Exclude
oe.FilterDescendantsInstances = { aoww, agp }

local qqj = nil
local ncky = -math.huge

for bi, wuq in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local uh = workspace:Raycast(fp.Position + wuq + Vector3.new(0, 30, 0), Vector3.new(0, -120, 0), oe)

if uh and uh.Position.Y > ncky then
qqj = uh
ncky = uh.Position.Y
end
end

if qqj then
zzp.CFrame = CFrame.new(Vector3.new(qqj.Position.X, ncky + 3.5, qqj.Position.Z))
else
zzp.CFrame = CFrame.new(fp.Position + Vector3.new(0, 4, 0))
end

uffa.phase = _d("UABfAA")
uffa.nextCastAt = 0

return true
end

function iz.cycle()
local eq = os.clock()
local gaa = uffa.deepPhase or _d("UABfAA")
local ouaz = tonumber(uffa.deepStageAt) or 0

if eq < math.max(uffa.shopTripUntil or 0, uffa.tpHoldUntil or 0) then
return
end

if gaa == _d("UABfAA") then
uffa.deepPhase = _d("UQtfAQ")
uffa.deepStageAt = eq

if uffa.deepWalk then
iz.walk()
else
iz.dive()
end

return
end

if gaa == _d("TgVfDg") then
return
end

if gaa == _d("UQtfAQ") then
local avr = iz.current()

local vzc = iz.zoneAt(iz.spot())

if avr and not rtpa:GetAttribute(_d("ahNaCAYPVl4")) and eq - (uffa.deepAimAt or 0) > 2 then
uffa.deepAimAt = eq
pcall(iz.aimWater)
end

if rtpa:GetAttribute(_d("ahNaCAYPVl4")) then
if uffa.deepWalk then

uffa.deepPhase = _d("UABfAA")
uffa.deepStageAt = eq
else
uffa.deepPhase = _d("XQ1D")
uffa.deepStageAt = eq
uffa.lastMessage = _d("ahNaCAYPVl5EUhFLElBcRFcADhYYShRcEUtLGEoRQQMKBV1dRFUKGUZZUBY")
end
elseif not avr or (vzc and avr.index < vzc.index) then

uffa.deepPhase = _d("UABfAA")
uffa.deepStageAt = eq
end

return
end

if gaa == _d("XQ1D") then
iz.surface()
uffa.deepPhase = _d("ShFBAwoFXQ")
uffa.deepStageAt = eq

return
end

if gaa == _d("ShFBAwoFXQ") and eq - ouaz >= iz.surfaceWait then
uffa.deepPhase = _d("UABfAA")
end
end

local function ynhy()
local lyi = rtpa.Character
local rmx = lyi and lyi:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not rmx then
return false
end

return (rmx.Position - arbj).Magnitude <= 12
end

local function rg()
if not qo() then
return false
end

local dr = pcall(function()
za.FishingSetAuto:FireServer(true)
end)

uffa.usingGameAuto = dr
return dr
end

local function jhzs()
uffa.usingGameAuto = false

pcall(function()
za.FishingSetAuto:FireServer(false)
end)

pcall(function()
za.FishingStop:FireServer()
end)
end

function uffa.recover()
uffa.phase = _d("UABfAA")
uffa.nextCastAt = 0
uffa.deepPhase = _d("UABfAA")
uffa.deepStageAt = 0
uffa.deepDiveAt = 0
uffa.waterRefusals = 0
uffa.usingGameAuto = false
uffa.castMark = uffa.totalCasts
uffa.castMarkAt = os.clock()

pcall(jhzs)
pcall(qo)

if uffa.deepZone and not iz.current() then

pcall(function()
za.TeleportToWorld:FireServer(_d("VQtRBxI"))
end)
elseif uffa.tpToBay and not ynhy() then
pcall(njm)
end

uffa.lastMessage = _d("fw1ADQIIXxkXRwQHCl1dRB5FGQNLXBATEQMDGE4FRwAZRllXABMRBAlTGRBbAEsBWVQBFBZLCldbBkpFGQlP")
end

local function vq()
if not qo() then
uffa.lastMessage = _d("dwsTAwIVUFAKVEUZCVwZDV1FHw5dGQZSBgAWWVoP")
return false
end

local zm = kzi()
local au = igq()
local lz = zm or au

if not lz then
uffa.lastMessage = _d("dwsTEgoSXUtEVQoeCFwZClYEGQRB")
return false
end

if zm and au and zm:Dot(au) < 0.25 then
lz = au
end

uffa.phase = _d("WgVAEQIIXw")
uffa.lastMessage = nil
uffa.watchdogAt = os.clock() + 25

local ca, gsew = pcall(function()
za.FishingThrow:FireServer(1, lz)
end)

if not ca then
uffa.phase = _d("UABfAA")
uffa.lastMessage = tostring(gsew)
uffa.nextCastAt = os.clock() + 3
return false
end

return true
end

local vtk = ojk(za.FishingUpdate.OnClientEvent, function(ohai, ixwl)
uffa.dirty = true

if ohai == _d("ahBSEQ4") then
if type(ixwl) == _d("TQVRCQ4") then
uffa.autoOn = ixwl.autoOn == true
end

return
end

if ohai == _d("egVAEQ") then
uffa.phase = _d("TgVaEQIIX3sNRwA")
uffa.waterRefusals = 0
return
end

if ohai == _d("ew1HAA") then
local tkm = type(ixwl) == _d("TQVRCQ4") and tonumber(ixwl.warning) or 1

uffa.phase = _d("SwFWCQIIXw")
uffa.watchdogAt = os.clock() + 15

task.delay(math.max(0.3, tkm + 0.8), function()
if uffa.phase ~= _d("SwFWCQIIXw") then
return
end

pcall(function()
za.FishingReel:FireServer(true, 120)
end)

uffa.phase = _d("SwFACgcQUVcD")
end)

return
end

if ohai == _d("egVHBgM") then

local rxh = type(ixwl) == _d("TQVRCQ4") and tonumber(ixwl.totalCasts) or nil
local wplc = tonumber(getgenv().ACBXFishingCatchMark) or 0

if rxh and rxh <= wplc and wplc - rxh < 25 then
return
end

if rxh then
getgenv().ACBXFishingCatchMark = rxh
end

local zu = type(ixwl) == _d("TQVRCQ4") and tostring(ixwl.itemId) or _d("TApYCwQRVg")
local xwr = uffa.catchName(zu)

uffa.catches[zu] = (uffa.catches[zu] or 0) + 1
uffa.totalCatches = (uffa.totalCatches or 0) + 1

local eekx = type(ixwl) == _d("TQVRCQ4") and ixwl.chest or nil

if type(eekx) == _d("TQVRCQ4") and eekx.itemId then
local uyl = tostring(eekx.itemId)

uffa.catches[uyl] = (uffa.catches[uyl] or 0) + 1
end

if os.clock() - (qr.at or 0) >= 5 then
qr.at = os.clock()
qr.save()
end
uffa.lastCatch = xwr
uffa.lastMessage = nil
uffa.phase = _d("UABfAA")
uffa.nextCastAt = os.clock() + 2.5

if type(ixwl) == _d("TQVRCQ4") then
uffa.casts = tonumber(ixwl.casts) or uffa.casts
uffa.totalCasts = tonumber(ixwl.totalCasts) or uffa.totalCasts
uffa.autoUnlocked = ixwl.autoUnlocked == true or uffa.autoUnlocked
end

return
end

if ohai == _d("eBFHCiQAXg") then

uffa.usingGameAuto = false
uffa.phase = _d("UABfAA")
uffa.nextCastAt = os.clock() + 1
return
end

if ohai == _d("fBdQBBsDXA") then
uffa.phase = _d("UABfAA")
uffa.lastMessage = _d("bQxWRQ0PS1FEVAofRllOBUo")
uffa.nextCastAt = os.clock() + 2.5
return
end

if ohai == _d("awFZAAgSXV0") then
uffa.phase = _d("UABfAA")

local mdi = type(ixwl) == _d("TQVRCQ4") and tostring(ixwl.message) or _d("egVAEUsUXVMBUBEOAg")
uffa.lastMessage = mdi

if mdi:lower():find(_d("TgVHABk"), 1, true) then
uffa.waterRefusals = (uffa.waterRefusals or 0) + 1

if uffa.waterRefusals >= 2 then
uffa.waterRefusals = 0

if jyo() then
uffa.lastMessage = _d("awFVEBgDXBkQRAwIAxgUREcQGQhdXURRBAgNGE0LRAQZAhhNDFZFHAdMXBY")
uffa.nextCastAt = os.clock() + 1.5
return
end
end

uffa.nextCastAt = os.clock() + 8
return
end

uffa.waterRefusals = 0
uffa.nextCastAt = os.clock() + 3
return
end
end)

local function zkk()
if not uffa.loaded then
return _d("awFSAQIIXxkCWhYDD1ZeREARChJdF0od")
end

local phho = uffa.autoUnlocked == true
or (uffa.totalCasts or 0) > 0
or (uffa.tutorialStep or 0) > 0
local ci = cqgg and cqgg.RodsById and cqgg.RodsById[uffa.rod]
local gn = ci and tostring(ci.name) or tostring(uffa.rod)
local ny = math.floor((tonumber(uffa.luck) or 0) * 100 + 0.5)

local ofxl = {
_d("awtXX0s") .. gn,
_d("dRFQDlFG") .. ny .. _d("HA"),
}

local abtf = iz.current()

if abtf then
table.insert(ofxl, _d("YwtdAFFG") .. abtf.name .. _d("GUwY") .. tostring(math.floor(abtf.luck * 100 + 0.5)) .. _d("HERfEAgNEQ"))
end

table.insert(ofxl, _d(""))
table.insert(ofxl, _d("egVAERhGTFZEQBUOCFwDRA") .. bk(uffa.casts or 0))
table.insert(ofxl, _d("bQtHBAdGW1gXRxZRRg") .. bk(uffa.totalCasts or 0))

table.insert(ofxl, _d(""))
table.insert(ofxl, _d("fw1ADQIIXxkRXQkEBVNcAAlF") .. (phho and _d("QAFA") or _d("Vws")))
table.insert(ofxl, _d("eBFHCkYAUUoMExAbAUpYAFZfSw") .. (uffa.autoUnlocked and _d("VhNdAA8") or _d("VwtHRQQRVlwA")))

if uffa.enabled then
local nyi = uffa.usingGameAuto and _d("XgVeAEsHTU0L") or tostring(uffa.phase)

if nyi == _d("TgVaEQIIX3sNRwA") then
nyi = _d("TgVaEQIIXxkCXBdLBxhbDUcA")
elseif nyi == _d("SwFWCQIIXw") then
nyi = _d("SwFWCQIIXxkNXQ")
elseif nyi == _d("SwFACgcQUVcD") then
nyi = _d("VQVdAQIIXxkNRw")
end

table.insert(ofxl, _d(""))
table.insert(ofxl, _d("eBFHCksgUUoMCUU") .. nyi)

local pmin = fhyz.worldBoss

if pmin and type(pmin.hasWork) == _d("XxFdBh8PV1c") and pmin.enabled and pmin.hasWork() then
table.insert(ofxl, _d("cQtfAQIIXwNEVAkEBFlVRFEKGBUYUBcTEBtGEEsBQBAGA0sZC11FAhJLGQdcCgcCV04KGg"))
end

if uffa.lastCatch then
table.insert(ofxl, _d("dQVAEUsFWU0HW19L") .. uffa.lastCatch)
end
end

if uffa.lastMessage then
table.insert(ofxl, _d(""))
table.insert(ofxl, _d("dwtHAFFG") .. uffa.lastMessage)
end

return table.concat(ofxl, _d("Mw"))
end

local function eij()
local aso = 0

for cro, it in pairs(uffa.catches) do
local info = iymu.ById[cro]

if not (info and info.type == _d("WgxWFh8")) then
aso = aso + it
end
end

return aso
end

local function xpy()
local qfsr = {}

for xwjt, alpq in pairs(uffa.catches) do
local zh = iymu.ById[xwjt]
local jp = zh and zh.type == _d("WgxWFh8") or false

table.insert(qfsr, {
name = uffa.catchName(xwjt),
count = alpq,
chest = jp,
rank = jp and (tonumber(zh.border) or 1) or 0,
})
end

if #qfsr == 0 then
return _d("dwtHDQIIXxkHUhAMDkwZHVYRRWwybRFBC0sJVhklRhEERn5QF1tFCghcGRBbAEsSWVUISkUYEllLEEBFAwNKXEoTLB9GS1gSVhZLD0xKAV8DR0ZLVkRaEUsFWUsWWgAYRldPAUFFBQNATURAABgVUVYKHQ")
end

table.sort(qfsr, function(nxqb, ow)
if nxqb.chest ~= ow.chest then
return nxqb.chest
end

if nxqb.chest and nxqb.rank ~= ow.rank then
return nxqb.rank > ow.rank
end

if nxqb.count ~= ow.count then
return nxqb.count > ow.count
end

return nxqb.name < ow.name
end)

local zagk = {}

for eta, bd in ipairs(qfsr) do
table.insert(zagk, bd.name .. _d("GYaz8Us") .. bk(bd.count))
end

local soy = {
table.concat(zagk, _d("M24")),
_d(""),
_d("bQtHBAdGW1gRVA0fXBg") .. bk(eij()) .. _d("GaaERQ") .. #qfsr .. _d("GQ9aCw8V"),
}

if uffa.lastCatch then
table.insert(soy, _d("dQVAEUsFWU0HW19L") .. tostring(uffa.lastCatch))
end

return table.concat(soy, _d("Mw"))
end

local laq = {
rod = Vector3.new(-493, 18, -40254),
bait = Vector3.new(-493, 18, -40254),
}

local function ofh(vua)
if not cqgg then
return {}
end

local maxb

if vua == _d("SwtX") then
maxb = cqgg.RodsById
elseif vua == _d("WwVaEQ") then
maxb = cqgg.BaitsById
else
maxb = nil
end

local ev = {}

for yxa, gk in pairs(maxb or {}) do
if not gk.crafted then
table.insert(ev, {
id = tostring(yxa),
name = tostring(gk.name or yxa),
cost = tonumber(gk.cost) or 0,
luck = tonumber(gk.luck) or 0,
index = tonumber(gk.index) or 0,
island = gk.shop == _d("UBdfBAUC"),
})
end
end

table.sort(ev, function(ko, dxa)
if ko.index ~= dxa.index then
return ko.index < dxa.index
end

return ko.cost < dxa.cost
end)

return ev
end

local function earh(giyd)
if giyd == _d("SwtX") then
return uffa.rodsOwned or {}
elseif giyd == _d("WwVaEQ") then
return uffa.baitsOwned or {}
end

return {}
end

local function br(hyb)
if hyb == _d("SwtX") then
return uffa.rod
elseif hyb == _d("WwVaEQ") then
return uffa.equippedBait
end

return nil
end

local function suf(ykuu)
local ro = earh(ykuu)
local mi = nil

for svnv, eur in ipairs(ofh(ykuu)) do
if ro[eur.id] == true then
mi = eur
end
end

if ykuu == _d("SwtX") and cqgg and cqgg.RodsById then
local kt = cqgg.RodsById.rod_secret

if kt and ro.rod_secret == true then
mi = {
id = _d("SwtXOhgDW0sBRw"),
name = tostring(kt.name or _d("fBxQBAcPWkwW")),
cost = tonumber(kt.cost) or 0,
luck = tonumber(kt.luck) or 0,
index = tonumber(kt.index) or 0,
island = true,
}
end
end

return mi
end

local function wdfv(xy)
if xy.island and uffa.islandLocked then
return false
end

return true
end

local function xj(fbwi)
local tmc = earh(fbwi)
local zic = uffa.casts or 0
local vdok = nil

for vmg, ragg in ipairs(ofh(fbwi)) do
if tmc[ragg.id] ~= true and ragg.cost <= zic and wdfv(ragg) then
vdok = ragg
end
end

return vdok
end

local function cqmb(xs)
local rp = earh(xs)

for hfy, rnv in ipairs(ofh(xs)) do
if rp[rnv.id] ~= true and wdfv(rnv) then
return rnv
end
end

return nil
end

local function xmn(sow, tgbz)
if not tgbz then
return _d("VwtdAEsJT1cBVw")
end

return tgbz.name .. _d("GUwY") .. tostring(math.floor(tgbz.luck * 100 + 0.5)) .. _d("HERfEAgNEQ")
end

local function euq()
if not cqgg then
return _d("fw1ADQIIX30FRwRLCFdNRFUKHghcGUkTFgMJSBkAUhEKRk1XBUUEAgpZWwhWSw")
end

local sg = {}
local hms = { rod = _d("awtX"), bait = _d("ewVaEQ") }

for xsck, xxu in ipairs({ _d("SwtX"), _d("WwVaEQ") }) do
local iq = suf(xxu)
local vi = nil

for awp, gd in ipairs(ofh(xxu)) do
if gd.id == br(xxu) then
vi = gd.name
end
end

if #sg > 0 then
table.insert(sg, _d(""))
end

table.insert(sg, hms[xxu] .. _d("A0Q") .. xmn(xxu, iq))
table.insert(sg, _d("dgoTCwQRAhk") .. (vi or _d("VwtdAA")))

local wt = xj(xxu) or cqmb(xxu)

if wt then
local cbl = wt.cost - (uffa.casts or 0)

table.insert(sg, _d("dwFLEVFG") .. wt.name .. _d("GaaERQ") .. bk(wt.cost) .. _d("GQdSFh8V"))

if cbl > 0 then
table.insert(sg, _d("dwFWAUs") .. bk(cbl) .. _d("GQlcFw4"))
end
else
table.insert(sg, _d("dwFLEVFGXU8BQRwfDlFXAxMKHAhdXQ"))
end
end

table.insert(sg, _d(""))
table.insert(sg, _d("egVAERhGTFZEQBUOCFwDRA") .. bk(uffa.casts or 0))

if uffa.shopMessage then
table.insert(sg, _d(""))
table.insert(sg, uffa.shopMessage)
end

return table.concat(sg, _d("Mw"))
end

local function bx(ucg, xid)
local ojid = os.clock()

if ojid < (uffa.shopCallAt or 0) then
return false, _d("SghcEg")
end

uffa.shopCallAt = ojid + 1.4

local ffm, upo, vnvh, iwaj = pcall(function()
return za.FishingShop:InvokeServer(ucg, xid)
end)

if not ffm then
return false, _d("XBZBChlG") .. tostring(upo)
end

mcr(iwaj)

if upo == true then
return true, nil
end

return false, tostring(vnvh or _d("SwFVEBgDXA"))
end

function uffa.rebirthCardsHeld()
local gtkg = cqgg and type(cqgg.RebirthCards) == _d("TQVRCQ4") and #cqgg.RebirthCards or 0

if gtkg == 0 then
return 0, 0
end

local rtz = 0

for uhqt, hu in ipairs(cqgg.RebirthCards) do
if uffa.rebirthCards[hu.cardId] then
rtz = rtz + 1
end
end

return rtz, gtkg
end

function uffa.rebirthReady()
local eu, uab = uffa.rebirthCardsHeld()

return uab > 0 and eu >= uab and (tonumber(uffa.rebirths) or 0) < 1
end

function uffa.rebirthText()
local gmvg, mhf = uffa.rebirthCardsHeld()

if mhf == 0 then
return _d("fw1ADQIIXxkAUhEKRlZWEBMJBAdcXAAfRRgJGEsBUQwZElAZDUBFHghZTwVaCQoEVFxK")
end

if (tonumber(uffa.rebirths) or 0) >= 1 then
return _d("awFRDBkSUFwAHUU/Dl0ZJVEEBQJXVwFXRSIVVFgKV0UCFRhWFFYLRQ")
end

if gmvg >= mhf then
return _d("eAhfRQ") .. mhf .. _d("GQdSFw8VGF8NQA0OAhYZNlYEDx8YTQsTFw4EUUsQW0s")
end

local mowf = {}

for lwl, rcq in ipairs(cqgg.RebirthCards) do
if not uffa.rebirthCards[rcq.cardId] then
table.insert(mowf, (string.gsub(rcq.cardId, _d("ZwJaFgM5"), _d(""))))
end
end

return gmvg .. _d("Fg") .. mhf .. _d("GQdSFw8VFhk3RwwHChhXAVYBSw") .. table.concat(mowf, _d("FUQ")) .. _d("Fw")
end

local function fl(mlxp)
local ov = rtpa.Character
local llk = ov and ov:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not llk then
return false
end

return (llk.Position - (laq[mlxp] or laq.rod)).Magnitude <= 26
end

local function yh(sps, riy)

if riy and riy.island then
if not uffa.shopIsland or not uffa.shopIsland.toIsland() then
uffa.shopMessage = _d("egtGCQ9GVlYQExcOB1tRREcNDkZRSghSCw9GW1YRXREOFA")

return false
end

return true
end

if fl(sps) then
return true
end

local kscy = rtpa.Character
local qb = kscy and kscy:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not qb then
return false
end

local rmpc = laq[sps] or laq.rod
uffa.shopTripUntil = os.clock() + 12
uffa.shopHoldUntil = os.clock() + 12

pcall(function()
qb.CFrame = CFrame.new(rmpc)
end)

task.wait(1.2)

return fl(sps)
end

local function bedp(rqfz, lsqr, fat)
if not fat then
return false
end

if (uffa.casts or 0) < fat.cost then
return false
end

if not yh(rqfz, fat) then
uffa.shopMessage = _d("egtGCQ9GVlYQExcOB1tRREcNDkZLUQtDRQ0JShk") .. fat.name
return false
end

local npr, cu = bx(lsqr, fat.id)

if not npr then
local oiw = tostring(cu)
local lzlv = oiw:find(_d("bQVfDksSVxkQWwBLIFFKDFYXBgdW"), 1, true) or oiw:find(_d("ewtSEUsiXVgIVhc"), 1, true)

if lzlv then

uffa.shopMessage = _d("bgVfDgIIXxkRQ0UfCRhNDFZFCAlNVxBWF0sAV0tE") .. fat.name
return false
end

if cu ~= _d("SghcEg") then
uffa.shopAt = os.clock() + 15
uffa.shopMessage = _d("agFBEw4UGEsBVRAYA1wZ") .. fat.name .. _d("GUw") .. oiw .. _d("EA")
end

return false
end

uffa.shopMessage = _d("ewtGAgMSGA") .. fat.name

return true
end

local function xxsu(frs)
local cou = suf(frs)

if not cou or br(frs) == cou.id then
return false
end

local pssq

if frs == _d("SwtX") then
pssq = _d("fBVGDBs0V10")
elseif frs == _d("WwVaEQ") then
pssq = _d("fBVGDBskWVAQ")
else
return false
end

local xmvg, iths = bx(pssq, cou.id)

if not xmvg then
if iths ~= _d("SghcEg") then
uffa.shopMessage = _d("egtGCQ9GVlYQEwAaE1FJRA") .. cou.name .. _d("GUw") .. tostring(iths) .. _d("EA")
end

return false
end

if frs == _d("SwtX") then
uffa.rod = cou.id
elseif frs == _d("WwVaEQ") then
uffa.equippedBait = cou.id
else
return false
end

uffa.shopMessage = _d("fBVGDBsWXV1E") .. cou.name

return true
end

local function yaf()
local rv = uffa.shop

if os.time() - (uffa.lastSync or 0) >= 5 then
vwc()
end

if rv.equipRod then
xxsu(_d("SwtX"))
end

if rv.equipBait then
xxsu(_d("WwVaEQ"))
end

if rv.autoBuyRod then
bedp(_d("SwtX"), _d("exFKNwQC"), xj(_d("SwtX")))
end

if rv.autoBuyBait then
bedp(_d("WwVaEQ"), _d("exFKJwoPTA"), xj(_d("WwVaEQ")))
end
end

local function pmz()
local eqxz = uffa.shop

return eqxz.autoBuyRod or eqxz.autoBuyBait or eqxz.equipRod or eqxz.equipBait
end

uffa.shopIsland = {
rods = function()
local tddp = cqgg and cqgg.RodsById or {}
local haoa = {}

for vhgt, hyfm in pairs(tddp) do
if tostring(hyfm.shop) == _d("UBdfBAUC") then
table.insert(haoa, {
id = tostring(vhgt),
name = tostring(hyfm.name or vhgt),
cost = tonumber(hyfm.cost) or 0,
luck = tonumber(hyfm.luck) or 0,
index = tonumber(hyfm.index) or 0,
crafted = hyfm.crafted == true,
})
end
end

table.sort(haoa, function(asx, tart)
return asx.index < tart.index
end)

return haoa
end,

angler = function()
local uyq = workspace:FindFirstChild(_d("dzRwFg"), true)

if not uyq then
return nil
end

for okmp, guu in ipairs(uyq:GetChildren()) do
if guu:GetAttribute(_d("agFQFw4SeVcDXwAZKGh6")) then
return guu
end
end

return nil
end,
held = function(nkgm)
return (uffa.rodsOwned or {})[nkgm] == true
end,
recipeHeld = function(oqko)
for sb, ta in ipairs(oqko or {}) do
local qa = tonumber((uffa.mats or {})[ta.id]) or 0

if qa < (tonumber(ta.count) or 0) then
return false
end
end

return true
end,
recipeText = function(wvk)
local wuk = {}

for vbpc, rqq in ipairs(wvk or {}) do
local kfvn = tonumber((uffa.mats or {})[rqq.id]) or 0
local uogz = (iymu.ById[rqq.id] and iymu.ById[rqq.id].name) or tostring(rqq.id)

table.insert(wuk, uogz .. _d("GQ") .. bk(kfvn) .. _d("Fg") .. bk(tonumber(rqq.count) or 0))
end

return table.concat(wuk, _d("GaaERQ"))
end,

stand = function(nte)
local lc = rtpa.Character
local nwcj = lc and lc:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not (nwcj and nte) then
return false
end

local izo = nte:GetPivot()
local rq = nte:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA")) or nte:FindFirstChildWhichIsA(_d("ewVAADsHSk0"), true)
local qzd = rq and (rq.CFrame * CFrame.new(0, 0, -5)).Position or nil

if not qzd then
local su = RaycastParams.new()
su.FilterType = Enum.RaycastFilterType.Exclude
su.FilterDescendantsInstances = { lc, nte }

local ho = nil
local izj = math.huge

for hyxk, vys in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local tk = workspace:Raycast(izo.Position + vys + Vector3.new(0, 30, 0), Vector3.new(0, -140, 0), su)

if tk and tostring(tk.Instance.Name) ~= _d("bgVHABk") and tk.Position.Y <= izo.Position.Y + 10 then
local dah = math.abs(tk.Position.Y - izo.Position.Y)

if dah < izj then
ho = tk
izj = dah
end
end
end

qzd = ho and Vector3.new(ho.Position.X, ho.Position.Y + 3.5, ho.Position.Z) or (izo.Position + Vector3.new(0, 4, 0))
end

uffa.shopTripUntil = os.clock() + 12

uffa.islandTripUntil = os.clock() + 12

pcall(function()
nwcj.CFrame = CFrame.new(qzd)
end)

task.wait(1.2)

return true
end,
atIsland = function()
local wost = workspace:FindFirstChild(_d("cBdfBAUCflAXWwAZC1lXKmMm"), true)
local ptx = rtpa.Character
local gz = ptx and ptx:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not (wost and gz) then
return false
end

return (gz.Position - wost:GetPivot().Position).Magnitude <= 45
end,
toIsland = function()
if uffa.shopIsland.atIsland() then
return true
end

uffa.shopTripUntil = os.clock() + 12

if not uffa.gotoIsland() then
return false
end

task.wait(1.2)

return uffa.shopIsland.atIsland()
end,

craftExcalibur = function()
local yhvw = uffa.shopIsland.angler()

if not yhvw or uffa.shopIsland.held(_d("SwtXOhgDW0sBRw")) then
return false
end

if not uffa.shopIsland.recipeHeld(cqgg and cqgg.SecretRecipe) then
return false
end

uffa.shopIsland.stand(yhvw)

local ovi, yqs = bx(_d("ehZSAx80V10"), _d("SwtXOhgDW0sBRw"))

if ovi then
uffa.rod = _d("SwtXOhgDW0sBRw")
uffa.islandMessage = _d("ehZSAx8DXBkQWwBLI0BaBV8MCRNKGRZcAUsHTBkQWwBLLlFdAFYLSydWXghWFw")
elseif yqs ~= _d("SghcEg") then
uffa.islandMessage = _d("cQ1XAQ4IGHgKVAkOFBhLAVUQGANcGRBbAEsjQFoFXwwJE0oZTA") .. tostring(yqs) .. _d("EA")
end

return ovi
end,
craftBoot = function()
if uffa.boot.owned or uffa.islandLocked then
return false
end

if not uffa.shopIsland.recipeHeld(cqgg and cqgg.BootRecipe) then
return false
end

if not uffa.shopIsland.toIsland() then
uffa.islandMessage = _d("egtGCQ9GVlYQExcOB1tRREcNDkZRSghSCw9GW1YRXREOFA")
return false
end

local gvpc, qzjt = bx(_d("ehZSAx8kV1YQ"))

if gvpc then
uffa.boot.owned = true
uffa.islandMessage = _d("ehZSAx8DXBkQWwBLKl1eAV0BChRBGSZcCh8")
elseif qzjt ~= _d("SghcEg") then
uffa.islandMessage = _d("cBdfBAUCGH8NQA0OFFVYChMXDgBNSgFXRR8OXRkGXAofRhA") .. tostring(qzjt) .. _d("EA")
end

return gvpc
end,
best = function()
local xhfg = uffa.rodsOwned or {}
local xi = nil

for svz, lto in ipairs(uffa.shopIsland.rods()) do
if xhfg[lto.id] == true and (xi == nil or lto.luck > xi.luck) then
xi = lto
end
end

return xi
end,

equipBoot = function()
if not uffa.boot.owned or uffa.boot.equipped then
return false
end

local hqrm, qvi = bx(_d("fBVGDBskV1YQ"), true)

if hqrm then
uffa.boot.equipped = true
uffa.islandMessage = _d("fBVGDBsWXV1ERw0ORnRcA1YLDwdKQERxCgQS")
elseif qvi ~= _d("SghcEg") then
uffa.islandMessage = _d("egtGCQ9GVlYQEwAaE1FJREcNDkZaVgtHRUM") .. tostring(qvi) .. _d("EA")
end

return hqrm
end,
active = function()
local bvop = uffa.island

return bvop.autoRod or bvop.autoAcc or bvop.equipAcc
end,
run = function()
local nnhj = uffa.island

if os.time() - (uffa.lastSync or 0) >= 8 then
vwc()
end

if nnhj.autoRod then
uffa.shopIsland.craftExcalibur()
end

if nnhj.autoAcc then
uffa.shopIsland.craftBoot()
end

if nnhj.equipAcc then
uffa.shopIsland.equipBoot()
end
end,
text = function()
if not cqgg then
return _d("fw1ADQIIX30FRwRLCFdNRFUKHghcGUkTEQMDGFAXXwQFAhhKDFwVSw9LGRFdBB0HUVUFUQkOSA")
end

local jbi = {}
local ugdy = uffa.rodsOwned or {}

table.insert(jbi, uffa.islandLocked and _d("eAZSCw8JVlwAEywYCllXABMMGEZUVgdYAA9GFRkWVgcCFExRRFUMGRVMFw") or _d("eAZSCw8JVlwAEywYCllXABMMGEZXSQFdSw"))

for cfb, fy in ipairs(uffa.shopIsland.rods()) do
local cshd

if ugdy[fy.id] == true then
cshd = uffa.rod == fy.id and _d("VhNdAA9G+o5EXAtLCFdO") or _d("VhNdAA8")
elseif fy.crafted then
cshd = _d("cQ1XAQ4IGHgKVAkOFBhLAVAMGwM")
else
cshd = bk(fy.cost) .. _d("GQdSFh8V")
end

table.insert(jbi, fy.name .. _d("GYaz8Us") .. cshd)
end

table.insert(jbi, _d(""))

if ugdy.rod_secret then
table.insert(jbi, _d("fBxQBAcPWkwWCUUEEVZcAA"))
else
local owk = uffa.shopIsland.recipeHeld(cqgg.SecretRecipe)

table.insert(jbi, _d("fBxQBAcPWkwWCUU") .. (owk and _d("SwFQDBsDGEsBUgES") or _d("SwFQDBsDGEoMXBcf")))
table.insert(jbi, uffa.shopIsland.recipeText(cqgg.SecretRecipe))
end

table.insert(jbi, _d("cQ1XAQ4IGHgKVAkOFAIZ") .. (uffa.shopIsland.angler() and _d("TBQTCwQR") or _d("VwtHRQMDSlw")))
table.insert(jbi, _d(""))

local flih = uffa.boot
local ibv

if flih.equipped then
ibv = _d("dQFUAAUCWUsdEycECUwDRFYUHg9ISQFX")
elseif flih.owned then
ibv = _d("dQFUAAUCWUsdEycECUwDRFwSBQNc")
elseif uffa.shopIsland.recipeHeld(cqgg.BootRecipe) then
ibv = _d("dQFUAAUCWUsdEycECUwDREEACA9IXERBAAoCQQ")
else
ibv = _d("dQFUAAUCWUsdEycECUwDRA") .. uffa.shopIsland.recipeText(cqgg.BootRecipe)
end

table.insert(jbi, ibv)
table.insert(jbi, _d("egVAERhGTFZEQBUOCFwDRA") .. bk(uffa.casts or 0))

if uffa.islandMessage then
table.insert(jbi, _d(""))
table.insert(jbi, uffa.islandMessage)
end

return table.concat(jbi, _d("Mw"))
end,
}

task.spawn(function()
vwc()
end)

local ut = {
enabled = false,
selected = {},
balances = {},
shopState = nil,
stateAt = 0,
purchased = {},
failedUntil = {},
pending = nil,
lastAttempt = 0,
lastSync = 0,
uiTimerText = nil,
uiTimerSeconds = 0,
uiTimerAt = 0,
}

getgenv().ACBXAutoBuyHalloween = ut

ojk(za.SyncItems.OnClientEvent, function(fjx)
if type(fjx) == _d("TQVRCQ4") then
ut.balances = fjx
ut.lastSync = os.time()
end
end)

za.RequestItemSync:FireServer()

ojk(za.RaidShopState.OnClientEvent, function(cg)
if type(cg) == _d("TQVRCQ4") and cg.shopId == _d("UQVfCQQRXVwK") then
ut.shopState = cg
ut.stateAt = os.clock()
end
end)

ojk(za.RaidNotify.OnClientEvent, function(juw)
local ssru = ut.pending

if not ssru or type(juw) ~= _d("ShBBDAUB") then
return
end

if juw:sub(1, 9) == _d("aTFhJiMna3wg") then
ut.purchased[ssru.id] = (ut.purchased[ssru.id] or 0) + 1
ut.pending = nil
else
if ut.balances[ssru.currency] then
ut.balances[ssru.currency] = ut.balances[ssru.currency] + ssru.price
end

ut.failedUntil[ssru.id] = os.time() + 5
ut.pending = nil
end
end)

gwn.trip = {
untilAt = 0,
lastTry = 0,
lastResult = nil,
spot = nil,
}

function gwn.merchant()
local xuvp = workspace:FindFirstChild(_d("dzRwFg"))
local wr = gwn.shopData and gwn.shopData.NpcName or _d("aRFeFQAPVhkpVhcIDllXEA")

return xuvp and xuvp:FindFirstChild(wr) or nil
end

function gwn.stand()
local te = gwn.merchant()
local wjh = te and (te:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA")) or te:FindFirstChildWhichIsA(_d("ewVAADsHSk0")))
local gqrg = rtpa.Character
local nhhx = gqrg and gqrg:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not (wjh and nhhx) then
return false
end

gwn.trip.spot = wjh.Position + Vector3.new(0, 3, 4)
nhhx.AssemblyLinearVelocity = Vector3.zero
nhhx.CFrame = CFrame.new(gwn.trip.spot)

return true
end

function gwn.fresh()
return ut.shopState ~= nil and os.clock() - ut.stateAt < 30
end

function gwn.guiOpen()
local fyom = qsrk:FindFirstChild(_d("cQVfCQQRXVwKYA0EFn9MDQ"))
local aeg = fyom and fyom:FindFirstChild(_d("agxcFS0UWVQB"))

if aeg then
return aeg.Visible == true
end

for df, ix in ipairs(qsrk:GetChildren()) do
if ix:IsA(_d("agdBAA4If0wN")) and ix.Name:lower():find(_d("UQVfCQQRXVwK"), 1, true) and ix.Enabled then
return true
end
end

return false
end

function gwn.close()
local qdjf = qsrk:FindFirstChild(_d("cQVfCQQRXVwKYA0EFn9MDQ"))
local zqp = qdjf and qdjf:FindFirstChild(_d("agxcFS0UWVQB"))

if not (zqp and zqp.Visible) then
return false
end

local ahjb = zqp:FindFirstChild(_d("eghcFg4kTU0QXAs"))

if not ahjb then
for ms, ceno in ipairs(zqp:GetDescendants()) do
if ceno:IsA(_d("fhFaJx4STFYK")) and tostring(ceno.Name):lower():find(_d("WghcFg4"), 1, true) then
ahjb = ceno
break
end
end
end

if ahjb and type(firesignal) == _d("XxFdBh8PV1c") then
pcall(function()
firesignal(ahjb.MouseButton1Click)
end)

task.wait(0.3)

if not zqp.Visible then
return true
end
end

pcall(function()
zqp.Visible = false
end)

return true
end

function gwn.spend()
if ut.pending or os.time() - (ut.lastAttempt or 0) < 1 then
return nil
end

local xfe = ut.shopState

for olv, qt in ipairs(gwn.shopItems) do
if ut.selected[qt.id] and os.time() >= (ut.failedUntil[qt.id] or 0) then
local rjv = qt.stock
local bkui = ut.purchased[qt.id] or 0

if xfe and xfe.stocks and xfe.stocks[qt.id] then
rjv = xfe.stocks[qt.id]
end

if xfe and xfe.bought then
bkui = math.max(bkui, xfe.bought[qt.id] or 0)
end

local qblm = rjv and (rjv - bkui) or 1
local sed = ut.balances[qt.currency] or 0

if qblm > 0 and sed >= qt.price then
ut.pending = {
id = qt.id,
price = qt.price,
currency = qt.currency,
at = os.time(),
}
ut.lastAttempt = os.time()
ut.balances[qt.currency] = sed - qt.price

pcall(function()
za.BuyRaidItem:FireServer(qt.id, 1)
end)

return qt.id
end
end
end

return nil
end

function gwn.open(yepj)
if not yepj and gwn.fresh() then
return true
end

if not yepj and os.clock() < (gwn.trip.lastTry or 0) + 8 then
return false
end

gwn.trip.lastTry = os.clock()
gwn.trip.untilAt = os.clock() + 12

uffa.shopTripUntil = os.clock() + 12
uffa.shopHoldUntil = os.clock() + 12
uffa.phase = _d("UABfAA")

local wz = gwn.merchant()
local hb = wz and wz:FindFirstChild(_d("aRZcHQILUU0dYxcEC0hN"))

if not (wz and hb) then
uffa.deepPhase = _d("UABfAA")
gwn.trip.untilAt = os.clock() + 60
gwn.trip.lastResult = _d("bQxWRTsTVUkPWgtLK11LB1sEBRIYUBcTCwQSGFAKExEDD0sZBkYMBwIW")

return false
end

local sbun = os.clock() + 3
local hgrt = 0

while os.clock() < sbun do

gwn.stand()

if os.clock() >= hgrt then
hgrt = os.clock() + 0.8

if type(fireproximityprompt) == _d("XxFdBh8PV1c") then
pcall(function()
fireproximityprompt(hb)
end)
end

pcall(function()
za.OpenRaidShop:FireServer(_d("UQVfCQQRXVwK"))
end)
end

if gwn.guiOpen() or gwn.fresh() then
break
end

task.wait(0.1)
end

if not (gwn.guiOpen() or gwn.fresh()) then

uffa.deepPhase = _d("UABfAA")
gwn.trip.untilAt = os.clock() + 60
gwn.trip.lastResult = _d("bQxWRQgJTVcQVhdLAlFdRF0KH0ZZVxdEABlGFRkNR0UECFRARFwVDghLGQ1dRR8OXRkXVgQYCVZYCBMEGQNZFw")

return false
end

gwn.trip.lastResult = _d("egtGCx8DShkLQwAFSA")

for afdd = 1, 3 do
gwn.stand()

if not gwn.spend() then
break
end

task.wait(1.2)
end

pcall(gwn.close)

uffa.deepPhase = _d("UABfAA")

return true
end

local function xek(nii)
nii = math.max(0, math.floor(nii))
local zyla = math.floor(nii / 3600)
local yudr = math.floor((nii % 3600) / 60)
local ylr = nii % 60

if zyla > 0 then
return string.format(_d("HABbRU5WCl0J"), zyla, yudr)
elseif yudr > 0 then
return string.format(_d("HABeRU5WCl0X"), yudr, ylr)
end

return string.format(_d("HABA"), ylr)
end

local function dep()
local kkk = qsrk:FindFirstChild(_d("cQVfCQQRXVwKYA0EFn9MDQ"))
local rc = kkk and kkk:FindFirstChild(_d("agxcFS0UWVQB"))
local zyr = rc and rc:FindFirstChild(_d("cBBWCCcPS00"))
local izp = {}
local gjju = nil

if zyr then
for ofdi, esp in ipairs(gwn.shopItems) do
local kdmh = zyr:FindFirstChild(esp.id)
local ppm = kdmh and kdmh:FindFirstChild(_d("ewtL"))
local ah = ppm and ppm:FindFirstChild(_d("ahBcBgA"))

if ah and ah:IsA(_d("bQFLEScHWlwI")) then
local qxfi, yyev = ah.Text:match(_d("EUFXTkJDSxNLFhZBTh1dTxo"))

if qxfi and yyev then
izp[esp.id] = {
remaining = tonumber(qxfi),
total = tonumber(yyev),
}
end
end
end
end

if rc then
for cbt, mnm in ipairs(rc:GetDescendants()) do
if mnm:IsA(_d("bQFLEScHWlwI")) and mnm.Text:find(_d("SwFAAB8VGFAK"), 1, true) then
gjju = mnm.Text:match(_d("SwFAAB8VGFAKFhZBThYSTRc"))
break
end
end
end

return izp, gjju
end

local function gf(nvx)
if type(nvx) ~= _d("ShBBDAUB") then
return 0
end

local jaz = tonumber(nvx:match(_d("EUFXTkIO"))) or 0
local mp = tonumber(nvx:match(_d("EUFXTkIL"))) or 0
local hwhv = tonumber(nvx:match(_d("EUFXTkIV"))) or 0
return jaz * 3600 + mp * 60 + hwhv
end

local function dicj()
local bgg = ut.shopState
local lio, ilxi = dep()
local lnqw = {}
local vjxf = {}
local dl = {}

for vv, oo in ipairs(gwn.shopItems) do
local ygrw = oo.stock
local jyj = nil

if bgg and bgg.stocks and bgg.stocks[oo.id] then
ygrw = bgg.stocks[oo.id]
end

local xva = ut.purchased[oo.id] or 0

if bgg and bgg.bought then
xva = math.max(xva, bgg.bought[oo.id] or 0)
end

if ygrw then
jyj = math.max(0, ygrw - xva)
end

if (not bgg or not bgg.bought) and lio[oo.id] then
jyj = lio[oo.id].remaining
ygrw = lio[oo.id].total
end

local uxe = oo.currency == _d("UwVQDjQJZ1UFXREOFFY") and _d("dQVdEQ4UVko") or _d("egVdARI")
local zs

if jyj == nil then
zs = oo.shortName
elseif jyj <= 0 then
zs = oo.shortName .. _d("GaaERRgJVF1EXBAf")
else
zs = oo.shortName .. _d("GaaERQ") .. tostring(jyj) .. _d("Fg") .. tostring(ygrw or _d("Bg"))
end

if not vjxf[uxe] then
vjxf[uxe] = {}
table.insert(dl, uxe)
end

table.insert(vjxf[uxe], zs)
end

local slsv = {}

for cvj, yi in ipairs(dl) do
table.insert(slsv, yi)

for sxwm, ost in ipairs(vjxf[yi]) do
table.insert(slsv, ost)
end
end

table.insert(lnqw, table.concat(slsv, _d("M24")))
table.insert(lnqw, _d(""))

if bgg and type(bgg.resetsIn) == _d("VxFeBw4U") then
local vugl = bgg.resetsIn - (os.clock() - ut.stateAt)
table.insert(lnqw, _d("awFAEQQFU0pEWgtL") .. xek(vugl))
elseif ilxi then
if ut.uiTimerText ~= ilxi then
ut.uiTimerText = ilxi
ut.uiTimerSeconds = gf(ilxi)
ut.uiTimerAt = os.clock()
end

local zzf = ut.uiTimerSeconds - (os.clock() - ut.uiTimerAt)
table.insert(lnqw, _d("awFAEQQFU0pEWgtL") .. xek(zzf))
else
table.insert(lnqw, _d("awFAEQQFU0pEVwQCCkEZpoRFHQ9LUBATEQMDGEoMXBU"))
end

if not gwn.fresh() then
table.insert(lnqw, gwn.trip.lastResult or _d("bQxWRQgJTVcQVhdLD0sZB18KGANcGUkTKhsDVhkXWwobRk9YCFgWSxJQXERQDQoUWVoQVhdLE0gZEFxFAhIW"))
end

return table.concat(lnqw, _d("Mw"))
end

ojk(za.NPCBattleResult.OnClientEvent, function(xufr)
if type(xufr) ~= _d("TQVRCQ4") then
return
end

wj.battlePending = false

if xufr.result == _d("WgtcCQ8JT1c") and type(xufr.remaining) == _d("VxFeBw4U") and ok and hmq then
lgls(ok, hmq, os.time() + xufr.remaining)
return
end

if type(xufr.npcId) == _d("ShBBDAUB") then
local ctax = type(xufr.difficulty) == _d("ShBBDAUB") and xufr.difficulty or wj.activeDifficulty[xufr.npcId] or _d("VwtBCAoK")
local cllh = wfdj.ById[xufr.npcId]
local xr = tonumber(xufr.cooldown) or (cllh and cllh.cooldown) or 300
lgls(xufr.npcId, ctax, os.time() + xr)
end
end)

ojk(za.SyncNPCCooldowns.OnClientEvent, function(fls)
if type(fls) ~= _d("TQVRCQ4") then
return
end

for agd, qgmu in pairs(fls) do
if type(agd) == _d("ShBBDAUB") and type(qgmu) == _d("VxFeBw4U") then
local ljx = wj.activeDifficulty[agd] or _d("VwtBCAoK")
lgls(agd, ljx, qgmu)
end
end
end)

local xo = {}
local zc = {}

for ltm, txp in ipairs(imy.Worlds) do

local wfdr = { _d("eAhf") }
local qp = {}
local hdv = {}
local dmuo = nil

for bqxm, mefo in ipairs(txp.npcs or {}) do
local rdm = wfdj.ById[mefo]
if rdm then
table.insert(wfdr, rdm.name)
table.insert(hdv, mefo)
qp[rdm.name] = mefo
if rdm.type == _d("WwVHEQcD") then
dmuo = mefo
end
end
end

local uu = txp.id
if dmuo and lr.ById[dmuo] then
uu = lr.ById[dmuo].worldId or uu
end

for gfy, rx in ipairs(txp.npcs or {}) do
zc[rx] = uu

wj.bossTeams.worldOf[rx] = txp.id
end

table.insert(xo, {
id = txp.id,
teleportWorldId = uu,
name = txp.name,
options = wfdr,
ids = hdv,
byName = qp,
npcs = txp.npcs,
})
end

local jpn = {}
local olrl = {}
local bkct = {}

for vko, xjs in ipairs(imy.Difficulties) do
table.insert(jpn, xjs.name)
olrl[xjs.name] = xjs.id
bkct[xjs.id] = xjs.name
end

local ade = {}
local cn = {}

for gbm, cekr in ipairs(vofq.Difficulties) do
table.insert(ade, cekr.name)
cn[cekr.name] = cekr.id
end

local vwrv = {}
local uv = {}
local xfxq = {}
local oqa = {
soul_king = _d("awVaATwJSlUA"),
beerus = _d("awVaATwJSlUAbCcOA0pMFw"),
reid = _d("awVaATwJSlUAbDcOD1w"),
}

for yetm, yvvc in ipairs(vofq.Raids) do
if yvvc.BossTitle and yvvc.id then
table.insert(vwrv, yvvc.BossTitle)
uv[yvvc.BossTitle] = yvvc.id
xfxq[yvvc.id] = yvvc.NpcId
end
end

local function rvro()
for nv, leg in ipairs({ _d("ewVHEQcDf0wN"), _d("ewVHEQcDf0wNAQ") }) do
local mgs = qsrk:FindFirstChild(leg)
local tkh = mgs and mgs:FindFirstChild(_d("ewVHEQcDa1oWVgAF"))
if tkh and tkh.Visible then
return tkh
end
end
end

local function wlr()
for rko, ymj in ipairs({ _d("ewVHEQcDf0wN"), _d("ewVHEQcDf0wNAQ") }) do
local mkms = qsrk:FindFirstChild(ymj)
local tuqe = mkms and mkms:FindFirstChild(_d("ewVHEQcDa1oWVgAF"))
if tuqe then
return tuqe
end
end
end

local function mos()
if rvro() then
return true
end

for mrfd, smcu in ipairs({ _d("ewVHEQcDf0wN"), _d("ewVHEQcDf0wNAQ") }) do
local udue = qsrk:FindFirstChild(smcu)
local xlu = udue and udue:FindFirstChild(_d("cQ1XACkHTE0IViceEkxWCg"))
if xlu and xlu.Visible then
return true
end
end

for iguw, enzg in ipairs({ _d("cApxBB8SVFw"), _d("cApxBB8SVFxW") }) do
local go = qsrk:FindFirstChild(enzg)
if go and go:IsA(_d("ewtcCT0HVEwB")) and go.Value then
return true
end
end

return false
end

function rk.slotFree(rr)

if rr == nil then
return false
end

if not rk.enabled then
return not mos()
end

return not rk.busy(rr)
end

function rk.npcSlot()
return rk.roleSlot(_d("VxRQ"))
end

local hz

local function byd(qj)
qj = math.max(0, math.floor(qj))
if qj <= 0 then
return _d("SwFSARI")
end

local kscu = math.floor(qj / 60)
local ak = qj % 60

if kscu > 0 then
return string.format(_d("HABeRU5WCl0X"), kscu, ak)
end

return string.format(_d("HABA"), ak)
end

local function va()
for lfz, czwe in ipairs({ _d("ewVHEQcDf0wN"), _d("ewVHEQcDf0wNAQ") }) do
local xq = qsrk:FindFirstChild(czwe)
if xq then
local yjmq = xq:FindFirstChild(_d("axFdIwcJV0soUgcOCg"))
local fim = xq:FindFirstChild(_d("bQtEABkgVFYLQSkKBF1V"))
if (yjmq and yjmq.Visible) or (fim and fim.Visible) then
return _d("cAoTMQQRXUs")
end
end
end

if ii.currentRoom and (ii.inBattle or mos()) then
local zekt = nil

for ajl, gbjt in ipairs({ _d("ewVHEQcDf0wN"), _d("ewVHEQcDf0wNAQ") }) do
local zsml = qsrk:FindFirstChild(gbjt)
local fwt = zsml and zsml:FindFirstChild(_d("ewVHEQcDa1oWVgAF"))
local bxxv = fwt and fwt:FindFirstChild(_d("fApWCBInW00NRQAoB0pd"))
local mw = bxxv and bxxv:FindFirstChild(_d("dwVeACcHWlwI"))

if mw and mw.Text ~= _d("") then
zekt = mw.Text
break
end
end

if zekt then
return _d("ewVHEQcPVl5E") .. zekt .. _d("GT9hCgQLGA") .. ii.currentRoom .. _d("ZA")
end

return _d("ewVHEQcPVl5EaDcECVUZ") .. ii.currentRoom .. _d("ZA")
end

local crl = wlr()
if mos() and crl then
local db = crl:FindFirstChild(_d("fApWCBInW00NRQAoB0pd"))
local vtnv = db and db:FindFirstChild(_d("dwVeACcHWlwI"))
local hqtc = vtnv and vtnv.Text

local bhyz = nil
if wj.currentBattle then
bhyz = wj.currentBattle.difficulty
elseif hqtc then
local xidw = xm[hqtc]
if xidw then
bhyz = wj.activeDifficulty[xidw]
end
end

local dryj = _d("")
if bhyz then
dryj = _d("GT8") .. (bkct[bhyz] or bhyz) .. _d("ZA")
end

local acp = hqtc
if wj.currentBattle and wj.currentBattle.npcId then
local gs = wfdj.ById[wj.currentBattle.npcId]
if gs then
acp = gs.name
end
end

if acp and acp ~= _d("") then
return _d("ewVHEQcPVl5E") .. acp .. dryj
end

return _d("ewVHEQcPVl4") .. dryj
end

wj.currentBattle = nil

local qqh = fhyz.enabled and (fhyz.bossFor(1) or fhyz.bossFor(2))

if qqh then
local qjc = vf:FindFirstChild(_d("awVaATgSWU0RQA"))

if qjc then
local igy = qqh
local ad = vofq.ById[igy]
local xk = ad and ad.BossTitle or igy
local dnhv = qjc:GetAttribute(_d("cBd8FQ4I")) == true or qjc:GetAttribute(_d("fwtBBg4C")) == true
local mgk = qjc:GetAttribute(_d("awFSARI5") .. igy) == true
local dj = fhyz.progress[igy]
local lvhd = dj and dj.locked == true

if not dnhv then
local dbgo = tonumber(qjc:GetAttribute(_d("egxSCwwDS3gQ"))) or 0
return _d("cABfAEtLGA") .. xk .. _d("GTZSDA9cGA") .. byd(dbgo - os.time())
end

if dj and dj.cooldowns then
local txn = tonumber(dj.cooldowns.normal)

if txn and txn > 0 then
return _d("cABfAEtLGA") .. xk .. _d("GTZSDA9cGA") .. byd(txn)
end
end

if not mgk or lvhd then
return _d("cABfAEtLGA") .. xk .. _d("GTZSDA9cGFULUA4OAg")
end

return _d("cABfAEtLGA") .. xk .. _d("GTZSDA9cGEsBUgES")
end
end

if uffa.enabled then
if uffa.usingGameAuto then
return _d("fw1ADQIIXxlJEwIKC10ZBUYRBEYQ") .. bk(eij()) .. _d("GQdSEAwOTBA")
end

if uffa.phase == _d("WgVAEQIIXw") then
return _d("fw1ADQIIXxlJEwYKFUxQClQ")
end

if uffa.phase == _d("TgVaEQIIX3sNRwA") then
return _d("fw1ADQIIXxlJExIKD0xQClRFDQlKGQUTBwISXQ")
end

if uffa.phase == _d("SwFWCQIIXw") or uffa.phase == _d("SwFACgcQUVcD") then
return _d("fw1ADQIIXxlJExcOA1RQClRFBAhdGQ1d")
end

return _d("fw1ADQIIXxlJEwwPCl0ZTA") .. bk(eij()) .. _d("GQdSEAwOTBA")
end

if not wj.enabled and not wj.story then
return _d("cABfAA")
end

local exb, koyd, cgzm = hz()

if exb then
local yfo = wfdj.ById[exb]
local lv = yfo and yfo.name or exb
local ahw = (koyd or 0) - os.time()
local cfzg = bkct[cgzm] or cgzm or _d("dwtBCAoK")

return _d("cABfAEtLGHcBSxFRRg") .. lv .. _d("GT8") .. cfzg .. _d("ZEQb") .. byd(ahw) .. _d("EA")
end

return _d("cABfAA")
end

local function dqrh(lgsf)
local dhe = workspace:FindFirstChild(_d("dzRwFg"))
if not dhe then
return nil
end

for vu, vnd in ipairs(dhe:GetChildren()) do
if vnd:GetAttribute(_d("dzRwLA8")) == lgsf then
return vnd
end
end

return nil
end

local function btr(jjp)
local fcw = rtpa.Character
local dzy = fcw and fcw:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))
if not (dzy and jjp) then
return false
end

local rnp, qsz = pcall(function()
return jjp:GetPivot()
end)
if not rnp then
return false
end

local ldsk = qsz.Position + qsz.LookVector * 6 + Vector3.new(0, 3, 0)
local htys = Vector3.new(qsz.Position.X, ldsk.Y, qsz.Position.Z)

dzy.CFrame = CFrame.lookAt(ldsk, htys)
return true
end

local function jbs()
local vee = rtpa:FindFirstChild(_d("aQhSHA4Ua1oWWhUfFQ"))
local owf = vee and vee:FindFirstChild(_d("aQhSHA4UdVYARgkO"))

if not owf then
return nil
end

local gubg, ux = pcall(require, owf)
if not gubg then
return nil
end

local kds, zgg = pcall(function()
return ux:GetControls()
end)

if kds then
return zgg
end
end

local function pd(hruu, ags, aoc, znk, da)
znk = znk or 8

local function qfx()
return ags and ags()
end

local dyg = os.clock()

while os.clock() - dyg < 5 do
if qfx() then
return false
end

if rtpa.Character and rtpa.Character:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA")) then
break
end
task.wait(0.2)
end

local fgod = rtpa.Character
local zgtw = fgod and fgod:FindFirstChildOfClass(_d("cRFeBAUJUV0"))
local wbdf = fgod and fgod:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not (zgtw and wbdf) then
return false
end

if (wbdf.Position - hruu).Magnitude <= znk then
return true
end

local ksis = aoc or zgtw.WalkSpeed
local sp = jbs()
local dn = zgtw.JumpPower
local xtt = zgtw.UseJumpPower

if da then
pcall(function()
zgtw.UseJumpPower = true
zgtw.JumpPower = math.max(dn, 60)
end)
end

if sp then
pcall(function()
sp:Disable()
end)
end

local hd = zgtw:FindFirstChildOfClass(_d("eApaCAoSV0s"))
local mcv = nil
local jah = fgod:FindFirstChild(_d("eApaCAoSXQ"))
local vff = jah and (jah:FindFirstChild(_d("bgVfDioIUVQ"), true) or jah:FindFirstChild(_d("axFdJAUPVQ"), true))

if hd and vff then
local uxgz, kei = pcall(function()
return hd:LoadAnimation(vff)
end)

if uxgz and kei then
mcv = kei
mcv.Looped = true
mcv.Priority = Enum.AnimationPriority.Movement
pcall(function()
mcv:Play()
end)
end
end

local function axs(wruy)
wbdf.AssemblyLinearVelocity = Vector3.new(0, wbdf.AssemblyLinearVelocity.Y, 0)

if mcv then
pcall(function()
mcv:Stop(0.1)
end)
end

if sp then
pcall(function()
sp:Enable()
end)
end

if da then
pcall(function()
zgtw.JumpPower = dn
zgtw.UseJumpPower = xtt
end)
end

return wruy
end

local function dbua(eetx, gkx)
local fxmh = os.clock()
local yfdv = os.clock()
local rvcn = 0
local hby = wbdf.Position

while os.clock() - fxmh < gkx do
if qfx() then
return false
end

local hpn = eetx - wbdf.Position
hpn = Vector3.new(hpn.X, 0, hpn.Z)

if hpn.Magnitude <= 3 then
return true
end

local bizv = hpn.Unit
wbdf.AssemblyLinearVelocity = Vector3.new(
bizv.X * ksis,
wbdf.AssemblyLinearVelocity.Y,
bizv.Z * ksis
)

if da and os.clock() - yfdv >= 0.5 then
local mysd = (wbdf.Position - hby).Magnitude
local lpj = zgtw:GetState()
local kp = lpj ~= Enum.HumanoidStateType.Jumping and lpj ~= Enum.HumanoidStateType.Freefall

if mysd < 1.5 and kp and os.clock() - rvcn >= 0.8 then
zgtw.Jump = true
rvcn = os.clock()
end

hby = wbdf.Position
yfdv = os.clock()
end

task.wait()
end

return false
end

local xepk = cw:CreatePath({
AgentRadius = 2.5,
AgentHeight = 5,
AgentCanJump = true,
WaypointSpacing = 8,
})

local hek = pcall(function()
xepk:ComputeAsync(wbdf.Position, hruu)
end)

if hek and xepk.Status == Enum.PathStatus.Success then
for qewl, tkl in ipairs(xepk:GetWaypoints()) do
if qfx() then
return axs(false)
end

if (wbdf.Position - hruu).Magnitude <= znk then
break
end

if not dbua(tkl.Position, 10) and qfx() then
return axs(false)
end
end
end

if qfx() then
return axs(false)
end

local hy = dbua(hruu, 15)
return axs(hy)
end

local function uo(lpf, ows, jjjd)
return pd(lpf, jjjd, ows)
end
getgenv().ACBXWalkCancel = false
getgenv().ACBXWalkToPositionWithSpeed = function(crtp, zuj)
return uo(crtp, zuj, function()
return getgenv().ACBXWalkCancel == true
end)
end

local function jsje()
if wj.story then
return { wj.storyDifficulty }
end

return wj.difficulties
end

local function pob()
local tg = {}

if wj.story then
for atx, kbig in ipairs(xo) do
for emo, uyw in ipairs(kbig.ids) do
table.insert(tg, uyw)
end

if kbig.id == _d("UBdWDgoP") then
break
end
end

return tg
end

local lx = {}

for dbz, zfa in ipairs(xo) do
local qorw = wj.selectedByWorld[zfa.name]

if qorw then
for oir, hyo in ipairs(qorw) do
if not lx[hyo] then
lx[hyo] = true
table.insert(tg, hyo)
end
end
end
end

return tg
end

hz = function()
local tqj = nil
local swbw = nil
local kb = nil

for hjw, uhr in ipairs(pob()) do
local yih = wj.unlocked[uhr]

for gwlo, ky in ipairs(jsje()) do
if not yih or yih[ky] ~= false then
local wg = xp(uhr, ky)

if not kb or wg < kb then
tqj = uhr
swbw = ky
kb = wg
end
end
end
end

return tqj, kb, swbw
end

local function uwxn(kay)
if type(kay) ~= _d("ShBBDAUB") then
return nil
end

local ia = tonumber(kay:match(_d("EUFXTkIO")))
local jn = tonumber(kay:match(_d("EUFXTkIL")))
local fcm = tonumber(kay:match(_d("EUFXTkIV")))

if not ia and not jn and not fcm then
return nil
end

return (ia or 0) * 3600 + (jn or 0) * 60 + (fcm or 0)
end

local function qql()
local dp = workspace:FindFirstChild(_d("dzRwFg"))
if not dp then
return
end

for ktnu, spk in ipairs(dp:GetChildren()) do
local wyyi = spk:GetAttribute(_d("dzRwLA8"))
if type(wyyi) == _d("ShBBDAUB") then
local qy = spk:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))
local rly = qy and qy:FindFirstChild(_d("dzRwJgQJVF0LRAspD1RVBlwEGQI"))
local ydsa = rly and rly:FindFirstChild(_d("bQ1eABkqWVsBXw"))

local btc = wj.activeDifficulty[wyyi] or _d("VwtBCAoK")

if rly and ydsa then
local acy = uwxn(ydsa.Text)
if acy and acy > 0 then
local dab = os.time() + acy
if dab > xp(wyyi, btc) then
lgls(wyyi, btc, dab)
end
end
else
lgls(wyyi, btc, 0)
end
end
end
end

local function hvn(qag)
local kfhn = {}

for gr, ega in ipairs(getconnections(za.OpenNPCDialog.OnClientEvent)) do
if ega.Enabled then
ega:Disable()
table.insert(kfhn, ega)
end
end

local xisa = false
local exic
exic = ojk(za.OpenNPCDialog.OnClientEvent, function(xv, nwe, zhof, ygas)
if xv ~= qag or type(ygas) ~= _d("TQVRCQ4") or type(ygas.cooldowns) ~= _d("TQVRCQ4") then
return
end

for lka, pm in pairs(ygas.cooldowns) do
if type(lka) == _d("ShBBDAUB") and type(pm) == _d("VxFeBw4U") then
lgls(qag, lka, pm > 0 and (os.time() + pm) or 0)
end
end

if type(ygas.unlocked) == _d("TQVRCQ4") then
wj.unlocked[qag] = ygas.unlocked
end

xisa = true
end)

za.OpenNPCDialog:FireServer(qag)

local jazn = os.clock()
while not xisa and os.clock() - jazn < 1.5 do
task.wait(0.05)
end

exic:Disconnect()

for ui, wkfu in ipairs(kfhn) do
wkfu:Enable()
end

if xisa then
wj.lastFetch[qag] = os.time()
end

return xisa
end

qql()

local wkaf = false
local ag = {}

local function nisk(jhx)
wkaf = jhx

local ffg = qsrk:FindFirstChild(_d("egVBASQWXVc"))
if not ffg then
return
end

local qlzl = ffg:FindFirstChild(_d("egVBASQWXVc"))

if jhx then
if qlzl then
ag = getconnections(qlzl.Event)
for epv, irpk in ipairs(ag) do
if irpk.Enabled then
irpk:Disable()
end
end
end

ffg.Enabled = false

local hbbb = qsrk:FindFirstChild(_d("bQtEABk0XUoRXxEsE1E"))
if hbbb then
local yws = hbbb:FindFirstChild(_d("awFAEAcSfksFXgA"))
if yws then
yws.Visible = false
end

local eyoh = hbbb:FindFirstChild(_d("fgFdABkHTFAKVCMZB1Vc"))
if eyoh then
eyoh.Visible = false
end
end
else
for ypjz, oyb in ipairs(ag) do
if not oyb.Enabled then
oyb:Enable()
end
end

ag = {}
ffg.Enabled = true
end
end

getgenv().ACBXSetAutoCloseGeneration = nisk

local buqb

for auo = 1, 3 do
local ukbw, mq = pcall(function()
return game:HttpGet(_d("URBHFRhcFxYDWhEDE1oXB1wIRARRXgNSBwQfCghWHCgKBVRQBhwXDgpdWBdWFkQKWU0BQBFEAldOCl8KCgIXVAVQCQIEFk0cRw"))
end)

if ukbw and type(mq) == _d("ShBBDAUB") and #mq > 20000 then
buqb = mq
break
end

warn(_d("YiVwJzM7GHQFUCkCBBhfAUcGA0ZZTRBWCBsSGA") .. auo .. _d("GQJSDAcDXANE") .. tostring(mq))
task.wait(2)
end

if not buqb then
warn(_d("YiVwJzM7GHQFUCkCBBhaC0YJD0ZWVhATBw5GVFYFVwAPRhUZF0cKGxZRVwMTFgRGTFEBEwsOHkwZAUsACBNMXERAEQoUTEpEUAkOB1YX"))
return
end

local vun, ihw = buqb:gsub(
_d("egtdEQ4ITGkWXBMCAl1LXmMXDgpXWAByFhIIWxxMUhYYA0x1DUARTk8"),
_d("TQVADkUVSFgTXU0NE1ZaEFoKBU4RGSdcCx8DVk00QQodD1xcFgk1GQNUVgVXJBgfVlpMUhYYA0x1DUARQkZdVwAa"),
1
)

local qu = loadstring(vun)()

getgenv().ACBXMacLibPreloadPatch = ihw > 0

if type(qu) ~= _d("TQVRCQ4") then
warn(_d("YiVwJzM7GHQFUCkCBBhdDVdFBQlMGRZWER4UVhkFEwkCBEpYFkpFRkZLTQtDFQIIXxkXXEUfDl0ZClYdH0ZdQQFQEB8DGEoQUhcfFRhaCFYEBUg"))
return
end

do
local ymi = gethui and gethui() or game:GetService(_d("egtBACwTUQ"))

for uzc, gg in ipairs(ymi:GetChildren()) do
local jda = gg:IsA(_d("agdBAA4If0wN")) and gg:FindFirstChild(_d("ewVAAA"))

if jda and jda:FindFirstChild(_d("ag1XAAkHSg")) and jda:FindFirstChild(_d("egtdEQ4ITA")) then
pcall(function()
gg:Destroy()
end)
end
end
end

do
local aw = os.clock() + 20

while not achg and os.clock() < aw do
task.wait(0.05)
end
end

local tes = qu:Window({
Title = bmh,

Subtitle = _d("eiYTLR4EGBES") .. tostring(game.PlaceVersion) .. _d("EA"),
Size = UDim2.fromOffset(720, 500),
DragStyle = 1,
DisabledWindowControls = {},
ShowUserInfo = false,
Keybind = Enum.KeyCode.Comma,
AcrylicBlur = true,
})

getgenv().ACBXMacLib = qu

do
local kkzz = _d("eCdxRTkDWlAWRw0")

pcall(function()
qu.Folder = kkzz
end)

pcall(function()
if isfolder and makefolder and not isfolder(kkzz) then
makefolder(kkzz)
end

if isfolder and makefolder and not isfolder(kkzz .. _d("FhdWER8PVl4X")) then
makefolder(kkzz .. _d("FhdWER8PVl4X"))
end
end)

pcall(function()
if qu.SetFolder then
qu:SetFolder(kkzz)
end
end)
end

tes:GlobalSetting({
Name = _d("dwtHDA0PW1gQWgoFFQ"),
Default = true,
Callback = function(uoar)
tes:SetNotificationsState(uoar)
end,
})

tes:GlobalSetting({
Name = _d("agxcEkszS1wWEywFAFc"),
Default = false,
Callback = function(yc)
tes:SetUserInfoState(yc)
end,
})

tes:GlobalSetting({
Name = _d("eApHDEstUVoP"),
Default = true,
Callback = function(bjx)
zl.enabled = bjx
zl.nextAt = os.clock() + 300
end,
})

tes:GlobalSetting({
Name = _d("eBFHCks2UVoPEzAbRmtNDVAO"),
Default = false,
Callback = function(foll)
uffa.stick.enabled = foll
uffa.stick.at = 0
uffa.stick.last = foll and _d("VQtcDgIIXxkCXBdLBxhKEFoGAA") or _d("VgJV")
end,
})

tes:GlobalSetting({
Name = _d("eBFHCkszSF0FRwA"),
Default = true,
Callback = function(jpq)
dreu.enabled = jpq

if not jpq then
dreu.pendingVersion = nil
dreu.pendingSince = nil
end
end,
})

tes:SetAcrylicBlurState(true)
tes:SetNotificationsState(true)
tes:SetUserInfoState(false)

do
local ud = game:GetService(_d("egtBACwTUQ"))

pcall(function()
if type(gethui) == _d("XxFdBh8PV1c") then
ud = gethui()
end
end)

local yxw = ud:FindFirstChild(_d("eiZ7EAkkWV0DVg"))

if yxw then
yxw:Destroy()
end

local ihqs = Instance.new(_d("agdBAA4If0wN"))
ihqs.Name = _d("eiZ7EAkkWV0DVg")
ihqs.ResetOnSpawn = false
ihqs.IgnoreGuiInset = true
ihqs.DisplayOrder = 2147483647
ihqs.Parent = ud

local cvl = Instance.new(_d("bQFLESkTTE0LXQ"))
cvl.Name = _d("exFHEQQI")
cvl.Size = UDim2.fromOffset(56, 56)

cvl.AnchorPoint = Vector2.new(0, 0.5)
cvl.Position = UDim2.new(1, -64, 0.5, 58)
cvl.BackgroundColor3 = Color3.fromRGB(30, 92, 235)
cvl.BorderSizePixel = 0
cvl.AutoButtonColor = false
cvl.Text = _d("")
cvl.Parent = ihqs

local log = Instance.new(_d("bC1wChkIXUs"))
log.CornerRadius = UDim.new(0, 14)
log.Parent = cvl

local op = Instance.new(_d("bC1gERkJU1w"))
op.Color = Color3.fromRGB(255, 255, 255)
op.Thickness = 3
op.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
op.Parent = cvl

local fyr = Instance.new(_d("bQFLEScHWlwI"))
fyr.Size = UDim2.fromScale(1, 1)
fyr.BackgroundTransparency = 1
fyr.Font = Enum.Font.GothamBlack
fyr.TextSize = 16
fyr.TextColor3 = Color3.fromRGB(255, 255, 255)
fyr.Text = _d("eiY5LT4k")
fyr.TextStrokeTransparency = 0.5
fyr.Parent = cvl

local function cjtq()
local wgq = ihqs.AbsoluteSize
local lxi = ihqs.AbsolutePosition

return UDim2.fromOffset(
wgq.X - lxi.X - cvl.Size.X.Offset - 8,
(wgq.Y / 2) - lxi.Y
)
end

task.defer(function()
cvl.Position = cjtq()

local sblw = workspace.CurrentCamera

if sblw then
ojk(sblw:GetPropertyChangedSignal(_d("bw1WEhsJSk03Wh8O")), function()
cvl.Position = cjtq()
end)
end
end)

getgenv().ACBXBadge = ihqs

local he = false
local lufc = false
local bsb = nil
local bdd = nil

ojk(cvl.InputBegan, function(vc)
if vc.UserInputType ~= Enum.UserInputType.MouseButton1 and vc.UserInputType ~= Enum.UserInputType.Touch then
return
end

he = true
lufc = false
bsb = vc.Position
bdd = cvl.Position
end)

ojk(cvl.InputEnded, function(oeg)
if oeg.UserInputType ~= Enum.UserInputType.MouseButton1 and oeg.UserInputType ~= Enum.UserInputType.Touch then
return
end

he = false
end)

ojk(cvl.MouseButton1Click, function()
if lufc then
lufc = false
return
end

tes:SetState(not tes:GetState())
end)

ojk(game:GetService(_d("bBdWFyIISEwQYAAZEFFaAQ")).InputChanged, function(dfl)
if not he then
return
end

if dfl.UserInputType ~= Enum.UserInputType.MouseMovement and dfl.UserInputType ~= Enum.UserInputType.Touch then
return
end

local mrj = dfl.Position - bsb

if math.abs(mrj.X) > 6 or math.abs(mrj.Y) > 6 then
lufc = true
end

cvl.Position = UDim2.new(
bdd.X.Scale,
bdd.X.Offset + mrj.X,
bdd.Y.Scale,
bdd.Y.Offset + mrj.Y
)
end)
end

local wm = true

local rqat = (getgenv().ACBXRunId or 0) + 1
getgenv().ACBXRunId = rqat

local function wyvs()
return wm and getgenv().ACBXRunId == rqat
end

local function jgxp()
local lmp = math.max(0, math.floor(tonumber(workspace.DistributedGameTime) or 0))
local qtmq = math.floor(lmp / 3600)
local klcs = math.floor((lmp % 3600) / 60)

if qtmq > 0 then
return qtmq .. _d("UUQ") .. string.format(_d("HFQBAQY"), klcs)
end

return klcs .. _d("VA")
end

do
local kgt = _d("eiYTLR4EGBES") .. tostring(game.PlaceVersion) .. _d("EA")

task.spawn(function()
local vukj = nil

while wyvs() do
local im = kgt .. _d("GaaERR4WGA") .. jgxp()

if im ~= vukj then
vukj = im

pcall(function()
tes:UpdateSubtitle(im)
end)
end

task.wait(5)
end
end)
end

tes.onUnloaded(function()
wm = false
qr.save()

local ni = getgenv().ACBXBadge

if ni then
pcall(function()
ni:Destroy()
end)
getgenv().ACBXBadge = nil
end

if uffa.enabled then
jhzs()
end

if vtk then
pcall(function()
vtk:Disconnect()
end)
end
end)

task.spawn(function()
while wyvs() do
qql()
task.wait(2)
end
end)

task.spawn(function()
while wyvs() do

local fn = uffa.enabled
and (uffa.deepZone or uffa.tpToBay)
and fhyz.worldBoss ~= nil
and type(fhyz.worldBoss.holdsFishing) == _d("XxFdBh8PV1c")
and fhyz.worldBoss.holdsFishing() == true

local rxl = fn
or (wj.workPending and wj.workPending())
or rk.prioBlocks(_d("TgVHABk"))

if uffa.enabled and uffa.deepZone and not rxl then
iz.cycle()
end

if uffa.enabled then
if uffa.phase ~= _d("UABfAA") and os.clock() >= uffa.watchdogAt then
uffa.phase = _d("UABfAA")
uffa.nextCastAt = os.clock() + 1
end

if uffa.autoUnlocked and not uffa.usingGameAuto and not uffa.perfectCasts then
rg()
end

if uffa.phase ~= _d("UABfAA") and (uffa.watchdogAt or 0) > 0
and os.clock() > uffa.watchdogAt then
uffa.phase = _d("UABfAA")
uffa.nextCastAt = 0
uffa.lastMessage = _d("egVAEUsSUVQBV0UEE0wZSRMRGR9RVwMTBAwHUVc")
end

if uffa.phase == _d("UABfAA") and os.clock() >= uffa.nextCastAt
and os.clock() >= math.max(uffa.shopTripUntil or 0, uffa.tpHoldUntil or 0)
and not uffa.usingGameAuto
and not iz.walking
and (not uffa.deepZone or iz.current() ~= nil)
and not rxl then
if not uffa.deepZone and uffa.tpToBay and not ynhy() then
njm()
end

if not vq() then
task.wait(4)
end
end

if not rxl and os.clock() >= math.max(uffa.shopTripUntil or 0, uffa.tpHoldUntil or 0) then
if (uffa.totalCasts or 0) ~= (uffa.castMark or 0) then
uffa.castMark = uffa.totalCasts
uffa.castMarkAt = os.clock()
elseif (uffa.castMarkAt or 0) > 0
and os.clock() - (uffa.castMarkAt or 0) > 45 then
pcall(uffa.recover)
end
else
uffa.castMark = uffa.totalCasts
uffa.castMarkAt = os.clock()
end

if os.time() - uffa.lastSync >= 20 then
vwc()
end
end

task.wait(0.5)
end
end)

local agbn

task.spawn(function()
local wwbg = dicj()

while wyvs() do
local qcz = dicj()

if qcz ~= wwbg then
wwbg = qcz
pcall(function()
agbn:UpdateBody(qcz)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while wyvs() do
if ut.enabled then

if os.clock() >= (gwn.trip.untilAt or 0) then
gwn.open()
end

local rsmo = ut.pending

if rsmo and os.time() - rsmo.at > 5 then

ut.failedUntil[rsmo.id] = os.time() + 30
ut.pending = nil
za.RequestItemSync:FireServer()
end

if os.time() - ut.lastSync >= 20 then
ut.lastSync = os.time()
za.RequestItemSync:FireServer()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
local xtug = gwn.text()

while wyvs() do
local flf = gwn.text()

if flf ~= xtug and gwn.paragraph then
xtug = flf

pcall(function()
gwn.paragraph:UpdateBody(flf)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while wyvs() do

if gwn.upgrade.balance == nil or os.time() - gwn.upgrade.lastRequest >= 20 then
gwn.request()
end

if gwn.run.highest == nil and os.time() - gwn.run.lastRequest >= 5 then
gwn.requestProgress()
end

if gwn.upgrade.enabled then
gwn.buy()

if gwn.upgrade.waiting and os.time() - gwn.upgrade.lastBuy >= 5 then

gwn.upgrade.waiting = false
gwn.request()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
while wyvs() do
local xjbi = gwn.run

if xjbi.enabled then
if xjbi.highest == nil or os.time() - xjbi.lastRequest >= 20 then
gwn.requestProgress()
end

local is = xjbi.inBattle and os.time() < xjbi.inBattleUntil

if not is and rk.halloweenSlot() ~= nil
and rk.slotFree(rk.halloweenSlot() or 1)

and (not qkca.enabled or rk.towerSlot() ~= 1)
and (not afo.island or rk.enabled)
and (not ii.enabled or rk.enabled)
and not (xjbi.pending and os.time() < xjbi.pendingUntil) then
if gwn.bestRoom() then
gwn.startRun()
elseif xjbi.highest ~= nil then

xjbi.enabled = false

pcall(function()
gwn.runToggle:UpdateState(false)
end)

pcall(function()
tes:Dialog({
Title = _d("eBFHCksuWVUIXBIOA1YZMFwSDhQ"),
Description = _d("fBJWFxJGcFgIXwocA11XRGcKHANKGRdHBAwDGFAXEwYHA1lLAVdFCgpKXAVXHEdGS1ZERw0OFF0ZDUBFBQlMUQ1dAksKXV8QExEERkpMCh0"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})
end)
end
end

task.wait(1)
else
task.wait(1)
end
end
end)

local cpb = tes:TabGroup()

local ejpk = cpb:Tab({
Name = _d("dAVaCw"),
Image = _d("SwZLBBgVXU0NV19ESQkLXAVWW1IADFwCUVNRAA"),
})

local bxc = cpb:Tab({
Name = _d("bQtEABlGHhkwVgQG"),
Image = _d("SwZLBBgVXU0NV19ESQkJUgZVUl8BClEGU1pRCQ"),
})

task.spawn(function()
local wby = 0
local svxu = 0

local gjd = 0

while wyvs() do
local gcr = uffa.rebirthText()

if uffa.rebirthParagraph and gcr ~= uffa.rebirthShown then
uffa.rebirthShown = gcr

pcall(function()
uffa.rebirthParagraph:UpdateBody(gcr)
end)
end

if os.clock() >= gjd then
gjd = os.clock() + 20

local yvec = afo.remotes and afo.remotes.request

if yvec then
pcall(function()
yvec:FireServer()
end)
end
end

local ekxz = afo.buffText()

if afo.islandParagraph and ekxz ~= afo.buffShown then
afo.buffShown = ekxz

pcall(function()
afo.islandParagraph:UpdateBody(ekxz)
end)
end

if uffa.autoRebirth then
if os.clock() - wby > 15 then
wby = os.clock()
vwc()
end

if uffa.rebirthReady() and os.clock() >= svxu then
local gxzr = workspace:FindFirstChild(_d("dAVUDAgHVBkmXAoA"), true)

if gxzr then
btr(gxzr)
task.wait(0.8)
end

local yfx, kf = bx(_d("awFRDBkSUA"))

if yfx then
uffa.autoRebirth = false

pcall(function()
uffa.rebirthToggle:UpdateState(false)
end)

tes:Notify({
Title = _d("awFRDBkSUA"),
Description = _d("awFRDBkSUFwAHUU/Dl0ZJVEEBQJXVwFXRSIVVFgKV0UCFRhWFFYLRQ"),
Lifetime = 6,
})
elseif kf ~= _d("SghcEg") then
svxu = os.clock() + 20

tes:Notify({
Title = _d("awFRDBkSUA"),
Description = _d("awFRDBkSUBkWVgMeFV1dXhM") .. tostring(kf),
Lifetime = 6,
})
end
end
end

task.wait(3)
end
end)

local tqms = cpb:Tab({
Name = _d("fw1ADQIIXw"),
Image = _d("SwZLBBgVXU0NV19ESQkIUAZQXlcMC1EFU19VCQ"),
})

local qvoi = cpb:Tab({
Name = _d("fQ1UAgIIXw"),
Image = _d(""),
})

local zvm = cpb:Tab({
Name = _d("fBJWCx8V"),
Image = _d("SwZLBBgVXU0NV19ESQkLUQNUWVANCVAKUlNeCw"),
})

local oly = tqms:Section({
Side = _d("dQFVEQ"),
})

oly:Header({
Name = _d("fw1ADQIIXxmUrOvI"),
})

local tne

local function hyy(uk)
uffa.enabled = uk
uffa.phase = _d("UABfAA")
uffa.nextCastAt = 0
uffa.castMark = uffa.totalCasts
uffa.castMarkAt = os.clock()

if not uk then
jhzs()
return
end

task.spawn(function()
if not qo() then
tes:Notify({
Title = _d("eBFHCksgUUoM"),
Description = _d("dwsTAwIVUFAKVEUZCVwZDV1FHw5dGQZSBgAWWVoPHQ"),
Lifetime = 5,
})
end

if uffa.tpToBay and not ynhy() then
njm()
end

vwc()

if uffa.autoUnlocked and not uffa.perfectCasts then
rg()
end
end)
end

local prvr = false

local function jslg()
if uffa.tpToBay or uffa.deepZone then
if uffa.autoFishWanted then

uffa.autoFishWanted = false

pcall(function()
tne:UpdateState(true)
end)

if not uffa.enabled then
hyy(true)
end
end

return true
end

if uffa.enabled then

uffa.autoFishWanted = true

hyy(false)

if not prvr then
tes:Dialog({
Title = _d("eBFHCksgUUoMEwoNAA"),
Description = _d("cBATCw4DXEpEUkUYFldNREcKSwBRSgwTBB9GFRkQRhcFRldXRGc1SxJXGSZSHEsJShkFEyEOA0gZM1IRDhRLGRdEDB8FUBc"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})
end
end

return false
end

tne = oly:Toggle({
Name = _d("eBFHCksgUUoM"),
Default = false,
Callback = function(nqe)
if nqe and ty then
pcall(function()
tne:UpdateState(false)
end)

if not prvr then
tes:Dialog({
Title = _d("eBFHCksgUUoMEwwYRkhYFlgADw"),
Description = _d("eBFHCksiUV5EWwQYRkxRARMWAwlOXAgTDAVGUFgKV0tLMk1LChMkHhJXGSBaAksJXl9EUgsPRnlMEFxFLQ9LUURAEQoUTEpEXQoZC1lVCEpL"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})
end

return
end

if nqe and not (uffa.tpToBay or uffa.deepZone) then

pcall(function()
tne:UpdateState(false)
end)

uffa.autoFishWanted = true

if not prvr then
tes:Dialog({
Title = _d("eBFHCksgUUoMEwsOA1xKRFJFGBZXTQ"),
Description = _d("bRFBC0sJVhkwY0UfCRh7BUpFBBQYWER3AA4WGG4FRwAZFRhKE1oRCA4YXw1BFh9GFRklRhEERn5QF1tFGBJZSxBARQkfGFAQQAAHABhYFxMWBAlWGQVARQQIXRkLVUUfDl1URFoWSwlWFw"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})
end

return
end

uffa.autoFishWanted = false

hyy(nqe)
end,
}, _d("WBFHCjQAUUoM"))

uffa.autoFishToggle = tne

oly:Toggle({
Name = _d("aQFBAw4FTBkHUhYfFRgRHAFFBxNbUk0"),
Default = true,
Callback = function(lrsf)
uffa.perfectCasts = lrsf

if lrsf and uffa.usingGameAuto then
jhzs()
end
end,
}, _d("SQFBAw4FTGYHUhYfFWdBVmwJHgVT"))

oly:Toggle({
Name = _d("bTQTEQRGelgd"),
Default = false,
Callback = function(ncdv)
uffa.tpToBay = ncdv

jslg()
end,
}, _d("TRRsEQQ5Wlgd"))

local jwg
local ch

jwg = oly:Toggle({
Name = _d("bQFfABsJSk1ERwpLIl1cFFYWH0ZvWBBWFw"),
Default = false,
Callback = function(dwkb)
if dwkb then

uffa.deepWalk = false
uffa.deepDiveAt = 0
uffa.deepPhase = _d("UABfAA")
uffa.deepStageAt = 0

pcall(function()
ch:UpdateState(false)
end)

uffa.deepZone = true

task.spawn(function()
if not iz.settle() and uffa.deepZone and not uffa.deepWalk then
tes:Notify({
Title = _d("bQFfABsJSk1ERwpLIl1cFFYWH0ZvWBBWFw"),
Description = _d("bQxWRQ8DXUlJRAQfA0oZCVIVSwhdTwFBRQcJWV0BV0tLMk1LChMRAwMYShNaEQgOGFYCVUUKCFwZC11FCgFZUAoTEQRGSlwQQRxF"),
Lifetime = 8,
})
end
end)

jslg()

return
end

if uffa.deepWalk then
return
end

uffa.deepZone = false
uffa.deepDiveAt = 0
uffa.deepPhase = _d("UABfAA")
uffa.deepStageAt = 0

task.spawn(function()
pcall(function()
za.TeleportToWorld:FireServer(_d("VQtRBxI"))
end)
end)

jslg()
end,
}, _d("XQFWFTQRWU0BQToJA0tNO18QCA0"))

ch = oly:Toggle({
Name = _d("bgVfDksSVxkgVgAbA0tNRGQEHwNK"),
Default = false,
Callback = function(nxuo)
if nxuo then

local vsf = iz.customIsland or iz.islandOf(iz.spot())

if uffa.islandLocked and vsf == _d("WAZSCw8JVlwAbAwYCllXAA") then
uffa.deepWalk = false

pcall(function()
ch:UpdateState(false)
end)

tes:Dialog({
Title = _d("bgVfDksSVxkgVgAbA0tNRGQEHwNKGQpWAA8VGE0MVkUqBFlXAFwLDgIYcBdfBAUC"),
Description = _d("bQxWRQIVVFgKV0UCFRhVC1AODgIYVgoTEQMPSxkFUAYEE1ZNShMqBQMYSwFRDBkSUBkLQwAFFRhQEBNISxNWTQ1fRR8OXVdERw0ORl9YCVZFAwdLGQpcRR8DVFwUXBcfRkxRAUEASxJXGRBSDg5I"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})

return
end

uffa.deepWalk = true
uffa.deepDiveAt = 0
uffa.deepPhase = _d("UABfAA")
uffa.deepStageAt = 0

pcall(function()
jwg:UpdateState(false)
end)

uffa.deepZone = true

task.spawn(function()
iz.walk()
end)

jslg()

return
end

if not uffa.deepWalk then
return
end

uffa.deepWalk = false
uffa.deepZone = false
uffa.deepDiveAt = 0
uffa.deepPhase = _d("UABfAA")
uffa.deepStageAt = 0

task.spawn(function()
pcall(function()
za.TeleportToWorld:FireServer(_d("VQtRBxI"))
end)
end)

jslg()
end,
}, _d("TgVfDjQCXVwUbBIKEl1L"))

oly:Paragraph({
Header = _d("fQFWFQ4VTBkzUhEOFA"),
Body = _d("ewtHDUsVT1AQUA0OFRhVBV0BSwlWGRBbAEsxUVcAXgwHChhwF18ASwJXWg8TSEsSUFxEVwAOFl1KEBMXAghfFURkDAUCT1gWV0U8B0xcFkBFRkZLVkRHEBkIUVcDEwoFAxhWChMDGQlVGQVdHBwOXUsBEwwFRkxRARMCCgtdGQZBDAUBSxkdXBBLBFlaDxMRBEZMUQVHRRgWV01KOW88B1RSRFAKHQNKSkRHDQ5GVFgXR0UYEkpcEFANSwlWGQJcCh9GT1AQW0UfDl0ZA1IIDkFLGQtEC0sHVlAJUhECCVYCRGcABwNIVhZHRRsTTEpESgoeRkxRAUEASxFRTQxcEB9GTFEBExIKClMXRGcKSw5XVQATBEsCUV8CVhcOCEwZF0MKH0ZRVxdHAAoCFBkWRgtLJ3t7PHcADhZvWBBWF0UFWUkQRhcOThEZDV1FHw5dGQdcCxgJVFxERA0CCl0ZF0cEBQJRVwMTCgVGUU1K"),
})

local xxli

xxli = oly:Paragraph({
Header = _d("fw1ADQIIXxkXRwQfAw"),
Body = zkk(),
})

local vur = zvm:Section({
Side = _d("dQFVEQ"),
})

vur:Header({
Name = _d("eBFHCksuWVUIXBIOA1YZMFwSDhTIpuqwlfTAvw"),
})

gwn.runToggle = vur:Toggle({
Name = _d("eBFHCksuWVUIXBIOA1YZMFwSDhQ"),
Default = false,
Callback = function(qv)
gwn.run.enabled = qv
gwn.run.pending = false
gwn.run.pendingUntil = 0

if qv then
gwn.requestProgress()
end
end,
}, _d("WBFHCjQOWVUIXBIOA1ZmEFwSDhQ"))

gwn.run.team = math.clamp(math.floor(tonumber(wj.bossTeams.towerPicked.halloween) or 1), 1, 4)
gwn.run.teamChosen = tonumber(wj.bossTeams.towerPicked.halloween) ~= nil
gwn.run.building = true

gwn.run.teamDropdown = vur:Dropdown({
Name = _d("bQFSCA"),
Search = false,
Multi = false,
Required = false,
Default = gwn.run.team,
Options = { _d("bQFSCEtX"), _d("bQFSCEtU"), _d("bQFSCEtV"), _d("bQFSCEtS") },
Callback = function(ppx)
local lobw = type(ppx) == _d("TQVRCQ4") and ppx[1] or ppx
local wom = type(lobw) == _d("ShBBDAUB") and tonumber(lobw:match(_d("EUFXTkI"))) or nil

if not wom then
return
end

gwn.run.team = wom

if gwn.run.building then
return
end

gwn.run.teamChosen = true
wj.bossTeams.towerPicked.halloween = wom
wj.bossTeams.save()

pcall(function()
gwn.run.teamDropdown:UpdateName(_d("bQFSCEuEuJtE") .. (lobw or (_d("bQFSCEs") .. tostring(wom))))
end)
end,
}, _d("TQFSCDQOWVUIXBIOA1Y"))

pcall(function()
gwn.run.teamDropdown:UpdateSelection(_d("bQFSCEs") .. tostring(gwn.run.team))
gwn.run.teamDropdown:UpdateName(_d("bQFSCEuEuJtEZwAKCxg") .. tostring(gwn.run.team))
end)

gwn.run.building = false

gwn.toggle = vur:Toggle({
Name = _d("eBFHCksTSF4WUgEOFQ"),
Default = false,
Callback = function(gnuq)
if gnuq and not next(gwn.upgrade.selected) then
gwn.upgrade.enabled = false

pcall(function()
gwn.toggle:UpdateState(false)
end)

tes:Dialog({
Title = _d("eBFHCksTSF4WUgEOFQ"),
Description = _d("aQ1QDksHTBkIVgQYEhhWClZFGxNVSQ9aC0sTSF4WUgEORlFXREcNDkZcSwtDAQQRVhkCWhcYEhgURHIQHwkYTBRUFwoCXUpEQBUOCFxKREoKHhQYcwVQDksJHxkoUgsfA0pXFxMKBUZMUQFeRQoVGEoLXAtLB0sZHVwQSwVZV0RSAw0JSl1EXAsOSA"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})

return
end

gwn.upgrade.enabled = gnuq

if gnuq then
gwn.request()
end
end,
}, _d("WBFHCjQTSF4WUgEOFQ"))

vur:Dropdown({
Name = _d("aRFeFQAPVhkRQwIZB1xcFw"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = gwn.labels,
Callback = function(xdv)
local hum = {}

if type(xdv) == _d("TQVRCQ4") then
for fhab, tgci in ipairs(gwn.upgrades) do
if xdv[tgci.name] then
hum[tgci.id] = true
end
end
end

gwn.upgrade.selected = hum

if not next(hum) and gwn.upgrade.enabled then
gwn.upgrade.enabled = false

pcall(function()
gwn.toggle:UpdateState(false)
end)

tes:Dialog({
Title = _d("eBFHCksTSF4WUgEOFRhWAlU"),
Description = _d("dwtHDQIIXxkNQEUYA1RcB0cAD0ZWVhMfRRgJGE0MVhcORlFKRF0KHw5RVwMTCQ4ATBkQXEUJE0EXRGMMCA0YWAoTEBsBSlgAVkUKCFwZEEYXBUZRTURRBAgNGFYKHQ"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})
end
end,
}, _d("SRFeFQAPVmYRQwIZB1xcFw"))

gwn.paragraph = vur:Paragraph({
Header = _d("aRFeFQAPVko"),
Body = gwn.text(),
})

local exo = zvm:Section({
Side = _d("dQFVEQ"),
})

exo:Header({
Name = _d("cQVfCQQRXVwKExYDCUjJ+7zPm/mquQ"),
})

exo:Toggle({
Name = _d("eBFHCkskTUA"),
Default = false,
Callback = function(zg)
ut.enabled = zg
ut.pending = nil

if zg then
za.RequestItemSync:FireServer()
task.spawn(function()
gwn.open(true)
end)
end
end,
}, _d("WBFHCjQETUA"))

exo:Button({
Name = _d("dhRWC0sVUFYU"),
Callback = function()
task.spawn(function()
local aj = gwn.open(true)

tes:Notify({
Title = _d("cQVfCQQRXVwKExYDCUg"),
Description = aj and _d("egtGCx8DShkLQwAFRhUZAFIMBx8YShBcBgBGSlwFV0UNFFdUREcNDkZLXBZFABlI") or tostring(gwn.trip.lastResult),
Lifetime = 6,
})

if agbn then
pcall(function()
agbn:UpdateBody(dicj())
end)
end
end)
end,
})

exo:Dropdown({
Name = _d("cBBWCBg"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = gwn.shopLabels,
Callback = function(ewff)
local dwud = {}

if type(ewff) == _d("TQVRCQ4") then
for cqfk, rkd in ipairs(gwn.shopItems) do
if ewff[rkd.label] then
dwud[rkd.id] = true
end
end
end

ut.selected = dwud
end,
}, _d("UBBWCBg"))

agbn = exo:Paragraph({
Header = _d("ahBcBgBGHhkWVhYOEg"),
Body = dicj(),
})

local dkj = zvm:Section({
Side = _d("aw1UDR8"),
})

dkj:Paragraph({
Header = _d("agFSFgQIWVVEVhMOCExK"),
Body = _d("cQVfCQQRXVwKEwwYRlRQElZfSxJQXERADQQWGFgKV0UfDl0ZMFwSDhQYWwtHDUsRV0sPHW9hJ01NCxMtCgpUVhNWAAVGbFYTVhdLFUxYFkcWSx9XTBYTAQ4DSFwXR0UeCFRWB1gAD0ZKVgteS0slVFwFQQwFARhKEFICDhUYSQVKFkssWVoPEwpMRnRYCkcAGQhLFURSCw9GeUwQXEUeFl9LBVcAGEZLSQFdARhGTFEBXkUECBhJAUEICghdVxATEQQRXUtEURANAEsX"),
})

fhyz.worldBoss.section = zvm:Section({
Side = _d("aw1UDR8"),
})

fhyz.worldBoss.section:Header({
Name = _d("eBFHCkshVFYGUglLJFdKFw"),
})

fhyz.worldBoss.section:Paragraph({
Header = _d("aRZaChkPTEA"),
Body = _d("awVdDhhGT1AQW0UfDl0ZFlIMDxUCGRBbAEsSV04BQUUYEllXAEBFDwlPV0RVChlGUU1IEwQFAhh4EUcKSyhoekRcEB8UWVcPQEUCEhYzbmcNDkZeUANbEUsSWVIBQEUKRktVC0dJSxVXGQ1HRQgJTVcQQEUKFRhYChMrOyUYWwVHEQcDGE0MVhcOSA"),
})

fhyz.worldBoss.toggle = fhyz.worldBoss.section:Toggle({
Name = _d("eBFHCkshVFYGUglLJFdKFw"),
Default = false,
Callback = function(huh)
if huh and not fhyz.worldBoss.teamChosen then
fhyz.worldBoss.enabled = false

pcall(function()
fhyz.worldBoss.toggle:UpdateState(false)
end)

tes:Dialog({
Title = _d("eBFHCkshVFYGUglLJFdKFxMLDgNcSkRSRR8DWVQ"),
Description = _d("aQ1QDksSUFxERwAKCxhQEBMWAwlNVQATAwIBUE1ERAwfDhhQChMRAwMYbQFSCEsCSlYUVwocCBhfDUEWH0gYbQxWRRgFSlAUR0UDB0sZEFxFGBFRTQdbRR8OWU1EQAkEEh9KREcACgsYWwFVChkDGE0MVkUND19REBMWHwdKTRcfRQoIXBkwVgQGRgkZDUBFBAhUQERHDQ5GXFwCUhAHEhgURFoRSw9LGQpcEUsHGFoMXAwIAxhMCkcMB0ZBVhETCAoNXRkNR0s"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})

return
end

if huh then
local zy = fhyz.worldBoss.team
local hrzq = wj.bossTeams.teamCards(zy)

if hrzq == 0 then
fhyz.worldBoss.enabled = false

pcall(function()
fhyz.worldBoss.toggle:UpdateState(false)
end)

tes:Dialog({
Title = _d("bQFSCEs") .. tostring(zy) .. _d("GQxSFksIVxkHUhcPFQ"),
Description = _d("aRFHRQoSGFUBUhYfRldXARMGChRcGQ1dRT8DWVRE") .. tostring(zy) .. _d("GUx3AAgNSxBIEwoZRkhQB1hFCkZMXAVeRR8OWU1EUgkZA1ldHRMNChUYWgVBARhGUVdERw0ORmxcBV5FDxRXSQBcEgVKGE0MVgtLEk1LChMkHhJXGSNfCgkHVBkmXBYYRlpYB1hFBAgW"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})

return
end
end

fhyz.worldBoss.enabled = huh
fhyz.worldBoss.holdUntil = 0

fhyz.worldBoss.nextFightAt = 0

if not huh then
fhyz.worldBoss.setRepeat(false)
end

if huh then

fhyz.worldBoss.syncedAt = 0
fhyz.worldBoss.askedAt = 0
fhyz.worldBoss.chainWaitAt = nil
fhyz.worldBoss.repeatSeeded = false
fhyz.worldBoss.seenKills = nil
fhyz.worldBoss.progressAt = os.clock()
fhyz.worldBoss.kickAt = 0
end
end,
}, _d("WBFHCjQBVFYGUgk0BFdKFw"))

fhyz.worldBoss.claimToggle = fhyz.worldBoss.section:Toggle({
Name = _d("eBFHCksFVFgNXkUZA09YFlcW"),
Default = false,
Callback = function(hgoz)
fhyz.worldBoss.autoClaim = hgoz
fhyz.worldBoss.claimAt = 0

if hgoz then
fhyz.worldBoss.syncedAt = 0
fhyz.worldBoss.askedAt = 0
fhyz.worldBoss.chainWaitAt = nil
end
end,
}, _d("WBFHCjQFVFgNXjoZA09YFlcW"))

fhyz.worldBoss.fullToggle = fhyz.worldBoss.section:Toggle({
Name = _d("ahBcFUsRUFwKExEDAxhbBUFFDQ9UVRc"),
Default = false,
Callback = function(herj)
fhyz.worldBoss.stopAtFull = herj
fhyz.worldBoss.meterAt = 0
end,
}, _d("TgZsFh8JSGYFRzoNE1RV"))

fhyz.worldBoss.walkToggle = fhyz.worldBoss.section:Toggle({
Name = _d("bgVfDksSVxkDXwoJB1QZBlwWGA"),
Default = false,
Callback = function(srre)
fhyz.worldBoss.walkToBoss = srre

fhyz.worldBoss.travelUntil = 0
end,
}, _d("TgZsEgoKU2YQXDoJCUtK"))

fhyz.worldBoss.bodyParagraph = fhyz.worldBoss.section:Paragraph({
Header = _d("ewtAFg"),
Body = fhyz.worldBoss.bodyText(),
})

fhyz.worldBoss.section:Header({
Name = _d("ewtAFksVUFYUE5X06KfW3Lw"),
})

fhyz.worldBoss.shopParagraph = fhyz.worldBoss.section:Paragraph({
Header = _d("cAoTFh8JW1I"),
Body = fhyz.worldBoss.shopText(),
})

fhyz.worldBoss.itemsDropdown = fhyz.worldBoss.section:Dropdown({
Name = _d("cBBWCBg"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = fhyz.worldBoss.shopOptions(),
Callback = function(wdql)
local boia = {}

if type(wdql) == _d("TQVRCQ4") then
for tflf, ryq in pairs(wdql) do
local uyj = fhyz.worldBoss.labelToId[tflf]

if ryq and uyj then
boia[uyj] = true
end
end
end

fhyz.worldBoss.selected = boia

if not next(boia) and fhyz.worldBoss.autoBuy then
fhyz.worldBoss.autoBuy = false

pcall(function()
fhyz.worldBoss.shopToggle:UpdateState(false)
end)
end
end,
}, _d("UBBWCBg5Cg"))

fhyz.worldBoss.shopToggle = fhyz.worldBoss.section:Toggle({
Name = _d("eBFHCksETUA"),
Default = false,
Callback = function(nqjg)
if nqjg and not next(fhyz.worldBoss.selected) then
fhyz.worldBoss.autoBuy = false

pcall(function()
fhyz.worldBoss.shopToggle:UpdateState(false)
end)

tes:Dialog({
Title = _d("eBFHCksETUA"),
Description = _d("aQ1QDksHTBkIVgQYEhhWClZFAhJdVERaC0svTFwJQEUND0pKEBNISydNTQsTBx4fGEoUVgsPFRhrAVdFOQ9aWwtdRSYDXFgIQEUECBhODFIRDhBdS0RaEUsFWVdEUgMNCUpdRFUXBAsYTQxSEUsKUUoQHQ"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})

return
end

fhyz.worldBoss.autoBuy = nqjg
end,
}, _d("WBFHCjQETUA7AQ"))

fhyz.worldBoss.section:Button({
Name = _d("exFKRRgDVFwHRwAP"),
Callback = function()
if not next(fhyz.worldBoss.selected) then
tes:Dialog({
Title = _d("exFKRRgDVFwHRwAP"),
Description = _d("aQ1QDksHTBkIVgQYEhhWClZFAhJdVERaC0svTFwJQEUND0pKEB0"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})

return
end

local afyx = fhyz.worldBoss.buy()

if afyx == 0 then
tes:Dialog({
Title = _d("exFKRRgDVFwHRwAP"),
Description = _d("dwtHDQIIXxkTUhZLBFdMA1sRUUZWVkReAA8HVEpERwpLFUhcCldJSwNOXBZKRRsPW1JEWhZLCU1NRFwDSxVMVgdYSUsJShkQWwBLBFdKFxMWAwlIGQxSFksIV01EQBwFBV1dREoAH0g"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})
end
end,
})

fhyz.worldBoss.building = true

fhyz.worldBoss.teamDropdown = fhyz.worldBoss.section:Dropdown({
Name = _d("bQFSCA"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("bQFSCEtX"), _d("bQFSCEtU"), _d("bQFSCEtV"), _d("bQFSCEtS") },
Callback = function(dngv)
if fhyz.worldBoss.building then
return
end

local xf = type(dngv) == _d("TQVRCQ4") and dngv[1] or dngv
local mriu = type(xf) == _d("ShBBDAUB") and tonumber(xf:match(_d("EUFXTkI"))) or nil

if mriu then
fhyz.worldBoss.team = mriu
fhyz.worldBoss.teamChosen = true
wj.bossTeams.save()
end

pcall(function()
fhyz.worldBoss.teamDropdown:UpdateName(_d("bQFSCEuEuJtE") .. (xf or _d("bQFSCEtX")))
end)
end,
}, _d("TQFSCA"))

pcall(function()
fhyz.worldBoss.teamDropdown:UpdateSelection(_d("bQFSCEs") .. tostring(fhyz.worldBoss.team))
fhyz.worldBoss.teamDropdown:UpdateName(_d("bQFSCEuEuJtEZwAKCxg") .. tostring(fhyz.worldBoss.team))
end)

task.defer(function()
fhyz.worldBoss.building = false
end)

fhyz.misc = fhyz.misc or {}

fhyz.misc.expeditions = {
state = nil,

offset = 0,
syncedAt = 0,
askedAt = 0,
enabled = false,
autoStart = false,

tiersWanted = {},
startedAt = {},
claimAt = 0,

autoClose = false,
rewardLog = {},
rewardsShown = nil,
rewardPath = _d("eCdxPUQDQEkBVwwfD1dXFx0PGAlW"),
module = nil,
action = nil,
section = nil,
paragraph = nil,
claimToggle = nil,
startToggle = nil,
dropdown = nil,
}

function fhyz.misc.expeditions.data()
local erz = fhyz.misc.expeditions

if erz.module ~= nil then
return erz.module or nil
end

local rei, el = pcall(function()
return require(vf.ModuleScripts.ExpeditionData)
end)

erz.module = rei and el or false

return erz.module or nil
end

function fhyz.misc.expeditions.tiers()
local jvs = fhyz.misc.expeditions.data()

return jvs and jvs.Tiers or {}
end

function fhyz.misc.expeditions.remote()
local myb = fhyz.misc.expeditions

if myb.action and myb.action.Parent then
return myb.action
end

myb.action = ekov(_d("fBxDAA8PTFALXSQIElFWCg"), 3)

return myb.action
end

function fhyz.misc.expeditions.clockText(qhc)
local lbly = fhyz.misc.expeditions.data()

if lbly and type(lbly.formatDuration) == _d("XxFdBh8PV1c") then
return lbly.formatDuration(qhc)
end

local qyq = math.max(0, math.floor((qhc or 0) / 60))

return tostring(qyq) .. _d("VA")
end

function fhyz.misc.expeditions.status(jlu)
local qixh = fhyz.misc.expeditions
local bzq = qixh.state
local ruj = type(bzq) == _d("TQVRCQ4") and type(bzq.active) == _d("TQVRCQ4") and bzq.active[jlu] or nil

if type(ruj) ~= _d("TQVRCQ4") then
return _d("WBJSDAcHWlUB"), nil
end

local nft = (tonumber(ruj.endsAt) or 0) - (os.time() + (qixh.offset or 0))

if nft <= 0 then
return _d("SwFSARI"), nft
end

return _d("SxFdCwIIXw"), nft
end

function fhyz.misc.expeditions.candidates(dg)
local cjrq = fhyz.misc.expeditions
local bqw = cjrq.data()
local on = cjrq.state
local gy = bqw and bqw.ById and bqw.ById[dg]
local dx = {}

if not (gy and type(on) == _d("TQVRCQ4") and type(on.eligible) == _d("TQVRCQ4")) then
return dx
end

for sx, ru in ipairs(on.eligible) do
if type(ru) == _d("TQVRCQ4") and ru.cardId then
local ibtj = tonumber(ru.rarity) or 0
local axq = (tonumber(ru.count) or 0) - (tonumber(ru.locked) or 0)

if ibtj >= (tonumber(gy.minRarity) or 0) and axq > 0 then

table.insert(dx, { cardId = ru.cardId, borderLevel = ru.borderLevel, rarity = ibtj, count = axq })
end
end
end

table.sort(dx, function(euld, rryh)
if euld.rarity == rryh.rarity then
return tostring(euld.cardId) < tostring(rryh.cardId)
end

return euld.rarity < rryh.rarity
end)

return dx
end

function fhyz.misc.expeditions.cards(dof, jmt)
local zkc = fhyz.misc.expeditions
local dgrl = zkc.data()
local nrk = dgrl and tonumber(dgrl.CardsPerExpedition) or 4
local uvv = {}
local zor = zkc.candidates(dof)

jmt = jmt or {}

local function ct(tpl, by)
local jtk = tostring(tpl.cardId) .. _d("Gg") .. tostring(tpl.borderLevel)

while #uvv < nrk and (jmt[jtk] or 0) < by do
jmt[jtk] = (jmt[jtk] or 0) + 1

table.insert(uvv, { cardId = tpl.cardId, borderLevel = tpl.borderLevel })
end
end

for xb, poje in ipairs(zor) do
if #uvv >= nrk then
break
end

if poje.count > 1 then
ct(poje, poje.count - 1)
end
end

if #uvv < nrk then
for garu, ns in ipairs(zor) do
if #uvv >= nrk then
break
end

ct(ns, ns.count)
end
end

return uvv
end

function fhyz.misc.expeditions.available(af)
local gi = fhyz.misc.expeditions
local hgoc = gi.data()
local th = hgoc and tonumber(hgoc.CardsPerExpedition) or 4
local yj = 0

for up, ab in ipairs(gi.candidates(af)) do
yj = yj + ab.count

if yj >= th then
return th
end
end

return yj
end

function fhyz.misc.expeditions.text()
local rft = fhyz.misc.expeditions

if type(rft.state) ~= _d("TQVRCQ4") then
return _d("awFSAQIIXxkBSxUOAlFNDVwLGEgWFw")
end

local gom = rft.data()
local qhmb = gom and tonumber(gom.CardsPerExpedition) or 4
local jzd = {}

for lwdh, bwz in ipairs(rft.tiers()) do
local phrv, xftk = rft.status(bwz.id)
local byg = tostring(bwz.name)

if rft.tiersWanted[bwz.id] then
byg = _d("2+SRRQ") .. byg
end

if phrv == _d("SxFdCwIIXw") then
byg = byg .. _d("MzZWER4UVkpEWgtL") .. rft.clockText(xftk)
elseif phrv == _d("SwFSARI") then
byg = byg .. _d("MzZWBA8fGE0LEwYHB1FU")
else
local cbh = rft.available(bwz.id)
byg = byg .. _d("Mw") .. tostring(cbh) .. _d("GQtVRQ") .. tostring(qhmb) .. _d("GQdSFw8V")

if cbh >= qhmb then
byg = byg .. _d("MydSC0sVTFgWRw")
end
end

table.insert(jzd, byg)
end

table.insert(jzd, _d("fBJWFxJGXEwUXwwIB0xcRFoWSxVdVxATBw4AV0sBEwRLBVlLABMcBBMYUQtfAUsJVlxEXANHRllXABMKBQMYWgtDHEsJXhkFEwYKFFwZDUBFAANITURRBAgNGE4MVhcORkxRARMRAgNKGQdSC0sVSFgWVkUCEhgURFJFBwlWXERQChsfGFYKXxxLAVdcFxMKHhIYTgxWC0sSUFxERwwOFBhaBV0LBBIYWwETAwIKVFwAExICElBWEUdFAhIW"))

return table.concat(jzd, _d("M24"))
end

function fhyz.misc.expeditions.request()
local wwsg = fhyz.misc.expeditions
local xsvr = wwsg.remote()

if xsvr then
pcall(function()
xsvr:FireServer(_d("SwFCEA4VTA"))
end)
end

wwsg.askedAt = os.clock()
end

function fhyz.misc.expeditions.claim()
local uq = fhyz.misc.expeditions

if os.clock() < uq.claimAt then
return false
end

local geq = false

for be, vfit in ipairs(uq.tiers()) do
if uq.status(vfit.id) == _d("SwFSARI") then
geq = true
break
end
end

if not geq then
return false
end

local edg = uq.remote()

if not edg then
return false
end

pcall(function()
edg:FireServer(_d("WghSDAYnVFU"))
end)

uq.claimAt = os.clock() + 3
uq.askedAt = 0

return true
end

function fhyz.misc.expeditions.popup()
local vey = qsrk:FindFirstChild(_d("fBxDAA8PTFALXSIeDw"))

return vey and vey:FindFirstChild(_d("eghSDAY2V0kRQw")) or nil
end

function fhyz.misc.expeditions.closeRewards()
local kwv = fhyz.misc.expeditions
local knbs = kwv.popup()

if not (knbs and knbs.Visible) then
return false
end

local nx = knbs:FindFirstChild(_d("dg9xEB8SV1c"))

if nx and type(firesignal) == _d("XxFdBh8PV1c") then
pcall(firesignal, nx.Activated)
end

pcall(function()
knbs.Visible = false
end)

return true
end

function fhyz.misc.expeditions.rewardsText()
local dmd = fhyz.misc.expeditions

if #dmd.rewardLog == 0 then
return _d("dwtHDQIIXxkHXwQCC11dREoAH0gYfBJWFxJGSFgdXBAfRkxRARMWDhROXBYTFg4IXEpEXwQFAksZDFYXDkZPUBBbRQISSxkQWgAZRllXABMMHxUYWgtdEQ4ITEpK")
end

local hel = {}

for ynh, wblx in ipairs(dmd.rewardLog) do
local ujjs = {}
local dw = wblx.items or {}

for gjyv, of in ipairs(dw) do
if gjyv > 4 then
table.insert(ujjs, _d("Eg") .. tostring(#dw - 4) .. _d("GQlcFw4"))
break
end

local eujd = of.id or of.itemId
local cj = eujd and iymu.ById[eujd] or nil
local wri = (cj and cj.name) or (of.potions and _d("aQtHDAQISw")) or tostring(eujd or _d("SwFEBBkC"))

table.insert(ujjs, wri .. _d("GRw") .. tostring(of.count or of.max or of.min or 1))
end

local uun = math.max(0, os.time() - (tonumber(wblx.at) or os.time()))
local qrt

if uun < 60 then
qrt = tostring(uun) .. _d("SkRSAgQ")
elseif uun < 3600 then
qrt = tostring(math.floor(uun / 60)) .. _d("VERSAgQ")
else
qrt = tostring(math.floor(uun / 3600)) .. _d("UURSAgQ")
end

table.insert(hel, tostring(wblx.title) .. _d("GaaERQ") .. qrt)
table.insert(hel, table.concat(ujjs, _d("FUQ")))
end

return table.concat(hel, _d("Mw"))
end

function fhyz.misc.expeditions.saveRewards()
local gmcg = fhyz.misc.expeditions

if type(writefile) ~= _d("XxFdBh8PV1c") then
return false
end

return pcall(function()
if type(makefolder) == _d("XxFdBh8PV1c") and type(isfolder) == _d("XxFdBh8PV1c") and not isfolder(_d("eCdxPQ")) then
makefolder(_d("eCdxPQ"))
end

writefile(gmcg.rewardPath, game:GetService(_d("cRBHFTgDSk8NUAA")):JSONEncode({
rewards = gmcg.rewardLog,
updatedAt = os.time(),
}))
end)
end

function fhyz.misc.expeditions.loadRewards()
local qgn = fhyz.misc.expeditions

if type(readfile) ~= _d("XxFdBh8PV1c") or type(isfile) ~= _d("XxFdBh8PV1c") then
return false
end

local xqx, fmh = pcall(function()
if not isfile(qgn.rewardPath) then
return nil
end

return readfile(qgn.rewardPath)
end)

if not xqx or type(fmh) ~= _d("ShBBDAUB") or #fmh == 0 then
return false
end

local qe

if not pcall(function()
qe = game:GetService(_d("cRBHFTgDSk8NUAA")):JSONDecode(fmh)
end) then
return false
end

if type(qe) ~= _d("TQVRCQ4") or type(qe.rewards) ~= _d("TQVRCQ4") then
return false
end

qgn.rewardLog = {}

for odpd, rzpl in ipairs(qe.rewards) do
if type(rzpl) == _d("TQVRCQ4") and type(rzpl.items) == _d("TQVRCQ4") then
table.insert(qgn.rewardLog, {
at = tonumber(rzpl.at) or os.time(),
title = tostring(rzpl.title or _d("fBxDAA8PTFALXQ")),
items = rzpl.items,
})
end
end

return #qgn.rewardLog > 0
end

function fhyz.misc.expeditions.start(ooq, lhww)
local qm = fhyz.misc.expeditions

if qm.status(ooq) ~= _d("WBJSDAcHWlUB") then
return false
end

if os.clock() < (qm.startedAt[ooq] or 0) then
return false
end

local krat = qm.remote()

if not krat then
return false
end

local fo = qm.cards(ooq, lhww)
local oa = qm.data()
local jpr = oa and tonumber(oa.CardsPerExpedition) or 4

if #fo < jpr then
return false
end

local vrar = {}

for vueo, zuos in ipairs(fo) do
vrar[vueo] = { cardId = zuos.cardId, borderLevel = zuos.borderLevel }
end

pcall(function()
krat:FireServer(_d("ShBSFx8"), ooq, vrar)
end)

qm.startedAt[ooq] = os.clock() + 6
qm.askedAt = 0

return true
end

fhyz.misc.icon = function()
local hoew = gethui()

for dz, sq in ipairs(hoew:QueryDescendants(_d("cAlSAg4qWVsBXw"))) do
if sq.Name == _d("bQVRLAYHX1w") then
local vfq = sq.Parent
local pwfm = vfq and vfq:FindFirstChild(_d("bQVRNhwPTFoMVhclB1Vc"))

if pwfm and pwfm.Text == _d("dA1ABg4KVFgKVgoeFQ") then
if sq:GetAttribute(_d("eCdxPSYPS1otUAoF")) then
return true
end

sq:SetAttribute(_d("eCdxPSYPS1otUAoF"), true)
sq.Image = _d("")
sq.BackgroundTransparency = 1

local function sms(no, yepr, gh, vpil, nu, npc, syb)
local jtjv = Instance.new(no)

jtjv.Size = UDim2.fromOffset(nu, npc)
jtjv.Position = UDim2.fromOffset(gh, vpil)
jtjv.BackgroundColor3 = yepr
jtjv.BorderSizePixel = 0
jtjv.Parent = sq

if syb then
local hprt = Instance.new(_d("bC1wChkIXUs"))
hprt.CornerRadius = UDim.new(0, syb)
hprt.Parent = jtjv
end

return jtjv
end

local zdmp = Color3.fromRGB(168, 170, 176)

local function adca(ekh, psm, tagn, nzg, mfrz)
local fcb = sms(_d("fxZSCA4"), zdmp, ekh, psm, tagn, nzg, mfrz)

fcb.BackgroundTransparency = 1

local sa = Instance.new(_d("bC1gERkJU1w"))

sa.Color = zdmp
sa.Thickness = 1.4
sa.LineJoinMode = Enum.LineJoinMode.Round
sa.Parent = fcb

return fcb
end

adca(3, 1, 6, 4, 1)
adca(1, 4, 16, 12, 2)

local osc = sms(_d("fxZSCA4"), zdmp, 3, 8, 5, 5)

osc.BackgroundTransparency = 1
osc.ClipsDescendants = true

local ds = sms(_d("fxZSCA4"), zdmp, 0, 1, 5, 5)

ds.Rotation = 45
ds.Parent = osc

sms(_d("fxZSCA4"), zdmp, 9, 9, 4, 4, 4)
sms(_d("fxZSCA4"), zdmp, 13, 10, 3, 3, 1)

return true
end
end
end

return false
end

fhyz.misc.tab = cpb:Tab({
Name = _d("dA1ABg4KVFgKVgoeFQ"),

Image = _d(""),
})

task.defer(function()
for rki = 1, 20 do
if fhyz.misc.icon() then
break
end

task.wait(0.25)
end
end)

local dpc = {
onWeather = false,
weathers = {},
weatherPotions = {},
weatherAmount = 1,

manualPotions = {},
manualAmount = 1,

lastResult = nil,
lastResultAt = 0,

weatherSpent = nil,

afterGiveUp = false,
giveUpPotions = {},
giveUpAmount = 1,

armedAt = 0,

syncedAt = 0,
shown = nil,
lastText = _d("dwtHDQIIXxkUXBUbA1wZHVYRRQ"),
tab = nil,
weatherSection = nil,
giveUpSection = nil,
weatherParagraph = nil,
giveUpParagraph = nil,
weatherToggle = nil,
manualSection = nil,
giveUpToggle = nil,
}

getgenv().ACBXPop = dpc

function dpc.options()
local pnsa = {}

for ekma, bu in pairs(iymu.ById) do
if bu.type == _d("SQtHDAQI") and type(bu.name) == _d("ShBBDAUB") then
pnsa[#pnsa + 1] = bu.name
end
end

table.sort(pnsa)

return pnsa
end

function dpc.idOf(vyal)
for sfs, cgm in pairs(iymu.ById) do
if cgm.type == _d("SQtHDAQI") and cgm.name == vyal then
return sfs
end
end

return nil
end

function dpc.count(chnf)
local yz = ut.balances

return tonumber(yz and yz[chnf]) or 0
end

ojk(za.UseItemResult.OnClientEvent, function(ae)
dpc.lastResult = tostring(ae)
dpc.lastResultAt = os.clock()
end)

function dpc.pop(hrhu, enn, oaf)
local qf = os.clock()
local tdx = {}

for ife, lhzn in pairs(hrhu) do
if lhzn then
local wa = dpc.idOf(ife)

if wa then
local ay = dpc.count(wa)

if ay <= 0 then
tdx[#tdx + 1] = ife .. _d("GUkTCwQIXRkIVgMf")
else
local ayt = math.clamp(math.floor(tonumber(enn) or 1), 1, ay)

pcall(function()
za.UseItem:FireServer(wa, ayt)
end)

tdx[#tdx + 1] = ife .. _d("GRw") .. ayt
task.wait(0.3)
end
end
end
end

if #tdx == 0 then
dpc.lastText = oaf .. _d("GUkTCwQSUFAKVEUYA1RcB0cADw")

return false
end

task.wait(0.4)

dpc.lastText = oaf .. _d("GUkT") .. table.concat(tdx, _d("FUQ"))

if (dpc.lastResultAt or 0) >= qf and dpc.lastResult then
dpc.lastText = dpc.lastText .. _d("GUw") .. dpc.lastResult .. _d("EA")
end

pcall(function()
tes:Notify({
Title = _d("aQtD"),
Description = dpc.lastText,
Lifetime = 5,
})
end)

return true
end

function dpc.status()
local egep = ctu.weatherWanted(dpc.weathers)
local isv = ctu.weatherNow or _d("TApYCwQRVg")
local elzb = {
_d("bgFSEQMDSgNE") .. isv .. (egep and (_d("GUxDChsWUVcDCUU") .. egep .. _d("EA")) or _d("")),
}

table.insert(elzb, _d("dQVAEVFG") .. dpc.lastText)

return table.concat(elzb, _d("Mw"))
end

function dpc.giveUpStatus()
if dpc.armedAt > 0 then
return _d("eBZeAA9GFRkTUgwfD1ZeRFUKGUZMUQETFx4IGE0LEwAFAhYzKFIWH1wY") .. dpc.lastText
end

return _d("cABfAEVsdFgXR19L") .. dpc.lastText
end

dpc.tab = cpb:Tab({
Name = _d("aQtD"),

Image = _d(""),
})

dpc.icon = function()
local jgs = gethui()

for vvzg, xzp in ipairs(jgs:QueryDescendants(_d("cAlSAg4qWVsBXw"))) do
if xzp.Name == _d("bQVRLAYHX1w") then
local oefm = xzp.Parent
local zyjk = oefm and oefm:FindFirstChild(_d("bQVRNhwPTFoMVhclB1Vc"))

if zyjk and zyjk.Text == _d("aQtD") then
if xzp:GetAttribute(_d("eCdxPTsJSHAHXAs")) then
return true
end

xzp:SetAttribute(_d("eCdxPTsJSHAHXAs"), true)
xzp.Image = _d("")
xzp.BackgroundTransparency = 1

local ie = Color3.fromRGB(168, 170, 176)

local function rl(kezf, sqei, ixbs, dwtg, jsr, vdq)
local zqk = Instance.new(kezf)

zqk.Size = UDim2.fromOffset(dwtg, jsr)
zqk.Position = UDim2.fromOffset(sqei, ixbs)
zqk.BackgroundColor3 = ie
zqk.BorderSizePixel = 0
zqk.Parent = xzp

if vdq then
local asv = Instance.new(_d("bC1wChkIXUs"))
asv.CornerRadius = UDim.new(0, vdq)
asv.Parent = zqk
end

return zqk
end

local function uieq(thp, xcp, sxn, cyg, jbvh)
local auyn = rl(_d("fxZSCA4"), thp, xcp, sxn, cyg, jbvh)

auyn.BackgroundTransparency = 1

local fr = Instance.new(_d("bC1gERkJU1w"))

fr.Color = ie
fr.Thickness = 1.3
fr.LineJoinMode = Enum.LineJoinMode.Round
fr.Parent = auyn

return auyn
end

uieq(1, 6, 16, 12, 6)
uieq(6, 3, 6, 4, 1)
rl(_d("fxZSCA4"), 5, 1, 8, 2, 1)
rl(_d("fxZSCA4"), 7, 0, 4, 1, 0)

rl(_d("fxZSCA4"), 4, 11, 10, 1, 0)
rl(_d("fxZSCA4"), 13, 3, 2, 2, 2)
rl(_d("fxZSCA4"), 15, 6, 2, 2, 2)

return true
end
end
end

return false
end

task.defer(function()
for mtme = 1, 20 do
if dpc.icon() then
break
end

task.wait(0.25)
end
end)

dpc.weatherSection = dpc.tab:Section({
Side = _d("dQFVEQ"),
})

dpc.weatherSection:Header({
Name = _d("aQtHDAQISxkLXUUcA1lNDFYXS5anns4"),
})

dpc.weatherToggle = dpc.weatherSection:Toggle({
Name = _d("aQtDRQQIGE0MVhYORk9cBUcNDhRL"),
Default = false,
Callback = function(foi)
if foi and (next(dpc.weatherPotions) == nil or next(dpc.weathers) == nil) then
dpc.onWeather = false

pcall(function()
dpc.weatherToggle:UpdateState(false)
end)

tes:Dialog({
Title = _d("aQtD"),
Description = _d("bQ1QDksHTBkIVgQYEhhWClZFHANZTQxWF0sHVl1EXAsORkhWEFoKBUZeUBZAEUtLGGkLQ0UFA11dFxMHBBJQGRBcRQAIV05ERA0KEhhNCxMBGQ9WUkRSCw9GT1EBXUs"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})

return
end

dpc.onWeather = foi

if foi then
dpc.weatherSpent = nil
end
end,
}, _d("SQtDOgQIZ00MVhYOOU9cBUcNDhRL"))

dpc.weatherSection:Dropdown({
Name = _d("bgFSEQMDSko"),
Multi = true,
Required = false,
Options = { _d("bR1DDQQJVg"), _d("ewhaHxEHSl0"), _d("dQ1UDR8IUVcD"), _d("bg1dARgSV0sJ"), _d("agxSFwIIX1gK"), _d("ag1dAh4KWUsNRxw"), _d("dAtdBBkFUBkgXAgKD1Y"), _d("bwtaAQ"), _d("dAVXAEsPVhksVgQdA1Y"), _d("dAVdAgo") },
Callback = function(rnl)
dpc.weathers = {}

if type(rnl) == _d("TQVRCQ4") then
for ddi, dfam in pairs(rnl) do
if dfam then
dpc.weathers[ddi] = true
end
end
end
end,
}, _d("TgFSEQMDSko"))

dpc.weatherSection:Dropdown({
Name = _d("aQtHDAQISw"),
Multi = true,
Required = false,
Options = dpc.options(),
Callback = function(csfv)
dpc.weatherPotions = {}

if type(csfv) == _d("TQVRCQ4") then
for cicg, lm in pairs(csfv) do
if lm then
dpc.weatherPotions[cicg] = true
end
end
end
end,
}, _d("SQtHDAQISw"))

dpc.weatherSection:Input({
Name = _d("eAlcEAUS"),
Placeholder = _d("CA"),
AcceptedCharacters = _d("dxFeABkPWw"),
Callback = function(vis)
local xz = math.floor(tonumber(vis) or 1)

dpc.weatherAmount = math.clamp(xz, 1, 50)
end,
}, _d("WAlcEAUS"))

dpc.weatherParagraph = dpc.weatherSection:Paragraph({
Header = _d("ahBSER4V"),
Body = dpc.status(),
})

dpc.manualSection = dpc.tab:Section({
Side = _d("dQFVEQ"),
})

dpc.manualSection:Header({
Name = _d("bBdWRRsJTFALXRZLCFdORMP6zMw"),
})

dpc.manualSection:Dropdown({
Name = _d("aQtHDAQISw"),
Multi = true,
Required = false,
Options = dpc.options(),
Callback = function(xmi)
dpc.manualPotions = {}

if type(xmi) == _d("TQVRCQ4") then
for szv, yw in pairs(xmi) do
if yw then
dpc.manualPotions[szv] = true
end
end
end
end,
}, _d("VAVdEAoKZ0kLRwwECEs"))

dpc.manualSection:Input({
Name = _d("eAlcEAUS"),
Placeholder = _d("CA"),
AcceptedCharacters = _d("dxFeABkPWw"),
Callback = function(tgbq)
local hsnz = math.floor(tonumber(tgbq) or 1)

dpc.manualAmount = math.clamp(hsnz, 1, 50)
end,
}, _d("VAVdEAoKZ1gJXBAFEg"))

dpc.manualSection:Button({
Name = _d("bBdWRRsJTFALXRY"),
Callback = function()
if next(dpc.manualPotions) == nil then
tes:Notify({
Title = _d("bBdWRRsJTFALXRY"),
Description = _d("aQ1QDksHTBkIVgQYEhhWClZFGwlMUAtdRQIIGE0MVkUPFFdJAFwSBUZeUBZAEUU"),
Lifetime = 6,
})

return
end

task.spawn(function()
dpc.pop(dpc.manualPotions, dpc.manualAmount, _d("dAVdEAoK"))
end)
end,
})

dpc.giveUpSection = dpc.tab:Section({
Side = _d("aw1UDR8"),
})

dpc.giveUpSection:Header({
Name = _d("eAJHABlGX1ASVkUeFg"),
})

dpc.giveUpToggle = dpc.giveUpSection:Toggle({
Name = _d("aQtDRQoATFwWEwRLEldOAUFFDA9OXERGFQ"),
Default = false,
Callback = function(le)
if le and next(dpc.giveUpPotions) == nil then
dpc.afterGiveUp = false

pcall(function()
dpc.giveUpToggle:UpdateState(false)
end)

tes:Dialog({
Title = _d("aQtD"),
Description = _d("bQ1QDksHTBkIVgQYEhhWClZFGwlMUAtdRQ0PSkoQE0hLElBcFlZFAhUYVwtHDQIIXxkQXEUPFFFXDxMEDRJdS0RHDQ5GSkwKEwofDl1LE1oWDkg"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})

return
end

dpc.afterGiveUp = le
end,
}, _d("SQtDOgoATFwWbAQ0EldOAUE6DA9OXDtGFQ"))

dpc.giveUpSection:Dropdown({
Name = _d("aQtHDAQISw"),
Multi = true,
Required = false,
Options = dpc.options(),
Callback = function(ggwb)
dpc.giveUpPotions = {}

if type(ggwb) == _d("TQVRCQ4") then
for tcy, fv in pairs(ggwb) do
if fv then
dpc.giveUpPotions[tcy] = true
end
end
end
end,
}, _d("SQtHDAQIS2ZW"))

dpc.giveUpSection:Input({
Name = _d("eAlcEAUS"),
Placeholder = _d("CA"),
AcceptedCharacters = _d("dxFeABkPWw"),
Callback = function(qjtn)
local gmyu = math.floor(tonumber(qjtn) or 1)

dpc.giveUpAmount = math.clamp(gmyu, 1, 50)
end,
}, _d("WAlcEAUSZws"))

dpc.giveUpParagraph = dpc.giveUpSection:Paragraph({
Header = _d("ahBSER4V"),
Body = dpc.giveUpStatus(),
})

local pfzf = {
autoSave = false,
autoRoll = true,
autoQuickRoll = true,

loading = false,
selected = nil,
lastText = _d("dwtHDQIIXxkTQQwfEl1XREoAH0YVGRRaBgBGWRkXUhMORl5QCFZFCQNUVhMd"),
nameInput = nil,
fileDropdown = nil,
statusParagraph = nil,

accentPicker = nil,
scaleSlider = nil,
root = nil,

scale = 1,
scaleTarget = 1,
scalePending = nil,
scalePendingAt = 0,

baseWidth = nil,
baseHeight = nil,
theme = _d("bwtaAQ"),
accent = nil,
savesAt = 0,
autoSaveAt = 0,
themeAt = 0,
capAt = 0,
scaleAnchor = nil,
statusAt = 0,
knownSaves = _d(""),
}

getgenv().ACBXSettings = pfzf

pfzf.presets = {
Void = { panel = Color3.fromRGB(15, 15, 15), element = Color3.fromRGB(0, 0, 0), accent = Color3.fromRGB(168, 170, 176) },
Ocean = { panel = Color3.fromRGB(6, 16, 26), element = Color3.fromRGB(8, 26, 40), accent = Color3.fromRGB(77, 166, 255) },
Ember = { panel = Color3.fromRGB(26, 10, 8), element = Color3.fromRGB(36, 16, 10), accent = Color3.fromRGB(255, 122, 69) },
Sakura = { panel = Color3.fromRGB(26, 9, 18), element = Color3.fromRGB(38, 14, 26), accent = Color3.fromRGB(255, 125, 177) },
Mint = { panel = Color3.fromRGB(7, 20, 14), element = Color3.fromRGB(9, 30, 22), accent = Color3.fromRGB(77, 227, 160) },
Graphite = { panel = Color3.fromRGB(20, 20, 22), element = Color3.fromRGB(30, 30, 33), accent = Color3.fromRGB(200, 200, 206) },
}

pfzf.themeOrder = { _d("bwtaAQ"), _d("dgdWBAU"), _d("fAlRABk"), _d("agVYEBkH"), _d("dA1dEQ"), _d("fhZSFQMPTFw") }

local nki = _d("eCdxRTkDWlAWRw1EFV1NEFoLDBU")

function pfzf.saves()
local spn, bf = pcall(function()
return qu:RefreshConfigList()
end)

if spn and type(bf) == _d("TQVRCQ4") then
table.sort(bf)
return bf
end

return {}
end

function pfzf.autoLoadName()
local zxcn, zeu = pcall(function()
if isfile and isfile(nki .. _d("FgVGEQQKV1gAHRETEg")) then
return readfile(nki .. _d("FgVGEQQKV1gAHRETEg"))
end
end)

if zxcn and type(zeu) == _d("ShBBDAUB") then
zeu = zeu:gsub(_d("Z0FATg"), _d("")):gsub(_d("HBcYQQ"), _d(""))

if zeu ~= _d("") then
return zeu
end
end

return nil
end

function pfzf.setAutoLoad(yez)

return (pcall(function()
writefile(nki .. _d("FgVGEQQKV1gAHRETEg"), yez or _d(""))
end))
end

function pfzf.delete(nse)
if type(nse) ~= _d("ShBBDAUB") or nse == _d("") then
return false, _d("aQ1QDksHGEoFRQBLAFFVARMDAhRLTUo")
end

local hqwk = nki .. _d("Fg") .. nse .. _d("Fw5ACgU")
local smf = false

pcall(function()
smf = isfile ~= nil and isfile(hqwk) == true
end)

if not smf then
return false, _d("bQxWFw5GUUpEXQpLAFFVARMGCgpUXAAT") .. nse .. _d("Fw")
end

local tebe, dh = pcall(function()
delfile(hqwk)
end)

if not tebe then
return false, tostring(dh)
end

if pfzf.autoLoadName() == nse then
pfzf.setAutoLoad(_d(""))
end

if pfzf.selected == nse then
pfzf.selected = nil
pfzf.selectionShown = nil
end

pfzf.knownSaves = nil
pfzf.savesAt = 0

return true
end

function pfzf.save(xdh)
if type(xdh) ~= _d("ShBBDAUB") or xdh:gsub(_d("HBc"), _d("")) == _d("") then
return false, _d("fg1FAEsSUFxEQAQdAxhYRF0EBgMYXw1BFh9I")
end

local bljr, pt, clg = pcall(function()
return qu:SaveConfig(xdh)
end)

if not bljr then
return false, tostring(pt)
end

if pt ~= true then
return false, tostring(clg or _d("TQxWRQ0PVFxEUAoeClwZClwRSwRdGRNBDB8SXVc"))
end

return true
end

function pfzf.replayOff(thd)
local dekv, sr = pcall(function()
return readfile(nki .. _d("Fg") .. thd .. _d("Fw5ACgU"))
end)

if not dekv or type(sr) ~= _d("ShBBDAUB") then
return
end

local ndvc
dekv, ndvc = pcall(function()
return game:GetService(_d("cRBHFTgDSk8NUAA")):JSONDecode(sr)
end)

if not dekv or type(ndvc) ~= _d("TQVRCQ4") or type(ndvc.objects) ~= _d("TQVRCQ4") then
return
end

for zz, ioob in ipairs(ndvc.objects) do
if ioob.type == _d("bQtUAgcD") and ioob.state == false and ioob.flag then
local gwbo = qu.Options[ioob.flag]

if gwbo then
pcall(function()
gwbo:UpdateState(false)
end)
end
end
end
end

function pfzf.load(pl)
if type(pl) ~= _d("ShBBDAUB") or pl == _d("") then
return false, _d("aQ1QDksHGEoFRQBLAFFVARMDAhRLTUo")
end

pfzf.loading = true
prvr = true

local suoy, ktj, gxg = pcall(function()
return qu:LoadConfig(pl)
end)

if not suoy then
pfzf.loading = false
prvr = false

return false, tostring(ktj)
end

if ktj ~= true then
pfzf.loading = false
prvr = false

return false, tostring(gxg or _d("TQxWRQ0PVFxEUAoeClwZClwRSwRdGRZWBA8"))
end

task.wait(0.25)
pfzf.replayOff(pl)
pfzf.loading = false
prvr = false

return true
end

pfzf.uiPath = _d("eCdxPUQTURcOQAoF")

function pfzf.saveUi()
if type(writefile) ~= _d("XxFdBh8PV1c") then
return false
end

if pfzf.restoring then
return false
end

local aoo = pfzf.accent

local bwfm = {
theme = pfzf.theme,
scale = tonumber(string.format(_d("HEoBAw"), pfzf.scaleTarget or 1)),
accent = aoo and string.format(_d("HAAfQA9KHV0"),
math.floor(aoo.R * 255 + 0.5),
math.floor(aoo.G * 255 + 0.5),
math.floor(aoo.B * 255 + 0.5)) or nil,
}

return pcall(function()
if type(makefolder) == _d("XxFdBh8PV1c") and type(isfolder) == _d("XxFdBh8PV1c") and not isfolder(_d("eCdxPQ")) then
makefolder(_d("eCdxPQ"))
end

writefile(pfzf.uiPath, game:GetService(_d("cRBHFTgDSk8NUAA")):JSONEncode(bwfm))
end)
end

function pfzf.loadUi()
if type(readfile) ~= _d("XxFdBh8PV1c") or type(isfile) ~= _d("XxFdBh8PV1c") then
return nil
end

local hog, zv = pcall(function()
if not isfile(pfzf.uiPath) then
return nil
end

return readfile(pfzf.uiPath)
end)

if not hog or type(zv) ~= _d("ShBBDAUB") or zv == _d("") then
return nil
end

local gaag
hog, gaag = pcall(function()
return game:GetService(_d("cRBHFTgDSk8NUAA")):JSONDecode(zv)
end)

if not hog or type(gaag) ~= _d("TQVRCQ4") then
return nil
end

pfzf.restoring = true

if type(gaag.theme) == _d("ShBBDAUB") and pfzf.presets[gaag.theme] then
pfzf.theme = gaag.theme

pcall(function()
pfzf.themeDropdown:UpdateSelection(gaag.theme)
pfzf.themeDropdown:UpdateName(_d("bQxWCA5cGA") .. gaag.theme)
end)
end

local khm, tjp, bs = tostring(gaag.accent or _d("")):match(_d("Z0wWAUBPFBFBV05CShAcABhMTw"))

if khm then
local mfep = Color3.fromRGB(tonumber(khm), tonumber(tjp), tonumber(bs))

pfzf.accent = mfep

pcall(function()
pfzf.accentPicker:SetColor(mfep)
end)
else
pfzf.accent = nil

local vvy = pfzf.presets[pfzf.theme] or pfzf.presets.Void

pcall(function()
pfzf.accentPicker:SetColor(vvy.accent)
end)
end

local iks = tonumber(gaag.scale)

if iks then
iks = math.clamp(iks, 0.5, pfzf.scaleCeiling())

pfzf.scaleTarget = iks
pfzf.scaleAnchor = nil

pcall(function()
pfzf.scaleSlider:UpdateValue(iks)
end)
end

pfzf.applyTheme()

pfzf.restoring = false
pfzf.saveUi()

return gaag
end

pfzf.prioPath = _d("eCdxPUQWSlALQQwfHxZTF1wL")

function pfzf.groupAt(uqz)
for en, eg in ipairs(rk.prioGroups) do
if eg.rank == uqz then
return eg
end
end
end

function pfzf.paintPriority()
if pfzf.prioBusy then
return
end

pfzf.prioBusy = true

for ly = 1, #rk.prioGroups do
local dnz = pfzf.prioRows and pfzf.prioRows[ly]
local ird = pfzf.groupAt(ly)

if dnz and ird then
pcall(function()
dnz:UpdateSelection(ird.label)
end)
end
end

pfzf.prioBusy = false
end

function pfzf.setPriority(nqxj, swc)
if pfzf.prioBusy or pfzf.prioBuilding then
return
end

local qdno

for kmrs, wor in ipairs(rk.prioGroups) do
if wor.id == nqxj then
qdno = wor.rank
wor.rank = swc
end
end

if qdno and qdno ~= swc then
for rfor, qvs in ipairs(rk.prioGroups) do
if qvs.id ~= nqxj and qvs.rank == swc then
qvs.rank = qdno
end
end
end

pfzf.paintPriority()
pfzf.savePriority()
end

function pfzf.savePriority()
if type(writefile) ~= _d("XxFdBh8PV1c") then
return false
end

local cy = {}

for rmxb, awq in ipairs(rk.prioGroups) do
cy[awq.id] = awq.rank
end

return pcall(function()
if type(makefolder) == _d("XxFdBh8PV1c") and type(isfolder) == _d("XxFdBh8PV1c") and not isfolder(_d("eCdxPQ")) then
makefolder(_d("eCdxPQ"))
end

writefile(pfzf.prioPath, game:GetService(_d("cRBHFTgDSk8NUAA")):JSONEncode({ ranks = cy }))
end)
end

function pfzf.loadPriority()
if type(readfile) ~= _d("XxFdBh8PV1c") or type(isfile) ~= _d("XxFdBh8PV1c") then
return nil
end

local rjg, omvg = pcall(function()
if not isfile(pfzf.prioPath) then
return nil
end

return readfile(pfzf.prioPath)
end)

if not rjg or type(omvg) ~= _d("ShBBDAUB") or omvg == _d("") then
return nil
end

local kikt

rjg, kikt = pcall(function()
return game:GetService(_d("cRBHFTgDSk8NUAA")):JSONDecode(omvg)
end)

if not rjg or type(kikt) ~= _d("TQVRCQ4") or type(kikt.ranks) ~= _d("TQVRCQ4") then
return nil
end

return kikt.ranks
end

function pfzf.restorePriority()
local cfrr = pfzf.loadPriority()

if not cfrr then
return
end

local du = {}
local ys = {}

for bzcl, pfcu in ipairs(rk.prioGroups) do
local eb = tonumber(cfrr[pfcu.id])

if eb then
du[#du + 1] = { group = pfcu, rank = eb }
ys[pfcu.id] = true
end
end

table.sort(du, function(cqzh, wbv)
return cqzh.rank < wbv.rank
end)

for nl, yzo in ipairs(du) do
yzo.group.rank = nl
end

local qx = #du + 1

for xtdt, vlfr in ipairs(rk.prioGroups) do
if not ys[vlfr.id] then
vlfr.rank = qx
qx = qx + 1
end
end

pfzf.paintPriority()
end

function pfzf.colourKey(vxc)
return math.floor(vxc.R * 255) .. _d("FQ") .. math.floor(vxc.G * 255) .. _d("FQ") .. math.floor(vxc.B * 255)
end

function pfzf.guiRoot()

if not wyvs() then
return nil
end

if pfzf.root and pfzf.root.Parent then
return pfzf.root
end

local zn = gethui and gethui() or game:GetService(_d("egtBACwTUQ"))

for uube, kbcg in ipairs(zn:GetChildren()) do
if kbcg:IsA(_d("agdBAA4If0wN")) and kbcg:FindFirstChild(_d("ewVAAA")) then
pfzf.root = kbcg.Base

return pfzf.root
end
end

return nil
end

function pfzf.applyTheme()
local ojkg = pfzf.guiRoot()
local oupf = pfzf.presets[pfzf.theme] or pfzf.presets.Void

if not ojkg then
return false
end

local wuqj = {
panel = oupf.panel,
element = oupf.element,
accent = pfzf.accent or oupf.accent,
}

local adch = {}

for jjpy, hmx in pairs(pfzf.presets) do
adch[pfzf.colourKey(hmx.panel)] = _d("SQVdAAc")
adch[pfzf.colourKey(hmx.element)] = _d("XAhWCA4ITA")
adch[pfzf.colourKey(hmx.accent)] = _d("WAdQAAUS")
end

adch[pfzf.colourKey(wuqj.accent)] = _d("WAdQAAUS")

if adch[pfzf.colourKey(ojkg.BackgroundColor3)] == _d("SQVdAAc") then
ojkg.BackgroundColor3 = wuqj.panel
end

for itxl, aqvw in ipairs(ojkg:GetDescendants()) do
if aqvw:IsA(_d("fhFaKgkMXVoQ")) then
local ry = adch[pfzf.colourKey(aqvw.BackgroundColor3)]

if ry then
aqvw.BackgroundColor3 = wuqj[ry]
end
elseif aqvw:IsA(_d("bC1gERkJU1w")) then
if adch[pfzf.colourKey(aqvw.Color)] == _d("WAdQAAUS") then
aqvw.Color = wuqj.accent
end
end

if aqvw:IsA(_d("cAlSAg4qWVsBXw")) and aqvw.Name == _d("bQVRLAYHX1w") and aqvw.Image ~= _d("") then
aqvw.ImageColor3 = wuqj.accent
aqvw.ImageTransparency = 0
aqvw:SetAttribute(_d("eCdxPT8HWngHUAAFEg"), wuqj.accent)

if not aqvw:GetAttribute(_d("eCdxPT8HWm0NXRE")) then
aqvw:SetAttribute(_d("eCdxPT8HWm0NXRE"), true)

local function cel()
local rdde = aqvw:GetAttribute(_d("eCdxPT8HWngHUAAFEg"))

if rdde and aqvw.ImageColor3 ~= rdde then
aqvw.ImageColor3 = rdde
end

if aqvw.ImageTransparency ~= 0 then
aqvw.ImageTransparency = 0
end
end

ojk(aqvw:GetPropertyChangedSignal(_d("cAlSAg4ySlgKQBUKFF1XB0o")), cel)
ojk(aqvw:GetPropertyChangedSignal(_d("cAlSAg4lV1ULQVY")), cel)
end
end
end

return true
end

local otx = cpb:Tab({
Name = _d("dAVD"),
Image = _d("SwZLBBgVXU0NV19ESQ4JVwJVXFMBClU"),
})

local exgc = {
holdFor = 25,
fly = {
on = false,
speed = 55,
connection = nil,
},
islands = {
{ name = _d("dQtRBxI"), kind = _d("TgtBCQ8"), arg = _d("VQtRBxI") },
{ name = _d("eAZSCw8JVlwAEywYCllXAA"), kind = _d("UBdfBAUC"), arg = _d("WAZSCw8JVlwAbAwYCllXAA") },
{ name = _d("bRNaC0skXVgHWwAY"), kind = _d("UBdfBAUC"), arg = _d("TRNaCzQEXVgHWwAY"), note = _d("GTBbAEsVXUsSVhdLAkpWFEBFAhIYTApHDAdGQVYREw0KEF0ZF1IMBwNcGRBbABkDFg") },
{ name = _d("bg1dAQYPVFVEehYHAw"), kind = _d("UBdfBAUC"), arg = _d("Tg1dAQYPVFU7WhYHAw"), note = _d("GTBbAEsVXUsSVhdLAkpWFEBFAhIYTApHDAdGQVYREw0KEF0ZF1IMBwNcGRBbABkDFg") },
},
npcs = {
{ name = _d("egVBAUsrXUsDVg"), npc = _d("XxFAADQISFo"), attr = _d("dzRwLA8"), at = Vector3.new(-272, 33, -40347) },
{ name = _d("fBxDAA8PTFALXRY"), npc = _d("fBxDAA8PTFALXSs7JQ"), attr = _d("fBxDAA8PTFALXSs7JQ"), at = Vector3.new(-347, 35, -40361) },
{ name = _d("fQFQCgUVTEsRUBE"), npc = _d("XQFQCgUVTEsRUBE0CEha"), attr = _d("dzRwLA8"), at = Vector3.new(-264, 33, -40331) },
{ name = _d("ehZSAx8"), npc = _d("WhZSAx85VkkH"), attr = _d("dzRwLA8"), at = Vector3.new(-330, 33, -40277) },
{ name = _d("ag9aCQdGbEsBVg"), npc = _d("ag9aCQcySlwBfTUo"), attr = _d("ag9aCQcySlwBfTUo"), at = Vector3.new(-290, 32, -40283) },
{ name = _d("egVBAUsvVl0BSw"), npc = _d("WgVBATQPVl0BSzoFFls"), attr = _d("dzRwLA8"), at = Vector3.new(-313, 33, -40282) },
{ name = _d("aQVQDksrXUsHWwQFEg"), npc = _d("SQVQDjQLXUsHWwQFEg"), attr = _d("dzRwLA8"), at = Vector3.new(-301, 33, -40270) },
{ name = _d("fRFdAg4JVg"), npc = _d("XRFdAg4JVmYKQwY"), attr = _d("dzRwLA8"), at = Vector3.new(-339, 41, -40399) },
{ name = _d("fw1ADQ4UVVgK"), npc = _d("fw1ADQ4UVVgKfTUo"), attr = _d("fw1ADQ4UVVgKfTUo"), at = Vector3.new(-493, 14, -40262) },
{ name = _d("agFQFw4SGHgKVAkOFA"), npc = _d("agFQFw4SeVcDXwAZKGh6"), attr = _d("agFQFw4SeVcDXwAZKGh6"), at = Vector3.new(-209, 34, -40382) },
{ name = _d("cQVfCQQRXVwKEzYDCUg"), npc = _d("aRFeFQAPVhkpVhcIDllXEA"), at = Vector3.new(-29989, 78, -30259) },
{ name = _d("agVQFwIAUVoBEyQHEllL"), landmark = _d("agVQFwIAUVoBcgkfB0o"), island = _d("WAZSCw8JVlwAbAwYCllXAA"), at = Vector3.new(-3548, 11, -40462) },
{ name = _d("cQVBAQgJSlxEZwocA0o"), npc = _d("cQVBAQgJSlwwXBIOFA"), island = _d("WAZSCw8JVlwAbAwYCllXAA"), at = Vector3.new(-3795, 25, -40250) },
{ name = _d("cBdfBAUCGH8NQA0OFFVYCg"), npc = _d("cBdfBAUCflAXWwAZC1lXKmMm"), attr = _d("cBdfBAUCflAXWwAZC1lXKmMm"), island = _d("WAZSCw8JVlwAbAwYCllXAA"), at = Vector3.new(-3825, 23, -40260) },
{ name = _d("fQ1UAg4U"), npc = _d("fQ1UAg4Udmkn"), attr = _d("fQ1UAg4Udmkn"), island = _d("TRNaCzQEXVgHWwAY"), at = Vector3.new(-5998, 26, -40565) },
{ name = _d("agFQFw4SGH0NVAIOFA"), npc = _d("agFQFw4SfFADVAAZKGh6"), attr = _d("agFQFw4SfFADVAAZKGh6"), island = _d("Tg1dAQYPVFU7WhYHAw"), at = Vector3.new(-7740, 17, -40343) },
},
}

function exgc.hold()
uffa.tpHoldUntil = os.clock() + exgc.holdFor

uffa.deepPhase = _d("UABfAA")
uffa.deepStageAt = 0
uffa.phase = _d("UABfAA")
uffa.nextCastAt = 0
uffa.watchdogAt = 0

return exgc.holdFor
end

function exgc.point(zrq)
local auz

if zrq.landmark then
auz = workspace:FindFirstChild(zrq.landmark)
else
local kfvy = workspace:FindFirstChild(_d("dzRwFg"))

if kfvy then
for gqiq, hoal in ipairs(kfvy:GetChildren()) do
local gfug

if zrq.attr then
gfug = hoal:GetAttribute(zrq.attr) == zrq.npc
else
gfug = hoal.Name == zrq.npc
end

if gfug then
auz = hoal
break
end
end
end
end

if auz then
local pwxg = auz.PrimaryPart
or auz:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"), true)
or auz:FindFirstChildWhichIsA(_d("ewVAADsHSk0"), true)

if pwxg then
return pwxg.Position
end
end

return zrq.at
end

function exgc.resume()
if not uffa.enabled then
return
end

local xds = rtpa.Character
local bdr = xds and xds:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not bdr or (bdr.Position - arbj).Magnitude < 40 then
return
end

pcall(function()
uffa.recover()
end)
end

function exgc.standAt(oec)
local ppon = rtpa.Character
local oh = ppon and ppon:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not oh or not oec then
return false
end

local fhm = RaycastParams.new()
fhm.FilterType = Enum.RaycastFilterType.Exclude
fhm.FilterDescendantsInstances = { ppon }

local zqv = workspace:Raycast(oec + Vector3.new(0, 10, 0), Vector3.new(0, -80, 0), fhm)
local diar = oec.Y

if zqv and zqv.Instance.Name ~= _d("bgVHABk") then
local cwq = zqv.Position.Y + 3.2

if math.abs(cwq - oec.Y) <= 8 then
diar = cwq
end
end

local unrw = Vector3.new(oh.Position.X - oec.X, 0, oh.Position.Z - oec.Z)

if unrw.Magnitude < 1 then
unrw = Vector3.new(4, 0, 0)
else
unrw = unrw.Unit * 4
end

local zxb = Vector3.new(oec.X + unrw.X, diar, oec.Z + unrw.Z)

oh.CFrame = CFrame.new(zxb)

return true
end

function exgc.unlock()
local rca = {
{ id = _d("WAZSCw8JVlwAbAwYCllXAA"), at = Vector3.new(-3825, 24, -40260) },
{ id = _d("TRNaCzQEXVgHWwAY"), at = Vector3.new(-6180, 40, -40350) },
{ id = _d("Tg1dAQYPVFU7WhYHAw"), at = Vector3.new(-7480, 30, -40350) },
}
local qseh = {}

for sxqq, vogq in ipairs(rca) do
local xvll = za.FishingGetState:InvokeServer()

if xvll and xvll.areas and xvll.areas[vogq.id] == true then
table.insert(qseh, vogq.id .. _d("A0RSCRkDWV0dEwobA1Y"))
else
exgc.hold()
exgc.standAt(vogq.at)
task.wait(2.4)

local rgs = za.FishingGetState:InvokeServer()

table.insert(qseh, vogq.id .. (rgs and rgs.areas and rgs.areas[vogq.id] and _d("A0RGCwcJW1IBVw") or _d("A0RVBAIKXV0")))
end
end

exgc.hold()
pcall(function()
za.TeleportToWorld:FireServer(_d("VQtRBxI"))
end)
task.wait(2.5)

return table.concat(qseh, _d("GaaERQ"))
end

function exgc.flyToggle(axau)
exgc.fly.on = axau

if not axau then
return _d("fwhKRQQAXhc")
end

local ioa = rtpa.Character
local uvnw = ioa and ioa:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not uvnw then
return _d("dwsTBgMHSlgHRwAZRkxWRF8MDRIW")
end

exgc.fly.height = uvnw.Position.Y

if exgc.fly.connection then
return _d("fwhKRQQIFg")
end

local syo = game:GetService(_d("bBdWFyIISEwQYAAZEFFaAQ"))

exgc.fly.connection = ojk(game:GetService(_d("axFdNg4UTlAHVg")).Heartbeat, function(rqi)
if not exgc.fly.on then
return
end

local yde = rtpa.Character
local jvuw = yde and yde:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not jvuw then
return
end

local dmwo = workspace.CurrentCamera
local bwc = Vector3.zero

if dmwo then
local idqw = dmwo.CFrame.LookVector
local dsmq = Vector3.new(idqw.X, 0, idqw.Z)

if dsmq.Magnitude > 0.01 then
dsmq = dsmq.Unit
end

local ez = Vector3.new(dsmq.Z, 0, -dsmq.X)

if syo:IsKeyDown(Enum.KeyCode.W) then
bwc = bwc + dsmq
end

if syo:IsKeyDown(Enum.KeyCode.S) then
bwc = bwc - dsmq
end

if syo:IsKeyDown(Enum.KeyCode.D) then
bwc = bwc + ez
end

if syo:IsKeyDown(Enum.KeyCode.A) then
bwc = bwc - ez
end
end

local ton = 0

if syo:IsKeyDown(Enum.KeyCode.Space) then
ton = 1
elseif syo:IsKeyDown(Enum.KeyCode.LeftControl) then
ton = -1
end

local pmw = exgc.fly.speed or 55
local tvob = bwc * pmw * rqi + Vector3.new(0, ton * pmw * 0.6 * rqi, 0)

if tvob.Magnitude < 0.001 then
return
end

jvuw.CFrame = jvuw.CFrame + tvob
jvuw.AssemblyLinearVelocity = Vector3.zero
end)

return _d("fwhKRQQIFg")
end

function exgc.go(jw)
exgc.hold()

if jw.kind == _d("TgtBCQ8") then
pcall(function()
za.TeleportToWorld:FireServer(jw.arg)
end)

return _d("agFdEUsSUFxE") .. jw.name .. _d("GRBWCQ4WV0sQHQ")
end

if jw.kind == _d("UBdfBAUC") then
pcall(function()
za.FishingIslandTeleport:FireServer(jw.arg)
end)

return _d("agFdEUsSUFxE") .. jw.name .. _d("GRBWCQ4WV0sQHQ") .. tostring(jw.note or _d(""))
end

local zrs = exgc.point(jw)
local vaf = rtpa.Character
local uoqs = vaf and vaf:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if zrs and uoqs and (uoqs.Position - zrs).Magnitude > 1500 then
pcall(function()
if jw.island then
za.FishingIslandTeleport:FireServer(jw.island)
else
za.TeleportToWorld:FireServer(_d("VQtRBxI"))
end
end)

task.wait(jw.island and 3.5 or 4.5)

zrs = exgc.point(jw)

uoqs = rtpa.Character and rtpa.Character:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if zrs and uoqs and (uoqs.Position - zrs).Magnitude > 1500 then
return jw.name .. _d("GQ1ARQQIGA") .. tostring(jw.island or _d("TQxWRQcJWlsd"))
.. _d("GUkTEQMDGF4FXgBLFF1fEUAAGEZMUQVHRR8UUUlERgsfD1QZDUdFAwdLGQZWAAVGSlwFUA0OAhhWClAARQ")
end
end

if not zrs then
return jw.name .. _d("GQ1ARQUJTBkNXUUfDlFKREQKGQpcFw")
end

if not exgc.standAt(zrs) then
return _d("dwsTBgMHSlgHRwAZRkxWRF4KHQMW")
end

task.delay(exgc.holdFor + 2, function()
pcall(exgc.resume)
end)

return _d("ahBcCg9GWlwXWgEORg") .. jw.name .. _d("Fw")
end

exgc.islandSection = otx:Section({ Side = _d("dQFVEQ") })
exgc.islandSection:Header({ Name = _d("cBdfBAUCSxmUrOr2iYC2") })

exgc.npcSection = otx:Section({ Side = _d("aw1UDR8") })
exgc.npcSection:Header({ Name = _d("dzRwFkuWp6rp") })

for cjq, grbw in ipairs(exgc.islands) do
exgc.islandSection:Button({
Name = grbw.name,
Callback = function()
task.spawn(function()
local cidl = exgc.go(grbw)

tes:Notify({
Title = _d("bQFfABsJSk0"),
Description = cidl,
Lifetime = 6,
})
end)
end,
})
end

exgc.state = uffa
exgc.tab = otx
exgc.islandSection:Button({
Name = _d("bApfCggNGFgIX0UCFVRYClcW"),
Callback = function()
task.spawn(function()
local rqtb = exgc.unlock()

tes:Notify({
Title = _d("cBdfBAUCSw"),
Description = rqtb,
Lifetime = 10,
})
end)
end,
})

exgc.flySection = otx:Section({ Side = _d("dQFVEQ") })
exgc.flySection:Header({ Name = _d("fwhKRYn6sNbcvA") })

exgc.flySection:Toggle({
Name = _d("fwhKRUMxeWogH0U4FllaARMQG0oYehBBCUsCV04KGg"),
Default = false,
Callback = function(izq)
local ivm = exgc.flyToggle(izq)

tes:Notify({
Title = _d("fwhK"),
Description = ivm,
Lifetime = 4,
})
end,
}, _d("WAdRHTQAVEA"))

getgenv().ACBXTeleport = exgc

getgenv().ACBXDeepWater = iz

pcall(iz.dropStale)

for xjcz, gpn in ipairs(exgc.npcs) do
exgc.npcSection:Button({
Name = gpn.name,
Callback = function()
task.spawn(function()
local qs = exgc.go(gpn)

tes:Notify({
Title = _d("bQFfABsJSk0"),
Description = qs,
Lifetime = 6,
})
end)
end,
})
end

local ogui = qvoi:Section({ Side = _d("dQFVEQ") })

ogui:Header({ Name = _d("fQ1UAgIIXxmGqOqE3rc") })

local vls = {
busy = false,

treasures = {},
reported = {},
target = nil,
targetGone = false,
strikes = 0,
dug = 0,
skipped = 0,
resultAt = 0,
}

local lbn = (tonumber(getgenv().ACBXDigGeneration) or 0) + 1
getgenv().ACBXDigGeneration = lbn

function vls.read()
local rupw, nhku = pcall(function()
return za.DigGetState:InvokeServer()
end)

return rupw and type(nhku) == _d("TQVRCQ4") and nhku or nil
end

function vls.call(dk, mwq)
local xkv, iuf = pcall(function()
return za.DigShop:InvokeServer(dk, mwq)
end)

task.wait(2.5)

return xkv and iuf == true
end

function vls.wear()
local jzn = rtpa.Character

if not jzn then
return false
end

local gvy = jzn:FindFirstChildOfClass(_d("cRFeBAUJUV0"))
local obm = rtpa:FindFirstChild(_d("ewVQDhsHW1I"))

if not (gvy and obm) then
return false
end

gvy:UnequipTools()
task.wait(0.4)

for dgcq = 1, 8 do
for vdl, pg in ipairs(obm:GetChildren()) do
if pg:IsA(_d("bQtcCQ")) and pg.Name:find(_d("ZyBaAjgOV08BXw")) then
gvy:EquipTool(pg)

return true
end
end

task.wait(0.5)
end

return false
end

function vls.run()
local budg = vls.read()

if not budg then
return _d("bQxWRQ8PXxkXWwobRlFKRF0KH0ZZVxdEABkPVl5K")
end

local ipe = {}

pcall(function()
local xl = za.FishingGetState:InvokeServer()

ipe = xl and xl.areas or {}
end)

if not (ipe.abandoned_island and ipe.twin_beaches and ipe.windmill_isle) then
exgc.unlock()
task.wait(1)
end

local vpem

for kg, thop in ipairs(exgc.npcs) do
if thop.name == _d("fQ1UAg4U") then
vpem = thop
break
end
end

if not vpem then
return _d("bQxWRT8UXVgXRhcORnBMCkcAGUZRSkRdCh9GUVdERw0CFRhOC0EJD0g")
end

exgc.go(vpem)
task.wait(2)

local kupg = rtpa.Character
local msha = kupg and kupg:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))
local kfmc = exgc.point(vpem)

if not (msha and kfmc) or (msha.Position - kfmc).Magnitude > 40 then
return _d("egtGCQ9GVlYQExcOB1tRREcNDkZsSwFSFh4UXRksRgsfA0oX")
end

budg = vls.read() or budg

local ima = false
local uojn = budg.shovels and budg.shovels.shovel_basic == true
local wkmo = budg.detectors and budg.detectors.detector_basic == true

if not (uojn and wkmo) then
ima = vls.call(_d("eghSDAY1TFgWRwAZ"), _d("SgxcEw4KZ1sFQAwI"))
budg = vls.read() or budg
end

if budg.equippedShovel ~= _d("SgxcEw4KZ1sFQAwI") then
vls.call(_d("fBVGDBs1UFYSVgk"), _d("SgxcEw4KZ1sFQAwI"))
end

if budg.equippedDetector ~= _d("XQFHAAgSV0s7UQQYD1s") then
vls.call(_d("fBVGDBsiXU0BUBEEFA"), _d("XQFHAAgSV0s7UQQYD1s"))
end

budg = vls.read() or budg

if budg.equippedShovel == _d("SgxcEw4KZ1sFQAwI") and budg.equippedDetector == _d("XQFHAAgSV0s7UQQYD1s") then
local jigp = vls.wear()
local mdwp = false

if jigp and uffa.enabled then
uffa.autoFishWanted = false
mdwp = true

hyy(false)

pcall(function()
tne:UpdateState(false)
end)
end

return (ima and _d("eghSDAYDXBkFXQFLA0lMDUMVDgI") or _d("fBVGDBsWXV0"))
.. _d("GRBbAEskWUoNUEU4DldPAV9FCghcGSZSFgIFGH0BRwAIEldLSg")
.. (mdwp and _d("GSVGEQRGflAXW0UEAF4ZSRMRAwMYSgxcEw4KGFEFQEUfDl0ZEFwKB0ZLVQtHSw") or _d(""))
end

return _d("bQxWRSkHS1AHEzYDCU5cCBMKGUZ8XBBWBh8JShkNQEUYElFVCBMIAhVLUApUSw")
end

function vls.unlock()
if vls.busy then
return _d("eAhBAAoCQRkTXBcAD1ZeSg")
end

vls.busy = true

local hp, qvd = pcall(vls.run)

vls.busy = false

if not hp then
return _d("fQ1UAgIIXxkCUgwHA1wDRA") .. tostring(qvd)
end

return qvd
end

vls.icon = function()
local ziuo = gethui()

for wy, zwo in ipairs(ziuo:QueryDescendants(_d("cAlSAg4qWVsBXw"))) do
if zwo.Name == _d("bQVRLAYHX1w") then
local yk = zwo.Parent
local sirw = yk and yk:FindFirstChild(_d("bQVRNhwPTFoMVhclB1Vc"))

if sirw and sirw.Text == _d("fQ1UAgIIXw") then
if zwo:GetAttribute(_d("eCdxPS8PX3AHXAs")) then
return true
end

zwo:SetAttribute(_d("eCdxPS8PX3AHXAs"), true)
zwo.Image = _d("")
zwo.BackgroundTransparency = 1

local fqzm = Color3.fromRGB(233, 236, 242)

for gkzd, hf in ipairs(ziuo:QueryDescendants(_d("cAlSAg4qWVsBXw"))) do
if hf.Name == _d("bQVRLAYHX1w") and hf ~= zwo and hf.Image ~= _d("") then
fqzm = hf.ImageColor3
break
end
end

local function hsjy(ixav, aq, jj, akvg, nlam, ilyd)
local ndu = Instance.new(_d("fxZSCA4"))

ndu.Size = UDim2.fromOffset(jj, akvg)
ndu.Position = UDim2.fromOffset(ixav, aq)
ndu.BackgroundColor3 = fqzm
ndu.BorderSizePixel = 0
ndu.Parent = zwo

if ilyd then
ndu.Rotation = ilyd
end

if nlam then
local vgoo = Instance.new(_d("bC1wChkIXUs"))

vgoo.CornerRadius = UDim.new(0, nlam)
vgoo.Parent = ndu
end

return ndu
end

hsjy(1.1, 10.2, 7, 6.4, 1.6, -45)
hsjy(3.1, 8.3, 11, 2.2, 0.8, -45)
hsjy(9.8, 4.4, 5.6, 2, 0.8, 45)

return true
end
end
end

return false
end

task.defer(function()
for peec = 1, 20 do
if vls.icon() then
break
end

task.wait(0.25)
end
end)

ogui:Button({
Name = _d("bApfCggNGF0NVAICCF8"),
Callback = function()
task.spawn(function()
tes:Notify({
Title = _d("fQ1UAgIIXw"),
Description = _d("cQFSAQIIXxkQXEUfDl0ZMEEAChVNSwETLR4ITFwWHQ"),
Lifetime = 5,
})

local adit = vls.unlock()

tes:Notify({
Title = _d("fQ1UAgIIXw"),
Description = adit,
Lifetime = 10,
})
end)
end,
})

vls.statusParagraph = ogui:Paragraph({
Header = _d("fQ1URRgSWU0B"),
Body = _d("awFSAQIIXxkQWwBLAlFeREAEHQMWF0o"),
})

vls.data = require(vf.ModuleScripts.DigData)

function vls.zoneAt(wo)
for epid, vyk in ipairs(game:GetService(_d("egtfCQ4FTFALXTYOFE5QB1Y")):GetTagged(vls.data.ZoneTag)) do
if vyk:IsA(_d("ewVAADsHSk0")) and vyk:IsDescendantOf(workspace) then
local zpa = vyk.CFrame:PointToObjectSpace(wo)
local eh = vyk.Size * 0.5

if math.abs(zpa.X) <= eh.X and math.abs(zpa.Y) <= eh.Y and math.abs(zpa.Z) <= eh.Z then
return true
end
end
end

return false
end

function vls.onIsland()
for nji, hgs in ipairs(game:GetService(_d("egtfCQ4FTFALXTYOFE5QB1Y")):GetTagged(vls.data.ZoneTag)) do
if hgs:IsA(_d("ewVAADsHSk0")) and hgs:IsDescendantOf(workspace) then
return true
end
end

return false
end

function vls.bestShovel(hkz)
local kcnm = hkz and hkz.shovels or {}
local ngcz = nil

for otp, fw in ipairs(vls.data.Shovels) do
if kcnm[fw.id] == true then
ngcz = fw.id
end
end

return ngcz
end

function vls.equipBest()
local qecr = vls.read()
local ipbq = vls.bestShovel(qecr)

if not ipbq then
return nil
end

if qecr.equippedShovel ~= ipbq then
vls.call(_d("fBVGDBs1UFYSVgk"), ipbq)
end

vls.wear()

return ipbq
end

function vls.bestDetector(lzow)
local prcu = lzow and lzow.detectors or {}
local edmi = nil

for jsz, sui in ipairs(vls.data.Detectors) do
if prcu[sui.id] == true then
edmi = sui.id
end
end

return edmi
end

function vls.equipBestDetector()
local gbt = vls.read()
local upx = vls.bestDetector(gbt)

if not upx then
return nil
end

if gbt.equippedDetector ~= upx then
vls.call(_d("fBVGDBsiXU0BUBEEFA"), upx)
end

return upx
end

function vls.leaveNpc()
local lqgd = rtpa.Character
local ery = lqgd and lqgd:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))
local uar = lqgd and lqgd:FindFirstChildOfClass(_d("cRFeBAUJUV0"))

if not (ery and uar) then
return false
end

local mpyy

for qbz, zeg in ipairs(exgc.npcs) do
if zeg.name == _d("fQ1UAg4U") then
mpyy = zeg
break
end
end

local qjw = mpyy and exgc.point(mpyy)

if not qjw then
return false
end

local xd = Vector3.new(ery.Position.X - qjw.X, 0, ery.Position.Z - qjw.Z)

if xd.Magnitude >= 16 then
return true
end

if xd.Magnitude < 1 then
xd = Vector3.new(0, 0, -1)
end

xd = xd.Unit

local tp = Vector3.new(qjw.X + xd.X * 22, ery.Position.Y, qjw.Z + xd.Z * 22)
local wvaj = os.clock() + 6

uar:MoveTo(tp)

while os.clock() < wvaj do
local hc = rtpa.Character
local bgt = hc and hc:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not bgt or (bgt.Position - tp).Magnitude < 4 then
break
end

task.wait(0.15)
end

pcall(function()
uar:MoveTo(ery.Position)
end)

return true
end

function vls.goToSand(efn)

if efn or not vls.onIsland() then
if not efn then

pcall(function()
za.TeleportToWorld:FireServer(_d("VQtRBxI"))
end)

local zlru = os.clock() + 15

while not vls.onIsland() and os.clock() < zlru do
task.wait(0.5)
end
end

local amax

for qq, zsy in ipairs(exgc.npcs) do
if zsy.name == _d("fQ1UAg4U") then
amax = zsy
break
end
end

if amax then
exgc.go(amax)
task.wait(2)
end
end

if vls.onIsland() then
vls.leaveNpc()
end
end

function vls.spot()
local fyua = rtpa.Character
local fvzt = fyua and fyua:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not fvzt then
return nil
end

local emgt = fvzt.CFrame.LookVector
local qxy = Vector3.new(emgt.X, 0, emgt.Z)

if qxy.Magnitude < 0.01 then
qxy = Vector3.new(0, 0, -1)
end

qxy = qxy.Unit

local txiw = RaycastParams.new()
txiw.FilterType = Enum.RaycastFilterType.Exclude
txiw.FilterDescendantsInstances = { fyua }

local function fkn(zdus, jvuj)
local fcbd = fvzt.Position + zdus * jvuj + Vector3.new(0, 4, 0)
local ufut = workspace:Raycast(fcbd, Vector3.new(0, -18, 0), txiw)

if ufut and vls.zoneAt(ufut.Position) then
return ufut.Position
end
end

for xsul, papk in ipairs({ 4, 7, 10, 2 }) do
local pucg = fkn(qxy, papk)

if pucg then
return pucg
end
end

local jdc = Vector3.new(-qxy.Z, 0, qxy.X)

for npco, vcdp in ipairs({ 4, 8 }) do
for ice, qinb in ipairs({ 1, -1 }) do
for fksu, mury in ipairs({ 1, 0.5 }) do
local jb = fkn((jdc * (qinb * mury) + qxy * (1 - mury)).Unit, vcdp)

if jb then
return jb
end
end
end
end

return nil
end

function vls.turn()
local pqqs = rtpa.Character
local dmhn = pqqs and pqqs:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not dmhn then
return
end

local sv = dmhn.CFrame.LookVector
local gcng = Vector3.new(sv.X, 0, sv.Z)

if gcng.Magnitude < 0.01 then
gcng = Vector3.new(0, 0, -1)
end

gcng = gcng.Unit

local qbhg = Vector3.new(-gcng.Z, 0, gcng.X)

dmhn.CFrame = CFrame.lookAt(dmhn.Position, dmhn.Position + qbhg)
end

vls.misses = 0

vls.pending = false

vls.spots = {}
vls.treasures = {}

local function bux(pgtn)
local gmrn = {}
local lq = {}

for yqnc, boo in pairs(pgtn) do
local hnxe
local jynv

if typeof(boo) == _d("bwFQEQQUCw") or typeof(boo) == _d("eiJBBAYD") then
hnxe = yqnc
jynv = boo
elseif type(boo) == _d("TQVRCQ4") then
hnxe = boo.id or boo.Id or boo[1]
jynv = boo.position or boo.Position or boo.pos or boo[2]
end

if typeof(jynv) == _d("eiJBBAYD") then
jynv = jynv.Position
end

if hnxe ~= nil and typeof(jynv) == _d("bwFQEQQUCw") then
table.insert(gmrn, { id = hnxe, position = jynv, spot = true })
lq[hnxe] = true
end
end

return gmrn, lq
end

pcall(function()
ojk(za.DigUpdate.OnClientEvent, function(bop, bgu)
if bop == _d("fQ1UNw4VTVUQ") then
vls.pending = false
vls.resultAt = os.clock()
elseif bop == _d("fQ1UJgoIW1wI") then
vls.pending = false
elseif bop == _d("fQ1UNh8HSk0") then

vls.startedAt = os.clock()
vls.startDuration = type(bgu) == _d("TQVRCQ4") and tonumber(bgu.duration) or nil
end

if (bop == _d("ahRcERg") or bop == _d("bRZWBBgTSlwX")) and type(bgu) == _d("TQVRCQ4") then
local boa, qpn = bux(bgu)

if bop == _d("ahRcERg") then
for ywh, sidu in ipairs(boa) do
sidu.spot = true
end

vls.spots = boa
vls.reportedSpots = qpn
else
vls.treasures = boa

for ulh, rmsj in ipairs(boa) do
rmsj.spot = nil
end

vls.reported = qpn
end

local nax = vls.target

if nax and not nax.mark then
local ozlm = nax.spot and vls.reportedSpots or vls.reported

if ozlm and not ozlm[nax.id] then
vls.targetGone = true
end
end
end
end)
end)

function vls.withinDig(uhow)
local khcq = rtpa.Character
local plt = khcq and khcq:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not plt then
return false
end

return (plt.Position - uhow).Magnitude <= 10
end

vls.markGone = {}

function vls.marked()
local ktsi = workspace:FindFirstChild(_d("fQ1UKAoUU0o"))
local ovq = {}

if not ktsi then
return ovq
end

local vtcu = os.clock()

for xg, odp in ipairs(ktsi:GetChildren()) do
if odp.Name == _d("YSlSFwA") and odp:IsA(_d("ewVAADsHSk0")) then
local sh = odp.Position
local iyo = string.format(_d("VAVBDlFDFgkCCUBFVl4"), sh.X, sh.Z)
local tedn = vls.markGone[iyo]

if not (tedn and vtcu - tedn < 90) then
table.insert(ovq, { id = iyo, position = sh, mark = true })
end
end
end

return ovq
end

function vls.chests()
local fnki = {}

for ea, kohd in ipairs(vls.spots or {}) do
table.insert(fnki, kohd)
end

for zxc, av in ipairs(vls.treasures or {}) do
table.insert(fnki, av)
end

for awqi, wi in ipairs(vls.marked()) do
local ckx = false

for ztd, an in ipairs(fnki) do
if (an.position - wi.position).Magnitude < 2 then
ckx = true

break
end
end

if not ckx then
table.insert(fnki, wi)
end
end

return fnki
end

function vls.release(yo)
if yo.mark then
vls.markGone[yo.id] = os.clock()
else
vls.forget(yo)
end
end

function vls.nearestChest(lqx)
local keo = rtpa.Character
local iklr = keo and keo:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not iklr then
return nil
end

local mfie
local npfi

for miw, yjgj in ipairs(vls.chests()) do
local ucyn = (yjgj.position - iklr.Position).Magnitude

if ucyn <= lqx and (not npfi or ucyn < npfi) then
mfie = yjgj
npfi = ucyn
end
end

return mfie
end

function vls.forget(lumx)
for ovdc, goht in ipairs({ vls.spots or {}, vls.treasures or {} }) do
for ff, hdm in ipairs(goht) do
if hdm.id == lumx.id then
table.remove(goht, ff)

return
end
end
end
end

function vls.walkTo(khu)
local ls = rtpa.Character
local auia = ls and ls:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))
local ntb = ls and ls:FindFirstChildOfClass(_d("cRFeBAUJUV0"))

if not (auia and ntb) then
return false
end

local qjxk = os.clock() + 12
local ubv = (auia.Position - khu).Magnitude
local mrm = os.clock()
local yv = false

pcall(function()
ntb:MoveTo(khu)
end)

while os.clock() < qjxk do
local eqe = rtpa.Character
local oykb = eqe and eqe:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not oykb then
break
end

local kuba = (oykb.Position - khu).Magnitude

if kuba <= 4 then
yv = true

break
end

if vls.targetGone or not vls.autoOn
or getgenv().ACBXDigGeneration ~= lbn or not wyvs() then
break
end

if kuba < ubv - 1 then
ubv = kuba
mrm = os.clock()
elseif os.clock() - mrm > 1.5 then
break
end

task.wait(0.15)
end

pcall(function()
ntb:MoveTo(auia.Position)
end)

return yv
end

function vls.digAt(dfdu)
vls.misses = 0
vls.pending = true
vls.startedAt = 0
vls.startDuration = nil
vls.refused = false

local ehun = os.clock()
local zwgz = pcall(function()
za.DigAction:FireServer(_d("ahBSFx8"), dfdu)
end)

if not zwgz then
vls.pending = false
vls.refused = true

return false
end

local ecb = ehun + 1.2
local ulwq

while vls.pending and vls.autoOn
and getgenv().ACBXDigGeneration == lbn and wyvs() do
local rxdz = os.clock()

if (vls.startedAt or 0) >= ehun then

ulwq = ulwq or (vls.startedAt + (vls.startDuration or 0) + 1.5)

if rxdz >= ulwq then
break
end
elseif rxdz >= ecb then
break
end

task.wait()
end

local hexj = (vls.resultAt or 0) >= ehun

vls.pending = false

if hexj then
vls.dugAt = os.clock()
end

vls.refused = (vls.startedAt or 0) < ehun

return hexj
end

function vls.autoLoop()
local ik = false

while vls.autoOn and wyvs() and getgenv().ACBXDigGeneration == lbn do
local oj = fhyz and fhyz.worldBoss
local hfza = oj ~= nil
and type(oj.holdsDigging) == _d("XxFdBh8PV1c")
and oj.holdsDigging() == true

local fydb = oj ~= nil and type(oj.bossUp) == _d("XxFdBh8PV1c") and oj.bossUp() == true
local xqyl = fydb
and (rk.prioRank(_d("WwtAFg")) or 0) < (rk.prioRank(_d("TgVHABk")) or 0)

if xqyl then
hfza = true
end

if vls.shopping then

task.wait(0.5)
elseif hfza or rk.digBlocked() then

ik = true

vls.heldAt = os.clock()
task.wait(1)
else
if ik then

ik = false

if type(oj.setRepeat) == _d("XxFdBh8PV1c") then
oj.setRepeat(false)
end

vls.goToSand()
end

local syzj = vls.chestOn and vls.nearestChest(2500) or nil
local khl = false

if syzj then
vls.target = syzj
vls.targetGone = false

local ycw = rtpa.Character and rtpa.Character:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))
local onx = ycw and (ycw.Position - syzj.position).Magnitude or 999

if onx > 45 then
pcall(function()
exgc.standAt(syzj.position)
end)

task.wait(0.6)
end

if not vls.walkTo(syzj.position) and not vls.targetGone then
pcall(function()
exgc.standAt(syzj.position)
end)

task.wait(0.6)
vls.walkTo(syzj.position)
end

local ynyi = not vls.withinDig(syzj.position)
local hlr = vls.targetGone

if hlr or ynyi then
vls.strikes = hlr and 0 or (vls.strikes + 1)

if hlr or vls.strikes >= 2 then
vls.strikes = 0
vls.release(syzj)
vls.skipped = vls.skipped + 1
end
else

if vls.digAt(syzj.position) then
vls.strikes = 0
vls.release(syzj)
vls.dug = vls.dug + 1
khl = true
elseif vls.refused then

vls.strikes = 0
vls.release(syzj)
vls.skipped = vls.skipped + 1
else

vls.strikes = vls.strikes + 1

if vls.strikes >= 3 then
vls.strikes = 0
vls.release(syzj)
vls.skipped = vls.skipped + 1
end
end
end

vls.target = nil
vls.targetGone = false
end

if not khl then
local xilm = vls.spot()

if xilm then
vls.digAt(xilm)
else

vls.misses = (vls.misses or 0) + 1

if vls.misses >= 4 then
vls.misses = 0
vls.goToSand(true)
else
vls.turn()
task.wait(0.25)
end
end
end
end
end
end

function vls.autoStart()
local eze = vls.read()

if not (eze and vls.bestShovel(eze)) then
return _d("dwsTFgMJTlwIEwocCF1dRB5FPghUVgdYRQ8PX14NXQJLAFFLF0dL")
end

local nrwg = false

if uffa.enabled then
uffa.autoFishWanted = false

hyy(false)
pcall(function()
tne:UpdateState(false)
end)

nrwg = true
end

ty = true
vls.equipBest()

if vls.chestOn then
pcall(vls.equipBestDetector)
end

vls.goToSand()
vls.dugAt = os.clock()

task.spawn(vls.runAuto)

return _d("fQ1UAgIIXxc") .. (nrwg and _d("GSVGEQRGflAXW0UEAF4ZSRMRAwMYSgxcEw4KGFEFQEUfDl0ZEFwKB0ZLVQtHSw") or _d(""))
end

function vls.runAuto()
if vls.loopLive then
return
end

vls.loopLive = true

local gkpf, prik = pcall(vls.autoLoop)

vls.loopLive = false

if not gkpf then
vls.loopError = tostring(prik)
end
end

task.spawn(function()
while wyvs() and wm do
task.wait(5)

if vls.autoOn and not vls.shopping then
local nqyx = os.clock()

if not vls.loopLive then
task.spawn(vls.runAuto)
elseif nqyx - (vls.dugAt or nqyx) > 25
and nqyx - (vls.heldAt or 0) > 25
and nqyx - (vls.watchdogAt or 0) > 20 then
vls.watchdogAt = nqyx
vls.pending = false
vls.strikes = 0
vls.misses = 0
vls.target = nil
vls.targetGone = false

pcall(function()
vls.goToSand(true)
vls.equipBest()
end)
end
end
end
end)

function vls.toggleAuto(zgb, xt)
if zgb then
local ttn = vls.autoOn == true

vls.chestOn = xt == true
vls.switching = true

pcall(function()
local tdc = xt and vls.autoToggle or vls.chestToggle

if tdc then
tdc:UpdateState(false)
end
end)

vls.switching = false

if ttn then
return
end

vls.autoOn = true

task.spawn(function()
local uec = vls.autoStart()

tes:Notify({
Title = xt and _d("eBFHCksiUV5EcA0OFUxK") or _d("eBFHCksiUV4"),
Description = uec,
Lifetime = 6,
})
end)
else

if vls.switching then
return
end

vls.autoOn = false
vls.pending = false
ty = false
end
end

vls.autoToggle = ogui:Toggle({
Name = _d("eBFHCksiUV4"),
Default = false,
Callback = function(vt)
vls.toggleAuto(vt, false)
end,
}, _d("XQ1UAgIIX2YFRhEE"))

vls.chestToggle = ogui:Toggle({
Name = _d("eBFHCksiUV5EcA0OFUxK"),
Default = false,
Callback = function(frzj)
vls.toggleAuto(frzj, true)
end,
}, _d("XQ1UAgIIX2YFRhEEOVtRAUAR"))

vls.chestParagraph = ogui:Paragraph({
Header = _d("egxWFh8V"),
Body = _d("bRZSBgADXANEA0VGRnxMAwlFW0YVGTdYDBsWXV1eE1U"),
})

task.spawn(function()
local hx

while wyvs() and wm do
local prnz = #vls.chests()
local tb = _d("bRZSBgADXANE") .. prnz .. _d("GUkTIR4BAhk") .. vls.dug .. _d("GUkTNgAPSEkBV19L") .. vls.skipped

if vls.chestOn and prnz > 0 then
local ge = vls.nearestChest(2500)
local zk = rtpa.Character
local tbir = zk and zk:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if ge and tbir then
local htw = math.floor((ge.position - tbir.Position).Magnitude)
tb = tb .. _d("MypWBBkDS01eEw") .. htw .. (htw > 45 and _d("GRdHEA8VGBEMXBVC") or _d("GRdHEA8V"))
end
end

if tb ~= hx then
hx = tb

pcall(function()
vls.chestParagraph:UpdateBody(tb)
end)
end

task.wait(0.5)
end
end)

function vls.npcRow()
for kvh, nj in ipairs(exgc.npcs) do
if nj.name == _d("fQ1UAg4U") then
return nj
end
end
end

function vls.shop(vnur, hfyr)
local rzj, rf, mhkp, wjml = pcall(function()
return za.DigShop:InvokeServer(vnur, hfyr)
end)

if not rzj then
return false, _d("bQxWRQ8PXxkXWwobRlFKRF0KH0ZZVxdEABkPVl5K")
end

return rf == true, mhkp, type(wjml) == _d("TQVRCQ4") and wjml or nil
end

function vls.pickShovel(obkd)
local vqnu = obkd.shovels or {}
local gdyk = tonumber(obkd.digs) or 0
local uyc

for qoos, zacg in ipairs(vls.data.Shovels) do
if not zacg.crafted and zacg.id ~= _d("SgxcEw4KZ1sFQAwI") and vqnu[zacg.id] ~= true then
local lnm = tonumber(zacg.cost) or math.huge

if lnm <= gdyk and (not uyc or lnm > (tonumber(uyc.cost) or 0)) then
uyc = zacg
end
end
end

return uyc
end

function vls.pickDetector(jh)
local ulhb = jh.detectors or {}
local kk = tonumber(jh.digs) or 0
local pojx

for egl, wyay in ipairs(vls.data.Detectors) do
if not wyay.crafted and wyay.id ~= _d("XQFHAAgSV0s7UQQYD1s") and ulhb[wyay.id] ~= true then
local di = tonumber(wyay.cost) or math.huge

if di <= kk and (not pojx or di > (tonumber(pojx.cost) or 0)) then
pojx = wyay
end
end
end

return pojx
end

function vls.nextDef(noem, pte)
local zxv

for xu, aguq in ipairs(noem) do
local zssb = tonumber(aguq.cost)

if not aguq.crafted and zssb and pte[aguq.id] ~= true then
if not zxv or zssb < (tonumber(zxv.cost) or math.huge) then
zxv = aguq
end
end
end

return zxv
end

function vls.toCounter()
local lmwb = vls.npcRow()
local ythe = lmwb and exgc.point(lmwb)
local mx = rtpa.Character
local rs = mx and mx:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not (ythe and rs) then
return false
end

if (rs.Position - ythe).Magnitude <= 20 then
return true
end

exgc.go(lmwb)
task.wait(2.2)

mx = rtpa.Character
rs = mx and mx:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

return rs ~= nil and (rs.Position - ythe).Magnitude <= 20
end

function vls.secretRow()
for gq, ju in ipairs(exgc.npcs) do
if ju.name == _d("agFQFw4SGH0NVAIOFA") then
return ju
end
end
end

function vls.secretDef(vrr)
for xal, mqc in ipairs(vrr or {}) do
if mqc.crafted then
return mqc
end
end
end

function vls.recipeHeld(bz)
local extr = vls.data and vls.data.SecretRecipe
local lvd = bz and bz.mats

if type(extr) ~= _d("TQVRCQ4") or type(lvd) ~= _d("TQVRCQ4") then
return false
end

for bfzh, yuwx in ipairs(extr) do
if (tonumber(lvd[yuwx.id]) or 0) < (tonumber(yuwx.count) or 0) then
return false
end
end

return true
end

function vls.toSecret()
local vkh = vls.secretRow()

if not vkh then
return false
end

local jxe = workspace:FindFirstChild(_d("dzRwFg"))
local hfih = jxe and jxe:FindFirstChild(_d("agFQFw4SfFADVAAZKGh6"))
local qpud = hfih and hfih:GetPivot().Position or exgc.point(vkh)

if not qpud then
return false
end

exgc.hold()

for nk = 1, 3 do
local qxa = rtpa.Character
local io = qxa and qxa:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not io then
return false
end

local gox = (io.Position - qpud).Magnitude

if gox <= 20 then
return true
end

if gox > 1500 and vkh.island then
pcall(function()
za.FishingIslandTeleport:FireServer(vkh.island)
end)

task.wait(4.5)
else
pcall(function()
exgc.standAt(qpud)
end)
task.wait(0.9)
end
end

local eua = rtpa.Character
local cen = eua and eua:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

return cen ~= nil and (cen.Position - qpud).Magnitude <= 20
end

function vls.craftSecret(jry, mprz, nezv)
local jax = {}
local cqxz = jry and vls.secretDef(vls.data.Shovels) or nil
local ycbk = mprz and vls.secretDef(vls.data.Detectors) or nil

local wfbh = cqxz and (nezv.shovels or {})[cqxz.id] ~= true
local vvkn = ycbk and (nezv.detectors or {})[ycbk.id] ~= true

if not (wfbh or vvkn) then
return jax, nil, nezv
end

if not vls.recipeHeld(nezv) then
return jax, nil, nezv
end

vls.shopping = true

local nvj = vls.toSecret()
local ffc

if nvj then
local function pqb(ka, jjs)
if not jjs or not vls.recipeHeld(nezv) then
return
end

local hxn, bhh = vls.shop(ka, jjs.id)

if hxn then
table.insert(jax, jjs.name)
elseif not ffc then
ffc = tostring(bhh)
end

nezv = vls.read() or nezv
end

pqb(_d("ehZSAx81UFYSVgk"), wfbh and cqxz or nil)
pqb(_d("ehZSAx8iXU0BUBEEFA"), vvkn and ycbk or nil)
end

vls.shopping = false

return jax, ffc, nezv
end

function vls.upgradeAll()
local ya = vls.buyOn == true
local gqnu = vls.detBuyOn == true

if not (ya or gqnu) then
return nil, _d("dgJVSw")
end

local gx = vls.read()

if not gx then
return nil, _d("bQxWRQ8PXxkXWwobRlFKRF0KH0ZZVxdEABkPVl5K")
end

local jjyx, vhp, uxpj = vls.craftSecret(ya, gqnu, gx)

if uxpj then
gx = uxpj
end

if ya then
local xyd = vls.bestShovel(gx)

if xyd and gx.equippedShovel ~= xyd then
vls.equipBest()
end
end

if gqnu then
local vow = vls.bestDetector(gx)

if vow and gx.equippedDetector ~= vow then
vls.equipBestDetector()
end
end

local qztr = ya and vls.pickShovel(gx) or nil
local cikl = gqnu and vls.pickDetector(gx) or nil

if not (qztr or cikl) then

if #jjyx > 0 then
if vls.autoOn then
vls.leaveNpc()
end

return table.concat(jjyx, _d("GU8T"))
end

return nil, vhp and (_d("ehZSAx9GSlwCRhYOAgIZ") .. tostring(vhp))
or _d("dwsTEBsBSlgAVkUCFRhYAlUKGQJZWwhWRRIDTBc")
end

vls.shopping = true
vls.toCounter()

local cgn = {}
local pnd

for yyja, icrb in ipairs(jjyx) do
cgn[#cgn + 1] = icrb
end

local function asr(vuo, gpkd)
if not gpkd then
return
end

local kjl, ono = vls.shop(vuo, gpkd.id)

if kjl then
table.insert(cgn, gpkd.name)
elseif not pnd then
pnd = tostring(ono)
end
end

asr(_d("exFKNgMJTlwI"), qztr)
asr(_d("exFKIQ4SXVoQXBc"), cikl)

if #cgn == 0 then
vls.shopping = false

return nil, _d("exFKRRkDXkwXVgFRRg") .. (pnd or _d("VwsTBAUVT1wW"))
end

if ya then
vls.equipBest()
end

if gqnu then
vls.equipBestDetector()
end

if vls.autoOn then
vls.leaveNpc()
end

vls.shopping = false

return table.concat(cgn, _d("GU8T"))
end

function vls.buyLoop()
while vls.buyOn or vls.detBuyOn do
local ttde, oks, msv = pcall(vls.upgradeAll)

vls.shopping = false

if not ttde then
task.wait(10)
elseif oks then
tes:Notify({
Title = _d("eBFHCkskTUBEdwwMAVFXAxMiDgdK"),
Description = _d("fBVGDBsWXV1ERw0ORg") .. oks .. _d("Fw"),
Lifetime = 6,
})

task.wait(3)
else
task.wait(msv == _d("dgJVSw") and 0.5 or 10)
end
end
end

function vls.syncBuyLoop()
if not (vls.buyOn or vls.detBuyOn) or vls.buyRunning then
return
end

vls.buyRunning = true

task.spawn(function()
vls.buyLoop()

vls.buyRunning = false
end)
end

ogui:Toggle({
Name = _d("eBFHCkskTUBEcQAYEhhqDFwTDgo"),
Default = false,
Callback = function(imf)
vls.buyOn = imf
vls.syncBuyLoop()
end,
}, _d("XQ1UAgIIX2YGRhw"))

ogui:Toggle({
Name = _d("eBFHCkskTUBEcQAYEhh9AUcACBJXSw"),
Default = false,
Callback = function(cvcd)
vls.detBuyOn = cvcd
vls.syncBuyLoop()
end,
}, _d("XQ1UAgIIX2YGRhw0Al1NAVARBBQ"))

function vls.statusText()
local leji = vls.read()

if not leji then
return _d("bQxWRQ8PXxkXWwobRlFKRF0KH0ZZVxdEABkPVl5K")
end

local aet = tonumber(leji.digs) or 0
local vae = { _d("fQ1UFlFG") .. aet }

local function ilia(hpl, bzc)
if not bzc then
return hpl .. _d("A0RWEw4UQU0MWgsMRldOClYBRQ")
end

local il = tonumber(bzc.cost) or 0
local sysp = il - aet

return hpl .. _d("A0Q") .. tostring(bzc.name) .. _d("GUkT") .. il
.. (sysp <= 0 and _d("GUxBAAoCQRA") or (_d("GUw") .. sysp .. _d("GRBcRQwJEQ")))
end

table.insert(vae, ilia(_d("dwFLEUsVUFYSVgk"), vls.nextDef(vls.data.Shovels, leji.shovels or {})))
table.insert(vae, ilia(_d("dwFLEUsCXU0BUBEEFA"), vls.nextDef(vls.data.Detectors, leji.detectors or {})))

return table.concat(vae, _d("Mw"))
end

task.spawn(function()
while wyvs() and wm do
local auwr, vs = pcall(vls.statusText)

if auwr and vls.statusParagraph then
pcall(function()
vls.statusParagraph:UpdateBody(vs)
end)
end

task.wait(6)
end
end)

getgenv().ACBXDigging = vls

pfzf.tab = cpb:Tab({
Name = _d("agFHEQIIX0o"),

Image = _d(""),
})

pfzf.icon = function()
local zthx = gethui()

for azq, fcp in ipairs(zthx:QueryDescendants(_d("cAlSAg4qWVsBXw"))) do
if fcp.Name == _d("bQVRLAYHX1w") then
local kzwm = fcp.Parent
local yb = kzwm and kzwm:FindFirstChild(_d("bQVRNhwPTFoMVhclB1Vc"))

if yb and yb.Text == _d("agFHEQIIX0o") then
if fcp:GetAttribute(_d("eCdxPSgJX3AHXAs")) then
return true
end

fcp:SetAttribute(_d("eCdxPSgJX3AHXAs"), true)
fcp.Image = _d("")
fcp.BackgroundTransparency = 1

local jgsv = Color3.fromRGB(168, 170, 176)

local function sjue(eyhm, pjm, lvfl, ugec, pc, enp)
local sc = Instance.new(_d("fxZSCA4"))

sc.Size = UDim2.fromOffset(lvfl, ugec)
sc.Position = UDim2.fromOffset(eyhm, pjm)
sc.BackgroundColor3 = jgsv
sc.BorderSizePixel = 0
sc.Parent = fcp

if not enp then
sc.BackgroundTransparency = 1

local pxn = Instance.new(_d("bC1gERkJU1w"))

pxn.Color = jgsv
pxn.Thickness = 1.3
pxn.LineJoinMode = Enum.LineJoinMode.Round
pxn.Parent = sc
end

if pc then
local bkc = Instance.new(_d("bC1wChkIXUs"))

bkc.CornerRadius = UDim.new(0, pc)
bkc.Parent = sc
end

return sc
end

local sur = {
{ 8, 0, 2, 3 },
{ 8, 15, 2, 3 },
{ 0, 8, 3, 2 },
{ 15, 8, 3, 2 },
{ 2, 2, 3, 3 },
{ 13, 2, 3, 3 },
{ 2, 13, 3, 3 },
{ 13, 13, 3, 3 },
}

for fvi, vfwv in ipairs(sur) do
sjue(vfwv[1], vfwv[2], vfwv[3], vfwv[4], 0, true)
end

sjue(2, 2, 14, 14, 7, false)
sjue(7, 7, 4, 4, 2, true)

return true
end
end
end

return false
end

task.defer(function()
for klv = 1, 20 do
if pfzf.icon() then
break
end

task.wait(0.25)
end
end)

pfzf.prioSection = pfzf.tab:Section({
Side = _d("dQFVEQ"),
})

pfzf.prioSection:Header({
Name = _d("aRZaChkPTEA"),
})

pfzf.prioSection:Paragraph({
Header = _d("bgxcRQwJXUpEVQwZFUw"),
Body = _d("CERHBAADSxkQWwBLB1taC0YLH0ZeUBZAEUdGDRkTUgwfFRhfC0FFDhBdSx1RCg8fFhkhUgYDRkpWExMMGEZZGQpGCAkDShkFXQFLElBcRFcXBBZcVhNdRR4IXFwWEwwfRlFKREQNChIYShBSCw8VGE0MVhcORhUZFFoGAEZZGQpSCA5GTFEFR0UKCkpcBVccSw5XVQBARQoIV00MVhdLCE1UBlYXSwdWXURHDQ5GTE4LExYcB0gXRHJFGQlPGQ1ARQMDVF1EUQQIDRhWCl8cSwRBGQUTCwoLXRkFUQodAxhQEBMRAwdMGQxSFksVV1QBRw0CCF8ZEFxFDwkYSw1UDR9GVlYTHW9hMldOAUEWSwdKXERdCh9GV1dERw0CFRhVDUARUUZZGRBcEg4UGF8NVA0fFRhWChMRAwMYSgFBEw4UGFgKV0UHA1lPAUBFHw5dGQdbBBkHW00BQUUNFF1cSBMWBEZRTURBEAUVGFgIXAsMFVFdARMAHQNKQBBbDAUBGFEBQQBLB1ZdRFwLBx8YShBSCw8VGFgXWgEORl5WFhMXCg9cSkgTEQMDGF4IXAcKChhbC0AWSwdWXUR9NShGWlgQRwkOFRYzbmANBBZLFUReABkBUVcDH0UOHkhcAFoRAglWSkRSCw9GTFEBExcOFUwZC1VFHw5dGQtdAEYVUFYQExEZD0hKRFIXDkZWVhATDQ4UXRkLXUUbE0pJC0AAUUZMUQFKRQoKSlwFVxxLFUxYCldFHw5dGRZGCwUPVl5EUhAfCVVYEFoKBUZcVhNdRRwOUVUBExEDA0EZAFxFHw5dUBYTDwQEFg"),
})

pfzf.prioRows = {}

pfzf.prioBuilding = true

local uw = {}

for sxqw, ezb in ipairs(rk.prioGroups) do
uw[#uw + 1] = ezb.label
end

for jbqv = 1, #rk.prioGroups do
local fzwd = nil

pcall(function()
fzwd = pfzf.prioSection:Dropdown({
Name = _d("aRZaChkPTEBE") .. jbqv,
Search = false,
Multi = false,
Required = false,
Default = jbqv,
Options = uw,
Callback = function(dyz)
local sya = type(dyz) == _d("TQVRCQ4") and dyz[1] or dyz
local klmj

for jvss, tqf in ipairs(rk.prioGroups) do
if tqf.label == sya then
klmj = tqf

break
end
end

if klmj then
pfzf.setPriority(klmj.id, jbqv)
end
end,
}, _d("SRZaCjQUWVcPbA") .. jbqv)
end)

pfzf.prioRows[jbqv] = fzwd
end

pfzf.prioBuilding = false

pfzf.configSection = pfzf.tab:Section({
Side = _d("dQFVEQ"),
})

pfzf.configSection:Header({
Name = _d("egtdAwIBGHQFXQQMA1VcCkc"),
})

pfzf.autoSaveToggle = pfzf.configSection:Toggle({
Name = _d("eBFHCksVWU8B"),
Default = false,
Callback = function(xgng)
pfzf.autoSave = xgng
pfzf.autoSaveAt = 0

if xgng then
local jl = pfzf.selected or _d("XQFVBB4KTA")
local kl, uof = pfzf.save(jl)

pfzf.selected = jl
pfzf.lastText = kl and (_d("eBFHCksVWU8BEwoFRhUZE0EKHwMY") .. jl)
or (_d("eBFHCksVWU8BEwoFShhfDUEWH0ZPSw1HAEsAWVAIVgFRRg") .. tostring(uof))
else
pfzf.lastText = _d("eBFHCksVWU8BEwoNABY")
end
end,
}, _d("WgtdAwIBZ1gRRwo0FVlPAQ"))

pfzf.nameInput = pfzf.configSection:Input({
Name = _d("agVFAEsIWVQB"),
Placeholder = _d("XEpUS0s0WVAAQA"),
AcceptedCharacters = _d("eAhf"),
Callback = function(jdii)
pfzf.nameDraft = jdii
end,
})

pfzf.nameInput.IgnoreConfig = true

pfzf.configSection:Button({
Name = _d("ehZWBB8DGEoFRQA"),
Callback = function()
local xpiu = pfzf.nameDraft or pfzf.nameInput:GetInput()

xpiu = type(xpiu) == _d("ShBBDAUB") and xpiu:gsub(_d("Z0FATg"), _d("")):gsub(_d("HBcYQQ"), _d("")) or _d("")

if xpiu == _d("") then
tes:Dialog({
Title = _d("egtdAwIB"),
Description = _d("bR1DAEsHGFcFXgBLAFdLREcNDkZLWBJWRQ0PSkoQE0hLD0wZBlYGBAtdSkRHDQ5GXlAIVkIYRlZYCVZL"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})

return
end

local wicx, jsjv = pfzf.save(xpiu)

if not wicx then
pfzf.lastText = _d("agVFAEsAWVAIVgFRRg") .. tostring(jsjv)

return
end

pfzf.selected = xpiu
pfzf.lastText = _d("ehZWBB8DXBk") .. xpiu .. _d("Fw")
pfzf.savesAt = 0

task.defer(function()
task.wait(0.25)

pcall(function()
pfzf.fileDropdown:UpdateSelection(xpiu)
end)
end)
end,
})

pfzf.fileDropdown = pfzf.configSection:Dropdown({
Name = _d("agVFAEsAUVUB"),
Search = false,
Multi = false,
Required = false,
Options = pfzf.saves(),
Callback = function(dc)
local hwos = type(dc) == _d("TQVRCQ4") and dc[1] or dc

if type(hwos) == _d("ShBBDAUB") and hwos ~= _d("") then
pfzf.selected = hwos
pfzf.selectionShown = hwos

pcall(function()
pfzf.fileDropdown:UpdateName(_d("agVFAEsAUVUBCUU") .. hwos)
end)
end
end,
})

pfzf.fileDropdown.IgnoreConfig = true

pfzf.configSection:Button({
Name = _d("dQtSAUsVXVUBUBEOAg"),
Callback = function()
local zgt = pfzf.selected or pfzf.fileDropdown.Value
local mxn, uhez = pfzf.load(zgt)

pfzf.lastText = mxn and (_d("dQtSAQ4CGA") .. zgt .. _d("Fw")) or (_d("dQtSAUsAWVAIVgFRRg") .. tostring(uhez))
end,
})

pfzf.configSection:Button({
Name = _d("agVFAEsSVxkXVgkOBUxcAA"),
Callback = function()
local qdv = pfzf.selected or pfzf.fileDropdown.Value
local cuy, bngh = pfzf.save(qdv)

pfzf.lastText = cuy and (_d("bhZcEQ5G") .. qdv .. _d("Fw")) or (_d("agVFAEsAWVAIVgFRRg") .. tostring(bngh))
end,
})

pfzf.configSection:Button({
Name = _d("fQFfAB8DGEoBXwAIEl1dREAEHQM"),
Callback = function()
local pjfs = pfzf.selected or pfzf.fileDropdown.Value

if type(pjfs) ~= _d("ShBBDAUB") or pjfs == _d("") then
pfzf.lastText = _d("aQ1QDksHGEoFRQBLAFFVARMDAhRLTUo")

return
end

tes:Dialog({
Title = _d("fQFfAB8DGA") .. pjfs .. _d("Bg"),
Description = _d("bQxWRQ0PVFxEWhZLFF1UC0UAD0ZeSwteRQ8PS1JEUgsPRltYCl0KH0ZaXERBAAgJTlwWVgFF"),
Buttons = {
{
Name = _d("fQFfAB8D"),
Callback = function()
local cvsn, jmba = pfzf.delete(pjfs)

pfzf.lastText = cvsn
and (_d("fQFfAB8DXBk") .. pjfs .. _d("Fw"))
or (_d("egtGCQ9GVlYQEwEOCl1NAQlF") .. tostring(jmba))
end,
},
{
Name = _d("egVdBg4K"),
},
},
})
end,
})

pfzf.configSection:Button({
Name = _d("awFVFw4VUBkIWhYf"),
Callback = function()
pfzf.savesAt = 0
pfzf.lastText = _d("agVFAEsKUUoQExcOAEpcF1sAD0g")
end,
})

pfzf.configSection:Button({
Name = _d("dAVBDksHSxkFRhEERlRWBVc"),
Callback = function()
local yq = pfzf.selected or pfzf.fileDropdown.Value

if type(yq) ~= _d("ShBBDAUB") or yq == _d("") then
pfzf.lastText = _d("aQ1QDksHGEoFRQBLAFFVARMDAhRLTUo")

return
end

if pfzf.setAutoLoad(yq) then
pfzf.lastText = yq .. _d("GQhcBA8VGFYKExYfB0pNSg")
else
pfzf.lastText = _d("egtGCQ9GVlYQExIZD0xcREcNDkZZTBBcRQcJWV1EXgQZDV1LSg")
end
end,
})

pfzf.configSection:Button({
Name = _d("eghWBBlGWUwQXEUHCVld"),
Callback = function()
pfzf.setAutoLoad(_d(""))
pfzf.lastText = _d("dwtHDQIIXxkIXAQPFRhWChMWHwdKTUo")
end,
})

pfzf.statusParagraph = pfzf.configSection:Paragraph({
Header = _d("ahBSER4V"),
Body = _d(""),
})

pfzf.miscSection = pfzf.tab:Section({
Side = _d("aw1UDR8"),
})

pfzf.miscSection:Header({
Name = _d("dA1ABg"),
})

pfzf.miscSection:Toggle({
Name = _d("eBFHCksFVFYXVkUMA1ZcFlIRAglWGTF6"),
Default = false,
Callback = function(ras)
nisk(ras)
end,
}, _d("VA1ABjQHTU0LbAYHCUtcO1QABQNKWBBaCgU"))

pfzf.miscSection:Toggle({
Name = _d("eBFHCks0V1UI"),
Default = true,
Callback = function(axia)
pfzf.autoRoll = axia

if axia and pfzf.setRollButton then
pfzf.setRollButton(_d("eBFHCjkJVFUmRhEfCVY"), true)
end
end,
}, _d("VA1ABjQHTU0LbBcEClQ"))

pfzf.miscSection:Toggle({
Name = _d("eBFHCks3TVAHWEU5CVRV"),
Default = true,
Callback = function(tr)
pfzf.autoQuickRoll = tr

if tr and pfzf.setRollButton then
pfzf.setRollButton(_d("aBFaBgA0V1UIcRAfEldX"), true)
end
end,
}, _d("VA1ABjQHTU0LbBQeD1tSO0EKBwo"))

pfzf.uiSection = pfzf.tab:Section({
Side = _d("aw1UDR8"),
})

pfzf.uiSection:Header({
Name = _d("bC0"),
})

pfzf.uiSection:Toggle({
Name = _d("ewVQDgwUV0wKV0UJCk1L"),
Default = true,
Callback = function(ss)
pcall(function()
tes:SetAcrylicBlurState(ss)
end)
end,
}, _d("TA1sBwoFU14WXBAFAmdbCEYX"))

function pfzf.widthFactor(mxf)
return 1 + math.max(0, (mxf or 1) - 1) * 0.8
end

function pfzf.scaleCap()
local mgb = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local nuvr = math.min(120, math.floor(((mgb.Y - 40 - 8 - 8) / 500) * 100))

while nuvr > 50 and (pfzf.baseWidth or 720) * (nuvr / 100) * pfzf.widthFactor(nuvr / 100) > mgb.X - 16 do
nuvr = nuvr - 1
end

return math.max(50, nuvr)
end

function pfzf.scaleCeiling()
return math.min(1.2, pfzf.scaleCap() / 100)
end

function pfzf.refreshScaleCap()
local dcrs = pfzf.scaleSlider

if not dcrs then
return
end

local vqmr = pfzf.scaleCeiling()

pcall(function()
dcrs.Settings.Maximum = vqmr
end)

local lb = tonumber(dcrs:GetValue()) or 1

if lb > vqmr then
pfzf.scaleTarget = vqmr

pcall(function()
dcrs:UpdateValue(vqmr)
end)
end
end

pfzf.scaleSlider = pfzf.uiSection:Slider({
Name = _d("bC0TFggHVFw"),
Default = 1,
Minimum = 0.5,

Maximum = pfzf.scaleCeiling(),
DisplayMethod = _d("bwVfEA4"),
Precision = 2,

Callback = function(om)
pfzf.scalePending = tonumber(om)
pfzf.scalePendingAt = os.clock()
end,
onInputComplete = function(yqix)
local nroe = pfzf.scaleCeiling()

pfzf.scaleTarget = math.clamp(tonumber(yqix) or pfzf.scalePending or 1, 0.5, nroe)
pfzf.scalePending = nil

pfzf.scaleAnchor = nil

pfzf.saveUi()
end,
}, _d("TA1sFggHVFw"))

pfzf.refreshScaleCap()

pfzf.themeDropdown = pfzf.uiSection:Dropdown({
Name = _d("bQxWCA5cGG8LWgE"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = pfzf.themeOrder,
Callback = function(dt)
local kch = type(dt) == _d("TQVRCQ4") and dt[1] or dt

if type(kch) == _d("ShBBDAUB") and pfzf.presets[kch] then
pfzf.theme = kch
pfzf.accent = nil
pfzf.applyTheme()

pcall(function()
pfzf.themeDropdown:UpdateName(_d("bQxWCA5cGA") .. kch)
end)

pfzf.saveUi()
end
end,
}, _d("TA1sEQMDVVw"))

pfzf.accentPicker = pfzf.uiSection:Colorpicker({
Name = _d("eAdQAAUSGFoLXwoeFA"),
Default = Color3.fromRGB(168, 170, 176),
Alpha = 0,
Callback = function(vd)
pfzf.accent = vd
pfzf.applyTheme()
pfzf.saveUi()
end,
}, _d("TA1sBAgFXVcQ"))

pfzf.codesSection = pfzf.tab:Section({
Side = _d("aw1UDR8"),
})

pfzf.codesSection:Header({
Name = _d("egtXABg"),
})

pfzf.codeText = _d("awFXAA4LSxkBRQAZHxhaC1cASxJQUBcTAgoLXRkXWwwbFRhODUcNR0ZXVwETAB0DSkBEUAoeFlRcRFwDSxVdWgtdARhI")

function pfzf.setCodeText(ba)
pfzf.codeText = ba

pcall(function()
pfzf.codeParagraph:UpdateBody(ba)
end)
end

function pfzf.redeemCodes()
if pfzf.redeeming then
return
end

local vm = za.RedeemCode
local lbl = vf:FindFirstChild(_d("dAtXEAcDa1oWWhUfFQ"))
local cs = lbl and lbl:FindFirstChild(_d("egtXAC8HTFg"))
local psg, yx = false, nil

if vm and cs then
psg, yx = pcall(function()
return require(cs)
end)
end

local kdy = psg and type(yx) == _d("TQVRCQ4") and yx.Codes or nil

if not vm or type(kdy) ~= _d("TQVRCQ4") then
pfzf.setCodeText(_d("bQxaFksQXUsXWgoFRldfREcNDkZfWAlWRQMHSxkKXEUICVxcRF8MGBIYVhYTCwRGSlwAVgAGRkpcCVwRDkg"))
return
end

local mwll = {}

for hmbo in pairs(kdy) do
mwll[#mwll + 1] = hmbo
end

table.sort(mwll)

local kwqq = #mwll

pfzf.redeeming = true
pfzf.setCodeText(_d("awFXAA4LUVcDEw") .. kwqq .. _d("GQdcAQ4VFhdK"))

task.spawn(function()
local dehw, cahr, ina = 0, 0, 0
local uzu = {}

for bbl = 1, kwqq do
if not wyvs() then
break
end

local fpzl = mwll[bbl]
local fnjd, upy = pcall(function()
return vm:InvokeServer(fpzl)
end)

local nh = fnjd and type(upy) == _d("TQVRCQ4") and upy.success == true
local oc = fnjd and type(upy) == _d("TQVRCQ4") and tostring(upy.message or _d("")) or tostring(upy or _d(""))

if not nh and string.find(string.lower(oc), _d("TgVaEQ"), 1, true) then
task.wait(3.5)

fnjd, upy = pcall(function()
return vm:InvokeServer(fpzl)
end)

nh = fnjd and type(upy) == _d("TQVRCQ4") and upy.success == true
oc = fnjd and type(upy) == _d("TQVRCQ4") and tostring(upy.message or _d("")) or tostring(upy or _d(""))
end

if nh then
dehw = dehw + 1
elseif string.find(string.lower(oc), _d("WAhBAAoCQQ"), 1, true) then
cahr = cahr + 1
else
ina = ina + 1

if #uzu < 6 then
uzu[#uzu + 1] = fpzl .. _d("A0Q") .. (oc ~= _d("") and oc or _d("VwsTBAUVT1wW"))
end
end

pfzf.setCodeText(string.format(_d("HAATCg1GHV1EHkVOAhhLAVcADgtdXUgTQA9GWVUWVgQPHxQZQVdFGQNeTBdWAUU"), bbl, kwqq, dehw, cahr, ina))

if bbl < kwqq and wyvs() then
task.wait(1.8)
end
end

local trdt = {
string.format(_d("awFXAA4LXV1EFgFHRllVFlYEDx8YUQVXRU4CFBkWVgMeFV1dRBYBSwleGUFXSw"), dehw, cahr, ina, kwqq),
}

for xynq, nwmw in ipairs(uzu) do
trdt[#trdt + 1] = nwmw
end

pfzf.redeeming = false
pfzf.setCodeText(table.concat(trdt, _d("Mw")))
end)
end

pfzf.codesSection:Button({
Name = _d("awFXAA4LGFgIX0UICVxcFw"),
Callback = function()
pfzf.redeemCodes()
end,
})

pfzf.codeParagraph = pfzf.codesSection:Paragraph({
Header = _d("egtXABg"),
Body = pfzf.codeText,
})

pfzf.scriptSection = pfzf.tab:Section({
Side = _d("aw1UDR8"),
})

pfzf.scriptSection:Header({
Name = _d("agdBDBsS"),
})

pfzf.scriptSection:Button({
Name = _d("bApfCgoCGEoHQQwbEg"),
Callback = function()
pcall(function()
tes:Unload()
end)

getgenv().ACBXWindow = nil
getgenv().ACBXAllowReload = nil
end,
})

task.spawn(function()
while wyvs() do

if os.clock() >= pfzf.savesAt then
pfzf.savesAt = os.clock() + 3

local inka = pfzf.saves()
local los = table.concat(inka, _d("RQ"))

if los ~= pfzf.knownSaves then
pfzf.knownSaves = los

pcall(function()
pfzf.fileDropdown:ClearOptions()
pfzf.fileDropdown:InsertOptions(inka)
end)
end

if pfzf.selected and pfzf.selectionShown ~= pfzf.selected then
pfzf.selectionShown = pfzf.selected

pcall(function()
pfzf.fileDropdown:UpdateSelection(pfzf.selected)
end)
end
end

if pfzf.autoSave and os.clock() >= pfzf.autoSaveAt then
pfzf.autoSaveAt = os.clock() + 60

local nmw = pfzf.selected or _d("XQFVBB4KTA")
local sng, nnva = pfzf.save(nmw)

pfzf.selected = nmw
pfzf.lastText = sng and (_d("eBFHCksVWU8BV0U") .. nmw .. _d("GQVHRQ") .. os.date(_d("HCwJQCY")) .. _d("Fw"))
or (_d("eBFHCksVWU8BEwMKD1RcAAlF") .. tostring(nnva))
end

if os.clock() >= pfzf.themeAt then
pfzf.themeAt = os.clock() + 3
pfzf.applyTheme()
end

if os.clock() >= pfzf.capAt then
pfzf.capAt = os.clock() + 2
pfzf.refreshScaleCap()
end

if os.clock() >= pfzf.statusAt then
pfzf.statusAt = os.clock() + 2

local shtb = pfzf.autoLoadName()
local esu = table.concat({
_d("eBFHCksKV1gACUU") .. (shtb or _d("VwtdAA")),
_d("agVFABhcGA") .. tostring(#pfzf.saves()),
pfzf.lastText,
}, _d("Mw"))

if esu ~= pfzf.shownStatus then
pfzf.shownStatus = esu

pcall(function()
pfzf.statusParagraph:UpdateBody(esu)
end)
end
end

task.wait(0.25)
end
end)

task.spawn(function()
while wyvs() do

local tsz = pfzf.scalePending

if tsz and os.clock() - (pfzf.scalePendingAt or 0) > 0.35 then
local fmb = pfzf.scaleCeiling()
local fjr = math.clamp(tsz, 0.5, fmb)

pfzf.scalePending = nil

if math.abs(fjr - pfzf.scaleTarget) > 0.002 then
pfzf.scaleTarget = fjr
pfzf.scaleAnchor = nil

pfzf.saveUi()
end
end

if math.abs(pfzf.scaleTarget - pfzf.scale) > 0.002 then
local udd = pfzf.guiRoot()

if udd and not pfzf.baseWidth then
pfzf.baseWidth = udd.Size.X.Offset
pfzf.baseHeight = udd.Size.Y.Offset
end

local xvpc = pfzf.baseWidth or 720
local nlrf = pfzf.baseHeight or 500
local yrms = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local vkms, nui = 8, 40

if not pfzf.scaleAnchor and udd then

local jkcs = pfzf.widthFactor(pfzf.scaleTarget)
local oycj, fqfc = xvpc * jkcs * pfzf.scaleTarget, nlrf * pfzf.scaleTarget
local ziew = udd.AbsolutePosition

pfzf.scaleAnchor = Vector2.new(
math.clamp(ziew.X, vkms, math.max(vkms, yrms.X - oycj - vkms)),
math.clamp(ziew.Y, nui, math.max(nui, yrms.Y - fqfc - vkms))
)
end

local dpq = pfzf.scaleAnchor

pfzf.scale = pfzf.scale + (pfzf.scaleTarget - pfzf.scale) * 0.18

local qg = pfzf.widthFactor(pfzf.scale)

pcall(function()
tes:SetScale(pfzf.scale)

if udd then
local wvx = math.floor(xvpc * qg)

udd.Size = UDim2.fromOffset(wvx, math.floor(nlrf))

local nz = udd:FindFirstChild(_d("egtdEQ4ITA"))

if nz then
local xmy = udd:FindFirstChild(_d("ag1XAAkHSg"))
local hnto = math.floor(xmy and xmy.Size.X.Scale * wvx or wvx * 0.325)

nz.Size = UDim2.new(0, math.max(0, wvx - hnto), 1, 0)
end
end
end)

if udd and dpq then
local ugwv, knlh = xvpc * qg * pfzf.scale, nlrf * pfzf.scale
local edi = math.clamp(dpq.X, vkms, math.max(vkms, yrms.X - ugwv - vkms))
local xchp = math.clamp(dpq.Y, nui, math.max(nui, yrms.Y - knlh - vkms))

local beg = udd.Parent and udd.Parent.AbsolutePosition or Vector2.zero

pcall(function()
udd.Position = UDim2.fromOffset(math.floor(edi - beg.X), math.floor(xchp - beg.Y))
end)
end
else

pfzf.scaleAnchor = nil
end

task.wait()
end
end)

fhyz.misc.tierLabels = {}
fhyz.misc.labelToTier = {}

fhyz.misc.expSection = fhyz.misc.tab:Section({
Side = _d("dQFVEQ"),
})

fhyz.misc.expSection:Header({
Name = _d("fBxDAA8PTFALXRZLlqeu5tzd5A"),
})

fhyz.misc.claimToggle = fhyz.misc.expSection:Toggle({
Name = _d("eBFHCksFVFgNXg"),
Default = false,
Callback = function(nmix)
local oxap = fhyz.misc.expeditions

oxap.enabled = nmix
oxap.claimAt = 0

if nmix then
oxap.askedAt = 0
oxap.request()
end
end,
}, _d("WBFHCjQFVFgNXg"))

fhyz.misc.rewardToggle = fhyz.misc.expSection:Toggle({
Name = _d("eBFHCksFVFYXVkUZA09YFlcW"),
Default = false,
Callback = function(skz)
local ubi = fhyz.misc.expeditions

ubi.autoClose = skz

if skz then
ubi.closeRewards()
end
end,
}, _d("XBxDOgoTTFY7UAkEFV0"))

fhyz.misc.startToggle = fhyz.misc.expSection:Toggle({
Name = _d("eBFHCksVTFgWRw"),
Default = false,
Callback = function(astr)
local hs = fhyz.misc.expeditions

if astr and not next(hs.tiersWanted) then
hs.autoStart = false

pcall(function()
fhyz.misc.startToggle:UpdateState(false)
end)

tes:Dialog({
Title = _d("eBFHCksVTFgWR0UFA11dFxMESxJRXBY"),
Description = _d("aQ1QDksHTBkIVgQYEhhWClZFHw9dS0RaC0sSUFxEZwwOFBhdFlwVDwlPV0RVDBkVTBdEdgQYHxhNBVgAGEZMUQETBgMDWUkBQBFLBVlLAEBJSyhRXgxHCAoUXRkQWwBLFFlLAUARR0ZZVwATBAUfGFcRXgcOFBhWAhMRAwNVGQdSC0sUTVdEUhFLCVZaAR0"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})

return
end

hs.autoStart = astr
hs.startedAt = {}

if astr then
hs.askedAt = 0
hs.request()
end
end,
}, _d("WBFHCjQVTFgWRw"))

for pui, ybff in ipairs(fhyz.misc.expeditions.tiers()) do
table.insert(fhyz.misc.tierLabels, tostring(ybff.name))
fhyz.misc.labelToTier[tostring(ybff.name)] = ybff.id
end

fhyz.misc.building = true

fhyz.misc.tierDropdown = fhyz.misc.expSection:Dropdown({
Name = _d("bQ1WFw"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = fhyz.misc.tierLabels,
Callback = function(lug)
local hxcs = fhyz.misc.expeditions

if fhyz.misc.building then
return
end

local iqz = {}
local knwe = {}

if type(lug) == _d("TQVRCQ4") then
for cjha, wv in pairs(lug) do
local rulw = fhyz.misc.labelToTier[tostring(cjha)]

if wv and rulw then
iqz[rulw] = true
table.insert(knwe, tostring(cjha))
end
end
end

table.sort(knwe)
hxcs.tiersWanted = iqz

pcall(function()
fhyz.misc.tierDropdown:UpdateName(#knwe > 0 and (_d("bQ1WF0uEuJtE") .. table.concat(knwe, _d("FUQ"))) or _d("bQ1WF0uEuJtEXQoFAw"))
end)
end,
}, _d("TQ1WFw"))

task.defer(function()
fhyz.misc.building = false
end)

fhyz.misc.expSection:Button({
Name = _d("eghSDAZGVlYT"),
Callback = function()
local nyv = fhyz.misc.expeditions

if not nyv.claim() then
tes:Notify({
Title = _d("fBxDAA8PTFALXRY"),
Description = _d("dwtHDQIIXxkMUhZLBVdUARMHCgVTGR1WEUU"),
Lifetime = 5,
})
end
end,
})

fhyz.misc.expSection:Button({
Name = _d("agFdAUsVXVUBUBEOAg"),
Callback = function()
local fpv = fhyz.misc.expeditions

if not next(fpv.tiersWanted) then
tes:Notify({
Title = _d("fBxDAA8PTFALXRY"),
Description = _d("aQ1QDksHTBkIVgQYEhhWClZFHw9dS0RaC0sSUFxEVxcEFlxWE11FDQ9KShAd"),
Lifetime = 5,
})

return
end

local rqwn = {}
local smqe = 0

for nhp, mjx in ipairs(fpv.tiers()) do
if fpv.tiersWanted[mjx.id] and fpv.status(mjx.id) == _d("WBJSDAcHWlUB") then
if fpv.start(mjx.id, rqwn) then
smqe = smqe + 1
end
end
end

if smqe == 0 then
tes:Notify({
Title = _d("fBxDAA8PTFALXRY"),
Description = _d("dwtHDQIIXxkHXBAHAhhbARMWDghMA0RHDQ5GS1wIVgYfA1wZEFoAGRUYWBZWRQoKSlwFVxxLCU1NSBMKGUZMUQFBAEsHSlxEXQofRl5WEUFFDgpRXg1RCQ5GW1gWVxZLAFdLREcNDgsW"),
Lifetime = 6,
})
end
end,
})

fhyz.misc.expInfo = fhyz.misc.tab:Section({
Side = _d("aw1UDR8"),
})

fhyz.misc.expInfo:Header({
Name = _d("fBxDAA8PTFALXRY"),
})

fhyz.misc.expParagraph = fhyz.misc.expInfo:Paragraph({
Header = _d("ahBSER4V"),
Body = fhyz.misc.expeditions.text(),
})

fhyz.misc.expeditions.loadRewards()

fhyz.misc.expRewardParagraph = fhyz.misc.expInfo:Paragraph({
Header = _d("eghSDAYDXA"),
Body = fhyz.misc.expeditions.rewardsText(),
})

task.spawn(function()
local ki = fhyz.misc.expeditions
local veb = ekov(_d("ah1dBi4eSFwAWhECCVZK"), 3)

if veb then
ojk(veb.OnClientEvent, function(yiz)
if type(yiz) ~= _d("TQVRCQ4") then
return
end

ki.state = yiz

ki.offset = (tonumber(yiz.now) or os.time()) - os.time()
ki.syncedAt = os.clock()

if type(yiz.rewards) == _d("TQVRCQ4") and #yiz.rewards > 0 then
table.insert(ki.rewardLog, 1, {
at = os.time(),
title = tostring(yiz.rewardTitle or _d("fBxDAA8PTFALXQ")),
items = yiz.rewards,
})

while #ki.rewardLog > 8 do
table.remove(ki.rewardLog)
end

ki.saveRewards()

if ki.autoClose then

task.delay(0.35, ki.closeRewards)
end
end
end)
end

while wyvs() do

if os.clock() - ki.askedAt > 1 and os.clock() - ki.syncedAt > 20 then
ki.request()
end

if ki.enabled then
ki.claim()
end

if ki.autoClose then
ki.closeRewards()
end

if ki.autoStart and next(ki.tiersWanted) then
local aex = {}

for cju, jihg in ipairs(ki.tiers()) do
if ki.tiersWanted[jihg.id] and ki.status(jihg.id) == _d("WBJSDAcHWlUB") then
if ki.start(jihg.id, aex) then
break
end
end
end
end

local afrb = ki.text()

if fhyz.misc.expParagraph and afrb ~= fhyz.misc.expShown then
fhyz.misc.expShown = afrb

pcall(function()
fhyz.misc.expParagraph:UpdateBody(afrb)
end)
end

local roru = ki.rewardsText()

if fhyz.misc.expRewardParagraph and roru ~= ki.rewardsShown then
ki.rewardsShown = roru

pcall(function()
fhyz.misc.expRewardParagraph:UpdateBody(roru)
end)
end

task.wait(0.75)
end
end)

fhyz.misc.util = {
profile = nil,
profileAt = 0,
askedAt = 0,

indexAt = 0,
achAt = 0,
questAt = 0,
packAt = 0,
accAt = 0,
indexOn = false,

indexAsked = nil,
achOn = false,
questOn = false,
accOn = false,
accBuyOn = false,
accBuyAt = 0,
ach = nil,
achAskedAt = 0,
quests = nil,
questAskedAt = 0,
weekly = nil,
weeklyAskedAt = 0,
packs = nil,
accessories = nil,

shown = {},
}

function fhyz.misc.util.hook()
local nr = fhyz.misc.util

if nr.hooked then
return
end

nr.hooked = true

if za.SyncCollection then
ojk(za.SyncCollection.OnClientEvent, function(rob)
if type(rob) == _d("TQVRCQ4") then
nr.profile = rob
nr.profileAt = os.clock()
end
end)
end

if za.SyncAchievements then
ojk(za.SyncAchievements.OnClientEvent, function(qti)
if type(qti) == _d("TQVRCQ4") then
nr.ach = qti
end
end)
end

if za.SyncQuests then
ojk(za.SyncQuests.OnClientEvent, function(xxj)
if type(xxj) == _d("TQVRCQ4") and type(xxj.list) == _d("TQVRCQ4") then
nr.quests = xxj
end
end)
end

if za.SyncPeriodicQuests then
ojk(za.SyncPeriodicQuests.OnClientEvent, function(ddea, ubb)
if ddea == _d("TgFWDgcf") and type(ubb) == _d("TQVRCQ4") and type(ubb.list) == _d("TQVRCQ4") then
nr.weekly = ubb
end
end)
end
end

function fhyz.misc.util.askProfile()
local neov = fhyz.misc.util

if os.clock() - neov.askedAt < 1.5 then
return
end

neov.askedAt = os.clock()

if za.RequestSync then
pcall(function()
za.RequestSync:FireServer()
end)
end
end

function fhyz.misc.util.currentProfile()
local dm = fhyz.misc.util

if type(dm.profile) ~= _d("TQVRCQ4") then
dm.askProfile()

return nil
end

if os.clock() - dm.profileAt > 20 then
dm.askProfile()
end

return dm.profile
end

function fhyz.misc.util.forgetProfile()
local pfs = fhyz.misc.util

pfs.profile = nil
pfs.profileAt = 0
pfs.askedAt = 0
end

function fhyz.misc.util.indexedTotal(qbil)
local mgh = 0

for oktx, hfx in pairs((qbil and qbil.cardIndex) or {}) do
if hfx then
mgh = mgh + 1
end
end

return mgh
end

function fhyz.misc.util.indexPending(pi)
local rnny = {}

if type(pi) ~= _d("TQVRCQ4") then
return rnny
end

local ibrk = fhyz.misc.util.indexedTotal(pi)
local mg = pi.indexMilestones or {}

for otu = 1, 30 do
if not mg[otu] and otu * 5 <= ibrk then
table.insert(rnny, otu)
end
end

return rnny
end

function fhyz.misc.util.indexFrame()
local ob = qsrk:FindFirstChild(_d("egVBASIIXFwcdBAC"))

return ob and ob:FindFirstChild(_d("cApXABMgSlgJVg"))
end

function fhyz.misc.util.clickButton(ubsj)
if not ubsj then
return false
end

if firesignal then
local ji = pcall(firesignal, ubsj.MouseButton1Click)

if ji then
return true
end
end

return pcall(function()
ubsj:Activate()
end)
end

function fhyz.misc.util.closeIndex()
local wdh = fhyz.misc.util.indexFrame()

if not wdh or not wdh.Visible then
return false
end

pcall(function()
local uisx = vf:FindFirstChild(_d("dAtXEAcDa1oWWhUfFQ"))
local gtc = uisx and uisx:FindFirstChild(_d("dAFdECYHVlgDVhc"))

if gtc then
require(gtc).close(wdh)
end
end)

fhyz.misc.util.clickButton(wdh:FindFirstChild(_d("eghcFg4kTU0QXAs")))

pcall(function()
wdh.Visible = false
end)

return true
end

function fhyz.misc.util.claimIndex()
local wjbs = fhyz.misc.util

if os.clock() < wjbs.indexAt then
return false
end

local cnc = wjbs.currentProfile()

if not cnc then
return false
end

local mgjj = wjbs.indexPending(cnc)
local ybwv = mgjj[1]

if not ybwv then
return false
end

local ywxk = wjbs.indexedTotal(cnc)
local ixj = wjbs.indexAsked

if type(ixj) == _d("TQVRCQ4") and ixj.milestone == ybwv and ixj.total == ywxk then
return false
end

wjbs.indexAsked = { milestone = ybwv, total = ywxk }

pcall(function()
za.ClaimIndexReward:FireServer(ybwv)
end)

wjbs.indexAt = os.clock() + 1.5

wjbs.profile = nil
wjbs.profileAt = 0

task.delay(0.4, wjbs.closeIndex)

return true
end

function fhyz.misc.util.achPending()
local zbl = {}
local cjr = fhyz.misc.util.ach

if type(cjr) ~= _d("TQVRCQ4") then
return zbl
end

for dun, cxih in ipairs(cjr.chains or {}) do
for cohb, iiim in ipairs(cxih.levels or {}) do
if iiim.reached and not iiim.claimed then
table.insert(zbl, { chain = tostring(cxih.id), index = iiim.index, name = tostring(iiim.name or iiim.index) })
end
end
end

return zbl
end

function fhyz.misc.util.claimAchievement()
local fwtb = fhyz.misc.util

if os.clock() < fwtb.achAt then
return false
end

if type(fwtb.ach) ~= _d("TQVRCQ4") then
if os.clock() - fwtb.achAskedAt > 4 and za.RequestAchievements then
fwtb.achAskedAt = os.clock()

pcall(function()
za.RequestAchievements:FireServer()
end)
end

return false
end

for jtee, qubs in ipairs(fwtb.achPending()) do
pcall(function()
za.ClaimAchievement:FireServer(qubs.chain, qubs.index)
end)

fwtb.achAt = os.clock() + 1

task.delay(1, function()
if za.RequestAchievements then
pcall(function()
za.RequestAchievements:FireServer()
end)
end
end)

return true
end

return false
end

function fhyz.misc.util.questRows()
local wyzi = fhyz.misc.util
local mr = {}

for uwgv, tmzf in ipairs({ { list = _d("XQVaCRI"), payload = wyzi.quests }, { list = _d("TgFWDgcf"), payload = wyzi.weekly } }) do
for nkk, ourv in ipairs((type(tmzf.payload) == _d("TQVRCQ4") and tmzf.payload.list) or {}) do
if type(ourv) == _d("TQVRCQ4") then
table.insert(mr, { list = tmzf.list, index = nkk, quest = ourv })
end
end
end

return mr
end

function fhyz.misc.util.questPending()
local xfbr = {}

for zfp, bg in ipairs(fhyz.misc.util.questRows()) do
local lhi = bg.quest

if not lhi.claimed and (tonumber(lhi.progress) or 0) >= (tonumber(lhi.target) or math.huge) then
table.insert(xfbr, bg)
end
end

return xfbr
end

function fhyz.misc.util.askQuests()
local vzyc = fhyz.misc.util

if os.clock() - vzyc.questAskedAt > 4 and za.RequestQuests then
vzyc.questAskedAt = os.clock()

pcall(function()
za.RequestQuests:FireServer()
end)
end

if os.clock() - vzyc.weeklyAskedAt > 4 and za.RequestPeriodicQuests then
vzyc.weeklyAskedAt = os.clock()

pcall(function()
za.RequestPeriodicQuests:FireServer(_d("TgFWDgcf"))
end)
end
end

function fhyz.misc.util.claimQuest()
local jd = fhyz.misc.util

if os.clock() < jd.questAt then
return false
end

if type(jd.quests) ~= _d("TQVRCQ4") and type(jd.weekly) ~= _d("TQVRCQ4") then
jd.askQuests()

return false
end

for fd, li in ipairs(jd.questPending()) do
if li.list == _d("TgFWDgcf") then
if za.ClaimPeriodicQuest then
pcall(function()
za.ClaimPeriodicQuest:FireServer(_d("TgFWDgcf"), li.index)
end)
end
else
pcall(function()
za.ClaimQuest:FireServer(li.index)
end)
end

jd.questAt = os.clock() + 1.2

task.delay(1, function()
jd.askQuests()
end)

return true
end

return false
end

function fhyz.misc.util.packCatalog()
local dauv = fhyz.misc.util

if dauv.packs then
return dauv.packs
end

local weto = {}
local iga, dmo = pcall(function()
return require(vf.ModuleScripts.PackData)
end)

if iga and type(dmo) == _d("TQVRCQ4") and type(dmo.Packs) == _d("TQVRCQ4") then
for pf, sit in ipairs(dmo.Packs) do
if sit.id then
table.insert(weto, { id = tostring(sit.id), name = tostring(sit.name or sit.id) })
end
end
end

dauv.packs = weto

return weto
end

function fhyz.misc.util.packUnlocked(jsd, sjnb)
if type(jsd) ~= _d("TQVRCQ4") then
return true
end

local uhbm, khb = pcall(function()
return require(vf.ModuleScripts.PackData)
end)
local emwo, ohwk = pcall(function()
return require(vf.ModuleScripts.PackSlotData)
end)

if not (uhbm and emwo) then
return true
end

local kccy = khb.ById and khb.ById[sjnb]

if not kccy then
return false
end

local sl, unm = pcall(ohwk.isPackUnlocked, kccy, jsd)

return (not sl) or unm == true
end

function fhyz.misc.util.visit(omq)
local cwx = workspace:FindFirstChild(_d("dzRwFg"))
local ujfi = cwx and cwx:FindFirstChild(omq)
local iurx = rtpa.Character
local bnnk = iurx and iurx:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))
local gagl = ujfi and (ujfi:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA")) or ujfi:FindFirstChildWhichIsA(_d("ewVAADsHSk0"), true))

if not (gagl and bnnk) then
return nil
end

local gzz = bnnk.CFrame

bnnk.CFrame = CFrame.new((gagl.CFrame * CFrame.new(0, 0, -5)).Position)

return gzz
end

function fhyz.misc.util.returnTo(wpac)
local pqoo = rtpa.Character
local zfc = pqoo and pqoo:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if zfc and wpac then
zfc.CFrame = wpac
end
end

function fhyz.misc.util.applyPacks(px, ei)
local eggs = fhyz.misc.util

if os.clock() < eggs.packAt then
return false, _d("bgVaEUsHGFQLXgAFEhY")
end

local gtb = eggs.currentProfile()

if not gtb then
return false, _d("awFSAQIIXxkdXBAZRkhLC1UMBwMYFERHFxJGWV4FWgtLD1YZBRMWDgVXVwAd")
end

if ei and (tonumber(gtb.packSlots) or 1) < 2 then
return false, _d("aghcEUtUGFcBVgEYRkxRARMAExJKWERDBAgNGEoIXBFLAVlUAUMEGBUW")
end

if not (za.OpenPackShop and za.EquipPack) then
return false, _d("bQxWRRsHW1JEQA0EFhhQFxMLBBIYUAoTEQMPSxkDUggORk5cFkAMBAgW")
end

eggs.packAt = os.clock() + 8

task.spawn(function()
local pea = eggs.visit(_d("dwtRCQ4VS1AKVBY"))

if not pea then
return
end

pcall(function()
za.OpenPackShop:FireServer(_d("SQVQDjQLXUsHWwQFEg"))
end)

task.wait(1.2)

if px then
pcall(function()
za.EquipPack:FireServer(px, 1)
end)
end

if ei then
task.wait(0.8)

pcall(function()
za.EquipPack:FireServer(ei, 2)
end)
end

task.wait(0.8)
eggs.returnTo(pea)
eggs.forgetProfile()
end)

return true
end

function fhyz.misc.util.accScore(rhid)
local aflc = rhid.effects or {}

return (aflc.luckBonus or 0) * 10
+ ((aflc.luckMult or 1) - 1) * 200
+ ((aflc.borderLuckMult or 1) - 1) * 200
- ((aflc.rollCdMult or 1) - 1) * 30
end

function fhyz.misc.util.accCatalog()
local mai = fhyz.misc.util

if mai.accessories then
return mai.accessories
end

local ymw = {}

for uho, ezgv in ipairs({ _d("eAdQABgVV0sddwQfBw"), _d("eAdQABgVV0sddwQfBwo") }) do
local vmqd, udud = pcall(function()
return require(vf.ModuleScripts[ezgv])
end)

if vmqd and type(udud) == _d("TQVRCQ4") and type(udud.Accessories) == _d("TQVRCQ4") then
for ojc, qz in ipairs(udud.Accessories) do
if qz.id then
table.insert(ymw, {
id = tostring(qz.id),
name = tostring(qz.name or qz.id),
shop = uho,

shopName = uho == 1 and _d("eAdQABgVV0sdEzYDCUg") or _d("dB1AEQ4UUVYRQEUmB1Y"),
raidable = qz.raidShopOnly == true,
hidden = qz.hidden == true,
requirements = qz.requirements or {},
score = fhyz.misc.util.accScore(qz),
})
end
end
end
end

mai.accessories = ymw

return ymw
end

function fhyz.misc.util.accOwned(bvt)
local mm = {}

for xob, axcp in ipairs((bvt and bvt.accessories) or {}) do
mm[tostring(axcp)] = true
end

return mm
end

function fhyz.misc.util.accMeets(ubkz, ozt)
for ncwh, sph in ipairs(ozt.requirements) do
local oooy = ubkz.cards and ubkz.cards[sph.cardId]
local ycks = type(oooy) == _d("TQVRCQ4") and (tonumber(oooy[sph.borderLevel]) or 0) or 0

if ycks < (tonumber(sph.amount) or 0) then
return false
end
end

return true
end

function fhyz.misc.util.accPlan(ef)
local ek = fhyz.misc.util
local ekrq = ek.accOwned(ef)
local rd = {}

for swol, att in ipairs(ek.accCatalog()) do
if not ekrq[att.id] and not att.raidable and not att.hidden and ek.accMeets(ef, att) then
local saza = rd[att.shop]

if not saza or att.score > saza.score then
rd[att.shop] = att
end
end
end

return rd
end

function fhyz.misc.util.accPicks(gth)
local lguk = fhyz.misc.util
local kv = lguk.accOwned(gth)
local lfoh, vie

for eqq, ihh in ipairs(lguk.accCatalog()) do
if kv[ihh.id] then
if not lfoh or ihh.score > lfoh.score then
lfoh = ihh
end
elseif not ihh.raidable and not ihh.hidden and lguk.accMeets(gth, ihh) then
if not vie or ihh.score > vie.score then
vie = ihh
end
end
end

return lfoh, vie
end

function fhyz.misc.util.equipBest()
local gyk = fhyz.misc.util
local tq = gyk.currentProfile()

if not tq or not za.EquipAccessory then
return false
end

local bufj = gyk.accPicks(tq)

if not bufj or tq.equippedAccessory == bufj.id then
return bufj ~= nil
end

pcall(function()
za.EquipAccessory:FireServer(bufj.id)
end)

task.delay(1.5, function()
gyk.forgetProfile()
end)

return true
end

function fhyz.misc.util.buyBest()
local avrt = fhyz.misc.util

if os.clock() < avrt.accAt then
return false, _d("bgVaEUsHGFQLXgAFEhY")
end

if rk.busy(1) or rk.busy(2) then
avrt.accNote = _d("cAoTBEsEWU0QXwBLSxhYREANBBYYTRZaFUsRV0wIV0UOCFwZDUc")
return false, _d("cAoTBEsEWU0QXwBLSxhYREANBBYYTRZaFUsRV0wIV0UOCFwZDUdL")
end

local mvz = avrt.currentProfile()

if not mvz then
avrt.accNote = _d("awFSAQIIXxkdXBAZRkhLC1UMBwMYFEREDAcKGE0WSkUKAVlQChMMBUZZGRdWBgQIXA")
return false, _d("awFSAQIIXxkdXBAZRkhLC1UMBwMYFERHFxJGWV4FWgtLD1YZBRMWDgVXVwAd")
end

local yimf = avrt.accPlan(mvz)
local ozu = {}

for gqba = 1, 2 do
if yimf[gqba] then
table.insert(ozu, yimf[gqba].name)
end
end

if #ozu == 0 then
avrt.accNote = _d("dwtHDQIIXxkKVhJLE1ZVC1AODgIYQAFHRUZGTFEBEwYKFFxKRFUKGUZRTURSFw5GVlYQEwwFRkxRARMGBApUXAdHDAQI")
return false, _d("dwtHDQIIXxkKVhJLBVlXRFEASxNWVQtQDg4CGEABR0VGRkxRARMGChRcSkRVChlGUU1EUhcORlZWEBMMBUZMUQETBgQKVFwHRwwECBY")
end

avrt.accAt = os.clock() + 12
avrt.accNote = _d("bgVfDgIIXxkQXEUfDl0ZB1wQBRJdS0RVChlG") .. table.concat(ozu, _d("GQVdAUs"))

task.spawn(function()
for tccf = 1, 2 do
local drep = yimf[tccf]

if drep then
local nvi = tccf == 1 and _d("SRFBFh4PTFwAVw") or _d("TgVVAw4KVVgKVgQfFU9YAlUABxU")
local kj = tccf == 1 and za.OpenAccessoryShop or za.OpenAccessoryShop2
local lucc = tccf == 1 and za.BuyAccessory or za.BuyAccessory2
local xsmu = nvi and avrt.visit(nvi) or nil

if not xsmu then
local byvg = workspace:FindFirstChild(_d("dzRwFg"))
local qk = byvg and byvg:FindFirstChild(nvi)

if qk and os.clock() - (avrt.worldAskedAt or 0) > 25 then

avrt.worldAskedAt = os.clock()
avrt.accNote = _d("egxSFwoFTFwWEwsEEhhLAVIBEkYVGRBBHAIIXxkFVAQCCBhKDFwXHwpB")
elseif not qk and os.clock() - (avrt.worldAskedAt or 0) > 25 then

avrt.worldAskedAt = os.clock()
avrt.accNote = _d("dwsTBgQTVk0BQUUCCBhNDFoWSxFXSwhXRUZGTFgPWgsMRkxRARMJBARaQERHAAcDSFYWRw")

pcall(function()
za.TeleportToWorld:FireServer(_d("VQtRBxI"))
end)

task.wait(4.5)
xsmu = avrt.visit(nvi)
end
end

if xsmu and kj and lucc then

task.wait(0.9)

pcall(function()
kj:FireServer()
end)

task.wait(1.2)

pcall(function()
lucc:FireServer(drep.id)
end)

task.wait(0.9)
avrt.returnTo(xsmu)
avrt.accNote = _d("ewtGAgMSGA") .. tostring(drep.name)
elseif not xsmu then
avrt.accNote = _d("egtGCQ9GVlYQExcOB1tRREcNDkZbVhFdEQ4UGBRERxcSRlleBVoLSw9WGQUTCAQLXVcQ")
end

task.wait(0.6)
end
end

avrt.forgetProfile()

for tlhc = 1, 8 do
if type(avrt.profile) == _d("TQVRCQ4") then
break
end

avrt.askProfile()
task.wait(0.7)
end

avrt.equipBest()
end)

return true, table.concat(ozu, _d("FUQ"))
end

function fhyz.misc.util.indexText()
local ivj = fhyz.misc.util

if type(ivj.profile) ~= _d("TQVRCQ4") then
return _d("awFSAQIIXxkdXBAZRltYFldFAghcXBwdS0U")
end

local rch = ivj.indexPending(ivj.profile)
local fzpl = 0

for feo, wnkm in pairs(ivj.profile.indexMilestones or {}) do
if wnkm then
fzpl = fzpl + 1
end
end

local nst = tostring(ivj.indexedTotal(ivj.profile)) .. _d("GQdSFw8VGFAKVwATA1wVRA") .. tostring(fzpl) .. _d("GQtVRVhWGEsBRAQZAksZB18EAgtdXQ")

if #rch > 0 then
nst = nst .. _d("MzZWBA8fAhk") .. table.concat(rch, _d("FUQ"))
end

return nst
end

function fhyz.misc.util.achText()
local dfm = fhyz.misc.util

if type(dfm.ach) ~= _d("TQVRCQ4") then
return _d("awFSAQIIXxkFUA0CA05cCVYLHxUWF0o")
end

local xyo = dfm.achPending()
local pvb = 0

for yqf, ydmt in ipairs(dfm.ach.chains or {}) do
for skc in ipairs(ydmt.levels or {}) do
pvb = pvb + 1
end
end

return tostring(#xyo) .. _d("GQtVRQ") .. tostring(pvb) .. _d("GQVQDQIDTlwJVgsfFRhLAVIBEg")
end

function fhyz.misc.util.questText()
local hif = fhyz.misc.util

if type(hif.quests) ~= _d("TQVRCQ4") and type(hif.weekly) ~= _d("TQVRCQ4") then
return _d("awFSAQIIXxkVRgAYEksXSh0")
end

local gwhu, lit = 0, 0

for cxur, cul in ipairs(hif.questPending()) do
if cul.list == _d("TgFWDgcf") then
lit = lit + 1
else
gwhu = gwhu + 1
end
end

local cqwe = type(hif.quests) == _d("TQVRCQ4") and #(hif.quests.list or {}) or 0
local payh = type(hif.weekly) == _d("TQVRCQ4") and #(hif.weekly.list or {}) or 0

return tostring(gwhu) .. _d("GQtVRQ") .. tostring(cqwe) .. _d("GQBSDAcfGEsBUgESbA")
.. tostring(lit) .. _d("GQtVRQ") .. tostring(payh) .. _d("GRNWAAAKQRkWVgQPHw")
end

function fhyz.misc.util.packText()
local zt = fhyz.misc.util
local lne = zt.profile

if type(lne) ~= _d("TQVRCQ4") then
return _d("awFSAQIIXxkdXBAZRkhYB1gWRUgW")
end

local function qyvs(ity)
for re, kbxi in ipairs(zt.packCatalog()) do
if kbxi.id == ity then
return kbxi.name
end
end

return tostring(ity)
end

local lxt = _d("aghcEUtXAhk") .. qyvs(lne.equippedPack)

if (tonumber(lne.packSlots) or 1) >= 2 then
lxt = lxt .. _d("MzdfCh9GCgNE") .. qyvs(lne.equippedPack2)
else
lxt = lxt .. _d("MzdfCh9GCgNEVAQGA0hYF0BFBQlMGQtECw4C")
end

return lxt
end

function fhyz.misc.util.accText()
local uliu = fhyz.misc.util
local hxf = uliu.profile

if type(hxf) ~= _d("TQVRCQ4") then
return _d("awFSAQIIXxkdXBAZRllaB1YWGAlKUAFAS0VI")
end

local uaw = uliu.accPicks(hxf)
local qna = uliu.accPlan(hxf)
local aa = _d("VwtdAA")

for sij, mmki in ipairs(uliu.accCatalog()) do
if mmki.id == hxf.equippedAccessory then
aa = mmki.name .. _d("GUw") .. mmki.shopName .. _d("EA")
end
end

local unbg = _d("fBVGDBsWXV1eEw") .. aa

if uaw then
unbg = unbg .. _d("MyZWFh9GV04KVgFRRg") .. uaw.name
end

unbg = unbg .. _d("MyVQBg4VS1YWSkU4DldJXhM") .. (qna[1] and qna[1].name or _d("VwtHDQIIXxkKVhI"))
unbg = unbg .. _d("MylKFh8DSlALRhZLK1lXXhM") .. (qna[2] and qna[2].name or _d("VwtHDQIIXxkKVhI"))

if uliu.accNote then
unbg = unbg .. _d("MyhSFh9GTEsNQ19L") .. uliu.accNote
end

return unbg
end

fhyz.misc.util.hook()
fhyz.misc.util.askProfile()

fhyz.misc.indexSection = fhyz.misc.tab:Section({
Side = _d("dQFVEQ"),
})

fhyz.misc.indexSection:Header({
Name = _d("egVBAUsvVl0BS0Wb+au+"),
})

fhyz.misc.indexToggle = fhyz.misc.indexSection:Toggle({
Name = _d("eBFHCksFVFgNXg"),
Default = false,
Callback = function(jicg)
fhyz.misc.util.indexOn = jicg
fhyz.misc.util.indexAt = 0

fhyz.misc.util.indexAsked = nil
end,
}, _d("WBFHCjQFVFgNXjpZ"))

fhyz.misc.indexSection:Button({
Name = _d("eghSDAZGVlYT"),
Callback = function()
local hin = fhyz.misc.util

hin.indexAt = 0
hin.indexAsked = nil

if not hin.claimIndex() then
tes:Notify({
Title = _d("egVBAUsvVl0BSw"),
Description = _d("dwsTCAIKXUoQXAsORlFKREEACgJBGRBcRQgKWVAJHQ"),
Lifetime = 5,
})
end
end,
})

fhyz.misc.claimSection = fhyz.misc.tab:Section({
Side = _d("dQFVEQ"),
})

fhyz.misc.claimSection:Header({
Name = _d("eAdbDA4QXVQBXREYRh4ZNUYAGBJLGZSs6u0"),
})

fhyz.misc.achToggle = fhyz.misc.claimSection:Toggle({
Name = _d("eBFHCksFVFgNXkUKBVBQAUUABgNWTRc"),
Default = false,
Callback = function(azw)
fhyz.misc.util.achOn = azw
fhyz.misc.util.achAt = 0

if azw and za.RequestAchievements then
pcall(function()
za.RequestAchievements:FireServer()
end)
end
end,
}, _d("WBFHCjQFVFgNXjoKBVBQAUUABgNWTRc"))

fhyz.misc.questToggle = fhyz.misc.claimSection:Toggle({
Name = _d("eBFHCksFVFgNXkUaE11KEEA"),
Default = false,
Callback = function(cpnj)
fhyz.misc.util.questOn = cpnj
fhyz.misc.util.questAt = 0
fhyz.misc.util.questAskedAt = 0
fhyz.misc.util.weeklyAskedAt = 0

if cpnj then
fhyz.misc.util.askQuests()
end
end,
}, _d("WBFHCjQFVFgNXjoaE11KEEA"))

fhyz.misc.claimSection:Button({
Name = _d("eghSDAZGWVUIEwsEEQ"),
Callback = function()
local rcxa = fhyz.misc.util

rcxa.achAt = 0
rcxa.questAt = 0

local fpn = rcxa.claimAchievement()
local wlg = rcxa.claimQuest()

if not (fpn or wlg) then
tes:Notify({
Title = _d("eAdbDA4QXVQBXREYRh4ZNUYAGBJL"),
Description = _d("dwtHDQIIXxkNQEUZA1ldHRMRBEZbVQVaCEU"),
Lifetime = 5,
})
end
end,
})

fhyz.misc.packSection = fhyz.misc.tab:Section({
Side = _d("dQFVEQ"),
})

fhyz.misc.packSection:Header({
Name = _d("egVBAUs2WVoPQEWb+baN"),
})

fhyz.misc.packSection:Paragraph({
Header = _d("bRNcRRgKV00X"),
Body = _d("aQ1QDhhGWUkUXxxLCVZVHRMSAwNWGR1cEEsWSlwXQEUqFkhVHRMVCgVTSkgTBw4FWUwXVkUfDl0ZF0QMHwVQGRNSCQAVGE0LExEDAxhUAUEGAwdWTUo"),
})

local enyp = {}
local otyo = {}

for syd, ayu in ipairs(fhyz.misc.util.packCatalog()) do
table.insert(enyp, ayu.name)
otyo[ayu.name] = ayu.id
end

fhyz.misc.packSlotOne = nil
fhyz.misc.packSlotTwo = nil

fhyz.misc.packDropdownOne = fhyz.misc.packSection:Dropdown({
Name = _d("aghcEUtX"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = enyp,
Callback = function(nqv)
local iavg = type(nqv) == _d("TQVRCQ4") and nqv[1] or nqv

fhyz.misc.packSlotOne = otyo[tostring(iavg)]
end,
}, _d("SghcETRX"))

fhyz.misc.packDropdownTwo = fhyz.misc.packSection:Dropdown({
Name = _d("aghcEUtU"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = enyp,
Callback = function(wjyr)
local iyin = type(wjyr) == _d("TQVRCQ4") and wjyr[1] or wjyr

fhyz.misc.packSlotTwo = otyo[tostring(iyin)]
end,
}, _d("SghcETRU"))

fhyz.misc.packSection:Button({
Name = _d("eBRDCRJGSFgHWBY"),
Callback = function()
local rt = fhyz.misc.util
local jacz = fhyz.misc.packSlotOne
local qglm = fhyz.misc.packSlotTwo

if not jacz then
tes:Notify({
Title = _d("egVBAUs2WVoPQA"),
Description = _d("aQ1QDksHGEkFUA5LAFdLREAJBBIYCERVDBkVTBc"),
Lifetime = 5,
})

return
end

local jjn, jbxm = rt.applyPacks(jacz, qglm)

if not jjn then
tes:Dialog({
Title = _d("egVBAUs2WVoPQA"),
Description = jbxm,
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})
end
end,
})

fhyz.misc.cards = {
rarityLabels = { _d("eAhf"), _d("dwtBCAoK"), _d("fgtfAQ"), _d("awVaCwkJTw"), _d("bApaEw4US1gI") },
borderOf = { Normal = 1, Gold = 2, Rainbow = 3, Universal = 4 },
mergeOn = false,
deconOn = false,
mergeWanted = {},
deconWanted = {},
mergeAt = 0,
deconAt = 0,
mergeDone = _d("dwtHDQIIXxkXVgsfRkFcEA"),
deconDone = _d("dwtHDQIIXxkXVgsfRkFcEA"),

inFlight = false,

interval = 3600,
manualGap = 20,
manualAt = 0,

protectedPrefixes = { weather = true, boss = true, raid = true, wb = true, fish = true, hw = true, event = true },

deconExceptions = { weather_sayaka = true, weather_caesar = true },

deconConfirmed = false,
burnAskedAt = 0,
}

function fhyz.misc.cards.isProtected(xfqc, fev)
local btrm = fhyz.misc.cards
local lrc = tostring(xfqc or _d(""))
local yrxa = lrc:match(_d("Z0xoBEYcCBRdbk5COQ"))

if not (yrxa and btrm.protectedPrefixes[yrxa]) then
return false
end

return not (btrm.deconExceptions[lrc] and fev == 2)
end

function fhyz.misc.cards.burnAllowed(um)
local gewb = fhyz.misc.cards
local ajcl = gewb.wantedFor(_d("XQFQCgUxWVcQVgE"))

if not (ajcl == nil or ajcl[3] or ajcl[4]) then
gewb.deconConfirmed = false

return true
end

if gewb.deconConfirmed then
return true
end

if um then
return false
end

if os.clock() < (gewb.burnAskedAt or 0) then
return false
end

gewb.burnAskedAt = os.clock() + 20

tes:Dialog({
Title = _d("exFBC0s0WVAKUQocRldLRGYLAhBdSxdSCUsFWUsAQFo"),
Description = _d("eBFHCksCXVoLXRYfFE1aEBMWDghcSkRWEw4UQRkHXBUSRlFXREcNDkZVWBBQDQIIXxkWXBIYRllXABMGCghWVhATBw5GTVcAXAsOSBg")
.. _d("bgFSEQMDShVEUQoYFRQZFlIMD0ZaVhdASUsRV0sIV0UJCUtKSBMDAhVQUApUSUsuWVUIXBIOA1YZBV0BSwNOXApHRQgHSl0XEwQZAxhRAV8BSwRZWg8TAAISUFwWExIKHxY"),
Buttons = {
{
Name = _d("exFBC0sSUFwJ"),
Callback = function()
gewb.deconConfirmed = true
gewb.deconAt = 0
gewb.manualAt = 0

pcall(function()
fhyz.misc.deconToggle:UpdateState(true)
end)
end,
},
{
Name = _d("egVdBg4K"),
Callback = function()
pcall(function()
fhyz.misc.deconToggle:UpdateState(false)
end)
end,
},
},
})

return false
end

function fhyz.misc.cards.wantedFor(crs)
local pn = fhyz.misc.cards[crs] or {}

if next(pn) == nil or pn[0] then
return nil
end

return pn
end

function fhyz.misc.cards.npcFor(eyc)
local iajr = workspace:FindFirstChild(_d("dzRwFg"))

if not iajr then
return nil
end

local wwos = eyc and _d("XxFAADQISFo") or _d("XQFQCgUVTEsRUBE0CEha")

for gqz, uy in ipairs(iajr:GetChildren()) do
if uy:GetAttribute(_d("dzRwLA8")) == wwos then
return uy
end
end

local uury = eyc and { _d("dgtDDQcf"), _d("VgtDCRID") } or { _d("agxSEAcH"), _d("cQVFAD8RV30FVxY") }

for gaz, gmga in ipairs(iajr:GetChildren()) do
for gfkw, krry in ipairs(uury) do
if gmga.Name == krry then
return gmga
end
end
end

local vhpo = eyc and { _d("WgVBAUsLXUsDWgsM"), _d("VgtDDQcf") } or { _d("XQFQCgUVTEsRUBECCVY"), _d("SgxSEAcH") }

for oze, fhzm in ipairs(iajr:GetChildren()) do
for tiru, jipr in ipairs(fhzm:GetDescendants()) do
if jipr:IsA(_d("bQFLEScHWlwI")) and jipr.Text ~= _d("") then
local qfv = jipr.Text:lower()

for cxf, oyoe in ipairs(vhpo) do
if qfv:find(oyoe, 1, true) then
return fhzm
end
end

break
end
end
end

return nil
end

function fhyz.misc.cards.rarityText(ifr)
local xlfv = fhyz.misc.cards.wantedFor(ifr)

if not xlfv then
return _d("eAhf")
end

local rgw = {}

for qqi, dqzb in pairs(fhyz.misc.cards.borderOf) do
if xlfv[dqzb] then
table.insert(rgw, qqi)
end
end

if #rgw == 0 then
return _d("eAhf")
end

table.sort(rgw)

return table.concat(rgw, _d("FUQ"))
end

function fhyz.misc.cards.run(ter, mjyu, iknb)
local mlo = fhyz.misc.cards
local xcf = fhyz.misc.util
local sfo = ter and _d("VAFBAg4nTA") or _d("XQFQCgUnTA")

if iknb then
if os.clock() < mlo[sfo] then
return false, _d("dwtHRQ8TXRkdVhFF")
end
elseif os.clock() < mlo.manualAt then
return false, _d("bgVaEUsHGFQLXgAFEhY")
end

if mlo.inFlight then
return false, _d("eApcEQMDShkHUhcPRkxLDUNFAhUYWAhBAAoCQRkWRgsFD1ZeSg")
end

local amp = rk.busy(1) and 1 or (rk.busy(2) and 2 or nil)
local jyb = os.clock() - (qkca.floorAt or 0) < 90
local yfau = amp ~= nil and rk.towerSlot() == amp and jyb

if amp and not yfau then
return false, _d("cAoTBEsEWU0QXwBLSxhNDFZFHxRRSURECh4KXBkBXQFLD0wX")
end

if wj.battlePending and os.time() < (wj.battlePendingUntil or 0) then
return false, _d("eERRBB8SVFxEWhZLFUxYFkcMBQEYFERHDQ5GTEsNQ0UcCU1VABMGCghbXAgTDB9I")
end

if not ter and not mlo.burnAllowed() then
return false, _d("egtdAwIUVRk2UgwFBFdOS2YLAhBdSxdSCUsAUUsXR0s")
end

local gnee = mlo.npcFor(ter)

if not gnee then
return false, ter
and _d("dgtDDQcfGFAXEwsEEhhQChMRAw9LGQlSFUtLGE0WUhMOChhNCxMNAgsYWApXRRsUXUoXEwwfRlleBVoLRQ")
or _d("bQxWRQ8DW1YKQBEZE1tNRH01KEZRSkRdCh9GUVdERw0CFRhUBUNFRkZMSwVFAAdGTFZEWhFLB1ZdREMXDhVLGQ1HRQoBWVAKHQ")
end

local ih = ter and za.OpenFuseDialog or za.OpenDeconstructDialog
local yvkc = ter and za.FuseCards or za.DeconstructCards

if not (ih and yvkc) then
return false, _d("bQxSEUsPSxkKXBFLD1YZEFsMGEZfWAlWRR0DSkoNXAtF")
end

local dnlf = ter and _d("VAFBAg4xWVcQVgE") or _d("XQFQCgUxWVcQVgE")
local mmog = mlo.wantedFor(dnlf)

mlo.manualAt = os.clock() + mlo.manualGap

if iknb then
mlo[sfo] = os.clock() + mlo.interval
end

mlo.inFlight = true

task.spawn(function()

local evwu = nil

local function jmoh(btu, rhug)
if ter then
mlo.mergeDone = btu
else
mlo.deconDone = btu
end

if rhug and iknb then
mlo[sfo] = os.clock() + 120
end

mlo.inFlight = false
end

local jep = xcf.visit(gnee.Name)

if not jep then
jmoh(_d("egxSFwoFTFwWEwwYRlZWEBMXDgdcQEQeRRkDTEsdWgsMRlFXREcSBEZVUApGEQ4VFg"), true)

return
end

task.wait(0.9)

local fzz = nil
local ap = ojk(ih.OnClientEvent, function(ngs)
if type(ngs) == _d("TQVRCQ4") then
fzz = ngs
end
end)

for cvvm = 1, 3 do
pcall(function()
ih:FireServer()
end)

for svv = 1, 20 do
if fzz then
break
end

task.wait(0.3)
end

if fzz then
break
end

task.wait(1.5)
end

ap:Disconnect()
xcf.returnTo(jep)

if type(fzz) ~= _d("TQVRCQ4") then
jmoh(_d("bQxWRQ8PWVULVEUPD1wZClwRSwdWShNWF0tLGEsBRxcSD1ZeRFoLSxJPVkReDAUTTFwXHQ"), true)

return
end

local vaw = {}

for uzpl, et in ipairs(fzz) do
local vo = tonumber(et.borderLevel)
local zon = et.cardId or et.id

if vo and (not mmog or mmog[vo])
and (ter or not fhyz.misc.cards.isProtected(zon, vo)) then
table.insert(vaw, et)
end
end

if #vaw == 0 then

fhyz.misc.cards.closeFrame(ter)
jmoh(_d("dwtHDQIIXxkQXEUYA1ZdRFUKGUY") .. fhyz.misc.cards.rarityText(dnlf) .. _d("Fw"))

return
end

if mjyu then

local enhr = {}

for ipex, fgs in ipairs(vaw) do
if (tonumber(fgs.count) or 0) >= mjyu then
table.insert(enhr, fgs)
end
end

if #enhr == 0 then
fhyz.misc.cards.closeFrame(ter)
jmoh(_d("dwsT") .. fhyz.misc.cards.rarityText(dnlf) .. _d("GRZcEksOWUpE") .. mjyu .. _d("GQdcFQIDSxkdVhFF"))

return
end

vaw = enhr

table.sort(vaw, function(jgzo, tiul)
return (tonumber(jgzo.count) or 0) < (tonumber(tiul.count) or 0)
end)

local nwu, lga = {}, 0

for dupf, jbb in ipairs(vaw) do
local bzfa = tonumber(jbb.count) or 0

if #nwu > 0 and lga + bzfa > mjyu then
break
end

table.insert(nwu, jbb)
lga = lga + bzfa
end

vaw = nwu
evwu = lga
end

local vjr = 0

fhyz.misc.cards.closeFrame(ter)

if ter then
if not mmog then

pcall(function()
yvkc:FireServer(_d("WAhf"), nil)
end)

vjr = #vaw
else
local kmhh = {}

for nru, kwg in ipairs(vaw) do
table.insert(kmhh, { kwg.cardId, tonumber(kwg.borderLevel) })
end

pcall(function()
yvkc:FireServer(_d("SgFfAAgSXV07UgkH"), kmhh)
end)

vjr = #kmhh
end
else
local hww = {}

for wguf, nytv in ipairs(vaw) do
if #hww >= 25 then
break
end

table.insert(hww, { nytv.cardId, tonumber(nytv.borderLevel), _d("WAhf") })
end

pcall(function()
yvkc:FireServer(hww)
end)

vjr = #hww
end

jmoh(_d("agFdEUs") .. tostring(vjr) .. _d("GRZcEg") .. (vjr == 1 and _d("") or _d("Sg"))
.. _d("GUw") .. fhyz.misc.cards.rarityText(dnlf) .. _d("EA")
.. (evwu and (_d("FUQ") .. tostring(evwu) .. _d("GQdSFw8V")) or _d("")))
end)

return true
end

function fhyz.misc.cards.closeFrame(kfjz)
pcall(function()
local myk = kfjz and { _d("fxFAACwTUQ"), _d("fxFAAC0UWVQB") } or { _d("fQFQCgUVTEsRUBEsE1E"), _d("fQFQCgUVTEsRUBEtFFlUAQ") }
local xuws = require(vf.ModuleScripts.MenuManager)
local oiu = qsrk:FindFirstChild(myk[1])
local vj = oiu and oiu:FindFirstChild(myk[2])

if vj then
xuws.close(vj)
end

if not kfjz then
local tur = oiu and oiu:FindFirstChild(_d("fQFQCgUVTEsRUBE5B0xcF3UXCgtd"))

if tur then
xuws.close(tur)
else
tur = qsrk:FindFirstChild(_d("fQFQCgUVTEsRUBE5B0xcF3UXCgtd"))

if tur then
xuws.close(tur)
end
end
end
end)
end

function fhyz.misc.cards.refresh(mqt)

local mgfs = mqt and fhyz.misc.mergeParagraph or fhyz.misc.deconParagraph

if not mgfs then
return
end

pcall(function()
mgfs:UpdateBody(mqt
and fhyz.misc.cards.mergeText()
or fhyz.misc.cards.deconText())
end)
end

function fhyz.misc.cards.mergeText()
local cmog = fhyz.misc.cards

return _d("awVBDB8PXUpeEw") .. cmog.rarityText(_d("VAFBAg4xWVcQVgE")) .. _d("Mw") .. cmog.mergeDone
end

function fhyz.misc.cards.deconText()
local tfp = fhyz.misc.cards

return _d("awVBDB8PXUpeEw") .. tfp.rarityText(_d("XQFQCgUxWVcQVgE")) .. _d("Mw") .. tfp.deconDone
.. _d("MzNWBB8OXUtIEwcEFUsVREEEAgIUGRNcFwcCGFsLQBZHRl5QF1sMBQEUGSxSCQcJT1wBXUUKCFwZAUUABRIYWgVBARhGWUsBEwsOEF1LREAABRIW")
end

fhyz.misc.skill = {
on = false,
at = 0,
mainWanted = {},
raidWanted = {},

mainOrder = {},
raidOrder = {},
last = _d("dwtHDQIIXxkGXBAMDkwZHVYR"),
shown = _d(""),
}

function fhyz.misc.skill.branchMap(wc)
local uyew = {}

for avm, fnnq in ipairs(lrbk.Trees[wc].branches) do
uyew[fnnq.name] = fnnq
end

return uyew
end

function fhyz.misc.skill.branchLabels(akmo)
local kzet = {}

for ukbr, kwfz in ipairs(lrbk.Trees[akmo].branches) do
table.insert(kzet, kwfz.name)
end

return kzet
end

function fhyz.misc.skill.wantedFrom(srad, dhz)
local tjzz = {}
local ttlo = fhyz.misc.skill.branchMap(dhz)

if type(srad) == _d("TQVRCQ4") then
for dpe, aeo in pairs(srad) do
if aeo and ttlo[tostring(dpe)] then
tjzz[ttlo[tostring(dpe)].id] = true
end
end
end

return tjzz
end

function fhyz.misc.skill.ordered(aalu, mj)
local sef = {}
local rdn = {}

for ojz, owzj in ipairs(mj or {}) do
if aalu[owzj] then
table.insert(sef, owzj)
rdn[owzj] = true
end
end

for bcke in pairs(aalu) do
if not rdn[bcke] then
table.insert(sef, bcke)
end
end

return sef
end

function fhyz.misc.skill.branchById(ygar)
local dgb = {}

for yzi, hno in ipairs(lrbk.Trees[ygar].branches) do
dgb[hno.id] = hno
end

return dgb
end

function fhyz.misc.skill.upgrade()
local zftd = fhyz.misc.skill
local awwh = fhyz.misc.util
local hll = awwh.currentProfile and awwh.currentProfile()

if type(hll) ~= _d("TQVRCQ4") then
return false, _d("dwsTFRkJXlAIVkUSA0wX")
end

local stu = hll.skillTrees or {}
local ymmv = { [1] = zftd.mainOrder, [2] = zftd.raidOrder }
local jqa = nil

for mpiy, chrh in ipairs(lrbk.Trees) do
local wwt = stu[chrh.id]
local wjrg = tonumber(hll[chrh.pointsField or _d("Sg9aCQc2V1AKRxY")]) or 0
local qdzd = fhyz.misc.skill.branchById(mpiy)

if type(wwt) == _d("TQVRCQ4") and wjrg > 0 then
for aqcw, lwfs in ipairs(ymmv[mpiy] or {}) do
local ktbz = qdzd[lwfs]

if ktbz and not jqa then
local avl = lrbk.getBranchLevel(stu, chrh.id, ktbz.id) or 0
local mncl = avl + 1

if mncl <= ktbz.levels then
local puh = ktbz.id .. mncl
local bv = 1

if type(ktbz.costs) == _d("TQVRCQ4") and tonumber(ktbz.costs[mncl]) then
bv = tonumber(ktbz.costs[mncl])
elseif tonumber(ktbz.cost) then
bv = tonumber(ktbz.cost)
end

if bv <= wjrg and lrbk.isAvailable(stu, chrh.id, puh) then
jqa = { tree = chrh.id, node = puh, name = ktbz.name, level = mncl }
end
end
end
end
end
end

if not jqa then
return false, _d("dwtHDQIIXxkQXEUJE0EZHVYRRQ")
end

za.BuySkillNode:FireServer(jqa.tree, jqa.node)

if awwh.askProfile then
pcall(awwh.askProfile)
end

zftd.last = _d("ewtGAgMSGA") .. jqa.name .. _d("GQ") .. tostring(jqa.level)

return true
end

function fhyz.misc.skill.text()
local qfq = fhyz.misc.skill
local wpj = fhyz.misc.util
local olk = wpj.currentProfile and wpj.currentProfile()

if type(olk) ~= _d("TQVRCQ4") then
return _d("aQtaCx8VAhlbOQ") .. qfq.last
end

local tt = olk.skillTrees or {}
local nfi = {}

local jm = { [1] = qfq.mainOrder, [2] = qfq.raidOrder }

for dae, ppov in ipairs(lrbk.Trees) do
local thxl = tonumber(olk[ppov.pointsField or _d("Sg9aCQc2V1AKRxY")]) or 0
local jie = {}
local gwgp = fhyz.misc.skill.branchById(dae)

for anwu, nep in ipairs(jm[dae] or {}) do
local lmz = gwgp[nep]

if lmz then
local pa = lrbk.getBranchLevel(tt, ppov.id, lmz.id) or 0
table.insert(jie, lmz.name .. _d("GQ") .. tostring(pa) .. _d("Fg") .. tostring(lmz.levels))
end
end

nfi[#nfi + 1] = ppov.name .. _d("A0Q") .. tostring(thxl) .. _d("GRRHFg")
.. (#jie > 0 and (_d("GUkT") .. table.concat(jie, _d("FUQ"))) or _d("GUkTCwQSUFAKVEUbD1tSAVc"))
end

nfi[#nfi + 1] = qfq.last

return table.concat(nfi, _d("Mw"))
end

fhyz.misc.mergeSection = fhyz.misc.tab:Section({
Side = _d("dQFVEQ"),
})

fhyz.misc.mergeSection:Header({
Name = _d("dAFBAg5GyKbDnw"),
})

fhyz.misc.mergeToggle = fhyz.misc.mergeSection:Toggle({
Name = _d("eBFHCksLXUsDVg"),
Default = false,
Callback = function(egkp)
local qzi = fhyz.misc.cards

qzi.mergeOn = egkp

qzi.mergeAt = (egkp and pfzf.loading) and (os.clock() + qzi.interval) or 0
end,
}, _d("WBFHCjQLXUsDVg"))

fhyz.misc.mergeDropdown = fhyz.misc.mergeSection:Dropdown({
Name = _d("awVBDB8PXUo"),
Search = false,
Multi = true,
Required = false,
Default = { _d("eAhf") },
Options = fhyz.misc.cards.rarityLabels,
Callback = function(dmzx)
local ml = {}

if type(dmzx) == _d("TQVRCQ4") then
for hkh, oxqu in pairs(dmzx) do
if oxqu then
if hkh == _d("eAhf") then
ml[0] = true
else
ml[fhyz.misc.cards.borderOf[tostring(hkh)]] = true
end
end
end
end

fhyz.misc.cards.mergeWanted = ml
fhyz.misc.cards.refresh(true)
end,
}, _d("SwVBDB8PXUo"))

fhyz.misc.mergeSection:Button({
Name = _d("dAFBAg5GVlYT"),
Callback = function()
local nvyv, nwb = fhyz.misc.cards.run(true)

if not nvyv then
tes:Notify({
Title = _d("dAFBAg4"),
Description = nwb,
Lifetime = 6,
})
end
end,
})

fhyz.misc.mergeSection:Button({
Name = _d("dAFBAg5GAQk"),
Callback = function()

local qrx, onpc = fhyz.misc.cards.run(true, 90)

if not qrx then
tes:Notify({
Title = _d("dAFBAg5GAQk"),
Description = onpc,
Lifetime = 6,
})
end
end,
})

fhyz.misc.mergeParagraph = fhyz.misc.mergeSection:Paragraph({
Header = _d("ahBSER4V"),
Body = fhyz.misc.cards.mergeText(),
})

fhyz.misc.accSection = fhyz.misc.tab:Section({
Side = _d("aw1UDR8"),
})

fhyz.misc.accSection:Header({
Name = _d("eAdQABgVV0sNVhZLlqer6g"),
})

fhyz.misc.accToggle = fhyz.misc.accSection:Toggle({
Name = _d("eBFHCksEXUoQEwQIBV1KF1wXEg"),
Default = false,
Callback = function(zwl)
fhyz.misc.util.accOn = zwl
fhyz.misc.util.accAt = 0
end,
}, _d("WBFHCjQEXUoQbAQIBV1KF1wXEg"))

fhyz.misc.accBuyToggle = fhyz.misc.accSection:Toggle({
Name = _d("eBFHCksETUBEUQAYEg"),
Default = false,
Callback = function(ll)
fhyz.misc.util.accBuyOn = ll
fhyz.misc.util.accBuyAt = 0
fhyz.misc.util.accAt = 0
end,
}, _d("WBFHCjQETUA7UQAYEg"))

fhyz.misc.accSection:Button({
Name = _d("exFKRQkDS00"),
Callback = function()
local kih, agx = fhyz.misc.util.buyBest()

if not kih then
tes:Notify({
Title = _d("eAdQABgVV0sNVhY"),
Description = agx,
Lifetime = 6,
})
end
end,
})

fhyz.misc.accSection:Button({
Name = _d("fBVGDBtGWlwXRw"),
Callback = function()
if not fhyz.misc.util.equipBest() then
tes:Notify({
Title = _d("eAdQABgVV0sNVhY"),
Description = _d("dwtHDQIIXxkGVhEfA0oZDUBFBBFWXAATHA4SFg"),
Lifetime = 5,
})
end
end,
})

fhyz.misc.accParagraph = fhyz.misc.accSection:Paragraph({
Header = _d("ahBSER4V"),
Body = fhyz.misc.util.accText(),
})

fhyz.misc.claimInfo = fhyz.misc.tab:Section({
Side = _d("aw1UDR8"),
})

fhyz.misc.claimInfo:Header({
Name = _d("dA1ABg4KVFgKVgoeFQ"),
})

fhyz.misc.indexParagraph = fhyz.misc.claimInfo:Paragraph({
Header = _d("egVBAUsvVl0BSw"),
Body = fhyz.misc.util.indexText(),
})

fhyz.misc.achParagraph = fhyz.misc.claimInfo:Paragraph({
Header = _d("eAdbDA4QXVQBXREY"),
Body = fhyz.misc.util.achText(),
})

fhyz.misc.questParagraph = fhyz.misc.claimInfo:Paragraph({
Header = _d("aBFWFh8V"),
Body = fhyz.misc.util.questText(),
})

fhyz.misc.packParagraph = fhyz.misc.claimInfo:Paragraph({
Header = _d("aQVQDhg"),
Body = fhyz.misc.util.packText(),
})

fhyz.misc.skillSection = fhyz.misc.tab:Section({
Side = _d("aw1UDR8"),
})

fhyz.misc.skillSection:Header({
Name = _d("ag9aCQdGbEsBVkWb+bSK"),
})

fhyz.misc.skillToggle = fhyz.misc.skillSection:Toggle({
Name = _d("eBFHCksTSF4WUgEO"),
Default = false,
Callback = function(bnd)
local zrga = fhyz.misc.skill

if bnd and not (next(zrga.mainWanted) or next(zrga.raidWanted)) then
zrga.on = false

pcall(function()
fhyz.misc.skillToggle:UpdateState(false)
end)

tes:Dialog({
Title = _d("aQ1QDksHGFsWUgsIDhhfDUEWHw"),
Description = _d("egxcChgDGFgQEwkOB0tNRFwLDkZaSwVdBgNGUVdERw0ORnVYDV1FHxRdXERcF0s0WVAAExEZA10ZAEEKGwJXTgoTSEs")
.. _d("eBFHCksTSF4WUgEORldXCEpFGBZdVwBARRsJUVcQQEUcDl1LARMcBBMYSQtaCx9GUU1K"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})

return
end

zrga.on = bnd
zrga.at = 0
end,
}, _d("WBFHCjQTSF4WUgEO"))

fhyz.misc.skillMainDropdown = fhyz.misc.skillSection:Dropdown({
Name = _d("dAVaC0sSSlwB"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = fhyz.misc.skill.branchLabels(1),
Callback = function(mv)
local lfpr = fhyz.misc.skill
local avy = lfpr.wantedFrom(mv, 1)

lfpr.mainWanted = avy
lfpr.mainOrder = lfpr.ordered(avy, lfpr.mainOrder)
lfpr.shown = _d("")
end,
}, _d("VAVaCzQSSlwB"))

fhyz.misc.skillRaidDropdown = fhyz.misc.skillSection:Dropdown({
Name = _d("awVaAUsSSlwB"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = fhyz.misc.skill.branchLabels(2),
Callback = function(yzn)
local cnr = fhyz.misc.skill
local lbz = cnr.wantedFrom(yzn, 2)

cnr.raidWanted = lbz
cnr.raidOrder = cnr.ordered(lbz, cnr.raidOrder)
cnr.shown = _d("")
end,
}, _d("SwVaATQSSlwB"))

pcall(function()
fhyz.misc.skillMainDropdown:UpdateSelection({})
end)

pcall(function()
fhyz.misc.skillRaidDropdown:UpdateSelection({})
end)

fhyz.misc.skillParagraph = fhyz.misc.skillSection:Paragraph({
Header = _d("ahBSER4V"),
Body = fhyz.misc.skill.text(),
})

task.spawn(function()
local fvz = fhyz.misc.util

while wyvs() do
if fvz.indexOn or fvz.achOn or fvz.questOn or fvz.accOn or fvz.accBuyOn then
fvz.currentProfile()
end

if fvz.indexOn then
fvz.claimIndex()
end

if fvz.achOn then
fvz.claimAchievement()
end

if fvz.questOn then

if os.clock() - fvz.questAskedAt > 20 or os.clock() - fvz.weeklyAskedAt > 20 then
fvz.askQuests()
end

fvz.claimQuest()
end

if fvz.accOn and os.clock() >= fvz.accAt then
fvz.accAt = os.clock() + 3
fvz.equipBest()
end

local kx = fhyz.misc.cards

if not kx.inFlight then
if kx.mergeOn and os.clock() >= kx.mergeAt then
kx.run(true, nil, true)
elseif kx.deconOn and os.clock() >= kx.deconAt then
kx.run(false, nil, true)
end
end

if kx.mergeDone ~= kx.mergeShown then
kx.mergeShown = kx.mergeDone

pcall(function()
fhyz.misc.mergeParagraph:UpdateBody(fhyz.misc.cards.mergeText())
end)
end

if kx.deconDone ~= kx.deconShown then
kx.deconShown = kx.deconDone

pcall(function()
fhyz.misc.deconParagraph:UpdateBody(fhyz.misc.cards.deconText())
end)
end

local jkxo = fhyz.misc.skill

if jkxo.on and os.clock() >= jkxo.at then

jkxo.at = os.clock() + 2
jkxo.upgrade()
end

local vvu = fhyz.misc.skill.text()

if jkxo.shown ~= vvu then
jkxo.shown = vvu

pcall(function()
fhyz.misc.skillParagraph:UpdateBody(vvu)
end)
end

if fvz.accBuyOn and os.clock() >= fvz.accBuyAt then

local coqn = fvz.buyBest()

fvz.accBuyAt = os.clock() + (coqn and 45 or 10)
end

local xigg = {
{ key = _d("UApXABM"), paragraph = fhyz.misc.indexParagraph, value = fvz.indexText() },
{ key = _d("WAdb"), paragraph = fhyz.misc.achParagraph, value = fvz.achText() },
{ key = _d("SBFWFh8"), paragraph = fhyz.misc.questParagraph, value = fvz.questText() },
{ key = _d("SQVQDg"), paragraph = fhyz.misc.packParagraph, value = fvz.packText() },
{ key = _d("WAdQ"), paragraph = fhyz.misc.accParagraph, value = fvz.accText() },
}

for skof, uqs in ipairs(xigg) do
if uqs.paragraph and fvz.shown[uqs.key] ~= uqs.value then
fvz.shown[uqs.key] = uqs.value

pcall(function()
uqs.paragraph:UpdateBody(uqs.value)
end)
end
end

task.wait(0.75)
end
end)

local ibl = tqms:Section({
Side = _d("aw1UDR8"),
})

ibl:Paragraph({
Header = _d("fw1ADQIIXw"),
Body = _d("eBFHCksgUUoMEwAaE1FJFxMcBBNKGRZcAUdGXlgHVhZLElBcREQEHwNKGQVdAUsFWUoQQEUECBhQEEBFBBFWFURHDQ4IGEsBVgkYRk9RAV1FGAlVXBBbDAUBGFsNRwAYSBhtNBMRBEZ6WB0TFR4KVEpESgoeRlpYB1hFHwkYTQxWRQkHQRkCWhcYEhQZBV0BSxJQXERHEgRGfFwBQwAYEhhuBUcAGUZLTg1HBgMDSxkMXAkPRkxRARMWGwlMGR1cEEsRXUsBExYfB1ZdDV0CSwlWGRNbAAVGQVYREwQZC11dREcNDgsYFERHDQ5GXFwBQwAYEhhLDV0CSwVZSxZaABhGTFEBEwcCAV9cF0dFBxNbUkRRCgUTSxduOTEDAxhKDFwVSwRNQBcTBAUCGFwVRgwbFRhLC1cWSwdWXURRBAISGE4NRw1LElBcRFAEGBJLGR1cEEsOWU8BHUUpE0FQClRFBQNdXRcTEQMDGFoLRgsfA0oZSRMHBBJQGQdcCA5GXksLXkUfDl0ZIloWAwNKVAVdS2Fse1gQUA0OFRhSAVYVGEZZGRZGCwUPVl5ERwQHCkEZBkpFAhJdVERSCw9GS1gSVhZLD0wVREAKSxJQXERHCh8HVBkHUhcZD11KRFwTDhQYWwFHEg4DVhkXVhYYD1dXFx0"),
})

local jqj = tqms:Section({
Side = _d("aw1UDR8"),
})

jqj:Header({
Name = _d("egVHBgMDSw"),
})

local ady

ady = jqj:Paragraph({
Header = _d("bgxSEUsfV0xEUAQeAVBN"),
Body = xpy(),
})

local cam = tqms:Section({
Side = _d("aw1UDR8"),
})

cam:Header({
Name = _d("cBdfBAUCGEoMXBU"),
})

cam:Toggle({
Name = _d("eBFHCksFSlgCR0UZCVw"),
Default = false,
Callback = function(eguu)
uffa.island.autoRod = eguu
uffa.islandAt = 0
end,
}, _d("UBdfBAUCZ1gRRwo0FFdd"))

cam:Toggle({
Name = _d("eBFHCksFSlgCR0UKBVtcF0AKGR8"),
Default = false,
Callback = function(atny)
uffa.island.autoAcc = atny
uffa.islandAt = 0
end,
}, _d("UBdfBAUCZ1gRRwo0B1taAUAWBBRB"))

cam:Toggle({
Name = _d("fBVGDBtGWVoHVhYYCUpA"),
Default = false,
Callback = function(uxu)
uffa.island.equipAcc = uxu
uffa.islandAt = 0
end,
}, _d("UBdfBAUCZ1wVRgwbOVlaB1YWGAlKQA"))

local ojpi

ojpi = cam:Paragraph({
Header = _d("cBdfBAUCGF4BUhc"),
Body = uffa.shopIsland.text(),
})

local rnpv = tqms:Section({
Side = _d("dQFVEQ"),
})

rnpv:Header({
Name = _d("awFRDBkSUA"),
})

uffa.rebirthToggle = rnpv:Toggle({
Name = _d("eBFHCksUXVsNQRED"),
Default = false,
Callback = function(azdm)
uffa.autoRebirth = azdm
end,
}, _d("WBFHCjQUXVsNQRED"))

uffa.rebirthParagraph = rnpv:Paragraph({
Header = _d("ahBSER4V"),
Body = uffa.rebirthText(),
})

rnpv:Button({
Name = _d("bTQTEQRGUUoIUgsP"),
Callback = function()
if not uffa.gotoIsland() then
tes:Notify({
Title = _d("eAZSCw8JVlwAEywYCllXAA"),
Description = _d("egxSFwoFTFwWEwwYRlZWEBMXDgdcQERKAB9GFRkQQRxLB19YDV1FAggYWEReCgYDVk1K"),
Lifetime = 5,
})
end
end,
})

local azp

azp = rnpv:Toggle({
Name = _d("eBFHCksvS1UFXQFLLllLAFAKGQM"),
Default = false,
Callback = function(vqq)
afo.island = vqq
afo.pending = false
afo.pendingUntil = 0
afo.paused = false
afo.gaveUp = false
afo.stoodDown = false
afo.manualPause = false

if not vqq then
return
end

if rk.otherTowerOn(_d("UQVBAQgJSlw")) then
afo.island = false

pcall(function()
azp:UpdateState(false)
end)

pcall(function()
tes:Dialog({
Title = _d("eBFHCksvS1UFXQFLLllLAFAKGQMYVgJV"),
Description = _d("bQxWRSMHVFULRAAOCBhNC0QAGUZRSkRSCRkDWV0dExceCFZQClRJSwdWXUREDB8OGFYKVkUYCldNREcNDkZfWAlWRQQIVEBEQRAFFRhWClZFAgheUApaEQ5GSlYLXkUKEhhYREcMBgMWGTBGFwVGTFEFR0UEAF4VRFwXSxJNSwoTCgVGeUwQXEU4CldNREAKSwNZWgwTEQQRXUtEVAAfFRhQEEBFBBFWGRdfCh9I"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})
end)

return
end

if rk.enabled and rk.hardcoreSlot() == nil then
afo.island = false

pcall(function()
azp:UpdateState(false)
end)

pcall(function()
tes:Dialog({
Title = _d("eBFHCksvS1UFXQFLLllLAFAKGQMYVgJV"),
Description = _d("dwsTFgcJTBkNQEUYA0wZEFxFCkZMVhNWF0dGWVcAExEDAxheBV4ASwlWVR0TFh8HSk0XEwRLEldOAUFFGRNWGQJBCgZGWRkQXBIOFBhKCFwRRUZrXBATCgUDGE0LEywYCllXABMNChRcWgtBAEdGV0tERxAZCBh4EUcKSzVUVhATCg0AFg"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})
end)

return
end

if not afo.data then
afo.island = false

pcall(function()
azp:UpdateState(false)
end)

pcall(function()
tes:Dialog({
Title = _d("eBFHCksvS1UFXQFLLllLAFAKGQMYVgJV"),
Description = _d("bQxaFksETVAIV0UDB0sZClxFIwdKXQdcFw4yV04BQSEKElkVREAKSxJQXERHChwDSh4XExYfB19cFxMGCghWVhATBw5GSlwFV0UKCFwZBRMXHggYWgVdCwQSGFsBExYfB0pNAVdL"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})
end)

return
end

local zfoi = afo.remotes.request

if zfoi then
pcall(function()
zfoi:FireServer()
end)
end
end,
}, _d("WBFHCjQPS1UFXQE0DllLAFAKGQM"))

afo.islandToggle = azp

afo.islandParagraph = rnpv:Paragraph({
Header = _d("exFVAxg"),
Body = afo.buffText(),
})

rnpv:Button({
Name = _d("aQVGFg5GcUoIUgsPRnBYFlcGBBRd"),
Callback = function()
if afo.pauseRun then
afo.pauseRun()
end
end,
})

rnpv:Button({
Name = _d("fg1FAEszSBktQAkKCFwZLFIXDwVXSwE"),
Callback = function()
if afo.giveUpRun then
afo.giveUpRun()
end
end,
})

local yzod = tqms:Section({
Side = _d("dQFVEQ"),
})

yzod:Header({
Name = _d("fw1ADQIIXxkXWwob"),
})

yzod:Toggle({
Name = _d("eBFHCksETUBEUQAYEhhLC1c"),
Default = false,
Callback = function(oi)
uffa.shop.autoBuyRod = oi
uffa.shopAt = 0
end,
}, _d("WBFHCjQETUA7UQAYEmdLC1c"))

yzod:Toggle({
Name = _d("eBFHCksETUBEUQAYEhhbBVoR"),
Default = false,
Callback = function(thx)
uffa.shop.autoBuyBait = thx
uffa.shopAt = 0
end,
}, _d("WBFHCjQETUA7UQAYEmdbBVoR"))

yzod:Toggle({
Name = _d("fBVGDBtGWlwXR0UZCVw"),
Default = false,
Callback = function(oxyq)
uffa.shop.equipRod = oxyq
uffa.shopAt = 0
end,
}, _d("XBVGDBs5WlwXRzoZCVw"))

yzod:Toggle({
Name = _d("fBVGDBtGWlwXR0UJB1FN"),
Default = false,
Callback = function(ram)
uffa.shop.equipBait = ram
uffa.shopAt = 0
end,
}, _d("XBVGDBs5WlwXRzoJB1FN"))

local dqzo

dqzo = yzod:Paragraph({
Header = _d("ewFAEUsfV0xEUAQFRl1IEVoV"),
Body = euq(),
})
task.spawn(function()
local stw = zkk()
local gzxf = xpy()
local opo = euq()
local wey = uffa.shopIsland.text()

while wyvs() do
local yjpy = zkk()

if yjpy ~= stw then
stw = yjpy
pcall(function()
xxli:UpdateBody(yjpy)
end)
end

local fgll = xpy()

if fgll ~= gzxf then
gzxf = fgll
pcall(function()
ady:UpdateBody(fgll)
end)
end

local cp = euq()

if cp ~= opo then
opo = cp
pcall(function()
dqzo:UpdateBody(cp)
end)
end

local qae = uffa.shopIsland.text()

if qae ~= wey then
wey = qae
pcall(function()
ojpi:UpdateBody(qae)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while wyvs() do

if pmz() and os.clock() >= (uffa.shopAt or 0)
and os.clock() >= (uffa.islandTripUntil or 0) then
uffa.shopAt = os.clock() + 1
pcall(yaf)
end

if uffa.shopIsland.active() and os.clock() >= (uffa.islandAt or 0)
and os.clock() >= math.max(uffa.shopHoldUntil or 0, uffa.tpHoldUntil or 0) then
uffa.islandAt = os.clock() + 2
pcall(uffa.shopIsland.run)
end

task.wait(1)
end
end)

ejpk:Select()

local pdzu = ejpk:Section({
Side = _d("dQFVEQ"),
})

local kai = ejpk:Section({
Side = _d("aw1UDR8"),
})

local znl = pdzu:Paragraph({
Header = _d("ahBSER4V"),
Body = va(),
})

pdzu:Divider()

wj.npcToggle = pdzu:Toggle({
Name = _d("eBFHCksoaHo"),
Default = false,
Callback = function(axk)

if axk and not wj.story and #pob() == 0 then
pcall(function()
wj.npcToggle:UpdateState(false)
end)

tes:Dialog({
Title = _d("eBFHCksoaHpEXQAOAksZBRMRChRfXBA"),
Description = _d("aQ1QDksHTBkIVgQYEhhWClZFJTZ7GQJBCgZGTFEBExIEFFRdFxMHDgpXTkgTChlGTEwWXUUECBh4EUcKSyVXVBRfAB8DGGoQXBcSSBhtDFYXDkZRSkRdCh8OUVcDExEERl5QA1sRSx9dTUo"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})

return
end

wj.enabled = axk
end,
}, _d("WBFHCjQISFo"))

pdzu:Toggle({
Name = _d("bgVfDksSVxkqYyY"),
Default = false,
Callback = function(zp)
wj.walkToNpc = zp
end,
}, _d("TgVfDjQSV2YKQwY"))

pdzu:Dropdown({
Name = _d("fQ1VAwIFTVUQSg"),
Search = false,
Multi = true,
Required = false,
Default = { _d("dwtBCAoK") },
Options = jpn,
Callback = function(ibu)
local jkg = {}

if type(ibu) == _d("TQVRCQ4") then
for zkqd, ug in ipairs(jpn) do
if ibu[ug] then
table.insert(jkg, olrl[ug])
end
end
end

if #jkg == 0 then
jkg = { _d("VwtBCAoK") }
end

wj.difficulties = jkg
end,
}, _d("XQ1VAwIFTVUQSg"))

pdzu:Toggle({
Name = _d("eBFHCks0V1YJQA"),
Default = false,
Callback = function(vyr)
ii.enabled = vyr
ii.inBattle = false
ii.pending = false
end,
}, _d("WBFHCjQUV1YJQA"))

local myy = ejpk:Section({
Side = _d("dQFVEQ"),
})

myy:Header({
Name = _d("aghcEQ"),
})

myy:Paragraph({
Header = _d("cQtERR8OXRkXXwofFRhOC0EO"),
Body = _d("aghcEUtXGBREegsND1ZQEEpFPwlPXBYTTQUJSlQFX0UEFBh3DVQNHwtZSwEaRQQUGHEFXwkEEV1cChMxBBFdS0gTFQcTSxkqYyZLBFlNEF8AGEZPUQFdRRgKV01EAUUCFRhbEUAcRWwyaghcEUtUGBREfTUoFRQZFlIMDxUUGRZcCgYVFBktQAkKCFwZLFIXDwVXSwEdb2EkV00MExYHCUxKRFwLSyhoekRRBB8SVFwXCUUfEVcZKmMmSwBdWBBGFw4VGFgQEwoFBV0VRFILD0ZZGRZSDA9GWlYXQEUOB1tRSjlvPxFXGRBcEg4UGEsRXRZLD0sZEFsASwlWVR0TFw4ATUoBV0UbB1FLRB5FIhVUWApXRSMHSl0HXBcORldXRFEKHw4YSghcERhGUUpEXAsORkpMChMEGA1dXURVChlGTE4NUABFbDJqCFwRGEZXXwIJRQQIXRkXXwofShhNC0QAGRUYTQVYAEsSTUsKQEs"),
})

rk.toggle = myy:Toggle({
Name = _d("eBFHCks1VFYQ"),
Default = false,
Callback = function(ssf)
if ssf and rk.role[1] == rk.role[2] and rk.role[1] ~= _d("VxRQ") then
rk.enabled = false

pcall(function()
rk.toggle:UpdateState(false)
end)

tes:Dialog({
Title = _d("eBFHCks1VFYQ"),
Description = _d("aghcEUtXGFgKV0U4CldNRAFFChRdGQZcEQNG") .. rk.roleLabel(1) .. _d("F0RnDQoSGFAXEwoFAxhLEV1FChVTXAATAwQUGE0TWgYOShhKCxMKBQMYVgITEQMDGE0TXEUYCldNFxMNChUYTQsTBw5GS1YJVhEDD1ZeRFYJGAMW"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})

return
end

rk.enabled = ssf

if ssf then
rk.hasSlot2 = rk.detectSlot2()

if rk.hasSlot2 == false then
tes:Dialog({
Title = _d("eBFHCks1VFYQ"),
Description = _d("aghcEUtUGFULXA4YRlRWB1gAD0YVGQ1HRQUDXV0XExEDAxh9EVIJSyRZTRBfAEs1VFYQEwIKC11JBUAWR0ZXS0R6Cw0PVlAQVkU5CVdURAFQW0ZbVQFSFw4CFBkGVgMEFF0ZEFsASxVdWgtdAUsVVFYQEwYKCBhbBUcRBwMWGTZcEB8PVl5EQBEKH0sZC11FGApXTUQCRR4ITFAIExEDA1YX"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})
end
end
end,
}, _d("WBFHCjQVVFYQ"))

function rk.applyRoles()
if not rk.enabled then
return
end

if rk.role[1] == rk.role[2] and rk.role[1] ~= _d("VxRQ") then
rk.enabled = false

pcall(function()
rk.toggle:UpdateState(false)
end)

pcall(function()
tes:Dialog({
Title = _d("eBFHCks1VFYQEwoNAA"),
Description = _d("aghcEUtXGFgKV0U4CldNRAFFChRdGQZcEQNG") .. rk.roleLabel(1) .. _d("F0RnDQoSGFAXEwoFAxhLEV1FChVTXAATAwQUGE0TWgYOShhYCldFAhIYWgVdCwQSGE0FWABLEk9WREAJBBJLF0RgAB9GV1cBExYHCUwZEFxFGAlVXBBbDAUBGFwIQABF"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})
end)

return
end

local lw = {}

if rk.towerSlot() ~= 1 and qkca.enabled then
qkca.enabled = false
table.insert(lw, _d("eBFHCksyV04BQQ"))

pcall(function()
qkca.ui:UpdateState(false)
end)
end

if rk.hardcoreSlot() == nil and afo.island then
afo.island = false
table.insert(lw, _d("eBFHCksvS1UFXQFLLllLAFAKGQM"))

pcall(function()
afo.islandToggle:UpdateState(false)
end)
end

if rk.halloweenSlot() == nil and gwn.run.enabled then
gwn.run.enabled = false
table.insert(lw, _d("eBFHCksuWVUIXBIOA1YZMFwSDhQ"))

pcall(function()
gwn.toggle:UpdateState(false)
end)
end

if #lw > 0 then
pcall(function()
tes:Dialog({
Title = table.concat(lw, _d("GQVdAUs")) .. _d("GQtVAw"),
Description = _d("dwsTFgcJTBkNQEUYA0wZEFxFHw5ZTURHChwDShkFXRxLC1dLAR9FGAkYUBATDQoCGFcLRA0OFF0ZEFxFGRNWF0R0DB0DGFAQEwRLFVRWEBMEDAdRV0gTChlGTEwWXUUqE0xWRGAJBBIYVgJVSw"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})
end)
end
end

rk.oneDropdown = myy:Dropdown({
Name = _d("aghcEUtX"),
Search = false,
Multi = false,
Required = false,

Default = 1,
Options = rk.optionsFor[1],
Callback = function(zbo)
local nrl = type(zbo) == _d("TQVRCQ4") and zbo[1] or zbo

if type(nrl) == _d("ShBBDAUB") and rk.roleIds[nrl] then
rk.role[1] = rk.roleIds[nrl]
rk.picked[1] = nrl
end

pcall(function()
rk.oneDropdown:UpdateName(_d("aghcEUtXGNvkkUU") .. rk.roleLabel(1))
end)

if rk.applyRoles then
rk.applyRoles()
end
end,
}, _d("SghcETRXZws"))

rk.twoDropdown = myy:Dropdown({
Name = _d("aghcEUtU"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = rk.optionsFor[2],
Callback = function(ce)
local rjq = type(ce) == _d("TQVRCQ4") and ce[1] or ce

if type(rjq) == _d("ShBBDAUB") and rk.roleIds[rjq] then
rk.role[2] = rk.roleIds[rjq]
rk.picked[2] = rjq
end

pcall(function()
rk.twoDropdown:UpdateName(_d("aghcEUtUGNvkkUU") .. rk.roleLabel(2))
end)

if rk.applyRoles then
rk.applyRoles()
end
end,
}, _d("SghcETRUZws"))

pcall(function()
rk.oneDropdown:UpdateSelection(_d("bQtEABk"))
end)

pcall(function()
rk.twoDropdown:UpdateSelection(_d("dzRwRQkHTE0IVhY"))
end)

getgenv().ACBXSlot = rk

local efj = ejpk:Section({
Side = _d("dQFVEQ"),
})

efj:Header({
Name = _d("awVaAUsEV0oX"),
})

efj:Toggle({
Name = _d("eBFHCks0WVAAEycEFUs"),
Default = false,
Callback = function(ofc)
fhyz.enabled = ofc
fhyz.pending = {}
fhyz.pendingUntil = {}

if ofc then
fhyz.cleared = {}
end
end,
}, _d("WBFHCjQUWVAAbAcEFUs"))

efj:Toggle({
Name = _d("eBFHCksxWVUPExEERmpYDVdFKQlLSg"),
Default = false,
Callback = function(exon)
fhyz.walkToBoss = exon
end,
}, _d("WBFHCjQRWVUPbBEEOUpYDVc6CQlLSg"))

local lpg
lpg = efj:Slider({
Name = _d("bgVfDks1SFwBVw"),
Minimum = 0,
Maximum = 72,
Default = 18,
Precision = 0,
Callback = function(vtik)
local tndq = math.floor(vtik + 0.5)
fhyz.walkSpeed = tndq

if lpg and tndq ~= vtik then
lpg:UpdateValue(tndq)
end
end,
}, _d("TgVfDjQVSFwBVw"))

efj:Dropdown({
Name = _d("awVaAUsiUV8CWgYeCkxA"),
Search = false,
Multi = true,
Required = false,
Default = { _d("dwtBCAoK") },
Options = ade,
Callback = function(hmum)
local cdo = {}

if type(hmum) == _d("TQVRCQ4") then
for okvi, emb in ipairs(ade) do
if hmum[emb] then
table.insert(cdo, cn[emb])
end
end
end

if #cdo == 0 then
cdo = { _d("VwtBCAoK") }
end

fhyz.difficulties = cdo
end,
}, _d("SwVaATQCUV8CWgYeCkxA"))

function fhyz.pickedIds(xgt)
local wjr = {}

if type(xgt) == _d("TQVRCQ4") then
for veo, xxvi in ipairs(vwrv) do
if xgt[xxvi] and uv[xxvi] then
table.insert(wjr, uv[xxvi])
end
end
elseif type(xgt) == _d("ShBBDAUB") and uv[xgt] then
wjr = { uv[xgt] }
end

return wjr
end

efj:Dropdown({
Name = _d("awVaAUskV0oX"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = vwrv,
Callback = function(ltv)
fhyz.picks[1] = fhyz.pickedIds(ltv)
fhyz.cursor[1] = 1
fhyz.losses[1] = {}
end,
}, _d("SwVaATQEV0oX"))

fhyz.boss2Dropdown = efj:Dropdown({
Name = _d("awVaAUskV0oXE004CldNRAFM"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = vwrv,
Callback = function(vfg)
fhyz.picks[2] = fhyz.pickedIds(vfg)
fhyz.cursor[2] = 1
fhyz.losses[2] = {}
end,
}, _d("SwVaATQEV0oXbBYHCUxmVg"))

pcall(function()
fhyz.boss2Dropdown:SetVisibility(false)
end)

task.spawn(function()
local dhzy = nil

while wyvs() do
local xdz = rk.splitNpc()

if xdz ~= dhzy then
dhzy = xdz

local rri = fhyz.boss2Dropdown

if rri then
pcall(function()
rri:SetVisibility(xdz)
end)
end
end

task.wait(0.5)
end
end)

kai:Paragraph({
Header = _d("eBFHCksgUV4MRw"),
Body = _d("agFfAAgSGFYKVkUEFBhUC0EASyhoehcTAxkJVRkQWwBLEVdLCFcWSwRdVQtESw"),
})

for gm, nwo in ipairs(xo) do
kai:Dropdown({
Name = nwo.name,
Search = true,
Multi = true,
Required = false,
Default = {},
Options = nwo.options,
Callback = function(jnp)
local uyg = {}

if type(jnp) == _d("TQVRCQ4") then
if jnp.All then
for jrk, kod in ipairs(nwo.ids) do
table.insert(uyg, kod)
end
else
for dhxp, uwv in ipairs(nwo.options) do
if jnp[uwv] and nwo.byName[uwv] then
table.insert(uyg, nwo.byName[uwv])
end
end
end
elseif type(jnp) == _d("ShBBDAUB") then
if jnp == _d("eAhf") then
for dxc, yct in ipairs(nwo.ids) do
table.insert(uyg, yct)
end
else
uyg = { nwo.byName[jnp] }
end
end

wj.selectedByWorld[nwo.name] = uyg
end,
}, _d("VxRQOg") .. nwo.id)
end

kai:Toggle({
Name = _d("eBFHCkslV1QUXwAfAxhqEFwXEg"),
Default = false,
Callback = function(trcb)
wj.story = trcb
wj.battlePending = false
wj.battlePendingUntil = 0
end,
}, _d("WBFHCjQFV1QUXwAfA2dKEFwXEg"))

wj.storyDropdown = kai:Dropdown({
Name = _d("fQ1VAwIFTVUQWgAY"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = jpn,
Callback = function(nlr)
local mavd = type(nlr) == _d("TQVRCQ4") and nlr[1] or nlr

if type(mavd) == _d("ShBBDAUB") and olrl[mavd] then
wj.storyDifficulty = olrl[mavd]
end
end,
}, _d("XQ1VAwIFTVUQWgAY"))

pcall(function()
wj.storyDropdown:UpdateSelection(jpn[1])
end)

pcall(function()
wj.storyDropdown:UpdateName(_d("fQ1VAwIFTVUQWgAYRtq5xhM") .. jpn[1])
end)

kai:Paragraph({
Header = _d("cQtERSoTTFZEcAoGFlRcEFZFOBJXSx0TEgQUU0o"),
Body = _d("fw1UDR8VGFwSVhcSRktNC0EcSyhoekQeRSUHVVwPExEDFFdMA1tFIhVdUgVaRUZGV1dERw0ORldXARMBAgBeUAdGCR8fGFgGXBMOShhOC0EOAghfGRBbAEsHSlwFQEUCCBhWFlcAGUZZVwATBgQLUVcDEwcKBVMZFlwQBQIYWBcTBgQJVF0LRAsYRltVAVIXRWwycBATFw4WVFgHVhZLElBcRFIXDgcYXRZcFQ8JT1cXExIDD1RcRFoRSw9LGQtdSUsHVl1EXwAKEF1KREEEAgIYWwtAFg4VGFgIXAsOSA"),
})

local qogc = bxc:Section({
Side = _d("dQFVEQ"),
})

qogc:Header({
Name = _d("bQtEABk"),
})

local tahm
local nrym

local edu = {
remotes = {},
watcher = false,
hidMenu = false,

hardWatch = {},
}

pcall(function()
local fzvg = getgenv().ACBXHardWatch

if type(fzvg) == _d("TQVRCQ4") then
for tgup, gzch in pairs(fzvg) do
pcall(function()
if gzch.Connected then
gzch:Disconnect()
end
end)
end
end

getgenv().ACBXHardWatch = edu.hardWatch
end)

function edu.hardPick(uajt)
uajt = uajt == true

for rpwf, sca in ipairs({ _d("ewVHEQcDf0wN"), _d("ewVHEQcDf0wNAQ") }) do
local dno = qsrk:FindFirstChild(sca)

if dno then
if dno:GetAttribute(_d("bQtEABkuWUsAYwwIDQ")) ~= uajt then
pcall(function()
dno:SetAttribute(_d("bQtEABkuWUsAYwwIDQ"), uajt)
end)
end

if dno:GetAttribute(_d("bQtEABkuWUsAYRAF")) ~= nil and dno:GetAttribute(_d("bQtEABkuWUsAYRAF")) ~= uajt then
pcall(function()
dno:SetAttribute(_d("bQtEABkuWUsAYRAF"), uajt)
end)
end
end
end
end

function edu.pinMode()
if not (qkca.enabled or qkca.nightmare) then
return
end

local kfg = qkca.nightmare == true

for hlvl, kdhq in ipairs({ _d("ewVHEQcDf0wN"), _d("ewVHEQcDf0wNAQ") }) do
local lxbq = qsrk:FindFirstChild(kdhq)

if lxbq then
if lxbq:GetAttribute(_d("bQtEABkuWUsAYwwIDQ")) ~= kfg then
pcall(function()
lxbq:SetAttribute(_d("bQtEABkuWUsAYwwIDQ"), kfg)
end)
end

local fb = edu.hardWatch[lxbq]

if fb and fb.Connected == false then
edu.hardWatch[lxbq] = nil
fb = nil
end

if fb == nil then
local gkg, oynh = pcall(function()
return ojk(lxbq:GetAttributeChangedSignal(_d("bQtEABkuWUsAYwwIDQ")), function()
if not (qkca.enabled or qkca.nightmare) then
return
end

local enl = qkca.nightmare == true

if lxbq.Parent and lxbq:GetAttribute(_d("bQtEABkuWUsAYwwIDQ")) ~= enl then
pcall(function()
lxbq:SetAttribute(_d("bQtEABkuWUsAYwwIDQ"), enl)
end)
end
end)
end)

if gkg then
edu.hardWatch[lxbq] = oynh
end
end
end
end
end

function edu.pauseRows()
local ibeh = rtpa:FindFirstChild(_d("aQhSHA4Uf0wN")) and rtpa.PlayerGui:FindFirstChild(_d("agFHEQIIX0ojRgw"))

if not ibeh then
return nil, nil
end

return ibeh:FindFirstChild(_d("aQVGFg4vVl8NXQwfA3FXFEYR"), true), ibeh:FindFirstChild(_d("aQVGFg4vVl8NXQwfA3tRAVAO"), true)
end

function edu.pauseState()
local qrj = rtpa:FindFirstChild(_d("aQhSHA4Uf0wN")) and rtpa.PlayerGui:FindFirstChild(_d("agFHEQIIX0ojRgw"))
local cxk = qrj and qrj:FindFirstChild(_d("fgFHNg4STFAKVBY"), true)

if not cxk then
return nil
end

local wzw, hk = pcall(function()
return cxk:Invoke()
end)

if wzw and type(hk) == _d("TQVRCQ4") then
return hk.pauseInfiniteEnabled == true
end

return nil
end

function edu.pauseAt(hip, rxzs)
rxzs = math.max(1, math.floor(tonumber(rxzs) or 1))

local ij, okp = edu.pauseRows()

if not (ij and okp) then
return false
end

local ywkj = pcall(function()
if tonumber(ij.Text) ~= rxzs then
ij.Text = tostring(rxzs)

if getconnections then
for jwjt, ynz in ipairs(getconnections(ij.FocusLost)) do
pcall(function()
ynz:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end
end)

if hip ~= nil then
local zvd = edu.pauseState()

if zvd ~= nil and zvd ~= hip and getconnections then
pcall(function()
for ujc, ahjw in ipairs(getconnections(okp.MouseButton1Click)) do
pcall(function()
ahjw:Fire()
end)
end
end)
end
end

return ywkj
end

function edu.restorePause()
wacd.triggered = false

if wacd.enabled and wacd.floor > 0 then
edu.pauseAt(true, wacd.floor)

pcall(function()
za.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = wacd.floor,
})
end)

return
end

pcall(function()
za.SaveClientData:FireServer({
pauseInfiniteEnabled = false,
pauseInfiniteAt = 1,
})
end)

edu.pauseAt(false, 1)
end

function edu.remote(lhig)
local mhhr = edu.remotes[lhig]

if mhhr and mhhr.Parent then
return mhhr
end

local wzoz = vf:FindFirstChild(_d("awFeCh8DSw"))
local adw = wzoz and wzoz:FindFirstChild(lhig)

if adw then
edu.remotes[lhig] = adw
end

return adw
end

function edu.historyOpen()
for qjy, qbfm in ipairs({ _d("ewVHEQcDf0wN"), _d("ewVHEQcDf0wNAQ") }) do
local xqp = qsrk:FindFirstChild(qbfm)
local sxg = xqp and xqp:FindFirstChild(_d("bQtEABkuUUoQXBcSIEpYCVY"))

if sxg and sxg.Visible then
return true
end
end

return false
end

function edu.generationOpen()
local avbq = qsrk:FindFirstChild(_d("bQtEABk0XUoRXxEsE1E"))
local rb = avbq and avbq:FindFirstChild(_d("awFAEAcSfksFXgA"))

return rb ~= nil and rb.Visible
end

function edu.standDown(oxar)
if not edu.hidMenu then
local dfju = true

pcall(function()
dfju = tes:GetState() ~= false
end)

if dfju then
edu.hidMenu = true

pcall(function()
tes:SetState(false)
end)
end
end

if edu.watcher then
return
end

edu.watcher = true

task.spawn(function()

local xwj = os.clock() + 6

while wyvs() and os.clock() < xwj and not oxar() do
task.wait(0.2)
end

while wyvs() and oxar() do
task.wait(0.4)
end

edu.watcher = false

if edu.hidMenu then
edu.hidMenu = false

pcall(function()
tes:SetState(true)
end)
end
end)
end

qkca.floorAt = 0
qkca.battleAt = 0
qkca.floor = nil
qkca.manualPause = false

task.spawn(function()
local ela = ekov(_d("ewVHEQcDbUkAUhEO"))
local vzi = ekov(_d("ah1dBj8JT1wWdQkECUo"))
local encl = ekov(_d("ewVHEQcDfVcA"))
local zwk = ekov(_d("bQtEABk0TVchXQEOAg"))

if ela then
ojk(ela.OnClientEvent, function()
qkca.battleAt = os.clock()
end)
end

if vzi then
ojk(vzi.OnClientEvent, function(nn)
qkca.floorAt = os.clock()

if type(nn) == _d("VxFeBw4U") and nn > 1 then
qkca.floor = nn
else
qkca.floor = nil
end
end)
end

if encl then
ojk(encl.OnClientEvent, function(qcpg)
if type(qcpg) == _d("TQVRCQ4") and qcpg.mode == _d("TQtEABk") then
qkca.floorAt = os.clock()
end
end)
end

if zwk then
ojk(zwk.OnClientEvent, function()

qkca.lastRunEnded = {
clock = os.clock(),
floor = qkca.floor,
}

task.delay(1, function()
local bkp = qsrk:FindFirstChild(_d("bQtEABk0XUoRXxEsE1E"))
local nzas = bkp and bkp:FindFirstChild(_d("awFAEAcSfksFXgA"))
local edz = {}

if nzas then
for wx, avgb in ipairs(nzas:GetDescendants()) do
if avgb:IsA(_d("bQFLEScHWlwI")) and avgb.Visible and avgb.Text ~= _d("") and #edz < 12 then
edz[#edz + 1] = avgb.Text
end
end
end

if qkca.lastRunEnded then
qkca.lastRunEnded.texts = table.concat(edz, _d("GRgT"))
end
end)

qkca.floorAt = 0
qkca.battleAt = 0
qkca.floor = nil

if qkca.manualPause then
edu.restorePause()
end
end)
end

end)

local function fdab()
local efjs = os.clock()

if efjs - (qkca.floorAt or 0) < 90 and efjs - (qkca.battleAt or 0) < 12 then
return true
end

for oej, vopt in ipairs({ _d("ewVHEQcDf0wN"), _d("ewVHEQcDf0wNAQ") }) do
local jx = qsrk:FindFirstChild(vopt)

if jx then

local lsq = jx:FindFirstChild(_d("bQtEABkgVFYLQSkKBF1V"))

if lsq and lsq.Visible then
return true
end

local qzdh = jx:FindFirstChild(_d("fwhcChk1W0sBVgs"))

if qzdh and qzdh.Visible then
return true
end

local nxzq = jx:FindFirstChild(_d("ewVHEQcDa1oWVgAF"))

if nxzq and nxzq.Visible then
local fbe = nxzq:FindFirstChild(_d("aBFaBgAhUU8BZhUpE0xNC10"))

if fbe and fbe.Visible then
return true
end
end
end
end

return false
end

function edu.hardNow()

local bnoe = qsrk:FindFirstChild(_d("ewVHEQcDf0wN"))
local js = bnoe and bnoe:GetAttribute(_d("bQtEABkuWUsAYwwIDQ"))

if js ~= nil then
return js == true
end

local zlq = fhyz.misc.util.profile

return type(zlq) == _d("TQVRCQ4") and zlq.lastTowerHard == true
end

function edu.endIfWrongMode(uwwb)
if not fdab() or edu.hardNow() == (uwwb == true) then
return false
end

pcall(function()
if type(nrym) == _d("XxFdBh8PV1c") then
nrym()
else
za.EndTowerRemote:FireServer(1)
end
end)

qkca.floor = nil

return true
end

function edu.hardPickNow()
for gp, ommo in ipairs({ _d("ewVHEQcDf0wN"), _d("ewVHEQcDf0wNAQ") }) do
local fdm = qsrk:FindFirstChild(ommo)
local jlmk = fdm and fdm:GetAttribute(_d("bQtEABkuWUsAYwwIDQ"))

if jlmk ~= nil then
return jlmk == true
end
end

return nil
end

function edu.parked()
for ayfa, jkkb in ipairs({ _d("ewVHEQcDf0wN"), _d("ewVHEQcDf0wNAQ") }) do
local nfec = qsrk:FindFirstChild(jkkb)

if nfec then
local yvg = nfec:FindFirstChild(_d("bQtEABkgVFYLQSkKBF1V"))
local tue = nfec:FindFirstChild(_d("fwhcChk1W0sBVgs"))
local xtro = nfec:FindFirstChild(_d("ewVHEQcDa1oWVgAF"))

if yvg and yvg.Visible
and not (tue and tue.Visible)
and not (xtro and xtro.Visible) then
return true
end
end
end

return false
end

qkca.ui = qogc:Toggle({
Name = _d("eBFHCksyV04BQQ"),
Default = false,
Callback = function(tm)

if qkca.quiet then
return
end

qkca.enabled = tm
qkca.pending = false
qkca.pendingUntil = 0

if tm then

if rk.enabled and rk.role[1] ~= _d("TQtEABk") then
qkca.enabled = false

pcall(function()
qkca.ui:UpdateState(false)
end)

pcall(function()
tes:Dialog({
Title = _d("eBFHCksyV04BQUUEAF4"),
Description = _d("aghcEUtXGFAXExYOEhhNCxM") .. rk.roleName(1) .. _d("F0RnDQ5GcVcCWgsCEkEZJ1IWHwpdGQtdCRJGS00FQREYRldXREAJBBIYCEgTFgRGS1wQEzYHCUwZVRMRBEZsVhNWF0sAUUsXR0s"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})
end)

return
end

if rk.otherTowerOn(_d("TQtEABk")) then
qkca.enabled = false

pcall(function()
qkca.ui:UpdateState(false)
end)

pcall(function()
tes:Dialog({
Title = _d("eBFHCksyV04BQUUEAF4"),
Description = _d("eApcEQMDShkQXBIOFBhYEUcKBgdMUAtdRQIVGFgIQQAKAkEZC11JSwdWXURHDQIVGFgHUAoeCEwZC10JEkZZVQhcEhhGV1cBExEEEV1LREEQBUZZTURSRR8PVVxKEzEeFFYZEFsEH0ZXVwETCg0AGF8NQRYfShhWFhMRHhRWGQtdRSoTTFZEYAkEEhhKCxMACgVQGRdfCh9GX1wQQEUCEksZC0QLSxJXTgFBSw"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})
end)

return
end

qkca.nightmare = false

pcall(function()
qkca.quiet = true
qkca.nightmareToggle:UpdateState(false)
qkca.quiet = false
end)

qkca.manualPause = false
qkca.paused = false
edu.restorePause()
qkca.pauseArmed = false

edu.endIfWrongMode(false)
edu.hardPick(false)

return
end

if not fdab() then
return
end

qkca.paused = true
local mihb = tahm()

tes:Notify({
Title = _d("eBFHCksyV04BQUUEAF4"),
Description = mihb and _d("bQtEABlGSkwKExUKE0tcAB0") or _d("axFdRQIVGFUNRQBHRlpMEBMLBEZaSwFSDksETU0QXAtLAFdMCldL"),
Lifetime = 5,
})
end,
}, _d("WBFHCjQSV04BQQ"))

qkca.nightmareToggle = qogc:Toggle({
Name = _d("eBFHCksoUV4MRwgKFF0ZMFwSDhQ"),
Default = false,
Callback = function(efy)
if qkca.quiet then
return
end

qkca.nightmare = efy

if not efy then

qkca.enabled = false
qkca.pending = false
qkca.pendingUntil = 0

edu.hardPick(false)

pcall(function()
qkca.quiet = true
qkca.ui:UpdateState(false)
qkca.quiet = false
end)

if fdab() then
qkca.paused = true
local ajb = tahm()

tes:Notify({
Title = _d("eBFHCksoUV4MRwgKFF0ZMFwSDhQYVgJV"),
Description = ajb and _d("dw1UDR8LWUsBExceCBhJBUYWDgIW") or _d("axFdRQIVGFUNRQBHRlpMEBMLBEZaSwFSDksETU0QXAtLAFdMCldL"),
Lifetime = 5,
})
end

return
end

if rk.enabled and rk.role[1] ~= _d("TQtEABk") then
qkca.nightmare = false

pcall(function()
qkca.quiet = true
qkca.nightmareToggle:UpdateState(false)
qkca.quiet = false
end)

pcall(function()
tes:Dialog({
Title = _d("eBFHCksoUV4MRwgKFF0ZMFwSDhQYVgJV"),
Description = _d("dw1UDR8LWUsBEzEEEV1LRFAKHghMSkRSFksyV04BQUUCCBhKCFwRS1cUGQVdAUsfV0wWExYHCUwZVRMMGEZXV0Q") .. rk.roleName(1) .. _d("GRZaAgMSGFcLREtLNV1NREAJBBIYCERHCksyV04BQUUND0pKEB0"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})
end)

return
end

pcall(function()
qkca.quiet = true
qkca.ui:UpdateState(false)
qkca.quiet = false
end)

qkca.enabled = true
qkca.manualPause = false
qkca.paused = false

edu.restorePause()
qkca.pauseArmed = false

edu.endIfWrongMode(true)
edu.hardPick(true)

qkca.pending = false
qkca.pendingUntil = 0
end,
}, _d("WBFHCjQIUV4MRwgKFF1mEFwSDhQ"))

qogc:Header({
Name = _d("eBFHCks2WUwXVkU/CU9cFg"),
})

local dmjw

dmjw = qogc:Toggle({
Name = _d("eBFHCks2WUwXVkUtCldWFg"),
Default = false,
Callback = function(htcy)
wacd.triggered = false

if htcy and wacd.floor <= 0 then
wacd.enabled = false

pcall(function()
dmjw:UpdateState(false)
end)

pcall(function()
za.SaveClientData:FireServer({ pauseInfiniteEnabled = false })
end)

tes:Dialog({
Title = _d("eBFHCks2WUwXVkUtCldWFg"),
Description = _d("agFHRQpGSFgRQABLAFRWC0FFCgRXTwETVUsAUUsXR0VGRnlMEFxFOwdNSgETMQQRXUtEXQAOAksZEFxFAAhXTkREDQ4UXRkQXEUYEldJSg"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})

return
end

wacd.enabled = htcy

pcall(function()
za.SaveClientData:FireServer({
pauseInfiniteEnabled = htcy,
pauseInfiniteAt = wacd.floor,
})
end)
end,
}, _d("WBFHCjQWWUwXVjoNCldWFg"))

qogc:Input({
Name = _d("aQVGFg5GWU1EVQkECUo"),
Placeholder = _d("XEpUS0tTCA"),
AcceptedCharacters = _d("dxFeBw4USw"),
Callback = function(odl)
local bjdl = tonumber(odl) or 0

if bjdl < 0 then
bjdl = 0
end

if bjdl == wacd.floor then
return
end

wacd.floor = bjdl
wacd.triggered = false

if bjdl <= 0 and wacd.enabled then
wacd.enabled = false

pcall(function()
dmjw:UpdateState(false)
end)
end

pcall(function()
za.SaveClientData:FireServer({
pauseInfiniteAt = bjdl,
pauseInfiniteEnabled = wacd.enabled,
})
end)
end,
}, _d("SQVGFg45WU07VQkECUo"))

qogc:Button({
Name = _d("aQVGFg5GbFYTVhc"),
Callback = function()
local bh = false

pcall(function()
bh = tahm()
end)

if bh then

qkca.manualPause = true
return
end

tes:Dialog({
Title = _d("aQVGFg5GbFYTVhc"),
Description = _d("dwsTCQIQXRkQXBIOFBhLEV1FHwkYSQVGFg5GSlADWxFLCFdOSg"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})
end,
})

qogc:Header({
Name = _d("eBFHCkshUU8BEzAb"),
})

ctu.toggle = qogc:Toggle({
Name = _d("eBFHCkshUU8BEzAb"),
Default = false,
Callback = function(rjlo)
ctu.triggered = false

if rjlo and ctu.floor <= 0 then
ctu.enabled = false

pcall(function()
ctu.toggle:UpdateState(false)
end)

tes:Dialog({
Title = _d("eBFHCkshUU8BEzAb"),
Description = _d("agFHRQpGX1ASVkUeFhhfCFwKGUZZWwtFAEtWGF8NQRYfRhUZJUYRBEZ/UBJWRT4WGFcBVgEYRkxWRFgLBBEYTgxWFw5GTFZEQBEEFhY"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})

return
end

ctu.enabled = rjlo
end,
}, _d("WBFHCjQBUU8BbBAb"))

qogc:Input({
Name = _d("fg1FAEsTSBkLXUUNCldWFg"),
Placeholder = _d("XEpUS0tRCA"),
AcceptedCharacters = _d("dxFeBw4USw"),
Callback = function(ocea)
local tsnr = tonumber(ocea) or 0

if tsnr < 0 then
tsnr = 0
end

if tsnr == ctu.floor then
return
end

ctu.floor = tsnr
ctu.triggered = false

if tsnr <= 0 and ctu.enabled then
ctu.enabled = false

pcall(function()
ctu.toggle:UpdateState(false)
end)
end
end,
}, _d("Xg1FADQTSGYLXToNCldWFg"))

ctu.weatherToggle = qogc:Toggle({
Name = _d("eBFHCksBUU8BExAbRldXREQAChJQXBY"),
Default = false,
Callback = function(hxt)
ctu.weatherTriggered = false

if hxt and next(ctu.weathers) == nil then
ctu.weatherEnabled = false

pcall(function()
ctu.weatherToggle:UpdateState(false)
end)

tes:Dialog({
Title = _d("bgFSEQMDShkjWhMORm1J"),
Description = _d("bQ1QDksHTBkIVgQYEhhWClZFHANZTQxWF0sEXVULREUND0pKEBNISwlMUQFBEgIVXRkQWwAZAxhQFxMLBBJQUApURR8JGF4NRQBLE0gZC11L"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})

return
end

ctu.weatherEnabled = hxt
end,
}, _d("WBFHCjQBUU8BbBAbOVdXO0QAChJQXBY"))

qogc:Dropdown({
Name = _d("fg1FAEsTSBkTVgQfDl1LFw"),
Multi = true,
Required = false,
Options = { _d("bR1DDQQJVg"), _d("ewhaHxEHSl0"), _d("dQ1UDR8IUVcD"), _d("bg1dARgSV0sJ"), _d("agxSFwIIX1gK"), _d("ag1dAh4KWUsNRxw"), _d("dAtdBBkFUBkgXAgKD1Y"), _d("bwtaAQ"), _d("dAVXAEsPVhksVgQdA1Y"), _d("dAVdAgo") },
Callback = function(fwp)
ctu.weathers = {}

if type(fwp) == _d("TQVRCQ4") then
for td, ubal in pairs(fwp) do
if ubal then
ctu.weathers[td] = true
end
end
end

ctu.weatherTriggered = false
end,
}, _d("Xg1FADQTSGYTVgQfDl1LFw"))

qogc:Input({
Name = _d("dA1dDAYTVRkCXwoEFEs"),
Placeholder = _d("CUQORQoIQRkCXwoEFA"),
AcceptedCharacters = _d("dxFeABkPWw"),
Callback = function(cquz)
local qgat = math.floor(tonumber(cquz) or 0)

if qgat < 0 then
qgat = 0
end

ctu.weatherMinFloor = qgat
ctu.weatherTriggered = false
end,
}, _d("VA1dDAYTVWYCXwoEFEs"))

ctu.weatherLateToggle = qogc:Toggle({
Name = _d("fg1FAEsTSBkTWhEDRgoJFxMJDgBM"),
Default = false,
Callback = function(cxbh)
ctu.weatherLate = cxbh
ctu.weatherTriggered = false
end,
}, _d("Xg1FADQTSGYIUhEO"))

qogc:Button({
Name = _d("fg1FAEszSBkwXBIOFA"),
Callback = function()
if not fdab() then
tes:Dialog({
Title = _d("fg1FAEszSBkwXBIOFA"),
Description = _d("dwsTCQIQXRkQXBIOFBhLEV1FHwkYXg1FAEsTSBkWWgIDEhhXC0RL"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})

return
end

tes:Dialog({
Title = _d("fg1FAEszSBkwXBIOFA"),
Description = _d("fwtBAw4PTBkQWwBLBU1LFlYLH0ZMVhNWF0sUTVdbEzEDD0sZB1ILBQlMGQZWRR4IXFYKVks"),
Buttons = {
{
Name = _d("fgsTBwoFUw"),
},
{
Name = _d("fg1FAEsTSA"),
Callback = function()
local nnt = false

pcall(function()
nnt = nrym()
end)

if nnt then
return
end

task.defer(function()
task.wait(0.3)

tes:Dialog({
Title = _d("fg1FAEszSBkwXBIOFA"),
Description = _d("dwsTAgIQXRkRQ0UJE0xNC11FCghLTgFBAA9GFRkQWwBLFE1XRF4EEkZZVRZWBA8fGFsBEwodA0oX"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})
end)
end,
},
},
})
end,
})

qogc:Button({
Name = _d("egxWBgBGVFYXQEUDD0tNC0Ec"),
Callback = function()
local xfqq = edu.remote(_d("awFCEA4VTG0LRAAZLlFKEFwXEg"))

if not xfqq then
tes:Dialog({
Title = _d("dQtAFksuUUoQXBcS"),
Description = _d("bQxaFksETVAIV0UDB0sZClxFHwlPXBYTDQIVTFYWSkUZA1VWEFZL"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})

return
end

edu.standDown(edu.historyOpen)

pcall(function()
xfqq:FireServer()
end)
end,
})

qogc:Button({
Name = _d("egxWBgBGX1wKVhcKElFWCkA"),
Callback = function()

local lpk = qsrk:FindFirstChild(_d("bQtEABk0XUoRXxEsE1E"))
local azb = lpk and lpk:FindFirstChild(_d("dhRWCywDVnENQBEEFEE"))

if not azb then
tes:Dialog({
Title = _d("fgFdABkHTFALXRY"),
Description = _d("bQxaFksETVAIV0UDB0sZClxFDANWXBZSEQIJVkpERAwFAldOSg"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})

return
end

edu.standDown(edu.generationOpen)

pcall(function()
azb:Fire()
end)
end,
})

wj.bossTeams.towerSection = bxc:Section({
Side = _d("dQFVEQ"),
})

wj.bossTeams.towerSection:Header({
Name = _d("bQtEABlGbFwFXhY"),
})

wj.bossTeams.towerSection:Paragraph({
Header = _d("cQtERR8JT1wWExEOB1VKREQKGQ0"),
Body = _d("dgJVX0sDWVoMExceCBhMF1YWSxFQWBBWEw4UGE0BUghLD0xKREAJBBIYWAhBAAoCQRkMXAkPFRYzbnwLUUZdWAdbRR8JT1wWEwcOCldOREEQBRUYTg1HDUsSUFxERwAKCxhJDVAODgIYXwtBRQISFg"),
})

wj.bossTeams.towerToggle = wj.bossTeams.towerSection:Toggle({
Name = _d("bQtEABlGbFwFXhY"),
Default = false,
Callback = function(wl)
wj.bossTeams.towersOn = wl
end,
}, _d("TQtEABk5TFwFXhY"))

for pcbu, ga in ipairs({
{ kind = _d("TQtEABk"), name = _d("cApVDAUPTEBEcAQYElRcRBxFJQ9fURBeBBkD") },
{ kind = _d("UQVBAQgJSlw"), name = _d("cBdfBAUCGHEFQQEICUpc") },
}) do
local de = math.clamp(math.floor(tonumber(wj.bossTeams.towerPicked[ga.kind]) or 1), 1, 4)

wj.bossTeams.towerPicked[ga.kind] = de

wj.bossTeams.towerUi[ga.kind] = wj.bossTeams.towerSection:Dropdown({
Name = ga.name,
Search = false,
Multi = false,
Required = false,
Default = de,
Options = { _d("bQFSCEtX"), _d("bQFSCEtU"), _d("bQFSCEtV"), _d("bQFSCEtS") },
Callback = function(pnz)
local lqis = type(pnz) == _d("TQVRCQ4") and pnz[1] or pnz
local jsf = type(lqis) == _d("ShBBDAUB") and tonumber(lqis:match(_d("EUFXTkI"))) or nil

if jsf then
wj.bossTeams.towerPicked[ga.kind] = jsf
wj.bossTeams.save()
end

pcall(function()
wj.bossTeams.towerUi[ga.kind]:UpdateName(ga.name .. _d("GYazx0s") .. (lqis or _d("bQFSCEtX")))
end)
end,
}, _d("TQFSCDQSV04BQTo") .. ga.kind)

pcall(function()
wj.bossTeams.towerUi[ga.kind]:UpdateSelection(_d("bQFSCEs") .. tostring(de))
wj.bossTeams.towerUi[ga.kind]:UpdateName(ga.name .. _d("GYazx0syXVgJEw") .. tostring(de))
end)
end

wj.bossTeams.towerSection:Header({
Name = _d("ahNSFUsJVhkCXwoEFA"),
})

wj.bossTeams.towerSection:Paragraph({
Header = _d("ahNSFUsSXVgJEwoFRlkZAl8KBBQ"),
Body = _d("bQxWRQwHVVxDQEUEEVYZF0QEG0oYVwtHRQpGSFgRQABFRn1YB1tFGRNUXERaFksHGF8IXAoZRllXABMRAwMYTQFSCEsRV0sKEwMZCVUZEFsEH0ZeVQtcF0sJVhVERBcCEkxcChMMBRJXGRBbAEsBWVQBFBZLNV1NEFoLDBUYFFoTJB4SVxkwVgQGRmtOBUNFWkZZVwATV0dGS1ZERw0ORl9YCVZFBgdTXBcTEQMDGEoTWhEIDhhQEEAABwAYTgxWC0sHGEsRXUUYEllLEEBFHw5ZTURVCQQJShdEfQofDlFXAxMMGEZLTQtDFQ4CGFgKV0UfDl0ZFkYLSw1dXBRARQISSxkXXwofSDIzJRMGChVMVQETFx4IGF4BRxZLElBcREAEBgMYShNaEQgOGF8WXAhLElBQFxMVCghdVUgTBw4FWUwXVkUfDl0ZA1IIDkFLGQtEC0sVT1gUEwoFCkEZAloXDhUYUApADA8DGHAKVQwFD0xcRGEKBAtLF245KQ4HTlxEUkUNCldWFhMEH0YIGRBcRR8TSldERw0KEhhLEV8ASwleX0o"),
})

function wj.bossTeams.swapStatusText()
local hail = wj.bossTeams.swap
local ruwx = {}

if hail.on then
table.insert(ruwx, _d("dgoTSEsRSlAQRwAFRkxWREcNDkZfWAlWQhhGeUwQXEU/A1lURGASChYYSwtEFkU"))
else
table.insert(ruwx, _d("dgJVRUZGTFEBEwIKC10eFxMWHAdIGQ1ARQcDXk1EUgkECF0X"))
end

local mkf = {
{ index = 1, floor = hail.floor, team = hail.team },
{ index = 2, floor = hail.floor2, team = hail.team2 },
}

for ltdt, zsq in ipairs(mkf) do
if zsq.floor > 0 then
table.insert(ruwx, string.format(_d("ahNSFUtDXANEZwAKCxgcABMDGQlVGQJfCgQUGBwA"), zsq.index, zsq.team, zsq.floor))
else
table.insert(ruwx, string.format(_d("ahNSFUtDXANEXAMNRhBXCxMDBwlXS0RAAB9P"), zsq.index))
end
end

if wj.bossTeams.swapMessage ~= _d("") then
table.insert(ruwx, wj.bossTeams.swapMessage)
end

return table.concat(ruwx, _d("Mw"))
end

function wj.bossTeams.paintSwap()
pcall(function()
wj.bossTeams.swapStatus:UpdateBody(wj.bossTeams.swapStatusText())
end)
end

wj.bossTeams.swapToggle = wj.bossTeams.towerSection:Toggle({
Name = _d("ahNSFUsSXVgJEwoFRl5VC1wX"),
Default = wj.bossTeams.swap.on,
Callback = function(yttr)
wj.bossTeams.swap.on = yttr

wj.bossTeams.swapReset()

wj.bossTeams.swapApply()
wj.bossTeams.save()
end,
}, _d("ShNSFTQSXVgJbAoFOV5VC1wX"))

wj.bossTeams.swapInput = wj.bossTeams.towerSection:Input({
Name = _d("fwhcChk"),
Placeholder = _d("XEpUS0tTCAlEG1VLWxhWAlVM"),
AcceptedCharacters = _d("dxFeABkPWw"),
Callback = function(dfy)
local tuk = tonumber(type(dfy) == _d("ShBBDAUB") and dfy:match(_d("EUFXTkI")) or dfy)

if tuk then
wj.bossTeams.swap.floor = tuk
wj.bossTeams.swapReset()
wj.bossTeams.swapApply()
wj.bossTeams.save()
end
end,
}, _d("XwhcChk"))

wj.bossTeams.swapDropdown = wj.bossTeams.towerSection:Dropdown({
Name = _d("ahNSFUsSVw"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(wj.bossTeams.swap.team) or 1), 1, 4),
Options = { _d("bQFSCEtX"), _d("bQFSCEtU"), _d("bQFSCEtV"), _d("bQFSCEtS") },
Callback = function(rshv)
local ejtf = type(rshv) == _d("TQVRCQ4") and rshv[1] or rshv
local hax = type(ejtf) == _d("ShBBDAUB") and tonumber(ejtf:match(_d("EUFXTkI"))) or nil

if hax then
wj.bossTeams.swap.team = hax
wj.bossTeams.swapReset()
wj.bossTeams.swapApply()
wj.bossTeams.save()
end

pcall(function()
wj.bossTeams.swapDropdown:UpdateName(_d("ahNSFUsSVxmGs8dL") .. (ejtf or _d("bQFSCEtX")))
end)

wj.bossTeams.paintSwap()
end,
}, _d("ShNSFTQSVw"))

wj.bossTeams.swapInput2 = wj.bossTeams.towerSection:Input({
Name = _d("fwhcChlGCg"),
Placeholder = _d("XEpUS0tXCAlUE01bRgUZC1UDQg"),
AcceptedCharacters = _d("dxFeABkPWw"),
Callback = function(gch)
local pw = tonumber(type(gch) == _d("ShBBDAUB") and gch:match(_d("EUFXTkI")) or gch)

if pw then
wj.bossTeams.swap.floor2 = pw
wj.bossTeams.swapReset()
wj.bossTeams.swapApply()
wj.bossTeams.save()
end
end,
}, _d("XwhcChk5Cg"))

wj.bossTeams.swapDropdown2 = wj.bossTeams.towerSection:Dropdown({
Name = _d("ahNSFUsSVxlW"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(wj.bossTeams.swap.team2) or 1), 1, 4),
Options = { _d("bQFSCEtX"), _d("bQFSCEtU"), _d("bQFSCEtV"), _d("bQFSCEtS") },
Callback = function(wqgw)
local xny = type(wqgw) == _d("TQVRCQ4") and wqgw[1] or wqgw
local vnp = type(xny) == _d("ShBBDAUB") and tonumber(xny:match(_d("EUFXTkI"))) or nil

if vnp then
wj.bossTeams.swap.team2 = vnp
wj.bossTeams.swapReset()
wj.bossTeams.swapApply()
wj.bossTeams.save()
end

pcall(function()
wj.bossTeams.swapDropdown2:UpdateName(_d("ahNSFUsSVxlWE4frxBg") .. (xny or _d("bQFSCEtX")))
end)

wj.bossTeams.paintSwap()
end,
}, _d("ShNSFTQSV2ZW"))

wj.bossTeams.swapStatus = wj.bossTeams.towerSection:Paragraph({
Header = _d("ahNSFUsVTFgQRhY"),
Body = wj.bossTeams.swapStatusText(),
})

pcall(function()
local fku = math.clamp(math.floor(tonumber(wj.bossTeams.swap.team) or 1), 1, 4)
local ahte = math.clamp(math.floor(tonumber(wj.bossTeams.swap.team2) or 1), 1, 4)

wj.bossTeams.swapDropdown:UpdateSelection(_d("bQFSCEs") .. tostring(fku))
wj.bossTeams.swapDropdown:UpdateName(_d("ahNSFUsSVxmGs8dLMl1YCRM") .. tostring(fku))
wj.bossTeams.swapDropdown2:UpdateSelection(_d("bQFSCEs") .. tostring(ahte))
wj.bossTeams.swapDropdown2:UpdateName(_d("ahNSFUsSVxlWE4frxBhtAVIISw") .. tostring(ahte))
end)

task.spawn(function()
local sgwb = wj.bossTeams.swapStatusText()

while wyvs() do
local hj = wj.bossTeams.swapStatusText()

if hj ~= sgwb then
sgwb = hj
wj.bossTeams.paintSwap()
end

task.wait(2)
end
end)

if wj.bossTeams.swap.on then
task.delay(2, function()
pcall(wj.bossTeams.swapApply)
end)
end

wj.bossTeams.section = bxc:Section({
Side = _d("aw1UDR8"),
})

wj.bossTeams.section:Header({
Name = _d("ewtAFksyXVgJQA"),
})

wj.bossTeams.section:Paragraph({
Header = _d("cQtERQkJS0pERwAKC0sZE1wXAA"),
Body = _d("dgJVX0sIV00MWgsMRlFKREASAhJbUQFXRUZGXU8BQRxLAFFeDEdFHhVdSkRHDQ5GTFwFXkUSCU0ZBV8XDgdcQERbBB0DGFUNXQAPRk1JSBMSAw9bUURaFksSUFxEYAkEEhgIREcACgsYTApfABgVGEoIXBFLVBhNBVgAGEZMUQETBwoSTFUBHW9hKVYDRFYECA4YWBZWBEsEXVULREUND19REEBFHA9MUURHDQ5GTFwFXkUSCU0ZFFoGAEZeVhYTDB9I"),
})

wj.bossTeams.toggle = wj.bossTeams.section:Toggle({
Name = _d("ewtAFksyXVgJQA"),
Default = false,
Callback = function(ynk)
wj.bossTeams.enabled = ynk
end,
}, _d("WwtAFjQSXVgJQA"))

for djcd, tze in ipairs(xo) do
local mab = wj.bossTeams.picked[tze.id] or 1

mab = math.clamp(math.floor(tonumber(mab) or 1), 1, 4)
wj.bossTeams.picked[tze.id] = mab

wj.bossTeams.ui[tze.id] = wj.bossTeams.section:Dropdown({
Name = tze.name,
Search = false,
Multi = false,
Required = false,

Default = mab,
Options = { _d("bQFSCEtX"), _d("bQFSCEtU"), _d("bQFSCEtV"), _d("bQFSCEtS") },
Callback = function(ddc)
local luqc = type(ddc) == _d("TQVRCQ4") and ddc[1] or ddc
local kuo = type(luqc) == _d("ShBBDAUB") and tonumber(luqc:match(_d("EUFXTkI"))) or nil

if kuo then
wj.bossTeams.picked[tze.id] = kuo

wj.bossTeams.save()
end

pcall(function()
wj.bossTeams.ui[tze.id]:UpdateName(tze.name .. _d("GYazx0s") .. (luqc or _d("bQFSCEtX")))
end)
end,
}, _d("TQFSCDQRV0sIVzo") .. tze.id)

pcall(function()
wj.bossTeams.ui[tze.id]:UpdateSelection(_d("bQFSCEs") .. tostring(mab))
wj.bossTeams.ui[tze.id]:UpdateName(tze.name .. _d("GYazx0syXVgJEw") .. tostring(mab))
end)
end

wj.bossTeams.raidSection = bxc:Section({
Side = _d("aw1UDR8"),
})

wj.bossTeams.raidSection:Header({
Name = _d("awVaAUsyXVgJQA"),
})

wj.bossTeams.raidSection:Paragraph({
Header = _d("cQtERRkHUV1ERwAKC0sZE1wXAA"),
Body = _d("dgJVX0sUWVAAQEUeFV0ZE1sEHwNOXBYTEQ4HVRkQWwBLFVRWEBMEBxRdWABKRQMJVF0XHW9hKVYDRFYECA4YSwVaAUsEXVULREUCFRhfC0YCAxIYTg1HDUsSUFxERwAKCxhJDVAODgIYXwtBRQISFg"),
})

wj.bossTeams.raidToggle = wj.bossTeams.raidSection:Toggle({
Name = _d("awVaAUsyXVgJQA"),
Default = false,
Callback = function(dq)
wj.bossTeams.raidsOn = dq
end,
}, _d("SwVaATQSXVgJQA"))

for stxr, tyyg in ipairs(vofq.Raids) do
if tyyg.BossTitle and tyyg.id then
local sgl = wj.bossTeams.raidPicked[tyyg.id] or 1

sgl = math.clamp(math.floor(tonumber(sgl) or 1), 1, 4)
wj.bossTeams.raidPicked[tyyg.id] = sgl

wj.bossTeams.raidUi[tyyg.id] = wj.bossTeams.raidSection:Dropdown({
Name = tyyg.BossTitle,
Search = false,
Multi = false,
Required = false,
Default = sgl,
Options = { _d("bQFSCEtX"), _d("bQFSCEtU"), _d("bQFSCEtV"), _d("bQFSCEtS") },
Callback = function(lcf)
local qi = type(lcf) == _d("TQVRCQ4") and lcf[1] or lcf
local rhi = type(qi) == _d("ShBBDAUB") and tonumber(qi:match(_d("EUFXTkI"))) or nil

if rhi then
wj.bossTeams.raidPicked[tyyg.id] = rhi
wj.bossTeams.save()
end

pcall(function()
wj.bossTeams.raidUi[tyyg.id]:UpdateName(tyyg.BossTitle .. _d("GYazx0s") .. (qi or _d("bQFSCEtX")))
end)
end,
}, _d("TQFSCDQUWVAAbA") .. tyyg.id)

pcall(function()
wj.bossTeams.raidUi[tyyg.id]:UpdateSelection(_d("bQFSCEs") .. tostring(sgl))
wj.bossTeams.raidUi[tyyg.id]:UpdateName(tyyg.BossTitle .. _d("GYazx0syXVgJEw") .. tostring(sgl))
end)
end
end

task.spawn(function()
local avt = va()

while wyvs() do
local yba = va()

if rk.enabled and rk.statusText then
yba = rk.statusText()
end

yba = yba .. _d("M25gABkQXUtERhVL") .. jgxp()

if yba ~= avt then
avt = yba
pcall(function()
znl:UpdateBody(yba)
end)
end
task.wait(0.5)
end
end)

task.spawn(function()
while wyvs() do
for hgp, qkw in ipairs({ _d("ewVHEQcDf0wN"), _d("ewVHEQcDf0wNAQ") }) do
local mjy = qsrk:FindFirstChild(qkw)
local ccnh = mjy and mjy:FindFirstChild(_d("ewVHEQcDa1oWVgAF"))
local dqsd = mjy and mjy:FindFirstChild(_d("cQ1XACkHTE0IViceEkxWCg"))

if ccnh and ccnh.Visible and dqsd and not dqsd.Visible then
dqsd.Visible = true
end
end

task.wait(0.5)
end
end)

task.spawn(function()
local gvoa = false

while wyvs() do
if wkaf then
local xfhl = qsrk:FindFirstChild(_d("bQtEABk0XUoRXxEsE1E"))
local hnn = xfhl and xfhl:FindFirstChild(_d("awFAEAcSfksFXgA"))
local jqn = xfhl and xfhl:FindFirstChild(_d("fgFdABkHTFAKVCMZB1Vc"))

if jqn and jqn.Visible then
jqn.Visible = false
end

local dims = hnn and hnn.Visible or false

if dims and not gvoa then
local ht = hnn:FindFirstChild(_d("eghcFg4kTU0QXAs"))
local enky = false

if ht then
for rpkw, ox in ipairs({ _d("dAtGFg4kTU0QXAtaJVRQB1g"), _d("eAdHDB0HTFwA") }) do
local rdv = ht[ox]
if rdv then
for lskp, jpet in ipairs(getconnections(rdv)) do
pcall(function()
jpet:Fire()
end)
enky = true
end
end
end
end

if not enky then
hnn.Visible = false
else
task.spawn(function()
task.wait(0.3)
if hnn.Parent and hnn.Visible then
hnn.Visible = false
end
end)
end
end

gvoa = dims
else
gvoa = false
end

task.wait(0.2)
end
end)

local atet = {}

function atet.active()
return wj.enabled or wj.story
end

function atet.towerHolds()
if rk.enabled then
return false
end

if gwn.run.enabled then
return true
end

return qkca.enabled and not qkca.paused
end

function atet.ready(pvc, iic, zajq)
local voq = wj.unlocked[pvc]

return (not voq or voq[iic] ~= false) and xp(pvc, iic) <= zajq
end

function atet.hasReadyTarget()
local vnh = os.time()

for spld, zhr in ipairs(pob()) do
for mdvp, tzd in ipairs(jsje()) do
if atet.ready(zhr, tzd, vnh) then
return true
end
end
end

return false
end

function atet.backOff(phim, oaq)
lgls(phim, oaq, os.time() + 5)
end

function atet.findTarget()
for ksxq, mh in ipairs(pob()) do
local iyrk = dqrh(mh)
local ifi = os.time() - (wj.lastFetch[mh] or 0) > 60

if ifi and iyrk and not wj.walkToNpc then
btr(iyrk)
task.wait(0.3)
hvn(mh)
end

for cxyl, zfe in ipairs(jsje()) do
if atet.ready(mh, zfe, os.time()) then
return mh, zfe
end
end
end

return nil
end

function wj.bossTeams.slotForFight()
if rk.hasSlot2 == false then
return 1
end

if rk.busy(2) then
return 1
end

return 2
end

function wj.bossTeams.slotTeam(zem)
local zgi = qsrk:FindFirstChild(_d("agFHEQIIX0ojRgw"))
local wlcy = zgi and zgi:FindFirstChild(_d("aghcET8DWVQ") .. zem .. _d("exFHEQQI"), true)
local sqd = wlcy and wlcy.Text

return sqd and tonumber(sqd:match(_d("EUFXTkI"))) or nil
end

function wj.bossTeams.applyTeam(fbv, yy)
fbv = tonumber(fbv)

if not fbv then
return false
end

yy = tonumber(yy) or wj.bossTeams.slotForFight()

if rk.busy(yy) then
return false
end

wj.bossTeams.lastSlot = yy

local unf = wj.bossTeams.slotTeam(yy) or wj.bossTeams.applied[yy]

if unf == fbv then
return true
end

local ptsz = edu.remote(_d("ahNaEQgObFwFXg"))

if not ptsz then
return false
end

local bcx = pcall(function()
ptsz:FireServer(fbv, false, yy)
end)

wj.bossTeams.applied[yy] = fbv
task.wait(0.2)

return bcx
end

function wj.bossTeams.apply(vnz)
if not wj.bossTeams.enabled then
return
end

local bmpg = wj.bossTeams.worldOf[vnz]
local wan = bmpg and wj.bossTeams.picked[bmpg]

if not wan then
return
end

wj.bossTeams.applyTeam(wan)
end

function wj.bossTeams.applyTower(cto, dnrg)
if not wj.bossTeams.towersOn then
return false
end

local tu = wj.bossTeams.towerPicked[cto]

local xty = wj.bossTeams.swapFired[cto]

if wj.bossTeams.swap.on and type(xty) == _d("TQVRCQ4") then
tu = xty[2] or xty[1] or tu
end

if not tu then
return false
end

return wj.bossTeams.applyTeam(tu, dnrg)
end

function wj.bossTeams.applyRaid(tmyt)
if not wj.bossTeams.raidsOn then
return
end

local xrb = tmyt and wj.bossTeams.raidPicked[tmyt]

if not xrb then
return
end

wj.bossTeams.applyTeam(xrb)
end

function atet.fight(gph, fsbt)
local ubmq = dqrh(gph)

if not ubmq then
atet.backOff(gph, fsbt)
return false
end

local abj

if wj.walkToNpc then
local cwah = zc[gph]

if cwah then
za.TeleportToWorld:FireServer(cwah)
task.wait(2.5)

local azh = dqrh(gph) or ubmq
local mvf = azh:GetPivot()

abj = pd(mvf.Position + mvf.LookVector * 6, function()
return not atet.active() or not wj.walkToNpc
end)

if abj then
hvn(gph)
abj = atet.ready(gph, fsbt, os.time())
end
end
else
abj = btr(ubmq)
end

if not abj then
atet.backOff(gph, fsbt)
return false
end

task.wait(0.4)
wj.bossTeams.apply(gph)
wj.activeDifficulty[gph] = fsbt
za.SetNPCDifficulty:FireServer(gph, fsbt)
task.wait(0.4)

wj.currentBattle = {
npcId = gph,
difficulty = fsbt,
}
ok = gph
hmq = fsbt
za.StartNPCBattle:FireServer(gph)
lgls(gph, fsbt, os.time() + 10)
wj.battlePending = true
wj.battlePendingUntil = os.time() + 30
task.wait(1)

return true
end

wj.workPending = function()

if fhyz.misc and fhyz.misc.cards and fhyz.misc.cards.inFlight then
return true
end

if not atet.active() then
return false
end

if wj.battlePending then
return true
end

local inw = rk.npcSlot()

if inw and rk.busy(inw) then
return true
end

return atet.hasReadyTarget()
end

task.spawn(function()
while wyvs() do

local etqx = (rk.enabled and (fhyz.enabled or ii.enabled or fhyz.worldBoss.enabled))
or atet.towerHolds()
or not rk.slotFree(rk.npcSlot())

or (fhyz.misc and fhyz.misc.cards and fhyz.misc.cards.inFlight)
or (wj.battlePending and os.time() < wj.battlePendingUntil)

if atet.active() and not etqx and not rk.prioBlocks(_d("VxRQ")) then
local ikk, vmw = atet.findTarget()

if ikk then
atet.fight(ikk, vmw)
end
end

task.wait(0.5)
end
end)

task.spawn(function()
while wyvs() do

local jpy = {}

if fhyz.enabled then
local gjgl = rk.roleSlot(_d("VxRQ"))

if gjgl then
table.insert(jpy, gjgl)
end

if rk.splitNpc() and gjgl ~= 2 then
table.insert(jpy, 2)
end
end

local xhkt = vf:FindFirstChild(_d("awVaATgSWU0RQA"))

if #jpy > 0 and xhkt and (not ii.enabled or rk.splitNpc()) and (rk.enabled or not wj.workPending()) then
for woh, hps in ipairs(jpy) do
local vor = xhkt

local tbi = fhyz.bossFor(hps, (hps ~= 1 and not rk.splitNpc()) and 1 or nil)
local nqb = vor:GetAttribute(_d("cBd8FQ4I")) == true or vor:GetAttribute(_d("fwtBBg4C")) == true
local orb = tbi ~= nil and vor:GetAttribute(_d("awFSARI5") .. tbi) == true
local fjkn = tbi and nzhn(tbi)

if tbi and fhyz.pending[tbi] and os.time() >= (fhyz.pendingUntil[tbi] or 0) then
fhyz.pending[tbi] = false
fhyz.cleared[tbi] = nil
end

if tbi and rk.slotFree(hps) and nqb and orb and fhyz.cleared[tbi] ~= fjkn and not fhyz.pending[tbi] then
local rwwi = xfxq[tbi]
local rw = rwwi and dqrh(rwwi)
local bfi = false

if rw then
if fhyz.walkToBoss then
local inv = oqa[tbi]
local qan = rtpa.Character and rtpa.Character:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))
local sqfz = rw:GetPivot().Position
local azkg = qan and (qan.Position - sqfz).Magnitude <= 15

if azkg then
bfi = true
elseif inv then
za.TeleportToWorld:FireServer(inv)

local eud = os.clock()
while os.clock() - eud < 2.5 and fhyz.enabled do
task.wait(0.1)
end

if fhyz.enabled then
local ao = dqrh(rwwi) or rw
local gast = ao:GetPivot()
local ciq = gast.Position + gast.LookVector * 6
bfi = uo(ciq, fhyz.walkSpeed, function()
return not fhyz.enabled or not fhyz.walkToBoss
end)
end
end

if not bfi then
bfi = btr(rw)
end
else
bfi = btr(rw)
end

if bfi then
task.wait(0.5)
end
end

if bfi and not rk.prioBlocks(_d("SwVaARg")) then
fhyz.inFlight[tbi] = hps
fhyz.pending[tbi] = true
fhyz.pendingUntil[tbi] = os.time() + 15
fhyz.cleared[tbi] = fjkn

local cuuv = fhyz.difficulties[1] or _d("VwtBCAoK")
local lnvj = fhyz.progress[tbi]

if lnvj then
local bm = lnvj.unlocked
local cgc = lnvj.cooldowns

for mhpp, nf in ipairs(fhyz.difficulties) do
local wsrn = not bm or bm[nf] ~= false
local aihk = cgc and tonumber(cgc[nf]) or 0

if wsrn and aihk <= 0 then
cuuv = nf
break
end
end
end

wj.bossTeams.applyRaid(tbi)
za.SetRaidDifficulty:FireServer(cuuv, tbi)
task.wait(0.3)
za.StartRaidBattle:FireServer(tbi)
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while wyvs() do
local cns = ii.inBattle and os.time() < ii.inBattleUntil

if ii.enabled and (rk.enabled or not wj.workPending()) and not cns and rk.slotFree(rk.roomSlot()) and not (ii.pending and os.time() < ii.pendingUntil) then
local po = ii.progress

if po == nil then
za.RequestInfiniteRoomProgress:FireServer()
task.wait(0.5)
else
local hrk = nil

for hlmq, gsh in ipairs(bvjf.Milestones) do
if bvjf.isMilestoneUnlocked(gsh, po) and not bvjf.isMilestoneCleared(gsh, po) then
hrk = gsh
break
end
end

if hrk then

local xrn = rk.roomSlot()

ii.currentRoom = hrk
ii.inBattle = true
ii.inBattleUntil = os.time() + 60
ii.pending = true
ii.pendingUntil = os.time() + 10

local kxe = qsrk:FindFirstChild(xrn == 2 and _d("awFAAB8kWU0QXwAtCldWFgE") or _d("awFAAB8kWU0QXwAtCldWFg"))
if kxe and kxe:IsA(_d("ew1dAQoEVFwhRQAFEg")) then
kxe:Fire(hrk, _d("UApVDAUPTFw7QQoECw"))
end

local lny = qsrk:FindFirstChild(xrn == 2 and _d("ahBSFx8vVl8NXQwfA2pWC14nChJMVQEB") or _d("ahBSFx8vVl8NXQwfA2pWC14nChJMVQE"))
if lny and lny:IsA(_d("ew1dAQoEVFwhRQAFEg")) then
lny:Fire(hrk)
end

za.StartBattle:FireServer(_d("UApVDAUPTFw7QQoECw"), {
milestone = hrk,
slot = xrn,
})
task.wait(2)
end
end
end

task.wait(1)
end
end)

local function des(otst, ilzf)
local mru = qsrk:FindFirstChild(_d("agdBAA4If0wN"))

if not mru then
return
end

local jri = mru:FindFirstChild(otst)
local lya = jri and jri:FindFirstChild(_d("bwVfEA4qWVsBXw"), true)
local qpd = jri and jri:FindFirstChild(_d("dQVRAAc"), true)

if not jri then
return
end

local frxz = false

if lya then
frxz = lya.Text == _d("dgo")
elseif qpd then
frxz = not string.lower(qpd.Text):find(_d("VgJV"), 1, true)
end

if frxz ~= ilzf then
for iwp, kbs in ipairs(getconnections(jri.MouseButton1Click)) do
local gol = kbs.Function

if type(gol) == _d("XxFdBh8PV1c") then
pcall(gol)
else
pcall(function()
kbs:Fire()
end)
end
end
end
end

getgenv().ACBXSetRollButton = des

local function xrr(knzw)
des(_d("aBFaBgA0V1UIcRAfEldX"), knzw)
des(_d("eBFHCjkJVFUmRhEfCVY"), knzw)
end

getgenv().ACBXSetRollUi = xrr
pfzf.setRollButton = des

pcall(function()
za.SaveClientData:FireServer({ autoHideBattle = false })
end)

task.defer(function()
task.wait(0.5)

local xur = qsrk:FindFirstChild(_d("ewVHEQcDf0wN"))
local zpy = xur and xur:FindFirstChild(_d("ewVHEQcDa1oWVgAF"))
local uwbi = xur and xur:FindFirstChild(_d("cQ1XACkHTE0IViceEkxWCg"))

if uwbi and uwbi.Visible and zpy and not zpy.Visible and mos() then
for ans, fwcn in ipairs(getconnections(uwbi.MouseButton1Click)) do
local czcp = fwcn.Function

if type(czcp) == _d("XxFdBh8PV1c") then
pcall(czcp)
else
pcall(function()
fwcn:Fire()
end)
end
end
end
end)

xrr(true)

task.spawn(function()
while wyvs() do

if pfzf.autoRoll then
des(_d("eBFHCjkJVFUmRhEfCVY"), true)
end

if pfzf.autoQuickRoll then
des(_d("aBFaBgA0V1UIcRAfEldX"), true)
end

task.wait(1)
end
end)

local function mwm()

if qkca.floor then
return qkca.floor
end

local fhd = qsrk:FindFirstChild(_d("ewVHEQcDf0wN"))

if not fhd then
return nil
end

for cqha, csgi in ipairs({ _d("bQtEABkgVFYLQSkKBF1V"), _d("axFdIwcJV0soUgcOCg") }) do
local lxms = fhd:FindFirstChild(csgi)

if lxms and lxms.Visible and lxms.Text then
local emhv = tonumber(lxms.Text:match(_d("EUFXTkI")))

if emhv then
return emhv
end
end
end

local juob = fhd:FindFirstChild(_d("fwhcChk1W0sBVgs"))
local agq = juob and juob:FindFirstChild(_d("bQtDJwoU"))
local bitz = agq and agq:FindFirstChild(_d("fwhcChkqWVsBXw"))

if bitz then
return tonumber(bitz.Text:match(_d("EUFXTkI")))
end

return nil
end

function wj.bossTeams.swapRows(rnf)
local iked = qsrk:FindFirstChild(_d("agFHEQIIX0ojRgw"))
local lhp = iked and iked:FindFirstChild(_d("eBFHCjgRWUk") .. rnf .. _d("awtE"), true)

if not lhp then
return nil
end

return lhp:FindFirstChild(_d("eBFHCjgRWUk") .. rnf .. _d("egxWBgA")),
lhp:FindFirstChild(_d("eBFHCjgRWUk") .. rnf .. _d("bQFSCA")),
lhp:FindFirstChild(_d("eBFHCjgRWUk") .. rnf .. _d("fwhcChk"))
end

function wj.bossTeams.swapOn(vy)
local ager = qsrk:FindFirstChild(_d("agFHEQIIX0ojRgw"))
local hw = ager and ager:FindFirstChild(_d("fgFHNg4STFAKVBY"), true)

if not hw then
return nil
end

local umg, hutz = pcall(function()
return hw:Invoke()
end)

if umg and type(hutz) == _d("TQVRCQ4") then
return hutz[vy == 1 and _d("WBFHCj8DWVQ3RAQbI1ZYBl8ADw") or _d("WBFHCj8DWVQ3RAQbVH1XBVEJDgI")] == true
end

return nil
end

function wj.bossTeams.swapBox(ktlp, uhd)
if tonumber(ktlp.Text) == uhd then
return
end

ktlp.Text = tostring(uhd)

if getconnections then
for mknb, wwn in ipairs(getconnections(ktlp.FocusLost)) do
pcall(function()
wwn:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end

function wj.bossTeams.swapSet(ihqp, ylt, wje, omt)
local kpn, wgg, qinf = wj.bossTeams.swapRows(ihqp)

if not (kpn and wgg and qinf) then
return false
end

wje = math.max(1, math.floor(tonumber(wje) or 1))
omt = math.clamp(math.floor(tonumber(omt) or 1), 1, 4)

wj.bossTeams.swapBox(qinf, wje)
wj.bossTeams.swapBox(wgg, omt)

local feol = wj.bossTeams.swapOn(ihqp)

if feol ~= nil and feol ~= (ylt == true) and getconnections then
pcall(function()
for iusp, jv in ipairs(getconnections(kpn.MouseButton1Click)) do
pcall(function()
jv:Fire()
end)
end
end)
end

local dtbw = ihqp == 1 and _d("") or _d("Cw")

pcall(function()
za.SaveClientData:FireServer({
[_d("WBFHCj8DWVQ3RAQb") .. dtbw .. _d("fApSBwcDXA")] = ylt == true,
[_d("WBFHCj8DWVQ3RAQb") .. dtbw .. _d("bQFSCA")] = omt,
[_d("WBFHCj8DWVQ3RAQb") .. dtbw .. _d("fwhcChk")] = wje,
})
end)

return true
end

function wj.bossTeams.swapApply()
local atio = wj.bossTeams
local mji = atio.swap
local kezh = true

if mji.on then
kezh = atio.swapSet(1, mji.floor > 0, mji.floor, mji.team)
kezh = atio.swapSet(2, mji.floor2 > 0, mji.floor2, mji.team2) and kezh
else
kezh = atio.swapSet(1, false, mji.floor, mji.team)
kezh = atio.swapSet(2, false, mji.floor2, mji.team2) and kezh
end

atio.swapMessage = _d("")

if not kezh then
atio.swapMessage = _d("bQxWRQwHVVxDQEUqE0xWRGcACgsYahNSFUsUV04XEwQZAxhXC0dFCRNRVRATHA4SGBREQQAfFEFQClRL")
end

atio.paintSwap()
end

function wj.bossTeams.swapReset(wjz)
local ww = wj.bossTeams

if wjz then
ww.swapFired[wjz] = nil
else
ww.swapFired = {}
end
end

function wj.bossTeams.swapTick()
local bsj = wj.bossTeams
local jvr = bsj.swap

if not jvr.on or (jvr.floor <= 0 and jvr.floor2 <= 0) then
if next(bsj.swapFired) ~= nil then
bsj.swapFired = {}
end

return
end

local kpez = os.clock()
local qva = edu.remote(_d("ahNaEQgObFwFXg"))

if kpez - (bsj.swapWroteAt or 0) > 10 then
bsj.swapWroteAt = kpez
bsj.swapApply()
end

local mobs = {
{
kind = _d("TQtEABk"),
slot = rk.towerSlot(),

live = kpez - (qkca.floorAt or 0) < 90,
floor = mwm(),

own = true,
},
{
kind = _d("UQVBAQgJSlw"),
slot = rk.hardcoreSlot(),
live = afo.active(),
floor = afo.floorNow(),

own = false,
},
}

local cd = {
{ index = 1, floor = jvr.floor, team = jvr.team },
{ index = 2, floor = jvr.floor2, team = jvr.team2 },
}

for tzz, zyjb in ipairs(mobs) do
if not zyjb.live then

bsj.swapFired[zyjb.kind] = nil
elseif zyjb.own and qva and zyjb.floor then
local cf = bsj.swapFired[zyjb.kind]

for wd, gdl in ipairs(cd) do
local nyro = type(cf) == _d("TQVRCQ4") and cf[gdl.index]

if gdl.floor > 0 and zyjb.floor == gdl.floor and not nyro then
local tdf = pcall(function()
qva:FireServer(math.clamp(math.floor(gdl.team), 1, 4), true, zyjb.slot or 1)
end)

if tdf then
cf = type(cf) == _d("TQVRCQ4") and cf or {}
cf[gdl.index] = gdl.team
bsj.swapFired[zyjb.kind] = cf

bsj.swapMessage = string.format(_d("egVAEQcDGF8IXAoZRh1dRB5FGBFRTQdbAA9GTFZEZwAKCxgcAB0"), zyjb.floor, gdl.team)
bsj.paintSwap()
end
end
end
end
end
end

task.spawn(function()
while wyvs() do
pcall(wj.bossTeams.swapTick)
task.wait(0.5)
end
end)

local function awcv()

return atet.active() and atet.hasReadyTarget()
end

function fhyz.worldBoss.remote(jvp)
local efu = fhyz.worldBoss

efu.remotes = efu.remotes or {}

local ktvv = efu.remotes[jvp]

if ktvv and ktvv.Parent then
return ktvv
end

local yvo = edu.remote(jvp)

if yvo then
efu.remotes[jvp] = yvo
end

return yvo
end

function fhyz.worldBoss.setRepeat(cbmh)
local guwo = fhyz.worldBoss
local zd = guwo.remote(_d("bgtBCQ8kV0oXcgYfD1dX"))

if not zd then
return false
end

local mui = guwo.state
local unjc = type(mui) == _d("TQVRCQ4") and mui.repeatOn == true

if unjc == (cbmh and true or false) then
guwo.repeatIntent = nil

return true
end

if cbmh then
local yjgs = workspace:FindFirstChild(_d("bgtBCQ8kV0oXchcOCFk"))
local xvig = yjgs and (yjgs:FindFirstChild(_d("egFfCSYHQA")) or yjgs)
local pat = rtpa.Character and rtpa.Character:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not (xvig and pat) then
return false
end

local ttl, zie = pcall(function()
return xvig:GetPivot()
end)

if not ttl or (pat.Position - zie.Position).Magnitude > 60 then
return false
end
end

if guwo.repeatIntent == cbmh and os.clock() - (guwo.repeatAskedAt or 0) < 20 then
return false
end

guwo.repeatIntent = cbmh

pcall(function()
zd:FireServer(_d("SwFDAAoS"))
end)

guwo.repeatAskedAt = os.clock()

return true
end

function fhyz.worldBoss.requestSync()
local tntn = fhyz.worldBoss
local iw = tntn.remote(_d("bgtBCQ8kV0oXcgYfD1dX"))

if iw then
pcall(function()
iw:FireServer(_d("Sh1dBg"))
end)
end

tntn.askedAt = os.clock()
end

function fhyz.worldBoss.hasWork()
local lni = fhyz.worldBoss
local jvmc = lni.state

if not lni.enabled or type(jvmc) ~= _d("TQVRCQ4") then
return false
end

local jcmn = lni.isOpen()

if jcmn == nil then
jcmn = jvmc.open == true
end

return jcmn and jvmc.inFight ~= true
end

fhyz.worldBoss.bossUp = function()
local qch = fhyz.worldBoss

if not qch.enabled then
return false
end

local ygkp = qch.isOpen()

if ygkp ~= nil then
return ygkp == true
end

local pglk = qch.state

return type(pglk) == _d("TQVRCQ4") and pglk.open == true
end

function fhyz.worldBoss.meter()
local sal = fhyz.worldBoss
local bodo = os.clock()

if bodo - (sal.meterAt or 0) < 1 then
return sal.meterCurrent, sal.meterMax
end

sal.meterAt = bodo
sal.meterCurrent = nil
sal.meterMax = nil

local ooj = vf:FindFirstChild(_d("bgtBCQ8kV0oXYBEKEk1K"))
local owpd = ooj and tonumber(ooj:GetAttribute(_d("dAFHABk")))
local ytn = ooj and tonumber(ooj:GetAttribute(_d("dAFHABkrWUE")))

if owpd and ytn and ytn > 0 then
sal.meterCurrent = owpd
sal.meterMax = ytn

return sal.meterCurrent, sal.meterMax
end

local function nsj(vkn)
if type(vkn) ~= _d("ShBBDAUB") then
return nil
end

local uov, jbmv = vkn:match(_d("ET8WAU5IZRJNFhZBTmNyKXEOBgRlBk0"))
local hpop = tonumber(uov)

if not hpop then
return nil
end

local afnf = ({ K = 1000, M = 1000000, B = 1000000000 })[string.upper(jbmv or _d(""))] or 1

return hpop * afnf
end

local ew = qsrk:FindFirstChild(_d("bgtBCQ8kV0oXcQQFCF1LI0YM"))
local ua = ew and ew:FindFirstChild(_d("ewVdCw4U"))
local mwz = ua and ua:FindFirstChild(_d("dAFHABkkWUs"))
local jnew = mwz

if mwz and not mwz:IsA(_d("bQFLEScHWlwI")) then
jnew = mwz:FindFirstChild(_d("bQFLEQ"))
end

local wb = jnew and jnew:IsA(_d("bQFLEScHWlwI")) and jnew.Text or nil

if type(wb) == _d("ShBBDAUB") then
local ffv, onj = wb:match(_d("ET9tSjZNERZMHU5C"))

sal.meterCurrent = nsj(ffv)
sal.meterMax = nsj(onj)
end

return sal.meterCurrent, sal.meterMax
end

function fhyz.worldBoss.meterFull()
local oah, rgog = fhyz.worldBoss.meter()

return oah ~= nil and rgog ~= nil and rgog > 0 and oah >= rgog
end

fhyz.worldBoss.holdsFishing = function()
local kdt = fhyz.worldBoss

if not kdt.enabled or not kdt.bossUp() then
return false
end

if kdt.stopAtFull and kdt.meterFull() then
return false
end

return rk.prioBlocks(_d("TgVHABk"))
end

fhyz.worldBoss.holdsDigging = function()
local mcft = fhyz.worldBoss

if not mcft.enabled or not mcft.bossUp() then
return false
end

if mcft.stopAtFull and mcft.meterFull() then
return false
end

return rk.digBlocked()
end

fhyz.worldBoss.usesGameChain = function()
return true
end

function fhyz.worldBoss.travel()
local qkxs = fhyz.worldBoss
local cehu = rtpa.Character
local jcv = cehu and cehu:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not jcv or os.clock() < qkxs.travelUntil then
return
end

qkxs.travelUntil = os.clock() + 6

local kntp = workspace:FindFirstChild(_d("bgtBCQ8kV0oXYwoZEllV"))
local cwyv = kntp and kntp:FindFirstChild(_d("aQtBEQoK"))

if not cwyv then
return
end

if (jcv.Position - cwyv.Position).Magnitude > 150 then
local wtg = edu.remote(_d("bQFfABsJSk0wXDIEFFRd"))

if wtg then
pcall(function()
wtg:FireServer(_d("VQtRBxI"))
end)
end

return
end

if (jcv.Position - cwyv.Position).Magnitude > 6 then
qkxs.walkLeg(cwyv.Position + Vector3.new(0, 3, 0), 4)

if (jcv.Position - cwyv.Position).Magnitude > 9 then
return
end
end

local npl = cwyv:FindFirstChildOfClass(_d("aRZcHQILUU0dYxcEC0hN"))

if not npl then
return
end

pcall(function()
if type(fireproximityprompt) == _d("XxFdBh8PV1c") then
fireproximityprompt(npl)
else
npl:InputHoldBegin()
task.wait(0.25)
npl:InputHoldEnd()
end
end)
end

function fhyz.worldBoss.reach()
local pcjm = fhyz.worldBoss

local klhe = workspace:FindFirstChild(_d("bgtBCQ8kV0oXchcOCFk")) or workspace:FindFirstChild(_d("bgtBCQ8kV0oXYBUKEVY"), true)
local mu = rtpa.Character
local ldt = mu and mu:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not (klhe and ldt) then
pcjm.travel()
return false
end

local rbez = klhe:FindFirstChild(_d("egFfCSYHQA")) or klhe
local nmcp, idja = pcall(function()
return rbez:GetPivot()
end)

if not nmcp then
return false
end

local ghd = idja.Position + idja.LookVector * 6 + Vector3.new(0, 3, 0)
local rmr = Vector3.new(idja.Position.X, ghd.Y, idja.Position.Z)

ldt.CFrame = CFrame.lookAt(ghd, rmr)

return true
end

fhyz.worldBoss.cityBounds = { 19100, 20900, -850, 850 }

function fhyz.worldBoss.inArena()
local fc = rtpa.Character and rtpa.Character:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))
local kcn = fhyz.worldBoss.cityBounds

if not fc then
return false
end

local njt = fc.Position

return njt.X >= kcn[1] and njt.X <= kcn[2]
and njt.Z >= kcn[3] and njt.Z <= kcn[4]
end

function fhyz.worldBoss.enterCity(veh)
local aipe = fhyz.worldBoss

local yu = os.clock() + (veh or 30)

if aipe.inArena() then
return true
end

while os.clock() < yu do
if not aipe.enabled then
return false
end

aipe.travel()

if aipe.inArena() then
return true
end

task.wait(0.5)
end

return aipe.inArena()
end

fhyz.worldBoss.walking = false
fhyz.worldBoss.walkStartedAt = 0

function fhyz.worldBoss.walkLeg(imm, ccl)
local rsn = fhyz.worldBoss
local hhi = rtpa.Character
local yryu = hhi and hhi:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))
local mhkr = hhi and hhi:FindFirstChildOfClass(_d("cRFeBAUJUV0"))

if not (yryu and mhkr) then
return false
end

if rsn.walking and os.clock() - (rsn.walkStartedAt or 0) < 45 then
return false
end

ccl = ccl or 6

rsn.walking = true
rsn.walkStartedAt = os.clock()

local gvtg, lml = pcall(function()
local jok = os.clock() + 40
local aonb = 0
local ysy = yryu.Position
local xucd = os.clock()

while rsn.enabled and os.clock() < jok do
local chpp = Vector3.new(imm.X - yryu.Position.X, 0, imm.Z - yryu.Position.Z)

if chpp.Magnitude <= ccl then
return true
end

if os.clock() - aonb >= 0.25 then
mhkr:MoveTo(Vector3.new(imm.X, yryu.Position.Y, imm.Z))
aonb = os.clock()
end

if os.clock() - xucd >= 1.2 then
if (yryu.Position - ysy).Magnitude < 2 then
mhkr.Jump = true
end

ysy = yryu.Position
xucd = os.clock()
end

task.wait(0.1)
end

return Vector3.new(imm.X - yryu.Position.X, 0, imm.Z - yryu.Position.Z).Magnitude <= ccl
end)

pcall(function()
mhkr:MoveTo(yryu.Position)
end)

rsn.walking = false

return gvtg and lml == true
end

function fhyz.worldBoss.walkIn(iiz)
local oilk = fhyz.worldBoss
local zjt = workspace:FindFirstChild(_d("bgtBCQ8kV0oXchcOCFk"))
local hen = zjt and (zjt:FindFirstChild(_d("egFfCSYHQA")) or zjt) or nil
local psh = rtpa.Character and rtpa.Character:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if not (hen and psh) then
return false
end

local rrw, ihni = pcall(function()
return hen:GetPivot()
end)

if not rrw then
return false
end

local iej = ihni.Position + ihni.LookVector * 6 + Vector3.new(0, 3, 0)

if (psh.Position - iej).Magnitude <= (iiz or 10) then
return true
end

local hbh = oilk.walkLeg(iej, iiz or 6)

if not hbh then
hbh = (psh.Position - ihni.Position).Magnitude <= 25
end

return hbh
end

function fhyz.worldBoss.approach()
local dme = fhyz.worldBoss

if not dme.walkToBoss then
return dme.reach()
end

if not dme.enterCity() then
return false
end

return dme.walkIn(10)
end

function fhyz.worldBoss.fight()
local eoja = fhyz.worldBoss
local mdfj = eoja.remote(_d("bgtBCQ8kV0oXcgYfD1dX"))

local function xw(fsk)
eoja.nextFightAt = os.clock() + (fsk or 20)

return false
end

if not mdfj then
return xw(60)
end

if eoja.stopAtFull and eoja.meterFull() then
return xw(20)
end

if uffa.enabled
and (uffa.tpToBay or uffa.deepZone)
and uffa.phase ~= _d("UABfAA") then
return false
end

eoja.takingUntil = os.clock() + 45

local wsdf = workspace:FindFirstChild(_d("bgtBCQ8kV0oXchcOCFk"))
local nkh = wsdf and (wsdf:FindFirstChild(_d("egFfCSYHQA")) or wsdf) or nil
local flh = rtpa.Character and rtpa.Character:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

local function gtaq()
if not (nkh and flh) then
return nil
end

local pqh, rokg = pcall(function()
return nkh:GetPivot()
end)

if not pqh then
return nil
end

return (flh.Position - rokg.Position).Magnitude
end

local bfj = eoja.usesGameChain() and (gtaq() or math.huge) <= 60

if not bfj and not eoja.approach() then
eoja.takingUntil = os.clock() + 3

return xw(eoja.inArena() and 3 or 20)
end

if nkh and flh then
local hzux, jsu = pcall(function()
return nkh:GetPivot()
end)

if not hzux or (flh.Position - jsu.Position).Magnitude > 60 then
eoja.takingUntil = os.clock() + 2

return xw(eoja.inArena() and 2 or 10)
end
end

wj.bossTeams.applyTeam(eoja.team)

task.wait(bfj and 0 or (eoja.walkToBoss and 0.3 or 1.4))

pcall(function()
mdfj:FireServer(_d("Xw1UDR8"))
end)

eoja.fightAt = os.clock()

eoja.holdUntil = os.clock() + (eoja.usesGameChain() and 0.7 or 4)

eoja.takingUntil = os.clock() + 0.6

if uffa.enabled and (uffa.tpToBay or uffa.deepZone) then
uffa.deepPhase = _d("UABfAA")
uffa.deepStageAt = 0
uffa.nextCastAt = 0
end

eoja.killsAtFire = type(eoja.state) == _d("TQVRCQ4") and tonumber(eoja.state.kills) or nil

if not eoja.usesGameChain() and uffa.enabled
and (uffa.tpToBay or uffa.deepZone) then
eoja.nextFightAt = os.clock() + 1
end

return true
end

function fhyz.worldBoss.buy(vzv)
local zx = fhyz.worldBoss
local ieii = zx.remote(_d("bgtBCQ8kV0oXcgYfD1dX"))

vzv = vzv or 1

if not ieii then
return 0
end

local jwm = 0

for jqi = 1, vzv do
local gtts = zx.state

if type(gtts) ~= _d("TQVRCQ4") or type(gtts.shop) ~= _d("TQVRCQ4") then
break
end

if os.clock() < zx.buyAt then
break
end

local svbv = tonumber(gtts.medals) or 0
local vply = nil

for bxd, pfuw in ipairs(gtts.shop) do
local bl = tonumber(pfuw.price) or 0
local zdx = pfuw.kind ~= _d("UBBWCA") or (tonumber(pfuw.left) or 0) > 0

if zx.selected[pfuw.id] == true and zdx and pfuw.owned ~= true and bl <= svbv then
vply = pfuw
break
end
end

if not vply then
break
end

pcall(function()
ieii:FireServer(_d("WxFK"), vply.id, 1)
end)

jwm = jwm + 1
zx.bought = zx.bought + 1
zx.buyAt = os.clock() + 1.2

zx.syncedAt = 0
zx.requestSync()
task.wait(1.1)
end

return jwm
end

fhyz.worldBoss.questGroups = { _d("SQFBFgQIWVU"), _d("XghcBwoK"), _d("Xw1fCQ"), _d("SwFAERkPW00NXAs") }

function fhyz.worldBoss.questRows(ehy)
local sivd = fhyz.worldBoss
local qqzr = type(ehy) == _d("TQVRCQ4") and ehy.quests or nil
local hq = {}

if type(qqzr) ~= _d("TQVRCQ4") then
return hq
end

for rgt, ugbq in ipairs(sivd.questGroups) do
local hae = qqzr[ugbq]

if type(hae) == _d("TQVRCQ4") then
for dy, kkta in ipairs(hae) do
if type(kkta) == _d("TQVRCQ4") then
table.insert(hq, kkta)
end
end
end
end

return hq
end

function fhyz.worldBoss.claim()
local geb = fhyz.worldBoss
local uj = geb.remote(_d("bgtBCQ8kV0oXcgYfD1dX"))
local qggo = geb.state

if not uj or type(qggo) ~= _d("TQVRCQ4") or type(qggo.quests) ~= _d("TQVRCQ4") then
return 0
end

if os.clock() < geb.claimAt then
return 0
end

local st = geb.questRows(qggo)

if #st == 0 then
return 0
end

local xsaf = {}

for spi, qtw in ipairs(st) do
if qtw.id ~= nil then
xsaf[tostring(qtw.id)] = true
end
end

for uimb, sgo in pairs(geb.claimFired) do
if not xsaf[uimb] or os.clock() - sgo > 120 then
geb.claimFired[uimb] = nil
end
end

local equn = nil

for fbhb, hcnw in ipairs(st) do
if hcnw.complete == true and hcnw.claimed ~= true and hcnw.id ~= nil then
local tsph = tostring(hcnw.id)
local zza = geb.claimFired[tsph]

if not (zza and os.clock() - zza < 6) then
equn = hcnw
break
end
end
end

if not equn then
return 0
end

geb.claimFired[tostring(equn.id)] = os.clock()
geb.claimedTotal = geb.claimedTotal + 1

pcall(function()
uj:FireServer(_d("WghSDAY"), equn.id)
end)

geb.claimAt = os.clock() + 2
geb.syncedAt = 0
geb.requestSync()

return 1
end

fhyz.worldBoss.syncRemote = ekov(_d("bgtBCQ8kV0oXYBwFBQ"))

if fhyz.worldBoss.syncRemote then
ojk(fhyz.worldBoss.syncRemote.OnClientEvent, function(kjdz)
local mtwv = fhyz.worldBoss

if type(kjdz) ~= _d("TQVRCQ4") then
return
end

mtwv.state = kjdz
mtwv.syncedAt = os.clock()

if kjdz.inFight == true then
mtwv.wasFighting = true
elseif mtwv.wasFighting then
mtwv.wasFighting = false

if uffa.enabled then
pcall(uffa.recover)
end
end
end)
end

task.spawn(function()
fhyz.worldBoss.requestSync()
end)

task.spawn(function()
while wyvs() do
local vpjd = fhyz.worldBoss
local trwm = vpjd.state

if vpjd.autoClaim then
if os.clock() - vpjd.syncedAt > 4 and os.clock() - vpjd.askedAt > 1 then
vpjd.requestSync()
end

vpjd.claim()
end

if vpjd.enabled then

if os.clock() - vpjd.syncedAt > (vpjd.bossUp() and 1.5 or 4) and os.clock() - vpjd.askedAt > 1 then
vpjd.requestSync()
end

if vpjd.autoBuy and next(vpjd.selected) then
vpjd.buy(1)
end

local cqzp = type(trwm) == _d("TQVRCQ4") and trwm.repeatOn == true

if vpjd.usesGameChain() then

local ec = type(trwm) == _d("TQVRCQ4") and tonumber(trwm.kills) or nil

if ec and ec ~= vpjd.seenKills then
vpjd.seenKills = ec
vpjd.progressAt = os.clock()

vpjd.chainWaitAt = nil
end

if vpjd.bossUp() and not cqzp and os.clock() - (vpjd.repeatAskedAt or 0) > 20 then
if vpjd.approach() then
vpjd.repeatSeeded = true
vpjd.progressAt = os.clock()

vpjd.setRepeat(true)
end
end

if vpjd.hasWork() and os.clock() >= vpjd.holdUntil
and os.clock() >= (vpjd.nextFightAt or 0)
and os.clock() - (vpjd.kickAt or 0) > 0.5
and not (vpjd.stopAtFull and vpjd.meterFull())
and not rk.prioBlocks(_d("WwtAFg")) then
vpjd.chainWaitAt = nil
vpjd.kickAt = os.clock()
vpjd.fight()
elseif not vpjd.hasWork() then
vpjd.chainWaitAt = nil
end

if not vpjd.bossUp() then
vpjd.chainWaitAt = nil

if cqzp and os.clock() - (vpjd.repeatAskedAt or 0) > 6 then
vpjd.repeatSeeded = false
vpjd.setRepeat(false)
end
end
elseif vpjd.isOpen() and cqzp and os.clock() - (vpjd.repeatAskedAt or 0) > 6 then
vpjd.setRepeat(false)
end

local rvp = type(trwm) == _d("TQVRCQ4") and tonumber(trwm.kills) or nil

if vpjd.killsAtFire ~= nil and rvp == vpjd.killsAtFire
and os.clock() - (vpjd.fightAt or 0) > (vpjd.inArena() and 2.5 or 9)
and os.clock() < (vpjd.nextFightAt or 0)
and os.clock() >= vpjd.holdUntil then
vpjd.killsAtFire = nil
vpjd.nextFightAt = os.clock()
end

if not vpjd.usesGameChain() and vpjd.hasWork() and os.clock() >= vpjd.holdUntil
and os.clock() >= (vpjd.nextFightAt or 0)
and not (vpjd.stopAtFull and vpjd.meterFull()) then

local byvf = awcv()
local cjlx = rk.roleSlot(_d("VxRQ")) or 1
local rnek = rk.enabled and rk.busy(cjlx)

if not byvf and not rnek then
vpjd.fight()
end
end
end

local sbt = vpjd.bodyText()

if vpjd.bodyParagraph and sbt ~= vpjd.bodyShown then
vpjd.bodyShown = sbt

pcall(function()
vpjd.bodyParagraph:UpdateBody(sbt)
end)
end

local zfjr = vpjd.shopText()

if vpjd.shopParagraph and zfjr ~= vpjd.shopShown then
vpjd.shopShown = zfjr

pcall(function()
vpjd.shopParagraph:UpdateBody(zfjr)
end)
end

task.wait(0.5)
end
end)

function rk.roomsHaveWork()
if not ii.enabled then
return false
end

local pfyi = ii.progress

if pfyi == nil then
return true
end

for ondw, mjrr in ipairs(bvjf.Milestones) do
if bvjf.isMilestoneUnlocked(mjrr, pfyi) and not bvjf.isMilestoneCleared(mjrr, pfyi) then
return true
end
end

return false
end

function rk.raidHasWork()
if not fhyz.enabled then
return false
end

local nzvx = vf:FindFirstChild(_d("awVaATgSWU0RQA"))

if not nzvx then
return false
end

if not (nzvx:GetAttribute(_d("cBd8FQ4I")) == true or nzvx:GetAttribute(_d("fwtBBg4C")) == true) then
return false
end

for lrxv, eax in ipairs({ 1, 2 }) do
local ncyt = (eax ~= 1 and not rk.splitNpc()) and 1 or nil
local flnj = fhyz.picks[ncyt or eax] and fhyz.bossFor(eax, ncyt)

if flnj and fhyz.cleared[flnj] ~= nzhn(flnj) then
return true
end
end

return false
end

function rk.prioRank(yuk)
for dzq, iif in ipairs(rk.prioGroups) do
if iif.id == yuk then
return iif.rank
end
end

return 99
end

function rk.prioWants(awlv)
if awlv == _d("SwVaARg") then
return rk.raidHasWork()
elseif awlv == _d("WwtAFg") then

return fhyz.worldBoss.hasWork()
elseif awlv == _d("VxRQ") then
return awcv() or rk.roomsHaveWork()
elseif awlv == _d("UQVBAQgJSlw") then
return afo.active()
elseif awlv == _d("TgVHABk") then
return uffa.enabled or vls.autoOn == true
end

return false
end

function rk.prioBlocks(sft)
local bemi = rk.prioRank(sft)

for hci, yeqr in ipairs(rk.prioGroups) do
if yeqr.id ~= sft and yeqr.rank < bemi and rk.prioWants(yeqr.id) then
return true
end
end

return false
end

function rk.digBlocked()
local yvzh = rk.prioRank(_d("TgVHABk"))

for fnw, yol in ipairs(rk.prioGroups) do
if yol.id ~= _d("TgVHABk") and yol.id ~= _d("UQVBAQgJSlw")
and yol.rank < yvzh and rk.prioWants(yol.id) then
return true
end
end

return false
end

function rk.towerYields()
for vcki, ofkd in ipairs({ _d("SwVaARg"), _d("WwtAFg"), _d("VxRQ") }) do
if rk.prioWants(ofkd) then
return true
end
end

return false
end

function rk.towerOutranks()
return not rk.enabled and (afo.active() or gwn.run.enabled)
end

local function rwqc(kfo)
if not kfo then
return false
end

local zxm = false

for vct, zene in ipairs(getconnections(kfo.MouseButton1Click)) do
local uih = zene.Function

if type(uih) == _d("XxFdBh8PV1c") then
pcall(uih)
else
pcall(function()
zene:Fire()
end)
end

zxm = true
end

return zxm
end

function nrym()
for yxiz, upd in ipairs({ _d("ewVHEQcDf0wN"), _d("ewVHEQcDf0wNAQ") }) do
local xerz = qsrk:FindFirstChild(upd)

if xerz then
local qtv = xerz:FindFirstChild(_d("ewVHEQcDa1oWVgAF"))
local uom = qtv and qtv:FindFirstChild(_d("aBFaBgAhUU8BZhUpE0xNC10"))

if rwqc(uom) then
return true
end

local yyr = xerz:FindFirstChild(_d("fwhcChk1W0sBVgs"))
local ckf = yyr and yyr:FindFirstChild(_d("ewtHEQQLelgW"))
local keug = ckf and ckf:FindFirstChild(_d("fg1FAD4WekwQRwoF"))

if rwqc(keug) then
return true
end
end
end

local nyeq = vf:FindFirstChild(_d("awFeCh8DSw"))
local pck = nyeq and nyeq:FindFirstChild(_d("fg1FAD4WbFYTVhc"))
local aga = nyeq and nyeq:FindFirstChild(_d("fApXMQQRXUs2VggEEl0"))

if not (pck or aga) then
return false
end

if pck then
pcall(function()
pck:FireServer()
end)
end

if aga then
pcall(function()
aga:FireServer(1)
end)
end

qkca.manualPause = false
qkca.floor = nil
edu.restorePause()

return true
end

local trge = nrym

function nrym()

qkca.lastGiveUp = {
at = os.time(),
clock = os.clock(),
floor = qkca.floor,
parked = edu.parked(),
active = fdab(),
hard = edu.hardNow(),
nightmare = qkca.nightmare == true,
caller = debug.traceback(_d(""), 2),
}

local itkc = trge()

if itkc then
dpc.armedAt = os.clock()
end

return itkc
end

function tahm(yrbd)

local tzaa = false

if yrbd ~= false and fdab() then
local ptip = mwm()

if ptip then
tzaa = edu.pauseAt(true, ptip) or tzaa

qkca.pauseArmed = true
end
end

for emm, veeg in ipairs({ _d("ewVHEQcDf0wN"), _d("ewVHEQcDf0wNAQ") }) do
local hvvv = qsrk:FindFirstChild(veeg)

if hvvv then
local lnu = hvvv:FindFirstChild(_d("ewVHEQcDa1oWVgAF"))
local koo = lnu and lnu:FindFirstChild(_d("aBFaBgAkSlwFWCceEkxWCg"))

if koo then

if tostring(koo.Text):find(_d("2/ig"), 1, true) then
tzaa = true
elseif rwqc(koo) then
tzaa = true
end
end

local ibmk = hvvv:FindFirstChild(_d("fwhcChk1W0sBVgs"))

if ibmk and ibmk.Visible then
local yqhv = ibmk:FindFirstChild(_d("ewtHEQQLelgW"))
local oog = yqhv and yqhv:FindFirstChild(_d("bQVYACkUXVgPcRAfEldX"))

if rwqc(oog) then
tzaa = true
end
end
end
end

return tzaa
end

function afo.pauseRun()
if not fdab() then
pcall(function()
tes:Dialog({
Title = _d("aQVGFg5GcUoIUgsPRnBYFlcGBBRd"),
Description = _d("dwsTEQQRXUtEQRAFRlFKRF8MHQMYSw1UDR9GVlYTH0UYCRhNDFYXDkZRSkRdCh8OUVcDExEERkhYEUAARQ"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})
end)

return
end

afo.paused = true
afo.manualPause = true
local nzb = tahm(false)

pcall(function()
tes:Notify({
Title = _d("aQVGFg5GcUoIUgsPRnBYFlcGBBRd"),
Description = nzb and _d("bQtEABlGSkwKExUKE0tcAB0") or _d("axFdRQIVGFUNRQBHRlpMEBMLBEZaSwFSDksETU0QXAtLAFdMCldL"),
Lifetime = 5,
})
end)
end

function afo.giveUpRun()
if not fdab() then
pcall(function()
tes:Dialog({
Title = _d("fg1FAEszSBktQAkKCFwZLFIXDwVXSwE"),
Description = _d("dwsTEQQRXUtEQRAFRlFKRF8MHQMYSw1UDR9GVlYTH0UYCRhNDFYXDkZRSkRdCh8OUVcDExEERl9QElZFHhYW"),
Buttons = {
{
Name = _d("fgtHRQIS"),
},
},
})
end)

return
end

afo.gaveUp = true
afo.paused = true
local kiv = nrym()

pcall(function()
tes:Notify({
Title = _d("fg1FAEszSBktQAkKCFwZLFIXDwVXSwE"),
Description = kiv and _d("fgVFAEsTSBkQWwBLBU1LFlYLH0ZMVhNWF0sAVFYLQUs") or _d("axFdRQIVGFUNRQBHRlpMEBMLBEZfUBJWRR4WGFsRRxEECBhfC0YLD0g"),
Lifetime = 5,
})
end)
end

task.spawn(function()
while wyvs() do

pcall(edu.pinMode)

if qkca.pauseArmed and not wacd.enabled
and (not qkca.enabled or not qkca.paused) then
edu.restorePause()

if edu.pauseState() ~= true then
qkca.pauseArmed = false
end
end

if qkca.enabled and not qkca.manualPause and rk.towerSlot() ~= nil
and not gwn.run.enabled then

local qmaa = os.clock() - (qkca.floorAt or 0) > 12
and os.clock() - (qkca.battleAt or 0) > 12

local ycg = rk.towerSlot() == 1 and not qkca.paused
and not (wacd.enabled and wacd.floor > 0)
and qmaa
and edu.parked()

if ycg then
qkca.parkedAt = qkca.parkedAt > 0 and qkca.parkedAt or os.clock()

if os.clock() - qkca.parkedAt >= 25 then
qkca.parkedAt = os.clock()
nrym()
end
else
qkca.parkedAt = 0
end

local lcqj = edu.hardPickNow()

local zei = not qkca.paused and not qkca.pending
and not (wacd.enabled and wacd.floor > 0)
and fdab()
and lcqj ~= nil
and lcqj ~= (qkca.nightmare == true)

if zei then
qkca.modeWrongAt = qkca.modeWrongAt or os.clock()
else
qkca.modeWrongAt = nil
end

if qkca.modeWrongAt and os.clock() - qkca.modeWrongAt > 20
and os.clock() - (qkca.modeFixAt or 0) > 20 then
qkca.modeFixAt = os.clock()
qkca.modeWrongAt = nil
edu.endIfWrongMode(qkca.nightmare == true)
end

if (qkca.floorAt or 0) > 0 and not qkca.paused
and os.clock() - qkca.floorAt > 60
and os.clock() - (qkca.battleAt or 0) > 60
and not fdab()
and not rk.busy(rk.towerSlot() or 1) then
qkca.floorAt = 0
qkca.battleAt = 0
qkca.floor = nil
end

if not rk.enabled and (rk.towerOutranks() or rk.towerYields()) then
if not qkca.paused then
qkca.paused = true
tahm()
end

elseif rk.slotFree(rk.towerSlot() or 1)
and (qkca.floorAt or 0) == 0
and not wj.bossTeams.swapHold then
local etb = mwm()
local twc = wacd.enabled and wacd.floor or 0
local lcd = twc > 0 and etb ~= nil and etb >= twc

if lcd then
if not qkca.paused then
qkca.paused = true
tahm()
end
else

if qkca.paused then
qkca.paused = false
edu.restorePause()
end

if not (qkca.pending and os.time() < qkca.pendingUntil) then

wj.bossTeams.applyTower(_d("TQtEABk"), 1)

edu.hardPick(qkca.nightmare == true)

local eyr = workspace:FindFirstChild(_d("egVAEQcDaFYWRwQH"), true)

if eyr then
local ozac = rtpa.Character
local oqyx = ozac and ozac:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))

if oqyx and (eyr.Position - oqyx.Position).Magnitude > 60 then
pcall(function()
exgc.standAt(eyr.Position)
end)

task.wait(0.8)
end
end

za.EndTowerRemote:FireServer(1)
task.wait(0.25)

za.StartBattle:FireServer(_d("TQtEABk"), { hard = qkca.nightmare == true })

ctu.triggered = false
ctu.weatherTriggered = false

qkca.floorAt = os.clock()

qkca.floor = nil
qkca.pending = true
qkca.pendingUntil = os.time() + 8
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while wyvs() do
if afo.active() and rk.hardcoreSlot() ~= nil then
local plkl = rk.hardcoreSlot() or 1
local cwzr = afo.floorNow()

local dhs = wacd.enabled and wacd.floor or 0
local ouok = ctu.enabled and ctu.floor or 0

if dhs <= 0 and not afo.stoodDown and not afo.manualPause
and not wj.bossTeams.swapHold then
afo.paused = false
end

if afo.gaveUp then

elseif ouok > 0 and cwzr and cwzr >= ouok then
afo.gaveUp = true
afo.paused = true
local wkhn = nrym()

pcall(function()
tes:Notify({
Title = _d("eBFHCkshUU8BEzAb"),
Description = wkhn and (_d("fgVFAEsTSBkFR0UDB0pdB1wXDkZeVQtcF0s") .. cwzr .. _d("Fw")) or (_d("cQVBAQgJSlxEVQkECUoZ") .. cwzr .. _d("GRZWBAgOXV1IEwceEhhXCxMCAhBdGRFDRQkTTE0LXUUNCU1XAB0")),
Lifetime = 5,
})
end)
elseif cwzr and dhs > 0 and cwzr >= dhs then
if not afo.paused then
afo.paused = true
tahm(false)
end
elseif rk.prioBlocks(_d("UQVBAQgJSlw")) then

if not afo.stoodDown then
afo.stoodDown = true
afo.paused = true
tahm(false)
end
elseif afo.stoodDown then

afo.stoodDown = false
afo.paused = false
elseif not afo.paused and not wj.bossTeams.swapHold then
if rk.slotFree(plkl) and not (afo.pending and os.time() < afo.pendingUntil) then
afo.start(plkl)
task.wait(2)
end
end
end

task.wait(1)
end
end)

function rk.slotActivity(lbgz)
if not rk.busy(lbgz) then
return nil
end

local dou = rk.role[lbgz]
local iypq = qsrk:FindFirstChild(lbgz == 2 and _d("ewVHEQcDf0wNAQ") or _d("ewVHEQcDf0wN"))
local dsf = iypq and iypq:FindFirstChild(_d("axFdIwcJV0soUgcOCg"))
local yrx = dsf and dsf.Text or _d("")

if ii.enabled and dou == _d("VxRQ") then
local jky = yrx:match(_d("ZzZcCgZDSxJMFgFATw"))

if jky then
return _d("cApVDAUPTFxEQQoEC0sZSRMXBAlVGQ") .. jky
end
end

if rk.isTowerRole(dou)
and (qkca.enabled or gwn.run.enabled or afo.active()) then
local hnw = yrx:match(_d("ZyJfCgQUHUpPG0APTRE"))

if hnw then
return rk.roleName(lbgz) .. _d("GUkTAwcJV0tE") .. hnw
end
end

return nil
end

function rk.statusText()
if not rk.enabled then
return _d("eBFHCks1VFYQEwoNABgURFYTDhRBTQxaCwxGSkwKQEUECBhKCFwRS1cW")
end

local proz = {}

for wbxe = 1, 2 do
local mcub = _d("aghcEUs") .. tostring(wbxe) .. _d("GUkT")
local xom = rk.slotActivity(wbxe)

if wbxe == 2 and rk.hasSlot2 == false then
mcub = mcub .. rk.roleLabel(wbxe) .. _d("GUkTCQQFU1wAE00FA11dFxMRAwMYfRFSCUskWU0QXwBLNVRWEBo")
elseif xom then
mcub = mcub .. xom
elseif rk.busy(wbxe) then
mcub = mcub .. rk.roleLabel(wbxe) .. _d("GUkTAwIBUE0NXQI")
else
mcub = mcub .. rk.roleLabel(wbxe) .. _d("GUkTDA8KXQ")
end

table.insert(proz, mcub)
end

return table.concat(proz, _d("M24"))
end

task.spawn(function()
while wyvs() do
rk.hasSlot2 = rk.detectSlot2()
task.wait(5)
end
end)

task.spawn(function()
while wyvs() do

if not afo.island and wacd.enabled and wacd.floor > 0 then
local rtg = mwm()

if rtg and rtg >= wacd.floor then
if not wacd.triggered then
wacd.triggered = true
tahm()

pcall(function()
za.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = rtg,
})
end)
end
else
wacd.triggered = false
end
end

if not afo.island and ctu.enabled and ctu.floor > 0 then
local oez = mwm()

if oez and oez >= ctu.floor then

if not ctu.triggered and fdab() then
ctu.triggered = true
local xfa = nrym()

pcall(function()
tes:Notify({
Title = _d("eBFHCkshUU8BEzAb"),
Description = xfa and (_d("fgVFAEsTSBkFR0UNCldWFhM") .. oez .. _d("Fw")) or (_d("fwhcChlG") .. oez .. _d("GRZWBAgOXV1IEwceEhhXCxMCAhBdGRFDRQkTTE0LXUUNCU1XAB0")),
Lifetime = 5,
})
end)
end
else
ctu.triggered = false
end
end

if not afo.island and ctu.weatherEnabled then
local dnsh = mwm()
local gj = ctu.weatherMinFloor <= 0
or (dnsh ~= nil and dnsh >= ctu.weatherMinFloor)
local kvx = gj and ctu.weatherWanted() or nil

if kvx and ctu.weatherLate then
local ltn = ctu.weatherLeft()

if ltn == nil or ltn > 20 then
kvx = nil
end
end

if kvx then
if not ctu.weatherTriggered
and ctu.weatherGivenFor ~= ctu.weatherNow
and fdab() then
ctu.weatherTriggered = true
ctu.weatherGivenFor = ctu.weatherNow

local apbd = nrym()

pcall(function()
tes:Notify({
Title = _d("bgFSEQMDShkjWhMORm1J"),
Description = apbd
and (_d("fgVFAEsTSBkFR0UNCldWFhM") .. tostring(dnsh) .. _d("GQ1dRQ") .. kvx .. _d("Fw"))
or (kvx .. _d("GQ1ARR4WFBkGRhFLCFcZA1oTDkZNSURREB8SV1dEUgsYEV1LAVdL")),
Lifetime = 5,
})
end)
end
else
ctu.weatherTriggered = false
end
end

task.wait(1)
end
end)

task.spawn(function()
if za.WeatherChanged then
pcall(function()
ojk(za.WeatherChanged.OnClientEvent, function(vikn)

ctu.weatherNow = nil
ctu.weatherAt = 0
ctu.weatherGivenFor = nil
dpc.weatherSpent = nil

if type(vikn) == _d("ShBBDAUB") then
ctu.weatherNow = vikn
end
end)
end)
end

while wyvs() do
if os.clock() - ctu.weatherAt > 5 then
ctu.weatherAt = os.clock()

if za.RequestWeatherState then
local imv, gve = pcall(function()
return za.RequestWeatherState:InvokeServer()
end)

if imv and type(gve) == _d("ShBBDAUB") then
if ctu.weatherNow ~= nil and ctu.weatherNow ~= gve then
dpc.weatherSpent = nil
ctu.weatherGivenFor = nil
end

ctu.weatherNow = gve
end
end
end

task.wait(1)
end
end)

task.spawn(function()
local umw = nil
local xjjm = nil
local rwwb = 0

while wyvs() do

if (dpc.onWeather or dpc.afterGiveUp) and os.clock() - rwwb > 60 then
rwwb = os.clock()

pcall(function()
za.RequestItemSync:FireServer()
end)
end

if dpc.onWeather and next(dpc.weatherPotions) ~= nil then
local pbb = ctu.weatherWanted(dpc.weathers)

if pbb and ctu.weatherNow ~= dpc.weatherSpent then

dpc.weatherSpent = ctu.weatherNow
dpc.pop(dpc.weatherPotions, dpc.weatherAmount, _d("bgFSEQMDShk") .. pbb)
end
end

if dpc.afterGiveUp and next(dpc.giveUpPotions) ~= nil and dpc.armedAt > 0 then

local esre = os.clock() - dpc.armedAt

if not fdab() or esre >= 3 then
if esre <= 30 then
dpc.armedAt = 0
dpc.pop(dpc.giveUpPotions, dpc.giveUpAmount, _d("eAJHABlGX1ASVkUeFg"))
else

dpc.armedAt = 0
end
end
end

local zlz = dpc.status()

if zlz ~= umw then
umw = zlz

pcall(function()
dpc.weatherParagraph:UpdateBody(zlz)
end)
end

local khrr = dpc.giveUpStatus()

if khrr ~= xjjm then
xjjm = khrr

pcall(function()
dpc.giveUpParagraph:UpdateBody(khrr)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while wyvs() do
local yhns = uffa.stick

if yhns.enabled and os.clock() >= yhns.at then
yhns.at = os.clock() + 3

local aug = nil

for ejdu, cklw in ipairs(workspace:GetDescendants()) do
if (cklw:IsA(_d("ewVAADsHSk0")) or cklw:IsA(_d("dAtXAAc")))
and yhns.names[string.lower(cklw.Name)] then
aug = cklw
break
end
end

local sbz = rtpa.Character
local chcm = sbz and sbz:FindFirstChild(_d("cRFeBAUJUV02XAofNllLEA"))
local ywlf = aug and (aug:IsA(_d("ewVAADsHSk0")) and aug or aug:FindFirstChildWhichIsA(_d("ewVAADsHSk0"), true))

if ywlf and chcm then
local vhx = ywlf:FindFirstChildWhichIsA(_d("aRZcHQILUU0dYxcEC0hN"))
or (aug ~= ywlf and aug:FindFirstChildWhichIsA(_d("aRZcHQILUU0dYxcEC0hN"), true))

if (chcm.Position - ywlf.Position).Magnitude > 4 then
pcall(function()
sbz:PivotTo(CFrame.new(ywlf.Position + Vector3.new(0, 3, 0)))
end)

task.wait(0.4)
end

if vhx then
pcall(function()
vhx:InputHoldBegin()
task.wait(0.2)
vhx:InputHoldEnd()
end)
end

yhns.hits = yhns.hits + 1
yhns.last = _d("SQ1QDg4CGEwUEwQfRg") .. math.floor(ywlf.Position.X) .. _d("FUQ") .. math.floor(ywlf.Position.Z)

pcall(function()
tes:Notify({
Title = _d("dRFQDks1TFAHWA"),
Description = yhns.last,
Lifetime = 4,
})
end)
elseif aug then
yhns.last = _d("XwtGCw9G") .. aug:GetFullName() .. _d("FURdCh8OUVcDExEERktNBV0BSwlW")
else
yhns.last = _d("VwsTFh8PW1JEWgtLElBcREQKGQpc")
end
end

task.wait(1)
end
end)

getgenv().ACBXStick = uffa.stick

task.spawn(function()

local uuw = game:GetService(_d("bw1BER4HVHAKQxAfK1lXBVQAGQ"))

local function koi()
local cyl = rtpa.Character
local nfmw = cyl and cyl:FindFirstChildOfClass(_d("cRFeBAUJUV0"))

if nfmw and nfmw.Health > 0 then
pcall(function()
nfmw.Jump = true
end)
end

pcall(function()
uuw:SendKeyEvent(true, Enum.KeyCode.Space, false, rtpa)
end)

task.wait(0.05)

pcall(function()
uuw:SendKeyEvent(false, Enum.KeyCode.Space, false, rtpa)
end)

zl.jumps = zl.jumps + 1
end

while wyvs() do
if zl.enabled and os.clock() >= zl.nextAt then
zl.nextAt = os.clock() + 300
koi()
end

task.wait(1)
end
end)

tes:SetState(true)

task.defer(function()
local tbf
for opp, bof in ipairs(game:GetService(_d("egtBACwTUQ")):GetDescendants()) do
if bof:IsA(_d("bQFLEScHWlwI")) and bof.Text == bmh then
tbf = bof
break
end
end

if not tbf then
return
end

local wmez = tbf
while wmez and not (wmez:IsA(_d("fxZSCA4")) and wmez.AbsoluteSize.X >= 600 and wmez.AbsoluteSize.Y >= 400) do
wmez = wmez.Parent
end

if wmez then
wmez.AnchorPoint = Vector2.new(0, 0)

local mpro = wmez.AbsoluteSize
wmez.Position = UDim2.new(0.5, -mpro.X / 2, 0.5, -mpro.Y / 2 - 20)
end
end)

task.defer(function()
task.wait(0.1)

for ymu, wpng in ipairs(game:GetService(_d("egtBACwTUQ")):GetDescendants()) do
if wpng:IsA(_d("agdBCgcKUVcDdRcKC10")) and wpng.Name == _d("fAhWCA4ITEo3UBcEClRQClQ") then
wpng.CanvasPosition = Vector2.new(0, 0)
end
end
end)

getgenv().ACBXTowerRunActive = fdab
getgenv().ACBXWindow = tes

getgenv().ACBXPriority = {
groups = rk.prioGroups,
rows = pfzf.prioRows,
rank = rk.prioRank,
wants = rk.prioWants,
blocks = rk.prioBlocks,
set = function(fce, juxd)
pfzf.setPriority(fce, juxd)
end,
}

dreu.repo = _d("egYBKkQHW1sc")
dreu.url = _d("URBHFRhcFxYWUhJFAVFNDEYHHhVdSwdcCx8DVk1KUAoGSXtbVnxKCgVaQUteBAIIF1gHUR1FCk1Y")
dreu.versionUrl = _d("URBHFRhcFxYWUhJFAVFNDEYHHhVdSwdcCx8DVk1KUAoGSXtbVnxKCgVaQUteBAIIF08BQRYCCVYXEEsR")

dreu.announced = false

function dreu.fetch(eue)

local ksn, fssj = pcall(function()
return game:HttpGet(eue .. _d("BhIO") .. os.time() .. _d("HxYO") .. math.random(1, 100000))
end)

if not ksn or type(fssj) ~= _d("ShBBDAUB") or #fssj == 0 then
return nil
end

if fssj:find(_d("Z1ADUQ")) or fssj:find(_d("ZypcEUsgV0wKVw")) then
return nil
end

return fssj
end

function dreu.check()
if dreu.buildId == _d("XQFF") then
return nil, _d("XQFFRQkTUVUA")
end

if dreu.checking then
return nil, _d("WxFAHA")
end

dreu.checking = true
local aznj = dreu.fetch(dreu.versionUrl)
dreu.checking = false

if not aznj then
return nil, _d("VwsTEw4US1ALXUUND1Rc")
end

local ffdd = aznj:match(_d("Z0FAT0NIFRBBQE9P")) or _d("")
ffdd = ffdd:gsub(_d("HBcZb0VMHA"), _d(""))

if ffdd == _d("") or not dreu.newer(ffdd) then
return nil, _d("WhFBFw4ITA")
end

return ffdd
end

function dreu.newer(rh)
local function gto(wrj)
local prrg, qern = tostring(wrj or _d("")):match(_d("T1sbQA9DXBwAFgFOAh1dTRZIQ0NcHAAWAU4CEQ"))

return prrg and (prrg .. qern) or nil
end

local function wiim(wezb)
local kc = tostring(wezb or _d(""))

if not kc:match(_d("Z0FXTk5IBxwAGUE")) then
return nil
end

local iray = {}

for esz in kc:gmatch(_d("HAAY")) do
iray[#iray + 1] = tonumber(esz) or 0
end

return #iray > 0 and iray or nil
end

local zsr, jre = wiim(rh), wiim(dreu.buildId)

if zsr and jre then
for mxm = 1, math.max(#zsr, #jre) do
local oxrv = zsr[mxm] or 0
local cgfo = jre[mxm] or 0

if oxrv ~= cgfo then
return oxrv > cgfo
end
end

return false
end

if zsr or jre then
return zsr ~= nil
end

local gcf, ovei = gto(rh), gto(dreu.buildId)

if not gcf or not ovei then
return tostring(rh) ~= tostring(dreu.buildId)
end

return gcf > ovei
end

function dreu.busy()
if wj.battlePending or wj.currentBattle then
return true
end

local pq = getgenv().ACBXTowerRunActive

if type(pq) == _d("XxFdBh8PV1c") then
local trzn, khrg = pcall(pq)

if trzn and khrg then
return true
end
end

return false
end

function dreu.apply(bxk)
if dreu.applying then
return false
end

dreu.applying = true

local sfe = dreu.fetch(dreu.url)

if not sfe then
dreu.applying = false
warn(_d("YiVwJzM7GEwUVwQfAwIZB1wQBwIYVwtHRQ8JT1cIXAQPRg") .. tostring(bxk) .. _d("FURAEQofUVcDEwoFRg") .. dreu.buildId)

pcall(function()
tes:Notify({
Title = _d("bBRXBB8DGF8FWgkOAg"),
Description = _d("egtGCQ9GVlYQEwEEEVZVC1IBSw") .. tostring(bxk) .. _d("F0RgEQIKVBkWRgsFD1ZeRA") .. dreu.buildId .. _d("Fw"),
Lifetime = 8,
})
end)

return false
end

local bdl, uym = loadstring(sfe)

if not bdl then
dreu.applying = false
warn(_d("YiVwJzM7GEwUVwQfAwIZ") .. tostring(bxk) .. _d("GQBcABhGVlYQEwYEC0hQCFZFRkY") .. tostring(uym))

pcall(function()
tes:Notify({
Title = _d("bBRXBB8DGEsBWQAIEl1d"),
Description = _d("exFaCQ9G") .. tostring(bxk) .. _d("GQJSDAcDXBkQXEUICVVJDV8ARUZrTQ1fCUsUTVcKWgsMRg") .. dreu.buildId .. _d("Fw"),
Lifetime = 8,
})
end)

return false
end

pcall(function()
tes:Notify({
Title = _d("bBRXBB8PVl4"),
Description = _d("awFfCgoCUVcDEw") .. dreu.buildId .. _d("GUkNRQ") .. bxk .. _d("Fw"),
Lifetime = 4,
})
end)

task.wait(0.4)

dreu.cameFrom = dreu.buildId
getgenv().ACBXUpdatedFrom = dreu.buildId

pcall(function()
tes:Unload()
end)

getgenv().ACBXWindow = nil

task.wait(0.5)

local dua, sakl = pcall(bdl)

if not dua then
dreu.applying = false
warn(_d("YiVwJzM7GEwUVwQfAwIZ") .. tostring(bxk) .. _d("GRBbFw4RGFYKEwkEB1wZSRM") .. tostring(sakl))
return false
end

return true
end

dreu.cameFrom = getgenv().ACBXUpdatedFrom

task.defer(function()
if dreu.cameFrom then
getgenv().ACBXUpdatedFrom = nil
print(_d("YiVwJzM7GFsRWgkPRg") .. dreu.buildId .. _d("GUxGFQ8HTFwAEwMZCVUZ") .. tostring(dreu.cameFrom) .. _d("EA"))

pcall(function()
tes:Notify({
Title = _d("bBRXBB8DXA"),
Description = _d("axFdCwIIXxk") .. dreu.buildId .. _d("FURVFwQLGA") .. tostring(dreu.cameFrom) .. _d("Fw"),
Lifetime = 6,
})
end)

return
end

print(_d("YiVwJzM7GFsRWgkPRg") .. dreu.buildId)
end)

task.defer(function()
task.wait(12)

if dreu.announced or dreu.buildId == _d("XQFF") or dreu.enabled then
return
end

dreu.announced = true

local qenj = dreu.check()

if not qenj then
return
end

print(_d("YiVwJzM7GFsRWgkPRg") .. dreu.buildId .. _d("GQ1ARQkDUFAKV0U") .. tostring(qenj) .. _d("FURSCw9GTUkAUhEOFRhYFlZFBABe"))
print(_d("YiVwJzM7GFULUgFLD0wZE1oRA1wYVQtSARgSSlAKVE0MB1VcXnsRHxZ/XBAbRw") .. dreu.url .. _d("G00aTUI"))

pcall(function()
tes:Notify({
Title = _d("bBRXBB8DGFgSUgwHB1pVAQ"),
Description = _d("axFdCwIIXxk") .. dreu.buildId .. _d("FUQ") .. tostring(qenj) .. _d("GQ1ARQQTTBdEYQBGA0BcB0YRDkZMVkRfCgoCGFAQHQ"),
Lifetime = 10,
})
end)
end)

task.spawn(function()

task.wait(8)

while wyvs() do
if not dreu.enabled then

task.wait(5)
else
local lhtb = dreu.check()
local rsqf = dreu.interval

if lhtb then
if dreu.pendingVersion ~= lhtb or not dreu.pendingSince then
dreu.pendingVersion = lhtb
dreu.pendingSince = os.clock()
end

local olw = os.clock() - (dreu.pendingSince or os.clock())

if not dreu.busy() or olw >= dreu.forceAfter then
if dreu.apply(lhtb) then

wm = false
return
end

dreu.pendingSince = os.clock()
rsqf = dreu.retry
else
rsqf = dreu.retry
end
else
dreu.pendingVersion = nil
dreu.pendingSince = nil
end

task.wait(rsqf)
end
end
end)
getgenv().ACBXUpdater = dreu

task.defer(function()
task.wait(0.9)

local ueyz = pfzf.loadUi()

if type(ueyz) ~= _d("TQVRCQ4") then
return
end

print(_d("YiVwJzM7GFULXA5LFF1KEFwXDgICGQ") .. tostring(ueyz.theme) .. _d("GQVHRQ") .. tostring(ueyz.scale))
end)

local function fwrm()
if not wyvs() then
return
end

local jsph = false
local jyc = false

pcall(function()
jsph = qkca.nightmareToggle:GetState() == true
jyc = qkca.ui:GetState() == true
end)

if not (jsph or jyc) then
return
end

qkca.nightmare = jsph
qkca.enabled = true
qkca.manualPause = false
qkca.paused = false
qkca.parkedAt = 0
qkca.modeWrongAt = nil
qkca.pending = false
qkca.pendingUntil = 0

edu.restorePause()
qkca.pauseArmed = false
edu.hardPick(jsph)

if not fdab() then
qkca.floorAt = 0
qkca.battleAt = 0
qkca.floor = nil
end

print(_d("YiVwJzM7GE0LRAAZRkpcF0YIDgIYWAJHABlGSlwIXAQPXBg") .. (jsph and _d("Vw1UDR8LWUsB") or _d("VwtBCAoK")))
end

task.defer(function()
task.wait(1)

local jse = pfzf.autoLoadName()

if not jse then
return
end

local pav, hmur = pfzf.load(jse)

task.delay(2, fwrm)

pfzf.selected = jse
pfzf.lastText = pav and (_d("eBFHCksKV1gAVgFL") .. jse .. _d("Fw"))
or (_d("eBFHCksKV1gAEwMKD1RcAAlF") .. tostring(hmur))
pfzf.savesAt = 0

pcall(function()
pfzf.fileDropdown:UpdateSelection(jse)
end)

pcall(function()
tes:Notify({
Title = _d("egtdAwIB"),
Description = pav and (_d("dQtSAQ4CGA") .. jse .. _d("GQtdRRgSWUsQHQ"))
or (_d("egtGCQ9GVlYQEwkEB1wZ") .. jse .. _d("A0Q") .. tostring(hmur)),
Lifetime = 5,
})
end)
end)

task.defer(function()
task.wait(3)

pfzf.restorePriority()
end)

task.defer(function()
task.wait(3)

if pfzf.autoLoadName() then
return
end

fwrm()
end)
