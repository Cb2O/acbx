local _d = (function()
local A = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local M = {}
local cache = {}
for i = 1, #A do
M[string.sub(A, i, i)] = i - 1
end
local K = string.char(110, 101, 117, 53, 121, 57, 116)
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

local mlf = "ACB Rebirth v0.996"

local function jre(lst)
for afy, wp in ipairs(lst:GetDescendants()) do
if wp:IsA(_d("OgANQTVYFgsJ")) and wp.Text == mlf then
local hcz = wp
while hcz and not hcz:IsA(_d("PQYHUBxXMxsM")) do
hcz = hcz.Parent
end
return hcz
end
end
end

local function yq()
local hb = game:GetService(_d("PgkUTBxLBw")).LocalPlayer

for rcux, hub in ipairs({
(gethui and gethui() or game:GetService(_d("LQoHUD5MHQ"))),
game:GetService(_d("LQoHUD5MHQ")),
hb and hb:FindFirstChild(_d("PgkUTBxLMxsM")),
}) do
for ha, zgrc in ipairs(hub:GetChildren()) do

if zgrc:IsA(_d("PQYHUBxXMxsM")) then
local eppg = zgrc:FindFirstChild(_d("LAQGUA"))

if eppg and eppg:FindFirstChild(_d("PQwRUBtYBg")) and eppg:FindFirstChild(_d("LQobQRxXAA")) then
return zgrc
end
end
end
end
end

if yq() and getgenv().ACBXAllowReload ~= true then
local vecc = getgenv().ACBXWindow
local tt = false
local xo = false

if vecc and vecc.Dialog then
pcall(function()
if vecc.GetState and vecc:GetState() == false then
vecc:SetState(true)
end

vecc:Dialog({
Title = _d("LyY3FStcFgcXAV1ZUAdOBBlHHFgQF0UHQBdXHQAC"),
Description = _d("L0UWWglAVAcWVVQVSxEPAQwVFVYVCgARFRBXVBoNHEZZShEdFhxaFxdUPAAFWRhaEU4MARUOUAAGRQFdEEpUAQsQClltHAtFB0AXVx0AAlVWFkkNThYBWglKVAgMB0YNFVQdClVaF1UNTgobUFlcAgsXVVELUAILFlVBEVxUDwYWWgxXAEA"),
Buttons = {
{
Name = _d("PAAFWRhaEQ"),
Callback = function()
xo = true
tt = true
end,
},
{
Name = _d("JQAQRQ"),
Callback = function()
tt = true
end,
},
},
})
end)
else

xo = true
tt = true
end

local agi = os.clock() + 90

while not tt and os.clock() < agi do
task.wait(0.25)
end

if not xo then
warn(_d("NSQ2dyFkVAIKFFFZSxEIEAZQHRlZThEdUFlaGx4cVUERWABODAYVC0waAAwbUllKAA8cBhtZehgHBh4VK1wEAgQWUFlNG04WAlQJGR0aSVVaCxkBHQBVYBdVGw8BVUYaSx0eEVVcFxkdGhZVZhxNAAcLEkZZTRUMSw"))

return
end

warn(_d("NSQ2dyFkVBwABVkYWh0AAlVBEVxUHBAbWxBXE04GGkUAGQMHER0VDVEdHUUaWxwX"))
end

getgenv().ACBXAllowReload = nil

local tuhh = getgenv().ACBXWindow
if tuhh then
pcall(function()
tuhh:Unload()
end)
end

for csu, tnr in ipairs({
game:GetService(_d("LQoHUD5MHQ")),
game:GetService(_d("PgkUTBxLBw")).LocalPlayer:FindFirstChild(_d("PgkUTBxLMxsM")),
}) do
if tnr then
local injg = jre(tnr)
if injg then
injg:Destroy()
end
end
end

local fpoo = game:GetService(_d("PgkUTBxLBw"))
local jw = game:GetService(_d("PAAFWRBaFRoAEWYNVgYPAhA"))
local hl = game:GetService(_d("PgQBXR9QGgoMG1IqXAYYDBZQ"))
local gs = game:GetService(_d("PBAbZhxLAgcGEA"))
local zhiw = fpoo.LocalPlayer
local vklq = zhiw:WaitForChild(_d("PgkUTBxLMxsM"))

local bq = false

local function gcu()
pcall(function()
local kfa = game:GetService(_d("OhIQUBdqERwTHFYc"))
local cbwr = (gethui and gethui()) or vklq
local lu = Color3.fromRGB(77, 166, 255)
local yva = zhiw.DisplayName

local function kw(gee, hwxn, jlxx)
kfa:Create(
gee,
TweenInfo.new(hwxn, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
jlxx
):Play()
task.wait(hwxn)
end

local qmzv = Instance.new(_d("PQYHUBxXMxsM"))
qmzv.Name = _d("LyY3bTBXABwK")
qmzv.IgnoreGuiInset = true
qmzv.DisplayOrder = 1000000
qmzv.ResetOnSpawn = false
qmzv.Parent = cbwr

local ftw = Instance.new(_d("KBcUWBw"))
ftw.Size = UDim2.fromScale(1, 1)
ftw.BackgroundColor3 = Color3.fromRGB(4, 6, 11)
ftw.BackgroundTransparency = 1
ftw.BorderSizePixel = 0
ftw.Parent = qmzv

local wau = Instance.new(_d("KBcUWBw"))
wau.AnchorPoint = Vector2.new(0.5, 0.5)
wau.Position = UDim2.fromScale(0.5, 0.5)
wau.Size = UDim2.fromOffset(400, 176)
wau.BackgroundColor3 = Color3.fromRGB(11, 16, 26)
wau.BackgroundTransparency = 1
wau.BorderSizePixel = 0
wau.Parent = qmzv

local gmb = Instance.new(_d("Oyw2WgtXERw"))
gmb.CornerRadius = UDim.new(0, 14)
gmb.Parent = wau

local aex = Instance.new(_d("OywmQQtWHws"))
aex.Color = Color3.fromRGB(46, 60, 86)
aex.Thickness = 1
aex.Transparency = 1
aex.Parent = wau

local gotl = Instance.new(_d("KBcUWBw"))
gotl.Size = UDim2.fromOffset(44, 2)
gotl.Position = UDim2.new(0.5, -22, 0, 34)
gotl.BackgroundColor3 = lu
gotl.BorderSizePixel = 0
gotl.BackgroundTransparency = 1
gotl.Parent = wau

local poki = Instance.new(_d("OgANQTVYFgsJ"))
poki.BackgroundTransparency = 1
poki.Size = UDim2.new(1, -48, 0, 48)
poki.Position = UDim2.fromOffset(24, 42)
poki.Font = Enum.Font.GothamBold
poki.Text = _d("LSdVfSx7")
poki.TextSize = 28
poki.TextYAlignment = Enum.TextYAlignment.Center
poki.TextColor3 = Color3.fromRGB(236, 242, 255)
poki.TextTransparency = 1
poki.Parent = wau

local eq = Instance.new(_d("OgANQTVYFgsJ"))
eq.BackgroundTransparency = 1
eq.Size = UDim2.new(1, -48, 0, 20)
eq.Position = UDim2.fromOffset(24, 94)
eq.Font = Enum.Font.Gotham
eq.Text = _d("AgoUURBXEw")
eq.TextSize = 14
eq.TextColor3 = Color3.fromRGB(150, 163, 186)
eq.TextTransparency = 1
eq.Parent = wau

local kyb = Instance.new(_d("KBcUWBw"))
kyb.Size = UDim2.fromOffset(240, 3)
kyb.Position = UDim2.new(0.5, -120, 0, 130)
kyb.BackgroundColor3 = Color3.fromRGB(34, 44, 64)
kyb.BorderSizePixel = 0
kyb.BackgroundTransparency = 1
kyb.Parent = wau

local rp = Instance.new(_d("KBcUWBw"))
rp.Size = UDim2.fromScale(0, 1)
rp.BackgroundColor3 = lu
rp.BorderSizePixel = 0
rp.BackgroundTransparency = 1
rp.Parent = kyb

local ykon = Instance.new(_d("Oyw2WgtXERw"))
ykon.CornerRadius = UDim.new(0, 4)
ykon.Parent = kyb

local wctn = Instance.new(_d("Oyw2WgtXERw"))
wctn.CornerRadius = UDim.new(0, 4)
wctn.Parent = rp

kw(ftw, 0.35, { BackgroundTransparency = 0.15 })
task.spawn(function()
kw(wau, 0.3, { BackgroundTransparency = 0 })
end)
task.spawn(function()
kw(aex, 0.3, { Transparency = 0 })
end)
kw(poki, 0.3, { TextTransparency = 0 })
kw(gotl, 0.3, { BackgroundTransparency = 0 })
kw(eq, 0.3, { TextTransparency = 0 })
kw(kyb, 0.3, { BackgroundTransparency = 0 })
kw(rp, 0.3, { BackgroundTransparency = 0 })

local bt = { _d("AgoUURBXEw"), _d("AgoUURBXE0A"), _d("AgoUURBXE0BL"), _d("AgoUURBXE0BLWw") }
task.spawn(function()
kfa:Create(rp, TweenInfo.new(1.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
Size = UDim2.fromScale(1, 1),
}):Play()
for iqwi = 1, 6 do
eq.Text = bt[(iqwi - 1) % #bt + 1]
task.wait(0.2)
end
end)
task.wait(1.2)

kw(poki, 0.2, { TextTransparency = 1 })
kw(eq, 0.2, { TextTransparency = 1 })
kw(kyb, 0.2, { BackgroundTransparency = 1 })
kw(rp, 0.2, { BackgroundTransparency = 1 })

poki.Text = _d("Og0UWxJKVAgKBxUMSh0AAlVYABkHDRccRQ0")
poki.TextSize = 22
poki.TextWrapped = true
eq.Text = mlf
kw(poki, 0.25, { TextTransparency = 0 })
kw(eq, 0.25, { TextTransparency = 0 })
task.wait(1.1)
kw(poki, 0.2, { TextTransparency = 1 })
kw(eq, 0.2, { TextTransparency = 1 })

poki.Text = _d("OQAZVhZUEU4") .. yva .. _d("TjEaFTp7VCYQFw")
poki.TextSize = 22
eq.Text = _d("HREURw1QGgk")
kw(poki, 0.3, { TextTransparency = 0 })
kw(eq, 0.3, { TextTransparency = 0 })
task.wait(1.3)

kw(poki, 0.25, { TextTransparency = 1 })
kw(eq, 0.25, { TextTransparency = 1 })
kw(ftw, 0.35, { BackgroundTransparency = 1 })

qmzv:Destroy()
end)

bq = true
end

task.spawn(gcu)

local het = jw:WaitForChild(_d("PAAYWg1cBw"))

local function lw(pe, qu)
local pump = het:FindFirstChild(pe)

if pump then
return pump
end

local zdpi = het:WaitForChild(pe, qu or 3)

if not zdpi then
warn(_d("LyY3bUMZBgsIGkEcGVM") .. pe .. _d("SUUbWllVGwACEEdZXAwHFgFGWVAaThEdXAoZEw8IEBUPXAYdDBpbWRRUGg0UQVlfEQ8RAEccGR0dRRpTHw"))
end

return zdpi
end

local wpse = {
StartNPCBattle = lw(_d("PREURw13JC0nFEENVRE")),
NPCBattleResult = lw(_d("IDU2dxhNAAIAJ1AKTBga")),
SyncNPCCooldowns = lw(_d("PRwbVjdpNy0KGlkdVgMAFg")),
SetNPCDifficulty = lw(_d("PQABeyl6MAcDE1waTBgaHA")),
StartRaidBattle = lw(_d("PREURw1rFQcBN1QNTRgL")),
SetRaidDifficulty = lw(_d("PQABZxhQECoME1MQWgECEQw")),
RaidProgress = lw(_d("PAQcUSlLGwkXEEYK")),
RequestRaidProgress = lw(_d("PAAEQBxKADwEHFEpSxsJFxBGCg")),
SyncInfiniteRoomProgress = lw(_d("PRwbVjBXEgcLHEEcaxsBCCVHFl4GCxYG")),
BuyRaidItem = lw(_d("LBAMZxhQECcREFg")),
RaidShopState = lw(_d("PAQcUSpRGx42AVQNXA")),
RaidNotify = lw(_d("PAQcUTdWAAcDDA")),
SyncItems = lw(_d("PRwbVjBNEQMW")),

UseItem = lw(_d("OxYQfA1cGQ")),
RequestWeatherState = lw(_d("PAAEQBxKADkAFEERXAY9ERRBHA")),
WeatherChanged = lw(_d("OQAUQRFcBi0NFFseXBA")),
FishingUpdate = lw(_d("KAwGXRBXEzsVEVQNXA")),
FishingThrow = lw(_d("KAwGXRBXEzoNB1oO")),
FishingReel = lw(_d("KAwGXRBXEzwAEFk")),
FishingStop = lw(_d("KAwGXRBXEz0RGkU")),

FishingIslandTeleport = lw(_d("KAwGXRBXEycWGVQXXSALCRBFFksA")),

SyncCollection = lw(_d("PRwbVjpWGAIAFkEQVho")),
RequestSync = lw(_d("PAAEQBxKAD0cG1Y")),
ClaimIndexReward = lw(_d("LQkUXBRwGgoADWccThUcAQ")),
RequestAchievements = lw(_d("PAAEQBxKAC8GHVwcTxEDABtBCg")),
SyncAchievements = lw(_d("PRwbVjhaHAcAA1AUXBoaFg")),
ClaimAchievement = lw(_d("LQkUXBR4FwYMEEMcVBEAEQ")),
RequestQuests = lw(_d("PAAEQBxKAD8QEEYNSg")),
SyncQuests = lw(_d("PRwbVihMER0RBg")),
ClaimQuest = lw(_d("LQkUXBRoAQsWAQ")),
RequestPeriodicQuests = lw(_d("PAAEQBxKAD4AB1wWXR0NNABQCk0H")),
SyncPeriodicQuests = lw(_d("PRwbVilcBgcKEVwaaAELFgFG")),
ClaimPeriodicQuest = lw(_d("LQkUXBRpERwMGlEQWiUbAAZB")),

OpenFuseDialog = lw(_d("IRUQWz9MBwshHFQVVhM")),
FuseCards = lw(_d("KBAGUDpYBgoW")),
OpenDeconstructDialog = lw(_d("IRUQWz1cFwELBkELTBcaIRxUFVYT")),
DeconstructCards = lw(_d("KgAWWhdKABwQFkE6WAYKFg")),
OpenPackShop = lw(_d("IRUQWylYFwU2HVoJ")),
EquipPack = lw(_d("KxQAXAlpFQ0O")),

RequestSkillTree = lw(_d("PAAEQBxKAD0OHFkVbQYLAA")),
BuySkillNode = lw(_d("LBAMZhJQGAIrGlEc")),
OpenAccessoryShop = lw(_d("IRUQWzhaFwsWBloLQCcGCgU")),
OpenAccessoryShop2 = lw(_d("IRUQWzhaFwsWBloLQCcGCgUH")),
BuyAccessory = lw(_d("LBAMdBpaER0WGkcA")),
BuyAccessory2 = lw(_d("LBAMdBpaER0WGkcACw")),
EquipAccessory = lw(_d("KxQAXAl4Fw0ABkYWSw0")),

RedeemCode = lw(_d("PAARUBxUNwEBEA")),

OpenNPCDialog = lw(_d("IRUQWzdpNyoMFFkWXg")),
TeleportToWorld = lw(_d("OgAZUAlWBhoxGmIWSxgK")),
RaidBattleStarted = lw(_d("PAQcUTtYABoJEGYNWAYaABE")),
BattleEnd = lw(_d("LAQBQRVcMQAB")),
StartBattle = lw(_d("PREURw17FRoRGVA")),
RequestInfiniteRoomProgress = lw(_d("PAAEQBxKACcLE1wXUAALNxpaFGkGAQIHUApK")),
EndTowerRemote = lw(_d("KwsRYRZOERw3EFgWTRE")),
SaveClientData = lw(_d("PQQDUDpVHQsLAXEYTRU")),
OpenRaidShop = lw(_d("IRUQWytYHQo2HVoJ")),
RequestItemSync = lw(_d("PAAEQBxKACcREFgqQBoN")),
FishingGetState = lw(_d("KAwGXRBXEykAAWYNWAAL")),
FishingSetAuto = lw(_d("KAwGXRBXEz0AAXQMTRs")),
FishingShop = lw(_d("KAwGXRBXEz0NGkU")),
DigGetState = lw(_d("KgwSchxNJxoEAVA")),
DigShop = lw(_d("KgwSZhFWBA")),
DigAction = lw(_d("KgwSdBpNHQEL")),
DigUpdate = lw(_d("KgwSYAldFRoA")),
}

local tfz = require(jw.ModuleScripts.NPCData)
local zaa = require(jw.ModuleScripts.WorldDifficultyData)
local ih = require(jw.ModuleScripts.BossData)
local dupz = require(jw.ModuleScripts.RaidData)
local mim = require(jw.ModuleScripts.InfiniteRoomData)
local fug = require(jw.ModuleScripts.CraftData)
local vqyq = require(jw.ModuleScripts.AchievementData)
local stcg = require(jw.ModuleScripts.RaidShopData)
local dy = require(jw.ModuleScripts.ItemData)
local fiv = require(jw.ModuleScripts.CardData)
local kr = require(jw.ModuleScripts.SkillTreeData)

local kpy = {
enabled = false,
role = { _d("GgoCUAs"), _d("ABUW") },

picked = { _d("OgoCUAs"), _d("IDU2FRtYABoJEEY") },
hasSlot2 = nil,
toggle = nil,

optionsFor = {
{ _d("OgoCUAs"), _d("JgQZWRZOEQsLVUEWThEc"), _d("IDU2FRtYABoJEEY") },
{ _d("IDU2FRtYABoJEEY"), _d("JxYZVBddVAYEB1EaVgYL") },
},
roleIds = {
Tower = _d("GgoCUAs"),

[_d("JgQHURpWBgtFAVoOXAY")] = _d("BgQHURpWBgs"),
[_d("IDU2FRtYABoJEEY")] = _d("ABUW"),
[_d("JgQZWRZOEQsLVUEWThEc")] = _d("BgQZWRZOEQsL"),
[_d("JxYZVBddVAYEB1EaVgYL")] = _d("BgQHURpWBgs"),
},
roleNames = {
tower = _d("OgoCUAs"),
hardcore = _d("JxYZVBddVAYEB1EaVgYL"),
npc = _d("IDU2FRtYABoJEEY"),
halloween = _d("JgQZWRZOEQsLVUEWThEc"),
},
}

function kpy.detectSlot2()
local syx = vklq:FindFirstChild(_d("PQABQRBXEx0iAFw"))
local me = syx and syx:FindFirstChild(_d("PQkaQS1cFQNXJ1oO"), true)

if me then
return me.Visible == true
end

return nil
end

function kpy.roleSlot(mn)
if not kpy.enabled then
return 1
end

for wnfh = 1, 2 do
if kpy.role[wnfh] == mn then
return wnfh
end
end

return nil
end

function kpy.isTowerRole(zwke)
return zwke == _d("GgoCUAs") or zwke == _d("BgQHURpWBgs") or zwke == _d("BgQZWRZOEQsL")
end

function kpy.towerSlot()
return kpy.roleSlot(_d("GgoCUAs"))
end

function kpy.hardcoreSlot()
local iywi = kpy.roleSlot(_d("BgQHURpWBgs"))

if iywi == 2 and kpy.hasSlot2 == false then
return 1
end

return iywi
end

function kpy.halloweenSlot()

local xau = kpy.roleSlot(_d("BgQZWRZOEQsL"))

if xau == 1 then
return 1
end

return nil
end

function kpy.roomSlot()
local uo = kpy.roleSlot(_d("ABUW"))

if not kpy.enabled then
return 1
end

if uo == nil then
return nil
end

if uo == 2 and kpy.hasSlot2 == false then
return 1
end

return uo
end

function kpy.splitNpc()
return kpy.enabled and kpy.role[1] == _d("ABUW") and kpy.role[2] == _d("ABUW")
end

function kpy.busy(oml)
local qts = vklq:FindFirstChild(oml == 2 and _d("Jws3VA1NGAtX") or _d("Jws3VA1NGAs"))

return qts ~= nil and qts:IsA(_d("LAoaWS9YGBsA")) and qts.Value == true
end

function kpy.roleName(ym)
return kpy.roleNames[kpy.role[ym]] or kpy.roleNames.npc
end

function kpy.roleLabel(kbe)
return kpy.picked[kbe] or kpy.roleName(kbe)
end

local vivv = nil

if jw:FindFirstChild(_d("IwoRQBVcJw0XHEUNSg")) and jw.ModuleScripts:FindFirstChild(_d("JgQZWRZOEQsLIVoOXAYqBAFU")) then
local oe, wtrf = pcall(function()
return require(jw.ModuleScripts.HalloweenTowerData)
end)

if oe then
vivv = wtrf
end
end

local cbj = nil

if jw:FindFirstChild(_d("IwoRQBVcJw0XHEUNSg")) and jw.ModuleScripts:FindFirstChild(_d("KAwGXRBXEyoEAVQ")) then
local ollo, vvzv = pcall(function()
return require(jw.ModuleScripts.FishingData)
end)

if ollo then
cbj = vvzv
end
end

local function xj(peny)
return tostring(peny):reverse():gsub(_d("RkAREB0cEEc"), _d("S1RZ")):reverse():gsub(_d("MEk"), _d(""))
end

local itcd = {
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

getgenv().ACBXHalloweenUpgrades = itcd.upgrade
getgenv().ACBXHalloweenTower = itcd.run

itcd.shopData = stcg.ShopById.halloween
itcd.shopItems = {}
itcd.shopLabels = {}
itcd.cardNames = {
hw_brook = _d("LBcaWhIZXCMQBlwaWBhONh5QFVwAAQtc"),
hw_death_the_kid = _d("KgAUQREZAAYAVX4QXVRGLRRHFFYaBwZVcgxXVDkMEFkdXAZH"),
hw_barragan = _d("LAQHRxheFQBFXWYSXBgLERpbWXIdAAJc"),
}
itcd.cardShortNames = {
hw_brook = _d("LBcaWhI"),
hw_death_the_kid = _d("KgAUQREZAAYAVX4QXQ"),
hw_barragan = _d("LAQHRxheFQA"),
}

for zs, ju in ipairs(itcd.shopData.Items) do
local ev, rd = next(ju.price or {})
local afts = ju.id
local fgrb = ju.id

if ju.itemId then
local rm = dy.ById[ju.itemId]
afts = rm and (rm.name or ju.itemId) or ju.itemId
fgrb = afts
elseif ju.cardId then
afts = itcd.cardNames[ju.cardId] or (fiv.ById[ju.cardId] and fiv.ById[ju.cardId].name) or ju.cardId
fgrb = itcd.cardShortNames[ju.cardId] or afts
end

local mvm = ev == _d("BgQZWRZOEQsLKlYYVxAX") and _d("LQQbUQA") or (ev == _d("BAQWXiZWKwIEG0EcSxo") and _d("IgQbQRxLGh0") or tostring(ev))
local jq = afts .. _d("Tof1oVk") .. xj(rd) .. _d("Tg") .. mvm

table.insert(itcd.shopItems, {
id = ju.id,
label = jq,
shortName = fgrb,
currency = ev,
price = rd,
stock = ju.stock,
cardId = ju.cardId,
})

table.insert(itcd.shopLabels, jq)
end

for ejuy, nwez in ipairs({
_d("PAAEQBxKACYEGVkWThELCyBFHksVCgAG"),
_d("LBAMfRhVGAESEFAXbAQJFxRRHA"),
_d("JgQZWRZOEQsLIEUeSxUKACZBGE0R"),
_d("PAAEQBxKACYEGVkWThELCyFaDlwGPhcaUgtcBx0"),
_d("PRwbVjFYGAIKAlAcVyABEhBHKUsbCRcQRgo"),
_d("IRUQWzFYGAIKAlAcVyABEhBH"),
}) do
itcd.remote[nwez] = lw(nwez)
end

function itcd.fire(jbf, ...)
local sid = itcd.remote[jbf]

if not sid then
return
end

local hiw = { ... }

pcall(function()
sid:FireServer(table.unpack(hiw))
end)
end

function itcd.on(iv, eu)
local jul = itcd.remote[iv]

if jul then
jul.OnClientEvent:Connect(eu)
end
end

if vivv then
for lrb, jos in ipairs(vivv.Upgrades) do
table.insert(itcd.upgrades, {
id = jos.id,
name = jos.name,
maxLevel = jos.maxLevel,
})

table.insert(itcd.labels, jos.name)
end
end

function itcd.level(uis)
if not vivv then
return 0
end

return vivv.getUpgradeLevel(itcd.upgrade.levels, uis)
end

function itcd.cost(po)
if not vivv then
return nil
end

return vivv.getUpgradeCost(po, itcd.level(po))
end

function itcd.bonus(lam, ourd)
if not vivv then
return _d("")
end

return vivv.formatUpgradeBonus(lam, ourd)
end

function itcd.request()
itcd.upgrade.lastRequest = os.time()
itcd.fire(_d("PAAEQBxKACYEGVkWThELCyBFHksVCgAG"))
end

function itcd.text()
if not vivv then
return _d("JgQZWRZOEQsLVWEWThEcRRFUDVhUBxZVWxZNVAcLVUERUAdOBwBcFV1a")
end

local dd = itcd.upgrade
local zeoi = {}

if dd.balance == nil then
table.insert(zeoi, _d("PhAYRRJQGh1fVRhZERUdDhxbHhkABgBVRhxLAgsXXA"))
else
table.insert(zeoi, _d("PhAYRRJQGh1fVQ") .. xj(dd.balance))
end

for xscg, pu in ipairs(itcd.upgrades) do
local enw = itcd.level(pu.id)
local lp = itcd.cost(pu.id)
local elhd = dd.selected[pu.id] and _d("NR0oFQ") or _d("NUUoFQ")
local tjr = elhd .. pu.name .. _d("TkU5Q1k") .. enw .. _d("QQ") .. pu.maxLevel

if lp then
table.insert(zeoi, tjr .. _d("TkUbUAFNVA") .. tostring(lp) .. _d("TkU") .. itcd.bonus(pu.id, enw + 1))
else
table.insert(zeoi, tjr .. _d("TkUYVAFcEA"))
end
end

if not next(dd.selected) then
table.insert(zeoi, _d("PgwWXllMBAkXFFEcSlQHC1VBEVxUChcaRR1WAwBFFFsdGTUbERoVDEkTHAQRUAoZFhscBhUNURFOBh1QGEkRHRFVWhdcVBcKABUaWBpOBBNTFksQQA"))
end

return table.concat(zeoi, _d("ZA"))
end

function itcd.buy()
local dfi = itcd.upgrade

if dfi.waiting or dfi.balance == nil or os.time() - dfi.lastBuy < 1 then
return
end

local uq = nil
local guey = nil

for ztot, xzra in ipairs(itcd.upgrades) do
if dfi.selected[xzra.id] and os.time() >= (dfi.failedUntil[xzra.id] or 0) then
local jm = itcd.cost(xzra.id)

if jm and dfi.balance >= jm and (not guey or jm < guey) then
uq = xzra.id
guey = jm
end
end
end

if not uq then
return
end

dfi.waiting = true
dfi.lastBuy = os.time()
dfi.pendingId = uq
dfi.pendingLevel = itcd.level(uq)

dfi.balance = dfi.balance - guey

itcd.fire(_d("LBAMfRhVGAESEFAXbAQJFxRRHA"), uq)
end

itcd.on(_d("JgQZWRZOEQsLIEUeSxUKACZBGE0R"), function(xayi)
if type(xayi) ~= _d("GgQXWRw") then
return
end

local rdvs = itcd.upgrade

rdvs.balance = tonumber(xayi.balance) or 0
rdvs.levels = type(xayi.levels) == _d("GgQXWRw") and xayi.levels or {}

if rdvs.pendingId then
if itcd.level(rdvs.pendingId) <= rdvs.pendingLevel then
rdvs.failedUntil[rdvs.pendingId] = os.time() + 15
end

rdvs.pendingId = nil
end

if type(xayi.message) == _d("HREHXBde") then
rdvs.lastMessage = xayi.message
end

rdvs.waiting = false
end)

itcd.on(_d("PRwbVjFYGAIKAlAcVyABEhBHKUsbCRcQRgo"), function(nm, hexa)
itcd.run.highest = tonumber(nm) or 0
itcd.run.savedRun = type(hexa) == _d("GgQXWRw") and hexa or nil
end)

itcd.on(_d("IRUQWzFYGAIKAlAcVyABEhBH"), function(kakp, ld, od)
itcd.run.highest = tonumber(kakp) or itcd.run.highest
itcd.run.savedRun = type(od) == _d("GgQXWRw") and od or nil
end)

wpse.BattleEnd.OnClientEvent:Connect(function(rvh)
if type(rvh) == _d("GgQXWRw") and rvh.mode == _d("BwsTXBdQAAs6B1oWVA") and rvh.tower == _d("BgQZWRZOEQsL") then
itcd.run.inBattle = false
itcd.run.pending = true
itcd.run.pendingUntil = os.time() + 3

task.delay(0.3, function()
itcd.requestProgress()
end)
end
end)

function itcd.requestProgress()
itcd.run.lastRequest = os.time()
itcd.fire(_d("PAAEQBxKACYEGVkWThELCyFaDlwGPhcaUgtcBx0"))
end

function itcd.bestRoom()
local jms = itcd.run.highest

if not vivv or jms == nil then
return nil
end

for hz, jct in ipairs(vivv.Milestones) do
if vivv.isMilestoneUnlocked(jct, jms)
and not vivv.isMilestoneCleared(jct, jms) then
return jct
end
end

return nil
end

function itcd.startRun()
local ak = itcd.bestRoom()

if not ak then
return false
end

local jy = itcd.run.savedRun
local vq = type(jy) == _d("GgQXWRw") and jy.milestone == ak
local amo = vq and (tonumber(jy.currentFloor) or ak) or ak

local ephh = kpy.halloweenSlot() or 1

local vs = getgenv().ACBXAuto

vs = type(vs) == _d("GgQXWRw") and vs.bossTeams or nil

if itcd.run.teamChosen and vs and vs.applyTeam then
vs.applyTeam(itcd.run.team, ephh)
end

local nc = vklq:FindFirstChild(ephh == 2 and _d("PAAGUA17FRoRGVA/VRsBF0c") or _d("PAAGUA17FRoRGVA/VRsBFw"))

if nc and nc:IsA(_d("LAwbURhbGAsgA1AXTQ")) then
pcall(function()
nc:Fire(amo, _d("BwsTXBdQAAs6B1oWVA"))
end)
end

local cdf = vklq:FindFirstChild(ephh == 2 and _d("PREURw1wGggMG1wNXCYBChh3GE0AAgBH") or _d("PREURw1wGggMG1wNXCYBChh3GE0AAgA"))

if cdf and cdf:IsA(_d("LAwbURhbGAsgA1AXTQ")) then
pcall(function()
cdf:Fire(amo, _d("BgQZWRZOEQsL"), amo)
end)
end

itcd.run.milestone = ak
itcd.run.savedRun = nil
itcd.run.inBattle = true
itcd.run.inBattleUntil = os.time() + 120
itcd.run.pending = true
itcd.run.pendingUntil = os.time() + 10

if vq then
wpse.StartBattle:FireServer(_d("BwsTXBdQAAs6B1oWVA"), {
continue = true,
tower = _d("BgQZWRZOEQsL"),
slot = ephh,
})
else
wpse.StartBattle:FireServer(_d("BwsTXBdQAAs6B1oWVA"), {
tower = _d("BgQZWRZOEQsL"),
milestone = ak,
slot = ephh,
})
end

return true
end

local fe = {}
for rj, eko in ipairs(tfz.NPCs) do
fe[eko.name] = eko.id
end

local kpg = getgenv().ACBXCooldowns
if type(kpg) ~= _d("GgQXWRw") then
kpg = {}
getgenv().ACBXCooldowns = kpg
end

local dec = getgenv().ACBXAuto
if type(dec) == _d("GgQXWRw") and type(dec.cooldowns) == _d("GgQXWRw") then
for yng, nan in pairs(dec.cooldowns) do
if kpg[yng] == nil then
kpg[yng] = nan
end
end
end

local zo = {
enabled = false,
story = false,
storyDifficulty = _d("AAoHWBhV"),
storyDropdown = nil,
selectedByWorld = {},
difficulties = { _d("AAoHWBhV") },
walkToNpc = false,
cooldowns = kpg,
activeDifficulty = {},
lastFetch = {},
unlocked = {},
currentBattle = nil,
battlePending = false,
battlePendingUntil = 0,
}

zo.bossTeams = {
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

path = _d("LyY3bVZNEQ8IBhsTShsA"),
}

function zo.bossTeams.trackCollection()
if zo.bossTeams.collectionHooked then
return
end

zo.bossTeams.collectionHooked = true

local qca = het:FindFirstChild(_d("PRwbVjpWGAIAFkEQVho"))

if not qca then
return
end

qca.OnClientEvent:Connect(function(ti)
if type(ti) == _d("GgQXWRw") and type(ti.teams) == _d("GgQXWRw") then
zo.bossTeams.teams = ti.teams
zo.bossTeams.teamsAt = os.clock()
end
end)

task.spawn(function()

task.wait(3)

for rugd = 1, 8 do
if zo.bossTeams.teams then
return
end

local enxd = het:FindFirstChild(_d("PRIcQRpRIAsEGA"))
local mxlt = zo.bossTeams.slotTeam
local mwl = nil

if enxd and type(mxlt) == _d("CBAbVg1QGwA") then
local jx, bara = pcall(mxlt, 2)
mwl = jx and bara or nil

if not mwl then
jx, bara = pcall(mxlt, 1)
mwl = jx and bara or nil
end
end

if mwl then
pcall(function()
enxd:FireServer(mwl, false, 2)
end)
end

task.wait(6)
end
end)
end

function zo.bossTeams.teamCards(zr)
local criy = zo.bossTeams.teams

if type(criy) ~= _d("GgQXWRw") then
return nil
end

local nk = criy[zr]

if type(nk) ~= _d("GgQXWRw") then
return 0
end

local cker = 0

for kl, entc in pairs(nk) do
if type(entc) == _d("GgQXWRw") then
cker = cker + 1
end
end

return cker
end

function zo.bossTeams.raidState()
return getgenv().ACBXAutoRaid
end

function zo.bossTeams.save()
if type(writefile) ~= _d("CBAbVg1QGwA") then
return false
end

local ousv = {}

for ac, wdif in pairs(zo.bossTeams.picked) do
ousv[ac] = wdif
end

local vt = {}

for ycik, crm in pairs(zo.bossTeams.raidPicked) do
vt[ycik] = crm
end

local byox = {}

for iz, dh in pairs(zo.bossTeams.towerPicked) do
byox[iz] = dh
end

return pcall(function()
if type(makefolder) == _d("CBAbVg1QGwA") and type(isfile) == _d("CBAbVg1QGwA") and not isfile(zo.bossTeams.path) then
pcall(makefolder, _d("LyY3bQ"))
end

local zqpi = zo.bossTeams.raidState()
local oyr = zqpi and zqpi.worldBoss
local teq = nil

if oyr and oyr.teamChosen then
teq = oyr.team
end

writefile(zo.bossTeams.path, game:GetService(_d("JhEBRSpcBhgMFlA")):JSONEncode({
areas = ousv,
raids = vt,
towers = byox,
swap = zo.bossTeams.swap,
globalBoss = teq,
updatedAt = os.time(),
}))
end)
end

function zo.bossTeams.load()
if type(readfile) ~= _d("CBAbVg1QGwA") or type(isfile) ~= _d("CBAbVg1QGwA") then
return false
end

local ai, hcix = pcall(function()
if not isfile(zo.bossTeams.path) then
return nil
end

return readfile(zo.bossTeams.path)
end)

if not ai or type(hcix) ~= _d("HREHXBde") or #hcix == 0 then
return false
end

local lrn
local oau = pcall(function()
lrn = game:GetService(_d("JhEBRSpcBhgMFlA")):JSONDecode(hcix)
end)

if not oau or type(lrn) ~= _d("GgQXWRw") then
return false
end

if type(lrn.areas) == _d("GgQXWRw") then
for bcx, swfz in pairs(lrn.areas) do
local tj = tonumber(swfz)

if tj and tj >= 1 and tj <= 4 then
zo.bossTeams.picked[bcx] = tj
end
end
end

if type(lrn.raids) == _d("GgQXWRw") then
for fm, wd in pairs(lrn.raids) do
local dyc = tonumber(wd)

if dyc and dyc >= 1 and dyc <= 4 then
zo.bossTeams.raidPicked[fm] = dyc
end
end
end

if type(lrn.towers) == _d("GgQXWRw") then
for yuq, xa in pairs(lrn.towers) do
local ah = tonumber(xa)

if ah and ah >= 1 and ah <= 4 then
zo.bossTeams.towerPicked[yuq] = ah
end
end
end

if type(lrn.swap) == _d("GgQXWRw") then
local dnub = tonumber(lrn.swap.team)
local hyl = tonumber(lrn.swap.floor)

if dnub and dnub >= 1 and dnub <= 4 then
zo.bossTeams.swap.team = dnub
end

if hyl and hyl > 0 then
zo.bossTeams.swap.floor = hyl
end

local fywn = tonumber(lrn.swap.team2)
local etaq = tonumber(lrn.swap.floor2)

if fywn and fywn >= 1 and fywn <= 4 then
zo.bossTeams.swap.team2 = fywn
end

if etaq and etaq > 0 then
zo.bossTeams.swap.floor2 = etaq
end

zo.bossTeams.swap.on = lrn.swap.on == true
end

local ef = tonumber(lrn.globalBoss)
local pl = zo.bossTeams.raidState()
local bd = pl and pl.worldBoss

if ef and ef >= 1 and ef <= 4 and bd then
bd.team = ef

bd.teamChosen = true
end

return true
end

local bbr = nil
local tpbw = nil

local function yj(im, zlq)
return im .. _d("Eg") .. zlq
end

local function uv(dj, ekzo)
return zo.cooldowns[yj(dj, ekzo)] or 0
end

local function nt(man, hde, ma)
zo.cooldowns[yj(man, hde)] = ma
end

getgenv().ACBXAuto = zo

local lgd = {
enabled = false,
picks = { [1] = {}, [2] = {} },
cursor = { [1] = 1, [2] = 1 },
losses = { [1] = {}, [2] = {} },
inFlight = {},

lossLimit = 3,
difficulties = { _d("AAoHWBhV") },
walkToBoss = false,
walkSpeed = 18,
pending = {},
pendingUntil = {},
cleared = {},
progress = {},
}

getgenv().ACBXAutoRaid = lgd

lgd.worldBoss = {
enabled = false,

state = nil,
syncedAt = 0,
askedAt = 0,
fightAt = 0,
holdUntil = 0,
travelUntil = 0,

takingUntil = 0,

nextFightAt = 0,
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

fishingMode = _d("GgoSUA1RERw"),
fishingDropdown = nil,

digHold = false,

walkToBoss = false,
walkToggle = nil,

building = false,
}

zo.bossTeams.trackCollection()
zo.bossTeams.load()

function lgd.worldBoss.data()
local ur = lgd.worldBoss

if ur.module == nil then
local id, enk = pcall(function()
return require(jw.ModuleScripts.WorldBossData)
end)

ur.module = id and enk or false
end

return ur.module or nil
end

function lgd.worldBoss.clock(hbhz)
hbhz = math.max(0, math.floor(tonumber(hbhz) or 0))

local fbe = math.floor(hbhz / 3600)
local lvfo = math.floor((hbhz % 3600) / 60)
local jset = hbhz % 60

if fbe > 0 then
return string.format(_d("SwEdFVwJRgoI"), fbe, lvfo)
end

if lvfo > 0 then
return string.format(_d("SwEYFVwJRgoW"), lvfo, jset)
end

return string.format(_d("SwEG"), jset)
end

function lgd.worldBoss.status()
local wmk = nil

pcall(function()
wmk = jw:FindFirstChild(_d("OQoHWR17Gx0WJkEYTQEd"))
end)

return wmk
end

function lgd.worldBoss.isOpen()
local be = lgd.worldBoss.status()

if not be then
return nil
end

return be:GetAttribute(_d("LwYBXA9c")) == true
end

function lgd.worldBoss.window()
local gr = lgd.worldBoss.status()

if not gr then
return nil, nil
end

return tonumber(gr:GetAttribute(_d("KwsRRjhN"))), tonumber(gr:GetAttribute(_d("IAANQThN")))
end

function lgd.worldBoss.cycle()
local jc = lgd.worldBoss
local dnft = jc.data()

if not dnft or not dnft.getCycleState then
return nil
end

local vqk, rpnx = pcall(function()
return dnft.getCycleState()
end)

return vqk and rpnx or nil
end

function lgd.worldBoss.shopList()
local kb = lgd.worldBoss

if kb.items then
return kb.items
end

local ukan = {}
local xgkk = kb.data()

if not xgkk or type(xgkk.ShopItems) ~= _d("GgQXWRw") then
kb.items = ukan
return ukan
end

for xfbe, hcum in ipairs(xgkk.ShopItems) do
local gxc = nil

pcall(function()
if hcum.itemId then
local bmty = require(jw.ModuleScripts.ItemData)
local fvvo = bmty[hcum.itemId] or (bmty.ById and bmty.ById[hcum.itemId])
gxc = fvvo and fvvo.name or nil
elseif hcum.cardId then
local lab = require(jw.ModuleScripts.CardData)
local nggv = lab[hcum.cardId] or (lab.ById and lab.ById[hcum.cardId])
gxc = nggv and nggv.name or nil
end
end)

local fl = lgd.worldBoss.state

if type(fl) == _d("GgQXWRw") and type(fl.shop) == _d("GgQXWRw") then
for ggl, xp in ipairs(fl.shop) do
if xp.id == hcum.id and xp.name then
gxc = xp.name
break
end
end
end

if not gxc then

gxc = tostring(hcum.accessoryId or hcum.id or _d("UQ")):gsub(_d("MQ"), _d("Tg")):gsub(_d("RkAUHFFiURlCKB9Q"), function(ph, swkz)
return ph:upper() .. swkz
end)
end

table.insert(ukan, {
id = hcum.id,
name = gxc,
price = tonumber(hcum.price) or 0,
kind = hcum.itemId and _d("BxEQWA") or (hcum.cardId and _d("DQQHUQ") or _d("DwYWUApKGxwc")),
})
end

kb.items = ukan

return ukan
end

function lgd.worldBoss.bodyText()
local ka = lgd.worldBoss
local rlaq = ka.state

if type(rlaq) ~= _d("GgQXWRw") then
return _d("PAAUURBXE04RHVBZWxsdFlsbVw")
end

local mfc = {}
local mhtf = ka.cycle()
local kjm = ka.isOpen()
local tfb, ix = ka.window()

if kjm == nil then
kjm = rlaq.open == true
end

if kjm then
local cwi = _d("IRUQWw")

if not tfb and mhtf then
tfb = mhtf.endsAt
end

if tfb and tfb > os.time() then
cwi = cwi .. _d("TqfCFQ") .. ka.clock(tfb - os.time()) .. _d("TgkQUw0")
end

table.insert(mfc, cwi)
else
local yadr = _d("KgoCW1lfGxxFG1oO")

if not ix and mhtf then
ix = mhtf.nextAt
end

if ix and ix > os.time() then
yadr = yadr .. _d("ZCcUVhIZHQBF") .. ka.clock(ix - os.time())
end

table.insert(mfc, yadr)
end

table.insert(mfc, _d("IwARVBVKTk4") .. tostring(rlaq.medals or 0) .. _d("ZC4cWRVKTk4") .. tostring(rlaq.kills or 0))

if rlaq.inFight then
table.insert(mfc, _d("KAwSXQ1QGgk"))
elseif kjm then

table.insert(mfc, rlaq.killedThisSpawn and _d("PAAUUQAzPwcJGVAdGQAGDAYVCkkVGQtVVBVLEQ8BDA") or _d("PAAUUQA"))
end

if ka.stopAtFull then
local gixj, ygn = ka.meter()

if gixj and ygn then
local function tg(ug)
if ug >= 1000000000 then
return string.format(_d("S0tEUzs"), ug / 1000000000)
elseif ug >= 1000000 then
return string.format(_d("SwI4"), math.floor(ug / 100000) / 10)
elseif ug >= 1000 then
return string.format(_d("SwI+"), math.floor(ug / 100) / 10)
end

return tostring(math.floor(ug))
end

table.insert(mfc, _d("PQAHQxxLVAMAAVALA1Q") .. tg(gixj) .. _d("TkpV") .. tg(ygn)
.. (ka.meterFull() and _d("ZCMAWRUZWU4LGkFZXx0JDQFcF15UGg0cRllKBA8SGw") or _d("")))
end
end

return table.concat(mfc, _d("ZG8"))
end

function lgd.worldBoss.shopText()
local oy = lgd.worldBoss
local ji = oy.state

if type(ji) ~= _d("GgQXWRw") or type(ji.shop) ~= _d("GgQXWRw") then
return _d("PAAUURBXE04RHVBZShwBFVsbVw")
end

local pq = { _d("IwARVBVKTk4") .. tostring(ji.medals or 0) }

for fy, tcl in ipairs(ji.shop) do
local jty = tostring(tcl.name or tcl.id)
local pgzj = tostring(tcl.price or _d("UQ"))
local lbvj

if tcl.kind == _d("BxEQWA") then
lbvj = jty .. _d("ZA") .. pgzj .. _d("TqfCFQ") .. tostring(tcl.left or 0) .. _d("QQ") .. tostring(tcl.stock or _d("UQ")) .. _d("TgkQUw0")
elseif tcl.owned then
lbvj = jty .. _d("ZCoCWxxd")
else
lbvj = jty .. _d("ZA") .. pgzj .. _d("TqfCFRZXEU4KE1M")
end

table.insert(pq, lbvj)
end

return table.concat(pq, _d("ZG8"))
end

function lgd.worldBoss.shopOptions()
local hsbn = lgd.worldBoss

if hsbn.options then
return hsbn.options
end

local pyw = {}

hsbn.labelToId = {}

for fj, jui in ipairs(hsbn.shopList()) do
local slp = jui.name .. _d("TqfCFQ") .. tostring(jui.price)

table.insert(pyw, slp)
hsbn.labelToId[slp] = jui.id
end

hsbn.options = pyw

return pyw
end

local function ilvt(djsg)
local yd = lgd.progress[djsg]
local amh = jw:FindFirstChild(_d("PAQcUSpNFRoQBg"))
local kn = amh and amh:GetAttribute(_d("LRwWWRxwEA"))

if type(yd) == _d("GgQXWRw") then
if yd.cycleId then
kn = yd.cycleId
end

if yd.completed and yd.completedRaidId then
return tostring(kn) .. _d("VAEaWxw")
end

local ng = yd.phaseIndex or yd.phase

if ng then
return tostring(kn) .. _d("VA") .. tostring(ng)
end
end

return tostring(kn)
end

function lgd.finished(xzjj)
local yp = lgd.progress[xzjj]

return type(yp) == _d("GgQXWRw") and yp.completed == true and yp.completedRaidId == xzjj
end

function lgd.bossFor(vtuc)
local kcdc = lgd.picks[vtuc]

if not kcdc or #kcdc == 0 then
return nil
end

local nf = jw:FindFirstChild(_d("PAQcUSpNFRoQBg"))
local eupn = lgd.losses[vtuc] or {}
local ows = lgd.cursor[vtuc] or 1

for lnnh = 0, #kcdc - 1 do
local kz = (ows - 1 + lnnh) % #kcdc + 1
local cuxc = kcdc[kz]
local eg = not nf or nf:GetAttribute(_d("PAAUUQBm") .. cuxc) == true

if eg and not lgd.finished(cuxc) and (eupn[cuxc] or 0) < lgd.lossLimit then
lgd.cursor[vtuc] = kz

return cuxc
end
end

return nil
end

wpse.RaidBattleStarted.OnClientEvent:Connect(function(yk)

local ymo = type(yk) == _d("GgQXWRw") and yk.raidId or nil

if type(ymo) == _d("HREHXBde") then
lgd.pending[ymo] = false
else
for kirw in pairs(lgd.pending) do
lgd.pending[kirw] = false
end
end
end)

wpse.BattleEnd.OnClientEvent:Connect(function(icrk)
for ujms in pairs(lgd.pending) do
lgd.pending[ujms] = false
end

if type(icrk) ~= _d("GgQXWRw") or not lgd.enabled then
return
end

local jki = type(icrk.raidId) == _d("HREHXBde") and icrk.raidId or nil
local inf = jki and lgd.inFlight[jki] or nil

if not jki then
for rl, axjb in pairs(lgd.inFlight) do
jki = rl
inf = axjb
break
end
end

if not jki then
return
end

lgd.inFlight[jki] = nil

if icrk.result == _d("AgoGUA") then

local xq = lgd.losses[inf or 1]

lgd.cleared[jki] = nil
xq[jki] = (xq[jki] or 0) + 1

for mu in pairs(lgd.pendingUntil) do
lgd.pendingUntil[mu] = os.time() + 3
end
else

lgd.losses[inf or 1][jki] = 0
end
end)

wpse.RaidProgress.OnClientEvent:Connect(function(zw)
if type(zw) == _d("GgQXWRw") and type(zw.raidId) == _d("HREHXBde") then
lgd.progress[zw.raidId] = zw
end
end)

wpse.RequestRaidProgress:FireServer()

local wnit = {
enabled = false,
progress = nil,
currentRoom = nil,
inBattle = false,
inBattleUntil = 0,
pending = false,
pendingUntil = 0,
}

getgenv().ACBXAutoRooms = wnit

wpse.SyncInfiniteRoomProgress.OnClientEvent:Connect(function(fpk)
if type(fpk) == _d("ABAYVxxL") then
wnit.progress = fpk
wnit.pending = false
end
end)

wpse.BattleEnd.OnClientEvent:Connect(function(gpv)
if type(gpv) == _d("GgQXWRw") and gpv.mode == _d("BwsTXBdQAAs6B1oWVA") then
wnit.inBattle = false
wnit.pending = true
wnit.pendingUntil = os.time() + 3

task.delay(0.3, function()
wpse.RequestInfiniteRoomProgress:FireServer()
end)
end
end)

wpse.RequestInfiniteRoomProgress:FireServer()

local de = {
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

getgenv().ACBXAutoTower = de

local fi = {
enabled = false,
floor = 0,
triggered = false,
}

getgenv().ACBXAutoPause = fi

local lhq = {
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
Typhoon = _d("GhwFXRZWGg"),
Blizzard = _d("DAkcTwNYBgo"),
Lightning = _d("AgwSXQ1XHQAC"),
Windstorm = _d("GQwbUQpNGxwI"),
Sharingan = _d("HQ0URxBXEw8L"),
Singularity = _d("HQwbUgxVFRwMAUw"),
[_d("IwobVAtaHE4hGlgYUBo")] = _d("AwobVAtaHDEBGlgYUBo"),
Void = _d("GAocUQ"),
[_d("IwQRUFlQGk4tEFQPXBo")] = _d("AwQRUCZQGjENEFQPXBo"),
Manga = _d("AwQbUhg"),
},
}

function lhq.weatherWanted(zd)
local pcso = lhq.weatherNow

if type(pcso) ~= _d("HREHXBde") then
return nil
end

for bc, lsj in pairs(zd or lhq.weathers) do
if lsj and lhq.weatherIds[bc] == pcso then
return bc
end
end

return nil
end

getgenv().ACBXAutoGiveUp = lhq

local nd = {
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

if jw:FindFirstChild(_d("IwoRQBVcJw0XHEUNSg")) and jw.ModuleScripts:FindFirstChild(_d("JgQHURpWBgsxGkIcSzAPERQ")) then
local pp, ra = pcall(function()
return require(jw.ModuleScripts.HardcoreTowerData)
end)

if pp then
nd.data = ra
end
end

getgenv().ACBXHardcore = nd

task.spawn(function()
local vxf = jw:FindFirstChild(_d("PAAYWg1cBw"))

if not vxf then
return
end

local up = vxf:WaitForChild(_d("PRwbVjFYBgoGGkccbRsZAAdlC1YTHAAGRg"), 20)

if up and up:IsA(_d("PAAYWg1cMRgAG0E")) then
nd.remotes.sync = up

up.OnClientEvent:Connect(function(ojfg)
if type(ojfg) ~= _d("GgQXWRw") then
return
end

nd.progress = tonumber(ojfg.progress) or nd.progress
nd.best = tonumber(ojfg.best) or nd.best

if type(ojfg.points) == _d("GgQXWRw") then
nd.points = ojfg.points
end
end)
end

local msbm = vxf:WaitForChild(_d("PAAEQBxKACYEB1EaVgYLMRpCHEskHAoSRxxKBw"), 20)

if msbm and msbm:IsA(_d("PAAYWg1cMRgAG0E")) then
nd.remotes.request = msbm

pcall(function()
msbm:FireServer()
end)
end

local hpo = vxf:WaitForChild(_d("KQkaVxhVNhsDE2AJXRUaABE"), 20)

if hpo and hpo:IsA(_d("PAAYWg1cMRgAG0E")) then
hpo.OnClientEvent:Connect(function(zox, kft, li, pz)
nd.globalLuck = tonumber(zox) or 0
nd.globalRoll = tonumber(kft) or 0
nd.globalLuckTime = type(li) == _d("HREHXBde") and li or _d("")
nd.globalRollTime = type(pz) == _d("HREHXBde") and pz or _d("")
end)
end
end)

function kpy.otherTowerOn(fevg)
if kpy.enabled then
return false
end

if fevg == _d("GgoCUAs") then
return false
end

if fevg == _d("BgQZWRZOEQsL") then
return nd.active()
end

return itcd.run.enabled
end

function nd.active()
return nd.island
end

function nd.unspentPoints()
local eqsi = nd.data
local img = tonumber(nd.progress) or 0
local la = 0

if type(eqsi) == _d("GgQXWRw") and type(eqsi.getEarnedPoints) == _d("CBAbVg1QGwA") then
local jllw, yjen = pcall(eqsi.getEarnedPoints, img)
la = jllw and tonumber(yjen) or 0
end

return math.max(0, la - #(nd.points or {})), la
end

function nd.buffText()
local oxpo = nd.data

if type(oxpo) ~= _d("GgQXWRw") then
return _d("JgQHURpWBgsxGkIcSzAPERQVEEpUAwwGRhBXE04DB1oUGQAGDAYVG0wdAgFb")
end

local wzx = tonumber(nd.progress) or 0
local fjk = tonumber(nd.best) or 0
local cxw, ycy = nd.unspentPoints()
local lomb = {
_d("KAkaWgsZ") .. wzx .. _d("TkVVdxxKAE4") .. fjk,
_d("PgocWw1KTk4") .. cxw .. _d("ThAbRglcGhpFGlNZ") .. ycy .. _d("TgAURxdcEA"),
}

local peco = {}

for vku, lxeo in ipairs(nd.points or {}) do
local zvig = oxpo.StatById and oxpo.StatById[lxeo]
local les = zvig and (zvig.name or lxeo) or tostring(lxeo)
local rs = oxpo.PointValue and oxpo.PointValue[lxeo]

table.insert(peco, rs and (les .. _d("Tk4") .. tostring(rs)) or les)
end

if #peco == 0 then
table.insert(lomb, _d("LBATUwoDVAAKG1BZWxsbAh1BWUARGg"))
else
table.insert(lomb, _d("LBATUwoDVA") .. table.concat(peco, _d("QkU")))
end

local mr = {}

if (tonumber(nd.globalLuck) or 0) > 0 then
table.insert(mr, _d("IhAWXlkS") .. tostring(nd.globalLuck) .. _d("Sw") .. (nd.globalLuckTime ~= _d("") and (_d("Tk0") .. nd.globalLuckTime .. _d("Rw")) or _d("")))
end

if (tonumber(nd.globalRoll) or 0) > 0 then
table.insert(mr, _d("PAoZWVlKBAsAERVS") .. tostring(nd.globalRoll) .. _d("Sw") .. (nd.globalRollTime ~= _d("") and (_d("Tk0") .. nd.globalRollTime .. _d("Rw")) or _d("")))
end

if #mr == 0 then
table.insert(lomb, _d("KQkaVxhVVAwQE1MKA1QAChtQWVgXGgwDUA"))
else
table.insert(lomb, _d("KQkaVxhVVAwQE1MKA1Q") .. table.concat(mr, _d("QkU")))
end

return table.concat(lomb, _d("ZA"))
end

function nd.nextMilestone()
local iws = nd.data

if type(iws) ~= _d("GgQXWRw") or type(iws.Milestones) ~= _d("GgQXWRw") or #iws.Milestones == 0 then
return nil
end

local jbs = tonumber(zhiw:GetAttribute(_d("JgQHURpWBgsjGVoWSw"))) or 0

return math.min(jbs + 1, iws.Milestones[#iws.Milestones])
end

function nd.start(oh)
local nxe = nd.nextMilestone()

if not nxe then
return false
end

local xih = vklq:FindFirstChild(oh == 2 and _d("PAAGUA17FRoRGVA/VRsBF0c") or _d("PAAGUA17FRoRGVA/VRsBFw"))

if xih and xih:IsA(_d("LAwbURhbGAsgA1AXTQ")) then
pcall(function()
xih:Fire(nxe, _d("BwsTXBdQAAs6B1oWVA"))
end)
end

local mpz = vklq:FindFirstChild(oh == 2 and _d("PREURw1wGggMG1wNXCYBChh3GE0AAgBH") or _d("PREURw1wGggMG1wNXCYBChh3GE0AAgA"))

if mpz and mpz:IsA(_d("LAwbURhbGAsgA1AXTQ")) then
pcall(function()
mpz:Fire(nxe, _d("BgQHURpWBgs"), nxe)
end)
end

if zo.bossTeams.applyTower then
zo.bossTeams.applyTower(_d("BgQHURpWBgs"), oh)
end

nd.pending = true
nd.pendingUntil = os.time() + 10

return pcall(function()
wpse.StartBattle:FireServer(_d("BwsTXBdQAAs6B1oWVA"), {
tower = _d("BgQHURpWBgs"),
milestone = nxe,
slot = oh,
})
end)
end

function nd.floorNow()
local vof = kpy.hardcoreSlot()

if not vof or not kpy.busy(vof) then
return nil
end

local xbp = vklq:FindFirstChild(vof == 2 and _d("LAQBQRVcMxsMRw") or _d("LAQBQRVcMxsM"))
local bl = xbp and xbp:FindFirstChild(_d("PBAbcxVWGxwpFFccVQ"))
local um = bl and bl.Text or _d("")

return tonumber(um:match(_d("MCMZWhZLUR1OXRAdEl0")))
end

local ynp = {
enabled = true,
nextAt = os.clock() + 300,
jumps = 0,
}

getgenv().ACBXAntiKick = ynp

local mggq = getgenv().ACBXNoUpdate == true

local sr = {
enabled = not mggq,
buildId = "v261101-2234",
interval = 180,
retry = 45,
forceAfter = 900,
applying = false,
checking = false,
pendingVersion = nil,
pendingSince = nil,
cameFrom = nil,
}

local cibk = {
enabled = false,
tpToBay = false,

stick = {
enabled = false,
at = 0,
hits = 0,
last = _d("AQMT"),

names = {
[_d("HREcVhI")] = true,
[_d("AhAWXllKAAcGHg")] = true,
[_d("AhAWXgpNHQ0O")] = true,
[_d("AhAWXiZKAAcGHg")] = true,
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
rod = _d("Qw"),
castTime = 0,
tutorialStep = 0,
phase = _d("BwEZUA"),
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
deepPhase = _d("BwEZUA"),
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

local aq = Vector3.new(-546.8, 13.9, -40250.1)

if type(getgenv().ACBXFishingCatches) == _d("GgQXWRw") then
cibk.catches = getgenv().ACBXFishingCatches
end

cibk.totalCatches = 0

for bbxw, micp in pairs(cibk.catches) do
cibk.totalCatches = cibk.totalCatches + micp
end

getgenv().ACBXFishingCatches = cibk.catches
getgenv().ACBXFishing = cibk

cibk.catchName = function(db)
local ift = dy.ById[db]

if ift and ift.name then
return ift.name
end

local ag = fiv.ById[db]

if ag and ag.name then
return ag.name
end

return db
end

local yv

yv = {
folder = _d("LyY3bQ"),
path = _d("LyY3bVZaFRoGHVAKFx4dChs"),
at = 0,
save = function()
if type(writefile) ~= _d("CBAbVg1QGwA") then
return false
end

local yc = pcall(function()
if type(makefolder) == _d("CBAbVg1QGwA") and type(isfile) == _d("CBAbVg1QGwA") and not isfile(yv.path) then
pcall(makefolder, yv.folder)
end

writefile(yv.path, game:GetService(_d("JhEBRSpcBhgMFlA")):JSONEncode({
catches = cibk.catches,
totalCatches = cibk.totalCatches,
lastCatch = cibk.lastCatch,
updatedAt = os.time(),
}))
end)

return yc
end,
load = function()
if type(readfile) ~= _d("CBAbVg1QGwA") or type(isfile) ~= _d("CBAbVg1QGwA") then
return false
end

local zmzf, jh = pcall(function()
if not isfile(yv.path) then
return nil
end

return readfile(yv.path)
end)

if not zmzf or type(jh) ~= _d("HREHXBde") or #jh == 0 then
return false
end

local tu
local gp = pcall(function()
tu = game:GetService(_d("JhEBRSpcBhgMFlA")):JSONDecode(jh)
end)

if not gp or type(tu) ~= _d("GgQXWRw") or type(tu.catches) ~= _d("GgQXWRw") then
return false
end

for ygws, gejo in pairs(tu.catches) do
local cla = tonumber(gejo) or 0

if cla > 0 then
cibk.catches[tostring(ygws)] = math.max(cibk.catches[tostring(ygws)] or 0, cla)
end
end

cibk.totalCatches = 0

for bx, zsc in pairs(cibk.catches) do
cibk.totalCatches = cibk.totalCatches + zsc
end

return true
end,
}

yv.load()
getgenv().ACBXFishingStore = yv

local vwa = {}

local co = 0

local function wbm()
local qyh = {}

for iict, mwo in ipairs(workspace:GetDescendants()) do
if mwo:IsA(_d("LAQGUClYBho")) and mwo.Name == _d("OQQBUAs") then
table.insert(qyh, mwo)
end
end

vwa = qyh
co = os.clock()
end

local function dvc(wpsp)
if type(wpsp) ~= _d("GgQXWRw") then
return false
end

cibk.loaded = true
cibk.dirty = false
cibk.fishing = wpsp.fishing == true
cibk.autoOn = wpsp.autoOn == true
cibk.autoUnlocked = wpsp.autoUnlocked == true
cibk.casts = tonumber(wpsp.casts) or cibk.casts
cibk.totalCasts = tonumber(wpsp.totalCasts) or cibk.totalCasts
cibk.luck = tonumber(wpsp.luck) or cibk.luck
cibk.rod = tostring(wpsp.equippedRod or cibk.rod)
cibk.castTime = tonumber(wpsp.castTime) or cibk.castTime
cibk.tutorialStep = tonumber(wpsp.tutorialStep) or cibk.tutorialStep

if type(wpsp.rods) == _d("GgQXWRw") then
cibk.rodsOwned = wpsp.rods
end

if type(wpsp.baits) == _d("GgQXWRw") then
cibk.baitsOwned = wpsp.baits
end

if type(wpsp.boats) == _d("GgQXWRw") then
cibk.boatsOwned = wpsp.boats
end

if type(wpsp.mats) == _d("GgQXWRw") then
cibk.mats = wpsp.mats
end

if wpsp.bootOwned ~= nil then
cibk.boot.owned = wpsp.bootOwned == true
end

if wpsp.bootEquipped ~= nil then
cibk.boot.equipped = wpsp.bootEquipped == true
end

if wpsp.equippedBait ~= nil then
cibk.equippedBait = tostring(wpsp.equippedBait)
end

if wpsp.activeBoat ~= nil then
cibk.activeBoat = tostring(wpsp.activeBoat)
end

cibk.boatTier = tonumber(wpsp.boatTier) or cibk.boatTier
cibk.islandLocked = wpsp.islandLocked == true
cibk.rebirths = tonumber(wpsp.rebirths) or cibk.rebirths

if type(wpsp.rebirthCards) == _d("GgQXWRw") then
cibk.rebirthCards = wpsp.rebirthCards
end

cibk.lastSync = os.time()

return true
end

local function bfri()
local vwgb, kpj = pcall(function()
return wpse.FishingGetState:InvokeServer()
end)

if not vwgb or type(kpj) ~= _d("GgQXWRw") then
cibk.loaded = false
return false
end

return dvc(kpj)
end

local rz = false

local function bg()
if rz then
return false
end

local bwu = zhiw.Character

if not bwu then
return false
end

if bwu:FindFirstChild(_d("KAwGXRBXEzwKEQ")) then
return true
end

local aj = zhiw:FindFirstChild(_d("LAQWXglYFwU"))
local ore = aj and aj:FindFirstChild(_d("KAwGXRBXEzwKEQ"))
local ca = bwu:FindFirstChildOfClass(_d("JhAYVBdWHQo"))

if not (ore and ca) then
return false
end

return pcall(function()
ca:EquipTool(ore)
end)
end

local function abao()
local dwu = zhiw.Character
local nwti = dwu and dwu:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if not nwti then
return nil
end

local nhag = RaycastParams.new()
nhag.FilterType = Enum.RaycastFilterType.Exclude
nhag.FilterDescendantsInstances = { dwu }

local sq = 24
local jzxl = {}
local ybq = 0

for jk = 0, sq - 1 do
local asb = math.rad(jk * (360 / sq))
local kq = Vector3.new(math.sin(asb), 0, math.cos(asb))
local fd = nwti.Position + kq * 20 + Vector3.new(0, 40, 0)
local ipsg = workspace:Raycast(fd, Vector3.new(0, -120, 0), nhag)
local qo = ipsg and (nwti.Position.Y - ipsg.Position.Y) or 120

jzxl[jk] = qo > 12

if jzxl[jk] then
ybq = ybq + 1
end
end

if ybq == 0 then
return nil
end

local oqn, eo = nil, 0

for erbc = 0, sq - 1 do
if jzxl[erbc] and not jzxl[(erbc - 1) % sq] then
local gslr = 0

while gslr < sq and jzxl[(erbc + gslr) % sq] do
gslr = gslr + 1
end

if gslr > eo then
oqn = erbc
eo = gslr
end
end
end

if not oqn then
return nil
end

local aiq = oqn + (eo - 1) / 2
local gyh = math.rad(aiq * (360 / sq))

return Vector3.new(math.sin(gyh), 0, math.cos(gyh))
end

local function gmg()
local pt = zhiw.Character
local mwoe = pt and pt:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if not mwoe then
return nil
end

if #vwa == 0 or os.clock() - co > 20 then
wbm()
end

local he, rh = nil, math.huge

for jje, wdv in ipairs(vwa) do
if wdv.Parent then
local jgvm = (wdv.Position - mwoe.Position).Magnitude

if jgvm < rh then
rh = jgvm
he = wdv
end
end
end

if not he or rh > 25 then
local chu = abao()

if chu then
return chu
end
end

if not he then
return nil
end

local gii = Vector3.new(he.Position.X - mwoe.Position.X, 0, he.Position.Z - mwoe.Position.Z)

if gii.Magnitude < 0.05 then
return Vector3.new(0, 0, -1)
end

return gii.Unit
end

local function fkfb()
local nmfy = zhiw.Character
local wi = nmfy and nmfy:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if not wi then
return nil
end

local nfs = wi.CFrame.LookVector
local swh = Vector3.new(nfs.X, 0, nfs.Z)

if swh.Magnitude < 0.05 then
return nil
end

return swh.Unit
end

local function vvtg()
local wqjg = zhiw.Character
local utky = wqjg and wqjg:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if not utky then
return false
end

local abuw = aq
local lo = RaycastParams.new()
lo.FilterType = Enum.RaycastFilterType.Exclude
lo.FilterDescendantsInstances = { wqjg }

local wbz = workspace:Raycast(aq + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), lo)

if wbz and wbz.Instance.Name ~= _d("OQQBUAs") then
abuw = Vector3.new(aq.X, wbz.Position.Y + 3, aq.Z)
end

utky.CFrame = CFrame.new(abuw)
task.wait(0.5)
wbm()

return true
end

local function qks()
local hh = zhiw.Character
local xb = hh and hh:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if not xb then
return false
end

local xwae = Vector3.new(aq.X - xb.Position.X, 0, aq.Z - xb.Position.Z)
local pton = xwae.Magnitude

if pton < 2 then
return false
end

local lfp = xwae.Unit

if pton > 12 then
local suoh = math.min(14, pton - 6)
local wr = xb.Position + lfp * suoh
local zxxp = RaycastParams.new()
zxxp.FilterType = Enum.RaycastFilterType.Exclude
zxxp.FilterDescendantsInstances = { hh }

local shx = workspace:Raycast(wr + Vector3.new(0, 25, 0), Vector3.new(0, -80, 0), zxxp)

if shx and shx.Instance.Name ~= _d("OQQBUAs") then
local kyj = shx.Position.Y + 3.2

if math.abs(kyj - xb.Position.Y) <= 10 then
local trr = Vector3.new(shx.Position.X, kyj, shx.Position.Z)
xb.CFrame = CFrame.lookAt(trr, trr + lfp)

return true
end
end
end

xb.CFrame = CFrame.lookAt(xb.Position, xb.Position + lfp)

return true
end

local nl = {}

nl.surfaceWait = 8

nl.walking = false
nl.walkStartedAt = 0

nl.islandHold = Vector3.new(-7384, 16.3, -40539)

nl.custom = nil
nl.customIsland = nil

nl.islandAnchors = {
{ id = _d("DwcUWx1WGgsBKlwKVRUAAQ"), x = -3800 },
{ id = _d("GhIcWyZbEQ8GHVAK"), x = -6180 },
{ id = _d("GQwbURRQGAI6HEYVXA"), x = -7480 },
}

nl.arrivals = {
abandoned_island = Vector3.new(-3825, 24, -40260),
twin_beaches = Vector3.new(-6180, 40, -40350),
windmill_isle = Vector3.new(-7480, 30, -40350),
lobby = Vector3.new(-499, 17, -40234),
}

function nl.islandOf(ad)
if not ad then
return _d("AgoXVwA")
end

if ad.X > -4500 then
return _d("AgoXVwA")
end

local vh, kit = _d("DwcUWx1WGgsBKlwKVRUAAQ"), math.huge

for dacu, yce in ipairs(nl.islandAnchors) do
local fzy = math.abs(ad.X - yce.x)

if fzy < kit then
vh = yce.id
kit = fzy
end
end

return vh
end

nl.savedVersion = 2

do
local aux = getgenv().ACBXDeepSpot

if type(aux) == _d("GgQXWRw") and aux.v == nl.savedVersion
and tonumber(aux.X) and tonumber(aux.Y) and tonumber(aux.Z) then
nl.custom = Vector3.new(tonumber(aux.X), tonumber(aux.Y), tonumber(aux.Z))
nl.customIsland = aux.island
end
end

function nl.spot()
return nl.custom or nl.islandHold
end

function nl.dropStale()
if not nl.custom then
return false
end

if nl.zoneAt(nl.custom) then
return false
end

nl.custom = nil
nl.customIsland = nil
getgenv().ACBXDeepSpot = nil

return true
end

function nl.capture()
local kkkr = zhiw.Character
local jlgu = kkkr and kkkr:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if not jlgu then
return false, _d("IApVVhFYBg8GAVALGQABRQdQGF1UD0UGRRZNVAgXGlhX")
end

local awhv = jlgu.Position
local ruvj = nl.floorAt(Vector3.new(awhv.X, awhv.Y + 10, awhv.Z))

if not ruvj then
return false, _d("PREUWx0ZGwBFBloVUBBOAgdaDFcQTgMcRwpNVENFAV0QSlQdFRpBWVEVHUUbWllfGAEKBxUNVlQNBAZBWV8GAQhb")
end

local ic = nl.zoneAt(awhv)

if not ic then
return false, _d("Og0cRllKBAERVVwKGRsbEQZcHVxUCxMQRwAZEgcWHVwXXlQcDBtSWRRUHREUWx0ZGxgABxUNURFOEhRBHEtUCAwHRg0X")
end

nl.custom = awhv
nl.customIsland = nl.islandOf(awhv)

getgenv().ACBXDeepSpot = {
X = awhv.X,
Y = awhv.Y,
Z = awhv.Z,
island = nl.customIsland,
v = nl.savedVersion,
}

return true, _d("PQQDUB0ZAAYMBhUKSRsaRRRGWU0cC0URUBxJWRkEAVALGRwBCREVUQ") .. tostring(ic.name) .. _d("R0s")
end

function nl.zoneTable()
local ittf = {}

if cbj and type(cbj.Zones) == _d("GgQXWRw") then
for cub, evzi in ipairs(cbj.Zones) do
ittf[#ittf + 1] = {
id = tostring(evzi.id),
name = tostring(evzi.name or evzi.id),
half = tonumber(evzi.half) or 0,
luck = tonumber(evzi.luck) or 0,
index = tonumber(evzi.index) or 0,
boatTier = tonumber(evzi.boatTier) or 0,
}
end
end

table.sort(ittf, function(klb, clx)
return klb.index < clx.index
end)

return ittf
end

function nl.zoneAt(ozfe)
local spyt = cbj and cbj.ZoneCenter
local mnxh = nl.zoneTable()

if not (spyt and ozfe and #mnxh > 0) then
return nil
end

local jlxw = math.max(math.abs(ozfe.X - spyt.X), math.abs(ozfe.Z - spyt.Z))

for nn, caq in ipairs(mnxh) do
if jlxw < caq.half then
return caq
end
end

return nil
end

function nl.current()
local jd = zhiw.Character
local drtz = jd and jd:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

return drtz and nl.zoneAt(drtz.Position) or nil
end

function nl.sync()
local gag = nl.current()
cibk.zoneId = gag and gag.id or nil
end

function nl.floorAt(zu)
local gjc = zhiw.Character
local py = RaycastParams.new()
py.FilterType = Enum.RaycastFilterType.Exclude
py.FilterDescendantsInstances = { gjc }

local ystd = workspace:Raycast(Vector3.new(zu.X, zu.Y + 20, zu.Z), Vector3.new(0, -80, 0), py)

if ystd and ystd.Instance.Name ~= _d("OQQBUAs") then
return ystd
end

return nil
end

function nl.ensureSpotMap()
local qy = nl.spot()
local axjl = Vector3.new(qy.X, qy.Y + 20, qy.Z)

if nl.floorAt(axjl) then
return true
end

local ws = workspace:FindFirstChild(_d("IwQFRg"))

if ws and ws:FindFirstChild(_d("LQoURg1YGCIKF1cA")) then
if os.clock() - (nl.hopAt or 0) > 1 then
nl.hopAt = os.clock()
nl.hop(qy)
cibk.lastMessage = _d("IwoDXBdeVBoKVUERXFQKABBFVE4VGgAHFQpJGxo")
end

return false
end

if os.clock() - (nl.islandAskedAt or 0) > 1.2 then
nl.islandAskedAt = os.clock()

local vjf = nl.customIsland or nl.islandOf(qy)

if vjf == _d("AgoXVwA") then
pcall(function()
wpse.TeleportToWorld:FireServer(_d("AgoXVwA"))
end)
else
pcall(function()
wpse.FishingIslandTeleport:FireServer(_d("GQQMRRZQGho"), vjf)
end)
end

cibk.lastMessage = _d("OgQeXBdeVBoNEBUeWBkLQgYVDVwYCxUaRw0ZAAFFAV0cGRALAAUYDlgACxdVWBhJ")
end

return false
end

function nl.hop(hy)
local kqq = zhiw.Character
local lkl = kqq and kqq:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))
local ii = kqq and kqq:FindFirstChildOfClass(_d("JhAYVBdWHQo"))

if not (lkl and ii) then
return false
end

if ii.SeatPart then
pcall(function()
ii.Sit = false
end)
end

lkl.AssemblyLinearVelocity = Vector3.zero
lkl.CFrame = CFrame.new(Vector3.new(hy.X, hy.Y + 8, hy.Z))

return true
end

function nl.faceWater()
local usy = zhiw.Character
local gwx = usy and usy:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if not gwx then
return false
end

local dcj = gmg()

if not dcj then
local ooqh = cbj and cbj.ZoneCenter

if ooqh then
local hjqt = Vector3.new(ooqh.X - gwx.Position.X, 0, ooqh.Z - gwx.Position.Z)

dcj = hjqt.Magnitude > 1 and hjqt.Unit or nil
end
end

if not dcj then
return false
end

gwx.CFrame = CFrame.lookAt(gwx.Position, gwx.Position + dcj)

return true
end

function nl.aimWater(bcr)
local tchn = zhiw.Character
local gerx = tchn and tchn:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if not gerx then
return false
end

if bcr then
wbm()
end

local zrim = gerx.CFrame.LookVector
local vup = Vector3.new(zrim.X, 0, zrim.Z)
local rr = gmg()

if not rr then
return false
end

if vup.Magnitude > 0.05 and vup.Unit:Dot(rr) > 0.985 then
return true
end

gerx.CFrame = CFrame.lookAt(gerx.Position, gerx.Position + rr)

return true
end

function nl.hold(yjtx)
local yyt = zhiw.Character
local vhrk = yyt and yyt:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))
local vz = yyt and yyt:FindFirstChildOfClass(_d("JhAYVBdWHQo"))

if not (vhrk and vz) then
return false
end

if vz.SeatPart then
pcall(function()
vz.Sit = false
end)
end

local ez = nl.floorAt(yjtx)

if not ez then
return false
end

vhrk.AssemblyLinearVelocity = Vector3.zero
vhrk.CFrame = CFrame.new(Vector3.new(yjtx.X, ez.Position.Y + 3.2, yjtx.Z))

pcall(nl.aimWater, true)

cibk.phase = _d("BwEZUA")
cibk.nextCastAt = 0

return true
end

function nl.dive()
local hpfr = nl.spot()

if not nl.ensureSpotMap() then
return false
end

if not nl.hold(hpfr) then
return false
end

nl.islandAskedAt = 0

local mnm = nl.zoneAt(hpfr)

cibk.lastMessage = mnm
and (_d("JgoZURBXE04RHVBZXRELFVhCGE0RHEUGRRZNVEY") .. tostring(mnm.name) .. _d("Rw"))
or _d("JgoZURBXE04RHVBZXRELFVhCGE0RHEUGRRZN")

task.wait(0.25)
nl.sync()
cibk.deepDiveAt = os.clock() + 2

return true
end

function nl.walk()
local mpdw = zhiw.Character
local ace = mpdw and mpdw:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if nl.walking and os.clock() - (nl.walkStartedAt or 0) < 60 then
return false
end

if not ace then
return false
end

local oayf = nl.spot()

if (ace.Position - Vector3.new(oayf.X, ace.Position.Y, oayf.Z)).Magnitude <= 8 then
cibk.phase = _d("BwEZUA")
cibk.nextCastAt = 0

return true
end

nl.walking = true
nl.walkStartedAt = os.clock()
cibk.deepPhase = _d("GQQZXg")
cibk.deepStageAt = os.clock()
cibk.lastMessage = _d("OQQZXhBXE04RGhUNURFOARBQCVwHGkUCVA1cBk4WBVoN")

task.spawn(function()
local ej = mpdw and mpdw:FindFirstChildOfClass(_d("JhAYVBdWHQo"))

local mlvi, ksfi = pcall(function()

local yidq = workspace:FindFirstChild(_d("IwQFRg"))
local hnk = nl.customIsland or nl.islandOf(oayf)
local sxot = (ace.Position - Vector3.new(oayf.X, ace.Position.Y, oayf.Z)).Magnitude

if sxot > 400 then
if not (yidq and yidq:FindFirstChild(_d("LQoURg1YGCIKF1cA"))) then
pcall(function()
wpse.TeleportToWorld:FireServer(_d("AgoXVwA"))
end)

local wahz = os.clock() + 20

while cibk.deepWalk and os.clock() < wahz do
local ibf = workspace:FindFirstChild(_d("IwQFRg"))

if ibf and ibf:FindFirstChild(_d("LQoURg1YGCIKF1cA")) then
break
end

task.wait(0.5)
end
end

if cibk.deepWalk then
local cvc = nl.arrivals and nl.arrivals[hnk]

if cvc then
nl.hop(cvc)
else
local hmom = Vector3.new(oayf.X - ace.Position.X, 0, oayf.Z - ace.Position.Z)
local hit = hmom.Magnitude > 1 and hmom.Unit or Vector3.new(1, 0, 0)

nl.hop(Vector3.new(oayf.X - hit.X * 120, oayf.Y, oayf.Z - hit.Z * 120))
end

task.wait(1.5)
end
end

if cibk.deepWalk and ej then

local xeez = (ace.Position - Vector3.new(oayf.X, ace.Position.Y, oayf.Z)).Magnitude
local hby = os.clock() + math.clamp(xeez / 8, 30, 600)
local sgdy = 0
local xhry = ace.Position
local hfp = os.clock()

while cibk.deepWalk and os.clock() < hby do
local tcyc = Vector3.new(oayf.X - ace.Position.X, 0, oayf.Z - ace.Position.Z)

if tcyc.Magnitude <= 3 then
break
end

if os.clock() - sgdy >= 0.25 then
ej:MoveTo(Vector3.new(oayf.X, ace.Position.Y, oayf.Z))
sgdy = os.clock()
end

if os.clock() - hfp >= 1.2 then
if (ace.Position - xhry).Magnitude < 2 then
ej.Jump = true
end

xhry = ace.Position
hfp = os.clock()
end

task.wait(0.1)
end

ej:MoveTo(ace.Position)
end
end)

nl.walking = false

if not mlvi then
cibk.deepPhase = _d("BwEZUA")
cibk.deepStageAt = os.clock()
cibk.lastMessage = _d("OQQZXllNG04hEFAJXAcaRSJUDVwGTgMUXBVcEFRF") .. tostring(ksfi)

return
end

if not cibk.deepWalk then
return
end

local jxci = Vector3.new(ace.Position.X - oayf.X, 0, ace.Position.Z - oayf.Z)

if jxci.Magnitude <= 6 then

pcall(nl.aimWater, true)
cibk.phase = _d("BwEZUA")
cibk.nextCastAt = 0
cibk.deepPhase = _d("BgoZUQ")
cibk.deepStageAt = os.clock()
nl.sync()
cibk.lastMessage = _d("OQQZXhxdVBoKVUERXFQdBANQHRkQCwAFGA5YAAsXVUYJVgA")
else

cibk.deepPhase = _d("BwEZUA")
cibk.deepStageAt = os.clock()
cibk.lastMessage = _d("LQoAWR0ZGgERVUIYVR9OERoVDVERTgEQUAlcBxpFAlQNXAZOFgVaDRlZThEHTBBXE04EElQQVw")
end
end)

return false
end

function nl.settle()
for vypr = 1, 30 do
if not cibk.deepZone or cibk.deepWalk then
return false
end

if nl.dive() then
return true
end

task.wait(1)
end

return false
end

function nl.surface()
local dxvq = zhiw.Character
local men = dxvq and dxvq:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if not men then
return false
end

local rf = RaycastParams.new()
rf.FilterType = Enum.RaycastFilterType.Exclude
rf.FilterDescendantsInstances = { dxvq }

local bpl = workspace:Raycast(aq + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), rf)
local zyu = aq

if bpl and bpl.Instance.Name ~= _d("OQQBUAs") then
zyu = Vector3.new(aq.X, bpl.Position.Y + 3, aq.Z)
end

men.CFrame = CFrame.new(zyu)
cibk.phase = _d("BwEZUA")
cibk.nextCastAt = 0

return true
end

function cibk.gotoIsland()
local lrt = zhiw.Character
local bpn = lrt and lrt:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))
local hgp = workspace:FindFirstChild(_d("JxYZVBddMgcWHVALVBUAKyV2"), true)

if not (bpn and hgp) then
return false
end

local qmme = hgp:GetPivot()
local ln = RaycastParams.new()
ln.FilterType = Enum.RaycastFilterType.Exclude
ln.FilterDescendantsInstances = { lrt, hgp }

local vik = nil
local rzm = -math.huge

for sygk, ubim in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local zikr = workspace:Raycast(qmme.Position + ubim + Vector3.new(0, 30, 0), Vector3.new(0, -120, 0), ln)

if zikr and zikr.Position.Y > rzm then
vik = zikr
rzm = zikr.Position.Y
end
end

if vik then
bpn.CFrame = CFrame.new(Vector3.new(vik.Position.X, rzm + 3.5, vik.Position.Z))
else
bpn.CFrame = CFrame.new(qmme.Position + Vector3.new(0, 4, 0))
end

cibk.phase = _d("BwEZUA")
cibk.nextCastAt = 0

return true
end

function nl.cycle()
local htnv = os.clock()
local tq = cibk.deepPhase or _d("BwEZUA")
local ydar = tonumber(cibk.deepStageAt) or 0

if htnv < math.max(cibk.shopTripUntil or 0, cibk.tpHoldUntil or 0) then
return
end

if tq == _d("BwEZUA") then
cibk.deepPhase = _d("BgoZUQ")
cibk.deepStageAt = htnv

if cibk.deepWalk then
nl.walk()
else
nl.dive()
end

return
end

if tq == _d("GQQZXg") then
return
end

if tq == _d("BgoZUQ") then
local cfoj = nl.current()

local qb = nl.zoneAt(nl.spot())

if cfoj and not zhiw:GetAttribute(_d("PRIcWBRQGgk")) and htnv - (cibk.deepAimAt or 0) > 2 then
cibk.deepAimAt = htnv
pcall(nl.aimWater)
end

if zhiw:GetAttribute(_d("PRIcWBRQGgk")) then
if cibk.deepWalk then

cibk.deepPhase = _d("BwEZUA")
cibk.deepStageAt = htnv
else
cibk.deepPhase = _d("CgwF")
cibk.deepStageAt = htnv
cibk.lastMessage = _d("PRIcWBRQGglFFEFZTRwLRRFQHElUHRUaQVkUVB0QB1MYWhEKRRNaCxkVBxc")
end
elseif not cfoj or (qb and cfoj.index < qb.index) then

cibk.deepPhase = _d("BwEZUA")
cibk.deepStageAt = htnv
end

return
end

if tq == _d("CgwF") then
nl.surface()
cibk.deepPhase = _d("HRAHUxhaEQ")
cibk.deepStageAt = htnv

return
end

if tq == _d("HRAHUxhaEQ") and htnv - ydar >= nl.surfaceWait then
cibk.deepPhase = _d("BwEZUA")
end
end

local function bops()
local zcuk = zhiw.Character
local qdng = zcuk and zcuk:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if not qdng then
return false
end

return (qdng.Position - aq).Magnitude <= 12
end

local function xqod()
if not bg() then
return false
end

local as = pcall(function()
wpse.FishingSetAuto:FireServer(true)
end)

cibk.usingGameAuto = as
return as
end

local function zc()
cibk.usingGameAuto = false

pcall(function()
wpse.FishingSetAuto:FireServer(false)
end)

pcall(function()
wpse.FishingStop:FireServer()
end)
end

function cibk.recover()
cibk.phase = _d("BwEZUA")
cibk.nextCastAt = 0
cibk.deepPhase = _d("BwEZUA")
cibk.deepStageAt = 0
cibk.deepDiveAt = 0
cibk.waterRefusals = 0
cibk.usingGameAuto = false
cibk.castMark = cibk.totalCasts
cibk.castMarkAt = os.clock()

pcall(zc)
pcall(bg)

if cibk.deepZone and not nl.current() then

pcall(function()
wpse.TeleportToWorld:FireServer(_d("AgoXVwA"))
end)
elseif cibk.tpToBay and not bops() then
pcall(vvtg)
end

cibk.lastMessage = _d("KAwGXRBXE04WAVQVVREKRVgVC1wHCxFVQRFcVBkEAVALGRUAAVVBFlYfThEdUFleFQMAUkZZVRsMBwwVC1YD")
end

local function lpp()
if not bg() then
cibk.lastMessage = _d("IApVUxBKHAcLEhULVhBODBsVDVERTgcUVhJJFQ0O")
return false
end

local ob = fkfb()
local epu = gmg()
local ovak = ob or epu

if not ovak then
cibk.lastMessage = _d("IApVQhhNERxFE1oMVxBOCxBUC1sN")
return false
end

if ob and epu and ob:Dot(epu) < 0.25 then
ovak = epu
end

cibk.phase = _d("DQQGQRBXEw")
cibk.lastMessage = nil
cibk.watchdogAt = os.clock() + 25

local kzk, fb = pcall(function()
wpse.FishingThrow:FireServer(1, ovak)
end)

if not kzk then
cibk.phase = _d("BwEZUA")
cibk.lastMessage = tostring(fb)
cibk.nextCastAt = os.clock() + 3
return false
end

return true
end

local qcj = wpse.FishingUpdate.OnClientEvent:Connect(function(xy, hhlz)
cibk.dirty = true

if xy == _d("PREUQRw") then
if type(hhlz) == _d("GgQXWRw") then
cibk.autoOn = hhlz.autoOn == true
end

return
end

if xy == _d("LQQGQQ") then
cibk.phase = _d("GQQcQRBXEywMAVA")
cibk.waterRefusals = 0
return
end

if xy == _d("LAwBUA") then
local ylgi = type(hhlz) == _d("GgQXWRw") and tonumber(hhlz.warning) or 1

cibk.phase = _d("HAAQWRBXEw")
cibk.watchdogAt = os.clock() + 15

task.delay(math.max(0.3, ylgi + 0.8), function()
if cibk.phase ~= _d("HAAQWRBXEw") then
return
end

pcall(function()
wpse.FishingReel:FireServer(true, 120)
end)

cibk.phase = _d("HAAGWhVPHQAC")
end)

return
end

if xy == _d("LQQBVhE") then

local ilam = type(hhlz) == _d("GgQXWRw") and tonumber(hhlz.totalCasts) or nil
local cehe = tonumber(getgenv().ACBXFishingCatchMark) or 0

if ilam and ilam <= cehe and cehe - ilam < 25 then
return
end

if ilam then
getgenv().ACBXFishingCatchMark = ilam
end

local lq = type(hhlz) == _d("GgQXWRw") and tostring(hhlz.itemId) or _d("GwseWxZOGg")
local argp = cibk.catchName(lq)

cibk.catches[lq] = (cibk.catches[lq] or 0) + 1
cibk.totalCatches = (cibk.totalCatches or 0) + 1

local mip = type(hhlz) == _d("GgQXWRw") and hhlz.chest or nil

if type(mip) == _d("GgQXWRw") and mip.itemId then
local zg = tostring(mip.itemId)

cibk.catches[zg] = (cibk.catches[zg] or 0) + 1
end

if os.clock() - (yv.at or 0) >= 5 then
yv.at = os.clock()
yv.save()
end
cibk.lastCatch = argp
cibk.lastMessage = nil
cibk.phase = _d("BwEZUA")
cibk.nextCastAt = os.clock() + 2.5

if type(hhlz) == _d("GgQXWRw") then
cibk.casts = tonumber(hhlz.casts) or cibk.casts
cibk.totalCasts = tonumber(hhlz.totalCasts) or cibk.totalCasts
cibk.autoUnlocked = hhlz.autoUnlocked == true or cibk.autoUnlocked
end

return
end

if xy == _d("LxABWjZfEg") then

cibk.usingGameAuto = false
cibk.phase = _d("BwEZUA")
cibk.nextCastAt = os.clock() + 1
return
end

if xy == _d("KxYWVAlcEA") then
cibk.phase = _d("BwEZUA")
cibk.lastMessage = _d("Og0QFR9QBwZFEloNGRUZBAw")
cibk.nextCastAt = os.clock() + 2.5
return
end

if xy == _d("PAAfUBpNEQo") then
cibk.phase = _d("BwEZUA")

local bpy = type(hhlz) == _d("GgQXWRw") and tostring(hhlz.message) or _d("LQQGQVlLEQQAFkEcXQ")
cibk.lastMessage = bpy

if bpy:lower():find(_d("GQQBUAs"), 1, true) then
cibk.waterRefusals = (cibk.waterRefusals or 0) + 1

if cibk.waterRefusals >= 2 then
cibk.waterRefusals = 0

if qks() then
cibk.lastMessage = _d("PAATQApcEE4RAlwaXFRDRQFAC1cRCkUXVBpSVBoKAlQLXVQaDRAVDlgACxc")
cibk.nextCastAt = os.clock() + 1.5
return
end
end

cibk.nextCastAt = os.clock() + 8
return
end

cibk.waterRefusals = 0
cibk.nextCastAt = os.clock() + 3
return
end
end)

local function xeys()
if not cibk.loaded then
return _d("PAAUURBXE04DHEYRUBoJRQZBGE0RQEtb")
end

local uubu = cibk.autoUnlocked == true
or (cibk.totalCasts or 0) > 0
or (cibk.tutorialStep or 0) > 0
local irn = cbj and cbj.RodsById and cbj.RodsById[cibk.rod]
local xzat = irn and tostring(irn.name) or tostring(cibk.rod)
local onpk = math.floor((tonumber(cibk.luck) or 0) * 100 + 0.5)

local xiq = {
_d("PAoRD1k") .. xzat,
_d("IhAWXkMZ") .. onpk .. _d("Sw"),
}

local yqi = nl.current()

if yqi then
table.insert(xiq, _d("NAobUEMZ") .. yqi.name .. _d("Tk1e") .. tostring(math.floor(yqi.luck * 100 + 0.5)) .. _d("S0UZQBpSXQ"))
end

table.insert(xiq, _d(""))
table.insert(xiq, _d("LQQGQQoZAAFFBkUcVxBURQ") .. xj(cibk.casts or 0))
table.insert(xiq, _d("OgoBVBUZFw8WAUZDGQ") .. xj(cibk.totalCasts or 0))

table.insert(xiq, _d(""))
table.insert(xiq, _d("KAwGXRBXE04QG1kWWh8LAU8V") .. (uubu and _d("FwAG") or _d("AAo")))
table.insert(xiq, _d("LxABWlRfHR0NVUAJXgYPARAPWQ") .. (cibk.autoUnlocked and _d("ARIbUB0") or _d("AAoBFRZOGgsB")))

if cibk.enabled then
local nj = cibk.usingGameAuto and _d("CQQYUFlYARoK") or tostring(cibk.phase)

if nj == _d("GQQcQRBXEywMAVA") then
nj = _d("GQQcQRBXE04DGkdZWFQMDAFQ")
elseif nj == _d("HAAQWRBXEw") then
nj = _d("HAAQWRBXE04MGw")
elseif nj == _d("HAAGWhVPHQAC") then
nj = _d("AgQbURBXE04MAQ")
end

table.insert(xiq, _d(""))
table.insert(xiq, _d("LxABWll/HR0NTxU") .. nj)

local aaiw = lgd.worldBoss

if aaiw and type(aaiw.hasWork) == _d("CBAbVg1QGwA") and aaiw.enabled and aaiw.hasWork() then
table.insert(xiq, _d("JgoZURBXE1RFElkWWxUCRRdaCkpUBxZVQAkZXBwABkAUXAdOChsVEE0HTgYaWhVdGxkLXA"))
end

if cibk.lastCatch then
table.insert(xiq, _d("IgQGQVlaFRoGHQ9Z") .. cibk.lastCatch)
end
end

if cibk.lastMessage then
table.insert(xiq, _d(""))
table.insert(xiq, _d("IAoBUEMZ") .. cibk.lastMessage)
end

return table.concat(xiq, _d("ZA"))
end

local function ntej()
local ukz = 0

for qrs, kwyi in pairs(cibk.catches) do
local gjv = dy.ById[qrs]

if not (gjv and gjv.type == _d("DQ0QRg0")) then
ukz = ukz + kwyi
end
end

return ukz
end

local function uqn()
local uod = {}

for cqol, hfw in pairs(cibk.catches) do
local das = dy.ById[cqol]
local sy = das and das.type == _d("DQ0QRg0") or false

table.insert(uod, {
name = cibk.catchName(cqol),
count = hfw,
chest = sy,
rank = sy and (tonumber(das.border) or 1) or 0,
})
end

if #uod == 0 then
return _d("IAoBXRBXE04GFEAeUQBOHBBBVzN+OhAHW1lWGk4kAEEWGTIHFh0VGFcQThEdUFlNFQIJDBUKTRUcEQYVEVwGC0tVfA0ZBw8TEEZZUAAdABlTVRkHAUUcQVlaFRwXHFAKGRsYAAcVF1wMGkUGUApKHQELWw")
end

table.sort(uod, function(cv, yw)
if cv.chest ~= yw.chest then
return cv.chest
end

if cv.chest and cv.rank ~= yw.rank then
return cv.rank > yw.rank
end

if cv.count ~= yw.count then
return cv.count > yw.count
end

return cv.name < yw.name
end)

local qyf = {}

for mmh, tl in ipairs(uod) do
table.insert(qyf, tl.name .. _d("Tof1oVk") .. xj(tl.count))
end

local eibx = {
table.concat(qyf, _d("ZG8")),
_d(""),
_d("OgoBVBUZFw8QEl0NA1Q") .. xj(ntej()) .. _d("TqfCFQ") .. #uod .. _d("Tg4cWx1K"),
}

if cibk.lastCatch then
table.insert(eibx, _d("IgQGQVlaFRoGHQ9Z") .. tostring(cibk.lastCatch))
end

return table.concat(eibx, _d("ZA"))
end

local go = {
rod = Vector3.new(-493, 18, -40254),
bait = Vector3.new(-493, 18, -40254),
}

local function vza(lgll)
if not cbj then
return {}
end

local mbc

if lgll == _d("HAoR") then
mbc = cbj.RodsById
elseif lgll == _d("DAQcQQ") then
mbc = cbj.BaitsById
else
mbc = nil
end

local mwd = {}

for ss, fa in pairs(mbc or {}) do
if not fa.crafted then
table.insert(mwd, {
id = tostring(ss),
name = tostring(fa.name or ss),
cost = tonumber(fa.cost) or 0,
luck = tonumber(fa.luck) or 0,
index = tonumber(fa.index) or 0,
island = fa.shop == _d("BxYZVBdd"),
})
end
end

table.sort(mwd, function(bb, amdi)
if bb.index ~= amdi.index then
return bb.index < amdi.index
end

return bb.cost < amdi.cost
end)

return mwd
end

local function ctv(gb)
if gb == _d("HAoR") then
return cibk.rodsOwned or {}
elseif gb == _d("DAQcQQ") then
return cibk.baitsOwned or {}
end

return {}
end

local function blx(myhg)
if myhg == _d("HAoR") then
return cibk.rod
elseif myhg == _d("DAQcQQ") then
return cibk.equippedBait
end

return nil
end

local function len(nx)
local faxf = ctv(nx)
local gwo = nil

for zqdd, bpvi in ipairs(vza(nx)) do
if faxf[bpvi.id] == true then
gwo = bpvi
end
end

return gwo
end

local function srfc(dqxv)
if dqxv.island and cibk.islandLocked then
return false
end

return true
end

local function cs(ux)
local nrzs = ctv(ux)
local hoj = cibk.casts or 0
local opmu = nil

for kvr, qtnt in ipairs(vza(ux)) do
if nrzs[qtnt.id] ~= true and qtnt.cost <= hoj and srfc(qtnt) then
opmu = qtnt
end
end

return opmu
end

local function xly(yff)
local sho = ctv(yff)

for pyn, lko in ipairs(vza(yff)) do
if sho[lko.id] ~= true and srfc(lko) then
return lko
end
end

return nil
end

local function thn(tb, plxd)
if not plxd then
return _d("AAobUFlWAwAAEQ")
end

return plxd.name .. _d("Tk1e") .. tostring(math.floor(plxd.luck * 100 + 0.5)) .. _d("S0UZQBpSXQ")
end

local function of()
if not cbj then
return _d("KAwGXRBXEyoEAVRZVxsaRRNaDFcQTkhVRhFWBE4BFEEYGQEABANUEFUVDAkQGw")
end

local jyjt = {}
local onz = { rod = _d("PAoR"), bait = _d("LAQcQQ") }

for txl, mg in ipairs({ _d("HAoR"), _d("DAQcQQ") }) do
local zthd = len(mg)
local iret = nil

for vb, yaa in ipairs(vza(mg)) do
if yaa.id == blx(mg) then
iret = yaa.name
end
end

if #jyjt > 0 then
table.insert(jyjt, _d(""))
end

table.insert(jyjt, onz[mg] .. _d("VEU") .. thn(mg, zthd))
table.insert(jyjt, _d("IQtVWxZOTk4") .. (iret or _d("AAobUA")))

local dt = cs(mg) or xly(mg)

if dt then
local poyz = dt.cost - (cibk.casts or 0)

table.insert(jyjt, _d("IAANQUMZ") .. dt.name .. _d("TqfCFQ") .. xj(dt.cost) .. _d("TgYURg1K"))

if poyz > 0 then
table.insert(jyjt, _d("IAAQUVk") .. xj(poyz) .. _d("TggaRxw"))
end
else
table.insert(jyjt, _d("IAANQUMZERgAB0wNUR0AAlVaDlcRCg"))
end
end

table.insert(jyjt, _d(""))
table.insert(jyjt, _d("LQQGQQoZAAFFBkUcVxBURQ") .. xj(cibk.casts or 0))

if cibk.shopMessage then
table.insert(jyjt, _d(""))
table.insert(jyjt, cibk.shopMessage)
end

return table.concat(jyjt, _d("ZA"))
end

local function umg(rfb, rt)
local xlnd = os.clock()

if xlnd < (cibk.shopCallAt or 0) then
return false, _d("HQkaQg")
end

cibk.shopCallAt = xlnd + 1.4

local cx, ysi, mjvj, ei = pcall(function()
return wpse.FishingShop:InvokeServer(rfb, rt)
end)

if not cx then
return false, _d("CxcHWgsZ") .. tostring(ysi)
end

dvc(ei)

if ysi == true then
return true, nil
end

return false, tostring(mjvj or _d("HAATQApcEA"))
end

function cibk.rebirthCardsHeld()
local pwx = cbj and type(cbj.RebirthCards) == _d("GgQXWRw") and #cbj.RebirthCards or 0

if pwx == 0 then
return 0, 0
end

local ifdc = 0

for jl, an in ipairs(cbj.RebirthCards) do
if cibk.rebirthCards[an.cardId] then
ifdc = ifdc + 1
end
end

return ifdc, pwx
end

function cibk.rebirthReady()
local wk, kv = cibk.rebirthCardsHeld()

return kv > 0 and wk >= kv and (tonumber(cibk.rebirths) or 0) < 1
end

function cibk.rebirthText()
local bs, qra = cibk.rebirthCardsHeld()

if qra == 0 then
return _d("KAwGXRBXE04BFEEYGRoBEVVZFlgQCwFZFQpWVBwAF1wLTRxODAYVDFcVGAQcWRhbGAtL")
end

if (tonumber(cibk.rebirths) or 0) >= 1 then
return _d("PAAXXAtNHAsBWxUtURFOJBdUF10bAAARFTBKGA8LERUQSlQBFRBbVw")
end

if bs >= qra then
return _d("LwkZFQ") .. qra .. _d("TgYURx1KVAgMBl0cXVpONxBUHUBUGgpVRxxbHRwRHRs")
end

local se = {}

for snbz, ib in ipairs(cbj.RebirthCards) do
if not cibk.rebirthCards[ib.cardId] then
table.insert(se, (string.gsub(ib.cardId, _d("MAMcRhFm"), _d(""))))
end
end

return bs .. _d("QQ") .. qra .. _d("TgYURx1KWk42AVwVVVQAABBRWQ") .. table.concat(se, _d("QkU")) .. _d("QA")
end

local function ry(rqrh)
local ejfd = zhiw.Character
local hqt = ejfd and ejfd:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if not hqt then
return false
end

return (hqt.Position - (go[rqrh] or go.rod)).Magnitude <= 26
end

local function ox(lgna)
if ry(lgna) then
return true
end

local kze = zhiw.Character
local xbv = kze and kze:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if not xbv then
return false
end

local hwe = go[lgna] or go.rod
cibk.shopTripUntil = os.clock() + 12
cibk.shopHoldUntil = os.clock() + 12

pcall(function()
xbv.CFrame = CFrame.new(hwe)
end)

task.wait(1.2)

return ry(lgna)
end

local function uu(qv, frvg, bet)
if not bet then
return false
end

if (cibk.casts or 0) < bet.cost then
return false
end

if not ox(qv) then
cibk.shopMessage = _d("LQoAWR0ZGgERVUccWBcGRQFdHBkHBgoFFR9WBk4") .. bet.name
return false
end

local zzft, kd = umg(frvg, bet.id)

if not zzft then
local ar = tostring(kd)
local wlu = ar:find(_d("OgQZXllNG04RHVBZfx0dDRBHFFga"), 1, true) or ar:find(_d("LAoUQVl9EQ8JEEc"), 1, true)

if wlu then

cibk.shopMessage = _d("OQQZXhBXE04QBRUNVlQaDRAVGlYBABEQR1lfGxxF") .. bet.name
return false
end

if kd ~= _d("HQkaQg") then
cibk.shopAt = os.clock() + 15
cibk.shopMessage = _d("PQAHQxxLVBwAE0AKXBBO") .. bet.name .. _d("Tk0") .. ar .. _d("Rw")
end

return false
end

cibk.shopMessage = _d("LAoAUhFNVA") .. bet.name

return true
end

local function jr(rg)
local et = len(rg)

if not et or blx(rg) == et.id then
return false
end

local lwx

if rg == _d("HAoR") then
lwx = _d("KxQAXAlrGwo")
elseif rg == _d("DAQcQQ") then
lwx = _d("KxQAXAl7FQcR")
else
return false
end

local qii, qxl = umg(lwx, et.id)

if not qii then
if qxl ~= _d("HQkaQg") then
cibk.shopMessage = _d("LQoAWR0ZGgERVVAITB0eRQ") .. et.name .. _d("Tk0") .. tostring(qxl) .. _d("Rw")
end

return false
end

if rg == _d("HAoR") then
cibk.rod = et.id
elseif rg == _d("DAQcQQ") then
cibk.equippedBait = et.id
else
return false
end

cibk.shopMessage = _d("KxQAXAlJEQpF") .. et.name

return true
end

local function gk()
local qcni = cibk.shop

if os.time() - (cibk.lastSync or 0) >= 5 then
bfri()
end

if qcni.equipRod then
jr(_d("HAoR"))
end

if qcni.equipBait then
jr(_d("DAQcQQ"))
end

if qcni.autoBuyRod then
uu(_d("HAoR"), _d("LBAMZxZd"), cs(_d("HAoR")))
end

if qcni.autoBuyBait then
uu(_d("DAQcQQ"), _d("LBAMdxhQAA"), cs(_d("DAQcQQ")))
end
end

local function hbxi()
local rbg = cibk.shop

return rbg.autoBuyRod or rbg.autoBuyBait or rbg.equipRod or rbg.equipBait
end

cibk.shopIsland = {
rods = function()
local ywi = cbj and cbj.RodsById or {}
local jv = {}

for fs, fekw in pairs(ywi) do
if tostring(fekw.shop) == _d("BxYZVBdd") then
table.insert(jv, {
id = tostring(fs),
name = tostring(fekw.name or fs),
cost = tonumber(fekw.cost) or 0,
luck = tonumber(fekw.luck) or 0,
index = tonumber(fekw.index) or 0,
crafted = fekw.crafted == true,
})
end
end

table.sort(jv, function(xlzs, syhm)
return xlzs.index < syhm.index
end)

return jv
end,

angler = function()
local mqm = workspace:FindFirstChild(_d("IDU2Rg"), true)

if not mqm then
return nil
end

for jzx, dzth in ipairs(mqm:GetChildren()) do
if dzth:GetAttribute(_d("PQAWRxxNNQACGVALdyQt")) then
return dzth
end
end

return nil
end,
held = function(wjeg)
return (cibk.rodsOwned or {})[wjeg] == true
end,
recipeHeld = function(zupt)
for ek, xmd in ipairs(zupt or {}) do
local igz = tonumber((cibk.mats or {})[xmd.id]) or 0

if igz < (tonumber(xmd.count) or 0) then
return false
end
end

return true
end,
recipeText = function(phhf)
local cjk = {}

for rlbl, bv in ipairs(phhf or {}) do
local rbdc = tonumber((cibk.mats or {})[bv.id]) or 0
local llys = (dy.ById[bv.id] and dy.ById[bv.id].name) or tostring(bv.id)

table.insert(cjk, llys .. _d("Tg") .. xj(rbdc) .. _d("QQ") .. xj(tonumber(bv.count) or 0))
end

return table.concat(cjk, _d("TqfCFQ"))
end,

stand = function(zby)
local qne = zhiw.Character
local zelw = qne and qne:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if not (zelw and zby) then
return false
end

local kf = zby:GetPivot()
local il = zby:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ")) or zby:FindFirstChildWhichIsA(_d("LAQGUClYBho"), true)
local nrs = il and (il.CFrame * CFrame.new(0, 0, -5)).Position or nil

if not nrs then
local yrl = RaycastParams.new()
yrl.FilterType = Enum.RaycastFilterType.Exclude
yrl.FilterDescendantsInstances = { qne, zby }

local hju = nil
local bxvw = math.huge

for tx, kx in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local ci = workspace:Raycast(kf.Position + kx + Vector3.new(0, 30, 0), Vector3.new(0, -140, 0), yrl)

if ci and tostring(ci.Instance.Name) ~= _d("OQQBUAs") and ci.Position.Y <= kf.Position.Y + 10 then
local rks = math.abs(ci.Position.Y - kf.Position.Y)

if rks < bxvw then
hju = ci
bxvw = rks
end
end
end

nrs = hju and Vector3.new(hju.Position.X, hju.Position.Y + 3.5, hju.Position.Z) or (kf.Position + Vector3.new(0, 4, 0))
end

cibk.shopTripUntil = os.clock() + 12

cibk.islandTripUntil = os.clock() + 12

pcall(function()
zelw.CFrame = CFrame.new(nrs)
end)

task.wait(1.2)

return true
end,
atIsland = function()
local hjda = workspace:FindFirstChild(_d("JxYZVBddMgcWHVALVBUAKyV2"), true)
local mz = zhiw.Character
local fxq = mz and mz:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if not (hjda and fxq) then
return false
end

return (fxq.Position - hjda:GetPivot().Position).Magnitude <= 45
end,
toIsland = function()
if cibk.shopIsland.atIsland() then
return true
end

cibk.shopTripUntil = os.clock() + 12

if not cibk.gotoIsland() then
return false
end

task.wait(1.2)

return cibk.shopIsland.atIsland()
end,

craftExcalibur = function()
local hs = cibk.shopIsland.angler()

if not hs or cibk.shopIsland.held(_d("HAoRagpcFxwAAQ")) then
return false
end

if not cibk.shopIsland.recipeHeld(cbj and cbj.SecretRecipe) then
return false
end

cibk.shopIsland.stand(hs)

local wail, lmfg = umg(_d("LRcUUw1rGwo"), _d("HAoRagpcFxwAAQ"))

if wail then
cibk.rod = _d("HAoRagpcFxwAAQ")
cibk.islandMessage = _d("LRcUUw1cEE4RHVBZfAwNBBlcG0wGThcaUVlYAE4RHVBZcR0KARBbWXgaCQkQRw")
elseif lmfg ~= _d("HQkaQg") then
cibk.islandMessage = _d("JgwRURxXVC8LElkcS1QcABNAClwQThEdUFl8DA0EGVwbTAZOTQ") .. tostring(lmfg) .. _d("Rw")
end

return wail
end,
buyRod = function()
if cibk.islandLocked then
return false
end

local ae = cibk.rodsOwned or {}
local mqd = nil

for yda, aht in ipairs(cibk.shopIsland.rods()) do
if not aht.crafted
and ae[aht.id] ~= true
and aht.cost <= (cibk.casts or 0)
and (mqd == nil or aht.index > mqd.index) then
mqd = aht
end
end

if not mqd then
return false
end

if not cibk.shopIsland.toIsland() then
cibk.islandMessage = _d("LQoAWR0ZGgERVUccWBcGRQFdHBkdHQkUWx0ZFwEQG0EcSw")
return false
end

local xpdx, iml = umg(_d("LBAMZxZd"), mqd.id)

if xpdx then
cibk.islandMessage = _d("LAoAUhFNVA") .. mqd.name
elseif iml ~= _d("HQkaQg") then
local ik = tostring(iml)

if not (ik:find(_d("OgQZXllNGw"), 1, true) or ik:find(_d("JxYZVBddERw"), 1, true)) then
cibk.islandAt = os.clock() + 15
cibk.islandMessage = _d("PQAHQxxLVBwAE0AKXBBO") .. mqd.name .. _d("Tk0") .. ik .. _d("Rw")
end
end

return xpdx
end,
craftBoot = function()
if cibk.boot.owned or cibk.islandLocked then
return false
end

if not cibk.shopIsland.recipeHeld(cbj and cbj.BootRecipe) then
return false
end

if not cibk.shopIsland.toIsland() then
cibk.islandMessage = _d("LQoAWR0ZGgERVUccWBcGRQFdHBkdHQkUWx0ZFwEQG0EcSw")
return false
end

local sscr, nw = umg(_d("LRcUUw17GwER"))

if sscr then
cibk.boot.owned = true
cibk.islandMessage = _d("LRcUUw1cEE4RHVBZdREJABtRGEsNTicaWg0")
elseif nw ~= _d("HQkaQg") then
cibk.islandMessage = _d("JxYZVBddVCgMBl0cSxkPC1VHHF8BHQARFQ1REU4HGloNGVw") .. tostring(nw) .. _d("Rw")
end

return sscr
end,
best = function()
local umti = cibk.rodsOwned or {}
local alp = nil

for km, ebm in ipairs(cibk.shopIsland.rods()) do
if umti[ebm.id] == true and (alp == nil or ebm.luck > alp.luck) then
alp = ebm
end
end

return alp
end,

equipRod = function()
local tqx = cibk.shopIsland.best()

if not tqx or cibk.rod == tqx.id then
return false
end

local szi, oemu = umg(_d("KxQAXAlrGwo"), tqx.id)

if szi then
cibk.rod = tqx.id
cibk.islandMessage = _d("KxQAXAlJEQpF") .. tqx.name
elseif oemu ~= _d("HQkaQg") then
cibk.islandMessage = _d("LQoAWR0ZGgERVVAITB0eRQ") .. tqx.name .. _d("Tk0") .. tostring(oemu) .. _d("Rw")
end

return szi
end,
equipBoot = function()
if not cibk.boot.owned or cibk.boot.equipped then
return false
end

local hsbx, mey = umg(_d("KxQAXAl7GwER"), true)

if hsbx then
cibk.boot.equipped = true
cibk.islandMessage = _d("KxQAXAlJEQpFAV0cGTgLAhBbHVgGF0U3WhZN")
elseif mey ~= _d("HQkaQg") then
cibk.islandMessage = _d("LQoAWR0ZGgERVVAITB0eRQFdHBkWAQoBFVE") .. tostring(mey) .. _d("Rw")
end

return hsbx
end,
active = function()
local wjcg = cibk.island

return wjcg.autoRod or wjcg.equipRod or wjcg.autoAcc or wjcg.equipAcc
end,
run = function()
local tci = cibk.island

if os.time() - (cibk.lastSync or 0) >= 8 then
bfri()
end

local yrdo = false

if tci.autoRod then
yrdo = cibk.shopIsland.craftExcalibur()
end

if tci.equipRod then
cibk.shopIsland.equipRod()
end

if tci.autoRod and not yrdo then
cibk.shopIsland.buyRod()
end

if tci.autoAcc then
cibk.shopIsland.craftBoot()
end

if tci.equipAcc then
cibk.shopIsland.equipBoot()
end
end,
text = function()
if not cbj then
return _d("KAwGXRBXEyoEAVRZVxsaRRNaDFcQTkhVQRFcVAcWGVQXXVQdDRpFWVAHThAbVA9YHQIEF1kcFw")
end

local bkf = {}
local jxx = cibk.rodsOwned or {}

table.insert(bkf, cibk.islandLocked and _d("LwcUWx1WGgsBVXwKVRUAAVVcChkYAQYeUB0ZWU4XEFcQSwAGRRNcC0oAQA") or _d("LwcUWx1WGgsBVXwKVRUAAVVcChkbHgAbGw"))

for gjgf, bxzh in ipairs(cibk.shopIsland.rods()) do
local sef

if jxx[bxzh.id] == true then
sef = cibk.rod == bxzh.id and _d("ARIbUB0ZttlFGltZVxsZ") or _d("ARIbUB0")
elseif bxzh.crafted then
sef = _d("JgwRURxXVC8LElkcS1QcABZcCVw")
else
sef = xj(bxzh.cost) .. _d("TgYURg1K")
end

table.insert(bkf, bxzh.name .. _d("Tof1oVk") .. sef)
end

table.insert(bkf, _d(""))

if jxx.rod_secret then
table.insert(bkf, _d("Kx0WVBVQFhsXTxUWThoLAQ"))
else
local uoul = cibk.shopIsland.recipeHeld(cbj.SecretRecipe)

table.insert(bkf, _d("Kx0WVBVQFhsXTxU") .. (uoul and _d("HAAWXAlcVBwAFFEA") or _d("HAAWXAlcVB0NGkcN")))
table.insert(bkf, cibk.shopIsland.recipeText(cbj.SecretRecipe))
end

table.insert(bkf, _d("JgwRURxXVC8LElkcS05O") .. (cibk.shopIsland.angler() and _d("GxVVWxZO") or _d("AAoBFRFcBgs")))
table.insert(bkf, _d(""))

local thkh = cibk.boot
local yjsk

if thkh.equipped then
yjsk = _d("IgASUBddFRwcVXcWVgBURRBEDFAEHgAR")
elseif thkh.owned then
yjsk = _d("IgASUBddFRwcVXcWVgBURRpCF1wQ")
elseif cibk.shopIsland.recipeHeld(cbj.BootRecipe) then
yjsk = _d("IgASUBddFRwcVXcWVgBURQdQGlAEC0UHUBhdDQ")
else
yjsk = _d("IgASUBddFRwcVXcWVgBURQ") .. cibk.shopIsland.recipeText(cbj.BootRecipe)
end

table.insert(bkf, yjsk)
table.insert(bkf, _d("LQQGQQoZAAFFBkUcVxBURQ") .. xj(cibk.casts or 0))

if cibk.islandMessage then
table.insert(bkf, _d(""))
table.insert(bkf, cibk.islandMessage)
end

return table.concat(bkf, _d("ZA"))
end,
}

task.spawn(function()
bfri()
end)

local aywy = {
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

getgenv().ACBXAutoBuyHalloween = aywy

wpse.SyncItems.OnClientEvent:Connect(function(smwz)
if type(smwz) == _d("GgQXWRw") then
aywy.balances = smwz
aywy.lastSync = os.time()
end
end)

wpse.RequestItemSync:FireServer()

wpse.RaidShopState.OnClientEvent:Connect(function(zebj)
if type(zebj) == _d("GgQXWRw") and zebj.shopId == _d("BgQZWRZOEQsL") then
aywy.shopState = zebj
aywy.stateAt = os.clock()
end
end)

wpse.RaidNotify.OnClientEvent:Connect(function(bxl)
local yeht = aywy.pending

if not yeht or type(bxl) ~= _d("HREHXBde") then
return
end

if bxl:sub(1, 9) == _d("PjAndjF4Jysh") then
aywy.purchased[yeht.id] = (aywy.purchased[yeht.id] or 0) + 1
aywy.pending = nil
else
if aywy.balances[yeht.currency] then
aywy.balances[yeht.currency] = aywy.balances[yeht.currency] + yeht.price
end

aywy.failedUntil[yeht.id] = os.time() + 5
aywy.pending = nil
end
end)

itcd.trip = {
untilAt = 0,
lastTry = 0,
lastResult = nil,
spot = nil,
}

function itcd.merchant()
local uto = workspace:FindFirstChild(_d("IDU2Rg"))
local djtn = itcd.shopData and itcd.shopData.NpcName or _d("PhAYRRJQGk4oEEcaURUAEQ")

return uto and uto:FindFirstChild(djtn) or nil
end

function itcd.stand()
local qsou = itcd.merchant()
local ite = qsou and (qsou:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ")) or qsou:FindFirstChildWhichIsA(_d("LAQGUClYBho")))
local uc = zhiw.Character
local ofmq = uc and uc:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if not (ite and ofmq) then
return false
end

itcd.trip.spot = ite.Position + Vector3.new(0, 3, 4)
ofmq.AssemblyLinearVelocity = Vector3.zero
ofmq.CFrame = CFrame.new(itcd.trip.spot)

return true
end

function itcd.fresh()
return aywy.shopState ~= nil and os.clock() - aywy.stateAt < 30
end

function itcd.guiOpen()
local th = vklq:FindFirstChild(_d("JgQZWRZOEQsLJl0WSTMbDA"))
local njrs = th and th:FindFirstChild(_d("PQ0aRT9LFQMA"))

if njrs then
return njrs.Visible == true
end

for ufw, yms in ipairs(vklq:GetChildren()) do
if yms:IsA(_d("PQYHUBxXMxsM")) and yms.Name:lower():find(_d("BgQZWRZOEQsL"), 1, true) and yms.Enabled then
return true
end
end

return false
end

function itcd.close()
local ope = vklq:FindFirstChild(_d("JgQZWRZOEQsLJl0WSTMbDA"))
local bzrv = ope and ope:FindFirstChild(_d("PQ0aRT9LFQMA"))

if not (bzrv and bzrv.Visible) then
return false
end

local mla = bzrv:FindFirstChild(_d("LQkaRhx7ARoRGls"))

if not mla then
for jf, xx in ipairs(bzrv:GetDescendants()) do
if xx:IsA(_d("KRAcdwxNAAEL")) and tostring(xx.Name):lower():find(_d("DQkaRhw"), 1, true) then
mla = xx
break
end
end
end

if mla and type(firesignal) == _d("CBAbVg1QGwA") then
pcall(function()
firesignal(mla.MouseButton1Click)
end)

task.wait(0.3)

if not bzrv.Visible then
return true
end
end

pcall(function()
bzrv.Visible = false
end)

return true
end

function itcd.spend()
if aywy.pending or os.time() - (aywy.lastAttempt or 0) < 1 then
return nil
end

local khu = aywy.shopState

for gyj, hhh in ipairs(itcd.shopItems) do
if aywy.selected[hhh.id] and os.time() >= (aywy.failedUntil[hhh.id] or 0) then
local nykg = hhh.stock
local sek = aywy.purchased[hhh.id] or 0

if khu and khu.stocks and khu.stocks[hhh.id] then
nykg = khu.stocks[hhh.id]
end

if khu and khu.bought then
sek = math.max(sek, khu.bought[hhh.id] or 0)
end

local moo = nykg and (nykg - sek) or 1
local vejh = aywy.balances[hhh.currency] or 0

if moo > 0 and vejh >= hhh.price then
aywy.pending = {
id = hhh.id,
price = hhh.price,
currency = hhh.currency,
at = os.time(),
}
aywy.lastAttempt = os.time()
aywy.balances[hhh.currency] = vejh - hhh.price

pcall(function()
wpse.BuyRaidItem:FireServer(hhh.id, 1)
end)

return hhh.id
end
end
end

return nil
end

function itcd.open(hdi)
if not hdi and itcd.fresh() then
return true
end

if not hdi and os.clock() < (itcd.trip.lastTry or 0) + 8 then
return false
end

itcd.trip.lastTry = os.clock()
itcd.trip.untilAt = os.clock() + 12

cibk.shopTripUntil = os.clock() + 12
cibk.shopHoldUntil = os.clock() + 12
cibk.phase = _d("BwEZUA")

local hfro = itcd.merchant()
local cntt = hfro and hfro:FindFirstChild(_d("PhcaTRBUHRocJUcWVAQa"))

if not (hfro and cntt) then
cibk.deepPhase = _d("BwEZUA")
itcd.trip.untilAt = os.clock() + 60
itcd.trip.lastResult = _d("Og0QFSlMGR4OHFtZdBEcBh1UF01UBxZVWxZNVAcLVUERUAdOBwBcFV1a")

return false
end

local xzd = os.clock() + 3
local uh = 0

while os.clock() < xzd do

itcd.stand()

if os.clock() >= uh then
uh = os.clock() + 0.8

if type(fireproximityprompt) == _d("CBAbVg1QGwA") then
pcall(function()
fireproximityprompt(cntt)
end)
end

pcall(function()
wpse.OpenRaidShop:FireServer(_d("BgQZWRZOEQsL"))
end)
end

if itcd.guiOpen() or itcd.fresh() then
break
end

task.wait(0.1)
end

if not (itcd.guiOpen() or itcd.fresh()) then

cibk.deepPhase = _d("BwEZUA")
itcd.trip.untilAt = os.clock() + 60
itcd.trip.lastResult = _d("Og0QFRpWAQAREEdZXR0KRRtaDRkVABYCUAsZWU4MARUWVxgXRRpFHFcHTgwbFQ1REU4WEFQKVhoPCVVUC1wVQA")

return false
end

itcd.trip.lastResult = _d("LQoAWw1cBk4KBVAXFw")

for whnm = 1, 3 do
itcd.stand()

if not itcd.spend() then
break
end

task.wait(1.2)
end

pcall(itcd.close)

cibk.deepPhase = _d("BwEZUA")

return true
end

local function iu(vmo)
vmo = math.max(0, math.floor(vmo))
local em = math.floor(vmo / 3600)
local kjci = math.floor((vmo % 3600) / 60)
local hw = vmo % 60

if em > 0 then
return string.format(_d("SwEdFVwJRgoI"), em, kjci)
elseif kjci > 0 then
return string.format(_d("SwEYFVwJRgoW"), kjci, hw)
end

return string.format(_d("SwEG"), hw)
end

local function qvx()
local hf = vklq:FindFirstChild(_d("JgQZWRZOEQsLJl0WSTMbDA"))
local ot = hf and hf:FindFirstChild(_d("PQ0aRT9LFQMA"))
local ugn = ot and ot:FindFirstChild(_d("JxEQWDVQBxo"))
local ao = {}
local srf = nil

if ugn then
for xu, rv in ipairs(itcd.shopItems) do
local zlx = ugn:FindFirstChild(rv.id)
local yz = zlx and zlx:FindFirstChild(_d("LAoN"))
local ztt = yz and yz:FindFirstChild(_d("PREaVhI"))

if ztt and ztt:IsA(_d("OgANQTVYFgsJ")) then
local opw, vkf = ztt.Text:match(_d("RkARHlAcB0RKUEZTEVEKTlw"))

if opw and vkf then
ao[rv.id] = {
remaining = tonumber(opw),
total = tonumber(vkf),
}
end
end
end
end

if ot then
for xf, mjk in ipairs(ot:GetDescendants()) do
if mjk:IsA(_d("OgANQTVYFgsJ")) and mjk.Text:find(_d("HAAGUA1KVAcL"), 1, true) then
srf = mjk.Text:match(_d("HAAGUA1KVAcLUEZTEVpFTFE"))
break
end
end
end

return ao, srf
end

local function woq(kmb)
if type(kmb) ~= _d("HREHXBde") then
return 0
end

local noza = tonumber(kmb:match(_d("RkARHlBR"))) or 0
local zgt = tonumber(kmb:match(_d("RkARHlBU"))) or 0
local gkuu = tonumber(kmb:match(_d("RkARHlBK"))) or 0
return noza * 3600 + zgt * 60 + gkuu
end

local function ncbv()
local vym = aywy.shopState
local xprk, uhz = qvx()
local pg = {}
local ellv = {}
local fq = {}

for yyrj, xrrt in ipairs(itcd.shopItems) do
local okv = xrrt.stock
local vd = nil

if vym and vym.stocks and vym.stocks[xrrt.id] then
okv = vym.stocks[xrrt.id]
end

local usi = aywy.purchased[xrrt.id] or 0

if vym and vym.bought then
usi = math.max(usi, vym.bought[xrrt.id] or 0)
end

if okv then
vd = math.max(0, okv - usi)
end

if (not vym or not vym.bought) and xprk[xrrt.id] then
vd = xprk[xrrt.id].remaining
okv = xprk[xrrt.id].total
end

local ou = xrrt.currency == _d("BAQWXiZWKwIEG0EcSxo") and _d("IgQbQRxLGh0") or _d("LQQbUQA")
local ms

if vd == nil then
ms = xrrt.shortName
elseif vd <= 0 then
ms = xrrt.shortName .. _d("TqfCFQpWGApFGkAN")
else
ms = xrrt.shortName .. _d("TqfCFQ") .. tostring(vd) .. _d("QQ") .. tostring(okv or _d("UQ"))
end

if not ellv[ou] then
ellv[ou] = {}
table.insert(fq, ou)
end

table.insert(ellv[ou], ms)
end

local gf = {}

for rno, iqzc in ipairs(fq) do
table.insert(gf, iqzc)

for ewbk, tprs in ipairs(ellv[iqzc]) do
table.insert(gf, tprs)
end
end

table.insert(pg, table.concat(gf, _d("ZG8")))
table.insert(pg, _d(""))

if vym and type(vym.resetsIn) == _d("ABAYVxxL") then
local gz = vym.resetsIn - (os.clock() - aywy.stateAt)
table.insert(pg, _d("PAAGQRZaHx1FHFtZ") .. iu(gz))
elseif uhz then
if aywy.uiTimerText ~= uhz then
aywy.uiTimerText = uhz
aywy.uiTimerSeconds = woq(uhz)
aywy.uiTimerAt = os.clock()
end

local cfi = aywy.uiTimerSeconds - (os.clock() - aywy.uiTimerAt)
table.insert(pg, _d("PAAGQRZaHx1FHFtZ") .. iu(cfi))
else
table.insert(pg, _d("PAAGQRZaHx1FEVQQVQ1Op8IVD1AHBxFVQRFcVB0NGkU"))
end

if not itcd.fresh() then
table.insert(pg, itcd.trip.lastResult or _d("Og0QFRpWAQAREEdZUAdOBhlaClwQTkhVeglcGk4WHVoJGQMPCR5GWU0cC0UWXRhLFQ0REEdZTAROERoVEE1a"))
end

return table.concat(pg, _d("ZA"))
end

wpse.NPCBattleResult.OnClientEvent:Connect(function(sjtx)
if type(sjtx) ~= _d("GgQXWRw") then
return
end

zo.battlePending = false

if sjtx.result == _d("DQoaWR1WAwA") and type(sjtx.remaining) == _d("ABAYVxxL") and bbr and tpbw then
nt(bbr, tpbw, os.time() + sjtx.remaining)
return
end

if type(sjtx.npcId) == _d("HREHXBde") then
local dhy = type(sjtx.difficulty) == _d("HREHXBde") and sjtx.difficulty or zo.activeDifficulty[sjtx.npcId] or _d("AAoHWBhV")
local zf = tfz.ById[sjtx.npcId]
local vuu = tonumber(sjtx.cooldown) or (zf and zf.cooldown) or 300
nt(sjtx.npcId, dhy, os.time() + vuu)
end
end)

wpse.SyncNPCCooldowns.OnClientEvent:Connect(function(ta)
if type(ta) ~= _d("GgQXWRw") then
return
end

for nhe, yh in pairs(ta) do
if type(nhe) == _d("HREHXBde") and type(yh) == _d("ABAYVxxL") then
local sju = zo.activeDifficulty[nhe] or _d("AAoHWBhV")
nt(nhe, sju, yh)
end
end
end)

local zeya = {}
local pmf = {}

for vtho, alz in ipairs(zaa.Worlds) do

local cu = { _d("LwkZ") }
local ojh = {}
local tlev = {}
local jdr = nil

for tnty, vc in ipairs(alz.npcs or {}) do
local ywun = tfz.ById[vc]
if ywun then
table.insert(cu, ywun.name)
table.insert(tlev, vc)
ojh[ywun.name] = vc
if ywun.type == _d("DAQBQRVc") then
jdr = vc
end
end
end

local rgoe = alz.id
if jdr and ih.ById[jdr] then
rgoe = ih.ById[jdr].worldId or rgoe
end

for mnvv, oevy in ipairs(alz.npcs or {}) do
pmf[oevy] = rgoe

zo.bossTeams.worldOf[oevy] = alz.id
end

table.insert(zeya, {
id = alz.id,
teleportWorldId = rgoe,
name = alz.name,
options = cu,
ids = tlev,
byName = ojh,
npcs = alz.npcs,
})
end

local xca = {}
local rab = {}
local aib = {}

for grr, swtn in ipairs(zaa.Difficulties) do
table.insert(xca, swtn.name)
rab[swtn.name] = swtn.id
aib[swtn.id] = swtn.name
end

local hfc = {}
local bqdu = {}

for whc, pihz in ipairs(dupz.Difficulties) do
table.insert(hfc, pihz.name)
bqdu[pihz.name] = pihz.id
end

local yovs = {}
local azaq = {}
local mbxj = {}
local xcus = {
soul_king = _d("PAQcUS5WBgIB"),
beerus = _d("PAQcUS5WBgIBKnccXAYbFg"),
reid = _d("PAQcUS5WBgIBKmccUBA"),
}

for mjnp, qw in ipairs(dupz.Raids) do
if qw.BossTitle and qw.id then
table.insert(yovs, qw.BossTitle)
azaq[qw.BossTitle] = qw.id
mbxj[qw.id] = qw.NpcId
end
end

local function mb()
for xfy, foy in ipairs({ _d("LAQBQRVcMxsM"), _d("LAQBQRVcMxsMRw") }) do
local wnp = vklq:FindFirstChild(foy)
local xdnf = wnp and wnp:FindFirstChild(_d("LAQBQRVcJw0XEFAX"))
if xdnf and xdnf.Visible then
return xdnf
end
end
end

local function jss()
for wpc, pi in ipairs({ _d("LAQBQRVcMxsM"), _d("LAQBQRVcMxsMRw") }) do
local smt = vklq:FindFirstChild(pi)
local cct = smt and smt:FindFirstChild(_d("LAQBQRVcJw0XEFAX"))
if cct then
return cct
end
end
end

local function cblf()
if mb() then
return true
end

for xafh, rofp in ipairs({ _d("LAQBQRVcMxsM"), _d("LAQBQRVcMxsMRw") }) do
local ke = vklq:FindFirstChild(rofp)
local ljs = ke and ke:FindFirstChild(_d("JgwRUDtYABoJEHcMTQABCw"))
if ljs and ljs.Visible then
return true
end
end

for viw, yhai in ipairs({ _d("Jws3VA1NGAs"), _d("Jws3VA1NGAtX") }) do
local iko = vklq:FindFirstChild(yhai)
if iko and iko:IsA(_d("LAoaWS9YGBsA")) and iko.Value then
return true
end
end

return false
end

function kpy.slotFree(vioa)

if vioa == nil then
return false
end

if not kpy.enabled then
return not cblf()
end

return not kpy.busy(vioa)
end

function kpy.npcSlot()
return kpy.roleSlot(_d("ABUW"))
end

local aa

local function rw(swcg)
swcg = math.max(0, math.floor(swcg))
if swcg <= 0 then
return _d("HAAUUQA")
end

local sk = math.floor(swcg / 60)
local igrk = swcg % 60

if sk > 0 then
return string.format(_d("SwEYFVwJRgoW"), sk, igrk)
end

return string.format(_d("SwEG"), igrk)
end

local function tf()
for fznl, rup in ipairs({ _d("LAQBQRVcMxsM"), _d("LAQBQRVcMxsMRw") }) do
local trx = vklq:FindFirstChild(rup)
if trx then
local gfl = trx:FindFirstChild(_d("PBAbcxVWGxwpFFccVQ"))
local irg = trx:FindFirstChild(_d("OgoCUAt/GAEKB3kYWxEC"))
if (gfl and gfl.Visible) or (irg and irg.Visible) then
return _d("JwtVYRZOERw")
end
end
end

if wnit.currentRoom and (wnit.inBattle or cblf()) then
local zk = nil

for mevi, oqgq in ipairs({ _d("LAQBQRVcMxsM"), _d("LAQBQRVcMxsMRw") }) do
local mikx = vklq:FindFirstChild(oqgq)
local xlx = mikx and mikx:FindFirstChild(_d("LAQBQRVcJw0XEFAX"))
local tlx = xlx and xlx:FindFirstChild(_d("KwsQWAB4FxoMA1A6WAYK"))
local ung = tlx and tlx:FindFirstChild(_d("IAQYUDVYFgsJ"))

if ung and ung.Text ~= _d("") then
zk = ung.Text
break
end
end

if zk then
return _d("LAQBQRVQGglF") .. zk .. _d("Tj4nWhZUVA") .. wnit.currentRoom .. _d("Mw")
end

return _d("LAQBQRVQGglFLmcWVhlO") .. wnit.currentRoom .. _d("Mw")
end

local fk = jss()
if cblf() and fk then
local erh = fk:FindFirstChild(_d("KwsQWAB4FxoMA1A6WAYK"))
local dfey = erh and erh:FindFirstChild(_d("IAQYUDVYFgsJ"))
local lr = dfey and dfey.Text

local pioc = nil
if zo.currentBattle then
pioc = zo.currentBattle.difficulty
elseif lr then
local loqn = fe[lr]
if loqn then
pioc = zo.activeDifficulty[loqn]
end
end

local rle = _d("")
if pioc then
rle = _d("Tj4") .. (aib[pioc] or pioc) .. _d("Mw")
end

local nhj = lr
if zo.currentBattle and zo.currentBattle.npcId then
local ydx = tfz.ById[zo.currentBattle.npcId]
if ydx then
nhj = ydx.name
end
end

if nhj and nhj ~= _d("") then
return _d("LAQBQRVQGglF") .. nhj .. rle
end

return _d("LAQBQRVQGgk") .. rle
end

zo.currentBattle = nil

local yrkk = lgd.enabled and (lgd.bossFor(1) or lgd.bossFor(2))

if yrkk then
local wdbe = jw:FindFirstChild(_d("PAQcUSpNFRoQBg"))

if wdbe then
local mmda = yrkk
local wzc = dupz.ById[mmda]
local wrz = wzc and wzc.BossTitle or mmda
local ishb = wdbe:GetAttribute(_d("JxY6RRxX")) == true or wdbe:GetAttribute(_d("KAoHVhxd")) == true
local ee = wdbe:GetAttribute(_d("PAAUUQBm") .. mmda) == true
local nojt = lgd.progress[mmda]
local oap = nojt and nojt.locked == true

if not ishb then
local hvf = tonumber(wdbe:GetAttribute(_d("LQ0UWx5cBy8R"))) or 0
return _d("JwEZUFkUVA") .. wrz .. _d("TjcUXB0DVA") .. rw(hvf - os.time())
end

if nojt and nojt.cooldowns then
local qtaf = tonumber(nojt.cooldowns.normal)

if qtaf and qtaf > 0 then
return _d("JwEZUFkUVA") .. wrz .. _d("TjcUXB0DVA") .. rw(qtaf)
end
end

if not ee or oap then
return _d("JwEZUFkUVA") .. wrz .. _d("TjcUXB0DVAIKFl4cXQ")
end

return _d("JwEZUFkUVA") .. wrz .. _d("TjcUXB0DVBwAFFEA")
end
end

if cibk.enabled then
if cibk.usingGameAuto then
return _d("KAwGXRBXE05IVVIYVBFOBABBFhlc") .. xj(ntej()) .. _d("TgYUQB5RAEc")
end

if cibk.phase == _d("DQQGQRBXEw") then
return _d("KAwGXRBXE05IVVYYSgAHCxI")
end

if cibk.phase == _d("GQQcQRBXEywMAVA") then
return _d("KAwGXRBXE05IVUIYUAAHCxIVH1YGTgRVVxBNEQ")
end

if cibk.phase == _d("HAAQWRBXEw") or cibk.phase == _d("HAAGWhVPHQAC") then
return _d("KAwGXRBXE05IVUccXBgHCxIVFlcRTgwb")
end

return _d("KAwGXRBXE05IVVwdVRFOTQ") .. xj(ntej()) .. _d("TgYUQB5RAEc")
end

if not zo.enabled and not zo.story then
return _d("JwEZUA")
end

local so, mxqp, xie = aa()

if so then
local uz = tfz.ById[so]
local ja = uz and uz.name or so
local jnph = (mxqp or 0) - os.time()
local vsa = aib[xie] or xie or _d("IAoHWBhV")

return _d("JwEZUFkUVCAADUFDGQ") .. ja .. _d("Tj4") .. vsa .. _d("M0Vd") .. rw(jnph) .. _d("Rw")
end

return _d("JwEZUA")
end

local function qn(xgj)
local utkp = workspace:FindFirstChild(_d("IDU2Rg"))
if not utkp then
return nil
end

for mhdj, paz in ipairs(utkp:GetChildren()) do
if paz:GetAttribute(_d("IDU2fB0")) == xgj then
return paz
end
end

return nil
end

local function epzr(xdyw)
local gid = zhiw.Character
local yck = gid and gid:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))
if not (yck and xdyw) then
return false
end

local ytn, jskg = pcall(function()
return xdyw:GetPivot()
end)
if not ytn then
return false
end

local sd = jskg.Position + jskg.LookVector * 6 + Vector3.new(0, 3, 0)
local rvd = Vector3.new(jskg.Position.X, sd.Y, jskg.Position.Z)

yck.CFrame = CFrame.lookAt(sd, rvd)
return true
end

local function xv()
local ay = zhiw:FindFirstChild(_d("PgkUTBxLJw0XHEUNSg"))
local ls = ay and ay:FindFirstChild(_d("PgkUTBxLOQEBAFkc"))

if not ls then
return nil
end

local pj, vdk = pcall(require, ls)
if not pj then
return nil
end

local rff, sjh = pcall(function()
return vdk:GetControls()
end)

if rff then
return sjh
end
end

local function rvk(rewa, xjs, ijp, kmp, daiz)
kmp = kmp or 8

local function axj()
return xjs and xjs()
end

local ye = os.clock()

while os.clock() - ye < 5 do
if axj() then
return false
end

if zhiw.Character and zhiw.Character:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ")) then
break
end
task.wait(0.2)
end

local ypw = zhiw.Character
local ide = ypw and ypw:FindFirstChildOfClass(_d("JhAYVBdWHQo"))
local qzu = ypw and ypw:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if not (ide and qzu) then
return false
end

if (qzu.Position - rewa).Magnitude <= kmp then
return true
end

local xkxr = ijp or ide.WalkSpeed
local adq = xv()
local wzsu = ide.JumpPower
local hbe = ide.UseJumpPower

if daiz then
pcall(function()
ide.UseJumpPower = true
ide.JumpPower = math.max(wzsu, 60)
end)
end

if adq then
pcall(function()
adq:Disable()
end)
end

local eky = ide:FindFirstChildOfClass(_d("LwscWBhNGxw"))
local wb = nil
local oxs = ypw:FindFirstChild(_d("LwscWBhNEQ"))
local qavl = oxs and (oxs:FindFirstChild(_d("OQQZXjhXHQM"), true) or oxs:FindFirstChild(_d("PBAbdBdQGQ"), true))

if eky and qavl then
local hqm, njq = pcall(function()
return eky:LoadAnimation(qavl)
end)

if hqm and njq then
wb = njq
wb.Looped = true
wb.Priority = Enum.AnimationPriority.Movement
pcall(function()
wb:Play()
end)
end
end

local function kpaa(qvgp)
qzu.AssemblyLinearVelocity = Vector3.new(0, qzu.AssemblyLinearVelocity.Y, 0)

if wb then
pcall(function()
wb:Stop(0.1)
end)
end

if adq then
pcall(function()
adq:Enable()
end)
end

if daiz then
pcall(function()
ide.JumpPower = wzsu
ide.UseJumpPower = hbe
end)
end

return qvgp
end

local function ptu(sbyi, ivbe)
local lkr = os.clock()
local mcjw = os.clock()
local cy = 0
local bgo = qzu.Position

while os.clock() - lkr < ivbe do
if axj() then
return false
end

local xxq = sbyi - qzu.Position
xxq = Vector3.new(xxq.X, 0, xxq.Z)

if xxq.Magnitude <= 3 then
return true
end

local nv = xxq.Unit
qzu.AssemblyLinearVelocity = Vector3.new(
nv.X * xkxr,
qzu.AssemblyLinearVelocity.Y,
nv.Z * xkxr
)

if daiz and os.clock() - mcjw >= 0.5 then
local qbl = (qzu.Position - bgo).Magnitude
local zutu = ide:GetState()
local opi = zutu ~= Enum.HumanoidStateType.Jumping and zutu ~= Enum.HumanoidStateType.Freefall

if qbl < 1.5 and opi and os.clock() - cy >= 0.8 then
ide.Jump = true
cy = os.clock()
end

bgo = qzu.Position
mcjw = os.clock()
end

task.wait()
end

return false
end

local qst = hl:CreatePath({
AgentRadius = 2.5,
AgentHeight = 5,
AgentCanJump = true,
WaypointSpacing = 8,
})

local usn = pcall(function()
qst:ComputeAsync(qzu.Position, rewa)
end)

if usn and qst.Status == Enum.PathStatus.Success then
for gyd, tkby in ipairs(qst:GetWaypoints()) do
if axj() then
return kpaa(false)
end

if (qzu.Position - rewa).Magnitude <= kmp then
break
end

if not ptu(tkby.Position, 10) and axj() then
return kpaa(false)
end
end
end

if axj() then
return kpaa(false)
end

local pwhl = ptu(rewa, 15)
return kpaa(pwhl)
end

local function zm(bonm, dfn, btlr)
return rvk(bonm, btlr, dfn)
end
getgenv().ACBXWalkCancel = false
getgenv().ACBXWalkToPositionWithSpeed = function(ctr, cywm)
return zm(ctr, cywm, function()
return getgenv().ACBXWalkCancel == true
end)
end

local function bbut()
if zo.story then
return { zo.storyDifficulty }
end

return zo.difficulties
end

local function iqa()
local je = {}

if zo.story then
for mauw, qpja in ipairs(zeya) do
for ica, fpib in ipairs(qpja.ids) do
table.insert(je, fpib)
end

if qpja.id == _d("BxYQXhhQ") then
break
end
end

return je
end

local ax = {}

for kpup, xuc in ipairs(zeya) do
local kk = zo.selectedByWorld[xuc.name]

if kk then
for nz, ivxs in ipairs(kk) do
if not ax[ivxs] then
ax[ivxs] = true
table.insert(je, ivxs)
end
end
end
end

return je
end

aa = function()
local ljvz = nil
local qf = nil
local jbsu = nil

for msqk, rxuo in ipairs(iqa()) do
local dvuk = zo.unlocked[rxuo]

for woek, jkh in ipairs(bbut()) do
if not dvuk or dvuk[jkh] ~= false then
local nbsr = uv(rxuo, jkh)

if not jbsu or nbsr < jbsu then
ljvz = rxuo
qf = jkh
jbsu = nbsr
end
end
end
end

return ljvz, jbsu, qf
end

local function fefd(ote)
if type(ote) ~= _d("HREHXBde") then
return nil
end

local bw = tonumber(ote:match(_d("RkARHlBR")))
local fc = tonumber(ote:match(_d("RkARHlBU")))
local sm = tonumber(ote:match(_d("RkARHlBK")))

if not bw and not fc and not sm then
return nil
end

return (bw or 0) * 3600 + (fc or 0) * 60 + (sm or 0)
end

local function bwm()
local ujlr = workspace:FindFirstChild(_d("IDU2Rg"))
if not ujlr then
return
end

for ho, krg in ipairs(ujlr:GetChildren()) do
local fae = krg:GetAttribute(_d("IDU2fB0"))
if type(fae) == _d("HREHXBde") then
local lgob = krg:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))
local ljvb = lgob and lgob:FindFirstChild(_d("IDU2dhZWGAoKAls7UBgCBxpUC10"))
local xffg = ljvb and ljvb:FindFirstChild(_d("OgwYUAt1FQwAGQ"))

local hpq = zo.activeDifficulty[fae] or _d("AAoHWBhV")

if ljvb and xffg then
local ccl = fefd(xffg.Text)
if ccl and ccl > 0 then
local whko = os.time() + ccl
if whko > uv(fae, hpq) then
nt(fae, hpq, whko)
end
end
else
nt(fae, hpq, 0)
end
end
end
end

local function zjl(nqe)
local bimx = {}

for mtgo, sf in ipairs(getconnections(wpse.OpenNPCDialog.OnClientEvent)) do
if sf.Enabled then
sf:Disable()
table.insert(bimx, sf)
end
end

local bct = false
local wv
wv = wpse.OpenNPCDialog.OnClientEvent:Connect(function(cr, fh, mgvx, wei)
if cr ~= nqe or type(wei) ~= _d("GgQXWRw") or type(wei.cooldowns) ~= _d("GgQXWRw") then
return
end

for ice, rbul in pairs(wei.cooldowns) do
if type(ice) == _d("HREHXBde") and type(rbul) == _d("ABAYVxxL") then
nt(nqe, ice, rbul > 0 and (os.time() + rbul) or 0)
end
end

if type(wei.unlocked) == _d("GgQXWRw") then
zo.unlocked[nqe] = wei.unlocked
end

bct = true
end)

wpse.OpenNPCDialog:FireServer(nqe)

local vg = os.clock()
while not bct and os.clock() - vg < 1.5 do
task.wait(0.05)
end

wv:Disconnect()

for ql, bi in ipairs(bimx) do
bi:Enable()
end

if bct then
zo.lastFetch[nqe] = os.time()
end

return bct
end

bwm()

local rcpg = false
local hfb = {}

local function lfuj(zmi)
rcpg = zmi

local oydd = vklq:FindFirstChild(_d("LQQHUTZJEQA"))
if not oydd then
return
end

local cg = oydd:FindFirstChild(_d("LQQHUTZJEQA"))

if zmi then
if cg then
hfb = getconnections(cg.Event)
for han, sidt in ipairs(hfb) do
if sidt.Enabled then
sidt:Disable()
end
end
end

oydd.Enabled = false

local pehl = vklq:FindFirstChild(_d("OgoCUAtrER0QGUE+TB0"))
if pehl then
local sn = pehl:FindFirstChild(_d("PAAGQBVNMhwEGFA"))
if sn then
sn.Visible = false
end

local rro = pehl:FindFirstChild(_d("KQAbUAtYAAcLEnMLWBkL"))
if rro then
rro.Visible = false
end
end
else
for gyve, bxj in ipairs(hfb) do
if not bxj.Enabled then
bxj:Enable()
end
end

hfb = {}
oydd.Enabled = true
end
end

getgenv().ACBXSetAutoCloseGeneration = lfuj

local ixm

for ni = 1, 3 do
local kbp, pdxp = pcall(function()
return game:HttpGet(_d("BhEBRQoDW0ECHEERTBZABhpYVlsdCQIUVxZARl9XWngYWhgHB1pHHFURDxYQRlZVFRoABkFWXRsZCxlaGF1bAwQWWRBbWhodAQ"))
end)

if kbp and type(pdxp) == _d("HREHXBde") and #pdxp > 20000 then
ixm = pdxp
break
end

warn(_d("NSQ2dyFkVCMEFnkQW1QIAAFWERkVGhEQWAlNVA") .. ni .. _d("TgMUXBVcEFRF") .. tostring(pdxp))
task.wait(2)
end

if not ixm then
warn(_d("NSQ2dyFkVCMEFnkQW1QNCgBZHRkaARFVVxwZGAEEEVAdGVlOFgFaCUkdAAJVRhYZAAYAVVscQQBOAA1QGkwAC0UGQRhLAB1FFlkcWBpA"))
return
end

local xhvd, xtee = ixm:gsub(
_d("LQobQRxXAD4XGkMQXREcXyVHHFUbDwE0RgBXF0tNFEYKXAAiDAZBXBA"),
_d("GgQGXldKBA8SGx0fTBoNERxaFxFdTiYaWw1cGho1B1oPUBALF09lC1wYAQQRdApAGg1NFEYKXAAiDAZBUBkRAAFc"),
1
)

local nlu = loadstring(xhvd)()

getgenv().ACBXMacLibPreloadPatch = xtee > 0

if type(nlu) ~= _d("GgQXWRw") then
warn(_d("NSQ2dyFkVCMEFnkQW1QKDBEVF1YAThcQQQxLGk4EVVkQWwYPFwwVVBkHGgoFRRBXE04WGhUNURFOCxBNDRkRFgAWQA1cVB0RFEcNSlQNCRBUFxc"))
return
end

do
local uosu = gethui and gethui() or game:GetService(_d("LQoHUD5MHQ"))

for jmoj, jj in ipairs(uosu:GetChildren()) do
local yclr = jj:IsA(_d("PQYHUBxXMxsM")) and jj:FindFirstChild(_d("LAQGUA"))

if yclr and yclr:FindFirstChild(_d("PQwRUBtYBg")) and yclr:FindFirstChild(_d("LQobQRxXAA")) then
pcall(function()
jj:Destroy()
end)
end
end
end

do
local ijs = os.clock() + 20

while not bq and os.clock() < ijs do
task.wait(0.05)
end
end

local hlh = nlu:Window({
Title = mlf,

Subtitle = _d("LSdVfQxbVEYT") .. tostring(game.PlaceVersion) .. _d("Rw"),
Size = UDim2.fromOffset(720, 500),
DragStyle = 1,
DisabledWindowControls = {},
ShowUserInfo = false,
Keybind = Enum.KeyCode.Comma,
AcrylicBlur = true,
})

getgenv().ACBXMacLib = nlu

do
local jb = _d("LyY3FStcFgcXAV0")

pcall(function()
nlu.Folder = jb
end)

pcall(function()
if isfolder and makefolder and not isfolder(jb) then
makefolder(jb)
end

if isfolder and makefolder and not isfolder(jb .. _d("QRYQQQ1QGgkW")) then
makefolder(jb .. _d("QRYQQQ1QGgkW"))
end
end)

pcall(function()
if nlu.SetFolder then
nlu:SetFolder(jb)
end
end)
end

hlh:GlobalSetting({
Name = _d("IAoBXB9QFw8RHFoXSg"),
Default = true,
Callback = function(ejy)
hlh:SetNotificationsState(ejy)
end,
})

hlh:GlobalSetting({
Name = _d("PQ0aQllsBwsXVXwXXxs"),
Default = false,
Callback = function(zvpr)
hlh:SetUserInfoState(zvpr)
end,
})

hlh:GlobalSetting({
Name = _d("LwsBXFlyHQ0O"),
Default = true,
Callback = function(lofa)
ynp.enabled = lofa
ynp.nextAt = os.clock() + 300
end,
})

hlh:GlobalSetting({
Name = _d("LxABWllpHQ0OVWAJGScaDBZe"),
Default = false,
Callback = function(rc)
cibk.stick.enabled = rc
cibk.stick.at = 0
cibk.stick.last = rc and _d("AgoaXhBXE04DGkdZWFQdERxWEg") or _d("AQMT")
end,
})

hlh:GlobalSetting({
Name = _d("LxABWllsBAoEAVA"),
Default = true,
Callback = function(vezq)
sr.enabled = vezq

if not vezq then
sr.pendingVersion = nil
sr.pendingSince = nil
end
end,
})

hlh:SetAcrylicBlurState(true)
hlh:SetNotificationsState(true)
hlh:SetUserInfoState(false)

do
local oz = game:GetService(_d("LQoHUD5MHQ"))

pcall(function()
if type(gethui) == _d("CBAbVg1QGwA") then
oz = gethui()
end
end)

local hkp = oz:FindFirstChild(_d("LSc9QBt7FQoCEA"))

if hkp then
hkp:Destroy()
end

local qt = Instance.new(_d("PQYHUBxXMxsM"))
qt.Name = _d("LSc9QBt7FQoCEA")
qt.ResetOnSpawn = false
qt.IgnoreGuiInset = true
qt.DisplayOrder = 2147483647
qt.Parent = oz

local fwv = Instance.new(_d("OgANQTtMABoKGw"))
fwv.Name = _d("LBABQRZX")
fwv.Size = UDim2.fromOffset(56, 56)

fwv.AnchorPoint = Vector2.new(0, 0.5)
fwv.Position = UDim2.new(1, -64, 0.5, 58)
fwv.BackgroundColor3 = Color3.fromRGB(30, 92, 235)
fwv.BorderSizePixel = 0
fwv.AutoButtonColor = false
fwv.Text = _d("")
fwv.Parent = qt

local irvh = Instance.new(_d("Oyw2WgtXERw"))
irvh.CornerRadius = UDim.new(0, 14)
irvh.Parent = fwv

local znff = Instance.new(_d("OywmQQtWHws"))
znff.Color = Color3.fromRGB(255, 255, 255)
znff.Thickness = 3
znff.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
znff.Parent = fwv

local mpyg = Instance.new(_d("OgANQTVYFgsJ"))
mpyg.Size = UDim2.fromScale(1, 1)
mpyg.BackgroundTransparency = 1
mpyg.Font = Enum.Font.GothamBlack
mpyg.TextSize = 16
mpyg.TextColor3 = Color3.fromRGB(255, 255, 255)
mpyg.Text = _d("LSd/fSx7")
mpyg.TextStrokeTransparency = 0.5
mpyg.Parent = fwv

local function nb()
local dr = qt.AbsoluteSize
local pir = qt.AbsolutePosition

return UDim2.fromOffset(
dr.X - pir.X - fwv.Size.X.Offset - 8,
(dr.Y / 2) - pir.Y
)
end

task.defer(function()
fwv.Position = nb()

local fr = workspace.CurrentCamera

if fr then
fr:GetPropertyChangedSignal(_d("OAwQQglWBho2HE8c")):Connect(function()
fwv.Position = nb()
end)
end
end)

getgenv().ACBXBadge = qt

local bba = false
local nue = false
local tsy = nil
local es = nil

fwv.InputBegan:Connect(function(pfay)
if pfay.UserInputType ~= Enum.UserInputType.MouseButton1 and pfay.UserInputType ~= Enum.UserInputType.Touch then
return
end

bba = true
nue = false
tsy = pfay.Position
es = fwv.Position
end)

fwv.InputEnded:Connect(function(fv)
if fv.UserInputType ~= Enum.UserInputType.MouseButton1 and fv.UserInputType ~= Enum.UserInputType.Touch then
return
end

bba = false
end)

fwv.MouseButton1Click:Connect(function()
if nue then
nue = false
return
end

hlh:SetState(not hlh:GetState())
end)

game:GetService(_d("OxYQRzBXBBsRJlALTx0NAA")).InputChanged:Connect(function(zcm)
if not bba then
return
end

if zcm.UserInputType ~= Enum.UserInputType.MouseMovement and zcm.UserInputType ~= Enum.UserInputType.Touch then
return
end

local pvnf = zcm.Position - tsy

if math.abs(pvnf.X) > 6 or math.abs(pvnf.Y) > 6 then
nue = true
end

fwv.Position = UDim2.new(
es.X.Scale,
es.X.Offset + pvnf.X,
es.Y.Scale,
es.Y.Offset + pvnf.Y
)
end)
end

local nlop = true

local rfq = (getgenv().ACBXRunId or 0) + 1
getgenv().ACBXRunId = rfq

local function ply()
return nlop and getgenv().ACBXRunId == rfq
end

local function unuw()
local ezx = math.max(0, math.floor(tonumber(workspace.DistributedGameTime) or 0))
local svij = math.floor(ezx / 3600)
local olt = math.floor((ezx % 3600) / 60)

if svij > 0 then
return svij .. _d("BkU") .. string.format(_d("S1VHURQ"), olt)
end

return olt .. _d("Aw")
end

do
local vpa = _d("LSdVfQxbVEYT") .. tostring(game.PlaceVersion) .. _d("Rw")

task.spawn(function()
local yyr = nil

while ply() do
local yqwa = vpa .. _d("TqfCFQxJVA") .. unuw()

if yqwa ~= yyr then
yyr = yqwa

pcall(function()
hlh:UpdateSubtitle(yqwa)
end)
end

task.wait(5)
end
end)
end

hlh.onUnloaded(function()
nlop = false
yv.save()

local tgwb = getgenv().ACBXBadge

if tgwb then
pcall(function()
tgwb:Destroy()
end)
getgenv().ACBXBadge = nil
end

if cibk.enabled then
zc()
end

if qcj then
pcall(function()
qcj:Disconnect()
end)
end
end)

task.spawn(function()
while ply() do
bwm()
task.wait(2)
end
end)

task.spawn(function()
while ply() do

local elo = cibk.enabled
and (cibk.deepZone or cibk.tpToBay)
and lgd.worldBoss ~= nil
and type(lgd.worldBoss.holdsFishing) == _d("CBAbVg1QGwA")
and lgd.worldBoss.holdsFishing() == true
local lhnf = elo or (zo.workPending and zo.workPending())

if cibk.enabled and cibk.deepZone and not lhnf then
nl.cycle()
end

if cibk.enabled then
if cibk.phase ~= _d("BwEZUA") and os.clock() >= cibk.watchdogAt then
cibk.phase = _d("BwEZUA")
cibk.nextCastAt = os.clock() + 1
end

if cibk.autoUnlocked and not cibk.usingGameAuto and not cibk.perfectCasts then
xqod()
end

if cibk.phase ~= _d("BwEZUA") and (cibk.watchdogAt or 0) > 0
and os.clock() > cibk.watchdogAt then
cibk.phase = _d("BwEZUA")
cibk.nextCastAt = 0
cibk.lastMessage = _d("LQQGQVlNHQMAERUWTABOSFVBC0AdAAJVVB5YHQA")
end

if cibk.phase == _d("BwEZUA") and os.clock() >= cibk.nextCastAt
and os.clock() >= math.max(cibk.shopTripUntil or 0, cibk.tpHoldUntil or 0)
and not cibk.usingGameAuto
and not nl.walking
and (not cibk.deepZone or nl.current() ~= nil)
and not lhnf then
if not cibk.deepZone and cibk.tpToBay and not bops() then
vvtg()
end

if not lpp() then
task.wait(4)
end
end

if not lhnf and os.clock() >= math.max(cibk.shopTripUntil or 0, cibk.tpHoldUntil or 0) then
if (cibk.totalCasts or 0) ~= (cibk.castMark or 0) then
cibk.castMark = cibk.totalCasts
cibk.castMarkAt = os.clock()
elseif (cibk.castMarkAt or 0) > 0
and os.clock() - (cibk.castMarkAt or 0) > 45 then
pcall(cibk.recover)
end
else
cibk.castMark = cibk.totalCasts
cibk.castMarkAt = os.clock()
end

if os.time() - cibk.lastSync >= 20 then
bfri()
end
end

task.wait(0.5)
end
end)

local baz

task.spawn(function()
local rspx = ncbv()

while ply() do
local cygy = ncbv()

if cygy ~= rspx then
rspx = cygy
pcall(function()
baz:UpdateBody(cygy)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while ply() do
if aywy.enabled then

if os.clock() >= (itcd.trip.untilAt or 0) then
itcd.open()
end

local kzmw = aywy.pending

if kzmw and os.time() - kzmw.at > 5 then

aywy.failedUntil[kzmw.id] = os.time() + 30
aywy.pending = nil
wpse.RequestItemSync:FireServer()
end

if os.time() - aywy.lastSync >= 20 then
aywy.lastSync = os.time()
wpse.RequestItemSync:FireServer()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
local vhjd = itcd.text()

while ply() do
local vj = itcd.text()

if vj ~= vhjd and itcd.paragraph then
vhjd = vj

pcall(function()
itcd.paragraph:UpdateBody(vj)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while ply() do

if itcd.upgrade.balance == nil or os.time() - itcd.upgrade.lastRequest >= 20 then
itcd.request()
end

if itcd.run.highest == nil and os.time() - itcd.run.lastRequest >= 5 then
itcd.requestProgress()
end

if itcd.upgrade.enabled then
itcd.buy()

if itcd.upgrade.waiting and os.time() - itcd.upgrade.lastBuy >= 5 then

itcd.upgrade.waiting = false
itcd.request()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
while ply() do
local xtvi = itcd.run

if xtvi.enabled then
if xtvi.highest == nil or os.time() - xtvi.lastRequest >= 20 then
itcd.requestProgress()
end

local jcw = xtvi.inBattle and os.time() < xtvi.inBattleUntil

if not jcw and kpy.halloweenSlot() ~= nil
and kpy.slotFree(kpy.halloweenSlot() or 1)

and (not de.enabled or kpy.towerSlot() ~= 1)
and (not nd.island or kpy.enabled)
and (not wnit.enabled or kpy.enabled)
and not (xtvi.pending and os.time() < xtvi.pendingUntil) then
if itcd.bestRoom() then
itcd.startRun()
elseif xtvi.highest ~= nil then

xtvi.enabled = false

pcall(function()
itcd.runToggle:UpdateState(false)
end)

pcall(function()
hlh:Dialog({
Title = _d("LxABWllxFQIJGkIcXBpOMRpCHEs"),
Description = _d("KxMQRwAZPA8JGVoOXBEARSFaDlwGThYBVB5cVAcWVVYVXBUcABEVGFUGCwQRTFUZBwFFAV0cSxFODAYVF1YABgwbUllVEQgRVUEWGQYbC1s"),
Buttons = {
{
Name = _d("KQoBFRBN"),
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

local qg = hlh:TabGroup()

local gq = qg:Tab({
Name = _d("IwQcWw"),
Image = _d("HAcNVApKERoMEQ9WFkVcXUMGSQ1MW11EAUEOTA"),
})

local hi = qg:Tab({
Name = _d("OgoCUAsZUk4xEFQU"),
Image = _d("HAcNVApKERoMEQ9WFkVeU0AFQABNXVBAA0gORQ"),
})

task.spawn(function()
local xcpw = 0
local puov = 0

local bp = 0

while ply() do
local tal = cibk.rebirthText()

if cibk.rebirthParagraph and tal ~= cibk.rebirthShown then
cibk.rebirthShown = tal

pcall(function()
cibk.rebirthParagraph:UpdateBody(tal)
end)
end

if os.clock() >= bp then
bp = os.clock() + 20

local yt = nd.remotes and nd.remotes.request

if yt then
pcall(function()
yt:FireServer()
end)
end
end

local mitq = nd.buffText()

if nd.islandParagraph and mitq ~= nd.buffShown then
nd.buffShown = mitq

pcall(function()
nd.islandParagraph:UpdateBody(mitq)
end)
end

if cibk.autoRebirth then
if os.clock() - xcpw > 15 then
xcpw = os.clock()
bfri()
end

if cibk.rebirthReady() and os.clock() >= puov then
local xlc = workspace:FindFirstChild(_d("IwQSXBpYGE4nGloS"), true)

if xlc then
epzr(xlc)
task.wait(0.8)
end

local znwn, uebx = umg(_d("PAAXXAtNHA"))

if znwn then
cibk.autoRebirth = false

pcall(function()
cibk.rebirthToggle:UpdateState(false)
end)

hlh:Notify({
Title = _d("PAAXXAtNHA"),
Description = _d("PAAXXAtNHAsBWxUtURFOJBdUF10bAAARFTBKGA8LERUQSlQBFRBbVw"),
Lifetime = 6,
})
elseif uebx ~= _d("HQkaQg") then
puov = os.clock() + 20

hlh:Notify({
Title = _d("PAAXXAtNHA"),
Description = _d("PAAXXAtNHE4XEFMMShEKX1U") .. tostring(uebx),
Lifetime = 6,
})
end
end
end

task.wait(3)
end
end)

local dakh = qg:Tab({
Name = _d("KAwGXRBXEw"),
Image = _d("HAcNVApKERoMEQ9WFkVfUUAATAhAXFBDA00KRQ"),
})

local gg = qg:Tab({
Name = _d("KgwSUhBXEw"),
Image = _d(""),
})

local qfzg = qg:Tab({
Name = _d("KxMQWw1K"),
Image = _d("HAcNVApKERoMEQ9WFkVcUEUESw9BXlFMAkEBRw"),
})

local pf = dakh:Section({
Side = _d("IgATQQ"),
})

pf:Header({
Name = _d("KAwGXRBXE06V6rva"),
})

local svyx

local function ofem(rufb)
cibk.enabled = rufb
cibk.phase = _d("BwEZUA")
cibk.nextCastAt = 0
cibk.castMark = cibk.totalCasts
cibk.castMarkAt = os.clock()

if not rufb then
zc()
return
end

task.spawn(function()
if not bg() then
hlh:Notify({
Title = _d("LxABWll/HR0N"),
Description = _d("IApVUxBKHAcLEhULVhBODBsVDVERTgcUVhJJFQ0OWw"),
Lifetime = 5,
})
end

if cibk.tpToBay and not bops() then
vvtg()
end

bfri()

if cibk.autoUnlocked and not cibk.perfectCasts then
xqod()
end
end)
end

local tjw = false

local function stah()
if cibk.tpToBay or cibk.deepZone then
if cibk.autoFishWanted then

cibk.autoFishWanted = false

pcall(function()
svyx:UpdateState(true)
end)

if not cibk.enabled then
ofem(true)
end
end

return true
end

if cibk.enabled then

cibk.autoFishWanted = true

ofem(false)

if not tjw then
hlh:Dialog({
Title = _d("LxABWll/HR0NVVofXw"),
Description = _d("JxFVWxxcEB1FFBUKSRsaRQFaWV8dHQ1VVA0ZWU4RAEcXGRsARSFlWU0bTicUTFlWBk4EVXEcXAROMhRBHEsHThYCXA1aHEA"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})
end
end

return false
end

svyx = pf:Toggle({
Name = _d("LxABWll/HR0N"),
Default = false,
Callback = function(tfzv)
if tfzv and rz then
pcall(function()
svyx:UpdateState(false)
end)

if not tjw then
hlh:Dialog({
Title = _d("LxABWll/HR0NVVwKGQQPFx5QHQ"),
Description = _d("LxABWll9HQlFHVQKGQAGAFVGEVYCCwlVXBcZHA8LERtZbQEcC1V0DE0bTiEcUllWEghFFFsdGTUbERoVP1AHBkUGQRhLAB1FG1oLVBUCCQwb"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})
end

return
end

if tfzv and not (cibk.tpToBay or cibk.deepZone) then

pcall(function()
svyx:UpdateState(false)
end)

cibk.autoFishWanted = true

if not tjw then
hlh:Dialog({
Title = _d("LxABWll/HR0NVVscXBAdRRQVCkkbGg"),
Description = _d("OhAHW1lWGk4xJRUNVlQsBAwVFktUD0UxUBxJVDkEAVALSlQdEhxBGlFUCAwHRg0ZWU4kAEEWGTIHFh0VCk0VHBEGFRtAVAcRBlAVX1QPFlVGFlYaTgQGFRZXEU4KExUNUREDRRxGWVYaQA"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})
end

return
end

cibk.autoFishWanted = false

ofem(tfzv)
end,
}, _d("DxABWiZfHR0N"))

cibk.autoFishToggle = svyx

pf:Toggle({
Name = _d("PgAHUxxaAE4GFEYNSlRGHUcVFUwXBUw"),
Default = true,
Callback = function(oqya)
cibk.perfectCasts = oqya

if oqya and cibk.usingGameAuto then
zc()
end
end,
}, _d("HgAHUxxaADEGFEYNSisWVypZDFof"))

pf:Toggle({
Name = _d("OjVVQRYZNg8c"),
Default = false,
Callback = function(nhr)
cibk.tpToBay = nhr

stah()
end,
}, _d("GhUqQRZmFg8c"))

local zeyr
local lgaq

zeyr = pf:Toggle({
Name = _d("OgAZUAlWBhpFAVpZfRELFRBGDRkjDxEQRw"),
Default = false,
Callback = function(cpt)
if cpt then

cibk.deepWalk = false
cibk.deepDiveAt = 0
cibk.deepPhase = _d("BwEZUA")
cibk.deepStageAt = 0

pcall(function()
lgaq:UpdateState(false)
end)

cibk.deepZone = true

task.spawn(function()
if not nl.settle() and cibk.deepZone and not cibk.deepWalk then
hlh:Notify({
Title = _d("OgAZUAlWBhpFAVpZfRELFRBGDRkjDxEQRw"),
Description = _d("Og0QFR1cER5IAlQNXAZOCBRFWVcRGAAHFRVWFQoAERtZbQEcC1VBEVxUHRIcQRpRVAEDExUYVxBOChsVGF4VBwtVQRYZBgsRB0xX"),
Lifetime = 8,
})
end
end)

stah()

return
end

if cibk.deepWalk then
return
end

cibk.deepZone = false
cibk.deepDiveAt = 0
cibk.deepPhase = _d("BwEZUA")
cibk.deepStageAt = 0

task.spawn(function()
pcall(function()
wpse.TeleportToWorld:FireServer(_d("AgoXVwA"))
end)
end)

stah()
end,
}, _d("CgAQRSZOFRoAB2obXAcaOhlAGlI"))

lgaq = pf:Toggle({
Name = _d("OQQZXllNG04hEFAJXAcaRSJUDVwG"),
Default = false,
Callback = function(pw)
if pw then

local ubz = nl.customIsland or nl.islandOf(nl.spot())

if cibk.islandLocked and ubz == _d("DwcUWx1WGgsBKlwKVRUAAQ") then
cibk.deepWalk = false

pcall(function()
lgaq:UpdateState(false)
end)

hlh:Dialog({
Title = _d("OQQZXllNG04hEFAJXAcaRSJUDVwGTgsQUB1KVBoNEBU4WxUAARpbHF1UJxYZVBdd"),
Description = _d("Og0QFRBKGA8LERUQSlQCChZeHF1UAQtVQRFQB04EFlYWTBoaS1V6F1xUHAAXXAtNHE4KBVAXSlQHEVUYWUwaGgwZFQ1REQBFAV0cGRMPCBAVEVgHTgsaFQ1cGAsVGkcNGQAGAAdQWU0bThEUXhwX"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})

return
end

cibk.deepWalk = true
cibk.deepDiveAt = 0
cibk.deepPhase = _d("BwEZUA")
cibk.deepStageAt = 0

pcall(function()
zeyr:UpdateState(false)
end)

cibk.deepZone = true

task.spawn(function()
nl.walk()
end)

stah()

return
end

if not cibk.deepWalk then
return
end

cibk.deepWalk = false
cibk.deepZone = false
cibk.deepDiveAt = 0
cibk.deepPhase = _d("BwEZUA")
cibk.deepStageAt = 0

task.spawn(function()
pcall(function()
wpse.TeleportToWorld:FireServer(_d("AgoXVwA"))
end)
end)

stah()
end,
}, _d("GQQZXiZdEQsVKkIYTREc"))

pf:Paragraph({
Header = _d("KgAQRRxKAE4yFEEcSw"),
Body = _d("LAoBXVlKAwcRFl0cSlQCBBtRWVYaThEdUFluHQABGFwVVVQnFhlQWV0bDQ5VGFlNHAtFEVAcSREdEVVHEFcTQkUiXBddAw8XERUuWAALFwYVVBkHAUUBQAtXHQACVVoXXFQBC1VTC1YZTgQbTA5RERwAVVwXGQAGAFVSGFQRTgcHXBdeB04cGkBZWxUNDlVBFhkABgQBFQpJGxpLfz8uWBgFRRZaD1wGHUUBXRwZGA8WARUKTQYLERZdWVYaTgMaWg0ZAwcRHRUNURFOAhRYHB4HTgoCW1lYGgcIFEEQVhpVRSFQFVwEARcBFQlMAB1FDFoMGQAGAAdQWU4dGg0aQA0ZAAYAVUIYVR9ARSFaWVEbAgFVVFldHQgDEEccVwBOFgVaDRkdABYBUBhdWE4XAFtZeDcsPTFQHEkjDxEQR1daFR4RAEccEV1ODBsVDVERTgYaWwpWGAtFAl0QVRFOFgFUF10dAAJVWhcZHRpL"),
})

local wc

wc = pf:Paragraph({
Header = _d("KAwGXRBXE04WAVQNXA"),
Body = xeys(),
})

local ychy = qfzg:Section({
Side = _d("IgATQQ"),
})

ychy:Header({
Name = _d("LxABWllxFQIJGkIcXBpOMRpCHEuE8ev2xeaf8w"),
})

itcd.runToggle = ychy:Toggle({
Name = _d("LxABWllxFQIJGkIcXBpOMRpCHEs"),
Default = false,
Callback = function(frx)
itcd.run.enabled = frx
itcd.run.pending = false
itcd.run.pendingUntil = 0

if frx then
itcd.requestProgress()
end
end,
}, _d("DxABWiZRFQIJGkIcXBoxERpCHEs"))

itcd.run.team = math.clamp(math.floor(tonumber(zo.bossTeams.towerPicked.halloween) or 1), 1, 4)
itcd.run.teamChosen = tonumber(zo.bossTeams.towerPicked.halloween) ~= nil
itcd.run.building = true

itcd.run.teamDropdown = ychy:Dropdown({
Name = _d("OgAUWA"),
Search = false,
Multi = false,
Required = false,
Default = itcd.run.team,
Options = { _d("OgAUWFkI"), _d("OgAUWFkL"), _d("OgAUWFkK"), _d("OgAUWFkN") },
Callback = function(mi)
local krp = type(mi) == _d("GgQXWRw") and mi[1] or mi
local yar = type(krp) == _d("HREHXBde") and tonumber(krp:match(_d("RkARHlA"))) or nil

if not yar then
return
end

itcd.run.team = yar

if itcd.run.building then
return
end

itcd.run.teamChosen = true
zo.bossTeams.towerPicked.halloween = yar
zo.bossTeams.save()

pcall(function()
itcd.run.teamDropdown:UpdateName(_d("OgAUWFnb9MxF") .. (krp or (_d("OgAUWFk") .. tostring(yar))))
end)
end,
}, _d("GgAUWCZRFQIJGkIcXBo"))

pcall(function()
itcd.run.teamDropdown:UpdateSelection(_d("OgAUWFk") .. tostring(itcd.run.team))
itcd.run.teamDropdown:UpdateName(_d("OgAUWFnb9MxFIVAYVFQ") .. tostring(itcd.run.team))
end)

itcd.run.building = false

itcd.toggle = ychy:Toggle({
Name = _d("LxABWllMBAkXFFEcSg"),
Default = false,
Callback = function(wjqw)
if wjqw and not next(itcd.upgrade.selected) then
itcd.upgrade.enabled = false

pcall(function()
itcd.toggle:UpdateState(false)
end)

hlh:Dialog({
Title = _d("LxABWllMBAkXFFEcSg"),
Description = _d("PgwWXllYAE4JEFQKTVQBCxAVCUwZHg4cW1lMBAkXFFEcGR0ARQFdHBkQHAoFURZOGk4DHEcKTVRDRTRADVZUGxUSRxhdER1FBkUcVxAdRQxaDEtUJAQWXllWU04pFFsNXAYAFlVaFxkABgAYFRhKVB0KGltZWAdOHBpAWVoVAEUUUx9WBgpFGlscFw"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})

return
end

itcd.upgrade.enabled = wjqw

if wjqw then
itcd.request()
end
end,
}, _d("DxABWiZMBAkXFFEcSg"))

ychy:Dropdown({
Name = _d("PhAYRRJQGk4QBVILWBALFg"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = itcd.labels,
Callback = function(cey)
local iao = {}

if type(cey) == _d("GgQXWRw") then
for avp, juwy in ipairs(itcd.upgrades) do
if cey[juwy.name] then
iao[juwy.id] = true
end
end
end

itcd.upgrade.selected = iao

if not next(iao) and itcd.upgrade.enabled then
itcd.upgrade.enabled = false

pcall(function()
itcd.toggle:UpdateState(false)
end)

hlh:Dialog({
Title = _d("LxABWllMBAkXFFEcSlQBAxM"),
Description = _d("IAoBXRBXE04MBhUKXBgLBgFQHRkaARJZFQpWVBoNEEccGR0dRRtaDVEdAAJVWRxfAE4RGhUbTA1ARSVcGlJUDwtVQAleBg8BEBUYVxBOEQBHFxkdGkUXVBpSVAELWw"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})
end
end,
}, _d("HhAYRRJQGjEQBVILWBALFg"))

itcd.paragraph = ychy:Paragraph({
Header = _d("PhAYRRJQGh0"),
Body = itcd.text(),
})

local demv = qfzg:Section({
Side = _d("IgATQQ"),
})

demv:Header({
Name = _d("JgQZWRZOEQsLVUYRVgSe+vqfiabm7g"),
})

demv:Toggle({
Name = _d("LxABWll7ARc"),
Default = false,
Callback = function(npb)
aywy.enabled = npb
aywy.pending = nil

if npb then
wpse.RequestItemSync:FireServer()
task.spawn(function()
itcd.open(true)
end)
end
end,
}, _d("DxABWiZbARc"))

demv:Button({
Name = _d("IRUQW1lKHAEV"),
Callback = function()
task.spawn(function()
local agxn = itcd.open(true)

hlh:Notify({
Title = _d("JgQZWRZOEQsLVUYRVgQ"),
Description = agxn and _d("LQoAWw1cBk4KBVAXGVlOARRcFUBUHREaVhIZBgsEERUfSxsDRQFdHBkHCxcDUAsX") or tostring(itcd.trip.lastResult),
Lifetime = 6,
})

if baz then
pcall(function()
baz:UpdateBody(ncbv())
end)
end
end)
end,
})

demv:Dropdown({
Name = _d("JxEQWAo"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = itcd.shopLabels,
Callback = function(yodi)
local cz = {}

if type(yodi) == _d("GgQXWRw") then
for jrsb, wfl in ipairs(itcd.shopItems) do
if yodi[wfl.label] then
cz[wfl.id] = true
end
end
end

aywy.selected = cz
end,
}, _d("BxEQWAo"))

baz = demv:Paragraph({
Header = _d("PREaVhIZUk4XEEYcTQ"),
Body = ncbv(),
})

local ref = qfzg:Section({
Side = _d("PAwSXQ0"),
})

ref:Paragraph({
Header = _d("PQAURhZXFQJFEEMcVwAd"),
Body = _d("JgQZWRZOEQsLVVwKGRgHExAPWU0cC0UGXRZJVA8LERUNURFOMRpCHEtUDAoBXVlOGxwOWz9zeAEaClV9GFUYARIQUBcZIAESEEdZSgAPFwFGWUAbGxdVURxcBAsWARUMVxgBBh5QHRkGAQoYG1l6GAsEB1wXXlQdERRSHEpUHgQMRllzFQ0OVVpeGTgPCwFQC1cHQkUUWx0ZNRsRGhUMSRMcBBFQChkHHgAbUQoZAAYAGBUWV1QeAAdYGFcRABFVQRZOERxFF0AfXwdA"),
})

lgd.worldBoss.section = qfzg:Section({
Side = _d("PAwSXQ0"),
})

lgd.worldBoss.section:Header({
Name = _d("LxABWll+GAEHFFlZexsdFg"),
})

lgd.worldBoss.section:Paragraph({
Header = _d("PhccWgtQABc"),
Body = _d("PAQbXgoZAwcRHRUNURFOFxRcHUpOThEdUFlNGxkABxUKTRUAAQYVHVYDAEUTWgsZHRpJVVQXXVQvEAFaWXckLUUaQA1LFQAOBhUQTVpkbyFdHBkSBwIdQVlNFQUABhUYGQcCCgEZWUobTgwBFRpWAQARBhUYSlQPC1V7KXpUDAQBQRVcVBoNEEccFw"),
})

lgd.worldBoss.toggle = lgd.worldBoss.section:Toggle({
Name = _d("LxABWll+GAEHFFlZexsdFg"),
Default = false,
Callback = function(kywp)
if kywp and not lgd.worldBoss.teamChosen then
lgd.worldBoss.enabled = false

pcall(function()
lgd.worldBoss.toggle:UpdateState(false)
end)

hlh:Dialog({
Title = _d("LxABWll+GAEHFFlZexsdFlVbHFwQHUUUFQ1cFQM"),
Description = _d("PgwWXllNHAtFAVAYVFQHEVVGEVYBAgFVUxBeHBpFAlwNUVQHC1VBEVxUOgAUWFldBgEVEVoOV1QIDAdGDRdUOg0QFQpaBgcVARURWAdOERoVCk4dGgYdFQ1RFRpFBlkWTVMdRQFQGFRUDAATWgtcVBoNEBUfUBMGEVVGDVgGGhZZFRhXEE4xEFQUGUVODAYVFlcYF0UBXRwZEAsDFEAVTVRDRRxBWVAHTgsaQVlYVA0NGlwaXFQbCwFcFRkNARBVWBhSEU4MARs"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})

return
end

if kywp then
local izt = lgd.worldBoss.team
local johx = zo.bossTeams.teamCards(izt)

if johx == 0 then
lgd.worldBoss.enabled = false

pcall(function()
lgd.worldBoss.toggle:UpdateState(false)
end)

hlh:Dialog({
Title = _d("OgAUWFk") .. tostring(izt) .. _d("Tg0URllXG04GFEcdSg"),
Description = _d("PhABFRhNVAIAFEYNGRsAAFVWGEsQTgwbFS1cFQNF") .. tostring(izt) .. _d("Tk0xUBpSB0dJVVoLGQQHBh4VGBkACwQYFQ1RFRpFFFkLXBUKHFVdGEpUDQQHUQoZHQBFAV0cGSALBBgVHUsbHgEaQhcVVBoNEFtZTQEcC1V0DE0bTiIZWhtYGE4nGkYKGRYPBh4VFlda"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})

return
end
end

lgd.worldBoss.enabled = kywp
lgd.worldBoss.holdUntil = 0

lgd.worldBoss.nextFightAt = 0

if not kywp then
lgd.worldBoss.setRepeat(false)
end

if kywp then

lgd.worldBoss.syncedAt = 0
lgd.worldBoss.askedAt = 0
lgd.worldBoss.repeatSeeded = false
lgd.worldBoss.seenKills = nil
lgd.worldBoss.progressAt = os.clock()
lgd.worldBoss.kickAt = 0
end
end,
}, _d("DxABWiZeGAEHFFkmWxsdFg"))

lgd.worldBoss.claimToggle = lgd.worldBoss.section:Toggle({
Name = _d("LxABWllaGA8MGBULXAMPFxFG"),
Default = false,
Callback = function(mmel)
lgd.worldBoss.autoClaim = mmel
lgd.worldBoss.claimAt = 0

if mmel then
lgd.worldBoss.syncedAt = 0
lgd.worldBoss.askedAt = 0
end
end,
}, _d("DxABWiZaGA8MGGoLXAMPFxFG"))

lgd.worldBoss.fishingDropdown = lgd.worldBoss.section:Dropdown({
Name = _d("OQwBXVlfHR0NHFse"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("KAwGXVlYGAELEkYQXRE"), _d("KAwGXRBXE04SFFwNGRIBF1VXFkoH"), _d("KgwSFQ5YHRoWVVMWS1QMCgZG") },
Callback = function(szk)
local ab = type(szk) == _d("GgQXWRw") and szk[1] or szk

if ab == _d("KAwGXRBXE04SFFwNGRIBF1VXFkoH") or ab == _d("OQQcQVlfGxxFFloWVRABEhs") then
lgd.worldBoss.fishingMode = _d("GQQcQQ")
elseif ab == _d("KgwSFQ5YHRoWVVMWS1QMCgZG") then

lgd.worldBoss.fishingMode = _d("GgoSUA1RERw")
elseif ab == _d("KAwGXVlYGAELEkYQXRE") then
lgd.worldBoss.fishingMode = _d("GgoSUA1RERw")
end

lgd.worldBoss.digHold = ab == _d("KgwSFQ5YHRoWVVMWS1QMCgZG")

lgd.worldBoss.nextFightAt = 0
lgd.worldBoss.repeatSeeded = false
lgd.worldBoss.seenKills = nil
lgd.worldBoss.progressAt = os.clock()
end,
}, _d("GQcqUxBKHAcLEmoUVhAL"))

lgd.worldBoss.fullToggle = lgd.worldBoss.section:Toggle({
Name = _d("PREaRVlOHAsLVUERXFQMBAcVH1AYAhY"),
Default = false,
Callback = function(yglg)
lgd.worldBoss.stopAtFull = yglg
lgd.worldBoss.meterAt = 0
end,
}, _d("GQcqRg1WBDEEAWofTBgC"))

lgd.worldBoss.walkToggle = lgd.worldBoss.section:Toggle({
Name = _d("OQQZXllNG04CGVobWBhOBxpGCg"),
Default = false,
Callback = function(edvx)
lgd.worldBoss.walkToBoss = edvx

lgd.worldBoss.travelUntil = 0
end,
}, _d("GQcqQhhVHzERGmobVgcd"))

lgd.worldBoss.bodyParagraph = lgd.worldBoss.section:Paragraph({
Header = _d("LAoGRg"),
Body = lgd.worldBoss.bodyText(),
})

lgd.worldBoss.section:Header({
Name = _d("LAoGRllKHAEVVcXmt+uB3fo"),
})

lgd.worldBoss.shopParagraph = lgd.worldBoss.section:Paragraph({
Header = _d("JwtVRg1WFwU"),
Body = lgd.worldBoss.shopText(),
})

lgd.worldBoss.itemsDropdown = lgd.worldBoss.section:Dropdown({
Name = _d("JxEQWAo"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = lgd.worldBoss.shopOptions(),
Callback = function(gn)
local cwxl = {}

if type(gn) == _d("GgQXWRw") then
for cyax, bhag in pairs(gn) do
local orfo = lgd.worldBoss.labelToId[cyax]

if bhag and orfo then
cwxl[orfo] = true
end
end
end

lgd.worldBoss.selected = cwxl

if not next(cwxl) and lgd.worldBoss.autoBuy then
lgd.worldBoss.autoBuy = false

pcall(function()
lgd.worldBoss.shopToggle:UpdateState(false)
end)
end
end,
}, _d("BxEQWApmRg"))

lgd.worldBoss.shopToggle = lgd.worldBoss.section:Toggle({
Name = _d("LxABWllbARc"),
Default = false,
Callback = function(lb)
if lb and not next(lgd.worldBoss.selected) then
lgd.worldBoss.autoBuy = false

pcall(function()
lgd.worldBoss.shopToggle:UpdateState(false)
end)

hlh:Dialog({
Title = _d("LxABWllbARc"),
Description = _d("PgwWXllYAE4JEFQKTVQBCxAVEE0RA0UcW1lwAAsIBhUfUAYdEVUYWXgBGgpVVwxAVB0VEFsdSlQ8ABEVK1AWDAobFTRcEA8JBhUWV1QZDRRBHE8RHEUcQVlaFQBFFFMfVgYKRRNHFlRUGg0UQVlVHR0RWw"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})

return
end

lgd.worldBoss.autoBuy = lb
end,
}, _d("DxABWiZbARc6Rw"))

lgd.worldBoss.section:Button({
Name = _d("LBAMFQpcGAsGAVAd"),
Callback = function()
if not next(lgd.worldBoss.selected) then
hlh:Dialog({
Title = _d("LBAMFQpcGAsGAVAd"),
Description = _d("PgwWXllYAE4JEFQKTVQBCxAVEE0RA0UcW1lwAAsIBhUfUAYdEVs"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})

return
end

local gsex = lgd.worldBoss.buy()

if gsex == 0 then
hlh:Dialog({
Title = _d("LBAMFQpcGAsGAVAd"),
Description = _d("IAoBXRBXE04SFEZZWxsbAh1BQxkaAUUYUB1YGB1FAVpZSgQLCxEZWVwCCxcMFQlQFwVFHEZZVgEaRRpTWUoAAQYeGVlWBk4RHVBZWxsdFlVGEVYETg0URllXGxpFBkwXWhEKRQxQDRc"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})
end
end,
})

lgd.worldBoss.building = true

lgd.worldBoss.teamDropdown = lgd.worldBoss.section:Dropdown({
Name = _d("OgAUWA"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("OgAUWFkI"), _d("OgAUWFkL"), _d("OgAUWFkK"), _d("OgAUWFkN") },
Callback = function(wf)
if lgd.worldBoss.building then
return
end

local tms = type(wf) == _d("GgQXWRw") and wf[1] or wf
local fo = type(tms) == _d("HREHXBde") and tonumber(tms:match(_d("RkARHlA"))) or nil

if fo then
lgd.worldBoss.team = fo
lgd.worldBoss.teamChosen = true
zo.bossTeams.save()
end

pcall(function()
lgd.worldBoss.teamDropdown:UpdateName(_d("OgAUWFnb9MxF") .. (tms or _d("OgAUWFkI")))
end)
end,
}, _d("GgAUWA"))

pcall(function()
lgd.worldBoss.teamDropdown:UpdateSelection(_d("OgAUWFk") .. tostring(lgd.worldBoss.team))
lgd.worldBoss.teamDropdown:UpdateName(_d("OgAUWFnb9MxFIVAYVFQ") .. tostring(lgd.worldBoss.team))
end)

task.defer(function()
lgd.worldBoss.building = false
end)

lgd.misc = lgd.misc or {}

lgd.misc.expeditions = {
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
rewardPath = _d("LyY3bVZcDB4AEVwNUBsAFltfClYa"),
module = nil,
action = nil,
section = nil,
paragraph = nil,
claimToggle = nil,
startToggle = nil,
dropdown = nil,
}

function lgd.misc.expeditions.data()
local jt = lgd.misc.expeditions

if jt.module ~= nil then
return jt.module or nil
end

local yub, oq = pcall(function()
return require(jw.ModuleScripts.ExpeditionData)
end)

jt.module = yub and oq or false

return jt.module or nil
end

function lgd.misc.expeditions.tiers()
local tem = lgd.misc.expeditions.data()

return tem and tem.Tiers or {}
end

function lgd.misc.expeditions.remote()
local cigl = lgd.misc.expeditions

if cigl.action and cigl.action.Parent then
return cigl.action
end

cigl.action = lw(_d("Kx0FUB1QAAcKG3QaTR0BCw"), 3)

return cigl.action
end

function lgd.misc.expeditions.clockText(isqf)
local hsi = lgd.misc.expeditions.data()

if hsi and type(hsi.formatDuration) == _d("CBAbVg1QGwA") then
return hsi.formatDuration(isqf)
end

local zdcb = math.max(0, math.floor((isqf or 0) / 60))

return tostring(zdcb) .. _d("Aw")
end

function lgd.misc.expeditions.status(jrc)
local hsjk = lgd.misc.expeditions
local cau = hsjk.state
local mchk = type(cau) == _d("GgQXWRw") and type(cau.active) == _d("GgQXWRw") and cau.active[jrc] or nil

if type(mchk) ~= _d("GgQXWRw") then
return _d("DxMUXBVYFgIA"), nil
end

local lyp = (tonumber(mchk.endsAt) or 0) - (os.time() + (hsjk.offset or 0))

if lyp <= 0 then
return _d("HAAUUQA"), lyp
end

return _d("HBAbWxBXEw"), lyp
end

function lgd.misc.expeditions.candidates(rlt)
local ifny = lgd.misc.expeditions
local it = ifny.data()
local karv = ifny.state
local ebo = it and it.ById and it.ById[rlt]
local yakg = {}

if not (ebo and type(karv) == _d("GgQXWRw") and type(karv.eligible) == _d("GgQXWRw")) then
return yakg
end

for ncm, fu in ipairs(karv.eligible) do
if type(fu) == _d("GgQXWRw") and fu.cardId then
local kjvt = tonumber(fu.rarity) or 0
local mysn = (tonumber(fu.count) or 0) - (tonumber(fu.locked) or 0)

if kjvt >= (tonumber(ebo.minRarity) or 0) and mysn > 0 then

table.insert(yakg, { cardId = fu.cardId, borderLevel = fu.borderLevel, rarity = kjvt, count = mysn })
end
end
end

table.sort(yakg, function(xwv, jgf)
if xwv.rarity == jgf.rarity then
return tostring(xwv.cardId) < tostring(jgf.cardId)
end

return xwv.rarity < jgf.rarity
end)

return yakg
end

function lgd.misc.expeditions.cards(icly, llg)
local nlw = lgd.misc.expeditions
local urr = nlw.data()
local hau = urr and tonumber(urr.CardsPerExpedition) or 4
local xt = {}
local sxx = nlw.candidates(icly)

llg = llg or {}

local function pvs(prs, zhj)
local jz = tostring(prs.cardId) .. _d("TQ") .. tostring(prs.borderLevel)

while #xt < hau and (llg[jz] or 0) < zhj do
llg[jz] = (llg[jz] or 0) + 1

table.insert(xt, { cardId = prs.cardId, borderLevel = prs.borderLevel })
end
end

for nnr, qkel in ipairs(sxx) do
if #xt >= hau then
break
end

if qkel.count > 1 then
pvs(qkel, qkel.count - 1)
end
end

if #xt < hau then
for ggev, dx in ipairs(sxx) do
if #xt >= hau then
break
end

pvs(dx, dx.count)
end
end

return xt
end

function lgd.misc.expeditions.available(cvfx)
local nii = lgd.misc.expeditions
local djnz = nii.data()
local sce = djnz and tonumber(djnz.CardsPerExpedition) or 4
local da = 0

for gri, qsj in ipairs(nii.candidates(cvfx)) do
da = da + qsj.count

if da >= sce then
return sce
end
end

return da
end

function lgd.misc.expeditions.text()
local wdnc = lgd.misc.expeditions

if type(wdnc.state) ~= _d("GgQXWRw") then
return _d("PAAUURBXE04ADUUcXR0aDBpbChdaQA")
end

local fiu = wdnc.data()
local cynq = fiu and tonumber(fiu.CardsPerExpedition) or 4
local jfct = {}

for srkt, uhbc in ipairs(wdnc.tiers()) do
local dxhj, shbh = wdnc.status(uhbc.id)
local ki = tostring(uhbc.name)

if wdnc.tiersWanted[uhbc.id] then
ki = _d("jOXXFQ") .. ki
end

if dxhj == _d("HBAbWxBXEw") then
ki = ki .. _d("ZDcQQQxLGh1FHFtZ") .. wdnc.clockText(shbh)
elseif dxhj == _d("HAAUUQA") then
ki = ki .. _d("ZDcQVB1AVBoKVVYVWB0D")
else
local kfxj = wdnc.available(uhbc.id)
ki = ki .. _d("ZA") .. tostring(kfxj) .. _d("TgoTFQ") .. tostring(cynq) .. _d("TgYURx1K")

if kfxj >= cynq then
ki = ki .. _d("ZCYUW1lKAA8XAQ")
end
end

table.insert(jfct, ki)
end

table.insert(jfct, _d("KxMQRwAZEBsVGVwaWAALRRxGWUoRABFVVxxfGxwAVVRZWhUcAVVMFkxUBgoZUVlWGgtFGlNVGRUAAVVaF1xUDQoFTFlWEk4EVVYYSxBODAYVElwEGkUXVBpSVBkNEEccGQAGAFVBEFwGTgYUW1lKBA8XEBUQTVRDRRQVFVYaC0UWWglAVAELGUxZXhsLFlVaDE1UGQ0QW1lNHAtFAVwcS1QNBBtbFk1UDABVUxBVGAsBVUIQTRwBEAEVEE1a"))

return table.concat(jfct, _d("ZG8"))
end

function lgd.misc.expeditions.request()
local dzvs = lgd.misc.expeditions
local dm = dzvs.remote()

if dm then
pcall(function()
dm:FireServer(_d("HAAEQBxKAA"))
end)
end

dzvs.askedAt = os.clock()
end

function lgd.misc.expeditions.claim()
local vmb = lgd.misc.expeditions

if os.clock() < vmb.claimAt then
return false
end

local tiru = false

for tv, vp in ipairs(vmb.tiers()) do
if vmb.status(vp.id) == _d("HAAUUQA") then
tiru = true
break
end
end

if not tiru then
return false
end

local vso = vmb.remote()

if not vso then
return false
end

pcall(function()
vso:FireServer(_d("DQkUXBR4GAI"))
end)

vmb.claimAt = os.clock() + 3
vmb.askedAt = 0

return true
end

function lgd.misc.expeditions.popup()
local pyp = vklq:FindFirstChild(_d("Kx0FUB1QAAcKG3IMUA"))

return pyp and pyp:FindFirstChild(_d("LQkUXBRpGx4QBQ")) or nil
end

function lgd.misc.expeditions.closeRewards()
local my = lgd.misc.expeditions
local uwig = my.popup()

if not (uwig and uwig.Visible) then
return false
end

local emb = uwig:FindFirstChild(_d("IQ43QA1NGwA"))

if emb and type(firesignal) == _d("CBAbVg1QGwA") then
pcall(firesignal, emb.Activated)
end

pcall(function()
uwig.Visible = false
end)

return true
end

function lgd.misc.expeditions.rewardsText()
local kwu = lgd.misc.expeditions

if #kwu.rewardLog == 0 then
return _d("IAoBXRBXE04GGVQQVBEKRQxQDRdUKxMQRwAZBA8cGkANGQAGAFVGHEsCCxdVRhxXEB1FGVQXXQdODRBHHBkDBxEdFRBNB04RHFALGRUAAVVcDUpUDQobQRxXAB1L")
end

local qq = {}

for plme, rtm in ipairs(kwu.rewardLog) do
local pcco = {}
local fpjm = rtm.items or {}

for ifze, upyh in ipairs(fpjm) do
if ifze > 4 then
table.insert(pcco, _d("RQ") .. tostring(#fpjm - 4) .. _d("TggaRxw"))
break
end

local hms = upyh.id or upyh.itemId
local bixy = hms and dy.ById[hms] or nil
local yxha = (bixy and bixy.name) or (upyh.potions and _d("PgoBXBZXBw")) or tostring(hms or _d("HAACVAtd"))

table.insert(pcco, yxha .. _d("Th0") .. tostring(upyh.count or upyh.max or upyh.min or 1))
end

local kdm = math.max(0, os.time() - (tonumber(rtm.at) or os.time()))
local ofnw

if kdm < 60 then
ofnw = tostring(kdm) .. _d("HUUUUhY")
elseif kdm < 3600 then
ofnw = tostring(math.floor(kdm / 60)) .. _d("A0UUUhY")
else
ofnw = tostring(math.floor(kdm / 3600)) .. _d("BkUUUhY")
end

table.insert(qq, tostring(rtm.title) .. _d("TqfCFQ") .. ofnw)
table.insert(qq, table.concat(pcco, _d("QkU")))
end

return table.concat(qq, _d("ZA"))
end

function lgd.misc.expeditions.saveRewards()
local hzmn = lgd.misc.expeditions

if type(writefile) ~= _d("CBAbVg1QGwA") then
return false
end

return pcall(function()
if type(makefolder) == _d("CBAbVg1QGwA") and type(isfolder) == _d("CBAbVg1QGwA") and not isfolder(_d("LyY3bQ")) then
makefolder(_d("LyY3bQ"))
end

writefile(hzmn.rewardPath, game:GetService(_d("JhEBRSpcBhgMFlA")):JSONEncode({
rewards = hzmn.rewardLog,
updatedAt = os.time(),
}))
end)
end

function lgd.misc.expeditions.loadRewards()
local ul = lgd.misc.expeditions

if type(readfile) ~= _d("CBAbVg1QGwA") or type(isfile) ~= _d("CBAbVg1QGwA") then
return false
end

local qkf, jrsi = pcall(function()
if not isfile(ul.rewardPath) then
return nil
end

return readfile(ul.rewardPath)
end)

if not qkf or type(jrsi) ~= _d("HREHXBde") or #jrsi == 0 then
return false
end

local xpb

if not pcall(function()
xpb = game:GetService(_d("JhEBRSpcBhgMFlA")):JSONDecode(jrsi)
end) then
return false
end

if type(xpb) ~= _d("GgQXWRw") or type(xpb.rewards) ~= _d("GgQXWRw") then
return false
end

ul.rewardLog = {}

for htge, syh in ipairs(xpb.rewards) do
if type(syh) == _d("GgQXWRw") and type(syh.items) == _d("GgQXWRw") then
table.insert(ul.rewardLog, {
at = tonumber(syh.at) or os.time(),
title = tostring(syh.title or _d("Kx0FUB1QAAcKGw")),
items = syh.items,
})
end
end

return #ul.rewardLog > 0
end

function lgd.misc.expeditions.start(lf, nyuv)
local ori = lgd.misc.expeditions

if ori.status(lf) ~= _d("DxMUXBVYFgIA") then
return false
end

if os.clock() < (ori.startedAt[lf] or 0) then
return false
end

local pvw = ori.remote()

if not pvw then
return false
end

local cbw = ori.cards(lf, nyuv)
local cuv = ori.data()
local xk = cuv and tonumber(cuv.CardsPerExpedition) or 4

if #cbw < xk then
return false
end

local pdl = {}

for uqxp, erg in ipairs(cbw) do
pdl[uqxp] = { cardId = erg.cardId, borderLevel = erg.borderLevel }
end

pcall(function()
pvw:FireServer(_d("HREURw0"), lf, pdl)
end)

ori.startedAt[lf] = os.clock() + 6
ori.askedAt = 0

return true
end

lgd.misc.icon = function()
local slbr = gethui()

for fxp, hr in ipairs(slbr:QueryDescendants(_d("JwgUUhx1FQwAGQ"))) do
if hr.Name == _d("OgQXfBRYEws") then
local ff = hr.Parent
local rhn = ff and ff:FindFirstChild(_d("OgQXZg5QAA0NEEc3WBkL"))

if rhn and rhn.Text == _d("IwwGVhxVGA8LEFoMSg") then
if hr:GetAttribute(_d("LyY3bTRQBw0sFloX")) then
return true
end

hr:SetAttribute(_d("LyY3bTRQBw0sFloX"), true)
hr.Image = _d("")
hr.BackgroundTransparency = 1

local function xgpk(wh, ryw, iqid, ydql, xjf, toc, lqzb)
local pli = Instance.new(wh)

pli.Size = UDim2.fromOffset(xjf, toc)
pli.Position = UDim2.fromOffset(iqid, ydql)
pli.BackgroundColor3 = ryw
pli.BorderSizePixel = 0
pli.Parent = hr

if lqzb then
local np = Instance.new(_d("Oyw2WgtXERw"))
np.CornerRadius = UDim.new(0, lqzb)
np.Parent = pli
end

return pli
end

local zyj = Color3.fromRGB(168, 170, 176)

local function hio(hjah, mss, vzi, ig, dp)
local uva = xgpk(_d("KBcUWBw"), zyj, hjah, mss, vzi, ig, dp)

uva.BackgroundTransparency = 1

local hui = Instance.new(_d("OywmQQtWHws"))

hui.Color = zyj
hui.Thickness = 1.4
hui.LineJoinMode = Enum.LineJoinMode.Round
hui.Parent = uva

return uva
end

hio(3, 1, 6, 4, 1)
hio(1, 4, 16, 12, 2)

local ycrz = xgpk(_d("KBcUWBw"), zyj, 3, 8, 5, 5)

ycrz.BackgroundTransparency = 1
ycrz.ClipsDescendants = true

local sakt = xgpk(_d("KBcUWBw"), zyj, 0, 1, 5, 5)

sakt.Rotation = 45
sakt.Parent = ycrz

xgpk(_d("KBcUWBw"), zyj, 9, 9, 4, 4, 4)
xgpk(_d("KBcUWBw"), zyj, 13, 10, 3, 3, 1)

return true
end
end
end

return false
end

lgd.misc.tab = qg:Tab({
Name = _d("IwwGVhxVGA8LEFoMSg"),

Image = _d(""),
})

task.defer(function()
for ajlb = 1, 20 do
if lgd.misc.icon() then
break
end

task.wait(0.25)
end
end)

local mbgb = {
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
lastText = _d("IAoBXRBXE04VGkUJXBBOHBBBVw"),
tab = nil,
weatherSection = nil,
giveUpSection = nil,
weatherParagraph = nil,
giveUpParagraph = nil,
weatherToggle = nil,
giveUpToggle = nil,
}

getgenv().ACBXPop = mbgb

function mbgb.options()
local obis = {}

for mj, iyhp in pairs(dy.ById) do
if iyhp.type == _d("HgoBXBZX") and type(iyhp.name) == _d("HREHXBde") then
obis[#obis + 1] = iyhp.name
end
end

table.sort(obis)

return obis
end

function mbgb.idOf(ucpq)
for iaa, vbid in pairs(dy.ById) do
if vbid.type == _d("HgoBXBZX") and vbid.name == ucpq then
return iaa
end
end

return nil
end

function mbgb.count(rq)
local sikh = aywy.balances

return tonumber(sikh and sikh[rq]) or 0
end

function mbgb.pop(gfd, wo, mtn)
local hx = {}

for gzp, oba in pairs(gfd) do
if oba then
local yxa = mbgb.idOf(gzp)

if yxa then
local ceq = mbgb.count(yxa)

if ceq <= 0 then
hx[#hx + 1] = gzp .. _d("TkhVWxZXEU4JEFMN")
else
local mf = math.clamp(math.floor(tonumber(wo) or 1), 1, ceq)

pcall(function()
wpse.UseItem:FireServer(yxa, mf)
end)

hx[#hx + 1] = gzp .. _d("Th0") .. mf
task.wait(0.3)
end
end
end
end

if #hx == 0 then
return false
end

mbgb.lastText = mtn .. _d("TkhV") .. table.concat(hx, _d("QkU"))

pcall(function()
hlh:Notify({
Title = _d("PgoF"),
Description = mbgb.lastText,
Lifetime = 5,
})
end)

return true
end

function mbgb.status()
local hni = lhq.weatherWanted(mbgb.weathers)
local ciwj = lhq.weatherNow or _d("GwseWxZOGg")
local khh = {
_d("OQAUQRFcBlRF") .. ciwj .. (hni and (_d("Tk0FWglJHQACTxU") .. hni .. _d("Rw")) or _d("")),
_d("IgQGQUMZ") .. mbgb.lastText,
}

return table.concat(khh, _d("ZA"))
end

function mbgb.giveUpStatus()
if mbgb.armedAt > 0 then
return _d("LxcYUB0ZWU4SFFwNUBoJRRNaCxkABgBVRwxXVBoKVVAXXVpkKRRGDQNU") .. mbgb.lastText
end

return _d("JwEZUFczOA8WAQ9Z") .. mbgb.lastText
end

mbgb.tab = qg:Tab({
Name = _d("PgoF"),

Image = _d(""),
})

mbgb.icon = function()
local fgb = gethui()

for hn, xds in ipairs(fgb:QueryDescendants(_d("JwgUUhx1FQwAGQ"))) do
if xds.Name == _d("OgQXfBRYEws") then
local nsb = xds.Parent
local eitw = nsb and nsb:FindFirstChild(_d("OgQXZg5QAA0NEEc3WBkL"))

if eitw and eitw.Text == _d("PgoF") then
if xds:GetAttribute(_d("LyY3bSlWBCcGGls")) then
return true
end

xds:SetAttribute(_d("LyY3bSlWBCcGGls"), true)
xds.Image = _d("")
xds.BackgroundTransparency = 1

local aqms = Color3.fromRGB(168, 170, 176)

local function tth(zl, wmf, zheb, rxm, ljha, dqua)
local lvvs = Instance.new(zl)

lvvs.Size = UDim2.fromOffset(rxm, ljha)
lvvs.Position = UDim2.fromOffset(wmf, zheb)
lvvs.BackgroundColor3 = aqms
lvvs.BorderSizePixel = 0
lvvs.Parent = xds

if dqua then
local kjg = Instance.new(_d("Oyw2WgtXERw"))
kjg.CornerRadius = UDim.new(0, dqua)
kjg.Parent = lvvs
end

return lvvs
end

local function vrre(vii, wyt, dhsh, byoa, ldx)
local ytqd = tth(_d("KBcUWBw"), vii, wyt, dhsh, byoa, ldx)

ytqd.BackgroundTransparency = 1

local xh = Instance.new(_d("OywmQQtWHws"))

xh.Color = aqms
xh.Thickness = 1.3
xh.LineJoinMode = Enum.LineJoinMode.Round
xh.Parent = ytqd

return ytqd
end

vrre(1, 6, 16, 12, 6)
vrre(6, 3, 6, 4, 1)
tth(_d("KBcUWBw"), 5, 1, 8, 2, 1)
tth(_d("KBcUWBw"), 7, 0, 4, 1, 0)

tth(_d("KBcUWBw"), 4, 11, 10, 1, 0)
tth(_d("KBcUWBw"), 13, 3, 2, 2, 2)
tth(_d("KBcUWBw"), 15, 6, 2, 2, 2)

return true
end
end
end

return false
end

task.defer(function()
for xpvg = 1, 20 do
if mbgb.icon() then
break
end

task.wait(0.25)
end
end)

mbgb.weatherSection = mbgb.tab:Section({
Side = _d("IgATQQ"),
})

mbgb.weatherSection:Header({
Name = _d("PgoBXBZXB04KGxUOXBUaDRBHWcnryc8"),
})

mbgb.weatherToggle = mbgb.weatherSection:Toggle({
Name = _d("PgoFFRZXVBoNEEYcGQMLBAFdHEsH"),
Default = false,
Callback = function(qp)
if qp and (next(mbgb.weatherPotions) == nil or next(mbgb.weathers) == nil) then
mbgb.onWeather = false

pcall(function()
mbgb.weatherToggle:UpdateState(false)
end)

hlh:Dialog({
Title = _d("PgoF"),
Description = _d("OgwWXllYAE4JEFQKTVQBCxAVDlwVGg0QR1lYGgpFGlscGQQBERxaFxkSBxcGQVkUVD4KBRUXXBEKFlVXFk0cThEaFRJXGxlFAl0YTVQaClVRC1AaBUUUWx0ZAwYAGxs"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})

return
end

mbgb.onWeather = qp

if qp then
mbgb.weatherSpent = nil
end
end,
}, _d("HgoFahZXKxoNEEYcZgMLBAFdHEsH"))

mbgb.weatherSection:Dropdown({
Name = _d("OQAUQRFcBh0"),
Multi = true,
Required = false,
Options = { _d("OhwFXRZWGg"), _d("LAkcTwNYBgo"), _d("IgwSXQ1XHQAC"), _d("OQwbUQpNGxwI"), _d("PQ0URxBXEw8L"), _d("PQwbUgxVFRwMAUw"), _d("IwobVAtaHE4hGlgYUBo"), _d("OAocUQ"), _d("IwQRUFlQGk4tEFQPXBo"), _d("IwQbUhg") },
Callback = function(ozq)
mbgb.weathers = {}

if type(ozq) == _d("GgQXWRw") then
for lzla, qoea in pairs(ozq) do
if qoea then
mbgb.weathers[lzla] = true
end
end
end
end,
}, _d("GQAUQRFcBh0"))

mbgb.weatherSection:Dropdown({
Name = _d("PgoBXBZXBw"),
Multi = true,
Required = false,
Options = mbgb.options(),
Callback = function(vrw)
mbgb.weatherPotions = {}

if type(vrw) == _d("GgQXWRw") then
for fp, nne in pairs(vrw) do
if nne then
mbgb.weatherPotions[fp] = true
end
end
end
end,
}, _d("HgoBXBZXBw"))

mbgb.weatherSection:Input({
Name = _d("LwgaQBdN"),
Placeholder = _d("Xw"),
AcceptedCharacters = _d("IBAYUAtQFw"),
Callback = function(bn)
local fwor = math.floor(tonumber(bn) or 1)

mbgb.weatherAmount = math.clamp(fwor, 1, 50)
end,
}, _d("DwgaQBdN"))

mbgb.weatherParagraph = mbgb.weatherSection:Paragraph({
Header = _d("PREUQQxK"),
Body = mbgb.status(),
})

mbgb.giveUpSection = mbgb.tab:Section({
Side = _d("PAwSXQ0"),
})

mbgb.giveUpSection:Header({
Name = _d("LwMBUAsZEwcTEBUMSQ"),
})

mbgb.giveUpToggle = mbgb.giveUpSection:Toggle({
Name = _d("PgoFFRhfAAsXVVRZTRsZAAcVHlACC0UARQ"),
Default = false,
Callback = function(ppgo)
if ppgo and next(mbgb.giveUpPotions) == nil then
mbgb.afterGiveUp = false

pcall(function()
mbgb.giveUpToggle:UpdateState(false)
end)

hlh:Dialog({
Title = _d("PgoF"),
Description = _d("OgwWXllYAE4JEFQKTVQBCxAVCVYABwobFR9QBh0RVRhZTRwLFxAVEEpUAAoBXRBXE04RGhUdSx0ADlVUH00RHEUBXRwZBhsLVVoNUREcEhxGHBc"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})

return
end

mbgb.afterGiveUp = ppgo
end,
}, _d("HgoFahhfAAsXKlQmTRsZAAdqHlACCzoARQ"))

mbgb.giveUpSection:Dropdown({
Name = _d("PgoBXBZXBw"),
Multi = true,
Required = false,
Options = mbgb.options(),
Callback = function(ssr)
mbgb.giveUpPotions = {}

if type(ssr) == _d("GgQXWRw") then
for gfo, ggcn in pairs(ssr) do
if ggcn then
mbgb.giveUpPotions[gfo] = true
end
end
end
end,
}, _d("HgoBXBZXBzFX"))

mbgb.giveUpSection:Input({
Name = _d("LwgaQBdN"),
Placeholder = _d("Xw"),
AcceptedCharacters = _d("IBAYUAtQFw"),
Callback = function(bibf)
local wz = math.floor(tonumber(bibf) or 1)

mbgb.giveUpAmount = math.clamp(wz, 1, 50)
end,
}, _d("DwgaQBdNK1w"))

mbgb.giveUpParagraph = mbgb.giveUpSection:Paragraph({
Header = _d("PREUQQxK"),
Body = mbgb.giveUpStatus(),
})

local bqiq = {
autoSave = false,
autoRoll = true,
autoQuickRoll = true,

loading = false,
selected = nil,
lastText = _d("IAoBXRBXE04SB1wNTREARQxQDRlZThUcVhIZFU4WFEMcGRIHCRAVG1wYARJb"),
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
theme = _d("OAocUQ"),
accent = nil,
savesAt = 0,
autoSaveAt = 0,
themeAt = 0,
capAt = 0,
scaleAnchor = nil,
statusAt = 0,
knownSaves = _d(""),
}

getgenv().ACBXSettings = bqiq

bqiq.presets = {
Void = { panel = Color3.fromRGB(15, 15, 15), element = Color3.fromRGB(0, 0, 0), accent = Color3.fromRGB(168, 170, 176) },
Ocean = { panel = Color3.fromRGB(6, 16, 26), element = Color3.fromRGB(8, 26, 40), accent = Color3.fromRGB(77, 166, 255) },
Ember = { panel = Color3.fromRGB(26, 10, 8), element = Color3.fromRGB(36, 16, 10), accent = Color3.fromRGB(255, 122, 69) },
Sakura = { panel = Color3.fromRGB(26, 9, 18), element = Color3.fromRGB(38, 14, 26), accent = Color3.fromRGB(255, 125, 177) },
Mint = { panel = Color3.fromRGB(7, 20, 14), element = Color3.fromRGB(9, 30, 22), accent = Color3.fromRGB(77, 227, 160) },
Graphite = { panel = Color3.fromRGB(20, 20, 22), element = Color3.fromRGB(30, 30, 33), accent = Color3.fromRGB(200, 200, 206) },
}

bqiq.themeOrder = { _d("OAocUQ"), _d("IQYQVBc"), _d("KwgXUAs"), _d("PQQeQAtY"), _d("IwwbQQ"), _d("KRcURRFQAAs") }

local ogg = _d("LyY3FStcFgcXAV1WShEaERxbHko")

function bqiq.saves()
local tpa, dixl = pcall(function()
return nlu:RefreshConfigList()
end)

if tpa and type(dixl) == _d("GgQXWRw") then
table.sort(dixl)
return dixl
end

return {}
end

function bqiq.autoLoadName()
local jgvo, mqxs = pcall(function()
if isfile and isfile(ogg .. _d("QQQAQRZVGw8BW0EBTQ")) then
return readfile(ogg .. _d("QQQAQRZVGw8BW0EBTQ"))
end
end)

if jgvo and type(mqxs) == _d("HREHXBde") then
mqxs = mqxs:gsub(_d("MEAGHg"), _d("")):gsub(_d("SxZeEQ"), _d(""))

if mqxs ~= _d("") then
return mqxs
end
end

return nil
end

function bqiq.setAutoLoad(xenf)

return (pcall(function()
writefile(ogg .. _d("QQQAQRZVGw8BW0EBTQ"), xenf or _d(""))
end))
end

function bqiq.delete(uiqw)
if type(uiqw) ~= _d("HREHXBde") or uiqw == _d("") then
return false, _d("PgwWXllYVB0EA1BZXx0CAFVTEEsHGks")
end

local yysj = ogg .. _d("QQ") .. uiqw .. _d("QA8GWhc")
local lewz = false

pcall(function()
lewz = isfile ~= nil and isfile(yysj) == true
end)

if not lewz then
return false, _d("Og0QRxwZHR1FG1pZXx0CAFVWGFUYCwFV") .. uiqw .. _d("QA")
end

local urj, yfsj = pcall(function()
delfile(yysj)
end)

if not urj then
return false, tostring(yfsj)
end

if bqiq.autoLoadName() == uiqw then
bqiq.setAutoLoad(_d(""))
end

if bqiq.selected == uiqw then
bqiq.selected = nil
bqiq.selectionShown = nil
end

bqiq.knownSaves = nil
bqiq.savesAt = 0

return true
end

function bqiq.save(spco)
if type(spco) ~= _d("HREHXBde") or spco:gsub(_d("SxY"), _d("")) == _d("") then
return false, _d("KQwDUFlNHAtFBlQPXFQPRRtUFFxUCAwHRg0X")
end

local ltrw, bcrd, iiqc = pcall(function()
return nlu:SaveConfig(spco)
end)

if not ltrw then
return false, tostring(bcrd)
end

if bcrd ~= true then
return false, tostring(iiqc or _d("Gg0QFR9QGAtFFloMVRBOCxpBWVsRThIHXA1NEQA"))
end

return true
end

function bqiq.replayOff(iffv)
local xqi, icq = pcall(function()
return readfile(ogg .. _d("QQ") .. iffv .. _d("QA8GWhc"))
end)

if not xqi or type(icq) ~= _d("HREHXBde") then
return
end

local aul
xqi, aul = pcall(function()
return game:GetService(_d("JhEBRSpcBhgMFlA")):JSONDecode(icq)
end)

if not xqi or type(aul) ~= _d("GgQXWRw") or type(aul.objects) ~= _d("GgQXWRw") then
return
end

for usk, wji in ipairs(aul.objects) do
if wji.type == _d("OgoSUhVc") and wji.state == false and wji.flag then
local bvss = nlu.Options[wji.flag]

if bvss then
pcall(function()
bvss:UpdateState(false)
end)
end
end
end
end

function bqiq.load(uy)
if type(uy) ~= _d("HREHXBde") or uy == _d("") then
return false, _d("PgwWXllYVB0EA1BZXx0CAFVTEEsHGks")
end

bqiq.loading = true
tjw = true

local laf, gqyh, lzo = pcall(function()
return nlu:LoadConfig(uy)
end)

if not laf then
bqiq.loading = false
tjw = false

return false, tostring(gqyh)
end

if gqyh ~= true then
bqiq.loading = false
tjw = false

return false, tostring(lzo or _d("Gg0QFR9QGAtFFloMVRBOCxpBWVsRThcQVB0"))
end

task.wait(0.25)
bqiq.replayOff(uy)
bqiq.loading = false
tjw = false

return true
end

bqiq.uiPath = _d("LyY3bVZMHUAPBloX")

function bqiq.saveUi()
if type(writefile) ~= _d("CBAbVg1QGwA") then
return false
end

if bqiq.restoring then
return false
end

local le = bqiq.accent

local axkd = {
theme = bqiq.theme,
scale = tonumber(string.format(_d("S0tHUw"), bqiq.scaleTarget or 1)),
accent = le and string.format(_d("SwFZEB0VUQo"),
math.floor(le.R * 255 + 0.5),
math.floor(le.G * 255 + 0.5),
math.floor(le.B * 255 + 0.5)) or nil,
}

return pcall(function()
if type(makefolder) == _d("CBAbVg1QGwA") and type(isfolder) == _d("CBAbVg1QGwA") and not isfolder(_d("LyY3bQ")) then
makefolder(_d("LyY3bQ"))
end

writefile(bqiq.uiPath, game:GetService(_d("JhEBRSpcBhgMFlA")):JSONEncode(axkd))
end)
end

function bqiq.loadUi()
if type(readfile) ~= _d("CBAbVg1QGwA") or type(isfile) ~= _d("CBAbVg1QGwA") then
return nil
end

local adbp, jfqb = pcall(function()
if not isfile(bqiq.uiPath) then
return nil
end

return readfile(bqiq.uiPath)
end)

if not adbp or type(jfqb) ~= _d("HREHXBde") or jfqb == _d("") then
return nil
end

local mc
adbp, mc = pcall(function()
return game:GetService(_d("JhEBRSpcBhgMFlA")):JSONDecode(jfqb)
end)

if not adbp or type(mc) ~= _d("GgQXWRw") then
return nil
end

bqiq.restoring = true

if type(mc.theme) == _d("HREHXBde") and bqiq.presets[mc.theme] then
bqiq.theme = mc.theme

pcall(function()
bqiq.themeDropdown:UpdateSelection(mc.theme)
bqiq.themeDropdown:UpdateName(_d("Og0QWBwDVA") .. mc.theme)
end)
end

local hd, nfqy, rx = tostring(mc.accent or _d("")):match(_d("ME1QUVIQWEZAER5QFVxLAV4cXQ"))

if hd then
local qgjr = Color3.fromRGB(tonumber(hd), tonumber(nfqy), tonumber(rx))

bqiq.accent = qgjr

pcall(function()
bqiq.accentPicker:SetColor(qgjr)
end)
else
bqiq.accent = nil

local tz = bqiq.presets[bqiq.theme] or bqiq.presets.Void

pcall(function()
bqiq.accentPicker:SetColor(tz.accent)
end)
end

local ger = tonumber(mc.scale)

if ger then
ger = math.clamp(ger, 0.5, bqiq.scaleCeiling())

bqiq.scaleTarget = ger
bqiq.scaleAnchor = nil

pcall(function()
bqiq.scaleSlider:UpdateValue(ger)
end)
end

bqiq.applyTheme()

bqiq.restoring = false
bqiq.saveUi()

return mc
end

function bqiq.colourKey(al)
return math.floor(al.R * 255) .. _d("Qg") .. math.floor(al.G * 255) .. _d("Qg") .. math.floor(al.B * 255)
end

function bqiq.guiRoot()

if not ply() then
return nil
end

if bqiq.root and bqiq.root.Parent then
return bqiq.root
end

local yumc = gethui and gethui() or game:GetService(_d("LQoHUD5MHQ"))

for zos, on in ipairs(yumc:GetChildren()) do
if on:IsA(_d("PQYHUBxXMxsM")) and on:FindFirstChild(_d("LAQGUA")) then
bqiq.root = on.Base

return bqiq.root
end
end

return nil
end

function bqiq.applyTheme()
local hgal = bqiq.guiRoot()
local pm = bqiq.presets[bqiq.theme] or bqiq.presets.Void

if not hgal then
return false
end

local zqb = {
panel = pm.panel,
element = pm.element,
accent = bqiq.accent or pm.accent,
}

local bjob = {}

for layz, uje in pairs(bqiq.presets) do
bjob[bqiq.colourKey(uje.panel)] = _d("HgQbUBU")
bjob[bqiq.colourKey(uje.element)] = _d("CwkQWBxXAA")
bjob[bqiq.colourKey(uje.accent)] = _d("DwYWUBdN")
end

bjob[bqiq.colourKey(zqb.accent)] = _d("DwYWUBdN")

if bjob[bqiq.colourKey(hgal.BackgroundColor3)] == _d("HgQbUBU") then
hgal.BackgroundColor3 = zqb.panel
end

for rjv, ojp in ipairs(hgal:GetDescendants()) do
if ojp:IsA(_d("KRAcehtTEQ0R")) then
local rtoj = bjob[bqiq.colourKey(ojp.BackgroundColor3)]

if rtoj then
ojp.BackgroundColor3 = zqb[rtoj]
end
elseif ojp:IsA(_d("OywmQQtWHws")) then
if bjob[bqiq.colourKey(ojp.Color)] == _d("DwYWUBdN") then
ojp.Color = zqb.accent
end
end

if ojp:IsA(_d("JwgUUhx1FQwAGQ")) and ojp.Name == _d("OgQXfBRYEws") and ojp.Image ~= _d("") then
ojp.ImageColor3 = zqb.accent
ojp.ImageTransparency = 0
ojp:SetAttribute(_d("LyY3bS1YFi8GFlAXTQ"), zqb.accent)

if not ojp:GetAttribute(_d("LyY3bS1YFjoMG0E")) then
ojp:SetAttribute(_d("LyY3bS1YFjoMG0E"), true)

local function keng()
local ltxy = ojp:GetAttribute(_d("LyY3bS1YFi8GFlAXTQ"))

if ltxy and ojp.ImageColor3 ~= ltxy then
ojp.ImageColor3 = ltxy
end

if ojp.ImageTransparency ~= 0 then
ojp.ImageTransparency = 0
end
end

ojp:GetPropertyChangedSignal(_d("JwgUUhxtBg8LBkUYSxEABgw")):Connect(keng)
ojp:GetPropertyChangedSignal(_d("JwgUUhx6GwIKBwY")):Connect(keng)
end
end
end

return true
end

local mms = qg:Tab({
Name = _d("IwQF"),
Image = _d("HAcNVApKERoMEQ9WFkJeVkQFTgxNXVQ"),
})

local tqq = {
holdFor = 25,
fly = {
on = false,
speed = 55,
connection = nil,
},
islands = {
{ name = _d("IgoXVwA"), kind = _d("GQoHWR0"), arg = _d("AgoXVwA") },
{ name = _d("LwcUWx1WGgsBVXwKVRUAAQ"), kind = _d("BxYZVBdd"), arg = _d("DwcUWx1WGgsBKlwKVRUAAQ") },
{ name = _d("OhIcW1l7EQ8GHVAK"), kind = _d("BxYZVBdd"), arg = _d("GhIcWyZbEQ8GHVAK"), note = _d("TjEdUFlKERwTEEdZXQYBFQYVEE1UGwsBXBUZDQEQVV0YTxFOFhRcFVwQThEdUAtcWg") },
{ name = _d("OQwbURRQGAJFPEYVXA"), kind = _d("BxYZVBdd"), arg = _d("GQwbURRQGAI6HEYVXA"), note = _d("TjEdUFlKERwTEEdZXQYBFQYVEE1UGwsBXBUZDQEQVV0YTxFOFhRcFVwQThEdUAtcWg") },
},
npcs = {
{ name = _d("LQQHUVl0ERwCEA"), npc = _d("CBAGUCZXBA0"), attr = _d("IDU2fB0"), at = Vector3.new(-272, 33, -40347) },
{ name = _d("Kx0FUB1QAAcKG0Y"), npc = _d("Kx0FUB1QAAcKG3speg"), attr = _d("Kx0FUB1QAAcKG3speg"), at = Vector3.new(-347, 35, -40361) },
{ name = _d("KgAWWhdKABwQFkE"), npc = _d("CgAWWhdKABwQFkEmVwQN"), attr = _d("IDU2fB0"), at = Vector3.new(-264, 33, -40331) },
{ name = _d("LRcUUw0"), npc = _d("DRcUUw1mGh4G"), attr = _d("IDU2fB0"), at = Vector3.new(-330, 33, -40277) },
{ name = _d("PQ4cWRUZIBwAEA"), npc = _d("PQ4cWRVtBgsAO2U6"), attr = _d("PQ4cWRVtBgsAO2U6"), at = Vector3.new(-290, 32, -40283) },
{ name = _d("LQQHUVlwGgoADQ"), npc = _d("DQQHUSZQGgoADWoXSRc"), attr = _d("IDU2fB0"), at = Vector3.new(-313, 33, -40282) },
{ name = _d("PgQWXll0ERwGHVQXTQ"), npc = _d("HgQWXiZUERwGHVQXTQ"), attr = _d("IDU2fB0"), at = Vector3.new(-301, 33, -40270) },
{ name = _d("KhAbUhxWGg"), npc = _d("ChAbUhxWGjELBVY"), attr = _d("IDU2fB0"), at = Vector3.new(-339, 41, -40399) },
{ name = _d("KAwGXRxLGQ8L"), npc = _d("KAwGXRxLGQ8LO2U6"), attr = _d("KAwGXRxLGQ8LO2U6"), at = Vector3.new(-493, 14, -40262) },
{ name = _d("PQAWRxxNVC8LElkcSw"), npc = _d("PQAWRxxNNQACGVALdyQt"), attr = _d("PQAWRxxNNQACGVALdyQt"), at = Vector3.new(-209, 34, -40382) },
{ name = _d("JgQZWRZOEQsLVWYRVgQ"), npc = _d("PhAYRRJQGk4oEEcaURUAEQ"), at = Vector3.new(-29989, 78, -30259) },
{ name = _d("PQQWRxBfHQ0AVXQVTRUc"), landmark = _d("PQQWRxBfHQ0ANFkNWAY"), island = _d("DwcUWx1WGgsBKlwKVRUAAQ"), at = Vector3.new(-3548, 11, -40462) },
{ name = _d("JgQHURpWBgtFIVoOXAY"), npc = _d("JgQHURpWBgsxGkIcSw"), island = _d("DwcUWx1WGgsBKlwKVRUAAQ"), at = Vector3.new(-3795, 25, -40250) },
{ name = _d("JxYZVBddVCgMBl0cSxkPCw"), npc = _d("JxYZVBddMgcWHVALVBUAKyV2"), attr = _d("JxYZVBddMgcWHVALVBUAKyV2"), island = _d("DwcUWx1WGgsBKlwKVRUAAQ"), at = Vector3.new(-3825, 23, -40260) },
{ name = _d("KgwSUhxL"), npc = _d("KgwSUhxLOj4m"), attr = _d("KgwSUhxLOj4m"), island = _d("GhIcWyZbEQ8GHVAK"), at = Vector3.new(-5998, 26, -40565) },
{ name = _d("PQAWRxxNVCoMElIcSw"), npc = _d("PQAWRxxNMAcCElALdyQt"), attr = _d("PQAWRxxNMAcCElALdyQt"), island = _d("GQwbURRQGAI6HEYVXA"), at = Vector3.new(-7740, 17, -40343) },
},
}

function tqq.hold()
cibk.tpHoldUntil = os.clock() + tqq.holdFor

cibk.deepPhase = _d("BwEZUA")
cibk.deepStageAt = 0
cibk.phase = _d("BwEZUA")
cibk.nextCastAt = 0
cibk.watchdogAt = 0

return tqq.holdFor
end

function tqq.point(tpcg)
local fjh

if tpcg.landmark then
fjh = workspace:FindFirstChild(tpcg.landmark)
else
local woab = workspace:FindFirstChild(_d("IDU2Rg"))

if woab then
for emp, ec in ipairs(woab:GetChildren()) do
local ecg

if tpcg.attr then
ecg = ec:GetAttribute(tpcg.attr) == tpcg.npc
else
ecg = ec.Name == tpcg.npc
end

if ecg then
fjh = ec
break
end
end
end
end

if fjh then
local hbo = fjh.PrimaryPart
or fjh:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"), true)
or fjh:FindFirstChildWhichIsA(_d("LAQGUClYBho"), true)

if hbo then
return hbo.Position
end
end

return tpcg.at
end

function tqq.resume()
if not cibk.enabled then
return
end

local suw = zhiw.Character
local mah = suw and suw:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if not mah or (mah.Position - aq).Magnitude < 40 then
return
end

pcall(function()
cibk.recover()
end)
end

function tqq.standAt(pxv)
local btgv = zhiw.Character
local qcjg = btgv and btgv:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if not qcjg or not pxv then
return false
end

local qbzh = RaycastParams.new()
qbzh.FilterType = Enum.RaycastFilterType.Exclude
qbzh.FilterDescendantsInstances = { btgv }

local pzh = workspace:Raycast(pxv + Vector3.new(0, 10, 0), Vector3.new(0, -80, 0), qbzh)
local omj = pxv.Y

if pzh and pzh.Instance.Name ~= _d("OQQBUAs") then
local ub = pzh.Position.Y + 3.2

if math.abs(ub - pxv.Y) <= 8 then
omj = ub
end
end

local rlq = Vector3.new(qcjg.Position.X - pxv.X, 0, qcjg.Position.Z - pxv.Z)

if rlq.Magnitude < 1 then
rlq = Vector3.new(4, 0, 0)
else
rlq = rlq.Unit * 4
end

local utv = Vector3.new(pxv.X + rlq.X, omj, pxv.Z + rlq.Z)

qcjg.CFrame = CFrame.new(utv)

return true
end

function tqq.unlock()
local czgn = {
{ id = _d("DwcUWx1WGgsBKlwKVRUAAQ"), at = Vector3.new(-3825, 24, -40260) },
{ id = _d("GhIcWyZbEQ8GHVAK"), at = Vector3.new(-6180, 40, -40350) },
{ id = _d("GQwbURRQGAI6HEYVXA"), at = Vector3.new(-7480, 30, -40350) },
}
local rn = {}

for jqad, hld in ipairs(czgn) do
local thtt = wpse.FishingGetState:InvokeServer()

if thtt and thtt.areas and thtt.areas[hld.id] == true then
table.insert(rn, hld.id .. _d("VEUUWQtcFQocVVoJXBo"))
else
tqq.hold()
tqq.standAt(hld.at)
task.wait(2.4)

local mhv = wpse.FishingGetState:InvokeServer()

table.insert(rn, hld.id .. (mhv and mhv.areas and mhv.areas[hld.id] and _d("VEUAWxVWFwUAEQ") or _d("VEUTVBBVEQo")))
end
end

tqq.hold()
pcall(function()
wpse.TeleportToWorld:FireServer(_d("AgoXVwA"))
end)
task.wait(2.5)

return table.concat(rn, _d("TqfCFQ"))
end

function tqq.flyToggle(vmgx)
tqq.fly.on = vmgx

if not vmgx then
return _d("KAkMFRZfEkA")
end

local xov = zhiw.Character
local tsg = xov and xov:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if not tsg then
return _d("IApVVhFYBg8GAVALGQABRRlcH01a")
end

tqq.fly.height = tsg.Position.Y

if tqq.fly.connection then
return _d("KAkMFRZXWg")
end

local emw = game:GetService(_d("OxYQRzBXBBsRJlALTx0NAA"))

tqq.fly.connection = game:GetService(_d("PBAbZhxLAgcGEA")).Heartbeat:Connect(function(ejzb)
if not tqq.fly.on then
return
end

local fxxo = zhiw.Character
local xpko = fxxo and fxxo:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if not xpko then
return
end

local gua = workspace.CurrentCamera
local fhy = Vector3.zero

if gua then
local zray = gua.CFrame.LookVector
local tpc = Vector3.new(zray.X, 0, zray.Z)

if tpc.Magnitude > 0.01 then
tpc = tpc.Unit
end

local gv = Vector3.new(tpc.Z, 0, -tpc.X)

if emw:IsKeyDown(Enum.KeyCode.W) then
fhy = fhy + tpc
end

if emw:IsKeyDown(Enum.KeyCode.S) then
fhy = fhy - tpc
end

if emw:IsKeyDown(Enum.KeyCode.D) then
fhy = fhy + gv
end

if emw:IsKeyDown(Enum.KeyCode.A) then
fhy = fhy - gv
end
end

local aspv = 0

if emw:IsKeyDown(Enum.KeyCode.Space) then
aspv = 1
elseif emw:IsKeyDown(Enum.KeyCode.LeftControl) then
aspv = -1
end

local tox = tqq.fly.speed or 55
local fdy = fhy * tox * ejzb + Vector3.new(0, aspv * tox * 0.6 * ejzb, 0)

if fdy.Magnitude < 0.001 then
return
end

xpko.CFrame = xpko.CFrame + fdy
xpko.AssemblyLinearVelocity = Vector3.zero
end)

return _d("KAkMFRZXWg")
end

function tqq.go(vo)
tqq.hold()

if vo.kind == _d("GQoHWR0") then
pcall(function()
wpse.TeleportToWorld:FireServer(vo.arg)
end)

return _d("PQAbQVlNHAtF") .. vo.name .. _d("ThEQWRxJGxwRWw")
end

if vo.kind == _d("BxYZVBdd") then
pcall(function()
wpse.FishingIslandTeleport:FireServer(vo.arg)
end)

return _d("PQAbQVlNHAtF") .. vo.name .. _d("ThEQWRxJGxwRWw") .. tostring(vo.note or _d(""))
end

local fhoc = tqq.point(vo)
local jie = zhiw.Character
local kzui = jie and jie:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if fhoc and kzui and (kzui.Position - fhoc).Magnitude > 1500 then
pcall(function()
if vo.island then
wpse.FishingIslandTeleport:FireServer(vo.island)
else
wpse.TeleportToWorld:FireServer(_d("AgoXVwA"))
end
end)

task.wait(vo.island and 3.5 or 4.5)

fhoc = tqq.point(vo)

kzui = zhiw.Character and zhiw.Character:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if fhoc and kzui and (kzui.Position - fhoc).Magnitude > 1500 then
return vo.name .. _d("TgwGFRZXVA") .. tostring(vo.island or _d("Gg0QFRVWFgwc"))
.. _d("TkhVQRFcVAkEGFBZSxEIEAZQChkABgQBFQ1LHR5FAFsNUBhODAEVEVgHTgcQUBcZBgsEFl0cXVQBCxZQVw")
end
end

if not fhoc then
return vo.name .. _d("TgwGFRdWAE4MGxUNUR0dRQJaC1UQQA")
end

if not tqq.standAt(fhoc) then
return _d("IApVVhFYBg8GAVALGQABRRhaD1xa")
end

task.delay(tqq.holdFor + 2, function()
pcall(tqq.resume)
end)

return _d("PREaWh0ZFgsWHFEcGQ") .. vo.name .. _d("QA")
end

tqq.islandSection = mms:Section({ Side = _d("IgATQQ") })
tqq.islandSection:Header({ Name = _d("JxYZVBddB06V6rrk1szh") })

tqq.npcSection = mms:Section({ Side = _d("PAwSXQ0") })
tqq.npcSection:Header({ Name = _d("IDU2RlnJ6/3o") })

for ex, no in ipairs(tqq.islands) do
tqq.islandSection:Button({
Name = no.name,
Callback = function()
task.spawn(function()
local ljor = tqq.go(no)

hlh:Notify({
Title = _d("OgAZUAlWBho"),
Description = ljor,
Lifetime = 6,
})
end)
end,
})
end

tqq.state = cibk
tqq.tab = mms
tqq.islandSection:Button({
Name = _d("OwsZWhpSVA8JGRUQShgPCxFG"),
Callback = function()
task.spawn(function()
local oftv = tqq.unlock()

hlh:Notify({
Title = _d("JxYZVBddBw"),
Description = oftv,
Lifetime = 10,
})
end)
end,
})

tqq.flySection = mms:Section({ Side = _d("IgATQQ") })
tqq.flySection:Header({ Name = _d("KAkMFZul/IHd+g") })

tqq.flySection:Toggle({
Name = _d("KAkMFVFuNT0hWRUqSRUNAFVACRVULREHWVldGxkLXA"),
Default = false,
Callback = function(skzi)
local tw = tqq.flyToggle(skzi)

hlh:Notify({
Title = _d("KAkM"),
Description = tw,
Lifetime = 4,
})
end,
}, _d("DwYXTSZfGBc"))

getgenv().ACBXTeleport = tqq

getgenv().ACBXDeepWater = nl

pcall(nl.dropStale)

for dvz, eql in ipairs(tqq.npcs) do
tqq.npcSection:Button({
Name = eql.name,
Callback = function()
task.spawn(function()
local gpdi = tqq.go(eql)

hlh:Notify({
Title = _d("OgAZUAlWBho"),
Description = gpdi,
Lifetime = 6,
})
end)
end,
})
end

local thrd = gg:Section({ Side = _d("IgATQQ") })

thrd:Header({ Name = _d("KgwSUhBXE06H7rqWgfs") })

local nawr = {
busy = false,
}

local jzk = (tonumber(getgenv().ACBXDigGeneration) or 0) + 1
getgenv().ACBXDigGeneration = jzk

function nawr.read()
local uwmx, nuu = pcall(function()
return wpse.DigGetState:InvokeServer()
end)

return uwmx and type(nuu) == _d("GgQXWRw") and nuu or nil
end

function nawr.call(tkcm, vthm)
local mls, wm = pcall(function()
return wpse.DigShop:InvokeServer(tkcm, vthm)
end)

task.wait(2.5)

return mls and wm == true
end

function nawr.wear()
local obfm = zhiw.Character

if not obfm then
return false
end

local yf = obfm:FindFirstChildOfClass(_d("JhAYVBdWHQo"))
local ndn = zhiw:FindFirstChild(_d("LAQWXglYFwU"))

if not (yf and ndn) then
return false
end

yf:UnequipTools()
task.wait(0.4)

for tmb = 1, 8 do
for stl, ct in ipairs(ndn:GetChildren()) do
if ct:IsA(_d("OgoaWQ")) and ct.Name:find(_d("MCEcUipRGxgAGQ")) then
yf:EquipTool(ct)

return true
end
end

task.wait(0.5)
end

return false
end

function nawr.run()
local zhp = nawr.read()

if not zhp then
return _d("Og0QFR1QE04WHVoJGR0dRRtaDRkVABYCUAtQGglL")
end

local bxy = {}

pcall(function()
local ijcz = wpse.FishingGetState:InvokeServer()

bxy = ijcz and ijcz.areas or {}
end)

if not (bxy.abandoned_island and bxy.twin_beaches and bxy.windmill_isle) then
tqq.unlock()
task.wait(1)
end

local rur

for bph, xve in ipairs(tqq.npcs) do
if xve.name == _d("KgwSUhxL") then
rur = xve
break
end
end

if not rur then
return _d("Og0QFS1LEQ8WAEccGTwbCwFQCxkdHUUbWg0ZHQBFAV0QSlQZCgdZHRc")
end

tqq.go(rur)
task.wait(2)

local jdov = zhiw.Character
local exbr = jdov and jdov:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))
local uxlo = tqq.point(rur)

if not (exbr and uxlo) or (exbr.Position - uxlo).Magnitude > 40 then
return _d("LQoAWR0ZGgERVUccWBcGRQFdHBkgHAAURgxLEU4tAFsNXAZA")
end

zhp = nawr.read() or zhp

local tnn = false
local xep = zhp.shovels and zhp.shovels.shovel_basic == true
local pvh = zhp.detectors and zhp.detectors.detector_basic == true

if not (xep and pvh) then
tnn = nawr.call(_d("LQkUXBRqAA8XAVAL"), _d("HQ0aQxxVKwwEBlwa"))
zhp = nawr.read() or zhp
end

if zhp.equippedShovel ~= _d("HQ0aQxxVKwwEBlwa") then
nawr.call(_d("KxQAXAlqHAETEFk"), _d("HQ0aQxxVKwwEBlwa"))
end

if zhp.equippedDetector ~= _d("CgABUBpNGxw6F1QKUBc") then
nawr.call(_d("KxQAXAl9ERoAFkEWSw"), _d("CgABUBpNGxw6F1QKUBc"))
end

zhp = nawr.read() or zhp

if zhp.equippedShovel == _d("HQ0aQxxVKwwEBlwa") and zhp.equippedDetector == _d("CgABUBpNGxw6F1QKUBc") then
local hj = nawr.wear()
local goh = false

if hj and cibk.enabled then
cibk.autoFishWanted = false
goh = true

ofem(false)

pcall(function()
svyx:UpdateState(false)
end)
end

return (tnn and _d("LQkUXBRcEE4EG1FZXAUbDAVFHF0") or _d("KxQAXAlJEQo"))
.. _d("ThEdUFl7FR0MFhUqURsYABkVGFcQTicURhBaVCoAAVAaTRscSw")
.. (goh and _d("TiQAQRYZMgcWHRUWXxJOSFVBEVxUHQ0aQxxVVAYEBhUNURFOERpaFRkHAgoBGw") or _d(""))
end

return _d("Og0QFTtYBwcGVWYRVgILCVVaCxkwCxEQVg1WBk4MBhUKTR0CCVVYEEoHBwsSGw")
end

function nawr.unlock()
if nawr.busy then
return _d("LwkHUBhdDU4SGkcSUBoJSw")
end

nawr.busy = true

local agn, neet = pcall(nawr.run)

nawr.busy = false

if not agn then
return _d("KgwSUhBXE04DFFwVXBBURQ") .. tostring(neet)
end

return neet
end

nawr.icon = function()
local aqj = gethui()

for dype, gkiv in ipairs(aqj:QueryDescendants(_d("JwgUUhx1FQwAGQ"))) do
if gkiv.Name == _d("OgQXfBRYEws") then
local qdq = gkiv.Parent
local ufsl = qdq and qdq:FindFirstChild(_d("OgQXZg5QAA0NEEc3WBkL"))

if ufsl and ufsl.Text == _d("KgwSUhBXEw") then
if gkiv:GetAttribute(_d("LyY3bT1QEycGGls")) then
return true
end

gkiv:SetAttribute(_d("LyY3bT1QEycGGls"), true)
gkiv.Image = _d("")
gkiv.BackgroundTransparency = 1

local orgd = Color3.fromRGB(233, 236, 242)

for kwxf, gun in ipairs(aqj:QueryDescendants(_d("JwgUUhx1FQwAGQ"))) do
if gun.Name == _d("OgQXfBRYEws") and gun ~= gkiv and gun.Image ~= _d("") then
orgd = gun.ImageColor3
break
end
end

local function zxe(qm, pzl, wdr, gmc, gkk, hul)
local csbs = Instance.new(_d("KBcUWBw"))

csbs.Size = UDim2.fromOffset(wdr, gmc)
csbs.Position = UDim2.fromOffset(qm, pzl)
csbs.BackgroundColor3 = orgd
csbs.BorderSizePixel = 0
csbs.Parent = gkiv

if hul then
csbs.Rotation = hul
end

if gkk then
local ksmx = Instance.new(_d("Oyw2WgtXERw"))

ksmx.CornerRadius = UDim.new(0, gkk)
ksmx.Parent = csbs
end

return csbs
end

zxe(1.1, 10.2, 7, 6.4, 1.6, -45)
zxe(3.1, 8.3, 11, 2.2, 0.8, -45)
zxe(9.8, 4.4, 5.6, 2, 0.8, 45)

return true
end
end
end

return false
end

task.defer(function()
for fgil = 1, 20 do
if nawr.icon() then
break
end

task.wait(0.25)
end
end)

thrd:Button({
Name = _d("OwsZWhpSVAoMElIQVxM"),
Callback = function()
task.spawn(function()
hlh:Notify({
Title = _d("KgwSUhBXEw"),
Description = _d("JgAUURBXE04RGhUNURFOMQdQGEoBHABVfQxXAAsXWw"),
Lifetime = 5,
})

local kou = nawr.unlock()

hlh:Notify({
Title = _d("KgwSUhBXEw"),
Description = kou,
Lifetime = 10,
})
end)
end,
})

nawr.data = require(jw.ModuleScripts.DigData)

function nawr.zoneAt(bru)
for ys, mgna in ipairs(game:GetService(_d("LQoZWRxaAAcKG2YcSwIHBhA")):GetTagged(nawr.data.ZoneTag)) do
if mgna:IsA(_d("LAQGUClYBho")) and mgna:IsDescendantOf(workspace) then
local rrfs = mgna.CFrame:PointToObjectSpace(bru)
local nu = mgna.Size * 0.5

if math.abs(rrfs.X) <= nu.X and math.abs(rrfs.Y) <= nu.Y and math.abs(rrfs.Z) <= nu.Z then
return true
end
end
end

return false
end

function nawr.onIsland()
for mnyl, vw in ipairs(game:GetService(_d("LQoZWRxaAAcKG2YcSwIHBhA")):GetTagged(nawr.data.ZoneTag)) do
if vw:IsA(_d("LAQGUClYBho")) and vw:IsDescendantOf(workspace) then
return true
end
end

return false
end

function nawr.bestShovel(rbjy)
local ybs = rbjy and rbjy.shovels or {}
local cori = nil

for xvl, dbyj in ipairs(nawr.data.Shovels) do
if ybs[dbyj.id] == true then
cori = dbyj.id
end
end

return cori
end

function nawr.equipBest()
local pvaw = nawr.read()
local di = nawr.bestShovel(pvaw)

if not di then
return nil
end

if pvaw.equippedShovel ~= di then
nawr.call(_d("KxQAXAlqHAETEFk"), di)
end

nawr.wear()

return di
end

function nawr.leaveNpc()
local ovm = zhiw.Character
local kskt = ovm and ovm:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))
local mk = ovm and ovm:FindFirstChildOfClass(_d("JhAYVBdWHQo"))

if not (kskt and mk) then
return false
end

local uoq

for ynk, iuix in ipairs(tqq.npcs) do
if iuix.name == _d("KgwSUhxL") then
uoq = iuix
break
end
end

local xsnr = uoq and tqq.point(uoq)

if not xsnr then
return false
end

local hnxw = Vector3.new(kskt.Position.X - xsnr.X, 0, kskt.Position.Z - xsnr.Z)

if hnxw.Magnitude >= 16 then
return true
end

if hnxw.Magnitude < 1 then
hnxw = Vector3.new(0, 0, -1)
end

hnxw = hnxw.Unit

local wl = Vector3.new(xsnr.X + hnxw.X * 22, kskt.Position.Y, xsnr.Z + hnxw.Z * 22)
local psdp = os.clock() + 6

mk:MoveTo(wl)

while os.clock() < psdp do
local ucxm = zhiw.Character
local ncq = ucxm and ucxm:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if not ncq or (ncq.Position - wl).Magnitude < 4 then
break
end

task.wait(0.15)
end

pcall(function()
mk:MoveTo(kskt.Position)
end)

return true
end

function nawr.goToSand()
if not nawr.onIsland() then

pcall(function()
wpse.TeleportToWorld:FireServer(_d("AgoXVwA"))
end)

local pfs = os.clock() + 15

while not nawr.onIsland() and os.clock() < pfs do
task.wait(0.5)
end
end

if not nawr.onIsland() then
local qr

for br, wx in ipairs(tqq.npcs) do
if wx.name == _d("KgwSUhxL") then
qr = wx
break
end
end

if qr then
tqq.go(qr)
task.wait(2)
end
end

if nawr.onIsland() then
nawr.leaveNpc()
end
end

function nawr.spot()
local eqgz = zhiw.Character
local skl = eqgz and eqgz:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if not skl then
return nil
end

local bh = skl.CFrame.LookVector
local zcx = Vector3.new(bh.X, 0, bh.Z)

if zcx.Magnitude < 0.01 then
zcx = Vector3.new(0, 0, -1)
end

zcx = zcx.Unit

local vkt = RaycastParams.new()
vkt.FilterType = Enum.RaycastFilterType.Exclude
vkt.FilterDescendantsInstances = { eqgz }

local function qs(fz, brqg)
local zqc = skl.Position + fz * brqg + Vector3.new(0, 4, 0)
local eatm = workspace:Raycast(zqc, Vector3.new(0, -18, 0), vkt)

if eatm and nawr.zoneAt(eatm.Position) then
return eatm.Position
end
end

for uhs, opcc in ipairs({ 4, 7, 10, 2 }) do
local nba = qs(zcx, opcc)

if nba then
return nba
end
end

local ml = Vector3.new(-zcx.Z, 0, zcx.X)

for av, dva in ipairs({ 4, 8 }) do
for wpcn, eqli in ipairs({ 1, -1 }) do
for xm, shz in ipairs({ 1, 0.5 }) do
local yi = qs((ml * (eqli * shz) + zcx * (1 - shz)).Unit, dva)

if yi then
return yi
end
end
end
end

return nil
end

function nawr.turn()
local wzy = zhiw.Character
local drxx = wzy and wzy:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if not drxx then
return
end

local ngj = drxx.CFrame.LookVector
local jhp = Vector3.new(ngj.X, 0, ngj.Z)

if jhp.Magnitude < 0.01 then
jhp = Vector3.new(0, 0, -1)
end

jhp = jhp.Unit

local ptox = Vector3.new(-jhp.Z, 0, jhp.X)

drxx.CFrame = CFrame.lookAt(drxx.Position, drxx.Position + ptox)
end

nawr.pending = false

pcall(function()
wpse.DigUpdate.OnClientEvent:Connect(function(yx)
if yx == _d("KgwSZxxKAQIR") or yx == _d("KgwSdhhXFwsJ") then
nawr.pending = false
end
end)
end)

function nawr.autoLoop()
local vf = false

while nawr.autoOn and ply() and getgenv().ACBXDigGeneration == jzk do
local kzdw = lgd and lgd.worldBoss
local gxe = kzdw ~= nil
and type(kzdw.holdsDigging) == _d("CBAbVg1QGwA")
and kzdw.holdsDigging() == true

if gxe then

vf = true
task.wait(1)
else
if vf then

vf = false
nawr.goToSand()
end

local arul = nawr.spot()

if arul then
nawr.pending = true

local ivl = pcall(function()
wpse.DigAction:FireServer(_d("PREURw0"), arul)
end)

if not ivl then
nawr.pending = false
end

local mrxq = os.clock() + 6

while nawr.pending and nawr.autoOn and os.clock() < mrxq
and getgenv().ACBXDigGeneration == jzk and ply() do
task.wait()
end

nawr.pending = false
else
nawr.turn()
task.wait(0.25)
end
end
end
end

function nawr.autoStart()
local fiz = nawr.read()

if not (fiz and nawr.bestShovel(fiz)) then
return _d("IApVRhFWAgsJVVoOVxEKRVgVLFcYAQYeFR1QEwkMG1JZXx0cFgEb")
end

local dqu = false

if cibk.enabled then
cibk.autoFishWanted = false

ofem(false)
pcall(function()
svyx:UpdateState(false)
end)

dqu = true
end

rz = true
nawr.equipBest()

nawr.goToSand()

task.spawn(nawr.autoLoop)

return _d("KgwSUhBXE0A") .. (dqu and _d("TiQAQRYZMgcWHRUWXxJOSFVBEVxUHQ0aQxxVVAYEBhUNURFOERpaFRkHAgoBGw") or _d(""))
end

thrd:Toggle({
Name = _d("LxABWll9HQk"),
Default = false,
Callback = function(qcxm)
nawr.autoOn = qcxm

if not qcxm then
nawr.pending = false
rz = false
return
end

task.spawn(function()
local zeu = nawr.autoStart()

hlh:Notify({
Title = _d("LxABWll9HQk"),
Description = zeu,
Lifetime = 6,
})
end)
end,
}, _d("CgwSUhBXEzEEAEEW"))

function nawr.npcRow()
for jut, yqec in ipairs(tqq.npcs) do
if yqec.name == _d("KgwSUhxL") then
return yqec
end
end
end

function nawr.shop(bhie, yb)
local zvb, su, yrc, cins = pcall(function()
return wpse.DigShop:InvokeServer(bhie, yb)
end)

if not zvb then
return false, _d("Og0QFR1QE04WHVoJGR0dRRtaDRkVABYCUAtQGglL")
end

return su == true, yrc, type(cins) == _d("GgQXWRw") and cins or nil
end

function nawr.upgrade()
local at = nawr.read()

if not at then
return nil, _d("Og0QFR1QE04WHVoJGR0dRRtaDRkVABYCUAtQGglL")
end

local mwn = nawr.bestShovel(at)

if mwn and at.equippedShovel ~= mwn then
nawr.equipBest()
at = nawr.read() or at
end

local za = at.shovels or {}
local hfd = tonumber(at.digs) or 0
local rb

for oi, yr in ipairs(nawr.data.Shovels) do
if not yr.crafted and yr.id ~= _d("HQ0aQxxVKwwEBlwa") and za[yr.id] ~= true then
local uj = tonumber(yr.cost) or math.huge

if uj <= hfd and (not rb or uj > (tonumber(rb.cost) or 0)) then
rb = yr
end
end
end

if not rb then
return nil, _d("IApVQAleBg8BEBUQSlQPAxNaC10VDAkQFQBcAEA")
end

local dw = nawr.npcRow()
local gtrs = dw and tqq.point(dw)
local kj = zhiw.Character
local eit = kj and kj:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if gtrs and eit and (eit.Position - gtrs).Magnitude > 20 then
tqq.go(dw)
task.wait(2.2)

kj = zhiw.Character
eit = kj and kj:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))
end

local sb, hk = nawr.shop(_d("LBAMZhFWAgsJ"), rb.id)

if not sb then
return nil, _d("LBAMFQtcEhsWEFFDGQ") .. tostring(hk)
end

nawr.equipBest()

if nawr.autoOn then
nawr.leaveNpc()
end

return rb.name
end

function nawr.buyLoop()
while nawr.buyOn do
local wswm = nawr.upgrade()

if wswm then
hlh:Notify({
Title = _d("LxABWll7ARdFJl0WTxEC"),
Description = _d("LAoAUhFNVA8LERUcSAEHFQVQHRkABgBV") .. wswm .. _d("QA"),
Lifetime = 6,
})

task.wait(3)
else
task.wait(10)
end
end
end

thrd:Toggle({
Name = _d("LxABWll7ARdFN1AKTVQ9DRpDHFU"),
Default = false,
Callback = function(juh)
nawr.buyOn = juh

if not juh or nawr.buyRunning then
return
end

nawr.buyRunning = true

task.spawn(function()
nawr.buyLoop()

nawr.buyRunning = false
end)
end,
}, _d("CgwSUhBXEzEHAEw"))

getgenv().ACBXDigging = nawr

bqiq.tab = qg:Tab({
Name = _d("PQABQRBXEx0"),

Image = _d(""),
})

bqiq.icon = function()
local zenz = gethui()

for csk, dwvp in ipairs(zenz:QueryDescendants(_d("JwgUUhx1FQwAGQ"))) do
if dwvp.Name == _d("OgQXfBRYEws") then
local jqpr = dwvp.Parent
local chve = jqpr and jqpr:FindFirstChild(_d("OgQXZg5QAA0NEEc3WBkL"))

if chve and chve.Text == _d("PQABQRBXEx0") then
if dwvp:GetAttribute(_d("LyY3bTpWEycGGls")) then
return true
end

dwvp:SetAttribute(_d("LyY3bTpWEycGGls"), true)
dwvp.Image = _d("")
dwvp.BackgroundTransparency = 1

local qh = Color3.fromRGB(168, 170, 176)

local function tqd(lxjm, jyk, slk, qzcn, ya, izn)
local fbep = Instance.new(_d("KBcUWBw"))

fbep.Size = UDim2.fromOffset(slk, qzcn)
fbep.Position = UDim2.fromOffset(lxjm, jyk)
fbep.BackgroundColor3 = qh
fbep.BorderSizePixel = 0
fbep.Parent = dwvp

if not izn then
fbep.BackgroundTransparency = 1

local bfd = Instance.new(_d("OywmQQtWHws"))

bfd.Color = qh
bfd.Thickness = 1.3
bfd.LineJoinMode = Enum.LineJoinMode.Round
bfd.Parent = fbep
end

if ya then
local mvms = Instance.new(_d("Oyw2WgtXERw"))

mvms.CornerRadius = UDim.new(0, ya)
mvms.Parent = fbep
end

return fbep
end

local vfdg = {
{ 8, 0, 2, 3 },
{ 8, 15, 2, 3 },
{ 0, 8, 3, 2 },
{ 15, 8, 3, 2 },
{ 2, 2, 3, 3 },
{ 13, 2, 3, 3 },
{ 2, 13, 3, 3 },
{ 13, 13, 3, 3 },
}

for sgpz, ol in ipairs(vfdg) do
tqd(ol[1], ol[2], ol[3], ol[4], 0, true)
end

tqd(2, 2, 14, 14, 7, false)
tqd(7, 7, 4, 4, 2, true)

return true
end
end
end

return false
end

task.defer(function()
for sfu = 1, 20 do
if bqiq.icon() then
break
end

task.wait(0.25)
end
end)

bqiq.configSection = bqiq.tab:Section({
Side = _d("IgATQQ"),
})

bqiq.configSection:Header({
Name = _d("LQobUxBeVCMEG1QeXBkLCwE"),
})

bqiq.autoSaveToggle = bqiq.configSection:Toggle({
Name = _d("LxABWllKFRgA"),
Default = false,
Callback = function(grg)
bqiq.autoSave = grg
bqiq.autoSaveAt = 0

if grg then
local onre = bqiq.selected or _d("CgATVAxVAA")
local is, gco = bqiq.save(onre)

bqiq.selected = onre
bqiq.lastText = is and (_d("LxABWllKFRgAVVoXGVlOEgdaDVxU") .. onre)
or (_d("LxABWllKFRgAVVoXFVQIDAdGDRkDHAwBUFlfFQcJEFFDGQ") .. tostring(gco))
else
bqiq.lastText = _d("LxABWllKFRgAVVofX1o")
end
end,
}, _d("DQobUxBeKw8QAVomShUYAA"))

bqiq.nameInput = bqiq.configSection:Input({
Name = _d("PQQDUFlXFQMA"),
Placeholder = _d("C0sSG1lrFQcBBg"),
AcceptedCharacters = _d("LwkZ"),
Callback = function(sdmq)
bqiq.nameDraft = sdmq
end,
})

bqiq.nameInput.IgnoreConfig = true

bqiq.configSection:Button({
Name = _d("LRcQVA1cVB0EA1A"),
Callback = function()
local itg = bqiq.nameDraft or bqiq.nameInput:GetInput()

itg = type(itg) == _d("HREHXBde") and itg:gsub(_d("MEAGHg"), _d("")):gsub(_d("SxZeEQ"), _d("")) or _d("")

if itg == _d("") then
hlh:Dialog({
Title = _d("LQobUxBe"),
Description = _d("OhwFUFlYVAAEGFBZXxscRQFdHBkHDxMQFR9QBh0RVRhZUABOBxBWFlQRHUUBXRwZEgcJEBIKGRoPCBAb"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})

return
end

local jn, bnn = bqiq.save(itg)

if not jn then
bqiq.lastText = _d("PQQDUFlfFQcJEFFDGQ") .. tostring(bnn)

return
end

bqiq.selected = itg
bqiq.lastText = _d("LRcQVA1cEE4") .. itg .. _d("QA")
bqiq.savesAt = 0

task.defer(function()
task.wait(0.25)

pcall(function()
bqiq.fileDropdown:UpdateSelection(itg)
end)
end)
end,
})

bqiq.fileDropdown = bqiq.configSection:Dropdown({
Name = _d("PQQDUFlfHQIA"),
Search = false,
Multi = false,
Required = false,
Options = bqiq.saves(),
Callback = function(ga)
local zrm = type(ga) == _d("GgQXWRw") and ga[1] or ga

if type(zrm) == _d("HREHXBde") and zrm ~= _d("") then
bqiq.selected = zrm
bqiq.selectionShown = zrm

pcall(function()
bqiq.fileDropdown:UpdateName(_d("PQQDUFlfHQIATxU") .. zrm)
end)
end
end,
})

bqiq.fileDropdown.IgnoreConfig = true

bqiq.configSection:Button({
Name = _d("IgoUUVlKEQIAFkEcXQ"),
Callback = function()
local pk = bqiq.selected or bqiq.fileDropdown.Value
local tbw, dumw = bqiq.load(pk)

bqiq.lastText = tbw and (_d("IgoUURxdVA") .. pk .. _d("QA")) or (_d("IgoUUVlfFQcJEFFDGQ") .. tostring(dumw))
end,
})

bqiq.configSection:Button({
Name = _d("PQQDUFlNG04WEFkcWgALAQ"),
Callback = function()
local hugl = bqiq.selected or bqiq.fileDropdown.Value
local cmg, xiw = bqiq.save(hugl)

bqiq.lastText = cmg and (_d("ORcaQRwZ") .. hugl .. _d("QA")) or (_d("PQQDUFlfFQcJEFFDGQ") .. tostring(xiw))
end,
})

bqiq.configSection:Button({
Name = _d("KgAZUA1cVB0AGVAaTREKRQZUD1w"),
Callback = function()
local lqx = bqiq.selected or bqiq.fileDropdown.Value

if type(lqx) ~= _d("HREHXBde") or lqx == _d("") then
bqiq.lastText = _d("PgwWXllYVB0EA1BZXx0CAFVTEEsHGks")

return
end

hlh:Dialog({
Title = _d("KgAZUA1cVA") .. lqx .. _d("UQ"),
Description = _d("Og0QFR9QGAtFHEZZSxEDCgNQHRkSHAoYFR1QBwVFFFsdGRcPCxtaDRkWC0UHUBpWAgsXEFFX"),
Buttons = {
{
Name = _d("KgAZUA1c"),
Callback = function()
local xfmd, zpy = bqiq.delete(lqx)

bqiq.lastText = xfmd
and (_d("KgAZUA1cEE4") .. lqx .. _d("QA"))
or (_d("LQoAWR0ZGgERVVEcVREaAE8V") .. tostring(zpy))
end,
},
{
Name = _d("LQQbVhxV"),
},
},
})
end,
})

bqiq.configSection:Button({
Name = _d("PAATRxxKHE4JHEYN"),
Callback = function()
bqiq.savesAt = 0
bqiq.lastText = _d("PQQDUFlVHR0RVUccXwYLFh1QHRc")
end,
})

bqiq.configSection:Button({
Name = _d("IwQHXllYB04EAEEWGRgBBBE"),
Callback = function()
local utom = bqiq.selected or bqiq.fileDropdown.Value

if type(utom) ~= _d("HREHXBde") or utom == _d("") then
bqiq.lastText = _d("PgwWXllYVB0EA1BZXx0CAFVTEEsHGks")

return
end

if bqiq.setAutoLoad(utom) then
bqiq.lastText = utom .. _d("TgkaVB1KVAELVUYNWAYaSw")
else
bqiq.lastText = _d("LQoAWR0ZGgERVUILUAALRQFdHBkVGxEaFRVWFQpFGFQLUhEcSw")
end
end,
})

bqiq.configSection:Button({
Name = _d("LQkQVAsZFRsRGhUVVhUK"),
Callback = function()
bqiq.setAutoLoad(_d(""))
bqiq.lastText = _d("IAoBXRBXE04JGlQdSlQBC1VGDVgGGks")
end,
})

bqiq.statusParagraph = bqiq.configSection:Paragraph({
Header = _d("PREUQQxK"),
Body = _d(""),
})

bqiq.miscSection = bqiq.tab:Section({
Side = _d("PAwSXQ0"),
})

bqiq.miscSection:Header({
Name = _d("IwwGVg"),
})

bqiq.miscSection:Toggle({
Name = _d("LxABWllaGAEWEBUeXBoLFxRBEFYaTjA8"),
Default = false,
Callback = function(zp)
lfuj(zp)
end,
}, _d("AwwGViZYARoKKlYVVgcLOhJQF1wGDxEcWhc"))

bqiq.miscSection:Toggle({
Name = _d("LxABWllrGwIJ"),
Default = true,
Callback = function(rtt)
bqiq.autoRoll = rtt

if rtt and bqiq.setRollButton then
bqiq.setRollButton(_d("LxABWitWGAInAEENVho"), true)
end
end,
}, _d("AwwGViZYARoKKkcWVRg"))

bqiq.miscSection:Toggle({
Name = _d("LxABWlloAQcGHhUrVhgC"),
Default = true,
Callback = function(vr)
bqiq.autoQuickRoll = vr

if vr and bqiq.setRollButton then
bqiq.setRollButton(_d("PxAcVhJrGwIJN0ANTRsA"), true)
end
end,
}, _d("AwwGViZYARoKKkQMUBcFOgdaFVU"))

bqiq.uiSection = bqiq.tab:Section({
Side = _d("PAwSXQ0"),
})

bqiq.uiSection:Header({
Name = _d("Oyw"),
})

bqiq.uiSection:Toggle({
Name = _d("LAQWXh5LGxsLERUbVQEc"),
Default = true,
Callback = function(bjnr)
pcall(function()
hlh:SetAcrylicBlurState(bjnr)
end)
end,
}, _d("GwwqVxhaHwkXGkAXXSsMCQBH"))

function bqiq.widthFactor(givv)
return 1 + math.max(0, (givv or 1) - 1) * 0.8
end

function bqiq.scaleCap()
local qcr = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local nkpp = math.min(120, math.floor(((qcr.Y - 40 - 8 - 8) / 500) * 100))

while nkpp > 50 and (bqiq.baseWidth or 720) * (nkpp / 100) * bqiq.widthFactor(nkpp / 100) > qcr.X - 16 do
nkpp = nkpp - 1
end

return math.max(50, nkpp)
end

function bqiq.scaleCeiling()
return math.min(1.2, bqiq.scaleCap() / 100)
end

function bqiq.refreshScaleCap()
local dz = bqiq.scaleSlider

if not dz then
return
end

local lfce = bqiq.scaleCeiling()

pcall(function()
dz.Settings.Maximum = lfce
end)

local durw = tonumber(dz:GetValue()) or 1

if durw > lfce then
bqiq.scaleTarget = lfce

pcall(function()
dz:UpdateValue(lfce)
end)
end
end

bqiq.scaleSlider = bqiq.uiSection:Slider({
Name = _d("OyxVRhpYGAs"),
Default = 1,
Minimum = 0.5,

Maximum = bqiq.scaleCeiling(),
DisplayMethod = _d("OAQZQBw"),
Precision = 2,

Callback = function(boh)
bqiq.scalePending = tonumber(boh)
bqiq.scalePendingAt = os.clock()
end,
onInputComplete = function(sgyc)
local kfvs = bqiq.scaleCeiling()

bqiq.scaleTarget = math.clamp(tonumber(sgyc) or bqiq.scalePending or 1, 0.5, kfvs)
bqiq.scalePending = nil

bqiq.scaleAnchor = nil

bqiq.saveUi()
end,
}, _d("GwwqRhpYGAs"))

bqiq.refreshScaleCap()

bqiq.themeDropdown = bqiq.uiSection:Dropdown({
Name = _d("Og0QWBwDVDgKHFE"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = bqiq.themeOrder,
Callback = function(jvmo)
local uwq = type(jvmo) == _d("GgQXWRw") and jvmo[1] or jvmo

if type(uwq) == _d("HREHXBde") and bqiq.presets[uwq] then
bqiq.theme = uwq
bqiq.accent = nil
bqiq.applyTheme()

pcall(function()
bqiq.themeDropdown:UpdateName(_d("Og0QWBwDVA") .. uwq)
end)

bqiq.saveUi()
end
end,
}, _d("GwwqQRFcGQs"))

bqiq.accentPicker = bqiq.uiSection:Colorpicker({
Name = _d("LwYWUBdNVA0KGVoMSw"),
Default = Color3.fromRGB(168, 170, 176),
Alpha = 0,
Callback = function(evs)
bqiq.accent = evs
bqiq.applyTheme()
bqiq.saveUi()
end,
}, _d("GwwqVBpaEQAR"))

bqiq.codesSection = bqiq.tab:Section({
Side = _d("PAwSXQ0"),
})

bqiq.codesSection:Header({
Name = _d("LQoRUAo"),
})

bqiq.codeText = _d("PAARUBxUB04AA1ALQFQNChFQWU0cBxZVUhhUEU4WHVwJSlQZDAFdVRkbAABVUA9cBhdFFloMSRgLRRpTWUoRDQobUQoX")

function bqiq.setCodeText(mil)
bqiq.codeText = mil

pcall(function()
bqiq.codeParagraph:UpdateBody(mil)
end)
end

function bqiq.redeemCodes()
if bqiq.redeeming then
return
end

local soho = wpse.RedeemCode
local ojqi = jw:FindFirstChild(_d("IwoRQBVcJw0XHEUNSg"))
local wtx = ojqi and ojqi:FindFirstChild(_d("LQoRUD1YAA8"))
local evlc, tksx = false, nil

if soho and wtx then
evlc, tksx = pcall(function()
return require(wtx)
end)
end

local hck = evlc and type(tksx) == _d("GgQXWRw") and tksx.Codes or nil

if not soho or type(hck) ~= _d("GgQXWRw") then
bqiq.setCodeText(_d("Og0cRllPERwWHFoXGRsIRQFdHBkTDwgQFRFYB04LGhUaVhALRRlcCk1UARdVWxYZBgsBEFAUGQYLCBpBHBc"))
return
end

local vwhp = {}

for dwip in pairs(hck) do
vwhp[#vwhp + 1] = dwip
end

table.sort(vwhp)

local kh = #vwhp

bqiq.redeeming = true
bqiq.setCodeText(_d("PAARUBxUHQACVQ") .. kh .. _d("TgYaURxKWkBL"))

task.spawn(function()
local kflt, smy, auwl = 0, 0, 0
local gj = {}

for az = 1, kh do
if not ply() then
break
end

local yupa = vwhp[az]
local ddi, jrav = pcall(function()
return soho:InvokeServer(yupa)
end)

local jkb = ddi and type(jrav) == _d("GgQXWRw") and jrav.success == true
local cwg = ddi and type(jrav) == _d("GgQXWRw") and tostring(jrav.message or _d("")) or tostring(jrav or _d(""))

if not jkb and string.find(string.lower(cwg), _d("GQQcQQ"), 1, true) then
task.wait(3.5)

ddi, jrav = pcall(function()
return soho:InvokeServer(yupa)
end)

jkb = ddi and type(jrav) == _d("GgQXWRw") and jrav.success == true
cwg = ddi and type(jrav) == _d("GgQXWRw") and tostring(jrav.message or _d("")) or tostring(jrav or _d(""))
end

if jkb then
kflt = kflt + 1
elseif string.find(string.lower(cwg), _d("DwkHUBhdDQ"), 1, true) then
smy = smy + 1
else
auwl = auwl + 1

if #gj < 6 then
gj[#gj + 1] = yupa .. _d("VEU") .. (cwg ~= _d("") and cwg or _d("AApVVBdKAwsX"))
end
end

bqiq.setCodeText(string.format(_d("SwFVWh8ZUQpFWBVcXVQcABFQHFQRCklVEB0ZFQIXEFQdQFhOQBEVC1wSGxYQUVc"), az, kh, kflt, smy, auwl))

if az < kh and ply() then
task.wait(1.8)
end
end

local laa = {
string.format(_d("PAARUBxUEQpFUFFVGRUCFxBUHUBUBgQRFVxdWE4XEFMMShEKRVBRWVYSTkARGw"), kflt, smy, auwl, kh),
}

for fg, zgsg in ipairs(gj) do
laa[#laa + 1] = zgsg
end

bqiq.redeeming = false
bqiq.setCodeText(table.concat(laa, _d("ZA")))
end)
end

bqiq.codesSection:Button({
Name = _d("PAARUBxUVA8JGRUaVhALFg"),
Callback = function()
bqiq.redeemCodes()
end,
})

bqiq.codeParagraph = bqiq.codesSection:Paragraph({
Header = _d("LQoRUAo"),
Body = bqiq.codeText,
})

bqiq.scriptSection = bqiq.tab:Section({
Side = _d("PAwSXQ0"),
})

bqiq.scriptSection:Header({
Name = _d("PQYHXAlN"),
})

bqiq.scriptSection:Button({
Name = _d("OwsZWhhdVB0GB1wJTQ"),
Callback = function()
pcall(function()
hlh:Unload()
end)

getgenv().ACBXWindow = nil
getgenv().ACBXAllowReload = nil
end,
})

task.spawn(function()
while ply() do

if os.clock() >= bqiq.savesAt then
bqiq.savesAt = os.clock() + 3

local pb = bqiq.saves()
local bikc = table.concat(pb, _d("Eg"))

if bikc ~= bqiq.knownSaves then
bqiq.knownSaves = bikc

pcall(function()
bqiq.fileDropdown:ClearOptions()
bqiq.fileDropdown:InsertOptions(pb)
end)
end

if bqiq.selected and bqiq.selectionShown ~= bqiq.selected then
bqiq.selectionShown = bqiq.selected

pcall(function()
bqiq.fileDropdown:UpdateSelection(bqiq.selected)
end)
end
end

if bqiq.autoSave and os.clock() >= bqiq.autoSaveAt then
bqiq.autoSaveAt = os.clock() + 60

local jfap = bqiq.selected or _d("CgATVAxVAA")
local tee, jrtd = bqiq.save(jfap)

bqiq.selected = jfap
bqiq.lastText = tee and (_d("LxABWllKFRgAERU") .. jfap .. _d("TgQBFQ") .. os.date(_d("Sy1PEDQ")) .. _d("QA"))
or (_d("LxABWllKFRgAVVMYUBgLAU8V") .. tostring(jrtd))
end

if os.clock() >= bqiq.themeAt then
bqiq.themeAt = os.clock() + 3
bqiq.applyTheme()
end

if os.clock() >= bqiq.capAt then
bqiq.capAt = os.clock() + 2
bqiq.refreshScaleCap()
end

if os.clock() >= bqiq.statusAt then
bqiq.statusAt = os.clock() + 2

local pnf = bqiq.autoLoadName()
local mdd = table.concat({
_d("LxABWllVGw8BTxU") .. (pnf or _d("AAobUA")),
_d("PQQDUAoDVA") .. tostring(#bqiq.saves()),
bqiq.lastText,
}, _d("ZA"))

if mdd ~= bqiq.shownStatus then
bqiq.shownStatus = mdd

pcall(function()
bqiq.statusParagraph:UpdateBody(mdd)
end)
end
end

task.wait(0.25)
end
end)

task.spawn(function()
while ply() do

local sut = bqiq.scalePending

if sut and os.clock() - (bqiq.scalePendingAt or 0) > 0.35 then
local axc = bqiq.scaleCeiling()
local pvqj = math.clamp(sut, 0.5, axc)

bqiq.scalePending = nil

if math.abs(pvqj - bqiq.scaleTarget) > 0.002 then
bqiq.scaleTarget = pvqj
bqiq.scaleAnchor = nil

bqiq.saveUi()
end
end

if math.abs(bqiq.scaleTarget - bqiq.scale) > 0.002 then
local sftj = bqiq.guiRoot()

if sftj and not bqiq.baseWidth then
bqiq.baseWidth = sftj.Size.X.Offset
bqiq.baseHeight = sftj.Size.Y.Offset
end

local lauf = bqiq.baseWidth or 720
local nez = bqiq.baseHeight or 500
local mqog = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local ocwm, txr = 8, 40

if not bqiq.scaleAnchor and sftj then

local lzb = bqiq.widthFactor(bqiq.scaleTarget)
local olnt, egdz = lauf * lzb * bqiq.scaleTarget, nez * bqiq.scaleTarget
local jrx = sftj.AbsolutePosition

bqiq.scaleAnchor = Vector2.new(
math.clamp(jrx.X, ocwm, math.max(ocwm, mqog.X - olnt - ocwm)),
math.clamp(jrx.Y, txr, math.max(txr, mqog.Y - egdz - ocwm))
)
end

local xars = bqiq.scaleAnchor

bqiq.scale = bqiq.scale + (bqiq.scaleTarget - bqiq.scale) * 0.18

local xg = bqiq.widthFactor(bqiq.scale)

pcall(function()
hlh:SetScale(bqiq.scale)

if sftj then
local kxh = math.floor(lauf * xg)

sftj.Size = UDim2.fromOffset(kxh, math.floor(nez))

local mrts = sftj:FindFirstChild(_d("LQobQRxXAA"))

if mrts then
local efko = sftj:FindFirstChild(_d("PQwRUBtYBg"))
local ri = math.floor(efko and efko.Size.X.Scale * kxh or kxh * 0.325)

mrts.Size = UDim2.new(0, math.max(0, kxh - ri), 1, 0)
end
end
end)

if sftj and xars then
local gxqd, atgg = lauf * xg * bqiq.scale, nez * bqiq.scale
local fppi = math.clamp(xars.X, ocwm, math.max(ocwm, mqog.X - gxqd - ocwm))
local pewc = math.clamp(xars.Y, txr, math.max(txr, mqog.Y - atgg - ocwm))

local iner = sftj.Parent and sftj.Parent.AbsolutePosition or Vector2.zero

pcall(function()
sftj.Position = UDim2.fromOffset(math.floor(fppi - iner.X), math.floor(pewc - iner.Y))
end)
end
else

bqiq.scaleAnchor = nil
end

task.wait()
end
end)

lgd.misc.tierLabels = {}
lgd.misc.labelToTier = {}

lgd.misc.expSection = lgd.misc.tab:Section({
Side = _d("IgATQQ"),
})

lgd.misc.expSection:Header({
Name = _d("Kx0FUB1QAAcKG0ZZyev555qN9g"),
})

lgd.misc.claimToggle = lgd.misc.expSection:Toggle({
Name = _d("LxABWllaGA8MGA"),
Default = false,
Callback = function(fw)
local rnv = lgd.misc.expeditions

rnv.enabled = fw
rnv.claimAt = 0

if fw then
rnv.askedAt = 0
rnv.request()
end
end,
}, _d("DxABWiZaGA8MGA"))

lgd.misc.rewardToggle = lgd.misc.expSection:Toggle({
Name = _d("LxABWllaGAEWEBULXAMPFxFG"),
Default = false,
Callback = function(ltyd)
local ukyj = lgd.misc.expeditions

ukyj.autoClose = ltyd

if ltyd then
ukyj.closeRewards()
end
end,
}, _d("Cx0FahhMAAE6FlkWShE"))

lgd.misc.startToggle = lgd.misc.expSection:Toggle({
Name = _d("LxABWllKAA8XAQ"),
Default = false,
Callback = function(ocxu)
local lojw = lgd.misc.expeditions

if ocxu and not next(lojw.tiersWanted) then
lojw.autoStart = false

pcall(function()
lgd.misc.startToggle:UpdateState(false)
end)

hlh:Dialog({
Title = _d("LxABWllKAA8XARUXXBEKFlVUWU0dCxc"),
Description = _d("PgwWXllYAE4JEFQKTVQBCxAVDVARHEUcW1lNHAtFIVwcS1QKFxpFHVYDAEUTXAtKAEBFMFQKQFQaBB5QChkABgBVVhFcFR4ABkFZWhUcAQYZWXcdCQ0BWBhLEU4RHVBZSxUcAAZBVRkVAAFVVBdAVAAQGFccS1QBA1VBEVwZTgYUW1lLAQBFFEFZVhoNAFs"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})

return
end

lojw.autoStart = ocxu
lojw.startedAt = {}

if ocxu then
lojw.askedAt = 0
lojw.request()
end
end,
}, _d("DxABWiZKAA8XAQ"))

for hlc, bzl in ipairs(lgd.misc.expeditions.tiers()) do
table.insert(lgd.misc.tierLabels, tostring(bzl.name))
lgd.misc.labelToTier[tostring(bzl.name)] = bzl.id
end

lgd.misc.building = true

lgd.misc.tierDropdown = lgd.misc.expSection:Dropdown({
Name = _d("OgwQRw"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = lgd.misc.tierLabels,
Callback = function(njn)
local zjp = lgd.misc.expeditions

if lgd.misc.building then
return
end

local qa = {}
local tkq = {}

if type(njn) == _d("GgQXWRw") then
for nqgl, xqt in pairs(njn) do
local rjuv = lgd.misc.labelToTier[tostring(nqgl)]

if xqt and rjuv then
qa[rjuv] = true
table.insert(tkq, tostring(nqgl))
end
end
end

table.sort(tkq)
zjp.tiersWanted = qa

pcall(function()
lgd.misc.tierDropdown:UpdateName(#tkq > 0 and (_d("OgwQR1nb9MxF") .. table.concat(tkq, _d("QkU"))) or _d("OgwQR1nb9MxFG1oXXA"))
end)
end,
}, _d("GgwQRw"))

task.defer(function()
lgd.misc.building = false
end)

lgd.misc.expSection:Button({
Name = _d("LQkUXBQZGgES"),
Callback = function()
local cnow = lgd.misc.expeditions

if not cnow.claim() then
hlh:Notify({
Title = _d("Kx0FUB1QAAcKG0Y"),
Description = _d("IAoBXRBXE04NFEZZWhsDAFVXGFofThwQQVc"),
Lifetime = 5,
})
end
end,
})

lgd.misc.expSection:Button({
Name = _d("PQAbUVlKEQIAFkEcXQ"),
Callback = function()
local fclw = lgd.misc.expeditions

if not next(fclw.tiersWanted) then
hlh:Notify({
Title = _d("Kx0FUB1QAAcKG0Y"),
Description = _d("PgwWXllYAE4JEFQKTVQBCxAVDVARHEUcW1lNHAtFEUcWSRABEhsVH1AGHRFb"),
Lifetime = 5,
})

return
end

local zuxp = {}
local vsnh = 0

for sh, ep in ipairs(fclw.tiers()) do
if fclw.tiersWanted[ep.id] and fclw.status(ep.id) == _d("DxMUXBVYFgIA") then
if fclw.start(ep.id, zuxp) then
vsnh = vsnh + 1
end
end
end

if vsnh == 0 then
hlh:Notify({
Title = _d("Kx0FUB1QAAcKG0Y"),
Description = _d("IAoBXRBXE04GGkAVXVQMAFVGHFcAVEUBXRwZBwsJEFYNXBBOERxQC0pUDxcQFRhVBgsEEUxZVgEaSVVaCxkABgAHUFlYBgtFG1oNGRIBEAcVHFUdCQwXWRwZFw8XEUZZXxscRQFdHFRa"),
Lifetime = 6,
})
end
end,
})

lgd.misc.expInfo = lgd.misc.tab:Section({
Side = _d("PAwSXQ0"),
})

lgd.misc.expInfo:Header({
Name = _d("Kx0FUB1QAAcKG0Y"),
})

lgd.misc.expParagraph = lgd.misc.expInfo:Paragraph({
Header = _d("PREUQQxK"),
Body = lgd.misc.expeditions.text(),
})

lgd.misc.expeditions.loadRewards()

lgd.misc.expRewardParagraph = lgd.misc.expInfo:Paragraph({
Header = _d("LQkUXBRcEA"),
Body = lgd.misc.expeditions.rewardsText(),
})

task.spawn(function()
local eile = lgd.misc.expeditions
local mcmx = lw(_d("PRwbVjxBBAsBHEEQVhod"), 3)

if mcmx then
mcmx.OnClientEvent:Connect(function(vqg)
if type(vqg) ~= _d("GgQXWRw") then
return
end

eile.state = vqg

eile.offset = (tonumber(vqg.now) or os.time()) - os.time()
eile.syncedAt = os.clock()

if type(vqg.rewards) == _d("GgQXWRw") and #vqg.rewards > 0 then
table.insert(eile.rewardLog, 1, {
at = os.time(),
title = tostring(vqg.rewardTitle or _d("Kx0FUB1QAAcKGw")),
items = vqg.rewards,
})

while #eile.rewardLog > 8 do
table.remove(eile.rewardLog)
end

eile.saveRewards()

if eile.autoClose then

task.delay(0.35, eile.closeRewards)
end
end
end)
end

while ply() do

if os.clock() - eile.askedAt > 1 and os.clock() - eile.syncedAt > 20 then
eile.request()
end

if eile.enabled then
eile.claim()
end

if eile.autoClose then
eile.closeRewards()
end

if eile.autoStart and next(eile.tiersWanted) then
local fprx = {}

for tvs, zax in ipairs(eile.tiers()) do
if eile.tiersWanted[zax.id] and eile.status(zax.id) == _d("DxMUXBVYFgIA") then
if eile.start(zax.id, fprx) then
break
end
end
end
end

local qkz = eile.text()

if lgd.misc.expParagraph and qkz ~= lgd.misc.expShown then
lgd.misc.expShown = qkz

pcall(function()
lgd.misc.expParagraph:UpdateBody(qkz)
end)
end

local lmfb = eile.rewardsText()

if lgd.misc.expRewardParagraph and lmfb ~= eile.rewardsShown then
eile.rewardsShown = lmfb

pcall(function()
lgd.misc.expRewardParagraph:UpdateBody(lmfb)
end)
end

task.wait(0.75)
end
end)

lgd.misc.util = {
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

function lgd.misc.util.hook()
local vhfb = lgd.misc.util

if vhfb.hooked then
return
end

vhfb.hooked = true

if wpse.SyncCollection then
wpse.SyncCollection.OnClientEvent:Connect(function(ojdn)
if type(ojdn) == _d("GgQXWRw") then
vhfb.profile = ojdn
vhfb.profileAt = os.clock()
end
end)
end

if wpse.SyncAchievements then
wpse.SyncAchievements.OnClientEvent:Connect(function(cue)
if type(cue) == _d("GgQXWRw") then
vhfb.ach = cue
end
end)
end

if wpse.SyncQuests then
wpse.SyncQuests.OnClientEvent:Connect(function(nzej)
if type(nzej) == _d("GgQXWRw") and type(nzej.list) == _d("GgQXWRw") then
vhfb.quests = nzej
end
end)
end

if wpse.SyncPeriodicQuests then
wpse.SyncPeriodicQuests.OnClientEvent:Connect(function(jo, yeca)
if jo == _d("GQAQXhVA") and type(yeca) == _d("GgQXWRw") and type(yeca.list) == _d("GgQXWRw") then
vhfb.weekly = yeca
end
end)
end
end

function lgd.misc.util.askProfile()
local rac = lgd.misc.util

if os.clock() - rac.askedAt < 1.5 then
return
end

rac.askedAt = os.clock()

if wpse.RequestSync then
pcall(function()
wpse.RequestSync:FireServer()
end)
end
end

function lgd.misc.util.currentProfile()
local awb = lgd.misc.util

if type(awb.profile) ~= _d("GgQXWRw") then
awb.askProfile()

return nil
end

if os.clock() - awb.profileAt > 20 then
awb.askProfile()
end

return awb.profile
end

function lgd.misc.util.forgetProfile()
local prc = lgd.misc.util

prc.profile = nil
prc.profileAt = 0
prc.askedAt = 0
end

function lgd.misc.util.indexedTotal(grp)
local gil = 0

for iokp, hig in pairs((grp and grp.cardIndex) or {}) do
if hig then
gil = gil + 1
end
end

return gil
end

function lgd.misc.util.indexPending(vrcf)
local keoe = {}

if type(vrcf) ~= _d("GgQXWRw") then
return keoe
end

local ut = lgd.misc.util.indexedTotal(vrcf)
local rbq = vrcf.indexMilestones or {}

for vdv = 1, 30 do
if not rbq[vdv] and vdv * 5 <= ut then
table.insert(keoe, vdv)
end
end

return keoe
end

function lgd.misc.util.indexFrame()
local pkv = vklq:FindFirstChild(_d("LQQHUTBXEAsdMkAQ"))

return pkv and pkv:FindFirstChild(_d("JwsRUAF/Bg8IEA"))
end

function lgd.misc.util.clickButton(iw)
if not iw then
return false
end

if firesignal then
local ft = pcall(firesignal, iw.MouseButton1Click)

if ft then
return true
end
end

return pcall(function()
iw:Activate()
end)
end

function lgd.misc.util.closeIndex()
local ey = lgd.misc.util.indexFrame()

if not ey or not ey.Visible then
return false
end

pcall(function()
local ze = jw:FindFirstChild(_d("IwoRQBVcJw0XHEUNSg"))
local uqw = ze and ze:FindFirstChild(_d("IwAbQDRYGg8CEEc"))

if uqw then
require(uqw).close(ey)
end
end)

lgd.misc.util.clickButton(ey:FindFirstChild(_d("LQkaRhx7ARoRGls")))

pcall(function()
ey.Visible = false
end)

return true
end

function lgd.misc.util.claimIndex()
local lih = lgd.misc.util

if os.clock() < lih.indexAt then
return false
end

local shv = lih.currentProfile()

if not shv then
return false
end

local nmoj = lih.indexPending(shv)
local umsg = nmoj[1]

if not umsg then
return false
end

local otj = lih.indexedTotal(shv)
local ocb = lih.indexAsked

if type(ocb) == _d("GgQXWRw") and ocb.milestone == umsg and ocb.total == otj then
return false
end

lih.indexAsked = { milestone = umsg, total = otj }

pcall(function()
wpse.ClaimIndexReward:FireServer(umsg)
end)

lih.indexAt = os.clock() + 1.5

lih.profile = nil
lih.profileAt = 0

task.delay(0.4, lih.closeIndex)

return true
end

function lgd.misc.util.achPending()
local zv = {}
local mnk = lgd.misc.util.ach

if type(mnk) ~= _d("GgQXWRw") then
return zv
end

for ywp, yaim in ipairs(mnk.chains or {}) do
for gib, phuc in ipairs(yaim.levels or {}) do
if phuc.reached and not phuc.claimed then
table.insert(zv, { chain = tostring(yaim.id), index = phuc.index, name = tostring(phuc.name or phuc.index) })
end
end
end

return zv
end

function lgd.misc.util.claimAchievement()
local zpil = lgd.misc.util

if os.clock() < zpil.achAt then
return false
end

if type(zpil.ach) ~= _d("GgQXWRw") then
if os.clock() - zpil.achAskedAt > 4 and wpse.RequestAchievements then
zpil.achAskedAt = os.clock()

pcall(function()
wpse.RequestAchievements:FireServer()
end)
end

return false
end

for fjz, lnna in ipairs(zpil.achPending()) do
pcall(function()
wpse.ClaimAchievement:FireServer(lnna.chain, lnna.index)
end)

zpil.achAt = os.clock() + 1

task.delay(1, function()
if wpse.RequestAchievements then
pcall(function()
wpse.RequestAchievements:FireServer()
end)
end
end)

return true
end

return false
end

function lgd.misc.util.questRows()
local iqon = lgd.misc.util
local aots = {}

for nww, cl in ipairs({ { list = _d("CgQcWQA"), payload = iqon.quests }, { list = _d("GQAQXhVA"), payload = iqon.weekly } }) do
for ia, wjay in ipairs((type(cl.payload) == _d("GgQXWRw") and cl.payload.list) or {}) do
if type(wjay) == _d("GgQXWRw") then
table.insert(aots, { list = cl.list, index = ia, quest = wjay })
end
end
end

return aots
end

function lgd.misc.util.questPending()
local rlso = {}

for zgmm, hgob in ipairs(lgd.misc.util.questRows()) do
local glh = hgob.quest

if not glh.claimed and (tonumber(glh.progress) or 0) >= (tonumber(glh.target) or math.huge) then
table.insert(rlso, hgob)
end
end

return rlso
end

function lgd.misc.util.askQuests()
local lj = lgd.misc.util

if os.clock() - lj.questAskedAt > 4 and wpse.RequestQuests then
lj.questAskedAt = os.clock()

pcall(function()
wpse.RequestQuests:FireServer()
end)
end

if os.clock() - lj.weeklyAskedAt > 4 and wpse.RequestPeriodicQuests then
lj.weeklyAskedAt = os.clock()

pcall(function()
wpse.RequestPeriodicQuests:FireServer(_d("GQAQXhVA"))
end)
end
end

function lgd.misc.util.claimQuest()
local mmt = lgd.misc.util

if os.clock() < mmt.questAt then
return false
end

if type(mmt.quests) ~= _d("GgQXWRw") and type(mmt.weekly) ~= _d("GgQXWRw") then
mmt.askQuests()

return false
end

for baxc, ttfz in ipairs(mmt.questPending()) do
if ttfz.list == _d("GQAQXhVA") then
if wpse.ClaimPeriodicQuest then
pcall(function()
wpse.ClaimPeriodicQuest:FireServer(_d("GQAQXhVA"), ttfz.index)
end)
end
else
pcall(function()
wpse.ClaimQuest:FireServer(ttfz.index)
end)
end

mmt.questAt = os.clock() + 1.2

task.delay(1, function()
mmt.askQuests()
end)

return true
end

return false
end

function lgd.misc.util.packCatalog()
local kwo = lgd.misc.util

if kwo.packs then
return kwo.packs
end

local eki = {}
local kqg, xgmr = pcall(function()
return require(jw.ModuleScripts.PackData)
end)

if kqg and type(xgmr) == _d("GgQXWRw") and type(xgmr.Packs) == _d("GgQXWRw") then
for aww, orzv in ipairs(xgmr.Packs) do
if orzv.id then
table.insert(eki, { id = tostring(orzv.id), name = tostring(orzv.name or orzv.id) })
end
end
end

kwo.packs = eki

return eki
end

function lgd.misc.util.packUnlocked(ngir, xlq)
if type(ngir) ~= _d("GgQXWRw") then
return true
end

local cts, baa = pcall(function()
return require(jw.ModuleScripts.PackData)
end)
local riz, cpq = pcall(function()
return require(jw.ModuleScripts.PackSlotData)
end)

if not (cts and riz) then
return true
end

local gwwb = baa.ById and baa.ById[xlq]

if not gwwb then
return false
end

local hq, wxpb = pcall(cpq.isPackUnlocked, gwwb, ngir)

return (not hq) or wxpb == true
end

function lgd.misc.util.visit(btm)
local kg = workspace:FindFirstChild(_d("IDU2Rg"))
local psiv = kg and kg:FindFirstChild(btm)
local qtb = zhiw.Character
local nfvi = qtb and qtb:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))
local vi = psiv and (psiv:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ")) or psiv:FindFirstChildWhichIsA(_d("LAQGUClYBho"), true))

if not (vi and nfvi) then
return nil
end

local jyi = nfvi.CFrame

nfvi.CFrame = CFrame.new((vi.CFrame * CFrame.new(0, 0, -5)).Position)

return jyi
end

function lgd.misc.util.returnTo(hbr)
local ap = zhiw.Character
local oou = ap and ap:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if oou and hbr then
oou.CFrame = hbr
end
end

function lgd.misc.util.applyPacks(rrtm, zj)
local cjc = lgd.misc.util

if os.clock() < cjc.packAt then
return false, _d("OQQcQVlYVAMKGFAXTVo")
end

local stg = cjc.currentProfile()

if not stg then
return false, _d("PAAUURBXE04cGkALGQQcChNcFVxUQ0UBRwAZFQkEHFtZUBpOBFVGHFobAAFb")
end

if zj and (tonumber(stg.packSlots) or 1) < 2 then
return false, _d("PQkaQVkLVAAAEFEKGQAGAFVQAU0GD0UFVBpSVB0JGkFZXhUDAAVUCkpa")
end

if not (wpse.OpenPackShop and wpse.EquipPack) then
return false, _d("Og0QFQlYFwVFBl0WSVQHFlVbFk1UBwtVQRFQB04CFFgcGQILFwZcFlda")
end

cjc.packAt = os.clock() + 8

task.spawn(function()
local lvfn = cjc.visit(_d("IAoXWRxKBwcLEkY"))

if not lvfn then
return
end

pcall(function()
wpse.OpenPackShop:FireServer(_d("HgQWXiZUERwGHVQXTQ"))
end)

task.wait(1.2)

if rrtm then
pcall(function()
wpse.EquipPack:FireServer(rrtm, 1)
end)
end

if zj then
task.wait(0.8)

pcall(function()
wpse.EquipPack:FireServer(zj, 2)
end)
end

task.wait(0.8)
cjc.returnTo(lvfn)
cjc.forgetProfile()
end)

return true
end

function lgd.misc.util.accScore(xlgl)
local irf = xlgl.effects or {}

return (irf.luckBonus or 0) * 10
+ ((irf.luckMult or 1) - 1) * 200
+ ((irf.borderLuckMult or 1) - 1) * 200
- ((irf.rollCdMult or 1) - 1) * 30
end

function lgd.misc.util.accCatalog()
local nfy = lgd.misc.util

if nfy.accessories then
return nfy.accessories
end

local bdt = {}

for nvtc, gwb in ipairs({ _d("LwYWUApKGxwcMVQNWA"), _d("LwYWUApKGxwcMVQNWEY") }) do
local ges, koub = pcall(function()
return require(jw.ModuleScripts[gwb])
end)

if ges and type(koub) == _d("GgQXWRw") and type(koub.Accessories) == _d("GgQXWRw") then
for hm, lzgy in ipairs(koub.Accessories) do
if lzgy.id then
table.insert(bdt, {
id = tostring(lzgy.id),
name = tostring(lzgy.name or lzgy.id),
shop = nvtc,

shopName = nvtc == 1 and _d("LwYWUApKGxwcVWYRVgQ") or _d("IxwGQRxLHQEQBhU0WBo"),
raidable = lzgy.raidShopOnly == true,
hidden = lzgy.hidden == true,
requirements = lzgy.requirements or {},
score = lgd.misc.util.accScore(lzgy),
})
end
end
end
end

nfy.accessories = bdt

return bdt
end

function lgd.misc.util.accOwned(wzd)
local pheb = {}

for iqta, miqm in ipairs((wzd and wzd.accessories) or {}) do
pheb[tostring(miqm)] = true
end

return pheb
end

function lgd.misc.util.accMeets(hocu, pdvn)
for dcl, va in ipairs(pdvn.requirements) do
local mp = hocu.cards and hocu.cards[va.cardId]
local truh = type(mp) == _d("GgQXWRw") and (tonumber(mp[va.borderLevel]) or 0) or 0

if truh < (tonumber(va.amount) or 0) then
return false
end
end

return true
end

function lgd.misc.util.accPlan(sa)
local ymqm = lgd.misc.util
local sobd = ymqm.accOwned(sa)
local wmvg = {}

for bwe, cea in ipairs(ymqm.accCatalog()) do
if not sobd[cea.id] and not cea.raidable and not cea.hidden and ymqm.accMeets(sa, cea) then
local gd = wmvg[cea.shop]

if not gd or cea.score > gd.score then
wmvg[cea.shop] = cea
end
end
end

return wmvg
end

function lgd.misc.util.accPicks(gl)
local gue = lgd.misc.util
local pvb = gue.accOwned(gl)
local xsns, whin

for eioz, zbv in ipairs(gue.accCatalog()) do
if pvb[zbv.id] then
if not xsns or zbv.score > xsns.score then
xsns = zbv
end
elseif not zbv.raidable and not zbv.hidden and gue.accMeets(gl, zbv) then
if not whin or zbv.score > whin.score then
whin = zbv
end
end
end

return xsns, whin
end

function lgd.misc.util.equipBest()
local klwx = lgd.misc.util
local ehul = klwx.currentProfile()

if not ehul or not wpse.EquipAccessory then
return false
end

local mx = klwx.accPicks(ehul)

if not mx or ehul.equippedAccessory == mx.id then
return mx ~= nil
end

pcall(function()
wpse.EquipAccessory:FireServer(mx.id)
end)

task.delay(1.5, function()
klwx.forgetProfile()
end)

return true
end

function lgd.misc.util.buyBest()
local ngnj = lgd.misc.util

if os.clock() < ngnj.accAt then
return false, _d("OQQcQVlYVAMKGFAXTVo")
end

if kpy.busy(1) or kpy.busy(2) then
ngnj.accNote = _d("JwtVVFlbFRoRGVBZFFQPRQZdFklUGhccRVlOGxsJERUcVxBODAE")
return false, _d("JwtVVFlbFRoRGVBZFFQPRQZdFklUGhccRVlOGxsJERUcVxBODAEb")
end

local xjjp = ngnj.currentProfile()

if not xjjp then
ngnj.accNote = _d("PAAUURBXE04cGkALGQQcChNcFVxUQ0UCXBVVVBoXDBUYXhUHC1VcFxkVThYQVhZXEA")
return false, _d("PAAUURBXE04cGkALGQQcChNcFVxUQ0UBRwAZFQkEHFtZUBpOBFVGHFobAAFb")
end

local dmh = ngnj.accPlan(xjjp)
local dsv = {}

for ky = 1, 2 do
if dmh[ky] then
table.insert(dsv, dmh[ky].name)
end
end

if #dsv == 0 then
ngnj.accNote = _d("IAoBXRBXE04LEEJZTBoCChZeHF1UFwABFVQZAAYAVVYYSxAdRRNaCxkdGkUURxwZGgERVVwXGQAGAFVWFlUYCwYBXBZX")
return false, _d("IAoBXRBXE04LEEJZWhUARRdQWUwaAgoWXhxdVBcAARVUGQAGAFVWGEsQHUUTWgsZHRpFFEccGRoBEVVcFxkABgBVVhZVGAsGAVwWV1o")
end

ngnj.accAt = os.clock() + 12
ngnj.accNote = _d("OQQZXhBXE04RGhUNURFOBhpAF00RHEUTWgsZ") .. table.concat(dsv, _d("TgQbUVk"))

task.spawn(function()
for bli = 1, 2 do
local sxwc = dmh[bli]

if sxwc then
local nfb = bli == 1 and _d("HhAHRgxQAAsBEQ") or _d("GQQTUxxVGQ8LEFQNSgMPAxNQFUo")
local nrtn = bli == 1 and wpse.OpenAccessoryShop or wpse.OpenAccessoryShop2
local fyaw = bli == 1 and wpse.BuyAccessory or wpse.BuyAccessory2
local zb = nfb and ngnj.visit(nfb) or nil

if not zb then
local acb = workspace:FindFirstChild(_d("IDU2Rg"))
local pou = acb and acb:FindFirstChild(nfb)

if pou and os.clock() - (ngnj.worldAskedAt or 0) > 25 then

ngnj.worldAskedAt = os.clock()
ngnj.accNote = _d("LQ0URxhaAAsXVVsWTVQcABRRABlZThEHTBBXE04EElQQV1QdDRpHDVUN")
elseif not pou and os.clock() - (ngnj.worldAskedAt or 0) > 25 then

ngnj.worldAskedAt = os.clock()
ngnj.accNote = _d("IApVVhZMGhoABxUQV1QaDRxGWU4bHAkRFVQZAA8OHFseGQAGAFVZFlsWF0UBUBVcBAEXAQ")

pcall(function()
wpse.TeleportToWorld:FireServer(_d("AgoXVwA"))
end)

task.wait(4.5)
zb = ngnj.visit(nfb)
end
end

if zb and nrtn and fyaw then

task.wait(0.9)

pcall(function()
nrtn:FireServer()
end)

task.wait(1.2)

pcall(function()
fyaw:FireServer(sxwc.id)
end)

task.wait(0.9)
ngnj.returnTo(zb)
ngnj.accNote = _d("LAoAUhFNVA") .. tostring(sxwc.name)
elseif not zb then
ngnj.accNote = _d("LQoAWR0ZGgERVUccWBcGRQFdHBkXARAbQRxLVENFAUcAGRUJBBxbWVAaTgRVWBZUEQAR")
end

task.wait(0.6)
end
end

ngnj.forgetProfile()

for yrr = 1, 8 do
if type(ngnj.profile) == _d("GgQXWRw") then
break
end

ngnj.askProfile()
task.wait(0.7)
end

ngnj.equipBest()
end)

return true, table.concat(dsv, _d("QkU"))
end

function lgd.misc.util.indexText()
local gkz = lgd.misc.util

if type(gkz.profile) ~= _d("GgQXWRw") then
return _d("PAAUURBXE04cGkALGRcPFxEVEFcQCx1bG1c")
end

local kph = gkz.indexPending(gkz.profile)
local nju = 0

for vrys, ekyc in pairs(gkz.profile.indexMilestones or {}) do
if ekyc then
nju = nju + 1
end
end

local mkb = tostring(gkz.indexedTotal(gkz.profile)) .. _d("TgYURx1KVAcLEVABXBBCRQ") .. tostring(nju) .. _d("TgoTFUoJVBwAAlQLXQdOBhlUEFQRCg")

if #kph > 0 then
mkb = mkb .. _d("ZDcQVB1ATk4") .. table.concat(kph, _d("QkU"))
end

return mkb
end

function lgd.misc.util.achText()
local jyrr = lgd.misc.util

if type(jyrr.ach) ~= _d("GgQXWRw") then
return _d("PAAUURBXE04EFl0QXAILCBBbDUpaQEs")
end

local afid = jyrr.achPending()
local dq = 0

for yln, bcbm in ipairs(jyrr.ach.chains or {}) do
for efu in ipairs(bcbm.levels or {}) do
dq = dq + 1
end
end

return tostring(#afid) .. _d("TgoTFQ") .. tostring(dq) .. _d("TgQWXRBcAgsIEFsNSlQcABRRAA")
end

function lgd.misc.util.questText()
local qwca = lgd.misc.util

if type(qwca.quests) ~= _d("GgQXWRw") and type(qwca.weekly) ~= _d("GgQXWRw") then
return _d("PAAUURBXE04UAFAKTQdAS1s")
end

local spi, sob = 0, 0

for xbe, muub in ipairs(qwca.questPending()) do
if muub.list == _d("GQAQXhVA") then
sob = sob + 1
else
spi = spi + 1
end
end

local gls = type(qwca.quests) == _d("GgQXWRw") and #(qwca.quests.list or {}) or 0
local opu = type(qwca.weekly) == _d("GgQXWRw") and #(qwca.weekly.list or {}) or 0

return tostring(spi) .. _d("TgoTFQ") .. tostring(gls) .. _d("TgEUXBVAVBwAFFEAMw")
.. tostring(sob) .. _d("TgoTFQ") .. tostring(opu) .. _d("ThIQUBJVDU4XEFQdQA")
end

function lgd.misc.util.packText()
local rilg = lgd.misc.util
local hhbt = rilg.profile

if type(hhbt) ~= _d("GgQXWRw") then
return _d("PAAUURBXE04cGkALGQQPBh5GVxda")
end

local function hyi(btb)
for tr, cd in ipairs(rilg.packCatalog()) do
if cd.id == btb then
return cd.name
end
end

return tostring(btb)
end

local bbi = _d("PQkaQVkITk4") .. hyi(hhbt.equippedPack)

if (tonumber(hhbt.packSlots) or 1) >= 2 then
bbi = bbi .. _d("ZDYZWg0ZRlRF") .. hyi(hhbt.equippedPack2)
else
bbi = bbi .. _d("ZDYZWg0ZRlRFElQUXAQPFgYVF1YATgoCWxxd")
end

return bbi
end

function lgd.misc.util.accText()
local uem = lgd.misc.util
local ezye = uem.profile

if type(ezye) ~= _d("GgQXWRw") then
return _d("PAAUURBXE04cGkALGRUNBhBGClYGBwAGG1cX")
end

local btx = uem.accPicks(ezye)
local aw = uem.accPlan(ezye)
local qc = _d("AAobUA")

for ce, oc in ipairs(uem.accCatalog()) do
if oc.id == ezye.equippedAccessory then
qc = oc.name .. _d("Tk0") .. oc.shopName .. _d("Rw")
end
end

local vyz = _d("KxQAXAlJEQpfVQ") .. qc

if btx then
vyz = vyz .. _d("ZCcQRg0ZGxkLEFFDGQ") .. btx.name
end

vyz = vyz .. _d("ZCQWVhxKBwEXDBUqURseX1U") .. (aw[1] and aw[1].name or _d("AAoBXRBXE04LEEI"))
vyz = vyz .. _d("ZCgMRg1cBgcKAEZZdBUAX1U") .. (aw[2] and aw[2].name or _d("AAoBXRBXE04LEEI"))

if uem.accNote then
vyz = vyz .. _d("ZCkURg0ZABwMBQ9Z") .. uem.accNote
end

return vyz
end

lgd.misc.util.hook()
lgd.misc.util.askProfile()

lgd.misc.indexSection = lgd.misc.tab:Section({
Side = _d("IgATQQ"),
})

lgd.misc.indexSection:Header({
Name = _d("LQQHUVlwGgoADRWJpufp"),
})

lgd.misc.indexToggle = lgd.misc.indexSection:Toggle({
Name = _d("LxABWllaGA8MGA"),
Default = false,
Callback = function(ps)
lgd.misc.util.indexOn = ps
lgd.misc.util.indexAt = 0

lgd.misc.util.indexAsked = nil
end,
}, _d("DxABWiZaGA8MGGpL"))

lgd.misc.indexSection:Button({
Name = _d("LQkUXBQZGgES"),
Callback = function()
local jtw = lgd.misc.util

jtw.indexAt = 0
jtw.indexAsked = nil

if not jtw.claimIndex() then
hlh:Notify({
Title = _d("LQQHUVlwGgoADQ"),
Description = _d("IApVWBBVER0RGlscGR0dRQdQGF0NThEaFRpVFQcIWw"),
Lifetime = 5,
})
end
end,
})

lgd.misc.claimSection = lgd.misc.tab:Section({
Side = _d("IgATQQ"),
})

lgd.misc.claimSection:Header({
Name = _d("LwYdXBxPEQMAG0EKGVJONABQCk0HTpXquv8"),
})

lgd.misc.achToggle = lgd.misc.claimSection:Toggle({
Name = _d("LxABWllaGA8MGBUYWhwHAANQFFwaGhY"),
Default = false,
Callback = function(xke)
lgd.misc.util.achOn = xke
lgd.misc.util.achAt = 0

if xke and wpse.RequestAchievements then
pcall(function()
wpse.RequestAchievements:FireServer()
end)
end
end,
}, _d("DxABWiZaGA8MGGoYWhwHAANQFFwaGhY"))

lgd.misc.questToggle = lgd.misc.claimSection:Toggle({
Name = _d("LxABWllaGA8MGBUITBEdEQY"),
Default = false,
Callback = function(ghi)
lgd.misc.util.questOn = ghi
lgd.misc.util.questAt = 0
lgd.misc.util.questAskedAt = 0
lgd.misc.util.weeklyAskedAt = 0

if ghi then
lgd.misc.util.askQuests()
end
end,
}, _d("DxABWiZaGA8MGGoITBEdEQY"))

lgd.misc.claimSection:Button({
Name = _d("LQkUXBQZFQIJVVsWTg"),
Callback = function()
local rxv = lgd.misc.util

rxv.achAt = 0
rxv.questAt = 0

local tnrc = rxv.claimAchievement()
local vnw = rxv.claimQuest()

if not (tnrc or vnw) then
hlh:Notify({
Title = _d("LwYdXBxPEQMAG0EKGVJONABQCk0H"),
Description = _d("IAoBXRBXE04MBhULXBUKHFVBFhkXAgQcWFc"),
Lifetime = 5,
})
end
end,
})

lgd.misc.packSection = lgd.misc.tab:Section({
Side = _d("IgATQQ"),
})

lgd.misc.packSection:Header({
Name = _d("LQQHUVlpFQ0OBhWJpvra"),
})

lgd.misc.packSection:Paragraph({
Header = _d("OhIaFQpVGxoW"),
Body = _d("PgwWXgoZFR4VGUxZVhoCHFVCEVwaThwaQFlJBgsWBhU4SQQCHFVFGFofHUlVVxxaFRsWEBUNURFOFgJcDVocThIUWRJKVBoKVUERXFQDAAdWEVgaGks"),
})

local qtu = {}
local cb = {}

for hke, gvyo in ipairs(lgd.misc.util.packCatalog()) do
table.insert(qtu, gvyo.name)
cb[gvyo.name] = gvyo.id
end

lgd.misc.packSlotOne = nil
lgd.misc.packSlotTwo = nil

lgd.misc.packDropdownOne = lgd.misc.packSection:Dropdown({
Name = _d("PQkaQVkI"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = qtu,
Callback = function(fxx)
local gbzk = type(fxx) == _d("GgQXWRw") and fxx[1] or fxx

lgd.misc.packSlotOne = cb[tostring(gbzk)]
end,
}, _d("HQkaQSYI"))

lgd.misc.packDropdownTwo = lgd.misc.packSection:Dropdown({
Name = _d("PQkaQVkL"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = qtu,
Callback = function(rdc)
local uk = type(rdc) == _d("GgQXWRw") and rdc[1] or rdc

lgd.misc.packSlotTwo = cb[tostring(uk)]
end,
}, _d("HQkaQSYL"))

lgd.misc.packSection:Button({
Name = _d("LxUFWQAZBA8GHkY"),
Callback = function()
local xuro = lgd.misc.util
local jfl = lgd.misc.packSlotOne
local vwaf = lgd.misc.packSlotTwo

if not jfl then
hlh:Notify({
Title = _d("LQQHUVlpFQ0OBg"),
Description = _d("PgwWXllYVB4EFl5ZXxscRQZZFk1UX0UTXAtKAEA"),
Lifetime = 5,
})

return
end

local iwpr, vori = xuro.applyPacks(jfl, vwaf)

if not iwpr then
hlh:Dialog({
Title = _d("LQQHUVlpFQ0OBg"),
Description = vori,
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})
end
end,
})

lgd.misc.cards = {
rarityLabels = { _d("LwkZ"), _d("IAoHWBhV"), _d("KQoZUQ"), _d("PAQcWxtWAw"), _d("OwscQxxLBw8J") },
borderOf = { Normal = 1, Gold = 2, Rainbow = 3, Universal = 4 },
mergeOn = false,
deconOn = false,
mergeWanted = {},
deconWanted = {},
mergeAt = 0,
deconAt = 0,
mergeDone = _d("IAoBXRBXE04WEFsNGQ0LEQ"),
deconDone = _d("IAoBXRBXE04WEFsNGQ0LEQ"),

inFlight = false,

interval = 3600,
manualGap = 20,
manualAt = 0,

protectedPrefixes = { weather = true, boss = true, raid = true, wb = true, fish = true, hw = true, event = true },

deconExceptions = { weather_sayaka = true, weather_caesar = true },

deconConfirmed = false,
burnAskedAt = 0,
}

function lgd.misc.cards.isProtected(qdj, oig)
local jzh = lgd.misc.cards
local giz = tostring(qdj or _d(""))
local vfq = giz:match(_d("ME0uVFRDRENcKB5QZg"))

if not (vfq and jzh.protectedPrefixes[vfq]) then
return false
end

return not (jzh.deconExceptions[giz] and oig == 2)
end

function lgd.misc.cards.burnAllowed(lii)
local pwjj = lgd.misc.cards
local tuo = pwjj.wantedFor(_d("CgAWWhduFQAREFE"))

if not (tuo == nil or tuo[3] or tuo[4]) then
pwjj.deconConfirmed = false

return true
end

if pwjj.deconConfirmed then
return true
end

if lii then
return false
end

if os.clock() < (pwjj.burnAskedAt or 0) then
return false
end

pwjj.burnAskedAt = os.clock() + 20

hlh:Dialog({
Title = _d("LBAHW1lrFQcLF1oOGRscRSBbEE8RHBYUWVlaFRwBBgo"),
Description = _d("LxABWlldEQ0KG0YNSwENEVVGHFcQHUUQQxxLDU4GGkUAGR0ARQFdHBkZDxEWXRBXE04XGkIKGRUAAVVWGFcaARFVVxwZAQABGlscF1Q")
.. _d("OQAUQRFcBkJFF1oKSlhOFxRcHRkWARYGGVlOGxwJERUbVgcdSVVTEEocBwsSGVlxFQIJGkIcXBpOBBtRWVwCCwsBFRpYBgoWVVQLXFQGABlRWVsVDQ5VUBBNHAsXVUIYQFo"),
Buttons = {
{
Name = _d("LBAHW1lNHAsI"),
Callback = function()
pwjj.deconConfirmed = true
pwjj.deconAt = 0
pwjj.manualAt = 0

pcall(function()
lgd.misc.deconToggle:UpdateState(true)
end)
end,
},
{
Name = _d("LQQbVhxV"),
Callback = function()
pcall(function()
lgd.misc.deconToggle:UpdateState(false)
end)
end,
},
},
})

return false
end

function lgd.misc.cards.wantedFor(tc)
local ckfq = lgd.misc.cards[tc] or {}

if next(ckfq) == nil or ckfq[0] then
return nil
end

return ckfq
end

function lgd.misc.cards.npcFor(ed)
local umtc = workspace:FindFirstChild(_d("IDU2Rg"))

if not umtc then
return nil
end

local hcl = ed and _d("CBAGUCZXBA0") or _d("CgAWWhdKABwQFkEmVwQN")

for mcjv, tppp in ipairs(umtc:GetChildren()) do
if tppp:GetAttribute(_d("IDU2fB0")) == hcl then
return tppp
end
end

local wcf = ed and { _d("IQoFXRVA"), _d("AQoFWQBc") } or { _d("PQ0UQBVY"), _d("JgQDUC1OGyoEEUY") }

for der, ezus in ipairs(umtc:GetChildren()) do
for er, otg in ipairs(wcf) do
if ezus.Name == otg then
return ezus
end
end
end

local tdo = ed and { _d("DQQHUVlUERwCHFse"), _d("AQoFXRVA") } or { _d("CgAWWhdKABwQFkEQVho"), _d("HQ0UQBVY") }

for urdx, iij in ipairs(umtc:GetChildren()) do
for qvwk, wxfe in ipairs(iij:GetDescendants()) do
if wxfe:IsA(_d("OgANQTVYFgsJ")) and wxfe.Text ~= _d("") then
local zqe = wxfe.Text:lower()

for ejdq, vtpe in ipairs(tdo) do
if zqe:find(vtpe, 1, true) then
return iij
end
end

break
end
end
end

return nil
end

function lgd.misc.cards.rarityText(mmeo)
local offv = lgd.misc.cards.wantedFor(mmeo)

if not offv then
return _d("LwkZ")
end

local ua = {}

for udg, ztnz in pairs(lgd.misc.cards.borderOf) do
if offv[ztnz] then
table.insert(ua, udg)
end
end

if #ua == 0 then
return _d("LwkZ")
end

table.sort(ua)

return table.concat(ua, _d("QkU"))
end

function lgd.misc.cards.run(khxy, nfyl, vixb)
local tph = lgd.misc.cards
local ahk = lgd.misc.util
local tumt = khxy and _d("AwAHUhx4AA") or _d("CgAWWhd4AA")

if vixb then
if os.clock() < tph[tumt] then
return false, _d("IAoBFR1MEU4cEEFX")
end
elseif os.clock() < tph.manualAt then
return false, _d("OQQcQVlYVAMKGFAXTVo")
end

if tph.inFlight then
return false, _d("LwsaQRFcBk4GFEcdGQAcDAUVEEpUDwkHUBhdDU4XAFsXUBoJSw")
end

local rlu = kpy.busy(1) and 1 or (kpy.busy(2) and 2 or nil)
local pn = os.clock() - (de.floorAt or 0) < 90
local ewq = rlu ~= nil and kpy.towerSlot() == rlu and pn

if rlu and not ewq then
return false, _d("JwtVVFlbFRoRGVBZFFQaDRAVDUsdHkUCWgxVEE4AG1FZUABA")
end

if zo.battlePending and os.time() < (zo.battlePendingUntil or 0) then
return false, _d("L0UXVA1NGAtFHEZZSgAPFwFcF15UQ0UBXRwZABwMBRUOVgECAVVWGFcXCwlVXA0X")
end

if not khxy and not tph.burnAllowed() then
return false, _d("LQobUxBLGU43FFwXWxsZSiBbEE8RHBYUWVlfHRwWARs")
end

local nldu = tph.npcFor(khxy)

if not nldu then
return false, khxy
and _d("IQoFXRVAVAcWVVsWTVQHC1VBEVAHTggURVkUVBoXFEMcVVQaClVdEFRUDwsRFQlLER0WVVwNGRUJBBxbVw")
or _d("Og0QFR1cFwELBkELTBcaRTtlOhkdHUUbWg0ZHQBFAV0QSlQDBAUVVBkAHAQDUBUZAAFFHEFZWBoKRQVHHEoHTgwBFRheFQcLWw")
end

local zz = khxy and wpse.OpenFuseDialog or wpse.OpenDeconstructDialog
local sgj = khxy and wpse.FuseCards or wpse.DeconstructCards

if not (zz and sgj) then
return false, _d("Og0UQVlQB04LGkFZUBpOER1cChkTDwgQFQ9cBh0MGltX")
end

local gvak = khxy and _d("AwAHUhxuFQAREFE") or _d("CgAWWhduFQAREFE")
local owh = tph.wantedFor(gvak)

tph.manualAt = os.clock() + tph.manualGap

if vixb then
tph[tumt] = os.clock() + tph.interval
end

tph.inFlight = true

task.spawn(function()

local vzob = nil

local function yhqe(gpvb, ty)
if khxy then
tph.mergeDone = gpvb
else
tph.deconDone = gpvb
end

if ty and vixb then
tph[tumt] = os.clock() + 120
end

tph.inFlight = false
end

local vhsf = ahk.visit(nldu.Name)

if not vhsf then
yhqe(_d("LQ0URxhaAAsXVVwKGRoBEVVHHFgQF0VYFQtcABwcHFseGR0ARQFCFhkZBwsAQRxKWg"), true)

return
end

task.wait(0.9)

local audp = nil
local jsmj = zz.OnClientEvent:Connect(function(vk)
if type(vk) == _d("GgQXWRw") then
audp = vk
end
end)

for sqm = 1, 3 do
pcall(function()
zz:FireServer()
end)

for vrfu = 1, 20 do
if audp then
break
end

task.wait(0.3)
end

if audp then
break
end

task.wait(1.5)
end

jsmj:Disconnect()
ahk.returnTo(vhsf)

if type(audp) ~= _d("GgQXWRw") then
yhqe(_d("Og0QFR1QFQIKEhUdUBBOCxpBWVgaHRIQR1kUVBwAAUcAUBoJRRxbWU0DAUUYXBdMAAsWWw"), true)

return
end

local ufbd = {}

for cyj, iyaj in ipairs(audp) do
local xzj = tonumber(iyaj.borderLevel)
local bmun = iyaj.cardId or iyaj.id

if xzj and (not owh or owh[xzj])
and (khxy or not lgd.misc.cards.isProtected(bmun, xzj)) then
table.insert(ufbd, iyaj)
end
end

if #ufbd == 0 then

lgd.misc.cards.closeFrame(khxy)
yhqe(_d("IAoBXRBXE04RGhUKXBoKRRNaCxk") .. lgd.misc.cards.rarityText(gvak) .. _d("QA"))

return
end

if nfyl then

local ztra = {}

for gfsa, ylq in ipairs(ufbd) do
if (tonumber(ylq.count) or 0) >= nfyl then
table.insert(ztra, ylq)
end
end

if #ztra == 0 then
lgd.misc.cards.closeFrame(khxy)
yhqe(_d("IApV") .. lgd.misc.cards.rarityText(gvak) .. _d("ThcaQllRFR1F") .. nfyl .. _d("TgYaRRBcB04cEEFX"))

return
end

ufbd = ztra

table.sort(ufbd, function(hnav, ujhd)
return (tonumber(hnav.count) or 0) < (tonumber(ujhd.count) or 0)
end)

local vwb, sp = {}, 0

for rft, fukc in ipairs(ufbd) do
local azx = tonumber(fukc.count) or 0

if #vwb > 0 and sp + azx > nfyl then
break
end

table.insert(vwb, fukc)
sp = sp + azx
end

ufbd = vwb
vzob = sp
end

local zwxg = 0

lgd.misc.cards.closeFrame(khxy)

if khxy then
if not owh then

pcall(function()
sgj:FireServer(_d("DwkZ"), nil)
end)

zwxg = #ufbd
else
local bfe = {}

for hcxu, jnon in ipairs(ufbd) do
table.insert(bfe, { jnon.cardId, tonumber(jnon.borderLevel) })
end

pcall(function()
sgj:FireServer(_d("HQAZUBpNEQo6FFkV"), bfe)
end)

zwxg = #bfe
end
else
local usbp = {}

for owo, gkeg in ipairs(ufbd) do
if #usbp >= 25 then
break
end

table.insert(usbp, { gkeg.cardId, tonumber(gkeg.borderLevel), _d("DwkZ") })
end

pcall(function()
sgj:FireServer(usbp)
end)

zwxg = #usbp
end

yhqe(_d("PQAbQVk") .. tostring(zwxg) .. _d("ThcaQg") .. (zwxg == 1 and _d("") or _d("HQ"))
.. _d("Tk0") .. lgd.misc.cards.rarityText(gvak) .. _d("Rw")
.. (vzob and (_d("QkU") .. tostring(vzob) .. _d("TgYURx1K")) or _d("")))
end)

return true
end

function lgd.misc.cards.closeFrame(zlxw)
pcall(function()
local ijx = zlxw and { _d("KBAGUD5MHQ"), _d("KBAGUD9LFQMA") } or { _d("KgAWWhdKABwQFkE+TB0"), _d("KgAWWhdKABwQFkE/SxUDAA") }
local dkva = require(jw.ModuleScripts.MenuManager)
local wuse = vklq:FindFirstChild(ijx[1])
local yuj = wuse and wuse:FindFirstChild(ijx[2])

if yuj then
dkva.close(yuj)
end

if not zlxw then
local zjj = wuse and wuse:FindFirstChild(_d("KgAWWhdKABwQFkErWAALFjNHGFQR"))

if zjj then
dkva.close(zjj)
else
zjj = vklq:FindFirstChild(_d("KgAWWhdKABwQFkErWAALFjNHGFQR"))

if zjj then
dkva.close(zjj)
end
end
end
end)
end

function lgd.misc.cards.refresh(sem)

local kos = sem and lgd.misc.mergeParagraph or lgd.misc.deconParagraph

if not kos then
return
end

pcall(function()
kos:UpdateBody(sem
and lgd.misc.cards.mergeText()
or lgd.misc.cards.deconText())
end)
end

function lgd.misc.cards.mergeText()
local yyy = lgd.misc.cards

return _d("PAQHXA1QER1fVQ") .. yyy.rarityText(_d("AwAHUhxuFQAREFE")) .. _d("ZA") .. yyy.mergeDone
end

function lgd.misc.cards.deconText()
local dti = lgd.misc.cards

return _d("PAQHXA1QER1fVQ") .. dti.rarityText(_d("CgAWWhduFQAREFE")) .. _d("ZA") .. dti.deconDone
.. _d("ZDIQVA1RERxJVVcWSgdCRQdUEF1YThIaRxVdVAwKBkZVGRIHFh1cF15YTi0UWRVWAwsAGxUYVxBOAANQF01UDQQHUQoZFRwAVVscTxEcRQZQF01a")
end

lgd.misc.skill = {
on = false,
at = 0,
mainWanted = {},
raidWanted = {},

mainOrder = {},
raidOrder = {},
last = _d("IAoBXRBXE04HGkAeUQBOHBBB"),
shown = _d(""),
}

function lgd.misc.skill.branchMap(bu)
local iqg = {}

for arii, hbz in ipairs(kr.Trees[bu].branches) do
iqg[hbz.name] = hbz
end

return iqg
end

function lgd.misc.skill.branchLabels(sjn)
local ejxi = {}

for zfcf, mui in ipairs(kr.Trees[sjn].branches) do
table.insert(ejxi, mui.name)
end

return ejxi
end

function lgd.misc.skill.wantedFrom(ced, qjtg)
local kql = {}
local rug = lgd.misc.skill.branchMap(qjtg)

if type(ced) == _d("GgQXWRw") then
for eba, qk in pairs(ced) do
if qk and rug[tostring(eba)] then
kql[rug[tostring(eba)].id] = true
end
end
end

return kql
end

function lgd.misc.skill.ordered(agx, rkaq)
local juak = {}
local cahf = {}

for mggd, gfj in ipairs(rkaq or {}) do
if agx[gfj] then
table.insert(juak, gfj)
cahf[gfj] = true
end
end

for aicn in pairs(agx) do
if not cahf[aicn] then
table.insert(juak, aicn)
end
end

return juak
end

function lgd.misc.skill.branchById(jg)
local dofy = {}

for uitj, sz in ipairs(kr.Trees[jg].branches) do
dofy[sz.id] = sz
end

return dofy
end

function lgd.misc.skill.upgrade()
local bk = lgd.misc.skill
local cyqw = lgd.misc.util
local fblo = cyqw.currentProfile and cyqw.currentProfile()

if type(fblo) ~= _d("GgQXWRw") then
return false, _d("IApVRQtWEgcJEBUAXABA")
end

local xuuz = fblo.skillTrees or {}
local mgod = { [1] = bk.mainOrder, [2] = bk.raidOrder }
local ovdz = nil

for oib, kuf in ipairs(kr.Trees) do
local obh = xuuz[kuf.id]
local wan = tonumber(fblo[kuf.pointsField or _d("HQ4cWRVpGwcLAUY")]) or 0
local bop = lgd.misc.skill.branchById(oib)

if type(obh) == _d("GgQXWRw") and wan > 0 then
for smm, olx in ipairs(mgod[oib] or {}) do
local qx = bop[olx]

if qx and not ovdz then
local qtv = kr.getBranchLevel(xuuz, kuf.id, qx.id) or 0
local gc = qtv + 1

if gc <= qx.levels then
local bvb = qx.id .. gc
local kxac = 1

if type(qx.costs) == _d("GgQXWRw") and tonumber(qx.costs[gc]) then
kxac = tonumber(qx.costs[gc])
elseif tonumber(qx.cost) then
kxac = tonumber(qx.cost)
end

if kxac <= wan and kr.isAvailable(xuuz, kuf.id, bvb) then
ovdz = { tree = kuf.id, node = bvb, name = qx.name, level = gc }
end
end
end
end
end
end

if not ovdz then
return false, _d("IAoBXRBXE04RGhUbTA1OHBBBVw")
end

wpse.BuySkillNode:FireServer(ovdz.tree, ovdz.node)

if cyqw.askProfile then
pcall(cyqw.askProfile)
end

bk.last = _d("LAoAUhFNVA") .. ovdz.name .. _d("Tg") .. tostring(ovdz.level)

return true
end

function lgd.misc.skill.text()
local srgh = lgd.misc.skill
local dkt = lgd.misc.util
local mik = dkt.currentProfile and dkt.currentProfile()

if type(mik) ~= _d("GgQXWRw") then
return _d("PgocWw1KTk5afw") .. srgh.last
end

local ayas = mik.skillTrees or {}
local cip = {}

local rk = { [1] = srgh.mainOrder, [2] = srgh.raidOrder }

for ors, isx in ipairs(kr.Trees) do
local lbd = tonumber(mik[isx.pointsField or _d("HQ4cWRVpGwcLAUY")]) or 0
local odlq = {}
local gvnd = lgd.misc.skill.branchById(ors)

for nxh, mkp in ipairs(rk[ors] or {}) do
local shhw = gvnd[mkp]

if shhw then
local lk = kr.getBranchLevel(ayas, isx.id, shhw.id) or 0
table.insert(odlq, shhw.name .. _d("Tg") .. tostring(lk) .. _d("QQ") .. tostring(shhw.levels))
end
end

cip[#cip + 1] = isx.name .. _d("VEU") .. tostring(lbd) .. _d("ThUBRg")
.. (#odlq > 0 and (_d("TkhV") .. table.concat(odlq, _d("QkU"))) or _d("TkhVWxZNHAcLEhUJUBcFABE"))
end

cip[#cip + 1] = srgh.last

return table.concat(cip, _d("ZA"))
end

lgd.misc.mergeSection = lgd.misc.tab:Section({
Side = _d("IgATQQ"),
})

lgd.misc.mergeSection:Header({
Name = _d("IwAHUhwZhPHC2Q"),
})

lgd.misc.mergeToggle = lgd.misc.mergeSection:Toggle({
Name = _d("LxABWllUERwCEA"),
Default = false,
Callback = function(qpaj)
local jzr = lgd.misc.cards

jzr.mergeOn = qpaj

jzr.mergeAt = (qpaj and bqiq.loading) and (os.clock() + jzr.interval) or 0
end,
}, _d("DxABWiZUERwCEA"))

lgd.misc.mergeDropdown = lgd.misc.mergeSection:Dropdown({
Name = _d("PAQHXA1QER0"),
Search = false,
Multi = true,
Required = false,
Default = { _d("LwkZ") },
Options = lgd.misc.cards.rarityLabels,
Callback = function(hdp)
local ozcx = {}

if type(hdp) == _d("GgQXWRw") then
for ton, dl in pairs(hdp) do
if dl then
if ton == _d("LwkZ") then
ozcx[0] = true
else
ozcx[lgd.misc.cards.borderOf[tostring(ton)]] = true
end
end
end
end

lgd.misc.cards.mergeWanted = ozcx
lgd.misc.cards.refresh(true)
end,
}, _d("HAQHXA1QER0"))

lgd.misc.mergeSection:Button({
Name = _d("IwAHUhwZGgES"),
Callback = function()
local veiq, ysef = lgd.misc.cards.run(true)

if not veiq then
hlh:Notify({
Title = _d("IwAHUhw"),
Description = ysef,
Lifetime = 6,
})
end
end,
})

lgd.misc.mergeSection:Button({
Name = _d("IwAHUhwZTV4"),
Callback = function()

local rmyn, wu = lgd.misc.cards.run(true, 90)

if not rmyn then
hlh:Notify({
Title = _d("IwAHUhwZTV4"),
Description = wu,
Lifetime = 6,
})
end
end,
})

lgd.misc.mergeParagraph = lgd.misc.mergeSection:Paragraph({
Header = _d("PREUQQxK"),
Body = lgd.misc.cards.mergeText(),
})

lgd.misc.accSection = lgd.misc.tab:Section({
Side = _d("PAwSXQ0"),
})

lgd.misc.accSection:Header({
Name = _d("LwYWUApKGxwMEEZZyev86w"),
})

lgd.misc.accToggle = lgd.misc.accSection:Toggle({
Name = _d("LxABWllbER0RVVQaWhEdFhpHAA"),
Default = false,
Callback = function(egbq)
lgd.misc.util.accOn = egbq
lgd.misc.util.accAt = 0
end,
}, _d("DxABWiZbER0RKlQaWhEdFhpHAA"))

lgd.misc.accBuyToggle = lgd.misc.accSection:Toggle({
Name = _d("LxABWllbARdFF1AKTQ"),
Default = false,
Callback = function(zi)
lgd.misc.util.accBuyOn = zi
lgd.misc.util.accBuyAt = 0
lgd.misc.util.accAt = 0
end,
}, _d("DxABWiZbARc6F1AKTQ"))

lgd.misc.accSection:Button({
Name = _d("LBAMFRtcBxo"),
Callback = function()
local qnp, edqz = lgd.misc.util.buyBest()

if not qnp then
hlh:Notify({
Title = _d("LwYWUApKGxwMEEY"),
Description = edqz,
Lifetime = 6,
})
end
end,
})

lgd.misc.accSection:Button({
Name = _d("KxQAXAkZFgsWAQ"),
Callback = function()
if not lgd.misc.util.equipBest() then
hlh:Notify({
Title = _d("LwYWUApKGxwMEEY"),
Description = _d("IAoBXRBXE04HEEENXAZODAYVFk4aCwFVTBxNWg"),
Lifetime = 5,
})
end
end,
})

lgd.misc.accParagraph = lgd.misc.accSection:Paragraph({
Header = _d("PREUQQxK"),
Body = lgd.misc.util.accText(),
})

lgd.misc.claimInfo = lgd.misc.tab:Section({
Side = _d("PAwSXQ0"),
})

lgd.misc.claimInfo:Header({
Name = _d("IwwGVhxVGA8LEFoMSg"),
})

lgd.misc.indexParagraph = lgd.misc.claimInfo:Paragraph({
Header = _d("LQQHUVlwGgoADQ"),
Body = lgd.misc.util.indexText(),
})

lgd.misc.achParagraph = lgd.misc.claimInfo:Paragraph({
Header = _d("LwYdXBxPEQMAG0EK"),
Body = lgd.misc.util.achText(),
})

lgd.misc.questParagraph = lgd.misc.claimInfo:Paragraph({
Header = _d("PxAQRg1K"),
Body = lgd.misc.util.questText(),
})

lgd.misc.packParagraph = lgd.misc.claimInfo:Paragraph({
Header = _d("PgQWXgo"),
Body = lgd.misc.util.packText(),
})

lgd.misc.skillSection = lgd.misc.tab:Section({
Side = _d("PAwSXQ0"),
})

lgd.misc.skillSection:Header({
Name = _d("PQ4cWRUZIBwAEBWJpvjd"),
})

lgd.misc.skillToggle = lgd.misc.skillSection:Toggle({
Name = _d("LxABWllMBAkXFFEc"),
Default = false,
Callback = function(cdt)
local lvfg = lgd.misc.skill

if cdt and not (next(lvfg.mainWanted) or next(lvfg.raidWanted)) then
lvfg.on = false

pcall(function()
lgd.misc.skillToggle:UpdateState(false)
end)

hlh:Dialog({
Title = _d("PgwWXllYVAwXFFsaUVQIDAdGDQ"),
Description = _d("LQ0aWgpcVA8RVVkcWAcaRRpbHBkWHAQbVhEZHQBFAV0cGTkPDBsVDUsRC0UaR1lrFQcBVUELXBFOAQdaCV0bGQtVGFk")
.. _d("LxABWllMBAkXFFEcGRsACQwVCkkRAAEGFQlWHQARBhUOUREcAFVMFkxUHgocWw0ZHRpL"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})

return
end

lvfg.on = cdt
lvfg.at = 0
end,
}, _d("DxABWiZMBAkXFFEc"))

lgd.misc.skillMainDropdown = lgd.misc.skillSection:Dropdown({
Name = _d("IwQcW1lNBgsA"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = lgd.misc.skill.branchLabels(1),
Callback = function(ujk)
local pklv = lgd.misc.skill
local atb = pklv.wantedFrom(ujk, 1)

pklv.mainWanted = atb
pklv.mainOrder = pklv.ordered(atb, pklv.mainOrder)
pklv.shown = _d("")
end,
}, _d("AwQcWyZNBgsA"))

lgd.misc.skillRaidDropdown = lgd.misc.skillSection:Dropdown({
Name = _d("PAQcUVlNBgsA"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = lgd.misc.skill.branchLabels(2),
Callback = function(naid)
local lqe = lgd.misc.skill
local wfpe = lqe.wantedFrom(naid, 2)

lqe.raidWanted = wfpe
lqe.raidOrder = lqe.ordered(wfpe, lqe.raidOrder)
lqe.shown = _d("")
end,
}, _d("HAQcUSZNBgsA"))

pcall(function()
lgd.misc.skillMainDropdown:UpdateSelection({})
end)

pcall(function()
lgd.misc.skillRaidDropdown:UpdateSelection({})
end)

lgd.misc.skillParagraph = lgd.misc.skillSection:Paragraph({
Header = _d("PREUQQxK"),
Body = lgd.misc.skill.text(),
})

task.spawn(function()
local svy = lgd.misc.util

while ply() do
if svy.indexOn or svy.achOn or svy.questOn or svy.accOn or svy.accBuyOn then
svy.currentProfile()
end

if svy.indexOn then
svy.claimIndex()
end

if svy.achOn then
svy.claimAchievement()
end

if svy.questOn then

if os.clock() - svy.questAskedAt > 20 or os.clock() - svy.weeklyAskedAt > 20 then
svy.askQuests()
end

svy.claimQuest()
end

if svy.accOn and os.clock() >= svy.accAt then
svy.accAt = os.clock() + 3
svy.equipBest()
end

local aif = lgd.misc.cards

if not aif.inFlight then
if aif.mergeOn and os.clock() >= aif.mergeAt then
aif.run(true, nil, true)
elseif aif.deconOn and os.clock() >= aif.deconAt then
aif.run(false, nil, true)
end
end

if aif.mergeDone ~= aif.mergeShown then
aif.mergeShown = aif.mergeDone

pcall(function()
lgd.misc.mergeParagraph:UpdateBody(lgd.misc.cards.mergeText())
end)
end

if aif.deconDone ~= aif.deconShown then
aif.deconShown = aif.deconDone

pcall(function()
lgd.misc.deconParagraph:UpdateBody(lgd.misc.cards.deconText())
end)
end

local bpz = lgd.misc.skill

if bpz.on and os.clock() >= bpz.at then

bpz.at = os.clock() + 2
bpz.upgrade()
end

local mcn = lgd.misc.skill.text()

if bpz.shown ~= mcn then
bpz.shown = mcn

pcall(function()
lgd.misc.skillParagraph:UpdateBody(mcn)
end)
end

if svy.accBuyOn and os.clock() >= svy.accBuyAt then

local aig = svy.buyBest()

svy.accBuyAt = os.clock() + (aig and 45 or 10)
end

local ue = {
{ key = _d("BwsRUAE"), paragraph = lgd.misc.indexParagraph, value = svy.indexText() },
{ key = _d("DwYd"), paragraph = lgd.misc.achParagraph, value = svy.achText() },
{ key = _d("HxAQRg0"), paragraph = lgd.misc.questParagraph, value = svy.questText() },
{ key = _d("HgQWXg"), paragraph = lgd.misc.packParagraph, value = svy.packText() },
{ key = _d("DwYW"), paragraph = lgd.misc.accParagraph, value = svy.accText() },
}

for lrlv, tm in ipairs(ue) do
if tm.paragraph and svy.shown[tm.key] ~= tm.value then
svy.shown[tm.key] = tm.value

pcall(function()
tm.paragraph:UpdateBody(tm.value)
end)
end
end

task.wait(0.75)
end
end)

local qd = dakh:Section({
Side = _d("PAwSXQ0"),
})

qd:Paragraph({
Header = _d("KAwGXRBXEw"),
Body = _d("LxABWll/HR0NVVAITB0eFlVMFkwGThcaUVUZEg8GEEZZTRwLRQJUDVwGTgQbUVlaFR0RBhUWV1QHEQYVFk4aQkUBXRxXVBwAEFkKGQMGABsVClYZCxEdXBdeVAwMAVAKF1Q6NVVBFhk2DxxVRQxVGB1FDFoMGRYPBh4VDVZUGg0QFRtYDU4DHEcKTVhOBBtRWU0cC0UBQhYZMAsABVAKTVQ5BAFQCxkHGQwBVhFcB04NGlkdGQAGAFVGCVYAThwaQFlOERwAVUYNWBoKDBtSWVYaThIdUBcZDQEQVVQLVBEKRQFdHFRUQ0UBXRwZEAsABVAKTVQcDBtSWVoVHBccUAoZAAYAVVcQXhMLFgEVFUwXBUUXWhdMB0Bvf2ERXFQdDRpFWVsBFxZVVBddVAsUAFwJSlQcChFGWVgaCkUXVBBNVBkMAV1ZTRwLRRZUCk0HThwaQFlRFRgAWxU7TA0HCxIVF1wRChZVQRFcVA0KAFsNXAZOSFVXFk0cTgYaWBwZEhwKGBUNURFOIxxGEVwGAwQbG3MzNw8RFl0cSlQFABBFChkVThcAWxdQGglFAVQVVQ1OBwwVEE0RA0UUWx0ZBw8TEEZZUABCRQZaWU0cC0UBWg1YGE4GFEcLUBEdRRpDHEtUDAABQhxcGk4WEEYKUBsAFls"),
})

local komv = dakh:Section({
Side = _d("PAwSXQ0"),
})

komv:Header({
Name = _d("LQQBVhFcBw"),
})

local qaf

qaf = komv:Paragraph({
Header = _d("OQ0UQVlAGxtFFlQMXhwa"),
Body = uqn(),
})

local oedl = dakh:Section({
Side = _d("PAwSXQ0"),
})

oedl:Header({
Name = _d("JxYZVBddVB0NGkU"),
})

oedl:Toggle({
Name = _d("LxABWllaBg8DARobTA1ODAZZGFcQThcaUQ"),
Default = false,
Callback = function(scg)
cibk.island.autoRod = scg
cibk.islandAt = 0
end,
}, _d("BxYZVBddKw8QAVomSxsK"))

oedl:Toggle({
Name = _d("KxQAXAkZHR0JFFsdGQYBAQ"),
Default = false,
Callback = function(ddk)
cibk.island.equipRod = ddk
cibk.islandAt = 0
end,
}, _d("BxYZVBddKwsUAFwJZgYBAQ"))

oedl:Toggle({
Name = _d("LxABWllaBg8DARUYWhcLFgZaC0A"),
Default = false,
Callback = function(ptwj)
cibk.island.autoAcc = ptwj
cibk.islandAt = 0
end,
}, _d("BxYZVBddKw8QAVomWBcNAAZGFksN"))

oedl:Toggle({
Name = _d("KxQAXAkZFQ0GEEYKVgYX"),
Default = false,
Callback = function(qftz)
cibk.island.equipAcc = qftz
cibk.islandAt = 0
end,
}, _d("BxYZVBddKwsUAFwJZhUNBhBGClYGFw"))

local yaue

yaue = oedl:Paragraph({
Header = _d("JxYZVBddVAkAFEc"),
Body = cibk.shopIsland.text(),
})

local qioo = dakh:Section({
Side = _d("IgATQQ"),
})

qioo:Header({
Name = _d("PAAXXAtNHA"),
})

cibk.rebirthToggle = qioo:Toggle({
Name = _d("LxABWllLEQwMB0ER"),
Default = false,
Callback = function(sgc)
cibk.autoRebirth = sgc
end,
}, _d("DxABWiZLEQwMB0ER"))

cibk.rebirthParagraph = qioo:Paragraph({
Header = _d("PREUQQxK"),
Body = cibk.rebirthText(),
})

qioo:Button({
Name = _d("OjVVQRYZHR0JFFsd"),
Callback = function()
if not cibk.gotoIsland() then
hlh:Notify({
Title = _d("LwcUWx1WGgsBVXwKVRUAAQ"),
Description = _d("LQ0URxhaAAsXVVwKGRoBEVVHHFgQF0UMUA0ZWU4RB0xZWBMPDBsVEFdUD0UYWhRcGhpL"),
Lifetime = 5,
})
end
end,
})

local faqd

faqd = qioo:Toggle({
Name = _d("LxABWllwBwIEG1FZcRUcARZaC1w"),
Default = false,
Callback = function(yqq)
nd.island = yqq
nd.pending = false
nd.pendingUntil = 0
nd.paused = false
nd.gaveUp = false
nd.stoodDown = false
nd.manualPause = false

if not yqq then
return
end

if kpy.otherTowerOn(_d("BgQHURpWBgs")) then
nd.island = false

pcall(function()
faqd:UpdateState(false)
end)

pcall(function()
hlh:Dialog({
Title = _d("LxABWllwBwIEG1FZcRUcARZaC1xUAQMT"),
Description = _d("Og0QFTFYGAIKAlAcV1QaCgJQCxkdHUUUWQtcFQocVUcMVxoHCxIZWVgaCkUCXA1RVAELEBUKVRsaRQFdHBkTDwgQFRZXGBdFB0AXSlQBCxAVEFcSBwscQRwZBgEKGBUYTVQPRQFcFFxaTjEARxcZAAYEARUWXxJCRRpHWU0BHAtVWhcZNRsRGhUqVRsaRQZaWVwVDQ1VQRZOERxFElANSlQHEQYVFk4aThYZWg0X"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})
end)

return
end

if kpy.enabled and kpy.hardcoreSlot() == nil then
nd.island = false

pcall(function()
faqd:UpdateState(false)
end)

pcall(function()
hlh:Dialog({
Title = _d("LxABWllwBwIEG1FZcRUcARZaC1xUAQMT"),
Description = _d("IApVRhVWAE4MBhUKXABOERoVGBkAARIQR1UZFQABVUERXFQJBBhQWVYaAhxVRg1YBhoWVVRZTRsZAAcVC0waTgMHWhQZFU4RGkIcS1QdCRpBVxknCxFVWhdcVBoKVXwKVRUAAVVdGEsQDQoHUFUZGxxFAUALV1QvEAFaWWoYARFVWh9fWg"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})
end)

return
end

if not nd.data then
nd.island = false

pcall(function()
faqd:UpdateState(false)
end)

pcall(function()
hlh:Dialog({
Title = _d("LxABWllwBwIEG1FZcRUcARZaC1xUAQMT"),
Description = _d("Og0cRllbAQcJERURWAdOCxoVMVgGCgYaRxxtGxkAB3EYTRVCRQZaWU0cC0UBWg5cBkkWVUYNWBMLFlVWGFcaARFVVxwZBgsEERUYVxBOBFVHDFdUDQQbWxZNVAwAVUYNWAYaABEb"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})
end)

return
end

local vqem = nd.remotes.request

if vqem then
pcall(function()
vqem:FireServer()
end)
end
end,
}, _d("DxABWiZQBwIEG1EmURUcARZaC1w"))

nd.islandToggle = faqd

nd.islandParagraph = qioo:Paragraph({
Header = _d("LBATUwo"),
Body = nd.buffText(),
})

qioo:Button({
Name = _d("PgQARhwZPR0JFFsdGTwPFxFWFksR"),
Callback = function()
if nd.pauseRun then
nd.pauseRun()
end
end,
})

qioo:Button({
Name = _d("KQwDUFlsBE4sBlkYVxBOLRRHHVobHAA"),
Callback = function()
if nd.giveUpRun then
nd.giveUpRun()
end
end,
})

local cw = dakh:Section({
Side = _d("IgATQQ"),
})

cw:Header({
Name = _d("KAwGXRBXE04WHVoJ"),
})

cw:Toggle({
Name = _d("LxABWllbARdFF1AKTVQcChE"),
Default = false,
Callback = function(pxaa)
cibk.shop.autoBuyRod = pxaa
cibk.shopAt = 0
end,
}, _d("DxABWiZbARc6F1AKTSscChE"))

cw:Toggle({
Name = _d("LxABWllbARdFF1AKTVQMBBxB"),
Default = false,
Callback = function(hvql)
cibk.shop.autoBuyBait = hvql
cibk.shopAt = 0
end,
}, _d("DxABWiZbARc6F1AKTSsMBBxB"))

cw:Toggle({
Name = _d("KxQAXAkZFgsWARULVhA"),
Default = false,
Callback = function(nann)
cibk.shop.equipRod = nann
cibk.shopAt = 0
end,
}, _d("CxQAXAlmFgsWAWoLVhA"))

cw:Toggle({
Name = _d("KxQAXAkZFgsWARUbWB0a"),
Default = false,
Callback = function(poww)
cibk.shop.equipBait = poww
cibk.shopAt = 0
end,
}, _d("CxQAXAlmFgsWAWobWB0a"))

local opoh

opoh = cw:Paragraph({
Header = _d("LAAGQVlAGxtFFlQXGREfEBxF"),
Body = of(),
})
task.spawn(function()
local hwb = xeys()
local xd = uqn()
local wbik = of()
local pkny = cibk.shopIsland.text()

while ply() do
local mrqh = xeys()

if mrqh ~= hwb then
hwb = mrqh
pcall(function()
wc:UpdateBody(mrqh)
end)
end

local ppin = uqn()

if ppin ~= xd then
xd = ppin
pcall(function()
qaf:UpdateBody(ppin)
end)
end

local rmpl = of()

if rmpl ~= wbik then
wbik = rmpl
pcall(function()
opoh:UpdateBody(rmpl)
end)
end

local grb = cibk.shopIsland.text()

if grb ~= pkny then
pkny = grb
pcall(function()
yaue:UpdateBody(grb)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while ply() do

if hbxi() and os.clock() >= (cibk.shopAt or 0)
and os.clock() >= (cibk.islandTripUntil or 0) then
cibk.shopAt = os.clock() + 1
pcall(gk)
end

if cibk.shopIsland.active() and os.clock() >= (cibk.islandAt or 0)
and os.clock() >= math.max(cibk.shopHoldUntil or 0, cibk.tpHoldUntil or 0) then
cibk.islandAt = os.clock() + 2
pcall(cibk.shopIsland.run)
end

task.wait(1)
end
end)

gq:Select()

local isol = gq:Section({
Side = _d("IgATQQ"),
})

local bf = gq:Section({
Side = _d("PAwSXQ0"),
})

local eldu = isol:Paragraph({
Header = _d("PREUQQxK"),
Body = tf(),
})

isol:Divider()

zo.npcToggle = isol:Toggle({
Name = _d("LxABWll3JC0"),
Default = false,
Callback = function(nsfu)

if nsfu and not zo.story and #iqa() == 0 then
pcall(function()
zo.npcToggle:UpdateState(false)
end)

hlh:Dialog({
Title = _d("LxABWll3JC1FG1AcXQdOBFVBGEsTCxE"),
Description = _d("PgwWXllYAE4JEFQKTVQBCxAVN2k3TgMHWhQZAAYAVUIWSxgKFlVXHFUbGUlVWgsZABsXGxUWV1QvEAFaWXobAxUZUA1cVD0RGkcAF1Q6DRBHHBkdHUUbWg1RHQACVUEWGRIHAh1BWUARGks"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})

return
end

zo.enabled = nsfu
end,
}, _d("DxABWiZXBA0"))

isol:Toggle({
Name = _d("OQQZXllNG04rJXY"),
Default = false,
Callback = function(gi)
zo.walkToNpc = gi
end,
}, _d("GQQZXiZNGzELBVY"))

isol:Dropdown({
Name = _d("KgwTUxBaAQIRDA"),
Search = false,
Multi = true,
Required = false,
Default = { _d("IAoHWBhV") },
Options = xca,
Callback = function(qbd)
local bzjy = {}

if type(qbd) == _d("GgQXWRw") then
for zmnm, nxln in ipairs(xca) do
if qbd[nxln] then
table.insert(bzjy, rab[nxln])
end
end
end

if #bzjy == 0 then
bzjy = { _d("AAoHWBhV") }
end

zo.difficulties = bzjy
end,
}, _d("CgwTUxBaAQIRDA"))

isol:Toggle({
Name = _d("LxABWllrGwEIBg"),
Default = false,
Callback = function(zfk)
wnit.enabled = zfk
wnit.inBattle = false
wnit.pending = false
end,
}, _d("DxABWiZLGwEIBg"))

local vyg = gq:Section({
Side = _d("IgATQQ"),
})

vyg:Header({
Name = _d("PQkaQQ"),
})

vyg:Paragraph({
Header = _d("JgoCFQ1REU4WGVoNSlQZCgde"),
Body = _d("PQkaQVkIVENFPFsfUBoHEQwVLVYDCxdVHRdWBgMEGRUWS1QgDBJdDVQVHABcFRZLVCYEGVkWThELC1VhFk4RHElVRRVMB04rJXZZWxUaERlQChkDBgAbFQpVGxpFRxUQSlQMEAZMVzN+PQkaQVkLVENFO2U6SlhOFxRcHUpYThcaWhRKWE4sBlkYVxBOLRRHHVobHABbP3N7GxoNVUYVVgAdRRpbWXckLUUXVA1NGAsWTxUNThtOKyV2WV8RDxEARxxKVA8RVVoXWhFCRRRbHRkVThcUXB0ZFgEWBhUcWBcGS38/LU4bThEaQhxLVBwQG0ZZUAdOER1QWVYaAhxVRxxfAR0AERUJWB0cRVgVMEoYDwsRFTFYBgoGGkccGRsARRdaDVFUHQkaQQoZHR1FGlscGQYbC1VUClIRCkUTWgsZABkMFlBXM349CRpBChkbCANPFRZXEU4WGVoNFVQaCgJQC0pUGgQeUFlNARwLBhs"),
})

kpy.toggle = vyg:Toggle({
Name = _d("LxABWllqGAER"),
Default = false,
Callback = function(xit)
if xit and kpy.role[1] == kpy.role[2] and kpy.role[1] ~= _d("ABUW") then
kpy.enabled = false

pcall(function()
kpy.toggle:UpdateState(false)
end)

hlh:Dialog({
Title = _d("LxABWllqGAER"),
Description = _d("PQkaQVkIVA8LERUqVRsaRUcVGEsRTgcaQREZ") .. kpy.roleLabel(1) .. _d("QEUhXRhNVAcWVVoXXFQcEBsVGEofCwFVUxZLVBoSHFYcFVQdClVaF1xUAQNVQRFcVBoSGhUKVRsaFlVdGEpUGgpVVxwZBwEIEEERUBoJRRBZClxa"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})

return
end

kpy.enabled = xit

if xit then
kpy.hasSlot2 = kpy.detectSlot2()

if kpy.hasSlot2 == false then
hlh:Dialog({
Title = _d("LxABWllqGAER"),
Description = _d("PQkaQVkLVAIKGl4KGRgBBh5QHRlZTgwBFRdcEQoWVUERXFQqEBRZWXsVGhEZUFlqGAERVVIYVBEeBAZGVRkbHEU8Wx9QGgcREBUrVhsDRUcASRkXAgAURxxdWE4HEFMWSxFOER1QWUoRDQobUVlKGAERVVYYV1QMBAFBFVxaTjcaQA1QGglFBkEYQAdOChsVClUbGkVEFQxXAAcJVUERXBpA"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})
end
end
end,
}, _d("DxABWiZKGAER"))

function kpy.applyRoles()
if not kpy.enabled then
return
end

if kpy.role[1] == kpy.role[2] and kpy.role[1] ~= _d("ABUW") then
kpy.enabled = false

pcall(function()
kpy.toggle:UpdateState(false)
end)

pcall(function()
hlh:Dialog({
Title = _d("LxABWllqGAERVVofXw"),
Description = _d("PQkaQVkIVA8LERUqVRsaRUcVGEsRTgcaQREZ") .. kpy.roleLabel(1) .. _d("QEUhXRhNVAcWVVoXXFQcEBsVGEofCwFVUxZLVBoSHFYcFVQPCxEVEE1UDQQbWxZNVBoEHlBZTQMBRQZZFk0HQEUmUA0ZGwAAVUYVVgBOERoVClYZCxEdXBdeVAsJBlBX"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})
end)

return
end

local tyye = {}

if kpy.towerSlot() ~= 1 and de.enabled then
de.enabled = false
table.insert(tyye, _d("LxABWlltGxkABw"))

pcall(function()
de.ui:UpdateState(false)
end)
end

if kpy.hardcoreSlot() == nil and nd.island then
nd.island = false
table.insert(tyye, _d("LxABWllwBwIEG1FZcRUcARZaC1w"))

pcall(function()
nd.islandToggle:UpdateState(false)
end)
end

if kpy.halloweenSlot() == nil and itcd.run.enabled then
itcd.run.enabled = false
table.insert(tyye, _d("LxABWllxFQIJGkIcXBpOMRpCHEs"))

pcall(function()
itcd.toggle:UpdateState(false)
end)
end

if #tyye > 0 then
pcall(function()
hlh:Dialog({
Title = table.concat(tyye, _d("TgQbUVk")) .. _d("TgoTUw"),
Description = _d("IApVRhVWAE4MBhUKXABOERoVDVEVGkUBWg5cBk4EG0xZVBscAFkVClZUBxFVXRhdVAAKAl0cSxFOERoVC0waQEUyXA9cVAcRVVRZShgBEVVUHlgdAElVWgsZABsXGxU4TAABRSZZFk1UAQMTGw"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})
end)
end
end

kpy.oneDropdown = vyg:Dropdown({
Name = _d("PQkaQVkI"),
Search = false,
Multi = false,
Required = false,

Default = 1,
Options = kpy.optionsFor[1],
Callback = function(ffce)
local rysh = type(ffce) == _d("GgQXWRw") and ffce[1] or ffce

if type(rysh) == _d("HREHXBde") and kpy.roleIds[rysh] then
kpy.role[1] = kpy.roleIds[rysh]
kpy.picked[1] = rysh
end

pcall(function()
kpy.oneDropdown:UpdateName(_d("PQkaQVkIVIzl1xU") .. kpy.roleLabel(1))
end)

if kpy.applyRoles then
kpy.applyRoles()
end
end,
}, _d("HQkaQSYIK1w"))

kpy.twoDropdown = vyg:Dropdown({
Name = _d("PQkaQVkL"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = kpy.optionsFor[2],
Callback = function(awg)
local rvil = type(awg) == _d("GgQXWRw") and awg[1] or awg

if type(rvil) == _d("HREHXBde") and kpy.roleIds[rvil] then
kpy.role[2] = kpy.roleIds[rvil]
kpy.picked[2] = rvil
end

pcall(function()
kpy.twoDropdown:UpdateName(_d("PQkaQVkLVIzl1xU") .. kpy.roleLabel(2))
end)

if kpy.applyRoles then
kpy.applyRoles()
end
end,
}, _d("HQkaQSYLK1w"))

pcall(function()
kpy.oneDropdown:UpdateSelection(_d("OgoCUAs"))
end)

pcall(function()
kpy.twoDropdown:UpdateSelection(_d("IDU2FRtYABoJEEY"))
end)

getgenv().ACBXSlot = kpy

local kbxt = gq:Section({
Side = _d("IgATQQ"),
})

kbxt:Header({
Name = _d("PAQcUVlbGx0W"),
})

kbxt:Toggle({
Name = _d("LxABWllrFQcBVXcWSgc"),
Default = false,
Callback = function(atqz)
lgd.enabled = atqz
lgd.pending = {}
lgd.pendingUntil = {}

if atqz then
lgd.cleared = {}
end
end,
}, _d("DxABWiZLFQcBKlcWSgc"))

kbxt:Toggle({
Name = _d("LxABWlluFQIOVUEWGSYPDBEVO1YHHQ"),
Default = false,
Callback = function(qj)
lgd.walkToBoss = qj
end,
}, _d("DxABWiZOFQIOKkEWZgYPDBFqG1YHHQ"))

local qcb
qcb = kbxt:Slider({
Name = _d("OQQZXllqBAsAEQ"),
Minimum = 0,
Maximum = 72,
Default = 18,
Precision = 0,
Callback = function(gvrs)
local ucx = math.floor(gvrs + 0.5)
lgd.walkSpeed = ucx

if qcb and ucx ~= gvrs then
qcb:UpdateValue(ucx)
end
end,
}, _d("GQQZXiZKBAsAEQ"))

kbxt:Dropdown({
Name = _d("PAQcUVl9HQgDHFYMVQAX"),
Search = false,
Multi = true,
Required = false,
Default = { _d("IAoHWBhV") },
Options = hfc,
Callback = function(xlmx)
local vck = {}

if type(xlmx) == _d("GgQXWRw") then
for ddm, xhkg in ipairs(hfc) do
if xlmx[xhkg] then
table.insert(vck, bqdu[xhkg])
end
end
end

if #vck == 0 then
vck = { _d("AAoHWBhV") }
end

lgd.difficulties = vck
end,
}, _d("HAQcUSZdHQgDHFYMVQAX"))

function lgd.pickedIds(agv)
local qlfk = {}

if type(agv) == _d("GgQXWRw") then
for xdbv, cwq in ipairs(yovs) do
if agv[cwq] and azaq[cwq] then
table.insert(qlfk, azaq[cwq])
end
end
elseif type(agv) == _d("HREHXBde") and azaq[agv] then
qlfk = { azaq[agv] }
end

return qlfk
end

kbxt:Dropdown({
Name = _d("PAQcUVl7Gx0W"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = yovs,
Callback = function(bj)
lgd.picks[1] = lgd.pickedIds(bj)
lgd.cursor[1] = 1
lgd.losses[1] = {}
end,
}, _d("HAQcUSZbGx0W"))

lgd.boss2Dropdown = kbxt:Dropdown({
Name = _d("PAQcUVl7Gx0WVR0qVRsaRUcc"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = yovs,
Callback = function(ywq)
lgd.picks[2] = lgd.pickedIds(ywq)
lgd.cursor[2] = 1
lgd.losses[2] = {}
end,
}, _d("HAQcUSZbGx0WKkYVVgAxVw"))

pcall(function()
lgd.boss2Dropdown:SetVisibility(false)
end)

task.spawn(function()
local kkt = nil

while ply() do
local qsjl = kpy.splitNpc()

if qsjl ~= kkt then
kkt = qsjl

local vbx = lgd.boss2Dropdown

if vbx then
pcall(function()
vbx:SetVisibility(qsjl)
end)
end
end

task.wait(0.5)
end
end)

bf:Paragraph({
Header = _d("LxABWll/HQkNAQ"),
Body = _d("PQAZUBpNVAELEBUWS1QDCgdQWXckLRZVUwtWGU4RHVBZThscCRFGWVsRAgoCGw"),
})

for ssb, hv in ipairs(zeya) do
bf:Dropdown({
Name = hv.name,
Search = true,
Multi = true,
Required = false,
Default = {},
Options = hv.options,
Callback = function(ytt)
local rnx = {}

if type(ytt) == _d("GgQXWRw") then
if ytt.All then
for ptj, jmr in ipairs(hv.ids) do
table.insert(rnx, jmr)
end
else
for ochm, qz in ipairs(hv.options) do
if ytt[qz] and hv.byName[qz] then
table.insert(rnx, hv.byName[qz])
end
end
end
elseif type(ytt) == _d("HREHXBde") then
if ytt == _d("LwkZ") then
for nocl, xli in ipairs(hv.ids) do
table.insert(rnx, xli)
end
else
rnx = { hv.byName[ytt] }
end
end

zo.selectedByWorld[hv.name] = rnx
end,
}, _d("ABUWag") .. hv.id)
end

bf:Toggle({
Name = _d("LxABWll6GwMVGVANXFQ9ERpHAA"),
Default = false,
Callback = function(dyn)
zo.story = dyn
zo.battlePending = false
zo.battlePendingUntil = 0
end,
}, _d("DxABWiZaGwMVGVANXCsdERpHAA"))

zo.storyDropdown = bf:Dropdown({
Name = _d("KgwTUxBaAQIRHFAK"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = xca,
Callback = function(hpj)
local czeh = type(hpj) == _d("GgQXWRw") and hpj[1] or hpj

if type(czeh) == _d("HREHXBde") and rab[czeh] then
zo.storyDifficulty = rab[czeh]
end
end,
}, _d("CgwTUxBaAQIRHFAK"))

pcall(function()
zo.storyDropdown:UpdateSelection(xca[1])
end)

pcall(function()
zo.storyDropdown:UpdateName(_d("KgwTUxBaAQIRHFAKGZbux1U") .. xca[1])
end)

bf:Paragraph({
Header = _d("JgoCFThMAAFFNloUSRgLERAVKk0bHBxVQhZLHx0"),
Body = _d("KAwSXQ1KVAsTEEcAGQcaCgdMWXckLUVYFTdYGQsOVUERSxsbAh0VMEoRBQQcFVQZGwBFAV0cGRsAAFVREF8SBwYAWQ1AVA8HGkMcFVQZCgdeEFcTThEdUFlYBgsEBhUQV1QBFxFQCxkVAAFVVhZUHQACVVcYWh9OFxpAF11UDxZVVhZWGAoKAlsKGRcCABRHVzN+JxFVRxxJGA8GEEZZTRwLRRRHHFhUChcaRR1WAwAWVUIRUBgLRRxBWVAHTgobGVlYGgpFGVAYTxEdRQdUEF1UDAoGRhxKVA8JGlscFw"),
})

local vwti = hi:Section({
Side = _d("IgATQQ"),
})

vwti:Header({
Name = _d("OgoCUAs"),
})

local zh
local ajzg

local cjqc = {
remotes = {},
watcher = false,
hidMenu = false,

hardWatch = {},
}

function cjqc.hardPick(ncf)
ncf = ncf == true

for hg, lpij in ipairs({ _d("LAQBQRVcMxsM"), _d("LAQBQRVcMxsMRw") }) do
local urp = vklq:FindFirstChild(lpij)

if urp then
if urp:GetAttribute(_d("OgoCUAtxFRwBJVwaUg")) ~= ncf then
pcall(function()
urp:SetAttribute(_d("OgoCUAtxFRwBJVwaUg"), ncf)
end)
end

if urp:GetAttribute(_d("OgoCUAtxFRwBJ0AX")) ~= nil and urp:GetAttribute(_d("OgoCUAtxFRwBJ0AX")) ~= ncf then
pcall(function()
urp:SetAttribute(_d("OgoCUAtxFRwBJ0AX"), ncf)
end)
end
end
end
end

function cjqc.pinMode()
if not (de.enabled or de.nightmare) then
return
end

local ljg = de.nightmare == true

for nnqo, xw in ipairs({ _d("LAQBQRVcMxsM"), _d("LAQBQRVcMxsMRw") }) do
local cm = vklq:FindFirstChild(xw)

if cm then
if cm:GetAttribute(_d("OgoCUAtxFRwBJVwaUg")) ~= ljg then
pcall(function()
cm:SetAttribute(_d("OgoCUAtxFRwBJVwaUg"), ljg)
end)
end

if cjqc.hardWatch[cm] == nil then
local svn, qdo = pcall(function()
return cm:GetAttributeChangedSignal(_d("OgoCUAtxFRwBJVwaUg")):Connect(function()
if not (de.enabled or de.nightmare) then
return
end

local fja = de.nightmare == true

if cm.Parent and cm:GetAttribute(_d("OgoCUAtxFRwBJVwaUg")) ~= fja then
pcall(function()
cm:SetAttribute(_d("OgoCUAtxFRwBJVwaUg"), fja)
end)
end
end)
end)

if svn then
cjqc.hardWatch[cm] = qdo
end
end
end
end
end

function cjqc.pauseRows()
local lqrf = zhiw:FindFirstChild(_d("PgkUTBxLMxsM")) and zhiw.PlayerGui:FindFirstChild(_d("PQABQRBXEx0iAFw"))

if not lqrf then
return nil, nil
end

return lqrf:FindFirstChild(_d("PgQARhxwGggMG1wNXD0AFQBB"), true), lqrf:FindFirstChild(_d("PgQARhxwGggMG1wNXDcGABZe"), true)
end

function cjqc.pauseState()
local sql = zhiw:FindFirstChild(_d("PgkUTBxLMxsM")) and zhiw.PlayerGui:FindFirstChild(_d("PQABQRBXEx0iAFw"))
local to = sql and sql:FindFirstChild(_d("KQABZhxNAAcLEkY"), true)

if not to then
return nil
end

local nok, jjg = pcall(function()
return to:Invoke()
end)

if nok and type(jjg) == _d("GgQXWRw") then
return jjg.pauseInfiniteEnabled == true
end

return nil
end

function cjqc.pauseAt(ovk, ltm)
ltm = math.max(1, math.floor(tonumber(ltm) or 1))

local zroj, git = cjqc.pauseRows()

if not (zroj and git) then
return false
end

local rdq = pcall(function()
if tonumber(zroj.Text) ~= ltm then
zroj.Text = tostring(ltm)

if getconnections then
for tkzf, kbfx in ipairs(getconnections(zroj.FocusLost)) do
pcall(function()
kbfx:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end
end)

if ovk ~= nil then
local piwa = cjqc.pauseState()

if piwa ~= nil and piwa ~= ovk and getconnections then
pcall(function()
for kiz, tze in ipairs(getconnections(git.MouseButton1Click)) do
pcall(function()
tze:Fire()
end)
end
end)
end
end

return rdq
end

function cjqc.restorePause()
fi.triggered = false

if fi.enabled and fi.floor > 0 then
cjqc.pauseAt(true, fi.floor)

pcall(function()
wpse.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = fi.floor,
})
end)

return
end

pcall(function()
wpse.SaveClientData:FireServer({
pauseInfiniteEnabled = false,
pauseInfiniteAt = 1,
})
end)

cjqc.pauseAt(false, 1)
end

function cjqc.remote(llad)
local dth = cjqc.remotes[llad]

if dth and dth.Parent then
return dth
end

local bdap = jw:FindFirstChild(_d("PAAYWg1cBw"))
local vrjk = bdap and bdap:FindFirstChild(llad)

if vrjk then
cjqc.remotes[llad] = vrjk
end

return vrjk
end

function cjqc.historyOpen()
for zmmk, ygl in ipairs({ _d("LAQBQRVcMxsM"), _d("LAQBQRVcMxsMRw") }) do
local op = vklq:FindFirstChild(ygl)
local mpxz = op and op:FindFirstChild(_d("OgoCUAtxHR0RGkcAfwYPCBA"))

if mpxz and mpxz.Visible then
return true
end
end

return false
end

function cjqc.generationOpen()
local ccj = vklq:FindFirstChild(_d("OgoCUAtrER0QGUE+TB0"))
local asyt = ccj and ccj:FindFirstChild(_d("PAAGQBVNMhwEGFA"))

return asyt ~= nil and asyt.Visible
end

function cjqc.standDown(ipl)
if not cjqc.hidMenu then
local qqp = true

pcall(function()
qqp = hlh:GetState() ~= false
end)

if qqp then
cjqc.hidMenu = true

pcall(function()
hlh:SetState(false)
end)
end
end

if cjqc.watcher then
return
end

cjqc.watcher = true

task.spawn(function()

local kuh = os.clock() + 6

while ply() and os.clock() < kuh and not ipl() do
task.wait(0.2)
end

while ply() and ipl() do
task.wait(0.4)
end

cjqc.watcher = false

if cjqc.hidMenu then
cjqc.hidMenu = false

pcall(function()
hlh:SetState(true)
end)
end
end)
end

de.floorAt = 0
de.battleAt = 0
de.floor = nil
de.manualPause = false

task.spawn(function()
local ggi = lw(_d("LAQBQRVcIR4BFEEc"))
local ujnk = lw(_d("PRwbVi1WAwsXM1kWVgY"))
local ihgs = lw(_d("LAQBQRVcMQAB"))
local ew = lw(_d("OgoCUAtrAQAgG1EcXQ"))

if ggi then
ggi.OnClientEvent:Connect(function()
de.battleAt = os.clock()
end)
end

if ujnk then
ujnk.OnClientEvent:Connect(function(aut)
de.floorAt = os.clock()

if type(aut) == _d("ABAYVxxL") and aut > 1 then
de.floor = aut
else
de.floor = nil
end
end)
end

if ihgs then
ihgs.OnClientEvent:Connect(function(uf)
if type(uf) == _d("GgQXWRw") and uf.mode == _d("GgoCUAs") then
de.floorAt = os.clock()
end
end)
end

if ew then
ew.OnClientEvent:Connect(function()

de.lastRunEnded = {
clock = os.clock(),
floor = de.floor,
}

task.delay(1, function()
local qwft = vklq:FindFirstChild(_d("OgoCUAtrER0QGUE+TB0"))
local uri = qwft and qwft:FindFirstChild(_d("PAAGQBVNMhwEGFA"))
local klnl = {}

if uri then
for dugn, sg in ipairs(uri:GetDescendants()) do
if sg:IsA(_d("OgANQTVYFgsJ")) and sg.Visible and sg.Text ~= _d("") and #klnl < 12 then
klnl[#klnl + 1] = sg.Text
end
end
end

if de.lastRunEnded then
de.lastRunEnded.texts = table.concat(klnl, _d("ThlV"))
end
end)

de.floorAt = 0
de.battleAt = 0
de.floor = nil

if de.manualPause then
cjqc.restorePause()
end
end)
end

end)

local function xhvp()
local hjqp = os.clock()

if hjqp - (de.floorAt or 0) < 90 and hjqp - (de.battleAt or 0) < 12 then
return true
end

for viyu, see in ipairs({ _d("LAQBQRVcMxsM"), _d("LAQBQRVcMxsMRw") }) do
local lsvj = vklq:FindFirstChild(see)

if lsvj then

local ekt = lsvj:FindFirstChild(_d("OgoCUAt/GAEKB3kYWxEC"))

if ekt and ekt.Visible then
return true
end

local kwvw = lsvj:FindFirstChild(_d("KAkaWgtqFxwAEFs"))

if kwvw and kwvw.Visible then
return true
end

local hc = lsvj:FindFirstChild(_d("LAQBQRVcJw0XEFAX"))

if hc and hc.Visible then
local nob = hc:FindFirstChild(_d("PxAcVhJ+HRgAIEU7TAAaChs"))

if nob and nob.Visible then
return true
end
end
end
end

return false
end

function cjqc.hardNow()

local hlt = vklq:FindFirstChild(_d("LAQBQRVcMxsM"))
local zfu = hlt and hlt:GetAttribute(_d("OgoCUAtxFRwBJVwaUg"))

if zfu ~= nil then
return zfu == true
end

local vzye = lgd.misc.util.profile

return type(vzye) == _d("GgQXWRw") and vzye.lastTowerHard == true
end

function cjqc.endIfWrongMode(vkev)
if not xhvp() or cjqc.hardNow() == (vkev == true) then
return false
end

pcall(function()
if type(ajzg) == _d("CBAbVg1QGwA") then
ajzg()
else
wpse.EndTowerRemote:FireServer(1)
end
end)

de.floor = nil

return true
end

function cjqc.hardPickNow()
for ewm, gvy in ipairs({ _d("LAQBQRVcMxsM"), _d("LAQBQRVcMxsMRw") }) do
local ud = vklq:FindFirstChild(gvy)
local gfif = ud and ud:GetAttribute(_d("OgoCUAtxFRwBJVwaUg"))

if gfif ~= nil then
return gfif == true
end
end

return nil
end

function cjqc.parked()
for klej, lt in ipairs({ _d("LAQBQRVcMxsM"), _d("LAQBQRVcMxsMRw") }) do
local twc = vklq:FindFirstChild(lt)

if twc then
local tqe = twc:FindFirstChild(_d("OgoCUAt/GAEKB3kYWxEC"))
local plf = twc:FindFirstChild(_d("KAkaWgtqFxwAEFs"))
local wyv = twc:FindFirstChild(_d("LAQBQRVcJw0XEFAX"))

if tqe and tqe.Visible
and not (plf and plf.Visible)
and not (wyv and wyv.Visible) then
return true
end
end
end

return false
end

de.ui = vwti:Toggle({
Name = _d("LxABWlltGxkABw"),
Default = false,
Callback = function(iexk)

if de.quiet then
return
end

de.enabled = iexk
de.pending = false
de.pendingUntil = 0

if iexk then

if kpy.enabled and kpy.role[1] ~= _d("GgoCUAs") then
de.enabled = false

pcall(function()
de.ui:UpdateState(false)
end)

pcall(function()
hlh:Dialog({
Title = _d("LxABWlltGxkABxUWXxI"),
Description = _d("PQkaQVkIVAcWVUYcTVQaClU") .. kpy.roleName(1) .. _d("QEUhXRwZPQADHFsQTQ1OJhRGDVURTgobWQAZBxoEB0EKGRsARQZZFk1UX0lVRhYZBwsRVWYVVgBOVFVBFhkgARIQR1lfHRwWARs"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})
end)

return
end

if kpy.otherTowerOn(_d("GgoCUAs")) then
de.enabled = false

pcall(function()
de.ui:UpdateState(false)
end)

pcall(function()
hlh:Dialog({
Title = _d("LxABWlltGxkABxUWXxI"),
Description = _d("LwsaQRFcBk4RGkIcS1QPEAFaFFgABwobFRBKVA8JB1AYXQ1OChsZWVgaCkUBXRBKVA8GFloMVwBOChtZABkVAgkaQgoZGwAAVUEWThEcRQdAFxkVGkUUFQ1QGQtLVWEMSxpOER1UDRkbAABVWh9fVAgMB0YNFVQBF1VBDEsaTgobFThMAAFFJlkWTVQdClVQGFocThYZWg0ZEwsRBhUQTQdOCgJbWU0bGQAHGw"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})
end)

return
end

de.nightmare = false

pcall(function()
de.quiet = true
de.nightmareToggle:UpdateState(false)
de.quiet = false
end)

de.manualPause = false
de.paused = false
cjqc.restorePause()
de.pauseArmed = false

cjqc.endIfWrongMode(false)
cjqc.hardPick(false)

return
end

if not xhvp() then
return
end

de.paused = true
local exxp = zh()

hlh:Notify({
Title = _d("LxABWlltGxkABxUWXxI"),
Description = exxp and _d("OgoCUAsZBhsLVUUYTAcLAVs") or _d("PBAbFRBKVAIMA1BVGRYbEVVbFhkWHAAUXllbARoRGltZXxsbCxEb"),
Lifetime = 5,
})
end,
}, _d("DxABWiZNGxkABw"))

de.nightmareToggle = vwti:Toggle({
Name = _d("LxABWll3HQkNAVgYSxFOMRpCHEs"),
Default = false,
Callback = function(ntzp)
if de.quiet then
return
end

de.nightmare = ntzp

if not ntzp then

de.enabled = false
de.pending = false
de.pendingUntil = 0

cjqc.hardPick(false)

pcall(function()
de.quiet = true
de.ui:UpdateState(false)
de.quiet = false
end)

if xhvp() then
de.paused = true
local uym = zh()

hlh:Notify({
Title = _d("LxABWll3HQkNAVgYSxFOMRpCHEtUAQMT"),
Description = uym and _d("IAwSXQ1UFRwAVUcMV1QeBABGHF1a") or _d("PBAbFRBKVAIMA1BVGRYbEVVbFhkWHAAUXllbARoRGltZXxsbCxEb"),
Lifetime = 5,
})
end

return
end

if kpy.enabled and kpy.role[1] ~= _d("GgoCUAs") then
de.nightmare = false

pcall(function()
de.quiet = true
de.nightmareToggle:UpdateState(false)
de.quiet = false
end)

pcall(function()
hlh:Dialog({
Title = _d("LxABWll3HQkNAVgYSxFOMRpCHEtUAQMT"),
Description = _d("IAwSXQ1UFRwAVWEWThEcRRZaDFcAHUUURlltGxkABxUQV1QdCRpBWQhYTgQbUVlAGxsXVUYVVgBOVFVcChkbAEU") .. kpy.roleName(1) .. _d("ThccUhFNVAAKAhtZahEaRQZZFk1UX0UBWlltGxkABxUfUAYdEVs"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})
end)

return
end

pcall(function()
de.quiet = true
de.ui:UpdateState(false)
de.quiet = false
end)

de.enabled = true
de.manualPause = false
de.paused = false

cjqc.restorePause()
de.pauseArmed = false

cjqc.endIfWrongMode(true)
cjqc.hardPick(true)

de.pending = false
de.pendingUntil = 0
end,
}, _d("DxABWiZXHQkNAVgYSxExERpCHEs"))

vwti:Header({
Name = _d("LxABWllpFRsWEBUtVgMLFw"),
})

local ofpt

ofpt = vwti:Toggle({
Name = _d("LxABWllpFRsWEBU/VRsBFw"),
Default = false,
Callback = function(vcpo)
fi.triggered = false

if vcpo and fi.floor <= 0 then
fi.enabled = false

pcall(function()
ofpt:UpdateState(false)
end)

pcall(function()
wpse.SaveClientData:FireServer({ pauseInfiniteEnabled = false })
end)

hlh:Dialog({
Title = _d("LxABWllpFRsWEBU/VRsBFw"),
Description = _d("PQABFRgZBA8QBlBZXxgBCgcVGFsbGABVBVlfHRwWARVUGTUbERoVKVgBHQBVYRZOERxFG1AcXQdOERoVElcbGUUCXRxLEU4RGhUKTRseSw"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})

return
end

fi.enabled = vcpo

pcall(function()
wpse.SaveClientData:FireServer({
pauseInfiniteEnabled = vcpo,
pauseInfiniteAt = fi.floor,
})
end)
end,
}, _d("DxABWiZJFRsWEGofVRsBFw"))

vwti:Input({
Name = _d("PgQARhwZFRpFE1kWVgY"),
Placeholder = _d("C0sSG1kMRA"),
AcceptedCharacters = _d("IBAYVxxLBw"),
Callback = function(njy)
local jvd = tonumber(njy) or 0

if jvd < 0 then
jvd = 0
end

if jvd == fi.floor then
return
end

fi.floor = jvd
fi.triggered = false

if jvd <= 0 and fi.enabled then
fi.enabled = false

pcall(function()
ofpt:UpdateState(false)
end)
end

pcall(function()
wpse.SaveClientData:FireServer({
pauseInfiniteAt = jvd,
pauseInfiniteEnabled = fi.enabled,
})
end)
end,
}, _d("HgQARhxmFRo6E1kWVgY"))

vwti:Button({
Name = _d("PgQARhwZIAESEEc"),
Callback = function()
local lmv = false

pcall(function()
lmv = zh()
end)

if lmv then

de.manualPause = true
return
end

hlh:Dialog({
Title = _d("PgQARhwZIAESEEc"),
Description = _d("IApVWRBPEU4RGkIcS1QcEBsVDVZUHgQARhwZBgcCHUFZVxsZSw"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})
end,
})

vwti:Header({
Name = _d("LxABWll+HRgAVWAJ"),
})

lhq.toggle = vwti:Toggle({
Name = _d("LxABWll+HRgAVWAJ"),
Default = false,
Callback = function(doz)
lhq.triggered = false

if doz and lhq.floor <= 0 then
lhq.enabled = false

pcall(function()
lhq.toggle:UpdateState(false)
end)

hlh:Dialog({
Title = _d("LxABWll+HRgAVWAJ"),
Description = _d("PQABFRgZEwcTEBUMSVQICRpaCxkVDAoDUFkJVAgMB0YNGVlOJABBFhkzBxMQFSxJVAAAEFEKGQABRR5bFk5UGQ0QRxwZAAFFBkEWSVo"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})

return
end

lhq.enabled = doz
end,
}, _d("DxABWiZeHRgAKkAJ"))

vwti:Input({
Name = _d("KQwDUFlMBE4KGxUfVRsBFw"),
Placeholder = _d("C0sSG1kORA"),
AcceptedCharacters = _d("IBAYVxxLBw"),
Callback = function(wjy)
local jkg = tonumber(wjy) or 0

if jkg < 0 then
jkg = 0
end

if jkg == lhq.floor then
return
end

lhq.floor = jkg
lhq.triggered = false

if jkg <= 0 and lhq.enabled then
lhq.enabled = false

pcall(function()
lhq.toggle:UpdateState(false)
end)
end
end,
}, _d("CQwDUCZMBDEKG2ofVRsBFw"))

lhq.weatherToggle = vwti:Toggle({
Name = _d("LxABWlleHRgAVUAJGRsARQJQGE0cCxc"),
Default = false,
Callback = function(guw)
lhq.weatherTriggered = false

if guw and next(lhq.weathers) == nil then
lhq.weatherEnabled = false

pcall(function()
lhq.weatherToggle:UpdateState(false)
end)

hlh:Dialog({
Title = _d("OQAUQRFcBk4iHEMcGSEe"),
Description = _d("OgwWXllYAE4JEFQKTVQBCxAVDlwVGg0QR1lbEQIKAhUfUAYdEVUYWVYABgAHQhBKEU4RHVALXFQHFlVbFk0cBwsSFQ1WVAkMA1BZTAROChsb"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})

return
end

lhq.weatherEnabled = guw
end,
}, _d("DxABWiZeHRgAKkAJZhsAOgJQGE0cCxc"))

vwti:Dropdown({
Name = _d("KQwDUFlMBE4SEFQNUREcFg"),
Multi = true,
Required = false,
Options = { _d("OhwFXRZWGg"), _d("LAkcTwNYBgo"), _d("IgwSXQ1XHQAC"), _d("OQwbUQpNGxwI"), _d("PQ0URxBXEw8L"), _d("PQwbUgxVFRwMAUw"), _d("IwobVAtaHE4hGlgYUBo"), _d("OAocUQ"), _d("IwQRUFlQGk4tEFQPXBo"), _d("IwQbUhg") },
Callback = function(bo)
lhq.weathers = {}

if type(bo) == _d("GgQXWRw") then
for zt, fep in pairs(bo) do
if fep then
lhq.weathers[zt] = true
end
end
end

lhq.weatherTriggered = false
end,
}, _d("CQwDUCZMBDESEFQNUREcFg"))

vwti:Input({
Name = _d("IwwbXBRMGU4DGVoWSwc"),
Placeholder = _d("XkVIFRhXDU4DGVoWSw"),
AcceptedCharacters = _d("IBAYUAtQFw"),
Callback = function(fvwr)
local rlg = math.floor(tonumber(fvwr) or 0)

if rlg < 0 then
rlg = 0
end

lhq.weatherMinFloor = rlg
lhq.weatherTriggered = false
end,
}, _d("AwwbXBRMGTEDGVoWSwc"))

vwti:Button({
Name = _d("KQwDUFlsBE4xGkIcSw"),
Callback = function()
if not xhvp() then
hlh:Dialog({
Title = _d("KQwDUFlsBE4xGkIcSw"),
Description = _d("IApVWRBPEU4RGkIcS1QcEBsVDVZUCQwDUFlMBE4XHFIRTVQACgIb"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})

return
end

hlh:Dialog({
Title = _d("KQwDUFlsBE4xGkIcSw"),
Description = _d("KAoHUxxQAE4RHVBZWgEcFxBbDRkAARIQR1lLAQBaVWERUAdOBhRbF1YATgcQFQxXEAELEBs"),
Buttons = {
{
Name = _d("KQpVVxhaHw"),
},
{
Name = _d("KQwDUFlMBA"),
Callback = function()
local yala = false

pcall(function()
yala = ajzg()
end)

if yala then
return
end

task.defer(function()
task.wait(0.3)

hlh:Dialog({
Title = _d("KQwDUFlsBE4xGkIcSw"),
Description = _d("IApVUhBPEU4QBRUbTAAaChsVGFcHGQAHUB0ZWU4RHVBZSwEARRhUABkVAhcQVB1AVAwAVVoPXAZA"),
Buttons = {
{
Name = _d("KQoBFRBN"),
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

vwti:Button({
Name = _d("LQ0QVhIZGAEWBhURUAcaCgdM"),
Callback = function()
local ubm = cjqc.remote(_d("PAAEQBxKADoKAlALcR0dERpHAA"))

if not ubm then
hlh:Dialog({
Title = _d("IgoGRllxHR0RGkcA"),
Description = _d("Og0cRllbAQcJERURWAdOCxoVDVYDCxdVXRBKAAEXDBULXBkBERAb"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})

return
end

cjqc.standDown(cjqc.historyOpen)

pcall(function()
ubm:FireServer()
end)
end,
})

vwti:Button({
Name = _d("LQ0QVhIZEwsLEEcYTR0BCwY"),
Callback = function()

local sj = vklq:FindFirstChild(_d("OgoCUAtrER0QGUE+TB0"))
local vl = sj and sj:FindFirstChild(_d("IRUQWz5cGiYMBkEWSw0"))

if not vl then
hlh:Dialog({
Title = _d("KQAbUAtYAAcKG0Y"),
Description = _d("Og0cRllbAQcJERURWAdOCxoVHlwaCxcUQRBWGh1FAlwXXRsZSw"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})

return
end

cjqc.standDown(cjqc.generationOpen)

pcall(function()
vl:Fire()
end)
end,
})

zo.bossTeams.towerSection = hi:Section({
Side = _d("IgATQQ"),
})

zo.bossTeams.towerSection:Header({
Name = _d("OgoCUAsZIAsEGEY"),
})

zo.bossTeams.towerSection:Paragraph({
Header = _d("JgoCFQ1WAwsXVUEcWBkdRQJaC1I"),
Body = _d("IQMTD1lcFQ0NVUcMV1QbFhBGWU4cDxEQQxxLVBoAFFhZUAAdRQZZFk1UDwkHUBhdDU4NGlkdSlpkbzpbQxkRDwYdFQ1WAwsXVVccVRsZRQdAF0pUGQwBXVlNHAtFAVAYVFQeDBZeHF1UCAoHFRBNWg"),
})

zo.bossTeams.towerToggle = zo.bossTeams.towerSection:Toggle({
Name = _d("OgoCUAsZIAsEGEY"),
Default = false,
Callback = function(trtw)
zo.bossTeams.towersOn = trtw
end,
}, _d("GgoCUAtmAAsEGEY"))

for aafd, cbef in ipairs({
{ kind = _d("GgoCUAs"), name = _d("JwsTXBdQABdFNlQKTRgLRVoVN1ATBhEYVAtc") },
{ kind = _d("BgQHURpWBgs"), name = _d("JxYZVBddVCYEB1EaVgYL") },
}) do
local bjvh = math.clamp(math.floor(tonumber(zo.bossTeams.towerPicked[cbef.kind]) or 1), 1, 4)

zo.bossTeams.towerPicked[cbef.kind] = bjvh

zo.bossTeams.towerUi[cbef.kind] = zo.bossTeams.towerSection:Dropdown({
Name = cbef.name,
Search = false,
Multi = false,
Required = false,
Default = bjvh,
Options = { _d("OgAUWFkI"), _d("OgAUWFkL"), _d("OgAUWFkK"), _d("OgAUWFkN") },
Callback = function(ny)
local rdlm = type(ny) == _d("GgQXWRw") and ny[1] or ny
local gvwc = type(rdlm) == _d("HREHXBde") and tonumber(rdlm:match(_d("RkARHlA"))) or nil

if gvwc then
zo.bossTeams.towerPicked[cbef.kind] = gvwc
zo.bossTeams.save()
end

pcall(function()
zo.bossTeams.towerUi[cbef.kind]:UpdateName(cbef.name .. _d("Tof1l1k") .. (rdlm or _d("OgAUWFkI")))
end)
end,
}, _d("GgAUWCZNGxkAB2o") .. cbef.kind)

pcall(function()
zo.bossTeams.towerUi[cbef.kind]:UpdateSelection(_d("OgAUWFk") .. tostring(bjvh))
zo.bossTeams.towerUi[cbef.kind]:UpdateName(cbef.name .. _d("Tof1l1ltEQ8IVQ") .. tostring(bjvh))
end)
end

zo.bossTeams.towerSection:Header({
Name = _d("PRIURVlWGk4DGVoWSw"),
})

zo.bossTeams.towerSection:Paragraph({
Header = _d("PRIURVlNEQ8IVVoXGRVOAxlaFks"),
Body = _d("Og0QFR5YGQtCBhUWThpOFgJUCRVUAAoBFRgZBA8QBlBXGTEPBh0VC0wYC0UcRllYVAgJGloLGRUAAVVBEVxUGgAUWFlOGxwLVVMLVhlOER1UDRkSAgoaR1lWGkJFAkcQTQALC1VcF00bThEdUFleFQMAUkZZahEaERxbHkpUQ1tVdAxNG04xEFQUGScZBAUVSBkVAAFVB1UZBwFFAV0cGRMPCBAVFFgfCxZVQRFcVB0SHEEaUVQHEQZQFV9UGQ0QW1lYVBwQGxUKTRUcEQYVDVEVGkUTWRZWBkBFO1oNUR0AAlVcChkHGgoFRRxdVA8LERUNURFOFwBbWVIRCxUGFRBNB04WGVoNF35kJFVWGEoAAgBVRwxXVAkAAUZZTRwLRQZUFFxUHRIcQRpRVAgXGlhZTRwHFlVFGFcRAklVVxxaFRsWEBUNURFOAhRYHB4HTgoCW1lKAw8VVVoXVQ1OAxxHHEpUBwsGXB1cVCcLE1wXUAALRSdaFlQHQG9/eRxYAgtFFBUfVRsBF1VUDRlEThEaFQ1MBgBFAV0YTVQcEBlQWVYSCEs"),
})

function zo.bossTeams.swapStatusText()
local sgv = zo.bossTeams.swap
local zxek = {}

if sgv.on then
table.insert(zxek, _d("IQtVGFlOBgcRAVAXGQABRQFdHBkTDwgQEgoZNRsRGhUtXBUDRSZCGElUHAoCRlc"))
else
table.insert(zxek, _d("IQMTFVQZAAYAVVIYVBFJFlVGDlgETgwGFRVcEhpFFFkWVxFA"))
end

local nrg = {
{ index = 1, floor = sgv.floor, team = sgv.team },
{ index = 2, floor = sgv.floor2, team = sgv.team2 },
}

for acv, hdyv in ipairs(nrg) do
if hdyv.floor > 0 then
table.insert(zxek, string.format(_d("PRIURVkcEFRFIVAYVFRLAVVTC1YZTgMZWhZLVEsB"), hdyv.index, hdyv.team, hdyv.floor))
else
table.insert(zxek, string.format(_d("PRIURVkcEFRFGlMfGVwAClVTFVYbHEUGUA0Q"), hdyv.index))
end
end

if zo.bossTeams.swapMessage ~= _d("") then
table.insert(zxek, zo.bossTeams.swapMessage)
end

return table.concat(zxek, _d("ZA"))
end

function zo.bossTeams.paintSwap()
pcall(function()
zo.bossTeams.swapStatus:UpdateBody(zo.bossTeams.swapStatusText())
end)
end

zo.bossTeams.swapToggle = zo.bossTeams.towerSection:Toggle({
Name = _d("PRIURVlNEQ8IVVoXGRICChpH"),
Default = zo.bossTeams.swap.on,
Callback = function(wnm)
zo.bossTeams.swap.on = wnm

zo.bossTeams.swapReset()

zo.bossTeams.swapApply()
zo.bossTeams.save()
end,
}, _d("HRIURSZNEQ8IKloXZhICChpH"))

zo.bossTeams.swapInput = zo.bossTeams.towerSection:Input({
Name = _d("KAkaWgs"),
Placeholder = _d("C0sSG1kMRF5FXQVZBFQBAxMc"),
AcceptedCharacters = _d("IBAYUAtQFw"),
Callback = function(fn)
local alx = tonumber(type(fn) == _d("HREHXBde") and fn:match(_d("RkARHlA")) or fn)

if alx then
zo.bossTeams.swap.floor = alx
zo.bossTeams.swapReset()
zo.bossTeams.swapApply()
zo.bossTeams.save()
end
end,
}, _d("CAkaWgs"))

zo.bossTeams.swapDropdown = zo.bossTeams.towerSection:Dropdown({
Name = _d("PRIURVlNGw"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(zo.bossTeams.swap.team) or 1), 1, 4),
Options = { _d("OgAUWFkI"), _d("OgAUWFkL"), _d("OgAUWFkK"), _d("OgAUWFkN") },
Callback = function(kcs)
local tncj = type(kcs) == _d("GgQXWRw") and kcs[1] or kcs
local sxyl = type(tncj) == _d("HREHXBde") and tonumber(tncj:match(_d("RkARHlA"))) or nil

if sxyl then
zo.bossTeams.swap.team = sxyl
zo.bossTeams.swapReset()
zo.bossTeams.swapApply()
zo.bossTeams.save()
end

pcall(function()
zo.bossTeams.swapDropdown:UpdateName(_d("PRIURVlNG06H9ZdZ") .. (tncj or _d("OgAUWFkI")))
end)

zo.bossTeams.paintSwap()
end,
}, _d("HRIURSZNGw"))

zo.bossTeams.swapInput2 = zo.bossTeams.towerSection:Input({
Name = _d("KAkaWgsZRg"),
Placeholder = _d("C0sSG1kIRF5VVR1JGUlOChNTUA"),
AcceptedCharacters = _d("IBAYUAtQFw"),
Callback = function(ebx)
local ufd = tonumber(type(ebx) == _d("HREHXBde") and ebx:match(_d("RkARHlA")) or ebx)

if ufd then
zo.bossTeams.swap.floor2 = ufd
zo.bossTeams.swapReset()
zo.bossTeams.swapApply()
zo.bossTeams.save()
end
end,
}, _d("CAkaWgtmRg"))

zo.bossTeams.swapDropdown2 = zo.bossTeams.towerSection:Dropdown({
Name = _d("PRIURVlNG05X"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(zo.bossTeams.swap.team2) or 1), 1, 4),
Options = { _d("OgAUWFkI"), _d("OgAUWFkL"), _d("OgAUWFkK"), _d("OgAUWFkN") },
Callback = function(xcr)
local rbm = type(xcr) == _d("GgQXWRw") and xcr[1] or xcr
local lozh = type(rbm) == _d("HREHXBde") and tonumber(rbm:match(_d("RkARHlA"))) or nil

if lozh then
zo.bossTeams.swap.team2 = lozh
zo.bossTeams.swapReset()
zo.bossTeams.swapApply()
zo.bossTeams.save()
end

pcall(function()
zo.bossTeams.swapDropdown2:UpdateName(_d("PRIURVlNG05XVdf5m1Q") .. (rbm or _d("OgAUWFkI")))
end)

zo.bossTeams.paintSwap()
end,
}, _d("HRIURSZNGzFX"))

zo.bossTeams.swapStatus = zo.bossTeams.towerSection:Paragraph({
Header = _d("PRIURVlKAA8RAEY"),
Body = zo.bossTeams.swapStatusText(),
})

pcall(function()
local rkkc = math.clamp(math.floor(tonumber(zo.bossTeams.swap.team) or 1), 1, 4)
local iliu = math.clamp(math.floor(tonumber(zo.bossTeams.swap.team2) or 1), 1, 4)

zo.bossTeams.swapDropdown:UpdateSelection(_d("OgAUWFk") .. tostring(rkkc))
zo.bossTeams.swapDropdown:UpdateName(_d("PRIURVlNG06H9ZdZbREPCFU") .. tostring(rkkc))
zo.bossTeams.swapDropdown2:UpdateSelection(_d("OgAUWFk") .. tostring(iliu))
zo.bossTeams.swapDropdown2:UpdateName(_d("PRIURVlNG05XVdf5m1Q6ABRYWQ") .. tostring(iliu))
end)

task.spawn(function()
local pkdu = zo.bossTeams.swapStatusText()

while ply() do
local qsr = zo.bossTeams.swapStatusText()

if qsr ~= pkdu then
pkdu = qsr
zo.bossTeams.paintSwap()
end

task.wait(2)
end
end)

if zo.bossTeams.swap.on then
task.delay(2, function()
pcall(zo.bossTeams.swapApply)
end)
end

zo.bossTeams.section = hi:Section({
Side = _d("PAwSXQ0"),
})

zo.bossTeams.section:Header({
Name = _d("LAoGRlltEQ8IBg"),
})

zo.bossTeams.section:Paragraph({
Header = _d("JgoCFRtWBx1FAVAYVAdOEhpHEg"),
Body = _d("IQMTD1lXGxoNHFseGR0dRQZCEE0XBgARFVQZERgAB0xZXx0JDQEVDEoRHUUBXRwZAAsEGBUAVgFOBBlHHFgQF0UdVA9cVAIMG1AdGQEeSVVCEVAXBkUcRllNHAtFJlkWTVRfRQFQGFRUGwsZUApKVB0JGkFZC1QaBB5QChkABgBVVxhNAAIAWz9zdhpURRBUGlFUDxcQVFlbEQIKAhUfUBMGEQYVDlAABkUBXRwZAAsEGBUAVgFOFRxWEhkSARdVXA0X"),
})

zo.bossTeams.toggle = zo.bossTeams.section:Toggle({
Name = _d("LAoGRlltEQ8IBg"),
Default = false,
Callback = function(pwz)
zo.bossTeams.enabled = pwz
end,
}, _d("DAoGRiZNEQ8IBg"))

for xr, gxo in ipairs(zeya) do
local jbyk = zo.bossTeams.picked[gxo.id] or 1

jbyk = math.clamp(math.floor(tonumber(jbyk) or 1), 1, 4)
zo.bossTeams.picked[gxo.id] = jbyk

zo.bossTeams.ui[gxo.id] = zo.bossTeams.section:Dropdown({
Name = gxo.name,
Search = false,
Multi = false,
Required = false,

Default = jbyk,
Options = { _d("OgAUWFkI"), _d("OgAUWFkL"), _d("OgAUWFkK"), _d("OgAUWFkN") },
Callback = function(mbak)
local zcqy = type(mbak) == _d("GgQXWRw") and mbak[1] or mbak
local tml = type(zcqy) == _d("HREHXBde") and tonumber(zcqy:match(_d("RkARHlA"))) or nil

if tml then
zo.bossTeams.picked[gxo.id] = tml

zo.bossTeams.save()
end

pcall(function()
zo.bossTeams.ui[gxo.id]:UpdateName(gxo.name .. _d("Tof1l1k") .. (zcqy or _d("OgAUWFkI")))
end)
end,
}, _d("GgAUWCZOGxwJEWo") .. gxo.id)

pcall(function()
zo.bossTeams.ui[gxo.id]:UpdateSelection(_d("OgAUWFk") .. tostring(jbyk))
zo.bossTeams.ui[gxo.id]:UpdateName(gxo.name .. _d("Tof1l1ltEQ8IVQ") .. tostring(jbyk))
end)
end

zo.bossTeams.raidSection = hi:Section({
Side = _d("PAwSXQ0"),
})

zo.bossTeams.raidSection:Header({
Name = _d("PAQcUVltEQ8IBg"),
})

zo.bossTeams.raidSection:Paragraph({
Header = _d("JgoCFQtYHQpFAVAYVAdOEhpHEg"),
Body = _d("IQMTD1lLFQcBBhUMShFOEh1UDVwCCxdVQRxYGU4RHVBZShgBEVVUFUsRDwEMFRFWGAoWWz9zdhpURRBUGlFUHAQcUVlbEQIKAhUQSlQICgBSEU1UGQwBXVlNHAtFAVAYVFQeDBZeHF1UCAoHFRBNWg"),
})

zo.bossTeams.raidToggle = zo.bossTeams.raidSection:Toggle({
Name = _d("PAQcUVltEQ8IBg"),
Default = false,
Callback = function(pjlz)
zo.bossTeams.raidsOn = pjlz
end,
}, _d("HAQcUSZNEQ8IBg"))

for uki, kkvf in ipairs(dupz.Raids) do
if kkvf.BossTitle and kkvf.id then
local sfdn = zo.bossTeams.raidPicked[kkvf.id] or 1

sfdn = math.clamp(math.floor(tonumber(sfdn) or 1), 1, 4)
zo.bossTeams.raidPicked[kkvf.id] = sfdn

zo.bossTeams.raidUi[kkvf.id] = zo.bossTeams.raidSection:Dropdown({
Name = kkvf.BossTitle,
Search = false,
Multi = false,
Required = false,
Default = sfdn,
Options = { _d("OgAUWFkI"), _d("OgAUWFkL"), _d("OgAUWFkK"), _d("OgAUWFkN") },
Callback = function(yo)
local nwei = type(yo) == _d("GgQXWRw") and yo[1] or yo
local lxxe = type(nwei) == _d("HREHXBde") and tonumber(nwei:match(_d("RkARHlA"))) or nil

if lxxe then
zo.bossTeams.raidPicked[kkvf.id] = lxxe
zo.bossTeams.save()
end

pcall(function()
zo.bossTeams.raidUi[kkvf.id]:UpdateName(kkvf.BossTitle .. _d("Tof1l1k") .. (nwei or _d("OgAUWFkI")))
end)
end,
}, _d("GgAUWCZLFQcBKg") .. kkvf.id)

pcall(function()
zo.bossTeams.raidUi[kkvf.id]:UpdateSelection(_d("OgAUWFk") .. tostring(sfdn))
zo.bossTeams.raidUi[kkvf.id]:UpdateName(kkvf.BossTitle .. _d("Tof1l1ltEQ8IVQ") .. tostring(sfdn))
end)
end
end

task.spawn(function()
local vwc = tf()

while ply() do
local ysdr = tf()

if kpy.enabled and kpy.statusText then
ysdr = kpy.statusText()
end

ysdr = ysdr .. _d("ZG8mUAtPERxFAEVZ") .. unuw()

if ysdr ~= vwc then
vwc = ysdr
pcall(function()
eldu:UpdateBody(ysdr)
end)
end
task.wait(0.5)
end
end)

task.spawn(function()
while ply() do
for qrko, jdbg in ipairs({ _d("LAQBQRVcMxsM"), _d("LAQBQRVcMxsMRw") }) do
local quw = vklq:FindFirstChild(jdbg)
local fjmn = quw and quw:FindFirstChild(_d("LAQBQRVcJw0XEFAX"))
local wehz = quw and quw:FindFirstChild(_d("JgwRUDtYABoJEHcMTQABCw"))

if fjmn and fjmn.Visible and wehz and not wehz.Visible then
wehz.Visible = true
end
end

task.wait(0.5)
end
end)

task.spawn(function()
local qieb = false

while ply() do
if rcpg then
local advq = vklq:FindFirstChild(_d("OgoCUAtrER0QGUE+TB0"))
local ch = advq and advq:FindFirstChild(_d("PAAGQBVNMhwEGFA"))
local zezm = advq and advq:FindFirstChild(_d("KQAbUAtYAAcLEnMLWBkL"))

if zezm and zezm.Visible then
zezm.Visible = false
end

local mw = ch and ch.Visible or false

if mw and not qieb then
local wtck = ch:FindFirstChild(_d("LQkaRhx7ARoRGls"))
local plg = false

if wtck then
for qmpo, wxda in ipairs({ _d("IwoARhx7ARoRGltIehgHBh4"), _d("LwYBXA9YAAsB") }) do
local kvbc = wtck[wxda]
if kvbc then
for szat, zxl in ipairs(getconnections(kvbc)) do
pcall(function()
zxl:Fire()
end)
plg = true
end
end
end
end

if not plg then
ch.Visible = false
else
task.spawn(function()
task.wait(0.3)
if ch.Parent and ch.Visible then
ch.Visible = false
end
end)
end
end

qieb = mw
else
qieb = false
end

task.wait(0.2)
end
end)

local pa = {}

function pa.active()
return zo.enabled or zo.story
end

function pa.towerHolds()
if kpy.enabled then
return false
end

if itcd.run.enabled then
return true
end

return de.enabled and not de.paused
end

function pa.ready(uui, omif, ndk)
local lc = zo.unlocked[uui]

return (not lc or lc[omif] ~= false) and uv(uui, omif) <= ndk
end

function pa.hasReadyTarget()
local tbym = os.time()

for thj, dnfv in ipairs(iqa()) do
for mfab, ebyw in ipairs(bbut()) do
if pa.ready(dnfv, ebyw, tbym) then
return true
end
end
end

return false
end

function pa.backOff(pxev, fcp)
nt(pxev, fcp, os.time() + 5)
end

function pa.findTarget()
for yy, dk in ipairs(iqa()) do
local ski = qn(dk)
local qeum = os.time() - (zo.lastFetch[dk] or 0) > 60

if qeum and ski and not zo.walkToNpc then
epzr(ski)
task.wait(0.3)
zjl(dk)
end

for xyix, ve in ipairs(bbut()) do
if pa.ready(dk, ve, os.time()) then
return dk, ve
end
end
end

return nil
end

function zo.bossTeams.slotForFight()
if kpy.hasSlot2 == false then
return 1
end

if kpy.busy(2) then
return 1
end

return 2
end

function zo.bossTeams.slotTeam(gqok)
local lhk = vklq:FindFirstChild(_d("PQABQRBXEx0iAFw"))
local rxl = lhk and lhk:FindFirstChild(_d("PQkaQS1cFQM") .. gqok .. _d("LBABQRZX"), true)
local ikcz = rxl and rxl.Text

return ikcz and tonumber(ikcz:match(_d("RkARHlA"))) or nil
end

function zo.bossTeams.applyTeam(cwbc, abem)
cwbc = tonumber(cwbc)

if not cwbc then
return false
end

abem = tonumber(abem) or zo.bossTeams.slotForFight()

if kpy.busy(abem) then
return false
end

zo.bossTeams.lastSlot = abem

local dzy = zo.bossTeams.slotTeam(abem) or zo.bossTeams.applied[abem]

if dzy == cwbc then
return true
end

local qtkp = cjqc.remote(_d("PRIcQRpRIAsEGA"))

if not qtkp then
return false
end

local pvc = pcall(function()
qtkp:FireServer(cwbc, false, abem)
end)

zo.bossTeams.applied[abem] = cwbc
task.wait(0.2)

return pvc
end

function zo.bossTeams.apply(wfzk)
if not zo.bossTeams.enabled then
return
end

local mto = zo.bossTeams.worldOf[wfzk]
local aogy = mto and zo.bossTeams.picked[mto]

if not aogy then
return
end

zo.bossTeams.applyTeam(aogy)
end

function zo.bossTeams.applyTower(mfp, xtza)
if not zo.bossTeams.towersOn then
return false
end

local ulgq = zo.bossTeams.towerPicked[mfp]

local cn = zo.bossTeams.swapFired[mfp]

if zo.bossTeams.swap.on and type(cn) == _d("GgQXWRw") then
ulgq = cn[2] or cn[1] or ulgq
end

if not ulgq then
return false
end

return zo.bossTeams.applyTeam(ulgq, xtza)
end

function zo.bossTeams.applyRaid(sky)
if not zo.bossTeams.raidsOn then
return
end

local fpq = sky and zo.bossTeams.raidPicked[sky]

if not fpq then
return
end

zo.bossTeams.applyTeam(fpq)
end

function pa.fight(cpwd, kjpb)
local tk = qn(cpwd)

if not tk then
pa.backOff(cpwd, kjpb)
return false
end

local fzi

if zo.walkToNpc then
local xc = pmf[cpwd]

if xc then
wpse.TeleportToWorld:FireServer(xc)
task.wait(2.5)

local ifsm = qn(cpwd) or tk
local xim = ifsm:GetPivot()

fzi = rvk(xim.Position + xim.LookVector * 6, function()
return not pa.active() or not zo.walkToNpc
end)

if fzi then
zjl(cpwd)
fzi = pa.ready(cpwd, kjpb, os.time())
end
end
else
fzi = epzr(tk)
end

if not fzi then
pa.backOff(cpwd, kjpb)
return false
end

task.wait(0.4)
zo.bossTeams.apply(cpwd)
zo.activeDifficulty[cpwd] = kjpb
wpse.SetNPCDifficulty:FireServer(cpwd, kjpb)
task.wait(0.4)

zo.currentBattle = {
npcId = cpwd,
difficulty = kjpb,
}
bbr = cpwd
tpbw = kjpb
wpse.StartNPCBattle:FireServer(cpwd)
nt(cpwd, kjpb, os.time() + 10)
zo.battlePending = true
zo.battlePendingUntil = os.time() + 30
task.wait(1)

return true
end

zo.workPending = function()

if lgd.misc and lgd.misc.cards and lgd.misc.cards.inFlight then
return true
end

if not pa.active() then
return false
end

if zo.battlePending then
return true
end

local jpqe = kpy.npcSlot()

if jpqe and kpy.busy(jpqe) then
return true
end

return pa.hasReadyTarget()
end

task.spawn(function()
while ply() do

local pexs = (kpy.enabled and (lgd.enabled or wnit.enabled or lgd.worldBoss.enabled))
or pa.towerHolds()
or not kpy.slotFree(kpy.npcSlot())

or (lgd.misc and lgd.misc.cards and lgd.misc.cards.inFlight)
or (zo.battlePending and os.time() < zo.battlePendingUntil)

if pa.active() and not pexs then
local bquq, scv = pa.findTarget()

if bquq then
pa.fight(bquq, scv)
end
end

task.wait(0.5)
end
end)

task.spawn(function()
while ply() do

local zcek = {}

if lgd.enabled then
local jsm = kpy.roleSlot(_d("ABUW"))

if jsm then
table.insert(zcek, jsm)
end

if kpy.splitNpc() and jsm ~= 2 then
table.insert(zcek, 2)
end
end

local wnq = jw:FindFirstChild(_d("PAQcUSpNFRoQBg"))

if #zcek > 0 and wnq and (not wnit.enabled or kpy.splitNpc()) and (kpy.enabled or not zo.workPending()) then
for tnks, kwg in ipairs(zcek) do
local wq = wnq

local gdzc = lgd.bossFor(kwg)
local gh = wq:GetAttribute(_d("JxY6RRxX")) == true or wq:GetAttribute(_d("KAoHVhxd")) == true
local asq = gdzc ~= nil and wq:GetAttribute(_d("PAAUUQBm") .. gdzc) == true
local dg = gdzc and ilvt(gdzc)

if gdzc and lgd.pending[gdzc] and os.time() >= (lgd.pendingUntil[gdzc] or 0) then
lgd.pending[gdzc] = false
lgd.cleared[gdzc] = nil
end

if gdzc and kpy.slotFree(kwg) and gh and asq and lgd.cleared[gdzc] ~= dg and not lgd.pending[gdzc] then
local ils = mbxj[gdzc]
local srk = ils and qn(ils)
local kvz = false

if srk then
if lgd.walkToBoss then
local nmbj = xcus[gdzc]
local moa = zhiw.Character and zhiw.Character:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))
local ku = srk:GetPivot().Position
local ftt = moa and (moa.Position - ku).Magnitude <= 15

if ftt then
kvz = true
elseif nmbj then
wpse.TeleportToWorld:FireServer(nmbj)

local ahvj = os.clock()
while os.clock() - ahvj < 2.5 and lgd.enabled do
task.wait(0.1)
end

if lgd.enabled then
local thsn = qn(ils) or srk
local cve = thsn:GetPivot()
local rmde = cve.Position + cve.LookVector * 6
kvz = zm(rmde, lgd.walkSpeed, function()
return not lgd.enabled or not lgd.walkToBoss
end)
end
end

if not kvz then
kvz = epzr(srk)
end
else
kvz = epzr(srk)
end

if kvz then
task.wait(0.5)
end
end

if kvz then
lgd.inFlight[gdzc] = kwg
lgd.pending[gdzc] = true
lgd.pendingUntil[gdzc] = os.time() + 15
lgd.cleared[gdzc] = dg

local toi = lgd.difficulties[1] or _d("AAoHWBhV")
local aya = lgd.progress[gdzc]

if aya then
local tlt = aya.unlocked
local pzy = aya.cooldowns

for fqt, kxe in ipairs(lgd.difficulties) do
local uufb = not tlt or tlt[kxe] ~= false
local nyh = pzy and tonumber(pzy[kxe]) or 0

if uufb and nyh <= 0 then
toi = kxe
break
end
end
end

zo.bossTeams.applyRaid(gdzc)
wpse.SetRaidDifficulty:FireServer(toi, gdzc)
task.wait(0.3)
wpse.StartRaidBattle:FireServer(gdzc)
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while ply() do
local uekv = wnit.inBattle and os.time() < wnit.inBattleUntil

if wnit.enabled and (kpy.enabled or not zo.workPending()) and not uekv and kpy.slotFree(kpy.roomSlot()) and not (wnit.pending and os.time() < wnit.pendingUntil) then
local isjb = wnit.progress

if isjb == nil then
wpse.RequestInfiniteRoomProgress:FireServer()
task.wait(0.5)
else
local tn = nil

for qnk, qkj in ipairs(mim.Milestones) do
if mim.isMilestoneUnlocked(qkj, isjb) and not mim.isMilestoneCleared(qkj, isjb) then
tn = qkj
break
end
end

if tn then

local tzw = kpy.roomSlot()

wnit.currentRoom = tn
wnit.inBattle = true
wnit.inBattleUntil = os.time() + 60
wnit.pending = true
wnit.pendingUntil = os.time() + 10

local ecs = vklq:FindFirstChild(tzw == 2 and _d("PAAGUA17FRoRGVA/VRsBF0c") or _d("PAAGUA17FRoRGVA/VRsBFw"))
if ecs and ecs:IsA(_d("LAwbURhbGAsgA1AXTQ")) then
ecs:Fire(tn, _d("BwsTXBdQAAs6B1oWVA"))
end

local cvud = vklq:FindFirstChild(tzw == 2 and _d("PREURw1wGggMG1wNXCYBChh3GE0AAgBH") or _d("PREURw1wGggMG1wNXCYBChh3GE0AAgA"))
if cvud and cvud:IsA(_d("LAwbURhbGAsgA1AXTQ")) then
cvud:Fire(tn)
end

wpse.StartBattle:FireServer(_d("BwsTXBdQAAs6B1oWVA"), {
milestone = tn,
slot = tzw,
})
task.wait(2)
end
end
end

task.wait(1)
end
end)

local function ouy(dox, hixe)
local ryk = vklq:FindFirstChild(_d("PQYHUBxXMxsM"))

if not ryk then
return
end

local kdq = ryk:FindFirstChild(dox)
local oyq = kdq and kdq:FindFirstChild(_d("OAQZQBx1FQwAGQ"), true)
local qrqw = kdq and kdq:FindFirstChild(_d("IgQXUBU"), true)

if not kdq then
return
end

local mhx = false

if oyq then
mhx = oyq.Text == _d("IQs")
elseif qrqw then
mhx = not string.lower(qrqw.Text):find(_d("AQMT"), 1, true)
end

if mhx ~= hixe then
for llef, kmxo in ipairs(getconnections(kdq.MouseButton1Click)) do
local tgm = kmxo.Function

if type(tgm) == _d("CBAbVg1QGwA") then
pcall(tgm)
else
pcall(function()
kmxo:Fire()
end)
end
end
end
end

getgenv().ACBXSetRollButton = ouy

local function rzvo(urv)
ouy(_d("PxAcVhJrGwIJN0ANTRsA"), urv)
ouy(_d("LxABWitWGAInAEENVho"), urv)
end

getgenv().ACBXSetRollUi = rzvo
bqiq.setRollButton = ouy

pcall(function()
wpse.SaveClientData:FireServer({ autoHideBattle = false })
end)

task.defer(function()
task.wait(0.5)

local vizp = vklq:FindFirstChild(_d("LAQBQRVcMxsM"))
local dv = vizp and vizp:FindFirstChild(_d("LAQBQRVcJw0XEFAX"))
local xol = vizp and vizp:FindFirstChild(_d("JgwRUDtYABoJEHcMTQABCw"))

if xol and xol.Visible and dv and not dv.Visible and cblf() then
for un, hzy in ipairs(getconnections(xol.MouseButton1Click)) do
local buz = hzy.Function

if type(buz) == _d("CBAbVg1QGwA") then
pcall(buz)
else
pcall(function()
hzy:Fire()
end)
end
end
end
end)

rzvo(true)

task.spawn(function()
while ply() do

if bqiq.autoRoll then
ouy(_d("LxABWitWGAInAEENVho"), true)
end

if bqiq.autoQuickRoll then
ouy(_d("PxAcVhJrGwIJN0ANTRsA"), true)
end

task.wait(1)
end
end)

local function osd()

if de.floor then
return de.floor
end

local avm = vklq:FindFirstChild(_d("LAQBQRVcMxsM"))

if not avm then
return nil
end

for xagi, pxl in ipairs({ _d("OgoCUAt/GAEKB3kYWxEC"), _d("PBAbcxVWGxwpFFccVQ") }) do
local qla = avm:FindFirstChild(pxl)

if qla and qla.Visible and qla.Text then
local crln = tonumber(qla.Text:match(_d("RkARHlA")))

if crln then
return crln
end
end
end

local dndo = avm:FindFirstChild(_d("KAkaWgtqFxwAEFs"))
local fna = dndo and dndo:FindFirstChild(_d("OgoFdxhL"))
local cvt = fna and fna:FindFirstChild(_d("KAkaWgt1FQwAGQ"))

if cvt then
return tonumber(cvt.Text:match(_d("RkARHlA")))
end

return nil
end

function zo.bossTeams.swapRows(nfx)
local iuw = vklq:FindFirstChild(_d("PQABQRBXEx0iAFw"))
local zize = iuw and iuw:FindFirstChild(_d("LxABWipOFR4") .. nfx .. _d("PAoC"), true)

if not zize then
return nil
end

return zize:FindFirstChild(_d("LxABWipOFR4") .. nfx .. _d("LQ0QVhI")),
zize:FindFirstChild(_d("LxABWipOFR4") .. nfx .. _d("OgAUWA")),
zize:FindFirstChild(_d("LxABWipOFR4") .. nfx .. _d("KAkaWgs"))
end

function zo.bossTeams.swapOn(vsn)
local jgas = vklq:FindFirstChild(_d("PQABQRBXEx0iAFw"))
local xmk = jgas and jgas:FindFirstChild(_d("KQABZhxNAAcLEkY"), true)

if not xmk then
return nil
end

local faci, wkyp = pcall(function()
return xmk:Invoke()
end)

if faci and type(wkyp) == _d("GgQXWRw") then
return wkyp[vsn == 1 and _d("DxABWi1cFQM2AlQJfBoPBxlQHQ") or _d("DxABWi1cFQM2AlQJCzEABBdZHF0")] == true
end

return nil
end

function zo.bossTeams.swapBox(gfiy, dzx)
if tonumber(gfiy.Text) == dzx then
return
end

gfiy.Text = tostring(dzx)

if getconnections then
for ujp, qki in ipairs(getconnections(gfiy.FocusLost)) do
pcall(function()
qki:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end

function zo.bossTeams.swapSet(mskc, iqog, rak, qud)
local dwg, bax, eae = zo.bossTeams.swapRows(mskc)

if not (dwg and bax and eae) then
return false
end

rak = math.max(1, math.floor(tonumber(rak) or 1))
qud = math.clamp(math.floor(tonumber(qud) or 1), 1, 4)

zo.bossTeams.swapBox(eae, rak)
zo.bossTeams.swapBox(bax, qud)

local abyo = zo.bossTeams.swapOn(mskc)

if abyo ~= nil and abyo ~= (iqog == true) and getconnections then
pcall(function()
for unm, edgh in ipairs(getconnections(dwg.MouseButton1Click)) do
pcall(function()
edgh:Fire()
end)
end
end)
end

local vdb = mskc == 1 and _d("") or _d("XA")

pcall(function()
wpse.SaveClientData:FireServer({
[_d("DxABWi1cFQM2AlQJ") .. vdb .. _d("KwsUVxVcEA")] = iqog == true,
[_d("DxABWi1cFQM2AlQJ") .. vdb .. _d("OgAUWA")] = qud,
[_d("DxABWi1cFQM2AlQJ") .. vdb .. _d("KAkaWgs")] = rak,
})
end)

return true
end

function zo.bossTeams.swapApply()
local vm = zo.bossTeams
local pqf = vm.swap
local ipz = true

if pqf.on then
ipz = vm.swapSet(1, pqf.floor > 0, pqf.floor, pqf.team)
ipz = vm.swapSet(2, pqf.floor2 > 0, pqf.floor2, pqf.team2) and ipz
else
ipz = vm.swapSet(1, false, pqf.floor, pqf.team)
ipz = vm.swapSet(2, false, pqf.floor2, pqf.team2) and ipz
end

vm.swapMessage = _d("")

if not ipz then
vm.swapMessage = _d("Og0QFR5YGQtCBhU4TAABRSFQGFRUPRIURVlLGxkWVVQLXFQACgEVG0wdAhFVTBxNVENFB1ANSw0HCxIb")
end

vm.paintSwap()
end

function zo.bossTeams.swapReset(fyq)
local csy = zo.bossTeams

if fyq then
csy.swapFired[fyq] = nil
else
csy.swapFired = {}
end
end

function zo.bossTeams.swapTick()
local dmt = zo.bossTeams
local wj = dmt.swap

if not wj.on or (wj.floor <= 0 and wj.floor2 <= 0) then
if next(dmt.swapFired) ~= nil then
dmt.swapFired = {}
end

return
end

local arf = os.clock()
local cq = cjqc.remote(_d("PRIcQRpRIAsEGA"))

if arf - (dmt.swapWroteAt or 0) > 10 then
dmt.swapWroteAt = arf
dmt.swapApply()
end

local tsvc = {
{
kind = _d("GgoCUAs"),
slot = kpy.towerSlot(),

live = arf - (de.floorAt or 0) < 90,
floor = osd(),

own = true,
},
{
kind = _d("BgQHURpWBgs"),
slot = kpy.hardcoreSlot(),
live = nd.active(),
floor = nd.floorNow(),

own = false,
},
}

local blha = {
{ index = 1, floor = wj.floor, team = wj.team },
{ index = 2, floor = wj.floor2, team = wj.team2 },
}

for tbh, sofi in ipairs(tsvc) do
if not sofi.live then

dmt.swapFired[sofi.kind] = nil
elseif sofi.own and cq and sofi.floor then
local xqen = dmt.swapFired[sofi.kind]

for kei, vxkc in ipairs(blha) do
local ppch = type(xqen) == _d("GgQXWRw") and xqen[vxkc.index]

if vxkc.floor > 0 and sofi.floor == vxkc.floor and not ppch then
local azd = pcall(function()
cq:FireServer(math.clamp(math.floor(vxkc.team), 1, 4), true, sofi.slot or 1)
end)

if azd then
xqen = type(xqen) == _d("GgQXWRw") and xqen or {}
xqen[vxkc.index] = vxkc.team
dmt.swapFired[sofi.kind] = xqen

dmt.swapMessage = string.format(_d("LQQGQRVcVAgJGloLGVEKRVgVCk4dGgYdUB0ZAAFFIVAYVFRLAVs"), sofi.floor, vxkc.team)
dmt.paintSwap()
end
end
end
end
end
end

task.spawn(function()
while ply() do
pcall(zo.bossTeams.swapTick)
task.wait(0.5)
end
end)

local function czb()

return pa.active() and pa.hasReadyTarget()
end

function lgd.worldBoss.remote(nex)
local fzv = lgd.worldBoss

fzv.remotes = fzv.remotes or {}

local zgie = fzv.remotes[nex]

if zgie and zgie.Parent then
return zgie
end

local igt = cjqc.remote(nex)

if igt then
fzv.remotes[nex] = igt
end

return igt
end

function lgd.worldBoss.setRepeat(ncvb)
local jxrb = lgd.worldBoss
local fhh = jxrb.remote(_d("OQoHWR17Gx0WNFYNUBsA"))

if not fhh then
return false
end

local rrwg = jxrb.state
local wnzf = type(rrwg) == _d("GgQXWRw") and rrwg.repeatOn == true

if wnzf == (ncvb and true or false) then
jxrb.repeatIntent = nil

return true
end

if ncvb then
local nomu = workspace:FindFirstChild(_d("OQoHWR17Gx0WNEccVxU"))
local hp = nomu and (nomu:FindFirstChild(_d("LQAZWTRYDA")) or nomu)
local rloq = zhiw.Character and zhiw.Character:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if not (hp and rloq) then
return false
end

local bpb, cdxl = pcall(function()
return hp:GetPivot()
end)

if not bpb or (rloq.Position - cdxl.Position).Magnitude > 60 then
return false
end
end

if jxrb.repeatIntent == ncvb and os.clock() - (jxrb.repeatAskedAt or 0) < 20 then
return false
end

jxrb.repeatIntent = ncvb

pcall(function()
fhh:FireServer(_d("HAAFUBhN"))
end)

jxrb.repeatAskedAt = os.clock()

return true
end

function lgd.worldBoss.requestSync()
local fwct = lgd.worldBoss
local zgyo = fwct.remote(_d("OQoHWR17Gx0WNFYNUBsA"))

if zgyo then
pcall(function()
zgyo:FireServer(_d("HRwbVg"))
end)
end

fwct.askedAt = os.clock()
end

function lgd.worldBoss.hasWork()
local klj = lgd.worldBoss
local fohh = klj.state

if not klj.enabled or type(fohh) ~= _d("GgQXWRw") then
return false
end

local pwc = klj.isOpen()

if pwc == nil then
pwc = fohh.open == true
end

return pwc and fohh.inFight ~= true
end

lgd.worldBoss.bossUp = function()
local fok = lgd.worldBoss

if not fok.enabled then
return false
end

local qjj = fok.isOpen()

if qjj ~= nil then
return qjj == true
end

local sol = fok.state

return type(sol) == _d("GgQXWRw") and sol.open == true
end

function lgd.worldBoss.meter()
local ocht = lgd.worldBoss
local rad = os.clock()

if rad - (ocht.meterAt or 0) < 1 then
return ocht.meterCurrent, ocht.meterMax
end

ocht.meterAt = rad
ocht.meterCurrent = nil
ocht.meterMax = nil

local gny = jw:FindFirstChild(_d("OQoHWR17Gx0WJkEYTQEd"))
local rohk = gny and tonumber(gny:GetAttribute(_d("IwABUAs")))
local oufr = gny and tonumber(gny:GetAttribute(_d("IwABUAt0FRY")))

if rohk and oufr and oufr > 0 then
ocht.meterCurrent = rohk
ocht.meterMax = oufr

return ocht.meterCurrent, ocht.meterMax
end

local function hhn(xagx)
if type(xagx) ~= _d("HREHXBde") then
return nil
end

local aie, redj = xagx:match(_d("Rj5QUVwXKUVMUEZTES8lKDdeFFspUUw"))
local tpp = tonumber(aie)

if not tpp then
return nil
end

local vatq = ({ K = 1000, M = 1000000, B = 1000000000 })[string.upper(redj or _d(""))] or 1

return tpp * vatq
end

local ccil = vklq:FindFirstChild(_d("OQoHWR17Gx0WN1QXVxEcIgBc"))
local heu = ccil and ccil:FindFirstChild(_d("LAQbWxxL"))
local fjrl = heu and heu:FindFirstChild(_d("IwABUAt7FRw"))
local bdj = fjrl

if fjrl and not fjrl:IsA(_d("OgANQTVYFgsJ")) then
bdj = fjrl:FindFirstChild(_d("OgANQQ"))
end

local fkm = bdj and bdj:IsA(_d("OgANQTVYFgsJ")) and bdj.Text or nil

if type(fkm) == _d("HREHXBde") then
local efx, gnlq = fkm:match(_d("Rj4rGiQSXUFNWx5Q"))

ocht.meterCurrent = hhn(efx)
ocht.meterMax = hhn(gnlq)
end

return ocht.meterCurrent, ocht.meterMax
end

function lgd.worldBoss.meterFull()
local frtp, tag = lgd.worldBoss.meter()

return frtp ~= nil and tag ~= nil and tag > 0 and frtp >= tag
end

lgd.worldBoss.holdsFishing = function()
local rnf = lgd.worldBoss

if not rnf.enabled then
return false
end

if rnf.fishingMode == _d("GQQcQQ") then
return rnf.bossUp()
end

return os.clock() < (rnf.takingUntil or 0)
end

lgd.worldBoss.holdsDigging = function()
local ebgu = lgd.worldBoss

if not ebgu.enabled or ebgu.digHold ~= true then
return false
end

if not ebgu.bossUp() then
return false
end

return not (ebgu.stopAtFull and ebgu.meterFull())
end

function lgd.worldBoss.travel()
local jot = lgd.worldBoss
local rzvc = zhiw.Character
local vdr = rzvc and rzvc:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if not vdr or os.clock() < jot.travelUntil then
return
end

jot.travelUntil = os.clock() + 6

local ydjh = workspace:FindFirstChild(_d("OQoHWR17Gx0WJVoLTRUC"))
local qe = ydjh and ydjh:FindFirstChild(_d("PgoHQRhV"))

if not qe then
return
end

if (vdr.Position - qe.Position).Magnitude > 150 then
local ir = cjqc.remote(_d("OgAZUAlWBhoxGmIWSxgK"))

if ir then
pcall(function()
ir:FireServer(_d("AgoXVwA"))
end)
end

return
end

if (vdr.Position - qe.Position).Magnitude > 6 then
jot.walkLeg(qe.Position + Vector3.new(0, 3, 0), 4)

if (vdr.Position - qe.Position).Magnitude > 9 then
return
end
end

local vhx = qe:FindFirstChildOfClass(_d("PhcaTRBUHRocJUcWVAQa"))

if not vhx then
return
end

pcall(function()
if type(fireproximityprompt) == _d("CBAbVg1QGwA") then
fireproximityprompt(vhx)
else
vhx:InputHoldBegin()
task.wait(0.25)
vhx:InputHoldEnd()
end
end)
end

function lgd.worldBoss.reach()
local wjn = lgd.worldBoss

local kzao = workspace:FindFirstChild(_d("OQoHWR17Gx0WNEccVxU")) or workspace:FindFirstChild(_d("OQoHWR17Gx0WJkUYTho"), true)
local bmh = zhiw.Character
local ooqv = bmh and bmh:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if not (kzao and ooqv) then
wjn.travel()
return false
end

local ygsm = kzao:FindFirstChild(_d("LQAZWTRYDA")) or kzao
local jqly, buc = pcall(function()
return ygsm:GetPivot()
end)

if not jqly then
return false
end

local vyqc = buc.Position + buc.LookVector * 6 + Vector3.new(0, 3, 0)
local pql = Vector3.new(buc.Position.X, vyqc.Y, buc.Position.Z)

ooqv.CFrame = CFrame.lookAt(vyqc, pql)

return true
end

lgd.worldBoss.cityBounds = { 19100, 20900, -850, 850 }

function lgd.worldBoss.inArena()
local cj = zhiw.Character and zhiw.Character:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))
local ewnm = lgd.worldBoss.cityBounds

if not cj then
return false
end

local ykcs = cj.Position

return ykcs.X >= ewnm[1] and ykcs.X <= ewnm[2]
and ykcs.Z >= ewnm[3] and ykcs.Z <= ewnm[4]
end

function lgd.worldBoss.enterCity(pybu)
local ceyv = lgd.worldBoss

local mpq = os.clock() + (pybu or 30)

if ceyv.inArena() then
return true
end

while os.clock() < mpq do
if not ceyv.enabled then
return false
end

ceyv.travel()

if ceyv.inArena() then
return true
end

task.wait(0.5)
end

return ceyv.inArena()
end

lgd.worldBoss.walking = false
lgd.worldBoss.walkStartedAt = 0

function lgd.worldBoss.walkLeg(ujeo, cwo)
local eayj = lgd.worldBoss
local jgt = zhiw.Character
local bvw = jgt and jgt:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))
local wqtd = jgt and jgt:FindFirstChildOfClass(_d("JhAYVBdWHQo"))

if not (bvw and wqtd) then
return false
end

if eayj.walking and os.clock() - (eayj.walkStartedAt or 0) < 45 then
return false
end

cwo = cwo or 6

eayj.walking = true
eayj.walkStartedAt = os.clock()

local osw, tyt = pcall(function()
local lsdy = os.clock() + 40
local ahzm = 0
local itkc = bvw.Position
local vsp = os.clock()

while eayj.enabled and os.clock() < lsdy do
local jao = Vector3.new(ujeo.X - bvw.Position.X, 0, ujeo.Z - bvw.Position.Z)

if jao.Magnitude <= cwo then
return true
end

if os.clock() - ahzm >= 0.25 then
wqtd:MoveTo(Vector3.new(ujeo.X, bvw.Position.Y, ujeo.Z))
ahzm = os.clock()
end

if os.clock() - vsp >= 1.2 then
if (bvw.Position - itkc).Magnitude < 2 then
wqtd.Jump = true
end

itkc = bvw.Position
vsp = os.clock()
end

task.wait(0.1)
end

return Vector3.new(ujeo.X - bvw.Position.X, 0, ujeo.Z - bvw.Position.Z).Magnitude <= cwo
end)

pcall(function()
wqtd:MoveTo(bvw.Position)
end)

eayj.walking = false

return osw and tyt == true
end

function lgd.worldBoss.walkIn(ghn)
local sapt = lgd.worldBoss
local ssrd = workspace:FindFirstChild(_d("OQoHWR17Gx0WNEccVxU"))
local ccs = ssrd and (ssrd:FindFirstChild(_d("LQAZWTRYDA")) or ssrd) or nil
local plp = zhiw.Character and zhiw.Character:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if not (ccs and plp) then
return false
end

local ufs, clkj = pcall(function()
return ccs:GetPivot()
end)

if not ufs then
return false
end

local kzc = clkj.Position + clkj.LookVector * 6 + Vector3.new(0, 3, 0)

if (plp.Position - kzc).Magnitude <= (ghn or 10) then
return true
end

local lhor = sapt.walkLeg(kzc, ghn or 6)

if not lhor then
lhor = (plp.Position - clkj.Position).Magnitude <= 25
end

return lhor
end

function lgd.worldBoss.approach()
local rbtk = lgd.worldBoss

if not rbtk.walkToBoss then
return rbtk.reach()
end

if not rbtk.enterCity() then
return false
end

return rbtk.walkIn(10)
end

function lgd.worldBoss.fight()
local jvz = lgd.worldBoss
local jgfl = jvz.remote(_d("OQoHWR17Gx0WNFYNUBsA"))

local function expj(jlpf)
jvz.nextFightAt = os.clock() + (jlpf or 20)

return false
end

if not jgfl then
return expj(60)
end

if jvz.stopAtFull and jvz.meterFull() then
return expj(20)
end

if cibk.enabled
and (cibk.tpToBay or cibk.deepZone)
and cibk.phase ~= _d("BwEZUA") then
return false
end

jvz.takingUntil = os.clock() + 45

if not jvz.approach() then
jvz.takingUntil = os.clock() + 3

return expj(20)
end

local fmir = workspace:FindFirstChild(_d("OQoHWR17Gx0WNEccVxU"))
local wyf = fmir and (fmir:FindFirstChild(_d("LQAZWTRYDA")) or fmir) or nil
local mea = zhiw.Character and zhiw.Character:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))

if wyf and mea then
local hiks, gew = pcall(function()
return wyf:GetPivot()
end)

if not hiks or (mea.Position - gew.Position).Magnitude > 60 then
jvz.takingUntil = os.clock() + 2

return expj(10)
end
end

zo.bossTeams.applyTeam(jvz.team)

task.wait(1.4)

pcall(function()
jgfl:FireServer(_d("CAwSXQ0"))
end)

jvz.fightAt = os.clock()
jvz.holdUntil = os.clock() + 4

jvz.takingUntil = os.clock() + 0.6

if cibk.enabled and (cibk.tpToBay or cibk.deepZone) then
cibk.deepPhase = _d("BwEZUA")
cibk.deepStageAt = 0
cibk.nextCastAt = 0
end

jvz.killsAtFire = type(jvz.state) == _d("GgQXWRw") and tonumber(jvz.state.kills) or nil

if jvz.fishingMode ~= _d("GQQcQQ") and cibk.enabled
and (cibk.tpToBay or cibk.deepZone) then
jvz.nextFightAt = os.clock() + 1
end

return true
end

function lgd.worldBoss.buy(mvim)
local vgcn = lgd.worldBoss
local wrsr = vgcn.remote(_d("OQoHWR17Gx0WNFYNUBsA"))

mvim = mvim or 1

if not wrsr then
return 0
end

local qcf = 0

for nnq = 1, mvim do
local ggq = vgcn.state

if type(ggq) ~= _d("GgQXWRw") or type(ggq.shop) ~= _d("GgQXWRw") then
break
end

if os.clock() < vgcn.buyAt then
break
end

local qtcf = tonumber(ggq.medals) or 0
local yghk = nil

for buqc, kor in ipairs(ggq.shop) do
local xokr = tonumber(kor.price) or 0
local ovio = kor.kind ~= _d("BxEQWA") or (tonumber(kor.left) or 0) > 0

if vgcn.selected[kor.id] == true and ovio and kor.owned ~= true and xokr <= qtcf then
yghk = kor
break
end
end

if not yghk then
break
end

pcall(function()
wrsr:FireServer(_d("DBAM"), yghk.id, 1)
end)

qcf = qcf + 1
vgcn.bought = vgcn.bought + 1
vgcn.buyAt = os.clock() + 1.2

vgcn.syncedAt = 0
vgcn.requestSync()
task.wait(1.1)
end

return qcf
end

lgd.worldBoss.questGroups = { _d("HgAHRhZXFQI"), _d("CQkaVxhV"), _d("CAwZWQ"), _d("HAAGQQtQFxoMGls") }

function lgd.worldBoss.questRows(lajw)
local tkn = lgd.worldBoss
local pcp = type(lajw) == _d("GgQXWRw") and lajw.quests or nil
local dat = {}

if type(pcp) ~= _d("GgQXWRw") then
return dat
end

for lcqy, ehv in ipairs(tkn.questGroups) do
local qhi = pcp[ehv]

if type(qhi) == _d("GgQXWRw") then
for qhm, ise in ipairs(qhi) do
if type(ise) == _d("GgQXWRw") then
table.insert(dat, ise)
end
end
end
end

return dat
end

function lgd.worldBoss.claim()
local geai = lgd.worldBoss
local ie = geai.remote(_d("OQoHWR17Gx0WNFYNUBsA"))
local ejnc = geai.state

if not ie or type(ejnc) ~= _d("GgQXWRw") or type(ejnc.quests) ~= _d("GgQXWRw") then
return 0
end

if os.clock() < geai.claimAt then
return 0
end

local pald = geai.questRows(ejnc)

if #pald == 0 then
return 0
end

local vqns = {}

for kepv, sprx in ipairs(pald) do
if sprx.id ~= nil then
vqns[tostring(sprx.id)] = true
end
end

for tdl, eyh in pairs(geai.claimFired) do
if not vqns[tdl] or os.clock() - eyh > 120 then
geai.claimFired[tdl] = nil
end
end

local jqsg = nil

for vzf, dwkk in ipairs(pald) do
if dwkk.complete == true and dwkk.claimed ~= true and dwkk.id ~= nil then
local fxl = tostring(dwkk.id)
local bevw = geai.claimFired[fxl]

if not (bevw and os.clock() - bevw < 6) then
jqsg = dwkk
break
end
end
end

if not jqsg then
return 0
end

geai.claimFired[tostring(jqsg.id)] = os.clock()
geai.claimedTotal = geai.claimedTotal + 1

pcall(function()
ie:FireServer(_d("DQkUXBQ"), jqsg.id)
end)

geai.claimAt = os.clock() + 2
geai.syncedAt = 0
geai.requestSync()

return 1
end

lgd.worldBoss.syncRemote = lw(_d("OQoHWR17Gx0WJkwXWg"))

if lgd.worldBoss.syncRemote then
lgd.worldBoss.syncRemote.OnClientEvent:Connect(function(vwbh)
local njvw = lgd.worldBoss

if type(vwbh) ~= _d("GgQXWRw") then
return
end

njvw.state = vwbh
njvw.syncedAt = os.clock()

if vwbh.inFight == true then
njvw.wasFighting = true
elseif njvw.wasFighting then
njvw.wasFighting = false

if cibk.enabled then
pcall(cibk.recover)
end
end
end)
end

task.spawn(function()
lgd.worldBoss.requestSync()
end)

task.spawn(function()
while ply() do
local phj = lgd.worldBoss
local sprr = phj.state

if phj.autoClaim then
if os.clock() - phj.syncedAt > 4 and os.clock() - phj.askedAt > 1 then
phj.requestSync()
end

phj.claim()
end

if phj.enabled then

if os.clock() - phj.syncedAt > 4 and os.clock() - phj.askedAt > 1 then
phj.requestSync()
end

if phj.autoBuy and next(phj.selected) then
phj.buy(1)
end

local yla = type(sprr) == _d("GgQXWRw") and sprr.repeatOn == true

if phj.fishingMode == _d("GQQcQQ") then

local plsg = type(sprr) == _d("GgQXWRw") and tonumber(sprr.kills) or nil

if plsg and plsg ~= phj.seenKills then
phj.seenKills = plsg
phj.progressAt = os.clock()
end

if phj.bossUp() and not yla and os.clock() - (phj.repeatAskedAt or 0) > 20 then
if phj.approach() then
phj.repeatSeeded = true
phj.progressAt = os.clock()

phj.setRepeat(true)
end
end

if phj.hasWork() and os.clock() >= phj.holdUntil
and os.clock() - (phj.progressAt or 0) > 20
and os.clock() - (phj.kickAt or 0) > 20 then
local qcsq = czb()
local stj = kpy.roleSlot(_d("ABUW")) or 1
local wew = kpy.enabled and kpy.busy(stj)

if not qcsq and not wew then
phj.kickAt = os.clock()
phj.fight()
end
end

if not phj.bossUp() and yla and os.clock() - (phj.repeatAskedAt or 0) > 6 then
phj.repeatSeeded = false
phj.setRepeat(false)
end
elseif phj.isOpen() and yla and os.clock() - (phj.repeatAskedAt or 0) > 6 then
phj.setRepeat(false)
end

local cft = type(sprr) == _d("GgQXWRw") and tonumber(sprr.kills) or nil

if phj.killsAtFire ~= nil and cft == phj.killsAtFire
and os.clock() - (phj.fightAt or 0) > 9
and os.clock() < (phj.nextFightAt or 0)
and os.clock() >= phj.holdUntil then
phj.killsAtFire = nil
phj.nextFightAt = os.clock()
end

if phj.fishingMode ~= _d("GQQcQQ") and phj.hasWork() and os.clock() >= phj.holdUntil
and os.clock() >= (phj.nextFightAt or 0)
and not (phj.stopAtFull and phj.meterFull()) then

local ht = czb()
local ngjv = kpy.roleSlot(_d("ABUW")) or 1
local bnyi = kpy.enabled and kpy.busy(ngjv)

if not ht and not bnyi then
phj.fight()
end
end
end

local mbbj = phj.bodyText()

if phj.bodyParagraph and mbbj ~= phj.bodyShown then
phj.bodyShown = mbbj

pcall(function()
phj.bodyParagraph:UpdateBody(mbbj)
end)
end

local temy = phj.shopText()

if phj.shopParagraph and temy ~= phj.shopShown then
phj.shopShown = temy

pcall(function()
phj.shopParagraph:UpdateBody(temy)
end)
end

task.wait(0.5)
end
end)

function kpy.roomsHaveWork()
if not wnit.enabled then
return false
end

local jfu = wnit.progress

if jfu == nil then
return true
end

for dotn, vmjh in ipairs(mim.Milestones) do
if mim.isMilestoneUnlocked(vmjh, jfu) and not mim.isMilestoneCleared(vmjh, jfu) then
return true
end
end

return false
end

function kpy.raidHasWork()
if not lgd.enabled then
return false
end

local nbt = jw:FindFirstChild(_d("PAQcUSpNFRoQBg"))

if not nbt then
return false
end

if not (nbt:GetAttribute(_d("JxY6RRxX")) == true or nbt:GetAttribute(_d("KAoHVhxd")) == true) then
return false
end

for qbx, zn in ipairs({ 1, 2 }) do
local ozg = lgd.picks[zn] and lgd.bossFor(zn)

if ozg and lgd.cleared[ozg] ~= ilvt(ozg) then
return true
end
end

return false
end

function kpy.towerYields()
return czb()
or kpy.roomsHaveWork()
or kpy.raidHasWork()
or lgd.worldBoss.hasWork()
end

function kpy.towerOutranks()
return not kpy.enabled and (nd.active() or itcd.run.enabled)
end

local function zgl(pjp)
if not pjp then
return false
end

local nhjf = false

for xpt, yzi in ipairs(getconnections(pjp.MouseButton1Click)) do
local wja = yzi.Function

if type(wja) == _d("CBAbVg1QGwA") then
pcall(wja)
else
pcall(function()
yzi:Fire()
end)
end

nhjf = true
end

return nhjf
end

function ajzg()
for fzbu, dc in ipairs({ _d("LAQBQRVcMxsM"), _d("LAQBQRVcMxsMRw") }) do
local qtyw = vklq:FindFirstChild(dc)

if qtyw then
local ruyh = qtyw:FindFirstChild(_d("LAQBQRVcJw0XEFAX"))
local eoq = ruyh and ruyh:FindFirstChild(_d("PxAcVhJ+HRgAIEU7TAAaChs"))

if zgl(eoq) then
return true
end

local obc = qtyw:FindFirstChild(_d("KAkaWgtqFxwAEFs"))
local iwh = obc and obc:FindFirstChild(_d("LAoBQRZUNg8X"))
local ckt = iwh and iwh:FindFirstChild(_d("KQwDUCxJNhsRAVoX"))

if zgl(ckt) then
return true
end
end
end

local fvdq = jw:FindFirstChild(_d("PAAYWg1cBw"))
local eseb = fvdq and fvdq:FindFirstChild(_d("KQwDUCxJIAESEEc"))
local zcnt = fvdq and fvdq:FindFirstChild(_d("KwsRYRZOERw3EFgWTRE"))

if not (eseb or zcnt) then
return false
end

if eseb then
pcall(function()
eseb:FireServer()
end)
end

if zcnt then
pcall(function()
zcnt:FireServer(1)
end)
end

de.manualPause = false
de.floor = nil
cjqc.restorePause()

return true
end

local zjai = ajzg

function ajzg()

de.lastGiveUp = {
at = os.time(),
clock = os.clock(),
floor = de.floor,
parked = cjqc.parked(),
active = xhvp(),
hard = cjqc.hardNow(),
nightmare = de.nightmare == true,
caller = debug.traceback(_d(""), 2),
}

local xaez = zjai()

if xaez then
mbgb.armedAt = os.clock()
end

return xaez
end

function zh(pthk)

local pqhy = false

if pthk ~= false and xhvp() then
local xqfr = osd()

if xqfr then
pqhy = cjqc.pauseAt(true, xqfr) or pqhy

de.pauseArmed = true
end
end

for yjn, kqbg in ipairs({ _d("LAQBQRVcMxsM"), _d("LAQBQRVcMxsMRw") }) do
local umj = vklq:FindFirstChild(kqbg)

if umj then
local yqty = umj:FindFirstChild(_d("LAQBQRVcJw0XEFAX"))
local odam = yqty and yqty:FindFirstChild(_d("PxAcVhJ7BgsEHncMTQABCw"))

if odam then

if tostring(odam.Text):find(_d("jPnm"), 1, true) then
pqhy = true
elseif zgl(odam) then
pqhy = true
end
end

local ddb = umj:FindFirstChild(_d("KAkaWgtqFxwAEFs"))

if ddb and ddb.Visible then
local jii = ddb:FindFirstChild(_d("LAoBQRZUNg8X"))
local lvwc = jii and jii:FindFirstChild(_d("OgQeUDtLEQ8ON0ANTRsA"))

if zgl(lvwc) then
pqhy = true
end
end
end
end

return pqhy
end

function nd.pauseRun()
if not xhvp() then
pcall(function()
hlh:Dialog({
Title = _d("PgQARhwZPR0JFFsdGTwPFxFWFksR"),
Description = _d("IApVQRZOERxFB0AXGR0dRRlcD1xUHAwSXQ0ZGgESWRUKVlQaDRBHHBkdHUUbWg1RHQACVUEWGQQPEAZQVw"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})
end)

return
end

nd.paused = true
nd.manualPause = true
local xtcd = zh(false)

pcall(function()
hlh:Notify({
Title = _d("PgQARhwZPR0JFFsdGTwPFxFWFksR"),
Description = xtcd and _d("OgoCUAsZBhsLVUUYTAcLAVs") or _d("PBAbFRBKVAIMA1BVGRYbEVVbFhkWHAAUXllbARoRGltZXxsbCxEb"),
Lifetime = 5,
})
end)
end

function nd.giveUpRun()
if not xhvp() then
pcall(function()
hlh:Dialog({
Title = _d("KQwDUFlsBE4sBlkYVxBOLRRHHVobHAA"),
Description = _d("IApVQRZOERxFB0AXGR0dRRlcD1xUHAwSXQ0ZGgESWRUKVlQaDRBHHBkdHUUbWg1RHQACVUEWGRMHExAVDEla"),
Buttons = {
{
Name = _d("KQoBFRBN"),
},
},
})
end)

return
end

nd.gaveUp = true
nd.paused = true
local lrv = ajzg()

pcall(function()
hlh:Notify({
Title = _d("KQwDUFlsBE4sBlkYVxBOLRRHHVobHAA"),
Description = lrv and _d("KQQDUFlMBE4RHVBZWgEcFxBbDRkAARIQR1lfGAEKBxs") or _d("PBAbFRBKVAIMA1BVGRYbEVVbFhkTBxMQFQxJVAwQAUEWV1QICgBbHRc"),
Lifetime = 5,
})
end)
end

task.spawn(function()
while ply() do

pcall(cjqc.pinMode)

if de.pauseArmed and not fi.enabled
and (not de.enabled or not de.paused) then
cjqc.restorePause()

if cjqc.pauseState() ~= true then
de.pauseArmed = false
end
end

if de.enabled and not de.manualPause and kpy.towerSlot() ~= nil
and not itcd.run.enabled then

local nec = os.clock() - (de.floorAt or 0) > 12
and os.clock() - (de.battleAt or 0) > 12

local gug = kpy.towerSlot() == 1 and not de.paused
and not (fi.enabled and fi.floor > 0)
and nec
and cjqc.parked()

if gug then
de.parkedAt = de.parkedAt > 0 and de.parkedAt or os.clock()

if os.clock() - de.parkedAt >= 25 then
de.parkedAt = os.clock()
ajzg()
end
else
de.parkedAt = 0
end

local hvq = cjqc.hardPickNow()

local pws = not de.paused and not de.pending
and not (fi.enabled and fi.floor > 0)
and xhvp()
and hvq ~= nil
and hvq ~= (de.nightmare == true)

if pws then
de.modeWrongAt = de.modeWrongAt or os.clock()
else
de.modeWrongAt = nil
end

if de.modeWrongAt and os.clock() - de.modeWrongAt > 20
and os.clock() - (de.modeFixAt or 0) > 20 then
de.modeFixAt = os.clock()
de.modeWrongAt = nil
cjqc.endIfWrongMode(de.nightmare == true)
end

if (de.floorAt or 0) > 0 and not de.paused
and os.clock() - de.floorAt > 60
and os.clock() - (de.battleAt or 0) > 60
and not xhvp()
and not kpy.busy(kpy.towerSlot() or 1) then
de.floorAt = 0
de.battleAt = 0
de.floor = nil
end

if not kpy.enabled and (kpy.towerOutranks() or kpy.towerYields()) then
if not de.paused then
de.paused = true
zh()
end

elseif kpy.slotFree(kpy.towerSlot() or 1)
and (de.floorAt or 0) == 0
and not zo.bossTeams.swapHold then
local eckh = osd()
local gxyf = fi.enabled and fi.floor or 0
local uwv = gxyf > 0 and eckh ~= nil and eckh >= gxyf

if uwv then
if not de.paused then
de.paused = true
zh()
end
else

if de.paused then
de.paused = false
cjqc.restorePause()
end

if not (de.pending and os.time() < de.pendingUntil) then

zo.bossTeams.applyTower(_d("GgoCUAs"), 1)

cjqc.hardPick(de.nightmare == true)
wpse.EndTowerRemote:FireServer(1)
task.wait(0.25)

wpse.StartBattle:FireServer(_d("GgoCUAs"), { hard = de.nightmare == true })

lhq.triggered = false
lhq.weatherTriggered = false

de.floorAt = os.clock()

de.floor = nil
de.pending = true
de.pendingUntil = os.time() + 8
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while ply() do
if nd.active() and kpy.hardcoreSlot() ~= nil then
local zdo = kpy.hardcoreSlot() or 1
local neo = nd.floorNow()

local qjzf = fi.enabled and fi.floor or 0
local tvn = lhq.enabled and lhq.floor or 0

if qjzf <= 0 and not nd.stoodDown and not nd.manualPause
and not zo.bossTeams.swapHold then
nd.paused = false
end

if nd.gaveUp then

elseif tvn > 0 and neo and neo >= tvn then
nd.gaveUp = true
nd.paused = true
local oyvg = ajzg()

pcall(function()
hlh:Notify({
Title = _d("LxABWll+HRgAVWAJ"),
Description = oyvg and (_d("KQQDUFlMBE4EARURWAYKBhpHHBkSAgoaR1k") .. neo .. _d("QA")) or (_d("JgQHURpWBgtFE1kWVgZO") .. neo .. _d("ThcQVBpREQpJVVcMTVQAClVSEE8RThAFFRtMABoKGxUfVgEAAVs")),
Lifetime = 5,
})
end)
elseif neo and qjzf > 0 and neo >= qjzf then
if not nd.paused then
nd.paused = true
zh(false)
end
elseif not kpy.enabled and kpy.towerYields() then

if not nd.stoodDown then
nd.stoodDown = true
nd.paused = true
zh(false)
end
elseif nd.stoodDown then

nd.stoodDown = false
nd.paused = false
elseif not nd.paused and not zo.bossTeams.swapHold then
if kpy.slotFree(zdo) and not (nd.pending and os.time() < nd.pendingUntil) then
nd.start(zdo)
task.wait(2)
end
end
end

task.wait(1)
end
end)

function kpy.slotActivity(yykn)
if not kpy.busy(yykn) then
return nil
end

local ovj = kpy.role[yykn]
local bql = vklq:FindFirstChild(yykn == 2 and _d("LAQBQRVcMxsMRw") or _d("LAQBQRVcMxsM"))
local ujeh = bql and bql:FindFirstChild(_d("PBAbcxVWGxwpFFccVQ"))
local vok = ujeh and ujeh.Text or _d("")

if wnit.enabled and ovj == _d("ABUW") then
local rvq = vok:match(_d("MDcaWhQcB0VNUFFSEA"))

if rvq then
return _d("JwsTXBdQAAtFB1oWVAdOSFVHFlYZTg") .. rvq
end
end

if kpy.isTowerRole(ovj)
and (de.enabled or itcd.run.enabled or nd.active()) then
local kfh = vok:match(_d("MCMZWhZLUR1OXRAdEl0"))

if kfh then
return kpy.roleName(yykn) .. _d("TkhVUxVWGxxF") .. kfh
end
end

return nil
end

function kpy.statusText()
if not kpy.enabled then
return _d("LxABWllqGAERVVofX1RDRRBDHEsNGg0cWx4ZBhsLBhUWV1QdCRpBWQha")
end

local kezl = {}

for aags = 1, 2 do
local ea = _d("PQkaQVk") .. tostring(aags) .. _d("TkhV")
local gxgi = kpy.slotActivity(aags)

if aags == 2 and kpy.hasSlot2 == false then
ea = ea .. kpy.roleLabel(aags) .. _d("TkhVWRZaHwsBVR0XXBEKFlVBEVxUKhAUWVl7FRoRGVBZahgBEVw")
elseif gxgi then
ea = ea .. gxgi
elseif kpy.busy(aags) then
ea = ea .. kpy.roleLabel(aags) .. _d("TkhVUxBeHBoMG1I")
else
ea = ea .. kpy.roleLabel(aags) .. _d("TkhVXB1VEQ")
end

table.insert(kezl, ea)
end

return table.concat(kezl, _d("ZG8"))
end

task.spawn(function()
while ply() do
kpy.hasSlot2 = kpy.detectSlot2()
task.wait(5)
end
end)

task.spawn(function()
while ply() do

if not nd.island and fi.enabled and fi.floor > 0 then
local wjsv = osd()

if wjsv and wjsv >= fi.floor then
if not fi.triggered then
fi.triggered = true
zh()

pcall(function()
wpse.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = wjsv,
})
end)
end
else
fi.triggered = false
end
end

if not nd.island and lhq.enabled and lhq.floor > 0 then
local pugn = osd()

if pugn and pugn >= lhq.floor then

if not lhq.triggered and xhvp() then
lhq.triggered = true
local xsk = ajzg()

pcall(function()
hlh:Notify({
Title = _d("LxABWll+HRgAVWAJ"),
Description = xsk and (_d("KQQDUFlMBE4EARUfVRsBF1U") .. pugn .. _d("QA")) or (_d("KAkaWgsZ") .. pugn .. _d("ThcQVBpREQpJVVcMTVQAClVSEE8RThAFFRtMABoKGxUfVgEAAVs")),
Lifetime = 5,
})
end)
end
else
lhq.triggered = false
end
end

if not nd.island and lhq.weatherEnabled then
local epe = osd()
local ipeu = lhq.weatherMinFloor <= 0
or (epe ~= nil and epe >= lhq.weatherMinFloor)
local vakn = ipeu and lhq.weatherWanted() or nil

if vakn then
if not lhq.weatherTriggered
and lhq.weatherGivenFor ~= lhq.weatherNow
and xhvp() then
lhq.weatherTriggered = true
lhq.weatherGivenFor = lhq.weatherNow

local af = ajzg()

pcall(function()
hlh:Notify({
Title = _d("OQAUQRFcBk4iHEMcGSEe"),
Description = af
and (_d("KQQDUFlMBE4EARUfVRsBF1U") .. tostring(epe) .. _d("TgwbFQ") .. vakn .. _d("QA"))
or (vakn .. _d("TgwGFQxJWE4HAEFZVxtOAhxDHBkBHkUXQA1NGwBFFFsKThEcABEb")),
Lifetime = 5,
})
end)
end
else
lhq.weatherTriggered = false
end
end

task.wait(1)
end
end)

task.spawn(function()
if wpse.WeatherChanged then
pcall(function()
wpse.WeatherChanged.OnClientEvent:Connect(function(fzb)

lhq.weatherNow = nil
lhq.weatherAt = 0
lhq.weatherGivenFor = nil
mbgb.weatherSpent = nil

if type(fzb) == _d("HREHXBde") then
lhq.weatherNow = fzb
end
end)
end)
end

while ply() do
if os.clock() - lhq.weatherAt > 5 then
lhq.weatherAt = os.clock()

if wpse.RequestWeatherState then
local lob, uqs = pcall(function()
return wpse.RequestWeatherState:InvokeServer()
end)

if lob and type(uqs) == _d("HREHXBde") then
if lhq.weatherNow ~= nil and lhq.weatherNow ~= uqs then
mbgb.weatherSpent = nil
lhq.weatherGivenFor = nil
end

lhq.weatherNow = uqs
end
end
end

task.wait(1)
end
end)

task.spawn(function()
local van = nil
local we = nil
local fnve = 0

while ply() do

if (mbgb.onWeather or mbgb.afterGiveUp) and os.clock() - fnve > 60 then
fnve = os.clock()

pcall(function()
wpse.RequestItemSync:FireServer()
end)
end

if mbgb.onWeather and next(mbgb.weatherPotions) ~= nil then
local yob = lhq.weatherWanted(mbgb.weathers)

if yob and lhq.weatherNow ~= mbgb.weatherSpent then

mbgb.weatherSpent = lhq.weatherNow
mbgb.pop(mbgb.weatherPotions, mbgb.weatherAmount, _d("OQAUQRFcBk4") .. yob)
end
end

if mbgb.afterGiveUp and next(mbgb.giveUpPotions) ~= nil and mbgb.armedAt > 0 then

local eqp = os.clock() - mbgb.armedAt

if not xhvp() or eqp >= 3 then
if eqp <= 30 then
mbgb.armedAt = 0
mbgb.pop(mbgb.giveUpPotions, mbgb.giveUpAmount, _d("LwMBUAsZEwcTEBUMSQ"))
else

mbgb.armedAt = 0
end
end
end

local gqfg = mbgb.status()

if gqfg ~= van then
van = gqfg

pcall(function()
mbgb.weatherParagraph:UpdateBody(gqfg)
end)
end

local owq = mbgb.giveUpStatus()

if owq ~= we then
we = owq

pcall(function()
mbgb.giveUpParagraph:UpdateBody(owq)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while ply() do
local eezs = cibk.stick

if eezs.enabled and os.clock() >= eezs.at then
eezs.at = os.clock() + 3

local hkls = nil

for kat, yfqp in ipairs(workspace:GetDescendants()) do
if (yfqp:IsA(_d("LAQGUClYBho")) or yfqp:IsA(_d("IwoRUBU")))
and eezs.names[string.lower(yfqp.Name)] then
hkls = yfqp
break
end
end

local bqxd = zhiw.Character
local hav = bqxd and bqxd:FindFirstChild(_d("JhAYVBdWHQo3GloNaRUcEQ"))
local pro = hkls and (hkls:IsA(_d("LAQGUClYBho")) and hkls or hkls:FindFirstChildWhichIsA(_d("LAQGUClYBho"), true))

if pro and hav then
local dqf = pro:FindFirstChildWhichIsA(_d("PhcaTRBUHRocJUcWVAQa"))
or (hkls ~= pro and hkls:FindFirstChildWhichIsA(_d("PhcaTRBUHRocJUcWVAQa"), true))

if (hav.Position - pro.Position).Magnitude > 4 then
pcall(function()
bqxd:PivotTo(CFrame.new(pro.Position + Vector3.new(0, 3, 0)))
end)

task.wait(0.4)
end

if dqf then
pcall(function()
dqf:InputHoldBegin()
task.wait(0.2)
dqf:InputHoldEnd()
end)
end

eezs.hits = eezs.hits + 1
eezs.last = _d("HgwWXhxdVBsVVVQNGQ") .. math.floor(pro.Position.X) .. _d("QkU") .. math.floor(pro.Position.Z)

pcall(function()
hlh:Notify({
Title = _d("IhAWXllqAAcGHg"),
Description = eezs.last,
Lifetime = 4,
})
end)
elseif hkls then
eezs.last = _d("CAoAWx0Z") .. hkls:GetFullName() .. _d("QkUbWg1RHQACVUEWGQcaBBtRWVYa")
else
eezs.last = _d("AApVRg1QFwVFHFtZTRwLRQJaC1UQ")
end
end

task.wait(1)
end
end)

getgenv().ACBXStick = cibk.stick

task.spawn(function()

local cjze = game:GetService(_d("OAwHQQxYGCcLBUANdBUABBJQCw"))

local function xvhn()
local svj = zhiw.Character
local gxw = svj and svj:FindFirstChildOfClass(_d("JhAYVBdWHQo"))

if gxw and gxw.Health > 0 then
pcall(function()
gxw.Jump = true
end)
end

pcall(function()
cjze:SendKeyEvent(true, Enum.KeyCode.Space, false, zhiw)
end)

task.wait(0.05)

pcall(function()
cjze:SendKeyEvent(false, Enum.KeyCode.Space, false, zhiw)
end)

ynp.jumps = ynp.jumps + 1
end

while ply() do
if ynp.enabled and os.clock() >= ynp.nextAt then
ynp.nextAt = os.clock() + 300
xvhn()
end

task.wait(1)
end
end)

hlh:SetState(true)

task.defer(function()
local xco
for amd, xqw in ipairs(game:GetService(_d("LQoHUD5MHQ")):GetDescendants()) do
if xqw:IsA(_d("OgANQTVYFgsJ")) and xqw.Text == mlf then
xco = xqw
break
end
end

if not xco then
return
end

local juv = xco
while juv and not (juv:IsA(_d("KBcUWBw")) and juv.AbsoluteSize.X >= 600 and juv.AbsoluteSize.Y >= 400) do
juv = juv.Parent
end

if juv then
juv.AnchorPoint = Vector2.new(0, 0)

local syc = juv.AbsoluteSize
juv.Position = UDim2.new(0.5, -syc.X / 2, 0.5, -syc.Y / 2 - 20)
end
end)

task.defer(function()
task.wait(0.1)

for jsx, jzkz in ipairs(game:GetService(_d("LQoHUD5MHQ")):GetDescendants()) do
if jzkz:IsA(_d("PQYHWhVVHQACM0cYVBE")) and jzkz.Name == _d("KwkQWBxXAB02FkcWVRgHCxI") then
jzkz.CanvasPosition = Vector2.new(0, 0)
end
end
end)

getgenv().ACBXTowerRunActive = xhvp
getgenv().ACBXWindow = hlh

sr.url = _d("BhEBRQoDW0ECHEYNFxMHER1AG0wHCxcWWhdNEQARW1YWVFstB0d6VgkWWVAWAUkPTFZXQlQdCEdeABYMSQhCDQBEDUAIFV4GWkcYTlsPBhdNV1UBDw")
sr.versionUrl = _d("BhEBRQoDW0ECHEYNFxMHER1AG0wHCxcWWhdNEQARW1YWVFstB0d6VgkWWVAWAUkPTFZXQlQdCEdeABYMSQhCDQBEDUAIFV4GWkcYTlsYAAdGEFYaQBENQQ")

function sr.fetch(bm)

local qbyr, vhe = pcall(function()
return game:HttpGet(bm .. _d("URNI") .. os.time() .. _d("SBdI") .. math.random(1, 100000))
end)

if not qbyr or type(vhe) ~= _d("HREHXBde") or #vhe == 0 then
return nil
end

if vhe:find(_d("MFFFAQ")) or vhe:find(_d("MCsaQVl/GxsLEQ")) then
return nil
end

return vhe
end

function sr.check()
if sr.buildId == _d("CgAD") then
return nil, _d("CgADFRtMHQIB")
end

if sr.checking then
return nil, _d("DBAGTA")
end

sr.checking = true
local oect = sr.fetch(sr.versionUrl)
sr.checking = false

if not oect then
return nil, _d("AApVQxxLBwcKGxUfUBgL")
end

local ojn = oect:match(_d("MEAGH1EXWUdABh9d")) or _d("")
ojn = ojn:gsub(_d("SxZfP1cTUA"), _d(""))

if ojn == _d("") or not sr.newer(ojn) then
return nil, _d("DRAHRxxXAA")
end

return ojn
end

function sr.newer(vwsq)
local function xql(spsa)
local fld, ow = tostring(spsa or _d("")):match(_d("GFpdEB0cEEsBUFFcXVEKTFAYURwQSwFQUVxdXQ"))

return fld and (fld .. ow) or nil
end

local function tfhz(vwwc)
local yba = tostring(vwwc or _d(""))

if not yba:match(_d("MEARHlwXS0sBXxE")) then
return nil
end

local rrm = {}

for vtuv in yba:gmatch(_d("SwFe")) do
rrm[#rrm + 1] = tonumber(vtuv) or 0
end

return #rrm > 0 and rrm or nil
end

local hwuo, jue = tfhz(vwsq), tfhz(sr.buildId)

if hwuo and jue then
for omxl = 1, math.max(#hwuo, #jue) do
local rxgd = hwuo[omxl] or 0
local uw = jue[omxl] or 0

if rxgd ~= uw then
return rxgd > uw
end
end

return false
end

if hwuo or jue then
return hwuo ~= nil
end

local nhzk, kzt = xql(vwsq), xql(sr.buildId)

if not nhzk or not kzt then
return tostring(vwsq) ~= tostring(sr.buildId)
end

return nhzk > kzt
end

function sr.busy()
if zo.battlePending or zo.currentBattle then
return true
end

local ooms = getgenv().ACBXTowerRunActive

if type(ooms) == _d("CBAbVg1QGwA") then
local xqp, smg = pcall(ooms)

if xqp and smg then
return true
end
end

return false
end

function sr.apply(gnd)
if sr.applying then
return false
end

sr.applying = true

local kejo = sr.fetch(sr.url)

if not kejo then
sr.applying = false
warn(_d("NSQ2dyFkVBsVEVQNXE5OBhpAFV1UAAoBFR1WAwAJGlQdGQ") .. tostring(gnd) .. _d("QkUGQRhAHQACVVoXGQ") .. sr.buildId)

pcall(function()
hlh:Notify({
Title = _d("OxURVA1cVAgEHFkcXQ"),
Description = _d("LQoAWR0ZGgERVVEWThoCChRRWQ") .. tostring(gnd) .. _d("QEUmQRBVGE4XAFsXUBoJRQ") .. sr.buildId .. _d("QA"),
Lifetime = 8,
})
end)

return false
end

local vfn, qqal = loadstring(kejo)

if not vfn then
sr.applying = false
warn(_d("NSQ2dyFkVBsVEVQNXE5O") .. tostring(gnd) .. _d("TgEaUAoZGgERVVYWVAQHCRAVVBk") .. tostring(qqal))

pcall(function()
hlh:Notify({
Title = _d("OxURVA1cVBwAH1AaTREK"),
Description = _d("LBAcWR0Z") .. tostring(gnd) .. _d("TgMUXBVcEE4RGhUaVhkeDBlQVxknGgwZWVlLAQALHFseGQ") .. sr.buildId .. _d("QA"),
Lifetime = 8,
})
end)

return false
end

pcall(function()
hlh:Notify({
Title = _d("OxURVA1QGgk"),
Description = _d("PAAZWhhdHQACVQ") .. sr.buildId .. _d("TkhLFQ") .. gnd .. _d("QA"),
Lifetime = 4,
})
end)

task.wait(0.4)

sr.cameFrom = sr.buildId
getgenv().ACBXUpdatedFrom = sr.buildId

pcall(function()
hlh:Unload()
end)

getgenv().ACBXWindow = nil

task.wait(0.5)

local jp, uhfc = pcall(vfn)

if not jp then
sr.applying = false
warn(_d("NSQ2dyFkVBsVEVQNXE5O") .. tostring(gnd) .. _d("ThEdRxxOVAELVVkWWBBOSFU") .. tostring(uhfc))
return false
end

return true
end

sr.cameFrom = getgenv().ACBXUpdatedFrom

task.defer(function()
if sr.cameFrom then
getgenv().ACBXUpdatedFrom = nil
print(_d("NSQ2dyFkVAwQHFkdGQ") .. sr.buildId .. _d("Tk0ARR1YAAsBVVMLVhlO") .. tostring(sr.cameFrom) .. _d("Rw"))

pcall(function()
hlh:Notify({
Title = _d("OxURVA1cEA"),
Description = _d("PBAbWxBXE04") .. sr.buildId .. _d("QkUTRxZUVA") .. tostring(sr.cameFrom) .. _d("QA"),
Lifetime = 6,
})
end)

return
end

print(_d("NSQ2dyFkVAwQHFkdGQ") .. sr.buildId)
end)

task.spawn(function()

task.wait(8)

while ply() do
if not sr.enabled then

task.wait(5)
else
local heri = sr.check()
local opn = sr.interval

if heri then
if sr.pendingVersion ~= heri or not sr.pendingSince then
sr.pendingVersion = heri
sr.pendingSince = os.clock()
end

local toy = os.clock() - (sr.pendingSince or os.clock())

if not sr.busy() or toy >= sr.forceAfter then
if sr.apply(heri) then

nlop = false
return
end

sr.pendingSince = os.clock()
opn = sr.retry
else
opn = sr.retry
end
else
sr.pendingVersion = nil
sr.pendingSince = nil
end

task.wait(opn)
end
end
end)
getgenv().ACBXUpdater = sr

task.defer(function()
task.wait(0.9)

local vrl = bqiq.loadUi()

if type(vrl) ~= _d("GgQXWRw") then
return
end

print(_d("NSQ2dyFkVAIKGl5ZSxEdERpHHF1OTg") .. tostring(vrl.theme) .. _d("TgQBFQ") .. tostring(vrl.scale))
end)

local function uayh()
if not ply() then
return
end

local eh = false
local wxd = false

pcall(function()
eh = de.nightmareToggle:GetState() == true
wxd = de.ui:GetState() == true
end)

if not (eh or wxd) then
return
end

de.nightmare = eh
de.enabled = true
de.manualPause = false
de.paused = false
de.parkedAt = 0
de.modeWrongAt = nil
de.pending = false
de.pendingUntil = 0

cjqc.restorePause()
de.pauseArmed = false
cjqc.hardPick(eh)

if not xhvp() then
de.floorAt = 0
de.battleAt = 0
de.floor = nil
end

print(_d("NSQ2dyFkVBoKAlALGQYLFgBYHF1UDwMBUAsZBgsJGlQdA1Q") .. (eh and _d("AAwSXQ1UFRwA") or _d("AAoHWBhV")))
end

task.defer(function()
task.wait(1)

local yat = bqiq.autoLoadName()

if not yat then
return
end

local am, oty = bqiq.load(yat)

task.delay(2, uayh)

bqiq.selected = yat
bqiq.lastText = am and (_d("LxABWllVGw8BEFFZ") .. yat .. _d("QA"))
or (_d("LxABWllVGw8BVVMYUBgLAU8V") .. tostring(oty))
bqiq.savesAt = 0

pcall(function()
bqiq.fileDropdown:UpdateSelection(yat)
end)

pcall(function()
hlh:Notify({
Title = _d("LQobUxBe"),
Description = am and (_d("IgoUURxdVA") .. yat .. _d("TgobFQpNFRwRWw"))
or (_d("LQoAWR0ZGgERVVkWWBBO") .. yat .. _d("VEU") .. tostring(oty)),
Lifetime = 5,
})
end)
end)

task.defer(function()
task.wait(3)

if bqiq.autoLoadName() then
return
end

uayh()
end)
