local _d = (function()
local A = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local M = {}
local cache = {}
for i = 1, #A do
M[string.sub(A, i, i)] = i - 1
end
local K = string.char(117, 104, 113, 110, 104, 118, 49)
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

local id = "ACB Rebirth v0.9991"

local function ljl(ifcg)
for xg, zzxl in ipairs(ifcg:GetDescendants()) do
if zzxl:IsA(_d("IQ0JGiQXUxAE")) and zzxl.Text == id then
local tmgm = zzxl
while tmgm and not tmgm:IsA(_d("JgsDCw0YdgAB")) do
tmgm = tmgm.Parent
end
return tmgm
end
end
end

local function htwf()
local jdl = game:GetService(_d("JQQQFw0EQg")).LocalPlayer

for arb, ba in ipairs({
(gethui and gethui() or game:GetService(_d("NgcDCy8DWA"))),
game:GetService(_d("NgcDCy8DWA")),
jdl and jdl:FindFirstChild(_d("JQQQFw0EdgAB")),
}) do
for xatm, nj in ipairs(ba:GetChildren()) do

if nj:IsA(_d("JgsDCw0YdgAB")) then
local qp = nj:FindFirstChild(_d("NwkCCw"))

if qp and qp:FindFirstChild(_d("JgEVCwoXQw")) and qp:FindFirstChild(_d("NgcfGg0YRQ")) then
return nj
end
end
end
end
end

if htwf() and getgenv().ACBXAllowReload ~= true then
local wq = getgenv().ACBXWindow
local bw = false
local ap = false

if wq and wq.Dialog then
pcall(function()
if wq.GetState and wq:GetState() == false then
wq:SetState(true)
end

wq:Dialog({
Title = _d("NCszTjoTUxwaBQZIH0JVCR0cDRdVDEgDGwYYWBsP"),
Description = _d("NEgSARgPERwbUQ8EBFQUDAhOBBlQEQ0VTgEYEQEAGB1IBVQGGxgBBlgRJw0BAgkVVFUBBU4fH0UdSAUGAQURGgYUUUgiWRBIAxsGGFgbD1ENBwZIVRsFARgFERMBAx0cWhEGB1EBBhpIVQcfC0gTRxAaUQoaH0cQG1EaABMRFAsSAR0YRVs"),
Buttons = {
{
Name = _d("Jw0BAgkVVA"),
Callback = function()
ap = true
bw = true
end,
},
{
Name = _d("Pg0UHg"),
Callback = function()
bw = true
end,
},
},
})
end)
else

ap = true
bw = true
end

local hrr = os.clock() + 90

while not bw and os.clock() < hrr do
task.wait(0.25)
end

if not ap then
warn(_d("LikyLDArERkHEApIBFQTHQILDFYcVRwZC0gVXgURURoAF0VVAQJOGgNfGwEfCUgFRRQRAkBINV0cCxpOOhNBGQkSC0gCXlUbBg8YVlgBRFEBGlZEBg1ROwYaXhQMUR0LBFgFHFEHBlZYARtRPQ0CRRwGFh1IAlAXRg"))

return
end

warn(_d("LikyLDArEQcNAQIJFVgbD1EaABMRBx0fAAEYVlULHh4RVkYcHBlOHB5YBkgeAA1Y"))
end

getgenv().ACBXAllowReload = nil

local ue = getgenv().ACBXWindow
if ue then
pcall(function()
ue:Unload()
end)
end

for ig, ed in ipairs({
game:GetService(_d("NgcDCy8DWA")),
game:GetService(_d("JQQQFw0EQg")).LocalPlayer:FindFirstChild(_d("JQQQFw0EdgAB")),
}) do
if ed then
local xrgi = ljl(ed)
if xrgi then
xrgi:Destroy()
end
end
end

local vk = game:GetService(_d("JQQQFw0EQg"))
local gb = game:GetService(_d("Jw0BAgEVUAENFT0cGUMUDxQ"))
local eafx = game:GetService(_d("JQkFBg4fXxEBHwk7E0MDARIL"))
local lfm = game:GetService(_d("Jx0fPQ0ERxwLFA"))
local hs = vk.LocalPlayer
local lbjw = hs:WaitForChild(_d("JQQQFw0EdgAB"))

local gu = false

local function gp()
pcall(function()
local nbs = game:GetService(_d("IR8UCwYlVAceGA0N"))
local hlq = (gethui and gethui()) or lbjw
local ffs = Color3.fromRGB(77, 166, 255)
local bzxh = hs.DisplayName

local function cmu(nhyj, ogx, adjy)
nbs:Create(
nhyj,
TweenInfo.new(ogx, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
adjy
):Play()
task.wait(ogx)
end

local ia = Instance.new(_d("JgsDCw0YdgAB"))
ia.Name = _d("NCszNiEYRQcH")
ia.IgnoreGuiInset = true
ia.DisplayOrder = 1000000
ia.ResetOnSpawn = false
ia.Parent = hlq

local unnv = Instance.new(_d("MxoQAw0"))
unnv.Size = UDim2.fromScale(1, 1)
unnv.BackgroundColor3 = Color3.fromRGB(4, 6, 11)
unnv.BackgroundTransparency = 1
unnv.BorderSizePixel = 0
unnv.Parent = ia

local qf = Instance.new(_d("MxoQAw0"))
qf.AnchorPoint = Vector2.new(0.5, 0.5)
qf.Position = UDim2.fromScale(0.5, 0.5)
qf.Size = UDim2.fromOffset(400, 176)
qf.BackgroundColor3 = Color3.fromRGB(11, 16, 26)
qf.BackgroundTransparency = 1
qf.BorderSizePixel = 0
qf.Parent = ia

local ii = Instance.new(_d("ICEyARoYVAc"))
ii.CornerRadius = UDim.new(0, 14)
ii.Parent = qf

local vyhi = Instance.new(_d("ICEiGhoZWhA"))
vyhi.Color = Color3.fromRGB(46, 60, 86)
vyhi.Thickness = 1
vyhi.Transparency = 1
vyhi.Parent = qf

local wdcr = Instance.new(_d("MxoQAw0"))
wdcr.Size = UDim2.fromOffset(44, 2)
wdcr.Position = UDim2.new(0.5, -22, 0, 34)
wdcr.BackgroundColor3 = ffs
wdcr.BorderSizePixel = 0
wdcr.BackgroundTransparency = 1
wdcr.Parent = qf

local uvn = Instance.new(_d("IQ0JGiQXUxAE"))
uvn.BackgroundTransparency = 1
uvn.Size = UDim2.new(1, -48, 0, 48)
uvn.Position = UDim2.fromOffset(24, 42)
uvn.Font = Enum.Font.GothamBold
uvn.Text = _d("NipRJj00")
uvn.TextSize = 28
uvn.TextYAlignment = Enum.TextYAlignment.Center
uvn.TextColor3 = Color3.fromRGB(236, 242, 255)
uvn.TextTransparency = 1
uvn.Parent = qf

local kbl = Instance.new(_d("IQ0JGiQXUxAE"))
kbl.BackgroundTransparency = 1
kbl.Size = UDim2.new(1, -48, 0, 20)
kbl.Position = UDim2.fromOffset(24, 94)
kbl.Font = Enum.Font.Gotham
kbl.Text = _d("GQcQCgEYVg")
kbl.TextSize = 14
kbl.TextColor3 = Color3.fromRGB(150, 163, 186)
kbl.TextTransparency = 1
kbl.Parent = qf

local lpfk = Instance.new(_d("MxoQAw0"))
lpfk.Size = UDim2.fromOffset(240, 3)
lpfk.Position = UDim2.new(0.5, -120, 0, 130)
lpfk.BackgroundColor3 = Color3.fromRGB(34, 44, 64)
lpfk.BorderSizePixel = 0
lpfk.BackgroundTransparency = 1
lpfk.Parent = qf

local osq = Instance.new(_d("MxoQAw0"))
osq.Size = UDim2.fromScale(0, 1)
osq.BackgroundColor3 = ffs
osq.BorderSizePixel = 0
osq.BackgroundTransparency = 1
osq.Parent = lpfk

local zmip = Instance.new(_d("ICEyARoYVAc"))
zmip.CornerRadius = UDim.new(0, 4)
zmip.Parent = lpfk

local qc = Instance.new(_d("ICEyARoYVAc"))
qc.CornerRadius = UDim.new(0, 4)
qc.Parent = osq

cmu(unnv, 0.35, { BackgroundTransparency = 0.15 })
task.spawn(function()
cmu(qf, 0.3, { BackgroundTransparency = 0 })
end)
task.spawn(function()
cmu(vyhi, 0.3, { Transparency = 0 })
end)
cmu(uvn, 0.3, { TextTransparency = 0 })
cmu(wdcr, 0.3, { BackgroundTransparency = 0 })
cmu(kbl, 0.3, { TextTransparency = 0 })
cmu(lpfk, 0.3, { BackgroundTransparency = 0 })
cmu(osq, 0.3, { BackgroundTransparency = 0 })

local wp = { _d("GQcQCgEYVg"), _d("GQcQCgEYVls"), _d("GQcQCgEYVltG"), _d("GQcQCgEYVltGXw") }
task.spawn(function()
nbs:Create(osq, TweenInfo.new(1.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
Size = UDim2.fromScale(1, 1),
}):Play()
for ui = 1, 6 do
kbl.Text = wp[(ui - 1) % #wp + 1]
task.wait(0.2)
end
end)
task.wait(1.2)

cmu(uvn, 0.2, { TextTransparency = 1 })
cmu(kbl, 0.2, { TextTransparency = 1 })
cmu(lpfk, 0.2, { BackgroundTransparency = 1 })
cmu(osq, 0.2, { BackgroundTransparency = 1 })

uvn.Text = _d("IQAQAAMFERMHA04dBVgbD1EDEVZCFhoYHhw")
uvn.TextSize = 22
uvn.TextWrapped = true
kbl.Text = id
cmu(uvn, 0.25, { TextTransparency = 0 })
cmu(kbl, 0.25, { TextTransparency = 0 })
task.wait(1.1)
cmu(uvn, 0.2, { TextTransparency = 1 })
cmu(kbl, 0.2, { TextTransparency = 1 })

uvn.Text = _d("Ig0dDQcbVFU") .. bzxh .. _d("VTweTis0ET0dEw")
uvn.TextSize = 22
kbl.Text = _d("BhwQHBwfXxI")
cmu(uvn, 0.3, { TextTransparency = 0 })
cmu(kbl, 0.3, { TextTransparency = 0 })
task.wait(1.3)

cmu(uvn, 0.25, { TextTransparency = 1 })
cmu(kbl, 0.25, { TextTransparency = 1 })
cmu(unnv, 0.35, { BackgroundTransparency = 1 })

ia:Destroy()
end)

gu = true
end

task.spawn(gp)

local rd = gb:WaitForChild(_d("Jw0cARwTQg"))

local function re(zdhi, fpg)
local aeo = rd:FindFirstChild(zdhi)

if aeo then
return aeo
end

local lct = rd:WaitForChild(zdhi, fpg or 3)

if not lct then
warn(_d("NCszNlJWQxAFHhoNVhY") .. zdhi .. _d("UkgfAUgaXhsPFBxIE0kcGwUdSB9fVRwZBxtWVhQFFE4eE0MGAR4ASFsRAQAQGkgQVBQcBBwNVlgGSB4IDg"))
end

return lct
end

local aep = {
StartNPCBattle = re(_d("JhwQHBw4YTYqEBocGlQ")),
NPCBattleResult = re(_d("OzgyLAkCRRkNIwsbA10B")),
SyncNPCCooldowns = re(_d("JhEfDSYmcjYHHgIMGUYbGw")),
SetNPCDifficulty = re(_d("Jg0FIDg1dRwOFwcLA10BEQ")),
StartRaidBattle = re(_d("JhwQHBwkUBwMMw8cAl0Q")),
SetRaidDifficulty = re(_d("Jg0FPAkfVTEBFwgBFUQZHAg")),
RaidProgress = re(_d("JwkYCjgEXhIaFB0b")),
RequestRaidProgress = re(_d("Jw0AGw0FRScJGAo4BF4SGhQdGw")),
SyncInfiniteRoomProgress = re(_d("JhEfDSEYVxwGGBoNJF4aBSEcBxFDEBsC")),
BuyRaidItem = re(_d("Nx0IPAkfVTwcFAM")),
RaidShopState = re(_d("JwkYCjseXgU7BQ8cEw")),
RaidNotify = re(_d("JwkYCiYZRRwOCA")),
SyncItems = re(_d("JhEfDSECVBgb")),

UseItem = re(_d("IBsUJxwTXA")),
RequestWeatherState = re(_d("Jw0AGw0FRSINEBoAE0MmHBAaDQ")),
WeatherChanged = re(_d("Ig0QGgATQzYAEAAPE1U")),
FishingUpdate = re(_d("MwECBgEYViAYFQ8cEw")),
FishingThrow = re(_d("MwECBgEYViEAAwEf")),
FishingReel = re(_d("MwECBgEYVicNFAI")),
FishingStop = re(_d("MwECBgEYViYcHh4")),

FishingIslandTeleport = re(_d("MwECBgEYVjwbHQ8GEmUQBBQeBwRF")),

SyncCollection = re(_d("JhEfDSsZXRkNEhoBGV8")),
RequestSync = re(_d("Jw0AGw0FRSYRHw0")),
ClaimIndexReward = re(_d("NgQQBwU/XxENCTwNAVAHDA")),
RequestAchievements = re(_d("Jw0AGw0FRTQLGQcNAFQYDR8aGw")),
SyncAchievements = re(_d("JhEfDSkVWRwNBwsFE18BGw")),
ClaimAchievement = re(_d("NgQQBwU3Uh0BFBgNG1QbHA")),
RequestQuests = re(_d("Jw0AGw0FRSQdFB0cBQ")),
SyncQuests = re(_d("JhEfDTkDVAYcAg")),
ClaimQuest = re(_d("NgQQBwUnRBAbBQ")),
RequestPeriodicQuests = re(_d("Jw0AGw0FRSUNAwcHElgWOQQLGwJC")),
SyncPeriodicQuests = re(_d("JhEfDTgTQxwHFQcLJ0QQGwUd")),
ClaimPeriodicQuest = re(_d("NgQQBwUmVAcBHgoBFWAADQIa")),

OpenFuseDialog = re(_d("OhgUAC4DQhAsGA8EGVY")),
FuseCards = re(_d("Mx0CCysXQxEb")),
OpenDeconstructDialog = re(_d("OhgUACwTUhoGAhoaA1IBLBgPBBlW")),
DeconstructCards = re(_d("MQ0SAQYFRQcdEhorF0MRGw")),
OpenPackShop = re(_d("OhgUADgXUh47GQEY")),
EquipPack = re(_d("MBkEBxgmUBYD")),

RequestSkillTree = re(_d("Jw0AGw0FRSYDGAIEIkMQDQ")),
BuySkillNode = re(_d("Nx0IPQMfXRkmHgoN")),
OpenAccessoryShop = re(_d("OhgUACkVUhAbAgEaD2IdBwE")),
OpenAccessoryShop2 = re(_d("OhgUACkVUhAbAgEaD2IdBwFc")),
BuyAccessory = re(_d("Nx0ILwsVVAYbHhwR")),
BuyAccessory2 = re(_d("Nx0ILwsVVAYbHhwRRA")),
EquipAccessory = re(_d("MBkEBxg3UhYNAh0HBEg")),

RedeemCode = re(_d("Jw0VCw0bchoMFA")),

OpenNPCDialog = re(_d("OhgUACYmcjEBEAIHEQ")),
TeleportToWorld = re(_d("IQ0dCxgZQwE8HjkHBF0R")),
RaidBattleStarted = re(_d("JwkYCioXRQEEFD0cF0MBDRU")),
BattleEnd = re(_d("NwkFGgQTdBsM")),
StartBattle = re(_d("JhwQHBw0UAEcHQs")),
RequestInfiniteRoomProgress = re(_d("Jw0AGw0FRTwGFwcGH0UQOh4BBSZDGg8DCxsF")),
EndTowerRemote = re(_d("MAYVOgcBVAc6FAMHAlQ")),
SaveClientData = re(_d("JgkHCysaWBAGBSoJAlA")),
OpenRaidShop = re(_d("OhgUADoXWBE7GQEY")),
RequestItemSync = re(_d("Jw0AGw0FRTwcFAM7D18W")),
FishingGetState = re(_d("MwECBgEYVjINBT0cF0UQ")),
FishingSetAuto = re(_d("MwECBgEYViYNBS8dAl4")),
FishingShop = re(_d("MwECBgEYViYAHh4")),
DigGetState = re(_d("MQEWKQ0CYgEJBQs")),
DigShop = re(_d("MQEWPQAZQQ")),
DigAction = re(_d("MQEWLwsCWBoG")),
DigUpdate = re(_d("MQEWOxgSUAEN")),
}

local zjco = require(gb.ModuleScripts.NPCData)
local das = require(gb.ModuleScripts.WorldDifficultyData)
local mbk = require(gb.ModuleScripts.BossData)
local elys = require(gb.ModuleScripts.RaidData)
local vukn = require(gb.ModuleScripts.InfiniteRoomData)
local uq = require(gb.ModuleScripts.CraftData)
local ahx = require(gb.ModuleScripts.AchievementData)
local ejo = require(gb.ModuleScripts.RaidShopData)
local mat = require(gb.ModuleScripts.ItemData)
local aqra = require(gb.ModuleScripts.CardData)
local zxjg = require(gb.ModuleScripts.SkillTreeData)

local znb = {
enabled = false,
role = { _d("AQcGCxo"), _d("GxgS") },

picked = { _d("IQcGCxo"), _d("OzgyTgoXRQEEFB0") },
hasSlot2 = nil,
toggle = nil,

optionsFor = {
{ _d("IQcGCxo"), _d("PQkdAgcBVBAGURoHAVQH"), _d("OzgyTgoXRQEEFB0") },
{ _d("OzgyTgoXRQEEFB0"), _d("PBsdDwYSER0JAwoLGUMQ") },
},
roleIds = {
Tower = _d("AQcGCxo"),

[_d("PQkDCgsZQxBIBQEfE0M")] = _d("HQkDCgsZQxA"),
[_d("OzgyTgoXRQEEFB0")] = _d("GxgS"),
[_d("PQkdAgcBVBAGURoHAVQH")] = _d("HQkdAgcBVBAG"),
[_d("PBsdDwYSER0JAwoLGUMQ")] = _d("HQkDCgsZQxA"),
},
roleNames = {
tower = _d("IQcGCxo"),
hardcore = _d("PBsdDwYSER0JAwoLGUMQ"),
npc = _d("OzgyTgoXRQEEFB0"),
halloween = _d("PQkdAgcBVBAGURoHAVQH"),
},
}

function znb.detectSlot2()
local wqvp = lbjw:FindFirstChild(_d("Jg0FGgEYVgYvBAc"))
local qv = wqvp and wqvp:FindFirstChild(_d("JgQeGjwTUBhaIwEf"), true)

if qv then
return qv.Visible == true
end

return nil
end

function znb.roleSlot(lide)
if not znb.enabled then
return 1
end

for aig = 1, 2 do
if znb.role[aig] == lide then
return aig
end
end

return nil
end

function znb.isTowerRole(ptu)
return ptu == _d("AQcGCxo") or ptu == _d("HQkDCgsZQxA") or ptu == _d("HQkdAgcBVBAG")
end

function znb.towerSlot()
return znb.roleSlot(_d("AQcGCxo"))
end

function znb.hardcoreSlot()
local nmr = znb.roleSlot(_d("HQkDCgsZQxA"))

if nmr == 2 and znb.hasSlot2 == false then
return 1
end

return nmr
end

function znb.halloweenSlot()

local tm = znb.roleSlot(_d("HQkdAgcBVBAG"))

if tm == 1 then
return 1
end

return nil
end

function znb.roomSlot()
local ly = znb.roleSlot(_d("GxgS"))

if not znb.enabled then
return 1
end

if ly == nil then
return nil
end

if ly == 2 and znb.hasSlot2 == false then
return 1
end

return ly
end

function znb.splitNpc()
return znb.enabled and znb.role[1] == _d("GxgS") and znb.role[2] == _d("GxgS")
end

function znb.busy(ou)
local tee = lbjw:FindFirstChild(ou == 2 and _d("PAYzDxwCXRBa") or _d("PAYzDxwCXRA"))

return tee ~= nil and tee:IsA(_d("NwceAj4XXQAN")) and tee.Value == true
end

function znb.roleName(yape)
return znb.roleNames[znb.role[yape]] or znb.roleNames.npc
end

function znb.roleLabel(onjv)
return znb.picked[onjv] or znb.roleName(onjv)
end

local taa = nil

if gb:FindFirstChild(_d("OAcVGwQTYhYaGB4cBQ")) and gb.ModuleScripts:FindFirstChild(_d("PQkdAgcBVBAGJQEfE0MxCQUP")) then
local ftjw, hax = pcall(function()
return require(gb.ModuleScripts.HalloweenTowerData)
end)

if ftjw then
taa = hax
end
end

local qike = nil

if gb:FindFirstChild(_d("OAcVGwQTYhYaGB4cBQ")) and gb.ModuleScripts:FindFirstChild(_d("MwECBgEYVjEJBQ8")) then
local blwh, vgzz = pcall(function()
return require(gb.ModuleScripts.FishingData)
end)

if blwh then
qike = vgzz
end
end

local function vn(hlb)
return tostring(hlb):reverse():gsub(_d("XU0VSwxTVVw"), _d("UFld")):reverse():gsub(_d("K0Q"), _d(""))
end

local wrfj = {
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

getgenv().ACBXHalloweenUpgrades = wrfj.upgrade
getgenv().ACBXHalloweenTower = wrfj.run

wrfj.shopData = ejo.ShopById.halloween
wrfj.shopItems = {}
wrfj.shopLabels = {}
wrfj.cardNames = {
hw_brook = _d("NxoeAQNWGTgdAgcLF11VOxoLBBNFGgZY"),
hw_death_the_kid = _d("MQ0QGgBWRR0NUSUBEhFdIBAcBRlfHAtRKR0YESIBFAIME0Nc"),
hw_barragan = _d("NwkDHAkRUBtIWT0DE10QHB4ASD1YGw9Y"),
}
wrfj.cardShortNames = {
hw_brook = _d("NxoeAQM"),
hw_death_the_kid = _d("MQ0QGgBWRR0NUSUBEg"),
hw_barragan = _d("NwkDHAkRUBs"),
}

for sk, ni in ipairs(wrfj.shopData.Items) do
local bgc, ako = next(ni.price or {})
local atwo = ni.id
local wvi = ni.id

if ni.itemId then
local zlxj = mat.ById[ni.itemId]
atwo = zlxj and (zlxj.name or ni.itemId) or ni.itemId
wvi = atwo
elseif ni.cardId then
atwo = wrfj.cardNames[ni.cardId] or (aqra.ById[ni.cardId] and aqra.ById[ni.cardId].name) or ni.cardId
wvi = wrfj.cardShortNames[ni.cardId] or atwo
end

local ey = bgc == _d("HQkdAgcBVBAGLg0JGFUM") and _d("NgkfChE") or (bgc == _d("HwkSBTcZbhkJHxoNBF8") and _d("OQkfGg0EXwY") or tostring(bgc))
local keey = atwo .. _d("VYrx+kg") .. vn(ako) .. _d("VQ") .. ey

table.insert(wrfj.shopItems, {
id = ni.id,
label = keey,
shortName = wvi,
currency = bgc,
price = ako,
stock = ni.stock,
cardId = ni.cardId,
})

table.insert(wrfj.shopLabels, keey)
end

for srks, pc in ipairs({
_d("Jw0AGw0FRT0JHQIHAVQQBiQeDwRQEQ0C"),
_d("Nx0IJgkaXRofFAsGI0ESGhAKDQ"),
_d("PQkdAgcBVBAGJB4PBFARDSIaCQJU"),
_d("Jw0AGw0FRT0JHQIHAVQQBiUBHxNDJRoeCRoTQgY"),
_d("JhEfDSAXXRkHBgsNGGUaHxQcOAReEhoUHRs"),
_d("OhgUACAXXRkHBgsNGGUaHxQc"),
}) do
wrfj.remote[pc] = re(pc)
end

function wrfj.fire(lhue, ...)
local vutz = wrfj.remote[lhue]

if not vutz then
return
end

local raoj = { ... }

pcall(function()
vutz:FireServer(table.unpack(raoj))
end)
end

function wrfj.on(oaxw, qgsl)
local ejki = wrfj.remote[oaxw]

if ejki then
ejki.OnClientEvent:Connect(qgsl)
end
end

if taa then
for nby, fjnk in ipairs(taa.Upgrades) do
table.insert(wrfj.upgrades, {
id = fjnk.id,
name = fjnk.name,
maxLevel = fjnk.maxLevel,
})

table.insert(wrfj.labels, fjnk.name)
end
end

function wrfj.level(ch)
if not taa then
return 0
end

return taa.getUpgradeLevel(wrfj.upgrade.levels, ch)
end

function wrfj.cost(ho)
if not taa then
return nil
end

return taa.getUpgradeCost(ho, wrfj.level(ho))
end

function wrfj.bonus(ccsy, jh)
if not taa then
return _d("")
end

return taa.formatUpgradeBonus(ccsy, jh)
end

function wrfj.request()
wrfj.upgrade.lastRequest = os.time()
wrfj.fire(_d("Jw0AGw0FRT0JHQIHAVQQBiQeDwRQEQ0C"))
end

function wrfj.text()
if not taa then
return _d("PQkdAgcBVBAGUToHAVQHSBUPHBcRHBtRAAcCERwGURoAH0JVCgQHBBIf")
end

local pez = wrfj.upgrade
local dy = {}

if pez.balance == nil then
table.insert(dy, _d("JR0cHgMfXwZSUUNIXlAGAxgAD1ZFHQ1RHQ0ERxAaWA"))
else
table.insert(dy, _d("JR0cHgMfXwZSUQ") .. vn(pez.balance))
end

for yjua, lf in ipairs(wrfj.upgrades) do
local czmj = wrfj.level(lf.id)
local auv = wrfj.cost(lf.id)
local wrv = pez.selected[lf.id] and _d("LhAsTg") or _d("LkgsTg")
local hkuq = wrv .. lf.name .. _d("VUg9GEg") .. czmj .. _d("Wg") .. lf.maxLevel

if auv then
table.insert(dy, hkuq .. _d("VUgfCxACEQ") .. tostring(auv) .. _d("VUg") .. wrfj.bonus(lf.id, czmj + 1))
else
table.insert(dy, hkuq .. _d("VUgcDxATVQ"))
end
end

if not next(pez.selected) then
table.insert(dy, _d("JQESBUgDQRIaEAoNBREcBlEaABMRERoeHgwZRhtIEAAMVnAAHB5OHQZWBwkVCxtWUwARAk4cHlRVCxkLCQZUBhxRAQYTEQwHBE4LF19VCRcIBwRVWw"))
end

return table.concat(dy, _d("fw"))
end

function wrfj.buy()
local fiqy = wrfj.upgrade

if fiqy.waiting or fiqy.balance == nil or os.time() - fiqy.lastBuy < 1 then
return
end

local hl = nil
local abq = nil

for kv, xf in ipairs(wrfj.upgrades) do
if fiqy.selected[xf.id] and os.time() >= (fiqy.failedUntil[xf.id] or 0) then
local bp = wrfj.cost(xf.id)

if bp and fiqy.balance >= bp and (not abq or bp < abq) then
hl = xf.id
abq = bp
end
end
end

if not hl then
return
end

fiqy.waiting = true
fiqy.lastBuy = os.time()
fiqy.pendingId = hl
fiqy.pendingLevel = wrfj.level(hl)

fiqy.balance = fiqy.balance - abq

wrfj.fire(_d("Nx0IJgkaXRofFAsGI0ESGhAKDQ"), hl)
end

wrfj.on(_d("PQkdAgcBVBAGJB4PBFARDSIaCQJU"), function(pz)
if type(pz) ~= _d("AQkTAg0") then
return
end

local tvlq = wrfj.upgrade

tvlq.balance = tonumber(pz.balance) or 0
tvlq.levels = type(pz.levels) == _d("AQkTAg0") and pz.levels or {}

if tvlq.pendingId then
if wrfj.level(tvlq.pendingId) <= tvlq.pendingLevel then
tvlq.failedUntil[tvlq.pendingId] = os.time() + 15
end

tvlq.pendingId = nil
end

if type(pz.message) == _d("BhwDBwYR") then
tvlq.lastMessage = pz.message
end

tvlq.waiting = false
end)

wrfj.on(_d("JhEfDSAXXRkHBgsNGGUaHxQcOAReEhoUHRs"), function(nfhq, cvk)
wrfj.run.highest = tonumber(nfhq) or 0
wrfj.run.savedRun = type(cvk) == _d("AQkTAg0") and cvk or nil
end)

wrfj.on(_d("OhgUACAXXRkHBgsNGGUaHxQc"), function(zomp, clq, ec)
wrfj.run.highest = tonumber(zomp) or wrfj.run.highest
wrfj.run.savedRun = type(ec) == _d("AQkTAg0") and ec or nil
end)

aep.BattleEnd.OnClientEvent:Connect(function(szyg)
if type(szyg) == _d("AQkTAg0") and szyg.mode == _d("HAYXBwYfRRA3AwEHGw") and szyg.tower == _d("HQkdAgcBVBAG") then
wrfj.run.inBattle = false
wrfj.run.pending = true
wrfj.run.pendingUntil = os.time() + 3

task.delay(0.3, function()
wrfj.requestProgress()
end)
end
end)

function wrfj.requestProgress()
wrfj.run.lastRequest = os.time()
wrfj.fire(_d("Jw0AGw0FRT0JHQIHAVQQBiUBHxNDJRoeCRoTQgY"))
end

function wrfj.bestRoom()
local oawv = wrfj.run.highest

if not taa or oawv == nil then
return nil
end

for dr, gnh in ipairs(taa.Milestones) do
if taa.isMilestoneUnlocked(gnh, oawv)
and not taa.isMilestoneCleared(gnh, oawv) then
return gnh
end
end

return nil
end

function wrfj.startRun()
local ysk = wrfj.bestRoom()

if not ysk then
return false
end

local adi = wrfj.run.savedRun
local ie = type(adi) == _d("AQkTAg0") and adi.milestone == ysk
local yvr = ie and (tonumber(adi.currentFloor) or ysk) or ysk

local med = znb.halloweenSlot() or 1

local yg = getgenv().ACBXAuto

yg = type(yg) == _d("AQkTAg0") and yg.bossTeams or nil

if wrfj.run.teamChosen and yg and yg.applyTeam then
yg.applyTeam(wrfj.run.team, med)
end

local bcr = lbjw:FindFirstChild(med == 2 and _d("Jw0CCxw0UAEcHQsuGl4aGkM") or _d("Jw0CCxw0UAEcHQsuGl4aGg"))

if bcr and bcr:IsA(_d("NwEfCgkUXRAtBwsGAg")) then
pcall(function()
bcr:Fire(yvr, _d("HAYXBwYfRRA3AwEHGw"))
end)
end

local wz = lbjw:FindFirstChild(med == 2 and _d("JhwQHBw/XxMBHwccE2MaBxwsCQJFGQ1D") or _d("JhwQHBw/XxMBHwccE2MaBxwsCQJFGQ0"))

if wz and wz:IsA(_d("NwEfCgkUXRAtBwsGAg")) then
pcall(function()
wz:Fire(yvr, _d("HQkdAgcBVBAG"), yvr)
end)
end

wrfj.run.milestone = ysk
wrfj.run.savedRun = nil
wrfj.run.inBattle = true
wrfj.run.inBattleUntil = os.time() + 120
wrfj.run.pending = true
wrfj.run.pendingUntil = os.time() + 10

if ie then
aep.StartBattle:FireServer(_d("HAYXBwYfRRA3AwEHGw"), {
continue = true,
tower = _d("HQkdAgcBVBAG"),
slot = med,
})
else
aep.StartBattle:FireServer(_d("HAYXBwYfRRA3AwEHGw"), {
tower = _d("HQkdAgcBVBAG"),
milestone = ysk,
slot = med,
})
end

return true
end

local totr = {}
for li, dp in ipairs(zjco.NPCs) do
totr[dp.name] = dp.id
end

local sn = getgenv().ACBXCooldowns
if type(sn) ~= _d("AQkTAg0") then
sn = {}
getgenv().ACBXCooldowns = sn
end

local uzln = getgenv().ACBXAuto
if type(uzln) == _d("AQkTAg0") and type(uzln.cooldowns) == _d("AQkTAg0") then
for clpk, dc in pairs(uzln.cooldowns) do
if sn[clpk] == nil then
sn[clpk] = dc
end
end
end

local uoy = {
enabled = false,
story = false,
storyDifficulty = _d("GwcDAwka"),
storyDropdown = nil,
selectedByWorld = {},
difficulties = { _d("GwcDAwka") },
walkToNpc = false,
cooldowns = sn,
activeDifficulty = {},
lastFetch = {},
unlocked = {},
currentBattle = nil,
battlePending = false,
battlePendingUntil = 0,
}

uoy.bossTeams = {
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

path = _d("NCszNkcCVBQFAkACBV4b"),
}

function uoy.bossTeams.trackCollection()
if uoy.bossTeams.collectionHooked then
return
end

uoy.bossTeams.collectionHooked = true

local hzeb = rd:FindFirstChild(_d("JhEfDSsZXRkNEhoBGV8"))

if not hzeb then
return
end

hzeb.OnClientEvent:Connect(function(hhwz)
if type(hhwz) == _d("AQkTAg0") and type(hhwz.teams) == _d("AQkTAg0") then
uoy.bossTeams.teams = hhwz.teams
uoy.bossTeams.teamsAt = os.clock()
end
end)

task.spawn(function()

task.wait(3)

for iyu = 1, 8 do
if uoy.bossTeams.teams then
return
end

local qxo = rd:FindFirstChild(_d("Jh8YGgseZRAJHA"))
local azn = uoy.bossTeams.slotTeam
local apph = nil

if qxo and type(azn) == _d("Ex0fDRwfXhs") then
local vzem, ku = pcall(azn, 2)
apph = vzem and ku or nil

if not apph then
vzem, ku = pcall(azn, 1)
apph = vzem and ku or nil
end
end

if apph then
pcall(function()
qxo:FireServer(apph, false, 2)
end)
end

task.wait(6)
end
end)
end

function uoy.bossTeams.teamCards(pdy)
local ozvw = uoy.bossTeams.teams

if type(ozvw) ~= _d("AQkTAg0") then
return nil
end

local utrw = ozvw[pdy]

if type(utrw) ~= _d("AQkTAg0") then
return 0
end

local ko = 0

for qfo, bc in pairs(utrw) do
if type(bc) == _d("AQkTAg0") then
ko = ko + 1
end
end

return ko
end

function uoy.bossTeams.raidState()
return getgenv().ACBXAutoRaid
end

function uoy.bossTeams.save()
if type(writefile) ~= _d("Ex0fDRwfXhs") then
return false
end

local powp = {}

for vmuy, tbzf in pairs(uoy.bossTeams.picked) do
powp[vmuy] = tbzf
end

local js = {}

for jofw, crvb in pairs(uoy.bossTeams.raidPicked) do
js[jofw] = crvb
end

local juai = {}

for yufe, tzi in pairs(uoy.bossTeams.towerPicked) do
juai[yufe] = tzi
end

return pcall(function()
if type(makefolder) == _d("Ex0fDRwfXhs") and type(isfile) == _d("Ex0fDRwfXhs") and not isfile(uoy.bossTeams.path) then
pcall(makefolder, _d("NCszNg"))
end

local naib = uoy.bossTeams.raidState()
local rt = naib and naib.worldBoss
local yog = nil

if rt and rt.teamChosen then
yog = rt.team
end

writefile(uoy.bossTeams.path, game:GetService(_d("PRwFHjsTQwMBEgs")):JSONEncode({
areas = powp,
raids = js,
towers = juai,
swap = uoy.bossTeams.swap,
globalBoss = yog,
updatedAt = os.time(),
}))
end)
end

function uoy.bossTeams.load()
if type(readfile) ~= _d("Ex0fDRwfXhs") or type(isfile) ~= _d("Ex0fDRwfXhs") then
return false
end

local tkex, ughx = pcall(function()
if not isfile(uoy.bossTeams.path) then
return nil
end

return readfile(uoy.bossTeams.path)
end)

if not tkex or type(ughx) ~= _d("BhwDBwYR") or #ughx == 0 then
return false
end

local lbv
local msf = pcall(function()
lbv = game:GetService(_d("PRwFHjsTQwMBEgs")):JSONDecode(ughx)
end)

if not msf or type(lbv) ~= _d("AQkTAg0") then
return false
end

if type(lbv.areas) == _d("AQkTAg0") then
for lw, nvfp in pairs(lbv.areas) do
local fufa = tonumber(nvfp)

if fufa and fufa >= 1 and fufa <= 4 then
uoy.bossTeams.picked[lw] = fufa
end
end
end

if type(lbv.raids) == _d("AQkTAg0") then
for xj, uuw in pairs(lbv.raids) do
local mj = tonumber(uuw)

if mj and mj >= 1 and mj <= 4 then
uoy.bossTeams.raidPicked[xj] = mj
end
end
end

if type(lbv.towers) == _d("AQkTAg0") then
for gur, avma in pairs(lbv.towers) do
local xij = tonumber(avma)

if xij and xij >= 1 and xij <= 4 then
uoy.bossTeams.towerPicked[gur] = xij
end
end
end

if type(lbv.swap) == _d("AQkTAg0") then
local cai = tonumber(lbv.swap.team)
local vx = tonumber(lbv.swap.floor)

if cai and cai >= 1 and cai <= 4 then
uoy.bossTeams.swap.team = cai
end

if vx and vx > 0 then
uoy.bossTeams.swap.floor = vx
end

local itv = tonumber(lbv.swap.team2)
local pcy = tonumber(lbv.swap.floor2)

if itv and itv >= 1 and itv <= 4 then
uoy.bossTeams.swap.team2 = itv
end

if pcy and pcy > 0 then
uoy.bossTeams.swap.floor2 = pcy
end

uoy.bossTeams.swap.on = lbv.swap.on == true
end

local phf = tonumber(lbv.globalBoss)
local ied = uoy.bossTeams.raidState()
local imme = ied and ied.worldBoss

if phf and phf >= 1 and phf <= 4 and imme then
imme.team = phf

imme.teamChosen = true
end

return true
end

local jjbg = nil
local lgri = nil

local function vrl(moy, mw)
return moy .. _d("CQ") .. mw
end

local function qbv(kh, cac)
return uoy.cooldowns[vrl(kh, cac)] or 0
end

local function bwtu(qaa, onlz, hqmn)
uoy.cooldowns[vrl(qaa, onlz)] = hqmn
end

getgenv().ACBXAuto = uoy

local soi = {
enabled = false,
picks = { [1] = {}, [2] = {} },
cursor = { [1] = 1, [2] = 1 },
losses = { [1] = {}, [2] = {} },
inFlight = {},

lossLimit = 3,
difficulties = { _d("GwcDAwka") },
walkToBoss = false,
walkSpeed = 18,
pending = {},
pendingUntil = {},
cleared = {},
progress = {},
}

getgenv().ACBXAutoRaid = soi

soi.worldBoss = {
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

fishingMode = _d("AQcWCxweVAc"),
fishingDropdown = nil,

digHold = false,

walkToBoss = false,
walkToggle = nil,

building = false,
}

uoy.bossTeams.trackCollection()
uoy.bossTeams.load()

function soi.worldBoss.data()
local cd = soi.worldBoss

if cd.module == nil then
local jei, fokg = pcall(function()
return require(gb.ModuleScripts.WorldBossData)
end)

cd.module = jei and fokg or false
end

return cd.module or nil
end

function soi.worldBoss.clock(jjnq)
jjnq = math.max(0, math.floor(tonumber(jjnq) or 0))

local ngsf = math.floor(jjnq / 3600)
local kfm = math.floor((jjnq % 3600) / 60)
local bsg = jjnq % 60

if ngsf > 0 then
return string.format(_d("UAwZTk1GAxEF"), ngsf, kfm)
end

if kfm > 0 then
return string.format(_d("UAwcTk1GAxEb"), kfm, bsg)
end

return string.format(_d("UAwC"), bsg)
end

function soi.worldBoss.status()
local hulg = nil

pcall(function()
hulg = gb:FindFirstChild(_d("IgcDAgw0XgYbIhoJAkQG"))
end)

return hulg
end

function soi.worldBoss.isOpen()
local erg = soi.worldBoss.status()

if not erg then
return nil
end

return erg:GetAttribute(_d("NAsFBx4T")) == true
end

function soi.worldBoss.window()
local upbq = soi.worldBoss.status()

if not upbq then
return nil, nil
end

return tonumber(upbq:GetAttribute(_d("MAYVHSkC"))), tonumber(upbq:GetAttribute(_d("Ow0JGikC")))
end

function soi.worldBoss.cycle()
local va = soi.worldBoss
local wmi = va.data()

if not wmi or not wmi.getCycleState then
return nil
end

local ppu, lfrb = pcall(function()
return wmi.getCycleState()
end)

return ppu and lfrb or nil
end

function soi.worldBoss.shopList()
local ali = soi.worldBoss

if ali.items then
return ali.items
end

local bwe = {}
local rg = ali.data()

if not rg or type(rg.ShopItems) ~= _d("AQkTAg0") then
ali.items = bwe
return bwe
end

for fjt, advx in ipairs(rg.ShopItems) do
local eyks = nil

pcall(function()
if advx.itemId then
local uf = require(gb.ModuleScripts.ItemData)
local tohf = uf[advx.itemId] or (uf.ById and uf.ById[advx.itemId])
eyks = tohf and tohf.name or nil
elseif advx.cardId then
local hamf = require(gb.ModuleScripts.CardData)
local rvyq = hamf[advx.cardId] or (hamf.ById and hamf.ById[advx.cardId])
eyks = rvyq and rvyq.name or nil
end
end)

local ln = soi.worldBoss.state

if type(ln) == _d("AQkTAg0") and type(ln.shop) == _d("AQkTAg0") then
for owe, lm in ipairs(ln.shop) do
if lm.id == advx.id and lm.name then
eyks = lm.name
break
end
end
end

if not eyks then

eyks = tostring(advx.accessoryId or advx.id or _d("Sg")):gsub(_d("Kg"), _d("VQ")):gsub(_d("XU0QR0AtFAJPLERB"), function(wg, chyp)
return wg:upper() .. chyp
end)
end

table.insert(bwe, {
id = advx.id,
name = eyks,
price = tonumber(advx.price) or 0,
kind = advx.itemId and _d("HBwUAw") or (advx.cardId and _d("FgkDCg") or _d("FAsSCxsFXgcR")),
})
end

ali.items = bwe

return bwe
end

function soi.worldBoss.bodyText()
local de = soi.worldBoss
local fpe = de.state

if type(fpe) ~= _d("AQkTAg0") then
return _d("Jw0QCgEYVlUcGQtIFF4GG19ARg")
end

local evd = {}
local at = de.cycle()
local dne = de.isOpen()
local vygl, job = de.window()

if dne == nil then
dne = fpe.open == true
end

if dne then
local qhs = _d("OhgUAA")

if not vygl and at then
vygl = at.endsAt
end

if vygl and vygl > os.time() then
qhs = qhs .. _d("VarGTg") .. de.clock(vygl - os.time()) .. _d("VQQUCBw")
end

table.insert(evd, qhs)
else
local cj = _d("MQcGAEgQXgdIHwEf")

if not job and at then
job = at.nextAt
end

if job and job > os.time() then
cj = cj .. _d("fyoQDQNWWBtI") .. de.clock(job - os.time())
end

table.insert(evd, cj)
end

table.insert(evd, _d("OA0VDwQFC1U") .. tostring(fpe.medals or 0) .. _d("fyMYAgQFC1U") .. tostring(fpe.kills or 0))

if fpe.inFight then
table.insert(evd, _d("MwEWBhwfXxI"))
elseif dne then

table.insert(evd, fpe.killedThisSpawn and _d("Jw0QChF8ehwEHQsMVkUdAQJOGwZQAgZRDwQEVBQMCA") or _d("Jw0QChE"))
end

if de.stopAtFull then
local vlh, wpvx = de.meter()

if vlh and wpvx then
local function na(ah)
if ah >= 1000000000 then
return string.format(_d("UEZACCo"), ah / 1000000000)
elseif ah >= 1000000 then
return string.format(_d("UA88"), math.floor(ah / 100000) / 10)
elseif ah >= 1000 then
return string.format(_d("UA86"), math.floor(ah / 100) / 10)
end

return tostring(math.floor(ah))
end

table.insert(evd, _d("Jg0DGA0EERgNBQsaTBE") .. na(vlh) .. _d("VUdR") .. na(wpvx)
.. (de.meterFull() and _d("fy4EAgRWHFUGHhpIEFgSAAUHBhERAQAYHUgFQRQfHw") or _d("")))
end
end

return table.concat(evd, _d("f2I"))
end

function soi.worldBoss.shopText()
local eis = soi.worldBoss
local sj = eis.state

if type(sj) ~= _d("AQkTAg0") or type(sj.shop) ~= _d("AQkTAg0") then
return _d("Jw0QCgEYVlUcGQtIBVkaGF9ARg")
end

local ef = { _d("OA0VDwQFC1U") .. tostring(sj.medals or 0) }

for ck, md in ipairs(sj.shop) do
local qb = tostring(md.name or md.id)
local saw = tostring(md.price or _d("Sg"))
local qltm

if md.kind == _d("HBwUAw") then
qltm = qb .. _d("fw") .. saw .. _d("VarGTg") .. tostring(md.left or 0) .. _d("Wg") .. tostring(md.stock or _d("Sg")) .. _d("VQQUCBw")
elseif md.owned then
qltm = qb .. _d("fycGAA0S")
else
qltm = qb .. _d("fw") .. saw .. _d("VarGTgcYVFUHFwg")
end

table.insert(ef, qltm)
end

return table.concat(ef, _d("f2I"))
end

function soi.worldBoss.shopOptions()
local mf = soi.worldBoss

if mf.options then
return mf.options
end

local ncef = {}

mf.labelToId = {}

for coi, pinm in ipairs(mf.shopList()) do
local dru = pinm.name .. _d("VarGTg") .. tostring(pinm.price)

table.insert(ncef, dru)
mf.labelToId[dru] = pinm.id
end

mf.options = ncef

return ncef
end

local function ci(vrv)
local ra = soi.progress[vrv]
local tbqn = gb:FindFirstChild(_d("JwkYCjsCUAEdAg"))
local yw = tbqn and tbqn:GetAttribute(_d("NhESAg0/VQ"))

if type(ra) == _d("AQkTAg0") then
if ra.cycleId then
yw = ra.cycleId
end

if ra.completed and ra.completedRaidId then
return tostring(yw) .. _d("TwweAA0")
end

local cdrz = ra.phaseIndex or ra.phase

if cdrz then
return tostring(yw) .. _d("Tw") .. tostring(cdrz)
end
end

return tostring(yw)
end

function soi.finished(vjvq)
local laj = soi.progress[vjvq]

return type(laj) == _d("AQkTAg0") and laj.completed == true and laj.completedRaidId == vjvq
end

function soi.bossFor(lqxj)
local axsa = soi.picks[lqxj]

if not axsa or #axsa == 0 then
return nil
end

local jcz = gb:FindFirstChild(_d("JwkYCjsCUAEdAg"))
local xuv = soi.losses[lqxj] or {}
local hyx = soi.cursor[lqxj] or 1

for vyh = 0, #axsa - 1 do
local qi = (hyx - 1 + vyh) % #axsa + 1
local zibl = axsa[qi]
local rm = not jcz or jcz:GetAttribute(_d("Jw0QChEp") .. zibl) == true

if rm and not soi.finished(zibl) and (xuv[zibl] or 0) < soi.lossLimit then
soi.cursor[lqxj] = qi

return zibl
end
end

return nil
end

aep.RaidBattleStarted.OnClientEvent:Connect(function(oks)

local ghn = type(oks) == _d("AQkTAg0") and oks.raidId or nil

if type(ghn) == _d("BhwDBwYR") then
soi.pending[ghn] = false
else
for hfu in pairs(soi.pending) do
soi.pending[hfu] = false
end
end
end)

aep.BattleEnd.OnClientEvent:Connect(function(yoz)
for wpn in pairs(soi.pending) do
soi.pending[wpn] = false
end

if type(yoz) ~= _d("AQkTAg0") or not soi.enabled then
return
end

local qvg = type(yoz.raidId) == _d("BhwDBwYR") and yoz.raidId or nil
local gew = qvg and soi.inFlight[qvg] or nil

if not qvg then
for ehsm, zazi in pairs(soi.inFlight) do
qvg = ehsm
gew = zazi
break
end
end

if not qvg then
return
end

soi.inFlight[qvg] = nil

if yoz.result == _d("GQcCCw") then

local pspw = soi.losses[gew or 1]

soi.cleared[qvg] = nil
pspw[qvg] = (pspw[qvg] or 0) + 1

for fvy in pairs(soi.pendingUntil) do
soi.pendingUntil[fvy] = os.time() + 3
end
else

soi.losses[gew or 1][qvg] = 0
end
end)

aep.RaidProgress.OnClientEvent:Connect(function(ojvj)
if type(ojvj) == _d("AQkTAg0") and type(ojvj.raidId) == _d("BhwDBwYR") then
soi.progress[ojvj.raidId] = ojvj
end
end)

aep.RequestRaidProgress:FireServer()

local gotr = {
enabled = false,
progress = nil,
currentRoom = nil,
inBattle = false,
inBattleUntil = 0,
pending = false,
pendingUntil = 0,
}

getgenv().ACBXAutoRooms = gotr

aep.SyncInfiniteRoomProgress.OnClientEvent:Connect(function(qfr)
if type(qfr) == _d("Gx0cDA0E") then
gotr.progress = qfr
gotr.pending = false
end
end)

aep.BattleEnd.OnClientEvent:Connect(function(abe)
if type(abe) == _d("AQkTAg0") and abe.mode == _d("HAYXBwYfRRA3AwEHGw") then
gotr.inBattle = false
gotr.pending = true
gotr.pendingUntil = os.time() + 3

task.delay(0.3, function()
aep.RequestInfiniteRoomProgress:FireServer()
end)
end
end)

aep.RequestInfiniteRoomProgress:FireServer()

local jzua = {
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

getgenv().ACBXAutoTower = jzua

local jskh = {
enabled = false,
floor = 0,
triggered = false,
}

getgenv().ACBXAutoPause = jskh

local ks = {
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
Typhoon = _d("AREBBgcZXw"),
Blizzard = _d("FwQYFBIXQxE"),
Lightning = _d("GQEWBhwYWBsP"),
Windstorm = _d("AgEfChsCXgcF"),
Sharingan = _d("BgAQHAEYVhQG"),
Singularity = _d("BgEfCR0aUAcBBRc"),
[_d("OAcfDxoVWVUsHgMJH18")] = _d("GAcfDxoVWSoMHgMJH18"),
Void = _d("AwcYCg"),
[_d("OAkVC0gfX1UgFA8eE18")] = _d("GAkVCzcfXyoAFA8eE18"),
Manga = _d("GAkfCQk"),
},
}

function ks.weatherWanted(zw)
local st = ks.weatherNow

if type(st) ~= _d("BhwDBwYR") then
return nil
end

for tqdz, an in pairs(zw or ks.weathers) do
if an and ks.weatherIds[tqdz] == st then
return tqdz
end
end

return nil
end

getgenv().ACBXAutoGiveUp = ks

local ggy = {
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

if gb:FindFirstChild(_d("OAcVGwQTYhYaGB4cBQ")) and gb.ModuleScripts:FindFirstChild(_d("PQkDCgsZQxA8HhkNBHUUHBA")) then
local jlt, who = pcall(function()
return require(gb.ModuleScripts.HardcoreTowerData)
end)

if jlt then
ggy.data = who
end
end

getgenv().ACBXHardcore = ggy

task.spawn(function()
local rmoi = gb:FindFirstChild(_d("Jw0cARwTQg"))

if not rmoi then
return
end

local yehp = rmoi:WaitForChild(_d("JhEfDSAXQxELHhwNIl4CDQM+GhlWBw0CHQ"), 20)

if yehp and yehp:IsA(_d("Jw0cARwTdAMNHxo")) then
ggy.remotes.sync = yehp

yehp.OnClientEvent:Connect(function(zhw)
if type(zhw) ~= _d("AQkTAg0") then
return
end

ggy.progress = tonumber(zhw.progress) or ggy.progress
ggy.best = tonumber(zhw.best) or ggy.best

if type(zhw.points) == _d("AQkTAg0") then
ggy.points = zhw.points
end
end)
end

local tq = rmoi:WaitForChild(_d("Jw0AGw0FRT0JAwoLGUMQPB4ZDQRhBwcWHA0FQg"), 20)

if tq and tq:IsA(_d("Jw0cARwTdAMNHxo")) then
ggy.remotes.request = tq

pcall(function()
tq:FireServer()
end)
end

local wx = rmoi:WaitForChild(_d("MgQeDAkacwAOFzsYElABDRU"), 20)

if wx and wx:IsA(_d("Jw0cARwTdAMNHxo")) then
wx.OnClientEvent:Connect(function(emcq, op, pu, dhvs)
ggy.globalLuck = tonumber(emcq) or 0
ggy.globalRoll = tonumber(op) or 0
ggy.globalLuckTime = type(pu) == _d("BhwDBwYR") and pu or _d("")
ggy.globalRollTime = type(dhvs) == _d("BhwDBwYR") and dhvs or _d("")
end)
end
end)

function znb.otherTowerOn(oqf)
if znb.enabled then
return false
end

if oqf == _d("AQcGCxo") then
return false
end

if oqf == _d("HQkdAgcBVBAG") then
return ggy.active()
end

return wrfj.run.enabled
end

function ggy.active()
return ggy.island
end

function ggy.unspentPoints()
local tvr = ggy.data
local ga = tonumber(ggy.progress) or 0
local zc = 0

if type(tvr) == _d("AQkTAg0") and type(tvr.getEarnedPoints) == _d("Ex0fDRwfXhs") then
local mygt, ckwr = pcall(tvr.getEarnedPoints, ga)
zc = mygt and tonumber(ckwr) or 0
end

return math.max(0, zc - #(ggy.points or {})), zc
end

function ggy.buffText()
local xm = ggy.data

if type(xm) ~= _d("AQkTAg0") then
return _d("PQkDCgsZQxA8HhkNBHUUHBBOAQURGAECHQEYVlUOAwEFVkUdAQJOCgNYGQxf")
end

local atc = tonumber(ggy.progress) or 0
local itf = tonumber(ggy.best) or 0
local kb, vy = ggy.unspentPoints()
local qkyo = {
_d("MwQeARpW") .. atc .. _d("VUhRLA0FRVU") .. itf,
_d("JQcYABwFC1U") .. kb .. _d("VR0fHRgTXwFIHghI") .. vy .. _d("VQ0QHAYTVQ"),
}

local scju = {}

for iz, hjf in ipairs(ggy.points or {}) do
local qd = xm.StatById and xm.StatById[hjf]
local stzo = qd and (qd.name or hjf) or tostring(hjf)
local dfun = xm.PointValue and xm.PointValue[hjf]

table.insert(scju, dfun and (stzo .. _d("VUM") .. tostring(dfun)) or stzo)
end

if #scju == 0 then
table.insert(qkyo, _d("Nx0XCBtMERsHHwtIFF4ADxkaSA9UAQ"))
else
table.insert(qkyo, _d("Nx0XCBtMEQ") .. table.concat(scju, _d("WUg")))
end

local ids = {}

if (tonumber(ggy.globalLuck) or 0) > 0 then
table.insert(ids, _d("OR0SBUhd") .. tostring(ggy.globalLuck) .. _d("UA") .. (ggy.globalLuckTime ~= _d("") and (_d("VUA") .. ggy.globalLuckTime .. _d("XA")) or _d("")))
end

if (tonumber(ggy.globalRoll) or 0) > 0 then
table.insert(ids, _d("JwcdAkgFQRANFU5D") .. tostring(ggy.globalRoll) .. _d("UA") .. (ggy.globalRollTime ~= _d("") and (_d("VUA") .. ggy.globalRollTime .. _d("XA")) or _d("")))
end

if #ids == 0 then
table.insert(qkyo, _d("MgQeDAkaERcdFwgbTBEbBx8LSBdSAQEHCw"))
else
table.insert(qkyo, _d("MgQeDAkaERcdFwgbTBE") .. table.concat(ids, _d("WUg")))
end

return table.concat(qkyo, _d("fw"))
end

function ggy.nextMilestone()
local rng = ggy.data

if type(rng) ~= _d("AQkTAg0") or type(rng.Milestones) ~= _d("AQkTAg0") or #rng.Milestones == 0 then
return nil
end

local fcdh = tonumber(hs:GetAttribute(_d("PQkDCgsZQxAuHQEHBA"))) or 0

return math.min(fcdh + 1, rng.Milestones[#rng.Milestones])
end

function ggy.start(zphn)
local oub = ggy.nextMilestone()

if not oub then
return false
end

local nr = lbjw:FindFirstChild(zphn == 2 and _d("Jw0CCxw0UAEcHQsuGl4aGkM") or _d("Jw0CCxw0UAEcHQsuGl4aGg"))

if nr and nr:IsA(_d("NwEfCgkUXRAtBwsGAg")) then
pcall(function()
nr:Fire(oub, _d("HAYXBwYfRRA3AwEHGw"))
end)
end

local pyga = lbjw:FindFirstChild(zphn == 2 and _d("JhwQHBw/XxMBHwccE2MaBxwsCQJFGQ1D") or _d("JhwQHBw/XxMBHwccE2MaBxwsCQJFGQ0"))

if pyga and pyga:IsA(_d("NwEfCgkUXRAtBwsGAg")) then
pcall(function()
pyga:Fire(oub, _d("HQkDCgsZQxA"), oub)
end)
end

if uoy.bossTeams.applyTower then
uoy.bossTeams.applyTower(_d("HQkDCgsZQxA"), zphn)
end

ggy.pending = true
ggy.pendingUntil = os.time() + 10

return pcall(function()
aep.StartBattle:FireServer(_d("HAYXBwYfRRA3AwEHGw"), {
tower = _d("HQkDCgsZQxA"),
milestone = oub,
slot = zphn,
})
end)
end

function ggy.floorNow()
local zb = znb.hardcoreSlot()

if not zb or not znb.busy(zb) then
return nil
end

local hb = lbjw:FindFirstChild(zb == 2 and _d("NwkFGgQTdgABQw") or _d("NwkFGgQTdgAB"))
local tz = hb and hb:FindFirstChild(_d("Jx0fKAQZXgckEAwNGg"))
local ond = tz and tz.Text or _d("")

return tonumber(ond:match(_d("Ky4dAQcEFAZDWUsMXRg")))
end

local ky = {
enabled = true,
nextAt = os.clock() + 300,
jumps = 0,
}

getgenv().ACBXAntiKick = ky

local cwue = getgenv().ACBXNoUpdate == true

local rh = {
enabled = not cwue,
buildId = "0.9991",
interval = 180,
retry = 45,
forceAfter = 900,
applying = false,
checking = false,
pendingVersion = nil,
pendingSince = nil,
cameFrom = nil,
}

local ye = {
enabled = false,
tpToBay = false,

stick = {
enabled = false,
at = 0,
hits = 0,
last = _d("Gg4X"),

names = {
[_d("BhwYDQM")] = true,
[_d("GR0SBUgFRRwLGg")] = true,
[_d("GR0SBRsCWBYD")] = true,
[_d("GR0SBTcFRRwLGg")] = true,
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
rod = _d("WA"),
castTime = 0,
tutorialStep = 0,
phase = _d("HAwdCw"),
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
deepPhase = _d("HAwdCw"),
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

local mbb = Vector3.new(-546.8, 13.9, -40250.1)

if type(getgenv().ACBXFishingCatches) == _d("AQkTAg0") then
ye.catches = getgenv().ACBXFishingCatches
end

ye.totalCatches = 0

for bj, gdt in pairs(ye.catches) do
ye.totalCatches = ye.totalCatches + gdt
end

getgenv().ACBXFishingCatches = ye.catches
getgenv().ACBXFishing = ye

ye.catchName = function(us)
local ugse = mat.ById[us]

if ugse and ugse.name then
return ugse.name
end

local yh = aqra.ById[us]

if yh and yh.name then
return yh.name
end

return us
end

local fir

fir = {
folder = _d("NCszNg"),
path = _d("NCszNkcVUAELGQsbWFsGBx8"),
at = 0,
save = function()
if type(writefile) ~= _d("Ex0fDRwfXhs") then
return false
end

local jwv = pcall(function()
if type(makefolder) == _d("Ex0fDRwfXhs") and type(isfile) == _d("Ex0fDRwfXhs") and not isfile(fir.path) then
pcall(makefolder, fir.folder)
end

writefile(fir.path, game:GetService(_d("PRwFHjsTQwMBEgs")):JSONEncode({
catches = ye.catches,
totalCatches = ye.totalCatches,
lastCatch = ye.lastCatch,
updatedAt = os.time(),
}))
end)

return jwv
end,
load = function()
if type(readfile) ~= _d("Ex0fDRwfXhs") or type(isfile) ~= _d("Ex0fDRwfXhs") then
return false
end

local vb, wvru = pcall(function()
if not isfile(fir.path) then
return nil
end

return readfile(fir.path)
end)

if not vb or type(wvru) ~= _d("BhwDBwYR") or #wvru == 0 then
return false
end

local eu
local bxw = pcall(function()
eu = game:GetService(_d("PRwFHjsTQwMBEgs")):JSONDecode(wvru)
end)

if not bxw or type(eu) ~= _d("AQkTAg0") or type(eu.catches) ~= _d("AQkTAg0") then
return false
end

for sxod, pko in pairs(eu.catches) do
local lu = tonumber(pko) or 0

if lu > 0 then
ye.catches[tostring(sxod)] = math.max(ye.catches[tostring(sxod)] or 0, lu)
end
end

ye.totalCatches = 0

for pfuq, zl in pairs(ye.catches) do
ye.totalCatches = ye.totalCatches + zl
end

return true
end,
}

fir.load()
getgenv().ACBXFishingStore = fir

local roae = {}

local vgz = 0

local function gl()
local cw = {}

for trd, gq in ipairs(workspace:GetDescendants()) do
if gq:IsA(_d("NwkCCzgXQwE")) and gq.Name == _d("IgkFCxo") then
table.insert(cw, gq)
end
end

roae = cw
vgz = os.clock()
end

local function lpi(pawb)
if type(pawb) ~= _d("AQkTAg0") then
return false
end

ye.loaded = true
ye.dirty = false
ye.fishing = pawb.fishing == true
ye.autoOn = pawb.autoOn == true
ye.autoUnlocked = pawb.autoUnlocked == true
ye.casts = tonumber(pawb.casts) or ye.casts
ye.totalCasts = tonumber(pawb.totalCasts) or ye.totalCasts
ye.luck = tonumber(pawb.luck) or ye.luck
ye.rod = tostring(pawb.equippedRod or ye.rod)
ye.castTime = tonumber(pawb.castTime) or ye.castTime
ye.tutorialStep = tonumber(pawb.tutorialStep) or ye.tutorialStep

if type(pawb.rods) == _d("AQkTAg0") then
ye.rodsOwned = pawb.rods
end

if type(pawb.baits) == _d("AQkTAg0") then
ye.baitsOwned = pawb.baits
end

if type(pawb.boats) == _d("AQkTAg0") then
ye.boatsOwned = pawb.boats
end

if type(pawb.mats) == _d("AQkTAg0") then
ye.mats = pawb.mats
end

if pawb.bootOwned ~= nil then
ye.boot.owned = pawb.bootOwned == true
end

if pawb.bootEquipped ~= nil then
ye.boot.equipped = pawb.bootEquipped == true
end

if pawb.equippedBait ~= nil then
ye.equippedBait = tostring(pawb.equippedBait)
end

if pawb.activeBoat ~= nil then
ye.activeBoat = tostring(pawb.activeBoat)
end

ye.boatTier = tonumber(pawb.boatTier) or ye.boatTier
ye.islandLocked = pawb.islandLocked == true
ye.rebirths = tonumber(pawb.rebirths) or ye.rebirths

if type(pawb.rebirthCards) == _d("AQkTAg0") then
ye.rebirthCards = pawb.rebirthCards
end

ye.lastSync = os.time()

return true
end

local function daj()
local dbf, vpg = pcall(function()
return aep.FishingGetState:InvokeServer()
end)

if not dbf or type(vpg) ~= _d("AQkTAg0") then
ye.loaded = false
return false
end

return lpi(vpg)
end

local fnn = false

local function wylj()
if fnn then
return false
end

local oazd = hs.Character

if not oazd then
return false
end

if oazd:FindFirstChild(_d("MwECBgEYVicHFQ")) then
return true
end

local ox = hs:FindFirstChild(_d("NwkSBRgXUh4"))
local ode = ox and ox:FindFirstChild(_d("MwECBgEYVicHFQ"))
local tud = oazd:FindFirstChildOfClass(_d("PR0cDwYZWBE"))

if not (ode and tud) then
return false
end

return pcall(function()
tud:EquipTool(ode)
end)
end

local function ow()
local fpau = hs.Character
local dfz = fpau and fpau:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if not dfz then
return nil
end

local hx = RaycastParams.new()
hx.FilterType = Enum.RaycastFilterType.Exclude
hx.FilterDescendantsInstances = { fpau }

local wrm = 24
local oa = {}
local uzhs = 0

for hkq = 0, wrm - 1 do
local orqb = math.rad(hkq * (360 / wrm))
local zzxd = Vector3.new(math.sin(orqb), 0, math.cos(orqb))
local ptg = dfz.Position + zzxd * 20 + Vector3.new(0, 40, 0)
local pvev = workspace:Raycast(ptg, Vector3.new(0, -120, 0), hx)
local cy = pvev and (dfz.Position.Y - pvev.Position.Y) or 120

oa[hkq] = cy > 12

if oa[hkq] then
uzhs = uzhs + 1
end
end

if uzhs == 0 then
return nil
end

local qq, xmk = nil, 0

for uisx = 0, wrm - 1 do
if oa[uisx] and not oa[(uisx - 1) % wrm] then
local vyi = 0

while vyi < wrm and oa[(uisx + vyi) % wrm] do
vyi = vyi + 1
end

if vyi > xmk then
qq = uisx
xmk = vyi
end
end
end

if not qq then
return nil
end

local mx = qq + (xmk - 1) / 2
local ppye = math.rad(mx * (360 / wrm))

return Vector3.new(math.sin(ppye), 0, math.cos(ppye))
end

local function kz()
local kjog = hs.Character
local vq = kjog and kjog:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if not vq then
return nil
end

if #roae == 0 or os.clock() - vgz > 20 then
gl()
end

local dbxw, fr = nil, math.huge

for flc, iuj in ipairs(roae) do
if iuj.Parent then
local jnjv = (iuj.Position - vq.Position).Magnitude

if jnjv < fr then
fr = jnjv
dbxw = iuj
end
end
end

if not dbxw or fr > 25 then
local yzf = ow()

if yzf then
return yzf
end
end

if not dbxw then
return nil
end

local egev = Vector3.new(dbxw.Position.X - vq.Position.X, 0, dbxw.Position.Z - vq.Position.Z)

if egev.Magnitude < 0.05 then
return Vector3.new(0, 0, -1)
end

return egev.Unit
end

local function hkw()
local on = hs.Character
local csk = on and on:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if not csk then
return nil
end

local jeos = csk.CFrame.LookVector
local bm = Vector3.new(jeos.X, 0, jeos.Z)

if bm.Magnitude < 0.05 then
return nil
end

return bm.Unit
end

local function mvz()
local wemo = hs.Character
local dcjj = wemo and wemo:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if not dcjj then
return false
end

local ex = mbb
local axpk = RaycastParams.new()
axpk.FilterType = Enum.RaycastFilterType.Exclude
axpk.FilterDescendantsInstances = { wemo }

local mox = workspace:Raycast(mbb + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), axpk)

if mox and mox.Instance.Name ~= _d("IgkFCxo") then
ex = Vector3.new(mbb.X, mox.Position.Y + 3, mbb.Z)
end

dcjj.CFrame = CFrame.new(ex)
task.wait(0.5)
gl()

return true
end

local function dbpg()
local jc = hs.Character
local olk = jc and jc:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if not olk then
return false
end

local uu = Vector3.new(mbb.X - olk.Position.X, 0, mbb.Z - olk.Position.Z)
local tagj = uu.Magnitude

if tagj < 2 then
return false
end

local bihl = uu.Unit

if tagj > 12 then
local dwoa = math.min(14, tagj - 6)
local jx = olk.Position + bihl * dwoa
local uyj = RaycastParams.new()
uyj.FilterType = Enum.RaycastFilterType.Exclude
uyj.FilterDescendantsInstances = { jc }

local raae = workspace:Raycast(jx + Vector3.new(0, 25, 0), Vector3.new(0, -80, 0), uyj)

if raae and raae.Instance.Name ~= _d("IgkFCxo") then
local tw = raae.Position.Y + 3.2

if math.abs(tw - olk.Position.Y) <= 10 then
local mq = Vector3.new(raae.Position.X, tw, raae.Position.Z)
olk.CFrame = CFrame.lookAt(mq, mq + bihl)

return true
end
end
end

olk.CFrame = CFrame.lookAt(olk.Position, olk.Position + bihl)

return true
end

local sgm = {}

sgm.surfaceWait = 8

sgm.walking = false
sgm.walkStartedAt = 0

sgm.islandHold = Vector3.new(-7384, 16.3, -40539)

sgm.custom = nil
sgm.customIsland = nil

sgm.islandAnchors = {
{ id = _d("FAoQAAwZXxAMLgcbGlAbDA"), x = -3800 },
{ id = _d("AR8YADcUVBQLGQsb"), x = -6180 },
{ id = _d("AgEfCgUfXRk3GB0EEw"), x = -7480 },
}

sgm.arrivals = {
abandoned_island = Vector3.new(-3825, 24, -40260),
twin_beaches = Vector3.new(-6180, 40, -40350),
windmill_isle = Vector3.new(-7480, 30, -40350),
lobby = Vector3.new(-499, 17, -40234),
}

function sgm.islandOf(ogv)
if not ogv then
return _d("GQcTDBE")
end

if ogv.X > -4500 then
return _d("GQcTDBE")
end

local gpwj, bqqk = _d("FAoQAAwZXxAMLgcbGlAbDA"), math.huge

for gqwf, yu in ipairs(sgm.islandAnchors) do
local wybb = math.abs(ogv.X - yu.x)

if wybb < bqqk then
gpwj = yu.id
bqqk = wybb
end
end

return gpwj
end

sgm.savedVersion = 2

do
local pur = getgenv().ACBXDeepSpot

if type(pur) == _d("AQkTAg0") and pur.v == sgm.savedVersion
and tonumber(pur.X) and tonumber(pur.Y) and tonumber(pur.Z) then
sgm.custom = Vector3.new(tonumber(pur.X), tonumber(pur.Y), tonumber(pur.Z))
sgm.customIsland = pur.island
end
end

function sgm.spot()
return sgm.custom or sgm.islandHold
end

function sgm.dropStale()
if not sgm.custom then
return false
end

if sgm.zoneAt(sgm.custom) then
return false
end

sgm.custom = nil
sgm.customIsland = nil
getgenv().ACBXDeepSpot = nil

return true
end

function sgm.capture()
local mic = hs.Character
local tiqx = mic and mic:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if not tiqx then
return false, _d("OwdRDQAXQxQLBQsaVkUaSAMLCRIRFEgCHgcCERMaHgNG")
end

local qn = tiqx.Position
local mg = sgm.floorAt(Vector3.new(qn.X, qn.Y + 10, qn.Z))

if not mg then
return false, _d("JhwQAAxWXhtIAgEEH1VVDwMBHRhVVQ4YHBsCEVhIBQYBBREGGB4aSB5QBkgfAUgQXRoHA04cGREWCQIaSBBDGgVf")
end

local py = sgm.zoneAt(qn)

if not py then
return false, _d("IQAYHUgFQRocUQcbVl4AHAIHDBMREB4UHBFWVxwbGQcGEREHAR8JSFsRBhwQAAxWXgMNA04cHlRVHxAaDQQREwEDHRxY")
end

sgm.custom = qn
sgm.customIsland = sgm.islandOf(qn)

getgenv().ACBXDeepSpot = {
X = qn.X,
Y = qn.Y,
Z = qn.Z,
island = sgm.customIsland,
v = sgm.savedVersion,
}

return true, _d("JgkHCwxWRR0BAk4bBl4BSBAdSAJZEEgVCw0GHAIJBQsaVlkaBBVOQA") .. tostring(py.name) .. _d("XEY")
end

function sgm.zoneTable()
local mt = {}

if qike and type(qike.Zones) == _d("AQkTAg0") then
for ggn, ligc in ipairs(qike.Zones) do
mt[#mt + 1] = {
id = tostring(ligc.id),
name = tostring(ligc.name or ligc.id),
half = tonumber(ligc.half) or 0,
luck = tonumber(ligc.luck) or 0,
index = tonumber(ligc.index) or 0,
boatTier = tonumber(ligc.boatTier) or 0,
}
end
end

table.sort(mt, function(nibn, pkmo)
return nibn.index < pkmo.index
end)

return mt
end

function sgm.zoneAt(ysze)
local qug = qike and qike.ZoneCenter
local sa = sgm.zoneTable()

if not (qug and ysze and #sa > 0) then
return nil
end

local iy = math.max(math.abs(ysze.X - qug.X), math.abs(ysze.Z - qug.Z))

for kne, ytnv in ipairs(sa) do
if iy < ytnv.half then
return ytnv
end
end

return nil
end

function sgm.current()
local hzx = hs.Character
local abv = hzx and hzx:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

return abv and sgm.zoneAt(abv.Position) or nil
end

function sgm.sync()
local cwtv = sgm.current()
ye.zoneId = cwtv and cwtv.id or nil
end

function sgm.floorAt(rn)
local bffa = hs.Character
local pr = RaycastParams.new()
pr.FilterType = Enum.RaycastFilterType.Exclude
pr.FilterDescendantsInstances = { bffa }

local dkg = workspace:Raycast(Vector3.new(rn.X, rn.Y + 20, rn.Z), Vector3.new(0, -80, 0), pr)

if dkg and dkg.Instance.Name ~= _d("IgkFCxo") then
return dkg
end

return nil
end

function sgm.ensureSpotMap()
local rxx = sgm.spot()
local roc = Vector3.new(rxx.X, rxx.Y + 20, rxx.Z)

if sgm.floorAt(roc) then
return true
end

local rnqm = workspace:FindFirstChild(_d("OAkBHQ"))

if rnqm and rnqm:FindFirstChild(_d("NgcQHRwXXTkHEwwR")) then
if os.clock() - (sgm.hopAt or 0) > 1 then
sgm.hopAt = os.clock()
sgm.hop(rxx)
ye.lastMessage = _d("OAcHBwYREQEHURoAExERDRQeRQFQAQ0DThsGXgE")
end

return false
end

if os.clock() - (sgm.islandAskedAt or 0) > 1.2 then
sgm.islandAskedAt = os.clock()

local veur = sgm.customIsland or sgm.islandOf(rxx)

if veur == _d("GQcTDBE") then
pcall(function()
aep.TeleportToWorld:FireServer(_d("GQcTDBE"))
end)
else
pcall(function()
aep.FishingIslandTeleport:FireServer(_d("AgkIHgcfXwE"), veur)
end)
end

ye.lastMessage = _d("IQkaBwYREQEAFE4PF1wQTwJOHBNdEBgeHBxWRRpIBQYNVlUQDQFDHxdFEBpRAwkG")
end

return false
end

function sgm.hop(ab)
local pxt = hs.Character
local hg = pxt and pxt:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))
local rph = pxt and pxt:FindFirstChildOfClass(_d("PR0cDwYZWBE"))

if not (hg and rph) then
return false
end

if rph.SeatPart then
pcall(function()
rph.Sit = false
end)
end

hg.AssemblyLinearVelocity = Vector3.zero
hg.CFrame = CFrame.new(Vector3.new(ab.X, ab.Y + 8, ab.Z))

return true
end

function sgm.faceWater()
local oykp = hs.Character
local fz = oykp and oykp:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if not fz then
return false
end

local zcm = kz()

if not zcm then
local tn = qike and qike.ZoneCenter

if tn then
local vzx = Vector3.new(tn.X - fz.Position.X, 0, tn.Z - fz.Position.Z)

zcm = vzx.Magnitude > 1 and vzx.Unit or nil
end
end

if not zcm then
return false
end

fz.CFrame = CFrame.lookAt(fz.Position, fz.Position + zcm)

return true
end

function sgm.aimWater(ro)
local oy = hs.Character
local qwa = oy and oy:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if not qwa then
return false
end

if ro then
gl()
end

local rlmc = qwa.CFrame.LookVector
local kul = Vector3.new(rlmc.X, 0, rlmc.Z)
local fxc = kz()

if not fxc then
return false
end

if kul.Magnitude > 0.05 and kul.Unit:Dot(fxc) > 0.985 then
return true
end

qwa.CFrame = CFrame.lookAt(qwa.Position, qwa.Position + fxc)

return true
end

function sgm.hold(acoq)
local llho = hs.Character
local rwv = llho and llho:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))
local dgs = llho and llho:FindFirstChildOfClass(_d("PR0cDwYZWBE"))

if not (rwv and dgs) then
return false
end

if dgs.SeatPart then
pcall(function()
dgs.Sit = false
end)
end

local cnru = sgm.floorAt(acoq)

if not cnru then
return false
end

rwv.AssemblyLinearVelocity = Vector3.zero
rwv.CFrame = CFrame.new(Vector3.new(acoq.X, cnru.Position.Y + 3.2, acoq.Z))

pcall(sgm.aimWater, true)

ye.phase = _d("HAwdCw")
ye.nextCastAt = 0

return true
end

function sgm.dive()
local xa = sgm.spot()

if not sgm.ensureSpotMap() then
return false
end

if not sgm.hold(xa) then
return false
end

sgm.islandAskedAt = 0

local gd = sgm.zoneAt(xa)

ye.lastMessage = gd
and (_d("PQcdCgEYVlUcGQtIElQQGFwZCQJUB0gCHgcCEV0") .. tostring(gd.name) .. _d("XA"))
or _d("PQcdCgEYVlUcGQtIElQQGFwZCQJUB0gCHgcC")

task.wait(0.25)
sgm.sync()
ye.deepDiveAt = os.clock() + 2

return true
end

function sgm.walk()
local fo = hs.Character
local ymh = fo and fo:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if sgm.walking and os.clock() - (sgm.walkStartedAt or 0) < 60 then
return false
end

if not ymh then
return false
end

local sxac = sgm.spot()

if (ymh.Position - Vector3.new(sxac.X, ymh.Position.Y, sxac.Z)).Magnitude <= 8 then
ye.phase = _d("HAwdCw")
ye.nextCastAt = 0

return true
end

sgm.walking = true
sgm.walkStartedAt = os.clock()
ye.deepPhase = _d("AgkdBQ")
ye.deepStageAt = os.clock()
ye.lastMessage = _d("IgkdBQEYVlUcHk4cHlRVDBQLGBNCAUgGDxwTQ1UbAQEc")

task.spawn(function()
local ewu = fo and fo:FindFirstChildOfClass(_d("PR0cDwYZWBE"))

local qicr, tkk = pcall(function()

local tyx = workspace:FindFirstChild(_d("OAkBHQ"))
local qcqo = sgm.customIsland or sgm.islandOf(sxac)
local wo = (ymh.Position - Vector3.new(sxac.X, ymh.Position.Y, sxac.Z)).Magnitude

if wo > 400 then
if not (tyx and tyx:FindFirstChild(_d("NgcQHRwXXTkHEwwR"))) then
pcall(function()
aep.TeleportToWorld:FireServer(_d("GQcTDBE"))
end)

local hbua = os.clock() + 20

while ye.deepWalk and os.clock() < hbua do
local owa = workspace:FindFirstChild(_d("OAkBHQ"))

if owa and owa:FindFirstChild(_d("NgcQHRwXXTkHEwwR")) then
break
end

task.wait(0.5)
end
end

if ye.deepWalk then
local ula = sgm.arrivals and sgm.arrivals[qcqo]

if ula then
sgm.hop(ula)
else
local yfut = Vector3.new(sxac.X - ymh.Position.X, 0, sxac.Z - ymh.Position.Z)
local mqda = yfut.Magnitude > 1 and yfut.Unit or Vector3.new(1, 0, 0)

sgm.hop(Vector3.new(sxac.X - mqda.X * 120, sxac.Y, sxac.Z - mqda.Z * 120))
end

task.wait(1.5)
end
end

if ye.deepWalk and ewu then

local vs = (ymh.Position - Vector3.new(sxac.X, ymh.Position.Y, sxac.Z)).Magnitude
local lfgp = os.clock() + math.clamp(vs / 8, 30, 600)
local dmph = 0
local yqrr = ymh.Position
local xmkb = os.clock()

while ye.deepWalk and os.clock() < lfgp do
local brif = Vector3.new(sxac.X - ymh.Position.X, 0, sxac.Z - ymh.Position.Z)

if brif.Magnitude <= 3 then
break
end

if os.clock() - dmph >= 0.25 then
ewu:MoveTo(Vector3.new(sxac.X, ymh.Position.Y, sxac.Z))
dmph = os.clock()
end

if os.clock() - xmkb >= 1.2 then
if (ymh.Position - yqrr).Magnitude < 2 then
ewu.Jump = true
end

yqrr = ymh.Position
xmkb = os.clock()
end

task.wait(0.1)
end

ewu:MoveTo(ymh.Position)
end
end)

sgm.walking = false

if not qicr then
ye.deepPhase = _d("HAwdCw")
ye.deepStageAt = os.clock()
ye.lastMessage = _d("IgkdBUgCXlUsFAsYE0IBSCYPHBNDVQ4QBwQTVU9I") .. tostring(tkk)

return
end

if not ye.deepWalk then
return
end

local ryl = Vector3.new(ymh.Position.X - sxac.X, 0, ymh.Position.Z - sxac.Z)

if ryl.Magnitude <= 6 then

pcall(sgm.aimWater, true)
ye.phase = _d("HAwdCw")
ye.nextCastAt = 0
ye.deepPhase = _d("HQcdCg")
ye.deepStageAt = os.clock()
sgm.sync()
ye.lastMessage = _d("IgkdBQ0SEQEHURoAExEGCQcLDFZVEA0BQx8XRRAaUR0YGUU")
else

ye.deepPhase = _d("HAwdCw")
ye.deepStageAt = os.clock()
ye.lastMessage = _d("NgcEAgxWXxocURkJGlpVHB5OHB5UVQwUCxgTQgFIBg8cE0NVGwEBHFYcVRwDFwEYVlUJFg8BGA")
end
end)

return false
end

function sgm.settle()
for jrlv = 1, 30 do
if not ye.deepZone or ye.deepWalk then
return false
end

if sgm.dive() then
return true
end

task.wait(1)
end

return false
end

function sgm.surface()
local uegh = hs.Character
local qvpn = uegh and uegh:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if not qvpn then
return false
end

local jul = RaycastParams.new()
jul.FilterType = Enum.RaycastFilterType.Exclude
jul.FilterDescendantsInstances = { uegh }

local gmfu = workspace:Raycast(mbb + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), jul)
local ub = mbb

if gmfu and gmfu.Instance.Name ~= _d("IgkFCxo") then
ub = Vector3.new(mbb.X, gmfu.Position.Y + 3, mbb.Z)
end

qvpn.CFrame = CFrame.new(ub)
ye.phase = _d("HAwdCw")
ye.nextCastAt = 0

return true
end

function ye.gotoIsland()
local ofsv = hs.Character
local ob = ofsv and ofsv:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))
local orgn = workspace:FindFirstChild(_d("PBsdDwYSdxwbGQsaG1AbJiEt"), true)

if not (ob and orgn) then
return false
end

local hze = orgn:GetPivot()
local yoy = RaycastParams.new()
yoy.FilterType = Enum.RaycastFilterType.Exclude
yoy.FilterDescendantsInstances = { ofsv, orgn }

local xt = nil
local bqze = -math.huge

for ng, tind in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local ujqq = workspace:Raycast(hze.Position + tind + Vector3.new(0, 30, 0), Vector3.new(0, -120, 0), yoy)

if ujqq and ujqq.Position.Y > bqze then
xt = ujqq
bqze = ujqq.Position.Y
end
end

if xt then
ob.CFrame = CFrame.new(Vector3.new(xt.Position.X, bqze + 3.5, xt.Position.Z))
else
ob.CFrame = CFrame.new(hze.Position + Vector3.new(0, 4, 0))
end

ye.phase = _d("HAwdCw")
ye.nextCastAt = 0

return true
end

function sgm.cycle()
local xc = os.clock()
local fnax = ye.deepPhase or _d("HAwdCw")
local lapp = tonumber(ye.deepStageAt) or 0

if xc < math.max(ye.shopTripUntil or 0, ye.tpHoldUntil or 0) then
return
end

if fnax == _d("HAwdCw") then
ye.deepPhase = _d("HQcdCg")
ye.deepStageAt = xc

if ye.deepWalk then
sgm.walk()
else
sgm.dive()
end

return
end

if fnax == _d("AgkdBQ") then
return
end

if fnax == _d("HQcdCg") then
local swwc = sgm.current()

local ujk = sgm.zoneAt(sgm.spot())

if swwc and not hs:GetAttribute(_d("Jh8YAwUfXxI")) and xc - (ye.deepAimAt or 0) > 2 then
ye.deepAimAt = xc
pcall(sgm.aimWater)
end

if hs:GetAttribute(_d("Jh8YAwUfXxI")) then
if ye.deepWalk then

ye.deepPhase = _d("HAwdCw")
ye.deepStageAt = xc
else
ye.deepPhase = _d("EQEB")
ye.deepStageAt = xc
ye.lastMessage = _d("Jh8YAwUfXxJIEBpIAlkQSBULDQYRBhgeGkhbEQYdAwgJFVQRSBcBGlZQHBo")
end
elseif not swwc or (ujk and swwc.index < ujk.index) then

ye.deepPhase = _d("HAwdCw")
ye.deepStageAt = xc
end

return
end

if fnax == _d("EQEB") then
sgm.surface()
ye.deepPhase = _d("Bh0DCAkVVA")
ye.deepStageAt = xc

return
end

if fnax == _d("Bh0DCAkVVA") and xc - lapp >= sgm.surfaceWait then
ye.deepPhase = _d("HAwdCw")
end
end

local function inup()
local cwqb = hs.Character
local kjd = cwqb and cwqb:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if not kjd then
return false
end

return (kjd.Position - mbb).Magnitude <= 12
end

local function bn()
if not wylj() then
return false
end

local ims = pcall(function()
aep.FishingSetAuto:FireServer(true)
end)

ye.usingGameAuto = ims
return ims
end

local function ad()
ye.usingGameAuto = false

pcall(function()
aep.FishingSetAuto:FireServer(false)
end)

pcall(function()
aep.FishingStop:FireServer()
end)
end

function ye.recover()
ye.phase = _d("HAwdCw")
ye.nextCastAt = 0
ye.deepPhase = _d("HAwdCw")
ye.deepStageAt = 0
ye.deepDiveAt = 0
ye.waterRefusals = 0
ye.usingGameAuto = false
ye.castMark = ye.totalCasts
ye.castMarkAt = os.clock()

pcall(ad)
pcall(wylj)

if ye.deepZone and not sgm.current() then

pcall(function()
aep.TeleportToWorld:FireServer(_d("GQcTDBE"))
end)
elseif ye.tpToBay and not inup() then
pcall(mvz)
end

ye.lastMessage = _d("MwECBgEYVlUbBQ8EGlQRSFxOGhNCEBxRGgATEQIJBQsaVlAbDFEaBxlaVRwZC0gRUBgNVh1IGl4XCghOGhlG")
end

local function butt()
if not wylj() then
ye.lastMessage = _d("OwdRCAEFWRwGFk4aGVVVAR9OHB5UVQoQDQMGUBYD")
return false
end

local wzg = hkw()
local ghf = kz()
local uef = wzg or ghf

if not uef then
ye.lastMessage = _d("OwdRGQkCVAdIFwEdGFVVBhQPGhRI")
return false
end

if wzg and ghf and wzg:Dot(ghf) < 0.25 then
uef = ghf
end

ye.phase = _d("FgkCGgEYVg")
ye.lastMessage = nil
ye.watchdogAt = os.clock() + 25

local meto, am = pcall(function()
aep.FishingThrow:FireServer(1, uef)
end)

if not meto then
ye.phase = _d("HAwdCw")
ye.lastMessage = tostring(am)
ye.nextCastAt = os.clock() + 3
return false
end

return true
end

local otjt = aep.FishingUpdate.OnClientEvent:Connect(function(ruje, ryox)
ye.dirty = true

if ruje == _d("JhwQGg0") then
if type(ryox) == _d("AQkTAg0") then
ye.autoOn = ryox.autoOn == true
end

return
end

if ruje == _d("NgkCGg") then
ye.phase = _d("AgkYGgEYVjcBBQs")
ye.waterRefusals = 0
return
end

if ruje == _d("NwEFCw") then
local ngps = type(ryox) == _d("AQkTAg0") and tonumber(ryox.warning) or 1

ye.phase = _d("Bw0UAgEYVg")
ye.watchdogAt = os.clock() + 15

task.delay(math.max(0.3, ngps + 0.8), function()
if ye.phase ~= _d("Bw0UAgEYVg") then
return
end

pcall(function()
aep.FishingReel:FireServer(true, 120)
end)

ye.phase = _d("Bw0CAQQAWBsP")
end)

return
end

if ruje == _d("NgkFDQA") then

local qym = type(ryox) == _d("AQkTAg0") and tonumber(ryox.totalCasts) or nil
local lfg = tonumber(getgenv().ACBXFishingCatchMark) or 0

if qym and qym <= lfg and lfg - qym < 25 then
return
end

if qym then
getgenv().ACBXFishingCatchMark = qym
end

local ius = type(ryox) == _d("AQkTAg0") and tostring(ryox.itemId) or _d("AAYaAAcBXw")
local gqx = ye.catchName(ius)

ye.catches[ius] = (ye.catches[ius] or 0) + 1
ye.totalCatches = (ye.totalCatches or 0) + 1

local mu = type(ryox) == _d("AQkTAg0") and ryox.chest or nil

if type(mu) == _d("AQkTAg0") and mu.itemId then
local sh = tostring(mu.itemId)

ye.catches[sh] = (ye.catches[sh] or 0) + 1
end

if os.clock() - (fir.at or 0) >= 5 then
fir.at = os.clock()
fir.save()
end
ye.lastCatch = gqx
ye.lastMessage = nil
ye.phase = _d("HAwdCw")
ye.nextCastAt = os.clock() + 2.5

if type(ryox) == _d("AQkTAg0") then
ye.casts = tonumber(ryox.casts) or ye.casts
ye.totalCasts = tonumber(ryox.totalCasts) or ye.totalCasts
ye.autoUnlocked = ryox.autoUnlocked == true or ye.autoUnlocked
end

return
end

if ruje == _d("NB0FAScQVw") then

ye.usingGameAuto = false
ye.phase = _d("HAwdCw")
ye.nextCastAt = os.clock() + 1
return
end

if ruje == _d("MBsSDxgTVQ") then
ye.phase = _d("HAwdCw")
ye.lastMessage = _d("IQAUTg4fQh1IFgEcVlACCQg")
ye.nextCastAt = os.clock() + 2.5
return
end

if ruje == _d("Jw0bCwsCVBE") then
ye.phase = _d("HAwdCw")

local vnd = type(ryox) == _d("AQkTAg0") and tostring(ryox.message) or _d("NgkCGkgEVB8NEhoNEg")
ye.lastMessage = vnd

if vnd:lower():find(_d("AgkFCxo"), 1, true) then
ye.waterRefusals = (ye.waterRefusals or 0) + 1

if ye.waterRefusals >= 2 then
ye.waterRefusals = 0

if dbpg() then
ye.lastMessage = _d("Jw0XGxsTVVUcBgcLExFYSAUbGhhUEUgTDwsdEQEHBg8aEhEBABROHxdFEBo")
ye.nextCastAt = os.clock() + 1.5
return
end
end

ye.nextCastAt = os.clock() + 8
return
end

ye.waterRefusals = 0
ye.nextCastAt = os.clock() + 3
return
end
end)

local function hpg()
if not ye.loaded then
return _d("Jw0QCgEYVlUOGB0AH18SSAIaCQJUW0Zf")
end

local kaw = ye.autoUnlocked == true
or (ye.totalCasts or 0) > 0
or (ye.tutorialStep or 0) > 0
local to = qike and qike.RodsById and qike.RodsById[ye.rod]
local ojt = to and tostring(to.name) or tostring(ye.rod)
local hv = math.floor((tonumber(ye.luck) or 0) * 100 + 0.5)

local kyyt = {
_d("JwcVVEg") .. ojt,
_d("OR0SBVJW") .. hv .. _d("UA"),
}

local ifc = sgm.current()

if ifc then
table.insert(kyyt, _d("LwcfC1JW") .. ifc.name .. _d("VUBa") .. tostring(math.floor(ifc.luck * 100 + 0.5)) .. _d("UEgdGwsdGA"))
end

table.insert(kyyt, _d(""))
table.insert(kyyt, _d("NgkCGhtWRRpIAh4NGFVPSA") .. vn(ye.casts or 0))
table.insert(kyyt, _d("IQcFDwRWUhQbBR1SVg") .. vn(ye.totalCasts or 0))

table.insert(kyyt, _d(""))
table.insert(kyyt, _d("MwECBgEYVlUdHwIHFVoQDEtO") .. (kaw and _d("DA0C") or _d("Gwc")))
table.insert(kyyt, _d("NB0FAUUQWAYAURsYEUMUDBRUSA") .. (ye.autoUnlocked and _d("Gh8fCww") or _d("GwcFTgcBXxAM")))

if ye.enabled then
local oyq = ye.usingGameAuto and _d("EgkcC0gXRAEH") or tostring(ye.phase)

if oyq == _d("AgkYGgEYVjcBBQs") then
oyq = _d("AgkYGgEYVlUOHhxIFxEXAQUL")
elseif oyq == _d("Bw0UAgEYVg") then
oyq = _d("Bw0UAgEYVlUBHw")
elseif oyq == _d("Bw0CAQQAWBsP") then
oyq = _d("GQkfCgEYVlUBBQ")
end

table.insert(kyyt, _d(""))
table.insert(kyyt, _d("NB0FAUgwWAYAS04") .. oyq)

local twp = soi.worldBoss

if twp and type(twp.hasWork) == _d("Ex0fDRwfXhs") and twp.enabled and twp.hasWork() then
table.insert(kyyt, _d("PQcdCgEYVk9IFgIHFFAZSBMBGwURHBtRGxhWGQcNAhsFE0JVBx9OAQJCVQseAQQSXgIGWA"))
end

if ye.lastCatch then
table.insert(kyyt, _d("OQkCGkgVUAELGVRI") .. ye.lastCatch)
end
end

if ye.lastMessage then
table.insert(kyyt, _d(""))
table.insert(kyyt, _d("OwcFC1JW") .. ye.lastMessage)
end

return table.concat(kyyt, _d("fw"))
end

local function kvgs()
local ocvu = 0

for gnj, mv in pairs(ye.catches) do
local ezbb = mat.ById[gnj]

if not (ezbb and ezbb.type == _d("FgAUHRw")) then
ocvu = ocvu + mv
end
end

return ocvu
end

local function fmy()
local nsfj = {}

for kcg, jxt in pairs(ye.catches) do
local jdjp = mat.ById[kcg]
local kp = jdjp and jdjp.type == _d("FgAUHRw") or false

table.insert(nsfj, {
name = ye.catchName(kcg),
count = jxt,
chest = kp,
rank = kp and (tonumber(jdjp.border) or 1) or 0,
})
end

if #nsfj == 0 then
return _d("OwcFBgEYVlULEBsPHkVVERQaRnw7IR0DAEgZX1UpBBoHVnccGxlOCRhVVRwZC0gCUBkECE4bAlAHHAJOABNDEEZRJxxWQhQeFB1IH0UGDR0IRFZCGkgYGkgVUAcaGAsbVl4DDQNOBhNJAUgCCxsFWBoGXw")
end

table.sort(nsfj, function(wjhv, pkkh)
if wjhv.chest ~= pkkh.chest then
return wjhv.chest
end

if wjhv.chest and wjhv.rank ~= pkkh.rank then
return wjhv.rank > pkkh.rank
end

if wjhv.count ~= pkkh.count then
return wjhv.count > pkkh.count
end

return wjhv.name < pkkh.name
end)

local ss = {}

for qvi, nct in ipairs(nsfj) do
table.insert(ss, nct.name .. _d("VYrx+kg") .. vn(nct.count))
end

local ki = {
table.concat(ss, _d("f2I")),
_d(""),
_d("IQcFDwRWUhQdFgYcTBE") .. vn(kvgs()) .. _d("VarGTg") .. #nsfj .. _d("VQMYAAwF"),
}

if ye.lastCatch then
table.insert(ki, _d("OQkCGkgVUAELGVRI") .. tostring(ye.lastCatch))
end

return table.concat(ki, _d("fw"))
end

local nz = {
rod = Vector3.new(-493, 18, -40254),
bait = Vector3.new(-493, 18, -40254),
}

local function ommh(ben)
if not qike then
return {}
end

local bba

if ben == _d("BwcV") then
bba = qike.RodsById
elseif ben == _d("FwkYGg") then
bba = qike.BaitsById
else
bba = nil
end

local ut = {}

for svrt, ttl in pairs(bba or {}) do
if not ttl.crafted then
table.insert(ut, {
id = tostring(svrt),
name = tostring(ttl.name or svrt),
cost = tonumber(ttl.cost) or 0,
luck = tonumber(ttl.luck) or 0,
index = tonumber(ttl.index) or 0,
island = ttl.shop == _d("HBsdDwYS"),
})
end
end

table.sort(ut, function(yrfx, vgp)
if yrfx.index ~= vgp.index then
return yrfx.index < vgp.index
end

return yrfx.cost < vgp.cost
end)

return ut
end

local function cvo(kxc)
if kxc == _d("BwcV") then
return ye.rodsOwned or {}
elseif kxc == _d("FwkYGg") then
return ye.baitsOwned or {}
end

return {}
end

local function xyfh(xu)
if xu == _d("BwcV") then
return ye.rod
elseif xu == _d("FwkYGg") then
return ye.equippedBait
end

return nil
end

local function asar(jmom)
local fav = cvo(jmom)
local pp = nil

for dduk, mh in ipairs(ommh(jmom)) do
if fav[mh.id] == true then
pp = mh
end
end

return pp
end

local function olvy(skyo)
if skyo.island and ye.islandLocked then
return false
end

return true
end

local function ethb(deo)
local td = cvo(deo)
local dqx = ye.casts or 0
local baw = nil

for dizd, pih in ipairs(ommh(deo)) do
if td[pih.id] ~= true and pih.cost <= dqx and olvy(pih) then
baw = pih
end
end

return baw
end

local function dxmq(pyhl)
local llvv = cvo(pyhl)

for zvu, qvqc in ipairs(ommh(pyhl)) do
if llvv[qvqc.id] ~= true and olvy(qvqc) then
return qvqc
end
end

return nil
end

local function wqce(xibd, we)
if not we then
return _d("GwcfC0gZRhsNFQ")
end

return we.name .. _d("VUBa") .. tostring(math.floor(we.luck * 100 + 0.5)) .. _d("UEgdGwsdGA")
end

local function xxf()
if not qike then
return _d("MwECBgEYVjEJBQ9IGF4BSBcBHRhVVUVRHQAZQVUMEBoJVkQbCQcPARpQFwQUQA")
end

local rmoa = {}
local po = { rod = _d("JwcV"), bait = _d("NwkYGg") }

for aojn, lk in ipairs({ _d("BwcV"), _d("FwkYGg") }) do
local wovr = asar(lk)
local mgf = nil

for fzy, gmn in ipairs(ommh(lk)) do
if gmn.id == xyfh(lk) then
mgf = gmn.name
end
end

if #rmoa > 0 then
table.insert(rmoa, _d(""))
end

table.insert(rmoa, po[lk] .. _d("T0g") .. wqce(lk, wovr))
table.insert(rmoa, _d("OgZRAAcBC1U") .. (mgf or _d("GwcfCw")))

local yd = ethb(lk) or dxmq(lk)

if yd then
local houg = yd.cost - (ye.casts or 0)

table.insert(rmoa, _d("Ow0JGlJW") .. yd.name .. _d("VarGTg") .. vn(yd.cost) .. _d("VQsQHRwF"))

if houg > 0 then
table.insert(rmoa, _d("Ow0UCkg") .. vn(houg) .. _d("VQUeHA0"))
end
else
table.insert(rmoa, _d("Ow0JGlJWVAMNAxccHlgbD1EBHxhUEQ"))
end
end

table.insert(rmoa, _d(""))
table.insert(rmoa, _d("NgkCGhtWRRpIAh4NGFVPSA") .. vn(ye.casts or 0))

if ye.shopMessage then
table.insert(rmoa, _d(""))
table.insert(rmoa, ye.shopMessage)
end

return table.concat(rmoa, _d("fw"))
end

local function rq(ok, owm)
local umvo = os.clock()

if umvo < (ye.shopCallAt or 0) then
return false, _d("BgQeGQ")
end

ye.shopCallAt = umvo + 1.4

local qwj, nfj, ivgd, oo = pcall(function()
return aep.FishingShop:InvokeServer(ok, owm)
end)

if not qwj then
return false, _d("EBoDARpW") .. tostring(nfj)
end

lpi(oo)

if nfj == true then
return true, nil
end

return false, tostring(ivgd or _d("Bw0XGxsTVQ"))
end

function ye.rebirthCardsHeld()
local vbac = qike and type(qike.RebirthCards) == _d("AQkTAg0") and #qike.RebirthCards or 0

if vbac == 0 then
return 0, 0
end

local ghry = 0

for arpp, sib in ipairs(qike.RebirthCards) do
if ye.rebirthCards[sib.cardId] then
ghry = ghry + 1
end
end

return ghry, vbac
end

function ye.rebirthReady()
local nu, glj = ye.rebirthCardsHeld()

return glj > 0 and nu >= glj and (tonumber(ye.rebirths) or 0) < 1
end

function ye.rebirthText()
local dw, yto = ye.rebirthCardsHeld()

if yto == 0 then
return _d("MwECBgEYVlUMEBoJVl8aHFECBxdVEAxdThsZEQcNEwcaAllVAQJOHRhQAwkYAgkUXRBG")
end

if (tonumber(ye.rebirths) or 0) >= 1 then
return _d("Jw0TBxoCWRAMX048HlRVKRMPBhJeGw0VTiEFXRQGFU4BBREaGBQARg")
end

if dw >= yto then
return _d("NAQdTg") .. yto .. _d("VQsQHAwFERMBAgYNEh9VOhQPDA8RAQdRHA0UWAccGUA")
end

local yzac = {}

for ehxh, xweq in ipairs(qike.RebirthCards) do
if not ye.rebirthCards[xweq.cardId] then
table.insert(yzac, (string.gsub(xweq.cardId, _d("Kw4YHQAp"), _d(""))))
end
end

return dw .. _d("Wg") .. yto .. _d("VQsQHAwFH1U7BQcEGhEbDRQKSA") .. table.concat(yzac, _d("WUg")) .. _d("Ww")
end

local function zyeb(sql)
local ndzn = hs.Character
local pnqr = ndzn and ndzn:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if not pnqr then
return false
end

return (pnqr.Position - (nz[sql] or nz.rod)).Magnitude <= 26
end

local function ev(xvl)
if zyeb(xvl) then
return true
end

local hwm = hs.Character
local hmnt = hwm and hwm:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if not hmnt then
return false
end

local bey = nz[xvl] or nz.rod
ye.shopTripUntil = os.clock() + 12
ye.shopHoldUntil = os.clock() + 12

pcall(function()
hmnt.CFrame = CFrame.new(bey)
end)

task.wait(1.2)

return zyeb(xvl)
end

local function em(pqz, mayc, dhi)
if not dhi then
return false
end

if (ye.casts or 0) < dhi.cost then
return false
end

if not ev(pqz) then
ye.shopMessage = _d("NgcEAgxWXxocURwNF1IdSAUGDVZCHQcBTg4ZQ1U") .. dhi.name
return false
end

local oviv, tzo = rq(mayc, dhi.id)

if not oviv then
local eke = tostring(tzo)
local tvqy = eke:find(_d("IQkdBUgCXlUcGQtIMFgGABQcBRdf"), 1, true) or eke:find(_d("NwcQGkgyVBQEFBw"), 1, true)

if tvqy then

ye.shopMessage = _d("IgkdBQEYVlUdAU4cGREBABROCxlEGxwUHEgQXgdI") .. dhi.name
return false
end

if tzo ~= _d("BgQeGQ") then
ye.shopAt = os.clock() + 15
ye.shopMessage = _d("Jg0DGA0EEQcNFxsbE1VV") .. dhi.name .. _d("VUA") .. eke .. _d("XA")
end

return false
end

ye.shopMessage = _d("NwcECQACEQ") .. dhi.name

return true
end

local function yup(nbl)
local jv = asar(nbl)

if not jv or xyfh(nbl) == jv.id then
return false
end

local omqj

if nbl == _d("BwcV") then
omqj = _d("MBkEBxgkXhE")
elseif nbl == _d("FwkYGg") then
omqj = _d("MBkEBxg0UBwc")
else
return false
end

local yxyc, ukuj = rq(omqj, jv.id)

if not yxyc then
if ukuj ~= _d("BgQeGQ") then
ye.shopMessage = _d("NgcEAgxWXxocUQsZA1gFSA") .. jv.name .. _d("VUA") .. tostring(ukuj) .. _d("XA")
end

return false
end

if nbl == _d("BwcV") then
ye.rod = jv.id
elseif nbl == _d("FwkYGg") then
ye.equippedBait = jv.id
else
return false
end

ye.shopMessage = _d("MBkEBxgGVBFI") .. jv.name

return true
end

local function oegc()
local bbg = ye.shop

if os.time() - (ye.lastSync or 0) >= 5 then
daj()
end

if bbg.equipRod then
yup(_d("BwcV"))
end

if bbg.equipBait then
yup(_d("FwkYGg"))
end

if bbg.autoBuyRod then
em(_d("BwcV"), _d("Nx0IPAcS"), ethb(_d("BwcV")))
end

if bbg.autoBuyBait then
em(_d("FwkYGg"), _d("Nx0ILAkfRQ"), ethb(_d("FwkYGg")))
end
end

local function nnwb()
local dlk = ye.shop

return dlk.autoBuyRod or dlk.autoBuyBait or dlk.equipRod or dlk.equipBait
end

ye.shopIsland = {
rods = function()
local yavg = qike and qike.RodsById or {}
local he = {}

for txnv, ns in pairs(yavg) do
if tostring(ns.shop) == _d("HBsdDwYS") then
table.insert(he, {
id = tostring(txnv),
name = tostring(ns.name or txnv),
cost = tonumber(ns.cost) or 0,
luck = tonumber(ns.luck) or 0,
index = tonumber(ns.index) or 0,
crafted = ns.crafted == true,
})
end
end

table.sort(he, function(ovzw, ff)
return ovzw.index < ff.index
end)

return he
end,

angler = function()
local gvu = workspace:FindFirstChild(_d("OzgyHQ"), true)

if not gvu then
return nil
end

for osjz, tf in ipairs(gvu:GetChildren()) do
if tf:GetAttribute(_d("Jg0SHA0CcBsPHQsaOGE2")) then
return tf
end
end

return nil
end,
held = function(jhtg)
return (ye.rodsOwned or {})[jhtg] == true
end,
recipeHeld = function(pauf)
for hzk, ag in ipairs(pauf or {}) do
local fxb = tonumber((ye.mats or {})[ag.id]) or 0

if fxb < (tonumber(ag.count) or 0) then
return false
end
end

return true
end,
recipeText = function(mfo)
local uxul = {}

for rk, frbx in ipairs(mfo or {}) do
local excs = tonumber((ye.mats or {})[frbx.id]) or 0
local sbr = (mat.ById[frbx.id] and mat.ById[frbx.id].name) or tostring(frbx.id)

table.insert(uxul, sbr .. _d("VQ") .. vn(excs) .. _d("Wg") .. vn(tonumber(frbx.count) or 0))
end

return table.concat(uxul, _d("VarGTg"))
end,

stand = function(ciiw)
local hbt = hs.Character
local ax = hbt and hbt:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if not (ax and ciiw) then
return false
end

local zvdj = ciiw:GetPivot()
local gbw = ciiw:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA")) or ciiw:FindFirstChildWhichIsA(_d("NwkCCzgXQwE"), true)
local btm = gbw and (gbw.CFrame * CFrame.new(0, 0, -5)).Position or nil

if not btm then
local msl = RaycastParams.new()
msl.FilterType = Enum.RaycastFilterType.Exclude
msl.FilterDescendantsInstances = { hbt, ciiw }

local fx = nil
local mjn = math.huge

for zbp, gquh in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local ujmt = workspace:Raycast(zvdj.Position + gquh + Vector3.new(0, 30, 0), Vector3.new(0, -140, 0), msl)

if ujmt and tostring(ujmt.Instance.Name) ~= _d("IgkFCxo") and ujmt.Position.Y <= zvdj.Position.Y + 10 then
local hrid = math.abs(ujmt.Position.Y - zvdj.Position.Y)

if hrid < mjn then
fx = ujmt
mjn = hrid
end
end
end

btm = fx and Vector3.new(fx.Position.X, fx.Position.Y + 3.5, fx.Position.Z) or (zvdj.Position + Vector3.new(0, 4, 0))
end

ye.shopTripUntil = os.clock() + 12

ye.islandTripUntil = os.clock() + 12

pcall(function()
ax.CFrame = CFrame.new(btm)
end)

task.wait(1.2)

return true
end,
atIsland = function()
local glzo = workspace:FindFirstChild(_d("PBsdDwYSdxwbGQsaG1AbJiEt"), true)
local cbdg = hs.Character
local edm = cbdg and cbdg:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if not (glzo and edm) then
return false
end

return (edm.Position - glzo:GetPivot().Position).Magnitude <= 45
end,
toIsland = function()
if ye.shopIsland.atIsland() then
return true
end

ye.shopTripUntil = os.clock() + 12

if not ye.gotoIsland() then
return false
end

task.wait(1.2)

return ye.shopIsland.atIsland()
end,

craftExcalibur = function()
local ca = ye.shopIsland.angler()

if not ca or ye.shopIsland.held(_d("BwcVMRsTUgcNBQ")) then
return false
end

if not ye.shopIsland.recipeHeld(qike and qike.SecretRecipe) then
return false
end

ye.shopIsland.stand(ca)

local zvj, aak = rq(_d("NhoQCBwkXhE"), _d("BwcVMRsTUgcNBQ"))

if zvj then
ye.rod = _d("BwcVMRsTUgcNBQ")
ye.islandMessage = _d("NhoQCBwTVVUcGQtIM0kWCR0HCgNDVRoeCkgXRVUcGQtIPlgRDBQASDdfEgQUHA")
elseif aak ~= _d("BgQeGQ") then
ye.islandMessage = _d("PQEVCg0YETQGFgINBBEHDRcbGxNVVRwZC0gzSRYJHQcKA0NVQA") .. tostring(aak) .. _d("XA")
end

return zvj
end,
buyRod = function()
if ye.islandLocked then
return false
end

local qw = ye.rodsOwned or {}
local gwue = nil

for kk, zk in ipairs(ye.shopIsland.rods()) do
if not zk.crafted
and qw[zk.id] ~= true
and zk.cost <= (ye.casts or 0)
and (gwue == nil or zk.index > gwue.index) then
gwue = zk
end
end

if not gwue then
return false
end

if not ye.shopIsland.toIsland() then
ye.islandMessage = _d("NgcEAgxWXxocURwNF1IdSAUGDVZYBgQQAAxWUhodHxoNBA")
return false
end

local fioc, zzng = rq(_d("Nx0IPAcS"), gwue.id)

if fioc then
ye.islandMessage = _d("NwcECQACEQ") .. gwue.name
elseif zzng ~= _d("BgQeGQ") then
local con = tostring(zzng)

if not (con:find(_d("IQkdBUgCXg"), 1, true) or con:find(_d("PBsdDwYSVAc"), 1, true)) then
ye.islandAt = os.clock() + 15
ye.islandMessage = _d("Jg0DGA0EEQcNFxsbE1VV") .. gwue.name .. _d("VUA") .. con .. _d("XA")
end
end

return fioc
end,
craftBoot = function()
if ye.boot.owned or ye.islandLocked then
return false
end

if not ye.shopIsland.recipeHeld(qike and qike.BootRecipe) then
return false
end

if not ye.shopIsland.toIsland() then
ye.islandMessage = _d("NgcEAgxWXxocURwNF1IdSAUGDVZYBgQQAAxWUhodHxoNBA")
return false
end

local lmxv, cxq = rq(_d("NhoQCBw0Xhoc"))

if lmxv then
ye.boot.owned = true
ye.islandMessage = _d("NhoQCBwTVVUcGQtIOlQSDR8KCQRIVSoeARw")
elseif cxq ~= _d("BgQeGQ") then
ye.islandMessage = _d("PBsdDwYSETMBAgYNBFwUBlEcDRBEBg0VThweVFUKHgEcVhk") .. tostring(cxq) .. _d("XA")
end

return lmxv
end,
best = function()
local hdvv = ye.rodsOwned or {}
local xd = nil

for jra, zt in ipairs(ye.shopIsland.rods()) do
if hdvv[zt.id] == true and (xd == nil or zt.luck > xd.luck) then
xd = zt
end
end

return xd
end,

equipRod = function()
local yhe = ye.shopIsland.best()

if not yhe or ye.rod == yhe.id then
return false
end

local aa, fm = rq(_d("MBkEBxgkXhE"), yhe.id)

if aa then
ye.rod = yhe.id
ye.islandMessage = _d("MBkEBxgGVBFI") .. yhe.name
elseif fm ~= _d("BgQeGQ") then
ye.islandMessage = _d("NgcEAgxWXxocUQsZA1gFSA") .. yhe.name .. _d("VUA") .. tostring(fm) .. _d("XA")
end

return aa
end,
equipBoot = function()
if not ye.boot.owned or ye.boot.equipped then
return false
end

local nqo, vr = rq(_d("MBkEBxg0Xhoc"), true)

if nqo then
ye.boot.equipped = true
ye.islandMessage = _d("MBkEBxgGVBFIBQYNVn0QDxQADBdDDEgzAQcC")
elseif vr ~= _d("BgQeGQ") then
ye.islandMessage = _d("NgcEAgxWXxocUQsZA1gFSAUGDVZTGgcFTkA") .. tostring(vr) .. _d("XA")
end

return nqo
end,
active = function()
local mlw = ye.island

return mlw.autoRod or mlw.equipRod or mlw.autoAcc or mlw.equipAcc
end,
run = function()
local su = ye.island

if os.time() - (ye.lastSync or 0) >= 8 then
daj()
end

local rf = false

if su.autoRod then
rf = ye.shopIsland.craftExcalibur()
end

if su.equipRod then
ye.shopIsland.equipRod()
end

if su.autoRod and not rf then
ye.shopIsland.buyRod()
end

if su.autoAcc then
ye.shopIsland.craftBoot()
end

if su.equipAcc then
ye.shopIsland.equipBoot()
end
end,
text = function()
if not qike then
return _d("MwECBgEYVjEJBQ9IGF4BSBcBHRhVVUVRGgATERwbHQ8GEhEGAB4eSB9CVR0fDx4XWBkJEwINWA")
end

local irv = {}
local vmfj = ye.rodsOwned or {}

table.insert(irv, ye.islandLocked and _d("NAoQAAwZXxAMUScbGlAbDFEHG1ZdGgsaCwxWHFUaFAwBBEUdSBcHGgVFWw") or _d("NAoQAAwZXxAMUScbGlAbDFEHG1ZeBQ0fQA"))

for vz, bqn in ipairs(ye.shopIsland.rods()) do
local mk

if vmfj[bqn.id] == true then
mk = ye.rod == bqn.id and _d("Gh8fCwxW88JIHgBIGF4C") or _d("Gh8fCww")
elseif bqn.crafted then
mk = _d("PQEVCg0YETQGFgINBBEHDRIHGBM")
else
mk = vn(bqn.cost) .. _d("VQsQHRwF")
end

table.insert(irv, bqn.name .. _d("VYrx+kg") .. mk)
end

table.insert(irv, _d(""))

if vmfj.rod_secret then
table.insert(irv, _d("MBASDwQfUwAaS04HAV8QDA"))
else
local rgh = ye.shopIsland.recipeHeld(qike.SecretRecipe)

table.insert(irv, _d("MBASDwQfUwAaS04") .. (rgh and _d("Bw0SBxgTEQcNEAoR") or _d("Bw0SBxgTEQYAHhwc")))
table.insert(irv, ye.shopIsland.recipeText(qike.SecretRecipe))
end

table.insert(irv, _d("PQEVCg0YETQGFgINBAtV") .. (ye.shopIsland.angler() and _d("ABhRAAcB") or _d("GwcFTgATQxA")))
table.insert(irv, _d(""))

local eb = ye.boot
local imu

if eb.equipped then
imu = _d("OQ0WCwYSUAcRUSwHGUVPSBQfHR9BBQ0V")
elseif eb.owned then
imu = _d("OQ0WCwYSUAcRUSwHGUVPSB4ZBhNV")
elseif ye.shopIsland.recipeHeld(qike.BootRecipe) then
imu = _d("OQ0WCwYSUAcRUSwHGUVPSAMLCx9BEEgDCwkSSA")
else
imu = _d("OQ0WCwYSUAcRUSwHGUVPSA") .. ye.shopIsland.recipeText(qike.BootRecipe)
end

table.insert(irv, imu)
table.insert(irv, _d("NgkCGhtWRRpIAh4NGFVPSA") .. vn(ye.casts or 0))

if ye.islandMessage then
table.insert(irv, _d(""))
table.insert(irv, ye.islandMessage)
end

return table.concat(irv, _d("fw"))
end,
}

task.spawn(function()
daj()
end)

local wlp = {
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

getgenv().ACBXAutoBuyHalloween = wlp

aep.SyncItems.OnClientEvent:Connect(function(srlo)
if type(srlo) == _d("AQkTAg0") then
wlp.balances = srlo
wlp.lastSync = os.time()
end
end)

aep.RequestItemSync:FireServer()

aep.RaidShopState.OnClientEvent:Connect(function(dny)
if type(dny) == _d("AQkTAg0") and dny.shopId == _d("HQkdAgcBVBAG") then
wlp.shopState = dny
wlp.stateAt = os.clock()
end
end)

aep.RaidNotify.OnClientEvent:Connect(function(gub)
local lr = wlp.pending

if not lr or type(gub) ~= _d("BhwDBwYR") then
return
end

if gub:sub(1, 9) == _d("JT0jLSA3YjAs") then
wlp.purchased[lr.id] = (wlp.purchased[lr.id] or 0) + 1
wlp.pending = nil
else
if wlp.balances[lr.currency] then
wlp.balances[lr.currency] = wlp.balances[lr.currency] + lr.price
end

wlp.failedUntil[lr.id] = os.time() + 5
wlp.pending = nil
end
end)

wrfj.trip = {
untilAt = 0,
lastTry = 0,
lastResult = nil,
spot = nil,
}

function wrfj.merchant()
local fp = workspace:FindFirstChild(_d("OzgyHQ"))
local hkm = wrfj.shopData and wrfj.shopData.NpcName or _d("JR0cHgMfX1UlFBwLHlAbHA")

return fp and fp:FindFirstChild(hkm) or nil
end

function wrfj.stand()
local zrl = wrfj.merchant()
local bk = zrl and (zrl:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA")) or zrl:FindFirstChildWhichIsA(_d("NwkCCzgXQwE")))
local lsjh = hs.Character
local fcgq = lsjh and lsjh:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if not (bk and fcgq) then
return false
end

wrfj.trip.spot = bk.Position + Vector3.new(0, 3, 4)
fcgq.AssemblyLinearVelocity = Vector3.zero
fcgq.CFrame = CFrame.new(wrfj.trip.spot)

return true
end

function wrfj.fresh()
return wlp.shopState ~= nil and os.clock() - wlp.stateAt < 30
end

function wrfj.guiOpen()
local fbav = lbjw:FindFirstChild(_d("PQkdAgcBVBAGIgYHBnYAAQ"))
local ne = fbav and fbav:FindFirstChild(_d("JgAeHi4EUBgN"))

if ne then
return ne.Visible == true
end

for hajq, fy in ipairs(lbjw:GetChildren()) do
if fy:IsA(_d("JgsDCw0YdgAB")) and fy.Name:lower():find(_d("HQkdAgcBVBAG"), 1, true) and fy.Enabled then
return true
end
end

return false
end

function wrfj.close()
local zri = lbjw:FindFirstChild(_d("PQkdAgcBVBAGIgYHBnYAAQ"))
local zaqd = zri and zri:FindFirstChild(_d("JgAeHi4EUBgN"))

if not (zaqd and zaqd.Visible) then
return false
end

local kxpe = zaqd:FindFirstChild(_d("NgQeHQ00RAEcHgA"))

if not kxpe then
for bzym, sxrm in ipairs(zaqd:GetDescendants()) do
if sxrm:IsA(_d("Mh0YLB0CRRoG")) and tostring(sxrm.Name):lower():find(_d("FgQeHQ0"), 1, true) then
kxpe = sxrm
break
end
end
end

if kxpe and type(firesignal) == _d("Ex0fDRwfXhs") then
pcall(function()
firesignal(kxpe.MouseButton1Click)
end)

task.wait(0.3)

if not zaqd.Visible then
return true
end
end

pcall(function()
zaqd.Visible = false
end)

return true
end

function wrfj.spend()
if wlp.pending or os.time() - (wlp.lastAttempt or 0) < 1 then
return nil
end

local tr = wlp.shopState

for acg, yzvu in ipairs(wrfj.shopItems) do
if wlp.selected[yzvu.id] and os.time() >= (wlp.failedUntil[yzvu.id] or 0) then
local ttv = yzvu.stock
local jpiy = wlp.purchased[yzvu.id] or 0

if tr and tr.stocks and tr.stocks[yzvu.id] then
ttv = tr.stocks[yzvu.id]
end

if tr and tr.bought then
jpiy = math.max(jpiy, tr.bought[yzvu.id] or 0)
end

local vpsh = ttv and (ttv - jpiy) or 1
local hlh = wlp.balances[yzvu.currency] or 0

if vpsh > 0 and hlh >= yzvu.price then
wlp.pending = {
id = yzvu.id,
price = yzvu.price,
currency = yzvu.currency,
at = os.time(),
}
wlp.lastAttempt = os.time()
wlp.balances[yzvu.currency] = hlh - yzvu.price

pcall(function()
aep.BuyRaidItem:FireServer(yzvu.id, 1)
end)

return yzvu.id
end
end
end

return nil
end

function wrfj.open(ohk)
if not ohk and wrfj.fresh() then
return true
end

if not ohk and os.clock() < (wrfj.trip.lastTry or 0) + 8 then
return false
end

wrfj.trip.lastTry = os.clock()
wrfj.trip.untilAt = os.clock() + 12

ye.shopTripUntil = os.clock() + 12
ye.shopHoldUntil = os.clock() + 12
ye.phase = _d("HAwdCw")

local rlf = wrfj.merchant()
local orur = rlf and rlf:FindFirstChild(_d("JRoeFgEbWAERIRwHG0EB"))

if not (rlf and orur) then
ye.deepPhase = _d("HAwdCw")
wrfj.trip.untilAt = os.clock() + 60
wrfj.trip.lastResult = _d("IQAUTjgDXAUDGABIO1QHCxkPBgIRHBtRAAcCERwGURoAH0JVCgQHBBIf")

return false
end

local knz = os.clock() + 3
local gbvm = 0

while os.clock() < knz do

wrfj.stand()

if os.clock() >= gbvm then
gbvm = os.clock() + 0.8

if type(fireproximityprompt) == _d("Ex0fDRwfXhs") then
pcall(function()
fireproximityprompt(orur)
end)
end

pcall(function()
aep.OpenRaidShop:FireServer(_d("HQkdAgcBVBAG"))
end)
end

if wrfj.guiOpen() or wrfj.fresh() then
break
end

task.wait(0.1)
end

if not (wrfj.guiOpen() or wrfj.fresh()) then

ye.deepPhase = _d("HAwdCw")
wrfj.trip.untilAt = os.clock() + 60
wrfj.trip.lastResult = _d("IQAUTgsZRBscFBxIElgRSB8BHFZQGxsGCxpWHFUBBU4HGF0MSB4eDRhCVQEfThweVFUbFA8bGV8UBFEPGhNQWw")

return false
end

wrfj.trip.lastResult = _d("NgcEABwTQ1UHAQsGWA")

for hzw = 1, 3 do
wrfj.stand()

if not wrfj.spend() then
break
end

task.wait(1.2)
end

pcall(wrfj.close)

ye.deepPhase = _d("HAwdCw")

return true
end

local function pkop(sio)
sio = math.max(0, math.floor(sio))
local rj = math.floor(sio / 3600)
local qk = math.floor((sio % 3600) / 60)
local kj = sio % 60

if rj > 0 then
return string.format(_d("UAwZTk1GAxEF"), rj, qk)
elseif qk > 0 then
return string.format(_d("UAwcTk1GAxEb"), qk, kj)
end

return string.format(_d("UAwC"), kj)
end

local function fasr()
local xs = lbjw:FindFirstChild(_d("PQkdAgcBVBAGIgYHBnYAAQ"))
local pelg = xs and xs:FindFirstChild(_d("JgAeHi4EUBgN"))
local nih = pelg and pelg:FindFirstChild(_d("PBwUAyQfQgE"))
local akg = {}
local niqz = nil

if nih then
for ywc, wotx in ipairs(wrfj.shopItems) do
local usjy = nih:FindFirstChild(wotx.id)
local kegt = usjy and usjy:FindFirstChild(_d("NwcJ"))
local gk = kegt and kegt:FindFirstChild(_d("JhweDQM"))

if gk and gk:IsA(_d("IQ0JGiQXUxAE")) then
local rvo, wke = gk.Text:match(_d("XU0VRUFTQl9HVB1CXhQRQ1g"))

if rvo and wke then
akg[wotx.id] = {
remaining = tonumber(rvo),
total = tonumber(wke),
}
end
end
end
end

if pelg then
for vsg, zji in ipairs(pelg:GetDescendants()) do
if zji:IsA(_d("IQ0JGiQXUxAE")) and zji.Text:find(_d("Bw0CCxwFERwG"), 1, true) then
niqz = zji.Text:match(_d("Bw0CCxwFERwGVB1CXh9eQVU"))
break
end
end
end

return akg, niqz
end

local function zkm(vkhh)
if type(vkhh) ~= _d("BhwDBwYR") then
return 0
end

local vpf = tonumber(vkhh:match(_d("XU0VRUEe"))) or 0
local wwj = tonumber(vkhh:match(_d("XU0VRUEb"))) or 0
local qr = tonumber(vkhh:match(_d("XU0VRUEF"))) or 0
return vpf * 3600 + wwj * 60 + qr
end

local function ttt()
local ygdp = wlp.shopState
local hq, lswa = fasr()
local iftx = {}
local pjcv = {}
local fgl = {}

for ud, vrr in ipairs(wrfj.shopItems) do
local femi = vrr.stock
local rqwy = nil

if ygdp and ygdp.stocks and ygdp.stocks[vrr.id] then
femi = ygdp.stocks[vrr.id]
end

local tbyi = wlp.purchased[vrr.id] or 0

if ygdp and ygdp.bought then
tbyi = math.max(tbyi, ygdp.bought[vrr.id] or 0)
end

if femi then
rqwy = math.max(0, femi - tbyi)
end

if (not ygdp or not ygdp.bought) and hq[vrr.id] then
rqwy = hq[vrr.id].remaining
femi = hq[vrr.id].total
end

local yzd = vrr.currency == _d("HwkSBTcZbhkJHxoNBF8") and _d("OQkfGg0EXwY") or _d("NgkfChE")
local km

if rqwy == nil then
km = vrr.shortName
elseif rqwy <= 0 then
km = vrr.shortName .. _d("VarGThsZXRFIHhsc")
else
km = vrr.shortName .. _d("VarGTg") .. tostring(rqwy) .. _d("Wg") .. tostring(femi or _d("Sg"))
end

if not pjcv[yzd] then
pjcv[yzd] = {}
table.insert(fgl, yzd)
end

table.insert(pjcv[yzd], km)
end

local obr = {}

for uayv, awy in ipairs(fgl) do
table.insert(obr, awy)

for eiy, zs in ipairs(pjcv[awy]) do
table.insert(obr, zs)
end
end

table.insert(iftx, table.concat(obr, _d("f2I")))
table.insert(iftx, _d(""))

if ygdp and type(ygdp.resetsIn) == _d("Gx0cDA0E") then
local mmp = ygdp.resetsIn - (os.clock() - wlp.stateAt)
table.insert(iftx, _d("Jw0CGgcVWgZIGABI") .. pkop(mmp))
elseif lswa then
if wlp.uiTimerText ~= lswa then
wlp.uiTimerText = lswa
wlp.uiTimerSeconds = zkm(lswa)
wlp.uiTimerAt = os.clock()
end

local pk = wlp.uiTimerSeconds - (os.clock() - wlp.uiTimerAt)
table.insert(iftx, _d("Jw0CGgcVWgZIGABI") .. pkop(pk))
else
table.insert(iftx, _d("Jw0CGgcVWgZIFQ8BGkhVqsZOHh9CHBxRGgATEQYAHh4"))
end

if not wrfj.fresh() then
table.insert(iftx, wrfj.trip.lastResult or _d("IQAUTgsZRBscFBxIH0JVCx0BGxNVVUVRIRgTX1UbGQEYVkYUBBodSAJZEEgSBgkEUBYcFBxIA0FVHB5OAQIf"))
end

return table.concat(iftx, _d("fw"))
end

aep.NPCBattleResult.OnClientEvent:Connect(function(wgh)
if type(wgh) ~= _d("AQkTAg0") then
return
end

uoy.battlePending = false

if wgh.result == _d("FgceAgwZRhs") and type(wgh.remaining) == _d("Gx0cDA0E") and jjbg and lgri then
bwtu(jjbg, lgri, os.time() + wgh.remaining)
return
end

if type(wgh.npcId) == _d("BhwDBwYR") then
local ybri = type(wgh.difficulty) == _d("BhwDBwYR") and wgh.difficulty or uoy.activeDifficulty[wgh.npcId] or _d("GwcDAwka")
local phy = zjco.ById[wgh.npcId]
local fk = tonumber(wgh.cooldown) or (phy and phy.cooldown) or 300
bwtu(wgh.npcId, ybri, os.time() + fk)
end
end)

aep.SyncNPCCooldowns.OnClientEvent:Connect(function(txv)
if type(txv) ~= _d("AQkTAg0") then
return
end

for rum, ugm in pairs(txv) do
if type(rum) == _d("BhwDBwYR") and type(ugm) == _d("Gx0cDA0E") then
local asbd = uoy.activeDifficulty[rum] or _d("GwcDAwka")
bwtu(rum, asbd, ugm)
end
end
end)

local tht = {}
local rcxb = {}

for qm, nh in ipairs(das.Worlds) do

local wgzd = { _d("NAQd") }
local cvq = {}
local bhku = {}
local jb = nil

for oynt, oldg in ipairs(nh.npcs or {}) do
local iub = zjco.ById[oldg]
if iub then
table.insert(wgzd, iub.name)
table.insert(bhku, oldg)
cvq[iub.name] = oldg
if iub.type == _d("FwkFGgQT") then
jb = oldg
end
end
end

local nyn = nh.id
if jb and mbk.ById[jb] then
nyn = mbk.ById[jb].worldId or nyn
end

for th, nf in ipairs(nh.npcs or {}) do
rcxb[nf] = nyn

uoy.bossTeams.worldOf[nf] = nh.id
end

table.insert(tht, {
id = nh.id,
teleportWorldId = nyn,
name = nh.name,
options = wgzd,
ids = bhku,
byName = cvq,
npcs = nh.npcs,
})
end

local alvm = {}
local afvk = {}
local dzl = {}

for kmux, vwe in ipairs(das.Difficulties) do
table.insert(alvm, vwe.name)
afvk[vwe.name] = vwe.id
dzl[vwe.id] = vwe.name
end

local mms = {}
local vmy = {}

for cm, ac in ipairs(elys.Difficulties) do
table.insert(mms, ac.name)
vmy[ac.name] = ac.id
end

local fuyf = {}
local orjy = {}
local xjgt = {}
local clwz = {
soul_king = _d("JwkYCj8ZQxkM"),
beerus = _d("JwkYCj8ZQxkMLiwNE0MAGw"),
reid = _d("JwkYCj8ZQxkMLjwNH1U"),
}

for axxh, ijhn in ipairs(elys.Raids) do
if ijhn.BossTitle and ijhn.id then
table.insert(fuyf, ijhn.BossTitle)
orjy[ijhn.BossTitle] = ijhn.id
xjgt[ijhn.id] = ijhn.NpcId
end
end

local function yliz()
for yp, jpm in ipairs({ _d("NwkFGgQTdgAB"), _d("NwkFGgQTdgABQw") }) do
local azw = lbjw:FindFirstChild(jpm)
local vwkl = azw and azw:FindFirstChild(_d("NwkFGgQTYhYaFAsG"))
if vwkl and vwkl.Visible then
return vwkl
end
end
end

local function ya()
for oh, olw in ipairs({ _d("NwkFGgQTdgAB"), _d("NwkFGgQTdgABQw") }) do
local lco = lbjw:FindFirstChild(olw)
local wov = lco and lco:FindFirstChild(_d("NwkFGgQTYhYaFAsG"))
if wov then
return wov
end
end
end

local function zv()
if yliz() then
return true
end

for zi, cykz in ipairs({ _d("NwkFGgQTdgAB"), _d("NwkFGgQTdgABQw") }) do
local fld = lbjw:FindFirstChild(cykz)
local mig = fld and fld:FindFirstChild(_d("PQEVCyoXRQEEFCwdAkUaBg"))
if mig and mig.Visible then
return true
end
end

for ldq, rjl in ipairs({ _d("PAYzDxwCXRA"), _d("PAYzDxwCXRBa") }) do
local sssw = lbjw:FindFirstChild(rjl)
if sssw and sssw:IsA(_d("NwceAj4XXQAN")) and sssw.Value then
return true
end
end

return false
end

function znb.slotFree(almf)

if almf == nil then
return false
end

if not znb.enabled then
return not zv()
end

return not znb.busy(almf)
end

function znb.npcSlot()
return znb.roleSlot(_d("GxgS"))
end

local envn

local function qsf(dg)
dg = math.max(0, math.floor(dg))
if dg <= 0 then
return _d("Bw0QChE")
end

local pv = math.floor(dg / 60)
local gktv = dg % 60

if pv > 0 then
return string.format(_d("UAwcTk1GAxEb"), pv, gktv)
end

return string.format(_d("UAwC"), gktv)
end

local function bg()
for baih, zfbn in ipairs({ _d("NwkFGgQTdgAB"), _d("NwkFGgQTdgABQw") }) do
local ij = lbjw:FindFirstChild(zfbn)
if ij then
local gjqc = ij:FindFirstChild(_d("Jx0fKAQZXgckEAwNGg"))
local afu = ij:FindFirstChild(_d("IQcGCxowXRoHAyIJFFQZ"))
if (gjqc and gjqc.Visible) or (afu and afu.Visible) then
return _d("PAZROgcBVAc")
end
end
end

if gotr.currentRoom and (gotr.inBattle or zv()) then
local gh = nil

for ewva, ijxv in ipairs({ _d("NwkFGgQTdgAB"), _d("NwkFGgQTdgABQw") }) do
local bvq = lbjw:FindFirstChild(ijxv)
local ksh = bvq and bvq:FindFirstChild(_d("NwkFGgQTYhYaFAsG"))
local jz = ksh and ksh:FindFirstChild(_d("MAYUAxE3UgEBBwsrF0MR"))
local ohci = jz and jz:FindFirstChild(_d("OwkcCyQXUxAE"))

if ohci and ohci.Text ~= _d("") then
gh = ohci.Text
break
end
end

if gh then
return _d("NwkFGgQfXxJI") .. gh .. _d("VTMjAQcbEQ") .. gotr.currentRoom .. _d("KA")
end

return _d("NwkFGgQfXxJIKjwHGVxV") .. gotr.currentRoom .. _d("KA")
end

local nuqi = ya()
if zv() and nuqi then
local dtmw = nuqi:FindFirstChild(_d("MAYUAxE3UgEBBwsrF0MR"))
local dkzv = dtmw and dtmw:FindFirstChild(_d("OwkcCyQXUxAE"))
local hyg = dkzv and dkzv.Text

local rnkp = nil
if uoy.currentBattle then
rnkp = uoy.currentBattle.difficulty
elseif hyg then
local vuqr = totr[hyg]
if vuqr then
rnkp = uoy.activeDifficulty[vuqr]
end
end

local sw = _d("")
if rnkp then
sw = _d("VTM") .. (dzl[rnkp] or rnkp) .. _d("KA")
end

local nx = hyg
if uoy.currentBattle and uoy.currentBattle.npcId then
local lrqd = zjco.ById[uoy.currentBattle.npcId]
if lrqd then
nx = lrqd.name
end
end

if nx and nx ~= _d("") then
return _d("NwkFGgQfXxJI") .. nx .. sw
end

return _d("NwkFGgQfXxI") .. sw
end

uoy.currentBattle = nil

local tlq = soi.enabled and (soi.bossFor(1) or soi.bossFor(2))

if tlq then
local ht = gb:FindFirstChild(_d("JwkYCjsCUAEdAg"))

if ht then
local gtp = tlq
local vqp = elys.ById[gtp]
local jl = vqp and vqp.BossTitle or gtp
local fdq = ht:GetAttribute(_d("PBs+Hg0Y")) == true or ht:GetAttribute(_d("MwcDDQ0S")) == true
local zkbe = ht:GetAttribute(_d("Jw0QChEp") .. gtp) == true
local nmx = soi.progress[gtp]
local fii = nmx and nmx.locked == true

if not fdq then
local shvx = tonumber(ht:GetAttribute(_d("NgAQAA8TQjQc"))) or 0
return _d("PAwdC0hbEQ") .. jl .. _d("VToQBwxMEQ") .. qsf(shvx - os.time())
end

if nmx and nmx.cooldowns then
local jn = tonumber(nmx.cooldowns.normal)

if jn and jn > 0 then
return _d("PAwdC0hbEQ") .. jl .. _d("VToQBwxMEQ") .. qsf(jn)
end
end

if not zkbe or fii then
return _d("PAwdC0hbEQ") .. jl .. _d("VToQBwxMERkHEgUNEg")
end

return _d("PAwdC0hbEQ") .. jl .. _d("VToQBwxMEQcNEAoR")
end
end

if ye.enabled then
if ye.usingGameAuto then
return _d("MwECBgEYVlVFUQkJG1RVCQQaB1YZ") .. vn(kvgs()) .. _d("VQsQGw8eRVw")
end

if ye.phase == _d("FgkCGgEYVg") then
return _d("MwECBgEYVlVFUQ0JBUUcBhY")
end

if ye.phase == _d("AgkYGgEYVjcBBQs") then
return _d("MwECBgEYVlVFURkJH0UcBhZODhlDVQlRDAECVA")
end

if ye.phase == _d("Bw0UAgEYVg") or ye.phase == _d("Bw0CAQQAWBsP") then
return _d("MwECBgEYVlVFURwNE10cBhZOBxhUVQEf")
end

return _d("MwECBgEYVlVFUQcMGlRVQA") .. vn(kvgs()) .. _d("VQsQGw8eRVw")
end

if not uoy.enabled and not uoy.story then
return _d("PAwdCw")
end

local psf, jxcy, tjcm = envn()

if psf then
local nmyv = zjco.ById[psf]
local qiuw = nmyv and nmyv.name or psf
local sww = (jxcy or 0) - os.time()
local vrcp = dzl[tjcm] or tjcm or _d("OwcDAwka")

return _d("PAwdC0hbETsNCRpSVg") .. qiuw .. _d("VTM") .. vrcp .. _d("KEhZ") .. qsf(sww) .. _d("XA")
end

return _d("PAwdCw")
end

local function oq(dox)
local rkfe = workspace:FindFirstChild(_d("OzgyHQ"))
if not rkfe then
return nil
end

for iqr, bpst in ipairs(rkfe:GetChildren()) do
if bpst:GetAttribute(_d("OzgyJww")) == dox then
return bpst
end
end

return nil
end

local function bf(ybg)
local lmqv = hs.Character
local fiif = lmqv and lmqv:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))
if not (fiif and ybg) then
return false
end

local yub, awmi = pcall(function()
return ybg:GetPivot()
end)
if not yub then
return false
end

local owz = awmi.Position + awmi.LookVector * 6 + Vector3.new(0, 3, 0)
local mksi = Vector3.new(awmi.Position.X, owz.Y, awmi.Position.Z)

fiif.CFrame = CFrame.lookAt(owz, mksi)
return true
end

local function cchw()
local mxcz = hs:FindFirstChild(_d("JQQQFw0EYhYaGB4cBQ"))
local jkz = mxcz and mxcz:FindFirstChild(_d("JQQQFw0EfBoMBAIN"))

if not jkz then
return nil
end

local obg, jtn = pcall(require, jkz)
if not obg then
return nil
end

local tsa, fyqd = pcall(function()
return jtn:GetControls()
end)

if tsa then
return fyqd
end
end

local function vfr(pdw, eldn, le, fyx, xcu)
fyx = fyx or 8

local function fl()
return eldn and eldn()
end

local foe = os.clock()

while os.clock() - foe < 5 do
if fl() then
return false
end

if hs.Character and hs.Character:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA")) then
break
end
task.wait(0.2)
end

local oom = hs.Character
local hha = oom and oom:FindFirstChildOfClass(_d("PR0cDwYZWBE"))
local kksn = oom and oom:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if not (hha and kksn) then
return false
end

if (kksn.Position - pdw).Magnitude <= fyx then
return true
end

local gbd = le or hha.WalkSpeed
local gcc = cchw()
local eo = hha.JumpPower
local xcqm = hha.UseJumpPower

if xcu then
pcall(function()
hha.UseJumpPower = true
hha.JumpPower = math.max(eo, 60)
end)
end

if gcc then
pcall(function()
gcc:Disable()
end)
end

local azx = hha:FindFirstChildOfClass(_d("NAYYAwkCXgc"))
local urxw = nil
local gvww = oom:FindFirstChild(_d("NAYYAwkCVA"))
local prp = gvww and (gvww:FindFirstChild(_d("IgkdBSkYWBg"), true) or gvww:FindFirstChild(_d("Jx0fLwYfXA"), true))

if azx and prp then
local plqo, fkhg = pcall(function()
return azx:LoadAnimation(prp)
end)

if plqo and fkhg then
urxw = fkhg
urxw.Looped = true
urxw.Priority = Enum.AnimationPriority.Movement
pcall(function()
urxw:Play()
end)
end
end

local function oup(qfl)
kksn.AssemblyLinearVelocity = Vector3.new(0, kksn.AssemblyLinearVelocity.Y, 0)

if urxw then
pcall(function()
urxw:Stop(0.1)
end)
end

if gcc then
pcall(function()
gcc:Enable()
end)
end

if xcu then
pcall(function()
hha.JumpPower = eo
hha.UseJumpPower = xcqm
end)
end

return qfl
end

local function bzf(asm, jxk)
local mcba = os.clock()
local bhro = os.clock()
local qzj = 0
local gai = kksn.Position

while os.clock() - mcba < jxk do
if fl() then
return false
end

local ka = asm - kksn.Position
ka = Vector3.new(ka.X, 0, ka.Z)

if ka.Magnitude <= 3 then
return true
end

local ds = ka.Unit
kksn.AssemblyLinearVelocity = Vector3.new(
ds.X * gbd,
kksn.AssemblyLinearVelocity.Y,
ds.Z * gbd
)

if xcu and os.clock() - bhro >= 0.5 then
local tun = (kksn.Position - gai).Magnitude
local svve = hha:GetState()
local pjpy = svve ~= Enum.HumanoidStateType.Jumping and svve ~= Enum.HumanoidStateType.Freefall

if tun < 1.5 and pjpy and os.clock() - qzj >= 0.8 then
hha.Jump = true
qzj = os.clock()
end

gai = kksn.Position
bhro = os.clock()
end

task.wait()
end

return false
end

local lz = eafx:CreatePath({
AgentRadius = 2.5,
AgentHeight = 5,
AgentCanJump = true,
WaypointSpacing = 8,
})

local ll = pcall(function()
lz:ComputeAsync(kksn.Position, pdw)
end)

if ll and lz.Status == Enum.PathStatus.Success then
for yc, jvz in ipairs(lz:GetWaypoints()) do
if fl() then
return oup(false)
end

if (kksn.Position - pdw).Magnitude <= fyx then
break
end

if not bzf(jvz.Position, 10) and fl() then
return oup(false)
end
end
end

if fl() then
return oup(false)
end

local gr = bzf(pdw, 15)
return oup(gr)
end

local function bot(cvtb, mpk, bdj)
return vfr(cvtb, bdj, mpk)
end
getgenv().ACBXWalkCancel = false
getgenv().ACBXWalkToPositionWithSpeed = function(co, zln)
return bot(co, zln, function()
return getgenv().ACBXWalkCancel == true
end)
end

local function pad()
if uoy.story then
return { uoy.storyDifficulty }
end

return uoy.difficulties
end

local function lce()
local ww = {}

if uoy.story then
for mkbe, uxk in ipairs(tht) do
for maq, auzc in ipairs(uxk.ids) do
table.insert(ww, auzc)
end

if uxk.id == _d("HBsUBQkf") then
break
end
end

return ww
end

local fbev = {}

for rpfg, apmz in ipairs(tht) do
local htv = uoy.selectedByWorld[apmz.name]

if htv then
for jhu, qude in ipairs(htv) do
if not fbev[qude] then
fbev[qude] = true
table.insert(ww, qude)
end
end
end
end

return ww
end

envn = function()
local ssjt = nil
local ru = nil
local rmqo = nil

for jmij, wgv in ipairs(lce()) do
local matk = uoy.unlocked[wgv]

for szq, fhj in ipairs(pad()) do
if not matk or matk[fhj] ~= false then
local avt = qbv(wgv, fhj)

if not rmqo or avt < rmqo then
ssjt = wgv
ru = fhj
rmqo = avt
end
end
end
end

return ssjt, rmqo, ru
end

local function wuut(fkmm)
if type(fkmm) ~= _d("BhwDBwYR") then
return nil
end

local pjt = tonumber(fkmm:match(_d("XU0VRUEe")))
local gt = tonumber(fkmm:match(_d("XU0VRUEb")))
local zlck = tonumber(fkmm:match(_d("XU0VRUEF")))

if not pjt and not gt and not zlck then
return nil
end

return (pjt or 0) * 3600 + (gt or 0) * 60 + (zlck or 0)
end

local function quj()
local hnfh = workspace:FindFirstChild(_d("OzgyHQ"))
if not hnfh then
return
end

for gjz, pff in ipairs(hnfh:GetChildren()) do
local szff = pff:GetAttribute(_d("OzgyJww"))
if type(szff) == _d("BhwDBwYR") then
local af = pff:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))
local pyl = af and af:FindFirstChild(_d("OzgyLQcZXREHBgAqH10ZCh4PGhI"))
local hrza = pyl and pyl:FindFirstChild(_d("IQEcCxo6UBcNHQ"))

local vbtt = uoy.activeDifficulty[szff] or _d("GwcDAwka")

if pyl and hrza then
local xxhr = wuut(hrza.Text)
if xxhr and xxhr > 0 then
local uxs = os.time() + xxhr
if uxs > qbv(szff, vbtt) then
bwtu(szff, vbtt, uxs)
end
end
else
bwtu(szff, vbtt, 0)
end
end
end
end

local function yecs(tuc)
local bbew = {}

for ix, kn in ipairs(getconnections(aep.OpenNPCDialog.OnClientEvent)) do
if kn.Enabled then
kn:Disable()
table.insert(bbew, kn)
end
end

local hah = false
local jrj
jrj = aep.OpenNPCDialog.OnClientEvent:Connect(function(pfp, nlw, mjzh, muae)
if pfp ~= tuc or type(muae) ~= _d("AQkTAg0") or type(muae.cooldowns) ~= _d("AQkTAg0") then
return
end

for iirg, wxxy in pairs(muae.cooldowns) do
if type(iirg) == _d("BhwDBwYR") and type(wxxy) == _d("Gx0cDA0E") then
bwtu(tuc, iirg, wxxy > 0 and (os.time() + wxxy) or 0)
end
end

if type(muae.unlocked) == _d("AQkTAg0") then
uoy.unlocked[tuc] = muae.unlocked
end

hah = true
end)

aep.OpenNPCDialog:FireServer(tuc)

local da = os.clock()
while not hah and os.clock() - da < 1.5 do
task.wait(0.05)
end

jrj:Disconnect()

for ttyh, wjyw in ipairs(bbew) do
wjyw:Enable()
end

if hah then
uoy.lastFetch[tuc] = os.time()
end

return hah
end

quj()

local niym = false
local bsci = {}

local function jgdk(bho)
niym = bho

local ryv = lbjw:FindFirstChild(_d("NgkDCicGVBs"))
if not ryv then
return
end

local ae = ryv:FindFirstChild(_d("NgkDCicGVBs"))

if bho then
if ae then
bsci = getconnections(ae.Event)
for tqmp, qgf in ipairs(bsci) do
if qgf.Enabled then
qgf:Disable()
end
end
end

ryv.Enabled = false

local cbp = lbjw:FindFirstChild(_d("IQcGCxokVAYdHRovA1g"))
if cbp then
local mkbt = cbp:FindFirstChild(_d("Jw0CGwQCdwcJHAs"))
if mkbt then
mkbt.Visible = false
end

local iprn = cbp:FindFirstChild(_d("Mg0fCxoXRRwGFigaF1wQ"))
if iprn then
iprn.Visible = false
end
end
else
for lkn, yxpf in ipairs(bsci) do
if not yxpf.Enabled then
yxpf:Enable()
end
end

bsci = {}
ryv.Enabled = true
end
end

getgenv().ACBXSetAutoCloseGeneration = jgdk

local lcv

for aqkk = 1, 3 do
local tk, ot = pcall(function()
return game:HttpGet(_d("HRwFHhtMHloPGBoAA1NbCx4DRxRYEg8QDAcPA0RaXiMJFV0cCl4cDRpUFBsUHUcaUAENAhpHEl4CBh0BCRIeGAkSAgEUHwEQBQ"))
end)

if tk and type(ot) == _d("BhwDBwYR") and #ot > 20000 then
lcv = ot
break
end

warn(_d("LikyLDArETgJEiIBFBETDQUNAFZQARwUAxgCEQ") .. aqkk .. _d("VQ4QBwQTVU9I") .. tostring(ot))
task.wait(2)
end

if not lcv then
warn(_d("LikyLDArETgJEiIBFBEWBwQCDFZfGhxRDA1WXRoJFQsMVhxVGwUBGAZYGw9RHQdWRR0NUQANDkVVDQkLCwNFEEgCGgkERQZIEgINF19b"))
return
end

local xb, mql = lcv:gsub(
_d("NgcfGg0YRSUaHhgBElQHUiEcDRpeFAwwHREYUlBAEB0bE0U5AQIaTV8"),
_d("AQkCBUYFQRQfH0YOA18WHBgBBl4YVSseABwTXwE4AwEeH1UQGks+GhNdGgkVLxsPXxZAEB0bE0U5AQIaQVZUGwxY"),
1
)

local wtv = loadstring(xb)()

getgenv().ACBXMacLibPreloadPatch = mql > 0

if type(wtv) ~= _d("AQkTAg0") then
warn(_d("LikyLDArETgJEiIBFBERARVOBhlFVRoUGh0EX1UJUQIBFEMUGghORVZCAQcBHgEYVlUbHk4cHlRVBhQWHFZUDQ0SGxwTEQYcEBwcBREWBBQPBlg"))
return
end

do
local kqa = gethui and gethui() or game:GetService(_d("NgcDCy8DWA"))

for te, pl in ipairs(kqa:GetChildren()) do
local trh = pl:IsA(_d("JgsDCw0YdgAB")) and pl:FindFirstChild(_d("NwkCCw"))

if trh and trh:FindFirstChild(_d("JgEVCwoXQw")) and trh:FindFirstChild(_d("NgcfGg0YRQ")) then
pcall(function()
pl:Destroy()
end)
end
end
end

do
local dql = os.clock() + 20

while not gu and os.clock() < dql do
task.wait(0.05)
end
end

local fqvu = wtv:Window({
Title = id,

Subtitle = _d("NipRJh0UEV0e") .. tostring(game.PlaceVersion) .. _d("XA"),
Size = UDim2.fromOffset(720, 500),
DragStyle = 1,
DisabledWindowControls = {},
ShowUserInfo = false,
Keybind = Enum.KeyCode.Comma,
AcrylicBlur = true,
})

getgenv().ACBXMacLib = wtv

do
local res = _d("NCszTjoTUxwaBQY")

pcall(function()
wtv.Folder = res
end)

pcall(function()
if isfolder and makefolder and not isfolder(res) then
makefolder(res)
end

if isfolder and makefolder and not isfolder(res .. _d("WhsUGhwfXxIb")) then
makefolder(res .. _d("WhsUGhwfXxIb"))
end
end)

pcall(function()
if wtv.SetFolder then
wtv:SetFolder(res)
end
end)
end

fqvu:GlobalSetting({
Name = _d("OwcFBw4fUhQcGAEGBQ"),
Default = true,
Callback = function(hvnx)
fqvu:SetNotificationsState(hvnx)
end,
})

fqvu:GlobalSetting({
Name = _d("JgAeGUgjQhAaUScGEF4"),
Default = false,
Callback = function(bmlz)
fqvu:SetUserInfoState(bmlz)
end,
})

fqvu:GlobalSetting({
Name = _d("NAYFB0g9WBYD"),
Default = true,
Callback = function(vjbw)
ky.enabled = vjbw
ky.nextAt = os.clock() + 300
end,
})

fqvu:GlobalSetting({
Name = _d("NB0FAUgmWBYDUTsYVmIBARIF"),
Default = false,
Callback = function(vvbg)
ye.stick.enabled = vvbg
ye.stick.at = 0
ye.stick.last = vvbg and _d("GQceBQEYVlUOHhxIFxEGHBgNAw") or _d("Gg4X")
end,
})

fqvu:GlobalSetting({
Name = _d("NB0FAUgjQREJBQs"),
Default = true,
Callback = function(ibxi)
rh.enabled = ibxi

if not ibxi then
rh.pendingVersion = nil
rh.pendingSince = nil
end
end,
})

fqvu:SetAcrylicBlurState(true)
fqvu:SetNotificationsState(true)
fqvu:SetUserInfoState(false)

do
local rlvl = game:GetService(_d("NgcDCy8DWA"))

pcall(function()
if type(gethui) == _d("Ex0fDRwfXhs") then
rlvl = gethui()
end
end)

local pgf = rlvl:FindFirstChild(_d("Nio5Gwo0UBEPFA"))

if pgf then
pgf:Destroy()
end

local novs = Instance.new(_d("JgsDCw0YdgAB"))
novs.Name = _d("Nio5Gwo0UBEPFA")
novs.ResetOnSpawn = false
novs.IgnoreGuiInset = true
novs.DisplayOrder = 2147483647
novs.Parent = rlvl

local wix = Instance.new(_d("IQ0JGioDRQEHHw"))
wix.Name = _d("Nx0FGgcY")
wix.Size = UDim2.fromOffset(56, 56)

wix.AnchorPoint = Vector2.new(0, 0.5)
wix.Position = UDim2.new(1, -64, 0.5, 58)
wix.BackgroundColor3 = Color3.fromRGB(30, 92, 235)
wix.BorderSizePixel = 0
wix.AutoButtonColor = false
wix.Text = _d("")
wix.Parent = novs

local kt = Instance.new(_d("ICEyARoYVAc"))
kt.CornerRadius = UDim.new(0, 14)
kt.Parent = wix

local uc = Instance.new(_d("ICEiGhoZWhA"))
uc.Color = Color3.fromRGB(255, 255, 255)
uc.Thickness = 3
uc.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uc.Parent = wix

local rl = Instance.new(_d("IQ0JGiQXUxAE"))
rl.Size = UDim2.fromScale(1, 1)
rl.BackgroundTransparency = 1
rl.Font = Enum.Font.GothamBlack
rl.TextSize = 16
rl.TextColor3 = Color3.fromRGB(255, 255, 255)
rl.Text = _d("Nip7Jj00")
rl.TextStrokeTransparency = 0.5
rl.Parent = wix

local function yy()
local lpse = novs.AbsoluteSize
local yr = novs.AbsolutePosition

return UDim2.fromOffset(
lpse.X - yr.X - wix.Size.X.Offset - 8,
(lpse.Y / 2) - yr.Y
)
end

task.defer(function()
wix.Position = yy()

local ylt = workspace.CurrentCamera

if ylt then
ylt:GetPropertyChangedSignal(_d("IwEUGRgZQwE7GBQN")):Connect(function()
wix.Position = yy()
end)
end
end)

getgenv().ACBXBadge = novs

local tnd = false
local wv = false
local kcd = nil
local ycsg = nil

wix.InputBegan:Connect(function(lkc)
if lkc.UserInputType ~= Enum.UserInputType.MouseButton1 and lkc.UserInputType ~= Enum.UserInputType.Touch then
return
end

tnd = true
wv = false
kcd = lkc.Position
ycsg = wix.Position
end)

wix.InputEnded:Connect(function(dqfv)
if dqfv.UserInputType ~= Enum.UserInputType.MouseButton1 and dqfv.UserInputType ~= Enum.UserInputType.Touch then
return
end

tnd = false
end)

wix.MouseButton1Click:Connect(function()
if wv then
wv = false
return
end

fqvu:SetState(not fqvu:GetState())
end)

game:GetService(_d("IBsUHCEYQQAcIgsaAFgWDQ")).InputChanged:Connect(function(wy)
if not tnd then
return
end

if wy.UserInputType ~= Enum.UserInputType.MouseMovement and wy.UserInputType ~= Enum.UserInputType.Touch then
return
end

local ktv = wy.Position - kcd

if math.abs(ktv.X) > 6 or math.abs(ktv.Y) > 6 then
wv = true
end

wix.Position = UDim2.new(
ycsg.X.Scale,
ycsg.X.Offset + ktv.X,
ycsg.Y.Scale,
ycsg.Y.Offset + ktv.Y
)
end)
end

local lxu = true

local anf = (getgenv().ACBXRunId or 0) + 1
getgenv().ACBXRunId = anf

local function gaqj()
return lxu and getgenv().ACBXRunId == anf
end

local function qj()
local zbm = math.max(0, math.floor(tonumber(workspace.DistributedGameTime) or 0))
local evwi = math.floor(zbm / 3600)
local shg = math.floor((zbm % 3600) / 60)

if evwi > 0 then
return evwi .. _d("HUg") .. string.format(_d("UFhDCgU"), shg)
end

return shg .. _d("GA")
end

do
local szr = _d("NipRJh0UEV0e") .. tostring(game.PlaceVersion) .. _d("XA")

task.spawn(function()
local hu = nil

while gaqj() do
local togk = szr .. _d("VarGTh0GEQ") .. qj()

if togk ~= hu then
hu = togk

pcall(function()
fqvu:UpdateSubtitle(togk)
end)
end

task.wait(5)
end
end)
end

fqvu.onUnloaded(function()
lxu = false
fir.save()

local un = getgenv().ACBXBadge

if un then
pcall(function()
un:Destroy()
end)
getgenv().ACBXBadge = nil
end

if ye.enabled then
ad()
end

if otjt then
pcall(function()
otjt:Disconnect()
end)
end
end)

task.spawn(function()
while gaqj() do
quj()
task.wait(2)
end
end)

task.spawn(function()
while gaqj() do

local rc = ye.enabled
and (ye.deepZone or ye.tpToBay)
and soi.worldBoss ~= nil
and type(soi.worldBoss.holdsFishing) == _d("Ex0fDRwfXhs")
and soi.worldBoss.holdsFishing() == true
local ovx = rc or (uoy.workPending and uoy.workPending())

if ye.enabled and ye.deepZone and not ovx then
sgm.cycle()
end

if ye.enabled then
if ye.phase ~= _d("HAwdCw") and os.clock() >= ye.watchdogAt then
ye.phase = _d("HAwdCw")
ye.nextCastAt = os.clock() + 1
end

if ye.autoUnlocked and not ye.usingGameAuto and not ye.perfectCasts then
bn()
end

if ye.phase ~= _d("HAwdCw") and (ye.watchdogAt or 0) > 0
and os.clock() > ye.watchdogAt then
ye.phase = _d("HAwdCw")
ye.nextCastAt = 0
ye.lastMessage = _d("NgkCGkgCWBgNFU4HA0VVRVEaGg9YGw9RDw8XWBs")
end

if ye.phase == _d("HAwdCw") and os.clock() >= ye.nextCastAt
and os.clock() >= math.max(ye.shopTripUntil or 0, ye.tpHoldUntil or 0)
and not ye.usingGameAuto
and not sgm.walking
and (not ye.deepZone or sgm.current() ~= nil)
and not ovx then
if not ye.deepZone and ye.tpToBay and not inup() then
mvz()
end

if not butt() then
task.wait(4)
end
end

if not ovx and os.clock() >= math.max(ye.shopTripUntil or 0, ye.tpHoldUntil or 0) then
if (ye.totalCasts or 0) ~= (ye.castMark or 0) then
ye.castMark = ye.totalCasts
ye.castMarkAt = os.clock()
elseif (ye.castMarkAt or 0) > 0
and os.clock() - (ye.castMarkAt or 0) > 45 then
pcall(ye.recover)
end
else
ye.castMark = ye.totalCasts
ye.castMarkAt = os.clock()
end

if os.time() - ye.lastSync >= 20 then
daj()
end
end

task.wait(0.5)
end
end)

local ucr

task.spawn(function()
local ulfx = ttt()

while gaqj() do
local io = ttt()

if io ~= ulfx then
ulfx = io
pcall(function()
ucr:UpdateBody(io)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while gaqj() do
if wlp.enabled then

if os.clock() >= (wrfj.trip.untilAt or 0) then
wrfj.open()
end

local xwfp = wlp.pending

if xwfp and os.time() - xwfp.at > 5 then

wlp.failedUntil[xwfp.id] = os.time() + 30
wlp.pending = nil
aep.RequestItemSync:FireServer()
end

if os.time() - wlp.lastSync >= 20 then
wlp.lastSync = os.time()
aep.RequestItemSync:FireServer()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
local qe = wrfj.text()

while gaqj() do
local zum = wrfj.text()

if zum ~= qe and wrfj.paragraph then
qe = zum

pcall(function()
wrfj.paragraph:UpdateBody(zum)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while gaqj() do

if wrfj.upgrade.balance == nil or os.time() - wrfj.upgrade.lastRequest >= 20 then
wrfj.request()
end

if wrfj.run.highest == nil and os.time() - wrfj.run.lastRequest >= 5 then
wrfj.requestProgress()
end

if wrfj.upgrade.enabled then
wrfj.buy()

if wrfj.upgrade.waiting and os.time() - wrfj.upgrade.lastBuy >= 5 then

wrfj.upgrade.waiting = false
wrfj.request()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
while gaqj() do
local ny = wrfj.run

if ny.enabled then
if ny.highest == nil or os.time() - ny.lastRequest >= 20 then
wrfj.requestProgress()
end

local cgb = ny.inBattle and os.time() < ny.inBattleUntil

if not cgb and znb.halloweenSlot() ~= nil
and znb.slotFree(znb.halloweenSlot() or 1)

and (not jzua.enabled or znb.towerSlot() ~= 1)
and (not ggy.island or znb.enabled)
and (not gotr.enabled or znb.enabled)
and not (ny.pending and os.time() < ny.pendingUntil) then
if wrfj.bestRoom() then
wrfj.startRun()
elseif ny.highest ~= nil then

ny.enabled = false

pcall(function()
wrfj.runToggle:UpdateState(false)
end)

pcall(function()
fqvu:Dialog({
Title = _d("NB0FAUg+UBkEHhkNE19VPB4ZDQQ"),
Description = _d("MB4UHBFWeRQEHQEfE1QbSCUBHxNDVRsFDw8TERwbUQ0EE1AHDRVOCRpDEAkVF0RWQhpIBQYNBFRVAQJOBhlFHQEfCUgaVBMcURoHVkMABl8"),
Buttons = {
{
Name = _d("MgcFTgEC"),
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

local hfty = fqvu:TabGroup()

local ktkc = hfty:Tab({
Name = _d("OAkYAA"),
Image = _d("BwoJDxsFVAEBFVRHWQBHUEddWEIJQFBAWlBBCQ"),
})

local zmd = hfty:Tab({
Name = _d("IQcGCxpWF1U8FA8F"),
Image = _d("BwoJDxsFVAEBFVRHWQBFXkReUU8IRl1EWFlBAA"),
})

task.spawn(function()
local rqdy = 0
local thh = 0

local snl = 0

while gaqj() do
local tae = ye.rebirthText()

if ye.rebirthParagraph and tae ~= ye.rebirthShown then
ye.rebirthShown = tae

pcall(function()
ye.rebirthParagraph:UpdateBody(tae)
end)
end

if os.clock() >= snl then
snl = os.clock() + 20

local oj = ggy.remotes and ggy.remotes.request

if oj then
pcall(function()
oj:FireServer()
end)
end
end

local vri = ggy.buffText()

if ggy.islandParagraph and vri ~= ggy.buffShown then
ggy.buffShown = vri

pcall(function()
ggy.islandParagraph:UpdateBody(vri)
end)
end

if ye.autoRebirth then
if os.clock() - rqdy > 15 then
rqdy = os.clock()
daj()
end

if ye.rebirthReady() and os.clock() >= thh then
local jtx = workspace:FindFirstChild(_d("OAkWBwsXXVUqHgED"), true)

if jtx then
bf(jtx)
task.wait(0.8)
end

local rfjn, xok = rq(_d("Jw0TBxoCWQ"))

if rfjn then
ye.autoRebirth = false

pcall(function()
ye.rebirthToggle:UpdateState(false)
end)

fqvu:Notify({
Title = _d("Jw0TBxoCWQ"),
Description = _d("Jw0TBxoCWRAMX048HlRVKRMPBhJeGw0VTiEFXRQGFU4BBREaGBQARg"),
Lifetime = 6,
})
elseif xok ~= _d("BgQeGQ") then
thh = os.clock() + 20

fqvu:Notify({
Title = _d("Jw0TBxoCWQ"),
Description = _d("Jw0TBxoCWVUaFAgdBVQRUlE") .. tostring(xok),
Lifetime = 6,
})
end
end
end

task.wait(3)
end
end)

local phk = hfty:Tab({
Name = _d("MwECBgEYVg"),
Image = _d("BwoJDxsFVAEBFVRHWQBEXERbXUcFR11HWFxFAA"),
})

local kg = hfty:Tab({
Name = _d("MQEWCQEYVg"),
Image = _d(""),
})

local rcb = hfty:Tab({
Name = _d("MB4UABwF"),
Image = _d("BwoJDxsFVAEBFVRHWQBHXUFfWkAERVxIWVBOAg"),
})

local hozr = phk:Section({
Side = _d("OQ0XGg"),
})

hozr:Header({
Name = _d("MwECBgEYVlWY7uDL"),
})

local fkh

local function ftd(fqyk)
ye.enabled = fqyk
ye.phase = _d("HAwdCw")
ye.nextCastAt = 0
ye.castMark = ye.totalCasts
ye.castMarkAt = os.clock()

if not fqyk then
ad()
return
end

task.spawn(function()
if not wylj() then
fqvu:Notify({
Title = _d("NB0FAUgwWAYA"),
Description = _d("OwdRCAEFWRwGFk4aGVVVAR9OHB5UVQoQDQMGUBYDXw"),
Lifetime = 5,
})
end

if ye.tpToBay and not inup() then
mvz()
end

daj()

if ye.autoUnlocked and not ye.perfectCasts then
bn()
end
end)
end

local skti = false

local function cs()
if ye.tpToBay or ye.deepZone then
if ye.autoFishWanted then

ye.autoFishWanted = false

pcall(function()
fkh:UpdateState(true)
end)

if not ye.enabled then
ftd(true)
end
end

return true
end

if ye.enabled then

ye.autoFishWanted = true

ftd(false)

if not skti then
fqvu:Dialog({
Title = _d("NB0FAUgwWAYAUQEOEA"),
Description = _d("PBxRAA0TVQZIEE4bBl4BSAUBSBBYBgBRDxxWHFUcBBwGVl4bSCU+SAJeVSoQF0gZQ1UJUSoNE0FVPxAaDQRCVRsGBxwVWVs"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})
end
end

return false
end

fkh = hozr:Toggle({
Name = _d("NB0FAUgwWAYA"),
Default = false,
Callback = function(pgse)
if pgse and fnn then
pcall(function()
fkh:UpdateState(false)
end)

if not skti then
fqvu:Dialog({
Title = _d("NB0FAUgwWAYAUQcbVkEUGhoLDA"),
Description = _d("NB0FAUgyWBJIGQ8bVkUdDVEdABlHEARRBwZWWRQGFUBIIkQHBlEvHQJeVSwYCUgZVxNIEAAMVnAAHB5OLh9CHUgCGgkERQZIHwEaG1AZBAhA"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})
end

return
end

if pgse and not (ye.tpToBay or ye.deepZone) then

pcall(function()
fkh:UpdateState(false)
end)

ye.autoFishWanted = true

if not skti then
fqvu:Dialog({
Title = _d("NB0FAUgwWAYAUQANE1UGSBBOGwZeAQ"),
Description = _d("IR0DAEgZX1U8IU4cGRE3CQhOBwQRFEg1Cw0GESIJBQsaBREGHxgaCx4REwEDHRxWHFUpBBoHVnccGxlOGwJQBxwCTgoPERwcAgsEEBEUG1EdBxlfVQkCTgcYVFUHF04cHlQYSBgdSBlfWw"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})
end

return
end

ye.autoFishWanted = false

ftd(pgse)
end,
}, _d("FB0FATcQWAYA"))

ye.autoFishToggle = fkh

hozr:Toggle({
Name = _d("JQ0DCA0VRVULEB0cBRFdEENOBANSHkE"),
Default = true,
Callback = function(iqhd)
ye.perfectCasts = iqhd

if iqhd and ye.usingGameAuto then
ad()
end
end,
}, _d("BQ0DCA0VRSoLEB0cBW4NWi4CHRVa"))

hozr:Toggle({
Name = _d("IThRGgdWcxQR"),
Default = false,
Callback = function(vfw)
ye.tpToBay = vfw

cs()
end,
}, _d("ARguGgcpUxQR"))

local gwhp
local rav

gwhp = hozr:Toggle({
Name = _d("IQ0dCxgZQwFIBQFIMlQQGBQdHFZmFBwUHA"),
Default = false,
Callback = function(xqze)
if xqze then

ye.deepWalk = false
ye.deepDiveAt = 0
ye.deepPhase = _d("HAwdCw")
ye.deepStageAt = 0

pcall(function()
rav:UpdateState(false)
end)

ye.deepZone = true

task.spawn(function()
if not sgm.settle() and ye.deepZone and not ye.deepWalk then
fqvu:Notify({
Title = _d("IQ0dCxgZQwFIBQFIMlQQGBQdHFZmFBwUHA"),
Description = _d("IQAUTgwTVAVFBg8cE0NVBRAeSBhUAw0DTgQZUBENFUBIIkQHBlEaABMRBh8YGgseERoOF04JGFVVBx9OCRFQHAZRGgdWQxAcAxdG"),
Lifetime = 8,
})
end
end)

cs()

return
end

if ye.deepWalk then
return
end

ye.deepZone = false
ye.deepDiveAt = 0
ye.deepPhase = _d("HAwdCw")
ye.deepStageAt = 0

task.spawn(function()
pcall(function()
aep.TeleportToWorld:FireServer(_d("GQcTDBE"))
end)
end)

cs()
end,
}, _d("EQ0UHjcBUAENAzEKE0IBNx0bCx0"))

rav = hozr:Toggle({
Name = _d("IgkdBUgCXlUsFAsYE0IBSCYPHBND"),
Default = false,
Callback = function(xqfw)
if xqfw then

local gfo = sgm.customIsland or sgm.islandOf(sgm.spot())

if ye.islandLocked and gfo == _d("FAoQAAwZXxAMLgcbGlAbDA") then
ye.deepWalk = false

pcall(function()
rav:UpdateState(false)
end)

fqvu:Dialog({
Title = _d("IgkdBUgCXlUsFAsYE0IBSCYPHBNDVQYUCwwFEQEAFE4pFFAbDB4ADRIRPBsdDwYS"),
Description = _d("IQAUTgEFXRQGFU4BBREZBxIFDRIRGgZRGgAfQlUJEg0HA18BRlEhBhMRBw0TBxoCWVUHAQsGBREcHFFDSANfAQEdThweVBtIBQYNVlYUBRROABdCVQYeThwTXRAYHhwcVkUdDQMLSAJeVRwQBQ1Y"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})

return
end

ye.deepWalk = true
ye.deepDiveAt = 0
ye.deepPhase = _d("HAwdCw")
ye.deepStageAt = 0

pcall(function()
gwhp:UpdateState(false)
end)

ye.deepZone = true

task.spawn(function()
sgm.walk()
end)

cs()

return
end

if not ye.deepWalk then
return
end

ye.deepWalk = false
ye.deepZone = false
ye.deepDiveAt = 0
ye.deepPhase = _d("HAwdCw")
ye.deepStageAt = 0

task.spawn(function()
pcall(function()
aep.TeleportToWorld:FireServer(_d("GQcTDBE"))
end)
end)

cs()
end,
}, _d("AgkdBTcSVBAYLhkJAlQH"))

hozr:Paragraph({
Header = _d("MQ0UHg0FRVU/EBoNBA"),
Body = _d("NwcFBkgFRhwcEgYNBREZCR8KSBlfVRwZC0ghWBsMHAcEGhE8Gx0LSBJeFgNRQ0gCWRBIFQsNBlQGHFEcARhWWUgmBwYSRhQaFU4/F0UQGgJORVZCGkgFGxoYWBsPUQEGExEaBlEIGhlcVQkfFx8eVAcNUQcGVkUdDVEJCRtUVQoDBwYRQlURHhtIFFAWA1EaB1ZFHQkFThsGXgFGe2Q/F10eSBIBHhNDBkgFBg1WXRQbBU4bAkMQHBIGSBlfVQ4eARxWRhwcGU4cHlRVDxADDVFCVQcGAEgXXxwFEBoBGV9OSCULBBNBGhoFThgDRQZICAEdVkUdDQMLSAFYAQAeGxxWRR0NURkJGlpbSCUBSB5eGQxRD0gSWBMOFBwNGEVVGwEBHFZYGxsFCwkSHVUaBABIN3I3MDULDQZmFBwUHEYVUAUcBBwNXhhVAR9OHB5UVQseABsZXRBIBgYBGlRVGwUPBhJYGw9RAQZWWAFG"),
})

local kvx

kvx = hozr:Paragraph({
Header = _d("MwECBgEYVlUbBQ8cEw"),
Body = hpg(),
})

local fgo = rcb:Section({
Side = _d("OQ0XGg"),
})

fgo:Header({
Name = _d("NB0FAUg+UBkEHhkNE19VPB4ZDQTB6ubynvfQtg"),
})

wrfj.runToggle = fgo:Toggle({
Name = _d("NB0FAUg+UBkEHhkNE19VPB4ZDQQ"),
Default = false,
Callback = function(ihzk)
wrfj.run.enabled = ihzk
wrfj.run.pending = false
wrfj.run.pendingUntil = 0

if ihzk then
wrfj.requestProgress()
end
end,
}, _d("FB0FATceUBkEHhkNE18qHB4ZDQQ"))

wrfj.run.team = math.clamp(math.floor(tonumber(uoy.bossTeams.towerPicked.halloween) or 1), 1, 4)
wrfj.run.teamChosen = tonumber(uoy.bossTeams.towerPicked.halloween) ~= nil
wrfj.run.building = true

wrfj.run.teamDropdown = fgo:Dropdown({
Name = _d("IQ0QAw"),
Search = false,
Multi = false,
Required = false,
Default = wrfj.run.team,
Options = { _d("IQ0QA0hH"), _d("IQ0QA0hE"), _d("IQ0QA0hF"), _d("IQ0QA0hC") },
Callback = function(ovv)
local boxw = type(ovv) == _d("AQkTAg0") and ovv[1] or ovv
local zadx = type(boxw) == _d("BhwDBwYR") and tonumber(boxw:match(_d("XU0VRUE"))) or nil

if not zadx then
return
end

wrfj.run.team = zadx

if wrfj.run.building then
return
end

wrfj.run.teamChosen = true
uoy.bossTeams.towerPicked.halloween = zadx
uoy.bossTeams.save()

pcall(function()
wrfj.run.teamDropdown:UpdateName(_d("IQ0QA0iUsddI") .. (boxw or (_d("IQ0QA0g") .. tostring(zadx))))
end)
end,
}, _d("AQ0QAzceUBkEHhkNE18"))

pcall(function()
wrfj.run.teamDropdown:UpdateSelection(_d("IQ0QA0g") .. tostring(wrfj.run.team))
wrfj.run.teamDropdown:UpdateName(_d("IQ0QA0iUsddIJQsJGxE") .. tostring(wrfj.run.team))
end)

wrfj.run.building = false

wrfj.toggle = fgo:Toggle({
Name = _d("NB0FAUgDQRIaEAoNBQ"),
Default = false,
Callback = function(txm)
if txm and not next(wrfj.upgrade.selected) then
wrfj.upgrade.enabled = false

pcall(function()
wrfj.toggle:UpdateState(false)
end)

fqvu:Dialog({
Title = _d("NB0FAUgDQRIaEAoNBQ"),
Description = _d("JQESBUgXRVUEFA8bAhEaBhROGANcBQMYAEgDQRIaEAoNVlgbSAUGDVZVBwcBCgcBX1UOGBwbAhFYSDAbHBkRABgWHAkSVAZIAh4NGFUGSAgBHQQRPwkSBUgZFlUkEAAcE0MbG1EBBlZFHQ0cTgkFEQYHHgBIF0JVER4bSBVQG0gQCA4ZQxFIHgANWA"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})

return
end

wrfj.upgrade.enabled = txm

if txm then
wrfj.request()
end
end,
}, _d("FB0FATcDQRIaEAoNBQ"))

fgo:Dropdown({
Name = _d("JR0cHgMfX1UdAQkaF1UQGw"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = wrfj.labels,
Callback = function(hleh)
local jerc = {}

if type(hleh) == _d("AQkTAg0") then
for veex, ji in ipairs(wrfj.upgrades) do
if hleh[ji.name] then
jerc[ji.id] = true
end
end
end

wrfj.upgrade.selected = jerc

if not next(jerc) and wrfj.upgrade.enabled then
wrfj.upgrade.enabled = false

pcall(function()
wrfj.toggle:UpdateState(false)
end)

fqvu:Dialog({
Title = _d("NB0FAUgDQRIaEAoNBREaDhc"),
Description = _d("OwcFBgEYVlUBAk4bE10QCwULDFZfGh9dThsZEQEAFBwNVlgGSB8BHB5YGw9RAg0QRVUcHk4KA0hbSCEHCx0RFAZRGxgRQxQMFE4JGFVVHAQcBlZYAUgTDwsdERoGXw"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})
end
end,
}, _d("BR0cHgMfXyodAQkaF1UQGw"))

wrfj.paragraph = fgo:Paragraph({
Header = _d("JR0cHgMfXwY"),
Body = wrfj.text(),
})

local szc = rcb:Section({
Side = _d("OQ0XGg"),
})

szc:Header({
Name = _d("PQkdAgcBVBAGUR0AGUGF9/7EmOmj9Q"),
})

szc:Toggle({
Name = _d("NB0FAUg0RAw"),
Default = false,
Callback = function(pho)
wlp.enabled = pho
wlp.pending = nil

if pho then
aep.RequestItemSync:FireServer()
task.spawn(function()
wrfj.open(true)
end)
end
end,
}, _d("FB0FATcURAw"))

szc:Button({
Name = _d("OhgUAEgFWRoY"),
Callback = function()
task.spawn(function()
local ux = wrfj.open(true)

fqvu:Notify({
Title = _d("PQkdAgcBVBAGUR0AGUE"),
Description = ux and _d("NgcEABwTQ1UHAQsGVhxVDBAHBA8RBhweDQNWQxAJFU4OBF4YSAUGDVZCEBoHCxpY") or tostring(wrfj.trip.lastResult),
Lifetime = 6,
})

if ucr then
pcall(function()
ucr:UpdateBody(ttt())
end)
end
end)
end,
})

szc:Dropdown({
Name = _d("PBwUAxs"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = wrfj.shopLabels,
Callback = function(aga)
local jycn = {}

if type(aga) == _d("AQkTAg0") then
for ewx, fu in ipairs(wrfj.shopItems) do
if aga[fu.label] then
jycn[fu.id] = true
end
end
end

wlp.selected = jycn
end,
}, _d("HBwUAxs"))

ucr = szc:Paragraph({
Header = _d("JhweDQNWF1UaFB0NAg"),
Body = ttt(),
})

local muk = rcb:Section({
Side = _d("JwEWBhw"),
})

muk:Paragraph({
Header = _d("Jg0QHQcYUBlIFBgNGEUG"),
Body = _d("PQkdAgcBVBAGUQcbVl0cHhRUSAJZEEgCBgcGERQGFU4cHlRVPB4ZDQQRFwcFBkgBXgcDX2RiN0QBB1EmCRpdGh8UCwZWZRofFBxIBUUUGgUdSA9eABpRCg0TQRAbBU4dGF0aCxoLDFZDGgccQEg1XRAJAwcGEREGHBAJDQURBQkIHUg8UBYDUQFPVn0UBgULGhhCWUgQAAxWcAAcHk4dBlYHCRULG1ZCBQ0fChtWRR0NHE4HGBEFDQMDCRhUGxxRGgcBVAdIExsOEEJb"),
})

soi.worldBoss.section = rcb:Section({
Side = _d("JwEWBhw"),
})

soi.worldBoss.section:Header({
Name = _d("NB0FAUgxXRoKEAJINF4GGw"),
})

soi.worldBoss.section:Paragraph({
Header = _d("JRoYARofRQw"),
Body = _d("JwkfBRtWRhwcGU4cHlRVGhAHDAULVRwZC0gCXgINA04bAlAbDAJODBlGG0gXARpWWAFEUQ8GEhE0HQUBSDhhNkgeGxwEUBsDAk4BAh9/YiUGDVZXHA8ZGkgCUB4NAk4JVkIZBwVCSAVeVQEFTgsZRBscAk4JBREUBlEgODURFwkFGgQTEQEAFBwNWA"),
})

soi.worldBoss.toggle = soi.worldBoss.section:Toggle({
Name = _d("NB0FAUgxXRoKEAJINF4GGw"),
Default = false,
Callback = function(qbl)
if qbl and not soi.worldBoss.teamChosen then
soi.worldBoss.enabled = false

pcall(function()
soi.worldBoss.toggle:UpdateState(false)
end)

fqvu:Dialog({
Title = _d("NB0FAUgxXRoKEAJINF4GG1EADRNVBkgQThwTUBg"),
Description = _d("JQESBUgCWRBIBQsJGxEcHFEdABlEGQxRCAERWQFIBgccHhEcBlEaABMRIQ0QA0gSQxoYFQEfGBETAQMdHFgRIQAUThsVQxwYBU4AF0JVHB5OGwFYAQsZThweUAFIAgIHAhYGSAULCRsRFw0XARoTEQEAFE4OH1YdHFEdHBdDARtdTgkYVVU8FA8FVgBVAQJOBxhdDEgFBg1WVRAOEBsEAhFYSBgaSB9CVQYeGkgXERYAHgcLExEABgUHBFZIGh1RAwkdVFUBBUA"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})

return
end

if qbl then
local hlrs = soi.worldBoss.team
local sqmx = uoy.bossTeams.teamCards(hlrs)

if sqmx == 0 then
soi.worldBoss.enabled = false

pcall(function()
soi.worldBoss.toggle:UpdateState(false)
end)

fqvu:Dialog({
Title = _d("IQ0QA0g") .. tostring(hlrs) .. _d("VQAQHUgYXlULEBwMBQ"),
Description = _d("JR0FTgkCERkNEB0cVl4bDVENCQRVVQEfTjwTUBhI") .. tostring(hlrs) .. _d("VUA1CwsdQlxEUQEaVkEcCxpOCVZFEAkcThweUAFIEAIaE1AREVEGCQURFgkDChtWWBtIBQYNVmUQCRxODAReBQweGQZaEQEAFABIAkQHBlEvHQJeVS8dAQoXXVUqHh0bVlMUCxpOBxgf"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})

return
end
end

soi.worldBoss.enabled = qbl
soi.worldBoss.holdUntil = 0

soi.worldBoss.nextFightAt = 0

if not qbl then
soi.worldBoss.setRepeat(false)
end

if qbl then

soi.worldBoss.syncedAt = 0
soi.worldBoss.askedAt = 0
soi.worldBoss.repeatSeeded = false
soi.worldBoss.seenKills = nil
soi.worldBoss.progressAt = os.clock()
soi.worldBoss.kickAt = 0
end
end,
}, _d("FB0FATcRXRoKEAI3FF4GGw"))

soi.worldBoss.claimToggle = soi.worldBoss.section:Toggle({
Name = _d("NB0FAUgVXRQBHE4aE0YUGhUd"),
Default = false,
Callback = function(gw)
soi.worldBoss.autoClaim = gw
soi.worldBoss.claimAt = 0

if gw then
soi.worldBoss.syncedAt = 0
soi.worldBoss.askedAt = 0
end
end,
}, _d("FB0FATcVXRQBHDEaE0YUGhUd"))

soi.worldBoss.applyFishingMode = function(wwv)
local ej = soi.worldBoss

if wwv == _d("MwECBgEYVlUfEAccVlcaGlEMBwVC") or wwv == _d("IgkYGkgQXgdIEgEHGlUaHx8") then
ej.fishingMode = _d("AgkYGg")
elseif wwv == _d("MQEWTh8XWAEbUQgHBBEXBwId") then

ej.fishingMode = _d("AQcWCxweVAc")
else
ej.fishingMode = _d("AQcWCxweVAc")
end

ej.digHold = wwv == _d("MQEWTh8XWAEbUQgHBBEXBwId")

ej.nextFightAt = 0
ej.repeatSeeded = false
ej.seenKills = nil
ej.progressAt = os.clock()

return ej
end

soi.worldBoss.fishingDropdown = soi.worldBoss.section:Dropdown({
Name = _d("JRoYARofRQw"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("MwECBkgXXRoGFh0BElQ"), _d("MwECBgEYVlUfEAccVlcaGlEMBwVC"), _d("MQEWTh8XWAEbUQgHBBEXBwId") },
Callback = function(kco)
local pb = type(kco) == _d("AQkTAg0") and kco[1] or kco

soi.worldBoss.applyFishingMode(pb)

settingsState.saveBossMode(pb)
end,
}, _d("AgouCAEFWRwGFjEFGVUQ"))

soi.worldBoss.fullToggle = soi.worldBoss.section:Toggle({
Name = _d("JhweHkgBWRAGURoAExEXCQNODh9dGRs"),
Default = false,
Callback = function(hjvn)
soi.worldBoss.stopAtFull = hjvn
soi.worldBoss.meterAt = 0
end,
}, _d("AgouHRwZQSoJBTEOA10Z"))

soi.worldBoss.walkToggle = soi.worldBoss.section:Toggle({
Name = _d("IgkdBUgCXlUPHQEKF11VCh4dGw"),
Default = false,
Callback = function(onl)
soi.worldBoss.walkToBoss = onl

soi.worldBoss.travelUntil = 0
end,
}, _d("AgouGQkaWiocHjEKGUIG"))

soi.worldBoss.bodyParagraph = soi.worldBoss.section:Paragraph({
Header = _d("NwcCHQ"),
Body = soi.worldBoss.bodyText(),
})

soi.worldBoss.section:Header({
Name = _d("NwcCHUgFWRoYUZ73+K6a0P4"),
})

soi.worldBoss.shopParagraph = soi.worldBoss.section:Paragraph({
Header = _d("PAZRHRwZUh4"),
Body = soi.worldBoss.shopText(),
})

soi.worldBoss.itemsDropdown = soi.worldBoss.section:Dropdown({
Name = _d("PBwUAxs"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = soi.worldBoss.shopOptions(),
Callback = function(mkm)
local eir = {}

if type(mkm) == _d("AQkTAg0") then
for vqu, alqt in pairs(mkm) do
local lrhx = soi.worldBoss.labelToId[vqu]

if alqt and lrhx then
eir[lrhx] = true
end
end
end

soi.worldBoss.selected = eir

if not next(eir) and soi.worldBoss.autoBuy then
soi.worldBoss.autoBuy = false

pcall(function()
soi.worldBoss.shopToggle:UpdateState(false)
end)
end
end,
}, _d("HBwUAxspAw"))

soi.worldBoss.shopToggle = soi.worldBoss.section:Toggle({
Name = _d("NB0FAUgURAw"),
Default = false,
Callback = function(aito)
if aito and not next(soi.worldBoss.selected) then
soi.worldBoss.autoBuy = false

pcall(function()
soi.worldBoss.shopToggle:UpdateState(false)
end)

fqvu:Dialog({
Title = _d("NB0FAUgURAw"),
Description = _d("JQESBUgXRVUEFA8bAhEaBhROAQJUGEgYAEg/RRAFAk4OH0MGHFFDSDdEAQdRDB0PEQYYFAAMBREnDRVOOh9TFwcfTiUTVRQEAk4HGBECABAaDQBUB0gYGkgVUBtIEAgOGUMRSBccBxsRAQAQGkgaWAYcXw"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})

return
end

soi.worldBoss.autoBuy = aito
end,
}, _d("FB0FATcURAw3Qw"))

soi.worldBoss.section:Button({
Name = _d("Nx0IThsTXRALBQsM"),
Callback = function()
if not next(soi.worldBoss.selected) then
fqvu:Dialog({
Title = _d("Nx0IThsTXRALBQsM"),
Description = _d("JQESBUgXRVUEFA8bAhEaBhROAQJUGEgYAEg/RRAFAk4OH0MGHF8"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})

return
end

local jmm = soi.worldBoss.buy()

if jmm == 0 then
fqvu:Dialog({
Title = _d("Nx0IThsTXRALBQsM"),
Description = _d("OwcFBgEYVlUfEB1IFF4ADxkaUlZfGkgcCwwXXQZIBQFIBUEQBhVCSBNHEBoIThgfUh5IGB1IGUQBSB4ISAVFGgsaQkgZQ1UcGQtIFF4GG1EdABlBVQAQHUgYXgFIAhcGFVQRSAgLHFg"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})
end
end,
})

soi.worldBoss.building = true

soi.worldBoss.teamDropdown = soi.worldBoss.section:Dropdown({
Name = _d("IQ0QAw"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("IQ0QA0hH"), _d("IQ0QA0hE"), _d("IQ0QA0hF"), _d("IQ0QA0hC") },
Callback = function(vrc)
if soi.worldBoss.building then
return
end

local yb = type(vrc) == _d("AQkTAg0") and vrc[1] or vrc
local wyv = type(yb) == _d("BhwDBwYR") and tonumber(yb:match(_d("XU0VRUE"))) or nil

if wyv then
soi.worldBoss.team = wyv
soi.worldBoss.teamChosen = true
uoy.bossTeams.save()
end

pcall(function()
soi.worldBoss.teamDropdown:UpdateName(_d("IQ0QA0iUsddI") .. (yb or _d("IQ0QA0hH")))
end)
end,
}, _d("AQ0QAw"))

pcall(function()
soi.worldBoss.teamDropdown:UpdateSelection(_d("IQ0QA0g") .. tostring(soi.worldBoss.team))
soi.worldBoss.teamDropdown:UpdateName(_d("IQ0QA0iUsddIJQsJGxE") .. tostring(soi.worldBoss.team))
end)

task.defer(function()
soi.worldBoss.building = false
end)

soi.misc = soi.misc or {}

soi.misc.expeditions = {
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
rewardPath = _d("NCszNkcTSQUNFQccH14bG18EGxlf"),
module = nil,
action = nil,
section = nil,
paragraph = nil,
claimToggle = nil,
startToggle = nil,
dropdown = nil,
}

function soi.misc.expeditions.data()
local dzj = soi.misc.expeditions

if dzj.module ~= nil then
return dzj.module or nil
end

local pche, yl = pcall(function()
return require(gb.ModuleScripts.ExpeditionData)
end)

dzj.module = pche and yl or false

return dzj.module or nil
end

function soi.misc.expeditions.tiers()
local rrj = soi.misc.expeditions.data()

return rrj and rrj.Tiers or {}
end

function soi.misc.expeditions.remote()
local kii = soi.misc.expeditions

if kii.action and kii.action.Parent then
return kii.action
end

kii.action = re(_d("MBABCwwfRRwHHy8LAlgaBg"), 3)

return kii.action
end

function soi.misc.expeditions.clockText(kozc)
local uwoo = soi.misc.expeditions.data()

if uwoo and type(uwoo.formatDuration) == _d("Ex0fDRwfXhs") then
return uwoo.formatDuration(kozc)
end

local nhnz = math.max(0, math.floor((kozc or 0) / 60))

return tostring(nhnz) .. _d("GA")
end

function soi.misc.expeditions.status(oise)
local okm = soi.misc.expeditions
local ihgr = okm.state
local ceep = type(ihgr) == _d("AQkTAg0") and type(ihgr.active) == _d("AQkTAg0") and ihgr.active[oise] or nil

if type(ceep) ~= _d("AQkTAg0") then
return _d("FB4QBwQXUxkN"), nil
end

local sg = (tonumber(ceep.endsAt) or 0) - (os.time() + (okm.offset or 0))

if sg <= 0 then
return _d("Bw0QChE"), sg
end

return _d("Bx0fAAEYVg"), sg
end

function soi.misc.expeditions.candidates(xrai)
local qneu = soi.misc.expeditions
local wuo = qneu.data()
local sfxd = qneu.state
local mzz = wuo and wuo.ById and wuo.ById[xrai]
local dqt = {}

if not (mzz and type(sfxd) == _d("AQkTAg0") and type(sfxd.eligible) == _d("AQkTAg0")) then
return dqt
end

for gibc, kzvv in ipairs(sfxd.eligible) do
if type(kzvv) == _d("AQkTAg0") and kzvv.cardId then
local bshz = tonumber(kzvv.rarity) or 0
local nq = (tonumber(kzvv.count) or 0) - (tonumber(kzvv.locked) or 0)

if bshz >= (tonumber(mzz.minRarity) or 0) and nq > 0 then

table.insert(dqt, { cardId = kzvv.cardId, borderLevel = kzvv.borderLevel, rarity = bshz, count = nq })
end
end
end

table.sort(dqt, function(wkli, sc)
if wkli.rarity == sc.rarity then
return tostring(wkli.cardId) < tostring(sc.cardId)
end

return wkli.rarity < sc.rarity
end)

return dqt
end

function soi.misc.expeditions.cards(hzcl, ovw)
local svg = soi.misc.expeditions
local ts = svg.data()
local mm = ts and tonumber(ts.CardsPerExpedition) or 4
local voi = {}
local qdrs = svg.candidates(hzcl)

ovw = ovw or {}

local function atzx(skv, jkpw)
local jhm = tostring(skv.cardId) .. _d("Vg") .. tostring(skv.borderLevel)

while #voi < mm and (ovw[jhm] or 0) < jkpw do
ovw[jhm] = (ovw[jhm] or 0) + 1

table.insert(voi, { cardId = skv.cardId, borderLevel = skv.borderLevel })
end
end

for qeqt, yi in ipairs(qdrs) do
if #voi >= mm then
break
end

if yi.count > 1 then
atzx(yi, yi.count - 1)
end
end

if #voi < mm then
for vkba, aesy in ipairs(qdrs) do
if #voi >= mm then
break
end

atzx(aesy, aesy.count)
end
end

return voi
end

function soi.misc.expeditions.available(tiy)
local hoa = soi.misc.expeditions
local au = hoa.data()
local tjyq = au and tonumber(au.CardsPerExpedition) or 4
local ftso = 0

for hqt, ggci in ipairs(hoa.candidates(tiy)) do
ftso = ftso + ggci.count

if ftso >= tjyq then
return tjyq
end
end

return ftso
end

function soi.misc.expeditions.text()
local yvv = soi.misc.expeditions

if type(yvv.state) ~= _d("AQkTAg0") then
return _d("Jw0QCgEYVlUNCR4NElgBAR4AG1gfWw")
end

local nmc = yvv.data()
local kyf = nmc and tonumber(nmc.CardsPerExpedition) or 4
local jg = {}

for jtj, mz in ipairs(yvv.tiers()) do
local vlfe, shf = yvv.status(mz.id)
local jw = tostring(mz.name)

if yvv.tiersWanted[mz.id] then
jw = _d("l+jTTg") .. jw
end

if vlfe == _d("Bx0fAAEYVg") then
jw = jw .. _d("fzoUGh0EXwZIGABI") .. yvv.clockText(shf)
elseif vlfe == _d("Bw0QChE") then
jw = jw .. _d("fzoUDwwPEQEHUQ0EF1gY")
else
local ficu = yvv.available(mz.id)
jw = jw .. _d("fw") .. tostring(ficu) .. _d("VQcXTg") .. tostring(kyf) .. _d("VQsQHAwF")

if ficu >= kyf then
jw = jw .. _d("fysQAEgFRRQaBQ")
end
end

table.insert(jg, jw)
end

table.insert(jg, _d("MB4UHBFWVQAYHQcLF0UQSBgdSAVUGxxRDA0QXgcNUQ9IFVAHDFEXBwMRHQcdCkgZXxBIHghEVlAbDFEBBhMRFgcBF0gZV1UJUQ0JBFVVAQJOAxNBAUgTDwsdEQIAFBwNVkUdDVEaARNDVQsQAEgFQRQaFE4BAhFYSBBOBBlfEEgSARgPERoGHRdIEV4QG1EBHQIRAgAUAEgCWRBIBQcNBBEWCR8ABwIRFw1RCAEaXRAMURkBAlkaHQVOAQIf"))

return table.concat(jg, _d("f2I"))
end

function soi.misc.expeditions.request()
local nse = soi.misc.expeditions
local ebw = nse.remote()

if ebw then
pcall(function()
ebw:FireServer(_d("Bw0AGw0FRQ"))
end)
end

nse.askedAt = os.clock()
end

function soi.misc.expeditions.claim()
local djj = soi.misc.expeditions

if os.clock() < djj.claimAt then
return false
end

local pmr = false

for oth, skpz in ipairs(djj.tiers()) do
if djj.status(skpz.id) == _d("Bw0QChE") then
pmr = true
break
end
end

if not pmr then
return false
end

local oi = djj.remote()

if not oi then
return false
end

pcall(function()
oi:FireServer(_d("FgQQBwU3XRk"))
end)

djj.claimAt = os.clock() + 3
djj.askedAt = 0

return true
end

function soi.misc.expeditions.popup()
local qhrw = lbjw:FindFirstChild(_d("MBABCwwfRRwHHykdHw"))

return qhrw and qhrw:FindFirstChild(_d("NgQQBwUmXgUdAQ")) or nil
end

function soi.misc.expeditions.closeRewards()
local nvq = soi.misc.expeditions
local tyrr = nvq.popup()

if not (tyrr and tyrr.Visible) then
return false
end

local kdh = tyrr:FindFirstChild(_d("OgMzGxwCXhs"))

if kdh and type(firesignal) == _d("Ex0fDRwfXhs") then
pcall(firesignal, kdh.Activated)
end

pcall(function()
tyrr.Visible = false
end)

return true
end

function soi.misc.expeditions.rewardsText()
local er = soi.misc.expeditions

if #er.rewardLog == 0 then
return _d("OwcFBgEYVlULHQ8BG1QRSAgLHFgRMB4UHBFWQRQRHhscVkUdDVEdDQRHEBpRHQ0YVQZIHQ8GEkJVABQcDVZGHBwZTgECQlUcGAsaVlAbDFEHHAURFgcfGg0YRQZG")
end

local ljey = {}

for mfiv, pyo in ipairs(er.rewardLog) do
local mutz = {}
local odgw = pyo.items or {}

for tmaq, ctor in ipairs(odgw) do
if tmaq > 4 then
table.insert(mutz, _d("Xg") .. tostring(#odgw - 4) .. _d("VQUeHA0"))
break
end

local lao = ctor.id or ctor.itemId
local dyc = lao and mat.ById[lao] or nil
local omcy = (dyc and dyc.name) or (ctor.potions and _d("JQcFBwcYQg")) or tostring(lao or _d("Bw0GDxoS"))

table.insert(mutz, omcy .. _d("VRA") .. tostring(ctor.count or ctor.max or ctor.min or 1))
end

local rbtv = math.max(0, os.time() - (tonumber(pyo.at) or os.time()))
local oc

if rbtv < 60 then
oc = tostring(rbtv) .. _d("BkgQCQc")
elseif rbtv < 3600 then
oc = tostring(math.floor(rbtv / 60)) .. _d("GEgQCQc")
else
oc = tostring(math.floor(rbtv / 3600)) .. _d("HUgQCQc")
end

table.insert(ljey, tostring(pyo.title) .. _d("VarGTg") .. oc)
table.insert(ljey, table.concat(mutz, _d("WUg")))
end

return table.concat(ljey, _d("fw"))
end

function soi.misc.expeditions.saveRewards()
local oymh = soi.misc.expeditions

if type(writefile) ~= _d("Ex0fDRwfXhs") then
return false
end

return pcall(function()
if type(makefolder) == _d("Ex0fDRwfXhs") and type(isfolder) == _d("Ex0fDRwfXhs") and not isfolder(_d("NCszNg")) then
makefolder(_d("NCszNg"))
end

writefile(oymh.rewardPath, game:GetService(_d("PRwFHjsTQwMBEgs")):JSONEncode({
rewards = oymh.rewardLog,
updatedAt = os.time(),
}))
end)
end

function soi.misc.expeditions.loadRewards()
local pafy = soi.misc.expeditions

if type(readfile) ~= _d("Ex0fDRwfXhs") or type(isfile) ~= _d("Ex0fDRwfXhs") then
return false
end

local wltg, lwp = pcall(function()
if not isfile(pafy.rewardPath) then
return nil
end

return readfile(pafy.rewardPath)
end)

if not wltg or type(lwp) ~= _d("BhwDBwYR") or #lwp == 0 then
return false
end

local qzuy

if not pcall(function()
qzuy = game:GetService(_d("PRwFHjsTQwMBEgs")):JSONDecode(lwp)
end) then
return false
end

if type(qzuy) ~= _d("AQkTAg0") or type(qzuy.rewards) ~= _d("AQkTAg0") then
return false
end

pafy.rewardLog = {}

for kcwx, qkaq in ipairs(qzuy.rewards) do
if type(qkaq) == _d("AQkTAg0") and type(qkaq.items) == _d("AQkTAg0") then
table.insert(pafy.rewardLog, {
at = tonumber(qkaq.at) or os.time(),
title = tostring(qkaq.title or _d("MBABCwwfRRwHHw")),
items = qkaq.items,
})
end
end

return #pafy.rewardLog > 0
end

function soi.misc.expeditions.start(apoc, llaq)
local ztc = soi.misc.expeditions

if ztc.status(apoc) ~= _d("FB4QBwQXUxkN") then
return false
end

if os.clock() < (ztc.startedAt[apoc] or 0) then
return false
end

local qa = ztc.remote()

if not qa then
return false
end

local wvps = ztc.cards(apoc, llaq)
local ivjm = ztc.data()
local oyxn = ivjm and tonumber(ivjm.CardsPerExpedition) or 4

if #wvps < oyxn then
return false
end

local im = {}

for ygt, lfxn in ipairs(wvps) do
im[ygt] = { cardId = lfxn.cardId, borderLevel = lfxn.borderLevel }
end

pcall(function()
qa:FireServer(_d("BhwQHBw"), apoc, im)
end)

ztc.startedAt[apoc] = os.clock() + 6
ztc.askedAt = 0

return true
end

soi.misc.icon = function()
local ep = gethui()

for tdn, bnn in ipairs(ep:QueryDescendants(_d("PAUQCQ06UBcNHQ"))) do
if bnn.Name == _d("IQkTJwUXVhA") then
local iw = bnn.Parent
local pqu = iw and iw:FindFirstChild(_d("IQkTPR8fRRYAFBwmF1wQ"))

if pqu and pqu.Text == _d("OAECDQ0aXRQGFAEdBQ") then
if bnn:GetAttribute(_d("NCszNiUfQhYhEgEG")) then
return true
end

bnn:SetAttribute(_d("NCszNiUfQhYhEgEG"), true)
bnn.Image = _d("")
bnn.BackgroundTransparency = 1

local function pmok(zsda, tbj, vd, ic, dl, rkuk, hgmg)
local dond = Instance.new(zsda)

dond.Size = UDim2.fromOffset(dl, rkuk)
dond.Position = UDim2.fromOffset(vd, ic)
dond.BackgroundColor3 = tbj
dond.BorderSizePixel = 0
dond.Parent = bnn

if hgmg then
local vwk = Instance.new(_d("ICEyARoYVAc"))
vwk.CornerRadius = UDim.new(0, hgmg)
vwk.Parent = dond
end

return dond
end

local qupa = Color3.fromRGB(168, 170, 176)

local function pwpu(jdvf, hvki, lb, xobl, bxz)
local hk = pmok(_d("MxoQAw0"), qupa, jdvf, hvki, lb, xobl, bxz)

hk.BackgroundTransparency = 1

local rmaq = Instance.new(_d("ICEiGhoZWhA"))

rmaq.Color = qupa
rmaq.Thickness = 1.4
rmaq.LineJoinMode = Enum.LineJoinMode.Round
rmaq.Parent = hk

return hk
end

pwpu(3, 1, 6, 4, 1)
pwpu(1, 4, 16, 12, 2)

local vhtn = pmok(_d("MxoQAw0"), qupa, 3, 8, 5, 5)

vhtn.BackgroundTransparency = 1
vhtn.ClipsDescendants = true

local jsz = pmok(_d("MxoQAw0"), qupa, 0, 1, 5, 5)

jsz.Rotation = 45
jsz.Parent = vhtn

pmok(_d("MxoQAw0"), qupa, 9, 9, 4, 4, 4)
pmok(_d("MxoQAw0"), qupa, 13, 10, 3, 3, 1)

return true
end
end
end

return false
end

soi.misc.tab = hfty:Tab({
Name = _d("OAECDQ0aXRQGFAEdBQ"),

Image = _d(""),
})

task.defer(function()
for hjs = 1, 20 do
if soi.misc.icon() then
break
end

task.wait(0.25)
end
end)

local vjgz = {
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
lastText = _d("OwcFBgEYVlUYHh4YE1VVERQaRg"),
tab = nil,
weatherSection = nil,
giveUpSection = nil,
weatherParagraph = nil,
giveUpParagraph = nil,
weatherToggle = nil,
giveUpToggle = nil,
}

getgenv().ACBXPop = vjgz

function vjgz.options()
local git = {}

for lwl, jqy in pairs(mat.ById) do
if jqy.type == _d("BQcFBwcY") and type(jqy.name) == _d("BhwDBwYR") then
git[#git + 1] = jqy.name
end
end

table.sort(git)

return git
end

function vjgz.idOf(bbbg)
for qts, qlst in pairs(mat.ById) do
if qlst.type == _d("BQcFBwcY") and qlst.name == bbbg then
return qts
end
end

return nil
end

function vjgz.count(bjgp)
local bne = wlp.balances

return tonumber(bne and bne[bjgp]) or 0
end

function vjgz.pop(pqw, ahh, dvtk)
local pdpk = {}

for wehn, dhq in pairs(pqw) do
if dhq then
local gpw = vjgz.idOf(wehn)

if gpw then
local voe = vjgz.count(gpw)

if voe <= 0 then
pdpk[#pdpk + 1] = wehn .. _d("VUVRAAcYVFUEFAgc")
else
local ljdj = math.clamp(math.floor(tonumber(ahh) or 1), 1, voe)

pcall(function()
aep.UseItem:FireServer(gpw, ljdj)
end)

pdpk[#pdpk + 1] = wehn .. _d("VRA") .. ljdj
task.wait(0.3)
end
end
end
end

if #pdpk == 0 then
return false
end

vjgz.lastText = dvtk .. _d("VUVR") .. table.concat(pdpk, _d("WUg"))

pcall(function()
fqvu:Notify({
Title = _d("JQcB"),
Description = vjgz.lastText,
Lifetime = 5,
})
end)

return true
end

function vjgz.status()
local mdn = ks.weatherWanted(vjgz.weathers)
local mpg = ks.weatherNow or _d("AAYaAAcBXw")
local vds = {
_d("Ig0QGgATQ09I") .. mpg .. (mdn and (_d("VUABARgGWBsPS04") .. mdn .. _d("XA")) or _d("")),
_d("OQkCGlJW") .. vjgz.lastText,
}

return table.concat(vds, _d("fw"))
end

function vjgz.giveUpStatus()
if vjgz.armedAt > 0 then
return _d("NBocCwxWHFUfEAccH18SSBcBGlZFHQ1RHB0YEQEHUQsGEh9/JBAdHEwR") .. vjgz.lastText
end

return _d("PAwdC0Z8fRQbBVRI") .. vjgz.lastText
end

vjgz.tab = hfty:Tab({
Name = _d("JQcB"),

Image = _d(""),
})

vjgz.icon = function()
local zjwk = gethui()

for ibm, iaxw in ipairs(zjwk:QueryDescendants(_d("PAUQCQ06UBcNHQ"))) do
if iaxw.Name == _d("IQkTJwUXVhA") then
local sf = iaxw.Parent
local uvo = sf and sf:FindFirstChild(_d("IQkTPR8fRRYAFBwmF1wQ"))

if uvo and uvo.Text == _d("JQcB") then
if iaxw:GetAttribute(_d("NCszNjgZQTwLHgA")) then
return true
end

iaxw:SetAttribute(_d("NCszNjgZQTwLHgA"), true)
iaxw.Image = _d("")
iaxw.BackgroundTransparency = 1

local orpp = Color3.fromRGB(168, 170, 176)

local function uz(wu, kq, ztry, dd, ltj, dtmg)
local zwei = Instance.new(wu)

zwei.Size = UDim2.fromOffset(dd, ltj)
zwei.Position = UDim2.fromOffset(kq, ztry)
zwei.BackgroundColor3 = orpp
zwei.BorderSizePixel = 0
zwei.Parent = iaxw

if dtmg then
local px = Instance.new(_d("ICEyARoYVAc"))
px.CornerRadius = UDim.new(0, dtmg)
px.Parent = zwei
end

return zwei
end

local function pf(xlz, uivw, xmn, dogm, jlr)
local mtc = uz(_d("MxoQAw0"), xlz, uivw, xmn, dogm, jlr)

mtc.BackgroundTransparency = 1

local pkqw = Instance.new(_d("ICEiGhoZWhA"))

pkqw.Color = orpp
pkqw.Thickness = 1.3
pkqw.LineJoinMode = Enum.LineJoinMode.Round
pkqw.Parent = mtc

return mtc
end

pf(1, 6, 16, 12, 6)
pf(6, 3, 6, 4, 1)
uz(_d("MxoQAw0"), 5, 1, 8, 2, 1)
uz(_d("MxoQAw0"), 7, 0, 4, 1, 0)

uz(_d("MxoQAw0"), 4, 11, 10, 1, 0)
uz(_d("MxoQAw0"), 13, 3, 2, 2, 2)
uz(_d("MxoQAw0"), 15, 6, 2, 2, 2)

return true
end
end
end

return false
end

task.defer(function()
for me = 1, 20 do
if vjgz.icon() then
break
end

task.wait(0.25)
end
end)

vjgz.weatherSection = vjgz.tab:Section({
Side = _d("OQ0XGg"),
})

vjgz.weatherSection:Header({
Name = _d("JQcFBwcYQlUHH04fE1ABABQcSIau0sI"),
})

vjgz.weatherToggle = vjgz.weatherSection:Toggle({
Name = _d("JQcBTgcYEQEAFB0NVkYQCQUGDQRC"),
Default = false,
Callback = function(cknl)
if cknl and (next(vjgz.weatherPotions) == nil or next(vjgz.weathers) == nil) then
vjgz.onWeather = false

pcall(function()
vjgz.weatherToggle:UpdateState(false)
end)

fqvu:Dialog({
Title = _d("JQcB"),
Description = _d("IQESBUgXRVUEFA8bAhEaBhROHxNQAQAUHEgXXxFIHgANVkEaHBgBBlZXHBoCGkhbESUHAU4GE1QRG1EMBwJZVRweTgMYXgJIBgYJAhEBB1EKGh9fHkgQAAxWRh0NH0A"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})

return
end

vjgz.onWeather = cknl

if cknl then
vjgz.weatherSpent = nil
end
end,
}, _d("BQcBMQcYbgEAFB0NKUYQCQUGDQRC"))

vjgz.weatherSection:Dropdown({
Name = _d("Ig0QGgATQwY"),
Multi = true,
Required = false,
Options = { _d("IREBBgcZXw"), _d("NwQYFBIXQxE"), _d("OQEWBhwYWBsP"), _d("IgEfChsCXgcF"), _d("JgAQHAEYVhQG"), _d("JgEfCR0aUAcBBRc"), _d("OAcfDxoVWVUsHgMJH18"), _d("IwcYCg"), _d("OAkVC0gfX1UgFA8eE18"), _d("OAkfCQk") },
Callback = function(ja)
vjgz.weathers = {}

if type(ja) == _d("AQkTAg0") then
for mgg, fbm in pairs(ja) do
if fbm then
vjgz.weathers[mgg] = true
end
end
end
end,
}, _d("Ag0QGgATQwY"))

vjgz.weatherSection:Dropdown({
Name = _d("JQcFBwcYQg"),
Multi = true,
Required = false,
Options = vjgz.options(),
Callback = function(hiz)
vjgz.weatherPotions = {}

if type(hiz) == _d("AQkTAg0") then
for fnt, mid in pairs(hiz) do
if mid then
vjgz.weatherPotions[fnt] = true
end
end
end
end,
}, _d("BQcFBwcYQg"))

vjgz.weatherSection:Input({
Name = _d("NAUeGwYC"),
Placeholder = _d("RA"),
AcceptedCharacters = _d("Ox0cCxofUg"),
Callback = function(mdc)
local uhu = math.floor(tonumber(mdc) or 1)

vjgz.weatherAmount = math.clamp(uhu, 1, 50)
end,
}, _d("FAUeGwYC"))

vjgz.weatherParagraph = vjgz.weatherSection:Paragraph({
Header = _d("JhwQGh0F"),
Body = vjgz.status(),
})

vjgz.giveUpSection = vjgz.tab:Section({
Side = _d("JwEWBhw"),
})

vjgz.giveUpSection:Header({
Name = _d("NA4FCxpWVhweFE4dBg"),
})

vjgz.giveUpToggle = vjgz.giveUpSection:Toggle({
Name = _d("JQcBTgkQRRAaUQ9IAl4CDQNODx9HEEgEHg"),
Default = false,
Callback = function(ico)
if ico and next(vjgz.giveUpPotions) == nil then
vjgz.afterGiveUp = false

pcall(function()
vjgz.giveUpToggle:UpdateState(false)
end)

fqvu:Dialog({
Title = _d("JQcB"),
Description = _d("IQESBUgXRVUEFA8bAhEaBhROGBlFHAcfTg4fQwYcUUNIAlkQGhROAQURGwcFBgEYVlUcHk4MBFgbA1EPDgJUB0gFBg1WQwAGUQEcHlQHHxgdDVg"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})

return
end

vjgz.afterGiveUp = ico
end,
}, _d("BQcBMQkQRRAaLg83Al4CDQMxDx9HEDcEHg"))

vjgz.giveUpSection:Dropdown({
Name = _d("JQcFBwcYQg"),
Multi = true,
Required = false,
Options = vjgz.options(),
Callback = function(ip)
vjgz.giveUpPotions = {}

if type(ip) == _d("AQkTAg0") then
for fknr, yfu in pairs(ip) do
if yfu then
vjgz.giveUpPotions[fknr] = true
end
end
end
end,
}, _d("BQcFBwcYQipa"))

vjgz.giveUpSection:Input({
Name = _d("NAUeGwYC"),
Placeholder = _d("RA"),
AcceptedCharacters = _d("Ox0cCxofUg"),
Callback = function(nkk)
local rth = math.floor(tonumber(nkk) or 1)

vjgz.giveUpAmount = math.clamp(rth, 1, 50)
end,
}, _d("FAUeGwYCbkc"))

vjgz.giveUpParagraph = vjgz.giveUpSection:Paragraph({
Header = _d("JhwQGh0F"),
Body = vjgz.giveUpStatus(),
})

local ffuc = {
autoSave = false,
autoRoll = true,
autoQuickRoll = true,

loading = false,
selected = nil,
lastText = _d("OwcFBgEYVlUfAwccAlQbSAgLHFYcVRgYDQNWUFUbEBgNVlccBBROChNdGh9f"),
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
theme = _d("IwcYCg"),
accent = nil,
savesAt = 0,
autoSaveAt = 0,
themeAt = 0,
capAt = 0,
scaleAnchor = nil,
statusAt = 0,
knownSaves = _d(""),
}

getgenv().ACBXSettings = ffuc

ffuc.presets = {
Void = { panel = Color3.fromRGB(15, 15, 15), element = Color3.fromRGB(0, 0, 0), accent = Color3.fromRGB(168, 170, 176) },
Ocean = { panel = Color3.fromRGB(6, 16, 26), element = Color3.fromRGB(8, 26, 40), accent = Color3.fromRGB(77, 166, 255) },
Ember = { panel = Color3.fromRGB(26, 10, 8), element = Color3.fromRGB(36, 16, 10), accent = Color3.fromRGB(255, 122, 69) },
Sakura = { panel = Color3.fromRGB(26, 9, 18), element = Color3.fromRGB(38, 14, 26), accent = Color3.fromRGB(255, 125, 177) },
Mint = { panel = Color3.fromRGB(7, 20, 14), element = Color3.fromRGB(9, 30, 22), accent = Color3.fromRGB(77, 227, 160) },
Graphite = { panel = Color3.fromRGB(20, 20, 22), element = Color3.fromRGB(30, 30, 33), accent = Color3.fromRGB(200, 200, 206) },
}

ffuc.themeOrder = { _d("IwcYCg"), _d("OgsUDwY"), _d("MAUTCxo"), _d("JgkaGxoX"), _d("OAEfGg"), _d("MhoQHgAfRRA") }

local air = _d("NCszTjoTUxwaBQZHBVQBHBgADwU")

function ffuc.saves()
local orm, zwcv = pcall(function()
return wtv:RefreshConfigList()
end)

if orm and type(zwcv) == _d("AQkTAg0") then
table.sort(zwcv)
return zwcv
end

return {}
end

function ffuc.autoLoadName()
local kse, ry = pcall(function()
if isfile and isfile(air .. _d("WgkEGgcaXhQMXxoQAg")) then
return readfile(air .. _d("WgkEGgcaXhQMXxoQAg"))
end
end)

if kse and type(ry) == _d("BhwDBwYR") then
ry = ry:gsub(_d("K00CRQ"), _d("")):gsub(_d("UBtaSg"), _d(""))

if ry ~= _d("") then
return ry
end
end

return nil
end

function ffuc.setAutoLoad(zu)

return (pcall(function()
writefile(air .. _d("WgkEGgcaXhQMXxoQAg"), zu or _d(""))
end))
end

function ffuc.delete(acu)
if type(acu) ~= _d("BhwDBwYR") or acu == _d("") then
return false, _d("JQESBUgXEQYJBwtIEFgZDVEIAQRCAUY")
end

local orwk = air .. _d("Wg") .. acu .. _d("WwICAQY")
local wzu = false

pcall(function()
wzu = isfile ~= nil and isfile(orwk) == true
end)

if not wzu then
return false, _d("IQAUHA1WWAZIHwFIEFgZDVENCRpdEAxR") .. acu .. _d("Ww")
end

local np, zj = pcall(function()
delfile(orwk)
end)

if not np then
return false, tostring(zj)
end

if ffuc.autoLoadName() == acu then
ffuc.setAutoLoad(_d(""))
end

if ffuc.selected == acu then
ffuc.selected = nil
ffuc.selectionShown = nil
end

ffuc.knownSaves = nil
ffuc.savesAt = 0

return true
end

function ffuc.save(yaa)
if type(yaa) ~= _d("BhwDBwYR") or yaa:gsub(_d("UBs"), _d("")) == _d("") then
return false, _d("MgEHC0gCWRBIAg8eExEUSB8PBRMREwEDHRxY")
end

local fpa, lsex, olen = pcall(function()
return wtv:SaveConfig(yaa)
end)

if not fpa then
return false, tostring(lsex)
end

if lsex ~= true then
return false, tostring(olen or _d("AQAUTg4fXRBIEgEdGlVVBh4aSBRUVR8DBxwCVBs"))
end

return true
end

function ffuc.replayOff(xnuv)
local hz, yusz = pcall(function()
return readfile(air .. _d("Wg") .. xnuv .. _d("WwICAQY"))
end)

if not hz or type(yusz) ~= _d("BhwDBwYR") then
return
end

local uoa
hz, uoa = pcall(function()
return game:GetService(_d("PRwFHjsTQwMBEgs")):JSONDecode(yusz)
end)

if not hz or type(uoa) ~= _d("AQkTAg0") or type(uoa.objects) ~= _d("AQkTAg0") then
return
end

for iv, aj in ipairs(uoa.objects) do
if aj.type == _d("IQcWCQQT") and aj.state == false and aj.flag then
local smla = wtv.Options[aj.flag]

if smla then
pcall(function()
smla:UpdateState(false)
end)
end
end
end
end

function ffuc.load(pfux)
if type(pfux) ~= _d("BhwDBwYR") or pfux == _d("") then
return false, _d("JQESBUgXEQYJBwtIEFgZDVEIAQRCAUY")
end

ffuc.loading = true
skti = true

local fxq, gdd, zqb = pcall(function()
return wtv:LoadConfig(pfux)
end)

if not fxq then
ffuc.loading = false
skti = false

return false, tostring(gdd)
end

if gdd ~= true then
ffuc.loading = false
skti = false

return false, tostring(zqb or _d("AQAUTg4fXRBIEgEdGlVVBh4aSBRUVRoUDww"))
end

task.wait(0.25)
ffuc.replayOff(pfux)
ffuc.loading = false
skti = false

return true
end

ffuc.uiPath = _d("NCszNkcDWFsCAgEG")

function ffuc.saveUi()
if type(writefile) ~= _d("Ex0fDRwfXhs") then
return false
end

if ffuc.restoring then
return false
end

local owly = ffuc.accent

local olb = {
theme = ffuc.theme,
scale = tonumber(string.format(_d("UEZDCA"), ffuc.scaleTarget or 1)),
accent = owly and string.format(_d("UAxdSwxaFBE"),
math.floor(owly.R * 255 + 0.5),
math.floor(owly.G * 255 + 0.5),
math.floor(owly.B * 255 + 0.5)) or nil,
}

return pcall(function()
if type(makefolder) == _d("Ex0fDRwfXhs") and type(isfolder) == _d("Ex0fDRwfXhs") and not isfolder(_d("NCszNg")) then
makefolder(_d("NCszNg"))
end

writefile(ffuc.uiPath, game:GetService(_d("PRwFHjsTQwMBEgs")):JSONEncode(olb))
end)
end

function ffuc.loadUi()
if type(readfile) ~= _d("Ex0fDRwfXhs") or type(isfile) ~= _d("Ex0fDRwfXhs") then
return nil
end

local lv, so = pcall(function()
if not isfile(ffuc.uiPath) then
return nil
end

return readfile(ffuc.uiPath)
end)

if not lv or type(so) ~= _d("BhwDBwYR") or so == _d("") then
return nil
end

local gpy
lv, gpy = pcall(function()
return game:GetService(_d("PRwFHjsTQwMBEgs")):JSONDecode(so)
end)

if not lv or type(gpy) ~= _d("AQkTAg0") then
return nil
end

ffuc.restoring = true

if type(gpy.theme) == _d("BhwDBwYR") and ffuc.presets[gpy.theme] then
ffuc.theme = gpy.theme

pcall(function()
ffuc.themeDropdown:UpdateSelection(gpy.theme)
ffuc.themeDropdown:UpdateName(_d("IQAUAw1MEQ") .. gpy.theme)
end)
end

local syc, yklh, aqn = tostring(gpy.accent or _d("")):match(_d("K0BUCkNfHV1NFUVBWhlQDFpHTA"))

if syc then
local wlth = Color3.fromRGB(tonumber(syc), tonumber(yklh), tonumber(aqn))

ffuc.accent = wlth

pcall(function()
ffuc.accentPicker:SetColor(wlth)
end)
else
ffuc.accent = nil

local cbwo = ffuc.presets[ffuc.theme] or ffuc.presets.Void

pcall(function()
ffuc.accentPicker:SetColor(cbwo.accent)
end)
end

local rz = tonumber(gpy.scale)

if rz then
rz = math.clamp(rz, 0.5, ffuc.scaleCeiling())

ffuc.scaleTarget = rz
ffuc.scaleAnchor = nil

pcall(function()
ffuc.scaleSlider:UpdateValue(rz)
end)
end

ffuc.applyTheme()

ffuc.restoring = false
ffuc.saveUi()

return gpy
end

ffuc.bossModePath = _d("NCszNkcUXgYbXwQbGV8")

function ffuc.saveBossMode(oaq)
if type(writefile) ~= _d("Ex0fDRwfXhs") or type(oaq) ~= _d("BhwDBwYR") or oaq == _d("") then
return false
end

return pcall(function()
if type(makefolder) == _d("Ex0fDRwfXhs") and type(isfolder) == _d("Ex0fDRwfXhs") and not isfolder(_d("NCszNg")) then
makefolder(_d("NCszNg"))
end

writefile(ffuc.bossModePath, game:GetService(_d("PRwFHjsTQwMBEgs")):JSONEncode({ mode = oaq }))
end)
end

function ffuc.loadBossMode()
if type(readfile) ~= _d("Ex0fDRwfXhs") or type(isfile) ~= _d("Ex0fDRwfXhs") then
return nil
end

local lgsb, zydf = pcall(function()
if not isfile(ffuc.bossModePath) then
return nil
end

return readfile(ffuc.bossModePath)
end)

if not lgsb or type(zydf) ~= _d("BhwDBwYR") or zydf == _d("") then
return nil
end

local zhx

lgsb, zhx = pcall(function()
return game:GetService(_d("PRwFHjsTQwMBEgs")):JSONDecode(zydf)
end)

if not lgsb or type(zhx) ~= _d("AQkTAg0") or type(zhx.mode) ~= _d("BhwDBwYR") then
return nil
end

return zhx.mode
end

function ffuc.colourKey(lo)
return math.floor(lo.R * 255) .. _d("WQ") .. math.floor(lo.G * 255) .. _d("WQ") .. math.floor(lo.B * 255)
end

function ffuc.guiRoot()

if not gaqj() then
return nil
end

if ffuc.root and ffuc.root.Parent then
return ffuc.root
end

local oann = gethui and gethui() or game:GetService(_d("NgcDCy8DWA"))

for jvat, mpox in ipairs(oann:GetChildren()) do
if mpox:IsA(_d("JgsDCw0YdgAB")) and mpox:FindFirstChild(_d("NwkCCw")) then
ffuc.root = mpox.Base

return ffuc.root
end
end

return nil
end

function ffuc.applyTheme()
local yay = ffuc.guiRoot()
local lzt = ffuc.presets[ffuc.theme] or ffuc.presets.Void

if not yay then
return false
end

local uvtt = {
panel = lzt.panel,
element = lzt.element,
accent = ffuc.accent or lzt.accent,
}

local jpi = {}

for fujr, bcdw in pairs(ffuc.presets) do
jpi[ffuc.colourKey(bcdw.panel)] = _d("BQkfCwQ")
jpi[ffuc.colourKey(bcdw.element)] = _d("EAQUAw0YRQ")
jpi[ffuc.colourKey(bcdw.accent)] = _d("FAsSCwYC")
end

jpi[ffuc.colourKey(uvtt.accent)] = _d("FAsSCwYC")

if jpi[ffuc.colourKey(yay.BackgroundColor3)] == _d("BQkfCwQ") then
yay.BackgroundColor3 = uvtt.panel
end

for ini, fe in ipairs(yay:GetDescendants()) do
if fe:IsA(_d("Mh0YIQocVBYc")) then
local gvc = jpi[ffuc.colourKey(fe.BackgroundColor3)]

if gvc then
fe.BackgroundColor3 = uvtt[gvc]
end
elseif fe:IsA(_d("ICEiGhoZWhA")) then
if jpi[ffuc.colourKey(fe.Color)] == _d("FAsSCwYC") then
fe.Color = uvtt.accent
end
end

if fe:IsA(_d("PAUQCQ06UBcNHQ")) and fe.Name == _d("IQkTJwUXVhA") and fe.Image ~= _d("") then
fe.ImageColor3 = uvtt.accent
fe.ImageTransparency = 0
fe:SetAttribute(_d("NCszNjwXUzQLEgsGAg"), uvtt.accent)

if not fe:GetAttribute(_d("NCszNjwXUyEBHxo")) then
fe:SetAttribute(_d("NCszNjwXUyEBHxo"), true)

local function vyxo()
local ubr = fe:GetAttribute(_d("NCszNjwXUzQLEgsGAg"))

if ubr and fe.ImageColor3 ~= ubr then
fe.ImageColor3 = ubr
end

if fe.ImageTransparency ~= 0 then
fe.ImageTransparency = 0
end
end

fe:GetPropertyChangedSignal(_d("PAUQCQ0iQxQGAh4JBFQbCwg")):Connect(vyxo)
fe:GetPropertyChangedSignal(_d("PAUQCQ01XhkHA10")):Connect(vyxo)
end
end
end

return true
end

local kkx = hfty:Tab({
Name = _d("OAkB"),
Image = _d("BwoJDxsFVAEBFVRHWQdFW0BeX0MIRlk"),
})

local thia = {
holdFor = 25,
fly = {
on = false,
speed = 55,
connection = nil,
},
islands = {
{ name = _d("OQcTDBE"), kind = _d("AgcDAgw"), arg = _d("GQcTDBE") },
{ name = _d("NAoQAAwZXxAMUScbGlAbDA"), kind = _d("HBsdDwYS"), arg = _d("FAoQAAwZXxAMLgcbGlAbDA") },
{ name = _d("IR8YAEg0VBQLGQsb"), kind = _d("HBsdDwYS"), arg = _d("AR8YADcUVBQLGQsb"), note = _d("VTwZC0gFVAceFBxIEkMaGAJOAQIRAAYFBwRWSBodUQYJAFRVGxAHBBNVVRwZCxoTHw") },
{ name = _d("IgEfCgUfXRlIOB0EEw"), kind = _d("HBsdDwYS"), arg = _d("AgEfCgUfXRk3GB0EEw"), note = _d("VTwZC0gFVAceFBxIEkMaGAJOAQIRAAYFBwRWSBodUQYJAFRVGxAHBBNVVRwZCxoTHw") },
},
npcs = {
{ name = _d("NgkDCkg7VAcPFA"), npc = _d("Ex0CCzcYQRY"), attr = _d("OzgyJww"), at = Vector3.new(-272, 33, -40347) },
{ name = _d("MBABCwwfRRwHHx0"), npc = _d("MBABCwwfRRwHHyA4NQ"), attr = _d("MBABCwwfRRwHHyA4NQ"), at = Vector3.new(-347, 35, -40361) },
{ name = _d("MQ0SAQYFRQcdEho"), npc = _d("EQ0SAQYFRQcdEho3GEEW"), attr = _d("OzgyJww"), at = Vector3.new(-264, 33, -40331) },
{ name = _d("NhoQCBw"), npc = _d("FhoQCBwpXwUL"), attr = _d("OzgyJww"), at = Vector3.new(-330, 33, -40277) },
{ name = _d("JgMYAgRWZQcNFA"), npc = _d("JgMYAgQiQxANPz4r"), attr = _d("JgMYAgQiQxANPz4r"), at = Vector3.new(-290, 32, -40283) },
{ name = _d("NgkDCkg/XxENCQ"), npc = _d("FgkDCjcfXxENCTEGBlI"), attr = _d("OzgyJww"), at = Vector3.new(-313, 33, -40282) },
{ name = _d("JQkSBUg7VAcLGQ8GAg"), npc = _d("BQkSBTcbVAcLGQ8GAg"), attr = _d("OzgyJww"), at = Vector3.new(-301, 33, -40270) },
{ name = _d("MR0fCQ0ZXw"), npc = _d("ER0fCQ0ZXyoGAQ0"), attr = _d("OzgyJww"), at = Vector3.new(-339, 41, -40399) },
{ name = _d("MwECBg0EXBQG"), npc = _d("MwECBg0EXBQGPz4r"), attr = _d("MwECBg0EXBQGPz4r"), at = Vector3.new(-493, 14, -40262) },
{ name = _d("Jg0SHA0CETQGFgINBA"), npc = _d("Jg0SHA0CcBsPHQsaOGE2"), attr = _d("Jg0SHA0CcBsPHQsaOGE2"), at = Vector3.new(-209, 34, -40382) },
{ name = _d("PQkdAgcBVBAGUT0AGUE"), npc = _d("JR0cHgMfX1UlFBwLHlAbHA"), at = Vector3.new(-29989, 78, -30259) },
{ name = _d("JgkSHAEQWBYNUS8EAlAH"), landmark = _d("JgkSHAEQWBYNMAIcF0M"), island = _d("FAoQAAwZXxAMLgcbGlAbDA"), at = Vector3.new(-3548, 11, -40462) },
{ name = _d("PQkDCgsZQxBIJQEfE0M"), npc = _d("PQkDCgsZQxA8HhkNBA"), island = _d("FAoQAAwZXxAMLgcbGlAbDA"), at = Vector3.new(-3795, 25, -40250) },
{ name = _d("PBsdDwYSETMBAgYNBFwUBg"), npc = _d("PBsdDwYSdxwbGQsaG1AbJiEt"), attr = _d("PBsdDwYSdxwbGQsaG1AbJiEt"), island = _d("FAoQAAwZXxAMLgcbGlAbDA"), at = Vector3.new(-3825, 23, -40260) },
{ name = _d("MQEWCQ0E"), npc = _d("MQEWCQ0EfyUr"), attr = _d("MQEWCQ0EfyUr"), island = _d("AR8YADcUVBQLGQsb"), at = Vector3.new(-5998, 26, -40565) },
{ name = _d("Jg0SHA0CETEBFgkNBA"), npc = _d("Jg0SHA0CdRwPFgsaOGE2"), attr = _d("Jg0SHA0CdRwPFgsaOGE2"), island = _d("AgEfCgUfXRk3GB0EEw"), at = Vector3.new(-7740, 17, -40343) },
},
}

function thia.hold()
ye.tpHoldUntil = os.clock() + thia.holdFor

ye.deepPhase = _d("HAwdCw")
ye.deepStageAt = 0
ye.phase = _d("HAwdCw")
ye.nextCastAt = 0
ye.watchdogAt = 0

return thia.holdFor
end

function thia.point(tzio)
local gtl

if tzio.landmark then
gtl = workspace:FindFirstChild(tzio.landmark)
else
local je = workspace:FindFirstChild(_d("OzgyHQ"))

if je then
for zlyz, oux in ipairs(je:GetChildren()) do
local awsn

if tzio.attr then
awsn = oux:GetAttribute(tzio.attr) == tzio.npc
else
awsn = oux.Name == tzio.npc
end

if awsn then
gtl = oux
break
end
end
end
end

if gtl then
local ifci = gtl.PrimaryPart
or gtl:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"), true)
or gtl:FindFirstChildWhichIsA(_d("NwkCCzgXQwE"), true)

if ifci then
return ifci.Position
end
end

return tzio.at
end

function thia.resume()
if not ye.enabled then
return
end

local jso = hs.Character
local goy = jso and jso:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if not goy or (goy.Position - mbb).Magnitude < 40 then
return
end

pcall(function()
ye.recover()
end)
end

function thia.standAt(qpvi)
local xrl = hs.Character
local awcq = xrl and xrl:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if not awcq or not qpvi then
return false
end

local ird = RaycastParams.new()
ird.FilterType = Enum.RaycastFilterType.Exclude
ird.FilterDescendantsInstances = { xrl }

local rr = workspace:Raycast(qpvi + Vector3.new(0, 10, 0), Vector3.new(0, -80, 0), ird)
local bogf = qpvi.Y

if rr and rr.Instance.Name ~= _d("IgkFCxo") then
local gofa = rr.Position.Y + 3.2

if math.abs(gofa - qpvi.Y) <= 8 then
bogf = gofa
end
end

local fcxb = Vector3.new(awcq.Position.X - qpvi.X, 0, awcq.Position.Z - qpvi.Z)

if fcxb.Magnitude < 1 then
fcxb = Vector3.new(4, 0, 0)
else
fcxb = fcxb.Unit * 4
end

local yxs = Vector3.new(qpvi.X + fcxb.X, bogf, qpvi.Z + fcxb.Z)

awcq.CFrame = CFrame.new(yxs)

return true
end

function thia.unlock()
local yf = {
{ id = _d("FAoQAAwZXxAMLgcbGlAbDA"), at = Vector3.new(-3825, 24, -40260) },
{ id = _d("AR8YADcUVBQLGQsb"), at = Vector3.new(-6180, 40, -40350) },
{ id = _d("AgEfCgUfXRk3GB0EEw"), at = Vector3.new(-7480, 30, -40350) },
}
local smt = {}

for kvk, bhil in ipairs(yf) do
local hmeo = aep.FishingGetState:InvokeServer()

if hmeo and hmeo.areas and hmeo.areas[bhil.id] == true then
table.insert(smt, bhil.id .. _d("T0gQAhoTUBERUQEYE18"))
else
thia.hold()
thia.standAt(bhil.at)
task.wait(2.4)

local gn = aep.FishingGetState:InvokeServer()

table.insert(smt, bhil.id .. (gn and gn.areas and gn.areas[bhil.id] and _d("T0gEAAQZUh4NFQ") or _d("T0gXDwEaVBE")))
end
end

thia.hold()
pcall(function()
aep.TeleportToWorld:FireServer(_d("GQcTDBE"))
end)
task.wait(2.5)

return table.concat(smt, _d("VarGTg"))
end

function thia.flyToggle(llw)
thia.fly.on = llw

if not llw then
return _d("MwQITgcQV1s")
end

local sijs = hs.Character
local dq = sijs and sijs:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if not dq then
return _d("OwdRDQAXQxQLBQsaVkUaSB0HDgIf")
end

thia.fly.height = dq.Position.Y

if thia.fly.connection then
return _d("MwQITgcYHw")
end

local rpy = game:GetService(_d("IBsUHCEYQQAcIgsaAFgWDQ"))

thia.fly.connection = game:GetService(_d("Jx0fPQ0ERxwLFA")).Heartbeat:Connect(function(rlse)
if not thia.fly.on then
return
end

local hgah = hs.Character
local aul = hgah and hgah:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if not aul then
return
end

local xdbe = workspace.CurrentCamera
local zim = Vector3.zero

if xdbe then
local hm = xdbe.CFrame.LookVector
local ylpi = Vector3.new(hm.X, 0, hm.Z)

if ylpi.Magnitude > 0.01 then
ylpi = ylpi.Unit
end

local hbw = Vector3.new(ylpi.Z, 0, -ylpi.X)

if rpy:IsKeyDown(Enum.KeyCode.W) then
zim = zim + ylpi
end

if rpy:IsKeyDown(Enum.KeyCode.S) then
zim = zim - ylpi
end

if rpy:IsKeyDown(Enum.KeyCode.D) then
zim = zim + hbw
end

if rpy:IsKeyDown(Enum.KeyCode.A) then
zim = zim - hbw
end
end

local iwoz = 0

if rpy:IsKeyDown(Enum.KeyCode.Space) then
iwoz = 1
elseif rpy:IsKeyDown(Enum.KeyCode.LeftControl) then
iwoz = -1
end

local chc = thia.fly.speed or 55
local zyb = zim * chc * rlse + Vector3.new(0, iwoz * chc * 0.6 * rlse, 0)

if zyb.Magnitude < 0.001 then
return
end

aul.CFrame = aul.CFrame + zyb
aul.AssemblyLinearVelocity = Vector3.zero
end)

return _d("MwQITgcYHw")
end

function thia.go(otpk)
thia.hold()

if otpk.kind == _d("AgcDAgw") then
pcall(function()
aep.TeleportToWorld:FireServer(otpk.arg)
end)

return _d("Jg0fGkgCWRBI") .. otpk.name .. _d("VRwUAg0GXgccXw")
end

if otpk.kind == _d("HBsdDwYS") then
pcall(function()
aep.FishingIslandTeleport:FireServer(otpk.arg)
end)

return _d("Jg0fGkgCWRBI") .. otpk.name .. _d("VRwUAg0GXgccXw") .. tostring(otpk.note or _d(""))
end

local mr = thia.point(otpk)
local dmt = hs.Character
local jrk = dmt and dmt:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if mr and jrk and (jrk.Position - mr).Magnitude > 1500 then
pcall(function()
if otpk.island then
aep.FishingIslandTeleport:FireServer(otpk.island)
else
aep.TeleportToWorld:FireServer(_d("GQcTDBE"))
end
end)

task.wait(otpk.island and 3.5 or 4.5)

mr = thia.point(otpk)

jrk = hs.Character and hs.Character:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if mr and jrk and (jrk.Position - mr).Magnitude > 1500 then
return otpk.name .. _d("VQECTgcYEQ") .. tostring(otpk.island or _d("AQAUTgQZUxcR"))
.. _d("VUVRGgATERIJHAtIBFQTHQILG1ZFHQkFThwEWAVIBAAcH11VAQVOABdCVQoUCwZWQxAJEgYNEhEaBhILRg")
end
end

if not mr then
return otpk.name .. _d("VQECTgYZRVUBH04cHlgGSAYBGhpVWw")
end

if not thia.standAt(mr) then
return _d("OwdRDQAXQxQLBQsaVkUaSBwBHhMf")
end

task.delay(thia.holdFor + 2, function()
pcall(thia.resume)
end)

return _d("JhweAQxWUxAbGAoNVg") .. otpk.name .. _d("Ww")
end

thia.islandSection = kkx:Section({ Side = _d("OQ0XGg") })
thia.islandSection:Header({ Name = _d("PBsdDwYSQlWY7uH1mYn6") })

thia.npcSection = kkx:Section({ Side = _d("JwEWBhw") })
thia.npcSection:Header({ Name = _d("OzgyHUiGrubl") })

for pyai, cz in ipairs(thia.islands) do
thia.islandSection:Button({
Name = cz.name,
Callback = function()
task.spawn(function()
local cg = thia.go(cz)

fqvu:Notify({
Title = _d("IQ0dCxgZQwE"),
Description = cg,
Lifetime = 6,
})
end)
end,
})
end

thia.state = ye
thia.tab = kkx
thia.islandSection:Button({
Name = _d("IAYdAQsdERQEHU4BBV0UBhUd"),
Callback = function()
task.spawn(function()
local ygk = thia.unlock()

fqvu:Notify({
Title = _d("PBsdDwYSQg"),
Description = ygk,
Lifetime = 10,
})
end)
end,
})

thia.flySection = kkx:Section({ Side = _d("OQ0XGg") })
thia.flySection:Header({ Name = _d("MwQITorquZrQ/g") })

thia.flySection:Toggle({
Name = _d("MwQITkAhcCYsXU47BlAWDVEbGFoRNhwDAkgSXgIGWA"),
Default = false,
Callback = function(vlbt)
local sia = thia.flyToggle(vlbt)

fqvu:Notify({
Title = _d("MwQI"),
Description = sia,
Lifetime = 4,
})
end,
}, _d("FAsTFjcQXQw"))

getgenv().ACBXTeleport = thia

getgenv().ACBXDeepWater = sgm

pcall(sgm.dropStale)

for eq, zhi in ipairs(thia.npcs) do
thia.npcSection:Button({
Name = zhi.name,
Callback = function()
task.spawn(function()
local kcfa = thia.go(zhi)

fqvu:Notify({
Title = _d("IQ0dCxgZQwE"),
Description = kcfa,
Lifetime = 6,
})
end)
end,
})
end

local od = kg:Section({ Side = _d("OQ0XGg") })

od:Header({ Name = _d("MQEWCQEYVlWK6uGHzr4") })

local ajwb = {
busy = false,
}

local bbqe = (tonumber(getgenv().ACBXDigGeneration) or 0) + 1
getgenv().ACBXDigGeneration = bbqe

function ajwb.read()
local xo, zq = pcall(function()
return aep.DigGetState:InvokeServer()
end)

return xo and type(zq) == _d("AQkTAg0") and zq or nil
end

function ajwb.call(xqvc, kiiu)
local mp, oz = pcall(function()
return aep.DigShop:InvokeServer(xqvc, kiiu)
end)

task.wait(2.5)

return mp and oz == true
end

function ajwb.wear()
local xw = hs.Character

if not xw then
return false
end

local mlb = xw:FindFirstChildOfClass(_d("PR0cDwYZWBE"))
local blz = hs:FindFirstChild(_d("NwkSBRgXUh4"))

if not (mlb and blz) then
return false
end

mlb:UnequipTools()
task.wait(0.4)

for es = 1, 8 do
for qllc, wga in ipairs(blz:GetChildren()) do
if wga:IsA(_d("IQceAg")) and wga.Name:find(_d("KywYCTseXgMNHQ")) then
mlb:EquipTool(wga)

return true
end
end

task.wait(0.5)
end

return false
end

function ajwb.run()
local hbf = ajwb.read()

if not hbf then
return _d("IQAUTgwfVlUbGQEYVlgGSB8BHFZQGxsGCxofXxJG")
end

local ycaa = {}

pcall(function()
local vzod = aep.FishingGetState:InvokeServer()

ycaa = vzod and vzod.areas or {}
end)

if not (ycaa.abandoned_island and ycaa.twin_beaches and ycaa.windmill_isle) then
thia.unlock()
task.wait(1)
end

local lro

for gnq, vdsn in ipairs(thia.npcs) do
if vdsn.name == _d("MQEWCQ0E") then
lro = vdsn
break
end
end

if not lro then
return _d("IQAUTjwEVBQbBBwNVnkABgULGlZYBkgfARxWWBtIBQYBBRECBwMCDFg")
end

thia.go(lro)
task.wait(2)

local rb = hs.Character
local ct = rb and rb:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))
local lmre = thia.point(lro)

if not (ct and lmre) or (ct.Position - lmre).Magnitude > 40 then
return _d("NgcEAgxWXxocURwNF1IdSAUGDVZlBw0QHR0EVFUgBAAcE0Nb")
end

hbf = ajwb.read() or hbf

local og = false
local cjtn = hbf.shovels and hbf.shovels.shovel_basic == true
local uqjd = hbf.detectors and hbf.detectors.detector_basic == true

if not (cjtn and uqjd) then
og = ajwb.call(_d("NgQQBwUlRRQaBQsa"), _d("BgAeGA0abhcJAgcL"))
hbf = ajwb.read() or hbf
end

if hbf.equippedShovel ~= _d("BgAeGA0abhcJAgcL") then
ajwb.call(_d("MBkEBxglWRoeFAI"), _d("BgAeGA0abhcJAgcL"))
end

if hbf.equippedDetector ~= _d("EQ0FCwsCXgc3Ew8bH1I") then
ajwb.call(_d("MBkEBxgyVAENEhoHBA"), _d("EQ0FCwsCXgc3Ew8bH1I"))
end

hbf = ajwb.read() or hbf

if hbf.equippedShovel == _d("BgAeGA0abhcJAgcL") and hbf.equippedDetector == _d("EQ0FCwsCXgc3Ew8bH1I") then
local ibyb = ajwb.wear()
local kin = false

if ibyb and ye.enabled then
ye.autoFishWanted = false
kin = true

ftd(false)

pcall(function()
fkh:UpdateState(false)
end)
end

return (og and _d("NgQQBwUTVVUJHwpIE0AAAQEeDRI") or _d("MBkEBxgGVBE"))
.. _d("VRwZC0g0UAYBEk47Hl4DDR1OCRhVVSoQHQEVETENBQsLAl4HRg")
.. (kin and _d("VSkEGgdWdxwbGU4HEFdVRVEaABMRBgAeGA0aER0JAk4cHlRVHB4BBFZCGQcFQA") or _d(""))
end

return _d("IQAUTioXQhwLUT0AGUcQBFEBGlZ1EBwUDRwZQ1UBAk4bAlgZBFEDAQVCHAYWQA")
end

function ajwb.unlock()
if ajwb.busy then
return _d("NAQDCwkSSFUfHhwDH18SRg")
end

ajwb.busy = true

local wtme, pxee = pcall(ajwb.run)

ajwb.busy = false

if not wtme then
return _d("MQEWCQEYVlUOEAcEE1VPSA") .. tostring(pxee)
end

return pxee
end

ajwb.icon = function()
local gved = gethui()

for xfx, uymw in ipairs(gved:QueryDescendants(_d("PAUQCQ06UBcNHQ"))) do
if uymw.Name == _d("IQkTJwUXVhA") then
local pq = uymw.Parent
local gwnc = pq and pq:FindFirstChild(_d("IQkTPR8fRRYAFBwmF1wQ"))

if gwnc and gwnc.Text == _d("MQEWCQEYVg") then
if uymw:GetAttribute(_d("NCszNiwfVjwLHgA")) then
return true
end

uymw:SetAttribute(_d("NCszNiwfVjwLHgA"), true)
uymw.Image = _d("")
uymw.BackgroundTransparency = 1

local lc = Color3.fromRGB(233, 236, 242)

for jwam, nch in ipairs(gved:QueryDescendants(_d("PAUQCQ06UBcNHQ"))) do
if nch.Name == _d("IQkTJwUXVhA") and nch ~= uymw and nch.Image ~= _d("") then
lc = nch.ImageColor3
break
end
end

local function uv(bh, wshi, ls, pus, xwsf, czyl)
local hh = Instance.new(_d("MxoQAw0"))

hh.Size = UDim2.fromOffset(ls, pus)
hh.Position = UDim2.fromOffset(bh, wshi)
hh.BackgroundColor3 = lc
hh.BorderSizePixel = 0
hh.Parent = uymw

if czyl then
hh.Rotation = czyl
end

if xwsf then
local nzp = Instance.new(_d("ICEyARoYVAc"))

nzp.CornerRadius = UDim.new(0, xwsf)
nzp.Parent = hh
end

return hh
end

uv(1.1, 10.2, 7, 6.4, 1.6, -45)
uv(3.1, 8.3, 11, 2.2, 0.8, -45)
uv(9.8, 4.4, 5.6, 2, 0.8, 45)

return true
end
end
end

return false
end

task.defer(function()
for xwwn = 1, 20 do
if ajwb.icon() then
break
end

task.wait(0.25)
end
end)

od:Button({
Name = _d("IAYdAQsdEREBFgkBGFY"),
Callback = function()
task.spawn(function()
fqvu:Notify({
Title = _d("MQEWCQEYVg"),
Description = _d("PQ0QCgEYVlUcHk4cHlRVPAMLCQVEBw1RJh0YRRAaXw"),
Lifetime = 5,
})

local wgta = ajwb.unlock()

fqvu:Notify({
Title = _d("MQEWCQEYVg"),
Description = wgta,
Lifetime = 10,
})
end)
end,
})

ajwb.data = require(gb.ModuleScripts.DigData)

function ajwb.zoneAt(nxys)
for plh, aqq in ipairs(game:GetService(_d("NgcdAg0VRRwHHz0NBEccCxQ")):GetTagged(ajwb.data.ZoneTag)) do
if aqq:IsA(_d("NwkCCzgXQwE")) and aqq:IsDescendantOf(workspace) then
local hc = aqq.CFrame:PointToObjectSpace(nxys)
local zx = aqq.Size * 0.5

if math.abs(hc.X) <= zx.X and math.abs(hc.Y) <= zx.Y and math.abs(hc.Z) <= zx.Z then
return true
end
end
end

return false
end

function ajwb.onIsland()
for iyc, izjp in ipairs(game:GetService(_d("NgcdAg0VRRwHHz0NBEccCxQ")):GetTagged(ajwb.data.ZoneTag)) do
if izjp:IsA(_d("NwkCCzgXQwE")) and izjp:IsDescendantOf(workspace) then
return true
end
end

return false
end

function ajwb.bestShovel(rnwb)
local iakm = rnwb and rnwb.shovels or {}
local swx = nil

for dcm, uo in ipairs(ajwb.data.Shovels) do
if iakm[uo.id] == true then
swx = uo.id
end
end

return swx
end

function ajwb.equipBest()
local yntx = ajwb.read()
local ml = ajwb.bestShovel(yntx)

if not ml then
return nil
end

if yntx.equippedShovel ~= ml then
ajwb.call(_d("MBkEBxglWRoeFAI"), ml)
end

ajwb.wear()

return ml
end

function ajwb.bestDetector(uyua)
local hpof = uyua and uyua.detectors or {}
local osfm = nil

for wbg, hxix in ipairs(ajwb.data.Detectors) do
if hpof[hxix.id] == true then
osfm = hxix.id
end
end

return osfm
end

function ajwb.equipBestDetector()
local lrr = ajwb.read()
local fdbd = ajwb.bestDetector(lrr)

if not fdbd then
return nil
end

if lrr.equippedDetector ~= fdbd then
ajwb.call(_d("MBkEBxgyVAENEhoHBA"), fdbd)
end

return fdbd
end

function ajwb.leaveNpc()
local jjaq = hs.Character
local yrn = jjaq and jjaq:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))
local ssnd = jjaq and jjaq:FindFirstChildOfClass(_d("PR0cDwYZWBE"))

if not (yrn and ssnd) then
return false
end

local bbzq

for swry, hli in ipairs(thia.npcs) do
if hli.name == _d("MQEWCQ0E") then
bbzq = hli
break
end
end

local szz = bbzq and thia.point(bbzq)

if not szz then
return false
end

local qedo = Vector3.new(yrn.Position.X - szz.X, 0, yrn.Position.Z - szz.Z)

if qedo.Magnitude >= 16 then
return true
end

if qedo.Magnitude < 1 then
qedo = Vector3.new(0, 0, -1)
end

qedo = qedo.Unit

local fyzb = Vector3.new(szz.X + qedo.X * 22, yrn.Position.Y, szz.Z + qedo.Z * 22)
local aqs = os.clock() + 6

ssnd:MoveTo(fyzb)

while os.clock() < aqs do
local cgj = hs.Character
local qyc = cgj and cgj:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if not qyc or (qyc.Position - fyzb).Magnitude < 4 then
break
end

task.wait(0.15)
end

pcall(function()
ssnd:MoveTo(yrn.Position)
end)

return true
end

function ajwb.goToSand(si)

if si or not ajwb.onIsland() then
if not si then

pcall(function()
aep.TeleportToWorld:FireServer(_d("GQcTDBE"))
end)

local kxd = os.clock() + 15

while not ajwb.onIsland() and os.clock() < kxd do
task.wait(0.5)
end
end

local zo

for pwdm, iyh in ipairs(thia.npcs) do
if iyh.name == _d("MQEWCQ0E") then
zo = iyh
break
end
end

if zo then
thia.go(zo)
task.wait(2)
end
end

if ajwb.onIsland() then
ajwb.leaveNpc()
end
end

function ajwb.spot()
local vcl = hs.Character
local bbcf = vcl and vcl:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if not bbcf then
return nil
end

local zz = bbcf.CFrame.LookVector
local fdlm = Vector3.new(zz.X, 0, zz.Z)

if fdlm.Magnitude < 0.01 then
fdlm = Vector3.new(0, 0, -1)
end

fdlm = fdlm.Unit

local vqb = RaycastParams.new()
vqb.FilterType = Enum.RaycastFilterType.Exclude
vqb.FilterDescendantsInstances = { vcl }

local function pmzx(mjr, rxq)
local sdsb = bbcf.Position + mjr * rxq + Vector3.new(0, 4, 0)
local wjus = workspace:Raycast(sdsb, Vector3.new(0, -18, 0), vqb)

if wjus and ajwb.zoneAt(wjus.Position) then
return wjus.Position
end
end

for bwb, zyl in ipairs({ 4, 7, 10, 2 }) do
local sps = pmzx(fdlm, zyl)

if sps then
return sps
end
end

local qav = Vector3.new(-fdlm.Z, 0, fdlm.X)

for pqhv, bde in ipairs({ 4, 8 }) do
for tygw, eifh in ipairs({ 1, -1 }) do
for bgu, gjxf in ipairs({ 1, 0.5 }) do
local jij = pmzx((qav * (eifh * gjxf) + fdlm * (1 - gjxf)).Unit, bde)

if jij then
return jij
end
end
end
end

return nil
end

function ajwb.turn()
local rx = hs.Character
local fiu = rx and rx:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if not fiu then
return
end

local uug = fiu.CFrame.LookVector
local pfvk = Vector3.new(uug.X, 0, uug.Z)

if pfvk.Magnitude < 0.01 then
pfvk = Vector3.new(0, 0, -1)
end

pfvk = pfvk.Unit

local etd = Vector3.new(-pfvk.Z, 0, pfvk.X)

fiu.CFrame = CFrame.lookAt(fiu.Position, fiu.Position + etd)
end

ajwb.misses = 0

ajwb.pending = false

pcall(function()
aep.DigUpdate.OnClientEvent:Connect(function(vup)
if vup == _d("MQEWPA0FRBkc") or vup == _d("MQEWLQkYUhAE") then
ajwb.pending = false
end
end)
end)

function ajwb.autoLoop()
local sip = false

while ajwb.autoOn and gaqj() and getgenv().ACBXDigGeneration == bbqe do
local hhhi = soi and soi.worldBoss
local qok = hhhi ~= nil
and type(hhhi.holdsDigging) == _d("Ex0fDRwfXhs")
and hhhi.holdsDigging() == true

if qok then

sip = true
task.wait(1)
else
if sip then

sip = false

if type(hhhi.setRepeat) == _d("Ex0fDRwfXhs") then
hhhi.setRepeat(false)
end

ajwb.goToSand()
end

local klp = ajwb.spot()

if klp then
ajwb.misses = 0
ajwb.pending = true

local eow = pcall(function()
aep.DigAction:FireServer(_d("JhwQHBw"), klp)
end)

if not eow then
ajwb.pending = false
end

local dxga = os.clock() + 6

while ajwb.pending and ajwb.autoOn and os.clock() < dxga
and getgenv().ACBXDigGeneration == bbqe and gaqj() do
task.wait()
end

ajwb.pending = false
else

ajwb.misses = (ajwb.misses or 0) + 1

if ajwb.misses >= 4 then
ajwb.misses = 0
ajwb.goToSand(true)
else
ajwb.turn()
task.wait(0.25)
end
end
end
end
end

function ajwb.autoStart()
local fijr = ajwb.read()

if not (fijr and ajwb.bestShovel(fijr)) then
return _d("OwdRHQAZRxAEUQEfGFQRSFxOPRhdGgsaTgwfVhIBHwlIEFgHGwVA")
end

local pefp = false

if ye.enabled then
ye.autoFishWanted = false

ftd(false)
pcall(function()
fkh:UpdateState(false)
end)

pefp = true
end

fnn = true
ajwb.equipBest()

ajwb.goToSand()

task.spawn(ajwb.autoLoop)

return _d("MQEWCQEYVls") .. (pefp and _d("VSkEGgdWdxwbGU4HEFdVRVEaABMRBgAeGA0aER0JAk4cHlRVHB4BBFZCGQcFQA") or _d(""))
end

od:Toggle({
Name = _d("NB0FAUgyWBI"),
Default = false,
Callback = function(emdd)
ajwb.autoOn = emdd

if not emdd then
ajwb.pending = false
fnn = false
return
end

task.spawn(function()
local kyzx = ajwb.autoStart()

fqvu:Notify({
Title = _d("NB0FAUgyWBI"),
Description = kyzx,
Lifetime = 6,
})
end)
end,
}, _d("EQEWCQEYVioJBBoH"))

function ajwb.npcRow()
for iyq, sdc in ipairs(thia.npcs) do
if sdc.name == _d("MQEWCQ0E") then
return sdc
end
end
end

function ajwb.shop(ejw, xkzx)
local gddq, ljf, lgn, yj = pcall(function()
return aep.DigShop:InvokeServer(ejw, xkzx)
end)

if not gddq then
return false, _d("IQAUTgwfVlUbGQEYVlgGSB8BHFZQGxsGCxofXxJG")
end

return ljf == true, lgn, type(yj) == _d("AQkTAg0") and yj or nil
end

function ajwb.upgrade()
local niyg = ajwb.read()

if not niyg then
return nil, _d("IQAUTgwfVlUbGQEYVlgGSB8BHFZQGxsGCxofXxJG")
end

local buaf = ajwb.bestShovel(niyg)

if buaf and niyg.equippedShovel ~= buaf then
ajwb.equipBest()
niyg = ajwb.read() or niyg
end

local aido = niyg.shovels or {}
local qlm = tonumber(niyg.digs) or 0
local gowd

for sz, ono in ipairs(ajwb.data.Shovels) do
if not ono.crafted and ono.id ~= _d("BgAeGA0abhcJAgcL") and aido[ono.id] ~= true then
local rzev = tonumber(ono.cost) or math.huge

if rzev <= qlm and (not gowd or rzev > (tonumber(gowd.cost) or 0)) then
gowd = ono
end
end
end

if not gowd then
return nil, _d("OwdRGxgRQxQMFE4BBREUDhcBGhJQFwQUThETRVs")
end

local fcz = ajwb.npcRow()
local tls = fcz and thia.point(fcz)
local gyo = hs.Character
local jzm = gyo and gyo:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if tls and jzm and (jzm.Position - tls).Magnitude > 20 then
thia.go(fcz)
task.wait(2.2)

gyo = hs.Character
jzm = gyo and gyo:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))
end

local sjad, jxn = ajwb.shop(_d("Nx0IPQAZRxAE"), gowd.id)

if not sjad then
return nil, _d("Nx0IThoTVwAbFApSVg") .. tostring(jxn)
end

ajwb.equipBest()

if ajwb.autoOn then
ajwb.leaveNpc()
end

return gowd.name
end

function ajwb.buyLoop()
while ajwb.buyOn do
local pmzf = ajwb.upgrade()

if pmzf then
fqvu:Notify({
Title = _d("NB0FAUg0RAxIIgYHAFQZ"),
Description = _d("NwcECQACERQGFU4NB0QcGAELDFZFHQ1R") .. pmzf .. _d("Ww"),
Lifetime = 6,
})

task.wait(3)
else
task.wait(10)
end
end
end

od:Toggle({
Name = _d("NB0FAUg0RAxIMwsbAhEmAB4YDRo"),
Default = false,
Callback = function(afkd)
ajwb.buyOn = afkd

if not afkd or ajwb.buyRunning then
return
end

ajwb.buyRunning = true

task.spawn(function()
ajwb.buyLoop()

ajwb.buyRunning = false
end)
end,
}, _d("EQEWCQEYVioKBBc"))

function ajwb.detectorUpgrade()
local fhv = ajwb.read()

if not fhv then
return nil, _d("IQAUTgwfVlUbGQEYVlgGSB8BHFZQGxsGCxofXxJG")
end

if ajwb.bestDetector(fhv) and fhv.equippedDetector ~= ajwb.bestDetector(fhv) then
ajwb.equipBestDetector()
fhv = ajwb.read() or fhv
end

local dx = fhv.detectors or {}
local nqd = tonumber(fhv.digs) or 0
local hqb

for kxen, ryz in ipairs(ajwb.data.Detectors) do
if not ryz.crafted and ryz.id ~= _d("EQ0FCwsCXgc3Ew8bH1I") and dx[ryz.id] ~= true then
local utvg = tonumber(ryz.cost) or math.huge

if utvg <= nqd and (not hqb or utvg > (tonumber(hqb.cost) or 0)) then
hqb = ryz
end
end
end

if not hqb then
return nil, _d("OwdRCg0CVBYcHhxIA0ESGhAKDVZYBkgQCA4ZQxEJEwINVkgQHF8")
end

local lofc = ajwb.npcRow()
local wi = lofc and thia.point(lofc)
local en = hs.Character
local ivjs = en and en:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if wi and ivjs and (ivjs.Position - wi).Magnitude > 20 then
thia.go(lofc)
task.wait(2.2)
end

local xxxa, dbr = ajwb.shop(_d("Nx0IKg0CVBYcHhw"), hqb.id)

if not xxxa then
return nil, _d("Nx0IThoTVwAbFApSVg") .. tostring(dbr)
end

ajwb.equipBestDetector()

if ajwb.autoOn then
ajwb.leaveNpc()
end

return hqb.name
end

function ajwb.detectorLoop()
while ajwb.detBuyOn do
local wj = ajwb.detectorUpgrade()

if wj then
fqvu:Notify({
Title = _d("NB0FAUg0RAxINQscE1IBBwM"),
Description = _d("NwcECQACERQGFU4NB0QcGAELDFZFHQ1R") .. wj .. _d("Ww"),
Lifetime = 6,
})

task.wait(3)
else
task.wait(10)
end
end
end

od:Toggle({
Name = _d("NB0FAUg0RAxIMwsbAhExDQULCwJeBw"),
Default = false,
Callback = function(xhx)
ajwb.detBuyOn = xhx

if not xhx or ajwb.detBuyRunning then
return
end

ajwb.detBuyRunning = true

task.spawn(function()
ajwb.detectorLoop()

ajwb.detBuyRunning = false
end)
end,
}, _d("EQEWCQEYVioKBBc3ElQBDRIaBwQ"))

getgenv().ACBXDigging = ajwb

ffuc.tab = hfty:Tab({
Name = _d("Jg0FGgEYVgY"),

Image = _d(""),
})

ffuc.icon = function()
local za = gethui()

for twwh, cwpd in ipairs(za:QueryDescendants(_d("PAUQCQ06UBcNHQ"))) do
if cwpd.Name == _d("IQkTJwUXVhA") then
local yvnr = cwpd.Parent
local vl = yvnr and yvnr:FindFirstChild(_d("IQkTPR8fRRYAFBwmF1wQ"))

if vl and vl.Text == _d("Jg0FGgEYVgY") then
if cwpd:GetAttribute(_d("NCszNisZVjwLHgA")) then
return true
end

cwpd:SetAttribute(_d("NCszNisZVjwLHgA"), true)
cwpd.Image = _d("")
cwpd.BackgroundTransparency = 1

local vqq = Color3.fromRGB(168, 170, 176)

local function lpc(hlj, zimr, qftt, yxym, pn, yihe)
local iic = Instance.new(_d("MxoQAw0"))

iic.Size = UDim2.fromOffset(qftt, yxym)
iic.Position = UDim2.fromOffset(hlj, zimr)
iic.BackgroundColor3 = vqq
iic.BorderSizePixel = 0
iic.Parent = cwpd

if not yihe then
iic.BackgroundTransparency = 1

local yho = Instance.new(_d("ICEiGhoZWhA"))

yho.Color = vqq
yho.Thickness = 1.3
yho.LineJoinMode = Enum.LineJoinMode.Round
yho.Parent = iic
end

if pn then
local teuh = Instance.new(_d("ICEyARoYVAc"))

teuh.CornerRadius = UDim.new(0, pn)
teuh.Parent = iic
end

return iic
end

local dkr = {
{ 8, 0, 2, 3 },
{ 8, 15, 2, 3 },
{ 0, 8, 3, 2 },
{ 15, 8, 3, 2 },
{ 2, 2, 3, 3 },
{ 13, 2, 3, 3 },
{ 2, 13, 3, 3 },
{ 13, 13, 3, 3 },
}

for kd, my in ipairs(dkr) do
lpc(my[1], my[2], my[3], my[4], 0, true)
end

lpc(2, 2, 14, 14, 7, false)
lpc(7, 7, 4, 4, 2, true)

return true
end
end
end

return false
end

task.defer(function()
for kgsy = 1, 20 do
if ffuc.icon() then
break
end

task.wait(0.25)
end
end)

ffuc.configSection = ffuc.tab:Section({
Side = _d("OQ0XGg"),
})

ffuc.configSection:Header({
Name = _d("NgcfCAERETgJHw8PE1wQBgU"),
})

ffuc.autoSaveToggle = ffuc.configSection:Toggle({
Name = _d("NB0FAUgFUAMN"),
Default = false,
Callback = function(drpf)
ffuc.autoSave = drpf
ffuc.autoSaveAt = 0

if drpf then
local fc = ffuc.selected or _d("EQ0XDx0aRQ")
local wgk, jwj = ffuc.save(fc)

ffuc.selected = fc
ffuc.lastText = wgk and (_d("NB0FAUgFUAMNUQEGVhxVHwMBHBMR") .. fc)
or (_d("NB0FAUgFUAMNUQEGWhETAQMdHFZGBwEFC0gQUBwEFApSVg") .. tostring(jwj))
else
ffuc.lastText = _d("NB0FAUgFUAMNUQEOEB8")
end
end,
}, _d("FgcfCAERbhQdBQE3BVADDQ"))

ffuc.nameInput = ffuc.configSection:Input({
Name = _d("JgkHC0gYUBgN"),
Placeholder = _d("EEYWQEgkUBwMAg"),
AcceptedCharacters = _d("NAQd"),
Callback = function(ybu)
ffuc.nameDraft = ybu
end,
})

ffuc.nameInput.IgnoreConfig = true

ffuc.configSection:Button({
Name = _d("NhoUDxwTEQYJBws"),
Callback = function()
local iu = ffuc.nameDraft or ffuc.nameInput:GetInput()

iu = type(iu) == _d("BhwDBwYR") and iu:gsub(_d("K00CRQ"), _d("")):gsub(_d("UBtaSg"), _d("")) or _d("")

if iu == _d("") then
fqvu:Dialog({
Title = _d("NgcfCAER"),
Description = _d("IREBC0gXERsJHAtIEF4HSAUGDVZCFB4UTg4fQwYcUUNIH0VVChQNBxtUBkgFBg1WVxwEFEkbVl8UBRRA"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})

return
end

local utj, jhc = ffuc.save(iu)

if not utj then
ffuc.lastText = _d("JgkHC0gQUBwEFApSVg") .. tostring(jhc)

return
end

ffuc.selected = iu
ffuc.lastText = _d("NhoUDxwTVVU") .. iu .. _d("Ww")
ffuc.savesAt = 0

task.defer(function()
task.wait(0.25)

pcall(function()
ffuc.fileDropdown:UpdateSelection(iu)
end)
end)
end,
})

ffuc.fileDropdown = ffuc.configSection:Dropdown({
Name = _d("JgkHC0gQWBkN"),
Search = false,
Multi = false,
Required = false,
Options = ffuc.saves(),
Callback = function(et)
local han = type(et) == _d("AQkTAg0") and et[1] or et

if type(han) == _d("BhwDBwYR") and han ~= _d("") then
ffuc.selected = han
ffuc.selectionShown = han

pcall(function()
ffuc.fileDropdown:UpdateName(_d("JgkHC0gQWBkNS04") .. han)
end)
end
end,
})

ffuc.fileDropdown.IgnoreConfig = true

ffuc.configSection:Button({
Name = _d("OQcQCkgFVBkNEhoNEg"),
Callback = function()
local yx = ffuc.selected or ffuc.fileDropdown.Value
local wyga, tcoi = ffuc.load(yx)

ffuc.lastText = wyga and (_d("OQcQCg0SEQ") .. yx .. _d("Ww")) or (_d("OQcQCkgQUBwEFApSVg") .. tostring(tcoi))
end,
})

ffuc.configSection:Button({
Name = _d("JgkHC0gCXlUbFAINFUUQDA"),
Callback = function()
local nhu = ffuc.selected or ffuc.fileDropdown.Value
local jpj, fzid = ffuc.save(nhu)

ffuc.lastText = jpj and (_d("IhoeGg1W") .. nhu .. _d("Ww")) or (_d("JgkHC0gQUBwEFApSVg") .. tostring(fzid))
end,
})

ffuc.configSection:Button({
Name = _d("MQ0dCxwTEQYNHQsLAlQRSAIPHhM"),
Callback = function()
local ycc = ffuc.selected or ffuc.fileDropdown.Value

if type(ycc) ~= _d("BhwDBwYR") or ycc == _d("") then
ffuc.lastText = _d("JQESBUgXEQYJBwtIEFgZDVEIAQRCAUY")

return
end

fqvu:Dialog({
Title = _d("MQ0dCxwTEQ") .. ycc .. _d("Sg"),
Description = _d("IQAUTg4fXRBIGB1IBFQYBwcLDFZXBwccTgwfQh5IEAAMVlIUBh8BHFZTEEgDCwsZRxAaFApG"),
Buttons = {
{
Name = _d("MQ0dCxwT"),
Callback = function()
local pviv, hbws = ffuc.delete(ycc)

ffuc.lastText = pviv
and (_d("MQ0dCxwTVVU") .. ycc .. _d("Ww"))
or (_d("NgcEAgxWXxocUQoNGlQBDUtO") .. tostring(hbws))
end,
},
{
Name = _d("NgkfDQ0a"),
},
},
})
end,
})

ffuc.configSection:Button({
Name = _d("Jw0XHA0FWVUEGB0c"),
Callback = function()
ffuc.savesAt = 0
ffuc.lastText = _d("JgkHC0gaWAYcURwNEEMQGxkLDFg")
end,
})

ffuc.configSection:Button({
Name = _d("OAkDBUgXQlUJBBoHVl0aCRU"),
Callback = function()
local pbez = ffuc.selected or ffuc.fileDropdown.Value

if type(pbez) ~= _d("BhwDBwYR") or pbez == _d("") then
ffuc.lastText = _d("JQESBUgXEQYJBwtIEFgZDVEIAQRCAUY")

return
end

if ffuc.setAutoLoad(pbez) then
ffuc.lastText = pbez .. _d("VQQeDwwFERoGUR0cF0MBRg")
else
ffuc.lastText = _d("NgcEAgxWXxocURkaH0UQSAUGDVZQABweTgQZUBFIHA8aHVQHRg")
end
end,
})

ffuc.configSection:Button({
Name = _d("NgQUDxpWUAAcHk4EGVAR"),
Callback = function()
ffuc.setAutoLoad(_d(""))
ffuc.lastText = _d("OwcFBgEYVlUEHg8MBREaBlEdHBdDAUY")
end,
})

ffuc.statusParagraph = ffuc.configSection:Paragraph({
Header = _d("JhwQGh0F"),
Body = _d(""),
})

ffuc.miscSection = ffuc.tab:Section({
Side = _d("JwEWBhw"),
})

ffuc.miscSection:Header({
Name = _d("OAECDQ"),
})

ffuc.miscSection:Toggle({
Name = _d("NB0FAUgVXRobFE4PE18QGhAaARlfVT04"),
Default = false,
Callback = function(husy)
jgdk(husy)
end,
}, _d("GAECDTcXRAEHLg0EGUIQNxYLBhNDFBwYAQY"))

ffuc.miscSection:Toggle({
Name = _d("NB0FAUgkXhkE"),
Default = true,
Callback = function(voda)
ffuc.autoRoll = voda

if voda and ffuc.setRollButton then
ffuc.setRollButton(_d("NB0FAToZXRkqBBocGV8"), true)
end
end,
}, _d("GAECDTcXRAEHLhwHGl0"))

ffuc.miscSection:Toggle({
Name = _d("NB0FAUgnRBwLGk46GV0Z"),
Default = true,
Callback = function(hckj)
ffuc.autoQuickRoll = hckj

if hckj and ffuc.setRollButton then
ffuc.setRollButton(_d("JB0YDQMkXhkEMxscAl4b"), true)
end
end,
}, _d("GAECDTcXRAEHLh8dH1IeNwMBBBo"))

ffuc.uiSection = ffuc.tab:Section({
Side = _d("JwEWBhw"),
})

ffuc.uiSection:Header({
Name = _d("ICE"),
})

ffuc.uiSection:Toggle({
Name = _d("NwkSBQ8EXgAGFU4KGkQH"),
Default = true,
Callback = function(fnx)
pcall(function()
fqvu:SetAcrylicBlurState(fnx)
end)
end,
}, _d("AAEuDAkVWhIaHhsGEm4XBAQc"))

function ffuc.widthFactor(niz)
return 1 + math.max(0, (niz or 1) - 1) * 0.8
end

function ffuc.scaleCap()
local eqj = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local qg = math.min(120, math.floor(((eqj.Y - 40 - 8 - 8) / 500) * 100))

while qg > 50 and (ffuc.baseWidth or 720) * (qg / 100) * ffuc.widthFactor(qg / 100) > eqj.X - 16 do
qg = qg - 1
end

return math.max(50, qg)
end

function ffuc.scaleCeiling()
return math.min(1.2, ffuc.scaleCap() / 100)
end

function ffuc.refreshScaleCap()
local qphv = ffuc.scaleSlider

if not qphv then
return
end

local ypzj = ffuc.scaleCeiling()

pcall(function()
qphv.Settings.Maximum = ypzj
end)

local dqza = tonumber(qphv:GetValue()) or 1

if dqza > ypzj then
ffuc.scaleTarget = ypzj

pcall(function()
qphv:UpdateValue(ypzj)
end)
end
end

ffuc.scaleSlider = ffuc.uiSection:Slider({
Name = _d("ICFRHQsXXRA"),
Default = 1,
Minimum = 0.5,

Maximum = ffuc.scaleCeiling(),
DisplayMethod = _d("IwkdGw0"),
Precision = 2,

Callback = function(foy)
ffuc.scalePending = tonumber(foy)
ffuc.scalePendingAt = os.clock()
end,
onInputComplete = function(gcr)
local gzd = ffuc.scaleCeiling()

ffuc.scaleTarget = math.clamp(tonumber(gcr) or ffuc.scalePending or 1, 0.5, gzd)
ffuc.scalePending = nil

ffuc.scaleAnchor = nil

ffuc.saveUi()
end,
}, _d("AAEuHQsXXRA"))

ffuc.refreshScaleCap()

ffuc.themeDropdown = ffuc.uiSection:Dropdown({
Name = _d("IQAUAw1MESMHGAo"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = ffuc.themeOrder,
Callback = function(oscs)
local nns = type(oscs) == _d("AQkTAg0") and oscs[1] or oscs

if type(nns) == _d("BhwDBwYR") and ffuc.presets[nns] then
ffuc.theme = nns
ffuc.accent = nil
ffuc.applyTheme()

pcall(function()
ffuc.themeDropdown:UpdateName(_d("IQAUAw1MEQ") .. nns)
end)

ffuc.saveUi()
end
end,
}, _d("AAEuGgATXBA"))

ffuc.accentPicker = ffuc.uiSection:Colorpicker({
Name = _d("NAsSCwYCERYHHQEdBA"),
Default = Color3.fromRGB(168, 170, 176),
Alpha = 0,
Callback = function(gsfj)
ffuc.accent = gsfj
ffuc.applyTheme()
ffuc.saveUi()
end,
}, _d("AAEuDwsVVBsc"))

ffuc.codesSection = ffuc.tab:Section({
Side = _d("JwEWBhw"),
})

ffuc.codesSection:Header({
Name = _d("NgcVCxs"),
})

ffuc.codeText = _d("Jw0VCw0bQlUNBwsaDxEWBxULSAJZHBtRCQkbVFUbGQcYBRECAQUGRFZeGw1RCx4TQwxIEgEdBl0QSB4ISAVUFgcfChtY")

function ffuc.setCodeText(jafr)
ffuc.codeText = jafr

pcall(function()
ffuc.codeParagraph:UpdateBody(jafr)
end)
end

function ffuc.redeemCodes()
if ffuc.redeeming then
return
end

local xqyw = aep.RedeemCode
local gimx = gb:FindFirstChild(_d("OAcVGwQTYhYaGB4cBQ"))
local ohn = gimx and gimx:FindFirstChild(_d("NgcVCywXRRQ"))
local cjej, cov = false, nil

if xqyw and ohn then
cjej, cov = pcall(function()
return require(ohn)
end)
end

local xk = cjej and type(cov) == _d("AQkTAg0") and cov.Codes or nil

if not xqyw or type(xk) ~= _d("AQkTAg0") then
ffuc.setCodeText(_d("IQAYHUgAVAcbGAEGVl4TSAUGDVZWFAUUTgAXQlUGHk4LGVUQSB0HGwIRGhpRAAdWQxAMFAsFVkMQBR4aDVg"))
return
end

local cdbc = {}

for mca in pairs(xk) do
cdbc[#cdbc + 1] = mca
end

table.sort(cdbc)

local vjk = #cdbc

ffuc.redeeming = true
ffuc.setCodeText(_d("Jw0VCw0bWBsPUQ") .. vjk .. _d("VQseCg0FH1tG"))

task.spawn(function()
local epu, vku, gvll = 0, 0, 0
local btn = {}

for ykh = 1, vjk do
if not gaqj() then
break
end

local ocf = cdbc[ykh]
local tuqo, cb = pcall(function()
return xqyw:InvokeServer(ocf)
end)

local fzh = tuqo and type(cb) == _d("AQkTAg0") and cb.success == true
local cpa = tuqo and type(cb) == _d("AQkTAg0") and tostring(cb.message or _d("")) or tostring(cb or _d(""))

if not fzh and string.find(string.lower(cpa), _d("AgkYGg"), 1, true) then
task.wait(3.5)

tuqo, cb = pcall(function()
return xqyw:InvokeServer(ocf)
end)

fzh = tuqo and type(cb) == _d("AQkTAg0") and cb.success == true
cpa = tuqo and type(cb) == _d("AQkTAg0") and tostring(cb.message or _d("")) or tostring(cb or _d(""))
end

if fzh then
epu = epu + 1
elseif string.find(string.lower(cpa), _d("FAQDCwkSSA"), 1, true) then
vku = vku + 1
else
gvll = gvll + 1

if #btn < 6 then
btn[#btn + 1] = ocf .. _d("T0g") .. (cpa ~= _d("") and cpa or _d("GwdRDwYFRhAa"))
end
end

ffuc.setCodeText(string.format(_d("UAxRAQ5WFBFIXE5NEhEHDRULDRtUEURRSwxWUBkaFA8MDx1VTRVOGhNXABsUCkY"), ykh, vjk, epu, vku, gvll))

if ykh < vjk and gaqj() then
task.wait(1.8)
end
end

local vbpn = {
string.format(_d("Jw0VCw0bVBFIVApEVlAZGhQPDA8RHQkVTk0SHVUaFAgdBVQRSFQKSBlXVU0VQA"), epu, vku, gvll, vjk),
}

for qrb, ieu in ipairs(btn) do
vbpn[#vbpn + 1] = ieu
end

ffuc.redeeming = false
ffuc.setCodeText(table.concat(vbpn, _d("fw")))
end)
end

ffuc.codesSection:Button({
Name = _d("Jw0VCw0bERQEHU4LGVUQGw"),
Callback = function()
ffuc.redeemCodes()
end,
})

ffuc.codeParagraph = ffuc.codesSection:Paragraph({
Header = _d("NgcVCxs"),
Body = ffuc.codeText,
})

ffuc.scriptSection = ffuc.tab:Section({
Side = _d("JwEWBhw"),
})

ffuc.scriptSection:Header({
Name = _d("JgsDBxgC"),
})

ffuc.scriptSection:Button({
Name = _d("IAYdAQkSEQYLAwcYAg"),
Callback = function()
pcall(function()
fqvu:Unload()
end)

getgenv().ACBXWindow = nil
getgenv().ACBXAllowReload = nil
end,
})

task.spawn(function()
while gaqj() do

if os.clock() >= ffuc.savesAt then
ffuc.savesAt = os.clock() + 3

local abw = ffuc.saves()
local rlc = table.concat(abw, _d("CQ"))

if rlc ~= ffuc.knownSaves then
ffuc.knownSaves = rlc

pcall(function()
ffuc.fileDropdown:ClearOptions()
ffuc.fileDropdown:InsertOptions(abw)
end)
end

if ffuc.selected and ffuc.selectionShown ~= ffuc.selected then
ffuc.selectionShown = ffuc.selected

pcall(function()
ffuc.fileDropdown:UpdateSelection(ffuc.selected)
end)
end
end

if ffuc.autoSave and os.clock() >= ffuc.autoSaveAt then
ffuc.autoSaveAt = os.clock() + 60

local gbg = ffuc.selected or _d("EQ0XDx0aRQ")
local soo, yspg = ffuc.save(gbg)

ffuc.selected = gbg
ffuc.lastText = soo and (_d("NB0FAUgFUAMNFU4") .. gbg .. _d("VQkFTg") .. os.date(_d("UCBLSyU")) .. _d("Ww"))
or (_d("NB0FAUgFUAMNUQgJH10QDEtO") .. tostring(yspg))
end

if os.clock() >= ffuc.themeAt then
ffuc.themeAt = os.clock() + 3
ffuc.applyTheme()
end

if os.clock() >= ffuc.capAt then
ffuc.capAt = os.clock() + 2
ffuc.refreshScaleCap()
end

if os.clock() >= ffuc.statusAt then
ffuc.statusAt = os.clock() + 2

local hi = ffuc.autoLoadName()
local xr = table.concat({
_d("NB0FAUgaXhQMS04") .. (hi or _d("GwcfCw")),
_d("JgkHCxtMEQ") .. tostring(#ffuc.saves()),
ffuc.lastText,
}, _d("fw"))

if xr ~= ffuc.shownStatus then
ffuc.shownStatus = xr

pcall(function()
ffuc.statusParagraph:UpdateBody(xr)
end)
end
end

task.wait(0.25)
end
end)

task.spawn(function()
while gaqj() do

local ptqa = ffuc.scalePending

if ptqa and os.clock() - (ffuc.scalePendingAt or 0) > 0.35 then
local bsk = ffuc.scaleCeiling()
local dz = math.clamp(ptqa, 0.5, bsk)

ffuc.scalePending = nil

if math.abs(dz - ffuc.scaleTarget) > 0.002 then
ffuc.scaleTarget = dz
ffuc.scaleAnchor = nil

ffuc.saveUi()
end
end

if math.abs(ffuc.scaleTarget - ffuc.scale) > 0.002 then
local yyg = ffuc.guiRoot()

if yyg and not ffuc.baseWidth then
ffuc.baseWidth = yyg.Size.X.Offset
ffuc.baseHeight = yyg.Size.Y.Offset
end

local efy = ffuc.baseWidth or 720
local zqk = ffuc.baseHeight or 500
local xkx = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local sdb, djl = 8, 40

if not ffuc.scaleAnchor and yyg then

local ce = ffuc.widthFactor(ffuc.scaleTarget)
local adv, pe = efy * ce * ffuc.scaleTarget, zqk * ffuc.scaleTarget
local paai = yyg.AbsolutePosition

ffuc.scaleAnchor = Vector2.new(
math.clamp(paai.X, sdb, math.max(sdb, xkx.X - adv - sdb)),
math.clamp(paai.Y, djl, math.max(djl, xkx.Y - pe - sdb))
)
end

local vaql = ffuc.scaleAnchor

ffuc.scale = ffuc.scale + (ffuc.scaleTarget - ffuc.scale) * 0.18

local kqu = ffuc.widthFactor(ffuc.scale)

pcall(function()
fqvu:SetScale(ffuc.scale)

if yyg then
local whxx = math.floor(efy * kqu)

yyg.Size = UDim2.fromOffset(whxx, math.floor(zqk))

local pflf = yyg:FindFirstChild(_d("NgcfGg0YRQ"))

if pflf then
local vg = yyg:FindFirstChild(_d("JgEVCwoXQw"))
local toam = math.floor(vg and vg.Size.X.Scale * whxx or whxx * 0.325)

pflf.Size = UDim2.new(0, math.max(0, whxx - toam), 1, 0)
end
end
end)

if yyg and vaql then
local wksx, dmjy = efy * kqu * ffuc.scale, zqk * ffuc.scale
local nb = math.clamp(vaql.X, sdb, math.max(sdb, xkx.X - wksx - sdb))
local nepz = math.clamp(vaql.Y, djl, math.max(djl, xkx.Y - dmjy - sdb))

local kff = yyg.Parent and yyg.Parent.AbsolutePosition or Vector2.zero

pcall(function()
yyg.Position = UDim2.fromOffset(math.floor(nb - kff.X), math.floor(nepz - kff.Y))
end)
end
else

ffuc.scaleAnchor = nil
end

task.wait()
end
end)

soi.misc.tierLabels = {}
soi.misc.labelToTier = {}

soi.misc.expSection = soi.misc.tab:Section({
Side = _d("OQ0XGg"),
})

soi.misc.expSection:Header({
Name = _d("MBABCwwfRRwHHx1Ihq7i6p7W5w"),
})

soi.misc.claimToggle = soi.misc.expSection:Toggle({
Name = _d("NB0FAUgVXRQBHA"),
Default = false,
Callback = function(mson)
local tgno = soi.misc.expeditions

tgno.enabled = mson
tgno.claimAt = 0

if mson then
tgno.askedAt = 0
tgno.request()
end
end,
}, _d("FB0FATcVXRQBHA"))

soi.misc.rewardToggle = soi.misc.expSection:Toggle({
Name = _d("NB0FAUgVXRobFE4aE0YUGhUd"),
Default = false,
Callback = function(vagy)
local sy = soi.misc.expeditions

sy.autoClose = vagy

if vagy then
sy.closeRewards()
end
end,
}, _d("EBABMQkDRRo3EgIHBVQ"))

soi.misc.startToggle = soi.misc.expSection:Toggle({
Name = _d("NB0FAUgFRRQaBQ"),
Default = false,
Callback = function(otix)
local hiio = soi.misc.expeditions

if otix and not next(hiio.tiersWanted) then
hiio.autoStart = false

pcall(function()
soi.misc.startToggle:UpdateState(false)
end)

fqvu:Dialog({
Title = _d("NB0FAUgFRRQaBU4GE1QRG1EPSAJYEBo"),
Description = _d("JQESBUgXRVUEFA8bAhEaBhROHB9UB0gYAEgCWRBIJQcNBBERGh4eDBlGG0gXBxoFRVtINA8bDxEBCRoLG1ZFHQ1RDQATUAUNAhpIFVAHDAJCSDhYEgAFAwkEVFUcGQtIBFAHDQIaRFZQGwxRDwYPERsdHAwNBBEaDlEaABNcVQsQAEgERBtIEBpIGV8WDV8"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})

return
end

hiio.autoStart = otix
hiio.startedAt = {}

if otix then
hiio.askedAt = 0
hiio.request()
end
end,
}, _d("FB0FATcFRRQaBQ"))

for sqn, joys in ipairs(soi.misc.expeditions.tiers()) do
table.insert(soi.misc.tierLabels, tostring(joys.name))
soi.misc.labelToTier[tostring(joys.name)] = joys.id
end

soi.misc.building = true

soi.misc.tierDropdown = soi.misc.expSection:Dropdown({
Name = _d("IQEUHA"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = soi.misc.tierLabels,
Callback = function(vflu)
local jxvg = soi.misc.expeditions

if soi.misc.building then
return
end

local umez = {}
local ea = {}

if type(vflu) == _d("AQkTAg0") then
for axzq, kzg in pairs(vflu) do
local veh = soi.misc.labelToTier[tostring(axzq)]

if kzg and veh then
umez[veh] = true
table.insert(ea, tostring(axzq))
end
end
end

table.sort(ea)
jxvg.tiersWanted = umez

pcall(function()
soi.misc.tierDropdown:UpdateName(#ea > 0 and (_d("IQEUHEiUsddI") .. table.concat(ea, _d("WUg"))) or _d("IQEUHEiUsddIHwEGEw"))
end)
end,
}, _d("AQEUHA"))

task.defer(function()
soi.misc.building = false
end)

soi.misc.expSection:Button({
Name = _d("NgQQBwVWXxof"),
Callback = function()
local ienm = soi.misc.expeditions

if not ienm.claim() then
fqvu:Notify({
Title = _d("MBABCwwfRRwHHx0"),
Description = _d("OwcFBgEYVlUAEB1IFV4YDVEMCRVaVREUGkY"),
Lifetime = 5,
})
end
end,
})

soi.misc.expSection:Button({
Name = _d("Jg0fCkgFVBkNEhoNEg"),
Callback = function()
local dxm = soi.misc.expeditions

if not next(dxm.tiersWanted) then
fqvu:Notify({
Title = _d("MBABCwwfRRwHHx0"),
Description = _d("JQESBUgXRVUEFA8bAhEaBhROHB9UB0gYAEgCWRBIFRwHBlUaHx9ODh9DBhxf"),
Lifetime = 5,
})

return
end

local di = {}
local bfqf = 0

for ervc, eyyu in ipairs(dxm.tiers()) do
if dxm.tiersWanted[eyyu.id] and dxm.status(eyyu.id) == _d("FB4QBwQXUxkN") then
if dxm.start(eyyu.id, di) then
bfqf = bfqf + 1
end
end
end

if bfqf == 0 then
fqvu:Notify({
Title = _d("MBABCwwfRRwHHx0"),
Description = _d("OwcFBgEYVlULHhsEEhEXDVEdDRhFT0gFBg1WQhAEFA0cE1VVHBgLGgURFBoUTgkaQxAJFRdIGUQBRFEBGlZFHQ0DC0gXQxBIHwEcVlcaHQNODRpYEgETAg1WUhQaFR1IEF4HSAUGDRsf"),
Lifetime = 6,
})
end
end,
})

soi.misc.expInfo = soi.misc.tab:Section({
Side = _d("JwEWBhw"),
})

soi.misc.expInfo:Header({
Name = _d("MBABCwwfRRwHHx0"),
})

soi.misc.expParagraph = soi.misc.expInfo:Paragraph({
Header = _d("JhwQGh0F"),
Body = soi.misc.expeditions.text(),
})

soi.misc.expeditions.loadRewards()

soi.misc.expRewardParagraph = soi.misc.expInfo:Paragraph({
Header = _d("NgQQBwUTVQ"),
Body = soi.misc.expeditions.rewardsText(),
})

task.spawn(function()
local xhrp = soi.misc.expeditions
local hjzk = re(_d("JhEfDS0OQRAMGBoBGV8G"), 3)

if hjzk then
hjzk.OnClientEvent:Connect(function(hob)
if type(hob) ~= _d("AQkTAg0") then
return
end

xhrp.state = hob

xhrp.offset = (tonumber(hob.now) or os.time()) - os.time()
xhrp.syncedAt = os.clock()

if type(hob.rewards) == _d("AQkTAg0") and #hob.rewards > 0 then
table.insert(xhrp.rewardLog, 1, {
at = os.time(),
title = tostring(hob.rewardTitle or _d("MBABCwwfRRwHHw")),
items = hob.rewards,
})

while #xhrp.rewardLog > 8 do
table.remove(xhrp.rewardLog)
end

xhrp.saveRewards()

if xhrp.autoClose then

task.delay(0.35, xhrp.closeRewards)
end
end
end)
end

while gaqj() do

if os.clock() - xhrp.askedAt > 1 and os.clock() - xhrp.syncedAt > 20 then
xhrp.request()
end

if xhrp.enabled then
xhrp.claim()
end

if xhrp.autoClose then
xhrp.closeRewards()
end

if xhrp.autoStart and next(xhrp.tiersWanted) then
local fhw = {}

for mcyh, ugp in ipairs(xhrp.tiers()) do
if xhrp.tiersWanted[ugp.id] and xhrp.status(ugp.id) == _d("FB4QBwQXUxkN") then
if xhrp.start(ugp.id, fhw) then
break
end
end
end
end

local lxgt = xhrp.text()

if soi.misc.expParagraph and lxgt ~= soi.misc.expShown then
soi.misc.expShown = lxgt

pcall(function()
soi.misc.expParagraph:UpdateBody(lxgt)
end)
end

local vuio = xhrp.rewardsText()

if soi.misc.expRewardParagraph and vuio ~= xhrp.rewardsShown then
xhrp.rewardsShown = vuio

pcall(function()
soi.misc.expRewardParagraph:UpdateBody(vuio)
end)
end

task.wait(0.75)
end
end)

soi.misc.util = {
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

function soi.misc.util.hook()
local fsz = soi.misc.util

if fsz.hooked then
return
end

fsz.hooked = true

if aep.SyncCollection then
aep.SyncCollection.OnClientEvent:Connect(function(xz)
if type(xz) == _d("AQkTAg0") then
fsz.profile = xz
fsz.profileAt = os.clock()
end
end)
end

if aep.SyncAchievements then
aep.SyncAchievements.OnClientEvent:Connect(function(waa)
if type(waa) == _d("AQkTAg0") then
fsz.ach = waa
end
end)
end

if aep.SyncQuests then
aep.SyncQuests.OnClientEvent:Connect(function(xhp)
if type(xhp) == _d("AQkTAg0") and type(xhp.list) == _d("AQkTAg0") then
fsz.quests = xhp
end
end)
end

if aep.SyncPeriodicQuests then
aep.SyncPeriodicQuests.OnClientEvent:Connect(function(hn, vax)
if hn == _d("Ag0UBQQP") and type(vax) == _d("AQkTAg0") and type(vax.list) == _d("AQkTAg0") then
fsz.weekly = vax
end
end)
end
end

function soi.misc.util.askProfile()
local fgj = soi.misc.util

if os.clock() - fgj.askedAt < 1.5 then
return
end

fgj.askedAt = os.clock()

if aep.RequestSync then
pcall(function()
aep.RequestSync:FireServer()
end)
end
end

function soi.misc.util.currentProfile()
local qyxv = soi.misc.util

if type(qyxv.profile) ~= _d("AQkTAg0") then
qyxv.askProfile()

return nil
end

if os.clock() - qyxv.profileAt > 20 then
qyxv.askProfile()
end

return qyxv.profile
end

function soi.misc.util.forgetProfile()
local vtg = soi.misc.util

vtg.profile = nil
vtg.profileAt = 0
vtg.askedAt = 0
end

function soi.misc.util.indexedTotal(sqej)
local qu = 0

for ivt, gj in pairs((sqej and sqej.cardIndex) or {}) do
if gj then
qu = qu + 1
end
end

return qu
end

function soi.misc.util.indexPending(ujz)
local xx = {}

if type(ujz) ~= _d("AQkTAg0") then
return xx
end

local oaim = soi.misc.util.indexedTotal(ujz)
local tdd = ujz.indexMilestones or {}

for ihj = 1, 30 do
if not tdd[ihj] and ihj * 5 <= oaim then
table.insert(xx, ihj)
end
end

return xx
end

function soi.misc.util.indexFrame()
local nmp = lbjw:FindFirstChild(_d("NgkDCiEYVRAQNhsB"))

return nmp and nmp:FindFirstChild(_d("PAYVCxAwQxQFFA"))
end

function soi.misc.util.clickButton(wbr)
if not wbr then
return false
end

if firesignal then
local ocqn = pcall(firesignal, wbr.MouseButton1Click)

if ocqn then
return true
end
end

return pcall(function()
wbr:Activate()
end)
end

function soi.misc.util.closeIndex()
local bpnp = soi.misc.util.indexFrame()

if not bpnp or not bpnp.Visible then
return false
end

pcall(function()
local dn = gb:FindFirstChild(_d("OAcVGwQTYhYaGB4cBQ"))
local ifhj = dn and dn:FindFirstChild(_d("OA0fGyUXXxQPFBw"))

if ifhj then
require(ifhj).close(bpnp)
end
end)

soi.misc.util.clickButton(bpnp:FindFirstChild(_d("NgQeHQ00RAEcHgA")))

pcall(function()
bpnp.Visible = false
end)

return true
end

function soi.misc.util.claimIndex()
local gzwl = soi.misc.util

if os.clock() < gzwl.indexAt then
return false
end

local pyc = gzwl.currentProfile()

if not pyc then
return false
end

local pi = gzwl.indexPending(pyc)
local maf = pi[1]

if not maf then
return false
end

local azcd = gzwl.indexedTotal(pyc)
local psbf = gzwl.indexAsked

if type(psbf) == _d("AQkTAg0") and psbf.milestone == maf and psbf.total == azcd then
return false
end

gzwl.indexAsked = { milestone = maf, total = azcd }

pcall(function()
aep.ClaimIndexReward:FireServer(maf)
end)

gzwl.indexAt = os.clock() + 1.5

gzwl.profile = nil
gzwl.profileAt = 0

task.delay(0.4, gzwl.closeIndex)

return true
end

function soi.misc.util.achPending()
local vzt = {}
local ksls = soi.misc.util.ach

if type(ksls) ~= _d("AQkTAg0") then
return vzt
end

for rpam, sq in ipairs(ksls.chains or {}) do
for bqxy, zglt in ipairs(sq.levels or {}) do
if zglt.reached and not zglt.claimed then
table.insert(vzt, { chain = tostring(sq.id), index = zglt.index, name = tostring(zglt.name or zglt.index) })
end
end
end

return vzt
end

function soi.misc.util.claimAchievement()
local ei = soi.misc.util

if os.clock() < ei.achAt then
return false
end

if type(ei.ach) ~= _d("AQkTAg0") then
if os.clock() - ei.achAskedAt > 4 and aep.RequestAchievements then
ei.achAskedAt = os.clock()

pcall(function()
aep.RequestAchievements:FireServer()
end)
end

return false
end

for sfz, car in ipairs(ei.achPending()) do
pcall(function()
aep.ClaimAchievement:FireServer(car.chain, car.index)
end)

ei.achAt = os.clock() + 1

task.delay(1, function()
if aep.RequestAchievements then
pcall(function()
aep.RequestAchievements:FireServer()
end)
end
end)

return true
end

return false
end

function soi.misc.util.questRows()
local cymx = soi.misc.util
local lxm = {}

for kkro, bhfi in ipairs({ { list = _d("EQkYAhE"), payload = cymx.quests }, { list = _d("Ag0UBQQP"), payload = cymx.weekly } }) do
for qpm, fggc in ipairs((type(bhfi.payload) == _d("AQkTAg0") and bhfi.payload.list) or {}) do
if type(fggc) == _d("AQkTAg0") then
table.insert(lxm, { list = bhfi.list, index = qpm, quest = fggc })
end
end
end

return lxm
end

function soi.misc.util.questPending()
local rfw = {}

for bas, tokz in ipairs(soi.misc.util.questRows()) do
local hljb = tokz.quest

if not hljb.claimed and (tonumber(hljb.progress) or 0) >= (tonumber(hljb.target) or math.huge) then
table.insert(rfw, tokz)
end
end

return rfw
end

function soi.misc.util.askQuests()
local jkg = soi.misc.util

if os.clock() - jkg.questAskedAt > 4 and aep.RequestQuests then
jkg.questAskedAt = os.clock()

pcall(function()
aep.RequestQuests:FireServer()
end)
end

if os.clock() - jkg.weeklyAskedAt > 4 and aep.RequestPeriodicQuests then
jkg.weeklyAskedAt = os.clock()

pcall(function()
aep.RequestPeriodicQuests:FireServer(_d("Ag0UBQQP"))
end)
end
end

function soi.misc.util.claimQuest()
local eup = soi.misc.util

if os.clock() < eup.questAt then
return false
end

if type(eup.quests) ~= _d("AQkTAg0") and type(eup.weekly) ~= _d("AQkTAg0") then
eup.askQuests()

return false
end

for aywa, ikg in ipairs(eup.questPending()) do
if ikg.list == _d("Ag0UBQQP") then
if aep.ClaimPeriodicQuest then
pcall(function()
aep.ClaimPeriodicQuest:FireServer(_d("Ag0UBQQP"), ikg.index)
end)
end
else
pcall(function()
aep.ClaimQuest:FireServer(ikg.index)
end)
end

eup.questAt = os.clock() + 1.2

task.delay(1, function()
eup.askQuests()
end)

return true
end

return false
end

function soi.misc.util.packCatalog()
local zixo = soi.misc.util

if zixo.packs then
return zixo.packs
end

local hond = {}
local unzb, ztbq = pcall(function()
return require(gb.ModuleScripts.PackData)
end)

if unzb and type(ztbq) == _d("AQkTAg0") and type(ztbq.Packs) == _d("AQkTAg0") then
for kbe, ncaq in ipairs(ztbq.Packs) do
if ncaq.id then
table.insert(hond, { id = tostring(ncaq.id), name = tostring(ncaq.name or ncaq.id) })
end
end
end

zixo.packs = hond

return hond
end

function soi.misc.util.packUnlocked(rqz, mns)
if type(rqz) ~= _d("AQkTAg0") then
return true
end

local sek, wcr = pcall(function()
return require(gb.ModuleScripts.PackData)
end)
local nd, ynwn = pcall(function()
return require(gb.ModuleScripts.PackSlotData)
end)

if not (sek and nd) then
return true
end

local fzqw = wcr.ById and wcr.ById[mns]

if not fzqw then
return false
end

local zty, ppw = pcall(ynwn.isPackUnlocked, fzqw, rqz)

return (not zty) or ppw == true
end

function soi.misc.util.visit(knug)
local eozm = workspace:FindFirstChild(_d("OzgyHQ"))
local airi = eozm and eozm:FindFirstChild(knug)
local xibt = hs.Character
local qytv = xibt and xibt:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))
local rox = airi and (airi:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA")) or airi:FindFirstChildWhichIsA(_d("NwkCCzgXQwE"), true))

if not (rox and qytv) then
return nil
end

local bv = qytv.CFrame

qytv.CFrame = CFrame.new((rox.CFrame * CFrame.new(0, 0, -5)).Position)

return bv
end

function soi.misc.util.returnTo(une)
local mxi = hs.Character
local gjxn = mxi and mxi:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if gjxn and une then
gjxn.CFrame = une
end
end

function soi.misc.util.applyPacks(lld, cms)
local cbn = soi.misc.util

if os.clock() < cbn.packAt then
return false, _d("IgkYGkgXERgHHAsGAh8")
end

local prh = cbn.currentProfile()

if not prh then
return false, _d("Jw0QCgEYVlURHhsaVkEHBxcHBBMRWEgFHBFWUBIJGABIH19VCVEdDRVeGwxf")
end

if cms and (tonumber(prh.packSlots) or 1) < 2 then
return false, _d("JgQeGkhEERsNFAobVkUdDVELEAJDFEgBDwsdEQYEHhpIEVAYDQEPGwUf")
end

if not (aep.OpenPackShop and aep.EquipPack) then
return false, _d("IQAUThgXUh5IAgYHBhEcG1EABwIRHAZRGgAfQlUPEAMNVkcQGgIHBxgf")
end

cbn.packAt = os.clock() + 8

task.spawn(function()
local lvx = cbn.visit(_d("OwcTAg0FQhwGFh0"))

if not lvx then
return
end

pcall(function()
aep.OpenPackShop:FireServer(_d("BQkSBTcbVAcLGQ8GAg"))
end)

task.wait(1.2)

if lld then
pcall(function()
aep.EquipPack:FireServer(lld, 1)
end)
end

if cms then
task.wait(0.8)

pcall(function()
aep.EquipPack:FireServer(cms, 2)
end)
end

task.wait(0.8)
cbn.returnTo(lvx)
cbn.forgetProfile()
end)

return true
end

function soi.misc.util.accScore(lnve)
local zewj = lnve.effects or {}

return (zewj.luckBonus or 0) * 10
+ ((zewj.luckMult or 1) - 1) * 200
+ ((zewj.borderLuckMult or 1) - 1) * 200
- ((zewj.rollCdMult or 1) - 1) * 30
end

function soi.misc.util.accCatalog()
local zkc = soi.misc.util

if zkc.accessories then
return zkc.accessories
end

local edxo = {}

for jd, jrbr in ipairs({ _d("NAsSCxsFXgcRNQ8cFw"), _d("NAsSCxsFXgcRNQ8cFwM") }) do
local temy, velc = pcall(function()
return require(gb.ModuleScripts[jrbr])
end)

if temy and type(velc) == _d("AQkTAg0") and type(velc.Accessories) == _d("AQkTAg0") then
for ylx, pmag in ipairs(velc.Accessories) do
if pmag.id then
table.insert(edxo, {
id = tostring(pmag.id),
name = tostring(pmag.name or pmag.id),
shop = jd,

shopName = jd == 1 and _d("NAsSCxsFXgcRUT0AGUE") or _d("OBECGg0EWBodAk4lF18"),
raidable = pmag.raidShopOnly == true,
hidden = pmag.hidden == true,
requirements = pmag.requirements or {},
score = soi.misc.util.accScore(pmag),
})
end
end
end
end

zkc.accessories = edxo

return edxo
end

function soi.misc.util.accOwned(nyry)
local jr = {}

for nrmu, mkj in ipairs((nyry and nyry.accessories) or {}) do
jr[tostring(mkj)] = true
end

return jr
end

function soi.misc.util.accMeets(solh, njb)
for heo, hudf in ipairs(njb.requirements) do
local eso = solh.cards and solh.cards[hudf.cardId]
local orsc = type(eso) == _d("AQkTAg0") and (tonumber(eso[hudf.borderLevel]) or 0) or 0

if orsc < (tonumber(hudf.amount) or 0) then
return false
end
end

return true
end

function soi.misc.util.accPlan(obwk)
local ddqr = soi.misc.util
local hne = ddqr.accOwned(obwk)
local bsf = {}

for klo, aim in ipairs(ddqr.accCatalog()) do
if not hne[aim.id] and not aim.raidable and not aim.hidden and ddqr.accMeets(obwk, aim) then
local hom = bsf[aim.shop]

if not hom or aim.score > hom.score then
bsf[aim.shop] = aim
end
end
end

return bsf
end

function soi.misc.util.accPicks(euzv)
local bzhh = soi.misc.util
local ocpf = bzhh.accOwned(euzv)
local nfy, fsd

for vhh, lxfx in ipairs(bzhh.accCatalog()) do
if ocpf[lxfx.id] then
if not nfy or lxfx.score > nfy.score then
nfy = lxfx
end
elseif not lxfx.raidable and not lxfx.hidden and bzhh.accMeets(euzv, lxfx) then
if not fsd or lxfx.score > fsd.score then
fsd = lxfx
end
end
end

return nfy, fsd
end

function soi.misc.util.equipBest()
local gzit = soi.misc.util
local ild = gzit.currentProfile()

if not ild or not aep.EquipAccessory then
return false
end

local rpd = gzit.accPicks(ild)

if not rpd or ild.equippedAccessory == rpd.id then
return rpd ~= nil
end

pcall(function()
aep.EquipAccessory:FireServer(rpd.id)
end)

task.delay(1.5, function()
gzit.forgetProfile()
end)

return true
end

function soi.misc.util.buyBest()
local cehk = soi.misc.util

if os.clock() < cehk.accAt then
return false, _d("IgkYGkgXERgHHAsGAh8")
end

if znb.busy(1) or znb.busy(2) then
cehk.accNote = _d("PAZRD0gUUAEcHQtIWxEUSAIGBwYRARoYHkgBXgAEFU4NGFVVAQU")
return false, _d("PAZRD0gUUAEcHQtIWxEUSAIGBwYRARoYHkgBXgAEFU4NGFVVAQVA")
end

local nkp = cehk.currentProfile()

if not nkp then
cehk.accNote = _d("Jw0QCgEYVlURHhsaVkEHBxcHBBMRWEgGBwQaEQEaCE4JEVAcBlEHBlZQVRsUDQcYVQ")
return false, _d("Jw0QCgEYVlURHhsaVkEHBxcHBBMRWEgFHBFWUBIJGABIH19VCVEdDRVeGwxf")
end

local urrs = cehk.accPlan(nkp)
local qh = {}

for xea = 1, 2 do
if urrs[xea] then
table.insert(qh, urrs[xea].name)
end
end

if #qh == 0 then
cehk.accNote = _d("OwcFBgEYVlUGFBlIA18ZBxIFDRIRDA0FTkVWRR0NUQ0JBFUGSBcBGlZYAUgQHA1WXxocUQcGVkUdDVENBxpdEAsFBwcY")
return false, _d("OwcFBgEYVlUGFBlIFVAbSBMLSANfGQcSBQ0SEQwNBU5FVkUdDVENCQRVBkgXARpWWAFIEBwNVl8aHFEHBlZFHQ1RDQcaXRALBQcHGB8")
end

cehk.accAt = os.clock() + 12
cehk.accNote = _d("IgkdBQEYVlUcHk4cHlRVCx4bBgJUB0gXARpW") .. table.concat(qh, _d("VQkfCkg"))

task.spawn(function()
for rcuu = 1, 2 do
local obm = urrs[rcuu]

if obm then
local ody = rcuu == 1 and _d("BR0DHR0fRRAMFQ") or _d("AgkXCA0aXBQGFA8cBUYUDhcLBAU")
local xsai = rcuu == 1 and aep.OpenAccessoryShop or aep.OpenAccessoryShop2
local ekag = rcuu == 1 and aep.BuyAccessory or aep.BuyAccessory2
local vjew = ody and cehk.visit(ody) or nil

if not vjew then
local jtzi = workspace:FindFirstChild(_d("OzgyHQ"))
local is = jtzi and jtzi:FindFirstChild(ody)

if is and os.clock() - (cehk.worldAskedAt or 0) > 25 then

cehk.worldAskedAt = os.clock()
cehk.accNote = _d("NgAQHAkVRRAaUQAHAhEHDRAKEVYcVRwDFwEYVlUJFg8BGBEGAB4cHBpI")
elseif not is and os.clock() - (cehk.worldAskedAt or 0) > 25 then

cehk.worldAskedAt = os.clock()
cehk.accNote = _d("OwdRDQcDXwENA04BGBEBABgdSAFeBwQVTkVWRRQDGAAPVkUdDVECBxRTDEgFCwQTQRoaBQ")

pcall(function()
aep.TeleportToWorld:FireServer(_d("GQcTDBE"))
end)

task.wait(4.5)
vjew = cehk.visit(ody)
end
end

if vjew and xsai and ekag then

task.wait(0.9)

pcall(function()
xsai:FireServer()
end)

task.wait(1.2)

pcall(function()
ekag:FireServer(obm.id)
end)

task.wait(0.9)
cehk.returnTo(vjew)
cehk.accNote = _d("NwcECQACEQ") .. tostring(obm.name)
elseif not vjew then
cehk.accNote = _d("NgcEAgxWXxocURwNF1IdSAUGDVZSGh0fGg0EEVhIBRwRVlASCRgASB9fVQlRAwcbVBsc")
end

task.wait(0.6)
end
end

cehk.forgetProfile()

for req = 1, 8 do
if type(cehk.profile) == _d("AQkTAg0") then
break
end

cehk.askProfile()
task.wait(0.7)
end

cehk.equipBest()
end)

return true, table.concat(qh, _d("WUg"))
end

function soi.misc.util.indexText()
local dhrt = soi.misc.util

if type(dhrt.profile) ~= _d("AQkTAg0") then
return _d("Jw0QCgEYVlURHhsaVlIUGhVOARhVEBBfQEY")
end

local sie = dhrt.indexPending(dhrt.profile)
local excv = 0

for iof, fipz in pairs(dhrt.profile.indexMilestones or {}) do
if fipz then
excv = excv + 1
end
end

local dysd = tostring(dhrt.indexedTotal(dhrt.profile)) .. _d("VQsQHAwFERwGFQsQE1VZSA") .. tostring(excv) .. _d("VQcXTltGEQcNBg8aEkJVCx0PARtUEQ")

if #sie > 0 then
dysd = dysd .. _d("fzoUDwwPC1U") .. table.concat(sie, _d("WUg"))
end

return dysd
end

function soi.misc.util.achText()
local iovx = soi.misc.util

if type(iovx.ach) ~= _d("AQkTAg0") then
return _d("Jw0QCgEYVlUJEgYBE0cQBRQAHAUfW0Y")
end

local bnp = iovx.achPending()
local ir = 0

for ejuj, gppm in ipairs(iovx.ach.chains or {}) do
for rhhg in ipairs(gppm.levels or {}) do
ir = ir + 1
end
end

return tostring(#bnp) .. _d("VQcXTg") .. tostring(ir) .. _d("VQkSBgETRxAFFAAcBREHDRAKEQ")
end

function soi.misc.util.questText()
local mwmr = soi.misc.util

if type(mwmr.quests) ~= _d("AQkTAg0") and type(mwmr.weekly) ~= _d("AQkTAg0") then
return _d("Jw0QCgEYVlUZBAsbAkJbRl8")
end

local csw, uyyy = 0, 0

for cip, vchl in ipairs(mwmr.questPending()) do
if vchl.list == _d("Ag0UBQQP") then
uyyy = uyyy + 1
else
csw = csw + 1
end
end

local iln = type(mwmr.quests) == _d("AQkTAg0") and #(mwmr.quests.list or {}) or 0
local uuq = type(mwmr.weekly) == _d("AQkTAg0") and #(mwmr.weekly.list or {}) or 0

return tostring(csw) .. _d("VQcXTg") .. tostring(iln) .. _d("VQwQBwQPEQcNEAoRfA")
.. tostring(uyyy) .. _d("VQcXTg") .. tostring(uuq) .. _d("VR8UCwMaSFUaFA8MDw")
end

function soi.misc.util.packText()
local rv = soi.misc.util
local lq = rv.profile

if type(lq) ~= _d("AQkTAg0") then
return _d("Jw0QCgEYVlURHhsaVkEUCxodRlgf")
end

local function pxu(mqyh)
for ugxl, zil in ipairs(rv.packCatalog()) do
if zil.id == mqyh then
return zil.name
end
end

return tostring(mqyh)
end

local qx = _d("JgQeGkhHC1U") .. pxu(lq.equippedPack)

if (tonumber(lq.packSlots) or 1) >= 2 then
qx = qx .. _d("fzsdARxWA09I") .. pxu(lq.equippedPack2)
else
qx = qx .. _d("fzsdARxWA09IFg8FE0EUGwJOBhlFVQcGAA0S")
end

return qx
end

function soi.misc.util.accText()
local zylg = soi.misc.util
local nwuu = zylg.profile

if type(nwuu) ~= _d("AQkTAg0") then
return _d("Jw0QCgEYVlURHhsaVlAWCxQdGxlDHA0CQEZY")
end

local png = zylg.accPicks(nwuu)
local hf = zylg.accPlan(nwuu)
local ltyw = _d("GwcfCw")

for qsu, tj in ipairs(zylg.accCatalog()) do
if tj.id == nwuu.equippedAccessory then
ltyw = tj.name .. _d("VUA") .. tj.shopName .. _d("XA")
end
end

local eop = _d("MBkEBxgGVBFSUQ") .. ltyw

if png then
eop = eop .. _d("fyoUHRxWXgIGFApSVg") .. png.name
end

eop = eop .. _d("fykSDQ0FQhoaCE47Hl4FUlE") .. (hf[1] and hf[1].name or _d("GwcFBgEYVlUGFBk"))
eop = eop .. _d("fyUIHRwTQxwHBB1IO1AbUlE") .. (hf[2] and hf[2].name or _d("GwcFBgEYVlUGFBk"))

if zylg.accNote then
eop = eop .. _d("fyQQHRxWRQcBAVRI") .. zylg.accNote
end

return eop
end

soi.misc.util.hook()
soi.misc.util.askProfile()

soi.misc.indexSection = soi.misc.tab:Section({
Side = _d("OQ0XGg"),
})

soi.misc.indexSection:Header({
Name = _d("NgkDCkg/XxENCU6Y6aLy"),
})

soi.misc.indexToggle = soi.misc.indexSection:Toggle({
Name = _d("NB0FAUgVXRQBHA"),
Default = false,
Callback = function(rsvk)
soi.misc.util.indexOn = rsvk
soi.misc.util.indexAt = 0

soi.misc.util.indexAsked = nil
end,
}, _d("FB0FATcVXRQBHDFa"))

soi.misc.indexSection:Button({
Name = _d("NgQQBwVWXxof"),
Callback = function()
local ua = soi.misc.util

ua.indexAt = 0
ua.indexAsked = nil

if not ua.claimIndex() then
fqvu:Notify({
Title = _d("NgkDCkg/XxENCQ"),
Description = _d("OwdRAwEaVAYcHgANVlgGSAMLCRJIVRweTgsaUBwFXw"),
Lifetime = 5,
})
end
end,
})

soi.misc.claimSection = soi.misc.tab:Section({
Side = _d("OQ0XGg"),
})

soi.misc.claimSection:Header({
Name = _d("NAsZBw0AVBgNHxobVhdVOQQLGwJCVZju4e4"),
})

soi.misc.achToggle = soi.misc.claimSection:Toggle({
Name = _d("NB0FAUgVXRQBHE4JFVkcDQcLBRNfARs"),
Default = false,
Callback = function(tjak)
soi.misc.util.achOn = tjak
soi.misc.util.achAt = 0

if tjak and aep.RequestAchievements then
pcall(function()
aep.RequestAchievements:FireServer()
end)
end
end,
}, _d("FB0FATcVXRQBHDEJFVkcDQcLBRNfARs"))

soi.misc.questToggle = soi.misc.claimSection:Toggle({
Name = _d("NB0FAUgVXRQBHE4ZA1QGHAI"),
Default = false,
Callback = function(oygr)
soi.misc.util.questOn = oygr
soi.misc.util.questAt = 0
soi.misc.util.questAskedAt = 0
soi.misc.util.weeklyAskedAt = 0

if oygr then
soi.misc.util.askQuests()
end
end,
}, _d("FB0FATcVXRQBHDEZA1QGHAI"))

soi.misc.claimSection:Button({
Name = _d("NgQQBwVWUBkEUQAHAQ"),
Callback = function()
local qey = soi.misc.util

qey.achAt = 0
qey.questAt = 0

local bqew = qey.claimAchievement()
local yqm = qey.claimQuest()

if not (bqew or yqm) then
fqvu:Notify({
Title = _d("NAsZBw0AVBgNHxobVhdVOQQLGwJC"),
Description = _d("OwcFBgEYVlUBAk4aE1AREVEaB1ZSGQkYA0Y"),
Lifetime = 5,
})
end
end,
})

soi.misc.packSection = soi.misc.tab:Section({
Side = _d("OQ0XGg"),
})

soi.misc.packSection:Header({
Name = _d("NgkDCkgmUBYDAk6Y6b/B"),
})

soi.misc.packSection:Paragraph({
Header = _d("IR8eThsaXgEb"),
Body = _d("JQESBRtWUAUYHRdIGV8ZEVEZABNfVREeG0gGQxAbAk4pBkEZEVEeCRVaBkRRDA0VUAAbFE4cHlRVGwYHHBVZVR8QAgMFEQEHURoAExEYDQMNABdfAUY"),
})

local vi = {}
local yxki = {}

for pute, wnuc in ipairs(soi.misc.util.packCatalog()) do
table.insert(vi, wnuc.name)
yxki[wnuc.name] = wnuc.id
end

soi.misc.packSlotOne = nil
soi.misc.packSlotTwo = nil

soi.misc.packDropdownOne = soi.misc.packSection:Dropdown({
Name = _d("JgQeGkhH"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = vi,
Callback = function(ovt)
local nhdl = type(ovt) == _d("AQkTAg0") and ovt[1] or ovt

soi.misc.packSlotOne = yxki[tostring(nhdl)]
end,
}, _d("BgQeGjdH"))

soi.misc.packDropdownTwo = soi.misc.packSection:Dropdown({
Name = _d("JgQeGkhE"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = vi,
Callback = function(yktd)
local ywr = type(yktd) == _d("AQkTAg0") and yktd[1] or yktd

soi.misc.packSlotTwo = yxki[tostring(ywr)]
end,
}, _d("BgQeGjdE"))

soi.misc.packSection:Button({
Name = _d("NBgBAhFWQRQLGh0"),
Callback = function()
local loo = soi.misc.util
local vj = soi.misc.packSlotOne
local kjdx = soi.misc.packSlotTwo

if not vj then
fqvu:Notify({
Title = _d("NgkDCkgmUBYDAg"),
Description = _d("JQESBUgXEQUJEgVIEF4HSAICBwIRREgXBxoFRVs"),
Lifetime = 5,
})

return
end

local lxfe, qau = loo.applyPacks(vj, kjdx)

if not lxfe then
fqvu:Dialog({
Title = _d("NgkDCkgmUBYDAg"),
Description = qau,
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})
end
end,
})

soi.misc.cards = {
rarityLabels = { _d("NAQd"), _d("OwcDAwka"), _d("MgcdCg"), _d("JwkYAAoZRg"), _d("IAYYGA0EQhQE") },
borderOf = { Normal = 1, Gold = 2, Rainbow = 3, Universal = 4 },
mergeOn = false,
deconOn = false,
mergeWanted = {},
deconWanted = {},
mergeAt = 0,
deconAt = 0,
mergeDone = _d("OwcFBgEYVlUbFAAcVkgQHA"),
deconDone = _d("OwcFBgEYVlUbFAAcVkgQHA"),

inFlight = false,

interval = 3600,
manualGap = 20,
manualAt = 0,

protectedPrefixes = { weather = true, boss = true, raid = true, wb = true, fish = true, hw = true, event = true },

deconExceptions = { weather_sayaka = true, weather_caesar = true },

deconConfirmed = false,
burnAskedAt = 0,
}

function soi.misc.cards.isProtected(psjj, ao)
local xmjo = soi.misc.cards
local idhu = tostring(psjj or _d(""))
local chlc = idhu:match(_d("K0AqD0UMAVhRLEVBKQ"))

if not (chlc and xmjo.protectedPrefixes[chlc]) then
return false
end

return not (xmjo.deconExceptions[idhu] and ao == 2)
end

function soi.misc.cards.burnAllowed(noh)
local zwy = soi.misc.cards
local xshi = zwy.wantedFor(_d("EQ0SAQYhUBscFAo"))

if not (xshi == nil or xshi[3] or xshi[4]) then
zwy.deconConfirmed = false

return true
end

if zwy.deconConfirmed then
return true
end

if noh then
return false
end

if os.clock() < (zwy.burnAskedAt or 0) then
return false
end

zwy.burnAskedAt = os.clock() + 20

fqvu:Dialog({
Title = _d("Nx0DAEgkUBwGEwEfVl4HSCQAAQBUBxsQAkgVUAcMAlE"),
Description = _d("NB0FAUgSVBYHHx0cBEQWHFEdDRhVBkgUGA0ESFULHh4RVlgbSAUGDVZcFBwSBgEYVlUaHhkbVlAbDFENCRhfGhxRDA1WRBsMHgANWBE")
.. _d("Ig0QGgATQ1lIEwEbBR1VGhAHDFZTGhsCQkgBXgcEFU4KGUIGRFEIAQVZHAYWQkg+UBkEHhkNE19VCR8KSBNHEAYFTgsXQxEbUQ8aExEdDR0KSBRQFgNRCwECWRAaURkJDx8"),
Buttons = {
{
Name = _d("Nx0DAEgCWRAF"),
Callback = function()
zwy.deconConfirmed = true
zwy.deconAt = 0
zwy.manualAt = 0

pcall(function()
soi.misc.deconToggle:UpdateState(true)
end)
end,
},
{
Name = _d("NgkfDQ0a"),
Callback = function()
pcall(function()
soi.misc.deconToggle:UpdateState(false)
end)
end,
},
},
})

return false
end

function soi.misc.cards.wantedFor(dix)
local kmqp = soi.misc.cards[dix] or {}

if next(kmqp) == nil or kmqp[0] then
return nil
end

return kmqp
end

function soi.misc.cards.npcFor(zpbw)
local iagg = workspace:FindFirstChild(_d("OzgyHQ"))

if not iagg then
return nil
end

local uxsf = zpbw and _d("Ex0CCzcYQRY") or _d("EQ0SAQYFRQcdEho3GEEW")

for tntx, sig in ipairs(iagg:GetChildren()) do
if sig:GetAttribute(_d("OzgyJww")) == uxsf then
return sig
end
end

local tt = zpbw and { _d("OgcBBgQP"), _d("GgcBAhET") } or { _d("JgAQGwQX"), _d("PQkHCzwBXjEJFR0") }

for kujk, foq in ipairs(iagg:GetChildren()) do
for dk, tsb in ipairs(tt) do
if foq.Name == tsb then
return foq
end
end
end

local uj = zpbw and { _d("FgkDCkgbVAcPGAAP"), _d("GgcBBgQP") } or { _d("EQ0SAQYFRQcdEhoBGV8"), _d("BgAQGwQX") }

for rmb, yv in ipairs(iagg:GetChildren()) do
for rdk, qnt in ipairs(yv:GetDescendants()) do
if qnt:IsA(_d("IQ0JGiQXUxAE")) and qnt.Text ~= _d("") then
local ihv = qnt.Text:lower()

for traq, qqhp in ipairs(uj) do
if ihv:find(qqhp, 1, true) then
return yv
end
end

break
end
end
end

return nil
end

function soi.misc.cards.rarityText(gzzg)
local av = soi.misc.cards.wantedFor(gzzg)

if not av then
return _d("NAQd")
end

local xy = {}

for ytky, cdp in pairs(soi.misc.cards.borderOf) do
if av[cdp] then
table.insert(xy, ytky)
end
end

if #xy == 0 then
return _d("NAQd")
end

table.sort(xy)

return table.concat(xy, _d("WUg"))
end

function soi.misc.cards.run(ldmi, fuv, wxs)
local sdm = soi.misc.cards
local xnc = soi.misc.util
local kgcp = ldmi and _d("GA0DCQ03RQ") or _d("EQ0SAQY3RQ")

if wxs then
if os.clock() < sdm[kgcp] then
return false, _d("OwcFTgwDVFURFBpG")
end
elseif os.clock() < sdm.manualAt then
return false, _d("IgkYGkgXERgHHAsGAh8")
end

if sdm.inFlight then
return false, _d("NAYeGgATQ1ULEBwMVkUHAQFOAQURFAQDCwkSSFUaBAAGH18SRg")
end

local vzxu = znb.busy(1) and 1 or (znb.busy(2) and 2 or nil)
local kr = os.clock() - (jzua.floorAt or 0) < 90
local ckwl = vzxu ~= nil and znb.towerSlot() == vzxu and kr

if vzxu and not ckwl then
return false, _d("PAZRD0gUUAEcHQtIWxEBABROHARYBUgGAR0aVVUNHwpIH0Vb")
end

if uoy.battlePending and os.time() < (uoy.battlePendingUntil or 0) then
return false, _d("NEgTDxwCXRBIGB1IBUUUGgUHBhERWEgFBg1WRQcBAU4fGUQZDFENCRhSEARRBxxY")
end

if not ldmi and not sdm.burnAllowed() then
return false, _d("NgcfCAEEXFU6EAcGFF4CRyQAAQBUBxsQAkgQWAcbBUA")
end

local gfk = sdm.npcFor(ldmi)

if not gfk then
return false, ldmi
and _d("OgcBBgQPERwbUQAHAhEcBlEaAB9CVQUQHkhbEQEaEBgNGhEBB1EGARsRFAYVThgEVAYbUQccVlASCRgARg")
or _d("IQAUTgwTUhoGAhoaA1IBSD8+K1ZYBkgfARxWWBtIBQYBBREYCQFORVZFBwkHCwRWRRpIGBpIF18RSAEcDQVCVQEFTgkRUBwGXw")
end

local bvij = ldmi and aep.OpenFuseDialog or aep.OpenDeconstructDialog
local blk = ldmi and aep.FuseCards or aep.DeconstructCards

if not (bvij and blk) then
return false, _d("IQAQGkgfQlUGHhpIH19VHBkHG1ZWFAUUTh4TQwYBHgBG")
end

local zbsd = ldmi and _d("GA0DCQ0hUBscFAo") or _d("EQ0SAQYhUBscFAo")
local pmc = sdm.wantedFor(zbsd)

sdm.manualAt = os.clock() + sdm.manualGap

if wxs then
sdm[kgcp] = os.clock() + sdm.interval
end

sdm.inFlight = true

task.spawn(function()

local ksv = nil

local function jgh(uht, pta)
if ldmi then
sdm.mergeDone = uht
else
sdm.deconDone = uht
end

if pta and wxs then
sdm[kgcp] = os.clock() + 120
end

sdm.inFlight = false
end

local bwnz = xnc.visit(gfk.Name)

if not bwnz then
jgh(_d("NgAQHAkVRRAaUQcbVl8aHFEcDRdVDEhcThoTRQcRGAAPVlgbSAUZB1ZcHAYEGg0FHw"), true)

return
end

task.wait(0.9)

local weim = nil
local hypc = bvij.OnClientEvent:Connect(function(cma)
if type(cma) == _d("AQkTAg0") then
weim = cma
end
end)

for ugbb = 1, 3 do
pcall(function()
bvij:FireServer()
end)

for kjcc = 1, 20 do
if weim then
break
end

task.wait(0.3)
end

if weim then
break
end

task.wait(1.5)
end

hypc:Disconnect()
xnc.returnTo(bwnz)

if type(weim) ~= _d("AQkTAg0") then
jgh(_d("IQAUTgwfUBkHFk4MH1VVBh4aSBdfBh8UHEhbEQcNBRwRH18SSBgASAJGGkgcBwYDRRAbXw"), true)

return
end

local dbc = {}

for ywmx, eak in ipairs(weim) do
local bcmv = tonumber(eak.borderLevel)
local wuu = eak.cardId or eak.id

if bcmv and (not pmc or pmc[bcmv])
and (ldmi or not soi.misc.cards.isProtected(wuu, bcmv)) then
table.insert(dbc, eak)
end
end

if #dbc == 0 then

soi.misc.cards.closeFrame(ldmi)
jgh(_d("OwcFBgEYVlUcHk4bE18RSBcBGlY") .. soi.misc.cards.rarityText(zbsd) .. _d("Ww"))

return
end

if fuv then

local xcn = {}

for fqb, gij in ipairs(dbc) do
if (tonumber(gij.count) or 0) >= fuv then
table.insert(xcn, gij)
end
end

if #xcn == 0 then
soi.misc.cards.closeFrame(ldmi)
jgh(_d("OwdR") .. soi.misc.cards.rarityText(zbsd) .. _d("VRoeGUgeUAZI") .. fuv .. _d("VQseHgETQlURFBpG"))

return
end

dbc = xcn

table.sort(dbc, function(urb, bukw)
return (tonumber(urb.count) or 0) < (tonumber(bukw.count) or 0)
end)

local oxq, qek = {}, 0

for sdx, sxm in ipairs(dbc) do
local eg = tonumber(sxm.count) or 0

if #oxq > 0 and qek + eg > fuv then
break
end

table.insert(oxq, sxm)
qek = qek + eg
end

dbc = oxq
ksv = qek
end

local bo = 0

soi.misc.cards.closeFrame(ldmi)

if ldmi then
if not pmc then

pcall(function()
blk:FireServer(_d("FAQd"), nil)
end)

bo = #dbc
else
local sx = {}

for zp, jcq in ipairs(dbc) do
table.insert(sx, { jcq.cardId, tonumber(jcq.borderLevel) })
end

pcall(function()
blk:FireServer(_d("Bg0dCwsCVBE3EAIE"), sx)
end)

bo = #sx
end
else
local kpmf = {}

for whec, aipp in ipairs(dbc) do
if #kpmf >= 25 then
break
end

table.insert(kpmf, { aipp.cardId, tonumber(aipp.borderLevel), _d("FAQd") })
end

pcall(function()
blk:FireServer(kpmf)
end)

bo = #kpmf
end

jgh(_d("Jg0fGkg") .. tostring(bo) .. _d("VRoeGQ") .. (bo == 1 and _d("") or _d("Bg"))
.. _d("VUA") .. soi.misc.cards.rarityText(zbsd) .. _d("XA")
.. (ksv and (_d("WUg") .. tostring(ksv) .. _d("VQsQHAwF")) or _d("")))
end)

return true
end

function soi.misc.cards.closeFrame(xtpp)
pcall(function()
local pd = xtpp and { _d("Mx0CCy8DWA"), _d("Mx0CCy4EUBgN") } or { _d("MQ0SAQYFRQcdEhovA1g"), _d("MQ0SAQYFRQcdEhouBFAYDQ") }
local oclk = require(gb.ModuleScripts.MenuManager)
local gir = lbjw:FindFirstChild(pd[1])
local qoi = gir and gir:FindFirstChild(pd[2])

if qoi then
oclk.close(qoi)
end

if not xtpp then
local brt = gir and gir:FindFirstChild(_d("MQ0SAQYFRQcdEho6F0UQGzccCRtU"))

if brt then
oclk.close(brt)
else
brt = lbjw:FindFirstChild(_d("MQ0SAQYFRQcdEho6F0UQGzccCRtU"))

if brt then
oclk.close(brt)
end
end
end
end)
end

function soi.misc.cards.refresh(xaf)

local jlmk = xaf and soi.misc.mergeParagraph or soi.misc.deconParagraph

if not jlmk then
return
end

pcall(function()
jlmk:UpdateBody(xaf
and soi.misc.cards.mergeText()
or soi.misc.cards.deconText())
end)
end

function soi.misc.cards.mergeText()
local ofr = soi.misc.cards

return _d("JwkDBxwfVAZSUQ") .. ofr.rarityText(_d("GA0DCQ0hUBscFAo")) .. _d("fw") .. ofr.mergeDone
end

function soi.misc.cards.deconText()
local zxly = soi.misc.cards

return _d("JwkDBxwfVAZSUQ") .. zxly.rarityText(_d("EQ0SAQYhUBscFAo")) .. _d("fw") .. zxly.deconDone
.. _d("fz8UDxweVAdEUQwHBUJZSAMPARIdVR8eHAQSERcHAh1EVlccGxkHBhEdVSAQAgQZRhANH04JGFVVDQcLBgIRFgkDChtWUAcNUQANAFQHSAILBgIf")
end

soi.misc.skill = {
on = false,
at = 0,
mainWanted = {},
raidWanted = {},

mainOrder = {},
raidOrder = {},
last = _d("OwcFBgEYVlUKHhsPHkVVERQa"),
shown = _d(""),
}

function soi.misc.skill.branchMap(jp)
local zzs = {}

for cha, utq in ipairs(zxjg.Trees[jp].branches) do
zzs[utq.name] = utq
end

return zzs
end

function soi.misc.skill.branchLabels(akof)
local yib = {}

for lia, rpez in ipairs(zxjg.Trees[akof].branches) do
table.insert(yib, rpez.name)
end

return yib
end

function soi.misc.skill.wantedFrom(xe, eh)
local yuid = {}
local jf = soi.misc.skill.branchMap(eh)

if type(xe) == _d("AQkTAg0") then
for phnh, qfkr in pairs(xe) do
if qfkr and jf[tostring(phnh)] then
yuid[jf[tostring(phnh)].id] = true
end
end
end

return yuid
end

function soi.misc.skill.ordered(xor, rp)
local myrr = {}
local szki = {}

for znqs, mxk in ipairs(rp or {}) do
if xor[mxk] then
table.insert(myrr, mxk)
szki[mxk] = true
end
end

for edkw in pairs(xor) do
if not szki[edkw] then
table.insert(myrr, edkw)
end
end

return myrr
end

function soi.misc.skill.branchById(bqz)
local eal = {}

for sqa, xjm in ipairs(zxjg.Trees[bqz].branches) do
eal[xjm.id] = xjm
end

return eal
end

function soi.misc.skill.upgrade()
local yvzo = soi.misc.skill
local pfb = soi.misc.util
local jqmc = pfb.currentProfile and pfb.currentProfile()

if type(jqmc) ~= _d("AQkTAg0") then
return false, _d("OwdRHhoZVxwEFE4RE0Vb")
end

local wrje = jqmc.skillTrees or {}
local vln = { [1] = yvzo.mainOrder, [2] = yvzo.raidOrder }
local kvi = nil

for xpp, pnnv in ipairs(zxjg.Trees) do
local mwx = wrje[pnnv.id]
local brd = tonumber(jqmc[pnnv.pointsField or _d("BgMYAgQmXhwGBR0")]) or 0
local mntl = soi.misc.skill.branchById(xpp)

if type(mwx) == _d("AQkTAg0") and brd > 0 then
for wh, nk in ipairs(vln[xpp] or {}) do
local fsbn = mntl[nk]

if fsbn and not kvi then
local ol = zxjg.getBranchLevel(wrje, pnnv.id, fsbn.id) or 0
local ms = ol + 1

if ms <= fsbn.levels then
local ejm = fsbn.id .. ms
local epx = 1

if type(fsbn.costs) == _d("AQkTAg0") and tonumber(fsbn.costs[ms]) then
epx = tonumber(fsbn.costs[ms])
elseif tonumber(fsbn.cost) then
epx = tonumber(fsbn.cost)
end

if epx <= brd and zxjg.isAvailable(wrje, pnnv.id, ejm) then
kvi = { tree = pnnv.id, node = ejm, name = fsbn.name, level = ms }
end
end
end
end
end
end

if not kvi then
return false, _d("OwcFBgEYVlUcHk4KA0hVERQaRg")
end

aep.BuySkillNode:FireServer(kvi.tree, kvi.node)

if pfb.askProfile then
pcall(pfb.askProfile)
end

yvzo.last = _d("NwcECQACEQ") .. kvi.name .. _d("VQ") .. tostring(kvi.level)

return true
end

function soi.misc.skill.text()
local pwp = soi.misc.skill
local wgu = soi.misc.util
local fck = wgu.currentProfile and wgu.currentProfile()

if type(fck) ~= _d("AQkTAg0") then
return _d("JQcYABwFC1VXew") .. pwp.last
end

local uil = fck.skillTrees or {}
local tnn = {}

local wbqh = { [1] = pwp.mainOrder, [2] = pwp.raidOrder }

for fdca, dlkv in ipairs(zxjg.Trees) do
local fty = tonumber(fck[dlkv.pointsField or _d("BgMYAgQmXhwGBR0")]) or 0
local iybj = {}
local czis = soi.misc.skill.branchById(fdca)

for rw, ctc in ipairs(wbqh[fdca] or {}) do
local hcjb = czis[ctc]

if hcjb then
local vo = zxjg.getBranchLevel(uil, dlkv.id, hcjb.id) or 0
table.insert(iybj, hcjb.name .. _d("VQ") .. tostring(vo) .. _d("Wg") .. tostring(hcjb.levels))
end
end

tnn[#tnn + 1] = dlkv.name .. _d("T0g") .. tostring(fty) .. _d("VRgFHQ")
.. (#iybj > 0 and (_d("VUVR") .. table.concat(iybj, _d("WUg"))) or _d("VUVRAAcCWRwGFk4YH1IeDRU"))
end

tnn[#tnn + 1] = pwp.last

return table.concat(tnn, _d("fw"))
end

soi.misc.mergeSection = soi.misc.tab:Section({
Side = _d("OQ0XGg"),
})

soi.misc.mergeSection:Header({
Name = _d("OA0DCQ1WwerP3Q"),
})

soi.misc.mergeToggle = soi.misc.mergeSection:Toggle({
Name = _d("NB0FAUgbVAcPFA"),
Default = false,
Callback = function(jku)
local mstb = soi.misc.cards

mstb.mergeOn = jku

mstb.mergeAt = (jku and ffuc.loading) and (os.clock() + mstb.interval) or 0
end,
}, _d("FB0FATcbVAcPFA"))

soi.misc.mergeDropdown = soi.misc.mergeSection:Dropdown({
Name = _d("JwkDBxwfVAY"),
Search = false,
Multi = true,
Required = false,
Default = { _d("NAQd") },
Options = soi.misc.cards.rarityLabels,
Callback = function(rfc)
local arg = {}

if type(rfc) == _d("AQkTAg0") then
for wgx, kvy in pairs(rfc) do
if kvy then
if wgx == _d("NAQd") then
arg[0] = true
else
arg[soi.misc.cards.borderOf[tostring(wgx)]] = true
end
end
end
end

soi.misc.cards.mergeWanted = arg
soi.misc.cards.refresh(true)
end,
}, _d("BwkDBxwfVAY"))

soi.misc.mergeSection:Button({
Name = _d("OA0DCQ1WXxof"),
Callback = function()
local cglq, cf = soi.misc.cards.run(true)

if not cglq then
fqvu:Notify({
Title = _d("OA0DCQ0"),
Description = cf,
Lifetime = 6,
})
end
end,
})

soi.misc.mergeSection:Button({
Name = _d("OA0DCQ1WCEU"),
Callback = function()

local yawm, amvw = soi.misc.cards.run(true, 90)

if not yawm then
fqvu:Notify({
Title = _d("OA0DCQ1WCEU"),
Description = amvw,
Lifetime = 6,
})
end
end,
})

soi.misc.mergeParagraph = soi.misc.mergeSection:Paragraph({
Header = _d("JhwQGh0F"),
Body = soi.misc.cards.mergeText(),
})

soi.misc.accSection = soi.misc.tab:Section({
Side = _d("JwEWBhw"),
})

soi.misc.accSection:Header({
Name = _d("NAsSCxsFXgcBFB1Ihq7n5g"),
})

soi.misc.accToggle = soi.misc.accSection:Toggle({
Name = _d("NB0FAUgUVAYcUQ8LFVQGGx4cEQ"),
Default = false,
Callback = function(dky)
soi.misc.util.accOn = dky
soi.misc.util.accAt = 0
end,
}, _d("FB0FATcUVAYcLg8LFVQGGx4cEQ"))

soi.misc.accBuyToggle = soi.misc.accSection:Toggle({
Name = _d("NB0FAUgURAxIEwsbAg"),
Default = false,
Callback = function(nxdr)
soi.misc.util.accBuyOn = nxdr
soi.misc.util.accBuyAt = 0
soi.misc.util.accAt = 0
end,
}, _d("FB0FATcURAw3EwsbAg"))

soi.misc.accSection:Button({
Name = _d("Nx0ITgoTQgE"),
Callback = function()
local az, kvmj = soi.misc.util.buyBest()

if not az then
fqvu:Notify({
Title = _d("NAsSCxsFXgcBFB0"),
Description = kvmj,
Lifetime = 6,
})
end
end,
})

soi.misc.accSection:Button({
Name = _d("MBkEBxhWUxAbBQ"),
Callback = function()
if not soi.misc.util.equipBest() then
fqvu:Notify({
Title = _d("NAsSCxsFXgcBFB0"),
Description = _d("OwcFBgEYVlUKFBocE0NVAQJOBwFfEAxRFw0CHw"),
Lifetime = 5,
})
end
end,
})

soi.misc.accParagraph = soi.misc.accSection:Paragraph({
Header = _d("JhwQGh0F"),
Body = soi.misc.util.accText(),
})

soi.misc.claimInfo = soi.misc.tab:Section({
Side = _d("JwEWBhw"),
})

soi.misc.claimInfo:Header({
Name = _d("OAECDQ0aXRQGFAEdBQ"),
})

soi.misc.indexParagraph = soi.misc.claimInfo:Paragraph({
Header = _d("NgkDCkg/XxENCQ"),
Body = soi.misc.util.indexText(),
})

soi.misc.achParagraph = soi.misc.claimInfo:Paragraph({
Header = _d("NAsZBw0AVBgNHxob"),
Body = soi.misc.util.achText(),
})

soi.misc.questParagraph = soi.misc.claimInfo:Paragraph({
Header = _d("JB0UHRwF"),
Body = soi.misc.util.questText(),
})

soi.misc.packParagraph = soi.misc.claimInfo:Paragraph({
Header = _d("JQkSBRs"),
Body = soi.misc.util.packText(),
})

soi.misc.skillSection = soi.misc.tab:Section({
Side = _d("JwEWBhw"),
})

soi.misc.skillSection:Header({
Name = _d("JgMYAgRWZQcNFE6Y6b3G"),
})

soi.misc.skillToggle = soi.misc.skillSection:Toggle({
Name = _d("NB0FAUgDQRIaEAoN"),
Default = false,
Callback = function(ttq)
local uxre = soi.misc.skill

if ttq and not (next(uxre.mainWanted) or next(uxre.raidWanted)) then
uxre.on = false

pcall(function()
soi.misc.skillToggle:UpdateState(false)
end)

fqvu:Dialog({
Title = _d("JQESBUgXERcaEAALHhETAQMdHA"),
Description = _d("NgAeARsTERQcUQINF0IBSB4ADVZTBwkfDQBWWBtIBQYNVnwUAR9OHARUEEgeHEgkUBwMURoaE1RVDAMBGBJeAgZRQ0g")
.. _d("NB0FAUgDQRIaEAoNVl4bBAhOGwZUGwwCThgZWBscAk4fHlQHDVEXBwMRBQcYABxWWAFG"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})

return
end

uxre.on = ttq
uxre.at = 0
end,
}, _d("FB0FATcDQRIaEAoN"))

soi.misc.skillMainDropdown = soi.misc.skillSection:Dropdown({
Name = _d("OAkYAEgCQxAN"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = soi.misc.skill.branchLabels(1),
Callback = function(vpdx)
local zxlj = soi.misc.skill
local bcl = zxlj.wantedFrom(vpdx, 1)

zxlj.mainWanted = bcl
zxlj.mainOrder = zxlj.ordered(bcl, zxlj.mainOrder)
zxlj.shown = _d("")
end,
}, _d("GAkYADcCQxAN"))

soi.misc.skillRaidDropdown = soi.misc.skillSection:Dropdown({
Name = _d("JwkYCkgCQxAN"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = soi.misc.skill.branchLabels(2),
Callback = function(lxo)
local hai = soi.misc.skill
local ha = hai.wantedFrom(lxo, 2)

hai.raidWanted = ha
hai.raidOrder = hai.ordered(ha, hai.raidOrder)
hai.shown = _d("")
end,
}, _d("BwkYCjcCQxAN"))

pcall(function()
soi.misc.skillMainDropdown:UpdateSelection({})
end)

pcall(function()
soi.misc.skillRaidDropdown:UpdateSelection({})
end)

soi.misc.skillParagraph = soi.misc.skillSection:Paragraph({
Header = _d("JhwQGh0F"),
Body = soi.misc.skill.text(),
})

task.spawn(function()
local knse = soi.misc.util

while gaqj() do
if knse.indexOn or knse.achOn or knse.questOn or knse.accOn or knse.accBuyOn then
knse.currentProfile()
end

if knse.indexOn then
knse.claimIndex()
end

if knse.achOn then
knse.claimAchievement()
end

if knse.questOn then

if os.clock() - knse.questAskedAt > 20 or os.clock() - knse.weeklyAskedAt > 20 then
knse.askQuests()
end

knse.claimQuest()
end

if knse.accOn and os.clock() >= knse.accAt then
knse.accAt = os.clock() + 3
knse.equipBest()
end

local oql = soi.misc.cards

if not oql.inFlight then
if oql.mergeOn and os.clock() >= oql.mergeAt then
oql.run(true, nil, true)
elseif oql.deconOn and os.clock() >= oql.deconAt then
oql.run(false, nil, true)
end
end

if oql.mergeDone ~= oql.mergeShown then
oql.mergeShown = oql.mergeDone

pcall(function()
soi.misc.mergeParagraph:UpdateBody(soi.misc.cards.mergeText())
end)
end

if oql.deconDone ~= oql.deconShown then
oql.deconShown = oql.deconDone

pcall(function()
soi.misc.deconParagraph:UpdateBody(soi.misc.cards.deconText())
end)
end

local jtv = soi.misc.skill

if jtv.on and os.clock() >= jtv.at then

jtv.at = os.clock() + 2
jtv.upgrade()
end

local uwq = soi.misc.skill.text()

if jtv.shown ~= uwq then
jtv.shown = uwq

pcall(function()
soi.misc.skillParagraph:UpdateBody(uwq)
end)
end

if knse.accBuyOn and os.clock() >= knse.accBuyAt then

local akdq = knse.buyBest()

knse.accBuyAt = os.clock() + (akdq and 45 or 10)
end

local ukd = {
{ key = _d("HAYVCxA"), paragraph = soi.misc.indexParagraph, value = knse.indexText() },
{ key = _d("FAsZ"), paragraph = soi.misc.achParagraph, value = knse.achText() },
{ key = _d("BB0UHRw"), paragraph = soi.misc.questParagraph, value = knse.questText() },
{ key = _d("BQkSBQ"), paragraph = soi.misc.packParagraph, value = knse.packText() },
{ key = _d("FAsS"), paragraph = soi.misc.accParagraph, value = knse.accText() },
}

for eve, kess in ipairs(ukd) do
if kess.paragraph and knse.shown[kess.key] ~= kess.value then
knse.shown[kess.key] = kess.value

pcall(function()
kess.paragraph:UpdateBody(kess.value)
end)
end
end

task.wait(0.75)
end
end)

local ztk = phk:Section({
Side = _d("JwEWBhw"),
})

ztk:Paragraph({
Header = _d("MwECBgEYVg"),
Body = _d("NB0FAUgwWAYAUQsZA1gFG1EXBwNDVRoeCkRWVxQLFB1IAlkQSAYPHBNDVQkfCkgVUAYcAk4HGBEcHAJOBwFfWUgFBg0YEQcNFAIbVkYdDR9OGxlcEBwZBwYRERcBBQsbWBEhOFEaB1ZzFBFRHh0aXQZICAEdVlMUCxpOHBkRAQAUTgoXSFUOGBwbAh1VCR8KSAJZEEgFGQdWdRANAQsbAhEiCQULGlZCAgEFDQATQlUAHgIMVkUdDVEdGBlFVREeG0gBVAcNUR0cF18RAR8JSBlfVR8ZCwZWSBodUQ8aG1QRSAUGDRsRWEgFBg1WVRANAQsbAhEHAR8JSBVQBxoYCxtWRR0NUQwBEVYQGwVOBANSHkgTAQYDQltiezoAExEGAB4eSBREDBtRDwYSERAZBAcYBREHBxUdSBdfEUgTDwECEQIBBQZIAlkQSBIPGwJCVREeG0geUAMNX04qA0gcBhZOBhNUERtRGgATERYHBAAcE0NVRVEMBwJZVQseAw1WVwcHHE4cHlRVLhgdABNDGAkfQGJ8chQcEgYNBREeDRQeG1ZQVRoEAAYfXxJIBQ8EGkhVCghOAQJUGEgQAAxWQhQeFB1IH0VZSAIBSAJZEEgFARwXXVULEBwaH1QGSB4YDQQRFw0FGQ0TX1UbFB0bH14bG18"),
})

local ywb = phk:Section({
Side = _d("JwEWBhw"),
})

ywb:Header({
Name = _d("NgkFDQATQg"),
})

local jdmw

jdmw = ywb:Paragraph({
Header = _d("IgAQGkgPXgBIEg8dEVkB"),
Body = fmy(),
})

local jrcq = phk:Section({
Side = _d("JwEWBhw"),
})

jrcq:Header({
Name = _d("PBsdDwYSEQYAHh4"),
})

jrcq:Toggle({
Name = _d("NB0FAUgVQxQOBUEKA0hVAQICCRhVVRoeCg"),
Default = false,
Callback = function(rntd)
ye.island.autoRod = rntd
ye.islandAt = 0
end,
}, _d("HBsdDwYSbhQdBQE3BF4R"))

jrcq:Toggle({
Name = _d("MBkEBxhWWAYEEAAMVkMaDA"),
Default = false,
Callback = function(pxc)
ye.island.equipRod = pxc
ye.islandAt = 0
end,
}, _d("HBsdDwYSbhAZBAcYKUMaDA"))

jrcq:Toggle({
Name = _d("NB0FAUgVQxQOBU4JFVIQGwIBGg8"),
Default = false,
Callback = function(aah)
ye.island.autoAcc = aah
ye.islandAt = 0
end,
}, _d("HBsdDwYSbhQdBQE3F1IWDQIdBwRI"))

jrcq:Toggle({
Name = _d("MBkEBxhWUBYLFB0bGUMM"),
Default = false,
Callback = function(xgli)
ye.island.equipAcc = xgli
ye.islandAt = 0
end,
}, _d("HBsdDwYSbhAZBAcYKVAWCxQdGxlDDA"))

local dlij

dlij = jrcq:Paragraph({
Header = _d("PBsdDwYSERINEBw"),
Body = ye.shopIsland.text(),
})

local iaad = phk:Section({
Side = _d("OQ0XGg"),
})

iaad:Header({
Name = _d("Jw0TBxoCWQ"),
})

ye.rebirthToggle = iaad:Toggle({
Name = _d("NB0FAUgEVBcBAxoA"),
Default = false,
Callback = function(fbh)
ye.autoRebirth = fbh
end,
}, _d("FB0FATcEVBcBAxoA"))

ye.rebirthParagraph = iaad:Paragraph({
Header = _d("JhwQGh0F"),
Body = ye.rebirthText(),
})

iaad:Button({
Name = _d("IThRGgdWWAYEEAAM"),
Callback = function()
if not ye.gotoIsland() then
fqvu:Notify({
Title = _d("NAoQAAwZXxAMUScbGlAbDA"),
Description = _d("NgAQHAkVRRAaUQcbVl8aHFEcDRdVDEgICxxWHFUcAxdIF1YUAR9OARgRFEgcAQUTXwFG"),
Lifetime = 5,
})
end
end,
})

local xrf

xrf = iaad:Toggle({
Name = _d("NB0FAUg/QhkJHwpIPlAHDBIBGhM"),
Default = false,
Callback = function(bfuf)
ggy.island = bfuf
ggy.pending = false
ggy.pendingUntil = 0
ggy.paused = false
ggy.gaveUp = false
ggy.stoodDown = false
ggy.manualPause = false

if not bfuf then
return
end

if znb.otherTowerOn(_d("HQkDCgsZQxA")) then
ggy.island = false

pcall(function()
xrf:UpdateState(false)
end)

pcall(function()
fqvu:Dialog({
Title = _d("NB0FAUg/QhkJHwpIPlAHDBIBGhMRGg4X"),
Description = _d("IQAUTiAXXRkHBgsNGBEBBwYLGlZYBkgQAhoTUBERURwdGF8cBhZCSBdfEUgGBxweERoGFE4bGl4BSAUGDVZWFAUUTgcYXQxIAxsGBREaBhROARhXHAYYGg1WQxoHHE4JAhEUSAUHBRMfVTwEHAZWRR0JBU4HEFdZSB4cSAJEBwZRAQZWcAAcHk47Gl4BSAIBSBNQFgBRGgcBVAdIFgscBREcHAJOBwFfVRsdARxY"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})
end)

return
end

if znb.enabled and znb.hardcoreSlot() == nil then
ggy.island = false

pcall(function()
xrf:UpdateState(false)
end)

pcall(function()
fqvu:Dialog({
Title = _d("NB0FAUg/QhkJHwpIPlAHDBIBGhMRGg4X"),
Description = _d("OwdRHQQZRVUBAk4bE0VVHB5OCVZFGh8UHERWUBsMURoAExESCRwLSBlfGRFRHRwXQwEbUQ9IAl4CDQNOGgNfVQ4DAQVWUFUcHhkNBBEGBB4aRlZiEBxRAQYTEQEHUScbGlAbDFEGCQRVFgcDC0RWXgdIBRsaGBE0HQUBSCVdGhxRAQ4QHw"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})
end)

return
end

if not ggy.data then
ggy.island = false

pcall(function()
xrf:UpdateState(false)
end)

pcall(function()
fqvu:Dialog({
Title = _d("NB0FAUg/QhkJHwpIPlAHDBIBGhMRGg4X"),
Description = _d("IQAYHUgURBwEFU4AF0JVBh5OIBdDEQseHA0iXgINAyoJAlBZSAIBSAJZEEgFAR8TQ1IbUR0cF1YQG1ENCRhfGhxRDA1WQxAJFU4JGFVVCVEcHRgRFgkfAAcCERcNUR0cF0MBDRVA"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})
end)

return
end

local zy = ggy.remotes.request

if zy then
pcall(function()
zy:FireServer()
end)
end
end,
}, _d("FB0FATcfQhkJHwo3HlAHDBIBGhM"))

ggy.islandToggle = xrf

ggy.islandParagraph = iaad:Paragraph({
Header = _d("Nx0XCBs"),
Body = ggy.buffText(),
})

iaad:Button({
Name = _d("JQkEHQ1WeAYEEAAMVnkUGhUNBwRU"),
Callback = function()
if ggy.pauseRun then
ggy.pauseRun()
end
end,
})

iaad:Button({
Name = _d("MgEHC0gjQVUhAgIJGFVVIBAcDBVeBw0"),
Callback = function()
if ggy.giveUpRun then
ggy.giveUpRun()
end
end,
})

local opvs = phk:Section({
Side = _d("OQ0XGg"),
})

opvs:Header({
Name = _d("MwECBgEYVlUbGQEY"),
})

opvs:Toggle({
Name = _d("NB0FAUgURAxIEwsbAhEHBxU"),
Default = false,
Callback = function(rwaa)
ye.shop.autoBuyRod = rwaa
ye.shopAt = 0
end,
}, _d("FB0FATcURAw3EwsbAm4HBxU"))

opvs:Toggle({
Name = _d("NB0FAUgURAxIEwsbAhEXCRga"),
Default = false,
Callback = function(yrut)
ye.shop.autoBuyBait = yrut
ye.shopAt = 0
end,
}, _d("FB0FATcURAw3EwsbAm4XCRga"))

opvs:Toggle({
Name = _d("MBkEBxhWUxAbBU4aGVU"),
Default = false,
Callback = function(mire)
ye.shop.equipRod = mire
ye.shopAt = 0
end,
}, _d("EBkEBxgpUxAbBTEaGVU"))

opvs:Toggle({
Name = _d("MBkEBxhWUxAbBU4KF1gB"),
Default = false,
Callback = function(kyjy)
ye.shop.equipBait = kyjy
ye.shopAt = 0
end,
}, _d("EBkEBxgpUxAbBTEKF1gB"))

local iqx

iqx = opvs:Paragraph({
Header = _d("Nw0CGkgPXgBIEg8GVlQEHRge"),
Body = xxf(),
})
task.spawn(function()
local wbi = hpg()
local xtmt = fmy()
local uhee = xxf()
local qkfk = ye.shopIsland.text()

while gaqj() do
local oqx = hpg()

if oqx ~= wbi then
wbi = oqx
pcall(function()
kvx:UpdateBody(oqx)
end)
end

local tx = fmy()

if tx ~= xtmt then
xtmt = tx
pcall(function()
jdmw:UpdateBody(tx)
end)
end

local cu = xxf()

if cu ~= uhee then
uhee = cu
pcall(function()
iqx:UpdateBody(cu)
end)
end

local dqpb = ye.shopIsland.text()

if dqpb ~= qkfk then
qkfk = dqpb
pcall(function()
dlij:UpdateBody(dqpb)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while gaqj() do

if nnwb() and os.clock() >= (ye.shopAt or 0)
and os.clock() >= (ye.islandTripUntil or 0) then
ye.shopAt = os.clock() + 1
pcall(oegc)
end

if ye.shopIsland.active() and os.clock() >= (ye.islandAt or 0)
and os.clock() >= math.max(ye.shopHoldUntil or 0, ye.tpHoldUntil or 0) then
ye.islandAt = os.clock() + 2
pcall(ye.shopIsland.run)
end

task.wait(1)
end
end)

ktkc:Select()

local dwwy = ktkc:Section({
Side = _d("OQ0XGg"),
})

local puyz = ktkc:Section({
Side = _d("JwEWBhw"),
})

local kl = dwwy:Paragraph({
Header = _d("JhwQGh0F"),
Body = bg(),
})

dwwy:Divider()

uoy.npcToggle = dwwy:Toggle({
Name = _d("NB0FAUg4YTY"),
Default = false,
Callback = function(tfoc)

if tfoc and not uoy.story and #lce() == 0 then
pcall(function()
uoy.npcToggle:UpdateState(false)
end)

fqvu:Dialog({
Title = _d("NB0FAUg4YTZIHwsNEkJVCVEaCQRWEBw"),
Description = _d("JQESBUgXRVUEFA8bAhEaBhROJiZyVQ4DAQVWRR0NURkHBF0RG1EMDRpeAkRRARpWRQAaH04HGBE0HQUBSDVeGBgdCxwTESYcHhwRWBEhABQcDVZYBkgfARweWBsPURoHVlccDxkaSA9UAUY"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})

return
end

uoy.enabled = tfoc
end,
}, _d("FB0FATcYQRY"))

dwwy:Toggle({
Name = _d("IgkdBUgCXlUmIS0"),
Default = false,
Callback = function(ugtj)
uoy.walkToNpc = ugtj
end,
}, _d("AgkdBTcCXioGAQ0"))

dwwy:Dropdown({
Name = _d("MQEXCAEVRBkcCA"),
Search = false,
Multi = true,
Required = false,
Default = { _d("OwcDAwka") },
Options = alvm,
Callback = function(bkw)
local xrwg = {}

if type(bkw) == _d("AQkTAg0") then
for ltw, xyv in ipairs(alvm) do
if bkw[xyv] then
table.insert(xrwg, afvk[xyv])
end
end
end

if #xrwg == 0 then
xrwg = { _d("GwcDAwka") }
end

uoy.difficulties = xrwg
end,
}, _d("EQEXCAEVRBkcCA"))

dwwy:Toggle({
Name = _d("NB0FAUgkXhoFAg"),
Default = false,
Callback = function(lgzw)
gotr.enabled = lgzw
gotr.inBattle = false
gotr.pending = false
end,
}, _d("FB0FATcEXhoFAg"))

local nab = ktkc:Section({
Side = _d("OQ0XGg"),
})

nab:Header({
Name = _d("JgQeGg"),
})

nab:Paragraph({
Header = _d("PQcGThweVFUbHQEcBRECBwMF"),
Body = _d("JgQeGkhHEVhIOAAOH18cHAhOPBlGEBpRRgYZQxgJHU4HBBE7ARYGHBtQBw1YTgcEET0JHQIHAVQQBlE6BwFUB0RRHgQDQlUmIS1IFFABHB0LG1ZGHQ0fThsaXgFIQ04BBREXHQIXRnw7JgQeGkhEEVhIPz4rBR1VGhAHDAUdVRoeAQUFHVUhAgIJGFVVIBAcDBVeBw1fZGI0XgEAUR0EGUUGSB4ASDhhNkgTDxwCXRAbS04cAV5VJiEtSBBUFBwEHA0FERQcUQEGFVRZSBAADFZQVRoQBwxWUxobAk4NF1IdRntkPAFeVRweGQ0EEQcdHx1IH0JVHBkLSBlfGRFRHA0QRAYNFU4YF1gHSFxOIQVdFAYVTiAXQxELHhwNVl4bSBMBHB4RBgQeGhtWWAZIHgANVkMABlEPGx1UEUgXARpWRQIBEgtGfDsmBB4aG1ZeEw5LTgcYVFUbHQEcWhEBBwYLGgURAQkaC0gCRAcGAkA"),
})

znb.toggle = nab:Toggle({
Name = _d("NB0FAUglXRoc"),
Default = false,
Callback = function(see)
if see and znb.role[1] == znb.role[2] and znb.role[1] ~= _d("GxgS") then
znb.enabled = false

pcall(function()
znb.toggle:UpdateState(false)
end)

fqvu:Dialog({
Title = _d("NB0FAUglXRoc"),
Description = _d("JgQeGkhHERQGFU47Gl4BSENOCQRUVQoeGgBW") .. znb.roleLabel(1) .. _d("W0glBgkCERwbUQEGExEHHR9OCQVaEAxRCAcEEQEfGA0NWhEGB1EBBhMRGg5RGgATEQEfHk4bGl4BG1EGCQURAQdRDA1WQhoFFBoAH18SSBQCGxMf"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})

return
end

znb.enabled = see

if see then
znb.hasSlot2 = znb.detectSlot2()

if znb.hasSlot2 == false then
fqvu:Dialog({
Title = _d("NB0FAUglXRoc"),
Description = _d("JgQeGkhEERkHHgUbVl0aCxoLDFYcVQEFTgYTVBEbURoAExExHRACSDRQARwdC0glXRocUQkJG1QFCQIdRFZeB0g4AA4fXxwcFE46GV4YSENbWFZSGQ0QHA0SHVUKFAgHBFRVHBkLSAVUFgcfCkgFXRocUQ0JGBEXCQUaBBMfVToeGxwfXxJIAhoJD0JVBx9OGxpeAUhATh0YRRwEURoAE19b"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})
end
end
end,
}, _d("FB0FATcFXRoc"))

function znb.applyRoles()
if not znb.enabled then
return
end

if znb.role[1] == znb.role[2] and znb.role[1] ~= _d("GxgS") then
znb.enabled = false

pcall(function()
znb.toggle:UpdateState(false)
end)

pcall(function()
fqvu:Dialog({
Title = _d("NB0FAUglXRocUQEOEA"),
Description = _d("JgQeGkhHERQGFU47Gl4BSENOCQRUVQoeGgBW") .. znb.roleLabel(1) .. _d("W0glBgkCERwbUQEGExEHHR9OCQVaEAxRCAcEEQEfGA0NWhEUBhVOAQIRFgkfAAcCEQEJGgtIAkYaSAICBwJCW0giCxxWXhsNUR0EGUVVHB5OGxlcEBwZBwYRERAEAgtG"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})
end)

return
end

local zrwp = {}

if znb.towerSlot() ~= 1 and jzua.enabled then
jzua.enabled = false
table.insert(zrwp, _d("NB0FAUgiXgINAw"))

pcall(function()
jzua.ui:UpdateState(false)
end)
end

if znb.hardcoreSlot() == nil and ggy.island then
ggy.island = false
table.insert(zrwp, _d("NB0FAUg/QhkJHwpIPlAHDBIBGhM"))

pcall(function()
ggy.islandToggle:UpdateState(false)
end)
end

if znb.halloweenSlot() == nil and wrfj.run.enabled then
wrfj.run.enabled = false
table.insert(zrwp, _d("NB0FAUg+UBkEHhkNE19VPB4ZDQQ"))

pcall(function()
wrfj.toggle:UpdateState(false)
end)
end

if #zrwp > 0 then
pcall(function()
fqvu:Dialog({
Title = table.concat(zrwp, _d("VQkfCkg")) .. _d("VQcXCA"),
Description = _d("OwdRHQQZRVUBAk4bE0VVHB5OHB5QAUgFAR8TQ1UJHxdIG14HDV1OGxkRHBxRBgkSERsHBgYNBFRVHB5OGgNfW0g2Bx4TERwcUQ9IBV0aHFEPDxdYG0RRARpWRQAaH04pA0UaSCICBwIRGg4XQA"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})
end)
end
end

znb.oneDropdown = nab:Dropdown({
Name = _d("JgQeGkhH"),
Search = false,
Multi = false,
Required = false,

Default = 1,
Options = znb.optionsFor[1],
Callback = function(mqgo)
local uvvx = type(mqgo) == _d("AQkTAg0") and mqgo[1] or mqgo

if type(uvvx) == _d("BhwDBwYR") and znb.roleIds[uvvx] then
znb.role[1] = znb.roleIds[uvvx]
znb.picked[1] = uvvx
end

pcall(function()
znb.oneDropdown:UpdateName(_d("JgQeGkhHEZfo004") .. znb.roleLabel(1))
end)

if znb.applyRoles then
znb.applyRoles()
end
end,
}, _d("BgQeGjdHbkc"))

znb.twoDropdown = nab:Dropdown({
Name = _d("JgQeGkhE"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = znb.optionsFor[2],
Callback = function(whvx)
local zovg = type(whvx) == _d("AQkTAg0") and whvx[1] or whvx

if type(zovg) == _d("BhwDBwYR") and znb.roleIds[zovg] then
znb.role[2] = znb.roleIds[zovg]
znb.picked[2] = zovg
end

pcall(function()
znb.twoDropdown:UpdateName(_d("JgQeGkhEEZfo004") .. znb.roleLabel(2))
end)

if znb.applyRoles then
znb.applyRoles()
end
end,
}, _d("BgQeGjdEbkc"))

pcall(function()
znb.oneDropdown:UpdateSelection(_d("IQcGCxo"))
end)

pcall(function()
znb.twoDropdown:UpdateSelection(_d("OzgyTgoXRQEEFB0"))
end)

getgenv().ACBXSlot = znb

local rpdi = ktkc:Section({
Side = _d("OQ0XGg"),
})

rpdi:Header({
Name = _d("JwkYCkgUXgYb"),
})

rpdi:Toggle({
Name = _d("NB0FAUgkUBwMUSwHBUI"),
Default = false,
Callback = function(mtic)
soi.enabled = mtic
soi.pending = {}
soi.pendingUntil = {}

if mtic then
soi.cleared = {}
end
end,
}, _d("FB0FATcEUBwMLgwHBUI"))

rpdi:Toggle({
Name = _d("NB0FAUghUBkDURoHVmMUARVOKhlCBg"),
Default = false,
Callback = function(tzxn)
soi.walkToBoss = tzxn
end,
}, _d("FB0FATcBUBkDLhoHKUMUARUxChlCBg"))

local it
it = rpdi:Slider({
Name = _d("IgkdBUglQRANFQ"),
Minimum = 0,
Maximum = 72,
Default = 18,
Precision = 0,
Callback = function(vjw)
local bwvd = math.floor(vjw + 0.5)
soi.walkSpeed = bwvd

if it and bwvd ~= vjw then
it:UpdateValue(bwvd)
end
end,
}, _d("AgkdBTcFQRANFQ"))

rpdi:Dropdown({
Name = _d("JwkYCkgyWBMOGA0dGkUM"),
Search = false,
Multi = true,
Required = false,
Default = { _d("OwcDAwka") },
Options = mms,
Callback = function(ayv)
local zoe = {}

if type(ayv) == _d("AQkTAg0") then
for ctt, iznc in ipairs(mms) do
if ayv[iznc] then
table.insert(zoe, vmy[iznc])
end
end
end

if #zoe == 0 then
zoe = { _d("GwcDAwka") }
end

soi.difficulties = zoe
end,
}, _d("BwkYCjcSWBMOGA0dGkUM"))

function soi.pickedIds(osv)
local fqm = {}

if type(osv) == _d("AQkTAg0") then
for dzh, uy in ipairs(fuyf) do
if osv[uy] and orjy[uy] then
table.insert(fqm, orjy[uy])
end
end
elseif type(osv) == _d("BhwDBwYR") and orjy[osv] then
fqm = { orjy[osv] }
end

return fqm
end

rpdi:Dropdown({
Name = _d("JwkYCkg0XgYb"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = fuyf,
Callback = function(xsa)
soi.picks[1] = soi.pickedIds(xsa)
soi.cursor[1] = 1
soi.losses[1] = {}
end,
}, _d("BwkYCjcUXgYb"))

soi.boss2Dropdown = rpdi:Dropdown({
Name = _d("JwkYCkg0XgYbUUY7Gl4BSENH"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = fuyf,
Callback = function(nqac)
soi.picks[2] = soi.pickedIds(nqac)
soi.cursor[2] = 1
soi.losses[2] = {}
end,
}, _d("BwkYCjcUXgYbLh0EGUUqWg"))

pcall(function()
soi.boss2Dropdown:SetVisibility(false)
end)

task.spawn(function()
local gdiu = nil

while gaqj() do
local bat = znb.splitNpc()

if bat ~= gdiu then
gdiu = bat

local xvzk = soi.boss2Dropdown

if xvzk then
pcall(function()
xvzk:SetVisibility(bat)
end)
end
end

task.wait(0.5)
end
end)

puyz:Paragraph({
Header = _d("NB0FAUgwWBIABQ"),
Body = _d("Jg0dCwsCERoGFE4HBBEYBwMLSDhhNhtRCBoZXFUcGQtIAV4HBBUdSBRUGQcGQA"),
})

for bjsz, fdz in ipairs(tht) do
puyz:Dropdown({
Name = fdz.name,
Search = true,
Multi = true,
Required = false,
Default = {},
Options = fdz.options,
Callback = function(fg)
local vvw = {}

if type(fg) == _d("AQkTAg0") then
if fg.All then
for tuhk, cql in ipairs(fdz.ids) do
table.insert(vvw, cql)
end
else
for zzp, waz in ipairs(fdz.options) do
if fg[waz] and fdz.byName[waz] then
table.insert(vvw, fdz.byName[waz])
end
end
end
elseif type(fg) == _d("BhwDBwYR") then
if fg == _d("NAQd") then
for sl, fa in ipairs(fdz.ids) do
table.insert(vvw, fa)
end
else
vvw = { fdz.byName[fg] }
end
end

uoy.selectedByWorld[fdz.name] = vvw
end,
}, _d("GxgSMQ") .. fdz.id)
end

puyz:Toggle({
Name = _d("NB0FAUg1XhgYHQscExEmHB4cEQ"),
Default = false,
Callback = function(qkbg)
uoy.story = qkbg
uoy.battlePending = false
uoy.battlePendingUntil = 0
end,
}, _d("FB0FATcVXhgYHQscE24GHB4cEQ"))

uoy.storyDropdown = puyz:Dropdown({
Name = _d("MQEXCAEVRBkcGAsb"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = alvm,
Callback = function(uysn)
local uodv = type(uysn) == _d("AQkTAg0") and uysn[1] or uysn

if type(uodv) == _d("BhwDBwYR") and afvk[uodv] then
uoy.storyDifficulty = afvk[uodv]
end
end,
}, _d("EQEXCAEVRBkcGAsb"))

pcall(function()
uoy.storyDropdown:UpdateSelection(alvm[1])
end)

pcall(function()
uoy.storyDropdown:UpdateName(_d("MQEXCAEVRBkcGAsbVtP1ylE") .. alvm[1])
end)

puyz:Paragraph({
Header = _d("PQcGTikDRRpIMgEFBl0QHBROOwJeBxFRGQcEWgY"),
Body = _d("MwEWBhwFERAeFBwRVkIBBwMXSDhhNkhcTiYXXBADURoABF4ADxlOIQVUHgkYTkVWXhtIBQYNVl4bDVEKARBXHAsEAhwPERQKHhgNWhECBwMFARhWVRwZC0gXQxAJAk4BGBEaGhULGlZQGwxRDQcbWBsPUQwJFVpVGh4bBhIRFBtRDQcZXREHBgAbVlIZDRAcRnw7PBxRHA0GXRQLFB1IAlkQSBAcDRcRERoeHgwZRhsbURkAH10QSBgaSB9CVQcfQkgXXxFIHQsJAFQGSAMPARIRFwcCHQ0FERQEHgANWA"),
})

local rqj = zmd:Section({
Side = _d("OQ0XGg"),
})

rqj:Header({
Name = _d("IQcGCxo"),
})

local ukv
local bnm

local bxgz = {
remotes = {},
watcher = false,
hidMenu = false,

hardWatch = {},
}

function bxgz.hardPick(mery)
mery = mery == true

for uboo, ysxt in ipairs({ _d("NwkFGgQTdgAB"), _d("NwkFGgQTdgABQw") }) do
local du = lbjw:FindFirstChild(ysxt)

if du then
if du:GetAttribute(_d("IQcGCxo+UAcMIQcLHQ")) ~= mery then
pcall(function()
du:SetAttribute(_d("IQcGCxo+UAcMIQcLHQ"), mery)
end)
end

if du:GetAttribute(_d("IQcGCxo+UAcMIxsG")) ~= nil and du:GetAttribute(_d("IQcGCxo+UAcMIxsG")) ~= mery then
pcall(function()
du:SetAttribute(_d("IQcGCxo+UAcMIxsG"), mery)
end)
end
end
end
end

function bxgz.pinMode()
if not (jzua.enabled or jzua.nightmare) then
return
end

local klj = jzua.nightmare == true

for stde, ik in ipairs({ _d("NwkFGgQTdgAB"), _d("NwkFGgQTdgABQw") }) do
local hsih = lbjw:FindFirstChild(ik)

if hsih then
if hsih:GetAttribute(_d("IQcGCxo+UAcMIQcLHQ")) ~= klj then
pcall(function()
hsih:SetAttribute(_d("IQcGCxo+UAcMIQcLHQ"), klj)
end)
end

if bxgz.hardWatch[hsih] == nil then
local zn, oxjg = pcall(function()
return hsih:GetAttributeChangedSignal(_d("IQcGCxo+UAcMIQcLHQ")):Connect(function()
if not (jzua.enabled or jzua.nightmare) then
return
end

local wnkt = jzua.nightmare == true

if hsih.Parent and hsih:GetAttribute(_d("IQcGCxo+UAcMIQcLHQ")) ~= wnkt then
pcall(function()
hsih:SetAttribute(_d("IQcGCxo+UAcMIQcLHQ"), wnkt)
end)
end
end)
end)

if zn then
bxgz.hardWatch[hsih] = oxjg
end
end
end
end
end

function bxgz.pauseRows()
local tiv = hs:FindFirstChild(_d("JQQQFw0EdgAB")) and hs.PlayerGui:FindFirstChild(_d("Jg0FGgEYVgYvBAc"))

if not tiv then
return nil, nil
end

return tiv:FindFirstChild(_d("JQkEHQ0/XxMBHwccE3gbGAQa"), true), tiv:FindFirstChild(_d("JQkEHQ0/XxMBHwccE3IdDRIF"), true)
end

function bxgz.pauseState()
local jxbw = hs:FindFirstChild(_d("JQQQFw0EdgAB")) and hs.PlayerGui:FindFirstChild(_d("Jg0FGgEYVgYvBAc"))
local kw = jxbw and jxbw:FindFirstChild(_d("Mg0FPQ0CRRwGFh0"), true)

if not kw then
return nil
end

local jbr, gssz = pcall(function()
return kw:Invoke()
end)

if jbr and type(gssz) == _d("AQkTAg0") then
return gssz.pauseInfiniteEnabled == true
end

return nil
end

function bxgz.pauseAt(cnkw, bte)
bte = math.max(1, math.floor(tonumber(bte) or 1))

local zke, db = bxgz.pauseRows()

if not (zke and db) then
return false
end

local wr = pcall(function()
if tonumber(zke.Text) ~= bte then
zke.Text = tostring(bte)

if getconnections then
for pllq, avw in ipairs(getconnections(zke.FocusLost)) do
pcall(function()
avw:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end
end)

if cnkw ~= nil then
local eudj = bxgz.pauseState()

if eudj ~= nil and eudj ~= cnkw and getconnections then
pcall(function()
for iwc, ufrg in ipairs(getconnections(db.MouseButton1Click)) do
pcall(function()
ufrg:Fire()
end)
end
end)
end
end

return wr
end

function bxgz.restorePause()
jskh.triggered = false

if jskh.enabled and jskh.floor > 0 then
bxgz.pauseAt(true, jskh.floor)

pcall(function()
aep.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = jskh.floor,
})
end)

return
end

pcall(function()
aep.SaveClientData:FireServer({
pauseInfiniteEnabled = false,
pauseInfiniteAt = 1,
})
end)

bxgz.pauseAt(false, 1)
end

function bxgz.remote(jfl)
local uxd = bxgz.remotes[jfl]

if uxd and uxd.Parent then
return uxd
end

local llne = gb:FindFirstChild(_d("Jw0cARwTQg"))
local pha = llne and llne:FindFirstChild(jfl)

if pha then
bxgz.remotes[jfl] = pha
end

return pha
end

function bxgz.historyOpen()
for shv, bhmr in ipairs({ _d("NwkFGgQTdgAB"), _d("NwkFGgQTdgABQw") }) do
local pjr = lbjw:FindFirstChild(bhmr)
local clg = pjr and pjr:FindFirstChild(_d("IQcGCxo+WAYcHhwRMEMUBRQ"))

if clg and clg.Visible then
return true
end
end

return false
end

function bxgz.generationOpen()
local jkib = lbjw:FindFirstChild(_d("IQcGCxokVAYdHRovA1g"))
local oec = jkib and jkib:FindFirstChild(_d("Jw0CGwQCdwcJHAs"))

return oec ~= nil and oec.Visible
end

function bxgz.standDown(vv)
if not bxgz.hidMenu then
local vcy = true

pcall(function()
vcy = fqvu:GetState() ~= false
end)

if vcy then
bxgz.hidMenu = true

pcall(function()
fqvu:SetState(false)
end)
end
end

if bxgz.watcher then
return
end

bxgz.watcher = true

task.spawn(function()

local circ = os.clock() + 6

while gaqj() and os.clock() < circ and not vv() do
task.wait(0.2)
end

while gaqj() and vv() do
task.wait(0.4)
end

bxgz.watcher = false

if bxgz.hidMenu then
bxgz.hidMenu = false

pcall(function()
fqvu:SetState(true)
end)
end
end)
end

jzua.floorAt = 0
jzua.battleAt = 0
jzua.floor = nil
jzua.manualPause = false

task.spawn(function()
local xep = re(_d("NwkFGgQTZAUMEBoN"))
local gx = re(_d("JhEfDTwZRhAaNwIHGUM"))
local ckfi = re(_d("NwkFGgQTdBsM"))
local apk = re(_d("IQcGCxokRBstHwoNEg"))

if xep then
xep.OnClientEvent:Connect(function()
jzua.battleAt = os.clock()
end)
end

if gx then
gx.OnClientEvent:Connect(function(nce)
jzua.floorAt = os.clock()

if type(nce) == _d("Gx0cDA0E") and nce > 1 then
jzua.floor = nce
else
jzua.floor = nil
end
end)
end

if ckfi then
ckfi.OnClientEvent:Connect(function(nig)
if type(nig) == _d("AQkTAg0") and nig.mode == _d("AQcGCxo") then
jzua.floorAt = os.clock()
end
end)
end

if apk then
apk.OnClientEvent:Connect(function()

jzua.lastRunEnded = {
clock = os.clock(),
floor = jzua.floor,
}

task.delay(1, function()
local hgfz = lbjw:FindFirstChild(_d("IQcGCxokVAYdHRovA1g"))
local wb = hgfz and hgfz:FindFirstChild(_d("Jw0CGwQCdwcJHAs"))
local jitz = {}

if wb then
for zvi, knnq in ipairs(wb:GetDescendants()) do
if knnq:IsA(_d("IQ0JGiQXUxAE")) and knnq.Visible and knnq.Text ~= _d("") and #jitz < 12 then
jitz[#jitz + 1] = knnq.Text
end
end
end

if jzua.lastRunEnded then
jzua.lastRunEnded.texts = table.concat(jitz, _d("VRRR"))
end
end)

jzua.floorAt = 0
jzua.battleAt = 0
jzua.floor = nil

if jzua.manualPause then
bxgz.restorePause()
end
end)
end

end)

local function ine()
local rpr = os.clock()

if rpr - (jzua.floorAt or 0) < 90 and rpr - (jzua.battleAt or 0) < 12 then
return true
end

for tl, vag in ipairs({ _d("NwkFGgQTdgAB"), _d("NwkFGgQTdgABQw") }) do
local ovek = lbjw:FindFirstChild(vag)

if ovek then

local mtg = ovek:FindFirstChild(_d("IQcGCxowXRoHAyIJFFQZ"))

if mtg and mtg.Visible then
return true
end

local ay = ovek:FindFirstChild(_d("MwQeARolUgcNFAA"))

if ay and ay.Visible then
return true
end

local vgk = ovek:FindFirstChild(_d("NwkFGgQTYhYaFAsG"))

if vgk and vgk.Visible then
local ksf = vgk:FindFirstChild(_d("JB0YDQMxWAMNJB4qA0UBBx8"))

if ksf and ksf.Visible then
return true
end
end
end
end

return false
end

function bxgz.hardNow()

local cxx = lbjw:FindFirstChild(_d("NwkFGgQTdgAB"))
local ys = cxx and cxx:GetAttribute(_d("IQcGCxo+UAcMIQcLHQ"))

if ys ~= nil then
return ys == true
end

local ufhb = soi.misc.util.profile

return type(ufhb) == _d("AQkTAg0") and ufhb.lastTowerHard == true
end

function bxgz.endIfWrongMode(tvur)
if not ine() or bxgz.hardNow() == (tvur == true) then
return false
end

pcall(function()
if type(bnm) == _d("Ex0fDRwfXhs") then
bnm()
else
aep.EndTowerRemote:FireServer(1)
end
end)

jzua.floor = nil

return true
end

function bxgz.hardPickNow()
for pxj, wlt in ipairs({ _d("NwkFGgQTdgAB"), _d("NwkFGgQTdgABQw") }) do
local la = lbjw:FindFirstChild(wlt)
local eyub = la and la:GetAttribute(_d("IQcGCxo+UAcMIQcLHQ"))

if eyub ~= nil then
return eyub == true
end
end

return nil
end

function bxgz.parked()
for jwij, djqw in ipairs({ _d("NwkFGgQTdgAB"), _d("NwkFGgQTdgABQw") }) do
local xl = lbjw:FindFirstChild(djqw)

if xl then
local azf = xl:FindFirstChild(_d("IQcGCxowXRoHAyIJFFQZ"))
local zymk = xl:FindFirstChild(_d("MwQeARolUgcNFAA"))
local eyct = xl:FindFirstChild(_d("NwkFGgQTYhYaFAsG"))

if azf and azf.Visible
and not (zymk and zymk.Visible)
and not (eyct and eyct.Visible) then
return true
end
end
end

return false
end

jzua.ui = rqj:Toggle({
Name = _d("NB0FAUgiXgINAw"),
Default = false,
Callback = function(ke)

if jzua.quiet then
return
end

jzua.enabled = ke
jzua.pending = false
jzua.pendingUntil = 0

if ke then

if znb.enabled and znb.role[1] ~= _d("AQcGCxo") then
jzua.enabled = false

pcall(function()
jzua.ui:UpdateState(false)
end)

pcall(function()
fqvu:Dialog({
Title = _d("NB0FAUgiXgINA04HEFc"),
Description = _d("JgQeGkhHERwbUR0NAhEBB1E") .. znb.roleName(1) .. _d("W0glBg1WeBsOGAABAkhVKxAdHBpUVQcfAhFWQgEJAxobVl4bSAICBwIRRERRHQdWQhAcUT0EGUVVWVEaB1ZlGh8UHEgQWAcbBUA"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})
end)

return
end

if znb.otherTowerOn(_d("AQcGCxo")) then
jzua.enabled = false

pcall(function()
jzua.ui:UpdateState(false)
end)

pcall(function()
fqvu:Dialog({
Title = _d("NB0FAUgiXgINA04HEFc"),
Description = _d("NAYeGgATQ1UcHhkNBBEUHQUBBRdFHAcfTgEFERQEAwsJEkhVBx9CSBdfEUgFBgEFERQLEgEdGEVVBx8CEVZQGQQeGRtWXhsNURoHAVQHSAMbBlZQAUgQThwfXBBGUTodBF9VHBkPHFZeGw1RAQ4QERMBAx0cWhEaGlEaHQRfVQcfTikDRRpIIgIHAhEGB1ELCRVZVRsdARxWVhAcAk4BAkJVBwYASAJeAg0DQA"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})
end)

return
end

jzua.nightmare = false

pcall(function()
jzua.quiet = true
jzua.nightmareToggle:UpdateState(false)
jzua.quiet = false
end)

jzua.manualPause = false
jzua.paused = false
bxgz.restorePause()
jzua.pauseArmed = false

bxgz.endIfWrongMode(false)
bxgz.hardPick(false)

return
end

if not ine() then
return
end

jzua.paused = true
local yvnx = ukv()

fqvu:Notify({
Title = _d("NB0FAUgiXgINA04HEFc"),
Description = yvnx and _d("IQcGCxpWQwAGUR4JA0IQDF8") or _d("Jx0fTgEFERkBBwtEVlMAHFEAB1ZTBw0QBUgURAEcHgBIEF4ABhVA"),
Lifetime = 5,
})
end,
}, _d("FB0FATcCXgINAw"))

jzua.nightmareToggle = rqj:Toggle({
Name = _d("NB0FAUg4WBIABQMJBFRVPB4ZDQQ"),
Default = false,
Callback = function(ayf)
if jzua.quiet then
return
end

jzua.nightmare = ayf

if not ayf then

jzua.enabled = false
jzua.pending = false
jzua.pendingUntil = 0

bxgz.hardPick(false)

pcall(function()
jzua.quiet = true
jzua.ui:UpdateState(false)
jzua.quiet = false
end)

if ine() then
jzua.paused = true
local ptp = ukv()

fqvu:Notify({
Title = _d("NB0FAUg4WBIABQMJBFRVPB4ZDQQRGg4X"),
Description = ptp and _d("OwEWBhwbUAcNURwdGBEFCQQdDRIf") or _d("Jx0fTgEFERkBBwtEVlMAHFEAB1ZTBw0QBUgURAEcHgBIEF4ABhVA"),
Lifetime = 5,
})
end

return
end

if znb.enabled and znb.role[1] ~= _d("AQcGCxo") then
jzua.nightmare = false

pcall(function()
jzua.quiet = true
jzua.nightmareToggle:UpdateState(false)
jzua.quiet = false
end)

pcall(function()
fqvu:Dialog({
Title = _d("NB0FAUg4WBIABQMJBFRVPB4ZDQQRGg4X"),
Description = _d("OwEWBhwbUAcNUToHAVQHSBIBHRhFBkgQHUgiXgINA04BGBEGBB4aSEcdVQkfCkgPXgAaUR0EGUVVWVEHG1ZeG0g") .. znb.roleName(1) .. _d("VRoYCQACERsHBkBIJVQBSAICBwIRREgFAUgiXgINA04OH0MGHF8"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})
end)

return
end

pcall(function()
jzua.quiet = true
jzua.ui:UpdateState(false)
jzua.quiet = false
end)

jzua.enabled = true
jzua.manualPause = false
jzua.paused = false

bxgz.restorePause()
jzua.pauseArmed = false

bxgz.endIfWrongMode(true)
bxgz.hardPick(true)

jzua.pending = false
jzua.pendingUntil = 0
end,
}, _d("FB0FATcYWBIABQMJBFQqHB4ZDQQ"))

rqj:Header({
Name = _d("NB0FAUgmUAAbFE48GUYQGg"),
})

local dtk

dtk = rqj:Toggle({
Name = _d("NB0FAUgmUAAbFE4uGl4aGg"),
Default = false,
Callback = function(ntt)
jskh.triggered = false

if ntt and jskh.floor <= 0 then
jskh.enabled = false

pcall(function()
dtk:UpdateState(false)
end)

pcall(function()
aep.SaveClientData:FireServer({ pauseInfiniteEnabled = false })
end)

fqvu:Dialog({
Title = _d("NB0FAUgmUAAbFE4uGl4aGg"),
Description = _d("Jg0FTglWQRQdAgtIEF0aBwNOCRReAw1RXkgQWAcbBU5FVnAAHB5OOBdEBg1ROgcBVAdIHwsNEkJVHB5OAxheAkgGBg0EVFUcHk4bAl4FRg"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})

return
end

jskh.enabled = ntt

pcall(function()
aep.SaveClientData:FireServer({
pauseInfiniteEnabled = ntt,
pauseInfiniteAt = jskh.floor,
})
end)
end,
}, _d("FB0FATcGUAAbFDEOGl4aGg"))

rqj:Input({
Name = _d("JQkEHQ1WUAFIFwIHGUM"),
Placeholder = _d("EEYWQEhDAQ"),
AcceptedCharacters = _d("Ox0cDA0EQg"),
Callback = function(iwf)
local mumn = tonumber(iwf) or 0

if mumn < 0 then
mumn = 0
end

if mumn == jskh.floor then
return
end

jskh.floor = mumn
jskh.triggered = false

if mumn <= 0 and jskh.enabled then
jskh.enabled = false

pcall(function()
dtk:UpdateState(false)
end)
end

pcall(function()
aep.SaveClientData:FireServer({
pauseInfiniteAt = mumn,
pauseInfiniteEnabled = jskh.enabled,
})
end)
end,
}, _d("BQkEHQ0pUAE3FwIHGUM"))

rqj:Button({
Name = _d("JQkEHQ1WZRofFBw"),
Callback = function()
local phq = false

pcall(function()
phq = ukv()
end)

if phq then

jzua.manualPause = true
return
end

fqvu:Dialog({
Title = _d("JQkEHQ1WZRofFBw"),
Description = _d("OwdRAgEAVFUcHhkNBBEHHR9OHBkRBQkEHQ1WQxwPGRpIGF4CRg"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})
end,
})

rqj:Header({
Name = _d("NB0FAUgxWAMNUTsY"),
})

ks.toggle = rqj:Toggle({
Name = _d("NB0FAUgxWAMNUTsY"),
Default = false,
Callback = function(dkfw)
ks.triggered = false

if dkfw and ks.floor <= 0 then
ks.enabled = false

pcall(function()
ks.toggle:UpdateState(false)
end)

fqvu:Dialog({
Title = _d("NB0FAUgxWAMNUTsY"),
Description = _d("Jg0FTglWVhweFE4dBhETBB4BGlZQFwcHC0hGERMBAx0cVhxVKQQaB1Z2HB4UTj0GERsNFAobVkUaSBoABwERAgAUHA1WRRpIAhoHBh8"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})

return
end

ks.enabled = dkfw
end,
}, _d("FB0FATcRWAMNLhsY"))

rqj:Input({
Name = _d("MgEHC0gDQVUHH04OGl4aGg"),
Placeholder = _d("EEYWQEhBAQ"),
AcceptedCharacters = _d("Ox0cDA0EQg"),
Callback = function(hfd)
local rlt = tonumber(hfd) or 0

if rlt < 0 then
rlt = 0
end

if rlt == ks.floor then
return
end

ks.floor = rlt
ks.triggered = false

if rlt <= 0 and ks.enabled then
ks.enabled = false

pcall(function()
ks.toggle:UpdateState(false)
end)
end
end,
}, _d("EgEHCzcDQSoHHzEOGl4aGg"))

ks.weatherToggle = rqj:Toggle({
Name = _d("NB0FAUgRWAMNURsYVl4bSAYLCQJZEBo"),
Default = false,
Callback = function(vu)
ks.weatherTriggered = false

if vu and next(ks.weathers) == nil then
ks.weatherEnabled = false

pcall(function()
ks.weatherToggle:UpdateState(false)
end)

fqvu:Dialog({
Title = _d("Ig0QGgATQ1UvGBgNVmQF"),
Description = _d("IQESBUgXRVUEFA8bAhEaBhROHxNQAQAUHEgUVBkHBk4OH0MGHFFDSBlFHQ0DGQEFVFUcGQsaExEcG1EABwJZHAYWThwZERIBBwtIA0FVBx9A"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})

return
end

ks.weatherEnabled = vu
end,
}, _d("FB0FATcRWAMNLhsYKV4bNwYLCQJZEBo"))

rqj:Dropdown({
Name = _d("MgEHC0gDQVUfFA8cHlQHGw"),
Multi = true,
Required = false,
Options = { _d("IREBBgcZXw"), _d("NwQYFBIXQxE"), _d("OQEWBhwYWBsP"), _d("IgEfChsCXgcF"), _d("JgAQHAEYVhQG"), _d("JgEfCR0aUAcBBRc"), _d("OAcfDxoVWVUsHgMJH18"), _d("IwcYCg"), _d("OAkVC0gfX1UgFA8eE18"), _d("OAkfCQk") },
Callback = function(eccb)
ks.weathers = {}

if type(eccb) == _d("AQkTAg0") then
for mdj, arve in pairs(eccb) do
if arve then
ks.weathers[mdj] = true
end
end
end

ks.weatherTriggered = false
end,
}, _d("EgEHCzcDQSofFA8cHlQHGw"))

rqj:Input({
Name = _d("OAEfBwUDXFUOHQEHBEI"),
Placeholder = _d("RUhMTgkYSFUOHQEHBA"),
AcceptedCharacters = _d("Ox0cCxofUg"),
Callback = function(tnc)
local aynw = math.floor(tonumber(tnc) or 0)

if aynw < 0 then
aynw = 0
end

ks.weatherMinFloor = aynw
ks.weatherTriggered = false
end,
}, _d("GAEfBwUDXCoOHQEHBEI"))

rqj:Button({
Name = _d("MgEHC0gjQVU8HhkNBA"),
Callback = function()
if not ine() then
fqvu:Dialog({
Title = _d("MgEHC0gjQVU8HhkNBA"),
Description = _d("OwdRAgEAVFUcHhkNBBEHHR9OHBkREgEHC0gDQVUaGAkAAhEbBwZA"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})

return
end

fqvu:Dialog({
Title = _d("MgEHC0gjQVU8HhkNBA"),
Description = _d("MwcDCA0fRVUcGQtIFUQHGhQAHFZFGh8UHEgERBtXUToAH0JVCxAABhlFVQoUTh0YVRoGFEA"),
Buttons = {
{
Name = _d("MgdRDAkVWg"),
},
{
Name = _d("MgEHC0gDQQ"),
Callback = function()
local ccc = false

pcall(function()
ccc = bnm()
end)

if ccc then
return
end

task.defer(function()
task.wait(0.3)

fqvu:Dialog({
Title = _d("MgEHC0gjQVU8HhkNBA"),
Description = _d("OwdRCQEAVFUdAU4KA0UBBx9OCRhCAg0DCwxWHFUcGQtIBEQbSBwPEVZQGRoUDwwPERcNUQEeE0Nb"),
Buttons = {
{
Name = _d("MgcFTgEC"),
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

rqj:Button({
Name = _d("NgAUDQNWXRobAk4AH0IBBwMX"),
Callback = function()
local oyw = bxgz.remote(_d("Jw0AGw0FRSEHBgsaPlgGHB4cEQ"))

if not oyw then
fqvu:Dialog({
Title = _d("OQcCHUg+WAYcHhwR"),
Description = _d("IQAYHUgURBwEFU4AF0JVBh5OHBlGEBpRBgEFRRoaCE4aE1waHBRA"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})

return
end

bxgz.standDown(bxgz.historyOpen)

pcall(function()
oyw:FireServer()
end)
end,
})

rqj:Button({
Name = _d("NgAUDQNWVhAGFBwJAlgaBgI"),
Callback = function()

local hy = lbjw:FindFirstChild(_d("IQcGCxokVAYdHRovA1g"))
local ixk = hy and hy:FindFirstChild(_d("OhgUAC8TXz0BAhoHBEg"))

if not ixk then
fqvu:Dialog({
Title = _d("Mg0fCxoXRRwHHx0"),
Description = _d("IQAYHUgURBwEFU4AF0JVBh5ODxNfEBoQGgEZXwZIBgcGEl4CRg"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})

return
end

bxgz.standDown(bxgz.generationOpen)

pcall(function()
ixk:Fire()
end)
end,
})

uoy.bossTeams.towerSection = zmd:Section({
Side = _d("OQ0XGg"),
})

uoy.bossTeams.towerSection:Header({
Name = _d("IQcGCxpWZRAJHB0"),
})

uoy.bossTeams.towerSection:Paragraph({
Header = _d("PQcGThwZRhAaURoNF1wGSAYBGh0"),
Body = _d("Og4XVEgTUBYAURwdGBEAGxQdSAFZFBwUGA0EEQENEANIH0UGSAICBwIRFAQDCwkSSFUAHgIMBR9/Yj4AUlZUFAsZThwZRhAaUQwNGl4CSAMbBgURAgEFBkgCWRBIBQsJGxEFARIFDRIREwcDTgECHw"),
})

uoy.bossTeams.towerToggle = uoy.bossTeams.towerSection:Toggle({
Name = _d("IQcGCxpWZRAJHB0"),
Default = false,
Callback = function(pccs)
uoy.bossTeams.towersOn = pccs
end,
}, _d("AQcGCxopRRAJHB0"))

for axw, txn in ipairs({
{ kind = _d("AQcGCxo"), name = _d("PAYXBwYfRQxIMg8bAl0QSF5OJh9WHRwcDxoT") },
{ kind = _d("HQkDCgsZQxA"), name = _d("PBsdDwYSET0JAwoLGUMQ") },
}) do
local jo = math.clamp(math.floor(tonumber(uoy.bossTeams.towerPicked[txn.kind]) or 1), 1, 4)

uoy.bossTeams.towerPicked[txn.kind] = jo

uoy.bossTeams.towerUi[txn.kind] = uoy.bossTeams.towerSection:Dropdown({
Name = txn.name,
Search = false,
Multi = false,
Required = false,
Default = jo,
Options = { _d("IQ0QA0hH"), _d("IQ0QA0hE"), _d("IQ0QA0hF"), _d("IQ0QA0hC") },
Callback = function(tza)
local gbzu = type(tza) == _d("AQkTAg0") and tza[1] or tza
local exl = type(gbzu) == _d("BhwDBwYR") and tonumber(gbzu:match(_d("XU0VRUE"))) or nil

if exl then
uoy.bossTeams.towerPicked[txn.kind] = exl
uoy.bossTeams.save()
end

pcall(function()
uoy.bossTeams.towerUi[txn.kind]:UpdateName(txn.name .. _d("VYrxzEg") .. (gbzu or _d("IQ0QA0hH")))
end)
end,
}, _d("AQ0QAzcCXgINAzE") .. txn.kind)

pcall(function()
uoy.bossTeams.towerUi[txn.kind]:UpdateSelection(_d("IQ0QA0g") .. tostring(jo))
uoy.bossTeams.towerUi[txn.kind]:UpdateName(txn.name .. _d("VYrxzEgiVBQFUQ") .. tostring(jo))
end)
end

uoy.bossTeams.towerSection:Header({
Name = _d("Jh8QHkgZX1UOHQEHBA"),
})

uoy.bossTeams.towerSection:Paragraph({
Header = _d("Jh8QHkgCVBQFUQEGVlBVDh0BBwQ"),
Body = _d("IQAUTg8XXBBPAk4HAV9VGwYPGFoRGwcFTglWQRQdAgtGVnQUCxlOGgNdEEgYHUgXERMEHgEaVlAbDFEaABMRAQ0QA0gBXgcGUQgaGVxVHBkPHFZXGQceHEgZX1lIBhwBAkUQBlEHBgJeVRwZC0gRUBgNVh1IJVQBHBgADwURWFZRLx0CXlU8FA8FVmICCQFOWVZQGwxRXERWQhpIBQYNVlYUBRROBRdaEBtRGgATEQYfGBoLHhEcHAILBBARAgAUAEgXEQcdH04bAlAHHAJOHB5QAUgXAgcZQ1tIPwEcHlgbD1EHG1ZCAQcBHg0SERQGFU4cHlRVGgQASB1UEBgCTgECQlUbHQEcWDt/KVENCQVFGQ1RHB0YERINBR1IAlkQSAIPBRMRBh8YGgseERMaHgNIAlkcG1EeCRhUGURRDA0VUAAbFE4cHlRVDxADDVFCVQcGAEgFRhQYUQEGGkhVDhgcDQURHAYCBwwTETwGFwcGH0UQSCMBBxtCW2J7Ig0XRxBIEE4OGl4aGlEPHFYBVRweThwDQxtIBQYJAhEHHR0LSBlXE0Y"),
})

function uoy.bossTeams.swapStatusText()
local lcqy = uoy.bossTeams.swap
local vm = {}

if lcqy.on then
table.insert(vm, _d("OgZRQ0gBQxwcBQsGVkUaSAUGDVZWFAUUSRtWcAAcHk48E1AYSCIZCQYRBwcGHUY"))
else
table.insert(vm, _d("Og4XTkVWRR0NUQkJG1RSG1EdHxdBVQECTgQTVwFIEAIHGFRb"))
end

local ft = {
{ index = 1, floor = lcqy.floor, team = lcqy.team },
{ index = 2, floor = lcqy.floor2, team = lcqy.team2 },
}

for gm, wuk in ipairs(ft) do
if wuk.floor > 0 then
table.insert(vm, string.format(_d("Jh8QHkhTVU9IJQsJGxFQDFEIGhlcVQ4dAQcEEVAM"), wuk.index, wuk.team, wuk.floor))
else
table.insert(vm, string.format(_d("Jh8QHkhTVU9IHggOVhkbB1EIBBleB0gCCxxf"), wuk.index))
end
end

if uoy.bossTeams.swapMessage ~= _d("") then
table.insert(vm, uoy.bossTeams.swapMessage)
end

return table.concat(vm, _d("fw"))
end

function uoy.bossTeams.paintSwap()
pcall(function()
uoy.bossTeams.swapStatus:UpdateBody(uoy.bossTeams.swapStatusText())
end)
end

uoy.bossTeams.swapToggle = uoy.bossTeams.towerSection:Toggle({
Name = _d("Jh8QHkgCVBQFUQEGVlcZBx4c"),
Default = uoy.bossTeams.swap.on,
Callback = function(hd)
uoy.bossTeams.swap.on = hd

uoy.bossTeams.swapReset()

uoy.bossTeams.swapApply()
uoy.bossTeams.save()
end,
}, _d("Bh8QHjcCVBQFLgEGKVcZBx4c"))

uoy.bossTeams.swapInput = uoy.bossTeams.towerSection:Input({
Name = _d("MwQeARo"),
Placeholder = _d("EEYWQEhDAUVIWV5ISxEaDhdH"),
AcceptedCharacters = _d("Ox0cCxofUg"),
Callback = function(gwmc)
local jeo = tonumber(type(gwmc) == _d("BhwDBwYR") and gwmc:match(_d("XU0VRUE")) or gwmc)

if jeo then
uoy.bossTeams.swap.floor = jeo
uoy.bossTeams.swapReset()
uoy.bossTeams.swapApply()
uoy.bossTeams.save()
end
end,
}, _d("EwQeARo"))

uoy.bossTeams.swapDropdown = uoy.bossTeams.towerSection:Dropdown({
Name = _d("Jh8QHkgCXg"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(uoy.bossTeams.swap.team) or 1), 1, 4),
Options = { _d("IQ0QA0hH"), _d("IQ0QA0hE"), _d("IQ0QA0hF"), _d("IQ0QA0hC") },
Callback = function(ramn)
local pxpg = type(ramn) == _d("AQkTAg0") and ramn[1] or ramn
local qyhd = type(pxpg) == _d("BhwDBwYR") and tonumber(pxpg:match(_d("XU0VRUE"))) or nil

if qyhd then
uoy.bossTeams.swap.team = qyhd
uoy.bossTeams.swapReset()
uoy.bossTeams.swapApply()
uoy.bossTeams.save()
end

pcall(function()
uoy.bossTeams.swapDropdown:UpdateName(_d("Jh8QHkgCXlWK8cxI") .. (pxpg or _d("IQ0QA0hH")))
end)

uoy.bossTeams.paintSwap()
end,
}, _d("Bh8QHjcCXg"))

uoy.bossTeams.swapInput2 = uoy.bossTeams.towerSection:Input({
Name = _d("MwQeARpWAw"),
Placeholder = _d("EEYWQEhHAUVYUUZYVgxVBxcIQQ"),
AcceptedCharacters = _d("Ox0cCxofUg"),
Callback = function(tv)
local pw = tonumber(type(tv) == _d("BhwDBwYR") and tv:match(_d("XU0VRUE")) or tv)

if pw then
uoy.bossTeams.swap.floor2 = pw
uoy.bossTeams.swapReset()
uoy.bossTeams.swapApply()
uoy.bossTeams.save()
end
end,
}, _d("EwQeARopAw"))

uoy.bossTeams.swapDropdown2 = uoy.bossTeams.towerSection:Dropdown({
Name = _d("Jh8QHkgCXlVa"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(uoy.bossTeams.swap.team2) or 1), 1, 4),
Options = { _d("IQ0QA0hH"), _d("IQ0QA0hE"), _d("IQ0QA0hF"), _d("IQ0QA0hC") },
Callback = function(rsr)
local rnw = type(rsr) == _d("AQkTAg0") and rsr[1] or rsr
local ivl = type(rnw) == _d("BhwDBwYR") and tonumber(rnw:match(_d("XU0VRUE"))) or nil

if ivl then
uoy.bossTeams.swap.team2 = ivl
uoy.bossTeams.swapReset()
uoy.bossTeams.swapApply()
uoy.bossTeams.save()
end

pcall(function()
uoy.bossTeams.swapDropdown2:UpdateName(_d("Jh8QHkgCXlVaUYzo1BE") .. (rnw or _d("IQ0QA0hH")))
end)

uoy.bossTeams.paintSwap()
end,
}, _d("Bh8QHjcCXipa"))

uoy.bossTeams.swapStatus = uoy.bossTeams.towerSection:Paragraph({
Header = _d("Jh8QHkgFRRQcBB0"),
Body = uoy.bossTeams.swapStatusText(),
})

pcall(function()
local slgb = math.clamp(math.floor(tonumber(uoy.bossTeams.swap.team) or 1), 1, 4)
local cun = math.clamp(math.floor(tonumber(uoy.bossTeams.swap.team2) or 1), 1, 4)

uoy.bossTeams.swapDropdown:UpdateSelection(_d("IQ0QA0g") .. tostring(slgb))
uoy.bossTeams.swapDropdown:UpdateName(_d("Jh8QHkgCXlWK8cxIIlQUBVE") .. tostring(slgb))
uoy.bossTeams.swapDropdown2:UpdateSelection(_d("IQ0QA0g") .. tostring(cun))
uoy.bossTeams.swapDropdown2:UpdateName(_d("Jh8QHkgCXlVaUYzo1BEhDRADSA") .. tostring(cun))
end)

task.spawn(function()
local rmfh = uoy.bossTeams.swapStatusText()

while gaqj() do
local myt = uoy.bossTeams.swapStatusText()

if myt ~= rmfh then
rmfh = myt
uoy.bossTeams.paintSwap()
end

task.wait(2)
end
end)

if uoy.bossTeams.swap.on then
task.delay(2, function()
pcall(uoy.bossTeams.swapApply)
end)
end

uoy.bossTeams.section = zmd:Section({
Side = _d("JwEWBhw"),
})

uoy.bossTeams.section:Header({
Name = _d("NwcCHUgiVBQFAg"),
})

uoy.bossTeams.section:Paragraph({
Header = _d("PQcGTgoZQgZIBQsJG0JVHx4cAw"),
Body = _d("Og4XVEgYXgEAGAAPVlgGSAIZAQJSHQ0VTkVWVAMNAxdIEFgSAAVOHQVUBkgFBg1WRRAJHE4RGURVCR0cDRdVDEgZDx4TERkBHwsMVkQFRFEZAB9SHUgYHUgCWRBIIgIHAhFESAULCRsRAAYdCxsFEQYEHhpIRBEBCRoLG1ZFHQ1RDAkCRRkNX2RiOV9PSBQPCx4RFBoUD0gUVBkHBk4OH1YdHAJOHx9FHUgFBg1WRRAJHE4RGURVGBgNA1ZXGhpRBxxY"),
})

uoy.bossTeams.toggle = uoy.bossTeams.section:Toggle({
Name = _d("NwcCHUgiVBQFAg"),
Default = false,
Callback = function(kfa)
uoy.bossTeams.enabled = kfa
end,
}, _d("FwcCHTcCVBQFAg"))

for dimt, vf in ipairs(tht) do
local rpo = uoy.bossTeams.picked[vf.id] or 1

rpo = math.clamp(math.floor(tonumber(rpo) or 1), 1, 4)
uoy.bossTeams.picked[vf.id] = rpo

uoy.bossTeams.ui[vf.id] = uoy.bossTeams.section:Dropdown({
Name = vf.name,
Search = false,
Multi = false,
Required = false,

Default = rpo,
Options = { _d("IQ0QA0hH"), _d("IQ0QA0hE"), _d("IQ0QA0hF"), _d("IQ0QA0hC") },
Callback = function(unba)
local cky = type(unba) == _d("AQkTAg0") and unba[1] or unba
local ufe = type(cky) == _d("BhwDBwYR") and tonumber(cky:match(_d("XU0VRUE"))) or nil

if ufe then
uoy.bossTeams.picked[vf.id] = ufe

uoy.bossTeams.save()
end

pcall(function()
uoy.bossTeams.ui[vf.id]:UpdateName(vf.name .. _d("VYrxzEg") .. (cky or _d("IQ0QA0hH")))
end)
end,
}, _d("AQ0QAzcBXgcEFTE") .. vf.id)

pcall(function()
uoy.bossTeams.ui[vf.id]:UpdateSelection(_d("IQ0QA0g") .. tostring(rpo))
uoy.bossTeams.ui[vf.id]:UpdateName(vf.name .. _d("VYrxzEgiVBQFUQ") .. tostring(rpo))
end)
end

uoy.bossTeams.raidSection = zmd:Section({
Side = _d("JwEWBhw"),
})

uoy.bossTeams.raidSection:Header({
Name = _d("JwkYCkgiVBQFAg"),
})

uoy.bossTeams.raidSection:Paragraph({
Header = _d("PQcGThoXWBFIBQsJG0JVHx4cAw"),
Body = _d("Og4XVEgEUBwMAk4dBVRVHxkPHBNHEBpRGg0XXFUcGQtIBV0aHFEPBARUFAwITgAZXREbX2RiOV9PSBQPCx4RBwkYCkgUVBkHBk4BBRETBwQJAAIRAgEFBkgCWRBIBQsJGxEFARIFDRIREwcDTgECHw"),
})

uoy.bossTeams.raidToggle = uoy.bossTeams.raidSection:Toggle({
Name = _d("JwkYCkgiVBQFAg"),
Default = false,
Callback = function(heet)
uoy.bossTeams.raidsOn = heet
end,
}, _d("BwkYCjcCVBQFAg"))

for fnfi, zjl in ipairs(elys.Raids) do
if zjl.BossTitle and zjl.id then
local dtxm = uoy.bossTeams.raidPicked[zjl.id] or 1

dtxm = math.clamp(math.floor(tonumber(dtxm) or 1), 1, 4)
uoy.bossTeams.raidPicked[zjl.id] = dtxm

uoy.bossTeams.raidUi[zjl.id] = uoy.bossTeams.raidSection:Dropdown({
Name = zjl.BossTitle,
Search = false,
Multi = false,
Required = false,
Default = dtxm,
Options = { _d("IQ0QA0hH"), _d("IQ0QA0hE"), _d("IQ0QA0hF"), _d("IQ0QA0hC") },
Callback = function(jui)
local jsi = type(jui) == _d("AQkTAg0") and jui[1] or jui
local gcgv = type(jsi) == _d("BhwDBwYR") and tonumber(jsi:match(_d("XU0VRUE"))) or nil

if gcgv then
uoy.bossTeams.raidPicked[zjl.id] = gcgv
uoy.bossTeams.save()
end

pcall(function()
uoy.bossTeams.raidUi[zjl.id]:UpdateName(zjl.BossTitle .. _d("VYrxzEg") .. (jsi or _d("IQ0QA0hH")))
end)
end,
}, _d("AQ0QAzcEUBwMLg") .. zjl.id)

pcall(function()
uoy.bossTeams.raidUi[zjl.id]:UpdateSelection(_d("IQ0QA0g") .. tostring(dtxm))
uoy.bossTeams.raidUi[zjl.id]:UpdateName(zjl.BossTitle .. _d("VYrxzEgiVBQFUQ") .. tostring(dtxm))
end)
end
end

task.spawn(function()
local ebha = bg()

while gaqj() do
local was = bg()

if znb.enabled and znb.statusText then
was = znb.statusText()
end

was = was .. _d("f2IiCxoAVAdIBB5I") .. qj()

if was ~= ebha then
ebha = was
pcall(function()
kl:UpdateBody(was)
end)
end
task.wait(0.5)
end
end)

task.spawn(function()
while gaqj() do
for hwve, mdod in ipairs({ _d("NwkFGgQTdgAB"), _d("NwkFGgQTdgABQw") }) do
local divg = lbjw:FindFirstChild(mdod)
local jct = divg and divg:FindFirstChild(_d("NwkFGgQTYhYaFAsG"))
local iojj = divg and divg:FindFirstChild(_d("PQEVCyoXRQEEFCwdAkUaBg"))

if jct and jct.Visible and iojj and not iojj.Visible then
iojj.Visible = true
end
end

task.wait(0.5)
end
end)

task.spawn(function()
local jfep = false

while gaqj() do
if niym then
local ojc = lbjw:FindFirstChild(_d("IQcGCxokVAYdHRovA1g"))
local zf = ojc and ojc:FindFirstChild(_d("Jw0CGwQCdwcJHAs"))
local hkj = ojc and ojc:FindFirstChild(_d("Mg0fCxoXRRwGFigaF1wQ"))

if hkj and hkj.Visible then
hkj.Visible = false
end

local ps = zf and zf.Visible or false

if ps and not jfep then
local ljuc = zf:FindFirstChild(_d("NgQeHQ00RAEcHgA"))
local zwn = false

if ljuc then
for epzk, xflx in ipairs({ _d("OAcEHQ00RAEcHgBZNV0cCxo"), _d("NAsFBx4XRRAM") }) do
local cjc = ljuc[xflx]
if cjc then
for lh, xlju in ipairs(getconnections(cjc)) do
pcall(function()
xlju:Fire()
end)
zwn = true
end
end
end
end

if not zwn then
zf.Visible = false
else
task.spawn(function()
task.wait(0.3)
if zf.Parent and zf.Visible then
zf.Visible = false
end
end)
end
end

jfep = ps
else
jfep = false
end

task.wait(0.2)
end
end)

local gjl = {}

function gjl.active()
return uoy.enabled or uoy.story
end

function gjl.towerHolds()
if znb.enabled then
return false
end

if wrfj.run.enabled then
return true
end

return jzua.enabled and not jzua.paused
end

function gjl.ready(lgl, ndjf, uyc)
local zok = uoy.unlocked[lgl]

return (not zok or zok[ndjf] ~= false) and qbv(lgl, ndjf) <= uyc
end

function gjl.hasReadyTarget()
local eie = os.time()

for ma, tco in ipairs(lce()) do
for qza, lak in ipairs(pad()) do
if gjl.ready(tco, lak, eie) then
return true
end
end
end

return false
end

function gjl.backOff(kbpm, qbi)
bwtu(kbpm, qbi, os.time() + 5)
end

function gjl.findTarget()
for nvgg, zezh in ipairs(lce()) do
local jxy = oq(zezh)
local pzr = os.time() - (uoy.lastFetch[zezh] or 0) > 60

if pzr and jxy and not uoy.walkToNpc then
bf(jxy)
task.wait(0.3)
yecs(zezh)
end

for tjmy, jfs in ipairs(pad()) do
if gjl.ready(zezh, jfs, os.time()) then
return zezh, jfs
end
end
end

return nil
end

function uoy.bossTeams.slotForFight()
if znb.hasSlot2 == false then
return 1
end

if znb.busy(2) then
return 1
end

return 2
end

function uoy.bossTeams.slotTeam(kti)
local luv = lbjw:FindFirstChild(_d("Jg0FGgEYVgYvBAc"))
local yomq = luv and luv:FindFirstChild(_d("JgQeGjwTUBg") .. kti .. _d("Nx0FGgcY"), true)
local wzyh = yomq and yomq.Text

return wzyh and tonumber(wzyh:match(_d("XU0VRUE"))) or nil
end

function uoy.bossTeams.applyTeam(kyk, lal)
kyk = tonumber(kyk)

if not kyk then
return false
end

lal = tonumber(lal) or uoy.bossTeams.slotForFight()

if znb.busy(lal) then
return false
end

uoy.bossTeams.lastSlot = lal

local tve = uoy.bossTeams.slotTeam(lal) or uoy.bossTeams.applied[lal]

if tve == kyk then
return true
end

local dpit = bxgz.remote(_d("Jh8YGgseZRAJHA"))

if not dpit then
return false
end

local quf = pcall(function()
dpit:FireServer(kyk, false, lal)
end)

uoy.bossTeams.applied[lal] = kyk
task.wait(0.2)

return quf
end

function uoy.bossTeams.apply(dkqx)
if not uoy.bossTeams.enabled then
return
end

local supx = uoy.bossTeams.worldOf[dkqx]
local lwk = supx and uoy.bossTeams.picked[supx]

if not lwk then
return
end

uoy.bossTeams.applyTeam(lwk)
end

function uoy.bossTeams.applyTower(imbu, wk)
if not uoy.bossTeams.towersOn then
return false
end

local yz = uoy.bossTeams.towerPicked[imbu]

local wpv = uoy.bossTeams.swapFired[imbu]

if uoy.bossTeams.swap.on and type(wpv) == _d("AQkTAg0") then
yz = wpv[2] or wpv[1] or yz
end

if not yz then
return false
end

return uoy.bossTeams.applyTeam(yz, wk)
end

function uoy.bossTeams.applyRaid(vtva)
if not uoy.bossTeams.raidsOn then
return
end

local opjl = vtva and uoy.bossTeams.raidPicked[vtva]

if not opjl then
return
end

uoy.bossTeams.applyTeam(opjl)
end

function gjl.fight(vry, jydk)
local iaiv = oq(vry)

if not iaiv then
gjl.backOff(vry, jydk)
return false
end

local kc

if uoy.walkToNpc then
local ul = rcxb[vry]

if ul then
aep.TeleportToWorld:FireServer(ul)
task.wait(2.5)

local jie = oq(vry) or iaiv
local ozss = jie:GetPivot()

kc = vfr(ozss.Position + ozss.LookVector * 6, function()
return not gjl.active() or not uoy.walkToNpc
end)

if kc then
yecs(vry)
kc = gjl.ready(vry, jydk, os.time())
end
end
else
kc = bf(iaiv)
end

if not kc then
gjl.backOff(vry, jydk)
return false
end

task.wait(0.4)
uoy.bossTeams.apply(vry)
uoy.activeDifficulty[vry] = jydk
aep.SetNPCDifficulty:FireServer(vry, jydk)
task.wait(0.4)

uoy.currentBattle = {
npcId = vry,
difficulty = jydk,
}
jjbg = vry
lgri = jydk
aep.StartNPCBattle:FireServer(vry)
bwtu(vry, jydk, os.time() + 10)
uoy.battlePending = true
uoy.battlePendingUntil = os.time() + 30
task.wait(1)

return true
end

uoy.workPending = function()

if soi.misc and soi.misc.cards and soi.misc.cards.inFlight then
return true
end

if not gjl.active() then
return false
end

if uoy.battlePending then
return true
end

local ri = znb.npcSlot()

if ri and znb.busy(ri) then
return true
end

return gjl.hasReadyTarget()
end

task.spawn(function()
while gaqj() do

local nsc = (znb.enabled and (soi.enabled or gotr.enabled or soi.worldBoss.enabled))
or gjl.towerHolds()
or not znb.slotFree(znb.npcSlot())

or (soi.misc and soi.misc.cards and soi.misc.cards.inFlight)
or (uoy.battlePending and os.time() < uoy.battlePendingUntil)

if gjl.active() and not nsc then
local wiyf, enwx = gjl.findTarget()

if wiyf then
gjl.fight(wiyf, enwx)
end
end

task.wait(0.5)
end
end)

task.spawn(function()
while gaqj() do

local psuw = {}

if soi.enabled then
local casn = znb.roleSlot(_d("GxgS"))

if casn then
table.insert(psuw, casn)
end

if znb.splitNpc() and casn ~= 2 then
table.insert(psuw, 2)
end
end

local ws = gb:FindFirstChild(_d("JwkYCjsCUAEdAg"))

if #psuw > 0 and ws and (not gotr.enabled or znb.splitNpc()) and (znb.enabled or not uoy.workPending()) then
for bvel, wvml in ipairs(psuw) do
local yzh = ws

local cq = soi.bossFor(wvml)
local mkrh = yzh:GetAttribute(_d("PBs+Hg0Y")) == true or yzh:GetAttribute(_d("MwcDDQ0S")) == true
local rymu = cq ~= nil and yzh:GetAttribute(_d("Jw0QChEp") .. cq) == true
local dijo = cq and ci(cq)

if cq and soi.pending[cq] and os.time() >= (soi.pendingUntil[cq] or 0) then
soi.pending[cq] = false
soi.cleared[cq] = nil
end

if cq and znb.slotFree(wvml) and mkrh and rymu and soi.cleared[cq] ~= dijo and not soi.pending[cq] then
local pevy = xjgt[cq]
local wn = pevy and oq(pevy)
local yowe = false

if wn then
if soi.walkToBoss then
local aiyz = clwz[cq]
local iym = hs.Character and hs.Character:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))
local mmny = wn:GetPivot().Position
local dojc = iym and (iym.Position - mmny).Magnitude <= 15

if dojc then
yowe = true
elseif aiyz then
aep.TeleportToWorld:FireServer(aiyz)

local ibat = os.clock()
while os.clock() - ibat < 2.5 and soi.enabled do
task.wait(0.1)
end

if soi.enabled then
local gy = oq(pevy) or wn
local fq = gy:GetPivot()
local ypbb = fq.Position + fq.LookVector * 6
yowe = bot(ypbb, soi.walkSpeed, function()
return not soi.enabled or not soi.walkToBoss
end)
end
end

if not yowe then
yowe = bf(wn)
end
else
yowe = bf(wn)
end

if yowe then
task.wait(0.5)
end
end

if yowe then
soi.inFlight[cq] = wvml
soi.pending[cq] = true
soi.pendingUntil[cq] = os.time() + 15
soi.cleared[cq] = dijo

local up = soi.difficulties[1] or _d("GwcDAwka")
local mcj = soi.progress[cq]

if mcj then
local knmw = mcj.unlocked
local ocrg = mcj.cooldowns

for yaiy, bdr in ipairs(soi.difficulties) do
local lkgw = not knmw or knmw[bdr] ~= false
local nkh = ocrg and tonumber(ocrg[bdr]) or 0

if lkgw and nkh <= 0 then
up = bdr
break
end
end
end

uoy.bossTeams.applyRaid(cq)
aep.SetRaidDifficulty:FireServer(up, cq)
task.wait(0.3)
aep.StartRaidBattle:FireServer(cq)
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while gaqj() do
local sbpg = gotr.inBattle and os.time() < gotr.inBattleUntil

if gotr.enabled and (znb.enabled or not uoy.workPending()) and not sbpg and znb.slotFree(znb.roomSlot()) and not (gotr.pending and os.time() < gotr.pendingUntil) then
local eyj = gotr.progress

if eyj == nil then
aep.RequestInfiniteRoomProgress:FireServer()
task.wait(0.5)
else
local rsyw = nil

for esfm, jeex in ipairs(vukn.Milestones) do
if vukn.isMilestoneUnlocked(jeex, eyj) and not vukn.isMilestoneCleared(jeex, eyj) then
rsyw = jeex
break
end
end

if rsyw then

local kpys = znb.roomSlot()

gotr.currentRoom = rsyw
gotr.inBattle = true
gotr.inBattleUntil = os.time() + 60
gotr.pending = true
gotr.pendingUntil = os.time() + 10

local dt = lbjw:FindFirstChild(kpys == 2 and _d("Jw0CCxw0UAEcHQsuGl4aGkM") or _d("Jw0CCxw0UAEcHQsuGl4aGg"))
if dt and dt:IsA(_d("NwEfCgkUXRAtBwsGAg")) then
dt:Fire(rsyw, _d("HAYXBwYfRRA3AwEHGw"))
end

local rys = lbjw:FindFirstChild(kpys == 2 and _d("JhwQHBw/XxMBHwccE2MaBxwsCQJFGQ1D") or _d("JhwQHBw/XxMBHwccE2MaBxwsCQJFGQ0"))
if rys and rys:IsA(_d("NwEfCgkUXRAtBwsGAg")) then
rys:Fire(rsyw)
end

aep.StartBattle:FireServer(_d("HAYXBwYfRRA3AwEHGw"), {
milestone = rsyw,
slot = kpys,
})
task.wait(2)
end
end
end

task.wait(1)
end
end)

local function bwxu(ioj, lx)
local xmvo = lbjw:FindFirstChild(_d("JgsDCw0YdgAB"))

if not xmvo then
return
end

local rga = xmvo:FindFirstChild(ioj)
local ynr = rga and rga:FindFirstChild(_d("IwkdGw06UBcNHQ"), true)
local ym = rga and rga:FindFirstChild(_d("OQkTCwQ"), true)

if not rga then
return
end

local bs = false

if ynr then
bs = ynr.Text == _d("OgY")
elseif ym then
bs = not string.lower(ym.Text):find(_d("Gg4X"), 1, true)
end

if bs ~= lx then
for gvd, oexk in ipairs(getconnections(rga.MouseButton1Click)) do
local jpc = oexk.Function

if type(jpc) == _d("Ex0fDRwfXhs") then
pcall(jpc)
else
pcall(function()
oexk:Fire()
end)
end
end
end
end

getgenv().ACBXSetRollButton = bwxu

local function rgau(xfek)
bwxu(_d("JB0YDQMkXhkEMxscAl4b"), xfek)
bwxu(_d("NB0FAToZXRkqBBocGV8"), xfek)
end

getgenv().ACBXSetRollUi = rgau
ffuc.setRollButton = bwxu

pcall(function()
aep.SaveClientData:FireServer({ autoHideBattle = false })
end)

task.defer(function()
task.wait(0.5)

local gzr = lbjw:FindFirstChild(_d("NwkFGgQTdgAB"))
local sovv = gzr and gzr:FindFirstChild(_d("NwkFGgQTYhYaFAsG"))
local thiw = gzr and gzr:FindFirstChild(_d("PQEVCyoXRQEEFCwdAkUaBg"))

if thiw and thiw.Visible and sovv and not sovv.Visible and zv() then
for rxt, mfa in ipairs(getconnections(thiw.MouseButton1Click)) do
local tpcg = mfa.Function

if type(tpcg) == _d("Ex0fDRwfXhs") then
pcall(tpcg)
else
pcall(function()
mfa:Fire()
end)
end
end
end
end)

rgau(true)

task.spawn(function()
while gaqj() do

if ffuc.autoRoll then
bwxu(_d("NB0FAToZXRkqBBocGV8"), true)
end

if ffuc.autoQuickRoll then
bwxu(_d("JB0YDQMkXhkEMxscAl4b"), true)
end

task.wait(1)
end
end)

local function ve()

if jzua.floor then
return jzua.floor
end

local wvgr = lbjw:FindFirstChild(_d("NwkFGgQTdgAB"))

if not wvgr then
return nil
end

for eofr, lxq in ipairs({ _d("IQcGCxowXRoHAyIJFFQZ"), _d("Jx0fKAQZXgckEAwNGg") }) do
local kfwu = wvgr:FindFirstChild(lxq)

if kfwu and kfwu.Visible and kfwu.Text then
local hnap = tonumber(kfwu.Text:match(_d("XU0VRUE")))

if hnap then
return hnap
end
end
end

local cnif = wvgr:FindFirstChild(_d("MwQeARolUgcNFAA"))
local ssyc = cnif and cnif:FindFirstChild(_d("IQcBLAkE"))
local sbs = ssyc and ssyc:FindFirstChild(_d("MwQeARo6UBcNHQ"))

if sbs then
return tonumber(sbs.Text:match(_d("XU0VRUE")))
end

return nil
end

function uoy.bossTeams.swapRows(shzr)
local rpc = lbjw:FindFirstChild(_d("Jg0FGgEYVgYvBAc"))
local jur = rpc and rpc:FindFirstChild(_d("NB0FATsBUAU") .. shzr .. _d("JwcG"), true)

if not jur then
return nil
end

return jur:FindFirstChild(_d("NB0FATsBUAU") .. shzr .. _d("NgAUDQM")),
jur:FindFirstChild(_d("NB0FATsBUAU") .. shzr .. _d("IQ0QAw")),
jur:FindFirstChild(_d("NB0FATsBUAU") .. shzr .. _d("MwQeARo"))
end

function uoy.bossTeams.swapOn(xcdk)
local gelk = lbjw:FindFirstChild(_d("Jg0FGgEYVgYvBAc"))
local udp = gelk and gelk:FindFirstChild(_d("Mg0FPQ0CRRwGFh0"), true)

if not udp then
return nil
end

local nkbo, xcb = pcall(function()
return udp:Invoke()
end)

if nkbo and type(xcb) == _d("AQkTAg0") then
return xcb[xcdk == 1 and _d("FB0FATwTUBg7Bg8YM18UCh0LDA") or _d("FB0FATwTUBg7Bg8YRHQbCRMCDRI")] == true
end

return nil
end

function uoy.bossTeams.swapBox(sdha, zvb)
if tonumber(sdha.Text) == zvb then
return
end

sdha.Text = tostring(zvb)

if getconnections then
for chs, xhs in ipairs(getconnections(sdha.FocusLost)) do
pcall(function()
xhs:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end

function uoy.bossTeams.swapSet(qrjd, byz, kjya, qvn)
local yio, gawx, ezld = uoy.bossTeams.swapRows(qrjd)

if not (yio and gawx and ezld) then
return false
end

kjya = math.max(1, math.floor(tonumber(kjya) or 1))
qvn = math.clamp(math.floor(tonumber(qvn) or 1), 1, 4)

uoy.bossTeams.swapBox(ezld, kjya)
uoy.bossTeams.swapBox(gawx, qvn)

local phx = uoy.bossTeams.swapOn(qrjd)

if phx ~= nil and phx ~= (byz == true) and getconnections then
pcall(function()
for nszm, dsc in ipairs(getconnections(yio.MouseButton1Click)) do
pcall(function()
dsc:Fire()
end)
end
end)
end

local nm = qrjd == 1 and _d("") or _d("Rw")

pcall(function()
aep.SaveClientData:FireServer({
[_d("FB0FATwTUBg7Bg8Y") .. nm .. _d("MAYQDAQTVQ")] = byz == true,
[_d("FB0FATwTUBg7Bg8Y") .. nm .. _d("IQ0QAw")] = qvn,
[_d("FB0FATwTUBg7Bg8Y") .. nm .. _d("MwQeARo")] = kjya,
})
end)

return true
end

function uoy.bossTeams.swapApply()
local owd = uoy.bossTeams
local meye = owd.swap
local amm = true

if meye.on then
amm = owd.swapSet(1, meye.floor > 0, meye.floor, meye.team)
amm = owd.swapSet(2, meye.floor2 > 0, meye.floor2, meye.team2) and amm
else
amm = owd.swapSet(1, false, meye.floor, meye.team)
amm = owd.swapSet(2, false, meye.floor2, meye.team2) and amm
end

owd.swapMessage = _d("")

if not amm then
owd.swapMessage = _d("IQAUTg8XXBBPAk4pA0UaSCULCRsRJh8QHkgEXgIbUQ8aExEbBwVOCgNYGRxRFw0CEVhIAwscBEgcBhZA")
end

owd.paintSwap()
end

function uoy.bossTeams.swapReset(cksd)
local ayn = uoy.bossTeams

if cksd then
ayn.swapFired[cksd] = nil
else
ayn.swapFired = {}
end
end

function uoy.bossTeams.swapTick()
local qgzk = uoy.bossTeams
local dvl = qgzk.swap

if not dvl.on or (dvl.floor <= 0 and dvl.floor2 <= 0) then
if next(qgzk.swapFired) ~= nil then
qgzk.swapFired = {}
end

return
end

local xv = os.clock()
local fxga = bxgz.remote(_d("Jh8YGgseZRAJHA"))

if xv - (qgzk.swapWroteAt or 0) > 10 then
qgzk.swapWroteAt = xv
qgzk.swapApply()
end

local lt = {
{
kind = _d("AQcGCxo"),
slot = znb.towerSlot(),

live = xv - (jzua.floorAt or 0) < 90,
floor = ve(),

own = true,
},
{
kind = _d("HQkDCgsZQxA"),
slot = znb.hardcoreSlot(),
live = ggy.active(),
floor = ggy.floorNow(),

own = false,
},
}

local trdn = {
{ index = 1, floor = dvl.floor, team = dvl.team },
{ index = 2, floor = dvl.floor2, team = dvl.team2 },
}

for awf, del in ipairs(lt) do
if not del.live then

qgzk.swapFired[del.kind] = nil
elseif del.own and fxga and del.floor then
local vsa = qgzk.swapFired[del.kind]

for wsao, vsz in ipairs(trdn) do
local hr = type(vsa) == _d("AQkTAg0") and vsa[vsz.index]

if vsz.floor > 0 and del.floor == vsz.floor and not hr then
local bbpo = pcall(function()
fxga:FireServer(math.clamp(math.floor(vsz.team), 1, 4), true, del.slot or 1)
end)

if bbpo then
vsa = type(vsa) == _d("AQkTAg0") and vsa or {}
vsa[vsz.index] = vsz.team
qgzk.swapFired[del.kind] = vsa

qgzk.swapMessage = string.format(_d("NgkCGgQTERMEHgEaVhQRSFxOGwFYAQsZCwxWRRpIJQsJGxFQDF8"), del.floor, vsz.team)
qgzk.paintSwap()
end
end
end
end
end
end

task.spawn(function()
while gaqj() do
pcall(uoy.bossTeams.swapTick)
task.wait(0.5)
end
end)

local function tma()

return gjl.active() and gjl.hasReadyTarget()
end

function soi.worldBoss.remote(bgjt)
local isz = soi.worldBoss

isz.remotes = isz.remotes or {}

local sfu = isz.remotes[bgjt]

if sfu and sfu.Parent then
return sfu
end

local dbw = bxgz.remote(bgjt)

if dbw then
isz.remotes[bgjt] = dbw
end

return dbw
end

function soi.worldBoss.setRepeat(nptc)
local bvc = soi.worldBoss
local pixl = bvc.remote(_d("IgcDAgw0XgYbMA0cH14b"))

if not pixl then
return false
end

local yyb = bvc.state
local fs = type(yyb) == _d("AQkTAg0") and yyb.repeatOn == true

if fs == (nptc and true or false) then
bvc.repeatIntent = nil

return true
end

if nptc then
local hzq = workspace:FindFirstChild(_d("IgcDAgw0XgYbMBwNGFA"))
local acjp = hzq and (hzq:FindFirstChild(_d("Ng0dAiUXSQ")) or hzq)
local gyxy = hs.Character and hs.Character:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if not (acjp and gyxy) then
return false
end

local yna, eeps = pcall(function()
return acjp:GetPivot()
end)

if not yna or (gyxy.Position - eeps.Position).Magnitude > 60 then
return false
end
end

if bvc.repeatIntent == nptc and os.clock() - (bvc.repeatAskedAt or 0) < 20 then
return false
end

bvc.repeatIntent = nptc

pcall(function()
pixl:FireServer(_d("Bw0BCwkC"))
end)

bvc.repeatAskedAt = os.clock()

return true
end

function soi.worldBoss.requestSync()
local pyqr = soi.worldBoss
local uiwb = pyqr.remote(_d("IgcDAgw0XgYbMA0cH14b"))

if uiwb then
pcall(function()
uiwb:FireServer(_d("BhEfDQ"))
end)
end

pyqr.askedAt = os.clock()
end

function soi.worldBoss.hasWork()
local pflu = soi.worldBoss
local dwg = pflu.state

if not pflu.enabled or type(dwg) ~= _d("AQkTAg0") then
return false
end

local jvwt = pflu.isOpen()

if jvwt == nil then
jvwt = dwg.open == true
end

return jvwt and dwg.inFight ~= true
end

soi.worldBoss.bossUp = function()
local vmpa = soi.worldBoss

if not vmpa.enabled then
return false
end

local jk = vmpa.isOpen()

if jk ~= nil then
return jk == true
end

local ebuf = vmpa.state

return type(ebuf) == _d("AQkTAg0") and ebuf.open == true
end

function soi.worldBoss.meter()
local qrd = soi.worldBoss
local kbb = os.clock()

if kbb - (qrd.meterAt or 0) < 1 then
return qrd.meterCurrent, qrd.meterMax
end

qrd.meterAt = kbb
qrd.meterCurrent = nil
qrd.meterMax = nil

local hpn = gb:FindFirstChild(_d("IgcDAgw0XgYbIhoJAkQG"))
local hnkc = hpn and tonumber(hpn:GetAttribute(_d("OA0FCxo")))
local lbl = hpn and tonumber(hpn:GetAttribute(_d("OA0FCxo7UA0")))

if hnkc and lbl and lbl > 0 then
qrd.meterCurrent = hnkc
qrd.meterMax = lbl

return qrd.meterCurrent, qrd.meterMax
end

local function viyr(mhfn)
if type(mhfn) ~= _d("BhwDBwYR") then
return nil
end

local bwy, ee = mhfn:match(_d("XTNUCk1YbF5BVB1CXmo+JTMFBRRsSkE"))
local nunw = tonumber(bwy)

if not nunw then
return nil
end

local fnhh = ({ K = 1000, M = 1000000, B = 1000000000 })[string.upper(ee or _d(""))] or 1

return nunw * fnhh
end

local seep = lbjw:FindFirstChild(_d("IgcDAgw0XgYbMw8GGFQHLwQH"))
local pef = seep and seep:FindFirstChild(_d("NwkfAA0E"))
local dqb = pef and pef:FindFirstChild(_d("OA0FCxo0UAc"))
local fh = dqb

if dqb and not dqb:IsA(_d("IQ0JGiQXUxAE")) then
fh = dqb:FindFirstChild(_d("IQ0JGg"))
end

local lig = fh and fh:IsA(_d("IQ0JGiQXUxAE")) and fh.Text or nil

if type(lig) == _d("BhwDBwYR") then
local xsi, tqv = lig:match(_d("XTMvQTVdGFpAX0VB"))

qrd.meterCurrent = viyr(xsi)
qrd.meterMax = viyr(tqv)
end

return qrd.meterCurrent, qrd.meterMax
end

function soi.worldBoss.meterFull()
local wjxk, miqf = soi.worldBoss.meter()

return wjxk ~= nil and miqf ~= nil and miqf > 0 and wjxk >= miqf
end

soi.worldBoss.holdsFishing = function()
local awth = soi.worldBoss

if not awth.enabled then
return false
end

if awth.fishingMode == _d("AgkYGg") then
return awth.bossUp()
end

return os.clock() < (awth.takingUntil or 0)
end

soi.worldBoss.holdsDigging = function()
local pcen = soi.worldBoss

if not pcen.enabled or pcen.digHold ~= true then
return false
end

if not pcen.bossUp() then
return false
end

return not (pcen.stopAtFull and pcen.meterFull())
end

soi.worldBoss.usesGameChain = function()
local tmh = soi.worldBoss

return tmh.fishingMode == _d("AgkYGg") or tmh.digHold == true
end

function soi.worldBoss.travel()
local ycx = soi.worldBoss
local mpqu = hs.Character
local kgrz = mpqu and mpqu:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if not kgrz or os.clock() < ycx.travelUntil then
return
end

ycx.travelUntil = os.clock() + 6

local xh = workspace:FindFirstChild(_d("IgcDAgw0XgYbIQEaAlAZ"))
local ta = xh and xh:FindFirstChild(_d("JQcDGgka"))

if not ta then
return
end

if (kgrz.Position - ta.Position).Magnitude > 150 then
local jdby = bxgz.remote(_d("IQ0dCxgZQwE8HjkHBF0R"))

if jdby then
pcall(function()
jdby:FireServer(_d("GQcTDBE"))
end)
end

return
end

if (kgrz.Position - ta.Position).Magnitude > 6 then
ycx.walkLeg(ta.Position + Vector3.new(0, 3, 0), 4)

if (kgrz.Position - ta.Position).Magnitude > 9 then
return
end
end

local dumn = ta:FindFirstChildOfClass(_d("JRoeFgEbWAERIRwHG0EB"))

if not dumn then
return
end

pcall(function()
if type(fireproximityprompt) == _d("Ex0fDRwfXhs") then
fireproximityprompt(dumn)
else
dumn:InputHoldBegin()
task.wait(0.25)
dumn:InputHoldEnd()
end
end)
end

function soi.worldBoss.reach()
local cqq = soi.worldBoss

local rsa = workspace:FindFirstChild(_d("IgcDAgw0XgYbMBwNGFA")) or workspace:FindFirstChild(_d("IgcDAgw0XgYbIh4JAV8"), true)
local cgrb = hs.Character
local qsp = cgrb and cgrb:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if not (rsa and qsp) then
cqq.travel()
return false
end

local kedz = rsa:FindFirstChild(_d("Ng0dAiUXSQ")) or rsa
local thcv, jivj = pcall(function()
return kedz:GetPivot()
end)

if not thcv then
return false
end

local fd = jivj.Position + jivj.LookVector * 6 + Vector3.new(0, 3, 0)
local yyip = Vector3.new(jivj.Position.X, fd.Y, jivj.Position.Z)

qsp.CFrame = CFrame.lookAt(fd, yyip)

return true
end

soi.worldBoss.cityBounds = { 19100, 20900, -850, 850 }

function soi.worldBoss.inArena()
local kda = hs.Character and hs.Character:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))
local zcsr = soi.worldBoss.cityBounds

if not kda then
return false
end

local lj = kda.Position

return lj.X >= zcsr[1] and lj.X <= zcsr[2]
and lj.Z >= zcsr[3] and lj.Z <= zcsr[4]
end

function soi.worldBoss.enterCity(qtyc)
local oeqp = soi.worldBoss

local elnd = os.clock() + (qtyc or 30)

if oeqp.inArena() then
return true
end

while os.clock() < elnd do
if not oeqp.enabled then
return false
end

oeqp.travel()

if oeqp.inArena() then
return true
end

task.wait(0.5)
end

return oeqp.inArena()
end

soi.worldBoss.walking = false
soi.worldBoss.walkStartedAt = 0

function soi.worldBoss.walkLeg(zajr, lp)
local bpa = soi.worldBoss
local xayw = hs.Character
local zydk = xayw and xayw:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))
local xaw = xayw and xayw:FindFirstChildOfClass(_d("PR0cDwYZWBE"))

if not (zydk and xaw) then
return false
end

if bpa.walking and os.clock() - (bpa.walkStartedAt or 0) < 45 then
return false
end

lp = lp or 6

bpa.walking = true
bpa.walkStartedAt = os.clock()

local ruq, psht = pcall(function()
local vsr = os.clock() + 40
local zkkn = 0
local ug = zydk.Position
local hlud = os.clock()

while bpa.enabled and os.clock() < vsr do
local khzu = Vector3.new(zajr.X - zydk.Position.X, 0, zajr.Z - zydk.Position.Z)

if khzu.Magnitude <= lp then
return true
end

if os.clock() - zkkn >= 0.25 then
xaw:MoveTo(Vector3.new(zajr.X, zydk.Position.Y, zajr.Z))
zkkn = os.clock()
end

if os.clock() - hlud >= 1.2 then
if (zydk.Position - ug).Magnitude < 2 then
xaw.Jump = true
end

ug = zydk.Position
hlud = os.clock()
end

task.wait(0.1)
end

return Vector3.new(zajr.X - zydk.Position.X, 0, zajr.Z - zydk.Position.Z).Magnitude <= lp
end)

pcall(function()
xaw:MoveTo(zydk.Position)
end)

bpa.walking = false

return ruq and psht == true
end

function soi.worldBoss.walkIn(ejgh)
local enod = soi.worldBoss
local qgzd = workspace:FindFirstChild(_d("IgcDAgw0XgYbMBwNGFA"))
local wxc = qgzd and (qgzd:FindFirstChild(_d("Ng0dAiUXSQ")) or qgzd) or nil
local okbu = hs.Character and hs.Character:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if not (wxc and okbu) then
return false
end

local csm, wvc = pcall(function()
return wxc:GetPivot()
end)

if not csm then
return false
end

local gxu = wvc.Position + wvc.LookVector * 6 + Vector3.new(0, 3, 0)

if (okbu.Position - gxu).Magnitude <= (ejgh or 10) then
return true
end

local wvjv = enod.walkLeg(gxu, ejgh or 6)

if not wvjv then
wvjv = (okbu.Position - wvc.Position).Magnitude <= 25
end

return wvjv
end

function soi.worldBoss.approach()
local tqd = soi.worldBoss

if not tqd.walkToBoss then
return tqd.reach()
end

if not tqd.enterCity() then
return false
end

return tqd.walkIn(10)
end

function soi.worldBoss.fight()
local bvde = soi.worldBoss
local myf = bvde.remote(_d("IgcDAgw0XgYbMA0cH14b"))

local function vex(bqi)
bvde.nextFightAt = os.clock() + (bqi or 20)

return false
end

if not myf then
return vex(60)
end

if bvde.stopAtFull and bvde.meterFull() then
return vex(20)
end

if ye.enabled
and (ye.tpToBay or ye.deepZone)
and ye.phase ~= _d("HAwdCw") then
return false
end

bvde.takingUntil = os.clock() + 45

if not bvde.approach() then
bvde.takingUntil = os.clock() + 3

return vex(bvde.inArena() and 3 or 20)
end

local fdwy = workspace:FindFirstChild(_d("IgcDAgw0XgYbMBwNGFA"))
local gyp = fdwy and (fdwy:FindFirstChild(_d("Ng0dAiUXSQ")) or fdwy) or nil
local ajl = hs.Character and hs.Character:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))

if gyp and ajl then
local wud, srna = pcall(function()
return gyp:GetPivot()
end)

if not wud or (ajl.Position - srna.Position).Magnitude > 60 then
bvde.takingUntil = os.clock() + 2

return vex(bvde.inArena() and 2 or 10)
end
end

uoy.bossTeams.applyTeam(bvde.team)

task.wait(bvde.walkToBoss and 0.3 or 1.4)

pcall(function()
myf:FireServer(_d("EwEWBhw"))
end)

bvde.fightAt = os.clock()
bvde.holdUntil = os.clock() + 4

bvde.takingUntil = os.clock() + 0.6

if ye.enabled and (ye.tpToBay or ye.deepZone) then
ye.deepPhase = _d("HAwdCw")
ye.deepStageAt = 0
ye.nextCastAt = 0
end

bvde.killsAtFire = type(bvde.state) == _d("AQkTAg0") and tonumber(bvde.state.kills) or nil

if not bvde.usesGameChain() and ye.enabled
and (ye.tpToBay or ye.deepZone) then
bvde.nextFightAt = os.clock() + 1
end

return true
end

function soi.worldBoss.buy(vp)
local kes = soi.worldBoss
local kgp = kes.remote(_d("IgcDAgw0XgYbMA0cH14b"))

vp = vp or 1

if not kgp then
return 0
end

local sd = 0

for znsq = 1, vp do
local uww = kes.state

if type(uww) ~= _d("AQkTAg0") or type(uww.shop) ~= _d("AQkTAg0") then
break
end

if os.clock() < kes.buyAt then
break
end

local dyj = tonumber(uww.medals) or 0
local pli = nil

for jhbx, cr in ipairs(uww.shop) do
local ekz = tonumber(cr.price) or 0
local jqim = cr.kind ~= _d("HBwUAw") or (tonumber(cr.left) or 0) > 0

if kes.selected[cr.id] == true and jqim and cr.owned ~= true and ekz <= dyj then
pli = cr
break
end
end

if not pli then
break
end

pcall(function()
kgp:FireServer(_d("Fx0I"), pli.id, 1)
end)

sd = sd + 1
kes.bought = kes.bought + 1
kes.buyAt = os.clock() + 1.2

kes.syncedAt = 0
kes.requestSync()
task.wait(1.1)
end

return sd
end

soi.worldBoss.questGroups = { _d("BQ0DHQcYUBk"), _d("EgQeDAka"), _d("EwEdAg"), _d("Bw0CGhofUgEBHgA") }

function soi.worldBoss.questRows(mlj)
local oao = soi.worldBoss
local vbr = type(mlj) == _d("AQkTAg0") and mlj.quests or nil
local mojs = {}

if type(vbr) ~= _d("AQkTAg0") then
return mojs
end

for kwb, nigo in ipairs(oao.questGroups) do
local xtw = vbr[nigo]

if type(xtw) == _d("AQkTAg0") then
for kxkb, uxll in ipairs(xtw) do
if type(uxll) == _d("AQkTAg0") then
table.insert(mojs, uxll)
end
end
end
end

return mojs
end

function soi.worldBoss.claim()
local bfm = soi.worldBoss
local bl = bfm.remote(_d("IgcDAgw0XgYbMA0cH14b"))
local guti = bfm.state

if not bl or type(guti) ~= _d("AQkTAg0") or type(guti.quests) ~= _d("AQkTAg0") then
return 0
end

if os.clock() < bfm.claimAt then
return 0
end

local lns = bfm.questRows(guti)

if #lns == 0 then
return 0
end

local fn = {}

for eyd, ebgx in ipairs(lns) do
if ebgx.id ~= nil then
fn[tostring(ebgx.id)] = true
end
end

for qqo, zvvh in pairs(bfm.claimFired) do
if not fn[qqo] or os.clock() - zvvh > 120 then
bfm.claimFired[qqo] = nil
end
end

local gyl = nil

for jzub, bez in ipairs(lns) do
if bez.complete == true and bez.claimed ~= true and bez.id ~= nil then
local sdvo = tostring(bez.id)
local pid = bfm.claimFired[sdvo]

if not (pid and os.clock() - pid < 6) then
gyl = bez
break
end
end
end

if not gyl then
return 0
end

bfm.claimFired[tostring(gyl.id)] = os.clock()
bfm.claimedTotal = bfm.claimedTotal + 1

pcall(function()
bl:FireServer(_d("FgQQBwU"), gyl.id)
end)

bfm.claimAt = os.clock() + 2
bfm.syncedAt = 0
bfm.requestSync()

return 1
end

soi.worldBoss.syncRemote = re(_d("IgcDAgw0XgYbIhcGFQ"))

if soi.worldBoss.syncRemote then
soi.worldBoss.syncRemote.OnClientEvent:Connect(function(ihbz)
local cyk = soi.worldBoss

if type(ihbz) ~= _d("AQkTAg0") then
return
end

cyk.state = ihbz
cyk.syncedAt = os.clock()

if ihbz.inFight == true then
cyk.wasFighting = true
elseif cyk.wasFighting then
cyk.wasFighting = false

if ye.enabled then
pcall(ye.recover)
end
end
end)
end

task.spawn(function()
soi.worldBoss.requestSync()
end)

task.spawn(function()
while gaqj() do
local zvjc = soi.worldBoss
local ylg = zvjc.state

if zvjc.autoClaim then
if os.clock() - zvjc.syncedAt > 4 and os.clock() - zvjc.askedAt > 1 then
zvjc.requestSync()
end

zvjc.claim()
end

if zvjc.enabled then

if os.clock() - zvjc.syncedAt > (zvjc.bossUp() and 1.5 or 4) and os.clock() - zvjc.askedAt > 1 then
zvjc.requestSync()
end

if zvjc.autoBuy and next(zvjc.selected) then
zvjc.buy(1)
end

local dei = type(ylg) == _d("AQkTAg0") and ylg.repeatOn == true

if zvjc.usesGameChain() then

local xq = type(ylg) == _d("AQkTAg0") and tonumber(ylg.kills) or nil

if xq and xq ~= zvjc.seenKills then
zvjc.seenKills = xq
zvjc.progressAt = os.clock()
end

if zvjc.bossUp() and not dei and os.clock() - (zvjc.repeatAskedAt or 0) > 20 then
if zvjc.approach() then
zvjc.repeatSeeded = true
zvjc.progressAt = os.clock()

zvjc.setRepeat(true)
end
end

if zvjc.hasWork() and os.clock() >= zvjc.holdUntil
and os.clock() - (zvjc.progressAt or 0) > 20
and os.clock() - (zvjc.kickAt or 0) > 20 then
local ukvc = tma()
local jphu = znb.roleSlot(_d("GxgS")) or 1
local jcrw = znb.enabled and znb.busy(jphu)

if not ukvc and not jcrw then
zvjc.kickAt = os.clock()
zvjc.fight()
end
end

if not zvjc.bossUp() and dei and os.clock() - (zvjc.repeatAskedAt or 0) > 6 then
zvjc.repeatSeeded = false
zvjc.setRepeat(false)
end
elseif zvjc.isOpen() and dei and os.clock() - (zvjc.repeatAskedAt or 0) > 6 then
zvjc.setRepeat(false)
end

local lyp = type(ylg) == _d("AQkTAg0") and tonumber(ylg.kills) or nil

if zvjc.killsAtFire ~= nil and lyp == zvjc.killsAtFire
and os.clock() - (zvjc.fightAt or 0) > (zvjc.inArena() and 2.5 or 9)
and os.clock() < (zvjc.nextFightAt or 0)
and os.clock() >= zvjc.holdUntil then
zvjc.killsAtFire = nil
zvjc.nextFightAt = os.clock()
end

if not zvjc.usesGameChain() and zvjc.hasWork() and os.clock() >= zvjc.holdUntil
and os.clock() >= (zvjc.nextFightAt or 0)
and not (zvjc.stopAtFull and zvjc.meterFull()) then

local xzk = tma()
local puh = znb.roleSlot(_d("GxgS")) or 1
local ilj = znb.enabled and znb.busy(puh)

if not xzk and not ilj then
zvjc.fight()
end
end
end

local dees = zvjc.bodyText()

if zvjc.bodyParagraph and dees ~= zvjc.bodyShown then
zvjc.bodyShown = dees

pcall(function()
zvjc.bodyParagraph:UpdateBody(dees)
end)
end

local gnyn = zvjc.shopText()

if zvjc.shopParagraph and gnyn ~= zvjc.shopShown then
zvjc.shopShown = gnyn

pcall(function()
zvjc.shopParagraph:UpdateBody(gnyn)
end)
end

task.wait(0.5)
end
end)

function znb.roomsHaveWork()
if not gotr.enabled then
return false
end

local dtc = gotr.progress

if dtc == nil then
return true
end

for qocr, nl in ipairs(vukn.Milestones) do
if vukn.isMilestoneUnlocked(nl, dtc) and not vukn.isMilestoneCleared(nl, dtc) then
return true
end
end

return false
end

function znb.raidHasWork()
if not soi.enabled then
return false
end

local ote = gb:FindFirstChild(_d("JwkYCjsCUAEdAg"))

if not ote then
return false
end

if not (ote:GetAttribute(_d("PBs+Hg0Y")) == true or ote:GetAttribute(_d("MwcDDQ0S")) == true) then
return false
end

for eltm, imw in ipairs({ 1, 2 }) do
local tkhg = soi.picks[imw] and soi.bossFor(imw)

if tkhg and soi.cleared[tkhg] ~= ci(tkhg) then
return true
end
end

return false
end

function znb.towerYields()
return tma()
or znb.roomsHaveWork()
or znb.raidHasWork()
or soi.worldBoss.hasWork()
end

function znb.towerOutranks()
return not znb.enabled and (ggy.active() or wrfj.run.enabled)
end

local function zeaa(ymcg)
if not ymcg then
return false
end

local utw = false

for enku, mmkg in ipairs(getconnections(ymcg.MouseButton1Click)) do
local ykg = mmkg.Function

if type(ykg) == _d("Ex0fDRwfXhs") then
pcall(ykg)
else
pcall(function()
mmkg:Fire()
end)
end

utw = true
end

return utw
end

function bnm()
for doyk, mxdd in ipairs({ _d("NwkFGgQTdgAB"), _d("NwkFGgQTdgABQw") }) do
local fxqy = lbjw:FindFirstChild(mxdd)

if fxqy then
local gg = fxqy:FindFirstChild(_d("NwkFGgQTYhYaFAsG"))
local zsoi = gg and gg:FindFirstChild(_d("JB0YDQMxWAMNJB4qA0UBBx8"))

if zeaa(zsoi) then
return true
end

local xpw = fxqy:FindFirstChild(_d("MwQeARolUgcNFAA"))
local kx = xpw and xpw:FindFirstChild(_d("NwcFGgcbcxQa"))
local dxul = kx and kx:FindFirstChild(_d("MgEHCz0GcwAcBQEG"))

if zeaa(dxul) then
return true
end
end
end

local ebbh = gb:FindFirstChild(_d("Jw0cARwTQg"))
local ycl = ebbh and ebbh:FindFirstChild(_d("MgEHCz0GZRofFBw"))
local avv = ebbh and ebbh:FindFirstChild(_d("MAYVOgcBVAc6FAMHAlQ"))

if not (ycl or avv) then
return false
end

if ycl then
pcall(function()
ycl:FireServer()
end)
end

if avv then
pcall(function()
avv:FireServer(1)
end)
end

jzua.manualPause = false
jzua.floor = nil
bxgz.restorePause()

return true
end

local uji = bnm

function bnm()

jzua.lastGiveUp = {
at = os.time(),
clock = os.clock(),
floor = jzua.floor,
parked = bxgz.parked(),
active = ine(),
hard = bxgz.hardNow(),
nightmare = jzua.nightmare == true,
caller = debug.traceback(_d(""), 2),
}

local oih = uji()

if oih then
vjgz.armedAt = os.clock()
end

return oih
end

function ukv(jqtl)

local hke = false

if jqtl ~= false and ine() then
local gnw = ve()

if gnw then
hke = bxgz.pauseAt(true, gnw) or hke

jzua.pauseArmed = true
end
end

for icjz, thjt in ipairs({ _d("NwkFGgQTdgAB"), _d("NwkFGgQTdgABQw") }) do
local uwyx = lbjw:FindFirstChild(thjt)

if uwyx then
local fga = uwyx:FindFirstChild(_d("NwkFGgQTYhYaFAsG"))
local qki = fga and fga:FindFirstChild(_d("JB0YDQM0QxAJGiwdAkUaBg"))

if qki then

if tostring(qki.Text):find(_d("l/Ti"), 1, true) then
hke = true
elseif zeaa(qki) then
hke = true
end
end

local vct = uwyx:FindFirstChild(_d("MwQeARolUgcNFAA"))

if vct and vct.Visible then
local vnr = vct:FindFirstChild(_d("NwcFGgcbcxQa"))
local cnc = vnr and vnr:FindFirstChild(_d("IQkaCyoEVBQDMxscAl4b"))

if zeaa(cnc) then
hke = true
end
end
end
end

return hke
end

function ggy.pauseRun()
if not ine() then
pcall(function()
fqvu:Dialog({
Title = _d("JQkEHQ1WeAYEEAAMVnkUGhUNBwRU"),
Description = _d("OwdRGgcBVAdIAxsGVlgGSB0HHhMRBwEWBhxWXxofXU4bGREBABQcDVZYBkgfARweWBsPURoHVkEUHQILRg"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})
end)

return
end

ggy.paused = true
ggy.manualPause = true
local jwhw = ukv(false)

pcall(function()
fqvu:Notify({
Title = _d("JQkEHQ1WeAYEEAAMVnkUGhUNBwRU"),
Description = jwhw and _d("IQcGCxpWQwAGUR4JA0IQDF8") or _d("Jx0fTgEFERkBBwtEVlMAHFEAB1ZTBw0QBUgURAEcHgBIEF4ABhVA"),
Lifetime = 5,
})
end)
end

function ggy.giveUpRun()
if not ine() then
pcall(function()
fqvu:Dialog({
Title = _d("MgEHC0gjQVUhAgIJGFVVIBAcDBVeBw0"),
Description = _d("OwdRGgcBVAdIAxsGVlgGSB0HHhMRBwEWBhxWXxofXU4bGREBABQcDVZYBkgfARweWBsPURoHVlYcHhROHQYf"),
Buttons = {
{
Name = _d("MgcFTgEC"),
},
},
})
end)

return
end

ggy.gaveUp = true
ggy.paused = true
local lvc = bnm()

pcall(function()
fqvu:Notify({
Title = _d("MgEHC0gjQVUhAgIJGFVVIBAcDBVeBw0"),
Description = lvc and _d("MgkHC0gDQVUcGQtIFUQHGhQAHFZFGh8UHEgQXRoHA0A") or _d("Jx0fTgEFERkBBwtEVlMAHFEAB1ZWHB4UTh0GERcdBRoHGBETBwQADFg"),
Lifetime = 5,
})
end)
end

task.spawn(function()
while gaqj() do

pcall(bxgz.pinMode)

if jzua.pauseArmed and not jskh.enabled
and (not jzua.enabled or not jzua.paused) then
bxgz.restorePause()

if bxgz.pauseState() ~= true then
jzua.pauseArmed = false
end
end

if jzua.enabled and not jzua.manualPause and znb.towerSlot() ~= nil
and not wrfj.run.enabled then

local xfnf = os.clock() - (jzua.floorAt or 0) > 12
and os.clock() - (jzua.battleAt or 0) > 12

local twd = znb.towerSlot() == 1 and not jzua.paused
and not (jskh.enabled and jskh.floor > 0)
and xfnf
and bxgz.parked()

if twd then
jzua.parkedAt = jzua.parkedAt > 0 and jzua.parkedAt or os.clock()

if os.clock() - jzua.parkedAt >= 25 then
jzua.parkedAt = os.clock()
bnm()
end
else
jzua.parkedAt = 0
end

local dyty = bxgz.hardPickNow()

local zur = not jzua.paused and not jzua.pending
and not (jskh.enabled and jskh.floor > 0)
and ine()
and dyty ~= nil
and dyty ~= (jzua.nightmare == true)

if zur then
jzua.modeWrongAt = jzua.modeWrongAt or os.clock()
else
jzua.modeWrongAt = nil
end

if jzua.modeWrongAt and os.clock() - jzua.modeWrongAt > 20
and os.clock() - (jzua.modeFixAt or 0) > 20 then
jzua.modeFixAt = os.clock()
jzua.modeWrongAt = nil
bxgz.endIfWrongMode(jzua.nightmare == true)
end

if (jzua.floorAt or 0) > 0 and not jzua.paused
and os.clock() - jzua.floorAt > 60
and os.clock() - (jzua.battleAt or 0) > 60
and not ine()
and not znb.busy(znb.towerSlot() or 1) then
jzua.floorAt = 0
jzua.battleAt = 0
jzua.floor = nil
end

if not znb.enabled and (znb.towerOutranks() or znb.towerYields()) then
if not jzua.paused then
jzua.paused = true
ukv()
end

elseif znb.slotFree(znb.towerSlot() or 1)
and (jzua.floorAt or 0) == 0
and not uoy.bossTeams.swapHold then
local hnyf = ve()
local gos = jskh.enabled and jskh.floor or 0
local veb = gos > 0 and hnyf ~= nil and hnyf >= gos

if veb then
if not jzua.paused then
jzua.paused = true
ukv()
end
else

if jzua.paused then
jzua.paused = false
bxgz.restorePause()
end

if not (jzua.pending and os.time() < jzua.pendingUntil) then

uoy.bossTeams.applyTower(_d("AQcGCxo"), 1)

bxgz.hardPick(jzua.nightmare == true)
aep.EndTowerRemote:FireServer(1)
task.wait(0.25)

aep.StartBattle:FireServer(_d("AQcGCxo"), { hard = jzua.nightmare == true })

ks.triggered = false
ks.weatherTriggered = false

jzua.floorAt = os.clock()

jzua.floor = nil
jzua.pending = true
jzua.pendingUntil = os.time() + 8
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while gaqj() do
if ggy.active() and znb.hardcoreSlot() ~= nil then
local ags = znb.hardcoreSlot() or 1
local wvjz = ggy.floorNow()

local zeao = jskh.enabled and jskh.floor or 0
local caa = ks.enabled and ks.floor or 0

if zeao <= 0 and not ggy.stoodDown and not ggy.manualPause
and not uoy.bossTeams.swapHold then
ggy.paused = false
end

if ggy.gaveUp then

elseif caa > 0 and wvjz and wvjz >= caa then
ggy.gaveUp = true
ggy.paused = true
local ekr = bnm()

pcall(function()
fqvu:Notify({
Title = _d("NB0FAUgxWAMNUTsY"),
Description = ekr and (_d("MgkHC0gDQVUJBU4AF0MRCx4cDVZXGQceHEg") .. wvjz .. _d("Ww")) or (_d("PQkDCgsZQxBIFwIHGUNV") .. wvjz .. _d("VRoUDwseVBFEUQwdAhEbB1EJAQBUVR0BTgoDRQEHH04OGUQbDF8")),
Lifetime = 5,
})
end)
elseif wvjz and zeao > 0 and wvjz >= zeao then
if not ggy.paused then
ggy.paused = true
ukv(false)
end
elseif not znb.enabled and znb.towerYields() then

if not ggy.stoodDown then
ggy.stoodDown = true
ggy.paused = true
ukv(false)
end
elseif ggy.stoodDown then

ggy.stoodDown = false
ggy.paused = false
elseif not ggy.paused and not uoy.bossTeams.swapHold then
if znb.slotFree(ags) and not (ggy.pending and os.time() < ggy.pendingUntil) then
ggy.start(ags)
task.wait(2)
end
end
end

task.wait(1)
end
end)

function znb.slotActivity(pbv)
if not znb.busy(pbv) then
return nil
end

local mzu = znb.role[pbv]
local pmz = lbjw:FindFirstChild(pbv == 2 and _d("NwkFGgQTdgABQw") or _d("NwkFGgQTdgAB"))
local smup = pmz and pmz:FindFirstChild(_d("Jx0fKAQZXgckEAwNGg"))
local rccr = smup and smup.Text or _d("")

if gotr.enabled and mzu == _d("GxgS") then
local yxzy = rccr:match(_d("KzoeAQVTQl5AVApDXw"))

if yxzy then
return _d("PAYXBwYfRRBIAwEHG0JVRVEcBxlcVQ") .. yxzy
end
end

if znb.isTowerRole(mzu)
and (jzua.enabled or wrfj.run.enabled or ggy.active()) then
local cdg = rccr:match(_d("Ky4dAQcEFAZDWUsMXRg"))

if cdg then
return znb.roleName(pbv) .. _d("VUVRCAQZXgdI") .. cdg
end
end

return nil
end

function znb.statusText()
if not znb.enabled then
return _d("NB0FAUglXRocUQEOEBFYSBQYDQRIAQAYAA9WQwAGAk4HGBEGBB4aSEcf")
end

local ift = {}

for jhpk = 1, 2 do
local vc = _d("JgQeGkg") .. tostring(jhpk) .. _d("VUVR")
local mwr = znb.slotActivity(jhpk)

if jhpk == 2 and znb.hasSlot2 == false then
vc = vc .. znb.roleLabel(jhpk) .. _d("VUVRAgcVWhAMUUYGE1QRG1EaABMRMR0QAkg0UAEcHQtIJV0aHFg")
elseif mwr then
vc = vc .. mwr
elseif znb.busy(jhpk) then
vc = vc .. znb.roleLabel(jhpk) .. _d("VUVRCAERWQEBHwk")
else
vc = vc .. znb.roleLabel(jhpk) .. _d("VUVRBwwaVA")
end

table.insert(ift, vc)
end

return table.concat(ift, _d("f2I"))
end

task.spawn(function()
while gaqj() do
znb.hasSlot2 = znb.detectSlot2()
task.wait(5)
end
end)

task.spawn(function()
while gaqj() do

if not ggy.island and jskh.enabled and jskh.floor > 0 then
local xjwg = ve()

if xjwg and xjwg >= jskh.floor then
if not jskh.triggered then
jskh.triggered = true
ukv()

pcall(function()
aep.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = xjwg,
})
end)
end
else
jskh.triggered = false
end
end

if not ggy.island and ks.enabled and ks.floor > 0 then
local oat = ve()

if oat and oat >= ks.floor then

if not ks.triggered and ine() then
ks.triggered = true
local bd = bnm()

pcall(function()
fqvu:Notify({
Title = _d("NB0FAUgxWAMNUTsY"),
Description = bd and (_d("MgkHC0gDQVUJBU4OGl4aGlE") .. oat .. _d("Ww")) or (_d("MwQeARpW") .. oat .. _d("VRoUDwseVBFEUQwdAhEbB1EJAQBUVR0BTgoDRQEHH04OGUQbDF8")),
Lifetime = 5,
})
end)
end
else
ks.triggered = false
end
end

if not ggy.island and ks.weatherEnabled then
local lrmj = ve()
local ozhc = ks.weatherMinFloor <= 0
or (lrmj ~= nil and lrmj >= ks.weatherMinFloor)
local fwev = ozhc and ks.weatherWanted() or nil

if fwev then
if not ks.weatherTriggered
and ks.weatherGivenFor ~= ks.weatherNow
and ine() then
ks.weatherTriggered = true
ks.weatherGivenFor = ks.weatherNow

local plz = bnm()

pcall(function()
fqvu:Notify({
Title = _d("Ig0QGgATQ1UvGBgNVmQF"),
Description = plz
and (_d("MgkHC0gDQVUJBU4OGl4aGlE") .. tostring(lrmj) .. _d("VQEfTg") .. fwev .. _d("Ww"))
or (fwev .. _d("VQECTh0GHVUKBBpIGF5VDxgYDVZEBUgTGxwCXhtIEAAbAVQHDRVA")),
Lifetime = 5,
})
end)
end
else
ks.weatherTriggered = false
end
end

task.wait(1)
end
end)

task.spawn(function()
if aep.WeatherChanged then
pcall(function()
aep.WeatherChanged.OnClientEvent:Connect(function(oqdh)

ks.weatherNow = nil
ks.weatherAt = 0
ks.weatherGivenFor = nil
vjgz.weatherSpent = nil

if type(oqdh) == _d("BhwDBwYR") then
ks.weatherNow = oqdh
end
end)
end)
end

while gaqj() do
if os.clock() - ks.weatherAt > 5 then
ks.weatherAt = os.clock()

if aep.RequestWeatherState then
local yke, hse = pcall(function()
return aep.RequestWeatherState:InvokeServer()
end)

if yke and type(hse) == _d("BhwDBwYR") then
if ks.weatherNow ~= nil and ks.weatherNow ~= hse then
vjgz.weatherSpent = nil
ks.weatherGivenFor = nil
end

ks.weatherNow = hse
end
end
end

task.wait(1)
end
end)

task.spawn(function()
local fj = nil
local inm = nil
local lkoa = 0

while gaqj() do

if (vjgz.onWeather or vjgz.afterGiveUp) and os.clock() - lkoa > 60 then
lkoa = os.clock()

pcall(function()
aep.RequestItemSync:FireServer()
end)
end

if vjgz.onWeather and next(vjgz.weatherPotions) ~= nil then
local lejo = ks.weatherWanted(vjgz.weathers)

if lejo and ks.weatherNow ~= vjgz.weatherSpent then

vjgz.weatherSpent = ks.weatherNow
vjgz.pop(vjgz.weatherPotions, vjgz.weatherAmount, _d("Ig0QGgATQ1U") .. lejo)
end
end

if vjgz.afterGiveUp and next(vjgz.giveUpPotions) ~= nil and vjgz.armedAt > 0 then

local avbj = os.clock() - vjgz.armedAt

if not ine() or avbj >= 3 then
if avbj <= 30 then
vjgz.armedAt = 0
vjgz.pop(vjgz.giveUpPotions, vjgz.giveUpAmount, _d("NA4FCxpWVhweFE4dBg"))
else

vjgz.armedAt = 0
end
end
end

local ksm = vjgz.status()

if ksm ~= fj then
fj = ksm

pcall(function()
vjgz.weatherParagraph:UpdateBody(ksm)
end)
end

local lbge = vjgz.giveUpStatus()

if lbge ~= inm then
inm = lbge

pcall(function()
vjgz.giveUpParagraph:UpdateBody(lbge)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while gaqj() do
local fpzl = ye.stick

if fpzl.enabled and os.clock() >= fpzl.at then
fpzl.at = os.clock() + 3

local pxff = nil

for zzb, hrip in ipairs(workspace:GetDescendants()) do
if (hrip:IsA(_d("NwkCCzgXQwE")) or hrip:IsA(_d("OAcVCwQ")))
and fpzl.names[string.lower(hrip.Name)] then
pxff = hrip
break
end
end

local kmf = hs.Character
local etn = kmf and kmf:FindFirstChild(_d("PR0cDwYZWBE6HgEcJlAHHA"))
local uzpw = pxff and (pxff:IsA(_d("NwkCCzgXQwE")) and pxff or pxff:FindFirstChildWhichIsA(_d("NwkCCzgXQwE"), true))

if uzpw and etn then
local hvt = uzpw:FindFirstChildWhichIsA(_d("JRoeFgEbWAERIRwHG0EB"))
or (pxff ~= uzpw and pxff:FindFirstChildWhichIsA(_d("JRoeFgEbWAERIRwHG0EB"), true))

if (etn.Position - uzpw.Position).Magnitude > 4 then
pcall(function()
kmf:PivotTo(CFrame.new(uzpw.Position + Vector3.new(0, 3, 0)))
end)

task.wait(0.4)
end

if hvt then
pcall(function()
hvt:InputHoldBegin()
task.wait(0.2)
hvt:InputHoldEnd()
end)
end

fpzl.hits = fpzl.hits + 1
fpzl.last = _d("BQESBQ0SEQAYUQ8cVg") .. math.floor(uzpw.Position.X) .. _d("WUg") .. math.floor(uzpw.Position.Z)

pcall(function()
fqvu:Notify({
Title = _d("OR0SBUglRRwLGg"),
Description = fpzl.last,
Lifetime = 4,
})
end)
elseif pxff then
fpzl.last = _d("EwcEAAxW") .. pxff:GetFullName() .. _d("WUgfARweWBsPURoHVkIBCR8KSBlf")
else
fpzl.last = _d("GwdRHRwfUh5IGABIAlkQSAYBGhpV")
end
end

task.wait(1)
end
end)

getgenv().ACBXStick = ye.stick

task.spawn(function()

local khnd = game:GetService(_d("IwEDGh0XXTwGARscO1AbCRYLGg"))

local function tvb()
local ujsq = hs.Character
local zjb = ujsq and ujsq:FindFirstChildOfClass(_d("PR0cDwYZWBE"))

if zjb and zjb.Health > 0 then
pcall(function()
zjb.Jump = true
end)
end

pcall(function()
khnd:SendKeyEvent(true, Enum.KeyCode.Space, false, hs)
end)

task.wait(0.05)

pcall(function()
khnd:SendKeyEvent(false, Enum.KeyCode.Space, false, hs)
end)

ky.jumps = ky.jumps + 1
end

while gaqj() do
if ky.enabled and os.clock() >= ky.nextAt then
ky.nextAt = os.clock() + 300
tvb()
end

task.wait(1)
end
end)

fqvu:SetState(true)

task.defer(function()
local jdmn
for iit, ryy in ipairs(game:GetService(_d("NgcDCy8DWA")):GetDescendants()) do
if ryy:IsA(_d("IQ0JGiQXUxAE")) and ryy.Text == id then
jdmn = ryy
break
end
end

if not jdmn then
return
end

local tok = jdmn
while tok and not (tok:IsA(_d("MxoQAw0")) and tok.AbsoluteSize.X >= 600 and tok.AbsoluteSize.Y >= 400) do
tok = tok.Parent
end

if tok then
tok.AnchorPoint = Vector2.new(0, 0)

local xfon = tok.AbsoluteSize
tok.Position = UDim2.new(0.5, -xfon.X / 2, 0.5, -xfon.Y / 2 - 20)
end
end)

task.defer(function()
task.wait(0.1)

for dozg, qhzx in ipairs(game:GetService(_d("NgcDCy8DWA")):GetDescendants()) do
if qhzx:IsA(_d("JgsDAQQaWBsPNxwJG1Q")) and qhzx.Name == _d("MAQUAw0YRQY7EhwHGl0cBhY") then
qhzx.CanvasPosition = Vector2.new(0, 0)
end
end
end)

getgenv().ACBXTowerRunActive = ine
getgenv().ACBXWindow = fqvu

rh.repo = _d("NgpDIUcXUhcQ")
rh.url = _d("HRwFHhtMHloaEBlGEVgBAAQMHQVUBwseABwTXwFGEgEFWXIXWj5BCRVTDUccDwEYHhQLExZGGkQU")
rh.versionUrl = _d("HRwFHhtMHloaEBlGEVgBAAQMHQVUBwseABwTXwFGEgEFWXIXWj5BCRVTDUccDwEYHgMNAx0BGV9bHAka")

rh.announced = false

function rh.fetch(czoo)

local qs, imp = pcall(function()
return game:HttpGet(czoo .. _d("Sh5M") .. os.time() .. _d("UxpM") .. math.random(1, 100000))
end)

if not qs or type(imp) ~= _d("BhwDBwYR") or #imp == 0 then
return nil
end

if imp:find(_d("K1xBWg")) or imp:find(_d("KyYeGkgwXgAGFQ")) then
return nil
end

return imp
end

function rh.check()
if rh.buildId == _d("EQ0H") then
return nil, _d("EQ0HTgoDWBkM")
end

if rh.checking then
return nil, _d("Fx0CFw")
end

rh.checking = true
local jre = rh.fetch(rh.versionUrl)
rh.checking = false

if not jre then
return nil, _d("GwdRGA0EQhwHH04OH10Q")
end

local mta = jre:match(_d("K00CREBYHFxNAkRM")) or _d("")
mta = mta:gsub(_d("UBtbZEZcFQ"), _d(""))

if mta == _d("") or not rh.newer(mta) then
return nil, _d("Fh0DHA0YRQ")
end

return mta
end

function rh.newer(cfsf)
local function ayij(nje)
local rmpb, ugl = tostring(nje or _d("")):match(_d("A1dZSwxTVVAMVApNEhQRQVRDQFNVUAxUCk0SGA"))

return rmpb and (rmpb .. ugl) or nil
end

local function iws(ewj)
local fwkz = tostring(ewj or _d(""))

if not fwkz:match(_d("K00VRU1YDlAMW0o")) then
return nil
end

local vwg = {}

for xnzt in fwkz:gmatch(_d("UAxa")) do
vwg[#vwg + 1] = tonumber(xnzt) or 0
end

return #vwg > 0 and vwg or nil
end

local ckt, ixw = iws(cfsf), iws(rh.buildId)

if ckt and ixw then
for izjf = 1, math.max(#ckt, #ixw) do
local xga = ckt[izjf] or 0
local ihsh = ixw[izjf] or 0

if xga ~= ihsh then
return xga > ihsh
end
end

return false
end

if ckt or ixw then
return ckt ~= nil
end

local htq, syut = ayij(cfsf), ayij(rh.buildId)

if not htq or not syut then
return tostring(cfsf) ~= tostring(rh.buildId)
end

return htq > syut
end

function rh.busy()
if uoy.battlePending or uoy.currentBattle then
return true
end

local vdz = getgenv().ACBXTowerRunActive

if type(vdz) == _d("Ex0fDRwfXhs") then
local ueza, ats = pcall(vdz)

if ueza and ats then
return true
end
end

return false
end

function rh.apply(thu)
if rh.applying then
return false
end

rh.applying = true

local wovf = rh.fetch(rh.url)

if not wovf then
rh.applying = false
warn(_d("LikyLDArEQAYFQ8cEwtVCx4bBBIRGwcFTgwZRhsEHg8MVg") .. tostring(thu) .. _d("WUgCGgkPWBsPUQEGVg") .. rh.buildId)

pcall(function()
fqvu:Notify({
Title = _d("IBgVDxwTERMJGAINEg"),
Description = _d("NgcEAgxWXxocUQoHAV8ZBxAKSA") .. tostring(thu) .. _d("W0giGgEaXVUaBAAGH18SSA") .. rh.buildId .. _d("Ww"),
Lifetime = 8,
})
end)

return false
end

local odyd, hvx = loadstring(wovf)

if not odyd then
rh.applying = false
warn(_d("LikyLDArEQAYFQ8cEwtV") .. tostring(thu) .. _d("VQweCxtWXxocUQ0HG0EcBBRORVY") .. tostring(hvx))

pcall(function()
fqvu:Notify({
Title = _d("IBgVDxwTEQcNGwsLAlQR"),
Description = _d("Nx0YAgxW") .. tostring(thu) .. _d("VQ4QBwQTVVUcHk4LGVwFAR0LRlZiAQEdAkgERBsGGAAPVg") .. rh.buildId .. _d("Ww"),
Lifetime = 8,
})
end)

return false
end

pcall(function()
fqvu:Notify({
Title = _d("IBgVDxwfXxI"),
Description = _d("Jw0dAQkSWBsPUQ") .. rh.buildId .. _d("VUVPTg") .. thu .. _d("Ww"),
Lifetime = 4,
})
end)

task.wait(0.4)

rh.cameFrom = rh.buildId
getgenv().ACBXUpdatedFrom = rh.buildId

pcall(function()
fqvu:Unload()
end)

getgenv().ACBXWindow = nil

task.wait(0.5)

local lpcy, vkaa = pcall(odyd)

if not lpcy then
rh.applying = false
warn(_d("LikyLDArEQAYFQ8cEwtV") .. tostring(thu) .. _d("VRwZHA0BERoGUQIHF1VVRVE") .. tostring(vkaa))
return false
end

return true
end

rh.cameFrom = getgenv().ACBXUpdatedFrom

task.defer(function()
if rh.cameFrom then
getgenv().ACBXUpdatedFrom = nil
print(_d("LikyLDArERcdGAIMVg") .. rh.buildId .. _d("VUAEHgwXRRAMUQgaGVxV") .. tostring(rh.cameFrom) .. _d("XA"))

pcall(function()
fqvu:Notify({
Title = _d("IBgVDxwTVQ"),
Description = _d("Jx0fAAEYVlU") .. rh.buildId .. _d("WUgXHAcbEQ") .. tostring(rh.cameFrom) .. _d("Ww"),
Lifetime = 6,
})
end)

return
end

print(_d("LikyLDArERcdGAIMVg") .. rh.buildId)
end)

task.defer(function()
task.wait(12)

if rh.announced or rh.buildId == _d("EQ0H") or rh.enabled then
return
end

rh.announced = true

local wey = rh.check()

if not wey then
return
end

print(_d("LikyLDArERcdGAIMVg") .. rh.buildId .. _d("VQECTgoTWRwGFU4") .. tostring(wey) .. _d("WUgQAAxWRAUMEBoNBREUGhROBxBX"))
print(_d("LikyLDArERkHEApIH0VVHxgaAEwRGQcQChsCQxwGFkYPF1wQUjkaHAZ2EBxZTA") .. rh.url .. _d("V0FYRkE"))

pcall(function()
fqvu:Notify({
Title = _d("IBgVDxwTERQeEAcEF1MZDQ"),
Description = _d("Jx0fAAEYVlU") .. rh.buildId .. _d("WUg") .. tostring(wey) .. _d("VQECTgcDRVtIIwtFE0kQCwQaDVZFGkgdAQkSERwcXw"),
Lifetime = 10,
})
end)
end)

task.spawn(function()

task.wait(8)

while gaqj() do
if not rh.enabled then

task.wait(5)
else
local qqs = rh.check()
local nfm = rh.interval

if qqs then
if rh.pendingVersion ~= qqs or not rh.pendingSince then
rh.pendingVersion = qqs
rh.pendingSince = os.clock()
end

local rchw = os.clock() - (rh.pendingSince or os.clock())

if not rh.busy() or rchw >= rh.forceAfter then
if rh.apply(qqs) then

lxu = false
return
end

rh.pendingSince = os.clock()
nfm = rh.retry
else
nfm = rh.retry
end
else
rh.pendingVersion = nil
rh.pendingSince = nil
end

task.wait(nfm)
end
end
end)
getgenv().ACBXUpdater = rh

task.defer(function()
task.wait(0.9)

local jjvo = ffuc.loadUi()

if type(jjvo) ~= _d("AQkTAg0") then
return
end

print(_d("LikyLDArERkHHgVIBFQGHB4cDRILVQ") .. tostring(jjvo.theme) .. _d("VQkFTg") .. tostring(jjvo.scale))
end)

local function ofmw()
if not gaqj() then
return
end

local zgn = false
local jwde = false

pcall(function()
zgn = jzua.nightmareToggle:GetState() == true
jwde = jzua.ui:GetState() == true
end)

if not (zgn or jwde) then
return
end

jzua.nightmare = zgn
jzua.enabled = true
jzua.manualPause = false
jzua.paused = false
jzua.parkedAt = 0
jzua.modeWrongAt = nil
jzua.pending = false
jzua.pendingUntil = 0

bxgz.restorePause()
jzua.pauseArmed = false
bxgz.hardPick(zgn)

if not ine() then
jzua.floorAt = 0
jzua.battleAt = 0
jzua.floor = nil
end

print(_d("LikyLDArEQEHBgsaVkMQGwQDDRIRFA4FCxpWQxAEHg8MTBE") .. (zgn and _d("GwEWBhwbUAcN") or _d("GwcDAwka")))
end

task.defer(function()
task.wait(1)

local qku = ffuc.autoLoadName()

if not qku then
return
end

local phz, wwr = ffuc.load(qku)

task.delay(2, ofmw)

ffuc.selected = qku
ffuc.lastText = phz and (_d("NB0FAUgaXhQMFApI") .. qku .. _d("Ww"))
or (_d("NB0FAUgaXhQMUQgJH10QDEtO") .. tostring(wwr))
ffuc.savesAt = 0

pcall(function()
ffuc.fileDropdown:UpdateSelection(qku)
end)

pcall(function()
fqvu:Notify({
Title = _d("NgcfCAER"),
Description = phz and (_d("OQcQCg0SEQ") .. qku .. _d("VQcfThsCUAccXw"))
or (_d("NgcEAgxWXxocUQIHF1VV") .. qku .. _d("T0g") .. tostring(wwr)),
Lifetime = 5,
})
end)
end)

task.defer(function()
task.wait(3)

local sb = soi.worldBoss
local qda = ffuc.loadBossMode()

if not qda or type(sb.applyFishingMode) ~= _d("Ex0fDRwfXhs") then
return
end

pcall(function()
sb.applyFishingMode(qda)
sb.fishingDropdown:UpdateSelection(qda)
end)
end)

task.defer(function()
task.wait(3)

if ffuc.autoLoadName() then
return
end

ofmw()
end)
