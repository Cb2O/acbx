local _d = (function()
local A = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local M = {}
local cache = {}
for i = 1, #A do
M[string.sub(A, i, i)] = i - 1
end
local K = string.char(51, 101, 52, 99, 111, 98, 108)
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

local pdbr = "ACB Rebirth v0.9993"

local function yqf(gna)
for nxwd, nsg in ipairs(gna:GetDescendants()) do
if nsg:IsA(_d("ZwBMFyMDDlYJ")) and nsg.Text == pdbr then
local frh = nsg
while frh and not frh:IsA(_d("YAZGBgoMK0YM")) do
frh = frh.Parent
end
return frh
end
end
end

local function dj()
local fa = game:GetService(_d("YwlVGgoQHw")).LocalPlayer

for ywop, dnij in ipairs({
(gethui and gethui() or game:GetService(_d("cApGBigXBQ"))),
game:GetService(_d("cApGBigXBQ")),
fa and fa:FindFirstChild(_d("YwlVGgoQK0YM")),
}) do
for kbfn, cky in ipairs(dnij:GetChildren()) do

if cky:IsA(_d("YAZGBgoMK0YM")) then
local spb = cky:FindFirstChild(_d("cQRHBg"))

if spb and spb:FindFirstChild(_d("YAxQBg0DHg")) and spb:FindFirstChild(_d("cApaFwoMGA")) then
return cky
end
end
end
end
end

if dj() and getgenv().ACBXAllowReload ~= true then
local vq = getgenv().ACBXWindow
local xiye = false
local qxfl = false

if vq and vq.Dialog then
pcall(function()
if vq.GetState and vq:GetState() == false then
vq:SetState(true)
end

vq:Dialog({
Title = _d("ciZ2Qz0HDloXQAtPCx8TBFgRCgMISkVGFgEMBV0C"),
Description = _d("ckVXDB8bTFoWFAIDEAlSAU1DAw0NVwBQQwYMTEcNXRBPEQlAFl0MAUxMYQBEDw4BCRMMQEMYCxhbRUALBhFMXAtRXE82BFZFRhYBDAVdAhQAABIVExZADB8RTFUMRhAbTkxAChQMAQ4VEwpaBk8HGlYXFAcdCxpWFhQXBwdMUgZXDBoMGB0"),
Buttons = {
{
Name = _d("YQBEDw4BCQ"),
Callback = function()
qxfl = true
xiye = true
end,
},
{
Name = _d("eABREw"),
Callback = function()
xiye = true
end,
},
},
})
end)
else

qxfl = true
xiye = true
end

local auu = os.clock() + 90

while not xiye and os.clock() < auu do
task.wait(0.25)
end

if not qxfl then
warn(_d("aCR3ITc/TF8KVQdPEAlVEEcGC0JBExFcBk8BA0McFBcHAxgTDEdDHRcCXQxaBE8RGFIcR01PIQBaBl9DPQccXwRXBk8WAxMWQwIfQgVHSRQMHUIZQAAUNgEOA1IBFBAMEAVDERQKAUIFRxYUMAoWGFoLUxBPFg1RSw"))

return
end

warn(_d("aCR3ITc/TEEARA8OAQVdAhQXBwdMQRBaDQYMCxMGWxMWQhtaEVxDGwoFQEVbDQpM"))
end

getgenv().ACBXAllowReload = nil

local yya = getgenv().ACBXWindow
if yya then
pcall(function()
yya:Unload()
end)
end

for nrn, pku in ipairs({
game:GetService(_d("cApGBigXBQ")),
game:GetService(_d("YwlVGgoQHw")).LocalPlayer:FindFirstChild(_d("YwlVGgoQK0YM")),
}) do
if pku then
local fb = yqf(pku)
if fb then
fb:Destroy()
end
end
end

local cvo = game:GetService(_d("YwlVGgoQHw"))
local gs = game:GetService(_d("YQBEDwYBDUcAUDAbDR5SAlE"))
local vxhs = game:GetService(_d("YwRACwkLAlcMWgQ8Bx5FDFcG"))
local egx = game:GetService(_d("YRBaMAoQGloGUQ"))
local vr = cvo.LocalPlayer
local cmup = vr:WaitForChild(_d("YwlVGgoQK0YM"))

local ftc = false

local function wgp()
pcall(function()
local kftj = game:GetService(_d("ZxJRBgExCUETXQAK"))
local pf = (gethui and gethui()) or cmup
local ha = Color3.fromRGB(77, 166, 255)
local zbe = vr.DisplayName

local function kjku(wm, pct, knky)
kftj:Create(
wm,
TweenInfo.new(pct, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
knky
):Play()
task.wait(pct)
end

local lmq = Instance.new(_d("YAZGBgoMK0YM"))
lmq.Name = _d("ciZ2OyYMGEEK")
lmq.IgnoreGuiInset = true
lmq.DisplayOrder = 1000000
lmq.ResetOnSpawn = false
lmq.Parent = pf

local yywl = Instance.new(_d("dRdVDgo"))
yywl.Size = UDim2.fromScale(1, 1)
yywl.BackgroundColor3 = Color3.fromRGB(4, 6, 11)
yywl.BackgroundTransparency = 1
yywl.BorderSizePixel = 0
yywl.Parent = lmq

local pu = Instance.new(_d("dRdVDgo"))
pu.AnchorPoint = Vector2.new(0.5, 0.5)
pu.Position = UDim2.fromScale(0.5, 0.5)
pu.Size = UDim2.fromOffset(400, 176)
pu.BackgroundColor3 = Color3.fromRGB(11, 16, 26)
pu.BackgroundTransparency = 1
pu.BorderSizePixel = 0
pu.Parent = lmq

local gj = Instance.new(_d("Zix3DB0MCUE"))
gj.CornerRadius = UDim.new(0, 14)
gj.Parent = pu

local ud = Instance.new(_d("ZixnFx0NB1Y"))
ud.Color = Color3.fromRGB(46, 60, 86)
ud.Thickness = 1
ud.Transparency = 1
ud.Parent = pu

local npx = Instance.new(_d("dRdVDgo"))
npx.Size = UDim2.fromOffset(44, 2)
npx.Position = UDim2.new(0.5, -22, 0, 34)
npx.BackgroundColor3 = ha
npx.BorderSizePixel = 0
npx.BackgroundTransparency = 1
npx.Parent = pu

local jgb = Instance.new(_d("ZwBMFyMDDlYJ"))
jgb.BackgroundTransparency = 1
jgb.Size = UDim2.new(1, -48, 0, 48)
jgb.Position = UDim2.fromOffset(24, 42)
jgb.Font = Enum.Font.GothamBold
jgb.Text = _d("cCcUKzog")
jgb.TextSize = 28
jgb.TextYAlignment = Enum.TextYAlignment.Center
jgb.TextColor3 = Color3.fromRGB(236, 242, 255)
jgb.TextTransparency = 1
jgb.Parent = pu

local dfxh = Instance.new(_d("ZwBMFyMDDlYJ"))
dfxh.BackgroundTransparency = 1
dfxh.Size = UDim2.new(1, -48, 0, 20)
dfxh.Position = UDim2.fromOffset(24, 94)
dfxh.Font = Enum.Font.Gotham
dfxh.Text = _d("XwpVBwYMCw")
dfxh.TextSize = 14
dfxh.TextColor3 = Color3.fromRGB(150, 163, 186)
dfxh.TextTransparency = 1
dfxh.Parent = pu

local ct = Instance.new(_d("dRdVDgo"))
ct.Size = UDim2.fromOffset(240, 3)
ct.Position = UDim2.new(0.5, -120, 0, 130)
ct.BackgroundColor3 = Color3.fromRGB(34, 44, 64)
ct.BorderSizePixel = 0
ct.BackgroundTransparency = 1
ct.Parent = pu

local gpj = Instance.new(_d("dRdVDgo"))
gpj.Size = UDim2.fromScale(0, 1)
gpj.BackgroundColor3 = ha
gpj.BorderSizePixel = 0
gpj.BackgroundTransparency = 1
gpj.Parent = ct

local bz = Instance.new(_d("Zix3DB0MCUE"))
bz.CornerRadius = UDim.new(0, 4)
bz.Parent = ct

local cne = Instance.new(_d("Zix3DB0MCUE"))
cne.CornerRadius = UDim.new(0, 4)
cne.Parent = gpj

kjku(yywl, 0.35, { BackgroundTransparency = 0.15 })
task.spawn(function()
kjku(pu, 0.3, { BackgroundTransparency = 0 })
end)
task.spawn(function()
kjku(ud, 0.3, { Transparency = 0 })
end)
kjku(jgb, 0.3, { TextTransparency = 0 })
kjku(npx, 0.3, { BackgroundTransparency = 0 })
kjku(dfxh, 0.3, { TextTransparency = 0 })
kjku(ct, 0.3, { BackgroundTransparency = 0 })
kjku(gpj, 0.3, { BackgroundTransparency = 0 })

local deil = { _d("XwpVBwYMCw"), _d("XwpVBwYMCx0"), _d("XwpVBwYMCx1L"), _d("XwpVBwYMCx1LGg") }
task.spawn(function()
kftj:Create(gpj, TweenInfo.new(1.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
Size = UDim2.fromScale(1, 1),
}):Play()
for hbqc = 1, 6 do
dfxh.Text = deil[(hbqc - 1) % #deil + 1]
task.wait(0.2)
end
end)
task.wait(1.2)

kjku(jgb, 0.2, { TextTransparency = 1 })
kjku(dfxh, 0.2, { TextTransparency = 1 })
kjku(ct, 0.2, { BackgroundTransparency = 1 })
kjku(gpj, 0.2, { BackgroundTransparency = 1 })

jgb.Text = _d("Zw1VDQQRTFUKRkMaEQVdAhQOFkIfUBddExs")
jgb.TextSize = 22
jgb.TextWrapped = true
dfxh.Text = pdbr
kjku(jgb, 0.25, { TextTransparency = 0 })
kjku(dfxh, 0.25, { TextTransparency = 0 })
task.wait(1.1)
kjku(jgb, 0.2, { TextTransparency = 1 })
kjku(dfxh, 0.2, { TextTransparency = 1 })

jgb.Text = _d("ZABYAAAPCRM") .. zbe .. _d("EzFbQywgTHsQVg")
jgb.TextSize = 22
dfxh.Text = _d("QBFVERsLAlQ")
kjku(jgb, 0.3, { TextTransparency = 0 })
kjku(dfxh, 0.3, { TextTransparency = 0 })
task.wait(1.3)

kjku(jgb, 0.25, { TextTransparency = 1 })
kjku(dfxh, 0.25, { TextTransparency = 1 })
kjku(yywl, 0.35, { BackgroundTransparency = 1 })

lmq:Destroy()
end)

ftc = true
end

task.spawn(wgp)

local lh = gs:WaitForChild(_d("YQBZDBsHHw"))

local function aam(jnt, nk)
local ia = lh:FindFirstChild(jnt)

if ia then
return ia
end

local ob = lh:WaitForChild(jnt, nk or 3)

if not ob then
warn(_d("ciZ2O1VCHlYIWxcKQks") .. jnt .. _d("FEVaDE8OA10CURFPBxRaFkAQTwsCExFcChxCC1IIUUMZBx5ADFsNT09MRw1VF08ECVIRQREKQgVARVsFCQ"))
end

return ob
end

local pzta = {
StartNPCBattle = aam(_d("YBFVERssPHAnVRcbDgk")),
NPCBattleResult = aam(_d("fTV3IQ4WGF8AZgYcFwBH")),
SyncNPCCooldowns = aam(_d("YBxaACEyL3AKWw8LDRtdFg")),
SetNPCDifficulty = aam(_d("YABALT8hKFoDUgoMFwBHHA")),
StartRaidBattle = aam(_d("YBFVERswDVoBdgIbFgBW")),
SetRaidDifficulty = aam(_d("YABAMQ4LCHcMUgUGARlfEU0")),
RaidProgress = aam(_d("YQRdBz8QA1QXURAc")),
RequestRaidProgress = aam(_d("YQBFFgoRGGEEXQc/EANUF1EQHA")),
SyncInfiniteRoomProgress = aam(_d("YBxaACYMCloLXRcKMANcCGQRAAUeVhZH")),
BuyRaidItem = aam(_d("cRBNMQ4LCHoRUQ4")),
RaidShopState = aam(_d("YQRdBzwKA0M2QAIbBw")),
RaidNotify = aam(_d("YQRdByENGFoDTQ")),
SyncItems = aam(_d("YBxaACYWCV4W")),

UseItem = aam(_d("ZhZRKhsHAQ")),
RequestWeatherState = aam(_d("YQBFFgoRGGQAVRcHBx5gEVUXCg")),
WeatherChanged = aam(_d("ZABVFwcHHnANVQ0IBwg")),
FishingUpdate = aam(_d("dQxHCwYMC2YVUAIbBw")),
FishingThrow = aam(_d("dQxHCwYMC2cNRgwY")),
FishingReel = aam(_d("dQxHCwYMC2EAUQ8")),
FishingStop = aam(_d("dQxHCwYMC2ARWxM")),

FishingIslandTeleport = aam(_d("dQxHCwYMC3oWWAIBBjhWCVETABAY")),

SyncCollection = aam(_d("YBxaACwNAF8AVxcGDQI")),
RequestSync = aam(_d("YQBFFgoRGGAcWgA")),
ClaimIndexReward = aam(_d("cAlVCgIrAlcATDEKFQ1BAQ")),
RequestAchievements = aam(_d("YQBFFgoRGHIGXAoKFAleAFoXHA")),
SyncAchievements = aam(_d("YBxaAC4BBFoAQgYCBwJHFg")),
ClaimAchievement = aam(_d("cAlVCgIjD1sMURUKDwldEQ")),
RequestQuests = aam(_d("YQBFFgoRGGIQURAbEQ")),
SyncQuests = aam(_d("YBxaAD4XCUARRw")),
ClaimQuest = aam(_d("cAlVCgIzGVYWQA")),
RequestPeriodicQuests = aam(_d("YQBFFgoRGGMARgoABgVQNEEGHBYf")),
SyncPeriodicQuests = aam(_d("YBxaAD8HHloKUAoMMxlWFkAQ")),
ClaimPeriodicQuest = aam(_d("cAlVCgIyCUEMWwcGAT1GAEcX")),

OpenFuseDialog = aam(_d("fBVRDSkXH1YhXQIDDQs")),
FuseCards = aam(_d("dRBHBiwDHlcW")),
OpenDeconstructDialog = aam(_d("fBVRDSsHD1wLRxcdFw9HIV0CAw0L")),
DeconstructCards = aam(_d("dwBXDAERGEEQVxcsAx5XFg")),
OpenPackShop = aam(_d("fBVRDT8DD1g2XAwf")),
EquipPack = aam(_d("dhRBCh8yDVAO")),

RequestSkillTree = aam(_d("YQBFFgoRGGAOXQ8DNh5WAA")),
BuySkillNode = aam(_d("cRBNMAQLAF8rWwcK")),
OpenAccessoryShop = aam(_d("fBVRDS4BD1YWRwwdGz9bCkQ")),
OpenAccessoryShop2 = aam(_d("fBVRDS4BD1YWRwwdGz9bCkRR")),
BuyAccessory = aam(_d("cRBNIgwBCUAWWxEW")),
BuyAccessory2 = aam(_d("cRBNIgwBCUAWWxEWUA")),
EquipAccessory = aam(_d("dhRBCh8jD1AARxAAEBU")),

RedeemCode = aam(_d("YQBQBgoPL1wBUQ")),

OpenNPCDialog = aam(_d("fBVRDSEyL3cMVQ8ABQ")),
TeleportToWorld = aam(_d("ZwBYBh8NHkcxWzQAEABX")),
RaidBattleStarted = aam(_d("YQRdBy0DGEcJUTAbAx5HAFA")),
BattleEnd = aam(_d("cQRAFwMHKV0B")),
StartBattle = aam(_d("YBFVERsgDUcRWAY")),
RequestInfiniteRoomProgress = aam(_d("YQBFFgoRGHoLUgoBCxhWN1sMAjIeXAJGBhwR")),
EndTowerRemote = aam(_d("dgtQNwAVCUE3UQ4AFgk")),
SaveClientData = aam(_d("YARCBiwOBVYLQCcOFg0")),
OpenRaidShop = aam(_d("fBVRDT0DBVc2XAwf")),
RequestItemSync = aam(_d("YQBFFgoRGHoRUQ48GwJQ")),
FishingGetState = aam(_d("dQxHCwYMC3QAQDAbAxhW")),
FishingSetAuto = aam(_d("dQxHCwYMC2AAQCIaFgM")),
FishingShop = aam(_d("dQxHCwYMC2ANWxM")),
DigGetState = aam(_d("dwxTJAoWP0cEQAY")),
DigShop = aam(_d("dwxTMAcNHA")),
DigAction = aam(_d("dwxTIgwWBVwL")),
DigUpdate = aam(_d("dwxTNh8GDUcA")),
}

local uv = require(gs.ModuleScripts.NPCData)
local cd = require(gs.ModuleScripts.WorldDifficultyData)
local tl = require(gs.ModuleScripts.BossData)
local mwrm = require(gs.ModuleScripts.RaidData)
local udty = require(gs.ModuleScripts.InfiniteRoomData)
local nkrk = require(gs.ModuleScripts.CraftData)
local livn = require(gs.ModuleScripts.AchievementData)
local rbk = require(gs.ModuleScripts.RaidShopData)
local wvxs = require(gs.ModuleScripts.ItemData)
local zmx = require(gs.ModuleScripts.CardData)
local dz = require(gs.ModuleScripts.SkillTreeData)

local qtw = {
enabled = false,
role = { _d("RwpDBh0"), _d("XRVX") },

picked = { _d("ZwpDBh0"), _d("fTV3Qw0DGEcJURA") },
hasSlot2 = nil,
toggle = nil,

optionsFor = {
{ _d("ZwpDBh0"), _d("ewRYDwAVCVYLFBcAFQlB"), _d("fTV3Qw0DGEcJURA") },
{ _d("fTV3Qw0DGEcJURA"), _d("ehZYAgEGTFsERgcMDR5W") },
},
roleIds = {
Tower = _d("RwpDBh0"),

[_d("ewRGBwwNHlZFQAwYBx4")] = _d("WwRGBwwNHlY"),
[_d("fTV3Qw0DGEcJURA")] = _d("XRVX"),
[_d("ewRYDwAVCVYLFBcAFQlB")] = _d("WwRYDwAVCVYL"),
[_d("ehZYAgEGTFsERgcMDR5W")] = _d("WwRGBwwNHlY"),
},
roleNames = {
tower = _d("ZwpDBh0"),
hardcore = _d("ehZYAgEGTFsERgcMDR5W"),
npc = _d("fTV3Qw0DGEcJURA"),
halloween = _d("ewRYDwAVCVYLFBcAFQlB"),
},
}

function qtw.detectSlot2()
local ua = cmup:FindFirstChild(_d("YABAFwYMC0AiQQo"))
local df = ua and ua:FindFirstChild(_d("YAlbFzsHDV5XZgwY"), true)

if df then
return df.Visible == true
end

return nil
end

function qtw.roleSlot(zji)
if not qtw.enabled then
return 1
end

for ano = 1, 2 do
if qtw.role[ano] == zji then
return ano
end
end

return nil
end

function qtw.isTowerRole(me)
return me == _d("RwpDBh0") or me == _d("WwRGBwwNHlY") or me == _d("WwRYDwAVCVYL")
end

function qtw.towerSlot()
return qtw.roleSlot(_d("RwpDBh0"))
end

function qtw.hardcoreSlot()
local qr = qtw.roleSlot(_d("WwRGBwwNHlY"))

if qr == 2 and qtw.hasSlot2 == false then
return 1
end

return qr
end

function qtw.halloweenSlot()

local li = qtw.roleSlot(_d("WwRYDwAVCVYL"))

if li == 1 then
return 1
end

return nil
end

function qtw.roomSlot()
local szy = qtw.roleSlot(_d("XRVX"))

if not qtw.enabled then
return 1
end

if szy == nil then
return nil
end

if szy == 2 and qtw.hasSlot2 == false then
return 1
end

return szy
end

function qtw.splitNpc()
return qtw.enabled and qtw.role[1] == _d("XRVX") and qtw.role[2] == _d("XRVX")
end

function qtw.busy(awya)
local zudz = cmup:FindFirstChild(awya == 2 and _d("egt2AhsWAFZX") or _d("egt2AhsWAFY"))

return zudz ~= nil and zudz:IsA(_d("cQpbDzkDAEYA")) and zudz.Value == true
end

function qtw.roleName(soft)
return qtw.roleNames[qtw.role[soft]] or qtw.roleNames.npc
end

function qtw.roleLabel(pb)
return qtw.picked[pb] or qtw.roleName(pb)
end

local ys = nil

if gs:FindFirstChild(_d("fgpQFgMHP1AXXRMbEQ")) and gs.ModuleScripts:FindFirstChild(_d("ewRYDwAVCVYLYAwYBx53BEAC")) then
local ciu, iau = pcall(function()
return require(gs.ModuleScripts.HalloweenTowerData)
end)

if ciu then
ys = iau
end
end

local pvbe = nil

if gs:FindFirstChild(_d("fgpQFgMHP1AXXRMbEQ")) and gs.ModuleScripts:FindFirstChild(_d("dQxHCwYMC3cEQAI")) then
local zjw, jp = pcall(function()
return require(gs.ModuleScripts.FishingData)
end)

if zjw then
pvbe = jp
end
end

local function oh(emcw)
return tostring(emcw):reverse():gsub(_d("G0BQRgtHCBo"), _d("FlQY")):reverse():gsub(_d("bUk"), _d(""))
end

local vpex = {
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

getgenv().ACBXHalloweenUpgrades = vpex.upgrade
getgenv().ACBXHalloweenTower = vpex.run

vpex.shopData = rbk.ShopById.halloween
vpex.shopItems = {}
vpex.shopLabels = {}
vpex.cardNames = {
hw_brook = _d("cRdbDARCRH4QRwoMAwATNl8GAwcYXAsd"),
hw_death_the_kid = _d("dwBVFwdCGFsAFCgGBkwbLVURAg0CWgYUJBoMTGQMUQ8LBx4a"),
hw_barragan = _d("cQRGEQ4FDV1FHDAEBwBWEVsNTykFXQId"),
}
vpex.cardShortNames = {
hw_brook = _d("cRdbDAQ"),
hw_death_the_kid = _d("dwBVFwdCGFsAFCgGBg"),
hw_barragan = _d("cQRGEQ4FDV0"),
}

for fpi, vbn in ipairs(vpex.shopData.Items) do
local fjms, fam = next(vbn.price or {})
local tnon = vbn.id
local yscu = vbn.id

if vbn.itemId then
local wzo = wvxs.ById[vbn.itemId]
tnon = wzo and (wzo.name or vbn.itemId) or vbn.itemId
yscu = tnon
elseif vbn.cardId then
tnon = vpex.cardNames[vbn.cardId] or (zmx.ById[vbn.cardId] and zmx.ById[vbn.cardId].name) or vbn.cardId
yscu = vpex.cardShortNames[vbn.cardId] or tnon
end

local wr = fjms == _d("WwRYDwAVCVYLawAODAhK") and _d("cARaBxY") or (fjms == _d("WQRXCDANM18EWhcKEAI") and _d("fwRaFwoQAkA") or tostring(fjms))
local jg = tnon .. _d("E4e0908") .. oh(fam) .. _d("Ew") .. wr

table.insert(vpex.shopItems, {
id = vbn.id,
label = jg,
shortName = yscu,
currency = fjms,
price = fam,
stock = vbn.stock,
cardId = vbn.cardId,
})

table.insert(vpex.shopLabels, jg)
end

for zlv, ad in ipairs({
_d("YQBFFgoRGHsEWA8AFQlWC2ETCBANVwBH"),
_d("cRBNKw4OAFwSUQYBNxxUF1UHCg"),
_d("ewRYDwAVCVYLYRMIEA1XAGcXDhYJ"),
_d("YQBFFgoRGHsEWA8AFQlWC2AMGAceYxdbBB0HH0A"),
_d("YBxaACcDAF8KQwYKDDhcElERPxADVBdREBw"),
_d("fBVRDScDAF8KQwYKDDhcElER"),
}) do
vpex.remote[ad] = aam(ad)
end

function vpex.fire(pak, ...)
local wxo = vpex.remote[pak]

if not wxo then
return
end

local xk = { ... }

pcall(function()
wxo:FireServer(table.unpack(xk))
end)
end

function vpex.on(ckx, jz)
local qge = vpex.remote[ckx]

if qge then
qge.OnClientEvent:Connect(jz)
end
end

if ys then
for al, ptgs in ipairs(ys.Upgrades) do
table.insert(vpex.upgrades, {
id = ptgs.id,
name = ptgs.name,
maxLevel = ptgs.maxLevel,
})

table.insert(vpex.labels, ptgs.name)
end
end

function vpex.level(rfqg)
if not ys then
return 0
end

return ys.getUpgradeLevel(vpex.upgrade.levels, rfqg)
end

function vpex.cost(zzri)
if not ys then
return nil
end

return ys.getUpgradeCost(zzri, vpex.level(zzri))
end

function vpex.bonus(qv, xf)
if not ys then
return _d("")
end

return ys.formatUpgradeBonus(qv, xf)
end

function vpex.request()
vpex.upgrade.lastRequest = os.time()
vpex.fire(_d("YQBFFgoRGHsEWA8AFQlWC2ETCBANVwBH"))
end

function vpex.text()
if not ys then
return _d("ewRYDwAVCVYLFDcAFQlBRVACGwNMWhYUDQAWTFoLFBcHCx8TB0EKAwZC")
end

local zdw = vpex.upgrade
local fg = {}

if zdw.balance == nil then
table.insert(fg, _d("YxBZEwQLAkBfFE5PSg1ADl0NCEIYWwAUEAoQGlYXHQ"))
else
table.insert(fg, _d("YxBZEwQLAkBfFA") .. oh(zdw.balance))
end

for rcnm, qd in ipairs(vpex.upgrades) do
local mb = vpex.level(qd.id)
local mx = vpex.cost(qd.id)
local uw = zdw.selected[qd.id] and _d("aB1pQw") or _d("aEVpQw")
local nzus = uw .. qd.name .. _d("E0V4FU8") .. mb .. _d("HA") .. qd.maxLevel

if mx then
table.insert(fg, nzus .. _d("E0VaBhcWTA") .. tostring(mx) .. _d("E0U") .. vpex.bonus(qd.id, mb + 1))
else
table.insert(fg, nzus .. _d("E0VZAhcHCA"))
end
end

if not next(zdw.selected) then
table.insert(fg, _d("YwxXCE8XHFQXVQcKEUxaCxQXBwdMVxdbEwsNG11FVQ0LQi1GEVtDGhILQQRQBhxCDkYcR0MbCgkTBlwGDhIJQBEUDAEHTEoKQUMMAwITBFIFABAIHQ"))
end

return table.concat(fg, _d("OQ"))
end

function vpex.buy()
local mevj = vpex.upgrade

if mevj.waiting or mevj.balance == nil or os.time() - mevj.lastBuy < 1 then
return
end

local vs = nil
local foo = nil

for le, ndwr in ipairs(vpex.upgrades) do
if mevj.selected[ndwr.id] and os.time() >= (mevj.failedUntil[ndwr.id] or 0) then
local qu = vpex.cost(ndwr.id)

if qu and mevj.balance >= qu and (not foo or qu < foo) then
vs = ndwr.id
foo = qu
end
end
end

if not vs then
return
end

mevj.waiting = true
mevj.lastBuy = os.time()
mevj.pendingId = vs
mevj.pendingLevel = vpex.level(vs)

mevj.balance = mevj.balance - foo

vpex.fire(_d("cRBNKw4OAFwSUQYBNxxUF1UHCg"), vs)
end

vpex.on(_d("ewRYDwAVCVYLYRMIEA1XAGcXDhYJ"), function(ru)
if type(ru) ~= _d("RwRWDwo") then
return
end

local qdbl = vpex.upgrade

qdbl.balance = tonumber(ru.balance) or 0
qdbl.levels = type(ru.levels) == _d("RwRWDwo") and ru.levels or {}

if qdbl.pendingId then
if vpex.level(qdbl.pendingId) <= qdbl.pendingLevel then
qdbl.failedUntil[qdbl.pendingId] = os.time() + 15
end

qdbl.pendingId = nil
end

if type(ru.message) == _d("QBFGCgEF") then
qdbl.lastMessage = ru.message
end

qdbl.waiting = false
end)

vpex.on(_d("YBxaACcDAF8KQwYKDDhcElERPxADVBdREBw"), function(hf, uqhm)
vpex.run.highest = tonumber(hf) or 0
vpex.run.savedRun = type(uqhm) == _d("RwRWDwo") and uqhm or nil
end)

vpex.on(_d("fBVRDScDAF8KQwYKDDhcElER"), function(ydy, vre, cgy)
vpex.run.highest = tonumber(ydy) or vpex.run.highest
vpex.run.savedRun = type(cgy) == _d("RwRWDwo") and cgy or nil
end)

pzta.BattleEnd.OnClientEvent:Connect(function(jj)
if type(jj) == _d("RwRWDwo") and jj.mode == _d("WgtSCgELGFY6RgwADw") and jj.tower == _d("WwRYDwAVCVYL") then
vpex.run.inBattle = false
vpex.run.pending = true
vpex.run.pendingUntil = os.time() + 3

task.delay(0.3, function()
vpex.requestProgress()
end)
end
end)

function vpex.requestProgress()
vpex.run.lastRequest = os.time()
vpex.fire(_d("YQBFFgoRGHsEWA8AFQlWC2AMGAceYxdbBB0HH0A"))
end

function vpex.bestRoom()
local zit = vpex.run.highest

if not ys or zit == nil then
return nil
end

for xo, mdtg in ipairs(ys.Milestones) do
if ys.isMilestoneUnlocked(mdtg, zit)
and not ys.isMilestoneCleared(mdtg, zit) then
return mdtg
end
end

return nil
end

function vpex.startRun()
local ib = vpex.bestRoom()

if not ib then
return false
end

local pvf = vpex.run.savedRun
local dwtr = type(pvf) == _d("RwRWDwo") and pvf.milestone == ib
local ybgz = dwtr and (tonumber(pvf.currentFloor) or ib) or ib

local ddkm = qtw.halloweenSlot() or 1

local uwdd = getgenv().ACBXAuto

uwdd = type(uwdd) == _d("RwRWDwo") and uwdd.bossTeams or nil

if vpex.run.teamChosen and uwdd and uwdd.applyTeam then
uwdd.applyTeam(vpex.run.team, ddkm)
end

local qgo = cmup:FindFirstChild(ddkm == 2 and _d("YQBHBhsgDUcRWAYpDgNcFwY") or _d("YQBHBhsgDUcRWAYpDgNcFw"))

if qgo and qgo:IsA(_d("cQxaBw4AAFYgQgYBFg")) then
pcall(function()
qgo:Fire(ybgz, _d("WgtSCgELGFY6RgwADw"))
end)
end

local btj = cmup:FindFirstChild(ddkm == 2 and _d("YBFVERsrAlUMWgobBz5cClkhDhYYXwAG") or _d("YBFVERsrAlUMWgobBz5cClkhDhYYXwA"))

if btj and btj:IsA(_d("cQxaBw4AAFYgQgYBFg")) then
pcall(function()
btj:Fire(ybgz, _d("WwRYDwAVCVYL"), ybgz)
end)
end

vpex.run.milestone = ib
vpex.run.savedRun = nil
vpex.run.inBattle = true
vpex.run.inBattleUntil = os.time() + 120
vpex.run.pending = true
vpex.run.pendingUntil = os.time() + 10

if dwtr then
pzta.StartBattle:FireServer(_d("WgtSCgELGFY6RgwADw"), {
continue = true,
tower = _d("WwRYDwAVCVYL"),
slot = ddkm,
})
else
pzta.StartBattle:FireServer(_d("WgtSCgELGFY6RgwADw"), {
tower = _d("WwRYDwAVCVYL"),
milestone = ib,
slot = ddkm,
})
end

return true
end

local vdw = {}
for oqnj, dqy in ipairs(uv.NPCs) do
vdw[dqy.name] = dqy.id
end

local mmfu = getgenv().ACBXCooldowns
if type(mmfu) ~= _d("RwRWDwo") then
mmfu = {}
getgenv().ACBXCooldowns = mmfu
end

local dijb = getgenv().ACBXAuto
if type(dijb) == _d("RwRWDwo") and type(dijb.cooldowns) == _d("RwRWDwo") then
for iwu, eau in pairs(dijb.cooldowns) do
if mmfu[iwu] == nil then
mmfu[iwu] = eau
end
end
end

local xepj = {
enabled = false,
story = false,
storyDifficulty = _d("XQpGDg4O"),
storyDropdown = nil,
selectedByWorld = {},
difficulties = { _d("XQpGDg4O") },
walkToNpc = false,
cooldowns = mmfu,
activeDifficulty = {},
lastFetch = {},
unlocked = {},
currentBattle = nil,
battlePending = false,
battlePendingUntil = 0,
}

xepj.bossTeams = {
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

path = _d("ciZ2O0AWCVIIR00FEQNd"),
}

function xepj.bossTeams.trackCollection()
if xepj.bossTeams.collectionHooked then
return
end

xepj.bossTeams.collectionHooked = true

local sv = lh:FindFirstChild(_d("YBxaACwNAF8AVxcGDQI"))

if not sv then
return
end

sv.OnClientEvent:Connect(function(qb)
if type(qb) == _d("RwRWDwo") and type(qb.teams) == _d("RwRWDwo") then
xepj.bossTeams.teams = qb.teams
xepj.bossTeams.teamsAt = os.clock()
end
end)

task.spawn(function()

task.wait(3)

for ny = 1, 8 do
if xepj.bossTeams.teams then
return
end

local tzh = lh:FindFirstChild(_d("YBJdFwwKOFYEWQ"))
local aobf = xepj.bossTeams.slotTeam
local oa = nil

if tzh and type(aobf) == _d("VRBaABsLA10") then
local wkum, garm = pcall(aobf, 2)
oa = wkum and garm or nil

if not oa then
wkum, garm = pcall(aobf, 1)
oa = wkum and garm or nil
end
end

if oa then
pcall(function()
tzh:FireServer(oa, false, 2)
end)
end

task.wait(6)
end
end)
end

function xepj.bossTeams.teamCards(xa)
local tmr = xepj.bossTeams.teams

if type(tmr) ~= _d("RwRWDwo") then
return nil
end

local yrmd = tmr[xa]

if type(yrmd) ~= _d("RwRWDwo") then
return 0
end

local jr = 0

for qn, ugmd in pairs(yrmd) do
if type(ugmd) == _d("RwRWDwo") then
jr = jr + 1
end
end

return jr
end

function xepj.bossTeams.raidState()
return getgenv().ACBXAutoRaid
end

function xepj.bossTeams.save()
if type(writefile) ~= _d("VRBaABsLA10") then
return false
end

local ztz = {}

for squ, ww in pairs(xepj.bossTeams.picked) do
ztz[squ] = ww
end

local hgi = {}

for yz, iez in pairs(xepj.bossTeams.raidPicked) do
hgi[yz] = iez
end

local mf = {}

for xd, hli in pairs(xepj.bossTeams.towerPicked) do
mf[xd] = hli
end

return pcall(function()
if type(makefolder) == _d("VRBaABsLA10") and type(isfile) == _d("VRBaABsLA10") and not isfile(xepj.bossTeams.path) then
pcall(makefolder, _d("ciZ2Ow"))
end

local mqp = xepj.bossTeams.raidState()
local ke = mqp and mqp.worldBoss
local zh = nil

if ke and ke.teamChosen then
zh = ke.team
end

writefile(xepj.bossTeams.path, game:GetService(_d("exFAEzwHHkUMVwY")):JSONEncode({
areas = ztz,
raids = hgi,
towers = mf,
swap = xepj.bossTeams.swap,
globalBoss = zh,
updatedAt = os.time(),
}))
end)
end

function xepj.bossTeams.load()
if type(readfile) ~= _d("VRBaABsLA10") or type(isfile) ~= _d("VRBaABsLA10") then
return false
end

local ysih, lkp = pcall(function()
if not isfile(xepj.bossTeams.path) then
return nil
end

return readfile(xepj.bossTeams.path)
end)

if not ysih or type(lkp) ~= _d("QBFGCgEF") or #lkp == 0 then
return false
end

local euc
local fnw = pcall(function()
euc = game:GetService(_d("exFAEzwHHkUMVwY")):JSONDecode(lkp)
end)

if not fnw or type(euc) ~= _d("RwRWDwo") then
return false
end

if type(euc.areas) == _d("RwRWDwo") then
for ml, pog in pairs(euc.areas) do
local rp = tonumber(pog)

if rp and rp >= 1 and rp <= 4 then
xepj.bossTeams.picked[ml] = rp
end
end
end

if type(euc.raids) == _d("RwRWDwo") then
for dk, ngn in pairs(euc.raids) do
local xhe = tonumber(ngn)

if xhe and xhe >= 1 and xhe <= 4 then
xepj.bossTeams.raidPicked[dk] = xhe
end
end
end

if type(euc.towers) == _d("RwRWDwo") then
for ers, oaoz in pairs(euc.towers) do
local hlw = tonumber(oaoz)

if hlw and hlw >= 1 and hlw <= 4 then
xepj.bossTeams.towerPicked[ers] = hlw
end
end
end

if type(euc.swap) == _d("RwRWDwo") then
local pl = tonumber(euc.swap.team)
local rqxx = tonumber(euc.swap.floor)

if pl and pl >= 1 and pl <= 4 then
xepj.bossTeams.swap.team = pl
end

if rqxx and rqxx > 0 then
xepj.bossTeams.swap.floor = rqxx
end

local cv = tonumber(euc.swap.team2)
local cdmt = tonumber(euc.swap.floor2)

if cv and cv >= 1 and cv <= 4 then
xepj.bossTeams.swap.team2 = cv
end

if cdmt and cdmt > 0 then
xepj.bossTeams.swap.floor2 = cdmt
end

xepj.bossTeams.swap.on = euc.swap.on == true
end

local amwp = tonumber(euc.globalBoss)
local reiv = xepj.bossTeams.raidState()
local rjgf = reiv and reiv.worldBoss

if amwp and amwp >= 1 and amwp <= 4 and rjgf then
rjgf.team = amwp

rjgf.teamChosen = true
end

return true
end

local fo = nil
local zkid = nil

local function fhmp(mck, ynxe)
return mck .. _d("Tw") .. ynxe
end

local function hd(esws, hlau)
return xepj.cooldowns[fhmp(esws, hlau)] or 0
end

local function vgoi(bhbp, net, nl)
xepj.cooldowns[fhmp(bhbp, net)] = nl
end

getgenv().ACBXAuto = xepj

local kxd = {
enabled = false,
picks = { [1] = {}, [2] = {} },
cursor = { [1] = 1, [2] = 1 },
losses = { [1] = {}, [2] = {} },
inFlight = {},

lossLimit = 3,
difficulties = { _d("XQpGDg4O") },
walkToBoss = false,
walkSpeed = 18,
pending = {},
pendingUntil = {},
cleared = {},
progress = {},
}

getgenv().ACBXAutoRaid = kxd

kxd.worldBoss = {
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

fishingMode = _d("RwpTBhsKCUE"),
fishingDropdown = nil,

digHold = false,

walkToBoss = false,
walkToggle = nil,

building = false,
}

xepj.bossTeams.trackCollection()
xepj.bossTeams.load()

function kxd.worldBoss.data()
local tzc = kxd.worldBoss

if tzc.module == nil then
local js, of = pcall(function()
return require(gs.ModuleScripts.WorldBossData)
end)

tzc.module = js and of or false
end

return tzc.module or nil
end

function kxd.worldBoss.clock(okq)
okq = math.max(0, math.floor(tonumber(okq) or 0))

local ggbp = math.floor(okq / 3600)
local ed = math.floor((okq % 3600) / 60)
local urz = okq % 60

if ggbp > 0 then
return string.format(_d("FgFcQ0pSXlcI"), ggbp, ed)
end

if ed > 0 then
return string.format(_d("FgFZQ0pSXlcW"), ed, urz)
end

return string.format(_d("FgFH"), urz)
end

function kxd.worldBoss.status()
local ab = nil

pcall(function()
ab = gs:FindFirstChild(_d("ZApGDwsgA0AWZxcOFhlA"))
end)

return ab
end

function kxd.worldBoss.isOpen()
local ri = kxd.worldBoss.status()

if not ri then
return nil
end

return ri:GetAttribute(_d("cgZAChkH")) == true
end

function kxd.worldBoss.window()
local ehld = kxd.worldBoss.status()

if not ehld then
return nil, nil
end

return tonumber(ehld:GetAttribute(_d("dgtQEC4W"))), tonumber(ehld:GetAttribute(_d("fQBMFy4W")))
end

function kxd.worldBoss.cycle()
local mkqs = kxd.worldBoss
local mm = mkqs.data()

if not mm or not mm.getCycleState then
return nil
end

local glk, cyrf = pcall(function()
return mm.getCycleState()
end)

return glk and cyrf or nil
end

function kxd.worldBoss.shopList()
local oko = kxd.worldBoss

if oko.items then
return oko.items
end

local bj = {}
local yh = oko.data()

if not yh or type(yh.ShopItems) ~= _d("RwRWDwo") then
oko.items = bj
return bj
end

for bk, kav in ipairs(yh.ShopItems) do
local orh = nil

pcall(function()
if kav.itemId then
local nvvr = require(gs.ModuleScripts.ItemData)
local anm = nvvr[kav.itemId] or (nvvr.ById and nvvr.ById[kav.itemId])
orh = anm and anm.name or nil
elseif kav.cardId then
local uow = require(gs.ModuleScripts.CardData)
local hiv = uow[kav.cardId] or (uow.ById and uow.ById[kav.cardId])
orh = hiv and hiv.name or nil
end
end)

local ahl = kxd.worldBoss.state

if type(ahl) == _d("RwRWDwo") and type(ahl.shop) == _d("RwRWDwo") then
for jwm, mgm in ipairs(ahl.shop) do
if mgm.id == kav.id and mgm.name then
orh = mgm.name
break
end
end
end

if not orh then

orh = tostring(kav.accessoryId or kav.id or _d("DA")):gsub(_d("bA"), _d("Ew")):gsub(_d("G0BVSkc5SURCaUlG"), function(aj, tqt)
return aj:upper() .. tqt
end)
end

table.insert(bj, {
id = kav.id,
name = orh,
price = tonumber(kav.price) or 0,
kind = kav.itemId and _d("WhFRDg") or (kav.cardId and _d("UARGBw") or _d("UgZXBhwRA0Ec")),
})
end

oko.items = bj

return bj
end

function kxd.worldBoss.bodyText()
local jasd = kxd.worldBoss
local ac = jasd.state

if type(ac) ~= _d("RwRWDwo") then
return _d("YQBVBwYMCxMRXAZPAANAFhpNQQ")
end

local tnt = {}
local cedp = jasd.cycle()
local vwpl = jasd.isOpen()
local uvgq, kt = jasd.window()

if vwpl == nil then
vwpl = ac.open == true
end

if vwpl then
local sz = _d("fBVRDQ")

if not uvgq and cedp then
uvgq = cedp.endsAt
end

if uvgq and uvgq > os.time() then
sz = sz .. _d("E6eDQw") .. jasd.clock(uvgq - os.time()) .. _d("EwlRBRs")
end

table.insert(tnt, sz)
else
local ws = _d("dwpDDU8EA0FFWgwY")

if not kt and cedp then
kt = cedp.nextAt
end

if kt and kt > os.time() then
ws = ws .. _d("OSdVAARCBV1F") .. jasd.clock(kt - os.time())
end

table.insert(tnt, ws)
end

table.insert(tnt, _d("fgBQAgMRVhM") .. tostring(ac.medals or 0) .. _d("OS5dDwMRVhM") .. tostring(ac.kills or 0))

if ac.inFight then
table.insert(tnt, _d("dQxTCxsLAlQ"))
elseif vwpl then

table.insert(tnt, ac.killedThisSpawn and _d("YQBVBxZoJ1oJWAYLQhhbDEdDHBINRAsUAgMQCVIBTQ") or _d("YQBVBxY"))
end

if jasd.stopAtFull then
local tk, zlaf = jasd.meter()

if tk and zlaf then
local function ovqm(jkn)
if jkn >= 1000000000 then
return string.format(_d("FksFBS0"), jkn / 1000000000)
elseif jkn >= 1000000 then
return string.format(_d("FgJ5"), math.floor(jkn / 100000) / 10)
elseif jkn >= 1000 then
return string.format(_d("FgJ/"), math.floor(jkn / 100) / 10)
end

return tostring(math.floor(jkn))
end

table.insert(tnt, _d("YABGFQoQTF4AQAYdWEw") .. ovqm(tk) .. _d("E0oU") .. ovqm(zlaf)
.. (jasd.meterFull() and _d("OSNBDwNCQRMLWxdPBAVUDUAKAQVMRw1dEE8RHFISWg") or _d("")))
end
end

return table.concat(tnt, _d("OW8"))
end

function kxd.worldBoss.shopText()
local nd = kxd.worldBoss
local oyr = nd.state

if type(oyr) ~= _d("RwRWDwo") or type(oyr.shop) ~= _d("RwRWDwo") then
return _d("YQBVBwYMCxMRXAZPEQRcFRpNQQ")
end

local fvvo = { _d("fgBQAgMRVhM") .. tostring(oyr.medals or 0) }

for ibhz, pks in ipairs(oyr.shop) do
local tr = tostring(pks.name or pks.id)
local wl = tostring(pks.price or _d("DA"))
local mifg

if pks.kind == _d("WhFRDg") then
mifg = tr .. _d("OQ") .. wl .. _d("E6eDQw") .. tostring(pks.left or 0) .. _d("HA") .. tostring(pks.stock or _d("DA")) .. _d("EwlRBRs")
elseif pks.owned then
mifg = tr .. _d("OSpDDQoG")
else
mifg = tr .. _d("OQ") .. wl .. _d("E6eDQwAMCRMKUgU")
end

table.insert(fvvo, mifg)
end

return table.concat(fvvo, _d("OW8"))
end

function kxd.worldBoss.shopOptions()
local mpu = kxd.worldBoss

if mpu.options then
return mpu.options
end

local ijab = {}

mpu.labelToId = {}

for iuhd, xpwo in ipairs(mpu.shopList()) do
local qnla = xpwo.name .. _d("E6eDQw") .. tostring(xpwo.price)

table.insert(ijab, qnla)
mpu.labelToId[qnla] = xpwo.id
end

mpu.options = ijab

return ijab
end

local function afp(jh)
local lohv = kxd.progress[jh]
local pz = gs:FindFirstChild(_d("YQRdBzwWDUcQRw"))
local zwgh = pz and pz:GetAttribute(_d("cBxXDworCA"))

if type(lohv) == _d("RwRWDwo") then
if lohv.cycleId then
zwgh = lohv.cycleId
end

if lohv.completed and lohv.completedRaidId then
return tostring(zwgh) .. _d("CQFbDQo")
end

local wpo = lohv.phaseIndex or lohv.phase

if wpo then
return tostring(zwgh) .. _d("CQ") .. tostring(wpo)
end
end

return tostring(zwgh)
end

function kxd.finished(rcw)
local lb = kxd.progress[rcw]

return type(lb) == _d("RwRWDwo") and lb.completed == true and lb.completedRaidId == rcw
end

function kxd.bossFor(jwau, bdiy)
local ofdn = kxd.picks[bdiy or jwau]

if not ofdn or #ofdn == 0 then
return nil
end

local jmm = gs:FindFirstChild(_d("YQRdBzwWDUcQRw"))
local yho = kxd.losses[jwau] or {}
local kini = kxd.cursor[jwau] or 1

for xc = 0, #ofdn - 1 do
local wt = (kini - 1 + xc) % #ofdn + 1
local xowa = ofdn[wt]
local vsxg = not jmm or jmm:GetAttribute(_d("YQBVBxY9") .. xowa) == true

if vsxg and not kxd.finished(xowa) and (yho[xowa] or 0) < kxd.lossLimit then
kxd.cursor[jwau] = wt

return xowa
end
end

return nil
end

pzta.RaidBattleStarted.OnClientEvent:Connect(function(gp)

local fvdu = type(gp) == _d("RwRWDwo") and gp.raidId or nil

if type(fvdu) == _d("QBFGCgEF") then
kxd.pending[fvdu] = false
else
for czgx in pairs(kxd.pending) do
kxd.pending[czgx] = false
end
end
end)

pzta.BattleEnd.OnClientEvent:Connect(function(hy)
for pdgn in pairs(kxd.pending) do
kxd.pending[pdgn] = false
end

if type(hy) ~= _d("RwRWDwo") or not kxd.enabled then
return
end

local fiiz = type(hy.raidId) == _d("QBFGCgEF") and hy.raidId or nil
local sug = fiiz and kxd.inFlight[fiiz] or nil

if not fiiz then
for afb, dedu in pairs(kxd.inFlight) do
fiiz = afb
sug = dedu
break
end
end

if not fiiz then
return
end

kxd.inFlight[fiiz] = nil

if hy.result == _d("XwpHBg") then

local fkek = kxd.losses[sug or 1]

kxd.cleared[fiiz] = nil
fkek[fiiz] = (fkek[fiiz] or 0) + 1

for ezeg in pairs(kxd.pendingUntil) do
kxd.pendingUntil[ezeg] = os.time() + 3
end
else

kxd.losses[sug or 1][fiiz] = 0
end
end)

pzta.RaidProgress.OnClientEvent:Connect(function(qohg)
if type(qohg) == _d("RwRWDwo") and type(qohg.raidId) == _d("QBFGCgEF") then
kxd.progress[qohg.raidId] = qohg
end
end)

pzta.RequestRaidProgress:FireServer()

local hx = {
enabled = false,
progress = nil,
currentRoom = nil,
inBattle = false,
inBattleUntil = 0,
pending = false,
pendingUntil = 0,
}

getgenv().ACBXAutoRooms = hx

pzta.SyncInfiniteRoomProgress.OnClientEvent:Connect(function(dvev)
if type(dvev) == _d("XRBZAQoQ") then
hx.progress = dvev
hx.pending = false
end
end)

pzta.BattleEnd.OnClientEvent:Connect(function(jzsx)
if type(jzsx) == _d("RwRWDwo") and jzsx.mode == _d("WgtSCgELGFY6RgwADw") then
hx.inBattle = false
hx.pending = true
hx.pendingUntil = os.time() + 3

task.delay(0.3, function()
pzta.RequestInfiniteRoomProgress:FireServer()
end)
end
end)

pzta.RequestInfiniteRoomProgress:FireServer()

local rxn = {
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

getgenv().ACBXAutoTower = rxn

local wu = {
enabled = false,
floor = 0,
triggered = false,
}

getgenv().ACBXAutoPause = wu

local klq = {
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
Typhoon = _d("RxxECwANAg"),
Blizzard = _d("UQldGRUDHlc"),
Lightning = _d("XwxTCxsMBV0C"),
Windstorm = _d("RAxaBxwWA0EI"),
Sharingan = _d("QA1VEQYMC1IL"),
Singularity = _d("QAxaBBoODUEMQBo"),
[_d("fgpaAh0BBBMhWw4OCwI")] = _d("XgpaAh0BBGwBWw4OCwI"),
Void = _d("RQpdBw"),
[_d("fgRQBk8LAhMtUQIZBwI")] = _d("XgRQBjALAmwNUQIZBwI"),
Manga = _d("XgRaBA4"),
},
}

function klq.weatherWanted(trqi)
local yol = klq.weatherNow

if type(yol) ~= _d("QBFGCgEF") then
return nil
end

for zj, rs in pairs(trqi or klq.weathers) do
if rs and klq.weatherIds[zj] == yol then
return zj
end
end

return nil
end

getgenv().ACBXAutoGiveUp = klq

local nu = {
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

if gs:FindFirstChild(_d("fgpQFgMHP1AXXRMbEQ")) and gs.ModuleScripts:FindFirstChild(_d("ewRGBwwNHlYxWxQKEChSEVU")) then
local ef, mene = pcall(function()
return require(gs.ModuleScripts.HardcoreTowerData)
end)

if ef then
nu.data = mene
end
end

getgenv().ACBXHardcore = nu

task.spawn(function()
local ghn = gs:FindFirstChild(_d("YQBZDBsHHw"))

if not ghn then
return
end

local nt = ghn:WaitForChild(_d("YBxaACcDHlcGWxEKNgNEAEYzHQ0LQQBHEA"), 20)

if nt and nt:IsA(_d("YQBZDBsHKUUAWhc")) then
nu.remotes.sync = nt

nt.OnClientEvent:Connect(function(lde)
if type(lde) ~= _d("RwRWDwo") then
return
end

nu.progress = tonumber(lde.progress) or nu.progress
nu.best = tonumber(lde.best) or nu.best

if type(lde.points) == _d("RwRWDwo") then
nu.points = lde.points
end
end)
end

local fn = ghn:WaitForChild(_d("YQBFFgoRGHsERgcMDR5WMVsUChA8QQpTEQoRHw"), 20)

if fn and fn:IsA(_d("YQBZDBsHKUUAWhc")) then
nu.remotes.request = fn

pcall(function()
fn:FireServer()
end)
end

local bkkg = ghn:WaitForChild(_d("dAlbAQ4OLkYDUjYfBg1HAFA"), 20)

if bkkg and bkkg:IsA(_d("YQBZDBsHKUUAWhc")) then
bkkg.OnClientEvent:Connect(function(wj, bysr, arnl, vstm)
nu.globalLuck = tonumber(wj) or 0
nu.globalRoll = tonumber(bysr) or 0
nu.globalLuckTime = type(arnl) == _d("QBFGCgEF") and arnl or _d("")
nu.globalRollTime = type(vstm) == _d("QBFGCgEF") and vstm or _d("")
end)
end
end)

function qtw.otherTowerOn(hcuo)
if qtw.enabled then
return false
end

if hcuo == _d("RwpDBh0") then
return false
end

if hcuo == _d("WwRYDwAVCVYL") then
return nu.active()
end

return vpex.run.enabled
end

function nu.active()
return nu.island
end

function nu.unspentPoints()
local ns = nu.data
local cdi = tonumber(nu.progress) or 0
local pmq = 0

if type(ns) == _d("RwRWDwo") and type(ns.getEarnedPoints) == _d("VRBaABsLA10") then
local dcn, lchg = pcall(ns.getEarnedPoints, cdi)
pmq = dcn and tonumber(lchg) or 0
end

return math.max(0, pmq - #(nu.points or {})), pmq
end

function nu.buffText()
local xbs = nu.data

if type(xbs) ~= _d("RwRWDwo") then
return _d("ewRGBwwNHlYxWxQKEChSEVVDBhFMXgxHEAYMCxMDRgwCQhhbDEdDDRcFXwEa")
end

local rosb = tonumber(nu.progress) or 0
local txfk = tonumber(nu.best) or 0
local xjs, pdz = nu.unspentPoints()
local op = {
_d("dQlbDB1C") .. rosb .. _d("E0UUIQoRGBM") .. txfk,
_d("YwpdDRsRVhM") .. xjs .. _d("ExBaEB8HAkdFWwVP") .. pdz .. _d("EwBVEQEHCA"),
}

local edyo = {}

for ltm, wobc in ipairs(nu.points or {}) do
local fhe = xbs.StatById and xbs.StatById[wobc]
local lpv = fhe and (fhe.name or wobc) or tostring(wobc)
local vrx = xbs.PointValue and xbs.PointValue[wobc]

table.insert(edyo, vrx and (lpv .. _d("E04") .. tostring(vrx)) or lpv)
end

if #edyo == 0 then
table.insert(op, _d("cRBSBRxYTF0KWgZPAANGAlwXTxsJRw"))
else
table.insert(op, _d("cRBSBRxYTA") .. table.concat(edyo, _d("H0U")))
end

local zfrx = {}

if (tonumber(nu.globalLuck) or 0) > 0 then
table.insert(zfrx, _d("fxBXCE9J") .. tostring(nu.globalLuck) .. _d("Fg") .. (nu.globalLuckTime ~= _d("") and (_d("E00") .. nu.globalLuckTime .. _d("Gg")) or _d("")))
end

if (tonumber(nu.globalRoll) or 0) > 0 then
table.insert(zfrx, _d("YQpYD08RHFYAUENE") .. tostring(nu.globalRoll) .. _d("Fg") .. (nu.globalRollTime ~= _d("") and (_d("E00") .. nu.globalRollTime .. _d("Gg")) or _d("")))
end

if #zfrx == 0 then
table.insert(op, _d("dAlbAQ4OTFEQUgUcWExdCloGTwMPRwxCBg"))
else
table.insert(op, _d("dAlbAQ4OTFEQUgUcWEw") .. table.concat(zfrx, _d("H0U")))
end

return table.concat(op, _d("OQ"))
end

function nu.nextMilestone()
local amig = nu.data

if type(amig) ~= _d("RwRWDwo") or type(amig.Milestones) ~= _d("RwRWDwo") or #amig.Milestones == 0 then
return nil
end

local bmgx = tonumber(vr:GetAttribute(_d("ewRGBwwNHlYjWAwAEA"))) or 0

return math.min(bmgx + 1, amig.Milestones[#amig.Milestones])
end

function nu.start(irds)
local zmtq = nu.nextMilestone()

if not zmtq then
return false
end

local ss = cmup:FindFirstChild(irds == 2 and _d("YQBHBhsgDUcRWAYpDgNcFwY") or _d("YQBHBhsgDUcRWAYpDgNcFw"))

if ss and ss:IsA(_d("cQxaBw4AAFYgQgYBFg")) then
pcall(function()
ss:Fire(zmtq, _d("WgtSCgELGFY6RgwADw"))
end)
end

local xsg = cmup:FindFirstChild(irds == 2 and _d("YBFVERsrAlUMWgobBz5cClkhDhYYXwAG") or _d("YBFVERsrAlUMWgobBz5cClkhDhYYXwA"))

if xsg and xsg:IsA(_d("cQxaBw4AAFYgQgYBFg")) then
pcall(function()
xsg:Fire(zmtq, _d("WwRGBwwNHlY"), zmtq)
end)
end

if xepj.bossTeams.applyTower then
xepj.bossTeams.applyTower(_d("WwRGBwwNHlY"), irds)
end

nu.pending = true
nu.pendingUntil = os.time() + 10

return pcall(function()
pzta.StartBattle:FireServer(_d("WgtSCgELGFY6RgwADw"), {
tower = _d("WwRGBwwNHlY"),
milestone = zmtq,
slot = irds,
})
end)
end

function nu.floorNow()
local vt = qtw.hardcoreSlot()

if not vt or not qtw.busy(vt) then
return nil
end

local iaf = cmup:FindFirstChild(vt == 2 and _d("cQRAFwMHK0YMBg") or _d("cQRAFwMHK0YM"))
local vmye = iaf and iaf:FindFirstChild(_d("YRBaJQMNA0EpVQEKDg"))
local wf = vmye and vmye.Text or _d("")

return tonumber(wf:match(_d("bSNYDAAQSUBOHEYLSUU")))
end

local rf = {
enabled = true,
nextAt = os.clock() + 300,
jumps = 0,
}

getgenv().ACBXAntiKick = rf

local bl = getgenv().ACBXNoUpdate == true

local sufe = {
enabled = not bl,
buildId = "v261102-0753",
interval = 180,
retry = 45,
forceAfter = 900,
applying = false,
checking = false,
pendingVersion = nil,
pendingSince = nil,
cameFrom = nil,
}

getgenv().ACBXUpdater = sufe

local he = {
enabled = false,
tpToBay = false,

stick = {
enabled = false,
at = 0,
hits = 0,
last = _d("XANS"),

names = {
[_d("QBFdAAQ")] = true,
[_d("XxBXCE8RGFoGXw")] = true,
[_d("XxBXCBwWBVAO")] = true,
[_d("XxBXCDARGFoGXw")] = true,
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
phase = _d("WgFYBg"),
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
deepPhase = _d("WgFYBg"),
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

local zfq = Vector3.new(-546.8, 13.9, -40250.1)

if type(getgenv().ACBXFishingCatches) == _d("RwRWDwo") then
he.catches = getgenv().ACBXFishingCatches
end

he.totalCatches = 0

for bdy, ltdw in pairs(he.catches) do
he.totalCatches = he.totalCatches + ltdw
end

getgenv().ACBXFishingCatches = he.catches
getgenv().ACBXFishing = he

he.catchName = function(tys)
local oent = wvxs.ById[tys]

if oent and oent.name then
return oent.name
end

local veqf = zmx.ById[tys]

if veqf and veqf.name then
return veqf.name
end

return tys
end

local vab

vab = {
folder = _d("ciZ2Ow"),
path = _d("ciZ2O0ABDUcGXAYcTAZAClo"),
at = 0,
save = function()
if type(writefile) ~= _d("VRBaABsLA10") then
return false
end

local xyu = pcall(function()
if type(makefolder) == _d("VRBaABsLA10") and type(isfile) == _d("VRBaABsLA10") and not isfile(vab.path) then
pcall(makefolder, vab.folder)
end

writefile(vab.path, game:GetService(_d("exFAEzwHHkUMVwY")):JSONEncode({
catches = he.catches,
totalCatches = he.totalCatches,
lastCatch = he.lastCatch,
updatedAt = os.time(),
}))
end)

return xyu
end,
load = function()
if type(readfile) ~= _d("VRBaABsLA10") or type(isfile) ~= _d("VRBaABsLA10") then
return false
end

local spum, hjqz = pcall(function()
if not isfile(vab.path) then
return nil
end

return readfile(vab.path)
end)

if not spum or type(hjqz) ~= _d("QBFGCgEF") or #hjqz == 0 then
return false
end

local lns
local xlz = pcall(function()
lns = game:GetService(_d("exFAEzwHHkUMVwY")):JSONDecode(hjqz)
end)

if not xlz or type(lns) ~= _d("RwRWDwo") or type(lns.catches) ~= _d("RwRWDwo") then
return false
end

for hfir, jsmt in pairs(lns.catches) do
local qlbn = tonumber(jsmt) or 0

if qlbn > 0 then
he.catches[tostring(hfir)] = math.max(he.catches[tostring(hfir)] or 0, qlbn)
end
end

he.totalCatches = 0

for cbgm, fcar in pairs(he.catches) do
he.totalCatches = he.totalCatches + fcar
end

return true
end,
}

vab.load()
getgenv().ACBXFishingStore = vab

local im = {}

local cjf = 0

local function ajqr()
local cy = {}

for ou, ngkb in ipairs(workspace:GetDescendants()) do
if ngkb:IsA(_d("cQRHBj8DHkc")) and ngkb.Name == _d("ZARABh0") then
table.insert(cy, ngkb)
end
end

im = cy
cjf = os.clock()
end

local function mgxg(rxfh)
if type(rxfh) ~= _d("RwRWDwo") then
return false
end

he.loaded = true
he.dirty = false
he.fishing = rxfh.fishing == true
he.autoOn = rxfh.autoOn == true
he.autoUnlocked = rxfh.autoUnlocked == true
he.casts = tonumber(rxfh.casts) or he.casts
he.totalCasts = tonumber(rxfh.totalCasts) or he.totalCasts
he.luck = tonumber(rxfh.luck) or he.luck
he.rod = tostring(rxfh.equippedRod or he.rod)
he.castTime = tonumber(rxfh.castTime) or he.castTime
he.tutorialStep = tonumber(rxfh.tutorialStep) or he.tutorialStep

if type(rxfh.rods) == _d("RwRWDwo") then
he.rodsOwned = rxfh.rods
end

if type(rxfh.baits) == _d("RwRWDwo") then
he.baitsOwned = rxfh.baits
end

if type(rxfh.boats) == _d("RwRWDwo") then
he.boatsOwned = rxfh.boats
end

if type(rxfh.mats) == _d("RwRWDwo") then
he.mats = rxfh.mats
end

if rxfh.bootOwned ~= nil then
he.boot.owned = rxfh.bootOwned == true
end

if rxfh.bootEquipped ~= nil then
he.boot.equipped = rxfh.bootEquipped == true
end

if rxfh.equippedBait ~= nil then
he.equippedBait = tostring(rxfh.equippedBait)
end

if rxfh.activeBoat ~= nil then
he.activeBoat = tostring(rxfh.activeBoat)
end

he.boatTier = tonumber(rxfh.boatTier) or he.boatTier
he.islandLocked = rxfh.islandLocked == true
he.rebirths = tonumber(rxfh.rebirths) or he.rebirths

if type(rxfh.rebirthCards) == _d("RwRWDwo") then
he.rebirthCards = rxfh.rebirthCards
end

he.lastSync = os.time()

return true
end

local function zk()
local vk, azs = pcall(function()
return pzta.FishingGetState:InvokeServer()
end)

if not vk or type(azs) ~= _d("RwRWDwo") then
he.loaded = false
return false
end

return mgxg(azs)
end

local xpy = false

local function fc()
if xpy then
return false
end

local kdl = vr.Character

if not kdl then
return false
end

if kdl:FindFirstChild(_d("dQxHCwYMC2EKUA")) then
return true
end

local vz = vr:FindFirstChild(_d("cQRXCB8DD1g"))
local dtc = vz and vz:FindFirstChild(_d("dQxHCwYMC2EKUA"))
local mwh = kdl:FindFirstChildOfClass(_d("exBZAgENBVc"))

if not (dtc and mwh) then
return false
end

return pcall(function()
mwh:EquipTool(dtc)
end)
end

local function uufe()
local mqg = vr.Character
local oqc = mqg and mqg:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not oqc then
return nil
end

local gho = RaycastParams.new()
gho.FilterType = Enum.RaycastFilterType.Exclude
gho.FilterDescendantsInstances = { mqg }

local bosy = 24
local yis = {}
local kn = 0

for jex = 0, bosy - 1 do
local jgn = math.rad(jex * (360 / bosy))
local qsnx = Vector3.new(math.sin(jgn), 0, math.cos(jgn))
local dcc = oqc.Position + qsnx * 20 + Vector3.new(0, 40, 0)
local zbv = workspace:Raycast(dcc, Vector3.new(0, -120, 0), gho)
local low = zbv and (oqc.Position.Y - zbv.Position.Y) or 120

yis[jex] = low > 12

if yis[jex] then
kn = kn + 1
end
end

if kn == 0 then
return nil
end

local wzx, is = nil, 0

for mu = 0, bosy - 1 do
if yis[mu] and not yis[(mu - 1) % bosy] then
local gfio = 0

while gfio < bosy and yis[(mu + gfio) % bosy] do
gfio = gfio + 1
end

if gfio > is then
wzx = mu
is = gfio
end
end
end

if not wzx then
return nil
end

local pt = wzx + (is - 1) / 2
local kj = math.rad(pt * (360 / bosy))

return Vector3.new(math.sin(kj), 0, math.cos(kj))
end

local function npq()
local wpbi = vr.Character
local ja = wpbi and wpbi:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not ja then
return nil
end

if #im == 0 or os.clock() - cjf > 20 then
ajqr()
end

local jdm, xww = nil, math.huge

for qdp, nm in ipairs(im) do
if nm.Parent then
local elm = (nm.Position - ja.Position).Magnitude

if elm < xww then
xww = elm
jdm = nm
end
end
end

if not jdm or xww > 25 then
local egb = uufe()

if egb then
return egb
end
end

if not jdm then
return nil
end

local hjl = Vector3.new(jdm.Position.X - ja.Position.X, 0, jdm.Position.Z - ja.Position.Z)

if hjl.Magnitude < 0.05 then
return Vector3.new(0, 0, -1)
end

return hjl.Unit
end

local function ne()
local mc = vr.Character
local oal = mc and mc:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not oal then
return nil
end

local cfyb = oal.CFrame.LookVector
local xhne = Vector3.new(cfyb.X, 0, cfyb.Z)

if xhne.Magnitude < 0.05 then
return nil
end

return xhne.Unit
end

local function ei()
local kr = vr.Character
local lyx = kr and kr:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not lyx then
return false
end

local ttc = zfq
local ecs = RaycastParams.new()
ecs.FilterType = Enum.RaycastFilterType.Exclude
ecs.FilterDescendantsInstances = { kr }

local niy = workspace:Raycast(zfq + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), ecs)

if niy and niy.Instance.Name ~= _d("ZARABh0") then
ttc = Vector3.new(zfq.X, niy.Position.Y + 3, zfq.Z)
end

lyx.CFrame = CFrame.new(ttc)
task.wait(0.5)
ajqr()

return true
end

local function gea()
local bi = vr.Character
local fla = bi and bi:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not fla then
return false
end

local lguq = Vector3.new(zfq.X - fla.Position.X, 0, zfq.Z - fla.Position.Z)
local ie = lguq.Magnitude

if ie < 2 then
return false
end

local hnhi = lguq.Unit

if ie > 12 then
local inmf = math.min(14, ie - 6)
local ekj = fla.Position + hnhi * inmf
local oy = RaycastParams.new()
oy.FilterType = Enum.RaycastFilterType.Exclude
oy.FilterDescendantsInstances = { bi }

local jtms = workspace:Raycast(ekj + Vector3.new(0, 25, 0), Vector3.new(0, -80, 0), oy)

if jtms and jtms.Instance.Name ~= _d("ZARABh0") then
local kjvq = jtms.Position.Y + 3.2

if math.abs(kjvq - fla.Position.Y) <= 10 then
local lou = Vector3.new(jtms.Position.X, kjvq, jtms.Position.Z)
fla.CFrame = CFrame.lookAt(lou, lou + hnhi)

return true
end
end
end

fla.CFrame = CFrame.lookAt(fla.Position, fla.Position + hnhi)

return true
end

local kx = {}

kx.surfaceWait = 8

kx.walking = false
kx.walkStartedAt = 0

kx.islandHold = Vector3.new(-7384, 16.3, -40539)

kx.custom = nil
kx.customIsland = nil

kx.islandAnchors = {
{ id = _d("UgdVDQsNAlYBawocDg1dAQ"), x = -3800 },
{ id = _d("RxJdDTAACVIGXAYc"), x = -6180 },
{ id = _d("RAxaBwILAF86XRADBw"), x = -7480 },
}

kx.arrivals = {
abandoned_island = Vector3.new(-3825, 24, -40260),
twin_beaches = Vector3.new(-6180, 40, -40350),
windmill_isle = Vector3.new(-7480, 30, -40350),
lobby = Vector3.new(-499, 17, -40234),
}

function kx.islandOf(ig)
if not ig then
return _d("XwpWARY")
end

if ig.X > -4500 then
return _d("XwpWARY")
end

local jd, psa = _d("UgdVDQsNAlYBawocDg1dAQ"), math.huge

for qdyz, zq in ipairs(kx.islandAnchors) do
local mz = math.abs(ig.X - zq.x)

if mz < psa then
jd = zq.id
psa = mz
end
end

return jd
end

kx.savedVersion = 2

do
local sacq = getgenv().ACBXDeepSpot

if type(sacq) == _d("RwRWDwo") and sacq.v == kx.savedVersion
and tonumber(sacq.X) and tonumber(sacq.Y) and tonumber(sacq.Z) then
kx.custom = Vector3.new(tonumber(sacq.X), tonumber(sacq.Y), tonumber(sacq.Z))
kx.customIsland = sacq.island
end
end

function kx.spot()
return kx.custom or kx.islandHold
end

function kx.dropStale()
if not kx.custom then
return false
end

if kx.zoneAt(kx.custom) then
return false
end

kx.custom = nil
kx.customIsland = nil
getgenv().ACBXDeepSpot = nil

return true
end

function kx.capture()
local so = vr.Character
local jfwg = so and so:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not jfwg then
return false, _d("fQoUAAcDHlIGQAYdQhhcRUYGDgZMUkVHEwAWTFUXWw5B")
end

local geoi = jfwg.Position
local zg = kx.floorAt(Vector3.new(geoi.X, geoi.Y + 10, geoi.Z))

if not zg then
return false, _d("YBFVDQtCA11FRwwDCwgTAkYMGgwIEwNdERwWTB5FQAsGEUxAFVsXTwoNQEVaDE8EAFwKRkMbDUxQBEcXTwQeXAga")
end

local ooip = kx.zoneAt(geoi)

if not ooip then
return false, _d("Zw1dEE8RHFwRFAocQgNGEUcKCwdMVhNRERZCCloWXAoBBUxBDFoET09MQBFVDQtCA0UARkMbCgkTElUXChBMVQxGEBtM")
end

kx.custom = geoi
kx.customIsland = kx.islandOf(geoi)

getgenv().ACBXDeepSpot = {
X = geoi.X,
Y = geoi.Y,
Z = geoi.Z,
island = kx.customIsland,
v = kx.savedVersion,
}

return true, _d("YARCBgtCGFsMR0McEgNHRVUQTxYEVkVQBgoSQUQEQAYdQgRcCVBDRw") .. tostring(ooip.name) .. _d("Gks")
end

function kx.zoneTable()
local dui = {}

if pvbe and type(pvbe.Zones) == _d("RwRWDwo") then
for nv, fec in ipairs(pvbe.Zones) do
dui[#dui + 1] = {
id = tostring(fec.id),
name = tostring(fec.name or fec.id),
half = tonumber(fec.half) or 0,
luck = tonumber(fec.luck) or 0,
index = tonumber(fec.index) or 0,
boatTier = tonumber(fec.boatTier) or 0,
}
end
end

table.sort(dui, function(ce, ju)
return ce.index < ju.index
end)

return dui
end

function kx.zoneAt(scv)
local cto = pvbe and pvbe.ZoneCenter
local cudc = kx.zoneTable()

if not (cto and scv and #cudc > 0) then
return nil
end

local wevu = math.max(math.abs(scv.X - cto.X), math.abs(scv.Z - cto.Z))

for utx, cw in ipairs(cudc) do
if wevu < cw.half then
return cw
end
end

return nil
end

function kx.current()
local qh = vr.Character
local id = qh and qh:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

return id and kx.zoneAt(id.Position) or nil
end

function kx.sync()
local kjf = kx.current()
he.zoneId = kjf and kjf.id or nil
end

function kx.floorAt(qo)
local um = vr.Character
local bb = RaycastParams.new()
bb.FilterType = Enum.RaycastFilterType.Exclude
bb.FilterDescendantsInstances = { um }

local ax = workspace:Raycast(Vector3.new(qo.X, qo.Y + 20, qo.Z), Vector3.new(0, -80, 0), bb)

if ax and ax.Instance.Name ~= _d("ZARABh0") then
return ax
end

return nil
end

function kx.ensureSpotMap()
local iq = kx.spot()
local cxve = Vector3.new(iq.X, iq.Y + 20, iq.Z)

if kx.floorAt(cxve) then
return true
end

local jfeb = workspace:FindFirstChild(_d("fgREEA"))

if jfeb and jfeb:FindFirstChild(_d("cApVEBsDAH8KVgEW")) then
if os.clock() - (kx.hopAt or 0) > 1 then
kx.hopAt = os.clock()
kx.hop(iq)
he.lastMessage = _d("fgpCCgEFTEcKFBcHB0xXAFETQhUNRwBGQxwSA0c")
end

return false
end

if os.clock() - (kx.islandAskedAt or 0) > 1.2 then
kx.islandAskedAt = os.clock()

local gji = kx.customIsland or kx.islandOf(iq)

if gji == _d("XwpWARY") then
pcall(function()
pzta.TeleportToWorld:FireServer(_d("XwpWARY"))
end)
else
pcall(function()
pzta.FishingIslandTeleport:FireServer(_d("RARNEwALAkc"), gji)
end)
end

he.lastMessage = _d("ZwRfCgEFTEcNUUMIAwFWQkdDGwcAVhVbERtCGFxFQAsKQghWAEROGAMYVhcUDg4S")
end

return false
end

function kx.hop(cov)
local wzal = vr.Character
local usb = wzal and wzal:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))
local cvgp = wzal and wzal:FindFirstChildOfClass(_d("exBZAgENBVc"))

if not (usb and cvgp) then
return false
end

if cvgp.SeatPart then
pcall(function()
cvgp.Sit = false
end)
end

usb.AssemblyLinearVelocity = Vector3.zero
usb.CFrame = CFrame.new(Vector3.new(cov.X, cov.Y + 8, cov.Z))

return true
end

function kx.faceWater()
local wggj = vr.Character
local ai = wggj and wggj:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not ai then
return false
end

local zfs = npq()

if not zfs then
local api = pvbe and pvbe.ZoneCenter

if api then
local pcq = Vector3.new(api.X - ai.Position.X, 0, api.Z - ai.Position.Z)

zfs = pcq.Magnitude > 1 and pcq.Unit or nil
end
end

if not zfs then
return false
end

ai.CFrame = CFrame.lookAt(ai.Position, ai.Position + zfs)

return true
end

function kx.aimWater(zmfk)
local uiu = vr.Character
local lryi = uiu and uiu:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not lryi then
return false
end

if zmfk then
ajqr()
end

local fss = lryi.CFrame.LookVector
local lw = Vector3.new(fss.X, 0, fss.Z)
local hdrl = npq()

if not hdrl then
return false
end

if lw.Magnitude > 0.05 and lw.Unit:Dot(hdrl) > 0.985 then
return true
end

lryi.CFrame = CFrame.lookAt(lryi.Position, lryi.Position + hdrl)

return true
end

function kx.hold(iig)
local pq = vr.Character
local fp = pq and pq:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))
local hwmq = pq and pq:FindFirstChildOfClass(_d("exBZAgENBVc"))

if not (fp and hwmq) then
return false
end

if hwmq.SeatPart then
pcall(function()
hwmq.Sit = false
end)
end

local wmq = kx.floorAt(iig)

if not wmq then
return false
end

fp.AssemblyLinearVelocity = Vector3.zero
fp.CFrame = CFrame.new(Vector3.new(iig.X, wmq.Position.Y + 3.2, iig.Z))

pcall(kx.aimWater, true)

he.phase = _d("WgFYBg")
he.nextCastAt = 0

return true
end

function kx.dive()
local gqz = kx.spot()

if not kx.ensureSpotMap() then
return false
end

if not kx.hold(gqz) then
return false
end

kx.islandAskedAt = 0

local ijeo = kx.zoneAt(gqz)

he.lastMessage = ijeo
and (_d("ewpYBwYMCxMRXAZPBglWFRkUDhYJQUVHEwAWTBs") .. tostring(ijeo.name) .. _d("Gg"))
or _d("ewpYBwYMCxMRXAZPBglWFRkUDhYJQUVHEwAW")

task.wait(0.25)
kx.sync()
he.deepDiveAt = os.clock() + 2

return true
end

function kx.walk()
local xkz = vr.Character
local zloq = xkz and xkz:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if kx.walking and os.clock() - (kx.walkStartedAt or 0) < 60 then
return false
end

if not zloq then
return false
end

local nmk = kx.spot()

if (zloq.Position - Vector3.new(nmk.X, zloq.Position.Y, nmk.Z)).Magnitude <= 8 then
he.phase = _d("WgFYBg")
he.nextCastAt = 0

return true
end

kx.walking = true
kx.walkStartedAt = os.clock()
he.deepPhase = _d("RARYCA")
he.deepStageAt = os.clock()
he.lastMessage = _d("ZARYCAYMCxMRW0MbCgkTAVEGHwcfR0VDAhsHHhMWRAwb")

task.spawn(function()
local iph = xkz and xkz:FindFirstChildOfClass(_d("exBZAgENBVc"))

local jfdh, dxn = pcall(function()

local sph = workspace:FindFirstChild(_d("fgREEA"))
local xz = kx.customIsland or kx.islandOf(nmk)
local ant = (zloq.Position - Vector3.new(nmk.X, zloq.Position.Y, nmk.Z)).Magnitude

if ant > 400 then
if not (sph and sph:FindFirstChild(_d("cApVEBsDAH8KVgEW"))) then
pcall(function()
pzta.TeleportToWorld:FireServer(_d("XwpWARY"))
end)

local hiu = os.clock() + 20

while he.deepWalk and os.clock() < hiu do
local ug = workspace:FindFirstChild(_d("fgREEA"))

if ug and ug:FindFirstChild(_d("cApVEBsDAH8KVgEW")) then
break
end

task.wait(0.5)
end
end

if he.deepWalk then
local gnuc = kx.arrivals and kx.arrivals[xz]

if gnuc then
kx.hop(gnuc)
else
local mylm = Vector3.new(nmk.X - zloq.Position.X, 0, nmk.Z - zloq.Position.Z)
local bc = mylm.Magnitude > 1 and mylm.Unit or Vector3.new(1, 0, 0)

kx.hop(Vector3.new(nmk.X - bc.X * 120, nmk.Y, nmk.Z - bc.Z * 120))
end

task.wait(1.5)
end
end

if he.deepWalk and iph then

local ghu = (zloq.Position - Vector3.new(nmk.X, zloq.Position.Y, nmk.Z)).Magnitude
local yduq = os.clock() + math.clamp(ghu / 8, 30, 600)
local mga = 0
local ta = zloq.Position
local vmxp = os.clock()

while he.deepWalk and os.clock() < yduq do
local smo = Vector3.new(nmk.X - zloq.Position.X, 0, nmk.Z - zloq.Position.Z)

if smo.Magnitude <= 3 then
break
end

if os.clock() - mga >= 0.25 then
iph:MoveTo(Vector3.new(nmk.X, zloq.Position.Y, nmk.Z))
mga = os.clock()
end

if os.clock() - vmxp >= 1.2 then
if (zloq.Position - ta).Magnitude < 2 then
iph.Jump = true
end

ta = zloq.Position
vmxp = os.clock()
end

task.wait(0.1)
end

iph:MoveTo(zloq.Position)
end
end)

kx.walking = false

if not jfdh then
he.deepPhase = _d("WgFYBg")
he.deepStageAt = os.clock()
he.lastMessage = _d("ZARYCE8WAxMhUQYfBx9HRWMCGwceEwNVCgMHCAlF") .. tostring(dxn)

return
end

if not he.deepWalk then
return
end

local ozqz = Vector3.new(zloq.Position.X - nmk.X, 0, zloq.Position.Z - nmk.Z)

if ozqz.Magnitude <= 6 then

pcall(kx.aimWater, true)
he.phase = _d("WgFYBg")
he.nextCastAt = 0
he.deepPhase = _d("WwpYBw")
he.deepStageAt = os.clock()
kx.sync()
he.lastMessage = _d("ZARYCAoGTEcKFBcHB0xABEIGC0IIVgBEThgDGFYXFBAfDRg")
else

he.deepPhase = _d("WgFYBg")
he.deepStageAt = os.clock()
he.lastMessage = _d("cApBDwtCAlwRFBQODgcTEVtDGwoJEwFRBh8HH0dFQwIbBx4TFkQMG0JBExFGGgYMCxMEUwIGDA")
end
end)

return false
end

function kx.settle()
for rave = 1, 30 do
if not he.deepZone or he.deepWalk then
return false
end

if kx.dive() then
return true
end

task.wait(1)
end

return false
end

function kx.surface()
local lbqi = vr.Character
local fod = lbqi and lbqi:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not fod then
return false
end

local shi = RaycastParams.new()
shi.FilterType = Enum.RaycastFilterType.Exclude
shi.FilterDescendantsInstances = { lbqi }

local sas = workspace:Raycast(zfq + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), shi)
local chj = zfq

if sas and sas.Instance.Name ~= _d("ZARABh0") then
chj = Vector3.new(zfq.X, sas.Position.Y + 3, zfq.Z)
end

fod.CFrame = CFrame.new(chj)
he.phase = _d("WgFYBg")
he.nextCastAt = 0

return true
end

function he.gotoIsland()
local iael = vr.Character
local yp = iael and iael:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))
local brbk = workspace:FindFirstChild(_d("ehZYAgEGKloWXAYdDw1dK2Qg"), true)

if not (yp and brbk) then
return false
end

local zhfp = brbk:GetPivot()
local lcy = RaycastParams.new()
lcy.FilterType = Enum.RaycastFilterType.Exclude
lcy.FilterDescendantsInstances = { iael, brbk }

local bidx = nil
local wok = -math.huge

for zy, dqvb in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local lr = workspace:Raycast(zhfp.Position + dqvb + Vector3.new(0, 30, 0), Vector3.new(0, -120, 0), lcy)

if lr and lr.Position.Y > wok then
bidx = lr
wok = lr.Position.Y
end
end

if bidx then
yp.CFrame = CFrame.new(Vector3.new(bidx.Position.X, wok + 3.5, bidx.Position.Z))
else
yp.CFrame = CFrame.new(zhfp.Position + Vector3.new(0, 4, 0))
end

he.phase = _d("WgFYBg")
he.nextCastAt = 0

return true
end

function kx.cycle()
local cikw = os.clock()
local vpyu = he.deepPhase or _d("WgFYBg")
local okrq = tonumber(he.deepStageAt) or 0

if cikw < math.max(he.shopTripUntil or 0, he.tpHoldUntil or 0) then
return
end

if vpyu == _d("WgFYBg") then
he.deepPhase = _d("WwpYBw")
he.deepStageAt = cikw

if he.deepWalk then
kx.walk()
else
kx.dive()
end

return
end

if vpyu == _d("RARYCA") then
return
end

if vpyu == _d("WwpYBw") then
local asvp = kx.current()

local rxq = kx.zoneAt(kx.spot())

if asvp and not vr:GetAttribute(_d("YBJdDgILAlQ")) and cikw - (he.deepAimAt or 0) > 2 then
he.deepAimAt = cikw
pcall(kx.aimWater)
end

if vr:GetAttribute(_d("YBJdDgILAlQ")) then
if he.deepWalk then

he.deepPhase = _d("WgFYBg")
he.deepStageAt = cikw
else
he.deepPhase = _d("VwxE")
he.deepStageAt = cikw
he.lastMessage = _d("YBJdDgILAlRFVRdPFgRWRVAGChJMQBVbF09PTEAQRgUOAQlXRVIMHUINWhc")
end
elseif not asvp or (rxq and asvp.index < rxq.index) then

he.deepPhase = _d("WgFYBg")
he.deepStageAt = cikw
end

return
end

if vpyu == _d("VwxE") then
kx.surface()
he.deepPhase = _d("QBBGBQ4BCQ")
he.deepStageAt = cikw

return
end

if vpyu == _d("QBBGBQ4BCQ") and cikw - okrq >= kx.surfaceWait then
he.deepPhase = _d("WgFYBg")
end
end

local function fvkw()
local tyry = vr.Character
local ki = tyry and tyry:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not ki then
return false
end

return (ki.Position - zfq).Magnitude <= 12
end

local function bbt()
if not fc() then
return false
end

local lgnx = pcall(function()
pzta.FishingSetAuto:FireServer(true)
end)

he.usingGameAuto = lgnx
return lgnx
end

local function iqpq()
he.usingGameAuto = false

pcall(function()
pzta.FishingSetAuto:FireServer(false)
end)

pcall(function()
pzta.FishingStop:FireServer()
end)
end

function he.recover()
he.phase = _d("WgFYBg")
he.nextCastAt = 0
he.deepPhase = _d("WgFYBg")
he.deepStageAt = 0
he.deepDiveAt = 0
he.waterRefusals = 0
he.usingGameAuto = false
he.castMark = he.totalCasts
he.castMarkAt = os.clock()

pcall(iqpq)
pcall(fc)

if he.deepZone and not kx.current() then

pcall(function()
pzta.TeleportToWorld:FireServer(_d("XwpWARY"))
end)
elseif he.tpToBay and not fvkw() then
pcall(ei)
end

he.lastMessage = _d("dQxHCwYMCxMWQAIDDglXRRlDHQcfVhEUFwcHTEQEQAYdQg1dARQXAA0HExFcBk8FDV4AExBPDgNRB01DHQ0b")
end

local function co()
if not fc() then
he.lastMessage = _d("fQoUBQYRBFoLU0MdDQgTDFpDGwoJEwdVAAQSDVAO")
return false
end

local hwd = ne()
local eaj = npq()
local lbdr = hwd or eaj

if not lbdr then
he.lastMessage = _d("fQoUFA4WCUFFUgwaDAgTC1ECHQAV")
return false
end

if hwd and eaj and hwd:Dot(eaj) < 0.25 then
lbdr = eaj
end

he.phase = _d("UARHFwYMCw")
he.lastMessage = nil
he.watchdogAt = os.clock() + 25

local eq, jc = pcall(function()
pzta.FishingThrow:FireServer(1, lbdr)
end)

if not eq then
he.phase = _d("WgFYBg")
he.lastMessage = tostring(jc)
he.nextCastAt = os.clock() + 3
return false
end

return true
end

local sah = pzta.FishingUpdate.OnClientEvent:Connect(function(cyx, faq)
he.dirty = true

if cyx == _d("YBFVFwo") then
if type(faq) == _d("RwRWDwo") then
he.autoOn = faq.autoOn == true
end

return
end

if cyx == _d("cARHFw") then
he.phase = _d("RARdFwYMC3EMQAY")
he.waterRefusals = 0
return
end

if cyx == _d("cQxABg") then
local frnw = type(faq) == _d("RwRWDwo") and tonumber(faq.warning) or 1

he.phase = _d("QQBRDwYMCw")
he.watchdogAt = os.clock() + 15

task.delay(math.max(0.3, frnw + 0.8), function()
if he.phase ~= _d("QQBRDwYMCw") then
return
end

pcall(function()
pzta.FishingReel:FireServer(true, 120)
end)

he.phase = _d("QQBHDAMUBV0C")
end)

return
end

if cyx == _d("cARAAAc") then

local jveb = type(faq) == _d("RwRWDwo") and tonumber(faq.totalCasts) or nil
local rshc = tonumber(getgenv().ACBXFishingCatchMark) or 0

if jveb and jveb <= rshc and rshc - jveb < 25 then
return
end

if jveb then
getgenv().ACBXFishingCatchMark = jveb
end

local fine = type(faq) == _d("RwRWDwo") and tostring(faq.itemId) or _d("RgtfDQAVAg")
local uf = he.catchName(fine)

he.catches[fine] = (he.catches[fine] or 0) + 1
he.totalCatches = (he.totalCatches or 0) + 1

local kza = type(faq) == _d("RwRWDwo") and faq.chest or nil

if type(kza) == _d("RwRWDwo") and kza.itemId then
local kicf = tostring(kza.itemId)

he.catches[kicf] = (he.catches[kicf] or 0) + 1
end

if os.clock() - (vab.at or 0) >= 5 then
vab.at = os.clock()
vab.save()
end
he.lastCatch = uf
he.lastMessage = nil
he.phase = _d("WgFYBg")
he.nextCastAt = os.clock() + 2.5

if type(faq) == _d("RwRWDwo") then
he.casts = tonumber(faq.casts) or he.casts
he.totalCasts = tonumber(faq.totalCasts) or he.totalCasts
he.autoUnlocked = faq.autoUnlocked == true or he.autoUnlocked
end

return
end

if cyx == _d("chBADCAECg") then

he.usingGameAuto = false
he.phase = _d("WgFYBg")
he.nextCastAt = os.clock() + 1
return
end

if cyx == _d("dhZXAh8HCA") then
he.phase = _d("WgFYBg")
he.lastMessage = _d("Zw1RQwkLH1tFUwwbQg1EBE0")
he.nextCastAt = os.clock() + 2.5
return
end

if cyx == _d("YQBeBgwWCVc") then
he.phase = _d("WgFYBg")

local xxy = type(faq) == _d("RwRWDwo") and tostring(faq.message) or _d("cARHF08QCVkAVxcKBg")
he.lastMessage = xxy

if xxy:lower():find(_d("RARABh0"), 1, true) then
he.waterRefusals = (he.waterRefusals or 0) + 1

if he.waterRefusals >= 2 then
he.waterRefusals = 0

if gea() then
he.lastMessage = _d("YQBSFhwHCBMRQwoMB0weRUAWHQwJV0VWAgwJTEcKQwIdBkxHDVFDGAMYVhc")
he.nextCastAt = os.clock() + 1.5
return
end
end

he.nextCastAt = os.clock() + 8
return
end

he.waterRefusals = 0
he.nextCastAt = os.clock() + 3
return
end
end)

local function dc()
if not he.loaded then
return _d("YQBVBwYMCxMDXRAHCwJURUcXDhYJHUsa")
end

local vdg = he.autoUnlocked == true
or (he.totalCasts or 0) > 0
or (he.tutorialStep or 0) > 0
local wy = pvbe and pvbe.RodsById and pvbe.RodsById[he.rod]
local vv = wy and tostring(wy.name) or tostring(he.rod)
local njrr = math.floor((tonumber(he.luck) or 0) * 100 + 0.5)

local og = {
_d("YQpQWU8") .. vv,
_d("fxBXCFVC") .. njrr .. _d("Fg"),
}

local se = kx.current()

if se then
table.insert(og, _d("aQpaBlVC") .. se.name .. _d("E00f") .. tostring(math.floor(se.luck * 100 + 0.5)) .. _d("FkVYFgwJRQ"))
end

table.insert(og, _d(""))
table.insert(og, _d("cARHFxxCGFxFRxMKDAgJRQ") .. oh(he.casts or 0))
table.insert(og, _d("ZwpAAgNCD1IWQBBVQg") .. oh(he.totalCasts or 0))

table.insert(og, _d(""))
table.insert(og, _d("dQxHCwYMCxMQWg8AAQdWAQ5D") .. (vdg and _d("SgBH") or _d("XQo")))
table.insert(og, _d("chBADEIEBUANFBYfBR5SAVFZTw") .. (he.autoUnlocked and _d("XBJaBgs") or _d("XQpAQwAVAlYB")))

if he.enabled then
local czu = he.usingGameAuto and _d("VARZBk8DGUcK") or tostring(he.phase)

if czu == _d("RARdFwYMC3EMQAY") then
czu = _d("RARdFwYMCxMDWxFPA0xRDEAG")
elseif czu == _d("QQBRDwYMCw") then
czu = _d("QQBRDwYMCxMMWg")
elseif czu == _d("QQBHDAMUBV0C") then
czu = _d("XwRaBwYMCxMMQA")
end

table.insert(og, _d(""))
table.insert(og, _d("chBADE8kBUANDkM") .. czu)

local cybo = kxd.worldBoss

if cybo and type(cybo.hasWork) == _d("VRBaABsLA10") and cybo.enabled and cybo.hasWork() then
table.insert(og, _d("ewpYBwYMCwlFUw8AAA1fRVYMHBFMWhYUFh9CREEARxYCBx8TClpDBhYfEwZbDAMGA0QLHQ"))
end

if he.lastCatch then
table.insert(og, _d("fwRHF08BDUcGXFlP") .. he.lastCatch)
end
end

if he.lastMessage then
table.insert(og, _d(""))
table.insert(og, _d("fQpABlVC") .. he.lastMessage)
end

return table.concat(og, _d("OQ"))
end

local function jk()
local wqai = 0

for omhg, fxl in pairs(he.catches) do
local tpu = wvxs.ById[omhg]

if not (tpu and tpu.type == _d("UA1REBs")) then
wqai = wqai + fxl
end
end

return wqai
end

local function fh()
local rq = {}

for qvpe, bm in pairs(he.catches) do
local ok = wvxs.ById[qvpe]
local qqk = ok and ok.type == _d("UA1REBs") or false

table.insert(rq, {
name = he.catchName(qvpe),
count = bm,
chest = qqk,
rank = qqk and (tonumber(ok.border) or 1) or 0,
})
end

if #rq == 0 then
return _d("fQpACwYMCxMGVRYIChgTHFEXQWhmZxBGDU8NAhMkQRcAQipaFlxDDgwIExFcBk8WDV8JTUMcFg1BEUdDBwceVksUKhtCH1ITURBPCxhAAFgFQ0IfXEVdF08BDUEXXQYcQgNFAEZDAQcUR0VHBhwRBVwLGg")
end

table.sort(rq, function(doog, tlst)
if doog.chest ~= tlst.chest then
return doog.chest
end

if doog.chest and doog.rank ~= tlst.rank then
return doog.rank > tlst.rank
end

if doog.count ~= tlst.count then
return doog.count > tlst.count
end

return doog.name < tlst.name
end)

local fwe = {}

for pfwy, iul in ipairs(rq) do
table.insert(fwe, iul.name .. _d("E4e0908") .. oh(iul.count))
end

local erxf = {
table.concat(fwe, _d("OW8")),
_d(""),
_d("ZwpAAgNCD1IQUwsbWEw") .. oh(jk()) .. _d("E6eDQw") .. #rq .. _d("Ew5dDQsR"),
}

if he.lastCatch then
table.insert(erxf, _d("fwRHF08BDUcGXFlP") .. tostring(he.lastCatch))
end

return table.concat(erxf, _d("OQ"))
end

local cvxt = {
rod = Vector3.new(-493, 18, -40254),
bait = Vector3.new(-493, 18, -40254),
}

local function hjky(vc)
if not pvbe then
return {}
end

local cwl

if vc == _d("QQpQ") then
cwl = pvbe.RodsById
elseif vc == _d("UQRdFw") then
cwl = pvbe.BaitsById
else
cwl = nil
end

local wi = {}

for lc, enux in pairs(cwl or {}) do
if not enux.crafted then
table.insert(wi, {
id = tostring(lc),
name = tostring(enux.name or lc),
cost = tonumber(enux.cost) or 0,
luck = tonumber(enux.luck) or 0,
index = tonumber(enux.index) or 0,
island = enux.shop == _d("WhZYAgEG"),
})
end
end

table.sort(wi, function(brj, jhuo)
if brj.index ~= jhuo.index then
return brj.index < jhuo.index
end

return brj.cost < jhuo.cost
end)

return wi
end

local function oyl(rz)
if rz == _d("QQpQ") then
return he.rodsOwned or {}
elseif rz == _d("UQRdFw") then
return he.baitsOwned or {}
end

return {}
end

local function epr(vrrz)
if vrrz == _d("QQpQ") then
return he.rod
elseif vrrz == _d("UQRdFw") then
return he.equippedBait
end

return nil
end

local function dn(heu)
local ut = oyl(heu)
local hlj = nil

for moa, ame in ipairs(hjky(heu)) do
if ut[ame.id] == true then
hlj = ame
end
end

return hlj
end

local function zfbv(gl)
if gl.island and he.islandLocked then
return false
end

return true
end

local function fi(wtpg)
local zm = oyl(wtpg)
local imu = he.casts or 0
local axck = nil

for mbyo, bznf in ipairs(hjky(wtpg)) do
if zm[bznf.id] ~= true and bznf.cost <= imu and zfbv(bznf) then
axck = bznf
end
end

return axck
end

local function rfqy(xzz)
local tke = oyl(xzz)

for qx, qteo in ipairs(hjky(xzz)) do
if tke[qteo.id] ~= true and zfbv(qteo) then
return qteo
end
end

return nil
end

local function hlv(yl, ovt)
if not ovt then
return _d("XQpaBk8NG10AUA")
end

return ovt.name .. _d("E00f") .. tostring(math.floor(ovt.luck * 100 + 0.5)) .. _d("FkVYFgwJRQ")
end

local function fekq()
if not pvbe then
return _d("dQxHCwYMC3cEQAJPDANHRVIMGgwIE0gUEAcNHBMBVRcOQhldBEICBg4NUQlRTQ")
end

local gtxr = {}
local uz = { rod = _d("YQpQ"), bait = _d("cQRdFw") }

for pbit, iukp in ipairs({ _d("QQpQ"), _d("UQRdFw") }) do
local oity = dn(iukp)
local pjki = nil

for rrio, juhz in ipairs(hjky(iukp)) do
if juhz.id == epr(iukp) then
pjki = juhz.name
end
end

if #gtxr > 0 then
table.insert(gtxr, _d(""))
end

table.insert(gtxr, uz[iukp] .. _d("CUU") .. hlv(iukp, oity))
table.insert(gtxr, _d("fAsUDQAVVhM") .. (pjki or _d("XQpaBg")))

local vmc = fi(iukp) or rfqy(iukp)

if vmc then
local arm = vmc.cost - (he.casts or 0)

table.insert(gtxr, _d("fQBMF1VC") .. vmc.name .. _d("E6eDQw") .. oh(vmc.cost) .. _d("EwZVEBsR"))

if arm > 0 then
table.insert(gtxr, _d("fQBRB08") .. oh(arm) .. _d("EwhbEQo"))
end
else
table.insert(gtxr, _d("fQBMF1VCCUUARhobCgVdAhQMGAwJVw"))
end
end

table.insert(gtxr, _d(""))
table.insert(gtxr, _d("cARHFxxCGFxFRxMKDAgJRQ") .. oh(he.casts or 0))

if he.shopMessage then
table.insert(gtxr, _d(""))
table.insert(gtxr, he.shopMessage)
end

return table.concat(gtxr, _d("OQ"))
end

local function kp(updk, kzr)
local yet = os.clock()

if yet < (he.shopCallAt or 0) then
return false, _d("QAlbFA")
end

he.shopCallAt = yet + 1.4

local jfi, gbpr, ar, sigq = pcall(function()
return pzta.FishingShop:InvokeServer(updk, kzr)
end)

if not jfi then
return false, _d("VhdGDB1C") .. tostring(gbpr)
end

mgxg(sigq)

if gbpr == true then
return true, nil
end

return false, tostring(ar or _d("QQBSFhwHCA"))
end

function he.rebirthCardsHeld()
local hnvl = pvbe and type(pvbe.RebirthCards) == _d("RwRWDwo") and #pvbe.RebirthCards or 0

if hnvl == 0 then
return 0, 0
end

local zisw = 0

for ifa, jcbc in ipairs(pvbe.RebirthCards) do
if he.rebirthCards[jcbc.cardId] then
zisw = zisw + 1
end
end

return zisw, hnvl
end

function he.rebirthReady()
local ckjp, fez = he.rebirthCardsHeld()

return fez > 0 and ckjp >= fez and (tonumber(he.rebirths) or 0) < 1
end

function he.rebirthText()
local lem, hxr = he.rebirthCardsHeld()

if hxr == 0 then
return _d("dQxHCwYMCxMBVRcOQgJcERQPAAMIVgEYQxwNTEEAVgodFgQTDEdDGgwNRQRdDw4AAFZL")
end

if (tonumber(he.rebirths) or 0) >= 1 then
return _d("YQBWCh0WBFYBGkM7CgkTJFYCAQYDXQBQQyYRAFILUEMGEUxcFVENQQ")
end

if lem >= hxr then
return _d("cglYQw") .. hxr .. _d("EwZVEQsRTFUMRwsKBkITN1ECCxtMRwoUEQoABUERXE0")
end

local cgi = {}

for zold, pgah in ipairs(pvbe.RebirthCards) do
if not he.rebirthCards[pgah.cardId] then
table.insert(cgi, (string.gsub(pgah.cardId, _d("bQNdEAc9"), _d(""))))
end
end

return lem .. _d("HA") .. hxr .. _d("EwZVEQsRQhM2QAoDDkxdAFEHTw") .. table.concat(cgi, _d("H0U")) .. _d("HQ")
end

local function cmw(ygh)
local iyr = vr.Character
local xx = iyr and iyr:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not xx then
return false
end

return (xx.Position - (cvxt[ygh] or cvxt.rod)).Magnitude <= 26
end

local function xopn(xn)
if cmw(xn) then
return true
end

local rllw = vr.Character
local jn = rllw and rllw:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not jn then
return false
end

local qsr = cvxt[xn] or cvxt.rod
he.shopTripUntil = os.clock() + 12
he.shopHoldUntil = os.clock() + 12

pcall(function()
jn.CFrame = CFrame.new(qsr)
end)

task.wait(1.2)

return cmw(xn)
end

local function cpvp(fmdg, vf, xkt)
if not xkt then
return false
end

if (he.casts or 0) < xkt.cost then
return false
end

if not xopn(fmdg) then
he.shopMessage = _d("cApBDwtCAlwRFBEKAw9bRUALCkIfWwpEQwkNHhM") .. xkt.name
return false
end

local wqnz, cvfv = kp(vf, xkt.id)

if not wqnz then
local sa = tostring(cvfv)
local aoj = sa:find(_d("ZwRYCE8WAxMRXAZPJAVADVERAgMC"), 1, true) or sa:find(_d("cQpVF08mCVIJURE"), 1, true)

if aoj then

he.shopMessage = _d("ZARYCAYMCxMQREMbDUxHDVFDDA0ZXRFREU8EA0FF") .. xkt.name
return false
end

if cvfv ~= _d("QAlbFA") then
he.shopAt = os.clock() + 15
he.shopMessage = _d("YABGFQoQTEEAUhYcBwgT") .. xkt.name .. _d("E00") .. sa .. _d("Gg")
end

return false
end

he.shopMessage = _d("cQpBBAcWTA") .. xkt.name

return true
end

local function akpx(jkx)
local xzys = dn(jkx)

if not xzys or epr(jkx) == xzys.id then
return false
end

local rvo

if jkx == _d("QQpQ") then
rvo = _d("dhRBCh8wA1c")
elseif jkx == _d("UQRdFw") then
rvo = _d("dhRBCh8gDVoR")
else
return false
end

local ropu, rmx = kp(rvo, xzys.id)

if not ropu then
if rmx ~= _d("QAlbFA") then
he.shopMessage = _d("cApBDwtCAlwRFAYeFwVDRQ") .. xzys.name .. _d("E00") .. tostring(rmx) .. _d("Gg")
end

return false
end

if jkx == _d("QQpQ") then
he.rod = xzys.id
elseif jkx == _d("UQRdFw") then
he.equippedBait = xzys.id
else
return false
end

he.shopMessage = _d("dhRBCh8SCVdF") .. xzys.name

return true
end

local function lifp()
local zdjk = he.shop

if os.time() - (he.lastSync or 0) >= 5 then
zk()
end

if zdjk.equipRod then
akpx(_d("QQpQ"))
end

if zdjk.equipBait then
akpx(_d("UQRdFw"))
end

if zdjk.autoBuyRod then
cpvp(_d("QQpQ"), _d("cRBNMQAG"), fi(_d("QQpQ")))
end

if zdjk.autoBuyBait then
cpvp(_d("UQRdFw"), _d("cRBNIQ4LGA"), fi(_d("UQRdFw")))
end
end

local function bn()
local slw = he.shop

return slw.autoBuyRod or slw.autoBuyBait or slw.equipRod or slw.equipBait
end

he.shopIsland = {
rods = function()
local nzu = pvbe and pvbe.RodsById or {}
local qxmn = {}

for lnhy, bgr in pairs(nzu) do
if tostring(bgr.shop) == _d("WhZYAgEG") then
table.insert(qxmn, {
id = tostring(lnhy),
name = tostring(bgr.name or lnhy),
cost = tonumber(bgr.cost) or 0,
luck = tonumber(bgr.luck) or 0,
index = tonumber(bgr.index) or 0,
crafted = bgr.crafted == true,
})
end
end

table.sort(qxmn, function(kob, msul)
return kob.index < msul.index
end)

return qxmn
end,

angler = function()
local pmy = workspace:FindFirstChild(_d("fTV3EA"), true)

if not pmy then
return nil
end

for jrsy, ysrm in ipairs(pmy:GetChildren()) do
if ysrm:GetAttribute(_d("YABXEQoWLV0CWAYdLDxw")) then
return ysrm
end
end

return nil
end,
held = function(ms)
return (he.rodsOwned or {})[ms] == true
end,
recipeHeld = function(jgco)
for sgai, ovth in ipairs(jgco or {}) do
local eoyw = tonumber((he.mats or {})[ovth.id]) or 0

if eoyw < (tonumber(ovth.count) or 0) then
return false
end
end

return true
end,
recipeText = function(xvx)
local wrm = {}

for zl, omb in ipairs(xvx or {}) do
local vquq = tonumber((he.mats or {})[omb.id]) or 0
local tsrp = (wvxs.ById[omb.id] and wvxs.ById[omb.id].name) or tostring(omb.id)

table.insert(wrm, tsrp .. _d("Ew") .. oh(vquq) .. _d("HA") .. oh(tonumber(omb.count) or 0))
end

return table.concat(wrm, _d("E6eDQw"))
end,

stand = function(ftb)
local tak = vr.Character
local sdfs = tak and tak:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not (sdfs and ftb) then
return false
end

local ka = ftb:GetPivot()
local pbvy = ftb:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ")) or ftb:FindFirstChildWhichIsA(_d("cQRHBj8DHkc"), true)
local thze = pbvy and (pbvy.CFrame * CFrame.new(0, 0, -5)).Position or nil

if not thze then
local wpa = RaycastParams.new()
wpa.FilterType = Enum.RaycastFilterType.Exclude
wpa.FilterDescendantsInstances = { tak, ftb }

local uhcs = nil
local hu = math.huge

for zxo, ixqb in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local bwpj = workspace:Raycast(ka.Position + ixqb + Vector3.new(0, 30, 0), Vector3.new(0, -140, 0), wpa)

if bwpj and tostring(bwpj.Instance.Name) ~= _d("ZARABh0") and bwpj.Position.Y <= ka.Position.Y + 10 then
local zn = math.abs(bwpj.Position.Y - ka.Position.Y)

if zn < hu then
uhcs = bwpj
hu = zn
end
end
end

thze = uhcs and Vector3.new(uhcs.Position.X, uhcs.Position.Y + 3.5, uhcs.Position.Z) or (ka.Position + Vector3.new(0, 4, 0))
end

he.shopTripUntil = os.clock() + 12

he.islandTripUntil = os.clock() + 12

pcall(function()
sdfs.CFrame = CFrame.new(thze)
end)

task.wait(1.2)

return true
end,
atIsland = function()
local zos = workspace:FindFirstChild(_d("ehZYAgEGKloWXAYdDw1dK2Qg"), true)
local hh = vr.Character
local nb = hh and hh:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not (zos and nb) then
return false
end

return (nb.Position - zos:GetPivot().Position).Magnitude <= 45
end,
toIsland = function()
if he.shopIsland.atIsland() then
return true
end

he.shopTripUntil = os.clock() + 12

if not he.gotoIsland() then
return false
end

task.wait(1.2)

return he.shopIsland.atIsland()
end,

craftExcalibur = function()
local shdz = he.shopIsland.angler()

if not shdz or he.shopIsland.held(_d("QQpQPBwHD0EAQA")) then
return false
end

if not he.shopIsland.recipeHeld(pvbe and pvbe.SecretRecipe) then
return false
end

he.shopIsland.stand(shdz)

local ymuo, zoe = kp(_d("cBdVBRswA1c"), _d("QQpQPBwHD0EAQA"))

if ymuo then
he.rod = _d("QQpQPBwHD0EAQA")
he.islandMessage = _d("cBdVBRsHCBMRXAZPJxRQBFgKDRceExdbB08DGBMRXAZPKgVXAVENTyMCVAlREQ")
elseif zoe ~= _d("QAlbFA") then
he.islandMessage = _d("ewxQBwoMTHILUw8KEExBAFIWHAcIExFcBk8nFFAEWAoNFx4TTQ") .. tostring(zoe) .. _d("Gg")
end

return ymuo
end,
buyRod = function()
if he.islandLocked then
return false
end

local espp = he.rodsOwned or {}
local osjo = nil

for ue, fl in ipairs(he.shopIsland.rods()) do
if not fl.crafted
and espp[fl.id] ~= true
and fl.cost <= (he.casts or 0)
and (osjo == nil or fl.index > osjo.index) then
osjo = fl
end
end

if not osjo then
return false
end

if not he.shopIsland.toIsland() then
he.islandMessage = _d("cApBDwtCAlwRFBEKAw9bRUALCkIFQAlVDQtCD1wQWhcKEA")
return false
end

local vzv, gm = kp(_d("cRBNMQAG"), osjo.id)

if vzv then
he.islandMessage = _d("cQpBBAcWTA") .. osjo.name
elseif gm ~= _d("QAlbFA") then
local cm = tostring(gm)

if not (cm:find(_d("ZwRYCE8WAw"), 1, true) or cm:find(_d("ehZYAgEGCUE"), 1, true)) then
he.islandAt = os.clock() + 15
he.islandMessage = _d("YABGFQoQTEEAUhYcBwgT") .. osjo.name .. _d("E00") .. cm .. _d("Gg")
end
end

return vzv
end,
craftBoot = function()
if he.boot.owned or he.islandLocked then
return false
end

if not he.shopIsland.recipeHeld(pvbe and pvbe.BootRecipe) then
return false
end

if not he.shopIsland.toIsland() then
he.islandMessage = _d("cApBDwtCAlwRFBEKAw9bRUALCkIFQAlVDQtCD1wQWhcKEA")
return false
end

local jamz, qnsb = kp(_d("cBdVBRsgA1wR"))

if jamz then
he.boot.owned = true
he.islandMessage = _d("cBdVBRsHCBMRXAZPLglUAFoHDhAVEydbDBs")
elseif qnsb ~= _d("QAlbFA") then
he.islandMessage = _d("ehZYAgEGTHUMRwsKEAFSCxQRCgQZQABQQxsKCRMHWwwbQkQ") .. tostring(qnsb) .. _d("Gg")
end

return jamz
end,
best = function()
local bbcw = he.rodsOwned or {}
local bfea = nil

for ukyg, btzv in ipairs(he.shopIsland.rods()) do
if bbcw[btzv.id] == true and (bfea == nil or btzv.luck > bfea.luck) then
bfea = btzv
end
end

return bfea
end,

equipRod = function()
local tju = he.shopIsland.best()

if not tju or he.rod == tju.id then
return false
end

local kwve, pge = kp(_d("dhRBCh8wA1c"), tju.id)

if kwve then
he.rod = tju.id
he.islandMessage = _d("dhRBCh8SCVdF") .. tju.name
elseif pge ~= _d("QAlbFA") then
he.islandMessage = _d("cApBDwtCAlwRFAYeFwVDRQ") .. tju.name .. _d("E00") .. tostring(pge) .. _d("Gg")
end

return kwve
end,
equipBoot = function()
if not he.boot.owned or he.boot.equipped then
return false
end

local qklq, wfj = kp(_d("dhRBCh8gA1wR"), true)

if qklq then
he.boot.equipped = true
he.islandMessage = _d("dhRBCh8SCVdFQAsKQiBWAlENCwMeSkV2DAAW")
elseif wfj ~= _d("QAlbFA") then
he.islandMessage = _d("cApBDwtCAlwRFAYeFwVDRUALCkIOXApAQ0c") .. tostring(wfj) .. _d("Gg")
end

return qklq
end,
active = function()
local ty = he.island

return ty.autoRod or ty.equipRod or ty.autoAcc or ty.equipAcc
end,
run = function()
local si = he.island

if os.time() - (he.lastSync or 0) >= 8 then
zk()
end

local bvuz = false

if si.autoRod then
bvuz = he.shopIsland.craftExcalibur()
end

if si.equipRod then
he.shopIsland.equipRod()
end

if si.autoRod and not bvuz then
he.shopIsland.buyRod()
end

if si.autoAcc then
he.shopIsland.craftBoot()
end

if si.equipAcc then
he.shopIsland.equipBoot()
end
end,
text = function()
if not pvbe then
return _d("dQxHCwYMC3cEQAJPDANHRVIMGgwIE0gUFwcHTFoWWAIBBkxADVsTTwsfExBaAhkDBV8EVg8KTA")
end

local bu = {}
local gf = he.rodsOwned or {}

table.insert(bu, he.islandLocked and _d("cgdVDQsNAlYBFCocDg1dARQKHEIAXAZfBgtCQRMXUQEGEBhbRVIKHREYHQ") or _d("cgdVDQsNAlYBFCocDg1dARQKHEIDQwBaTQ"))

for bew, hbgo in ipairs(he.shopIsland.rods()) do
local dzhh

if gf[hbgo.id] == true then
dzhh = he.rod == hbgo.id and _d("XBJaBgtCroRFWw1PDANE") or _d("XBJaBgs")
elseif hbgo.crafted then
dzhh = _d("ewxQBwoMTHILUw8KEExBAFcKHwc")
else
dzhh = oh(hbgo.cost) .. _d("EwZVEBsR")
end

table.insert(bu, hbgo.name .. _d("E4e0908") .. dzhh)
end

table.insert(bu, _d(""))

if gf.rod_secret then
table.insert(bu, _d("dh1XAgMLDkYXDkMAFQJWAQ"))
else
local luau = he.shopIsland.recipeHeld(pvbe.SecretRecipe)

table.insert(bu, _d("dh1XAgMLDkYXDkM") .. (luau and _d("QQBXCh8HTEEAVQcW") or _d("QQBXCh8HTEANWxEb")))
table.insert(bu, he.shopIsland.recipeText(pvbe.SecretRecipe))
end

table.insert(bu, _d("ewxQBwoMTHILUw8KEFYT") .. (he.shopIsland.angler() and _d("RhUUDQAV") or _d("XQpAQwcHHlY")))
table.insert(bu, _d(""))

local vesq = he.boot
local zz

if vesq.equipped then
zz = _d("fwBTBgEGDUEcFCEADRgJRVESGgscQwBQ")
elseif vesq.owned then
zz = _d("fwBTBgEGDUEcFCEADRgJRVsUAQcI")
elseif he.shopIsland.recipeHeld(pvbe.BootRecipe) then
zz = _d("fwBTBgEGDUEcFCEADRgJRUYGDAscVkVGBg4GFQ")
else
zz = _d("fwBTBgEGDUEcFCEADRgJRQ") .. he.shopIsland.recipeText(pvbe.BootRecipe)
end

table.insert(bu, zz)
table.insert(bu, _d("cARHFxxCGFxFRxMKDAgJRQ") .. oh(he.casts or 0))

if he.islandMessage then
table.insert(bu, _d(""))
table.insert(bu, he.islandMessage)
end

return table.concat(bu, _d("OQ"))
end,
}

task.spawn(function()
zk()
end)

local vps = {
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

getgenv().ACBXAutoBuyHalloween = vps

pzta.SyncItems.OnClientEvent:Connect(function(unah)
if type(unah) == _d("RwRWDwo") then
vps.balances = unah
vps.lastSync = os.time()
end
end)

pzta.RequestItemSync:FireServer()

pzta.RaidShopState.OnClientEvent:Connect(function(kjvh)
if type(kjvh) == _d("RwRWDwo") and kjvh.shopId == _d("WwRYDwAVCVYL") then
vps.shopState = kjvh
vps.stateAt = os.clock()
end
end)

pzta.RaidNotify.OnClientEvent:Connect(function(vl)
local qc = vps.pending

if not qc or type(vl) ~= _d("QBFGCgEF") then
return
end

if vl:sub(1, 9) == _d("YzBmICcjP3Yh") then
vps.purchased[qc.id] = (vps.purchased[qc.id] or 0) + 1
vps.pending = nil
else
if vps.balances[qc.currency] then
vps.balances[qc.currency] = vps.balances[qc.currency] + qc.price
end

vps.failedUntil[qc.id] = os.time() + 5
vps.pending = nil
end
end)

vpex.trip = {
untilAt = 0,
lastTry = 0,
lastResult = nil,
spot = nil,
}

function vpex.merchant()
local mrvw = workspace:FindFirstChild(_d("fTV3EA"))
local ihgm = vpex.shopData and vpex.shopData.NpcName or _d("YxBZEwQLAhMoUREMCg1dEQ")

return mrvw and mrvw:FindFirstChild(ihgm) or nil
end

function vpex.stand()
local gbba = vpex.merchant()
local ezp = gbba and (gbba:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ")) or gbba:FindFirstChildWhichIsA(_d("cQRHBj8DHkc")))
local qtv = vr.Character
local ghy = qtv and qtv:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not (ezp and ghy) then
return false
end

vpex.trip.spot = ezp.Position + Vector3.new(0, 3, 4)
ghy.AssemblyLinearVelocity = Vector3.zero
ghy.CFrame = CFrame.new(vpex.trip.spot)

return true
end

function vpex.fresh()
return vps.shopState ~= nil and os.clock() - vps.stateAt < 30
end

function vpex.guiOpen()
local vshm = cmup:FindFirstChild(_d("ewRYDwAVCVYLZwsAEitGDA"))
local twlo = vshm and vshm:FindFirstChild(_d("YA1bEykQDV4A"))

if twlo then
return twlo.Visible == true
end

for lnt, dm in ipairs(cmup:GetChildren()) do
if dm:IsA(_d("YAZGBgoMK0YM")) and dm.Name:lower():find(_d("WwRYDwAVCVYL"), 1, true) and dm.Enabled then
return true
end
end

return false
end

function vpex.close()
local deol = cmup:FindFirstChild(_d("ewRYDwAVCVYLZwsAEitGDA"))
local qscn = deol and deol:FindFirstChild(_d("YA1bEykQDV4A"))

if not (qscn and qscn.Visible) then
return false
end

local tqf = qscn:FindFirstChild(_d("cAlbEAogGUcRWw0"))

if not tqf then
for xq, jmmp in ipairs(qscn:GetDescendants()) do
if jmmp:IsA(_d("dBBdIRoWGFwL")) and tostring(jmmp.Name):lower():find(_d("UAlbEAo"), 1, true) then
tqf = jmmp
break
end
end
end

if tqf and type(firesignal) == _d("VRBaABsLA10") then
pcall(function()
firesignal(tqf.MouseButton1Click)
end)

task.wait(0.3)

if not qscn.Visible then
return true
end
end

pcall(function()
qscn.Visible = false
end)

return true
end

function vpex.spend()
if vps.pending or os.time() - (vps.lastAttempt or 0) < 1 then
return nil
end

local dku = vps.shopState

for vji, ssz in ipairs(vpex.shopItems) do
if vps.selected[ssz.id] and os.time() >= (vps.failedUntil[ssz.id] or 0) then
local vtcc = ssz.stock
local tvek = vps.purchased[ssz.id] or 0

if dku and dku.stocks and dku.stocks[ssz.id] then
vtcc = dku.stocks[ssz.id]
end

if dku and dku.bought then
tvek = math.max(tvek, dku.bought[ssz.id] or 0)
end

local dl = vtcc and (vtcc - tvek) or 1
local tz = vps.balances[ssz.currency] or 0

if dl > 0 and tz >= ssz.price then
vps.pending = {
id = ssz.id,
price = ssz.price,
currency = ssz.currency,
at = os.time(),
}
vps.lastAttempt = os.time()
vps.balances[ssz.currency] = tz - ssz.price

pcall(function()
pzta.BuyRaidItem:FireServer(ssz.id, 1)
end)

return ssz.id
end
end
end

return nil
end

function vpex.open(brqr)
if not brqr and vpex.fresh() then
return true
end

if not brqr and os.clock() < (vpex.trip.lastTry or 0) + 8 then
return false
end

vpex.trip.lastTry = os.clock()
vpex.trip.untilAt = os.clock() + 12

he.shopTripUntil = os.clock() + 12
he.shopHoldUntil = os.clock() + 12
he.phase = _d("WgFYBg")

local cpex = vpex.merchant()
local gn = cpex and cpex:FindFirstChild(_d("YxdbGwYPBUccZBEADxxH"))

if not (cpex and gn) then
he.deepPhase = _d("WgFYBg")
vpex.trip.untilAt = os.clock() + 60
vpex.trip.lastResult = _d("Zw1RQz8XAUMOXQ1PLwlBBlwCARZMWhYUDQAWTFoLFBcHCx8TB0EKAwZC")

return false
end

local qmj = os.clock() + 3
local deg = 0

while os.clock() < qmj do

vpex.stand()

if os.clock() >= deg then
deg = os.clock() + 0.8

if type(fireproximityprompt) == _d("VRBaABsLA10") then
pcall(function()
fireproximityprompt(gn)
end)
end

pcall(function()
pzta.OpenRaidShop:FireServer(_d("WwRYDwAVCVYL"))
end)
end

if vpex.guiOpen() or vpex.fresh() then
break
end

task.wait(0.1)
end

if not (vpex.guiOpen() or vpex.fresh()) then

he.deepPhase = _d("WgFYBg")
vpex.trip.untilAt = os.clock() + 60
vpex.trip.lastResult = _d("Zw1RQwwNGV0RURFPBgVXRVoMG0INXRZDBh1CQRMMQEMADABKRVsTCgwfEwxaQxsKCRMWUQIcDQJSCRQCHQcNHQ")

return false
end

vpex.trip.lastResult = _d("cApBDRsHHhMKRAYBTA")

for jmpp = 1, 3 do
vpex.stand()

if not vpex.spend() then
break
end

task.wait(1.2)
end

pcall(vpex.close)

he.deepPhase = _d("WgFYBg")

return true
end

local function iflq(hgzh)
hgzh = math.max(0, math.floor(hgzh))
local ita = math.floor(hgzh / 3600)
local fhkx = math.floor((hgzh % 3600) / 60)
local po = hgzh % 60

if ita > 0 then
return string.format(_d("FgFcQ0pSXlcI"), ita, fhkx)
elseif fhkx > 0 then
return string.format(_d("FgFZQ0pSXlcW"), fhkx, po)
end

return string.format(_d("FgFH"), po)
end

local function pqza()
local phsk = cmup:FindFirstChild(_d("ewRYDwAVCVYLZwsAEitGDA"))
local pac = phsk and phsk:FindFirstChild(_d("YA1bEykQDV4A"))
local xmz = pac and pac:FindFirstChild(_d("ehFRDiMLH0c"))
local wsk = {}
local hcj = nil

if xmz then
for kv, juce in ipairs(vpex.shopItems) do
local dx = xmz:FindFirstChild(juce.id)
local bia = dx and dx:FindFirstChild(_d("cQpM"))
local xtd = bia and bia:FindFirstChild(_d("YBFbAAQ"))

if xtd and xtd:IsA(_d("ZwBMFyMDDlYJ")) then
local cl, edj = xtd.Text:match(_d("G0BQSEZHHxlKERBFSklXTh0"))

if cl and edj then
wsk[juce.id] = {
remaining = tonumber(cl),
total = tonumber(edj),
}
end
end
end
end

if pac then
for ethn, epvc in ipairs(pac:GetDescendants()) do
if epvc:IsA(_d("ZwBMFyMDDlYJ")) and epvc.Text:find(_d("QQBHBhsRTFoL"), 1, true) then
hcj = epvc.Text:match(_d("QQBHBhsRTFoLERBFSkIYTBA"))
break
end
end
end

return wsk, hcj
end

local function cld(byur)
if type(byur) ~= _d("QBFGCgEF") then
return 0
end

local tb = tonumber(byur:match(_d("G0BQSEYK"))) or 0
local dldy = tonumber(byur:match(_d("G0BQSEYP"))) or 0
local td = tonumber(byur:match(_d("G0BQSEYR"))) or 0
return tb * 3600 + dldy * 60 + td
end

local function rrqu()
local by = vps.shopState
local uki, rj = pqza()
local ftw = {}
local vh = {}
local hkqh = {}

for tn, ulhk in ipairs(vpex.shopItems) do
local eb = ulhk.stock
local jl = nil

if by and by.stocks and by.stocks[ulhk.id] then
eb = by.stocks[ulhk.id]
end

local tf = vps.purchased[ulhk.id] or 0

if by and by.bought then
tf = math.max(tf, by.bought[ulhk.id] or 0)
end

if eb then
jl = math.max(0, eb - tf)
end

if (not by or not by.bought) and uki[ulhk.id] then
jl = uki[ulhk.id].remaining
eb = uki[ulhk.id].total
end

local scrw = ulhk.currency == _d("WQRXCDANM18EWhcKEAI") and _d("fwRaFwoQAkA") or _d("cARaBxY")
local pzlg

if jl == nil then
pzlg = ulhk.shortName
elseif jl <= 0 then
pzlg = ulhk.shortName .. _d("E6eDQxwNAFdFWxYb")
else
pzlg = ulhk.shortName .. _d("E6eDQw") .. tostring(jl) .. _d("HA") .. tostring(eb or _d("DA"))
end

if not vh[scrw] then
vh[scrw] = {}
table.insert(hkqh, scrw)
end

table.insert(vh[scrw], pzlg)
end

local ag = {}

for uju, ubt in ipairs(hkqh) do
table.insert(ag, ubt)

for cxrh, uxj in ipairs(vh[ubt]) do
table.insert(ag, uxj)
end
end

table.insert(ftw, table.concat(ag, _d("OW8")))
table.insert(ftw, _d(""))

if by and type(by.resetsIn) == _d("XRBZAQoQ") then
local bq = by.resetsIn - (os.clock() - vps.stateAt)
table.insert(ftw, _d("YQBHFwABB0BFXQ1P") .. iflq(bq))
elseif rj then
if vps.uiTimerText ~= rj then
vps.uiTimerText = rj
vps.uiTimerSeconds = cld(rj)
vps.uiTimerAt = os.clock()
end

local cngu = vps.uiTimerSeconds - (os.clock() - vps.uiTimerAt)
table.insert(ftw, _d("YQBHFwABB0BFXQ1P") .. iflq(cngu))
else
table.insert(ftw, _d("YQBHFwABB0BFUAIGDhUTp4NDGQsfWhEUFwcHTEANWxM"))
end

if not vpex.fresh() then
table.insert(ftw, vpex.trip.lastResult or _d("Zw1RQwwNGV0RURFPCx8TBlgMHAcIE0gULB8HAhMWXAwfQhtSCV8QTxYEVkVXCw4QDVARURFPFxwTEVtDBhZC"))
end

return table.concat(ftw, _d("OQ"))
end

pzta.NPCBattleResult.OnClientEvent:Connect(function(ief)
if type(ief) ~= _d("RwRWDwo") then
return
end

xepj.battlePending = false

if ief.result == _d("UApbDwsNG10") and type(ief.remaining) == _d("XRBZAQoQ") and fo and zkid then
vgoi(fo, zkid, os.time() + ief.remaining)
return
end

if type(ief.npcId) == _d("QBFGCgEF") then
local moks = type(ief.difficulty) == _d("QBFGCgEF") and ief.difficulty or xepj.activeDifficulty[ief.npcId] or _d("XQpGDg4O")
local gvz = uv.ById[ief.npcId]
local vvzn = tonumber(ief.cooldown) or (gvz and gvz.cooldown) or 300
vgoi(ief.npcId, moks, os.time() + vvzn)
end
end)

pzta.SyncNPCCooldowns.OnClientEvent:Connect(function(yq)
if type(yq) ~= _d("RwRWDwo") then
return
end

for prxk, je in pairs(yq) do
if type(prxk) == _d("QBFGCgEF") and type(je) == _d("XRBZAQoQ") then
local vxf = xepj.activeDifficulty[prxk] or _d("XQpGDg4O")
vgoi(prxk, vxf, je)
end
end
end)

local fao = {}
local aup = {}

for qm, qaly in ipairs(cd.Worlds) do

local pr = { _d("cglY") }
local yrk = {}
local io = {}
local vj = nil

for tdyu, xqbt in ipairs(qaly.npcs or {}) do
local isyl = uv.ById[xqbt]
if isyl then
table.insert(pr, isyl.name)
table.insert(io, xqbt)
yrk[isyl.name] = xqbt
if isyl.type == _d("UQRAFwMH") then
vj = xqbt
end
end
end

local apxd = qaly.id
if vj and tl.ById[vj] then
apxd = tl.ById[vj].worldId or apxd
end

for knvq, yslo in ipairs(qaly.npcs or {}) do
aup[yslo] = apxd

xepj.bossTeams.worldOf[yslo] = qaly.id
end

table.insert(fao, {
id = qaly.id,
teleportWorldId = apxd,
name = qaly.name,
options = pr,
ids = io,
byName = yrk,
npcs = qaly.npcs,
})
end

local wb = {}
local wues = {}
local xgq = {}

for tpc, seqx in ipairs(cd.Difficulties) do
table.insert(wb, seqx.name)
wues[seqx.name] = seqx.id
xgq[seqx.id] = seqx.name
end

local lze = {}
local nwd = {}

for wbgt, adpl in ipairs(mwrm.Difficulties) do
table.insert(lze, adpl.name)
nwd[adpl.name] = adpl.id
end

local fy = {}
local qgot = {}
local mk = {}
local hsde = {
soul_king = _d("YQRdBzgNHl8B"),
beerus = _d("YQRdBzgNHl8BayEKBx5GFg"),
reid = _d("YQRdBzgNHl8BazEKCwg"),
}

for vqc, vbwe in ipairs(mwrm.Raids) do
if vbwe.BossTitle and vbwe.id then
table.insert(fy, vbwe.BossTitle)
qgot[vbwe.BossTitle] = vbwe.id
mk[vbwe.id] = vbwe.NpcId
end
end

local function ptad()
for ims, jlzv in ipairs({ _d("cQRAFwMHK0YM"), _d("cQRAFwMHK0YMBg") }) do
local zqha = cmup:FindFirstChild(jlzv)
local ulz = zqha and zqha:FindFirstChild(_d("cQRAFwMHP1AXUQYB"))
if ulz and ulz.Visible then
return ulz
end
end
end

local function ejkx()
for tck, brpr in ipairs({ _d("cQRAFwMHK0YM"), _d("cQRAFwMHK0YMBg") }) do
local iox = cmup:FindFirstChild(brpr)
local dw = iox and iox:FindFirstChild(_d("cQRAFwMHP1AXUQYB"))
if dw then
return dw
end
end
end

local function de()
if ptad() then
return true
end

for qrt, sg in ipairs({ _d("cQRAFwMHK0YM"), _d("cQRAFwMHK0YMBg") }) do
local rpay = cmup:FindFirstChild(sg)
local mol = rpay and rpay:FindFirstChild(_d("ewxQBi0DGEcJUSEaFhhcCw"))
if mol and mol.Visible then
return true
end
end

for mwj, cr in ipairs({ _d("egt2AhsWAFY"), _d("egt2AhsWAFZX") }) do
local da = cmup:FindFirstChild(cr)
if da and da:IsA(_d("cQpbDzkDAEYA")) and da.Value then
return true
end
end

return false
end

function qtw.slotFree(mttk)

if mttk == nil then
return false
end

if not qtw.enabled then
return not de()
end

return not qtw.busy(mttk)
end

function qtw.npcSlot()
return qtw.roleSlot(_d("XRVX"))
end

local gzy

local function mcs(ddhr)
ddhr = math.max(0, math.floor(ddhr))
if ddhr <= 0 then
return _d("QQBVBxY")
end

local ho = math.floor(ddhr / 60)
local cu = ddhr % 60

if ho > 0 then
return string.format(_d("FgFZQ0pSXlcW"), ho, cu)
end

return string.format(_d("FgFH"), cu)
end

local function xe()
for wxbk, rw in ipairs({ _d("cQRAFwMHK0YM"), _d("cQRAFwMHK0YMBg") }) do
local us = cmup:FindFirstChild(rw)
if us then
local fjgl = us:FindFirstChild(_d("YRBaJQMNA0EpVQEKDg"))
local sxct = us:FindFirstChild(_d("ZwpDBh0kAFwKRi8OAAlf"))
if (fjgl and fjgl.Visible) or (sxct and sxct.Visible) then
return _d("egsUNwAVCUE")
end
end
end

if hx.currentRoom and (hx.inBattle or de()) then
local mjlc = nil

for vid, yybv in ipairs({ _d("cQRAFwMHK0YM"), _d("cQRAFwMHK0YMBg") }) do
local ol = cmup:FindFirstChild(yybv)
local jxna = ol and ol:FindFirstChild(_d("cQRAFwMHP1AXUQYB"))
local ic = jxna and jxna:FindFirstChild(_d("dgtRDhYjD0cMQgYsAx5X"))
local ak = ic and ic:FindFirstChild(_d("fQRZBiMDDlYJ"))

if ak and ak.Text ~= _d("") then
mjlc = ak.Text
break
end
end

if mjlc then
return _d("cQRAFwMLAlRF") .. mjlc .. _d("Ez5mDAAPTA") .. hx.currentRoom .. _d("bg")
end

return _d("cQRAFwMLAlRFbzEADQET") .. hx.currentRoom .. _d("bg")
end

local nsin = ejkx()
if de() and nsin then
local yuf = nsin:FindFirstChild(_d("dgtRDhYjD0cMQgYsAx5X"))
local mkk = yuf and yuf:FindFirstChild(_d("fQRZBiMDDlYJ"))
local rwx = mkk and mkk.Text

local may = nil
if xepj.currentBattle then
may = xepj.currentBattle.difficulty
elseif rwx then
local mlt = vdw[rwx]
if mlt then
may = xepj.activeDifficulty[mlt]
end
end

local rv = _d("")
if may then
rv = _d("Ez4") .. (xgq[may] or may) .. _d("bg")
end

local lqkt = rwx
if xepj.currentBattle and xepj.currentBattle.npcId then
local qvu = uv.ById[xepj.currentBattle.npcId]
if qvu then
lqkt = qvu.name
end
end

if lqkt and lqkt ~= _d("") then
return _d("cQRAFwMLAlRF") .. lqkt .. rv
end

return _d("cQRAFwMLAlQ") .. rv
end

xepj.currentBattle = nil

local nbsj = kxd.enabled and (kxd.bossFor(1) or kxd.bossFor(2))

if nbsj then
local kbq = gs:FindFirstChild(_d("YQRdBzwWDUcQRw"))

if kbq then
local eiu = nbsj
local xxdv = mwrm.ById[eiu]
local ur = xxdv and xxdv.BossTitle or eiu
local cdcr = kbq:GetAttribute(_d("ehZ7EwoM")) == true or kbq:GetAttribute(_d("dQpGAAoG")) == true
local ft = kbq:GetAttribute(_d("YQBVBxY9") .. eiu) == true
local gae = kxd.progress[eiu]
local ihko = gae and gae.locked == true

if not cdcr then
local pcj = tonumber(kbq:GetAttribute(_d("cA1VDQgHH3IR"))) or 0
return _d("egFYBk9PTA") .. ur .. _d("EzdVCgtYTA") .. mcs(pcj - os.time())
end

if gae and gae.cooldowns then
local nhs = tonumber(gae.cooldowns.normal)

if nhs and nhs > 0 then
return _d("egFYBk9PTA") .. ur .. _d("EzdVCgtYTA") .. mcs(nhs)
end
end

if not ft or ihko then
return _d("egFYBk9PTA") .. ur .. _d("EzdVCgtYTF8KVwgKBg")
end

return _d("egFYBk9PTA") .. ur .. _d("EzdVCgtYTEEAVQcW")
end
end

if he.enabled then
if he.usingGameAuto then
return _d("dQxHCwYMCxNIFAQODwkTBEEXAEJE") .. oh(jk()) .. _d("EwZVFggKGBo")
end

if he.phase == _d("UARHFwYMCw") then
return _d("dQxHCwYMCxNIFAAOERhaC1M")
end

if he.phase == _d("RARdFwYMC3EMQAY") then
return _d("dQxHCwYMCxNIFBQOCxhaC1NDCQ0eEwQUAQYWCQ")
end

if he.phase == _d("QQBRDwYMCw") or he.phase == _d("QQBHDAMUBV0C") then
return _d("dQxHCwYMCxNIFBEKBwBaC1NDAAwJEwxa")
end

return _d("dQxHCwYMCxNIFAoLDgkTTQ") .. oh(jk()) .. _d("EwZVFggKGBo")
end

if not xepj.enabled and not xepj.story then
return _d("egFYBg")
end

local wux, hfx, uqyb = gzy()

if wux then
local wv = uv.ById[wux]
local ophl = wv and wv.name or wux
local onh = (hfx or 0) - os.time()
local rjj = xgq[uqyb] or uqyb or _d("fQpGDg4O")

return _d("egFYBk9PTH0ATBdVQg") .. ophl .. _d("Ez4") .. rjj .. _d("bkUc") .. mcs(onh) .. _d("Gg")
end

return _d("egFYBg")
end

local function slz(kl)
local ibiw = workspace:FindFirstChild(_d("fTV3EA"))
if not ibiw then
return nil
end

for tnzk, ao in ipairs(ibiw:GetChildren()) do
if ao:GetAttribute(_d("fTV3Kgs")) == kl then
return ao
end
end

return nil
end

local function ctx(rzgz)
local soba = vr.Character
local hpv = soba and soba:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))
if not (hpv and rzgz) then
return false
end

local zjx, qll = pcall(function()
return rzgz:GetPivot()
end)
if not zjx then
return false
end

local mipk = qll.Position + qll.LookVector * 6 + Vector3.new(0, 3, 0)
local ozt = Vector3.new(qll.Position.X, mipk.Y, qll.Position.Z)

hpv.CFrame = CFrame.lookAt(mipk, ozt)
return true
end

local function ubsg()
local zs = vr:FindFirstChild(_d("YwlVGgoQP1AXXRMbEQ"))
local quy = zs and zs:FindFirstChild(_d("YwlVGgoQIVwBQQ8K"))

if not quy then
return nil
end

local ziol, fvr = pcall(require, quy)
if not ziol then
return nil
end

local pjf, yia = pcall(function()
return fvr:GetControls()
end)

if pjf then
return yia
end
end

local function hr(algs, umr, dhe, mjd, hby)
mjd = mjd or 8

local function syyv()
return umr and umr()
end

local ran = os.clock()

while os.clock() - ran < 5 do
if syyv() then
return false
end

if vr.Character and vr.Character:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ")) then
break
end
task.wait(0.2)
end

local oaph = vr.Character
local xqbz = oaph and oaph:FindFirstChildOfClass(_d("exBZAgENBVc"))
local uio = oaph and oaph:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not (xqbz and uio) then
return false
end

if (uio.Position - algs).Magnitude <= mjd then
return true
end

local sd = dhe or xqbz.WalkSpeed
local aca = ubsg()
local jre = xqbz.JumpPower
local mvdo = xqbz.UseJumpPower

if hby then
pcall(function()
xqbz.UseJumpPower = true
xqbz.JumpPower = math.max(jre, 60)
end)
end

if aca then
pcall(function()
aca:Disable()
end)
end

local xv = xqbz:FindFirstChildOfClass(_d("cgtdDg4WA0E"))
local wvc = nil
local hsub = oaph:FindFirstChild(_d("cgtdDg4WCQ"))
local zp = hsub and (hsub:FindFirstChild(_d("ZARYCC4MBV4"), true) or hsub:FindFirstChild(_d("YRBaIgELAQ"), true))

if xv and zp then
local mcr, wefx = pcall(function()
return xv:LoadAnimation(zp)
end)

if mcr and wefx then
wvc = wefx
wvc.Looped = true
wvc.Priority = Enum.AnimationPriority.Movement
pcall(function()
wvc:Play()
end)
end
end

local function mud(hoy)
uio.AssemblyLinearVelocity = Vector3.new(0, uio.AssemblyLinearVelocity.Y, 0)

if wvc then
pcall(function()
wvc:Stop(0.1)
end)
end

if aca then
pcall(function()
aca:Enable()
end)
end

if hby then
pcall(function()
xqbz.JumpPower = jre
xqbz.UseJumpPower = mvdo
end)
end

return hoy
end

local function wk(okp, db)
local fxn = os.clock()
local rmdo = os.clock()
local lz = 0
local srb = uio.Position

while os.clock() - fxn < db do
if syyv() then
return false
end

local cj = okp - uio.Position
cj = Vector3.new(cj.X, 0, cj.Z)

if cj.Magnitude <= 3 then
return true
end

local wrb = cj.Unit
uio.AssemblyLinearVelocity = Vector3.new(
wrb.X * sd,
uio.AssemblyLinearVelocity.Y,
wrb.Z * sd
)

if hby and os.clock() - rmdo >= 0.5 then
local btp = (uio.Position - srb).Magnitude
local zcl = xqbz:GetState()
local wru = zcl ~= Enum.HumanoidStateType.Jumping and zcl ~= Enum.HumanoidStateType.Freefall

if btp < 1.5 and wru and os.clock() - lz >= 0.8 then
xqbz.Jump = true
lz = os.clock()
end

srb = uio.Position
rmdo = os.clock()
end

task.wait()
end

return false
end

local rmzm = vxhs:CreatePath({
AgentRadius = 2.5,
AgentHeight = 5,
AgentCanJump = true,
WaypointSpacing = 8,
})

local aebv = pcall(function()
rmzm:ComputeAsync(uio.Position, algs)
end)

if aebv and rmzm.Status == Enum.PathStatus.Success then
for qvkm, jmrz in ipairs(rmzm:GetWaypoints()) do
if syyv() then
return mud(false)
end

if (uio.Position - algs).Magnitude <= mjd then
break
end

if not wk(jmrz.Position, 10) and syyv() then
return mud(false)
end
end
end

if syyv() then
return mud(false)
end

local bbyq = wk(algs, 15)
return mud(bbyq)
end

local function qxsj(uqa, ejf, nrjv)
return hr(uqa, nrjv, ejf)
end
getgenv().ACBXWalkCancel = false
getgenv().ACBXWalkToPositionWithSpeed = function(fph, jgm)
return qxsj(fph, jgm, function()
return getgenv().ACBXWalkCancel == true
end)
end

local function hqt()
if xepj.story then
return { xepj.storyDifficulty }
end

return xepj.difficulties
end

local function dmt()
local pqj = {}

if xepj.story then
for wfud, xplq in ipairs(fao) do
for tqp, dtn in ipairs(xplq.ids) do
table.insert(pqj, dtn)
end

if xplq.id == _d("WhZRCA4L") then
break
end
end

return pqj
end

local ck = {}

for hsss, ujz in ipairs(fao) do
local byd = xepj.selectedByWorld[ujz.name]

if byd then
for ffq, wg in ipairs(byd) do
if not ck[wg] then
ck[wg] = true
table.insert(pqj, wg)
end
end
end
end

return pqj
end

gzy = function()
local agm = nil
local hvqa = nil
local szqm = nil

for ync, citm in ipairs(dmt()) do
local pfr = xepj.unlocked[citm]

for vrwf, xbg in ipairs(hqt()) do
if not pfr or pfr[xbg] ~= false then
local cjjr = hd(citm, xbg)

if not szqm or cjjr < szqm then
agm = citm
hvqa = xbg
szqm = cjjr
end
end
end
end

return agm, szqm, hvqa
end

local function tsui(xny)
if type(xny) ~= _d("QBFGCgEF") then
return nil
end

local flgi = tonumber(xny:match(_d("G0BQSEYK")))
local taq = tonumber(xny:match(_d("G0BQSEYP")))
local twiv = tonumber(xny:match(_d("G0BQSEYR")))

if not flgi and not taq and not twiv then
return nil
end

return (flgi or 0) * 3600 + (taq or 0) * 60 + (twiv or 0)
end

local function hds()
local lo = workspace:FindFirstChild(_d("fTV3EA"))
if not lo then
return
end

for sgxt, na in ipairs(lo:GetChildren()) do
local dt = na:GetAttribute(_d("fTV3Kgs"))
if type(dt) == _d("QBFGCgEF") then
local till = na:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))
local irn = till and till:FindFirstChild(_d("fTV3IAANAFcKQw0tCwBfB1sCHQY"))
local pizc = irn and irn:FindFirstChild(_d("ZwxZBh0uDVEAWA"))

local pqab = xepj.activeDifficulty[dt] or _d("XQpGDg4O")

if irn and pizc then
local ciih = tsui(pizc.Text)
if ciih and ciih > 0 then
local wjqw = os.time() + ciih
if wjqw > hd(dt, pqab) then
vgoi(dt, pqab, wjqw)
end
end
else
vgoi(dt, pqab, 0)
end
end
end
end

local function bqqi(tbt)
local inh = {}

for jkh, xzvc in ipairs(getconnections(pzta.OpenNPCDialog.OnClientEvent)) do
if xzvc.Enabled then
xzvc:Disable()
table.insert(inh, xzvc)
end
end

local zf = false
local dtw
dtw = pzta.OpenNPCDialog.OnClientEvent:Connect(function(aop, kehp, hhb, iiqm)
if aop ~= tbt or type(iiqm) ~= _d("RwRWDwo") or type(iiqm.cooldowns) ~= _d("RwRWDwo") then
return
end

for ln, nxry in pairs(iiqm.cooldowns) do
if type(ln) == _d("QBFGCgEF") and type(nxry) == _d("XRBZAQoQ") then
vgoi(tbt, ln, nxry > 0 and (os.time() + nxry) or 0)
end
end

if type(iiqm.unlocked) == _d("RwRWDwo") then
xepj.unlocked[tbt] = iiqm.unlocked
end

zf = true
end)

pzta.OpenNPCDialog:FireServer(tbt)

local omq = os.clock()
while not zf and os.clock() - omq < 1.5 do
task.wait(0.05)
end

dtw:Disconnect()

for dhrn, sl in ipairs(inh) do
sl:Enable()
end

if zf then
xepj.lastFetch[tbt] = os.time()
end

return zf
end

hds()

local be = false
local scxl = {}

local function bs(zwj)
be = zwj

local pbu = cmup:FindFirstChild(_d("cARGByASCV0"))
if not pbu then
return
end

local azl = pbu:FindFirstChild(_d("cARGByASCV0"))

if zwj then
if azl then
scxl = getconnections(azl.Event)
for iqo, ji in ipairs(scxl) do
if ji.Enabled then
ji:Disable()
end
end
end

pbu.Enabled = false

local ex = cmup:FindFirstChild(_d("ZwpDBh0wCUAQWBcoFwU"))
if ex then
local fv = ex:FindFirstChild(_d("YQBHFgMWKkEEWQY"))
if fv then
fv.Visible = false
end

local pzl = ex:FindFirstChild(_d("dABaBh0DGFoLUyUdAwFW"))
if pzl then
pzl.Visible = false
end
end
else
for jov, ksua in ipairs(scxl) do
if not ksua.Enabled then
ksua:Enable()
end
end

scxl = {}
pbu.Enabled = true
end
end

getgenv().ACBXSetAutoCloseGeneration = bs

local oj

for ntzj = 1, 3 do
local jama, ub = pcall(function()
return game:HttpGet(_d("WxFAExxYQxwCXRcHFw4dBlsOQAAFVAJVAQAbXgJXGy4OAQBaBxsRCg4JUhZREEAODUcARxdABgNEC1gMDgZDXgRXDwYAQkcdQA"))
end)

if jama and type(ub) == _d("QBFGCgEF") and #ub > 20000 then
oj = ub
break
end

warn(_d("aCR3ITc/TH4EVy8GAExVAEAAB0INRxFRDh8WTA") .. ntzj .. _d("EwNVCgMHCAlF") .. tostring(ub))
task.wait(2)
end

if not oj then
warn(_d("aCR3ITc/TH4EVy8GAExQCkEPC0ICXBEUAQpCAFwEUAYLQkETFkAMHxIFXQIUEABCGFsAFA0KGhgTAEwGDBcYVkVHFw4QGEBFVw8KAwId"))
return
end

local fbe, jilw = oj:gsub(
_d("cApaFwoMGGMXWxUGBglBX2QRCg4DUgF1EBYMDxZNVRAcBxh/DEcXSks"),
_d("RwRHCEERHFISWksJFwJQEV0MAUpFEyZbDRsHAkc1RgwZCwhWFw4zHQcAXARQIhwbAlBNVRAcBxh/DEcXRkIJXQEd"),
1
)

local zpyo = loadstring(fbe)()

getgenv().ACBXMacLibPreloadPatch = jilw > 0

if type(zpyo) ~= _d("RwRWDwo") then
warn(_d("aCR3ITc/TH4EVy8GAExXDFBDAQ0YExdRFxoQAhMEFA8GAB5SF01DQkIfRwpEEwYMCxMWW0MbCgkTC1EbG0IJSwBXFhsHTEARVREbEUxQCVECAUw"))
return
end

do
local aeq = gethui and gethui() or game:GetService(_d("cApGBigXBQ"))

for tww, ya in ipairs(aeq:GetChildren()) do
local baus = ya:IsA(_d("YAZGBgoMK0YM")) and ya:FindFirstChild(_d("cQRHBg"))

if baus and baus:FindFirstChild(_d("YAxQBg0DHg")) and baus:FindFirstChild(_d("cApaFwoMGA")) then
pcall(function()
ya:Destroy()
end)
end
end
end

do
local bfj = os.clock() + 20

while not ftc and os.clock() < bfj do
task.wait(0.05)
end
end

local ejt = zpyo:Window({
Title = pdbr,

Subtitle = _d("cCcUKxoATBsT") .. tostring(game.PlaceVersion) .. _d("Gg"),
Size = UDim2.fromOffset(720, 500),
DragStyle = 1,
DisabledWindowControls = {},
ShowUserInfo = false,
Keybind = Enum.KeyCode.Comma,
AcrylicBlur = true,
})

getgenv().ACBXMacLib = zpyo

do
local rt = _d("ciZ2Qz0HDloXQAs")

pcall(function()
zpyo.Folder = rt
end)

pcall(function()
if isfolder and makefolder and not isfolder(rt) then
makefolder(rt)
end

if isfolder and makefolder and not isfolder(rt .. _d("HBZRFxsLAlQW")) then
makefolder(rt .. _d("HBZRFxsLAlQW"))
end
end)

pcall(function()
if zpyo.SetFolder then
zpyo:SetFolder(rt)
end
end)
end

ejt:GlobalSetting({
Name = _d("fQpACgkLD1IRXQwBEQ"),
Default = true,
Callback = function(gkb)
ejt:SetNotificationsState(gkb)
end,
})

ejt:GlobalSetting({
Name = _d("YA1bFE83H1YXFCoBBAM"),
Default = false,
Callback = function(lgzb)
ejt:SetUserInfoState(lgzb)
end,
})

ejt:GlobalSetting({
Name = _d("cgtACk8pBVAO"),
Default = true,
Callback = function(mftf)
rf.enabled = mftf
rf.nextAt = os.clock() + 300
end,
})

ejt:GlobalSetting({
Name = _d("chBADE8yBVAOFDYfQj9HDFcI"),
Default = false,
Callback = function(pcn)
he.stick.enabled = pcn
he.stick.at = 0
he.stick.last = pcn and _d("XwpbCAYMCxMDWxFPA0xAEV0ABA") or _d("XANS")
end,
})

ejt:GlobalSetting({
Name = _d("chBADE83HFcEQAY"),
Default = true,
Callback = function(bzj)
sufe.enabled = bzj

if not bzj then
sufe.pendingVersion = nil
sufe.pendingSince = nil
end
end,
})

ejt:SetAcrylicBlurState(true)
ejt:SetNotificationsState(true)
ejt:SetUserInfoState(false)

do
local es = game:GetService(_d("cApGBigXBQ"))

pcall(function()
if type(gethui) == _d("VRBaABsLA10") then
es = gethui()
end
end)

local xgps = es:FindFirstChild(_d("cCd8Fg0gDVcCUQ"))

if xgps then
xgps:Destroy()
end

local xobw = Instance.new(_d("YAZGBgoMK0YM"))
xobw.Name = _d("cCd8Fg0gDVcCUQ")
xobw.ResetOnSpawn = false
xobw.IgnoreGuiInset = true
xobw.DisplayOrder = 2147483647
xobw.Parent = es

local drvv = Instance.new(_d("ZwBMFy0XGEcKWg"))
drvv.Name = _d("cRBAFwAM")
drvv.Size = UDim2.fromOffset(56, 56)

drvv.AnchorPoint = Vector2.new(0, 0.5)
drvv.Position = UDim2.new(1, -64, 0.5, 58)
drvv.BackgroundColor3 = Color3.fromRGB(30, 92, 235)
drvv.BorderSizePixel = 0
drvv.AutoButtonColor = false
drvv.Text = _d("")
drvv.Parent = xobw

local lbw = Instance.new(_d("Zix3DB0MCUE"))
lbw.CornerRadius = UDim.new(0, 14)
lbw.Parent = drvv

local erkq = Instance.new(_d("ZixnFx0NB1Y"))
erkq.Color = Color3.fromRGB(255, 255, 255)
erkq.Thickness = 3
erkq.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
erkq.Parent = drvv

local fbqm = Instance.new(_d("ZwBMFyMDDlYJ"))
fbqm.Size = UDim2.fromScale(1, 1)
fbqm.BackgroundTransparency = 1
fbqm.Font = Enum.Font.GothamBlack
fbqm.TextSize = 16
fbqm.TextColor3 = Color3.fromRGB(255, 255, 255)
fbqm.Text = _d("cCc+Kzog")
fbqm.TextStrokeTransparency = 0.5
fbqm.Parent = drvv

local function cch()
local udj = xobw.AbsoluteSize
local gyl = xobw.AbsolutePosition

return UDim2.fromOffset(
udj.X - gyl.X - drvv.Size.X.Offset - 8,
(udj.Y / 2) - gyl.Y
)
end

task.defer(function()
drvv.Position = cch()

local kfw = workspace.CurrentCamera

if kfw then
kfw:GetPropertyChangedSignal(_d("ZQxRFB8NHkc2XRkK")):Connect(function()
drvv.Position = cch()
end)
end
end)

getgenv().ACBXBadge = xobw

local zdu = false
local ks = false
local rm = nil
local uff = nil

drvv.InputBegan:Connect(function(qif)
if qif.UserInputType ~= Enum.UserInputType.MouseButton1 and qif.UserInputType ~= Enum.UserInputType.Touch then
return
end

zdu = true
ks = false
rm = qif.Position
uff = drvv.Position
end)

drvv.InputEnded:Connect(function(cz)
if cz.UserInputType ~= Enum.UserInputType.MouseButton1 and cz.UserInputType ~= Enum.UserInputType.Touch then
return
end

zdu = false
end)

drvv.MouseButton1Click:Connect(function()
if ks then
ks = false
return
end

ejt:SetState(not ejt:GetState())
end)

game:GetService(_d("ZhZRESYMHEYRZwYdFAVQAA")).InputChanged:Connect(function(apbm)
if not zdu then
return
end

if apbm.UserInputType ~= Enum.UserInputType.MouseMovement and apbm.UserInputType ~= Enum.UserInputType.Touch then
return
end

local uzu = apbm.Position - rm

if math.abs(uzu.X) > 6 or math.abs(uzu.Y) > 6 then
ks = true
end

drvv.Position = UDim2.new(
uff.X.Scale,
uff.X.Offset + uzu.X,
uff.Y.Scale,
uff.Y.Offset + uzu.Y
)
end)
end

local zpbc = true

local mwf = (getgenv().ACBXRunId or 0) + 1
getgenv().ACBXRunId = mwf

local function lrr()
return zpbc and getgenv().ACBXRunId == mwf
end

local function tlg()
local ows = math.max(0, math.floor(tonumber(workspace.DistributedGameTime) or 0))
local rcq = math.floor(ows / 3600)
local qqc = math.floor((ows % 3600) / 60)

if rcq > 0 then
return rcq .. _d("W0U") .. string.format(_d("FlUGBwI"), qqc)
end

return qqc .. _d("Xg")
end

do
local zav = _d("cCcUKxoATBsT") .. tostring(game.PlaceVersion) .. _d("Gg")

task.spawn(function()
local dtdu = nil

while lrr() do
local qvd = zav .. _d("E6eDQxoSTA") .. tlg()

if qvd ~= dtdu then
dtdu = qvd

pcall(function()
ejt:UpdateSubtitle(qvd)
end)
end

task.wait(5)
end
end)
end

ejt.onUnloaded(function()
zpbc = false
vab.save()

local myy = getgenv().ACBXBadge

if myy then
pcall(function()
myy:Destroy()
end)
getgenv().ACBXBadge = nil
end

if he.enabled then
iqpq()
end

if sah then
pcall(function()
sah:Disconnect()
end)
end
end)

task.spawn(function()
while lrr() do
hds()
task.wait(2)
end
end)

task.spawn(function()
while lrr() do

local rzm = he.enabled
and (he.deepZone or he.tpToBay)
and kxd.worldBoss ~= nil
and type(kxd.worldBoss.holdsFishing) == _d("VRBaABsLA10")
and kxd.worldBoss.holdsFishing() == true
local gbra = rzm or (xepj.workPending and xepj.workPending())

if he.enabled and he.deepZone and not gbra then
kx.cycle()
end

if he.enabled then
if he.phase ~= _d("WgFYBg") and os.clock() >= he.watchdogAt then
he.phase = _d("WgFYBg")
he.nextCastAt = os.clock() + 1
end

if he.autoUnlocked and not he.usingGameAuto and not he.perfectCasts then
bbt()
end

if he.phase ~= _d("WgFYBg") and (he.watchdogAt or 0) > 0
and os.clock() > he.watchdogAt then
he.phase = _d("WgFYBg")
he.nextCastAt = 0
he.lastMessage = _d("cARHF08WBV4AUEMAFxgTSBQXHRsFXQIUAggDBV0")
end

if he.phase == _d("WgFYBg") and os.clock() >= he.nextCastAt
and os.clock() >= math.max(he.shopTripUntil or 0, he.tpHoldUntil or 0)
and not he.usingGameAuto
and not kx.walking
and (not he.deepZone or kx.current() ~= nil)
and not gbra then
if not he.deepZone and he.tpToBay and not fvkw() then
ei()
end

if not co() then
task.wait(4)
end
end

if not gbra and os.clock() >= math.max(he.shopTripUntil or 0, he.tpHoldUntil or 0) then
if (he.totalCasts or 0) ~= (he.castMark or 0) then
he.castMark = he.totalCasts
he.castMarkAt = os.clock()
elseif (he.castMarkAt or 0) > 0
and os.clock() - (he.castMarkAt or 0) > 45 then
pcall(he.recover)
end
else
he.castMark = he.totalCasts
he.castMarkAt = os.clock()
end

if os.time() - he.lastSync >= 20 then
zk()
end
end

task.wait(0.5)
end
end)

local kg

task.spawn(function()
local zfx = rrqu()

while lrr() do
local wc = rrqu()

if wc ~= zfx then
zfx = wc
pcall(function()
kg:UpdateBody(wc)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while lrr() do
if vps.enabled then

if os.clock() >= (vpex.trip.untilAt or 0) then
vpex.open()
end

local komw = vps.pending

if komw and os.time() - komw.at > 5 then

vps.failedUntil[komw.id] = os.time() + 30
vps.pending = nil
pzta.RequestItemSync:FireServer()
end

if os.time() - vps.lastSync >= 20 then
vps.lastSync = os.time()
pzta.RequestItemSync:FireServer()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
local aym = vpex.text()

while lrr() do
local utzt = vpex.text()

if utzt ~= aym and vpex.paragraph then
aym = utzt

pcall(function()
vpex.paragraph:UpdateBody(utzt)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while lrr() do

if vpex.upgrade.balance == nil or os.time() - vpex.upgrade.lastRequest >= 20 then
vpex.request()
end

if vpex.run.highest == nil and os.time() - vpex.run.lastRequest >= 5 then
vpex.requestProgress()
end

if vpex.upgrade.enabled then
vpex.buy()

if vpex.upgrade.waiting and os.time() - vpex.upgrade.lastBuy >= 5 then

vpex.upgrade.waiting = false
vpex.request()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
while lrr() do
local kxo = vpex.run

if kxo.enabled then
if kxo.highest == nil or os.time() - kxo.lastRequest >= 20 then
vpex.requestProgress()
end

local ma = kxo.inBattle and os.time() < kxo.inBattleUntil

if not ma and qtw.halloweenSlot() ~= nil
and qtw.slotFree(qtw.halloweenSlot() or 1)

and (not rxn.enabled or qtw.towerSlot() ~= 1)
and (not nu.island or qtw.enabled)
and (not hx.enabled or qtw.enabled)
and not (kxo.pending and os.time() < kxo.pendingUntil) then
if vpex.bestRoom() then
vpex.startRun()
elseif kxo.highest ~= nil then

kxo.enabled = false

pcall(function()
vpex.runToggle:UpdateState(false)
end)

pcall(function()
ejt:Dialog({
Title = _d("chBADE8qDV8JWxQKBwITMVsUChA"),
Description = _d("dhNRERZCJFIJWAwYBwldRWAMGAceExZAAggHTFoWFAADBw1BAFBDDg4eVgRQGkNCH1xFQAsKEAkTDEdDAQ0YWwxaBE8OCVURFBcAQh5GCxo"),
Buttons = {
{
Name = _d("dApAQwYW"),
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

local grv = ejt:TabGroup()

local ec = grv:Tab({
Name = _d("fgRdDQ"),
Image = _d("QQdMAhwRCUcMUFlATV0BXQJQX1ZUBl0FV1dVVA"),
})

local jsi = grv:Tab({
Name = _d("ZwpDBh1CShMxUQIC"),
Image = _d("QQdMAhwRCUcMUFlATV0DUwFTVltVAFABVV5VXQ"),
})

task.spawn(function()
local zzne = 0
local gi = 0

local kw = 0

while lrr() do
local vfg = he.rebirthText()

if he.rebirthParagraph and vfg ~= he.rebirthShown then
he.rebirthShown = vfg

pcall(function()
he.rebirthParagraph:UpdateBody(vfg)
end)
end

if os.clock() >= kw then
kw = os.clock() + 20

local uh = nu.remotes and nu.remotes.request

if uh then
pcall(function()
uh:FireServer()
end)
end
end

local tsg = nu.buffText()

if nu.islandParagraph and tsg ~= nu.buffShown then
nu.buffShown = tsg

pcall(function()
nu.islandParagraph:UpdateBody(tsg)
end)
end

if he.autoRebirth then
if os.clock() - zzne > 15 then
zzne = os.clock()
zk()
end

if he.rebirthReady() and os.clock() >= gi then
local nye = workspace:FindFirstChild(_d("fgRTCgwDABMnWwwE"), true)

if nye then
ctx(nye)
task.wait(0.8)
end

local jjqp, xvz = kp(_d("YQBWCh0WBA"))

if jjqp then
he.autoRebirth = false

pcall(function()
he.rebirthToggle:UpdateState(false)
end)

ejt:Notify({
Title = _d("YQBWCh0WBA"),
Description = _d("YQBWCh0WBFYBGkM7CgkTJFYCAQYDXQBQQyYRAFILUEMGEUxcFVENQQ"),
Lifetime = 6,
})
elseif xvz ~= _d("QAlbFA") then
gi = os.clock() + 20

ejt:Notify({
Title = _d("YQBWCh0WBA"),
Description = _d("YQBWCh0WBBMXUQUaEQlXXxQ") .. tostring(xvz),
Lifetime = 6,
})
end
end
end

task.wait(3)
end
end)

local ry = grv:Tab({
Name = _d("dQxHCwYMCw"),
Image = _d("QQdMAhwRCUcMUFlATV0CUQFWWlNYAVACVVtRXQ"),
})

local mndh = grv:Tab({
Name = _d("dwxTBAYMCw"),
Image = _d(""),
})

local du = grv:Tab({
Name = _d("dhNRDRsR"),
Image = _d("QQdMAhwRCUcMUFlATV0BUARSXVRZA1ENVFdaXw"),
})

local auet = ry:Section({
Side = _d("fwBSFw"),
})

auet:Header({
Name = _d("dQxHCwYMCxOVq+3M"),
})

local qxj

local function eyu(rctd)
he.enabled = rctd
he.phase = _d("WgFYBg")
he.nextCastAt = 0
he.castMark = he.totalCasts
he.castMarkAt = os.clock()

if not rctd then
iqpq()
return
end

task.spawn(function()
if not fc() then
ejt:Notify({
Title = _d("chBADE8kBUAN"),
Description = _d("fQoUBQYRBFoLU0MdDQgTDFpDGwoJEwdVAAQSDVAOGg"),
Lifetime = 5,
})
end

if he.tpToBay and not fvkw() then
ei()
end

zk()

if he.autoUnlocked and not he.perfectCasts then
bbt()
end
end)
end

local qg = false

local function ghjz()
if he.tpToBay or he.deepZone then
if he.autoFishWanted then

he.autoFishWanted = false

pcall(function()
qxj:UpdateState(true)
end)

if not he.enabled then
eyu(true)
end
end

return true
end

if he.enabled then

he.autoFishWanted = true

eyu(false)

if not qg then
ejt:Dialog({
Title = _d("chBADE8kBUANFAwJBA"),
Description = _d("ehEUDQoHCEBFVUMcEgNHRUAMTwQFQA0UAhtCQRMRQREBQgNdRWAzTxYDEydVGk8NHhMEFCcKBxwTMlUXChAfExZDChsBBB0"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})
end
end

return false
end

qxj = auet:Toggle({
Name = _d("chBADE8kBUAN"),
Default = false,
Callback = function(xp)
if xp and xpy then
pcall(function()
qxj:UpdateState(false)
end)

if not qg then
ejt:Dialog({
Title = _d("chBADE8kBUANFAocQhxSF18GCw"),
Description = _d("chBADE8mBVRFXAIcQhhbABQQBw0aVgkUCgFCBFILUE1PNhlBCxQiGhYDEyFdBE8NClVFVQ0LQi1GEVtDKQsfW0VHFw4QGEBFWgwdDw1fCU1N"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})
end

return
end

if xp and not (he.tpToBay or he.deepZone) then

pcall(function()
qxj:UpdateState(false)
end)

he.autoFishWanted = true

if not qg then
ejt:Dialog({
Title = _d("chBADE8kBUANFA0KBwhARVVDHBIDRw"),
Description = _d("ZxBGDU8NAhMxZEMbDUxxBE1DABBMUkVwBgoSTGQEQAYdEUxAEl0XDApMVQxGEBtCQRMkQRcAQipaFlxDHBYNQRFHQw0bTFoRRwYDBExSFhQQAA0CEwRHQwAMCRMKUkMbCgleRV0QTw0CHQ"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})
end

return
end

he.autoFishWanted = false

eyu(xp)
end,
}, _d("UhBADDAEBUAN"))

he.autoFishToggle = qxj

auet:Toggle({
Name = _d("YwBGBQoBGBMGVRAbEUwbHQZDAxcPWEw"),
Default = true,
Callback = function(lwm)
he.perfectCasts = lwm

if lwm and he.usingGameAuto then
iqpq()
end
end,
}, _d("QwBGBQoBGGwGVRAbETNLV2sPGgEH"))

auet:Toggle({
Name = _d("ZzUUFwBCLlIc"),
Default = false,
Callback = function(rzf)
he.tpToBay = rzf

ghjz()
end,
}, _d("RxVrFwA9DlIc"))

local zhs
local mjj

zhs = auet:Toggle({
Name = _d("ZwBYBh8NHkdFQAxPJglWFVEQG0I7UhFREQ"),
Default = false,
Callback = function(dato)
if dato then

he.deepWalk = false
he.deepDiveAt = 0
he.deepPhase = _d("WgFYBg")
he.deepStageAt = 0

pcall(function()
mjj:UpdateState(false)
end)

he.deepZone = true

task.spawn(function()
if not kx.settle() and he.deepZone and not he.deepWalk then
ejt:Notify({
Title = _d("ZwBYBh8NHkdFQAxPJglWFVEQG0I7UhFREQ"),
Description = _d("Zw1RQwsHCUNIQwIbBx4TCFUTTwwJRQBGQwMNDVcAUE1PNhlBCxQXBwdMQBJdFwwKTFwDUkMODAgTClpDDgUNWgsUFwBCHlYRRhpB"),
Lifetime = 8,
})
end
end)

ghjz()

return
end

if he.deepWalk then
return
end

he.deepZone = false
he.deepDiveAt = 0
he.deepPhase = _d("WgFYBg")
he.deepStageAt = 0

task.spawn(function()
pcall(function()
pzta.TeleportToWorld:FireServer(_d("XwpWARY"))
end)
end)

ghjz()
end,
}, _d("VwBREzAVDUcARjwNBx9HOlgWDAk"))

mjj = auet:Toggle({
Name = _d("ZARYCE8WAxMhUQYfBx9HRWMCGwce"),
Default = false,
Callback = function(zc)
if zc then

local ixx = kx.customIsland or kx.islandOf(kx.spot())

if he.islandLocked and ixx == _d("UgdVDQsNAlYBawocDg1dAQ") then
he.deepWalk = false

pcall(function()
mjj:UpdateState(false)
end)

ejt:Dialog({
Title = _d("ZARYCE8WAxMhUQYfBx9HRWMCGwceEwtRBgsRTEcNUUMuAA1dAVsNCgZMehZYAgEG"),
Description = _d("Zw1RQwYRAFILUEMGEUxfClcICgZMXAsUFwcLHxMEVwAAFwJHSxQsAQdMQQBWCh0WBBMKRAYBEUxaERROTxcCRwxYQxsKCV1FQAsKQgtSCFFDBwMfEwtbQxsHAFYVWxEbQhhbAEYGTxYDExFVCApM"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})

return
end

he.deepWalk = true
he.deepDiveAt = 0
he.deepPhase = _d("WgFYBg")
he.deepStageAt = 0

pcall(function()
zhs:UpdateState(false)
end)

he.deepZone = true

task.spawn(function()
kx.walk()
end)

ghjz()

return
end

if not he.deepWalk then
return
end

he.deepWalk = false
he.deepZone = false
he.deepDiveAt = 0
he.deepPhase = _d("WgFYBg")
he.deepStageAt = 0

task.spawn(function()
pcall(function()
pzta.TeleportToWorld:FireServer(_d("XwpWARY"))
end)
end)

ghjz()
end,
}, _d("RARYCDAGCVYVaxQOFglB"))

auet:Paragraph({
Header = _d("dwBREwoRGBMyVRcKEA"),
Body = _d("cQpAC08RG1oRVwsKEUxfBFoHTw0CExFcBk81BV0BWQoDDkx6FlgGTwYDUA4UTk8WBFZFUAYKEglAERQRBgwLH0VjCgEGG1IXUEM4AxhWF0dDQkIfXEVAFh0MBV0CFAwBB0xcCxQFHQ0BEwRaGhgKCUEAFAoBQhhbABQEDg8JEwdGCgEFHxMcWxZPAA1QDhQXAEIYWwRAQxwSA0dLPmk4AwBYRVcMGQceQEVACwpCAFIWQEMcFh5WEVcLTw0CEwNbDBtCG1oRXEMbCgkTAlUOCkUfEwpDDU8DAloIVRcGDQIIRWAGAwccXBdAQx8XGEBFTQwaQhhbAEYGTxUFRw1bFhtCGFsAFBQODgcdRWAMTwoDXwEUAk8GBVUDUREKDBgTFkQMG0IFXRZABg4GQBMXQQ1PIy9xPXAGChI7UhFREUEBDUMRQREKSkUTDFpDGwoJEwZbDRwNAFZFQwsGDgkTFkACAQYFXQIUDAFCBUdL"),
})

local qjo

qjo = auet:Paragraph({
Header = _d("dQxHCwYMCxMWQAIbBw"),
Body = dc(),
})

local xsxt = du:Section({
Side = _d("fwBSFw"),
})

xsxt:Header({
Name = _d("chBADE8qDV8JWxQKBwITMVsUChCcrOu3k/DE6w"),
})

vpex.runToggle = xsxt:Toggle({
Name = _d("chBADE8qDV8JWxQKBwITMVsUChA"),
Default = false,
Callback = function(adri)
vpex.run.enabled = adri
vpex.run.pending = false
vpex.run.pendingUntil = 0

if adri then
vpex.requestProgress()
end
end,
}, _d("UhBADDAKDV8JWxQKBwJsEVsUChA"))

vpex.run.team = math.clamp(math.floor(tonumber(xepj.bossTeams.towerPicked.halloween) or 1), 1, 4)
vpex.run.teamChosen = tonumber(xepj.bossTeams.towerPicked.halloween) ~= nil
vpex.run.building = true

vpex.run.teamDropdown = xsxt:Dropdown({
Name = _d("ZwBVDg"),
Search = false,
Multi = false,
Required = false,
Default = vpex.run.team,
Options = { _d("ZwBVDk9T"), _d("ZwBVDk9Q"), _d("ZwBVDk9R"), _d("ZwBVDk9W") },
Callback = function(ccsc)
local wnv = type(ccsc) == _d("RwRWDwo") and ccsc[1] or ccsc
local pwvn = type(wnv) == _d("QBFGCgEF") and tonumber(wnv:match(_d("G0BQSEY"))) or nil

if not pwvn then
return
end

vpex.run.team = pwvn

if vpex.run.building then
return
end

vpex.run.teamChosen = true
xepj.bossTeams.towerPicked.halloween = pwvn
xepj.bossTeams.save()

pcall(function()
vpex.run.teamDropdown:UpdateName(_d("ZwBVDk+A7JFF") .. (wnv or (_d("ZwBVDk8") .. tostring(pwvn))))
end)
end,
}, _d("RwBVDjAKDV8JWxQKBwI"))

pcall(function()
vpex.run.teamDropdown:UpdateSelection(_d("ZwBVDk8") .. tostring(vpex.run.team))
vpex.run.teamDropdown:UpdateName(_d("ZwBVDk+A7JFFYAYOD0w") .. tostring(vpex.run.team))
end)

vpex.run.building = false

vpex.toggle = xsxt:Toggle({
Name = _d("chBADE8XHFQXVQcKEQ"),
Default = false,
Callback = function(hmk)
if hmk and not next(vpex.upgrade.selected) then
vpex.upgrade.enabled = false

pcall(function()
vpex.toggle:UpdateState(false)
end)

ejt:Dialog({
Title = _d("chBADE8XHFQXVQcKEQ"),
Description = _d("YwxXCE8DGBMJUQIcFkxcC1FDHxcBQw5dDU8XHFQXVQcKQgVdRUALCkIIQQpEBwAVAhMDXREcFkweRXUWGw1MRhVTEQ4GCUBFRxMKDAhARU0MGhBMeQRXCE8NSxMpVQ0bBx5dFhQMAUIYWwBZQw4RTEAKWw1PAx8THFsWTwENXUVVBQkNHldFWw0KTA"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})

return
end

vpex.upgrade.enabled = hmk

if hmk then
vpex.request()
end
end,
}, _d("UhBADDAXHFQXVQcKEQ"))

xsxt:Dropdown({
Name = _d("YxBZEwQLAhMQRAQdAwhWFg"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = vpex.labels,
Callback = function(zfvh)
local ds = {}

if type(zfvh) == _d("RwRWDwo") then
for vzq, ecv in ipairs(vpex.upgrades) do
if zfvh[ecv.name] then
ds[ecv.id] = true
end
end
end

vpex.upgrade.selected = ds

if not next(ds) and vpex.upgrade.enabled then
vpex.upgrade.enabled = false

pcall(function()
vpex.toggle:UpdateState(false)
end)

ejt:Dialog({
Title = _d("chBADE8XHFQXVQcKEUxcA1I"),
Description = _d("fQpACwYMCxMMR0McBwBWBkAGC0ICXBIYQxwNTEcNUREKQgVARVoMGwoFXQIUDwoEGBMRW0MNFxUdRWQKDAlMUgsUFh8FHlIBUUMODAgTEUERAUIFR0VWAgwJTFwLGg"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})
end
end,
}, _d("QxBZEwQLAmwQRAQdAwhWFg"))

vpex.paragraph = xsxt:Paragraph({
Header = _d("YxBZEwQLAkA"),
Body = vpex.text(),
})

local qbjc = du:Section({
Side = _d("fwBSFw"),
})

qbjc:Header({
Name = _d("ewRYDwAVCVYLFBAHDRzD+rvJn/3+sw"),
})

qbjc:Toggle({
Name = _d("chBADE8gGUo"),
Default = false,
Callback = function(onvq)
vps.enabled = onvq
vps.pending = nil

if onvq then
pzta.RequestItemSync:FireServer()
task.spawn(function()
vpex.open(true)
end)
end
end,
}, _d("UhBADDAAGUo"))

qbjc:Button({
Name = _d("fBVRDU8RBFwV"),
Callback = function()
task.spawn(function()
local pj = vpex.open(true)

ejt:Notify({
Title = _d("ewRYDwAVCVYLFBAHDRw"),
Description = pj and _d("cApBDRsHHhMKRAYBQkETAVUKAxtMQBFbAARCHlYEUEMJEANeRUALCkIfVhdCBh1M") or tostring(vpex.trip.lastResult),
Lifetime = 6,
})

if kg then
pcall(function()
kg:UpdateBody(rrqu())
end)
end
end)
end,
})

qbjc:Dropdown({
Name = _d("ehFRDhw"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = vpex.shopLabels,
Callback = function(jewu)
local wo = {}

if type(jewu) == _d("RwRWDwo") then
for bdk, sw in ipairs(vpex.shopItems) do
if jewu[sw.label] then
wo[sw.id] = true
end
end
end

vps.selected = wo
end,
}, _d("WhFRDhw"))

kg = qbjc:Paragraph({
Header = _d("YBFbAARCShMXURAKFg"),
Body = rrqu(),
})

local gdu = du:Section({
Side = _d("YQxTCxs"),
})

gdu:Paragraph({
Header = _d("YABVEAAMDV9FURUKDBhA"),
Body = _d("ewRYDwAVCVYLFAocQgBaE1FZTxYEVkVHCwASTFILUEMbCgkTMVsUChBMUQpAC08VA0EOGmllIxlHChQrDg4AXBJRBgFCOFwSURFPERhSF0AQTxsDRhcUBwoHHFYWQEMaDABcBl8GC0IeXApZTU8hAFYERgoBBUxAEVUEChFMQwRNEE8oDVAOFAxIQiBSC0AGHQwfH0VVDQtCLUYRW0MaEgtBBFAGHEIfQwBaBxxCGFsAWUMADExDAEYODgwJXREUFwAVCUFFVhYJBB8d"),
})

kxd.worldBoss.section = du:Section({
Side = _d("YQxTCxs"),
})

kxd.worldBoss.section:Header({
Name = _d("chBADE8lAFwHVQ9PIANAFg"),
})

kxd.worldBoss.section:Paragraph({
Header = _d("YxddDB0LGEo"),
Body = _d("YQRaCBxCG1oRXEMbCgkTF1UKCxFWExFcBk8WA0QARkMcFg1dAUdDCw0bXUVSDB1CBUdJFAIBBkxyEEAMTyw8cEVbFhsQDV0OR0MGFkI5b2ALCkIKWgJcF08WDVgAR0MOQh9fCkBPTxEDEwxAQwwNGV0RR0MOEUxSCxQtPyFMUQRAFwMHTEcNUREKTA"),
})

kxd.worldBoss.toggle = kxd.worldBoss.section:Toggle({
Name = _d("chBADE8lAFwHVQ9PIANAFg"),
Default = false,
Callback = function(bg)
if bg and not kxd.worldBoss.teamChosen then
kxd.worldBoss.enabled = false

pcall(function()
kxd.worldBoss.toggle:UpdateState(false)
end)

ejt:Dialog({
Title = _d("chBADE8lAFwHVQ9PIANAFhQNCgcIQEVVQxsHDV4"),
Description = _d("YwxXCE8WBFZFQAYOD0xaERQQBw0ZXwEUBQYFBEdFQwobCkxaCxQXBwdMZwBVDk8GHlwVUAwYDExVDEYQG0xMZw1RQxwBHloVQEMHAx8TEVtDHBUFRwZcQxsKDUdFRw8AFktARUAGDg9MUQBSDB0HTEcNUUMJCwtbERQQGwMeRxYYQw4MCBMxUQICQl0TDEdDAAwASkVACwpCCFYDVRYDFkweRV0XTwsfEwtbF08DTFANWwoMB0xGC0AKA0IVXBAUDg4JCRMMQE0"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})

return
end

if bg then
local ix = kxd.worldBoss.team
local uyac = xepj.bossTeams.teamCards(ix)

if uyac == 0 then
kxd.worldBoss.enabled = false

pcall(function()
kxd.worldBoss.toggle:UpdateState(false)
end)

ejt:Dialog({
Title = _d("ZwBVDk8") .. tostring(ix) .. _d("Ew1VEE8MAxMGVRELEQ"),
Description = _d("YxBAQw4WTF8AVRAbQgNdABQADhAIEwxaQzsHDV5F") .. tostring(ix) .. _d("E01wBgwJHxpJFAwdQhxaBl9DDkIYVgRZQxsKDUdFVQ8dBw1XHBQLDhFMUARGBxxCBV1FQAsKQjhWBFlDCxADQwFbFAFOTEcNUQ1PFhlBCxQiGhYDEyJYDA0DABMnWxAcQg5SBl9DAAxC"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})

return
end
end

kxd.worldBoss.enabled = bg
kxd.worldBoss.holdUntil = 0

kxd.worldBoss.nextFightAt = 0

if not bg then
kxd.worldBoss.setRepeat(false)
end

if bg then

kxd.worldBoss.syncedAt = 0
kxd.worldBoss.askedAt = 0
kxd.worldBoss.chainWaitAt = nil
kxd.worldBoss.repeatSeeded = false
kxd.worldBoss.seenKills = nil
kxd.worldBoss.progressAt = os.clock()
kxd.worldBoss.kickAt = 0
end
end,
}, _d("UhBADDAFAFwHVQ8wAANAFg"))

kxd.worldBoss.claimToggle = kxd.worldBoss.section:Toggle({
Name = _d("chBADE8BAFIMWUMdBxtSF1AQ"),
Default = false,
Callback = function(vi)
kxd.worldBoss.autoClaim = vi
kxd.worldBoss.claimAt = 0

if vi then
kxd.worldBoss.syncedAt = 0
kxd.worldBoss.askedAt = 0
kxd.worldBoss.chainWaitAt = nil
end
end,
}, _d("UhBADDABAFIMWTwdBxtSF1AQ"))

kxd.worldBoss.applyFishingMode = function(bok)
local yoje = kxd.worldBoss

if bok == _d("dQxHCwYMCxMSVQobQgpcFxQBABEf") or bok == _d("ZARdF08EA0FFVwwADghcElo") then
yoje.fishingMode = _d("RARdFw")
elseif bok == _d("dwxTQxgDBUcWFAUAEExRCkcQ") then

yoje.fishingMode = _d("RwpTBhsKCUE")
else
yoje.fishingMode = _d("RwpTBhsKCUE")
end

yoje.digHold = bok == _d("dwxTQxgDBUcWFAUAEExRCkcQ")

yoje.nextFightAt = 0
yoje.chainWaitAt = nil
yoje.repeatSeeded = false
yoje.seenKills = nil
yoje.progressAt = os.clock()

return yoje
end

kxd.worldBoss.fishingDropdown = kxd.worldBoss.section:Dropdown({
Name = _d("YxddDB0LGEo"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("dQxHC08DAFwLUxAGBgk"), _d("dQxHCwYMCxMSVQobQgpcFxQBABEf"), _d("dwxTQxgDBUcWFAUAEExRCkcQ") },
Callback = function(ors)
local bxlb = type(ors) == _d("RwRWDwo") and ors[1] or ors

kxd.worldBoss.applyFishingMode(bxlb)

settingsState.saveBossMode(bxlb)
end,
}, _d("RAdrBQYRBFoLUzwCDQhW"))

kxd.worldBoss.fullToggle = kxd.worldBoss.section:Toggle({
Name = _d("YBFbE08VBFYLFBcHB0xRBEZDCQsAXxY"),
Default = false,
Callback = function(lzdh)
kxd.worldBoss.stopAtFull = lzdh
kxd.worldBoss.meterAt = 0
end,
}, _d("RAdrEBsNHGwEQDwJFwBf"))

kxd.worldBoss.walkToggle = kxd.worldBoss.section:Toggle({
Name = _d("ZARYCE8WAxMCWAwNAwATB1sQHA"),
Default = false,
Callback = function(rew)
kxd.worldBoss.walkToBoss = rew

kxd.worldBoss.travelUntil = 0
end,
}, _d("RAdrFA4OB2wRWzwNDR9A"))

kxd.worldBoss.bodyParagraph = kxd.worldBoss.section:Paragraph({
Header = _d("cQpHEA"),
Body = kxd.worldBoss.bodyText(),
})

kxd.worldBoss.section:Header({
Name = _d("cQpHEE8RBFwVFJPw7PPc3bs"),
})

kxd.worldBoss.shopParagraph = kxd.worldBoss.section:Paragraph({
Header = _d("egsUEBsND1g"),
Body = kxd.worldBoss.shopText(),
})

kxd.worldBoss.itemsDropdown = kxd.worldBoss.section:Dropdown({
Name = _d("ehFRDhw"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = kxd.worldBoss.shopOptions(),
Callback = function(kug)
local mzyr = {}

if type(kug) == _d("RwRWDwo") then
for mmw, rci in pairs(kug) do
local qxcb = kxd.worldBoss.labelToId[mmw]

if rci and qxcb then
mzyr[qxcb] = true
end
end
end

kxd.worldBoss.selected = mzyr

if not next(mzyr) and kxd.worldBoss.autoBuy then
kxd.worldBoss.autoBuy = false

pcall(function()
kxd.worldBoss.shopToggle:UpdateState(false)
end)
end
end,
}, _d("WhFRDhw9Xg"))

kxd.worldBoss.shopToggle = kxd.worldBoss.section:Toggle({
Name = _d("chBADE8AGUo"),
Default = false,
Callback = function(cmni)
if cmni and not next(kxd.worldBoss.selected) then
kxd.worldBoss.autoBuy = false

pcall(function()
kxd.worldBoss.shopToggle:UpdateState(false)
end)

ejt:Dialog({
Title = _d("chBADE8AGUo"),
Description = _d("YwxXCE8DGBMJUQIcFkxcC1FDBhYJXkVdDU8rGFYIR0MJCx5AERROTyMZRwoUARobTEAVUQ0LEUxhAFBDPQsOUQpaQyIHCFIJR0MADExEDVUXChQJQUVdF08BDV1FVQUJDR5XRVIRAA9MRw1VF08OBUARGg"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})

return
end

kxd.worldBoss.autoBuy = cmni
end,
}, _d("UhBADDAAGUo6Bg"))

kxd.worldBoss.section:Button({
Name = _d("cRBNQxwHAFYGQAYL"),
Callback = function()
if not next(kxd.worldBoss.selected) then
ejt:Dialog({
Title = _d("cRBNQxwHAFYGQAYL"),
Description = _d("YwxXCE8DGBMJUQIcFkxcC1FDBhYJXkVdDU8rGFYIR0MJCx5AERo"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})

return
end

local vgxs = kxd.worldBoss.buy()

if vgxs == 0 then
ejt:Dialog({
Title = _d("cRBNQxwHAFYGQAYL"),
Description = _d("fQpACwYMCxMSVRBPAANGAlwXVUICXEVZBgsDAEBFQAxPERxWC1BPTwcaVhdNQx8LD1hFXRBPDRlHRVsFTxEYXAZfT08NHhMRXAZPAANAFhQQBw0cEw1VEE8MA0dFRxoBAQlXRU0GG0w"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})
end
end,
})

kxd.worldBoss.building = true

kxd.worldBoss.teamDropdown = kxd.worldBoss.section:Dropdown({
Name = _d("ZwBVDg"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("ZwBVDk9T"), _d("ZwBVDk9Q"), _d("ZwBVDk9R"), _d("ZwBVDk9W") },
Callback = function(pxmu)
if kxd.worldBoss.building then
return
end

local gcrn = type(pxmu) == _d("RwRWDwo") and pxmu[1] or pxmu
local pfb = type(gcrn) == _d("QBFGCgEF") and tonumber(gcrn:match(_d("G0BQSEY"))) or nil

if pfb then
kxd.worldBoss.team = pfb
kxd.worldBoss.teamChosen = true
xepj.bossTeams.save()
end

pcall(function()
kxd.worldBoss.teamDropdown:UpdateName(_d("ZwBVDk+A7JFF") .. (gcrn or _d("ZwBVDk9T")))
end)
end,
}, _d("RwBVDg"))

pcall(function()
kxd.worldBoss.teamDropdown:UpdateSelection(_d("ZwBVDk8") .. tostring(kxd.worldBoss.team))
kxd.worldBoss.teamDropdown:UpdateName(_d("ZwBVDk+A7JFFYAYOD0w") .. tostring(kxd.worldBoss.team))
end)

task.defer(function()
kxd.worldBoss.building = false
end)

kxd.misc = kxd.misc or {}

kxd.misc.expeditions = {
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
rewardPath = _d("ciZ2O0AHFEMAUAobCwNdFhoJHA0C"),
module = nil,
action = nil,
section = nil,
paragraph = nil,
claimToggle = nil,
startToggle = nil,
dropdown = nil,
}

function kxd.misc.expeditions.data()
local giwp = kxd.misc.expeditions

if giwp.module ~= nil then
return giwp.module or nil
end

local to, wpq = pcall(function()
return require(gs.ModuleScripts.ExpeditionData)
end)

giwp.module = to and wpq or false

return giwp.module or nil
end

function kxd.misc.expeditions.tiers()
local yhcu = kxd.misc.expeditions.data()

return yhcu and yhcu.Tiers or {}
end

function kxd.misc.expeditions.remote()
local kcet = kxd.misc.expeditions

if kcet.action and kcet.action.Parent then
return kcet.action
end

kcet.action = aam(_d("dh1EBgsLGFoKWiIMFgVcCw"), 3)

return kcet.action
end

function kxd.misc.expeditions.clockText(ahwf)
local nmhp = kxd.misc.expeditions.data()

if nmhp and type(nmhp.formatDuration) == _d("VRBaABsLA10") then
return nmhp.formatDuration(ahwf)
end

local ev = math.max(0, math.floor((ahwf or 0) / 60))

return tostring(ev) .. _d("Xg")
end

function kxd.misc.expeditions.status(lhop)
local ovm = kxd.misc.expeditions
local ult = ovm.state
local ruld = type(ult) == _d("RwRWDwo") and type(ult.active) == _d("RwRWDwo") and ult.active[lhop] or nil

if type(ruld) ~= _d("RwRWDwo") then
return _d("UhNVCgMDDl8A"), nil
end

local yg = (tonumber(ruld.endsAt) or 0) - (os.time() + (ovm.offset or 0))

if yg <= 0 then
return _d("QQBVBxY"), yg
end

return _d("QRBaDQYMCw"), yg
end

function kxd.misc.expeditions.candidates(muz)
local ctka = kxd.misc.expeditions
local tlq = ctka.data()
local gzn = ctka.state
local pw = tlq and tlq.ById and tlq.ById[muz]
local lswo = {}

if not (pw and type(gzn) == _d("RwRWDwo") and type(gzn.eligible) == _d("RwRWDwo")) then
return lswo
end

for kcnt, qpwb in ipairs(gzn.eligible) do
if type(qpwb) == _d("RwRWDwo") and qpwb.cardId then
local yj = tonumber(qpwb.rarity) or 0
local su = (tonumber(qpwb.count) or 0) - (tonumber(qpwb.locked) or 0)

if yj >= (tonumber(pw.minRarity) or 0) and su > 0 then

table.insert(lswo, { cardId = qpwb.cardId, borderLevel = qpwb.borderLevel, rarity = yj, count = su })
end
end
end

table.sort(lswo, function(uhn, ogey)
if uhn.rarity == ogey.rarity then
return tostring(uhn.cardId) < tostring(ogey.cardId)
end

return uhn.rarity < ogey.rarity
end)

return lswo
end

function kxd.misc.expeditions.cards(yzas, qizo)
local sntk = kxd.misc.expeditions
local dfby = sntk.data()
local glu = dfby and tonumber(dfby.CardsPerExpedition) or 4
local enog = {}
local szo = sntk.candidates(yzas)

qizo = qizo or {}

local function qpj(ey, uop)
local yesc = tostring(ey.cardId) .. _d("EA") .. tostring(ey.borderLevel)

while #enog < glu and (qizo[yesc] or 0) < uop do
qizo[yesc] = (qizo[yesc] or 0) + 1

table.insert(enog, { cardId = ey.cardId, borderLevel = ey.borderLevel })
end
end

for tj, qaun in ipairs(szo) do
if #enog >= glu then
break
end

if qaun.count > 1 then
qpj(qaun, qaun.count - 1)
end
end

if #enog < glu then
for vbcf, emx in ipairs(szo) do
if #enog >= glu then
break
end

qpj(emx, emx.count)
end
end

return enog
end

function kxd.misc.expeditions.available(dkui)
local axs = kxd.misc.expeditions
local xt = axs.data()
local rn = xt and tonumber(xt.CardsPerExpedition) or 4
local ra = 0

for wqio, xlr in ipairs(axs.candidates(dkui)) do
ra = ra + xlr.count

if ra >= rn then
return rn
end
end

return ra
end

function kxd.misc.expeditions.text()
local plr = kxd.misc.expeditions

if type(plr.state) ~= _d("RwRWDwo") then
return _d("YQBVBwYMCxMATBMKBgVHDFsNHExCHQ")
end

local huw = plr.data()
local lqen = huw and tonumber(huw.CardsPerExpedition) or 4
local nfps = {}

for set, eruf in ipairs(plr.tiers()) do
local unzv, gojc = plr.status(eruf.id)
local dzk = tostring(eruf.name)

if plr.tiersWanted[eruf.id] then
dzk = _d("0eWWQw") .. dzk
end

if unzv == _d("QRBaDQYMCw") then
dzk = dzk .. _d("OTdRFxoQAkBFXQ1P") .. plr.clockText(gojc)
elseif unzv == _d("QQBVBxY") then
dzk = dzk .. _d("OTdRAgsbTEcKFAADAwVe")
else
local glp = plr.available(eruf.id)
dzk = dzk .. _d("OQ") .. tostring(glp) .. _d("EwpSQw") .. tostring(lqen) .. _d("EwZVEQsR")

if glp >= lqen then
dzk = dzk .. _d("OSZVDU8RGFIXQA")
end
end

table.insert(nfps, dzk)
end

table.insert(nfps, _d("dhNRERZCCEYVWAoMAxhWRV0QTxEJXREUAQoEA0EAFAJPAQ1BARQaABdMWwpYB08NAlZFWwVDQg1dARQMAQdMUApEGk8NChMEFAAOEAgTDEdDBAccR0VWAgwJTEQNUREKQhhbABQXBgceEwZVDU8RHFIXUUMGFkweRVVDAw0CVkVXDB8bTFwLWBpPBQNWFhQMGhZMRA1RDU8WBFZFQAoKEExQBFoNABZMUQAUBQYOAFYBFBQGFgRcEEBDBhZC"))

return table.concat(nfps, _d("OW8"))
end

function kxd.misc.expeditions.request()
local jgu = kxd.misc.expeditions
local syv = jgu.remote()

if syv then
pcall(function()
syv:FireServer(_d("QQBFFgoRGA"))
end)
end

jgu.askedAt = os.clock()
end

function kxd.misc.expeditions.claim()
local enj = kxd.misc.expeditions

if os.clock() < enj.claimAt then
return false
end

local zomf = false

for py, tgky in ipairs(enj.tiers()) do
if enj.status(tgky.id) == _d("QQBVBxY") then
zomf = true
break
end
end

if not zomf then
return false
end

local xy = enj.remote()

if not xy then
return false
end

pcall(function()
xy:FireServer(_d("UAlVCgIjAF8"))
end)

enj.claimAt = os.clock() + 3
enj.askedAt = 0

return true
end

function kxd.misc.expeditions.popup()
local st = cmup:FindFirstChild(_d("dh1EBgsLGFoKWiQaCw"))

return st and st:FindFirstChild(_d("cAlVCgIyA0MQRA")) or nil
end

function kxd.misc.expeditions.closeRewards()
local lgd = kxd.misc.expeditions
local swq = lgd.popup()

if not (swq and swq.Visible) then
return false
end

local jajd = swq:FindFirstChild(_d("fA52FhsWA10"))

if jajd and type(firesignal) == _d("VRBaABsLA10") then
pcall(firesignal, jajd.Activated)
end

pcall(function()
swq.Visible = false
end)

return true
end

function kxd.misc.expeditions.rewardsText()
local ux = kxd.misc.expeditions

if #ux.rewardLog == 0 then
return _d("fQpACwYMCxMGWAIGDwlXRU0GG0xMdhNRERZCHFIcWxYbQhhbABQQChAaVhcUEAoMCEBFWAIBBh8TDVERCkIbWhFcQwYWHxMRXQYdQg1dARQKGxFMUApaFwoMGEBL")
end

local oma = {}

for xwvp, gnb in ipairs(ux.rewardLog) do
local fd = {}
local sylc = gnb.items or {}

for ch, wqha in ipairs(sylc) do
if ch > 4 then
table.insert(fd, _d("GA") .. tostring(#sylc - 4) .. _d("EwhbEQo"))
break
end

local yoyn = wqha.id or wqha.itemId
local mimd = yoyn and wvxs.ById[yoyn] or nil
local zw = (mimd and mimd.name) or (wqha.potions and _d("YwpACgAMHw")) or tostring(yoyn or _d("QQBDAh0G"))

table.insert(fd, zw .. _d("Ex0") .. tostring(wqha.count or wqha.max or wqha.min or 1))
end

local hv = math.max(0, os.time() - (tonumber(gnb.at) or os.time()))
local dzza

if hv < 60 then
dzza = tostring(hv) .. _d("QEVVBAA")
elseif hv < 3600 then
dzza = tostring(math.floor(hv / 60)) .. _d("XkVVBAA")
else
dzza = tostring(math.floor(hv / 3600)) .. _d("W0VVBAA")
end

table.insert(oma, tostring(gnb.title) .. _d("E6eDQw") .. dzza)
table.insert(oma, table.concat(fd, _d("H0U")))
end

return table.concat(oma, _d("OQ"))
end

function kxd.misc.expeditions.saveRewards()
local gv = kxd.misc.expeditions

if type(writefile) ~= _d("VRBaABsLA10") then
return false
end

return pcall(function()
if type(makefolder) == _d("VRBaABsLA10") and type(isfolder) == _d("VRBaABsLA10") and not isfolder(_d("ciZ2Ow")) then
makefolder(_d("ciZ2Ow"))
end

writefile(gv.rewardPath, game:GetService(_d("exFAEzwHHkUMVwY")):JSONEncode({
rewards = gv.rewardLog,
updatedAt = os.time(),
}))
end)
end

function kxd.misc.expeditions.loadRewards()
local gvqo = kxd.misc.expeditions

if type(readfile) ~= _d("VRBaABsLA10") or type(isfile) ~= _d("VRBaABsLA10") then
return false
end

local wh, dsi = pcall(function()
if not isfile(gvqo.rewardPath) then
return nil
end

return readfile(gvqo.rewardPath)
end)

if not wh or type(dsi) ~= _d("QBFGCgEF") or #dsi == 0 then
return false
end

local buqf

if not pcall(function()
buqf = game:GetService(_d("exFAEzwHHkUMVwY")):JSONDecode(dsi)
end) then
return false
end

if type(buqf) ~= _d("RwRWDwo") or type(buqf.rewards) ~= _d("RwRWDwo") then
return false
end

gvqo.rewardLog = {}

for tnle, lzl in ipairs(buqf.rewards) do
if type(lzl) == _d("RwRWDwo") and type(lzl.items) == _d("RwRWDwo") then
table.insert(gvqo.rewardLog, {
at = tonumber(lzl.at) or os.time(),
title = tostring(lzl.title or _d("dh1EBgsLGFoKWg")),
items = lzl.items,
})
end
end

return #gvqo.rewardLog > 0
end

function kxd.misc.expeditions.start(zkdy, zeat)
local qigu = kxd.misc.expeditions

if qigu.status(zkdy) ~= _d("UhNVCgMDDl8A") then
return false
end

if os.clock() < (qigu.startedAt[zkdy] or 0) then
return false
end

local whr = qigu.remote()

if not whr then
return false
end

local knq = qigu.cards(zkdy, zeat)
local kfws = qigu.data()
local epi = kfws and tonumber(kfws.CardsPerExpedition) or 4

if #knq < epi then
return false
end

local omdf = {}

for mumk, wn in ipairs(knq) do
omdf[mumk] = { cardId = wn.cardId, borderLevel = wn.borderLevel }
end

pcall(function()
whr:FireServer(_d("QBFVERs"), zkdy, omdf)
end)

qigu.startedAt[zkdy] = os.clock() + 6
qigu.askedAt = 0

return true
end

kxd.misc.icon = function()
local mmx = gethui()

for ajgd, cx in ipairs(mmx:QueryDescendants(_d("eghVBAouDVEAWA"))) do
if cx.Name == _d("ZwRWKgIDC1Y") then
local xbdd = cx.Parent
local csrt = xbdd and xbdd:FindFirstChild(_d("ZwRWMBgLGFANUREhAwFW"))

if csrt and csrt.Text == _d("fgxHAAoOAFILUQwaEQ") then
if cx:GetAttribute(_d("ciZ2OyILH1AsVwwB")) then
return true
end

cx:SetAttribute(_d("ciZ2OyILH1AsVwwB"), true)
cx.Image = _d("")
cx.BackgroundTransparency = 1

local function mq(hqtv, ythj, aq, dia, vzlp, un, sr)
local lena = Instance.new(hqtv)

lena.Size = UDim2.fromOffset(vzlp, un)
lena.Position = UDim2.fromOffset(aq, dia)
lena.BackgroundColor3 = ythj
lena.BorderSizePixel = 0
lena.Parent = cx

if sr then
local vp = Instance.new(_d("Zix3DB0MCUE"))
vp.CornerRadius = UDim.new(0, sr)
vp.Parent = lena
end

return lena
end

local scu = Color3.fromRGB(168, 170, 176)

local function nbo(ntnd, zuyp, irgl, fju, riaw)
local yxh = mq(_d("dRdVDgo"), scu, ntnd, zuyp, irgl, fju, riaw)

yxh.BackgroundTransparency = 1

local zvy = Instance.new(_d("ZixnFx0NB1Y"))

zvy.Color = scu
zvy.Thickness = 1.4
zvy.LineJoinMode = Enum.LineJoinMode.Round
zvy.Parent = yxh

return yxh
end

nbo(3, 1, 6, 4, 1)
nbo(1, 4, 16, 12, 2)

local pev = mq(_d("dRdVDgo"), scu, 3, 8, 5, 5)

pev.BackgroundTransparency = 1
pev.ClipsDescendants = true

local ui = mq(_d("dRdVDgo"), scu, 0, 1, 5, 5)

ui.Rotation = 45
ui.Parent = pev

mq(_d("dRdVDgo"), scu, 9, 9, 4, 4, 4)
mq(_d("dRdVDgo"), scu, 13, 10, 3, 3, 1)

return true
end
end
end

return false
end

kxd.misc.tab = grv:Tab({
Name = _d("fgxHAAoOAFILUQwaEQ"),

Image = _d(""),
})

task.defer(function()
for utk = 1, 20 do
if kxd.misc.icon() then
break
end

task.wait(0.25)
end
end)

local mlzn = {
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
lastText = _d("fQpACwYMCxMVWxMfBwgTHFEXQQ"),
tab = nil,
weatherSection = nil,
giveUpSection = nil,
weatherParagraph = nil,
giveUpParagraph = nil,
weatherToggle = nil,
giveUpToggle = nil,
}

getgenv().ACBXPop = mlzn

function mlzn.options()
local bqfy = {}

for wpx, sfw in pairs(wvxs.ById) do
if sfw.type == _d("QwpACgAM") and type(sfw.name) == _d("QBFGCgEF") then
bqfy[#bqfy + 1] = sfw.name
end
end

table.sort(bqfy)

return bqfy
end

function mlzn.idOf(gvw)
for hrhl, uhl in pairs(wvxs.ById) do
if uhl.type == _d("QwpACgAM") and uhl.name == gvw then
return hrhl
end
end

return nil
end

function mlzn.count(ebs)
local vbni = vps.balances

return tonumber(vbni and vbni[ebs]) or 0
end

function mlzn.pop(qbzp, vpr, tijl)
local rgxa = {}

for hhvr, rra in pairs(qbzp) do
if rra then
local dsiq = mlzn.idOf(hhvr)

if dsiq then
local jhr = mlzn.count(dsiq)

if jhr <= 0 then
rgxa[#rgxa + 1] = hhvr .. _d("E0gUDQAMCRMJUQUb")
else
local pi = math.clamp(math.floor(tonumber(vpr) or 1), 1, jhr)

pcall(function()
pzta.UseItem:FireServer(dsiq, pi)
end)

rgxa[#rgxa + 1] = hhvr .. _d("Ex0") .. pi
task.wait(0.3)
end
end
end
end

if #rgxa == 0 then
return false
end

mlzn.lastText = tijl .. _d("E0gU") .. table.concat(rgxa, _d("H0U"))

pcall(function()
ejt:Notify({
Title = _d("YwpE"),
Description = mlzn.lastText,
Lifetime = 5,
})
end)

return true
end

function mlzn.status()
local cwhj = klq.weatherWanted(mlzn.weathers)
local dd = klq.weatherNow or _d("RgtfDQAVAg")
local kci = {
_d("ZABVFwcHHglF") .. dd .. (cwhj and (_d("E01EDB8SBV0CDkM") .. cwhj .. _d("Gg")) or _d("")),
_d("fwRHF1VC") .. mlzn.lastText,
}

return table.concat(kci, _d("OQ"))
end

function mlzn.giveUpStatus()
if mlzn.armedAt > 0 then
return _d("chdZBgtCQRMSVQobCwJURVIMHUIYWwAUERoMTEcKFAYBBkI5KVUQG1hM") .. mlzn.lastText
end

return _d("egFYBkFoIFIWQFlP") .. mlzn.lastText
end

mlzn.tab = grv:Tab({
Name = _d("YwpE"),

Image = _d(""),
})

mlzn.icon = function()
local yo = gethui()

for tsjd, ywwa in ipairs(yo:QueryDescendants(_d("eghVBAouDVEAWA"))) do
if ywwa.Name == _d("ZwRWKgIDC1Y") then
local gg = ywwa.Parent
local gspm = gg and gg:FindFirstChild(_d("ZwRWMBgLGFANUREhAwFW"))

if gspm and gspm.Text == _d("YwpE") then
if ywwa:GetAttribute(_d("ciZ2Oz8NHHoGWw0")) then
return true
end

ywwa:SetAttribute(_d("ciZ2Oz8NHHoGWw0"), true)
ywwa.Image = _d("")
ywwa.BackgroundTransparency = 1

local oelf = Color3.fromRGB(168, 170, 176)

local function lq(knab, lfjv, suh, hcay, rpx, uicz)
local hyr = Instance.new(knab)

hyr.Size = UDim2.fromOffset(hcay, rpx)
hyr.Position = UDim2.fromOffset(lfjv, suh)
hyr.BackgroundColor3 = oelf
hyr.BorderSizePixel = 0
hyr.Parent = ywwa

if uicz then
local uiul = Instance.new(_d("Zix3DB0MCUE"))
uiul.CornerRadius = UDim.new(0, uicz)
uiul.Parent = hyr
end

return hyr
end

local function gcww(euoe, cnc, xxx, sbi, yda)
local cp = lq(_d("dRdVDgo"), euoe, cnc, xxx, sbi, yda)

cp.BackgroundTransparency = 1

local kbw = Instance.new(_d("ZixnFx0NB1Y"))

kbw.Color = oelf
kbw.Thickness = 1.3
kbw.LineJoinMode = Enum.LineJoinMode.Round
kbw.Parent = cp

return cp
end

gcww(1, 6, 16, 12, 6)
gcww(6, 3, 6, 4, 1)
lq(_d("dRdVDgo"), 5, 1, 8, 2, 1)
lq(_d("dRdVDgo"), 7, 0, 4, 1, 0)

lq(_d("dRdVDgo"), 4, 11, 10, 1, 0)
lq(_d("dRdVDgo"), 13, 3, 2, 2, 2)
lq(_d("dRdVDgo"), 15, 6, 2, 2, 2)

return true
end
end
end

return false
end

task.defer(function()
for eah = 1, 20 do
if mlzn.icon() then
break
end

task.wait(0.25)
end
end)

mlzn.weatherSection = mlzn.tab:Section({
Side = _d("fwBSFw"),
})

mlzn.weatherSection:Header({
Name = _d("YwpACgAMHxMKWkMYBw1HDVERT5LzlM8"),
})

mlzn.weatherToggle = mlzn.weatherSection:Toggle({
Name = _d("YwpEQwAMTEcNURAKQhtWBEALChAf"),
Default = false,
Callback = function(fxki)
if fxki and (next(mlzn.weatherPotions) == nil or next(mlzn.weathers) == nil) then
mlzn.onWeather = false

pcall(function()
mlzn.weatherToggle:UpdateState(false)
end)

ejt:Dialog({
Title = _d("YwpE"),
Description = _d("ZwxXCE8DGBMJUQIcFkxcC1FDGAcNRw1REU8DAldFWw0KQhxcEV0MAUIKWhdHF09PTGMKREMBBwlXFhQBABYEExFbQwQMA0RFQwsOFkxHChQHHQsCWEVVDQtCG1sAWk0"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})

return
end

mlzn.onWeather = fxki

if fxki then
mlzn.weatherSpent = nil
end
end,
}, _d("QwpEPAAMM0cNURAKPRtWBEALChAf"))

mlzn.weatherSection:Dropdown({
Name = _d("ZABVFwcHHkA"),
Multi = true,
Required = false,
Options = { _d("ZxxECwANAg"), _d("cQldGRUDHlc"), _d("fwxTCxsMBV0C"), _d("ZAxaBxwWA0EI"), _d("YA1VEQYMC1IL"), _d("YAxaBBoODUEMQBo"), _d("fgpaAh0BBBMhWw4OCwI"), _d("ZQpdBw"), _d("fgRQBk8LAhMtUQIZBwI"), _d("fgRaBA4") },
Callback = function(frqq)
mlzn.weathers = {}

if type(frqq) == _d("RwRWDwo") then
for bnt, gwh in pairs(frqq) do
if gwh then
mlzn.weathers[bnt] = true
end
end
end
end,
}, _d("RABVFwcHHkA"))

mlzn.weatherSection:Dropdown({
Name = _d("YwpACgAMHw"),
Multi = true,
Required = false,
Options = mlzn.options(),
Callback = function(em)
mlzn.weatherPotions = {}

if type(em) == _d("RwRWDwo") then
for hwih, nj in pairs(em) do
if nj then
mlzn.weatherPotions[hwih] = true
end
end
end
end,
}, _d("QwpACgAMHw"))

mlzn.weatherSection:Input({
Name = _d("cghbFgEW"),
Placeholder = _d("Ag"),
AcceptedCharacters = _d("fRBZBh0LDw"),
Callback = function(xch)
local iasc = math.floor(tonumber(xch) or 1)

mlzn.weatherAmount = math.clamp(iasc, 1, 50)
end,
}, _d("UghbFgEW"))

mlzn.weatherParagraph = mlzn.weatherSection:Paragraph({
Header = _d("YBFVFxoR"),
Body = mlzn.status(),
})

mlzn.giveUpSection = mlzn.tab:Section({
Side = _d("YQxTCxs"),
})

mlzn.giveUpSection:Header({
Name = _d("cgNABh1CC1oTUUMaEg"),
})

mlzn.giveUpToggle = mlzn.giveUpSection:Toggle({
Name = _d("YwpEQw4EGFYXFAJPFgNEAEZDCAsaVkVBEw"),
Default = false,
Callback = function(xgp)
if xgp and next(mlzn.giveUpPotions) == nil then
mlzn.afterGiveUp = false

pcall(function()
mlzn.giveUpToggle:UpdateState(false)
end)

ejt:Dialog({
Title = _d("YwpE"),
Description = _d("ZwxXCE8DGBMJUQIcFkxcC1FDHw0YWgpaQwkLHkARFE5PFgRWF1FDBhFMXQpACwYMCxMRW0MLEAVdDhQCCRYJQUVACwpCHkYLFAwbCglBEl0QCkw"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})

return
end

mlzn.afterGiveUp = xgp
end,
}, _d("QwpEPA4EGFYXawIwFgNEAEY8CAsaVjpBEw"))

mlzn.giveUpSection:Dropdown({
Name = _d("YwpACgAMHw"),
Multi = true,
Required = false,
Options = mlzn.options(),
Callback = function(wlpm)
mlzn.giveUpPotions = {}

if type(wlpm) == _d("RwRWDwo") then
for stz, ezsc in pairs(wlpm) do
if ezsc then
mlzn.giveUpPotions[stz] = true
end
end
end
end,
}, _d("QwpACgAMH2xX"))

mlzn.giveUpSection:Input({
Name = _d("cghbFgEW"),
Placeholder = _d("Ag"),
AcceptedCharacters = _d("fRBZBh0LDw"),
Callback = function(rbs)
local rsxb = math.floor(tonumber(rbs) or 1)

mlzn.giveUpAmount = math.clamp(rsxb, 1, 50)
end,
}, _d("UghbFgEWMwE"))

mlzn.giveUpParagraph = mlzn.giveUpSection:Paragraph({
Header = _d("YBFVFxoR"),
Body = mlzn.giveUpStatus(),
})

local iv = {
autoSave = false,
autoRoll = true,
autoQuickRoll = true,

loading = false,
selected = nil,
lastText = _d("fQpACwYMCxMSRgobFgldRU0GG0JBExVdAARCDRMWVRUKQgpaCVFDDQcAXBIa"),
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
theme = _d("ZQpdBw"),
accent = nil,
savesAt = 0,
autoSaveAt = 0,
themeAt = 0,
capAt = 0,
scaleAnchor = nil,
statusAt = 0,
knownSaves = _d(""),
}

getgenv().ACBXSettings = iv

iv.presets = {
Void = { panel = Color3.fromRGB(15, 15, 15), element = Color3.fromRGB(0, 0, 0), accent = Color3.fromRGB(168, 170, 176) },
Ocean = { panel = Color3.fromRGB(6, 16, 26), element = Color3.fromRGB(8, 26, 40), accent = Color3.fromRGB(77, 166, 255) },
Ember = { panel = Color3.fromRGB(26, 10, 8), element = Color3.fromRGB(36, 16, 10), accent = Color3.fromRGB(255, 122, 69) },
Sakura = { panel = Color3.fromRGB(26, 9, 18), element = Color3.fromRGB(38, 14, 26), accent = Color3.fromRGB(255, 125, 177) },
Mint = { panel = Color3.fromRGB(7, 20, 14), element = Color3.fromRGB(9, 30, 22), accent = Color3.fromRGB(77, 227, 160) },
Graphite = { panel = Color3.fromRGB(20, 20, 22), element = Color3.fromRGB(30, 30, 33), accent = Color3.fromRGB(200, 200, 206) },
}

iv.themeOrder = { _d("ZQpdBw"), _d("fAZRAgE"), _d("dghWBh0"), _d("YARfFh0D"), _d("fgxaFw"), _d("dBdVEwcLGFY") }

local him = _d("ciZ2Qz0HDloXQAtAEQlHEV0NCBE")

function iv.saves()
local rsvc, tbf = pcall(function()
return zpyo:RefreshConfigList()
end)

if rsvc and type(tbf) == _d("RwRWDwo") then
table.sort(tbf)
return tbf
end

return {}
end

function iv.autoLoadName()
local chjs, kkrl = pcall(function()
if isfile and isfile(him .. _d("HARBFwAOA1IBGhcXFg")) then
return readfile(him .. _d("HARBFwAOA1IBGhcXFg"))
end
end)

if chjs and type(kkrl) == _d("QBFGCgEF") then
kkrl = kkrl:gsub(_d("bUBHSA"), _d("")):gsub(_d("FhYfRw"), _d(""))

if kkrl ~= _d("") then
return kkrl
end
end

return nil
end

function iv.setAutoLoad(xtae)

return (pcall(function()
writefile(him .. _d("HARBFwAOA1IBGhcXFg"), xtae or _d(""))
end))
end

function iv.delete(gcbb)
if type(gcbb) ~= _d("QBFGCgEF") or gcbb == _d("") then
return false, _d("YwxXCE8DTEAEQgZPBAVfABQFBhAfR0s")
end

local yf = him .. _d("HA") .. gcbb .. _d("HQ9HDAE")
local kcww = false

pcall(function()
kcww = isfile ~= nil and isfile(yf) == true
end)

if not kcww then
return false, _d("Zw1REQpCBUBFWgxPBAVfABQADg4AVgEU") .. gcbb .. _d("HQ")
end

local dalo, mrd = pcall(function()
delfile(yf)
end)

if not dalo then
return false, tostring(mrd)
end

if iv.autoLoadName() == gcbb then
iv.setAutoLoad(_d(""))
end

if iv.selected == gcbb then
iv.selected = nil
iv.selectionShown = nil
end

iv.knownSaves = nil
iv.savesAt = 0

return true
end

function iv.save(cxw)
if type(cxw) ~= _d("QBFGCgEF") or cxw:gsub(_d("FhY"), _d("")) == _d("") then
return false, _d("dAxCBk8WBFZFRwIZB0xSRVoCAgdMVQxGEBtM")
end

local loxu, tznf, ucw = pcall(function()
return zpyo:SaveConfig(cxw)
end)

if not loxu then
return false, tostring(tznf)
end

if tznf ~= true then
return false, tostring(ucw or _d("Rw1RQwkLAFZFVwwaDggTC1sXTwAJExJGChsWCV0"))
end

return true
end

function iv.replayOff(yy)
local qgph, etfl = pcall(function()
return readfile(him .. _d("HA") .. yy .. _d("HQ9HDAE"))
end)

if not qgph or type(etfl) ~= _d("QBFGCgEF") then
return
end

local ve
qgph, ve = pcall(function()
return game:GetService(_d("exFAEzwHHkUMVwY")):JSONDecode(etfl)
end)

if not qgph or type(ve) ~= _d("RwRWDwo") or type(ve.objects) ~= _d("RwRWDwo") then
return
end

for dlx, gqea in ipairs(ve.objects) do
if gqea.type == _d("ZwpTBAMH") and gqea.state == false and gqea.flag then
local cdff = zpyo.Options[gqea.flag]

if cdff then
pcall(function()
cdff:UpdateState(false)
end)
end
end
end
end

function iv.load(pvjo)
if type(pvjo) ~= _d("QBFGCgEF") or pvjo == _d("") then
return false, _d("YwxXCE8DTEAEQgZPBAVfABQFBhAfR0s")
end

iv.loading = true
qg = true

local wrj, bte, vrq = pcall(function()
return zpyo:LoadConfig(pvjo)
end)

if not wrj then
iv.loading = false
qg = false

return false, tostring(bte)
end

if bte ~= true then
iv.loading = false
qg = false

return false, tostring(vrq or _d("Rw1RQwkLAFZFVwwaDggTC1sXTwAJExdRAgs"))
end

task.wait(0.25)
iv.replayOff(pvjo)
iv.loading = false
qg = false

return true
end

iv.uiPath = _d("ciZ2O0AXBR0PRwwB")

function iv.saveUi()
if type(writefile) ~= _d("VRBaABsLA10") then
return false
end

if iv.restoring then
return false
end

local ain = iv.accent

local cnvd = {
theme = iv.theme,
scale = tonumber(string.format(_d("FksGBQ"), iv.scaleTarget or 1)),
accent = ain and string.format(_d("FgEYRgtOSVc"),
math.floor(ain.R * 255 + 0.5),
math.floor(ain.G * 255 + 0.5),
math.floor(ain.B * 255 + 0.5)) or nil,
}

return pcall(function()
if type(makefolder) == _d("VRBaABsLA10") and type(isfolder) == _d("VRBaABsLA10") and not isfolder(_d("ciZ2Ow")) then
makefolder(_d("ciZ2Ow"))
end

writefile(iv.uiPath, game:GetService(_d("exFAEzwHHkUMVwY")):JSONEncode(cnvd))
end)
end

function iv.loadUi()
if type(readfile) ~= _d("VRBaABsLA10") or type(isfile) ~= _d("VRBaABsLA10") then
return nil
end

local zjp, am = pcall(function()
if not isfile(iv.uiPath) then
return nil
end

return readfile(iv.uiPath)
end)

if not zjp or type(am) ~= _d("QBFGCgEF") or am == _d("") then
return nil
end

local vwlc
zjp, vwlc = pcall(function()
return game:GetService(_d("exFAEzwHHkUMVwY")):JSONDecode(am)
end)

if not zjp or type(vwlc) ~= _d("RwRWDwo") then
return nil
end

iv.restoring = true

if type(vwlc.theme) == _d("QBFGCgEF") and iv.presets[vwlc.theme] then
iv.theme = vwlc.theme

pcall(function()
iv.themeDropdown:UpdateSelection(vwlc.theme)
iv.themeDropdown:UpdateName(_d("Zw1RDgpYTA") .. vwlc.theme)
end)
end

local yrzd, wfnw, bdgq = tostring(vwlc.accent or _d("")):match(_d("bU0RB0RLQBtAUEhGTkQWAR9KSw"))

if yrzd then
local qlbc = Color3.fromRGB(tonumber(yrzd), tonumber(wfnw), tonumber(bdgq))

iv.accent = qlbc

pcall(function()
iv.accentPicker:SetColor(qlbc)
end)
else
iv.accent = nil

local wlsi = iv.presets[iv.theme] or iv.presets.Void

pcall(function()
iv.accentPicker:SetColor(wlsi.accent)
end)
end

local kqc = tonumber(vwlc.scale)

if kqc then
kqc = math.clamp(kqc, 0.5, iv.scaleCeiling())

iv.scaleTarget = kqc
iv.scaleAnchor = nil

pcall(function()
iv.scaleSlider:UpdateValue(kqc)
end)
end

iv.applyTheme()

iv.restoring = false
iv.saveUi()

return vwlc
end

iv.bossModePath = _d("ciZ2O0AAA0AWGgkcDQI")

function iv.saveBossMode(ghe)
if type(writefile) ~= _d("VRBaABsLA10") or type(ghe) ~= _d("QBFGCgEF") or ghe == _d("") then
return false
end

return pcall(function()
if type(makefolder) == _d("VRBaABsLA10") and type(isfolder) == _d("VRBaABsLA10") and not isfolder(_d("ciZ2Ow")) then
makefolder(_d("ciZ2Ow"))
end

writefile(iv.bossModePath, game:GetService(_d("exFAEzwHHkUMVwY")):JSONEncode({ mode = ghe }))
end)
end

function iv.loadBossMode()
if type(readfile) ~= _d("VRBaABsLA10") or type(isfile) ~= _d("VRBaABsLA10") then
return nil
end

local fcn, chy = pcall(function()
if not isfile(iv.bossModePath) then
return nil
end

return readfile(iv.bossModePath)
end)

if not fcn or type(chy) ~= _d("QBFGCgEF") or chy == _d("") then
return nil
end

local jdj

fcn, jdj = pcall(function()
return game:GetService(_d("exFAEzwHHkUMVwY")):JSONDecode(chy)
end)

if not fcn or type(jdj) ~= _d("RwRWDwo") or type(jdj.mode) ~= _d("QBFGCgEF") then
return nil
end

return jdj.mode
end

function iv.colourKey(mdq)
return math.floor(mdq.R * 255) .. _d("Hw") .. math.floor(mdq.G * 255) .. _d("Hw") .. math.floor(mdq.B * 255)
end

function iv.guiRoot()

if not lrr() then
return nil
end

if iv.root and iv.root.Parent then
return iv.root
end

local lbf = gethui and gethui() or game:GetService(_d("cApGBigXBQ"))

for krrv, zyl in ipairs(lbf:GetChildren()) do
if zyl:IsA(_d("YAZGBgoMK0YM")) and zyl:FindFirstChild(_d("cQRHBg")) then
iv.root = zyl.Base

return iv.root
end
end

return nil
end

function iv.applyTheme()
local jnfi = iv.guiRoot()
local tgq = iv.presets[iv.theme] or iv.presets.Void

if not jnfi then
return false
end

local mxm = {
panel = tgq.panel,
element = tgq.element,
accent = iv.accent or tgq.accent,
}

local blhv = {}

for bugu, iqu in pairs(iv.presets) do
blhv[iv.colourKey(iqu.panel)] = _d("QwRaBgM")
blhv[iv.colourKey(iqu.element)] = _d("VglRDgoMGA")
blhv[iv.colourKey(iqu.accent)] = _d("UgZXBgEW")
end

blhv[iv.colourKey(mxm.accent)] = _d("UgZXBgEW")

if blhv[iv.colourKey(jnfi.BackgroundColor3)] == _d("QwRaBgM") then
jnfi.BackgroundColor3 = mxm.panel
end

for wcdl, ddr in ipairs(jnfi:GetDescendants()) do
if ddr:IsA(_d("dBBdLA0ICVAR")) then
local iqw = blhv[iv.colourKey(ddr.BackgroundColor3)]

if iqw then
ddr.BackgroundColor3 = mxm[iqw]
end
elseif ddr:IsA(_d("ZixnFx0NB1Y")) then
if blhv[iv.colourKey(ddr.Color)] == _d("UgZXBgEW") then
ddr.Color = mxm.accent
end
end

if ddr:IsA(_d("eghVBAouDVEAWA")) and ddr.Name == _d("ZwRWKgIDC1Y") and ddr.Image ~= _d("") then
ddr.ImageColor3 = mxm.accent
ddr.ImageTransparency = 0
ddr:SetAttribute(_d("ciZ2OzsDDnIGVwYBFg"), mxm.accent)

if not ddr:GetAttribute(_d("ciZ2OzsDDmcMWhc")) then
ddr:SetAttribute(_d("ciZ2OzsDDmcMWhc"), true)

local function mvut()
local ugcx = ddr:GetAttribute(_d("ciZ2OzsDDnIGVwYBFg"))

if ugcx and ddr.ImageColor3 ~= ugcx then
ddr.ImageColor3 = ugcx
end

if ddr.ImageTransparency ~= 0 then
ddr.ImageTransparency = 0
end
end

ddr:GetPropertyChangedSignal(_d("eghVBAo2HlILRxMOEAldBk0")):Connect(mvut)
ddr:GetPropertyChangedSignal(_d("eghVBAohA18KRlA")):Connect(mvut)
end
end
end

return true
end

local shr = grv:Tab({
Name = _d("fgRE"),
Image = _d("QQdMAhwRCUcMUFlATVoDVgVTWFdVAFQ"),
})

local cof = {
holdFor = 25,
fly = {
on = false,
speed = 55,
connection = nil,
},
islands = {
{ name = _d("fwpWARY"), kind = _d("RApGDws"), arg = _d("XwpWARY") },
{ name = _d("cgdVDQsNAlYBFCocDg1dAQ"), kind = _d("WhZYAgEG"), arg = _d("UgdVDQsNAlYBawocDg1dAQ") },
{ name = _d("ZxJdDU8gCVIGXAYc"), kind = _d("WhZYAgEG"), arg = _d("RxJdDTAACVIGXAYc"), note = _d("EzFcBk8RCUETURFPBh5cFUdDBhZMRgtACgNCFVwQFAsOFAkTFlUKAwcIExFcBh0HQg") },
{ name = _d("ZAxaBwILAF9FfRADBw"), kind = _d("WhZYAgEG"), arg = _d("RAxaBwILAF86XRADBw"), note = _d("EzFcBk8RCUETURFPBh5cFUdDBhZMRgtACgNCFVwQFAsOFAkTFlUKAwcIExFcBh0HQg") },
},
npcs = {
{ name = _d("cARGB08vCUECUQ"), npc = _d("VRBHBjAMHFA"), attr = _d("fTV3Kgs"), at = Vector3.new(-272, 33, -40347) },
{ name = _d("dh1EBgsLGFoKWhA"), npc = _d("dh1EBgsLGFoKWi0/IQ"), attr = _d("dh1EBgsLGFoKWi0/IQ"), at = Vector3.new(-347, 35, -40361) },
{ name = _d("dwBXDAERGEEQVxc"), npc = _d("VwBXDAERGEEQVxcwDBxQ"), attr = _d("fTV3Kgs"), at = Vector3.new(-264, 33, -40331) },
{ name = _d("cBdVBRs"), npc = _d("UBdVBRs9AkMG"), attr = _d("fTV3Kgs"), at = Vector3.new(-330, 33, -40277) },
{ name = _d("YA5dDwNCOEEAUQ"), npc = _d("YA5dDwM2HlYAejMs"), attr = _d("YA5dDwM2HlYAejMs"), at = Vector3.new(-290, 32, -40283) },
{ name = _d("cARGB08rAlcATA"), npc = _d("UARGBzALAlcATDwBEg8"), attr = _d("fTV3Kgs"), at = Vector3.new(-313, 33, -40282) },
{ name = _d("YwRXCE8vCUEGXAIBFg"), npc = _d("QwRXCDAPCUEGXAIBFg"), attr = _d("fTV3Kgs"), at = Vector3.new(-301, 33, -40270) },
{ name = _d("dxBaBAoNAg"), npc = _d("VxBaBAoNAmwLRAA"), attr = _d("fTV3Kgs"), at = Vector3.new(-339, 41, -40399) },
{ name = _d("dQxHCwoQAVIL"), npc = _d("dQxHCwoQAVILejMs"), attr = _d("dQxHCwoQAVILejMs"), at = Vector3.new(-493, 14, -40262) },
{ name = _d("YABXEQoWTHILUw8KEA"), npc = _d("YABXEQoWLV0CWAYdLDxw"), attr = _d("YABXEQoWLV0CWAYdLDxw"), at = Vector3.new(-209, 34, -40382) },
{ name = _d("ewRYDwAVCVYLFDAHDRw"), npc = _d("YxBZEwQLAhMoUREMCg1dEQ"), at = Vector3.new(-29989, 78, -30259) },
{ name = _d("YARXEQYEBVAAFCIDFg1B"), landmark = _d("YARXEQYEBVAAdQ8bAx4"), island = _d("UgdVDQsNAlYBawocDg1dAQ"), at = Vector3.new(-3548, 11, -40462) },
{ name = _d("ewRGBwwNHlZFYAwYBx4"), npc = _d("ewRGBwwNHlYxWxQKEA"), island = _d("UgdVDQsNAlYBawocDg1dAQ"), at = Vector3.new(-3795, 25, -40250) },
{ name = _d("ehZYAgEGTHUMRwsKEAFSCw"), npc = _d("ehZYAgEGKloWXAYdDw1dK2Qg"), attr = _d("ehZYAgEGKloWXAYdDw1dK2Qg"), island = _d("UgdVDQsNAlYBawocDg1dAQ"), at = Vector3.new(-3825, 23, -40260) },
{ name = _d("dwxTBAoQ"), npc = _d("dwxTBAoQImMm"), attr = _d("dwxTBAoQImMm"), island = _d("RxJdDTAACVIGXAYc"), at = Vector3.new(-5998, 26, -40565) },
{ name = _d("YABXEQoWTHcMUwQKEA"), npc = _d("YABXEQoWKFoCUwYdLDxw"), attr = _d("YABXEQoWKFoCUwYdLDxw"), island = _d("RAxaBwILAF86XRADBw"), at = Vector3.new(-7740, 17, -40343) },
},
}

function cof.hold()
he.tpHoldUntil = os.clock() + cof.holdFor

he.deepPhase = _d("WgFYBg")
he.deepStageAt = 0
he.phase = _d("WgFYBg")
he.nextCastAt = 0
he.watchdogAt = 0

return cof.holdFor
end

function cof.point(cnr)
local dnrz

if cnr.landmark then
dnrz = workspace:FindFirstChild(cnr.landmark)
else
local xpv = workspace:FindFirstChild(_d("fTV3EA"))

if xpv then
for gqk, auqw in ipairs(xpv:GetChildren()) do
local tag

if cnr.attr then
tag = auqw:GetAttribute(cnr.attr) == cnr.npc
else
tag = auqw.Name == cnr.npc
end

if tag then
dnrz = auqw
break
end
end
end
end

if dnrz then
local dpov = dnrz.PrimaryPart
or dnrz:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"), true)
or dnrz:FindFirstChildWhichIsA(_d("cQRHBj8DHkc"), true)

if dpov then
return dpov.Position
end
end

return cnr.at
end

function cof.resume()
if not he.enabled then
return
end

local ay = vr.Character
local bw = ay and ay:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not bw or (bw.Position - zfq).Magnitude < 40 then
return
end

pcall(function()
he.recover()
end)
end

function cof.standAt(ozm)
local jzhv = vr.Character
local nc = jzhv and jzhv:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not nc or not ozm then
return false
end

local zvs = RaycastParams.new()
zvs.FilterType = Enum.RaycastFilterType.Exclude
zvs.FilterDescendantsInstances = { jzhv }

local nbv = workspace:Raycast(ozm + Vector3.new(0, 10, 0), Vector3.new(0, -80, 0), zvs)
local twvk = ozm.Y

if nbv and nbv.Instance.Name ~= _d("ZARABh0") then
local vrtm = nbv.Position.Y + 3.2

if math.abs(vrtm - ozm.Y) <= 8 then
twvk = vrtm
end
end

local err = Vector3.new(nc.Position.X - ozm.X, 0, nc.Position.Z - ozm.Z)

if err.Magnitude < 1 then
err = Vector3.new(4, 0, 0)
else
err = err.Unit * 4
end

local ewl = Vector3.new(ozm.X + err.X, twvk, ozm.Z + err.Z)

nc.CFrame = CFrame.new(ewl)

return true
end

function cof.unlock()
local mmgh = {
{ id = _d("UgdVDQsNAlYBawocDg1dAQ"), at = Vector3.new(-3825, 24, -40260) },
{ id = _d("RxJdDTAACVIGXAYc"), at = Vector3.new(-6180, 40, -40350) },
{ id = _d("RAxaBwILAF86XRADBw"), at = Vector3.new(-7480, 30, -40350) },
}
local yu = {}

for hlvr, mim in ipairs(mmgh) do
local jgxd = pzta.FishingGetState:InvokeServer()

if jgxd and jgxd.areas and jgxd.areas[mim.id] == true then
table.insert(yu, mim.id .. _d("CUVVDx0HDVccFAwfBwI"))
else
cof.hold()
cof.standAt(mim.at)
task.wait(2.4)

local yegu = pzta.FishingGetState:InvokeServer()

table.insert(yu, mim.id .. (yegu and yegu.areas and yegu.areas[mim.id] and _d("CUVBDQMND1gAUA") or _d("CUVSAgYOCVc")))
end
end

cof.hold()
pcall(function()
pzta.TeleportToWorld:FireServer(_d("XwpWARY"))
end)
task.wait(2.5)

return table.concat(yu, _d("E6eDQw"))
end

function cof.flyToggle(awsm)
cof.fly.on = awsm

if not awsm then
return _d("dQlNQwAECh0")
end

local cvx = vr.Character
local klx = cvx and cvx:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not klx then
return _d("fQoUAAcDHlIGQAYdQhhcRVgKCRZC")
end

cof.fly.height = klx.Position.Y

if cof.fly.connection then
return _d("dQlNQwAMQg")
end

local ydwz = game:GetService(_d("ZhZRESYMHEYRZwYdFAVQAA"))

cof.fly.connection = game:GetService(_d("YRBaMAoQGloGUQ")).Heartbeat:Connect(function(dzy)
if not cof.fly.on then
return
end

local xj = vr.Character
local rnb = xj and xj:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not rnb then
return
end

local it = workspace.CurrentCamera
local zgy = Vector3.zero

if it then
local adqe = it.CFrame.LookVector
local citf = Vector3.new(adqe.X, 0, adqe.Z)

if citf.Magnitude > 0.01 then
citf = citf.Unit
end

local kitx = Vector3.new(citf.Z, 0, -citf.X)

if ydwz:IsKeyDown(Enum.KeyCode.W) then
zgy = zgy + citf
end

if ydwz:IsKeyDown(Enum.KeyCode.S) then
zgy = zgy - citf
end

if ydwz:IsKeyDown(Enum.KeyCode.D) then
zgy = zgy + kitx
end

if ydwz:IsKeyDown(Enum.KeyCode.A) then
zgy = zgy - kitx
end
end

local wimj = 0

if ydwz:IsKeyDown(Enum.KeyCode.Space) then
wimj = 1
elseif ydwz:IsKeyDown(Enum.KeyCode.LeftControl) then
wimj = -1
end

local dma = cof.fly.speed or 55
local pph = zgy * dma * dzy + Vector3.new(0, wimj * dma * 0.6 * dzy, 0)

if pph.Magnitude < 0.001 then
return
end

rnb.CFrame = rnb.CFrame + pph
rnb.AssemblyLinearVelocity = Vector3.zero
end)

return _d("dQlNQwAMQg")
end

function cof.go(ek)
cof.hold()

if ek.kind == _d("RApGDws") then
pcall(function()
pzta.TeleportToWorld:FireServer(ek.arg)
end)

return _d("YABaF08WBFZF") .. ek.name .. _d("ExFRDwoSA0ERGg")
end

if ek.kind == _d("WhZYAgEG") then
pcall(function()
pzta.FishingIslandTeleport:FireServer(ek.arg)
end)

return _d("YABaF08WBFZF") .. ek.name .. _d("ExFRDwoSA0ERGg") .. tostring(ek.note or _d(""))
end

local eh = cof.point(ek)
local pa = vr.Character
local qq = pa and pa:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if eh and qq and (qq.Position - eh).Magnitude > 1500 then
pcall(function()
if ek.island then
pzta.FishingIslandTeleport:FireServer(ek.island)
else
pzta.TeleportToWorld:FireServer(_d("XwpWARY"))
end
end)

task.wait(ek.island and 3.5 or 4.5)

eh = cof.point(ek)

qq = vr.Character and vr.Character:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if eh and qq and (qq.Position - eh).Magnitude > 1500 then
return ek.name .. _d("EwxHQwAMTA") .. tostring(ek.island or _d("Rw1RQwMNDlEc"))
.. _d("E0gUFwcHTFQEWQZPEAlVEEcGHEIYWwRAQxsQBUNFQQ0bCwATDEBDBwMfEwdRBgFCHlYEVwsKBkxcC1cGQQ")
end
end

if not eh then
return ek.name .. _d("EwxHQwENGBMMWkMbCgVARUMMHQ4IHQ")
end

if not cof.standAt(eh) then
return _d("fQoUAAcDHlIGQAYdQhhcRVkMGQdC")
end

task.delay(cof.holdFor + 2, function()
pcall(cof.resume)
end)

return _d("YBFbDAtCDlYWXQcKQg") .. ek.name .. _d("HQ")
end

cof.islandSection = shr:Section({ Side = _d("fwBSFw") })
cof.islandSection:Header({ Name = _d("ehZYAgEGHxOVq+zyjdS8") })

cof.npcSection = shr:Section({ Side = _d("YQxTCxs") })
cof.npcSection:Header({ Name = _d("fTV3EE+S86Do") })

for uei, hxd in ipairs(cof.islands) do
cof.islandSection:Button({
Name = hxd.name,
Callback = function()
task.spawn(function()
local vb = cof.go(hxd)

ejt:Notify({
Title = _d("ZwBYBh8NHkc"),
Description = vb,
Lifetime = 6,
})
end)
end,
})
end

cof.state = he
cof.tab = shr
cof.islandSection:Button({
Name = _d("ZgtYDAwJTFIJWEMGEQBSC1AQ"),
Callback = function()
task.spawn(function()
local idro = cof.unlock()

ejt:Notify({
Title = _d("ehZYAgEGHw"),
Description = idro,
Lifetime = 10,
})
end)
end,
})

cof.flySection = shr:Section({ Side = _d("fwBSFw") })
cof.flySection:Header({ Name = _d("dQlNQ43+5Nzduw") })

cof.flySection:Toggle({
Name = _d("dQlNQ0c1LWAhGEM8Eg1QABQWH05McBFGD08GA0QLHQ"),
Default = false,
Callback = function(miz)
local zlsg = cof.flyToggle(miz)

ejt:Notify({
Title = _d("dQlN"),
Description = zlsg,
Lifetime = 4,
})
end,
}, _d("UgZWGzAEAEo"))

getgenv().ACBXTeleport = cof

getgenv().ACBXDeepWater = kx

pcall(kx.dropStale)

for fkz, yyns in ipairs(cof.npcs) do
cof.npcSection:Button({
Name = yyns.name,
Callback = function()
task.spawn(function()
local lkff = cof.go(yyns)

ejt:Notify({
Title = _d("ZwBYBh8NHkc"),
Description = lkff,
Lifetime = 6,
})
end)
end,
})
end

local mbtf = mndh:Section({ Side = _d("fwBSFw") })

mbtf:Header({ Name = _d("dwxTBAYMCxOHr+yA2uM") })

local dal = {
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

local iyf = (tonumber(getgenv().ACBXDigGeneration) or 0) + 1
getgenv().ACBXDigGeneration = iyf

function dal.read()
local kjna, ago = pcall(function()
return pzta.DigGetState:InvokeServer()
end)

return kjna and type(ago) == _d("RwRWDwo") and ago or nil
end

function dal.call(uo, pey)
local grs, jprb = pcall(function()
return pzta.DigShop:InvokeServer(uo, pey)
end)

task.wait(2.5)

return grs and jprb == true
end

function dal.wear()
local dzha = vr.Character

if not dzha then
return false
end

local upg = dzha:FindFirstChildOfClass(_d("exBZAgENBVc"))
local xm = vr:FindFirstChild(_d("cQRXCB8DD1g"))

if not (upg and xm) then
return false
end

upg:UnequipTools()
task.wait(0.4)

for fyrb = 1, 8 do
for ixew, zkez in ipairs(xm:GetChildren()) do
if zkez:IsA(_d("ZwpbDw")) and zkez.Name:find(_d("bSFdBDwKA0UAWA")) then
upg:EquipTool(zkez)

return true
end
end

task.wait(0.5)
end

return false
end

function dal.run()
local jne = dal.read()

if not jne then
return _d("Zw1RQwsLCxMWXAwfQgVARVoMG0INXRZDBh0LAlRL")
end

local hhw = {}

pcall(function()
local np = pzta.FishingGetState:InvokeServer()

hhw = np and np.areas or {}
end)

if not (hhw.abandoned_island and hhw.twin_beaches and hhw.windmill_isle) then
cof.unlock()
task.wait(1)
end

local eoqs

for tqj, qrqi in ipairs(cof.npcs) do
if qrqi.name == _d("dwxTBAoQ") then
eoqs = qrqi
break
end
end

if not eoqs then
return _d("Zw1RQzsQCVIWQREKQiRGC0AGHUIFQEVaDBtCBV1FQAsGEUxECkYPC0w")
end

cof.go(eoqs)
task.wait(2)

local ntp = vr.Character
local tqn = ntp and ntp:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))
local xtk = cof.point(eoqs)

if not (tqn and xtk) or (tqn.Position - xtk).Magnitude > 40 then
return _d("cApBDwtCAlwRFBEKAw9bRUALCkI4QQBVEBoQCRMtQQ0bBx4d")
end

jne = dal.read() or jne

local pk = false
local emrc = jne.shovels and jne.shovels.shovel_basic == true
local ulh = jne.detectors and jne.detectors.detector_basic == true

if not (emrc and ulh) then
pk = dal.call(_d("cAlVCgIxGFIXQAYd"), _d("QA1bFQoOM1EERwoM"))
jne = dal.read() or jne
end

if jne.equippedShovel ~= _d("QA1bFQoOM1EERwoM") then
dal.call(_d("dhRBCh8xBFwTUQ8"), _d("QA1bFQoOM1EERwoM"))
end

if jne.equippedDetector ~= _d("VwBABgwWA0E6VgIcCw8") then
dal.call(_d("dhRBCh8mCUcAVxcAEA"), _d("VwBABgwWA0E6VgIcCw8"))
end

jne = dal.read() or jne

if jne.equippedShovel == _d("QA1bFQoOM1EERwoM") and jne.equippedDetector == _d("VwBABgwWA0E6VgIcCw8") then
local tdz = dal.wear()
local aso = false

if tdz and he.enabled then
he.autoFishWanted = false
aso = true

eyu(false)

pcall(function()
qxj:UpdateState(false)
end)
end

return (pk and _d("cAlVCgIHCBMEWgdPBx1GDEQTCgY") or _d("dhRBCh8SCVc"))
.. _d("ExFcBk8gDUAMV0M8CgNFAFhDDgwIEydVEAYBTHcAQAYMFgNBSw")
.. (aso and _d("EyRBFwBCKloWXEMABAoTSBQXBwdMQA1bFQoOTFsER0MbCgkTEVsMA0IfXwpATQ") or _d(""))
end

return _d("Zw1RQy0DH1oGFDAHDRpWCRQMHUIoVhFRABsNHhMMR0McFgVfCRQOBhEfWgtTTQ")
end

function dal.unlock()
if dal.busy then
return _d("cglGBg4GFRMSWxEECwJUSw")
end

dal.busy = true

local rynf, scwq = pcall(dal.run)

dal.busy = false

if not rynf then
return _d("dwxTBAYMCxMDVQoDBwgJRQ") .. tostring(scwq)
end

return scwq
end

dal.icon = function()
local iho = gethui()

for wbh, lgmb in ipairs(iho:QueryDescendants(_d("eghVBAouDVEAWA"))) do
if lgmb.Name == _d("ZwRWKgIDC1Y") then
local tw = lgmb.Parent
local mhx = tw and tw:FindFirstChild(_d("ZwRWMBgLGFANUREhAwFW"))

if mhx and mhx.Text == _d("dwxTBAYMCw") then
if lgmb:GetAttribute(_d("ciZ2OysLC3oGWw0")) then
return true
end

lgmb:SetAttribute(_d("ciZ2OysLC3oGWw0"), true)
lgmb.Image = _d("")
lgmb.BackgroundTransparency = 1

local izqk = Color3.fromRGB(233, 236, 242)

for drzx, pxz in ipairs(iho:QueryDescendants(_d("eghVBAouDVEAWA"))) do
if pxz.Name == _d("ZwRWKgIDC1Y") and pxz ~= lgmb and pxz.Image ~= _d("") then
izqk = pxz.ImageColor3
break
end
end

local function tex(ht, uvfe, hm, ryg, qur, yxjp)
local asa = Instance.new(_d("dRdVDgo"))

asa.Size = UDim2.fromOffset(hm, ryg)
asa.Position = UDim2.fromOffset(ht, uvfe)
asa.BackgroundColor3 = izqk
asa.BorderSizePixel = 0
asa.Parent = lgmb

if yxjp then
asa.Rotation = yxjp
end

if qur then
local pmm = Instance.new(_d("Zix3DB0MCUE"))

pmm.CornerRadius = UDim.new(0, qur)
pmm.Parent = asa
end

return asa
end

tex(1.1, 10.2, 7, 6.4, 1.6, -45)
tex(3.1, 8.3, 11, 2.2, 0.8, -45)
tex(9.8, 4.4, 5.6, 2, 0.8, 45)

return true
end
end
end

return false
end

task.defer(function()
for lhl = 1, 20 do
if dal.icon() then
break
end

task.wait(0.25)
end
end)

mbtf:Button({
Name = _d("ZgtYDAwJTFcMUwQGDAs"),
Callback = function()
task.spawn(function()
ejt:Notify({
Title = _d("dwxTBAYMCw"),
Description = _d("ewBVBwYMCxMRW0MbCgkTMUYGDhEZQQAUKxoMGFYXGg"),
Lifetime = 5,
})

local vnnd = dal.unlock()

ejt:Notify({
Title = _d("dwxTBAYMCw"),
Description = vnnd,
Lifetime = 10,
})
end)
end,
})

dal.statusParagraph = mbtf:Paragraph({
Header = _d("dwxTQxwWDUcA"),
Body = _d("YQBVBwYMCxMRXAZPBgVURUcCGQdCHUs"),
})

dal.data = require(gs.ModuleScripts.DigData)

function dal.zoneAt(nxp)
for eoe, lucx in ipairs(game:GetService(_d("cApYDwoBGFoKWjAKEBpaBlE")):GetTagged(dal.data.ZoneTag)) do
if lucx:IsA(_d("cQRHBj8DHkc")) and lucx:IsDescendantOf(workspace) then
local pfy = lucx.CFrame:PointToObjectSpace(nxp)
local qrwq = lucx.Size * 0.5

if math.abs(pfy.X) <= qrwq.X and math.abs(pfy.Y) <= qrwq.Y and math.abs(pfy.Z) <= qrwq.Z then
return true
end
end
end

return false
end

function dal.onIsland()
for rife, no in ipairs(game:GetService(_d("cApYDwoBGFoKWjAKEBpaBlE")):GetTagged(dal.data.ZoneTag)) do
if no:IsA(_d("cQRHBj8DHkc")) and no:IsDescendantOf(workspace) then
return true
end
end

return false
end

function dal.bestShovel(lep)
local ufk = lep and lep.shovels or {}
local gw = nil

for mpms, er in ipairs(dal.data.Shovels) do
if ufk[er.id] == true then
gw = er.id
end
end

return gw
end

function dal.equipBest()
local sj = dal.read()
local vo = dal.bestShovel(sj)

if not vo then
return nil
end

if sj.equippedShovel ~= vo then
dal.call(_d("dhRBCh8xBFwTUQ8"), vo)
end

dal.wear()

return vo
end

function dal.bestDetector(jxl)
local ggsq = jxl and jxl.detectors or {}
local eoa = nil

for sb, iqp in ipairs(dal.data.Detectors) do
if ggsq[iqp.id] == true then
eoa = iqp.id
end
end

return eoa
end

function dal.equipBestDetector()
local uhk = dal.read()
local pxl = dal.bestDetector(uhk)

if not pxl then
return nil
end

if uhk.equippedDetector ~= pxl then
dal.call(_d("dhRBCh8mCUcAVxcAEA"), pxl)
end

return pxl
end

function dal.leaveNpc()
local smov = vr.Character
local onlm = smov and smov:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))
local izv = smov and smov:FindFirstChildOfClass(_d("exBZAgENBVc"))

if not (onlm and izv) then
return false
end

local tacx

for hkyk, jadq in ipairs(cof.npcs) do
if jadq.name == _d("dwxTBAoQ") then
tacx = jadq
break
end
end

local hmil = tacx and cof.point(tacx)

if not hmil then
return false
end

local vzec = Vector3.new(onlm.Position.X - hmil.X, 0, onlm.Position.Z - hmil.Z)

if vzec.Magnitude >= 16 then
return true
end

if vzec.Magnitude < 1 then
vzec = Vector3.new(0, 0, -1)
end

vzec = vzec.Unit

local xmf = Vector3.new(hmil.X + vzec.X * 22, onlm.Position.Y, hmil.Z + vzec.Z * 22)
local ro = os.clock() + 6

izv:MoveTo(xmf)

while os.clock() < ro do
local jhxf = vr.Character
local rmz = jhxf and jhxf:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not rmz or (rmz.Position - xmf).Magnitude < 4 then
break
end

task.wait(0.15)
end

pcall(function()
izv:MoveTo(onlm.Position)
end)

return true
end

function dal.goToSand(fm)

if fm or not dal.onIsland() then
if not fm then

pcall(function()
pzta.TeleportToWorld:FireServer(_d("XwpWARY"))
end)

local xrq = os.clock() + 15

while not dal.onIsland() and os.clock() < xrq do
task.wait(0.5)
end
end

local gq

for uawz, fio in ipairs(cof.npcs) do
if fio.name == _d("dwxTBAoQ") then
gq = fio
break
end
end

if gq then
cof.go(gq)
task.wait(2)
end
end

if dal.onIsland() then
dal.leaveNpc()
end
end

function dal.spot()
local cip = vr.Character
local ehpa = cip and cip:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not ehpa then
return nil
end

local jmth = ehpa.CFrame.LookVector
local rii = Vector3.new(jmth.X, 0, jmth.Z)

if rii.Magnitude < 0.01 then
rii = Vector3.new(0, 0, -1)
end

rii = rii.Unit

local qs = RaycastParams.new()
qs.FilterType = Enum.RaycastFilterType.Exclude
qs.FilterDescendantsInstances = { cip }

local function rreu(swdx, ko)
local erk = ehpa.Position + swdx * ko + Vector3.new(0, 4, 0)
local gc = workspace:Raycast(erk, Vector3.new(0, -18, 0), qs)

if gc and dal.zoneAt(gc.Position) then
return gc.Position
end
end

for kloo, ssge in ipairs({ 4, 7, 10, 2 }) do
local fr = rreu(rii, ssge)

if fr then
return fr
end
end

local fems = Vector3.new(-rii.Z, 0, rii.X)

for igsh, kf in ipairs({ 4, 8 }) do
for uvdg, hmn in ipairs({ 1, -1 }) do
for ubz, bfji in ipairs({ 1, 0.5 }) do
local zjpe = rreu((fems * (hmn * bfji) + rii * (1 - bfji)).Unit, kf)

if zjpe then
return zjpe
end
end
end
end

return nil
end

function dal.turn()
local nds = vr.Character
local szed = nds and nds:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not szed then
return
end

local mfce = szed.CFrame.LookVector
local ejrg = Vector3.new(mfce.X, 0, mfce.Z)

if ejrg.Magnitude < 0.01 then
ejrg = Vector3.new(0, 0, -1)
end

ejrg = ejrg.Unit

local eg = Vector3.new(-ejrg.Z, 0, ejrg.X)

szed.CFrame = CFrame.lookAt(szed.Position, szed.Position + eg)
end

dal.misses = 0

dal.pending = false

dal.spots = {}
dal.treasures = {}

local function uev(mw)
local uelj = {}
local oojp = {}

for qa, kax in pairs(mw) do
local ziu
local adb

if typeof(kax) == _d("ZQBXFwAQXw") or typeof(kax) == _d("cCNGAgIH") then
ziu = qa
adb = kax
elseif type(kax) == _d("RwRWDwo") then
ziu = kax.id or kax.Id or kax[1]
adb = kax.position or kax.Position or kax.pos or kax[2]
end

if typeof(adb) == _d("cCNGAgIH") then
adb = adb.Position
end

if ziu ~= nil and typeof(adb) == _d("ZQBXFwAQXw") then
table.insert(uelj, { id = ziu, position = adb, spot = true })
oojp[ziu] = true
end
end

return uelj, oojp
end

pcall(function()
pzta.DigUpdate.OnClientEvent:Connect(function(kfxa, cgtg)
if kfxa == _d("dwxTMQoRGV8R") then
dal.pending = false
dal.resultAt = os.clock()
elseif kfxa == _d("dwxTIA4MD1YJ") then
dal.pending = false
end

if (kfxa == _d("YBVbFxw") or kfxa == _d("ZxdRAhwXHlYW")) and type(cgtg) == _d("RwRWDwo") then
local uee, ulpp = uev(cgtg)

if kfxa == _d("YBVbFxw") then
for ejfp, uc in ipairs(uee) do
uc.spot = true
end

dal.spots = uee
dal.reportedSpots = ulpp
else
dal.treasures = uee

for vy, kpdd in ipairs(uee) do
kpdd.spot = nil
end

dal.reported = ulpp
end

local pe = dal.target

if pe and not pe.mark then
local iexq = pe.spot and dal.reportedSpots or dal.reported

if iexq and not iexq[pe.id] then
dal.targetGone = true
end
end
end
end)
end)

function dal.withinDig(qt)
local suw = vr.Character
local dfb = suw and suw:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not dfb then
return false
end

return (dfb.Position - qt).Magnitude <= 10
end

dal.markGone = {}

function dal.marked()
local hw = workspace:FindFirstChild(_d("dwxTLg4QB0A"))
local lrl = {}

if not hw then
return lrl
end

local zbq = os.clock()

for tdvx, iymy in ipairs(hw:GetChildren()) do
if iymy.Name == _d("ayhVEQQ") and iymy:IsA(_d("cQRHBj8DHkc")) then
local kc = iymy.Position
local see = string.format(_d("XgRGCFVHQgMDDkZBUgo"), kc.X, kc.Z)
local goc = dal.markGone[see]

if not (goc and zbq - goc < 90) then
table.insert(lrl, { id = see, position = kc, mark = true })
end
end
end

return lrl
end

function dal.chests()
local tc = {}

for whke, cmc in ipairs(dal.spots or {}) do
table.insert(tc, cmc)
end

for jbx, ffza in ipairs(dal.treasures or {}) do
table.insert(tc, ffza)
end

for iui, wgob in ipairs(dal.marked()) do
local vqak = false

for linc, hdk in ipairs(tc) do
if (hdk.position - wgob.position).Magnitude < 2 then
vqak = true

break
end
end

if not vqak then
table.insert(tc, wgob)
end
end

return tc
end

function dal.release(emuw)
if emuw.mark then
dal.markGone[emuw.id] = os.clock()
else
dal.forget(emuw)
end
end

function dal.nearestChest(ii)
local cmgz = vr.Character
local gfaz = cmgz and cmgz:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not gfaz then
return nil
end

local tsx
local xr

for od, htic in ipairs(dal.chests()) do
local mtmn = (htic.position - gfaz.Position).Magnitude

if mtmn <= ii and (not xr or mtmn < xr) then
tsx = htic
xr = mtmn
end
end

return tsx
end

function dal.forget(fqu)
for kat, vnk in ipairs({ dal.spots or {}, dal.treasures or {} }) do
for yio, zd in ipairs(vnk) do
if zd.id == fqu.id then
table.remove(vnk, yio)

return
end
end
end
end

function dal.walkTo(qaf)
local tats = vr.Character
local vinf = tats and tats:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))
local mh = tats and tats:FindFirstChildOfClass(_d("exBZAgENBVc"))

if not (vinf and mh) then
return false
end

local lkw = os.clock() + 12
local uror = (vinf.Position - qaf).Magnitude
local mle = os.clock()
local hgz = false

pcall(function()
mh:MoveTo(qaf)
end)

while os.clock() < lkw do
local lih = vr.Character
local xozs = lih and lih:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not xozs then
break
end

local rygk = (xozs.Position - qaf).Magnitude

if rygk <= 4 then
hgz = true

break
end

if dal.targetGone or not dal.autoOn
or getgenv().ACBXDigGeneration ~= iyf or not lrr() then
break
end

if rygk < uror - 1 then
uror = rygk
mle = os.clock()
elseif os.clock() - mle > 1.5 then
break
end

task.wait(0.15)
end

pcall(function()
mh:MoveTo(vinf.Position)
end)

return hgz
end

function dal.digAt(mph)
dal.misses = 0
dal.pending = true

local qka = os.clock()
local otlc = pcall(function()
pzta.DigAction:FireServer(_d("YBFVERs"), mph)
end)

if not otlc then
dal.pending = false
end

local mklx = os.clock() + 6

while dal.pending and dal.autoOn and os.clock() < mklx
and getgenv().ACBXDigGeneration == iyf and lrr() do
task.wait()
end

dal.pending = false

return (dal.resultAt or 0) >= qka
end

function dal.autoLoop()
local rsl = false

while dal.autoOn and lrr() and getgenv().ACBXDigGeneration == iyf do
local afsh = kxd and kxd.worldBoss
local qp = afsh ~= nil
and type(afsh.holdsDigging) == _d("VRBaABsLA10")
and afsh.holdsDigging() == true

if dal.shopping then

task.wait(0.5)
elseif qp then

rsl = true
task.wait(1)
else
if rsl then

rsl = false

if type(afsh.setRepeat) == _d("VRBaABsLA10") then
afsh.setRepeat(false)
end

dal.goToSand()
end

local eyio = dal.chestOn and dal.nearestChest(2500) or nil
local ksg = false

if eyio then
dal.target = eyio
dal.targetGone = false

local fk = vr.Character and vr.Character:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))
local jzs = fk and (fk.Position - eyio.position).Magnitude or 999

if jzs > 45 then
pcall(function()
cof.standAt(eyio.position)
end)

task.wait(0.6)
end

if not dal.walkTo(eyio.position) and not dal.targetGone then
pcall(function()
cof.standAt(eyio.position)
end)

task.wait(0.6)
dal.walkTo(eyio.position)
end

local ncv = not dal.withinDig(eyio.position)
local wfb = dal.targetGone

if wfb or ncv then
dal.strikes = wfb and 0 or (dal.strikes + 1)

if wfb or dal.strikes >= 2 then
dal.strikes = 0
dal.release(eyio)
dal.skipped = dal.skipped + 1
end
else

if dal.digAt(eyio.position) then
dal.strikes = 0
dal.release(eyio)
dal.dug = dal.dug + 1
ksg = true
else

dal.strikes = dal.strikes + 1

if dal.strikes >= 3 then
dal.strikes = 0
dal.release(eyio)
dal.skipped = dal.skipped + 1
end
end
end

dal.target = nil
dal.targetGone = false
end

if not ksg then
local npne = dal.spot()

if npne then
dal.digAt(npne)
else

dal.misses = (dal.misses or 0) + 1

if dal.misses >= 4 then
dal.misses = 0
dal.goToSand(true)
else
dal.turn()
task.wait(0.25)
end
end
end
end
end
end

function dal.autoStart()
local ffh = dal.read()

if not (ffh and dal.bestShovel(ffh)) then
return _d("fQoUEAcNGlYJFAwYDAlXRRlDOgwAXAZfQwsLC1QMWgRPBAVBFkBN")
end

local wsdc = false

if he.enabled then
he.autoFishWanted = false

eyu(false)
pcall(function()
qxj:UpdateState(false)
end)

wsdc = true
end

xpy = true
dal.equipBest()

if dal.chestOn then
pcall(dal.equipBestDetector)
end

dal.goToSand()

task.spawn(dal.autoLoop)

return _d("dwxTBAYMCx0") .. (wsdc and _d("EyRBFwBCKloWXEMABAoTSBQXBwdMQA1bFQoOTFsER0MbCgkTEVsMA0IfXwpATQ") or _d(""))
end

function dal.toggleAuto(ah, kulj)
if ah then
local bbdk = dal.autoOn == true

dal.chestOn = kulj == true
dal.switching = true

pcall(function()
local mr = kulj and dal.autoToggle or dal.chestToggle

if mr then
mr:UpdateState(false)
end
end)

dal.switching = false

if bbdk then
return
end

dal.autoOn = true

task.spawn(function()
local yi = dal.autoStart()

ejt:Notify({
Title = kulj and _d("chBADE8mBVRFdwsKERhA") or _d("chBADE8mBVQ"),
Description = yi,
Lifetime = 6,
})
end)
else

if dal.switching then
return
end

dal.autoOn = false
dal.pending = false
xpy = false
end
end

dal.autoToggle = mbtf:Toggle({
Name = _d("chBADE8mBVQ"),
Default = false,
Callback = function(rse)
dal.toggleAuto(rse, false)
end,
}, _d("VwxTBAYMC2wEQRcA"))

dal.chestToggle = mbtf:Toggle({
Name = _d("chBADE8mBVRFdwsKERhA"),
Default = false,
Callback = function(pux)
dal.toggleAuto(pux, true)
end,
}, _d("VwxTBAYMC2wEQRcAPQ9bAEcX"))

dal.chestParagraph = mbtf:Paragraph({
Header = _d("cA1REBsR"),
Body = _d("ZxdVAAQHCAlFBENCQihGAg5DX0JBEzZfCh8SCVdfFFM"),
})

task.spawn(function()
local imt

while lrr() and zpbc do
local qbfo = #dal.chests()
local gof = _d("ZxdVAAQHCAlF") .. qbfo .. _d("E0gUJxoFVhM") .. dal.dug .. _d("E0gUMAQLHEMAUFlP") .. dal.skipped

if dal.chestOn and qbfo > 0 then
local ycy = dal.nearestChest(2500)
local ekb = vr.Character
local zo = ekb and ekb:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if ycy and zo then
local doij = math.floor((ycy.position - zo.Position).Magnitude)
gof = gof .. _d("OStRAh0HH0dfFA") .. doij .. (doij > 45 and _d("ExZAFgsRTBsNWxNG") or _d("ExZAFgsR"))
end
end

if gof ~= imt then
imt = gof

pcall(function()
dal.chestParagraph:UpdateBody(gof)
end)
end

task.wait(0.5)
end
end)

function dal.npcRow()
for di, ku in ipairs(cof.npcs) do
if ku.name == _d("dwxTBAoQ") then
return ku
end
end
end

function dal.shop(jtri, umvr)
local domj, wct, qj, jmli = pcall(function()
return pzta.DigShop:InvokeServer(jtri, umvr)
end)

if not domj then
return false, _d("Zw1RQwsLCxMWXAwfQgVARVoMG0INXRZDBh0LAlRL")
end

return wct == true, qj, type(jmli) == _d("RwRWDwo") and jmli or nil
end

function dal.pickShovel(ikr)
local pnam = ikr.shovels or {}
local lx = tonumber(ikr.digs) or 0
local xkme

for yri, up in ipairs(dal.data.Shovels) do
if not up.crafted and up.id ~= _d("QA1bFQoOM1EERwoM") and pnam[up.id] ~= true then
local hsg = tonumber(up.cost) or math.huge

if hsg <= lx and (not xkme or hsg > (tonumber(xkme.cost) or 0)) then
xkme = up
end
end
end

return xkme
end

function dal.pickDetector(eaqh)
local xsy = eaqh.detectors or {}
local ipal = tonumber(eaqh.digs) or 0
local ryur

for gvq, nx in ipairs(dal.data.Detectors) do
if not nx.crafted and nx.id ~= _d("VwBABgwWA0E6VgIcCw8") and xsy[nx.id] ~= true then
local ymc = tonumber(nx.cost) or math.huge

if ymc <= ipal and (not ryur or ymc > (tonumber(ryur.cost) or 0)) then
ryur = nx
end
end
end

return ryur
end

function dal.nextDef(nbdh, gcfd)
local lwx

for wtq, qaa in ipairs(nbdh) do
local ouq = tonumber(qaa.cost)

if not qaa.crafted and ouq and gcfd[qaa.id] ~= true then
if not lwx or ouq < (tonumber(lwx.cost) or math.huge) then
lwx = qaa
end
end
end

return lwx
end

function dal.toCounter()
local ba = dal.npcRow()
local xpt = ba and cof.point(ba)
local wke = vr.Character
local wp = wke and wke:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not (xpt and wp) then
return false
end

if (wp.Position - xpt).Magnitude <= 20 then
return true
end

cof.go(ba)
task.wait(2.2)

wke = vr.Character
wp = wke and wke:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

return wp ~= nil and (wp.Position - xpt).Magnitude <= 20
end

function dal.upgradeAll()
local pfad = dal.buyOn == true
local era = dal.detBuyOn == true

if not (pfad or era) then
return nil, _d("fANSTQ")
end

local iyh = dal.read()

if not iyh then
return nil, _d("Zw1RQwsLCxMWXAwfQgVARVoMG0INXRZDBh0LAlRL")
end

if pfad then
local gokm = dal.bestShovel(iyh)

if gokm and iyh.equippedShovel ~= gokm then
dal.equipBest()
end
end

if era then
local sob = dal.bestDetector(iyh)

if sob and iyh.equippedDetector ~= sob then
dal.equipBestDetector()
end
end

local xrz = pfad and dal.pickShovel(iyh) or nil
local gif = era and dal.pickDetector(iyh) or nil

if not (xrz or gif) then
return nil, _d("fQoUFh8FHlIBUUMGEUxSA1IMHQYNUQlRQxYHGB0")
end

dal.shopping = true
dal.toCounter()

local kqv = {}
local xbzg

local function myx(egbm, oljz)
if not oljz then
return
end

local qnyl, edy = dal.shop(egbm, oljz.id)

if qnyl then
table.insert(kqv, oljz.name)
elseif not xbzg then
xbzg = tostring(edy)
end
end

myx(_d("cRBNMAcNGlYJ"), xrz)
myx(_d("cRBNJwoWCVARWxE"), gif)

if #kqv == 0 then
dal.shopping = false

return nil, _d("cRBNQx0HCkYWUQdVQg") .. (xbzg or _d("XQoUAgERG1YX"))
end

if pfad then
dal.equipBest()
end

if era then
dal.equipBestDetector()
end

if dal.autoOn then
dal.leaveNpc()
end

dal.shopping = false

return table.concat(kqv, _d("E04U"))
end

function dal.buyLoop()
while dal.buyOn or dal.detBuyOn do
local jjad, kitg, jdt = pcall(dal.upgradeAll)

dal.shopping = false

if not jjad then
task.wait(10)
elseif kitg then
ejt:Notify({
Title = _d("chBADE8gGUpFcAoIBQVdAhQkCgMe"),
Description = _d("cQpBBAcWTFILUEMKExlaFUQGC0IYWwAU") .. kitg .. _d("HQ"),
Lifetime = 6,
})

task.wait(3)
else
task.wait(jdt == _d("fANSTQ") and 0.5 or 10)
end
end
end

function dal.syncBuyLoop()
if not (dal.buyOn or dal.detBuyOn) or dal.buyRunning then
return
end

dal.buyRunning = true

task.spawn(function()
dal.buyLoop()

dal.buyRunning = false
end)
end

mbtf:Toggle({
Name = _d("chBADE8gGUpFdgYcFkxgDVsVCg4"),
Default = false,
Callback = function(drch)
dal.buyOn = drch
dal.syncBuyLoop()
end,
}, _d("VwxTBAYMC2wHQRo"))

mbtf:Toggle({
Name = _d("chBADE8gGUpFdgYcFkx3AEAGDBYDQQ"),
Default = false,
Callback = function(mj)
dal.detBuyOn = mj
dal.syncBuyLoop()
end,
}, _d("VwxTBAYMC2wHQRowBglHAFcXABA"))

function dal.statusText()
local sayd = dal.read()

if not sayd then
return _d("Zw1RQwsLCxMWXAwfQgVARVoMG0INXRZDBh0LAlRL")
end

local gy = tonumber(sayd.digs) or 0
local ogh = { _d("dwxTEFVC") .. gy }

local function yzpa(sjsi, bfp)
if not bfp then
return sjsi .. _d("CUVRFQoQFUcNXQ0IQgNEC1EHQQ")
end

local uy = tonumber(bfp.cost) or 0
local qbg = uy - gy

return sjsi .. _d("CUU") .. tostring(bfp.name) .. _d("E0gU") .. uy
.. (qbg <= 0 and _d("E01GBg4GFRo") or (_d("E00") .. qbg .. _d("ExFbQwgNRQ")))
end

table.insert(ogh, yzpa(_d("fQBMF08RBFwTUQ8"), dal.nextDef(dal.data.Shovels, sayd.shovels or {})))
table.insert(ogh, yzpa(_d("fQBMF08GCUcAVxcAEA"), dal.nextDef(dal.data.Detectors, sayd.detectors or {})))

return table.concat(ogh, _d("OQ"))
end

task.spawn(function()
while lrr() and zpbc do
local flyi, iqe = pcall(dal.statusText)

if flyi and dal.statusParagraph then
pcall(function()
dal.statusParagraph:UpdateBody(iqe)
end)
end

task.wait(6)
end
end)

getgenv().ACBXDigging = dal

iv.tab = grv:Tab({
Name = _d("YABAFwYMC0A"),

Image = _d(""),
})

iv.icon = function()
local mxz = gethui()

for bsi, lpdm in ipairs(mxz:QueryDescendants(_d("eghVBAouDVEAWA"))) do
if lpdm.Name == _d("ZwRWKgIDC1Y") then
local cda = lpdm.Parent
local sp = cda and cda:FindFirstChild(_d("ZwRWMBgLGFANUREhAwFW"))

if sp and sp.Text == _d("YABAFwYMC0A") then
if lpdm:GetAttribute(_d("ciZ2OywNC3oGWw0")) then
return true
end

lpdm:SetAttribute(_d("ciZ2OywNC3oGWw0"), true)
lpdm.Image = _d("")
lpdm.BackgroundTransparency = 1

local ycnz = Color3.fromRGB(168, 170, 176)

local function mp(lxg, iwo, vfl, kb, wxc, ltqh)
local qemg = Instance.new(_d("dRdVDgo"))

qemg.Size = UDim2.fromOffset(vfl, kb)
qemg.Position = UDim2.fromOffset(lxg, iwo)
qemg.BackgroundColor3 = ycnz
qemg.BorderSizePixel = 0
qemg.Parent = lpdm

if not ltqh then
qemg.BackgroundTransparency = 1

local xdmm = Instance.new(_d("ZixnFx0NB1Y"))

xdmm.Color = ycnz
xdmm.Thickness = 1.3
xdmm.LineJoinMode = Enum.LineJoinMode.Round
xdmm.Parent = qemg
end

if wxc then
local br = Instance.new(_d("Zix3DB0MCUE"))

br.CornerRadius = UDim.new(0, wxc)
br.Parent = qemg
end

return qemg
end

local sm = {
{ 8, 0, 2, 3 },
{ 8, 15, 2, 3 },
{ 0, 8, 3, 2 },
{ 15, 8, 3, 2 },
{ 2, 2, 3, 3 },
{ 13, 2, 3, 3 },
{ 2, 13, 3, 3 },
{ 13, 13, 3, 3 },
}

for errn, qsl in ipairs(sm) do
mp(qsl[1], qsl[2], qsl[3], qsl[4], 0, true)
end

mp(2, 2, 14, 14, 7, false)
mp(7, 7, 4, 4, 2, true)

return true
end
end
end

return false
end

task.defer(function()
for kqmw = 1, 20 do
if iv.icon() then
break
end

task.wait(0.25)
end
end)

iv.configSection = iv.tab:Section({
Side = _d("fwBSFw"),
})

iv.configSection:Header({
Name = _d("cApaBQYFTH4EWgIIBwFWC0A"),
})

iv.autoSaveToggle = iv.configSection:Toggle({
Name = _d("chBADE8RDUUA"),
Default = false,
Callback = function(fukh)
iv.autoSave = fukh
iv.autoSaveAt = 0

if fukh then
local bf = iv.selected or _d("VwBSAhoOGA")
local dzd, vgo = iv.save(bf)

iv.selected = bf
iv.lastText = dzd and (_d("chBADE8RDUUAFAwBQkETEkYMGwdM") .. bf)
or (_d("chBADE8RDUUAFAwBTkxVDEYQG0IbQQxABk8EDVoJUQdVQg") .. tostring(vgo))
else
iv.lastText = _d("chBADE8RDUUAFAwJBEI")
end
end,
}, _d("UApaBQYFM1IQQAwwEQ1FAA"))

iv.nameInput = iv.configSection:Input({
Name = _d("YARCBk8MDV4A"),
Placeholder = _d("VktTTU8wDVoBRw"),
AcceptedCharacters = _d("cglY"),
Callback = function(rka)
iv.nameDraft = rka
end,
})

iv.nameInput.IgnoreConfig = true

iv.configSection:Button({
Name = _d("cBdRAhsHTEAEQgY"),
Callback = function()
local wyb = iv.nameDraft or iv.nameInput:GetInput()

wyb = type(wyb) == _d("QBFGCgEF") and wyb:gsub(_d("bUBHSA"), _d("")):gsub(_d("FhYfRw"), _d("")) or _d("")

if wyb == _d("") then
ejt:Dialog({
Title = _d("cApaBQYF"),
Description = _d("ZxxEBk8DTF0EWQZPBANBRUALCkIfUhNRQwkLHkARFE5PCxgTB1EAAA8JQEVACwpCCloJUUQcQgJSCFFN"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})

return
end

local jfq, fweb = iv.save(wyb)

if not jfq then
iv.lastText = _d("YARCBk8EDVoJUQdVQg") .. tostring(fweb)

return
end

iv.selected = wyb
iv.lastText = _d("cBdRAhsHCBM") .. wyb .. _d("HQ")
iv.savesAt = 0

task.defer(function()
task.wait(0.25)

pcall(function()
iv.fileDropdown:UpdateSelection(wyb)
end)
end)
end,
})

iv.fileDropdown = iv.configSection:Dropdown({
Name = _d("YARCBk8EBV8A"),
Search = false,
Multi = false,
Required = false,
Options = iv.saves(),
Callback = function(oxi)
local oeh = type(oxi) == _d("RwRWDwo") and oxi[1] or oxi

if type(oeh) == _d("QBFGCgEF") and oeh ~= _d("") then
iv.selected = oeh
iv.selectionShown = oeh

pcall(function()
iv.fileDropdown:UpdateName(_d("YARCBk8EBV8ADkM") .. oeh)
end)
end
end,
})

iv.fileDropdown.IgnoreConfig = true

iv.configSection:Button({
Name = _d("fwpVB08RCV8AVxcKBg"),
Callback = function()
local fcyd = iv.selected or iv.fileDropdown.Value
local pias, ont = iv.load(fcyd)

iv.lastText = pias and (_d("fwpVBwoGTA") .. fcyd .. _d("HQ")) or (_d("fwpVB08EDVoJUQdVQg") .. tostring(ont))
end,
})

iv.configSection:Button({
Name = _d("YARCBk8WAxMWUQ8KARhWAQ"),
Callback = function()
local gxe = iv.selected or iv.fileDropdown.Value
local msnm, qmq = iv.save(gxe)

iv.lastText = msnm and (_d("ZBdbFwpC") .. gxe .. _d("HQ")) or (_d("YARCBk8EDVoJUQdVQg") .. tostring(qmq))
end,
})

iv.configSection:Button({
Name = _d("dwBYBhsHTEAAWAYMFglXRUcCGQc"),
Callback = function()
local bls = iv.selected or iv.fileDropdown.Value

if type(bls) ~= _d("QBFGCgEF") or bls == _d("") then
iv.lastText = _d("YwxXCE8DTEAEQgZPBAVfABQFBhAfR0s")

return
end

ejt:Dialog({
Title = _d("dwBYBhsHTA") .. bls .. _d("DA"),
Description = _d("Zw1RQwkLAFZFXRBPEAleCkIGC0IKQQpZQwsLH1hFVQ0LQg9SC1oMG0IOVkVGBgwNGlYXUQdB"),
Buttons = {
{
Name = _d("dwBYBhsH"),
Callback = function()
local iizy, fkdy = iv.delete(bls)

iv.lastText = iizy
and (_d("dwBYBhsHCBM") .. bls .. _d("HQ"))
or (_d("cApBDwtCAlwRFAcKDglHAA5D") .. tostring(fkdy))
end,
},
{
Name = _d("cARaAAoO"),
},
},
})
end,
})

iv.configSection:Button({
Name = _d("YQBSEQoRBBMJXRAb"),
Callback = function()
iv.savesAt = 0
iv.lastText = _d("YARCBk8OBUARFBEKBB5WFlwGC0w")
end,
})

iv.configSection:Button({
Name = _d("fgRGCE8DHxMEQRcAQgBcBFA"),
Callback = function()
local pib = iv.selected or iv.fileDropdown.Value

if type(pib) ~= _d("QBFGCgEF") or pib == _d("") then
iv.lastText = _d("YwxXCE8DTEAEQgZPBAVfABQFBhAfR0s")

return
end

if iv.setAutoLoad(pib) then
iv.lastText = pib .. _d("EwlbAgsRTFwLFBAbAx5HSw")
else
iv.lastText = _d("cApBDwtCAlwRFBQdCxhWRUALCkINRhFbQwMNDVdFWQIdCQlBSw")
end
end,
})

iv.configSection:Button({
Name = _d("cAlRAh1CDUYRW0MDDQ1X"),
Callback = function()
iv.setAutoLoad(_d(""))
iv.lastText = _d("fQpACwYMCxMJWwILEUxcCxQQGwMeR0s")
end,
})

iv.statusParagraph = iv.configSection:Paragraph({
Header = _d("YBFVFxoR"),
Body = _d(""),
})

iv.miscSection = iv.tab:Section({
Side = _d("YQxTCxs"),
})

iv.miscSection:Header({
Name = _d("fgxHAA"),
})

iv.miscSection:Toggle({
Name = _d("chBADE8BAFwWUUMIBwJWF1UXBg0CEzB9"),
Default = false,
Callback = function(lbii)
bs(lbii)
end,
}, _d("XgxHADADGUcKawADDR9WOlMGAQceUhFdDAE"))

iv.miscSection:Toggle({
Name = _d("chBADE8wA18J"),
Default = true,
Callback = function(xwyo)
iv.autoRoll = xwyo

if xwyo and iv.setRollButton then
iv.setRollButton(_d("chBADD0NAF8nQRcbDQI"), true)
end
end,
}, _d("XgxHADADGUcKaxEADgA"))

iv.miscSection:Toggle({
Name = _d("chBADE8zGVoGX0M9DQBf"),
Default = true,
Callback = function(qlp)
iv.autoQuickRoll = qlp

if qlp and iv.setRollButton then
iv.setRollButton(_d("YhBdAAQwA18JdhYbFgNd"), true)
end
end,
}, _d("XgxHADADGUcKaxIaCw9YOkYMAw4"))

iv.uiSection = iv.tab:Section({
Side = _d("YQxTCxs"),
})

iv.uiSection:Header({
Name = _d("Ziw"),
})

iv.uiSection:Toggle({
Name = _d("cQRXCAgQA0YLUEMNDhlB"),
Default = true,
Callback = function(gk)
pcall(function()
ejt:SetAcrylicBlurState(gk)
end)
end,
}, _d("RgxrAQ4BB1QXWxYBBjNRCUER"))

function iv.widthFactor(gt)
return 1 + math.max(0, (gt or 1) - 1) * 0.8
end

function iv.scaleCap()
local uq = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local hwij = math.min(120, math.floor(((uq.Y - 40 - 8 - 8) / 500) * 100))

while hwij > 50 and (iv.baseWidth or 720) * (hwij / 100) * iv.widthFactor(hwij / 100) > uq.X - 16 do
hwij = hwij - 1
end

return math.max(50, hwij)
end

function iv.scaleCeiling()
return math.min(1.2, iv.scaleCap() / 100)
end

function iv.refreshScaleCap()
local alk = iv.scaleSlider

if not alk then
return
end

local oyu = iv.scaleCeiling()

pcall(function()
alk.Settings.Maximum = oyu
end)

local eajv = tonumber(alk:GetValue()) or 1

if eajv > oyu then
iv.scaleTarget = oyu

pcall(function()
alk:UpdateValue(oyu)
end)
end
end

iv.scaleSlider = iv.uiSection:Slider({
Name = _d("ZiwUEAwDAFY"),
Default = 1,
Minimum = 0.5,

Maximum = iv.scaleCeiling(),
DisplayMethod = _d("ZQRYFgo"),
Precision = 2,

Callback = function(adlm)
iv.scalePending = tonumber(adlm)
iv.scalePendingAt = os.clock()
end,
onInputComplete = function(jyv)
local owd = iv.scaleCeiling()

iv.scaleTarget = math.clamp(tonumber(jyv) or iv.scalePending or 1, 0.5, owd)
iv.scalePending = nil

iv.scaleAnchor = nil

iv.saveUi()
end,
}, _d("RgxrEAwDAFY"))

iv.refreshScaleCap()

iv.themeDropdown = iv.uiSection:Dropdown({
Name = _d("Zw1RDgpYTGUKXQc"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = iv.themeOrder,
Callback = function(mhcx)
local tt = type(mhcx) == _d("RwRWDwo") and mhcx[1] or mhcx

if type(tt) == _d("QBFGCgEF") and iv.presets[tt] then
iv.theme = tt
iv.accent = nil
iv.applyTheme()

pcall(function()
iv.themeDropdown:UpdateName(_d("Zw1RDgpYTA") .. tt)
end)

iv.saveUi()
end
end,
}, _d("RgxrFwcHAVY"))

iv.accentPicker = iv.uiSection:Colorpicker({
Name = _d("cgZXBgEWTFAKWAwaEA"),
Default = Color3.fromRGB(168, 170, 176),
Alpha = 0,
Callback = function(odvs)
iv.accent = odvs
iv.applyTheme()
iv.saveUi()
end,
}, _d("RgxrAgwBCV0R"))

iv.codesSection = iv.tab:Section({
Side = _d("YQxTCxs"),
})

iv.codesSection:Header({
Name = _d("cApQBhw"),
})

iv.codeText = _d("YQBQBgoPHxMAQgYdG0xQClAGTxYEWhYUBA4PCRMWXAofEUxEDEALQ0IDXQAUBhkHHkpFVwwaEgBWRVsFTxEJUApaBxxM")

function iv.setCodeText(teks)
iv.codeText = teks

pcall(function()
iv.codeParagraph:UpdateBody(teks)
end)
end

function iv.redeemCodes()
if iv.redeeming then
return
end

local wvyr = pzta.RedeemCode
local evhj = gs:FindFirstChild(_d("fgpQFgMHP1AXXRMbEQ"))
local gdi = evhj and evhj:FindFirstChild(_d("cApQBisDGFI"))
local uxv, nnw = false, nil

if wvyr and gdi then
uxv, nnw = pcall(function()
return require(gdi)
end)
end

local lgdd = uxv and type(nnw) == _d("RwRWDwo") and nnw.Codes or nil

if not wvyr or type(lgdd) ~= _d("RwRWDwo") then
iv.setCodeText(_d("Zw1dEE8UCUEWXQwBQgNVRUALCkILUghRQwcDHxMLW0MMDQhWRVgKHBZMXBcUDQBCHlYBUQYCQh5WCFsXCkw"))
return
end

local ypm = {}

for mth in pairs(lgdd) do
ypm[#ypm + 1] = mth
end

table.sort(ypm)

local ci = #ypm

iv.redeeming = true
iv.setCodeText(_d("YQBQBgoPBV0CFA") .. ci .. _d("EwZbBwoRQh1L"))

task.spawn(function()
local cirw, gmgk, xjv = 0, 0, 0
local sxn = {}

for gz = 1, ci do
if not lrr() then
break
end

local sh = ypm[gz]
local il, eqv = pcall(function()
return wvyr:InvokeServer(sh)
end)

local umkw = il and type(eqv) == _d("RwRWDwo") and eqv.success == true
local rpyf = il and type(eqv) == _d("RwRWDwo") and tostring(eqv.message or _d("")) or tostring(eqv or _d(""))

if not umkw and string.find(string.lower(rpyf), _d("RARdFw"), 1, true) then
task.wait(3.5)

il, eqv = pcall(function()
return wvyr:InvokeServer(sh)
end)

umkw = il and type(eqv) == _d("RwRWDwo") and eqv.success == true
rpyf = il and type(eqv) == _d("RwRWDwo") and tostring(eqv.message or _d("")) or tostring(eqv or _d(""))
end

if umkw then
cirw = cirw + 1
elseif string.find(string.lower(rpyf), _d("UglGBg4GFQ"), 1, true) then
gmgk = gmgk + 1
else
xjv = xjv + 1

if #sxn < 6 then
sxn[#sxn + 1] = sh .. _d("CUU") .. (rpyf ~= _d("") and rpyf or _d("XQoUAgERG1YX"))
end
end

iv.setCodeText(string.format(_d("FgEUDAlCSVdFGUNKBkxBAFAGCg8JV0kURgtCDV8XUQILG0ATQFBDHQcKRhZRB0E"), gz, ci, cirw, gmgk, xjv))

if gz < ci and lrr() then
task.wait(1.8)
end
end

local meza = {
string.format(_d("YQBQBgoPCVdFEQdDQg1fF1ECCxtMWwRQQ0oGQBMXUQUaEQlXRREHTw0KE0BQTQ"), cirw, gmgk, xjv, ci),
}

for kvee, kdae in ipairs(sxn) do
meza[#meza + 1] = kdae
end

iv.redeeming = false
iv.setCodeText(table.concat(meza, _d("OQ")))
end)
end

iv.codesSection:Button({
Name = _d("YQBQBgoPTFIJWEMMDQhWFg"),
Callback = function()
iv.redeemCodes()
end,
})

iv.codeParagraph = iv.codesSection:Paragraph({
Header = _d("cApQBhw"),
Body = iv.codeText,
})

iv.scriptSection = iv.tab:Section({
Side = _d("YQxTCxs"),
})

iv.scriptSection:Header({
Name = _d("YAZGCh8W"),
})

iv.scriptSection:Button({
Name = _d("ZgtYDA4GTEAGRgofFg"),
Callback = function()
pcall(function()
ejt:Unload()
end)

getgenv().ACBXWindow = nil
getgenv().ACBXAllowReload = nil
end,
})

task.spawn(function()
while lrr() do

if os.clock() >= iv.savesAt then
iv.savesAt = os.clock() + 3

local lhu = iv.saves()
local yik = table.concat(lhu, _d("Tw"))

if yik ~= iv.knownSaves then
iv.knownSaves = yik

pcall(function()
iv.fileDropdown:ClearOptions()
iv.fileDropdown:InsertOptions(lhu)
end)
end

if iv.selected and iv.selectionShown ~= iv.selected then
iv.selectionShown = iv.selected

pcall(function()
iv.fileDropdown:UpdateSelection(iv.selected)
end)
end
end

if iv.autoSave and os.clock() >= iv.autoSaveAt then
iv.autoSaveAt = os.clock() + 60

local wdvm = iv.selected or _d("VwBSAhoOGA")
local rxz, lki = iv.save(wdvm)

iv.selected = wdvm
iv.lastText = rxz and (_d("chBADE8RDUUAUEM") .. wdvm .. _d("EwRAQw") .. os.date(_d("Fi0ORiI")) .. _d("HQ"))
or (_d("chBADE8RDUUAFAUOCwBWAQ5D") .. tostring(lki))
end

if os.clock() >= iv.themeAt then
iv.themeAt = os.clock() + 3
iv.applyTheme()
end

if os.clock() >= iv.capAt then
iv.capAt = os.clock() + 2
iv.refreshScaleCap()
end

if os.clock() >= iv.statusAt then
iv.statusAt = os.clock() + 2

local ncj = iv.autoLoadName()
local xxj = table.concat({
_d("chBADE8OA1IBDkM") .. (ncj or _d("XQpaBg")),
_d("YARCBhxYTA") .. tostring(#iv.saves()),
iv.lastText,
}, _d("OQ"))

if xxj ~= iv.shownStatus then
iv.shownStatus = xxj

pcall(function()
iv.statusParagraph:UpdateBody(xxj)
end)
end
end

task.wait(0.25)
end
end)

task.spawn(function()
while lrr() do

local hgk = iv.scalePending

if hgk and os.clock() - (iv.scalePendingAt or 0) > 0.35 then
local hvx = iv.scaleCeiling()
local imm = math.clamp(hgk, 0.5, hvx)

iv.scalePending = nil

if math.abs(imm - iv.scaleTarget) > 0.002 then
iv.scaleTarget = imm
iv.scaleAnchor = nil

iv.saveUi()
end
end

if math.abs(iv.scaleTarget - iv.scale) > 0.002 then
local ej = iv.guiRoot()

if ej and not iv.baseWidth then
iv.baseWidth = ej.Size.X.Offset
iv.baseHeight = ej.Size.Y.Offset
end

local qyj = iv.baseWidth or 720
local wblm = iv.baseHeight or 500
local ebtr = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local cbj, tvnn = 8, 40

if not iv.scaleAnchor and ej then

local chod = iv.widthFactor(iv.scaleTarget)
local xjes, sffh = qyj * chod * iv.scaleTarget, wblm * iv.scaleTarget
local pot = ej.AbsolutePosition

iv.scaleAnchor = Vector2.new(
math.clamp(pot.X, cbj, math.max(cbj, ebtr.X - xjes - cbj)),
math.clamp(pot.Y, tvnn, math.max(tvnn, ebtr.Y - sffh - cbj))
)
end

local vde = iv.scaleAnchor

iv.scale = iv.scale + (iv.scaleTarget - iv.scale) * 0.18

local lebj = iv.widthFactor(iv.scale)

pcall(function()
ejt:SetScale(iv.scale)

if ej then
local ica = math.floor(qyj * lebj)

ej.Size = UDim2.fromOffset(ica, math.floor(wblm))

local inii = ej:FindFirstChild(_d("cApaFwoMGA"))

if inii then
local nlr = ej:FindFirstChild(_d("YAxQBg0DHg"))
local vu = math.floor(nlr and nlr.Size.X.Scale * ica or ica * 0.325)

inii.Size = UDim2.new(0, math.max(0, ica - vu), 1, 0)
end
end
end)

if ej and vde then
local xlj, bdrx = qyj * lebj * iv.scale, wblm * iv.scale
local vw = math.clamp(vde.X, cbj, math.max(cbj, ebtr.X - xlj - cbj))
local makf = math.clamp(vde.Y, tvnn, math.max(tvnn, ebtr.Y - bdrx - cbj))

local htkl = ej.Parent and ej.Parent.AbsolutePosition or Vector2.zero

pcall(function()
ej.Position = UDim2.fromOffset(math.floor(vw - htkl.X), math.floor(makf - htkl.Y))
end)
end
else

iv.scaleAnchor = nil
end

task.wait()
end
end)

kxd.misc.tierLabels = {}
kxd.misc.labelToTier = {}

kxd.misc.expSection = kxd.misc.tab:Section({
Side = _d("fwBSFw"),
})

kxd.misc.expSection:Header({
Name = _d("dh1EBgsLGFoKWhBPkvOk59vb4A"),
})

kxd.misc.claimToggle = kxd.misc.expSection:Toggle({
Name = _d("chBADE8BAFIMWQ"),
Default = false,
Callback = function(kaik)
local kcn = kxd.misc.expeditions

kcn.enabled = kaik
kcn.claimAt = 0

if kaik then
kcn.askedAt = 0
kcn.request()
end
end,
}, _d("UhBADDABAFIMWQ"))

kxd.misc.rewardToggle = kxd.misc.expSection:Toggle({
Name = _d("chBADE8BAFwWUUMdBxtSF1AQ"),
Default = false,
Callback = function(lai)
local air = kxd.misc.expeditions

air.autoClose = lai

if lai then
air.closeRewards()
end
end,
}, _d("Vh1EPA4XGFw6Vw8AEQk"))

kxd.misc.startToggle = kxd.misc.expSection:Toggle({
Name = _d("chBADE8RGFIXQA"),
Default = false,
Callback = function(gvj)
local igz = kxd.misc.expeditions

if gvj and not next(igz.tiersWanted) then
igz.autoStart = false

pcall(function()
kxd.misc.startToggle:UpdateState(false)
end)

ejt:Dialog({
Title = _d("chBADE8RGFIXQEMBBwlXFhQCTxYFVhc"),
Description = _d("YwxXCE8DGBMJUQIcFkxcC1FDGwsJQUVdDU8WBFZFYAoKEExXF1sTCw0bXUVSCh0RGB1FcQIcG0xHBF8GHEIYWwAUAAcHDUMARxdPAQ1BAUdPTywFVA1ADg4QCRMRXAZPEA1BAEcXQ0INXQEUAgEbTF0QWQEKEExcAxQXBwcBEwZVDU8QGV1FVRdPDQJQABo"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})

return
end

igz.autoStart = gvj
igz.startedAt = {}

if gvj then
igz.askedAt = 0
igz.request()
end
end,
}, _d("UhBADDARGFIXQA"))

for zhp, ohtn in ipairs(kxd.misc.expeditions.tiers()) do
table.insert(kxd.misc.tierLabels, tostring(ohtn.name))
kxd.misc.labelToTier[tostring(ohtn.name)] = ohtn.id
end

kxd.misc.building = true

kxd.misc.tierDropdown = kxd.misc.expSection:Dropdown({
Name = _d("ZwxREQ"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = kxd.misc.tierLabels,
Callback = function(rmar)
local rd = kxd.misc.expeditions

if kxd.misc.building then
return
end

local hmrh = {}
local lybw = {}

if type(rmar) == _d("RwRWDwo") then
for ujjt, peas in pairs(rmar) do
local gtto = kxd.misc.labelToTier[tostring(ujjt)]

if peas and gtto then
hmrh[gtto] = true
table.insert(lybw, tostring(ujjt))
end
end
end

table.sort(lybw)
rd.tiersWanted = hmrh

pcall(function()
kxd.misc.tierDropdown:UpdateName(#lybw > 0 and (_d("ZwxREU+A7JFF") .. table.concat(lybw, _d("H0U"))) or _d("ZwxREU+A7JFFWgwBBw"))
end)
end,
}, _d("RwxREQ"))

task.defer(function()
kxd.misc.building = false
end)

kxd.misc.expSection:Button({
Name = _d("cAlVCgJCAlwS"),
Callback = function()
local iqm = kxd.misc.expeditions

if not iqm.claim() then
ejt:Notify({
Title = _d("dh1EBgsLGFoKWhA"),
Description = _d("fQpACwYMCxMNVRBPAQNeABQBDgEHExxRF0E"),
Lifetime = 5,
})
end
end,
})

kxd.misc.expSection:Button({
Name = _d("YABaB08RCV8AVxcKBg"),
Callback = function()
local pjk = kxd.misc.expeditions

if not next(pjk.tiersWanted) then
ejt:Notify({
Title = _d("dh1EBgsLGFoKWhA"),
Description = _d("YwxXCE8DGBMJUQIcFkxcC1FDGwsJQUVdDU8WBFZFUBEAEghcElpDCQseQBEa"),
Lifetime = 5,
})

return
end

local vki = {}
local kbsr = 0

for ond, izl in ipairs(pjk.tiers()) do
if pjk.tiersWanted[izl.id] and pjk.status(izl.id) == _d("UhNVCgMDDl8A") then
if pjk.start(izl.id, vki) then
kbsr = kbsr + 1
end
end
end

if kbsr == 0 then
ejt:Notify({
Title = _d("dh1EBgsLGFoKWhA"),
Description = _d("fQpACwYMCxMGWxYDBkxRABQQCgwYCUVACwpCH1YJUQAbBwgTEV0GHRFMUhdRQw4OHlYEUBpPDRlHSRQMHUIYWwBGBk8DHlZFWgwbQgpcEEZDCg4FVAxWDwpCD1IXUBBPBANBRUALCg9C"),
Lifetime = 6,
})
end
end,
})

kxd.misc.expInfo = kxd.misc.tab:Section({
Side = _d("YQxTCxs"),
})

kxd.misc.expInfo:Header({
Name = _d("dh1EBgsLGFoKWhA"),
})

kxd.misc.expParagraph = kxd.misc.expInfo:Paragraph({
Header = _d("YBFVFxoR"),
Body = kxd.misc.expeditions.text(),
})

kxd.misc.expeditions.loadRewards()

kxd.misc.expRewardParagraph = kxd.misc.expInfo:Paragraph({
Header = _d("cAlVCgIHCA"),
Body = kxd.misc.expeditions.rewardsText(),
})

task.spawn(function()
local bwr = kxd.misc.expeditions
local qf = aam(_d("YBxaACoaHFYBXRcGDQJA"), 3)

if qf then
qf.OnClientEvent:Connect(function(lgqc)
if type(lgqc) ~= _d("RwRWDwo") then
return
end

bwr.state = lgqc

bwr.offset = (tonumber(lgqc.now) or os.time()) - os.time()
bwr.syncedAt = os.clock()

if type(lgqc.rewards) == _d("RwRWDwo") and #lgqc.rewards > 0 then
table.insert(bwr.rewardLog, 1, {
at = os.time(),
title = tostring(lgqc.rewardTitle or _d("dh1EBgsLGFoKWg")),
items = lgqc.rewards,
})

while #bwr.rewardLog > 8 do
table.remove(bwr.rewardLog)
end

bwr.saveRewards()

if bwr.autoClose then

task.delay(0.35, bwr.closeRewards)
end
end
end)
end

while lrr() do

if os.clock() - bwr.askedAt > 1 and os.clock() - bwr.syncedAt > 20 then
bwr.request()
end

if bwr.enabled then
bwr.claim()
end

if bwr.autoClose then
bwr.closeRewards()
end

if bwr.autoStart and next(bwr.tiersWanted) then
local crva = {}

for hnsx, nnxc in ipairs(bwr.tiers()) do
if bwr.tiersWanted[nnxc.id] and bwr.status(nnxc.id) == _d("UhNVCgMDDl8A") then
if bwr.start(nnxc.id, crva) then
break
end
end
end
end

local vtm = bwr.text()

if kxd.misc.expParagraph and vtm ~= kxd.misc.expShown then
kxd.misc.expShown = vtm

pcall(function()
kxd.misc.expParagraph:UpdateBody(vtm)
end)
end

local yk = bwr.rewardsText()

if kxd.misc.expRewardParagraph and yk ~= bwr.rewardsShown then
bwr.rewardsShown = yk

pcall(function()
kxd.misc.expRewardParagraph:UpdateBody(yk)
end)
end

task.wait(0.75)
end
end)

kxd.misc.util = {
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

function kxd.misc.util.hook()
local zah = kxd.misc.util

if zah.hooked then
return
end

zah.hooked = true

if pzta.SyncCollection then
pzta.SyncCollection.OnClientEvent:Connect(function(kkyj)
if type(kkyj) == _d("RwRWDwo") then
zah.profile = kkyj
zah.profileAt = os.clock()
end
end)
end

if pzta.SyncAchievements then
pzta.SyncAchievements.OnClientEvent:Connect(function(rzw)
if type(rzw) == _d("RwRWDwo") then
zah.ach = rzw
end
end)
end

if pzta.SyncQuests then
pzta.SyncQuests.OnClientEvent:Connect(function(fhw)
if type(fhw) == _d("RwRWDwo") and type(fhw.list) == _d("RwRWDwo") then
zah.quests = fhw
end
end)
end

if pzta.SyncPeriodicQuests then
pzta.SyncPeriodicQuests.OnClientEvent:Connect(function(ena, qjm)
if ena == _d("RABRCAMb") and type(qjm) == _d("RwRWDwo") and type(qjm.list) == _d("RwRWDwo") then
zah.weekly = qjm
end
end)
end
end

function kxd.misc.util.askProfile()
local ozn = kxd.misc.util

if os.clock() - ozn.askedAt < 1.5 then
return
end

ozn.askedAt = os.clock()

if pzta.RequestSync then
pcall(function()
pzta.RequestSync:FireServer()
end)
end
end

function kxd.misc.util.currentProfile()
local nmn = kxd.misc.util

if type(nmn.profile) ~= _d("RwRWDwo") then
nmn.askProfile()

return nil
end

if os.clock() - nmn.profileAt > 20 then
nmn.askProfile()
end

return nmn.profile
end

function kxd.misc.util.forgetProfile()
local vqk = kxd.misc.util

vqk.profile = nil
vqk.profileAt = 0
vqk.askedAt = 0
end

function kxd.misc.util.indexedTotal(aetj)
local rb = 0

for dvpc, zhb in pairs((aetj and aetj.cardIndex) or {}) do
if zhb then
rb = rb + 1
end
end

return rb
end

function kxd.misc.util.indexPending(vas)
local xbkg = {}

if type(vas) ~= _d("RwRWDwo") then
return xbkg
end

local iybj = kxd.misc.util.indexedTotal(vas)
local mlf = vas.indexMilestones or {}

for vgh = 1, 30 do
if not mlf[vgh] and vgh * 5 <= iybj then
table.insert(xbkg, vgh)
end
end

return xbkg
end

function kxd.misc.util.indexFrame()
local pnyt = cmup:FindFirstChild(_d("cARGByYMCFYdcxYG"))

return pnyt and pnyt:FindFirstChild(_d("egtQBhckHlIIUQ"))
end

function kxd.misc.util.clickButton(qat)
if not qat then
return false
end

if firesignal then
local ebv = pcall(firesignal, qat.MouseButton1Click)

if ebv then
return true
end
end

return pcall(function()
qat:Activate()
end)
end

function kxd.misc.util.closeIndex()
local aak = kxd.misc.util.indexFrame()

if not aak or not aak.Visible then
return false
end

pcall(function()
local fvte = gs:FindFirstChild(_d("fgpQFgMHP1AXXRMbEQ"))
local vhrc = fvte and fvte:FindFirstChild(_d("fgBaFiIDAlICURE"))

if vhrc then
require(vhrc).close(aak)
end
end)

kxd.misc.util.clickButton(aak:FindFirstChild(_d("cAlbEAogGUcRWw0")))

pcall(function()
aak.Visible = false
end)

return true
end

function kxd.misc.util.claimIndex()
local gr = kxd.misc.util

if os.clock() < gr.indexAt then
return false
end

local hmw = gr.currentProfile()

if not hmw then
return false
end

local ezb = gr.indexPending(hmw)
local hzjz = ezb[1]

if not hzjz then
return false
end

local eta = gr.indexedTotal(hmw)
local wcab = gr.indexAsked

if type(wcab) == _d("RwRWDwo") and wcab.milestone == hzjz and wcab.total == eta then
return false
end

gr.indexAsked = { milestone = hzjz, total = eta }

pcall(function()
pzta.ClaimIndexReward:FireServer(hzjz)
end)

gr.indexAt = os.clock() + 1.5

gr.profile = nil
gr.profileAt = 0

task.delay(0.4, gr.closeIndex)

return true
end

function kxd.misc.util.achPending()
local vmy = {}
local msm = kxd.misc.util.ach

if type(msm) ~= _d("RwRWDwo") then
return vmy
end

for qyjy, sfcv in ipairs(msm.chains or {}) do
for qiqd, vll in ipairs(sfcv.levels or {}) do
if vll.reached and not vll.claimed then
table.insert(vmy, { chain = tostring(sfcv.id), index = vll.index, name = tostring(vll.name or vll.index) })
end
end
end

return vmy
end

function kxd.misc.util.claimAchievement()
local nxk = kxd.misc.util

if os.clock() < nxk.achAt then
return false
end

if type(nxk.ach) ~= _d("RwRWDwo") then
if os.clock() - nxk.achAskedAt > 4 and pzta.RequestAchievements then
nxk.achAskedAt = os.clock()

pcall(function()
pzta.RequestAchievements:FireServer()
end)
end

return false
end

for vnn, qhib in ipairs(nxk.achPending()) do
pcall(function()
pzta.ClaimAchievement:FireServer(qhib.chain, qhib.index)
end)

nxk.achAt = os.clock() + 1

task.delay(1, function()
if pzta.RequestAchievements then
pcall(function()
pzta.RequestAchievements:FireServer()
end)
end
end)

return true
end

return false
end

function kxd.misc.util.questRows()
local xb = kxd.misc.util
local kjc = {}

for va, uj in ipairs({ { list = _d("VwRdDxY"), payload = xb.quests }, { list = _d("RABRCAMb"), payload = xb.weekly } }) do
for sfc, xqni in ipairs((type(uj.payload) == _d("RwRWDwo") and uj.payload.list) or {}) do
if type(xqni) == _d("RwRWDwo") then
table.insert(kjc, { list = uj.list, index = sfc, quest = xqni })
end
end
end

return kjc
end

function kxd.misc.util.questPending()
local zxao = {}

for ytxf, xu in ipairs(kxd.misc.util.questRows()) do
local iadx = xu.quest

if not iadx.claimed and (tonumber(iadx.progress) or 0) >= (tonumber(iadx.target) or math.huge) then
table.insert(zxao, xu)
end
end

return zxao
end

function kxd.misc.util.askQuests()
local uswo = kxd.misc.util

if os.clock() - uswo.questAskedAt > 4 and pzta.RequestQuests then
uswo.questAskedAt = os.clock()

pcall(function()
pzta.RequestQuests:FireServer()
end)
end

if os.clock() - uswo.weeklyAskedAt > 4 and pzta.RequestPeriodicQuests then
uswo.weeklyAskedAt = os.clock()

pcall(function()
pzta.RequestPeriodicQuests:FireServer(_d("RABRCAMb"))
end)
end
end

function kxd.misc.util.claimQuest()
local ody = kxd.misc.util

if os.clock() < ody.questAt then
return false
end

if type(ody.quests) ~= _d("RwRWDwo") and type(ody.weekly) ~= _d("RwRWDwo") then
ody.askQuests()

return false
end

for ntu, ytq in ipairs(ody.questPending()) do
if ytq.list == _d("RABRCAMb") then
if pzta.ClaimPeriodicQuest then
pcall(function()
pzta.ClaimPeriodicQuest:FireServer(_d("RABRCAMb"), ytq.index)
end)
end
else
pcall(function()
pzta.ClaimQuest:FireServer(ytq.index)
end)
end

ody.questAt = os.clock() + 1.2

task.delay(1, function()
ody.askQuests()
end)

return true
end

return false
end

function kxd.misc.util.packCatalog()
local jnw = kxd.misc.util

if jnw.packs then
return jnw.packs
end

local ymcm = {}
local gnyj, biya = pcall(function()
return require(gs.ModuleScripts.PackData)
end)

if gnyj and type(biya) == _d("RwRWDwo") and type(biya.Packs) == _d("RwRWDwo") then
for ggon, xih in ipairs(biya.Packs) do
if xih.id then
table.insert(ymcm, { id = tostring(xih.id), name = tostring(xih.name or xih.id) })
end
end
end

jnw.packs = ymcm

return ymcm
end

function kxd.misc.util.packUnlocked(jt, oycu)
if type(jt) ~= _d("RwRWDwo") then
return true
end

local sow, ocni = pcall(function()
return require(gs.ModuleScripts.PackData)
end)
local mvqm, dhf = pcall(function()
return require(gs.ModuleScripts.PackSlotData)
end)

if not (sow and mvqm) then
return true
end

local tv = ocni.ById and ocni.ById[oycu]

if not tv then
return false
end

local wfgb, qe = pcall(dhf.isPackUnlocked, tv, jt)

return (not wfgb) or qe == true
end

function kxd.misc.util.visit(pd)
local njz = workspace:FindFirstChild(_d("fTV3EA"))
local zrdl = njz and njz:FindFirstChild(pd)
local csuz = vr.Character
local hss = csuz and csuz:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))
local xwid = zrdl and (zrdl:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ")) or zrdl:FindFirstChildWhichIsA(_d("cQRHBj8DHkc"), true))

if not (xwid and hss) then
return nil
end

local hhj = hss.CFrame

hss.CFrame = CFrame.new((xwid.CFrame * CFrame.new(0, 0, -5)).Position)

return hhj
end

function kxd.misc.util.returnTo(dmfd)
local ujfa = vr.Character
local ca = ujfa and ujfa:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if ca and dmfd then
ca.CFrame = dmfd
end
end

function kxd.misc.util.applyPacks(ykxi, oq)
local zaw = kxd.misc.util

if os.clock() < zaw.packAt then
return false, _d("ZARdF08DTF4KWQYBFkI")
end

local nkr = zaw.currentProfile()

if not nkr then
return false, _d("YQBVBwYMCxMcWxYdQhxBClIKAwdMHkVAERZCDVQEXQ1PCwITBBQQCgEDXQEa")
end

if oq and (tonumber(nkr.packSlots) or 1) < 2 then
return false, _d("YAlbF09QTF0AUQccQhhbABQGFxYeUkVEAgwJTEAJWxdPBQ1eAEQCHBFC")
end

if not (pzta.OpenPackShop and pzta.EquipPack) then
return false, _d("Zw1RQx8DD1hFRwsAEkxaFhQNABZMWgsUFwcLHxMCVQ4KQhpWF0cKAAxC")
end

zaw.packAt = os.clock() + 8

task.spawn(function()
local psnx = zaw.visit(_d("fQpWDwoRH1oLUxA"))

if not psnx then
return
end

pcall(function()
pzta.OpenPackShop:FireServer(_d("QwRXCDAPCUEGXAIBFg"))
end)

task.wait(1.2)

if ykxi then
pcall(function()
pzta.EquipPack:FireServer(ykxi, 1)
end)
end

if oq then
task.wait(0.8)

pcall(function()
pzta.EquipPack:FireServer(oq, 2)
end)
end

task.wait(0.8)
zaw.returnTo(psnx)
zaw.forgetProfile()
end)

return true
end

function kxd.misc.util.accScore(ylbn)
local fyl = ylbn.effects or {}

return (fyl.luckBonus or 0) * 10
+ ((fyl.luckMult or 1) - 1) * 200
+ ((fyl.borderLuckMult or 1) - 1) * 200
- ((fyl.rollCdMult or 1) - 1) * 30
end

function kxd.misc.util.accCatalog()
local okuf = kxd.misc.util

if okuf.accessories then
return okuf.accessories
end

local wq = {}

for ggnv, uar in ipairs({ _d("cgZXBhwRA0EccAIbAw"), _d("cgZXBhwRA0EccAIbA14") }) do
local gu, zmq = pcall(function()
return require(gs.ModuleScripts[uar])
end)

if gu and type(zmq) == _d("RwRWDwo") and type(zmq.Accessories) == _d("RwRWDwo") then
for zhl, bzcm in ipairs(zmq.Accessories) do
if bzcm.id then
table.insert(wq, {
id = tostring(bzcm.id),
name = tostring(bzcm.name or bzcm.id),
shop = ggnv,

shopName = ggnv == 1 and _d("cgZXBhwRA0EcFDAHDRw") or _d("fhxHFwoQBVwQR0MiAwI"),
raidable = bzcm.raidShopOnly == true,
hidden = bzcm.hidden == true,
requirements = bzcm.requirements or {},
score = kxd.misc.util.accScore(bzcm),
})
end
end
end
end

okuf.accessories = wq

return wq
end

function kxd.misc.util.accOwned(geh)
local iiba = {}

for wac, tzb in ipairs((geh and geh.accessories) or {}) do
iiba[tostring(tzb)] = true
end

return iiba
end

function kxd.misc.util.accMeets(brp, rfd)
for dy, bbts in ipairs(rfd.requirements) do
local xtcu = brp.cards and brp.cards[bbts.cardId]
local znmu = type(xtcu) == _d("RwRWDwo") and (tonumber(xtcu[bbts.borderLevel]) or 0) or 0

if znmu < (tonumber(bbts.amount) or 0) then
return false
end
end

return true
end

function kxd.misc.util.accPlan(dyg)
local pqco = kxd.misc.util
local alq = pqco.accOwned(dyg)
local lyjp = {}

for xgf, nle in ipairs(pqco.accCatalog()) do
if not alq[nle.id] and not nle.raidable and not nle.hidden and pqco.accMeets(dyg, nle) then
local dfh = lyjp[nle.shop]

if not dfh or nle.score > dfh.score then
lyjp[nle.shop] = nle
end
end
end

return lyjp
end

function kxd.misc.util.accPicks(uhbf)
local yeap = kxd.misc.util
local ynmx = yeap.accOwned(uhbf)
local mtff, ynx

for wiv, voic in ipairs(yeap.accCatalog()) do
if ynmx[voic.id] then
if not mtff or voic.score > mtff.score then
mtff = voic
end
elseif not voic.raidable and not voic.hidden and yeap.accMeets(uhbf, voic) then
if not ynx or voic.score > ynx.score then
ynx = voic
end
end
end

return mtff, ynx
end

function kxd.misc.util.equipBest()
local ohvj = kxd.misc.util
local nkw = ohvj.currentProfile()

if not nkw or not pzta.EquipAccessory then
return false
end

local qk = ohvj.accPicks(nkw)

if not qk or nkw.equippedAccessory == qk.id then
return qk ~= nil
end

pcall(function()
pzta.EquipAccessory:FireServer(qk.id)
end)

task.delay(1.5, function()
ohvj.forgetProfile()
end)

return true
end

function kxd.misc.util.buyBest()
local liy = kxd.misc.util

if os.clock() < liy.accAt then
return false, _d("ZARdF08DTF4KWQYBFkI")
end

if qtw.busy(1) or qtw.busy(2) then
liy.accNote = _d("egsUAk8ADUcRWAZPT0xSRUcLABJMRxddE08VA0YJUEMKDAgTDEA")
return false, _d("egsUAk8ADUcRWAZPT0xSRUcLABJMRxddE08VA0YJUEMKDAgTDEBN")
end

local iacg = liy.currentProfile()

if not iacg then
liy.accNote = _d("YQBVBwYMCxMcWxYdQhxBClIKAwdMHkVDCgMOTEcXTUMOBQ1aCxQKAUINExZRAAAMCA")
return false, _d("YQBVBwYMCxMcWxYdQhxBClIKAwdMHkVAERZCDVQEXQ1PCwITBBQQCgEDXQEa")
end

local egkq = liy.accPlan(iacg)
local rh = {}

for fde = 1, 2 do
if egkq[fde] then
table.insert(rh, egkq[fde].name)
end
end

if #rh == 0 then
liy.accNote = _d("fQpACwYMCxMLURRPFwJfClcICgZMSgBAQ0JCGFsAFAAOEAhARVIMHUIFR0VVEQpCAlwRFAoBQhhbABQAAA4AVgZACgAM")
return false, _d("fQpACwYMCxMLURRPAQ1dRVYGTxcCXwpXCAoGTEoAQENCQhhbABQADhAIQEVSDB1CBUdFVREKQgJcERQKAUIYWwAUAAAOAFYGQAoADEI")
end

liy.accAt = os.clock() + 12
liy.accNote = _d("ZARYCAYMCxMRW0MbCgkTBlsWARYJQUVSDB1C") .. table.concat(rh, _d("EwRaB08"))

task.spawn(function()
for mzx = 1, 2 do
local qfia = egkq[mzx]

if qfia then
local eox = mzx == 1 and _d("QxBGEBoLGFYBUA") or _d("RARSBQoOAVILUQIbERtSA1IGAxE")
local pagr = mzx == 1 and pzta.OpenAccessoryShop or pzta.OpenAccessoryShop2
local qpuk = mzx == 1 and pzta.BuyAccessory or pzta.BuyAccessory2
local xgs = eox and liy.visit(eox) or nil

if not xgs then
local svzp = workspace:FindFirstChild(_d("fTV3EA"))
local ynl = svzp and svzp:FindFirstChild(eox)

if ynl and os.clock() - (liy.worldAskedAt or 0) > 25 then

liy.worldAskedAt = os.clock()
liy.accNote = _d("cA1VEQ4BGFYXFA0AFkxBAFUHFkJBExFGGgYMCxMEUwIGDExADVsRGw4V")
elseif not ynl and os.clock() - (liy.worldAskedAt or 0) > 25 then

liy.worldAskedAt = os.clock()
liy.accNote = _d("fQoUAAAXAkcARkMGDExHDV0QTxUDQQlQQ0JCGFIOXQ0IQhhbABQPAAAOSkVABgMHHFwXQA")

pcall(function()
pzta.TeleportToWorld:FireServer(_d("XwpWARY"))
end)

task.wait(4.5)
xgs = liy.visit(eox)
end
end

if xgs and pagr and qpuk then

task.wait(0.9)

pcall(function()
pagr:FireServer()
end)

task.wait(1.2)

pcall(function()
qpuk:FireServer(qfia.id)
end)

task.wait(0.9)
liy.returnTo(xgs)
liy.accNote = _d("cQpBBAcWTA") .. tostring(qfia.name)
elseif not xgs then
liy.accNote = _d("cApBDwtCAlwRFBEKAw9bRUALCkIPXBBaFwoQTB5FQBEWQg1UBF0NTwsCEwQUDgAPCV0R")
end

task.wait(0.6)
end
end

liy.forgetProfile()

for rddm = 1, 8 do
if type(liy.profile) == _d("RwRWDwo") then
break
end

liy.askProfile()
task.wait(0.7)
end

liy.equipBest()
end)

return true, table.concat(rh, _d("H0U"))
end

function kxd.misc.util.indexText()
local rk = kxd.misc.util

if type(rk.profile) ~= _d("RwRWDwo") then
return _d("YQBVBwYMCxMcWxYdQg9SF1BDBgwIVh0aTUE")
end

local porl = rk.indexPending(rk.profile)
local ucq = 0

for brtv, xwog in pairs(rk.profile.indexMilestones or {}) do
if xwog then
ucq = ucq + 1
end
end

local tvt = tostring(rk.indexedTotal(rk.profile)) .. _d("EwZVEQsRTFoLUAYXBwgfRQ") .. tostring(ucq) .. _d("EwpSQ1xSTEEAQwIdBh8TBlgCBg8JVw")

if #porl > 0 then
tvt = tvt .. _d("OTdRAgsbVhM") .. table.concat(porl, _d("H0U"))
end

return tvt
end

function kxd.misc.util.achText()
local skd = kxd.misc.util

if type(skd.ach) ~= _d("RwRWDwo") then
return _d("YQBVBwYMCxMEVwsGBxpWCFENGxFCHUs")
end

local fav = skd.achPending()
local ff = 0

for ipqk, vnas in ipairs(skd.ach.chains or {}) do
for naz in ipairs(vnas.levels or {}) do
ff = ff + 1
end
end

return tostring(#fav) .. _d("EwpSQw") .. tostring(ff) .. _d("EwRXCwYHGlYIUQ0bEUxBAFUHFg")
end

function kxd.misc.util.questText()
local yyn = kxd.misc.util

if type(yyn.quests) ~= _d("RwRWDwo") and type(yyn.weekly) ~= _d("RwRWDwo") then
return _d("YQBVBwYMCxMUQQYcFh8dSxo")
end

local yxso, meh = 0, 0

for hb, ql in ipairs(yyn.questPending()) do
if ql.list == _d("RABRCAMb") then
meh = meh + 1
else
yxso = yxso + 1
end
end

local owi = type(yyn.quests) == _d("RwRWDwo") and #(yyn.quests.list or {}) or 0
local iwn = type(yyn.weekly) == _d("RwRWDwo") and #(yyn.weekly.list or {}) or 0

return tostring(yxso) .. _d("EwpSQw") .. tostring(owi) .. _d("EwFVCgMbTEEAVQcWaA")
.. tostring(meh) .. _d("EwpSQw") .. tostring(iwn) .. _d("ExJRBgQOFRMXUQILGw")
end

function kxd.misc.util.packText()
local aglu = kxd.misc.util
local yb = aglu.profile

if type(yb) ~= _d("RwRWDwo") then
return _d("YQBVBwYMCxMcWxYdQhxSBl8QQUxC")
end

local function haom(weuo)
for aitm, fpt in ipairs(aglu.packCatalog()) do
if fpt.id == weuo then
return fpt.name
end
end

return tostring(weuo)
end

local eaq = _d("YAlbF09TVhM") .. haom(yb.equippedPack)

if (tonumber(yb.packSlots) or 1) >= 2 then
eaq = eaq .. _d("OTZYDBtCXglF") .. haom(yb.equippedPack2)
else
eaq = eaq .. _d("OTZYDBtCXglFUwICBxxSFkdDAQ0YEwpDDQoG")
end

return eaq
end

function kxd.misc.util.accText()
local kou = kxd.misc.util
local zzpu = kou.profile

if type(zzpu) ~= _d("RwRWDwo") then
return _d("YQBVBwYMCxMcWxYdQg1QBlEQHA0eWgBHTUFM")
end

local hq = kou.accPicks(zzpu)
local nyir = kou.accPlan(zzpu)
local wa = _d("XQpaBg")

for kxxq, gbk in ipairs(kou.accCatalog()) do
if gbk.id == zzpu.equippedAccessory then
wa = gbk.name .. _d("E00") .. gbk.shopName .. _d("Gg")
end
end

local vnx = _d("dhRBCh8SCVdfFA") .. wa

if hq then
vnx = vnx .. _d("OSdREBtCA0QLUQdVQg") .. hq.name
end

vnx = vnx .. _d("OSRXAAoRH1wXTUM8CgNDXxQ") .. (nyir[1] and nyir[1].name or _d("XQpACwYMCxMLURQ"))
vnx = vnx .. _d("OShNEBsHHloKQRBPLw1dXxQ") .. (nyir[2] and nyir[2].name or _d("XQpACwYMCxMLURQ"))

if kou.accNote then
vnx = vnx .. _d("OSlVEBtCGEEMRFlP") .. kou.accNote
end

return vnx
end

kxd.misc.util.hook()
kxd.misc.util.askProfile()

kxd.misc.indexSection = kxd.misc.tab:Section({
Side = _d("fwBSFw"),
})

kxd.misc.indexSection:Header({
Name = _d("cARGB08rAlcATEOf/f+0"),
})

kxd.misc.indexToggle = kxd.misc.indexSection:Toggle({
Name = _d("chBADE8BAFIMWQ"),
Default = false,
Callback = function(ark)
kxd.misc.util.indexOn = ark
kxd.misc.util.indexAt = 0

kxd.misc.util.indexAsked = nil
end,
}, _d("UhBADDABAFIMWTxd"))

kxd.misc.indexSection:Button({
Name = _d("cAlVCgJCAlwS"),
Callback = function()
local clck = kxd.misc.util

clck.indexAt = 0
clck.indexAsked = nil

if not clck.claimIndex() then
ejt:Notify({
Title = _d("cARGB08rAlcATA"),
Description = _d("fQoUDgYOCUARWw0KQgVARUYGDgYVExFbQwwODVoIGg"),
Lifetime = 5,
})
end
end,
})

kxd.misc.claimSection = kxd.misc.tab:Section({
Side = _d("fwBSFw"),
})

kxd.misc.claimSection:Header({
Name = _d("cgZcCgoUCV4AWhccQkoTNEEGHBYfE5Wr7Ok"),
})

kxd.misc.achToggle = kxd.misc.claimSection:Toggle({
Name = _d("chBADE8BAFIMWUMOAQRaAEIGAgcCRxY"),
Default = false,
Callback = function(axc)
kxd.misc.util.achOn = axc
kxd.misc.util.achAt = 0

if axc and pzta.RequestAchievements then
pcall(function()
pzta.RequestAchievements:FireServer()
end)
end
end,
}, _d("UhBADDABAFIMWTwOAQRaAEIGAgcCRxY"))

kxd.misc.questToggle = kxd.misc.claimSection:Toggle({
Name = _d("chBADE8BAFIMWUMeFwlAEUc"),
Default = false,
Callback = function(rpqk)
kxd.misc.util.questOn = rpqk
kxd.misc.util.questAt = 0
kxd.misc.util.questAskedAt = 0
kxd.misc.util.weeklyAskedAt = 0

if rpqk then
kxd.misc.util.askQuests()
end
end,
}, _d("UhBADDABAFIMWTweFwlAEUc"))

kxd.misc.claimSection:Button({
Name = _d("cAlVCgJCDV8JFA0AFQ"),
Callback = function()
local ddn = kxd.misc.util

ddn.achAt = 0
ddn.questAt = 0

local lowr = ddn.claimAchievement()
local muo = ddn.claimQuest()

if not (lowr or muo) then
ejt:Notify({
Title = _d("cgZcCgoUCV4AWhccQkoTNEEGHBYf"),
Description = _d("fQpACwYMCxMMR0MdBw1XHBQXAEIPXwRdDkE"),
Lifetime = 5,
})
end
end,
})

kxd.misc.packSection = kxd.misc.tab:Section({
Side = _d("fwBSFw"),
})

kxd.misc.packSection:Header({
Name = _d("cARGB08yDVAOR0Of/eKH"),
})

kxd.misc.packSection:Paragraph({
Header = _d("ZxJbQxwOA0cW"),
Body = _d("YwxXCBxCDUMVWBpPDQJfHBQUBwcCExxbFk8SHlYWR0MuEhxfHBQTDgEHQEkUAQoBDUYWUUMbCgkTFkMKGwEEExJVDwQRTEcKFBcHB0xeAEYABwMCR0s"),
})

local waam = {}
local zwdg = {}

for dv, cwuw in ipairs(kxd.misc.util.packCatalog()) do
table.insert(waam, cwuw.name)
zwdg[cwuw.name] = cwuw.id
end

kxd.misc.packSlotOne = nil
kxd.misc.packSlotTwo = nil

kxd.misc.packDropdownOne = kxd.misc.packSection:Dropdown({
Name = _d("YAlbF09T"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = waam,
Callback = function(whep)
local iohy = type(whep) == _d("RwRWDwo") and whep[1] or whep

kxd.misc.packSlotOne = zwdg[tostring(iohy)]
end,
}, _d("QAlbFzBT"))

kxd.misc.packDropdownTwo = kxd.misc.packSection:Dropdown({
Name = _d("YAlbF09Q"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = waam,
Callback = function(ow)
local ov = type(ow) == _d("RwRWDwo") and ow[1] or ow

kxd.misc.packSlotTwo = zwdg[tostring(ov)]
end,
}, _d("QAlbFzBQ"))

kxd.misc.packSection:Button({
Name = _d("chVEDxZCHFIGXxA"),
Callback = function()
local ox = kxd.misc.util
local fbf = kxd.misc.packSlotOne
local wln = kxd.misc.packSlotTwo

if not fbf then
ejt:Notify({
Title = _d("cARGB08yDVAORw"),
Description = _d("YwxXCE8DTEMEVwhPBANBRUcPABZMAkVSCh0RGB0"),
Lifetime = 5,
})

return
end

local har, tkqb = ox.applyPacks(fbf, wln)

if not har then
ejt:Dialog({
Title = _d("cARGB08yDVAORw"),
Description = tkqb,
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})
end
end,
})

kxd.misc.cards = {
rarityLabels = { _d("cglY"), _d("fQpGDg4O"), _d("dApYBw"), _d("YQRdDQ0NGw"), _d("ZgtdFQoQH1IJ") },
borderOf = { Normal = 1, Gold = 2, Rainbow = 3, Universal = 4 },
mergeOn = false,
deconOn = false,
mergeWanted = {},
deconWanted = {},
mergeAt = 0,
deconAt = 0,
mergeDone = _d("fQpACwYMCxMWUQ0bQhVWEQ"),
deconDone = _d("fQpACwYMCxMWUQ0bQhVWEQ"),

inFlight = false,

interval = 3600,
manualGap = 20,
manualAt = 0,

protectedPrefixes = { weather = true, boss = true, raid = true, wb = true, fish = true, hw = true, event = true },

deconExceptions = { weather_sayaka = true, weather_caesar = true },

deconConfirmed = false,
burnAskedAt = 0,
}

function kxd.misc.cards.isProtected(mdm, alx)
local rla = kxd.misc.cards
local cwyd = tostring(mdm or _d(""))
local wwib = cwyd:match(_d("bU1vAkIYXB5caUhGPQ"))

if not (wwib and rla.protectedPrefixes[wwib]) then
return false
end

return not (rla.deconExceptions[cwyd] and alx == 2)
end

function kxd.misc.cards.burnAllowed(wfh)
local zgnp = kxd.misc.cards
local sutt = zgnp.wantedFor(_d("VwBXDAE1DV0RUQc"))

if not (sutt == nil or sutt[3] or sutt[4]) then
zgnp.deconConfirmed = false

return true
end

if zgnp.deconConfirmed then
return true
end

if wfh then
return false
end

if os.clock() < (zgnp.burnAskedAt or 0) then
return false
end

zgnp.burnAskedAt = os.clock() + 20

ejt:Dialog({
Title = _d("cRBGDU8wDVoLVgwYQgNBRWENBhQJQRZVD08BDUEBR1w"),
Description = _d("chBADE8GCVAKWhAbEBlQERQQCgwIQEVRFQoQFRMGWxMWQgVdRUALCkIBUhFXCwYMCxMXWxQcQg1dARQADgwCXBEUAQpCGV0BWw0KTEw")
.. _d("ZABVFwcHHh9FVgwcEUATF1UKC0IOXBZHT08VA0EJUEMNDR9ASRQFBhEEWgtTT08qDV8JWxQKBwITBFoHTwcaVgtAQwwDHlcWFAIdB0xbAFgHTwANUA4UBgYWBFYXFBQOG0I"),
Buttons = {
{
Name = _d("cRBGDU8WBFYI"),
Callback = function()
zgnp.deconConfirmed = true
zgnp.deconAt = 0
zgnp.manualAt = 0

pcall(function()
kxd.misc.deconToggle:UpdateState(true)
end)
end,
},
{
Name = _d("cARaAAoO"),
Callback = function()
pcall(function()
kxd.misc.deconToggle:UpdateState(false)
end)
end,
},
},
})

return false
end

function kxd.misc.cards.wantedFor(cng)
local njbs = kxd.misc.cards[cng] or {}

if next(njbs) == nil or njbs[0] then
return nil
end

return njbs
end

function kxd.misc.cards.npcFor(aues)
local qnqu = workspace:FindFirstChild(_d("fTV3EA"))

if not qnqu then
return nil
end

local pqd = aues and _d("VRBHBjAMHFA") or _d("VwBXDAERGEEQVxcwDBxQ")

for cmio, mye in ipairs(qnqu:GetChildren()) do
if mye:GetAttribute(_d("fTV3Kgs")) == pqd then
return mye
end
end

local htm = aues and { _d("fApECwMb"), _d("XApEDxYH") } or { _d("YA1VFgMD"), _d("ewRCBjsVA3cEUBA") }

for xgjf, wgx in ipairs(qnqu:GetChildren()) do
for lwqp, htb in ipairs(htm) do
if wgx.Name == htb then
return wgx
end
end
end

local ujx = aues and { _d("UARGB08PCUECXQ0I"), _d("XApECwMb") } or { _d("VwBXDAERGEEQVxcGDQI"), _d("QA1VFgMD") }

for ltt, mqd in ipairs(qnqu:GetChildren()) do
for dtpp, cpc in ipairs(mqd:GetDescendants()) do
if cpc:IsA(_d("ZwBMFyMDDlYJ")) and cpc.Text ~= _d("") then
local jvbg = cpc.Text:lower()

for fiz, xjio in ipairs(ujx) do
if jvbg:find(xjio, 1, true) then
return mqd
end
end

break
end
end
end

return nil
end

function kxd.misc.cards.rarityText(hgcj)
local eefr = kxd.misc.cards.wantedFor(hgcj)

if not eefr then
return _d("cglY")
end

local cgbq = {}

for udpl, hsod in pairs(kxd.misc.cards.borderOf) do
if eefr[hsod] then
table.insert(cgbq, udpl)
end
end

if #cgbq == 0 then
return _d("cglY")
end

table.sort(cgbq)

return table.concat(cgbq, _d("H0U"))
end

function kxd.misc.cards.run(ebr, pqy, ddp)
local waqp = kxd.misc.cards
local hj = kxd.misc.util
local tcqy = ebr and _d("XgBGBAojGA") or _d("VwBXDAEjGA")

if ddp then
if os.clock() < waqp[tcqy] then
return false, _d("fQpAQwsXCRMcURdB")
end
elseif os.clock() < waqp.manualAt then
return false, _d("ZARdF08DTF4KWQYBFkI")
end

if waqp.inFlight then
return false, _d("cgtbFwcHHhMGVRELQhhBDERDBhFMUglGBg4GFRMXQQ0BCwJUSw")
end

local ydf = qtw.busy(1) and 1 or (qtw.busy(2) and 2 or nil)
local jtiw = os.clock() - (rxn.floorAt or 0) < 90
local ohe = ydf ~= nil and qtw.towerSlot() == ydf and jtiw

if ydf and not ohe then
return false, _d("egsUAk8ADUcRWAZPT0xHDVFDGxAFQ0VDDBoOCBMAWgdPCxgd")
end

if xepj.battlePending and os.time() < (xepj.battlePendingUntil or 0) then
return false, _d("ckVWAhsWAFZFXRBPERhSF0AKAQVMHkVACwpCGEEMREMYDRlfARQADgwPVgkUChtM")
end

if not ebr and not waqp.burnAllowed() then
return false, _d("cApaBQYQARM3VQoBAANESmENBhQJQRZVD08EBUEWQE0")
end

local vsy = waqp.npcFor(ebr)

if not vsy then
return false, ebr
and _d("fApECwMbTFoWFA0AFkxaCxQXBwsfEwhVE09PTEcXVRUKDkxHChQLBg9MUgtQQx8QCUAWFAobQg1UBF0NQQ")
or _d("Zw1RQwsHD1wLRxcdFw9HRXozLEIFQEVaDBtCBV1FQAsGEUxeBERDQkIYQQRCBgNCGFxFXRdPAwJXRUQRChEfEwxAQw4FDVoLGg")
end

local fs = ebr and pzta.OpenFuseDialog or pzta.OpenDeconstructDialog
local hg = ebr and pzta.FuseCards or pzta.DeconstructCards

if not (fs and hg) then
return false, _d("Zw1VF08LHxMLWxdPCwITEVwKHEILUghRQxkHHkAMWw1B")
end

local ome = ebr and _d("XgBGBAo1DV0RUQc") or _d("VwBXDAE1DV0RUQc")
local sn = waqp.wantedFor(ome)

waqp.manualAt = os.clock() + waqp.manualGap

if ddp then
waqp[tcqy] = os.clock() + waqp.interval
end

waqp.inFlight = true

task.spawn(function()

local clhh = nil

local function kfno(juwr, uzf)
if ebr then
waqp.mergeDone = juwr
else
waqp.deconDone = juwr
end

if uzf and ddp then
waqp[tcqy] = os.clock() + 120
end

waqp.inFlight = false
end

local mpa = hj.visit(vsy.Name)

if not mpa then
kfno(_d("cA1VEQ4BGFYXFAocQgJcERQRCgMISkUZQx0HGEEcXQ0IQgVdRUAUAEIBWgtBFwoRQg"), true)

return
end

task.wait(0.9)

local epx = nil
local fosk = fs.OnClientEvent:Connect(function(xsz)
if type(xsz) == _d("RwRWDwo") then
epx = xsz
end
end)

for jvg = 1, 3 do
pcall(function()
fs:FireServer()
end)

for wus = 1, 20 do
if epx then
break
end

task.wait(0.3)
end

if epx then
break
end

task.wait(1.5)
end

fosk:Disconnect()
hj.returnTo(mpa)

if type(epx) ~= _d("RwRWDwo") then
kfno(_d("Zw1RQwsLDV8KU0MLCwgTC1sXTwMCQBJREU9PTEEAQBEWCwJURV0NTxYbXEVZCgEXGFYWGg"), true)

return
end

local rkz = {}

for ycxw, kzst in ipairs(epx) do
local amo = tonumber(kzst.borderLevel)
local ntz = kzst.cardId or kzst.id

if amo and (not sn or sn[amo])
and (ebr or not kxd.misc.cards.isProtected(ntz, amo)) then
table.insert(rkz, kzst)
end
end

if #rkz == 0 then

kxd.misc.cards.closeFrame(ebr)
kfno(_d("fQpACwYMCxMRW0McBwJXRVIMHUI") .. kxd.misc.cards.rarityText(ome) .. _d("HQ"))

return
end

if pqy then

local jra = {}

for tjwz, xqwa in ipairs(rkz) do
if (tonumber(xqwa.count) or 0) >= pqy then
table.insert(jra, xqwa)
end
end

if #jra == 0 then
kxd.misc.cards.closeFrame(ebr)
kfno(_d("fQoU") .. kxd.misc.cards.rarityText(ome) .. _d("ExdbFE8KDUBF") .. pqy .. _d("EwZbEwYHHxMcURdB"))

return
end

rkz = jra

table.sort(rkz, function(iy, cujb)
return (tonumber(iy.count) or 0) < (tonumber(cujb.count) or 0)
end)

local ykqw, wil = {}, 0

for alyw, oruz in ipairs(rkz) do
local mjr = tonumber(oruz.count) or 0

if #ykqw > 0 and wil + mjr > pqy then
break
end

table.insert(ykqw, oruz)
wil = wil + mjr
end

rkz = ykqw
clhh = wil
end

local bee = 0

kxd.misc.cards.closeFrame(ebr)

if ebr then
if not sn then

pcall(function()
hg:FireServer(_d("UglY"), nil)
end)

bee = #rkz
else
local pbxn = {}

for pp, mfv in ipairs(rkz) do
table.insert(pbxn, { mfv.cardId, tonumber(mfv.borderLevel) })
end

pcall(function()
hg:FireServer(_d("QABYBgwWCVc6VQ8D"), pbxn)
end)

bee = #pbxn
end
else
local ashu = {}

for wdj, eeek in ipairs(rkz) do
if #ashu >= 25 then
break
end

table.insert(ashu, { eeek.cardId, tonumber(eeek.borderLevel), _d("UglY") })
end

pcall(function()
hg:FireServer(ashu)
end)

bee = #ashu
end

kfno(_d("YABaF08") .. tostring(bee) .. _d("ExdbFA") .. (bee == 1 and _d("") or _d("QA"))
.. _d("E00") .. kxd.misc.cards.rarityText(ome) .. _d("Gg")
.. (clhh and (_d("H0U") .. tostring(clhh) .. _d("EwZVEQsR")) or _d("")))
end)

return true
end

function kxd.misc.cards.closeFrame(sbo)
pcall(function()
local iw = sbo and { _d("dRBHBigXBQ"), _d("dRBHBikQDV4A") } or { _d("dwBXDAERGEEQVxcoFwU"), _d("dwBXDAERGEEQVxcpEA1eAA") }
local niqg = require(gs.ModuleScripts.MenuManager)
local fcy = cmup:FindFirstChild(iw[1])
local slhs = fcy and fcy:FindFirstChild(iw[2])

if slhs then
niqg.close(slhs)
end

if not sbo then
local swho = fcy and fcy:FindFirstChild(_d("dwBXDAERGEEQVxc9AxhWFnIRDg8J"))

if swho then
niqg.close(swho)
else
swho = cmup:FindFirstChild(_d("dwBXDAERGEEQVxc9AxhWFnIRDg8J"))

if swho then
niqg.close(swho)
end
end
end
end)
end

function kxd.misc.cards.refresh(xhos)

local vdi = xhos and kxd.misc.mergeParagraph or kxd.misc.deconParagraph

if not vdi then
return
end

pcall(function()
vdi:UpdateBody(xhos
and kxd.misc.cards.mergeText()
or kxd.misc.cards.deconText())
end)
end

function kxd.misc.cards.mergeText()
local nis = kxd.misc.cards

return _d("YQRGChsLCUBfFA") .. nis.rarityText(_d("XgBGBAo1DV0RUQc")) .. _d("OQ") .. nis.mergeDone
end

function kxd.misc.cards.deconText()
local gpfx = kxd.misc.cards

return _d("YQRGChsLCUBfFA") .. gpfx.rarityText(_d("VwBXDAE1DV0RUQc")) .. _d("OQ") .. gpfx.deconDone
.. _d("OTJRAhsKCUFJFAEAER8fRUYCBgZAExJbEQMGTFEKRxBDQgpaFlwKAQVAEy1VDwMNG1YAWkMODAgTAEIGARZMUARGBxxCDUEAFA0KFAlBRUcGARZC")
end

kxd.misc.skill = {
on = false,
at = 0,
mainWanted = {},
raidWanted = {},

mainOrder = {},
raidOrder = {},
last = _d("fQpACwYMCxMHWxYIChgTHFEX"),
shown = _d(""),
}

function kxd.misc.skill.branchMap(uemj)
local yban = {}

for cly, yld in ipairs(dz.Trees[uemj].branches) do
yban[yld.name] = yld
end

return yban
end

function kxd.misc.skill.branchLabels(hzfa)
local uuhk = {}

for xtl, ibzo in ipairs(dz.Trees[hzfa].branches) do
table.insert(uuhk, ibzo.name)
end

return uuhk
end

function kxd.misc.skill.wantedFrom(vtao, tpdd)
local yr = {}
local fz = kxd.misc.skill.branchMap(tpdd)

if type(vtao) == _d("RwRWDwo") then
for irci, hi in pairs(vtao) do
if hi and fz[tostring(irci)] then
yr[fz[tostring(irci)].id] = true
end
end
end

return yr
end

function kxd.misc.skill.ordered(hie, gwp)
local yfd = {}
local qutv = {}

for azv, kzue in ipairs(gwp or {}) do
if hie[kzue] then
table.insert(yfd, kzue)
qutv[kzue] = true
end
end

for ymyb in pairs(hie) do
if not qutv[ymyb] then
table.insert(yfd, ymyb)
end
end

return yfd
end

function kxd.misc.skill.branchById(ufi)
local yv = {}

for wehx, yvys in ipairs(dz.Trees[ufi].branches) do
yv[yvys.id] = yvys
end

return yv
end

function kxd.misc.skill.upgrade()
local uoo = kxd.misc.skill
local cpn = kxd.misc.util
local xda = cpn.currentProfile and cpn.currentProfile()

if type(xda) ~= _d("RwRWDwo") then
return false, _d("fQoUEx0NCloJUUMWBxgd")
end

local zvht = xda.skillTrees or {}
local uihs = { [1] = uoo.mainOrder, [2] = uoo.raidOrder }
local slsg = nil

for cee, fj in ipairs(dz.Trees) do
local pnag = zvht[fj.id]
local jsvu = tonumber(xda[fj.pointsField or _d("QA5dDwMyA1oLQBA")]) or 0
local ih = kxd.misc.skill.branchById(cee)

if type(pnag) == _d("RwRWDwo") and jsvu > 0 then
for uk, gafa in ipairs(uihs[cee] or {}) do
local jq = ih[gafa]

if jq and not slsg then
local yao = dz.getBranchLevel(zvht, fj.id, jq.id) or 0
local pcx = yao + 1

if pcx <= jq.levels then
local nlf = jq.id .. pcx
local ogo = 1

if type(jq.costs) == _d("RwRWDwo") and tonumber(jq.costs[pcx]) then
ogo = tonumber(jq.costs[pcx])
elseif tonumber(jq.cost) then
ogo = tonumber(jq.cost)
end

if ogo <= jsvu and dz.isAvailable(zvht, fj.id, nlf) then
slsg = { tree = fj.id, node = nlf, name = jq.name, level = pcx }
end
end
end
end
end
end

if not slsg then
return false, _d("fQpACwYMCxMRW0MNFxUTHFEXQQ")
end

pzta.BuySkillNode:FireServer(slsg.tree, slsg.node)

if cpn.askProfile then
pcall(cpn.askProfile)
end

uoo.last = _d("cQpBBAcWTA") .. slsg.name .. _d("Ew") .. tostring(slsg.level)

return true
end

function kxd.misc.skill.text()
local xkqu = kxd.misc.skill
local who = kxd.misc.util
local ewd = who.currentProfile and who.currentProfile()

if type(ewd) ~= _d("RwRWDwo") then
return _d("YwpdDRsRVhNaPg") .. xkqu.last
end

local vaok = ewd.skillTrees or {}
local mxx = {}

local fq = { [1] = xkqu.mainOrder, [2] = xkqu.raidOrder }

for ggj, hilk in ipairs(dz.Trees) do
local baqr = tonumber(ewd[hilk.pointsField or _d("QA5dDwMyA1oLQBA")]) or 0
local yzt = {}
local sju = kxd.misc.skill.branchById(ggj)

for rxfc, omi in ipairs(fq[ggj] or {}) do
local rx = sju[omi]

if rx then
local ust = dz.getBranchLevel(vaok, hilk.id, rx.id) or 0
table.insert(yzt, rx.name .. _d("Ew") .. tostring(ust) .. _d("HA") .. tostring(rx.levels))
end
end

mxx[#mxx + 1] = hilk.name .. _d("CUU") .. tostring(baqr) .. _d("ExVAEA")
.. (#yzt > 0 and (_d("E0gU") .. table.concat(yzt, _d("H0U"))) or _d("E0gUDQAWBFoLU0MfCw9YAFA"))
end

mxx[#mxx + 1] = xkqu.last

return table.concat(mxx, _d("OQ"))
end

kxd.misc.mergeSection = kxd.misc.tab:Section({
Side = _d("fwBSFw"),
})

kxd.misc.mergeSection:Header({
Name = _d("fgBGBApCnKzCmA"),
})

kxd.misc.mergeToggle = kxd.misc.mergeSection:Toggle({
Name = _d("chBADE8PCUECUQ"),
Default = false,
Callback = function(vddy)
local aeji = kxd.misc.cards

aeji.mergeOn = vddy

aeji.mergeAt = (vddy and iv.loading) and (os.clock() + aeji.interval) or 0
end,
}, _d("UhBADDAPCUECUQ"))

kxd.misc.mergeDropdown = kxd.misc.mergeSection:Dropdown({
Name = _d("YQRGChsLCUA"),
Search = false,
Multi = true,
Required = false,
Default = { _d("cglY") },
Options = kxd.misc.cards.rarityLabels,
Callback = function(lu)
local vma = {}

if type(lu) == _d("RwRWDwo") then
for pv, ly in pairs(lu) do
if ly then
if pv == _d("cglY") then
vma[0] = true
else
vma[kxd.misc.cards.borderOf[tostring(pv)]] = true
end
end
end
end

kxd.misc.cards.mergeWanted = vma
kxd.misc.cards.refresh(true)
end,
}, _d("QQRGChsLCUA"))

kxd.misc.mergeSection:Button({
Name = _d("fgBGBApCAlwS"),
Callback = function()
local sym, grl = kxd.misc.cards.run(true)

if not sym then
ejt:Notify({
Title = _d("fgBGBAo"),
Description = grl,
Lifetime = 6,
})
end
end,
})

kxd.misc.mergeSection:Button({
Name = _d("fgBGBApCVQM"),
Callback = function()

local ykq, rprc = kxd.misc.cards.run(true, 90)

if not ykq then
ejt:Notify({
Title = _d("fgBGBApCVQM"),
Description = rprc,
Lifetime = 6,
})
end
end,
})

kxd.misc.mergeParagraph = kxd.misc.mergeSection:Paragraph({
Header = _d("YBFVFxoR"),
Body = kxd.misc.cards.mergeText(),
})

kxd.misc.accSection = kxd.misc.tab:Section({
Side = _d("YQxTCxs"),
})

kxd.misc.accSection:Header({
Name = _d("cgZXBhwRA0EMURBPkvOh6w"),
})

kxd.misc.accToggle = kxd.misc.accSection:Toggle({
Name = _d("chBADE8ACUARFAIMAQlAFlsRFg"),
Default = false,
Callback = function(whje)
kxd.misc.util.accOn = whje
kxd.misc.util.accAt = 0
end,
}, _d("UhBADDAACUARawIMAQlAFlsRFg"))

kxd.misc.accBuyToggle = kxd.misc.accSection:Toggle({
Name = _d("chBADE8AGUpFVgYcFg"),
Default = false,
Callback = function(bvao)
kxd.misc.util.accBuyOn = bvao
kxd.misc.util.accBuyAt = 0
kxd.misc.util.accAt = 0
end,
}, _d("UhBADDAAGUo6VgYcFg"))

kxd.misc.accSection:Button({
Name = _d("cRBNQw0HH0c"),
Callback = function()
local at, nz = kxd.misc.util.buyBest()

if not at then
ejt:Notify({
Title = _d("cgZXBhwRA0EMURA"),
Description = nz,
Lifetime = 6,
})
end
end,
})

kxd.misc.accSection:Button({
Name = _d("dhRBCh9CDlYWQA"),
Callback = function()
if not kxd.misc.util.equipBest() then
ejt:Notify({
Title = _d("cgZXBhwRA0EMURA"),
Description = _d("fQpACwYMCxMHURcbBx4TDEdDABUCVgEUGgoWQg"),
Lifetime = 5,
})
end
end,
})

kxd.misc.accParagraph = kxd.misc.accSection:Paragraph({
Header = _d("YBFVFxoR"),
Body = kxd.misc.util.accText(),
})

kxd.misc.claimInfo = kxd.misc.tab:Section({
Side = _d("YQxTCxs"),
})

kxd.misc.claimInfo:Header({
Name = _d("fgxHAAoOAFILUQwaEQ"),
})

kxd.misc.indexParagraph = kxd.misc.claimInfo:Paragraph({
Header = _d("cARGB08rAlcATA"),
Body = kxd.misc.util.indexText(),
})

kxd.misc.achParagraph = kxd.misc.claimInfo:Paragraph({
Header = _d("cgZcCgoUCV4AWhcc"),
Body = kxd.misc.util.achText(),
})

kxd.misc.questParagraph = kxd.misc.claimInfo:Paragraph({
Header = _d("YhBREBsR"),
Body = kxd.misc.util.questText(),
})

kxd.misc.packParagraph = kxd.misc.claimInfo:Paragraph({
Header = _d("YwRXCBw"),
Body = kxd.misc.util.packText(),
})

kxd.misc.skillSection = kxd.misc.tab:Section({
Side = _d("YQxTCxs"),
})

kxd.misc.skillSection:Header({
Name = _d("YA5dDwNCOEEAUUOf/eCA"),
})

kxd.misc.skillToggle = kxd.misc.skillSection:Toggle({
Name = _d("chBADE8XHFQXVQcK"),
Default = false,
Callback = function(lfyd)
local cpw = kxd.misc.skill

if lfyd and not (next(cpw.mainWanted) or next(cpw.raidWanted)) then
cpw.on = false

pcall(function()
kxd.misc.skillToggle:UpdateState(false)
end)

ejt:Dialog({
Title = _d("YwxXCE8DTFEXVQ0MCkxVDEYQGw"),
Description = _d("cA1bDBwHTFIRFA8KAx9HRVsNCkIOQQRaAAdCBV1FQAsKQiFSDFpDGxAJVkVbEU8wDVoBFBcdBwkTAUYMHwYDRAsUTk8")
.. _d("chBADE8XHFQXVQcKQgNdCU1DHBIJXQFHQx8NBV0RR0MYCglBABQaABdMQwpdDRtCBUdL"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})

return
end

cpw.on = lfyd
cpw.at = 0
end,
}, _d("UhBADDAXHFQXVQcK"))

kxd.misc.skillMainDropdown = kxd.misc.skillSection:Dropdown({
Name = _d("fgRdDU8WHlYA"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = kxd.misc.skill.branchLabels(1),
Callback = function(yzo)
local ygg = kxd.misc.skill
local ekvc = ygg.wantedFrom(yzo, 1)

ygg.mainWanted = ekvc
ygg.mainOrder = ygg.ordered(ekvc, ygg.mainOrder)
ygg.shown = _d("")
end,
}, _d("XgRdDTAWHlYA"))

kxd.misc.skillRaidDropdown = kxd.misc.skillSection:Dropdown({
Name = _d("YQRdB08WHlYA"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = kxd.misc.skill.branchLabels(2),
Callback = function(ljkx)
local tsq = kxd.misc.skill
local nbnw = tsq.wantedFrom(ljkx, 2)

tsq.raidWanted = nbnw
tsq.raidOrder = tsq.ordered(nbnw, tsq.raidOrder)
tsq.shown = _d("")
end,
}, _d("QQRdBzAWHlYA"))

pcall(function()
kxd.misc.skillMainDropdown:UpdateSelection({})
end)

pcall(function()
kxd.misc.skillRaidDropdown:UpdateSelection({})
end)

kxd.misc.skillParagraph = kxd.misc.skillSection:Paragraph({
Header = _d("YBFVFxoR"),
Body = kxd.misc.skill.text(),
})

task.spawn(function()
local odzu = kxd.misc.util

while lrr() do
if odzu.indexOn or odzu.achOn or odzu.questOn or odzu.accOn or odzu.accBuyOn then
odzu.currentProfile()
end

if odzu.indexOn then
odzu.claimIndex()
end

if odzu.achOn then
odzu.claimAchievement()
end

if odzu.questOn then

if os.clock() - odzu.questAskedAt > 20 or os.clock() - odzu.weeklyAskedAt > 20 then
odzu.askQuests()
end

odzu.claimQuest()
end

if odzu.accOn and os.clock() >= odzu.accAt then
odzu.accAt = os.clock() + 3
odzu.equipBest()
end

local igjo = kxd.misc.cards

if not igjo.inFlight then
if igjo.mergeOn and os.clock() >= igjo.mergeAt then
igjo.run(true, nil, true)
elseif igjo.deconOn and os.clock() >= igjo.deconAt then
igjo.run(false, nil, true)
end
end

if igjo.mergeDone ~= igjo.mergeShown then
igjo.mergeShown = igjo.mergeDone

pcall(function()
kxd.misc.mergeParagraph:UpdateBody(kxd.misc.cards.mergeText())
end)
end

if igjo.deconDone ~= igjo.deconShown then
igjo.deconShown = igjo.deconDone

pcall(function()
kxd.misc.deconParagraph:UpdateBody(kxd.misc.cards.deconText())
end)
end

local fzjg = kxd.misc.skill

if fzjg.on and os.clock() >= fzjg.at then

fzjg.at = os.clock() + 2
fzjg.upgrade()
end

local cas = kxd.misc.skill.text()

if fzjg.shown ~= cas then
fzjg.shown = cas

pcall(function()
kxd.misc.skillParagraph:UpdateBody(cas)
end)
end

if odzu.accBuyOn and os.clock() >= odzu.accBuyAt then

local uvf = odzu.buyBest()

odzu.accBuyAt = os.clock() + (uvf and 45 or 10)
end

local gphp = {
{ key = _d("WgtQBhc"), paragraph = kxd.misc.indexParagraph, value = odzu.indexText() },
{ key = _d("UgZc"), paragraph = kxd.misc.achParagraph, value = odzu.achText() },
{ key = _d("QhBREBs"), paragraph = kxd.misc.questParagraph, value = odzu.questText() },
{ key = _d("QwRXCA"), paragraph = kxd.misc.packParagraph, value = odzu.packText() },
{ key = _d("UgZX"), paragraph = kxd.misc.accParagraph, value = odzu.accText() },
}

for ayz, qmd in ipairs(gphp) do
if qmd.paragraph and odzu.shown[qmd.key] ~= qmd.value then
odzu.shown[qmd.key] = qmd.value

pcall(function()
qmd.paragraph:UpdateBody(qmd.value)
end)
end
end

task.wait(0.75)
end
end)

local fce = ry:Section({
Side = _d("YQxTCxs"),
})

fce:Paragraph({
Header = _d("dQxHCwYMCw"),
Body = _d("chBADE8kBUANFAYeFwVDFhQaABceExdbB0NCClIGURBPFgRWRUMCGwceEwRaB08BDUARR0MADExaEUdDABUCH0VACwoMTEEAUQ8cQhtbAFpDHA0BVhFcCgEFTFEMQAYcTExnNRQXAEIuUhwUExoOAEBFTQwaQg5SBl9DGw1MRw1RQw0DFRMDXREcFkATBFoHTxYEVkVAFABCKFYARAYcFkxkBEAGHUIfRAxAAAcHHxMNWw8LQhhbABQQHw0YExxbFk8VCUEAFBAbAwJXDFoETw0CExJcBgFCFVwQFAIdDwlXRUALCg9MHkVACwpCCFYARAYcFkxBDFoETwENQRddBhxCGFsAFAEGBQtWFkBDAxcPWEVWDAEXHx1vPjcHB0xADVsTTwAZShYUAgEGTFYUQQofEUxBClAQTwMCV0VWAgYWTEQMQAtPFgRWRVcCHBYfExxbFk8KDUUAGkMtFxVaC1NDAQcJVxYUFwcHTFAKQQ0bBx4TSBQBABYEEwZbDgpCCkEKWUMbCgkTI10QBwceXgRaTWVoL1IRVwsKEUxYAFETHEINExdBDQELAlRFQAIDDhUTB01DBhYJXkVVDQtCH1ITURBPCxgfRUcMTxYEVkVADBsDABMGVREdCwlARVsVChBMUQBAFAoHAhMWURAcCwNdFho"),
})

local zyc = ry:Section({
Side = _d("YQxTCxs"),
})

zyc:Header({
Name = _d("cARAAAcHHw"),
})

local dujk

dujk = zyc:Paragraph({
Header = _d("ZA1VF08bA0ZFVwIaBQRH"),
Body = fh(),
})

local jb = ry:Section({
Side = _d("YQxTCxs"),
})

jb:Header({
Name = _d("ehZYAgEGTEANWxM"),
})

jb:Toggle({
Name = _d("chBADE8BHlIDQEwNFxUTDEcPDgwIExdbBw"),
Default = false,
Callback = function(vvk)
he.island.autoRod = vvk
he.islandAt = 0
end,
}, _d("WhZYAgEGM1IQQAwwEANX"))

jb:Toggle({
Name = _d("dhRBCh9CBUAJVQ0LQh5cAQ"),
Default = false,
Callback = function(wkt)
he.island.equipRod = wkt
he.islandAt = 0
end,
}, _d("WhZYAgEGM1YUQQofPR5cAQ"))

jb:Toggle({
Name = _d("chBADE8BHlIDQEMOAQ9WFkcMHRs"),
Default = false,
Callback = function(oek)
he.island.autoAcc = oek
he.islandAt = 0
end,
}, _d("WhZYAgEGM1IQQAwwAw9QAEcQABAV"))

jb:Toggle({
Name = _d("dhRBCh9CDVAGURAcDR5K"),
Default = false,
Callback = function(hcaj)
he.island.equipAcc = hcaj
he.islandAt = 0
end,
}, _d("WhZYAgEGM1YUQQofPQ1QBlEQHA0eSg"))

local grdh

grdh = jb:Paragraph({
Header = _d("ehZYAgEGTFQAVRE"),
Body = he.shopIsland.text(),
})

local szi = ry:Section({
Side = _d("fwBSFw"),
})

szi:Header({
Name = _d("YQBWCh0WBA"),
})

he.rebirthToggle = szi:Toggle({
Name = _d("chBADE8QCVEMRhcH"),
Default = false,
Callback = function(lvtd)
he.autoRebirth = lvtd
end,
}, _d("UhBADDAQCVEMRhcH"))

he.rebirthParagraph = szi:Paragraph({
Header = _d("YBFVFxoR"),
Body = he.rebirthText(),
})

szi:Button({
Name = _d("ZzUUFwBCBUAJVQ0L"),
Callback = function()
if not he.gotoIsland() then
ejt:Notify({
Title = _d("cgdVDQsNAlYBFCocDg1dAQ"),
Description = _d("cA1VEQ4BGFYXFAocQgJcERQRCgMISkVNBhtCQRMRRhpPAwtSDFpDBgxMUkVZDAIHAkdL"),
Lifetime = 5,
})
end
end,
})

local eors

eors = szi:Toggle({
Name = _d("chBADE8rH18EWgdPKg1BAVcMHQc"),
Default = false,
Callback = function(ekef)
nu.island = ekef
nu.pending = false
nu.pendingUntil = 0
nu.paused = false
nu.gaveUp = false
nu.stoodDown = false
nu.manualPause = false

if not ekef then
return
end

if qtw.otherTowerOn(_d("WwRGBwwNHlY")) then
nu.island = false

pcall(function()
eors:UpdateState(false)
end)

pcall(function()
ejt:Dialog({
Title = _d("chBADE8rH18EWgdPKg1BAVcMHQdMXANS"),
Description = _d("Zw1RQycDAF8KQwYKDExHCkMGHUIFQEVVDx0HDVccFBEaDAJaC1NPTwMCV0VDChsKTFwLUUMcDgNHRUALCkILUghRQwAMAEpFRhYBEUxcC1FDBgwKWgtdFwpCHlwKWUMOFkxSRUAKAgdCEzFBEQFCGFsEQEMABAofRVsRTxYZQQsUDAFCLUYRW0M8DgNHRUcMTwcNUA0UFwAVCUFFUwYbEUxaEUdDABUCExZYDBtM"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})
end)

return
end

if qtw.enabled and qtw.hardcoreSlot() == nil then
nu.island = false

pcall(function()
eors:UpdateState(false)
end)

pcall(function()
ejt:Dialog({
Title = _d("chBADE8rH18EWgdPKg1BAVcMHQdMXANS"),
Description = _d("fQoUEAMNGBMMR0McBxgTEVtDDkIYXBJREUNCDV0BFBcHB0xUBFkGTw0CXxwUEBsDHkcWFAJPFgNEAEZDHRcCEwNGDAJCDRMRWxQKEExACVsXQUI/VhEUDAEHTEcKFCocDg1dARQLDhAIUApGBkNCA0FFQBYdDExyEEAMTzEAXBEUDAkEQg"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})
end)

return
end

if not nu.data then
nu.island = false

pcall(function()
eors:UpdateState(false)
end)

pcall(function()
ejt:Dialog({
Title = _d("chBADE8rH18EWgdPKg1BAVcMHQdMXANS"),
Description = _d("Zw1dEE8AGVoJUEMHAx8TC1tDJwMeVwZbEQo2A0QARicOFg0fRUcMTxYEVkVADBgHHhQWFBAbAwtWFhQADgwCXBEUAQpCHlYEUEMODAgTBBQRGgxMUARaDQAWTFEAFBAbAx5HAFBN"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})
end)

return
end

local xg = nu.remotes.request

if xg then
pcall(function()
xg:FireServer()
end)
end
end,
}, _d("UhBADDALH18EWgcwCg1BAVcMHQc"))

nu.islandToggle = eors

nu.islandParagraph = szi:Paragraph({
Header = _d("cRBSBRw"),
Body = nu.buffText(),
})

szi:Button({
Name = _d("YwRBEApCJUAJVQ0LQiRSF1AAABAJ"),
Callback = function()
if nu.pauseRun then
nu.pauseRun()
end
end,
})

szi:Button({
Name = _d("dAxCBk83HBMsRw8ODAgTLVURCwEDQQA"),
Callback = function()
if nu.giveUpRun then
nu.giveUpRun()
end
end,
})

local vfff = ry:Section({
Side = _d("fwBSFw"),
})

vfff:Header({
Name = _d("dQxHCwYMCxMWXAwf"),
})

vfff:Toggle({
Name = _d("chBADE8AGUpFVgYcFkxBClA"),
Default = false,
Callback = function(xbzz)
he.shop.autoBuyRod = xbzz
he.shopAt = 0
end,
}, _d("UhBADDAAGUo6VgYcFjNBClA"))

vfff:Toggle({
Name = _d("chBADE8AGUpFVgYcFkxRBF0X"),
Default = false,
Callback = function(vwkl)
he.shop.autoBuyBait = vwkl
he.shopAt = 0
end,
}, _d("UhBADDAAGUo6VgYcFjNRBF0X"))

vfff:Toggle({
Name = _d("dhRBCh9CDlYWQEMdDQg"),
Default = false,
Callback = function(xuy)
he.shop.equipRod = xuy
he.shopAt = 0
end,
}, _d("VhRBCh89DlYWQDwdDQg"))

vfff:Toggle({
Name = _d("dhRBCh9CDlYWQEMNAwVH"),
Default = false,
Callback = function(av)
he.shop.equipBait = av
he.shopAt = 0
end,
}, _d("VhRBCh89DlYWQDwNAwVH"))

local bpp

bpp = vfff:Paragraph({
Header = _d("cQBHF08bA0ZFVwIBQglCEF0T"),
Body = fekq(),
})
task.spawn(function()
local lfwi = dc()
local rvm = fh()
local evn = fekq()
local ons = he.shopIsland.text()

while lrr() do
local ozj = dc()

if ozj ~= lfwi then
lfwi = ozj
pcall(function()
qjo:UpdateBody(ozj)
end)
end

local xqvs = fh()

if xqvs ~= rvm then
rvm = xqvs
pcall(function()
dujk:UpdateBody(xqvs)
end)
end

local pes = fekq()

if pes ~= evn then
evn = pes
pcall(function()
bpp:UpdateBody(pes)
end)
end

local erd = he.shopIsland.text()

if erd ~= ons then
ons = erd
pcall(function()
grdh:UpdateBody(erd)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while lrr() do

if bn() and os.clock() >= (he.shopAt or 0)
and os.clock() >= (he.islandTripUntil or 0) then
he.shopAt = os.clock() + 1
pcall(lifp)
end

if he.shopIsland.active() and os.clock() >= (he.islandAt or 0)
and os.clock() >= math.max(he.shopHoldUntil or 0, he.tpHoldUntil or 0) then
he.islandAt = os.clock() + 2
pcall(he.shopIsland.run)
end

task.wait(1)
end
end)

ec:Select()

local gid = ec:Section({
Side = _d("fwBSFw"),
})

local kjlf = ec:Section({
Side = _d("YQxTCxs"),
})

local lprv = gid:Paragraph({
Header = _d("YBFVFxoR"),
Body = xe(),
})

gid:Divider()

xepj.npcToggle = gid:Toggle({
Name = _d("chBADE8sPHA"),
Default = false,
Callback = function(hdg)

if hdg and not xepj.story and #dmt() == 0 then
pcall(function()
xepj.npcToggle:UpdateState(false)
end)

ejt:Dialog({
Title = _d("chBADE8sPHBFWgYKBh8TBBQXDhALVhE"),
Description = _d("YwxXCE8DGBMJUQIcFkxcC1FDITIvEwNGDAJCGFsAFBQAEABXFhQBCg4DREkUDB1CGEYXWkMADExyEEAMTyEDXhVYBhsHTGARWxEWTExnDVERCkIFQEVaDBsKBV0CFBcAQgpaAlwXTxsJR0s"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})

return
end

xepj.enabled = hdg
end,
}, _d("UhBADDAMHFA"))

gid:Toggle({
Name = _d("ZARYCE8WAxMrZCA"),
Default = false,
Callback = function(pgv)
xepj.walkToNpc = pgv
end,
}, _d("RARYCDAWA2wLRAA"))

gid:Dropdown({
Name = _d("dwxSBQYBGV8RTQ"),
Search = false,
Multi = true,
Required = false,
Default = { _d("fQpGDg4O") },
Options = wb,
Callback = function(vzel)
local fyf = {}

if type(vzel) == _d("RwRWDwo") then
for vyl, bt in ipairs(wb) do
if vzel[bt] then
table.insert(fyf, wues[bt])
end
end
end

if #fyf == 0 then
fyf = { _d("XQpGDg4O") }
end

xepj.difficulties = fyf
end,
}, _d("VwxSBQYBGV8RTQ"))

gid:Toggle({
Name = _d("chBADE8wA1wIRw"),
Default = false,
Callback = function(zuh)
hx.enabled = zuh
hx.inBattle = false
hx.pending = false
end,
}, _d("UhBADDAQA1wIRw"))

local km = ec:Section({
Side = _d("fwBSFw"),
})

km:Header({
Name = _d("YAlbFw"),
})

km:Paragraph({
Header = _d("ewpDQxsKCRMWWAwbEUxECkYI"),
Body = _d("YAlbF09TTB5FfQ0JCwJaEU1DOw0bVhcUSwENHl4EWEMAEEx9DFMLGw8NQQAdQwAQTHsEWA8AFQlWCxQ3ABUJQUkUEwMXHxMrZCBPAA1HEVgGHEIbWwBaQxwOA0dFBkMGEUxREEcaQWhmYAlbF09QTB5FejMsEUATF1UKCxFAExdbDAIRQBMsRw8ODAgTLVURCwEDQQAaaWUgA0cNFBADDRhARVsNTyw8cEVWAhsWAFYWDkMbFQMTK2QgTwQJUhFBEQoRTFIRFAwBAQkfRVUNC0INExdVCgtCDlwWR0MKAw9bSz5pOxUDExFbFAoQTEEQWhBPCx8TEVwGTw0CXxwUEQoEGUAAUEMfAwVBRRlDJhEAUgtQQycDHlcGWxEKQgNdRVYMGwpMQAlbFxxCBUBFWw0KQh5GCxQCHAkJV0VSDB1CGEQMVwZBaGZgCVsXHEIDVQMOQwAMCRMWWAwbTkxHCkMGHRFMRwRfBk8WGUELR00"),
})

qtw.toggle = km:Toggle({
Name = _d("chBADE8xAFwR"),
Default = false,
Callback = function(kim)
if kim and qtw.role[1] == qtw.role[2] and qtw.role[1] ~= _d("XRVX") then
qtw.enabled = false

pcall(function()
qtw.toggle:UpdateState(false)
end)

ejt:Dialog({
Title = _d("chBADE8xAFwR"),
Description = _d("YAlbF09TTFILUEM8DgNHRQZDDhAJEwdbFwdC") .. qtw.roleLabel(1) .. _d("HUVgCw4WTFoWFAwBB0xBEFpDDhEHVgEUBQAQTEcSXQAKTkxAChQMAQdMXAMUFwcHTEcSW0McDgNHFhQLDhFMRwoUAQpCH1wIURcHCwJURVEPHAdC"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})

return
end

qtw.enabled = kim

if kim then
qtw.hasSlot2 = qtw.detectSlot2()

if qtw.hasSlot2 == false then
ejt:Dialog({
Title = _d("chBADE8xAFwR"),
Description = _d("YAlbF09QTF8KWwgcQgBcBl8GC0JBEwxAQwEHCVcWFBcHB0x3EFUPTyANRxFYBk8xAFwRFAQODwlDBEcQQ0IDQUV9DQkLAloRUUM9DQNeRQZWX0IPXwBVEQoGQBMHUQUAEAkTEVwGTxEJUApaB08RAFwRFAAODExRBEAXAwdCEzdbFhsLAlRFRxcOGx8TClpDHA4DR0UFQxoMGFoJFBcHBwId"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})
end
end
end,
}, _d("UhBADDARAFwR"))

function qtw.applyRoles()
if not qtw.enabled then
return
end

if qtw.role[1] == qtw.role[2] and qtw.role[1] ~= _d("XRVX") then
qtw.enabled = false

pcall(function()
qtw.toggle:UpdateState(false)
end)

pcall(function()
ejt:Dialog({
Title = _d("chBADE8xAFwRFAwJBA"),
Description = _d("YAlbF09TTFILUEM8DgNHRQZDDhAJEwdbFwdC") .. qtw.roleLabel(1) .. _d("HUVgCw4WTFoWFAwBB0xBEFpDDhEHVgEUBQAQTEcSXQAKTkxSC1BDBhZMUARaDQAWTEcEXwZPFhtcRUcPABYfHUVnBhtCA10AFBADDRgTEVtDHA0BVhFcCgEFTFYJRwZB"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})
end)

return
end

local bjr = {}

if qtw.towerSlot() ~= 1 and rxn.enabled then
rxn.enabled = false
table.insert(bjr, _d("chBADE82A0QARg"))

pcall(function()
rxn.ui:UpdateState(false)
end)
end

if qtw.hardcoreSlot() == nil and nu.island then
nu.island = false
table.insert(bjr, _d("chBADE8rH18EWgdPKg1BAVcMHQc"))

pcall(function()
nu.islandToggle:UpdateState(false)
end)
end

if qtw.halloweenSlot() == nil and vpex.run.enabled then
vpex.run.enabled = false
table.insert(bjr, _d("chBADE8qDV8JWxQKBwITMVsUChA"))

pcall(function()
vpex.toggle:UpdateState(false)
end)
end

if #bjr > 0 then
pcall(function()
ejt:Dialog({
Title = table.concat(bjr, _d("EwRaB08")) .. _d("EwpSBQ"),
Description = _d("fQoUEAMNGBMMR0McBxgTEVtDGwoNR0VADBgHHhMEWhpPDwNBABhDHA1MWhEUCw4GTF0KQwsKEAkTEVtDHRcCHUVzChkHTFoRFAJPEQBcERQCCAMFXUkUDB1CGEYXWkMuFxhcRWcPABZMXANSTQ"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})
end)
end
end

qtw.oneDropdown = km:Dropdown({
Name = _d("YAlbF09T"),
Search = false,
Multi = false,
Required = false,

Default = 1,
Options = qtw.optionsFor[1],
Callback = function(egnf)
local egt = type(egnf) == _d("RwRWDwo") and egnf[1] or egnf

if type(egt) == _d("QBFGCgEF") and qtw.roleIds[egt] then
qtw.role[1] = qtw.roleIds[egt]
qtw.picked[1] = egt
end

pcall(function()
qtw.oneDropdown:UpdateName(_d("YAlbF09TTNHllkM") .. qtw.roleLabel(1))
end)

if qtw.applyRoles then
qtw.applyRoles()
end
end,
}, _d("QAlbFzBTMwE"))

qtw.twoDropdown = km:Dropdown({
Name = _d("YAlbF09Q"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = qtw.optionsFor[2],
Callback = function(qfct)
local mht = type(qfct) == _d("RwRWDwo") and qfct[1] or qfct

if type(mht) == _d("QBFGCgEF") and qtw.roleIds[mht] then
qtw.role[2] = qtw.roleIds[mht]
qtw.picked[2] = mht
end

pcall(function()
qtw.twoDropdown:UpdateName(_d("YAlbF09QTNHllkM") .. qtw.roleLabel(2))
end)

if qtw.applyRoles then
qtw.applyRoles()
end
end,
}, _d("QAlbFzBQMwE"))

pcall(function()
qtw.oneDropdown:UpdateSelection(_d("ZwpDBh0"))
end)

pcall(function()
qtw.twoDropdown:UpdateSelection(_d("fTV3Qw0DGEcJURA"))
end)

getgenv().ACBXSlot = qtw

local jlfp = ec:Section({
Side = _d("fwBSFw"),
})

jlfp:Header({
Name = _d("YQRdB08AA0AW"),
})

jlfp:Toggle({
Name = _d("chBADE8wDVoBFCEAER8"),
Default = false,
Callback = function(gxyq)
kxd.enabled = gxyq
kxd.pending = {}
kxd.pendingUntil = {}

if gxyq then
kxd.cleared = {}
end
end,
}, _d("UhBADDAQDVoBawEAER8"))

jlfp:Toggle({
Name = _d("chBADE81DV8OFBcAQj5SDFBDLQ0fQA"),
Default = false,
Callback = function(cxes)
kxd.walkToBoss = cxes
end,
}, _d("UhBADDAVDV8OaxcAPR5SDFA8DQ0fQA"))

local rchi
rchi = jlfp:Slider({
Name = _d("ZARYCE8xHFYAUA"),
Minimum = 0,
Maximum = 72,
Default = 18,
Precision = 0,
Callback = function(iocf)
local lzc = math.floor(iocf + 0.5)
kxd.walkSpeed = lzc

if rchi and lzc ~= iocf then
rchi:UpdateValue(lzc)
end
end,
}, _d("RARYCDARHFYAUA"))

jlfp:Dropdown({
Name = _d("YQRdB08mBVUDXQAaDhhK"),
Search = false,
Multi = true,
Required = false,
Default = { _d("fQpGDg4O") },
Options = lze,
Callback = function(xkw)
local esid = {}

if type(xkw) == _d("RwRWDwo") then
for ffr, pav in ipairs(lze) do
if xkw[pav] then
table.insert(esid, nwd[pav])
end
end
end

if #esid == 0 then
esid = { _d("XQpGDg4O") }
end

kxd.difficulties = esid
end,
}, _d("QQRdBzAGBVUDXQAaDhhK"))

function kxd.pickedIds(mcv)
local hxsp = {}

if type(mcv) == _d("RwRWDwo") then
for xzu, odlz in ipairs(fy) do
if mcv[odlz] and qgot[odlz] then
table.insert(hxsp, qgot[odlz])
end
end
elseif type(mcv) == _d("QBFGCgEF") and qgot[mcv] then
hxsp = { qgot[mcv] }
end

return hxsp
end

jlfp:Dropdown({
Name = _d("YQRdB08gA0AW"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = fy,
Callback = function(okos)
kxd.picks[1] = kxd.pickedIds(okos)
kxd.cursor[1] = 1
kxd.losses[1] = {}
end,
}, _d("QQRdBzAAA0AW"))

kxd.boss2Dropdown = jlfp:Dropdown({
Name = _d("YQRdB08gA0AWFEs8DgNHRQZK"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = fy,
Callback = function(rbnh)
kxd.picks[2] = kxd.pickedIds(rbnh)
kxd.cursor[2] = 1
kxd.losses[2] = {}
end,
}, _d("QQRdBzAAA0AWaxADDRhsVw"))

pcall(function()
kxd.boss2Dropdown:SetVisibility(false)
end)

task.spawn(function()
local zac = nil

while lrr() do
local ilj = qtw.splitNpc()

if ilj ~= zac then
zac = ilj

local fccl = kxd.boss2Dropdown

if fccl then
pcall(function()
fccl:SetVisibility(ilj)
end)
end
end

task.wait(0.5)
end
end)

kjlf:Paragraph({
Header = _d("chBADE8kBVQNQA"),
Body = _d("YABYBgwWTFwLUUMAEExeCkYGTyw8cBYUBR0NARMRXAZPFQNBCVAQTwAJXwpDTQ"),
})

for vbci, sur in ipairs(fao) do
kjlf:Dropdown({
Name = sur.name,
Search = true,
Multi = true,
Required = false,
Default = {},
Options = sur.options,
Callback = function(srff)
local dqm = {}

if type(srff) == _d("RwRWDwo") then
if srff.All then
for ooe, zgo in ipairs(sur.ids) do
table.insert(dqm, zgo)
end
else
for xfd, xti in ipairs(sur.options) do
if srff[xti] and sur.byName[xti] then
table.insert(dqm, sur.byName[xti])
end
end
end
elseif type(srff) == _d("QBFGCgEF") then
if srff == _d("cglY") then
for ooa, xnhg in ipairs(sur.ids) do
table.insert(dqm, xnhg)
end
else
dqm = { sur.byName[srff] }
end
end

xepj.selectedByWorld[sur.name] = dqm
end,
}, _d("XRVXPA") .. sur.id)
end

kjlf:Toggle({
Name = _d("chBADE8hA14VWAYbB0xgEVsRFg"),
Default = false,
Callback = function(yhk)
xepj.story = yhk
xepj.battlePending = false
xepj.battlePendingUntil = 0
end,
}, _d("UhBADDABA14VWAYbBzNAEVsRFg"))

xepj.storyDropdown = kjlf:Dropdown({
Name = _d("dwxSBQYBGV8RXQYc"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = wb,
Callback = function(mscu)
local odjv = type(mscu) == _d("RwRWDwo") and mscu[1] or mscu

if type(odjv) == _d("QBFGCgEF") and wues[odjv] then
xepj.storyDifficulty = wues[odjv]
end
end,
}, _d("VwxSBQYBGV8RXQYc"))

pcall(function()
xepj.storyDropdown:UpdateSelection(wb[1])
end)

pcall(function()
xepj.storyDropdown:UpdateName(_d("dwxSBQYBGV8RXQYcQo6zxxQ") .. wb[1])
end)

kjlf:Paragraph({
Header = _d("ewpDQy4XGFxFdwwCEgBWEVFDPBYDQRwUFAAQB0A"),
Body = _d("dQxTCxsRTFYTUREWQh9HCkYaTyw8cEUZQyEDAVYOFBcHEANGAlxDJhEJWARdQ0JCA11FQAsKQgNdABQHBgQKWgZBDxsbTFIHWxUKTkxECkYIBgwLExFcBk8DHlYER0MGDExcF1AGHUINXQEUAAAPBV0CFAEOAQcTF1sWAQZMUhYUAAANAFcKQw0cQg9fAFURQWhmehEUEQoSAFIGURBPFgRWRVURCgNMVxdbEwsNG10WFBQHCwBWRV0XTwsfEwpaT08DAldFWAYOFAlARUYCBgZMUQpHEAoRTFIJWw0KTA"),
})

local ivi = jsi:Section({
Side = _d("fwBSFw"),
})

ivi:Header({
Name = _d("ZwpDBh0"),
})

local rje
local kkjk

local ryhg = {
remotes = {},
watcher = false,
hidMenu = false,

hardWatch = {},
}

pcall(function()
local hmyu = getgenv().ACBXHardWatch

if type(hmyu) == _d("RwRWDwo") then
for ugsm, rl in pairs(hmyu) do
pcall(function()
if rl.Connected then
rl:Disconnect()
end
end)
end
end

getgenv().ACBXHardWatch = ryhg.hardWatch
end)

function ryhg.hardPick(ts)
ts = ts == true

for eqkk, ncm in ipairs({ _d("cQRAFwMHK0YM"), _d("cQRAFwMHK0YMBg") }) do
local wng = cmup:FindFirstChild(ncm)

if wng then
if wng:GetAttribute(_d("ZwpDBh0qDUEBZAoMCQ")) ~= ts then
pcall(function()
wng:SetAttribute(_d("ZwpDBh0qDUEBZAoMCQ"), ts)
end)
end

if wng:GetAttribute(_d("ZwpDBh0qDUEBZhYB")) ~= nil and wng:GetAttribute(_d("ZwpDBh0qDUEBZhYB")) ~= ts then
pcall(function()
wng:SetAttribute(_d("ZwpDBh0qDUEBZhYB"), ts)
end)
end
end
end
end

function ryhg.pinMode()
if not (rxn.enabled or rxn.nightmare) then
return
end

local epke = rxn.nightmare == true

for gbqy, umeq in ipairs({ _d("cQRAFwMHK0YM"), _d("cQRAFwMHK0YMBg") }) do
local chn = cmup:FindFirstChild(umeq)

if chn then
if chn:GetAttribute(_d("ZwpDBh0qDUEBZAoMCQ")) ~= epke then
pcall(function()
chn:SetAttribute(_d("ZwpDBh0qDUEBZAoMCQ"), epke)
end)
end

local kgdt = ryhg.hardWatch[chn]

if kgdt and kgdt.Connected == false then
ryhg.hardWatch[chn] = nil
kgdt = nil
end

if kgdt == nil then
local tpo, bna = pcall(function()
return chn:GetAttributeChangedSignal(_d("ZwpDBh0qDUEBZAoMCQ")):Connect(function()
if not (rxn.enabled or rxn.nightmare) then
return
end

local iun = rxn.nightmare == true

if chn.Parent and chn:GetAttribute(_d("ZwpDBh0qDUEBZAoMCQ")) ~= iun then
pcall(function()
chn:SetAttribute(_d("ZwpDBh0qDUEBZAoMCQ"), iun)
end)
end
end)
end)

if tpo then
ryhg.hardWatch[chn] = bna
end
end
end
end
end

function ryhg.pauseRows()
local exe = vr:FindFirstChild(_d("YwlVGgoQK0YM")) and vr.PlayerGui:FindFirstChild(_d("YABAFwYMC0AiQQo"))

if not exe then
return nil, nil
end

return exe:FindFirstChild(_d("YwRBEAorAlUMWgobByVdFUEX"), true), exe:FindFirstChild(_d("YwRBEAorAlUMWgobBy9bAFcI"), true)
end

function ryhg.pauseState()
local lgcy = vr:FindFirstChild(_d("YwlVGgoQK0YM")) and vr.PlayerGui:FindFirstChild(_d("YABAFwYMC0AiQQo"))
local ogio = lgcy and lgcy:FindFirstChild(_d("dABAMAoWGFoLUxA"), true)

if not ogio then
return nil
end

local erxb, ipv = pcall(function()
return ogio:Invoke()
end)

if erxb and type(ipv) == _d("RwRWDwo") then
return ipv.pauseInfiniteEnabled == true
end

return nil
end

function ryhg.pauseAt(kpr, psmq)
psmq = math.max(1, math.floor(tonumber(psmq) or 1))

local gncn, cb = ryhg.pauseRows()

if not (gncn and cb) then
return false
end

local ujd = pcall(function()
if tonumber(gncn.Text) ~= psmq then
gncn.Text = tostring(psmq)

if getconnections then
for jm, qgea in ipairs(getconnections(gncn.FocusLost)) do
pcall(function()
qgea:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end
end)

if kpr ~= nil then
local kqak = ryhg.pauseState()

if kqak ~= nil and kqak ~= kpr and getconnections then
pcall(function()
for hjh, exc in ipairs(getconnections(cb.MouseButton1Click)) do
pcall(function()
exc:Fire()
end)
end
end)
end
end

return ujd
end

function ryhg.restorePause()
wu.triggered = false

if wu.enabled and wu.floor > 0 then
ryhg.pauseAt(true, wu.floor)

pcall(function()
pzta.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = wu.floor,
})
end)

return
end

pcall(function()
pzta.SaveClientData:FireServer({
pauseInfiniteEnabled = false,
pauseInfiniteAt = 1,
})
end)

ryhg.pauseAt(false, 1)
end

function ryhg.remote(ckqq)
local hghq = ryhg.remotes[ckqq]

if hghq and hghq.Parent then
return hghq
end

local atlk = gs:FindFirstChild(_d("YQBZDBsHHw"))
local zwkl = atlk and atlk:FindFirstChild(ckqq)

if zwkl then
ryhg.remotes[ckqq] = zwkl
end

return zwkl
end

function ryhg.historyOpen()
for ahk, zhdq in ipairs({ _d("cQRAFwMHK0YM"), _d("cQRAFwMHK0YMBg") }) do
local vdu = cmup:FindFirstChild(zhdq)
local kqq = vdu and vdu:FindFirstChild(_d("ZwpDBh0qBUARWxEWJB5SCFE"))

if kqq and kqq.Visible then
return true
end
end

return false
end

function ryhg.generationOpen()
local geq = cmup:FindFirstChild(_d("ZwpDBh0wCUAQWBcoFwU"))
local buxv = geq and geq:FindFirstChild(_d("YQBHFgMWKkEEWQY"))

return buxv ~= nil and buxv.Visible
end

function ryhg.standDown(kgl)
if not ryhg.hidMenu then
local xhgb = true

pcall(function()
xhgb = ejt:GetState() ~= false
end)

if xhgb then
ryhg.hidMenu = true

pcall(function()
ejt:SetState(false)
end)
end
end

if ryhg.watcher then
return
end

ryhg.watcher = true

task.spawn(function()

local sklv = os.clock() + 6

while lrr() and os.clock() < sklv and not kgl() do
task.wait(0.2)
end

while lrr() and kgl() do
task.wait(0.4)
end

ryhg.watcher = false

if ryhg.hidMenu then
ryhg.hidMenu = false

pcall(function()
ejt:SetState(true)
end)
end
end)
end

rxn.floorAt = 0
rxn.battleAt = 0
rxn.floor = nil
rxn.manualPause = false

task.spawn(function()
local ertx = aam(_d("cQRAFwMHOUMBVRcK"))
local zfpg = aam(_d("YBxaADsNG1YXcg8ADR4"))
local ema = aam(_d("cQRAFwMHKV0B"))
local mkgy = aam(_d("ZwpDBh0wGV0gWgcKBg"))

if ertx then
ertx.OnClientEvent:Connect(function()
rxn.battleAt = os.clock()
end)
end

if zfpg then
zfpg.OnClientEvent:Connect(function(tks)
rxn.floorAt = os.clock()

if type(tks) == _d("XRBZAQoQ") and tks > 1 then
rxn.floor = tks
else
rxn.floor = nil
end
end)
end

if ema then
ema.OnClientEvent:Connect(function(bjjj)
if type(bjjj) == _d("RwRWDwo") and bjjj.mode == _d("RwpDBh0") then
rxn.floorAt = os.clock()
end
end)
end

if mkgy then
mkgy.OnClientEvent:Connect(function()

rxn.lastRunEnded = {
clock = os.clock(),
floor = rxn.floor,
}

task.delay(1, function()
local iua = cmup:FindFirstChild(_d("ZwpDBh0wCUAQWBcoFwU"))
local ibkw = iua and iua:FindFirstChild(_d("YQBHFgMWKkEEWQY"))
local dkv = {}

if ibkw then
for bx, vfpv in ipairs(ibkw:GetDescendants()) do
if vfpv:IsA(_d("ZwBMFyMDDlYJ")) and vfpv.Visible and vfpv.Text ~= _d("") and #dkv < 12 then
dkv[#dkv + 1] = vfpv.Text
end
end
end

if rxn.lastRunEnded then
rxn.lastRunEnded.texts = table.concat(dkv, _d("ExkU"))
end
end)

rxn.floorAt = 0
rxn.battleAt = 0
rxn.floor = nil

if rxn.manualPause then
ryhg.restorePause()
end
end)
end

end)

local function yxqv()
local osv = os.clock()

if osv - (rxn.floorAt or 0) < 90 and osv - (rxn.battleAt or 0) < 12 then
return true
end

for avm, mun in ipairs({ _d("cQRAFwMHK0YM"), _d("cQRAFwMHK0YMBg") }) do
local apiw = cmup:FindFirstChild(mun)

if apiw then

local eork = apiw:FindFirstChild(_d("ZwpDBh0kAFwKRi8OAAlf"))

if eork and eork.Visible then
return true
end

local aulc = apiw:FindFirstChild(_d("dQlbDB0xD0EAUQ0"))

if aulc and aulc.Visible then
return true
end

local idjv = apiw:FindFirstChild(_d("cQRAFwMHP1AXUQYB"))

if idjv and idjv.Visible then
local acxt = idjv:FindFirstChild(_d("YhBdAAQlBUUAYRMtFxhHClo"))

if acxt and acxt.Visible then
return true
end
end
end
end

return false
end

function ryhg.hardNow()

local vlq = cmup:FindFirstChild(_d("cQRAFwMHK0YM"))
local irao = vlq and vlq:GetAttribute(_d("ZwpDBh0qDUEBZAoMCQ"))

if irao ~= nil then
return irao == true
end

local rotp = kxd.misc.util.profile

return type(rotp) == _d("RwRWDwo") and rotp.lastTowerHard == true
end

function ryhg.endIfWrongMode(gtdz)
if not yxqv() or ryhg.hardNow() == (gtdz == true) then
return false
end

pcall(function()
if type(kkjk) == _d("VRBaABsLA10") then
kkjk()
else
pzta.EndTowerRemote:FireServer(1)
end
end)

rxn.floor = nil

return true
end

function ryhg.hardPickNow()
for ardv, uoy in ipairs({ _d("cQRAFwMHK0YM"), _d("cQRAFwMHK0YMBg") }) do
local yrjn = cmup:FindFirstChild(uoy)
local rid = yrjn and yrjn:GetAttribute(_d("ZwpDBh0qDUEBZAoMCQ"))

if rid ~= nil then
return rid == true
end
end

return nil
end

function ryhg.parked()
for hni, ssyu in ipairs({ _d("cQRAFwMHK0YM"), _d("cQRAFwMHK0YMBg") }) do
local niw = cmup:FindFirstChild(ssyu)

if niw then
local hya = niw:FindFirstChild(_d("ZwpDBh0kAFwKRi8OAAlf"))
local bkfx = niw:FindFirstChild(_d("dQlbDB0xD0EAUQ0"))
local wwhb = niw:FindFirstChild(_d("cQRAFwMHP1AXUQYB"))

if hya and hya.Visible
and not (bkfx and bkfx.Visible)
and not (wwhb and wwhb.Visible) then
return true
end
end
end

return false
end

rxn.ui = ivi:Toggle({
Name = _d("chBADE82A0QARg"),
Default = false,
Callback = function(xao)

if rxn.quiet then
return
end

rxn.enabled = xao
rxn.pending = false
rxn.pendingUntil = 0

if xao then

if qtw.enabled and qtw.role[1] ~= _d("RwpDBh0") then
rxn.enabled = false

pcall(function()
rxn.ui:UpdateState(false)
end)

pcall(function()
ejt:Dialog({
Title = _d("chBADE82A0QARkMABAo"),
Description = _d("YAlbF09TTFoWFBAKFkxHChQ") .. qtw.roleName(1) .. _d("HUVgCwpCJV0DXQ0GFhUTJlUQGw4JEwpaDxZCH0cERhccQgNdRUcPABZMAkkUEABCH1YRFDADDRgTVBQXAEI4XBJREU8EBUEWQE0"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})
end)

return
end

if qtw.otherTowerOn(_d("RwpDBh0")) then
rxn.enabled = false

pcall(function()
rxn.ui:UpdateState(false)
end)

pcall(function()
ejt:Dialog({
Title = _d("chBADE82A0QARkMABAo"),
Description = _d("cgtbFwcHHhMRWxQKEExSEEAMAgMYWgpaQwYRTFIJRgYOBhUTClpPTwMCV0VACwYRTFIGVwwaDBgTCloPFkINXwlbFBxCA10AFBcAFQlBRUYWAUINR0VVQxsLAVZLFDcaEAITEVwCG0IDXQAUDAkETFUMRhAbTkxcFxQXGhACEwpaQy4XGFxFZw8AFkxAChQGDgEEExZYDBtCC1YRR0MGFh8TCkMNTxYDRABGTQ"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})
end)

return
end

rxn.nightmare = false

pcall(function()
rxn.quiet = true
rxn.nightmareToggle:UpdateState(false)
rxn.quiet = false
end)

rxn.manualPause = false
rxn.paused = false
ryhg.restorePause()
rxn.pauseArmed = false

ryhg.endIfWrongMode(false)
ryhg.hardPick(false)

return
end

if not yxqv() then
return
end

rxn.paused = true
local nryl = rje()

ejt:Notify({
Title = _d("chBADE82A0QARkMABAo"),
Description = nryl and _d("ZwpDBh1CHkYLFBMOFx9WARo") or _d("YRBaQwYRTF8MQgZDQg5GERQNAEIOQQBVCE8AGUcRWw1PBANGC1BN"),
Lifetime = 5,
})
end,
}, _d("UhBADDAWA0QARg"))

rxn.nightmareToggle = ivi:Toggle({
Name = _d("chBADE8sBVQNQA4OEAkTMVsUChA"),
Default = false,
Callback = function(ofp)
if rxn.quiet then
return
end

rxn.nightmare = ofp

if not ofp then

rxn.enabled = false
rxn.pending = false
rxn.pendingUntil = 0

ryhg.hardPick(false)

pcall(function()
rxn.quiet = true
rxn.ui:UpdateState(false)
rxn.quiet = false
end)

if yxqv() then
rxn.paused = true
local iii = rje()

ejt:Notify({
Title = _d("chBADE8sBVQNQA4OEAkTMVsUChBMXANS"),
Description = iii and _d("fQxTCxsPDUEAFBEaDExDBEEQCgZC") or _d("YRBaQwYRTF8MQgZDQg5GERQNAEIOQQBVCE8AGUcRWw1PBANGC1BN"),
Lifetime = 5,
})
end

return
end

if qtw.enabled and qtw.role[1] ~= _d("RwpDBh0") then
rxn.nightmare = false

pcall(function()
rxn.quiet = true
rxn.nightmareToggle:UpdateState(false)
rxn.quiet = false
end)

pcall(function()
ejt:Dialog({
Title = _d("chBADE8sBVQNQA4OEAkTMVsUChBMXANS"),
Description = _d("fQxTCxsPDUEAFDcAFQlBRVcMGgwYQEVVEE82A0QARkMGDExACVsXT1NAEwRaB08bA0YXFBADDRgTVBQKHEIDXUU") .. qtw.roleName(1) .. _d("ExddBAcWTF0KQ01PMQlHRUcPABZMAkVADE82A0QARkMJCx5AERo"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})
end)

return
end

pcall(function()
rxn.quiet = true
rxn.ui:UpdateState(false)
rxn.quiet = false
end)

rxn.enabled = true
rxn.manualPause = false
rxn.paused = false

ryhg.restorePause()
rxn.pauseArmed = false

ryhg.endIfWrongMode(true)
ryhg.hardPick(true)

rxn.pending = false
rxn.pendingUntil = 0
end,
}, _d("UhBADDAMBVQNQA4OEAlsEVsUChA"))

ivi:Header({
Name = _d("chBADE8yDUYWUUM7DRtWFw"),
})

local gqnp

gqnp = ivi:Toggle({
Name = _d("chBADE8yDUYWUUMpDgNcFw"),
Default = false,
Callback = function(qne)
wu.triggered = false

if qne and wu.floor <= 0 then
wu.enabled = false

pcall(function()
gqnp:UpdateState(false)
end)

pcall(function()
pzta.SaveClientData:FireServer({ pauseInfiniteEnabled = false })
end)

ejt:Dialog({
Title = _d("chBADE8yDUYWUUMpDgNcFw"),
Description = _d("YABAQw5CHFIQRwZPBABcCkZDDgADRQAUU08EBUEWQENCQi1GEVtDPwMZQAAUNwAVCUFFWgYKBh8TEVtDBAwDREVDCwoQCRMRW0McFgNDSw"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})

return
end

wu.enabled = qne

pcall(function()
pzta.SaveClientData:FireServer({
pauseInfiniteEnabled = qne,
pauseInfiniteAt = wu.floor,
})
end)
end,
}, _d("UhBADDASDUYWUTwJDgNcFw"))

ivi:Input({
Name = _d("YwRBEApCDUdFUg8ADR4"),
Placeholder = _d("VktTTU9XXA"),
AcceptedCharacters = _d("fRBZAQoQHw"),
Callback = function(twj)
local xyb = tonumber(twj) or 0

if xyb < 0 then
xyb = 0
end

if xyb == wu.floor then
return
end

wu.floor = xyb
wu.triggered = false

if xyb <= 0 and wu.enabled then
wu.enabled = false

pcall(function()
gqnp:UpdateState(false)
end)
end

pcall(function()
pzta.SaveClientData:FireServer({
pauseInfiniteAt = xyb,
pauseInfiniteEnabled = wu.enabled,
})
end)
end,
}, _d("QwRBEAo9DUc6Ug8ADR4"))

ivi:Button({
Name = _d("YwRBEApCOFwSURE"),
Callback = function()
local ijum = false

pcall(function()
ijum = rje()
end)

if ijum then

rxn.manualPause = true
return
end

ejt:Dialog({
Title = _d("YwRBEApCOFwSURE"),
Description = _d("fQoUDwYUCRMRWxQKEExBEFpDGw1MQwRBEApCHloCXBdPDANESw"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})
end,
})

ivi:Header({
Name = _d("chBADE8lBUUAFDYf"),
})

klq.toggle = ivi:Toggle({
Name = _d("chBADE8lBUUAFDYf"),
Default = false,
Callback = function(lja)
klq.triggered = false

if lja and klq.floor <= 0 then
klq.enabled = false

pcall(function()
klq.toggle:UpdateState(false)
end)

ejt:Dialog({
Title = _d("chBADE8lBUUAFDYf"),
Description = _d("YABAQw5CC1oTUUMaEkxVCVsMHUINUQpCBk9STFUMRhAbQkETJEEXAEIrWhNRQzoSTF0AUQccQhhcRV8NABVMRA1REQpCGFxFRxcAEkI"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})

return
end

klq.enabled = lja
end,
}, _d("UhBADDAFBUUAaxYf"))

ivi:Input({
Name = _d("dAxCBk8XHBMKWkMJDgNcFw"),
Placeholder = _d("VktTTU9VXA"),
AcceptedCharacters = _d("fRBZAQoQHw"),
Callback = function(wlb)
local ogzs = tonumber(wlb) or 0

if ogzs < 0 then
ogzs = 0
end

if ogzs == klq.floor then
return
end

klq.floor = ogzs
klq.triggered = false

if ogzs <= 0 and klq.enabled then
klq.enabled = false

pcall(function()
klq.toggle:UpdateState(false)
end)
end
end,
}, _d("VAxCBjAXHGwKWjwJDgNcFw"))

klq.weatherToggle = ivi:Toggle({
Name = _d("chBADE8FBUUAFBYfQgNdRUMGDhYEVhc"),
Default = false,
Callback = function(kxir)
klq.weatherTriggered = false

if kxir and next(klq.weathers) == nil then
klq.weatherEnabled = false

pcall(function()
klq.weatherToggle:UpdateState(false)
end)

ejt:Dialog({
Title = _d("ZABVFwcHHhMiXRUKQjlD"),
Description = _d("ZwxXCE8DGBMJUQIcFkxcC1FDGAcNRw1REU8ACV8KQ0MJCx5AERROTw0YWwBGFAYRCRMRXAYdB0xaFhQNABYEWgtTQxsNTFQMQgZPFxwTClpN"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})

return
end

klq.weatherEnabled = kxir
end,
}, _d("UhBADDAFBUUAaxYfPQNdOkMGDhYEVhc"))

ivi:Dropdown({
Name = _d("dAxCBk8XHBMSUQIbCglBFg"),
Multi = true,
Required = false,
Options = { _d("ZxxECwANAg"), _d("cQldGRUDHlc"), _d("fwxTCxsMBV0C"), _d("ZAxaBxwWA0EI"), _d("YA1VEQYMC1IL"), _d("YAxaBBoODUEMQBo"), _d("fgpaAh0BBBMhWw4OCwI"), _d("ZQpdBw"), _d("fgRQBk8LAhMtUQIZBwI"), _d("fgRaBA4") },
Callback = function(hgtv)
klq.weathers = {}

if type(hgtv) == _d("RwRWDwo") then
for zec, ybx in pairs(hgtv) do
if ybx then
klq.weathers[zec] = true
end
end
end

klq.weatherTriggered = false
end,
}, _d("VAxCBjAXHGwSUQIbCglBFg"))

ivi:Input({
Name = _d("fgxaCgIXARMDWAwAEB8"),
Placeholder = _d("A0UJQw4MFRMDWAwAEA"),
AcceptedCharacters = _d("fRBZBh0LDw"),
Callback = function(vdy)
local sxz = math.floor(tonumber(vdy) or 0)

if sxz < 0 then
sxz = 0
end

klq.weatherMinFloor = sxz
klq.weatherTriggered = false
end,
}, _d("XgxaCgIXAWwDWAwAEB8"))

ivi:Button({
Name = _d("dAxCBk83HBMxWxQKEA"),
Callback = function()
if not yxqv() then
ejt:Dialog({
Title = _d("dAxCBk83HBMxWxQKEA"),
Description = _d("fQoUDwYUCRMRWxQKEExBEFpDGw1MVAxCBk8XHBMXXQQHFkxdCkNN"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})

return
end

ejt:Dialog({
Title = _d("dAxCBk83HBMxWxQKEA"),
Description = _d("dQpGBQoLGBMRXAZPARlBF1ENG0IYXBJREU8QGV1aFDcHCx8TBlUNAQ0YEwdRQxoMCFwLUU0"),
Buttons = {
{
Name = _d("dAoUAQ4BBw"),
},
{
Name = _d("dAxCBk8XHA"),
Callback = function()
local tm = false

pcall(function()
tm = kkjk()
end)

if tm then
return
end

task.defer(function()
task.wait(0.3)

ejt:Dialog({
Title = _d("dAxCBk83HBMxWxQKEA"),
Description = _d("fQoUBAYUCRMQREMNFxhHClpDDgwfRABGBgtCQRMRXAZPEBldRVkCFkINXxdRAgsbTFEAFAwZBx4d"),
Buttons = {
{
Name = _d("dApAQwYW"),
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

ivi:Button({
Name = _d("cA1RAARCAFwWR0MHCx9HCkYa"),
Callback = function()
local vgai = ryhg.remote(_d("YQBFFgoRGGcKQwYdKgVAEVsRFg"))

if not vgai then
ejt:Dialog({
Title = _d("fwpHEE8qBUARWxEW"),
Description = _d("Zw1dEE8AGVoJUEMHAx8TC1tDGw0bVhcUCwYRGFwXTUMdBwFcEVFN"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})

return
end

ryhg.standDown(ryhg.historyOpen)

pcall(function()
vgai:FireServer()
end)
end,
})

ivi:Button({
Name = _d("cA1RAARCC1YLUREOFgVcC0c"),
Callback = function()

local uzdr = cmup:FindFirstChild(_d("ZwpDBh0wCUAQWBcoFwU"))
local rmre = uzdr and uzdr:FindFirstChild(_d("fBVRDSgHAnsMRxcAEBU"))

if not rmre then
ejt:Dialog({
Title = _d("dABaBh0DGFoKWhA"),
Description = _d("Zw1dEE8AGVoJUEMHAx8TC1tDCAcCVhdVFwYNAkBFQwoBBgNESw"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})

return
end

ryhg.standDown(ryhg.generationOpen)

pcall(function()
rmre:Fire()
end)
end,
})

xepj.bossTeams.towerSection = jsi:Section({
Side = _d("fwBSFw"),
})

xepj.bossTeams.towerSection:Header({
Name = _d("ZwpDBh1COFYEWRA"),
})

xepj.bossTeams.towerSection:Paragraph({
Header = _d("ewpDQxsNG1YXFBcKAwFARUMMHQk"),
Body = _d("fANSWU8HDVANFBEaDExGFlEQTxUEUhFRFQoQTEcAVQ5PCxhARUcPABZMUglGBg4GFRMNWw8LEUI5b3sNVUIJUgZcQxsNG1YXFAEKDgNERUYWARFMRAxAC08WBFZFQAYOD0xDDFcICgZMVQpGQwYWQg"),
})

xepj.bossTeams.towerToggle = xepj.bossTeams.towerSection:Toggle({
Name = _d("ZwpDBh1COFYEWRA"),
Default = false,
Callback = function(nzj)
xepj.bossTeams.towersOn = nzj
end,
}, _d("RwpDBh09GFYEWRA"))

for bac, ytkj in ipairs({
{ kind = _d("RwpDBh0"), name = _d("egtSCgELGEpFdwIcFgBWRRtDIQsLWxFZAh0H") },
{ kind = _d("WwRGBwwNHlY"), name = _d("ehZYAgEGTHsERgcMDR5W") },
}) do
local xebm = math.clamp(math.floor(tonumber(xepj.bossTeams.towerPicked[ytkj.kind]) or 1), 1, 4)

xepj.bossTeams.towerPicked[ytkj.kind] = xebm

xepj.bossTeams.towerUi[ytkj.kind] = xepj.bossTeams.towerSection:Dropdown({
Name = ytkj.name,
Search = false,
Multi = false,
Required = false,
Default = xebm,
Options = { _d("ZwBVDk9T"), _d("ZwBVDk9Q"), _d("ZwBVDk9R"), _d("ZwBVDk9W") },
Callback = function(zjr)
local ot = type(zjr) == _d("RwRWDwo") and zjr[1] or zjr
local igdc = type(ot) == _d("QBFGCgEF") and tonumber(ot:match(_d("G0BQSEY"))) or nil

if igdc then
xepj.bossTeams.towerPicked[ytkj.kind] = igdc
xepj.bossTeams.save()
end

pcall(function()
xepj.bossTeams.towerUi[ytkj.kind]:UpdateName(ytkj.name .. _d("E4e0wU8") .. (ot or _d("ZwBVDk9T")))
end)
end,
}, _d("RwBVDjAWA0QARjw") .. ytkj.kind)

pcall(function()
xepj.bossTeams.towerUi[ytkj.kind]:UpdateSelection(_d("ZwBVDk8") .. tostring(xebm))
xepj.bossTeams.towerUi[ytkj.kind]:UpdateName(ytkj.name .. _d("E4e0wU82CVIIFA") .. tostring(xebm))
end)
end

xepj.bossTeams.towerSection:Header({
Name = _d("YBJVE08NAhMDWAwAEA"),
})

xepj.bossTeams.towerSection:Paragraph({
Header = _d("YBJVE08WCVIIFAwBQg0TA1gMABA"),
Body = _d("Zw1RQwgDAVZCR0MAFQITFkMCH05MXQpAQw5CHFIQRwZBQilSBlxDHRcAVkVdEE8DTFUJWwwdQg1dARQXBwdMRwBVDk8VA0ELFAUdDQETEVwCG0IKXwpbEU8NAh9FQxEGFhhWCxQKARYDExFcBk8FDV4AExBPMQlHEV0NCBFMHlsUIhoWAxMxUQICQj9EBERDXkINXQEUUUNCH1xFQAsKQgtSCFFDAgMHVhYUFwcHTEASXRcMCkxaEUcGAwRMRA1RDU8DTEEQWkMcFg1BEUdDGwoNR0VSDwANHh1FegwbCgVdAhQKHEIfRwpEEwoGTFILUEMbCgkTF0ENTwkJVhVHQwYWHxMWWAwbTGY5JBQADhEYXwAUERoMTFQAQBBPFgRWRUcCAgdMQBJdFwwKTFUXWw5PFgRaFhQTDgwJX0kUAQoBDUYWUUMbCgkTAlUOCkUfEwpDDU8RG1IVFAwBDhUTA10RChFMWgtHCgsHTHoLUgoBCxhWRWYMAA8fHW8+LwoDGlZFVUMJDgNcFxQCG0JcExFbQxsXHl1FQAsOFkxBEFgGTw0KVUs"),
})

function xepj.bossTeams.swapStatusText()
local cit = xepj.bossTeams.swap
local aiw = {}

if cit.on then
table.insert(aiw, _d("fAsUTk8VHloRQAYBQhhcRUALCkILUghRRBxCLUYRW0M7Bw1eRWcUDhJMQQpDEEE"))
else
table.insert(aiw, _d("fANSQ0JCGFsAFAQODwkUFhQQGAMcEwxHQwMHCkdFVQ8ADAkd"))
end

local mtmj = {
{ index = 1, floor = cit.floor, team = cit.team },
{ index = 2, floor = cit.floor2, team = cit.team2 },
}

for nlg, mdws in ipairs(mtmj) do
if mdws.floor > 0 then
table.insert(aiw, string.format(_d("YBJVE09HCAlFYAYOD0wWARQFHQ0BEwNYDAAQTBYB"), mdws.index, mdws.team, mdws.floor))
else
table.insert(aiw, string.format(_d("YBJVE09HCAlFWwUJQkRdChQFAw0DQUVHBhtL"), mdws.index))
end
end

if xepj.bossTeams.swapMessage ~= _d("") then
table.insert(aiw, xepj.bossTeams.swapMessage)
end

return table.concat(aiw, _d("OQ"))
end

function xepj.bossTeams.paintSwap()
pcall(function()
xepj.bossTeams.swapStatus:UpdateBody(xepj.bossTeams.swapStatusText())
end)
end

xepj.bossTeams.swapToggle = xepj.bossTeams.towerSection:Toggle({
Name = _d("YBJVE08WCVIIFAwBQgpfClsR"),
Default = xepj.bossTeams.swap.on,
Callback = function(rto)
xepj.bossTeams.swap.on = rto

xepj.bossTeams.swapReset()

xepj.bossTeams.swapApply()
xepj.bossTeams.save()
end,
}, _d("QBJVEzAWCVIIawwBPQpfClsR"))

xepj.bossTeams.swapInput = xepj.bossTeams.towerSection:Input({
Name = _d("dQlbDB0"),
Placeholder = _d("VktTTU9XXANFHFNPX0xcA1JK"),
AcceptedCharacters = _d("fRBZBh0LDw"),
Callback = function(qplb)
local abs = tonumber(type(qplb) == _d("QBFGCgEF") and qplb:match(_d("G0BQSEY")) or qplb)

if abs then
xepj.bossTeams.swap.floor = abs
xepj.bossTeams.swapReset()
xepj.bossTeams.swapApply()
xepj.bossTeams.save()
end
end,
}, _d("VQlbDB0"))

xepj.bossTeams.swapDropdown = xepj.bossTeams.towerSection:Dropdown({
Name = _d("YBJVE08WAw"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(xepj.bossTeams.swap.team) or 1), 1, 4),
Options = { _d("ZwBVDk9T"), _d("ZwBVDk9Q"), _d("ZwBVDk9R"), _d("ZwBVDk9W") },
Callback = function(ptd)
local vpvq = type(ptd) == _d("RwRWDwo") and ptd[1] or ptd
local mhvd = type(vpvq) == _d("QBFGCgEF") and tonumber(vpvq:match(_d("G0BQSEY"))) or nil

if mhvd then
xepj.bossTeams.swap.team = mhvd
xepj.bossTeams.swapReset()
xepj.bossTeams.swapApply()
xepj.bossTeams.save()
end

pcall(function()
xepj.bossTeams.swapDropdown:UpdateName(_d("YBJVE08WAxOHtMFP") .. (vpvq or _d("ZwBVDk9T")))
end)

xepj.bossTeams.paintSwap()
end,
}, _d("QBJVEzAWAw"))

xepj.bossTeams.swapInput2 = xepj.bossTeams.towerSection:Input({
Name = _d("dQlbDB1CXg"),
Placeholder = _d("VktTTU9TXANVFEtfQlETClIFRg"),
AcceptedCharacters = _d("fRBZBh0LDw"),
Callback = function(fu)
local rrop = tonumber(type(fu) == _d("QBFGCgEF") and fu:match(_d("G0BQSEY")) or fu)

if rrop then
xepj.bossTeams.swap.floor2 = rrop
xepj.bossTeams.swapReset()
xepj.bossTeams.swapApply()
xepj.bossTeams.save()
end
end,
}, _d("VQlbDB09Xg"))

xepj.bossTeams.swapDropdown2 = xepj.bossTeams.towerSection:Dropdown({
Name = _d("YBJVE08WAxNX"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(xepj.bossTeams.swap.team2) or 1), 1, 4),
Options = { _d("ZwBVDk9T"), _d("ZwBVDk9Q"), _d("ZwBVDk9R"), _d("ZwBVDk9W") },
Callback = function(slf)
local yagp = type(slf) == _d("RwRWDwo") and slf[1] or slf
local sac = type(yagp) == _d("QBFGCgEF") and tonumber(yagp:match(_d("G0BQSEY"))) or nil

if sac then
xepj.bossTeams.swap.team2 = sac
xepj.bossTeams.swapReset()
xepj.bossTeams.swapApply()
xepj.bossTeams.save()
end

pcall(function()
xepj.bossTeams.swapDropdown2:UpdateName(_d("YBJVE08WAxNXFIHvwEw") .. (yagp or _d("ZwBVDk9T")))
end)

xepj.bossTeams.paintSwap()
end,
}, _d("QBJVEzAWA2xX"))

xepj.bossTeams.swapStatus = xepj.bossTeams.towerSection:Paragraph({
Header = _d("YBJVE08RGFIRQRA"),
Body = xepj.bossTeams.swapStatusText(),
})

pcall(function()
local eynv = math.clamp(math.floor(tonumber(xepj.bossTeams.swap.team) or 1), 1, 4)
local zkl = math.clamp(math.floor(tonumber(xepj.bossTeams.swap.team2) or 1), 1, 4)

xepj.bossTeams.swapDropdown:UpdateSelection(_d("ZwBVDk8") .. tostring(eynv))
xepj.bossTeams.swapDropdown:UpdateName(_d("YBJVE08WAxOHtMFPNglSCBQ") .. tostring(eynv))
xepj.bossTeams.swapDropdown2:UpdateSelection(_d("ZwBVDk8") .. tostring(zkl))
xepj.bossTeams.swapDropdown2:UpdateName(_d("YBJVE08WAxNXFIHvwExnAFUOTw") .. tostring(zkl))
end)

task.spawn(function()
local dp = xepj.bossTeams.swapStatusText()

while lrr() do
local vpz = xepj.bossTeams.swapStatusText()

if vpz ~= dp then
dp = vpz
xepj.bossTeams.paintSwap()
end

task.wait(2)
end
end)

if xepj.bossTeams.swap.on then
task.delay(2, function()
pcall(xepj.bossTeams.swapApply)
end)
end

xepj.bossTeams.section = jsi:Section({
Side = _d("YQxTCxs"),
})

xepj.bossTeams.section:Header({
Name = _d("cQpHEE82CVIIRw"),
})

xepj.bossTeams.section:Paragraph({
Header = _d("ewpDQw0NH0BFQAYODx8TElsRBA"),
Body = _d("fANSWU8MA0cNXQ0IQgVARUcUBhYPWwBQQ0JCCUUARhpPBAVUDUBDGhEJQEVACwpCGFYEWUMWDRkTBFgRCgMISkVcAhkHTF8MWgYLQhlDSRQUBwsPW0VdEE8WBFZFZw8AFkwCRUAGDg9MRgtYBhwRTEAJWxdPUExHBF8GHEIYWwAUAQ4WGF8AGmllLQIJRVECDApMUhdRAk8ACV8KQ0MJCwtbEUdDGAsYW0VACwpCGFYEWUMWDRkTFV0ABEIKXBcUChtM"),
})

xepj.bossTeams.toggle = xepj.bossTeams.section:Toggle({
Name = _d("cQpHEE82CVIIRw"),
Default = false,
Callback = function(fyk)
xepj.bossTeams.enabled = fyk
end,
}, _d("UQpHEDAWCVIIRw"))

for eeti, dhj in ipairs(fao) do
local pprx = xepj.bossTeams.picked[dhj.id] or 1

pprx = math.clamp(math.floor(tonumber(pprx) or 1), 1, 4)
xepj.bossTeams.picked[dhj.id] = pprx

xepj.bossTeams.ui[dhj.id] = xepj.bossTeams.section:Dropdown({
Name = dhj.name,
Search = false,
Multi = false,
Required = false,

Default = pprx,
Options = { _d("ZwBVDk9T"), _d("ZwBVDk9Q"), _d("ZwBVDk9R"), _d("ZwBVDk9W") },
Callback = function(nksc)
local jie = type(nksc) == _d("RwRWDwo") and nksc[1] or nksc
local gkh = type(jie) == _d("QBFGCgEF") and tonumber(jie:match(_d("G0BQSEY"))) or nil

if gkh then
xepj.bossTeams.picked[dhj.id] = gkh

xepj.bossTeams.save()
end

pcall(function()
xepj.bossTeams.ui[dhj.id]:UpdateName(dhj.name .. _d("E4e0wU8") .. (jie or _d("ZwBVDk9T")))
end)
end,
}, _d("RwBVDjAVA0EJUDw") .. dhj.id)

pcall(function()
xepj.bossTeams.ui[dhj.id]:UpdateSelection(_d("ZwBVDk8") .. tostring(pprx))
xepj.bossTeams.ui[dhj.id]:UpdateName(dhj.name .. _d("E4e0wU82CVIIFA") .. tostring(pprx))
end)
end

xepj.bossTeams.raidSection = jsi:Section({
Side = _d("YQxTCxs"),
})

xepj.bossTeams.raidSection:Header({
Name = _d("YQRdB082CVIIRw"),
})

xepj.bossTeams.raidSection:Paragraph({
Header = _d("ewpDQx0DBVdFQAYODx8TElsRBA"),
Body = _d("fANSWU8QDVoBR0MaEQkTElwCGwcaVhcUFwoDARMRXAZPEQBcERQCAxAJUgFNQwcNAFcWGmllLQIJRVECDApMQQRdB08ACV8KQ0MGEUxVCkEEBxZMRAxAC08WBFZFQAYOD0xDDFcICgZMVQpGQwYWQg"),
})

xepj.bossTeams.raidToggle = xepj.bossTeams.raidSection:Toggle({
Name = _d("YQRdB082CVIIRw"),
Default = false,
Callback = function(ojor)
xepj.bossTeams.raidsOn = ojor
end,
}, _d("QQRdBzAWCVIIRw"))

for gmdv, sxo in ipairs(mwrm.Raids) do
if sxo.BossTitle and sxo.id then
local qnx = xepj.bossTeams.raidPicked[sxo.id] or 1

qnx = math.clamp(math.floor(tonumber(qnx) or 1), 1, 4)
xepj.bossTeams.raidPicked[sxo.id] = qnx

xepj.bossTeams.raidUi[sxo.id] = xepj.bossTeams.raidSection:Dropdown({
Name = sxo.BossTitle,
Search = false,
Multi = false,
Required = false,
Default = qnx,
Options = { _d("ZwBVDk9T"), _d("ZwBVDk9Q"), _d("ZwBVDk9R"), _d("ZwBVDk9W") },
Callback = function(jkng)
local wqi = type(jkng) == _d("RwRWDwo") and jkng[1] or jkng
local vehp = type(wqi) == _d("QBFGCgEF") and tonumber(wqi:match(_d("G0BQSEY"))) or nil

if vehp then
xepj.bossTeams.raidPicked[sxo.id] = vehp
xepj.bossTeams.save()
end

pcall(function()
xepj.bossTeams.raidUi[sxo.id]:UpdateName(sxo.BossTitle .. _d("E4e0wU8") .. (wqi or _d("ZwBVDk9T")))
end)
end,
}, _d("RwBVDjAQDVoBaw") .. sxo.id)

pcall(function()
xepj.bossTeams.raidUi[sxo.id]:UpdateSelection(_d("ZwBVDk8") .. tostring(qnx))
xepj.bossTeams.raidUi[sxo.id]:UpdateName(sxo.BossTitle .. _d("E4e0wU82CVIIFA") .. tostring(qnx))
end)
end
end

task.spawn(function()
local pqn = xe()

while lrr() do
local etj = xe()

if qtw.enabled and qtw.statusText then
etj = qtw.statusText()
end

etj = etj .. _d("OW9nBh0UCUFFQRNP") .. tlg()

if etj ~= pqn then
pqn = etj
pcall(function()
lprv:UpdateBody(etj)
end)
end
task.wait(0.5)
end
end)

task.spawn(function()
while lrr() do
for rc, wmz in ipairs({ _d("cQRAFwMHK0YM"), _d("cQRAFwMHK0YMBg") }) do
local nn = cmup:FindFirstChild(wmz)
local soe = nn and nn:FindFirstChild(_d("cQRAFwMHP1AXUQYB"))
local kk = nn and nn:FindFirstChild(_d("ewxQBi0DGEcJUSEaFhhcCw"))

if soe and soe.Visible and kk and not kk.Visible then
kk.Visible = true
end
end

task.wait(0.5)
end
end)

task.spawn(function()
local jqa = false

while lrr() do
if be then
local qan = cmup:FindFirstChild(_d("ZwpDBh0wCUAQWBcoFwU"))
local vht = qan and qan:FindFirstChild(_d("YQBHFgMWKkEEWQY"))
local neq = qan and qan:FindFirstChild(_d("dABaBh0DGFoLUyUdAwFW"))

if neq and neq.Visible then
neq.Visible = false
end

local bfr = vht and vht.Visible or false

if bfr and not jqa then
local buw = vht:FindFirstChild(_d("cAlbEAogGUcRWw0"))
local xljg = false

if buw then
for ifs, mltn in ipairs({ _d("fgpBEAogGUcRWw1eIQBaBl8"), _d("cgZAChkDGFYB") }) do
local nmg = buw[mltn]
if nmg then
for kcq, hjb in ipairs(getconnections(nmg)) do
pcall(function()
hjb:Fire()
end)
xljg = true
end
end
end
end

if not xljg then
vht.Visible = false
else
task.spawn(function()
task.wait(0.3)
if vht.Parent and vht.Visible then
vht.Visible = false
end
end)
end
end

jqa = bfr
else
jqa = false
end

task.wait(0.2)
end
end)

local auqt = {}

function auqt.active()
return xepj.enabled or xepj.story
end

function auqt.towerHolds()
if qtw.enabled then
return false
end

if vpex.run.enabled then
return true
end

return rxn.enabled and not rxn.paused
end

function auqt.ready(shxo, ztsc, kyxm)
local sig = xepj.unlocked[shxo]

return (not sig or sig[ztsc] ~= false) and hd(shxo, ztsc) <= kyxm
end

function auqt.hasReadyTarget()
local kmu = os.time()

for relb, muf in ipairs(dmt()) do
for eme, gnjz in ipairs(hqt()) do
if auqt.ready(muf, gnjz, kmu) then
return true
end
end
end

return false
end

function auqt.backOff(blek, qoqa)
vgoi(blek, qoqa, os.time() + 5)
end

function auqt.findTarget()
for jkru, moej in ipairs(dmt()) do
local dcy = slz(moej)
local iyn = os.time() - (xepj.lastFetch[moej] or 0) > 60

if iyn and dcy and not xepj.walkToNpc then
ctx(dcy)
task.wait(0.3)
bqqi(moej)
end

for tko, ojv in ipairs(hqt()) do
if auqt.ready(moej, ojv, os.time()) then
return moej, ojv
end
end
end

return nil
end

function xepj.bossTeams.slotForFight()
if qtw.hasSlot2 == false then
return 1
end

if qtw.busy(2) then
return 1
end

return 2
end

function xepj.bossTeams.slotTeam(yul)
local sy = cmup:FindFirstChild(_d("YABAFwYMC0AiQQo"))
local mulu = sy and sy:FindFirstChild(_d("YAlbFzsHDV4") .. yul .. _d("cRBAFwAM"), true)
local ogob = mulu and mulu.Text

return ogob and tonumber(ogob:match(_d("G0BQSEY"))) or nil
end

function xepj.bossTeams.applyTeam(drmf, hfj)
drmf = tonumber(drmf)

if not drmf then
return false
end

hfj = tonumber(hfj) or xepj.bossTeams.slotForFight()

if qtw.busy(hfj) then
return false
end

xepj.bossTeams.lastSlot = hfj

local dcuz = xepj.bossTeams.slotTeam(hfj) or xepj.bossTeams.applied[hfj]

if dcuz == drmf then
return true
end

local ils = ryhg.remote(_d("YBJdFwwKOFYEWQ"))

if not ils then
return false
end

local nst = pcall(function()
ils:FireServer(drmf, false, hfj)
end)

xepj.bossTeams.applied[hfj] = drmf
task.wait(0.2)

return nst
end

function xepj.bossTeams.apply(tygi)
if not xepj.bossTeams.enabled then
return
end

local vxfw = xepj.bossTeams.worldOf[tygi]
local vmh = vxfw and xepj.bossTeams.picked[vxfw]

if not vmh then
return
end

xepj.bossTeams.applyTeam(vmh)
end

function xepj.bossTeams.applyTower(qiut, eggz)
if not xepj.bossTeams.towersOn then
return false
end

local qmt = xepj.bossTeams.towerPicked[qiut]

local ekpa = xepj.bossTeams.swapFired[qiut]

if xepj.bossTeams.swap.on and type(ekpa) == _d("RwRWDwo") then
qmt = ekpa[2] or ekpa[1] or qmt
end

if not qmt then
return false
end

return xepj.bossTeams.applyTeam(qmt, eggz)
end

function xepj.bossTeams.applyRaid(wal)
if not xepj.bossTeams.raidsOn then
return
end

local wgh = wal and xepj.bossTeams.raidPicked[wal]

if not wgh then
return
end

xepj.bossTeams.applyTeam(wgh)
end

function auqt.fight(qkre, az)
local napr = slz(qkre)

if not napr then
auqt.backOff(qkre, az)
return false
end

local ioyd

if xepj.walkToNpc then
local vmyt = aup[qkre]

if vmyt then
pzta.TeleportToWorld:FireServer(vmyt)
task.wait(2.5)

local ihm = slz(qkre) or napr
local xrnk = ihm:GetPivot()

ioyd = hr(xrnk.Position + xrnk.LookVector * 6, function()
return not auqt.active() or not xepj.walkToNpc
end)

if ioyd then
bqqi(qkre)
ioyd = auqt.ready(qkre, az, os.time())
end
end
else
ioyd = ctx(napr)
end

if not ioyd then
auqt.backOff(qkre, az)
return false
end

task.wait(0.4)
xepj.bossTeams.apply(qkre)
xepj.activeDifficulty[qkre] = az
pzta.SetNPCDifficulty:FireServer(qkre, az)
task.wait(0.4)

xepj.currentBattle = {
npcId = qkre,
difficulty = az,
}
fo = qkre
zkid = az
pzta.StartNPCBattle:FireServer(qkre)
vgoi(qkre, az, os.time() + 10)
xepj.battlePending = true
xepj.battlePendingUntil = os.time() + 30
task.wait(1)

return true
end

xepj.workPending = function()

if kxd.misc and kxd.misc.cards and kxd.misc.cards.inFlight then
return true
end

if not auqt.active() then
return false
end

if xepj.battlePending then
return true
end

local qbc = qtw.npcSlot()

if qbc and qtw.busy(qbc) then
return true
end

return auqt.hasReadyTarget()
end

task.spawn(function()
while lrr() do

local zht = (qtw.enabled and (kxd.enabled or hx.enabled or kxd.worldBoss.enabled))
or auqt.towerHolds()
or not qtw.slotFree(qtw.npcSlot())

or (kxd.misc and kxd.misc.cards and kxd.misc.cards.inFlight)
or (xepj.battlePending and os.time() < xepj.battlePendingUntil)

if auqt.active() and not zht then
local yeil, sunk = auqt.findTarget()

if yeil then
auqt.fight(yeil, sunk)
end
end

task.wait(0.5)
end
end)

task.spawn(function()
while lrr() do

local qjkb = {}

if kxd.enabled then
local qxeg = qtw.roleSlot(_d("XRVX"))

if qxeg then
table.insert(qjkb, qxeg)
end

if qtw.splitNpc() and qxeg ~= 2 then
table.insert(qjkb, 2)
end
end

local fnmd = gs:FindFirstChild(_d("YQRdBzwWDUcQRw"))

if #qjkb > 0 and fnmd and (not hx.enabled or qtw.splitNpc()) and (qtw.enabled or not xepj.workPending()) then
for klac, glv in ipairs(qjkb) do
local sass = fnmd

local bcb = kxd.bossFor(glv, (glv ~= 1 and not qtw.splitNpc()) and 1 or nil)
local xzd = sass:GetAttribute(_d("ehZ7EwoM")) == true or sass:GetAttribute(_d("dQpGAAoG")) == true
local eju = bcb ~= nil and sass:GetAttribute(_d("YQBVBxY9") .. bcb) == true
local sqo = bcb and afp(bcb)

if bcb and kxd.pending[bcb] and os.time() >= (kxd.pendingUntil[bcb] or 0) then
kxd.pending[bcb] = false
kxd.cleared[bcb] = nil
end

if bcb and qtw.slotFree(glv) and xzd and eju and kxd.cleared[bcb] ~= sqo and not kxd.pending[bcb] then
local mgkq = mk[bcb]
local hadr = mgkq and slz(mgkq)
local edyj = false

if hadr then
if kxd.walkToBoss then
local gqwy = hsde[bcb]
local bcfi = vr.Character and vr.Character:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))
local voj = hadr:GetPivot().Position
local jks = bcfi and (bcfi.Position - voj).Magnitude <= 15

if jks then
edyj = true
elseif gqwy then
pzta.TeleportToWorld:FireServer(gqwy)

local lew = os.clock()
while os.clock() - lew < 2.5 and kxd.enabled do
task.wait(0.1)
end

if kxd.enabled then
local xibm = slz(mgkq) or hadr
local mdjt = xibm:GetPivot()
local blpx = mdjt.Position + mdjt.LookVector * 6
edyj = qxsj(blpx, kxd.walkSpeed, function()
return not kxd.enabled or not kxd.walkToBoss
end)
end
end

if not edyj then
edyj = ctx(hadr)
end
else
edyj = ctx(hadr)
end

if edyj then
task.wait(0.5)
end
end

if edyj then
kxd.inFlight[bcb] = glv
kxd.pending[bcb] = true
kxd.pendingUntil[bcb] = os.time() + 15
kxd.cleared[bcb] = sqo

local sdki = kxd.difficulties[1] or _d("XQpGDg4O")
local eeqe = kxd.progress[bcb]

if eeqe then
local klg = eeqe.unlocked
local hdmj = eeqe.cooldowns

for jppd, idjx in ipairs(kxd.difficulties) do
local ptx = not klg or klg[idjx] ~= false
local atr = hdmj and tonumber(hdmj[idjx]) or 0

if ptx and atr <= 0 then
sdki = idjx
break
end
end
end

xepj.bossTeams.applyRaid(bcb)
pzta.SetRaidDifficulty:FireServer(sdki, bcb)
task.wait(0.3)
pzta.StartRaidBattle:FireServer(bcb)
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while lrr() do
local mklk = hx.inBattle and os.time() < hx.inBattleUntil

if hx.enabled and (qtw.enabled or not xepj.workPending()) and not mklk and qtw.slotFree(qtw.roomSlot()) and not (hx.pending and os.time() < hx.pendingUntil) then
local utzz = hx.progress

if utzz == nil then
pzta.RequestInfiniteRoomProgress:FireServer()
task.wait(0.5)
else
local mhrg = nil

for vhe, wach in ipairs(udty.Milestones) do
if udty.isMilestoneUnlocked(wach, utzz) and not udty.isMilestoneCleared(wach, utzz) then
mhrg = wach
break
end
end

if mhrg then

local dpnm = qtw.roomSlot()

hx.currentRoom = mhrg
hx.inBattle = true
hx.inBattleUntil = os.time() + 60
hx.pending = true
hx.pendingUntil = os.time() + 10

local axr = cmup:FindFirstChild(dpnm == 2 and _d("YQBHBhsgDUcRWAYpDgNcFwY") or _d("YQBHBhsgDUcRWAYpDgNcFw"))
if axr and axr:IsA(_d("cQxaBw4AAFYgQgYBFg")) then
axr:Fire(mhrg, _d("WgtSCgELGFY6RgwADw"))
end

local zu = cmup:FindFirstChild(dpnm == 2 and _d("YBFVERsrAlUMWgobBz5cClkhDhYYXwAG") or _d("YBFVERsrAlUMWgobBz5cClkhDhYYXwA"))
if zu and zu:IsA(_d("cQxaBw4AAFYgQgYBFg")) then
zu:Fire(mhrg)
end

pzta.StartBattle:FireServer(_d("WgtSCgELGFY6RgwADw"), {
milestone = mhrg,
slot = dpnm,
})
task.wait(2)
end
end
end

task.wait(1)
end
end)

local function fpog(eu, ufae)
local tuxk = cmup:FindFirstChild(_d("YAZGBgoMK0YM"))

if not tuxk then
return
end

local zuc = tuxk:FindFirstChild(eu)
local roxz = zuc and zuc:FindFirstChild(_d("ZQRYFgouDVEAWA"), true)
local qso = zuc and zuc:FindFirstChild(_d("fwRWBgM"), true)

if not zuc then
return
end

local kber = false

if roxz then
kber = roxz.Text == _d("fAs")
elseif qso then
kber = not string.lower(qso.Text):find(_d("XANS"), 1, true)
end

if kber ~= ufae then
for rjbw, exq in ipairs(getconnections(zuc.MouseButton1Click)) do
local fzkb = exq.Function

if type(fzkb) == _d("VRBaABsLA10") then
pcall(fzkb)
else
pcall(function()
exq:Fire()
end)
end
end
end
end

getgenv().ACBXSetRollButton = fpog

local function tqr(tvlx)
fpog(_d("YhBdAAQwA18JdhYbFgNd"), tvlx)
fpog(_d("chBADD0NAF8nQRcbDQI"), tvlx)
end

getgenv().ACBXSetRollUi = tqr
iv.setRollButton = fpog

pcall(function()
pzta.SaveClientData:FireServer({ autoHideBattle = false })
end)

task.defer(function()
task.wait(0.5)

local doux = cmup:FindFirstChild(_d("cQRAFwMHK0YM"))
local aspf = doux and doux:FindFirstChild(_d("cQRAFwMHP1AXUQYB"))
local zxs = doux and doux:FindFirstChild(_d("ewxQBi0DGEcJUSEaFhhcCw"))

if zxs and zxs.Visible and aspf and not aspf.Visible and de() then
for tg, lxl in ipairs(getconnections(zxs.MouseButton1Click)) do
local xjb = lxl.Function

if type(xjb) == _d("VRBaABsLA10") then
pcall(xjb)
else
pcall(function()
lxl:Fire()
end)
end
end
end
end)

tqr(true)

task.spawn(function()
while lrr() do

if iv.autoRoll then
fpog(_d("chBADD0NAF8nQRcbDQI"), true)
end

if iv.autoQuickRoll then
fpog(_d("YhBdAAQwA18JdhYbFgNd"), true)
end

task.wait(1)
end
end)

local function eqz()

if rxn.floor then
return rxn.floor
end

local pdzb = cmup:FindFirstChild(_d("cQRAFwMHK0YM"))

if not pdzb then
return nil
end

for pkai, jop in ipairs({ _d("ZwpDBh0kAFwKRi8OAAlf"), _d("YRBaJQMNA0EpVQEKDg") }) do
local ppb = pdzb:FindFirstChild(jop)

if ppb and ppb.Visible and ppb.Text then
local hjhe = tonumber(ppb.Text:match(_d("G0BQSEY")))

if hjhe then
return hjhe
end
end
end

local wz = pdzb:FindFirstChild(_d("dQlbDB0xD0EAUQ0"))
local lwn = wz and wz:FindFirstChild(_d("ZwpEIQ4Q"))
local ky = lwn and lwn:FindFirstChild(_d("dQlbDB0uDVEAWA"))

if ky then
return tonumber(ky.Text:match(_d("G0BQSEY")))
end

return nil
end

function xepj.bossTeams.swapRows(mbw)
local mszl = cmup:FindFirstChild(_d("YABAFwYMC0AiQQo"))
local zlwj = mszl and mszl:FindFirstChild(_d("chBADDwVDUM") .. mbw .. _d("YQpD"), true)

if not zlwj then
return nil
end

return zlwj:FindFirstChild(_d("chBADDwVDUM") .. mbw .. _d("cA1RAAQ")),
zlwj:FindFirstChild(_d("chBADDwVDUM") .. mbw .. _d("ZwBVDg")),
zlwj:FindFirstChild(_d("chBADDwVDUM") .. mbw .. _d("dQlbDB0"))
end

function xepj.bossTeams.swapOn(vqr)
local ez = cmup:FindFirstChild(_d("YABAFwYMC0AiQQo"))
local bth = ez and ez:FindFirstChild(_d("dABAMAoWGFoLUxA"), true)

if not bth then
return nil
end

local hxu, myv = pcall(function()
return bth:Invoke()
end)

if hxu and type(myv) == _d("RwRWDwo") then
return myv[vqr == 1 and _d("UhBADDsHDV42QwIfJwJSB1gGCw") or _d("UhBADDsHDV42QwIfUCldBFYPCgY")] == true
end

return nil
end

function xepj.bossTeams.swapBox(xtet, khx)
if tonumber(xtet.Text) == khx then
return
end

xtet.Text = tostring(khx)

if getconnections then
for tywr, qmn in ipairs(getconnections(xtet.FocusLost)) do
pcall(function()
qmn:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end

function xepj.bossTeams.swapSet(lwxg, iij, gdjf, slp)
local rhbc, hstq, xcw = xepj.bossTeams.swapRows(lwxg)

if not (rhbc and hstq and xcw) then
return false
end

gdjf = math.max(1, math.floor(tonumber(gdjf) or 1))
slp = math.clamp(math.floor(tonumber(slp) or 1), 1, 4)

xepj.bossTeams.swapBox(xcw, gdjf)
xepj.bossTeams.swapBox(hstq, slp)

local ph = xepj.bossTeams.swapOn(lwxg)

if ph ~= nil and ph ~= (iij == true) and getconnections then
pcall(function()
for gor, tza in ipairs(getconnections(rhbc.MouseButton1Click)) do
pcall(function()
tza:Fire()
end)
end
end)
end

local bpeu = lwxg == 1 and _d("") or _d("AQ")

pcall(function()
pzta.SaveClientData:FireServer({
[_d("UhBADDsHDV42QwIf") .. bpeu .. _d("dgtVAQMHCA")] = iij == true,
[_d("UhBADDsHDV42QwIf") .. bpeu .. _d("ZwBVDg")] = slp,
[_d("UhBADDsHDV42QwIf") .. bpeu .. _d("dQlbDB0")] = gdjf,
})
end)

return true
end

function xepj.bossTeams.swapApply()
local ga = xepj.bossTeams
local uat = ga.swap
local bwqw = true

if uat.on then
bwqw = ga.swapSet(1, uat.floor > 0, uat.floor, uat.team)
bwqw = ga.swapSet(2, uat.floor2 > 0, uat.floor2, uat.team2) and bwqw
else
bwqw = ga.swapSet(1, false, uat.floor, uat.team)
bwqw = ga.swapSet(2, false, uat.floor2, uat.team2) and bwqw
end

ga.swapMessage = _d("")

if not bwqw then
ga.swapMessage = _d("Zw1RQwgDAVZCR0MuFxhcRWAGDg9MYBJVE08QA0QWFAIdB0xdCkBDDRcFXxEUGgoWTB5FRgYbEBVaC1NN")
end

ga.paintSwap()
end

function xepj.bossTeams.swapReset(ytl)
local cza = xepj.bossTeams

if ytl then
cza.swapFired[ytl] = nil
else
cza.swapFired = {}
end
end

function xepj.bossTeams.swapTick()
local pbne = xepj.bossTeams
local bry = pbne.swap

if not bry.on or (bry.floor <= 0 and bry.floor2 <= 0) then
if next(pbne.swapFired) ~= nil then
pbne.swapFired = {}
end

return
end

local sed = os.clock()
local lwhh = ryhg.remote(_d("YBJdFwwKOFYEWQ"))

if sed - (pbne.swapWroteAt or 0) > 10 then
pbne.swapWroteAt = sed
pbne.swapApply()
end

local kif = {
{
kind = _d("RwpDBh0"),
slot = qtw.towerSlot(),

live = sed - (rxn.floorAt or 0) < 90,
floor = eqz(),

own = true,
},
{
kind = _d("WwRGBwwNHlY"),
slot = qtw.hardcoreSlot(),
live = nu.active(),
floor = nu.floorNow(),

own = false,
},
}

local afu = {
{ index = 1, floor = bry.floor, team = bry.team },
{ index = 2, floor = bry.floor2, team = bry.team2 },
}

for sqxk, zvf in ipairs(kif) do
if not zvf.live then

pbne.swapFired[zvf.kind] = nil
elseif zvf.own and lwhh and zvf.floor then
local jkqv = pbne.swapFired[zvf.kind]

for pchs, qajn in ipairs(afu) do
local icvr = type(jkqv) == _d("RwRWDwo") and jkqv[qajn.index]

if qajn.floor > 0 and zvf.floor == qajn.floor and not icvr then
local on = pcall(function()
lwhh:FireServer(math.clamp(math.floor(qajn.team), 1, 4), true, zvf.slot or 1)
end)

if on then
jkqv = type(jkqv) == _d("RwRWDwo") and jkqv or {}
jkqv[qajn.index] = qajn.team
pbne.swapFired[zvf.kind] = jkqv

pbne.swapMessage = string.format(_d("cARHFwMHTFUJWwwdQklXRRlDHBUFRwZcBgtCGFxFYAYOD0wWARo"), zvf.floor, qajn.team)
pbne.paintSwap()
end
end
end
end
end
end

task.spawn(function()
while lrr() do
pcall(xepj.bossTeams.swapTick)
task.wait(0.5)
end
end)

local function tcg()

return auqt.active() and auqt.hasReadyTarget()
end

function kxd.worldBoss.remote(vyxc)
local rteo = kxd.worldBoss

rteo.remotes = rteo.remotes or {}

local iu = rteo.remotes[vyxc]

if iu and iu.Parent then
return iu
end

local rgfi = ryhg.remote(vyxc)

if rgfi then
rteo.remotes[vyxc] = rgfi
end

return rgfi
end

function kxd.worldBoss.setRepeat(lruu)
local rg = kxd.worldBoss
local mghz = rg.remote(_d("ZApGDwsgA0AWdQAbCwNd"))

if not mghz then
return false
end

local mt = rg.state
local fpmj = type(mt) == _d("RwRWDwo") and mt.repeatOn == true

if fpmj == (lruu and true or false) then
rg.repeatIntent = nil

return true
end

if lruu then
local lbk = workspace:FindFirstChild(_d("ZApGDwsgA0AWdREKDA0"))
local pzwp = lbk and (lbk:FindFirstChild(_d("cABYDyIDFA")) or lbk)
local ladp = vr.Character and vr.Character:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not (pzwp and ladp) then
return false
end

local xma, umd = pcall(function()
return pzwp:GetPivot()
end)

if not xma or (ladp.Position - umd.Position).Magnitude > 60 then
return false
end
end

if rg.repeatIntent == lruu and os.clock() - (rg.repeatAskedAt or 0) < 20 then
return false
end

rg.repeatIntent = lruu

pcall(function()
mghz:FireServer(_d("QQBEBg4W"))
end)

rg.repeatAskedAt = os.clock()

return true
end

function kxd.worldBoss.requestSync()
local vm = kxd.worldBoss
local blg = vm.remote(_d("ZApGDwsgA0AWdQAbCwNd"))

if blg then
pcall(function()
blg:FireServer(_d("QBxaAA"))
end)
end

vm.askedAt = os.clock()
end

function kxd.worldBoss.hasWork()
local idp = kxd.worldBoss
local eqh = idp.state

if not idp.enabled or type(eqh) ~= _d("RwRWDwo") then
return false
end

local bci = idp.isOpen()

if bci == nil then
bci = eqh.open == true
end

return bci and eqh.inFight ~= true
end

kxd.worldBoss.bossUp = function()
local vdm = kxd.worldBoss

if not vdm.enabled then
return false
end

local fhps = vdm.isOpen()

if fhps ~= nil then
return fhps == true
end

local axt = vdm.state

return type(axt) == _d("RwRWDwo") and axt.open == true
end

function kxd.worldBoss.meter()
local geg = kxd.worldBoss
local fww = os.clock()

if fww - (geg.meterAt or 0) < 1 then
return geg.meterCurrent, geg.meterMax
end

geg.meterAt = fww
geg.meterCurrent = nil
geg.meterMax = nil

local twjv = gs:FindFirstChild(_d("ZApGDwsgA0AWZxcOFhlA"))
local lvvr = twjv and tonumber(twjv:GetAttribute(_d("fgBABh0")))
local qodm = twjv and tonumber(twjv:GetAttribute(_d("fgBABh0vDUs")))

if lvvr and qodm and qodm > 0 then
geg.meterCurrent = lvvr
geg.meterMax = qodm

return geg.meterCurrent, geg.meterMax
end

local function ik(gkp)
if type(gkp) ~= _d("QBFGCgEF") then
return nil
end

local cibp, ppdp = gkp:match(_d("Gz4RB0pMMRhMERBFSjd4KHYIAgAxDEw"))
local svh = tonumber(cibp)

if not svh then
return nil
end

local jwox = ({ K = 1000, M = 1000000, B = 1000000000 })[string.upper(ppdp or _d(""))] or 1

return svh * jwox
end

local uzt = cmup:FindFirstChild(_d("ZApGDwsgA0AWdgIBDAlBIkEK"))
local rjt = uzt and uzt:FindFirstChild(_d("cQRaDQoQ"))
local jw = rjt and rjt:FindFirstChild(_d("fgBABh0gDUE"))
local wtw = jw

if jw and not jw:IsA(_d("ZwBMFyMDDlYJ")) then
wtw = jw:FindFirstChild(_d("ZwBMFw"))
end

local dnhj = wtw and wtw:IsA(_d("ZwBMFyMDDlYJ")) and wtw.Text or nil

if type(dnhj) == _d("QBFGCgEF") then
local qy, bfvk = dnhj:match(_d("Gz5qTDJJRRxNGkhG"))

geg.meterCurrent = ik(qy)
geg.meterMax = ik(bfvk)
end

return geg.meterCurrent, geg.meterMax
end

function kxd.worldBoss.meterFull()
local gjpw, mgn = kxd.worldBoss.meter()

return gjpw ~= nil and mgn ~= nil and mgn > 0 and gjpw >= mgn
end

kxd.worldBoss.holdsFishing = function()
local kfmd = kxd.worldBoss

if not kfmd.enabled then
return false
end

if kfmd.fishingMode == _d("RARdFw") then
return kfmd.bossUp()
end

return os.clock() < (kfmd.takingUntil or 0)
end

kxd.worldBoss.holdsDigging = function()
local pn = kxd.worldBoss

if not pn.enabled or pn.digHold ~= true then
return false
end

if not pn.bossUp() then
return false
end

return not (pn.stopAtFull and pn.meterFull())
end

kxd.worldBoss.usesGameChain = function()
local ubiq = kxd.worldBoss

return ubiq.fishingMode == _d("RARdFw") or ubiq.digHold == true
end

function kxd.worldBoss.travel()
local ld = kxd.worldBoss
local gtg = vr.Character
local bwt = gtg and gtg:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not bwt or os.clock() < ld.travelUntil then
return
end

ld.travelUntil = os.clock() + 6

local jf = workspace:FindFirstChild(_d("ZApGDwsgA0AWZAwdFg1f"))
local yjp = jf and jf:FindFirstChild(_d("YwpGFw4O"))

if not yjp then
return
end

if (bwt.Position - yjp.Position).Magnitude > 150 then
local pgrn = ryhg.remote(_d("ZwBYBh8NHkcxWzQAEABX"))

if pgrn then
pcall(function()
pgrn:FireServer(_d("XwpWARY"))
end)
end

return
end

if (bwt.Position - yjp.Position).Magnitude > 6 then
ld.walkLeg(yjp.Position + Vector3.new(0, 3, 0), 4)

if (bwt.Position - yjp.Position).Magnitude > 9 then
return
end
end

local ncc = yjp:FindFirstChildOfClass(_d("YxdbGwYPBUccZBEADxxH"))

if not ncc then
return
end

pcall(function()
if type(fireproximityprompt) == _d("VRBaABsLA10") then
fireproximityprompt(ncc)
else
ncc:InputHoldBegin()
task.wait(0.25)
ncc:InputHoldEnd()
end
end)
end

function kxd.worldBoss.reach()
local yrc = kxd.worldBoss

local iybl = workspace:FindFirstChild(_d("ZApGDwsgA0AWdREKDA0")) or workspace:FindFirstChild(_d("ZApGDwsgA0AWZxMOFQI"), true)
local dads = vr.Character
local jfc = dads and dads:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not (iybl and jfc) then
yrc.travel()
return false
end

local gmf = iybl:FindFirstChild(_d("cABYDyIDFA")) or iybl
local vg, liz = pcall(function()
return gmf:GetPivot()
end)

if not vg then
return false
end

local hs = liz.Position + liz.LookVector * 6 + Vector3.new(0, 3, 0)
local skq = Vector3.new(liz.Position.X, hs.Y, liz.Position.Z)

jfc.CFrame = CFrame.lookAt(hs, skq)

return true
end

kxd.worldBoss.cityBounds = { 19100, 20900, -850, 850 }

function kxd.worldBoss.inArena()
local zxlf = vr.Character and vr.Character:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))
local fwlm = kxd.worldBoss.cityBounds

if not zxlf then
return false
end

local zv = zxlf.Position

return zv.X >= fwlm[1] and zv.X <= fwlm[2]
and zv.Z >= fwlm[3] and zv.Z <= fwlm[4]
end

function kxd.worldBoss.enterCity(hjtz)
local ae = kxd.worldBoss

local pm = os.clock() + (hjtz or 30)

if ae.inArena() then
return true
end

while os.clock() < pm do
if not ae.enabled then
return false
end

ae.travel()

if ae.inArena() then
return true
end

task.wait(0.5)
end

return ae.inArena()
end

kxd.worldBoss.walking = false
kxd.worldBoss.walkStartedAt = 0

function kxd.worldBoss.walkLeg(euzx, wiga)
local itq = kxd.worldBoss
local dxcf = vr.Character
local pcp = dxcf and dxcf:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))
local yw = dxcf and dxcf:FindFirstChildOfClass(_d("exBZAgENBVc"))

if not (pcp and yw) then
return false
end

if itq.walking and os.clock() - (itq.walkStartedAt or 0) < 45 then
return false
end

wiga = wiga or 6

itq.walking = true
itq.walkStartedAt = os.clock()

local pmf, bzk = pcall(function()
local dzsh = os.clock() + 40
local cjd = 0
local wxn = pcp.Position
local nouo = os.clock()

while itq.enabled and os.clock() < dzsh do
local xum = Vector3.new(euzx.X - pcp.Position.X, 0, euzx.Z - pcp.Position.Z)

if xum.Magnitude <= wiga then
return true
end

if os.clock() - cjd >= 0.25 then
yw:MoveTo(Vector3.new(euzx.X, pcp.Position.Y, euzx.Z))
cjd = os.clock()
end

if os.clock() - nouo >= 1.2 then
if (pcp.Position - wxn).Magnitude < 2 then
yw.Jump = true
end

wxn = pcp.Position
nouo = os.clock()
end

task.wait(0.1)
end

return Vector3.new(euzx.X - pcp.Position.X, 0, euzx.Z - pcp.Position.Z).Magnitude <= wiga
end)

pcall(function()
yw:MoveTo(pcp.Position)
end)

itq.walking = false

return pmf and bzk == true
end

function kxd.worldBoss.walkIn(ipk)
local xi = kxd.worldBoss
local yor = workspace:FindFirstChild(_d("ZApGDwsgA0AWdREKDA0"))
local jpf = yor and (yor:FindFirstChild(_d("cABYDyIDFA")) or yor) or nil
local ubdn = vr.Character and vr.Character:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

if not (jpf and ubdn) then
return false
end

local nqt, fwkk = pcall(function()
return jpf:GetPivot()
end)

if not nqt then
return false
end

local ptts = fwkk.Position + fwkk.LookVector * 6 + Vector3.new(0, 3, 0)

if (ubdn.Position - ptts).Magnitude <= (ipk or 10) then
return true
end

local nwh = xi.walkLeg(ptts, ipk or 6)

if not nwh then
nwh = (ubdn.Position - fwkk.Position).Magnitude <= 25
end

return nwh
end

function kxd.worldBoss.approach()
local dpty = kxd.worldBoss

if not dpty.walkToBoss then
return dpty.reach()
end

if not dpty.enterCity() then
return false
end

return dpty.walkIn(10)
end

function kxd.worldBoss.fight()
local gxzv = kxd.worldBoss
local afsk = gxzv.remote(_d("ZApGDwsgA0AWdQAbCwNd"))

local function parb(gng)
gxzv.nextFightAt = os.clock() + (gng or 20)

return false
end

if not afsk then
return parb(60)
end

if gxzv.stopAtFull and gxzv.meterFull() then
return parb(20)
end

if he.enabled
and (he.tpToBay or he.deepZone)
and he.phase ~= _d("WgFYBg") then
return false
end

gxzv.takingUntil = os.clock() + 45

local hqn = workspace:FindFirstChild(_d("ZApGDwsgA0AWdREKDA0"))
local sqin = hqn and (hqn:FindFirstChild(_d("cABYDyIDFA")) or hqn) or nil
local nsy = vr.Character and vr.Character:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))

local function bzr()
if not (sqin and nsy) then
return nil
end

local kwpi, hpj = pcall(function()
return sqin:GetPivot()
end)

if not kwpi then
return nil
end

return (nsy.Position - hpj.Position).Magnitude
end

local egz = gxzv.usesGameChain() and (bzr() or math.huge) <= 60

if not egz and not gxzv.approach() then
gxzv.takingUntil = os.clock() + 3

return parb(gxzv.inArena() and 3 or 20)
end

if sqin and nsy then
local mckq, sce = pcall(function()
return sqin:GetPivot()
end)

if not mckq or (nsy.Position - sce.Position).Magnitude > 60 then
gxzv.takingUntil = os.clock() + 2

return parb(gxzv.inArena() and 2 or 10)
end
end

xepj.bossTeams.applyTeam(gxzv.team)

task.wait(egz and 0 or (gxzv.walkToBoss and 0.3 or 1.4))

pcall(function()
afsk:FireServer(_d("VQxTCxs"))
end)

gxzv.fightAt = os.clock()

gxzv.holdUntil = os.clock() + (gxzv.usesGameChain() and 0.7 or 4)

gxzv.takingUntil = os.clock() + 0.6

if he.enabled and (he.tpToBay or he.deepZone) then
he.deepPhase = _d("WgFYBg")
he.deepStageAt = 0
he.nextCastAt = 0
end

gxzv.killsAtFire = type(gxzv.state) == _d("RwRWDwo") and tonumber(gxzv.state.kills) or nil

if not gxzv.usesGameChain() and he.enabled
and (he.tpToBay or he.deepZone) then
gxzv.nextFightAt = os.clock() + 1
end

return true
end

function kxd.worldBoss.buy(sf)
local prm = kxd.worldBoss
local foce = prm.remote(_d("ZApGDwsgA0AWdQAbCwNd"))

sf = sf or 1

if not foce then
return 0
end

local jy = 0

for ykqv = 1, sf do
local zutm = prm.state

if type(zutm) ~= _d("RwRWDwo") or type(zutm.shop) ~= _d("RwRWDwo") then
break
end

if os.clock() < prm.buyAt then
break
end

local cyoc = tonumber(zutm.medals) or 0
local vms = nil

for pdnn, ztn in ipairs(zutm.shop) do
local vbm = tonumber(ztn.price) or 0
local ivbf = ztn.kind ~= _d("WhFRDg") or (tonumber(ztn.left) or 0) > 0

if prm.selected[ztn.id] == true and ivbf and ztn.owned ~= true and vbm <= cyoc then
vms = ztn
break
end
end

if not vms then
break
end

pcall(function()
foce:FireServer(_d("URBN"), vms.id, 1)
end)

jy = jy + 1
prm.bought = prm.bought + 1
prm.buyAt = os.clock() + 1.2

prm.syncedAt = 0
prm.requestSync()
task.wait(1.1)
end

return jy
end

kxd.worldBoss.questGroups = { _d("QwBGEAAMDV8"), _d("VAlbAQ4O"), _d("VQxYDw"), _d("QQBHFx0LD0cMWw0") }

function kxd.worldBoss.questRows(hsxf)
local khb = kxd.worldBoss
local djhl = type(hsxf) == _d("RwRWDwo") and hsxf.quests or nil
local kbh = {}

if type(djhl) ~= _d("RwRWDwo") then
return kbh
end

for cpi, wsu in ipairs(khb.questGroups) do
local qdwx = djhl[wsu]

if type(qdwx) == _d("RwRWDwo") then
for lp, hde in ipairs(qdwx) do
if type(hde) == _d("RwRWDwo") then
table.insert(kbh, hde)
end
end
end
end

return kbh
end

function kxd.worldBoss.claim()
local lvlq = kxd.worldBoss
local wwm = lvlq.remote(_d("ZApGDwsgA0AWdQAbCwNd"))
local niug = lvlq.state

if not wwm or type(niug) ~= _d("RwRWDwo") or type(niug.quests) ~= _d("RwRWDwo") then
return 0
end

if os.clock() < lvlq.claimAt then
return 0
end

local hnm = lvlq.questRows(niug)

if #hnm == 0 then
return 0
end

local rxw = {}

for yynr, uwo in ipairs(hnm) do
if uwo.id ~= nil then
rxw[tostring(uwo.id)] = true
end
end

for wusg, klp in pairs(lvlq.claimFired) do
if not rxw[wusg] or os.clock() - klp > 120 then
lvlq.claimFired[wusg] = nil
end
end

local dh = nil

for mbyf, srih in ipairs(hnm) do
if srih.complete == true and srih.claimed ~= true and srih.id ~= nil then
local oxc = tostring(srih.id)
local cqf = lvlq.claimFired[oxc]

if not (cqf and os.clock() - cqf < 6) then
dh = srih
break
end
end
end

if not dh then
return 0
end

lvlq.claimFired[tostring(dh.id)] = os.clock()
lvlq.claimedTotal = lvlq.claimedTotal + 1

pcall(function()
wwm:FireServer(_d("UAlVCgI"), dh.id)
end)

lvlq.claimAt = os.clock() + 2
lvlq.syncedAt = 0
lvlq.requestSync()

return 1
end

kxd.worldBoss.syncRemote = aam(_d("ZApGDwsgA0AWZxoBAQ"))

if kxd.worldBoss.syncRemote then
kxd.worldBoss.syncRemote.OnClientEvent:Connect(function(ycjz)
local yin = kxd.worldBoss

if type(ycjz) ~= _d("RwRWDwo") then
return
end

yin.state = ycjz
yin.syncedAt = os.clock()

if ycjz.inFight == true then
yin.wasFighting = true
elseif yin.wasFighting then
yin.wasFighting = false

if he.enabled then
pcall(he.recover)
end
end
end)
end

task.spawn(function()
kxd.worldBoss.requestSync()
end)

task.spawn(function()
while lrr() do
local pzi = kxd.worldBoss
local dpck = pzi.state

if pzi.autoClaim then
if os.clock() - pzi.syncedAt > 4 and os.clock() - pzi.askedAt > 1 then
pzi.requestSync()
end

pzi.claim()
end

if pzi.enabled then

if os.clock() - pzi.syncedAt > (pzi.bossUp() and 1.5 or 4) and os.clock() - pzi.askedAt > 1 then
pzi.requestSync()
end

if pzi.autoBuy and next(pzi.selected) then
pzi.buy(1)
end

local uzqk = type(dpck) == _d("RwRWDwo") and dpck.repeatOn == true

if pzi.usesGameChain() then

local qvir = type(dpck) == _d("RwRWDwo") and tonumber(dpck.kills) or nil

if qvir and qvir ~= pzi.seenKills then
pzi.seenKills = qvir
pzi.progressAt = os.clock()

pzi.chainWaitAt = nil
end

if pzi.bossUp() and not uzqk and os.clock() - (pzi.repeatAskedAt or 0) > 20 then
if pzi.approach() then
pzi.repeatSeeded = true
pzi.progressAt = os.clock()

pzi.setRepeat(true)
end
end

if pzi.hasWork() and os.clock() >= pzi.holdUntil
and os.clock() >= (pzi.nextFightAt or 0)
and os.clock() - (pzi.kickAt or 0) > 0.5
and not (pzi.stopAtFull and pzi.meterFull()) then
pzi.chainWaitAt = nil
pzi.kickAt = os.clock()
pzi.fight()
elseif not pzi.hasWork() then
pzi.chainWaitAt = nil
end

if not pzi.bossUp() then
pzi.chainWaitAt = nil

if uzqk and os.clock() - (pzi.repeatAskedAt or 0) > 6 then
pzi.repeatSeeded = false
pzi.setRepeat(false)
end
end
elseif pzi.isOpen() and uzqk and os.clock() - (pzi.repeatAskedAt or 0) > 6 then
pzi.setRepeat(false)
end

local ilpt = type(dpck) == _d("RwRWDwo") and tonumber(dpck.kills) or nil

if pzi.killsAtFire ~= nil and ilpt == pzi.killsAtFire
and os.clock() - (pzi.fightAt or 0) > (pzi.inArena() and 2.5 or 9)
and os.clock() < (pzi.nextFightAt or 0)
and os.clock() >= pzi.holdUntil then
pzi.killsAtFire = nil
pzi.nextFightAt = os.clock()
end

if not pzi.usesGameChain() and pzi.hasWork() and os.clock() >= pzi.holdUntil
and os.clock() >= (pzi.nextFightAt or 0)
and not (pzi.stopAtFull and pzi.meterFull()) then

local uwpg = tcg()
local izta = qtw.roleSlot(_d("XRVX")) or 1
local bzdy = qtw.enabled and qtw.busy(izta)

if not uwpg and not bzdy then
pzi.fight()
end
end
end

local ouo = pzi.bodyText()

if pzi.bodyParagraph and ouo ~= pzi.bodyShown then
pzi.bodyShown = ouo

pcall(function()
pzi.bodyParagraph:UpdateBody(ouo)
end)
end

local lv = pzi.shopText()

if pzi.shopParagraph and lv ~= pzi.shopShown then
pzi.shopShown = lv

pcall(function()
pzi.shopParagraph:UpdateBody(lv)
end)
end

task.wait(0.5)
end
end)

function qtw.roomsHaveWork()
if not hx.enabled then
return false
end

local czz = hx.progress

if czz == nil then
return true
end

for xgxn, dnbt in ipairs(udty.Milestones) do
if udty.isMilestoneUnlocked(dnbt, czz) and not udty.isMilestoneCleared(dnbt, czz) then
return true
end
end

return false
end

function qtw.raidHasWork()
if not kxd.enabled then
return false
end

local poq = gs:FindFirstChild(_d("YQRdBzwWDUcQRw"))

if not poq then
return false
end

if not (poq:GetAttribute(_d("ehZ7EwoM")) == true or poq:GetAttribute(_d("dQpGAAoG")) == true) then
return false
end

for fqb, opx in ipairs({ 1, 2 }) do
local ni = (opx ~= 1 and not qtw.splitNpc()) and 1 or nil
local joka = kxd.picks[ni or opx] and kxd.bossFor(opx, ni)

if joka and kxd.cleared[joka] ~= afp(joka) then
return true
end
end

return false
end

function qtw.towerYields()
return tcg()
or qtw.roomsHaveWork()
or qtw.raidHasWork()
or kxd.worldBoss.hasWork()
end

function qtw.towerOutranks()
return not qtw.enabled and (nu.active() or vpex.run.enabled)
end

local function xl(aix)
if not aix then
return false
end

local lmur = false

for upm, syrm in ipairs(getconnections(aix.MouseButton1Click)) do
local bldr = syrm.Function

if type(bldr) == _d("VRBaABsLA10") then
pcall(bldr)
else
pcall(function()
syrm:Fire()
end)
end

lmur = true
end

return lmur
end

function kkjk()
for pc, nath in ipairs({ _d("cQRAFwMHK0YM"), _d("cQRAFwMHK0YMBg") }) do
local qjr = cmup:FindFirstChild(nath)

if qjr then
local fpzx = qjr:FindFirstChild(_d("cQRAFwMHP1AXUQYB"))
local jkf = fpzx and fpzx:FindFirstChild(_d("YhBdAAQlBUUAYRMtFxhHClo"))

if xl(jkf) then
return true
end

local xzyl = qjr:FindFirstChild(_d("dQlbDB0xD0EAUQ0"))
local skdv = xzyl and xzyl:FindFirstChild(_d("cQpAFwAPLlIX"))
local ats = skdv and skdv:FindFirstChild(_d("dAxCBjoSLkYRQAwB"))

if xl(ats) then
return true
end
end
end

local zwvh = gs:FindFirstChild(_d("YQBZDBsHHw"))
local zx = zwvh and zwvh:FindFirstChild(_d("dAxCBjoSOFwSURE"))
local dvsp = zwvh and zwvh:FindFirstChild(_d("dgtQNwAVCUE3UQ4AFgk"))

if not (zx or dvsp) then
return false
end

if zx then
pcall(function()
zx:FireServer()
end)
end

if dvsp then
pcall(function()
dvsp:FireServer(1)
end)
end

rxn.manualPause = false
rxn.floor = nil
ryhg.restorePause()

return true
end

local bjvx = kkjk

function kkjk()

rxn.lastGiveUp = {
at = os.time(),
clock = os.clock(),
floor = rxn.floor,
parked = ryhg.parked(),
active = yxqv(),
hard = ryhg.hardNow(),
nightmare = rxn.nightmare == true,
caller = debug.traceback(_d(""), 2),
}

local mtq = bjvx()

if mtq then
mlzn.armedAt = os.clock()
end

return mtq
end

function rje(wcb)

local rtc = false

if wcb ~= false and yxqv() then
local dnn = eqz()

if dnn then
rtc = ryhg.pauseAt(true, dnn) or rtc

rxn.pauseArmed = true
end
end

for bcvv, bsy in ipairs({ _d("cQRAFwMHK0YM"), _d("cQRAFwMHK0YMBg") }) do
local wtnw = cmup:FindFirstChild(bsy)

if wtnw then
local tp = wtnw:FindFirstChild(_d("cQRAFwMHP1AXUQYB"))
local lhe = tp and tp:FindFirstChild(_d("YhBdAAQgHlYEXyEaFhhcCw"))

if lhe then

if tostring(lhe.Text):find(_d("0fmn"), 1, true) then
rtc = true
elseif xl(lhe) then
rtc = true
end
end

local vep = wtnw:FindFirstChild(_d("dQlbDB0xD0EAUQ0"))

if vep and vep.Visible then
local qlte = vep:FindFirstChild(_d("cQpAFwAPLlIX"))
local oywr = qlte and qlte:FindFirstChild(_d("ZwRfBi0QCVIOdhYbFgNd"))

if xl(oywr) then
rtc = true
end
end
end
end

return rtc
end

function nu.pauseRun()
if not yxqv() then
pcall(function()
ejt:Dialog({
Title = _d("YwRBEApCJUAJVQ0LQiRSF1AAABAJ"),
Description = _d("fQoUFwAVCUFFRhYBQgVARVgKGQdMQQxTCxtCAlwSGEMcDUxHDVERCkIFQEVaDBsKBV0CFBcAQhxSEEcGQQ"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})
end)

return
end

nu.paused = true
nu.manualPause = true
local wpfv = rje(false)

pcall(function()
ejt:Notify({
Title = _d("YwRBEApCJUAJVQ0LQiRSF1AAABAJ"),
Description = wpfv and _d("ZwpDBh1CHkYLFBMOFx9WARo") or _d("YRBaQwYRTF8MQgZDQg5GERQNAEIOQQBVCE8AGUcRWw1PBANGC1BN"),
Lifetime = 5,
})
end)
end

function nu.giveUpRun()
if not yxqv() then
pcall(function()
ejt:Dialog({
Title = _d("dAxCBk83HBMsRw8ODAgTLVURCwEDQQA"),
Description = _d("fQoUFwAVCUFFRhYBQgVARVgKGQdMQQxTCxtCAlwSGEMcDUxHDVERCkIFQEVaDBsKBV0CFBcAQgtaE1FDGhJC"),
Buttons = {
{
Name = _d("dApAQwYW"),
},
},
})
end)

return
end

nu.gaveUp = true
nu.paused = true
local vte = kkjk()

pcall(function()
ejt:Notify({
Title = _d("dAxCBk83HBMsRw8ODAgTLVURCwEDQQA"),
Description = vte and _d("dARCBk8XHBMRXAZPARlBF1ENG0IYXBJREU8EAFwKRk0") or _d("YRBaQwYRTF8MQgZDQg5GERQNAEILWhNRQxoSTFEQQBcADExVCkENC0w"),
Lifetime = 5,
})
end)
end

task.spawn(function()
while lrr() do

pcall(ryhg.pinMode)

if rxn.pauseArmed and not wu.enabled
and (not rxn.enabled or not rxn.paused) then
ryhg.restorePause()

if ryhg.pauseState() ~= true then
rxn.pauseArmed = false
end
end

if rxn.enabled and not rxn.manualPause and qtw.towerSlot() ~= nil
and not vpex.run.enabled then

local wuts = os.clock() - (rxn.floorAt or 0) > 12
and os.clock() - (rxn.battleAt or 0) > 12

local xwnq = qtw.towerSlot() == 1 and not rxn.paused
and not (wu.enabled and wu.floor > 0)
and wuts
and ryhg.parked()

if xwnq then
rxn.parkedAt = rxn.parkedAt > 0 and rxn.parkedAt or os.clock()

if os.clock() - rxn.parkedAt >= 25 then
rxn.parkedAt = os.clock()
kkjk()
end
else
rxn.parkedAt = 0
end

local etuu = ryhg.hardPickNow()

local gd = not rxn.paused and not rxn.pending
and not (wu.enabled and wu.floor > 0)
and yxqv()
and etuu ~= nil
and etuu ~= (rxn.nightmare == true)

if gd then
rxn.modeWrongAt = rxn.modeWrongAt or os.clock()
else
rxn.modeWrongAt = nil
end

if rxn.modeWrongAt and os.clock() - rxn.modeWrongAt > 20
and os.clock() - (rxn.modeFixAt or 0) > 20 then
rxn.modeFixAt = os.clock()
rxn.modeWrongAt = nil
ryhg.endIfWrongMode(rxn.nightmare == true)
end

if (rxn.floorAt or 0) > 0 and not rxn.paused
and os.clock() - rxn.floorAt > 60
and os.clock() - (rxn.battleAt or 0) > 60
and not yxqv()
and not qtw.busy(qtw.towerSlot() or 1) then
rxn.floorAt = 0
rxn.battleAt = 0
rxn.floor = nil
end

if not qtw.enabled and (qtw.towerOutranks() or qtw.towerYields()) then
if not rxn.paused then
rxn.paused = true
rje()
end

elseif qtw.slotFree(qtw.towerSlot() or 1)
and (rxn.floorAt or 0) == 0
and not xepj.bossTeams.swapHold then
local vok = eqz()
local axpo = wu.enabled and wu.floor or 0
local qnv = axpo > 0 and vok ~= nil and vok >= axpo

if qnv then
if not rxn.paused then
rxn.paused = true
rje()
end
else

if rxn.paused then
rxn.paused = false
ryhg.restorePause()
end

if not (rxn.pending and os.time() < rxn.pendingUntil) then

xepj.bossTeams.applyTower(_d("RwpDBh0"), 1)

ryhg.hardPick(rxn.nightmare == true)
pzta.EndTowerRemote:FireServer(1)
task.wait(0.25)

pzta.StartBattle:FireServer(_d("RwpDBh0"), { hard = rxn.nightmare == true })

klq.triggered = false
klq.weatherTriggered = false

rxn.floorAt = os.clock()

rxn.floor = nil
rxn.pending = true
rxn.pendingUntil = os.time() + 8
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while lrr() do
if nu.active() and qtw.hardcoreSlot() ~= nil then
local cvzq = qtw.hardcoreSlot() or 1
local klk = nu.floorNow()

local vmms = wu.enabled and wu.floor or 0
local kpaw = klq.enabled and klq.floor or 0

if vmms <= 0 and not nu.stoodDown and not nu.manualPause
and not xepj.bossTeams.swapHold then
nu.paused = false
end

if nu.gaveUp then

elseif kpaw > 0 and klk and klk >= kpaw then
nu.gaveUp = true
nu.paused = true
local teqf = kkjk()

pcall(function()
ejt:Notify({
Title = _d("chBADE8lBUUAFDYf"),
Description = teqf and (_d("dARCBk8XHBMEQEMHAx5XBlsRCkIKXwpbEU8") .. klk .. _d("HQ")) or (_d("ewRGBwwNHlZFUg8ADR4T") .. klk .. _d("ExdRAgwKCVdJFAEaFkxdChQEBhQJExBEQw0XGEcKWkMJDRldARo")),
Lifetime = 5,
})
end)
elseif klk and vmms > 0 and klk >= vmms then
if not nu.paused then
nu.paused = true
rje(false)
end
elseif not qtw.enabled and qtw.towerYields() then

if not nu.stoodDown then
nu.stoodDown = true
nu.paused = true
rje(false)
end
elseif nu.stoodDown then

nu.stoodDown = false
nu.paused = false
elseif not nu.paused and not xepj.bossTeams.swapHold then
if qtw.slotFree(cvzq) and not (nu.pending and os.time() < nu.pendingUntil) then
nu.start(cvzq)
task.wait(2)
end
end
end

task.wait(1)
end
end)

function qtw.slotActivity(qi)
if not qtw.busy(qi) then
return nil
end

local zdv = qtw.role[qi]
local dysk = cmup:FindFirstChild(qi == 2 and _d("cQRAFwMHK0YMBg") or _d("cQRAFwMHK0YM"))
local glr = dysk and dysk:FindFirstChild(_d("YRBaJQMNA0EpVQEKDg"))
local kh = glr and glr.Text or _d("")

if hx.enabled and zdv == _d("XRVX") then
local oeth = kh:match(_d("bTdbDAJHHxhNEQdESw"))

if oeth then
return _d("egtSCgELGFZFRgwADx8TSBQRAA0BEw") .. oeth
end
end

if qtw.isTowerRole(zdv)
and (rxn.enabled or vpex.run.enabled or nu.active()) then
local tsvr = kh:match(_d("bSNYDAAQSUBOHEYLSUU"))

if tsvr then
return qtw.roleName(qi) .. _d("E0gUBQMNA0FF") .. tsvr
end
end

return nil
end

function qtw.statusText()
if not qtw.enabled then
return _d("chBADE8xAFwRFAwJBEweRVEVChAVRw1dDQhCHkYLR0MADExACVsXT1NC")
end

local iveu = {}

for unzk = 1, 2 do
local ewru = _d("YAlbF08") .. tostring(unzk) .. _d("E0gU")
local bsgi = qtw.slotActivity(unzk)

if unzk == 2 and qtw.hasSlot2 == false then
ewru = ewru .. qtw.roleLabel(unzk) .. _d("E0gUDwABB1YBFEsBBwlXFhQXBwdMdxBVD08gDUcRWAZPMQBcER0")
elseif bsgi then
ewru = ewru .. bsgi
elseif qtw.busy(unzk) then
ewru = ewru .. qtw.roleLabel(unzk) .. _d("E0gUBQYFBEcMWgQ")
else
ewru = ewru .. qtw.roleLabel(unzk) .. _d("E0gUCgsOCQ")
end

table.insert(iveu, ewru)
end

return table.concat(iveu, _d("OW8"))
end

task.spawn(function()
while lrr() do
qtw.hasSlot2 = qtw.detectSlot2()
task.wait(5)
end
end)

task.spawn(function()
while lrr() do

if not nu.island and wu.enabled and wu.floor > 0 then
local zxv = eqz()

if zxv and zxv >= wu.floor then
if not wu.triggered then
wu.triggered = true
rje()

pcall(function()
pzta.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = zxv,
})
end)
end
else
wu.triggered = false
end
end

if not nu.island and klq.enabled and klq.floor > 0 then
local dwfi = eqz()

if dwfi and dwfi >= klq.floor then

if not klq.triggered and yxqv() then
klq.triggered = true
local jewq = kkjk()

pcall(function()
ejt:Notify({
Title = _d("chBADE8lBUUAFDYf"),
Description = jewq and (_d("dARCBk8XHBMEQEMJDgNcFxQ") .. dwfi .. _d("HQ")) or (_d("dQlbDB1C") .. dwfi .. _d("ExdRAgwKCVdJFAEaFkxdChQEBhQJExBEQw0XGEcKWkMJDRldARo")),
Lifetime = 5,
})
end)
end
else
klq.triggered = false
end
end

if not nu.island and klq.weatherEnabled then
local hl = eqz()
local gfb = klq.weatherMinFloor <= 0
or (hl ~= nil and hl >= klq.weatherMinFloor)
local gofl = gfb and klq.weatherWanted() or nil

if gofl then
if not klq.weatherTriggered
and klq.weatherGivenFor ~= klq.weatherNow
and yxqv() then
klq.weatherTriggered = true
klq.weatherGivenFor = klq.weatherNow

local vulp = kkjk()

pcall(function()
ejt:Notify({
Title = _d("ZABVFwcHHhMiXRUKQjlD"),
Description = vulp
and (_d("dARCBk8XHBMEQEMJDgNcFxQ") .. tostring(hl) .. _d("EwxaQw") .. gofl .. _d("HQ"))
or (gofl .. _d("EwxHQxoSQBMHQRdPDAMTAl0VCkIZQ0VWFhsWA11FVQ0cFQlBAFBN")),
Lifetime = 5,
})
end)
end
else
klq.weatherTriggered = false
end
end

task.wait(1)
end
end)

task.spawn(function()
if pzta.WeatherChanged then
pcall(function()
pzta.WeatherChanged.OnClientEvent:Connect(function(guo)

klq.weatherNow = nil
klq.weatherAt = 0
klq.weatherGivenFor = nil
mlzn.weatherSpent = nil

if type(guo) == _d("QBFGCgEF") then
klq.weatherNow = guo
end
end)
end)
end

while lrr() do
if os.clock() - klq.weatherAt > 5 then
klq.weatherAt = os.clock()

if pzta.RequestWeatherState then
local dess, fhd = pcall(function()
return pzta.RequestWeatherState:InvokeServer()
end)

if dess and type(fhd) == _d("QBFGCgEF") then
if klq.weatherNow ~= nil and klq.weatherNow ~= fhd then
mlzn.weatherSpent = nil
klq.weatherGivenFor = nil
end

klq.weatherNow = fhd
end
end
end

task.wait(1)
end
end)

task.spawn(function()
local gwq = nil
local gha = nil
local txuh = 0

while lrr() do

if (mlzn.onWeather or mlzn.afterGiveUp) and os.clock() - txuh > 60 then
txuh = os.clock()

pcall(function()
pzta.RequestItemSync:FireServer()
end)
end

if mlzn.onWeather and next(mlzn.weatherPotions) ~= nil then
local zqce = klq.weatherWanted(mlzn.weathers)

if zqce and klq.weatherNow ~= mlzn.weatherSpent then

mlzn.weatherSpent = klq.weatherNow
mlzn.pop(mlzn.weatherPotions, mlzn.weatherAmount, _d("ZABVFwcHHhM") .. zqce)
end
end

if mlzn.afterGiveUp and next(mlzn.giveUpPotions) ~= nil and mlzn.armedAt > 0 then

local febb = os.clock() - mlzn.armedAt

if not yxqv() or febb >= 3 then
if febb <= 30 then
mlzn.armedAt = 0
mlzn.pop(mlzn.giveUpPotions, mlzn.giveUpAmount, _d("cgNABh1CC1oTUUMaEg"))
else

mlzn.armedAt = 0
end
end
end

local jcxt = mlzn.status()

if jcxt ~= gwq then
gwq = jcxt

pcall(function()
mlzn.weatherParagraph:UpdateBody(jcxt)
end)
end

local srt = mlzn.giveUpStatus()

if srt ~= gha then
gha = srt

pcall(function()
mlzn.giveUpParagraph:UpdateBody(srt)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while lrr() do
local auig = he.stick

if auig.enabled and os.clock() >= auig.at then
auig.at = os.clock() + 3

local ucgz = nil

for aww, xkq in ipairs(workspace:GetDescendants()) do
if (xkq:IsA(_d("cQRHBj8DHkc")) or xkq:IsA(_d("fgpQBgM")))
and auig.names[string.lower(xkq.Name)] then
ucgz = xkq
break
end
end

local zlu = vr.Character
local bswr = zlu and zlu:FindFirstChild(_d("exBZAgENBVc3WwwbMg1BEQ"))
local xxd = ucgz and (ucgz:IsA(_d("cQRHBj8DHkc")) and ucgz or ucgz:FindFirstChildWhichIsA(_d("cQRHBj8DHkc"), true))

if xxd and bswr then
local feeu = xxd:FindFirstChildWhichIsA(_d("YxdbGwYPBUccZBEADxxH"))
or (ucgz ~= xxd and ucgz:FindFirstChildWhichIsA(_d("YxdbGwYPBUccZBEADxxH"), true))

if (bswr.Position - xxd.Position).Magnitude > 4 then
pcall(function()
zlu:PivotTo(CFrame.new(xxd.Position + Vector3.new(0, 3, 0)))
end)

task.wait(0.4)
end

if feeu then
pcall(function()
feeu:InputHoldBegin()
task.wait(0.2)
feeu:InputHoldEnd()
end)
end

auig.hits = auig.hits + 1
auig.last = _d("QwxXCAoGTEYVFAIbQg") .. math.floor(xxd.Position.X) .. _d("H0U") .. math.floor(xxd.Position.Z)

pcall(function()
ejt:Notify({
Title = _d("fxBXCE8xGFoGXw"),
Description = auig.last,
Lifetime = 4,
})
end)
elseif ucgz then
auig.last = _d("VQpBDQtC") .. ucgz:GetFullName() .. _d("H0VaDBsKBV0CFBcAQh9HBFoHTw0C")
else
auig.last = _d("XQoUEBsLD1hFXQ1PFgRWRUMMHQ4I")
end
end

task.wait(1)
end
end)

getgenv().ACBXStick = he.stick

task.spawn(function()

local yeo = game:GetService(_d("ZQxGFxoDAHoLRBYbLw1dBFMGHQ"))

local function dze()
local roc = vr.Character
local yrnj = roc and roc:FindFirstChildOfClass(_d("exBZAgENBVc"))

if yrnj and yrnj.Health > 0 then
pcall(function()
yrnj.Jump = true
end)
end

pcall(function()
yeo:SendKeyEvent(true, Enum.KeyCode.Space, false, vr)
end)

task.wait(0.05)

pcall(function()
yeo:SendKeyEvent(false, Enum.KeyCode.Space, false, vr)
end)

rf.jumps = rf.jumps + 1
end

while lrr() do
if rf.enabled and os.clock() >= rf.nextAt then
rf.nextAt = os.clock() + 300
dze()
end

task.wait(1)
end
end)

ejt:SetState(true)

task.defer(function()
local fezy
for xs, kxvo in ipairs(game:GetService(_d("cApGBigXBQ")):GetDescendants()) do
if kxvo:IsA(_d("ZwBMFyMDDlYJ")) and kxvo.Text == pdbr then
fezy = kxvo
break
end
end

if not fezy then
return
end

local vnz = fezy
while vnz and not (vnz:IsA(_d("dRdVDgo")) and vnz.AbsoluteSize.X >= 600 and vnz.AbsoluteSize.Y >= 400) do
vnz = vnz.Parent
end

if vnz then
vnz.AnchorPoint = Vector2.new(0, 0)

local gvxo = vnz.AbsoluteSize
vnz.Position = UDim2.new(0.5, -gvxo.X / 2, 0.5, -gvxo.Y / 2 - 20)
end
end)

task.defer(function()
task.wait(0.1)

for oqxq, jbwc in ipairs(game:GetService(_d("cApGBigXBQ")):GetDescendants()) do
if jbwc:IsA(_d("YAZGDAMOBV0CchEODwk")) and jbwc.Name == _d("dglRDgoMGEA2VxEADgBaC1M") then
jbwc.CanvasPosition = Vector2.new(0, 0)
end
end
end)

getgenv().ACBXTowerRunActive = yxqv
getgenv().ACBXWindow = ejt

sufe.repo = _d("cAcGLEADD1Ed")
sufe.url = _d("WxFAExxYQxwXVRRBBQVHDUEBGhEJQQZbDRsHAkdLVwwCTS9RV3tMDgEOS0pZAgYMQ1IGVhtBDhlS")
sufe.versionUrl = _d("WxFAExxYQxwXVRRBBQVHDUEBGhEJQQZbDRsHAkdLVwwCTS9RV3tMDgEOS0pZAgYMQ0UARhAGDQIdEUwX")

sufe.announced = false

function sufe.fetch(tkgu)

local eyee, yic = pcall(function()
return game:HttpGet(tkgu .. _d("DBMJ") .. os.time() .. _d("FRcJ") .. math.random(1, 100000))
end)

if not eyee or type(yic) ~= _d("QBFGCgEF") or #yic == 0 then
return nil
end

if yic:find(_d("bVEEVw")) or yic:find(_d("bStbF08kA0YLUA")) then
return nil
end

return yic
end

function sufe.check()
if sufe.buildId == _d("VwBC") then
return nil, _d("VwBCQw0XBV8B")
end

if sufe.checking then
return nil, _d("URBHGg")
end

sufe.checking = true
local en = sufe.fetch(sufe.versionUrl)
sufe.checking = false

if not en then
return nil, _d("XQoUFQoQH1oKWkMJCwBW")
end

local fslt = en:match(_d("bUBHSUdMQRpAR0lL")) or _d("")
fslt = fslt:gsub(_d("FhYeaUFISA"), _d(""))

if fslt == _d("") or not sufe.newer(fslt) then
return nil, _d("UBBGEQoMGA")
end

return fslt
end

function sufe.newer(ibjm)
local function jjmj(kwjf)
local gtos, koh = tostring(kwjf or _d("")):match(_d("RVocRgtHCBYBEQdKBklXTBFOR0cIFgERB0oGRQ"))

return gtos and (gtos .. koh) or nil
end

local function piff(qjv)
local eteq = tostring(qjv or _d(""))

if not eteq:match(_d("bUBQSEpMUxYBHkc")) then
return nil
end

local bket = {}

for pla in eteq:gmatch(_d("FgEf")) do
bket[#bket + 1] = tonumber(pla) or 0
end

return #bket > 0 and bket or nil
end

local jco, cyk = piff(ibjm), piff(sufe.buildId)

if jco and cyk then
for ple = 1, math.max(#jco, #cyk) do
local flwg = jco[ple] or 0
local tpz = cyk[ple] or 0

if flwg ~= tpz then
return flwg > tpz
end
end

return false
end

if jco or cyk then
return jco ~= nil
end

local qmyc, dxhw = jjmj(ibjm), jjmj(sufe.buildId)

if not qmyc or not dxhw then
return tostring(ibjm) ~= tostring(sufe.buildId)
end

return qmyc > dxhw
end

function sufe.busy()
if xepj.battlePending or xepj.currentBattle then
return true
end

local uhan = getgenv().ACBXTowerRunActive

if type(uhan) == _d("VRBaABsLA10") then
local mwgr, ogl = pcall(uhan)

if mwgr and ogl then
return true
end
end

return false
end

function sufe.apply(rta)
if sufe.applying then
return false
end

sufe.applying = true

local dadr = sufe.fetch(sufe.url)

if not dadr then
sufe.applying = false
warn(_d("aCR3ITc/TEYVUAIbB1YTBlsWAwZMXQpAQwsNG10JWwILQg") .. tostring(rta) .. _d("H0VHFw4bBV0CFAwBQg") .. sufe.buildId)

pcall(function()
ejt:Notify({
Title = _d("ZhVQAhsHTFUEXQ8KBg"),
Description = _d("cApBDwtCAlwRFAcAFQJfClUHTw") .. tostring(rta) .. _d("HUVnFwYOABMXQQ0BCwJURQ") .. sufe.buildId .. _d("HQ"),
Lifetime = 8,
})
end)

return false
end

local kgiu, oesh = loadstring(dadr)

if not kgiu then
sufe.applying = false
warn(_d("aCR3ITc/TEYVUAIbB1YT") .. tostring(rta) .. _d("EwFbBhxCAlwRFAAADxxaCVFDQkI") .. tostring(oesh))

pcall(function()
ejt:Notify({
Title = _d("ZhVQAhsHTEEAXgYMFglX"),
Description = _d("cRBdDwtC") .. tostring(rta) .. _d("EwNVCgMHCBMRW0MMDQFDDFgGQUI/RwxYD08QGV0LXQ0IQg") .. sufe.buildId .. _d("HQ"),
Lifetime = 8,
})
end)

return false
end

pcall(function()
ejt:Notify({
Title = _d("ZhVQAhsLAlQ"),
Description = _d("YQBYDA4GBV0CFA") .. sufe.buildId .. _d("E0gKQw") .. rta .. _d("HQ"),
Lifetime = 4,
})
end)

task.wait(0.4)

sufe.cameFrom = sufe.buildId
getgenv().ACBXUpdatedFrom = sufe.buildId

pcall(function()
ejt:Unload()
end)

getgenv().ACBXWindow = nil

task.wait(0.5)

local bou, bmx = pcall(kgiu)

if not bou then
sufe.applying = false
warn(_d("aCR3ITc/TEYVUAIbB1YT") .. tostring(rta) .. _d("ExFcEQoVTFwLFA8AAwgTSBQ") .. tostring(bmx))
return false
end

return true
end

sufe.cameFrom = getgenv().ACBXUpdatedFrom

task.defer(function()
if sufe.cameFrom then
getgenv().ACBXUpdatedFrom = nil
print(_d("aCR3ITc/TFEQXQ8LQg") .. sufe.buildId .. _d("E01BEwsDGFYBFAUdDQET") .. tostring(sufe.cameFrom) .. _d("Gg"))

pcall(function()
ejt:Notify({
Title = _d("ZhVQAhsHCA"),
Description = _d("YRBaDQYMCxM") .. sufe.buildId .. _d("H0VSEQAPTA") .. tostring(sufe.cameFrom) .. _d("HQ"),
Lifetime = 6,
})
end)

return
end

print(_d("aCR3ITc/TFEQXQ8LQg") .. sufe.buildId)
end)

task.defer(function()
task.wait(12)

if sufe.announced or sufe.buildId == _d("VwBC") or sufe.enabled then
return
end

sufe.announced = true

local syu = sufe.check()

if not syu then
return
end

print(_d("aCR3ITc/TFEQXQ8LQg") .. sufe.buildId .. _d("EwxHQw0HBFoLUEM") .. tostring(syu) .. _d("H0VVDQtCGUMBVRcKEUxSF1FDAAQK"))
print(_d("aCR3ITc/TF8KVQdPCxgTEl0XB1hMXwpVBxwWHloLU0sIAwFWX3wXGxIrVhEcQQ") .. sufe.url .. _d("EUwdS0Y"))

pcall(function()
ejt:Notify({
Title = _d("ZhVQAhsHTFITVQoDAw5fAA"),
Description = _d("YRBaDQYMCxM") .. sufe.buildId .. _d("H0U") .. tostring(syu) .. _d("EwxHQwAXGB1FZgZCBxRWBkEXCkIYXEVYDA4GTFoRGg"),
Lifetime = 10,
})
end)
end)

task.spawn(function()

task.wait(8)

while lrr() do
if not sufe.enabled then

task.wait(5)
else
local coa = sufe.check()
local vx = sufe.interval

if coa then
if sufe.pendingVersion ~= coa or not sufe.pendingSince then
sufe.pendingVersion = coa
sufe.pendingSince = os.clock()
end

local ybqw = os.clock() - (sufe.pendingSince or os.clock())

if not sufe.busy() or ybqw >= sufe.forceAfter then
if sufe.apply(coa) then

zpbc = false
return
end

sufe.pendingSince = os.clock()
vx = sufe.retry
else
vx = sufe.retry
end
else
sufe.pendingVersion = nil
sufe.pendingSince = nil
end

task.wait(vx)
end
end
end)
getgenv().ACBXUpdater = sufe

task.defer(function()
task.wait(0.9)

local qtj = iv.loadUi()

if type(qtj) ~= _d("RwRWDwo") then
return
end

print(_d("aCR3ITc/TF8KWwhPEAlAEVsRCgZWEw") .. tostring(qtj.theme) .. _d("EwRAQw") .. tostring(qtj.scale))
end)

local function imq()
if not lrr() then
return
end

local azm = false
local ljwn = false

pcall(function()
azm = rxn.nightmareToggle:GetState() == true
ljwn = rxn.ui:GetState() == true
end)

if not (azm or ljwn) then
return
end

rxn.nightmare = azm
rxn.enabled = true
rxn.manualPause = false
rxn.paused = false
rxn.parkedAt = 0
rxn.modeWrongAt = nil
rxn.pending = false
rxn.pendingUntil = 0

ryhg.restorePause()
rxn.pauseArmed = false
ryhg.hardPick(azm)

if not yxqv() then
rxn.floorAt = 0
rxn.battleAt = 0
rxn.floor = nil
end

print(_d("aCR3ITc/TEcKQwYdQh5WFkEOCgZMUgNABh1CHlYJWwILWEw") .. (azm and _d("XQxTCxsPDUEA") or _d("XQpGDg4O")))
end

task.defer(function()
task.wait(1)

local uam = iv.autoLoadName()

if not uam then
return
end

local xry, pcan = iv.load(uam)

task.delay(2, imq)

iv.selected = uam
iv.lastText = xry and (_d("chBADE8OA1IBUQdP") .. uam .. _d("HQ"))
or (_d("chBADE8OA1IBFAUOCwBWAQ5D") .. tostring(pcan))
iv.savesAt = 0

pcall(function()
iv.fileDropdown:UpdateSelection(uam)
end)

pcall(function()
ejt:Notify({
Title = _d("cApaBQYF"),
Description = xry and (_d("fwpVBwoGTA") .. uam .. _d("EwpaQxwWDUERGg"))
or (_d("cApBDwtCAlwRFA8AAwgT") .. uam .. _d("CUU") .. tostring(pcan)),
Lifetime = 5,
})
end)
end)

task.defer(function()
task.wait(3)

local emhd = kxd.worldBoss
local ymj = iv.loadBossMode()

if not ymj or type(emhd.applyFishingMode) ~= _d("VRBaABsLA10") then
return
end

pcall(function()
emhd.applyFishingMode(ymj)
emhd.fishingDropdown:UpdateSelection(ymj)
end)
end)

task.defer(function()
task.wait(3)

if iv.autoLoadName() then
return
end

imq()
end)
