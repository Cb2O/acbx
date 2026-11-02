local _d = (function()
local A = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local M = {}
local cache = {}
for i = 1, #A do
M[string.sub(A, i, i)] = i - 1
end
local K = string.char(51, 112, 113, 105, 111, 120, 108)
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

local qfh = "ACB Rebirth v1.01"

local function wait(lscp)
for zje, bxfx in ipairs(lscp:GetDescendants()) do
if bxfx:IsA(_d("ZxUJHSMZDlYc")) and bxfx.Text == qfh then
local lgy = bxfx
while lgy and not lgy:IsA(_d("YBMDDAoWK0YZ")) do
lgy = lgy.Parent
end
return lgy
end
end
end

local function mw()
local paj = game:GetService(_d("YxwQEAoKHw")).LocalPlayer

for xh, kgw in ipairs({
(gethui and gethui() or game:GetService(_d("cB8DDCgNBQ"))),
game:GetService(_d("cB8DDCgNBQ")),
paj and paj:FindFirstChild(_d("YxwQEAoKK0YZ")),
}) do
for bdsa, rgg in ipairs(kgw:GetChildren()) do

if rgg:IsA(_d("YBMDDAoWK0YZ")) then
local jgi = rgg:FindFirstChild(_d("cRECDA"))

if jgi and jgi:FindFirstChild(_d("YBkVDA0ZHg")) and jgi:FindFirstChild(_d("cB8fHQoWGA")) then
return rgg
end
end
end
end
end

if mw() and getgenv().ACBXAllowReload ~= true then
local zt = getgenv().ACBXWindow
local pe = false
local ht = false

if zt and zt.Dialog then
pcall(function()
if zt.GetState and zt:GetState() == false then
zt:SetState(true)
end

zt:Dialog({
Title = _d("cjMzST0dDloCBQFPER8TER0bChkISlADHAEWBV0X"),
Description = _d("clASBh8BTFoDUQgDCglSFAhJAxcNVxUVSQYWTEcYGBpPCwlAAxgGAVZMYRUBBQ4bCRMZBUkYERhbUAUBBgtMXB4UVk8sBFZQAxwBFgVdF1EKAAgVEwMFBh8LTFUZAxobVExAH1EGARQVEx8fDE8dGlYCUQ0dERpWA1EdBx1MUhMSBhoWGB0"),
Buttons = {
{
Name = _d("YRUBBQ4bCQ"),
Callback = function()
ht = true
pe = true
end,
},
{
Name = _d("eBUUGQ"),
Callback = function()
pe = true
end,
},
},
})
end)
else

ht = true
pe = true
end

local aubj = os.clock() + 90

while not pe and os.clock() < aubj do
task.wait(0.25)
end

if not ht then
warn(_d("aDEyKzclTF8fEA1PCglVBQIMC1hBEwQZDE8bA0MJUR0HGRgTGQJJHQ0CXRkfDk8LGFIJAkdPOwBaExpJPR0cXxESDE8MAxMDBggfWAVHXFEGHVgZQBVRPAEUA1IUURoMCgVDBFEAAVgFRwNROgoMGFoeFhpPDA1RXg"))

return
end

warn(_d("aDEyKzclTEEVAQUOGwVdF1EdBx1MQQUfBwYWCxMTHhkWWBtaBBlJGxAFQFAeBwpW"))
end

getgenv().ACBXAllowReload = nil

local yds = getgenv().ACBXConnections
if type(yds) == _d("RxETBQo") then
for ekf, maqo in ipairs(yds) do
pcall(function()
maqo:Disconnect()
end)
end
end

local vg = {}
getgenv().ACBXConnections = vg

local function vhzs(gku, mn)
local vfp = gku:Connect(mn)

table.insert(vg, vfp)

return vfp
end

local xq = getgenv().ACBXWindow
if xq then
pcall(function()
xq:Unload()
end)
end

for qk, amrj in ipairs({
game:GetService(_d("cB8DDCgNBQ")),
game:GetService(_d("YxwQEAoKHw")).LocalPlayer:FindFirstChild(_d("YxwQEAoKK0YZ")),
}) do
if amrj then
local lsk = wait(amrj)
if lsk then
lsk:Destroy()
end
end
end

local qqc = game:GetService(_d("YxwQEAoKHw"))
local gs = game:GetService(_d("YRUBBQYbDUcVFTobFx5SFxQ"))
local ou = game:GetService(_d("YxEFAQkRAlcZHw48HR5FGRIM"))
local iva = game:GetService(_d("YQUfOgoKGloTFA"))
local qzj = qqc.LocalPlayer
local qf = qzj:WaitForChild(_d("YxwQEAoKK0YZ"))

local astg = false

local function foor()
pcall(function()
local xrs = game:GetService(_d("ZwcUDAErCUEGGAoK"))
local exjl = (gethui and gethui()) or qf
local um = Color3.fromRGB(77, 166, 255)
local uv = qzj.DisplayName

local function rj(va, gluq, rn)
xrs:Create(
va,
TweenInfo.new(gluq, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
rn
):Play()
task.wait(gluq)
end

local gryw = Instance.new(_d("YBMDDAoWK0YZ"))
gryw.Name = _d("cjMzMSYWGEEf")
gryw.IgnoreGuiInset = true
gryw.DisplayOrder = 1000000
gryw.ResetOnSpawn = false
gryw.Parent = exjl

local yivc = Instance.new(_d("dQIQBAo"))
yivc.Size = UDim2.fromScale(1, 1)
yivc.BackgroundColor3 = Color3.fromRGB(4, 6, 11)
yivc.BackgroundTransparency = 1
yivc.BorderSizePixel = 0
yivc.Parent = gryw

local szr = Instance.new(_d("dQIQBAo"))
szr.AnchorPoint = Vector2.new(0.5, 0.5)
szr.Position = UDim2.fromScale(0.5, 0.5)
szr.Size = UDim2.fromOffset(400, 176)
szr.BackgroundColor3 = Color3.fromRGB(11, 16, 26)
szr.BackgroundTransparency = 1
szr.BorderSizePixel = 0
szr.Parent = gryw

local ac = Instance.new(_d("ZjkyBh0WCUE"))
ac.CornerRadius = UDim.new(0, 14)
ac.Parent = szr

local zzch = Instance.new(_d("ZjkiHR0XB1Y"))
zzch.Color = Color3.fromRGB(46, 60, 86)
zzch.Thickness = 1
zzch.Transparency = 1
zzch.Parent = szr

local rglt = Instance.new(_d("dQIQBAo"))
rglt.Size = UDim2.fromOffset(44, 2)
rglt.Position = UDim2.new(0.5, -22, 0, 34)
rglt.BackgroundColor3 = um
rglt.BorderSizePixel = 0
rglt.BackgroundTransparency = 1
rglt.Parent = szr

local jct = Instance.new(_d("ZxUJHSMZDlYc"))
jct.BackgroundTransparency = 1
jct.Size = UDim2.new(1, -48, 0, 48)
jct.Position = UDim2.fromOffset(24, 42)
jct.Font = Enum.Font.GothamBold
jct.Text = _d("cDJRITo6")
jct.TextSize = 28
jct.TextYAlignment = Enum.TextYAlignment.Center
jct.TextColor3 = Color3.fromRGB(236, 242, 255)
jct.TextTransparency = 1
jct.Parent = szr

local pk = Instance.new(_d("ZxUJHSMZDlYc"))
pk.BackgroundTransparency = 1
pk.Size = UDim2.new(1, -48, 0, 20)
pk.Position = UDim2.fromOffset(24, 94)
pk.Font = Enum.Font.Gotham
pk.Text = _d("Xx8QDQYWCw")
pk.TextSize = 14
pk.TextColor3 = Color3.fromRGB(150, 163, 186)
pk.TextTransparency = 1
pk.Parent = szr

local fva = Instance.new(_d("dQIQBAo"))
fva.Size = UDim2.fromOffset(240, 3)
fva.Position = UDim2.new(0.5, -120, 0, 130)
fva.BackgroundColor3 = Color3.fromRGB(34, 44, 64)
fva.BorderSizePixel = 0
fva.BackgroundTransparency = 1
fva.Parent = szr

local xk = Instance.new(_d("dQIQBAo"))
xk.Size = UDim2.fromScale(0, 1)
xk.BackgroundColor3 = um
xk.BorderSizePixel = 0
xk.BackgroundTransparency = 1
xk.Parent = fva

local fr = Instance.new(_d("ZjkyBh0WCUE"))
fr.CornerRadius = UDim.new(0, 4)
fr.Parent = fva

local xucl = Instance.new(_d("ZjkyBh0WCUE"))
xucl.CornerRadius = UDim.new(0, 4)
xucl.Parent = xk

rj(yivc, 0.35, { BackgroundTransparency = 0.15 })
task.spawn(function()
rj(szr, 0.3, { BackgroundTransparency = 0 })
end)
task.spawn(function()
rj(zzch, 0.3, { Transparency = 0 })
end)
rj(jct, 0.3, { TextTransparency = 0 })
rj(rglt, 0.3, { BackgroundTransparency = 0 })
rj(pk, 0.3, { TextTransparency = 0 })
rj(fva, 0.3, { BackgroundTransparency = 0 })
rj(xk, 0.3, { BackgroundTransparency = 0 })

local fzz = { _d("Xx8QDQYWCw"), _d("Xx8QDQYWCx0"), _d("Xx8QDQYWCx1e"), _d("Xx8QDQYWCx1eXw") }
task.spawn(function()
xrs:Create(xk, TweenInfo.new(1.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
Size = UDim2.fromScale(1, 1),
}):Play()
for dj = 1, 6 do
pk.Text = fzz[(dj - 1) % #fzz + 1]
task.wait(0.2)
end
end)
task.wait(1.2)

rj(jct, 0.2, { TextTransparency = 1 })
rj(pk, 0.2, { TextTransparency = 1 })
rj(fva, 0.2, { BackgroundTransparency = 1 })
rj(xk, 0.2, { BackgroundTransparency = 1 })

jct.Text = _d("ZxgQBwQLTFUfA0kaCwVdF1EEFlgfUAIYGRs")
jct.TextSize = 22
jct.TextWrapped = true
pk.Text = qfh
rj(jct, 0.25, { TextTransparency = 0 })
rj(pk, 0.25, { TextTransparency = 0 })
task.wait(1.1)
rj(jct, 0.2, { TextTransparency = 1 })
rj(pk, 0.2, { TextTransparency = 1 })

jct.Text = _d("ZBUdCgAVCRM") .. uv .. _d("EyQeSSw6THsFEw")
jct.TextSize = 22
pk.Text = _d("QAQQGxsRAlQ")
rj(jct, 0.3, { TextTransparency = 0 })
rj(pk, 0.3, { TextTransparency = 0 })
task.wait(1.3)

rj(jct, 0.25, { TextTransparency = 1 })
rj(pk, 0.25, { TextTransparency = 1 })
rj(yivc, 0.35, { BackgroundTransparency = 1 })

gryw:Destroy()
end)

astg = true
end

task.spawn(foor)

local hs = gs:WaitForChild(_d("YRUcBhsdHw"))

local function yhti(hqb, uhpw)
local qzhv = hs:FindFirstChild(hqb)

if qzhv then
return qzhv
end

local tfd = hs:WaitForChild(hqb, uhpw or 3)

if not tfd then
warn(_d("cjMzMVVYHlYdHh0KWEs") .. hqb .. _d("FFAfBk8UA10XFBtPHRRaAwUaTxECEwQZABxYC1IdFEkZHR5AGR4HT1VMRxgQHU8eCVIEBBsKWAVAUB4PCQ"))
end

return tfd
end

local fyeb = {
StartNPCBattle = yhti(_d("YAQQGxs2PHAyEB0bFAk")),
NPCBattleResult = yhti(_d("fSAyKw4MGF8VIwwcDQBH")),
SyncNPCCooldowns = yhti(_d("YAkfCiEoL3AfHgULFxtdAw")),
SetNPCDifficulty = yhti(_d("YBUFJz87KFoWFwAMDQBHCQ")),
StartRaidBattle = yhti(_d("YAQQGxsqDVoUMwgbDABW")),
SetRaidDifficulty = yhti(_d("YBUFOw4RCHcZFw8GGxlfBAg")),
RaidProgress = yhti(_d("YREYDT8KA1QCFBoc")),
RequestRaidProgress = yhti(_d("YRUAHAoLGGERGA0/CgNUAhQaHA")),
SyncInfiniteRoomProgress = yhti(_d("YAkfCiYWCloeGB0KKgNcHSEbAB8eVgMC")),
BuyRaidItem = yhti(_d("cQUIOw4RCHoEFAQ")),
RaidShopState = yhti(_d("YREYDTwQA0MjBQgbHQ")),
RaidNotify = yhti(_d("YREYDSEXGFoWCA")),
SyncItems = yhti(_d("YAkfCiYMCV4D")),

UseItem = yhti(_d("ZgMUIBsdAQ")),
RequestWeatherState = yhti(_d("YRUAHAoLGGQVEB0HHR5gBBAdCg")),
WeatherChanged = yhti(_d("ZBUQHQcdHnAYEAcIHQg")),
FishingUpdate = yhti(_d("dRkCAQYWC2YAFQgbHQ")),
FishingThrow = yhti(_d("dRkCAQYWC2cYAwYY")),
FishingReel = yhti(_d("dRkCAQYWC2EVFAU")),
FishingStop = yhti(_d("dRkCAQYWC2AEHhk")),

FishingIslandTeleport = yhti(_d("dRkCAQYWC3oDHQgBHDhWHBQZAAoY")),

SyncCollection = yhti(_d("YAkfCiwXAF8VEh0GFwI")),
RequestSync = yhti(_d("YRUAHAoLGGAJHwo")),
ClaimIndexReward = yhti(_d("cBwQAAIxAlcVCTsKDw1BFA")),
RequestAchievements = yhti(_d("YRUAHAoLGHITGQAKDgleFR8dHA")),
SyncAchievements = yhti(_d("YAkfCi4bBFoVBwwCHQJHAw")),
ClaimAchievement = yhti(_d("cBwQAAI5D1sZFB8KFQldBA")),
RequestQuests = yhti(_d("YRUAHAoLGGIFFBobCw")),
SyncQuests = yhti(_d("YAkfCj4NCUAEAg")),
ClaimQuest = yhti(_d("cBwQAAIpGVYDBQ")),
RequestPeriodicQuests = yhti(_d("YRUAHAoLGGMVAwAAHAVQIQQMHAwf")),
SyncPeriodicQuests = yhti(_d("YAkfCj8dHlofFQAMKRlWAwUa")),
ClaimPeriodicQuest = yhti(_d("cBwQAAIoCUEZHg0GGz1GFQId")),

OpenFuseDialog = yhti(_d("fAAUBykNH1Y0GAgDFws")),
FuseCards = yhti(_d("dQUCDCwZHlcD")),
OpenDeconstructDialog = yhti(_d("fAAUBysdD1weAh0dDQ9HNBgIAxcL")),
DeconstructCards = yhti(_d("dxUSBgELGEEFEh0sGR5XAw")),
OpenPackShop = yhti(_d("fAAUBz8ZD1gjGQYf")),
EquipPack = yhti(_d("dgEEAB8oDVAb")),

RequestSkillTree = yhti(_d("YRUAHAoLGGAbGAUDLB5WFQ")),
BuySkillNode = yhti(_d("cQUIOgQRAF8+Hg0K")),
OpenAccessoryShop = yhti(_d("fAAUBy4bD1YDAgYdAT9bHwE")),
OpenAccessoryShop2 = yhti(_d("fAAUBy4bD1YDAgYdAT9bHwFb")),
BuyAccessory = yhti(_d("cQUIKAwbCUADHhsW")),
BuyAccessory2 = yhti(_d("cQUIKAwbCUADHhsWSg")),
EquipAccessory = yhti(_d("dgEEAB85D1AVAhoAChU")),

RedeemCode = yhti(_d("YRUVDAoVL1wUFA")),

OpenNPCDialog = yhti(_d("fAAUByEoL3cZEAUAHw")),
TeleportToWorld = yhti(_d("ZxUdDB8XHkckHj4ACgBX")),
RaidBattleStarted = yhti(_d("YREYDS0ZGEccFDobGR5HFRU")),
BattleEnd = yhti(_d("cREFHQMdKV0U")),
StartBattle = yhti(_d("YAQQGxs6DUcEHQw")),
RequestInfiniteRoomProgress = yhti(_d("YRUAHAoLGHoeFwABERhWIh4GAigeXBcDDBwL")),
EndTowerRemote = yhti(_d("dh4VPQAPCUEiFAQADAk")),
SaveClientData = yhti(_d("YBEHDCwUBVYeBS0ODA0")),
OpenRaidShop = yhti(_d("fAAUBz0ZBVcjGQYf")),
RequestItemSync = yhti(_d("YRUAHAoLGHoEFAQ8AQJQ")),
FishingGetState = yhti(_d("dRkCAQYWC3QVBTobGRhW")),
FishingSetAuto = yhti(_d("dRkCAQYWC2AVBSgaDAM")),
FishingShop = yhti(_d("dRkCAQYWC2AYHhk")),
DigGetState = yhti(_d("dxkWLgoMP0cRBQw")),
DigShop = yhti(_d("dxkWOgcXHA")),
DigAction = yhti(_d("dxkWKAwMBVwe")),
DigUpdate = yhti(_d("dxkWPB8cDUcV")),
}

local rgoa = require(gs.ModuleScripts.NPCData)
local wnpj = require(gs.ModuleScripts.WorldDifficultyData)
local lpjf = require(gs.ModuleScripts.BossData)
local iifn = require(gs.ModuleScripts.RaidData)
local pbq = require(gs.ModuleScripts.InfiniteRoomData)
local nre = require(gs.ModuleScripts.CraftData)
local xtxb = require(gs.ModuleScripts.AchievementData)
local wb = require(gs.ModuleScripts.RaidShopData)
local woa = require(gs.ModuleScripts.ItemData)
local mc = require(gs.ModuleScripts.CardData)
local tw = require(gs.ModuleScripts.SkillTreeData)

local ym = {
enabled = false,
role = { _d("Rx8GDB0"), _d("XQAS") },

picked = { _d("Zx8GDB0"), _d("fSAySQ0ZGEccFBo") },
hasSlot2 = nil,
toggle = nil,

optionsFor = {
{ _d("Zx8GDB0"), _d("exEdBQAPCVYeUR0ADwlB"), _d("fSAySQ0ZGEccFBo") },
{ _d("fSAySQ0ZGEccFBo"), _d("egMdCAEcTFsRAw0MFx5W") },
},
roleIds = {
Tower = _d("Rx8GDB0"),

[_d("exEDDQwXHlZQBQYYHR4")] = _d("WxEDDQwXHlY"),
[_d("fSAySQ0ZGEccFBo")] = _d("XQAS"),
[_d("exEdBQAPCVYeUR0ADwlB")] = _d("WxEdBQAPCVYe"),
[_d("egMdCAEcTFsRAw0MFx5W")] = _d("WxEDDQwXHlY"),
},
roleNames = {
tower = _d("Zx8GDB0"),
hardcore = _d("egMdCAEcTFsRAw0MFx5W"),
npc = _d("fSAySQ0ZGEccFBo"),
halloween = _d("exEdBQAPCVYeUR0ADwlB"),
},
}

ym.prioGroups = {
{ id = _d("QREYDRw"), label = _d("YREYDRw"), rank = 1 },
{ id = _d("UR8CGg"), label = _d("dBweCw4UTFEfAho"), rank = 2 },
{ id = _d("XQAS"), label = _d("fSAySQ0ZGEccFBpPXkxBHx4EHA"), rank = 3 },
{ id = _d("Rx8GDB0"), label = _d("Zx8GDB0LTBsDGQgdHQgTAx0GG1E"), rank = 4 },
{ id = _d("WxEDDQwXHlY"), label = _d("egMdCAEcTHsRAw0MFx5W"), rank = 5 },
{ id = _d("RBEFDB0"), label = _d("dRkCAQYWCxNfUS0GHwtaHhY"), rank = 6 },
}

ym.prioBlocks = function()
return false
end

ym.digBlocked = function()
return false
end

function ym.detectSlot2()
local vkad = qf:FindFirstChild(_d("YBUFHQYWC0A3BAA"))
local vvs = vkad and vkad:FindFirstChild(_d("YBweHTsdDV5CIwYY"), true)

if vvs then
return vvs.Visible == true
end

return nil
end

function ym.roleSlot(vuu)
if not ym.enabled then
return 1
end

for cf = 1, 2 do
if ym.role[cf] == vuu then
return cf
end
end

return nil
end

function ym.isTowerRole(vn)
return vn == _d("Rx8GDB0") or vn == _d("WxEDDQwXHlY") or vn == _d("WxEdBQAPCVYe")
end

function ym.towerSlot()
return ym.roleSlot(_d("Rx8GDB0"))
end

function ym.hardcoreSlot()
local sqy = ym.roleSlot(_d("WxEDDQwXHlY"))

if sqy == 2 and ym.hasSlot2 == false then
return 1
end

return sqy
end

function ym.halloweenSlot()

local biom = ym.roleSlot(_d("WxEdBQAPCVYe"))

if biom == 1 then
return 1
end

return nil
end

function ym.roomSlot()
local dex = ym.roleSlot(_d("XQAS"))

if not ym.enabled then
return 1
end

if dex == nil then
return nil
end

if dex == 2 and ym.hasSlot2 == false then
return 1
end

return dex
end

function ym.splitNpc()
return ym.enabled and ym.role[1] == _d("XQAS") and ym.role[2] == _d("XQAS")
end

function ym.busy(brwg)
local qp = qf:FindFirstChild(brwg == 2 and _d("eh4zCBsMAFZC") or _d("eh4zCBsMAFY"))

return qp ~= nil and qp:IsA(_d("cR8eBTkZAEYV")) and qp.Value == true
end

function ym.roleName(cmxj)
return ym.roleNames[ym.role[cmxj]] or ym.roleNames.npc
end

function ym.roleLabel(hj)
return ym.picked[hj] or ym.roleName(hj)
end

local xdm = nil

if gs:FindFirstChild(_d("fh8VHAMdP1ACGBkbCw")) and gs.ModuleScripts:FindFirstChild(_d("exEdBQAPCVYeJQYYHR53EQUI")) then
local tr, opwq = pcall(function()
return require(gs.ModuleScripts.HalloweenTowerData)
end)

if tr then
xdm = opwq
end
end

local yk = nil

if gs:FindFirstChild(_d("fh8VHAMdP1ACGBkbCw")) and gs.ModuleScripts:FindFirstChild(_d("dRkCAQYWC3cRBQg")) then
local qxg, bo = pcall(function()
return require(gs.ModuleScripts.FishingData)
end)

if qxg then
yk = bo
end
end

local function bvez(tbmh)
return tostring(tbmh):reverse():gsub(_d("G1UVTAtdCBo"), _d("FkFd")):reverse():gsub(_d("bVw"), _d(""))
end

local xoi = {
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

getgenv().ACBXHalloweenUpgrades = xoi.upgrade
getgenv().ACBXHalloweenTower = xoi.run

xoi.shopData = wb.ShopById.halloween
xoi.shopItems = {}
xoi.shopLabels = {}
xoi.cardNames = {
hw_brook = _d("cQIeBgRYRH4FAgAMGQATIxoMAx0YXB5Y"),
hw_death_the_kid = _d("dxUQHQdYGFsVUSIGHEwbOBAbAhcCWhNRLhoWTGQZFAULHR4a"),
hw_barragan = _d("cREDGw4fDV1QWToEHQBWBB4HTzMFXRdY"),
}
xoi.cardShortNames = {
hw_brook = _d("cQIeBgQ"),
hw_death_the_kid = _d("dxUQHQdYGFsVUSIGHA"),
hw_barragan = _d("cREDGw4fDV0"),
}

for xm, dig in ipairs(xoi.shopData.Items) do
local kfu, ve = next(dig.price or {})
local qw = dig.id
local sbzt = dig.id

if dig.itemId then
local ob = woa.ById[dig.itemId]
qw = ob and (ob.name or dig.itemId) or dig.itemId
sbzt = qw
elseif dig.cardId then
qw = xoi.cardNames[dig.cardId] or (mc.ById[dig.cardId] and mc.ById[dig.cardId].name) or dig.cardId
sbzt = xoi.cardShortNames[dig.cardId] or qw
end

local ll = kfu == _d("WxEdBQAPCVYeLgoOFghK") and _d("cBEfDRY") or (kfu == _d("WRESAjAXM18RHx0KCgI") and _d("fxEfHQoKAkA") or tostring(kfu))
local sbuf = qw .. _d("E5Lx/U8") .. bvez(ve) .. _d("Ew") .. ll

table.insert(xoi.shopItems, {
id = dig.id,
label = sbuf,
shortName = sbzt,
currency = kfu,
price = ve,
stock = dig.stock,
cardId = dig.cardId,
})

table.insert(xoi.shopLabels, sbuf)
end

for mf, odhn in ipairs({
_d("YRUAHAoLGHsRHQUADwlWHiQZCAoNVxUC"),
_d("cQUIIQ4UAFwHFAwBLRxUAhANCg"),
_d("exEdBQAPCVYeJBkICg1XFSIdDgwJ"),
_d("YRUAHAoLGHsRHQUADwlWHiUGGB0eYwIeDh0dH0A"),
_d("YAkfCicZAF8fBgwKFjhcBxQbPwoDVAIUGhw"),
_d("fAAUBycZAF8fBgwKFjhcBxQb"),
}) do
xoi.remote[odhn] = yhti(odhn)
end

function xoi.fire(ldca, ...)
local fdak = xoi.remote[ldca]

if not fdak then
return
end

local znx = { ... }

pcall(function()
fdak:FireServer(table.unpack(znx))
end)
end

function xoi.on(qkfo, wxu)
local nsew = xoi.remote[qkfo]

if nsew then
vhzs(nsew.OnClientEvent, wxu)
end
end

if xdm then
for pfoo, zrgu in ipairs(xdm.Upgrades) do
table.insert(xoi.upgrades, {
id = zrgu.id,
name = zrgu.name,
maxLevel = zrgu.maxLevel,
})

table.insert(xoi.labels, zrgu.name)
end
end

function xoi.level(zf)
if not xdm then
return 0
end

return xdm.getUpgradeLevel(xoi.upgrade.levels, zf)
end

function xoi.cost(wym)
if not xdm then
return nil
end

return xdm.getUpgradeCost(wym, xoi.level(wym))
end

function xoi.bonus(ewvr, we)
if not xdm then
return _d("")
end

return xdm.formatUpgradeBonus(ewvr, we)
end

function xoi.request()
xoi.upgrade.lastRequest = os.time()
xoi.fire(_d("YRUAHAoLGHsRHQUADwlWHiQZCAoNVxUC"))
end

function xoi.text()
if not xdm then
return _d("exEdBQAPCVYeUT0ADwlBUBUIGxlMWgNRBwAMTFoeUR0HER8TEgQAAxxC")
end

local zn = xoi.upgrade
local qdeb = {}

if zn.balance == nil then
table.insert(qdeb, _d("YwUcGQQRAkBKUURPUA1AGxgHCFgYWxVRGgoKGlYCWA"))
else
table.insert(qdeb, _d("YwUcGQQRAkBKUQ") .. bvez(zn.balance))
end

for ur, soq in ipairs(xoi.upgrades) do
local et = xoi.level(soq.id)
local dxm = xoi.cost(soq.id)
local zawu = zn.selected[soq.id] and _d("aAgsSQ") or _d("aFAsSQ")
local so = zawu .. soq.name .. _d("E1A9H08") .. et .. _d("HA") .. soq.maxLevel

if dxm then
table.insert(qdeb, so .. _d("E1AfDBcMTA") .. tostring(dxm) .. _d("E1A") .. xoi.bonus(soq.id, et + 1))
else
table.insert(qdeb, so .. _d("E1AcCBcdCA"))
end
end

if not next(zn.selected) then
table.insert(qdeb, _d("YxkSAk8NHFQCEA0KC0xaHlEdBx1MVwIeGQsXG11QEAcLWC1GBB5JGggLQREVDBxYDkYJAkkbEAkTExkMDggJQARRBgEdTEofBEkMGQITERcPAAoIHQ"))
end

return table.concat(qdeb, _d("OQ"))
end

function xoi.buy()
local joc = xoi.upgrade

if joc.waiting or joc.balance == nil or os.time() - joc.lastBuy < 1 then
return
end

local lpv = nil
local iaoh = nil

for tyy, nnc in ipairs(xoi.upgrades) do
if joc.selected[nnc.id] and os.time() >= (joc.failedUntil[nnc.id] or 0) then
local hee = xoi.cost(nnc.id)

if hee and joc.balance >= hee and (not iaoh or hee < iaoh) then
lpv = nnc.id
iaoh = hee
end
end
end

if not lpv then
return
end

joc.waiting = true
joc.lastBuy = os.time()
joc.pendingId = lpv
joc.pendingLevel = xoi.level(lpv)

joc.balance = joc.balance - iaoh

xoi.fire(_d("cQUIIQ4UAFwHFAwBLRxUAhANCg"), lpv)
end

xoi.on(_d("exEdBQAPCVYeJBkICg1XFSIdDgwJ"), function(nrz)
if type(nrz) ~= _d("RxETBQo") then
return
end

local mguy = xoi.upgrade

mguy.balance = tonumber(nrz.balance) or 0
mguy.levels = type(nrz.levels) == _d("RxETBQo") and nrz.levels or {}

if mguy.pendingId then
if xoi.level(mguy.pendingId) <= mguy.pendingLevel then
mguy.failedUntil[mguy.pendingId] = os.time() + 15
end

mguy.pendingId = nil
end

if type(nrz.message) == _d("QAQDAAEf") then
mguy.lastMessage = nrz.message
end

mguy.waiting = false
end)

xoi.on(_d("YAkfCicZAF8fBgwKFjhcBxQbPwoDVAIUGhw"), function(nfu, xcht)
xoi.run.highest = tonumber(nfu) or 0
xoi.run.savedRun = type(xcht) == _d("RxETBQo") and xcht or nil
end)

xoi.on(_d("fAAUBycZAF8fBgwKFjhcBxQb"), function(qb, oj, qg)
xoi.run.highest = tonumber(qb) or xoi.run.highest
xoi.run.savedRun = type(qg) == _d("RxETBQo") and qg or nil
end)

vhzs(fyeb.BattleEnd.OnClientEvent, function(lnu)
if type(lnu) == _d("RxETBQo") and lnu.mode == _d("Wh4XAAERGFYvAwYAFQ") and lnu.tower == _d("WxEdBQAPCVYe") then
xoi.run.inBattle = false
xoi.run.pending = true
xoi.run.pendingUntil = os.time() + 3

task.delay(0.3, function()
xoi.requestProgress()
end)
end
end)

function xoi.requestProgress()
xoi.run.lastRequest = os.time()
xoi.fire(_d("YRUAHAoLGHsRHQUADwlWHiUGGB0eYwIeDh0dH0A"))
end

function xoi.bestRoom()
local wqbs = xoi.run.highest

if not xdm or wqbs == nil then
return nil
end

for lnld, sq in ipairs(xdm.Milestones) do
if xdm.isMilestoneUnlocked(sq, wqbs)
and not xdm.isMilestoneCleared(sq, wqbs) then
return sq
end
end

return nil
end

function xoi.startRun()
local rya = xoi.bestRoom()

if not rya then
return false
end

local qo = xoi.run.savedRun
local dznm = type(qo) == _d("RxETBQo") and qo.milestone == rya
local cvfg = dznm and (tonumber(qo.currentFloor) or rya) or rya

local rjb = ym.halloweenSlot() or 1

local pv = getgenv().ACBXAuto

pv = type(pv) == _d("RxETBQo") and pv.bossTeams or nil

if xoi.run.teamChosen and pv and pv.applyTeam then
pv.applyTeam(xoi.run.team, rjb)
end

local pf = qf:FindFirstChild(rjb == 2 and _d("YRUCDBs6DUcEHQwpFANcAkM") or _d("YRUCDBs6DUcEHQwpFANcAg"))

if pf and pf:IsA(_d("cRkfDQ4aAFY1BwwBDA")) then
pcall(function()
pf:Fire(cvfg, _d("Wh4XAAERGFYvAwYAFQ"))
end)
end

local ua = qf:FindFirstChild(rjb == 2 and _d("YAQQGxsxAlUZHwAbHT5cHxwrDgwYXxVD") or _d("YAQQGxsxAlUZHwAbHT5cHxwrDgwYXxU"))

if ua and ua:IsA(_d("cRkfDQ4aAFY1BwwBDA")) then
pcall(function()
ua:Fire(cvfg, _d("WxEdBQAPCVYe"), cvfg)
end)
end

xoi.run.milestone = rya
xoi.run.savedRun = nil
xoi.run.inBattle = true
xoi.run.inBattleUntil = os.time() + 120
xoi.run.pending = true
xoi.run.pendingUntil = os.time() + 10

if dznm then
fyeb.StartBattle:FireServer(_d("Wh4XAAERGFYvAwYAFQ"), {
continue = true,
tower = _d("WxEdBQAPCVYe"),
slot = rjb,
})
else
fyeb.StartBattle:FireServer(_d("Wh4XAAERGFYvAwYAFQ"), {
tower = _d("WxEdBQAPCVYe"),
milestone = rya,
slot = rjb,
})
end

return true
end

local md = {}
for zngk, axx in ipairs(rgoa.NPCs) do
md[axx.name] = axx.id
end

local li = getgenv().ACBXCooldowns
if type(li) ~= _d("RxETBQo") then
li = {}
getgenv().ACBXCooldowns = li
end

local vzhb = getgenv().ACBXAuto
if type(vzhb) == _d("RxETBQo") and type(vzhb.cooldowns) == _d("RxETBQo") then
for lfzt, nta in pairs(vzhb.cooldowns) do
if li[lfzt] == nil then
li[lfzt] = nta
end
end
end

local rv = {
enabled = false,
story = false,
storyDifficulty = _d("XR8DBA4U"),
storyDropdown = nil,
selectedByWorld = {},
difficulties = { _d("XR8DBA4U") },
walkToNpc = false,
cooldowns = li,
activeDifficulty = {},
lastFetch = {},
unlocked = {},
currentBattle = nil,
battlePending = false,
battlePendingUntil = 0,
}

rv.bossTeams = {
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

path = _d("cjMzMUAMCVIdAkcFCwNd"),
}

function rv.bossTeams.trackCollection()
if rv.bossTeams.collectionHooked then
return
end

rv.bossTeams.collectionHooked = true

local ldb = hs:FindFirstChild(_d("YAkfCiwXAF8VEh0GFwI"))

if not ldb then
return
end

vhzs(ldb.OnClientEvent, function(ndaj)
if type(ndaj) == _d("RxETBQo") and type(ndaj.teams) == _d("RxETBQo") then
rv.bossTeams.teams = ndaj.teams
rv.bossTeams.teamsAt = os.clock()
end
end)

task.spawn(function()

task.wait(3)

for hfaz = 1, 8 do
if rv.bossTeams.teams then
return
end

local pa = hs:FindFirstChild(_d("YAcYHQwQOFYRHA"))
local wbz = rv.bossTeams.slotTeam
local fvvn = nil

if pa and type(wbz) == _d("VQUfChsRA10") then
local pc, iaky = pcall(wbz, 2)
fvvn = pc and iaky or nil

if not fvvn then
pc, iaky = pcall(wbz, 1)
fvvn = pc and iaky or nil
end
end

if fvvn then
pcall(function()
pa:FireServer(fvvn, false, 2)
end)
end

task.wait(6)
end
end)
end

function rv.bossTeams.teamCards(vrij)
local oxeu = rv.bossTeams.teams

if type(oxeu) ~= _d("RxETBQo") then
return nil
end

local apq = oxeu[vrij]

if type(apq) ~= _d("RxETBQo") then
return 0
end

local knyb = 0

for lne, nnfq in pairs(apq) do
if type(nnfq) == _d("RxETBQo") then
knyb = knyb + 1
end
end

return knyb
end

function rv.bossTeams.raidState()
return getgenv().ACBXAutoRaid
end

function rv.bossTeams.save()
if type(writefile) ~= _d("VQUfChsRA10") then
return false
end

local mi = {}

for nnal, qrdx in pairs(rv.bossTeams.picked) do
mi[nnal] = qrdx
end

local sw = {}

for fh, zp in pairs(rv.bossTeams.raidPicked) do
sw[fh] = zp
end

local aeb = {}

for bl, kus in pairs(rv.bossTeams.towerPicked) do
aeb[bl] = kus
end

return pcall(function()
if type(makefolder) == _d("VQUfChsRA10") and type(isfile) == _d("VQUfChsRA10") and not isfile(rv.bossTeams.path) then
pcall(makefolder, _d("cjMzMQ"))
end

local gpk = rv.bossTeams.raidState()
local fsji = gpk and gpk.worldBoss
local akmr = nil

if fsji and fsji.teamChosen then
akmr = fsji.team
end

writefile(rv.bossTeams.path, game:GetService(_d("ewQFGTwdHkUZEgw")):JSONEncode({
areas = mi,
raids = sw,
towers = aeb,
swap = rv.bossTeams.swap,
globalBoss = akmr,
updatedAt = os.time(),
}))
end)
end

function rv.bossTeams.load()
if type(readfile) ~= _d("VQUfChsRA10") or type(isfile) ~= _d("VQUfChsRA10") then
return false
end

local je, vnt = pcall(function()
if not isfile(rv.bossTeams.path) then
return nil
end

return readfile(rv.bossTeams.path)
end)

if not je or type(vnt) ~= _d("QAQDAAEf") or #vnt == 0 then
return false
end

local mar
local iax = pcall(function()
mar = game:GetService(_d("ewQFGTwdHkUZEgw")):JSONDecode(vnt)
end)

if not iax or type(mar) ~= _d("RxETBQo") then
return false
end

if type(mar.areas) == _d("RxETBQo") then
for jglg, aavc in pairs(mar.areas) do
local qbh = tonumber(aavc)

if qbh and qbh >= 1 and qbh <= 4 then
rv.bossTeams.picked[jglg] = qbh
end
end
end

if type(mar.raids) == _d("RxETBQo") then
for fu, yt in pairs(mar.raids) do
local eh = tonumber(yt)

if eh and eh >= 1 and eh <= 4 then
rv.bossTeams.raidPicked[fu] = eh
end
end
end

if type(mar.towers) == _d("RxETBQo") then
for jrs, efb in pairs(mar.towers) do
local bgd = tonumber(efb)

if bgd and bgd >= 1 and bgd <= 4 then
rv.bossTeams.towerPicked[jrs] = bgd
end
end
end

if type(mar.swap) == _d("RxETBQo") then
local dp = tonumber(mar.swap.team)
local yzwp = tonumber(mar.swap.floor)

if dp and dp >= 1 and dp <= 4 then
rv.bossTeams.swap.team = dp
end

if yzwp and yzwp > 0 then
rv.bossTeams.swap.floor = yzwp
end

local qnyz = tonumber(mar.swap.team2)
local rifc = tonumber(mar.swap.floor2)

if qnyz and qnyz >= 1 and qnyz <= 4 then
rv.bossTeams.swap.team2 = qnyz
end

if rifc and rifc > 0 then
rv.bossTeams.swap.floor2 = rifc
end

rv.bossTeams.swap.on = mar.swap.on == true
end

local bpc = tonumber(mar.globalBoss)
local tli = rv.bossTeams.raidState()
local qsv = tli and tli.worldBoss

if bpc and bpc >= 1 and bpc <= 4 and qsv then
qsv.team = bpc

qsv.teamChosen = true
end

return true
end

local kmn = nil
local oxzi = nil

local function swp(dd, ixsz)
return dd .. _d("Tw") .. ixsz
end

local function znzd(gbof, epol)
return rv.cooldowns[swp(gbof, epol)] or 0
end

local function uqw(yjyz, fjid, qz)
rv.cooldowns[swp(yjyz, fjid)] = qz
end

getgenv().ACBXAuto = rv

local nr = {
enabled = false,
picks = { [1] = {}, [2] = {} },
cursor = { [1] = 1, [2] = 1 },
losses = { [1] = {}, [2] = {} },
inFlight = {},

lossLimit = 3,
difficulties = { _d("XR8DBA4U") },
walkToBoss = false,
walkSpeed = 18,
pending = {},
pendingUntil = {},
cleared = {},
progress = {},
}

getgenv().ACBXAutoRaid = nr

nr.worldBoss = {
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

fishingMode = _d("RBEYHQ"),
digHold = true,

walkToBoss = false,
walkToggle = nil,

building = false,
}

rv.bossTeams.trackCollection()
rv.bossTeams.load()

function nr.worldBoss.data()
local aysk = nr.worldBoss

if aysk.module == nil then
local ne, qm = pcall(function()
return require(gs.ModuleScripts.WorldBossData)
end)

aysk.module = ne and qm or false
end

return aysk.module or nil
end

function nr.worldBoss.clock(tzt)
tzt = math.max(0, math.floor(tonumber(tzt) or 0))

local hecx = math.floor(tzt / 3600)
local kap = math.floor((tzt % 3600) / 60)
local pnmg = tzt % 60

if hecx > 0 then
return string.format(_d("FhQZSUpIXlcd"), hecx, kap)
end

if kap > 0 then
return string.format(_d("FhQcSUpIXlcD"), kap, pnmg)
end

return string.format(_d("FhQC"), pnmg)
end

function nr.worldBoss.status()
local ftq = nil

pcall(function()
ftq = gs:FindFirstChild(_d("ZB8DBQs6A0ADIh0ODBlA"))
end)

return ftq
end

function nr.worldBoss.isOpen()
local dccb = nr.worldBoss.status()

if not dccb then
return nil
end

return dccb:GetAttribute(_d("chMFABkd")) == true
end

function nr.worldBoss.window()
local mtm = nr.worldBoss.status()

if not mtm then
return nil, nil
end

return tonumber(mtm:GetAttribute(_d("dh4VGi4M"))), tonumber(mtm:GetAttribute(_d("fRUJHS4M")))
end

function nr.worldBoss.cycle()
local ly = nr.worldBoss
local wh = ly.data()

if not wh or not wh.getCycleState then
return nil
end

local asd, gb = pcall(function()
return wh.getCycleState()
end)

return asd and gb or nil
end

function nr.worldBoss.shopList()
local ikas = nr.worldBoss

if ikas.items then
return ikas.items
end

local cnwk = {}
local mbir = ikas.data()

if not mbir or type(mbir.ShopItems) ~= _d("RxETBQo") then
ikas.items = cnwk
return cnwk
end

for vtfo, ey in ipairs(mbir.ShopItems) do
local stiq = nil

pcall(function()
if ey.itemId then
local loy = require(gs.ModuleScripts.ItemData)
local flaq = loy[ey.itemId] or (loy.ById and loy.ById[ey.itemId])
stiq = flaq and flaq.name or nil
elseif ey.cardId then
local jv = require(gs.ModuleScripts.CardData)
local aasv = jv[ey.cardId] or (jv.ById and jv.ById[ey.cardId])
stiq = aasv and aasv.name or nil
end
end)

local pp = nr.worldBoss.state

if type(pp) == _d("RxETBQo") and type(pp.shop) == _d("RxETBQo") then
for pka, ogjs in ipairs(pp.shop) do
if ogjs.id == ey.id and ogjs.name then
stiq = ogjs.name
break
end
end
end

if not stiq then

stiq = tostring(ey.accessoryId or ey.id or _d("DA")):gsub(_d("bA"), _d("Ew")):gsub(_d("G1UQQEcjSURXLENG"), function(hhrk, eu)
return hhrk:upper() .. eu
end)
end

table.insert(cnwk, {
id = ey.id,
name = stiq,
price = tonumber(ey.price) or 0,
kind = ey.itemId and _d("WgQUBA") or (ey.cardId and _d("UBEDDQ") or _d("UhMSDBwLA0EJ")),
})
end

ikas.items = cnwk

return cnwk
end

function nr.worldBoss.bodyText()
local aha = nr.worldBoss
local aa = aha.state

if type(aa) ~= _d("RxETBQo") then
return _d("YRUQDQYWCxMEGQxPGgNAA19HQQ")
end

local sjv = {}
local yl = aha.cycle()
local whf = aha.isOpen()
local rpm, lcor = aha.window()

if whf == nil then
whf = aa.open == true
end

if whf then
local tc = _d("fAAUBw")

if not rpm and yl then
rpm = yl.endsAt
end

if rpm and rpm > os.time() then
tc = tc .. _d("E7LGSQ") .. aha.clock(rpm - os.time()) .. _d("ExwUDxs")
end

table.insert(sjv, tc)
else
local vt = _d("dx8GB08eA0FQHwYY")

if not lcor and yl then
lcor = yl.nextAt
end

if lcor and lcor > os.time() then
vt = vt .. _d("OTIQCgRYBV1Q") .. aha.clock(lcor - os.time())
end

table.insert(sjv, vt)
end

table.insert(sjv, _d("fhUVCAMLVhM") .. tostring(aa.medals or 0) .. _d("OTsYBQMLVhM") .. tostring(aa.kills or 0))

if aa.inFight then
table.insert(sjv, _d("dRkWARsRAlQ"))
elseif whf then

table.insert(sjv, aa.killedThisSpawn and _d("YRUQDRZyJ1ocHQwLWBhbGQJJHAgNRB5RCAMKCVIUCA") or _d("YRUQDRY"))
end

if aha.stopAtFull then
local iwyh, xwpj = aha.meter()

if iwyh and xwpj then
local function mk(wr)
if wr >= 1000000000 then
return string.format(_d("Fl5ADy0"), wr / 1000000000)
elseif wr >= 1000000 then
return string.format(_d("Fhc8"), math.floor(wr / 100000) / 10)
elseif wr >= 1000 then
return string.format(_d("Fhc6"), math.floor(wr / 100) / 10)
end

return tostring(math.floor(wr))
end

table.insert(sjv, _d("YBUDHwoKTF4VBQwdQkw") .. mk(iwyh) .. _d("E19R") .. mk(xwpj)
.. (aha.meterFull() and _d("OTYEBQNYQRMeHh1PHgVUGAUAAR9MRxgYGk8LHFIHHw") or _d("")))
end
end

return table.concat(sjv, _d("OXo"))
end

function nr.worldBoss.shopText()
local qvlb = nr.worldBoss
local bvr = qvlb.state

if type(bvr) ~= _d("RxETBQo") or type(bvr.shop) ~= _d("RxETBQo") then
return _d("YRUQDQYWCxMEGQxPCwRcAF9HQQ")
end

local bho = { _d("fhUVCAMLVhM") .. tostring(bvr.medals or 0) }

for kv, vv in ipairs(bvr.shop) do
local ub = tostring(vv.name or vv.id)
local qyfc = tostring(vv.price or _d("DA"))
local hr

if vv.kind == _d("WgQUBA") then
hr = ub .. _d("OQ") .. qyfc .. _d("E7LGSQ") .. tostring(vv.left or 0) .. _d("HA") .. tostring(vv.stock or _d("DA")) .. _d("ExwUDxs")
elseif vv.owned then
hr = ub .. _d("OT8GBwoc")
else
hr = ub .. _d("OQ") .. qyfc .. _d("E7LGSQAWCRMfFw8")
end

table.insert(bho, hr)
end

return table.concat(bho, _d("OXo"))
end

function nr.worldBoss.shopOptions()
local qx = nr.worldBoss

if qx.options then
return qx.options
end

local hct = {}

qx.labelToId = {}

for vzw, rq in ipairs(qx.shopList()) do
local psf = rq.name .. _d("E7LGSQ") .. tostring(rq.price)

table.insert(hct, psf)
qx.labelToId[psf] = rq.id
end

qx.options = hct

return hct
end

local function oiy(hpj)
local qjmr = nr.progress[hpj]
local ich = gs:FindFirstChild(_d("YREYDTwMDUcFAg"))
local sj = ich and ich:GetAttribute(_d("cAkSBQoxCA"))

if type(qjmr) == _d("RxETBQo") then
if qjmr.cycleId then
sj = qjmr.cycleId
end

if qjmr.completed and qjmr.completedRaidId then
return tostring(sj) .. _d("CRQeBwo")
end

local hoia = qjmr.phaseIndex or qjmr.phase

if hoia then
return tostring(sj) .. _d("CQ") .. tostring(hoia)
end
end

return tostring(sj)
end

function nr.finished(tb)
local rdm = nr.progress[tb]

return type(rdm) == _d("RxETBQo") and rdm.completed == true and rdm.completedRaidId == tb
end

function nr.bossFor(tblf, hl)
local txgp = nr.picks[hl or tblf]

if not txgp or #txgp == 0 then
return nil
end

local hm = gs:FindFirstChild(_d("YREYDTwMDUcFAg"))
local kclz = nr.losses[tblf] or {}
local qmi = nr.cursor[tblf] or 1

for qir = 0, #txgp - 1 do
local oh = (qmi - 1 + qir) % #txgp + 1
local szo = txgp[oh]
local mxvk = not hm or hm:GetAttribute(_d("YRUQDRYn") .. szo) == true

if mxvk and not nr.finished(szo) and (kclz[szo] or 0) < nr.lossLimit then
nr.cursor[tblf] = oh

return szo
end
end

return nil
end

vhzs(fyeb.RaidBattleStarted.OnClientEvent, function(rze)

local bmml = type(rze) == _d("RxETBQo") and rze.raidId or nil

if type(bmml) == _d("QAQDAAEf") then
nr.pending[bmml] = false
else
for gc in pairs(nr.pending) do
nr.pending[gc] = false
end
end
end)

vhzs(fyeb.BattleEnd.OnClientEvent, function(xpoq)
for bhk in pairs(nr.pending) do
nr.pending[bhk] = false
end

if type(xpoq) ~= _d("RxETBQo") or not nr.enabled then
return
end

local ktls = type(xpoq.raidId) == _d("QAQDAAEf") and xpoq.raidId or nil
local ojgu = ktls and nr.inFlight[ktls] or nil

if not ktls then
for ezvk, ge in pairs(nr.inFlight) do
ktls = ezvk
ojgu = ge
break
end
end

if not ktls then
return
end

nr.inFlight[ktls] = nil

if xpoq.result == _d("Xx8CDA") then

local bzf = nr.losses[ojgu or 1]

nr.cleared[ktls] = nil
bzf[ktls] = (bzf[ktls] or 0) + 1

for bdl in pairs(nr.pendingUntil) do
nr.pendingUntil[bdl] = os.time() + 3
end
else

nr.losses[ojgu or 1][ktls] = 0
end
end)

vhzs(fyeb.RaidProgress.OnClientEvent, function(kpsl)
if type(kpsl) == _d("RxETBQo") and type(kpsl.raidId) == _d("QAQDAAEf") then
nr.progress[kpsl.raidId] = kpsl
end
end)

fyeb.RequestRaidProgress:FireServer()

local flt = {
enabled = false,
progress = nil,
currentRoom = nil,
inBattle = false,
inBattleUntil = 0,
pending = false,
pendingUntil = 0,
}

getgenv().ACBXAutoRooms = flt

vhzs(fyeb.SyncInfiniteRoomProgress.OnClientEvent, function(cz)
if type(cz) == _d("XQUcCwoK") then
flt.progress = cz
flt.pending = false
end
end)

vhzs(fyeb.BattleEnd.OnClientEvent, function(dkzu)
if type(dkzu) == _d("RxETBQo") and dkzu.mode == _d("Wh4XAAERGFYvAwYAFQ") then
flt.inBattle = false
flt.pending = true
flt.pendingUntil = os.time() + 3

task.delay(0.3, function()
fyeb.RequestInfiniteRoomProgress:FireServer()
end)
end
end)

fyeb.RequestInfiniteRoomProgress:FireServer()

local nt = {
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

getgenv().ACBXAutoTower = nt

local yx = {
enabled = false,
floor = 0,
triggered = false,
}

getgenv().ACBXAutoPause = yx

local mty = {
enabled = false,
floor = 0,
triggered = false,

weatherEnabled = false,
weathers = {},
weatherMinFloor = 0,
weatherTriggered = false,

weatherGivenFor = nil,

weatherNow = nil,
weatherAt = 0,

weatherIds = {
Typhoon = _d("RwkBAQAXAg"),
Blizzard = _d("URwYExUZHlc"),
Lightning = _d("XxkWARsWBV0X"),
Windstorm = _d("RBkfDRwMA0Ed"),
Sharingan = _d("QBgQGwYWC1Ie"),
Singularity = _d("QBkfDhoUDUEZBRA"),
[_d("fh8fCB0bBBM0HgQOEQI")] = _d("Xh8fCB0bBGwUHgQOEQI"),
Void = _d("RR8YDQ"),
[_d("fhEVDE8RAhM4FAgZHQI")] = _d("XhEVDDARAmwYFAgZHQI"),
Manga = _d("XhEfDg4"),
},
}

function mty.weatherWanted(eo)
local wufe = mty.weatherNow

if type(wufe) ~= _d("QAQDAAEf") then
return nil
end

for bysy, hcy in pairs(eo or mty.weathers) do
if hcy and mty.weatherIds[bysy] == wufe then
return bysy
end
end

return nil
end

getgenv().ACBXAutoGiveUp = mty

local ujfh = {
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

if gs:FindFirstChild(_d("fh8VHAMdP1ACGBkbCw")) and gs.ModuleScripts:FindFirstChild(_d("exEDDQwXHlYkHh4KCihSBBA")) then
local tnbq, tmba = pcall(function()
return require(gs.ModuleScripts.HardcoreTowerData)
end)

if tnbq then
ujfh.data = tmba
end
end

getgenv().ACBXHardcore = ujfh

task.spawn(function()
local lr = gs:FindFirstChild(_d("YRUcBhsdHw"))

if not lr then
return
end

local thl = lr:WaitForChild(_d("YAkfCicZHlcTHhsKLANEFQM5HRcLQRUCGg"), 20)

if thl and thl:IsA(_d("YRUcBhsdKUUVHx0")) then
ujfh.remotes.sync = thl

vhzs(thl.OnClientEvent, function(cem)
if type(cem) ~= _d("RxETBQo") then
return
end

ujfh.progress = tonumber(cem.progress) or ujfh.progress
ujfh.best = tonumber(cem.best) or ujfh.best

if type(cem.points) == _d("RxETBQo") then
ujfh.points = cem.points
end
end)
end

local amte = lr:WaitForChild(_d("YRUAHAoLGHsRAw0MFx5WJB4eCgo8QR8WGwoLHw"), 20)

if amte and amte:IsA(_d("YRUcBhsdKUUVHx0")) then
ujfh.remotes.request = amte

pcall(function()
amte:FireServer()
end)
end

local nf = lr:WaitForChild(_d("dBweCw4ULkYWFzwfHA1HFRU"), 20)

if nf and nf:IsA(_d("YRUcBhsdKUUVHx0")) then
vhzs(nf.OnClientEvent, function(brdo, iowe, jyqv, ye)
ujfh.globalLuck = tonumber(brdo) or 0
ujfh.globalRoll = tonumber(iowe) or 0
ujfh.globalLuckTime = type(jyqv) == _d("QAQDAAEf") and jyqv or _d("")
ujfh.globalRollTime = type(ye) == _d("QAQDAAEf") and ye or _d("")
end)
end
end)

function ym.otherTowerOn(ro)
if ym.enabled then
return false
end

if ro == _d("Rx8GDB0") then
return false
end

if ro == _d("WxEdBQAPCVYe") then
return ujfh.active()
end

return xoi.run.enabled
end

function ujfh.active()
return ujfh.island
end

function ujfh.unspentPoints()
local mmxn = ujfh.data
local itu = tonumber(ujfh.progress) or 0
local aggn = 0

if type(mmxn) == _d("RxETBQo") and type(mmxn.getEarnedPoints) == _d("VQUfChsRA10") then
local ajlk, bz = pcall(mmxn.getEarnedPoints, itu)
aggn = ajlk and tonumber(bz) or 0
end

return math.max(0, aggn - #(ujfh.points or {})), aggn
end

function ujfh.buffText()
local nnzc = ujfh.data

if type(nnzc) ~= _d("RxETBQo") then
return _d("exEDDQwXHlYkHh4KCihSBBBJBgtMXhkCGgYWCxMWAwYCWBhbGQJJDQ0FXxRf")
end

local jp = tonumber(ujfh.progress) or 0
local bfln = tonumber(ujfh.best) or 0
local hhlv, wwv = ujfh.unspentPoints()
local gin = {
_d("dRweBh1Y") .. jp .. _d("E1BRKwoLGBM") .. bfln,
_d("Yx8YBxsLVhM") .. hhlv .. _d("EwUfGh8dAkdQHg9P") .. wwv .. _d("ExUQGwEdCA"),
}

local qr = {}

for pl, akh in ipairs(ujfh.points or {}) do
local rwa = nnzc.StatById and nnzc.StatById[akh]
local shjq = rwa and (rwa.name or akh) or tostring(akh)
local prg = nnzc.PointValue and nnzc.PointValue[akh]

table.insert(qr, prg and (shjq .. _d("E1s") .. tostring(prg)) or shjq)
end

if #qr == 0 then
table.insert(gin, _d("cQUXDxxCTF0fHwxPGgNGFxkdTwEJRw"))
else
table.insert(gin, _d("cQUXDxxCTA") .. table.concat(qr, _d("H1A")))
end

local kjzg = {}

if (tonumber(ujfh.globalLuck) or 0) > 0 then
table.insert(kjzg, _d("fwUSAk9T") .. tostring(ujfh.globalLuck) .. _d("Fg") .. (ujfh.globalLuckTime ~= _d("") and (_d("E1g") .. ujfh.globalLuckTime .. _d("Gg")) or _d("")))
end

if (tonumber(ujfh.globalRoll) or 0) > 0 then
table.insert(kjzg, _d("YR8dBU8LHFYVFUlE") .. tostring(ujfh.globalRoll) .. _d("Fg") .. (ujfh.globalRollTime ~= _d("") and (_d("E1g") .. ujfh.globalRollTime .. _d("Gg")) or _d("")))
end

if #kjzg == 0 then
table.insert(gin, _d("dBweCw4UTFEFFw8cQkxdHx8MTxkPRxkHDA"))
else
table.insert(gin, _d("dBweCw4UTFEFFw8cQkw") .. table.concat(kjzg, _d("H1A")))
end

return table.concat(gin, _d("OQ"))
end

function ujfh.nextMilestone()
local ovky = ujfh.data

if type(ovky) ~= _d("RxETBQo") or type(ovky.Milestones) ~= _d("RxETBQo") or #ovky.Milestones == 0 then
return nil
end

local qd = tonumber(qzj:GetAttribute(_d("exEDDQwXHlY2HQYACg"))) or 0

return math.min(qd + 1, ovky.Milestones[#ovky.Milestones])
end

function ujfh.start(swln)
local otv = ujfh.nextMilestone()

if not otv then
return false
end

local wlm = qf:FindFirstChild(swln == 2 and _d("YRUCDBs6DUcEHQwpFANcAkM") or _d("YRUCDBs6DUcEHQwpFANcAg"))

if wlm and wlm:IsA(_d("cRkfDQ4aAFY1BwwBDA")) then
pcall(function()
wlm:Fire(otv, _d("Wh4XAAERGFYvAwYAFQ"))
end)
end

local ae = qf:FindFirstChild(swln == 2 and _d("YAQQGxsxAlUZHwAbHT5cHxwrDgwYXxVD") or _d("YAQQGxsxAlUZHwAbHT5cHxwrDgwYXxU"))

if ae and ae:IsA(_d("cRkfDQ4aAFY1BwwBDA")) then
pcall(function()
ae:Fire(otv, _d("WxEDDQwXHlY"), otv)
end)
end

if rv.bossTeams.applyTower then
rv.bossTeams.applyTower(_d("WxEDDQwXHlY"), swln)
end

ujfh.pending = true
ujfh.pendingUntil = os.time() + 10

return pcall(function()
fyeb.StartBattle:FireServer(_d("Wh4XAAERGFYvAwYAFQ"), {
tower = _d("WxEDDQwXHlY"),
milestone = otv,
slot = swln,
})
end)
end

function ujfh.floorNow()
local qui = ym.hardcoreSlot()

if not qui or not ym.busy(qui) then
return nil
end

local rfc = qf:FindFirstChild(qui == 2 and _d("cREFHQMdK0YZQw") or _d("cREFHQMdK0YZ"))
local pgh = rfc and rfc:FindFirstChild(_d("YQUfLwMXA0E8EAsKFA"))
local wv = pgh and pgh.Text or _d("")

return tonumber(wv:match(_d("bTYdBgAKSUBbWUwLU0U")))
end

local nc = {
enabled = true,
nextAt = os.clock() + 300,
jumps = 0,
}

getgenv().ACBXAntiKick = nc

local rok = getgenv().ACBXNoUpdate == true

local yjop = {
enabled = not rok,
buildId = "v261102-2309",
interval = 180,
retry = 45,
forceAfter = 900,
applying = false,
checking = false,
pendingVersion = nil,
pendingSince = nil,
cameFrom = nil,
}

getgenv().ACBXUpdater = yjop

local hqy = {
enabled = false,
tpToBay = false,

stick = {
enabled = false,
at = 0,
hits = 0,
last = _d("XBYX"),

names = {
[_d("QAQYCgQ")] = true,
[_d("XwUSAk8LGFoTGg")] = true,
[_d("XwUSAhwMBVAb")] = true,
[_d("XwUSAjALGFoTGg")] = true,
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
rod = _d("Hg"),
castTime = 0,
tutorialStep = 0,
phase = _d("WhQdDA"),
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
deepPhase = _d("WhQdDA"),
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

local jzy = Vector3.new(-546.8, 13.9, -40250.1)

if type(getgenv().ACBXFishingCatches) == _d("RxETBQo") then
hqy.catches = getgenv().ACBXFishingCatches
end

hqy.totalCatches = 0

for sewo, yg in pairs(hqy.catches) do
hqy.totalCatches = hqy.totalCatches + yg
end

getgenv().ACBXFishingCatches = hqy.catches
getgenv().ACBXFishing = hqy

hqy.catchName = function(uh)
local xckd = woa.ById[uh]

if xckd and xckd.name then
return xckd.name
end

local owwy = mc.ById[uh]

if owwy and owwy.name then
return owwy.name
end

return uh
end

local tpvg

tpvg = {
folder = _d("cjMzMQ"),
path = _d("cjMzMUAbDUcTGQwcVgZAHx8"),
at = 0,
save = function()
if type(writefile) ~= _d("VQUfChsRA10") then
return false
end

local rfep = pcall(function()
if type(makefolder) == _d("VQUfChsRA10") and type(isfile) == _d("VQUfChsRA10") and not isfile(tpvg.path) then
pcall(makefolder, tpvg.folder)
end

writefile(tpvg.path, game:GetService(_d("ewQFGTwdHkUZEgw")):JSONEncode({
catches = hqy.catches,
totalCatches = hqy.totalCatches,
lastCatch = hqy.lastCatch,
updatedAt = os.time(),
}))
end)

return rfep
end,
load = function()
if type(readfile) ~= _d("VQUfChsRA10") or type(isfile) ~= _d("VQUfChsRA10") then
return false
end

local fvpu, zww = pcall(function()
if not isfile(tpvg.path) then
return nil
end

return readfile(tpvg.path)
end)

if not fvpu or type(zww) ~= _d("QAQDAAEf") or #zww == 0 then
return false
end

local pdf
local siq = pcall(function()
pdf = game:GetService(_d("ewQFGTwdHkUZEgw")):JSONDecode(zww)
end)

if not siq or type(pdf) ~= _d("RxETBQo") or type(pdf.catches) ~= _d("RxETBQo") then
return false
end

for ege, lhc in pairs(pdf.catches) do
local npm = tonumber(lhc) or 0

if npm > 0 then
hqy.catches[tostring(ege)] = math.max(hqy.catches[tostring(ege)] or 0, npm)
end
end

hqy.totalCatches = 0

for zvd, qqb in pairs(hqy.catches) do
hqy.totalCatches = hqy.totalCatches + qqb
end

return true
end,
}

tpvg.load()
getgenv().ACBXFishingStore = tpvg

local wqar = {}

local sl = 0

local function oxo()
local cqf = {}

for ykr, hb in ipairs(workspace:GetDescendants()) do
if hb:IsA(_d("cRECDD8ZHkc")) and hb.Name == _d("ZBEFDB0") then
table.insert(cqf, hb)
end
end

wqar = cqf
sl = os.clock()
end

local function hsm(ed)
if type(ed) ~= _d("RxETBQo") then
return false
end

hqy.loaded = true
hqy.dirty = false
hqy.fishing = ed.fishing == true
hqy.autoOn = ed.autoOn == true
hqy.autoUnlocked = ed.autoUnlocked == true
hqy.casts = tonumber(ed.casts) or hqy.casts
hqy.totalCasts = tonumber(ed.totalCasts) or hqy.totalCasts
hqy.luck = tonumber(ed.luck) or hqy.luck
hqy.rod = tostring(ed.equippedRod or hqy.rod)
hqy.castTime = tonumber(ed.castTime) or hqy.castTime
hqy.tutorialStep = tonumber(ed.tutorialStep) or hqy.tutorialStep

if type(ed.rods) == _d("RxETBQo") then
hqy.rodsOwned = ed.rods
end

if type(ed.baits) == _d("RxETBQo") then
hqy.baitsOwned = ed.baits
end

if type(ed.boats) == _d("RxETBQo") then
hqy.boatsOwned = ed.boats
end

if type(ed.mats) == _d("RxETBQo") then
hqy.mats = ed.mats
end

if ed.bootOwned ~= nil then
hqy.boot.owned = ed.bootOwned == true
end

if ed.bootEquipped ~= nil then
hqy.boot.equipped = ed.bootEquipped == true
end

if ed.equippedBait ~= nil then
hqy.equippedBait = tostring(ed.equippedBait)
end

if ed.activeBoat ~= nil then
hqy.activeBoat = tostring(ed.activeBoat)
end

hqy.boatTier = tonumber(ed.boatTier) or hqy.boatTier
hqy.islandLocked = ed.islandLocked == true
hqy.rebirths = tonumber(ed.rebirths) or hqy.rebirths

if type(ed.rebirthCards) == _d("RxETBQo") then
hqy.rebirthCards = ed.rebirthCards
end

hqy.lastSync = os.time()

return true
end

local function fzv()
local bsg, olqz = pcall(function()
return fyeb.FishingGetState:InvokeServer()
end)

if not bsg or type(olqz) ~= _d("RxETBQo") then
hqy.loaded = false
return false
end

return hsm(olqz)
end

local wyxi = false

local function gl()
if wyxi then
return false
end

local bc = qzj.Character

if not bc then
return false
end

if bc:FindFirstChild(_d("dRkCAQYWC2EfFQ")) then
return true
end

local rtf = qzj:FindFirstChild(_d("cRESAh8ZD1g"))
local ermr = rtf and rtf:FindFirstChild(_d("dRkCAQYWC2EfFQ"))
local nju = bc:FindFirstChildOfClass(_d("ewUcCAEXBVc"))

if not (ermr and nju) then
return false
end

return pcall(function()
nju:EquipTool(ermr)
end)
end

local function zszs()
local yol = qzj.Character
local csc = yol and yol:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not csc then
return nil
end

local dl = RaycastParams.new()
dl.FilterType = Enum.RaycastFilterType.Exclude
dl.FilterDescendantsInstances = { yol }

local lb = 24
local dgle = {}
local xnk = 0

for qfp = 0, lb - 1 do
local qiha = math.rad(qfp * (360 / lb))
local doi = Vector3.new(math.sin(qiha), 0, math.cos(qiha))
local iw = csc.Position + doi * 20 + Vector3.new(0, 40, 0)
local pjm = workspace:Raycast(iw, Vector3.new(0, -120, 0), dl)
local flmv = pjm and (csc.Position.Y - pjm.Position.Y) or 120

dgle[qfp] = flmv > 12

if dgle[qfp] then
xnk = xnk + 1
end
end

if xnk == 0 then
return nil
end

local xv, my = nil, 0

for ct = 0, lb - 1 do
if dgle[ct] and not dgle[(ct - 1) % lb] then
local ysud = 0

while ysud < lb and dgle[(ct + ysud) % lb] do
ysud = ysud + 1
end

if ysud > my then
xv = ct
my = ysud
end
end
end

if not xv then
return nil
end

local ovqb = xv + (my - 1) / 2
local ykt = math.rad(ovqb * (360 / lb))

return Vector3.new(math.sin(ykt), 0, math.cos(ykt))
end

local function oulz()
local zdr = qzj.Character
local bt = zdr and zdr:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not bt then
return nil
end

if #wqar == 0 or os.clock() - sl > 20 then
oxo()
end

local aj, pniz = nil, math.huge

for zs, qsk in ipairs(wqar) do
if qsk.Parent then
local ihlq = (qsk.Position - bt.Position).Magnitude

if ihlq < pniz then
pniz = ihlq
aj = qsk
end
end
end

if not aj or pniz > 25 then
local hek = zszs()

if hek then
return hek
end
end

if not aj then
return nil
end

local zr = Vector3.new(aj.Position.X - bt.Position.X, 0, aj.Position.Z - bt.Position.Z)

if zr.Magnitude < 0.05 then
return Vector3.new(0, 0, -1)
end

return zr.Unit
end

local function iyq()
local cl = qzj.Character
local qfa = cl and cl:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not qfa then
return nil
end

local npqg = qfa.CFrame.LookVector
local wq = Vector3.new(npqg.X, 0, npqg.Z)

if wq.Magnitude < 0.05 then
return nil
end

return wq.Unit
end

local function eb()
local gd = qzj.Character
local vin = gd and gd:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not vin then
return false
end

local hba = jzy
local zj = RaycastParams.new()
zj.FilterType = Enum.RaycastFilterType.Exclude
zj.FilterDescendantsInstances = { gd }

local ohdh = workspace:Raycast(jzy + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), zj)

if ohdh and ohdh.Instance.Name ~= _d("ZBEFDB0") then
hba = Vector3.new(jzy.X, ohdh.Position.Y + 3, jzy.Z)
end

vin.CFrame = CFrame.new(hba)
task.wait(0.5)
oxo()

return true
end

local function pj()
local nm = qzj.Character
local dxq = nm and nm:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not dxq then
return false
end

local tiy = Vector3.new(jzy.X - dxq.Position.X, 0, jzy.Z - dxq.Position.Z)
local faug = tiy.Magnitude

if faug < 2 then
return false
end

local hq = tiy.Unit

if faug > 12 then
local vugy = math.min(14, faug - 6)
local oe = dxq.Position + hq * vugy
local ueg = RaycastParams.new()
ueg.FilterType = Enum.RaycastFilterType.Exclude
ueg.FilterDescendantsInstances = { nm }

local uhxs = workspace:Raycast(oe + Vector3.new(0, 25, 0), Vector3.new(0, -80, 0), ueg)

if uhxs and uhxs.Instance.Name ~= _d("ZBEFDB0") then
local tfpi = uhxs.Position.Y + 3.2

if math.abs(tfpi - dxq.Position.Y) <= 10 then
local yiq = Vector3.new(uhxs.Position.X, tfpi, uhxs.Position.Z)
dxq.CFrame = CFrame.lookAt(yiq, yiq + hq)

return true
end
end
end

dxq.CFrame = CFrame.lookAt(dxq.Position, dxq.Position + hq)

return true
end

local qogz = {}

qogz.surfaceWait = 8

qogz.walking = false
qogz.walkStartedAt = 0

qogz.islandHold = Vector3.new(-7384, 16.3, -40539)

qogz.custom = nil
qogz.customIsland = nil

qogz.islandAnchors = {
{ id = _d("UhIQBwsXAlYULgAcFA1dFA"), x = -3800 },
{ id = _d("RwcYBzAaCVITGQwc"), x = -6180 },
{ id = _d("RBkfDQIRAF8vGBoDHQ"), x = -7480 },
}

qogz.arrivals = {
abandoned_island = Vector3.new(-3825, 24, -40260),
twin_beaches = Vector3.new(-6180, 40, -40350),
windmill_isle = Vector3.new(-7480, 30, -40350),
lobby = Vector3.new(-499, 17, -40234),
}

function qogz.islandOf(co)
if not co then
return _d("Xx8TCxY")
end

if co.X > -4500 then
return _d("Xx8TCxY")
end

local jxrg, cv = _d("UhIQBwsXAlYULgAcFA1dFA"), math.huge

for aus, ozx in ipairs(qogz.islandAnchors) do
local wusi = math.abs(co.X - ozx.x)

if wusi < cv then
jxrg = ozx.id
cv = wusi
end
end

return jxrg
end

qogz.savedVersion = 2

do
local cdk = getgenv().ACBXDeepSpot

if type(cdk) == _d("RxETBQo") and cdk.v == qogz.savedVersion
and tonumber(cdk.X) and tonumber(cdk.Y) and tonumber(cdk.Z) then
qogz.custom = Vector3.new(tonumber(cdk.X), tonumber(cdk.Y), tonumber(cdk.Z))
qogz.customIsland = cdk.island
end
end

function qogz.spot()
return qogz.custom or qogz.islandHold
end

function qogz.dropStale()
if not qogz.custom then
return false
end

if qogz.zoneAt(qogz.custom) then
return false
end

qogz.custom = nil
qogz.customIsland = nil
getgenv().ACBXDeepSpot = nil

return true
end

function qogz.capture()
local bduq = qzj.Character
local ex = bduq and bduq:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not ex then
return false, _d("fR9RCgcZHlITBQwdWBhcUAMMDhxMUlACGQAMTFUCHgRB")
end

local ld = ex.Position
local kqn = qogz.floorAt(Vector3.new(ld.X, ld.Y + 10, ld.Z))

if not kqn then
return false, _d("YAQQBwtYA11QAgYDEQgTFwMGGhYIExYYGxwMTB5QBQEGC0xAAB4dTxANQFAfBk8eAFwfA0kbF0xQEQIdTx4eXB1f")
end

local mee = qogz.zoneAt(ld)

if not mee then
return false, _d("ZxgYGk8LHFwEUQAcWANGBAIACx1MVgYUGxZYCloDGQABH0xBGR8OT1VMQAQQBwtYA0UVA0kbEAkTBxAdCgpMVRkDGhtW")
end

qogz.custom = ld
qogz.customIsland = qogz.islandOf(ld)

getgenv().ACBXDeepSpot = {
X = ld.X,
Y = ld.Y,
Z = ld.Z,
island = qogz.customIsland,
v = qogz.savedVersion,
}

return true, _d("YBEHDAtYGFsZAkkcCANHUBAaTwwEVlAVDAoIQUQRBQwdWARcHBVJRw") .. tostring(mee.name) .. _d("Gl4")
end

function qogz.zoneTable()
local yb = {}

if yk and type(yk.Zones) == _d("RxETBQo") then
for qsw, jvr in ipairs(yk.Zones) do
yb[#yb + 1] = {
id = tostring(jvr.id),
name = tostring(jvr.name or jvr.id),
half = tonumber(jvr.half) or 0,
luck = tonumber(jvr.luck) or 0,
index = tonumber(jvr.index) or 0,
boatTier = tonumber(jvr.boatTier) or 0,
}
end
end

table.sort(yb, function(yqlm, jpas)
return yqlm.index < jpas.index
end)

return yb
end

function qogz.zoneAt(pnyn)
local xstv = yk and yk.ZoneCenter
local qch = qogz.zoneTable()

if not (xstv and pnyn and #qch > 0) then
return nil
end

local mem = math.max(math.abs(pnyn.X - xstv.X), math.abs(pnyn.Z - xstv.Z))

for fk, xa in ipairs(qch) do
if mem < xa.half then
return xa
end
end

return nil
end

function qogz.current()
local auk = qzj.Character
local vzr = auk and auk:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

return vzr and qogz.zoneAt(vzr.Position) or nil
end

function qogz.sync()
local rca = qogz.current()
hqy.zoneId = rca and rca.id or nil
end

function qogz.floorAt(cxt)
local phuy = qzj.Character
local ycmy = RaycastParams.new()
ycmy.FilterType = Enum.RaycastFilterType.Exclude
ycmy.FilterDescendantsInstances = { phuy }

local gn = workspace:Raycast(Vector3.new(cxt.X, cxt.Y + 20, cxt.Z), Vector3.new(0, -80, 0), ycmy)

if gn and gn.Instance.Name ~= _d("ZBEFDB0") then
return gn
end

return nil
end

function qogz.ensureSpotMap()
local cmg = qogz.spot()
local wwkk = Vector3.new(cmg.X, cmg.Y + 20, cmg.Z)

if qogz.floorAt(wwkk) then
return true
end

local la = workspace:FindFirstChild(_d("fhEBGg"))

if la and la:FindFirstChild(_d("cB8QGhsZAH8fEwsW")) then
if os.clock() - (qogz.hopAt or 0) > 1 then
qogz.hopAt = os.clock()
qogz.hop(cmg)
hqy.lastMessage = _d("fh8HAAEfTEcfUR0HHUxXFRQZQg8NRxUDSRwIA0c")
end

return false
end

if os.clock() - (qogz.islandAskedAt or 0) > 1.2 then
qogz.islandAskedAt = os.clock()

local ere = qogz.customIsland or qogz.islandOf(cmg)

if ere == _d("Xx8TCxY") then
pcall(function()
fyeb.TeleportToWorld:FireServer(_d("Xx8TCxY"))
end)
else
pcall(function()
fyeb.FishingIslandTeleport:FireServer(_d("RBEIGQARAkc"), ere)
end)
end

hqy.lastMessage = _d("ZxEaAAEfTEcYFEkIGQFWVwJJGx0AVgAeGxtYGFxQBQEKWAhWFQFEGBkYVgJRBA4I")
end

return false
end

function qogz.hop(jdgv)
local esmw = qzj.Character
local wfxm = esmw and esmw:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))
local ddgh = esmw and esmw:FindFirstChildOfClass(_d("ewUcCAEXBVc"))

if not (wfxm and ddgh) then
return false
end

if ddgh.SeatPart then
pcall(function()
ddgh.Sit = false
end)
end

wfxm.AssemblyLinearVelocity = Vector3.zero
wfxm.CFrame = CFrame.new(Vector3.new(jdgv.X, jdgv.Y + 8, jdgv.Z))

return true
end

function qogz.faceWater()
local tgvh = qzj.Character
local xyl = tgvh and tgvh:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not xyl then
return false
end

local dg = oulz()

if not dg then
local fxan = yk and yk.ZoneCenter

if fxan then
local ntrv = Vector3.new(fxan.X - xyl.Position.X, 0, fxan.Z - xyl.Position.Z)

dg = ntrv.Magnitude > 1 and ntrv.Unit or nil
end
end

if not dg then
return false
end

xyl.CFrame = CFrame.lookAt(xyl.Position, xyl.Position + dg)

return true
end

function qogz.aimWater(pw)
local tjyj = qzj.Character
local fmg = tjyj and tjyj:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not fmg then
return false
end

if pw then
oxo()
end

local qsda = fmg.CFrame.LookVector
local fqh = Vector3.new(qsda.X, 0, qsda.Z)
local lipp = oulz()

if not lipp then
return false
end

if fqh.Magnitude > 0.05 and fqh.Unit:Dot(lipp) > 0.985 then
return true
end

fmg.CFrame = CFrame.lookAt(fmg.Position, fmg.Position + lipp)

return true
end

function qogz.hold(wsel)
local mzu = qzj.Character
local vzem = mzu and mzu:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))
local tq = mzu and mzu:FindFirstChildOfClass(_d("ewUcCAEXBVc"))

if not (vzem and tq) then
return false
end

if tq.SeatPart then
pcall(function()
tq.Sit = false
end)
end

local elj = qogz.floorAt(wsel)

if not elj then
return false
end

vzem.AssemblyLinearVelocity = Vector3.zero
vzem.CFrame = CFrame.new(Vector3.new(wsel.X, elj.Position.Y + 3.2, wsel.Z))

pcall(qogz.aimWater, true)

hqy.phase = _d("WhQdDA")
hqy.nextCastAt = 0

return true
end

function qogz.dive()
local mrq = qogz.spot()

if not qogz.ensureSpotMap() then
return false
end

if not qogz.hold(mrq) then
return false
end

qogz.islandAskedAt = 0

local fiv = qogz.zoneAt(mrq)

hqy.lastMessage = fiv
and (_d("ex8dDQYWCxMEGQxPHAlWAFweDgwJQVACGQAMTBs") .. tostring(fiv.name) .. _d("Gg"))
or _d("ex8dDQYWCxMEGQxPHAlWAFweDgwJQVACGQAM")

task.wait(0.25)
qogz.sync()
hqy.deepDiveAt = os.clock() + 2

return true
end

function qogz.walk()
local ag = qzj.Character
local ats = ag and ag:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if qogz.walking and os.clock() - (qogz.walkStartedAt or 0) < 60 then
return false
end

if not ats then
return false
end

local ymzs = qogz.spot()

if (ats.Position - Vector3.new(ymzs.X, ats.Position.Y, ymzs.Z)).Magnitude <= 8 then
hqy.phase = _d("WhQdDA")
hqy.nextCastAt = 0

return true
end

qogz.walking = true
qogz.walkStartedAt = os.clock()
hqy.deepPhase = _d("RBEdAg")
hqy.deepStageAt = os.clock()
hqy.lastMessage = _d("ZBEdAgYWCxMEHkkbEAkTFBQMHx0fR1AGCBsdHhMDAQYb")

task.spawn(function()
local cjf = ag and ag:FindFirstChildOfClass(_d("ewUcCAEXBVc"))

local vi, sf = pcall(function()

local hpa = workspace:FindFirstChild(_d("fhEBGg"))
local blh = qogz.customIsland or qogz.islandOf(ymzs)
local bxa = (ats.Position - Vector3.new(ymzs.X, ats.Position.Y, ymzs.Z)).Magnitude

if bxa > 400 then
if not (hpa and hpa:FindFirstChild(_d("cB8QGhsZAH8fEwsW"))) then
pcall(function()
fyeb.TeleportToWorld:FireServer(_d("Xx8TCxY"))
end)

local zdu = os.clock() + 20

while hqy.deepWalk and os.clock() < zdu do
local yyt = workspace:FindFirstChild(_d("fhEBGg"))

if yyt and yyt:FindFirstChild(_d("cB8QGhsZAH8fEwsW")) then
break
end

task.wait(0.5)
end
end

if hqy.deepWalk then
local uldh = qogz.arrivals and qogz.arrivals[blh]

if uldh then
qogz.hop(uldh)
else
local pck = Vector3.new(ymzs.X - ats.Position.X, 0, ymzs.Z - ats.Position.Z)
local pox = pck.Magnitude > 1 and pck.Unit or Vector3.new(1, 0, 0)

qogz.hop(Vector3.new(ymzs.X - pox.X * 120, ymzs.Y, ymzs.Z - pox.Z * 120))
end

task.wait(1.5)
end
end

if hqy.deepWalk and cjf then

local nuy = (ats.Position - Vector3.new(ymzs.X, ats.Position.Y, ymzs.Z)).Magnitude
local fmar = os.clock() + math.clamp(nuy / 8, 30, 600)
local dhn = 0
local lut = ats.Position
local jsyf = os.clock()

while hqy.deepWalk and os.clock() < fmar do
local ns = Vector3.new(ymzs.X - ats.Position.X, 0, ymzs.Z - ats.Position.Z)

if ns.Magnitude <= 3 then
break
end

if os.clock() - dhn >= 0.25 then
cjf:MoveTo(Vector3.new(ymzs.X, ats.Position.Y, ymzs.Z))
dhn = os.clock()
end

if os.clock() - jsyf >= 1.2 then
if (ats.Position - lut).Magnitude < 2 then
cjf.Jump = true
end

lut = ats.Position
jsyf = os.clock()
end

task.wait(0.1)
end

cjf:MoveTo(ats.Position)
end
end)

qogz.walking = false

if not vi then
hqy.deepPhase = _d("WhQdDA")
hqy.deepStageAt = os.clock()
hqy.lastMessage = _d("ZBEdAk8MAxM0FAwfHR9HUCYIGx0eExYQAAMdCAlQ") .. tostring(sf)

return
end

if not hqy.deepWalk then
return
end

local dzu = Vector3.new(ats.Position.X - ymzs.X, 0, ats.Position.Z - ymzs.Z)

if dzu.Magnitude <= 6 then

pcall(qogz.aimWater, true)
hqy.phase = _d("WhQdDA")
hqy.nextCastAt = 0
hqy.deepPhase = _d("Wx8dDQ")
hqy.deepStageAt = os.clock()
qogz.sync()
hqy.lastMessage = _d("ZBEdAgocTEcfUR0HHUxAEQcMC1gIVhUBRBgZGFYCURofFxg")
else

hqy.deepPhase = _d("WhQdDA")
hqy.deepStageAt = os.clock()
hqy.lastMessage = _d("cB8EBQtYAlwEUR4OFAcTBB5JGxAJExQUDB8dH0dQBggbHR4TAwEGG1hBEwQDEAYWCxMRFggGFg")
end
end)

return false
end

function qogz.settle()
for ab = 1, 30 do
if not hqy.deepZone or hqy.deepWalk then
return false
end

if qogz.dive() then
return true
end

task.wait(1)
end

return false
end

function qogz.surface()
local fxv = qzj.Character
local prjv = fxv and fxv:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not prjv then
return false
end

local tjik = RaycastParams.new()
tjik.FilterType = Enum.RaycastFilterType.Exclude
tjik.FilterDescendantsInstances = { fxv }

local mrj = workspace:Raycast(jzy + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), tjik)
local cuxe = jzy

if mrj and mrj.Instance.Name ~= _d("ZBEFDB0") then
cuxe = Vector3.new(jzy.X, mrj.Position.Y + 3, jzy.Z)
end

prjv.CFrame = CFrame.new(cuxe)
hqy.phase = _d("WhQdDA")
hqy.nextCastAt = 0

return true
end

function hqy.gotoIsland()
local oo = qzj.Character
local gjzx = oo and oo:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))
local uokk = workspace:FindFirstChild(_d("egMdCAEcKloDGQwdFQ1dPiEq"), true)

if not (gjzx and uokk) then
return false
end

local bm = uokk:GetPivot()
local wk = RaycastParams.new()
wk.FilterType = Enum.RaycastFilterType.Exclude
wk.FilterDescendantsInstances = { oo, uokk }

local rs = nil
local hgpo = -math.huge

for nwk, hze in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local ygp = workspace:Raycast(bm.Position + hze + Vector3.new(0, 30, 0), Vector3.new(0, -120, 0), wk)

if ygp and ygp.Position.Y > hgpo then
rs = ygp
hgpo = ygp.Position.Y
end
end

if rs then
gjzx.CFrame = CFrame.new(Vector3.new(rs.Position.X, hgpo + 3.5, rs.Position.Z))
else
gjzx.CFrame = CFrame.new(bm.Position + Vector3.new(0, 4, 0))
end

hqy.phase = _d("WhQdDA")
hqy.nextCastAt = 0

return true
end

function qogz.cycle()
local chj = os.clock()
local hpqc = hqy.deepPhase or _d("WhQdDA")
local uck = tonumber(hqy.deepStageAt) or 0

if chj < math.max(hqy.shopTripUntil or 0, hqy.tpHoldUntil or 0) then
return
end

if hpqc == _d("WhQdDA") then
hqy.deepPhase = _d("Wx8dDQ")
hqy.deepStageAt = chj

if hqy.deepWalk then
qogz.walk()
else
qogz.dive()
end

return
end

if hpqc == _d("RBEdAg") then
return
end

if hpqc == _d("Wx8dDQ") then
local gi = qogz.current()

local lz = qogz.zoneAt(qogz.spot())

if gi and not qzj:GetAttribute(_d("YAcYBAIRAlQ")) and chj - (hqy.deepAimAt or 0) > 2 then
hqy.deepAimAt = chj
pcall(qogz.aimWater)
end

if qzj:GetAttribute(_d("YAcYBAIRAlQ")) then
if hqy.deepWalk then

hqy.deepPhase = _d("WhQdDA")
hqy.deepStageAt = chj
else
hqy.deepPhase = _d("VxkB")
hqy.deepStageAt = chj
hqy.lastMessage = _d("YAcYBAIRAlRQEB1PDARWUBUMCghMQAAeHU9VTEAFAw8OGwlXUBcGHVgNWgI")
end
elseif not gi or (lz and gi.index < lz.index) then

hqy.deepPhase = _d("WhQdDA")
hqy.deepStageAt = chj
end

return
end

if hpqc == _d("VxkB") then
qogz.surface()
hqy.deepPhase = _d("QAUDDw4bCQ")
hqy.deepStageAt = chj

return
end

if hpqc == _d("QAUDDw4bCQ") and chj - uck >= qogz.surfaceWait then
hqy.deepPhase = _d("WhQdDA")
end
end

local function rlwg()
local yc = qzj.Character
local hxo = yc and yc:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not hxo then
return false
end

return (hxo.Position - jzy).Magnitude <= 12
end

local function tuml()
if not gl() then
return false
end

local xr = pcall(function()
fyeb.FishingSetAuto:FireServer(true)
end)

hqy.usingGameAuto = xr
return xr
end

local function mvys()
hqy.usingGameAuto = false

pcall(function()
fyeb.FishingSetAuto:FireServer(false)
end)

pcall(function()
fyeb.FishingStop:FireServer()
end)
end

function hqy.recover()
hqy.phase = _d("WhQdDA")
hqy.nextCastAt = 0
hqy.deepPhase = _d("WhQdDA")
hqy.deepStageAt = 0
hqy.deepDiveAt = 0
hqy.waterRefusals = 0
hqy.usingGameAuto = false
hqy.castMark = hqy.totalCasts
hqy.castMarkAt = os.clock()

pcall(mvys)
pcall(gl)

if hqy.deepZone and not qogz.current() then

pcall(function()
fyeb.TeleportToWorld:FireServer(_d("Xx8TCxY"))
end)
elseif hqy.tpToBay and not rlwg() then
pcall(eb)
end

hqy.lastMessage = _d("dRkCAQYWCxMDBQgDFAlXUFxJHR0fVgRRHQcdTEQRBQwdWA1dFFEdABcHEwQZDE8fDV4VVhpPFANREghJHRcb")
end

local function ywcj()
if not gl() then
hqy.lastMessage = _d("fR9RDwYLBFoeFkkdFwgTGR9JGxAJExIQCgQIDVAb")
return false
end

local rjt = iyq()
local ec = oulz()
local cpx = rjt or ec

if not cpx then
hqy.lastMessage = _d("fR9RHg4MCUFQFwYaFggTHhQIHRoV")
return false
end

if rjt and ec and rjt:Dot(ec) < 0.25 then
cpx = ec
end

hqy.phase = _d("UBECHQYWCw")
hqy.lastMessage = nil
hqy.watchdogAt = os.clock() + 25

local ojmz, jdj = pcall(function()
fyeb.FishingThrow:FireServer(1, cpx)
end)

if not ojmz then
hqy.phase = _d("WhQdDA")
hqy.lastMessage = tostring(jdj)
hqy.nextCastAt = os.clock() + 3
return false
end

return true
end

local xhgd = vhzs(fyeb.FishingUpdate.OnClientEvent, function(nj, ndpg)
hqy.dirty = true

if nj == _d("YAQQHQo") then
if type(ndpg) == _d("RxETBQo") then
hqy.autoOn = ndpg.autoOn == true
end

return
end

if nj == _d("cBECHQ") then
hqy.phase = _d("RBEYHQYWC3EZBQw")
hqy.waterRefusals = 0
return
end

if nj == _d("cRkFDA") then
local wo = type(ndpg) == _d("RxETBQo") and tonumber(ndpg.warning) or 1

hqy.phase = _d("QRUUBQYWCw")
hqy.watchdogAt = os.clock() + 15

task.delay(math.max(0.3, wo + 0.8), function()
if hqy.phase ~= _d("QRUUBQYWCw") then
return
end

pcall(function()
fyeb.FishingReel:FireServer(true, 120)
end)

hqy.phase = _d("QRUCBgMOBV0X")
end)

return
end

if nj == _d("cBEFCgc") then

local wjhv = type(ndpg) == _d("RxETBQo") and tonumber(ndpg.totalCasts) or nil
local kzc = tonumber(getgenv().ACBXFishingCatchMark) or 0

if wjhv and wjhv <= kzc and kzc - wjhv < 25 then
return
end

if wjhv then
getgenv().ACBXFishingCatchMark = wjhv
end

local bhqt = type(ndpg) == _d("RxETBQo") and tostring(ndpg.itemId) or _d("Rh4aBwAPAg")
local gty = hqy.catchName(bhqt)

hqy.catches[bhqt] = (hqy.catches[bhqt] or 0) + 1
hqy.totalCatches = (hqy.totalCatches or 0) + 1

local kca = type(ndpg) == _d("RxETBQo") and ndpg.chest or nil

if type(kca) == _d("RxETBQo") and kca.itemId then
local hsyo = tostring(kca.itemId)

hqy.catches[hsyo] = (hqy.catches[hsyo] or 0) + 1
end

if os.clock() - (tpvg.at or 0) >= 5 then
tpvg.at = os.clock()
tpvg.save()
end
hqy.lastCatch = gty
hqy.lastMessage = nil
hqy.phase = _d("WhQdDA")
hqy.nextCastAt = os.clock() + 2.5

if type(ndpg) == _d("RxETBQo") then
hqy.casts = tonumber(ndpg.casts) or hqy.casts
hqy.totalCasts = tonumber(ndpg.totalCasts) or hqy.totalCasts
hqy.autoUnlocked = ndpg.autoUnlocked == true or hqy.autoUnlocked
end

return
end

if nj == _d("cgUFBiAeCg") then

hqy.usingGameAuto = false
hqy.phase = _d("WhQdDA")
hqy.nextCastAt = os.clock() + 1
return
end

if nj == _d("dgMSCB8dCA") then
hqy.phase = _d("WhQdDA")
hqy.lastMessage = _d("ZxgUSQkRH1tQFgYbWA1EEQg")
hqy.nextCastAt = os.clock() + 2.5
return
end

if nj == _d("YRUbDAwMCVc") then
hqy.phase = _d("WhQdDA")

local hqi = type(ndpg) == _d("RxETBQo") and tostring(ndpg.message) or _d("cBECHU8KCVkVEh0KHA")
hqy.lastMessage = hqi

if hqi:lower():find(_d("RBEFDB0"), 1, true) then
hqy.waterRefusals = (hqy.waterRefusals or 0) + 1

if hqy.waterRefusals >= 2 then
hqy.waterRefusals = 0

if pj() then
hqy.lastMessage = _d("YRUXHBwdCBMEBgAMHUweUAUcHRYJV1ATCAwTTEcfBggdHExHGBRJGBkYVgI")
hqy.nextCastAt = os.clock() + 1.5
return
end
end

hqy.nextCastAt = os.clock() + 8
return
end

hqy.waterRefusals = 0
hqy.nextCastAt = os.clock() + 3
return
end
end)

local function bb()
if not hqy.loaded then
return _d("YRUQDQYWCxMWGBoHEQJUUAIdDgwJHV5f")
end

local ttgp = hqy.autoUnlocked == true
or (hqy.totalCasts or 0) > 0
or (hqy.tutorialStep or 0) > 0
local be = yk and yk.RodsById and yk.RodsById[hqy.rod]
local qgjy = be and tostring(be.name) or tostring(hqy.rod)
local xyu = math.floor((tonumber(hqy.luck) or 0) * 100 + 0.5)

local xetn = {
_d("YR8VU08") .. qgjy,
_d("fwUSAlVY") .. xyu .. _d("Fg"),
}

local cni = qogz.current()

if cni then
table.insert(xetn, _d("aR8fDFVY") .. cni.name .. _d("E1ha") .. tostring(math.floor(cni.luck * 100 + 0.5)) .. _d("FlAdHAwTRQ"))
end

table.insert(xetn, _d(""))
table.insert(xetn, _d("cBECHRxYGFxQAhkKFggJUA") .. bvez(hqy.casts or 0))
table.insert(xetn, _d("Zx8FCANYD1IDBRpVWA") .. bvez(hqy.totalCasts or 0))

table.insert(xetn, _d(""))
table.insert(xetn, _d("dRkCAQYWCxMFHwUAGwdWFEtJ") .. (ttgp and _d("ShUC") or _d("XR8")))
table.insert(xetn, _d("cgUFBkIeBUAYURwfHx5SFBRTTw") .. (hqy.autoUnlocked and _d("XAcfDAs") or _d("XR8FSQAPAlYU")))

if hqy.enabled then
local zev = hqy.usingGameAuto and _d("VBEcDE8ZGUcf") or tostring(hqy.phase)

if zev == _d("RBEYHQYWC3EZBQw") then
zev = _d("RBEYHQYWCxMWHhtPGUxRGQUM")
elseif zev == _d("QRUUBQYWCw") then
zev = _d("QRUUBQYWCxMZHw")
elseif zev == _d("QRUCBgMOBV0X") then
zev = _d("XxEfDQYWCxMZBQ")
end

table.insert(xetn, _d(""))
table.insert(xetn, _d("cgUFBk8+BUAYS0k") .. zev)

local ogty = nr.worldBoss

if ogty and type(ogty.hasWork) == _d("VQUfChsRA10") and ogty.enabled and ogty.hasWork() then
table.insert(xetn, _d("ex8dDQYWCwlQFgUAGg1fUBMGHAtMWgNRHB9YREEVAhwCHR8THx9JBgwfExMeBgMcA0QeWA"))
end

if hqy.lastCatch then
table.insert(xetn, _d("fxECHU8bDUcTGVNP") .. hqy.lastCatch)
end
end

if hqy.lastMessage then
table.insert(xetn, _d(""))
table.insert(xetn, _d("fR8FDFVY") .. hqy.lastMessage)
end

return table.concat(xetn, _d("OQ"))
end

local function dfwe()
local nkr = 0

for dyee, es in pairs(hqy.catches) do
local lrz = woa.ById[dyee]

if not (lrz and lrz.type == _d("UBgUGhs")) then
nkr = nkr + es
end
end

return nkr
end

local function xwd()
local yzrw = {}

for kpfd, vxs in pairs(hqy.catches) do
local epde = woa.ById[kpfd]
local ynr = epde and epde.type == _d("UBgUGhs") or false

table.insert(yzrw, {
name = hqy.catchName(kpfd),
count = vxs,
chest = ynr,
rank = ynr and (tonumber(epde.border) or 1) or 0,
})
end

if #yzrw == 0 then
return _d("fR8FAQYWCxMTEBwIEBgTCRQdQXJmZwUDB08XAhMxBB0AWCpaAxlJDhYIEwQZDE8MDV8cCEkcDA1BBAJJBx0eVl5RIBtYH1IGFBpPERhAFR0PQ1gfXFAYHU8bDUECGAwcWANFFQNJAR0UR1ACDBwLBVweXw")
end

table.sort(yzrw, function(zh, xjg)
if zh.chest ~= xjg.chest then
return zh.chest
end

if zh.chest and zh.rank ~= xjg.rank then
return zh.rank > xjg.rank
end

if zh.count ~= xjg.count then
return zh.count > xjg.count
end

return zh.name < xjg.name
end)

local jphp = {}

for enni, lec in ipairs(yzrw) do
table.insert(jphp, lec.name .. _d("E5Lx/U8") .. bvez(lec.count))
end

local kxs = {
table.concat(jphp, _d("OXo")),
_d(""),
_d("Zx8FCANYD1IFFgEbQkw") .. bvez(dfwe()) .. _d("E7LGSQ") .. #yzrw .. _d("ExsYBwsL"),
}

if hqy.lastCatch then
table.insert(kxs, _d("fxECHU8bDUcTGVNP") .. tostring(hqy.lastCatch))
end

return table.concat(kxs, _d("OQ"))
end

local fwic = {
rod = Vector3.new(-493, 18, -40254),
bait = Vector3.new(-493, 18, -40254),
}

local function lbn(dk)
if not yk then
return {}
end

local nwt

if dk == _d("QR8V") then
nwt = yk.RodsById
elseif dk == _d("UREYHQ") then
nwt = yk.BaitsById
else
nwt = nil
end

local lgwm = {}

for qpe, cw in pairs(nwt or {}) do
if not cw.crafted then
table.insert(lgwm, {
id = tostring(qpe),
name = tostring(cw.name or qpe),
cost = tonumber(cw.cost) or 0,
luck = tonumber(cw.luck) or 0,
index = tonumber(cw.index) or 0,
island = cw.shop == _d("WgMdCAEc"),
})
end
end

table.sort(lgwm, function(da, rpp)
if da.index ~= rpp.index then
return da.index < rpp.index
end

return da.cost < rpp.cost
end)

return lgwm
end

local function wuzq(nsy)
if nsy == _d("QR8V") then
return hqy.rodsOwned or {}
elseif nsy == _d("UREYHQ") then
return hqy.baitsOwned or {}
end

return {}
end

local function mnho(rf)
if rf == _d("QR8V") then
return hqy.rod
elseif rf == _d("UREYHQ") then
return hqy.equippedBait
end

return nil
end

local function ddmm(kvu)
local ox = wuzq(kvu)
local rlv = nil

for eox, twaf in ipairs(lbn(kvu)) do
if ox[twaf.id] == true then
rlv = twaf
end
end

if kvu == _d("QR8V") and yk and yk.RodsById then
local wu = yk.RodsById.rod_secret

if wu and ox.rod_secret == true then
rlv = {
id = _d("QR8VNhwdD0EVBQ"),
name = tostring(wu.name or _d("dggSCAMRDkYC")),
cost = tonumber(wu.cost) or 0,
luck = tonumber(wu.luck) or 0,
index = tonumber(wu.index) or 0,
island = true,
}
end
end

return rlv
end

local function wj(ys)
if ys.island and hqy.islandLocked then
return false
end

return true
end

local function jij(phb)
local qj = wuzq(phb)
local ig = hqy.casts or 0
local pjru = nil

for nuzy, wcau in ipairs(lbn(phb)) do
if qj[wcau.id] ~= true and wcau.cost <= ig and wj(wcau) then
pjru = wcau
end
end

return pjru
end

local function iid(ayl)
local rbwt = wuzq(ayl)

for howu, ysaz in ipairs(lbn(ayl)) do
if rbwt[ysaz.id] ~= true and wj(ysaz) then
return ysaz
end
end

return nil
end

local function fhmm(abl, ws)
if not ws then
return _d("XR8fDE8XG10VFQ")
end

return ws.name .. _d("E1ha") .. tostring(math.floor(ws.luck * 100 + 0.5)) .. _d("FlAdHAwTRQ")
end

local function zv()
if not yk then
return _d("dRkCAQYWC3cRBQhPFgNHUBcGGhYIE11RGgcXHBMUEB0OWBldEQcIBhQNURwURw")
end

local pvtl = {}
local qq = { rod = _d("YR8V"), bait = _d("cREYHQ") }

for wry, rw in ipairs({ _d("QR8V"), _d("UREYHQ") }) do
local nep = ddmm(rw)
local ivkn = nil

for dv, avbr in ipairs(lbn(rw)) do
if avbr.id == mnho(rw) then
ivkn = avbr.name
end
end

if #pvtl > 0 then
table.insert(pvtl, _d(""))
end

table.insert(pvtl, qq[rw] .. _d("CVA") .. fhmm(rw, nep))
table.insert(pvtl, _d("fB5RBwAPVhM") .. (ivkn or _d("XR8fDA")))

local labq = jij(rw) or iid(rw)

if labq then
local zxu = labq.cost - (hqy.casts or 0)

table.insert(pvtl, _d("fRUJHVVY") .. labq.name .. _d("E7LGSQ") .. bvez(labq.cost) .. _d("ExMQGhsL"))

if zxu > 0 then
table.insert(pvtl, _d("fRUUDU8") .. bvez(zxu) .. _d("Ex0eGwo"))
end
else
table.insert(pvtl, _d("fRUJHVVYCUUVAxAbEAVdF1EGGBYJVw"))
end
end

table.insert(pvtl, _d(""))
table.insert(pvtl, _d("cBECHRxYGFxQAhkKFggJUA") .. bvez(hqy.casts or 0))

if hqy.shopMessage then
table.insert(pvtl, _d(""))
table.insert(pvtl, hqy.shopMessage)
end

return table.concat(pvtl, _d("OQ"))
end

local function ixp(uq, bfxo)
local ite = os.clock()

if ite < (hqy.shopCallAt or 0) then
return false, _d("QBweHg")
end

hqy.shopCallAt = ite + 1.4

local edze, ix, yyye, gg = pcall(function()
return fyeb.FishingShop:InvokeServer(uq, bfxo)
end)

if not edze then
return false, _d("VgIDBh1Y") .. tostring(ix)
end

hsm(gg)

if ix == true then
return true, nil
end

return false, tostring(yyye or _d("QRUXHBwdCA"))
end

function hqy.rebirthCardsHeld()
local xgr = yk and type(yk.RebirthCards) == _d("RxETBQo") and #yk.RebirthCards or 0

if xgr == 0 then
return 0, 0
end

local adh = 0

for paf, nys in ipairs(yk.RebirthCards) do
if hqy.rebirthCards[nys.cardId] then
adh = adh + 1
end
end

return adh, xgr
end

function hqy.rebirthReady()
local oyu, fknp = hqy.rebirthCardsHeld()

return fknp > 0 and oyu >= fknp and (tonumber(hqy.rebirths) or 0) < 1
end

function hqy.rebirthText()
local fzly, jex = hqy.rebirthCardsHeld()

if jex == 0 then
return _d("dRkCAQYWCxMUEB0OWAJcBFEFABkIVhRdSRwXTEEVEwAdDAQTGQJJGhYNRREYBQ4aAFZe")
end

if (tonumber(hqy.rebirths) or 0) >= 1 then
return _d("YRUTAB0MBFYUX0k7EAkTMRMIARwDXRUVSSYLAFIeFUkGC0xcABQHQQ")
end

if fzly >= jex then
return _d("chwdSQ") .. jex .. _d("ExMQGwsLTFUZAgEKHEITIhQICwFMRx9RGwoaBUEEGUc")
end

local yljp = {}

for zb, glb in ipairs(yk.RebirthCards) do
if not hqy.rebirthCards[glb.cardId] then
table.insert(yljp, (string.gsub(glb.cardId, _d("bRYYGgcn"), _d(""))))
end
end

return fzly .. _d("HA") .. jex .. _d("ExMQGwsLQhMjBQADFExdFRQNTw") .. table.concat(yljp, _d("H1A")) .. _d("HQ")
end

local function vbbs(krkw)
local raj = qzj.Character
local okdc = raj and raj:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not okdc then
return false
end

return (okdc.Position - (fwic[krkw] or fwic.rod)).Magnitude <= 26
end

local function tu(uxm, flcr)

if flcr and flcr.island then
if not hqy.shopIsland or not hqy.shopIsland.toIsland() then
hqy.shopMessage = _d("cB8EBQtYAlwEURsKGQ9bUAUBClgFQBwQBwtYD1wFHx0KCg")

return false
end

return true
end

if vbbs(uxm) then
return true
end

local hkod = qzj.Character
local nnvu = hkod and hkod:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not nnvu then
return false
end

local gudl = fwic[uxm] or fwic.rod
hqy.shopTripUntil = os.clock() + 12
hqy.shopHoldUntil = os.clock() + 12

pcall(function()
nnvu.CFrame = CFrame.new(gudl)
end)

task.wait(1.2)

return vbbs(uxm)
end

local function jq(lbbb, xl, vmsg)
if not vmsg then
return false
end

if (hqy.casts or 0) < vmsg.cost then
return false
end

if not tu(lbbb, vmsg) then
hqy.shopMessage = _d("cB8EBQtYAlwEURsKGQ9bUAUBClgfWx8BSQkXHhM") .. vmsg.name
return false
end

local nvg, gjf = ixp(xl, vmsg.id)

if not nvg then
local nv = tostring(gjf)
local rcom = nv:find(_d("ZxEdAk8MAxMEGQxPPgVAGBQbAhkC"), 1, true) or nv:find(_d("cR8QHU88CVIcFBs"), 1, true)

if rcom then

hqy.shopMessage = _d("ZBEdAgYWCxMFAUkbF0xHGBRJDBcZXQQUG08eA0FQ") .. vmsg.name
return false
end

if gjf ~= _d("QBweHg") then
hqy.shopAt = os.clock() + 15
hqy.shopMessage = _d("YBUDHwoKTEEVFxwcHQgT") .. vmsg.name .. _d("E1g") .. nv .. _d("Gg")
end

return false
end

hqy.shopMessage = _d("cR8EDgcMTA") .. vmsg.name

return true
end

local function zpl(ujt)
local oaq = ddmm(ujt)

if not oaq or mnho(ujt) == oaq.id then
return false
end

local gu

if ujt == _d("QR8V") then
gu = _d("dgEEAB8qA1c")
elseif ujt == _d("UREYHQ") then
gu = _d("dgEEAB86DVoE")
else
return false
end

local cafd, gxma = ixp(gu, oaq.id)

if not cafd then
if gxma ~= _d("QBweHg") then
hqy.shopMessage = _d("cB8EBQtYAlwEUQweDQVDUA") .. oaq.name .. _d("E1g") .. tostring(gxma) .. _d("Gg")
end

return false
end

if ujt == _d("QR8V") then
hqy.rod = oaq.id
elseif ujt == _d("UREYHQ") then
hqy.equippedBait = oaq.id
else
return false
end

hqy.shopMessage = _d("dgEEAB8ICVdQ") .. oaq.name

return true
end

local function im()
local bu = hqy.shop

if os.time() - (hqy.lastSync or 0) >= 5 then
fzv()
end

if bu.equipRod then
zpl(_d("QR8V"))
end

if bu.equipBait then
zpl(_d("UREYHQ"))
end

if bu.autoBuyRod then
jq(_d("QR8V"), _d("cQUIOwAc"), jij(_d("QR8V")))
end

if bu.autoBuyBait then
jq(_d("UREYHQ"), _d("cQUIKw4RGA"), jij(_d("UREYHQ")))
end
end

local function jmtc()
local vz = hqy.shop

return vz.autoBuyRod or vz.autoBuyBait or vz.equipRod or vz.equipBait
end

hqy.shopIsland = {
rods = function()
local zgn = yk and yk.RodsById or {}
local rlgk = {}

for hxs, vks in pairs(zgn) do
if tostring(vks.shop) == _d("WgMdCAEc") then
table.insert(rlgk, {
id = tostring(hxs),
name = tostring(vks.name or hxs),
cost = tonumber(vks.cost) or 0,
luck = tonumber(vks.luck) or 0,
index = tonumber(vks.index) or 0,
crafted = vks.crafted == true,
})
end
end

table.sort(rlgk, function(psy, kfv)
return psy.index < kfv.index
end)

return rlgk
end,

angler = function()
local ybeu = workspace:FindFirstChild(_d("fSAyGg"), true)

if not ybeu then
return nil
end

for el, wcrw in ipairs(ybeu:GetChildren()) do
if wcrw:GetAttribute(_d("YBUSGwoMLV0XHQwdNjxw")) then
return wcrw
end
end

return nil
end,
held = function(tp)
return (hqy.rodsOwned or {})[tp] == true
end,
recipeHeld = function(zl)
for yf, mbn in ipairs(zl or {}) do
local dkbk = tonumber((hqy.mats or {})[mbn.id]) or 0

if dkbk < (tonumber(mbn.count) or 0) then
return false
end
end

return true
end,
recipeText = function(xim)
local okwe = {}

for nw, cxlz in ipairs(xim or {}) do
local ot = tonumber((hqy.mats or {})[cxlz.id]) or 0
local uhgm = (woa.ById[cxlz.id] and woa.ById[cxlz.id].name) or tostring(cxlz.id)

table.insert(okwe, uhgm .. _d("Ew") .. bvez(ot) .. _d("HA") .. bvez(tonumber(cxlz.count) or 0))
end

return table.concat(okwe, _d("E7LGSQ"))
end,

stand = function(by)
local cvo = qzj.Character
local gz = cvo and cvo:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not (gz and by) then
return false
end

local hjk = by:GetPivot()
local xno = by:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA")) or by:FindFirstChildWhichIsA(_d("cRECDD8ZHkc"), true)
local fcb = xno and (xno.CFrame * CFrame.new(0, 0, -5)).Position or nil

if not fcb then
local jmx = RaycastParams.new()
jmx.FilterType = Enum.RaycastFilterType.Exclude
jmx.FilterDescendantsInstances = { cvo, by }

local rjw = nil
local hck = math.huge

for lnf, wjvt in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local cp = workspace:Raycast(hjk.Position + wjvt + Vector3.new(0, 30, 0), Vector3.new(0, -140, 0), jmx)

if cp and tostring(cp.Instance.Name) ~= _d("ZBEFDB0") and cp.Position.Y <= hjk.Position.Y + 10 then
local qkt = math.abs(cp.Position.Y - hjk.Position.Y)

if qkt < hck then
rjw = cp
hck = qkt
end
end
end

fcb = rjw and Vector3.new(rjw.Position.X, rjw.Position.Y + 3.5, rjw.Position.Z) or (hjk.Position + Vector3.new(0, 4, 0))
end

hqy.shopTripUntil = os.clock() + 12

hqy.islandTripUntil = os.clock() + 12

pcall(function()
gz.CFrame = CFrame.new(fcb)
end)

task.wait(1.2)

return true
end,
atIsland = function()
local ca = workspace:FindFirstChild(_d("egMdCAEcKloDGQwdFQ1dPiEq"), true)
local mu = qzj.Character
local ug = mu and mu:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not (ca and ug) then
return false
end

return (ug.Position - ca:GetPivot().Position).Magnitude <= 45
end,
toIsland = function()
if hqy.shopIsland.atIsland() then
return true
end

hqy.shopTripUntil = os.clock() + 12

if not hqy.gotoIsland() then
return false
end

task.wait(1.2)

return hqy.shopIsland.atIsland()
end,

craftExcalibur = function()
local zqz = hqy.shopIsland.angler()

if not zqz or hqy.shopIsland.held(_d("QR8VNhwdD0EVBQ")) then
return false
end

if not hqy.shopIsland.recipeHeld(yk and yk.SecretRecipe) then
return false
end

hqy.shopIsland.stand(zqz)

local wmko, ipsp = ixp(_d("cAIQDxsqA1c"), _d("QR8VNhwdD0EVBQ"))

if wmko then
hqy.rod = _d("QR8VNhwdD0EVBQ")
hqy.islandMessage = _d("cAIQDxsdCBMEGQxPPRRQER0ADQ0eEwIeDU8ZGBMEGQxPMAVXFBQHTzkCVBwUGw")
elseif ipsp ~= _d("QBweHg") then
hqy.islandMessage = _d("exkVDQoWTHIeFgUKCkxBFRccHB0IEwQZDE89FFARHQANDR4TWA") .. tostring(ipsp) .. _d("Gg")
end

return wmko
end,
craftBoot = function()
if hqy.boot.owned or hqy.islandLocked then
return false
end

if not hqy.shopIsland.recipeHeld(yk and yk.BootRecipe) then
return false
end

if not hqy.shopIsland.toIsland() then
hqy.islandMessage = _d("cB8EBQtYAlwEURsKGQ9bUAUBClgFQBwQBwtYD1wFHx0KCg")
return false
end

local qbb, egbn = ixp(_d("cAIQDxs6A1wE"))

if qbb then
hqy.boot.owned = true
hqy.islandMessage = _d("cAIQDxsdCBMEGQxPNAlUFR8NDgoVEzIeBhs")
elseif egbn ~= _d("QBweHg") then
hqy.islandMessage = _d("egMdCAEcTHUZAgEKCgFSHlEbCh4ZQBUVSRsQCRMSHgYbWEQ") .. tostring(egbn) .. _d("Gg")
end

return qbb
end,
best = function()
local rbkg = hqy.rodsOwned or {}
local mbk = nil

for jta, jo in ipairs(hqy.shopIsland.rods()) do
if rbkg[jo.id] == true and (mbk == nil or jo.luck > mbk.luck) then
mbk = jo
end
end

return mbk
end,

equipBoot = function()
if not hqy.boot.owned or hqy.boot.equipped then
return false
end

local ue, hngz = ixp(_d("dgEEAB86A1wE"), true)

if ue then
hqy.boot.equipped = true
hqy.islandMessage = _d("dgEEAB8ICVdQBQEKWCBWFxQHCxkeSlAzBgAM")
elseif hngz ~= _d("QBweHg") then
hqy.islandMessage = _d("cB8EBQtYAlwEUQweDQVDUAUBClgOXB8FSUc") .. tostring(hngz) .. _d("Gg")
end

return ue
end,
active = function()
local wzu = hqy.island

return wzu.autoRod or wzu.autoAcc or wzu.equipAcc
end,
run = function()
local mgp = hqy.island

if os.time() - (hqy.lastSync or 0) >= 8 then
fzv()
end

if mgp.autoRod then
hqy.shopIsland.craftExcalibur()
end

if mgp.autoAcc then
hqy.shopIsland.craftBoot()
end

if mgp.equipAcc then
hqy.shopIsland.equipBoot()
end
end,
text = function()
if not yk then
return _d("dRkCAQYWC3cRBQhPFgNHUBcGGhYIE11RHQcdTFoDHQgBHExAGB4ZTxEfEwUfCBkZBV8REwUKVg")
end

local ifef = {}
local ppjd = hqy.rodsOwned or {}

table.insert(ifef, hqy.islandLocked and _d("chIQBwsXAlYUUSAcFA1dFFEAHFgAXBMaDAtYQRMCFAsGChhbUBcAHQsYHQ") or _d("chIQBwsXAlYUUSAcFA1dFFEAHFgDQxUfRw"))

for dxiu, gew in ipairs(hqy.shopIsland.rods()) do
local plvo

if ppjd[gew.id] == true then
plvo = hqy.rod == gew.id and _d("XAcfDAtYroRQHgdPFgNE") or _d("XAcfDAs")
elseif gew.crafted then
plvo = _d("exkVDQoWTHIeFgUKCkxBFRIAHx0")
else
plvo = bvez(gew.cost) .. _d("ExMQGhsL")
end

table.insert(ifef, gew.name .. _d("E5Lx/U8") .. plvo)
end

table.insert(ifef, _d(""))

if ppjd.rod_secret then
table.insert(ifef, _d("dggSCAMRDkYCS0kADwJWFA"))
else
local mr = hqy.shopIsland.recipeHeld(yk.SecretRecipe)

table.insert(ifef, _d("dggSCAMRDkYCS0k") .. (mr and _d("QRUSAB8dTEEVEA0W") or _d("QRUSAB8dTEAYHhsb")))
table.insert(ifef, hqy.shopIsland.recipeText(yk.SecretRecipe))
end

table.insert(ifef, _d("exkVDQoWTHIeFgUKClYT") .. (hqy.shopIsland.angler() and _d("RgBRBwAP") or _d("XR8FSQcdHlY")))
table.insert(ifef, _d(""))

local rjrz = hqy.boot
local bn

if rjrz.equipped then
bn = _d("fxUWDAEcDUEJUSsAFxgJUBQYGhEcQxUV")
elseif rjrz.owned then
bn = _d("fxUWDAEcDUEJUSsAFxgJUB4eAR0I")
elseif hqy.shopIsland.recipeHeld(yk.BootRecipe) then
bn = _d("fxUWDAEcDUEJUSsAFxgJUAMMDBEcVlADDA4cFQ")
else
bn = _d("fxUWDAEcDUEJUSsAFxgJUA") .. hqy.shopIsland.recipeText(yk.BootRecipe)
end

table.insert(ifef, bn)
table.insert(ifef, _d("cBECHRxYGFxQAhkKFggJUA") .. bvez(hqy.casts or 0))

if hqy.islandMessage then
table.insert(ifef, _d(""))
table.insert(ifef, hqy.islandMessage)
end

return table.concat(ifef, _d("OQ"))
end,
}

task.spawn(function()
fzv()
end)

local ntv = {
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

getgenv().ACBXAutoBuyHalloween = ntv

vhzs(fyeb.SyncItems.OnClientEvent, function(uj)
if type(uj) == _d("RxETBQo") then
ntv.balances = uj
ntv.lastSync = os.time()
end
end)

fyeb.RequestItemSync:FireServer()

vhzs(fyeb.RaidShopState.OnClientEvent, function(ker)
if type(ker) == _d("RxETBQo") and ker.shopId == _d("WxEdBQAPCVYe") then
ntv.shopState = ker
ntv.stateAt = os.clock()
end
end)

vhzs(fyeb.RaidNotify.OnClientEvent, function(kg)
local ta = ntv.pending

if not ta or type(kg) ~= _d("QAQDAAEf") then
return
end

if kg:sub(1, 9) == _d("YyUjKic5P3Y0") then
ntv.purchased[ta.id] = (ntv.purchased[ta.id] or 0) + 1
ntv.pending = nil
else
if ntv.balances[ta.currency] then
ntv.balances[ta.currency] = ntv.balances[ta.currency] + ta.price
end

ntv.failedUntil[ta.id] = os.time() + 5
ntv.pending = nil
end
end)

xoi.trip = {
untilAt = 0,
lastTry = 0,
lastResult = nil,
spot = nil,
}

function xoi.merchant()
local yi = workspace:FindFirstChild(_d("fSAyGg"))
local sr = xoi.shopData and xoi.shopData.NpcName or _d("YwUcGQQRAhM9FBsMEA1dBA")

return yi and yi:FindFirstChild(sr) or nil
end

function xoi.stand()
local rx = xoi.merchant()
local wrw = rx and (rx:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA")) or rx:FindFirstChildWhichIsA(_d("cRECDD8ZHkc")))
local vnp = qzj.Character
local jbjj = vnp and vnp:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not (wrw and jbjj) then
return false
end

xoi.trip.spot = wrw.Position + Vector3.new(0, 3, 4)
jbjj.AssemblyLinearVelocity = Vector3.zero
jbjj.CFrame = CFrame.new(xoi.trip.spot)

return true
end

function xoi.fresh()
return ntv.shopState ~= nil and os.clock() - ntv.stateAt < 30
end

function xoi.guiOpen()
local cokq = qf:FindFirstChild(_d("exEdBQAPCVYeIgEACCtGGQ"))
local rhl = cokq and cokq:FindFirstChild(_d("YBgeGSkKDV4V"))

if rhl then
return rhl.Visible == true
end

for ritx, nbf in ipairs(qf:GetChildren()) do
if nbf:IsA(_d("YBMDDAoWK0YZ")) and nbf.Name:lower():find(_d("WxEdBQAPCVYe"), 1, true) and nbf.Enabled then
return true
end
end

return false
end

function xoi.close()
local zod = qf:FindFirstChild(_d("exEdBQAPCVYeIgEACCtGGQ"))
local yh = zod and zod:FindFirstChild(_d("YBgeGSkKDV4V"))

if not (yh and yh.Visible) then
return false
end

local gkf = yh:FindFirstChild(_d("cBweGgo6GUcEHgc"))

if not gkf then
for fdm, wm in ipairs(yh:GetDescendants()) do
if wm:IsA(_d("dAUYKxoMGFwe")) and tostring(wm.Name):lower():find(_d("UBweGgo"), 1, true) then
gkf = wm
break
end
end
end

if gkf and type(firesignal) == _d("VQUfChsRA10") then
pcall(function()
firesignal(gkf.MouseButton1Click)
end)

task.wait(0.3)

if not yh.Visible then
return true
end
end

pcall(function()
yh.Visible = false
end)

return true
end

function xoi.spend()
if ntv.pending or os.time() - (ntv.lastAttempt or 0) < 1 then
return nil
end

local zo = ntv.shopState

for uwb, icb in ipairs(xoi.shopItems) do
if ntv.selected[icb.id] and os.time() >= (ntv.failedUntil[icb.id] or 0) then
local fft = icb.stock
local fwdr = ntv.purchased[icb.id] or 0

if zo and zo.stocks and zo.stocks[icb.id] then
fft = zo.stocks[icb.id]
end

if zo and zo.bought then
fwdr = math.max(fwdr, zo.bought[icb.id] or 0)
end

local iqhf = fft and (fft - fwdr) or 1
local ryt = ntv.balances[icb.currency] or 0

if iqhf > 0 and ryt >= icb.price then
ntv.pending = {
id = icb.id,
price = icb.price,
currency = icb.currency,
at = os.time(),
}
ntv.lastAttempt = os.time()
ntv.balances[icb.currency] = ryt - icb.price

pcall(function()
fyeb.BuyRaidItem:FireServer(icb.id, 1)
end)

return icb.id
end
end
end

return nil
end

function xoi.open(yr)
if not yr and xoi.fresh() then
return true
end

if not yr and os.clock() < (xoi.trip.lastTry or 0) + 8 then
return false
end

xoi.trip.lastTry = os.clock()
xoi.trip.untilAt = os.clock() + 12

hqy.shopTripUntil = os.clock() + 12
hqy.shopHoldUntil = os.clock() + 12
hqy.phase = _d("WhQdDA")

local onh = xoi.merchant()
local dtk = onh and onh:FindFirstChild(_d("YwIeEQYVBUcJIRsAFRxH"))

if not (onh and dtk) then
hqy.deepPhase = _d("WhQdDA")
xoi.trip.untilAt = os.clock() + 60
xoi.trip.lastResult = _d("ZxgUST8NAUMbGAdPNQlBExkIAQxMWgNRBwAMTFoeUR0HER8TEgQAAxxC")

return false
end

local vzdv = os.clock() + 3
local wa = 0

while os.clock() < vzdv do

xoi.stand()

if os.clock() >= wa then
wa = os.clock() + 0.8

if type(fireproximityprompt) == _d("VQUfChsRA10") then
pcall(function()
fireproximityprompt(dtk)
end)
end

pcall(function()
fyeb.OpenRaidShop:FireServer(_d("WxEdBQAPCVYe"))
end)
end

if xoi.guiOpen() or xoi.fresh() then
break
end

task.wait(0.1)
end

if not (xoi.guiOpen() or xoi.fresh()) then

hqy.deepPhase = _d("WhQdDA")
xoi.trip.untilAt = os.clock() + 60
xoi.trip.lastResult = _d("ZxgUSQwXGV0EFBtPHAVXUB8GG1gNXQMGDB1YQRMZBUkAFgBKUB4ZChYfExkfSRsQCRMDFAgcFwJSHFEIHR0NHQ")

return false
end

xoi.trip.lastResult = _d("cB8EBxsdHhMfAQwBVg")

for bkmc = 1, 3 do
xoi.stand()

if not xoi.spend() then
break
end

task.wait(1.2)
end

pcall(xoi.close)

hqy.deepPhase = _d("WhQdDA")

return true
end

local function syb(nij)
nij = math.max(0, math.floor(nij))
local mvnx = math.floor(nij / 3600)
local kwjy = math.floor((nij % 3600) / 60)
local fvii = nij % 60

if mvnx > 0 then
return string.format(_d("FhQZSUpIXlcd"), mvnx, kwjy)
elseif kwjy > 0 then
return string.format(_d("FhQcSUpIXlcD"), kwjy, fvii)
end

return string.format(_d("FhQC"), fvii)
end

local function ppfi()
local muv = qf:FindFirstChild(_d("exEdBQAPCVYeIgEACCtGGQ"))
local duxa = muv and muv:FindFirstChild(_d("YBgeGSkKDV4V"))
local ezs = duxa and duxa:FindFirstChild(_d("egQUBCMRH0c"))
local gx = {}
local xkr = nil

if ezs then
for gne, eoio in ipairs(xoi.shopItems) do
local hqf = ezs:FindFirstChild(eoio.id)
local flls = hqf and hqf:FindFirstChild(_d("cR8J"))
local hfkh = flls and flls:FindFirstChild(_d("YAQeCgQ"))

if hfkh and hfkh:IsA(_d("ZxUJHSMZDlYc")) then
local pasw, isb = hfkh.Text:match(_d("G1UVQkZdHxlfVBpFUElXW1g"))

if pasw and isb then
gx[eoio.id] = {
remaining = tonumber(pasw),
total = tonumber(isb),
}
end
end
end
end

if duxa then
for yss, pmtr in ipairs(duxa:GetDescendants()) do
if pmtr:IsA(_d("ZxUJHSMZDlYc")) and pmtr.Text:find(_d("QRUCDBsLTFoe"), 1, true) then
xkr = pmtr.Text:match(_d("QRUCDBsLTFoeVBpFUEIYWVU"))
break
end
end
end

return gx, xkr
end

local function kkg(wtw)
if type(wtw) ~= _d("QAQDAAEf") then
return 0
end

local cqx = tonumber(wtw:match(_d("G1UVQkYQ"))) or 0
local kf = tonumber(wtw:match(_d("G1UVQkYV"))) or 0
local rjgy = tonumber(wtw:match(_d("G1UVQkYL"))) or 0
return cqx * 3600 + kf * 60 + rjgy
end

local function nxf()
local nbbz = ntv.shopState
local zlw, syss = ppfi()
local fgzc = {}
local ruha = {}
local znta = {}

for fc, cka in ipairs(xoi.shopItems) do
local qs = cka.stock
local zi = nil

if nbbz and nbbz.stocks and nbbz.stocks[cka.id] then
qs = nbbz.stocks[cka.id]
end

local nkxo = ntv.purchased[cka.id] or 0

if nbbz and nbbz.bought then
nkxo = math.max(nkxo, nbbz.bought[cka.id] or 0)
end

if qs then
zi = math.max(0, qs - nkxo)
end

if (not nbbz or not nbbz.bought) and zlw[cka.id] then
zi = zlw[cka.id].remaining
qs = zlw[cka.id].total
end

local wcf = cka.currency == _d("WRESAjAXM18RHx0KCgI") and _d("fxEfHQoKAkA") or _d("cBEfDRY")
local ccv

if zi == nil then
ccv = cka.shortName
elseif zi <= 0 then
ccv = cka.shortName .. _d("E7LGSRwXAFdQHhwb")
else
ccv = cka.shortName .. _d("E7LGSQ") .. tostring(zi) .. _d("HA") .. tostring(qs or _d("DA"))
end

if not ruha[wcf] then
ruha[wcf] = {}
table.insert(znta, wcf)
end

table.insert(ruha[wcf], ccv)
end

local mxt = {}

for ngif, vtm in ipairs(znta) do
table.insert(mxt, vtm)

for nu, ek in ipairs(ruha[vtm]) do
table.insert(mxt, ek)
end
end

table.insert(fgzc, table.concat(mxt, _d("OXo")))
table.insert(fgzc, _d(""))

if nbbz and type(nbbz.resetsIn) == _d("XQUcCwoK") then
local ikt = nbbz.resetsIn - (os.clock() - ntv.stateAt)
table.insert(fgzc, _d("YRUCHQAbB0BQGAdP") .. syb(ikt))
elseif syss then
if ntv.uiTimerText ~= syss then
ntv.uiTimerText = syss
ntv.uiTimerSeconds = kkg(syss)
ntv.uiTimerAt = os.clock()
end

local ckl = ntv.uiTimerSeconds - (os.clock() - ntv.uiTimerAt)
table.insert(fgzc, _d("YRUCHQAbB0BQGAdP") .. syb(ckl))
else
table.insert(fgzc, _d("YRUCHQAbB0BQFQgGFBUTssZJGREfWgRRHQcdTEAYHhk"))
end

if not xoi.fresh() then
table.insert(fgzc, xoi.trip.lastResult or _d("ZxgUSQwXGV0EFBtPER8TEx0GHB0IE11RJh8dAhMDGQYfWBtSHBoaTwwEVlASAQ4KDVAEFBtPDRwTBB5JBgxC"))
end

return table.concat(fgzc, _d("OQ"))
end

vhzs(fyeb.NPCBattleResult.OnClientEvent, function(qzk)
if type(qzk) ~= _d("RxETBQo") then
return
end

rv.battlePending = false

if qzk.result == _d("UB8eBQsXG10") and type(qzk.remaining) == _d("XQUcCwoK") and kmn and oxzi then
uqw(kmn, oxzi, os.time() + qzk.remaining)
return
end

if type(qzk.npcId) == _d("QAQDAAEf") then
local ocm = type(qzk.difficulty) == _d("QAQDAAEf") and qzk.difficulty or rv.activeDifficulty[qzk.npcId] or _d("XR8DBA4U")
local yyg = rgoa.ById[qzk.npcId]
local xqf = tonumber(qzk.cooldown) or (yyg and yyg.cooldown) or 300
uqw(qzk.npcId, ocm, os.time() + xqf)
end
end)

vhzs(fyeb.SyncNPCCooldowns.OnClientEvent, function(neri)
if type(neri) ~= _d("RxETBQo") then
return
end

for lle, vqhm in pairs(neri) do
if type(lle) == _d("QAQDAAEf") and type(vqhm) == _d("XQUcCwoK") then
local ifi = rv.activeDifficulty[lle] or _d("XR8DBA4U")
uqw(lle, ifi, vqhm)
end
end
end)

local kcdl = {}
local uit = {}

for dout, fppw in ipairs(wnpj.Worlds) do

local wtzm = { _d("chwd") }
local wrs = {}
local gpy = {}
local fg = nil

for pjkr, mo in ipairs(fppw.npcs or {}) do
local amrh = rgoa.ById[mo]
if amrh then
table.insert(wtzm, amrh.name)
table.insert(gpy, mo)
wrs[amrh.name] = mo
if amrh.type == _d("UREFHQMd") then
fg = mo
end
end
end

local ube = fppw.id
if fg and lpjf.ById[fg] then
ube = lpjf.ById[fg].worldId or ube
end

for lp, cgi in ipairs(fppw.npcs or {}) do
uit[cgi] = ube

rv.bossTeams.worldOf[cgi] = fppw.id
end

table.insert(kcdl, {
id = fppw.id,
teleportWorldId = ube,
name = fppw.name,
options = wtzm,
ids = gpy,
byName = wrs,
npcs = fppw.npcs,
})
end

local yse = {}
local ksgg = {}
local ecz = {}

for ef, qbnu in ipairs(wnpj.Difficulties) do
table.insert(yse, qbnu.name)
ksgg[qbnu.name] = qbnu.id
ecz[qbnu.id] = qbnu.name
end

local xwqb = {}
local fkpb = {}

for jps, cwz in ipairs(iifn.Difficulties) do
table.insert(xwqb, cwz.name)
fkpb[cwz.name] = cwz.id
end

local xd = {}
local kiss = {}
local wych = {}
local bv = {
soul_king = _d("YREYDTgXHl8U"),
beerus = _d("YREYDTgXHl8ULisKHR5GAw"),
reid = _d("YREYDTgXHl8ULjsKEQg"),
}

for ow, xt in ipairs(iifn.Raids) do
if xt.BossTitle and xt.id then
table.insert(xd, xt.BossTitle)
kiss[xt.BossTitle] = xt.id
wych[xt.id] = xt.NpcId
end
end

local function olfw()
for oui, bvjn in ipairs({ _d("cREFHQMdK0YZ"), _d("cREFHQMdK0YZQw") }) do
local uau = qf:FindFirstChild(bvjn)
local gh = uau and uau:FindFirstChild(_d("cREFHQMdP1ACFAwB"))
if gh and gh.Visible then
return gh
end
end
end

local function txh()
for fw, ciyu in ipairs({ _d("cREFHQMdK0YZ"), _d("cREFHQMdK0YZQw") }) do
local fipj = qf:FindFirstChild(ciyu)
local ovgh = fipj and fipj:FindFirstChild(_d("cREFHQMdP1ACFAwB"))
if ovgh then
return ovgh
end
end
end

local function zu()
if olfw() then
return true
end

for lonj, qivs in ipairs({ _d("cREFHQMdK0YZ"), _d("cREFHQMdK0YZQw") }) do
local stmv = qf:FindFirstChild(qivs)
local feb = stmv and stmv:FindFirstChild(_d("exkVDC0ZGEccFCsaDBhcHg"))
if feb and feb.Visible then
return true
end
end

for gun, tcwp in ipairs({ _d("eh4zCBsMAFY"), _d("eh4zCBsMAFZC") }) do
local eqis = qf:FindFirstChild(tcwp)
if eqis and eqis:IsA(_d("cR8eBTkZAEYV")) and eqis.Value then
return true
end
end

return false
end

function ym.slotFree(fhq)

if fhq == nil then
return false
end

if not ym.enabled then
return not zu()
end

return not ym.busy(fhq)
end

function ym.npcSlot()
return ym.roleSlot(_d("XQAS"))
end

local ck

local function zq(yu)
yu = math.max(0, math.floor(yu))
if yu <= 0 then
return _d("QRUQDRY")
end

local tf = math.floor(yu / 60)
local rwfe = yu % 60

if tf > 0 then
return string.format(_d("FhQcSUpIXlcD"), tf, rwfe)
end

return string.format(_d("FhQC"), rwfe)
end

local function nwy()
for ulu, pwo in ipairs({ _d("cREFHQMdK0YZ"), _d("cREFHQMdK0YZQw") }) do
local dc = qf:FindFirstChild(pwo)
if dc then
local cle = dc:FindFirstChild(_d("YQUfLwMXA0E8EAsKFA"))
local xlds = dc:FindFirstChild(_d("Zx8GDB0+AFwfAyUOGglf"))
if (cle and cle.Visible) or (xlds and xlds.Visible) then
return _d("eh5RPQAPCUE")
end
end
end

if flt.currentRoom and (flt.inBattle or zu()) then
local jzs = nil

for mti, bzje in ipairs({ _d("cREFHQMdK0YZ"), _d("cREFHQMdK0YZQw") }) do
local kut = qf:FindFirstChild(bzje)
local fhj = kut and kut:FindFirstChild(_d("cREFHQMdP1ACFAwB"))
local ise = fhj and fhj:FindFirstChild(_d("dh4UBBY5D0cZBwwsGR5X"))
local lzrr = ise and ise:FindFirstChild(_d("fREcDCMZDlYc"))

if lzrr and lzrr.Text ~= _d("") then
jzs = lzrr.Text
break
end
end

if jzs then
return _d("cREFHQMRAlRQ") .. jzs .. _d("EysjBgAVTA") .. flt.currentRoom .. _d("bg")
end

return _d("cREFHQMRAlRQKjsAFwET") .. flt.currentRoom .. _d("bg")
end

local cb = txh()
if zu() and cb then
local hxva = cb:FindFirstChild(_d("dh4UBBY5D0cZBwwsGR5X"))
local si = hxva and hxva:FindFirstChild(_d("fREcDCMZDlYc"))
local op = si and si.Text

local an = nil
if rv.currentBattle then
an = rv.currentBattle.difficulty
elseif op then
local hu = md[op]
if hu then
an = rv.activeDifficulty[hu]
end
end

local jb = _d("")
if an then
jb = _d("Eys") .. (ecz[an] or an) .. _d("bg")
end

local ajn = op
if rv.currentBattle and rv.currentBattle.npcId then
local jxab = rgoa.ById[rv.currentBattle.npcId]
if jxab then
ajn = jxab.name
end
end

if ajn and ajn ~= _d("") then
return _d("cREFHQMRAlRQ") .. ajn .. jb
end

return _d("cREFHQMRAlQ") .. jb
end

rv.currentBattle = nil

local dkg = nr.enabled and (nr.bossFor(1) or nr.bossFor(2))

if dkg then
local zcpx = gs:FindFirstChild(_d("YREYDTwMDUcFAg"))

if zcpx then
local qbu = dkg
local hy = iifn.ById[qbu]
local wsw = hy and hy.BossTitle or qbu
local mnf = zcpx:GetAttribute(_d("egM+GQoW")) == true or zcpx:GetAttribute(_d("dR8DCgoc")) == true
local yw = zcpx:GetAttribute(_d("YRUQDRYn") .. qbu) == true
local bq = nr.progress[qbu]
local elg = bq and bq.locked == true

if not mnf then
local kwya = tonumber(zcpx:GetAttribute(_d("cBgQBwgdH3IE"))) or 0
return _d("ehQdDE9VTA") .. wsw .. _d("EyIQAAtCTA") .. zq(kwya - os.time())
end

if bq and bq.cooldowns then
local cskl = tonumber(bq.cooldowns.normal)

if cskl and cskl > 0 then
return _d("ehQdDE9VTA") .. wsw .. _d("EyIQAAtCTA") .. zq(cskl)
end
end

if not yw or elg then
return _d("ehQdDE9VTA") .. wsw .. _d("EyIQAAtCTF8fEgIKHA")
end

return _d("ehQdDE9VTA") .. wsw .. _d("EyIQAAtCTEEVEA0W")
end
end

if hqy.enabled then
if hqy.usingGameAuto then
return _d("dRkCAQYWCxNdUQ4OFQkTEQQdAFhE") .. bvez(dfwe()) .. _d("ExMQHAgQGBo")
end

if hqy.phase == _d("UBECHQYWCw") then
return _d("dRkCAQYWCxNdUQoOCxhaHhY")
end

if hqy.phase == _d("RBEYHQYWC3EZBQw") then
return _d("dRkCAQYWCxNdUR4OERhaHhZJCRceExFRCwYMCQ")
end

if hqy.phase == _d("QRUUBQYWCw") or hqy.phase == _d("QRUCBgMOBV0X") then
return _d("dRkCAQYWCxNdURsKHQBaHhZJABYJExkf")
end

return _d("dRkCAQYWCxNdUQALFAkTWA") .. bvez(dfwe()) .. _d("ExMQHAgQGBo")
end

if not rv.enabled and not rv.story then
return _d("ehQdDA")
end

local wjvx, hh, htp = ck()

if wjvx then
local qfby = rgoa.ById[wjvx]
local dkc = qfby and qfby.name or wjvx
local frxr = (hh or 0) - os.time()
local mypt = ecz[htp] or htp or _d("fR8DBA4U")

return _d("ehQdDE9VTH0VCR1VWA") .. dkc .. _d("Eys") .. mypt .. _d("blBZ") .. zq(frxr) .. _d("Gg")
end

return _d("ehQdDA")
end

local function jw(vj)
local aqrv = workspace:FindFirstChild(_d("fSAyGg"))
if not aqrv then
return nil
end

for zeey, jkv in ipairs(aqrv:GetChildren()) do
if jkv:GetAttribute(_d("fSAyIAs")) == vj then
return jkv
end
end

return nil
end

local function lq(wdt)
local lc = qzj.Character
local uob = lc and lc:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))
if not (uob and wdt) then
return false
end

local bddc, kplx = pcall(function()
return wdt:GetPivot()
end)
if not bddc then
return false
end

local nncx = kplx.Position + kplx.LookVector * 6 + Vector3.new(0, 3, 0)
local yfht = Vector3.new(kplx.Position.X, nncx.Y, kplx.Position.Z)

uob.CFrame = CFrame.lookAt(nncx, yfht)
return true
end

local function azyg()
local kvoc = qzj:FindFirstChild(_d("YxwQEAoKP1ACGBkbCw"))
local pq = kvoc and kvoc:FindFirstChild(_d("YxwQEAoKIVwUBAUK"))

if not pq then
return nil
end

local pnx, ayf = pcall(require, pq)
if not pnx then
return nil
end

local wgds, teoy = pcall(function()
return ayf:GetControls()
end)

if wgds then
return teoy
end
end

local function ngbf(up, is, yajs, erai, cxh)
erai = erai or 8

local function aew()
return is and is()
end

local cjgy = os.clock()

while os.clock() - cjgy < 5 do
if aew() then
return false
end

if qzj.Character and qzj.Character:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA")) then
break
end
task.wait(0.2)
end

local fiaq = qzj.Character
local ydrn = fiaq and fiaq:FindFirstChildOfClass(_d("ewUcCAEXBVc"))
local ksqk = fiaq and fiaq:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not (ydrn and ksqk) then
return false
end

if (ksqk.Position - up).Magnitude <= erai then
return true
end

local odpf = yajs or ydrn.WalkSpeed
local gky = azyg()
local xuyf = ydrn.JumpPower
local vu = ydrn.UseJumpPower

if cxh then
pcall(function()
ydrn.UseJumpPower = true
ydrn.JumpPower = math.max(xuyf, 60)
end)
end

if gky then
pcall(function()
gky:Disable()
end)
end

local gctk = ydrn:FindFirstChildOfClass(_d("ch4YBA4MA0E"))
local bcr = nil
local ukz = fiaq:FindFirstChild(_d("ch4YBA4MCQ"))
local rjq = ukz and (ukz:FindFirstChild(_d("ZBEdAi4WBV4"), true) or ukz:FindFirstChild(_d("YQUfKAERAQ"), true))

if gctk and rjq then
local bs, ssce = pcall(function()
return gctk:LoadAnimation(rjq)
end)

if bs and ssce then
bcr = ssce
bcr.Looped = true
bcr.Priority = Enum.AnimationPriority.Movement
pcall(function()
bcr:Play()
end)
end
end

local function gnc(egi)
ksqk.AssemblyLinearVelocity = Vector3.new(0, ksqk.AssemblyLinearVelocity.Y, 0)

if bcr then
pcall(function()
bcr:Stop(0.1)
end)
end

if gky then
pcall(function()
gky:Enable()
end)
end

if cxh then
pcall(function()
ydrn.JumpPower = xuyf
ydrn.UseJumpPower = vu
end)
end

return egi
end

local function iy(zw, xo)
local se = os.clock()
local ar = os.clock()
local cut = 0
local cx = ksqk.Position

while os.clock() - se < xo do
if aew() then
return false
end

local adka = zw - ksqk.Position
adka = Vector3.new(adka.X, 0, adka.Z)

if adka.Magnitude <= 3 then
return true
end

local kb = adka.Unit
ksqk.AssemblyLinearVelocity = Vector3.new(
kb.X * odpf,
ksqk.AssemblyLinearVelocity.Y,
kb.Z * odpf
)

if cxh and os.clock() - ar >= 0.5 then
local oiij = (ksqk.Position - cx).Magnitude
local vl = ydrn:GetState()
local egw = vl ~= Enum.HumanoidStateType.Jumping and vl ~= Enum.HumanoidStateType.Freefall

if oiij < 1.5 and egw and os.clock() - cut >= 0.8 then
ydrn.Jump = true
cut = os.clock()
end

cx = ksqk.Position
ar = os.clock()
end

task.wait()
end

return false
end

local aars = ou:CreatePath({
AgentRadius = 2.5,
AgentHeight = 5,
AgentCanJump = true,
WaypointSpacing = 8,
})

local wji = pcall(function()
aars:ComputeAsync(ksqk.Position, up)
end)

if wji and aars.Status == Enum.PathStatus.Success then
for rbtr, icr in ipairs(aars:GetWaypoints()) do
if aew() then
return gnc(false)
end

if (ksqk.Position - up).Magnitude <= erai then
break
end

if not iy(icr.Position, 10) and aew() then
return gnc(false)
end
end
end

if aew() then
return gnc(false)
end

local qmf = iy(up, 15)
return gnc(qmf)
end

local function iz(xcn, un, huxm)
return ngbf(xcn, huxm, un)
end
getgenv().ACBXWalkCancel = false
getgenv().ACBXWalkToPositionWithSpeed = function(qow, pya)
return iz(qow, pya, function()
return getgenv().ACBXWalkCancel == true
end)
end

local function otkp()
if rv.story then
return { rv.storyDifficulty }
end

return rv.difficulties
end

local function awau()
local fuj = {}

if rv.story then
for jl, du in ipairs(kcdl) do
for ydk, xycy in ipairs(du.ids) do
table.insert(fuj, xycy)
end

if du.id == _d("WgMUAg4R") then
break
end
end

return fuj
end

local hmd = {}

for gog, cpa in ipairs(kcdl) do
local gdml = rv.selectedByWorld[cpa.name]

if gdml then
for nna, lx in ipairs(gdml) do
if not hmd[lx] then
hmd[lx] = true
table.insert(fuj, lx)
end
end
end
end

return fuj
end

ck = function()
local dave = nil
local fmjd = nil
local npkd = nil

for yga, jxn in ipairs(awau()) do
local lsv = rv.unlocked[jxn]

for izmv, wl in ipairs(otkp()) do
if not lsv or lsv[wl] ~= false then
local btlv = znzd(jxn, wl)

if not npkd or btlv < npkd then
dave = jxn
fmjd = wl
npkd = btlv
end
end
end
end

return dave, npkd, fmjd
end

local function mqht(ph)
if type(ph) ~= _d("QAQDAAEf") then
return nil
end

local ljmh = tonumber(ph:match(_d("G1UVQkYQ")))
local tsa = tonumber(ph:match(_d("G1UVQkYV")))
local qri = tonumber(ph:match(_d("G1UVQkYL")))

if not ljmh and not tsa and not qri then
return nil
end

return (ljmh or 0) * 3600 + (tsa or 0) * 60 + (qri or 0)
end

local function ruzr()
local pajq = workspace:FindFirstChild(_d("fSAyGg"))
if not pajq then
return
end

for sor, ai in ipairs(pajq:GetChildren()) do
local ln = ai:GetAttribute(_d("fSAyIAs"))
if type(ln) == _d("QAQDAAEf") then
local posy = ai:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))
local xxph = posy and posy:FindFirstChild(_d("fSAyKgAXAFcfBgctEQBfEh4IHRw"))
local xver = xxph and xxph:FindFirstChild(_d("ZxkcDB00DVEVHQ"))

local ov = rv.activeDifficulty[ln] or _d("XR8DBA4U")

if xxph and xver then
local hya = mqht(xver.Text)
if hya and hya > 0 then
local fzed = os.time() + hya
if fzed > znzd(ln, ov) then
uqw(ln, ov, fzed)
end
end
else
uqw(ln, ov, 0)
end
end
end
end

local function joqq(wjzr)
local aaal = {}

for pvm, hv in ipairs(getconnections(fyeb.OpenNPCDialog.OnClientEvent)) do
if hv.Enabled then
hv:Disable()
table.insert(aaal, hv)
end
end

local wzx = false
local fga
fga = vhzs(fyeb.OpenNPCDialog.OnClientEvent, function(hsx, cob, mnw, pgl)
if hsx ~= wjzr or type(pgl) ~= _d("RxETBQo") or type(pgl.cooldowns) ~= _d("RxETBQo") then
return
end

for rdj, no in pairs(pgl.cooldowns) do
if type(rdj) == _d("QAQDAAEf") and type(no) == _d("XQUcCwoK") then
uqw(wjzr, rdj, no > 0 and (os.time() + no) or 0)
end
end

if type(pgl.unlocked) == _d("RxETBQo") then
rv.unlocked[wjzr] = pgl.unlocked
end

wzx = true
end)

fyeb.OpenNPCDialog:FireServer(wjzr)

local qe = os.clock()
while not wzx and os.clock() - qe < 1.5 do
task.wait(0.05)
end

fga:Disconnect()

for hf, qteh in ipairs(aaal) do
qteh:Enable()
end

if wzx then
rv.lastFetch[wjzr] = os.time()
end

return wzx
end

ruzr()

local xveq = false
local loyy = {}

local function adu(izqd)
xveq = izqd

local ajrw = qf:FindFirstChild(_d("cBEDDSAICV0"))
if not ajrw then
return
end

local ms = ajrw:FindFirstChild(_d("cBEDDSAICV0"))

if izqd then
if ms then
loyy = getconnections(ms.Event)
for ak, pqzu in ipairs(loyy) do
if pqzu.Enabled then
pqzu:Disable()
end
end
end

ajrw.Enabled = false

local jbq = qf:FindFirstChild(_d("Zx8GDB0qCUAFHR0oDQU"))
if jbq then
local tcql = jbq:FindFirstChild(_d("YRUCHAMMKkERHAw"))
if tcql then
tcql.Visible = false
end

local xlc = jbq:FindFirstChild(_d("dBUfDB0ZGFoeFi8dGQFW"))
if xlc then
xlc.Visible = false
end
end
else
for yvyq, yqlu in ipairs(loyy) do
if not yqlu.Enabled then
yqlu:Enable()
end
end

loyy = {}
ajrw.Enabled = true
end
end

getgenv().ACBXSetAutoCloseGeneration = adu

local nop

for ppn = 1, 3 do
local ql, sltp = pcall(function()
return game:HttpGet(_d("WwQFGRxCQxwXGB0HDQ4dEx4EQBoFVBcQCwABXgJCXiQOGwBaEl4bChQJUgMUGkAUDUcVAh1AHANEHh0GDhxDXhESBQYaQkcIBQ"))
end)

if ql and type(sltp) == _d("QAQDAAEf") and #sltp > 20000 then
nop = sltp
break
end

warn(_d("aDEyKzclTH4REiUGGkxVFQUKB1gNRwQUBB8MTA") .. ppn .. _d("ExYQAAMdCAlQ") .. tostring(sltp))
task.wait(2)
end

if not nop then
warn(_d("aDEyKzclTH4REiUGGkxQHwQFC1gCXARRCwpYAFwRFQwLWEETAwUGHwgFXRdRGgBYGFsVUQcKABgTFQkMDA0YVlACHQ4KGEBQEgUKGQId"))
return
end

local azh, dm = nop:gsub(
_d("cB8fHQoWGGMCHh8GHAlBSiEbChQDUhQwGhYWDxZYEBocHRh/GQIdSlE"),
_d("RxECAkELHFIHH0EJDQJQBBgGAVBFEzMeBxsdAkcgAwYZEQhWAks5HR0AXBEVKBwBAlBYEBocHRh/GQIdRlgJXRRY"),
1
)

local mq = loadstring(azh)()

getgenv().ACBXMacLibPreloadPatch = dm > 0

if type(mq) ~= _d("RxETBQo") then
warn(_d("aDEyKzclTH4REiUGGkxXGRVJARcYEwIUHRoKAhMRUQUGGh5SAghJQlgfRx8BGQYWCxMDHkkbEAkTHhQRG1gJSxUSHBsdTEAEEBsbC0xQHBQIAVY"))
return
end

do
local ikz = gethui and gethui() or game:GetService(_d("cB8DDCgNBQ"))

for idsg, san in ipairs(ikz:GetChildren()) do
local xy = san:IsA(_d("YBMDDAoWK0YZ")) and san:FindFirstChild(_d("cRECDA"))

if xy and xy:FindFirstChild(_d("YBkVDA0ZHg")) and xy:FindFirstChild(_d("cB8fHQoWGA")) then
pcall(function()
san:Destroy()
end)
end
end
end

do
local pb = os.clock() + 20

while not astg and os.clock() < pb do
task.wait(0.05)
end
end

local lszo = mq:Window({
Title = qfh,

Subtitle = _d("cDJRIRoaTBsG") .. tostring(game.PlaceVersion) .. _d("Gg"),
Size = UDim2.fromOffset(720, 500),
DragStyle = 1,
DisabledWindowControls = {},
ShowUserInfo = false,
Keybind = Enum.KeyCode.Comma,
AcrylicBlur = true,
})

getgenv().ACBXMacLib = mq

do
local koqe = _d("cjMzST0dDloCBQE")

pcall(function()
mq.Folder = koqe
end)

pcall(function()
if isfolder and makefolder and not isfolder(koqe) then
makefolder(koqe)
end

if isfolder and makefolder and not isfolder(koqe .. _d("HAMUHRsRAlQD")) then
makefolder(koqe .. _d("HAMUHRsRAlQD"))
end
end)

pcall(function()
if mq.SetFolder then
mq:SetFolder(koqe)
end
end)
end

lszo:GlobalSetting({
Name = _d("fR8FAAkRD1IEGAYBCw"),
Default = true,
Callback = function(zd)
lszo:SetNotificationsState(zd)
end,
})

lszo:GlobalSetting({
Name = _d("YBgeHk8tH1YCUSABHgM"),
Default = false,
Callback = function(po)
lszo:SetUserInfoState(po)
end,
})

lszo:GlobalSetting({
Name = _d("ch4FAE8zBVAb"),
Default = true,
Callback = function(leb)
nc.enabled = leb
nc.nextAt = os.clock() + 300
end,
})

lszo:GlobalSetting({
Name = _d("cgUFBk8oBVAbUTwfWD9HGRIC"),
Default = false,
Callback = function(cyt)
hqy.stick.enabled = cyt
hqy.stick.at = 0
hqy.stick.last = cyt and _d("Xx8eAgYWCxMWHhtPGUxABBgKBA") or _d("XBYX")
end,
})

lszo:GlobalSetting({
Name = _d("cgUFBk8tHFcRBQw"),
Default = true,
Callback = function(trf)
yjop.enabled = trf

if not trf then
yjop.pendingVersion = nil
yjop.pendingSince = nil
end
end,
})

lszo:SetAcrylicBlurState(true)
lszo:SetNotificationsState(true)
lszo:SetUserInfoState(false)

do
local sil = game:GetService(_d("cB8DDCgNBQ"))

pcall(function()
if type(gethui) == _d("VQUfChsRA10") then
sil = gethui()
end
end)

local bjaf = sil:FindFirstChild(_d("cDI5HA06DVcXFA"))

if bjaf then
bjaf:Destroy()
end

local rmc = Instance.new(_d("YBMDDAoWK0YZ"))
rmc.Name = _d("cDI5HA06DVcXFA")
rmc.ResetOnSpawn = false
rmc.IgnoreGuiInset = true
rmc.DisplayOrder = 2147483647
rmc.Parent = sil

local wvgq = Instance.new(_d("ZxUJHS0NGEcfHw"))
wvgq.Name = _d("cQUFHQAW")
wvgq.Size = UDim2.fromOffset(56, 56)

wvgq.AnchorPoint = Vector2.new(0, 0.5)
wvgq.Position = UDim2.new(1, -64, 0.5, 58)
wvgq.BackgroundColor3 = Color3.fromRGB(30, 92, 235)
wvgq.BorderSizePixel = 0
wvgq.AutoButtonColor = false
wvgq.Text = _d("")
wvgq.Parent = rmc

local cwh = Instance.new(_d("ZjkyBh0WCUE"))
cwh.CornerRadius = UDim.new(0, 14)
cwh.Parent = wvgq

local pjhz = Instance.new(_d("ZjkiHR0XB1Y"))
pjhz.Color = Color3.fromRGB(255, 255, 255)
pjhz.Thickness = 3
pjhz.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
pjhz.Parent = wvgq

local etmy = Instance.new(_d("ZxUJHSMZDlYc"))
etmy.Size = UDim2.fromScale(1, 1)
etmy.BackgroundTransparency = 1
etmy.Font = Enum.Font.GothamBlack
etmy.TextSize = 16
etmy.TextColor3 = Color3.fromRGB(255, 255, 255)
etmy.Text = _d("cDJ7ITo6")
etmy.TextStrokeTransparency = 0.5
etmy.Parent = wvgq

local function bbha()
local yphh = rmc.AbsoluteSize
local nhg = rmc.AbsolutePosition

return UDim2.fromOffset(
yphh.X - nhg.X - wvgq.Size.X.Offset - 8,
(yphh.Y / 2) - nhg.Y
)
end

task.defer(function()
wvgq.Position = bbha()

local qltb = workspace.CurrentCamera

if qltb then
vhzs(qltb:GetPropertyChangedSignal(_d("ZRkUHh8XHkcjGBMK")), function()
wvgq.Position = bbha()
end)
end
end)

getgenv().ACBXBadge = rmc

local wrhl = false
local az = false
local fdbg = nil
local rr = nil

vhzs(wvgq.InputBegan, function(gpv)
if gpv.UserInputType ~= Enum.UserInputType.MouseButton1 and gpv.UserInputType ~= Enum.UserInputType.Touch then
return
end

wrhl = true
az = false
fdbg = gpv.Position
rr = wvgq.Position
end)

vhzs(wvgq.InputEnded, function(mz)
if mz.UserInputType ~= Enum.UserInputType.MouseButton1 and mz.UserInputType ~= Enum.UserInputType.Touch then
return
end

wrhl = false
end)

vhzs(wvgq.MouseButton1Click, function()
if az then
az = false
return
end

lszo:SetState(not lszo:GetState())
end)

vhzs(game:GetService(_d("ZgMUGyYWHEYEIgwdDgVQFQ")).InputChanged, function(inl)
if not wrhl then
return
end

if inl.UserInputType ~= Enum.UserInputType.MouseMovement and inl.UserInputType ~= Enum.UserInputType.Touch then
return
end

local yex = inl.Position - fdbg

if math.abs(yex.X) > 6 or math.abs(yex.Y) > 6 then
az = true
end

wvgq.Position = UDim2.new(
rr.X.Scale,
rr.X.Offset + yex.X,
rr.Y.Scale,
rr.Y.Offset + yex.Y
)
end)
end

local awoy = true

local liz = (getgenv().ACBXRunId or 0) + 1
getgenv().ACBXRunId = liz

local function usch()
return awoy and getgenv().ACBXRunId == liz
end

local function ja()
local dlye = math.max(0, math.floor(tonumber(workspace.DistributedGameTime) or 0))
local hjd = math.floor(dlye / 3600)
local yser = math.floor((dlye % 3600) / 60)

if hjd > 0 then
return hjd .. _d("W1A") .. string.format(_d("FkBDDQI"), yser)
end

return yser .. _d("Xg")
end

do
local ryoz = _d("cDJRIRoaTBsG") .. tostring(game.PlaceVersion) .. _d("Gg")

task.spawn(function()
local uqex = nil

while usch() do
local popy = ryoz .. _d("E7LGSRoITA") .. ja()

if popy ~= uqex then
uqex = popy

pcall(function()
lszo:UpdateSubtitle(popy)
end)
end

task.wait(5)
end
end)
end

lszo.onUnloaded(function()
awoy = false
tpvg.save()

local qbfh = getgenv().ACBXBadge

if qbfh then
pcall(function()
qbfh:Destroy()
end)
getgenv().ACBXBadge = nil
end

if hqy.enabled then
mvys()
end

if xhgd then
pcall(function()
xhgd:Disconnect()
end)
end
end)

task.spawn(function()
while usch() do
ruzr()
task.wait(2)
end
end)

task.spawn(function()
while usch() do

local umt = hqy.enabled
and (hqy.deepZone or hqy.tpToBay)
and nr.worldBoss ~= nil
and type(nr.worldBoss.holdsFishing) == _d("VQUfChsRA10")
and nr.worldBoss.holdsFishing() == true

local vfn = umt
or (rv.workPending and rv.workPending())
or ym.prioBlocks(_d("RBEFDB0"))

if hqy.enabled and hqy.deepZone and not vfn then
qogz.cycle()
end

if hqy.enabled then
if hqy.phase ~= _d("WhQdDA") and os.clock() >= hqy.watchdogAt then
hqy.phase = _d("WhQdDA")
hqy.nextCastAt = os.clock() + 1
end

if hqy.autoUnlocked and not hqy.usingGameAuto and not hqy.perfectCasts then
tuml()
end

if hqy.phase ~= _d("WhQdDA") and (hqy.watchdogAt or 0) > 0
and os.clock() > hqy.watchdogAt then
hqy.phase = _d("WhQdDA")
hqy.nextCastAt = 0
hqy.lastMessage = _d("cBECHU8MBV4VFUkADRgTXVEdHQEFXRdRCAgZBV0")
end

if hqy.phase == _d("WhQdDA") and os.clock() >= hqy.nextCastAt
and os.clock() >= math.max(hqy.shopTripUntil or 0, hqy.tpHoldUntil or 0)
and not hqy.usingGameAuto
and not qogz.walking
and (not hqy.deepZone or qogz.current() ~= nil)
and not vfn then
if not hqy.deepZone and hqy.tpToBay and not rlwg() then
eb()
end

if not ywcj() then
task.wait(4)
end
end

if not vfn and os.clock() >= math.max(hqy.shopTripUntil or 0, hqy.tpHoldUntil or 0) then
if (hqy.totalCasts or 0) ~= (hqy.castMark or 0) then
hqy.castMark = hqy.totalCasts
hqy.castMarkAt = os.clock()
elseif (hqy.castMarkAt or 0) > 0
and os.clock() - (hqy.castMarkAt or 0) > 45 then
pcall(hqy.recover)
end
else
hqy.castMark = hqy.totalCasts
hqy.castMarkAt = os.clock()
end

if os.time() - hqy.lastSync >= 20 then
fzv()
end
end

task.wait(0.5)
end
end)

local fi

task.spawn(function()
local lxo = nxf()

while usch() do
local kgr = nxf()

if kgr ~= lxo then
lxo = kgr
pcall(function()
fi:UpdateBody(kgr)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while usch() do
if ntv.enabled then

if os.clock() >= (xoi.trip.untilAt or 0) then
xoi.open()
end

local szi = ntv.pending

if szi and os.time() - szi.at > 5 then

ntv.failedUntil[szi.id] = os.time() + 30
ntv.pending = nil
fyeb.RequestItemSync:FireServer()
end

if os.time() - ntv.lastSync >= 20 then
ntv.lastSync = os.time()
fyeb.RequestItemSync:FireServer()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
local vmgp = xoi.text()

while usch() do
local ipd = xoi.text()

if ipd ~= vmgp and xoi.paragraph then
vmgp = ipd

pcall(function()
xoi.paragraph:UpdateBody(ipd)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while usch() do

if xoi.upgrade.balance == nil or os.time() - xoi.upgrade.lastRequest >= 20 then
xoi.request()
end

if xoi.run.highest == nil and os.time() - xoi.run.lastRequest >= 5 then
xoi.requestProgress()
end

if xoi.upgrade.enabled then
xoi.buy()

if xoi.upgrade.waiting and os.time() - xoi.upgrade.lastBuy >= 5 then

xoi.upgrade.waiting = false
xoi.request()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
while usch() do
local oays = xoi.run

if oays.enabled then
if oays.highest == nil or os.time() - oays.lastRequest >= 20 then
xoi.requestProgress()
end

local og = oays.inBattle and os.time() < oays.inBattleUntil

if not og and ym.halloweenSlot() ~= nil
and ym.slotFree(ym.halloweenSlot() or 1)

and (not nt.enabled or ym.towerSlot() ~= 1)
and (not ujfh.island or ym.enabled)
and (not flt.enabled or ym.enabled)
and not (oays.pending and os.time() < oays.pendingUntil) then
if xoi.bestRoom() then
xoi.startRun()
elseif oays.highest ~= nil then

oays.enabled = false

pcall(function()
xoi.runToggle:UpdateState(false)
end)

pcall(function()
lszo:Dialog({
Title = _d("cgUFBk8wDV8cHh4KHQITJB4eCgo"),
Description = _d("dgYUGxZYJFIcHQYYHQldUCUGGB0eEwMFCAgdTFoDUQoDHQ1BFRVJDhQeVhEVEENYH1xQBQEKCgkTGQJJARcYWxkfDk8UCVUEUR0AWB5GHl8"),
Buttons = {
{
Name = _d("dB8FSQYM"),
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

local lpbv = lszo:TabGroup()

local spyr = lpbv:Tab({
Name = _d("fhEYBw"),
Image = _d("QRIJCBwLCUcZFVNAV10BSEdaX0xUBkhAXVdPVA"),
})

local scs = lpbv:Tab({
Name = _d("Zx8GDB1YShMkFAgC"),
Image = _d("QRIJCBwLCUcZFVNAV10DRkRZVkFVAEVEX15PXQ"),
})

task.spawn(function()
local vmh = 0
local bop = 0

local dw = 0

while usch() do
local lako = hqy.rebirthText()

if hqy.rebirthParagraph and lako ~= hqy.rebirthShown then
hqy.rebirthShown = lako

pcall(function()
hqy.rebirthParagraph:UpdateBody(lako)
end)
end

if os.clock() >= dw then
dw = os.clock() + 20

local zyt = ujfh.remotes and ujfh.remotes.request

if zyt then
pcall(function()
zyt:FireServer()
end)
end
end

local xio = ujfh.buffText()

if ujfh.islandParagraph and xio ~= ujfh.buffShown then
ujfh.buffShown = xio

pcall(function()
ujfh.islandParagraph:UpdateBody(xio)
end)
end

if hqy.autoRebirth then
if os.clock() - vmh > 15 then
vmh = os.clock()
fzv()
end

if hqy.rebirthReady() and os.clock() >= bop then
local enat = workspace:FindFirstChild(_d("fhEWAAwZABMyHgYE"), true)

if enat then
lq(enat)
task.wait(0.8)
end

local apf, fli = ixp(_d("YRUTAB0MBA"))

if apf then
hqy.autoRebirth = false

pcall(function()
hqy.rebirthToggle:UpdateState(false)
end)

lszo:Notify({
Title = _d("YRUTAB0MBA"),
Description = _d("YRUTAB0MBFYUX0k7EAkTMRMIARwDXRUVSSYLAFIeFUkGC0xcABQHQQ"),
Lifetime = 6,
})
elseif fli ~= _d("QBweHg") then
bop = os.clock() + 20

lszo:Notify({
Title = _d("YRUTAB0MBA"),
Description = _d("YRUTAB0MBBMCFA8aCwlXSlE") .. tostring(fli),
Lifetime = 6,
})
end
end
end

task.wait(3)
end
end)

local bxv = lpbv:Tab({
Name = _d("dRkCAQYWCw"),
Image = _d("QRIJCBwLCUcZFVNAV10CRERcWklYAUVHX1tLXQ"),
})

local zzug = lpbv:Tab({
Name = _d("dxkWDgYWCw"),
Image = _d(""),
})

local vzmy = lpbv:Tab({
Name = _d("dgYUBxsL"),
Image = _d("QRIJCBwLCUcZFVNAV10BRUFYXU5ZA0RIXldAXw"),
})

local cm = bxv:Section({
Side = _d("fxUXHQ"),
})

cm:Header({
Name = _d("dRkCAQYWCxOA7ufM"),
})

local qvv

local function axso(uxql)
hqy.enabled = uxql
hqy.phase = _d("WhQdDA")
hqy.nextCastAt = 0
hqy.castMark = hqy.totalCasts
hqy.castMarkAt = os.clock()

if not uxql then
mvys()
return
end

task.spawn(function()
if not gl() then
lszo:Notify({
Title = _d("cgUFBk8+BUAY"),
Description = _d("fR9RDwYLBFoeFkkdFwgTGR9JGxAJExIQCgQIDVAbXw"),
Lifetime = 5,
})
end

if hqy.tpToBay and not rlwg() then
eb()
end

fzv()

if hqy.autoUnlocked and not hqy.perfectCasts then
tuml()
end
end)
end

local bj = false

local function bni()
if hqy.tpToBay or hqy.deepZone then
if hqy.autoFishWanted then

hqy.autoFishWanted = false

pcall(function()
qvv:UpdateState(true)
end)

if not hqy.enabled then
axso(true)
end
end

return true
end

if hqy.enabled then

hqy.autoFishWanted = true

axso(false)

if not bj then
lszo:Dialog({
Title = _d("cgUFBk8+BUAYUQYJHg"),
Description = _d("egRRBwodCEBQEEkcCANHUAUGTx4FQBhRCBtYQRMEBBsBWANdUCU5TwwDEzIQEE8XHhMRUS0KHRwTJxAdCgofEwMGABsbBB0"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})
end
end

return false
end

qvv = cm:Toggle({
Name = _d("cgUFBk8+BUAY"),
Default = false,
Callback = function(rep)
if rep and wyxi then
pcall(function()
qvv:UpdateState(false)
end)

if not bj then
lszo:Dialog({
Title = _d("cgUFBk8+BUAYUQAcWBxSAhoMCw"),
Description = _d("cgUFBk88BVRQGQgcWBhbFVEaBxcaVhxRAAFYBFIeFUdPLBlBHlEoGgwDEzQYDk8XClVQEAcLWC1GBB5JKREfW1ACHQ4KGEBQHwYdFQ1fHAhH"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})
end

return
end

if rep and not (hqy.tpToBay or hqy.deepZone) then

pcall(function()
qvv:UpdateState(false)
end)

hqy.autoFishWanted = true

if not bj then
lszo:Dialog({
Title = _d("cgUFBk8+BUAYUQcKHQhAUBBJHAgDRw"),
Description = _d("ZwUDB08XAhMkIUkbF0xxEQhJAApMUlA1DAoITGQRBQwdC0xABxgdDBBMVRkDGhtYQRMxBB0AWCpaAxlJHAwNQQQCSQ0BTFoEAgwDHkxSA1EaABcCExECSQAWCRMfF0kbEAleUBgaTxcCHQ"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})
end

return
end

hqy.autoFishWanted = false

axso(rep)
end,
}, _d("UgUFBjAeBUAY"))

hqy.autoFishToggle = qvv

cm:Toggle({
Name = _d("YxUDDwobGBMTEBobC0wbCENJAw0PWFk"),
Default = true,
Callback = function(iqiq)
hqy.perfectCasts = iqiq

if iqiq and hqy.usingGameAuto then
mvys()
end
end,
}, _d("QxUDDwobGGwTEBobCzNLQi4FGhsH"))

cm:Toggle({
Name = _d("ZyBRHQBYLlIJ"),
Default = false,
Callback = function(pjoh)
hqy.tpToBay = pjoh

bni()
end,
}, _d("RwAuHQAnDlIJ"))

local eyd
local plzt

eyd = cm:Toggle({
Name = _d("ZxUdDB8XHkdQBQZPPAlWABQaG1g7UgQUGw"),
Default = false,
Callback = function(jgq)
if jgq then

hqy.deepWalk = false
hqy.deepDiveAt = 0
hqy.deepPhase = _d("WhQdDA")
hqy.deepStageAt = 0

pcall(function()
plzt:UpdateState(false)
end)

hqy.deepZone = true

task.spawn(function()
if not qogz.settle() and hqy.deepZone and not hqy.deepWalk then
lszo:Notify({
Title = _d("ZxUdDB8XHkdQBQZPPAlWABQaG1g7UgQUGw"),
Description = _d("ZxgUSQsdCUNdBggbHR4THRAZTxYJRRUDSQMXDVcVFUdPLBlBHlEdBx1MQAcYHQwQTFwWF0kOFggTHx9JDh8NWh5RHQBYHlYEAxBB"),
Lifetime = 8,
})
end
end)

bni()

return
end

if hqy.deepWalk then
return
end

hqy.deepZone = false
hqy.deepDiveAt = 0
hqy.deepPhase = _d("WhQdDA")
hqy.deepStageAt = 0

task.spawn(function()
pcall(function()
fyeb.TeleportToWorld:FireServer(_d("Xx8TCxY"))
end)
end)

bni()
end,
}, _d("VxUUGTAPDUcVAzYNHR9HLx0cDBM"))

plzt = cm:Toggle({
Name = _d("ZBEdAk8MAxM0FAwfHR9HUCYIGx0e"),
Default = false,
Callback = function(lxkq)
if lxkq then

local fmo = qogz.customIsland or qogz.islandOf(qogz.spot())

if hqy.islandLocked and fmo == _d("UhIQBwsXAlYULgAcFA1dFA") then
hqy.deepWalk = false

pcall(function()
plzt:UpdateState(false)
end)

lszo:Dialog({
Title = _d("ZBEdAk8MAxM0FAwfHR9HUCYIGx0eEx4UDAsLTEcYFEkuGg1dFB4HChxMegMdCAEc"),
Description = _d("ZxgUSQYLAFIeFUkGC0xfHxICChxMXB5RHQcRHxMREgoADQJHXlEmAR1MQRUTAB0MBBMfAQwBC0xaBFFETw0CRxkdSRsQCV1QBQEKWAtSHRRJBxkfEx4eSRsdAFYAHhsbWBhbFQMMTwwDEwQQAgpW"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})

return
end

hqy.deepWalk = true
hqy.deepDiveAt = 0
hqy.deepPhase = _d("WhQdDA")
hqy.deepStageAt = 0

pcall(function()
eyd:UpdateState(false)
end)

hqy.deepZone = true

task.spawn(function()
qogz.walk()
end)

bni()

return
end

if not hqy.deepWalk then
return
end

hqy.deepWalk = false
hqy.deepZone = false
hqy.deepDiveAt = 0
hqy.deepPhase = _d("WhQdDA")
hqy.deepStageAt = 0

task.spawn(function()
pcall(function()
fyeb.TeleportToWorld:FireServer(_d("Xx8TCxY"))
end)
end)

bni()
end,
}, _d("RBEdAjAcCVYALh4ODAlB"))

cm:Paragraph({
Header = _d("dxUUGQoLGBMnEB0KCg"),
Body = _d("cR8FAU8LG1oEEgEKC0xfER8NTxcCEwQZDE8vBV0UHAADFEx6Ax0MTxwDUBtRRE8MBFZQFQwKCAlABFEbBhYLH1AmAAEcG1ICFUk4GRhWAgJJQlgfXFAFHB0WBV0XUQYBHUxcHlEPHRcBExEfEBgQCUEVUQABWBhbFVEODhUJExIDAAEfHxMJHhxPGg1QG1EdAFgYWxEFSRwIA0dee2M4GQBYUBIGGR0eQFAFAQpYAFIDBUkcDB5WBBIBTxcCExYeBhtYG1oEGUkbEAkTFxAECl8fEx8GB08ZAlodEB0GFwIIUCUMAx0cXAIFSR8NGEBQCAYaWBhbFQMMTw8FRxgeHBtYGFsVUR4OFAcdUCUGTxADXxRRCE8cBVUWFBsKFhgTAwEGG1gFXQMFDA4cQBMCBAdPOS9xKDUMCgg7UgQUG0EbDUMEBBsKUEUTGR9JGxAJExMeBxwXAFZQBgEGFAkTAwUIARwFXRdRBgFYBUde"),
})

local vdt

vdt = cm:Paragraph({
Header = _d("dRkCAQYWCxMDBQgbHQ"),
Body = bb(),
})

local orsr = vzmy:Section({
Side = _d("fxUXHQ"),
})

orsr:Header({
Name = _d("cgUFBk8wDV8cHh4KHQITJB4eCgqcrP7ymfDe6w"),
})

xoi.runToggle = orsr:Toggle({
Name = _d("cgUFBk8wDV8cHh4KHQITJB4eCgo"),
Default = false,
Callback = function(qqrm)
xoi.run.enabled = qqrm
xoi.run.pending = false
xoi.run.pendingUntil = 0

if qqrm then
xoi.requestProgress()
end
end,
}, _d("UgUFBjAQDV8cHh4KHQJsBB4eCgo"))

xoi.run.team = math.clamp(math.floor(tonumber(rv.bossTeams.towerPicked.halloween) or 1), 1, 4)
xoi.run.teamChosen = tonumber(rv.bossTeams.towerPicked.halloween) ~= nil
xoi.run.building = true

xoi.run.teamDropdown = orsr:Dropdown({
Name = _d("ZxUQBA"),
Search = false,
Multi = false,
Required = false,
Default = xoi.run.team,
Options = { _d("ZxUQBE9J"), _d("ZxUQBE9K"), _d("ZxUQBE9L"), _d("ZxUQBE9M") },
Callback = function(rgs)
local volc = type(rgs) == _d("RxETBQo") and rgs[1] or rgs
local qzog = type(volc) == _d("QAQDAAEf") and tonumber(volc:match(_d("G1UVQkY"))) or nil

if not qzog then
return
end

xoi.run.team = qzog

if xoi.run.building then
return
end

xoi.run.teamChosen = true
rv.bossTeams.towerPicked.halloween = qzog
rv.bossTeams.save()

pcall(function()
xoi.run.teamDropdown:UpdateName(_d("ZxUQBE+a7JFQ") .. (volc or (_d("ZxUQBE8") .. tostring(qzog))))
end)
end,
}, _d("RxUQBDAQDV8cHh4KHQI"))

pcall(function()
xoi.run.teamDropdown:UpdateSelection(_d("ZxUQBE8") .. tostring(xoi.run.team))
xoi.run.teamDropdown:UpdateName(_d("ZxUQBE+a7JFQJQwOFUw") .. tostring(xoi.run.team))
end)

xoi.run.building = false

xoi.toggle = orsr:Toggle({
Name = _d("cgUFBk8NHFQCEA0KCw"),
Default = false,
Callback = function(jdfj)
if jdfj and not next(xoi.upgrade.selected) then
xoi.upgrade.enabled = false

pcall(function()
xoi.toggle:UpdateState(false)
end)

lszo:Dialog({
Title = _d("cgUFBk8NHFQCEA0KCw"),
Description = _d("YxkSAk8ZGBMcFAgcDExcHhRJHw0BQxsYB08NHFQCEA0KWAVdUAUBClgIQR8BDQAPAhMWGBscDEweUDAcGxdMRgAWGw4cCUBQAhkKFghAUAgGGgpMeRESAk8XSxM8EAcbHR5dA1EGAVgYWxUcSQ4LTEAfHgdPGR8TCR4cTxsNXVAQDwkXHldQHgcKVg"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})

return
end

xoi.upgrade.enabled = jdfj

if jdfj then
xoi.request()
end
end,
}, _d("UgUFBjANHFQCEA0KCw"))

orsr:Dropdown({
Name = _d("YwUcGQQRAhMFAQ4dGQhWAw"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = xoi.labels,
Callback = function(seq)
local tjiw = {}

if type(seq) == _d("RxETBQo") then
for rfu, tmf in ipairs(xoi.upgrades) do
if seq[tmf.name] then
tjiw[tmf.id] = true
end
end
end

xoi.upgrade.selected = tjiw

if not next(tjiw) and xoi.upgrade.enabled then
xoi.upgrade.enabled = false

pcall(function()
xoi.toggle:UpdateState(false)
end)

lszo:Dialog({
Title = _d("cgUFBk8NHFQCEA0KC0xcFhc"),
Description = _d("fR8FAQYWCxMZAkkcHQBWEwUMC1gCXAddSRwXTEcYFBsKWAVAUB8GGxAFXRdRBQoeGBMEHkkNDRUdUCEADBNMUh5RHB8fHlIUFEkOFggTBAQbAVgFR1ATCAwTTFweXw"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})
end
end,
}, _d("QwUcGQQRAmwFAQ4dGQhWAw"))

xoi.paragraph = orsr:Paragraph({
Header = _d("YwUcGQQRAkA"),
Body = xoi.text(),
})

local dyf = vzmy:Section({
Side = _d("fxUXHQ"),
})

dyf:Header({
Name = _d("exEdBQAPCVYeURoHFxzD7/7Dn+f+sw"),
})

dyf:Toggle({
Name = _d("cgUFBk86GUo"),
Default = false,
Callback = function(pr)
ntv.enabled = pr
ntv.pending = nil

if pr then
fyeb.RequestItemSync:FireServer()
task.spawn(function()
xoi.open(true)
end)
end
end,
}, _d("UgUFBjAaGUo"))

dyf:Button({
Name = _d("fAAUB08LBFwA"),
Callback = function()
task.spawn(function()
local uue = xoi.open(true)

lszo:Notify({
Title = _d("exEdBQAPCVYeURoHFxw"),
Description = uue and _d("cB8EBxsdHhMfAQwBWEETFBAAAwFMQAQeCgRYHlYRFUkJCgNeUAUBClgfVgIHDB1W") or tostring(xoi.trip.lastResult),
Lifetime = 6,
})

if fi then
pcall(function()
fi:UpdateBody(nxf())
end)
end
end)
end,
})

dyf:Dropdown({
Name = _d("egQUBBw"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = xoi.shopLabels,
Callback = function(nhxd)
local ibe = {}

if type(nhxd) == _d("RxETBQo") then
for tt, alpi in ipairs(xoi.shopItems) do
if nhxd[alpi.label] then
ibe[alpi.id] = true
end
end
end

ntv.selected = ibe
end,
}, _d("WgQUBBw"))

fi = dyf:Paragraph({
Header = _d("YAQeCgRYShMCFBoKDA"),
Body = nxf(),
})

local jfa = vzmy:Section({
Side = _d("YRkWARs"),
})

jfa:Paragraph({
Header = _d("YBUQGgAWDV9QFB8KFhhA"),
Body = _d("exEdBQAPCVYeUQAcWABaBhRTTwwEVlACAQAITFIeFUkbEAkTJB4eCgpMUR8FAU8PA0EbX2NlORlHH1EhDhQAXAcUDAFYOFwHFBtPCxhSAgUaTwEDRgJRDQodHFYDBUkaFgBcExoMC1geXB8cR087AFYRAwABH0xABBAOCgtMQxEIGk8yDVAbUQZIWCBSHgUMHRYfH1AQBwtYLUYEHkkaCAtBERUMHFgfQxUfDRxYGFsVHEkAFkxDFQMEDhYJXQRRHQAPCUFQExwJHh8d"),
})

nr.worldBoss.section = vzmy:Section({
Side = _d("YRkWARs"),
})

nr.worldBoss.section:Header({
Name = _d("cgUFBk8/AFwSEAVPOgNAAw"),
})

nr.worldBoss.section:Paragraph({
Header = _d("YwIYBh0RGEo"),
Body = _d("YREfAhxYG1oEGUkbEAkTAhAACwtWEwQZDE8MA0QVA0kcDA1dFAJJCxcbXVAXBh1YBUdcUQgBHExyBQUGTzY8cFAeHBsKDV0bAkkGDEI5eiUBClgKWhcZHU8MDVgVAkkOWB9fHwVFTwsDExkFSQwXGV0EAkkOC0xSHlEnPztMUREFHQMdTEcYFBsKVg"),
})

nr.worldBoss.toggle = nr.worldBoss.section:Toggle({
Name = _d("cgUFBk8/AFwSEAVPOgNAAw"),
Default = false,
Callback = function(ps)
if ps and not nr.worldBoss.teamChosen then
nr.worldBoss.enabled = false

pcall(function()
nr.worldBoss.toggle:UpdateState(false)
end)

lszo:Dialog({
Title = _d("cgUFBk8/AFwSEAVPOgNAA1EHCh0IQFAQSRsdDV4"),
Description = _d("YxkSAk8MBFZQBQwOFUxaBFEaBxcZXxRRDwYfBEdQBgAbEExaHlEdBx1MZxUQBE8cHlwAFQYYFkxVGQMaG1ZMZxgUSRwbHloABUkHGR8TBB5JHA8FRxMZSRsQDUdQAgUADEtAUAUMDhVMURUXBh0dTEcYFEkJEQtbBFEaGxkeRwNdSQ4WCBMkFAgCWF0TGQJJABYASlAFAQpYCFYWEBwDDEweUBgdTxEfEx4eHU8ZTFAYHgAMHUxGHgUAA1gVXAVRBA4TCRMZBUc"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})

return
end

if ps then
local rdbb = nr.worldBoss.team
local yfw = rv.bossTeams.teamCards(rdbb)

if yfw == 0 then
nr.worldBoss.enabled = false

pcall(function()
nr.worldBoss.toggle:UpdateState(false)
end)

lszo:Dialog({
Title = _d("ZxUQBE8") .. tostring(rdbb) .. _d("ExgQGk8WAxMTEBsLCw"),
Description = _d("YwUFSQ4MTF8VEBobWANdFVEKDgoIExkfSTsdDV5Q") .. tostring(rdbb) .. _d("E1g1DAwTHxpcUQYdWBxaExpJDlgYVhEcSRsQDUdQEAUdHQ1XCVEBDgtMUBEDDRxYBV1QBQEKWDhWERxJCwoDQxQeHgFUTEcYFAdPDBlBHlEoGgwDEzcdBg0ZABMyHhocWA5SExpJABZC"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})

return
end
end

nr.worldBoss.enabled = ps
nr.worldBoss.holdUntil = 0

nr.worldBoss.nextFightAt = 0

if not ps then
nr.worldBoss.setRepeat(false)
end

if ps then

nr.worldBoss.syncedAt = 0
nr.worldBoss.askedAt = 0
nr.worldBoss.chainWaitAt = nil
nr.worldBoss.repeatSeeded = false
nr.worldBoss.seenKills = nil
nr.worldBoss.progressAt = os.clock()
nr.worldBoss.kickAt = 0
end
end,
}, _d("UgUFBjAfAFwSEAUwGgNAAw"))

nr.worldBoss.claimToggle = nr.worldBoss.section:Toggle({
Name = _d("cgUFBk8bAFIZHEkdHRtSAhUa"),
Default = false,
Callback = function(nia)
nr.worldBoss.autoClaim = nia
nr.worldBoss.claimAt = 0

if nia then
nr.worldBoss.syncedAt = 0
nr.worldBoss.askedAt = 0
nr.worldBoss.chainWaitAt = nil
end
end,
}, _d("UgUFBjAbAFIZHDYdHRtSAhUa"))

nr.worldBoss.fullToggle = nr.worldBoss.section:Toggle({
Name = _d("YAQeGU8PBFYeUR0HHUxREQNJCREAXwM"),
Default = false,
Callback = function(rbj)
nr.worldBoss.stopAtFull = rbj
nr.worldBoss.meterAt = 0
end,
}, _d("RBIuGhsXHGwRBTYJDQBf"))

nr.worldBoss.walkToggle = nr.worldBoss.section:Toggle({
Name = _d("ZBEdAk8MAxMXHQYNGQATEh4aHA"),
Default = false,
Callback = function(gffw)
nr.worldBoss.walkToBoss = gffw

nr.worldBoss.travelUntil = 0
end,
}, _d("RBIuHg4UB2wEHjYNFx9A"))

nr.worldBoss.bodyParagraph = nr.worldBoss.section:Paragraph({
Header = _d("cR8CGg"),
Body = nr.worldBoss.bodyText(),
})

nr.worldBoss.section:Header({
Name = _d("cR8CGk8LBFwAUZnw9vPcyP4"),
})

nr.worldBoss.shopParagraph = nr.worldBoss.section:Paragraph({
Header = _d("eh5RGhsXD1g"),
Body = nr.worldBoss.shopText(),
})

nr.worldBoss.itemsDropdown = nr.worldBoss.section:Dropdown({
Name = _d("egQUBBw"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = nr.worldBoss.shopOptions(),
Callback = function(ip)
local hz = {}

if type(ip) == _d("RxETBQo") then
for xvxi, cql in pairs(ip) do
local kwdb = nr.worldBoss.labelToId[xvxi]

if cql and kwdb then
hz[kwdb] = true
end
end
end

nr.worldBoss.selected = hz

if not next(hz) and nr.worldBoss.autoBuy then
nr.worldBoss.autoBuy = false

pcall(function()
nr.worldBoss.shopToggle:UpdateState(false)
end)
end
end,
}, _d("WgQUBBwnXg"))

nr.worldBoss.shopToggle = nr.worldBoss.section:Toggle({
Name = _d("cgUFBk8aGUo"),
Default = false,
Callback = function(ome)
if ome and not next(nr.worldBoss.selected) then
nr.worldBoss.autoBuy = false

pcall(function()
nr.worldBoss.shopToggle:UpdateState(false)
end)

lszo:Dialog({
Title = _d("cgUFBk8aGUo"),
Description = _d("YxkSAk8ZGBMcFAgcDExcHhRJBgwJXlAYB08xGFYdAkkJER5ABFFETzkZRx9RCxoBTEAAFAcLC0xhFRVJPREOUR8fSSIdCFIcAkkAFkxEGBAdCg4JQVAYHU8bDV1QEA8JFx5XUBcbABVMRxgQHU8UBUAEXw"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})

return
end

nr.worldBoss.autoBuy = ome
end,
}, _d("UgUFBjAaGUovQw"))

nr.worldBoss.section:Button({
Name = _d("cQUISRwdAFYTBQwL"),
Callback = function()
if not next(nr.worldBoss.selected) then
lszo:Dialog({
Title = _d("cQUISRwdAFYTBQwL"),
Description = _d("YxkSAk8ZGBMcFAgcDExcHhRJBgwJXlAYB08xGFYdAkkJER5ABF8"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})

return
end

local nuu = nr.worldBoss.buy()

if nuu == 0 then
lszo:Dialog({
Title = _d("cQUISRwdAFYTBQwL"),
Description = _d("fR8FAQYWCxMHEBpPGgNGFxkdVVgCXFAcDAsZAEBQBQZPCxxWHhVFTx0aVgIISR8RD1hQGBpPFxlHUB4PTwsYXBMaRU8XHhMEGQxPGgNAA1EaBxccExgQGk8WA0dQAhABGwlXUAgMG1Y"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})
end
end,
})

nr.worldBoss.building = true

nr.worldBoss.teamDropdown = nr.worldBoss.section:Dropdown({
Name = _d("ZxUQBA"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("ZxUQBE9J"), _d("ZxUQBE9K"), _d("ZxUQBE9L"), _d("ZxUQBE9M") },
Callback = function(cxk)
if nr.worldBoss.building then
return
end

local qy = type(cxk) == _d("RxETBQo") and cxk[1] or cxk
local dra = type(qy) == _d("QAQDAAEf") and tonumber(qy:match(_d("G1UVQkY"))) or nil

if dra then
nr.worldBoss.team = dra
nr.worldBoss.teamChosen = true
rv.bossTeams.save()
end

pcall(function()
nr.worldBoss.teamDropdown:UpdateName(_d("ZxUQBE+a7JFQ") .. (qy or _d("ZxUQBE9J")))
end)
end,
}, _d("RxUQBA"))

pcall(function()
nr.worldBoss.teamDropdown:UpdateSelection(_d("ZxUQBE8") .. tostring(nr.worldBoss.team))
nr.worldBoss.teamDropdown:UpdateName(_d("ZxUQBE+a7JFQJQwOFUw") .. tostring(nr.worldBoss.team))
end)

task.defer(function()
nr.worldBoss.building = false
end)

nr.misc = nr.misc or {}

nr.misc.expeditions = {
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
rewardPath = _d("cjMzMUAdFEMVFQAbEQNdA18DHBcC"),
module = nil,
action = nil,
section = nil,
paragraph = nil,
claimToggle = nil,
startToggle = nil,
dropdown = nil,
}

function nr.misc.expeditions.data()
local dvdl = nr.misc.expeditions

if dvdl.module ~= nil then
return dvdl.module or nil
end

local jzpw, pyi = pcall(function()
return require(gs.ModuleScripts.ExpeditionData)
end)

dvdl.module = jzpw and pyi or false

return dvdl.module or nil
end

function nr.misc.expeditions.tiers()
local aoxp = nr.misc.expeditions.data()

return aoxp and aoxp.Tiers or {}
end

function nr.misc.expeditions.remote()
local nbm = nr.misc.expeditions

if nbm.action and nbm.action.Parent then
return nbm.action
end

nbm.action = yhti(_d("dggBDAsRGFofHygMDAVcHg"), 3)

return nbm.action
end

function nr.misc.expeditions.clockText(nef)
local pxml = nr.misc.expeditions.data()

if pxml and type(pxml.formatDuration) == _d("VQUfChsRA10") then
return pxml.formatDuration(nef)
end

local lf = math.max(0, math.floor((nef or 0) / 60))

return tostring(lf) .. _d("Xg")
end

function nr.misc.expeditions.status(dgkq)
local mshh = nr.misc.expeditions
local stmk = mshh.state
local avt = type(stmk) == _d("RxETBQo") and type(stmk.active) == _d("RxETBQo") and stmk.active[dgkq] or nil

if type(avt) ~= _d("RxETBQo") then
return _d("UgYQAAMZDl8V"), nil
end

local wkf = (tonumber(avt.endsAt) or 0) - (os.time() + (mshh.offset or 0))

if wkf <= 0 then
return _d("QRUQDRY"), wkf
end

return _d("QQUfBwYWCw"), wkf
end

function nr.misc.expeditions.candidates(sa)
local ebk = nr.misc.expeditions
local bf = ebk.data()
local gfn = ebk.state
local dpz = bf and bf.ById and bf.ById[sa]
local gw = {}

if not (dpz and type(gfn) == _d("RxETBQo") and type(gfn.eligible) == _d("RxETBQo")) then
return gw
end

for haya, am in ipairs(gfn.eligible) do
if type(am) == _d("RxETBQo") and am.cardId then
local tz = tonumber(am.rarity) or 0
local bgi = (tonumber(am.count) or 0) - (tonumber(am.locked) or 0)

if tz >= (tonumber(dpz.minRarity) or 0) and bgi > 0 then

table.insert(gw, { cardId = am.cardId, borderLevel = am.borderLevel, rarity = tz, count = bgi })
end
end
end

table.sort(gw, function(rso, tbj)
if rso.rarity == tbj.rarity then
return tostring(rso.cardId) < tostring(tbj.cardId)
end

return rso.rarity < tbj.rarity
end)

return gw
end

function nr.misc.expeditions.cards(huj, wcqd)
local ivd = nr.misc.expeditions
local vpg = ivd.data()
local pm = vpg and tonumber(vpg.CardsPerExpedition) or 4
local qzte = {}
local xpmn = ivd.candidates(huj)

wcqd = wcqd or {}

local function ntd(ii, ymf)
local tn = tostring(ii.cardId) .. _d("EA") .. tostring(ii.borderLevel)

while #qzte < pm and (wcqd[tn] or 0) < ymf do
wcqd[tn] = (wcqd[tn] or 0) + 1

table.insert(qzte, { cardId = ii.cardId, borderLevel = ii.borderLevel })
end
end

for euhj, vuko in ipairs(xpmn) do
if #qzte >= pm then
break
end

if vuko.count > 1 then
ntd(vuko, vuko.count - 1)
end
end

if #qzte < pm then
for dxvd, ttk in ipairs(xpmn) do
if #qzte >= pm then
break
end

ntd(ttk, ttk.count)
end
end

return qzte
end

function nr.misc.expeditions.available(esmm)
local rwo = nr.misc.expeditions
local ons = rwo.data()
local wz = ons and tonumber(ons.CardsPerExpedition) or 4
local zk = 0

for gtpc, qgbb in ipairs(rwo.candidates(esmm)) do
zk = zk + qgbb.count

if zk >= wz then
return wz
end
end

return zk
end

function nr.misc.expeditions.text()
local eqat = nr.misc.expeditions

if type(eqat.state) ~= _d("RxETBQo") then
return _d("YRUQDQYWCxMVCRkKHAVHGR4HHFZCHQ")
end

local mtz = eqat.data()
local agmy = mtz and tonumber(mtz.CardsPerExpedition) or 4
local qcq = {}

for sswh, swso in ipairs(eqat.tiers()) do
local ryar, hg = eqat.status(swso.id)
local dva = tostring(swso.name)

if eqat.tiersWanted[swso.id] then
dva = _d("0fDTSQ") .. dva
end

if ryar == _d("QQUfBwYWCw") then
dva = dva .. _d("OSIUHRoKAkBQGAdP") .. eqat.clockText(hg)
elseif ryar == _d("QRUQDRY") then
dva = dva .. _d("OSIUCAsBTEcfUQoDGQVe")
else
local syw = eqat.available(swso.id)
dva = dva .. _d("OQ") .. tostring(syw) .. _d("Ex8XSQ") .. tostring(agmy) .. _d("ExMQGwsL")

if syw >= agmy then
dva = dva .. _d("OTMQB08LGFICBQ")
end
end

table.insert(qcq, dva)
end

table.insert(qcq, _d("dgYUGxZYCEYAHQAMGRhWUBgaTwsJXQRRCwoeA0EVUQhPGw1BFFEQAA1MWx8dDU8XAlZQHg9DWA1dFFEGAR1MUB8BEE8XChMRUQoOCggTGQJJBB0cR1ATCAwTTEQYFBsKWBhbFVEdBh0eExMQB08LHFICFEkGDEweUBBJAxcCVlASBh8BTFweHRBPHwNWA1EGGgxMRBgUB08MBFZQBQAKCkxQER8HAAxMURVRDwYUAFYUUR4GDARcBQVJBgxC"))

return table.concat(qcq, _d("OXo"))
end

function nr.misc.expeditions.request()
local tcg = nr.misc.expeditions
local bml = tcg.remote()

if bml then
pcall(function()
bml:FireServer(_d("QRUAHAoLGA"))
end)
end

tcg.askedAt = os.clock()
end

function nr.misc.expeditions.claim()
local fyk = nr.misc.expeditions

if os.clock() < fyk.claimAt then
return false
end

local ytox = false

for rla, bpy in ipairs(fyk.tiers()) do
if fyk.status(bpy.id) == _d("QRUQDRY") then
ytox = true
break
end
end

if not ytox then
return false
end

local wmp = fyk.remote()

if not wmp then
return false
end

pcall(function()
wmp:FireServer(_d("UBwQAAI5AF8"))
end)

fyk.claimAt = os.clock() + 3
fyk.askedAt = 0

return true
end

function nr.misc.expeditions.popup()
local urin = qf:FindFirstChild(_d("dggBDAsRGFofHy4aEQ"))

return urin and urin:FindFirstChild(_d("cBwQAAIoA0MFAQ")) or nil
end

function nr.misc.expeditions.closeRewards()
local fj = nr.misc.expeditions
local vs = fj.popup()

if not (vs and vs.Visible) then
return false
end

local pdcx = vs:FindFirstChild(_d("fBszHBsMA10"))

if pdcx and type(firesignal) == _d("VQUfChsRA10") then
pcall(firesignal, pdcx.Activated)
end

pcall(function()
vs.Visible = false
end)

return true
end

function nr.misc.expeditions.rewardsText()
local loee = nr.misc.expeditions

if #loee.rewardLog == 0 then
return _d("fR8FAQYWCxMTHQgGFQlXUAgMG1ZMdgYUGxZYHFIJHhwbWBhbFVEaCgoaVgJRGgoWCEBQHQgBHB8TGBQbClgbWgQZSQYMHxMEGAwdWA1dFFEAGwtMUB8fHQoWGEBe")
end

local wnp = {}

for grxi, ap in ipairs(loee.rewardLog) do
local yuk = {}
local qbs = ap.items or {}

for lew, wsih in ipairs(qbs) do
if lew > 4 then
table.insert(yuk, _d("GA") .. tostring(#qbs - 4) .. _d("Ex0eGwo"))
break
end

local gdz = wsih.id or wsih.itemId
local xe = gdz and woa.ById[gdz] or nil
local hpz = (xe and xe.name) or (wsih.potions and _d("Yx8FAAAWHw")) or tostring(gdz or _d("QRUGCB0c"))

table.insert(yuk, hpz .. _d("Ewg") .. tostring(wsih.count or wsih.max or wsih.min or 1))
end

local dkfi = math.max(0, os.time() - (tonumber(ap.at) or os.time()))
local nixc

if dkfi < 60 then
nixc = tostring(dkfi) .. _d("QFAQDgA")
elseif dkfi < 3600 then
nixc = tostring(math.floor(dkfi / 60)) .. _d("XlAQDgA")
else
nixc = tostring(math.floor(dkfi / 3600)) .. _d("W1AQDgA")
end

table.insert(wnp, tostring(ap.title) .. _d("E7LGSQ") .. nixc)
table.insert(wnp, table.concat(yuk, _d("H1A")))
end

return table.concat(wnp, _d("OQ"))
end

function nr.misc.expeditions.saveRewards()
local cvok = nr.misc.expeditions

if type(writefile) ~= _d("VQUfChsRA10") then
return false
end

return pcall(function()
if type(makefolder) == _d("VQUfChsRA10") and type(isfolder) == _d("VQUfChsRA10") and not isfolder(_d("cjMzMQ")) then
makefolder(_d("cjMzMQ"))
end

writefile(cvok.rewardPath, game:GetService(_d("ewQFGTwdHkUZEgw")):JSONEncode({
rewards = cvok.rewardLog,
updatedAt = os.time(),
}))
end)
end

function nr.misc.expeditions.loadRewards()
local qkap = nr.misc.expeditions

if type(readfile) ~= _d("VQUfChsRA10") or type(isfile) ~= _d("VQUfChsRA10") then
return false
end

local mzed, pkjj = pcall(function()
if not isfile(qkap.rewardPath) then
return nil
end

return readfile(qkap.rewardPath)
end)

if not mzed or type(pkjj) ~= _d("QAQDAAEf") or #pkjj == 0 then
return false
end

local yaen

if not pcall(function()
yaen = game:GetService(_d("ewQFGTwdHkUZEgw")):JSONDecode(pkjj)
end) then
return false
end

if type(yaen) ~= _d("RxETBQo") or type(yaen.rewards) ~= _d("RxETBQo") then
return false
end

qkap.rewardLog = {}

for as, lsyo in ipairs(yaen.rewards) do
if type(lsyo) == _d("RxETBQo") and type(lsyo.items) == _d("RxETBQo") then
table.insert(qkap.rewardLog, {
at = tonumber(lsyo.at) or os.time(),
title = tostring(lsyo.title or _d("dggBDAsRGFofHw")),
items = lsyo.items,
})
end
end

return #qkap.rewardLog > 0
end

function nr.misc.expeditions.start(myxr, bub)
local hdaj = nr.misc.expeditions

if hdaj.status(myxr) ~= _d("UgYQAAMZDl8V") then
return false
end

if os.clock() < (hdaj.startedAt[myxr] or 0) then
return false
end

local jz = hdaj.remote()

if not jz then
return false
end

local ylgu = hdaj.cards(myxr, bub)
local gzqs = hdaj.data()
local kktx = gzqs and tonumber(gzqs.CardsPerExpedition) or 4

if #ylgu < kktx then
return false
end

local jsim = {}

for bkcu, mpy in ipairs(ylgu) do
jsim[bkcu] = { cardId = mpy.cardId, borderLevel = mpy.borderLevel }
end

pcall(function()
jz:FireServer(_d("QAQQGxs"), myxr, jsim)
end)

hdaj.startedAt[myxr] = os.clock() + 6
hdaj.askedAt = 0

return true
end

nr.misc.icon = function()
local jf = gethui()

for zrql, yd in ipairs(jf:QueryDescendants(_d("eh0QDgo0DVEVHQ"))) do
if yd.Name == _d("ZxETIAIZC1Y") then
local bubu = yd.Parent
local paa = bubu and bubu:FindFirstChild(_d("ZxETOhgRGFAYFBshGQFW"))

if paa and paa.Text == _d("fhkCCgoUAFIeFAYaCw") then
if yd:GetAttribute(_d("cjMzMSIRH1A5EgYB")) then
return true
end

yd:SetAttribute(_d("cjMzMSIRH1A5EgYB"), true)
yd.Image = _d("")
yd.BackgroundTransparency = 1

local function bgjd(ntxm, yz, act, iog, mfi, iqv, qwt)
local kr = Instance.new(ntxm)

kr.Size = UDim2.fromOffset(mfi, iqv)
kr.Position = UDim2.fromOffset(act, iog)
kr.BackgroundColor3 = yz
kr.BorderSizePixel = 0
kr.Parent = yd

if qwt then
local pjl = Instance.new(_d("ZjkyBh0WCUE"))
pjl.CornerRadius = UDim.new(0, qwt)
pjl.Parent = kr
end

return kr
end

local tfzx = Color3.fromRGB(168, 170, 176)

local function ya(gtlj, wd, yxaz, kqwg, uzzi)
local pje = bgjd(_d("dQIQBAo"), tfzx, gtlj, wd, yxaz, kqwg, uzzi)

pje.BackgroundTransparency = 1

local fgq = Instance.new(_d("ZjkiHR0XB1Y"))

fgq.Color = tfzx
fgq.Thickness = 1.4
fgq.LineJoinMode = Enum.LineJoinMode.Round
fgq.Parent = pje

return pje
end

ya(3, 1, 6, 4, 1)
ya(1, 4, 16, 12, 2)

local wor = bgjd(_d("dQIQBAo"), tfzx, 3, 8, 5, 5)

wor.BackgroundTransparency = 1
wor.ClipsDescendants = true

local uyw = bgjd(_d("dQIQBAo"), tfzx, 0, 1, 5, 5)

uyw.Rotation = 45
uyw.Parent = wor

bgjd(_d("dQIQBAo"), tfzx, 9, 9, 4, 4, 4)
bgjd(_d("dQIQBAo"), tfzx, 13, 10, 3, 3, 1)

return true
end
end
end

return false
end

nr.misc.tab = lpbv:Tab({
Name = _d("fhkCCgoUAFIeFAYaCw"),

Image = _d(""),
})

task.defer(function()
for spp = 1, 20 do
if nr.misc.icon() then
break
end

task.wait(0.25)
end
end)

local nalq = {
onWeather = false,
weathers = {},
weatherPotions = {},
weatherAmount = 1,

weatherSpent = nil,

afterGiveUp = false,
giveUpPotions = {},
giveUpAmount = 1,

armedAt = 0,

syncedAt = 0,
shown = nil,
lastText = _d("fR8FAQYWCxMAHhkfHQgTCRQdQQ"),
tab = nil,
weatherSection = nil,
giveUpSection = nil,
weatherParagraph = nil,
giveUpParagraph = nil,
weatherToggle = nil,
giveUpToggle = nil,
}

getgenv().ACBXPop = nalq

function nalq.options()
local rzaj = {}

for gxcl, fzg in pairs(woa.ById) do
if fzg.type == _d("Qx8FAAAW") and type(fzg.name) == _d("QAQDAAEf") then
rzaj[#rzaj + 1] = fzg.name
end
end

table.sort(rzaj)

return rzaj
end

function nalq.idOf(bbx)
for crnf, jix in pairs(woa.ById) do
if jix.type == _d("Qx8FAAAW") and jix.name == bbx then
return crnf
end
end

return nil
end

function nalq.count(gk)
local on = ntv.balances

return tonumber(on and on[gk]) or 0
end

function nalq.pop(vk, awnx, cgt)
local qxco = {}

for peqt, hxb in pairs(vk) do
if hxb then
local lded = nalq.idOf(peqt)

if lded then
local ubt = nalq.count(lded)

if ubt <= 0 then
qxco[#qxco + 1] = peqt .. _d("E11RBwAWCRMcFA8b")
else
local notz = math.clamp(math.floor(tonumber(awnx) or 1), 1, ubt)

pcall(function()
fyeb.UseItem:FireServer(lded, notz)
end)

qxco[#qxco + 1] = peqt .. _d("Ewg") .. notz
task.wait(0.3)
end
end
end
end

if #qxco == 0 then
return false
end

nalq.lastText = cgt .. _d("E11R") .. table.concat(qxco, _d("H1A"))

pcall(function()
lszo:Notify({
Title = _d("Yx8B"),
Description = nalq.lastText,
Lifetime = 5,
})
end)

return true
end

function nalq.status()
local ay = mty.weatherWanted(nalq.weathers)
local ni = mty.weatherNow or _d("Rh4aBwAPAg")
local adkf = {
_d("ZBUQHQcdHglQ") .. ni .. (ay and (_d("E1gBBh8IBV0XS0k") .. ay .. _d("Gg")) or _d("")),
_d("fxECHVVY") .. nalq.lastText,
}

return table.concat(adkf, _d("OQ"))
end

function nalq.giveUpStatus()
if nalq.armedAt > 0 then
return _d("cgIcDAtYQRMHEAAbEQJUUBcGHVgYWxVRGxoWTEcfUQwBHEI5PBAaG0JM") .. nalq.lastText
end

return _d("ehQdDEFyIFIDBVNP") .. nalq.lastText
end

nalq.tab = lpbv:Tab({
Name = _d("Yx8B"),

Image = _d(""),
})

nalq.icon = function()
local bpu = gethui()

for lzi, fp in ipairs(bpu:QueryDescendants(_d("eh0QDgo0DVEVHQ"))) do
if fp.Name == _d("ZxETIAIZC1Y") then
local qjaa = fp.Parent
local ihi = qjaa and qjaa:FindFirstChild(_d("ZxETOhgRGFAYFBshGQFW"))

if ihi and ihi.Text == _d("Yx8B") then
if fp:GetAttribute(_d("cjMzMT8XHHoTHgc")) then
return true
end

fp:SetAttribute(_d("cjMzMT8XHHoTHgc"), true)
fp.Image = _d("")
fp.BackgroundTransparency = 1

local oay = Color3.fromRGB(168, 170, 176)

local function qdzm(gnb, jvqm, glld, mdee, uie, jpz)
local mmvj = Instance.new(gnb)

mmvj.Size = UDim2.fromOffset(mdee, uie)
mmvj.Position = UDim2.fromOffset(jvqm, glld)
mmvj.BackgroundColor3 = oay
mmvj.BorderSizePixel = 0
mmvj.Parent = fp

if jpz then
local lh = Instance.new(_d("ZjkyBh0WCUE"))
lh.CornerRadius = UDim.new(0, jpz)
lh.Parent = mmvj
end

return mmvj
end

local function at(svpl, thbo, foni, ptg, iea)
local ask = qdzm(_d("dQIQBAo"), svpl, thbo, foni, ptg, iea)

ask.BackgroundTransparency = 1

local oely = Instance.new(_d("ZjkiHR0XB1Y"))

oely.Color = oay
oely.Thickness = 1.3
oely.LineJoinMode = Enum.LineJoinMode.Round
oely.Parent = ask

return ask
end

at(1, 6, 16, 12, 6)
at(6, 3, 6, 4, 1)
qdzm(_d("dQIQBAo"), 5, 1, 8, 2, 1)
qdzm(_d("dQIQBAo"), 7, 0, 4, 1, 0)

qdzm(_d("dQIQBAo"), 4, 11, 10, 1, 0)
qdzm(_d("dQIQBAo"), 13, 3, 2, 2, 2)
qdzm(_d("dQIQBAo"), 15, 6, 2, 2, 2)

return true
end
end
end

return false
end

task.defer(function()
for ze = 1, 20 do
if nalq.icon() then
break
end

task.wait(0.25)
end
end)

nalq.weatherSection = nalq.tab:Section({
Side = _d("fxUXHQ"),
})

nalq.weatherSection:Header({
Name = _d("Yx8FAAAWHxMfH0kYHQ1HGBQbT4jzlNo"),
})

nalq.weatherToggle = nalq.weatherSection:Toggle({
Name = _d("Yx8BSQAWTEcYFBoKWBtWEQUBCgof"),
Default = false,
Callback = function(rt)
if rt and (next(nalq.weatherPotions) == nil or next(nalq.weathers) == nil) then
nalq.onWeather = false

pcall(function()
nalq.weatherToggle:UpdateState(false)
end)

lszo:Dialog({
Title = _d("Yx8B"),
Description = _d("ZxkSAk8ZGBMcFAgcDExcHhRJGB0NRxgUG08ZAldQHgcKWBxcBBgGAVgKWgICHU9VTGMfAUkBHQlXA1ELAAwEEwQeSQQWA0RQBgEODExHH1ENHRECWFAQBwtYG1sVH0c"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})

return
end

nalq.onWeather = rt

if rt then
nalq.weatherSpent = nil
end
end,
}, _d("Qx8BNgAWM0cYFBoKJxtWEQUBCgof"))

nalq.weatherSection:Dropdown({
Name = _d("ZBUQHQcdHkA"),
Multi = true,
Required = false,
Options = { _d("ZwkBAQAXAg"), _d("cRwYExUZHlc"), _d("fxkWARsWBV0X"), _d("ZBkfDRwMA0Ed"), _d("YBgQGwYWC1Ie"), _d("YBkfDhoUDUEZBRA"), _d("fh8fCB0bBBM0HgQOEQI"), _d("ZR8YDQ"), _d("fhEVDE8RAhM4FAgZHQI"), _d("fhEfDg4") },
Callback = function(xkzp)
nalq.weathers = {}

if type(xkzp) == _d("RxETBQo") then
for hjkh, xsj in pairs(xkzp) do
if xsj then
nalq.weathers[hjkh] = true
end
end
end
end,
}, _d("RBUQHQcdHkA"))

nalq.weatherSection:Dropdown({
Name = _d("Yx8FAAAWHw"),
Multi = true,
Required = false,
Options = nalq.options(),
Callback = function(uuza)
nalq.weatherPotions = {}

if type(uuza) == _d("RxETBQo") then
for svcf, qtzz in pairs(uuza) do
if qtzz then
nalq.weatherPotions[svcf] = true
end
end
end
end,
}, _d("Qx8FAAAWHw"))

nalq.weatherSection:Input({
Name = _d("ch0eHAEM"),
Placeholder = _d("Ag"),
AcceptedCharacters = _d("fQUcDB0RDw"),
Callback = function(sc)
local vask = math.floor(tonumber(sc) or 1)

nalq.weatherAmount = math.clamp(vask, 1, 50)
end,
}, _d("Uh0eHAEM"))

nalq.weatherParagraph = nalq.weatherSection:Paragraph({
Header = _d("YAQQHRoL"),
Body = nalq.status(),
})

nalq.giveUpSection = nalq.tab:Section({
Side = _d("YRkWARs"),
})

nalq.giveUpSection:Header({
Name = _d("chYFDB1YC1oGFEkaCA"),
})

nalq.giveUpToggle = nalq.giveUpSection:Toggle({
Name = _d("Yx8BSQ4eGFYCUQhPDANEFQNJCBEaVlAEGQ"),
Default = false,
Callback = function(pgeg)
if pgeg and next(nalq.giveUpPotions) == nil then
nalq.afterGiveUp = false

pcall(function()
nalq.giveUpToggle:UpdateState(false)
end)

lszo:Dialog({
Title = _d("Yx8B"),
Description = _d("ZxkSAk8ZGBMcFAgcDExcHhRJHxcYWh8fSQkRHkAEUURPDARWAhRJBgtMXR8FAQYWCxMEHkkLCgVdG1EICQwJQVAFAQpYHkYeUQYbEAlBBxgaClY"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})

return
end

nalq.afterGiveUp = pgeg
end,
}, _d("Qx8BNg4eGFYCLggwDANEFQM2CBEaVi8EGQ"))

nalq.giveUpSection:Dropdown({
Name = _d("Yx8FAAAWHw"),
Multi = true,
Required = false,
Options = nalq.options(),
Callback = function(klks)
nalq.giveUpPotions = {}

if type(klks) == _d("RxETBQo") then
for obwt, ux in pairs(klks) do
if ux then
nalq.giveUpPotions[obwt] = true
end
end
end
end,
}, _d("Qx8FAAAWH2xC"))

nalq.giveUpSection:Input({
Name = _d("ch0eHAEM"),
Placeholder = _d("Ag"),
AcceptedCharacters = _d("fQUcDB0RDw"),
Callback = function(xfyx)
local sytg = math.floor(tonumber(xfyx) or 1)

nalq.giveUpAmount = math.clamp(sytg, 1, 50)
end,
}, _d("Uh0eHAEMMwE"))

nalq.giveUpParagraph = nalq.giveUpSection:Paragraph({
Header = _d("YAQQHRoL"),
Body = nalq.giveUpStatus(),
})

local vzl = {
autoSave = false,
autoRoll = true,
autoQuickRoll = true,

loading = false,
selected = nil,
lastText = _d("fR8FAQYWCxMHAwAbDAldUAgMG1hBEwAYCgRYDRMDEB8KWApaHBRJDR0AXAdf"),
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
theme = _d("ZR8YDQ"),
accent = nil,
savesAt = 0,
autoSaveAt = 0,
themeAt = 0,
capAt = 0,
scaleAnchor = nil,
statusAt = 0,
knownSaves = _d(""),
}

getgenv().ACBXSettings = vzl

vzl.presets = {
Void = { panel = Color3.fromRGB(15, 15, 15), element = Color3.fromRGB(0, 0, 0), accent = Color3.fromRGB(168, 170, 176) },
Ocean = { panel = Color3.fromRGB(6, 16, 26), element = Color3.fromRGB(8, 26, 40), accent = Color3.fromRGB(77, 166, 255) },
Ember = { panel = Color3.fromRGB(26, 10, 8), element = Color3.fromRGB(36, 16, 10), accent = Color3.fromRGB(255, 122, 69) },
Sakura = { panel = Color3.fromRGB(26, 9, 18), element = Color3.fromRGB(38, 14, 26), accent = Color3.fromRGB(255, 125, 177) },
Mint = { panel = Color3.fromRGB(7, 20, 14), element = Color3.fromRGB(9, 30, 22), accent = Color3.fromRGB(77, 227, 160) },
Graphite = { panel = Color3.fromRGB(20, 20, 22), element = Color3.fromRGB(30, 30, 33), accent = Color3.fromRGB(200, 200, 206) },
}

vzl.themeOrder = { _d("ZR8YDQ"), _d("fBMUCAE"), _d("dh0TDB0"), _d("YBEaHB0Z"), _d("fhkfHQ"), _d("dAIQGQcRGFY") }

local nz = _d("cjMzST0dDloCBQFACwlHBBgHCAs")

function vzl.saves()
local tcil, qly = pcall(function()
return mq:RefreshConfigList()
end)

if tcil and type(qly) == _d("RxETBQo") then
table.sort(qly)
return qly
end

return {}
end

function vzl.autoLoadName()
local hlg, igak = pcall(function()
if isfile and isfile(nz .. _d("HBEEHQAUA1IUXx0XDA")) then
return readfile(nz .. _d("HBEEHQAUA1IUXx0XDA"))
end
end)

if hlg and type(igak) == _d("QAQDAAEf") then
igak = igak:gsub(_d("bVUCQg"), _d("")):gsub(_d("FgNaTQ"), _d(""))

if igak ~= _d("") then
return igak
end
end

return nil
end

function vzl.setAutoLoad(psm)

return (pcall(function()
writefile(nz .. _d("HBEEHQAUA1IUXx0XDA"), psm or _d(""))
end))
end

function vzl.delete(ugpk)
if type(ugpk) ~= _d("QAQDAAEf") or ugpk == _d("") then
return false, _d("YxkSAk8ZTEARBwxPHgVfFVEPBgofR14")
end

local ipts = nz .. _d("HA") .. ugpk .. _d("HRoCBgE")
local wsxq = false

pcall(function()
wsxq = isfile ~= nil and isfile(ipts) == true
end)

if not wsxq then
return false, _d("ZxgUGwpYBUBQHwZPHgVfFVEKDhQAVhRR") .. ugpk .. _d("HQ")
end

local vii, ie = pcall(function()
delfile(ipts)
end)

if not vii then
return false, tostring(ie)
end

if vzl.autoLoadName() == ugpk then
vzl.setAutoLoad(_d(""))
end

if vzl.selected == ugpk then
vzl.selected = nil
vzl.selectionShown = nil
end

vzl.knownSaves = nil
vzl.savesAt = 0

return true
end

function vzl.save(hij)
if type(hij) ~= _d("QAQDAAEf") or hij:gsub(_d("FgM"), _d("")) == _d("") then
return false, _d("dBkHDE8MBFZQAggZHUxSUB8IAh1MVRkDGhtW")
end

local cru, izjr, why = pcall(function()
return mq:SaveConfig(hij)
end)

if not cru then
return false, tostring(izjr)
end

if izjr ~= true then
return false, tostring(why or _d("RxgUSQkRAFZQEgYaFAgTHh4dTxoJEwcDABsMCV0"))
end

return true
end

function vzl.replayOff(fcpb)
local kj, oynr = pcall(function()
return readfile(nz .. _d("HA") .. fcpb .. _d("HRoCBgE"))
end)

if not kj or type(oynr) ~= _d("QAQDAAEf") then
return
end

local kyln
kj, kyln = pcall(function()
return game:GetService(_d("ewQFGTwdHkUZEgw")):JSONDecode(oynr)
end)

if not kj or type(kyln) ~= _d("RxETBQo") or type(kyln.objects) ~= _d("RxETBQo") then
return
end

for to, eq in ipairs(kyln.objects) do
if eq.type == _d("Zx8WDgMd") and eq.state == false and eq.flag then
local remp = mq.Options[eq.flag]

if remp then
pcall(function()
remp:UpdateState(false)
end)
end
end
end
end

function vzl.load(fm)
if type(fm) ~= _d("QAQDAAEf") or fm == _d("") then
return false, _d("YxkSAk8ZTEARBwxPHgVfFVEPBgofR14")
end

vzl.loading = true
bj = true

local ebzk, drfg, cww = pcall(function()
return mq:LoadConfig(fm)
end)

if not ebzk then
vzl.loading = false
bj = false

return false, tostring(drfg)
end

if drfg ~= true then
vzl.loading = false
bj = false

return false, tostring(cww or _d("RxgUSQkRAFZQEgYaFAgTHh4dTxoJEwIUCAs"))
end

task.wait(0.25)
vzl.replayOff(fm)
vzl.loading = false
bj = false

return true
end

vzl.uiPath = _d("cjMzMUANBR0aAgYB")

function vzl.saveUi()
if type(writefile) ~= _d("VQUfChsRA10") then
return false
end

if vzl.restoring then
return false
end

local eepl = vzl.accent

local ifg = {
theme = vzl.theme,
scale = tonumber(string.format(_d("Fl5DDw"), vzl.scaleTarget or 1)),
accent = eepl and string.format(_d("FhRdTAtUSVc"),
math.floor(eepl.R * 255 + 0.5),
math.floor(eepl.G * 255 + 0.5),
math.floor(eepl.B * 255 + 0.5)) or nil,
}

return pcall(function()
if type(makefolder) == _d("VQUfChsRA10") and type(isfolder) == _d("VQUfChsRA10") and not isfolder(_d("cjMzMQ")) then
makefolder(_d("cjMzMQ"))
end

writefile(vzl.uiPath, game:GetService(_d("ewQFGTwdHkUZEgw")):JSONEncode(ifg))
end)
end

function vzl.loadUi()
if type(readfile) ~= _d("VQUfChsRA10") or type(isfile) ~= _d("VQUfChsRA10") then
return nil
end

local xs, zy = pcall(function()
if not isfile(vzl.uiPath) then
return nil
end

return readfile(vzl.uiPath)
end)

if not xs or type(zy) ~= _d("QAQDAAEf") or zy == _d("") then
return nil
end

local lt
xs, lt = pcall(function()
return game:GetService(_d("ewQFGTwdHkUZEgw")):JSONDecode(zy)
end)

if not xs or type(lt) ~= _d("RxETBQo") then
return nil
end

vzl.restoring = true

if type(lt.theme) == _d("QAQDAAEf") and vzl.presets[lt.theme] then
vzl.theme = lt.theme

pcall(function()
vzl.themeDropdown:UpdateSelection(lt.theme)
vzl.themeDropdown:UpdateName(_d("ZxgUBApCTA") .. lt.theme)
end)
end

local fvyq, otfr, hebd = tostring(lt.accent or _d("")):match(_d("bVhUDURRQBtVFUJGVEQWFFpASw"))

if fvyq then
local kgqf = Color3.fromRGB(tonumber(fvyq), tonumber(otfr), tonumber(hebd))

vzl.accent = kgqf

pcall(function()
vzl.accentPicker:SetColor(kgqf)
end)
else
vzl.accent = nil

local dvy = vzl.presets[vzl.theme] or vzl.presets.Void

pcall(function()
vzl.accentPicker:SetColor(dvy.accent)
end)
end

local itjf = tonumber(lt.scale)

if itjf then
itjf = math.clamp(itjf, 0.5, vzl.scaleCeiling())

vzl.scaleTarget = itjf
vzl.scaleAnchor = nil

pcall(function()
vzl.scaleSlider:UpdateValue(itjf)
end)
end

vzl.applyTheme()

vzl.restoring = false
vzl.saveUi()

return lt
end

vzl.prioPath = _d("cjMzMUAIHlofAwAbAUJZAx4H")

function vzl.groupAt(hbx)
for tv, lvql in ipairs(ym.prioGroups) do
if lvql.rank == hbx then
return lvql
end
end
end

function vzl.paintPriority()
if vzl.prioBusy then
return
end

vzl.prioBusy = true

for tpr = 1, #ym.prioGroups do
local vrn = vzl.prioRows and vzl.prioRows[tpr]
local vtp = vzl.groupAt(tpr)

if vrn and vtp then
pcall(function()
vrn:UpdateSelection(vtp.label)
end)
end
end

vzl.prioBusy = false
end

function vzl.setPriority(ono, klo)
if vzl.prioBusy or vzl.prioBuilding then
return
end

local tat

for om, xjdy in ipairs(ym.prioGroups) do
if xjdy.id == ono then
tat = xjdy.rank
xjdy.rank = klo
end
end

if tat and tat ~= klo then
for jkq, cwjn in ipairs(ym.prioGroups) do
if cwjn.id ~= ono and cwjn.rank == klo then
cwjn.rank = tat
end
end
end

vzl.paintPriority()
vzl.savePriority()
end

function vzl.savePriority()
if type(writefile) ~= _d("VQUfChsRA10") then
return false
end

local pmbc = {}

for yhj, xfp in ipairs(ym.prioGroups) do
pmbc[xfp.id] = xfp.rank
end

return pcall(function()
if type(makefolder) == _d("VQUfChsRA10") and type(isfolder) == _d("VQUfChsRA10") and not isfolder(_d("cjMzMQ")) then
makefolder(_d("cjMzMQ"))
end

writefile(vzl.prioPath, game:GetService(_d("ewQFGTwdHkUZEgw")):JSONEncode({ ranks = pmbc }))
end)
end

function vzl.loadPriority()
if type(readfile) ~= _d("VQUfChsRA10") or type(isfile) ~= _d("VQUfChsRA10") then
return nil
end

local etkc, fqyb = pcall(function()
if not isfile(vzl.prioPath) then
return nil
end

return readfile(vzl.prioPath)
end)

if not etkc or type(fqyb) ~= _d("QAQDAAEf") or fqyb == _d("") then
return nil
end

local pltw

etkc, pltw = pcall(function()
return game:GetService(_d("ewQFGTwdHkUZEgw")):JSONDecode(fqyb)
end)

if not etkc or type(pltw) ~= _d("RxETBQo") or type(pltw.ranks) ~= _d("RxETBQo") then
return nil
end

return pltw.ranks
end

function vzl.restorePriority()
local dwg = vzl.loadPriority()

if not dwg then
return
end

for nn, wn in ipairs(ym.prioGroups) do
local ilt = tonumber(dwg[wn.id])

if ilt and ilt >= 1 and ilt <= #ym.prioGroups then
wn.rank = ilt
end
end

vzl.paintPriority()
end

function vzl.colourKey(eeoh)
return math.floor(eeoh.R * 255) .. _d("Hw") .. math.floor(eeoh.G * 255) .. _d("Hw") .. math.floor(eeoh.B * 255)
end

function vzl.guiRoot()

if not usch() then
return nil
end

if vzl.root and vzl.root.Parent then
return vzl.root
end

local jr = gethui and gethui() or game:GetService(_d("cB8DDCgNBQ"))

for tcdb, kxlh in ipairs(jr:GetChildren()) do
if kxlh:IsA(_d("YBMDDAoWK0YZ")) and kxlh:FindFirstChild(_d("cRECDA")) then
vzl.root = kxlh.Base

return vzl.root
end
end

return nil
end

function vzl.applyTheme()
local kpzq = vzl.guiRoot()
local th = vzl.presets[vzl.theme] or vzl.presets.Void

if not kpzq then
return false
end

local yxm = {
panel = th.panel,
element = th.element,
accent = vzl.accent or th.accent,
}

local tzc = {}

for qnn, njqs in pairs(vzl.presets) do
tzc[vzl.colourKey(njqs.panel)] = _d("QxEfDAM")
tzc[vzl.colourKey(njqs.element)] = _d("VhwUBAoWGA")
tzc[vzl.colourKey(njqs.accent)] = _d("UhMSDAEM")
end

tzc[vzl.colourKey(yxm.accent)] = _d("UhMSDAEM")

if tzc[vzl.colourKey(kpzq.BackgroundColor3)] == _d("QxEfDAM") then
kpzq.BackgroundColor3 = yxm.panel
end

for sjy, mp in ipairs(kpzq:GetDescendants()) do
if mp:IsA(_d("dAUYJg0SCVAE")) then
local pci = tzc[vzl.colourKey(mp.BackgroundColor3)]

if pci then
mp.BackgroundColor3 = yxm[pci]
end
elseif mp:IsA(_d("ZjkiHR0XB1Y")) then
if tzc[vzl.colourKey(mp.Color)] == _d("UhMSDAEM") then
mp.Color = yxm.accent
end
end

if mp:IsA(_d("eh0QDgo0DVEVHQ")) and mp.Name == _d("ZxETIAIZC1Y") and mp.Image ~= _d("") then
mp.ImageColor3 = yxm.accent
mp.ImageTransparency = 0
mp:SetAttribute(_d("cjMzMTsZDnITEgwBDA"), yxm.accent)

if not mp:GetAttribute(_d("cjMzMTsZDmcZHx0")) then
mp:SetAttribute(_d("cjMzMTsZDmcZHx0"), true)

local function cuv()
local ervw = mp:GetAttribute(_d("cjMzMTsZDnITEgwBDA"))

if ervw and mp.ImageColor3 ~= ervw then
mp.ImageColor3 = ervw
end

if mp.ImageTransparency ~= 0 then
mp.ImageTransparency = 0
end
end

vhzs(mp:GetPropertyChangedSignal(_d("eh0QDgosHlIeAhkOCgldEwg")), cuv)
vhzs(mp:GetPropertyChangedSignal(_d("eh0QDgo7A18fA1o")), cuv)
end
end
end

return true
end

local hsbd = lpbv:Tab({
Name = _d("fhEB"),
Image = _d("QRIJCBwLCUcZFVNAV1oDQ0BZWE1VAEE"),
})

local boga = {
holdFor = 25,
fly = {
on = false,
speed = 55,
connection = nil,
},
islands = {
{ name = _d("fx8TCxY"), kind = _d("RB8DBQs"), arg = _d("Xx8TCxY") },
{ name = _d("chIQBwsXAlYUUSAcFA1dFA"), kind = _d("WgMdCAEc"), arg = _d("UhIQBwsXAlYULgAcFA1dFA") },
{ name = _d("ZwcYB086CVITGQwc"), kind = _d("WgMdCAEc"), arg = _d("RwcYBzAaCVITGQwc"), note = _d("EyQZDE8LCUEGFBtPHB5cAAJJBgxMRh4FAANYFVwFUQEODgkTAxAAAx0IEwQZDB0dQg") },
{ name = _d("ZBkfDQIRAF9QOBoDHQ"), kind = _d("WgMdCAEc"), arg = _d("RBkfDQIRAF8vGBoDHQ"), note = _d("EyQZDE8LCUEGFBtPHB5cAAJJBgxMRh4FAANYFVwFUQEODgkTAxAAAx0IEwQZDB0dQg") },
},
npcs = {
{ name = _d("cBEDDU81CUEXFA"), npc = _d("VQUCDDAWHFA"), attr = _d("fSAyIAs"), at = Vector3.new(-272, 33, -40347) },
{ name = _d("dggBDAsRGFofHxo"), npc = _d("dggBDAsRGFofHyc/Ow"), attr = _d("dggBDAsRGFofHyc/Ow"), at = Vector3.new(-347, 35, -40361) },
{ name = _d("dxUSBgELGEEFEh0"), npc = _d("VxUSBgELGEEFEh0wFhxQ"), attr = _d("fSAyIAs"), at = Vector3.new(-264, 33, -40331) },
{ name = _d("cAIQDxs"), npc = _d("UAIQDxsnAkMT"), attr = _d("fSAyIAs"), at = Vector3.new(-330, 33, -40277) },
{ name = _d("YBsYBQNYOEEVFA"), npc = _d("YBsYBQMsHlYVPzks"), attr = _d("YBsYBQMsHlYVPzks"), at = Vector3.new(-290, 32, -40283) },
{ name = _d("cBEDDU8xAlcVCQ"), npc = _d("UBEDDTARAlcVCTYBCA8"), attr = _d("fSAyIAs"), at = Vector3.new(-313, 33, -40282) },
{ name = _d("YxESAk81CUETGQgBDA"), npc = _d("QxESAjAVCUETGQgBDA"), attr = _d("fSAyIAs"), at = Vector3.new(-301, 33, -40270) },
{ name = _d("dwUfDgoXAg"), npc = _d("VwUfDgoXAmweAQo"), attr = _d("fSAyIAs"), at = Vector3.new(-339, 41, -40399) },
{ name = _d("dRkCAQoKAVIe"), npc = _d("dRkCAQoKAVIePzks"), attr = _d("dRkCAQoKAVIePzks"), at = Vector3.new(-493, 14, -40262) },
{ name = _d("YBUSGwoMTHIeFgUKCg"), npc = _d("YBUSGwoMLV0XHQwdNjxw"), attr = _d("YBUSGwoMLV0XHQwdNjxw"), at = Vector3.new(-209, 34, -40382) },
{ name = _d("exEdBQAPCVYeUToHFxw"), npc = _d("YwUcGQQRAhM9FBsMEA1dBA"), at = Vector3.new(-29989, 78, -30259) },
{ name = _d("YBESGwYeBVAVUSgDDA1B"), landmark = _d("YBESGwYeBVAVMAUbGR4"), island = _d("UhIQBwsXAlYULgAcFA1dFA"), at = Vector3.new(-3548, 11, -40462) },
{ name = _d("exEDDQwXHlZQJQYYHR4"), npc = _d("exEDDQwXHlYkHh4KCg"), island = _d("UhIQBwsXAlYULgAcFA1dFA"), at = Vector3.new(-3795, 25, -40250) },
{ name = _d("egMdCAEcTHUZAgEKCgFSHg"), npc = _d("egMdCAEcKloDGQwdFQ1dPiEq"), attr = _d("egMdCAEcKloDGQwdFQ1dPiEq"), island = _d("UhIQBwsXAlYULgAcFA1dFA"), at = Vector3.new(-3825, 23, -40260) },
{ name = _d("dxkWDgoK"), npc = _d("dxkWDgoKImMz"), attr = _d("dxkWDgoKImMz"), island = _d("RwcYBzAaCVITGQwc"), at = Vector3.new(-5998, 26, -40565) },
{ name = _d("YBUSGwoMTHcZFg4KCg"), npc = _d("YBUSGwoMKFoXFgwdNjxw"), attr = _d("YBUSGwoMKFoXFgwdNjxw"), island = _d("RBkfDQIRAF8vGBoDHQ"), at = Vector3.new(-7740, 17, -40343) },
},
}

function boga.hold()
hqy.tpHoldUntil = os.clock() + boga.holdFor

hqy.deepPhase = _d("WhQdDA")
hqy.deepStageAt = 0
hqy.phase = _d("WhQdDA")
hqy.nextCastAt = 0
hqy.watchdogAt = 0

return boga.holdFor
end

function boga.point(lo)
local cyv

if lo.landmark then
cyv = workspace:FindFirstChild(lo.landmark)
else
local ehys = workspace:FindFirstChild(_d("fSAyGg"))

if ehys then
for vgcj, cd in ipairs(ehys:GetChildren()) do
local giex

if lo.attr then
giex = cd:GetAttribute(lo.attr) == lo.npc
else
giex = cd.Name == lo.npc
end

if giex then
cyv = cd
break
end
end
end
end

if cyv then
local vyvx = cyv.PrimaryPart
or cyv:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"), true)
or cyv:FindFirstChildWhichIsA(_d("cRECDD8ZHkc"), true)

if vyvx then
return vyvx.Position
end
end

return lo.at
end

function boga.resume()
if not hqy.enabled then
return
end

local py = qzj.Character
local yv = py and py:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not yv or (yv.Position - jzy).Magnitude < 40 then
return
end

pcall(function()
hqy.recover()
end)
end

function boga.standAt(io)
local oewm = qzj.Character
local yfs = oewm and oewm:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not yfs or not io then
return false
end

local emjl = RaycastParams.new()
emjl.FilterType = Enum.RaycastFilterType.Exclude
emjl.FilterDescendantsInstances = { oewm }

local lzh = workspace:Raycast(io + Vector3.new(0, 10, 0), Vector3.new(0, -80, 0), emjl)
local dmq = io.Y

if lzh and lzh.Instance.Name ~= _d("ZBEFDB0") then
local hd = lzh.Position.Y + 3.2

if math.abs(hd - io.Y) <= 8 then
dmq = hd
end
end

local nnb = Vector3.new(yfs.Position.X - io.X, 0, yfs.Position.Z - io.Z)

if nnb.Magnitude < 1 then
nnb = Vector3.new(4, 0, 0)
else
nnb = nnb.Unit * 4
end

local wwsp = Vector3.new(io.X + nnb.X, dmq, io.Z + nnb.Z)

yfs.CFrame = CFrame.new(wwsp)

return true
end

function boga.unlock()
local sle = {
{ id = _d("UhIQBwsXAlYULgAcFA1dFA"), at = Vector3.new(-3825, 24, -40260) },
{ id = _d("RwcYBzAaCVITGQwc"), at = Vector3.new(-6180, 40, -40350) },
{ id = _d("RBkfDQIRAF8vGBoDHQ"), at = Vector3.new(-7480, 30, -40350) },
}
local lynb = {}

for opiw, qiz in ipairs(sle) do
local ypwe = fyeb.FishingGetState:InvokeServer()

if ypwe and ypwe.areas and ypwe.areas[qiz.id] == true then
table.insert(lynb, qiz.id .. _d("CVAQBR0dDVcJUQYfHQI"))
else
boga.hold()
boga.standAt(qiz.at)
task.wait(2.4)

local bqx = fyeb.FishingGetState:InvokeServer()

table.insert(lynb, qiz.id .. (bqx and bqx.areas and bqx.areas[qiz.id] and _d("CVAEBwMXD1gVFQ") or _d("CVAXCAYUCVc")))
end
end

boga.hold()
pcall(function()
fyeb.TeleportToWorld:FireServer(_d("Xx8TCxY"))
end)
task.wait(2.5)

return table.concat(lynb, _d("E7LGSQ"))
end

function boga.flyToggle(kwxl)
boga.fly.on = kwxl

if not kwxl then
return _d("dRwISQAeCh0")
end

local qus = qzj.Character
local rbe = qus and qus:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not rbe then
return _d("fR9RCgcZHlITBQwdWBhcUB0ACQxC")
end

boga.fly.height = rbe.Position.Y

if boga.fly.connection then
return _d("dRwISQAWQg")
end

local ggq = game:GetService(_d("ZgMUGyYWHEYEIgwdDgVQFQ"))

boga.fly.connection = vhzs(game:GetService(_d("YQUfOgoKGloTFA")).Heartbeat, function(bpp)
if not boga.fly.on then
return
end

local bjev = qzj.Character
local jicj = bjev and bjev:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not jicj then
return
end

local vh = workspace.CurrentCamera
local okm = Vector3.zero

if vh then
local eeu = vh.CFrame.LookVector
local fd = Vector3.new(eeu.X, 0, eeu.Z)

if fd.Magnitude > 0.01 then
fd = fd.Unit
end

local obb = Vector3.new(fd.Z, 0, -fd.X)

if ggq:IsKeyDown(Enum.KeyCode.W) then
okm = okm + fd
end

if ggq:IsKeyDown(Enum.KeyCode.S) then
okm = okm - fd
end

if ggq:IsKeyDown(Enum.KeyCode.D) then
okm = okm + obb
end

if ggq:IsKeyDown(Enum.KeyCode.A) then
okm = okm - obb
end
end

local rkht = 0

if ggq:IsKeyDown(Enum.KeyCode.Space) then
rkht = 1
elseif ggq:IsKeyDown(Enum.KeyCode.LeftControl) then
rkht = -1
end

local kwxu = boga.fly.speed or 55
local wi = okm * kwxu * bpp + Vector3.new(0, rkht * kwxu * 0.6 * bpp, 0)

if wi.Magnitude < 0.001 then
return
end

jicj.CFrame = jicj.CFrame + wi
jicj.AssemblyLinearVelocity = Vector3.zero
end)

return _d("dRwISQAWQg")
end

function boga.go(fqxn)
boga.hold()

if fqxn.kind == _d("RB8DBQs") then
pcall(function()
fyeb.TeleportToWorld:FireServer(fqxn.arg)
end)

return _d("YBUfHU8MBFZQ") .. fqxn.name .. _d("EwQUBQoIA0EEXw")
end

if fqxn.kind == _d("WgMdCAEc") then
pcall(function()
fyeb.FishingIslandTeleport:FireServer(fqxn.arg)
end)

return _d("YBUfHU8MBFZQ") .. fqxn.name .. _d("EwQUBQoIA0EEXw") .. tostring(fqxn.note or _d(""))
end

local kbw = boga.point(fqxn)
local wy = qzj.Character
local nmuz = wy and wy:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if kbw and nmuz and (nmuz.Position - kbw).Magnitude > 1500 then
pcall(function()
if fqxn.island then
fyeb.FishingIslandTeleport:FireServer(fqxn.island)
else
fyeb.TeleportToWorld:FireServer(_d("Xx8TCxY"))
end
end)

task.wait(fqxn.island and 3.5 or 4.5)

kbw = boga.point(fqxn)

nmuz = qzj.Character and qzj.Character:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if kbw and nmuz and (nmuz.Position - kbw).Magnitude > 1500 then
return fqxn.name .. _d("ExkCSQAWTA") .. tostring(fqxn.island or _d("RxgUSQMXDlEJ"))
.. _d("E11RHQcdTFQRHAxPCglVBQIMHFgYWxEFSRsKBUNQBAcbEQATGQVJBxkfExIUDAFYHlYREgEKHExcHhIMQQ")
end
end

if not kbw then
return fqxn.name .. _d("ExkCSQEXGBMZH0kbEAVAUAYGHRQIHQ")
end

if not boga.standAt(kbw) then
return _d("fR9RCgcZHlITBQwdWBhcUBwGGR1C")
end

task.delay(boga.holdFor + 2, function()
pcall(boga.resume)
end)

return _d("YAQeBgtYDlYDGA0KWA") .. fqxn.name .. _d("HQ")
end

boga.islandSection = hsbd:Section({ Side = _d("fxUXHQ") })
boga.islandSection:Header({ Name = _d("egMdCAEcHxOA7ubyl9S8") })

boga.npcSection = hsbd:Section({ Side = _d("YRkWARs") })
boga.npcSection:Header({ Name = _d("fSAyGk+I86D9") })

for hrwh, exxz in ipairs(boga.islands) do
boga.islandSection:Button({
Name = exxz.name,
Callback = function()
task.spawn(function()
local kkr = boga.go(exxz)

lszo:Notify({
Title = _d("ZxUdDB8XHkc"),
Description = kkr,
Lifetime = 6,
})
end)
end,
})
end

boga.state = hqy
boga.tab = hsbd
boga.islandSection:Button({
Name = _d("Zh4dBgwTTFIcHUkGCwBSHhUa"),
Callback = function()
task.spawn(function()
local dbz = boga.unlock()

lszo:Notify({
Title = _d("egMdCAEcHw"),
Description = dbz,
Lifetime = 10,
})
end)
end,
})

boga.flySection = hsbd:Section({ Side = _d("fxUXHQ") })
boga.flySection:Header({ Name = _d("dRwISY3k5NzI/g") })

boga.flySection:Toggle({
Name = _d("dRwISUcvLWA0XUk8CA1QFVEcH1RMcAQDBU8cA0QeWA"),
Default = false,
Callback = function(hued)
local quv = boga.flyToggle(hued)

lszo:Notify({
Title = _d("dRwI"),
Description = quv,
Lifetime = 4,
})
end,
}, _d("UhMTETAeAEo"))

getgenv().ACBXTeleport = boga

getgenv().ACBXDeepWater = qogz

pcall(qogz.dropStale)

for vars, ty in ipairs(boga.npcs) do
boga.npcSection:Button({
Name = ty.name,
Callback = function()
task.spawn(function()
local cojd = boga.go(ty)

lszo:Notify({
Title = _d("ZxUdDB8XHkc"),
Description = cojd,
Lifetime = 6,
})
end)
end,
})
end

local xel = zzug:Section({ Side = _d("fxUXHQ") })

xel:Header({ Name = _d("dxkWDgYWCxOS6uaAwOM") })

local kk = {
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

local hny = (tonumber(getgenv().ACBXDigGeneration) or 0) + 1
getgenv().ACBXDigGeneration = hny

function kk.read()
local ncbz, xtp = pcall(function()
return fyeb.DigGetState:InvokeServer()
end)

return ncbz and type(xtp) == _d("RxETBQo") and xtp or nil
end

function kk.call(jxqj, xyxl)
local dhgw, voy = pcall(function()
return fyeb.DigShop:InvokeServer(jxqj, xyxl)
end)

task.wait(2.5)

return dhgw and voy == true
end

function kk.wear()
local pyd = qzj.Character

if not pyd then
return false
end

local ovox = pyd:FindFirstChildOfClass(_d("ewUcCAEXBVc"))
local taq = qzj:FindFirstChild(_d("cRESAh8ZD1g"))

if not (ovox and taq) then
return false
end

ovox:UnequipTools()
task.wait(0.4)

for gypr = 1, 8 do
for jbmg, yxr in ipairs(taq:GetChildren()) do
if yxr:IsA(_d("Zx8eBQ")) and yxr.Name:find(_d("bTQYDjwQA0UVHQ")) then
ovox:EquipTool(yxr)

return true
end
end

task.wait(0.5)
end

return false
end

function kk.run()
local zsq = kk.read()

if not zsq then
return _d("ZxgUSQsRCxMDGQYfWAVAUB8GG1gNXQMGDB0RAlRe")
end

local kbq = {}

pcall(function()
local afgx = fyeb.FishingGetState:InvokeServer()

kbq = afgx and afgx.areas or {}
end)

if not (kbq.abandoned_island and kbq.twin_beaches and kbq.windmill_isle) then
boga.unlock()
task.wait(1)
end

local zmxj

for iwgd, dn in ipairs(boga.npcs) do
if dn.name == _d("dxkWDgoK") then
zmxj = dn
break
end
end

if not zmxj then
return _d("ZxgUSTsKCVIDBBsKWCRGHgUMHVgFQFAfBhtYBV1QBQEGC0xEHwMFC1Y")
end

boga.go(zmxj)
task.wait(2)

local oeiz = qzj.Character
local nygu = oeiz and oeiz:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))
local ypil = boga.point(zmxj)

if not (nygu and ypil) or (nygu.Position - ypil).Magnitude > 40 then
return _d("cB8EBQtYAlwEURsKGQ9bUAUBClg4QRUQGhoKCRM4BAcbHR4d")
end

zsq = kk.read() or zsq

local pgcs = false
local esc = zsq.shovels and zsq.shovels.shovel_basic == true
local eg = zsq.detectors and zsq.detectors.detector_basic == true

if not (esc and eg) then
pgcs = kk.call(_d("cBwQAAIrGFICBQwd"), _d("QBgeHwoUM1ERAgAM"))
zsq = kk.read() or zsq
end

if zsq.equippedShovel ~= _d("QBgeHwoUM1ERAgAM") then
kk.call(_d("dgEEAB8rBFwGFAU"), _d("QBgeHwoUM1ERAgAM"))
end

if zsq.equippedDetector ~= _d("VxUFDAwMA0EvEwgcEQ8") then
kk.call(_d("dgEEAB88CUcVEh0ACg"), _d("VxUFDAwMA0EvEwgcEQ8"))
end

zsq = kk.read() or zsq

if zsq.equippedShovel == _d("QBgeHwoUM1ERAgAM") and zsq.equippedDetector == _d("VxUFDAwMA0EvEwgcEQ8") then
local dtft = kk.wear()
local ftx = false

if dtft and hqy.enabled then
hqy.autoFishWanted = false
ftx = true

axso(false)

pcall(function()
qvv:UpdateState(false)
end)
end

return (pgcs and _d("cBwQAAIdCBMRHw1PHR1GGQEZChw") or _d("dgEEAB8ICVc"))
.. _d("EwQZDE86DUAZEkk8EANFFR1JDhYIEzIQGgYbTHcVBQwMDANBXg")
.. (ftx and _d("EzEEHQBYKloDGUkAHgoTXVEdBx1MQBgeHwoUTFsRAkkbEAkTBB4GA1gfXx8FRw") or _d(""))
end

return _d("ZxgUSS0ZH1oTUToHFxpWHFEGHVgoVgQUChsXHhMZAkkcDAVfHFEEBgsfWh4WRw")
end

function kk.unlock()
if kk.busy then
return _d("chwDDA4cFRMHHhsEEQJUXg")
end

kk.busy = true

local szx, mbyt = pcall(kk.run)

kk.busy = false

if not szx then
return _d("dxkWDgYWCxMWEAADHQgJUA") .. tostring(mbyt)
end

return mbyt
end

kk.icon = function()
local obn = gethui()

for bsn, yywk in ipairs(obn:QueryDescendants(_d("eh0QDgo0DVEVHQ"))) do
if yywk.Name == _d("ZxETIAIZC1Y") then
local fhb = yywk.Parent
local wer = fhb and fhb:FindFirstChild(_d("ZxETOhgRGFAYFBshGQFW"))

if wer and wer.Text == _d("dxkWDgYWCw") then
if yywk:GetAttribute(_d("cjMzMSsRC3oTHgc")) then
return true
end

yywk:SetAttribute(_d("cjMzMSsRC3oTHgc"), true)
yywk.Image = _d("")
yywk.BackgroundTransparency = 1

local ba = Color3.fromRGB(233, 236, 242)

for rpmf, sqvg in ipairs(obn:QueryDescendants(_d("eh0QDgo0DVEVHQ"))) do
if sqvg.Name == _d("ZxETIAIZC1Y") and sqvg ~= yywk and sqvg.Image ~= _d("") then
ba = sqvg.ImageColor3
break
end
end

local function apv(ogve, na, rwi, ieb, pzg, ayll)
local ugmp = Instance.new(_d("dQIQBAo"))

ugmp.Size = UDim2.fromOffset(rwi, ieb)
ugmp.Position = UDim2.fromOffset(ogve, na)
ugmp.BackgroundColor3 = ba
ugmp.BorderSizePixel = 0
ugmp.Parent = yywk

if ayll then
ugmp.Rotation = ayll
end

if pzg then
local lfap = Instance.new(_d("ZjkyBh0WCUE"))

lfap.CornerRadius = UDim.new(0, pzg)
lfap.Parent = ugmp
end

return ugmp
end

apv(1.1, 10.2, 7, 6.4, 1.6, -45)
apv(3.1, 8.3, 11, 2.2, 0.8, -45)
apv(9.8, 4.4, 5.6, 2, 0.8, 45)

return true
end
end
end

return false
end

task.defer(function()
for bko = 1, 20 do
if kk.icon() then
break
end

task.wait(0.25)
end
end)

xel:Button({
Name = _d("Zh4dBgwTTFcZFg4GFgs"),
Callback = function()
task.spawn(function()
lszo:Notify({
Title = _d("dxkWDgYWCw"),
Description = _d("exUQDQYWCxMEHkkbEAkTJAMMDgsZQRVRIRoWGFYCXw"),
Lifetime = 5,
})

local def = kk.unlock()

lszo:Notify({
Title = _d("dxkWDgYWCw"),
Description = def,
Lifetime = 10,
})
end)
end,
})

kk.statusParagraph = xel:Paragraph({
Header = _d("dxkWSRwMDUcV"),
Body = _d("YRUQDQYWCxMEGQxPHAVUUAIIGR1CHV4"),
})

kk.data = require(gs.ModuleScripts.DigData)

function kk.zoneAt(cy)
for dyh, js in ipairs(game:GetService(_d("cB8dBQobGFofHzoKChpaExQ")):GetTagged(kk.data.ZoneTag)) do
if js:IsA(_d("cRECDD8ZHkc")) and js:IsDescendantOf(workspace) then
local wgbg = js.CFrame:PointToObjectSpace(cy)
local ki = js.Size * 0.5

if math.abs(wgbg.X) <= ki.X and math.abs(wgbg.Y) <= ki.Y and math.abs(wgbg.Z) <= ki.Z then
return true
end
end
end

return false
end

function kk.onIsland()
for fyrb, cbn in ipairs(game:GetService(_d("cB8dBQobGFofHzoKChpaExQ")):GetTagged(kk.data.ZoneTag)) do
if cbn:IsA(_d("cRECDD8ZHkc")) and cbn:IsDescendantOf(workspace) then
return true
end
end

return false
end

function kk.bestShovel(drm)
local jrai = drm and drm.shovels or {}
local odwg = nil

for ipy, mvql in ipairs(kk.data.Shovels) do
if jrai[mvql.id] == true then
odwg = mvql.id
end
end

return odwg
end

function kk.equipBest()
local ewdh = kk.read()
local gqs = kk.bestShovel(ewdh)

if not gqs then
return nil
end

if ewdh.equippedShovel ~= gqs then
kk.call(_d("dgEEAB8rBFwGFAU"), gqs)
end

kk.wear()

return gqs
end

function kk.bestDetector(pxe)
local vpfu = pxe and pxe.detectors or {}
local jg = nil

for lsr, ho in ipairs(kk.data.Detectors) do
if vpfu[ho.id] == true then
jg = ho.id
end
end

return jg
end

function kk.equipBestDetector()
local vdqn = kk.read()
local augk = kk.bestDetector(vdqn)

if not augk then
return nil
end

if vdqn.equippedDetector ~= augk then
kk.call(_d("dgEEAB88CUcVEh0ACg"), augk)
end

return augk
end

function kk.leaveNpc()
local rl = qzj.Character
local hbng = rl and rl:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))
local aqnd = rl and rl:FindFirstChildOfClass(_d("ewUcCAEXBVc"))

if not (hbng and aqnd) then
return false
end

local zbtb

for bmyb, vva in ipairs(boga.npcs) do
if vva.name == _d("dxkWDgoK") then
zbtb = vva
break
end
end

local jty = zbtb and boga.point(zbtb)

if not jty then
return false
end

local sgk = Vector3.new(hbng.Position.X - jty.X, 0, hbng.Position.Z - jty.Z)

if sgk.Magnitude >= 16 then
return true
end

if sgk.Magnitude < 1 then
sgk = Vector3.new(0, 0, -1)
end

sgk = sgk.Unit

local gvwq = Vector3.new(jty.X + sgk.X * 22, hbng.Position.Y, jty.Z + sgk.Z * 22)
local ivxf = os.clock() + 6

aqnd:MoveTo(gvwq)

while os.clock() < ivxf do
local umd = qzj.Character
local tagc = umd and umd:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not tagc or (tagc.Position - gvwq).Magnitude < 4 then
break
end

task.wait(0.15)
end

pcall(function()
aqnd:MoveTo(hbng.Position)
end)

return true
end

function kk.goToSand(sepl)

if sepl or not kk.onIsland() then
if not sepl then

pcall(function()
fyeb.TeleportToWorld:FireServer(_d("Xx8TCxY"))
end)

local izvj = os.clock() + 15

while not kk.onIsland() and os.clock() < izvj do
task.wait(0.5)
end
end

local szkt

for rit, pyu in ipairs(boga.npcs) do
if pyu.name == _d("dxkWDgoK") then
szkt = pyu
break
end
end

if szkt then
boga.go(szkt)
task.wait(2)
end
end

if kk.onIsland() then
kk.leaveNpc()
end
end

function kk.spot()
local iuth = qzj.Character
local ronh = iuth and iuth:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not ronh then
return nil
end

local jn = ronh.CFrame.LookVector
local mrhz = Vector3.new(jn.X, 0, jn.Z)

if mrhz.Magnitude < 0.01 then
mrhz = Vector3.new(0, 0, -1)
end

mrhz = mrhz.Unit

local nxek = RaycastParams.new()
nxek.FilterType = Enum.RaycastFilterType.Exclude
nxek.FilterDescendantsInstances = { iuth }

local function pz(vq, ea)
local vzzp = ronh.Position + vq * ea + Vector3.new(0, 4, 0)
local kcb = workspace:Raycast(vzzp, Vector3.new(0, -18, 0), nxek)

if kcb and kk.zoneAt(kcb.Position) then
return kcb.Position
end
end

for iqr, ax in ipairs({ 4, 7, 10, 2 }) do
local xski = pz(mrhz, ax)

if xski then
return xski
end
end

local knkb = Vector3.new(-mrhz.Z, 0, mrhz.X)

for uu, yocg in ipairs({ 4, 8 }) do
for tm, rkf in ipairs({ 1, -1 }) do
for mvb, sk in ipairs({ 1, 0.5 }) do
local cqd = pz((knkb * (rkf * sk) + mrhz * (1 - sk)).Unit, yocg)

if cqd then
return cqd
end
end
end
end

return nil
end

function kk.turn()
local cgzc = qzj.Character
local hpf = cgzc and cgzc:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not hpf then
return
end

local jcu = hpf.CFrame.LookVector
local jbw = Vector3.new(jcu.X, 0, jcu.Z)

if jbw.Magnitude < 0.01 then
jbw = Vector3.new(0, 0, -1)
end

jbw = jbw.Unit

local nnki = Vector3.new(-jbw.Z, 0, jbw.X)

hpf.CFrame = CFrame.lookAt(hpf.Position, hpf.Position + nnki)
end

kk.misses = 0

kk.pending = false

kk.spots = {}
kk.treasures = {}

local function whw(fuge)
local gfsk = {}
local rdt = {}

for xezk, adoo in pairs(fuge) do
local pony
local bw

if typeof(adoo) == _d("ZRUSHQAKXw") or typeof(adoo) == _d("cDYDCAId") then
pony = xezk
bw = adoo
elseif type(adoo) == _d("RxETBQo") then
pony = adoo.id or adoo.Id or adoo[1]
bw = adoo.position or adoo.Position or adoo.pos or adoo[2]
end

if typeof(bw) == _d("cDYDCAId") then
bw = bw.Position
end

if pony ~= nil and typeof(bw) == _d("ZRUSHQAKXw") then
table.insert(gfsk, { id = pony, position = bw, spot = true })
rdt[pony] = true
end
end

return gfsk, rdt
end

pcall(function()
vhzs(fyeb.DigUpdate.OnClientEvent, function(vtwl, tpx)
if vtwl == _d("dxkWOwoLGV8E") then
kk.pending = false
kk.resultAt = os.clock()
elseif vtwl == _d("dxkWKg4WD1Yc") then
kk.pending = false
end

if (vtwl == _d("YAAeHRw") or vtwl == _d("ZwIUCBwNHlYD")) and type(tpx) == _d("RxETBQo") then
local gm, kybs = whw(tpx)

if vtwl == _d("YAAeHRw") then
for citx, vltd in ipairs(gm) do
vltd.spot = true
end

kk.spots = gm
kk.reportedSpots = kybs
else
kk.treasures = gm

for jk, brar in ipairs(gm) do
brar.spot = nil
end

kk.reported = kybs
end

local jast = kk.target

if jast and not jast.mark then
local kx = jast.spot and kk.reportedSpots or kk.reported

if kx and not kx[jast.id] then
kk.targetGone = true
end
end
end
end)
end)

function kk.withinDig(jui)
local rziq = qzj.Character
local xpbl = rziq and rziq:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not xpbl then
return false
end

return (xpbl.Position - jui).Magnitude <= 10
end

kk.markGone = {}

function kk.marked()
local yp = workspace:FindFirstChild(_d("dxkWJA4KB0A"))
local lw = {}

if not yp then
return lw
end

local dzyc = os.clock()

for rk, ewz in ipairs(yp:GetChildren()) do
if ewz.Name == _d("az0QGwQ") and ewz:IsA(_d("cRECDD8ZHkc")) then
local fvk = ewz.Position
local fvb = string.format(_d("XhEDAlVdQgMWS0xBSAo"), fvk.X, fvk.Z)
local bcj = kk.markGone[fvb]

if not (bcj and dzyc - bcj < 90) then
table.insert(lw, { id = fvb, position = fvk, mark = true })
end
end
end

return lw
end

function kk.chests()
local zrc = {}

for aqd, fq in ipairs(kk.spots or {}) do
table.insert(zrc, fq)
end

for ifd, bti in ipairs(kk.treasures or {}) do
table.insert(zrc, bti)
end

for bh, xx in ipairs(kk.marked()) do
local gmln = false

for guaf, nl in ipairs(zrc) do
if (nl.position - xx.position).Magnitude < 2 then
gmln = true

break
end
end

if not gmln then
table.insert(zrc, xx)
end
end

return zrc
end

function kk.release(rmvf)
if rmvf.mark then
kk.markGone[rmvf.id] = os.clock()
else
kk.forget(rmvf)
end
end

function kk.nearestChest(qwox)
local kvs = qzj.Character
local ayy = kvs and kvs:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not ayy then
return nil
end

local hht
local ccgp

for lpb, tlht in ipairs(kk.chests()) do
local np = (tlht.position - ayy.Position).Magnitude

if np <= qwox and (not ccgp or np < ccgp) then
hht = tlht
ccgp = np
end
end

return hht
end

function kk.forget(edm)
for its, iyi in ipairs({ kk.spots or {}, kk.treasures or {} }) do
for gzy, lhy in ipairs(iyi) do
if lhy.id == edm.id then
table.remove(iyi, gzy)

return
end
end
end
end

function kk.walkTo(wxka)
local uaa = qzj.Character
local qi = uaa and uaa:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))
local mobp = uaa and uaa:FindFirstChildOfClass(_d("ewUcCAEXBVc"))

if not (qi and mobp) then
return false
end

local xzj = os.clock() + 12
local qbc = (qi.Position - wxka).Magnitude
local bp = os.clock()
local hga = false

pcall(function()
mobp:MoveTo(wxka)
end)

while os.clock() < xzj do
local xzws = qzj.Character
local mthd = xzws and xzws:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not mthd then
break
end

local pnlr = (mthd.Position - wxka).Magnitude

if pnlr <= 4 then
hga = true

break
end

if kk.targetGone or not kk.autoOn
or getgenv().ACBXDigGeneration ~= hny or not usch() then
break
end

if pnlr < qbc - 1 then
qbc = pnlr
bp = os.clock()
elseif os.clock() - bp > 1.5 then
break
end

task.wait(0.15)
end

pcall(function()
mobp:MoveTo(qi.Position)
end)

return hga
end

function kk.digAt(cspl)
kk.misses = 0
kk.pending = true

local csvs = os.clock()
local izmu = pcall(function()
fyeb.DigAction:FireServer(_d("YAQQGxs"), cspl)
end)

if not izmu then
kk.pending = false
end

local jdhv = os.clock() + 6

while kk.pending and kk.autoOn and os.clock() < jdhv
and getgenv().ACBXDigGeneration == hny and usch() do
task.wait()
end

kk.pending = false

return (kk.resultAt or 0) >= csvs
end

function kk.autoLoop()
local dq = false

while kk.autoOn and usch() and getgenv().ACBXDigGeneration == hny do
local uni = nr and nr.worldBoss
local vmy = uni ~= nil
and type(uni.holdsDigging) == _d("VQUfChsRA10")
and uni.holdsDigging() == true

if kk.shopping then

task.wait(0.5)
elseif vmy or ym.digBlocked() then

dq = true
task.wait(1)
else
if dq then

dq = false

if type(uni.setRepeat) == _d("VQUfChsRA10") then
uni.setRepeat(false)
end

kk.goToSand()
end

local nb = kk.chestOn and kk.nearestChest(2500) or nil
local ozdf = false

if nb then
kk.target = nb
kk.targetGone = false

local waj = qzj.Character and qzj.Character:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))
local viy = waj and (waj.Position - nb.position).Magnitude or 999

if viy > 45 then
pcall(function()
boga.standAt(nb.position)
end)

task.wait(0.6)
end

if not kk.walkTo(nb.position) and not kk.targetGone then
pcall(function()
boga.standAt(nb.position)
end)

task.wait(0.6)
kk.walkTo(nb.position)
end

local gyo = not kk.withinDig(nb.position)
local elhp = kk.targetGone

if elhp or gyo then
kk.strikes = elhp and 0 or (kk.strikes + 1)

if elhp or kk.strikes >= 2 then
kk.strikes = 0
kk.release(nb)
kk.skipped = kk.skipped + 1
end
else

if kk.digAt(nb.position) then
kk.strikes = 0
kk.release(nb)
kk.dug = kk.dug + 1
ozdf = true
else

kk.strikes = kk.strikes + 1

if kk.strikes >= 3 then
kk.strikes = 0
kk.release(nb)
kk.skipped = kk.skipped + 1
end
end
end

kk.target = nil
kk.targetGone = false
end

if not ozdf then
local fmd = kk.spot()

if fmd then
kk.digAt(fmd)
else

kk.misses = (kk.misses or 0) + 1

if kk.misses >= 4 then
kk.misses = 0
kk.goToSand(true)
else
kk.turn()
task.wait(0.25)
end
end
end
end
end
end

function kk.autoStart()
local joaf = kk.read()

if not (joaf and kk.bestShovel(joaf)) then
return _d("fR9RGgcXGlYcUQYYFglXUFxJOhYAXBMaSQsRC1QZHw5PHgVBAwVH")
end

local rldr = false

if hqy.enabled then
hqy.autoFishWanted = false

axso(false)
pcall(function()
qvv:UpdateState(false)
end)

rldr = true
end

wyxi = true
kk.equipBest()

if kk.chestOn then
pcall(kk.equipBestDetector)
end

kk.goToSand()

task.spawn(kk.autoLoop)

return _d("dxkWDgYWCx0") .. (rldr and _d("EzEEHQBYKloDGUkAHgoTXVEdBx1MQBgeHwoUTFsRAkkbEAkTBB4GA1gfXx8FRw") or _d(""))
end

function kk.toggleAuto(ehx, yamj)
if ehx then
local dpij = kk.autoOn == true

kk.chestOn = yamj == true
kk.switching = true

pcall(function()
local vbe = yamj and kk.autoToggle or kk.chestToggle

if vbe then
vbe:UpdateState(false)
end
end)

kk.switching = false

if dpij then
return
end

kk.autoOn = true

task.spawn(function()
local ikf = kk.autoStart()

lszo:Notify({
Title = yamj and _d("cgUFBk88BVRQMgEKCxhA") or _d("cgUFBk88BVQ"),
Description = ikf,
Lifetime = 6,
})
end)
else

if kk.switching then
return
end

kk.autoOn = false
kk.pending = false
wyxi = false
end
end

kk.autoToggle = xel:Toggle({
Name = _d("cgUFBk88BVQ"),
Default = false,
Callback = function(ooz)
kk.toggleAuto(ooz, false)
end,
}, _d("VxkWDgYWC2wRBB0A"))

kk.chestToggle = xel:Toggle({
Name = _d("cgUFBk88BVRQMgEKCxhA"),
Default = false,
Callback = function(hjz)
kk.toggleAuto(hjz, true)
end,
}, _d("VxkWDgYWC2wRBB0AJw9bFQId"))

kk.chestParagraph = xel:Paragraph({
Header = _d("cBgUGhsL"),
Body = _d("ZwIQCgQdCAlQQUlCWChGF0tJX1hBEyMaAB8ICVdKUVk"),
})

task.spawn(function()
local cax

while usch() and awoy do
local nsw = #kk.chests()
local dfl = _d("ZwIQCgQdCAlQ") .. nsw .. _d("E11RLRofVhM") .. kk.dug .. _d("E11ROgQRHEMVFVNP") .. kk.skipped

if kk.chestOn and nsw > 0 then
local pkzu = kk.nearestChest(2500)
local lssa = qzj.Character
local ce = lssa and lssa:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if pkzu and ce then
local wvx = math.floor((pkzu.position - ce.Position).Magnitude)
dfl = dfl .. _d("OT4UCB0dH0dKUQ") .. wvx .. (wvx > 45 and _d("EwMFHAsLTBsYHhlG") or _d("EwMFHAsL"))
end
end

if dfl ~= cax then
cax = dfl

pcall(function()
kk.chestParagraph:UpdateBody(dfl)
end)
end

task.wait(0.5)
end
end)

function kk.npcRow()
for tjhk, oqs in ipairs(boga.npcs) do
if oqs.name == _d("dxkWDgoK") then
return oqs
end
end
end

function kk.shop(ugz, eepu)
local irnx, hbom, xsr, er = pcall(function()
return fyeb.DigShop:InvokeServer(ugz, eepu)
end)

if not irnx then
return false, _d("ZxgUSQsRCxMDGQYfWAVAUB8GG1gNXQMGDB0RAlRe")
end

return hbom == true, xsr, type(er) == _d("RxETBQo") and er or nil
end

function kk.pickShovel(thj)
local rft = thj.shovels or {}
local pwg = tonumber(thj.digs) or 0
local qcej

for izya, swe in ipairs(kk.data.Shovels) do
if not swe.crafted and swe.id ~= _d("QBgeHwoUM1ERAgAM") and rft[swe.id] ~= true then
local slx = tonumber(swe.cost) or math.huge

if slx <= pwg and (not qcej or slx > (tonumber(qcej.cost) or 0)) then
qcej = swe
end
end
end

return qcej
end

function kk.pickDetector(gq)
local rzbp = gq.detectors or {}
local oz = tonumber(gq.digs) or 0
local eho

for ao, trty in ipairs(kk.data.Detectors) do
if not trty.crafted and trty.id ~= _d("VxUFDAwMA0EvEwgcEQ8") and rzbp[trty.id] ~= true then
local hp = tonumber(trty.cost) or math.huge

if hp <= oz and (not eho or hp > (tonumber(eho.cost) or 0)) then
eho = trty
end
end
end

return eho
end

function kk.nextDef(bbt, iulo)
local odf

for hwv, arlt in ipairs(bbt) do
local utg = tonumber(arlt.cost)

if not arlt.crafted and utg and iulo[arlt.id] ~= true then
if not odf or utg < (tonumber(odf.cost) or math.huge) then
odf = arlt
end
end
end

return odf
end

function kk.toCounter()
local ul = kk.npcRow()
local jth = ul and boga.point(ul)
local zwq = qzj.Character
local vr = zwq and zwq:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not (jth and vr) then
return false
end

if (vr.Position - jth).Magnitude <= 20 then
return true
end

boga.go(ul)
task.wait(2.2)

zwq = qzj.Character
vr = zwq and zwq:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

return vr ~= nil and (vr.Position - jth).Magnitude <= 20
end

function kk.upgradeAll()
local pzu = kk.buyOn == true
local mgxf = kk.detBuyOn == true

if not (pzu or mgxf) then
return nil, _d("fBYXRw")
end

local brcc = kk.read()

if not brcc then
return nil, _d("ZxgUSQsRCxMDGQYfWAVAUB8GG1gNXQMGDB0RAlRe")
end

if pzu then
local kp = kk.bestShovel(brcc)

if kp and brcc.equippedShovel ~= kp then
kk.equipBest()
end
end

if mgxf then
local lj = kk.bestDetector(brcc)

if lj and brcc.equippedDetector ~= lj then
kk.equipBestDetector()
end
end

local tpq = pzu and kk.pickShovel(brcc) or nil
local nbjp = mgxf and kk.pickDetector(brcc) or nil

if not (tpq or nbjp) then
return nil, _d("fR9RHB8fHlIUFEkGC0xSFhcGHRwNURwUSRYdGB0")
end

kk.shopping = true
kk.toCounter()

local awp = {}
local rm

local function rvnh(xvg, vsue)
if not vsue then
return
end

local fy, xpr = kk.shop(xvg, vsue.id)

if fy then
table.insert(awp, vsue.name)
elseif not rm then
rm = tostring(xpr)
end
end

rvnh(_d("cQUIOgcXGlYc"), tpq)
rvnh(_d("cQUILQoMCVAEHhs"), nbjp)

if #awp == 0 then
kk.shopping = false

return nil, _d("cQUISR0dCkYDFA1VWA") .. (rm or _d("XR9RCAELG1YC"))
end

if pzu then
kk.equipBest()
end

if mgxf then
kk.equipBestDetector()
end

if kk.autoOn then
kk.leaveNpc()
end

kk.shopping = false

return table.concat(awp, _d("E1tR"))
end

function kk.buyLoop()
while kk.buyOn or kk.detBuyOn do
local xtj, wffc, jcar = pcall(kk.upgradeAll)

kk.shopping = false

if not xtj then
task.wait(10)
elseif wffc then
lszo:Notify({
Title = _d("cgUFBk86GUpQNQAIHwVdF1EuChke"),
Description = _d("cR8EDgcMTFIeFUkKCRlaAAEMC1gYWxVR") .. wffc .. _d("HQ"),
Lifetime = 6,
})

task.wait(3)
else
task.wait(jcar == _d("fBYXRw") and 0.5 or 10)
end
end
end

function kk.syncBuyLoop()
if not (kk.buyOn or kk.detBuyOn) or kk.buyRunning then
return
end

kk.buyRunning = true

task.spawn(function()
kk.buyLoop()

kk.buyRunning = false
end)
end

xel:Toggle({
Name = _d("cgUFBk86GUpQMwwcDExgGB4fChQ"),
Default = false,
Callback = function(zmna)
kk.buyOn = zmna
kk.syncBuyLoop()
end,
}, _d("VxkWDgYWC2wSBBA"))

xel:Toggle({
Name = _d("cgUFBk86GUpQMwwcDEx3FQUMDAwDQQ"),
Default = false,
Callback = function(empk)
kk.detBuyOn = empk
kk.syncBuyLoop()
end,
}, _d("VxkWDgYWC2wSBBAwHAlHFRIdAAo"))

function kk.statusText()
local gr = kk.read()

if not gr then
return _d("ZxgUSQsRCxMDGQYfWAVAUB8GG1gNXQMGDB0RAlRe")
end

local viwr = tonumber(gr.digs) or 0
local chu = { _d("dxkWGlVY") .. viwr }

local function brj(bct, zxt)
if not zxt then
return bct .. _d("CVAUHwoKFUcYGAcIWANEHhQNQQ")
end

local ihez = tonumber(zxt.cost) or 0
local qla = ihez - viwr

return bct .. _d("CVA") .. tostring(zxt.name) .. _d("E11R") .. ihez
.. (qla <= 0 and _d("E1gDDA4cFRo") or (_d("E1g") .. qla .. _d("EwQeSQgXRQ")))
end

table.insert(chu, brj(_d("fRUJHU8LBFwGFAU"), kk.nextDef(kk.data.Shovels, gr.shovels or {})))
table.insert(chu, brj(_d("fRUJHU8cCUcVEh0ACg"), kk.nextDef(kk.data.Detectors, gr.detectors or {})))

return table.concat(chu, _d("OQ"))
end

task.spawn(function()
while usch() and awoy do
local ipzg, qa = pcall(kk.statusText)

if ipzg and kk.statusParagraph then
pcall(function()
kk.statusParagraph:UpdateBody(qa)
end)
end

task.wait(6)
end
end)

getgenv().ACBXDigging = kk

vzl.tab = lpbv:Tab({
Name = _d("YBUFHQYWC0A"),

Image = _d(""),
})

vzl.icon = function()
local ti = gethui()

for fei, ckq in ipairs(ti:QueryDescendants(_d("eh0QDgo0DVEVHQ"))) do
if ckq.Name == _d("ZxETIAIZC1Y") then
local ieh = ckq.Parent
local dyq = ieh and ieh:FindFirstChild(_d("ZxETOhgRGFAYFBshGQFW"))

if dyq and dyq.Text == _d("YBUFHQYWC0A") then
if ckq:GetAttribute(_d("cjMzMSwXC3oTHgc")) then
return true
end

ckq:SetAttribute(_d("cjMzMSwXC3oTHgc"), true)
ckq.Image = _d("")
ckq.BackgroundTransparency = 1

local fz = Color3.fromRGB(168, 170, 176)

local function yer(qfms, oy, opcc, uz, hzd, furb)
local wzc = Instance.new(_d("dQIQBAo"))

wzc.Size = UDim2.fromOffset(opcc, uz)
wzc.Position = UDim2.fromOffset(qfms, oy)
wzc.BackgroundColor3 = fz
wzc.BorderSizePixel = 0
wzc.Parent = ckq

if not furb then
wzc.BackgroundTransparency = 1

local bms = Instance.new(_d("ZjkiHR0XB1Y"))

bms.Color = fz
bms.Thickness = 1.3
bms.LineJoinMode = Enum.LineJoinMode.Round
bms.Parent = wzc
end

if hzd then
local uc = Instance.new(_d("ZjkyBh0WCUE"))

uc.CornerRadius = UDim.new(0, hzd)
uc.Parent = wzc
end

return wzc
end

local qigf = {
{ 8, 0, 2, 3 },
{ 8, 15, 2, 3 },
{ 0, 8, 3, 2 },
{ 15, 8, 3, 2 },
{ 2, 2, 3, 3 },
{ 13, 2, 3, 3 },
{ 2, 13, 3, 3 },
{ 13, 13, 3, 3 },
}

for cllg, izb in ipairs(qigf) do
yer(izb[1], izb[2], izb[3], izb[4], 0, true)
end

yer(2, 2, 14, 14, 7, false)
yer(7, 7, 4, 4, 2, true)

return true
end
end
end

return false
end

task.defer(function()
for rlig = 1, 20 do
if vzl.icon() then
break
end

task.wait(0.25)
end
end)

vzl.prioSection = vzl.tab:Section({
Side = _d("fxUXHQ"),
})

vzl.prioSection:Header({
Name = _d("YwIYBh0RGEo"),
})

vzl.prioSection:Paragraph({
Header = _d("ZBgeSQgXCUBQFwAdCxg"),
Body = _d("AlAFCAQdHxMEGQxPGQ9QHwQHG1gKWgICHUNYWhMHEAAbC0xVHwNJCg4JQQkTBgsBQhM1EAoHWB5cB1EAHFgNEx4EBA0dHhMRHw1PDARWUBUbAAgIXAcfSRoWCFYCUQAbWAVAUAYBDgxMQAQQBwsLTEcYFBsKWEETABgKBFgNEx4QBApYGFsRBUkOFB5WERUQTxADXxQCSQ4WA0cYFBtPFhleEhQbTxkCV1AFAQpYGEQfURoYGRwdUDBJHRcbExkCSQcdAFdQEwgME0xcHh0QTxoVExFRBw4VCRMREwYZHUxaBFEdBxkYExgQGk8LA14VBQEGFgsTBB5JCxdMQRkWARtYAlwHX2NlKwRcAAJFTxUJQRcYBwhUTFYIAQwLERhaHx8aTxkCV1AFAQpYHlYDBUkAHkxHGBRJABYJHgMZBhtYGEEZARpPGR5WUB8GG1gEVgIUSQAWTEMFAxkACwkJUAUBCgFMUhwDDA4cFRMDBQgBHExHGBRJHQ0CXRkfDk8ZGUcfHAgbEQNdUBUGGBZMRBgYBQpYGFsVCEkLF0xHGBQAHVgGXBJf"),
})

vzl.prioRows = {}

vzl.prioBuilding = true

local al = {}

for qtac, fe in ipairs(ym.prioGroups) do
al[#al + 1] = fe.label
end

for ukb = 1, #ym.prioGroups do
local oyh = nil

pcall(function()
oyh = vzl.prioSection:Dropdown({
Name = _d("YwIYBh0RGEpQ") .. ukb,
Search = false,
Multi = false,
Required = false,
Default = ukb,
Options = al,
Callback = function(eivg)
local lzv = type(eivg) == _d("RxETBQo") and eivg[1] or eivg
local nmcb

for ezc, ewkk in ipairs(ym.prioGroups) do
if ewkk.label == lzv then
nmcb = ewkk

break
end
end

if nmcb then
vzl.setPriority(nmcb.id, ukb)
end
end,
}, _d("QwIYBjAKDV0bLg") .. ukb)
end)

vzl.prioRows[ukb] = oyh
end

vzl.prioBuilding = false

vzl.configSection = vzl.tab:Section({
Side = _d("fxUXHQ"),
})

vzl.configSection:Header({
Name = _d("cB8fDwYfTH4RHwgIHQFWHgU"),
})

vzl.autoSaveToggle = vzl.configSection:Toggle({
Name = _d("cgUFBk8LDUUV"),
Default = false,
Callback = function(zm)
vzl.autoSave = zm
vzl.autoSaveAt = 0

if zm then
local wnhc = vzl.selected or _d("VxUXCBoUGA")
local xjt, bmuw = vzl.save(wnhc)

vzl.selected = wnhc
vzl.lastText = xjt and (_d("cgUFBk8LDUUVUQYBWEETBwMGGx1M") .. wnhc)
or (_d("cgUFBk8LDUUVUQYBVExVGQMaG1gbQRkFDE8eDVocFA1VWA") .. tostring(bmuw))
else
vzl.lastText = _d("cgUFBk8LDUUVUQYJHkI")
end
end,
}, _d("UB8fDwYfM1IFBQYwCw1FFQ"))

vzl.nameInput = vzl.configSection:Input({
Name = _d("YBEHDE8WDV4V"),
Placeholder = _d("Vl4WR08qDVoUAg"),
AcceptedCharacters = _d("chwd"),
Callback = function(ui)
vzl.nameDraft = ui
end,
})

vzl.nameInput.IgnoreConfig = true

vzl.configSection:Button({
Name = _d("cAIUCBsdTEARBww"),
Callback = function()
local nwl = vzl.nameDraft or vzl.nameInput:GetInput()

nwl = type(nwl) == _d("QAQDAAEf") and nwl:gsub(_d("bVUCQg"), _d("")):gsub(_d("FgNaTQ"), _d("")) or _d("")

if nwl == _d("") then
lszo:Dialog({
Title = _d("cB8fDwYf"),
Description = _d("ZwkBDE8ZTF0RHAxPHgNBUAUBClgfUgYUSQkRHkAEUURPERgTEhQKABUJQFAFAQpYClocFE4cWAJSHRRH"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})

return
end

local ih, sjp = vzl.save(nwl)

if not ih then
vzl.lastText = _d("YBEHDE8eDVocFA1VWA") .. tostring(sjp)

return
end

vzl.selected = nwl
vzl.lastText = _d("cAIUCBsdCBM") .. nwl .. _d("HQ")
vzl.savesAt = 0

task.defer(function()
task.wait(0.25)

pcall(function()
vzl.fileDropdown:UpdateSelection(nwl)
end)
end)
end,
})

vzl.fileDropdown = vzl.configSection:Dropdown({
Name = _d("YBEHDE8eBV8V"),
Search = false,
Multi = false,
Required = false,
Options = vzl.saves(),
Callback = function(px)
local hig = type(px) == _d("RxETBQo") and px[1] or px

if type(hig) == _d("QAQDAAEf") and hig ~= _d("") then
vzl.selected = hig
vzl.selectionShown = hig

pcall(function()
vzl.fileDropdown:UpdateName(_d("YBEHDE8eBV8VS0k") .. hig)
end)
end
end,
})

vzl.fileDropdown.IgnoreConfig = true

vzl.configSection:Button({
Name = _d("fx8QDU8LCV8VEh0KHA"),
Callback = function()
local tvwn = vzl.selected or vzl.fileDropdown.Value
local ehv, hsfr = vzl.load(tvwn)

vzl.lastText = ehv and (_d("fx8QDQocTA") .. tvwn .. _d("HQ")) or (_d("fx8QDU8eDVocFA1VWA") .. tostring(hsfr))
end,
})

vzl.configSection:Button({
Name = _d("YBEHDE8MAxMDFAUKGxhWFA"),
Callback = function()
local nig = vzl.selected or vzl.fileDropdown.Value
local fwqk, jns = vzl.save(nig)

vzl.lastText = fwqk and (_d("ZAIeHQpY") .. nig .. _d("HQ")) or (_d("YBEHDE8eDVocFA1VWA") .. tostring(jns))
end,
})

vzl.configSection:Button({
Name = _d("dxUdDBsdTEAVHQwMDAlXUAIIGR0"),
Callback = function()
local kgtp = vzl.selected or vzl.fileDropdown.Value

if type(kgtp) ~= _d("QAQDAAEf") or kgtp == _d("") then
vzl.lastText = _d("YxkSAk8ZTEARBwxPHgVfFVEPBgofR14")

return
end

lszo:Dialog({
Title = _d("dxUdDBsdTA") .. kgtp .. _d("DA"),
Description = _d("ZxgUSQkRAFZQGBpPCgleHwcMC1gKQR8cSQsRH1hQEAcLWA9SHh8GG1gOVlADDAwXGlYCFA1B"),
Buttons = {
{
Name = _d("dxUdDBsd"),
Callback = function()
local byy, haf = vzl.delete(kgtp)

vzl.lastText = byy
and (_d("dxUdDBsdCBM") .. kgtp .. _d("HQ"))
or (_d("cB8EBQtYAlwEUQ0KFAlHFUtJ") .. tostring(haf))
end,
},
{
Name = _d("cBEfCgoU"),
},
},
})
end,
})

vzl.configSection:Button({
Name = _d("YRUXGwoLBBMcGBob"),
Callback = function()
vzl.savesAt = 0
vzl.lastText = _d("YBEHDE8UBUAEURsKHh5WAxkMC1Y")
end,
})

vzl.configSection:Button({
Name = _d("fhEDAk8ZHxMRBB0AWABcERU"),
Callback = function()
local ceqp = vzl.selected or vzl.fileDropdown.Value

if type(ceqp) ~= _d("QAQDAAEf") or ceqp == _d("") then
vzl.lastText = _d("YxkSAk8ZTEARBwxPHgVfFVEPBgofR14")

return
end

if vzl.setAutoLoad(ceqp) then
vzl.lastText = ceqp .. _d("ExweCAsLTFweURobGR5HXg")
else
vzl.lastText = _d("cB8EBQtYAlwEUR4dERhWUAUBClgNRgQeSQMXDVdQHAgdEwlBXg")
end
end,
})

vzl.configSection:Button({
Name = _d("cBwUCB1YDUYEHkkDFw1X"),
Callback = function()
vzl.setAutoLoad(_d(""))
vzl.lastText = _d("fR8FAQYWCxMcHggLC0xcHlEaGxkeR14")
end,
})

vzl.statusParagraph = vzl.configSection:Paragraph({
Header = _d("YAQQHRoL"),
Body = _d(""),
})

vzl.miscSection = vzl.tab:Section({
Side = _d("YRkWARs"),
})

vzl.miscSection:Header({
Name = _d("fhkCCg"),
})

vzl.miscSection:Toggle({
Name = _d("cgUFBk8bAFwDFEkIHQJWAhAdBhcCEyU4"),
Default = false,
Callback = function(mrli)
adu(mrli)
end,
}, _d("XhkCCjAZGUcfLgoDFx9WLxYMAR0eUgQYBgE"))

vzl.miscSection:Toggle({
Name = _d("cgUFBk8qA18c"),
Default = true,
Callback = function(ntou)
vzl.autoRoll = ntou

if ntou and vzl.setRollButton then
vzl.setRollButton(_d("cgUFBj0XAF8yBB0bFwI"), true)
end
end,
}, _d("XhkCCjAZGUcfLhsAFAA"))

vzl.miscSection:Toggle({
Name = _d("cgUFBk8pGVoTGkk9FwBf"),
Default = true,
Callback = function(lbok)
vzl.autoQuickRoll = lbok

if lbok and vzl.setRollButton then
vzl.setRollButton(_d("YgUYCgQqA18cMxwbDANd"), true)
end
end,
}, _d("XhkCCjAZGUcfLhgaEQ9YLwMGAxQ"))

vzl.uiSection = vzl.tab:Section({
Side = _d("YRkWARs"),
})

vzl.uiSection:Header({
Name = _d("Zjk"),
})

vzl.uiSection:Toggle({
Name = _d("cRESAggKA0YeFUkNFBlB"),
Default = true,
Callback = function(fqjd)
pcall(function()
lszo:SetAcrylicBlurState(fqjd)
end)
end,
}, _d("RhkuCw4bB1QCHhwBHDNRHAQb"))

function vzl.widthFactor(cu)
return 1 + math.max(0, (cu or 1) - 1) * 0.8
end

function vzl.scaleCap()
local ejb = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local ko = math.min(120, math.floor(((ejb.Y - 40 - 8 - 8) / 500) * 100))

while ko > 50 and (vzl.baseWidth or 720) * (ko / 100) * vzl.widthFactor(ko / 100) > ejb.X - 16 do
ko = ko - 1
end

return math.max(50, ko)
end

function vzl.scaleCeiling()
return math.min(1.2, vzl.scaleCap() / 100)
end

function vzl.refreshScaleCap()
local nbih = vzl.scaleSlider

if not nbih then
return
end

local gt = vzl.scaleCeiling()

pcall(function()
nbih.Settings.Maximum = gt
end)

local sz = tonumber(nbih:GetValue()) or 1

if sz > gt then
vzl.scaleTarget = gt

pcall(function()
nbih:UpdateValue(gt)
end)
end
end

vzl.scaleSlider = vzl.uiSection:Slider({
Name = _d("ZjlRGgwZAFY"),
Default = 1,
Minimum = 0.5,

Maximum = vzl.scaleCeiling(),
DisplayMethod = _d("ZREdHAo"),
Precision = 2,

Callback = function(ymu)
vzl.scalePending = tonumber(ymu)
vzl.scalePendingAt = os.clock()
end,
onInputComplete = function(akhs)
local entj = vzl.scaleCeiling()

vzl.scaleTarget = math.clamp(tonumber(akhs) or vzl.scalePending or 1, 0.5, entj)
vzl.scalePending = nil

vzl.scaleAnchor = nil

vzl.saveUi()
end,
}, _d("RhkuGgwZAFY"))

vzl.refreshScaleCap()

vzl.themeDropdown = vzl.uiSection:Dropdown({
Name = _d("ZxgUBApCTGUfGA0"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = vzl.themeOrder,
Callback = function(ydxa)
local ng = type(ydxa) == _d("RxETBQo") and ydxa[1] or ydxa

if type(ng) == _d("QAQDAAEf") and vzl.presets[ng] then
vzl.theme = ng
vzl.accent = nil
vzl.applyTheme()

pcall(function()
vzl.themeDropdown:UpdateName(_d("ZxgUBApCTA") .. ng)
end)

vzl.saveUi()
end
end,
}, _d("RhkuHQcdAVY"))

vzl.accentPicker = vzl.uiSection:Colorpicker({
Name = _d("chMSDAEMTFAfHQYaCg"),
Default = Color3.fromRGB(168, 170, 176),
Alpha = 0,
Callback = function(ozva)
vzl.accent = ozva
vzl.applyTheme()
vzl.saveUi()
end,
}, _d("RhkuCAwbCV0E"))

vzl.codesSection = vzl.tab:Section({
Side = _d("YRkWARs"),
})

vzl.codesSection:Header({
Name = _d("cB8VDBw"),
})

vzl.codeText = _d("YRUVDAoVHxMVBwwdAUxQHxUMTwwEWgNRDg4VCRMDGQAfC0xEGQUBQ1gDXRVRDBkdHkpQEgYaCABWUB4PTwsJUB8fDRxW")

function vzl.setCodeText(kd)
vzl.codeText = kd

pcall(function()
vzl.codeParagraph:UpdateBody(kd)
end)
end

function vzl.redeemCodes()
if vzl.redeeming then
return
end

local ev = fyeb.RedeemCode
local uei = gs:FindFirstChild(_d("fh8VHAMdP1ACGBkbCw"))
local sm = uei and uei:FindFirstChild(_d("cB8VDCsZGFI"))
local bgbv, cvdx = false, nil

if ev and sm then
bgbv, cvdx = pcall(function()
return require(sm)
end)
end

local uid = bgbv and type(cvdx) == _d("RxETBQo") and cvdx.Codes or nil

if not ev or type(uid) ~= _d("RxETBQo") then
vzl.setCodeText(_d("ZxgYGk8OCUEDGAYBWANVUAUBClgLUh0USQcZHxMeHkkMFwhWUB0AHAxMXAJRBwBYHlYUFAwCWB5WHR4dClY"))
return
end

local uueq = {}

for krjw in pairs(uid) do
uueq[#uueq + 1] = krjw
end

table.sort(uueq)

local ungs = #uueq

vzl.redeeming = true
vzl.setCodeText(_d("YRUVDAoVBV0XUQ") .. ungs .. _d("ExMeDQoLQh1e"))

task.spawn(function()
local bna, dx, flq = 0, 0, 0
local haxr = {}

for ha = 1, ungs do
if not usch() then
break
end

local pkr = uueq[ha]
local tyyh, jyta = pcall(function()
return ev:InvokeServer(pkr)
end)

local aov = tyyh and type(jyta) == _d("RxETBQo") and jyta.success == true
local pkah = tyyh and type(jyta) == _d("RxETBQo") and tostring(jyta.message or _d("")) or tostring(jyta or _d(""))

if not aov and string.find(string.lower(pkah), _d("RBEYHQ"), 1, true) then
task.wait(3.5)

tyyh, jyta = pcall(function()
return ev:InvokeServer(pkr)
end)

aov = tyyh and type(jyta) == _d("RxETBQo") and jyta.success == true
pkah = tyyh and type(jyta) == _d("RxETBQo") and tostring(jyta.message or _d("")) or tostring(jyta or _d(""))
end

if aov then
bna = bna + 1
elseif string.find(string.lower(pkah), _d("UhwDDA4cFQ"), 1, true) then
dx = dx + 1
else
flq = flq + 1

if #haxr < 6 then
haxr[#haxr + 1] = pkr .. _d("CVA") .. (pkah ~= _d("") and pkah or _d("XR9RCAELG1YC"))
end
end

vzl.setCodeText(string.format(_d("FhRRBglYSVdQXElKHExBFRUMChUJV1xRTAtYDV8CFAgLAUATVRVJHR0KRgMUDUE"), ha, ungs, bna, dx, flq))

if ha < ungs and usch() then
task.wait(1.8)
end
end

local hdu = {
string.format(_d("YRUVDAoVCVdQVA1DWA1fAhQICwFMWxEVSUocQBMCFA8aCwlXUFQNTxcKE1UVRw"), bna, dx, flq, ungs),
}

for mj, uhov in ipairs(haxr) do
hdu[#hdu + 1] = uhov
end

vzl.redeeming = false
vzl.setCodeText(table.concat(hdu, _d("OQ")))
end)
end

vzl.codesSection:Button({
Name = _d("YRUVDAoVTFIcHUkMFwhWAw"),
Callback = function()
vzl.redeemCodes()
end,
})

vzl.codeParagraph = vzl.codesSection:Paragraph({
Header = _d("cB8VDBw"),
Body = vzl.codeText,
})

vzl.scriptSection = vzl.tab:Section({
Side = _d("YRkWARs"),
})

vzl.scriptSection:Header({
Name = _d("YBMDAB8M"),
})

vzl.scriptSection:Button({
Name = _d("Zh4dBg4cTEATAwAfDA"),
Callback = function()
pcall(function()
lszo:Unload()
end)

getgenv().ACBXWindow = nil
getgenv().ACBXAllowReload = nil
end,
})

task.spawn(function()
while usch() do

if os.clock() >= vzl.savesAt then
vzl.savesAt = os.clock() + 3

local gbj = vzl.saves()
local nqps = table.concat(gbj, _d("Tw"))

if nqps ~= vzl.knownSaves then
vzl.knownSaves = nqps

pcall(function()
vzl.fileDropdown:ClearOptions()
vzl.fileDropdown:InsertOptions(gbj)
end)
end

if vzl.selected and vzl.selectionShown ~= vzl.selected then
vzl.selectionShown = vzl.selected

pcall(function()
vzl.fileDropdown:UpdateSelection(vzl.selected)
end)
end
end

if vzl.autoSave and os.clock() >= vzl.autoSaveAt then
vzl.autoSaveAt = os.clock() + 60

local eszn = vzl.selected or _d("VxUXCBoUGA")
local qsz, kh = vzl.save(eszn)

vzl.selected = eszn
vzl.lastText = qsz and (_d("cgUFBk8LDUUVFUk") .. eszn .. _d("ExEFSQ") .. os.date(_d("FjhLTCI")) .. _d("HQ"))
or (_d("cgUFBk8LDUUVUQ8OEQBWFEtJ") .. tostring(kh))
end

if os.clock() >= vzl.themeAt then
vzl.themeAt = os.clock() + 3
vzl.applyTheme()
end

if os.clock() >= vzl.capAt then
vzl.capAt = os.clock() + 2
vzl.refreshScaleCap()
end

if os.clock() >= vzl.statusAt then
vzl.statusAt = os.clock() + 2

local xz = vzl.autoLoadName()
local fpk = table.concat({
_d("cgUFBk8UA1IUS0k") .. (xz or _d("XR8fDA")),
_d("YBEHDBxCTA") .. tostring(#vzl.saves()),
vzl.lastText,
}, _d("OQ"))

if fpk ~= vzl.shownStatus then
vzl.shownStatus = fpk

pcall(function()
vzl.statusParagraph:UpdateBody(fpk)
end)
end
end

task.wait(0.25)
end
end)

task.spawn(function()
while usch() do

local romz = vzl.scalePending

if romz and os.clock() - (vzl.scalePendingAt or 0) > 0.35 then
local wvia = vzl.scaleCeiling()
local bfn = math.clamp(romz, 0.5, wvia)

vzl.scalePending = nil

if math.abs(bfn - vzl.scaleTarget) > 0.002 then
vzl.scaleTarget = bfn
vzl.scaleAnchor = nil

vzl.saveUi()
end
end

if math.abs(vzl.scaleTarget - vzl.scale) > 0.002 then
local gmji = vzl.guiRoot()

if gmji and not vzl.baseWidth then
vzl.baseWidth = gmji.Size.X.Offset
vzl.baseHeight = gmji.Size.Y.Offset
end

local tkwb = vzl.baseWidth or 720
local odmy = vzl.baseHeight or 500
local udvv = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local cizv, smyh = 8, 40

if not vzl.scaleAnchor and gmji then

local fo = vzl.widthFactor(vzl.scaleTarget)
local hyzv, oovh = tkwb * fo * vzl.scaleTarget, odmy * vzl.scaleTarget
local geov = gmji.AbsolutePosition

vzl.scaleAnchor = Vector2.new(
math.clamp(geov.X, cizv, math.max(cizv, udvv.X - hyzv - cizv)),
math.clamp(geov.Y, smyh, math.max(smyh, udvv.Y - oovh - cizv))
)
end

local fhu = vzl.scaleAnchor

vzl.scale = vzl.scale + (vzl.scaleTarget - vzl.scale) * 0.18

local inwv = vzl.widthFactor(vzl.scale)

pcall(function()
lszo:SetScale(vzl.scale)

if gmji then
local cdgw = math.floor(tkwb * inwv)

gmji.Size = UDim2.fromOffset(cdgw, math.floor(odmy))

local vx = gmji:FindFirstChild(_d("cB8fHQoWGA"))

if vx then
local sn = gmji:FindFirstChild(_d("YBkVDA0ZHg"))
local tpvu = math.floor(sn and sn.Size.X.Scale * cdgw or cdgw * 0.325)

vx.Size = UDim2.new(0, math.max(0, cdgw - tpvu), 1, 0)
end
end
end)

if gmji and fhu then
local yzt, yo = tkwb * inwv * vzl.scale, odmy * vzl.scale
local aau = math.clamp(fhu.X, cizv, math.max(cizv, udvv.X - yzt - cizv))
local atn = math.clamp(fhu.Y, smyh, math.max(smyh, udvv.Y - yo - cizv))

local jwu = gmji.Parent and gmji.Parent.AbsolutePosition or Vector2.zero

pcall(function()
gmji.Position = UDim2.fromOffset(math.floor(aau - jwu.X), math.floor(atn - jwu.Y))
end)
end
else

vzl.scaleAnchor = nil
end

task.wait()
end
end)

nr.misc.tierLabels = {}
nr.misc.labelToTier = {}

nr.misc.expSection = nr.misc.tab:Section({
Side = _d("fxUXHQ"),
})

nr.misc.expSection:Header({
Name = _d("dggBDAsRGFofHxpPiPOk8p7R4A"),
})

nr.misc.claimToggle = nr.misc.expSection:Toggle({
Name = _d("cgUFBk8bAFIZHA"),
Default = false,
Callback = function(twir)
local ueoy = nr.misc.expeditions

ueoy.enabled = twir
ueoy.claimAt = 0

if twir then
ueoy.askedAt = 0
ueoy.request()
end
end,
}, _d("UgUFBjAbAFIZHA"))

nr.misc.rewardToggle = nr.misc.expSection:Toggle({
Name = _d("cgUFBk8bAFwDFEkdHRtSAhUa"),
Default = false,
Callback = function(soh)
local vor = nr.misc.expeditions

vor.autoClose = soh

if soh then
vor.closeRewards()
end
end,
}, _d("VggBNg4NGFwvEgUACwk"))

nr.misc.startToggle = nr.misc.expSection:Toggle({
Name = _d("cgUFBk8LGFICBQ"),
Default = false,
Callback = function(mex)
local ihb = nr.misc.expeditions

if mex and not next(ihb.tiersWanted) then
ihb.autoStart = false

pcall(function()
nr.misc.startToggle:UpdateState(false)
end)

lszo:Dialog({
Title = _d("cgUFBk8LGFICBUkBHQlXA1EITwwFVgI"),
Description = _d("YxkSAk8ZGBMcFAgcDExcHhRJGxEJQVAYB08MBFZQJQAKCkxXAh4ZCxcbXVAXAB0LGB1QNAgcAUxHERoMHFgYWxVRCgcdDUMVAh1PGw1BFAJFTzYFVBgFBA4KCRMEGQxPCg1BFQIdQ1gNXRRRCAEBTF0FHAsKCkxcFlEdBx0BExMQB08KGV1QEB1PFwJQFV8"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})

return
end

ihb.autoStart = mex
ihb.startedAt = {}

if mex then
ihb.askedAt = 0
ihb.request()
end
end,
}, _d("UgUFBjALGFICBQ"))

for xf, euur in ipairs(nr.misc.expeditions.tiers()) do
table.insert(nr.misc.tierLabels, tostring(euur.name))
nr.misc.labelToTier[tostring(euur.name)] = euur.id
end

nr.misc.building = true

nr.misc.tierDropdown = nr.misc.expSection:Dropdown({
Name = _d("ZxkUGw"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = nr.misc.tierLabels,
Callback = function(eye)
local opyq = nr.misc.expeditions

if nr.misc.building then
return
end

local ori = {}
local ysl = {}

if type(eye) == _d("RxETBQo") then
for rd, kpa in pairs(eye) do
local ez = nr.misc.labelToTier[tostring(rd)]

if kpa and ez then
ori[ez] = true
table.insert(ysl, tostring(rd))
end
end
end

table.sort(ysl)
opyq.tiersWanted = ori

pcall(function()
nr.misc.tierDropdown:UpdateName(#ysl > 0 and (_d("ZxkUG0+a7JFQ") .. table.concat(ysl, _d("H1A"))) or _d("ZxkUG0+a7JFQHwYBHQ"))
end)
end,
}, _d("RxkUGw"))

task.defer(function()
nr.misc.building = false
end)

nr.misc.expSection:Button({
Name = _d("cBwQAAJYAlwH"),
Callback = function()
local gqr = nr.misc.expeditions

if not gqr.claim() then
lszo:Notify({
Title = _d("dggBDAsRGFofHxo"),
Description = _d("fR8FAQYWCxMYEBpPGwNeFVELDhsHEwkUHUE"),
Lifetime = 5,
})
end
end,
})

nr.misc.expSection:Button({
Name = _d("YBUfDU8LCV8VEh0KHA"),
Callback = function()
local trdw = nr.misc.expeditions

if not next(trdw.tiersWanted) then
lszo:Notify({
Title = _d("dggBDAsRGFofHxo"),
Description = _d("YxkSAk8ZGBMcFAgcDExcHhRJGxEJQVAYB08MBFZQFRsACAhcBx9JCREeQARf"),
Lifetime = 5,
})

return
end

local oir = {}
local thv = 0

for wcgs, sh in ipairs(trdw.tiers()) do
if trdw.tiersWanted[sh.id] and trdw.status(sh.id) == _d("UgYQAAMZDl8V") then
if trdw.start(sh.id, oir) then
thv = thv + 1
end
end
end

if thv == 0 then
lszo:Notify({
Title = _d("dggBDAsRGFofHxo"),
Description = _d("fR8FAQYWCxMTHhwDHExRFVEaChYYCVAFAQpYH1YcFAobHQgTBBgMHQtMUgIUSQ4UHlYRFRBPFxlHXFEGHVgYWxUDDE8ZHlZQHwYbWApcBQNJChQFVBkTBQpYD1ICFRpPHgNBUAUBChVC"),
Lifetime = 6,
})
end
end,
})

nr.misc.expInfo = nr.misc.tab:Section({
Side = _d("YRkWARs"),
})

nr.misc.expInfo:Header({
Name = _d("dggBDAsRGFofHxo"),
})

nr.misc.expParagraph = nr.misc.expInfo:Paragraph({
Header = _d("YAQQHRoL"),
Body = nr.misc.expeditions.text(),
})

nr.misc.expeditions.loadRewards()

nr.misc.expRewardParagraph = nr.misc.expInfo:Paragraph({
Header = _d("cBwQAAIdCA"),
Body = nr.misc.expeditions.rewardsText(),
})

task.spawn(function()
local utuu = nr.misc.expeditions
local gnw = yhti(_d("YAkfCioAHFYUGB0GFwJA"), 3)

if gnw then
vhzs(gnw.OnClientEvent, function(slmh)
if type(slmh) ~= _d("RxETBQo") then
return
end

utuu.state = slmh

utuu.offset = (tonumber(slmh.now) or os.time()) - os.time()
utuu.syncedAt = os.clock()

if type(slmh.rewards) == _d("RxETBQo") and #slmh.rewards > 0 then
table.insert(utuu.rewardLog, 1, {
at = os.time(),
title = tostring(slmh.rewardTitle or _d("dggBDAsRGFofHw")),
items = slmh.rewards,
})

while #utuu.rewardLog > 8 do
table.remove(utuu.rewardLog)
end

utuu.saveRewards()

if utuu.autoClose then

task.delay(0.35, utuu.closeRewards)
end
end
end)
end

while usch() do

if os.clock() - utuu.askedAt > 1 and os.clock() - utuu.syncedAt > 20 then
utuu.request()
end

if utuu.enabled then
utuu.claim()
end

if utuu.autoClose then
utuu.closeRewards()
end

if utuu.autoStart and next(utuu.tiersWanted) then
local ijdq = {}

for qjoi, hdvj in ipairs(utuu.tiers()) do
if utuu.tiersWanted[hdvj.id] and utuu.status(hdvj.id) == _d("UgYQAAMZDl8V") then
if utuu.start(hdvj.id, ijdq) then
break
end
end
end
end

local exwe = utuu.text()

if nr.misc.expParagraph and exwe ~= nr.misc.expShown then
nr.misc.expShown = exwe

pcall(function()
nr.misc.expParagraph:UpdateBody(exwe)
end)
end

local dih = utuu.rewardsText()

if nr.misc.expRewardParagraph and dih ~= utuu.rewardsShown then
utuu.rewardsShown = dih

pcall(function()
nr.misc.expRewardParagraph:UpdateBody(dih)
end)
end

task.wait(0.75)
end
end)

nr.misc.util = {
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

function nr.misc.util.hook()
local bncn = nr.misc.util

if bncn.hooked then
return
end

bncn.hooked = true

if fyeb.SyncCollection then
vhzs(fyeb.SyncCollection.OnClientEvent, function(gorv)
if type(gorv) == _d("RxETBQo") then
bncn.profile = gorv
bncn.profileAt = os.clock()
end
end)
end

if fyeb.SyncAchievements then
vhzs(fyeb.SyncAchievements.OnClientEvent, function(le)
if type(le) == _d("RxETBQo") then
bncn.ach = le
end
end)
end

if fyeb.SyncQuests then
vhzs(fyeb.SyncQuests.OnClientEvent, function(urhb)
if type(urhb) == _d("RxETBQo") and type(urhb.list) == _d("RxETBQo") then
bncn.quests = urhb
end
end)
end

if fyeb.SyncPeriodicQuests then
vhzs(fyeb.SyncPeriodicQuests.OnClientEvent, function(wow, wcsd)
if wow == _d("RBUUAgMB") and type(wcsd) == _d("RxETBQo") and type(wcsd.list) == _d("RxETBQo") then
bncn.weekly = wcsd
end
end)
end
end

function nr.misc.util.askProfile()
local zgl = nr.misc.util

if os.clock() - zgl.askedAt < 1.5 then
return
end

zgl.askedAt = os.clock()

if fyeb.RequestSync then
pcall(function()
fyeb.RequestSync:FireServer()
end)
end
end

function nr.misc.util.currentProfile()
local qki = nr.misc.util

if type(qki.profile) ~= _d("RxETBQo") then
qki.askProfile()

return nil
end

if os.clock() - qki.profileAt > 20 then
qki.askProfile()
end

return qki.profile
end

function nr.misc.util.forgetProfile()
local ikgz = nr.misc.util

ikgz.profile = nil
ikgz.profileAt = 0
ikgz.askedAt = 0
end

function nr.misc.util.indexedTotal(pad)
local jkrv = 0

for gpg, tfch in pairs((pad and pad.cardIndex) or {}) do
if tfch then
jkrv = jkrv + 1
end
end

return jkrv
end

function nr.misc.util.indexPending(bjm)
local swnh = {}

if type(bjm) ~= _d("RxETBQo") then
return swnh
end

local lsx = nr.misc.util.indexedTotal(bjm)
local uqca = bjm.indexMilestones or {}

for em = 1, 30 do
if not uqca[em] and em * 5 <= lsx then
table.insert(swnh, em)
end
end

return swnh
end

function nr.misc.util.indexFrame()
local aieh = qf:FindFirstChild(_d("cBEDDSYWCFYINhwG"))

return aieh and aieh:FindFirstChild(_d("eh4VDBc+HlIdFA"))
end

function nr.misc.util.clickButton(cxwa)
if not cxwa then
return false
end

if firesignal then
local jmq = pcall(firesignal, cxwa.MouseButton1Click)

if jmq then
return true
end
end

return pcall(function()
cxwa:Activate()
end)
end

function nr.misc.util.closeIndex()
local ile = nr.misc.util.indexFrame()

if not ile or not ile.Visible then
return false
end

pcall(function()
local zkc = gs:FindFirstChild(_d("fh8VHAMdP1ACGBkbCw"))
local jbc = zkc and zkc:FindFirstChild(_d("fhUfHCIZAlIXFBs"))

if jbc then
require(jbc).close(ile)
end
end)

nr.misc.util.clickButton(ile:FindFirstChild(_d("cBweGgo6GUcEHgc")))

pcall(function()
ile.Visible = false
end)

return true
end

function nr.misc.util.claimIndex()
local szft = nr.misc.util

if os.clock() < szft.indexAt then
return false
end

local ppjy = szft.currentProfile()

if not ppjy then
return false
end

local xwoh = szft.indexPending(ppjy)
local dpf = xwoh[1]

if not dpf then
return false
end

local lnha = szft.indexedTotal(ppjy)
local xzb = szft.indexAsked

if type(xzb) == _d("RxETBQo") and xzb.milestone == dpf and xzb.total == lnha then
return false
end

szft.indexAsked = { milestone = dpf, total = lnha }

pcall(function()
fyeb.ClaimIndexReward:FireServer(dpf)
end)

szft.indexAt = os.clock() + 1.5

szft.profile = nil
szft.profileAt = 0

task.delay(0.4, szft.closeIndex)

return true
end

function nr.misc.util.achPending()
local nfiz = {}
local qeh = nr.misc.util.ach

if type(qeh) ~= _d("RxETBQo") then
return nfiz
end

for pna, veui in ipairs(qeh.chains or {}) do
for gnrx, ugi in ipairs(veui.levels or {}) do
if ugi.reached and not ugi.claimed then
table.insert(nfiz, { chain = tostring(veui.id), index = ugi.index, name = tostring(ugi.name or ugi.index) })
end
end
end

return nfiz
end

function nr.misc.util.claimAchievement()
local nd = nr.misc.util

if os.clock() < nd.achAt then
return false
end

if type(nd.ach) ~= _d("RxETBQo") then
if os.clock() - nd.achAskedAt > 4 and fyeb.RequestAchievements then
nd.achAskedAt = os.clock()

pcall(function()
fyeb.RequestAchievements:FireServer()
end)
end

return false
end

for iq, wstv in ipairs(nd.achPending()) do
pcall(function()
fyeb.ClaimAchievement:FireServer(wstv.chain, wstv.index)
end)

nd.achAt = os.clock() + 1

task.delay(1, function()
if fyeb.RequestAchievements then
pcall(function()
fyeb.RequestAchievements:FireServer()
end)
end
end)

return true
end

return false
end

function nr.misc.util.questRows()
local mzr = nr.misc.util
local mfii = {}

for agcm, rff in ipairs({ { list = _d("VxEYBRY"), payload = mzr.quests }, { list = _d("RBUUAgMB"), payload = mzr.weekly } }) do
for hw, qnlt in ipairs((type(rff.payload) == _d("RxETBQo") and rff.payload.list) or {}) do
if type(qnlt) == _d("RxETBQo") then
table.insert(mfii, { list = rff.list, index = hw, quest = qnlt })
end
end
end

return mfii
end

function nr.misc.util.questPending()
local jh = {}

for bcnf, opn in ipairs(nr.misc.util.questRows()) do
local jnt = opn.quest

if not jnt.claimed and (tonumber(jnt.progress) or 0) >= (tonumber(jnt.target) or math.huge) then
table.insert(jh, opn)
end
end

return jh
end

function nr.misc.util.askQuests()
local pjz = nr.misc.util

if os.clock() - pjz.questAskedAt > 4 and fyeb.RequestQuests then
pjz.questAskedAt = os.clock()

pcall(function()
fyeb.RequestQuests:FireServer()
end)
end

if os.clock() - pjz.weeklyAskedAt > 4 and fyeb.RequestPeriodicQuests then
pjz.weeklyAskedAt = os.clock()

pcall(function()
fyeb.RequestPeriodicQuests:FireServer(_d("RBUUAgMB"))
end)
end
end

function nr.misc.util.claimQuest()
local lbde = nr.misc.util

if os.clock() < lbde.questAt then
return false
end

if type(lbde.quests) ~= _d("RxETBQo") and type(lbde.weekly) ~= _d("RxETBQo") then
lbde.askQuests()

return false
end

for ber, ke in ipairs(lbde.questPending()) do
if ke.list == _d("RBUUAgMB") then
if fyeb.ClaimPeriodicQuest then
pcall(function()
fyeb.ClaimPeriodicQuest:FireServer(_d("RBUUAgMB"), ke.index)
end)
end
else
pcall(function()
fyeb.ClaimQuest:FireServer(ke.index)
end)
end

lbde.questAt = os.clock() + 1.2

task.delay(1, function()
lbde.askQuests()
end)

return true
end

return false
end

function nr.misc.util.packCatalog()
local sxl = nr.misc.util

if sxl.packs then
return sxl.packs
end

local ury = {}
local crnd, rost = pcall(function()
return require(gs.ModuleScripts.PackData)
end)

if crnd and type(rost) == _d("RxETBQo") and type(rost.Packs) == _d("RxETBQo") then
for jenz, mg in ipairs(rost.Packs) do
if mg.id then
table.insert(ury, { id = tostring(mg.id), name = tostring(mg.name or mg.id) })
end
end
end

sxl.packs = ury

return ury
end

function nr.misc.util.packUnlocked(zgqv, gwl)
if type(zgqv) ~= _d("RxETBQo") then
return true
end

local jkui, herx = pcall(function()
return require(gs.ModuleScripts.PackData)
end)
local clvx, atal = pcall(function()
return require(gs.ModuleScripts.PackSlotData)
end)

if not (jkui and clvx) then
return true
end

local hlz = herx.ById and herx.ById[gwl]

if not hlz then
return false
end

local qmhr, okgy = pcall(atal.isPackUnlocked, hlz, zgqv)

return (not qmhr) or okgy == true
end

function nr.misc.util.visit(thyo)
local fhth = workspace:FindFirstChild(_d("fSAyGg"))
local ikkr = fhth and fhth:FindFirstChild(thyo)
local vib = qzj.Character
local povr = vib and vib:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))
local fmq = ikkr and (ikkr:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA")) or ikkr:FindFirstChildWhichIsA(_d("cRECDD8ZHkc"), true))

if not (fmq and povr) then
return nil
end

local qijm = povr.CFrame

povr.CFrame = CFrame.new((fmq.CFrame * CFrame.new(0, 0, -5)).Position)

return qijm
end

function nr.misc.util.returnTo(zne)
local xlw = qzj.Character
local sp = xlw and xlw:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if sp and zne then
sp.CFrame = zne
end
end

function nr.misc.util.applyPacks(tph, bmo)
local gsn = nr.misc.util

if os.clock() < gsn.packAt then
return false, _d("ZBEYHU8ZTF4fHAwBDEI")
end

local kme = gsn.currentProfile()

if not kme then
return false, _d("YRUQDQYWCxMJHhwdWBxBHxcAAx1MHlAFGxZYDVQRGAdPEQITEVEaChsDXRRf")
end

if bmo and (tonumber(kme.packSlots) or 1) < 2 then
return false, _d("YBweHU9KTF0VFA0cWBhbFVEMFwweUlABCAwTTEAcHh1PHw1eFQEIHAtC")
end

if not (fyeb.OpenPackShop and fyeb.EquipPack) then
return false, _d("ZxgUSR8ZD1hQAgEACExaA1EHAAxMWh5RHQcRHxMXEAQKWBpWAgIAABZC")
end

gsn.packAt = os.clock() + 8

task.spawn(function()
local wbt = gsn.visit(_d("fR8TBQoLH1oeFho"))

if not wbt then
return
end

pcall(function()
fyeb.OpenPackShop:FireServer(_d("QxESAjAVCUETGQgBDA"))
end)

task.wait(1.2)

if tph then
pcall(function()
fyeb.EquipPack:FireServer(tph, 1)
end)
end

if bmo then
task.wait(0.8)

pcall(function()
fyeb.EquipPack:FireServer(bmo, 2)
end)
end

task.wait(0.8)
gsn.returnTo(wbt)
gsn.forgetProfile()
end)

return true
end

function nr.misc.util.accScore(id)
local mtdb = id.effects or {}

return (mtdb.luckBonus or 0) * 10
+ ((mtdb.luckMult or 1) - 1) * 200
+ ((mtdb.borderLuckMult or 1) - 1) * 200
- ((mtdb.rollCdMult or 1) - 1) * 30
end

function nr.misc.util.accCatalog()
local hylq = nr.misc.util

if hylq.accessories then
return hylq.accessories
end

local iptf = {}

for spu, byoy in ipairs({ _d("chMSDBwLA0EJNQgbGQ"), _d("chMSDBwLA0EJNQgbGV4") }) do
local fucb, yurq = pcall(function()
return require(gs.ModuleScripts[byoy])
end)

if fucb and type(yurq) == _d("RxETBQo") and type(yurq.Accessories) == _d("RxETBQo") then
for rim, ls in ipairs(yurq.Accessories) do
if ls.id then
table.insert(iptf, {
id = tostring(ls.id),
name = tostring(ls.name or ls.id),
shop = spu,

shopName = spu == 1 and _d("chMSDBwLA0EJUToHFxw") or _d("fgkCHQoKBVwFAkkiGQI"),
raidable = ls.raidShopOnly == true,
hidden = ls.hidden == true,
requirements = ls.requirements or {},
score = nr.misc.util.accScore(ls),
})
end
end
end
end

hylq.accessories = iptf

return iptf
end

function nr.misc.util.accOwned(wdam)
local ydj = {}

for gcxi, rz in ipairs((wdam and wdam.accessories) or {}) do
ydj[tostring(rz)] = true
end

return ydj
end

function nr.misc.util.accMeets(fywp, xjx)
for qfzq, bzhg in ipairs(xjx.requirements) do
local jnbd = fywp.cards and fywp.cards[bzhg.cardId]
local ss = type(jnbd) == _d("RxETBQo") and (tonumber(jnbd[bzhg.borderLevel]) or 0) or 0

if ss < (tonumber(bzhg.amount) or 0) then
return false
end
end

return true
end

function nr.misc.util.accPlan(hvj)
local sgsp = nr.misc.util
local uijt = sgsp.accOwned(hvj)
local inyf = {}

for cj, qbcq in ipairs(sgsp.accCatalog()) do
if not uijt[qbcq.id] and not qbcq.raidable and not qbcq.hidden and sgsp.accMeets(hvj, qbcq) then
local xsuz = inyf[qbcq.shop]

if not xsuz or qbcq.score > xsuz.score then
inyf[qbcq.shop] = qbcq
end
end
end

return inyf
end

function nr.misc.util.accPicks(akn)
local ij = nr.misc.util
local qc = ij.accOwned(akn)
local gkvo, fly

for ybu, gbxh in ipairs(ij.accCatalog()) do
if qc[gbxh.id] then
if not gkvo or gbxh.score > gkvo.score then
gkvo = gbxh
end
elseif not gbxh.raidable and not gbxh.hidden and ij.accMeets(akn, gbxh) then
if not fly or gbxh.score > fly.score then
fly = gbxh
end
end
end

return gkvo, fly
end

function nr.misc.util.equipBest()
local urut = nr.misc.util
local rdxv = urut.currentProfile()

if not rdxv or not fyeb.EquipAccessory then
return false
end

local bmdy = urut.accPicks(rdxv)

if not bmdy or rdxv.equippedAccessory == bmdy.id then
return bmdy ~= nil
end

pcall(function()
fyeb.EquipAccessory:FireServer(bmdy.id)
end)

task.delay(1.5, function()
urut.forgetProfile()
end)

return true
end

function nr.misc.util.buyBest()
local mb = nr.misc.util

if os.clock() < mb.accAt then
return false, _d("ZBEYHU8ZTF4fHAwBDEI")
end

if ym.busy(1) or ym.busy(2) then
mb.accNote = _d("eh5RCE8aDUcEHQxPVUxSUAIBAAhMRwIYGU8PA0YcFUkKFggTGQU")
return false, _d("eh5RCE8aDUcEHQxPVUxSUAIBAAhMRwIYGU8PA0YcFUkKFggTGQVH")
end

local kab = mb.currentProfile()

if not kab then
mb.accNote = _d("YRUQDQYWCxMJHhwdWBxBHxcAAx1MHlAGAAMUTEcCCEkOHw1aHlEAAVgNEwMUCgAWCA")
return false, _d("YRUQDQYWCxMJHhwdWBxBHxcAAx1MHlAFGxZYDVQRGAdPEQITEVEaChsDXRRf")
end

local gdqo = mb.accPlan(kab)
local dccp = {}

for ojl = 1, 2 do
if gdqo[ojl] then
table.insert(dccp, gdqo[ojl].name)
end
end

if #dccp == 0 then
mb.accNote = _d("fR8FAQYWCxMeFB5PDQJfHxICChxMShUFSUJYGFsVUQoOCghAUBcGHVgFR1AQGwpYAlwEUQABWBhbFVEKABQAVhMFAAAW")
return false, _d("fR8FAQYWCxMeFB5PGw1dUBMMTw0CXx8SAgocTEoVBUlCWBhbFVEKDgoIQFAXBh1YBUdQEBsKWAJcBFEAAVgYWxVRCgAUAFYTBQAAFkI")
end

mb.accAt = os.clock() + 12
mb.accNote = _d("ZBEdAgYWCxMEHkkbEAkTEx4cAQwJQVAXBh1Y") .. table.concat(dccp, _d("ExEfDU8"))

task.spawn(function()
for fl = 1, 2 do
local ybo = gdqo[fl]

if ybo then
local grtr = fl == 1 and _d("QwUDGhoRGFYUFQ") or _d("RBEXDwoUAVIeFAgbCxtSFhcMAws")
local hjs = fl == 1 and fyeb.OpenAccessoryShop or fyeb.OpenAccessoryShop2
local shem = fl == 1 and fyeb.BuyAccessory or fyeb.BuyAccessory2
local jft = grtr and mb.visit(grtr) or nil

if not jft then
local mjn = workspace:FindFirstChild(_d("fSAyGg"))
local qse = mjn and mjn:FindFirstChild(grtr)

if qse and os.clock() - (mb.worldAskedAt or 0) > 25 then

mb.worldAskedAt = os.clock()
mb.accNote = _d("cBgQGw4bGFYCUQcADExBFRANFlhBEwQDEAYWCxMRFggGFkxAGB4bGxQV")
elseif not qse and os.clock() - (mb.worldAskedAt or 0) > 25 then

mb.worldAskedAt = os.clock()
mb.accNote = _d("fR9RCgANAkcVA0kGFkxHGBgaTw8DQRwVSUJYGFIbGAcIWBhbFVEFABoOSlAFDAMdHFwCBQ")

pcall(function()
fyeb.TeleportToWorld:FireServer(_d("Xx8TCxY"))
end)

task.wait(4.5)
jft = mb.visit(grtr)
end
end

if jft and hjs and shem then

task.wait(0.9)

pcall(function()
hjs:FireServer()
end)

task.wait(1.2)

pcall(function()
shem:FireServer(ybo.id)
end)

task.wait(0.9)
mb.returnTo(jft)
mb.accNote = _d("cR8EDgcMTA") .. tostring(ybo.name)
elseif not jft then
mb.accNote = _d("cB8EBQtYAlwEURsKGQ9bUAUBClgPXAUfHQoKTB5QBRsWWA1UERgHTxECExFRBAAVCV0E")
end

task.wait(0.6)
end
end

mb.forgetProfile()

for pqew = 1, 8 do
if type(mb.profile) == _d("RxETBQo") then
break
end

mb.askProfile()
task.wait(0.7)
end

mb.equipBest()
end)

return true, table.concat(dccp, _d("H1A"))
end

function nr.misc.util.indexText()
local acy = nr.misc.util

if type(acy.profile) ~= _d("RxETBQo") then
return _d("YRUQDQYWCxMJHhwdWA9SAhVJBhYIVghfR0E")
end

local jj = acy.indexPending(acy.profile)
local wnv = 0

for edcp, ecxi in pairs(acy.profile.indexMilestones or {}) do
if ecxi then
wnv = wnv + 1
end
end

local bxpe = tostring(acy.indexedTotal(acy.profile)) .. _d("ExMQGwsLTFoeFQwXHQgfUA") .. tostring(wnv) .. _d("Ex8XSVxITEEVBggdHB8TEx0IBhUJVw")

if #jj > 0 then
bxpe = bxpe .. _d("OSIUCAsBVhM") .. table.concat(jj, _d("H1A"))
end

return bxpe
end

function nr.misc.util.achText()
local nwap = nr.misc.util

if type(nwap.ach) ~= _d("RxETBQo") then
return _d("YRUQDQYWCxMREgEGHRpWHRQHGwtCHV4")
end

local mzg = nwap.achPending()
local nvcv = 0

for drr, gorq in ipairs(nwap.ach.chains or {}) do
for sjox in ipairs(gorq.levels or {}) do
nvcv = nvcv + 1
end
end

return tostring(#mzg) .. _d("Ex8XSQ") .. tostring(nvcv) .. _d("ExESAQYdGlYdFAcbC0xBFRANFg")
end

function nr.misc.util.questText()
local buc = nr.misc.util

if type(buc.quests) ~= _d("RxETBQo") and type(buc.weekly) ~= _d("RxETBQo") then
return _d("YRUQDQYWCxMBBAwcDB8dXl8")
end

local jyvd, akxn = 0, 0

for knb, cvd in ipairs(buc.questPending()) do
if cvd.list == _d("RBUUAgMB") then
akxn = akxn + 1
else
jyvd = jyvd + 1
end
end

local pkx = type(buc.quests) == _d("RxETBQo") and #(buc.quests.list or {}) or 0
local wvex = type(buc.weekly) == _d("RxETBQo") and #(buc.weekly.list or {}) or 0

return tostring(jyvd) .. _d("Ex8XSQ") .. tostring(pkx) .. _d("ExQQAAMBTEEVEA0Wcg")
.. tostring(akxn) .. _d("Ex8XSQ") .. tostring(wvex) .. _d("EwcUDAQUFRMCFAgLAQ")
end

function nr.misc.util.packText()
local ftkp = nr.misc.util
local krxd = ftkp.profile

if type(krxd) ~= _d("RxETBQo") then
return _d("YRUQDQYWCxMJHhwdWBxSExoaQVZC")
end

local function fxle(bnjv)
for gqly, etu in ipairs(ftkp.packCatalog()) do
if etu.id == bnjv then
return etu.name
end
end

return tostring(bnjv)
end

local gztr = _d("YBweHU9JVhM") .. fxle(krxd.equippedPack)

if (tonumber(krxd.packSlots) or 1) >= 2 then
gztr = gztr .. _d("OSMdBhtYXglQ") .. fxle(krxd.equippedPack2)
else
gztr = gztr .. _d("OSMdBhtYXglQFggCHRxSAwJJARcYEx8GBwoc")
end

return gztr
end

function nr.misc.util.accText()
local nosk = nr.misc.util
local fjkk = nosk.profile

if type(fjkk) ~= _d("RxETBQo") then
return _d("YRUQDQYWCxMJHhwdWA1QExQaHBceWhUCR0FW")
end

local gzib = nosk.accPicks(fjkk)
local hha = nosk.accPlan(fjkk)
local gwk = _d("XR8fDA")

for ples, jfo in ipairs(nosk.accCatalog()) do
if jfo.id == fjkk.equippedAccessory then
gwk = jfo.name .. _d("E1g") .. jfo.shopName .. _d("Gg")
end
end

local vw = _d("dgEEAB8ICVdKUQ") .. gwk

if gzib then
vw = vw .. _d("OTIUGhtYA0QeFA1VWA") .. gzib.name
end

vw = vw .. _d("OTESCgoLH1wCCEk8EANDSlE") .. (hha[1] and hha[1].name or _d("XR8FAQYWCxMeFB4"))
vw = vw .. _d("OT0IGhsdHlofBBpPNQ1dSlE") .. (hha[2] and hha[2].name or _d("XR8FAQYWCxMeFB4"))

if nosk.accNote then
vw = vw .. _d("OTwQGhtYGEEZAVNP") .. nosk.accNote
end

return vw
end

nr.misc.util.hook()
nr.misc.util.askProfile()

nr.misc.indexSection = nr.misc.tab:Section({
Side = _d("fxUXHQ"),
})

nr.misc.indexSection:Header({
Name = _d("cBEDDU8xAlcVCUmf5/+0"),
})

nr.misc.indexToggle = nr.misc.indexSection:Toggle({
Name = _d("cgUFBk8bAFIZHA"),
Default = false,
Callback = function(jqg)
nr.misc.util.indexOn = jqg
nr.misc.util.indexAt = 0

nr.misc.util.indexAsked = nil
end,
}, _d("UgUFBjAbAFIZHDZd"))

nr.misc.indexSection:Button({
Name = _d("cBwQAAJYAlwH"),
Callback = function()
local tbll = nr.misc.util

tbll.indexAt = 0
tbll.indexAsked = nil

if not tbll.claimIndex() then
lszo:Notify({
Title = _d("cBEDDU8xAlcVCQ"),
Description = _d("fR9RBAYUCUAEHgcKWAVAUAMMDhwVEwQeSQwUDVodXw"),
Lifetime = 5,
})
end
end,
})

nr.misc.claimSection = nr.misc.tab:Section({
Side = _d("fxUXHQ"),
})

nr.misc.claimSection:Header({
Name = _d("chMZAAoOCV4VHx0cWEoTIQQMHAwfE4Du5uk"),
})

nr.misc.achToggle = nr.misc.claimSection:Toggle({
Name = _d("cgUFBk8bAFIZHEkOGwRaFQcMAh0CRwM"),
Default = false,
Callback = function(nnfg)
nr.misc.util.achOn = nnfg
nr.misc.util.achAt = 0

if nnfg and fyeb.RequestAchievements then
pcall(function()
fyeb.RequestAchievements:FireServer()
end)
end
end,
}, _d("UgUFBjAbAFIZHDYOGwRaFQcMAh0CRwM"))

nr.misc.questToggle = nr.misc.claimSection:Toggle({
Name = _d("cgUFBk8bAFIZHEkeDQlABAI"),
Default = false,
Callback = function(xfj)
nr.misc.util.questOn = xfj
nr.misc.util.questAt = 0
nr.misc.util.questAskedAt = 0
nr.misc.util.weeklyAskedAt = 0

if xfj then
nr.misc.util.askQuests()
end
end,
}, _d("UgUFBjAbAFIZHDYeDQlABAI"))

nr.misc.claimSection:Button({
Name = _d("cBwQAAJYDV8cUQcADw"),
Callback = function()
local qlu = nr.misc.util

qlu.achAt = 0
qlu.questAt = 0

local udqa = qlu.claimAchievement()
local ryoo = qlu.claimQuest()

if not (udqa or ryoo) then
lszo:Notify({
Title = _d("chMZAAoOCV4VHx0cWEoTIQQMHAwf"),
Description = _d("fR8FAQYWCxMZAkkdHQ1XCVEdAFgPXxEYBEE"),
Lifetime = 5,
})
end
end,
})

nr.misc.packSection = nr.misc.tab:Section({
Side = _d("fxUXHQ"),
})

nr.misc.packSection:Header({
Name = _d("cBEDDU8oDVAbAkmf5+KH"),
})

nr.misc.packSection:Paragraph({
Header = _d("ZwceSRwUA0cD"),
Body = _d("YxkSAhxYDUMAHRBPFwJfCVEeBx0CEwkeHE8IHlYDAkkuCBxfCVEZDhsHQFxRCwobDUYDFEkbEAkTAwYAGxsEEwcQBQQLTEcfUR0HHUxeFQMKBxkCR14"),
})

local tswx = {}
local lvz = {}

for subx, vao in ipairs(nr.misc.util.packCatalog()) do
table.insert(tswx, vao.name)
lvz[vao.name] = vao.id
end

nr.misc.packSlotOne = nil
nr.misc.packSlotTwo = nil

nr.misc.packDropdownOne = nr.misc.packSection:Dropdown({
Name = _d("YBweHU9J"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = tswx,
Callback = function(uk)
local smjt = type(uk) == _d("RxETBQo") and uk[1] or uk

nr.misc.packSlotOne = lvz[tostring(smjt)]
end,
}, _d("QBweHTBJ"))

nr.misc.packDropdownTwo = nr.misc.packSection:Dropdown({
Name = _d("YBweHU9K"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = tswx,
Callback = function(yzhk)
local vpl = type(yzhk) == _d("RxETBQo") and yzhk[1] or yzhk

nr.misc.packSlotTwo = lvz[tostring(vpl)]
end,
}, _d("QBweHTBK"))

nr.misc.packSection:Button({
Name = _d("cgABBRZYHFITGho"),
Callback = function()
local ffm = nr.misc.util
local oge = nr.misc.packSlotOne
local fwp = nr.misc.packSlotTwo

if not oge then
lszo:Notify({
Title = _d("cBEDDU8oDVAbAg"),
Description = _d("YxkSAk8ZTEMREgJPHgNBUAIFAAxMAlAXAB0LGB0"),
Lifetime = 5,
})

return
end

local lk, hhx = ffm.applyPacks(oge, fwp)

if not lk then
lszo:Dialog({
Title = _d("cBEDDU8oDVAbAg"),
Description = hhx,
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})
end
end,
})

nr.misc.cards = {
rarityLabels = { _d("chwd"), _d("fR8DBA4U"), _d("dB8dDQ"), _d("YREYBw0XGw"), _d("Zh4YHwoKH1Ic") },
borderOf = { Normal = 1, Gold = 2, Rainbow = 3, Universal = 4 },
mergeOn = false,
deconOn = false,
mergeWanted = {},
deconWanted = {},
mergeAt = 0,
deconAt = 0,
mergeDone = _d("fR8FAQYWCxMDFAcbWBVWBA"),
deconDone = _d("fR8FAQYWCxMDFAcbWBVWBA"),

inFlight = false,

interval = 3600,
manualGap = 20,
manualAt = 0,

protectedPrefixes = { weather = true, boss = true, raid = true, wb = true, fish = true, hw = true, event = true },

deconExceptions = { weather_sayaka = true, weather_caesar = true },

deconConfirmed = false,
burnAskedAt = 0,
}

function nr.misc.cards.isProtected(iss, xlpb)
local blnb = nr.misc.cards
local hmr = tostring(iss or _d(""))
local pso = hmr:match(_d("bVgqCEICXB5JLEJGJw"))

if not (pso and blnb.protectedPrefixes[pso]) then
return false
end

return not (blnb.deconExceptions[hmr] and xlpb == 2)
end

function nr.misc.cards.burnAllowed(dxu)
local oi = nr.misc.cards
local oqxd = oi.wantedFor(_d("VxUSBgEvDV0EFA0"))

if not (oqxd == nil or oqxd[3] or oqxd[4]) then
oi.deconConfirmed = false

return true
end

if oi.deconConfirmed then
return true
end

if dxu then
return false
end

if os.clock() < (oi.burnAskedAt or 0) then
return false
end

oi.burnAskedAt = os.clock() + 20

lszo:Dialog({
Title = _d("cQUDB08qDVoeEwYYWANBUCQHBg4JQQMQBU8bDUEUAlY"),
Description = _d("cgUFBk8cCVAfHxobChlQBFEaChYIQFAUHwoKFRMTHhkWWAVdUAUBClgBUgQSAQYWCxMCHh4cWA1dFFEKDhYCXARRCwpYGV0UHgcKVkw")
.. _d("ZBUQHQcdHh9QEwYcC0ATAhAAC1gOXAMCRU8PA0EcFUkNFx9AXFEPBgsEWh4WRU8wDV8cHh4KHQITER8NTx0aVh4FSQwZHlcDUQgdHUxbFR0NTxoNUBtRDAYMBFYCUR4OAUI"),
Buttons = {
{
Name = _d("cQUDB08MBFYd"),
Callback = function()
oi.deconConfirmed = true
oi.deconAt = 0
oi.manualAt = 0

pcall(function()
nr.misc.deconToggle:UpdateState(true)
end)
end,
},
{
Name = _d("cBEfCgoU"),
Callback = function()
pcall(function()
nr.misc.deconToggle:UpdateState(false)
end)
end,
},
},
})

return false
end

function nr.misc.cards.wantedFor(nze)
local bqn = nr.misc.cards[nze] or {}

if next(bqn) == nil or bqn[0] then
return nil
end

return bqn
end

function nr.misc.cards.npcFor(gczb)
local tcbf = workspace:FindFirstChild(_d("fSAyGg"))

if not tcbf then
return nil
end

local kud = gczb and _d("VQUCDDAWHFA") or _d("VxUSBgELGEEFEh0wFhxQ")

for mql, rgxq in ipairs(tcbf:GetChildren()) do
if rgxq:GetAttribute(_d("fSAyIAs")) == kud then
return rgxq
end
end

local hllg = gczb and { _d("fB8BAQMB"), _d("XB8BBRYd") } or { _d("YBgQHAMZ"), _d("exEHDDsPA3cRFRo") }

for bxib, xizf in ipairs(tcbf:GetChildren()) do
for sd, tqjy in ipairs(hllg) do
if xizf.Name == tqjy then
return xizf
end
end
end

local cmk = gczb and { _d("UBEDDU8VCUEXGAcI"), _d("XB8BAQMB") } or { _d("VxUSBgELGEEFEh0GFwI"), _d("QBgQHAMZ") }

for hqws, xupz in ipairs(tcbf:GetChildren()) do
for pasx, oii in ipairs(xupz:GetDescendants()) do
if oii:IsA(_d("ZxUJHSMZDlYc")) and oii.Text ~= _d("") then
local soi = oii.Text:lower()

for mxl, cekt in ipairs(cmk) do
if soi:find(cekt, 1, true) then
return xupz
end
end

break
end
end
end

return nil
end

function nr.misc.cards.rarityText(jlcu)
local rzky = nr.misc.cards.wantedFor(jlcu)

if not rzky then
return _d("chwd")
end

local zoe = {}

for xi, llb in pairs(nr.misc.cards.borderOf) do
if rzky[llb] then
table.insert(zoe, xi)
end
end

if #zoe == 0 then
return _d("chwd")
end

table.sort(zoe)

return table.concat(zoe, _d("H1A"))
end

function nr.misc.cards.run(vltv, kun, csx)
local mwq = nr.misc.cards
local puh = nr.misc.util
local kfgc = vltv and _d("XhUDDgo5GA") or _d("VxUSBgE5GA")

if csx then
if os.clock() < mwq[kfgc] then
return false, _d("fR8FSQsNCRMJFB1B")
end
elseif os.clock() < mwq.manualAt then
return false, _d("ZBEYHU8ZTF4fHAwBDEI")
end

if mwq.inFlight then
return false, _d("ch4eHQcdHhMTEBsLWBhBGQFJBgtMUhwDDA4cFRMCBAcBEQJUXg")
end

local hnay = ym.busy(1) and 1 or (ym.busy(2) and 2 or nil)
local hdgc = os.clock() - (nt.floorAt or 0) < 90
local ejz = hnay ~= nil and ym.towerSlot() == hnay and hdgc

if hnay and not ejz then
return false, _d("eh5RCE8aDUcEHQxPVUxHGBRJGwoFQ1AGBhoUCBMVHw1PERgd")
end

if rv.battlePending and os.time() < (rv.battlePendingUntil or 0) then
return false, _d("clATCBsMAFZQGBpPCxhSAgUAAR9MHlAFAQpYGEEZAUkYFxlfFFEKDhYPVhxRABtW")
end

if not vltv and not mwq.burnAllowed() then
return false, _d("cB8fDwYKARMiEAABGgNEXyQHBg4JQQMQBU8eBUEDBUc")
end

local rzd = mwq.npcFor(vltv)

if not rzd then
return false, vltv
and _d("fB8BAQMBTFoDUQcADExaHlEdBxEfEx0QGU9VTEcCEB8KFExHH1EBBhVMUh4VSR8KCUADUQAbWA1UERgHQQ")
or _d("ZxgUSQsdD1weAh0dDQ9HUD85LFgFQFAfBhtYBV1QBQEGC0xeEQFJQlgYQREHDANYGFxQGB1PGQJXUAEbCgsfExkFSQ4fDVoeXw")
end

local yjo = vltv and fyeb.OpenFuseDialog or fyeb.OpenDeconstructDialog
local wjpf = vltv and fyeb.FuseCards or fyeb.DeconstructCards

if not (yjo and wjpf) then
return false, _d("ZxgQHU8RHxMeHh1PEQITBBkAHFgLUh0USRkdHkAZHgdB")
end

local ufpl = vltv and _d("XhUDDgovDV0EFA0") or _d("VxUSBgEvDV0EFA0")
local ffrw = mwq.wantedFor(ufpl)

mwq.manualAt = os.clock() + mwq.manualGap

if csx then
mwq[kfgc] = os.clock() + mwq.interval
end

mwq.inFlight = true

task.spawn(function()

local zti = nil

local function psth(vreb, ej)
if vltv then
mwq.mergeDone = vreb
else
mwq.deconDone = vreb
end

if ej and csx then
mwq[kfgc] = os.clock() + 120
end

mwq.inFlight = false
end

local vdv = puh.visit(rzd.Name)

if not vdv then
psth(_d("cBgQGw4bGFYCUQAcWAJcBFEbChkISlBcSR0dGEEJGAcIWAVdUAUeAFgBWh4EHQoLQg"), true)

return
end

task.wait(0.9)

local fs = nil
local wimb = vhzs(yjo.OnClientEvent, function(itqg)
if type(itqg) == _d("RxETBQo") then
fs = itqg
end
end)

for auvw = 1, 3 do
pcall(function()
yjo:FireServer()
end)

for bjtk = 1, 20 do
if fs then
break
end

task.wait(0.3)
end

if fs then
break
end

task.wait(1.5)
end

wimb:Disconnect()
puh.returnTo(vdv)

if type(fs) ~= _d("RxETBQo") then
psth(_d("ZxgUSQsRDV8fFkkLEQgTHh4dTxkCQAcUG09VTEEVBRsWEQJUUBgHTwwbXFAcAAENGFYDXw"), true)

return
end

local uohj = {}

for ksbo, cfy in ipairs(fs) do
local avh = tonumber(cfy.borderLevel)
local znj = cfy.cardId or cfy.id

if avh and (not ffrw or ffrw[avh])
and (vltv or not nr.misc.cards.isProtected(znj, avh)) then
table.insert(uohj, cfy)
end
end

if #uohj == 0 then

nr.misc.cards.closeFrame(vltv)
psth(_d("fR8FAQYWCxMEHkkcHQJXUBcGHVg") .. nr.misc.cards.rarityText(ufpl) .. _d("HQ"))

return
end

if kun then

local okif = {}

for fqj, qzqz in ipairs(uohj) do
if (tonumber(qzqz.count) or 0) >= kun then
table.insert(okif, qzqz)
end
end

if #okif == 0 then
nr.misc.cards.closeFrame(vltv)
psth(_d("fR9R") .. nr.misc.cards.rarityText(ufpl) .. _d("EwIeHk8QDUBQ") .. kun .. _d("ExMeGQYdHxMJFB1B"))

return
end

uohj = okif

table.sort(uohj, function(wah, sfbq)
return (tonumber(wah.count) or 0) < (tonumber(sfbq.count) or 0)
end)

local wasp, ovi = {}, 0

for fx, xn in ipairs(uohj) do
local ogyd = tonumber(xn.count) or 0

if #wasp > 0 and ovi + ogyd > kun then
break
end

table.insert(wasp, xn)
ovi = ovi + ogyd
end

uohj = wasp
zti = ovi
end

local bx = 0

nr.misc.cards.closeFrame(vltv)

if vltv then
if not ffrw then

pcall(function()
wjpf:FireServer(_d("Uhwd"), nil)
end)

bx = #uohj
else
local she = {}

for lfu, tl in ipairs(uohj) do
table.insert(she, { tl.cardId, tonumber(tl.borderLevel) })
end

pcall(function()
wjpf:FireServer(_d("QBUdDAwMCVcvEAUD"), she)
end)

bx = #she
end
else
local fvj = {}

for mx, wary in ipairs(uohj) do
if #fvj >= 25 then
break
end

table.insert(fvj, { wary.cardId, tonumber(wary.borderLevel), _d("Uhwd") })
end

pcall(function()
wjpf:FireServer(fvj)
end)

bx = #fvj
end

psth(_d("YBUfHU8") .. tostring(bx) .. _d("EwIeHg") .. (bx == 1 and _d("") or _d("QA"))
.. _d("E1g") .. nr.misc.cards.rarityText(ufpl) .. _d("Gg")
.. (zti and (_d("H1A") .. tostring(zti) .. _d("ExMQGwsL")) or _d("")))
end)

return true
end

function nr.misc.cards.closeFrame(utx)
pcall(function()
local bfu = utx and { _d("dQUCDCgNBQ"), _d("dQUCDCkKDV4V") } or { _d("dxUSBgELGEEFEh0oDQU"), _d("dxUSBgELGEEFEh0pCg1eFQ") }
local xkf = require(gs.ModuleScripts.MenuManager)
local xwje = qf:FindFirstChild(bfu[1])
local qhab = xwje and xwje:FindFirstChild(bfu[2])

if qhab then
xkf.close(qhab)
end

if not utx then
local ut = xwje and xwje:FindFirstChild(_d("dxUSBgELGEEFEh09GRhWAzcbDhUJ"))

if ut then
xkf.close(ut)
else
ut = qf:FindFirstChild(_d("dxUSBgELGEEFEh09GRhWAzcbDhUJ"))

if ut then
xkf.close(ut)
end
end
end
end)
end

function nr.misc.cards.refresh(day)

local syf = day and nr.misc.mergeParagraph or nr.misc.deconParagraph

if not syf then
return
end

pcall(function()
syf:UpdateBody(day
and nr.misc.cards.mergeText()
or nr.misc.cards.deconText())
end)
end

function nr.misc.cards.mergeText()
local hnrs = nr.misc.cards

return _d("YREDABsRCUBKUQ") .. hnrs.rarityText(_d("XhUDDgovDV0EFA0")) .. _d("OQ") .. hnrs.mergeDone
end

function nr.misc.cards.deconText()
local ewqm = nr.misc.cards

return _d("YREDABsRCUBKUQ") .. ewqm.rarityText(_d("VxUSBgEvDV0EFA0")) .. _d("OQ") .. ewqm.deconDone
.. _d("OScUCBsQCUFcUQsACx8fUAMIBhxAEwceGwMcTFEfAhpDWApaAxkAAR9AEzgQBQMXG1YVH0kOFggTFQcMAQxMUBEDDRxYDUEVUQcKDglBUAIMAQxC")
end

nr.misc.skill = {
on = false,
at = 0,
mainWanted = {},
raidWanted = {},

mainOrder = {},
raidOrder = {},
last = _d("fR8FAQYWCxMSHhwIEBgTCRQd"),
shown = _d(""),
}

function nr.misc.skill.branchMap(lks)
local seer = {}

for rtp, vop in ipairs(tw.Trees[lks].branches) do
seer[vop.name] = vop
end

return seer
end

function nr.misc.skill.branchLabels(cmof)
local awm = {}

for tidu, xtn in ipairs(tw.Trees[cmof].branches) do
table.insert(awm, xtn.name)
end

return awm
end

function nr.misc.skill.wantedFrom(uy, spzm)
local kph = {}
local nyc = nr.misc.skill.branchMap(spzm)

if type(uy) == _d("RxETBQo") then
for zsx, zauk in pairs(uy) do
if zauk and nyc[tostring(zsx)] then
kph[nyc[tostring(zsx)].id] = true
end
end
end

return kph
end

function nr.misc.skill.ordered(lxf, de)
local iaz = {}
local eelu = {}

for yaa, ltvu in ipairs(de or {}) do
if lxf[ltvu] then
table.insert(iaz, ltvu)
eelu[ltvu] = true
end
end

for kvc in pairs(lxf) do
if not eelu[kvc] then
table.insert(iaz, kvc)
end
end

return iaz
end

function nr.misc.skill.branchById(jatm)
local ia = {}

for lbm, lnp in ipairs(tw.Trees[jatm].branches) do
ia[lnp.id] = lnp
end

return ia
end

function nr.misc.skill.upgrade()
local vhxa = nr.misc.skill
local rid = nr.misc.util
local fdk = rid.currentProfile and rid.currentProfile()

if type(fdk) ~= _d("RxETBQo") then
return false, _d("fR9RGR0XClocFEkWHRgd")
end

local cmu = fdk.skillTrees or {}
local vhs = { [1] = vhxa.mainOrder, [2] = vhxa.raidOrder }
local pu = nil

for azm, vxi in ipairs(tw.Trees) do
local jixo = cmu[vxi.id]
local ra = tonumber(fdk[vxi.pointsField or _d("QBsYBQMoA1oeBRo")]) or 0
local cn = nr.misc.skill.branchById(azm)

if type(jixo) == _d("RxETBQo") and ra > 0 then
for pszq, av in ipairs(vhs[azm] or {}) do
local dymd = cn[av]

if dymd and not pu then
local kobl = tw.getBranchLevel(cmu, vxi.id, dymd.id) or 0
local nsr = kobl + 1

if nsr <= dymd.levels then
local jtv = dymd.id .. nsr
local khl = 1

if type(dymd.costs) == _d("RxETBQo") and tonumber(dymd.costs[nsr]) then
khl = tonumber(dymd.costs[nsr])
elseif tonumber(dymd.cost) then
khl = tonumber(dymd.cost)
end

if khl <= ra and tw.isAvailable(cmu, vxi.id, jtv) then
pu = { tree = vxi.id, node = jtv, name = dymd.name, level = nsr }
end
end
end
end
end
end

if not pu then
return false, _d("fR8FAQYWCxMEHkkNDRUTCRQdQQ")
end

fyeb.BuySkillNode:FireServer(pu.tree, pu.node)

if rid.askProfile then
pcall(rid.askProfile)
end

vhxa.last = _d("cR8EDgcMTA") .. pu.name .. _d("Ew") .. tostring(pu.level)

return true
end

function nr.misc.skill.text()
local xhvz = nr.misc.skill
local jwwc = nr.misc.util
local oyn = jwwc.currentProfile and jwwc.currentProfile()

if type(oyn) ~= _d("RxETBQo") then
return _d("Yx8YBxsLVhNPew") .. xhvz.last
end

local xfcp = oyn.skillTrees or {}
local vtb = {}

local gy = { [1] = xhvz.mainOrder, [2] = xhvz.raidOrder }

for bprd, kcn in ipairs(tw.Trees) do
local fdms = tonumber(oyn[kcn.pointsField or _d("QBsYBQMoA1oeBRo")]) or 0
local zntg = {}
local nxa = nr.misc.skill.branchById(bprd)

for dz, vye in ipairs(gy[bprd] or {}) do
local wln = nxa[vye]

if wln then
local ledn = tw.getBranchLevel(xfcp, kcn.id, wln.id) or 0
table.insert(zntg, wln.name .. _d("Ew") .. tostring(ledn) .. _d("HA") .. tostring(wln.levels))
end
end

vtb[#vtb + 1] = kcn.name .. _d("CVA") .. tostring(fdms) .. _d("EwAFGg")
.. (#zntg > 0 and (_d("E11R") .. table.concat(zntg, _d("H1A"))) or _d("E11RBwAMBFoeFkkfEQ9YFRU"))
end

vtb[#vtb + 1] = xhvz.last

return table.concat(vtb, _d("OQ"))
end

nr.misc.mergeSection = nr.misc.tab:Section({
Side = _d("fxUXHQ"),
})

nr.misc.mergeSection:Header({
Name = _d("fhUDDgpYnKzX3Q"),
})

nr.misc.mergeToggle = nr.misc.mergeSection:Toggle({
Name = _d("cgUFBk8VCUEXFA"),
Default = false,
Callback = function(taym)
local glh = nr.misc.cards

glh.mergeOn = taym

glh.mergeAt = (taym and vzl.loading) and (os.clock() + glh.interval) or 0
end,
}, _d("UgUFBjAVCUEXFA"))

nr.misc.mergeDropdown = nr.misc.mergeSection:Dropdown({
Name = _d("YREDABsRCUA"),
Search = false,
Multi = true,
Required = false,
Default = { _d("chwd") },
Options = nr.misc.cards.rarityLabels,
Callback = function(hsrt)
local qhfm = {}

if type(hsrt) == _d("RxETBQo") then
for kqtw, hqo in pairs(hsrt) do
if hqo then
if kqtw == _d("chwd") then
qhfm[0] = true
else
qhfm[nr.misc.cards.borderOf[tostring(kqtw)]] = true
end
end
end
end

nr.misc.cards.mergeWanted = qhfm
nr.misc.cards.refresh(true)
end,
}, _d("QREDABsRCUA"))

nr.misc.mergeSection:Button({
Name = _d("fhUDDgpYAlwH"),
Callback = function()
local xclt, fb = nr.misc.cards.run(true)

if not xclt then
lszo:Notify({
Title = _d("fhUDDgo"),
Description = fb,
Lifetime = 6,
})
end
end,
})

nr.misc.mergeSection:Button({
Name = _d("fhUDDgpYVQM"),
Callback = function()

local sob, ufy = nr.misc.cards.run(true, 90)

if not sob then
lszo:Notify({
Title = _d("fhUDDgpYVQM"),
Description = ufy,
Lifetime = 6,
})
end
end,
})

nr.misc.mergeParagraph = nr.misc.mergeSection:Paragraph({
Header = _d("YAQQHRoL"),
Body = nr.misc.cards.mergeText(),
})

nr.misc.accSection = nr.misc.tab:Section({
Side = _d("YRkWARs"),
})

nr.misc.accSection:Header({
Name = _d("chMSDBwLA0EZFBpPiPOh/g"),
})

nr.misc.accToggle = nr.misc.accSection:Toggle({
Name = _d("cgUFBk8aCUAEUQgMGwlAAx4bFg"),
Default = false,
Callback = function(sti)
nr.misc.util.accOn = sti
nr.misc.util.accAt = 0
end,
}, _d("UgUFBjAaCUAELggMGwlAAx4bFg"))

nr.misc.accBuyToggle = nr.misc.accSection:Toggle({
Name = _d("cgUFBk8aGUpQEwwcDA"),
Default = false,
Callback = function(yaui)
nr.misc.util.accBuyOn = yaui
nr.misc.util.accBuyAt = 0
nr.misc.util.accAt = 0
end,
}, _d("UgUFBjAaGUovEwwcDA"))

nr.misc.accSection:Button({
Name = _d("cQUISQ0dH0c"),
Callback = function()
local rph, fnw = nr.misc.util.buyBest()

if not rph then
lszo:Notify({
Title = _d("chMSDBwLA0EZFBo"),
Description = fnw,
Lifetime = 6,
})
end
end,
})

nr.misc.accSection:Button({
Name = _d("dgEEAB9YDlYDBQ"),
Callback = function()
if not nr.misc.util.equipBest() then
lszo:Notify({
Title = _d("chMSDBwLA0EZFBo"),
Description = _d("fR8FAQYWCxMSFB0bHR4TGQJJAA8CVhRREAoMQg"),
Lifetime = 5,
})
end
end,
})

nr.misc.accParagraph = nr.misc.accSection:Paragraph({
Header = _d("YAQQHRoL"),
Body = nr.misc.util.accText(),
})

nr.misc.claimInfo = nr.misc.tab:Section({
Side = _d("YRkWARs"),
})

nr.misc.claimInfo:Header({
Name = _d("fhkCCgoUAFIeFAYaCw"),
})

nr.misc.indexParagraph = nr.misc.claimInfo:Paragraph({
Header = _d("cBEDDU8xAlcVCQ"),
Body = nr.misc.util.indexText(),
})

nr.misc.achParagraph = nr.misc.claimInfo:Paragraph({
Header = _d("chMZAAoOCV4VHx0c"),
Body = nr.misc.util.achText(),
})

nr.misc.questParagraph = nr.misc.claimInfo:Paragraph({
Header = _d("YgUUGhsL"),
Body = nr.misc.util.questText(),
})

nr.misc.packParagraph = nr.misc.claimInfo:Paragraph({
Header = _d("YxESAhw"),
Body = nr.misc.util.packText(),
})

nr.misc.skillSection = nr.misc.tab:Section({
Side = _d("YRkWARs"),
})

nr.misc.skillSection:Header({
Name = _d("YBsYBQNYOEEVFEmf5+CA"),
})

nr.misc.skillToggle = nr.misc.skillSection:Toggle({
Name = _d("cgUFBk8NHFQCEA0K"),
Default = false,
Callback = function(rlu)
local emi = nr.misc.skill

if rlu and not (next(emi.mainWanted) or next(emi.raidWanted)) then
emi.on = false

pcall(function()
nr.misc.skillToggle:UpdateState(false)
end)

lszo:Dialog({
Title = _d("YxkSAk8ZTFECEAcMEExVGQMaGw"),
Description = _d("cBgeBhwdTFIEUQUKGR9HUB4HClgOQREfCgdYBV1QBQEKWCFSGR9JGwoJVlAeG08qDVoUUR0dHQkTFAMGHxwDRB5RRE8")
.. _d("cgUFBk8NHFQCEA0KWANdHAhJHAgJXRQCSR8XBV0EAkkYEAlBFVEQAA1MQx8YBxtYBUde"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})

return
end

emi.on = rlu
emi.at = 0
end,
}, _d("UgUFBjANHFQCEA0K"))

nr.misc.skillMainDropdown = nr.misc.skillSection:Dropdown({
Name = _d("fhEYB08MHlYV"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = nr.misc.skill.branchLabels(1),
Callback = function(egkx)
local vcu = nr.misc.skill
local qco = vcu.wantedFrom(egkx, 1)

vcu.mainWanted = qco
vcu.mainOrder = vcu.ordered(qco, vcu.mainOrder)
vcu.shown = _d("")
end,
}, _d("XhEYBzAMHlYV"))

nr.misc.skillRaidDropdown = nr.misc.skillSection:Dropdown({
Name = _d("YREYDU8MHlYV"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = nr.misc.skill.branchLabels(2),
Callback = function(gpe)
local vjzk = nr.misc.skill
local xiy = vjzk.wantedFrom(gpe, 2)

vjzk.raidWanted = xiy
vjzk.raidOrder = vjzk.ordered(xiy, vjzk.raidOrder)
vjzk.shown = _d("")
end,
}, _d("QREYDTAMHlYV"))

pcall(function()
nr.misc.skillMainDropdown:UpdateSelection({})
end)

pcall(function()
nr.misc.skillRaidDropdown:UpdateSelection({})
end)

nr.misc.skillParagraph = nr.misc.skillSection:Paragraph({
Header = _d("YAQQHRoL"),
Body = nr.misc.skill.text(),
})

task.spawn(function()
local zc = nr.misc.util

while usch() do
if zc.indexOn or zc.achOn or zc.questOn or zc.accOn or zc.accBuyOn then
zc.currentProfile()
end

if zc.indexOn then
zc.claimIndex()
end

if zc.achOn then
zc.claimAchievement()
end

if zc.questOn then

if os.clock() - zc.questAskedAt > 20 or os.clock() - zc.weeklyAskedAt > 20 then
zc.askQuests()
end

zc.claimQuest()
end

if zc.accOn and os.clock() >= zc.accAt then
zc.accAt = os.clock() + 3
zc.equipBest()
end

local sssg = nr.misc.cards

if not sssg.inFlight then
if sssg.mergeOn and os.clock() >= sssg.mergeAt then
sssg.run(true, nil, true)
elseif sssg.deconOn and os.clock() >= sssg.deconAt then
sssg.run(false, nil, true)
end
end

if sssg.mergeDone ~= sssg.mergeShown then
sssg.mergeShown = sssg.mergeDone

pcall(function()
nr.misc.mergeParagraph:UpdateBody(nr.misc.cards.mergeText())
end)
end

if sssg.deconDone ~= sssg.deconShown then
sssg.deconShown = sssg.deconDone

pcall(function()
nr.misc.deconParagraph:UpdateBody(nr.misc.cards.deconText())
end)
end

local jejk = nr.misc.skill

if jejk.on and os.clock() >= jejk.at then

jejk.at = os.clock() + 2
jejk.upgrade()
end

local us = nr.misc.skill.text()

if jejk.shown ~= us then
jejk.shown = us

pcall(function()
nr.misc.skillParagraph:UpdateBody(us)
end)
end

if zc.accBuyOn and os.clock() >= zc.accBuyAt then

local wg = zc.buyBest()

zc.accBuyAt = os.clock() + (wg and 45 or 10)
end

local fkfv = {
{ key = _d("Wh4VDBc"), paragraph = nr.misc.indexParagraph, value = zc.indexText() },
{ key = _d("UhMZ"), paragraph = nr.misc.achParagraph, value = zc.achText() },
{ key = _d("QgUUGhs"), paragraph = nr.misc.questParagraph, value = zc.questText() },
{ key = _d("QxESAg"), paragraph = nr.misc.packParagraph, value = zc.packText() },
{ key = _d("UhMS"), paragraph = nr.misc.accParagraph, value = zc.accText() },
}

for alz, jtm in ipairs(fkfv) do
if jtm.paragraph and zc.shown[jtm.key] ~= jtm.value then
zc.shown[jtm.key] = jtm.value

pcall(function()
jtm.paragraph:UpdateBody(jtm.value)
end)
end
end

task.wait(0.75)
end
end)

local fxn = bxv:Section({
Side = _d("YRkWARs"),
})

fxn:Paragraph({
Header = _d("dRkCAQYWCw"),
Body = _d("cgUFBk8+BUAYUQweDQVDA1EQAA0eEwIeDUNYClITFBpPDARWUAYIGx0eExEfDU8bDUAEAkkAFkxaBAJJAA8CH1AFAQoWTEEVFAUcWBtbFR9JHBcBVgQZAAEfTFEZBQwcVkxnIFEdAFguUglRGRoUAEBQCAYaWA5SExpJGxdMRxgUSQ0ZFRMWGBscDEATER8NTwwEVlAFHgBYKFYVAQwcDExkEQUMHVgfRBkFCgcdHxMYHgULWBhbFVEaHxcYEwkeHE8PCUEVURobGQJXGR8OTxcCEwcZDAFYFVwFUQgdFQlXUAUBChVMHlAFAQpYCFYVAQwcDExBGR8OTxsNQQIYDBxYGFsVUQsGHwtWAwVJAw0PWFATBgENHx16ez0HHUxAGB4ZTxoZSgNRCAEcTFYBBAAfC0xBHxUaTxkCV1ATCAYMTEQZBQFPDARWUBIIHAwfEwkeHE8QDUUVX0ktDRVaHhZJAR0JVwNRHQcdTFAfBAcbHR4TXVELAAwEExMeBApYCkEfHEkbEAkTNhgaBx0eXhEfR2VyL1IEEgEKC0xYFRQZHFgNEwIEBwERAlRQBQgDFBUTEghJBgwJXlAQBwtYH1IGFBpPERgfUAIGTwwEVlAFBhsZABMTEBsdEQlAUB4fCgpMURUFHgodAhMDFBocEQNdA18"),
})

local ol = bxv:Section({
Side = _d("YRkWARs"),
})

ol:Header({
Name = _d("cBEFCgcdHw"),
})

local jt

jt = ol:Paragraph({
Header = _d("ZBgQHU8BA0ZQEggaHwRH"),
Body = xwd(),
})

local vghj = bxv:Section({
Side = _d("YRkWARs"),
})

vghj:Header({
Name = _d("egMdCAEcTEAYHhk"),
})

vghj:Toggle({
Name = _d("cgUFBk8bHlIWBUkdFwg"),
Default = false,
Callback = function(liu)
hqy.island.autoRod = liu
hqy.islandAt = 0
end,
}, _d("WgMdCAEcM1IFBQYwCgNX"))

vghj:Toggle({
Name = _d("cgUFBk8bHlIWBUkOGw9WAwIGHQE"),
Default = false,
Callback = function(hc)
hqy.island.autoAcc = hc
hqy.islandAt = 0
end,
}, _d("WgMdCAEcM1IFBQYwGQ9QFQIaAAoV"))

vghj:Toggle({
Name = _d("dgEEAB9YDVATFBocFx5K"),
Default = false,
Callback = function(ry)
hqy.island.equipAcc = ry
hqy.islandAt = 0
end,
}, _d("WgMdCAEcM1YBBAAfJw1QExQaHBceSg"))

local ofma

ofma = vghj:Paragraph({
Header = _d("egMdCAEcTFQVEBs"),
Body = hqy.shopIsland.text(),
})

local ssfa = bxv:Section({
Side = _d("fxUXHQ"),
})

ssfa:Header({
Name = _d("YRUTAB0MBA"),
})

hqy.rebirthToggle = ssfa:Toggle({
Name = _d("cgUFBk8KCVEZAx0H"),
Default = false,
Callback = function(coo)
hqy.autoRebirth = coo
end,
}, _d("UgUFBjAKCVEZAx0H"))

hqy.rebirthParagraph = ssfa:Paragraph({
Header = _d("YAQQHRoL"),
Body = hqy.rebirthText(),
})

ssfa:Button({
Name = _d("ZyBRHQBYBUAcEAcL"),
Callback = function()
if not hqy.gotoIsland() then
lszo:Notify({
Title = _d("chIQBwsXAlYUUSAcFA1dFA"),
Description = _d("cBgQGw4bGFYCUQAcWAJcBFEbChkISlAIDBtYQRMEAxBPGQtSGR9JBhZMUlAcBgIdAkde"),
Lifetime = 5,
})
end
end,
})

local zmn

zmn = ssfa:Toggle({
Name = _d("cgUFBk8xH18RHw1PMA1BFBIGHR0"),
Default = false,
Callback = function(sry)
ujfh.island = sry
ujfh.pending = false
ujfh.pendingUntil = 0
ujfh.paused = false
ujfh.gaveUp = false
ujfh.stoodDown = false
ujfh.manualPause = false

if not sry then
return
end

if ym.otherTowerOn(_d("WxEDDQwXHlY")) then
ujfh.island = false

pcall(function()
zmn:UpdateState(false)
end)

pcall(function()
lszo:Dialog({
Title = _d("cgUFBk8xH18RHw1PMA1BFBIGHR1MXBYX"),
Description = _d("ZxgUSScZAF8fBgwKFkxHHwYMHVgFQFAQBR0dDVcJURsaFgJaHhZFTxkCV1AGABsQTFweFEkcFANHUAUBClgLUh0USQAWAEpQAxwBC0xcHhRJBhYKWh4YHQpYHlwfHEkODExSUAUAAh1CEyQEGwFYGFsRBUkAHgofUB4bTwwZQR5RBgFYLUYEHkk8FANHUAIGTx0NUBhRHQAPCUFQFgwbC0xaBAJJAA8CEwMdBhtW"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})
end)

return
end

if ym.enabled and ym.hardcoreSlot() == nil then
ujfh.island = false

pcall(function()
zmn:UpdateState(false)
end)

pcall(function()
lszo:Dialog({
Title = _d("cgUFBk8xH18RHw1PMA1BFBIGHR1MXBYX"),
Description = _d("fR9RGgMXGBMZAkkcHRgTBB5JDlgYXAcUG0NYDV0UUR0HHUxUERwMTxcCXwlRGhsZHkcDUQhPDANEFQNJHQ0CExYDBgJYDRMEHh4KCkxAHB4dQVg/VgRRBgEdTEcfUSAcFA1dFFEBDgoIUB8DDENYA0FQBRwdFkxyBQUGTysAXARRBgkeQg"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})
end)

return
end

if not ujfh.data then
ujfh.island = false

pcall(function()
zmn:UpdateState(false)
end)

pcall(function()
lszo:Dialog({
Title = _d("cgUFBk8xH18RHw1PMA1BFBIGHR1MXBYX"),
Description = _d("ZxgYGk8aGVocFUkHGR8THh5JJxkeVxMeGwosA0QVAy0ODA0fUAIGTwwEVlAFBhgdHhQDURobGQtWA1EKDhYCXARRCwpYHlYRFUkOFggTEVEbGhZMUBEfBwAMTFEVURobGR5HFRVH"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})
end)

return
end

local lwr = ujfh.remotes.request

if lwr then
pcall(function()
lwr:FireServer()
end)
end
end,
}, _d("UgUFBjARH18RHw0wEA1BFBIGHR0"))

ujfh.islandToggle = zmn

ujfh.islandParagraph = ssfa:Paragraph({
Header = _d("cQUXDxw"),
Body = ujfh.buffText(),
})

ssfa:Button({
Name = _d("YxEEGgpYJUAcEAcLWCRSAhUKAAoJ"),
Callback = function()
if ujfh.pauseRun then
ujfh.pauseRun()
end
end,
})

ssfa:Button({
Name = _d("dBkHDE8tHBM5AgUOFggTOBAbCxsDQRU"),
Callback = function()
if ujfh.giveUpRun then
ujfh.giveUpRun()
end
end,
})

local otix = bxv:Section({
Side = _d("fxUXHQ"),
})

otix:Header({
Name = _d("dRkCAQYWCxMDGQYf"),
})

otix:Toggle({
Name = _d("cgUFBk8aGUpQEwwcDExBHxU"),
Default = false,
Callback = function(blx)
hqy.shop.autoBuyRod = blx
hqy.shopAt = 0
end,
}, _d("UgUFBjAaGUovEwwcDDNBHxU"))

otix:Toggle({
Name = _d("cgUFBk8aGUpQEwwcDExRERgd"),
Default = false,
Callback = function(wdu)
hqy.shop.autoBuyBait = wdu
hqy.shopAt = 0
end,
}, _d("UgUFBjAaGUovEwwcDDNRERgd"))

otix:Toggle({
Name = _d("dgEEAB9YDlYDBUkdFwg"),
Default = false,
Callback = function(ad)
hqy.shop.equipRod = ad
hqy.shopAt = 0
end,
}, _d("VgEEAB8nDlYDBTYdFwg"))

otix:Toggle({
Name = _d("dgEEAB9YDlYDBUkNGQVH"),
Default = false,
Callback = function(urwq)
hqy.shop.equipBait = urwq
hqy.shopAt = 0
end,
}, _d("VgEEAB8nDlYDBTYNGQVH"))

local qga

qga = otix:Paragraph({
Header = _d("cRUCHU8BA0ZQEggBWAlCBRgZ"),
Body = zv(),
})
task.spawn(function()
local vp = bb()
local lol = xwd()
local ind = zv()
local vc = hqy.shopIsland.text()

while usch() do
local uwre = bb()

if uwre ~= vp then
vp = uwre
pcall(function()
vdt:UpdateBody(uwre)
end)
end

local cnr = xwd()

if cnr ~= lol then
lol = cnr
pcall(function()
jt:UpdateBody(cnr)
end)
end

local ana = zv()

if ana ~= ind then
ind = ana
pcall(function()
qga:UpdateBody(ana)
end)
end

local ww = hqy.shopIsland.text()

if ww ~= vc then
vc = ww
pcall(function()
ofma:UpdateBody(ww)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while usch() do

if jmtc() and os.clock() >= (hqy.shopAt or 0)
and os.clock() >= (hqy.islandTripUntil or 0) then
hqy.shopAt = os.clock() + 1
pcall(im)
end

if hqy.shopIsland.active() and os.clock() >= (hqy.islandAt or 0)
and os.clock() >= math.max(hqy.shopHoldUntil or 0, hqy.tpHoldUntil or 0) then
hqy.islandAt = os.clock() + 2
pcall(hqy.shopIsland.run)
end

task.wait(1)
end
end)

spyr:Select()

local oljr = spyr:Section({
Side = _d("fxUXHQ"),
})

local tmj = spyr:Section({
Side = _d("YRkWARs"),
})

local etxo = oljr:Paragraph({
Header = _d("YAQQHRoL"),
Body = nwy(),
})

oljr:Divider()

rv.npcToggle = oljr:Toggle({
Name = _d("cgUFBk82PHA"),
Default = false,
Callback = function(wft)

if wft and not rv.story and #awau() == 0 then
pcall(function()
rv.npcToggle:UpdateState(false)
end)

lszo:Dialog({
Title = _d("cgUFBk82PHBQHwwKHB8TEVEdDgoLVgQ"),
Description = _d("YxkSAk8ZGBMcFAgcDExcHhRJISgvExYDBgJYGFsVUR4ACgBXA1ELChQDRFxRBh1YGEYCH0kAFkxyBQUGTzsDXgAdDBsdTGAEHhsWVkxnGBQbClgFQFAfBhsQBV0XUR0AWApaFxkdTwEJR14"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})

return
end

rv.enabled = wft
end,
}, _d("UgUFBjAWHFA"))

oljr:Toggle({
Name = _d("ZBEdAk8MAxM+ISo"),
Default = false,
Callback = function(qbpa)
rv.walkToNpc = qbpa
end,
}, _d("RBEdAjAMA2weAQo"))

oljr:Dropdown({
Name = _d("dxkXDwYbGV8ECA"),
Search = false,
Multi = true,
Required = false,
Default = { _d("fR8DBA4U") },
Options = yse,
Callback = function(dkjl)
local agn = {}

if type(dkjl) == _d("RxETBQo") then
for cwu, mzij in ipairs(yse) do
if dkjl[mzij] then
table.insert(agn, ksgg[mzij])
end
end
end

if #agn == 0 then
agn = { _d("XR8DBA4U") }
end

rv.difficulties = agn
end,
}, _d("VxkXDwYbGV8ECA"))

oljr:Toggle({
Name = _d("cgUFBk8qA1wdAg"),
Default = false,
Callback = function(fqd)
flt.enabled = fqd
flt.inBattle = false
flt.pending = false
end,
}, _d("UgUFBjAKA1wdAg"))

local rc = spyr:Section({
Side = _d("fxUXHQ"),
})

rc:Header({
Name = _d("YBweHQ"),
})

rc:Paragraph({
Header = _d("ex8GSRsQCRMDHQYbC0xEHwMC"),
Body = _d("YBweHU9JTB5QOAcJEQJaBAhJOxcbVgJRQQEXHl4RHUkACkx9GRYBGxUNQRVYSQAKTHsRHQUADwlWHlE9AA8JQVxRGQMNHxM+ISpPGg1HBB0MHFgbWxUfSRwUA0dQQ0kGC0xRBQIQQXJmYBweHU9KTB5QPzksC0ATAhAACwtAEwIeBgILQBM5AgUOFggTOBAbCxsDQRVfY2U6A0cYURoDFxhAUB4HTzY8cFATCBsMAFYDS0kbDwMTPiEqTx4JUgQEGwoLTFIEUQYBGwkfUBAHC1gNEwIQAAtYDlwDAkkKGQ9bXntjOw8DEwQeHgoKTEEFHxpPER8TBBkMTxcCXwlRGwoeGUAVFUkfGQVBUFxJJgsAUh4VSScZHlcTHhsKWANdUBMGGxBMQBweHRxYBUBQHgcKWB5GHlEIHBMJV1AXBh1YGEQZEgxBcmZgHB4dHFgDVRZLSQAWCRMDHQYbVExHHwYMHQtMRxEaDE8MGUEeAkc"),
})

ym.toggle = rc:Toggle({
Name = _d("cgUFBk8rAFwE"),
Default = false,
Callback = function(ei)
if ei and ym.role[1] == ym.role[2] and ym.role[1] ~= _d("XQAS") then
ym.enabled = false

pcall(function()
ym.toggle:UpdateState(false)
end)

lszo:Dialog({
Title = _d("cgUFBk8rAFwE"),
Description = _d("YBweHU9JTFIeFUk8FANHUENJDgoJExIeHQdY") .. ym.roleLabel(1) .. _d("HVAlAQ4MTFoDUQYBHUxBBR9JDgsHVhRRDwAKTEcHGAoKVExAH1EGAR1MXBZRHQcdTEcHHkkcFANHA1EBDgtMRx9RCwpYH1wdFB0HEQJUUBQFHB1C"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})

return
end

ym.enabled = ei

if ei then
ym.hasSlot2 = ym.detectSlot2()

if ym.hasSlot2 == false then
lszo:Dialog({
Title = _d("cgUFBk8rAFwE"),
Description = _d("YBweHU9KTF8fHgIcWABcExoMC1hBExkFSQEdCVcDUR0HHUx3BRAFTzoNRwQdDE8rAFwEUQ4OFQlDEQIaQ1gDQVA4BwkRAloEFEk9FwNeUENcX1gPXxUQGwocQBMSFA8ACgkTBBkMTwsJUB8fDU8LAFwEUQoOFkxREQUdAx1CEyIeHBsRAlRQAh0OAR8THx9JHBQDR1BASRoWGFocUR0HHQId"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})
end
end
end,
}, _d("UgUFBjALAFwE"))

function ym.applyRoles()
if not ym.enabled then
return
end

if ym.role[1] == ym.role[2] and ym.role[1] ~= _d("XQAS") then
ym.enabled = false

pcall(function()
ym.toggle:UpdateState(false)
end)

pcall(function()
lszo:Dialog({
Title = _d("cgUFBk8rAFwEUQYJHg"),
Description = _d("YBweHU9JTFIeFUk8FANHUENJDgoJExIeHQdY") .. ym.roleLabel(1) .. _d("HVAlAQ4MTFoDUQYBHUxBBR9JDgsHVhRRDwAKTEcHGAoKVExSHhVJBgxMUBEfBwAMTEcRGgxPDBtcUAIFAAwfHVAiDBtYA10VURoDFxgTBB5JHBcBVgQZAAEfTFYcAgxB"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})
end)

return
end

local dyv = {}

if ym.towerSlot() ~= 1 and nt.enabled then
nt.enabled = false
table.insert(dyv, _d("cgUFBk8sA0QVAw"))

pcall(function()
nt.ui:UpdateState(false)
end)
end

if ym.hardcoreSlot() == nil and ujfh.island then
ujfh.island = false
table.insert(dyv, _d("cgUFBk8xH18RHw1PMA1BFBIGHR0"))

pcall(function()
ujfh.islandToggle:UpdateState(false)
end)
end

if ym.halloweenSlot() == nil and xoi.run.enabled then
xoi.run.enabled = false
table.insert(dyv, _d("cgUFBk8wDV8cHh4KHQITJB4eCgo"))

pcall(function()
xoi.toggle:UpdateState(false)
end)
end

if #dyv > 0 then
pcall(function()
lszo:Dialog({
Title = table.concat(dyv, _d("ExEfDU8")) .. _d("Ex8XDw"),
Description = _d("fR9RGgMXGBMZAkkcHRgTBB5JGxANR1AFBhgdHhMRHxBPFQNBFV1JHBdMWgRRAQ4cTF0fBgEKCgkTBB5JHQ0CHVA2ABkdTFoEUQhPCwBcBFEICBkFXVxRBh1YGEYCH0kuDRhcUCIFAAxMXBYXRw"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})
end)
end
end

ym.oneDropdown = rc:Dropdown({
Name = _d("YBweHU9J"),
Search = false,
Multi = false,
Required = false,

Default = 1,
Options = ym.optionsFor[1],
Callback = function(lwml)
local wqaj = type(lwml) == _d("RxETBQo") and lwml[1] or lwml

if type(wqaj) == _d("QAQDAAEf") and ym.roleIds[wqaj] then
ym.role[1] = ym.roleIds[wqaj]
ym.picked[1] = wqaj
end

pcall(function()
ym.oneDropdown:UpdateName(_d("YBweHU9JTNHw00k") .. ym.roleLabel(1))
end)

if ym.applyRoles then
ym.applyRoles()
end
end,
}, _d("QBweHTBJMwE"))

ym.twoDropdown = rc:Dropdown({
Name = _d("YBweHU9K"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = ym.optionsFor[2],
Callback = function(jnti)
local bda = type(jnti) == _d("RxETBQo") and jnti[1] or jnti

if type(bda) == _d("QAQDAAEf") and ym.roleIds[bda] then
ym.role[2] = ym.roleIds[bda]
ym.picked[2] = bda
end

pcall(function()
ym.twoDropdown:UpdateName(_d("YBweHU9KTNHw00k") .. ym.roleLabel(2))
end)

if ym.applyRoles then
ym.applyRoles()
end
end,
}, _d("QBweHTBKMwE"))

pcall(function()
ym.oneDropdown:UpdateSelection(_d("Zx8GDB0"))
end)

pcall(function()
ym.twoDropdown:UpdateSelection(_d("fSAySQ0ZGEccFBo"))
end)

getgenv().ACBXSlot = ym

local fbq = spyr:Section({
Side = _d("fxUXHQ"),
})

fbq:Header({
Name = _d("YREYDU8aA0AD"),
})

fbq:Toggle({
Name = _d("cgUFBk8qDVoUUSsACx8"),
Default = false,
Callback = function(udz)
nr.enabled = udz
nr.pending = {}
nr.pendingUntil = {}

if udz then
nr.cleared = {}
end
end,
}, _d("UgUFBjAKDVoULgsACx8"))

fbq:Toggle({
Name = _d("cgUFBk8vDV8bUR0AWD5SGRVJLRcfQA"),
Default = false,
Callback = function(jvd)
nr.walkToBoss = jvd
end,
}, _d("UgUFBjAPDV8bLh0AJx5SGRU2DRcfQA"))

local boj
boj = fbq:Slider({
Name = _d("ZBEdAk8rHFYVFQ"),
Minimum = 0,
Maximum = 72,
Default = 18,
Precision = 0,
Callback = function(cq)
local zmb = math.floor(cq + 0.5)
nr.walkSpeed = zmb

if boj and zmb ~= cq then
boj:UpdateValue(zmb)
end
end,
}, _d("RBEdAjALHFYVFQ"))

fbq:Dropdown({
Name = _d("YREYDU88BVUWGAoaFBhK"),
Search = false,
Multi = true,
Required = false,
Default = { _d("fR8DBA4U") },
Options = xwqb,
Callback = function(cwb)
local bot = {}

if type(cwb) == _d("RxETBQo") then
for csi, xtk in ipairs(xwqb) do
if cwb[xtk] then
table.insert(bot, fkpb[xtk])
end
end
end

if #bot == 0 then
bot = { _d("XR8DBA4U") }
end

nr.difficulties = bot
end,
}, _d("QREYDTAcBVUWGAoaFBhK"))

function nr.pickedIds(aed)
local ep = {}

if type(aed) == _d("RxETBQo") then
for yzrv, zbgz in ipairs(xd) do
if aed[zbgz] and kiss[zbgz] then
table.insert(ep, kiss[zbgz])
end
end
elseif type(aed) == _d("QAQDAAEf") and kiss[aed] then
ep = { kiss[aed] }
end

return ep
end

fbq:Dropdown({
Name = _d("YREYDU86A0AD"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = xd,
Callback = function(gju)
nr.picks[1] = nr.pickedIds(gju)
nr.cursor[1] = 1
nr.losses[1] = {}
end,
}, _d("QREYDTAaA0AD"))

nr.boss2Dropdown = fbq:Dropdown({
Name = _d("YREYDU86A0ADUUE8FANHUENA"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = xd,
Callback = function(vm)
nr.picks[2] = nr.pickedIds(vm)
nr.cursor[2] = 1
nr.losses[2] = {}
end,
}, _d("QREYDTAaA0ADLhoDFxhsQg"))

pcall(function()
nr.boss2Dropdown:SetVisibility(false)
end)

task.spawn(function()
local epaa = nil

while usch() do
local ult = ym.splitNpc()

if ult ~= epaa then
epaa = ult

local rnll = nr.boss2Dropdown

if rnll then
pcall(function()
rnll:SetVisibility(ult)
end)
end
end

task.wait(0.5)
end
end)

tmj:Paragraph({
Header = _d("cgUFBk8+BVQYBQ"),
Body = _d("YBUdDAwMTFweFEkACkxeHwMMTzY8cANRDx0XARMEGQxPDwNBHBUaTxoJXx8GRw"),
})

for zgj, lv in ipairs(kcdl) do
tmj:Dropdown({
Name = lv.name,
Search = true,
Multi = true,
Required = false,
Default = {},
Options = lv.options,
Callback = function(cpu)
local fxl = {}

if type(cpu) == _d("RxETBQo") then
if cpu.All then
for csar, tkxp in ipairs(lv.ids) do
table.insert(fxl, tkxp)
end
else
for tyr, mjj in ipairs(lv.options) do
if cpu[mjj] and lv.byName[mjj] then
table.insert(fxl, lv.byName[mjj])
end
end
end
elseif type(cpu) == _d("QAQDAAEf") then
if cpu == _d("chwd") then
for rfyh, pzbu in ipairs(lv.ids) do
table.insert(fxl, pzbu)
end
else
fxl = { lv.byName[cpu] }
end
end

rv.selectedByWorld[lv.name] = fxl
end,
}, _d("XQASNg") .. lv.id)
end

tmj:Toggle({
Name = _d("cgUFBk87A14AHQwbHUxgBB4bFg"),
Default = false,
Callback = function(efo)
rv.story = efo
rv.battlePending = false
rv.battlePendingUntil = 0
end,
}, _d("UgUFBjAbA14AHQwbHTNABB4bFg"))

rv.storyDropdown = tmj:Dropdown({
Name = _d("dxkXDwYbGV8EGAwc"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = yse,
Callback = function(web)
local jclz = type(web) == _d("RxETBQo") and web[1] or web

if type(jclz) == _d("QAQDAAEf") and ksgg[jclz] then
rv.storyDifficulty = ksgg[jclz]
end
end,
}, _d("VxkXDwYbGV8EGAwc"))

pcall(function()
rv.storyDropdown:UpdateSelection(yse[1])
end)

pcall(function()
rv.storyDropdown:UpdateName(_d("dxkXDwYbGV8EGAwcWI6z0lE") .. yse[1])
end)

tmj:Paragraph({
Header = _d("ex8GSS4NGFxQMgYCCABWBBRJPAwDQQlRHgAKB0A"),
Body = _d("dRkWARsLTFYGFBsWWB9HHwMQTzY8cFBcSSEZAVYbUR0HCgNGFxlJJgsJWBEYSUJYA11QBQEKWANdFVENBh4KWhMEBRsBTFISHh8KVExEHwMCBhYLEwQZDE8ZHlYRAkkGFkxcAhUMHVgNXRRRCgAVBV0XUQsOGwcTAh4cARxMUgNRCgAXAFcfBgccWA9fFRAbQXJmegRRGwoIAFITFBpPDARWUBAbChlMVwIeGQsXG10DUR4HEQBWUBgdTxEfEx8fRU8ZAldQHQwODglAUAMIBhxMUR8CGgoLTFIcHgcKVg"),
})

local qky = scs:Section({
Side = _d("fxUXHQ"),
})

qky:Header({
Name = _d("Zx8GDB0"),
})

local fmp
local xcz

local xtsi = {
remotes = {},
watcher = false,
hidMenu = false,

hardWatch = {},
}

pcall(function()
local dxl = getgenv().ACBXHardWatch

if type(dxl) == _d("RxETBQo") then
for hn, jfwn in pairs(dxl) do
pcall(function()
if jfwn.Connected then
jfwn:Disconnect()
end
end)
end
end

getgenv().ACBXHardWatch = xtsi.hardWatch
end)

function xtsi.hardPick(ir)
ir = ir == true

for kz, ishe in ipairs({ _d("cREFHQMdK0YZ"), _d("cREFHQMdK0YZQw") }) do
local bjhe = qf:FindFirstChild(ishe)

if bjhe then
if bjhe:GetAttribute(_d("Zx8GDB0wDUEUIQAMEw")) ~= ir then
pcall(function()
bjhe:SetAttribute(_d("Zx8GDB0wDUEUIQAMEw"), ir)
end)
end

if bjhe:GetAttribute(_d("Zx8GDB0wDUEUIxwB")) ~= nil and bjhe:GetAttribute(_d("Zx8GDB0wDUEUIxwB")) ~= ir then
pcall(function()
bjhe:SetAttribute(_d("Zx8GDB0wDUEUIxwB"), ir)
end)
end
end
end
end

function xtsi.pinMode()
if not (nt.enabled or nt.nightmare) then
return
end

local qvx = nt.nightmare == true

for mwo, mpc in ipairs({ _d("cREFHQMdK0YZ"), _d("cREFHQMdK0YZQw") }) do
local bcz = qf:FindFirstChild(mpc)

if bcz then
if bcz:GetAttribute(_d("Zx8GDB0wDUEUIQAMEw")) ~= qvx then
pcall(function()
bcz:SetAttribute(_d("Zx8GDB0wDUEUIQAMEw"), qvx)
end)
end

local bhob = xtsi.hardWatch[bcz]

if bhob and bhob.Connected == false then
xtsi.hardWatch[bcz] = nil
bhob = nil
end

if bhob == nil then
local iixz, iiq = pcall(function()
return vhzs(bcz:GetAttributeChangedSignal(_d("Zx8GDB0wDUEUIQAMEw")), function()
if not (nt.enabled or nt.nightmare) then
return
end

local kgs = nt.nightmare == true

if bcz.Parent and bcz:GetAttribute(_d("Zx8GDB0wDUEUIQAMEw")) ~= kgs then
pcall(function()
bcz:SetAttribute(_d("Zx8GDB0wDUEUIQAMEw"), kgs)
end)
end
end)
end)

if iixz then
xtsi.hardWatch[bcz] = iiq
end
end
end
end
end

function xtsi.pauseRows()
local gotn = qzj:FindFirstChild(_d("YxwQEAoKK0YZ")) and qzj.PlayerGui:FindFirstChild(_d("YBUFHQYWC0A3BAA"))

if not gotn then
return nil, nil
end

return gotn:FindFirstChild(_d("YxEEGgoxAlUZHwAbHSVdAAQd"), true), gotn:FindFirstChild(_d("YxEEGgoxAlUZHwAbHS9bFRIC"), true)
end

function xtsi.pauseState()
local xxk = qzj:FindFirstChild(_d("YxwQEAoKK0YZ")) and qzj.PlayerGui:FindFirstChild(_d("YBUFHQYWC0A3BAA"))
local uhyb = xxk and xxk:FindFirstChild(_d("dBUFOgoMGFoeFho"), true)

if not uhyb then
return nil
end

local nkz, dqd = pcall(function()
return uhyb:Invoke()
end)

if nkz and type(dqd) == _d("RxETBQo") then
return dqd.pauseInfiniteEnabled == true
end

return nil
end

function xtsi.pauseAt(calh, ofj)
ofj = math.max(1, math.floor(tonumber(ofj) or 1))

local xvr, yuu = xtsi.pauseRows()

if not (xvr and yuu) then
return false
end

local xdxo = pcall(function()
if tonumber(xvr.Text) ~= ofj then
xvr.Text = tostring(ofj)

if getconnections then
for pyce, opt in ipairs(getconnections(xvr.FocusLost)) do
pcall(function()
opt:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end
end)

if calh ~= nil then
local ovdl = xtsi.pauseState()

if ovdl ~= nil and ovdl ~= calh and getconnections then
pcall(function()
for cmrw, smq in ipairs(getconnections(yuu.MouseButton1Click)) do
pcall(function()
smq:Fire()
end)
end
end)
end
end

return xdxo
end

function xtsi.restorePause()
yx.triggered = false

if yx.enabled and yx.floor > 0 then
xtsi.pauseAt(true, yx.floor)

pcall(function()
fyeb.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = yx.floor,
})
end)

return
end

pcall(function()
fyeb.SaveClientData:FireServer({
pauseInfiniteEnabled = false,
pauseInfiniteAt = 1,
})
end)

xtsi.pauseAt(false, 1)
end

function xtsi.remote(qsmy)
local sup = xtsi.remotes[qsmy]

if sup and sup.Parent then
return sup
end

local yea = gs:FindFirstChild(_d("YRUcBhsdHw"))
local qqzg = yea and yea:FindFirstChild(qsmy)

if qqzg then
xtsi.remotes[qsmy] = qqzg
end

return qqzg
end

function xtsi.historyOpen()
for gdu, pipb in ipairs({ _d("cREFHQMdK0YZ"), _d("cREFHQMdK0YZQw") }) do
local ckj = qf:FindFirstChild(pipb)
local bav = ckj and ckj:FindFirstChild(_d("Zx8GDB0wBUAEHhsWPh5SHRQ"))

if bav and bav.Visible then
return true
end
end

return false
end

function xtsi.generationOpen()
local xlra = qf:FindFirstChild(_d("Zx8GDB0qCUAFHR0oDQU"))
local ew = xlra and xlra:FindFirstChild(_d("YRUCHAMMKkERHAw"))

return ew ~= nil and ew.Visible
end

function xtsi.standDown(jknj)
if not xtsi.hidMenu then
local xilv = true

pcall(function()
xilv = lszo:GetState() ~= false
end)

if xilv then
xtsi.hidMenu = true

pcall(function()
lszo:SetState(false)
end)
end
end

if xtsi.watcher then
return
end

xtsi.watcher = true

task.spawn(function()

local ctu = os.clock() + 6

while usch() and os.clock() < ctu and not jknj() do
task.wait(0.2)
end

while usch() and jknj() do
task.wait(0.4)
end

xtsi.watcher = false

if xtsi.hidMenu then
xtsi.hidMenu = false

pcall(function()
lszo:SetState(true)
end)
end
end)
end

nt.floorAt = 0
nt.battleAt = 0
nt.floor = nil
nt.manualPause = false

task.spawn(function()
local alrp = yhti(_d("cREFHQMdOUMUEB0K"))
local yqn = yhti(_d("YAkfCjsXG1YCNwUAFx4"))
local hxh = yhti(_d("cREFHQMdKV0U"))
local dyos = yhti(_d("Zx8GDB0qGV01Hw0KHA"))

if alrp then
vhzs(alrp.OnClientEvent, function()
nt.battleAt = os.clock()
end)
end

if yqn then
vhzs(yqn.OnClientEvent, function(ntyw)
nt.floorAt = os.clock()

if type(ntyw) == _d("XQUcCwoK") and ntyw > 1 then
nt.floor = ntyw
else
nt.floor = nil
end
end)
end

if hxh then
vhzs(hxh.OnClientEvent, function(mbzu)
if type(mbzu) == _d("RxETBQo") and mbzu.mode == _d("Rx8GDB0") then
nt.floorAt = os.clock()
end
end)
end

if dyos then
vhzs(dyos.OnClientEvent, function()

nt.lastRunEnded = {
clock = os.clock(),
floor = nt.floor,
}

task.delay(1, function()
local cnzv = qf:FindFirstChild(_d("Zx8GDB0qCUAFHR0oDQU"))
local iwz = cnzv and cnzv:FindFirstChild(_d("YRUCHAMMKkERHAw"))
local gmw = {}

if iwz then
for nfg, nwj in ipairs(iwz:GetDescendants()) do
if nwj:IsA(_d("ZxUJHSMZDlYc")) and nwj.Visible and nwj.Text ~= _d("") and #gmw < 12 then
gmw[#gmw + 1] = nwj.Text
end
end
end

if nt.lastRunEnded then
nt.lastRunEnded.texts = table.concat(gmw, _d("EwxR"))
end
end)

nt.floorAt = 0
nt.battleAt = 0
nt.floor = nil

if nt.manualPause then
xtsi.restorePause()
end
end)
end

end)

local function biu()
local hyk = os.clock()

if hyk - (nt.floorAt or 0) < 90 and hyk - (nt.battleAt or 0) < 12 then
return true
end

for sbc, hpst in ipairs({ _d("cREFHQMdK0YZ"), _d("cREFHQMdK0YZQw") }) do
local casr = qf:FindFirstChild(hpst)

if casr then

local tktw = casr:FindFirstChild(_d("Zx8GDB0+AFwfAyUOGglf"))

if tktw and tktw.Visible then
return true
end

local eijk = casr:FindFirstChild(_d("dRweBh0rD0EVFAc"))

if eijk and eijk.Visible then
return true
end

local kn = casr:FindFirstChild(_d("cREFHQMdP1ACFAwB"))

if kn and kn.Visible then
local ywt = kn:FindFirstChild(_d("YgUYCgQ/BUUVJBktDRhHHx8"))

if ywt and ywt.Visible then
return true
end
end
end
end

return false
end

function xtsi.hardNow()

local pxz = qf:FindFirstChild(_d("cREFHQMdK0YZ"))
local lfqx = pxz and pxz:GetAttribute(_d("Zx8GDB0wDUEUIQAMEw"))

if lfqx ~= nil then
return lfqx == true
end

local lezq = nr.misc.util.profile

return type(lezq) == _d("RxETBQo") and lezq.lastTowerHard == true
end

function xtsi.endIfWrongMode(vtse)
if not biu() or xtsi.hardNow() == (vtse == true) then
return false
end

pcall(function()
if type(xcz) == _d("VQUfChsRA10") then
xcz()
else
fyeb.EndTowerRemote:FireServer(1)
end
end)

nt.floor = nil

return true
end

function xtsi.hardPickNow()
for xtsp, torx in ipairs({ _d("cREFHQMdK0YZ"), _d("cREFHQMdK0YZQw") }) do
local fgde = qf:FindFirstChild(torx)
local nut = fgde and fgde:GetAttribute(_d("Zx8GDB0wDUEUIQAMEw"))

if nut ~= nil then
return nut == true
end
end

return nil
end

function xtsi.parked()
for gnif, lhb in ipairs({ _d("cREFHQMdK0YZ"), _d("cREFHQMdK0YZQw") }) do
local wir = qf:FindFirstChild(lhb)

if wir then
local gxtg = wir:FindFirstChild(_d("Zx8GDB0+AFwfAyUOGglf"))
local wbzt = wir:FindFirstChild(_d("dRweBh0rD0EVFAc"))
local tsc = wir:FindFirstChild(_d("cREFHQMdP1ACFAwB"))

if gxtg and gxtg.Visible
and not (wbzt and wbzt.Visible)
and not (tsc and tsc.Visible) then
return true
end
end
end

return false
end

nt.ui = qky:Toggle({
Name = _d("cgUFBk8sA0QVAw"),
Default = false,
Callback = function(wfac)

if nt.quiet then
return
end

nt.enabled = wfac
nt.pending = false
nt.pendingUntil = 0

if wfac then

if ym.enabled and ym.role[1] ~= _d("Rx8GDB0") then
nt.enabled = false

pcall(function()
nt.ui:UpdateState(false)
end)

pcall(function()
lszo:Dialog({
Title = _d("cgUFBk8sA0QVA0kAHgo"),
Description = _d("YBweHU9JTFoDURoKDExHH1E") .. ym.roleName(1) .. _d("HVAlAQpYJV0WGAcGDBUTMxAaGxQJEx8fBRZYH0cRAx0cWANdUAIFAAxMAlxRGgBYH1YEUToDFxgTQVEdAFg4XAcUG08eBUEDBUc"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})
end)

return
end

if ym.otherTowerOn(_d("Rx8GDB0")) then
nt.enabled = false

pcall(function()
nt.ui:UpdateState(false)
end)

pcall(function()
lszo:Dialog({
Title = _d("cgUFBk8sA0QVA0kAHgo"),
Description = _d("ch4eHQcdHhMEHh4KCkxSBQUGAhkYWh8fSQYLTFIcAwwOHBUTHx9FTxkCV1AFAQYLTFITEgYaFhgTHx8FFlgNXxweHhxYA10VUR0ADwlBUAMcAVgNR1AQSRsRAVZeUT0aCgITBBkIG1gDXRVRBgkeTFUZAxobVExcAlEdGgoCEx8fSS4NGFxQIgUADExAH1EMDhsEEwMdBhtYC1YEAkkGDB8THwYHTwwDRBUDRw"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})
end)

return
end

nt.nightmare = false

pcall(function()
nt.quiet = true
nt.nightmareToggle:UpdateState(false)
nt.quiet = false
end)

nt.manualPause = false
nt.paused = false
xtsi.restorePause()
nt.pauseArmed = false

xtsi.endIfWrongMode(false)
xtsi.hardPick(false)

return
end

if not biu() then
return
end

nt.paused = true
local nq = fmp()

lszo:Notify({
Title = _d("cgUFBk8sA0QVA0kAHgo"),
Description = nq and _d("Zx8GDB1YHkYeURkODR9WFF8") or _d("YQUfSQYLTF8ZBwxDWA5GBFEHAFgOQRUQAk8aGUcEHgdPHgNGHhVH"),
Lifetime = 5,
})
end,
}, _d("UgUFBjAMA0QVAw"))

nt.nightmareToggle = qky:Toggle({
Name = _d("cgUFBk82BVQYBQQOCgkTJB4eCgo"),
Default = false,
Callback = function(uamj)
if nt.quiet then
return
end

nt.nightmare = uamj

if not uamj then

nt.enabled = false
nt.pending = false
nt.pendingUntil = 0

xtsi.hardPick(false)

pcall(function()
nt.quiet = true
nt.ui:UpdateState(false)
nt.quiet = false
end)

if biu() then
nt.paused = true
local gezb = fmp()

lszo:Notify({
Title = _d("cgUFBk82BVQYBQQOCgkTJB4eCgpMXBYX"),
Description = gezb and _d("fRkWARsVDUEVURsaFkxDEQQaChxC") or _d("YQUfSQYLTF8ZBwxDWA5GBFEHAFgOQRUQAk8aGUcEHgdPHgNGHhVH"),
Lifetime = 5,
})
end

return
end

if ym.enabled and ym.role[1] ~= _d("Rx8GDB0") then
nt.nightmare = false

pcall(function()
nt.quiet = true
nt.nightmareToggle:UpdateState(false)
nt.quiet = false
end)

pcall(function()
lszo:Dialog({
Title = _d("cgUFBk82BVQYBQQOCgkTJB4eCgpMXBYX"),
Description = _d("fRkWARsVDUEVUT0ADwlBUBIGGhYYQFAQGk8sA0QVA0kGFkxAHB4dT0lAExEfDU8BA0YCURoDFxgTQVEAHFgDXVA") .. ym.roleName(1) .. _d("EwIYDgcMTF0fBkdPKwlHUAIFAAxMAlAFBk8sA0QVA0kJER5ABF8"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})
end)

return
end

pcall(function()
nt.quiet = true
nt.ui:UpdateState(false)
nt.quiet = false
end)

nt.enabled = true
nt.manualPause = false
nt.paused = false

xtsi.restorePause()
nt.pauseArmed = false

xtsi.endIfWrongMode(true)
xtsi.hardPick(true)

nt.pending = false
nt.pendingUntil = 0
end,
}, _d("UgUFBjAWBVQYBQQOCglsBB4eCgo"))

qky:Header({
Name = _d("cgUFBk8oDUYDFEk7FxtWAg"),
})

local upat

upat = qky:Toggle({
Name = _d("cgUFBk8oDUYDFEkpFANcAg"),
Default = false,
Callback = function(ohtq)
yx.triggered = false

if ohtq and yx.floor <= 0 then
yx.enabled = false

pcall(function()
upat:UpdateState(false)
end)

pcall(function()
fyeb.SaveClientData:FireServer({ pauseInfiniteEnabled = false })
end)

lszo:Dialog({
Title = _d("cgUFBk8oDUYDFEkpFANcAg"),
Description = _d("YBUFSQ5YHFIFAgxPHgBcHwNJDhoDRRVRWU8eBUEDBUlCWC1GBB5JPxkZQBVRPQAPCUFQHwwKHB8TBB5JBBYDRFAGAQoKCRMEHkkcDANDXg"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})

return
end

yx.enabled = ohtq

pcall(function()
fyeb.SaveClientData:FireServer({
pauseInfiniteEnabled = ohtq,
pauseInfiniteAt = yx.floor,
})
end)
end,
}, _d("UgUFBjAIDUYDFDYJFANcAg"))

qky:Input({
Name = _d("YxEEGgpYDUdQFwUAFx4"),
Placeholder = _d("Vl4WR09NXA"),
AcceptedCharacters = _d("fQUcCwoKHw"),
Callback = function(yuex)
local tjuk = tonumber(yuex) or 0

if tjuk < 0 then
tjuk = 0
end

if tjuk == yx.floor then
return
end

yx.floor = tjuk
yx.triggered = false

if tjuk <= 0 and yx.enabled then
yx.enabled = false

pcall(function()
upat:UpdateState(false)
end)
end

pcall(function()
fyeb.SaveClientData:FireServer({
pauseInfiniteAt = tjuk,
pauseInfiniteEnabled = yx.enabled,
})
end)
end,
}, _d("QxEEGgonDUcvFwUAFx4"))

qky:Button({
Name = _d("YxEEGgpYOFwHFBs"),
Callback = function()
local cfxg = false

pcall(function()
cfxg = fmp()
end)

if cfxg then

nt.manualPause = true
return
end

lszo:Dialog({
Title = _d("YxEEGgpYOFwHFBs"),
Description = _d("fR9RBQYOCRMEHh4KCkxBBR9JGxdMQxEEGgpYHloXGR1PFgNEXg"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})
end,
})

qky:Header({
Name = _d("cgUFBk8/BUUVUTwf"),
})

mty.toggle = qky:Toggle({
Name = _d("cgUFBk8/BUUVUTwf"),
Default = false,
Callback = function(sv)
mty.triggered = false

if sv and mty.floor <= 0 then
mty.enabled = false

pcall(function()
mty.toggle:UpdateState(false)
end)

lszo:Dialog({
Title = _d("cgUFBk8/BUUVUTwf"),
Description = _d("YBUFSQ5YC1oGFEkaCExVHB4GHVgNUR8HDE9ITFUZAxobWEETMQQdAFgrWgYUSToITF0VFA0cWBhcUBoHAA9MRBgUGwpYGFxQAh0ACEI"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})

return
end

mty.enabled = sv
end,
}, _d("UgUFBjAfBUUVLhwf"))

qky:Input({
Name = _d("dBkHDE8NHBMfH0kJFANcAg"),
Placeholder = _d("Vl4WR09PXA"),
AcceptedCharacters = _d("fQUcCwoKHw"),
Callback = function(jywa)
local ny = tonumber(jywa) or 0

if ny < 0 then
ny = 0
end

if ny == mty.floor then
return
end

mty.floor = ny
mty.triggered = false

if ny <= 0 and mty.enabled then
mty.enabled = false

pcall(function()
mty.toggle:UpdateState(false)
end)
end
end,
}, _d("VBkHDDANHGwfHzYJFANcAg"))

mty.weatherToggle = qky:Toggle({
Name = _d("cgUFBk8fBUUVURwfWANdUAYMDgwEVgI"),
Default = false,
Callback = function(jx)
mty.weatherTriggered = false

if jx and next(mty.weathers) == nil then
mty.weatherEnabled = false

pcall(function()
mty.weatherToggle:UpdateState(false)
end)

lszo:Dialog({
Title = _d("ZBUQHQcdHhM3GB8KWDlD"),
Description = _d("ZxkSAk8ZGBMcFAgcDExcHhRJGB0NRxgUG08aCV8fBkkJER5ABFFETxcYWxUDHgYLCRMEGQwdHUxaA1EHAAwEWh4WSRsXTFQZBwxPDRwTHx9H"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})

return
end

mty.weatherEnabled = jx
end,
}, _d("UgUFBjAfBUUVLhwfJwNdLwYMDgwEVgI"))

qky:Dropdown({
Name = _d("dBkHDE8NHBMHFAgbEAlBAw"),
Multi = true,
Required = false,
Options = { _d("ZwkBAQAXAg"), _d("cRwYExUZHlc"), _d("fxkWARsWBV0X"), _d("ZBkfDRwMA0Ed"), _d("YBgQGwYWC1Ie"), _d("YBkfDhoUDUEZBRA"), _d("fh8fCB0bBBM0HgQOEQI"), _d("ZR8YDQ"), _d("fhEVDE8RAhM4FAgZHQI"), _d("fhEfDg4") },
Callback = function(yxo)
mty.weathers = {}

if type(yxo) == _d("RxETBQo") then
for ts, ppx in pairs(yxo) do
if ppx then
mty.weathers[ts] = true
end
end
end

mty.weatherTriggered = false
end,
}, _d("VBkHDDANHGwHFAgbEAlBAw"))

qky:Input({
Name = _d("fhkfAAINARMWHQYACh8"),
Placeholder = _d("A1BMSQ4WFRMWHQYACg"),
AcceptedCharacters = _d("fQUcDB0RDw"),
Callback = function(rom)
local vcd = math.floor(tonumber(rom) or 0)

if vcd < 0 then
vcd = 0
end

mty.weatherMinFloor = vcd
mty.weatherTriggered = false
end,
}, _d("XhkfAAINAWwWHQYACh8"))

qky:Button({
Name = _d("dBkHDE8tHBMkHh4KCg"),
Callback = function()
if not biu() then
lszo:Dialog({
Title = _d("dBkHDE8tHBMkHh4KCg"),
Description = _d("fR9RBQYOCRMEHh4KCkxBBR9JGxdMVBkHDE8NHBMCGA4HDExdHwZH"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})

return
end

lszo:Dialog({
Title = _d("dBkHDE8tHBMkHh4KCg"),
Description = _d("dR8DDwoRGBMEGQxPGxlBAhQHG1gYXAcUG08KGV1PUT0HER8TExAHARcYExIUSRoWCFweFEc"),
Buttons = {
{
Name = _d("dB9RCw4bBw"),
},
{
Name = _d("dBkHDE8NHA"),
Callback = function()
local wevj = false

pcall(function()
wevj = xcz()
end)

if wevj then
return
end

task.defer(function()
task.wait(0.3)

lszo:Dialog({
Title = _d("dBkHDE8tHBMkHh4KCg"),
Description = _d("fR9RDgYOCRMFAUkNDRhHHx9JDhYfRBUDDAtYQRMEGQxPChldUBwIFlgNXwIUCAsBTFEVUQYZHR4d"),
Buttons = {
{
Name = _d("dB8FSQYM"),
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

qky:Button({
Name = _d("cBgUCgRYAFwDAkkHER9HHwMQ"),
Callback = function()
local yyy = xtsi.remote(_d("YRUAHAoLGGcfBgwdMAVABB4bFg"))

if not yyy then
lszo:Dialog({
Title = _d("fx8CGk8wBUAEHhsW"),
Description = _d("ZxgYGk8aGVocFUkHGR8THh5JGxcbVgJRAQYLGFwCCEkdHQFcBBRH"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})

return
end

xtsi.standDown(xtsi.historyOpen)

pcall(function()
yyy:FireServer()
end)
end,
})

qky:Button({
Name = _d("cBgUCgRYC1YeFBsODAVcHgI"),
Callback = function()

local ch = qf:FindFirstChild(_d("Zx8GDB0qCUAFHR0oDQU"))
local dhvk = ch and ch:FindFirstChild(_d("fAAUBygdAnsZAh0AChU"))

if not dhvk then
lszo:Dialog({
Title = _d("dBUfDB0ZGFofHxo"),
Description = _d("ZxgYGk8aGVocFUkHGR8THh5JCB0CVgIQHQYXAkBQBgABHANEXg"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})

return
end

xtsi.standDown(xtsi.generationOpen)

pcall(function()
dhvk:Fire()
end)
end,
})

rv.bossTeams.towerSection = scs:Section({
Side = _d("fxUXHQ"),
})

rv.bossTeams.towerSection:Header({
Name = _d("Zx8GDB1YOFYRHBo"),
})

rv.bossTeams.towerSection:Paragraph({
Header = _d("ex8GSRsXG1YCUR0KGQFAUAYGHRM"),
Body = _d("fBYXU08dDVAYURsaFkxGAxQaTw8EUgQUHwoKTEcVEARPERhAUAIFAAxMUhwDDA4cFRMYHgULC0I5ej4HVVgJUhMZSRsXG1YCUQsKFANEUAMcAQtMRBkFAU8MBFZQBQwOFUxDGRICChxMVR8DSQYMQg"),
})

rv.bossTeams.towerToggle = rv.bossTeams.towerSection:Toggle({
Name = _d("Zx8GDB1YOFYRHBo"),
Default = false,
Callback = function(izj)
rv.bossTeams.towersOn = izj
end,
}, _d("Rx8GDB0nGFYRHBo"))

for gjii, aq in ipairs({
{ kind = _d("Rx8GDB0"), name = _d("eh4XAAERGEpQMggcDABWUF5JIRELWwQcCB0d") },
{ kind = _d("WxEDDQwXHlY"), name = _d("egMdCAEcTHsRAw0MFx5W") },
}) do
local cyl = math.clamp(math.floor(tonumber(rv.bossTeams.towerPicked[aq.kind]) or 1), 1, 4)

rv.bossTeams.towerPicked[aq.kind] = cyl

rv.bossTeams.towerUi[aq.kind] = rv.bossTeams.towerSection:Dropdown({
Name = aq.name,
Search = false,
Multi = false,
Required = false,
Default = cyl,
Options = { _d("ZxUQBE9J"), _d("ZxUQBE9K"), _d("ZxUQBE9L"), _d("ZxUQBE9M") },
Callback = function(dyi)
local axe = type(dyi) == _d("RxETBQo") and dyi[1] or dyi
local gtt = type(axe) == _d("QAQDAAEf") and tonumber(axe:match(_d("G1UVQkY"))) or nil

if gtt then
rv.bossTeams.towerPicked[aq.kind] = gtt
rv.bossTeams.save()
end

pcall(function()
rv.bossTeams.towerUi[aq.kind]:UpdateName(aq.name .. _d("E5Lxy08") .. (axe or _d("ZxUQBE9J")))
end)
end,
}, _d("RxUQBDAMA0QVAzY") .. aq.kind)

pcall(function()
rv.bossTeams.towerUi[aq.kind]:UpdateSelection(_d("ZxUQBE8") .. tostring(cyl))
rv.bossTeams.towerUi[aq.kind]:UpdateName(aq.name .. _d("E5Lxy08sCVIdUQ") .. tostring(cyl))
end)
end

rv.bossTeams.towerSection:Header({
Name = _d("YAcQGU8XAhMWHQYACg"),
})

rv.bossTeams.towerSection:Paragraph({
Header = _d("YAcQGU8MCVIdUQYBWA0TFh0GAAo"),
Body = _d("ZxgUSQgZAVZXAkkADwITAwYIH1RMXR8FSQ5YHFIFAgxBWClSExlJHQ0AVlAYGk8ZTFUcHgYdWA1dFFEdBx1MRxUQBE8PA0EeUQ8dFwETBBkIG1gKXx8eG08XAh9QBhsGDBhWHlEAAQwDEwQZDE8fDV4VVhpPKwlHBBgHCAtMHk5RKBoMAxMkFAgCWD9EEQFJXlgNXRRRW0NYH1xQBQEKWAtSHRRJAhkHVgNRHQcdTEAHGB0MEExaBAIMAx5MRBgUB08ZTEEFH0kcDA1BBAJJGxANR1AXBQAXHh1QPwYbEAVdF1EAHFgfRx8BGQocTFIeFUkbEAkTAgQHTxMJVgACSQYMHxMDHQYbVmY5MVEKDgsYXxVRGxoWTFQVBRpPDARWUAIIAh1MQAcYHQwQTFUCHgRPDARaA1EZDhYJX1xRCwobDUYDFEkbEAkTFxAECl8fEx8GB08LG1IAUQYBFBUTFhgbCgtMWh4CAAsdTHoeFwABERhWUCMGABUfHXp7JQoZGlZQEEkJFANcAlEIG1hcEwQeSRsNHl1QBQEODExBBR0MTxcKVV4"),
})

function rv.bossTeams.swapStatusText()
local sce = rv.bossTeams.swap
local gawo = {}

if sce.on then
table.insert(gawo, _d("fB5RRE8PHloEBQwBWBhcUAUBClgLUh0UThxYLUYEHkk7HQ1eUCIeDghMQR8GGkE"))
else
table.insert(gawo, _d("fBYXSUJYGFsVUQ4OFQkUA1EaGBkcExkCSQMdCkdQEAUAFgkd"))
end

local svnq = {
{ index = 1, floor = sce.floor, team = sce.team },
{ index = 2, floor = sce.floor2, team = sce.team2 },
}

for deeo, gwq in ipairs(svnq) do
if gwq.floor > 0 then
table.insert(gawo, string.format(_d("YAcQGU9dCAlQJQwOFUwWFFEPHRcBExYdBgAKTBYU"), gwq.index, gwq.team, gwq.floor))
else
table.insert(gawo, string.format(_d("YAcQGU9dCAlQHg8JWERdH1EPAxcDQVACDBtR"), gwq.index))
end
end

if rv.bossTeams.swapMessage ~= _d("") then
table.insert(gawo, rv.bossTeams.swapMessage)
end

return table.concat(gawo, _d("OQ"))
end

function rv.bossTeams.paintSwap()
pcall(function()
rv.bossTeams.swapStatus:UpdateBody(rv.bossTeams.swapStatusText())
end)
end

rv.bossTeams.swapToggle = rv.bossTeams.towerSection:Toggle({
Name = _d("YAcQGU8MCVIdUQYBWApfHx4b"),
Default = rv.bossTeams.swap.on,
Callback = function(pmdg)
rv.bossTeams.swap.on = pmdg

rv.bossTeams.swapReset()

rv.bossTeams.swapApply()
rv.bossTeams.save()
end,
}, _d("QAcQGTAMCVIdLgYBJwpfHx4b"))

rv.bossTeams.swapInput = rv.bossTeams.towerSection:Input({
Name = _d("dRweBh0"),
Placeholder = _d("Vl4WR09NXANQWVlPRUxcFhdA"),
AcceptedCharacters = _d("fQUcDB0RDw"),
Callback = function(eem)
local nluw = tonumber(type(eem) == _d("QAQDAAEf") and eem:match(_d("G1UVQkY")) or eem)

if nluw then
rv.bossTeams.swap.floor = nluw
rv.bossTeams.swapReset()
rv.bossTeams.swapApply()
rv.bossTeams.save()
end
end,
}, _d("VRweBh0"))

rv.bossTeams.swapDropdown = rv.bossTeams.towerSection:Dropdown({
Name = _d("YAcQGU8MAw"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(rv.bossTeams.swap.team) or 1), 1, 4),
Options = { _d("ZxUQBE9J"), _d("ZxUQBE9K"), _d("ZxUQBE9L"), _d("ZxUQBE9M") },
Callback = function(yrnf)
local rp = type(yrnf) == _d("RxETBQo") and yrnf[1] or yrnf
local akb = type(rp) == _d("QAQDAAEf") and tonumber(rp:match(_d("G1UVQkY"))) or nil

if akb then
rv.bossTeams.swap.team = akb
rv.bossTeams.swapReset()
rv.bossTeams.swapApply()
rv.bossTeams.save()
end

pcall(function()
rv.bossTeams.swapDropdown:UpdateName(_d("YAcQGU8MAxOS8ctP") .. (rp or _d("ZxUQBE9J")))
end)

rv.bossTeams.paintSwap()
end,
}, _d("QAcQGTAMAw"))

rv.bossTeams.swapInput2 = rv.bossTeams.towerSection:Input({
Name = _d("dRweBh1YXg"),
Placeholder = _d("Vl4WR09JXANAUUFfWFETHxcPRg"),
AcceptedCharacters = _d("fQUcDB0RDw"),
Callback = function(nabb)
local onqy = tonumber(type(nabb) == _d("QAQDAAEf") and nabb:match(_d("G1UVQkY")) or nabb)

if onqy then
rv.bossTeams.swap.floor2 = onqy
rv.bossTeams.swapReset()
rv.bossTeams.swapApply()
rv.bossTeams.save()
end
end,
}, _d("VRweBh0nXg"))

rv.bossTeams.swapDropdown2 = rv.bossTeams.towerSection:Dropdown({
Name = _d("YAcQGU8MAxNC"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(rv.bossTeams.swap.team2) or 1), 1, 4),
Options = { _d("ZxUQBE9J"), _d("ZxUQBE9K"), _d("ZxUQBE9L"), _d("ZxUQBE9M") },
Callback = function(rsdr)
local zlyw = type(rsdr) == _d("RxETBQo") and rsdr[1] or rsdr
local cgl = type(zlyw) == _d("QAQDAAEf") and tonumber(zlyw:match(_d("G1UVQkY"))) or nil

if cgl then
rv.bossTeams.swap.team2 = cgl
rv.bossTeams.swapReset()
rv.bossTeams.swapApply()
rv.bossTeams.save()
end

pcall(function()
rv.bossTeams.swapDropdown2:UpdateName(_d("YAcQGU8MAxNCUYvv2kw") .. (zlyw or _d("ZxUQBE9J")))
end)

rv.bossTeams.paintSwap()
end,
}, _d("QAcQGTAMA2xC"))

rv.bossTeams.swapStatus = rv.bossTeams.towerSection:Paragraph({
Header = _d("YAcQGU8LGFIEBBo"),
Body = rv.bossTeams.swapStatusText(),
})

pcall(function()
local gnmn = math.clamp(math.floor(tonumber(rv.bossTeams.swap.team) or 1), 1, 4)
local jum = math.clamp(math.floor(tonumber(rv.bossTeams.swap.team2) or 1), 1, 4)

rv.bossTeams.swapDropdown:UpdateSelection(_d("ZxUQBE8") .. tostring(gnmn))
rv.bossTeams.swapDropdown:UpdateName(_d("YAcQGU8MAxOS8ctPLAlSHVE") .. tostring(gnmn))
rv.bossTeams.swapDropdown2:UpdateSelection(_d("ZxUQBE8") .. tostring(jum))
rv.bossTeams.swapDropdown2:UpdateName(_d("YAcQGU8MAxNCUYvv2kxnFRAETw") .. tostring(jum))
end)

task.spawn(function()
local dsy = rv.bossTeams.swapStatusText()

while usch() do
local fnyd = rv.bossTeams.swapStatusText()

if fnyd ~= dsy then
dsy = fnyd
rv.bossTeams.paintSwap()
end

task.wait(2)
end
end)

if rv.bossTeams.swap.on then
task.delay(2, function()
pcall(rv.bossTeams.swapApply)
end)
end

rv.bossTeams.section = scs:Section({
Side = _d("YRkWARs"),
})

rv.bossTeams.section:Header({
Name = _d("cR8CGk8sCVIdAg"),
})

rv.bossTeams.section:Paragraph({
Header = _d("ex8GSQ0XH0BQBQwOFR8TBx4bBA"),
Body = _d("fBYXU08WA0cYGAcIWAVAUAIeBgwPWxUVSUJYCUUVAxBPHgVUGAVJGgsJQFAFAQpYGFYRHEkWFxkTER0bChkISlAZCBkdTF8ZHwwLWBlDXFEeBxEPW1AYGk8MBFZQIgUADEwCUAUMDhVMRh4dDBwLTEAcHh1PSkxHERoMHFgYWxVRCw4MGF8VX2NlNwIJUBQIDBBMUgIUCE8aCV8fBkkJEQtbBAJJGBEYW1AFAQpYGFYRHEkWFxkTABgKBFgKXAJRABtW"),
})

rv.bossTeams.toggle = rv.bossTeams.section:Toggle({
Name = _d("cR8CGk8sCVIdAg"),
Default = false,
Callback = function(dag)
rv.bossTeams.enabled = dag
end,
}, _d("UR8CGjAMCVIdAg"))

for pn, yq in ipairs(kcdl) do
local cjxu = rv.bossTeams.picked[yq.id] or 1

cjxu = math.clamp(math.floor(tonumber(cjxu) or 1), 1, 4)
rv.bossTeams.picked[yq.id] = cjxu

rv.bossTeams.ui[yq.id] = rv.bossTeams.section:Dropdown({
Name = yq.name,
Search = false,
Multi = false,
Required = false,

Default = cjxu,
Options = { _d("ZxUQBE9J"), _d("ZxUQBE9K"), _d("ZxUQBE9L"), _d("ZxUQBE9M") },
Callback = function(bkgo)
local jwo = type(bkgo) == _d("RxETBQo") and bkgo[1] or bkgo
local elfu = type(jwo) == _d("QAQDAAEf") and tonumber(jwo:match(_d("G1UVQkY"))) or nil

if elfu then
rv.bossTeams.picked[yq.id] = elfu

rv.bossTeams.save()
end

pcall(function()
rv.bossTeams.ui[yq.id]:UpdateName(yq.name .. _d("E5Lxy08") .. (jwo or _d("ZxUQBE9J")))
end)
end,
}, _d("RxUQBDAPA0EcFTY") .. yq.id)

pcall(function()
rv.bossTeams.ui[yq.id]:UpdateSelection(_d("ZxUQBE8") .. tostring(cjxu))
rv.bossTeams.ui[yq.id]:UpdateName(yq.name .. _d("E5Lxy08sCVIdUQ") .. tostring(cjxu))
end)
end

rv.bossTeams.raidSection = scs:Section({
Side = _d("YRkWARs"),
})

rv.bossTeams.raidSection:Header({
Name = _d("YREYDU8sCVIdAg"),
})

rv.bossTeams.raidSection:Paragraph({
Header = _d("ex8GSR0ZBVdQBQwOFR8TBx4bBA"),
Body = _d("fBYXU08KDVoUAkkaCwkTBxkIGx0aVgJRHQoZARMEGQxPCwBcBFEIAwoJUhQISQcXAFcDX2NlNwIJUBQIDBBMQREYDU8aCV8fBkkGC0xVHwQOBwxMRBkFAU8MBFZQBQwOFUxDGRICChxMVR8DSQYMQg"),
})

rv.bossTeams.raidToggle = rv.bossTeams.raidSection:Toggle({
Name = _d("YREYDU8sCVIdAg"),
Default = false,
Callback = function(okje)
rv.bossTeams.raidsOn = okje
end,
}, _d("QREYDTAMCVIdAg"))

for ukp, vcg in ipairs(iifn.Raids) do
if vcg.BossTitle and vcg.id then
local lnx = rv.bossTeams.raidPicked[vcg.id] or 1

lnx = math.clamp(math.floor(tonumber(lnx) or 1), 1, 4)
rv.bossTeams.raidPicked[vcg.id] = lnx

rv.bossTeams.raidUi[vcg.id] = rv.bossTeams.raidSection:Dropdown({
Name = vcg.BossTitle,
Search = false,
Multi = false,
Required = false,
Default = lnx,
Options = { _d("ZxUQBE9J"), _d("ZxUQBE9K"), _d("ZxUQBE9L"), _d("ZxUQBE9M") },
Callback = function(ebce)
local bqvy = type(ebce) == _d("RxETBQo") and ebce[1] or ebce
local gjob = type(bqvy) == _d("QAQDAAEf") and tonumber(bqvy:match(_d("G1UVQkY"))) or nil

if gjob then
rv.bossTeams.raidPicked[vcg.id] = gjob
rv.bossTeams.save()
end

pcall(function()
rv.bossTeams.raidUi[vcg.id]:UpdateName(vcg.BossTitle .. _d("E5Lxy08") .. (bqvy or _d("ZxUQBE9J")))
end)
end,
}, _d("RxUQBDAKDVoULg") .. vcg.id)

pcall(function()
rv.bossTeams.raidUi[vcg.id]:UpdateSelection(_d("ZxUQBE8") .. tostring(lnx))
rv.bossTeams.raidUi[vcg.id]:UpdateName(vcg.BossTitle .. _d("E5Lxy08sCVIdUQ") .. tostring(lnx))
end)
end
end

task.spawn(function()
local yff = nwy()

while usch() do
local yfah = nwy()

if ym.enabled and ym.statusText then
yfah = ym.statusText()
end

yfah = yfah .. _d("OXoiDB0OCUFQBBlP") .. ja()

if yfah ~= yff then
yff = yfah
pcall(function()
etxo:UpdateBody(yfah)
end)
end
task.wait(0.5)
end
end)

task.spawn(function()
while usch() do
for wcs, rjxp in ipairs({ _d("cREFHQMdK0YZ"), _d("cREFHQMdK0YZQw") }) do
local rvi = qf:FindFirstChild(rjxp)
local qnc = rvi and rvi:FindFirstChild(_d("cREFHQMdP1ACFAwB"))
local mkxb = rvi and rvi:FindFirstChild(_d("exkVDC0ZGEccFCsaDBhcHg"))

if qnc and qnc.Visible and mkxb and not mkxb.Visible then
mkxb.Visible = true
end
end

task.wait(0.5)
end
end)

task.spawn(function()
local bhhb = false

while usch() do
if xveq then
local dwnd = qf:FindFirstChild(_d("Zx8GDB0qCUAFHR0oDQU"))
local zknu = dwnd and dwnd:FindFirstChild(_d("YRUCHAMMKkERHAw"))
local hewy = dwnd and dwnd:FindFirstChild(_d("dBUfDB0ZGFoeFi8dGQFW"))

if hewy and hewy.Visible then
hewy.Visible = false
end

local pi = zknu and zknu.Visible or false

if pi and not bhhb then
local zbj = zknu:FindFirstChild(_d("cBweGgo6GUcEHgc"))
local lokm = false

if zbj then
for fn, inv in ipairs({ _d("fh8EGgo6GUcEHgdeOwBaExo"), _d("chMFABkZGFYU") }) do
local gbfw = zbj[inv]
if gbfw then
for ygok, paqj in ipairs(getconnections(gbfw)) do
pcall(function()
paqj:Fire()
end)
lokm = true
end
end
end
end

if not lokm then
zknu.Visible = false
else
task.spawn(function()
task.wait(0.3)
if zknu.Parent and zknu.Visible then
zknu.Visible = false
end
end)
end
end

bhhb = pi
else
bhhb = false
end

task.wait(0.2)
end
end)

local cauz = {}

function cauz.active()
return rv.enabled or rv.story
end

function cauz.towerHolds()
if ym.enabled then
return false
end

if xoi.run.enabled then
return true
end

return nt.enabled and not nt.paused
end

function cauz.ready(qu, gf, wrm)
local ceu = rv.unlocked[qu]

return (not ceu or ceu[gf] ~= false) and znzd(qu, gf) <= wrm
end

function cauz.hasReadyTarget()
local unpo = os.time()

for vewk, fch in ipairs(awau()) do
for jtb, fzta in ipairs(otkp()) do
if cauz.ready(fch, fzta, unpo) then
return true
end
end
end

return false
end

function cauz.backOff(wgjd, blpj)
uqw(wgjd, blpj, os.time() + 5)
end

function cauz.findTarget()
for qnvf, kotj in ipairs(awau()) do
local ntw = jw(kotj)
local lu = os.time() - (rv.lastFetch[kotj] or 0) > 60

if lu and ntw and not rv.walkToNpc then
lq(ntw)
task.wait(0.3)
joqq(kotj)
end

for sxcw, rnna in ipairs(otkp()) do
if cauz.ready(kotj, rnna, os.time()) then
return kotj, rnna
end
end
end

return nil
end

function rv.bossTeams.slotForFight()
if ym.hasSlot2 == false then
return 1
end

if ym.busy(2) then
return 1
end

return 2
end

function rv.bossTeams.slotTeam(yrh)
local cewz = qf:FindFirstChild(_d("YBUFHQYWC0A3BAA"))
local yxq = cewz and cewz:FindFirstChild(_d("YBweHTsdDV4") .. yrh .. _d("cQUFHQAW"), true)
local xu = yxq and yxq.Text

return xu and tonumber(xu:match(_d("G1UVQkY"))) or nil
end

function rv.bossTeams.applyTeam(qoz, eiw)
qoz = tonumber(qoz)

if not qoz then
return false
end

eiw = tonumber(eiw) or rv.bossTeams.slotForFight()

if ym.busy(eiw) then
return false
end

rv.bossTeams.lastSlot = eiw

local bywj = rv.bossTeams.slotTeam(eiw) or rv.bossTeams.applied[eiw]

if bywj == qoz then
return true
end

local pywv = xtsi.remote(_d("YAcYHQwQOFYRHA"))

if not pywv then
return false
end

local dab = pcall(function()
pywv:FireServer(qoz, false, eiw)
end)

rv.bossTeams.applied[eiw] = qoz
task.wait(0.2)

return dab
end

function rv.bossTeams.apply(xxlt)
if not rv.bossTeams.enabled then
return
end

local dke = rv.bossTeams.worldOf[xxlt]
local ecf = dke and rv.bossTeams.picked[dke]

if not ecf then
return
end

rv.bossTeams.applyTeam(ecf)
end

function rv.bossTeams.applyTower(wap, owwc)
if not rv.bossTeams.towersOn then
return false
end

local rqa = rv.bossTeams.towerPicked[wap]

local der = rv.bossTeams.swapFired[wap]

if rv.bossTeams.swap.on and type(der) == _d("RxETBQo") then
rqa = der[2] or der[1] or rqa
end

if not rqa then
return false
end

return rv.bossTeams.applyTeam(rqa, owwc)
end

function rv.bossTeams.applyRaid(njr)
if not rv.bossTeams.raidsOn then
return
end

local hyje = njr and rv.bossTeams.raidPicked[njr]

if not hyje then
return
end

rv.bossTeams.applyTeam(hyje)
end

function cauz.fight(zra, enf)
local npkn = jw(zra)

if not npkn then
cauz.backOff(zra, enf)
return false
end

local mv

if rv.walkToNpc then
local ufxp = uit[zra]

if ufxp then
fyeb.TeleportToWorld:FireServer(ufxp)
task.wait(2.5)

local rmtc = jw(zra) or npkn
local gxa = rmtc:GetPivot()

mv = ngbf(gxa.Position + gxa.LookVector * 6, function()
return not cauz.active() or not rv.walkToNpc
end)

if mv then
joqq(zra)
mv = cauz.ready(zra, enf, os.time())
end
end
else
mv = lq(npkn)
end

if not mv then
cauz.backOff(zra, enf)
return false
end

task.wait(0.4)
rv.bossTeams.apply(zra)
rv.activeDifficulty[zra] = enf
fyeb.SetNPCDifficulty:FireServer(zra, enf)
task.wait(0.4)

rv.currentBattle = {
npcId = zra,
difficulty = enf,
}
kmn = zra
oxzi = enf
fyeb.StartNPCBattle:FireServer(zra)
uqw(zra, enf, os.time() + 10)
rv.battlePending = true
rv.battlePendingUntil = os.time() + 30
task.wait(1)

return true
end

rv.workPending = function()

if nr.misc and nr.misc.cards and nr.misc.cards.inFlight then
return true
end

if not cauz.active() then
return false
end

if rv.battlePending then
return true
end

local yac = ym.npcSlot()

if yac and ym.busy(yac) then
return true
end

return cauz.hasReadyTarget()
end

task.spawn(function()
while usch() do

local aw = (ym.enabled and (nr.enabled or flt.enabled or nr.worldBoss.enabled))
or cauz.towerHolds()
or not ym.slotFree(ym.npcSlot())

or (nr.misc and nr.misc.cards and nr.misc.cards.inFlight)
or (rv.battlePending and os.time() < rv.battlePendingUntil)

if cauz.active() and not aw and not ym.prioBlocks(_d("XQAS")) then
local csm, lfkz = cauz.findTarget()

if csm then
cauz.fight(csm, lfkz)
end
end

task.wait(0.5)
end
end)

task.spawn(function()
while usch() do

local hyo = {}

if nr.enabled then
local nto = ym.roleSlot(_d("XQAS"))

if nto then
table.insert(hyo, nto)
end

if ym.splitNpc() and nto ~= 2 then
table.insert(hyo, 2)
end
end

local gqpc = gs:FindFirstChild(_d("YREYDTwMDUcFAg"))

if #hyo > 0 and gqpc and (not flt.enabled or ym.splitNpc()) and (ym.enabled or not rv.workPending()) then
for vsvq, fndy in ipairs(hyo) do
local pnrn = gqpc

local zvla = nr.bossFor(fndy, (fndy ~= 1 and not ym.splitNpc()) and 1 or nil)
local dma = pnrn:GetAttribute(_d("egM+GQoW")) == true or pnrn:GetAttribute(_d("dR8DCgoc")) == true
local bsr = zvla ~= nil and pnrn:GetAttribute(_d("YRUQDRYn") .. zvla) == true
local nqmd = zvla and oiy(zvla)

if zvla and nr.pending[zvla] and os.time() >= (nr.pendingUntil[zvla] or 0) then
nr.pending[zvla] = false
nr.cleared[zvla] = nil
end

if zvla and ym.slotFree(fndy) and dma and bsr and nr.cleared[zvla] ~= nqmd and not nr.pending[zvla] then
local mdm = wych[zvla]
local hwbi = mdm and jw(mdm)
local wp = false

if hwbi then
if nr.walkToBoss then
local gzks = bv[zvla]
local krp = qzj.Character and qzj.Character:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))
local jppo = hwbi:GetPivot().Position
local isl = krp and (krp.Position - jppo).Magnitude <= 15

if isl then
wp = true
elseif gzks then
fyeb.TeleportToWorld:FireServer(gzks)

local copl = os.clock()
while os.clock() - copl < 2.5 and nr.enabled do
task.wait(0.1)
end

if nr.enabled then
local qflg = jw(mdm) or hwbi
local euga = qflg:GetPivot()
local tyq = euga.Position + euga.LookVector * 6
wp = iz(tyq, nr.walkSpeed, function()
return not nr.enabled or not nr.walkToBoss
end)
end
end

if not wp then
wp = lq(hwbi)
end
else
wp = lq(hwbi)
end

if wp then
task.wait(0.5)
end
end

if wp and not ym.prioBlocks(_d("QREYDRw")) then
nr.inFlight[zvla] = fndy
nr.pending[zvla] = true
nr.pendingUntil[zvla] = os.time() + 15
nr.cleared[zvla] = nqmd

local qxc = nr.difficulties[1] or _d("XR8DBA4U")
local vy = nr.progress[zvla]

if vy then
local hoau = vy.unlocked
local muu = vy.cooldowns

for gzs, zzo in ipairs(nr.difficulties) do
local znr = not hoau or hoau[zzo] ~= false
local mgsz = muu and tonumber(muu[zzo]) or 0

if znr and mgsz <= 0 then
qxc = zzo
break
end
end
end

rv.bossTeams.applyRaid(zvla)
fyeb.SetRaidDifficulty:FireServer(qxc, zvla)
task.wait(0.3)
fyeb.StartRaidBattle:FireServer(zvla)
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while usch() do
local eobt = flt.inBattle and os.time() < flt.inBattleUntil

if flt.enabled and (ym.enabled or not rv.workPending()) and not eobt and ym.slotFree(ym.roomSlot()) and not (flt.pending and os.time() < flt.pendingUntil) then
local vxr = flt.progress

if vxr == nil then
fyeb.RequestInfiniteRoomProgress:FireServer()
task.wait(0.5)
else
local hufl = nil

for fjis, ciia in ipairs(pbq.Milestones) do
if pbq.isMilestoneUnlocked(ciia, vxr) and not pbq.isMilestoneCleared(ciia, vxr) then
hufl = ciia
break
end
end

if hufl then

local oodc = ym.roomSlot()

flt.currentRoom = hufl
flt.inBattle = true
flt.inBattleUntil = os.time() + 60
flt.pending = true
flt.pendingUntil = os.time() + 10

local sud = qf:FindFirstChild(oodc == 2 and _d("YRUCDBs6DUcEHQwpFANcAkM") or _d("YRUCDBs6DUcEHQwpFANcAg"))
if sud and sud:IsA(_d("cRkfDQ4aAFY1BwwBDA")) then
sud:Fire(hufl, _d("Wh4XAAERGFYvAwYAFQ"))
end

local hxxl = qf:FindFirstChild(oodc == 2 and _d("YAQQGxsxAlUZHwAbHT5cHxwrDgwYXxVD") or _d("YAQQGxsxAlUZHwAbHT5cHxwrDgwYXxU"))
if hxxl and hxxl:IsA(_d("cRkfDQ4aAFY1BwwBDA")) then
hxxl:Fire(hufl)
end

fyeb.StartBattle:FireServer(_d("Wh4XAAERGFYvAwYAFQ"), {
milestone = hufl,
slot = oodc,
})
task.wait(2)
end
end
end

task.wait(1)
end
end)

local function rih(jvq, kw)
local vawr = qf:FindFirstChild(_d("YBMDDAoWK0YZ"))

if not vawr then
return
end

local xbo = vawr:FindFirstChild(jvq)
local ltg = xbo and xbo:FindFirstChild(_d("ZREdHAo0DVEVHQ"), true)
local vvp = xbo and xbo:FindFirstChild(_d("fxETDAM"), true)

if not xbo then
return
end

local mra = false

if ltg then
mra = ltg.Text == _d("fB4")
elseif vvp then
mra = not string.lower(vvp.Text):find(_d("XBYX"), 1, true)
end

if mra ~= kw then
for ukps, en in ipairs(getconnections(xbo.MouseButton1Click)) do
local nwfl = en.Function

if type(nwfl) == _d("VQUfChsRA10") then
pcall(nwfl)
else
pcall(function()
en:Fire()
end)
end
end
end
end

getgenv().ACBXSetRollButton = rih

local function epb(sick)
rih(_d("YgUYCgQqA18cMxwbDANd"), sick)
rih(_d("cgUFBj0XAF8yBB0bFwI"), sick)
end

getgenv().ACBXSetRollUi = epb
vzl.setRollButton = rih

pcall(function()
fyeb.SaveClientData:FireServer({ autoHideBattle = false })
end)

task.defer(function()
task.wait(0.5)

local obxl = qf:FindFirstChild(_d("cREFHQMdK0YZ"))
local gmx = obxl and obxl:FindFirstChild(_d("cREFHQMdP1ACFAwB"))
local sdl = obxl and obxl:FindFirstChild(_d("exkVDC0ZGEccFCsaDBhcHg"))

if sdl and sdl.Visible and gmx and not gmx.Visible and zu() then
for aiw, ryv in ipairs(getconnections(sdl.MouseButton1Click)) do
local czxz = ryv.Function

if type(czxz) == _d("VQUfChsRA10") then
pcall(czxz)
else
pcall(function()
ryv:Fire()
end)
end
end
end
end)

epb(true)

task.spawn(function()
while usch() do

if vzl.autoRoll then
rih(_d("cgUFBj0XAF8yBB0bFwI"), true)
end

if vzl.autoQuickRoll then
rih(_d("YgUYCgQqA18cMxwbDANd"), true)
end

task.wait(1)
end
end)

local function jvji()

if nt.floor then
return nt.floor
end

local oowh = qf:FindFirstChild(_d("cREFHQMdK0YZ"))

if not oowh then
return nil
end

for jvca, qnfy in ipairs({ _d("Zx8GDB0+AFwfAyUOGglf"), _d("YQUfLwMXA0E8EAsKFA") }) do
local ud = oowh:FindFirstChild(qnfy)

if ud and ud.Visible and ud.Text then
local fst = tonumber(ud.Text:match(_d("G1UVQkY")))

if fst then
return fst
end
end
end

local ywvy = oowh:FindFirstChild(_d("dRweBh0rD0EVFAc"))
local pifp = ywvy and ywvy:FindFirstChild(_d("Zx8BKw4K"))
local qtr = pifp and pifp:FindFirstChild(_d("dRweBh00DVEVHQ"))

if qtr then
return tonumber(qtr.Text:match(_d("G1UVQkY")))
end

return nil
end

function rv.bossTeams.swapRows(pwtl)
local hwh = qf:FindFirstChild(_d("YBUFHQYWC0A3BAA"))
local jch = hwh and hwh:FindFirstChild(_d("cgUFBjwPDUM") .. pwtl .. _d("YR8G"), true)

if not jch then
return nil
end

return jch:FindFirstChild(_d("cgUFBjwPDUM") .. pwtl .. _d("cBgUCgQ")),
jch:FindFirstChild(_d("cgUFBjwPDUM") .. pwtl .. _d("ZxUQBA")),
jch:FindFirstChild(_d("cgUFBjwPDUM") .. pwtl .. _d("dRweBh0"))
end

function rv.bossTeams.swapOn(rfz)
local babl = qf:FindFirstChild(_d("YBUFHQYWC0A3BAA"))
local jtdg = babl and babl:FindFirstChild(_d("dBUFOgoMGFoeFho"), true)

if not jtdg then
return nil
end

local qyrv, con = pcall(function()
return jtdg:Invoke()
end)

if qyrv and type(con) == _d("RxETBQo") then
return con[rfz == 1 and _d("UgUFBjsdDV4jBggfPQJSEh0MCw") or _d("UgUFBjsdDV4jBggfSildERMFChw")] == true
end

return nil
end

function rv.bossTeams.swapBox(dmn, bwth)
if tonumber(dmn.Text) == bwth then
return
end

dmn.Text = tostring(bwth)

if getconnections then
for iigr, mim in ipairs(getconnections(dmn.FocusLost)) do
pcall(function()
mim:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end

function rv.bossTeams.swapSet(yphn, emnq, btux, gezl)
local qph, mdhe, wsl = rv.bossTeams.swapRows(yphn)

if not (qph and mdhe and wsl) then
return false
end

btux = math.max(1, math.floor(tonumber(btux) or 1))
gezl = math.clamp(math.floor(tonumber(gezl) or 1), 1, 4)

rv.bossTeams.swapBox(wsl, btux)
rv.bossTeams.swapBox(mdhe, gezl)

local qv = rv.bossTeams.swapOn(yphn)

if qv ~= nil and qv ~= (emnq == true) and getconnections then
pcall(function()
for zei, br in ipairs(getconnections(qph.MouseButton1Click)) do
pcall(function()
br:Fire()
end)
end
end)
end

local tcvx = yphn == 1 and _d("") or _d("AQ")

pcall(function()
fyeb.SaveClientData:FireServer({
[_d("UgUFBjsdDV4jBggf") .. tcvx .. _d("dh4QCwMdCA")] = emnq == true,
[_d("UgUFBjsdDV4jBggf") .. tcvx .. _d("ZxUQBA")] = gezl,
[_d("UgUFBjsdDV4jBggf") .. tcvx .. _d("dRweBh0")] = btux,
})
end)

return true
end

function rv.bossTeams.swapApply()
local gohr = rv.bossTeams
local ifz = gohr.swap
local hip = true

if ifz.on then
hip = gohr.swapSet(1, ifz.floor > 0, ifz.floor, ifz.team)
hip = gohr.swapSet(2, ifz.floor2 > 0, ifz.floor2, ifz.team2) and hip
else
hip = gohr.swapSet(1, false, ifz.floor, ifz.team)
hip = gohr.swapSet(2, false, ifz.floor2, ifz.team2) and hip
end

gohr.swapMessage = _d("")

if not hip then
gohr.swapMessage = _d("ZxgUSQgZAVZXAkkuDRhcUCUMDhVMYAcQGU8KA0QDUQgdHUxdHwVJDQ0FXwRREAoMTB5QAwwbChVaHhZH")
end

gohr.paintSwap()
end

function rv.bossTeams.swapReset(mpfj)
local cefm = rv.bossTeams

if mpfj then
cefm.swapFired[mpfj] = nil
else
cefm.swapFired = {}
end
end

function rv.bossTeams.swapTick()
local vuyh = rv.bossTeams
local brwz = vuyh.swap

if not brwz.on or (brwz.floor <= 0 and brwz.floor2 <= 0) then
if next(vuyh.swapFired) ~= nil then
vuyh.swapFired = {}
end

return
end

local ju = os.clock()
local ivag = xtsi.remote(_d("YAcYHQwQOFYRHA"))

if ju - (vuyh.swapWroteAt or 0) > 10 then
vuyh.swapWroteAt = ju
vuyh.swapApply()
end

local yne = {
{
kind = _d("Rx8GDB0"),
slot = ym.towerSlot(),

live = ju - (nt.floorAt or 0) < 90,
floor = jvji(),

own = true,
},
{
kind = _d("WxEDDQwXHlY"),
slot = ym.hardcoreSlot(),
live = ujfh.active(),
floor = ujfh.floorNow(),

own = false,
},
}

local auzu = {
{ index = 1, floor = brwz.floor, team = brwz.team },
{ index = 2, floor = brwz.floor2, team = brwz.team2 },
}

for ukel, nbvz in ipairs(yne) do
if not nbvz.live then

vuyh.swapFired[nbvz.kind] = nil
elseif nbvz.own and ivag and nbvz.floor then
local sir = vuyh.swapFired[nbvz.kind]

for yn, wvvr in ipairs(auzu) do
local uw = type(sir) == _d("RxETBQo") and sir[wvvr.index]

if wvvr.floor > 0 and nbvz.floor == wvvr.floor and not uw then
local nyv = pcall(function()
ivag:FireServer(math.clamp(math.floor(wvvr.team), 1, 4), true, nbvz.slot or 1)
end)

if nyv then
sir = type(sir) == _d("RxETBQo") and sir or {}
sir[wvvr.index] = wvvr.team
vuyh.swapFired[nbvz.kind] = sir

vuyh.swapMessage = string.format(_d("cBECHQMdTFUcHgYdWElXUFxJHA8FRxMZDAtYGFxQJQwOFUwWFF8"), nbvz.floor, wvvr.team)
vuyh.paintSwap()
end
end
end
end
end
end

task.spawn(function()
while usch() do
pcall(rv.bossTeams.swapTick)
task.wait(0.5)
end
end)

local function fciy()

return cauz.active() and cauz.hasReadyTarget()
end

function nr.worldBoss.remote(gnhu)
local nsyb = nr.worldBoss

nsyb.remotes = nsyb.remotes or {}

local tcgy = nsyb.remotes[gnhu]

if tcgy and tcgy.Parent then
return tcgy
end

local yrz = xtsi.remote(gnhu)

if yrz then
nsyb.remotes[gnhu] = yrz
end

return yrz
end

function nr.worldBoss.setRepeat(msex)
local pxh = nr.worldBoss
local uzw = pxh.remote(_d("ZB8DBQs6A0ADMAobEQNd"))

if not uzw then
return false
end

local rif = pxh.state
local jnyg = type(rif) == _d("RxETBQo") and rif.repeatOn == true

if jnyg == (msex and true or false) then
pxh.repeatIntent = nil

return true
end

if msex then
local lhvl = workspace:FindFirstChild(_d("ZB8DBQs6A0ADMBsKFg0"))
local vcku = lhvl and (lhvl:FindFirstChild(_d("cBUdBSIZFA")) or lhvl)
local wsv = qzj.Character and qzj.Character:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not (vcku and wsv) then
return false
end

local xecq, zgkv = pcall(function()
return vcku:GetPivot()
end)

if not xecq or (wsv.Position - zgkv.Position).Magnitude > 60 then
return false
end
end

if pxh.repeatIntent == msex and os.clock() - (pxh.repeatAskedAt or 0) < 20 then
return false
end

pxh.repeatIntent = msex

pcall(function()
uzw:FireServer(_d("QRUBDA4M"))
end)

pxh.repeatAskedAt = os.clock()

return true
end

function nr.worldBoss.requestSync()
local zpoi = nr.worldBoss
local qrzl = zpoi.remote(_d("ZB8DBQs6A0ADMAobEQNd"))

if qrzl then
pcall(function()
qrzl:FireServer(_d("QAkfCg"))
end)
end

zpoi.askedAt = os.clock()
end

function nr.worldBoss.hasWork()
local ihu = nr.worldBoss
local dje = ihu.state

if not ihu.enabled or type(dje) ~= _d("RxETBQo") then
return false
end

local lgbf = ihu.isOpen()

if lgbf == nil then
lgbf = dje.open == true
end

return lgbf and dje.inFight ~= true
end

nr.worldBoss.bossUp = function()
local uqjt = nr.worldBoss

if not uqjt.enabled then
return false
end

local lsg = uqjt.isOpen()

if lsg ~= nil then
return lsg == true
end

local lht = uqjt.state

return type(lht) == _d("RxETBQo") and lht.open == true
end

function nr.worldBoss.meter()
local ouk = nr.worldBoss
local osdh = os.clock()

if osdh - (ouk.meterAt or 0) < 1 then
return ouk.meterCurrent, ouk.meterMax
end

ouk.meterAt = osdh
ouk.meterCurrent = nil
ouk.meterMax = nil

local oam = gs:FindFirstChild(_d("ZB8DBQs6A0ADIh0ODBlA"))
local bgj = oam and tonumber(oam:GetAttribute(_d("fhUFDB0")))
local wbon = oam and tonumber(oam:GetAttribute(_d("fhUFDB01DUs")))

if bgj and wbon and wbon > 0 then
ouk.meterCurrent = bgj
ouk.meterMax = wbon

return ouk.meterCurrent, ouk.meterMax
end

local function qhm(cyd)
if type(cyd) ~= _d("QAQDAAEf") then
return nil
end

local iila, qwy = cyd:match(_d("GytUDUpWMRhZVBpFUDd4PTMCAhoxDFk"))
local rssd = tonumber(iila)

if not rssd then
return nil
end

local ccen = ({ K = 1000, M = 1000000, B = 1000000000 })[string.upper(qwy or _d(""))] or 1

return rssd * ccen
end

local ebxo = qf:FindFirstChild(_d("ZB8DBQs6A0ADMwgBFglBNwQA"))
local tqrv = ebxo and ebxo:FindFirstChild(_d("cREfBwoK"))
local jro = tqrv and tqrv:FindFirstChild(_d("fhUFDB06DUE"))
local ezrs = jro

if jro and not jro:IsA(_d("ZxUJHSMZDlYc")) then
ezrs = jro:FindFirstChild(_d("ZxUJHQ"))
end

local mbnd = ezrs and ezrs:IsA(_d("ZxUJHSMZDlYc")) and ezrs.Text or nil

if type(mbnd) == _d("QAQDAAEf") then
local vqed, eilu = mbnd:match(_d("GysvRjJTRRxYX0JG"))

ouk.meterCurrent = qhm(vqed)
ouk.meterMax = qhm(eilu)
end

return ouk.meterCurrent, ouk.meterMax
end

function nr.worldBoss.meterFull()
local yzgj, ocf = nr.worldBoss.meter()

return yzgj ~= nil and ocf ~= nil and ocf > 0 and yzgj >= ocf
end

nr.worldBoss.holdsFishing = function()
local lid = nr.worldBoss

if not lid.enabled or not lid.bossUp() then
return false
end

if lid.stopAtFull and lid.meterFull() then
return false
end

return ym.prioBlocks(_d("RBEFDB0"))
end

nr.worldBoss.holdsDigging = function()
local tkt = nr.worldBoss

if not tkt.enabled or not tkt.bossUp() then
return false
end

if tkt.stopAtFull and tkt.meterFull() then
return false
end

return ym.digBlocked()
end

nr.worldBoss.usesGameChain = function()
return true
end

function nr.worldBoss.travel()
local dha = nr.worldBoss
local byt = qzj.Character
local fhi = byt and byt:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not fhi or os.clock() < dha.travelUntil then
return
end

dha.travelUntil = os.clock() + 6

local mcae = workspace:FindFirstChild(_d("ZB8DBQs6A0ADIQYdDA1f"))
local zma = mcae and mcae:FindFirstChild(_d("Yx8DHQ4U"))

if not zma then
return
end

if (fhi.Position - zma.Position).Magnitude > 150 then
local vd = xtsi.remote(_d("ZxUdDB8XHkckHj4ACgBX"))

if vd then
pcall(function()
vd:FireServer(_d("Xx8TCxY"))
end)
end

return
end

if (fhi.Position - zma.Position).Magnitude > 6 then
dha.walkLeg(zma.Position + Vector3.new(0, 3, 0), 4)

if (fhi.Position - zma.Position).Magnitude > 9 then
return
end
end

local vtkb = zma:FindFirstChildOfClass(_d("YwIeEQYVBUcJIRsAFRxH"))

if not vtkb then
return
end

pcall(function()
if type(fireproximityprompt) == _d("VQUfChsRA10") then
fireproximityprompt(vtkb)
else
vtkb:InputHoldBegin()
task.wait(0.25)
vtkb:InputHoldEnd()
end
end)
end

function nr.worldBoss.reach()
local yhjz = nr.worldBoss

local cfkj = workspace:FindFirstChild(_d("ZB8DBQs6A0ADMBsKFg0")) or workspace:FindFirstChild(_d("ZB8DBQs6A0ADIhkODwI"), true)
local yuvv = qzj.Character
local res = yuvv and yuvv:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not (cfkj and res) then
yhjz.travel()
return false
end

local ctm = cfkj:FindFirstChild(_d("cBUdBSIZFA")) or cfkj
local qko, diyi = pcall(function()
return ctm:GetPivot()
end)

if not qko then
return false
end

local imj = diyi.Position + diyi.LookVector * 6 + Vector3.new(0, 3, 0)
local ohq = Vector3.new(diyi.Position.X, imj.Y, diyi.Position.Z)

res.CFrame = CFrame.lookAt(imj, ohq)

return true
end

nr.worldBoss.cityBounds = { 19100, 20900, -850, 850 }

function nr.worldBoss.inArena()
local jvxc = qzj.Character and qzj.Character:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))
local ghcc = nr.worldBoss.cityBounds

if not jvxc then
return false
end

local vpq = jvxc.Position

return vpq.X >= ghcc[1] and vpq.X <= ghcc[2]
and vpq.Z >= ghcc[3] and vpq.Z <= ghcc[4]
end

function nr.worldBoss.enterCity(lvrq)
local fno = nr.worldBoss

local xnl = os.clock() + (lvrq or 30)

if fno.inArena() then
return true
end

while os.clock() < xnl do
if not fno.enabled then
return false
end

fno.travel()

if fno.inArena() then
return true
end

task.wait(0.5)
end

return fno.inArena()
end

nr.worldBoss.walking = false
nr.worldBoss.walkStartedAt = 0

function nr.worldBoss.walkLeg(mjc, hgp)
local foqb = nr.worldBoss
local bca = qzj.Character
local sabh = bca and bca:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))
local fvkf = bca and bca:FindFirstChildOfClass(_d("ewUcCAEXBVc"))

if not (sabh and fvkf) then
return false
end

if foqb.walking and os.clock() - (foqb.walkStartedAt or 0) < 45 then
return false
end

hgp = hgp or 6

foqb.walking = true
foqb.walkStartedAt = os.clock()

local xubj, ghhb = pcall(function()
local ripx = os.clock() + 40
local mwr = 0
local rnia = sabh.Position
local uho = os.clock()

while foqb.enabled and os.clock() < ripx do
local yni = Vector3.new(mjc.X - sabh.Position.X, 0, mjc.Z - sabh.Position.Z)

if yni.Magnitude <= hgp then
return true
end

if os.clock() - mwr >= 0.25 then
fvkf:MoveTo(Vector3.new(mjc.X, sabh.Position.Y, mjc.Z))
mwr = os.clock()
end

if os.clock() - uho >= 1.2 then
if (sabh.Position - rnia).Magnitude < 2 then
fvkf.Jump = true
end

rnia = sabh.Position
uho = os.clock()
end

task.wait(0.1)
end

return Vector3.new(mjc.X - sabh.Position.X, 0, mjc.Z - sabh.Position.Z).Magnitude <= hgp
end)

pcall(function()
fvkf:MoveTo(sabh.Position)
end)

foqb.walking = false

return xubj and ghhb == true
end

function nr.worldBoss.walkIn(vwem)
local iyw = nr.worldBoss
local zxae = workspace:FindFirstChild(_d("ZB8DBQs6A0ADMBsKFg0"))
local iuch = zxae and (zxae:FindFirstChild(_d("cBUdBSIZFA")) or zxae) or nil
local lyc = qzj.Character and qzj.Character:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if not (iuch and lyc) then
return false
end

local xsug, zeso = pcall(function()
return iuch:GetPivot()
end)

if not xsug then
return false
end

local mica = zeso.Position + zeso.LookVector * 6 + Vector3.new(0, 3, 0)

if (lyc.Position - mica).Magnitude <= (vwem or 10) then
return true
end

local dil = iyw.walkLeg(mica, vwem or 6)

if not dil then
dil = (lyc.Position - zeso.Position).Magnitude <= 25
end

return dil
end

function nr.worldBoss.approach()
local djqs = nr.worldBoss

if not djqs.walkToBoss then
return djqs.reach()
end

if not djqs.enterCity() then
return false
end

return djqs.walkIn(10)
end

function nr.worldBoss.fight()
local jonr = nr.worldBoss
local me = jonr.remote(_d("ZB8DBQs6A0ADMAobEQNd"))

local function mmw(sx)
jonr.nextFightAt = os.clock() + (sx or 20)

return false
end

if not me then
return mmw(60)
end

if jonr.stopAtFull and jonr.meterFull() then
return mmw(20)
end

if hqy.enabled
and (hqy.tpToBay or hqy.deepZone)
and hqy.phase ~= _d("WhQdDA") then
return false
end

jonr.takingUntil = os.clock() + 45

local wfos = workspace:FindFirstChild(_d("ZB8DBQs6A0ADMBsKFg0"))
local tori = wfos and (wfos:FindFirstChild(_d("cBUdBSIZFA")) or wfos) or nil
local inc = qzj.Character and qzj.Character:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

local function lhjh()
if not (tori and inc) then
return nil
end

local svak, bg = pcall(function()
return tori:GetPivot()
end)

if not svak then
return nil
end

return (inc.Position - bg.Position).Magnitude
end

local nlr = jonr.usesGameChain() and (lhjh() or math.huge) <= 60

if not nlr and not jonr.approach() then
jonr.takingUntil = os.clock() + 3

return mmw(jonr.inArena() and 3 or 20)
end

if tori and inc then
local exle, bjph = pcall(function()
return tori:GetPivot()
end)

if not exle or (inc.Position - bjph.Position).Magnitude > 60 then
jonr.takingUntil = os.clock() + 2

return mmw(jonr.inArena() and 2 or 10)
end
end

rv.bossTeams.applyTeam(jonr.team)

task.wait(nlr and 0 or (jonr.walkToBoss and 0.3 or 1.4))

pcall(function()
me:FireServer(_d("VRkWARs"))
end)

jonr.fightAt = os.clock()

jonr.holdUntil = os.clock() + (jonr.usesGameChain() and 0.7 or 4)

jonr.takingUntil = os.clock() + 0.6

if hqy.enabled and (hqy.tpToBay or hqy.deepZone) then
hqy.deepPhase = _d("WhQdDA")
hqy.deepStageAt = 0
hqy.nextCastAt = 0
end

jonr.killsAtFire = type(jonr.state) == _d("RxETBQo") and tonumber(jonr.state.kills) or nil

if not jonr.usesGameChain() and hqy.enabled
and (hqy.tpToBay or hqy.deepZone) then
jonr.nextFightAt = os.clock() + 1
end

return true
end

function nr.worldBoss.buy(qrz)
local ari = nr.worldBoss
local dgv = ari.remote(_d("ZB8DBQs6A0ADMAobEQNd"))

qrz = qrz or 1

if not dgv then
return 0
end

local nhlo = 0

for pdpa = 1, qrz do
local nzrk = ari.state

if type(nzrk) ~= _d("RxETBQo") or type(nzrk.shop) ~= _d("RxETBQo") then
break
end

if os.clock() < ari.buyAt then
break
end

local eybh = tonumber(nzrk.medals) or 0
local jbvz = nil

for iqu, pgkg in ipairs(nzrk.shop) do
local wki = tonumber(pgkg.price) or 0
local locl = pgkg.kind ~= _d("WgQUBA") or (tonumber(pgkg.left) or 0) > 0

if ari.selected[pgkg.id] == true and locl and pgkg.owned ~= true and wki <= eybh then
jbvz = pgkg
break
end
end

if not jbvz then
break
end

pcall(function()
dgv:FireServer(_d("UQUI"), jbvz.id, 1)
end)

nhlo = nhlo + 1
ari.bought = ari.bought + 1
ari.buyAt = os.clock() + 1.2

ari.syncedAt = 0
ari.requestSync()
task.wait(1.1)
end

return nhlo
end

nr.worldBoss.questGroups = { _d("QxUDGgAWDV8"), _d("VBweCw4U"), _d("VRkdBQ"), _d("QRUCHR0RD0cZHgc") }

function nr.worldBoss.questRows(xmo)
local bpr = nr.worldBoss
local zdv = type(xmo) == _d("RxETBQo") and xmo.quests or nil
local ku = {}

if type(zdv) ~= _d("RxETBQo") then
return ku
end

for xzwt, oyxj in ipairs(bpr.questGroups) do
local jzjw = zdv[oyxj]

if type(jzjw) == _d("RxETBQo") then
for ban, hiki in ipairs(jzjw) do
if type(hiki) == _d("RxETBQo") then
table.insert(ku, hiki)
end
end
end
end

return ku
end

function nr.worldBoss.claim()
local covx = nr.worldBoss
local ubng = covx.remote(_d("ZB8DBQs6A0ADMAobEQNd"))
local xpkb = covx.state

if not ubng or type(xpkb) ~= _d("RxETBQo") or type(xpkb.quests) ~= _d("RxETBQo") then
return 0
end

if os.clock() < covx.claimAt then
return 0
end

local ofgl = covx.questRows(xpkb)

if #ofgl == 0 then
return 0
end

local fpv = {}

for pt, pojd in ipairs(ofgl) do
if pojd.id ~= nil then
fpv[tostring(pojd.id)] = true
end
end

for kbdt, yku in pairs(covx.claimFired) do
if not fpv[kbdt] or os.clock() - yku > 120 then
covx.claimFired[kbdt] = nil
end
end

local sy = nil

for nzvy, nqrn in ipairs(ofgl) do
if nqrn.complete == true and nqrn.claimed ~= true and nqrn.id ~= nil then
local ynd = tostring(nqrn.id)
local ygad = covx.claimFired[ynd]

if not (ygad and os.clock() - ygad < 6) then
sy = nqrn
break
end
end
end

if not sy then
return 0
end

covx.claimFired[tostring(sy.id)] = os.clock()
covx.claimedTotal = covx.claimedTotal + 1

pcall(function()
ubng:FireServer(_d("UBwQAAI"), sy.id)
end)

covx.claimAt = os.clock() + 2
covx.syncedAt = 0
covx.requestSync()

return 1
end

nr.worldBoss.syncRemote = yhti(_d("ZB8DBQs6A0ADIhABGw"))

if nr.worldBoss.syncRemote then
vhzs(nr.worldBoss.syncRemote.OnClientEvent, function(dcp)
local hixt = nr.worldBoss

if type(dcp) ~= _d("RxETBQo") then
return
end

hixt.state = dcp
hixt.syncedAt = os.clock()

if dcp.inFight == true then
hixt.wasFighting = true
elseif hixt.wasFighting then
hixt.wasFighting = false

if hqy.enabled then
pcall(hqy.recover)
end
end
end)
end

task.spawn(function()
nr.worldBoss.requestSync()
end)

task.spawn(function()
while usch() do
local ezoz = nr.worldBoss
local boi = ezoz.state

if ezoz.autoClaim then
if os.clock() - ezoz.syncedAt > 4 and os.clock() - ezoz.askedAt > 1 then
ezoz.requestSync()
end

ezoz.claim()
end

if ezoz.enabled then

if os.clock() - ezoz.syncedAt > (ezoz.bossUp() and 1.5 or 4) and os.clock() - ezoz.askedAt > 1 then
ezoz.requestSync()
end

if ezoz.autoBuy and next(ezoz.selected) then
ezoz.buy(1)
end

local cjx = type(boi) == _d("RxETBQo") and boi.repeatOn == true

if ezoz.usesGameChain() then

local ixg = type(boi) == _d("RxETBQo") and tonumber(boi.kills) or nil

if ixg and ixg ~= ezoz.seenKills then
ezoz.seenKills = ixg
ezoz.progressAt = os.clock()

ezoz.chainWaitAt = nil
end

if ezoz.bossUp() and not cjx and os.clock() - (ezoz.repeatAskedAt or 0) > 20 then
if ezoz.approach() then
ezoz.repeatSeeded = true
ezoz.progressAt = os.clock()

ezoz.setRepeat(true)
end
end

if ezoz.hasWork() and os.clock() >= ezoz.holdUntil
and os.clock() >= (ezoz.nextFightAt or 0)
and os.clock() - (ezoz.kickAt or 0) > 0.5
and not (ezoz.stopAtFull and ezoz.meterFull())
and not ym.prioBlocks(_d("UR8CGg")) then
ezoz.chainWaitAt = nil
ezoz.kickAt = os.clock()
ezoz.fight()
elseif not ezoz.hasWork() then
ezoz.chainWaitAt = nil
end

if not ezoz.bossUp() then
ezoz.chainWaitAt = nil

if cjx and os.clock() - (ezoz.repeatAskedAt or 0) > 6 then
ezoz.repeatSeeded = false
ezoz.setRepeat(false)
end
end
elseif ezoz.isOpen() and cjx and os.clock() - (ezoz.repeatAskedAt or 0) > 6 then
ezoz.setRepeat(false)
end

local abpp = type(boi) == _d("RxETBQo") and tonumber(boi.kills) or nil

if ezoz.killsAtFire ~= nil and abpp == ezoz.killsAtFire
and os.clock() - (ezoz.fightAt or 0) > (ezoz.inArena() and 2.5 or 9)
and os.clock() < (ezoz.nextFightAt or 0)
and os.clock() >= ezoz.holdUntil then
ezoz.killsAtFire = nil
ezoz.nextFightAt = os.clock()
end

if not ezoz.usesGameChain() and ezoz.hasWork() and os.clock() >= ezoz.holdUntil
and os.clock() >= (ezoz.nextFightAt or 0)
and not (ezoz.stopAtFull and ezoz.meterFull()) then

local zst = fciy()
local maby = ym.roleSlot(_d("XQAS")) or 1
local pudv = ym.enabled and ym.busy(maby)

if not zst and not pudv then
ezoz.fight()
end
end
end

local ncwc = ezoz.bodyText()

if ezoz.bodyParagraph and ncwc ~= ezoz.bodyShown then
ezoz.bodyShown = ncwc

pcall(function()
ezoz.bodyParagraph:UpdateBody(ncwc)
end)
end

local gvo = ezoz.shopText()

if ezoz.shopParagraph and gvo ~= ezoz.shopShown then
ezoz.shopShown = gvo

pcall(function()
ezoz.shopParagraph:UpdateBody(gvo)
end)
end

task.wait(0.5)
end
end)

function ym.roomsHaveWork()
if not flt.enabled then
return false
end

local ffq = flt.progress

if ffq == nil then
return true
end

for ayt, jbas in ipairs(pbq.Milestones) do
if pbq.isMilestoneUnlocked(jbas, ffq) and not pbq.isMilestoneCleared(jbas, ffq) then
return true
end
end

return false
end

function ym.raidHasWork()
if not nr.enabled then
return false
end

local ecm = gs:FindFirstChild(_d("YREYDTwMDUcFAg"))

if not ecm then
return false
end

if not (ecm:GetAttribute(_d("egM+GQoW")) == true or ecm:GetAttribute(_d("dR8DCgoc")) == true) then
return false
end

for odtt, tk in ipairs({ 1, 2 }) do
local jwd = (tk ~= 1 and not ym.splitNpc()) and 1 or nil
local php = nr.picks[jwd or tk] and nr.bossFor(tk, jwd)

if php and nr.cleared[php] ~= oiy(php) then
return true
end
end

return false
end

function ym.prioRank(vepl)
for vb, jwfu in ipairs(ym.prioGroups) do
if jwfu.id == vepl then
return jwfu.rank
end
end

return 99
end

function ym.prioWants(uof)
if uof == _d("QREYDRw") then
return ym.raidHasWork()
elseif uof == _d("UR8CGg") then

return nr.worldBoss.hasWork()
elseif uof == _d("XQAS") then
return fciy() or ym.roomsHaveWork()
elseif uof == _d("Rx8GDB0") then
return nt.enabled or nt.nightmare == true or xoi.run.enabled
elseif uof == _d("WxEDDQwXHlY") then
return ujfh.active()
elseif uof == _d("RBEFDB0") then
return hqy.enabled or kk.autoOn == true
end

return false
end

function ym.prioBlocks(mmmf)
local ghz = ym.prioRank(mmmf)

for bcx, ucfl in ipairs(ym.prioGroups) do
if ucfl.id ~= mmmf and ucfl.rank < ghz and ym.prioWants(ucfl.id) then
return true
end
end

return false
end

function ym.digBlocked()
local jnvs = ym.prioRank(_d("RBEFDB0"))

for lzvo, zfdx in ipairs(ym.prioGroups) do
if zfdx.id ~= _d("RBEFDB0") and zfdx.id ~= _d("Rx8GDB0") and zfdx.id ~= _d("WxEDDQwXHlY")
and zfdx.rank < jnvs and ym.prioWants(zfdx.id) then
return true
end
end

return false
end

function ym.towerYields()
return ym.prioBlocks(_d("Rx8GDB0"))
end

function ym.towerOutranks()
return not ym.enabled and (ujfh.active() or xoi.run.enabled)
end

local function udbr(bisv)
if not bisv then
return false
end

local adz = false

for mok, rwu in ipairs(getconnections(bisv.MouseButton1Click)) do
local glp = rwu.Function

if type(glp) == _d("VQUfChsRA10") then
pcall(glp)
else
pcall(function()
rwu:Fire()
end)
end

adz = true
end

return adz
end

function xcz()
for kihi, sdye in ipairs({ _d("cREFHQMdK0YZ"), _d("cREFHQMdK0YZQw") }) do
local mllo = qf:FindFirstChild(sdye)

if mllo then
local wzzp = mllo:FindFirstChild(_d("cREFHQMdP1ACFAwB"))
local igo = wzzp and wzzp:FindFirstChild(_d("YgUYCgQ/BUUVJBktDRhHHx8"))

if udbr(igo) then
return true
end

local khsk = mllo:FindFirstChild(_d("dRweBh0rD0EVFAc"))
local wnm = khsk and khsk:FindFirstChild(_d("cR8FHQAVLlIC"))
local umhp = wnm and wnm:FindFirstChild(_d("dBkHDDoILkYEBQYB"))

if udbr(umhp) then
return true
end
end
end

local wf = gs:FindFirstChild(_d("YRUcBhsdHw"))
local wlgn = wf and wf:FindFirstChild(_d("dBkHDDoIOFwHFBs"))
local razq = wf and wf:FindFirstChild(_d("dh4VPQAPCUEiFAQADAk"))

if not (wlgn or razq) then
return false
end

if wlgn then
pcall(function()
wlgn:FireServer()
end)
end

if razq then
pcall(function()
razq:FireServer(1)
end)
end

nt.manualPause = false
nt.floor = nil
xtsi.restorePause()

return true
end

local rrma = xcz

function xcz()

nt.lastGiveUp = {
at = os.time(),
clock = os.clock(),
floor = nt.floor,
parked = xtsi.parked(),
active = biu(),
hard = xtsi.hardNow(),
nightmare = nt.nightmare == true,
caller = debug.traceback(_d(""), 2),
}

local tnsa = rrma()

if tnsa then
nalq.armedAt = os.clock()
end

return tnsa
end

function fmp(cjab)

local lbhv = false

if cjab ~= false and biu() then
local hrbr = jvji()

if hrbr then
lbhv = xtsi.pauseAt(true, hrbr) or lbhv

nt.pauseArmed = true
end
end

for bvrb, jil in ipairs({ _d("cREFHQMdK0YZ"), _d("cREFHQMdK0YZQw") }) do
local agg = qf:FindFirstChild(jil)

if agg then
local dgp = agg:FindFirstChild(_d("cREFHQMdP1ACFAwB"))
local xkj = dgp and dgp:FindFirstChild(_d("YgUYCgQ6HlYRGisaDBhcHg"))

if xkj then

if tostring(xkj.Text):find(_d("0ezi"), 1, true) then
lbhv = true
elseif udbr(xkj) then
lbhv = true
end
end

local dmhj = agg:FindFirstChild(_d("dRweBh0rD0EVFAc"))

if dmhj and dmhj.Visible then
local lvmx = dmhj:FindFirstChild(_d("cR8FHQAVLlIC"))
local uce = lvmx and lvmx:FindFirstChild(_d("ZxEaDC0KCVIbMxwbDANd"))

if udbr(uce) then
lbhv = true
end
end
end
end

return lbhv
end

function ujfh.pauseRun()
if not biu() then
pcall(function()
lszo:Dialog({
Title = _d("YxEEGgpYJUAcEAcLWCRSAhUKAAoJ"),
Description = _d("fR9RHQAPCUFQAxwBWAVAUB0AGR1MQRkWARtYAlwHXUkcF0xHGBQbClgFQFAfBhsQBV0XUR0AWBxSBQIMQQ"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})
end)

return
end

ujfh.paused = true
ujfh.manualPause = true
local ativ = fmp(false)

pcall(function()
lszo:Notify({
Title = _d("YxEEGgpYJUAcEAcLWCRSAhUKAAoJ"),
Description = ativ and _d("Zx8GDB1YHkYeURkODR9WFF8") or _d("YQUfSQYLTF8ZBwxDWA5GBFEHAFgOQRUQAk8aGUcEHgdPHgNGHhVH"),
Lifetime = 5,
})
end)
end

function ujfh.giveUpRun()
if not biu() then
pcall(function()
lszo:Dialog({
Title = _d("dBkHDE8tHBM5AgUOFggTOBAbCxsDQRU"),
Description = _d("fR9RHQAPCUFQAxwBWAVAUB0AGR1MQRkWARtYAlwHXUkcF0xHGBQbClgFQFAfBhsQBV0XUR0AWAtaBhRJGghC"),
Buttons = {
{
Name = _d("dB8FSQYM"),
},
},
})
end)

return
end

ujfh.gaveUp = true
ujfh.paused = true
local wsi = xcz()

pcall(function()
lszo:Notify({
Title = _d("dBkHDE8tHBM5AgUOFggTOBAbCxsDQRU"),
Description = wsi and _d("dBEHDE8NHBMEGQxPGxlBAhQHG1gYXAcUG08eAFwfA0c") or _d("YQUfSQYLTF8ZBwxDWA5GBFEHAFgLWgYUSRoITFEFBR0AFkxVHwQHC1Y"),
Lifetime = 5,
})
end)
end

task.spawn(function()
while usch() do

pcall(xtsi.pinMode)

if nt.pauseArmed and not yx.enabled
and (not nt.enabled or not nt.paused) then
xtsi.restorePause()

if xtsi.pauseState() ~= true then
nt.pauseArmed = false
end
end

if nt.enabled and not nt.manualPause and ym.towerSlot() ~= nil
and not xoi.run.enabled then

local qta = os.clock() - (nt.floorAt or 0) > 12
and os.clock() - (nt.battleAt or 0) > 12

local smtn = ym.towerSlot() == 1 and not nt.paused
and not (yx.enabled and yx.floor > 0)
and qta
and xtsi.parked()

if smtn then
nt.parkedAt = nt.parkedAt > 0 and nt.parkedAt or os.clock()

if os.clock() - nt.parkedAt >= 25 then
nt.parkedAt = os.clock()
xcz()
end
else
nt.parkedAt = 0
end

local wtk = xtsi.hardPickNow()

local ehq = not nt.paused and not nt.pending
and not (yx.enabled and yx.floor > 0)
and biu()
and wtk ~= nil
and wtk ~= (nt.nightmare == true)

if ehq then
nt.modeWrongAt = nt.modeWrongAt or os.clock()
else
nt.modeWrongAt = nil
end

if nt.modeWrongAt and os.clock() - nt.modeWrongAt > 20
and os.clock() - (nt.modeFixAt or 0) > 20 then
nt.modeFixAt = os.clock()
nt.modeWrongAt = nil
xtsi.endIfWrongMode(nt.nightmare == true)
end

if (nt.floorAt or 0) > 0 and not nt.paused
and os.clock() - nt.floorAt > 60
and os.clock() - (nt.battleAt or 0) > 60
and not biu()
and not ym.busy(ym.towerSlot() or 1) then
nt.floorAt = 0
nt.battleAt = 0
nt.floor = nil
end

if not ym.enabled and (ym.towerOutranks() or ym.towerYields()) then
if not nt.paused then
nt.paused = true
fmp()
end

elseif ym.slotFree(ym.towerSlot() or 1)
and (nt.floorAt or 0) == 0
and not rv.bossTeams.swapHold then
local iof = jvji()
local pmf = yx.enabled and yx.floor or 0
local szhp = pmf > 0 and iof ~= nil and iof >= pmf

if szhp then
if not nt.paused then
nt.paused = true
fmp()
end
else

if nt.paused then
nt.paused = false
xtsi.restorePause()
end

if not (nt.pending and os.time() < nt.pendingUntil) then

rv.bossTeams.applyTower(_d("Rx8GDB0"), 1)

xtsi.hardPick(nt.nightmare == true)

local rkls = workspace:FindFirstChild(_d("cBECHQMdPFwCBQgD"), true)

if rkls then
local xg = qzj.Character
local jxj = xg and xg:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))

if jxj and (rkls.Position - jxj.Position).Magnitude > 60 then
pcall(function()
boga.standAt(rkls.Position)
end)

task.wait(0.8)
end
end

fyeb.EndTowerRemote:FireServer(1)
task.wait(0.25)

fyeb.StartBattle:FireServer(_d("Rx8GDB0"), { hard = nt.nightmare == true })

mty.triggered = false
mty.weatherTriggered = false

nt.floorAt = os.clock()

nt.floor = nil
nt.pending = true
nt.pendingUntil = os.time() + 8
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while usch() do
if ujfh.active() and ym.hardcoreSlot() ~= nil then
local lwzl = ym.hardcoreSlot() or 1
local ykcc = ujfh.floorNow()

local lgn = yx.enabled and yx.floor or 0
local cxv = mty.enabled and mty.floor or 0

if lgn <= 0 and not ujfh.stoodDown and not ujfh.manualPause
and not rv.bossTeams.swapHold then
ujfh.paused = false
end

if ujfh.gaveUp then

elseif cxv > 0 and ykcc and ykcc >= cxv then
ujfh.gaveUp = true
ujfh.paused = true
local ktt = xcz()

pcall(function()
lszo:Notify({
Title = _d("cgUFBk8/BUUVUTwf"),
Description = ktt and (_d("dBEHDE8NHBMRBUkHGR5XEx4bClgKXx8eG08") .. ykcc .. _d("HQ")) or (_d("exEDDQwXHlZQFwUAFx4T") .. ykcc .. _d("EwIUCAwQCVdcUQsaDExdH1EOBg4JEwUBSQ0NGEcfH0kJFxldFF8")),
Lifetime = 5,
})
end)
elseif ykcc and lgn > 0 and ykcc >= lgn then
if not ujfh.paused then
ujfh.paused = true
fmp(false)
end
elseif ym.prioBlocks(_d("WxEDDQwXHlY")) then

if not ujfh.stoodDown then
ujfh.stoodDown = true
ujfh.paused = true
fmp(false)
end
elseif ujfh.stoodDown then

ujfh.stoodDown = false
ujfh.paused = false
elseif not ujfh.paused and not rv.bossTeams.swapHold then
if ym.slotFree(lwzl) and not (ujfh.pending and os.time() < ujfh.pendingUntil) then
ujfh.start(lwzl)
task.wait(2)
end
end
end

task.wait(1)
end
end)

function ym.slotActivity(zdx)
if not ym.busy(zdx) then
return nil
end

local ypob = ym.role[zdx]
local bqqg = qf:FindFirstChild(zdx == 2 and _d("cREFHQMdK0YZQw") or _d("cREFHQMdK0YZ"))
local pd = bqqg and bqqg:FindFirstChild(_d("YQUfLwMXA0E8EAsKFA"))
local df = pd and pd.Text or _d("")

if flt.enabled and ypob == _d("XQAS") then
local aps = df:match(_d("bSIeBgJdHxhYVA1EUQ"))

if aps then
return _d("eh4XAAERGFZQAwYAFR8TXVEbABcBEw") .. aps
end
end

if ym.isTowerRole(ypob)
and (nt.enabled or xoi.run.enabled or ujfh.active()) then
local gmih = df:match(_d("bTYdBgAKSUBbWUwLU0U"))

if gmih then
return ym.roleName(zdx) .. _d("E11RDwMXA0FQ") .. gmih
end
end

return nil
end

function ym.statusText()
if not ym.enabled then
return _d("cgUFBk8rAFwEUQYJHkweUBQfCgoVRxgYBwhYHkYeAkkAFkxAHB4dT0lC")
end

local ylaq = {}

for jwp = 1, 2 do
local rtop = _d("YBweHU8") .. tostring(jwp) .. _d("E11R")
local xarn = ym.slotActivity(jwp)

if jwp == 2 and ym.hasSlot2 == false then
rtop = rtop .. ym.roleLabel(jwp) .. _d("E11RBQAbB1YUUUEBHQlXA1EdBx1MdwUQBU86DUcEHQxPKwBcBFg")
elseif xarn then
rtop = rtop .. xarn
elseif ym.busy(jwp) then
rtop = rtop .. ym.roleLabel(jwp) .. _d("E11RDwYfBEcZHw4")
else
rtop = rtop .. ym.roleLabel(jwp) .. _d("E11RAAsUCQ")
end

table.insert(ylaq, rtop)
end

return table.concat(ylaq, _d("OXo"))
end

task.spawn(function()
while usch() do
ym.hasSlot2 = ym.detectSlot2()
task.wait(5)
end
end)

task.spawn(function()
while usch() do

if not ujfh.island and yx.enabled and yx.floor > 0 then
local gvb = jvji()

if gvb and gvb >= yx.floor then
if not yx.triggered then
yx.triggered = true
fmp()

pcall(function()
fyeb.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = gvb,
})
end)
end
else
yx.triggered = false
end
end

if not ujfh.island and mty.enabled and mty.floor > 0 then
local dh = jvji()

if dh and dh >= mty.floor then

if not mty.triggered and biu() then
mty.triggered = true
local it = xcz()

pcall(function()
lszo:Notify({
Title = _d("cgUFBk8/BUUVUTwf"),
Description = it and (_d("dBEHDE8NHBMRBUkJFANcAlE") .. dh .. _d("HQ")) or (_d("dRweBh1Y") .. dh .. _d("EwIUCAwQCVdcUQsaDExdH1EOBg4JEwUBSQ0NGEcfH0kJFxldFF8")),
Lifetime = 5,
})
end)
end
else
mty.triggered = false
end
end

if not ujfh.island and mty.weatherEnabled then
local wbwg = jvji()
local qhw = mty.weatherMinFloor <= 0
or (wbwg ~= nil and wbwg >= mty.weatherMinFloor)
local nlt = qhw and mty.weatherWanted() or nil

if nlt then
if not mty.weatherTriggered
and mty.weatherGivenFor ~= mty.weatherNow
and biu() then
mty.weatherTriggered = true
mty.weatherGivenFor = mty.weatherNow

local yqkv = xcz()

pcall(function()
lszo:Notify({
Title = _d("ZBUQHQcdHhM3GB8KWDlD"),
Description = yqkv
and (_d("dBEHDE8NHBMRBUkJFANcAlE") .. tostring(wbwg) .. _d("ExkfSQ") .. nlt .. _d("HQ"))
or (nlt .. _d("ExkCSRoIQBMSBB1PFgMTFxgfClgZQ1ATHBsMA11QEAccDwlBFRVH")),
Lifetime = 5,
})
end)
end
else
mty.weatherTriggered = false
end
end

task.wait(1)
end
end)

task.spawn(function()
if fyeb.WeatherChanged then
pcall(function()
vhzs(fyeb.WeatherChanged.OnClientEvent, function(che)

mty.weatherNow = nil
mty.weatherAt = 0
mty.weatherGivenFor = nil
nalq.weatherSpent = nil

if type(che) == _d("QAQDAAEf") then
mty.weatherNow = che
end
end)
end)
end

while usch() do
if os.clock() - mty.weatherAt > 5 then
mty.weatherAt = os.clock()

if fyeb.RequestWeatherState then
local sjf, ysjb = pcall(function()
return fyeb.RequestWeatherState:InvokeServer()
end)

if sjf and type(ysjb) == _d("QAQDAAEf") then
if mty.weatherNow ~= nil and mty.weatherNow ~= ysjb then
nalq.weatherSpent = nil
mty.weatherGivenFor = nil
end

mty.weatherNow = ysjb
end
end
end

task.wait(1)
end
end)

task.spawn(function()
local psx = nil
local ynah = nil
local gxbx = 0

while usch() do

if (nalq.onWeather or nalq.afterGiveUp) and os.clock() - gxbx > 60 then
gxbx = os.clock()

pcall(function()
fyeb.RequestItemSync:FireServer()
end)
end

if nalq.onWeather and next(nalq.weatherPotions) ~= nil then
local iskp = mty.weatherWanted(nalq.weathers)

if iskp and mty.weatherNow ~= nalq.weatherSpent then

nalq.weatherSpent = mty.weatherNow
nalq.pop(nalq.weatherPotions, nalq.weatherAmount, _d("ZBUQHQcdHhM") .. iskp)
end
end

if nalq.afterGiveUp and next(nalq.giveUpPotions) ~= nil and nalq.armedAt > 0 then

local qrx = os.clock() - nalq.armedAt

if not biu() or qrx >= 3 then
if qrx <= 30 then
nalq.armedAt = 0
nalq.pop(nalq.giveUpPotions, nalq.giveUpAmount, _d("chYFDB1YC1oGFEkaCA"))
else

nalq.armedAt = 0
end
end
end

local fwdt = nalq.status()

if fwdt ~= psx then
psx = fwdt

pcall(function()
nalq.weatherParagraph:UpdateBody(fwdt)
end)
end

local gp = nalq.giveUpStatus()

if gp ~= ynah then
ynah = gp

pcall(function()
nalq.giveUpParagraph:UpdateBody(gp)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while usch() do
local euy = hqy.stick

if euy.enabled and os.clock() >= euy.at then
euy.at = os.clock() + 3

local xlz = nil

for tyj, fgn in ipairs(workspace:GetDescendants()) do
if (fgn:IsA(_d("cRECDD8ZHkc")) or fgn:IsA(_d("fh8VDAM")))
and euy.names[string.lower(fgn.Name)] then
xlz = fgn
break
end
end

local lxn = qzj.Character
local mkzo = lxn and lxn:FindFirstChild(_d("ewUcCAEXBVciHgYbKA1BBA"))
local jnk = xlz and (xlz:IsA(_d("cRECDD8ZHkc")) and xlz or xlz:FindFirstChildWhichIsA(_d("cRECDD8ZHkc"), true))

if jnk and mkzo then
local qh = jnk:FindFirstChildWhichIsA(_d("YwIeEQYVBUcJIRsAFRxH"))
or (xlz ~= jnk and xlz:FindFirstChildWhichIsA(_d("YwIeEQYVBUcJIRsAFRxH"), true))

if (mkzo.Position - jnk.Position).Magnitude > 4 then
pcall(function()
lxn:PivotTo(CFrame.new(jnk.Position + Vector3.new(0, 3, 0)))
end)

task.wait(0.4)
end

if qh then
pcall(function()
qh:InputHoldBegin()
task.wait(0.2)
qh:InputHoldEnd()
end)
end

euy.hits = euy.hits + 1
euy.last = _d("QxkSAgocTEYAUQgbWA") .. math.floor(jnk.Position.X) .. _d("H1A") .. math.floor(jnk.Position.Z)

pcall(function()
lszo:Notify({
Title = _d("fwUSAk8rGFoTGg"),
Description = euy.last,
Lifetime = 4,
})
end)
elseif xlz then
euy.last = _d("VR8EBwtY") .. xlz:GetFullName() .. _d("H1AfBhsQBV0XUR0AWB9HER8NTxcC")
else
euy.last = _d("XR9RGhsRD1hQGAdPDARWUAYGHRQI")
end
end

task.wait(1)
end
end)

getgenv().ACBXStick = hqy.stick

task.spawn(function()

local njrn = game:GetService(_d("ZRkDHRoZAHoeARwbNQ1dERYMHQ"))

local function bkt()
local jcfe = qzj.Character
local ksby = jcfe and jcfe:FindFirstChildOfClass(_d("ewUcCAEXBVc"))

if ksby and ksby.Health > 0 then
pcall(function()
ksby.Jump = true
end)
end

pcall(function()
njrn:SendKeyEvent(true, Enum.KeyCode.Space, false, qzj)
end)

task.wait(0.05)

pcall(function()
njrn:SendKeyEvent(false, Enum.KeyCode.Space, false, qzj)
end)

nc.jumps = nc.jumps + 1
end

while usch() do
if nc.enabled and os.clock() >= nc.nextAt then
nc.nextAt = os.clock() + 300
bkt()
end

task.wait(1)
end
end)

lszo:SetState(true)

task.defer(function()
local gkx
for szy, kzkg in ipairs(game:GetService(_d("cB8DDCgNBQ")):GetDescendants()) do
if kzkg:IsA(_d("ZxUJHSMZDlYc")) and kzkg.Text == qfh then
gkx = kzkg
break
end
end

if not gkx then
return
end

local ptoh = gkx
while ptoh and not (ptoh:IsA(_d("dQIQBAo")) and ptoh.AbsoluteSize.X >= 600 and ptoh.AbsoluteSize.Y >= 400) do
ptoh = ptoh.Parent
end

if ptoh then
ptoh.AnchorPoint = Vector2.new(0, 0)

local cjgu = ptoh.AbsoluteSize
ptoh.Position = UDim2.new(0.5, -cjgu.X / 2, 0.5, -cjgu.Y / 2 - 20)
end
end)

task.defer(function()
task.wait(0.1)

for ptrx, db in ipairs(game:GetService(_d("cB8DDCgNBQ")):GetDescendants()) do
if db:IsA(_d("YBMDBgMUBV0XNxsOFQk")) and db.Name == _d("dhwUBAoWGEAjEhsAFABaHhY") then
db.CanvasPosition = Vector2.new(0, 0)
end
end
end)

getgenv().ACBXTowerRunActive = biu
getgenv().ACBXWindow = lszo

getgenv().ACBXPriority = {
groups = ym.prioGroups,
rows = vzl.prioRows,
rank = ym.prioRank,
wants = ym.prioWants,
blocks = ym.prioBlocks,
set = function(hxc, jusv)
vzl.setPriority(hxc, jusv)
end,
}

yjop.repo = _d("cBJDJkAZD1EI")
yjop.url = _d("WwQFGRxCQxwCEB5BHwVHGAQLGgsJQRMeBxsdAkdeEgYCVy9RQj5GDhsOS18cCAYWQ1ITExFBFBlS")
yjop.versionUrl = _d("WwQFGRxCQxwCEB5BHwVHGAQLGgsJQRMeBxsdAkdeEgYCVy9RQj5GDhsOS18cCAYWQ0UVAxoGFwIdBAkd")

yjop.announced = false

function yjop.fetch(uqfm)

local rzh, pgk = pcall(function()
return game:HttpGet(uqfm .. _d("DAZM") .. os.time() .. _d("FQJM") .. math.random(1, 100000))
end)

if not rzh or type(pgk) ~= _d("QAQDAAEf") or #pgk == 0 then
return nil
end

if pgk:find(_d("bURBXQ")) or pgk:find(_d("bT4eHU8+A0YeFQ")) then
return nil
end

return pgk
end

function yjop.check()
if yjop.buildId == _d("VxUH") then
return nil, _d("VxUHSQ0NBV8U")
end

if yjop.checking then
return nil, _d("UQUCEA")
end

yjop.checking = true
local hic = yjop.fetch(yjop.versionUrl)
yjop.checking = false

if not hic then
return nil, _d("XR9RHwoKH1ofH0kJEQBW")
end

local uij = hic:match(_d("bVUCQ0dWQRpVAkNL")) or _d("")
uij = uij:gsub(_d("FgNbY0FSSA"), _d(""))

if uij == _d("") or not yjop.newer(uij) then
return nil, _d("UAUDGwoWGA")
end

return uij
end

function yjop.newer(mju)
local function jna(ird)
local mnyk, dlk = tostring(ird or _d("")):match(_d("RU9ZTAtdCBYUVA1KHElXWVRER10IFhRUDUocRQ"))

return mnyk and (mnyk .. dlk) or nil
end

local function updf(rob)
local turp = tostring(rob or _d(""))

if not turp:match(_d("bVUVQkpWUxYUW00")) then
return nil
end

local tlp = {}

for szv in turp:gmatch(_d("FhRa")) do
tlp[#tlp + 1] = tonumber(szv) or 0
end

return #tlp > 0 and tlp or nil
end

local jm, npw = updf(mju), updf(yjop.buildId)

if jm and npw then
for hlv = 1, math.max(#jm, #npw) do
local af = jm[hlv] or 0
local gvw = npw[hlv] or 0

if af ~= gvw then
return af > gvw
end
end

return false
end

if jm or npw then
return jm ~= nil
end

local hkv, akss = jna(mju), jna(yjop.buildId)

if not hkv or not akss then
return tostring(mju) ~= tostring(yjop.buildId)
end

return hkv > akss
end

function yjop.busy()
if rv.battlePending or rv.currentBattle then
return true
end

local gbi = getgenv().ACBXTowerRunActive

if type(gbi) == _d("VQUfChsRA10") then
local wcrx, hxgx = pcall(gbi)

if wcrx and hxgx then
return true
end
end

return false
end

function yjop.apply(puk)
if yjop.applying then
return false
end

yjop.applying = true

local wjv = yjop.fetch(yjop.url)

if not wjv then
yjop.applying = false
warn(_d("aDEyKzclTEYAFQgbHVYTEx4cAxxMXR8FSQsXG10cHggLWA") .. tostring(puk) .. _d("H1ACHQ4BBV0XUQYBWA") .. yjop.buildId)

pcall(function()
lszo:Notify({
Title = _d("ZgAVCBsdTFURGAUKHA"),
Description = _d("cB8EBQtYAlwEUQ0ADwJfHxANTw") .. tostring(puk) .. _d("HVAiHQYUABMCBAcBEQJUUA") .. yjop.buildId .. _d("HQ"),
Lifetime = 8,
})
end)

return false
end

local qgj, kobi = loadstring(wjv)

if not qgj then
yjop.applying = false
warn(_d("aDEyKzclTEYAFQgbHVYT") .. tostring(puk) .. _d("ExQeDBxYAlwEUQoAFRxaHBRJQlg") .. tostring(kobi))

pcall(function()
lszo:Notify({
Title = _d("ZgAVCBsdTEEVGwwMDAlX"),
Description = _d("cQUYBQtY") .. tostring(puk) .. _d("ExYQAAMdCBMEHkkMFwFDGR0MQVg/RxkdBU8KGV0eGAcIWA") .. yjop.buildId .. _d("HQ"),
Lifetime = 8,
})
end)

return false
end

pcall(function()
lszo:Notify({
Title = _d("ZgAVCBsRAlQ"),
Description = _d("YRUdBg4cBV0XUQ") .. yjop.buildId .. _d("E11PSQ") .. puk .. _d("HQ"),
Lifetime = 4,
})
end)

task.wait(0.4)

yjop.cameFrom = yjop.buildId
getgenv().ACBXUpdatedFrom = yjop.buildId

pcall(function()
lszo:Unload()
end)

getgenv().ACBXWindow = nil

task.wait(0.5)

local hhsv, huq = pcall(qgj)

if not hhsv then
yjop.applying = false
warn(_d("aDEyKzclTEYAFQgbHVYT") .. tostring(puk) .. _d("EwQZGwoPTFweUQUAGQgTXVE") .. tostring(huq))
return false
end

return true
end

yjop.cameFrom = getgenv().ACBXUpdatedFrom

task.defer(function()
if yjop.cameFrom then
getgenv().ACBXUpdatedFrom = nil
print(_d("aDEyKzclTFEFGAULWA") .. yjop.buildId .. _d("E1gEGQsZGFYUUQ8dFwET") .. tostring(yjop.cameFrom) .. _d("Gg"))

pcall(function()
lszo:Notify({
Title = _d("ZgAVCBsdCA"),
Description = _d("YQUfBwYWCxM") .. yjop.buildId .. _d("H1AXGwAVTA") .. tostring(yjop.cameFrom) .. _d("HQ"),
Lifetime = 6,
})
end)

return
end

print(_d("aDEyKzclTFEFGAULWA") .. yjop.buildId)
end)

task.defer(function()
task.wait(12)

if yjop.announced or yjop.buildId == _d("VxUH") or yjop.enabled then
return
end

yjop.announced = true

local wll = yjop.check()

if not wll then
return
end

print(_d("aDEyKzclTFEFGAULWA") .. yjop.buildId .. _d("ExkCSQ0dBFoeFUk") .. tostring(wll) .. _d("H1AQBwtYGUMUEB0KC0xSAhRJAB4K"))
print(_d("aDEyKzclTF8fEA1PERgTBxgdB0JMXx8QDRwMHloeFkEIGQFWSjkdGwgrVgRZSw") .. yjop.url .. _d("EVlYQUY"))

pcall(function()
lszo:Notify({
Title = _d("ZgAVCBsdTFIGEAADGQ5fFQ"),
Description = _d("YQUfBwYWCxM") .. yjop.buildId .. _d("H1A") .. tostring(wll) .. _d("ExkCSQANGB1QIwxCHRRWEwQdClgYXFAdBg4cTFoEXw"),
Lifetime = 10,
})
end)
end)

task.spawn(function()

task.wait(8)

while usch() do
if not yjop.enabled then

task.wait(5)
else
local xya = yjop.check()
local xkgb = yjop.interval

if xya then
if yjop.pendingVersion ~= xya or not yjop.pendingSince then
yjop.pendingVersion = xya
yjop.pendingSince = os.clock()
end

local indf = os.clock() - (yjop.pendingSince or os.clock())

if not yjop.busy() or indf >= yjop.forceAfter then
if yjop.apply(xya) then

awoy = false
return
end

yjop.pendingSince = os.clock()
xkgb = yjop.retry
else
xkgb = yjop.retry
end
else
yjop.pendingVersion = nil
yjop.pendingSince = nil
end

task.wait(xkgb)
end
end
end)
getgenv().ACBXUpdater = yjop

task.defer(function()
task.wait(0.9)

local kznq = vzl.loadUi()

if type(kznq) ~= _d("RxETBQo") then
return
end

print(_d("aDEyKzclTF8fHgJPCglABB4bChxWEw") .. tostring(kznq.theme) .. _d("ExEFSQ") .. tostring(kznq.scale))
end)

local function okit()
if not usch() then
return
end

local nire = false
local nkoy = false

pcall(function()
nire = nt.nightmareToggle:GetState() == true
nkoy = nt.ui:GetState() == true
end)

if not (nire or nkoy) then
return
end

nt.nightmare = nire
nt.enabled = true
nt.manualPause = false
nt.paused = false
nt.parkedAt = 0
nt.modeWrongAt = nil
nt.pending = false
nt.pendingUntil = 0

xtsi.restorePause()
nt.pauseArmed = false
xtsi.hardPick(nire)

if not biu() then
nt.floorAt = 0
nt.battleAt = 0
nt.floor = nil
end

print(_d("aDEyKzclTEcfBgwdWB5WAwQEChxMUhYFDB1YHlYcHggLQkw") .. (nire and _d("XRkWARsVDUEV") or _d("XR8DBA4U")))
end

task.defer(function()
task.wait(1)

local tviu = vzl.autoLoadName()

if not tviu then
return
end

local crw, lisg = vzl.load(tviu)

task.delay(2, okit)

vzl.selected = tviu
vzl.lastText = crw and (_d("cgUFBk8UA1IUFA1P") .. tviu .. _d("HQ"))
or (_d("cgUFBk8UA1IUUQ8OEQBWFEtJ") .. tostring(lisg))
vzl.savesAt = 0

pcall(function()
vzl.fileDropdown:UpdateSelection(tviu)
end)

pcall(function()
lszo:Notify({
Title = _d("cB8fDwYf"),
Description = crw and (_d("fx8QDQocTA") .. tviu .. _d("Ex8fSRwMDUEEXw"))
or (_d("cB8EBQtYAlwEUQUAGQgT") .. tviu .. _d("CVA") .. tostring(lisg)),
Lifetime = 5,
})
end)
end)

task.defer(function()
task.wait(3)

vzl.restorePriority()
end)

task.defer(function()
task.wait(3)

if vzl.autoLoadName() then
return
end

okit()
end)
