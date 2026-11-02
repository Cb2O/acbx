local _d = (function()
local A = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local M = {}
local cache = {}
for i = 1, #A do
M[string.sub(A, i, i)] = i - 1
end
local K = string.char(100, 109, 52, 111, 119, 121, 55)
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

local aqo = "ACB Rebirth v0.9993"

local function ayg(jf)
for htb, pm in ipairs(jf:GetDescendants()) do
if pm:IsA(_d("MAhMGzsYVQEB")) and pm.Text == aqo then
local niu = pm
while niu and not niu:IsA(_d("Nw5GChIXcBEE")) do
niu = niu.Parent
end
return niu
end
end
end

local function evzf()
local vz = game:GetService(_d("NAFVFhILRA")).LocalPlayer

for xx, syl in ipairs({
(gethui and gethui() or game:GetService(_d("JwJGCjAMXg"))),
game:GetService(_d("JwJGCjAMXg")),
vz and vz:FindFirstChild(_d("NAFVFhILcBEE")),
}) do
for zz, dysq in ipairs(syl:GetChildren()) do

if dysq:IsA(_d("Nw5GChIXcBEE")) then
local gjc = dysq:FindFirstChild(_d("JgxHCg"))

if gjc and gjc:FindFirstChild(_d("NwRQChUYRQ")) and gjc:FindFirstChild(_d("JwJaGxIXQw")) then
return dysq
end
end
end
end
end

if evzf() and getgenv().ACBXAllowReload ~= true then
local wkgl = getgenv().ACBXWindow
local yqca = false
local vvyr = false

if wkgl and wkgl.Dialog then
pcall(function()
if wkgl.GetState and wkgl:GetState() == false then
wkgl:SetState(true)
end

wkgl:Dialog({
Title = _d("JS52TyUcVQ0fQAdXEEREDFgdEhhTHU1GGhkXXgoK"),
Description = _d("JU1XAAcAFw0eFA4bC1IFCU1PGxZWAAhQTx4XFxAFXRxXClIXHl0AGVcXNghEAxYaUkQEQE8AEEMMTUAHHgoXCwNRUFctXwFNRhoZF14KChQMGAlORB5AAAcKFwIERhwDVRcXAhQAGRVORAJaClccQQEfFAsFEEEBHhQbHxwXBQ5XAAIXQ0o"),
Buttons = {
{
Name = _d("NghEAxYaUg"),
Callback = function()
vvyr = true
yqca = true
end,
},
{
Name = _d("LwhRHw"),
Callback = function()
yqca = true
end,
},
},
})
end)
else

vvyr = true
yqca = true
end

local tun = os.clock() + 90

while not yqca and os.clock() < tun do
task.wait(0.25)
end

if not vvyr then
warn(_d("Pyx3LS8kFwgCVQtXC1ICGEcKE1kaRBlcClcaWBQUFBsfGENEBEdPBQxZCgRaCFcKQwUUR0FXOlsNDl9PJRxHCAxXClcNWEQeQw4HWV4QQRQABVlCFwgUOhkVWAUJFBwUC14UGRQGGVleEB4UPBINQw0DUxxXDVYGQw"))

return
end

warn(_d("Pyx3LS8kFxYIRAMWGl4KChQbHxwXFhhaAR4XUEQOWx8OWUANGVxPAxFeF01bARJX"))
end

getgenv().ACBXAllowReload = nil

local ffh = getgenv().ACBXWindow
if ffh then
pcall(function()
ffh:Unload()
end)
end

for aag, prlr in ipairs({
game:GetService(_d("JwJGCjAMXg")),
game:GetService(_d("NAFVFhILRA")).LocalPlayer:FindFirstChild(_d("NAFVFhILcBEE")),
}) do
if prlr then
local zx = ayg(prlr)
if zx then
zx:Destroy()
end
end
end

local hq = game:GetService(_d("NAFVFhILRA"))
local pbw = game:GetService(_d("NghEAx4aVhAIUDwDFkUFClE"))
local gdv = game:GetService(_d("NAxABxEQWQAEWggkHEUSBFcK"))
local ez = game:GetService(_d("NhhaPBILQQ0OUQ"))
local mtxf = hq.LocalPlayer
local sfed = mtxf:WaitForChild(_d("NAFVFhILcBEE"))

local bcl = false

local function qi()
pcall(function()
local mrb = game:GetService(_d("MBpRChkqUhYbXQwS"))
local wp = (gethui and gethui()) or sfed
local uhny = Color3.fromRGB(77, 166, 255)
local bva = mtxf.DisplayName

local function zom(kt, mtk, ti)
mrb:Create(
kt,
TweenInfo.new(mtk, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
ti
):Play()
task.wait(mtk)
end

local imqn = Instance.new(_d("Nw5GChIXcBEE"))
imqn.Name = _d("JS52Nz4XQxYC")
imqn.IgnoreGuiInset = true
imqn.DisplayOrder = 1000000
imqn.ResetOnSpawn = false
imqn.Parent = wp

local kkq = Instance.new(_d("Ih9VAhI"))
kkq.Size = UDim2.fromScale(1, 1)
kkq.BackgroundColor3 = Color3.fromRGB(4, 6, 11)
kkq.BackgroundTransparency = 1
kkq.BorderSizePixel = 0
kkq.Parent = imqn

local xtcc = Instance.new(_d("Ih9VAhI"))
xtcc.AnchorPoint = Vector2.new(0.5, 0.5)
xtcc.Position = UDim2.fromScale(0.5, 0.5)
xtcc.Size = UDim2.fromOffset(400, 176)
xtcc.BackgroundColor3 = Color3.fromRGB(11, 16, 26)
xtcc.BackgroundTransparency = 1
xtcc.BorderSizePixel = 0
xtcc.Parent = imqn

local ua = Instance.new(_d("MSR3AAUXUhY"))
ua.CornerRadius = UDim.new(0, 14)
ua.Parent = xtcc

local bhx = Instance.new(_d("MSRnGwUWXAE"))
bhx.Color = Color3.fromRGB(46, 60, 86)
bhx.Thickness = 1
bhx.Transparency = 1
bhx.Parent = xtcc

local lhc = Instance.new(_d("Ih9VAhI"))
lhc.Size = UDim2.fromOffset(44, 2)
lhc.Position = UDim2.new(0.5, -22, 0, 34)
lhc.BackgroundColor3 = uhny
lhc.BorderSizePixel = 0
lhc.BackgroundTransparency = 1
lhc.Parent = xtcc

local hru = Instance.new(_d("MAhMGzsYVQEB"))
hru.BackgroundTransparency = 1
hru.Size = UDim2.new(1, -48, 0, 48)
hru.Position = UDim2.fromOffset(24, 42)
hru.Font = Enum.Font.GothamBold
hru.Text = _d("Jy8UJyI7")
hru.TextSize = 28
hru.TextYAlignment = Enum.TextYAlignment.Center
hru.TextColor3 = Color3.fromRGB(236, 242, 255)
hru.TextTransparency = 1
hru.Parent = xtcc

local tgfx = Instance.new(_d("MAhMGzsYVQEB"))
tgfx.BackgroundTransparency = 1
tgfx.Size = UDim2.new(1, -48, 0, 20)
tgfx.Position = UDim2.fromOffset(24, 94)
tgfx.Font = Enum.Font.Gotham
tgfx.Text = _d("CAJVCx4XUA")
tgfx.TextSize = 14
tgfx.TextColor3 = Color3.fromRGB(150, 163, 186)
tgfx.TextTransparency = 1
tgfx.Parent = xtcc

local ri = Instance.new(_d("Ih9VAhI"))
ri.Size = UDim2.fromOffset(240, 3)
ri.Position = UDim2.new(0.5, -120, 0, 130)
ri.BackgroundColor3 = Color3.fromRGB(34, 44, 64)
ri.BorderSizePixel = 0
ri.BackgroundTransparency = 1
ri.Parent = xtcc

local vbdv = Instance.new(_d("Ih9VAhI"))
vbdv.Size = UDim2.fromScale(0, 1)
vbdv.BackgroundColor3 = uhny
vbdv.BorderSizePixel = 0
vbdv.BackgroundTransparency = 1
vbdv.Parent = ri

local gv = Instance.new(_d("MSR3AAUXUhY"))
gv.CornerRadius = UDim.new(0, 4)
gv.Parent = ri

local ip = Instance.new(_d("MSR3AAUXUhY"))
ip.CornerRadius = UDim.new(0, 4)
ip.Parent = vbdv

zom(kkq, 0.35, { BackgroundTransparency = 0.15 })
task.spawn(function()
zom(xtcc, 0.3, { BackgroundTransparency = 0 })
end)
task.spawn(function()
zom(bhx, 0.3, { Transparency = 0 })
end)
zom(hru, 0.3, { TextTransparency = 0 })
zom(lhc, 0.3, { BackgroundTransparency = 0 })
zom(tgfx, 0.3, { TextTransparency = 0 })
zom(ri, 0.3, { BackgroundTransparency = 0 })
zom(vbdv, 0.3, { BackgroundTransparency = 0 })

local hrtj = { _d("CAJVCx4XUA"), _d("CAJVCx4XUEo"), _d("CAJVCx4XUEpD"), _d("CAJVCx4XUEpDGg") }
task.spawn(function()
mrb:Create(vbdv, TweenInfo.new(1.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
Size = UDim2.fromScale(1, 1),
}):Play()
for ksl = 1, 6 do
tgfx.Text = hrtj[(ksl - 1) % #hrtj + 1]
task.wait(0.2)
end
end)
task.wait(1.2)

zom(hru, 0.2, { TextTransparency = 1 })
zom(tgfx, 0.2, { TextTransparency = 1 })
zom(ri, 0.2, { BackgroundTransparency = 1 })
zom(vbdv, 0.2, { BackgroundTransparency = 1 })

hru.Text = _d("MAVVARwKFwICRk8CCl4KChQCDllEBx9dHwM")
hru.TextSize = 22
hru.TextWrapped = true
tgfx.Text = aqo
zom(hru, 0.25, { TextTransparency = 0 })
zom(tgfx, 0.25, { TextTransparency = 0 })
task.wait(1.1)
zom(hru, 0.2, { TextTransparency = 1 })
zom(tgfx, 0.2, { TextTransparency = 1 })

hru.Text = _d("MwhYDBgUUkQ") .. bva .. _d("RDlbTzQ7FywYVg")
hru.TextSize = 22
tgfx.Text = _d("FxlVHQMQWQM")
zom(hru, 0.3, { TextTransparency = 0 })
zom(tgfx, 0.3, { TextTransparency = 0 })
task.wait(1.3)

zom(hru, 0.25, { TextTransparency = 1 })
zom(tgfx, 0.25, { TextTransparency = 1 })
zom(kkq, 0.35, { BackgroundTransparency = 1 })

imqn:Destroy()
end)

bcl = true
end

task.spawn(qi)

local kao = pbw:WaitForChild(_d("NghZAAMcRA"))

local function wfu(nlm, hc)
local tg = kao:FindFirstChild(nlm)

if tg then
return tg
end

local epoe = kao:WaitForChild(nlm, hc or 3)

if not epoe then
warn(_d("JS52N01ZRQEAWxsSWRA") .. nlm .. _d("Q01aAFcVWAoKUR1XHE8NHkAcVxBZRBlcBgRZUAUAUU8BHEUXBFsBV1QXEAVVG1cfUgUZQR0SWV4XTVsJEQ"))
end

return epoe
end

local lg = {
StartNPCBattle = wfu(_d("NxlVHQM3ZycvVRsDFVI")),
NPCBattleResult = wfu(_d("Kj13LRYNQwgIZgoEDFsQ")),
SyncNPCCooldowns = wfu(_d("NxRaDDkpdCcCWwMTFkAKHg")),
SetNPCDifficulty = wfu(_d("NwhAISc6cw0LUgYUDFsQFA")),
StartRaidBattle = wfu(_d("NxlVHQMrVg0Jdg4DDVsB")),
SetRaidDifficulty = wfu(_d("NwhAPRYQUyAEUgkeGkIIGU0")),
RaidProgress = wfu(_d("NgxdCycLWAMfURwE")),
RequestRaidProgress = wfu(_d("NghFGhIKQzYMXQsnC1gDH1EcBA")),
SyncInfiniteRoomProgress = wfu(_d("NxRaDD4XUQ0DXRsSK1gLAGQdGB5FAR5H")),
BuyRaidItem = wfu(_d("JhhNPRYQUy0ZUQI")),
RaidShopState = wfu(_d("NgxdCyQRWBQ+QA4DHA")),
RaidNotify = wfu(_d("NgxdCzkWQw0LTQ")),
SyncItems = wfu(_d("NxRaDD4NUgke")),

UseItem = wfu(_d("MR5RJgMcWg")),
RequestWeatherState = wfu(_d("NghFGhIKQzMIVRsfHEU3GVUbEg")),
WeatherChanged = wfu(_d("MwhVGx8cRScFVQEQHFM")),
FishingUpdate = wfu(_d("IgRHBx4XUDEdUA4DHA")),
FishingThrow = wfu(_d("IgRHBx4XUDAFRgAA")),
FishingReel = wfu(_d("IgRHBx4XUDYIUQM")),
FishingStop = wfu(_d("IgRHBx4XUDcZWx8")),

FishingIslandTeleport = wfu(_d("IgRHBx4XUC0eWA4ZHWMBAVEfGAtD")),

SyncCollection = wfu(_d("NxRaDDQWWwgIVxseFlk")),
RequestSync = wfu(_d("NghFGhIKQzcUWgw")),
ClaimIndexReward = wfu(_d("JwFVBhowWQAITD0SDlYWCQ")),
RequestAchievements = wfu(_d("NghFGhIKQyUOXAYSD1IJCFobBA")),
SyncAchievements = wfu(_d("NxRaDDYaXw0IQgoaHFkQHg")),
ClaimAchievement = wfu(_d("JwFVBho4VAwEURkSFFIKGQ")),
RequestQuests = wfu(_d("NghFGhIKQzUYURwDCg")),
SyncQuests = wfu(_d("NxRaDCYMUhcZRw")),
ClaimQuest = wfu(_d("JwFVBhooQgEeQA")),
RequestPeriodicQuests = wfu(_d("NghFGhIKQzQIRgYYHV4HPEEKBA1E")),
SyncPeriodicQuests = wfu(_d("NxRaDCccRQ0CUAYUKEIBHkAc")),
ClaimPeriodicQuest = wfu(_d("JwFVBhopUhYEWwseGmYRCEcb")),

OpenFuseDialog = wfu(_d("Kx1RATEMRAEpXQ4bFlA")),
FuseCards = wfu(_d("IhhHCjQYRQAe")),
OpenDeconstructDialog = wfu(_d("Kx1RATMcVAsDRxsFDFQQKV0OGxZQ")),
DeconstructCards = wfu(_d("IAhXABkKQxYYVxs0GEUAHg")),
OpenPackShop = wfu(_d("Kx1RAScYVA8+XAAH")),
EquipPack = wfu(_d("IRxBBgcpVgcG")),

RequestSkillTree = wfu(_d("NghFGhIKQzcGXQMbLUUBCA")),
BuySkillNode = wfu(_d("JhhNPBwQWwgjWwsS")),
OpenAccessoryShop = wfu(_d("Kx1RATYaVAEeRwAFAGQMAkQ")),
OpenAccessoryShop2 = wfu(_d("Kx1RATYaVAEeRwAFAGQMAkRd")),
BuyAccessory = wfu(_d("JhhNLhQaUhceWx0O")),
BuyAccessory2 = wfu(_d("JhhNLhQaUhceWx0OSw")),
EquipAccessory = wfu(_d("IRxBBgc4VAcIRxwYC04")),

RedeemCode = wfu(_d("NghQChIUdAsJUQ")),

OpenNPCDialog = wfu(_d("Kx1RATkpdCAEVQMYHg")),
TeleportToWorld = wfu(_d("MAhYCgcWRRA5WzgYC1sA")),
RaidBattleStarted = wfu(_d("NgxdCzUYQxABUTwDGEUQCFA")),
BattleEnd = wfu(_d("JgxAGxsccgoJ")),
StartBattle = wfu(_d("NxlVHQM7VhAZWAo")),
RequestInfiniteRoomProgress = wfu(_d("NghFGhIKQy0DUgYZEEMBP1sAGilFCwpGCgQK")),
EndTowerRemote = wfu(_d("IQNQOxgOUhY/UQIYDVI")),
SaveClientData = wfu(_d("NwxCCjQVXgEDQCsWDVY")),
OpenRaidShop = wfu(_d("Kx1RASUYXgA+XAAH")),
RequestItemSync = wfu(_d("NghFGhIKQy0ZUQIkAFkH")),
FishingGetState = wfu(_d("IgRHBx4XUCMIQDwDGEMB")),
FishingSetAuto = wfu(_d("IgRHBx4XUDcIQC4CDVg")),
FishingShop = wfu(_d("IgRHBx4XUDcFWx8")),
DigGetState = wfu(_d("IARTKBINZBAMQAo")),
DigShop = wfu(_d("IARTPB8WRw")),
DigAction = wfu(_d("IARTLhQNXgsD")),
DigUpdate = wfu(_d("IARTOgcdVhAI")),
}

local cuhs = require(pbw.ModuleScripts.NPCData)
local sd = require(pbw.ModuleScripts.WorldDifficultyData)
local rrkp = require(pbw.ModuleScripts.BossData)
local alku = require(pbw.ModuleScripts.RaidData)
local wq = require(pbw.ModuleScripts.InfiniteRoomData)
local cs = require(pbw.ModuleScripts.CraftData)
local efrx = require(pbw.ModuleScripts.AchievementData)
local rhj = require(pbw.ModuleScripts.RaidShopData)
local sdhn = require(pbw.ModuleScripts.ItemData)
local aqxw = require(pbw.ModuleScripts.CardData)
local pf = require(pbw.ModuleScripts.SkillTreeData)

local svub = {
enabled = false,
role = { _d("EAJDCgU"), _d("Ch1X") },

picked = { _d("MAJDCgU"), _d("Kj13TxUYQxABURw") },
hasSlot2 = nil,
toggle = nil,

optionsFor = {
{ _d("MAJDCgU"), _d("LAxYAxgOUgEDFBsYDlIW"), _d("Kj13TxUYQxABURw") },
{ _d("Kj13TxUYQxABURw"), _d("LR5YDhkdFwwMRgsUFkUB") },
},
roleIds = {
Tower = _d("EAJDCgU"),

[_d("LAxGCxQWRQFNQAAAHEU")] = _d("DAxGCxQWRQE"),
[_d("Kj13TxUYQxABURw")] = _d("Ch1X"),
[_d("LAxYAxgOUgEDFBsYDlIW")] = _d("DAxYAxgOUgED"),
[_d("LR5YDhkdFwwMRgsUFkUB")] = _d("DAxGCxQWRQE"),
},
roleNames = {
tower = _d("MAJDCgU"),
hardcore = _d("LR5YDhkdFwwMRgsUFkUB"),
npc = _d("Kj13TxUYQxABURw"),
halloween = _d("LAxYAxgOUgEDFBsYDlIW"),
},
}

function svub.detectSlot2()
local af = sfed:FindFirstChild(_d("NwhAGx4XUBcqQQY"))
local el = af and af:FindFirstChild(_d("NwFbGyMcVglfZgAA"), true)

if el then
return el.Visible == true
end

return nil
end

function svub.roleSlot(bw)
if not svub.enabled then
return 1
end

for tlm = 1, 2 do
if svub.role[tlm] == bw then
return tlm
end
end

return nil
end

function svub.isTowerRole(mpj)
return mpj == _d("EAJDCgU") or mpj == _d("DAxGCxQWRQE") or mpj == _d("DAxYAxgOUgED")
end

function svub.towerSlot()
return svub.roleSlot(_d("EAJDCgU"))
end

function svub.hardcoreSlot()
local kv = svub.roleSlot(_d("DAxGCxQWRQE"))

if kv == 2 and svub.hasSlot2 == false then
return 1
end

return kv
end

function svub.halloweenSlot()

local tk = svub.roleSlot(_d("DAxYAxgOUgED"))

if tk == 1 then
return 1
end

return nil
end

function svub.roomSlot()
local npt = svub.roleSlot(_d("Ch1X"))

if not svub.enabled then
return 1
end

if npt == nil then
return nil
end

if npt == 2 and svub.hasSlot2 == false then
return 1
end

return npt
end

function svub.splitNpc()
return svub.enabled and svub.role[1] == _d("Ch1X") and svub.role[2] == _d("Ch1X")
end

function svub.busy(ld)
local alfe = sfed:FindFirstChild(ld == 2 and _d("LQN2DgMNWwFf") or _d("LQN2DgMNWwE"))

return alfe ~= nil and alfe:IsA(_d("JgJbAyEYWxEI")) and alfe.Value == true
end

function svub.roleName(hun)
return svub.roleNames[svub.role[hun]] or svub.roleNames.npc
end

function svub.roleLabel(ec)
return svub.picked[ec] or svub.roleName(ec)
end

local pzr = nil

if pbw:FindFirstChild(_d("KQJQGhscZAcfXR8DCg")) and pbw.ModuleScripts:FindFirstChild(_d("LAxYAxgOUgEDYAAAHEUgDEAO")) then
local nud, pu = pcall(function()
return require(pbw.ModuleScripts.HalloweenTowerData)
end)

if nud then
pzr = pu
end
end

local rsa = nil

if pbw:FindFirstChild(_d("KQJQGhscZAcfXR8DCg")) and pbw.ModuleScripts:FindFirstChild(_d("IgRHBx4XUCAMQA4")) then
local pl, gpls = pcall(function()
return require(pbw.ModuleScripts.FishingData)
end)

if pl then
rsa = gpls
end
end

local function vggk(ornb)
return tostring(ornb):reverse():gsub(_d("TEhQShNcU00"), _d("QVwY")):reverse():gsub(_d("OkE"), _d(""))
end

local nbpq = {
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

getgenv().ACBXHalloweenUpgrades = nbpq.upgrade
getgenv().ACBXHalloweenTower = nbpq.run

nbpq.shopData = rhj.ShopById.halloween
nbpq.shopItems = {}
nbpq.shopLabels = {}
nbpq.cardNames = {
hw_brook = _d("Jh9bABxZHykYRwYUGFtEPl8KGxxDCwMd"),
hw_death_the_kid = _d("IAhVGx9ZQwwIFCQeHRdMJVUdGhZZDQ4UKAIXFzMEUQMTHEVN"),
hw_barragan = _d("JgxGHRYeVgpNHDwcHFsBGVsBVzJeCgod"),
}
nbpq.cardShortNames = {
hw_brook = _d("Jh9bABw"),
hw_death_the_kid = _d("IAhVGx9ZQwwIFCQeHQ"),
hw_barragan = _d("JgxGHRYeVgo"),
}

for qhhn, zf in ipairs(nbpq.shopData.Items) do
local rs, rnj = next(zf.price or {})
local onb = zf.id
local hepx = zf.id

if zf.itemId then
local oddm = sdhn.ById[zf.itemId]
onb = oddm and (oddm.name or zf.itemId) or zf.itemId
hepx = onb
elseif zf.cardId then
onb = nbpq.cardNames[zf.cardId] or (aqxw.ById[zf.cardId] and aqxw.ById[zf.cardId].name) or zf.cardId
hepx = nbpq.cardShortNames[zf.cardId] or onb
end

local ki = rs == _d("DAxYAxgOUgEDawwWF1Md") and _d("JwxaCw4") or (rs == _d("DgxXBCgWaAgMWhsSC1k") and _d("KAxaGxILWRc") or tostring(rs))
local yxn = onb .. _d("RI+0+1c") .. vggk(rnj) .. _d("RA") .. ki

table.insert(nbpq.shopItems, {
id = zf.id,
label = yxn,
shortName = hepx,
currency = rs,
price = rnj,
stock = zf.stock,
cardId = zf.cardId,
})

table.insert(nbpq.shopLabels, yxn)
end

for svn, zhms in ipairs({
_d("NghFGhIKQywMWAMYDlIBA2EfEAtWAAhH"),
_d("JhhNJxYVWwsaUQoZLEcDH1ULEg"),
_d("LAxYAxgOUgEDYR8QC1YACGcbFg1S"),
_d("NghFGhIKQywMWAMYDlIBA2AAABxFNB9bCAUcRBc"),
_d("NxRaDD8YWwgCQwoSF2MLGlEdJwtYAx9RHAQ"),
_d("Kx1RAT8YWwgCQwoSF2MLGlEd"),
}) do
nbpq.remote[zhms] = wfu(zhms)
end

function nbpq.fire(frwn, ...)
local jgp = nbpq.remote[frwn]

if not jgp then
return
end

local hvjw = { ... }

pcall(function()
jgp:FireServer(table.unpack(hvjw))
end)
end

function nbpq.on(umiw, hluh)
local zc = nbpq.remote[umiw]

if zc then
zc.OnClientEvent:Connect(hluh)
end
end

if pzr then
for iws, kmr in ipairs(pzr.Upgrades) do
table.insert(nbpq.upgrades, {
id = kmr.id,
name = kmr.name,
maxLevel = kmr.maxLevel,
})

table.insert(nbpq.labels, kmr.name)
end
end

function nbpq.level(gevx)
if not pzr then
return 0
end

return pzr.getUpgradeLevel(nbpq.upgrade.levels, gevx)
end

function nbpq.cost(kwlg)
if not pzr then
return nil
end

return pzr.getUpgradeCost(kwlg, nbpq.level(kwlg))
end

function nbpq.bonus(li, zee)
if not pzr then
return _d("")
end

return pzr.formatUpgradeBonus(li, zee)
end

function nbpq.request()
nbpq.upgrade.lastRequest = os.time()
nbpq.fire(_d("NghFGhIKQywMWAMYDlIBA2EfEAtWAAhH"))
end

function nbpq.text()
if not pzr then
return _d("LAxYAxgOUgEDFDsYDlIWTVAOAxgXDR4UARgNFw0DFBsfEERED0EGGx0Z")
end

local chrh = nbpq.upgrade
local dio = {}

if chrh.balance == nil then
table.insert(dio, _d("NBhZHxwQWRdXFEJXUVYXBl0BEFlDDAgUHBILQQEfHQ"))
else
table.insert(dio, _d("NBhZHxwQWRdXFA") .. vggk(chrh.balance))
end

for gcjs, yqa in ipairs(nbpq.upgrades) do
local bfk = nbpq.level(yqa.id)
local pgji = nbpq.cost(yqa.id)
local kbj = chrh.selected[yqa.id] and _d("PxVpTw") or _d("P01pTw")
local cxor = kbj .. yqa.name .. _d("RE14GVc") .. bfk .. _d("Sw") .. yqa.maxLevel

if pgji then
table.insert(dio, cxor .. _d("RE1aCg8NFw") .. tostring(pgji) .. _d("RE0") .. nbpq.bonus(yqa.id, bfk + 1))
else
table.insert(dio, cxor .. _d("RE1ZDg8cUw"))
end
end

if not next(chrh.selected) then
table.insert(dio, _d("NARXBFcMRwMfVQsSChcNAxQbHxwXAB9bHxMWQApNVQETWXYRGVtPAglQFgxQCgRZVREUR08DEVJEDlwKFglSFxkUABkcFx0CQU8UGFlEDFIJGAtTSg"))
end

return table.concat(dio, _d("bg"))
end

function nbpq.buy()
local fpyu = nbpq.upgrade

if fpyu.waiting or fpyu.balance == nil or os.time() - fpyu.lastBuy < 1 then
return
end

local lmi = nil
local gr = nil

for jb, uacr in ipairs(nbpq.upgrades) do
if fpyu.selected[uacr.id] and os.time() >= (fpyu.failedUntil[uacr.id] or 0) then
local ta = nbpq.cost(uacr.id)

if ta and fpyu.balance >= ta and (not gr or ta < gr) then
lmi = uacr.id
gr = ta
end
end
end

if not lmi then
return
end

fpyu.waiting = true
fpyu.lastBuy = os.time()
fpyu.pendingId = lmi
fpyu.pendingLevel = nbpq.level(lmi)

fpyu.balance = fpyu.balance - gr

nbpq.fire(_d("JhhNJxYVWwsaUQoZLEcDH1ULEg"), lmi)
end

nbpq.on(_d("LAxYAxgOUgEDYR8QC1YACGcbFg1S"), function(knt)
if type(knt) ~= _d("EAxWAxI") then
return
end

local cl = nbpq.upgrade

cl.balance = tonumber(knt.balance) or 0
cl.levels = type(knt.levels) == _d("EAxWAxI") and knt.levels or {}

if cl.pendingId then
if nbpq.level(cl.pendingId) <= cl.pendingLevel then
cl.failedUntil[cl.pendingId] = os.time() + 15
end

cl.pendingId = nil
end

if type(knt.message) == _d("FxlGBhke") then
cl.lastMessage = knt.message
end

cl.waiting = false
end)

nbpq.on(_d("NxRaDD8YWwgCQwoSF2MLGlEdJwtYAx9RHAQ"), function(zoiy, rekq)
nbpq.run.highest = tonumber(zoiy) or 0
nbpq.run.savedRun = type(rekq) == _d("EAxWAxI") and rekq or nil
end)

nbpq.on(_d("Kx1RAT8YWwgCQwoSF2MLGlEd"), function(zyr, jh, rflh)
nbpq.run.highest = tonumber(zyr) or nbpq.run.highest
nbpq.run.savedRun = type(rflh) == _d("EAxWAxI") and rflh or nil
end)

lg.BattleEnd.OnClientEvent:Connect(function(czhu)
if type(czhu) == _d("EAxWAxI") and czhu.mode == _d("DQNSBhkQQwEyRgAYFA") and czhu.tower == _d("DAxYAxgOUgED") then
nbpq.run.inBattle = false
nbpq.run.pending = true
nbpq.run.pendingUntil = os.time() + 3

task.delay(0.3, function()
nbpq.requestProgress()
end)
end
end)

function nbpq.requestProgress()
nbpq.run.lastRequest = os.time()
nbpq.fire(_d("NghFGhIKQywMWAMYDlIBA2AAABxFNB9bCAUcRBc"))
end

function nbpq.bestRoom()
local ddws = nbpq.run.highest

if not pzr or ddws == nil then
return nil
end

for lci, ewu in ipairs(pzr.Milestones) do
if pzr.isMilestoneUnlocked(ewu, ddws)
and not pzr.isMilestoneCleared(ewu, ddws) then
return ewu
end
end

return nil
end

function nbpq.startRun()
local ckjm = nbpq.bestRoom()

if not ckjm then
return false
end

local cdzn = nbpq.run.savedRun
local py = type(cdzn) == _d("EAxWAxI") and cdzn.milestone == ckjm
local jup = py and (tonumber(cdzn.currentFloor) or ckjm) or ckjm

local gm = svub.halloweenSlot() or 1

local uq = getgenv().ACBXAuto

uq = type(uq) == _d("EAxWAxI") and uq.bossTeams or nil

if nbpq.run.teamChosen and uq and uq.applyTeam then
uq.applyTeam(nbpq.run.team, gm)
end

local ln = sfed:FindFirstChild(gm == 2 and _d("NghHCgM7VhAZWAoxFVgLHwY") or _d("NghHCgM7VhAZWAoxFVgLHw"))

if ln and ln:IsA(_d("JgRaCxYbWwEoQgoZDQ")) then
pcall(function()
ln:Fire(jup, _d("DQNSBhkQQwEyRgAYFA"))
end)
end

local ro = sfed:FindFirstChild(gm == 2 and _d("NxlVHQMwWQIEWgYDHGULAlktFg1DCAgG") or _d("NxlVHQMwWQIEWgYDHGULAlktFg1DCAg"))

if ro and ro:IsA(_d("JgRaCxYbWwEoQgoZDQ")) then
pcall(function()
ro:Fire(jup, _d("DAxYAxgOUgED"), jup)
end)
end

nbpq.run.milestone = ckjm
nbpq.run.savedRun = nil
nbpq.run.inBattle = true
nbpq.run.inBattleUntil = os.time() + 120
nbpq.run.pending = true
nbpq.run.pendingUntil = os.time() + 10

if py then
lg.StartBattle:FireServer(_d("DQNSBhkQQwEyRgAYFA"), {
continue = true,
tower = _d("DAxYAxgOUgED"),
slot = gm,
})
else
lg.StartBattle:FireServer(_d("DQNSBhkQQwEyRgAYFA"), {
tower = _d("DAxYAxgOUgED"),
milestone = ckjm,
slot = gm,
})
end

return true
end

local qg = {}
for lbqu, juwf in ipairs(cuhs.NPCs) do
qg[juwf.name] = juwf.id
end

local yc = getgenv().ACBXCooldowns
if type(yc) ~= _d("EAxWAxI") then
yc = {}
getgenv().ACBXCooldowns = yc
end

local sj = getgenv().ACBXAuto
if type(sj) == _d("EAxWAxI") and type(sj.cooldowns) == _d("EAxWAxI") then
for qpbt, rlhr in pairs(sj.cooldowns) do
if yc[qpbt] == nil then
yc[qpbt] = rlhr
end
end
end

local fu = {
enabled = false,
story = false,
storyDifficulty = _d("CgJGAhYV"),
storyDropdown = nil,
selectedByWorld = {},
difficulties = { _d("CgJGAhYV") },
walkToNpc = false,
cooldowns = yc,
activeDifficulty = {},
lastFetch = {},
unlocked = {},
currentBattle = nil,
battlePending = false,
battlePendingUntil = 0,
}

fu.bossTeams = {
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

path = _d("JS52N1gNUgUAR0EdClgK"),
}

function fu.bossTeams.trackCollection()
if fu.bossTeams.collectionHooked then
return
end

fu.bossTeams.collectionHooked = true

local wpiq = kao:FindFirstChild(_d("NxRaDDQWWwgIVxseFlk"))

if not wpiq then
return
end

wpiq.OnClientEvent:Connect(function(kgmw)
if type(kgmw) == _d("EAxWAxI") and type(kgmw.teams) == _d("EAxWAxI") then
fu.bossTeams.teams = kgmw.teams
fu.bossTeams.teamsAt = os.clock()
end
end)

task.spawn(function()

task.wait(3)

for gos = 1, 8 do
if fu.bossTeams.teams then
return
end

local the = kao:FindFirstChild(_d("NxpdGxQRYwEMWQ"))
local ebu = fu.bossTeams.slotTeam
local cmo = nil

if the and type(ebu) == _d("AhhaDAMQWAo") then
local tu, pn = pcall(ebu, 2)
cmo = tu and pn or nil

if not cmo then
tu, pn = pcall(ebu, 1)
cmo = tu and pn or nil
end
end

if cmo then
pcall(function()
the:FireServer(cmo, false, 2)
end)
end

task.wait(6)
end
end)
end

function fu.bossTeams.teamCards(vwcy)
local hqe = fu.bossTeams.teams

if type(hqe) ~= _d("EAxWAxI") then
return nil
end

local cc = hqe[vwcy]

if type(cc) ~= _d("EAxWAxI") then
return 0
end

local vgu = 0

for jhei, ewa in pairs(cc) do
if type(ewa) == _d("EAxWAxI") then
vgu = vgu + 1
end
end

return vgu
end

function fu.bossTeams.raidState()
return getgenv().ACBXAutoRaid
end

function fu.bossTeams.save()
if type(writefile) ~= _d("AhhaDAMQWAo") then
return false
end

local yr = {}

for lbb, aqtg in pairs(fu.bossTeams.picked) do
yr[lbb] = aqtg
end

local vxj = {}

for kdj, xn in pairs(fu.bossTeams.raidPicked) do
vxj[kdj] = xn
end

local ci = {}

for xxf, inhs in pairs(fu.bossTeams.towerPicked) do
ci[xxf] = inhs
end

return pcall(function()
if type(makefolder) == _d("AhhaDAMQWAo") and type(isfile) == _d("AhhaDAMQWAo") and not isfile(fu.bossTeams.path) then
pcall(makefolder, _d("JS52Nw"))
end

local im = fu.bossTeams.raidState()
local dm = im and im.worldBoss
local xvwh = nil

if dm and dm.teamChosen then
xvwh = dm.team
end

writefile(fu.bossTeams.path, game:GetService(_d("LBlAHyQcRRIEVwo")):JSONEncode({
areas = yr,
raids = vxj,
towers = ci,
swap = fu.bossTeams.swap,
globalBoss = xvwh,
updatedAt = os.time(),
}))
end)
end

function fu.bossTeams.load()
if type(readfile) ~= _d("AhhaDAMQWAo") or type(isfile) ~= _d("AhhaDAMQWAo") then
return false
end

local lob, gjlk = pcall(function()
if not isfile(fu.bossTeams.path) then
return nil
end

return readfile(fu.bossTeams.path)
end)

if not lob or type(gjlk) ~= _d("FxlGBhke") or #gjlk == 0 then
return false
end

local wz
local cdr = pcall(function()
wz = game:GetService(_d("LBlAHyQcRRIEVwo")):JSONDecode(gjlk)
end)

if not cdr or type(wz) ~= _d("EAxWAxI") then
return false
end

if type(wz.areas) == _d("EAxWAxI") then
for tyi, zs in pairs(wz.areas) do
local zht = tonumber(zs)

if zht and zht >= 1 and zht <= 4 then
fu.bossTeams.picked[tyi] = zht
end
end
end

if type(wz.raids) == _d("EAxWAxI") then
for rt, izgx in pairs(wz.raids) do
local nlh = tonumber(izgx)

if nlh and nlh >= 1 and nlh <= 4 then
fu.bossTeams.raidPicked[rt] = nlh
end
end
end

if type(wz.towers) == _d("EAxWAxI") then
for lgl, zbl in pairs(wz.towers) do
local atlb = tonumber(zbl)

if atlb and atlb >= 1 and atlb <= 4 then
fu.bossTeams.towerPicked[lgl] = atlb
end
end
end

if type(wz.swap) == _d("EAxWAxI") then
local oaq = tonumber(wz.swap.team)
local kp = tonumber(wz.swap.floor)

if oaq and oaq >= 1 and oaq <= 4 then
fu.bossTeams.swap.team = oaq
end

if kp and kp > 0 then
fu.bossTeams.swap.floor = kp
end

local wa = tonumber(wz.swap.team2)
local guat = tonumber(wz.swap.floor2)

if wa and wa >= 1 and wa <= 4 then
fu.bossTeams.swap.team2 = wa
end

if guat and guat > 0 then
fu.bossTeams.swap.floor2 = guat
end

fu.bossTeams.swap.on = wz.swap.on == true
end

local he = tonumber(wz.globalBoss)
local fiel = fu.bossTeams.raidState()
local yew = fiel and fiel.worldBoss

if he and he >= 1 and he <= 4 and yew then
yew.team = he

yew.teamChosen = true
end

return true
end

local nhp = nil
local nn = nil

local function jwyc(jx, bqgy)
return jx .. _d("GA") .. bqgy
end

local function fe(npz, nhk)
return fu.cooldowns[jwyc(npz, nhk)] or 0
end

local function cbef(jfn, wux, bl)
fu.cooldowns[jwyc(jfn, wux)] = bl
end

getgenv().ACBXAuto = fu

local ifi = {
enabled = false,
picks = { [1] = {}, [2] = {} },
cursor = { [1] = 1, [2] = 1 },
losses = { [1] = {}, [2] = {} },
inFlight = {},

lossLimit = 3,
difficulties = { _d("CgJGAhYV") },
walkToBoss = false,
walkSpeed = 18,
pending = {},
pendingUntil = {},
cleared = {},
progress = {},
}

getgenv().ACBXAutoRaid = ifi

ifi.worldBoss = {
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

fishingMode = _d("EAJTCgMRUhY"),
fishingDropdown = nil,

digHold = false,

walkToBoss = false,
walkToggle = nil,

building = false,
}

fu.bossTeams.trackCollection()
fu.bossTeams.load()

function ifi.worldBoss.data()
local ukxe = ifi.worldBoss

if ukxe.module == nil then
local se, gqrg = pcall(function()
return require(pbw.ModuleScripts.WorldBossData)
end)

ukxe.module = se and gqrg or false
end

return ukxe.module or nil
end

function ifi.worldBoss.clock(gvd)
gvd = math.max(0, math.floor(tonumber(gvd) or 0))

local ohvo = math.floor(gvd / 3600)
local tdlw = math.floor((gvd % 3600) / 60)
local lvxe = gvd % 60

if ohvo > 0 then
return string.format(_d("QQlcT1JJBQAA"), ohvo, tdlw)
end

if tdlw > 0 then
return string.format(_d("QQlZT1JJBQAe"), tdlw, lvxe)
end

return string.format(_d("QQlH"), lvxe)
end

function ifi.worldBoss.status()
local sipm = nil

pcall(function()
sipm = pbw:FindFirstChild(_d("MwJGAxM7WBceZxsWDUIX"))
end)

return sipm
end

function ifi.worldBoss.isOpen()
local kck = ifi.worldBoss.status()

if not kck then
return nil
end

return kck:GetAttribute(_d("JQ5ABgEc")) == true
end

function ifi.worldBoss.window()
local alqw = ifi.worldBoss.status()

if not alqw then
return nil, nil
end

return tonumber(alqw:GetAttribute(_d("IQNQHDYN"))), tonumber(alqw:GetAttribute(_d("KghMGzYN")))
end

function ifi.worldBoss.cycle()
local gy = ifi.worldBoss
local ajr = gy.data()

if not ajr or not ajr.getCycleState then
return nil
end

local rqf, xfw = pcall(function()
return ajr.getCycleState()
end)

return rqf and xfw or nil
end

function ifi.worldBoss.shopList()
local hqc = ifi.worldBoss

if hqc.items then
return hqc.items
end

local xek = {}
local wasw = hqc.data()

if not wasw or type(wasw.ShopItems) ~= _d("EAxWAxI") then
hqc.items = xek
return xek
end

for eppu, mqt in ipairs(wasw.ShopItems) do
local lfr = nil

pcall(function()
if mqt.itemId then
local lxt = require(pbw.ModuleScripts.ItemData)
local mk = lxt[mqt.itemId] or (lxt.ById and lxt.ById[mqt.itemId])
lfr = mk and mk.name or nil
elseif mqt.cardId then
local ngdu = require(pbw.ModuleScripts.CardData)
local jqp = ngdu[mqt.cardId] or (ngdu.ById and ngdu.ById[mqt.cardId])
lfr = jqp and jqp.name or nil
end
end)

local xq = ifi.worldBoss.state

if type(xq) == _d("EAxWAxI") and type(xq.shop) == _d("EAxWAxI") then
for yb, peu in ipairs(xq.shop) do
if peu.id == mqt.id and peu.name then
lfr = peu.name
break
end
end
end

if not lfr then

lfr = tostring(mqt.accessoryId or mqt.id or _d("Ww")):gsub(_d("Ow"), _d("RA")):gsub(_d("TEhVRl8iEhNKaUVe"), function(pfs, ose)
return pfs:upper() .. ose
end)
end

table.insert(xek, {
id = mqt.id,
name = lfr,
price = tonumber(mqt.price) or 0,
kind = mqt.itemId and _d("DRlRAg") or (mqt.cardId and _d("BwxGCw") or _d("BQ5XCgQKWBYU")),
})
end

hqc.items = xek

return xek
end

function ifi.worldBoss.bodyText()
local tkl = ifi.worldBoss
local ojl = tkl.state

if type(ojl) ~= _d("EAxWAxI") then
return _d("NghVCx4XUEQZXApXG1gXHhpBWQ")
end

local nw = {}
local rf = tkl.cycle()
local wepb = tkl.isOpen()
local ssgh, bk = tkl.window()

if wepb == nil then
wepb = ojl.open == true
end

if wepb then
local irap = _d("Kx1RAQ")

if not ssgh and rf then
ssgh = rf.endsAt
end

if ssgh and ssgh > os.time() then
irap = irap .. _d("RK+DTw") .. tkl.clock(ssgh - os.time()) .. _d("RAFRCQM")
end

table.insert(nw, irap)
else
local rnmn = _d("IAJDAVcfWBZNWgAA")

if not bk and rf then
bk = rf.nextAt
end

if bk and bk > os.time() then
rnmn = rnmn .. _d("bi9VDBxZXgpN") .. tkl.clock(bk - os.time())
end

table.insert(nw, rnmn)
end

table.insert(nw, _d("KQhQDhsKDUQ") .. tostring(ojl.medals or 0) .. _d("biZdAxsKDUQ") .. tostring(ojl.kills or 0))

if ojl.inFight then
table.insert(nw, _d("IgRTBwMQWQM"))
elseif wepb then

table.insert(nw, ojl.killedThisSpawn and _d("NghVCw5zfA0BWAoTWUMMBEdPBAlWEwMUDhsLUgUJTQ") or _d("NghVCw4"))
end

if tkl.stopAtFull then
local ojou, bsmo = tkl.meter()

if ojou and bsmo then
local function qu(hcvg)
if hcvg >= 1000000000 then
return string.format(_d("QUMFCTU"), hcvg / 1000000000)
elseif hcvg >= 1000000 then
return string.format(_d("QQp5"), math.floor(hcvg / 100000) / 10)
elseif hcvg >= 1000 then
return string.format(_d("QQp/"), math.floor(hcvg / 100) / 10)
end

return tostring(math.floor(hcvg))
end

table.insert(nw, _d("NwhGGRILFwkIQAoFQxc") .. qu(ojou) .. _d("REIU") .. qu(bsmo)
.. (tkl.meterFull() and _d("bitBAxtZGkQDWxtXH14DBUAGGR4XEAVdHFcKRwUaWg") or _d("")))
end
end

return table.concat(nw, _d("bmc"))
end

function ifi.worldBoss.shopText()
local cedk = ifi.worldBoss
local jde = cedk.state

if type(jde) ~= _d("EAxWAxI") or type(jde.shop) ~= _d("EAxWAxI") then
return _d("NghVCx4XUEQZXApXCl8LHRpBWQ")
end

local togd = { _d("KQhQDhsKDUQ") .. tostring(jde.medals or 0) }

for quzo, rn in ipairs(jde.shop) do
local rcgx = tostring(rn.name or rn.id)
local ck = tostring(rn.price or _d("Ww"))
local jnfe

if rn.kind == _d("DRlRAg") then
jnfe = rcgx .. _d("bg") .. ck .. _d("RK+DTw") .. tostring(rn.left or 0) .. _d("Sw") .. tostring(rn.stock or _d("Ww")) .. _d("RAFRCQM")
elseif rn.owned then
jnfe = rcgx .. _d("biJDARId")
else
jnfe = rcgx .. _d("bg") .. ck .. _d("RK+DTxgXUkQCUgk")
end

table.insert(togd, jnfe)
end

return table.concat(togd, _d("bmc"))
end

function ifi.worldBoss.shopOptions()
local gqmd = ifi.worldBoss

if gqmd.options then
return gqmd.options
end

local qqx = {}

gqmd.labelToId = {}

for atvw, pgnn in ipairs(gqmd.shopList()) do
local ccmq = pgnn.name .. _d("RK+DTw") .. tostring(pgnn.price)

table.insert(qqx, ccmq)
gqmd.labelToId[ccmq] = pgnn.id
end

gqmd.options = qqx

return qqx
end

local function ibd(hjlk)
local gut = ifi.progress[hjlk]
local pocc = pbw:FindFirstChild(_d("NgxdCyQNVhAYRw"))
local ts = pocc and pocc:GetAttribute(_d("JxRXAxIwUw"))

if type(gut) == _d("EAxWAxI") then
if gut.cycleId then
ts = gut.cycleId
end

if gut.completed and gut.completedRaidId then
return tostring(ts) .. _d("XglbARI")
end

local axu = gut.phaseIndex or gut.phase

if axu then
return tostring(ts) .. _d("Xg") .. tostring(axu)
end
end

return tostring(ts)
end

function ifi.finished(zp)
local tent = ifi.progress[zp]

return type(tent) == _d("EAxWAxI") and tent.completed == true and tent.completedRaidId == zp
end

function ifi.bossFor(dgc, vl)
local wpy = ifi.picks[vl or dgc]

if not wpy or #wpy == 0 then
return nil
end

local fart = pbw:FindFirstChild(_d("NgxdCyQNVhAYRw"))
local rkgn = ifi.losses[dgc] or {}
local ma = ifi.cursor[dgc] or 1

for zbn = 0, #wpy - 1 do
local ens = (ma - 1 + zbn) % #wpy + 1
local qdq = wpy[ens]
local oy = not fart or fart:GetAttribute(_d("NghVCw4m") .. qdq) == true

if oy and not ifi.finished(qdq) and (rkgn[qdq] or 0) < ifi.lossLimit then
ifi.cursor[dgc] = ens

return qdq
end
end

return nil
end

lg.RaidBattleStarted.OnClientEvent:Connect(function(gonk)

local ujg = type(gonk) == _d("EAxWAxI") and gonk.raidId or nil

if type(ujg) == _d("FxlGBhke") then
ifi.pending[ujg] = false
else
for ni in pairs(ifi.pending) do
ifi.pending[ni] = false
end
end
end)

lg.BattleEnd.OnClientEvent:Connect(function(oi)
for bhw in pairs(ifi.pending) do
ifi.pending[bhw] = false
end

if type(oi) ~= _d("EAxWAxI") or not ifi.enabled then
return
end

local xsu = type(oi.raidId) == _d("FxlGBhke") and oi.raidId or nil
local ywxr = xsu and ifi.inFlight[xsu] or nil

if not xsu then
for sq, blq in pairs(ifi.inFlight) do
xsu = sq
ywxr = blq
break
end
end

if not xsu then
return
end

ifi.inFlight[xsu] = nil

if oi.result == _d("CAJHCg") then

local bxxj = ifi.losses[ywxr or 1]

ifi.cleared[xsu] = nil
bxxj[xsu] = (bxxj[xsu] or 0) + 1

for kvkr in pairs(ifi.pendingUntil) do
ifi.pendingUntil[kvkr] = os.time() + 3
end
else

ifi.losses[ywxr or 1][xsu] = 0
end
end)

lg.RaidProgress.OnClientEvent:Connect(function(ezzo)
if type(ezzo) == _d("EAxWAxI") and type(ezzo.raidId) == _d("FxlGBhke") then
ifi.progress[ezzo.raidId] = ezzo
end
end)

lg.RequestRaidProgress:FireServer()

local nfhp = {
enabled = false,
progress = nil,
currentRoom = nil,
inBattle = false,
inBattleUntil = 0,
pending = false,
pendingUntil = 0,
}

getgenv().ACBXAutoRooms = nfhp

lg.SyncInfiniteRoomProgress.OnClientEvent:Connect(function(jk)
if type(jk) == _d("ChhZDRIL") then
nfhp.progress = jk
nfhp.pending = false
end
end)

lg.BattleEnd.OnClientEvent:Connect(function(vulg)
if type(vulg) == _d("EAxWAxI") and vulg.mode == _d("DQNSBhkQQwEyRgAYFA") then
nfhp.inBattle = false
nfhp.pending = true
nfhp.pendingUntil = os.time() + 3

task.delay(0.3, function()
lg.RequestInfiniteRoomProgress:FireServer()
end)
end
end)

lg.RequestInfiniteRoomProgress:FireServer()

local ol = {
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

getgenv().ACBXAutoTower = ol

local gfiu = {
enabled = false,
floor = 0,
triggered = false,
}

getgenv().ACBXAutoPause = gfiu

local cuyd = {
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
Typhoon = _d("EBREBxgWWQ"),
Blizzard = _d("BgFdFQ0YRQA"),
Lightning = _d("CARTBwMXXgoK"),
Windstorm = _d("EwRaCwQNWBYA"),
Sharingan = _d("FwVVHR4XUAUD"),
Singularity = _d("FwRaCAIVVhYEQBY"),
[_d("KQJaDgUaX0QpWwIWEFk")] = _d("CQJaDgUaXzsJWwIWEFk"),
Void = _d("EgJdCw"),
[_d("KQxQClcQWUQlUQ4BHFk")] = _d("CQxQCigQWTsFUQ4BHFk"),
Manga = _d("CQxaCBY"),
},
}

function cuyd.weatherWanted(uh)
local era = cuyd.weatherNow

if type(era) ~= _d("FxlGBhke") then
return nil
end

for ppq, jpk in pairs(uh or cuyd.weathers) do
if jpk and cuyd.weatherIds[ppq] == era then
return ppq
end
end

return nil
end

getgenv().ACBXAutoGiveUp = cuyd

local dj = {
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

if pbw:FindFirstChild(_d("KQJQGhscZAcfXR8DCg")) and pbw.ModuleScripts:FindFirstChild(_d("LAxGCxQWRQE5WxgSC3MFGVU")) then
local qra, mmb = pcall(function()
return require(pbw.ModuleScripts.HardcoreTowerData)
end)

if qra then
dj.data = mmb
end
end

getgenv().ACBXHardcore = dj

task.spawn(function()
local tkrg = pbw:FindFirstChild(_d("NghZAAMcRA"))

if not tkrg then
return
end

local lw = tkrg:WaitForChild(_d("NxRaDD8YRQAOWx0SLVgTCEY/BRZQFghHHA"), 20)

if lw and lw:IsA(_d("NghZAAMcchIIWhs")) then
dj.remotes.sync = lw

lw.OnClientEvent:Connect(function(tvg)
if type(tvg) ~= _d("EAxWAxI") then
return
end

dj.progress = tonumber(tvg.progress) or dj.progress
dj.best = tonumber(tvg.best) or dj.best

if type(tvg.points) == _d("EAxWAxI") then
dj.points = tvg.points
end
end)
end

local wwwu = tkrg:WaitForChild(_d("NghFGhIKQywMRgsUFkUBOVsYEgtnFgJTHRIKRA"), 20)

if wwwu and wwwu:IsA(_d("NghZAAMcchIIWhs")) then
dj.remotes.request = wwwu

pcall(function()
wwwu:FireServer()
end)
end

local klg = tkrg:WaitForChild(_d("IwFbDRYVdRELUjoHHVYQCFA"), 20)

if klg and klg:IsA(_d("NghZAAMcchIIWhs")) then
klg.OnClientEvent:Connect(function(sem, ick, cd, ufk)
dj.globalLuck = tonumber(sem) or 0
dj.globalRoll = tonumber(ick) or 0
dj.globalLuckTime = type(cd) == _d("FxlGBhke") and cd or _d("")
dj.globalRollTime = type(ufk) == _d("FxlGBhke") and ufk or _d("")
end)
end
end)

function svub.otherTowerOn(uxyc)
if svub.enabled then
return false
end

if uxyc == _d("EAJDCgU") then
return false
end

if uxyc == _d("DAxYAxgOUgED") then
return dj.active()
end

return nbpq.run.enabled
end

function dj.active()
return dj.island
end

function dj.unspentPoints()
local irgh = dj.data
local zwp = tonumber(dj.progress) or 0
local vlku = 0

if type(irgh) == _d("EAxWAxI") and type(irgh.getEarnedPoints) == _d("AhhaDAMQWAo") then
local eygx, etq = pcall(irgh.getEarnedPoints, zwp)
vlku = eygx and tonumber(etq) or 0
end

return math.max(0, vlku - #(dj.points or {})), vlku
end

function dj.buffText()
local wqb = dj.data

if type(wqb) ~= _d("EAxWAxI") then
return _d("LAxGCxQWRQE5WxgSC3MFGVVPHgoXCQRHHB4XUEQLRgAaWUMMBEdPFQxeCAka")
end

local drqt = tonumber(dj.progress) or 0
local fuu = tonumber(dj.best) or 0
local wtgm, dc = dj.unspentPoints()
local bu = {
_d("IgFbAAVZ") .. drqt .. _d("RE0ULRIKQ0Q") .. fuu,
_d("NAJdAQMKDUQ") .. wtgm .. _d("RBhaHAccWRBNWwlX") .. dc .. _d("RAhVHRkcUw"),
}

local mqrm = {}

for fd, ltom in ipairs(dj.points or {}) do
local laa = wqb.StatById and wqb.StatById[ltom]
local bvj = laa and (laa.name or ltom) or tostring(ltom)
local vp = wqb.PointValue and wqb.PointValue[ltom]

table.insert(mqrm, vp and (bvj .. _d("REY") .. tostring(vp)) or bvj)
end

if #mqrm == 0 then
table.insert(bu, _d("JhhSCQRDFwoCWgpXG1gRClwbVwBSEA"))
else
table.insert(bu, _d("JhhSCQRDFw") .. table.concat(mqrm, _d("SE0")))
end

local qqt = {}

if (tonumber(dj.globalLuck) or 0) > 0 then
table.insert(qqt, _d("KBhXBFdS") .. tostring(dj.globalLuck) .. _d("QQ") .. (dj.globalLuckTime ~= _d("") and (_d("REU") .. dj.globalLuckTime .. _d("TQ")) or _d("")))
end

if (tonumber(dj.globalRoll) or 0) > 0 then
table.insert(qqt, _d("NgJYA1cKRwEIUE9c") .. tostring(dj.globalRoll) .. _d("QQ") .. (dj.globalRollTime ~= _d("") and (_d("REU") .. dj.globalRollTime .. _d("TQ")) or _d("")))
end

if #qqt == 0 then
table.insert(bu, _d("IwFbDRYVFwYYUgkEQxcKAloKVxhUEARCCg"))
else
table.insert(bu, _d("IwFbDRYVFwYYUgkEQxc") .. table.concat(qqt, _d("SE0")))
end

return table.concat(bu, _d("bg"))
end

function dj.nextMilestone()
local mt = dj.data

if type(mt) ~= _d("EAxWAxI") or type(mt.Milestones) ~= _d("EAxWAxI") or #mt.Milestones == 0 then
return nil
end

local rr = tonumber(mtxf:GetAttribute(_d("LAxGCxQWRQErWAAYCw"))) or 0

return math.min(rr + 1, mt.Milestones[#mt.Milestones])
end

function dj.start(tvig)
local ox = dj.nextMilestone()

if not ox then
return false
end

local tcvv = sfed:FindFirstChild(tvig == 2 and _d("NghHCgM7VhAZWAoxFVgLHwY") or _d("NghHCgM7VhAZWAoxFVgLHw"))

if tcvv and tcvv:IsA(_d("JgRaCxYbWwEoQgoZDQ")) then
pcall(function()
tcvv:Fire(ox, _d("DQNSBhkQQwEyRgAYFA"))
end)
end

local nhfv = sfed:FindFirstChild(tvig == 2 and _d("NxlVHQMwWQIEWgYDHGULAlktFg1DCAgG") or _d("NxlVHQMwWQIEWgYDHGULAlktFg1DCAg"))

if nhfv and nhfv:IsA(_d("JgRaCxYbWwEoQgoZDQ")) then
pcall(function()
nhfv:Fire(ox, _d("DAxGCxQWRQE"), ox)
end)
end

if fu.bossTeams.applyTower then
fu.bossTeams.applyTower(_d("DAxGCxQWRQE"), tvig)
end

dj.pending = true
dj.pendingUntil = os.time() + 10

return pcall(function()
lg.StartBattle:FireServer(_d("DQNSBhkQQwEyRgAYFA"), {
tower = _d("DAxGCxQWRQE"),
milestone = ox,
slot = tvig,
})
end)
end

function dj.floorNow()
local cmy = svub.hardcoreSlot()

if not cmy or not svub.busy(cmy) then
return nil
end

local ina = sfed:FindFirstChild(cmy == 2 and _d("JgxAGxsccBEEBg") or _d("JgxAGxsccBEE"))
local cu = ina and ina:FindFirstChild(_d("NhhaKRsWWBYhVQ0SFQ"))
local ghu = cu and cu.Text or _d("")

return tonumber(ghu:match(_d("OitYABgLEhdGHEoTUh4")))
end

local efnx = {
enabled = true,
nextAt = os.clock() + 300,
jumps = 0,
}

getgenv().ACBXAntiKick = efnx

local iwyd = getgenv().ACBXNoUpdate == true

local jaj = {
enabled = not iwyd,
buildId = "v261102-0312",
interval = 180,
retry = 45,
forceAfter = 900,
applying = false,
checking = false,
pendingVersion = nil,
pendingSince = nil,
cameFrom = nil,
}

getgenv().ACBXUpdater = jaj

local xv = {
enabled = false,
tpToBay = false,

stick = {
enabled = false,
at = 0,
hits = 0,
last = _d("CwtS"),

names = {
[_d("FxldDBw")] = true,
[_d("CBhXBFcKQw0OXw")] = true,
[_d("CBhXBAQNXgcG")] = true,
[_d("CBhXBCgKQw0OXw")] = true,
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
rod = _d("SQ"),
castTime = 0,
tutorialStep = 0,
phase = _d("DQlYCg"),
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
deepPhase = _d("DQlYCg"),
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
equipRod = false,
autoAcc = false,
equipAcc = false,
},
islandAt = 0,
islandMessage = nil,
}

local ghv = Vector3.new(-546.8, 13.9, -40250.1)

if type(getgenv().ACBXFishingCatches) == _d("EAxWAxI") then
xv.catches = getgenv().ACBXFishingCatches
end

xv.totalCatches = 0

for vvlq, olrz in pairs(xv.catches) do
xv.totalCatches = xv.totalCatches + olrz
end

getgenv().ACBXFishingCatches = xv.catches
getgenv().ACBXFishing = xv

xv.catchName = function(xs)
local vq = sdhn.ById[xs]

if vq and vq.name then
return vq.name
end

local afs = aqxw.ById[xs]

if afs and afs.name then
return afs.name
end

return xs
end

local xsbn

xsbn = {
folder = _d("JS52Nw"),
path = _d("JS52N1gaVhAOXAoEV10XAlo"),
at = 0,
save = function()
if type(writefile) ~= _d("AhhaDAMQWAo") then
return false
end

local zmto = pcall(function()
if type(makefolder) == _d("AhhaDAMQWAo") and type(isfile) == _d("AhhaDAMQWAo") and not isfile(xsbn.path) then
pcall(makefolder, xsbn.folder)
end

writefile(xsbn.path, game:GetService(_d("LBlAHyQcRRIEVwo")):JSONEncode({
catches = xv.catches,
totalCatches = xv.totalCatches,
lastCatch = xv.lastCatch,
updatedAt = os.time(),
}))
end)

return zmto
end,
load = function()
if type(readfile) ~= _d("AhhaDAMQWAo") or type(isfile) ~= _d("AhhaDAMQWAo") then
return false
end

local gn, yin = pcall(function()
if not isfile(xsbn.path) then
return nil
end

return readfile(xsbn.path)
end)

if not gn or type(yin) ~= _d("FxlGBhke") or #yin == 0 then
return false
end

local qa
local wypr = pcall(function()
qa = game:GetService(_d("LBlAHyQcRRIEVwo")):JSONDecode(yin)
end)

if not wypr or type(qa) ~= _d("EAxWAxI") or type(qa.catches) ~= _d("EAxWAxI") then
return false
end

for hpbs, px in pairs(qa.catches) do
local gjf = tonumber(px) or 0

if gjf > 0 then
xv.catches[tostring(hpbs)] = math.max(xv.catches[tostring(hpbs)] or 0, gjf)
end
end

xv.totalCatches = 0

for ii, pv in pairs(xv.catches) do
xv.totalCatches = xv.totalCatches + pv
end

return true
end,
}

xsbn.load()
getgenv().ACBXFishingStore = xsbn

local nx = {}

local ke = 0

local function unt()
local yrdg = {}

for fgx, kpj in ipairs(workspace:GetDescendants()) do
if kpj:IsA(_d("JgxHCicYRRA")) and kpj.Name == _d("MwxACgU") then
table.insert(yrdg, kpj)
end
end

nx = yrdg
ke = os.clock()
end

local function yfz(ucv)
if type(ucv) ~= _d("EAxWAxI") then
return false
end

xv.loaded = true
xv.dirty = false
xv.fishing = ucv.fishing == true
xv.autoOn = ucv.autoOn == true
xv.autoUnlocked = ucv.autoUnlocked == true
xv.casts = tonumber(ucv.casts) or xv.casts
xv.totalCasts = tonumber(ucv.totalCasts) or xv.totalCasts
xv.luck = tonumber(ucv.luck) or xv.luck
xv.rod = tostring(ucv.equippedRod or xv.rod)
xv.castTime = tonumber(ucv.castTime) or xv.castTime
xv.tutorialStep = tonumber(ucv.tutorialStep) or xv.tutorialStep

if type(ucv.rods) == _d("EAxWAxI") then
xv.rodsOwned = ucv.rods
end

if type(ucv.baits) == _d("EAxWAxI") then
xv.baitsOwned = ucv.baits
end

if type(ucv.boats) == _d("EAxWAxI") then
xv.boatsOwned = ucv.boats
end

if type(ucv.mats) == _d("EAxWAxI") then
xv.mats = ucv.mats
end

if ucv.bootOwned ~= nil then
xv.boot.owned = ucv.bootOwned == true
end

if ucv.bootEquipped ~= nil then
xv.boot.equipped = ucv.bootEquipped == true
end

if ucv.equippedBait ~= nil then
xv.equippedBait = tostring(ucv.equippedBait)
end

if ucv.activeBoat ~= nil then
xv.activeBoat = tostring(ucv.activeBoat)
end

xv.boatTier = tonumber(ucv.boatTier) or xv.boatTier
xv.islandLocked = ucv.islandLocked == true
xv.rebirths = tonumber(ucv.rebirths) or xv.rebirths

if type(ucv.rebirthCards) == _d("EAxWAxI") then
xv.rebirthCards = ucv.rebirthCards
end

xv.lastSync = os.time()

return true
end

local function bgbb()
local zne, rhp = pcall(function()
return lg.FishingGetState:InvokeServer()
end)

if not zne or type(rhp) ~= _d("EAxWAxI") then
xv.loaded = false
return false
end

return yfz(rhp)
end

local emzj = false

local function mfzm()
if emzj then
return false
end

local ur = mtxf.Character

if not ur then
return false
end

if ur:FindFirstChild(_d("IgRHBx4XUDYCUA")) then
return true
end

local dq = mtxf:FindFirstChild(_d("JgxXBAcYVA8"))
local kyn = dq and dq:FindFirstChild(_d("IgRHBx4XUDYCUA"))
local za = ur:FindFirstChildOfClass(_d("LBhZDhkWXgA"))

if not (kyn and za) then
return false
end

return pcall(function()
za:EquipTool(kyn)
end)
end

local function rsc()
local yrkv = mtxf.Character
local nial = yrkv and yrkv:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not nial then
return nil
end

local fjx = RaycastParams.new()
fjx.FilterType = Enum.RaycastFilterType.Exclude
fjx.FilterDescendantsInstances = { yrkv }

local wcg = 24
local nxzu = {}
local gx = 0

for tewr = 0, wcg - 1 do
local kh = math.rad(tewr * (360 / wcg))
local dhj = Vector3.new(math.sin(kh), 0, math.cos(kh))
local jbw = nial.Position + dhj * 20 + Vector3.new(0, 40, 0)
local lao = workspace:Raycast(jbw, Vector3.new(0, -120, 0), fjx)
local hphe = lao and (nial.Position.Y - lao.Position.Y) or 120

nxzu[tewr] = hphe > 12

if nxzu[tewr] then
gx = gx + 1
end
end

if gx == 0 then
return nil
end

local sjih, da = nil, 0

for gvvl = 0, wcg - 1 do
if nxzu[gvvl] and not nxzu[(gvvl - 1) % wcg] then
local bpsf = 0

while bpsf < wcg and nxzu[(gvvl + bpsf) % wcg] do
bpsf = bpsf + 1
end

if bpsf > da then
sjih = gvvl
da = bpsf
end
end
end

if not sjih then
return nil
end

local eqra = sjih + (da - 1) / 2
local qqc = math.rad(eqra * (360 / wcg))

return Vector3.new(math.sin(qqc), 0, math.cos(qqc))
end

local function vc()
local sk = mtxf.Character
local lmlf = sk and sk:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not lmlf then
return nil
end

if #nx == 0 or os.clock() - ke > 20 then
unt()
end

local otu, ipt = nil, math.huge

for ucah, nsju in ipairs(nx) do
if nsju.Parent then
local lmp = (nsju.Position - lmlf.Position).Magnitude

if lmp < ipt then
ipt = lmp
otu = nsju
end
end
end

if not otu or ipt > 25 then
local wv = rsc()

if wv then
return wv
end
end

if not otu then
return nil
end

local kbp = Vector3.new(otu.Position.X - lmlf.Position.X, 0, otu.Position.Z - lmlf.Position.Z)

if kbp.Magnitude < 0.05 then
return Vector3.new(0, 0, -1)
end

return kbp.Unit
end

local function sc()
local hwq = mtxf.Character
local hoj = hwq and hwq:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not hoj then
return nil
end

local wpzf = hoj.CFrame.LookVector
local yfpg = Vector3.new(wpzf.X, 0, wpzf.Z)

if yfpg.Magnitude < 0.05 then
return nil
end

return yfpg.Unit
end

local function qtay()
local qebm = mtxf.Character
local zl = qebm and qebm:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not zl then
return false
end

local nt = ghv
local iz = RaycastParams.new()
iz.FilterType = Enum.RaycastFilterType.Exclude
iz.FilterDescendantsInstances = { qebm }

local eaos = workspace:Raycast(ghv + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), iz)

if eaos and eaos.Instance.Name ~= _d("MwxACgU") then
nt = Vector3.new(ghv.X, eaos.Position.Y + 3, ghv.Z)
end

zl.CFrame = CFrame.new(nt)
task.wait(0.5)
unt()

return true
end

local function dk()
local zu = mtxf.Character
local skip = zu and zu:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not skip then
return false
end

local hqku = Vector3.new(ghv.X - skip.Position.X, 0, ghv.Z - skip.Position.Z)
local nse = hqku.Magnitude

if nse < 2 then
return false
end

local cze = hqku.Unit

if nse > 12 then
local sycm = math.min(14, nse - 6)
local cp = skip.Position + cze * sycm
local ptc = RaycastParams.new()
ptc.FilterType = Enum.RaycastFilterType.Exclude
ptc.FilterDescendantsInstances = { zu }

local dr = workspace:Raycast(cp + Vector3.new(0, 25, 0), Vector3.new(0, -80, 0), ptc)

if dr and dr.Instance.Name ~= _d("MwxACgU") then
local wsqh = dr.Position.Y + 3.2

if math.abs(wsqh - skip.Position.Y) <= 10 then
local pbhp = Vector3.new(dr.Position.X, wsqh, dr.Position.Z)
skip.CFrame = CFrame.lookAt(pbhp, pbhp + cze)

return true
end
end
end

skip.CFrame = CFrame.lookAt(skip.Position, skip.Position + cze)

return true
end

local xqkh = {}

xqkh.surfaceWait = 8

xqkh.walking = false
xqkh.walkStartedAt = 0

xqkh.islandHold = Vector3.new(-7384, 16.3, -40539)

xqkh.custom = nil
xqkh.customIsland = nil

xqkh.islandAnchors = {
{ id = _d("BQ9VARMWWQEJawYEFVYKCQ"), x = -3800 },
{ id = _d("EBpdASgbUgUOXAoE"), x = -6180 },
{ id = _d("EwRaCxoQWwgyXRwbHA"), x = -7480 },
}

xqkh.arrivals = {
abandoned_island = Vector3.new(-3825, 24, -40260),
twin_beaches = Vector3.new(-6180, 40, -40350),
windmill_isle = Vector3.new(-7480, 30, -40350),
lobby = Vector3.new(-499, 17, -40234),
}

function xqkh.islandOf(gms)
if not gms then
return _d("CAJWDQ4")
end

if gms.X > -4500 then
return _d("CAJWDQ4")
end

local io, tey = _d("BQ9VARMWWQEJawYEFVYKCQ"), math.huge

for dni, mm in ipairs(xqkh.islandAnchors) do
local lp = math.abs(gms.X - mm.x)

if lp < tey then
io = mm.id
tey = lp
end
end

return io
end

xqkh.savedVersion = 2

do
local xsrh = getgenv().ACBXDeepSpot

if type(xsrh) == _d("EAxWAxI") and xsrh.v == xqkh.savedVersion
and tonumber(xsrh.X) and tonumber(xsrh.Y) and tonumber(xsrh.Z) then
xqkh.custom = Vector3.new(tonumber(xsrh.X), tonumber(xsrh.Y), tonumber(xsrh.Z))
xqkh.customIsland = xsrh.island
end
end

function xqkh.spot()
return xqkh.custom or xqkh.islandHold
end

function xqkh.dropStale()
if not xqkh.custom then
return false
end

if xqkh.zoneAt(xqkh.custom) then
return false
end

xqkh.custom = nil
xqkh.customIsland = nil
getgenv().ACBXDeepSpot = nil

return true
end

function xqkh.capture()
local mrdf = mtxf.Character
local yzpp = mrdf and mrdf:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not yzpp then
return false, _d("KgIUDB8YRQUOQAoFWUMLTUYKFh0XBU1HHxgNFwIfWwJZ")
end

local oif = yzpp.Position
local pzhn = xqkh.floorAt(Vector3.new(oif.X, oif.Y + 10, oif.Z))

if not pzhn then
return false, _d("NxlVARNZWApNRwAbEFNECkYAAhdTRAtdHQQNF0lNQAceChcXHVsbVxFWF01aAFcfWwsCRk8DFhcHDEcbVx9FCwAa")
end

local bv = xqkh.zoneAt(oif)

if not bv then
return false, _d("MAVdHFcKRwsZFAYEWVgRGUcGExwXARtRHQ5ZUQ0eXAYZHhcWBFoIV1QXFxlVARNZWBIIRk8DEVJEGlUbEgsXAgRGHANX")
end

xqkh.custom = oif
xqkh.customIsland = xqkh.islandOf(oif)

getgenv().ACBXDeepSpot = {
X = oif.X,
Y = oif.Y,
Z = oif.Z,
island = xqkh.customIsland,
v = xqkh.savedVersion,
}

return true, _d("NwxCChNZQwwER08ECVgQTVUcVw1fAU1QChIJGhMMQAoFWV8LAVBPXw") .. tostring(bv.name) .. _d("TUM")
end

function xqkh.zoneTable()
local dp = {}

if rsa and type(rsa.Zones) == _d("EAxWAxI") then
for imm, fc in ipairs(rsa.Zones) do
dp[#dp + 1] = {
id = tostring(fc.id),
name = tostring(fc.name or fc.id),
half = tonumber(fc.half) or 0,
luck = tonumber(fc.luck) or 0,
index = tonumber(fc.index) or 0,
boatTier = tonumber(fc.boatTier) or 0,
}
end
end

table.sort(dp, function(eqa, te)
return eqa.index < te.index
end)

return dp
end

function xqkh.zoneAt(cco)
local smze = rsa and rsa.ZoneCenter
local bld = xqkh.zoneTable()

if not (smze and cco and #bld > 0) then
return nil
end

local adqv = math.max(math.abs(cco.X - smze.X), math.abs(cco.Z - smze.Z))

for ews, pzsb in ipairs(bld) do
if adqv < pzsb.half then
return pzsb
end
end

return nil
end

function xqkh.current()
local uj = mtxf.Character
local vrbo = uj and uj:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

return vrbo and xqkh.zoneAt(vrbo.Position) or nil
end

function xqkh.sync()
local sh = xqkh.current()
xv.zoneId = sh and sh.id or nil
end

function xqkh.floorAt(xwgq)
local lws = mtxf.Character
local mob = RaycastParams.new()
mob.FilterType = Enum.RaycastFilterType.Exclude
mob.FilterDescendantsInstances = { lws }

local sv = workspace:Raycast(Vector3.new(xwgq.X, xwgq.Y + 20, xwgq.Z), Vector3.new(0, -80, 0), mob)

if sv and sv.Instance.Name ~= _d("MwxACgU") then
return sv
end

return nil
end

function xqkh.ensureSpotMap()
local ar = xqkh.spot()
local jls = Vector3.new(ar.X, ar.Y + 20, ar.Z)

if xqkh.floorAt(jls) then
return true
end

local dy = workspace:FindFirstChild(_d("KQxEHA"))

if dy and dy:FindFirstChild(_d("JwJVHAMYWygCVg0O")) then
if os.clock() - (xqkh.hopAt or 0) > 1 then
xqkh.hopAt = os.clock()
xqkh.hop(ar)
xv.lastMessage = _d("KQJCBhkeFxACFBsfHBcACFEfWg5WEAhGTwQJWBA")
end

return false
end

if os.clock() - (xqkh.islandAskedAt or 0) > 1.2 then
xqkh.islandAskedAt = os.clock()

local pjhc = xqkh.customIsland or xqkh.islandOf(ar)

if pjhc == _d("CAJWDQ4") then
pcall(function()
lg.TeleportToWorld:FireServer(_d("CAJWDQ4"))
end)
else
pcall(function()
lg.FishingIslandTeleport:FireServer(_d("EwxNHxgQWRA"), pjhc)
end)
end

xv.lastMessage = _d("MAxfBhkeFxAFUU8QGFoBSkdPAxxbAR1bHQNZQwtNQAcSWVMBCERCABhDAR8UAhYJ")
end

return false
end

function xqkh.hop(qoo)
local fdkv = mtxf.Character
local xyql = fdkv and fdkv:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))
local ja = fdkv and fdkv:FindFirstChildOfClass(_d("LBhZDhkWXgA"))

if not (xyql and ja) then
return false
end

if ja.SeatPart then
pcall(function()
ja.Sit = false
end)
end

xyql.AssemblyLinearVelocity = Vector3.zero
xyql.CFrame = CFrame.new(Vector3.new(qoo.X, qoo.Y + 8, qoo.Z))

return true
end

function xqkh.faceWater()
local xdz = mtxf.Character
local pego = xdz and xdz:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not pego then
return false
end

local yjnb = vc()

if not yjnb then
local fo = rsa and rsa.ZoneCenter

if fo then
local lt = Vector3.new(fo.X - pego.Position.X, 0, fo.Z - pego.Position.Z)

yjnb = lt.Magnitude > 1 and lt.Unit or nil
end
end

if not yjnb then
return false
end

pego.CFrame = CFrame.lookAt(pego.Position, pego.Position + yjnb)

return true
end

function xqkh.aimWater(pkpn)
local oewk = mtxf.Character
local afq = oewk and oewk:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not afq then
return false
end

if pkpn then
unt()
end

local it = afq.CFrame.LookVector
local nthq = Vector3.new(it.X, 0, it.Z)
local tqe = vc()

if not tqe then
return false
end

if nthq.Magnitude > 0.05 and nthq.Unit:Dot(tqe) > 0.985 then
return true
end

afq.CFrame = CFrame.lookAt(afq.Position, afq.Position + tqe)

return true
end

function xqkh.hold(cr)
local zd = mtxf.Character
local vx = zd and zd:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))
local gle = zd and zd:FindFirstChildOfClass(_d("LBhZDhkWXgA"))

if not (vx and gle) then
return false
end

if gle.SeatPart then
pcall(function()
gle.Sit = false
end)
end

local ssq = xqkh.floorAt(cr)

if not ssq then
return false
end

vx.AssemblyLinearVelocity = Vector3.zero
vx.CFrame = CFrame.new(Vector3.new(cr.X, ssq.Position.Y + 3.2, cr.Z))

pcall(xqkh.aimWater, true)

xv.phase = _d("DQlYCg")
xv.nextCastAt = 0

return true
end

function xqkh.dive()
local iv = xqkh.spot()

if not xqkh.ensureSpotMap() then
return false
end

if not xqkh.hold(iv) then
return false
end

xqkh.islandAskedAt = 0

local ecr = xqkh.zoneAt(iv)

xv.lastMessage = ecr
and (_d("LAJYCx4XUEQZXApXHVIBHRkYFg1SFk1HHxgNF0w") .. tostring(ecr.name) .. _d("TQ"))
or _d("LAJYCx4XUEQZXApXHVIBHRkYFg1SFk1HHxgN")

task.wait(0.25)
xqkh.sync()
xv.deepDiveAt = os.clock() + 2

return true
end

function xqkh.walk()
local oae = mtxf.Character
local axlo = oae and oae:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if xqkh.walking and os.clock() - (xqkh.walkStartedAt or 0) < 60 then
return false
end

if not axlo then
return false
end

local sf = xqkh.spot()

if (axlo.Position - Vector3.new(sf.X, axlo.Position.Y, sf.Z)).Magnitude <= 8 then
xv.phase = _d("DQlYCg")
xv.nextCastAt = 0

return true
end

xqkh.walking = true
xqkh.walkStartedAt = os.clock()
xv.deepPhase = _d("EwxYBA")
xv.deepStageAt = os.clock()
xv.lastMessage = _d("MwxYBB4XUEQZW08DEVJECVEKBxxEEE1DDgMcRUQeRAAD")

task.spawn(function()
local tor = oae and oae:FindFirstChildOfClass(_d("LBhZDhkWXgA"))

local xnb, smb = pcall(function()

local wip = workspace:FindFirstChild(_d("KQxEHA"))
local hrt = xqkh.customIsland or xqkh.islandOf(sf)
local pa = (axlo.Position - Vector3.new(sf.X, axlo.Position.Y, sf.Z)).Magnitude

if pa > 400 then
if not (wip and wip:FindFirstChild(_d("JwJVHAMYWygCVg0O"))) then
pcall(function()
lg.TeleportToWorld:FireServer(_d("CAJWDQ4"))
end)

local tklp = os.clock() + 20

while xv.deepWalk and os.clock() < tklp do
local gcfu = workspace:FindFirstChild(_d("KQxEHA"))

if gcfu and gcfu:FindFirstChild(_d("JwJVHAMYWygCVg0O")) then
break
end

task.wait(0.5)
end
end

if xv.deepWalk then
local zaj = xqkh.arrivals and xqkh.arrivals[hrt]

if zaj then
xqkh.hop(zaj)
else
local xu = Vector3.new(sf.X - axlo.Position.X, 0, sf.Z - axlo.Position.Z)
local eg = xu.Magnitude > 1 and xu.Unit or Vector3.new(1, 0, 0)

xqkh.hop(Vector3.new(sf.X - eg.X * 120, sf.Y, sf.Z - eg.Z * 120))
end

task.wait(1.5)
end
end

if xv.deepWalk and tor then

local om = (axlo.Position - Vector3.new(sf.X, axlo.Position.Y, sf.Z)).Magnitude
local ymlb = os.clock() + math.clamp(om / 8, 30, 600)
local zlr = 0
local xk = axlo.Position
local kepu = os.clock()

while xv.deepWalk and os.clock() < ymlb do
local ep = Vector3.new(sf.X - axlo.Position.X, 0, sf.Z - axlo.Position.Z)

if ep.Magnitude <= 3 then
break
end

if os.clock() - zlr >= 0.25 then
tor:MoveTo(Vector3.new(sf.X, axlo.Position.Y, sf.Z))
zlr = os.clock()
end

if os.clock() - kepu >= 1.2 then
if (axlo.Position - xk).Magnitude < 2 then
tor.Jump = true
end

xk = axlo.Position
kepu = os.clock()
end

task.wait(0.1)
end

tor:MoveTo(axlo.Position)
end
end)

xqkh.walking = false

if not xnb then
xv.deepPhase = _d("DQlYCg")
xv.deepStageAt = os.clock()
xv.lastMessage = _d("MwxYBFcNWEQpUQoHHEQQTWMOAxxFRAtVBhscU15N") .. tostring(smb)

return
end

if not xv.deepWalk then
return
end

local rxzu = Vector3.new(axlo.Position.X - sf.X, 0, axlo.Position.Z - sf.Z)

if rxzu.Magnitude <= 6 then

pcall(xqkh.aimWater, true)
xv.phase = _d("DQlYCg")
xv.nextCastAt = 0
xv.deepPhase = _d("DAJYCw")
xv.deepStageAt = os.clock()
xqkh.sync()
xv.lastMessage = _d("MwxYBBIdFxACFBsfHBcXDEIKE1lTAQhEQgAYQwEfFBwHFkM")
else

xv.deepPhase = _d("DQlYCg")
xv.deepStageAt = os.clock()
xv.lastMessage = _d("JwJBAxNZWQsZFBgWFVxEGVtPAxFSRAlRCgccRBBNQw4DHEVEHkQAA1kaRBlGFh4XUEQMUw4eFw")
end
end)

return false
end

function xqkh.settle()
for pipy = 1, 30 do
if not xv.deepZone or xv.deepWalk then
return false
end

if xqkh.dive() then
return true
end

task.wait(1)
end

return false
end

function xqkh.surface()
local tic = mtxf.Character
local lqbn = tic and tic:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not lqbn then
return false
end

local ixn = RaycastParams.new()
ixn.FilterType = Enum.RaycastFilterType.Exclude
ixn.FilterDescendantsInstances = { tic }

local mz = workspace:Raycast(ghv + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), ixn)
local ddb = ghv

if mz and mz.Instance.Name ~= _d("MwxACgU") then
ddb = Vector3.new(ghv.X, mz.Position.Y + 3, ghv.Z)
end

lqbn.CFrame = CFrame.new(ddb)
xv.phase = _d("DQlYCg")
xv.nextCastAt = 0

return true
end

function xv.gotoIsland()
local rxv = mtxf.Character
local rsye = rxv and rxv:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))
local foq = workspace:FindFirstChild(_d("LR5YDhkdcQ0eXAoFFFYKI2Qs"), true)

if not (rsye and foq) then
return false
end

local wrk = foq:GetPivot()
local kisz = RaycastParams.new()
kisz.FilterType = Enum.RaycastFilterType.Exclude
kisz.FilterDescendantsInstances = { rxv, foq }

local dzd = nil
local emg = -math.huge

for ysuk, hl in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local sir = workspace:Raycast(wrk.Position + hl + Vector3.new(0, 30, 0), Vector3.new(0, -120, 0), kisz)

if sir and sir.Position.Y > emg then
dzd = sir
emg = sir.Position.Y
end
end

if dzd then
rsye.CFrame = CFrame.new(Vector3.new(dzd.Position.X, emg + 3.5, dzd.Position.Z))
else
rsye.CFrame = CFrame.new(wrk.Position + Vector3.new(0, 4, 0))
end

xv.phase = _d("DQlYCg")
xv.nextCastAt = 0

return true
end

function xqkh.cycle()
local wqpd = os.clock()
local xjw = xv.deepPhase or _d("DQlYCg")
local mwd = tonumber(xv.deepStageAt) or 0

if wqpd < math.max(xv.shopTripUntil or 0, xv.tpHoldUntil or 0) then
return
end

if xjw == _d("DQlYCg") then
xv.deepPhase = _d("DAJYCw")
xv.deepStageAt = wqpd

if xv.deepWalk then
xqkh.walk()
else
xqkh.dive()
end

return
end

if xjw == _d("EwxYBA") then
return
end

if xjw == _d("DAJYCw") then
local bpjp = xqkh.current()

local wb = xqkh.zoneAt(xqkh.spot())

if bpjp and not mtxf:GetAttribute(_d("NxpdAhoQWQM")) and wqpd - (xv.deepAimAt or 0) > 2 then
xv.deepAimAt = wqpd
pcall(xqkh.aimWater)
end

if mtxf:GetAttribute(_d("NxpdAhoQWQM")) then
if xv.deepWalk then

xv.deepPhase = _d("DQlYCg")
xv.deepStageAt = wqpd
else
xv.deepPhase = _d("AARE")
xv.deepStageAt = wqpd
xv.lastMessage = _d("NxpdAhoQWQNNVRtXDV8BTVAKEgkXFx1bG1dUFxcYRgkWGlIATVIABVlWDR8")
end
elseif not bpjp or (wb and bpjp.index < wb.index) then

xv.deepPhase = _d("DQlYCg")
xv.deepStageAt = wqpd
end

return
end

if xjw == _d("AARE") then
xqkh.surface()
xv.deepPhase = _d("FxhGCRYaUg")
xv.deepStageAt = wqpd

return
end

if xjw == _d("FxhGCRYaUg") and wqpd - mwd >= xqkh.surfaceWait then
xv.deepPhase = _d("DQlYCg")
end
end

local function uua()
local bkjy = mtxf.Character
local axn = bkjy and bkjy:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not axn then
return false
end

return (axn.Position - ghv).Magnitude <= 12
end

local function hor()
if not mfzm() then
return false
end

local oq = pcall(function()
lg.FishingSetAuto:FireServer(true)
end)

xv.usingGameAuto = oq
return oq
end

local function pxhv()
xv.usingGameAuto = false

pcall(function()
lg.FishingSetAuto:FireServer(false)
end)

pcall(function()
lg.FishingStop:FireServer()
end)
end

function xv.recover()
xv.phase = _d("DQlYCg")
xv.nextCastAt = 0
xv.deepPhase = _d("DQlYCg")
xv.deepStageAt = 0
xv.deepDiveAt = 0
xv.waterRefusals = 0
xv.usingGameAuto = false
xv.castMark = xv.totalCasts
xv.castMarkAt = os.clock()

pcall(pxhv)
pcall(mfzm)

if xv.deepZone and not xqkh.current() then

pcall(function()
lg.TeleportToWorld:FireServer(_d("CAJWDQ4"))
end)
elseif xv.tpToBay and not uua() then
pcall(qtay)
end

xv.lastMessage = _d("IgRHBx4XUEQeQA4bFVIATRlPBRxEARkUGx8cFxMMQAoFWVYKCRQbGBZcRBlcClceVgkIExxXFVgGD01PBRZA")
end

local function tnxj()
if not mfzm() then
xv.lastMessage = _d("KgIUCR4KXw0DU08FFlNEBFpPAxFSRA9VDBwJVgcG")
return false
end

local hx = sc()
local ikh = vc()
local fwz = hx or ikh

if not fwz then
xv.lastMessage = _d("KgIUGBYNUhZNUgACF1NEA1EOBRtO")
return false
end

if hx and ikh and hx:Dot(ikh) < 0.25 then
fwz = ikh
end

xv.phase = _d("BwxHGx4XUA")
xv.lastMessage = nil
xv.watchdogAt = os.clock() + 25

local yftk, tckz = pcall(function()
lg.FishingThrow:FireServer(1, fwz)
end)

if not yftk then
xv.phase = _d("DQlYCg")
xv.lastMessage = tostring(tckz)
xv.nextCastAt = os.clock() + 3
return false
end

return true
end

local aq = lg.FishingUpdate.OnClientEvent:Connect(function(fsq, mat)
xv.dirty = true

if fsq == _d("NxlVGxI") then
if type(mat) == _d("EAxWAxI") then
xv.autoOn = mat.autoOn == true
end

return
end

if fsq == _d("JwxHGw") then
xv.phase = _d("EwxdGx4XUCYEQAo")
xv.waterRefusals = 0
return
end

if fsq == _d("JgRACg") then
local vfgb = type(mat) == _d("EAxWAxI") and tonumber(mat.warning) or 1

xv.phase = _d("FghRAx4XUA")
xv.watchdogAt = os.clock() + 15

task.delay(math.max(0.3, vfgb + 0.8), function()
if xv.phase ~= _d("FghRAx4XUA") then
return
end

pcall(function()
lg.FishingReel:FireServer(true, 120)
end)

xv.phase = _d("FghHABsPXgoK")
end)

return
end

if fsq == _d("JwxADB8") then

local frq = type(mat) == _d("EAxWAxI") and tonumber(mat.totalCasts) or nil
local uyq = tonumber(getgenv().ACBXFishingCatchMark) or 0

if frq and frq <= uyq and uyq - frq < 25 then
return
end

if frq then
getgenv().ACBXFishingCatchMark = frq
end

local kkuc = type(mat) == _d("EAxWAxI") and tostring(mat.itemId) or _d("EQNfARgOWQ")
local qfgp = xv.catchName(kkuc)

xv.catches[kkuc] = (xv.catches[kkuc] or 0) + 1
xv.totalCatches = (xv.totalCatches or 0) + 1

local dkyp = type(mat) == _d("EAxWAxI") and mat.chest or nil

if type(dkyp) == _d("EAxWAxI") and dkyp.itemId then
local hgy = tostring(dkyp.itemId)

xv.catches[hgy] = (xv.catches[hgy] or 0) + 1
end

if os.clock() - (xsbn.at or 0) >= 5 then
xsbn.at = os.clock()
xsbn.save()
end
xv.lastCatch = qfgp
xv.lastMessage = nil
xv.phase = _d("DQlYCg")
xv.nextCastAt = os.clock() + 2.5

if type(mat) == _d("EAxWAxI") then
xv.casts = tonumber(mat.casts) or xv.casts
xv.totalCasts = tonumber(mat.totalCasts) or xv.totalCasts
xv.autoUnlocked = mat.autoUnlocked == true or xv.autoUnlocked
end

return
end

if fsq == _d("JRhAADgfUQ") then

xv.usingGameAuto = false
xv.phase = _d("DQlYCg")
xv.nextCastAt = os.clock() + 1
return
end

if fsq == _d("IR5XDgccUw") then
xv.phase = _d("DQlYCg")
xv.lastMessage = _d("MAVRTxEQRAxNUwADWVYTDE0")
xv.nextCastAt = os.clock() + 2.5
return
end

if fsq == _d("NgheChQNUgA") then
xv.phase = _d("DQlYCg")

local smmz = type(mat) == _d("EAxWAxI") and tostring(mat.message) or _d("JwxHG1cLUg4IVxsSHQ")
xv.lastMessage = smmz

if smmz:lower():find(_d("EwxACgU"), 1, true) then
xv.waterRefusals = (xv.waterRefusals or 0) + 1

if xv.waterRefusals >= 2 then
xv.waterRefusals = 0

if dk() then
xv.lastMessage = _d("NghSGgQcU0QZQwYUHBdJTUAaBRdSAE1WDhQSFxACQw4FHRcQBVFPABhDAR8")
xv.nextCastAt = os.clock() + 1.5
return
end
end

xv.nextCastAt = os.clock() + 8
return
end

xv.waterRefusals = 0
xv.nextCastAt = os.clock() + 3
return
end
end)

local function jxy()
if not xv.loaded then
return _d("NghVCx4XUEQLXRwfEFkDTUcbFg1SSkMa")
end

local zq = xv.autoUnlocked == true
or (xv.totalCasts or 0) > 0
or (xv.tutorialStep or 0) > 0
local znf = rsa and rsa.RodsById and rsa.RodsById[xv.rod]
local ofcb = znf and tostring(znf.name) or tostring(xv.rod)
local hgls = math.floor((tonumber(xv.luck) or 0) * 100 + 0.5)

local ogrf = {
_d("NgJQVVc") .. ofcb,
_d("KBhXBE1Z") .. hgls .. _d("QQ"),
}

local mfcm = xqkh.current()

if mfcm then
table.insert(ogrf, _d("PgJaCk1Z") .. mfcm.name .. _d("REUf") .. tostring(math.floor(mfcm.luck * 100 + 0.5)) .. _d("QU1YGhQSHg"))
end

table.insert(ogrf, _d(""))
table.insert(ogrf, _d("JwxHGwRZQwtNRx8SF1NeTQ") .. vggk(xv.casts or 0))
table.insert(ogrf, _d("MAJADhtZVAUeQBxNWQ") .. vggk(xv.totalCasts or 0))

table.insert(ogrf, _d(""))
table.insert(ogrf, _d("IgRHBx4XUEQYWgMYGlwBCQ5P") .. (zq and _d("HQhH") or _d("CgI")))
table.insert(ogrf, _d("JRhAAFofXhcFFBoHHkUFCVFVVw") .. (xv.autoUnlocked and _d("CxpaChM") or _d("CgJATxgOWQEJ")))

if xv.enabled then
local gpbg = xv.usingGameAuto and _d("AwxZClcYQhAC") or tostring(xv.phase)

if gpbg == _d("EwxdGx4XUCYEQAo") then
gpbg = _d("EwxdGx4XUEQLWx1XGBcGBEAK")
elseif gpbg == _d("FghRAx4XUA") then
gpbg = _d("FghRAx4XUEQEWg")
elseif gpbg == _d("FghHABsPXgoK") then
gpbg = _d("CAxaCx4XUEQEQA")
end

table.insert(ogrf, _d(""))
table.insert(ogrf, _d("JRhAAFc/XhcFDk8") .. gpbg)

local ixb = ifi.worldBoss

if ixb and type(ixb.hasWork) == _d("AhhaDAMQWAo") and ixb.enabled and ixb.hasWork() then
table.insert(ogrf, _d("LAJYCx4XUF5NUwMYG1YITVYABAoXDR4UGgdZHxYIRxoaHEREAlpPHg1ERA5bABsdWBMDHQ"))
end

if xv.lastCatch then
table.insert(ogrf, _d("KAxHG1caVhAOXFVX") .. xv.lastCatch)
end
end

if xv.lastMessage then
table.insert(ogrf, _d(""))
table.insert(ogrf, _d("KgJACk1Z") .. xv.lastMessage)
end

return table.concat(ogrf, _d("bg"))
end

local function cwek()
local fqiw = 0

for jhk, xdmv in pairs(xv.catches) do
local zthn = sdhn.ById[jhk]

if not (zthn and zthn.type == _d("BwVRHAM")) then
fqiw = fqiw + xdmv
end
end

return fqiw
end

local function tkzv()
local kjkl = {}

for xo, qjik in pairs(xv.catches) do
local mhj = sdhn.ById[xo]
local ev = mhj and mhj.type == _d("BwVRHAM") or false

table.insert(kjkl, {
name = xv.catchName(xo),
count = qjik,
chest = ev,
rank = ev and (tonumber(mhj.border) or 1) or 0,
})
end

if #kjkl == 0 then
return _d("KgJABx4XUEQOVRoQEUNEFFEbWXM9MBhGAVcWWUQsQRsYWXENHlxPFhdTRBlcClcNVggBTU8EDVYWGUdPHxxFAUMUJgNZRAUbURxXEEMXCFgJW1lEC01dG1caVhYfXQoEWVgSCEZPGRxPEE1HCgQKXgsDGg")
end

table.sort(kjkl, function(xse, gwtl)
if xse.chest ~= gwtl.chest then
return xse.chest
end

if xse.chest and xse.rank ~= gwtl.rank then
return xse.rank > gwtl.rank
end

if xse.count ~= gwtl.count then
return xse.count > gwtl.count
end

return xse.name < gwtl.name
end)

local kzj = {}

for voy, ulzw in ipairs(kjkl) do
table.insert(kzj, ulzw.name .. _d("RI+0+1c") .. vggk(ulzw.count))
end

local obrw = {
table.concat(kzj, _d("bmc")),
_d(""),
_d("MAJADhtZVAUYUwcDQxc") .. vggk(cwek()) .. _d("RK+DTw") .. #kjkl .. _d("RAZdARMK"),
}

if xv.lastCatch then
table.insert(obrw, _d("KAxHG1caVhAOXFVX") .. tostring(xv.lastCatch))
end

return table.concat(obrw, _d("bg"))
end

local ej = {
rod = Vector3.new(-493, 18, -40254),
bait = Vector3.new(-493, 18, -40254),
}

local function ub(oiz)
if not rsa then
return {}
end

local op

if oiz == _d("FgJQ") then
op = rsa.RodsById
elseif oiz == _d("BgxdGw") then
op = rsa.BaitsById
else
op = nil
end

local mzyl = {}

for db, ksps in pairs(op or {}) do
if not ksps.crafted then
table.insert(mzyl, {
id = tostring(db),
name = tostring(ksps.name or db),
cost = tonumber(ksps.cost) or 0,
luck = tonumber(ksps.luck) or 0,
index = tonumber(ksps.index) or 0,
island = ksps.shop == _d("DR5YDhkd"),
})
end
end

table.sort(mzyl, function(xcsj, qjvd)
if xcsj.index ~= qjvd.index then
return xcsj.index < qjvd.index
end

return xcsj.cost < qjvd.cost
end)

return mzyl
end

local function bnh(vat)
if vat == _d("FgJQ") then
return xv.rodsOwned or {}
elseif vat == _d("BgxdGw") then
return xv.baitsOwned or {}
end

return {}
end

local function iav(gw)
if gw == _d("FgJQ") then
return xv.rod
elseif gw == _d("BgxdGw") then
return xv.equippedBait
end

return nil
end

local function vdfd(nlhz)
local zwz = bnh(nlhz)
local wpo = nil

for bmen, pni in ipairs(ub(nlhz)) do
if zwz[pni.id] == true then
wpo = pni
end
end

return wpo
end

local function kzqf(rgsc)
if rgsc.island and xv.islandLocked then
return false
end

return true
end

local function zpak(vuia)
local vm = bnh(vuia)
local seq = xv.casts or 0
local fg = nil

for onpr, qflu in ipairs(ub(vuia)) do
if vm[qflu.id] ~= true and qflu.cost <= seq and kzqf(qflu) then
fg = qflu
end
end

return fg
end

local function aub(vwzb)
local gg = bnh(vwzb)

for hit, vhh in ipairs(ub(vwzb)) do
if gg[vhh.id] ~= true and kzqf(vhh) then
return vhh
end
end

return nil
end

local function dfby(clc, to)
if not to then
return _d("CgJaClcWQAoIUA")
end

return to.name .. _d("REUf") .. tostring(math.floor(to.luck * 100 + 0.5)) .. _d("QU1YGhQSHg")
end

local function ncx()
if not rsa then
return _d("IgRHBx4XUCAMQA5XF1gQTVIAAhdTREAUHB8WR0QJVRsWWUIKDEIOHhVWBgFRQQ")
end

local dhaz = {}
local ylbp = { rod = _d("NgJQ"), bait = _d("JgxdGw") }

for lewb, sknp in ipairs({ _d("FgJQ"), _d("BgxdGw") }) do
local qvv = vdfd(sknp)
local zylc = nil

for fw, igdd in ipairs(ub(sknp)) do
if igdd.id == iav(sknp) then
zylc = igdd.name
end
end

if #dhaz > 0 then
table.insert(dhaz, _d(""))
end

table.insert(dhaz, ylbp[sknp] .. _d("Xk0") .. dfby(sknp, qvv))
table.insert(dhaz, _d("KwMUARgODUQ") .. (zylc or _d("CgJaCg")))

local cvvk = zpak(sknp) or aub(sknp)

if cvvk then
local iiw = cvvk.cost - (xv.casts or 0)

table.insert(dhaz, _d("KghMG01Z") .. cvvk.name .. _d("RK+DTw") .. vggk(cvvk.cost) .. _d("RA5VHAMK"))

if iiw > 0 then
table.insert(dhaz, _d("KghRC1c") .. vggk(iiw) .. _d("RABbHRI"))
end
else
table.insert(dhaz, _d("KghMG01ZUhIIRhYDEV4KChQAABdSAA"))
end
end

table.insert(dhaz, _d(""))
table.insert(dhaz, _d("JwxHGwRZQwtNRx8SF1NeTQ") .. vggk(xv.casts or 0))

if xv.shopMessage then
table.insert(dhaz, _d(""))
table.insert(dhaz, xv.shopMessage)
end

return table.concat(dhaz, _d("bg"))
end

local function hvic(nqn, fi)
local iq = os.clock()

if iq < (xv.shopCallAt or 0) then
return false, _d("FwFbGA")
end

xv.shopCallAt = iq + 1.4

local vhr, nhfl, hmbr, hqbe = pcall(function()
return lg.FishingShop:InvokeServer(nqn, fi)
end)

if not vhr then
return false, _d("AR9GAAVZ") .. tostring(nhfl)
end

yfz(hqbe)

if nhfl == true then
return true, nil
end

return false, tostring(hmbr or _d("FghSGgQcUw"))
end

function xv.rebirthCardsHeld()
local nmeg = rsa and type(rsa.RebirthCards) == _d("EAxWAxI") and #rsa.RebirthCards or 0

if nmeg == 0 then
return 0, 0
end

local nl = 0

for herf, rmk in ipairs(rsa.RebirthCards) do
if xv.rebirthCards[rmk.cardId] then
nl = nl + 1
end
end

return nl, nmeg
end

function xv.rebirthReady()
local qt, yh = xv.rebirthCardsHeld()

return yh > 0 and qt >= yh and (tonumber(xv.rebirths) or 0) < 1
end

function xv.rebirthText()
local bgi, ehho = xv.rebirthCardsHeld()

if ehho == 0 then
return _d("IgRHBx4XUEQJVRsWWVkLGRQDGBhTAQkYTwQWFxYIVgYFDV9EBEdPAhdWEgxdAxYbWwFD")
end

if (tonumber(xv.rebirths) or 0) >= 1 then
return _d("NghWBgUNXwEJGk8jEVJELFYOGR1YCghQTz4KWwUDUE8eChcLHVEBWQ")
end

if bgi >= ehho then
return _d("JQFYTw") .. ehho .. _d("RA5VHRMKFwIERwcSHRlEP1EOEwAXEAIUHRIbXhYZXEE")
end

local puk = {}

for dn, ut in ipairs(rsa.RebirthCards) do
if not xv.rebirthCards[ut.cardId] then
table.insert(puk, (string.gsub(ut.cardId, _d("OgtdHB8m"), _d(""))))
end
end

return bgi .. _d("Sw") .. ehho .. _d("RA5VHRMKGUQ+QAYbFRcKCFELVw") .. table.concat(puk, _d("SE0")) .. _d("Sg")
end

local function abvz(gl)
local rhy = mtxf.Character
local hchw = rhy and rhy:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not hchw then
return false
end

return (hchw.Position - (ej[gl] or ej.rod)).Magnitude <= 26
end

local function poc(xjf)
if abvz(xjf) then
return true
end

local orr = mtxf.Character
local qqtq = orr and orr:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not qqtq then
return false
end

local oxg = ej[xjf] or ej.rod
xv.shopTripUntil = os.clock() + 12
xv.shopHoldUntil = os.clock() + 12

pcall(function()
qqtq.CFrame = CFrame.new(oxg)
end)

task.wait(1.2)

return abvz(xjf)
end

local function jr(ibgg, ncy, txd)
if not txd then
return false
end

if (xv.casts or 0) < txd.cost then
return false
end

if not poc(ibgg) then
xv.shopMessage = _d("JwJBAxNZWQsZFB0SGFQMTUAHEllEDAJETxEWRUQ") .. txd.name
return false
end

local iu, ylv = hvic(ncy, txd.id)

if not iu then
local pyw = tostring(ylv)
local la = pyw:find(_d("MAxYBFcNWEQZXApXP14XBVEdGhhZ"), 1, true) or pyw:find(_d("JgJVG1c9UgUBUR0"), 1, true)

if la then

xv.shopMessage = _d("MwxYBB4XUEQYRE8DFhcQBVFPFBZCChlRHVcfWBZN") .. txd.name
return false
end

if ylv ~= _d("FwFbGA") then
xv.shopAt = os.clock() + 15
xv.shopMessage = _d("NwhGGRILFxYIUhoEHFNE") .. txd.name .. _d("REU") .. pyw .. _d("TQ")
end

return false
end

xv.shopMessage = _d("JgJBCB8NFw") .. txd.name

return true
end

local function yrs(wfz)
local tmn = vdfd(wfz)

if not tmn or iav(wfz) == tmn.id then
return false
end

local zo

if wfz == _d("FgJQ") then
zo = _d("IRxBBgcrWAA")
elseif wfz == _d("BgxdGw") then
zo = _d("IRxBBgc7Vg0Z")
else
return false
end

local ill, ky = hvic(zo, tmn.id)

if not ill then
if ky ~= _d("FwFbGA") then
xv.shopMessage = _d("JwJBAxNZWQsZFAoGDF4UTQ") .. tmn.name .. _d("REU") .. tostring(ky) .. _d("TQ")
end

return false
end

if wfz == _d("FgJQ") then
xv.rod = tmn.id
elseif wfz == _d("BgxdGw") then
xv.equippedBait = tmn.id
else
return false
end

xv.shopMessage = _d("IRxBBgcJUgBN") .. tmn.name

return true
end

local function jul()
local wlp = xv.shop

if os.time() - (xv.lastSync or 0) >= 5 then
bgbb()
end

if wlp.equipRod then
yrs(_d("FgJQ"))
end

if wlp.equipBait then
yrs(_d("BgxdGw"))
end

if wlp.autoBuyRod then
jr(_d("FgJQ"), _d("JhhNPRgd"), zpak(_d("FgJQ")))
end

if wlp.autoBuyBait then
jr(_d("BgxdGw"), _d("JhhNLRYQQw"), zpak(_d("BgxdGw")))
end
end

local function zwtu()
local adny = xv.shop

return adny.autoBuyRod or adny.autoBuyBait or adny.equipRod or adny.equipBait
end

xv.shopIsland = {
rods = function()
local ayms = rsa and rsa.RodsById or {}
local suyw = {}

for vyfl, rrge in pairs(ayms) do
if tostring(rrge.shop) == _d("DR5YDhkd") then
table.insert(suyw, {
id = tostring(vyfl),
name = tostring(rrge.name or vyfl),
cost = tonumber(rrge.cost) or 0,
luck = tonumber(rrge.luck) or 0,
index = tonumber(rrge.index) or 0,
crafted = rrge.crafted == true,
})
end
end

table.sort(suyw, function(gbcf, xjaz)
return gbcf.index < xjaz.index
end)

return suyw
end,

angler = function()
local gwni = workspace:FindFirstChild(_d("Kj13HA"), true)

if not gwni then
return nil
end

for co, tr in ipairs(gwni:GetChildren()) do
if tr:GetAttribute(_d("NwhXHRINdgoKWAoFN2cn")) then
return tr
end
end

return nil
end,
held = function(cmoe)
return (xv.rodsOwned or {})[cmoe] == true
end,
recipeHeld = function(ene)
for yby, fuq in ipairs(ene or {}) do
local zgcl = tonumber((xv.mats or {})[fuq.id]) or 0

if zgcl < (tonumber(fuq.count) or 0) then
return false
end
end

return true
end,
recipeText = function(qc)
local ryoj = {}

for asfe, nvev in ipairs(qc or {}) do
local qwf = tonumber((xv.mats or {})[nvev.id]) or 0
local wrq = (sdhn.ById[nvev.id] and sdhn.ById[nvev.id].name) or tostring(nvev.id)

table.insert(ryoj, wrq .. _d("RA") .. vggk(qwf) .. _d("Sw") .. vggk(tonumber(nvev.count) or 0))
end

return table.concat(ryoj, _d("RK+DTw"))
end,

stand = function(xjmu)
local xbou = mtxf.Character
local yno = xbou and xbou:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not (yno and xjmu) then
return false
end

local ka = xjmu:GetPivot()
local nfl = xjmu:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ")) or xjmu:FindFirstChildWhichIsA(_d("JgxHCicYRRA"), true)
local unvx = nfl and (nfl.CFrame * CFrame.new(0, 0, -5)).Position or nil

if not unvx then
local mrz = RaycastParams.new()
mrz.FilterType = Enum.RaycastFilterType.Exclude
mrz.FilterDescendantsInstances = { xbou, xjmu }

local zyf = nil
local mjc = math.huge

for egst, zdi in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local wcsz = workspace:Raycast(ka.Position + zdi + Vector3.new(0, 30, 0), Vector3.new(0, -140, 0), mrz)

if wcsz and tostring(wcsz.Instance.Name) ~= _d("MwxACgU") and wcsz.Position.Y <= ka.Position.Y + 10 then
local hjo = math.abs(wcsz.Position.Y - ka.Position.Y)

if hjo < mjc then
zyf = wcsz
mjc = hjo
end
end
end

unvx = zyf and Vector3.new(zyf.Position.X, zyf.Position.Y + 3.5, zyf.Position.Z) or (ka.Position + Vector3.new(0, 4, 0))
end

xv.shopTripUntil = os.clock() + 12

xv.islandTripUntil = os.clock() + 12

pcall(function()
yno.CFrame = CFrame.new(unvx)
end)

task.wait(1.2)

return true
end,
atIsland = function()
local qhyp = workspace:FindFirstChild(_d("LR5YDhkdcQ0eXAoFFFYKI2Qs"), true)
local cbso = mtxf.Character
local bxax = cbso and cbso:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not (qhyp and bxax) then
return false
end

return (bxax.Position - qhyp:GetPivot().Position).Magnitude <= 45
end,
toIsland = function()
if xv.shopIsland.atIsland() then
return true
end

xv.shopTripUntil = os.clock() + 12

if not xv.gotoIsland() then
return false
end

task.wait(1.2)

return xv.shopIsland.atIsland()
end,

craftExcalibur = function()
local atl = xv.shopIsland.angler()

if not atl or xv.shopIsland.held(_d("FgJQMAQcVBYIQA")) then
return false
end

if not xv.shopIsland.recipeHeld(rsa and rsa.SecretRecipe) then
return false
end

xv.shopIsland.stand(atl)

local bq, rp = hvic(_d("Jx9VCQMrWAA"), _d("FgJQMAQcVBYIQA"))

if bq then
xv.rod = _d("FgJQMAQcVBYIQA")
xv.islandMessage = _d("Jx9VCQMcU0QZXApXPE8HDFgGFQxFRB9bC1cYQ0QZXApXMV4ACVEBVzhZAwFRHQ")
elseif rp ~= _d("FwFbGA") then
xv.islandMessage = _d("LARQCxIXFyUDUwMSCxcWCFIaBBxTRBlcClc8TwcMWAYVDEVERQ") .. tostring(rp) .. _d("TQ")
end

return bq
end,
buyRod = function()
if xv.islandLocked then
return false
end

local dkgb = xv.rodsOwned or {}
local ne = nil

for ebq, zti in ipairs(xv.shopIsland.rods()) do
if not zti.crafted
and dkgb[zti.id] ~= true
and zti.cost <= (xv.casts or 0)
and (ne == nil or zti.index > ne.index) then
ne = zti
end
end

if not ne then
return false
end

if not xv.shopIsland.toIsland() then
xv.islandMessage = _d("JwJBAxNZWQsZFB0SGFQMTUAHElleFwFVARNZVAsYWhsSCw")
return false
end

local httg, ir = hvic(_d("JhhNPRgd"), ne.id)

if httg then
xv.islandMessage = _d("JgJBCB8NFw") .. ne.name
elseif ir ~= _d("FwFbGA") then
local xvdp = tostring(ir)

if not (xvdp:find(_d("MAxYBFcNWA"), 1, true) or xvdp:find(_d("LR5YDhkdUhY"), 1, true)) then
xv.islandAt = os.clock() + 15
xv.islandMessage = _d("NwhGGRILFxYIUhoEHFNE") .. ne.name .. _d("REU") .. xvdp .. _d("TQ")
end
end

return httg
end,
craftBoot = function()
if xv.boot.owned or xv.islandLocked then
return false
end

if not xv.shopIsland.recipeHeld(rsa and rsa.BootRecipe) then
return false
end

if not xv.shopIsland.toIsland() then
xv.islandMessage = _d("JwJBAxNZWQsZFB0SGFQMTUAHElleFwFVARNZVAsYWhsSCw")
return false
end

local uu, olg = hvic(_d("Jx9VCQM7WAsZ"))

if uu then
xv.boot.owned = true
xv.islandMessage = _d("Jx9VCQMcU0QZXApXNVIDCFoLFgtORC9bAAM")
elseif olg ~= _d("FwFbGA") then
xv.islandMessage = _d("LR5YDhkdFyIERwcSC1oFAxQdEh9CFwhQTwMRUkQPWwADWR8") .. tostring(olg) .. _d("TQ")
end

return uu
end,
best = function()
local pukt = xv.rodsOwned or {}
local djjr = nil

for yjyq, edek in ipairs(xv.shopIsland.rods()) do
if pukt[edek.id] == true and (djjr == nil or edek.luck > djjr.luck) then
djjr = edek
end
end

return djjr
end,

equipRod = function()
local no = xv.shopIsland.best()

if not no or xv.rod == no.id then
return false
end

local at, dpfj = hvic(_d("IRxBBgcrWAA"), no.id)

if at then
xv.rod = no.id
xv.islandMessage = _d("IRxBBgcJUgBN") .. no.name
elseif dpfj ~= _d("FwFbGA") then
xv.islandMessage = _d("JwJBAxNZWQsZFAoGDF4UTQ") .. no.name .. _d("REU") .. tostring(dpfj) .. _d("TQ")
end

return at
end,
equipBoot = function()
if not xv.boot.owned or xv.boot.equipped then
return false
end

local zm, wg = hvic(_d("IRxBBgc7WAsZ"), true)

if zm then
xv.boot.equipped = true
xv.islandMessage = _d("IRxBBgcJUgBNQAcSWXsBClEBExhFHU12ABgN")
elseif wg ~= _d("FwFbGA") then
xv.islandMessage = _d("JwJBAxNZWQsZFAoGDF4UTUAHEllVCwJAT18") .. tostring(wg) .. _d("TQ")
end

return zm
end,
active = function()
local epe = xv.island

return epe.autoRod or epe.equipRod or epe.autoAcc or epe.equipAcc
end,
run = function()
local brtg = xv.island

if os.time() - (xv.lastSync or 0) >= 8 then
bgbb()
end

local gu = false

if brtg.autoRod then
gu = xv.shopIsland.craftExcalibur()
end

if brtg.equipRod then
xv.shopIsland.equipRod()
end

if brtg.autoRod and not gu then
xv.shopIsland.buyRod()
end

if brtg.autoAcc then
xv.shopIsland.craftBoot()
end

if brtg.equipAcc then
xv.shopIsland.equipBoot()
end
end,
text = function()
if not rsa then
return _d("IgRHBx4XUCAMQA5XF1gQTVIAAhdTREAUGx8cFw0eWA4ZHRcXBVsfVxBERBhaDgEYXggMVgMSVw")
end

local izqs = {}
local lnib = xv.rodsOwned or {}

table.insert(izqs, xv.islandLocked and _d("JQ9VARMWWQEJFCYEFVYKCRQGBFlbCw5fChNZGkQfUQ0eC0MMTVIGBQpDSg") or _d("JQ9VARMWWQEJFCYEFVYKCRQGBFlYFAhaQQ"))

for div, qaoj in ipairs(xv.shopIsland.rods()) do
local ybba

if lnib[qaoj.id] == true then
ybba = xv.rod == qaoj.id and _d("CxpaChNZ9dNNWwFXF1gT") or _d("CxpaChM")
elseif qaoj.crafted then
ybba = _d("LARQCxIXFyUDUwMSCxcWCFcGBxw")
else
ybba = vggk(qaoj.cost) .. _d("RA5VHAMK")
end

table.insert(izqs, qaoj.name .. _d("RI+0+1c") .. ybba)
end

table.insert(izqs, _d(""))

if lnib.rod_secret then
table.insert(izqs, _d("IRVXDhsQVREfDk8YDlkBCQ"))
else
local ejtg = xv.shopIsland.recipeHeld(rsa.SecretRecipe)

table.insert(izqs, _d("IRVXDhsQVREfDk8") .. (ejtg and _d("FghXBgccFxYIVQsO") or _d("FghXBgccFxcFWx0D")))
table.insert(izqs, xv.shopIsland.recipeText(rsa.SecretRecipe))
end

table.insert(izqs, _d("LARQCxIXFyUDUwMSCw1E") .. (xv.shopIsland.angler() and _d("ER0UARgO") or _d("CgJATx8cRQE")))
table.insert(izqs, _d(""))

local kb = xv.boot
local xdy

if kb.equipped then
xdy = _d("KAhTChkdVhYUFC0YFkNeTVEeAhBHFAhQ")
elseif kb.owned then
xdy = _d("KAhTChkdVhYUFC0YFkNeTVsYGRxT")
elseif xv.shopIsland.recipeHeld(rsa.BootRecipe) then
xdy = _d("KAhTChkdVhYUFC0YFkNeTUYKFBBHAU1GChYdTg")
else
xdy = _d("KAhTChkdVhYUFC0YFkNeTQ") .. xv.shopIsland.recipeText(rsa.BootRecipe)
end

table.insert(izqs, xdy)
table.insert(izqs, _d("JwxHGwRZQwtNRx8SF1NeTQ") .. vggk(xv.casts or 0))

if xv.islandMessage then
table.insert(izqs, _d(""))
table.insert(izqs, xv.islandMessage)
end

return table.concat(izqs, _d("bg"))
end,
}

task.spawn(function()
bgbb()
end)

local ml = {
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

getgenv().ACBXAutoBuyHalloween = ml

lg.SyncItems.OnClientEvent:Connect(function(neir)
if type(neir) == _d("EAxWAxI") then
ml.balances = neir
ml.lastSync = os.time()
end
end)

lg.RequestItemSync:FireServer()

lg.RaidShopState.OnClientEvent:Connect(function(rhxl)
if type(rhxl) == _d("EAxWAxI") and rhxl.shopId == _d("DAxYAxgOUgED") then
ml.shopState = rhxl
ml.stateAt = os.clock()
end
end)

lg.RaidNotify.OnClientEvent:Connect(function(fdgl)
local dbkt = ml.pending

if not dbkt or type(fdgl) ~= _d("FxlGBhke") then
return
end

if fdgl:sub(1, 9) == _d("NDhmLD84ZCEp") then
ml.purchased[dbkt.id] = (ml.purchased[dbkt.id] or 0) + 1
ml.pending = nil
else
if ml.balances[dbkt.currency] then
ml.balances[dbkt.currency] = ml.balances[dbkt.currency] + dbkt.price
end

ml.failedUntil[dbkt.id] = os.time() + 5
ml.pending = nil
end
end)

nbpq.trip = {
untilAt = 0,
lastTry = 0,
lastResult = nil,
spot = nil,
}

function nbpq.merchant()
local cw = workspace:FindFirstChild(_d("Kj13HA"))
local lk = nbpq.shopData and nbpq.shopData.NpcName or _d("NBhZHxwQWUQgUR0UEVYKGQ")

return cw and cw:FindFirstChild(lk) or nil
end

function nbpq.stand()
local bny = nbpq.merchant()
local cgf = bny and (bny:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ")) or bny:FindFirstChildWhichIsA(_d("JgxHCicYRRA")))
local tn = mtxf.Character
local mdmp = tn and tn:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not (cgf and mdmp) then
return false
end

nbpq.trip.spot = cgf.Position + Vector3.new(0, 3, 4)
mdmp.AssemblyLinearVelocity = Vector3.zero
mdmp.CFrame = CFrame.new(nbpq.trip.spot)

return true
end

function nbpq.fresh()
return ml.shopState ~= nil and os.clock() - ml.stateAt < 30
end

function nbpq.guiOpen()
local tmi = sfed:FindFirstChild(_d("LAxYAxgOUgEDZwcYCXARBA"))
local mlm = tmi and tmi:FindFirstChild(_d("NwVbHzELVgkI"))

if mlm then
return mlm.Visible == true
end

for nr, bbn in ipairs(sfed:GetChildren()) do
if bbn:IsA(_d("Nw5GChIXcBEE")) and bbn.Name:lower():find(_d("DAxYAxgOUgED"), 1, true) and bbn.Enabled then
return true
end
end

return false
end

function nbpq.close()
local gbn = sfed:FindFirstChild(_d("LAxYAxgOUgEDZwcYCXARBA"))
local iqgk = gbn and gbn:FindFirstChild(_d("NwVbHzELVgkI"))

if not (iqgk and iqgk.Visible) then
return false
end

local izcf = iqgk:FindFirstChild(_d("JwFbHBI7QhAZWwE"))

if not izcf then
for nlp, qp in ipairs(iqgk:GetDescendants()) do
if qp:IsA(_d("IxhdLQINQwsD")) and tostring(qp.Name):lower():find(_d("BwFbHBI"), 1, true) then
izcf = qp
break
end
end
end

if izcf and type(firesignal) == _d("AhhaDAMQWAo") then
pcall(function()
firesignal(izcf.MouseButton1Click)
end)

task.wait(0.3)

if not iqgk.Visible then
return true
end
end

pcall(function()
iqgk.Visible = false
end)

return true
end

function nbpq.spend()
if ml.pending or os.time() - (ml.lastAttempt or 0) < 1 then
return nil
end

local xkj = ml.shopState

for imzc, busx in ipairs(nbpq.shopItems) do
if ml.selected[busx.id] and os.time() >= (ml.failedUntil[busx.id] or 0) then
local fnol = busx.stock
local crdp = ml.purchased[busx.id] or 0

if xkj and xkj.stocks and xkj.stocks[busx.id] then
fnol = xkj.stocks[busx.id]
end

if xkj and xkj.bought then
crdp = math.max(crdp, xkj.bought[busx.id] or 0)
end

local fwym = fnol and (fnol - crdp) or 1
local sl = ml.balances[busx.currency] or 0

if fwym > 0 and sl >= busx.price then
ml.pending = {
id = busx.id,
price = busx.price,
currency = busx.currency,
at = os.time(),
}
ml.lastAttempt = os.time()
ml.balances[busx.currency] = sl - busx.price

pcall(function()
lg.BuyRaidItem:FireServer(busx.id, 1)
end)

return busx.id
end
end
end

return nil
end

function nbpq.open(cto)
if not cto and nbpq.fresh() then
return true
end

if not cto and os.clock() < (nbpq.trip.lastTry or 0) + 8 then
return false
end

nbpq.trip.lastTry = os.clock()
nbpq.trip.untilAt = os.clock() + 12

xv.shopTripUntil = os.clock() + 12
xv.shopHoldUntil = os.clock() + 12
xv.phase = _d("DQlYCg")

local mzng = nbpq.merchant()
local qoi = mzng and mzng:FindFirstChild(_d("NB9bFx4UXhAUZB0YFEcQ"))

if not (mzng and qoi) then
xv.deepPhase = _d("DQlYCg")
nbpq.trip.untilAt = os.clock() + 60
nbpq.trip.lastResult = _d("MAVRTycMWhQGXQFXNFIWDlwOGQ0XDR4UARgNFw0DFBsfEERED0EGGx0Z")

return false
end

local jfoe = os.clock() + 3
local hs = 0

while os.clock() < jfoe do

nbpq.stand()

if os.clock() >= hs then
hs = os.clock() + 0.8

if type(fireproximityprompt) == _d("AhhaDAMQWAo") then
pcall(function()
fireproximityprompt(qoi)
end)
end

pcall(function()
lg.OpenRaidShop:FireServer(_d("DAxYAxgOUgED"))
end)
end

if nbpq.guiOpen() or nbpq.fresh() then
break
end

task.wait(0.1)
end

if not (nbpq.guiOpen() or nbpq.fresh()) then

xv.deepPhase = _d("DQlYCg")
nbpq.trip.untilAt = os.clock() + 60
nbpq.trip.lastResult = _d("MAVRTxQWQgoZUR1XHV4ATVoAA1lWCh5DCgVZGkQEQE8YF1sdTVsfEhdERARaTwMRUkQeUQ4EFlkFARQOBRxWSg")

return false
end

nbpq.trip.lastResult = _d("JwJBAQMcRUQCRAoZVw")

for tpp = 1, 3 do
nbpq.stand()

if not nbpq.spend() then
break
end

task.wait(1.2)
end

pcall(nbpq.close)

xv.deepPhase = _d("DQlYCg")

return true
end

local function arrf(fot)
fot = math.max(0, math.floor(fot))
local tqz = math.floor(fot / 3600)
local hbav = math.floor((fot % 3600) / 60)
local tps = fot % 60

if tqz > 0 then
return string.format(_d("QQlcT1JJBQAA"), tqz, hbav)
elseif hbav > 0 then
return string.format(_d("QQlZT1JJBQAe"), hbav, tps)
end

return string.format(_d("QQlH"), tps)
end

local function fssa()
local bkbz = sfed:FindFirstChild(_d("LAxYAxgOUgEDZwcYCXARBA"))
local ob = bkbz and bkbz:FindFirstChild(_d("NwVbHzELVgkI"))
local ku = ob and ob:FindFirstChild(_d("LRlRAjsQRBA"))
local wsa = {}
local yz = nil

if ku then
for qli, zzbb in ipairs(nbpq.shopItems) do
local migx = ku:FindFirstChild(zzbb.id)
local pq = migx and migx:FindFirstChild(_d("JgJM"))
local mchk = pq and pq:FindFirstChild(_d("NxlbDBw"))

if mchk and mchk:IsA(_d("MAhMGzsYVQEB")) then
local mjf, nlqr = mchk.Text:match(_d("TEhQRF5cRE5CERxdURIARh0"))

if mjf and nlqr then
wsa[zzbb.id] = {
remaining = tonumber(mjf),
total = tonumber(nlqr),
}
end
end
end
end

if ob then
for ronf, ht in ipairs(ob:GetDescendants()) do
if ht:IsA(_d("MAhMGzsYVQEB")) and ht.Text:find(_d("FghHCgMKFw0D"), 1, true) then
yz = ht.Text:match(_d("FghHCgMKFw0DERxdURlPRBA"))
break
end
end
end

return wsa, yz
end

local function qv(sjvc)
if type(sjvc) ~= _d("FxlGBhke") then
return 0
end

local qq = tonumber(sjvc:match(_d("TEhQRF4R"))) or 0
local gzt = tonumber(sjvc:match(_d("TEhQRF4U"))) or 0
local eyc = tonumber(sjvc:match(_d("TEhQRF4K"))) or 0
return qq * 3600 + gzt * 60 + eyc
end

local function qn()
local xgt = ml.shopState
local gyiz, gj = fssa()
local tiim = {}
local lzc = {}
local yvy = {}

for fuj, layj in ipairs(nbpq.shopItems) do
local pxkq = layj.stock
local lxq = nil

if xgt and xgt.stocks and xgt.stocks[layj.id] then
pxkq = xgt.stocks[layj.id]
end

local yt = ml.purchased[layj.id] or 0

if xgt and xgt.bought then
yt = math.max(yt, xgt.bought[layj.id] or 0)
end

if pxkq then
lxq = math.max(0, pxkq - yt)
end

if (not xgt or not xgt.bought) and gyiz[layj.id] then
lxq = gyiz[layj.id].remaining
pxkq = gyiz[layj.id].total
end

local hkf = layj.currency == _d("DgxXBCgWaAgMWhsSC1k") and _d("KAxaGxILWRc") or _d("JwxaCw4")
local xf

if lxq == nil then
xf = layj.shortName
elseif lxq <= 0 then
xf = layj.shortName .. _d("RK+DTwQWWwBNWxoD")
else
xf = layj.shortName .. _d("RK+DTw") .. tostring(lxq) .. _d("Sw") .. tostring(pxkq or _d("Ww"))
end

if not lzc[hkf] then
lzc[hkf] = {}
table.insert(yvy, hkf)
end

table.insert(lzc[hkf], xf)
end

local sgts = {}

for ccvt, izng in ipairs(yvy) do
table.insert(sgts, izng)

for sm, csml in ipairs(lzc[izng]) do
table.insert(sgts, csml)
end
end

table.insert(tiim, table.concat(sgts, _d("bmc")))
table.insert(tiim, _d(""))

if xgt and type(xgt.resetsIn) == _d("ChhZDRIL") then
local jt = xgt.resetsIn - (os.clock() - ml.stateAt)
table.insert(tiim, _d("NghHGxgaXBdNXQFX") .. arrf(jt))
elseif gj then
if ml.uiTimerText ~= gj then
ml.uiTimerText = gj
ml.uiTimerSeconds = qv(gj)
ml.uiTimerAt = os.clock()
end

local jek = ml.uiTimerSeconds - (os.clock() - ml.uiTimerAt)
table.insert(tiim, _d("NghHGxgaXBdNXQFX") .. arrf(jek))
else
table.insert(tiim, _d("NghHGxgaXBdNUA4eFU5Er4NPARBEDRkUGx8cFxcFWx8"))
end

if not nbpq.fresh() then
table.insert(tiim, nbpq.trip.lastResult or _d("MAVRTxQWQgoZUR1XEEREDlgABBxTREAUIAccWUQeXAAHWUAFAV8cVw1fAU1XBxYLVgcZUR1XDEdEGVtPHg0Z"))
end

return table.concat(tiim, _d("bg"))
end

lg.NPCBattleResult.OnClientEvent:Connect(function(nhh)
if type(nhh) ~= _d("EAxWAxI") then
return
end

fu.battlePending = false

if nhh.result == _d("BwJbAxMWQAo") and type(nhh.remaining) == _d("ChhZDRIL") and nhp and nn then
cbef(nhp, nn, os.time() + nhh.remaining)
return
end

if type(nhh.npcId) == _d("FxlGBhke") then
local bpc = type(nhh.difficulty) == _d("FxlGBhke") and nhh.difficulty or fu.activeDifficulty[nhh.npcId] or _d("CgJGAhYV")
local qpk = cuhs.ById[nhh.npcId]
local lro = tonumber(nhh.cooldown) or (qpk and qpk.cooldown) or 300
cbef(nhh.npcId, bpc, os.time() + lro)
end
end)

lg.SyncNPCCooldowns.OnClientEvent:Connect(function(lpq)
if type(lpq) ~= _d("EAxWAxI") then
return
end

for fra, jui in pairs(lpq) do
if type(fra) == _d("FxlGBhke") and type(jui) == _d("ChhZDRIL") then
local jsue = fu.activeDifficulty[fra] or _d("CgJGAhYV")
cbef(fra, jsue, jui)
end
end
end)

local ttua = {}
local ovjw = {}

for by, ds in ipairs(sd.Worlds) do

local au = { _d("JQFY") }
local yzrr = {}
local ba = {}
local buh = nil

for gwux, wf in ipairs(ds.npcs or {}) do
local peh = cuhs.ById[wf]
if peh then
table.insert(au, peh.name)
table.insert(ba, wf)
yzrr[peh.name] = wf
if peh.type == _d("BgxAGxsc") then
buh = wf
end
end
end

local yviu = ds.id
if buh and rrkp.ById[buh] then
yviu = rrkp.ById[buh].worldId or yviu
end

for lxhp, bm in ipairs(ds.npcs or {}) do
ovjw[bm] = yviu

fu.bossTeams.worldOf[bm] = ds.id
end

table.insert(ttua, {
id = ds.id,
teleportWorldId = yviu,
name = ds.name,
options = au,
ids = ba,
byName = yzrr,
npcs = ds.npcs,
})
end

local tcgx = {}
local zatr = {}
local ixme = {}

for tcb, vn in ipairs(sd.Difficulties) do
table.insert(tcgx, vn.name)
zatr[vn.name] = vn.id
ixme[vn.id] = vn.name
end

local ovl = {}
local qaj = {}

for iik, gytn in ipairs(alku.Difficulties) do
table.insert(ovl, gytn.name)
qaj[gytn.name] = gytn.id
end

local tnyv = {}
local igsz = {}
local gz = {}
local fifr = {
soul_king = _d("NgxdCyAWRQgJ"),
beerus = _d("NgxdCyAWRQgJay0SHEURHg"),
reid = _d("NgxdCyAWRQgJaz0SEFM"),
}

for ruci, naq in ipairs(alku.Raids) do
if naq.BossTitle and naq.id then
table.insert(tnyv, naq.BossTitle)
igsz[naq.BossTitle] = naq.id
gz[naq.id] = naq.NpcId
end
end

local function htzj()
for wbo, id in ipairs({ _d("JgxAGxsccBEE"), _d("JgxAGxsccBEEBg") }) do
local cxct = sfed:FindFirstChild(id)
local vd = cxct and cxct:FindFirstChild(_d("JgxAGxscZAcfUQoZ"))
if vd and vd.Visible then
return vd
end
end
end

local function rtav()
for okjb, ohu in ipairs({ _d("JgxAGxsccBEE"), _d("JgxAGxsccBEEBg") }) do
local jn = sfed:FindFirstChild(ohu)
local lor = jn and jn:FindFirstChild(_d("JgxAGxscZAcfUQoZ"))
if lor then
return lor
end
end
end

local function mfke()
if htzj() then
return true
end

for ggdj, alhv in ipairs({ _d("JgxAGxsccBEE"), _d("JgxAGxsccBEEBg") }) do
local wxb = sfed:FindFirstChild(alhv)
local com = wxb and wxb:FindFirstChild(_d("LARQCjUYQxABUS0CDUMLAw"))
if com and com.Visible then
return true
end
end

for pewy, both in ipairs({ _d("LQN2DgMNWwE"), _d("LQN2DgMNWwFf") }) do
local onv = sfed:FindFirstChild(both)
if onv and onv:IsA(_d("JgJbAyEYWxEI")) and onv.Value then
return true
end
end

return false
end

function svub.slotFree(bc)

if bc == nil then
return false
end

if not svub.enabled then
return not mfke()
end

return not svub.busy(bc)
end

function svub.npcSlot()
return svub.roleSlot(_d("Ch1X"))
end

local xex

local function ntk(yqjj)
yqjj = math.max(0, math.floor(yqjj))
if yqjj <= 0 then
return _d("FghVCw4")
end

local nvvb = math.floor(yqjj / 60)
local icx = yqjj % 60

if nvvb > 0 then
return string.format(_d("QQlZT1JJBQAe"), nvvb, icx)
end

return string.format(_d("QQlH"), icx)
end

local function uqnj()
for iko, pc in ipairs({ _d("JgxAGxsccBEE"), _d("JgxAGxsccBEEBg") }) do
local exi = sfed:FindFirstChild(pc)
if exi then
local zsd = exi:FindFirstChild(_d("NhhaKRsWWBYhVQ0SFQ"))
local mr = exi:FindFirstChild(_d("MAJDCgU/WwsCRiMWG1II"))
if (zsd and zsd.Visible) or (mr and mr.Visible) then
return _d("LQMUOxgOUhY")
end
end
end

if nfhp.currentRoom and (nfhp.inBattle or mfke()) then
local vhws = nil

for wzd, jrx in ipairs({ _d("JgxAGxsccBEE"), _d("JgxAGxsccBEEBg") }) do
local mptc = sfed:FindFirstChild(jrx)
local ixt = mptc and mptc:FindFirstChild(_d("JgxAGxscZAcfUQoZ"))
local hu = ixt and ixt:FindFirstChild(_d("IQNRAg44VBAEQgo0GEUA"))
local xgga = hu and hu:FindFirstChild(_d("KgxZCjsYVQEB"))

if xgga and xgga.Text ~= _d("") then
vhws = xgga.Text
break
end
end

if vhws then
return _d("JgxAGxsQWQNN") .. vhws .. _d("RDZmABgUFw") .. nfhp.currentRoom .. _d("OQ")
end

return _d("JgxAGxsQWQNNbz0YFlpE") .. nfhp.currentRoom .. _d("OQ")
end

local dfla = rtav()
if mfke() and dfla then
local vnv = dfla:FindFirstChild(_d("IQNRAg44VBAEQgo0GEUA"))
local gjd = vnv and vnv:FindFirstChild(_d("KgxZCjsYVQEB"))
local nlq = gjd and gjd.Text

local xb = nil
if fu.currentBattle then
xb = fu.currentBattle.difficulty
elseif nlq then
local hzr = qg[nlq]
if hzr then
xb = fu.activeDifficulty[hzr]
end
end

local nnyf = _d("")
if xb then
nnyf = _d("RDY") .. (ixme[xb] or xb) .. _d("OQ")
end

local rhpt = nlq
if fu.currentBattle and fu.currentBattle.npcId then
local jj = cuhs.ById[fu.currentBattle.npcId]
if jj then
rhpt = jj.name
end
end

if rhpt and rhpt ~= _d("") then
return _d("JgxAGxsQWQNN") .. rhpt .. nnyf
end

return _d("JgxAGxsQWQM") .. nnyf
end

fu.currentBattle = nil

local ppio = ifi.enabled and (ifi.bossFor(1) or ifi.bossFor(2))

if ppio then
local udx = pbw:FindFirstChild(_d("NgxdCyQNVhAYRw"))

if udx then
local prrf = ppio
local jry = alku.ById[prrf]
local cinr = jry and jry.BossTitle or prrf
local ux = udx:GetAttribute(_d("LR57HxIX")) == true or udx:GetAttribute(_d("IgJGDBId")) == true
local skui = udx:GetAttribute(_d("NghVCw4m") .. prrf) == true
local qze = ifi.progress[prrf]
local wk = qze and qze.locked == true

if not ux then
local imy = tonumber(udx:GetAttribute(_d("JwVVARAcRCUZ"))) or 0
return _d("LQlYCldUFw") .. cinr .. _d("RD9VBhNDFw") .. ntk(imy - os.time())
end

if qze and qze.cooldowns then
local ttr = tonumber(qze.cooldowns.normal)

if ttr and ttr > 0 then
return _d("LQlYCldUFw") .. cinr .. _d("RD9VBhNDFw") .. ntk(ttr)
end
end

if not skui or wk then
return _d("LQlYCldUFw") .. cinr .. _d("RD9VBhNDFwgCVwQSHQ")
end

return _d("LQlYCldUFw") .. cinr .. _d("RD9VBhNDFxYIVQsO")
end
end

if xv.enabled then
if xv.usingGameAuto then
return _d("IgRHBx4XUERAFAgWFFJEDEEbGFkf") .. vggk(cwek()) .. _d("RA5VGhARQ00")
end

if xv.phase == _d("BwxHGx4XUA") then
return _d("IgRHBx4XUERAFAwWCkMNA1M")
end

if xv.phase == _d("EwxdGx4XUCYEQAo") then
return _d("IgRHBx4XUERAFBgWEEMNA1NPERZFRAwUDR4NUg")
end

if xv.phase == _d("FghRAx4XUA") or xv.phase == _d("FghHABsPXgoK") then
return _d("IgRHBx4XUERAFB0SHFsNA1NPGBdSRARa")
end

return _d("IgRHBx4XUERAFAYTFVJERQ") .. vggk(cwek()) .. _d("RA5VGhARQ00")
end

if not fu.enabled and not fu.story then
return _d("LQlYCg")
end

local ccc, egko, hv = xex()

if ccc then
local nts = cuhs.ById[ccc]
local oser = nts and nts.name or ccc
local ye = (egko or 0) - os.time()
local fkdn = ixme[hv] or hv or _d("KgJGAhYV")

return _d("LQlYCldUFyoITBtNWQ") .. oser .. _d("RDY") .. fkdn .. _d("OU0c") .. ntk(ye) .. _d("TQ")
end

return _d("LQlYCg")
end

local function izsi(anhz)
local lu = workspace:FindFirstChild(_d("Kj13HA"))
if not lu then
return nil
end

for sxlw, gsrc in ipairs(lu:GetChildren()) do
if gsrc:GetAttribute(_d("Kj13JhM")) == anhz then
return gsrc
end
end

return nil
end

local function ys(tp)
local lks = mtxf.Character
local aicw = lks and lks:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))
if not (aicw and tp) then
return false
end

local bkbv, uxfy = pcall(function()
return tp:GetPivot()
end)
if not bkbv then
return false
end

local efnv = uxfy.Position + uxfy.LookVector * 6 + Vector3.new(0, 3, 0)
local ukkd = Vector3.new(uxfy.Position.X, efnv.Y, uxfy.Position.Z)

aicw.CFrame = CFrame.lookAt(efnv, ukkd)
return true
end

local function kzl()
local upmw = mtxf:FindFirstChild(_d("NAFVFhILZAcfXR8DCg"))
local vwbp = upmw and upmw:FindFirstChild(_d("NAFVFhILegsJQQMS"))

if not vwbp then
return nil
end

local lki, ymq = pcall(require, vwbp)
if not lki then
return nil
end

local vvqv, wtk = pcall(function()
return ymq:GetControls()
end)

if vvqv then
return wtk
end
end

local function ylea(qb, ll, ehfw, jucq, nspn)
jucq = jucq or 8

local function jjrj()
return ll and ll()
end

local tb = os.clock()

while os.clock() - tb < 5 do
if jjrj() then
return false
end

if mtxf.Character and mtxf.Character:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ")) then
break
end
task.wait(0.2)
end

local cnz = mtxf.Character
local eatj = cnz and cnz:FindFirstChildOfClass(_d("LBhZDhkWXgA"))
local dox = cnz and cnz:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not (eatj and dox) then
return false
end

if (dox.Position - qb).Magnitude <= jucq then
return true
end

local ru = ehfw or eatj.WalkSpeed
local bhsq = kzl()
local hoqt = eatj.JumpPower
local pgk = eatj.UseJumpPower

if nspn then
pcall(function()
eatj.UseJumpPower = true
eatj.JumpPower = math.max(hoqt, 60)
end)
end

if bhsq then
pcall(function()
bhsq:Disable()
end)
end

local drgo = eatj:FindFirstChildOfClass(_d("JQNdAhYNWBY"))
local xyn = nil
local on = cnz:FindFirstChild(_d("JQNdAhYNUg"))
local adsa = on and (on:FindFirstChild(_d("MwxYBDYXXgk"), true) or on:FindFirstChild(_d("NhhaLhkQWg"), true))

if drgo and adsa then
local eqlr, oc = pcall(function()
return drgo:LoadAnimation(adsa)
end)

if eqlr and oc then
xyn = oc
xyn.Looped = true
xyn.Priority = Enum.AnimationPriority.Movement
pcall(function()
xyn:Play()
end)
end
end

local function pxy(brnh)
dox.AssemblyLinearVelocity = Vector3.new(0, dox.AssemblyLinearVelocity.Y, 0)

if xyn then
pcall(function()
xyn:Stop(0.1)
end)
end

if bhsq then
pcall(function()
bhsq:Enable()
end)
end

if nspn then
pcall(function()
eatj.JumpPower = hoqt
eatj.UseJumpPower = pgk
end)
end

return brnh
end

local function bnka(bvp, zw)
local xt = os.clock()
local my = os.clock()
local ae = 0
local hi = dox.Position

while os.clock() - xt < zw do
if jjrj() then
return false
end

local xj = bvp - dox.Position
xj = Vector3.new(xj.X, 0, xj.Z)

if xj.Magnitude <= 3 then
return true
end

local sa = xj.Unit
dox.AssemblyLinearVelocity = Vector3.new(
sa.X * ru,
dox.AssemblyLinearVelocity.Y,
sa.Z * ru
)

if nspn and os.clock() - my >= 0.5 then
local pdxc = (dox.Position - hi).Magnitude
local mp = eatj:GetState()
local xqd = mp ~= Enum.HumanoidStateType.Jumping and mp ~= Enum.HumanoidStateType.Freefall

if pdxc < 1.5 and xqd and os.clock() - ae >= 0.8 then
eatj.Jump = true
ae = os.clock()
end

hi = dox.Position
my = os.clock()
end

task.wait()
end

return false
end

local vbkx = gdv:CreatePath({
AgentRadius = 2.5,
AgentHeight = 5,
AgentCanJump = true,
WaypointSpacing = 8,
})

local epa = pcall(function()
vbkx:ComputeAsync(dox.Position, qb)
end)

if epa and vbkx.Status == Enum.PathStatus.Success then
for hz, an in ipairs(vbkx:GetWaypoints()) do
if jjrj() then
return pxy(false)
end

if (dox.Position - qb).Magnitude <= jucq then
break
end

if not bnka(an.Position, 10) and jjrj() then
return pxy(false)
end
end
end

if jjrj() then
return pxy(false)
end

local kppn = bnka(qb, 15)
return pxy(kppn)
end

local function hw(nv, nm, zh)
return ylea(nv, zh, nm)
end
getgenv().ACBXWalkCancel = false
getgenv().ACBXWalkToPositionWithSpeed = function(rim, lcwd)
return hw(rim, lcwd, function()
return getgenv().ACBXWalkCancel == true
end)
end

local function irg()
if fu.story then
return { fu.storyDifficulty }
end

return fu.difficulties
end

local function gp()
local hxw = {}

if fu.story then
for cpo, tzp in ipairs(ttua) do
for md, cidn in ipairs(tzp.ids) do
table.insert(hxw, cidn)
end

if tzp.id == _d("DR5RBBYQ") then
break
end
end

return hxw
end

local hg = {}

for mlzc, ax in ipairs(ttua) do
local xen = fu.selectedByWorld[ax.name]

if xen then
for neie, hod in ipairs(xen) do
if not hg[hod] then
hg[hod] = true
table.insert(hxw, hod)
end
end
end
end

return hxw
end

xex = function()
local wqzw = nil
local iwy = nil
local sbid = nil

for dsp, kond in ipairs(gp()) do
local tmc = fu.unlocked[kond]

for hd, booe in ipairs(irg()) do
if not tmc or tmc[booe] ~= false then
local gkai = fe(kond, booe)

if not sbid or gkai < sbid then
wqzw = kond
iwy = booe
sbid = gkai
end
end
end
end

return wqzw, sbid, iwy
end

local function emny(smgd)
if type(smgd) ~= _d("FxlGBhke") then
return nil
end

local xyv = tonumber(smgd:match(_d("TEhQRF4R")))
local qpem = tonumber(smgd:match(_d("TEhQRF4U")))
local xw = tonumber(smgd:match(_d("TEhQRF4K")))

if not xyv and not qpem and not xw then
return nil
end

return (xyv or 0) * 3600 + (qpem or 0) * 60 + (xw or 0)
end

local function mah()
local bvxs = workspace:FindFirstChild(_d("Kj13HA"))
if not bvxs then
return
end

for ya, rhfm in ipairs(bvxs:GetChildren()) do
local hpdx = rhfm:GetAttribute(_d("Kj13JhM"))
if type(hpdx) == _d("FxlGBhke") then
local yyaz = rhfm:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))
local meet = yyaz and yyaz:FindFirstChild(_d("Kj13LBgWWwACQwE1EFsID1sOBR0"))
local swjd = meet and meet:FindFirstChild(_d("MARZCgU1VgYIWA"))

local pfdj = fu.activeDifficulty[hpdx] or _d("CgJGAhYV")

if meet and swjd then
local sn = emny(swjd.Text)
if sn and sn > 0 then
local vf = os.time() + sn
if vf > fe(hpdx, pfdj) then
cbef(hpdx, pfdj, vf)
end
end
else
cbef(hpdx, pfdj, 0)
end
end
end
end

local function ochz(ptn)
local pnb = {}

for pjy, pi in ipairs(getconnections(lg.OpenNPCDialog.OnClientEvent)) do
if pi.Enabled then
pi:Disable()
table.insert(pnb, pi)
end
end

local kf = false
local gc
gc = lg.OpenNPCDialog.OnClientEvent:Connect(function(pkha, qw, lqyt, lubh)
if pkha ~= ptn or type(lubh) ~= _d("EAxWAxI") or type(lubh.cooldowns) ~= _d("EAxWAxI") then
return
end

for duxn, vfa in pairs(lubh.cooldowns) do
if type(duxn) == _d("FxlGBhke") and type(vfa) == _d("ChhZDRIL") then
cbef(ptn, duxn, vfa > 0 and (os.time() + vfa) or 0)
end
end

if type(lubh.unlocked) == _d("EAxWAxI") then
fu.unlocked[ptn] = lubh.unlocked
end

kf = true
end)

lg.OpenNPCDialog:FireServer(ptn)

local yu = os.clock()
while not kf and os.clock() - yu < 1.5 do
task.wait(0.05)
end

gc:Disconnect()

for zpzs, dmg in ipairs(pnb) do
dmg:Enable()
end

if kf then
fu.lastFetch[ptn] = os.time()
end

return kf
end

mah()

local tczs = false
local tfyr = {}

local function zzhg(hlqj)
tczs = hlqj

local wjc = sfed:FindFirstChild(_d("JwxGCzgJUgo"))
if not wjc then
return
end

local huj = wjc:FindFirstChild(_d("JwxGCzgJUgo"))

if hlqj then
if huj then
tfyr = getconnections(huj.Event)
for pe, mhr in ipairs(tfyr) do
if mhr.Enabled then
mhr:Disable()
end
end
end

wjc.Enabled = false

local qabt = sfed:FindFirstChild(_d("MAJDCgUrUhcYWBswDF4"))
if qabt then
local km = qabt:FindFirstChild(_d("NghHGhsNcRYMWQo"))
if km then
km.Visible = false
end

local ffk = qabt:FindFirstChild(_d("IwhaCgUYQw0DUykFGFoB"))
if ffk then
ffk.Visible = false
end
end
else
for cer, kpa in ipairs(tfyr) do
if not kpa.Enabled then
kpa:Enable()
end
end

tfyr = {}
wjc.Enabled = true
end
end

getgenv().ACBXSetAutoCloseGeneration = zzhg

local uic

for is = 1, 3 do
local cwiq, dt = pcall(function()
return game:HttpGet(_d("DBlAHwRDGEsKXRsfDFVKDlsCWBteAwpVDRgABVVfGyIWGlsNDxsdEhVSBR5RHFgVVhAIRxtYHVgTA1gAFh0YCQxXAx4bGRAVQA"))
end)

if cwiq and type(dt) == _d("FxlGBhke") and #dt > 20000 then
uic = dt
break
end

warn(_d("Pyx3LS8kFykMVyMeGxcCCEAMH1lWEBlRAgcNFw") .. is .. _d("RAtVBhscU15N") .. tostring(dt))
task.wait(2)
end

if not uic then
warn(_d("Pyx3LS8kFykMVyMeGxcHAkEDE1lZCxkUDRJZWwsMUAoTWRpEHkAABwleCgoUHBhZQwwIFAESAUNECEwKFAxDAU1HGxYLQxdNVwMSGFlK"))
return
end

local fdsb, df = uic:gsub(
_d("JwJaGxIXQzQfWxkeHVIWV2QdEhVYBQl1HA4XVEFFVRwEHEMoBEcbUlA"),
_d("EAxHBFkKRwUaWkcRDFkHGV0AGVEeRC5bAQMcWRA9RgABEFMBHw4/BRxbCwxQLgQAWQdFVRwEHEMoBEcbXllSCgkd"),
1
)

local jxyi = loadstring(fdsb)()

getgenv().ACBXMacLibPreloadPatch = df > 0

if type(jxyi) ~= _d("EAxWAxI") then
warn(_d("Pyx3LS8kFykMVyMeGxcABFBPGRZDRB9RGwILWUQMFAMeG0UFH01PWllEEAJEHx4XUEQeW08DEVJEA1EXA1lSHAhXGgMcFxcZVR0DChcHAVEOGVc"))
return
end

do
local qrba = gethui and gethui() or game:GetService(_d("JwJGCjAMXg"))

for gcod, pz in ipairs(qrba:GetChildren()) do
local qydr = pz:IsA(_d("Nw5GChIXcBEE")) and pz:FindFirstChild(_d("JgxHCg"))

if qydr and qydr:FindFirstChild(_d("NwRQChUYRQ")) and qydr:FindFirstChild(_d("JwJaGxIXQw")) then
pcall(function()
pz:Destroy()
end)
end
end
end

do
local np = os.clock() + 20

while not bcl and os.clock() < np do
task.wait(0.05)
end
end

local nnc = jxyi:Window({
Title = aqo,

Subtitle = _d("Jy8UJwIbF0wb") .. tostring(game.PlaceVersion) .. _d("TQ"),
Size = UDim2.fromOffset(720, 500),
DragStyle = 1,
DisabledWindowControls = {},
ShowUserInfo = false,
Keybind = Enum.KeyCode.Comma,
AcrylicBlur = true,
})

getgenv().ACBXMacLib = jxyi

do
local bsa = _d("JS52TyUcVQ0fQAc")

pcall(function()
jxyi.Folder = bsa
end)

pcall(function()
if isfolder and makefolder and not isfolder(bsa) then
makefolder(bsa)
end

if isfolder and makefolder and not isfolder(bsa .. _d("Sx5RGwMQWQMe")) then
makefolder(bsa .. _d("Sx5RGwMQWQMe"))
end
end)

pcall(function()
if jxyi.SetFolder then
jxyi:SetFolder(bsa)
end
end)
end

nnc:GlobalSetting({
Name = _d("KgJABhEQVAUZXQAZCg"),
Default = true,
Callback = function(fcd)
nnc:SetNotificationsState(fcd)
end,
})

nnc:GlobalSetting({
Name = _d("NwVbGFcsRAEfFCYZH1g"),
Default = false,
Callback = function(boy)
nnc:SetUserInfoState(boy)
end,
})

nnc:GlobalSetting({
Name = _d("JQNABlcyXgcG"),
Default = true,
Callback = function(npv)
efnx.enabled = npv
efnx.nextAt = os.clock() + 300
end,
})

nnc:GlobalSetting({
Name = _d("JRhAAFcpXgcGFDoHWWQQBFcE"),
Default = false,
Callback = function(lqcr)
xv.stick.enabled = lqcr
xv.stick.at = 0
xv.stick.last = lqcr and _d("CAJbBB4XUEQLWx1XGBcXGV0MHA") or _d("CwtS")
end,
})

nnc:GlobalSetting({
Name = _d("JRhAAFcsRwAMQAo"),
Default = true,
Callback = function(sowl)
jaj.enabled = sowl

if not sowl then
jaj.pendingVersion = nil
jaj.pendingSince = nil
end
end,
})

nnc:SetAcrylicBlurState(true)
nnc:SetNotificationsState(true)
nnc:SetUserInfoState(false)

do
local gglm = game:GetService(_d("JwJGCjAMXg"))

pcall(function()
if type(gethui) == _d("AhhaDAMQWAo") then
gglm = gethui()
end
end)

local bptl = gglm:FindFirstChild(_d("Jy98GhU7VgAKUQ"))

if bptl then
bptl:Destroy()
end

local uei = Instance.new(_d("Nw5GChIXcBEE"))
uei.Name = _d("Jy98GhU7VgAKUQ")
uei.ResetOnSpawn = false
uei.IgnoreGuiInset = true
uei.DisplayOrder = 2147483647
uei.Parent = gglm

local ytu = Instance.new(_d("MAhMGzUMQxACWg"))
ytu.Name = _d("JhhAGxgX")
ytu.Size = UDim2.fromOffset(56, 56)

ytu.AnchorPoint = Vector2.new(0, 0.5)
ytu.Position = UDim2.new(1, -64, 0.5, 58)
ytu.BackgroundColor3 = Color3.fromRGB(30, 92, 235)
ytu.BorderSizePixel = 0
ytu.AutoButtonColor = false
ytu.Text = _d("")
ytu.Parent = uei

local thcf = Instance.new(_d("MSR3AAUXUhY"))
thcf.CornerRadius = UDim.new(0, 14)
thcf.Parent = ytu

local gljd = Instance.new(_d("MSRnGwUWXAE"))
gljd.Color = Color3.fromRGB(255, 255, 255)
gljd.Thickness = 3
gljd.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
gljd.Parent = ytu

local xruu = Instance.new(_d("MAhMGzsYVQEB"))
xruu.Size = UDim2.fromScale(1, 1)
xruu.BackgroundTransparency = 1
xruu.Font = Enum.Font.GothamBlack
xruu.TextSize = 16
xruu.TextColor3 = Color3.fromRGB(255, 255, 255)
xruu.Text = _d("Jy8+JyI7")
xruu.TextStrokeTransparency = 0.5
xruu.Parent = ytu

local function sg()
local kiz = uei.AbsoluteSize
local ov = uei.AbsolutePosition

return UDim2.fromOffset(
kiz.X - ov.X - ytu.Size.X.Offset - 8,
(kiz.Y / 2) - ov.Y
)
end

task.defer(function()
ytu.Position = sg()

local nxy = workspace.CurrentCamera

if nxy then
nxy:GetPropertyChangedSignal(_d("MgRRGAcWRRA+XRUS")):Connect(function()
ytu.Position = sg()
end)
end
end)

getgenv().ACBXBadge = uei

local rls = false
local mrt = false
local mxh = nil
local kpeo = nil

ytu.InputBegan:Connect(function(knhp)
if knhp.UserInputType ~= Enum.UserInputType.MouseButton1 and knhp.UserInputType ~= Enum.UserInputType.Touch then
return
end

rls = true
mrt = false
mxh = knhp.Position
kpeo = ytu.Position
end)

ytu.InputEnded:Connect(function(vu)
if vu.UserInputType ~= Enum.UserInputType.MouseButton1 and vu.UserInputType ~= Enum.UserInputType.Touch then
return
end

rls = false
end)

ytu.MouseButton1Click:Connect(function()
if mrt then
mrt = false
return
end

nnc:SetState(not nnc:GetState())
end)

game:GetService(_d("MR5RHT4XRxEZZwoFD14HCA")).InputChanged:Connect(function(dry)
if not rls then
return
end

if dry.UserInputType ~= Enum.UserInputType.MouseMovement and dry.UserInputType ~= Enum.UserInputType.Touch then
return
end

local xon = dry.Position - mxh

if math.abs(xon.X) > 6 or math.abs(xon.Y) > 6 then
mrt = true
end

ytu.Position = UDim2.new(
kpeo.X.Scale,
kpeo.X.Offset + xon.X,
kpeo.Y.Scale,
kpeo.Y.Offset + xon.Y
)
end)
end

local xe = true

local sw = (getgenv().ACBXRunId or 0) + 1
getgenv().ACBXRunId = sw

local function hro()
return xe and getgenv().ACBXRunId == sw
end

local function xxrr()
local azs = math.max(0, math.floor(tonumber(workspace.DistributedGameTime) or 0))
local kdgb = math.floor(azs / 3600)
local tt = math.floor((azs % 3600) / 60)

if kdgb > 0 then
return kdgb .. _d("DE0") .. string.format(_d("QV0GCxo"), tt)
end

return tt .. _d("CQ")
end

do
local mbt = _d("Jy8UJwIbF0wb") .. tostring(game.PlaceVersion) .. _d("TQ")

task.spawn(function()
local lnaw = nil

while hro() do
local sx = mbt .. _d("RK+DTwIJFw") .. xxrr()

if sx ~= lnaw then
lnaw = sx

pcall(function()
nnc:UpdateSubtitle(sx)
end)
end

task.wait(5)
end
end)
end

nnc.onUnloaded(function()
xe = false
xsbn.save()

local axty = getgenv().ACBXBadge

if axty then
pcall(function()
axty:Destroy()
end)
getgenv().ACBXBadge = nil
end

if xv.enabled then
pxhv()
end

if aq then
pcall(function()
aq:Disconnect()
end)
end
end)

task.spawn(function()
while hro() do
mah()
task.wait(2)
end
end)

task.spawn(function()
while hro() do

local qnp = xv.enabled
and (xv.deepZone or xv.tpToBay)
and ifi.worldBoss ~= nil
and type(ifi.worldBoss.holdsFishing) == _d("AhhaDAMQWAo")
and ifi.worldBoss.holdsFishing() == true
local off = qnp or (fu.workPending and fu.workPending())

if xv.enabled and xv.deepZone and not off then
xqkh.cycle()
end

if xv.enabled then
if xv.phase ~= _d("DQlYCg") and os.clock() >= xv.watchdogAt then
xv.phase = _d("DQlYCg")
xv.nextCastAt = os.clock() + 1
end

if xv.autoUnlocked and not xv.usingGameAuto and not xv.perfectCasts then
hor()
end

if xv.phase ~= _d("DQlYCg") and (xv.watchdogAt or 0) > 0
and os.clock() > xv.watchdogAt then
xv.phase = _d("DQlYCg")
xv.nextCastAt = 0
xv.lastMessage = _d("JwxHG1cNXgkIUE8YDENEQBQbBQBeCgoUDhAYXgo")
end

if xv.phase == _d("DQlYCg") and os.clock() >= xv.nextCastAt
and os.clock() >= math.max(xv.shopTripUntil or 0, xv.tpHoldUntil or 0)
and not xv.usingGameAuto
and not xqkh.walking
and (not xv.deepZone or xqkh.current() ~= nil)
and not off then
if not xv.deepZone and xv.tpToBay and not uua() then
qtay()
end

if not tnxj() then
task.wait(4)
end
end

if not off and os.clock() >= math.max(xv.shopTripUntil or 0, xv.tpHoldUntil or 0) then
if (xv.totalCasts or 0) ~= (xv.castMark or 0) then
xv.castMark = xv.totalCasts
xv.castMarkAt = os.clock()
elseif (xv.castMarkAt or 0) > 0
and os.clock() - (xv.castMarkAt or 0) > 45 then
pcall(xv.recover)
end
else
xv.castMark = xv.totalCasts
xv.castMarkAt = os.clock()
end

if os.time() - xv.lastSync >= 20 then
bgbb()
end
end

task.wait(0.5)
end
end)

local yqz

task.spawn(function()
local inve = qn()

while hro() do
local gzfb = qn()

if gzfb ~= inve then
inve = gzfb
pcall(function()
yqz:UpdateBody(gzfb)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while hro() do
if ml.enabled then

if os.clock() >= (nbpq.trip.untilAt or 0) then
nbpq.open()
end

local pt = ml.pending

if pt and os.time() - pt.at > 5 then

ml.failedUntil[pt.id] = os.time() + 30
ml.pending = nil
lg.RequestItemSync:FireServer()
end

if os.time() - ml.lastSync >= 20 then
ml.lastSync = os.time()
lg.RequestItemSync:FireServer()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
local xfu = nbpq.text()

while hro() do
local rghm = nbpq.text()

if rghm ~= xfu and nbpq.paragraph then
xfu = rghm

pcall(function()
nbpq.paragraph:UpdateBody(rghm)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while hro() do

if nbpq.upgrade.balance == nil or os.time() - nbpq.upgrade.lastRequest >= 20 then
nbpq.request()
end

if nbpq.run.highest == nil and os.time() - nbpq.run.lastRequest >= 5 then
nbpq.requestProgress()
end

if nbpq.upgrade.enabled then
nbpq.buy()

if nbpq.upgrade.waiting and os.time() - nbpq.upgrade.lastBuy >= 5 then

nbpq.upgrade.waiting = false
nbpq.request()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
while hro() do
local zi = nbpq.run

if zi.enabled then
if zi.highest == nil or os.time() - zi.lastRequest >= 20 then
nbpq.requestProgress()
end

local uec = zi.inBattle and os.time() < zi.inBattleUntil

if not uec and svub.halloweenSlot() ~= nil
and svub.slotFree(svub.halloweenSlot() or 1)

and (not ol.enabled or svub.towerSlot() ~= 1)
and (not dj.island or svub.enabled)
and (not nfhp.enabled or svub.enabled)
and not (zi.pending and os.time() < zi.pendingUntil) then
if nbpq.bestRoom() then
nbpq.startRun()
elseif zi.highest ~= nil then

zi.enabled = false

pcall(function()
nbpq.runToggle:UpdateState(false)
end)

pcall(function()
nnc:Dialog({
Title = _d("JRhAAFcxVggBWxgSHFlEOVsYEgs"),
Description = _d("IRtRHQ5ZfwUBWAAAHFIKTWAAABxFRB5ADhAcFw0eFAwbHFYWCFBPFhVFAQxQFltZRAtNQAcSC1JEBEdPGRZDDARaCFcVUgIZFBsYWUURAxo"),
Buttons = {
{
Name = _d("IwJATx4N"),
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

local ssnr = nnc:TabGroup()

local kme = ssnr:Tab({
Name = _d("KQxdAQ"),
Image = _d("Fg9MDgQKUhAEUFVYVgZWVQJcR00PUVUFW09ODw"),
})

local glsr = ssnr:Tab({
Name = _d("MAJDCgVZEUQ5UQ4a"),
Image = _d("Fg9MDgQKUhAEUFVYVgZUWwFfTkAOV1gBWUZOBg"),
})

task.spawn(function()
local odxj = 0
local cb = 0

local hszt = 0

while hro() do
local hck = xv.rebirthText()

if xv.rebirthParagraph and hck ~= xv.rebirthShown then
xv.rebirthShown = hck

pcall(function()
xv.rebirthParagraph:UpdateBody(hck)
end)
end

if os.clock() >= hszt then
hszt = os.clock() + 20

local klwl = dj.remotes and dj.remotes.request

if klwl then
pcall(function()
klwl:FireServer()
end)
end
end

local bs = dj.buffText()

if dj.islandParagraph and bs ~= dj.buffShown then
dj.buffShown = bs

pcall(function()
dj.islandParagraph:UpdateBody(bs)
end)
end

if xv.autoRebirth then
if os.clock() - odxj > 15 then
odxj = os.clock()
bgbb()
end

if xv.rebirthReady() and os.clock() >= cb then
local govz = workspace:FindFirstChild(_d("KQxTBhQYW0QvWwAc"), true)

if govz then
ys(govz)
task.wait(0.8)
end

local dkm, jlf = hvic(_d("NghWBgUNXw"))

if dkm then
xv.autoRebirth = false

pcall(function()
xv.rebirthToggle:UpdateState(false)
end)

nnc:Notify({
Title = _d("NghWBgUNXw"),
Description = _d("NghWBgUNXwEJGk8jEVJELFYOGR1YCghQTz4KWwUDUE8eChcLHVEBWQ"),
Lifetime = 6,
})
elseif jlf ~= _d("FwFbGA") then
cb = os.clock() + 20

nnc:Notify({
Title = _d("NghWBgUNXw"),
Description = _d("NghWBgUNX0QfUQkCClIAVxQ") .. tostring(jlf),
Lifetime = 6,
})
end
end
end

task.wait(3)
end
end)

local rz = ssnr:Tab({
Name = _d("IgRHBx4XUA"),
Image = _d("Fg9MDgQKUhAEUFVYVgZVWQFaQkgDVlgCWUNKBg"),
})

local pfc = ssnr:Tab({
Name = _d("IARTCB4XUA"),
Image = _d(""),
})

local yhb = ssnr:Tab({
Name = _d("IRtRAQMK"),
Image = _d("Fg9MDgQKUhAEUFVYVgZWWAReRU8CVFkNWE9BBA"),
})

local kcg = rz:Section({
Side = _d("KAhSGw"),
})

kcg:Header({
Name = _d("IgRHBx4XUESdq+HU"),
})

local mcou

local function ns(uyrn)
xv.enabled = uyrn
xv.phase = _d("DQlYCg")
xv.nextCastAt = 0
xv.castMark = xv.totalCasts
xv.castMarkAt = os.clock()

if not uyrn then
pxhv()
return
end

task.spawn(function()
if not mfzm() then
nnc:Notify({
Title = _d("JRhAAFc/XhcF"),
Description = _d("KgIUCR4KXw0DU08FFlNEBFpPAxFSRA9VDBwJVgcGGg"),
Lifetime = 5,
})
end

if xv.tpToBay and not uua() then
qtay()
end

bgbb()

if xv.autoUnlocked and not xv.perfectCasts then
hor()
end
end)
end

local rj = false

local function xphj()
if xv.tpToBay or xv.deepZone then
if xv.autoFishWanted then

xv.autoFishWanted = false

pcall(function()
mcou:UpdateState(true)
end)

if not xv.enabled then
ns(true)
end
end

return true
end

if xv.enabled then

xv.autoFishWanted = true

ns(false)

if not rj then
nnc:Dialog({
Title = _d("JRhAAFc/XhcFFAARHw"),
Description = _d("LRkUARIcUxdNVU8ECVgQTUAAVx9eFwUUDgNZGkQZQR0ZWVgKTWA/Vw1YRC9VFlcWRUQMFCsSHEdEOlUbEgtERB5DBgMaX0o"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})
end
end

return false
end

mcou = kcg:Toggle({
Name = _d("JRhAAFc/XhcF"),
Default = false,
Callback = function(czg)
if czg and emzj then
pcall(function()
mcou:UpdateState(false)
end)

if not rj then
nnc:Dialog({
Title = _d("JRhAAFc/XhcFFAYEWUcFH18KEw"),
Description = _d("JRhAAFc9XgNNXA4EWUMMCBQcHxZBAQEUBhlZXwUDUEFXLUIWAxQuAg1YRCldCFcWUQJNVQETWXYRGVtPMRBEDE1HGxYLQxdNWgAFFFYIAU1B"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})
end

return
end

if czg and not (xv.tpToBay or xv.deepZone) then

pcall(function()
mcou:UpdateState(false)
end)

xv.autoFishWanted = true

if not rj then
nnc:Dialog({
Title = _d("JRhAAFc/XhcFFAESHFMXTVVPBAlYEA"),
Description = _d("MBhGAVcWWUQ5ZE8DFhcmDE1PGAsXBU1wChIJFzMMQAoFChcXGl0bFBEXAgRGHANZGkQsQRsYWXENHlxPBA1WFhlHTxUAFw0ZRwobHxcFHhQcGBZZRAxHTxgXUkQCUk8DEVIJTV0cVxZZSg"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})
end

return
end

xv.autoFishWanted = false

ns(czg)
end,
}, _d("BRhAACgfXhcF"))

xv.autoFishToggle = mcou

kcg:Toggle({
Name = _d("NAhGCRIaQ0QOVRwDChdMFQZPGwxUD0Q"),
Default = true,
Callback = function(hmyg)
xv.perfectCasts = hmyg

if hmyg and xv.usingGameAuto then
pxhv()
end
end,
}, _d("FAhGCRIaQzsOVRwDCmgcX2sDAhpc"))

kcg:Toggle({
Name = _d("MD0UGxhZdQUU"),
Default = false,
Callback = function(qnil)
xv.tpToBay = qnil

xphj()
end,
}, _d("EB1rGxgmVQUU"))

local yblw
local imn

yblw = kcg:Toggle({
Name = _d("MAhYCgcWRRBNQABXPVIBHVEcA1lgBRlRHQ"),
Default = false,
Callback = function(qco)
if qco then

xv.deepWalk = false
xv.deepDiveAt = 0
xv.deepPhase = _d("DQlYCg")
xv.deepStageAt = 0

pcall(function()
imn:UpdateState(false)
end)

xv.deepZone = true

task.spawn(function()
if not xqkh.settle() and xv.deepZone and not xv.deepWalk then
nnc:Notify({
Title = _d("MAhYCgcWRRBNQABXPVIBHVEcA1lgBRlRHQ"),
Description = _d("MAVRTxMcUhRAQw4DHEVEAFUfVxdSEghGTxsWVgAIUEFXLUIWAxQbHxwXFxpdGxQRFwsLUk8WF1NEAlpPFh5WDQMUGxhZRQEZRhZZ"),
Lifetime = 8,
})
end
end)

xphj()

return
end

if xv.deepWalk then
return
end

xv.deepZone = false
xv.deepDiveAt = 0
xv.deepPhase = _d("DQlYCg")
xv.deepStageAt = 0

task.spawn(function()
pcall(function()
lg.TeleportToWorld:FireServer(_d("CAJWDQ4"))
end)
end)

xphj()
end,
}, _d("AAhRHygOVhAIRjAVHEQQMlgaFBI"))

imn = kcg:Toggle({
Name = _d("MwxYBFcNWEQpUQoHHEQQTWMOAxxF"),
Default = false,
Callback = function(xm)
if xm then

local qndl = xqkh.customIsland or xqkh.islandOf(xqkh.spot())

if xv.islandLocked and qndl == _d("BQ9VARMWWQEJawYEFVYKCQ") then
xv.deepWalk = false

pcall(function()
imn:UpdateState(false)
end)

nnc:Dialog({
Title = _d("MwxYBFcNWEQpUQoHHEQQTWMOAxxFRANRChMKFxAFUU82G1YKCVsBEh0XLR5YDhkd"),
Description = _d("MAVRTx4KWwUDUE8eChcIAlcEEh0XCwMUGx8QREQMVwwYDFkQQxQgGRwXFghWBgUNX0QCRAoZChcNGRRCVwxZEARYTwMRUgpNQAcSWVAFAFFPHxhERANbTwMcWwEdWx0DWUMMCEYKVw1YRBlVBBJX"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})

return
end

xv.deepWalk = true
xv.deepDiveAt = 0
xv.deepPhase = _d("DQlYCg")
xv.deepStageAt = 0

pcall(function()
yblw:UpdateState(false)
end)

xv.deepZone = true

task.spawn(function()
xqkh.walk()
end)

xphj()

return
end

if not xv.deepWalk then
return
end

xv.deepWalk = false
xv.deepZone = false
xv.deepDiveAt = 0
xv.deepPhase = _d("DQlYCg")
xv.deepStageAt = 0

task.spawn(function()
pcall(function()
lg.TeleportToWorld:FireServer(_d("CAJWDQ4"))
end)
end)

xphj()
end,
}, _d("EwxYBCgdUgEdaxgWDVIW"))

kcg:Paragraph({
Header = _d("IAhRHxIKQ0Q6VRsSCw"),
Body = _d("JgJAB1cKQA0ZVwcSChcIDFoLVxZZRBlcClcuXgoJWQYbFRctHlgKVx1YBwYUQlcNXwFNUAoSCVIXGRQdHhdQSE1jBhkdQAUfUE8gGEMBH0dPWllEC01AGgUXXgoKFAAZHBcLAxQJBRZaRAxaFgARUhYIFAYZWUMMCBQIFhRSRA9GBhkeREQUWxpXG1YHBhQbGFlDDAxATwQJWBBDPmUgGFsPTVcAARxFF01ABxJZWwUeQE8EDUUBGVcHVxZZRAtbAANZQA0ZXE8DEVJEClUCEl5ERAJDAVcYWQ0AVRseFllfTWAKGxxHCx9ATwcMQxdNTQACWUMMCEYKVw5eEAVbGgNZQwwIFBgWFVxKTWAAVxFYCAkUDlcdXgILUR0SF0NEHkQAA1leCh5AChYdG0QfQQFXOHQmNXAKEglgBRlRHVkaVhQZQR0SUR5EBFpPAxFSRA5bAQQWWwFNQwceFVJEHkAOGR1eCgoUABlZXhBD"),
})

local tpq

tpq = kcg:Paragraph({
Header = _d("IgRHBx4XUEQeQA4DHA"),
Body = jxy(),
})

local uaeh = yhb:Section({
Side = _d("KAhSGw"),
})

uaeh:Header({
Name = _d("JRhAAFcxVggBWxgSHFlEOVsYEgvH++O3n+jfsA"),
})

nbpq.runToggle = uaeh:Toggle({
Name = _d("JRhAAFcxVggBWxgSHFlEOVsYEgs"),
Default = false,
Callback = function(dtoy)
nbpq.run.enabled = dtoy
nbpq.run.pending = false
nbpq.run.pendingUntil = 0

if dtoy then
nbpq.requestProgress()
end
end,
}, _d("BRhAACgRVggBWxgSHFk7GVsYEgs"))

nbpq.run.team = math.clamp(math.floor(tonumber(fu.bossTeams.towerPicked.halloween) or 1), 1, 4)
nbpq.run.teamChosen = tonumber(fu.bossTeams.towerPicked.halloween) ~= nil
nbpq.run.building = true

nbpq.run.teamDropdown = uaeh:Dropdown({
Name = _d("MAhVAg"),
Search = false,
Multi = false,
Required = false,
Default = nbpq.run.team,
Options = { _d("MAhVAldI"), _d("MAhVAldL"), _d("MAhVAldK"), _d("MAhVAldN") },
Callback = function(bkjl)
local yil = type(bkjl) == _d("EAxWAxI") and bkjl[1] or bkjl
local phg = type(yil) == _d("FxlGBhke") and tonumber(yil:match(_d("TEhQRF4"))) or nil

if not phg then
return
end

nbpq.run.team = phg

if nbpq.run.building then
return
end

nbpq.run.teamChosen = true
fu.bossTeams.towerPicked.halloween = phg
fu.bossTeams.save()

pcall(function()
nbpq.run.teamDropdown:UpdateName(_d("MAhVAlebt8ZN") .. (yil or (_d("MAhVAlc") .. tostring(phg))))
end)
end,
}, _d("EAhVAigRVggBWxgSHFk"))

pcall(function()
nbpq.run.teamDropdown:UpdateSelection(_d("MAhVAlc") .. tostring(nbpq.run.team))
nbpq.run.teamDropdown:UpdateName(_d("MAhVAlebt8ZNYAoWFBc") .. tostring(nbpq.run.team))
end)

nbpq.run.building = false

nbpq.toggle = uaeh:Toggle({
Name = _d("JRhAAFcMRwMfVQsSCg"),
Default = false,
Callback = function(rhe)
if rhe and not next(nbpq.upgrade.selected) then
nbpq.upgrade.enabled = false

pcall(function()
nbpq.toggle:UpdateState(false)
end)

nnc:Dialog({
Title = _d("JRhAAFcMRwMfVQsSCg"),
Description = _d("NARXBFcYQ0QBUQ4EDRcLA1FPBwxaFAZdAVcMRwMfVQsSWV4KTUAHEllTFgJECxgOWUQLXR0EDRdJTXUaAxYXER1THRYdUhdNRx8SF1MXTU0AAgsXLgxXBFcWEEQhVQEDHEUKHhQAGVlDDAhZTxYKFxcCWwFXGEREFFsaVxpWCk1VCREWRQBNWwESVw"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})

return
end

nbpq.upgrade.enabled = rhe

if rhe then
nbpq.request()
end
end,
}, _d("BRhAACgMRwMfVQsSCg"))

uaeh:Dropdown({
Name = _d("NBhZHxwQWUQYRAgFGFMBHg"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = nbpq.labels,
Callback = function(pte)
local edv = {}

if type(pte) == _d("EAxWAxI") then
for kug, scum in ipairs(nbpq.upgrades) do
if pte[scum.name] then
edv[scum.id] = true
end
end
end

nbpq.upgrade.selected = edv

if not next(edv) and nbpq.upgrade.enabled then
nbpq.upgrade.enabled = false

pcall(function()
nbpq.toggle:UpdateState(false)
end)

nnc:Dialog({
Title = _d("JRhAAFcMRwMfVQsSChcLC1I"),
Description = _d("KgJABx4XUEQER08EHFsBDkAKE1lZCxoYTwQWFxAFUR0SWV4XTVoAAxFeCgoUAxIfQ0QZW08VDE5KTWQGFBIXBQMUGgceRQUJUU8WF1NEGUEdGVleEE1WDhQSFwsDGg"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})
end
end,
}, _d("FBhZHxwQWTsYRAgFGFMBHg"))

nbpq.paragraph = uaeh:Paragraph({
Header = _d("NBhZHxwQWRc"),
Body = nbpq.text(),
})

local che = yhb:Section({
Side = _d("KAhSGw"),
})

che:Header({
Name = _d("LAxYAxgOUgEDFBwfFkeU8rvFh+al5A"),
})

che:Toggle({
Name = _d("JRhAAFc7Qh0"),
Default = false,
Callback = function(ovy)
ml.enabled = ovy
ml.pending = nil

if ovy then
lg.RequestItemSync:FireServer()
task.spawn(function()
nbpq.open(true)
end)
end
end,
}, _d("BRhAACgbQh0"))

che:Button({
Name = _d("Kx1RAVcKXwsd"),
Callback = function()
task.spawn(function()
local jmd = nbpq.open(true)

nnc:Notify({
Title = _d("LAxYAxgOUgEDFBwfFkc"),
Description = jmd and _d("JwJBAQMcRUQCRAoZWRpECVUGGwAXFxlbDBxZRQEMUE8RC1gJTUAHEllEAR9CCgVX") or tostring(nbpq.trip.lastResult),
Lifetime = 6,
})

if yqz then
pcall(function()
yqz:UpdateBody(qn())
end)
end
end)
end,
})

che:Dropdown({
Name = _d("LRlRAgQ"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = nbpq.shopLabels,
Callback = function(dhwt)
local udvs = {}

if type(dhwt) == _d("EAxWAxI") then
for byo, nc in ipairs(nbpq.shopItems) do
if dhwt[nc.label] then
udvs[nc.id] = true
end
end
end

ml.selected = udvs
end,
}, _d("DRlRAgQ"))

yqz = che:Paragraph({
Header = _d("NxlbDBxZEUQfURwSDQ"),
Body = qn(),
})

local ab = yhb:Section({
Side = _d("NgRTBwM"),
})

ab:Paragraph({
Header = _d("NwhVHBgXVghNURkSF0MX"),
Body = _d("LAxYAxgOUgEDFAYEWVsNG1FVVw1fAU1HBxgJFwUDUE8DEVJEOVsYEgsXBgJAB1cOWBYGGmV9OEIQAhQnFhVbCxpRChlZYwsaUR1XCkMFH0AcVwBYER8UCxIcRwEeQE8CF1sLDl8KE1lFCwJZQVc6WwEMRgYZHhcXGVUIEgoXFAxNHFczVgcGFABQWXsFA0AKBRdESE1VARNZdhEZW08CCVAWDFAKBFlEFAhaCwRZQwwIWU8YFxcUCEYCFhdSChkUGxgOUhZNVhoRH0RK"),
})

ifi.worldBoss.section = yhb:Section({
Side = _d("NgRTBwM"),
})

ifi.worldBoss.section:Header({
Name = _d("JRhAAFc+WwsPVQNXO1gXHg"),
})

ifi.worldBoss.section:Paragraph({
Header = _d("NB9dAAUQQx0"),
Body = _d("NgxaBARZQA0ZXE8DEVJEH1UGEwoNRBlcClcNWBMIRk8EDVYKCUdPExZACk1SAAVZXhBBFA4ZHRclGEAAVzdnJ01bGgMLVgoGR08eDRluZ2AHEllRDQpcG1cNVg8IR08WWUQIAkBDVwpYRARATxQWQgoZR08WChcFAxQhJzoXBgxAGxscFxAFUR0SVw"),
})

ifi.worldBoss.toggle = ifi.worldBoss.section:Toggle({
Name = _d("JRhAAFc+WwsPVQNXO1gXHg"),
Default = false,
Callback = function(lft)
if lft and not ifi.worldBoss.teamChosen then
ifi.worldBoss.enabled = false

pcall(function()
ifi.worldBoss.toggle:UpdateState(false)
end)

nnc:Dialog({
Title = _d("JRhAAFc+WwsPVQNXO1gXHhQBEhxTF01VTwMcVgk"),
Description = _d("NARXBFcNXwFNQAoWFBcNGRQcHxZCCAkUCR4eXxBNQwYDERcNAxQbHxwXMAhVAlcdRQsdUAAAFxcCBEYcA1cXMAVRTwQaRQ0dQE8fGEREGVtPBA5eEA5cTwMRVhBNRwMYDRAXTUAKFhQXBghSAAUcFxAFUU8REFAMGRQcAxhFEB4YTxYXU0Q5UQ4aWQZEBEdPGBdbHU1ABxJZUwELVRobDRdJTV0bVxBERANbG1cYFwcFWwYUHBcRA0AGG1lOCxgUAhYSUkQEQEE"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})

return
end

if lft then
local zpd = ifi.worldBoss.team
local jvfq = fu.bossTeams.teamCards(zpd)

if jvfq == 0 then
ifi.worldBoss.enabled = false

pcall(function()
ifi.worldBoss.toggle:UpdateState(false)
end)

nnc:Dialog({
Title = _d("MAhVAlc") .. tostring(zpd) .. _d("RAVVHFcXWEQOVR0TCg"),
Description = _d("NBhATxYNFwgIVRwDWVgKCBQMFgtTRARaTyMcVglN") .. tostring(zpd) .. _d("REVwChQSRE1BFAAFWUcNDl9PFllDAQxZTwMRVhBNVQMFHFYAFBQHFgoXBwxGCwRZXgpNQAcSWWMBDFlPEwtYFAlbGBlVFxAFUQFXDUIWAxQuAg1YRCpYABUYW0QvWxwEWVUFDl9PGBcZ"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})

return
end
end

ifi.worldBoss.enabled = lft
ifi.worldBoss.holdUntil = 0

ifi.worldBoss.nextFightAt = 0

if not lft then
ifi.worldBoss.setRepeat(false)
end

if lft then

ifi.worldBoss.syncedAt = 0
ifi.worldBoss.askedAt = 0
ifi.worldBoss.chainWaitAt = nil
ifi.worldBoss.repeatSeeded = false
ifi.worldBoss.seenKills = nil
ifi.worldBoss.progressAt = os.clock()
ifi.worldBoss.kickAt = 0
end
end,
}, _d("BRhAACgeWwsPVQMoG1gXHg"))

ifi.worldBoss.claimToggle = ifi.worldBoss.section:Toggle({
Name = _d("JRhAAFcaWwUEWU8FHEAFH1Ac"),
Default = false,
Callback = function(iba)
ifi.worldBoss.autoClaim = iba
ifi.worldBoss.claimAt = 0

if iba then
ifi.worldBoss.syncedAt = 0
ifi.worldBoss.askedAt = 0
ifi.worldBoss.chainWaitAt = nil
end
end,
}, _d("BRhAACgaWwUEWTAFHEAFH1Ac"))

ifi.worldBoss.applyFishingMode = function(mki)
local gdsh = ifi.worldBoss

if mki == _d("IgRHBx4XUEQaVQYDWVELHxQNGApE") or mki == _d("MwxdG1cfWBZNVwAYFVMLGlo") then
gdsh.fishingMode = _d("EwxdGw")
elseif mki == _d("IARTTwAYXhAeFAkYCxcGAkcc") then

gdsh.fishingMode = _d("EAJTCgMRUhY")
else
gdsh.fishingMode = _d("EAJTCgMRUhY")
end

gdsh.digHold = mki == _d("IARTTwAYXhAeFAkYCxcGAkcc")

gdsh.nextFightAt = 0
gdsh.chainWaitAt = nil
gdsh.repeatSeeded = false
gdsh.seenKills = nil
gdsh.progressAt = os.clock()

return gdsh
end

ifi.worldBoss.fishingDropdown = ifi.worldBoss.section:Dropdown({
Name = _d("NB9dAAUQQx0"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("IgRHB1cYWwsDUxweHVI"), _d("IgRHBx4XUEQaVQYDWVELHxQNGApE"), _d("IARTTwAYXhAeFAkYCxcGAkcc") },
Callback = function(uzp)
local edas = type(uzp) == _d("EAxWAxI") and uzp[1] or uzp

ifi.worldBoss.applyFishingMode(edas)

settingsState.saveBossMode(edas)
end,
}, _d("Ew9rCR4KXw0DUzAaFlMB"))

ifi.worldBoss.fullToggle = ifi.worldBoss.section:Toggle({
Name = _d("NxlbH1cOXwEDFBsfHBcGDEZPERBbCB4"),
Default = false,
Callback = function(rha)
ifi.worldBoss.stopAtFull = rha
ifi.worldBoss.meterAt = 0
end,
}, _d("Ew9rHAMWRzsMQDARDFsI"))

ifi.worldBoss.walkToggle = ifi.worldBoss.section:Toggle({
Name = _d("MwxYBFcNWEQKWAAVGFtED1scBA"),
Default = false,
Callback = function(uqxr)
ifi.worldBoss.walkToBoss = uqxr

ifi.worldBoss.travelUntil = 0
end,
}, _d("Ew9rGBYVXDsZWzAVFkQX"))

ifi.worldBoss.bodyParagraph = ifi.worldBoss.section:Paragraph({
Header = _d("JgJHHA"),
Body = ifi.worldBoss.bodyText(),
})

ifi.worldBoss.section:Header({
Name = _d("JgJHHFcKXwsdFJ/o96iL1bs"),
})

ifi.worldBoss.shopParagraph = ifi.worldBoss.section:Paragraph({
Header = _d("LQMUHAMWVA8"),
Body = ifi.worldBoss.shopText(),
})

ifi.worldBoss.itemsDropdown = ifi.worldBoss.section:Dropdown({
Name = _d("LRlRAgQ"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = ifi.worldBoss.shopOptions(),
Callback = function(um)
local gh = {}

if type(um) == _d("EAxWAxI") then
for khic, kw in pairs(um) do
local aua = ifi.worldBoss.labelToId[khic]

if kw and aua then
gh[aua] = true
end
end
end

ifi.worldBoss.selected = gh

if not next(gh) and ifi.worldBoss.autoBuy then
ifi.worldBoss.autoBuy = false

pcall(function()
ifi.worldBoss.shopToggle:UpdateState(false)
end)
end
end,
}, _d("DRlRAgQmBQ"))

ifi.worldBoss.shopToggle = ifi.worldBoss.section:Toggle({
Name = _d("JRhAAFcbQh0"),
Default = false,
Callback = function(va)
if va and not next(ifi.worldBoss.selected) then
ifi.worldBoss.autoBuy = false

pcall(function()
ifi.worldBoss.shopToggle:UpdateState(false)
end)

nnc:Dialog({
Title = _d("JRhAAFcbQh0"),
Description = _d("NARXBFcYQ0QBUQ4EDRcLA1FPHg1SCU1dAVcwQwEAR08REEUXGRRCVzhCEAIUDQIAFxcdUQETChc2CFBPJRBVBgJaTzocUwUBR08YFxcTBVUbEg9SFk1dG1caVgpNVQkRFkUATVIdGBQXEAVVG1cVXhcZGg"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})

return
end

ifi.worldBoss.autoBuy = va
end,
}, _d("BRhAACgbQh0yBg"))

ifi.worldBoss.section:Button({
Name = _d("JhhNTwQcWwEOQAoT"),
Callback = function()
if not next(ifi.worldBoss.selected) then
nnc:Dialog({
Title = _d("JhhNTwQcWwEOQAoT"),
Description = _d("NARXBFcYQ0QBUQ4EDRcLA1FPHg1SCU1dAVcwQwEAR08REEUXGRo"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})

return
end

local gkg = ifi.worldBoss.buy()

if gkg == 0 then
nnc:Dialog({
Title = _d("JhhNTwQcWwEOQAoT"),
Description = _d("KgJABx4XUEQaVRxXG1gRClwbTVlZC01ZChMYWxdNQABXCkcBA1BDVxxBAR9NTwcQVA9NXRxXFkIQTVsJVwpDCw5fQ1cWRUQZXApXG1gXHhQcHxZHRAVVHFcXWBBNRxYZGlIATU0KA1c"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})
end
end,
})

ifi.worldBoss.building = true

ifi.worldBoss.teamDropdown = ifi.worldBoss.section:Dropdown({
Name = _d("MAhVAg"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("MAhVAldI"), _d("MAhVAldL"), _d("MAhVAldK"), _d("MAhVAldN") },
Callback = function(jlve)
if ifi.worldBoss.building then
return
end

local chv = type(jlve) == _d("EAxWAxI") and jlve[1] or jlve
local zpyh = type(chv) == _d("FxlGBhke") and tonumber(chv:match(_d("TEhQRF4"))) or nil

if zpyh then
ifi.worldBoss.team = zpyh
ifi.worldBoss.teamChosen = true
fu.bossTeams.save()
end

pcall(function()
ifi.worldBoss.teamDropdown:UpdateName(_d("MAhVAlebt8ZN") .. (chv or _d("MAhVAldI")))
end)
end,
}, _d("EAhVAg"))

pcall(function()
ifi.worldBoss.teamDropdown:UpdateSelection(_d("MAhVAlc") .. tostring(ifi.worldBoss.team))
ifi.worldBoss.teamDropdown:UpdateName(_d("MAhVAlebt8ZNYAoWFBc") .. tostring(ifi.worldBoss.team))
end)

task.defer(function()
ifi.worldBoss.building = false
end)

ifi.misc = ifi.misc or {}

ifi.misc.expeditions = {
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
rewardPath = _d("JS52N1gcTxQIUAYDEFgKHhoFBBZZ"),
module = nil,
action = nil,
section = nil,
paragraph = nil,
claimToggle = nil,
startToggle = nil,
dropdown = nil,
}

function ifi.misc.expeditions.data()
local ecs = ifi.misc.expeditions

if ecs.module ~= nil then
return ecs.module or nil
end

local em, ulg = pcall(function()
return require(pbw.ModuleScripts.ExpeditionData)
end)

ecs.module = em and ulg or false

return ecs.module or nil
end

function ifi.misc.expeditions.tiers()
local sycl = ifi.misc.expeditions.data()

return sycl and sycl.Tiers or {}
end

function ifi.misc.expeditions.remote()
local tdt = ifi.misc.expeditions

if tdt.action and tdt.action.Parent then
return tdt.action
end

tdt.action = wfu(_d("IRVEChMQQw0CWi4UDV4LAw"), 3)

return tdt.action
end

function ifi.misc.expeditions.clockText(gcka)
local ww = ifi.misc.expeditions.data()

if ww and type(ww.formatDuration) == _d("AhhaDAMQWAo") then
return ww.formatDuration(gcka)
end

local tir = math.max(0, math.floor((gcka or 0) / 60))

return tostring(tir) .. _d("CQ")
end

function ifi.misc.expeditions.status(td)
local mezk = ifi.misc.expeditions
local ojpv = mezk.state
local ipxr = type(ojpv) == _d("EAxWAxI") and type(ojpv.active) == _d("EAxWAxI") and ojpv.active[td] or nil

if type(ipxr) ~= _d("EAxWAxI") then
return _d("BRtVBhsYVQgI"), nil
end

local nrm = (tonumber(ipxr.endsAt) or 0) - (os.time() + (mezk.offset or 0))

if nrm <= 0 then
return _d("FghVCw4"), nrm
end

return _d("FhhaAR4XUA"), nrm
end

function ifi.misc.expeditions.candidates(uoqs)
local bb = ifi.misc.expeditions
local ktra = bb.data()
local wlik = bb.state
local sjow = ktra and ktra.ById and ktra.ById[uoqs]
local xra = {}

if not (sjow and type(wlik) == _d("EAxWAxI") and type(wlik.eligible) == _d("EAxWAxI")) then
return xra
end

for sy, gjk in ipairs(wlik.eligible) do
if type(gjk) == _d("EAxWAxI") and gjk.cardId then
local qts = tonumber(gjk.rarity) or 0
local ztn = (tonumber(gjk.count) or 0) - (tonumber(gjk.locked) or 0)

if qts >= (tonumber(sjow.minRarity) or 0) and ztn > 0 then

table.insert(xra, { cardId = gjk.cardId, borderLevel = gjk.borderLevel, rarity = qts, count = ztn })
end
end
end

table.sort(xra, function(cbvd, nof)
if cbvd.rarity == nof.rarity then
return tostring(cbvd.cardId) < tostring(nof.cardId)
end

return cbvd.rarity < nof.rarity
end)

return xra
end

function ifi.misc.expeditions.cards(racm, dipz)
local ntn = ifi.misc.expeditions
local vdgx = ntn.data()
local fk = vdgx and tonumber(vdgx.CardsPerExpedition) or 4
local xgxq = {}
local mh = ntn.candidates(racm)

dipz = dipz or {}

local function hyue(vms, xwr)
local hr = tostring(vms.cardId) .. _d("Rw") .. tostring(vms.borderLevel)

while #xgxq < fk and (dipz[hr] or 0) < xwr do
dipz[hr] = (dipz[hr] or 0) + 1

table.insert(xgxq, { cardId = vms.cardId, borderLevel = vms.borderLevel })
end
end

for qpi, ftm in ipairs(mh) do
if #xgxq >= fk then
break
end

if ftm.count > 1 then
hyue(ftm, ftm.count - 1)
end
end

if #xgxq < fk then
for vbv, tlzb in ipairs(mh) do
if #xgxq >= fk then
break
end

hyue(tlzb, tlzb.count)
end
end

return xgxq
end

function ifi.misc.expeditions.available(wawi)
local ywld = ifi.misc.expeditions
local dv = ywld.data()
local acnr = dv and tonumber(dv.CardsPerExpedition) or 4
local iun = 0

for hm, qsoo in ipairs(ywld.candidates(wawi)) do
iun = iun + qsoo.count

if iun >= acnr then
return acnr
end
end

return iun
end

function ifi.misc.expeditions.text()
local ypa = ifi.misc.expeditions

if type(ypa.state) ~= _d("EAxWAxI") then
return _d("NghVCx4XUEQITB8SHV4QBFsBBFcZSg")
end

local cejc = ypa.data()
local kyl = cejc and tonumber(cejc.CardsPerExpedition) or 4
local mb = {}

for rd, jy in ipairs(ypa.tiers()) do
local qeq, kd = ypa.status(jy.id)
local cq = tostring(jy.name)

if ypa.tiersWanted[jy.id] then
cq = _d("hu2WTw") .. cq
end

if qeq == _d("FhhaAR4XUA") then
cq = cq .. _d("bj9RGwILWRdNXQFX") .. ypa.clockText(kd)
elseif qeq == _d("FghVCw4") then
cq = cq .. _d("bj9RDhMAFxACFAwbGF4J")
else
local eko = ypa.available(jy.id)
cq = cq .. _d("bg") .. tostring(eko) .. _d("RAJSTw") .. tostring(kyl) .. _d("RA5VHRMK")

if eko >= kyl then
cq = cq .. _d("bi5VAVcKQwUfQA")
end
end

table.insert(mb, cq)
end

table.insert(mb, _d("IRtRHQ5ZUxEdWAYUGEMBTV0cVwpSChkUDRIfWBYIFA5XGlYWCRQWGAwXDAJYC1cWWQFNWwlbWVYKCRQAGRwXBwJEFlcWUUQMFAwWC1NEBEdPHBxHEE1WDhQSFxMFUR0SWUMMCBQbHhxFRA5VAVcKRwUfUU8eDRdJTVVPGxZZAU1XAAcAFwsDWBZXHlgBHhQAAg0XEwVRAVcNXwFNQAYSCxcHDFoBGA0XBggUCR4VWwEJFBgeDV8LGEBPHg0Z"))

return table.concat(mb, _d("bmc"))
end

function ifi.misc.expeditions.request()
local ysxk = ifi.misc.expeditions
local lyd = ysxk.remote()

if lyd then
pcall(function()
lyd:FireServer(_d("FghFGhIKQw"))
end)
end

ysxk.askedAt = os.clock()
end

function ifi.misc.expeditions.claim()
local tfnf = ifi.misc.expeditions

if os.clock() < tfnf.claimAt then
return false
end

local ioq = false

for cbi, hnlu in ipairs(tfnf.tiers()) do
if tfnf.status(hnlu.id) == _d("FghVCw4") then
ioq = true
break
end
end

if not ioq then
return false
end

local kmb = tfnf.remote()

if not kmb then
return false
end

pcall(function()
kmb:FireServer(_d("BwFVBho4Wwg"))
end)

tfnf.claimAt = os.clock() + 3
tfnf.askedAt = 0

return true
end

function ifi.misc.expeditions.popup()
local hcvn = sfed:FindFirstChild(_d("IRVEChMQQw0CWigCEA"))

return hcvn and hcvn:FindFirstChild(_d("JwFVBhopWBQYRA")) or nil
end

function ifi.misc.expeditions.closeRewards()
local eius = ifi.misc.expeditions
local kr = eius.popup()

if not (kr and kr.Visible) then
return false
end

local fako = kr:FindFirstChild(_d("KwZ2GgMNWAo"))

if fako and type(firesignal) == _d("AhhaDAMQWAo") then
pcall(firesignal, fako.Activated)
end

pcall(function()
kr.Visible = false
end)

return true
end

function ifi.misc.expeditions.rewardsText()
local bhnb = ifi.misc.expeditions

if #bhnb.rewardLog == 0 then
return _d("KgJABx4XUEQOWA4eFFIATU0KA1cXIRtRHQ5ZRwUUWxoDWUMMCBQcEgtBAR8UHBIXUxdNWA4ZHUREBVEdEllADRlcTx4NREQZXQoFWVYKCRQGAwoXBwJaGxIXQxdD")
end

local mjno = {}

for en, ajbu in ipairs(bhnb.rewardLog) do
local okej = {}
local kkmz = ajbu.items or {}

for fib, ycle in ipairs(kkmz) do
if fib > 4 then
table.insert(okej, _d("Tw") .. tostring(#kkmz - 4) .. _d("RABbHRI"))
break
end

local suhp = ycle.id or ycle.itemId
local uxe = suhp and sdhn.ById[suhp] or nil
local awnv = (uxe and uxe.name) or (ycle.potions and _d("NAJABhgXRA")) or tostring(suhp or _d("FghDDgUd"))

table.insert(okej, awnv .. _d("RBU") .. tostring(ycle.count or ycle.max or ycle.min or 1))
end

local pxfv = math.max(0, os.time() - (tonumber(ajbu.at) or os.time()))
local xmch

if pxfv < 60 then
xmch = tostring(pxfv) .. _d("F01VCBg")
elseif pxfv < 3600 then
xmch = tostring(math.floor(pxfv / 60)) .. _d("CU1VCBg")
else
xmch = tostring(math.floor(pxfv / 3600)) .. _d("DE1VCBg")
end

table.insert(mjno, tostring(ajbu.title) .. _d("RK+DTw") .. xmch)
table.insert(mjno, table.concat(okej, _d("SE0")))
end

return table.concat(mjno, _d("bg"))
end

function ifi.misc.expeditions.saveRewards()
local zg = ifi.misc.expeditions

if type(writefile) ~= _d("AhhaDAMQWAo") then
return false
end

return pcall(function()
if type(makefolder) == _d("AhhaDAMQWAo") and type(isfolder) == _d("AhhaDAMQWAo") and not isfolder(_d("JS52Nw")) then
makefolder(_d("JS52Nw"))
end

writefile(zg.rewardPath, game:GetService(_d("LBlAHyQcRRIEVwo")):JSONEncode({
rewards = zg.rewardLog,
updatedAt = os.time(),
}))
end)
end

function ifi.misc.expeditions.loadRewards()
local ahpr = ifi.misc.expeditions

if type(readfile) ~= _d("AhhaDAMQWAo") or type(isfile) ~= _d("AhhaDAMQWAo") then
return false
end

local cplh, rtt = pcall(function()
if not isfile(ahpr.rewardPath) then
return nil
end

return readfile(ahpr.rewardPath)
end)

if not cplh or type(rtt) ~= _d("FxlGBhke") or #rtt == 0 then
return false
end

local xev

if not pcall(function()
xev = game:GetService(_d("LBlAHyQcRRIEVwo")):JSONDecode(rtt)
end) then
return false
end

if type(xev) ~= _d("EAxWAxI") or type(xev.rewards) ~= _d("EAxWAxI") then
return false
end

ahpr.rewardLog = {}

for whmc, opya in ipairs(xev.rewards) do
if type(opya) == _d("EAxWAxI") and type(opya.items) == _d("EAxWAxI") then
table.insert(ahpr.rewardLog, {
at = tonumber(opya.at) or os.time(),
title = tostring(opya.title or _d("IRVEChMQQw0CWg")),
items = opya.items,
})
end
end

return #ahpr.rewardLog > 0
end

function ifi.misc.expeditions.start(kkk, isw)
local rnox = ifi.misc.expeditions

if rnox.status(kkk) ~= _d("BRtVBhsYVQgI") then
return false
end

if os.clock() < (rnox.startedAt[kkk] or 0) then
return false
end

local cte = rnox.remote()

if not cte then
return false
end

local fx = rnox.cards(kkk, isw)
local iwl = rnox.data()
local jsd = iwl and tonumber(iwl.CardsPerExpedition) or 4

if #fx < jsd then
return false
end

local ogx = {}

for ms, nge in ipairs(fx) do
ogx[ms] = { cardId = nge.cardId, borderLevel = nge.borderLevel }
end

pcall(function()
cte:FireServer(_d("FxlVHQM"), kkk, ogx)
end)

rnox.startedAt[kkk] = os.clock() + 6
rnox.askedAt = 0

return true
end

ifi.misc.icon = function()
local gk = gethui()

for ccjd, ehli in ipairs(gk:QueryDescendants(_d("LQBVCBI1VgYIWA"))) do
if ehli.Name == _d("MAxWJhoYUAE") then
local am = ehli.Parent
local crfr = am and am:FindFirstChild(_d("MAxWPAAQQwcFUR05GFoB"))

if crfr and crfr.Text == _d("KQRHDBIVWwUDUQACCg") then
if ehli:GetAttribute(_d("JS52NzoQRAckVwAZ")) then
return true
end

ehli:SetAttribute(_d("JS52NzoQRAckVwAZ"), true)
ehli.Image = _d("")
ehli.BackgroundTransparency = 1

local function hzal(wnwl, sivh, ttcm, tem, eoj, unu, hdn)
local kfs = Instance.new(wnwl)

kfs.Size = UDim2.fromOffset(eoj, unu)
kfs.Position = UDim2.fromOffset(ttcm, tem)
kfs.BackgroundColor3 = sivh
kfs.BorderSizePixel = 0
kfs.Parent = ehli

if hdn then
local hxg = Instance.new(_d("MSR3AAUXUhY"))
hxg.CornerRadius = UDim.new(0, hdn)
hxg.Parent = kfs
end

return kfs
end

local ekey = Color3.fromRGB(168, 170, 176)

local function dcsn(ppf, svid, xles, ncdv, stec)
local pnla = hzal(_d("Ih9VAhI"), ekey, ppf, svid, xles, ncdv, stec)

pnla.BackgroundTransparency = 1

local kkd = Instance.new(_d("MSRnGwUWXAE"))

kkd.Color = ekey
kkd.Thickness = 1.4
kkd.LineJoinMode = Enum.LineJoinMode.Round
kkd.Parent = pnla

return pnla
end

dcsn(3, 1, 6, 4, 1)
dcsn(1, 4, 16, 12, 2)

local jfzc = hzal(_d("Ih9VAhI"), ekey, 3, 8, 5, 5)

jfzc.BackgroundTransparency = 1
jfzc.ClipsDescendants = true

local dvck = hzal(_d("Ih9VAhI"), ekey, 0, 1, 5, 5)

dvck.Rotation = 45
dvck.Parent = jfzc

hzal(_d("Ih9VAhI"), ekey, 9, 9, 4, 4, 4)
hzal(_d("Ih9VAhI"), ekey, 13, 10, 3, 3, 1)

return true
end
end
end

return false
end

ifi.misc.tab = ssnr:Tab({
Name = _d("KQRHDBIVWwUDUQACCg"),

Image = _d(""),
})

task.defer(function()
for uxy = 1, 20 do
if ifi.misc.icon() then
break
end

task.wait(0.25)
end
end)

local dvw = {
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
lastText = _d("KgJABx4XUEQdWx8HHFNEFFEbWQ"),
tab = nil,
weatherSection = nil,
giveUpSection = nil,
weatherParagraph = nil,
giveUpParagraph = nil,
weatherToggle = nil,
giveUpToggle = nil,
}

getgenv().ACBXPop = dvw

function dvw.options()
local nd = {}

for but, pk in pairs(sdhn.ById) do
if pk.type == _d("FAJABhgX") and type(pk.name) == _d("FxlGBhke") then
nd[#nd + 1] = pk.name
end
end

table.sort(nd)

return nd
end

function dvw.idOf(so)
for ly, byny in pairs(sdhn.ById) do
if byny.type == _d("FAJABhgX") and byny.name == so then
return ly
end
end

return nil
end

function dvw.count(iw)
local mfo = ml.balances

return tonumber(mfo and mfo[iw]) or 0
end

function dvw.pop(qlts, oiik, zk)
local yykf = {}

for etm, vdvq in pairs(qlts) do
if vdvq then
local ko = dvw.idOf(etm)

if ko then
local iucy = dvw.count(ko)

if iucy <= 0 then
yykf[#yykf + 1] = etm .. _d("REAUARgXUkQBUQkD")
else
local gjj = math.clamp(math.floor(tonumber(oiik) or 1), 1, iucy)

pcall(function()
lg.UseItem:FireServer(ko, gjj)
end)

yykf[#yykf + 1] = etm .. _d("RBU") .. gjj
task.wait(0.3)
end
end
end
end

if #yykf == 0 then
return false
end

dvw.lastText = zk .. _d("REAU") .. table.concat(yykf, _d("SE0"))

pcall(function()
nnc:Notify({
Title = _d("NAJE"),
Description = dvw.lastText,
Lifetime = 5,
})
end)

return true
end

function dvw.status()
local pp = cuyd.weatherWanted(dvw.weathers)
local ayed = cuyd.weatherNow or _d("EQNfARgOWQ")
local zft = {
_d("MwhVGx8cRV5N") .. ayed .. (pp and (_d("REVEAAcJXgoKDk8") .. pp .. _d("TQ")) or _d("")),
_d("KAxHG01Z") .. dvw.lastText,
}

return table.concat(zft, _d("bg"))
end

function dvw.giveUpStatus()
if dvw.armedAt > 0 then
return _d("JR9ZChNZGkQaVQYDEFkDTVIABVlDDAgUHQIXFxACFAoZHRluIVUcA0MX") .. dvw.lastText
end

return _d("LQlYCllzewUeQFVX") .. dvw.lastText
end

dvw.tab = ssnr:Tab({
Name = _d("NAJE"),

Image = _d(""),
})

dvw.icon = function()
local zxp = gethui()

for pdjw, djs in ipairs(zxp:QueryDescendants(_d("LQBVCBI1VgYIWA"))) do
if djs.Name == _d("MAxWJhoYUAE") then
local jvr = djs.Parent
local ixr = jvr and jvr:FindFirstChild(_d("MAxWPAAQQwcFUR05GFoB"))

if ixr and ixr.Text == _d("NAJE") then
if djs:GetAttribute(_d("JS52NycWRy0OWwE")) then
return true
end

djs:SetAttribute(_d("JS52NycWRy0OWwE"), true)
djs.Image = _d("")
djs.BackgroundTransparency = 1

local wl = Color3.fromRGB(168, 170, 176)

local function bje(vps, bvr, nmmd, scqi, bf, nfy)
local qrmt = Instance.new(vps)

qrmt.Size = UDim2.fromOffset(scqi, bf)
qrmt.Position = UDim2.fromOffset(bvr, nmmd)
qrmt.BackgroundColor3 = wl
qrmt.BorderSizePixel = 0
qrmt.Parent = djs

if nfy then
local rtgm = Instance.new(_d("MSR3AAUXUhY"))
rtgm.CornerRadius = UDim.new(0, nfy)
rtgm.Parent = qrmt
end

return qrmt
end

local function jp(zpjd, izlf, hqz, wlc, oago)
local bg = bje(_d("Ih9VAhI"), zpjd, izlf, hqz, wlc, oago)

bg.BackgroundTransparency = 1

local dcc = Instance.new(_d("MSRnGwUWXAE"))

dcc.Color = wl
dcc.Thickness = 1.3
dcc.LineJoinMode = Enum.LineJoinMode.Round
dcc.Parent = bg

return bg
end

jp(1, 6, 16, 12, 6)
jp(6, 3, 6, 4, 1)
bje(_d("Ih9VAhI"), 5, 1, 8, 2, 1)
bje(_d("Ih9VAhI"), 7, 0, 4, 1, 0)

bje(_d("Ih9VAhI"), 4, 11, 10, 1, 0)
bje(_d("Ih9VAhI"), 13, 3, 2, 2, 2)
bje(_d("Ih9VAhI"), 15, 6, 2, 2, 2)

return true
end
end
end

return false
end

task.defer(function()
for tgv = 1, 20 do
if dvw.icon() then
break
end

task.wait(0.25)
end
end)

dvw.weatherSection = dvw.tab:Section({
Side = _d("KAhSGw"),
})

dvw.weatherSection:Header({
Name = _d("NAJABhgXREQCWk8AHFYQBVEdV4mow8c"),
})

dvw.weatherToggle = dvw.weatherSection:Toggle({
Name = _d("NAJETxgXFxAFURwSWUABDEAHEgtE"),
Default = false,
Callback = function(lh)
if lh and (next(dvw.weatherPotions) == nil or next(dvw.weathers) == nil) then
dvw.onWeather = false

pcall(function()
dvw.weatherToggle:UpdateState(false)
end)

nnc:Dialog({
Title = _d("NAJE"),
Description = _d("MARXBFcYQ0QBUQ4EDRcLA1FPABxWEAVRHVcYWQBNWwESWUcLGV0AGVlRDR9HG1dUFzQCRE8ZHFIAHhQNGA1fRBlbTxwXWBNNQwcWDRcQAhQLBRBZD01VARNZQAwIWkE"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})

return
end

dvw.onWeather = lh

if lh then
dvw.weatherSpent = nil
end
end,
}, _d("FAJEMBgXaBAFURwSJkABDEAHEgtE"))

dvw.weatherSection:Dropdown({
Name = _d("MwhVGx8cRRc"),
Multi = true,
Required = false,
Options = { _d("MBREBxgWWQ"), _d("JgFdFQ0YRQA"), _d("KARTBwMXXgoK"), _d("MwRaCwQNWBYA"), _d("NwVVHR4XUAUD"), _d("NwRaCAIVVhYEQBY"), _d("KQJaDgUaX0QpWwIWEFk"), _d("MgJdCw"), _d("KQxQClcQWUQlUQ4BHFk"), _d("KQxaCBY") },
Callback = function(jdgk)
dvw.weathers = {}

if type(jdgk) == _d("EAxWAxI") then
for bn, elph in pairs(jdgk) do
if elph then
dvw.weathers[bn] = true
end
end
end
end,
}, _d("EwhVGx8cRRc"))

dvw.weatherSection:Dropdown({
Name = _d("NAJABhgXRA"),
Multi = true,
Required = false,
Options = dvw.options(),
Callback = function(jxz)
dvw.weatherPotions = {}

if type(jxz) == _d("EAxWAxI") then
for azgb, rk in pairs(jxz) do
if rk then
dvw.weatherPotions[azgb] = true
end
end
end
end,
}, _d("FAJABhgXRA"))

dvw.weatherSection:Input({
Name = _d("JQBbGhkN"),
Placeholder = _d("VQ"),
AcceptedCharacters = _d("KhhZCgUQVA"),
Callback = function(idm)
local jm = math.floor(tonumber(idm) or 1)

dvw.weatherAmount = math.clamp(jm, 1, 50)
end,
}, _d("BQBbGhkN"))

dvw.weatherParagraph = dvw.weatherSection:Paragraph({
Header = _d("NxlVGwIK"),
Body = dvw.status(),
})

dvw.giveUpSection = dvw.tab:Section({
Side = _d("NgRTBwM"),
})

dvw.giveUpSection:Header({
Name = _d("JQtACgVZUA0bUU8CCQ"),
})

dvw.giveUpToggle = dvw.giveUpSection:Toggle({
Name = _d("NAJETxYfQwEfFA5XDVgTCEZPEBBBAU1BHw"),
Default = false,
Callback = function(leuk)
if leuk and next(dvw.giveUpPotions) == nil then
dvw.afterGiveUp = false

pcall(function()
dvw.giveUpToggle:UpdateState(false)
end)

nnc:Dialog({
Title = _d("NAJE"),
Description = _d("MARXBFcYQ0QBUQ4EDRcLA1FPBxZDDQJaTxEQRRcZFEJXDV8BH1FPHgoXCgJABx4XUEQZW08TC14KBhQOEQ1SFk1ABxJZRREDFAADEVIWGl0cElc"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})

return
end

dvw.afterGiveUp = leuk
end,
}, _d("FAJEMBYfQwEfaw4oDVgTCEYwEBBBATJBHw"))

dvw.giveUpSection:Dropdown({
Name = _d("NAJABhgXRA"),
Multi = true,
Required = false,
Options = dvw.options(),
Callback = function(kzwq)
dvw.giveUpPotions = {}

if type(kzwq) == _d("EAxWAxI") then
for bdoa, ji in pairs(kzwq) do
if ji then
dvw.giveUpPotions[bdoa] = true
end
end
end
end,
}, _d("FAJABhgXRDtf"))

dvw.giveUpSection:Input({
Name = _d("JQBbGhkN"),
Placeholder = _d("VQ"),
AcceptedCharacters = _d("KhhZCgUQVA"),
Callback = function(knv)
local nb = math.floor(tonumber(knv) or 1)

dvw.giveUpAmount = math.clamp(nb, 1, 50)
end,
}, _d("BQBbGhkNaFY"))

dvw.giveUpParagraph = dvw.giveUpSection:Paragraph({
Header = _d("NxlVGwIK"),
Body = dvw.giveUpStatus(),
})

local ou = {
autoSave = false,
autoRoll = true,
autoQuickRoll = true,

loading = false,
selected = nil,
lastText = _d("KgJABx4XUEQaRgYDDVIKTU0KA1kaRB1dDBxZVkQeVRkSWVENAVFPFRxbCxoa"),
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
theme = _d("MgJdCw"),
accent = nil,
savesAt = 0,
autoSaveAt = 0,
themeAt = 0,
capAt = 0,
scaleAnchor = nil,
statusAt = 0,
knownSaves = _d(""),
}

getgenv().ACBXSettings = ou

ou.presets = {
Void = { panel = Color3.fromRGB(15, 15, 15), element = Color3.fromRGB(0, 0, 0), accent = Color3.fromRGB(168, 170, 176) },
Ocean = { panel = Color3.fromRGB(6, 16, 26), element = Color3.fromRGB(8, 26, 40), accent = Color3.fromRGB(77, 166, 255) },
Ember = { panel = Color3.fromRGB(26, 10, 8), element = Color3.fromRGB(36, 16, 10), accent = Color3.fromRGB(255, 122, 69) },
Sakura = { panel = Color3.fromRGB(26, 9, 18), element = Color3.fromRGB(38, 14, 26), accent = Color3.fromRGB(255, 125, 177) },
Mint = { panel = Color3.fromRGB(7, 20, 14), element = Color3.fromRGB(9, 30, 22), accent = Color3.fromRGB(77, 227, 160) },
Graphite = { panel = Color3.fromRGB(20, 20, 22), element = Color3.fromRGB(30, 30, 33), accent = Color3.fromRGB(200, 200, 206) },
}

ou.themeOrder = { _d("MgJdCw"), _d("Kw5RDhk"), _d("IQBWCgU"), _d("NwxfGgUY"), _d("KQRaGw"), _d("Ix9VHx8QQwE") }

local dpq = _d("JS52TyUcVQ0fQAdYClIQGV0BEAo")

function ou.saves()
local cgo, trn = pcall(function()
return jxyi:RefreshConfigList()
end)

if cgo and type(trn) == _d("EAxWAxI") then
table.sort(trn)
return trn
end

return {}
end

function ou.autoLoadName()
local sr, jbk = pcall(function()
if isfile and isfile(dpq .. _d("SwxBGxgVWAUJGhsPDQ")) then
return readfile(dpq .. _d("SwxBGxgVWAUJGhsPDQ"))
end
end)

if sr and type(jbk) == _d("FxlGBhke") then
jbk = jbk:gsub(_d("OkhHRA"), _d("")):gsub(_d("QR4fSw"), _d(""))

if jbk ~= _d("") then
return jbk
end
end

return nil
end

function ou.setAutoLoad(qga)

return (pcall(function()
writefile(dpq .. _d("SwxBGxgVWAUJGhsPDQ"), qga or _d(""))
end))
end

function ou.delete(jcsi)
if type(jcsi) ~= _d("FxlGBhke") or jcsi == _d("") then
return false, _d("NARXBFcYFxcMQgpXH14ICBQJHgtEEEM")
end

local jrkq = dpq .. _d("Sw") .. jcsi .. _d("SgdHABk")
local lta = false

pcall(function()
lta = isfile ~= nil and isfile(jrkq) == true
end)

if not lta then
return false, _d("MAVRHRJZXhdNWgBXH14ICBQMFhVbAQkU") .. jcsi .. _d("Sg")
end

local dkid, lmq = pcall(function()
delfile(jrkq)
end)

if not dkid then
return false, tostring(lmq)
end

if ou.autoLoadName() == jcsi then
ou.setAutoLoad(_d(""))
end

if ou.selected == jcsi then
ou.selected = nil
ou.selectionShown = nil
end

ou.knownSaves = nil
ou.savesAt = 0

return true
end

function ou.save(wh)
if type(wh) ~= _d("FxlGBhke") or wh:gsub(_d("QR4"), _d("")) == _d("") then
return false, _d("IwRCClcNXwFNRw4BHBcFTVoOGhwXAgRGHANX")
end

local zlj, oypq, gqf = pcall(function()
return jxyi:SaveConfig(wh)
end)

if not zlj then
return false, tostring(oypq)
end

if oypq ~= true then
return false, tostring(gqf or _d("EAVRTxEQWwFNVwACFVNEA1sbVxtSRBpGBgMNUgo"))
end

return true
end

function ou.replayOff(jlp)
local hfxw, equ = pcall(function()
return readfile(dpq .. _d("Sw") .. jlp .. _d("SgdHABk"))
end)

if not hfxw or type(equ) ~= _d("FxlGBhke") then
return
end

local plh
hfxw, plh = pcall(function()
return game:GetService(_d("LBlAHyQcRRIEVwo")):JSONDecode(equ)
end)

if not hfxw or type(plh) ~= _d("EAxWAxI") or type(plh.objects) ~= _d("EAxWAxI") then
return
end

for zb, wead in ipairs(plh.objects) do
if wead.type == _d("MAJTCBsc") and wead.state == false and wead.flag then
local jwti = jxyi.Options[wead.flag]

if jwti then
pcall(function()
jwti:UpdateState(false)
end)
end
end
end
end

function ou.load(mwwq)
if type(mwwq) ~= _d("FxlGBhke") or mwwq == _d("") then
return false, _d("NARXBFcYFxcMQgpXH14ICBQJHgtEEEM")
end

ou.loading = true
rj = true

local qky, lwg, cgef = pcall(function()
return jxyi:LoadConfig(mwwq)
end)

if not qky then
ou.loading = false
rj = false

return false, tostring(lwg)
end

if lwg ~= true then
ou.loading = false
rj = false

return false, tostring(cgef or _d("EAVRTxEQWwFNVwACFVNEA1sbVxtSRB9RDhM"))
end

task.wait(0.25)
ou.replayOff(mwwq)
ou.loading = false
rj = false

return true
end

ou.uiPath = _d("JS52N1gMXkoHRwAZ")

function ou.saveUi()
if type(writefile) ~= _d("AhhaDAMQWAo") then
return false
end

if ou.restoring then
return false
end

local zfaw = ou.accent

local cz = {
theme = ou.theme,
scale = tonumber(string.format(_d("QUMGCQ"), ou.scaleTarget or 1)),
accent = zfaw and string.format(_d("QQkYShNVEgA"),
math.floor(zfaw.R * 255 + 0.5),
math.floor(zfaw.G * 255 + 0.5),
math.floor(zfaw.B * 255 + 0.5)) or nil,
}

return pcall(function()
if type(makefolder) == _d("AhhaDAMQWAo") and type(isfolder) == _d("AhhaDAMQWAo") and not isfolder(_d("JS52Nw")) then
makefolder(_d("JS52Nw"))
end

writefile(ou.uiPath, game:GetService(_d("LBlAHyQcRRIEVwo")):JSONEncode(cz))
end)
end

function ou.loadUi()
if type(readfile) ~= _d("AhhaDAMQWAo") or type(isfile) ~= _d("AhhaDAMQWAo") then
return nil
end

local kxql, dvyj = pcall(function()
if not isfile(ou.uiPath) then
return nil
end

return readfile(ou.uiPath)
end)

if not kxql or type(dvyj) ~= _d("FxlGBhke") or dvyj == _d("") then
return nil
end

local cwn
kxql, cwn = pcall(function()
return game:GetService(_d("LBlAHyQcRRIEVwo")):JSONDecode(dvyj)
end)

if not kxql or type(cwn) ~= _d("EAxWAxI") then
return nil
end

ou.restoring = true

if type(cwn.theme) == _d("FxlGBhke") and ou.presets[cwn.theme] then
ou.theme = cwn.theme

pcall(function()
ou.themeDropdown:UpdateSelection(cwn.theme)
ou.themeDropdown:UpdateName(_d("MAVRAhJDFw") .. cwn.theme)
end)
end

local etnm, jfj, war = tostring(cwn.accent or _d("")):match(_d("OkURC1xQG0xIUEReVR9BCR9GUw"))

if etnm then
local aeen = Color3.fromRGB(tonumber(etnm), tonumber(jfj), tonumber(war))

ou.accent = aeen

pcall(function()
ou.accentPicker:SetColor(aeen)
end)
else
ou.accent = nil

local ehd = ou.presets[ou.theme] or ou.presets.Void

pcall(function()
ou.accentPicker:SetColor(ehd.accent)
end)
end

local gxh = tonumber(cwn.scale)

if gxh then
gxh = math.clamp(gxh, 0.5, ou.scaleCeiling())

ou.scaleTarget = gxh
ou.scaleAnchor = nil

pcall(function()
ou.scaleSlider:UpdateValue(gxh)
end)
end

ou.applyTheme()

ou.restoring = false
ou.saveUi()

return cwn
end

ou.bossModePath = _d("JS52N1gbWBceGgUEFlk")

function ou.saveBossMode(ac)
if type(writefile) ~= _d("AhhaDAMQWAo") or type(ac) ~= _d("FxlGBhke") or ac == _d("") then
return false
end

return pcall(function()
if type(makefolder) == _d("AhhaDAMQWAo") and type(isfolder) == _d("AhhaDAMQWAo") and not isfolder(_d("JS52Nw")) then
makefolder(_d("JS52Nw"))
end

writefile(ou.bossModePath, game:GetService(_d("LBlAHyQcRRIEVwo")):JSONEncode({ mode = ac }))
end)
end

function ou.loadBossMode()
if type(readfile) ~= _d("AhhaDAMQWAo") or type(isfile) ~= _d("AhhaDAMQWAo") then
return nil
end

local rq, ezbg = pcall(function()
if not isfile(ou.bossModePath) then
return nil
end

return readfile(ou.bossModePath)
end)

if not rq or type(ezbg) ~= _d("FxlGBhke") or ezbg == _d("") then
return nil
end

local ebf

rq, ebf = pcall(function()
return game:GetService(_d("LBlAHyQcRRIEVwo")):JSONDecode(ezbg)
end)

if not rq or type(ebf) ~= _d("EAxWAxI") or type(ebf.mode) ~= _d("FxlGBhke") then
return nil
end

return ebf.mode
end

function ou.colourKey(mei)
return math.floor(mei.R * 255) .. _d("SA") .. math.floor(mei.G * 255) .. _d("SA") .. math.floor(mei.B * 255)
end

function ou.guiRoot()

if not hro() then
return nil
end

if ou.root and ou.root.Parent then
return ou.root
end

local itmt = gethui and gethui() or game:GetService(_d("JwJGCjAMXg"))

for dcqw, mf in ipairs(itmt:GetChildren()) do
if mf:IsA(_d("Nw5GChIXcBEE")) and mf:FindFirstChild(_d("JgxHCg")) then
ou.root = mf.Base

return ou.root
end
end

return nil
end

function ou.applyTheme()
local bvl = ou.guiRoot()
local atc = ou.presets[ou.theme] or ou.presets.Void

if not bvl then
return false
end

local mnv = {
panel = atc.panel,
element = atc.element,
accent = ou.accent or atc.accent,
}

local hay = {}

for qxie, vyx in pairs(ou.presets) do
hay[ou.colourKey(vyx.panel)] = _d("FAxaChs")
hay[ou.colourKey(vyx.element)] = _d("AQFRAhIXQw")
hay[ou.colourKey(vyx.accent)] = _d("BQ5XChkN")
end

hay[ou.colourKey(mnv.accent)] = _d("BQ5XChkN")

if hay[ou.colourKey(bvl.BackgroundColor3)] == _d("FAxaChs") then
bvl.BackgroundColor3 = mnv.panel
end

for zye, aarh in ipairs(bvl:GetDescendants()) do
if aarh:IsA(_d("IxhdIBUTUgcZ")) then
local cmje = hay[ou.colourKey(aarh.BackgroundColor3)]

if cmje then
aarh.BackgroundColor3 = mnv[cmje]
end
elseif aarh:IsA(_d("MSRnGwUWXAE")) then
if hay[ou.colourKey(aarh.Color)] == _d("BQ5XChkN") then
aarh.Color = mnv.accent
end
end

if aarh:IsA(_d("LQBVCBI1VgYIWA")) and aarh.Name == _d("MAxWJhoYUAE") and aarh.Image ~= _d("") then
aarh.ImageColor3 = mnv.accent
aarh.ImageTransparency = 0
aarh:SetAttribute(_d("JS52NyMYVSUOVwoZDQ"), mnv.accent)

if not aarh:GetAttribute(_d("JS52NyMYVTAEWhs")) then
aarh:SetAttribute(_d("JS52NyMYVTAEWhs"), true)

local function wws()
local rb = aarh:GetAttribute(_d("JS52NyMYVSUOVwoZDQ"))

if rb and aarh.ImageColor3 ~= rb then
aarh.ImageColor3 = rb
end

if aarh.ImageTransparency ~= 0 then
aarh.ImageTransparency = 0
end
end

aarh:GetPropertyChangedSignal(_d("LQBVCBItRQUDRx8WC1IKDk0")):Connect(wws)
aarh:GetPropertyChangedSignal(_d("LQBVCBI6WAgCRlw")):Connect(wws)
end
end
end

return true
end

local ltzn = ssnr:Tab({
Name = _d("KQxE"),
Image = _d("Fg9MDgQKUhAEUFVYVgFUXgVfQEwOV1w"),
})

local cwk = {
holdFor = 25,
fly = {
on = false,
speed = 55,
connection = nil,
},
islands = {
{ name = _d("KAJWDQ4"), kind = _d("EwJGAxM"), arg = _d("CAJWDQ4") },
{ name = _d("JQ9VARMWWQEJFCYEFVYKCQ"), kind = _d("DR5YDhkd"), arg = _d("BQ9VARMWWQEJawYEFVYKCQ") },
{ name = _d("MBpdAVc7UgUOXAoE"), kind = _d("DR5YDhkd"), arg = _d("EBpdASgbUgUOXAoE"), note = _d("RDlcClcKUhYbUR1XHUULHUdPHg0XEQNABhtZTgsYFAcWD1JEHlUGGxxTRBlcCgUcGQ") },
{ name = _d("MwRaCxoQWwhNfRwbHA"), kind = _d("DR5YDhkd"), arg = _d("EwRaCxoQWwgyXRwbHA"), note = _d("RDlcClcKUhYbUR1XHUULHUdPHg0XEQNABhtZTgsYFAcWD1JEHlUGGxxTRBlcCgUcGQ") },
},
npcs = {
{ name = _d("JwxGC1c0UhYKUQ"), npc = _d("AhhHCigXRwc"), attr = _d("Kj13JhM"), at = Vector3.new(-272, 33, -40347) },
{ name = _d("IRVEChMQQw0CWhw"), npc = _d("IRVEChMQQw0CWiEnOg"), attr = _d("IRVEChMQQw0CWiEnOg"), at = Vector3.new(-347, 35, -40361) },
{ name = _d("IAhXABkKQxYYVxs"), npc = _d("AAhXABkKQxYYVxsoF0cH"), attr = _d("Kj13JhM"), at = Vector3.new(-264, 33, -40331) },
{ name = _d("Jx9VCQM"), npc = _d("Bx9VCQMmWRQO"), attr = _d("Kj13JhM"), at = Vector3.new(-330, 33, -40277) },
{ name = _d("NwZdAxtZYxYIUQ"), npc = _d("NwZdAxstRQEIej80"), attr = _d("NwZdAxstRQEIej80"), at = Vector3.new(-290, 32, -40283) },
{ name = _d("JwxGC1cwWQAITA"), npc = _d("BwxGCygQWQAITDAZCVQ"), attr = _d("Kj13JhM"), at = Vector3.new(-313, 33, -40282) },
{ name = _d("NAxXBFc0UhYOXA4ZDQ"), npc = _d("FAxXBCgUUhYOXA4ZDQ"), attr = _d("Kj13JhM"), at = Vector3.new(-301, 33, -40270) },
{ name = _d("IBhaCBIWWQ"), npc = _d("ABhaCBIWWTsDRAw"), attr = _d("Kj13JhM"), at = Vector3.new(-339, 41, -40399) },
{ name = _d("IgRHBxILWgUD"), npc = _d("IgRHBxILWgUDej80"), attr = _d("IgRHBxILWgUDej80"), at = Vector3.new(-493, 14, -40262) },
{ name = _d("NwhXHRINFyUDUwMSCw"), npc = _d("NwhXHRINdgoKWAoFN2cn"), attr = _d("NwhXHRINdgoKWAoFN2cn"), at = Vector3.new(-209, 34, -40382) },
{ name = _d("LAxYAxgOUgEDFDwfFkc"), npc = _d("NBhZHxwQWUQgUR0UEVYKGQ"), at = Vector3.new(-29989, 78, -30259) },
{ name = _d("NwxXHR4fXgcIFC4bDVYW"), landmark = _d("NwxXHR4fXgcIdQMDGEU"), island = _d("BQ9VARMWWQEJawYEFVYKCQ"), at = Vector3.new(-3548, 11, -40462) },
{ name = _d("LAxGCxQWRQFNYAAAHEU"), npc = _d("LAxGCxQWRQE5WxgSCw"), island = _d("BQ9VARMWWQEJawYEFVYKCQ"), at = Vector3.new(-3795, 25, -40250) },
{ name = _d("LR5YDhkdFyIERwcSC1oFAw"), npc = _d("LR5YDhkdcQ0eXAoFFFYKI2Qs"), attr = _d("LR5YDhkdcQ0eXAoFFFYKI2Qs"), island = _d("BQ9VARMWWQEJawYEFVYKCQ"), at = Vector3.new(-3825, 23, -40260) },
{ name = _d("IARTCBIL"), npc = _d("IARTCBILeTQu"), attr = _d("IARTCBILeTQu"), island = _d("EBpdASgbUgUOXAoE"), at = Vector3.new(-5998, 26, -40565) },
{ name = _d("NwhXHRINFyAEUwgSCw"), npc = _d("NwhXHRINcw0KUwoFN2cn"), attr = _d("NwhXHRINcw0KUwoFN2cn"), island = _d("EwRaCxoQWwgyXRwbHA"), at = Vector3.new(-7740, 17, -40343) },
},
}

function cwk.hold()
xv.tpHoldUntil = os.clock() + cwk.holdFor

xv.deepPhase = _d("DQlYCg")
xv.deepStageAt = 0
xv.phase = _d("DQlYCg")
xv.nextCastAt = 0
xv.watchdogAt = 0

return cwk.holdFor
end

function cwk.point(oihu)
local wlwv

if oihu.landmark then
wlwv = workspace:FindFirstChild(oihu.landmark)
else
local kz = workspace:FindFirstChild(_d("Kj13HA"))

if kz then
for js, zyn in ipairs(kz:GetChildren()) do
local olvu

if oihu.attr then
olvu = zyn:GetAttribute(oihu.attr) == oihu.npc
else
olvu = zyn.Name == oihu.npc
end

if olvu then
wlwv = zyn
break
end
end
end
end

if wlwv then
local xgyd = wlwv.PrimaryPart
or wlwv:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"), true)
or wlwv:FindFirstChildWhichIsA(_d("JgxHCicYRRA"), true)

if xgyd then
return xgyd.Position
end
end

return oihu.at
end

function cwk.resume()
if not xv.enabled then
return
end

local sak = mtxf.Character
local raz = sak and sak:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not raz or (raz.Position - ghv).Magnitude < 40 then
return
end

pcall(function()
xv.recover()
end)
end

function cwk.standAt(inh)
local tnqe = mtxf.Character
local zexe = tnqe and tnqe:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not zexe or not inh then
return false
end

local zob = RaycastParams.new()
zob.FilterType = Enum.RaycastFilterType.Exclude
zob.FilterDescendantsInstances = { tnqe }

local ohj = workspace:Raycast(inh + Vector3.new(0, 10, 0), Vector3.new(0, -80, 0), zob)
local keb = inh.Y

if ohj and ohj.Instance.Name ~= _d("MwxACgU") then
local ubuq = ohj.Position.Y + 3.2

if math.abs(ubuq - inh.Y) <= 8 then
keb = ubuq
end
end

local qnz = Vector3.new(zexe.Position.X - inh.X, 0, zexe.Position.Z - inh.Z)

if qnz.Magnitude < 1 then
qnz = Vector3.new(4, 0, 0)
else
qnz = qnz.Unit * 4
end

local ayfq = Vector3.new(inh.X + qnz.X, keb, inh.Z + qnz.Z)

zexe.CFrame = CFrame.new(ayfq)

return true
end

function cwk.unlock()
local dg = {
{ id = _d("BQ9VARMWWQEJawYEFVYKCQ"), at = Vector3.new(-3825, 24, -40260) },
{ id = _d("EBpdASgbUgUOXAoE"), at = Vector3.new(-6180, 40, -40350) },
{ id = _d("EwRaCxoQWwgyXRwbHA"), at = Vector3.new(-7480, 30, -40350) },
}
local kpy = {}

for pupv, qs in ipairs(dg) do
local ckm = lg.FishingGetState:InvokeServer()

if ckm and ckm.areas and ckm.areas[qs.id] == true then
table.insert(kpy, qs.id .. _d("Xk1VAwUcVgAUFAAHHFk"))
else
cwk.hold()
cwk.standAt(qs.at)
task.wait(2.4)

local xdv = lg.FishingGetState:InvokeServer()

table.insert(kpy, qs.id .. (xdv and xdv.areas and xdv.areas[qs.id] and _d("Xk1BARsWVA8IUA") or _d("Xk1SDh4VUgA")))
end
end

cwk.hold()
pcall(function()
lg.TeleportToWorld:FireServer(_d("CAJWDQ4"))
end)
task.wait(2.5)

return table.concat(kpy, _d("RK+DTw"))
end

function cwk.flyToggle(cafy)
cwk.fly.on = cafy

if not cafy then
return _d("IgFNTxgfUUo")
end

local wfcf = mtxf.Character
local urgg = wfcf and wfcf:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not urgg then
return _d("KgIUDB8YRQUOQAoFWUMLTVgGEQ0Z")
end

cwk.fly.height = urgg.Position.Y

if cwk.fly.connection then
return _d("IgFNTxgXGQ")
end

local uz = game:GetService(_d("MR5RHT4XRxEZZwoFD14HCA"))

cwk.fly.connection = game:GetService(_d("NhhaPBILQQ0OUQ")).Heartbeat:Connect(function(tull)
if not cwk.fly.on then
return
end

local es = mtxf.Character
local ew = es and es:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not ew then
return
end

local yk = workspace.CurrentCamera
local hzzp = Vector3.zero

if yk then
local pjjj = yk.CFrame.LookVector
local lc = Vector3.new(pjjj.X, 0, pjjj.Z)

if lc.Magnitude > 0.01 then
lc = lc.Unit
end

local krov = Vector3.new(lc.Z, 0, -lc.X)

if uz:IsKeyDown(Enum.KeyCode.W) then
hzzp = hzzp + lc
end

if uz:IsKeyDown(Enum.KeyCode.S) then
hzzp = hzzp - lc
end

if uz:IsKeyDown(Enum.KeyCode.D) then
hzzp = hzzp + krov
end

if uz:IsKeyDown(Enum.KeyCode.A) then
hzzp = hzzp - krov
end
end

local mpw = 0

if uz:IsKeyDown(Enum.KeyCode.Space) then
mpw = 1
elseif uz:IsKeyDown(Enum.KeyCode.LeftControl) then
mpw = -1
end

local akk = cwk.fly.speed or 55
local bzt = hzzp * akk * tull + Vector3.new(0, mpw * akk * 0.6 * tull, 0)

if bzt.Magnitude < 0.001 then
return
end

ew.CFrame = ew.CFrame + bzt
ew.AssemblyLinearVelocity = Vector3.zero
end)

return _d("IgFNTxgXGQ")
end

function cwk.go(cbfv)
cwk.hold()

if cbfv.kind == _d("EwJGAxM") then
pcall(function()
lg.TeleportToWorld:FireServer(cbfv.arg)
end)

return _d("NwhaG1cNXwFN") .. cbfv.name .. _d("RBlRAxIJWBYZGg")
end

if cbfv.kind == _d("DR5YDhkd") then
pcall(function()
lg.FishingIslandTeleport:FireServer(cbfv.arg)
end)

return _d("NwhaG1cNXwFN") .. cbfv.name .. _d("RBlRAxIJWBYZGg") .. tostring(cbfv.note or _d(""))
end

local xne = cwk.point(cbfv)
local bqzb = mtxf.Character
local dglv = bqzb and bqzb:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if xne and dglv and (dglv.Position - xne).Magnitude > 1500 then
pcall(function()
if cbfv.island then
lg.FishingIslandTeleport:FireServer(cbfv.island)
else
lg.TeleportToWorld:FireServer(_d("CAJWDQ4"))
end
end)

task.wait(cbfv.island and 3.5 or 4.5)

xne = cwk.point(cbfv)

dglv = mtxf.Character and mtxf.Character:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if xne and dglv and (dglv.Position - xne).Magnitude > 1500 then
return cbfv.name .. _d("RARHTxgXFw") .. tostring(cbfv.island or _d("EAVRTxsWVQYU"))
.. _d("REAUGx8cFwMMWQpXC1ICGEcKBFlDDAxATwMLXhRNQQEDEFtEBEBPHxhERA9RChlZRQEMVwcSHRcLA1cKWQ")
end
end

if not xne then
return cbfv.name .. _d("RARHTxkWQ0QEWk8DEV4XTUMABRVTSg")
end

if not cwk.standAt(xne) then
return _d("KgIUDB8YRQUOQAoFWUMLTVkAARwZ")
end

task.delay(cwk.holdFor + 2, function()
pcall(cwk.resume)
end)

return _d("NxlbABNZVQEeXQsSWQ") .. cbfv.name .. _d("Sg")
end

cwk.islandSection = ltzn:Section({ Side = _d("KAhSGw") })
cwk.islandSection:Header({ Name = _d("LR5YDhkdRESdq+Dqlo/r") })

cwk.npcSection = ltzn:Section({ Side = _d("NgRTBwM") })
cwk.npcSection:Header({ Name = _d("Kj13HFeJqPfg") })

for gup, qws in ipairs(cwk.islands) do
cwk.islandSection:Button({
Name = qws.name,
Callback = function()
task.spawn(function()
local jymo = cwk.go(qws)

nnc:Notify({
Title = _d("MAhYCgcWRRA"),
Description = jymo,
Lifetime = 6,
})
end)
end,
})
end

cwk.state = xv
cwk.tab = ltzn
cwk.islandSection:Button({
Name = _d("MQNYABQSFwUBWE8eClsFA1Ac"),
Callback = function()
task.spawn(function()
local mre = cwk.unlock()

nnc:Notify({
Title = _d("LR5YDhkdRA"),
Description = mre,
Lifetime = 10,
})
end)
end,
})

cwk.flySection = ltzn:Section({ Side = _d("KAhSGw") })
cwk.flySection:Header({ Name = _d("IgFNT5Xlv4vVuw") })

cwk.flySection:Toggle({
Name = _d("IgFNT18udjcpGE8kCVYHCBQaB1UXJxlGA1cdWBMDHQ"),
Default = false,
Callback = function(vj)
local lwf = cwk.flyToggle(vj)

nnc:Notify({
Title = _d("IgFN"),
Description = lwf,
Lifetime = 4,
})
end,
}, _d("BQ5WFygfWx0"))

getgenv().ACBXTeleport = cwk

getgenv().ACBXDeepWater = xqkh

pcall(xqkh.dropStale)

for ffs, gacz in ipairs(cwk.npcs) do
cwk.npcSection:Button({
Name = gacz.name,
Callback = function()
task.spawn(function()
local qxsf = cwk.go(gacz)

nnc:Notify({
Title = _d("MAhYCgcWRRA"),
Description = qxsf,
Lifetime = 6,
})
end)
end,
})
end

local ayqm = pfc:Section({ Side = _d("KAhSGw") })

ayqm:Header({ Name = _d("IARTCB4XUESPr+CYwbg") })

local dh = {
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

local gufg = (tonumber(getgenv().ACBXDigGeneration) or 0) + 1
getgenv().ACBXDigGeneration = gufg

function dh.read()
local sqvg, lpzw = pcall(function()
return lg.DigGetState:InvokeServer()
end)

return sqvg and type(lpzw) == _d("EAxWAxI") and lpzw or nil
end

function dh.call(leph, iubz)
local uhhr, mcq = pcall(function()
return lg.DigShop:InvokeServer(leph, iubz)
end)

task.wait(2.5)

return uhhr and mcq == true
end

function dh.wear()
local mfae = mtxf.Character

if not mfae then
return false
end

local tj = mfae:FindFirstChildOfClass(_d("LBhZDhkWXgA"))
local amf = mtxf:FindFirstChild(_d("JgxXBAcYVA8"))

if not (tj and amf) then
return false
end

tj:UnequipTools()
task.wait(0.4)

for fsps = 1, 8 do
for sme, apoc in ipairs(amf:GetChildren()) do
if apoc:IsA(_d("MAJbAw")) and apoc.Name:find(_d("OildCCQRWBIIWA")) then
tj:EquipTool(apoc)

return true
end
end

task.wait(0.5)
end

return false
end

function dh.run()
local rct = dh.read()

if not rct then
return _d("MAVRTxMQUEQeXAAHWV4XTVoAA1lWCh5DCgUQWQND")
end

local bggk = {}

pcall(function()
local ws = lg.FishingGetState:InvokeServer()

bggk = ws and ws.areas or {}
end)

if not (bggk.abandoned_island and bggk.twin_beaches and bggk.windmill_isle) then
cwk.unlock()
task.wait(1)
end

local ivu

for fcga, bur in ipairs(cwk.npcs) do
if bur.name == _d("IARTCBIL") then
ivu = bur
break
end
end

if not ivu then
return _d("MAVRTyMLUgUeQR0SWX8RA0AKBVleF01aAANZXgpNQAceChcTAkYDE1c")
end

cwk.go(ivu)
task.wait(2)

local fjv = mtxf.Character
local qabg = fjv and fjv:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))
local rh = cwk.point(ivu)

if not (qabg and rh) or (qabg.Position - rh).Magnitude > 40 then
return _d("JwJBAxNZWQsZFB0SGFQMTUAHElljFghVHAILUkQlQQEDHEVK")
end

rct = dh.read() or rct

local slt = false
local ecau = rct.shovels and rct.shovels.shovel_basic == true
local ch = rct.detectors and rct.detectors.detector_basic == true

if not (ecau and ch) then
slt = dh.call(_d("JwFVBhoqQwUfQAoF"), _d("FwVbGRIVaAYMRwYU"))
rct = dh.read() or rct
end

if rct.equippedShovel ~= _d("FwVbGRIVaAYMRwYU") then
dh.call(_d("IRxBBgcqXwsbUQM"), _d("FwVbGRIVaAYMRwYU"))
end

if rct.equippedDetector ~= _d("AAhAChQNWBYyVg4EEFQ") then
dh.call(_d("IRxBBgc9UhAIVxsYCw"), _d("AAhAChQNWBYyVg4EEFQ"))
end

rct = dh.read() or rct

if rct.equippedShovel == _d("FwVbGRIVaAYMRwYU") and rct.equippedDetector == _d("AAhAChQNWBYyVg4EEFQ") then
local nswv = dh.wear()
local kdq = false

if nswv and xv.enabled then
xv.autoFishWanted = false
kdq = true

ns(false)

pcall(function()
mcou:UpdateState(false)
end)
end

return (slt and _d("JwFVBhocU0QMWgtXHEYRBEQfEh0") or _d("IRxBBgcJUgA"))
.. _d("RBlcClc7VhcEV08kEVgSCFhPFhdTRC9VHB4aFyAIQAoUDVgWQw")
.. (kdq and _d("RCxBGxhZcQ0eXE8YH1FEQBQbHxwXFwVbGRIVFwwMR08DEVJEGVsAG1lECAJAQQ") or _d(""))
end

return _d("MAVRTzUYRA0OFDwfFkEBARQABVlzARlRDAMWRUQER08EDV4IARQCHgpEDQNTQQ")
end

function dh.unlock()
if dh.busy then
return _d("JQFGChYdTkQaWx0cEFkDQw")
end

dh.busy = true

local tpb, xfz = pcall(dh.run)

dh.busy = false

if not tpb then
return _d("IARTCB4XUEQLVQYbHFNeTQ") .. tostring(xfz)
end

return xfz
end

dh.icon = function()
local boi = gethui()

for qqn, bdwd in ipairs(boi:QueryDescendants(_d("LQBVCBI1VgYIWA"))) do
if bdwd.Name == _d("MAxWJhoYUAE") then
local hum = bdwd.Parent
local opms = hum and hum:FindFirstChild(_d("MAxWPAAQQwcFUR05GFoB"))

if opms and opms.Text == _d("IARTCB4XUA") then
if bdwd:GetAttribute(_d("JS52NzMQUC0OWwE")) then
return true
end

bdwd:SetAttribute(_d("JS52NzMQUC0OWwE"), true)
bdwd.Image = _d("")
bdwd.BackgroundTransparency = 1

local yes = Color3.fromRGB(233, 236, 242)

for zdt, uibd in ipairs(boi:QueryDescendants(_d("LQBVCBI1VgYIWA"))) do
if uibd.Name == _d("MAxWJhoYUAE") and uibd ~= bdwd and uibd.Image ~= _d("") then
yes = uibd.ImageColor3
break
end
end

local function ilhc(mtey, uak, eaim, kczh, ycub, bcyq)
local fpdp = Instance.new(_d("Ih9VAhI"))

fpdp.Size = UDim2.fromOffset(eaim, kczh)
fpdp.Position = UDim2.fromOffset(mtey, uak)
fpdp.BackgroundColor3 = yes
fpdp.BorderSizePixel = 0
fpdp.Parent = bdwd

if bcyq then
fpdp.Rotation = bcyq
end

if ycub then
local kxw = Instance.new(_d("MSR3AAUXUhY"))

kxw.CornerRadius = UDim.new(0, ycub)
kxw.Parent = fpdp
end

return fpdp
end

ilhc(1.1, 10.2, 7, 6.4, 1.6, -45)
ilhc(3.1, 8.3, 11, 2.2, 0.8, -45)
ilhc(9.8, 4.4, 5.6, 2, 0.8, 45)

return true
end
end
end

return false
end

task.defer(function()
for xfja = 1, 20 do
if dh.icon() then
break
end

task.wait(0.25)
end
end)

ayqm:Button({
Name = _d("MQNYABQSFwAEUwgeF1A"),
Callback = function()
task.spawn(function()
nnc:Notify({
Title = _d("IARTCB4XUA"),
Description = _d("LAhVCx4XUEQZW08DEVJEOUYKFgpCFggUJwIXQwEfGg"),
Lifetime = 5,
})

local jav = dh.unlock()

nnc:Notify({
Title = _d("IARTCB4XUA"),
Description = jav,
Lifetime = 10,
})
end)
end,
})

dh.statusParagraph = ayqm:Paragraph({
Header = _d("IARTTwQNVhAI"),
Body = _d("NghVCx4XUEQZXApXHV4DTUcOARwZSkM"),
})

dh.data = require(pbw.ModuleScripts.DigData)

function dh.zoneAt(fhs)
for whyz, oyr in ipairs(game:GetService(_d("JwJYAxIaQw0CWjwSC0ENDlE")):GetTagged(dh.data.ZoneTag)) do
if oyr:IsA(_d("JgxHCicYRRA")) and oyr:IsDescendantOf(workspace) then
local fau = oyr.CFrame:PointToObjectSpace(fhs)
local ffj = oyr.Size * 0.5

if math.abs(fau.X) <= ffj.X and math.abs(fau.Y) <= ffj.Y and math.abs(fau.Z) <= ffj.Z then
return true
end
end
end

return false
end

function dh.onIsland()
for bt, krlr in ipairs(game:GetService(_d("JwJYAxIaQw0CWjwSC0ENDlE")):GetTagged(dh.data.ZoneTag)) do
if krlr:IsA(_d("JgxHCicYRRA")) and krlr:IsDescendantOf(workspace) then
return true
end
end

return false
end

function dh.bestShovel(uzw)
local mzne = uzw and uzw.shovels or {}
local hqp = nil

for vld, wu in ipairs(dh.data.Shovels) do
if mzne[wu.id] == true then
hqp = wu.id
end
end

return hqp
end

function dh.equipBest()
local izbu = dh.read()
local ea = dh.bestShovel(izbu)

if not ea then
return nil
end

if izbu.equippedShovel ~= ea then
dh.call(_d("IRxBBgcqXwsbUQM"), ea)
end

dh.wear()

return ea
end

function dh.bestDetector(kvp)
local nql = kvp and kvp.detectors or {}
local rsj = nil

for sylx, owk in ipairs(dh.data.Detectors) do
if nql[owk.id] == true then
rsj = owk.id
end
end

return rsj
end

function dh.equipBestDetector()
local fsez = dh.read()
local phu = dh.bestDetector(fsez)

if not phu then
return nil
end

if fsez.equippedDetector ~= phu then
dh.call(_d("IRxBBgc9UhAIVxsYCw"), phu)
end

return phu
end

function dh.leaveNpc()
local ikqm = mtxf.Character
local ifm = ikqm and ikqm:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))
local vrp = ikqm and ikqm:FindFirstChildOfClass(_d("LBhZDhkWXgA"))

if not (ifm and vrp) then
return false
end

local re

for ow, xwz in ipairs(cwk.npcs) do
if xwz.name == _d("IARTCBIL") then
re = xwz
break
end
end

local lxm = re and cwk.point(re)

if not lxm then
return false
end

local nzzu = Vector3.new(ifm.Position.X - lxm.X, 0, ifm.Position.Z - lxm.Z)

if nzzu.Magnitude >= 16 then
return true
end

if nzzu.Magnitude < 1 then
nzzu = Vector3.new(0, 0, -1)
end

nzzu = nzzu.Unit

local jwl = Vector3.new(lxm.X + nzzu.X * 22, ifm.Position.Y, lxm.Z + nzzu.Z * 22)
local phwt = os.clock() + 6

vrp:MoveTo(jwl)

while os.clock() < phwt do
local pnd = mtxf.Character
local goey = pnd and pnd:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not goey or (goey.Position - jwl).Magnitude < 4 then
break
end

task.wait(0.15)
end

pcall(function()
vrp:MoveTo(ifm.Position)
end)

return true
end

function dh.goToSand(wir)

if wir or not dh.onIsland() then
if not wir then

pcall(function()
lg.TeleportToWorld:FireServer(_d("CAJWDQ4"))
end)

local plr = os.clock() + 15

while not dh.onIsland() and os.clock() < plr do
task.wait(0.5)
end
end

local lb

for nxme, zdkd in ipairs(cwk.npcs) do
if zdkd.name == _d("IARTCBIL") then
lb = zdkd
break
end
end

if lb then
cwk.go(lb)
task.wait(2)
end
end

if dh.onIsland() then
dh.leaveNpc()
end
end

function dh.spot()
local ffb = mtxf.Character
local pd = ffb and ffb:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not pd then
return nil
end

local iec = pd.CFrame.LookVector
local un = Vector3.new(iec.X, 0, iec.Z)

if un.Magnitude < 0.01 then
un = Vector3.new(0, 0, -1)
end

un = un.Unit

local ygl = RaycastParams.new()
ygl.FilterType = Enum.RaycastFilterType.Exclude
ygl.FilterDescendantsInstances = { ffb }

local function ph(sgqk, uoni)
local bqsp = pd.Position + sgqk * uoni + Vector3.new(0, 4, 0)
local jid = workspace:Raycast(bqsp, Vector3.new(0, -18, 0), ygl)

if jid and dh.zoneAt(jid.Position) then
return jid.Position
end
end

for ztjd, ope in ipairs({ 4, 7, 10, 2 }) do
local otoo = ph(un, ope)

if otoo then
return otoo
end
end

local imxq = Vector3.new(-un.Z, 0, un.X)

for hrb, hbz in ipairs({ 4, 8 }) do
for ysj, whb in ipairs({ 1, -1 }) do
for kncv, xqxy in ipairs({ 1, 0.5 }) do
local gavh = ph((imxq * (whb * xqxy) + un * (1 - xqxy)).Unit, hbz)

if gavh then
return gavh
end
end
end
end

return nil
end

function dh.turn()
local vhb = mtxf.Character
local duz = vhb and vhb:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not duz then
return
end

local kxlx = duz.CFrame.LookVector
local qni = Vector3.new(kxlx.X, 0, kxlx.Z)

if qni.Magnitude < 0.01 then
qni = Vector3.new(0, 0, -1)
end

qni = qni.Unit

local lptz = Vector3.new(-qni.Z, 0, qni.X)

duz.CFrame = CFrame.lookAt(duz.Position, duz.Position + lptz)
end

dh.misses = 0

dh.pending = false

dh.treasures = {}

pcall(function()
lg.DigUpdate.OnClientEvent:Connect(function(oxgc, fyag)
if oxgc == _d("IARTPRIKQggZ") then
dh.pending = false
dh.resultAt = os.clock()
elseif oxgc == _d("IARTLBYXVAEB") then
dh.pending = false
end

if oxgc == _d("MB9RDgQMRQEe") and type(fyag) == _d("EAxWAxI") then
local bbay = {}
local hbu = {}

for pgy, yyda in ipairs(fyag) do
local ie = type(yyda) == _d("EAxWAxI") and yyda.position or nil

if typeof(ie) == _d("MghXGxgLBA") then
table.insert(bbay, { id = yyda.id, position = ie })

if yyda.id ~= nil then
hbu[yyda.id] = true
end
end
end

dh.treasures = bbay
dh.reported = hbu

if dh.target and not hbu[dh.target.id] then
dh.targetGone = true
end
end
end)
end)

function dh.withinDig(lrey)
local bx = mtxf.Character
local uqqe = bx and bx:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not uqqe then
return false
end

return (uqqe.Position - lrey).Magnitude <= 10
end

function dh.nearestChest(vcal)
local vkvr = mtxf.Character
local qit = vkvr and vkvr:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not qit then
return nil
end

local fsee
local mhng

for aj, bh in ipairs(dh.treasures or {}) do
local dxps = (bh.position - qit.Position).Magnitude

if dxps <= vcal and (not mhng or dxps < mhng) then
fsee = bh
mhng = dxps
end
end

return fsee
end

function dh.forget(cllf)
for bykg, nic in ipairs(dh.treasures or {}) do
if nic.id == cllf.id then
table.remove(dh.treasures, bykg)

return
end
end
end

function dh.walkTo(xtpo)
local qgr = mtxf.Character
local hzhv = qgr and qgr:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))
local oaac = qgr and qgr:FindFirstChildOfClass(_d("LBhZDhkWXgA"))

if not (hzhv and oaac) then
return false
end

local xgcp = os.clock() + 12

pcall(function()
oaac:MoveTo(xtpo)
end)

while os.clock() < xgcp do
local kvlt = mtxf.Character
local rfz = kvlt and kvlt:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not rfz or (rfz.Position - xtpo).Magnitude <= 4 then
break
end

if dh.targetGone or not dh.autoOn
or getgenv().ACBXDigGeneration ~= gufg or not hro() then
break
end

task.wait(0.15)
end

pcall(function()
oaac:MoveTo(hzhv.Position)
end)

return true
end

function dh.digAt(zrnl)
dh.misses = 0
dh.pending = true

local xahh = os.clock()
local mlu = pcall(function()
lg.DigAction:FireServer(_d("NxlVHQM"), zrnl)
end)

if not mlu then
dh.pending = false
end

local gt = os.clock() + 6

while dh.pending and dh.autoOn and os.clock() < gt
and getgenv().ACBXDigGeneration == gufg and hro() do
task.wait()
end

dh.pending = false

return (dh.resultAt or 0) >= xahh
end

function dh.autoLoop()
local ls = false

while dh.autoOn and hro() and getgenv().ACBXDigGeneration == gufg do
local nkt = ifi and ifi.worldBoss
local nlt = nkt ~= nil
and type(nkt.holdsDigging) == _d("AhhaDAMQWAo")
and nkt.holdsDigging() == true

if dh.shopping then

task.wait(0.5)
elseif nlt then

ls = true
task.wait(1)
else
if ls then

ls = false

if type(nkt.setRepeat) == _d("AhhaDAMQWAo") then
nkt.setRepeat(false)
end

dh.goToSand()
end

local wo = dh.chestOn and dh.nearestChest(70) or nil
local ra = false

if wo then
dh.target = wo
dh.targetGone = false

dh.walkTo(wo.position)

local litq = not dh.withinDig(wo.position)
local sbuh = dh.targetGone

if sbuh or litq then
dh.strikes = sbuh and 0 or (dh.strikes + 1)

if sbuh or dh.strikes >= 2 then
dh.strikes = 0
dh.forget(wo)
dh.skipped = dh.skipped + 1
end
elseif dh.digAt(wo.position) then
dh.strikes = 0
dh.forget(wo)
dh.dug = dh.dug + 1
ra = true
else

dh.strikes = dh.strikes + 1

if dh.strikes >= 3 then
dh.strikes = 0
dh.forget(wo)
dh.skipped = dh.skipped + 1
end
end

dh.target = nil
dh.targetGone = false
end

if not ra then
local kmrn = dh.spot()

if kmrn then
dh.digAt(kmrn)
else

dh.misses = (dh.misses or 0) + 1

if dh.misses >= 4 then
dh.misses = 0
dh.goToSand(true)
else
dh.turn()
task.wait(0.25)
end
end
end
end
end
end

function dh.autoStart()
local lwhy = dh.read()

if not (lwhy and dh.bestShovel(lwhy)) then
return _d("KgIUHB8WQQEBFAAAF1IATRlPIhdbCw5fTxMQUAMEWghXH14WHkBB")
end

local zmsl = false

if xv.enabled then
xv.autoFishWanted = false

ns(false)
pcall(function()
mcou:UpdateState(false)
end)

zmsl = true
end

emzj = true
dh.equipBest()

dh.goToSand()

task.spawn(dh.autoLoop)

return _d("IARTCB4XUEo") .. (zmsl and _d("RCxBGxhZcQ0eXE8YH1FEQBQbHxwXFwVbGRIVFwwMR08DEVJEGVsAG1lECAJAQQ") or _d(""))
end

function dh.toggleAuto(smm, kywp)
if smm then
local srb = dh.autoOn == true

dh.chestOn = kywp == true
dh.switching = true

pcall(function()
local wzi = kywp and dh.autoToggle or dh.chestToggle

if wzi then
wzi:UpdateState(false)
end
end)

dh.switching = false

if srb then
return
end

dh.autoOn = true

task.spawn(function()
local jrmn = dh.autoStart()

nnc:Notify({
Title = kywp and _d("JRhAAFc9XgNNdwcSCkMX") or _d("JRhAAFc9XgM"),
Description = jrmn,
Lifetime = 6,
})
end)
else

if dh.switching then
return
end

dh.autoOn = false
dh.pending = false
emzj = false
end
end

dh.autoToggle = ayqm:Toggle({
Name = _d("JRhAAFc9XgM"),
Default = false,
Callback = function(jum)
dh.toggleAuto(jum, false)
end,
}, _d("AARTCB4XUDsMQRsY"))

dh.chestToggle = ayqm:Toggle({
Name = _d("JRhAAFc9XgNNdwcSCkMX"),
Default = false,
Callback = function(jzx)
dh.toggleAuto(jzx, true)
end,
}, _d("AARTCB4XUDsMQRsYJlQMCEcb"))

dh.chestParagraph = ayqm:Paragraph({
Header = _d("JwVRHAMK"),
Body = _d("MB9VDBwcU15NBE9aWXMRCg5PR1kaRD5fBgcJUgBXFF8"),
})

task.spawn(function()
local aon

while hro() and xe do
local tvd = #(dh.treasures or {})
local jxod = _d("MB9VDBwcU15N") .. tvd .. _d("REAUKwIeDUQ") .. dh.dug .. _d("REAUPBwQRxQIUFVX") .. dh.skipped

if dh.chestOn and tvd > 0 then
local zltu = dh.nearestChest(70)
local tgs = mtxf.Character
local vwu = tgs and tgs:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if zltu and vwu then
jxod = jxod .. _d("biNRDgUcRBBXFA") .. math.floor((zltu.position - vwu.Position).Magnitude) .. _d("RB5AGhMK")
end
end

if jxod ~= aon then
aon = jxod

pcall(function()
dh.chestParagraph:UpdateBody(jxod)
end)
end

task.wait(0.5)
end
end)

function dh.npcRow()
for uoz, qj in ipairs(cwk.npcs) do
if qj.name == _d("IARTCBIL") then
return qj
end
end
end

function dh.shop(ps, auhx)
local qwt, jvev, zn, zzkk = pcall(function()
return lg.DigShop:InvokeServer(ps, auhx)
end)

if not qwt then
return false, _d("MAVRTxMQUEQeXAAHWV4XTVoAA1lWCh5DCgUQWQND")
end

return jvev == true, zn, type(zzkk) == _d("EAxWAxI") and zzkk or nil
end

function dh.pickShovel(pkuy)
local soi = pkuy.shovels or {}
local djq = tonumber(pkuy.digs) or 0
local oltj

for upvo, qouu in ipairs(dh.data.Shovels) do
if not qouu.crafted and qouu.id ~= _d("FwVbGRIVaAYMRwYU") and soi[qouu.id] ~= true then
local hpi = tonumber(qouu.cost) or math.huge

if hpi <= djq and (not oltj or hpi > (tonumber(oltj.cost) or 0)) then
oltj = qouu
end
end
end

return oltj
end

function dh.pickDetector(lcs)
local rdbe = lcs.detectors or {}
local uds = tonumber(lcs.digs) or 0
local qiqz

for jjc, hfv in ipairs(dh.data.Detectors) do
if not hfv.crafted and hfv.id ~= _d("AAhAChQNWBYyVg4EEFQ") and rdbe[hfv.id] ~= true then
local arf = tonumber(hfv.cost) or math.huge

if arf <= uds and (not qiqz or arf > (tonumber(qiqz.cost) or 0)) then
qiqz = hfv
end
end
end

return qiqz
end

function dh.nextDef(tau, oyw)
local qcom

for ahx, erpf in ipairs(tau) do
local hrhw = tonumber(erpf.cost)

if not erpf.crafted and hrhw and oyw[erpf.id] ~= true then
if not qcom or hrhw < (tonumber(qcom.cost) or math.huge) then
qcom = erpf
end
end
end

return qcom
end

function dh.toCounter()
local dasv = dh.npcRow()
local th = dasv and cwk.point(dasv)
local lfnx = mtxf.Character
local ao = lfnx and lfnx:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not (th and ao) then
return false
end

if (ao.Position - th).Magnitude <= 20 then
return true
end

cwk.go(dasv)
task.wait(2.2)

lfnx = mtxf.Character
ao = lfnx and lfnx:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

return ao ~= nil and (ao.Position - th).Magnitude <= 20
end

function dh.upgradeAll()
local vbne = dh.buyOn == true
local uuu = dh.detBuyOn == true

if not (vbne or uuu) then
return nil, _d("KwtSQQ")
end

local na = dh.read()

if not na then
return nil, _d("MAVRTxMQUEQeXAAHWV4XTVoAA1lWCh5DCgUQWQND")
end

if vbne then
local zgb = dh.bestShovel(na)

if zgb and na.equippedShovel ~= zgb then
dh.equipBest()
end
end

if uuu then
local ui = dh.bestDetector(na)

if ui and na.equippedDetector ~= ui then
dh.equipBestDetector()
end
end

local flvg = vbne and dh.pickShovel(na) or nil
local tua = uuu and dh.pickDetector(na) or nil

if not (flvg or tua) then
return nil, _d("KgIUGgceRQUJUU8eChcFC1IABR1WBgFRTw4cQ0o")
end

dh.shopping = true
dh.toCounter()

local zvsi = {}
local qlh

local function oord(xip, aasj)
if not aasj then
return
end

local xfas, yob = dh.shop(xip, aasj.id)

if xfas then
table.insert(zvsi, aasj.name)
elseif not qlh then
qlh = tostring(yob)
end
end

oord(_d("JhhNPB8WQQEB"), flvg)
oord(_d("JhhNKxINUgcZWx0"), tua)

if #zvsi == 0 then
dh.shopping = false

return nil, _d("JhhNTwUcUREeUQtNWQ") .. (qlh or _d("CgIUDhkKQAEf"))
end

if vbne then
dh.equipBest()
end

if uuu then
dh.equipBestDetector()
end

if dh.autoOn then
dh.leaveNpc()
end

dh.shopping = false

return table.concat(zvsi, _d("REYU"))
end

function dh.buyLoop()
while dh.buyOn or dh.detBuyOn do
local orqi, dz, thlg = pcall(dh.upgradeAll)

dh.shopping = false

if not orqi then
task.wait(10)
elseif dz then
nnc:Notify({
Title = _d("JRhAAFc7Qh1NcAYQHl4KChQoEhhF"),
Description = _d("JgJBCB8NFwUDUE8SCEINHUQKE1lDDAgU") .. dz .. _d("Sg"),
Lifetime = 6,
})

task.wait(3)
else
task.wait(thlg == _d("KwtSQQ") and 0.5 or 10)
end
end
end

function dh.syncBuyLoop()
if not (dh.buyOn or dh.detBuyOn) or dh.buyRunning then
return
end

dh.buyRunning = true

task.spawn(function()
dh.buyLoop()

dh.buyRunning = false
end)
end

ayqm:Toggle({
Name = _d("JRhAAFc7Qh1NdgoEDRc3BVsZEhU"),
Default = false,
Callback = function(ixnd)
dh.buyOn = ixnd
dh.syncBuyLoop()
end,
}, _d("AARTCB4XUDsPQRY"))

ayqm:Toggle({
Name = _d("JRhAAFc7Qh1NdgoEDRcgCEAKFA1YFg"),
Default = false,
Callback = function(iib)
dh.detBuyOn = iib
dh.syncBuyLoop()
end,
}, _d("AARTCB4XUDsPQRYoHVIQCFcbGAs"))

function dh.statusText()
local bgy = dh.read()

if not bgy then
return _d("MAVRTxMQUEQeXAAHWV4XTVoAA1lWCh5DCgUQWQND")
end

local gmqu = tonumber(bgy.digs) or 0
local jwco = { _d("IARTHE1Z") .. gmqu }

local function we(wgo, jvzu)
if not jvzu then
return wgo .. _d("Xk1RGRILThAFXQEQWVgTA1ELWQ")
end

local efob = tonumber(jvzu.cost) or 0
local nqe = efob - gmqu

return wgo .. _d("Xk0") .. tostring(jvzu.name) .. _d("REAU") .. efob
.. (nqe <= 0 and _d("REVGChYdTk0") or (_d("REU") .. nqe .. _d("RBlbTxAWHg")))
end

table.insert(jwco, we(_d("KghMG1cKXwsbUQM"), dh.nextDef(dh.data.Shovels, bgy.shovels or {})))
table.insert(jwco, we(_d("KghMG1cdUhAIVxsYCw"), dh.nextDef(dh.data.Detectors, bgy.detectors or {})))

return table.concat(jwco, _d("bg"))
end

task.spawn(function()
while hro() and xe do
local maq, eh = pcall(dh.statusText)

if maq and dh.statusParagraph then
pcall(function()
dh.statusParagraph:UpdateBody(eh)
end)
end

task.wait(6)
end
end)

getgenv().ACBXDigging = dh

ou.tab = ssnr:Tab({
Name = _d("NwhAGx4XUBc"),

Image = _d(""),
})

ou.icon = function()
local gbr = gethui()

for qd, xzb in ipairs(gbr:QueryDescendants(_d("LQBVCBI1VgYIWA"))) do
if xzb.Name == _d("MAxWJhoYUAE") then
local ymhe = xzb.Parent
local dby = ymhe and ymhe:FindFirstChild(_d("MAxWPAAQQwcFUR05GFoB"))

if dby and dby.Text == _d("NwhAGx4XUBc") then
if xzb:GetAttribute(_d("JS52NzQWUC0OWwE")) then
return true
end

xzb:SetAttribute(_d("JS52NzQWUC0OWwE"), true)
xzb.Image = _d("")
xzb.BackgroundTransparency = 1

local num = Color3.fromRGB(168, 170, 176)

local function pb(rgg, aw, ystt, rrjc, rv, vfku)
local qz = Instance.new(_d("Ih9VAhI"))

qz.Size = UDim2.fromOffset(ystt, rrjc)
qz.Position = UDim2.fromOffset(rgg, aw)
qz.BackgroundColor3 = num
qz.BorderSizePixel = 0
qz.Parent = xzb

if not vfku then
qz.BackgroundTransparency = 1

local nkvg = Instance.new(_d("MSRnGwUWXAE"))

nkvg.Color = num
nkvg.Thickness = 1.3
nkvg.LineJoinMode = Enum.LineJoinMode.Round
nkvg.Parent = qz
end

if rv then
local kggp = Instance.new(_d("MSR3AAUXUhY"))

kggp.CornerRadius = UDim.new(0, rv)
kggp.Parent = qz
end

return qz
end

local sey = {
{ 8, 0, 2, 3 },
{ 8, 15, 2, 3 },
{ 0, 8, 3, 2 },
{ 15, 8, 3, 2 },
{ 2, 2, 3, 3 },
{ 13, 2, 3, 3 },
{ 2, 13, 3, 3 },
{ 13, 13, 3, 3 },
}

for ue, wfqf in ipairs(sey) do
pb(wfqf[1], wfqf[2], wfqf[3], wfqf[4], 0, true)
end

pb(2, 2, 14, 14, 7, false)
pb(7, 7, 4, 4, 2, true)

return true
end
end
end

return false
end

task.defer(function()
for kbth = 1, 20 do
if ou.icon() then
break
end

task.wait(0.25)
end
end)

ou.configSection = ou.tab:Section({
Side = _d("KAhSGw"),
})

ou.configSection:Header({
Name = _d("JwJaCR4eFykMWg4QHFoBA0A"),
})

ou.autoSaveToggle = ou.configSection:Toggle({
Name = _d("JRhAAFcKVhII"),
Default = false,
Callback = function(yqld)
ou.autoSave = yqld
ou.autoSaveAt = 0

if yqld then
local kg = ou.selected or _d("AAhSDgIVQw")
local pqt, dlx = ou.save(kg)

ou.selected = kg
ou.lastText = pqt and (_d("JRhAAFcKVhIIFAAZWRpEGkYAAxwX") .. kg)
or (_d("JRhAAFcKVhIIFAAZVRcCBEYcA1lAFgRAClcfVg0BUQtNWQ") .. tostring(dlx))
else
ou.lastText = _d("JRhAAFcKVhIIFAARHxk")
end
end,
}, _d("BwJaCR4eaAUYQAAoClYSCA"))

ou.nameInput = ou.configSection:Input({
Name = _d("NwxCClcXVgkI"),
Placeholder = _d("AUNTQVcrVg0JRw"),
AcceptedCharacters = _d("JQFY"),
Callback = function(nxb)
ou.nameDraft = nxb
end,
})

ou.nameInput.IgnoreConfig = true

ou.configSection:Button({
Name = _d("Jx9RDgMcFxcMQgo"),
Callback = function()
local esf = ou.nameDraft or ou.nameInput:GetInput()

esf = type(esf) == _d("FxlGBhke") and esf:gsub(_d("OkhHRA"), _d("")):gsub(_d("QR4fSw"), _d("")) or _d("")

if esf == _d("") then
nnc:Dialog({
Title = _d("JwJaCR4e"),
Description = _d("MBREClcYFwoMWQpXH1gWTUAHEllEBRtRTxEQRRcZFEJXEENED1EMGBRSF01ABxJZUQ0BUUgEWVkFAFFB"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})

return
end

local ib, vht = ou.save(esf)

if not ib then
ou.lastText = _d("NwxCClcfVg0BUQtNWQ") .. tostring(vht)

return
end

ou.selected = esf
ou.lastText = _d("Jx9RDgMcU0Q") .. esf .. _d("Sg")
ou.savesAt = 0

task.defer(function()
task.wait(0.25)

pcall(function()
ou.fileDropdown:UpdateSelection(esf)
end)
end)
end,
})

ou.fileDropdown = ou.configSection:Dropdown({
Name = _d("NwxCClcfXggI"),
Search = false,
Multi = false,
Required = false,
Options = ou.saves(),
Callback = function(lohi)
local ggcd = type(lohi) == _d("EAxWAxI") and lohi[1] or lohi

if type(ggcd) == _d("FxlGBhke") and ggcd ~= _d("") then
ou.selected = ggcd
ou.selectionShown = ggcd

pcall(function()
ou.fileDropdown:UpdateName(_d("NwxCClcfXggIDk8") .. ggcd)
end)
end
end,
})

ou.fileDropdown.IgnoreConfig = true

ou.configSection:Button({
Name = _d("KAJVC1cKUggIVxsSHQ"),
Callback = function()
local ruf = ou.selected or ou.fileDropdown.Value
local kgys, ijmm = ou.load(ruf)

ou.lastText = kgys and (_d("KAJVCxIdFw") .. ruf .. _d("Sg")) or (_d("KAJVC1cfVg0BUQtNWQ") .. tostring(ijmm))
end,
})

ou.configSection:Button({
Name = _d("NwxCClcNWEQeUQMSGkMBCQ"),
Callback = function()
local qyw = ou.selected or ou.fileDropdown.Value
local zrpg, qpri = ou.save(qyw)

ou.lastText = zrpg and (_d("Mx9bGxJZ") .. qyw .. _d("Sg")) or (_d("NwxCClcfVg0BUQtNWQ") .. tostring(qpri))
end,
})

ou.configSection:Button({
Name = _d("IAhYCgMcFxcIWAoUDVIATUcOARw"),
Callback = function()
local twlx = ou.selected or ou.fileDropdown.Value

if type(twlx) ~= _d("FxlGBhke") or twlx == _d("") then
ou.lastText = _d("NARXBFcYFxcMQgpXH14ICBQJHgtEEEM")

return
end

nnc:Dialog({
Title = _d("IAhYCgMcFw") .. twlx .. _d("Ww"),
Description = _d("MAVRTxEQWwFNXRxXC1IJAkIKE1lRFgJZTxMQRA9NVQETWVQFA1oAA1lVAU1GChQWQQEfUQtZ"),
Buttons = {
{
Name = _d("IAhYCgMc"),
Callback = function()
local paek, rnqe = ou.delete(twlx)

ou.lastText = paek
and (_d("IAhYCgMcU0Q") .. twlx .. _d("Sg"))
or (_d("JwJBAxNZWQsZFAsSFVIQCA5P") .. tostring(rnqe))
end,
},
{
Name = _d("JwxaDBIV"),
},
},
})
end,
})

ou.configSection:Button({
Name = _d("NghSHRIKX0QBXRwD"),
Callback = function()
ou.savesAt = 0
ou.lastText = _d("NwxCClcVXhcZFB0SH0UBHlwKE1c")
end,
})

ou.configSection:Button({
Name = _d("KQxGBFcYREQMQRsYWVsLDFA"),
Callback = function()
local tvc = ou.selected or ou.fileDropdown.Value

if type(tvc) ~= _d("FxlGBhke") or tvc == _d("") then
ou.lastText = _d("NARXBFcYFxcMQgpXH14ICBQJHgtEEEM")

return
end

if ou.setAutoLoad(tvc) then
ou.lastText = tvc .. _d("RAFbDhMKFwsDFBwDGEUQQw")
else
ou.lastText = _d("JwJBAxNZWQsZFBgFEEMBTUAHEllWERlbTxsWVgBNWQ4FElIWQw")
end
end,
})

ou.configSection:Button({
Name = _d("JwFRDgVZVhEZW08bFlYA"),
Callback = function()
ou.setAutoLoad(_d(""))
ou.lastText = _d("KgJABx4XUEQBWw4TChcLAxQcAxhFEEM")
end,
})

ou.statusParagraph = ou.configSection:Paragraph({
Header = _d("NxlVGwIK"),
Body = _d(""),
})

ou.miscSection = ou.tab:Section({
Side = _d("NgRTBwM"),
})

ou.miscSection:Header({
Name = _d("KQRHDA"),
})

ou.miscSection:Toggle({
Name = _d("JRhAAFcaWwseUU8QHFkBH1UbHhZZRDh9"),
Default = false,
Callback = function(ohue)
zzhg(ohue)
end,
}, _d("CQRHDCgYQhACawwbFkQBMlMKGRxFBRldABk"))

ou.miscSection:Toggle({
Name = _d("JRhAAFcrWAgB"),
Default = true,
Callback = function(iilz)
ou.autoRoll = iilz

if iilz and ou.setRollButton then
ou.setRollButton(_d("JRhAACUWWwgvQRsDFlk"), true)
end
end,
}, _d("CQRHDCgYQhACax0YFVs"))

ou.miscSection:Toggle({
Name = _d("JRhAAFcoQg0OX08lFlsI"),
Default = true,
Callback = function(wdr)
ou.autoQuickRoll = wdr

if wdr and ou.setRollButton then
ou.setRollButton(_d("NRhdDBwrWAgBdhoDDVgK"), true)
end
end,
}, _d("CQRHDCgYQhACax4CEFQPMkYAGxU"))

ou.uiSection = ou.tab:Section({
Side = _d("NgRTBwM"),
})

ou.uiSection:Header({
Name = _d("MSQ"),
})

ou.uiSection:Toggle({
Name = _d("JgxXBBALWBEDUE8VFUIW"),
Default = true,
Callback = function(vdv)
pcall(function()
nnc:SetAcrylicBlurState(vdv)
end)
end,
}, _d("EQRrDRYaXAMfWxoZHWgGAUEd"))

function ou.widthFactor(wrl)
return 1 + math.max(0, (wrl or 1) - 1) * 0.8
end

function ou.scaleCap()
local dx = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local bxj = math.min(120, math.floor(((dx.Y - 40 - 8 - 8) / 500) * 100))

while bxj > 50 and (ou.baseWidth or 720) * (bxj / 100) * ou.widthFactor(bxj / 100) > dx.X - 16 do
bxj = bxj - 1
end

return math.max(50, bxj)
end

function ou.scaleCeiling()
return math.min(1.2, ou.scaleCap() / 100)
end

function ou.refreshScaleCap()
local mq = ou.scaleSlider

if not mq then
return
end

local wbax = ou.scaleCeiling()

pcall(function()
mq.Settings.Maximum = wbax
end)

local tqn = tonumber(mq:GetValue()) or 1

if tqn > wbax then
ou.scaleTarget = wbax

pcall(function()
mq:UpdateValue(wbax)
end)
end
end

ou.scaleSlider = ou.uiSection:Slider({
Name = _d("MSQUHBQYWwE"),
Default = 1,
Minimum = 0.5,

Maximum = ou.scaleCeiling(),
DisplayMethod = _d("MgxYGhI"),
Precision = 2,

Callback = function(hiz)
ou.scalePending = tonumber(hiz)
ou.scalePendingAt = os.clock()
end,
onInputComplete = function(mdzv)
local drk = ou.scaleCeiling()

ou.scaleTarget = math.clamp(tonumber(mdzv) or ou.scalePending or 1, 0.5, drk)
ou.scalePending = nil

ou.scaleAnchor = nil

ou.saveUi()
end,
}, _d("EQRrHBQYWwE"))

ou.refreshScaleCap()

ou.themeDropdown = ou.uiSection:Dropdown({
Name = _d("MAVRAhJDFzICXQs"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = ou.themeOrder,
Callback = function(rvh)
local gdh = type(rvh) == _d("EAxWAxI") and rvh[1] or rvh

if type(gdh) == _d("FxlGBhke") and ou.presets[gdh] then
ou.theme = gdh
ou.accent = nil
ou.applyTheme()

pcall(function()
ou.themeDropdown:UpdateName(_d("MAVRAhJDFw") .. gdh)
end)

ou.saveUi()
end
end,
}, _d("EQRrGx8cWgE"))

ou.accentPicker = ou.uiSection:Colorpicker({
Name = _d("JQ5XChkNFwcCWAACCw"),
Default = Color3.fromRGB(168, 170, 176),
Alpha = 0,
Callback = function(bofx)
ou.accent = bofx
ou.applyTheme()
ou.saveUi()
end,
}, _d("EQRrDhQaUgoZ"))

ou.codesSection = ou.tab:Section({
Side = _d("NgRTBwM"),
})

ou.codesSection:Header({
Name = _d("JwJQCgQ"),
})

ou.codeText = _d("NghQChIUREQIQgoFABcHAlAKVw1fDR4UCBYUUkQeXAYHChcTBEAHW1lYCggUCgEcRR1NVwACCVsBTVsJVwpSBwJaCwRX")

function ou.setCodeText(ldt)
ou.codeText = ldt

pcall(function()
ou.codeParagraph:UpdateBody(ldt)
end)
end

function ou.redeemCodes()
if ou.redeeming then
return
end

local yau = lg.RedeemCode
local rg = pbw:FindFirstChild(_d("KQJQGhscZAcfXR8DCg"))
local xkqo = rg and rg:FindFirstChild(_d("JwJQCjMYQwU"))
local vv, lf = false, nil

if yau and xkqo then
vv, lf = pcall(function()
return require(xkqo)
end)
end

local knb = vv and type(lf) == _d("EAxWAxI") and lf.Codes or nil

if not yau or type(knb) ~= _d("EAxWAxI") then
ou.setCodeText(_d("MAVdHFcPUhYeXQAZWVgCTUAHEllQBQBRTx8YREQDW08UFlMBTVgGBA0XCx8UARhZRQEJUQoaWUUBAFsbElc"))
return
end

local vzu = {}

for erd in pairs(knb) do
vzu[#vzu + 1] = erd
end

table.sort(vzu)

local lv = #vzu

ou.redeeming = true
ou.setCodeText(_d("NghQChIUXgoKFA") .. lv .. _d("RA5bCxIKGUpD"))

task.spawn(function()
local erzi, alm, iyqi = 0, 0, 0
local rdic = {}

for dfak = 1, lv do
if not hro() then
break
end

local vya = vzu[dfak]
local od, qim = pcall(function()
return yau:InvokeServer(vya)
end)

local et = od and type(qim) == _d("EAxWAxI") and qim.success == true
local jfc = od and type(qim) == _d("EAxWAxI") and tostring(qim.message or _d("")) or tostring(qim or _d(""))

if not et and string.find(string.lower(jfc), _d("EwxdGw"), 1, true) then
task.wait(3.5)

od, qim = pcall(function()
return yau:InvokeServer(vya)
end)

et = od and type(qim) == _d("EAxWAxI") and qim.success == true
jfc = od and type(qim) == _d("EAxWAxI") and tostring(qim.message or _d("")) or tostring(qim or _d(""))
end

if et then
erzi = erzi + 1
elseif string.find(string.lower(jfc), _d("BQFGChYdTg"), 1, true) then
alm = alm + 1
else
iyqi = iyqi + 1

if #rdic < 6 then
rdic[#rdic + 1] = vya .. _d("Xk0") .. (jfc ~= _d("") and jfc or _d("CgIUDhkKQAEf"))
end
end

ou.setCodeText(string.format(_d("QQkUABFZEgBNGU9SHRcWCFAKEhRSAEEUShNZVggfUQ4TABtESFBPBRxRER5RC1k"), dfak, lv, erzi, alm, iyqi))

if dfak < lv and hro() then
task.wait(1.8)
end
end

local xyy = {
string.format(_d("NghQChIUUgBNEQtbWVYIH1EOEwAXDAxQT1IdG0QfUQkCClIATRELVxZRREhQQQ"), erzi, alm, iyqi, lv),
}

for dmfn, wy in ipairs(rdic) do
xyy[#xyy + 1] = wy
end

ou.redeeming = false
ou.setCodeText(table.concat(xyy, _d("bg")))
end)
end

ou.codesSection:Button({
Name = _d("NghQChIUFwUBWE8UFlMBHg"),
Callback = function()
ou.redeemCodes()
end,
})

ou.codeParagraph = ou.codesSection:Paragraph({
Header = _d("JwJQCgQ"),
Body = ou.codeText,
})

ou.scriptSection = ou.tab:Section({
Side = _d("NgRTBwM"),
})

ou.scriptSection:Header({
Name = _d("Nw5GBgcN"),
})

ou.scriptSection:Button({
Name = _d("MQNYABYdFxcORgYHDQ"),
Callback = function()
pcall(function()
nnc:Unload()
end)

getgenv().ACBXWindow = nil
getgenv().ACBXAllowReload = nil
end,
})

task.spawn(function()
while hro() do

if os.clock() >= ou.savesAt then
ou.savesAt = os.clock() + 3

local ymzn = ou.saves()
local ufs = table.concat(ymzn, _d("GA"))

if ufs ~= ou.knownSaves then
ou.knownSaves = ufs

pcall(function()
ou.fileDropdown:ClearOptions()
ou.fileDropdown:InsertOptions(ymzn)
end)
end

if ou.selected and ou.selectionShown ~= ou.selected then
ou.selectionShown = ou.selected

pcall(function()
ou.fileDropdown:UpdateSelection(ou.selected)
end)
end
end

if ou.autoSave and os.clock() >= ou.autoSaveAt then
ou.autoSaveAt = os.clock() + 60

local dyb = ou.selected or _d("AAhSDgIVQw")
local rws, yzjz = ou.save(dyb)

ou.selected = dyb
ou.lastText = rws and (_d("JRhAAFcKVhIIUE8") .. dyb .. _d("RAxATw") .. os.date(_d("QSUOSjo")) .. _d("Sg"))
or (_d("JRhAAFcKVhIIFAkWEFsBCQ5P") .. tostring(yzjz))
end

if os.clock() >= ou.themeAt then
ou.themeAt = os.clock() + 3
ou.applyTheme()
end

if os.clock() >= ou.capAt then
ou.capAt = os.clock() + 2
ou.refreshScaleCap()
end

if os.clock() >= ou.statusAt then
ou.statusAt = os.clock() + 2

local qr = ou.autoLoadName()
local dcg = table.concat({
_d("JRhAAFcVWAUJDk8") .. (qr or _d("CgJaCg")),
_d("NwxCCgRDFw") .. tostring(#ou.saves()),
ou.lastText,
}, _d("bg"))

if dcg ~= ou.shownStatus then
ou.shownStatus = dcg

pcall(function()
ou.statusParagraph:UpdateBody(dcg)
end)
end
end

task.wait(0.25)
end
end)

task.spawn(function()
while hro() do

local gye = ou.scalePending

if gye and os.clock() - (ou.scalePendingAt or 0) > 0.35 then
local oqz = ou.scaleCeiling()
local ksfh = math.clamp(gye, 0.5, oqz)

ou.scalePending = nil

if math.abs(ksfh - ou.scaleTarget) > 0.002 then
ou.scaleTarget = ksfh
ou.scaleAnchor = nil

ou.saveUi()
end
end

if math.abs(ou.scaleTarget - ou.scale) > 0.002 then
local fbb = ou.guiRoot()

if fbb and not ou.baseWidth then
ou.baseWidth = fbb.Size.X.Offset
ou.baseHeight = fbb.Size.Y.Offset
end

local ajc = ou.baseWidth or 720
local jfr = ou.baseHeight or 500
local kl = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local kx, tnu = 8, 40

if not ou.scaleAnchor and fbb then

local lpdk = ou.widthFactor(ou.scaleTarget)
local bayf, nq = ajc * lpdk * ou.scaleTarget, jfr * ou.scaleTarget
local anam = fbb.AbsolutePosition

ou.scaleAnchor = Vector2.new(
math.clamp(anam.X, kx, math.max(kx, kl.X - bayf - kx)),
math.clamp(anam.Y, tnu, math.max(tnu, kl.Y - nq - kx))
)
end

local vdr = ou.scaleAnchor

ou.scale = ou.scale + (ou.scaleTarget - ou.scale) * 0.18

local razt = ou.widthFactor(ou.scale)

pcall(function()
nnc:SetScale(ou.scale)

if fbb then
local lmfq = math.floor(ajc * razt)

fbb.Size = UDim2.fromOffset(lmfq, math.floor(jfr))

local xyh = fbb:FindFirstChild(_d("JwJaGxIXQw"))

if xyh then
local sjlp = fbb:FindFirstChild(_d("NwRQChUYRQ"))
local aux = math.floor(sjlp and sjlp.Size.X.Scale * lmfq or lmfq * 0.325)

xyh.Size = UDim2.new(0, math.max(0, lmfq - aux), 1, 0)
end
end
end)

if fbb and vdr then
local kwew, ngyk = ajc * razt * ou.scale, jfr * ou.scale
local zvt = math.clamp(vdr.X, kx, math.max(kx, kl.X - kwew - kx))
local qrdl = math.clamp(vdr.Y, tnu, math.max(tnu, kl.Y - ngyk - kx))

local fbgg = fbb.Parent and fbb.Parent.AbsolutePosition or Vector2.zero

pcall(function()
fbb.Position = UDim2.fromOffset(math.floor(zvt - fbgg.X), math.floor(qrdl - fbgg.Y))
end)
end
else

ou.scaleAnchor = nil
end

task.wait()
end
end)

ifi.misc.tierLabels = {}
ifi.misc.labelToTier = {}

ifi.misc.expSection = ifi.misc.tab:Section({
Side = _d("KAhSGw"),
})

ifi.misc.expSection:Header({
Name = _d("IRVEChMQQw0CWhxXiajz79vX+A"),
})

ifi.misc.claimToggle = ifi.misc.expSection:Toggle({
Name = _d("JRhAAFcaWwUEWQ"),
Default = false,
Callback = function(srlq)
local iln = ifi.misc.expeditions

iln.enabled = srlq
iln.claimAt = 0

if srlq then
iln.askedAt = 0
iln.request()
end
end,
}, _d("BRhAACgaWwUEWQ"))

ifi.misc.rewardToggle = ifi.misc.expSection:Toggle({
Name = _d("JRhAAFcaWwseUU8FHEAFH1Ac"),
Default = false,
Callback = function(xcvb)
local fifc = ifi.misc.expeditions

fifc.autoClose = xcvb

if xcvb then
fifc.closeRewards()
end
end,
}, _d("ARVEMBYMQwsyVwMYClI"))

ifi.misc.startToggle = ifi.misc.expSection:Toggle({
Name = _d("JRhAAFcKQwUfQA"),
Default = false,
Callback = function(hlxe)
local dxh = ifi.misc.expeditions

if hlxe and not next(dxh.tiersWanted) then
dxh.autoStart = false

pcall(function()
ifi.misc.startToggle:UpdateState(false)
end)

nnc:Dialog({
Title = _d("JRhAAFcKQwUfQE8ZHFIAHhQOVw1eAR8"),
Description = _d("NARXBFcYQ0QBUQ4EDRcLA1FPAxBSFk1dAVcNXwFNYAYSCxcAH1sfExZACk1SBgUKQ0pNcQ4EABcQDF8KBFlDDAgUDB8cVhQIRxtXGlYWCUdDVzdeAwVAAhYLUkQZXApXC1YWCEcbW1lWCgkUDhkAFwoYWQ0SCxcLCxQbHxxaRA5VAVcLQgpNVRtXFlkHCBo"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})

return
end

dxh.autoStart = hlxe
dxh.startedAt = {}

if hlxe then
dxh.askedAt = 0
dxh.request()
end
end,
}, _d("BRhAACgKQwUfQA"))

for yrf, fsz in ipairs(ifi.misc.expeditions.tiers()) do
table.insert(ifi.misc.tierLabels, tostring(fsz.name))
ifi.misc.labelToTier[tostring(fsz.name)] = fsz.id
end

ifi.misc.building = true

ifi.misc.tierDropdown = ifi.misc.expSection:Dropdown({
Name = _d("MARRHQ"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = ifi.misc.tierLabels,
Callback = function(il)
local clu = ifi.misc.expeditions

if ifi.misc.building then
return
end

local qen = {}
local qqs = {}

if type(il) == _d("EAxWAxI") then
for cyza, vnm in pairs(il) do
local lcw = ifi.misc.labelToTier[tostring(cyza)]

if vnm and lcw then
qen[lcw] = true
table.insert(qqs, tostring(cyza))
end
end
end

table.sort(qqs)
clu.tiersWanted = qen

pcall(function()
ifi.misc.tierDropdown:UpdateName(#qqs > 0 and (_d("MARRHVebt8ZN") .. table.concat(qqs, _d("SE0"))) or _d("MARRHVebt8ZNWgAZHA"))
end)
end,
}, _d("EARRHQ"))

task.defer(function()
ifi.misc.building = false
end)

ifi.misc.expSection:Button({
Name = _d("JwFVBhpZWQsa"),
Callback = function()
local jut = ifi.misc.expeditions

if not jut.claim() then
nnc:Notify({
Title = _d("IRVEChMQQw0CWhw"),
Description = _d("KgJABx4XUEQFVRxXGlgJCBQNFhpcRBRRG1k"),
Lifetime = 5,
})
end
end,
})

ifi.misc.expSection:Button({
Name = _d("NwhaC1cKUggIVxsSHQ"),
Callback = function()
local code = ifi.misc.expeditions

if not next(code.tiersWanted) then
nnc:Notify({
Title = _d("IRVEChMQQw0CWhw"),
Description = _d("NARXBFcYQ0QBUQ4EDRcLA1FPAxBSFk1dAVcNXwFNUB0YCVMLGlpPERBFFxka"),
Lifetime = 5,
})

return
end

local mrbn = {}
local nbkq = 0

for vutt, dyfj in ipairs(code.tiers()) do
if code.tiersWanted[dyfj.id] and code.status(dyfj.id) == _d("BRtVBhsYVQgI") then
if code.start(dyfj.id, mrbn) then
nbkq = nbkq + 1
end
end
end

if nbkq == 0 then
nnc:Notify({
Title = _d("IRVEChMQQw0CWhw"),
Description = _d("KgJABx4XUEQOWxobHRcGCBQcEhdDXk1ABxJZRAEBUQwDHFNEGV0KBQoXBR9RTxYVRQEMUBZXFkIQQRQABVlDDAhGClcYRQFNWgADWVELGEZPEhVeAwRWAxJZVAUfUBxXH1gWTUAHEhQZ"),
Lifetime = 6,
})
end
end,
})

ifi.misc.expInfo = ifi.misc.tab:Section({
Side = _d("NgRTBwM"),
})

ifi.misc.expInfo:Header({
Name = _d("IRVEChMQQw0CWhw"),
})

ifi.misc.expParagraph = ifi.misc.expInfo:Paragraph({
Header = _d("NxlVGwIK"),
Body = ifi.misc.expeditions.text(),
})

ifi.misc.expeditions.loadRewards()

ifi.misc.expRewardParagraph = ifi.misc.expInfo:Paragraph({
Header = _d("JwFVBhocUw"),
Body = ifi.misc.expeditions.rewardsText(),
})

task.spawn(function()
local meh = ifi.misc.expeditions
local ipi = wfu(_d("NxRaDDIBRwEJXRseFlkX"), 3)

if ipi then
ipi.OnClientEvent:Connect(function(ve)
if type(ve) ~= _d("EAxWAxI") then
return
end

meh.state = ve

meh.offset = (tonumber(ve.now) or os.time()) - os.time()
meh.syncedAt = os.clock()

if type(ve.rewards) == _d("EAxWAxI") and #ve.rewards > 0 then
table.insert(meh.rewardLog, 1, {
at = os.time(),
title = tostring(ve.rewardTitle or _d("IRVEChMQQw0CWg")),
items = ve.rewards,
})

while #meh.rewardLog > 8 do
table.remove(meh.rewardLog)
end

meh.saveRewards()

if meh.autoClose then

task.delay(0.35, meh.closeRewards)
end
end
end)
end

while hro() do

if os.clock() - meh.askedAt > 1 and os.clock() - meh.syncedAt > 20 then
meh.request()
end

if meh.enabled then
meh.claim()
end

if meh.autoClose then
meh.closeRewards()
end

if meh.autoStart and next(meh.tiersWanted) then
local ksb = {}

for egv, kep in ipairs(meh.tiers()) do
if meh.tiersWanted[kep.id] and meh.status(kep.id) == _d("BRtVBhsYVQgI") then
if meh.start(kep.id, ksb) then
break
end
end
end
end

local ije = meh.text()

if ifi.misc.expParagraph and ije ~= ifi.misc.expShown then
ifi.misc.expShown = ije

pcall(function()
ifi.misc.expParagraph:UpdateBody(ije)
end)
end

local tdpn = meh.rewardsText()

if ifi.misc.expRewardParagraph and tdpn ~= meh.rewardsShown then
meh.rewardsShown = tdpn

pcall(function()
ifi.misc.expRewardParagraph:UpdateBody(tdpn)
end)
end

task.wait(0.75)
end
end)

ifi.misc.util = {
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

function ifi.misc.util.hook()
local hox = ifi.misc.util

if hox.hooked then
return
end

hox.hooked = true

if lg.SyncCollection then
lg.SyncCollection.OnClientEvent:Connect(function(hkg)
if type(hkg) == _d("EAxWAxI") then
hox.profile = hkg
hox.profileAt = os.clock()
end
end)
end

if lg.SyncAchievements then
lg.SyncAchievements.OnClientEvent:Connect(function(dotr)
if type(dotr) == _d("EAxWAxI") then
hox.ach = dotr
end
end)
end

if lg.SyncQuests then
lg.SyncQuests.OnClientEvent:Connect(function(jnv)
if type(jnv) == _d("EAxWAxI") and type(jnv.list) == _d("EAxWAxI") then
hox.quests = jnv
end
end)
end

if lg.SyncPeriodicQuests then
lg.SyncPeriodicQuests.OnClientEvent:Connect(function(eur, tnas)
if eur == _d("EwhRBBsA") and type(tnas) == _d("EAxWAxI") and type(tnas.list) == _d("EAxWAxI") then
hox.weekly = tnas
end
end)
end
end

function ifi.misc.util.askProfile()
local sbm = ifi.misc.util

if os.clock() - sbm.askedAt < 1.5 then
return
end

sbm.askedAt = os.clock()

if lg.RequestSync then
pcall(function()
lg.RequestSync:FireServer()
end)
end
end

function ifi.misc.util.currentProfile()
local lpui = ifi.misc.util

if type(lpui.profile) ~= _d("EAxWAxI") then
lpui.askProfile()

return nil
end

if os.clock() - lpui.profileAt > 20 then
lpui.askProfile()
end

return lpui.profile
end

function ifi.misc.util.forgetProfile()
local mvop = ifi.misc.util

mvop.profile = nil
mvop.profileAt = 0
mvop.askedAt = 0
end

function ifi.misc.util.indexedTotal(wgls)
local aeo = 0

for xui, ey in pairs((wgls and wgls.cardIndex) or {}) do
if ey then
aeo = aeo + 1
end
end

return aeo
end

function ifi.misc.util.indexPending(jphy)
local elb = {}

if type(jphy) ~= _d("EAxWAxI") then
return elb
end

local wem = ifi.misc.util.indexedTotal(jphy)
local xzjw = jphy.indexMilestones or {}

for yek = 1, 30 do
if not xzjw[yek] and yek * 5 <= wem then
table.insert(elb, yek)
end
end

return elb
end

function ifi.misc.util.indexFrame()
local hpmu = sfed:FindFirstChild(_d("JwxGCz4XUwEVcxoe"))

return hpmu and hpmu:FindFirstChild(_d("LQNQCg8/RQUAUQ"))
end

function ifi.misc.util.clickButton(lga)
if not lga then
return false
end

if firesignal then
local bd = pcall(firesignal, lga.MouseButton1Click)

if bd then
return true
end
end

return pcall(function()
lga:Activate()
end)
end

function ifi.misc.util.closeIndex()
local lze = ifi.misc.util.indexFrame()

if not lze or not lze.Visible then
return false
end

pcall(function()
local ah = pbw:FindFirstChild(_d("KQJQGhscZAcfXR8DCg"))
local iwp = ah and ah:FindFirstChild(_d("KQhaGjoYWQUKUR0"))

if iwp then
require(iwp).close(lze)
end
end)

ifi.misc.util.clickButton(lze:FindFirstChild(_d("JwFbHBI7QhAZWwE")))

pcall(function()
lze.Visible = false
end)

return true
end

function ifi.misc.util.claimIndex()
local rvv = ifi.misc.util

if os.clock() < rvv.indexAt then
return false
end

local gbqh = rvv.currentProfile()

if not gbqh then
return false
end

local bfme = rvv.indexPending(gbqh)
local azqn = bfme[1]

if not azqn then
return false
end

local tfok = rvv.indexedTotal(gbqh)
local ets = rvv.indexAsked

if type(ets) == _d("EAxWAxI") and ets.milestone == azqn and ets.total == tfok then
return false
end

rvv.indexAsked = { milestone = azqn, total = tfok }

pcall(function()
lg.ClaimIndexReward:FireServer(azqn)
end)

rvv.indexAt = os.clock() + 1.5

rvv.profile = nil
rvv.profileAt = 0

task.delay(0.4, rvv.closeIndex)

return true
end

function ifi.misc.util.achPending()
local zv = {}
local az = ifi.misc.util.ach

if type(az) ~= _d("EAxWAxI") then
return zv
end

for aumc, jhu in ipairs(az.chains or {}) do
for fy, ft in ipairs(jhu.levels or {}) do
if ft.reached and not ft.claimed then
table.insert(zv, { chain = tostring(jhu.id), index = ft.index, name = tostring(ft.name or ft.index) })
end
end
end

return zv
end

function ifi.misc.util.claimAchievement()
local izg = ifi.misc.util

if os.clock() < izg.achAt then
return false
end

if type(izg.ach) ~= _d("EAxWAxI") then
if os.clock() - izg.achAskedAt > 4 and lg.RequestAchievements then
izg.achAskedAt = os.clock()

pcall(function()
lg.RequestAchievements:FireServer()
end)
end

return false
end

for tii, pgjx in ipairs(izg.achPending()) do
pcall(function()
lg.ClaimAchievement:FireServer(pgjx.chain, pgjx.index)
end)

izg.achAt = os.clock() + 1

task.delay(1, function()
if lg.RequestAchievements then
pcall(function()
lg.RequestAchievements:FireServer()
end)
end
end)

return true
end

return false
end

function ifi.misc.util.questRows()
local xcv = ifi.misc.util
local mrpm = {}

for guyf, ealt in ipairs({ { list = _d("AAxdAw4"), payload = xcv.quests }, { list = _d("EwhRBBsA"), payload = xcv.weekly } }) do
for evas, ikt in ipairs((type(ealt.payload) == _d("EAxWAxI") and ealt.payload.list) or {}) do
if type(ikt) == _d("EAxWAxI") then
table.insert(mrpm, { list = ealt.list, index = evas, quest = ikt })
end
end
end

return mrpm
end

function ifi.misc.util.questPending()
local fkou = {}

for lbz, fjp in ipairs(ifi.misc.util.questRows()) do
local rxvw = fjp.quest

if not rxvw.claimed and (tonumber(rxvw.progress) or 0) >= (tonumber(rxvw.target) or math.huge) then
table.insert(fkou, fjp)
end
end

return fkou
end

function ifi.misc.util.askQuests()
local dyos = ifi.misc.util

if os.clock() - dyos.questAskedAt > 4 and lg.RequestQuests then
dyos.questAskedAt = os.clock()

pcall(function()
lg.RequestQuests:FireServer()
end)
end

if os.clock() - dyos.weeklyAskedAt > 4 and lg.RequestPeriodicQuests then
dyos.weeklyAskedAt = os.clock()

pcall(function()
lg.RequestPeriodicQuests:FireServer(_d("EwhRBBsA"))
end)
end
end

function ifi.misc.util.claimQuest()
local ynzj = ifi.misc.util

if os.clock() < ynzj.questAt then
return false
end

if type(ynzj.quests) ~= _d("EAxWAxI") and type(ynzj.weekly) ~= _d("EAxWAxI") then
ynzj.askQuests()

return false
end

for kcuq, vpbx in ipairs(ynzj.questPending()) do
if vpbx.list == _d("EwhRBBsA") then
if lg.ClaimPeriodicQuest then
pcall(function()
lg.ClaimPeriodicQuest:FireServer(_d("EwhRBBsA"), vpbx.index)
end)
end
else
pcall(function()
lg.ClaimQuest:FireServer(vpbx.index)
end)
end

ynzj.questAt = os.clock() + 1.2

task.delay(1, function()
ynzj.askQuests()
end)

return true
end

return false
end

function ifi.misc.util.packCatalog()
local cvg = ifi.misc.util

if cvg.packs then
return cvg.packs
end

local rtu = {}
local ce, nhwm = pcall(function()
return require(pbw.ModuleScripts.PackData)
end)

if ce and type(nhwm) == _d("EAxWAxI") and type(nhwm.Packs) == _d("EAxWAxI") then
for yccz, otq in ipairs(nhwm.Packs) do
if otq.id then
table.insert(rtu, { id = tostring(otq.id), name = tostring(otq.name or otq.id) })
end
end
end

cvg.packs = rtu

return rtu
end

function ifi.misc.util.packUnlocked(yymo, oxxu)
if type(yymo) ~= _d("EAxWAxI") then
return true
end

local flr, mwc = pcall(function()
return require(pbw.ModuleScripts.PackData)
end)
local jte, ego = pcall(function()
return require(pbw.ModuleScripts.PackSlotData)
end)

if not (flr and jte) then
return true
end

local imh = mwc.ById and mwc.ById[oxxu]

if not imh then
return false
end

local foa, abwo = pcall(ego.isPackUnlocked, imh, yymo)

return (not foa) or abwo == true
end

function ifi.misc.util.visit(kdk)
local gefd = workspace:FindFirstChild(_d("Kj13HA"))
local ryka = gefd and gefd:FindFirstChild(kdk)
local mab = mtxf.Character
local bp = mab and mab:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))
local ilq = ryka and (ryka:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ")) or ryka:FindFirstChildWhichIsA(_d("JgxHCicYRRA"), true))

if not (ilq and bp) then
return nil
end

local fgt = bp.CFrame

bp.CFrame = CFrame.new((ilq.CFrame * CFrame.new(0, 0, -5)).Position)

return fgt
end

function ifi.misc.util.returnTo(wqm)
local xvw = mtxf.Character
local dd = xvw and xvw:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if dd and wqm then
dd.CFrame = wqm
end
end

function ifi.misc.util.applyPacks(nkm, zko)
local zbio = ifi.misc.util

if os.clock() < zbio.packAt then
return false, _d("MwxdG1cYFwkCWQoZDRk")
end

local hxom = zbio.currentProfile()

if not hxom then
return false, _d("NghVCx4XUEQUWxoFWUcWAlIGGxwXSU1AHQ5ZVgMMXQFXEFlEDBQcEhpYCgka")
end

if zko and (tonumber(hxom.packSlots) or 1) < 2 then
return false, _d("NwFbG1dLFwoIUQsEWUMMCBQKDw1FBU1EDhQSFxcBWxtXHlYJCEQOBAoZ")
end

if not (lg.OpenPackShop and lg.EquipPack) then
return false, _d("MAVRTwcYVA9NRwcYCRcNHhQBGA0XDQMUGx8QREQKVQISWUEBH0cGGBcZ")
end

zbio.packAt = os.clock() + 8

task.spawn(function()
local ixg = zbio.visit(_d("KgJWAxIKRA0DUxw"))

if not ixg then
return
end

pcall(function()
lg.OpenPackShop:FireServer(_d("FAxXBCgUUhYOXA4ZDQ"))
end)

task.wait(1.2)

if nkm then
pcall(function()
lg.EquipPack:FireServer(nkm, 1)
end)
end

if zko then
task.wait(0.8)

pcall(function()
lg.EquipPack:FireServer(zko, 2)
end)
end

task.wait(0.8)
zbio.returnTo(ixg)
zbio.forgetProfile()
end)

return true
end

function ifi.misc.util.accScore(wic)
local iknm = wic.effects or {}

return (iknm.luckBonus or 0) * 10
+ ((iknm.luckMult or 1) - 1) * 200
+ ((iknm.borderLuckMult or 1) - 1) * 200
- ((iknm.rollCdMult or 1) - 1) * 30
end

function ifi.misc.util.accCatalog()
local kzc = ifi.misc.util

if kzc.accessories then
return kzc.accessories
end

local tswj = {}

for fnzu, sast in ipairs({ _d("JQ5XCgQKWBYUcA4DGA"), _d("JQ5XCgQKWBYUcA4DGAU") }) do
local yxqi, hhf = pcall(function()
return require(pbw.ModuleScripts[sast])
end)

if yxqi and type(hhf) == _d("EAxWAxI") and type(hhf.Accessories) == _d("EAxWAxI") then
for aeoa, vwj in ipairs(hhf.Accessories) do
if vwj.id then
table.insert(tswj, {
id = tostring(vwj.id),
name = tostring(vwj.name or vwj.id),
shop = fnzu,

shopName = fnzu == 1 and _d("JQ5XCgQKWBYUFDwfFkc") or _d("KRRHGxILXgsYR086GFk"),
raidable = vwj.raidShopOnly == true,
hidden = vwj.hidden == true,
requirements = vwj.requirements or {},
score = ifi.misc.util.accScore(vwj),
})
end
end
end
end

kzc.accessories = tswj

return tswj
end

function ifi.misc.util.accOwned(uo)
local zrp = {}

for st, bss in ipairs((uo and uo.accessories) or {}) do
zrp[tostring(bss)] = true
end

return zrp
end

function ifi.misc.util.accMeets(scj, mut)
for pfvw, ztci in ipairs(mut.requirements) do
local hb = scj.cards and scj.cards[ztci.cardId]
local rdl = type(hb) == _d("EAxWAxI") and (tonumber(hb[ztci.borderLevel]) or 0) or 0

if rdl < (tonumber(ztci.amount) or 0) then
return false
end
end

return true
end

function ifi.misc.util.accPlan(fit)
local hdib = ifi.misc.util
local ivmb = hdib.accOwned(fit)
local vgy = {}

for kq, pzp in ipairs(hdib.accCatalog()) do
if not ivmb[pzp.id] and not pzp.raidable and not pzp.hidden and hdib.accMeets(fit, pzp) then
local atjo = vgy[pzp.shop]

if not atjo or pzp.score > atjo.score then
vgy[pzp.shop] = pzp
end
end
end

return vgy
end

function ifi.misc.util.accPicks(ron)
local lrxn = ifi.misc.util
local vvag = lrxn.accOwned(ron)
local pyo, ummu

for ycsp, jpxl in ipairs(lrxn.accCatalog()) do
if vvag[jpxl.id] then
if not pyo or jpxl.score > pyo.score then
pyo = jpxl
end
elseif not jpxl.raidable and not jpxl.hidden and lrxn.accMeets(ron, jpxl) then
if not ummu or jpxl.score > ummu.score then
ummu = jpxl
end
end
end

return pyo, ummu
end

function ifi.misc.util.equipBest()
local hktk = ifi.misc.util
local jzo = hktk.currentProfile()

if not jzo or not lg.EquipAccessory then
return false
end

local mi = hktk.accPicks(jzo)

if not mi or jzo.equippedAccessory == mi.id then
return mi ~= nil
end

pcall(function()
lg.EquipAccessory:FireServer(mi.id)
end)

task.delay(1.5, function()
hktk.forgetProfile()
end)

return true
end

function ifi.misc.util.buyBest()
local fs = ifi.misc.util

if os.clock() < fs.accAt then
return false, _d("MwxdG1cYFwkCWQoZDRk")
end

if svub.busy(1) or svub.busy(2) then
fs.accNote = _d("LQMUDlcbVhAZWApXVBcFTUcHGAkXEB9dH1cOWBEBUE8SF1NEBEA")
return false, _d("LQMUDlcbVhAZWApXVBcFTUcHGAkXEB9dH1cOWBEBUE8SF1NEBEBB")
end

local wqr = fs.currentProfile()

if not wqr then
fs.accNote = _d("NghVCx4XUEQUWxoFWUcWAlIGGxwXSU1DBhsVFxAfTU8WHlYNAxQGGVlWRB5RDBgXUw")
return false, _d("NghVCx4XUEQUWxoFWUcWAlIGGxwXSU1AHQ5ZVgMMXQFXEFlEDBQcEhpYCgka")
end

local mpjg = fs.accPlan(wqr)
local pjtx = {}

for fegb = 1, 2 do
if mpjg[fegb] then
table.insert(pjtx, mpjg[fegb].name)
end
end

if #pjtx == 0 then
fs.accNote = _d("KgJABx4XUEQDURhXDFkIAlcEEh0XHQhAT1pZQwwIFAwWC1MXTVIABVleEE1VHRJZWQsZFAYZWUMMCBQMGBVbAQ5ABhgX")
return false, _d("KgJABx4XUEQDURhXGlYKTVYKVwxZCAJXBBIdFx0IQE9aWUMMCBQMFgtTF01SAAVZXhBNVR0SWVkLGRQGGVlDDAgUDBgVWwEOQAYYFxk")
end

fs.accAt = os.clock() + 12
fs.accNote = _d("MwxYBB4XUEQZW08DEVJEDlsaGQ1SFk1SAAVZ") .. table.concat(pjtx, _d("RAxaC1c"))

task.spawn(function()
for rrms = 1, 2 do
local aeh = mpjg[rrms]

if aeh then
local poh = rrms == 1 and _d("FBhGHAIQQwEJUA") or _d("EwxSCRIVWgUDUQ4DCkAFC1IKGwo")
local msvt = rrms == 1 and lg.OpenAccessoryShop or lg.OpenAccessoryShop2
local dscg = rrms == 1 and lg.BuyAccessory or lg.BuyAccessory2
local blne = poh and fs.visit(poh) or nil

if not blne then
local yldr = workspace:FindFirstChild(_d("Kj13HA"))
local qkr = yldr and yldr:FindFirstChild(poh)

if qkr and os.clock() - (fs.worldAskedAt or 0) > 25 then

fs.worldAskedAt = os.clock()
fs.accNote = _d("JwVVHRYaQwEfFAEYDRcWCFULDlkaRBlGFh4XUEQMUw4eFxcXBVsdAxVO")
elseif not qkr and os.clock() - (fs.worldAskedAt or 0) > 25 then

fs.worldAskedAt = os.clock()
fs.accNote = _d("KgIUDBgMWRAIRk8eFxcQBV0cVw5YFgFQT1pZQwUGXQEQWUMMCBQDGBtVHU1AChscRwsfQA")

pcall(function()
lg.TeleportToWorld:FireServer(_d("CAJWDQ4"))
end)

task.wait(4.5)
blne = fs.visit(poh)
end
end

if blne and msvt and dscg then

task.wait(0.9)

pcall(function()
msvt:FireServer()
end)

task.wait(1.2)

pcall(function()
dscg:FireServer(aeh.id)
end)

task.wait(0.9)
fs.returnTo(blne)
fs.accNote = _d("JgJBCB8NFw") .. tostring(aeh.name)
elseif not blne then
fs.accNote = _d("JwJBAxNZWQsZFB0SGFQMTUAHEllUCxhaGxILF0lNQB0OWVYDDF0BVxBZRAwUAhgUUgoZ")
end

task.wait(0.6)
end
end

fs.forgetProfile()

for cwt = 1, 8 do
if type(fs.profile) == _d("EAxWAxI") then
break
end

fs.askProfile()
task.wait(0.7)
end

fs.equipBest()
end)

return true, table.concat(pjtx, _d("SE0"))
end

function ifi.misc.util.indexText()
local sng = ifi.misc.util

if type(sng.profile) ~= _d("EAxWAxI") then
return _d("NghVCx4XUEQUWxoFWVQFH1BPHhdTARUaQVk")
end

local yxz = sng.indexPending(sng.profile)
local ga = 0

for sgy, axw in pairs(sng.profile.indexMilestones or {}) do
if axw then
ga = ga + 1
end
end

local tto = tostring(sng.indexedTotal(sng.profile)) .. _d("RA5VHRMKFw0DUAoPHFNITQ") .. tostring(ga) .. _d("RAJST0RJFxYIQw4FHUREDlgOHhRSAA")

if #yxz > 0 then
tto = tto .. _d("bj9RDhMADUQ") .. table.concat(yxz, _d("SE0"))
end

return tto
end

function ifi.misc.util.achText()
local tfb = ifi.misc.util

if type(tfb.ach) ~= _d("EAxWAxI") then
return _d("NghVCx4XUEQMVwceHEEBAFEBAwoZSkM")
end

local gop = tfb.achPending()
local xdkj = 0

for tw, unf in ipairs(tfb.ach.chains or {}) do
for yqt in ipairs(unf.levels or {}) do
xdkj = xdkj + 1
end
end

return tostring(#gop) .. _d("RAJSTw") .. tostring(xdkj) .. _d("RAxXBx4cQQEAUQEDChcWCFULDg")
end

function ifi.misc.util.questText()
local xjo = ifi.misc.util

if type(xjo.quests) ~= _d("EAxWAxI") and type(xjo.weekly) ~= _d("EAxWAxI") then
return _d("NghVCx4XUEQcQQoEDURKQxo")
end

local bxwr, dgm = 0, 0

for jq, ppzv in ipairs(xjo.questPending()) do
if ppzv.list == _d("EwhRBBsA") then
dgm = dgm + 1
else
bxwr = bxwr + 1
end
end

local dpvi = type(xjo.quests) == _d("EAxWAxI") and #(xjo.quests.list or {}) or 0
local socu = type(xjo.weekly) == _d("EAxWAxI") and #(xjo.weekly.list or {}) or 0

return tostring(bxwr) .. _d("RAJSTw") .. tostring(dpvi) .. _d("RAlVBhsAFxYIVQsOcw")
.. tostring(dgm) .. _d("RAJSTw") .. tostring(socu) .. _d("RBpRChwVTkQfUQ4TAA")
end

function ifi.misc.util.packText()
local qpyv = ifi.misc.util
local gf = qpyv.profile

if type(gf) ~= _d("EAxWAxI") then
return _d("NghVCx4XUEQUWxoFWUcFDl8cWVcZ")
end

local function mtn(lcxk)
for ha, cemw in ipairs(qpyv.packCatalog()) do
if cemw.id == lcxk then
return cemw.name
end
end

return tostring(lcxk)
end

local jv = _d("NwFbG1dIDUQ") .. mtn(gf.equippedPack)

if (tonumber(gf.packSlots) or 1) >= 2 then
jv = jv .. _d("bj5YAANZBV5N") .. mtn(gf.equippedPack2)
else
jv = jv .. _d("bj5YAANZBV5NUw4aHEcFHkdPGRZDRAJDARId")
end

return jv
end

function ifi.misc.util.accText()
local jkwl = ifi.misc.util
local pqs = jkwl.profile

if type(pqs) ~= _d("EAxWAxI") then
return _d("NghVCx4XUEQUWxoFWVYHDlEcBBZFDQhHQVlX")
end

local yx = jkwl.accPicks(pqs)
local cffe = jkwl.accPlan(pqs)
local uakf = _d("CgJaCg")

for fnq, oh in ipairs(jkwl.accCatalog()) do
if oh.id == pqs.equippedAccessory then
uakf = oh.name .. _d("REU") .. oh.shopName .. _d("TQ")
end
end

local zt = _d("IRxBBgcJUgBXFA") .. uakf

if yx then
zt = zt .. _d("bi9RHANZWBMDUQtNWQ") .. yx.name
end

zt = zt .. _d("bixXDBIKRAsfTU8kEVgUVxQ") .. (cffe[1] and cffe[1].name or _d("CgJABx4XUEQDURg"))
zt = zt .. _d("biBNHAMcRQ0CQRxXNFYKVxQ") .. (cffe[2] and cffe[2].name or _d("CgJABx4XUEQDURg"))

if jkwl.accNote then
zt = zt .. _d("biFVHANZQxYERFVX") .. jkwl.accNote
end

return zt
end

ifi.misc.util.hook()
ifi.misc.util.askProfile()

ifi.misc.indexSection = ifi.misc.tab:Section({
Side = _d("KAhSGw"),
})

ifi.misc.indexSection:Header({
Name = _d("JwxGC1cwWQAITE+H5qTj"),
})

ifi.misc.indexToggle = ifi.misc.indexSection:Toggle({
Name = _d("JRhAAFcaWwUEWQ"),
Default = false,
Callback = function(pwz)
ifi.misc.util.indexOn = pwz
ifi.misc.util.indexAt = 0

ifi.misc.util.indexAsked = nil
end,
}, _d("BRhAACgaWwUEWTBF"))

ifi.misc.indexSection:Button({
Name = _d("JwFVBhpZWQsa"),
Callback = function()
local taj = ifi.misc.util

taj.indexAt = 0
taj.indexAsked = nil

if not taj.claimIndex() then
nnc:Notify({
Title = _d("JwxGC1cwWQAITA"),
Description = _d("KgIUAh4VUhcZWwESWV4XTUYKFh1ORBlbTxQVVg0AGg"),
Lifetime = 5,
})
end
end,
})

ifi.misc.claimSection = ifi.misc.tab:Section({
Side = _d("KAhSGw"),
})

ifi.misc.claimSection:Header({
Name = _d("JQ5cBhIPUgkIWhsEWRFEPEEKBA1ERJ2r4PE"),
})

ifi.misc.achToggle = ifi.misc.claimSection:Toggle({
Name = _d("JRhAAFcaWwUEWU8WGl8NCEIKGhxZEB4"),
Default = false,
Callback = function(ulfl)
ifi.misc.util.achOn = ulfl
ifi.misc.util.achAt = 0

if ulfl and lg.RequestAchievements then
pcall(function()
lg.RequestAchievements:FireServer()
end)
end
end,
}, _d("BRhAACgaWwUEWTAWGl8NCEIKGhxZEB4"))

ifi.misc.questToggle = ifi.misc.claimSection:Toggle({
Name = _d("JRhAAFcaWwUEWU8GDFIXGUc"),
Default = false,
Callback = function(qint)
ifi.misc.util.questOn = qint
ifi.misc.util.questAt = 0
ifi.misc.util.questAskedAt = 0
ifi.misc.util.weeklyAskedAt = 0

if qint then
ifi.misc.util.askQuests()
end
end,
}, _d("BRhAACgaWwUEWTAGDFIXGUc"))

ifi.misc.claimSection:Button({
Name = _d("JwFVBhpZVggBFAEYDg"),
Callback = function()
local srsk = ifi.misc.util

srsk.achAt = 0
srsk.questAt = 0

local gza = srsk.claimAchievement()
local fv = srsk.claimQuest()

if not (gza or fv) then
nnc:Notify({
Title = _d("JQ5cBhIPUgkIWhsEWRFEPEEKBA1E"),
Description = _d("KgJABx4XUEQER08FHFYAFBQbGFlUCAxdAlk"),
Lifetime = 5,
})
end
end,
})

ifi.misc.packSection = ifi.misc.tab:Section({
Side = _d("KAhSGw"),
})

ifi.misc.packSection:Header({
Name = _d("JwxGC1cpVgcGR0+H5rnQ"),
})

ifi.misc.packSection:Paragraph({
Header = _d("MBpbTwQVWBAe"),
Body = _d("NARXBARZVhQdWBZXFlkIFBQYHxxZRBRbGlcJRQEeR082CUcIFBQfFhpcF0EUDRIaVhEeUU8DEVJEHkMGAxpfRBpVAxwKFxACFBsfHBcJCEYMHxhZEEM"),
})

local xndf = {}
local nehn = {}

for kyfn, afy in ipairs(ifi.misc.util.packCatalog()) do
table.insert(xndf, afy.name)
nehn[afy.name] = afy.id
end

ifi.misc.packSlotOne = nil
ifi.misc.packSlotTwo = nil

ifi.misc.packDropdownOne = ifi.misc.packSection:Dropdown({
Name = _d("NwFbG1dI"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = xndf,
Callback = function(ytx)
local ge = type(ytx) == _d("EAxWAxI") and ytx[1] or ytx

ifi.misc.packSlotOne = nehn[tostring(ge)]
end,
}, _d("FwFbGyhI"))

ifi.misc.packDropdownTwo = ifi.misc.packSection:Dropdown({
Name = _d("NwFbG1dL"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = xndf,
Callback = function(xob)
local ygc = type(xob) == _d("EAxWAxI") and xob[1] or xob

ifi.misc.packSlotTwo = nehn[tostring(ygc)]
end,
}, _d("FwFbGyhL"))

ifi.misc.packSection:Button({
Name = _d("JR1EAw5ZRwUOXxw"),
Callback = function()
local hqi = ifi.misc.util
local tenu = ifi.misc.packSlotOne
local zje = ifi.misc.packSlotTwo

if not tenu then
nnc:Notify({
Title = _d("JwxGC1cpVgcGRw"),
Description = _d("NARXBFcYFxQMVwRXH1gWTUcDGA0XVU1SBgUKQ0o"),
Lifetime = 5,
})

return
end

local pqc, ud = hqi.applyPacks(tenu, zje)

if not pqc then
nnc:Dialog({
Title = _d("JwxGC1cpVgcGRw"),
Description = ud,
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})
end
end,
})

ifi.misc.cards = {
rarityLabels = { _d("JQFY"), _d("KgJGAhYV"), _d("IwJYCw"), _d("NgxdARUWQA"), _d("MQNdGRILRAUB") },
borderOf = { Normal = 1, Gold = 2, Rainbow = 3, Universal = 4 },
mergeOn = false,
deconOn = false,
mergeWanted = {},
deconWanted = {},
mergeAt = 0,
deconAt = 0,
mergeDone = _d("KgJABx4XUEQeUQEDWU4BGQ"),
deconDone = _d("KgJABx4XUEQeUQEDWU4BGQ"),

inFlight = false,

interval = 3600,
manualGap = 20,
manualAt = 0,

protectedPrefixes = { weather = true, boss = true, raid = true, wb = true, fish = true, hw = true, event = true },

deconExceptions = { weather_sayaka = true, weather_caesar = true },

deconConfirmed = false,
burnAskedAt = 0,
}

function ifi.misc.cards.isProtected(ons, fbz)
local mpmk = ifi.misc.cards
local gfwb = tostring(ons or _d(""))
local mtkr = gfwb:match(_d("OkVvDloDB0lUaUReJg"))

if not (mtkr and mpmk.protectedPrefixes[mtkr]) then
return false
end

return not (mpmk.deconExceptions[gfwb] and fbz == 2)
end

function ifi.misc.cards.burnAllowed(islc)
local ykt = ifi.misc.cards
local txv = ykt.wantedFor(_d("AAhXABkuVgoZUQs"))

if not (txv == nil or txv[3] or txv[4]) then
ykt.deconConfirmed = false

return true
end

if ykt.deconConfirmed then
return true
end

if islc then
return false
end

if os.clock() < (ykt.burnAskedAt or 0) then
return false
end

ykt.burnAskedAt = os.clock() + 20

nnc:Dialog({
Title = _d("JhhGAVcrVg0DVgAAWVgWTWEBHg9SFh5VA1caVhYJR1A"),
Description = _d("JRhAAFcdUgcCWhwDC0IHGRQcEhdTF01RGRILTkQOWx8OWV4KTUAHEllaBRlXBx4XUEQfWxgEWVYKCRQMFhdZCxkUDRJZQgoJWwESVxc")
.. _d("MwhVGx8cRUhNVgAEChtEH1UGE1lVCx5HQ1cOWBYBUE8VFkQXQRQJHgpfDQNTQ1cxVggBWxgSHFlEDFoLVxxBAQNATxQYRQAeFA4FHBcMCFgLVxtWBwYUCh4NXwEfFBgWABk"),
Buttons = {
{
Name = _d("JhhGAVcNXwEA"),
Callback = function()
ykt.deconConfirmed = true
ykt.deconAt = 0
ykt.manualAt = 0

pcall(function()
ifi.misc.deconToggle:UpdateState(true)
end)
end,
},
{
Name = _d("JwxaDBIV"),
Callback = function()
pcall(function()
ifi.misc.deconToggle:UpdateState(false)
end)
end,
},
},
})

return false
end

function ifi.misc.cards.wantedFor(fss)
local ngwy = ifi.misc.cards[fss] or {}

if next(ngwy) == nil or ngwy[0] then
return nil
end

return ngwy
end

function ifi.misc.cards.npcFor(xl)
local oopp = workspace:FindFirstChild(_d("Kj13HA"))

if not oopp then
return nil
end

local aacv = xl and _d("AhhHCigXRwc") or _d("AAhXABkKQxYYVxsoF0cH")

for wxbz, ursw in ipairs(oopp:GetChildren()) do
if ursw:GetAttribute(_d("Kj13JhM")) == aacv then
return ursw
end
end

local fhoo = xl and { _d("KwJEBxsA"), _d("CwJEAw4c") } or { _d("NwVVGhsY"), _d("LAxCCiMOWCAMUBw") }

for orqh, zbaq in ipairs(oopp:GetChildren()) do
for mj, cm in ipairs(fhoo) do
if zbaq.Name == cm then
return zbaq
end
end
end

local vznr = xl and { _d("BwxGC1cUUhYKXQEQ"), _d("CwJEBxsA") } or { _d("AAhXABkKQxYYVxseFlk"), _d("FwVVGhsY") }

for vsb, jbww in ipairs(oopp:GetChildren()) do
for keyg, wrb in ipairs(jbww:GetDescendants()) do
if wrb:IsA(_d("MAhMGzsYVQEB")) and wrb.Text ~= _d("") then
local fwyj = wrb.Text:lower()

for xssh, fybp in ipairs(vznr) do
if fwyj:find(fybp, 1, true) then
return jbww
end
end

break
end
end
end

return nil
end

function ifi.misc.cards.rarityText(rvpx)
local romf = ifi.misc.cards.wantedFor(rvpx)

if not romf then
return _d("JQFY")
end

local ct = {}

for oucn, tof in pairs(ifi.misc.cards.borderOf) do
if romf[tof] then
table.insert(ct, oucn)
end
end

if #ct == 0 then
return _d("JQFY")
end

table.sort(ct)

return table.concat(ct, _d("SE0"))
end

function ifi.misc.cards.run(wlx, huuk, bio)
local qtc = ifi.misc.cards
local sjcc = ifi.misc.util
local iffe = wlx and _d("CQhGCBI4Qw") or _d("AAhXABk4Qw")

if bio then
if os.clock() < qtc[iffe] then
return false, _d("KgJATxMMUkQUURtZ")
end
elseif os.clock() < qtc.manualAt then
return false, _d("MwxdG1cYFwkCWQoZDRk")
end

if qtc.inFlight then
return false, _d("JQNbGx8cRUQOVR0TWUMWBERPHgoXBQFGChYdTkQfQQEZEFkDQw")
end

local vchx = svub.busy(1) and 1 or (svub.busy(2) and 2 or nil)
local ym = os.clock() - (ol.floorAt or 0) < 90
local fa = vchx ~= nil and svub.towerSlot() == vchx and ym

if vchx and not fa then
return false, _d("LQMUDlcbVhAZWApXVBcQBVFPAwteFE1DAAIVU0QIWgtXEENK")
end

if fu.battlePending and os.time() < (fu.battlePendingUntil or 0) then
return false, _d("JU1WDgMNWwFNXRxXCkMFH0AGGR4XSU1ABxJZQxYERE8AFkIICRQMFhdUAQEUBgNX")
end

if not wlx and not qtc.burnAllowed() then
return false, _d("JwJaCR4LWkQ/VQYZG1gTQmEBHg9SFh5VA1cfXhYeQEE")
end

local ulp = qtc.npcFor(wlx)

if not ulp then
return false, wlx
and _d("KwJEBxsAFw0eFAEYDRcNAxQbHxBERABVH1dUFxAfVRkSFRcQAhQHHhQXBQNQTwcLUhceFAYDWVYDDF0BWQ")
or _d("MAVRTxMcVAsDRxsFDFQQTXo/NFleF01aAANZXgpNQAceChcJDERPWllDFgxCChtZQwtNXRtXGFkATUQdEgpERARATxYeVg0DGg")
end

local glx = wlx and lg.OpenFuseDialog or lg.OpenDeconstructDialog
local jkz = wlx and lg.FuseCards or lg.DeconstructCards

if not (glx and jkz) then
return false, _d("MAVVG1cQREQDWxtXEFlEGVwGBFlQBQBRTwEcRRcEWwFZ")
end

local umzf = wlx and _d("CQhGCBIuVgoZUQs") or _d("AAhXABkuVgoZUQs")
local syn = qtc.wantedFor(umzf)

qtc.manualAt = os.clock() + qtc.manualGap

if bio then
qtc[iffe] = os.clock() + qtc.interval
end

qtc.inFlight = true

task.spawn(function()

local zvzt = nil

local function snkm(nye, qap)
if wlx then
qtc.mergeDone = nye
else
qtc.deconDone = nye
end

if qap and bio then
qtc[iffe] = os.clock() + 120
end

qtc.inFlight = false
end

local deor = sjcc.visit(ulp.Name)

if not deor then
snkm(_d("JwVVHRYaQwEfFAYEWVkLGRQdEhhTHU0ZTwUcQxYUXQEQWV4KTUAYGFlaDQNBGxIKGQ"), true)

return
end

task.wait(0.9)

local ysz = nil
local ydrz = glx.OnClientEvent:Connect(function(mpb)
if type(mpb) == _d("EAxWAxI") then
ysz = mpb
end
end)

for cuzf = 1, 3 do
pcall(function()
glx:FireServer()
end)

for bz = 1, 20 do
if ysz then
break
end

task.wait(0.3)
end

if ysz then
break
end

task.wait(1.5)
end

ydrz:Disconnect()
sjcc.returnTo(deor)

if type(ysz) ~= _d("EAxWAxI") then
snkm(_d("MAVRTxMQVggCU08TEFNEA1sbVxhZFxpRHVdUFxYIQB0OEFkDTV0BVw1AC01ZBhkMQwEeGg"), true)

return
end

local mxpm = {}

for qm, qkyy in ipairs(ysz) do
local og = tonumber(qkyy.borderLevel)
local wn = qkyy.cardId or qkyy.id

if og and (not syn or syn[og])
and (wlx or not ifi.misc.cards.isProtected(wn, og)) then
table.insert(mxpm, qkyy)
end
end

if #mxpm == 0 then

ifi.misc.cards.closeFrame(wlx)
snkm(_d("KgJABx4XUEQZW08EHFkATVIABVk") .. ifi.misc.cards.rarityText(umzf) .. _d("Sg"))

return
end

if huuk then

local hgxh = {}

for hyi, tuwi in ipairs(mxpm) do
if (tonumber(tuwi.count) or 0) >= huuk then
table.insert(hgxh, tuwi)
end
end

if #hgxh == 0 then
ifi.misc.cards.closeFrame(wlx)
snkm(_d("KgIU") .. ifi.misc.cards.rarityText(umzf) .. _d("RB9bGFcRVhdN") .. huuk .. _d("RA5bHx4cREQUURtZ"))

return
end

mxpm = hgxh

table.sort(mxpm, function(ulku, aca)
return (tonumber(ulku.count) or 0) < (tonumber(aca.count) or 0)
end)

local nh, vifb = {}, 0

for otos, zbzi in ipairs(mxpm) do
local ag = tonumber(zbzi.count) or 0

if #nh > 0 and vifb + ag > huuk then
break
end

table.insert(nh, zbzi)
vifb = vifb + ag
end

mxpm = nh
zvzt = vifb
end

local rnut = 0

ifi.misc.cards.closeFrame(wlx)

if wlx then
if not syn then

pcall(function()
jkz:FireServer(_d("BQFY"), nil)
end)

rnut = #mxpm
else
local vrh = {}

for buqg, boib in ipairs(mxpm) do
table.insert(vrh, { boib.cardId, tonumber(boib.borderLevel) })
end

pcall(function()
jkz:FireServer(_d("FwhYChQNUgAyVQMb"), vrh)
end)

rnut = #vrh
end
else
local qmwh = {}

for xucy, dsjl in ipairs(mxpm) do
if #qmwh >= 25 then
break
end

table.insert(qmwh, { dsjl.cardId, tonumber(dsjl.borderLevel), _d("BQFY") })
end

pcall(function()
jkz:FireServer(qmwh)
end)

rnut = #qmwh
end

snkm(_d("NwhaG1c") .. tostring(rnut) .. _d("RB9bGA") .. (rnut == 1 and _d("") or _d("Fw"))
.. _d("REU") .. ifi.misc.cards.rarityText(umzf) .. _d("TQ")
.. (zvzt and (_d("SE0") .. tostring(zvzt) .. _d("RA5VHRMK")) or _d("")))
end)

return true
end

function ifi.misc.cards.closeFrame(vdq)
pcall(function()
local qtmf = vdq and { _d("IhhHCjAMXg"), _d("IhhHCjELVgkI") } or { _d("IAhXABkKQxYYVxswDF4"), _d("IAhXABkKQxYYVxsxC1YJCA") }
local rrdf = require(pbw.ModuleScripts.MenuManager)
local fft = sfed:FindFirstChild(qtmf[1])
local ajot = fft and fft:FindFirstChild(qtmf[2])

if ajot then
rrdf.close(ajot)
end

if not vdq then
local yysi = fft and fft:FindFirstChild(_d("IAhXABkKQxYYVxslGEMBHnIdFhRS"))

if yysi then
rrdf.close(yysi)
else
yysi = sfed:FindFirstChild(_d("IAhXABkKQxYYVxslGEMBHnIdFhRS"))

if yysi then
rrdf.close(yysi)
end
end
end
end)
end

function ifi.misc.cards.refresh(mvxv)

local mhf = mvxv and ifi.misc.mergeParagraph or ifi.misc.deconParagraph

if not mhf then
return
end

pcall(function()
mhf:UpdateBody(mvxv
and ifi.misc.cards.mergeText()
or ifi.misc.cards.deconText())
end)
end

function ifi.misc.cards.mergeText()
local ipmi = ifi.misc.cards

return _d("NgxGBgMQUhdXFA") .. ipmi.rarityText(_d("CQhGCBIuVgoZUQs")) .. _d("bg") .. ipmi.mergeDone
end

function ifi.misc.cards.deconText()
local qe = ifi.misc.cards

return _d("NgxGBgMQUhdXFA") .. qe.rarityText(_d("AAhXABkuVgoZUQs")) .. _d("bg") .. qe.deconDone
.. _d("bjpRDgMRUhZBFA0YCkRITUYOHh0bRBpbHRsdFwYCRxxbWVENHlwGGR4bRCVVAxsWQAEIWk8WF1NECEIKGQ0XBwxGCwRZVhYIFAESD1IWTUcKGQ0Z")
end

ifi.misc.skill = {
on = false,
at = 0,
mainWanted = {},
raidWanted = {},

mainOrder = {},
raidOrder = {},
last = _d("KgJABx4XUEQPWxoQEUNEFFEb"),
shown = _d(""),
}

function ifi.misc.skill.branchMap(mtg)
local hqim = {}

for hao, bnve in ipairs(pf.Trees[mtg].branches) do
hqim[bnve.name] = bnve
end

return hqim
end

function ifi.misc.skill.branchLabels(vfv)
local lbm = {}

for zwk, bgtx in ipairs(pf.Trees[vfv].branches) do
table.insert(lbm, bgtx.name)
end

return lbm
end

function ifi.misc.skill.wantedFrom(jl, rifj)
local ztq = {}
local dhyc = ifi.misc.skill.branchMap(rifj)

if type(jl) == _d("EAxWAxI") then
for bjj, pie in pairs(jl) do
if pie and dhyc[tostring(bjj)] then
ztq[dhyc[tostring(bjj)].id] = true
end
end
end

return ztq
end

function ifi.misc.skill.ordered(fif, jtcp)
local jat = {}
local nozf = {}

for yjow, wta in ipairs(jtcp or {}) do
if fif[wta] then
table.insert(jat, wta)
nozf[wta] = true
end
end

for kzyz in pairs(fif) do
if not nozf[kzyz] then
table.insert(jat, kzyz)
end
end

return jat
end

function ifi.misc.skill.branchById(kpw)
local itgt = {}

for qzti, sify in ipairs(pf.Trees[kpw].branches) do
itgt[sify.id] = sify
end

return itgt
end

function ifi.misc.skill.upgrade()
local zqqh = ifi.misc.skill
local zkx = ifi.misc.util
local uk = zkx.currentProfile and zkx.currentProfile()

if type(uk) ~= _d("EAxWAxI") then
return false, _d("KgIUHwUWUQ0BUU8OHENK")
end

local osg = uk.skillTrees or {}
local haqz = { [1] = zqqh.mainOrder, [2] = zqqh.raidOrder }
local fmfm = nil

for veg, sxdn in ipairs(pf.Trees) do
local wvd = osg[sxdn.id]
local snhm = tonumber(uk[sxdn.pointsField or _d("FwZdAxspWA0DQBw")]) or 0
local qkad = ifi.misc.skill.branchById(veg)

if type(wvd) == _d("EAxWAxI") and snhm > 0 then
for kxue, ewh in ipairs(haqz[veg] or {}) do
local yyg = qkad[ewh]

if yyg and not fmfm then
local cmx = pf.getBranchLevel(osg, sxdn.id, yyg.id) or 0
local rhqx = cmx + 1

if rhqx <= yyg.levels then
local vjfa = yyg.id .. rhqx
local aodf = 1

if type(yyg.costs) == _d("EAxWAxI") and tonumber(yyg.costs[rhqx]) then
aodf = tonumber(yyg.costs[rhqx])
elseif tonumber(yyg.cost) then
aodf = tonumber(yyg.cost)
end

if aodf <= snhm and pf.isAvailable(osg, sxdn.id, vjfa) then
fmfm = { tree = sxdn.id, node = vjfa, name = yyg.name, level = rhqx }
end
end
end
end
end
end

if not fmfm then
return false, _d("KgJABx4XUEQZW08VDE5EFFEbWQ")
end

lg.BuySkillNode:FireServer(fmfm.tree, fmfm.node)

if zkx.askProfile then
pcall(zkx.askProfile)
end

zqqh.last = _d("JgJBCB8NFw") .. fmfm.name .. _d("RA") .. tostring(fmfm.level)

return true
end

function ifi.misc.skill.text()
local gbj = ifi.misc.skill
local kou = ifi.misc.util
local be = kou.currentProfile and kou.currentProfile()

if type(be) ~= _d("EAxWAxI") then
return _d("NAJdAQMKDURSPg") .. gbj.last
end

local hjr = be.skillTrees or {}
local fr = {}

local yla = { [1] = gbj.mainOrder, [2] = gbj.raidOrder }

for hvea, lz in ipairs(pf.Trees) do
local ujop = tonumber(be[lz.pointsField or _d("FwZdAxspWA0DQBw")]) or 0
local mwy = {}
local po = ifi.misc.skill.branchById(hvea)

for xbl, cak in ipairs(yla[hvea] or {}) do
local mto = po[cak]

if mto then
local iyda = pf.getBranchLevel(hjr, lz.id, mto.id) or 0
table.insert(mwy, mto.name .. _d("RA") .. tostring(iyda) .. _d("Sw") .. tostring(mto.levels))
end
end

fr[#fr + 1] = lz.name .. _d("Xk0") .. tostring(ujop) .. _d("RB1AHA")
.. (#mwy > 0 and (_d("REAU") .. table.concat(mwy, _d("SE0"))) or _d("REAUARgNXw0DU08HEFQPCFA"))
end

fr[#fr + 1] = gbj.last

return table.concat(fr, _d("bg"))
end

ifi.misc.mergeSection = ifi.misc.tab:Section({
Side = _d("KAhSGw"),
})

ifi.misc.mergeSection:Header({
Name = _d("KQhGCBJZx/vKmA"),
})

ifi.misc.mergeToggle = ifi.misc.mergeSection:Toggle({
Name = _d("JRhAAFcUUhYKUQ"),
Default = false,
Callback = function(ejhv)
local znzu = ifi.misc.cards

znzu.mergeOn = ejhv

znzu.mergeAt = (ejhv and ou.loading) and (os.clock() + znzu.interval) or 0
end,
}, _d("BRhAACgUUhYKUQ"))

ifi.misc.mergeDropdown = ifi.misc.mergeSection:Dropdown({
Name = _d("NgxGBgMQUhc"),
Search = false,
Multi = true,
Required = false,
Default = { _d("JQFY") },
Options = ifi.misc.cards.rarityLabels,
Callback = function(nky)
local eq = {}

if type(nky) == _d("EAxWAxI") then
for gd, yyhu in pairs(nky) do
if yyhu then
if gd == _d("JQFY") then
eq[0] = true
else
eq[ifi.misc.cards.borderOf[tostring(gd)]] = true
end
end
end
end

ifi.misc.cards.mergeWanted = eq
ifi.misc.cards.refresh(true)
end,
}, _d("FgxGBgMQUhc"))

ifi.misc.mergeSection:Button({
Name = _d("KQhGCBJZWQsa"),
Callback = function()
local xngp, jfxr = ifi.misc.cards.run(true)

if not xngp then
nnc:Notify({
Title = _d("KQhGCBI"),
Description = jfxr,
Lifetime = 6,
})
end
end,
})

ifi.misc.mergeSection:Button({
Name = _d("KQhGCBJZDlQ"),
Callback = function()

local pzjq, lav = ifi.misc.cards.run(true, 90)

if not pzjq then
nnc:Notify({
Title = _d("KQhGCBJZDlQ"),
Description = lav,
Lifetime = 6,
})
end
end,
})

ifi.misc.mergeParagraph = ifi.misc.mergeSection:Paragraph({
Header = _d("NxlVGwIK"),
Body = ifi.misc.cards.mergeText(),
})

ifi.misc.accSection = ifi.misc.tab:Section({
Side = _d("NgRTBwM"),
})

ifi.misc.accSection:Header({
Name = _d("JQ5XCgQKWBYEURxXiaj24w"),
})

ifi.misc.accToggle = ifi.misc.accSection:Toggle({
Name = _d("JRhAAFcbUhcZFA4UGlIXHlsdDg"),
Default = false,
Callback = function(hwgg)
ifi.misc.util.accOn = hwgg
ifi.misc.util.accAt = 0
end,
}, _d("BRhAACgbUhcZaw4UGlIXHlsdDg"))

ifi.misc.accBuyToggle = ifi.misc.accSection:Toggle({
Name = _d("JRhAAFcbQh1NVgoEDQ"),
Default = false,
Callback = function(pzdi)
ifi.misc.util.accBuyOn = pzdi
ifi.misc.util.accBuyAt = 0
ifi.misc.util.accAt = 0
end,
}, _d("BRhAACgbQh0yVgoEDQ"))

ifi.misc.accSection:Button({
Name = _d("JhhNTxUcRBA"),
Callback = function()
local rryz, kpyc = ifi.misc.util.buyBest()

if not rryz then
nnc:Notify({
Title = _d("JQ5XCgQKWBYEURw"),
Description = kpyc,
Lifetime = 6,
})
end
end,
})

ifi.misc.accSection:Button({
Name = _d("IRxBBgdZVQEeQA"),
Callback = function()
if not ifi.misc.util.equipBest() then
nnc:Notify({
Title = _d("JQ5XCgQKWBYEURw"),
Description = _d("KgJABx4XUEQPURsDHEVEBEdPGA5ZAQkUFhINGQ"),
Lifetime = 5,
})
end
end,
})

ifi.misc.accParagraph = ifi.misc.accSection:Paragraph({
Header = _d("NxlVGwIK"),
Body = ifi.misc.util.accText(),
})

ifi.misc.claimInfo = ifi.misc.tab:Section({
Side = _d("NgRTBwM"),
})

ifi.misc.claimInfo:Header({
Name = _d("KQRHDBIVWwUDUQACCg"),
})

ifi.misc.indexParagraph = ifi.misc.claimInfo:Paragraph({
Header = _d("JwxGC1cwWQAITA"),
Body = ifi.misc.util.indexText(),
})

ifi.misc.achParagraph = ifi.misc.claimInfo:Paragraph({
Header = _d("JQ5cBhIPUgkIWhsE"),
Body = ifi.misc.util.achText(),
})

ifi.misc.questParagraph = ifi.misc.claimInfo:Paragraph({
Header = _d("NRhRHAMK"),
Body = ifi.misc.util.questText(),
})

ifi.misc.packParagraph = ifi.misc.claimInfo:Paragraph({
Header = _d("NAxXBAQ"),
Body = ifi.misc.util.packText(),
})

ifi.misc.skillSection = ifi.misc.tab:Section({
Side = _d("NgRTBwM"),
})

ifi.misc.skillSection:Header({
Name = _d("NwZdAxtZYxYIUU+H5rvX"),
})

ifi.misc.skillToggle = ifi.misc.skillSection:Toggle({
Name = _d("JRhAAFcMRwMfVQsS"),
Default = false,
Callback = function(buj)
local bct = ifi.misc.skill

if buj and not (next(bct.mainWanted) or next(bct.raidWanted)) then
bct.on = false

pcall(function()
ifi.misc.skillToggle:UpdateState(false)
end)

nnc:Dialog({
Title = _d("NARXBFcYFwYfVQEUERcCBEYcAw"),
Description = _d("JwVbAAQcFwUZFAMSGEQQTVsBEllVFgxaDB9ZXgpNQAcSWXoFBFpPAwtSAU1bHVcrVg0JFBsFHFJECUYABx1YEwMUQlc")
.. _d("JRhAAFcMRwMfVQsSWVgKAU1PBAlSCglHTwcWXgoZR08AEVIWCBQWGAwXFAJdAQNZXhBD"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})

return
end

bct.on = buj
bct.at = 0
end,
}, _d("BRhAACgMRwMfVQsS"))

ifi.misc.skillMainDropdown = ifi.misc.skillSection:Dropdown({
Name = _d("KQxdAVcNRQEI"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = ifi.misc.skill.branchLabels(1),
Callback = function(suq)
local veag = ifi.misc.skill
local ospe = veag.wantedFrom(suq, 1)

veag.mainWanted = ospe
veag.mainOrder = veag.ordered(ospe, veag.mainOrder)
veag.shown = _d("")
end,
}, _d("CQxdASgNRQEI"))

ifi.misc.skillRaidDropdown = ifi.misc.skillSection:Dropdown({
Name = _d("NgxdC1cNRQEI"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = ifi.misc.skill.branchLabels(2),
Callback = function(bdn)
local pek = ifi.misc.skill
local kc = pek.wantedFrom(bdn, 2)

pek.raidWanted = kc
pek.raidOrder = pek.ordered(kc, pek.raidOrder)
pek.shown = _d("")
end,
}, _d("FgxdCygNRQEI"))

pcall(function()
ifi.misc.skillMainDropdown:UpdateSelection({})
end)

pcall(function()
ifi.misc.skillRaidDropdown:UpdateSelection({})
end)

ifi.misc.skillParagraph = ifi.misc.skillSection:Paragraph({
Header = _d("NxlVGwIK"),
Body = ifi.misc.skill.text(),
})

task.spawn(function()
local cx = ifi.misc.util

while hro() do
if cx.indexOn or cx.achOn or cx.questOn or cx.accOn or cx.accBuyOn then
cx.currentProfile()
end

if cx.indexOn then
cx.claimIndex()
end

if cx.achOn then
cx.claimAchievement()
end

if cx.questOn then

if os.clock() - cx.questAskedAt > 20 or os.clock() - cx.weeklyAskedAt > 20 then
cx.askQuests()
end

cx.claimQuest()
end

if cx.accOn and os.clock() >= cx.accAt then
cx.accAt = os.clock() + 3
cx.equipBest()
end

local kew = ifi.misc.cards

if not kew.inFlight then
if kew.mergeOn and os.clock() >= kew.mergeAt then
kew.run(true, nil, true)
elseif kew.deconOn and os.clock() >= kew.deconAt then
kew.run(false, nil, true)
end
end

if kew.mergeDone ~= kew.mergeShown then
kew.mergeShown = kew.mergeDone

pcall(function()
ifi.misc.mergeParagraph:UpdateBody(ifi.misc.cards.mergeText())
end)
end

if kew.deconDone ~= kew.deconShown then
kew.deconShown = kew.deconDone

pcall(function()
ifi.misc.deconParagraph:UpdateBody(ifi.misc.cards.deconText())
end)
end

local sib = ifi.misc.skill

if sib.on and os.clock() >= sib.at then

sib.at = os.clock() + 2
sib.upgrade()
end

local cadl = ifi.misc.skill.text()

if sib.shown ~= cadl then
sib.shown = cadl

pcall(function()
ifi.misc.skillParagraph:UpdateBody(cadl)
end)
end

if cx.accBuyOn and os.clock() >= cx.accBuyAt then

local mlep = cx.buyBest()

cx.accBuyAt = os.clock() + (mlep and 45 or 10)
end

local cygf = {
{ key = _d("DQNQCg8"), paragraph = ifi.misc.indexParagraph, value = cx.indexText() },
{ key = _d("BQ5c"), paragraph = ifi.misc.achParagraph, value = cx.achText() },
{ key = _d("FRhRHAM"), paragraph = ifi.misc.questParagraph, value = cx.questText() },
{ key = _d("FAxXBA"), paragraph = ifi.misc.packParagraph, value = cx.packText() },
{ key = _d("BQ5X"), paragraph = ifi.misc.accParagraph, value = cx.accText() },
}

for jpv, ypm in ipairs(cygf) do
if ypm.paragraph and cx.shown[ypm.key] ~= ypm.value then
cx.shown[ypm.key] = ypm.value

pcall(function()
ypm.paragraph:UpdateBody(ypm.value)
end)
end
end

task.wait(0.75)
end
end)

local cg = rz:Section({
Side = _d("NgRTBwM"),
})

cg:Paragraph({
Header = _d("IgRHBx4XUA"),
Body = _d("JRhAAFc/XhcFFAoGDF4UHhQWGAxFRB9bC1tZUQUOURxXDV8BTUMOAxxFRAxaC1caVhcZR08YFxcNGUdPGA5ZSE1ABxIXFxYIUQMEWUAMCFpPBBZaARlcBhkeFwYEQAoEVxcwPRQbGFl1BRQUHwIVWxdNTQACWVUFDl9PAxYXEAVRTxUYTkQLXR0EDRtEDFoLVw1fAU1AGBhZcwEIRAoEDRczDEAKBVlEEwRADB8cREQFWwMTWUMMCBQcBxZDRBRbGlcOUhYIFBwDGFkABFoIVxZZRBpcChlZTgsYFA4FFFIATUAHEhQXSU1ABxJZUwEIRAoEDRcWBFoIVxpWFh9dCgRZQwwIFA0eHlABHkBPGwxUD01WABkMREpnPjsfHBcXBVsfVxtCHR4UDhkdFwEcQQYHChcWAlAcVxhZAE1WDh4NFxMEQAdXDV8BTVcOBA1ERBRbGlcRVhIIGk81DE4NA1NPGRxSAB4UGx8cFwcCQQEDHEVEQBQNGA1fRA5bAhJZURYCWU8DEVJEK10cHxxFCQxaQX1zdAUZVwcSChcPCFEfBFlWRB9BARkQWQNNQA4bFU5ED01PHg1SCU1VARNZRAUbURxXEENITUcAVw1fAU1AAAMYW0QOVR0FEFIXTVsZEgsXBghAGBIcWUQeURwEEFgKHho"),
})

local ix = rz:Section({
Side = _d("NgRTBwM"),
})

ix:Header({
Name = _d("JwxADB8cRA"),
})

local awp

awp = ix:Paragraph({
Header = _d("MwVVG1cAWBFNVw4CHl8Q"),
Body = tkzv(),
})

local dwhr = rz:Section({
Side = _d("NgRTBwM"),
})

dwhr:Header({
Name = _d("LR5YDhkdFxcFWx8"),
})

dwhr:Toggle({
Name = _d("JRhAAFcaRQULQEAVDE5EBEcDFhdTRB9bCw"),
Default = false,
Callback = function(suu)
xv.island.autoRod = suu
xv.islandAt = 0
end,
}, _d("DR5YDhkdaAUYQAAoC1gA"))

dwhr:Toggle({
Name = _d("IRxBBgdZXhcBVQETWUULCQ"),
Default = false,
Callback = function(kj)
xv.island.equipRod = kj
xv.islandAt = 0
end,
}, _d("DR5YDhkdaAEcQQYHJkULCQ"))

dwhr:Toggle({
Name = _d("JRhAAFcaRQULQE8WGlQBHkcABQA"),
Default = false,
Callback = function(cn)
xv.island.autoAcc = cn
xv.islandAt = 0
end,
}, _d("DR5YDhkdaAUYQAAoGFQHCEccGAtO"))

dwhr:Toggle({
Name = _d("IRxBBgdZVgcOURwEFkUd"),
Default = false,
Callback = function(dnu)
xv.island.equipAcc = dnu
xv.islandAt = 0
end,
}, _d("DR5YDhkdaAEcQQYHJlYHDlEcBBZFHQ"))

local oss

oss = dwhr:Paragraph({
Header = _d("LR5YDhkdFwMIVR0"),
Body = xv.shopIsland.text(),
})

local lhtx = rz:Section({
Side = _d("KAhSGw"),
})

lhtx:Header({
Name = _d("NghWBgUNXw"),
})

xv.rebirthToggle = lhtx:Toggle({
Name = _d("JRhAAFcLUgYERhsf"),
Default = false,
Callback = function(zovu)
xv.autoRebirth = zovu
end,
}, _d("BRhAACgLUgYERhsf"))

xv.rebirthParagraph = lhtx:Paragraph({
Header = _d("NxlVGwIK"),
Body = xv.rebirthText(),
})

lhtx:Button({
Name = _d("MD0UGxhZXhcBVQET"),
Callback = function()
if not xv.gotoIsland() then
nnc:Notify({
Title = _d("JQ9VARMWWQEJFCYEFVYKCQ"),
Description = _d("JwVVHRYaQwEfFAYEWVkLGRQdEhhTHU1NCgNZGkQZRhZXGFAFBFpPHhcXBU1ZABocWRBD"),
Lifetime = 5,
})
end
end,
})

local vka

vka = lhtx:Toggle({
Name = _d("JRhAAFcwRAgMWgtXMVYWCVcABRw"),
Default = false,
Callback = function(fz)
dj.island = fz
dj.pending = false
dj.pendingUntil = 0
dj.paused = false
dj.gaveUp = false
dj.stoodDown = false
dj.manualPause = false

if not fz then
return
end

if svub.otherTowerOn(_d("DAxGCxQWRQE")) then
dj.island = false

pcall(function()
vka:UpdateState(false)
end)

pcall(function()
nnc:Dialog({
Title = _d("JRhAAFcwRAgMWgtXMVYWCVcABRwXCwtS"),
Description = _d("MAVRTz8YWwgCQwoSFxcQAkMKBVleF01VAwUcVgAUFB0CF1kNA1NDVxhZAE1DBgMRFwsDUU8EFVgQTUAHEllQBQBRTxgXWx1NRhoZChcLA1FPHhdRDQNdGxJZRQsCWU8WDRcFTUAGGhwZRDlBHRlZQwwMQE8YH1FITVsdVw1CFgMUABlZdhEZW08kFVgQTUcAVxxWBwUUGxgOUhZNUwoDChcNGUdPGA5ZRB5YAANX"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})
end)

return
end

if svub.enabled and svub.hardcoreSlot() == nil then
dj.island = false

pcall(function()
vka:UpdateState(false)
end)

pcall(function()
nnc:Dialog({
Title = _d("JRhAAFcwRAgMWgtXMVYWCVcABRwXCwtS"),
Description = _d("KgIUHBsWQ0QER08EHENEGVtPFllDCxpRHVtZVgoJFBsfHBcDDFkKVxZZCBQUHAMYRRAeFA5XDVgTCEZPBQxZRAtGABpZVkQZWxgSCxcXAVsbWVlkARkUABkcFxACFCYEFVYKCRQHFgtTBwJGCltZWBZNQBoFFxclGEAAVypbCxkUABEfGQ"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})
end)

return
end

if not dj.data then
dj.island = false

pcall(function()
vka:UpdateState(false)
end)

pcall(function()
nnc:Dialog({
Title = _d("JRhAAFcwRAgMWgtXMVYWCVcABRwXCwtS"),
Description = _d("MAVdHFcbQg0BUE8fGEREA1tPPxhFAA5bHRItWBMIRisWDVZITUcAVw1fAU1AAAAcRUMeFBwDGFABHhQMFhdZCxkUDRJZRQEMUE8WF1NEDBQdAhcXBwxaARgNFwYIFBwDGEUQCFBB"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})
end)

return
end

local mvu = dj.remotes.request

if mvu then
pcall(function()
mvu:FireServer()
end)
end
end,
}, _d("BRhAACgQRAgMWgsoEVYWCVcABRw"))

dj.islandToggle = vka

dj.islandParagraph = lhtx:Paragraph({
Header = _d("JhhSCQQ"),
Body = dj.buffText(),
})

lhtx:Button({
Name = _d("NAxBHBJZfhcBVQETWX8FH1AMGAtS"),
Callback = function()
if dj.pauseRun then
dj.pauseRun()
end
end,
})

lhtx:Button({
Name = _d("IwRCClcsR0QkRwMWF1NEJVUdExpYFgg"),
Callback = function()
if dj.giveUpRun then
dj.giveUpRun()
end
end,
})

local pda = rz:Section({
Side = _d("KAhSGw"),
})

pda:Header({
Name = _d("IgRHBx4XUEQeXAAH"),
})

pda:Toggle({
Name = _d("JRhAAFcbQh1NVgoEDRcWAlA"),
Default = false,
Callback = function(hzy)
xv.shop.autoBuyRod = hzy
xv.shopAt = 0
end,
}, _d("BRhAACgbQh0yVgoEDWgWAlA"))

pda:Toggle({
Name = _d("JRhAAFcbQh1NVgoEDRcGDF0b"),
Default = false,
Callback = function(tv)
xv.shop.autoBuyBait = tv
xv.shopAt = 0
end,
}, _d("BRhAACgbQh0yVgoEDWgGDF0b"))

pda:Toggle({
Name = _d("IRxBBgdZVQEeQE8FFlM"),
Default = false,
Callback = function(lypl)
xv.shop.equipRod = lypl
xv.shopAt = 0
end,
}, _d("ARxBBgcmVQEeQDAFFlM"))

pda:Toggle({
Name = _d("IRxBBgdZVQEeQE8VGF4Q"),
Default = false,
Callback = function(frm)
xv.shop.equipBait = frm
xv.shopAt = 0
end,
}, _d("ARxBBgcmVQEeQDAVGF4Q"))

local vonn

vonn = pda:Paragraph({
Header = _d("JghHG1cAWBFNVw4ZWVIVGF0f"),
Body = ncx(),
})
task.spawn(function()
local zwxk = jxy()
local oo = tkzv()
local oyk = ncx()
local kwi = xv.shopIsland.text()

while hro() do
local vs = jxy()

if vs ~= zwxk then
zwxk = vs
pcall(function()
tpq:UpdateBody(vs)
end)
end

local sdew = tkzv()

if sdew ~= oo then
oo = sdew
pcall(function()
awp:UpdateBody(sdew)
end)
end

local uffy = ncx()

if uffy ~= oyk then
oyk = uffy
pcall(function()
vonn:UpdateBody(uffy)
end)
end

local zlv = xv.shopIsland.text()

if zlv ~= kwi then
kwi = zlv
pcall(function()
oss:UpdateBody(zlv)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while hro() do

if zwtu() and os.clock() >= (xv.shopAt or 0)
and os.clock() >= (xv.islandTripUntil or 0) then
xv.shopAt = os.clock() + 1
pcall(jul)
end

if xv.shopIsland.active() and os.clock() >= (xv.islandAt or 0)
and os.clock() >= math.max(xv.shopHoldUntil or 0, xv.tpHoldUntil or 0) then
xv.islandAt = os.clock() + 2
pcall(xv.shopIsland.run)
end

task.wait(1)
end
end)

kme:Select()

local wln = kme:Section({
Side = _d("KAhSGw"),
})

local jlh = kme:Section({
Side = _d("NgRTBwM"),
})

local ig = wln:Paragraph({
Header = _d("NxlVGwIK"),
Body = uqnj(),
})

wln:Divider()

fu.npcToggle = wln:Toggle({
Name = _d("JRhAAFc3Zyc"),
Default = false,
Callback = function(acpa)

if acpa and not fu.story and #gp() == 0 then
pcall(function()
fu.npcToggle:UpdateState(false)
end)

nnc:Dialog({
Title = _d("JRhAAFc3ZydNWgoSHUREDBQbFgtQARk"),
Description = _d("NARXBFcYQ0QBUQ4EDRcLA1FPOSl0RAtGABpZQwwIFBgYC1sAHhQNEhVYE0EUAAVZQxEfWk8YFxclGEAAVzpYCR1YCgMcFzcZWx0OVxcwBVEdElleF01aAAMRXgoKFBsYWVENClwbVwBSEEM"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})

return
end

fu.enabled = acpa
end,
}, _d("BRhAACgXRwc"))

wln:Toggle({
Name = _d("MwxYBFcNWEQjZCw"),
Default = false,
Callback = function(jvaz)
fu.walkToNpc = jvaz
end,
}, _d("EwxYBCgNWDsDRAw"))

wln:Dropdown({
Name = _d("IARSCR4aQggZTQ"),
Search = false,
Multi = true,
Required = false,
Default = { _d("KgJGAhYV") },
Options = tcgx,
Callback = function(bfc)
local blnt = {}

if type(bfc) == _d("EAxWAxI") then
for kddx, pxr in ipairs(tcgx) do
if bfc[pxr] then
table.insert(blnt, zatr[pxr])
end
end
end

if #blnt == 0 then
blnt = { _d("CgJGAhYV") }
end

fu.difficulties = blnt
end,
}, _d("AARSCR4aQggZTQ"))

wln:Toggle({
Name = _d("JRhAAFcrWAsARw"),
Default = false,
Callback = function(mqy)
nfhp.enabled = mqy
nfhp.inBattle = false
nfhp.pending = false
end,
}, _d("BRhAACgLWAsARw"))

local oid = kme:Section({
Side = _d("KAhSGw"),
})

oid:Header({
Name = _d("NwFbGw"),
})

oid:Paragraph({
Header = _d("LAJDTwMRUkQeWAADChcTAkYE"),
Body = _d("NwFbG1dIF0lNfQEREFkNGU1PIxZAAR8URxkWRQkMWE8YCxcqBFMHAxRWFggdTxgLFywMWAMYDlIBAxQ7GA5SFkEUHxsMREQjZCxXG1YQGVgKBFlADAhaTwQVWBBNBk8eChcGGEcWWXM9NwFbG1dLF0lNej80ChtEH1UGEwobRB9bABoKG0QkRwMWF1NEJVUdExpYFggaZX07WBAFFBwbFkMXTVsBVzdnJ01WDgMNWwEeDk8DDlhEI2QsVx9SBRlBHRIKFwUZFAAZGlJITVUBE1lWRB9VBhNZVQseR08SGFQMQz5lIw5YRBlbGBILFxYYWhxXEEREGVwKVxZZCBQUHRIfQhcIUE8HGF4WTRlPPgpbBQNQTz8YRQAOWx0SWVgKTVYAAxEXFwFbGwRZXhdNWwESWUURAxQOBBJSAE1SAAVZQxMEVwpZcz03AVsbBFlYAgsOTxgXUkQeWAADVRcQAkMKBQoXEAxfClcNQhYDR0E"),
})

svub.toggle = oid:Toggle({
Name = _d("JRhAAFcqWwsZ"),
Default = false,
Callback = function(dtj)
if dtj and svub.role[1] == svub.role[2] and svub.role[1] ~= _d("Ch1X") then
svub.enabled = false

pcall(function()
svub.toggle:UpdateState(false)
end)

nnc:Dialog({
Title = _d("JRhAAFcqWwsZ"),
Description = _d("NwFbG1dIFwUDUE8kFVgQTQZPFgtSRA9bGx9Z") .. svub.roleLabel(1) .. _d("Sk1gBxYNFw0eFAAZHBcWGFpPFgpcAQkUCRgLFxAaXQwSVRcXAhQAGRwXCwsUGx8cFxAaW08EFVgQHhQHFgoXEAIUDRJZRAsAURsfEFkDTVEDBBwZ"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})

return
end

svub.enabled = dtj

if dtj then
svub.hasSlot2 = svub.detectSlot2()

if svub.hasSlot2 == false then
nnc:Dialog({
Title = _d("JRhAAFcqWwsZ"),
Description = _d("NwFbG1dLFwgCWwQEWVsLDl8KE1kaRARATxkcUgAeFBsfHBcgGFUDVztWEBlYClcqWwsZFAgWFFIUDEccW1lYFk19AREQWQ0ZUU8lFlgJTQZaR1lUCAhVHRIdG0QPUQkYC1JEGVwKVwpSBwJaC1cKWwsZFAwWFxcGDEAbGxwZRD9bGgMQWQNNRxsWAEREAlpPBBVYEE0FTwIXQw0BFBsfHFlK"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})
end
end
end,
}, _d("BRhAACgKWwsZ"))

function svub.applyRoles()
if not svub.enabled then
return
end

if svub.role[1] == svub.role[2] and svub.role[1] ~= _d("Ch1X") then
svub.enabled = false

pcall(function()
svub.toggle:UpdateState(false)
end)

pcall(function()
nnc:Dialog({
Title = _d("JRhAAFcqWwsZFAARHw"),
Description = _d("NwFbG1dIFwUDUE8kFVgQTQZPFgtSRA9bGx9Z") .. svub.roleLabel(1) .. _d("Sk1gBxYNFw0eFAAZHBcWGFpPFgpcAQkUCRgLFxAaXQwSVRcFA1BPHg0XBwxaARgNFxAMXwpXDUALTUcDGA1ESk1nCgNZWAoIFBwbFkNEGVtPBBZaARlcBhkeFwEBRwpZ"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})
end)

return
end

local ia = {}

if svub.towerSlot() ~= 1 and ol.enabled then
ol.enabled = false
table.insert(ia, _d("JRhAAFctWBMIRg"))

pcall(function()
ol.ui:UpdateState(false)
end)
end

if svub.hardcoreSlot() == nil and dj.island then
dj.island = false
table.insert(ia, _d("JRhAAFcwRAgMWgtXMVYWCVcABRw"))

pcall(function()
dj.islandToggle:UpdateState(false)
end)
end

if svub.halloweenSlot() == nil and nbpq.run.enabled then
nbpq.run.enabled = false
table.insert(ia, _d("JRhAAFcxVggBWxgSHFlEOVsYEgs"))

pcall(function()
nbpq.toggle:UpdateState(false)
end)
end

if #ia > 0 then
pcall(function()
nnc:Dialog({
Title = table.concat(ia, _d("RAxaC1c")) .. _d("RAJSCQ"),
Description = _d("KgIUHBsWQ0QER08EHENEGVtPAxFWEE1AAAAcRUQMWhZXFFgWCBhPBBYXDRkUBxYdFwoCQwcSC1JEGVtPBQxZSk1zBgEcFw0ZFA5XClsLGRQOEBheCkEUAAVZQxEfWk82DEMLTWcDGA0XCwtSQQ"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})
end)
end
end

svub.oneDropdown = oid:Dropdown({
Name = _d("NwFbG1dI"),
Search = false,
Multi = false,
Required = false,

Default = 1,
Options = svub.optionsFor[1],
Callback = function(luf)
local new = type(luf) == _d("EAxWAxI") and luf[1] or luf

if type(new) == _d("FxlGBhke") and svub.roleIds[new] then
svub.role[1] = svub.roleIds[new]
svub.picked[1] = new
end

pcall(function()
svub.oneDropdown:UpdateName(_d("NwFbG1dIF4btlk8") .. svub.roleLabel(1))
end)

if svub.applyRoles then
svub.applyRoles()
end
end,
}, _d("FwFbGyhIaFY"))

svub.twoDropdown = oid:Dropdown({
Name = _d("NwFbG1dL"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = svub.optionsFor[2],
Callback = function(pnm)
local anik = type(pnm) == _d("EAxWAxI") and pnm[1] or pnm

if type(anik) == _d("FxlGBhke") and svub.roleIds[anik] then
svub.role[2] = svub.roleIds[anik]
svub.picked[2] = anik
end

pcall(function()
svub.twoDropdown:UpdateName(_d("NwFbG1dLF4btlk8") .. svub.roleLabel(2))
end)

if svub.applyRoles then
svub.applyRoles()
end
end,
}, _d("FwFbGyhLaFY"))

pcall(function()
svub.oneDropdown:UpdateSelection(_d("MAJDCgU"))
end)

pcall(function()
svub.twoDropdown:UpdateSelection(_d("Kj13TxUYQxABURw"))
end)

getgenv().ACBXSlot = svub

local ikp = kme:Section({
Side = _d("KAhSGw"),
})

ikp:Header({
Name = _d("NgxdC1cbWBce"),
})

ikp:Toggle({
Name = _d("JRhAAFcrVg0JFC0YCkQ"),
Default = false,
Callback = function(ufuf)
ifi.enabled = ufuf
ifi.pending = {}
ifi.pendingUntil = {}

if ufuf then
ifi.cleared = {}
end
end,
}, _d("BRhAACgLVg0Jaw0YCkQ"))

ikp:Toggle({
Name = _d("JRhAAFcuVggGFBsYWWUFBFBPNRZEFw"),
Default = false,
Callback = function(gqu)
ifi.walkToBoss = gqu
end,
}, _d("BRhAACgOVggGaxsYJkUFBFAwFRZEFw"))

local xiwo
xiwo = ikp:Slider({
Name = _d("MwxYBFcqRwEIUA"),
Minimum = 0,
Maximum = 72,
Default = 18,
Precision = 0,
Callback = function(irj)
local dzg = math.floor(irj + 0.5)
ifi.walkSpeed = dzg

if xiwo and dzg ~= irj then
xiwo:UpdateValue(dzg)
end
end,
}, _d("EwxYBCgKRwEIUA"))

ikp:Dropdown({
Name = _d("NgxdC1c9XgILXQwCFUMd"),
Search = false,
Multi = true,
Required = false,
Default = { _d("KgJGAhYV") },
Options = ovl,
Callback = function(fjq)
local rhb = {}

if type(fjq) == _d("EAxWAxI") then
for ywe, kn in ipairs(ovl) do
if fjq[kn] then
table.insert(rhb, qaj[kn])
end
end
end

if #rhb == 0 then
rhb = { _d("CgJGAhYV") }
end

ifi.difficulties = rhb
end,
}, _d("FgxdCygdXgILXQwCFUMd"))

function ifi.pickedIds(umta)
local lsrc = {}

if type(umta) == _d("EAxWAxI") then
for vusj, wr in ipairs(tnyv) do
if umta[wr] and igsz[wr] then
table.insert(lsrc, igsz[wr])
end
end
elseif type(umta) == _d("FxlGBhke") and igsz[umta] then
lsrc = { igsz[umta] }
end

return lsrc
end

ikp:Dropdown({
Name = _d("NgxdC1c7WBce"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = tnyv,
Callback = function(uam)
ifi.picks[1] = ifi.pickedIds(uam)
ifi.cursor[1] = 1
ifi.losses[1] = {}
end,
}, _d("FgxdCygbWBce"))

ifi.boss2Dropdown = ikp:Dropdown({
Name = _d("NgxdC1c7WBceFEckFVgQTQZG"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = tnyv,
Callback = function(bzch)
ifi.picks[2] = ifi.pickedIds(bzch)
ifi.cursor[2] = 1
ifi.losses[2] = {}
end,
}, _d("FgxdCygbWBceaxwbFkM7Xw"))

pcall(function()
ifi.boss2Dropdown:SetVisibility(false)
end)

task.spawn(function()
local hld = nil

while hro() do
local bbo = svub.splitNpc()

if bbo ~= hld then
hld = bbo

local nhse = ifi.boss2Dropdown

if nhse then
pcall(function()
nhse:SetVisibility(bbo)
end)
end
end

task.wait(0.5)
end
end)

jlh:Paragraph({
Header = _d("JRhAAFc/XgMFQA"),
Body = _d("NwhYChQNFwsDUU8YCxcJAkYKVzdnJx4UCQUWWkQZXApXDlgWAVAcVxtSCAJDQQ"),
})

for wbu, ekvd in ipairs(ttua) do
jlh:Dropdown({
Name = ekvd.name,
Search = true,
Multi = true,
Required = false,
Default = {},
Options = ekvd.options,
Callback = function(xp)
local dvf = {}

if type(xp) == _d("EAxWAxI") then
if xp.All then
for obg, rkqi in ipairs(ekvd.ids) do
table.insert(dvf, rkqi)
end
else
for wtxw, ospw in ipairs(ekvd.options) do
if xp[ospw] and ekvd.byName[ospw] then
table.insert(dvf, ekvd.byName[ospw])
end
end
end
elseif type(xp) == _d("FxlGBhke") then
if xp == _d("JQFY") then
for uusf, zpzw in ipairs(ekvd.ids) do
table.insert(dvf, zpzw)
end
else
dvf = { ekvd.byName[xp] }
end
end

fu.selectedByWorld[ekvd.name] = dvf
end,
}, _d("Ch1XMA") .. ekvd.id)
end

jlh:Toggle({
Name = _d("JRhAAFc6WAkdWAoDHBc3GVsdDg"),
Default = false,
Callback = function(wwrw)
fu.story = wwrw
fu.battlePending = false
fu.battlePendingUntil = 0
end,
}, _d("BRhAACgaWAkdWAoDHGgXGVsdDg"))

fu.storyDropdown = jlh:Dropdown({
Name = _d("IARSCR4aQggZXQoE"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = tcgx,
Callback = function(hcf)
local ypzg = type(hcf) == _d("EAxWAxI") and hcf[1] or hcf

if type(ypzg) == _d("FxlGBhke") and zatr[ypzg] then
fu.storyDifficulty = zatr[ypzg]
end
end,
}, _d("AARSCR4aQggZXQoE"))

pcall(function()
fu.storyDropdown:UpdateSelection(tcgx[1])
end)

pcall(function()
fu.storyDropdown:UpdateName(_d("IARSCR4aQggZXQoEWdXkzxQ") .. tcgx[1])
end)

jlh:Paragraph({
Header = _d("LAJDTzYMQwtNdwAaCVsBGVFPJA1YFhQUGBgLXBc"),
Body = _d("IgRTBwMKFwEbUR0OWUQQAkYWVzdnJ00ZTzkYWgEGFBsfC1gRClxPPgpSDwxdT1pZWApNQAcSWVgKCBQLHh9RDQ5BAwMAFwUPWxkSVRcTAkYEHhdQRBlcClcYRQEMR08eFxcLH1AKBVlWCgkUDBgUXgoKFA0WGlxEH1saGR0XBR4UDBgWWwACQwEEWVQICFUdWXM9LRkUHRIJWwUOURxXDV8BTVUdEhgXAB9bHxMWQAoeFBgfEFsBTV0bVxBERAJaQ1cYWQBNWAoWD1IXTUYOHh0XBgJHHBIKFwUBWwESVw"),
})

local rcl = glsr:Section({
Side = _d("KAhSGw"),
})

rcl:Header({
Name = _d("MAJDCgU"),
})

local keq
local ff

local awfr = {
remotes = {},
watcher = false,
hidMenu = false,

hardWatch = {},
}

pcall(function()
local jxc = getgenv().ACBXHardWatch

if type(jxc) == _d("EAxWAxI") then
for qoxs, qtyj in pairs(jxc) do
pcall(function()
if qtyj.Connected then
qtyj:Disconnect()
end
end)
end
end

getgenv().ACBXHardWatch = awfr.hardWatch
end)

function awfr.hardPick(bnzf)
bnzf = bnzf == true

for icg, eb in ipairs({ _d("JgxAGxsccBEE"), _d("JgxAGxsccBEEBg") }) do
local gcw = sfed:FindFirstChild(eb)

if gcw then
if gcw:GetAttribute(_d("MAJDCgUxVhYJZAYUEg")) ~= bnzf then
pcall(function()
gcw:SetAttribute(_d("MAJDCgUxVhYJZAYUEg"), bnzf)
end)
end

if gcw:GetAttribute(_d("MAJDCgUxVhYJZhoZ")) ~= nil and gcw:GetAttribute(_d("MAJDCgUxVhYJZhoZ")) ~= bnzf then
pcall(function()
gcw:SetAttribute(_d("MAJDCgUxVhYJZhoZ"), bnzf)
end)
end
end
end
end

function awfr.pinMode()
if not (ol.enabled or ol.nightmare) then
return
end

local dec = ol.nightmare == true

for qy, xah in ipairs({ _d("JgxAGxsccBEE"), _d("JgxAGxsccBEEBg") }) do
local qas = sfed:FindFirstChild(xah)

if qas then
if qas:GetAttribute(_d("MAJDCgUxVhYJZAYUEg")) ~= dec then
pcall(function()
qas:SetAttribute(_d("MAJDCgUxVhYJZAYUEg"), dec)
end)
end

local lkg = awfr.hardWatch[qas]

if lkg and lkg.Connected == false then
awfr.hardWatch[qas] = nil
lkg = nil
end

if lkg == nil then
local njbc, eoqm = pcall(function()
return qas:GetAttributeChangedSignal(_d("MAJDCgUxVhYJZAYUEg")):Connect(function()
if not (ol.enabled or ol.nightmare) then
return
end

local vuap = ol.nightmare == true

if qas.Parent and qas:GetAttribute(_d("MAJDCgUxVhYJZAYUEg")) ~= vuap then
pcall(function()
qas:SetAttribute(_d("MAJDCgUxVhYJZAYUEg"), vuap)
end)
end
end)
end)

if njbc then
awfr.hardWatch[qas] = eoqm
end
end
end
end
end

function awfr.pauseRows()
local zrlk = mtxf:FindFirstChild(_d("NAFVFhILcBEE")) and mtxf.PlayerGui:FindFirstChild(_d("NwhAGx4XUBcqQQY"))

if not zrlk then
return nil, nil
end

return zrlk:FindFirstChild(_d("NAxBHBIwWQIEWgYDHH4KHUEb"), true), zrlk:FindFirstChild(_d("NAxBHBIwWQIEWgYDHHQMCFcE"), true)
end

function awfr.pauseState()
local kgea = mtxf:FindFirstChild(_d("NAFVFhILcBEE")) and mtxf.PlayerGui:FindFirstChild(_d("NwhAGx4XUBcqQQY"))
local xhdi = kgea and kgea:FindFirstChild(_d("IwhAPBINQw0DUxw"), true)

if not xhdi then
return nil
end

local hutr, wlwi = pcall(function()
return xhdi:Invoke()
end)

if hutr and type(wlwi) == _d("EAxWAxI") then
return wlwi.pauseInfiniteEnabled == true
end

return nil
end

function awfr.pauseAt(znuf, lm)
lm = math.max(1, math.floor(tonumber(lm) or 1))

local qbb, xtn = awfr.pauseRows()

if not (qbb and xtn) then
return false
end

local ptb = pcall(function()
if tonumber(qbb.Text) ~= lm then
qbb.Text = tostring(lm)

if getconnections then
for hsbf, xtw in ipairs(getconnections(qbb.FocusLost)) do
pcall(function()
xtw:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end
end)

if znuf ~= nil then
local clah = awfr.pauseState()

if clah ~= nil and clah ~= znuf and getconnections then
pcall(function()
for irvm, grs in ipairs(getconnections(xtn.MouseButton1Click)) do
pcall(function()
grs:Fire()
end)
end
end)
end
end

return ptb
end

function awfr.restorePause()
gfiu.triggered = false

if gfiu.enabled and gfiu.floor > 0 then
awfr.pauseAt(true, gfiu.floor)

pcall(function()
lg.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = gfiu.floor,
})
end)

return
end

pcall(function()
lg.SaveClientData:FireServer({
pauseInfiniteEnabled = false,
pauseInfiniteAt = 1,
})
end)

awfr.pauseAt(false, 1)
end

function awfr.remote(qafn)
local iqeq = awfr.remotes[qafn]

if iqeq and iqeq.Parent then
return iqeq
end

local rowy = pbw:FindFirstChild(_d("NghZAAMcRA"))
local ijec = rowy and rowy:FindFirstChild(qafn)

if ijec then
awfr.remotes[qafn] = ijec
end

return ijec
end

function awfr.historyOpen()
for cwd, npzp in ipairs({ _d("JgxAGxsccBEE"), _d("JgxAGxsccBEEBg") }) do
local etoi = sfed:FindFirstChild(npzp)
local bqya = etoi and etoi:FindFirstChild(_d("MAJDCgUxXhcZWx0OP0UFAFE"))

if bqya and bqya.Visible then
return true
end
end

return false
end

function awfr.generationOpen()
local bazm = sfed:FindFirstChild(_d("MAJDCgUrUhcYWBswDF4"))
local rku = bazm and bazm:FindFirstChild(_d("NghHGhsNcRYMWQo"))

return rku ~= nil and rku.Visible
end

function awfr.standDown(wktc)
if not awfr.hidMenu then
local yaua = true

pcall(function()
yaua = nnc:GetState() ~= false
end)

if yaua then
awfr.hidMenu = true

pcall(function()
nnc:SetState(false)
end)
end
end

if awfr.watcher then
return
end

awfr.watcher = true

task.spawn(function()

local ry = os.clock() + 6

while hro() and os.clock() < ry and not wktc() do
task.wait(0.2)
end

while hro() and wktc() do
task.wait(0.4)
end

awfr.watcher = false

if awfr.hidMenu then
awfr.hidMenu = false

pcall(function()
nnc:SetState(true)
end)
end
end)
end

ol.floorAt = 0
ol.battleAt = 0
ol.floor = nil
ol.manualPause = false

task.spawn(function()
local dmjt = wfu(_d("JgxAGxscYhQJVRsS"))
local jvq = wfu(_d("NxRaDCMWQAEfcgMYFkU"))
local mjs = wfu(_d("JgxAGxsccgoJ"))
local wi = wfu(_d("MAJDCgUrQgooWgsSHQ"))

if dmjt then
dmjt.OnClientEvent:Connect(function()
ol.battleAt = os.clock()
end)
end

if jvq then
jvq.OnClientEvent:Connect(function(ptl)
ol.floorAt = os.clock()

if type(ptl) == _d("ChhZDRIL") and ptl > 1 then
ol.floor = ptl
else
ol.floor = nil
end
end)
end

if mjs then
mjs.OnClientEvent:Connect(function(rppy)
if type(rppy) == _d("EAxWAxI") and rppy.mode == _d("EAJDCgU") then
ol.floorAt = os.clock()
end
end)
end

if wi then
wi.OnClientEvent:Connect(function()

ol.lastRunEnded = {
clock = os.clock(),
floor = ol.floor,
}

task.delay(1, function()
local nz = sfed:FindFirstChild(_d("MAJDCgUrUhcYWBswDF4"))
local bgn = nz and nz:FindFirstChild(_d("NghHGhsNcRYMWQo"))
local sid = {}

if bgn then
for hcl, ogj in ipairs(bgn:GetDescendants()) do
if ogj:IsA(_d("MAhMGzsYVQEB")) and ogj.Visible and ogj.Text ~= _d("") and #sid < 12 then
sid[#sid + 1] = ogj.Text
end
end
end

if ol.lastRunEnded then
ol.lastRunEnded.texts = table.concat(sid, _d("RBEU"))
end
end)

ol.floorAt = 0
ol.battleAt = 0
ol.floor = nil

if ol.manualPause then
awfr.restorePause()
end
end)
end

end)

local function lhg()
local ug = os.clock()

if ug - (ol.floorAt or 0) < 90 and ug - (ol.battleAt or 0) < 12 then
return true
end

for jfl, heft in ipairs({ _d("JgxAGxsccBEE"), _d("JgxAGxsccBEEBg") }) do
local yzj = sfed:FindFirstChild(heft)

if yzj then

local knx = yzj:FindFirstChild(_d("MAJDCgU/WwsCRiMWG1II"))

if knx and knx.Visible then
return true
end

local gwz = yzj:FindFirstChild(_d("IgFbAAUqVBYIUQE"))

if gwz and gwz.Visible then
return true
end

local whad = yzj:FindFirstChild(_d("JgxAGxscZAcfUQoZ"))

if whad and whad.Visible then
local xr = whad:FindFirstChild(_d("NRhdDBw+XhIIYR81DEMQAlo"))

if xr and xr.Visible then
return true
end
end
end
end

return false
end

function awfr.hardNow()

local dpa = sfed:FindFirstChild(_d("JgxAGxsccBEE"))
local zpas = dpa and dpa:GetAttribute(_d("MAJDCgUxVhYJZAYUEg"))

if zpas ~= nil then
return zpas == true
end

local jkvd = ifi.misc.util.profile

return type(jkvd) == _d("EAxWAxI") and jkvd.lastTowerHard == true
end

function awfr.endIfWrongMode(gdqi)
if not lhg() or awfr.hardNow() == (gdqi == true) then
return false
end

pcall(function()
if type(ff) == _d("AhhaDAMQWAo") then
ff()
else
lg.EndTowerRemote:FireServer(1)
end
end)

ol.floor = nil

return true
end

function awfr.hardPickNow()
for awl, jjny in ipairs({ _d("JgxAGxsccBEE"), _d("JgxAGxsccBEEBg") }) do
local klnb = sfed:FindFirstChild(jjny)
local mmcf = klnb and klnb:GetAttribute(_d("MAJDCgUxVhYJZAYUEg"))

if mmcf ~= nil then
return mmcf == true
end
end

return nil
end

function awfr.parked()
for cwju, zjlr in ipairs({ _d("JgxAGxsccBEE"), _d("JgxAGxsccBEEBg") }) do
local gwhl = sfed:FindFirstChild(zjlr)

if gwhl then
local gdrh = gwhl:FindFirstChild(_d("MAJDCgU/WwsCRiMWG1II"))
local diw = gwhl:FindFirstChild(_d("IgFbAAUqVBYIUQE"))
local toya = gwhl:FindFirstChild(_d("JgxAGxscZAcfUQoZ"))

if gdrh and gdrh.Visible
and not (diw and diw.Visible)
and not (toya and toya.Visible) then
return true
end
end
end

return false
end

ol.ui = rcl:Toggle({
Name = _d("JRhAAFctWBMIRg"),
Default = false,
Callback = function(fatc)

if ol.quiet then
return
end

ol.enabled = fatc
ol.pending = false
ol.pendingUntil = 0

if fatc then

if svub.enabled and svub.role[1] ~= _d("EAJDCgU") then
ol.enabled = false

pcall(function()
ol.ui:UpdateState(false)
end)

pcall(function()
nnc:Dialog({
Title = _d("JRhAAFctWBMIRk8YH1E"),
Description = _d("NwFbG1dIFw0eFBwSDRcQAhQ") .. svub.roleName(1) .. _d("Sk1gBxJZfgoLXQEeDU5ELlUcAxVSRAJaAw5ZRBAMRhsEWVgKTUcDGA0XVUEUHBhZRAEZFDwbFkNEXBQbGFljCxpRHVcfXhYeQEE"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})
end)

return
end

if svub.otherTowerOn(_d("EAJDCgU")) then
ol.enabled = false

pcall(function()
ol.ui:UpdateState(false)
end)

pcall(function()
nnc:Dialog({
Title = _d("JRhAAFctWBMIRk8YH1E"),
Description = _d("JQNbGx8cRUQZWxgSCxcFGEAAGhhDDQJaTx4KFwUBRgoWHU5EAlpDVxhZAE1ABx4KFwUOVwACF0NEAloDDllWCAFbGARZWAoIFBsYDlIWTUYaGVlWEE1VTwMQWgFDFDsCC1lEGVwOA1lYCggUABEfFwIERhwDVRcLHxQbAgtZRAJaTzYMQwtNZwMYDRcXAhQKFhpfRB5YAANZUAEZR08eDUREAkMBVw1YEwhGQQ"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})
end)

return
end

ol.nightmare = false

pcall(function()
ol.quiet = true
ol.nightmareToggle:UpdateState(false)
ol.quiet = false
end)

ol.manualPause = false
ol.paused = false
awfr.restorePause()
ol.pauseArmed = false

awfr.endIfWrongMode(false)
awfr.hardPick(false)

return
end

if not lhg() then
return
end

ol.paused = true
local hzft = keq()

nnc:Notify({
Title = _d("JRhAAFctWBMIRk8YH1E"),
Description = hzft and _d("MAJDCgVZRREDFB8WDEQBCRo") or _d("NhhaTx4KFwgEQgpbWVURGRQBGFlVFghVBFcbQhAZWwFXH1gRA1BB"),
Lifetime = 5,
})
end,
}, _d("BRhAACgNWBMIRg"))

ol.nightmareToggle = rcl:Toggle({
Name = _d("JRhAAFc3XgMFQAIWC1JEOVsYEgs"),
Default = false,
Callback = function(dlpb)
if ol.quiet then
return
end

ol.nightmare = dlpb

if not dlpb then

ol.enabled = false
ol.pending = false
ol.pendingUntil = 0

awfr.hardPick(false)

pcall(function()
ol.quiet = true
ol.ui:UpdateState(false)
ol.quiet = false
end)

if lhg() then
ol.paused = true
local spny = keq()

nnc:Notify({
Title = _d("JRhAAFc3XgMFQAIWC1JEOVsYEgsXCwtS"),
Description = spny and _d("KgRTBwMUVhYIFB0CFxcUDEEcEh0Z") or _d("NhhaTx4KFwgEQgpbWVURGRQBGFlVFghVBFcbQhAZWwFXH1gRA1BB"),
Lifetime = 5,
})
end

return
end

if svub.enabled and svub.role[1] ~= _d("EAJDCgU") then
ol.nightmare = false

pcall(function()
ol.quiet = true
ol.nightmareToggle:UpdateState(false)
ol.quiet = false
end)

pcall(function()
nnc:Dialog({
Title = _d("JRhAAFc3XgMFQAIWC1JEOVsYEgsXCwtS"),
Description = _d("KgRTBwMUVhYIFDsYDlIWTVcAAhdDF01VHFctWBMIRk8eFxcXAVsbV0gbRAxaC1cAWBEfFBwbFkNEXBQGBFlYCk0") .. svub.roleName(1) .. _d("RB9dCB8NFwoCQ0FXKlIQTUcDGA0XVU1AAFctWBMIRk8REEUXGRo"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})
end)

return
end

pcall(function()
ol.quiet = true
ol.ui:UpdateState(false)
ol.quiet = false
end)

ol.enabled = true
ol.manualPause = false
ol.paused = false

awfr.restorePause()
ol.pauseArmed = false

awfr.endIfWrongMode(true)
awfr.hardPick(true)

ol.pending = false
ol.pendingUntil = 0
end,
}, _d("BRhAACgXXgMFQAIWC1I7GVsYEgs"))

rcl:Header({
Name = _d("JRhAAFcpVhEeUU8jFkABHw"),
})

local obrx

obrx = rcl:Toggle({
Name = _d("JRhAAFcpVhEeUU8xFVgLHw"),
Default = false,
Callback = function(yss)
gfiu.triggered = false

if yss and gfiu.floor <= 0 then
gfiu.enabled = false

pcall(function()
obrx:UpdateState(false)
end)

pcall(function()
lg.SaveClientData:FireServer({ pauseInfiniteEnabled = false })
end)

nnc:Dialog({
Title = _d("JRhAAFcpVhEeUU8xFVgLHw"),
Description = _d("NwhATxZZRwUYRwpXH1sLAkZPFhtYEggUX1cfXhYeQE9aWXYRGVtPJxhCFwgUOxgOUhZNWgoSHUREGVtPHBdYE01DBxILUkQZW08EDVgUQw"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})

return
end

gfiu.enabled = yss

pcall(function()
lg.SaveClientData:FireServer({
pauseInfiniteEnabled = yss,
pauseInfiniteAt = gfiu.floor,
})
end)
end,
}, _d("BRhAACgJVhEeUTARFVgLHw"))

rcl:Input({
Name = _d("NAxBHBJZVhBNUgMYFkU"),
Placeholder = _d("AUNTQVdMBw"),
AcceptedCharacters = _d("KhhZDRILRA"),
Callback = function(ugq)
local jeq = tonumber(ugq) or 0

if jeq < 0 then
jeq = 0
end

if jeq == gfiu.floor then
return
end

gfiu.floor = jeq
gfiu.triggered = false

if jeq <= 0 and gfiu.enabled then
gfiu.enabled = false

pcall(function()
obrx:UpdateState(false)
end)
end

pcall(function()
lg.SaveClientData:FireServer({
pauseInfiniteAt = jeq,
pauseInfiniteEnabled = gfiu.enabled,
})
end)
end,
}, _d("FAxBHBImVhAyUgMYFkU"))

rcl:Button({
Name = _d("NAxBHBJZYwsaUR0"),
Callback = function()
local whf = false

pcall(function()
whf = keq()
end)

if whf then

ol.manualPause = true
return
end

nnc:Dialog({
Title = _d("NAxBHBJZYwsaUR0"),
Description = _d("KgIUAx4PUkQZWxgSCxcWGFpPAxYXFAxBHBJZRQ0KXBtXF1gTQw"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})
end,
})

rcl:Header({
Name = _d("JRhAAFc+XhIIFDoH"),
})

cuyd.toggle = rcl:Toggle({
Name = _d("JRhAAFc+XhIIFDoH"),
Default = false,
Callback = function(jd)
cuyd.triggered = false

if jd and cuyd.floor <= 0 then
cuyd.enabled = false

pcall(function()
cuyd.toggle:UpdateState(false)
end)

nnc:Dialog({
Title = _d("JRhAAFc+XhIIFDoH"),
Description = _d("NwhATxZZUA0bUU8CCRcCAVsABVlWBgJCCldJFwIERhwDWRpELEEbGFlwDRtRTyIJFwoIUQsEWUMLTV8BGA4XEwVRHRJZQwtNRxsYCRk"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})

return
end

cuyd.enabled = jd
end,
}, _d("BRhAACgeXhIIaxoH"))

rcl:Input({
Name = _d("IwRCClcMR0QCWk8RFVgLHw"),
Placeholder = _d("AUNTQVdOBw"),
AcceptedCharacters = _d("KhhZDRILRA"),
Callback = function(lo)
local shfl = tonumber(lo) or 0

if shfl < 0 then
shfl = 0
end

if shfl == cuyd.floor then
return
end

cuyd.floor = shfl
cuyd.triggered = false

if shfl <= 0 and cuyd.enabled then
cuyd.enabled = false

pcall(function()
cuyd.toggle:UpdateState(false)
end)
end
end,
}, _d("AwRCCigMRzsCWjARFVgLHw"))

cuyd.weatherToggle = rcl:Toggle({
Name = _d("JRhAAFceXhIIFBoHWVgKTUMKFg1fAR8"),
Default = false,
Callback = function(rpc)
cuyd.weatherTriggered = false

if rpc and next(cuyd.weathers) == nil then
cuyd.weatherEnabled = false

pcall(function()
cuyd.weatherToggle:UpdateState(false)
end)

nnc:Dialog({
Title = _d("MwhVGx8cRUQqXRkSWWIU"),
Description = _d("MARXBFcYQ0QBUQ4EDRcLA1FPABxWEAVRHVcbUggCQ08REEUXGRRCVxZDDAhGGB4KUkQZXAoFHBcNHhQBGA1fDQNTTwMWFwMEQgpXDEdEAlpB"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})

return
end

cuyd.weatherEnabled = rpc
end,
}, _d("BRhAACgeXhIIaxoHJlgKMkMKFg1fAR8"))

rcl:Dropdown({
Name = _d("IwRCClcMR0QaUQ4DEVIWHg"),
Multi = true,
Required = false,
Options = { _d("MBREBxgWWQ"), _d("JgFdFQ0YRQA"), _d("KARTBwMXXgoK"), _d("MwRaCwQNWBYA"), _d("NwVVHR4XUAUD"), _d("NwRaCAIVVhYEQBY"), _d("KQJaDgUaX0QpWwIWEFk"), _d("MgJdCw"), _d("KQxQClcQWUQlUQ4BHFk"), _d("KQxaCBY") },
Callback = function(duwb)
cuyd.weathers = {}

if type(duwb) == _d("EAxWAxI") then
for guaa, wd in pairs(duwb) do
if wd then
cuyd.weathers[guaa] = true
end
end
end

cuyd.weatherTriggered = false
end,
}, _d("AwRCCigMRzsaUQ4DEVIWHg"))

rcl:Input({
Name = _d("KQRaBhoMWkQLWAAYC0Q"),
Placeholder = _d("VE0JTxYXTkQLWAAYCw"),
AcceptedCharacters = _d("KhhZCgUQVA"),
Callback = function(plye)
local pgjs = math.floor(tonumber(plye) or 0)

if pgjs < 0 then
pgjs = 0
end

cuyd.weatherMinFloor = pgjs
cuyd.weatherTriggered = false
end,
}, _d("CQRaBhoMWjsLWAAYC0Q"))

rcl:Button({
Name = _d("IwRCClcsR0Q5WxgSCw"),
Callback = function()
if not lhg() then
nnc:Dialog({
Title = _d("IwRCClcsR0Q5WxgSCw"),
Description = _d("KgIUAx4PUkQZWxgSCxcWGFpPAxYXAwRCClcMR0QfXQgfDRcKAkNB"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})

return
end

nnc:Dialog({
Title = _d("IwRCClcsR0Q5WxgSCw"),
Description = _d("IgJGCRIQQ0QZXApXGkIWH1EBA1lDCxpRHVcLQgpSFDsfEEREDlUBGRZDRA9RTwIXUwsDUUE"),
Buttons = {
{
Name = _d("IwIUDRYaXA"),
},
{
Name = _d("IwRCClcMRw"),
Callback = function()
local nyba = false

pcall(function()
nyba = ff()
end)

if nyba then
return
end

task.defer(function()
task.wait(0.3)

nnc:Dialog({
Title = _d("IwRCClcsR0Q5WxgSCw"),
Description = _d("KgIUCB4PUkQYRE8VDEMQAlpPFhdEEwhGChNZGkQZXApXC0IKTVkODllWCB9RDhMAFwYIFAABHEVK"),
Buttons = {
{
Name = _d("IwJATx4N"),
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

rcl:Button({
Name = _d("JwVRDBxZWwseR08fEEQQAkYW"),
Callback = function()
local pg = awfr.remote(_d("NghFGhIKQzACQwoFMV4XGVsdDg"))

if not pg then
nnc:Dialog({
Title = _d("KAJHHFcxXhcZWx0O"),
Description = _d("MAVdHFcbQg0BUE8fGEREA1tPAxZAAR8UBx4KQwsfTU8FHFoLGVFB"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})

return
end

awfr.standDown(awfr.historyOpen)

pcall(function()
pg:FireServer()
end)
end,
})

rcl:Button({
Name = _d("JwVRDBxZUAEDUR0WDV4LA0c"),
Callback = function()

local mw = sfed:FindFirstChild(_d("MAJDCgUrUhcYWBswDF4"))
local fbqo = mw and mw:FindFirstChild(_d("Kx1RATAcWSwERxsYC04"))

if not fbqo then
nnc:Dialog({
Title = _d("IwhaCgUYQw0CWhw"),
Description = _d("MAVdHFcbQg0BUE8fGEREA1tPEBxZAR9VGx4WWRdNQwYZHVgTQw"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})

return
end

awfr.standDown(awfr.generationOpen)

pcall(function()
fbqo:Fire()
end)
end,
})

fu.bossTeams.towerSection = glsr:Section({
Side = _d("KAhSGw"),
})

fu.bossTeams.towerSection:Header({
Name = _d("MAJDCgVZYwEMWRw"),
})

fu.bossTeams.towerSection:Paragraph({
Header = _d("LAJDTwMWQAEfFBsSGFoXTUMABRI"),
Body = _d("KwtSVVccVgcFFB0CFxcRHlEcVw5fBRlRGRILFxAIVQJXEEMXTUcDGA0XBQFGChYdTkQFWwMTChluZ3sBTVlSBQ5cTwMWQAEfFA0SFVgTTUYaGQoXEwRAB1cNXwFNQAoWFBcUBFcEEh0XAgJGTx4NGQ"),
})

fu.bossTeams.towerToggle = fu.bossTeams.towerSection:Toggle({
Name = _d("MAJDCgVZYwEMWRw"),
Default = false,
Callback = function(grnf)
fu.bossTeams.towersOn = grnf
end,
}, _d("EAJDCgUmQwEMWRw"))

for kjy, qtg in ipairs({
{ kind = _d("EAJDCgU"), name = _d("LQNSBhkQQx1Ndw4EDVsBTRtPORBQDBlZDgUc") },
{ kind = _d("DAxGCxQWRQE"), name = _d("LR5YDhkdFywMRgsUFkUB") },
}) do
local pmyc = math.clamp(math.floor(tonumber(fu.bossTeams.towerPicked[qtg.kind]) or 1), 1, 4)

fu.bossTeams.towerPicked[qtg.kind] = pmyc

fu.bossTeams.towerUi[qtg.kind] = fu.bossTeams.towerSection:Dropdown({
Name = qtg.name,
Search = false,
Multi = false,
Required = false,
Default = pmyc,
Options = { _d("MAhVAldI"), _d("MAhVAldL"), _d("MAhVAldK"), _d("MAhVAldN") },
Callback = function(isn)
local ze = type(isn) == _d("EAxWAxI") and isn[1] or isn
local dqd = type(ze) == _d("FxlGBhke") and tonumber(ze:match(_d("TEhQRF4"))) or nil

if dqd then
fu.bossTeams.towerPicked[qtg.kind] = dqd
fu.bossTeams.save()
end

pcall(function()
fu.bossTeams.towerUi[qtg.kind]:UpdateName(qtg.name .. _d("RI+0zVc") .. (ze or _d("MAhVAldI")))
end)
end,
}, _d("EAhVAigNWBMIRjA") .. qtg.kind)

pcall(function()
fu.bossTeams.towerUi[qtg.kind]:UpdateSelection(_d("MAhVAlc") .. tostring(pmyc))
fu.bossTeams.towerUi[qtg.kind]:UpdateName(qtg.name .. _d("RI+0zVctUgUAFA") .. tostring(pmyc))
end)
end

fu.bossTeams.towerSection:Header({
Name = _d("NxpVH1cWWUQLWAAYCw"),
})

fu.bossTeams.towerSection:Paragraph({
Header = _d("NxpVH1cNUgUAFAAZWVZEC1gAGAs"),
Body = _d("MAVRTxAYWgFKR08YDllEHkMOB1UXCgJATxZZRwUYRwpZWXIFDlxPBQxbAU1dHFcYFwIBWwAFWVYKCRQbHxwXEAhVAlcOWBYDFAkFFlpEGVwOA1lRCAJbHVcWWUhNQx0eDUMBAxQGGQ1YRBlcClceVgkIExxXKlIQGV0BEAoXSVMULgINWEQ5UQ4aWWQTDERPRllWCgkUXVtZRAtNQAcSWVAFAFFPGhhcAR4UGx8cFxcaXRsUERcNGUcKGx8XEwVRAVcYFxYYWk8EDVYWGUdPAxFWEE1SAxgWRUpNegADEV4KChQGBFlEEAJEHxIdFwUDUE8DEVJEH0EBVxJSAR1HTx4NREQeWAADVz1uLBQMFgpDCAgUHQIXFwMIQBxXDV8BTUcOGhwXFxpdGxQRFwIfWwJXDV8NHhQfFhdSCEEUDRIaVhEeUU8DEVJEClUCEl5ERAJDAVcKQAUdFAAZFU5EC10dEgoXDQNHBhMcFy0DUgYZEEMBTWYAGBRESmc+IxIYQQFNVU8RFVgLHxQOA1kHRBlbTwMMRQpNQAcWDRcWGFgKVxZRAkM"),
})

function fu.bossTeams.swapStatusText()
local vgtj = fu.bossTeams.swap
local dyi = {}

if vgtj.on then
table.insert(dyi, _d("KwMUQlcORQ0ZQAoZWUMLTUAHEllQBQBRSARZdhEZW08jHFYJTWcYFgkXFgJDHFk"))
else
table.insert(dyi, _d("KwtST1pZQwwIFAgWFFJDHhQcABhHRARHTxscURBNVQMYF1JK"))
end

local obe = {
{ index = 1, floor = vgtj.floor, team = vgtj.team },
{ index = 2, floor = vgtj.floor2, team = vgtj.team2 },
}

for zten, gfj in ipairs(obe) do
if gfj.floor > 0 then
table.insert(dyi, string.format(_d("NxpVH1dcU15NYAoWFBdBCRQJBRZaRAtYABgLF0EJ"), gfj.index, gfj.team, gfj.floor))
else
table.insert(dyi, string.format(_d("NxpVH1dcU15NWwkRWR8KAhQJGxZYFk1HCgNQ"), gfj.index))
end
end

if fu.bossTeams.swapMessage ~= _d("") then
table.insert(dyi, fu.bossTeams.swapMessage)
end

return table.concat(dyi, _d("bg"))
end

function fu.bossTeams.paintSwap()
pcall(function()
fu.bossTeams.swapStatus:UpdateBody(fu.bossTeams.swapStatusText())
end)
end

fu.bossTeams.swapToggle = fu.bossTeams.towerSection:Toggle({
Name = _d("NxpVH1cNUgUAFAAZWVEIAlsd"),
Default = fu.bossTeams.swap.on,
Callback = function(hbq)
fu.bossTeams.swap.on = hbq

fu.bossTeams.swapReset()

fu.bossTeams.swapApply()
fu.bossTeams.save()
end,
}, _d("FxpVHygNUgUAawAZJlEIAlsd"))

fu.bossTeams.swapInput = fu.bossTeams.towerSection:Input({
Name = _d("IgFbAAU"),
Placeholder = _d("AUNTQVdMB1RNHF9XRBcLC1JG"),
AcceptedCharacters = _d("KhhZCgUQVA"),
Callback = function(akm)
local nunw = tonumber(type(akm) == _d("FxlGBhke") and akm:match(_d("TEhQRF4")) or akm)

if nunw then
fu.bossTeams.swap.floor = nunw
fu.bossTeams.swapReset()
fu.bossTeams.swapApply()
fu.bossTeams.save()
end
end,
}, _d("AgFbAAU"))

fu.bossTeams.swapDropdown = fu.bossTeams.towerSection:Dropdown({
Name = _d("NxpVH1cNWA"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(fu.bossTeams.swap.team) or 1), 1, 4),
Options = { _d("MAhVAldI"), _d("MAhVAldL"), _d("MAhVAldK"), _d("MAhVAldN") },
Callback = function(lch)
local pwes = type(lch) == _d("EAxWAxI") and lch[1] or lch
local hrn = type(pwes) == _d("FxlGBhke") and tonumber(pwes:match(_d("TEhQRF4"))) or nil

if hrn then
fu.bossTeams.swap.team = hrn
fu.bossTeams.swapReset()
fu.bossTeams.swapApply()
fu.bossTeams.save()
end

pcall(function()
fu.bossTeams.swapDropdown:UpdateName(_d("NxpVH1cNWESPtM1X") .. (pwes or _d("MAhVAldI")))
end)

fu.bossTeams.paintSwap()
end,
}, _d("FxpVHygNWA"))

fu.bossTeams.swapInput2 = fu.bossTeams.towerSection:Input({
Name = _d("IgFbAAVZBQ"),
Placeholder = _d("AUNTQVdIB1RdFEdHWQpEAlIJXg"),
AcceptedCharacters = _d("KhhZCgUQVA"),
Callback = function(vke)
local ino = tonumber(type(vke) == _d("FxlGBhke") and vke:match(_d("TEhQRF4")) or vke)

if ino then
fu.bossTeams.swap.floor2 = ino
fu.bossTeams.swapReset()
fu.bossTeams.swapApply()
fu.bossTeams.save()
end
end,
}, _d("AgFbAAUmBQ"))

fu.bossTeams.swapDropdown2 = fu.bossTeams.towerSection:Dropdown({
Name = _d("NxpVH1cNWERf"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(fu.bossTeams.swap.team2) or 1), 1, 4),
Options = { _d("MAhVAldI"), _d("MAhVAldL"), _d("MAhVAldK"), _d("MAhVAldN") },
Callback = function(cpuz)
local xcci = type(cpuz) == _d("EAxWAxI") and cpuz[1] or cpuz
local phks = type(xcci) == _d("FxlGBhke") and tonumber(xcci:match(_d("TEhQRF4"))) or nil

if phks then
fu.bossTeams.swap.team2 = phks
fu.bossTeams.swapReset()
fu.bossTeams.swapApply()
fu.bossTeams.save()
end

pcall(function()
fu.bossTeams.swapDropdown2:UpdateName(_d("NxpVH1cNWERfFI332xc") .. (xcci or _d("MAhVAldI")))
end)

fu.bossTeams.paintSwap()
end,
}, _d("FxpVHygNWDtf"))

fu.bossTeams.swapStatus = fu.bossTeams.towerSection:Paragraph({
Header = _d("NxpVH1cKQwUZQRw"),
Body = fu.bossTeams.swapStatusText(),
})

pcall(function()
local ic = math.clamp(math.floor(tonumber(fu.bossTeams.swap.team) or 1), 1, 4)
local wvl = math.clamp(math.floor(tonumber(fu.bossTeams.swap.team2) or 1), 1, 4)

fu.bossTeams.swapDropdown:UpdateSelection(_d("MAhVAlc") .. tostring(ic))
fu.bossTeams.swapDropdown:UpdateName(_d("NxpVH1cNWESPtM1XLVIFABQ") .. tostring(ic))
fu.bossTeams.swapDropdown2:UpdateSelection(_d("MAhVAlc") .. tostring(wvl))
fu.bossTeams.swapDropdown2:UpdateName(_d("NxpVH1cNWERfFI332xcwCFUCVw") .. tostring(wvl))
end)

task.spawn(function()
local iat = fu.bossTeams.swapStatusText()

while hro() do
local lku = fu.bossTeams.swapStatusText()

if lku ~= iat then
iat = lku
fu.bossTeams.paintSwap()
end

task.wait(2)
end
end)

if fu.bossTeams.swap.on then
task.delay(2, function()
pcall(fu.bossTeams.swapApply)
end)
end

fu.bossTeams.section = glsr:Section({
Side = _d("NgRTBwM"),
})

fu.bossTeams.section:Header({
Name = _d("JgJHHFctUgUARw"),
})

fu.bossTeams.section:Paragraph({
Header = _d("LAJDTxUWRBdNQAoWFEREGlsdHA"),
Body = _d("KwtSVVcXWBAFXQEQWV4XTUcYHg1UDAhQT1pZUhIIRhZXH14DBUBPAgpSF01ABxJZQwEMWU8OFkJEDFgdEhhTHU1cDgEcFwgEWgoTWUIUQRQYHxBUDE1dHFcNXwFNZwMYDRdVTUAKFhQXEQNYCgQKFxcBWxtXSxcQDF8KBFlDDAgUDRYNQwgIGmV9NlleTVEOFBEXBR9RDlcbUggCQ08REFAMGUdPABBDDE1ABxJZQwEMWU8OFkJEHV0MHFlRCx8UBgNX"),
})

fu.bossTeams.toggle = fu.bossTeams.section:Toggle({
Name = _d("JgJHHFctUgUARw"),
Default = false,
Callback = function(vbz)
fu.bossTeams.enabled = vbz
end,
}, _d("BgJHHCgNUgUARw"))

for tmj, ioz in ipairs(ttua) do
local hy = fu.bossTeams.picked[ioz.id] or 1

hy = math.clamp(math.floor(tonumber(hy) or 1), 1, 4)
fu.bossTeams.picked[ioz.id] = hy

fu.bossTeams.ui[ioz.id] = fu.bossTeams.section:Dropdown({
Name = ioz.name,
Search = false,
Multi = false,
Required = false,

Default = hy,
Options = { _d("MAhVAldI"), _d("MAhVAldL"), _d("MAhVAldK"), _d("MAhVAldN") },
Callback = function(voh)
local dee = type(voh) == _d("EAxWAxI") and voh[1] or voh
local swe = type(dee) == _d("FxlGBhke") and tonumber(dee:match(_d("TEhQRF4"))) or nil

if swe then
fu.bossTeams.picked[ioz.id] = swe

fu.bossTeams.save()
end

pcall(function()
fu.bossTeams.ui[ioz.id]:UpdateName(ioz.name .. _d("RI+0zVc") .. (dee or _d("MAhVAldI")))
end)
end,
}, _d("EAhVAigOWBYBUDA") .. ioz.id)

pcall(function()
fu.bossTeams.ui[ioz.id]:UpdateSelection(_d("MAhVAlc") .. tostring(hy))
fu.bossTeams.ui[ioz.id]:UpdateName(ioz.name .. _d("RI+0zVctUgUAFA") .. tostring(hy))
end)
end

fu.bossTeams.raidSection = glsr:Section({
Side = _d("NgRTBwM"),
})

fu.bossTeams.raidSection:Header({
Name = _d("NgxdC1ctUgUARw"),
})

fu.bossTeams.raidSection:Paragraph({
Header = _d("LAJDTwUYXgBNQAoWFEREGlsdHA"),
Body = _d("KwtSVVcLVg0JR08CClJEGlwOAxxBAR8UGxIYWkQZXApXClsLGRQOGwtSBQlNTx8WWwAeGmV9NlleTVEOFBEXFgxdC1cbUggCQ08eChcCAkEIHw0XEwRAB1cNXwFNQAoWFBcUBFcEEh0XAgJGTx4NGQ"),
})

fu.bossTeams.raidToggle = fu.bossTeams.raidSection:Toggle({
Name = _d("NgxdC1ctUgUARw"),
Default = false,
Callback = function(ainp)
fu.bossTeams.raidsOn = ainp
end,
}, _d("FgxdCygNUgUARw"))

for tia, al in ipairs(alku.Raids) do
if al.BossTitle and al.id then
local ptf = fu.bossTeams.raidPicked[al.id] or 1

ptf = math.clamp(math.floor(tonumber(ptf) or 1), 1, 4)
fu.bossTeams.raidPicked[al.id] = ptf

fu.bossTeams.raidUi[al.id] = fu.bossTeams.raidSection:Dropdown({
Name = al.BossTitle,
Search = false,
Multi = false,
Required = false,
Default = ptf,
Options = { _d("MAhVAldI"), _d("MAhVAldL"), _d("MAhVAldK"), _d("MAhVAldN") },
Callback = function(iwr)
local zgri = type(iwr) == _d("EAxWAxI") and iwr[1] or iwr
local kgsx = type(zgri) == _d("FxlGBhke") and tonumber(zgri:match(_d("TEhQRF4"))) or nil

if kgsx then
fu.bossTeams.raidPicked[al.id] = kgsx
fu.bossTeams.save()
end

pcall(function()
fu.bossTeams.raidUi[al.id]:UpdateName(al.BossTitle .. _d("RI+0zVc") .. (zgri or _d("MAhVAldI")))
end)
end,
}, _d("EAhVAigLVg0Jaw") .. al.id)

pcall(function()
fu.bossTeams.raidUi[al.id]:UpdateSelection(_d("MAhVAlc") .. tostring(ptf))
fu.bossTeams.raidUi[al.id]:UpdateName(al.BossTitle .. _d("RI+0zVctUgUAFA") .. tostring(ptf))
end)
end
end

task.spawn(function()
local prge = uqnj()

while hro() do
local nmc = uqnj()

if svub.enabled and svub.statusText then
nmc = svub.statusText()
end

nmc = nmc .. _d("bmdnCgUPUhZNQR9X") .. xxrr()

if nmc ~= prge then
prge = nmc
pcall(function()
ig:UpdateBody(nmc)
end)
end
task.wait(0.5)
end
end)

task.spawn(function()
while hro() do
for xnvs, wygn in ipairs({ _d("JgxAGxsccBEE"), _d("JgxAGxsccBEEBg") }) do
local vcyg = sfed:FindFirstChild(wygn)
local je = vcyg and vcyg:FindFirstChild(_d("JgxAGxscZAcfUQoZ"))
local qqm = vcyg and vcyg:FindFirstChild(_d("LARQCjUYQxABUS0CDUMLAw"))

if je and je.Visible and qqm and not qqm.Visible then
qqm.Visible = true
end
end

task.wait(0.5)
end
end)

task.spawn(function()
local qbg = false

while hro() do
if tczs then
local hkr = sfed:FindFirstChild(_d("MAJDCgUrUhcYWBswDF4"))
local vwnc = hkr and hkr:FindFirstChild(_d("NghHGhsNcRYMWQo"))
local lx = hkr and hkr:FindFirstChild(_d("IwhaCgUYQw0DUykFGFoB"))

if lx and lx.Visible then
lx.Visible = false
end

local dsag = vwnc and vwnc.Visible or false

if dsag and not qbg then
local qpx = vwnc:FindFirstChild(_d("JwFbHBI7QhAZWwE"))
local gzdl = false

if qpx then
for rai, yny in ipairs({ _d("KQJBHBI7QhAZWwFGOlsNDl8"), _d("JQ5ABgEYQwEJ") }) do
local wakm = qpx[yny]
if wakm then
for qx, jmh in ipairs(getconnections(wakm)) do
pcall(function()
jmh:Fire()
end)
gzdl = true
end
end
end
end

if not gzdl then
vwnc.Visible = false
else
task.spawn(function()
task.wait(0.3)
if vwnc.Parent and vwnc.Visible then
vwnc.Visible = false
end
end)
end
end

qbg = dsag
else
qbg = false
end

task.wait(0.2)
end
end)

local yaql = {}

function yaql.active()
return fu.enabled or fu.story
end

function yaql.towerHolds()
if svub.enabled then
return false
end

if nbpq.run.enabled then
return true
end

return ol.enabled and not ol.paused
end

function yaql.ready(puvw, zvby, ngm)
local hmt = fu.unlocked[puvw]

return (not hmt or hmt[zvby] ~= false) and fe(puvw, zvby) <= ngm
end

function yaql.hasReadyTarget()
local xirc = os.time()

for bcd, ggr in ipairs(gp()) do
for cwi, molb in ipairs(irg()) do
if yaql.ready(ggr, molb, xirc) then
return true
end
end
end

return false
end

function yaql.backOff(fljq, ghta)
cbef(fljq, ghta, os.time() + 5)
end

function yaql.findTarget()
for huwg, zfz in ipairs(gp()) do
local gdua = izsi(zfz)
local gtue = os.time() - (fu.lastFetch[zfz] or 0) > 60

if gtue and gdua and not fu.walkToNpc then
ys(gdua)
task.wait(0.3)
ochz(zfz)
end

for zxvl, gjzw in ipairs(irg()) do
if yaql.ready(zfz, gjzw, os.time()) then
return zfz, gjzw
end
end
end

return nil
end

function fu.bossTeams.slotForFight()
if svub.hasSlot2 == false then
return 1
end

if svub.busy(2) then
return 1
end

return 2
end

function fu.bossTeams.slotTeam(thmb)
local seno = sfed:FindFirstChild(_d("NwhAGx4XUBcqQQY"))
local cgzl = seno and seno:FindFirstChild(_d("NwFbGyMcVgk") .. thmb .. _d("JhhAGxgX"), true)
local aar = cgzl and cgzl.Text

return aar and tonumber(aar:match(_d("TEhQRF4"))) or nil
end

function fu.bossTeams.applyTeam(aaw, xbve)
aaw = tonumber(aaw)

if not aaw then
return false
end

xbve = tonumber(xbve) or fu.bossTeams.slotForFight()

if svub.busy(xbve) then
return false
end

fu.bossTeams.lastSlot = xbve

local jip = fu.bossTeams.slotTeam(xbve) or fu.bossTeams.applied[xbve]

if jip == aaw then
return true
end

local xub = awfr.remote(_d("NxpdGxQRYwEMWQ"))

if not xub then
return false
end

local syd = pcall(function()
xub:FireServer(aaw, false, xbve)
end)

fu.bossTeams.applied[xbve] = aaw
task.wait(0.2)

return syd
end

function fu.bossTeams.apply(atg)
if not fu.bossTeams.enabled then
return
end

local myr = fu.bossTeams.worldOf[atg]
local mdzc = myr and fu.bossTeams.picked[myr]

if not mdzc then
return
end

fu.bossTeams.applyTeam(mdzc)
end

function fu.bossTeams.applyTower(uoss, niux)
if not fu.bossTeams.towersOn then
return false
end

local fzgx = fu.bossTeams.towerPicked[uoss]

local yde = fu.bossTeams.swapFired[uoss]

if fu.bossTeams.swap.on and type(yde) == _d("EAxWAxI") then
fzgx = yde[2] or yde[1] or fzgx
end

if not fzgx then
return false
end

return fu.bossTeams.applyTeam(fzgx, niux)
end

function fu.bossTeams.applyRaid(vxiq)
if not fu.bossTeams.raidsOn then
return
end

local ewcw = vxiq and fu.bossTeams.raidPicked[vxiq]

if not ewcw then
return
end

fu.bossTeams.applyTeam(ewcw)
end

function yaql.fight(kubb, otn)
local jax = izsi(kubb)

if not jax then
yaql.backOff(kubb, otn)
return false
end

local lq

if fu.walkToNpc then
local yifi = ovjw[kubb]

if yifi then
lg.TeleportToWorld:FireServer(yifi)
task.wait(2.5)

local gggv = izsi(kubb) or jax
local gba = gggv:GetPivot()

lq = ylea(gba.Position + gba.LookVector * 6, function()
return not yaql.active() or not fu.walkToNpc
end)

if lq then
ochz(kubb)
lq = yaql.ready(kubb, otn, os.time())
end
end
else
lq = ys(jax)
end

if not lq then
yaql.backOff(kubb, otn)
return false
end

task.wait(0.4)
fu.bossTeams.apply(kubb)
fu.activeDifficulty[kubb] = otn
lg.SetNPCDifficulty:FireServer(kubb, otn)
task.wait(0.4)

fu.currentBattle = {
npcId = kubb,
difficulty = otn,
}
nhp = kubb
nn = otn
lg.StartNPCBattle:FireServer(kubb)
cbef(kubb, otn, os.time() + 10)
fu.battlePending = true
fu.battlePendingUntil = os.time() + 30
task.wait(1)

return true
end

fu.workPending = function()

if ifi.misc and ifi.misc.cards and ifi.misc.cards.inFlight then
return true
end

if not yaql.active() then
return false
end

if fu.battlePending then
return true
end

local raum = svub.npcSlot()

if raum and svub.busy(raum) then
return true
end

return yaql.hasReadyTarget()
end

task.spawn(function()
while hro() do

local hch = (svub.enabled and (ifi.enabled or nfhp.enabled or ifi.worldBoss.enabled))
or yaql.towerHolds()
or not svub.slotFree(svub.npcSlot())

or (ifi.misc and ifi.misc.cards and ifi.misc.cards.inFlight)
or (fu.battlePending and os.time() < fu.battlePendingUntil)

if yaql.active() and not hch then
local kys, ewkv = yaql.findTarget()

if kys then
yaql.fight(kys, ewkv)
end
end

task.wait(0.5)
end
end)

task.spawn(function()
while hro() do

local fq = {}

if ifi.enabled then
local sni = svub.roleSlot(_d("Ch1X"))

if sni then
table.insert(fq, sni)
end

if svub.splitNpc() and sni ~= 2 then
table.insert(fq, 2)
end
end

local yedu = pbw:FindFirstChild(_d("NgxdCyQNVhAYRw"))

if #fq > 0 and yedu and (not nfhp.enabled or svub.splitNpc()) and (svub.enabled or not fu.workPending()) then
for vvv, yv in ipairs(fq) do
local dcw = yedu

local vxx = ifi.bossFor(yv, (yv ~= 1 and not svub.splitNpc()) and 1 or nil)
local xyfc = dcw:GetAttribute(_d("LR57HxIX")) == true or dcw:GetAttribute(_d("IgJGDBId")) == true
local jrd = vxx ~= nil and dcw:GetAttribute(_d("NghVCw4m") .. vxx) == true
local jcge = vxx and ibd(vxx)

if vxx and ifi.pending[vxx] and os.time() >= (ifi.pendingUntil[vxx] or 0) then
ifi.pending[vxx] = false
ifi.cleared[vxx] = nil
end

if vxx and svub.slotFree(yv) and xyfc and jrd and ifi.cleared[vxx] ~= jcge and not ifi.pending[vxx] then
local hfwy = gz[vxx]
local htu = hfwy and izsi(hfwy)
local cjy = false

if htu then
if ifi.walkToBoss then
local eykz = fifr[vxx]
local etju = mtxf.Character and mtxf.Character:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))
local hsf = htu:GetPivot().Position
local jov = etju and (etju.Position - hsf).Magnitude <= 15

if jov then
cjy = true
elseif eykz then
lg.TeleportToWorld:FireServer(eykz)

local eha = os.clock()
while os.clock() - eha < 2.5 and ifi.enabled do
task.wait(0.1)
end

if ifi.enabled then
local ssb = izsi(hfwy) or htu
local suiz = ssb:GetPivot()
local rrmu = suiz.Position + suiz.LookVector * 6
cjy = hw(rrmu, ifi.walkSpeed, function()
return not ifi.enabled or not ifi.walkToBoss
end)
end
end

if not cjy then
cjy = ys(htu)
end
else
cjy = ys(htu)
end

if cjy then
task.wait(0.5)
end
end

if cjy then
ifi.inFlight[vxx] = yv
ifi.pending[vxx] = true
ifi.pendingUntil[vxx] = os.time() + 15
ifi.cleared[vxx] = jcge

local stuf = ifi.difficulties[1] or _d("CgJGAhYV")
local jo = ifi.progress[vxx]

if jo then
local jzfw = jo.unlocked
local uqh = jo.cooldowns

for zdbp, zmmv in ipairs(ifi.difficulties) do
local goj = not jzfw or jzfw[zmmv] ~= false
local dtn = uqh and tonumber(uqh[zmmv]) or 0

if goj and dtn <= 0 then
stuf = zmmv
break
end
end
end

fu.bossTeams.applyRaid(vxx)
lg.SetRaidDifficulty:FireServer(stuf, vxx)
task.wait(0.3)
lg.StartRaidBattle:FireServer(vxx)
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while hro() do
local omb = nfhp.inBattle and os.time() < nfhp.inBattleUntil

if nfhp.enabled and (svub.enabled or not fu.workPending()) and not omb and svub.slotFree(svub.roomSlot()) and not (nfhp.pending and os.time() < nfhp.pendingUntil) then
local zfld = nfhp.progress

if zfld == nil then
lg.RequestInfiniteRoomProgress:FireServer()
task.wait(0.5)
else
local cyq = nil

for ipyn, rlhq in ipairs(wq.Milestones) do
if wq.isMilestoneUnlocked(rlhq, zfld) and not wq.isMilestoneCleared(rlhq, zfld) then
cyq = rlhq
break
end
end

if cyq then

local rlsj = svub.roomSlot()

nfhp.currentRoom = cyq
nfhp.inBattle = true
nfhp.inBattleUntil = os.time() + 60
nfhp.pending = true
nfhp.pendingUntil = os.time() + 10

local rl = sfed:FindFirstChild(rlsj == 2 and _d("NghHCgM7VhAZWAoxFVgLHwY") or _d("NghHCgM7VhAZWAoxFVgLHw"))
if rl and rl:IsA(_d("JgRaCxYbWwEoQgoZDQ")) then
rl:Fire(cyq, _d("DQNSBhkQQwEyRgAYFA"))
end

local wex = sfed:FindFirstChild(rlsj == 2 and _d("NxlVHQMwWQIEWgYDHGULAlktFg1DCAgG") or _d("NxlVHQMwWQIEWgYDHGULAlktFg1DCAg"))
if wex and wex:IsA(_d("JgRaCxYbWwEoQgoZDQ")) then
wex:Fire(cyq)
end

lg.StartBattle:FireServer(_d("DQNSBhkQQwEyRgAYFA"), {
milestone = cyq,
slot = rlsj,
})
task.wait(2)
end
end
end

task.wait(1)
end
end)

local function cej(ktx, pr)
local ioj = sfed:FindFirstChild(_d("Nw5GChIXcBEE"))

if not ioj then
return
end

local tma = ioj:FindFirstChild(ktx)
local fhmb = tma and tma:FindFirstChild(_d("MgxYGhI1VgYIWA"), true)
local fwv = tma and tma:FindFirstChild(_d("KAxWChs"), true)

if not tma then
return
end

local dwy = false

if fhmb then
dwy = fhmb.Text == _d("KwM")
elseif fwv then
dwy = not string.lower(fwv.Text):find(_d("CwtS"), 1, true)
end

if dwy ~= pr then
for eue, tf in ipairs(getconnections(tma.MouseButton1Click)) do
local ekko = tf.Function

if type(ekko) == _d("AhhaDAMQWAo") then
pcall(ekko)
else
pcall(function()
tf:Fire()
end)
end
end
end
end

getgenv().ACBXSetRollButton = cej

local function sdhm(ilyj)
cej(_d("NRhdDBwrWAgBdhoDDVgK"), ilyj)
cej(_d("JRhAACUWWwgvQRsDFlk"), ilyj)
end

getgenv().ACBXSetRollUi = sdhm
ou.setRollButton = cej

pcall(function()
lg.SaveClientData:FireServer({ autoHideBattle = false })
end)

task.defer(function()
task.wait(0.5)

local ohh = sfed:FindFirstChild(_d("JgxAGxsccBEE"))
local lljc = ohh and ohh:FindFirstChild(_d("JgxAGxscZAcfUQoZ"))
local enj = ohh and ohh:FindFirstChild(_d("LARQCjUYQxABUS0CDUMLAw"))

if enj and enj.Visible and lljc and not lljc.Visible and mfke() then
for tbqu, qfe in ipairs(getconnections(enj.MouseButton1Click)) do
local iyza = qfe.Function

if type(iyza) == _d("AhhaDAMQWAo") then
pcall(iyza)
else
pcall(function()
qfe:Fire()
end)
end
end
end
end)

sdhm(true)

task.spawn(function()
while hro() do

if ou.autoRoll then
cej(_d("JRhAACUWWwgvQRsDFlk"), true)
end

if ou.autoQuickRoll then
cej(_d("NRhdDBwrWAgBdhoDDVgK"), true)
end

task.wait(1)
end
end)

local function mqst()

if ol.floor then
return ol.floor
end

local qox = sfed:FindFirstChild(_d("JgxAGxsccBEE"))

if not qox then
return nil
end

for abkb, jc in ipairs({ _d("MAJDCgU/WwsCRiMWG1II"), _d("NhhaKRsWWBYhVQ0SFQ") }) do
local igsf = qox:FindFirstChild(jc)

if igsf and igsf.Visible and igsf.Text then
local mc = tonumber(igsf.Text:match(_d("TEhQRF4")))

if mc then
return mc
end
end
end

local rfv = qox:FindFirstChild(_d("IgFbAAUqVBYIUQE"))
local fzer = rfv and rfv:FindFirstChild(_d("MAJELRYL"))
local ncmb = fzer and fzer:FindFirstChild(_d("IgFbAAU1VgYIWA"))

if ncmb then
return tonumber(ncmb.Text:match(_d("TEhQRF4")))
end

return nil
end

function fu.bossTeams.swapRows(yedq)
local mlt = sfed:FindFirstChild(_d("NwhAGx4XUBcqQQY"))
local jis = mlt and mlt:FindFirstChild(_d("JRhAACQOVhQ") .. yedq .. _d("NgJD"), true)

if not jis then
return nil
end

return jis:FindFirstChild(_d("JRhAACQOVhQ") .. yedq .. _d("JwVRDBw")),
jis:FindFirstChild(_d("JRhAACQOVhQ") .. yedq .. _d("MAhVAg")),
jis:FindFirstChild(_d("JRhAACQOVhQ") .. yedq .. _d("IgFbAAU"))
end

function fu.bossTeams.swapOn(ujl)
local gmj = sfed:FindFirstChild(_d("NwhAGx4XUBcqQQY"))
local rdb = gmj and gmj:FindFirstChild(_d("IwhAPBINQw0DUxw"), true)

if not rdb then
return nil
end

local ndmm, nygi = pcall(function()
return rdb:Invoke()
end)

if ndmm and type(nygi) == _d("EAxWAxI") then
return nygi[ujl == 1 and _d("BRhAACMcVgk+Qw4HPFkFD1gKEw") or _d("BRhAACMcVgk+Qw4HS3IKDFYDEh0")] == true
end

return nil
end

function fu.bossTeams.swapBox(rhf, eos)
if tonumber(rhf.Text) == eos then
return
end

rhf.Text = tostring(eos)

if getconnections then
for pvr, yec in ipairs(getconnections(rhf.FocusLost)) do
pcall(function()
yec:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end

function fu.bossTeams.swapSet(jxxd, ulpf, ocd, qdzm)
local dnot, ufc, wlfe = fu.bossTeams.swapRows(jxxd)

if not (dnot and ufc and wlfe) then
return false
end

ocd = math.max(1, math.floor(tonumber(ocd) or 1))
qdzm = math.clamp(math.floor(tonumber(qdzm) or 1), 1, 4)

fu.bossTeams.swapBox(wlfe, ocd)
fu.bossTeams.swapBox(ufc, qdzm)

local gab = fu.bossTeams.swapOn(jxxd)

if gab ~= nil and gab ~= (ulpf == true) and getconnections then
pcall(function()
for qzi, hpb in ipairs(getconnections(dnot.MouseButton1Click)) do
pcall(function()
hpb:Fire()
end)
end
end)
end

local yqv = jxxd == 1 and _d("") or _d("Vg")

pcall(function()
lg.SaveClientData:FireServer({
[_d("BRhAACMcVgk+Qw4H") .. yqv .. _d("IQNVDRscUw")] = ulpf == true,
[_d("BRhAACMcVgk+Qw4H") .. yqv .. _d("MAhVAg")] = qdzm,
[_d("BRhAACMcVgk+Qw4H") .. yqv .. _d("IgFbAAU")] = ocd,
})
end)

return true
end

function fu.bossTeams.swapApply()
local vpu = fu.bossTeams
local qoq = vpu.swap
local zcmd = true

if qoq.on then
zcmd = vpu.swapSet(1, qoq.floor > 0, qoq.floor, qoq.team)
zcmd = vpu.swapSet(2, qoq.floor2 > 0, qoq.floor2, qoq.team2) and zcmd
else
zcmd = vpu.swapSet(1, false, qoq.floor, qoq.team)
zcmd = vpu.swapSet(2, false, qoq.floor2, qoq.team2) and zcmd
end

vpu.swapMessage = _d("")

if not zcmd then
vpu.swapMessage = _d("MAVRTxAYWgFKR082DEMLTWAKFhQXNxpVH1cLWBMeFA4FHBcKAkBPFQxeCBkUFhINF0lNRgoDC04NA1NB")
end

vpu.paintSwap()
end

function fu.bossTeams.swapReset(esqa)
local mdyl = fu.bossTeams

if esqa then
mdyl.swapFired[esqa] = nil
else
mdyl.swapFired = {}
end
end

function fu.bossTeams.swapTick()
local xfs = fu.bossTeams
local xpe = xfs.swap

if not xpe.on or (xpe.floor <= 0 and xpe.floor2 <= 0) then
if next(xfs.swapFired) ~= nil then
xfs.swapFired = {}
end

return
end

local fmx = os.clock()
local wsbu = awfr.remote(_d("NxpdGxQRYwEMWQ"))

if fmx - (xfs.swapWroteAt or 0) > 10 then
xfs.swapWroteAt = fmx
xfs.swapApply()
end

local yum = {
{
kind = _d("EAJDCgU"),
slot = svub.towerSlot(),

live = fmx - (ol.floorAt or 0) < 90,
floor = mqst(),

own = true,
},
{
kind = _d("DAxGCxQWRQE"),
slot = svub.hardcoreSlot(),
live = dj.active(),
floor = dj.floorNow(),

own = false,
},
}

local hrmp = {
{ index = 1, floor = xpe.floor, team = xpe.team },
{ index = 2, floor = xpe.floor2, team = xpe.team2 },
}

for bhg, bart in ipairs(yum) do
if not bart.live then

xfs.swapFired[bart.kind] = nil
elseif bart.own and wsbu and bart.floor then
local eiyb = xfs.swapFired[bart.kind]

for mtgl, tgmv in ipairs(hrmp) do
local yicq = type(eiyb) == _d("EAxWAxI") and eiyb[tgmv.index]

if tgmv.floor > 0 and bart.floor == tgmv.floor and not yicq then
local rdun = pcall(function()
wsbu:FireServer(math.clamp(math.floor(tgmv.team), 1, 4), true, bart.slot or 1)
end)

if rdun then
eiyb = type(eiyb) == _d("EAxWAxI") and eiyb or {}
eiyb[tgmv.index] = tgmv.team
xfs.swapFired[bart.kind] = eiyb

xfs.swapMessage = string.format(_d("JwxHGxscFwIBWwAFWRIATRlPBA5eEA5cChNZQwtNYAoWFBdBCRo"), bart.floor, tgmv.team)
xfs.paintSwap()
end
end
end
end
end
end

task.spawn(function()
while hro() do
pcall(fu.bossTeams.swapTick)
task.wait(0.5)
end
end)

local function ztry()

return yaql.active() and yaql.hasReadyTarget()
end

function ifi.worldBoss.remote(tiie)
local uzof = ifi.worldBoss

uzof.remotes = uzof.remotes or {}

local xd = uzof.remotes[tiie]

if xd and xd.Parent then
return xd
end

local xyt = awfr.remote(tiie)

if xyt then
uzof.remotes[tiie] = xyt
end

return xyt
end

function ifi.worldBoss.setRepeat(ad)
local ss = ifi.worldBoss
local lzbu = ss.remote(_d("MwJGAxM7WBcedQwDEFgK"))

if not lzbu then
return false
end

local zmp = ss.state
local uf = type(zmp) == _d("EAxWAxI") and zmp.repeatOn == true

if uf == (ad and true or false) then
ss.repeatIntent = nil

return true
end

if ad then
local nhne = workspace:FindFirstChild(_d("MwJGAxM7WBcedR0SF1Y"))
local jxwg = nhne and (nhne:FindFirstChild(_d("JwhYAzoYTw")) or nhne)
local mkv = mtxf.Character and mtxf.Character:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not (jxwg and mkv) then
return false
end

local cvdr, ycfy = pcall(function()
return jxwg:GetPivot()
end)

if not cvdr or (mkv.Position - ycfy.Position).Magnitude > 60 then
return false
end
end

if ss.repeatIntent == ad and os.clock() - (ss.repeatAskedAt or 0) < 20 then
return false
end

ss.repeatIntent = ad

pcall(function()
lzbu:FireServer(_d("FghEChYN"))
end)

ss.repeatAskedAt = os.clock()

return true
end

function ifi.worldBoss.requestSync()
local sal = ifi.worldBoss
local yjws = sal.remote(_d("MwJGAxM7WBcedQwDEFgK"))

if yjws then
pcall(function()
yjws:FireServer(_d("FxRaDA"))
end)
end

sal.askedAt = os.clock()
end

function ifi.worldBoss.hasWork()
local vls = ifi.worldBoss
local berc = vls.state

if not vls.enabled or type(berc) ~= _d("EAxWAxI") then
return false
end

local glvw = vls.isOpen()

if glvw == nil then
glvw = berc.open == true
end

return glvw and berc.inFight ~= true
end

ifi.worldBoss.bossUp = function()
local gmpj = ifi.worldBoss

if not gmpj.enabled then
return false
end

local ksre = gmpj.isOpen()

if ksre ~= nil then
return ksre == true
end

local fm = gmpj.state

return type(fm) == _d("EAxWAxI") and fm.open == true
end

function ifi.worldBoss.meter()
local czdb = ifi.worldBoss
local xsuk = os.clock()

if xsuk - (czdb.meterAt or 0) < 1 then
return czdb.meterCurrent, czdb.meterMax
end

czdb.meterAt = xsuk
czdb.meterCurrent = nil
czdb.meterMax = nil

local xxw = pbw:FindFirstChild(_d("MwJGAxM7WBceZxsWDUIX"))
local ttd = xxw and tonumber(xxw:GetAttribute(_d("KQhACgU")))
local orqn = xxw and tonumber(xxw:GetAttribute(_d("KQhACgU0Vhw")))

if ttd and orqn and orqn > 0 then
czdb.meterCurrent = ttd
czdb.meterMax = orqn

return czdb.meterCurrent, czdb.meterMax
end

local function jdc(vhck)
if type(vhck) ~= _d("FxlGBhke") then
return nil
end

local cqk, mrpq = vhck:match(_d("TDYRC1JXak9EERxdUWwvIHYEGhtqW0Q"))
local jqj = tonumber(cqk)

if not jqj then
return nil
end

local hdp = ({ K = 1000, M = 1000000, B = 1000000000 })[string.upper(mrpq or _d(""))] or 1

return jqj * hdp
end

local aki = sfed:FindFirstChild(_d("MwJGAxM7WBcedg4ZF1IWKkEG"))
local yfb = aki and aki:FindFirstChild(_d("JgxaARIL"))
local pha = yfb and yfb:FindFirstChild(_d("KQhACgU7VhY"))
local nqta = pha

if pha and not pha:IsA(_d("MAhMGzsYVQEB")) then
nqta = pha:FindFirstChild(_d("MAhMGw"))
end

local aofn = nqta and nqta:IsA(_d("MAhMGzsYVQEB")) and nqta.Text or nil

if type(aofn) == _d("FxlGBhke") then
local jjy, ofuv = aofn:match(_d("TDZqQCpSHktFGkRe"))

czdb.meterCurrent = jdc(jjy)
czdb.meterMax = jdc(ofuv)
end

return czdb.meterCurrent, czdb.meterMax
end

function ifi.worldBoss.meterFull()
local ljuu, ucj = ifi.worldBoss.meter()

return ljuu ~= nil and ucj ~= nil and ucj > 0 and ljuu >= ucj
end

ifi.worldBoss.holdsFishing = function()
local fcw = ifi.worldBoss

if not fcw.enabled then
return false
end

if fcw.fishingMode == _d("EwxdGw") then
return fcw.bossUp()
end

return os.clock() < (fcw.takingUntil or 0)
end

ifi.worldBoss.holdsDigging = function()
local jzm = ifi.worldBoss

if not jzm.enabled or jzm.digHold ~= true then
return false
end

if not jzm.bossUp() then
return false
end

return not (jzm.stopAtFull and jzm.meterFull())
end

ifi.worldBoss.usesGameChain = function()
local awnx = ifi.worldBoss

return awnx.fishingMode == _d("EwxdGw") or awnx.digHold == true
end

function ifi.worldBoss.travel()
local fgwo = ifi.worldBoss
local vdkn = mtxf.Character
local dsm = vdkn and vdkn:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not dsm or os.clock() < fgwo.travelUntil then
return
end

fgwo.travelUntil = os.clock() + 6

local pw = workspace:FindFirstChild(_d("MwJGAxM7WBceZAAFDVYI"))
local exw = pw and pw:FindFirstChild(_d("NAJGGxYV"))

if not exw then
return
end

if (dsm.Position - exw.Position).Magnitude > 150 then
local sls = awfr.remote(_d("MAhYCgcWRRA5WzgYC1sA"))

if sls then
pcall(function()
sls:FireServer(_d("CAJWDQ4"))
end)
end

return
end

if (dsm.Position - exw.Position).Magnitude > 6 then
fgwo.walkLeg(exw.Position + Vector3.new(0, 3, 0), 4)

if (dsm.Position - exw.Position).Magnitude > 9 then
return
end
end

local ikr = exw:FindFirstChildOfClass(_d("NB9bFx4UXhAUZB0YFEcQ"))

if not ikr then
return
end

pcall(function()
if type(fireproximityprompt) == _d("AhhaDAMQWAo") then
fireproximityprompt(ikr)
else
ikr:InputHoldBegin()
task.wait(0.25)
ikr:InputHoldEnd()
end
end)
end

function ifi.worldBoss.reach()
local knzn = ifi.worldBoss

local eam = workspace:FindFirstChild(_d("MwJGAxM7WBcedR0SF1Y")) or workspace:FindFirstChild(_d("MwJGAxM7WBceZx8WDlk"), true)
local dpr = mtxf.Character
local atyr = dpr and dpr:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not (eam and atyr) then
knzn.travel()
return false
end

local lopr = eam:FindFirstChild(_d("JwhYAzoYTw")) or eam
local ql, tqeg = pcall(function()
return lopr:GetPivot()
end)

if not ql then
return false
end

local dss = tqeg.Position + tqeg.LookVector * 6 + Vector3.new(0, 3, 0)
local ewrq = Vector3.new(tqeg.Position.X, dss.Y, tqeg.Position.Z)

atyr.CFrame = CFrame.lookAt(dss, ewrq)

return true
end

ifi.worldBoss.cityBounds = { 19100, 20900, -850, 850 }

function ifi.worldBoss.inArena()
local jgxm = mtxf.Character and mtxf.Character:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))
local iwnt = ifi.worldBoss.cityBounds

if not jgxm then
return false
end

local yuf = jgxm.Position

return yuf.X >= iwnt[1] and yuf.X <= iwnt[2]
and yuf.Z >= iwnt[3] and yuf.Z <= iwnt[4]
end

function ifi.worldBoss.enterCity(akgx)
local ujmx = ifi.worldBoss

local yei = os.clock() + (akgx or 30)

if ujmx.inArena() then
return true
end

while os.clock() < yei do
if not ujmx.enabled then
return false
end

ujmx.travel()

if ujmx.inArena() then
return true
end

task.wait(0.5)
end

return ujmx.inArena()
end

ifi.worldBoss.walking = false
ifi.worldBoss.walkStartedAt = 0

function ifi.worldBoss.walkLeg(glbs, qhg)
local uphk = ifi.worldBoss
local ofis = mtxf.Character
local clvp = ofis and ofis:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))
local wevw = ofis and ofis:FindFirstChildOfClass(_d("LBhZDhkWXgA"))

if not (clvp and wevw) then
return false
end

if uphk.walking and os.clock() - (uphk.walkStartedAt or 0) < 45 then
return false
end

qhg = qhg or 6

uphk.walking = true
uphk.walkStartedAt = os.clock()

local qocj, fwo = pcall(function()
local phry = os.clock() + 40
local pgug = 0
local zasp = clvp.Position
local gub = os.clock()

while uphk.enabled and os.clock() < phry do
local oji = Vector3.new(glbs.X - clvp.Position.X, 0, glbs.Z - clvp.Position.Z)

if oji.Magnitude <= qhg then
return true
end

if os.clock() - pgug >= 0.25 then
wevw:MoveTo(Vector3.new(glbs.X, clvp.Position.Y, glbs.Z))
pgug = os.clock()
end

if os.clock() - gub >= 1.2 then
if (clvp.Position - zasp).Magnitude < 2 then
wevw.Jump = true
end

zasp = clvp.Position
gub = os.clock()
end

task.wait(0.1)
end

return Vector3.new(glbs.X - clvp.Position.X, 0, glbs.Z - clvp.Position.Z).Magnitude <= qhg
end)

pcall(function()
wevw:MoveTo(clvp.Position)
end)

uphk.walking = false

return qocj and fwo == true
end

function ifi.worldBoss.walkIn(msu)
local ahfb = ifi.worldBoss
local zjed = workspace:FindFirstChild(_d("MwJGAxM7WBcedR0SF1Y"))
local pdz = zjed and (zjed:FindFirstChild(_d("JwhYAzoYTw")) or zjed) or nil
local ajua = mtxf.Character and mtxf.Character:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

if not (pdz and ajua) then
return false
end

local wkgx, rwya = pcall(function()
return pdz:GetPivot()
end)

if not wkgx then
return false
end

local fgo = rwya.Position + rwya.LookVector * 6 + Vector3.new(0, 3, 0)

if (ajua.Position - fgo).Magnitude <= (msu or 10) then
return true
end

local csla = ahfb.walkLeg(fgo, msu or 6)

if not csla then
csla = (ajua.Position - rwya.Position).Magnitude <= 25
end

return csla
end

function ifi.worldBoss.approach()
local ktxs = ifi.worldBoss

if not ktxs.walkToBoss then
return ktxs.reach()
end

if not ktxs.enterCity() then
return false
end

return ktxs.walkIn(10)
end

function ifi.worldBoss.fight()
local lry = ifi.worldBoss
local du = lry.remote(_d("MwJGAxM7WBcedQwDEFgK"))

local function wtw(nvk)
lry.nextFightAt = os.clock() + (nvk or 20)

return false
end

if not du then
return wtw(60)
end

if lry.stopAtFull and lry.meterFull() then
return wtw(20)
end

if xv.enabled
and (xv.tpToBay or xv.deepZone)
and xv.phase ~= _d("DQlYCg") then
return false
end

lry.takingUntil = os.clock() + 45

local trcb = workspace:FindFirstChild(_d("MwJGAxM7WBcedR0SF1Y"))
local fwd = trcb and (trcb:FindFirstChild(_d("JwhYAzoYTw")) or trcb) or nil
local kdf = mtxf.Character and mtxf.Character:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))

local function sjb()
if not (fwd and kdf) then
return nil
end

local dvu, whg = pcall(function()
return fwd:GetPivot()
end)

if not dvu then
return nil
end

return (kdf.Position - whg.Position).Magnitude
end

local ipv = lry.usesGameChain() and (sjb() or math.huge) <= 60

if not ipv and not lry.approach() then
lry.takingUntil = os.clock() + 3

return wtw(lry.inArena() and 3 or 20)
end

if fwd and kdf then
local dw, wpc = pcall(function()
return fwd:GetPivot()
end)

if not dw or (kdf.Position - wpc.Position).Magnitude > 60 then
lry.takingUntil = os.clock() + 2

return wtw(lry.inArena() and 2 or 10)
end
end

fu.bossTeams.applyTeam(lry.team)

task.wait(ipv and 0 or (lry.walkToBoss and 0.3 or 1.4))

pcall(function()
du:FireServer(_d("AgRTBwM"))
end)

lry.fightAt = os.clock()

lry.holdUntil = os.clock() + (lry.usesGameChain() and 0.7 or 4)

lry.takingUntil = os.clock() + 0.6

if xv.enabled and (xv.tpToBay or xv.deepZone) then
xv.deepPhase = _d("DQlYCg")
xv.deepStageAt = 0
xv.nextCastAt = 0
end

lry.killsAtFire = type(lry.state) == _d("EAxWAxI") and tonumber(lry.state.kills) or nil

if not lry.usesGameChain() and xv.enabled
and (xv.tpToBay or xv.deepZone) then
lry.nextFightAt = os.clock() + 1
end

return true
end

function ifi.worldBoss.buy(tcal)
local ynp = ifi.worldBoss
local img = ynp.remote(_d("MwJGAxM7WBcedQwDEFgK"))

tcal = tcal or 1

if not img then
return 0
end

local paj = 0

for ktq = 1, tcal do
local bfmq = ynp.state

if type(bfmq) ~= _d("EAxWAxI") or type(bfmq.shop) ~= _d("EAxWAxI") then
break
end

if os.clock() < ynp.buyAt then
break
end

local fomk = tonumber(bfmq.medals) or 0
local nly = nil

for alp, aqzn in ipairs(bfmq.shop) do
local xa = tonumber(aqzn.price) or 0
local izma = aqzn.kind ~= _d("DRlRAg") or (tonumber(aqzn.left) or 0) > 0

if ynp.selected[aqzn.id] == true and izma and aqzn.owned ~= true and xa <= fomk then
nly = aqzn
break
end
end

if not nly then
break
end

pcall(function()
img:FireServer(_d("BhhN"), nly.id, 1)
end)

paj = paj + 1
ynp.bought = ynp.bought + 1
ynp.buyAt = os.clock() + 1.2

ynp.syncedAt = 0
ynp.requestSync()
task.wait(1.1)
end

return paj
end

ifi.worldBoss.questGroups = { _d("FAhGHBgXVgg"), _d("AwFbDRYV"), _d("AgRYAw"), _d("FghHGwUQVBAEWwE") }

function ifi.worldBoss.questRows(yyyy)
local xodb = ifi.worldBoss
local lvpj = type(yyyy) == _d("EAxWAxI") and yyyy.quests or nil
local yjn = {}

if type(lvpj) ~= _d("EAxWAxI") then
return yjn
end

for tlwr, hp in ipairs(xodb.questGroups) do
local xav = lvpj[hp]

if type(xav) == _d("EAxWAxI") then
for dtpn, qhf in ipairs(xav) do
if type(qhf) == _d("EAxWAxI") then
table.insert(yjn, qhf)
end
end
end
end

return yjn
end

function ifi.worldBoss.claim()
local wjo = ifi.worldBoss
local er = wjo.remote(_d("MwJGAxM7WBcedQwDEFgK"))
local mok = wjo.state

if not er or type(mok) ~= _d("EAxWAxI") or type(mok.quests) ~= _d("EAxWAxI") then
return 0
end

if os.clock() < wjo.claimAt then
return 0
end

local qwl = wjo.questRows(mok)

if #qwl == 0 then
return 0
end

local aip = {}

for wbqj, yhgs in ipairs(qwl) do
if yhgs.id ~= nil then
aip[tostring(yhgs.id)] = true
end
end

for ghcu, fqe in pairs(wjo.claimFired) do
if not aip[ghcu] or os.clock() - fqe > 120 then
wjo.claimFired[ghcu] = nil
end
end

local jub = nil

for syf, qci in ipairs(qwl) do
if qci.complete == true and qci.claimed ~= true and qci.id ~= nil then
local sjnu = tostring(qci.id)
local drjn = wjo.claimFired[sjnu]

if not (drjn and os.clock() - drjn < 6) then
jub = qci
break
end
end
end

if not jub then
return 0
end

wjo.claimFired[tostring(jub.id)] = os.clock()
wjo.claimedTotal = wjo.claimedTotal + 1

pcall(function()
er:FireServer(_d("BwFVBho"), jub.id)
end)

wjo.claimAt = os.clock() + 2
wjo.syncedAt = 0
wjo.requestSync()

return 1
end

ifi.worldBoss.syncRemote = wfu(_d("MwJGAxM7WBceZxYZGg"))

if ifi.worldBoss.syncRemote then
ifi.worldBoss.syncRemote.OnClientEvent:Connect(function(hnqd)
local gsz = ifi.worldBoss

if type(hnqd) ~= _d("EAxWAxI") then
return
end

gsz.state = hnqd
gsz.syncedAt = os.clock()

if hnqd.inFight == true then
gsz.wasFighting = true
elseif gsz.wasFighting then
gsz.wasFighting = false

if xv.enabled then
pcall(xv.recover)
end
end
end)
end

task.spawn(function()
ifi.worldBoss.requestSync()
end)

task.spawn(function()
while hro() do
local ngq = ifi.worldBoss
local czwj = ngq.state

if ngq.autoClaim then
if os.clock() - ngq.syncedAt > 4 and os.clock() - ngq.askedAt > 1 then
ngq.requestSync()
end

ngq.claim()
end

if ngq.enabled then

if os.clock() - ngq.syncedAt > (ngq.bossUp() and 1.5 or 4) and os.clock() - ngq.askedAt > 1 then
ngq.requestSync()
end

if ngq.autoBuy and next(ngq.selected) then
ngq.buy(1)
end

local gra = type(czwj) == _d("EAxWAxI") and czwj.repeatOn == true

if ngq.usesGameChain() then

local ciq = type(czwj) == _d("EAxWAxI") and tonumber(czwj.kills) or nil

if ciq and ciq ~= ngq.seenKills then
ngq.seenKills = ciq
ngq.progressAt = os.clock()

ngq.chainWaitAt = nil
end

if ngq.bossUp() and not gra and os.clock() - (ngq.repeatAskedAt or 0) > 20 then
if ngq.approach() then
ngq.repeatSeeded = true
ngq.progressAt = os.clock()

ngq.setRepeat(true)
end
end

if ngq.hasWork() and os.clock() >= ngq.holdUntil
and os.clock() >= (ngq.nextFightAt or 0)
and os.clock() - (ngq.kickAt or 0) > 0.5
and not (ngq.stopAtFull and ngq.meterFull()) then
ngq.chainWaitAt = nil
ngq.kickAt = os.clock()
ngq.fight()
elseif not ngq.hasWork() then
ngq.chainWaitAt = nil
end

if not ngq.bossUp() then
ngq.chainWaitAt = nil

if gra and os.clock() - (ngq.repeatAskedAt or 0) > 6 then
ngq.repeatSeeded = false
ngq.setRepeat(false)
end
end
elseif ngq.isOpen() and gra and os.clock() - (ngq.repeatAskedAt or 0) > 6 then
ngq.setRepeat(false)
end

local oui = type(czwj) == _d("EAxWAxI") and tonumber(czwj.kills) or nil

if ngq.killsAtFire ~= nil and oui == ngq.killsAtFire
and os.clock() - (ngq.fightAt or 0) > (ngq.inArena() and 2.5 or 9)
and os.clock() < (ngq.nextFightAt or 0)
and os.clock() >= ngq.holdUntil then
ngq.killsAtFire = nil
ngq.nextFightAt = os.clock()
end

if not ngq.usesGameChain() and ngq.hasWork() and os.clock() >= ngq.holdUntil
and os.clock() >= (ngq.nextFightAt or 0)
and not (ngq.stopAtFull and ngq.meterFull()) then

local bdqu = ztry()
local hvyb = svub.roleSlot(_d("Ch1X")) or 1
local tkd = svub.enabled and svub.busy(hvyb)

if not bdqu and not tkd then
ngq.fight()
end
end
end

local wdq = ngq.bodyText()

if ngq.bodyParagraph and wdq ~= ngq.bodyShown then
ngq.bodyShown = wdq

pcall(function()
ngq.bodyParagraph:UpdateBody(wdq)
end)
end

local ggb = ngq.shopText()

if ngq.shopParagraph and ggb ~= ngq.shopShown then
ngq.shopShown = ggb

pcall(function()
ngq.shopParagraph:UpdateBody(ggb)
end)
end

task.wait(0.5)
end
end)

function svub.roomsHaveWork()
if not nfhp.enabled then
return false
end

local ily = nfhp.progress

if ily == nil then
return true
end

for vw, uamy in ipairs(wq.Milestones) do
if wq.isMilestoneUnlocked(uamy, ily) and not wq.isMilestoneCleared(uamy, ily) then
return true
end
end

return false
end

function svub.raidHasWork()
if not ifi.enabled then
return false
end

local mx = pbw:FindFirstChild(_d("NgxdCyQNVhAYRw"))

if not mx then
return false
end

if not (mx:GetAttribute(_d("LR57HxIX")) == true or mx:GetAttribute(_d("IgJGDBId")) == true) then
return false
end

for ljg, cpdz in ipairs({ 1, 2 }) do
local kye = (cpdz ~= 1 and not svub.splitNpc()) and 1 or nil
local xpcl = ifi.picks[kye or cpdz] and ifi.bossFor(cpdz, kye)

if xpcl and ifi.cleared[xpcl] ~= ibd(xpcl) then
return true
end
end

return false
end

function svub.towerYields()
return ztry()
or svub.roomsHaveWork()
or svub.raidHasWork()
or ifi.worldBoss.hasWork()
end

function svub.towerOutranks()
return not svub.enabled and (dj.active() or nbpq.run.enabled)
end

local function kku(xbc)
if not xbc then
return false
end

local uc = false

for lrlq, tdm in ipairs(getconnections(xbc.MouseButton1Click)) do
local jli = tdm.Function

if type(jli) == _d("AhhaDAMQWAo") then
pcall(jli)
else
pcall(function()
tdm:Fire()
end)
end

uc = true
end

return uc
end

function ff()
for iox, mrhr in ipairs({ _d("JgxAGxsccBEE"), _d("JgxAGxsccBEEBg") }) do
local ynum = sfed:FindFirstChild(mrhr)

if ynum then
local ruy = ynum:FindFirstChild(_d("JgxAGxscZAcfUQoZ"))
local dgj = ruy and ruy:FindFirstChild(_d("NRhdDBw+XhIIYR81DEMQAlo"))

if kku(dgj) then
return true
end

local leny = ynum:FindFirstChild(_d("IgFbAAUqVBYIUQE"))
local aagx = leny and leny:FindFirstChild(_d("JgJAGxgUdQUf"))
local lwic = aagx and aagx:FindFirstChild(_d("IwRCCiIJdREZQAAZ"))

if kku(lwic) then
return true
end
end
end

local ocs = pbw:FindFirstChild(_d("NghZAAMcRA"))
local gry = ocs and ocs:FindFirstChild(_d("IwRCCiIJYwsaUR0"))
local migz = ocs and ocs:FindFirstChild(_d("IQNQOxgOUhY/UQIYDVI"))

if not (gry or migz) then
return false
end

if gry then
pcall(function()
gry:FireServer()
end)
end

if migz then
pcall(function()
migz:FireServer(1)
end)
end

ol.manualPause = false
ol.floor = nil
awfr.restorePause()

return true
end

local tpjw = ff

function ff()

ol.lastGiveUp = {
at = os.time(),
clock = os.clock(),
floor = ol.floor,
parked = awfr.parked(),
active = lhg(),
hard = awfr.hardNow(),
nightmare = ol.nightmare == true,
caller = debug.traceback(_d(""), 2),
}

local nvqv = tpjw()

if nvqv then
dvw.armedAt = os.clock()
end

return nvqv
end

function keq(hlt)

local fpfc = false

if hlt ~= false and lhg() then
local mtoh = mqst()

if mtoh then
fpfc = awfr.pauseAt(true, mtoh) or fpfc

ol.pauseArmed = true
end
end

for yj, ghw in ipairs({ _d("JgxAGxsccBEE"), _d("JgxAGxsccBEEBg") }) do
local whxs = sfed:FindFirstChild(ghw)

if whxs then
local zuqy = whxs:FindFirstChild(_d("JgxAGxscZAcfUQoZ"))
local jcut = zuqy and zuqy:FindFirstChild(_d("NRhdDBw7RQEMXy0CDUMLAw"))

if jcut then

if tostring(jcut.Text):find(_d("hvGn"), 1, true) then
fpfc = true
elseif kku(jcut) then
fpfc = true
end
end

local grx = whxs:FindFirstChild(_d("IgFbAAUqVBYIUQE"))

if grx and grx.Visible then
local idbh = grx:FindFirstChild(_d("JgJAGxgUdQUf"))
local nym = idbh and idbh:FindFirstChild(_d("MAxfCjULUgUGdhoDDVgK"))

if kku(nym) then
fpfc = true
end
end
end
end

return fpfc
end

function dj.pauseRun()
if not lhg() then
pcall(function()
nnc:Dialog({
Title = _d("NAxBHBJZfhcBVQETWX8FH1AMGAtS"),
Description = _d("KgIUGxgOUhZNRhoZWV4XTVgGARwXFgRTBwNZWQsaGE8EFhcQBVEdElleF01aAAMRXgoKFBsYWUcFGEcKWQ"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})
end)

return
end

dj.paused = true
dj.manualPause = true
local kotu = keq(false)

pcall(function()
nnc:Notify({
Title = _d("NAxBHBJZfhcBVQETWX8FH1AMGAtS"),
Description = kotu and _d("MAJDCgVZRREDFB8WDEQBCRo") or _d("NhhaTx4KFwgEQgpbWVURGRQBGFlVFghVBFcbQhAZWwFXH1gRA1BB"),
Lifetime = 5,
})
end)
end

function dj.giveUpRun()
if not lhg() then
pcall(function()
nnc:Dialog({
Title = _d("IwRCClcsR0QkRwMWF1NEJVUdExpYFgg"),
Description = _d("KgIUGxgOUhZNRhoZWV4XTVgGARwXFgRTBwNZWQsaGE8EFhcQBVEdElleF01aAAMRXgoKFBsYWVANG1FPAgkZ"),
Buttons = {
{
Name = _d("IwJATx4N"),
},
},
})
end)

return
end

dj.gaveUp = true
dj.paused = true
local acu = ff()

pcall(function()
nnc:Notify({
Title = _d("IwRCClcsR0QkRwMWF1NEJVUdExpYFgg"),
Description = acu and _d("IwxCClcMR0QZXApXGkIWH1EBA1lDCxpRHVcfWwsCRkE") or _d("NhhaTx4KFwgEQgpbWVURGRQBGFlQDRtRTwIJFwYYQBsYFxcCAkEBE1c"),
Lifetime = 5,
})
end)
end

task.spawn(function()
while hro() do

pcall(awfr.pinMode)

if ol.pauseArmed and not gfiu.enabled
and (not ol.enabled or not ol.paused) then
awfr.restorePause()

if awfr.pauseState() ~= true then
ol.pauseArmed = false
end
end

if ol.enabled and not ol.manualPause and svub.towerSlot() ~= nil
and not nbpq.run.enabled then

local mkga = os.clock() - (ol.floorAt or 0) > 12
and os.clock() - (ol.battleAt or 0) > 12

local qvzh = svub.towerSlot() == 1 and not ol.paused
and not (gfiu.enabled and gfiu.floor > 0)
and mkga
and awfr.parked()

if qvzh then
ol.parkedAt = ol.parkedAt > 0 and ol.parkedAt or os.clock()

if os.clock() - ol.parkedAt >= 25 then
ol.parkedAt = os.clock()
ff()
end
else
ol.parkedAt = 0
end

local oto = awfr.hardPickNow()

local iie = not ol.paused and not ol.pending
and not (gfiu.enabled and gfiu.floor > 0)
and lhg()
and oto ~= nil
and oto ~= (ol.nightmare == true)

if iie then
ol.modeWrongAt = ol.modeWrongAt or os.clock()
else
ol.modeWrongAt = nil
end

if ol.modeWrongAt and os.clock() - ol.modeWrongAt > 20
and os.clock() - (ol.modeFixAt or 0) > 20 then
ol.modeFixAt = os.clock()
ol.modeWrongAt = nil
awfr.endIfWrongMode(ol.nightmare == true)
end

if (ol.floorAt or 0) > 0 and not ol.paused
and os.clock() - ol.floorAt > 60
and os.clock() - (ol.battleAt or 0) > 60
and not lhg()
and not svub.busy(svub.towerSlot() or 1) then
ol.floorAt = 0
ol.battleAt = 0
ol.floor = nil
end

if not svub.enabled and (svub.towerOutranks() or svub.towerYields()) then
if not ol.paused then
ol.paused = true
keq()
end

elseif svub.slotFree(svub.towerSlot() or 1)
and (ol.floorAt or 0) == 0
and not fu.bossTeams.swapHold then
local vg = mqst()
local tyuh = gfiu.enabled and gfiu.floor or 0
local ktg = tyuh > 0 and vg ~= nil and vg >= tyuh

if ktg then
if not ol.paused then
ol.paused = true
keq()
end
else

if ol.paused then
ol.paused = false
awfr.restorePause()
end

if not (ol.pending and os.time() < ol.pendingUntil) then

fu.bossTeams.applyTower(_d("EAJDCgU"), 1)

awfr.hardPick(ol.nightmare == true)
lg.EndTowerRemote:FireServer(1)
task.wait(0.25)

lg.StartBattle:FireServer(_d("EAJDCgU"), { hard = ol.nightmare == true })

cuyd.triggered = false
cuyd.weatherTriggered = false

ol.floorAt = os.clock()

ol.floor = nil
ol.pending = true
ol.pendingUntil = os.time() + 8
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while hro() do
if dj.active() and svub.hardcoreSlot() ~= nil then
local tfk = svub.hardcoreSlot() or 1
local xqb = dj.floorNow()

local aoo = gfiu.enabled and gfiu.floor or 0
local eet = cuyd.enabled and cuyd.floor or 0

if aoo <= 0 and not dj.stoodDown and not dj.manualPause
and not fu.bossTeams.swapHold then
dj.paused = false
end

if dj.gaveUp then

elseif eet > 0 and xqb and xqb >= eet then
dj.gaveUp = true
dj.paused = true
local beo = ff()

pcall(function()
nnc:Notify({
Title = _d("JRhAAFc+XhIIFDoH"),
Description = beo and (_d("IwxCClcMR0QMQE8fGEUADlsdEllRCAJbHVc") .. xqb .. _d("Sg")) or (_d("LAxGCxQWRQFNUgMYFkVE") .. xqb .. _d("RB9RDhQRUgBBFA0CDRcKAhQIHg9SRBhETxUMQxACWk8RFkIKCRo")),
Lifetime = 5,
})
end)
elseif xqb and aoo > 0 and xqb >= aoo then
if not dj.paused then
dj.paused = true
keq(false)
end
elseif not svub.enabled and svub.towerYields() then

if not dj.stoodDown then
dj.stoodDown = true
dj.paused = true
keq(false)
end
elseif dj.stoodDown then

dj.stoodDown = false
dj.paused = false
elseif not dj.paused and not fu.bossTeams.swapHold then
if svub.slotFree(tfk) and not (dj.pending and os.time() < dj.pendingUntil) then
dj.start(tfk)
task.wait(2)
end
end
end

task.wait(1)
end
end)

function svub.slotActivity(sivc)
if not svub.busy(sivc) then
return nil
end

local ghr = svub.role[sivc]
local pzf = sfed:FindFirstChild(sivc == 2 and _d("JgxAGxsccBEEBg") or _d("JgxAGxsccBEE"))
local pon = pzf and pzf:FindFirstChild(_d("NhhaKRsWWBYhVQ0SFQ"))
local hgr = pon and pon.Text or _d("")

if nfhp.enabled and ghr == _d("Ch1X") then
local hzs = hgr:match(_d("Oj9bABpcRE9FEQtcUA"))

if hzs then
return _d("LQNSBhkQQwFNRgAYFEREQBQdGBZaRA") .. hzs
end
end

if svub.isTowerRole(ghr)
and (ol.enabled or nbpq.run.enabled or dj.active()) then
local smsb = hgr:match(_d("OitYABgLEhdGHEoTUh4"))

if smsb then
return svub.roleName(sivc) .. _d("REAUCRsWWBZN") .. smsb
end
end

return nil
end

function svub.statusText()
if not svub.enabled then
return _d("JRhAAFcqWwsZFAARHxdJTVEZEgtOEAVdARBZRREDR08YFxcXAVsbV0gZ")
end

local dne = {}

for jg = 1, 2 do
local kyva = _d("NwFbG1c") .. tostring(jg) .. _d("REAU")
local ach = svub.slotActivity(jg)

if jg == 2 and svub.hasSlot2 == false then
kyva = kyva .. svub.roleLabel(jg) .. _d("REAUAxgaXAEJFEcZHFIAHhQbHxwXIBhVA1c7VhAZWApXKlsLGR0")
elseif ach then
kyva = kyva .. ach
elseif svub.busy(jg) then
kyva = kyva .. svub.roleLabel(jg) .. _d("REAUCR4eXxAEWgg")
else
kyva = kyva .. svub.roleLabel(jg) .. _d("REAUBhMVUg")
end

table.insert(dne, kyva)
end

return table.concat(dne, _d("bmc"))
end

task.spawn(function()
while hro() do
svub.hasSlot2 = svub.detectSlot2()
task.wait(5)
end
end)

task.spawn(function()
while hro() do

if not dj.island and gfiu.enabled and gfiu.floor > 0 then
local cxak = mqst()

if cxak and cxak >= gfiu.floor then
if not gfiu.triggered then
gfiu.triggered = true
keq()

pcall(function()
lg.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = cxak,
})
end)
end
else
gfiu.triggered = false
end
end

if not dj.island and cuyd.enabled and cuyd.floor > 0 then
local qzyf = mqst()

if qzyf and qzyf >= cuyd.floor then

if not cuyd.triggered and lhg() then
cuyd.triggered = true
local lxuc = ff()

pcall(function()
nnc:Notify({
Title = _d("JRhAAFc+XhIIFDoH"),
Description = lxuc and (_d("IwxCClcMR0QMQE8RFVgLHxQ") .. qzyf .. _d("Sg")) or (_d("IgFbAAVZ") .. qzyf .. _d("RB9RDhQRUgBBFA0CDRcKAhQIHg9SRBhETxUMQxACWk8RFkIKCRo")),
Lifetime = 5,
})
end)
end
else
cuyd.triggered = false
end
end

if not dj.island and cuyd.weatherEnabled then
local yzm = mqst()
local wt = cuyd.weatherMinFloor <= 0
or (yzm ~= nil and yzm >= cuyd.weatherMinFloor)
local iztr = wt and cuyd.weatherWanted() or nil

if iztr then
if not cuyd.weatherTriggered
and cuyd.weatherGivenFor ~= cuyd.weatherNow
and lhg() then
cuyd.weatherTriggered = true
cuyd.weatherGivenFor = cuyd.weatherNow

local nbtc = ff()

pcall(function()
nnc:Notify({
Title = _d("MwhVGx8cRUQqXRkSWWIU"),
Description = nbtc
and (_d("IwxCClcMR0QMQE8RFVgLHxQ") .. tostring(yzm) .. _d("RARaTw") .. iztr .. _d("Sg"))
or (iztr .. _d("RARHTwIJG0QPQRtXF1hECl0ZEllCFE1WGgMNWApNVQEEDlIWCFBB")),
Lifetime = 5,
})
end)
end
else
cuyd.weatherTriggered = false
end
end

task.wait(1)
end
end)

task.spawn(function()
if lg.WeatherChanged then
pcall(function()
lg.WeatherChanged.OnClientEvent:Connect(function(bnyy)

cuyd.weatherNow = nil
cuyd.weatherAt = 0
cuyd.weatherGivenFor = nil
dvw.weatherSpent = nil

if type(bnyy) == _d("FxlGBhke") then
cuyd.weatherNow = bnyy
end
end)
end)
end

while hro() do
if os.clock() - cuyd.weatherAt > 5 then
cuyd.weatherAt = os.clock()

if lg.RequestWeatherState then
local vet, sp = pcall(function()
return lg.RequestWeatherState:InvokeServer()
end)

if vet and type(sp) == _d("FxlGBhke") then
if cuyd.weatherNow ~= nil and cuyd.weatherNow ~= sp then
dvw.weatherSpent = nil
cuyd.weatherGivenFor = nil
end

cuyd.weatherNow = sp
end
end
end

task.wait(1)
end
end)

task.spawn(function()
local fqs = nil
local qmu = nil
local qh = 0

while hro() do

if (dvw.onWeather or dvw.afterGiveUp) and os.clock() - qh > 60 then
qh = os.clock()

pcall(function()
lg.RequestItemSync:FireServer()
end)
end

if dvw.onWeather and next(dvw.weatherPotions) ~= nil then
local nozg = cuyd.weatherWanted(dvw.weathers)

if nozg and cuyd.weatherNow ~= dvw.weatherSpent then

dvw.weatherSpent = cuyd.weatherNow
dvw.pop(dvw.weatherPotions, dvw.weatherAmount, _d("MwhVGx8cRUQ") .. nozg)
end
end

if dvw.afterGiveUp and next(dvw.giveUpPotions) ~= nil and dvw.armedAt > 0 then

local vds = os.clock() - dvw.armedAt

if not lhg() or vds >= 3 then
if vds <= 30 then
dvw.armedAt = 0
dvw.pop(dvw.giveUpPotions, dvw.giveUpAmount, _d("JQtACgVZUA0bUU8CCQ"))
else

dvw.armedAt = 0
end
end
end

local tcoj = dvw.status()

if tcoj ~= fqs then
fqs = tcoj

pcall(function()
dvw.weatherParagraph:UpdateBody(tcoj)
end)
end

local pbd = dvw.giveUpStatus()

if pbd ~= qmu then
qmu = pbd

pcall(function()
dvw.giveUpParagraph:UpdateBody(pbd)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while hro() do
local qo = xv.stick

if qo.enabled and os.clock() >= qo.at then
qo.at = os.clock() + 3

local bpl = nil

for mtjw, rib in ipairs(workspace:GetDescendants()) do
if (rib:IsA(_d("JgxHCicYRRA")) or rib:IsA(_d("KQJQChs")))
and qo.names[string.lower(rib.Name)] then
bpl = rib
break
end
end

local gah = mtxf.Character
local zlb = gah and gah:FindFirstChild(_d("LBhZDhkWXgA/WwADKVYWGQ"))
local pemm = bpl and (bpl:IsA(_d("JgxHCicYRRA")) and bpl or bpl:FindFirstChildWhichIsA(_d("JgxHCicYRRA"), true))

if pemm and zlb then
local lhh = pemm:FindFirstChildWhichIsA(_d("NB9bFx4UXhAUZB0YFEcQ"))
or (bpl ~= pemm and bpl:FindFirstChildWhichIsA(_d("NB9bFx4UXhAUZB0YFEcQ"), true))

if (zlb.Position - pemm.Position).Magnitude > 4 then
pcall(function()
gah:PivotTo(CFrame.new(pemm.Position + Vector3.new(0, 3, 0)))
end)

task.wait(0.4)
end

if lhh then
pcall(function()
lhh:InputHoldBegin()
task.wait(0.2)
lhh:InputHoldEnd()
end)
end

qo.hits = qo.hits + 1
qo.last = _d("FARXBBIdFxEdFA4DWQ") .. math.floor(pemm.Position.X) .. _d("SE0") .. math.floor(pemm.Position.Z)

pcall(function()
nnc:Notify({
Title = _d("KBhXBFcqQw0OXw"),
Description = qo.last,
Lifetime = 4,
})
end)
elseif bpl then
qo.last = _d("AgJBARNZ") .. bpl:GetFullName() .. _d("SE1aAAMRXgoKFBsYWUQQDFoLVxZZ")
else
qo.last = _d("CgIUHAMQVA9NXQFXDV8BTUMABRVT")
end
end

task.wait(1)
end
end)

getgenv().ACBXStick = xv.stick

task.spawn(function()

local kmnw = game:GetService(_d("MgRGGwIYWy0DRBoDNFYKDFMKBQ"))

local function ftqm()
local aln = mtxf.Character
local spzv = aln and aln:FindFirstChildOfClass(_d("LBhZDhkWXgA"))

if spzv and spzv.Health > 0 then
pcall(function()
spzv.Jump = true
end)
end

pcall(function()
kmnw:SendKeyEvent(true, Enum.KeyCode.Space, false, mtxf)
end)

task.wait(0.05)

pcall(function()
kmnw:SendKeyEvent(false, Enum.KeyCode.Space, false, mtxf)
end)

efnx.jumps = efnx.jumps + 1
end

while hro() do
if efnx.enabled and os.clock() >= efnx.nextAt then
efnx.nextAt = os.clock() + 300
ftqm()
end

task.wait(1)
end
end)

nnc:SetState(true)

task.defer(function()
local pld
for fl, nywj in ipairs(game:GetService(_d("JwJGCjAMXg")):GetDescendants()) do
if nywj:IsA(_d("MAhMGzsYVQEB")) and nywj.Text == aqo then
pld = nywj
break
end
end

if not pld then
return
end

local vth = pld
while vth and not (vth:IsA(_d("Ih9VAhI")) and vth.AbsoluteSize.X >= 600 and vth.AbsoluteSize.Y >= 400) do
vth = vth.Parent
end

if vth then
vth.AnchorPoint = Vector2.new(0, 0)

local ztav = vth.AbsoluteSize
vth.Position = UDim2.new(0.5, -ztav.X / 2, 0.5, -ztav.Y / 2 - 20)
end
end)

task.defer(function()
task.wait(0.1)

for wyc, vrou in ipairs(game:GetService(_d("JwJGCjAMXg")):GetDescendants()) do
if vrou:IsA(_d("Nw5GABsVXgoKch0WFFI")) and vrou.Name == _d("IQFRAhIXQxc+Vx0YFVsNA1M") then
vrou.CanvasPosition = Vector2.new(0, 0)
end
end
end)

getgenv().ACBXTowerRunActive = lhg
getgenv().ACBXWindow = nnc

jaj.repo = _d("Jw8GIFgYVAYV")
jaj.url = _d("DBlAHwRDGEsfVRhZHl4QBUENAgpSFg5bAQMcWRBDVwAaVnQGX3tAFhpVHEJZDh4XGAUOVhdZFUIF")
jaj.versionUrl = _d("DBlAHwRDGEsfVRhZHl4QBUENAgpSFg5bAQMcWRBDVwAaVnQGX3tAFhpVHEJZDh4XGBIIRhweFllKGUwb")

jaj.announced = false

function jaj.fetch(fvej)

local tbf, xivv = pcall(function()
return game:HttpGet(fvej .. _d("WxsJ") .. os.time() .. _d("Qh8J") .. math.random(1, 100000))
end)

if not tbf or type(xivv) ~= _d("FxlGBhke") or #xivv == 0 then
return nil
end

if xivv:find(_d("OlkEWw")) or xivv:find(_d("OiNbG1c/WBEDUA")) then
return nil
end

return xivv
end

function jaj.check()
if jaj.buildId == _d("AAhC") then
return nil, _d("AAhCTxUMXggJ")
end

if jaj.checking then
return nil, _d("BhhHFg")
end

jaj.checking = true
local gls = jaj.fetch(jaj.versionUrl)
jaj.checking = false

if not gls then
return nil, _d("CgIUGRILRA0CWk8REFsB")
end

local rx = gls:match(_d("OkhHRV9XGk1IR0VT")) or _d("")
rx = rx:gsub(_d("QR4eZVlTEw"), _d(""))

if rx == _d("") or not jaj.newer(rx) then
return nil, _d("BxhGHRIXQw")
end

return rx
end

function jaj.newer(bhgl)
local function yqmi(qhxc)
local klue, cahh = tostring(qhxc or _d("")):match(_d("ElIcShNcU0EJEQtSHRIARBFCX1xTQQkRC1IdHg"))

return klue and (klue .. cahh) or nil
end

local function iyui(axk)
local hsjk = tostring(axk or _d(""))

if not hsjk:match(_d("OkhQRFJXCEEJHks")) then
return nil
end

local ed = {}

for sz in hsjk:gmatch(_d("QQkf")) do
ed[#ed + 1] = tonumber(sz) or 0
end

return #ed > 0 and ed or nil
end

local ugss, zgas = iyui(bhgl), iyui(jaj.buildId)

if ugss and zgas then
for fmwk = 1, math.max(#ugss, #zgas) do
local ogn = ugss[fmwk] or 0
local ksd = zgas[fmwk] or 0

if ogn ~= ksd then
return ogn > ksd
end
end

return false
end

if ugss or zgas then
return ugss ~= nil
end

local bvh, vev = yqmi(bhgl), yqmi(jaj.buildId)

if not bvh or not vev then
return tostring(bhgl) ~= tostring(jaj.buildId)
end

return bvh > vev
end

function jaj.busy()
if fu.battlePending or fu.currentBattle then
return true
end

local agyn = getgenv().ACBXTowerRunActive

if type(agyn) == _d("AhhaDAMQWAo") then
local saz, gble = pcall(agyn)

if saz and gble then
return true
end
end

return false
end

function jaj.apply(qhr)
if jaj.applying then
return false
end

jaj.applying = true

local fxev = jaj.fetch(jaj.url)

if not fxev then
jaj.applying = false
warn(_d("Pyx3LS8kFxEdUA4DHA1EDlsaGx0XCgJATxMWQAoBWw4TWQ") .. tostring(qhr) .. _d("SE1HGxYAXgoKFAAZWQ") .. jaj.buildId)

pcall(function()
nnc:Notify({
Title = _d("MR1QDgMcFwIMXQMSHQ"),
Description = _d("JwJBAxNZWQsZFAsYDlkIAlULVw") .. tostring(qhr) .. _d("Sk1nGx4VW0QfQQEZEFkDTQ") .. jaj.buildId .. _d("Sg"),
Lifetime = 8,
})
end)

return false
end

local obh, ubbx = loadstring(fxev)

if not obh then
jaj.applying = false
warn(_d("Pyx3LS8kFxEdUA4DHA1E") .. tostring(qhr) .. _d("RAlbCgRZWQsZFAwYFEcNAVFPWlk") .. tostring(ubbx))

pcall(function()
nnc:Notify({
Title = _d("MR1QDgMcFxYIXgoUDVIA"),
Description = _d("JhhdAxNZ") .. tostring(qhr) .. _d("RAtVBhscU0QZW08UFloUBFgKWVlkEARYA1cLQgoDXQEQWQ") .. jaj.buildId .. _d("Sg"),
Lifetime = 8,
})
end)

return false
end

pcall(function()
nnc:Notify({
Title = _d("MR1QDgMQWQM"),
Description = _d("NghYABYdXgoKFA") .. jaj.buildId .. _d("REAKTw") .. qhr .. _d("Sg"),
Lifetime = 4,
})
end)

task.wait(0.4)

jaj.cameFrom = jaj.buildId
getgenv().ACBXUpdatedFrom = jaj.buildId

pcall(function()
nnc:Unload()
end)

getgenv().ACBXWindow = nil

task.wait(0.5)

local jgsg, cpd = pcall(obh)

if not jgsg then
jaj.applying = false
warn(_d("Pyx3LS8kFxEdUA4DHA1E") .. tostring(qhr) .. _d("RBlcHRIOFwsDFAMYGFNEQBQ") .. tostring(cpd))
return false
end

return true
end

jaj.cameFrom = getgenv().ACBXUpdatedFrom

task.defer(function()
if jaj.cameFrom then
getgenv().ACBXUpdatedFrom = nil
print(_d("Pyx3LS8kFwYYXQMTWQ") .. jaj.buildId .. _d("REVBHxMYQwEJFAkFFlpE") .. tostring(jaj.cameFrom) .. _d("TQ"))

pcall(function()
nnc:Notify({
Title = _d("MR1QDgMcUw"),
Description = _d("NhhaAR4XUEQ") .. jaj.buildId .. _d("SE1SHRgUFw") .. tostring(jaj.cameFrom) .. _d("Sg"),
Lifetime = 6,
})
end)

return
end

print(_d("Pyx3LS8kFwYYXQMTWQ") .. jaj.buildId)
end)

task.defer(function()
task.wait(12)

if jaj.announced or jaj.buildId == _d("AAhC") or jaj.enabled then
return
end

jaj.announced = true

local tja = jaj.check()

if not tja then
return
end

print(_d("Pyx3LS8kFwYYXQMTWQ") .. jaj.buildId .. _d("RARHTxUcXw0DUE8") .. tostring(tja) .. _d("SE1VARNZQhQJVRsSChcFH1FPGB9R"))
print(_d("Pyx3LS8kFwgCVQtXEENEGl0bH0MXCAJVCwQNRQ0DU0cQGFoBV3wbAwlwARkcTQ") .. jaj.url .. _d("RkQdR14"))

pcall(function()
nnc:Notify({
Title = _d("MR1QDgMcFwUbVQYbGFUICA"),
Description = _d("NhhaAR4XUEQ") .. jaj.buildId .. _d("SE0") .. tostring(tja) .. _d("RARHTxgMQ0pNZgpaHE8BDkEbEllDC01YABYdFw0ZGg"),
Lifetime = 10,
})
end)
end)

task.spawn(function()

task.wait(8)

while hro() do
if not jaj.enabled then

task.wait(5)
else
local sftp = jaj.check()
local mjoj = jaj.interval

if sftp then
if jaj.pendingVersion ~= sftp or not jaj.pendingSince then
jaj.pendingVersion = sftp
jaj.pendingSince = os.clock()
end

local hks = os.clock() - (jaj.pendingSince or os.clock())

if not jaj.busy() or hks >= jaj.forceAfter then
if jaj.apply(sftp) then

xe = false
return
end

jaj.pendingSince = os.clock()
mjoj = jaj.retry
else
mjoj = jaj.retry
end
else
jaj.pendingVersion = nil
jaj.pendingSince = nil
end

task.wait(mjoj)
end
end
end)
getgenv().ACBXUpdater = jaj

task.defer(function()
task.wait(0.9)

local ju = ou.loadUi()

if type(ju) ~= _d("EAxWAxI") then
return
end

print(_d("Pyx3LS8kFwgCWwRXC1IXGVsdEh0NRA") .. tostring(ju.theme) .. _d("RAxATw") .. tostring(ju.scale))
end)

local function diaz()
if not hro() then
return
end

local lhzx = false
local igay = false

pcall(function()
lhzx = ol.nightmareToggle:GetState() == true
igay = ol.ui:GetState() == true
end)

if not (lhzx or igay) then
return
end

ol.nightmare = lhzx
ol.enabled = true
ol.manualPause = false
ol.paused = false
ol.parkedAt = 0
ol.modeWrongAt = nil
ol.pending = false
ol.pendingUntil = 0

awfr.restorePause()
ol.pauseArmed = false
awfr.hardPick(lhzx)

if not lhg() then
ol.floorAt = 0
ol.battleAt = 0
ol.floor = nil
end

print(_d("Pyx3LS8kFxACQwoFWUUBHkECEh0XBQtACgVZRQEBWw4TQxc") .. (lhzx and _d("CgRTBwMUVhYI") or _d("CgJGAhYV")))
end

task.defer(function()
task.wait(1)

local dnxm = ou.autoLoadName()

if not dnxm then
return
end

local fbm, excy = ou.load(dnxm)

task.delay(2, diaz)

ou.selected = dnxm
ou.lastText = fbm and (_d("JRhAAFcVWAUJUQtX") .. dnxm .. _d("Sg"))
or (_d("JRhAAFcVWAUJFAkWEFsBCQ5P") .. tostring(excy))
ou.savesAt = 0

pcall(function()
ou.fileDropdown:UpdateSelection(dnxm)
end)

pcall(function()
nnc:Notify({
Title = _d("JwJaCR4e"),
Description = fbm and (_d("KAJVCxIdFw") .. dnxm .. _d("RAJaTwQNVhYZGg"))
or (_d("JwJBAxNZWQsZFAMYGFNE") .. dnxm .. _d("Xk0") .. tostring(excy)),
Lifetime = 5,
})
end)
end)

task.defer(function()
task.wait(3)

local jdv = ifi.worldBoss
local crcr = ou.loadBossMode()

if not crcr or type(jdv.applyFishingMode) ~= _d("AhhaDAMQWAo") then
return
end

pcall(function()
jdv.applyFishingMode(crcr)
jdv.fishingDropdown:UpdateSelection(crcr)
end)
end)

task.defer(function()
task.wait(3)

if ou.autoLoadName() then
return
end

diaz()
end)
