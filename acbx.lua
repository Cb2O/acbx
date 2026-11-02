local _d = (function()
local A = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local M = {}
local cache = {}
for i = 1, #A do
M[string.sub(A, i, i)] = i - 1
end
local K = string.char(109, 114, 114, 98, 51, 99, 103)
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

local xqnl = "ACB Rebirth v0.997"

local function ces(lnaq)
for hz, xiip in ipairs(lnaq:GetDescendants()) do
if xiip:IsA(_d("ORcKFn8CBQge")) and xiip.Text == xqnl then
local mpgk = xiip
while mpgk and not mpgk:IsA(_d("PhEAB1YNIBgb")) do
mpgk = mpgk.Parent
end
return mpgk
end
end
end

local function yw()
local xj = game:GetService(_d("PR4TG1YRFA")).LocalPlayer

for rq, fi in ipairs({
(gethui and gethui() or game:GetService(_d("Lh0AB3QWDg"))),
game:GetService(_d("Lh0AB3QWDg")),
xj and xj:FindFirstChild(_d("PR4TG1YRIBgb")),
}) do
for qie, wb in ipairs(fi:GetChildren()) do

if wb:IsA(_d("PhEAB1YNIBgb")) then
local be = wb:FindFirstChild(_d("LxMBBw"))

if be and be:FindFirstChild(_d("PhsWB1ECFQ")) and be:FindFirstChild(_d("Lh0cFlYNEw")) then
return wb
end
end
end
end
end

if yw() and getgenv().ACBXAllowReload ~= true then
local me = getgenv().ACBXWindow
local bsy = false
local hj = false

if me and me.Dialog then
pcall(function()
if me.GetState and me:GetState() == false then
me:SetState(true)
end

me:Dialog({
Title = _d("LDEwQmEGBQQABgoTChRNEx4QVgIDFFIAF10NDgMV"),
Description = _d("LFIRDUMaRwQBUgNfEQIMFgtCXwwGCRcWQloNRxkaGxETEAIeARsNXU1HPxcCDlIAAk0bBkJEChMFUgYKWhBHAhwXXRM3DwhSABddDQ4DFVIBXBMeTQEGDUMQRwsbABFHT0ceHVINXQ8eTR0cBxMGEQgAUgZBChEIAVIWWwZHDBERDUYNE0M"),
Buttons = {
{
Name = _d("PxcCDlIAAg"),
Callback = function()
hj = true
bsy = true
end,
},
{
Name = _d("JhcXEg"),
Callback = function()
bsy = true
end,
},
},
})
end)
else

hj = true
bsy = true
end

local dji = os.clock() + 90

while not bsy and os.clock() < dji do
task.wait(0.25)
end

if not hj then
warn(_d("NjMxIGs+RwEdEwYTEQILBwEHV0NKTQYaBxMACB0LUhZbAhNNGwFCQRYJAxscBRMQEwwLAUwTIAsEERlCYQYXARMRBxMXCE0BBQNDQw4ZXlINQUMSHhdSN10PCAwWUhFQEQ4dBlILXUMOGQFSMVYXEwQcFRETFwYPXA"))

return
end

warn(_d("NjMxIGs+Rx8XAg5SAA4DFVIWWwZHHwccDFoNAE0RHRJKQxAEBhpCRwsOHlIdDFZN"))
end

getgenv().ACBXAllowReload = nil

local xdeg = getgenv().ACBXWindow
if xdeg then
pcall(function()
xdeg:Unload()
end)
end

for ba, ts in ipairs({
game:GetService(_d("Lh0AB3QWDg")),
game:GetService(_d("PR4TG1YRFA")).LocalPlayer:FindFirstChild(_d("PR4TG1YRIBgb")),
}) do
if ts then
local cc = ces(ts)
if cc then
cc:Destroy()
end
end
end

local zuw = game:GetService(_d("PR4TG1YRFA"))
local lkft = game:GetService(_d("PxcCDloABhkXFjFHDBUMFRc"))
local pqeo = game:GetService(_d("PRMGClUKCQkbHAVgBhUbGxEH"))
local xl = game:GetService(_d("PwccMVYREQQRFw"))
local as = zuw.LocalPlayer
local dw = as:WaitForChild(_d("PR4TG1YRIBgb"))

local sf = false

local function iem()
pcall(function()
local ogd = game:GetService(_d("OQUXB10wAh8EGwFW"))
local fs = (gethui and gethui()) or dw
local yfy = Color3.fromRGB(77, 166, 255)
local cl = as.DisplayName

local function ywj(dvjg, bu, dfjc)
ogd:Create(
dvjg,
TweenInfo.new(bu, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
dfjc
):Play()
task.wait(bu)
end

local nrn = Instance.new(_d("PhEAB1YNIBgb"))
nrn.Name = _d("LDEwOnoNEx8d")
nrn.IgnoreGuiInset = true
nrn.DisplayOrder = 1000000
nrn.ResetOnSpawn = false
nrn.Parent = fs

local qj = Instance.new(_d("KwATD1Y"))
qj.Size = UDim2.fromScale(1, 1)
qj.BackgroundColor3 = Color3.fromRGB(4, 6, 11)
qj.BackgroundTransparency = 1
qj.BorderSizePixel = 0
qj.Parent = nrn

local kyel = Instance.new(_d("KwATD1Y"))
kyel.AnchorPoint = Vector2.new(0.5, 0.5)
kyel.Position = UDim2.fromScale(0.5, 0.5)
kyel.Size = UDim2.fromOffset(400, 176)
kyel.BackgroundColor3 = Color3.fromRGB(11, 16, 26)
kyel.BackgroundTransparency = 1
kyel.BorderSizePixel = 0
kyel.Parent = nrn

local vgwy = Instance.new(_d("ODsxDUENAh8"))
vgwy.CornerRadius = UDim.new(0, 14)
vgwy.Parent = kyel

local wjf = Instance.new(_d("ODshFkEMDAg"))
wjf.Color = Color3.fromRGB(46, 60, 86)
wjf.Thickness = 1
wjf.Transparency = 1
wjf.Parent = kyel

local nhvw = Instance.new(_d("KwATD1Y"))
nhvw.Size = UDim2.fromOffset(44, 2)
nhvw.Position = UDim2.new(0.5, -22, 0, 34)
nhvw.BackgroundColor3 = yfy
nhvw.BorderSizePixel = 0
nhvw.BackgroundTransparency = 1
nhvw.Parent = kyel

local pcx = Instance.new(_d("ORcKFn8CBQge"))
pcx.BackgroundTransparency = 1
pcx.Size = UDim2.new(1, -48, 0, 48)
pcx.Position = UDim2.fromOffset(24, 42)
pcx.Font = Enum.Font.GothamBold
pcx.Text = _d("LjBSKmYh")
pcx.TextSize = 28
pcx.TextYAlignment = Enum.TextYAlignment.Center
pcx.TextColor3 = Color3.fromRGB(236, 242, 255)
pcx.TextTransparency = 1
pcx.Parent = kyel

local fxf = Instance.new(_d("ORcKFn8CBQge"))
fxf.BackgroundTransparency = 1
fxf.Size = UDim2.new(1, -48, 0, 20)
fxf.Position = UDim2.fromOffset(24, 94)
fxf.Font = Enum.Font.Gotham
fxf.Text = _d("AR0TBloNAA")
fxf.TextSize = 14
fxf.TextColor3 = Color3.fromRGB(150, 163, 186)
fxf.TextTransparency = 1
fxf.Parent = kyel

local udq = Instance.new(_d("KwATD1Y"))
udq.Size = UDim2.fromOffset(240, 3)
udq.Position = UDim2.new(0.5, -120, 0, 130)
udq.BackgroundColor3 = Color3.fromRGB(34, 44, 64)
udq.BorderSizePixel = 0
udq.BackgroundTransparency = 1
udq.Parent = kyel

local jtzy = Instance.new(_d("KwATD1Y"))
jtzy.Size = UDim2.fromScale(0, 1)
jtzy.BackgroundColor3 = yfy
jtzy.BorderSizePixel = 0
jtzy.BackgroundTransparency = 1
jtzy.Parent = udq

local hgqo = Instance.new(_d("ODsxDUENAh8"))
hgqo.CornerRadius = UDim.new(0, 4)
hgqo.Parent = udq

local tfe = Instance.new(_d("ODsxDUENAh8"))
tfe.CornerRadius = UDim.new(0, 4)
tfe.Parent = jtzy

ywj(qj, 0.35, { BackgroundTransparency = 0.15 })
task.spawn(function()
ywj(kyel, 0.3, { BackgroundTransparency = 0 })
end)
task.spawn(function()
ywj(wjf, 0.3, { Transparency = 0 })
end)
ywj(pcx, 0.3, { TextTransparency = 0 })
ywj(nhvw, 0.3, { BackgroundTransparency = 0 })
ywj(fxf, 0.3, { TextTransparency = 0 })
ywj(udq, 0.3, { BackgroundTransparency = 0 })
ywj(jtzy, 0.3, { BackgroundTransparency = 0 })

local cbos = { _d("AR0TBloNAA"), _d("AR0TBloNAEM"), _d("AR0TBloNAENc"), _d("AR0TBloNAENcXA") }
task.spawn(function()
ogd:Create(jtzy, TweenInfo.new(1.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
Size = UDim2.fromScale(1, 1),
}):Play()
for tnry = 1, 6 do
fxf.Text = cbos[(tnry - 1) % #cbos + 1]
task.wait(0.2)
end
end)
task.wait(1.2)

ywj(pcx, 0.2, { TextTransparency = 1 })
ywj(fxf, 0.2, { TextTransparency = 1 })
ywj(udq, 0.2, { BackgroundTransparency = 1 })
ywj(jtzy, 0.2, { BackgroundTransparency = 1 })

pcx.Text = _d("ORoTDFgQRwsdAEJGEA4DFVIPSkMUDgAbEkc")
pcx.TextSize = 22
pcx.TextWrapped = true
fxf.Text = xqnl
ywj(pcx, 0.25, { TextTransparency = 0 })
ywj(fxf, 0.25, { TextTransparency = 0 })
task.wait(1.1)
ywj(pcx, 0.2, { TextTransparency = 1 })
ywj(fxf, 0.2, { TextTransparency = 1 })

pcx.Text = _d("OhceAVwOAk0") .. cl .. _d("TSYdQnAhRyUHEA")
pcx.TextSize = 22
fxf.Text = _d("HgYTEEcKCQo")
ywj(pcx, 0.3, { TextTransparency = 0 })
ywj(fxf, 0.3, { TextTransparency = 0 })
task.wait(1.3)

ywj(pcx, 0.25, { TextTransparency = 1 })
ywj(fxf, 0.25, { TextTransparency = 1 })
ywj(qj, 0.35, { BackgroundTransparency = 1 })

nrn:Destroy()
end)

sf = true
end

task.spawn(iem)

local nb = lkft:WaitForChild(_d("PxcfDUcGFA"))

local function jw(ea, rtz)
local jy = nb:FindFirstChild(ea)

if jy then
return jy
end

local jg = nb:WaitForChild(ea, rtz or 3)

if not jg then
warn(_d("LDEwOglDFQgfHRZWQ0A") .. ea .. _d("SlIcDRMPCAMVFxATBh8EAQYREwoJTQYaC0BDAAwfF0JFBhUeGx0ME05HGRoTFhMFAgwGBxBWQw4eUh0EVQ"))
end

return jg
end

local cb = {
StartNPCBattle = jw(_d("PgYTEEctNy4wExZHDwI")),
NPCBattleResult = jw(_d("IyIxIFIXEwEXIAdAFgsZ")),
SyncNPCCooldowns = jw(_d("PgscAX0zJC4dHQ5XDBADAQ")),
SetNPCDifficulty = jw(_d("PhcGLGMgIwQUFAtQFgsZCw")),
StartRaidBattle = jw(_d("PgYTEEcxBgQWMANHFwsI")),
SetRaidDifficulty = jw(_d("PhcGMFIKAykbFARaABIBBgs")),
RaidProgress = jw(_d("PxMbBmMRCAoAFxFA")),
RequestRaidProgress = jw(_d("PxcDF1YQEz8TGwZjEQgKABcRQA")),
SyncInfiniteRoomProgress = jw(_d("PgscAXoNAQQcGxZWMQgCHyIQXAQVCAEB")),
BuyRaidItem = jw(_d("LwcLMFIKAyQGFw8")),
RaidShopState = jw(_d("PxMbBmALCB0hBgNHBg")),
RaidNotify = jw(_d("PxMbBn0MEwQUCw")),
SyncItems = jw(_d("PgscAXoXAgAB")),

UseItem = jw(_d("OAEXK0cGCg")),
RequestWeatherState = jw(_d("PxcDF1YQEzoXExZbBhU+BhMWVg")),
WeatherChanged = jw(_d("OhcTFlsGFS4aEwxUBgM")),
FishingUpdate = jw(_d("KxsBCloNADgCFgNHBg")),
FishingThrow = jw(_d("KxsBCloNADkaAA1E")),
FishingReel = jw(_d("KxsBCloNAD8XFw4")),
FishingStop = jw(_d("KxsBCloNAD4GHRI")),

FishingIslandTeleport = jw(_d("KxsBCloNACQBHgNdBzMIHhcSXBET")),

SyncCollection = jw(_d("PgscAXAMCwEXERZaDAk")),
RequestSync = jw(_d("PxcDF1YQEz4LHAE")),
ClaimIndexReward = jw(_d("Lh4TC14qCQkXCjBWFAYfFg")),
RequestAchievements = jw(_d("PxcDF1YQEywRGgtWFQIAFxwWQA")),
SyncAchievements = jw(_d("PgscAXIADwQXBAdeBgkZAQ")),
ClaimAchievement = jw(_d("Lh4TC14iBAUbFxRWDgIDBg")),
RequestQuests = jw(_d("PxcDF1YQEzwHFxFHEA")),
SyncQuests = jw(_d("PgscAWIWAh4GAQ")),
ClaimQuest = jw(_d("Lh4TC14yEggBBg")),
RequestPeriodicQuests = jw(_d("PxcDF1YQEz0XAAtcBw4OIwcHQBcU")),
SyncPeriodicQuests = jw(_d("PgscAWMGFQQdFgtQMhIIAQYR")),
ClaimPeriodicQuest = jw(_d("Lh4TC14zAh8bHQZaADYYFwEW")),

OpenFuseDialog = jw(_d("IgIXDHUWFAg2GwNfDAA")),
FuseCards = jw(_d("KwcBB3ACFQkB")),
OpenDeconstructDialog = jw(_d("IgIXDHcGBAIcARZBFgQZNhsDXwwA")),
DeconstructCards = jw(_d("KRcRDV0QEx8HERZwAhUJAQ")),
OpenPackShop = jw(_d("IgIXDGMCBAYhGg1D")),
EquipPack = jw(_d("KAMHC0MzBg4Z")),

RequestSkillTree = jw(_d("PxcDF1YQEz4ZGw5fNxUIFw")),
BuySkillNode = jw(_d("LwcLMVgKCwE8HQZW")),
OpenAccessoryShop = jw(_d("IgIXDHIABAgBAQ1BGjQFHQI")),
OpenAccessoryShop2 = jw(_d("IgIXDHIABAgBAQ1BGjQFHQJQ")),
BuyAccessory = jw(_d("LwcLI1AAAh4BHRBK")),
BuyAccessory2 = jw(_d("LwcLI1AAAh4BHRBKUQ")),
EquipAccessory = jw(_d("KAMHC0MiBA4XARFcER4")),

RedeemCode = jw(_d("PxcWB1YOJAIWFw")),

OpenNPCDialog = jw(_d("IgIXDH0zJCkbEw5cBA")),
TeleportToWorld = jw(_d("ORceB0MMFRkmHTVcEQsJ")),
RaidBattleStarted = jw(_d("PxMbBnECExkeFzFHAhUZFxY")),
BattleEnd = jw(_d("LxMGFl8GIgMW")),
StartBattle = jw(_d("PgYTEEchBhkGHgc")),
RequestInfiniteRoomProgress = jw(_d("PxcDF1YQEyQcFAtdChMIIB0NXjMVAhUAB0AQ")),
EndTowerRemote = jw(_d("KBwWNlwUAh8gFw9cFwI")),
SaveClientData = jw(_d("PhMEB3APDggcBiZSFwY")),
OpenRaidShop = jw(_d("IgIXDGECDgkhGg1D")),
RequestItemSync = jw(_d("PxcDF1YQEyQGFw9gGgkO")),
FishingGetState = jw(_d("KxsBCloNACoXBjFHAhMI")),
FishingSetAuto = jw(_d("KxsBCloNAD4XBiNGFwg")),
FishingShop = jw(_d("KxsBCloNAD4aHRI")),
DigGetState = jw(_d("KRsVJVYXNBkTBgc")),
DigShop = jw(_d("KRsVMVsMFw")),
DigAction = jw(_d("KRsVI1AXDgIc")),
DigUpdate = jw(_d("KRsVN0MHBhkX")),
}

local ja = require(lkft.ModuleScripts.NPCData)
local xxpx = require(lkft.ModuleScripts.WorldDifficultyData)
local rw = require(lkft.ModuleScripts.BossData)
local ven = require(lkft.ModuleScripts.RaidData)
local yi = require(lkft.ModuleScripts.InfiniteRoomData)
local bua = require(lkft.ModuleScripts.CraftData)
local ls = require(lkft.ModuleScripts.AchievementData)
local vxo = require(lkft.ModuleScripts.RaidShopData)
local cuz = require(lkft.ModuleScripts.ItemData)
local uu = require(lkft.ModuleScripts.CardData)
local ly = require(lkft.ModuleScripts.SkillTreeData)

local pgxj = {
enabled = false,
role = { _d("GR0FB0E"), _d("AwIR") },

picked = { _d("OR0FB0E"), _d("IyIxQlECExkeFxE") },
hasSlot2 = nil,
toggle = nil,

optionsFor = {
{ _d("OR0FB0E"), _d("JRMeDlwUAggcUhZcFAIf"), _d("IyIxQlECExkeFxE") },
{ _d("IyIxQlECExkeFxE"), _d("JAEeA10HRwUTAAZQDBUI") },
},
roleIds = {
Tower = _d("GR0FB0E"),

[_d("JRMABlAMFQhSBg1EBhU")] = _d("BRMABlAMFQg"),
[_d("IyIxQlECExkeFxE")] = _d("AwIR"),
[_d("JRMeDlwUAggcUhZcFAIf")] = _d("BRMeDlwUAggc"),
[_d("JAEeA10HRwUTAAZQDBUI")] = _d("BRMABlAMFQg"),
},
roleNames = {
tower = _d("OR0FB0E"),
hardcore = _d("JAEeA10HRwUTAAZQDBUI"),
npc = _d("IyIxQlECExkeFxE"),
halloween = _d("JRMeDlwUAggcUhZcFAIf"),
},
}

function pgxj.detectSlot2()
local zejk = dw:FindFirstChild(_d("PhcGFloNAB41Bws"))
local lrn = zejk and zejk:FindFirstChild(_d("Ph4dFmcGBgBAIA1E"), true)

if lrn then
return lrn.Visible == true
end

return nil
end

function pgxj.roleSlot(qr)
if not pgxj.enabled then
return 1
end

for usf = 1, 2 do
if pgxj.role[usf] == qr then
return usf
end
end

return nil
end

function pgxj.isTowerRole(cqn)
return cqn == _d("GR0FB0E") or cqn == _d("BRMABlAMFQg") or cqn == _d("BRMeDlwUAggc")
end

function pgxj.towerSlot()
return pgxj.roleSlot(_d("GR0FB0E"))
end

function pgxj.hardcoreSlot()
local sx = pgxj.roleSlot(_d("BRMABlAMFQg"))

if sx == 2 and pgxj.hasSlot2 == false then
return 1
end

return sx
end

function pgxj.halloweenSlot()

local zr = pgxj.roleSlot(_d("BRMeDlwUAggc"))

if zr == 1 then
return 1
end

return nil
end

function pgxj.roomSlot()
local xn = pgxj.roleSlot(_d("AwIR"))

if not pgxj.enabled then
return 1
end

if xn == nil then
return nil
end

if xn == 2 and pgxj.hasSlot2 == false then
return 1
end

return xn
end

function pgxj.splitNpc()
return pgxj.enabled and pgxj.role[1] == _d("AwIR") and pgxj.role[2] == _d("AwIR")
end

function pgxj.busy(uxmj)
local vs = dw:FindFirstChild(uxmj == 2 and _d("JBwwA0cXCwhA") or _d("JBwwA0cXCwg"))

return vs ~= nil and vs:IsA(_d("Lx0dDmUCCxgX")) and vs.Value == true
end

function pgxj.roleName(bxz)
return pgxj.roleNames[pgxj.role[bxz]] or pgxj.roleNames.npc
end

function pgxj.roleLabel(imbx)
return pgxj.picked[imbx] or pgxj.roleName(imbx)
end

local yh = nil

if lkft:FindFirstChild(_d("IB0WF18GNA4AGxJHEA")) and lkft.ModuleScripts:FindFirstChild(_d("JRMeDlwUAggcJg1EBhUpEwYD")) then
local kout, fghf = pcall(function()
return require(lkft.ModuleScripts.HalloweenTowerData)
end)

if kout then
yh = fghf
end
end

local zmxh = nil

if lkft:FindFirstChild(_d("IB0WF18GNA4AGxJHEA")) and lkft.ModuleScripts:FindFirstChild(_d("KxsBCloNACkTBgM")) then
local qq, jb = pcall(function()
return require(lkft.ModuleScripts.FishingData)
end)

if qq then
zmxh = jb
end
end

local function mif(kd)
return tostring(kd):reverse():gsub(_d("RVcWR1dGA0Q"), _d("SENe")):reverse():gsub(_d("M14"), _d(""))
end

local bhkm = {
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

getgenv().ACBXHalloweenUpgrades = bhkm.upgrade
getgenv().ACBXHalloweenTower = bhkm.run

bhkm.shopData = vxo.ShopById.halloween
bhkm.shopItems = {}
bhkm.shopLabels = {}
bhkm.cardNames = {
hw_brook = _d("LwAdDVhDTyAHAQtQAgtNIRkHXwYTAhxb"),
hw_death_the_kid = _d("KRcTFltDEwUXUilaB0dFOhMQXgwJBBFSJUYNRzobFw5XBhVE"),
hw_barragan = _d("LxMAEFIEBgNSWjFYBgsIBh0MEygOAxVb"),
}
bhkm.cardShortNames = {
hw_brook = _d("LwAdDVg"),
hw_death_the_kid = _d("KRcTFltDEwUXUilaBw"),
hw_barragan = _d("LxMAEFIEBgM"),
}

for bckm, ulv in ipairs(bhkm.shopData.Items) do
local ut, laov = next(ulv.price or {})
local gln = ulv.id
local nmw = ulv.id

if ulv.itemId then
local nivz = cuz.ById[ulv.itemId]
gln = nivz and (nivz.name or ulv.itemId) or ulv.itemId
nmw = gln
elseif ulv.cardId then
gln = bhkm.cardNames[ulv.cardId] or (uu.ById[ulv.cardId] and uu.ById[ulv.cardId].name) or ulv.cardId
nmw = bhkm.cardShortNames[ulv.cardId] or gln
end

local gk = ut == _d("BRMeDlwUAggcLQFSDQMU") and _d("LhMcBko") or (ut == _d("BxMRCWwMOAETHBZWEQk") and _d("IRMcFlYRCR4") or tostring(ut))
local mbh = gln .. _d("TZDy9hM") .. mif(laov) .. _d("TQ") .. gk

table.insert(bhkm.shopItems, {
id = ulv.id,
label = mbh,
shortName = nmw,
currency = ut,
price = laov,
stock = ulv.stock,
cardId = ulv.cardId,
})

table.insert(bhkm.shopLabels, mbh)
end

for cfl, vk in ipairs({
_d("PxcDF1YQEyUTHg5cFAIIHCcSVBEGCRcB"),
_d("LwcLKlIPCwIFFwddNhcKABMGVg"),
_d("JRMeDlwUAggcJxJUEQYJFyEWUhcC"),
_d("PxcDF1YQEyUTHg5cFAIIHCYNRAYVPQAdBUEGFB4"),
_d("PgscAXsCCwEdBQdWDTMCBRcQYxEICgAXEUA"),
_d("IgIXDHsCCwEdBQdWDTMCBRcQ"),
}) do
bhkm.remote[vk] = jw(vk)
end

function bhkm.fire(krv, ...)
local vn = bhkm.remote[krv]

if not vn then
return
end

local uo = { ... }

pcall(function()
vn:FireServer(table.unpack(uo))
end)
end

function bhkm.on(urbs, yb)
local lkc = bhkm.remote[urbs]

if lkc then
lkc.OnClientEvent:Connect(yb)
end
end

if yh then
for ifh, dlg in ipairs(yh.Upgrades) do
table.insert(bhkm.upgrades, {
id = dlg.id,
name = dlg.name,
maxLevel = dlg.maxLevel,
})

table.insert(bhkm.labels, dlg.name)
end
end

function bhkm.level(ued)
if not yh then
return 0
end

return yh.getUpgradeLevel(bhkm.upgrade.levels, ued)
end

function bhkm.cost(pb)
if not yh then
return nil
end

return yh.getUpgradeCost(pb, bhkm.level(pb))
end

function bhkm.bonus(pvs, vy)
if not yh then
return _d("")
end

return yh.formatUpgradeBonus(pvs, vy)
end

function bhkm.request()
bhkm.upgrade.lastRequest = os.time()
bhkm.fire(_d("PxcDF1YQEyUTHg5cFAIIHCcSVBEGCRcB"))
end

function bhkm.text()
if not yh then
return _d("JRMeDlwUAggcUjZcFAIfUhYDRwJHBAFSDFwXRwQcUhZbChRNEAcLXwdJ")
end

local den = bhkm.upgrade
local qp = {}

if den.balance == nil then
table.insert(qp, _d("PQcfElgKCR5IUk8TSwYeGRsMVEMTBRdSEVYREQgAWw"))
else
table.insert(qp, _d("PQcfElgKCR5IUg") .. mif(den.balance))
end

for eqkd, hx in ipairs(bhkm.upgrades) do
local fu = bhkm.level(hx.id)
local drq = bhkm.cost(hx.id)
local anwb = den.selected[hx.id] and _d("NgovQg") or _d("NlIvQg")
local xx = anwb .. hx.name .. _d("TVI+FBM") .. fu .. _d("Qg") .. hx.maxLevel

if drq then
table.insert(qp, xx .. _d("TVIcB0sXRw") .. tostring(drq) .. _d("TVI") .. bhkm.bonus(hx.id, fu + 1))
else
table.insert(qp, xx .. _d("TVIfA0sGAw"))
end
end

if not next(den.selected) then
table.insert(qp, _d("PRsRCRMWFwoAEwZWEEcEHFIWWwZHCQAdElcMEANSEwxXQyYYBh1CRhMAHxMWB0BDBRgLAUJHCwJNERoHUhMCHgZSDV0GRxQdB0JQAglNExQEXBEDQw"))
end

return table.concat(qp, _d("Zw"))
end

function bhkm.buy()
local eg = bhkm.upgrade

if eg.waiting or eg.balance == nil or os.time() - eg.lastBuy < 1 then
return
end

local csy = nil
local mbhp = nil

for lo, lb in ipairs(bhkm.upgrades) do
if eg.selected[lb.id] and os.time() >= (eg.failedUntil[lb.id] or 0) then
local oxp = bhkm.cost(lb.id)

if oxp and eg.balance >= oxp and (not mbhp or oxp < mbhp) then
csy = lb.id
mbhp = oxp
end
end
end

if not csy then
return
end

eg.waiting = true
eg.lastBuy = os.time()
eg.pendingId = csy
eg.pendingLevel = bhkm.level(csy)

eg.balance = eg.balance - mbhp

bhkm.fire(_d("LwcLKlIPCwIFFwddNhcKABMGVg"), csy)
end

bhkm.on(_d("JRMeDlwUAggcJxJUEQYJFyEWUhcC"), function(tuh)
if type(tuh) ~= _d("GRMQDlY") then
return
end

local hbc = bhkm.upgrade

hbc.balance = tonumber(tuh.balance) or 0
hbc.levels = type(tuh.levels) == _d("GRMQDlY") and tuh.levels or {}

if hbc.pendingId then
if bhkm.level(hbc.pendingId) <= hbc.pendingLevel then
hbc.failedUntil[hbc.pendingId] = os.time() + 15
end

hbc.pendingId = nil
end

if type(tuh.message) == _d("HgYAC10E") then
hbc.lastMessage = tuh.message
end

hbc.waiting = false
end)

bhkm.on(_d("PgscAXsCCwEdBQdWDTMCBRcQYxEICgAXEUA"), function(re, tohn)
bhkm.run.highest = tonumber(re) or 0
bhkm.run.savedRun = type(tohn) == _d("GRMQDlY") and tohn or nil
end)

bhkm.on(_d("IgIXDHsCCwEdBQdWDTMCBRcQ"), function(hiu, zlh, ej)
bhkm.run.highest = tonumber(hiu) or bhkm.run.highest
bhkm.run.savedRun = type(ej) == _d("GRMQDlY") and ej or nil
end)

cb.BattleEnd.OnClientEvent:Connect(function(kyai)
if type(kyai) == _d("GRMQDlY") and kyai.mode == _d("BBwUC10KEwgtAA1cDg") and kyai.tower == _d("BRMeDlwUAggc") then
bhkm.run.inBattle = false
bhkm.run.pending = true
bhkm.run.pendingUntil = os.time() + 3

task.delay(0.3, function()
bhkm.requestProgress()
end)
end
end)

function bhkm.requestProgress()
bhkm.run.lastRequest = os.time()
bhkm.fire(_d("PxcDF1YQEyUTHg5cFAIIHCYNRAYVPQAdBUEGFB4"))
end

function bhkm.bestRoom()
local fvx = bhkm.run.highest

if not yh or fvx == nil then
return nil
end

for lmr, en in ipairs(yh.Milestones) do
if yh.isMilestoneUnlocked(en, fvx)
and not yh.isMilestoneCleared(en, fvx) then
return en
end
end

return nil
end

function bhkm.startRun()
local sqk = bhkm.bestRoom()

if not sqk then
return false
end

local dlo = bhkm.run.savedRun
local ybp = type(dlo) == _d("GRMQDlY") and dlo.milestone == sqk
local qnv = ybp and (tonumber(dlo.currentFloor) or sqk) or sqk

local un = pgxj.halloweenSlot() or 1

local aj = getgenv().ACBXAuto

aj = type(aj) == _d("GRMQDlY") and aj.bossTeams or nil

if bhkm.run.teamChosen and aj and aj.applyTeam then
aj.applyTeam(bhkm.run.team, un)
end

local bzi = dw:FindFirstChild(un == 2 and _d("PxcBB0chBhkGHgd1DwgCAEA") or _d("PxcBB0chBhkGHgd1DwgCAA"))

if bzi and bzi:IsA(_d("LxscBlIBCwg3BAddFw")) then
pcall(function()
bzi:Fire(qnv, _d("BBwUC10KEwgtAA1cDg"))
end)
end

local gi = dw:FindFirstChild(un == 2 and _d("PgYTEEcqCQsbHAtHBjUCHR8gUhcTARdA") or _d("PgYTEEcqCQsbHAtHBjUCHR8gUhcTARc"))

if gi and gi:IsA(_d("LxscBlIBCwg3BAddFw")) then
pcall(function()
gi:Fire(qnv, _d("BRMeDlwUAggc"), qnv)
end)
end

bhkm.run.milestone = sqk
bhkm.run.savedRun = nil
bhkm.run.inBattle = true
bhkm.run.inBattleUntil = os.time() + 120
bhkm.run.pending = true
bhkm.run.pendingUntil = os.time() + 10

if ybp then
cb.StartBattle:FireServer(_d("BBwUC10KEwgtAA1cDg"), {
continue = true,
tower = _d("BRMeDlwUAggc"),
slot = un,
})
else
cb.StartBattle:FireServer(_d("BBwUC10KEwgtAA1cDg"), {
tower = _d("BRMeDlwUAggc"),
milestone = sqk,
slot = un,
})
end

return true
end

local bde = {}
for sfy, qoug in ipairs(ja.NPCs) do
bde[qoug.name] = qoug.id
end

local mpga = getgenv().ACBXCooldowns
if type(mpga) ~= _d("GRMQDlY") then
mpga = {}
getgenv().ACBXCooldowns = mpga
end

local xwk = getgenv().ACBXAuto
if type(xwk) == _d("GRMQDlY") and type(xwk.cooldowns) == _d("GRMQDlY") then
for uc, ck in pairs(xwk.cooldowns) do
if mpga[uc] == nil then
mpga[uc] = ck
end
end
end

local ydsj = {
enabled = false,
story = false,
storyDifficulty = _d("Ax0AD1IP"),
storyDropdown = nil,
selectedByWorld = {},
difficulties = { _d("Ax0AD1IP") },
walkToNpc = false,
cooldowns = mpga,
activeDifficulty = {},
lastFetch = {},
unlocked = {},
currentBattle = nil,
battlePending = false,
battlePendingUntil = 0,
}

ydsj.bossTeams = {
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

path = _d("LDEwOhwXAgwfAUxZEAgD"),
}

function ydsj.bossTeams.trackCollection()
if ydsj.bossTeams.collectionHooked then
return
end

ydsj.bossTeams.collectionHooked = true

local cou = nb:FindFirstChild(_d("PgscAXAMCwEXERZaDAk"))

if not cou then
return
end

cou.OnClientEvent:Connect(function(zbxc)
if type(zbxc) == _d("GRMQDlY") and type(zbxc.teams) == _d("GRMQDlY") then
ydsj.bossTeams.teams = zbxc.teams
ydsj.bossTeams.teamsAt = os.clock()
end
end)

task.spawn(function()

task.wait(3)

for zm = 1, 8 do
if ydsj.bossTeams.teams then
return
end

local xsg = nb:FindFirstChild(_d("PgUbFlALMwgTHw"))
local qbv = ydsj.bossTeams.slotTeam
local cv = nil

if xsg and type(qbv) == _d("CwccAUcKCAM") then
local jeg, xu = pcall(qbv, 2)
cv = jeg and xu or nil

if not cv then
jeg, xu = pcall(qbv, 1)
cv = jeg and xu or nil
end
end

if cv then
pcall(function()
xsg:FireServer(cv, false, 2)
end)
end

task.wait(6)
end
end)
end

function ydsj.bossTeams.teamCards(zv)
local wasf = ydsj.bossTeams.teams

if type(wasf) ~= _d("GRMQDlY") then
return nil
end

local ws = wasf[zv]

if type(ws) ~= _d("GRMQDlY") then
return 0
end

local hnug = 0

for nh, ool in pairs(ws) do
if type(ool) == _d("GRMQDlY") then
hnug = hnug + 1
end
end

return hnug
end

function ydsj.bossTeams.raidState()
return getgenv().ACBXAutoRaid
end

function ydsj.bossTeams.save()
if type(writefile) ~= _d("CwccAUcKCAM") then
return false
end

local yd = {}

for coe, yhm in pairs(ydsj.bossTeams.picked) do
yd[coe] = yhm
end

local dk = {}

for xkgd, kdbd in pairs(ydsj.bossTeams.raidPicked) do
dk[xkgd] = kdbd
end

local ai = {}

for qf, ssge in pairs(ydsj.bossTeams.towerPicked) do
ai[qf] = ssge
end

return pcall(function()
if type(makefolder) == _d("CwccAUcKCAM") and type(isfile) == _d("CwccAUcKCAM") and not isfile(ydsj.bossTeams.path) then
pcall(makefolder, _d("LDEwOg"))
end

local amy = ydsj.bossTeams.raidState()
local bz = amy and amy.worldBoss
local zpck = nil

if bz and bz.teamChosen then
zpck = bz.team
end

writefile(ydsj.bossTeams.path, game:GetService(_d("JQYGEmAGFRsbEQc")):JSONEncode({
areas = yd,
raids = dk,
towers = ai,
swap = ydsj.bossTeams.swap,
globalBoss = zpck,
updatedAt = os.time(),
}))
end)
end

function ydsj.bossTeams.load()
if type(readfile) ~= _d("CwccAUcKCAM") or type(isfile) ~= _d("CwccAUcKCAM") then
return false
end

local zi, qs = pcall(function()
if not isfile(ydsj.bossTeams.path) then
return nil
end

return readfile(ydsj.bossTeams.path)
end)

if not zi or type(qs) ~= _d("HgYAC10E") or #qs == 0 then
return false
end

local mjt
local syf = pcall(function()
mjt = game:GetService(_d("JQYGEmAGFRsbEQc")):JSONDecode(qs)
end)

if not syf or type(mjt) ~= _d("GRMQDlY") then
return false
end

if type(mjt.areas) == _d("GRMQDlY") then
for dhvx, iymd in pairs(mjt.areas) do
local iwbg = tonumber(iymd)

if iwbg and iwbg >= 1 and iwbg <= 4 then
ydsj.bossTeams.picked[dhvx] = iwbg
end
end
end

if type(mjt.raids) == _d("GRMQDlY") then
for czpv, xf in pairs(mjt.raids) do
local an = tonumber(xf)

if an and an >= 1 and an <= 4 then
ydsj.bossTeams.raidPicked[czpv] = an
end
end
end

if type(mjt.towers) == _d("GRMQDlY") then
for xd, aig in pairs(mjt.towers) do
local taw = tonumber(aig)

if taw and taw >= 1 and taw <= 4 then
ydsj.bossTeams.towerPicked[xd] = taw
end
end
end

if type(mjt.swap) == _d("GRMQDlY") then
local ccdl = tonumber(mjt.swap.team)
local zqo = tonumber(mjt.swap.floor)

if ccdl and ccdl >= 1 and ccdl <= 4 then
ydsj.bossTeams.swap.team = ccdl
end

if zqo and zqo > 0 then
ydsj.bossTeams.swap.floor = zqo
end

local duy = tonumber(mjt.swap.team2)
local rk = tonumber(mjt.swap.floor2)

if duy and duy >= 1 and duy <= 4 then
ydsj.bossTeams.swap.team2 = duy
end

if rk and rk > 0 then
ydsj.bossTeams.swap.floor2 = rk
end

ydsj.bossTeams.swap.on = mjt.swap.on == true
end

local nlk = tonumber(mjt.globalBoss)
local afdu = ydsj.bossTeams.raidState()
local vh = afdu and afdu.worldBoss

if nlk and nlk >= 1 and nlk <= 4 and vh then
vh.team = nlk

vh.teamChosen = true
end

return true
end

local cp = nil
local kwo = nil

local function sqfu(kyun, bkj)
return kyun .. _d("EQ") .. bkj
end

local function hp(pmu, ozj)
return ydsj.cooldowns[sqfu(pmu, ozj)] or 0
end

local function hxdy(akrw, nuu, qsng)
ydsj.cooldowns[sqfu(akrw, nuu)] = qsng
end

getgenv().ACBXAuto = ydsj

local dlzc = {
enabled = false,
picks = { [1] = {}, [2] = {} },
cursor = { [1] = 1, [2] = 1 },
losses = { [1] = {}, [2] = {} },
inFlight = {},

lossLimit = 3,
difficulties = { _d("Ax0AD1IP") },
walkToBoss = false,
walkSpeed = 18,
pending = {},
pendingUntil = {},
cleared = {},
progress = {},
}

getgenv().ACBXAutoRaid = dlzc

dlzc.worldBoss = {
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

fishingMode = _d("GR0VB0cLAh8"),
fishingDropdown = nil,

digHold = false,

walkToBoss = false,
walkToggle = nil,

building = false,
}

ydsj.bossTeams.trackCollection()
ydsj.bossTeams.load()

function dlzc.worldBoss.data()
local dd = dlzc.worldBoss

if dd.module == nil then
local ohp, eaj = pcall(function()
return require(lkft.ModuleScripts.WorldBossData)
end)

dd.module = ohp and eaj or false
end

return dd.module or nil
end

function dlzc.worldBoss.clock(uwa)
uwa = math.max(0, math.floor(tonumber(uwa) or 0))

local pe = math.floor(uwa / 3600)
local wgd = math.floor((uwa % 3600) / 60)
local qi = uwa % 60

if pe > 0 then
return string.format(_d("SBYaQhZTVQkf"), pe, wgd)
end

if wgd > 0 then
return string.format(_d("SBYfQhZTVQkB"), wgd, qi)
end

return string.format(_d("SBYB"), qi)
end

function dlzc.worldBoss.status()
local ne = nil

pcall(function()
ne = lkft:FindFirstChild(_d("Oh0ADlchCB4BIRZSFxIe"))
end)

return ne
end

function dlzc.worldBoss.isOpen()
local ht = dlzc.worldBoss.status()

if not ht then
return nil
end

return ht:GetAttribute(_d("LBEGC0UG")) == true
end

function dlzc.worldBoss.window()
local car = dlzc.worldBoss.status()

if not car then
return nil, nil
end

return tonumber(car:GetAttribute(_d("KBwWEXIX"))), tonumber(car:GetAttribute(_d("IxcKFnIX")))
end

function dlzc.worldBoss.cycle()
local mrvz = dlzc.worldBoss
local ugde = mrvz.data()

if not ugde or not ugde.getCycleState then
return nil
end

local sbdr, xyi = pcall(function()
return ugde.getCycleState()
end)

return sbdr and xyi or nil
end

function dlzc.worldBoss.shopList()
local io = dlzc.worldBoss

if io.items then
return io.items
end

local seth = {}
local po = io.data()

if not po or type(po.ShopItems) ~= _d("GRMQDlY") then
io.items = seth
return seth
end

for jjw, ebh in ipairs(po.ShopItems) do
local fpl = nil

pcall(function()
if ebh.itemId then
local iv = require(lkft.ModuleScripts.ItemData)
local kfs = iv[ebh.itemId] or (iv.ById and iv.ById[ebh.itemId])
fpl = kfs and kfs.name or nil
elseif ebh.cardId then
local hzj = require(lkft.ModuleScripts.CardData)
local ymhj = hzj[ebh.cardId] or (hzj.ById and hzj.ById[ebh.cardId])
fpl = ymhj and ymhj.name or nil
end
end)

local ved = dlzc.worldBoss.state

if type(ved) == _d("GRMQDlY") and type(ved.shop) == _d("GRMQDlY") then
for vw, tm in ipairs(ved.shop) do
if tm.id == ebh.id and tm.name then
fpl = tm.name
break
end
end
end

if not fpl then

fpl = tostring(ebh.accessoryId or ebh.id or _d("Ug")):gsub(_d("Mg"), _d("TQ")):gsub(_d("RVcTSxs4QhpVL0ga"), function(mm, wfoa)
return mm:upper() .. wfoa
end)
end

table.insert(seth, {
id = ebh.id,
name = fpl,
price = tonumber(ebh.price) or 0,
kind = ebh.itemId and _d("BAYXDw") or (ebh.cardId and _d("DhMABg") or _d("DBERB0AQCB8L")),
})
end

io.items = seth

return seth
end

function dlzc.worldBoss.bodyText()
local fox = dlzc.worldBoss
local vok = fox.state

if type(vok) ~= _d("GRMQDlY") then
return _d("PxcTBloNAE0GGgcTAQgeAVxMHQ")
end

local xev = {}
local xre = fox.cycle()
local spc = fox.isOpen()
local ju, tvq = fox.window()

if spc == nil then
spc = vok.open == true
end

if spc then
local iity = _d("IgIXDA")

if not ju and xre then
ju = xre.endsAt
end

if ju and ju > os.time() then
iity = iity .. _d("TbDFQg") .. fox.clock(ju - os.time()) .. _d("TR4XBEc")
end

table.insert(xev, iity)
else
local zznv = _d("KR0FDBMFCB9SHA1E")

if not tvq and xre then
tvq = xre.nextAt
end

if tvq and tvq > os.time() then
zznv = zznv .. _d("ZzATAVhDDgNS") .. fox.clock(tvq - os.time())
end

table.insert(xev, zznv)
end

table.insert(xev, _d("IBcWA18QXU0") .. tostring(vok.medals or 0) .. _d("ZzkbDl8QXU0") .. tostring(vok.kills or 0))

if vok.inFight then
table.insert(xev, _d("KxsVCkcKCQo"))
elseif spc then

table.insert(xev, vok.killedThisSpawn and _d("PxcTBkppLAQeHgdXQxMFGwFCQBMGGhxSA18RAgwWCw") or _d("PxcTBko"))
end

if fox.stopAtFull then
local lem, pvz = fox.meter()

if lem and pvz then
local function vph(eqt)
if eqt >= 1000000000 then
return string.format(_d("SFxDBHE"), eqt / 1000000000)
elseif eqt >= 1000000 then
return string.format(_d("SBU/"), math.floor(eqt / 100000) / 10)
elseif eqt >= 1000 then
return string.format(_d("SBU5"), math.floor(eqt / 100) / 10)
end

return tostring(math.floor(eqt))
end

table.insert(xev, _d("PhcAFFYRRwAXBgdBWUc") .. vph(lem) .. _d("TV1S") .. vph(pvz)
.. (fox.meterFull() and _d("ZzQHDl9DSk0cHRYTBQ4KGgYLXQRHGRobERMQFwwFHA") or _d("")))
end
end

return table.concat(xev, _d("Z3g"))
end

function dlzc.worldBoss.shopText()
local esl = dlzc.worldBoss
local kff = esl.state

if type(kff) ~= _d("GRMQDlY") or type(kff.shop) ~= _d("GRMQDlY") then
return _d("PxcTBloNAE0GGgcTEA8CAlxMHQ")
end

local nlif = { _d("IBcWA18QXU0") .. tostring(kff.medals or 0) }

for qzap, fjc in ipairs(kff.shop) do
local kyma = tostring(fjc.name or fjc.id)
local mysp = tostring(fjc.price or _d("Ug"))
local pm

if fjc.kind == _d("BAYXDw") then
pm = kyma .. _d("Zw") .. mysp .. _d("TbDFQg") .. tostring(fjc.left or 0) .. _d("Qg") .. tostring(fjc.stock or _d("Ug")) .. _d("TR4XBEc")
elseif fjc.owned then
pm = kyma .. _d("Zz0FDFYH")
else
pm = kyma .. _d("Zw") .. mysp .. _d("TbDFQlwNAk0dFAQ")
end

table.insert(nlif, pm)
end

return table.concat(nlif, _d("Z3g"))
end

function dlzc.worldBoss.shopOptions()
local fdga = dlzc.worldBoss

if fdga.options then
return fdga.options
end

local dg = {}

fdga.labelToId = {}

for atlc, arhp in ipairs(fdga.shopList()) do
local zmzq = arhp.name .. _d("TbDFQg") .. tostring(arhp.price)

table.insert(dg, zmzq)
fdga.labelToId[zmzq] = arhp.id
end

fdga.options = dg

return dg
end

local function nct(sd)
local gliu = dlzc.progress[sd]
local ginc = lkft:FindFirstChild(_d("PxMbBmAXBhkHAQ"))
local jhsh = ginc and ginc:GetAttribute(_d("LgsRDlYqAw"))

if type(gliu) == _d("GRMQDlY") then
if gliu.cycleId then
jhsh = gliu.cycleId
end

if gliu.completed and gliu.completedRaidId then
return tostring(jhsh) .. _d("VxYdDFY")
end

local qtq = gliu.phaseIndex or gliu.phase

if qtq then
return tostring(jhsh) .. _d("Vw") .. tostring(qtq)
end
end

return tostring(jhsh)
end

function dlzc.finished(vp)
local fv = dlzc.progress[vp]

return type(fv) == _d("GRMQDlY") and fv.completed == true and fv.completedRaidId == vp
end

function dlzc.bossFor(suql)
local zq = dlzc.picks[suql]

if not zq or #zq == 0 then
return nil
end

local gagr = lkft:FindFirstChild(_d("PxMbBmAXBhkHAQ"))
local vtdq = dlzc.losses[suql] or {}
local egzd = dlzc.cursor[suql] or 1

for uqec = 0, #zq - 1 do
local rlei = (egzd - 1 + uqec) % #zq + 1
local tpj = zq[rlei]
local fxv = not gagr or gagr:GetAttribute(_d("PxcTBko8") .. tpj) == true

if fxv and not dlzc.finished(tpj) and (vtdq[tpj] or 0) < dlzc.lossLimit then
dlzc.cursor[suql] = rlei

return tpj
end
end

return nil
end

cb.RaidBattleStarted.OnClientEvent:Connect(function(wn)

local fscb = type(wn) == _d("GRMQDlY") and wn.raidId or nil

if type(fscb) == _d("HgYAC10E") then
dlzc.pending[fscb] = false
else
for nfl in pairs(dlzc.pending) do
dlzc.pending[nfl] = false
end
end
end)

cb.BattleEnd.OnClientEvent:Connect(function(klm)
for oy in pairs(dlzc.pending) do
dlzc.pending[oy] = false
end

if type(klm) ~= _d("GRMQDlY") or not dlzc.enabled then
return
end

local whn = type(klm.raidId) == _d("HgYAC10E") and klm.raidId or nil
local talo = whn and dlzc.inFlight[whn] or nil

if not whn then
for bn, lf in pairs(dlzc.inFlight) do
whn = bn
talo = lf
break
end
end

if not whn then
return
end

dlzc.inFlight[whn] = nil

if klm.result == _d("AR0BBw") then

local kb = dlzc.losses[talo or 1]

dlzc.cleared[whn] = nil
kb[whn] = (kb[whn] or 0) + 1

for zh in pairs(dlzc.pendingUntil) do
dlzc.pendingUntil[zh] = os.time() + 3
end
else

dlzc.losses[talo or 1][whn] = 0
end
end)

cb.RaidProgress.OnClientEvent:Connect(function(cfny)
if type(cfny) == _d("GRMQDlY") and type(cfny.raidId) == _d("HgYAC10E") then
dlzc.progress[cfny.raidId] = cfny
end
end)

cb.RequestRaidProgress:FireServer()

local zqj = {
enabled = false,
progress = nil,
currentRoom = nil,
inBattle = false,
inBattleUntil = 0,
pending = false,
pendingUntil = 0,
}

getgenv().ACBXAutoRooms = zqj

cb.SyncInfiniteRoomProgress.OnClientEvent:Connect(function(nxj)
if type(nxj) == _d("AwcfAFYR") then
zqj.progress = nxj
zqj.pending = false
end
end)

cb.BattleEnd.OnClientEvent:Connect(function(nu)
if type(nu) == _d("GRMQDlY") and nu.mode == _d("BBwUC10KEwgtAA1cDg") then
zqj.inBattle = false
zqj.pending = true
zqj.pendingUntil = os.time() + 3

task.delay(0.3, function()
cb.RequestInfiniteRoomProgress:FireServer()
end)
end
end)

cb.RequestInfiniteRoomProgress:FireServer()

local vhlz = {
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

getgenv().ACBXAutoTower = vhlz

local gsh = {
enabled = false,
floor = 0,
triggered = false,
}

getgenv().ACBXAutoPause = gsh

local mrj = {
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
Typhoon = _d("GQsCClwMCQ"),
Blizzard = _d("Dx4bGEkCFQk"),
Lightning = _d("ARsVCkcNDgMV"),
Windstorm = _d("GhscBkAXCB8f"),
Sharingan = _d("HhoTEFoNAAwc"),
Singularity = _d("HhscBUYPBh8bBhs"),
[_d("IB0cA0EAD002HQ9SCgk")] = _d("AB0cA0EADzIWHQ9SCgk"),
Void = _d("Gx0bBg"),
[_d("IBMWBxMKCU06FwNFBgk")] = _d("ABMWB2wKCTIaFwNFBgk"),
Manga = _d("ABMcBVI"),
},
}

function mrj.weatherWanted(ng)
local inr = mrj.weatherNow

if type(inr) ~= _d("HgYAC10E") then
return nil
end

for iupn, gji in pairs(ng or mrj.weathers) do
if gji and mrj.weatherIds[iupn] == inr then
return iupn
end
end

return nil
end

getgenv().ACBXAutoGiveUp = mrj

local eoi = {
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

if lkft:FindFirstChild(_d("IB0WF18GNA4AGxJHEA")) and lkft.ModuleScripts:FindFirstChild(_d("JRMABlAMFQgmHRVWESMMBhM")) then
local ubrw, fvip = pcall(function()
return require(lkft.ModuleScripts.HardcoreTowerData)
end)

if ubrw then
eoi.data = fvip
end
end

getgenv().ACBXHardcore = eoi

task.spawn(function()
local iwy = lkft:FindFirstChild(_d("PxcfDUcGFA"))

if not iwy then
return
end

local vgod = iwy:WaitForChild(_d("PgscAXsCFQkRHRBWNwgaFwAyQQwAHxcBEQ"), 20)

if vgod and vgod:IsA(_d("PxcfDUcGIhsXHBY")) then
eoi.remotes.sync = vgod

vgod.OnClientEvent:Connect(function(zqx)
if type(zqx) ~= _d("GRMQDlY") then
return
end

eoi.progress = tonumber(zqx.progress) or eoi.progress
eoi.best = tonumber(zqx.best) or eoi.best

if type(zqx.points) == _d("GRMQDlY") then
eoi.points = zqx.points
end
end)
end

local fl = iwy:WaitForChild(_d("PxcDF1YQEyUTAAZQDBUIJh0VVhE3Hx0VEFYQFA"), 20)

if fl and fl:IsA(_d("PxcfDUcGIhsXHBY")) then
eoi.remotes.request = fl

pcall(function()
fl:FireServer()
end)
end

local idv = iwy:WaitForChild(_d("Kh4dAFIPJRgUFDdDBwYZFxY"), 20)

if idv and idv:IsA(_d("PxcfDUcGIhsXHBY")) then
idv.OnClientEvent:Connect(function(pka, yuze, anvd, xik)
eoi.globalLuck = tonumber(pka) or 0
eoi.globalRoll = tonumber(yuze) or 0
eoi.globalLuckTime = type(anvd) == _d("HgYAC10E") and anvd or _d("")
eoi.globalRollTime = type(xik) == _d("HgYAC10E") and xik or _d("")
end)
end
end)

function pgxj.otherTowerOn(ca)
if pgxj.enabled then
return false
end

if ca == _d("GR0FB0E") then
return false
end

if ca == _d("BRMeDlwUAggc") then
return eoi.active()
end

return bhkm.run.enabled
end

function eoi.active()
return eoi.island
end

function eoi.unspentPoints()
local vr = eoi.data
local zapr = tonumber(eoi.progress) or 0
local khba = 0

if type(vr) == _d("GRMQDlY") and type(vr.getEarnedPoints) == _d("CwccAUcKCAM") then
local dfn, gb = pcall(vr.getEarnedPoints, zapr)
khba = dfn and tonumber(gb) or 0
end

return math.max(0, khba - #(eoi.points or {})), khba
end

function eoi.buffText()
local km = eoi.data

if type(km) ~= _d("GRMQDlY") then
return _d("JRMABlAMFQgmHRVWESMMBhNCWhBHABsBEVoNAE0UAA1eQxMFGwFCURYOARZc")
end

local nd = tonumber(eoi.progress) or 0
local sb = tonumber(eoi.best) or 0
local nc, fgv = eoi.unspentPoints()
local yie = {
_d("Kx4dDUFD") .. nd .. _d("TVJSIFYQE00") .. sb,
_d("PR0bDEcQXU0") .. nc .. _d("TQccEUMGCRlSHQQT") .. fgv .. _d("TRcTEF0GAw"),
}

local hpvh = {}

for lkly, vjx in ipairs(eoi.points or {}) do
local alr = km.StatById and km.StatById[vjx]
local kef = alr and (alr.name or vjx) or tostring(vjx)
local iwt = km.PointValue and km.PointValue[vjx]

table.insert(hpvh, iwt and (kef .. _d("TVk") .. tostring(iwt)) or kef)
end

if #hpvh == 0 then
table.insert(yie, _d("LwcUBEBZRwMdHAcTAQgYFRoWExoCGQ"))
else
table.insert(yie, _d("LwcUBEBZRw") .. table.concat(hpvh, _d("QVI")))
end

local jo = {}

if (tonumber(eoi.globalLuck) or 0) > 0 then
table.insert(jo, _d("IQcRCRNI") .. tostring(eoi.globalLuck) .. _d("SA") .. (eoi.globalLuckTime ~= _d("") and (_d("TVo") .. eoi.globalLuckTime .. _d("RA")) or _d("")))
end

if (tonumber(eoi.globalRoll) or 0) > 0 then
table.insert(jo, _d("Px0eDhMQFwgXFkIY") .. tostring(eoi.globalRoll) .. _d("SA") .. (eoi.globalRollTime ~= _d("") and (_d("TVo") .. eoi.globalRollTime .. _d("RA")) or _d("")))
end

if #jo == 0 then
table.insert(yie, _d("Kh4dAFIPRw8HFARAWUcDHRwHEwIEGRsEBw"))
else
table.insert(yie, _d("Kh4dAFIPRw8HFARAWUc") .. table.concat(jo, _d("QVI")))
end

return table.concat(yie, _d("Zw"))
end

function eoi.nextMilestone()
local kgoz = eoi.data

if type(kgoz) ~= _d("GRMQDlY") or type(kgoz.Milestones) ~= _d("GRMQDlY") or #kgoz.Milestones == 0 then
return nil
end

local bdfj = tonumber(as:GetAttribute(_d("JRMABlAMFQg0Hg1cEQ"))) or 0

return math.min(bdfj + 1, kgoz.Milestones[#kgoz.Milestones])
end

function eoi.start(jv)
local bmnf = eoi.nextMilestone()

if not bmnf then
return false
end

local iuw = dw:FindFirstChild(jv == 2 and _d("PxcBB0chBhkGHgd1DwgCAEA") or _d("PxcBB0chBhkGHgd1DwgCAA"))

if iuw and iuw:IsA(_d("LxscBlIBCwg3BAddFw")) then
pcall(function()
iuw:Fire(bmnf, _d("BBwUC10KEwgtAA1cDg"))
end)
end

local qa = dw:FindFirstChild(jv == 2 and _d("PgYTEEcqCQsbHAtHBjUCHR8gUhcTARdA") or _d("PgYTEEcqCQsbHAtHBjUCHR8gUhcTARc"))

if qa and qa:IsA(_d("LxscBlIBCwg3BAddFw")) then
pcall(function()
qa:Fire(bmnf, _d("BRMABlAMFQg"), bmnf)
end)
end

if ydsj.bossTeams.applyTower then
ydsj.bossTeams.applyTower(_d("BRMABlAMFQg"), jv)
end

eoi.pending = true
eoi.pendingUntil = os.time() + 10

return pcall(function()
cb.StartBattle:FireServer(_d("BBwUC10KEwgtAA1cDg"), {
tower = _d("BRMABlAMFQg"),
milestone = bmnf,
slot = jv,
})
end)
end

function eoi.floorNow()
local xnwd = pgxj.hardcoreSlot()

if not xnwd or not pgxj.busy(xnwd) then
return nil
end

local fct = dw:FindFirstChild(xnwd == 2 and _d("LxMGFl8GIBgbQA") or _d("LxMGFl8GIBgb"))
local nfn = fct and fct:FindFirstChild(_d("PwccJF8MCB8+EwBWDw"))
local fkl = nfn and nfn.Text or _d("")

return tonumber(fkl:match(_d("MzQeDVwRQh5ZWkdXSE4")))
end

local rtv = {
enabled = true,
nextAt = os.clock() + 300,
jumps = 0,
}

getgenv().ACBXAntiKick = rtv

local bdqm = getgenv().ACBXNoUpdate == true

local yu = {
enabled = not bdqm,
buildId = "0.997",
interval = 180,
retry = 45,
forceAfter = 900,
applying = false,
checking = false,
pendingVersion = nil,
pendingSince = nil,
cameFrom = nil,
}

local bj = {
enabled = false,
tpToBay = false,

stick = {
enabled = false,
at = 0,
hits = 0,
last = _d("AhQU"),

names = {
[_d("HgYbAVg")] = true,
[_d("AQcRCRMQEwQRGQ")] = true,
[_d("AQcRCUAXDg4Z")] = true,
[_d("AQcRCWwQEwQRGQ")] = true,
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
rod = _d("QA"),
castTime = 0,
tutorialStep = 0,
phase = _d("BBYeBw"),
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
deepPhase = _d("BBYeBw"),
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

local eri = Vector3.new(-546.8, 13.9, -40250.1)

if type(getgenv().ACBXFishingCatches) == _d("GRMQDlY") then
bj.catches = getgenv().ACBXFishingCatches
end

bj.totalCatches = 0

for rxj, jauh in pairs(bj.catches) do
bj.totalCatches = bj.totalCatches + jauh
end

getgenv().ACBXFishingCatches = bj.catches
getgenv().ACBXFishing = bj

bj.catchName = function(sg)
local mbk = cuz.ById[sg]

if mbk and mbk.name then
return mbk.name
end

local cjwx = uu.ById[sg]

if cjwx and cjwx.name then
return cjwx.name
end

return sg
end

local ybx

ybx = {
folder = _d("LDEwOg"),
path = _d("LDEwOhwABhkRGgdATQ0eHRw"),
at = 0,
save = function()
if type(writefile) ~= _d("CwccAUcKCAM") then
return false
end

local tyck = pcall(function()
if type(makefolder) == _d("CwccAUcKCAM") and type(isfile) == _d("CwccAUcKCAM") and not isfile(ybx.path) then
pcall(makefolder, ybx.folder)
end

writefile(ybx.path, game:GetService(_d("JQYGEmAGFRsbEQc")):JSONEncode({
catches = bj.catches,
totalCatches = bj.totalCatches,
lastCatch = bj.lastCatch,
updatedAt = os.time(),
}))
end)

return tyck
end,
load = function()
if type(readfile) ~= _d("CwccAUcKCAM") or type(isfile) ~= _d("CwccAUcKCAM") then
return false
end

local dsj, cx = pcall(function()
if not isfile(ybx.path) then
return nil
end

return readfile(ybx.path)
end)

if not dsj or type(cx) ~= _d("HgYAC10E") or #cx == 0 then
return false
end

local jln
local kf = pcall(function()
jln = game:GetService(_d("JQYGEmAGFRsbEQc")):JSONDecode(cx)
end)

if not kf or type(jln) ~= _d("GRMQDlY") or type(jln.catches) ~= _d("GRMQDlY") then
return false
end

for yrl, tnjh in pairs(jln.catches) do
local qtk = tonumber(tnjh) or 0

if qtk > 0 then
bj.catches[tostring(yrl)] = math.max(bj.catches[tostring(yrl)] or 0, qtk)
end
end

bj.totalCatches = 0

for yr, cwlh in pairs(bj.catches) do
bj.totalCatches = bj.totalCatches + cwlh
end

return true
end,
}

ybx.load()
getgenv().ACBXFishingStore = ybx

local bvo = {}

local uy = 0

local function xjxl()
local xaqj = {}

for di, idjm in ipairs(workspace:GetDescendants()) do
if idjm:IsA(_d("LxMBB2MCFRk")) and idjm.Name == _d("OhMGB0E") then
table.insert(xaqj, idjm)
end
end

bvo = xaqj
uy = os.clock()
end

local function okit(tkq)
if type(tkq) ~= _d("GRMQDlY") then
return false
end

bj.loaded = true
bj.dirty = false
bj.fishing = tkq.fishing == true
bj.autoOn = tkq.autoOn == true
bj.autoUnlocked = tkq.autoUnlocked == true
bj.casts = tonumber(tkq.casts) or bj.casts
bj.totalCasts = tonumber(tkq.totalCasts) or bj.totalCasts
bj.luck = tonumber(tkq.luck) or bj.luck
bj.rod = tostring(tkq.equippedRod or bj.rod)
bj.castTime = tonumber(tkq.castTime) or bj.castTime
bj.tutorialStep = tonumber(tkq.tutorialStep) or bj.tutorialStep

if type(tkq.rods) == _d("GRMQDlY") then
bj.rodsOwned = tkq.rods
end

if type(tkq.baits) == _d("GRMQDlY") then
bj.baitsOwned = tkq.baits
end

if type(tkq.boats) == _d("GRMQDlY") then
bj.boatsOwned = tkq.boats
end

if type(tkq.mats) == _d("GRMQDlY") then
bj.mats = tkq.mats
end

if tkq.bootOwned ~= nil then
bj.boot.owned = tkq.bootOwned == true
end

if tkq.bootEquipped ~= nil then
bj.boot.equipped = tkq.bootEquipped == true
end

if tkq.equippedBait ~= nil then
bj.equippedBait = tostring(tkq.equippedBait)
end

if tkq.activeBoat ~= nil then
bj.activeBoat = tostring(tkq.activeBoat)
end

bj.boatTier = tonumber(tkq.boatTier) or bj.boatTier
bj.islandLocked = tkq.islandLocked == true
bj.rebirths = tonumber(tkq.rebirths) or bj.rebirths

if type(tkq.rebirthCards) == _d("GRMQDlY") then
bj.rebirthCards = tkq.rebirthCards
end

bj.lastSync = os.time()

return true
end

local function ygnw()
local md, wvh = pcall(function()
return cb.FishingGetState:InvokeServer()
end)

if not md or type(wvh) ~= _d("GRMQDlY") then
bj.loaded = false
return false
end

return okit(wvh)
end

local rfry = false

local function mwhc()
if rfry then
return false
end

local mnvs = as.Character

if not mnvs then
return false
end

if mnvs:FindFirstChild(_d("KxsBCloNAD8dFg")) then
return true
end

local zdza = as:FindFirstChild(_d("LxMRCUMCBAY"))
local sc = zdza and zdza:FindFirstChild(_d("KxsBCloNAD8dFg"))
local yjb = mnvs:FindFirstChildOfClass(_d("JQcfA10MDgk"))

if not (sc and yjb) then
return false
end

return pcall(function()
yjb:EquipTool(sc)
end)
end

local function oe()
local koph = as.Character
local zvq = koph and koph:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if not zvq then
return nil
end

local tzhl = RaycastParams.new()
tzhl.FilterType = Enum.RaycastFilterType.Exclude
tzhl.FilterDescendantsInstances = { koph }

local shgs = 24
local iyjo = {}
local kg = 0

for tkre = 0, shgs - 1 do
local tf = math.rad(tkre * (360 / shgs))
local yogy = Vector3.new(math.sin(tf), 0, math.cos(tf))
local aq = zvq.Position + yogy * 20 + Vector3.new(0, 40, 0)
local rvgq = workspace:Raycast(aq, Vector3.new(0, -120, 0), tzhl)
local np = rvgq and (zvq.Position.Y - rvgq.Position.Y) or 120

iyjo[tkre] = np > 12

if iyjo[tkre] then
kg = kg + 1
end
end

if kg == 0 then
return nil
end

local db, ivn = nil, 0

for go = 0, shgs - 1 do
if iyjo[go] and not iyjo[(go - 1) % shgs] then
local zdv = 0

while zdv < shgs and iyjo[(go + zdv) % shgs] do
zdv = zdv + 1
end

if zdv > ivn then
db = go
ivn = zdv
end
end
end

if not db then
return nil
end

local lzq = db + (ivn - 1) / 2
local gx = math.rad(lzq * (360 / shgs))

return Vector3.new(math.sin(gx), 0, math.cos(gx))
end

local function ygk()
local zwq = as.Character
local iva = zwq and zwq:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if not iva then
return nil
end

if #bvo == 0 or os.clock() - uy > 20 then
xjxl()
end

local yubb, mz = nil, math.huge

for zy, jvr in ipairs(bvo) do
if jvr.Parent then
local irkr = (jvr.Position - iva.Position).Magnitude

if irkr < mz then
mz = irkr
yubb = jvr
end
end
end

if not yubb or mz > 25 then
local td = oe()

if td then
return td
end
end

if not yubb then
return nil
end

local sjuy = Vector3.new(yubb.Position.X - iva.Position.X, 0, yubb.Position.Z - iva.Position.Z)

if sjuy.Magnitude < 0.05 then
return Vector3.new(0, 0, -1)
end

return sjuy.Unit
end

local function vnup()
local oiq = as.Character
local oq = oiq and oiq:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if not oq then
return nil
end

local eokf = oq.CFrame.LookVector
local skm = Vector3.new(eokf.X, 0, eokf.Z)

if skm.Magnitude < 0.05 then
return nil
end

return skm.Unit
end

local function wnmi()
local fe = as.Character
local ux = fe and fe:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if not ux then
return false
end

local jj = eri
local anx = RaycastParams.new()
anx.FilterType = Enum.RaycastFilterType.Exclude
anx.FilterDescendantsInstances = { fe }

local gc = workspace:Raycast(eri + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), anx)

if gc and gc.Instance.Name ~= _d("OhMGB0E") then
jj = Vector3.new(eri.X, gc.Position.Y + 3, eri.Z)
end

ux.CFrame = CFrame.new(jj)
task.wait(0.5)
xjxl()

return true
end

local function guq()
local pem = as.Character
local ltct = pem and pem:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if not ltct then
return false
end

local jdsh = Vector3.new(eri.X - ltct.Position.X, 0, eri.Z - ltct.Position.Z)
local jvb = jdsh.Magnitude

if jvb < 2 then
return false
end

local qmk = jdsh.Unit

if jvb > 12 then
local lbz = math.min(14, jvb - 6)
local cr = ltct.Position + qmk * lbz
local dt = RaycastParams.new()
dt.FilterType = Enum.RaycastFilterType.Exclude
dt.FilterDescendantsInstances = { pem }

local itcu = workspace:Raycast(cr + Vector3.new(0, 25, 0), Vector3.new(0, -80, 0), dt)

if itcu and itcu.Instance.Name ~= _d("OhMGB0E") then
local aseq = itcu.Position.Y + 3.2

if math.abs(aseq - ltct.Position.Y) <= 10 then
local jqhl = Vector3.new(itcu.Position.X, aseq, itcu.Position.Z)
ltct.CFrame = CFrame.lookAt(jqhl, jqhl + qmk)

return true
end
end
end

ltct.CFrame = CFrame.lookAt(ltct.Position, ltct.Position + qmk)

return true
end

local xb = {}

xb.surfaceWait = 8

xb.walking = false
xb.walkStartedAt = 0

xb.islandHold = Vector3.new(-7384, 16.3, -40539)

xb.custom = nil
xb.customIsland = nil

xb.islandAnchors = {
{ id = _d("DBATDFcMCQgWLQtADwYDFg"), x = -3800 },
{ id = _d("GQUbDGwBAgwRGgdA"), x = -6180 },
{ id = _d("GhscBl4KCwEtGxFfBg"), x = -7480 },
}

xb.arrivals = {
abandoned_island = Vector3.new(-3825, 24, -40260),
twin_beaches = Vector3.new(-6180, 40, -40350),
windmill_isle = Vector3.new(-7480, 30, -40350),
lobby = Vector3.new(-499, 17, -40234),
}

function xb.islandOf(ie)
if not ie then
return _d("AR0QAEo")
end

if ie.X > -4500 then
return _d("AR0QAEo")
end

local ntl, fuja = _d("DBATDFcMCQgWLQtADwYDFg"), math.huge

for dqa, gg in ipairs(xb.islandAnchors) do
local jfzy = math.abs(ie.X - gg.x)

if jfzy < fuja then
ntl = gg.id
fuja = jfzy
end
end

return ntl
end

xb.savedVersion = 2

do
local fvm = getgenv().ACBXDeepSpot

if type(fvm) == _d("GRMQDlY") and fvm.v == xb.savedVersion
and tonumber(fvm.X) and tonumber(fvm.Y) and tonumber(fvm.Z) then
xb.custom = Vector3.new(tonumber(fvm.X), tonumber(fvm.Y), tonumber(fvm.Z))
xb.customIsland = fvm.island
end
end

function xb.spot()
return xb.custom or xb.islandHold
end

function xb.dropStale()
if not xb.custom then
return false
end

if xb.zoneAt(xb.custom) then
return false
end

xb.custom = nil
xb.customIsland = nil
getgenv().ACBXDeepSpot = nil

return true
end

function xb.capture()
local tvjk = as.Character
local ljyl = tvjk and tvjk:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if not ljyl then
return false, _d("Ix1SAVsCFQwRBgdBQxMCUgAHUgdHDFIBElwXRwsAHQ8d")
end

local ygh = ljyl.Position
local mnje = xb.floorAt(Vector3.new(ygh.X, ygh.Y + 10, ygh.Z))

if not mnje then
return false, _d("PgYTDFdDCANSAQ1fCgNNFQANRg0DTRQbEEAXR0BSBgpaEEceAh0WEwsGHlIcDRMFCwIdAEJHDEcOEwEWEwUVAh9c")
end

local ilu = xb.zoneAt(ygh)

if not ilu then
return false, _d("ORobERMQFwIGUgtAQwgYBgELVwZHCAQXEEpDAQQBGgtdBEcfGxwFE05HHgYTDFdDCBsXAEJHCwJNBRMWVhFHCxsAEUdN")
end

xb.custom = ygh
xb.customIsland = xb.islandOf(ygh)

getgenv().ACBXDeepSpot = {
X = ygh.X,
Y = ygh.Y,
Z = ygh.Z,
island = xb.customIsland,
v = xb.savedVersion,
}

return true, _d("PhMEB1dDEwUbAUJAEwgZUhMRExcPCFIWB1YTShoTBgdBQw8CHhZCGw") .. tostring(ilu.name) .. _d("RFw")
end

function xb.zoneTable()
local zlch = {}

if zmxh and type(zmxh.Zones) == _d("GRMQDlY") then
for pcr, bsbx in ipairs(zmxh.Zones) do
zlch[#zlch + 1] = {
id = tostring(bsbx.id),
name = tostring(bsbx.name or bsbx.id),
half = tonumber(bsbx.half) or 0,
luck = tonumber(bsbx.luck) or 0,
index = tonumber(bsbx.index) or 0,
boatTier = tonumber(bsbx.boatTier) or 0,
}
end
end

table.sort(zlch, function(lew, ov)
return lew.index < ov.index
end)

return zlch
end

function xb.zoneAt(hcy)
local hfs = zmxh and zmxh.ZoneCenter
local saj = xb.zoneTable()

if not (hfs and hcy and #saj > 0) then
return nil
end

local eyl = math.max(math.abs(hcy.X - hfs.X), math.abs(hcy.Z - hfs.Z))

for sp, ghyg in ipairs(saj) do
if eyl < ghyg.half then
return ghyg
end
end

return nil
end

function xb.current()
local xjv = as.Character
local hajc = xjv and xjv:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

return hajc and xb.zoneAt(hajc.Position) or nil
end

function xb.sync()
local il = xb.current()
bj.zoneId = il and il.id or nil
end

function xb.floorAt(ygrh)
local gxn = as.Character
local bufw = RaycastParams.new()
bufw.FilterType = Enum.RaycastFilterType.Exclude
bufw.FilterDescendantsInstances = { gxn }

local nbm = workspace:Raycast(Vector3.new(ygrh.X, ygrh.Y + 20, ygrh.Z), Vector3.new(0, -80, 0), bufw)

if nbm and nbm.Instance.Name ~= _d("OhMGB0E") then
return nbm
end

return nil
end

function xb.ensureSpotMap()
local dxjd = xb.spot()
local zyfe = Vector3.new(dxjd.X, dxjd.Y + 20, dxjd.Z)

if xb.floorAt(zyfe) then
return true
end

local alc = workspace:FindFirstChild(_d("IBMCEQ"))

if alc and alc:FindFirstChild(_d("Lh0TEUcCCyEdEABK")) then
if os.clock() - (xb.hopAt or 0) > 1 then
xb.hopAt = os.clock()
xb.hop(dxjd)
bj.lastMessage = _d("IB0EC10ERxkdUhZbBkcJFxcSHhQGGRcAQkATCBk")
end

return false
end

if os.clock() - (xb.islandAskedAt or 0) > 1.2 then
xb.islandAskedAt = os.clock()

local oa = xb.customIsland or xb.islandOf(dxjd)

if oa == _d("AR0QAEo") then
pcall(function()
cb.TeleportToWorld:FireServer(_d("AR0QAEo"))
end)
else
pcall(function()
cb.FishingIslandTeleport:FireServer(_d("GhMLElwKCRk"), oa)
end)
end

bj.lastMessage = _d("ORMZC10ERxkaF0JUAgoIVQFCRwYLCAIdEEdDEwJSBgpWQwMIFwJPRAITCABSD1IT")
end

return false
end

function xb.hop(jz)
local mn = as.Character
local wbov = mn and mn:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))
local oyx = mn and mn:FindFirstChildOfClass(_d("JQcfA10MDgk"))

if not (wbov and oyx) then
return false
end

if oyx.SeatPart then
pcall(function()
oyx.Sit = false
end)
end

wbov.AssemblyLinearVelocity = Vector3.zero
wbov.CFrame = CFrame.new(Vector3.new(jz.X, jz.Y + 8, jz.Z))

return true
end

function xb.faceWater()
local tdd = as.Character
local pz = tdd and tdd:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if not pz then
return false
end

local dc = ygk()

if not dc then
local mr = zmxh and zmxh.ZoneCenter

if mr then
local hh = Vector3.new(mr.X - pz.Position.X, 0, mr.Z - pz.Position.Z)

dc = hh.Magnitude > 1 and hh.Unit or nil
end
end

if not dc then
return false
end

pz.CFrame = CFrame.lookAt(pz.Position, pz.Position + dc)

return true
end

function xb.aimWater(xbk)
local ou = as.Character
local fbrc = ou and ou:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if not fbrc then
return false
end

if xbk then
xjxl()
end

local egcc = fbrc.CFrame.LookVector
local xtb = Vector3.new(egcc.X, 0, egcc.Z)
local hwni = ygk()

if not hwni then
return false
end

if xtb.Magnitude > 0.05 and xtb.Unit:Dot(hwni) > 0.985 then
return true
end

fbrc.CFrame = CFrame.lookAt(fbrc.Position, fbrc.Position + hwni)

return true
end

function xb.hold(ax)
local ao = as.Character
local vud = ao and ao:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))
local tj = ao and ao:FindFirstChildOfClass(_d("JQcfA10MDgk"))

if not (vud and tj) then
return false
end

if tj.SeatPart then
pcall(function()
tj.Sit = false
end)
end

local pord = xb.floorAt(ax)

if not pord then
return false
end

vud.AssemblyLinearVelocity = Vector3.zero
vud.CFrame = CFrame.new(Vector3.new(ax.X, pord.Position.Y + 3.2, ax.Z))

pcall(xb.aimWater, true)

bj.phase = _d("BBYeBw")
bj.nextCastAt = 0

return true
end

function xb.dive()
local qdbp = xb.spot()

if not xb.ensureSpotMap() then
return false
end

if not xb.hold(qdbp) then
return false
end

xb.islandAskedAt = 0

local quy = xb.zoneAt(qdbp)

bj.lastMessage = quy
and (_d("JR0eBloNAE0GGgcTBwIIAl8VUhcCH1IBElwXR0U") .. tostring(quy.name) .. _d("RA"))
or _d("JR0eBloNAE0GGgcTBwIIAl8VUhcCH1IBElwX")

task.wait(0.25)
xb.sync()
bj.deepDiveAt = os.clock() + 2

return true
end

function xb.walk()
local wt = as.Character
local qfb = wt and wt:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if xb.walking and os.clock() - (xb.walkStartedAt or 0) < 60 then
return false
end

if not qfb then
return false
end

local jaa = xb.spot()

if (qfb.Position - Vector3.new(jaa.X, qfb.Position.Y, jaa.Z)).Magnitude <= 8 then
bj.phase = _d("BBYeBw")
bj.nextCastAt = 0

return true
end

xb.walking = true
xb.walkStartedAt = os.clock()
bj.deepPhase = _d("GhMeCQ")
bj.deepStageAt = os.clock()
bj.lastMessage = _d("OhMeCVoNAE0GHUJHCwJNFhcHQwYUGVIFA0cGFU0BAg1H")

task.spawn(function()
local vtax = wt and wt:FindFirstChildOfClass(_d("JQcfA10MDgk"))

local lrz, ago = pcall(function()

local kp = workspace:FindFirstChild(_d("IBMCEQ"))
local pgs = xb.customIsland or xb.islandOf(jaa)
local evb = (qfb.Position - Vector3.new(jaa.X, qfb.Position.Y, jaa.Z)).Magnitude

if evb > 400 then
if not (kp and kp:FindFirstChild(_d("Lh0TEUcCCyEdEABK"))) then
pcall(function()
cb.TeleportToWorld:FireServer(_d("AR0QAEo"))
end)

local izq = os.clock() + 20

while bj.deepWalk and os.clock() < izq do
local nvrs = workspace:FindFirstChild(_d("IBMCEQ"))

if nvrs and nvrs:FindFirstChild(_d("Lh0TEUcCCyEdEABK")) then
break
end

task.wait(0.5)
end
end

if bj.deepWalk then
local qg = xb.arrivals and xb.arrivals[pgs]

if qg then
xb.hop(qg)
else
local dv = Vector3.new(jaa.X - qfb.Position.X, 0, jaa.Z - qfb.Position.Z)
local yul = dv.Magnitude > 1 and dv.Unit or Vector3.new(1, 0, 0)

xb.hop(Vector3.new(jaa.X - yul.X * 120, jaa.Y, jaa.Z - yul.Z * 120))
end

task.wait(1.5)
end
end

if bj.deepWalk and vtax then

local pd = (qfb.Position - Vector3.new(jaa.X, qfb.Position.Y, jaa.Z)).Magnitude
local ub = os.clock() + math.clamp(pd / 8, 30, 600)
local wzrc = 0
local lxcm = qfb.Position
local mxwc = os.clock()

while bj.deepWalk and os.clock() < ub do
local cq = Vector3.new(jaa.X - qfb.Position.X, 0, jaa.Z - qfb.Position.Z)

if cq.Magnitude <= 3 then
break
end

if os.clock() - wzrc >= 0.25 then
vtax:MoveTo(Vector3.new(jaa.X, qfb.Position.Y, jaa.Z))
wzrc = os.clock()
end

if os.clock() - mxwc >= 1.2 then
if (qfb.Position - lxcm).Magnitude < 2 then
vtax.Jump = true
end

lxcm = qfb.Position
mxwc = os.clock()
end

task.wait(0.1)
end

vtax:MoveTo(qfb.Position)
end
end)

xb.walking = false

if not lrz then
bj.deepPhase = _d("BBYeBw")
bj.deepStageAt = os.clock()
bj.lastMessage = _d("OhMeCRMXCE02FwdDBhQZUiUDRwYVTRQTC18GA1dS") .. tostring(ago)

return
end

if not bj.deepWalk then
return
end

local hth = Vector3.new(qfb.Position.X - jaa.X, 0, qfb.Position.Z - jaa.Z)

if hth.Magnitude <= 6 then

pcall(xb.aimWater, true)
bj.phase = _d("BBYeBw")
bj.nextCastAt = 0
bj.deepPhase = _d("BR0eBg")
bj.deepStageAt = os.clock()
xb.sync()
bj.lastMessage = _d("OhMeCVYHRxkdUhZbBkceEwQHV0MDCBcCT0QCEwgAUhFDDBM")
else

bj.deepPhase = _d("BBYeBw")
bj.deepStageAt = os.clock()
bj.lastMessage = _d("Lh0HDldDCQIGUhVSDwxNBh1CRwsCTRYXB0MGFBlSBQNHBhVNAQINR0NKTQYAG1oNAE0TFQNaDQ")
end
end)

return false
end

function xb.settle()
for om = 1, 30 do
if not bj.deepZone or bj.deepWalk then
return false
end

if xb.dive() then
return true
end

task.wait(1)
end

return false
end

function xb.surface()
local qcm = as.Character
local qpn = qcm and qcm:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if not qpn then
return false
end

local xp = RaycastParams.new()
xp.FilterType = Enum.RaycastFilterType.Exclude
xp.FilterDescendantsInstances = { qcm }

local iq = workspace:Raycast(eri + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), xp)
local fg = eri

if iq and iq.Instance.Name ~= _d("OhMGB0E") then
fg = Vector3.new(eri.X, iq.Position.Y + 3, eri.Z)
end

qpn.CFrame = CFrame.new(fg)
bj.phase = _d("BBYeBw")
bj.nextCastAt = 0

return true
end

function bj.gotoIsland()
local djyx = as.Character
local pjjy = djyx and djyx:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))
local xomw = workspace:FindFirstChild(_d("JAEeA10HIQQBGgdBDgYDPCIh"), true)

if not (pjjy and xomw) then
return false
end

local budz = xomw:GetPivot()
local wgbv = RaycastParams.new()
wgbv.FilterType = Enum.RaycastFilterType.Exclude
wgbv.FilterDescendantsInstances = { djyx, xomw }

local pnw = nil
local hncd = -math.huge

for wxh, pmds in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local rkmd = workspace:Raycast(budz.Position + pmds + Vector3.new(0, 30, 0), Vector3.new(0, -120, 0), wgbv)

if rkmd and rkmd.Position.Y > hncd then
pnw = rkmd
hncd = rkmd.Position.Y
end
end

if pnw then
pjjy.CFrame = CFrame.new(Vector3.new(pnw.Position.X, hncd + 3.5, pnw.Position.Z))
else
pjjy.CFrame = CFrame.new(budz.Position + Vector3.new(0, 4, 0))
end

bj.phase = _d("BBYeBw")
bj.nextCastAt = 0

return true
end

function xb.cycle()
local ob = os.clock()
local ydp = bj.deepPhase or _d("BBYeBw")
local cfa = tonumber(bj.deepStageAt) or 0

if ob < math.max(bj.shopTripUntil or 0, bj.tpHoldUntil or 0) then
return
end

if ydp == _d("BBYeBw") then
bj.deepPhase = _d("BR0eBg")
bj.deepStageAt = ob

if bj.deepWalk then
xb.walk()
else
xb.dive()
end

return
end

if ydp == _d("GhMeCQ") then
return
end

if ydp == _d("BR0eBg") then
local hl = xb.current()

local sk = xb.zoneAt(xb.spot())

if hl and not as:GetAttribute(_d("PgUbD14KCQo")) and ob - (bj.deepAimAt or 0) > 2 then
bj.deepAimAt = ob
pcall(xb.aimWater)
end

if as:GetAttribute(_d("PgUbD14KCQo")) then
if bj.deepWalk then

bj.deepPhase = _d("BBYeBw")
bj.deepStageAt = ob
else
bj.deepPhase = _d("CRsC")
bj.deepStageAt = ob
bj.lastMessage = _d("PgUbD14KCQpSExYTFw8IUhYHVhNHHgIdFhNORx4HAARSAAIJUhQNQUMGBAA")
end
elseif not hl or (sk and hl.index < sk.index) then

bj.deepPhase = _d("BBYeBw")
bj.deepStageAt = ob
end

return
end

if ydp == _d("CRsC") then
xb.surface()
bj.deepPhase = _d("HgcABFIAAg")
bj.deepStageAt = ob

return
end

if ydp == _d("HgcABFIAAg") and ob - cfa >= xb.surfaceWait then
bj.deepPhase = _d("BBYeBw")
end
end

local function udn()
local lbeq = as.Character
local kq = lbeq and lbeq:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if not kq then
return false
end

return (kq.Position - eri).Magnitude <= 12
end

local function aut()
if not mwhc() then
return false
end

local xa = pcall(function()
cb.FishingSetAuto:FireServer(true)
end)

bj.usingGameAuto = xa
return xa
end

local function buuv()
bj.usingGameAuto = false

pcall(function()
cb.FishingSetAuto:FireServer(false)
end)

pcall(function()
cb.FishingStop:FireServer()
end)
end

function bj.recover()
bj.phase = _d("BBYeBw")
bj.nextCastAt = 0
bj.deepPhase = _d("BBYeBw")
bj.deepStageAt = 0
bj.deepDiveAt = 0
bj.waterRefusals = 0
bj.usingGameAuto = false
bj.castMark = bj.totalCasts
bj.castMarkAt = os.clock()

pcall(buuv)
pcall(mwhc)

if bj.deepZone and not xb.current() then

pcall(function()
cb.TeleportToWorld:FireServer(_d("AR0QAEo"))
end)
elseif bj.tpToBay and not udn() then
pcall(wnmi)
end

bj.lastMessage = _d("KxsBCloNAE0BBgNfDwIJUl9CQQYUCAZSFlsGRxoTBgdBQwYDFlIWXAwMTQYaBxMEBgAXVRETDwgPEAtCQQwQ")
end

local function nonv()
if not mwhc() then
bj.lastMessage = _d("Ix1SBFoQDwQcFUJBDANNGxxCRwsCTRATAVgTBg4Z")
return false
end

local ham = vnup()
local fp = ygk()
local dgc = ham or fp

if not dgc then
bj.lastMessage = _d("Ix1SFVIXAh9SFA1GDQNNHBcDQQEe")
return false
end

if ham and fp and ham:Dot(fp) < 0.25 then
dgc = fp
end

bj.phase = _d("DhMBFloNAA")
bj.lastMessage = nil
bj.watchdogAt = os.clock() + 25

local px, txf = pcall(function()
cb.FishingThrow:FireServer(1, dgc)
end)

if not px then
bj.phase = _d("BBYeBw")
bj.lastMessage = tostring(txf)
bj.nextCastAt = os.clock() + 3
return false
end

return true
end

local tx = cb.FishingUpdate.OnClientEvent:Connect(function(mue, bmaq)
bj.dirty = true

if mue == _d("PgYTFlY") then
if type(bmaq) == _d("GRMQDlY") then
bj.autoOn = bmaq.autoOn == true
end

return
end

if mue == _d("LhMBFg") then
bj.phase = _d("GhMbFloNAC8bBgc")
bj.waterRefusals = 0
return
end

if mue == _d("LxsGBw") then
local wugz = type(bmaq) == _d("GRMQDlY") and tonumber(bmaq.warning) or 1

bj.phase = _d("HxcXDloNAA")
bj.watchdogAt = os.clock() + 15

task.delay(math.max(0.3, wugz + 0.8), function()
if bj.phase ~= _d("HxcXDloNAA") then
return
end

pcall(function()
cb.FishingReel:FireServer(true, 120)
end)

bj.phase = _d("HxcBDV8VDgMV")
end)

return
end

if mue == _d("LhMGAVs") then

local aom = type(bmaq) == _d("GRMQDlY") and tonumber(bmaq.totalCasts) or nil
local lx = tonumber(getgenv().ACBXFishingCatchMark) or 0

if aom and aom <= lx and lx - aom < 25 then
return
end

if aom then
getgenv().ACBXFishingCatchMark = aom
end

local zpdz = type(bmaq) == _d("GRMQDlY") and tostring(bmaq.itemId) or _d("GBwZDFwUCQ")
local mxz = bj.catchName(zpdz)

bj.catches[zpdz] = (bj.catches[zpdz] or 0) + 1
bj.totalCatches = (bj.totalCatches or 0) + 1

local tuwg = type(bmaq) == _d("GRMQDlY") and bmaq.chest or nil

if type(tuwg) == _d("GRMQDlY") and tuwg.itemId then
local wobq = tostring(tuwg.itemId)

bj.catches[wobq] = (bj.catches[wobq] or 0) + 1
end

if os.clock() - (ybx.at or 0) >= 5 then
ybx.at = os.clock()
ybx.save()
end
bj.lastCatch = mxz
bj.lastMessage = nil
bj.phase = _d("BBYeBw")
bj.nextCastAt = os.clock() + 2.5

if type(bmaq) == _d("GRMQDlY") then
bj.casts = tonumber(bmaq.casts) or bj.casts
bj.totalCasts = tonumber(bmaq.totalCasts) or bj.totalCasts
bj.autoUnlocked = bmaq.autoUnlocked == true or bj.autoUnlocked
end

return
end

if mue == _d("LAcGDXwFAQ") then

bj.usingGameAuto = false
bj.phase = _d("BBYeBw")
bj.nextCastAt = os.clock() + 1
return
end

if mue == _d("KAERA0MGAw") then
bj.phase = _d("BBYeBw")
bj.lastMessage = _d("ORoXQlUKFAVSFQ1HQwYaEws")
bj.nextCastAt = os.clock() + 2.5
return
end

if mue == _d("PxcYB1AXAgk") then
bj.phase = _d("BBYeBw")

local hvzy = type(bmaq) == _d("GRMQDlY") and tostring(bmaq.message) or _d("LhMBFhMRAgcXERZWBw")
bj.lastMessage = hvzy

if hvzy:lower():find(_d("GhMGB0E"), 1, true) then
bj.waterRefusals = (bj.waterRefusals or 0) + 1

if bj.waterRefusals >= 2 then
bj.waterRefusals = 0

if guq() then
bj.lastMessage = _d("PxcUF0AGA00GBQtQBkdAUgYXQQ0CCVIQA1AIRxkdBQNBB0cZGhdCRAITCAA")
bj.nextCastAt = os.clock() + 1.5
return
end
end

bj.nextCastAt = os.clock() + 8
return
end

bj.waterRefusals = 0
bj.nextCastAt = os.clock() + 3
return
end
end)

local function su()
if not bj.loaded then
return _d("PxcTBloNAE0UGxFbCgkKUgEWUhcCQ1xc")
end

local lal = bj.autoUnlocked == true
or (bj.totalCasts or 0) > 0
or (bj.tutorialStep or 0) > 0
local ke = zmxh and zmxh.RodsById and zmxh.RodsById[bj.rod]
local yo = ke and tostring(ke.name) or tostring(bj.rod)
local gy = math.floor((tonumber(bj.luck) or 0) * 100 + 0.5)

local gjy = {
_d("Px0WWBM") .. yo,
_d("IQcRCQlD") .. gy .. _d("SA"),
}

local ri = xb.current()

if ri then
table.insert(gjy, _d("Nx0cBwlD") .. ri.name .. _d("TVpZ") .. tostring(math.floor(ri.luck * 100 + 0.5)) .. _d("SFIeF1AITg"))
end

table.insert(gjy, _d(""))
table.insert(gjy, _d("LhMBFkBDEwJSARJWDQNXUg") .. mif(bj.casts or 0))
table.insert(gjy, _d("OR0GA19DBAwBBhEJQw") .. mif(bj.totalCasts or 0))

table.insert(gjy, _d(""))
table.insert(gjy, _d("KxsBCloNAE0HHA5cAAwIFkhC") .. (lal and _d("FBcB") or _d("Ax0")))
table.insert(gjy, _d("LAcGDR4FDh4aUhdDBBUMFhdYEw") .. (bj.autoUnlocked and _d("AgUcB1c") or _d("Ax0GQlwUCQgW")))

if bj.enabled then
local uzxy = bj.usingGameAuto and _d("ChMfBxMCEhkd") or tostring(bj.phase)

if uzxy == _d("GhMbFloNAC8bBgc") then
uzxy = _d("GhMbFloNAE0UHRATAkcPGwYH")
elseif uzxy == _d("HxcXDloNAA") then
uzxy = _d("HxcXDloNAE0bHA")
elseif uzxy == _d("HxcBDV8VDgMV") then
uzxy = _d("ARMcBloNAE0bBg")
end

table.insert(gjy, _d(""))
table.insert(gjy, _d("LAcGDRMlDh4aSEI") .. uzxy)

local qom = dlzc.worldBoss

if qom and type(qom.hasWork) == _d("CwccAUcKCAM") and qom.enabled and qom.hasWork() then
table.insert(gjy, _d("JR0eBloNAFdSFQ5cAQYBUhANQBBHBAFSF0NDTx8XARdeBhRNHRxCWhcUTREdDV8HCBocWw"))
end

if bj.lastCatch then
table.insert(gjy, _d("IRMBFhMABhkRGlgT") .. bj.lastCatch)
end
end

if bj.lastMessage then
table.insert(gjy, _d(""))
table.insert(gjy, _d("Ix0GBwlD") .. bj.lastMessage)
end

return table.concat(gjy, _d("Zw"))
end

local function hg()
local ic = 0

for pv, dmfg in pairs(bj.catches) do
local renh = cuz.ById[pv]

if not (renh and renh.type == _d("DhoXEUc")) then
ic = ic + dmfg
end
end

return ic
end

local function flbk()
local wxj = {}

for rnr, rhw in pairs(bj.catches) do
local tno = cuz.ById[rnr]
local hru = tno and tno.type == _d("DhoXEUc") or false

table.insert(wxj, {
name = bj.catchName(rnr),
count = rhw,
chest = hru,
rank = hru and (tonumber(tno.border) or 1) or 0,
})
end

if #wxj == 0 then
return _d("Ix0GCloNAE0RExdUCxNNCxcWHWltOQcADBMMCU0zBxZcQyEEARpCUg0DTQYaBxMXBgEeC0JAFwYfBgFCWwYVCFxSK0dDFAwEFxETChMeFx4EH0MUAlIbFhMABh8AGwdAQwgbFwBCXQYfGVIBB0AQDgIcXA")
end

table.sort(wxj, function(dl, kol)
if dl.chest ~= kol.chest then
return dl.chest
end

if dl.chest and dl.rank ~= kol.rank then
return dl.rank > kol.rank
end

if dl.count ~= kol.count then
return dl.count > kol.count
end

return dl.name < kol.name
end)

local ues = {}

for nav, jbqc in ipairs(wxj) do
table.insert(ues, jbqc.name .. _d("TZDy9hM") .. mif(jbqc.count))
end

local yua = {
table.concat(ues, _d("Z3g")),
_d(""),
_d("OR0GA19DBAwHFQpHWUc") .. mif(hg()) .. _d("TbDFQg") .. #wxj .. _d("TRkbDFcQ"),
}

if bj.lastCatch then
table.insert(yua, _d("IRMBFhMABhkRGlgT") .. tostring(bj.lastCatch))
end

return table.concat(yua, _d("Zw"))
end

local iwu = {
rod = Vector3.new(-493, 18, -40254),
bait = Vector3.new(-493, 18, -40254),
}

local function rin(ost)
if not zmxh then
return {}
end

local oc

if ost == _d("Hx0W") then
oc = zmxh.RodsById
elseif ost == _d("DxMbFg") then
oc = zmxh.BaitsById
else
oc = nil
end

local zd = {}

for yqpb, doni in pairs(oc or {}) do
if not doni.crafted then
table.insert(zd, {
id = tostring(yqpb),
name = tostring(doni.name or yqpb),
cost = tonumber(doni.cost) or 0,
luck = tonumber(doni.luck) or 0,
index = tonumber(doni.index) or 0,
island = doni.shop == _d("BAEeA10H"),
})
end
end

table.sort(zd, function(sdtw, ujwv)
if sdtw.index ~= ujwv.index then
return sdtw.index < ujwv.index
end

return sdtw.cost < ujwv.cost
end)

return zd
end

local function bi(bpsg)
if bpsg == _d("Hx0W") then
return bj.rodsOwned or {}
elseif bpsg == _d("DxMbFg") then
return bj.baitsOwned or {}
end

return {}
end

local function lk(ffb)
if ffb == _d("Hx0W") then
return bj.rod
elseif ffb == _d("DxMbFg") then
return bj.equippedBait
end

return nil
end

local function qfft(cvq)
local dynb = bi(cvq)
local zb = nil

for pibh, gdze in ipairs(rin(cvq)) do
if dynb[gdze.id] == true then
zb = gdze
end
end

return zb
end

local function to(npcf)
if npcf.island and bj.islandLocked then
return false
end

return true
end

local function wrfb(vaty)
local paft = bi(vaty)
local emf = bj.casts or 0
local dskd = nil

for uz, ete in ipairs(rin(vaty)) do
if paft[ete.id] ~= true and ete.cost <= emf and to(ete) then
dskd = ete
end
end

return dskd
end

local function imy(curd)
local my = bi(curd)

for waq, mgj in ipairs(rin(curd)) do
if my[mgj.id] ~= true and to(mgj) then
return mgj
end
end

return nil
end

local function nrue(fjb, tjqs)
if not tjqs then
return _d("Ax0cBxMMEAMXFg")
end

return tjqs.name .. _d("TVpZ") .. tostring(math.floor(tjqs.luck * 100 + 0.5)) .. _d("SFIeF1AITg")
end

local function hizh()
if not zmxh then
return _d("KxsBCloNACkTBgMTDQgZUhQNRg0DTV9SEVsMF00WExZSQxIDEwQDWg8GDx4XTA")
end

local wpki = {}
local zlqj = { rod = _d("Px0W"), bait = _d("LxMbFg") }

for ig, jnl in ipairs({ _d("Hx0W"), _d("DxMbFg") }) do
local rcf = qfft(jnl)
local qaqi = nil

for wbqm, eql in ipairs(rin(jnl)) do
if eql.id == lk(jnl) then
qaqi = eql.name
end
end

if #wpki > 0 then
table.insert(wpki, _d(""))
end

table.insert(wpki, zlqj[jnl] .. _d("V1I") .. nrue(jnl, rcf))
table.insert(wpki, _d("IhxSDFwUXU0") .. (qaqi or _d("Ax0cBw")))

local msnt = wrfb(jnl) or imy(jnl)

if msnt then
local tbh = msnt.cost - (bj.casts or 0)

table.insert(wpki, _d("IxcKFglD") .. msnt.name .. _d("TbDFQg") .. mif(msnt.cost) .. _d("TRETEUcQ"))

if tbh > 0 then
table.insert(wpki, _d("IxcXBhM") .. mif(tbh) .. _d("TR8dEFY"))
end
else
table.insert(wpki, _d("IxcKFglDAhsXABtHCw4DFVINRA0CCQ"))
end
end

table.insert(wpki, _d(""))
table.insert(wpki, _d("LhMBFkBDEwJSARJWDQNXUg") .. mif(bj.casts or 0))

if bj.shopMessage then
table.insert(wpki, _d(""))
table.insert(wpki, bj.shopMessage)
end

return table.concat(wpki, _d("Zw"))
end

local function xai(iish, ajnr)
local iof = os.clock()

if iof < (bj.shopCallAt or 0) then
return false, _d("Hh4dFQ")
end

bj.shopCallAt = iof + 1.4

local te, rgcf, otuq, bjnr = pcall(function()
return cb.FishingShop:InvokeServer(iish, ajnr)
end)

if not te then
return false, _d("CAAADUFD") .. tostring(rgcf)
end

okit(bjnr)

if rgcf == true then
return true, nil
end

return false, tostring(otuq or _d("HxcUF0AGAw"))
end

function bj.rebirthCardsHeld()
local ru = zmxh and type(zmxh.RebirthCards) == _d("GRMQDlY") and #zmxh.RebirthCards or 0

if ru == 0 then
return 0, 0
end

local nij = 0

for xdm, vfqk in ipairs(zmxh.RebirthCards) do
if bj.rebirthCards[vfqk.cardId] then
nij = nij + 1
end
end

return nij, ru
end

function bj.rebirthReady()
local dpx, kfq = bj.rebirthCardsHeld()

return kfq > 0 and dpx >= kfq and (tonumber(bj.rebirths) or 0) < 1
end

function bj.rebirthText()
local idyo, lwwn = bj.rebirthCardsHeld()

if lwwn == 0 then
return _d("KxsBCloNAE0WExZSQwkCBlIOXAIDCBZeQkAMRx8XEAtBFw9NGwFCRg0GGxMbDlIBCwhc")
end

if (tonumber(bj.rebirths) or 0) >= 1 then
return _d("PxcQC0EXDwgWXEJnCwJNMxADXQcIAxcWQnoQCwwcFkJaEEcCAhcMHQ")
end

if idyo >= lwwn then
return _d("LB4eQg") .. lwwn .. _d("TRETEFcQRwsbAQpWB0lNIBcDVxpHGR1SEFYBDh8GGkw")
end

local fm = {}

for ez, pinu in ipairs(zmxh.RebirthCards) do
if not bj.rebirthCards[pinu.cardId] then
table.insert(fm, (string.gsub(pinu.cardId, _d("MxQbEVs8"), _d(""))))
end
end

return idyo .. _d("Qg") .. lwwn .. _d("TRETEFcQSU0hBgtfD0cDFxcGEw") .. table.concat(fm, _d("QVI")) .. _d("Qw")
end

local function fhu(yq)
local bxqq = as.Character
local xwrn = bxqq and bxqq:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if not xwrn then
return false
end

return (xwrn.Position - (iwu[yq] or iwu.rod)).Magnitude <= 26
end

local function huqt(oh)
if fhu(oh) then
return true
end

local je = as.Character
local nl = je and je:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if not nl then
return false
end

local aytc = iwu[oh] or iwu.rod
bj.shopTripUntil = os.clock() + 12
bj.shopHoldUntil = os.clock() + 12

pcall(function()
nl.CFrame = CFrame.new(aytc)
end)

task.wait(1.2)

return fhu(oh)
end

local function za(jt, tbk, pkqg)
if not pkqg then
return false
end

if (bj.casts or 0) < pkqg.cost then
return false
end

if not huqt(jt) then
bj.shopMessage = _d("Lh0HDldDCQIGUhBWAgQFUgYKVkMUBR0CQlUMFU0") .. pkqg.name
return false
end

local urkt, tlj = xai(tbk, pkqg.id)

if not urkt then
local atq = tostring(tlj)
local qio = atq:find(_d("ORMeCRMXCE0GGgcTJQ4eGhcQXgIJ"), 1, true) or atq:find(_d("Lx0TFhMnAgweFxA"), 1, true)

if qio then

bj.shopMessage = _d("OhMeCVoNAE0HAkJHDEcZGhdCUAwSAwYXEBMFCB9S") .. pkqg.name
return false
end

if tlj ~= _d("Hh4dFQ") then
bj.shopAt = os.clock() + 15
bj.shopMessage = _d("PhcAFFYRRx8XFBdABgNN") .. pkqg.name .. _d("TVo") .. atq .. _d("RA")
end

return false
end

bj.shopMessage = _d("Lx0HBVsXRw") .. pkqg.name

return true
end

local function xgo(qx)
local owjm = qfft(qx)

if not owjm or lk(qx) == owjm.id then
return false
end

local zqh

if qx == _d("Hx0W") then
zqh = _d("KAMHC0MxCAk")
elseif qx == _d("DxMbFg") then
zqh = _d("KAMHC0MhBgQG")
else
return false
end

local iyl, pgtp = xai(zqh, owjm.id)

if not iyl then
if pgtp ~= _d("Hh4dFQ") then
bj.shopMessage = _d("Lh0HDldDCQIGUgdCFg4dUg") .. owjm.name .. _d("TVo") .. tostring(pgtp) .. _d("RA")
end

return false
end

if qx == _d("Hx0W") then
bj.rod = owjm.id
elseif qx == _d("DxMbFg") then
bj.equippedBait = owjm.id
else
return false
end

bj.shopMessage = _d("KAMHC0MTAglS") .. owjm.name

return true
end

local function rqy()
local sa = bj.shop

if os.time() - (bj.lastSync or 0) >= 5 then
ygnw()
end

if sa.equipRod then
xgo(_d("Hx0W"))
end

if sa.equipBait then
xgo(_d("DxMbFg"))
end

if sa.autoBuyRod then
za(_d("Hx0W"), _d("LwcLMFwH"), wrfb(_d("Hx0W")))
end

if sa.autoBuyBait then
za(_d("DxMbFg"), _d("LwcLIFIKEw"), wrfb(_d("DxMbFg")))
end
end

local function sly()
local kx = bj.shop

return kx.autoBuyRod or kx.autoBuyBait or kx.equipRod or kx.equipBait
end

bj.shopIsland = {
rods = function()
local hn = zmxh and zmxh.RodsById or {}
local wf = {}

for dh, vfjd in pairs(hn) do
if tostring(vfjd.shop) == _d("BAEeA10H") then
table.insert(wf, {
id = tostring(dh),
name = tostring(vfjd.name or dh),
cost = tonumber(vfjd.cost) or 0,
luck = tonumber(vfjd.luck) or 0,
index = tonumber(vfjd.index) or 0,
crafted = vfjd.crafted == true,
})
end
end

table.sort(wf, function(ulsj, eoqx)
return ulsj.index < eoqx.index
end)

return wf
end,

angler = function()
local pprm = workspace:FindFirstChild(_d("IyIxEQ"), true)

if not pprm then
return nil
end

for ajf, bc in ipairs(pprm:GetChildren()) do
if bc:GetAttribute(_d("PhcREFYXJgMVHgdBLTcu")) then
return bc
end
end

return nil
end,
held = function(jxge)
return (bj.rodsOwned or {})[jxge] == true
end,
recipeHeld = function(gcjy)
for big, psg in ipairs(gcjy or {}) do
local aayp = tonumber((bj.mats or {})[psg.id]) or 0

if aayp < (tonumber(psg.count) or 0) then
return false
end
end

return true
end,
recipeText = function(bivc)
local zuia = {}

for ak, ljwp in ipairs(bivc or {}) do
local tem = tonumber((bj.mats or {})[ljwp.id]) or 0
local lad = (cuz.ById[ljwp.id] and cuz.ById[ljwp.id].name) or tostring(ljwp.id)

table.insert(zuia, lad .. _d("TQ") .. mif(tem) .. _d("Qg") .. mif(tonumber(ljwp.count) or 0))
end

return table.concat(zuia, _d("TbDFQg"))
end,

stand = function(jvm)
local rgxs = as.Character
local hw = rgxs and rgxs:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if not (hw and jvm) then
return false
end

local ubi = jvm:GetPivot()
local bzs = jvm:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg")) or jvm:FindFirstChildWhichIsA(_d("LxMBB2MCFRk"), true)
local kjbz = bzs and (bzs.CFrame * CFrame.new(0, 0, -5)).Position or nil

if not kjbz then
local zih = RaycastParams.new()
zih.FilterType = Enum.RaycastFilterType.Exclude
zih.FilterDescendantsInstances = { rgxs, jvm }

local qac = nil
local zum = math.huge

for ik, bbxc in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local bcpr = workspace:Raycast(ubi.Position + bbxc + Vector3.new(0, 30, 0), Vector3.new(0, -140, 0), zih)

if bcpr and tostring(bcpr.Instance.Name) ~= _d("OhMGB0E") and bcpr.Position.Y <= ubi.Position.Y + 10 then
local jmo = math.abs(bcpr.Position.Y - ubi.Position.Y)

if jmo < zum then
qac = bcpr
zum = jmo
end
end
end

kjbz = qac and Vector3.new(qac.Position.X, qac.Position.Y + 3.5, qac.Position.Z) or (ubi.Position + Vector3.new(0, 4, 0))
end

bj.shopTripUntil = os.clock() + 12

bj.islandTripUntil = os.clock() + 12

pcall(function()
hw.CFrame = CFrame.new(kjbz)
end)

task.wait(1.2)

return true
end,
atIsland = function()
local vyxp = workspace:FindFirstChild(_d("JAEeA10HIQQBGgdBDgYDPCIh"), true)
local xub = as.Character
local arl = xub and xub:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if not (vyxp and arl) then
return false
end

return (arl.Position - vyxp:GetPivot().Position).Magnitude <= 45
end,
toIsland = function()
if bj.shopIsland.atIsland() then
return true
end

bj.shopTripUntil = os.clock() + 12

if not bj.gotoIsland() then
return false
end

task.wait(1.2)

return bj.shopIsland.atIsland()
end,

craftExcalibur = function()
local bkmj = bj.shopIsland.angler()

if not bkmj or bj.shopIsland.held(_d("Hx0WPUAGBB8XBg")) then
return false
end

if not bj.shopIsland.recipeHeld(zmxh and zmxh.SecretRecipe) then
return false
end

bj.shopIsland.stand(bkmj)

local wlho, hmvt = xai(_d("LgATBEcxCAk"), _d("Hx0WPUAGBB8XBg"))

if wlho then
bj.rod = _d("Hx0WPUAGBB8XBg")
bj.islandMessage = _d("LgATBEcGA00GGgcTJh8OEx4LURYVTQAdBhMCE00GGgcTKw4JFhcMEyIJCh4XEA")
elseif hmvt ~= _d("Hh4dFQ") then
bj.islandMessage = _d("JRsWBlYNRywcFQ5WEUcfFxQXQAYDTQYaBxMmHw4THgtRFhVNWg") .. tostring(hmvt) .. _d("RA")
end

return wlho
end,
buyRod = function()
if bj.islandLocked then
return false
end

local ysne = bj.rodsOwned or {}
local kdqw = nil

for jpyo, jjot in ipairs(bj.shopIsland.rods()) do
if not jjot.crafted
and ysne[jjot.id] ~= true
and jjot.cost <= (bj.casts or 0)
and (kdqw == nil or jjot.index > kdqw.index) then
kdqw = jjot
end
end

if not kdqw then
return false
end

if not bj.shopIsland.toIsland() then
bj.islandMessage = _d("Lh0HDldDCQIGUhBWAgQFUgYKVkMOHh4TDFdDBAIHHBZWEQ")
return false
end

local gyj, mkwq = xai(_d("LwcLMFwH"), kdqw.id)

if gyj then
bj.islandMessage = _d("Lx0HBVsXRw") .. kdqw.name
elseif mkwq ~= _d("Hh4dFQ") then
local mq = tostring(mkwq)

if not (mq:find(_d("ORMeCRMXCA"), 1, true) or mq:find(_d("JAEeA10HAh8"), 1, true)) then
bj.islandAt = os.clock() + 15
bj.islandMessage = _d("PhcAFFYRRx8XFBdABgNN") .. kdqw.name .. _d("TVo") .. mq .. _d("RA")
end
end

return gyj
end,
craftBoot = function()
if bj.boot.owned or bj.islandLocked then
return false
end

if not bj.shopIsland.recipeHeld(zmxh and zmxh.BootRecipe) then
return false
end

if not bj.shopIsland.toIsland() then
bj.islandMessage = _d("Lh0HDldDCQIGUhBWAgQFUgYKVkMOHh4TDFdDBAIHHBZWEQ")
return false
end

local ns, kmv = xai(_d("LgATBEchCAIG"))

if ns then
bj.boot.owned = true
bj.islandMessage = _d("LgATBEcGA00GGgcTLwIKFxwGUhEeTTAdDUc")
elseif kmv ~= _d("Hh4dFQ") then
bj.islandMessage = _d("JAEeA10HRysbAQpWEQoMHFIQVgUSHhcWQkcLAk0QHQ1HQ08") .. tostring(kmv) .. _d("RA")
end

return ns
end,
best = function()
local diwa = bj.rodsOwned or {}
local mfx = nil

for nz, ec in ipairs(bj.shopIsland.rods()) do
if diwa[ec.id] == true and (mfx == nil or ec.luck > mfx.luck) then
mfx = ec
end
end

return mfx
end,

equipRod = function()
local vvoo = bj.shopIsland.best()

if not vvoo or bj.rod == vvoo.id then
return false
end

local qzao, wl = xai(_d("KAMHC0MxCAk"), vvoo.id)

if qzao then
bj.rod = vvoo.id
bj.islandMessage = _d("KAMHC0MTAglS") .. vvoo.name
elseif wl ~= _d("Hh4dFQ") then
bj.islandMessage = _d("Lh0HDldDCQIGUgdCFg4dUg") .. vvoo.name .. _d("TVo") .. tostring(wl) .. _d("RA")
end

return qzao
end,
equipBoot = function()
if not bj.boot.owned or bj.boot.equipped then
return false
end

local op, ok = xai(_d("KAMHC0MhCAIG"), true)

if op then
bj.boot.equipped = true
bj.islandMessage = _d("KAMHC0MTAglSBgpWQysIFRcMVwIVFFIwDVwX")
elseif ok ~= _d("Hh4dFQ") then
bj.islandMessage = _d("Lh0HDldDCQIGUgdCFg4dUgYKVkMFAh0GQhs") .. tostring(ok) .. _d("RA")
end

return op
end,
active = function()
local gsdc = bj.island

return gsdc.autoRod or gsdc.equipRod or gsdc.autoAcc or gsdc.equipAcc
end,
run = function()
local cmli = bj.island

if os.time() - (bj.lastSync or 0) >= 8 then
ygnw()
end

local cszn = false

if cmli.autoRod then
cszn = bj.shopIsland.craftExcalibur()
end

if cmli.equipRod then
bj.shopIsland.equipRod()
end

if cmli.autoRod and not cszn then
bj.shopIsland.buyRod()
end

if cmli.autoAcc then
bj.shopIsland.craftBoot()
end

if cmli.equipAcc then
bj.shopIsland.equipBoot()
end
end,
text = function()
if not zmxh then
return _d("KxsBCloNACkTBgMTDQgZUhQNRg0DTV9SFlsGRwQBHgNdB0ceGh0SEwoUTQccA0UCDgETEA5WTQ")
end

local vbv = {}
local lw = bj.rodsOwned or {}

table.insert(vbv, bj.islandLocked and _d("LBATDFcMCQgWUitADwYDFlILQEMLAhEZB1dDSk0AFwBaERMFUhQLQRATQw") or _d("LBATDFcMCQgWUitADwYDFlILQEMIHRccTA"))

for ocp, pk in ipairs(bj.shopIsland.rods()) do
local eeoo

if lw[pk.id] == true then
eeoo = bj.rod == pk.id and _d("AgUcB1dDpdpSHQwTDQga") or _d("AgUcB1c")
elseif pk.crafted then
eeoo = _d("JRsWBlYNRywcFQ5WEUcfFxELQwY")
else
eeoo = mif(pk.cost) .. _d("TRETEUcQ")
end

table.insert(vbv, pk.name .. _d("TZDy9hM") .. eeoo)
end

table.insert(vbv, _d(""))

if lw.rod_secret then
table.insert(vbv, _d("KAoRA18KBRgASEJcFAkIFg"))
else
local gp = bj.shopIsland.recipeHeld(zmxh.SecretRecipe)

table.insert(vbv, _d("KAoRA18KBRgASEI") .. (gp and _d("HxcRC0MGRx8XEwZK") or _d("HxcRC0MGRx4aHRBH")))
table.insert(vbv, bj.shopIsland.recipeText(zmxh.SecretRecipe))
end

table.insert(vbv, _d("JRsWBlYNRywcFQ5WEV1N") .. (bj.shopIsland.angler() and _d("GAJSDFwU") or _d("Ax0GQlsGFQg")))
table.insert(vbv, _d(""))

local hi = bj.boot
local mu

if hi.equipped then
mu = _d("IRcVB10HBh8LUiBcDBNXUhcTRgoXHRcW")
elseif hi.owned then
mu = _d("IRcVB10HBh8LUiBcDBNXUh0VXQYD")
elseif bj.shopIsland.recipeHeld(zmxh.BootRecipe) then
mu = _d("IRcVB10HBh8LUiBcDBNXUgAHUAoXCFIAB1IHHg")
else
mu = _d("IRcVB10HBh8LUiBcDBNXUg") .. bj.shopIsland.recipeText(zmxh.BootRecipe)
end

table.insert(vbv, mu)
table.insert(vbv, _d("LhMBFkBDEwJSARJWDQNXUg") .. mif(bj.casts or 0))

if bj.islandMessage then
table.insert(vbv, _d(""))
table.insert(vbv, bj.islandMessage)
end

return table.concat(vbv, _d("Zw"))
end,
}

task.spawn(function()
ygnw()
end)

local tsv = {
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

getgenv().ACBXAutoBuyHalloween = tsv

cb.SyncItems.OnClientEvent:Connect(function(xor)
if type(xor) == _d("GRMQDlY") then
tsv.balances = xor
tsv.lastSync = os.time()
end
end)

cb.RequestItemSync:FireServer()

cb.RaidShopState.OnClientEvent:Connect(function(vqm)
if type(vqm) == _d("GRMQDlY") and vqm.shopId == _d("BRMeDlwUAggc") then
tsv.shopState = vqm
tsv.stateAt = os.clock()
end
end)

cb.RaidNotify.OnClientEvent:Connect(function(uker)
local eo = tsv.pending

if not eo or type(uker) ~= _d("HgYAC10E") then
return
end

if uker:sub(1, 9) == _d("PScgIXsiNCg2") then
tsv.purchased[eo.id] = (tsv.purchased[eo.id] or 0) + 1
tsv.pending = nil
else
if tsv.balances[eo.currency] then
tsv.balances[eo.currency] = tsv.balances[eo.currency] + eo.price
end

tsv.failedUntil[eo.id] = os.time() + 5
tsv.pending = nil
end
end)

bhkm.trip = {
untilAt = 0,
lastTry = 0,
lastResult = nil,
spot = nil,
}

function bhkm.merchant()
local kpsn = workspace:FindFirstChild(_d("IyIxEQ"))
local bpjd = bhkm.shopData and bhkm.shopData.NpcName or _d("PQcfElgKCU0/FxBQCwYDBg")

return kpsn and kpsn:FindFirstChild(bpjd) or nil
end

function bhkm.stand()
local bbh = bhkm.merchant()
local mum = bbh and (bbh:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg")) or bbh:FindFirstChildWhichIsA(_d("LxMBB2MCFRk")))
local jpjr = as.Character
local rqb = jpjr and jpjr:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if not (mum and rqb) then
return false
end

bhkm.trip.spot = mum.Position + Vector3.new(0, 3, 4)
rqb.AssemblyLinearVelocity = Vector3.zero
rqb.CFrame = CFrame.new(bhkm.trip.spot)

return true
end

function bhkm.fresh()
return tsv.shopState ~= nil and os.clock() - tsv.stateAt < 30
end

function bhkm.guiOpen()
local nf = dw:FindFirstChild(_d("JRMeDlwUAggcIQpcEyAYGw"))
local tgj = nf and nf:FindFirstChild(_d("PhodEnURBgAX"))

if tgj then
return tgj.Visible == true
end

for zjae, hjan in ipairs(dw:GetChildren()) do
if hjan:IsA(_d("PhEAB1YNIBgb")) and hjan.Name:lower():find(_d("BRMeDlwUAggc"), 1, true) and hjan.Enabled then
return true
end
end

return false
end

function bhkm.close()
local bvb = dw:FindFirstChild(_d("JRMeDlwUAggcIQpcEyAYGw"))
local uwk = bvb and bvb:FindFirstChild(_d("PhodEnURBgAX"))

if not (uwk and uwk.Visible) then
return false
end

local jxyo = uwk:FindFirstChild(_d("Lh4dEVYhEhkGHQw"))

if not jxyo then
for qw, lnym in ipairs(uwk:GetDescendants()) do
if lnym:IsA(_d("KgcbIEYXEwIc")) and tostring(lnym.Name):lower():find(_d("Dh4dEVY"), 1, true) then
jxyo = lnym
break
end
end
end

if jxyo and type(firesignal) == _d("CwccAUcKCAM") then
pcall(function()
firesignal(jxyo.MouseButton1Click)
end)

task.wait(0.3)

if not uwk.Visible then
return true
end
end

pcall(function()
uwk.Visible = false
end)

return true
end

function bhkm.spend()
if tsv.pending or os.time() - (tsv.lastAttempt or 0) < 1 then
return nil
end

local wm = tsv.shopState

for mwe, jk in ipairs(bhkm.shopItems) do
if tsv.selected[jk.id] and os.time() >= (tsv.failedUntil[jk.id] or 0) then
local dsi = jk.stock
local wx = tsv.purchased[jk.id] or 0

if wm and wm.stocks and wm.stocks[jk.id] then
dsi = wm.stocks[jk.id]
end

if wm and wm.bought then
wx = math.max(wx, wm.bought[jk.id] or 0)
end

local sn = dsi and (dsi - wx) or 1
local mt = tsv.balances[jk.currency] or 0

if sn > 0 and mt >= jk.price then
tsv.pending = {
id = jk.id,
price = jk.price,
currency = jk.currency,
at = os.time(),
}
tsv.lastAttempt = os.time()
tsv.balances[jk.currency] = mt - jk.price

pcall(function()
cb.BuyRaidItem:FireServer(jk.id, 1)
end)

return jk.id
end
end
end

return nil
end

function bhkm.open(gfzd)
if not gfzd and bhkm.fresh() then
return true
end

if not gfzd and os.clock() < (bhkm.trip.lastTry or 0) + 8 then
return false
end

bhkm.trip.lastTry = os.clock()
bhkm.trip.untilAt = os.clock() + 12

bj.shopTripUntil = os.clock() + 12
bj.shopHoldUntil = os.clock() + 12
bj.phase = _d("BBYeBw")

local vjn = bhkm.merchant()
local mj = vjn and vjn:FindFirstChild(_d("PQAdGloODhkLIhBcDhcZ"))

if not (vjn and mj) then
bj.deepPhase = _d("BBYeBw")
bhkm.trip.untilAt = os.clock() + 60
bhkm.trip.lastResult = _d("ORoXQmMWCh0ZGwwTLgIfERoDXRdHBAFSDFwXRwQcUhZbChRNEAcLXwdJ")

return false
end

local mpi = os.clock() + 3
local iya = 0

while os.clock() < mpi do

bhkm.stand()

if os.clock() >= iya then
iya = os.clock() + 0.8

if type(fireproximityprompt) == _d("CwccAUcKCAM") then
pcall(function()
fireproximityprompt(mj)
end)
end

pcall(function()
cb.OpenRaidShop:FireServer(_d("BRMeDlwUAggc"))
end)
end

if bhkm.guiOpen() or bhkm.fresh() then
break
end

task.wait(0.1)
end

if not (bhkm.guiOpen() or bhkm.fresh()) then

bj.deepPhase = _d("BBYeBw")
bhkm.trip.untilAt = os.clock() + 60
bhkm.trip.lastResult = _d("ORoXQlAMEgMGFxATBw4JUhwNR0MGAwEFB0FDSk0bBkJcDQsUUh0SVg0UTRscQkcLAk0BFwNADAkMHlIDQQYGQw")

return false
end

bhkm.trip.lastResult = _d("Lh0HDEcGFU0dAgddTQ")

for lyiz = 1, 3 do
bhkm.stand()

if not bhkm.spend() then
break
end

task.wait(1.2)
end

pcall(bhkm.close)

bj.deepPhase = _d("BBYeBw")

return true
end

local function qgen(vxhk)
vxhk = math.max(0, math.floor(vxhk))
local subs = math.floor(vxhk / 3600)
local cuu = math.floor((vxhk % 3600) / 60)
local ki = vxhk % 60

if subs > 0 then
return string.format(_d("SBYaQhZTVQkf"), subs, cuu)
elseif cuu > 0 then
return string.format(_d("SBYfQhZTVQkB"), cuu, ki)
end

return string.format(_d("SBYB"), ki)
end

local function rtjo()
local th = dw:FindFirstChild(_d("JRMeDlwUAggcIQpcEyAYGw"))
local ofr = th and th:FindFirstChild(_d("PhodEnURBgAX"))
local ofv = ofr and ofr:FindFirstChild(_d("JAYXD38KFBk"))
local lz = {}
local cse = nil

if ofv then
for bq, vyg in ipairs(bhkm.shopItems) do
local ekqk = ofv:FindFirstChild(vyg.id)
local tsa = ekqk and ekqk:FindFirstChild(_d("Lx0K"))
local pj = tsa and tsa:FindFirstChild(_d("PgYdAVg"))

if pj and pj:IsA(_d("ORcKFn8CBQge")) then
local jxic, mbp = pj.Text:match(_d("RVcWSRpGFEddVxEZS0IJWVs"))

if jxic and mbp then
lz[vyg.id] = {
remaining = tonumber(jxic),
total = tonumber(mbp),
}
end
end
end
end

if ofr then
for lec, kqsx in ipairs(ofr:GetDescendants()) do
if kqsx:IsA(_d("ORcKFn8CBQge")) and kqsx.Text:find(_d("HxcBB0cQRwQc"), 1, true) then
cse = kqsx.Text:match(_d("HxcBB0cQRwQcVxEZS0lGW1Y"))
break
end
end
end

return lz, cse
end

local function ll(yzwb)
if type(yzwb) ~= _d("HgYAC10E") then
return 0
end

local dq = tonumber(yzwb:match(_d("RVcWSRoL"))) or 0
local ngng = tonumber(yzwb:match(_d("RVcWSRoO"))) or 0
local ka = tonumber(yzwb:match(_d("RVcWSRoQ"))) or 0
return dq * 3600 + ngng * 60 + ka
end

local function owcx()
local tyls = tsv.shopState
local gfj, jvl = rtjo()
local ydfx = {}
local ifom = {}
local az = {}

for fz, lro in ipairs(bhkm.shopItems) do
local ytjk = lro.stock
local mzpc = nil

if tyls and tyls.stocks and tyls.stocks[lro.id] then
ytjk = tyls.stocks[lro.id]
end

local oiub = tsv.purchased[lro.id] or 0

if tyls and tyls.bought then
oiub = math.max(oiub, tyls.bought[lro.id] or 0)
end

if ytjk then
mzpc = math.max(0, ytjk - oiub)
end

if (not tyls or not tyls.bought) and gfj[lro.id] then
mzpc = gfj[lro.id].remaining
ytjk = gfj[lro.id].total
end

local rxgj = lro.currency == _d("BxMRCWwMOAETHBZWEQk") and _d("IRMcFlYRCR4") or _d("LhMcBko")
local pr

if mzpc == nil then
pr = lro.shortName
elseif mzpc <= 0 then
pr = lro.shortName .. _d("TbDFQkAMCwlSHRdH")
else
pr = lro.shortName .. _d("TbDFQg") .. tostring(mzpc) .. _d("Qg") .. tostring(ytjk or _d("Ug"))
end

if not ifom[rxgj] then
ifom[rxgj] = {}
table.insert(az, rxgj)
end

table.insert(ifom[rxgj], pr)
end

local etl = {}

for ufs, unxd in ipairs(az) do
table.insert(etl, unxd)

for byqc, hcf in ipairs(ifom[unxd]) do
table.insert(etl, hcf)
end
end

table.insert(ydfx, table.concat(etl, _d("Z3g")))
table.insert(ydfx, _d(""))

if tyls and type(tyls.resetsIn) == _d("AwcfAFYR") then
local pqba = tyls.resetsIn - (os.clock() - tsv.stateAt)
table.insert(ydfx, _d("PxcBFlwADB5SGwwT") .. qgen(pqba))
elseif jvl then
if tsv.uiTimerText ~= jvl then
tsv.uiTimerText = jvl
tsv.uiTimerSeconds = ll(jvl)
tsv.uiTimerAt = os.clock()
end

local stnb = tsv.uiTimerSeconds - (os.clock() - tsv.uiTimerAt)
table.insert(ydfx, _d("PxcBFlwADB5SGwwT") .. qgen(stnb))
else
table.insert(ydfx, _d("PxcBFlwADB5SFgNaDx5NsMVCRQoUBAZSFlsGRx4aHRI"))
end

if not bhkm.fresh() then
table.insert(ydfx, bhkm.trip.lastResult or _d("ORoXQlAMEgMGFxATChRNER4NQAYDTV9SLUMGCU0BGg1DQxAMHhkRExcPCFIRClIRBg4GFxATFhdNBh1CWhdJ"))
end

return table.concat(ydfx, _d("Zw"))
end

cb.NPCBattleResult.OnClientEvent:Connect(function(xm)
if type(xm) ~= _d("GRMQDlY") then
return
end

ydsj.battlePending = false

if xm.result == _d("Dh0dDlcMEAM") and type(xm.remaining) == _d("AwcfAFYR") and cp and kwo then
hxdy(cp, kwo, os.time() + xm.remaining)
return
end

if type(xm.npcId) == _d("HgYAC10E") then
local tkm = type(xm.difficulty) == _d("HgYAC10E") and xm.difficulty or ydsj.activeDifficulty[xm.npcId] or _d("Ax0AD1IP")
local lsb = ja.ById[xm.npcId]
local plka = tonumber(xm.cooldown) or (lsb and lsb.cooldown) or 300
hxdy(xm.npcId, tkm, os.time() + plka)
end
end)

cb.SyncNPCCooldowns.OnClientEvent:Connect(function(va)
if type(va) ~= _d("GRMQDlY") then
return
end

for owkp, jycj in pairs(va) do
if type(owkp) == _d("HgYAC10E") and type(jycj) == _d("AwcfAFYR") then
local ofcn = ydsj.activeDifficulty[owkp] or _d("Ax0AD1IP")
hxdy(owkp, ofcn, jycj)
end
end
end)

local xgbi = {}
local cu = {}

for zo, ujxa in ipairs(xxpx.Worlds) do

local kbh = { _d("LB4e") }
local tgjt = {}
local hll = {}
local drbd = nil

for lwmj, xr in ipairs(ujxa.npcs or {}) do
local pgy = ja.ById[xr]
if pgy then
table.insert(kbh, pgy.name)
table.insert(hll, xr)
tgjt[pgy.name] = xr
if pgy.type == _d("DxMGFl8G") then
drbd = xr
end
end
end

local ipu = ujxa.id
if drbd and rw.ById[drbd] then
ipu = rw.ById[drbd].worldId or ipu
end

for gdu, qk in ipairs(ujxa.npcs or {}) do
cu[qk] = ipu

ydsj.bossTeams.worldOf[qk] = ujxa.id
end

table.insert(xgbi, {
id = ujxa.id,
teleportWorldId = ipu,
name = ujxa.name,
options = kbh,
ids = hll,
byName = tgjt,
npcs = ujxa.npcs,
})
end

local he = {}
local spj = {}
local rhvn = {}

for zkjk, da in ipairs(xxpx.Difficulties) do
table.insert(he, da.name)
spj[da.name] = da.id
rhvn[da.id] = da.name
end

local aea = {}
local ce = {}

for byx, smxz in ipairs(ven.Difficulties) do
table.insert(aea, smxz.name)
ce[smxz.name] = smxz.id
end

local ubr = {}
local nq = {}
local bo = {}
local pdk = {
soul_king = _d("PxMbBmQMFQEW"),
beerus = _d("PxMbBmQMFQEWLSBWBhUYAQ"),
reid = _d("PxMbBmQMFQEWLTBWCgM"),
}

for lt, msym in ipairs(ven.Raids) do
if msym.BossTitle and msym.id then
table.insert(ubr, msym.BossTitle)
nq[msym.BossTitle] = msym.id
bo[msym.id] = msym.NpcId
end
end

local function yl()
for ski, npbw in ipairs({ _d("LxMGFl8GIBgb"), _d("LxMGFl8GIBgbQA") }) do
local fk = dw:FindFirstChild(npbw)
local mkjr = fk and fk:FindFirstChild(_d("LxMGFl8GNA4AFwdd"))
if mkjr and mkjr.Visible then
return mkjr
end
end
end

local function tii()
for gkrz, wwaj in ipairs({ _d("LxMGFl8GIBgb"), _d("LxMGFl8GIBgbQA") }) do
local ia = dw:FindFirstChild(wwaj)
local rpor = ia and ia:FindFirstChild(_d("LxMGFl8GNA4AFwdd"))
if rpor then
return rpor
end
end
end

local function zzvo()
if yl() then
return true
end

for fd, gs in ipairs({ _d("LxMGFl8GIBgb"), _d("LxMGFl8GIBgbQA") }) do
local slke = dw:FindFirstChild(gs)
local rh = slke and slke:FindFirstChild(_d("JRsWB3ECExkeFyBGFxMCHA"))
if rh and rh.Visible then
return true
end
end

for eb, wkp in ipairs({ _d("JBwwA0cXCwg"), _d("JBwwA0cXCwhA") }) do
local apg = dw:FindFirstChild(wkp)
if apg and apg:IsA(_d("Lx0dDmUCCxgX")) and apg.Value then
return true
end
end

return false
end

function pgxj.slotFree(cbcv)

if cbcv == nil then
return false
end

if not pgxj.enabled then
return not zzvo()
end

return not pgxj.busy(cbcv)
end

function pgxj.npcSlot()
return pgxj.roleSlot(_d("AwIR"))
end

local nn

local function frbo(qbf)
qbf = math.max(0, math.floor(qbf))
if qbf <= 0 then
return _d("HxcTBko")
end

local czg = math.floor(qbf / 60)
local puz = qbf % 60

if czg > 0 then
return string.format(_d("SBYfQhZTVQkB"), czg, puz)
end

return string.format(_d("SBYB"), puz)
end

local function xdit()
for zbvc, viun in ipairs({ _d("LxMGFl8GIBgb"), _d("LxMGFl8GIBgbQA") }) do
local hsu = dw:FindFirstChild(viun)
if hsu then
local ize = hsu:FindFirstChild(_d("PwccJF8MCB8+EwBWDw"))
local lbq = hsu:FindFirstChild(_d("OR0FB0ElCwIdAC5SAQIB"))
if (ize and ize.Visible) or (lbq and lbq.Visible) then
return _d("JBxSNlwUAh8")
end
end
end

if zqj.currentRoom and (zqj.inBattle or zzvo()) then
local jusc = nil

for izkw, pg in ipairs({ _d("LxMGFl8GIBgb"), _d("LxMGFl8GIBgbQA") }) do
local dbo = dw:FindFirstChild(pg)
local bqkg = dbo and dbo:FindFirstChild(_d("LxMGFl8GNA4AFwdd"))
local dfbf = bqkg and bqkg:FindFirstChild(_d("KBwXD0oiBBkbBAdwAhUJ"))
local elnn = dfbf and dfbf:FindFirstChild(_d("IxMfB38CBQge"))

if elnn and elnn.Text ~= _d("") then
jusc = elnn.Text
break
end
end

if jusc then
return _d("LxMGFl8KCQpS") .. jusc .. _d("TSkgDVwORw") .. zqj.currentRoom .. _d("MA")
end

return _d("LxMGFl8KCQpSKTBcDApN") .. zqj.currentRoom .. _d("MA")
end

local wtee = tii()
if zzvo() and wtee then
local sq = wtee:FindFirstChild(_d("KBwXD0oiBBkbBAdwAhUJ"))
local akiu = sq and sq:FindFirstChild(_d("IxMfB38CBQge"))
local xij = akiu and akiu.Text

local xblg = nil
if ydsj.currentBattle then
xblg = ydsj.currentBattle.difficulty
elseif xij then
local axl = bde[xij]
if axl then
xblg = ydsj.activeDifficulty[axl]
end
end

local ku = _d("")
if xblg then
ku = _d("TSk") .. (rhvn[xblg] or xblg) .. _d("MA")
end

local qdxo = xij
if ydsj.currentBattle and ydsj.currentBattle.npcId then
local lpmx = ja.ById[ydsj.currentBattle.npcId]
if lpmx then
qdxo = lpmx.name
end
end

if qdxo and qdxo ~= _d("") then
return _d("LxMGFl8KCQpS") .. qdxo .. ku
end

return _d("LxMGFl8KCQo") .. ku
end

ydsj.currentBattle = nil

local ah = dlzc.enabled and (dlzc.bossFor(1) or dlzc.bossFor(2))

if ah then
local gvef = lkft:FindFirstChild(_d("PxMbBmAXBhkHAQ"))

if gvef then
local tq = ah
local hmo = ven.ById[tq]
local mi = hmo and hmo.BossTitle or tq
local blqo = gvef:GetAttribute(_d("JAE9ElYN")) == true or gvef:GetAttribute(_d("Kx0AAVYH")) == true
local tihg = gvef:GetAttribute(_d("PxcTBko8") .. tq) == true
local zssv = dlzc.progress[tq]
local nwj = zssv and zssv.locked == true

if not blqo then
local btot = tonumber(gvef:GetAttribute(_d("LhoTDFQGFCwG"))) or 0
return _d("JBYeBxNORw") .. mi .. _d("TSATC1dZRw") .. frbo(btot - os.time())
end

if zssv and zssv.cooldowns then
local gios = tonumber(zssv.cooldowns.normal)

if gios and gios > 0 then
return _d("JBYeBxNORw") .. mi .. _d("TSATC1dZRw") .. frbo(gios)
end
end

if not tihg or nwj then
return _d("JBYeBxNORw") .. mi .. _d("TSATC1dZRwEdEQlWBw")
end

return _d("JBYeBxNORw") .. mi .. _d("TSATC1dZRx8XEwZK")
end
end

if bj.enabled then
if bj.usingGameAuto then
return _d("KxsBCloNAE1fUgVSDgJNEwcWXENP") .. mif(hg()) .. _d("TRETF1QLE0Q")
end

if bj.phase == _d("DhMBFloNAA") then
return _d("KxsBCloNAE1fUgFSEBMEHBU")
end

if bj.phase == _d("GhMbFloNAC8bBgc") then
return _d("KxsBCloNAE1fUhVSChMEHBVCVQwVTRNSAFoXAg")
end

if bj.phase == _d("HxcXDloNAA") or bj.phase == _d("HxcBDV8VDgMV") then
return _d("KxsBCloNAE1fUhBWBgsEHBVCXA0CTRsc")
end

return _d("KxsBCloNAE1fUgtXDwJNWg") .. mif(hg()) .. _d("TRETF1QLE0Q")
end

if not ydsj.enabled and not ydsj.story then
return _d("JBYeBw")
end

local xi, ckde, rm = nn()

if xi then
local ncgb = ja.ById[xi]
local cagg = ncgb and ncgb.name or xi
local wq = (ckde or 0) - os.time()
local qci = rhvn[rm] or rm or _d("Ix0AD1IP")

return _d("JBYeBxNORyMXChYJQw") .. cagg .. _d("TSk") .. qci .. _d("MFJa") .. frbo(wq) .. _d("RA")
end

return _d("JBYeBw")
end

local function zjlj(zhp)
local ef = workspace:FindFirstChild(_d("IyIxEQ"))
if not ef then
return nil
end

for iip, tgmr in ipairs(ef:GetChildren()) do
if tgmr:GetAttribute(_d("IyIxK1c")) == zhp then
return tgmr
end
end

return nil
end

local function ldsv(mh)
local mps = as.Character
local hpw = mps and mps:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))
if not (hpw and mh) then
return false
end

local vdtb, rp = pcall(function()
return mh:GetPivot()
end)
if not vdtb then
return false
end

local otjp = rp.Position + rp.LookVector * 6 + Vector3.new(0, 3, 0)
local juqy = Vector3.new(rp.Position.X, otjp.Y, rp.Position.Z)

hpw.CFrame = CFrame.lookAt(otjp, juqy)
return true
end

local function umoq()
local hof = as:FindFirstChild(_d("PR4TG1YRNA4AGxJHEA"))
local wdwr = hof and hof:FindFirstChild(_d("PR4TG1YRKgIWBw5W"))

if not wdwr then
return nil
end

local xyn, moag = pcall(require, wdwr)
if not xyn then
return nil
end

local cn, lrnd = pcall(function()
return moag:GetControls()
end)

if cn then
return lrnd
end
end

local function myb(akx, dlka, ckk, udww, kexo)
udww = udww or 8

local function pqe()
return dlka and dlka()
end

local sop = os.clock()

while os.clock() - sop < 5 do
if pqe() then
return false
end

if as.Character and as.Character:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg")) then
break
end
task.wait(0.2)
end

local bcvg = as.Character
local tp = bcvg and bcvg:FindFirstChildOfClass(_d("JQcfA10MDgk"))
local hias = bcvg and bcvg:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if not (tp and hias) then
return false
end

if (hias.Position - akx).Magnitude <= udww then
return true
end

local mmkf = ckk or tp.WalkSpeed
local wdi = umoq()
local zbd = tp.JumpPower
local tr = tp.UseJumpPower

if kexo then
pcall(function()
tp.UseJumpPower = true
tp.JumpPower = math.max(zbd, 60)
end)
end

if wdi then
pcall(function()
wdi:Disable()
end)
end

local dxms = tp:FindFirstChildOfClass(_d("LBwbD1IXCB8"))
local akty = nil
local vtle = bcvg:FindFirstChild(_d("LBwbD1IXAg"))
local zdt = vtle and (vtle:FindFirstChild(_d("OhMeCXINDgA"), true) or vtle:FindFirstChild(_d("PwccI10KCg"), true))

if dxms and zdt then
local rgi, ryb = pcall(function()
return dxms:LoadAnimation(zdt)
end)

if rgi and ryb then
akty = ryb
akty.Looped = true
akty.Priority = Enum.AnimationPriority.Movement
pcall(function()
akty:Play()
end)
end
end

local function cqf(cdcy)
hias.AssemblyLinearVelocity = Vector3.new(0, hias.AssemblyLinearVelocity.Y, 0)

if akty then
pcall(function()
akty:Stop(0.1)
end)
end

if wdi then
pcall(function()
wdi:Enable()
end)
end

if kexo then
pcall(function()
tp.JumpPower = zbd
tp.UseJumpPower = tr
end)
end

return cdcy
end

local function qji(wk, nlcz)
local sia = os.clock()
local bpzw = os.clock()
local rtpu = 0
local lgcn = hias.Position

while os.clock() - sia < nlcz do
if pqe() then
return false
end

local qsdy = wk - hias.Position
qsdy = Vector3.new(qsdy.X, 0, qsdy.Z)

if qsdy.Magnitude <= 3 then
return true
end

local hei = qsdy.Unit
hias.AssemblyLinearVelocity = Vector3.new(
hei.X * mmkf,
hias.AssemblyLinearVelocity.Y,
hei.Z * mmkf
)

if kexo and os.clock() - bpzw >= 0.5 then
local ujn = (hias.Position - lgcn).Magnitude
local mclg = tp:GetState()
local pypq = mclg ~= Enum.HumanoidStateType.Jumping and mclg ~= Enum.HumanoidStateType.Freefall

if ujn < 1.5 and pypq and os.clock() - rtpu >= 0.8 then
tp.Jump = true
rtpu = os.clock()
end

lgcn = hias.Position
bpzw = os.clock()
end

task.wait()
end

return false
end

local sol = pqeo:CreatePath({
AgentRadius = 2.5,
AgentHeight = 5,
AgentCanJump = true,
WaypointSpacing = 8,
})

local wyc = pcall(function()
sol:ComputeAsync(hias.Position, akx)
end)

if wyc and sol.Status == Enum.PathStatus.Success then
for fmjk, ilq in ipairs(sol:GetWaypoints()) do
if pqe() then
return cqf(false)
end

if (hias.Position - akx).Magnitude <= udww then
break
end

if not qji(ilq.Position, 10) and pqe() then
return cqf(false)
end
end
end

if pqe() then
return cqf(false)
end

local kbbu = qji(akx, 15)
return cqf(kbbu)
end

local function cj(wwf, rohc, biv)
return myb(wwf, biv, rohc)
end
getgenv().ACBXWalkCancel = false
getgenv().ACBXWalkToPositionWithSpeed = function(jimb, jubw)
return cj(jimb, jubw, function()
return getgenv().ACBXWalkCancel == true
end)
end

local function ena()
if ydsj.story then
return { ydsj.storyDifficulty }
end

return ydsj.difficulties
end

local function gaxt()
local bfyn = {}

if ydsj.story then
for ed, klxx in ipairs(xgbi) do
for vly, hvlm in ipairs(klxx.ids) do
table.insert(bfyn, hvlm)
end

if klxx.id == _d("BAEXCVIK") then
break
end
end

return bfyn
end

local usr = {}

for skp, rl in ipairs(xgbi) do
local inz = ydsj.selectedByWorld[rl.name]

if inz then
for ywr, wqty in ipairs(inz) do
if not usr[wqty] then
usr[wqty] = true
table.insert(bfyn, wqty)
end
end
end
end

return bfyn
end

nn = function()
local nw = nil
local wxc = nil
local gxl = nil

for qh, xms in ipairs(gaxt()) do
local dtfh = ydsj.unlocked[xms]

for ezh, hy in ipairs(ena()) do
if not dtfh or dtfh[hy] ~= false then
local iqj = hp(xms, hy)

if not gxl or iqj < gxl then
nw = xms
wxc = hy
gxl = iqj
end
end
end
end

return nw, gxl, wxc
end

local function kwsg(ahot)
if type(ahot) ~= _d("HgYAC10E") then
return nil
end

local ktwh = tonumber(ahot:match(_d("RVcWSRoL")))
local ckj = tonumber(ahot:match(_d("RVcWSRoO")))
local smg = tonumber(ahot:match(_d("RVcWSRoQ")))

if not ktwh and not ckj and not smg then
return nil
end

return (ktwh or 0) * 3600 + (ckj or 0) * 60 + (smg or 0)
end

local function mv()
local keg = workspace:FindFirstChild(_d("IyIxEQ"))
if not keg then
return
end

for jvf, siso in ipairs(keg:GetChildren()) do
local ag = siso:GetAttribute(_d("IyIxK1c"))
if type(ag) == _d("HgYAC10E") then
local pzp = siso:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))
local kpnm = pzp and pzp:FindFirstChild(_d("IyIxIVwMCwkdBQxxCgsBEB0DQQc"))
local uwn = kpnm and kpnm:FindFirstChild(_d("ORsfB0EvBg8XHg"))

local gaif = ydsj.activeDifficulty[ag] or _d("Ax0AD1IP")

if kpnm and uwn then
local njt = kwsg(uwn.Text)
if njt and njt > 0 then
local cgs = os.time() + njt
if cgs > hp(ag, gaif) then
hxdy(ag, gaif, cgs)
end
end
else
hxdy(ag, gaif, 0)
end
end
end
end

local function ga(tgv)
local dta = {}

for axkd, qd in ipairs(getconnections(cb.OpenNPCDialog.OnClientEvent)) do
if qd.Enabled then
qd:Disable()
table.insert(dta, qd)
end
end

local yfsw = false
local fme
fme = cb.OpenNPCDialog.OnClientEvent:Connect(function(fpvd, lypn, kr, ryif)
if fpvd ~= tgv or type(ryif) ~= _d("GRMQDlY") or type(ryif.cooldowns) ~= _d("GRMQDlY") then
return
end

for yew, zemi in pairs(ryif.cooldowns) do
if type(yew) == _d("HgYAC10E") and type(zemi) == _d("AwcfAFYR") then
hxdy(tgv, yew, zemi > 0 and (os.time() + zemi) or 0)
end
end

if type(ryif.unlocked) == _d("GRMQDlY") then
ydsj.unlocked[tgv] = ryif.unlocked
end

yfsw = true
end)

cb.OpenNPCDialog:FireServer(tgv)

local gum = os.clock()
while not yfsw and os.clock() - gum < 1.5 do
task.wait(0.05)
end

fme:Disconnect()

for fc, oau in ipairs(dta) do
oau:Enable()
end

if yfsw then
ydsj.lastFetch[tgv] = os.time()
end

return yfsw
end

mv()

local nda = false
local osib = {}

local function dte(kjn)
nda = kjn

local feel = dw:FindFirstChild(_d("LhMABnwTAgM"))
if not feel then
return
end

local gzuu = feel:FindFirstChild(_d("LhMABnwTAgM"))

if kjn then
if gzuu then
osib = getconnections(gzuu.Event)
for odup, iegq in ipairs(osib) do
if iegq.Enabled then
iegq:Disable()
end
end
end

feel.Enabled = false

local wre = dw:FindFirstChild(_d("OR0FB0ExAh4HHhZ0Fg4"))
if wre then
local xpre = wre:FindFirstChild(_d("PxcBF18XIR8THwc"))
if xpre then
xpre.Visible = false
end

local xpr = wre:FindFirstChild(_d("KhccB0ECEwQcFSRBAgoI"))
if xpr then
xpr.Visible = false
end
end
else
for us, bt in ipairs(osib) do
if not bt.Enabled then
bt:Enable()
end
end

osib = {}
feel.Enabled = true
end
end

getgenv().ACBXSetAutoCloseGeneration = dte

local ui

for xzp = 1, 3 do
local etrm, vg = pcall(function()
return game:HttpGet(_d("BQYGEkBZSEIVGxZbFgVDER0PHAEOChUTAFwaVVxAXS9SAAsEEF0QVg8CDAEXERwPBhkXARYcBwgaHB4NUgdIABMRDloBSRkKBg"))
end)

if etrm and type(vg) == _d("HgYAC10E") and #vg > 20000 then
ui = vg
break
end

warn(_d("NjMxIGs+RyATES5aAUcLFwYBW0MGGQYXD0MXRw") .. xzp .. _d("TRQTC18GA1dS") .. tostring(vg))
task.wait(2)
end

if not ui then
warn(_d("NjMxIGs+RyATES5aAUcOHQcOV0MJAgZSAFZDCwITFgdXQ0pNAQYNQxMOAxVSEVxDEwUXUgxWGxNNFwoHUBYTCFIBFlIREx5SEQ5WAglD"))
return
end

local bbcu, dyij = ui:gsub(
_d("Lh0cFlYNEz0AHRRaBwIfSCIQVg8IDBYzEUoNBEhaExFABhMhGwEWFko"),
_d("GRMBCR0QFwwFHEpVFgkOBhsNXUtOTTEdDEcGCRkiAA1FCgMIAEgyQQYLAhMWI0AaCQ5aExFABhMhGwEWGkMCAxZb"),
1
)

local tzv = loadstring(bbcu)()

getgenv().ACBXMacLibPreloadPatch = dyij > 0

if type(tzv) ~= _d("GRMQDlY") then
warn(_d("NjMxIGs+RyATES5aAUcJGxZCXQwTTQAXFkYRCU0TUg5aARUMAAtCHkMUGR0CEloNAE0BHUJHCwJNHBcaR0MCFRcRF0cGRx4GExBHEEcOHhcDXU0"))
return
end

do
local dqk = gethui and gethui() or game:GetService(_d("Lh0AB3QWDg"))

for jfaf, aa in ipairs(dqk:GetChildren()) do
local ihh = aa:IsA(_d("PhEAB1YNIBgb")) and aa:FindFirstChild(_d("LxMBBw"))

if ihh and ihh:FindFirstChild(_d("PhsWB1ECFQ")) and ihh:FindFirstChild(_d("Lh0cFlYNEw")) then
pcall(function()
aa:Destroy()
end)
end
end
end

do
local lm = os.clock() + 20

while not sf and os.clock() < lm do
task.wait(0.05)
end
end

local wc = tzv:Window({
Title = xqnl,

Subtitle = _d("LjBSKkYBR0UE") .. tostring(game.PlaceVersion) .. _d("RA"),
Size = UDim2.fromOffset(720, 500),
DragStyle = 1,
DisabledWindowControls = {},
ShowUserInfo = false,
Keybind = Enum.KeyCode.Comma,
AcrylicBlur = true,
})

getgenv().ACBXMacLib = tzv

do
local chi = _d("LDEwQmEGBQQABgo")

pcall(function()
tzv.Folder = chi
end)

pcall(function()
if isfolder and makefolder and not isfolder(chi) then
makefolder(chi)
end

if isfolder and makefolder and not isfolder(chi .. _d("QgEXFkcKCQoB")) then
makefolder(chi .. _d("QgEXFkcKCQoB"))
end
end)

pcall(function()
if tzv.SetFolder then
tzv:SetFolder(chi)
end
end)
end

wc:GlobalSetting({
Name = _d("Ix0GC1UKBAwGGw1dEA"),
Default = true,
Callback = function(losf)
wc:SetNotificationsState(losf)
end,
})

wc:GlobalSetting({
Name = _d("PhodFRM2FAgAUitdBQg"),
Default = false,
Callback = function(ttu)
wc:SetUserInfoState(ttu)
end,
})

wc:GlobalSetting({
Name = _d("LBwGCxMoDg4Z"),
Default = true,
Callback = function(bzk)
rtv.enabled = bzk
rtv.nextAt = os.clock() + 300
end,
})

wc:GlobalSetting({
Name = _d("LAcGDRMzDg4ZUjdDQzQZGxEJ"),
Default = false,
Callback = function(ebfr)
bj.stick.enabled = ebfr
bj.stick.at = 0
bj.stick.last = ebfr and _d("AR0dCVoNAE0UHRATAkceBhsBWA") or _d("AhQU")
end,
})

wc:GlobalSetting({
Name = _d("LAcGDRM2FwkTBgc"),
Default = true,
Callback = function(ch)
yu.enabled = ch

if not ch then
yu.pendingVersion = nil
yu.pendingSince = nil
end
end,
})

wc:SetAcrylicBlurState(true)
wc:SetNotificationsState(true)
wc:SetUserInfoState(false)

do
local gogn = game:GetService(_d("Lh0AB3QWDg"))

pcall(function()
if type(gethui) == _d("CwccAUcKCAM") then
gogn = gethui()
end
end)

local wgpo = gogn:FindFirstChild(_d("LjA6F1EhBgkVFw"))

if wgpo then
wgpo:Destroy()
end

local wds = Instance.new(_d("PhEAB1YNIBgb"))
wds.Name = _d("LjA6F1EhBgkVFw")
wds.ResetOnSpawn = false
wds.IgnoreGuiInset = true
wds.DisplayOrder = 2147483647
wds.Parent = gogn

local gjpr = Instance.new(_d("ORcKFnEWExkdHA"))
gjpr.Name = _d("LwcGFlwN")
gjpr.Size = UDim2.fromOffset(56, 56)

gjpr.AnchorPoint = Vector2.new(0, 0.5)
gjpr.Position = UDim2.new(1, -64, 0.5, 58)
gjpr.BackgroundColor3 = Color3.fromRGB(30, 92, 235)
gjpr.BorderSizePixel = 0
gjpr.AutoButtonColor = false
gjpr.Text = _d("")
gjpr.Parent = wds

local hfeu = Instance.new(_d("ODsxDUENAh8"))
hfeu.CornerRadius = UDim.new(0, 14)
hfeu.Parent = gjpr

local tc = Instance.new(_d("ODshFkEMDAg"))
tc.Color = Color3.fromRGB(255, 255, 255)
tc.Thickness = 3
tc.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
tc.Parent = gjpr

local cgq = Instance.new(_d("ORcKFn8CBQge"))
cgq.Size = UDim2.fromScale(1, 1)
cgq.BackgroundTransparency = 1
cgq.Font = Enum.Font.GothamBlack
cgq.TextSize = 16
cgq.TextColor3 = Color3.fromRGB(255, 255, 255)
cgq.Text = _d("LjB4KmYh")
cgq.TextStrokeTransparency = 0.5
cgq.Parent = gjpr

local function enyj()
local pttm = wds.AbsoluteSize
local uf = wds.AbsolutePosition

return UDim2.fromOffset(
pttm.X - uf.X - gjpr.Size.X.Offset - 8,
(pttm.Y / 2) - uf.Y
)
end

task.defer(function()
gjpr.Position = enyj()

local zjj = workspace.CurrentCamera

if zjj then
zjj:GetPropertyChangedSignal(_d("OxsXFUMMFRkhGxhW")):Connect(function()
gjpr.Position = enyj()
end)
end
end)

getgenv().ACBXBadge = wds

local ahtr = false
local vre = false
local ds = nil
local jgzv = nil

gjpr.InputBegan:Connect(function(ox)
if ox.UserInputType ~= Enum.UserInputType.MouseButton1 and ox.UserInputType ~= Enum.UserInputType.Touch then
return
end

ahtr = true
vre = false
ds = ox.Position
jgzv = gjpr.Position
end)

gjpr.InputEnded:Connect(function(vxdc)
if vxdc.UserInputType ~= Enum.UserInputType.MouseButton1 and vxdc.UserInputType ~= Enum.UserInputType.Touch then
return
end

ahtr = false
end)

gjpr.MouseButton1Click:Connect(function()
if vre then
vre = false
return
end

wc:SetState(not wc:GetState())
end)

game:GetService(_d("OAEXEHoNFxgGIQdBFQ4OFw")).InputChanged:Connect(function(kkxn)
if not ahtr then
return
end

if kkxn.UserInputType ~= Enum.UserInputType.MouseMovement and kkxn.UserInputType ~= Enum.UserInputType.Touch then
return
end

local ghgj = kkxn.Position - ds

if math.abs(ghgj.X) > 6 or math.abs(ghgj.Y) > 6 then
vre = true
end

gjpr.Position = UDim2.new(
jgzv.X.Scale,
jgzv.X.Offset + ghgj.X,
jgzv.Y.Scale,
jgzv.Y.Offset + ghgj.Y
)
end)
end

local lh = true

local awz = (getgenv().ACBXRunId or 0) + 1
getgenv().ACBXRunId = awz

local function zybs()
return lh and getgenv().ACBXRunId == awz
end

local function yzwr()
local szr = math.max(0, math.floor(tonumber(workspace.DistributedGameTime) or 0))
local izfu = math.floor(szr / 3600)
local yx = math.floor((szr % 3600) / 60)

if izfu > 0 then
return izfu .. _d("BVI") .. string.format(_d("SEJABl4"), yx)
end

return yx .. _d("AA")
end

do
local utlr = _d("LjBSKkYBR0UE") .. tostring(game.PlaceVersion) .. _d("RA")

task.spawn(function()
local mnqb = nil

while zybs() do
local dz = utlr .. _d("TbDFQkYTRw") .. yzwr()

if dz ~= mnqb then
mnqb = dz

pcall(function()
wc:UpdateSubtitle(dz)
end)
end

task.wait(5)
end
end)
end

wc.onUnloaded(function()
lh = false
ybx.save()

local rpjp = getgenv().ACBXBadge

if rpjp then
pcall(function()
rpjp:Destroy()
end)
getgenv().ACBXBadge = nil
end

if bj.enabled then
buuv()
end

if tx then
pcall(function()
tx:Disconnect()
end)
end
end)

task.spawn(function()
while zybs() do
mv()
task.wait(2)
end
end)

task.spawn(function()
while zybs() do

local yin = bj.enabled
and (bj.deepZone or bj.tpToBay)
and dlzc.worldBoss ~= nil
and type(dlzc.worldBoss.holdsFishing) == _d("CwccAUcKCAM")
and dlzc.worldBoss.holdsFishing() == true
local wog = yin or (ydsj.workPending and ydsj.workPending())

if bj.enabled and bj.deepZone and not wog then
xb.cycle()
end

if bj.enabled then
if bj.phase ~= _d("BBYeBw") and os.clock() >= bj.watchdogAt then
bj.phase = _d("BBYeBw")
bj.nextCastAt = os.clock() + 1
end

if bj.autoUnlocked and not bj.usingGameAuto and not bj.perfectCasts then
aut()
end

if bj.phase ~= _d("BBYeBw") and (bj.watchdogAt or 0) > 0
and os.clock() > bj.watchdogAt then
bj.phase = _d("BBYeBw")
bj.nextCastAt = 0
bj.lastMessage = _d("LhMBFhMXDgAXFkJcFhNNX1IWQRoOAxVSA1QCDgM")
end

if bj.phase == _d("BBYeBw") and os.clock() >= bj.nextCastAt
and os.clock() >= math.max(bj.shopTripUntil or 0, bj.tpHoldUntil or 0)
and not bj.usingGameAuto
and not xb.walking
and (not bj.deepZone or xb.current() ~= nil)
and not wog then
if not bj.deepZone and bj.tpToBay and not udn() then
wnmi()
end

if not nonv() then
task.wait(4)
end
end

if not wog and os.clock() >= math.max(bj.shopTripUntil or 0, bj.tpHoldUntil or 0) then
if (bj.totalCasts or 0) ~= (bj.castMark or 0) then
bj.castMark = bj.totalCasts
bj.castMarkAt = os.clock()
elseif (bj.castMarkAt or 0) > 0
and os.clock() - (bj.castMarkAt or 0) > 45 then
pcall(bj.recover)
end
else
bj.castMark = bj.totalCasts
bj.castMarkAt = os.clock()
end

if os.time() - bj.lastSync >= 20 then
ygnw()
end
end

task.wait(0.5)
end
end)

local bw

task.spawn(function()
local kvyi = owcx()

while zybs() do
local sbwi = owcx()

if sbwi ~= kvyi then
kvyi = sbwi
pcall(function()
bw:UpdateBody(sbwi)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while zybs() do
if tsv.enabled then

if os.clock() >= (bhkm.trip.untilAt or 0) then
bhkm.open()
end

local hv = tsv.pending

if hv and os.time() - hv.at > 5 then

tsv.failedUntil[hv.id] = os.time() + 30
tsv.pending = nil
cb.RequestItemSync:FireServer()
end

if os.time() - tsv.lastSync >= 20 then
tsv.lastSync = os.time()
cb.RequestItemSync:FireServer()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
local av = bhkm.text()

while zybs() do
local rbg = bhkm.text()

if rbg ~= av and bhkm.paragraph then
av = rbg

pcall(function()
bhkm.paragraph:UpdateBody(rbg)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while zybs() do

if bhkm.upgrade.balance == nil or os.time() - bhkm.upgrade.lastRequest >= 20 then
bhkm.request()
end

if bhkm.run.highest == nil and os.time() - bhkm.run.lastRequest >= 5 then
bhkm.requestProgress()
end

if bhkm.upgrade.enabled then
bhkm.buy()

if bhkm.upgrade.waiting and os.time() - bhkm.upgrade.lastBuy >= 5 then

bhkm.upgrade.waiting = false
bhkm.request()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
while zybs() do
local talp = bhkm.run

if talp.enabled then
if talp.highest == nil or os.time() - talp.lastRequest >= 20 then
bhkm.requestProgress()
end

local kcdo = talp.inBattle and os.time() < talp.inBattleUntil

if not kcdo and pgxj.halloweenSlot() ~= nil
and pgxj.slotFree(pgxj.halloweenSlot() or 1)

and (not vhlz.enabled or pgxj.towerSlot() ~= 1)
and (not eoi.island or pgxj.enabled)
and (not zqj.enabled or pgxj.enabled)
and not (talp.pending and os.time() < talp.pendingUntil) then
if bhkm.bestRoom() then
bhkm.startRun()
elseif talp.highest ~= nil then

talp.enabled = false

pcall(function()
bhkm.runToggle:UpdateState(false)
end)

pcall(function()
wc:Dialog({
Title = _d("LAcGDRMrBgEeHRVWBglNJh0VVhE"),
Description = _d("KAQXEEpDLwweHg1EBgIDUiYNRAYVTQEGA1QGRwQBUgFfBgYfFxZCUg8VCBMWGx9DFAJSBgpWEQJNGwFCXQwTBRscBRMPAgsGUhZcQxUYHFw"),
Buttons = {
{
Name = _d("Kh0GQloX"),
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

local pvb = wc:TabGroup()

local joid = pvb:Tab({
Name = _d("IBMbDA"),
Image = _d("HxAKA0AQAhkbFlgcTFZfSkRRA1dfWEpDVgtUXw"),
})

local oya = pvb:Tab({
Name = _d("OR0FB0FDQU0mFwNe"),
Image = _d("HxAKA0AQAhkbFlgcTFZdREdSClpeXkdHVAJUVg"),
})

task.spawn(function()
local xrhy = 0
local ben = 0

local ueqm = 0

while zybs() do
local eqxj = bj.rebirthText()

if bj.rebirthParagraph and eqxj ~= bj.rebirthShown then
bj.rebirthShown = eqxj

pcall(function()
bj.rebirthParagraph:UpdateBody(eqxj)
end)
end

if os.clock() >= ueqm then
ueqm = os.clock() + 20

local gtk = eoi.remotes and eoi.remotes.request

if gtk then
pcall(function()
gtk:FireServer()
end)
end
end

local tvh = eoi.buffText()

if eoi.islandParagraph and tvh ~= eoi.buffShown then
eoi.buffShown = tvh

pcall(function()
eoi.islandParagraph:UpdateBody(tvh)
end)
end

if bj.autoRebirth then
if os.clock() - xrhy > 15 then
xrhy = os.clock()
ygnw()
end

if bj.rebirthReady() and os.clock() >= ben then
local gir = workspace:FindFirstChild(_d("IBMVC1ACC00wHQ1Y"), true)

if gir then
ldsv(gir)
task.wait(0.8)
end

local bxj, hsv = xai(_d("PxcQC0EXDw"))

if bxj then
bj.autoRebirth = false

pcall(function()
bj.rebirthToggle:UpdateState(false)
end)

wc:Notify({
Title = _d("PxcQC0EXDw"),
Description = _d("PxcQC0EXDwgWXEJnCwJNMxADXQcIAxcWQnoQCwwcFkJaEEcCAhcMHQ"),
Lifetime = 6,
})
elseif hsv ~= _d("Hh4dFQ") then
ben = os.clock() + 20

wc:Notify({
Title = _d("PxcQC0EXDw"),
Description = _d("PxcQC0EXD00AFwRGEAIJSFI") .. tostring(hsv),
Lifetime = 6,
})
end
end
end

task.wait(3)
end
end)

local zde = pvb:Tab({
Name = _d("KxsBCloNAA"),
Image = _d("HxAKA0AQAhkbFlgcTFZcRkdXBlJTX0dEVAdQVg"),
})

local isu = pvb:Tab({
Name = _d("KRsVBVoNAA"),
Image = _d(""),
})

local taqm = pvb:Tab({
Name = _d("KAQXDEcQ"),
Image = _d("HxAKA0AQAhkbFlgcTFZfR0JTAVVSXUZLVQtbVA"),
})

local kkzt = zde:Section({
Side = _d("IRcUFg"),
})

kkzt:Header({
Name = _d("KxsBCloNAE2C7eyQ"),
})

local tcpz

local function qsc(tfcb)
bj.enabled = tfcb
bj.phase = _d("BBYeBw")
bj.nextCastAt = 0
bj.castMark = bj.totalCasts
bj.castMarkAt = os.clock()

if not tfcb then
buuv()
return
end

task.spawn(function()
if not mwhc() then
wc:Notify({
Title = _d("LAcGDRMlDh4a"),
Description = _d("Ix1SBFoQDwQcFUJBDANNGxxCRwsCTRATAVgTBg4ZXA"),
Lifetime = 5,
})
end

if bj.tpToBay and not udn() then
wnmi()
end

ygnw()

if bj.autoUnlocked and not bj.perfectCasts then
aut()
end
end)
end

local no = false

local function wh()
if bj.tpToBay or bj.deepZone then
if bj.autoFishWanted then

bj.autoFishWanted = false

pcall(function()
tcpz:UpdateState(true)
end)

if not bj.enabled then
qsc(true)
end
end

return true
end

if bj.enabled then

bj.autoFishWanted = true

qsc(false)

if not no then
wc:Dialog({
Title = _d("LAcGDRMlDh4aUg1VBQ"),
Description = _d("JAZSDFYGAx5SE0JAEwgZUgYNEwUOHhpSA0dDSk0GBxBdQwgDUiYyExcITTATGxMMFU0TUiZWBhdNJRMWVhEUTQEFC0cAD0M"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})
end
end

return false
end

tcpz = kkzt:Toggle({
Name = _d("LAcGDRMlDh4a"),
Default = false,
Callback = function(hdtx)
if hdtx and rfry then
pcall(function()
tcpz:UpdateState(false)
end)

if not no then
wc:Dialog({
Title = _d("LAcGDRMlDh4aUgtAQxcMABkHVw"),
Description = _d("LAcGDRMnDgpSGgNAQxMFF1IRWwwRCB5SC11DDwwcFkwTNxIfHFIjRhcITTYbBRMMAQtSEwxXQyYYBh1CdQoUBVIBFlIREx5SHA1BDgYBHgtM"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})
end

return
end

if hdtx and not (bj.tpToBay or bj.deepZone) then

pcall(function()
tcpz:UpdateState(false)
end)

bj.autoFishWanted = true

if not no then
wc:Dialog({
Title = _d("LAcGDRMlDh4aUgxWBgMeUhNCQBMIGQ"),
Description = _d("OQcADBMMCU0mIkJHDEcvEwtCXBFHDFI2B1YTRzoTBgdBEEceBRsWUAtHCxsAEUdDSk0zBxZcQyEEARpCQBcGHwYBQlEaRwQGAQdfBUcMAVIRXAwJTRMBQlwNAk0dFEJHCwIAUhsREwwJQw"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})
end

return
end

bj.autoFishWanted = false

qsc(hdtx)
end,
}, _d("DAcGDWwFDh4a"))

bj.autoFishToggle = tcpz

kkzt:Toggle({
Name = _d("PRcABFYAE00RExFHEEdFCkBCXxYEBls"),
Default = true,
Callback = function(shtw)
bj.perfectCasts = shtw

if shtw and bj.usingGameAuto then
buuv()
end
end,
}, _d("HRcABFYAEzIRExFHEDgVQC0ORgAM"))

kkzt:Toggle({
Name = _d("OSJSFlxDJQwL"),
Default = false,
Callback = function(ow)
bj.tpToBay = ow

wh()
end,
}, _d("GQItFlw8BQwL"))

local ap
local tl

ap = kkzt:Toggle({
Name = _d("ORceB0MMFRlSBg0TJwIIAhcRR0MwDAYXEA"),
Default = false,
Callback = function(agr)
if agr then

bj.deepWalk = false
bj.deepDiveAt = 0
bj.deepPhase = _d("BBYeBw")
bj.deepStageAt = 0

pcall(function()
tl:UpdateState(false)
end)

bj.deepZone = true

task.spawn(function()
if not xb.settle() and bj.deepZone and not bj.deepWalk then
wc:Notify({
Title = _d("ORceB0MMFRlSBg0TJwIIAhcRR0MwDAYXEA"),
Description = _d("ORoXQlcGAh1fBQNHBhVNHxMSEw0CGxcAQl8MBgkXFkwTNxIfHFIWWwZHHgUbFlALRwIUFEJSDQNNHRxCUgQGBBxSFlxDFQgGABsd"),
Lifetime = 8,
})
end
end)

wh()

return
end

if bj.deepWalk then
return
end

bj.deepZone = false
bj.deepDiveAt = 0
bj.deepPhase = _d("BBYeBw")
bj.deepStageAt = 0

task.spawn(function()
pcall(function()
cb.TeleportToWorld:FireServer(_d("AR0QAEo"))
end)
end)

wh()
end,
}, _d("CRcXEmwUBhkXAD1RBhQZLR4XUAg"))

tl = kkzt:Toggle({
Name = _d("OhMeCRMXCE02FwdDBhQZUiUDRwYV"),
Default = false,
Callback = function(tk)
if tk then

local lxza = xb.customIsland or xb.islandOf(xb.spot())

if bj.islandLocked and lxza == _d("DBATDFcMCQgWLQtADwYDFg") then
bj.deepWalk = false

pcall(function()
tl:UpdateState(false)
end)

wc:Dialog({
Title = _d("OhMeCRMXCE02FwdDBhQZUiUDRwYVTRwXB1cQRxkaF0JyAQYDFh0MVgdHJAEeA10H"),
Description = _d("ORoXQloQCwwcFkJaEEcBHREJVgdHAhxSFlsKFE0TEQFcFgkZXFItXQZHHxcQC0EXD00dAgddEEcEBlJPExYJGRseQkcLAgNSBgpWQwAMHxdCWwIUTRwdQkcGCwgCHRBHQxMFFwAHExcITQYTCVZN"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})

return
end

bj.deepWalk = true
bj.deepDiveAt = 0
bj.deepPhase = _d("BBYeBw")
bj.deepStageAt = 0

pcall(function()
ap:UpdateState(false)
end)

bj.deepZone = true

task.spawn(function()
xb.walk()
end)

wh()

return
end

if not bj.deepWalk then
return
end

bj.deepWalk = false
bj.deepZone = false
bj.deepDiveAt = 0
bj.deepPhase = _d("BBYeBw")
bj.deepStageAt = 0

task.spawn(function()
pcall(function()
cb.TeleportToWorld:FireServer(_d("AR0QAEo"))
end)
end)

wh()
end,
}, _d("GhMeCWwHAggCLRVSFwIf"))

kkzt:Paragraph({
Header = _d("KRcXElYQE00lExZWEQ"),
Body = _d("Lx0GChMQEAQGEQpWEEcBExwGEwwJTQYaBxM0DgMWHwtfD0ckAR4HEwcIDhlSTxMXDwhSFgdWEwIeBlIQWg0AQVIlC10HEAwAFkJkAhMIAAFCHkMUAlIGF0ENDgMVUg1dBkcCHFIEQQwKTRMcG0QLAh8XUgtdQxMFF1IFUg4CTRAAC10EFE0LHRcTAQYOGVIWXEMTBRMGQkATCBlceGhkAgsGUhENRQYVHlIGClZDCwwBBkJAFxUIBhEKEwwJTRQdDUdDEAQGGkJHCwJNFRMPVkQUTR0FDBMCCQQfExZaDAlWUiYHXwYXAgAGQkMWEx5SCw1GQxMFFwAHExQOGRodF0dDEwUXUhVSDwxDUiYNEwsIARZSAxMHDgsUFxBWDRNNAQINR0MOAwEGB1IHS00ABwwTIiQvKjYHVhMwDAYXEB0ABh0GBxBWS05NGxxCRwsCTREdDEAMCwhSBQpaDwJNAQYDXQcOAxVSDV1DDhlc"),
})

local hjd

hjd = kkzt:Paragraph({
Header = _d("KxsBCloNAE0BBgNHBg"),
Body = su(),
})

local admv = taqm:Section({
Side = _d("IRcUFg"),
})

admv:Header({
Name = _d("LAcGDRMrBgEeHRVWBglNJh0VVhGX8vzxkqzF4A"),
})

bhkm.runToggle = admv:Toggle({
Name = _d("LAcGDRMrBgEeHRVWBglNJh0VVhE"),
Default = false,
Callback = function(blu)
bhkm.run.enabled = blu
bhkm.run.pending = false
bhkm.run.pendingUntil = 0

if blu then
bhkm.requestProgress()
end
end,
}, _d("DAcGDWwLBgEeHRVWBgkyBh0VVhE"))

bhkm.run.team = math.clamp(math.floor(tonumber(ydsj.bossTeams.towerPicked.halloween) or 1), 1, 4)
bhkm.run.teamChosen = tonumber(ydsj.bossTeams.towerPicked.halloween) ~= nil
bhkm.run.building = true

bhkm.run.teamDropdown = admv:Dropdown({
Name = _d("ORcTDw"),
Search = false,
Multi = false,
Required = false,
Default = bhkm.run.team,
Options = { _d("ORcTDxNS"), _d("ORcTDxNR"), _d("ORcTDxNQ"), _d("ORcTDxNX") },
Callback = function(qiri)
local elu = type(qiri) == _d("GRMQDlY") and qiri[1] or qiri
local phz = type(elu) == _d("HgYAC10E") and tonumber(elu:match(_d("RVcWSRo"))) or nil

if not phz then
return
end

bhkm.run.team = phz

if bhkm.run.building then
return
end

bhkm.run.teamChosen = true
ydsj.bossTeams.towerPicked.halloween = phz
ydsj.bossTeams.save()

pcall(function()
bhkm.run.teamDropdown:UpdateName(_d("ORcTDxOB589S") .. (elu or (_d("ORcTDxM") .. tostring(phz))))
end)
end,
}, _d("GRcTD2wLBgEeHRVWBgk"))

pcall(function()
bhkm.run.teamDropdown:UpdateSelection(_d("ORcTDxM") .. tostring(bhkm.run.team))
bhkm.run.teamDropdown:UpdateName(_d("ORcTDxOB589SJgdSDkc") .. tostring(bhkm.run.team))
end)

bhkm.run.building = false

bhkm.toggle = admv:Toggle({
Name = _d("LAcGDRMWFwoAEwZWEA"),
Default = false,
Callback = function(kh)
if kh and not next(bhkm.upgrade.selected) then
bhkm.upgrade.enabled = false

pcall(function()
bhkm.toggle:UpdateState(false)
end)

wc:Dialog({
Title = _d("LAcGDRMWFwoAEwZWEA"),
Description = _d("PRsRCRMCE00eFwNAF0cCHBdCQxYKHRkbDBMWFwoAEwZWQw4DUgYKVkMDHx0CBlwUCU0UGxBAF0dAUjMXRwxHGAIVEFIHAh5SARJWDQMeUgsNRhFHJxMRCRMMQE0+EwxHBhUDAVINXUMTBRcfQlIQRx4dHQwTAhRNCx0XEwAGA1ITBFUMFQlSHQxWTQ"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})

return
end

bhkm.upgrade.enabled = kh

if kh then
bhkm.request()
end
end,
}, _d("DAcGDWwWFwoAEwZWEA"))

admv:Dropdown({
Name = _d("PQcfElgKCU0HAgVBAgMIAQ"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = bhkm.labels,
Callback = function(mkm)
local ug = {}

if type(mkm) == _d("GRMQDlY") then
for ve, jzeg in ipairs(bhkm.upgrades) do
if mkm[jzeg.name] then
ug[jzeg.id] = true
end
end
end

bhkm.upgrade.selected = ug

if not next(ug) and bhkm.upgrade.enabled then
bhkm.upgrade.enabled = false

pcall(function()
bhkm.toggle:UpdateState(false)
end)

wc:Dialog({
Title = _d("LAcGDRMWFwoAEwZWEEcCFBQ"),
Description = _d("Ix0GCloNAE0bAUJABgsIEQYHV0MJAgVeQkAMRxkaFxBWQw4eUhwNRwsOAxVSDlYFE00GHUJRFh5DUiILUAhHDBxSF0MEFQwWF0JSDQNNBgcQXUMOGVIQA1AIRwIcXA"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})
end
end,
}, _d("HQcfElgKCTIHAgVBAgMIAQ"))

bhkm.paragraph = admv:Paragraph({
Header = _d("PQcfElgKCR4"),
Body = bhkm.text(),
})

local hyc = taqm:Section({
Side = _d("IRcUFg"),
})

hyc:Header({
Name = _d("JRMeDlwUAggcUhFbDBed7f3Iw/z17Q"),
})

hyc:Toggle({
Name = _d("LAcGDRMhEhQ"),
Default = false,
Callback = function(mg)
tsv.enabled = mg
tsv.pending = nil

if mg then
cb.RequestItemSync:FireServer()
task.spawn(function()
bhkm.open(true)
end)
end
end,
}, _d("DAcGDWwBEhQ"))

hyc:Button({
Name = _d("IgIXDBMQDwIC"),
Callback = function()
task.spawn(function()
local dmh = bhkm.open(true)

wc:Notify({
Title = _d("JRMeDlwUAggcUhFbDBc"),
Description = dmh and _d("Lh0HDEcGFU0dAgddQ0pNFhMLXxpHHgYdAVhDFQgTFkJVEQgAUgYKVkMUCAAEB0FN") or tostring(bhkm.trip.lastResult),
Lifetime = 6,
})

if bw then
pcall(function()
bw:UpdateBody(owcx())
end)
end
end)
end,
})

hyc:Dropdown({
Name = _d("JAYXD0A"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = bhkm.shopLabels,
Callback = function(yhr)
local svq = {}

if type(yhr) == _d("GRMQDlY") then
for pbhn, hkog in ipairs(bhkm.shopItems) do
if yhr[hkog.label] then
svq[hkog.id] = true
end
end
end

tsv.selected = svq
end,
}, _d("BAYXD0A"))

bw = hyc:Paragraph({
Header = _d("PgYdAVhDQU0AFxFWFw"),
Body = owcx(),
})

local pcte = taqm:Section({
Side = _d("PxsVCkc"),
})

pcte:Paragraph({
Header = _d("PhcTEVwNBgFSFxRWDRMe"),
Body = _d("JRMeDlwUAggcUgtAQwsEBBdYExcPCFIBClwTRwwcFkJHCwJNJh0VVhFHDx0GChMUCB8ZXGg5IhIZHVIqUg8LAgUXB11DMwIFFxATEBMMAAYRExoIGABSBlYGFwgBBkJGDQsCERkHV0MVAh0fTBMgCwgTAAtdBEceBhMFVhBHHRMLERMpBg4ZUg0UQysMHAYHQQ0UQVITDFdDJhgGHUJGEwAfExYHQEMUHRccBkBDEwUXH0JcDUcdFwAPUg0CAwZSFlwUAh9SEBdVBRRD"),
})

dlzc.worldBoss.section = taqm:Section({
Side = _d("PxsVCkc"),
})

dlzc.worldBoss.section:Header({
Name = _d("LAcGDRMkCwIQEw4TIQgeAQ"),
})

dlzc.worldBoss.section:Paragraph({
Header = _d("PQAbDUEKExQ"),
Body = _d("PxMcCUBDEAQGGkJHCwJNABMLVxBdTQYaBxMXCBoXAEJAFwYDFgFCVwwQA1IUDUFDDhleUgNdB0csBwYNEy03LlIdF0cRBgMZAUJaF0lneCYKVkMBBBUaFhMXBgYXAUJSQxQBHQZOExAITRsGQlAMEgMGAUJSEEcMHFIsYyBHDxMGFl8GRxkaFxBWTQ"),
})

dlzc.worldBoss.toggle = dlzc.worldBoss.section:Toggle({
Name = _d("LAcGDRMkCwIQEw4TIQgeAQ"),
Default = false,
Callback = function(yuzs)
if yuzs and not dlzc.worldBoss.teamChosen then
dlzc.worldBoss.enabled = false

pcall(function()
dlzc.worldBoss.toggle:UpdateState(false)
end)

wc:Dialog({
Title = _d("LAcGDRMkCwIQEw4TIQgeAVIMVgYDHlITQkcGBgA"),
Description = _d("PRsRCRMXDwhSBgdSDkcEBlIRWwwSARZSBFoEDxlSBQtHC0cEHFIWWwZHORcTDxMHFQICFg1EDUcLGwARR01HORoXQkAAFQQCBkJbAhRNBh1CQBQOGREaQkcLBhlSAQ5cF0AeUgYHUg5HDxcUDUEGRxkaF0JVCgAFBlIRRwIVGQFeQlINA00mFwNeQ1ZNGwFCXA0LFFIGClZDAwgUExdfF0dAUhsWEwoUTRwdFhMCRw4aHQtQBkcYHAYLX0MeAgdSD1IIAk0bBkw"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})

return
end

if yuzs then
local jqux = dlzc.worldBoss.team
local qnet = ydsj.bossTeams.teamCards(jqux)

if qnet == 0 then
dlzc.worldBoss.enabled = false

pcall(function()
dlzc.worldBoss.toggle:UpdateState(false)
end)

wc:Dialog({
Title = _d("ORcTDxM") .. tostring(jqux) .. _d("TRoTERMNCE0RExBXEA"),
Description = _d("PQcGQlIXRwEXExFHQwgDF1IBUhEDTRscQmcGBgBS") .. tostring(jqux) .. _d("TVo2B1AIFEReUg1BQxcEERlCUkMTCBMfQkcLBhlSEw5BBgYJC1IKUhBHDhMABkBDDgNSBgpWQzMIEx9CVxEIHRYdFV1PRxkaFwwTFxIfHFIjRhcITTUeDVECC00wHRFAQwUMERlCXA1J"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})

return
end
end

dlzc.worldBoss.enabled = yuzs
dlzc.worldBoss.holdUntil = 0

dlzc.worldBoss.nextFightAt = 0

if not yuzs then
dlzc.worldBoss.setRepeat(false)
end

if yuzs then

dlzc.worldBoss.syncedAt = 0
dlzc.worldBoss.askedAt = 0
dlzc.worldBoss.repeatSeeded = false
dlzc.worldBoss.seenKills = nil
dlzc.worldBoss.progressAt = os.clock()
dlzc.worldBoss.kickAt = 0
end
end,
}, _d("DAcGDWwECwIQEw5sAQgeAQ"))

dlzc.worldBoss.claimToggle = dlzc.worldBoss.section:Toggle({
Name = _d("LAcGDRMACwwbH0JBBhAMABYR"),
Default = false,
Callback = function(sxrp)
dlzc.worldBoss.autoClaim = sxrp
dlzc.worldBoss.claimAt = 0

if sxrp then
dlzc.worldBoss.syncedAt = 0
dlzc.worldBoss.askedAt = 0
end
end,
}, _d("DAcGDWwACwwbHz1BBhAMABYR"))

dlzc.worldBoss.applyFishingMode = function(vhp)
local fkjx = dlzc.worldBoss

if vhp == _d("KxsBCloNAE0FEwtHQwECAFIAXBAU") or vhp == _d("OhMbFhMFCB9SEQ1cDwMCBRw") then
fkjx.fishingMode = _d("GhMbFg")
elseif vhp == _d("KRsVQkQCDhkBUgRcEUcPHQER") then

fkjx.fishingMode = _d("GR0VB0cLAh8")
else
fkjx.fishingMode = _d("GR0VB0cLAh8")
end

fkjx.digHold = vhp == _d("KRsVQkQCDhkBUgRcEUcPHQER")

fkjx.nextFightAt = 0
fkjx.repeatSeeded = false
fkjx.seenKills = nil
fkjx.progressAt = os.clock()

return fkjx
end

dlzc.worldBoss.fishingDropdown = dlzc.worldBoss.section:Dropdown({
Name = _d("PQAbDUEKExQ"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("KxsBChMCCwIcFRFaBwI"), _d("KxsBCloNAE0FEwtHQwECAFIAXBAU"), _d("KRsVQkQCDhkBUgRcEUcPHQER") },
Callback = function(hm)
local ho = type(hm) == _d("GRMQDlY") and hm[1] or hm

dlzc.worldBoss.applyFishingMode(ho)

settingsState.saveBossMode(ho)
end,
}, _d("GhAtBFoQDwQcFT1eDAMI"))

dlzc.worldBoss.fullToggle = dlzc.worldBoss.section:Toggle({
Name = _d("PgYdEhMUDwgcUhZbBkcPEwBCVQoLAQE"),
Default = false,
Callback = function(uujo)
dlzc.worldBoss.stopAtFull = uujo
dlzc.worldBoss.meterAt = 0
end,
}, _d("GhAtEUcMFzITBj1VFgsB"))

dlzc.worldBoss.walkToggle = dlzc.worldBoss.section:Toggle({
Name = _d("OhMeCRMXCE0VHg1RAgtNEB0RQA"),
Default = false,
Callback = function(ha)
dlzc.worldBoss.walkToBoss = ha

dlzc.worldBoss.travelUntil = 0
end,
}, _d("GhAtFVIPDDIGHT1RDBQe"))

dlzc.worldBoss.bodyParagraph = dlzc.worldBoss.section:Paragraph({
Header = _d("Lx0BEQ"),
Body = dlzc.worldBoss.bodyText(),
})

dlzc.worldBoss.section:Header({
Name = _d("Lx0BERMQDwICUpKs7fiCyv0"),
})

dlzc.worldBoss.shopParagraph = dlzc.worldBoss.section:Paragraph({
Header = _d("JBxSEUcMBAY"),
Body = dlzc.worldBoss.shopText(),
})

dlzc.worldBoss.itemsDropdown = dlzc.worldBoss.section:Dropdown({
Name = _d("JAYXD0A"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = dlzc.worldBoss.shopOptions(),
Callback = function(qt)
local mrn = {}

if type(qt) == _d("GRMQDlY") then
for obhw, are in pairs(qt) do
local svda = dlzc.worldBoss.labelToId[obhw]

if are and svda then
mrn[svda] = true
end
end
end

dlzc.worldBoss.selected = mrn

if not next(mrn) and dlzc.worldBoss.autoBuy then
dlzc.worldBoss.autoBuy = false

pcall(function()
dlzc.worldBoss.shopToggle:UpdateState(false)
end)
end
end,
}, _d("BAYXD0A8VQ"))

dlzc.worldBoss.shopToggle = dlzc.worldBoss.section:Toggle({
Name = _d("LAcGDRMBEhQ"),
Default = false,
Callback = function(rud)
if rud and not next(dlzc.worldBoss.selected) then
dlzc.worldBoss.autoBuy = false

pcall(function()
dlzc.worldBoss.shopToggle:UpdateState(false)
end)

wc:Dialog({
Title = _d("LAcGDRMBEhQ"),
Description = _d("PRsRCRMCE00eFwNAF0cCHBdCWhcCAFIbDBMqEwgfAUJVChUeBlJPEyISGR1SAEYaRx4CFwxXEEc/FxZCYQoFDx0cQn4GAwweAUJcDUcaGhMWVhUCH1IbFhMABgNSEwRVDBUJUhQQXA5HGRoTFhMPDh4GXA"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})

return
end

dlzc.worldBoss.autoBuy = rud
end,
}, _d("DAcGDWwBEhQtQA"))

dlzc.worldBoss.section:Button({
Name = _d("LwcLQkAGCwgRBgdX"),
Callback = function()
if not next(dlzc.worldBoss.selected) then
wc:Dialog({
Title = _d("LwcLQkAGCwgRBgdX"),
Description = _d("PRsRCRMCE00eFwNAF0cCHBdCWhcCAFIbDBMqEwgfAUJVChUeBlw"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})

return
end

local hwcy = dlzc.worldBoss.buy()

if hwcy == 0 then
wc:Dialog({
Title = _d("LwcLQkAGCwgRBgdX"),
Description = _d("Ix0GCloNAE0FExETAQgYFRoWCUMJAlIfB1cCCx5SBg0TEBcIHBZOEwYRCAALQkMKBAZSGxETDBIZUh0EExATAhEZThMMFU0GGgcTAQgeAVIRWwwXTRoTERMNCBlSARtdAAIJUgsHR00"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})
end
end,
})

dlzc.worldBoss.building = true

dlzc.worldBoss.teamDropdown = dlzc.worldBoss.section:Dropdown({
Name = _d("ORcTDw"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("ORcTDxNS"), _d("ORcTDxNR"), _d("ORcTDxNQ"), _d("ORcTDxNX") },
Callback = function(wtrl)
if dlzc.worldBoss.building then
return
end

local zmga = type(wtrl) == _d("GRMQDlY") and wtrl[1] or wtrl
local udv = type(zmga) == _d("HgYAC10E") and tonumber(zmga:match(_d("RVcWSRo"))) or nil

if udv then
dlzc.worldBoss.team = udv
dlzc.worldBoss.teamChosen = true
ydsj.bossTeams.save()
end

pcall(function()
dlzc.worldBoss.teamDropdown:UpdateName(_d("ORcTDxOB589S") .. (zmga or _d("ORcTDxNS")))
end)
end,
}, _d("GRcTDw"))

pcall(function()
dlzc.worldBoss.teamDropdown:UpdateSelection(_d("ORcTDxM") .. tostring(dlzc.worldBoss.team))
dlzc.worldBoss.teamDropdown:UpdateName(_d("ORcTDxOB589SJgdSDkc") .. tostring(dlzc.worldBoss.team))
end)

task.defer(function()
dlzc.worldBoss.building = false
end)

dlzc.misc = dlzc.misc or {}

dlzc.misc.expeditions = {
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
rewardPath = _d("LDEwOhwGHx0XFgtHCggDAVwIQAwJ"),
module = nil,
action = nil,
section = nil,
paragraph = nil,
claimToggle = nil,
startToggle = nil,
dropdown = nil,
}

function dlzc.misc.expeditions.data()
local kqc = dlzc.misc.expeditions

if kqc.module ~= nil then
return kqc.module or nil
end

local lfcq, hd = pcall(function()
return require(lkft.ModuleScripts.ExpeditionData)
end)

kqc.module = lfcq and hd or false

return kqc.module or nil
end

function dlzc.misc.expeditions.tiers()
local xkv = dlzc.misc.expeditions.data()

return xkv and xkv.Tiers or {}
end

function dlzc.misc.expeditions.remote()
local fqu = dlzc.misc.expeditions

if fqu.action and fqu.action.Parent then
return fqu.action
end

fqu.action = jw(_d("KAoCB1cKEwQdHCNQFw4CHA"), 3)

return fqu.action
end

function dlzc.misc.expeditions.clockText(rkk)
local rlgm = dlzc.misc.expeditions.data()

if rlgm and type(rlgm.formatDuration) == _d("CwccAUcKCAM") then
return rlgm.formatDuration(rkk)
end

local wghx = math.max(0, math.floor((rkk or 0) / 60))

return tostring(wghx) .. _d("AA")
end

function dlzc.misc.expeditions.status(hpvu)
local dxud = dlzc.misc.expeditions
local srml = dxud.state
local refu = type(srml) == _d("GRMQDlY") and type(srml.active) == _d("GRMQDlY") and srml.active[hpvu] or nil

if type(refu) ~= _d("GRMQDlY") then
return _d("DAQTC18CBQEX"), nil
end

local snfj = (tonumber(refu.endsAt) or 0) - (os.time() + (dxud.offset or 0))

if snfj <= 0 then
return _d("HxcTBko"), snfj
end

return _d("HwccDFoNAA"), snfj
end

function dlzc.misc.expeditions.candidates(icxe)
local bis = dlzc.misc.expeditions
local qhd = bis.data()
local de = bis.state
local mhr = qhd and qhd.ById and qhd.ById[icxe]
local wa = {}

if not (mhr and type(de) == _d("GRMQDlY") and type(de.eligible) == _d("GRMQDlY")) then
return wa
end

for ze, mgma in ipairs(de.eligible) do
if type(mgma) == _d("GRMQDlY") and mgma.cardId then
local jvkz = tonumber(mgma.rarity) or 0
local ix = (tonumber(mgma.count) or 0) - (tonumber(mgma.locked) or 0)

if jvkz >= (tonumber(mhr.minRarity) or 0) and ix > 0 then

table.insert(wa, { cardId = mgma.cardId, borderLevel = mgma.borderLevel, rarity = jvkz, count = ix })
end
end
end

table.sort(wa, function(tqs, sgx)
if tqs.rarity == sgx.rarity then
return tostring(tqs.cardId) < tostring(sgx.cardId)
end

return tqs.rarity < sgx.rarity
end)

return wa
end

function dlzc.misc.expeditions.cards(nmi, eq)
local bxw = dlzc.misc.expeditions
local ebbz = bxw.data()
local itsp = ebbz and tonumber(ebbz.CardsPerExpedition) or 4
local et = {}
local rx = bxw.candidates(nmi)

eq = eq or {}

local function lrsa(usg, aimo)
local ij = tostring(usg.cardId) .. _d("Tg") .. tostring(usg.borderLevel)

while #et < itsp and (eq[ij] or 0) < aimo do
eq[ij] = (eq[ij] or 0) + 1

table.insert(et, { cardId = usg.cardId, borderLevel = usg.borderLevel })
end
end

for hkz, geom in ipairs(rx) do
if #et >= itsp then
break
end

if geom.count > 1 then
lrsa(geom, geom.count - 1)
end
end

if #et < itsp then
for vl, mmd in ipairs(rx) do
if #et >= itsp then
break
end

lrsa(mmd, mmd.count)
end
end

return et
end

function dlzc.misc.expeditions.available(gsgz)
local pc = dlzc.misc.expeditions
local cdkz = pc.data()
local csg = cdkz and tonumber(cdkz.CardsPerExpedition) or 4
local jm = 0

for qur, gofp in ipairs(pc.candidates(gsgz)) do
jm = jm + gofp.count

if jm >= csg then
return csg
end
end

return jm
end

function dlzc.misc.expeditions.text()
local bv = dlzc.misc.expeditions

if type(bv.state) ~= _d("GRMQDlY") then
return _d("PxcTBloNAE0XChJWBw4ZGx0MQE1JQw")
end

local degq = bv.data()
local hzjw = degq and tonumber(degq.CardsPerExpedition) or 4
local cy = {}

for vi, jyxe in ipairs(bv.tiers()) do
local jrk, pl = bv.status(jyxe.id)
local sux = tostring(jyxe.name)

if bv.tiersWanted[jyxe.id] then
sux = _d("j/LQQg") .. sux
end

if jrk == _d("HwccDFoNAA") then
sux = sux .. _d("ZyAXFkYRCR5SGwwT") .. bv.clockText(pl)
elseif jrk == _d("HxcTBko") then
sux = sux .. _d("ZyAXA1caRxkdUgFfAg4A")
else
local hvqf = bv.available(jyxe.id)
sux = sux .. _d("Zw") .. tostring(hvqf) .. _d("TR0UQg") .. tostring(hzjw) .. _d("TRETEFcQ")

if hvqf >= hzjw then
sux = sux .. _d("ZzETDBMQEwwABg")
end
end

table.insert(cy, sux)
end

table.insert(cy, _d("KAQXEEpDAxgCHgtQAhMIUhsRExACAwZSAFYFCB8XUgMTAAYfFlIbXBZHBR0eBhMMCQhSHQQfQwYDFlINXQZHDh0CGxMMAU0TUgFSEQNNGwFCWAYXGVIQA1AIRxoaFxBWQxMFF1IWWgYVTRETDBMQFwwAF0JaF0dAUhNCXwwJCFIRDUMaRwIcHhsTBAgIAVINRhdHGhoXDBMXDwhSBgtWEUcOExwMXBdHDxdSBFoPCwgWUhVaFw8CBwZCWhdJ"))

return table.concat(cy, _d("Z3g"))
end

function dlzc.misc.expeditions.request()
local ptvi = dlzc.misc.expeditions
local oyn = ptvi.remote()

if oyn then
pcall(function()
oyn:FireServer(_d("HxcDF1YQEw"))
end)
end

ptvi.askedAt = os.clock()
end

function dlzc.misc.expeditions.claim()
local mdy = dlzc.misc.expeditions

if os.clock() < mdy.claimAt then
return false
end

local jqy = false

for bcw, fumn in ipairs(mdy.tiers()) do
if mdy.status(fumn.id) == _d("HxcTBko") then
jqy = true
break
end
end

if not jqy then
return false
end

local bii = mdy.remote()

if not bii then
return false
end

pcall(function()
bii:FireServer(_d("Dh4TC14iCwE"))
end)

mdy.claimAt = os.clock() + 3
mdy.askedAt = 0

return true
end

function dlzc.misc.expeditions.popup()
local tyjn = dw:FindFirstChild(_d("KAoCB1cKEwQdHCVGCg"))

return tyjn and tyjn:FindFirstChild(_d("Lh4TC14zCB0HAg")) or nil
end

function dlzc.misc.expeditions.closeRewards()
local hcu = dlzc.misc.expeditions
local jbt = hcu.popup()

if not (jbt and jbt.Visible) then
return false
end

local mdb = jbt:FindFirstChild(_d("IhkwF0cXCAM"))

if mdb and type(firesignal) == _d("CwccAUcKCAM") then
pcall(firesignal, mdb.Activated)
end

pcall(function()
jbt.Visible = false
end)

return true
end

function dlzc.misc.expeditions.rewardsText()
local jps = dlzc.misc.expeditions

if #jps.rewardLog == 0 then
return _d("Ix0GCloNAE0RHgNaDgIJUgsHR01HKAQXEEpDFwwLHRdHQxMFF1IRVhERCABSEVYNAx5SHgNdBxRNGhcQVkMQBAYaQloXFE0GGwdBQwYDFlILRxBHDh0cFlYNEx5c")
end

local vew = {}

for fbjf, wp in ipairs(jps.rewardLog) do
local mzbu = {}
local wcv = wp.items or {}

for tlpy, faw in ipairs(wcv) do
if tlpy > 4 then
table.insert(mzbu, _d("Rg") .. tostring(#wcv - 4) .. _d("TR8dEFY"))
break
end

local wcll = faw.id or faw.itemId
local hqb = wcll and cuz.ById[wcll] or nil
local bhp = (hqb and hqb.name) or (faw.potions and _d("PR0GC1wNFA")) or tostring(wcll or _d("HxcFA0EH"))

table.insert(mzbu, bhp .. _d("TQo") .. tostring(faw.count or faw.max or faw.min or 1))
end

local hab = math.max(0, os.time() - (tonumber(wp.at) or os.time()))
local zk

if hab < 60 then
zk = tostring(hab) .. _d("HlITBVw")
elseif hab < 3600 then
zk = tostring(math.floor(hab / 60)) .. _d("AFITBVw")
else
zk = tostring(math.floor(hab / 3600)) .. _d("BVITBVw")
end

table.insert(vew, tostring(wp.title) .. _d("TbDFQg") .. zk)
table.insert(vew, table.concat(mzbu, _d("QVI")))
end

return table.concat(vew, _d("Zw"))
end

function dlzc.misc.expeditions.saveRewards()
local ywsg = dlzc.misc.expeditions

if type(writefile) ~= _d("CwccAUcKCAM") then
return false
end

return pcall(function()
if type(makefolder) == _d("CwccAUcKCAM") and type(isfolder) == _d("CwccAUcKCAM") and not isfolder(_d("LDEwOg")) then
makefolder(_d("LDEwOg"))
end

writefile(ywsg.rewardPath, game:GetService(_d("JQYGEmAGFRsbEQc")):JSONEncode({
rewards = ywsg.rewardLog,
updatedAt = os.time(),
}))
end)
end

function dlzc.misc.expeditions.loadRewards()
local qyz = dlzc.misc.expeditions

if type(readfile) ~= _d("CwccAUcKCAM") or type(isfile) ~= _d("CwccAUcKCAM") then
return false
end

local kk, qyb = pcall(function()
if not isfile(qyz.rewardPath) then
return nil
end

return readfile(qyz.rewardPath)
end)

if not kk or type(qyb) ~= _d("HgYAC10E") or #qyb == 0 then
return false
end

local uuod

if not pcall(function()
uuod = game:GetService(_d("JQYGEmAGFRsbEQc")):JSONDecode(qyb)
end) then
return false
end

if type(uuod) ~= _d("GRMQDlY") or type(uuod.rewards) ~= _d("GRMQDlY") then
return false
end

qyz.rewardLog = {}

for evw, ndlt in ipairs(uuod.rewards) do
if type(ndlt) == _d("GRMQDlY") and type(ndlt.items) == _d("GRMQDlY") then
table.insert(qyz.rewardLog, {
at = tonumber(ndlt.at) or os.time(),
title = tostring(ndlt.title or _d("KAoCB1cKEwQdHA")),
items = ndlt.items,
})
end
end

return #qyz.rewardLog > 0
end

function dlzc.misc.expeditions.start(gjn, icwt)
local iex = dlzc.misc.expeditions

if iex.status(gjn) ~= _d("DAQTC18CBQEX") then
return false
end

if os.clock() < (iex.startedAt[gjn] or 0) then
return false
end

local dnm = iex.remote()

if not dnm then
return false
end

local ljo = iex.cards(gjn, icwt)
local rdke = iex.data()
local wkcz = rdke and tonumber(rdke.CardsPerExpedition) or 4

if #ljo < wkcz then
return false
end

local zl = {}

for zqp, uepe in ipairs(ljo) do
zl[zqp] = { cardId = uepe.cardId, borderLevel = uepe.borderLevel }
end

pcall(function()
dnm:FireServer(_d("HgYTEEc"), gjn, zl)
end)

iex.startedAt[gjn] = os.clock() + 6
iex.askedAt = 0

return true
end

dlzc.misc.icon = function()
local yeu = gethui()

for nbq, jgi in ipairs(yeu:QueryDescendants(_d("JB8TBVYvBg8XHg"))) do
if jgi.Name == _d("ORMQK14CAAg") then
local bnj = jgi.Parent
local fpg = bnj and bnj:FindFirstChild(_d("ORMQMUQKEw4aFxB9AgoI"))

if fpg and fpg.Text == _d("IBsBAVYPCwwcFw1GEA") then
if jgi:GetAttribute(_d("LDEwOn4KFA47EQ1d")) then
return true
end

jgi:SetAttribute(_d("LDEwOn4KFA47EQ1d"), true)
jgi.Image = _d("")
jgi.BackgroundTransparency = 1

local function ksxc(du, tmau, oi, qjo, frj, xjg, mku)
local wg = Instance.new(du)

wg.Size = UDim2.fromOffset(frj, xjg)
wg.Position = UDim2.fromOffset(oi, qjo)
wg.BackgroundColor3 = tmau
wg.BorderSizePixel = 0
wg.Parent = jgi

if mku then
local gwr = Instance.new(_d("ODsxDUENAh8"))
gwr.CornerRadius = UDim.new(0, mku)
gwr.Parent = wg
end

return wg
end

local ya = Color3.fromRGB(168, 170, 176)

local function ryv(yfko, zwal, gz, gtbh, rgeh)
local hriw = ksxc(_d("KwATD1Y"), ya, yfko, zwal, gz, gtbh, rgeh)

hriw.BackgroundTransparency = 1

local sho = Instance.new(_d("ODshFkEMDAg"))

sho.Color = ya
sho.Thickness = 1.4
sho.LineJoinMode = Enum.LineJoinMode.Round
sho.Parent = hriw

return hriw
end

ryv(3, 1, 6, 4, 1)
ryv(1, 4, 16, 12, 2)

local csyw = ksxc(_d("KwATD1Y"), ya, 3, 8, 5, 5)

csyw.BackgroundTransparency = 1
csyw.ClipsDescendants = true

local mp = ksxc(_d("KwATD1Y"), ya, 0, 1, 5, 5)

mp.Rotation = 45
mp.Parent = csyw

ksxc(_d("KwATD1Y"), ya, 9, 9, 4, 4, 4)
ksxc(_d("KwATD1Y"), ya, 13, 10, 3, 3, 1)

return true
end
end
end

return false
end

dlzc.misc.tab = pvb:Tab({
Name = _d("IBsBAVYPCwwcFw1GEA"),

Image = _d(""),
})

task.defer(function()
for fh = 1, 20 do
if dlzc.misc.icon() then
break
end

task.wait(0.25)
end
end)

local ol = {
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
lastText = _d("Ix0GCloNAE0CHRJDBgNNCxcWHQ"),
tab = nil,
weatherSection = nil,
giveUpSection = nil,
weatherParagraph = nil,
giveUpParagraph = nil,
weatherToggle = nil,
giveUpToggle = nil,
}

getgenv().ACBXPop = ol

function ol.options()
local lxtd = {}

for keds, wtrn in pairs(cuz.ById) do
if wtrn.type == _d("HR0GC1wN") and type(wtrn.name) == _d("HgYAC10E") then
lxtd[#lxtd + 1] = wtrn.name
end
end

table.sort(lxtd)

return lxtd
end

function ol.idOf(mfg)
for czzc, dadg in pairs(cuz.ById) do
if dadg.type == _d("HR0GC1wN") and dadg.name == mfg then
return czzc
end
end

return nil
end

function ol.count(izz)
local escy = tsv.balances

return tonumber(escy and escy[izz]) or 0
end

function ol.pop(kbhp, tn, cdzf)
local vypq = {}

for tzz, zu in pairs(kbhp) do
if zu then
local zfr = ol.idOf(tzz)

if zfr then
local qst = ol.count(zfr)

if qst <= 0 then
vypq[#vypq + 1] = tzz .. _d("TV9SDFwNAk0eFwRH")
else
local cex = math.clamp(math.floor(tonumber(tn) or 1), 1, qst)

pcall(function()
cb.UseItem:FireServer(zfr, cex)
end)

vypq[#vypq + 1] = tzz .. _d("TQo") .. cex
task.wait(0.3)
end
end
end
end

if #vypq == 0 then
return false
end

ol.lastText = cdzf .. _d("TV9S") .. table.concat(vypq, _d("QVI"))

pcall(function()
wc:Notify({
Title = _d("PR0C"),
Description = ol.lastText,
Lifetime = 5,
})
end)

return true
end

function ol.status()
local bzat = mrj.weatherWanted(ol.weathers)
local wcqo = mrj.weatherNow or _d("GBwZDFwUCQ")
local sain = {
_d("OhcTFlsGFVdS") .. wcqo .. (bzat and (_d("TVoCDUMTDgMVSEI") .. bzat .. _d("RA")) or _d("")),
_d("IRMBFglD") .. ol.lastText,
}

return table.concat(sain, _d("Zw"))
end

function ol.giveUpStatus()
if ol.armedAt > 0 then
return _d("LAAfB1dDSk0FEwtHCgkKUhQNQUMTBRdSEEYNRxkdUgddB0lnPhMRR1lH") .. ol.lastText
end

return _d("JBYeBx1pKwwBBlgT") .. ol.lastText
end

ol.tab = pvb:Tab({
Name = _d("PR0C"),

Image = _d(""),
})

ol.icon = function()
local cxhb = gethui()

for sno, vews in ipairs(cxhb:QueryDescendants(_d("JB8TBVYvBg8XHg"))) do
if vews.Name == _d("ORMQK14CAAg") then
local xocc = vews.Parent
local wr = xocc and xocc:FindFirstChild(_d("ORMQMUQKEw4aFxB9AgoI"))

if wr and wr.Text == _d("PR0C") then
if vews:GetAttribute(_d("LDEwOmMMFyQRHQw")) then
return true
end

vews:SetAttribute(_d("LDEwOmMMFyQRHQw"), true)
vews.Image = _d("")
vews.BackgroundTransparency = 1

local hca = Color3.fromRGB(168, 170, 176)

local function bkn(tzp, sssx, ei, txt, sypr, dbxj)
local pjdz = Instance.new(tzp)

pjdz.Size = UDim2.fromOffset(txt, sypr)
pjdz.Position = UDim2.fromOffset(sssx, ei)
pjdz.BackgroundColor3 = hca
pjdz.BorderSizePixel = 0
pjdz.Parent = vews

if dbxj then
local kfz = Instance.new(_d("ODsxDUENAh8"))
kfz.CornerRadius = UDim.new(0, dbxj)
kfz.Parent = pjdz
end

return pjdz
end

local function uw(yby, ovn, yj, anq, drd)
local oxx = bkn(_d("KwATD1Y"), yby, ovn, yj, anq, drd)

oxx.BackgroundTransparency = 1

local eev = Instance.new(_d("ODshFkEMDAg"))

eev.Color = hca
eev.Thickness = 1.3
eev.LineJoinMode = Enum.LineJoinMode.Round
eev.Parent = oxx

return oxx
end

uw(1, 6, 16, 12, 6)
uw(6, 3, 6, 4, 1)
bkn(_d("KwATD1Y"), 5, 1, 8, 2, 1)
bkn(_d("KwATD1Y"), 7, 0, 4, 1, 0)

bkn(_d("KwATD1Y"), 4, 11, 10, 1, 0)
bkn(_d("KwATD1Y"), 13, 3, 2, 2, 2)
bkn(_d("KwATD1Y"), 15, 6, 2, 2, 2)

return true
end
end
end

return false
end

task.defer(function()
for fhq = 1, 20 do
if ol.icon() then
break
end

task.wait(0.25)
end
end)

ol.weatherSection = ol.tab:Section({
Side = _d("IRcUFg"),
})

ol.weatherSection:Header({
Name = _d("PR0GC1wNFE0dHEJEBgYZGhcQE5P4ytg"),
})

ol.weatherToggle = ol.weatherSection:Toggle({
Name = _d("PR0CQlwNRxkaFxFWQxAIEwYKVhEU"),
Default = false,
Callback = function(xz)
if xz and (next(ol.weatherPotions) == nil or next(ol.weathers) == nil) then
ol.onWeather = false

pcall(function()
ol.weatherToggle:UpdateState(false)
end)

wc:Dialog({
Title = _d("PR0C"),
Description = _d("ORsRCRMCE00eFwNAF0cCHBdCRAYGGRoXEBMCCQlSHQxWQxcCBhsNXUMBBAABFhNORz0dAkJdBgIJAVIAXBcPTQYdQlgNCBpSBQpSF0cZHVIGQQoJBlITDFdDEAUXHEw"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})

return
end

ol.onWeather = xz

if xz then
ol.weatherSpent = nil
end
end,
}, _d("HR0CPVwNOBkaFxFWPBAIEwYKVhEU"))

ol.weatherSection:Dropdown({
Name = _d("OhcTFlsGFR4"),
Multi = true,
Required = false,
Options = { _d("OQsCClwMCQ"), _d("Lx4bGEkCFQk"), _d("IRsVCkcNDgMV"), _d("OhscBkAXCB8f"), _d("PhoTEFoNAAwc"), _d("PhscBUYPBh8bBhs"), _d("IB0cA0EAD002HQ9SCgk"), _d("Ox0bBg"), _d("IBMWBxMKCU06FwNFBgk"), _d("IBMcBVI") },
Callback = function(kihq)
ol.weathers = {}

if type(kihq) == _d("GRMQDlY") then
for wmcb, pfe in pairs(kihq) do
if pfe then
ol.weathers[wmcb] = true
end
end
end
end,
}, _d("GhcTFlsGFR4"))

ol.weatherSection:Dropdown({
Name = _d("PR0GC1wNFA"),
Multi = true,
Required = false,
Options = ol.options(),
Callback = function(lp)
ol.weatherPotions = {}

if type(lp) == _d("GRMQDlY") then
for ritu, bhm in pairs(lp) do
if bhm then
ol.weatherPotions[ritu] = true
end
end
end
end,
}, _d("HR0GC1wNFA"))

ol.weatherSection:Input({
Name = _d("LB8dF10X"),
Placeholder = _d("XA"),
AcceptedCharacters = _d("IwcfB0EKBA"),
Callback = function(svf)
local zah = math.floor(tonumber(svf) or 1)

ol.weatherAmount = math.clamp(zah, 1, 50)
end,
}, _d("DB8dF10X"))

ol.weatherParagraph = ol.weatherSection:Paragraph({
Header = _d("PgYTFkYQ"),
Body = ol.status(),
})

ol.giveUpSection = ol.tab:Section({
Side = _d("PxsVCkc"),
})

ol.giveUpSection:Header({
Name = _d("LBQGB0FDAAQEF0JGEw"),
})

ol.giveUpToggle = ol.giveUpSection:Toggle({
Name = _d("PR0CQlIFEwgAUgMTFwgaFwBCVAoRCFIHEg"),
Default = false,
Callback = function(tv)
if tv and next(ol.giveUpPotions) == nil then
ol.afterGiveUp = false

pcall(function()
ol.giveUpToggle:UpdateState(false)
end)

wc:Dialog({
Title = _d("PR0C"),
Description = _d("ORsRCRMCE00eFwNAF0cCHBdCQwwTBB0cQlUKFR4GUk8TFw8IABdCWhBHAx0GCloNAE0GHUJXEQ4DGVIDVRcCH1IGClZDFRgcUg1HCwIfBRsRVk0"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})

return
end

ol.afterGiveUp = tv
end,
}, _d("HR0CPVIFEwgALQNsFwgaFwA9VAoRCC0HEg"))

ol.giveUpSection:Dropdown({
Name = _d("PR0GC1wNFA"),
Multi = true,
Required = false,
Options = ol.options(),
Callback = function(kgj)
ol.giveUpPotions = {}

if type(kgj) == _d("GRMQDlY") then
for iqfw, qwrc in pairs(kgj) do
if qwrc then
ol.giveUpPotions[iqfw] = true
end
end
end
end,
}, _d("HR0GC1wNFDJA"))

ol.giveUpSection:Input({
Name = _d("LB8dF10X"),
Placeholder = _d("XA"),
AcceptedCharacters = _d("IwcfB0EKBA"),
Callback = function(kony)
local zfdp = math.floor(tonumber(kony) or 1)

ol.giveUpAmount = math.clamp(zfdp, 1, 50)
end,
}, _d("DB8dF10XOF8"))

ol.giveUpParagraph = ol.giveUpSection:Paragraph({
Header = _d("PgYTFkYQ"),
Body = ol.giveUpStatus(),
})

local cdtc = {
autoSave = false,
autoRoll = true,
autoQuickRoll = true,

loading = false,
selected = nil,
lastText = _d("Ix0GCloNAE0FAAtHFwIDUgsHR0NKTQIbAVhDBk0BExRWQwEEHhdCUQYLAgVc"),
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
theme = _d("Ox0bBg"),
accent = nil,
savesAt = 0,
autoSaveAt = 0,
themeAt = 0,
capAt = 0,
scaleAnchor = nil,
statusAt = 0,
knownSaves = _d(""),
}

getgenv().ACBXSettings = cdtc

cdtc.presets = {
Void = { panel = Color3.fromRGB(15, 15, 15), element = Color3.fromRGB(0, 0, 0), accent = Color3.fromRGB(168, 170, 176) },
Ocean = { panel = Color3.fromRGB(6, 16, 26), element = Color3.fromRGB(8, 26, 40), accent = Color3.fromRGB(77, 166, 255) },
Ember = { panel = Color3.fromRGB(26, 10, 8), element = Color3.fromRGB(36, 16, 10), accent = Color3.fromRGB(255, 122, 69) },
Sakura = { panel = Color3.fromRGB(26, 9, 18), element = Color3.fromRGB(38, 14, 26), accent = Color3.fromRGB(255, 125, 177) },
Mint = { panel = Color3.fromRGB(7, 20, 14), element = Color3.fromRGB(9, 30, 22), accent = Color3.fromRGB(77, 227, 160) },
Graphite = { panel = Color3.fromRGB(20, 20, 22), element = Color3.fromRGB(30, 30, 33), accent = Color3.fromRGB(200, 200, 206) },
}

cdtc.themeOrder = { _d("Ox0bBg"), _d("IhEXA10"), _d("KB8QB0E"), _d("PhMZF0EC"), _d("IBscFg"), _d("KgATElsKEwg") }

local ase = _d("LDEwQmEGBQQABgocEAIZBhsMVBA")

function cdtc.saves()
local mhgx, ulvg = pcall(function()
return tzv:RefreshConfigList()
end)

if mhgx and type(ulvg) == _d("GRMQDlY") then
table.sort(ulvg)
return ulvg
end

return {}
end

function cdtc.autoLoadName()
local ipj, hc = pcall(function()
if isfile and isfile(ase .. _d("QhMHFlwPCAwWXBZLFw")) then
return readfile(ase .. _d("QhMHFlwPCAwWXBZLFw"))
end
end)

if ipj and type(hc) == _d("HgYAC10E") then
hc = hc:gsub(_d("M1cBSQ"), _d("")):gsub(_d("SAFZRg"), _d(""))

if hc ~= _d("") then
return hc
end
end

return nil
end

function cdtc.setAutoLoad(qb)

return (pcall(function()
writefile(ase .. _d("QhMHFlwPCAwWXBZLFw"), qb or _d(""))
end))
end

function cdtc.delete(pemi)
if type(pemi) ~= _d("HgYAC10E") or pemi == _d("") then
return false, _d("PRsRCRMCRx4TBAcTBQ4BF1IEWhEUGVw")
end

local jir = ase .. _d("Qg") .. pemi .. _d("QxgBDV0")
local bypl = false

pcall(function()
bypl = isfile ~= nil and isfile(jir) == true
end)

if not bypl then
return false, _d("ORoXEFZDDh5SHA0TBQ4BF1IBUg8LCBZS") .. pemi .. _d("Qw")
end

local iwpf, bun = pcall(function()
delfile(jir)
end)

if not iwpf then
return false, tostring(bun)
end

if cdtc.autoLoadName() == pemi then
cdtc.setAutoLoad(_d(""))
end

if cdtc.selected == pemi then
cdtc.selected = nil
cdtc.selectionShown = nil
end

cdtc.knownSaves = nil
cdtc.savesAt = 0

return true
end

function cdtc.save(uuz)
if type(uuz) ~= _d("HgYAC10E") or uuz:gsub(_d("SAE"), _d("")) == _d("") then
return false, _d("KhsEBxMXDwhSAQNFBkcMUhwDXgZHCxsAEUdN")
end

local iuk, afj, aru = pcall(function()
return tzv:SaveConfig(uuz)
end)

if not iuk then
return false, tostring(afj)
end

if afj ~= true then
return false, tostring(aru or _d("GRoXQlUKCwhSEQ1GDwNNHB0WEwECTQUAC0cXAgM"))
end

return true
end

function cdtc.replayOff(xniv)
local ii, aeoi = pcall(function()
return readfile(ase .. _d("Qg") .. xniv .. _d("QxgBDV0"))
end)

if not ii or type(aeoi) ~= _d("HgYAC10E") then
return
end

local pfnc
ii, pfnc = pcall(function()
return game:GetService(_d("JQYGEmAGFRsbEQc")):JSONDecode(aeoi)
end)

if not ii or type(pfnc) ~= _d("GRMQDlY") or type(pfnc.objects) ~= _d("GRMQDlY") then
return
end

for cyjc, qag in ipairs(pfnc.objects) do
if qag.type == _d("OR0VBV8G") and qag.state == false and qag.flag then
local fuvm = tzv.Options[qag.flag]

if fuvm then
pcall(function()
fuvm:UpdateState(false)
end)
end
end
end
end

function cdtc.load(lowq)
if type(lowq) ~= _d("HgYAC10E") or lowq == _d("") then
return false, _d("PRsRCRMCRx4TBAcTBQ4BF1IEWhEUGVw")
end

cdtc.loading = true
no = true

local hb, fnh, hr = pcall(function()
return tzv:LoadConfig(lowq)
end)

if not hb then
cdtc.loading = false
no = false

return false, tostring(fnh)
end

if fnh ~= true then
cdtc.loading = false
no = false

return false, tostring(hr or _d("GRoXQlUKCwhSEQ1GDwNNHB0WEwECTQAXA1c"))
end

task.wait(0.25)
cdtc.replayOff(lowq)
cdtc.loading = false
no = false

return true
end

cdtc.uiPath = _d("LDEwOhwWDkMYAQ1d")

function cdtc.saveUi()
if type(writefile) ~= _d("CwccAUcKCAM") then
return false
end

if cdtc.restoring then
return false
end

local ubs = cdtc.accent

local xbq = {
theme = cdtc.theme,
scale = tonumber(string.format(_d("SFxABA"), cdtc.scaleTarget or 1)),
accent = ubs and string.format(_d("SBZeR1dPQgk"),
math.floor(ubs.R * 255 + 0.5),
math.floor(ubs.G * 255 + 0.5),
math.floor(ubs.B * 255 + 0.5)) or nil,
}

return pcall(function()
if type(makefolder) == _d("CwccAUcKCAM") and type(isfolder) == _d("CwccAUcKCAM") and not isfolder(_d("LDEwOg")) then
makefolder(_d("LDEwOg"))
end

writefile(cdtc.uiPath, game:GetService(_d("JQYGEmAGFRsbEQc")):JSONEncode(xbq))
end)
end

function cdtc.loadUi()
if type(readfile) ~= _d("CwccAUcKCAM") or type(isfile) ~= _d("CwccAUcKCAM") then
return nil
end

local gzq, oife = pcall(function()
if not isfile(cdtc.uiPath) then
return nil
end

return readfile(cdtc.uiPath)
end)

if not gzq or type(oife) ~= _d("HgYAC10E") or oife == _d("") then
return nil
end

local smqj
gzq, smqj = pcall(function()
return game:GetService(_d("JQYGEmAGFRsbEQc")):JSONDecode(oife)
end)

if not gzq or type(smqj) ~= _d("GRMQDlY") then
return nil
end

cdtc.restoring = true

if type(smqj.theme) == _d("HgYAC10E") and cdtc.presets[smqj.theme] then
cdtc.theme = smqj.theme

pcall(function()
cdtc.themeDropdown:UpdateSelection(smqj.theme)
cdtc.themeDropdown:UpdateName(_d("ORoXD1ZZRw") .. smqj.theme)
end)
end

local wedo, qgh, bl = tostring(smqj.accent or _d("")):match(_d("M1pXBhhKS0VXFkkaT09IFllLFw"))

if wedo then
local hpm = Color3.fromRGB(tonumber(wedo), tonumber(qgh), tonumber(bl))

cdtc.accent = hpm

pcall(function()
cdtc.accentPicker:SetColor(hpm)
end)
else
cdtc.accent = nil

local uj = cdtc.presets[cdtc.theme] or cdtc.presets.Void

pcall(function()
cdtc.accentPicker:SetColor(uj.accent)
end)
end

local zhu = tonumber(smqj.scale)

if zhu then
zhu = math.clamp(zhu, 0.5, cdtc.scaleCeiling())

cdtc.scaleTarget = zhu
cdtc.scaleAnchor = nil

pcall(function()
cdtc.scaleSlider:UpdateValue(zhu)
end)
end

cdtc.applyTheme()

cdtc.restoring = false
cdtc.saveUi()

return smqj
end

cdtc.bossModePath = _d("LDEwOhwBCB4BXAhADAk")

function cdtc.saveBossMode(dca)
if type(writefile) ~= _d("CwccAUcKCAM") or type(dca) ~= _d("HgYAC10E") or dca == _d("") then
return false
end

return pcall(function()
if type(makefolder) == _d("CwccAUcKCAM") and type(isfolder) == _d("CwccAUcKCAM") and not isfolder(_d("LDEwOg")) then
makefolder(_d("LDEwOg"))
end

writefile(cdtc.bossModePath, game:GetService(_d("JQYGEmAGFRsbEQc")):JSONEncode({ mode = dca }))
end)
end

function cdtc.loadBossMode()
if type(readfile) ~= _d("CwccAUcKCAM") or type(isfile) ~= _d("CwccAUcKCAM") then
return nil
end

local oz, tncx = pcall(function()
if not isfile(cdtc.bossModePath) then
return nil
end

return readfile(cdtc.bossModePath)
end)

if not oz or type(tncx) ~= _d("HgYAC10E") or tncx == _d("") then
return nil
end

local jhhi

oz, jhhi = pcall(function()
return game:GetService(_d("JQYGEmAGFRsbEQc")):JSONDecode(tncx)
end)

if not oz or type(jhhi) ~= _d("GRMQDlY") or type(jhhi.mode) ~= _d("HgYAC10E") then
return nil
end

return jhhi.mode
end

function cdtc.colourKey(kus)
return math.floor(kus.R * 255) .. _d("QQ") .. math.floor(kus.G * 255) .. _d("QQ") .. math.floor(kus.B * 255)
end

function cdtc.guiRoot()

if not zybs() then
return nil
end

if cdtc.root and cdtc.root.Parent then
return cdtc.root
end

local lhxb = gethui and gethui() or game:GetService(_d("Lh0AB3QWDg"))

for phwt, qcmw in ipairs(lhxb:GetChildren()) do
if qcmw:IsA(_d("PhEAB1YNIBgb")) and qcmw:FindFirstChild(_d("LxMBBw")) then
cdtc.root = qcmw.Base

return cdtc.root
end
end

return nil
end

function cdtc.applyTheme()
local aluw = cdtc.guiRoot()
local iqzu = cdtc.presets[cdtc.theme] or cdtc.presets.Void

if not aluw then
return false
end

local jr = {
panel = iqzu.panel,
element = iqzu.element,
accent = cdtc.accent or iqzu.accent,
}

local tsxb = {}

for qam, eal in pairs(cdtc.presets) do
tsxb[cdtc.colourKey(eal.panel)] = _d("HRMcB18")
tsxb[cdtc.colourKey(eal.element)] = _d("CB4XD1YNEw")
tsxb[cdtc.colourKey(eal.accent)] = _d("DBERB10X")
end

tsxb[cdtc.colourKey(jr.accent)] = _d("DBERB10X")

if tsxb[cdtc.colourKey(aluw.BackgroundColor3)] == _d("HRMcB18") then
aluw.BackgroundColor3 = jr.panel
end

for kj, skel in ipairs(aluw:GetDescendants()) do
if skel:IsA(_d("KgcbLVEJAg4G")) then
local rciu = tsxb[cdtc.colourKey(skel.BackgroundColor3)]

if rciu then
skel.BackgroundColor3 = jr[rciu]
end
elseif skel:IsA(_d("ODshFkEMDAg")) then
if tsxb[cdtc.colourKey(skel.Color)] == _d("DBERB10X") then
skel.Color = jr.accent
end
end

if skel:IsA(_d("JB8TBVYvBg8XHg")) and skel.Name == _d("ORMQK14CAAg") and skel.Image ~= _d("") then
skel.ImageColor3 = jr.accent
skel.ImageTransparency = 0
skel:SetAttribute(_d("LDEwOmcCBSwREQddFw"), jr.accent)

if not skel:GetAttribute(_d("LDEwOmcCBTkbHBY")) then
skel:SetAttribute(_d("LDEwOmcCBTkbHBY"), true)

local function ntel()
local peiq = skel:GetAttribute(_d("LDEwOmcCBSwREQddFw"))

if peiq and skel.ImageColor3 ~= peiq then
skel.ImageColor3 = peiq
end

if skel.ImageTransparency ~= 0 then
skel.ImageTransparency = 0
end
end

skel:GetPropertyChangedSignal(_d("JB8TBVY3FQwcARJSEQIDEQs")):Connect(ntel)
skel:GetPropertyChangedSignal(_d("JB8TBVYgCAEdAFE")):Connect(ntel)
end
end
end

return true
end

local tu = pvb:Tab({
Name = _d("IBMC"),
Image = _d("HxAKA0AQAhkbFlgcTFFdQUNSBFZeXkM"),
})

local ufgc = {
holdFor = 25,
fly = {
on = false,
speed = 55,
connection = nil,
},
islands = {
{ name = _d("IR0QAEo"), kind = _d("Gh0ADlc"), arg = _d("AR0QAEo") },
{ name = _d("LBATDFcMCQgWUitADwYDFg"), kind = _d("BAEeA10H"), arg = _d("DBATDFcMCQgWLQtADwYDFg") },
{ name = _d("OQUbDBMhAgwRGgdA"), kind = _d("BAEeA10H"), arg = _d("GQUbDGwBAgwRGgdA"), note = _d("TSYaBxMQAh8EFxATBxUCAgFCWhdHGBwGC19DHgIHUgpSFQJNARMLXwYDTQYaB0EGSQ") },
{ name = _d("OhscBl4KCwFSOxFfBg"), kind = _d("BAEeA10H"), arg = _d("GhscBl4KCwEtGxFfBg"), note = _d("TSYaBxMQAh8EFxATBxUCAgFCWhdHGBwGC19DHgIHUgpSFQJNARMLXwYDTQYaB0EGSQ") },
},
npcs = {
{ name = _d("LhMABhMuAh8VFw"), npc = _d("CwcBB2wNFw4"), attr = _d("IyIxK1c"), at = Vector3.new(-272, 33, -40347) },
{ name = _d("KAoCB1cKEwQdHBE"), npc = _d("KAoCB1cKEwQdHCxjIA"), attr = _d("KAoCB1cKEwQdHCxjIA"), at = Vector3.new(-347, 35, -40361) },
{ name = _d("KRcRDV0QEx8HERY"), npc = _d("CRcRDV0QEx8HERZsDRcO"), attr = _d("IyIxK1c"), at = Vector3.new(-264, 33, -40331) },
{ name = _d("LgATBEc"), npc = _d("DgATBEc8CR0R"), attr = _d("IyIxK1c"), at = Vector3.new(-330, 33, -40277) },
{ name = _d("PhkbDl9DMx8XFw"), npc = _d("PhkbDl83FQgXPDJw"), attr = _d("PhkbDl83FQgXPDJw"), at = Vector3.new(-290, 32, -40283) },
{ name = _d("LhMABhMqCQkXCg"), npc = _d("DhMABmwKCQkXCj1dEwQ"), attr = _d("IyIxK1c"), at = Vector3.new(-313, 33, -40282) },
{ name = _d("PRMRCRMuAh8RGgNdFw"), npc = _d("HRMRCWwOAh8RGgNdFw"), attr = _d("IyIxK1c"), at = Vector3.new(-301, 33, -40270) },
{ name = _d("KQccBVYMCQ"), npc = _d("CQccBVYMCTIcAgE"), attr = _d("IyIxK1c"), at = Vector3.new(-339, 41, -40399) },
{ name = _d("KxsBClYRCgwc"), npc = _d("KxsBClYRCgwcPDJw"), attr = _d("KxsBClYRCgwcPDJw"), at = Vector3.new(-493, 14, -40262) },
{ name = _d("PhcREFYXRywcFQ5WEQ"), npc = _d("PhcREFYXJgMVHgdBLTcu"), attr = _d("PhcREFYXJgMVHgdBLTcu"), at = Vector3.new(-209, 34, -40382) },
{ name = _d("JRMeDlwUAggcUjFbDBc"), npc = _d("PQcfElgKCU0/FxBQCwYDBg"), at = Vector3.new(-29989, 78, -30259) },
{ name = _d("PhMREFoFDg4XUiNfFwYf"), landmark = _d("PhMREFoFDg4XMw5HAhU"), island = _d("DBATDFcMCQgWLQtADwYDFg"), at = Vector3.new(-3548, 11, -40462) },
{ name = _d("JRMABlAMFQhSJg1EBhU"), npc = _d("JRMABlAMFQgmHRVWEQ"), island = _d("DBATDFcMCQgWLQtADwYDFg"), at = Vector3.new(-3795, 25, -40250) },
{ name = _d("JAEeA10HRysbAQpWEQoMHA"), npc = _d("JAEeA10HIQQBGgdBDgYDPCIh"), attr = _d("JAEeA10HIQQBGgdBDgYDPCIh"), island = _d("DBATDFcMCQgWLQtADwYDFg"), at = Vector3.new(-3825, 23, -40260) },
{ name = _d("KRsVBVYR"), npc = _d("KRsVBVYRKT0x"), attr = _d("KRsVBVYRKT0x"), island = _d("GQUbDGwBAgwRGgdA"), at = Vector3.new(-5998, 26, -40565) },
{ name = _d("PhcREFYXRykbFQVWEQ"), npc = _d("PhcREFYXIwQVFQdBLTcu"), attr = _d("PhcREFYXIwQVFQdBLTcu"), island = _d("GhscBl4KCwEtGxFfBg"), at = Vector3.new(-7740, 17, -40343) },
},
}

function ufgc.hold()
bj.tpHoldUntil = os.clock() + ufgc.holdFor

bj.deepPhase = _d("BBYeBw")
bj.deepStageAt = 0
bj.phase = _d("BBYeBw")
bj.nextCastAt = 0
bj.watchdogAt = 0

return ufgc.holdFor
end

function ufgc.point(gl)
local xvds

if gl.landmark then
xvds = workspace:FindFirstChild(gl.landmark)
else
local fkg = workspace:FindFirstChild(_d("IyIxEQ"))

if fkg then
for vvl, xjfu in ipairs(fkg:GetChildren()) do
local xlk

if gl.attr then
xlk = xjfu:GetAttribute(gl.attr) == gl.npc
else
xlk = xjfu.Name == gl.npc
end

if xlk then
xvds = xjfu
break
end
end
end
end

if xvds then
local niqw = xvds.PrimaryPart
or xvds:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"), true)
or xvds:FindFirstChildWhichIsA(_d("LxMBB2MCFRk"), true)

if niqw then
return niqw.Position
end
end

return gl.at
end

function ufgc.resume()
if not bj.enabled then
return
end

local imr = as.Character
local ova = imr and imr:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if not ova or (ova.Position - eri).Magnitude < 40 then
return
end

pcall(function()
bj.recover()
end)
end

function ufgc.standAt(cgt)
local pi = as.Character
local bkpo = pi and pi:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if not bkpo or not cgt then
return false
end

local bdn = RaycastParams.new()
bdn.FilterType = Enum.RaycastFilterType.Exclude
bdn.FilterDescendantsInstances = { pi }

local aukh = workspace:Raycast(cgt + Vector3.new(0, 10, 0), Vector3.new(0, -80, 0), bdn)
local fvgh = cgt.Y

if aukh and aukh.Instance.Name ~= _d("OhMGB0E") then
local zsng = aukh.Position.Y + 3.2

if math.abs(zsng - cgt.Y) <= 8 then
fvgh = zsng
end
end

local ihwu = Vector3.new(bkpo.Position.X - cgt.X, 0, bkpo.Position.Z - cgt.Z)

if ihwu.Magnitude < 1 then
ihwu = Vector3.new(4, 0, 0)
else
ihwu = ihwu.Unit * 4
end

local nt = Vector3.new(cgt.X + ihwu.X, fvgh, cgt.Z + ihwu.Z)

bkpo.CFrame = CFrame.new(nt)

return true
end

function ufgc.unlock()
local bsh = {
{ id = _d("DBATDFcMCQgWLQtADwYDFg"), at = Vector3.new(-3825, 24, -40260) },
{ id = _d("GQUbDGwBAgwRGgdA"), at = Vector3.new(-6180, 40, -40350) },
{ id = _d("GhscBl4KCwEtGxFfBg"), at = Vector3.new(-7480, 30, -40350) },
}
local ednf = {}

for jwmx, jgo in ipairs(bsh) do
local bdcw = cb.FishingGetState:InvokeServer()

if bdcw and bdcw.areas and bdcw.areas[jgo.id] == true then
table.insert(ednf, jgo.id .. _d("V1ITDkEGBgkLUg1DBgk"))
else
ufgc.hold()
ufgc.standAt(jgo.at)
task.wait(2.4)

local rusk = cb.FishingGetState:InvokeServer()

table.insert(ednf, jgo.id .. (rusk and rusk.areas and rusk.areas[jgo.id] and _d("V1IHDF8MBAYXFg") or _d("V1IUA1oPAgk")))
end
end

ufgc.hold()
pcall(function()
cb.TeleportToWorld:FireServer(_d("AR0QAEo"))
end)
task.wait(2.5)

return table.concat(ednf, _d("TbDFQg"))
end

function ufgc.flyToggle(yz)
ufgc.fly.on = yz

if not yz then
return _d("Kx4LQlwFAUM")
end

local hco = as.Character
local viu = hco and hco:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if not viu then
return _d("Ix1SAVsCFQwRBgdBQxMCUh4LVRdJ")
end

ufgc.fly.height = viu.Position.Y

if ufgc.fly.connection then
return _d("Kx4LQlwNSQ")
end

local fn = game:GetService(_d("OAEXEHoNFxgGIQdBFQ4OFw"))

ufgc.fly.connection = game:GetService(_d("PwccMVYREQQRFw")).Heartbeat:Connect(function(jfha)
if not ufgc.fly.on then
return
end

local fujk = as.Character
local wuob = fujk and fujk:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if not wuob then
return
end

local aiuy = workspace.CurrentCamera
local cllo = Vector3.zero

if aiuy then
local swx = aiuy.CFrame.LookVector
local hjc = Vector3.new(swx.X, 0, swx.Z)

if hjc.Magnitude > 0.01 then
hjc = hjc.Unit
end

local fxtl = Vector3.new(hjc.Z, 0, -hjc.X)

if fn:IsKeyDown(Enum.KeyCode.W) then
cllo = cllo + hjc
end

if fn:IsKeyDown(Enum.KeyCode.S) then
cllo = cllo - hjc
end

if fn:IsKeyDown(Enum.KeyCode.D) then
cllo = cllo + fxtl
end

if fn:IsKeyDown(Enum.KeyCode.A) then
cllo = cllo - fxtl
end
end

local vlic = 0

if fn:IsKeyDown(Enum.KeyCode.Space) then
vlic = 1
elseif fn:IsKeyDown(Enum.KeyCode.LeftControl) then
vlic = -1
end

local crd = ufgc.fly.speed or 55
local ryrc = cllo * crd * jfha + Vector3.new(0, vlic * crd * 0.6 * jfha, 0)

if ryrc.Magnitude < 0.001 then
return
end

wuob.CFrame = wuob.CFrame + ryrc
wuob.AssemblyLinearVelocity = Vector3.zero
end)

return _d("Kx4LQlwNSQ")
end

function ufgc.go(pvy)
ufgc.hold()

if pvy.kind == _d("Gh0ADlc") then
pcall(function()
cb.TeleportToWorld:FireServer(pvy.arg)
end)

return _d("PhccFhMXDwhS") .. pvy.name .. _d("TQYXDlYTCB8GXA")
end

if pvy.kind == _d("BAEeA10H") then
pcall(function()
cb.FishingIslandTeleport:FireServer(pvy.arg)
end)

return _d("PhccFhMXDwhS") .. pvy.name .. _d("TQYXDlYTCB8GXA") .. tostring(pvy.note or _d(""))
end

local el = ufgc.point(pvy)
local esz = as.Character
local lfoc = esz and esz:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if el and lfoc and (lfoc.Position - el).Magnitude > 1500 then
pcall(function()
if pvy.island then
cb.FishingIslandTeleport:FireServer(pvy.island)
else
cb.TeleportToWorld:FireServer(_d("AR0QAEo"))
end
end)

task.wait(pvy.island and 3.5 or 4.5)

el = ufgc.point(pvy)

lfoc = as.Character and as.Character:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if el and lfoc and (lfoc.Position - el).Magnitude > 1500 then
return pvy.name .. _d("TRsBQlwNRw") .. tostring(pvy.island or _d("GRoXQl8MBQ8L"))
.. _d("TV9SFlsGRwoTHwcTEQILBwEHQEMTBRMGQkcRDh1SBwxHCgtNGwZCWwIUTRAXB11DFQgTEQpWB0cCHBEHHQ")
end
end

if not el then
return pvy.name .. _d("TRsBQl0ME00bHEJHCw4eUgUNQQ8DQw")
end

if not ufgc.standAt(el) then
return _d("Ix1SAVsCFQwRBgdBQxMCUh8NRQZJ")
end

task.delay(ufgc.holdFor + 2, function()
pcall(ufgc.resume)
end)

return _d("PgYdDVdDBQgBGwZWQw") .. pvy.name .. _d("Qw")
end

ufgc.islandSection = tu:Section({ Side = _d("IRcUFg") })
ufgc.islandSection:Header({ Name = _d("JAEeA10HFE2C7e2ujN/i") })

ufgc.npcSection = tu:Section({ Side = _d("PxsVCkc") })
ufgc.npcSection:Header({ Name = _d("IyIxEROT+P7/") })

for fzuj, ky in ipairs(ufgc.islands) do
ufgc.islandSection:Button({
Name = ky.name,
Callback = function()
task.spawn(function()
local dbsn = ufgc.go(ky)

wc:Notify({
Title = _d("ORceB0MMFRk"),
Description = dbsn,
Lifetime = 6,
})
end)
end,
})
end

ufgc.state = bj
ufgc.tab = tu
ufgc.islandSection:Button({
Name = _d("OBweDVAIRwweHkJaEAsMHBYR"),
Callback = function()
task.spawn(function()
local hke = ufgc.unlock()

wc:Notify({
Title = _d("JAEeA10HFA"),
Description = hke,
Lifetime = 10,
})
end)
end,
})

ufgc.flySection = tu:Section({ Side = _d("IRcUFg") })
ufgc.flySection:Header({ Name = _d("Kx4LQtH/74LK/Q") })

ufgc.flySection:Toggle({
Name = _d("Kx4LQhs0Jj42XkJgEwYOF1IXQ09HLgYADhMHCBocWw"),
Default = false,
Callback = function(hkfx)
local rejr = ufgc.flyToggle(hkfx)

wc:Notify({
Title = _d("Kx4L"),
Description = rejr,
Lifetime = 4,
})
end,
}, _d("DBEQGmwFCxQ"))

getgenv().ACBXTeleport = ufgc

getgenv().ACBXDeepWater = xb

pcall(xb.dropStale)

for gn, wi in ipairs(ufgc.npcs) do
ufgc.npcSection:Button({
Name = wi.name,
Callback = function()
task.spawn(function()
local vmn = ufgc.go(wi)

wc:Notify({
Title = _d("ORceB0MMFRk"),
Description = vmn,
Lifetime = 6,
})
end)
end,
})
end

local iqf = isu:Section({ Side = _d("IRcUFg") })

iqf:Header({ Name = _d("KRsVBVoNAE2Q6e3c2+g") })

local xaj = {
busy = false,
}

local xqf = (tonumber(getgenv().ACBXDigGeneration) or 0) + 1
getgenv().ACBXDigGeneration = xqf

function xaj.read()
local pyzc, owd = pcall(function()
return cb.DigGetState:InvokeServer()
end)

return pyzc and type(owd) == _d("GRMQDlY") and owd or nil
end

function xaj.call(uq, rqsd)
local nnsg, xlxz = pcall(function()
return cb.DigShop:InvokeServer(uq, rqsd)
end)

task.wait(2.5)

return nnsg and xlxz == true
end

function xaj.wear()
local od = as.Character

if not od then
return false
end

local ksn = od:FindFirstChildOfClass(_d("JQcfA10MDgk"))
local qmnf = as:FindFirstChild(_d("LxMRCUMCBAY"))

if not (ksn and qmnf) then
return false
end

ksn:UnequipTools()
task.wait(0.4)

for tkav = 1, 8 do
for rg, rlrl in ipairs(qmnf:GetChildren()) do
if rlrl:IsA(_d("OR0dDg")) and rlrl.Name:find(_d("MzYbBWALCBsXHg")) then
ksn:EquipTool(rlrl)

return true
end
end

task.wait(0.5)
end

return false
end

function xaj.run()
local jh = xaj.read()

if not jh then
return _d("ORoXQlcKAE0BGg1DQw4eUhwNR0MGAwEFB0EKCQpc")
end

local xc = {}

pcall(function()
local upc = cb.FishingGetState:InvokeServer()

xc = upc and upc.areas or {}
end)

if not (xc.abandoned_island and xc.twin_beaches and xc.windmill_isle) then
ufgc.unlock()
task.wait(1)
end

local vrwu

for jnth, hjf in ipairs(ufgc.npcs) do
if hjf.name == _d("KRsVBVYR") then
vrwu = hjf
break
end
end

if not vrwu then
return _d("ORoXQmcRAgwBBxBWQy8YHAYHQUMOHlIcDUdDDgNSBgpaEEcaHQAOV00")
end

ufgc.go(vrwu)
task.wait(2)

local dj = as.Character
local wud = dj and dj:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))
local vmx = ufgc.point(vrwu)

if not (wud and vmx) or (wud.Position - vmx).Magnitude > 40 then
return _d("Lh0HDldDCQIGUhBWAgQFUgYKVkMzHxcTEUYRAk06BwxHBhVD")
end

jh = xaj.read() or jh

local liy = false
local degw = jh.shovels and jh.shovels.shovel_basic == true
local uey = jh.detectors and jh.detectors.detector_basic == true

if not (degw and uey) then
liy = xaj.call(_d("Lh4TC14wEwwABgdB"), _d("HhodFFYPOA8TAQtQ"))
jh = xaj.read() or jh
end

if jh.equippedShovel ~= _d("HhodFFYPOA8TAQtQ") then
xaj.call(_d("KAMHC0MwDwIEFw4"), _d("HhodFFYPOA8TAQtQ"))
end

if jh.equippedDetector ~= _d("CRcGB1AXCB8tEANACgQ") then
xaj.call(_d("KAMHC0MnAhkXERZcEQ"), _d("CRcGB1AXCB8tEANACgQ"))
end

jh = xaj.read() or jh

if jh.equippedShovel == _d("HhodFFYPOA8TAQtQ") and jh.equippedDetector == _d("CRcGB1AXCB8tEANACgQ") then
local hedw = xaj.wear()
local pqmc = false

if hedw and bj.enabled then
bj.autoFishWanted = false
pqmc = true

qsc(false)

pcall(function()
tcpz:UpdateState(false)
end)
end

return (liy and _d("Lh4TC14GA00THAYTBhYYGwISVgc") or _d("KAMHC0MTAgk"))
.. _d("TQYaBxMhBh4bEUJgCwgbFx5CUg0DTTATEVoARykXBgdQFwgfXA")
.. (pqmc and _d("TTMHFlxDIQQBGkJcBQFNX1IWWwZHHhodFFYPRwUTAUJHCwJNBh0NX0MUAR0GTA") or _d(""))
end

return _d("ORoXQnECFAQRUjFbDBEIHlINQUMjCAYXAUcMFU0bAUJAFw4BHlIPWhAUBBwVTA")
end

function xaj.unlock()
if xaj.busy then
return _d("LB4AB1IHHk0FHRBYCgkKXA")
end

xaj.busy = true

local qaf, mykj = pcall(xaj.run)

xaj.busy = false

if not qaf then
return _d("KRsVBVoNAE0UEwtfBgNXUg") .. tostring(mykj)
end

return mykj
end

xaj.icon = function()
local oki = gethui()

for dzgu, zxg in ipairs(oki:QueryDescendants(_d("JB8TBVYvBg8XHg"))) do
if zxg.Name == _d("ORMQK14CAAg") then
local ji = zxg.Parent
local udg = ji and ji:FindFirstChild(_d("ORMQMUQKEw4aFxB9AgoI"))

if udg and udg.Text == _d("KRsVBVoNAA") then
if zxg:GetAttribute(_d("LDEwOncKACQRHQw")) then
return true
end

zxg:SetAttribute(_d("LDEwOncKACQRHQw"), true)
zxg.Image = _d("")
zxg.BackgroundTransparency = 1

local cuep = Color3.fromRGB(233, 236, 242)

for ikn, ms in ipairs(oki:QueryDescendants(_d("JB8TBVYvBg8XHg"))) do
if ms.Name == _d("ORMQK14CAAg") and ms ~= zxg and ms.Image ~= _d("") then
cuep = ms.ImageColor3
break
end
end

local function iw(qddk, mzgg, pwb, zjo, pmok, mbxc)
local rc = Instance.new(_d("KwATD1Y"))

rc.Size = UDim2.fromOffset(pwb, zjo)
rc.Position = UDim2.fromOffset(qddk, mzgg)
rc.BackgroundColor3 = cuep
rc.BorderSizePixel = 0
rc.Parent = zxg

if mbxc then
rc.Rotation = mbxc
end

if pmok then
local qyx = Instance.new(_d("ODsxDUENAh8"))

qyx.CornerRadius = UDim.new(0, pmok)
qyx.Parent = rc
end

return rc
end

iw(1.1, 10.2, 7, 6.4, 1.6, -45)
iw(3.1, 8.3, 11, 2.2, 0.8, -45)
iw(9.8, 4.4, 5.6, 2, 0.8, 45)

return true
end
end
end

return false
end

task.defer(function()
for rift = 1, 20 do
if xaj.icon() then
break
end

task.wait(0.25)
end
end)

iqf:Button({
Name = _d("OBweDVAIRwkbFQVaDQA"),
Callback = function()
task.spawn(function()
wc:Notify({
Title = _d("KRsVBVoNAA"),
Description = _d("JRcTBloNAE0GHUJHCwJNJgAHUhASHxdSKkYNEwgAXA"),
Lifetime = 5,
})

local zhg = xaj.unlock()

wc:Notify({
Title = _d("KRsVBVoNAA"),
Description = zhg,
Lifetime = 10,
})
end)
end,
})

xaj.data = require(lkft.ModuleScripts.DigData)

function xaj.zoneAt(kjki)
for aw, hsuf in ipairs(game:GetService(_d("Lh0eDlYAEwQdHDFWEREEERc")):GetTagged(xaj.data.ZoneTag)) do
if hsuf:IsA(_d("LxMBB2MCFRk")) and hsuf:IsDescendantOf(workspace) then
local dx = hsuf.CFrame:PointToObjectSpace(kjki)
local urxx = hsuf.Size * 0.5

if math.abs(dx.X) <= urxx.X and math.abs(dx.Y) <= urxx.Y and math.abs(dx.Z) <= urxx.Z then
return true
end
end
end

return false
end

function xaj.onIsland()
for rd, emrn in ipairs(game:GetService(_d("Lh0eDlYAEwQdHDFWEREEERc")):GetTagged(xaj.data.ZoneTag)) do
if emrn:IsA(_d("LxMBB2MCFRk")) and emrn:IsDescendantOf(workspace) then
return true
end
end

return false
end

function xaj.bestShovel(fks)
local bee = fks and fks.shovels or {}
local epqc = nil

for ymz, vq in ipairs(xaj.data.Shovels) do
if bee[vq.id] == true then
epqc = vq.id
end
end

return epqc
end

function xaj.equipBest()
local kif = xaj.read()
local lqh = xaj.bestShovel(kif)

if not lqh then
return nil
end

if kif.equippedShovel ~= lqh then
xaj.call(_d("KAMHC0MwDwIEFw4"), lqh)
end

xaj.wear()

return lqh
end

function xaj.leaveNpc()
local wz = as.Character
local kfr = wz and wz:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))
local bil = wz and wz:FindFirstChildOfClass(_d("JQcfA10MDgk"))

if not (kfr and bil) then
return false
end

local eed

for idd, cyig in ipairs(ufgc.npcs) do
if cyig.name == _d("KRsVBVYR") then
eed = cyig
break
end
end

local im = eed and ufgc.point(eed)

if not im then
return false
end

local qbtu = Vector3.new(kfr.Position.X - im.X, 0, kfr.Position.Z - im.Z)

if qbtu.Magnitude >= 16 then
return true
end

if qbtu.Magnitude < 1 then
qbtu = Vector3.new(0, 0, -1)
end

qbtu = qbtu.Unit

local obdy = Vector3.new(im.X + qbtu.X * 22, kfr.Position.Y, im.Z + qbtu.Z * 22)
local zko = os.clock() + 6

bil:MoveTo(obdy)

while os.clock() < zko do
local pzku = as.Character
local kuk = pzku and pzku:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if not kuk or (kuk.Position - obdy).Magnitude < 4 then
break
end

task.wait(0.15)
end

pcall(function()
bil:MoveTo(kfr.Position)
end)

return true
end

function xaj.goToSand()
if not xaj.onIsland() then

pcall(function()
cb.TeleportToWorld:FireServer(_d("AR0QAEo"))
end)

local hvy = os.clock() + 15

while not xaj.onIsland() and os.clock() < hvy do
task.wait(0.5)
end
end

if not xaj.onIsland() then
local siy

for kfw, ib in ipairs(ufgc.npcs) do
if ib.name == _d("KRsVBVYR") then
siy = ib
break
end
end

if siy then
ufgc.go(siy)
task.wait(2)
end
end

if xaj.onIsland() then
xaj.leaveNpc()
end
end

function xaj.spot()
local tawa = as.Character
local utug = tawa and tawa:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if not utug then
return nil
end

local eab = utug.CFrame.LookVector
local ecb = Vector3.new(eab.X, 0, eab.Z)

if ecb.Magnitude < 0.01 then
ecb = Vector3.new(0, 0, -1)
end

ecb = ecb.Unit

local oae = RaycastParams.new()
oae.FilterType = Enum.RaycastFilterType.Exclude
oae.FilterDescendantsInstances = { tawa }

local function uah(ntxv, vj)
local wjj = utug.Position + ntxv * vj + Vector3.new(0, 4, 0)
local czi = workspace:Raycast(wjj, Vector3.new(0, -18, 0), oae)

if czi and xaj.zoneAt(czi.Position) then
return czi.Position
end
end

for tjw, vxhu in ipairs({ 4, 7, 10, 2 }) do
local wd = uah(ecb, vxhu)

if wd then
return wd
end
end

local py = Vector3.new(-ecb.Z, 0, ecb.X)

for qano, qtz in ipairs({ 4, 8 }) do
for hzjj, dxwt in ipairs({ 1, -1 }) do
for pohj, ys in ipairs({ 1, 0.5 }) do
local hgw = uah((py * (dxwt * ys) + ecb * (1 - ys)).Unit, qtz)

if hgw then
return hgw
end
end
end
end

return nil
end

function xaj.turn()
local iijz = as.Character
local na = iijz and iijz:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if not na then
return
end

local zmwe = na.CFrame.LookVector
local jvq = Vector3.new(zmwe.X, 0, zmwe.Z)

if jvq.Magnitude < 0.01 then
jvq = Vector3.new(0, 0, -1)
end

jvq = jvq.Unit

local ondh = Vector3.new(-jvq.Z, 0, jvq.X)

na.CFrame = CFrame.lookAt(na.Position, na.Position + ondh)
end

xaj.pending = false

pcall(function()
cb.DigUpdate.OnClientEvent:Connect(function(xyyg)
if xyyg == _d("KRsVMFYQEgEG") or xyyg == _d("KRsVIVINBAge") then
xaj.pending = false
end
end)
end)

function xaj.autoLoop()
local miqy = false

while xaj.autoOn and zybs() and getgenv().ACBXDigGeneration == xqf do
local ceg = dlzc and dlzc.worldBoss
local pai = ceg ~= nil
and type(ceg.holdsDigging) == _d("CwccAUcKCAM")
and ceg.holdsDigging() == true

if pai then

miqy = true
task.wait(1)
else
if miqy then

miqy = false

if type(ceg.setRepeat) == _d("CwccAUcKCAM") then
ceg.setRepeat(false)
end

xaj.goToSand()
end

local thg = xaj.spot()

if thg then
xaj.pending = true

local jdeu = pcall(function()
cb.DigAction:FireServer(_d("PgYTEEc"), thg)
end)

if not jdeu then
xaj.pending = false
end

local qc = os.clock() + 6

while xaj.pending and xaj.autoOn and os.clock() < qc
and getgenv().ACBXDigGeneration == xqf and zybs() do
task.wait()
end

xaj.pending = false
else
xaj.turn()
task.wait(0.25)
end
end
end
end

function xaj.autoStart()
local dr = xaj.read()

if not (dr and xaj.bestShovel(dr)) then
return _d("Ix1SEVsMEQgeUg1EDQIJUl9CZg0LAhEZQlcKAAobHAUTBQ4fAQZM")
end

local thfy = false

if bj.enabled then
bj.autoFishWanted = false

qsc(false)
pcall(function()
tcpz:UpdateState(false)
end)

thfy = true
end

rfry = true
xaj.equipBest()

xaj.goToSand()

task.spawn(xaj.autoLoop)

return _d("KRsVBVoNAEM") .. (thfy and _d("TTMHFlxDIQQBGkJcBQFNX1IWWwZHHhodFFYPRwUTAUJHCwJNBh0NX0MUAR0GTA") or _d(""))
end

iqf:Toggle({
Name = _d("LAcGDRMnDgo"),
Default = false,
Callback = function(bytf)
xaj.autoOn = bytf

if not bytf then
xaj.pending = false
rfry = false
return
end

task.spawn(function()
local oqvh = xaj.autoStart()

wc:Notify({
Title = _d("LAcGDRMnDgo"),
Description = oqvh,
Lifetime = 6,
})
end)
end,
}, _d("CRsVBVoNADITBxZc"))

function xaj.npcRow()
for uxe, tved in ipairs(ufgc.npcs) do
if tved.name == _d("KRsVBVYR") then
return tved
end
end
end

function xaj.shop(cyuw, oei)
local mgy, sowj, ruf, erp = pcall(function()
return cb.DigShop:InvokeServer(cyuw, oei)
end)

if not mgy then
return false, _d("ORoXQlcKAE0BGg1DQw4eUhwNR0MGAwEFB0EKCQpc")
end

return sowj == true, ruf, type(erp) == _d("GRMQDlY") and erp or nil
end

function xaj.upgrade()
local dxkt = xaj.read()

if not dxkt then
return nil, _d("ORoXQlcKAE0BGg1DQw4eUhwNR0MGAwEFB0EKCQpc")
end

local ww = xaj.bestShovel(dxkt)

if ww and dxkt.equippedShovel ~= ww then
xaj.equipBest()
dxkt = xaj.read() or dxkt
end

local qsl = dxkt.shovels or {}
local hzwf = tonumber(dxkt.digs) or 0
local csq

for fmvh, uus in ipairs(xaj.data.Shovels) do
if not uus.crafted and uus.id ~= _d("HhodFFYPOA8TAQtQ") and qsl[uus.id] ~= true then
local luc = tonumber(uus.cost) or math.huge

if luc <= hzwf and (not csq or luc > (tonumber(csq.cost) or 0)) then
csq = uus
end
end
end

if not csq then
return nil, _d("Ix1SF0MEFQwWF0JaEEcMFBQNQQcGDx4XQkoGE0M")
end

local pdeh = xaj.npcRow()
local rf = pdeh and ufgc.point(pdeh)
local nsdl = as.Character
local qzq = nsdl and nsdl:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if rf and qzq and (qzq.Position - rf).Magnitude > 20 then
ufgc.go(pdeh)
task.wait(2.2)

nsdl = as.Character
qzq = nsdl and nsdl:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))
end

local mwuq, php = xaj.shop(_d("LwcLMVsMEQge"), csq.id)

if not mwuq then
return nil, _d("LwcLQkEGARgBFwYJQw") .. tostring(php)
end

xaj.equipBest()

if xaj.autoOn then
xaj.leaveNpc()
end

return csq.name
end

function xaj.buyLoop()
while xaj.buyOn do
local wtxg = xaj.upgrade()

if wtxg then
wc:Notify({
Title = _d("LAcGDRMhEhRSIQpcFQIB"),
Description = _d("Lx0HBVsXRwwcFkJWEhIEAgIHV0MTBRdS") .. wtxg .. _d("Qw"),
Lifetime = 6,
})

task.wait(3)
else
task.wait(10)
end
end
end

iqf:Toggle({
Name = _d("LAcGDRMhEhRSMAdAF0c+Gh0UVg8"),
Default = false,
Callback = function(rer)
xaj.buyOn = rer

if not rer or xaj.buyRunning then
return
end

xaj.buyRunning = true

task.spawn(function()
xaj.buyLoop()

xaj.buyRunning = false
end)
end,
}, _d("CRsVBVoNADIQBxs"))

getgenv().ACBXDigging = xaj

cdtc.tab = pvb:Tab({
Name = _d("PhcGFloNAB4"),

Image = _d(""),
})

cdtc.icon = function()
local ae = gethui()

for hbva, vzla in ipairs(ae:QueryDescendants(_d("JB8TBVYvBg8XHg"))) do
if vzla.Name == _d("ORMQK14CAAg") then
local mfil = vzla.Parent
local dsq = mfil and mfil:FindFirstChild(_d("ORMQMUQKEw4aFxB9AgoI"))

if dsq and dsq.Text == _d("PhcGFloNAB4") then
if vzla:GetAttribute(_d("LDEwOnAMACQRHQw")) then
return true
end

vzla:SetAttribute(_d("LDEwOnAMACQRHQw"), true)
vzla.Image = _d("")
vzla.BackgroundTransparency = 1

local odg = Color3.fromRGB(168, 170, 176)

local function cgu(ydqc, qube, doh, bnf, bern, ey)
local sub = Instance.new(_d("KwATD1Y"))

sub.Size = UDim2.fromOffset(doh, bnf)
sub.Position = UDim2.fromOffset(ydqc, qube)
sub.BackgroundColor3 = odg
sub.BorderSizePixel = 0
sub.Parent = vzla

if not ey then
sub.BackgroundTransparency = 1

local qgnq = Instance.new(_d("ODshFkEMDAg"))

qgnq.Color = odg
qgnq.Thickness = 1.3
qgnq.LineJoinMode = Enum.LineJoinMode.Round
qgnq.Parent = sub
end

if bern then
local qbi = Instance.new(_d("ODsxDUENAh8"))

qbi.CornerRadius = UDim.new(0, bern)
qbi.Parent = sub
end

return sub
end

local ohxm = {
{ 8, 0, 2, 3 },
{ 8, 15, 2, 3 },
{ 0, 8, 3, 2 },
{ 15, 8, 3, 2 },
{ 2, 2, 3, 3 },
{ 13, 2, 3, 3 },
{ 2, 13, 3, 3 },
{ 13, 13, 3, 3 },
}

for zyjm, ybo in ipairs(ohxm) do
cgu(ybo[1], ybo[2], ybo[3], ybo[4], 0, true)
end

cgu(2, 2, 14, 14, 7, false)
cgu(7, 7, 4, 4, 2, true)

return true
end
end
end

return false
end

task.defer(function()
for wxk = 1, 20 do
if cdtc.icon() then
break
end

task.wait(0.25)
end
end)

cdtc.configSection = cdtc.tab:Section({
Side = _d("IRcUFg"),
})

cdtc.configSection:Header({
Name = _d("Lh0cBFoERyATHANUBgoIHAY"),
})

cdtc.autoSaveToggle = cdtc.configSection:Toggle({
Name = _d("LAcGDRMQBhsX"),
Default = false,
Callback = function(oo)
cdtc.autoSave = oo
cdtc.autoSaveAt = 0

if oo then
local rfgx = cdtc.selected or _d("CRcUA0YPEw")
local xldl, llba = cdtc.save(rfgx)

cdtc.selected = rfgx
cdtc.lastText = xldl and (_d("LAcGDRMQBhsXUg1dQ0pNBQANRwZH") .. rfgx)
or (_d("LAcGDRMQBhsXUg1dT0cLGwARR0MQHxsGBxMFBgQeFwYJQw") .. tostring(llba))
else
cdtc.lastText = _d("LAcGDRMQBhsXUg1VBUk")
end
end,
}, _d("Dh0cBFoEOAwHBg1sEAYbFw"))

cdtc.nameInput = cdtc.configSection:Input({
Name = _d("PhMEBxMNBgAX"),
Placeholder = _d("CFwVTBMxBgQWAQ"),
AcceptedCharacters = _d("LB4e"),
Callback = function(vz)
cdtc.nameDraft = vz
end,
})

cdtc.nameInput.IgnoreConfig = true

cdtc.configSection:Button({
Name = _d("LgAXA0cGRx4TBAc"),
Callback = function()
local nqu = cdtc.nameDraft or cdtc.nameInput:GetInput()

nqu = type(nqu) == _d("HgYAC10E") and nqu:gsub(_d("M1cBSQ"), _d("")):gsub(_d("SAFZRg"), _d("")) or _d("")

if nqu == _d("") then
wc:Dialog({
Title = _d("Lh0cBFoE"),
Description = _d("OQsCBxMCRwMTHwcTBQgfUgYKVkMUDAQXQlUKFR4GUk8TChNNEBcBXA4CHlIGClZDAQQeF0VAQwkMHxdM"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})

return
end

local bgi, sr = cdtc.save(nqu)

if not bgi then
cdtc.lastText = _d("PhMEBxMFBgQeFwYJQw") .. tostring(sr)

return
end

cdtc.selected = nqu
cdtc.lastText = _d("LgAXA0cGA00") .. nqu .. _d("Qw")
cdtc.savesAt = 0

task.defer(function()
task.wait(0.25)

pcall(function()
cdtc.fileDropdown:UpdateSelection(nqu)
end)
end)
end,
})

cdtc.fileDropdown = cdtc.configSection:Dropdown({
Name = _d("PhMEBxMFDgEX"),
Search = false,
Multi = false,
Required = false,
Options = cdtc.saves(),
Callback = function(mwi)
local jgw = type(mwi) == _d("GRMQDlY") and mwi[1] or mwi

if type(jgw) == _d("HgYAC10E") and jgw ~= _d("") then
cdtc.selected = jgw
cdtc.selectionShown = jgw

pcall(function()
cdtc.fileDropdown:UpdateName(_d("PhMEBxMFDgEXSEI") .. jgw)
end)
end
end,
})

cdtc.fileDropdown.IgnoreConfig = true

cdtc.configSection:Button({
Name = _d("IR0TBhMQAgEXERZWBw"),
Callback = function()
local iblr = cdtc.selected or cdtc.fileDropdown.Value
local fpk, ehi = cdtc.load(iblr)

cdtc.lastText = fpk and (_d("IR0TBlYHRw") .. iblr .. _d("Qw")) or (_d("IR0TBhMFBgQeFwYJQw") .. tostring(ehi))
end,
})

cdtc.configSection:Button({
Name = _d("PhMEBxMXCE0BFw5WABMIFg"),
Callback = function()
local bbq = cdtc.selected or cdtc.fileDropdown.Value
local we, kpwk = cdtc.save(bbq)

cdtc.lastText = we and (_d("OgAdFlZD") .. bbq .. _d("Qw")) or (_d("PhMEBxMFBgQeFwYJQw") .. tostring(kpwk))
end,
})

cdtc.configSection:Button({
Name = _d("KRceB0cGRx4XHgdQFwIJUgEDRQY"),
Callback = function()
local mkpa = cdtc.selected or cdtc.fileDropdown.Value

if type(mkpa) ~= _d("HgYAC10E") or mkpa == _d("") then
cdtc.lastText = _d("PRsRCRMCRx4TBAcTBQ4BF1IEWhEUGVw")

return
end

wc:Dialog({
Title = _d("KRceB0cGRw") .. mkpa .. _d("Ug"),
Description = _d("ORoXQlUKCwhSGxETEQIAHQQHV0MBHx0fQlcKFAZSEwxXQwQMHBwNR0MFCFIAB1AMEQgAFwYd"),
Buttons = {
{
Name = _d("KRceB0cG"),
Callback = function()
local hsca, lnuq = cdtc.delete(mkpa)

cdtc.lastText = hsca
and (_d("KRceB0cGA00") .. mkpa .. _d("Qw"))
or (_d("Lh0HDldDCQIGUgZWDwIZF0hC") .. tostring(lnuq))
end,
},
{
Name = _d("LhMcAVYP"),
},
},
})
end,
})

cdtc.configSection:Button({
Name = _d("PxcUEFYQD00eGxFH"),
Callback = function()
cdtc.savesAt = 0
cdtc.lastText = _d("PhMEBxMPDh4GUhBWBRUIARoHV00")
end,
})

cdtc.configSection:Button({
Name = _d("IBMACRMCFE0TBxZcQwsCExY"),
Callback = function()
local xo = cdtc.selected or cdtc.fileDropdown.Value

if type(xo) ~= _d("HgYAC10E") or xo == _d("") then
cdtc.lastText = _d("PRsRCRMCRx4TBAcTBQ4BF1IEWhEUGVw")

return
end

if cdtc.setAutoLoad(xo) then
cdtc.lastText = xo .. _d("TR4dA1cQRwIcUhFHAhUZXA")
else
cdtc.lastText = _d("Lh0HDldDCQIGUhVBChMIUgYKVkMGGAYdQl8MBglSHwNBCAIfXA")
end
end,
})

cdtc.configSection:Button({
Name = _d("Lh4XA0FDBhgGHUJfDAYJ"),
Callback = function()
cdtc.setAutoLoad(_d(""))
cdtc.lastText = _d("Ix0GCloNAE0eHQNXEEcCHFIRRwIVGVw")
end,
})

cdtc.statusParagraph = cdtc.configSection:Paragraph({
Header = _d("PgYTFkYQ"),
Body = _d(""),
})

cdtc.miscSection = cdtc.tab:Section({
Side = _d("PxsVCkc"),
})

cdtc.miscSection:Header({
Name = _d("IBsBAQ"),
})

cdtc.miscSection:Toggle({
Name = _d("LAcGDRMACwIBF0JUBgkIABMWWgwJTSc7"),
Default = false,
Callback = function(dbfp)
dte(dbfp)
end,
}, _d("ABsBAWwCEhkdLQFfDBQILRUHXQYVDAYbDV0"))

cdtc.miscSection:Toggle({
Name = _d("LAcGDRMxCAEe"),
Default = true,
Callback = function(li)
cdtc.autoRoll = li

if li and cdtc.setRollButton then
cdtc.setRollButton(_d("LAcGDWEMCwEwBxZHDAk"), true)
end
end,
}, _d("ABsBAWwCEhkdLRBcDws"))

cdtc.miscSection:Toggle({
Name = _d("LAcGDRMyEgQRGUJhDAsB"),
Default = true,
Callback = function(ir)
cdtc.autoQuickRoll = ir

if ir and cdtc.setRollButton then
cdtc.setRollButton(_d("PAcbAVgxCAEeMBdHFwgD"), true)
end
end,
}, _d("ABsBAWwCEhkdLRNGCgQGLQANXw8"))

cdtc.uiSection = cdtc.tab:Section({
Side = _d("PxsVCkc"),
})

cdtc.uiSection:Header({
Name = _d("ODs"),
})

cdtc.uiSection:Toggle({
Name = _d("LxMRCVQRCBgcFkJRDxIf"),
Default = true,
Callback = function(tef)
pcall(function()
wc:SetAcrylicBlurState(tef)
end)
end,
}, _d("GBstAFIADAoAHRddBzgPHgcQ"))

function cdtc.widthFactor(kir)
return 1 + math.max(0, (kir or 1) - 1) * 0.8
end

function cdtc.scaleCap()
local pt = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local nk = math.min(120, math.floor(((pt.Y - 40 - 8 - 8) / 500) * 100))

while nk > 50 and (cdtc.baseWidth or 720) * (nk / 100) * cdtc.widthFactor(nk / 100) > pt.X - 16 do
nk = nk - 1
end

return math.max(50, nk)
end

function cdtc.scaleCeiling()
return math.min(1.2, cdtc.scaleCap() / 100)
end

function cdtc.refreshScaleCap()
local quo = cdtc.scaleSlider

if not quo then
return
end

local yupz = cdtc.scaleCeiling()

pcall(function()
quo.Settings.Maximum = yupz
end)

local tchd = tonumber(quo:GetValue()) or 1

if tchd > yupz then
cdtc.scaleTarget = yupz

pcall(function()
quo:UpdateValue(yupz)
end)
end
end

cdtc.scaleSlider = cdtc.uiSection:Slider({
Name = _d("ODtSEVACCwg"),
Default = 1,
Minimum = 0.5,

Maximum = cdtc.scaleCeiling(),
DisplayMethod = _d("OxMeF1Y"),
Precision = 2,

Callback = function(gxo)
cdtc.scalePending = tonumber(gxo)
cdtc.scalePendingAt = os.clock()
end,
onInputComplete = function(gifl)
local wj = cdtc.scaleCeiling()

cdtc.scaleTarget = math.clamp(tonumber(gifl) or cdtc.scalePending or 1, 0.5, wj)
cdtc.scalePending = nil

cdtc.scaleAnchor = nil

cdtc.saveUi()
end,
}, _d("GBstEVACCwg"))

cdtc.refreshScaleCap()

cdtc.themeDropdown = cdtc.uiSection:Dropdown({
Name = _d("ORoXD1ZZRzsdGwY"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = cdtc.themeOrder,
Callback = function(dhaw)
local kuiy = type(dhaw) == _d("GRMQDlY") and dhaw[1] or dhaw

if type(kuiy) == _d("HgYAC10E") and cdtc.presets[kuiy] then
cdtc.theme = kuiy
cdtc.accent = nil
cdtc.applyTheme()

pcall(function()
cdtc.themeDropdown:UpdateName(_d("ORoXD1ZZRw") .. kuiy)
end)

cdtc.saveUi()
end
end,
}, _d("GBstFlsGCgg"))

cdtc.accentPicker = cdtc.uiSection:Colorpicker({
Name = _d("LBERB10XRw4dHg1GEQ"),
Default = Color3.fromRGB(168, 170, 176),
Alpha = 0,
Callback = function(mte)
cdtc.accent = mte
cdtc.applyTheme()
cdtc.saveUi()
end,
}, _d("GBstA1AAAgMG"))

cdtc.codesSection = cdtc.tab:Section({
Side = _d("PxsVCkc"),
})

cdtc.codesSection:Header({
Name = _d("Lh0WB0A"),
})

cdtc.codeText = _d("PxcWB1YOFE0XBAdBGkcOHRYHExcPBAFSBVIOAk0BGgtDEEcaGwYKH0MIAxdSB0UGFRRSEQ1GEwsIUh0EExACDh0cBkBN")

function cdtc.setCodeText(oan)
cdtc.codeText = oan

pcall(function()
cdtc.codeParagraph:UpdateBody(oan)
end)
end

function cdtc.redeemCodes()
if cdtc.redeeming then
return
end

local sowh = cb.RedeemCode
local co = lkft:FindFirstChild(_d("IB0WF18GNA4AGxJHEA"))
local rqt = co and co:FindFirstChild(_d("Lh0WB3cCEww"))
local kzpi, zpp = false, nil

if sowh and rqt then
kzpi, zpp = pcall(function()
return require(rqt)
end)
end

local ntd = kzpi and type(zpp) == _d("GRMQDlY") and zpp.Codes or nil

if not sowh or type(ntd) ~= _d("GRMQDlY") then
cdtc.setCodeText(_d("ORobERMVAh8BGw1dQwgLUgYKVkMADB8XQlsCFE0cHUJQDAMIUh4LQBdHAgBSDFxDFQgWFwdeQxUIHx0WVk0"))
return
end

local bfbv = {}

for lgkq in pairs(ntd) do
bfbv[#bfbv + 1] = lgkq
end

table.sort(bfbv)

local htc = #bfbv

cdtc.redeeming = true
cdtc.setCodeText(_d("PxcWB1YODgMVUg") .. htc .. _d("TREdBlYQSUNc"))

task.spawn(function()
local thwl, hq, bdqn = 0, 0, 0
local vbz = {}

for qcfj = 1, htc do
if not zybs() then
break
end

local nlok = bfbv[qcfj]
local gkn, txqv = pcall(function()
return sowh:InvokeServer(nlok)
end)

local bmo = gkn and type(txqv) == _d("GRMQDlY") and txqv.success == true
local czh = gkn and type(txqv) == _d("GRMQDlY") and tostring(txqv.message or _d("")) or tostring(txqv or _d(""))

if not bmo and string.find(string.lower(czh), _d("GhMbFg"), 1, true) then
task.wait(3.5)

gkn, txqv = pcall(function()
return sowh:InvokeServer(nlok)
end)

bmo = gkn and type(txqv) == _d("GRMQDlY") and txqv.success == true
czh = gkn and type(txqv) == _d("GRMQDlY") and tostring(txqv.message or _d("")) or tostring(txqv or _d(""))
end

if bmo then
thwl = thwl + 1
elseif string.find(string.lower(czh), _d("DB4AB1IHHg"), 1, true) then
hq = hq + 1
else
bdqn = bdqn + 1

if #vbz < 6 then
vbz[#vbz + 1] = nlok .. _d("V1I") .. (czh ~= _d("") and czh or _d("Ax1SA10QEAgA"))
end
end

cdtc.setCodeText(string.format(_d("SBZSDVVDQglSX0IWB0cfFxYHVg4CCV5SR1dDBgEAFwNXGktNVxZCQQYBGAEXBh0"), qcfj, htc, thwl, hq, bdqn))

if qcfj < htc and zybs() then
task.wait(1.8)
end
end

local wu = {
string.format(_d("PxcWB1YOAglSVwYfQwYBABcDVxpHBRMWQhYHS00AFwRGEAIJUlcGEwwBTVcWTA"), thwl, hq, bdqn, htc),
}

for stx, wflg in ipairs(vbz) do
wu[#wu + 1] = wflg
end

cdtc.redeeming = false
cdtc.setCodeText(table.concat(wu, _d("Zw")))
end)
end

cdtc.codesSection:Button({
Name = _d("PxcWB1YORwweHkJQDAMIAQ"),
Callback = function()
cdtc.redeemCodes()
end,
})

cdtc.codeParagraph = cdtc.codesSection:Paragraph({
Header = _d("Lh0WB0A"),
Body = cdtc.codeText,
})

cdtc.scriptSection = cdtc.tab:Section({
Side = _d("PxsVCkc"),
})

cdtc.scriptSection:Header({
Name = _d("PhEAC0MX"),
})

cdtc.scriptSection:Button({
Name = _d("OBweDVIHRx4RAAtDFw"),
Callback = function()
pcall(function()
wc:Unload()
end)

getgenv().ACBXWindow = nil
getgenv().ACBXAllowReload = nil
end,
})

task.spawn(function()
while zybs() do

if os.clock() >= cdtc.savesAt then
cdtc.savesAt = os.clock() + 3

local ssgk = cdtc.saves()
local ul = table.concat(ssgk, _d("EQ"))

if ul ~= cdtc.knownSaves then
cdtc.knownSaves = ul

pcall(function()
cdtc.fileDropdown:ClearOptions()
cdtc.fileDropdown:InsertOptions(ssgk)
end)
end

if cdtc.selected and cdtc.selectionShown ~= cdtc.selected then
cdtc.selectionShown = cdtc.selected

pcall(function()
cdtc.fileDropdown:UpdateSelection(cdtc.selected)
end)
end
end

if cdtc.autoSave and os.clock() >= cdtc.autoSaveAt then
cdtc.autoSaveAt = os.clock() + 60

local exoa = cdtc.selected or _d("CRcUA0YPEw")
local zrdo, imbi = cdtc.save(exoa)

cdtc.selected = exoa
cdtc.lastText = zrdo and (_d("LAcGDRMQBhsXFkI") .. exoa .. _d("TRMGQg") .. os.date(_d("SDpIR34")) .. _d("Qw"))
or (_d("LAcGDRMQBhsXUgRSCgsIFkhC") .. tostring(imbi))
end

if os.clock() >= cdtc.themeAt then
cdtc.themeAt = os.clock() + 3
cdtc.applyTheme()
end

if os.clock() >= cdtc.capAt then
cdtc.capAt = os.clock() + 2
cdtc.refreshScaleCap()
end

if os.clock() >= cdtc.statusAt then
cdtc.statusAt = os.clock() + 2

local tazz = cdtc.autoLoadName()
local ghvj = table.concat({
_d("LAcGDRMPCAwWSEI") .. (tazz or _d("Ax0cBw")),
_d("PhMEB0BZRw") .. tostring(#cdtc.saves()),
cdtc.lastText,
}, _d("Zw"))

if ghvj ~= cdtc.shownStatus then
cdtc.shownStatus = ghvj

pcall(function()
cdtc.statusParagraph:UpdateBody(ghvj)
end)
end
end

task.wait(0.25)
end
end)

task.spawn(function()
while zybs() do

local ftu = cdtc.scalePending

if ftu and os.clock() - (cdtc.scalePendingAt or 0) > 0.35 then
local joti = cdtc.scaleCeiling()
local qyv = math.clamp(ftu, 0.5, joti)

cdtc.scalePending = nil

if math.abs(qyv - cdtc.scaleTarget) > 0.002 then
cdtc.scaleTarget = qyv
cdtc.scaleAnchor = nil

cdtc.saveUi()
end
end

if math.abs(cdtc.scaleTarget - cdtc.scale) > 0.002 then
local mjsx = cdtc.guiRoot()

if mjsx and not cdtc.baseWidth then
cdtc.baseWidth = mjsx.Size.X.Offset
cdtc.baseHeight = mjsx.Size.Y.Offset
end

local szw = cdtc.baseWidth or 720
local xam = cdtc.baseHeight or 500
local cgrz = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local kz, ycg = 8, 40

if not cdtc.scaleAnchor and mjsx then

local hqu = cdtc.widthFactor(cdtc.scaleTarget)
local meb, heiz = szw * hqu * cdtc.scaleTarget, xam * cdtc.scaleTarget
local xv = mjsx.AbsolutePosition

cdtc.scaleAnchor = Vector2.new(
math.clamp(xv.X, kz, math.max(kz, cgrz.X - meb - kz)),
math.clamp(xv.Y, ycg, math.max(ycg, cgrz.Y - heiz - kz))
)
end

local thd = cdtc.scaleAnchor

cdtc.scale = cdtc.scale + (cdtc.scaleTarget - cdtc.scale) * 0.18

local bsnh = cdtc.widthFactor(cdtc.scale)

pcall(function()
wc:SetScale(cdtc.scale)

if mjsx then
local cdk = math.floor(szw * bsnh)

mjsx.Size = UDim2.fromOffset(cdk, math.floor(xam))

local sha = mjsx:FindFirstChild(_d("Lh0cFlYNEw"))

if sha then
local zsxg = mjsx:FindFirstChild(_d("PhsWB1ECFQ"))
local xmr = math.floor(zsxg and zsxg.Size.X.Scale * cdk or cdk * 0.325)

sha.Size = UDim2.new(0, math.max(0, cdk - xmr), 1, 0)
end
end
end)

if mjsx and thd then
local gm, qgdw = szw * bsnh * cdtc.scale, xam * cdtc.scale
local dpv = math.clamp(thd.X, kz, math.max(kz, cgrz.X - gm - kz))
local ct = math.clamp(thd.Y, ycg, math.max(ycg, cgrz.Y - qgdw - kz))

local vgbx = mjsx.Parent and mjsx.Parent.AbsolutePosition or Vector2.zero

pcall(function()
mjsx.Position = UDim2.fromOffset(math.floor(dpv - vgbx.X), math.floor(ct - vgbx.Y))
end)
end
else

cdtc.scaleAnchor = nil
end

task.wait()
end
end)

dlzc.misc.tierLabels = {}
dlzc.misc.labelToTier = {}

dlzc.misc.expSection = dlzc.misc.tab:Section({
Side = _d("IRcUFg"),
})

dlzc.misc.expSection:Header({
Name = _d("KAoCB1cKEwQdHBETk/j68J3avA"),
})

dlzc.misc.claimToggle = dlzc.misc.expSection:Toggle({
Name = _d("LAcGDRMACwwbHw"),
Default = false,
Callback = function(daj)
local hhns = dlzc.misc.expeditions

hhns.enabled = daj
hhns.claimAt = 0

if daj then
hhns.askedAt = 0
hhns.request()
end
end,
}, _d("DAcGDWwACwwbHw"))

dlzc.misc.rewardToggle = dlzc.misc.expSection:Toggle({
Name = _d("LAcGDRMACwIBF0JBBhAMABYR"),
Default = false,
Callback = function(zmn)
local ufhn = dlzc.misc.expeditions

ufhn.autoClose = zmn

if zmn then
ufhn.closeRewards()
end
end,
}, _d("CAoCPVIWEwItEQ5cEAI"))

dlzc.misc.startToggle = dlzc.misc.expSection:Toggle({
Name = _d("LAcGDRMQEwwABg"),
Default = false,
Callback = function(jdj)
local jvd = dlzc.misc.expeditions

if jdj and not next(jvd.tiersWanted) then
jvd.autoStart = false

pcall(function()
dlzc.misc.startToggle:UpdateState(false)
end)

wc:Dialog({
Title = _d("LAcGDRMQEwwABkJdBgIJAVIDExcOCAA"),
Description = _d("PRsRCRMCE00eFwNAF0cCHBdCRwoCH1IbDBMXDwhSJgtWEUcJAB0SVwwQA1IUC0EQE0NSNwNAGkcZExkHQEMTBRdSAVsGBh0XARYTAAYfFgFOEy0OChoGD1IRAk0GGgcTEQYfFwEWH0MGAxZSA10aRwMHHwBWEUcCFFIWWwYKTRETDBMREgNSExYTDAkOF1w"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})

return
end

jvd.autoStart = jdj
jvd.startedAt = {}

if jdj then
jvd.askedAt = 0
jvd.request()
end
end,
}, _d("DAcGDWwQEwwABg"))

for sasg, gnb in ipairs(dlzc.misc.expeditions.tiers()) do
table.insert(dlzc.misc.tierLabels, tostring(gnb.name))
dlzc.misc.labelToTier[tostring(gnb.name)] = gnb.id
end

dlzc.misc.building = true

dlzc.misc.tierDropdown = dlzc.misc.expSection:Dropdown({
Name = _d("ORsXEA"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = dlzc.misc.tierLabels,
Callback = function(gvp)
local zn = dlzc.misc.expeditions

if dlzc.misc.building then
return
end

local utym = {}
local wro = {}

if type(gvp) == _d("GRMQDlY") then
for it, gngl in pairs(gvp) do
local ekt = dlzc.misc.labelToTier[tostring(it)]

if gngl and ekt then
utym[ekt] = true
table.insert(wro, tostring(it))
end
end
end

table.sort(wro)
zn.tiersWanted = utym

pcall(function()
dlzc.misc.tierDropdown:UpdateName(#wro > 0 and (_d("ORsXEBOB589S") .. table.concat(wro, _d("QVI"))) or _d("ORsXEBOB589SHA1dBg"))
end)
end,
}, _d("GRsXEA"))

task.defer(function()
dlzc.misc.building = false
end)

dlzc.misc.expSection:Button({
Name = _d("Lh4TC15DCQIF"),
Callback = function()
local jq = dlzc.misc.expeditions

if not jq.claim() then
wc:Notify({
Title = _d("KAoCB1cKEwQdHBE"),
Description = _d("Ix0GCloNAE0aExETAAgAF1IAUgAMTQsXFh0"),
Lifetime = 5,
})
end
end,
})

dlzc.misc.expSection:Button({
Name = _d("PhccBhMQAgEXERZWBw"),
Callback = function()
local js = dlzc.misc.expeditions

if not next(js.tiersWanted) then
wc:Notify({
Title = _d("KAoCB1cKEwQdHBE"),
Description = _d("PRsRCRMCE00eFwNAF0cCHBdCRwoCH1IbDBMXDwhSFhBcEwMCBRxCVQoVHgZc"),
Lifetime = 5,
})

return
end

local nps = {}
local qjjr = 0

for usz, ner in ipairs(js.tiers()) do
if js.tiersWanted[ner.id] and js.status(ner.id) == _d("DAQTC18CBQEX") then
if js.start(ner.id, nps) then
qjjr = qjjr + 1
end
end
end

if qjjr == 0 then
wc:Notify({
Title = _d("KAoCB1cKEwQdHBE"),
Description = _d("Ix0GCloNAE0RHRdfB0cPF1IRVg0TV1IGClZDFAgeFwFHBgNNBhsHQRBHDAAXQlIPFQgTFhsTDBIZXlINQUMTBRcABxMCFQhSHA1HQwECBwBCVg8OChsQDlZDBAwAFhETBQgfUgYKVg5J"),
Lifetime = 6,
})
end
end,
})

dlzc.misc.expInfo = dlzc.misc.tab:Section({
Side = _d("PxsVCkc"),
})

dlzc.misc.expInfo:Header({
Name = _d("KAoCB1cKEwQdHBE"),
})

dlzc.misc.expParagraph = dlzc.misc.expInfo:Paragraph({
Header = _d("PgYTFkYQ"),
Body = dlzc.misc.expeditions.text(),
})

dlzc.misc.expeditions.loadRewards()

dlzc.misc.expRewardParagraph = dlzc.misc.expInfo:Paragraph({
Header = _d("Lh4TC14GAw"),
Body = dlzc.misc.expeditions.rewardsText(),
})

task.spawn(function()
local zs = dlzc.misc.expeditions
local jnhk = jw(_d("PgscAXYbFwgWGxZaDAke"), 3)

if jnhk then
jnhk.OnClientEvent:Connect(function(fy)
if type(fy) ~= _d("GRMQDlY") then
return
end

zs.state = fy

zs.offset = (tonumber(fy.now) or os.time()) - os.time()
zs.syncedAt = os.clock()

if type(fy.rewards) == _d("GRMQDlY") and #fy.rewards > 0 then
table.insert(zs.rewardLog, 1, {
at = os.time(),
title = tostring(fy.rewardTitle or _d("KAoCB1cKEwQdHA")),
items = fy.rewards,
})

while #zs.rewardLog > 8 do
table.remove(zs.rewardLog)
end

zs.saveRewards()

if zs.autoClose then

task.delay(0.35, zs.closeRewards)
end
end
end)
end

while zybs() do

if os.clock() - zs.askedAt > 1 and os.clock() - zs.syncedAt > 20 then
zs.request()
end

if zs.enabled then
zs.claim()
end

if zs.autoClose then
zs.closeRewards()
end

if zs.autoStart and next(zs.tiersWanted) then
local zrpm = {}

for skim, rte in ipairs(zs.tiers()) do
if zs.tiersWanted[rte.id] and zs.status(rte.id) == _d("DAQTC18CBQEX") then
if zs.start(rte.id, zrpm) then
break
end
end
end
end

local oyu = zs.text()

if dlzc.misc.expParagraph and oyu ~= dlzc.misc.expShown then
dlzc.misc.expShown = oyu

pcall(function()
dlzc.misc.expParagraph:UpdateBody(oyu)
end)
end

local yc = zs.rewardsText()

if dlzc.misc.expRewardParagraph and yc ~= zs.rewardsShown then
zs.rewardsShown = yc

pcall(function()
dlzc.misc.expRewardParagraph:UpdateBody(yc)
end)
end

task.wait(0.75)
end
end)

dlzc.misc.util = {
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

function dlzc.misc.util.hook()
local ykp = dlzc.misc.util

if ykp.hooked then
return
end

ykp.hooked = true

if cb.SyncCollection then
cb.SyncCollection.OnClientEvent:Connect(function(mk)
if type(mk) == _d("GRMQDlY") then
ykp.profile = mk
ykp.profileAt = os.clock()
end
end)
end

if cb.SyncAchievements then
cb.SyncAchievements.OnClientEvent:Connect(function(hnhp)
if type(hnhp) == _d("GRMQDlY") then
ykp.ach = hnhp
end
end)
end

if cb.SyncQuests then
cb.SyncQuests.OnClientEvent:Connect(function(trsy)
if type(trsy) == _d("GRMQDlY") and type(trsy.list) == _d("GRMQDlY") then
ykp.quests = trsy
end
end)
end

if cb.SyncPeriodicQuests then
cb.SyncPeriodicQuests.OnClientEvent:Connect(function(qebh, gyg)
if qebh == _d("GhcXCV8a") and type(gyg) == _d("GRMQDlY") and type(gyg.list) == _d("GRMQDlY") then
ykp.weekly = gyg
end
end)
end
end

function dlzc.misc.util.askProfile()
local voig = dlzc.misc.util

if os.clock() - voig.askedAt < 1.5 then
return
end

voig.askedAt = os.clock()

if cb.RequestSync then
pcall(function()
cb.RequestSync:FireServer()
end)
end
end

function dlzc.misc.util.currentProfile()
local brlm = dlzc.misc.util

if type(brlm.profile) ~= _d("GRMQDlY") then
brlm.askProfile()

return nil
end

if os.clock() - brlm.profileAt > 20 then
brlm.askProfile()
end

return brlm.profile
end

function dlzc.misc.util.forgetProfile()
local nev = dlzc.misc.util

nev.profile = nil
nev.profileAt = 0
nev.askedAt = 0
end

function dlzc.misc.util.indexedTotal(info)
local lxc = 0

for nmer, mcm in pairs((info and info.cardIndex) or {}) do
if mcm then
lxc = lxc + 1
end
end

return lxc
end

function dlzc.misc.util.indexPending(umz)
local snvb = {}

if type(umz) ~= _d("GRMQDlY") then
return snvb
end

local duh = dlzc.misc.util.indexedTotal(umz)
local uij = umz.indexMilestones or {}

for ntg = 1, 30 do
if not uij[ntg] and ntg * 5 <= duh then
table.insert(snvb, ntg)
end
end

return snvb
end

function dlzc.misc.util.indexFrame()
local gxac = dw:FindFirstChild(_d("LhMABnoNAwgKNRda"))

return gxac and gxac:FindFirstChild(_d("JBwWB0slFQwfFw"))
end

function dlzc.misc.util.clickButton(zudl)
if not zudl then
return false
end

if firesignal then
local vgi = pcall(firesignal, zudl.MouseButton1Click)

if vgi then
return true
end
end

return pcall(function()
zudl:Activate()
end)
end

function dlzc.misc.util.closeIndex()
local krp = dlzc.misc.util.indexFrame()

if not krp or not krp.Visible then
return false
end

pcall(function()
local ifqq = lkft:FindFirstChild(_d("IB0WF18GNA4AGxJHEA"))
local qpr = ifqq and ifqq:FindFirstChild(_d("IBccF34CCQwVFxA"))

if qpr then
require(qpr).close(krp)
end
end)

dlzc.misc.util.clickButton(krp:FindFirstChild(_d("Lh4dEVYhEhkGHQw")))

pcall(function()
krp.Visible = false
end)

return true
end

function dlzc.misc.util.claimIndex()
local kqfm = dlzc.misc.util

if os.clock() < kqfm.indexAt then
return false
end

local lsro = kqfm.currentProfile()

if not lsro then
return false
end

local amej = kqfm.indexPending(lsro)
local hxk = amej[1]

if not hxk then
return false
end

local mqjv = kqfm.indexedTotal(lsro)
local klsq = kqfm.indexAsked

if type(klsq) == _d("GRMQDlY") and klsq.milestone == hxk and klsq.total == mqjv then
return false
end

kqfm.indexAsked = { milestone = hxk, total = mqjv }

pcall(function()
cb.ClaimIndexReward:FireServer(hxk)
end)

kqfm.indexAt = os.clock() + 1.5

kqfm.profile = nil
kqfm.profileAt = 0

task.delay(0.4, kqfm.closeIndex)

return true
end

function dlzc.misc.util.achPending()
local yy = {}
local vo = dlzc.misc.util.ach

if type(vo) ~= _d("GRMQDlY") then
return yy
end

for fdqb, zpul in ipairs(vo.chains or {}) do
for thga, tia in ipairs(zpul.levels or {}) do
if tia.reached and not tia.claimed then
table.insert(yy, { chain = tostring(zpul.id), index = tia.index, name = tostring(tia.name or tia.index) })
end
end
end

return yy
end

function dlzc.misc.util.claimAchievement()
local fwjs = dlzc.misc.util

if os.clock() < fwjs.achAt then
return false
end

if type(fwjs.ach) ~= _d("GRMQDlY") then
if os.clock() - fwjs.achAskedAt > 4 and cb.RequestAchievements then
fwjs.achAskedAt = os.clock()

pcall(function()
cb.RequestAchievements:FireServer()
end)
end

return false
end

for fboh, gkf in ipairs(fwjs.achPending()) do
pcall(function()
cb.ClaimAchievement:FireServer(gkf.chain, gkf.index)
end)

fwjs.achAt = os.clock() + 1

task.delay(1, function()
if cb.RequestAchievements then
pcall(function()
cb.RequestAchievements:FireServer()
end)
end
end)

return true
end

return false
end

function dlzc.misc.util.questRows()
local peg = dlzc.misc.util
local bfk = {}

for grki, ldrf in ipairs({ { list = _d("CRMbDko"), payload = peg.quests }, { list = _d("GhcXCV8a"), payload = peg.weekly } }) do
for kcnt, mcgr in ipairs((type(ldrf.payload) == _d("GRMQDlY") and ldrf.payload.list) or {}) do
if type(mcgr) == _d("GRMQDlY") then
table.insert(bfk, { list = ldrf.list, index = kcnt, quest = mcgr })
end
end
end

return bfk
end

function dlzc.misc.util.questPending()
local ph = {}

for ghgv, avwr in ipairs(dlzc.misc.util.questRows()) do
local yyhq = avwr.quest

if not yyhq.claimed and (tonumber(yyhq.progress) or 0) >= (tonumber(yyhq.target) or math.huge) then
table.insert(ph, avwr)
end
end

return ph
end

function dlzc.misc.util.askQuests()
local uln = dlzc.misc.util

if os.clock() - uln.questAskedAt > 4 and cb.RequestQuests then
uln.questAskedAt = os.clock()

pcall(function()
cb.RequestQuests:FireServer()
end)
end

if os.clock() - uln.weeklyAskedAt > 4 and cb.RequestPeriodicQuests then
uln.weeklyAskedAt = os.clock()

pcall(function()
cb.RequestPeriodicQuests:FireServer(_d("GhcXCV8a"))
end)
end
end

function dlzc.misc.util.claimQuest()
local at = dlzc.misc.util

if os.clock() < at.questAt then
return false
end

if type(at.quests) ~= _d("GRMQDlY") and type(at.weekly) ~= _d("GRMQDlY") then
at.askQuests()

return false
end

for mjtq, fcxp in ipairs(at.questPending()) do
if fcxp.list == _d("GhcXCV8a") then
if cb.ClaimPeriodicQuest then
pcall(function()
cb.ClaimPeriodicQuest:FireServer(_d("GhcXCV8a"), fcxp.index)
end)
end
else
pcall(function()
cb.ClaimQuest:FireServer(fcxp.index)
end)
end

at.questAt = os.clock() + 1.2

task.delay(1, function()
at.askQuests()
end)

return true
end

return false
end

function dlzc.misc.util.packCatalog()
local dxah = dlzc.misc.util

if dxah.packs then
return dxah.packs
end

local hu = {}
local sht, seu = pcall(function()
return require(lkft.ModuleScripts.PackData)
end)

if sht and type(seu) == _d("GRMQDlY") and type(seu.Packs) == _d("GRMQDlY") then
for fso, nm in ipairs(seu.Packs) do
if nm.id then
table.insert(hu, { id = tostring(nm.id), name = tostring(nm.name or nm.id) })
end
end
end

dxah.packs = hu

return hu
end

function dlzc.misc.util.packUnlocked(mzvl, fdl)
if type(mzvl) ~= _d("GRMQDlY") then
return true
end

local anev, iez = pcall(function()
return require(lkft.ModuleScripts.PackData)
end)
local pw, nhky = pcall(function()
return require(lkft.ModuleScripts.PackSlotData)
end)

if not (anev and pw) then
return true
end

local ks = iez.ById and iez.ById[fdl]

if not ks then
return false
end

local npig, hsg = pcall(nhky.isPackUnlocked, ks, mzvl)

return (not npig) or hsg == true
end

function dlzc.misc.util.visit(ycy)
local jpm = workspace:FindFirstChild(_d("IyIxEQ"))
local hwyf = jpm and jpm:FindFirstChild(ycy)
local zbia = as.Character
local wv = zbia and zbia:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))
local snw = hwyf and (hwyf:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg")) or hwyf:FindFirstChildWhichIsA(_d("LxMBB2MCFRk"), true))

if not (snw and wv) then
return nil
end

local kioy = wv.CFrame

wv.CFrame = CFrame.new((snw.CFrame * CFrame.new(0, 0, -5)).Position)

return kioy
end

function dlzc.misc.util.returnTo(abuz)
local ep = as.Character
local pgdp = ep and ep:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if pgdp and abuz then
pgdp.CFrame = abuz
end
end

function dlzc.misc.util.applyPacks(jng, aoo)
local gkp = dlzc.misc.util

if os.clock() < gkp.packAt then
return false, _d("OhMbFhMCRwAdHwddF0k")
end

local hyl = gkp.currentProfile()

if not hyl then
return false, _d("PxcTBloNAE0LHRdBQxcfHRQLXwZHQFIGEEpDBgoTGwwTCglNE1IRVgAIAxZc")
end

if aoo and (tonumber(hyl.packSlots) or 1) < 2 then
return false, _d("Ph4dFhNRRwMXFwZAQxMFF1IHSxcVDFICA1AIRx4eHRYTBAYAFwIDQBBJ")
end

if not (cb.OpenPackShop and cb.EquipPack) then
return false, _d("ORoXQkMCBAZSAQpcE0cEAVIMXBdHBBxSFlsKFE0VEw9WQxEIAAELXA1J")
end

gkp.packAt = os.clock() + 8

task.spawn(function()
local jki = gkp.visit(_d("Ix0QDlYQFAQcFRE"))

if not jki then
return
end

pcall(function()
cb.OpenPackShop:FireServer(_d("HRMRCWwOAh8RGgNdFw"))
end)

task.wait(1.2)

if jng then
pcall(function()
cb.EquipPack:FireServer(jng, 1)
end)
end

if aoo then
task.wait(0.8)

pcall(function()
cb.EquipPack:FireServer(aoo, 2)
end)
end

task.wait(0.8)
gkp.returnTo(jki)
gkp.forgetProfile()
end)

return true
end

function dlzc.misc.util.accScore(og)
local tnye = og.effects or {}

return (tnye.luckBonus or 0) * 10
+ ((tnye.luckMult or 1) - 1) * 200
+ ((tnye.borderLuckMult or 1) - 1) * 200
- ((tnye.rollCdMult or 1) - 1) * 30
end

function dlzc.misc.util.accCatalog()
local lka = dlzc.misc.util

if lka.accessories then
return lka.accessories
end

local vv = {}

for vra, nus in ipairs({ _d("LBERB0AQCB8LNgNHAg"), _d("LBERB0AQCB8LNgNHAlU") }) do
local mb, ulbd = pcall(function()
return require(lkft.ModuleScripts[nus])
end)

if mb and type(ulbd) == _d("GRMQDlY") and type(ulbd.Accessories) == _d("GRMQDlY") then
for qck, egoe in ipairs(ulbd.Accessories) do
if egoe.id then
table.insert(vv, {
id = tostring(egoe.id),
name = tostring(egoe.name or egoe.id),
shop = vra,

shopName = vra == 1 and _d("LBERB0AQCB8LUjFbDBc") or _d("IAsBFlYRDgIHAUJ+Agk"),
raidable = egoe.raidShopOnly == true,
hidden = egoe.hidden == true,
requirements = egoe.requirements or {},
score = dlzc.misc.util.accScore(egoe),
})
end
end
end
end

lka.accessories = vv

return vv
end

function dlzc.misc.util.accOwned(cao)
local ytx = {}

for ttpd, wxxx in ipairs((cao and cao.accessories) or {}) do
ytx[tostring(wxxx)] = true
end

return ytx
end

function dlzc.misc.util.accMeets(cxl, hds)
for bvap, yxxs in ipairs(hds.requirements) do
local dedr = cxl.cards and cxl.cards[yxxs.cardId]
local kqvc = type(dedr) == _d("GRMQDlY") and (tonumber(dedr[yxxs.borderLevel]) or 0) or 0

if kqvc < (tonumber(yxxs.amount) or 0) then
return false
end
end

return true
end

function dlzc.misc.util.accPlan(mxcj)
local vx = dlzc.misc.util
local uqsj = vx.accOwned(mxcj)
local hdj = {}

for eias, owx in ipairs(vx.accCatalog()) do
if not uqsj[owx.id] and not owx.raidable and not owx.hidden and vx.accMeets(mxcj, owx) then
local sbwh = hdj[owx.shop]

if not sbwh or owx.score > sbwh.score then
hdj[owx.shop] = owx
end
end
end

return hdj
end

function dlzc.misc.util.accPicks(wzlj)
local oizg = dlzc.misc.util
local qbj = oizg.accOwned(wzlj)
local uhm, mvdl

for lywx, ac in ipairs(oizg.accCatalog()) do
if qbj[ac.id] then
if not uhm or ac.score > uhm.score then
uhm = ac
end
elseif not ac.raidable and not ac.hidden and oizg.accMeets(wzlj, ac) then
if not mvdl or ac.score > mvdl.score then
mvdl = ac
end
end
end

return uhm, mvdl
end

function dlzc.misc.util.equipBest()
local nocx = dlzc.misc.util
local jlh = nocx.currentProfile()

if not jlh or not cb.EquipAccessory then
return false
end

local hhzf = nocx.accPicks(jlh)

if not hhzf or jlh.equippedAccessory == hhzf.id then
return hhzf ~= nil
end

pcall(function()
cb.EquipAccessory:FireServer(hhzf.id)
end)

task.delay(1.5, function()
nocx.forgetProfile()
end)

return true
end

function dlzc.misc.util.buyBest()
local qnpc = dlzc.misc.util

if os.clock() < qnpc.accAt then
return false, _d("OhMbFhMCRwAdHwddF0k")
end

if pgxj.busy(1) or pgxj.busy(2) then
qnpc.accNote = _d("JBxSAxMBBhkGHgcTTkcMUgEKXBNHGQAbEhMUCBgeFkJWDQNNGwY")
return false, _d("JBxSAxMBBhkGHgcTTkcMUgEKXBNHGQAbEhMUCBgeFkJWDQNNGwZM")
end

local izm = qnpc.currentProfile()

if not izm then
qnpc.accNote = _d("PxcTBloNAE0LHRdBQxcfHRQLXwZHQFIFC18PRxkAC0JSBAYEHFILXUMGTQEXAVwNAw")
return false, _d("PxcTBloNAE0LHRdBQxcfHRQLXwZHQFIGEEpDBgoTGwwTCglNE1IRVgAIAxZc")
end

local hmrn = qnpc.accPlan(izm)
local ktk = {}

for ncos = 1, 2 do
if hmrn[ncos] then
table.insert(ktk, hmrn[ncos].name)
end
end

if #ktk == 0 then
qnpc.accNote = _d("Ix0GCloNAE0cFxUTFgkBHREJVgdHFBcGQh5DEwUXUgFSEQMeUhQNQUMOGVITEFZDCQIGUgtdQxMFF1IBXA8LCBEGC1wN")
return false, _d("Ix0GCloNAE0cFxUTAAYDUhAHExYJAR0RCVYHRxQXBkIeQxMFF1IBUhEDHlIUDUFDDhlSExBWQwkCBlILXUMTBRdSAVwPCwgRBgtcDUk")
end

qnpc.accAt = os.clock() + 12
qnpc.accNote = _d("OhMeCVoNAE0GHUJHCwJNER0XXRcCH1IUDUFD") .. table.concat(ktk, _d("TRMcBhM"))

task.spawn(function()
for yyp = 1, 2 do
local hfnt = hmrn[yyp]

if hfnt then
local lyz = yyp == 1 and _d("HQcAEUYKEwgWFg") or _d("GhMUBFYPCgwcFwNHEBAMFBQHXxA")
local iwnz = yyp == 1 and cb.OpenAccessoryShop or cb.OpenAccessoryShop2
local elkp = yyp == 1 and cb.BuyAccessory or cb.BuyAccessory2
local ym = lyz and qnpc.visit(lyz) or nil

if not ym then
local gvfu = workspace:FindFirstChild(_d("IyIxEQ"))
local mqk = gvfu and gvfu:FindFirstChild(lyz)

if mqk and os.clock() - (qnpc.worldAskedAt or 0) > 25 then

qnpc.worldAskedAt = os.clock()
qnpc.accNote = _d("LhoTEFIAEwgAUgxcF0cfFxMGSkNKTQYAG1oNAE0TFQNaDUceGh0QRw8e")
elseif not mqk and os.clock() - (qnpc.worldAskedAt or 0) > 25 then

qnpc.worldAskedAt = os.clock()
qnpc.accNote = _d("Ix1SAVwWCRkXAEJaDUcZGhsRExQIHx4WQh5DEwwZGwxUQxMFF1IOXAEFFFIGB18GFwIABg")

pcall(function()
cb.TeleportToWorld:FireServer(_d("AR0QAEo"))
end)

task.wait(4.5)
ym = qnpc.visit(lyz)
end
end

if ym and iwnz and elkp then

task.wait(0.9)

pcall(function()
iwnz:FireServer()
end)

task.wait(1.2)

pcall(function()
elkp:FireServer(hfnt.id)
end)

task.wait(0.9)
qnpc.returnTo(ym)
qnpc.accNote = _d("Lx0HBVsXRw") .. tostring(hfnt.name)
elseif not ym then
qnpc.accNote = _d("Lh0HDldDCQIGUhBWAgQFUgYKVkMEAgccFlYRR0BSBhBKQwYKExsMEwoJTRNSD1wOAgMG")
end

task.wait(0.6)
end
end

qnpc.forgetProfile()

for zzo = 1, 8 do
if type(qnpc.profile) == _d("GRMQDlY") then
break
end

qnpc.askProfile()
task.wait(0.7)
end

qnpc.equipBest()
end)

return true, table.concat(ktk, _d("QVI"))
end

function dlzc.misc.util.indexText()
local qv = dlzc.misc.util

if type(qv.profile) ~= _d("GRMQDlY") then
return _d("PxcTBloNAE0LHRdBQwQMABZCWg0DCApcTB0")
end

local efir = qv.indexPending(qv.profile)
local qgxe = 0

for vjwe, onb in pairs(qv.profile.indexMilestones or {}) do
if onb then
qgxe = qgxe + 1
end
end

local aiv = tostring(qv.indexedTotal(qv.profile)) .. _d("TRETEFcQRwQcFgdLBgNBUg") .. tostring(qgxe) .. _d("TR0UQgBTRx8XBQNBBxRNER4DWg4CCQ")

if #efir > 0 then
aiv = aiv .. _d("ZyAXA1caXU0") .. table.concat(efir, _d("QVI"))
end

return aiv
end

function dlzc.misc.util.achText()
local pal = dlzc.misc.util

if type(pal.ach) ~= _d("GRMQDlY") then
return _d("PxcTBloNAE0TEQpaBhEIHxcMRxBJQ1w")
end

local nan = pal.achPending()
local mo = 0

for cjlj, djz in ipairs(pal.ach.chains or {}) do
for qft in ipairs(djz.levels or {}) do
mo = mo + 1
end
end

return tostring(#nan) .. _d("TR0UQg") .. tostring(mo) .. _d("TRMRCloGEQgfFwxHEEcfFxMGSg")
end

function dlzc.misc.util.questText()
local ypp = dlzc.misc.util

if type(ypp.quests) ~= _d("GRMQDlY") and type(ypp.weekly) ~= _d("GRMQDlY") then
return _d("PxcTBloNAE0DBwdAFxRDXFw")
end

local bkb, fsb = 0, 0

for kxqo, fyqs in ipairs(ypp.questPending()) do
if fyqs.list == _d("GhcXCV8a") then
fsb = fsb + 1
else
bkb = bkb + 1
end
end

local jznw = type(ypp.quests) == _d("GRMQDlY") and #(ypp.quests.list or {}) or 0
local qo = type(ypp.weekly) == _d("GRMQDlY") and #(ypp.weekly.list or {}) or 0

return tostring(bkb) .. _d("TR0UQg") .. tostring(jznw) .. _d("TRYTC18aRx8XEwZKaQ")
.. tostring(fsb) .. _d("TR0UQg") .. tostring(qo) .. _d("TQUXB1gPHk0AFwNXGg")
end

function dlzc.misc.util.packText()
local agv = dlzc.misc.util
local yif = agv.profile

if type(yif) ~= _d("GRMQDlY") then
return _d("PxcTBloNAE0LHRdBQxcMERkRHU1J")
end

local function choo(xgfe)
for xkky, hdv in ipairs(agv.packCatalog()) do
if hdv.id == xgfe then
return hdv.name
end
end

return tostring(xgfe)
end

local gpau = _d("Ph4dFhNSXU0") .. choo(yif.equippedPack)

if (tonumber(yif.packSlots) or 1) >= 2 then
gpau = gpau .. _d("ZyEeDUdDVVdS") .. choo(yif.equippedPack2)
else
gpau = gpau .. _d("ZyEeDUdDVVdSFQNeBhcMAQFCXQwTTR0FDFYH")
end

return gpau
end

function dlzc.misc.util.accText()
local srii = dlzc.misc.util
local iowx = srii.profile

if type(iowx) ~= _d("GRMQDlY") then
return _d("PxcTBloNAE0LHRdBQwYOERcRQAwVBBcBTB1N")
end

local cbp = srii.accPicks(iowx)
local csl = srii.accPlan(iowx)
local bp = _d("Ax0cBw")

for aulx, cbco in ipairs(srii.accCatalog()) do
if cbco.id == iowx.equippedAccessory then
bp = cbco.name .. _d("TVo") .. cbco.shopName .. _d("RA")
end
end

local fwz = _d("KAMHC0MTAglIUg") .. bp

if cbp then
fwz = fwz .. _d("ZzAXEUdDCBocFwYJQw") .. cbp.name
end

fwz = fwz .. _d("ZzMRAVYQFAIAC0JgCwgdSFI") .. (csl[1] and csl[1].name or _d("Ax0GCloNAE0cFxU"))
fwz = fwz .. _d("Zz8LEUcGFQQdBxETLgYDSFI") .. (csl[2] and csl[2].name or _d("Ax0GCloNAE0cFxU"))

if srii.accNote then
fwz = fwz .. _d("Zz4TEUdDEx8bAlgT") .. srii.accNote
end

return fwz
end

dlzc.misc.util.hook()
dlzc.misc.util.askProfile()

dlzc.misc.indexSection = dlzc.misc.tab:Section({
Side = _d("IRcUFg"),
})

dlzc.misc.indexSection:Header({
Name = _d("LhMABhMqCQkXCkLD/PTq"),
})

dlzc.misc.indexToggle = dlzc.misc.indexSection:Toggle({
Name = _d("LAcGDRMACwwbHw"),
Default = false,
Callback = function(soej)
dlzc.misc.util.indexOn = soej
dlzc.misc.util.indexAt = 0

dlzc.misc.util.indexAsked = nil
end,
}, _d("DAcGDWwACwwbHz0B"))

dlzc.misc.indexSection:Button({
Name = _d("Lh4TC15DCQIF"),
Callback = function()
local bd = dlzc.misc.util

bd.indexAt = 0
bd.indexAsked = nil

if not bd.claimIndex() then
wc:Notify({
Title = _d("LhMABhMqCQkXCg"),
Description = _d("Ix1SD1oPAh4GHQxWQw4eUgAHUgceTQYdQlAPBgQfXA"),
Lifetime = 5,
})
end
end,
})

dlzc.misc.claimSection = dlzc.misc.tab:Section({
Side = _d("IRcUFg"),
})

dlzc.misc.claimSection:Header({
Name = _d("LBEaC1YVAgAXHBZAQ0FNIwcHQBcUTYLt7bU"),
})

dlzc.misc.achToggle = dlzc.misc.claimSection:Toggle({
Name = _d("LAcGDRMACwwbH0JSAA8EFwQHXgYJGQE"),
Default = false,
Callback = function(agep)
dlzc.misc.util.achOn = agep
dlzc.misc.util.achAt = 0

if agep and cb.RequestAchievements then
pcall(function()
cb.RequestAchievements:FireServer()
end)
end
end,
}, _d("DAcGDWwACwwbHz1SAA8EFwQHXgYJGQE"))

dlzc.misc.questToggle = dlzc.misc.claimSection:Toggle({
Name = _d("LAcGDRMACwwbH0JCFgIeBgE"),
Default = false,
Callback = function(eya)
dlzc.misc.util.questOn = eya
dlzc.misc.util.questAt = 0
dlzc.misc.util.questAskedAt = 0
dlzc.misc.util.weeklyAskedAt = 0

if eya then
dlzc.misc.util.askQuests()
end
end,
}, _d("DAcGDWwACwwbHz1CFgIeBgE"))

dlzc.misc.claimSection:Button({
Name = _d("Lh4TC15DBgEeUgxcFA"),
Callback = function()
local lu = dlzc.misc.util

lu.achAt = 0
lu.questAt = 0

local uolq = lu.claimAchievement()
local nx = lu.claimQuest()

if not (uolq or nx) then
wc:Notify({
Title = _d("LBEaC1YVAgAXHBZAQ0FNIwcHQBcU"),
Description = _d("Ix0GCloNAE0bAUJBBgYJC1IWXEMEARMbDx0"),
Lifetime = 5,
})
end
end,
})

dlzc.misc.packSection = dlzc.misc.tab:Section({
Side = _d("IRcUFg"),
})

dlzc.misc.packSection:Header({
Name = _d("LhMABhMzBg4ZAULD/OnZ"),
})

dlzc.misc.packSection:Paragraph({
Header = _d("OQUdQkAPCBkB"),
Body = _d("PRsRCUBDBh0CHhsTDAkBC1IVWwYJTQsdFxMTFQgBAUJyExcBC1ISUgAMHl5SAFYABhgBF0JHCwJNAQULRwAPTQUTDlgQRxkdUhZbBkcAFwABWwIJGVw"),
})

local ikw = {}
local rxx = {}

for xoes, nhl in ipairs(dlzc.misc.util.packCatalog()) do
table.insert(ikw, nhl.name)
rxx[nhl.name] = nhl.id
end

dlzc.misc.packSlotOne = nil
dlzc.misc.packSlotTwo = nil

dlzc.misc.packDropdownOne = dlzc.misc.packSection:Dropdown({
Name = _d("Ph4dFhNS"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = ikw,
Callback = function(vbf)
local tkrc = type(vbf) == _d("GRMQDlY") and vbf[1] or vbf

dlzc.misc.packSlotOne = rxx[tostring(tkrc)]
end,
}, _d("Hh4dFmxS"))

dlzc.misc.packDropdownTwo = dlzc.misc.packSection:Dropdown({
Name = _d("Ph4dFhNR"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = ikw,
Callback = function(pcm)
local exb = type(pcm) == _d("GRMQDlY") and pcm[1] or pcm

dlzc.misc.packSlotTwo = rxx[tostring(exb)]
end,
}, _d("Hh4dFmxR"))

dlzc.misc.packSection:Button({
Name = _d("LAICDkpDFwwRGRE"),
Callback = function()
local zdkk = dlzc.misc.util
local hwy = dlzc.misc.packSlotOne
local br = dlzc.misc.packSlotTwo

if not hwy then
wc:Notify({
Title = _d("LhMABhMzBg4ZAQ"),
Description = _d("PRsRCRMCRx0TEQkTBQgfUgEOXBdHXFIUC0EQE0M"),
Lifetime = 5,
})

return
end

local xepc, emm = zdkk.applyPacks(hwy, br)

if not xepc then
wc:Dialog({
Title = _d("LhMABhMzBg4ZAQ"),
Description = emm,
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})
end
end,
})

dlzc.misc.cards = {
rarityLabels = { _d("LB4e"), _d("Ix0AD1IP"), _d("Kh0eBg"), _d("PxMbDFEMEA"), _d("OBwbFFYRFAwe") },
borderOf = { Normal = 1, Gold = 2, Rainbow = 3, Universal = 4 },
mergeOn = false,
deconOn = false,
mergeWanted = {},
deconWanted = {},
mergeAt = 0,
deconAt = 0,
mergeDone = _d("Ix0GCloNAE0BFwxHQx4IBg"),
deconDone = _d("Ix0GCloNAE0BFwxHQx4IBg"),

inFlight = false,

interval = 3600,
manualGap = 20,
manualAt = 0,

protectedPrefixes = { weather = true, boss = true, raid = true, wb = true, fish = true, hw = true, event = true },

deconExceptions = { weather_sayaka = true, weather_caesar = true },

deconConfirmed = false,
burnAskedAt = 0,
}

function dlzc.misc.cards.isProtected(drk, kfo)
local xafg = dlzc.misc.cards
local wif = tostring(drk or _d(""))
local gwed = wif:match(_d("M1opAx4ZV0BLL0kaPA"))

if not (gwed and xafg.protectedPrefixes[gwed]) then
return false
end

return not (xafg.deconExceptions[wif] and kfo == 2)
end

function dlzc.misc.cards.burnAllowed(ikj)
local mxc = dlzc.misc.cards
local dfhm = mxc.wantedFor(_d("CRcRDV00BgMGFwY"))

if not (dfhm == nil or dfhm[3] or dfhm[4]) then
mxc.deconConfirmed = false

return true
end

if mxc.deconConfirmed then
return true
end

if ikj then
return false
end

if os.clock() < (mxc.burnAskedAt or 0) then
return false
end

mxc.burnAskedAt = os.clock() + 20

wc:Dialog({
Title = _d("LwcADBMxBgQcEA1EQwgfUicMWhUCHwETDhMABh8WAV0"),
Description = _d("LAcGDRMHAg4dHBFHERIOBlIRVg0DHlIXFFYRHk0RHRJKQw4DUgYKVkMKDAYRCloNAE0AHRVAQwYDFlIBUg0JAgZSAFZDEgMWHQxWTUc")
.. _d("OhcTFlsGFUFSEA1AEEtNABMLV0MFAgEBThMUCB8eFkJRDBQeXlIEWhAPBBwVThMrBgEeHRVWBglNExwGEwYRCBwGQlACFQkBUgNBBkcFFx4GEwEGDhlSB1oXDwgAUhVSGkk"),
Buttons = {
{
Name = _d("LwcADBMXDwgf"),
Callback = function()
mxc.deconConfirmed = true
mxc.deconAt = 0
mxc.manualAt = 0

pcall(function()
dlzc.misc.deconToggle:UpdateState(true)
end)
end,
},
{
Name = _d("LhMcAVYP"),
Callback = function()
pcall(function()
dlzc.misc.deconToggle:UpdateState(false)
end)
end,
},
},
})

return false
end

function dlzc.misc.cards.wantedFor(lye)
local dste = dlzc.misc.cards[lye] or {}

if next(dste) == nil or dste[0] then
return nil
end

return dste
end

function dlzc.misc.cards.npcFor(af)
local rnyp = workspace:FindFirstChild(_d("IyIxEQ"))

if not rnyp then
return nil
end

local gu = af and _d("CwcBB2wNFw4") or _d("CRcRDV0QEx8HERZsDRcO")

for cec, gwik in ipairs(rnyp:GetChildren()) do
if gwik:GetAttribute(_d("IyIxK1c")) == gu then
return gwik
end
end

local hiek = af and { _d("Ih0CCl8a"), _d("Ah0CDkoG") } or { _d("PhoTF18C"), _d("JRMEB2cUCCkTFhE") }

for ek, iysd in ipairs(rnyp:GetChildren()) do
for cwjg, yk in ipairs(hiek) do
if iysd.Name == yk then
return iysd
end
end
end

local plb = af and { _d("DhMABhMOAh8VGwxU"), _d("Ah0CCl8a") } or { _d("CRcRDV0QEx8HERZaDAk"), _d("HhoTF18C") }

for dvx, idtl in ipairs(rnyp:GetChildren()) do
for myz, sfh in ipairs(idtl:GetDescendants()) do
if sfh:IsA(_d("ORcKFn8CBQge")) and sfh.Text ~= _d("") then
local eizl = sfh.Text:lower()

for liui, mtca in ipairs(plb) do
if eizl:find(mtca, 1, true) then
return idtl
end
end

break
end
end
end

return nil
end

function dlzc.misc.cards.rarityText(zyzw)
local xbbh = dlzc.misc.cards.wantedFor(zyzw)

if not xbbh then
return _d("LB4e")
end

local wqb = {}

for vc, jvp in pairs(dlzc.misc.cards.borderOf) do
if xbbh[jvp] then
table.insert(wqb, vc)
end
end

if #wqb == 0 then
return _d("LB4e")
end

table.sort(wqb)

return table.concat(wqb, _d("QVI"))
end

function dlzc.misc.cards.run(zsxf, aque, hcgr)
local bnc = dlzc.misc.cards
local meuk = dlzc.misc.util
local cob = zsxf and _d("ABcABVYiEw") or _d("CRcRDV0iEw")

if hcgr then
if os.clock() < bnc[cob] then
return false, _d("Ix0GQlcWAk0LFxYd")
end
elseif os.clock() < bnc.manualAt then
return false, _d("OhMbFhMCRwAdHwddF0k")
end

if bnc.inFlight then
return false, _d("LBwdFlsGFU0RExBXQxMfGwJCWhBHDB4AB1IHHk0ABwxdCgkKXA")
end

local vbr = pgxj.busy(1) and 1 or (pgxj.busy(2) and 2 or nil)
local kdt = os.clock() - (vhlz.floorAt or 0) < 90
local szbf = vbr ~= nil and pgxj.towerSlot() == vbr and kdt

if vbr and not szbf then
return false, _d("JBxSAxMBBhkGHgcTTkcZGhdCRxEOHVIFDUYPA00XHAYTChND")
end

if ydsj.battlePending and os.time() < (ydsj.battlePendingUntil or 0) then
return false, _d("LFIQA0cXCwhSGxETEBMMAAYLXQRHQFIGClZDEx8bAkJEDBIBFlIBUg0ECB5SC0dN")
end

if not zsxf and not bnc.burnAllowed() then
return false, _d("Lh0cBFoRCk0gEwtdAQgaXScMWhUCHwETDhMFDh8BBkw")
end

local plm = bnc.npcFor(zsxf)

if not plm then
return false, zsxf
and _d("Ih0CCl8aRwQBUgxcF0cEHFIWWwoUTR8TEhNORxkAExRWD0cZHVIKWg5HDBwWQkMRAh4BUgtHQwYKExsMHQ")
or _d("ORoXQlcGBAIcARZBFgQZUjwycEMOHlIcDUdDDgNSBgpaEEcAEwJCHkMTHxMEB19DEwJSGxYTAgkJUgIQVhAUTRsGQlIEBgQcXA")
end

local xca = zsxf and cb.OpenFuseDialog or cb.OpenDeconstructDialog
local qem = zsxf and cb.FuseCards or cb.DeconstructCards

if not (xca and qem) then
return false, _d("ORoTFhMKFE0cHRYTCglNBhoLQEMADB8XQkUGFR4bHQwd")
end

local qbb = zsxf and _d("ABcABVY0BgMGFwY") or _d("CRcRDV00BgMGFwY")
local hank = bnc.wantedFor(qbb)

bnc.manualAt = os.clock() + bnc.manualGap

if hcgr then
bnc[cob] = os.clock() + bnc.interval
end

bnc.inFlight = true

task.spawn(function()

local lwao = nil

local function hbos(nutp, autc)
if zsxf then
bnc.mergeDone = nutp
else
bnc.deconDone = nutp
end

if autc and hcgr then
bnc[cob] = os.clock() + 120
end

bnc.inFlight = false
end

local dkb = meuk.visit(plm.Name)

if not dkb then
hbos(_d("LhoTEFIAEwgAUgtAQwkCBlIQVgIDFFJfQkEGEx8LGwxUQw4DUgYVXEMKBBwHFlYQSQ"), true)

return
end

task.wait(0.9)

local kvz = nil
local rhve = xca.OnClientEvent:Connect(function(cs)
if type(cs) == _d("GRMQDlY") then
kvz = cs
end
end)

for uly = 1, 3 do
pcall(function()
xca:FireServer()
end)

for uba = 1, 20 do
if kvz then
break
end

task.wait(0.3)
end

if kvz then
break
end

task.wait(1.5)
end

rhve:Disconnect()
meuk.returnTo(dkb)

if type(kvz) ~= _d("GRMQDlY") then
hbos(_d("ORoXQlcKBgEdFUJXCgNNHB0WEwIJHgUXEBNORx8XBhBKCgkKUhsMExcQAlIfC10WEwgBXA"), true)

return
end

local ugr = {}

for phf, otdb in ipairs(kvz) do
local hnpc = tonumber(otdb.borderLevel)
local bwyu = otdb.cardId or otdb.id

if hnpc and (not hank or hank[hnpc])
and (zsxf or not dlzc.misc.cards.isProtected(bwyu, hnpc)) then
table.insert(ugr, otdb)
end
end

if #ugr == 0 then

dlzc.misc.cards.closeFrame(zsxf)
hbos(_d("Ix0GCloNAE0GHUJABgkJUhQNQUM") .. dlzc.misc.cards.rarityText(qbb) .. _d("Qw"))

return
end

if aque then

local mcot = {}

for oej, rat in ipairs(ugr) do
if (tonumber(rat.count) or 0) >= aque then
table.insert(mcot, rat)
end
end

if #mcot == 0 then
dlzc.misc.cards.closeFrame(zsxf)
hbos(_d("Ix1S") .. dlzc.misc.cards.rarityText(qbb) .. _d("TQAdFRMLBh5S") .. aque .. _d("TREdEloGFE0LFxYd"))

return
end

ugr = mcot

table.sort(ugr, function(pey, bcjk)
return (tonumber(pey.count) or 0) < (tonumber(bcjk.count) or 0)
end)

local vsuk, kzk = {}, 0

for oel, otx in ipairs(ugr) do
local ekzb = tonumber(otx.count) or 0

if #vsuk > 0 and kzk + ekzb > aque then
break
end

table.insert(vsuk, otx)
kzk = kzk + ekzb
end

ugr = vsuk
lwao = kzk
end

local ooo = 0

dlzc.misc.cards.closeFrame(zsxf)

if zsxf then
if not hank then

pcall(function()
qem:FireServer(_d("DB4e"), nil)
end)

ooo = #ugr
else
local zdi = {}

for ydf, qete in ipairs(ugr) do
table.insert(zdi, { qete.cardId, tonumber(qete.borderLevel) })
end

pcall(function()
qem:FireServer(_d("HhceB1AXAgktEw5f"), zdi)
end)

ooo = #zdi
end
else
local oxi = {}

for dud, itp in ipairs(ugr) do
if #oxi >= 25 then
break
end

table.insert(oxi, { itp.cardId, tonumber(itp.borderLevel), _d("DB4e") })
end

pcall(function()
qem:FireServer(oxi)
end)

ooo = #oxi
end

hbos(_d("PhccFhM") .. tostring(ooo) .. _d("TQAdFQ") .. (ooo == 1 and _d("") or _d("Hg"))
.. _d("TVo") .. dlzc.misc.cards.rarityText(qbb) .. _d("RA")
.. (lwao and (_d("QVI") .. tostring(lwao) .. _d("TRETEFcQ")) or _d("")))
end)

return true
end

function dlzc.misc.cards.closeFrame(aymk)
pcall(function()
local axwk = aymk and { _d("KwcBB3QWDg"), _d("KwcBB3URBgAX") } or { _d("KRcRDV0QEx8HERZ0Fg4"), _d("KRcRDV0QEx8HERZ1EQYAFw") }
local fytd = require(lkft.ModuleScripts.MenuManager)
local sla = dw:FindFirstChild(axwk[1])
local fwb = sla and sla:FindFirstChild(axwk[2])

if fwb then
fytd.close(fwb)
end

if not aymk then
local higi = sla and sla:FindFirstChild(_d("KRcRDV0QEx8HERZhAhMIATQQUg4C"))

if higi then
fytd.close(higi)
else
higi = dw:FindFirstChild(_d("KRcRDV0QEx8HERZhAhMIATQQUg4C"))

if higi then
fytd.close(higi)
end
end
end
end)
end

function dlzc.misc.cards.refresh(aqie)

local gqj = aqie and dlzc.misc.mergeParagraph or dlzc.misc.deconParagraph

if not gqj then
return
end

pcall(function()
gqj:UpdateBody(aqie
and dlzc.misc.cards.mergeText()
or dlzc.misc.cards.deconText())
end)
end

function dlzc.misc.cards.mergeText()
local baql = dlzc.misc.cards

return _d("PxMAC0cKAh5IUg") .. baql.rarityText(_d("ABcABVY0BgMGFwY")) .. _d("Zw") .. baql.mergeDone
end

function dlzc.misc.cards.deconText()
local qelo = dlzc.misc.cards

return _d("PxMAC0cKAh5IUg") .. qelo.rarityText(_d("CRcRDV00BgMGFwY")) .. _d("Zw") .. qelo.deconDone
.. _d("ZyUXA0cLAh9eUgBcEBRBUgADWgdLTQUdEF8HRw8dAREfQwEEARoLXQRLTToTDl8MEAgXHEJSDQNNFwQHXRdHDhMABkBDBh8XUgxWFQIfUgEHXRdJ")
end

dlzc.misc.skill = {
on = false,
at = 0,
mainWanted = {},
raidWanted = {},

mainOrder = {},
raidOrder = {},
last = _d("Ix0GCloNAE0QHRdUCxNNCxcW"),
shown = _d(""),
}

function dlzc.misc.skill.branchMap(abl)
local wnsm = {}

for ay, rcey in ipairs(ly.Trees[abl].branches) do
wnsm[rcey.name] = rcey
end

return wnsm
end

function dlzc.misc.skill.branchLabels(xarr)
local dm = {}

for rltd, taj in ipairs(ly.Trees[xarr].branches) do
table.insert(dm, taj.name)
end

return dm
end

function dlzc.misc.skill.wantedFrom(kna, vm)
local ybhp = {}
local rzgd = dlzc.misc.skill.branchMap(vm)

if type(kna) == _d("GRMQDlY") then
for ojv, exjg in pairs(kna) do
if exjg and rzgd[tostring(ojv)] then
ybhp[rzgd[tostring(ojv)].id] = true
end
end
end

return ybhp
end

function dlzc.misc.skill.ordered(bqj, xrb)
local lmla = {}
local qklv = {}

for kea, oyzc in ipairs(xrb or {}) do
if bqj[oyzc] then
table.insert(lmla, oyzc)
qklv[oyzc] = true
end
end

for qolg in pairs(bqj) do
if not qklv[qolg] then
table.insert(lmla, qolg)
end
end

return lmla
end

function dlzc.misc.skill.branchById(bmpw)
local pvuw = {}

for dvhw, qzzl in ipairs(ly.Trees[bmpw].branches) do
pvuw[qzzl.id] = qzzl
end

return pvuw
end

function dlzc.misc.skill.upgrade()
local hjci = dlzc.misc.skill
local xtsv = dlzc.misc.util
local mfml = xtsv.currentProfile and xtsv.currentProfile()

if type(mfml) ~= _d("GRMQDlY") then
return false, _d("Ix1SEkEMAQQeF0JKBhND")
end

local ijji = mfml.skillTrees or {}
local nmya = { [1] = hjci.mainOrder, [2] = hjci.raidOrder }
local id = nil

for zzx, ajzn in ipairs(ly.Trees) do
local wzfx = ijji[ajzn.id]
local qkrt = tonumber(mfml[ajzn.pointsField or _d("HhkbDl8zCAQcBhE")]) or 0
local hkpr = dlzc.misc.skill.branchById(zzx)

if type(wzfx) == _d("GRMQDlY") and qkrt > 0 then
for rwbz, aybd in ipairs(nmya[zzx] or {}) do
local byg = hkpr[aybd]

if byg and not id then
local mdx = ly.getBranchLevel(ijji, ajzn.id, byg.id) or 0
local gjbt = mdx + 1

if gjbt <= byg.levels then
local scsa = byg.id .. gjbt
local xrg = 1

if type(byg.costs) == _d("GRMQDlY") and tonumber(byg.costs[gjbt]) then
xrg = tonumber(byg.costs[gjbt])
elseif tonumber(byg.cost) then
xrg = tonumber(byg.cost)
end

if xrg <= qkrt and ly.isAvailable(ijji, ajzn.id, scsa) then
id = { tree = ajzn.id, node = scsa, name = byg.name, level = gjbt }
end
end
end
end
end
end

if not id then
return false, _d("Ix0GCloNAE0GHUJRFh5NCxcWHQ")
end

cb.BuySkillNode:FireServer(id.tree, id.node)

if xtsv.askProfile then
pcall(xtsv.askProfile)
end

hjci.last = _d("Lx0HBVsXRw") .. id.name .. _d("TQ") .. tostring(id.level)

return true
end

function dlzc.misc.skill.text()
local obw = dlzc.misc.skill
local vlgd = dlzc.misc.util
local rhp = vlgd.currentProfile and vlgd.currentProfile()

if type(rhp) ~= _d("GRMQDlY") then
return _d("PR0bDEcQXU1NeA") .. obw.last
end

local cjnu = rhp.skillTrees or {}
local ctp = {}

local ogt = { [1] = obw.mainOrder, [2] = obw.raidOrder }

for xq, fsjy in ipairs(ly.Trees) do
local kpmc = tonumber(rhp[fsjy.pointsField or _d("HhkbDl8zCAQcBhE")]) or 0
local fyx = {}
local ijn = dlzc.misc.skill.branchById(xq)

for wupt, ygi in ipairs(ogt[xq] or {}) do
local orin = ijn[ygi]

if orin then
local wnk = ly.getBranchLevel(cjnu, fsjy.id, orin.id) or 0
table.insert(fyx, orin.name .. _d("TQ") .. tostring(wnk) .. _d("Qg") .. tostring(orin.levels))
end
end

ctp[#ctp + 1] = fsjy.name .. _d("V1I") .. tostring(kpmc) .. _d("TQIGEQ")
.. (#fyx > 0 and (_d("TV9S") .. table.concat(fyx, _d("QVI"))) or _d("TV9SDFwXDwQcFUJDCgQGFxY"))
end

ctp[#ctp + 1] = obw.last

return table.concat(ctp, _d("Zw"))
end

dlzc.misc.mergeSection = dlzc.misc.tab:Section({
Side = _d("IRcUFg"),
})

dlzc.misc.mergeSection:Header({
Name = _d("IBcABVZDl/LV3g"),
})

dlzc.misc.mergeToggle = dlzc.misc.mergeSection:Toggle({
Name = _d("LAcGDRMOAh8VFw"),
Default = false,
Callback = function(htek)
local iil = dlzc.misc.cards

iil.mergeOn = htek

iil.mergeAt = (htek and cdtc.loading) and (os.clock() + iil.interval) or 0
end,
}, _d("DAcGDWwOAh8VFw"))

dlzc.misc.mergeDropdown = dlzc.misc.mergeSection:Dropdown({
Name = _d("PxMAC0cKAh4"),
Search = false,
Multi = true,
Required = false,
Default = { _d("LB4e") },
Options = dlzc.misc.cards.rarityLabels,
Callback = function(sdhv)
local izah = {}

if type(sdhv) == _d("GRMQDlY") then
for anf, gexg in pairs(sdhv) do
if gexg then
if anf == _d("LB4e") then
izah[0] = true
else
izah[dlzc.misc.cards.borderOf[tostring(anf)]] = true
end
end
end
end

dlzc.misc.cards.mergeWanted = izah
dlzc.misc.cards.refresh(true)
end,
}, _d("HxMAC0cKAh4"))

dlzc.misc.mergeSection:Button({
Name = _d("IBcABVZDCQIF"),
Callback = function()
local zuml, slk = dlzc.misc.cards.run(true)

if not zuml then
wc:Notify({
Title = _d("IBcABVY"),
Description = slk,
Lifetime = 6,
})
end
end,
})

dlzc.misc.mergeSection:Button({
Name = _d("IBcABVZDXl0"),
Callback = function()

local jmct, appj = dlzc.misc.cards.run(true, 90)

if not jmct then
wc:Notify({
Title = _d("IBcABVZDXl0"),
Description = appj,
Lifetime = 6,
})
end
end,
})

dlzc.misc.mergeParagraph = dlzc.misc.mergeSection:Paragraph({
Header = _d("PgYTFkYQ"),
Body = dlzc.misc.cards.mergeText(),
})

dlzc.misc.accSection = dlzc.misc.tab:Section({
Side = _d("PxsVCkc"),
})

dlzc.misc.accSection:Header({
Name = _d("LBERB0AQCB8bFxETk/j//A"),
})

dlzc.misc.accToggle = dlzc.misc.accSection:Toggle({
Name = _d("LAcGDRMBAh4GUgNQAAIeAR0QSg"),
Default = false,
Callback = function(fqq)
dlzc.misc.util.accOn = fqq
dlzc.misc.util.accAt = 0
end,
}, _d("DAcGDWwBAh4GLQNQAAIeAR0QSg"))

dlzc.misc.accBuyToggle = dlzc.misc.accSection:Toggle({
Name = _d("LAcGDRMBEhRSEAdAFw"),
Default = false,
Callback = function(krqs)
dlzc.misc.util.accBuyOn = krqs
dlzc.misc.util.accBuyAt = 0
dlzc.misc.util.accAt = 0
end,
}, _d("DAcGDWwBEhQtEAdAFw"))

dlzc.misc.accSection:Button({
Name = _d("LwcLQlEGFBk"),
Callback = function()
local vf, nrl = dlzc.misc.util.buyBest()

if not vf then
wc:Notify({
Title = _d("LBERB0AQCB8bFxE"),
Description = nrl,
Lifetime = 6,
})
end
end,
})

dlzc.misc.accSection:Button({
Name = _d("KAMHC0NDBQgBBg"),
Callback = function()
if not dlzc.misc.util.equipBest() then
wc:Notify({
Title = _d("LBERB0AQCB8bFxE"),
Description = _d("Ix0GCloNAE0QFxZHBhVNGwFCXBQJCBZSG1YXSQ"),
Lifetime = 5,
})
end
end,
})

dlzc.misc.accParagraph = dlzc.misc.accSection:Paragraph({
Header = _d("PgYTFkYQ"),
Body = dlzc.misc.util.accText(),
})

dlzc.misc.claimInfo = dlzc.misc.tab:Section({
Side = _d("PxsVCkc"),
})

dlzc.misc.claimInfo:Header({
Name = _d("IBsBAVYPCwwcFw1GEA"),
})

dlzc.misc.indexParagraph = dlzc.misc.claimInfo:Paragraph({
Header = _d("LhMABhMqCQkXCg"),
Body = dlzc.misc.util.indexText(),
})

dlzc.misc.achParagraph = dlzc.misc.claimInfo:Paragraph({
Header = _d("LBEaC1YVAgAXHBZA"),
Body = dlzc.misc.util.achText(),
})

dlzc.misc.questParagraph = dlzc.misc.claimInfo:Paragraph({
Header = _d("PAcXEUcQ"),
Body = dlzc.misc.util.questText(),
})

dlzc.misc.packParagraph = dlzc.misc.claimInfo:Paragraph({
Header = _d("PRMRCUA"),
Body = dlzc.misc.util.packText(),
})

dlzc.misc.skillSection = dlzc.misc.tab:Section({
Side = _d("PxsVCkc"),
})

dlzc.misc.skillSection:Header({
Name = _d("PhkbDl9DMx8XF0LD/Ove"),
})

dlzc.misc.skillToggle = dlzc.misc.skillSection:Toggle({
Name = _d("LAcGDRMWFwoAEwZW"),
Default = false,
Callback = function(wvv)
local zey = dlzc.misc.skill

if wvv and not (next(zey.mainWanted) or next(zey.raidWanted)) then
zey.on = false

pcall(function()
dlzc.misc.skillToggle:UpdateState(false)
end)

wc:Dialog({
Title = _d("PRsRCRMCRw8AEwxQC0cLGwARRw"),
Description = _d("LhodDUAGRwwGUg5WAhQZUh0MVkMFHxMcAVtDDgNSBgpWQyoMGxxCRxECCFIdEBMxBgQWUhZBBgJNFgANQwcIGhxSTxM")
.. _d("LAcGDRMWFwoAEwZWQwgDHgtCQBMCAxYBQkMMDgMGAUJECwIfF1IbXBZHHR0bDEdDDhlc"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})

return
end

zey.on = wvv
zey.at = 0
end,
}, _d("DAcGDWwWFwoAEwZW"))

dlzc.misc.skillMainDropdown = dlzc.misc.skillSection:Dropdown({
Name = _d("IBMbDBMXFQgX"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = dlzc.misc.skill.branchLabels(1),
Callback = function(wkr)
local mji = dlzc.misc.skill
local jdpr = mji.wantedFrom(wkr, 1)

mji.mainWanted = jdpr
mji.mainOrder = mji.ordered(jdpr, mji.mainOrder)
mji.shown = _d("")
end,
}, _d("ABMbDGwXFQgX"))

dlzc.misc.skillRaidDropdown = dlzc.misc.skillSection:Dropdown({
Name = _d("PxMbBhMXFQgX"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = dlzc.misc.skill.branchLabels(2),
Callback = function(tyuz)
local zpjl = dlzc.misc.skill
local osqx = zpjl.wantedFrom(tyuz, 2)

zpjl.raidWanted = osqx
zpjl.raidOrder = zpjl.ordered(osqx, zpjl.raidOrder)
zpjl.shown = _d("")
end,
}, _d("HxMbBmwXFQgX"))

pcall(function()
dlzc.misc.skillMainDropdown:UpdateSelection({})
end)

pcall(function()
dlzc.misc.skillRaidDropdown:UpdateSelection({})
end)

dlzc.misc.skillParagraph = dlzc.misc.skillSection:Paragraph({
Header = _d("PgYTFkYQ"),
Body = dlzc.misc.skill.text(),
})

task.spawn(function()
local pauq = dlzc.misc.util

while zybs() do
if pauq.indexOn or pauq.achOn or pauq.questOn or pauq.accOn or pauq.accBuyOn then
pauq.currentProfile()
end

if pauq.indexOn then
pauq.claimIndex()
end

if pauq.achOn then
pauq.claimAchievement()
end

if pauq.questOn then

if os.clock() - pauq.questAskedAt > 20 or os.clock() - pauq.weeklyAskedAt > 20 then
pauq.askQuests()
end

pauq.claimQuest()
end

if pauq.accOn and os.clock() >= pauq.accAt then
pauq.accAt = os.clock() + 3
pauq.equipBest()
end

local ornl = dlzc.misc.cards

if not ornl.inFlight then
if ornl.mergeOn and os.clock() >= ornl.mergeAt then
ornl.run(true, nil, true)
elseif ornl.deconOn and os.clock() >= ornl.deconAt then
ornl.run(false, nil, true)
end
end

if ornl.mergeDone ~= ornl.mergeShown then
ornl.mergeShown = ornl.mergeDone

pcall(function()
dlzc.misc.mergeParagraph:UpdateBody(dlzc.misc.cards.mergeText())
end)
end

if ornl.deconDone ~= ornl.deconShown then
ornl.deconShown = ornl.deconDone

pcall(function()
dlzc.misc.deconParagraph:UpdateBody(dlzc.misc.cards.deconText())
end)
end

local mkmc = dlzc.misc.skill

if mkmc.on and os.clock() >= mkmc.at then

mkmc.at = os.clock() + 2
mkmc.upgrade()
end

local oui = dlzc.misc.skill.text()

if mkmc.shown ~= oui then
mkmc.shown = oui

pcall(function()
dlzc.misc.skillParagraph:UpdateBody(oui)
end)
end

if pauq.accBuyOn and os.clock() >= pauq.accBuyAt then

local ewt = pauq.buyBest()

pauq.accBuyAt = os.clock() + (ewt and 45 or 10)
end

local gnsg = {
{ key = _d("BBwWB0s"), paragraph = dlzc.misc.indexParagraph, value = pauq.indexText() },
{ key = _d("DBEa"), paragraph = dlzc.misc.achParagraph, value = pauq.achText() },
{ key = _d("HAcXEUc"), paragraph = dlzc.misc.questParagraph, value = pauq.questText() },
{ key = _d("HRMRCQ"), paragraph = dlzc.misc.packParagraph, value = pauq.packText() },
{ key = _d("DBER"), paragraph = dlzc.misc.accParagraph, value = pauq.accText() },
}

for jad, xtt in ipairs(gnsg) do
if xtt.paragraph and pauq.shown[xtt.key] ~= xtt.value then
pauq.shown[xtt.key] = xtt.value

pcall(function()
xtt.paragraph:UpdateBody(xtt.value)
end)
end
end

task.wait(0.75)
end
end)

local eowy = zde:Section({
Side = _d("PxsVCkc"),
})

eowy:Paragraph({
Header = _d("KxsBCloNAA"),
Body = _d("LAcGDRMlDh4aUgdCFg4dAVIbXBYVTQAdBh9DAQwRFxETFw8IUgUDRwYVTRMcBhMABh4GAUJcDUcEBgFCXBQJQVIGClYNRx8XFw5AQxAFFxxCQAwKCAYaC10ERw8bBgdATUc5IlIWXEMlDAtSEkYPCx5SCw1GQwUMERlCRwxHGRoXQlECHk0UGxBAF0tNExwGExcPCFIGFVxDIwgXAgdAF0c6EwYHQUMUGhsGAVsGFE0aHQ5XQxMFF1IRQwwTTQsdFxMUAh8XUhFHAgkJGxwFEwwJTQUaB11DHgIHUgNBDgIJUgYKVg5HQFIGClZDAwgXAgdAF0cfGxwFEwAGHwAbB0BDEwUXUgBaBAAIAQZCXxYEBlIQDV0WFEN4eDZbBkceGh0SEwESFAFSA10HRwgDBwtDEEcfHRYREwIJCVIQA1oXRxobBgoTFw8IUhEDQBcUTQsdFxMLBhsXXEJxFh4EHBVCXQYCCQFSFlsGRw4dBwxHBhVNX1IAXBcPTREdD1ZDAR8dH0JHCwJNNBsRWwYVABMcTDlpJAwGEQpWEEcGFxcSQEMGTQAHDF0KCQpSBgNfDx5NEAtCWhcCAFITDFdDFAwEFxETChNBUgENExcPCFIGDUcCC00RExBBCgIeUh0UVhFHDxcGFVYGCU0BFxFACggDAVw"),
})

local wy = zde:Section({
Side = _d("PxsVCkc"),
})

wy:Header({
Name = _d("LhMGAVsGFA"),
})

local rmqz

rmqz = wy:Paragraph({
Header = _d("OhoTFhMaCBhSEQNGBA8Z"),
Body = flbk(),
})

local fiu = zde:Section({
Side = _d("PxsVCkc"),
})

fiu:Header({
Name = _d("JAEeA10HRx4aHRI"),
})

fiu:Toggle({
Name = _d("LAcGDRMAFQwUBk1RFh5NGwEOUg0DTQAdBg"),
Default = false,
Callback = function(fzib)
bj.island.autoRod = fzib
bj.islandAt = 0
end,
}, _d("BAEeA10HOAwHBg1sEQgJ"))

fiu:Toggle({
Name = _d("KAMHC0NDDh4eEwxXQxUCFg"),
Default = false,
Callback = function(bqqs)
bj.island.equipRod = bqqs
bj.islandAt = 0
end,
}, _d("BAEeA10HOAgDBwtDPBUCFg"))

fiu:Toggle({
Name = _d("LAcGDRMAFQwUBkJSAAQIAQENQRo"),
Default = false,
Callback = function(ken)
bj.island.autoAcc = ken
bj.islandAt = 0
end,
}, _d("BAEeA10HOAwHBg1sAgQOFwERXBEe"))

fiu:Toggle({
Name = _d("KAMHC0NDBg4RFxFADBUU"),
Default = false,
Callback = function(qz)
bj.island.equipAcc = qz
bj.islandAt = 0
end,
}, _d("BAEeA10HOAgDBwtDPAYOERcRQAwVFA"))

local utau

utau = fiu:Paragraph({
Header = _d("JAEeA10HRwoXExA"),
Body = bj.shopIsland.text(),
})

local ad = zde:Section({
Side = _d("IRcUFg"),
})

ad:Header({
Name = _d("PxcQC0EXDw"),
})

bj.rebirthToggle = ad:Toggle({
Name = _d("LAcGDRMRAg8bABZb"),
Default = false,
Callback = function(sovj)
bj.autoRebirth = sovj
end,
}, _d("DAcGDWwRAg8bABZb"))

bj.rebirthParagraph = ad:Paragraph({
Header = _d("PgYTFkYQ"),
Body = bj.rebirthText(),
})

ad:Button({
Name = _d("OSJSFlxDDh4eEwxX"),
Callback = function()
if not bj.gotoIsland() then
wc:Notify({
Title = _d("LBATDFcMCQgWUitADwYDFg"),
Description = _d("LhoTEFIAEwgAUgtAQwkCBlIQVgIDFFILB0dDSk0GABsTAgAMGxxCWg1HDFIfDV4GCRlc"),
Lifetime = 5,
})
end
end,
})

local lqu

lqu = ad:Toggle({
Name = _d("LAcGDRMqFAETHAYTKwYfFhENQQY"),
Default = false,
Callback = function(iqe)
eoi.island = iqe
eoi.pending = false
eoi.pendingUntil = 0
eoi.paused = false
eoi.gaveUp = false
eoi.stoodDown = false
eoi.manualPause = false

if not iqe then
return
end

if pgxj.otherTowerOn(_d("BRMABlAMFQg")) then
eoi.island = false

pcall(function()
lqu:UpdateState(false)
end)

pcall(function()
wc:Dialog({
Title = _d("LAcGDRMqFAETHAYTKwYfFhENQQZHAhQU"),
Description = _d("ORoXQnsCCwEdBQdWDUcZHQUHQUMOHlITDkEGBgkLUhBGDQkEHBVOEwIJCVIFC0cLRwIcF0JADwgZUgYKVkMADB8XQlwNCxRSABddEEcCHBdCWg0BBBwbFlZDFQIdH0JSF0cMUgYLXgZJTSYHEF1DEwUTBkJcBQFBUh0QExcSHxxSDV1DJhgGHUJgDwgZUgENEwYGDhpSFlwUAh9SFQdHEEcEBgFCXBQJTQEeDUdN"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})
end)

return
end

if pgxj.enabled and pgxj.hardcoreSlot() == nil then
eoi.island = false

pcall(function()
lqu:UpdateState(false)
end)

pcall(function()
wc:Dialog({
Title = _d("LAcGDRMqFAETHAYTKwYfFhENQQZHAhQU"),
Description = _d("Ix1SEV8ME00bAUJABhNNBh1CUkMTAgUXEB9DBgMWUhZbBkcKEx8HEwwJAQtSEUcCFRkBUgMTFwgaFwBCQRYJTRQADV5DBk0GHRVWEUceHh0WHUM0CAZSDV0GRxkdUitADwYDFlIKUhEDDh0ABx9DCB9SBhdBDUcsBwYNEzALAgZSDVUFSQ"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})
end)

return
end

if not eoi.data then
eoi.island = false

pcall(function()
lqu:UpdateState(false)
end)

pcall(function()
wc:Dialog({
Title = _d("LAcGDRMqFAETHAYTKwYfFhENQQZHAhQU"),
Description = _d("ORobERMBEgQeFkJbAhRNHB1CewIVCREdEFY3CBoXACZSFwZBUgENExcPCFIGDUQGFUoBUhFHAgAIAVIBUg0JAgZSAFZDFQgTFkJSDQNNE1IQRg1HDhMcDFwXRw8XUhFHAhUZFxZM"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})
end)

return
end

local cnbx = eoi.remotes.request

if cnbx then
pcall(function()
cnbx:FireServer()
end)
end
end,
}, _d("DAcGDWwKFAETHAZsCwYfFhENQQY"))

eoi.islandToggle = lqu

eoi.islandParagraph = ad:Paragraph({
Header = _d("LwcUBEA"),
Body = eoi.buffText(),
})

ad:Button({
Name = _d("PRMHEVZDLh4eEwxXQy8MABYBXBEC"),
Callback = function()
if eoi.pauseRun then
eoi.pauseRun()
end
end,
})

ad:Button({
Name = _d("KhsEBxM2F007AQ5SDQNNOhMQVwAIHxc"),
Callback = function()
if eoi.giveUpRun then
eoi.giveUpRun()
end
end,
})

local lfh = zde:Section({
Side = _d("IRcUFg"),
})

lfh:Header({
Name = _d("KxsBCloNAE0BGg1D"),
})

lfh:Toggle({
Name = _d("LAcGDRMBEhRSEAdAF0cfHRY"),
Default = false,
Callback = function(tjku)
bj.shop.autoBuyRod = tjku
bj.shopAt = 0
end,
}, _d("DAcGDWwBEhQtEAdAFzgfHRY"))

lfh:Toggle({
Name = _d("LAcGDRMBEhRSEAdAF0cPExsW"),
Default = false,
Callback = function(bje)
bj.shop.autoBuyBait = bje
bj.shopAt = 0
end,
}, _d("DAcGDWwBEhQtEAdAFzgPExsW"))

lfh:Toggle({
Name = _d("KAMHC0NDBQgBBkJBDAM"),
Default = false,
Callback = function(qtsx)
bj.shop.equipRod = qtsx
bj.shopAt = 0
end,
}, _d("CAMHC0M8BQgBBj1BDAM"))

lfh:Toggle({
Name = _d("KAMHC0NDBQgBBkJRAg4Z"),
Default = false,
Callback = function(flh)
bj.shop.equipBait = flh
bj.shopAt = 0
end,
}, _d("CAMHC0M8BQgBBj1RAg4Z"))

local pubt

pubt = lfh:Paragraph({
Header = _d("LxcBFhMaCBhSEQNdQwIcBxsS"),
Body = hizh(),
})
task.spawn(function()
local semw = su()
local zcx = flbk()
local xfrl = hizh()
local sfr = bj.shopIsland.text()

while zybs() do
local job = su()

if job ~= semw then
semw = job
pcall(function()
hjd:UpdateBody(job)
end)
end

local tkab = flbk()

if tkab ~= zcx then
zcx = tkab
pcall(function()
rmqz:UpdateBody(tkab)
end)
end

local aedg = hizh()

if aedg ~= xfrl then
xfrl = aedg
pcall(function()
pubt:UpdateBody(aedg)
end)
end

local uua = bj.shopIsland.text()

if uua ~= sfr then
sfr = uua
pcall(function()
utau:UpdateBody(uua)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while zybs() do

if sly() and os.clock() >= (bj.shopAt or 0)
and os.clock() >= (bj.islandTripUntil or 0) then
bj.shopAt = os.clock() + 1
pcall(rqy)
end

if bj.shopIsland.active() and os.clock() >= (bj.islandAt or 0)
and os.clock() >= math.max(bj.shopHoldUntil or 0, bj.tpHoldUntil or 0) then
bj.islandAt = os.clock() + 2
pcall(bj.shopIsland.run)
end

task.wait(1)
end
end)

joid:Select()

local vir = joid:Section({
Side = _d("IRcUFg"),
})

local ma = joid:Section({
Side = _d("PxsVCkc"),
})

local fehd = vir:Paragraph({
Header = _d("PgYTFkYQ"),
Body = xdit(),
})

vir:Divider()

ydsj.npcToggle = vir:Toggle({
Name = _d("LAcGDRMtNy4"),
Default = false,
Callback = function(gvgx)

if gvgx and not ydsj.story and #gaxt() == 0 then
pcall(function()
ydsj.npcToggle:UpdateState(false)
end)

wc:Dialog({
Title = _d("LAcGDRMtNy5SHAdWBxRNE1IWUhEACAY"),
Description = _d("PRsRCRMCE00eFwNAF0cCHBdCfTMkTRQADV5DEwUXUhVcEQsJAVIAVg8IGl5SDUFDExgAHEJcDUcsBwYNEyAIAAIeB0cGRz4GHRBKTUc5GhcQVkMOHlIcDUcLDgMVUhZcQwEEFRoWExoCGVw"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})

return
end

ydsj.enabled = gvgx
end,
}, _d("DAcGDWwNFw4"))

vir:Toggle({
Name = _d("OhMeCRMXCE08IiE"),
Default = false,
Callback = function(ivjy)
ydsj.walkToNpc = ivjy
end,
}, _d("GhMeCWwXCDIcAgE"))

vir:Dropdown({
Name = _d("KRsUBFoAEgEGCw"),
Search = false,
Multi = true,
Required = false,
Default = { _d("Ix0AD1IP") },
Options = he,
Callback = function(umux)
local iy = {}

if type(umux) == _d("GRMQDlY") then
for gasr, hhnq in ipairs(he) do
if umux[hhnq] then
table.insert(iy, spj[hhnq])
end
end
end

if #iy == 0 then
iy = { _d("Ax0AD1IP") }
end

ydsj.difficulties = iy
end,
}, _d("CRsUBFoAEgEGCw"))

vir:Toggle({
Name = _d("LAcGDRMxCAIfAQ"),
Default = false,
Callback = function(std)
zqj.enabled = std
zqj.inBattle = false
zqj.pending = false
end,
}, _d("DAcGDWwRCAIfAQ"))

local ygdw = joid:Section({
Side = _d("IRcUFg"),
})

ygdw:Header({
Name = _d("Ph4dFg"),
})

ygdw:Paragraph({
Header = _d("JR0FQkcLAk0BHg1HEEcaHQAJ"),
Body = _d("Ph4dFhNSR0BSOwxVCgkEBgtCZwwQCABSSl0MFQATHkJcEUcjGxUKRw4GHxdbQlwRRyUTHg5cFAIIHFI2XBQCH15SEl8WFE08IiETAQYZBh4HQEMQBRccQkAPCBlSQEJaEEcPBwEbHWltPh4dFhNRR0BSPDJwEEtNABMLVxBLTQAdDV4QS007AQ5SDQNNOhMQVwAIHxdcaDkhCBkaUhFfDBMeUh0MEy03LlIQA0cXCwgBSEJHFAhNPCIhEwUCDAYHEFYQRwwGUg1dAAJBUhMMV0MGTQATC1dDBQIBAUJWAgQFXHhoZxQITQYdFVYRRx8HHBETChRNBhoHEwwJAQtSEFYFEh4XFkJDAg4fUl9CehALDBwWQnsCFQkRHRBWQwgDUhANRwtHHh4dFkBDDh5SHQxWQxUYHFIDQAgCCVIUDUFDExobEQcdaW0+Hh0WQEMICxRIQlwNAk0BHg1HT0cZHQUHQRBHGRMZBxMXEh8cAUw"),
})

pgxj.toggle = ygdw:Toggle({
Name = _d("LAcGDRMwCwIG"),
Default = false,
Callback = function(qbz)
if qbz and pgxj.role[1] == pgxj.role[2] and pgxj.role[1] ~= _d("AwIR") then
pgxj.enabled = false

pcall(function()
pgxj.toggle:UpdateState(false)
end)

wc:Dialog({
Title = _d("LAcGDRMwCwIG"),
Description = _d("Ph4dFhNSRwwcFkJgDwgZUkBCUhECTRAdFltD") .. pgxj.roleLabel(1) .. _d("Q1ImClIXRwQBUg1dBkcfBxxCUhAMCBZSBFwRRxkFGwFWT0ceHVINXQZHAhRSFlsGRxkFHUJADwgZAVIKUhBHGR1SAFZDFAIfFxZbCgkKUhcOQAZJ"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})

return
end

pgxj.enabled = qbz

if qbz then
pgxj.hasSlot2 = pgxj.detectSlot2()

if pgxj.hasSlot2 == false then
wc:Dialog({
Title = _d("LAcGDRMwCwIG"),
Description = _d("Ph4dFhNRRwEdHQlAQwsCERkHV0NKTRsGQl0GAgkBUhZbBkcpBxMOEyEGGQYeBxMwCwIGUgVSDgIdEwERH0MIH1I7DFUKCQQGF0JhDAgAUkBXA0MEARcTEFYHS00QFwRcEQJNBhoHExACDh0cBhMQCwIGUgFSDUcPEwYWXwZJTSAdF0cKCQpSARZSGhRNHRxCQA8IGVJDQkYNEwQeUhZbBglD"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})
end
end
end,
}, _d("DAcGDWwQCwIG"))

function pgxj.applyRoles()
if not pgxj.enabled then
return
end

if pgxj.role[1] == pgxj.role[2] and pgxj.role[1] ~= _d("AwIR") then
pgxj.enabled = false

pcall(function()
pgxj.toggle:UpdateState(false)
end)

pcall(function()
wc:Dialog({
Title = _d("LAcGDRMwCwIGUg1VBQ"),
Description = _d("Ph4dFhNSRwwcFkJgDwgZUkBCUhECTRAdFltD") .. pgxj.roleLabel(1) .. _d("Q1ImClIXRwQBUg1dBkcfBxxCUhAMCBZSBFwRRxkFGwFWT0cMHBZCWhdHDhMcDFwXRxkTGQcTFxACUgEOXBcUQ1IhB0dDCAMXUhFfDBNNBh1CQAwKCAYaC10ERwgeAQcd"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})
end)

return
end

local oac = {}

if pgxj.towerSlot() ~= 1 and vhlz.enabled then
vhlz.enabled = false
table.insert(oac, _d("LAcGDRM3CBoXAA"))

pcall(function()
vhlz.ui:UpdateState(false)
end)
end

if pgxj.hardcoreSlot() == nil and eoi.island then
eoi.island = false
table.insert(oac, _d("LAcGDRMqFAETHAYTKwYfFhENQQY"))

pcall(function()
eoi.islandToggle:UpdateState(false)
end)
end

if pgxj.halloweenSlot() == nil and bhkm.run.enabled then
bhkm.run.enabled = false
table.insert(oac, _d("LAcGDRMrBgEeHRVWBglNJh0VVhE"))

pcall(function()
bhkm.toggle:UpdateState(false)
end)
end

if #oac > 0 then
pcall(function()
wc:Dialog({
Title = table.concat(oac, _d("TRMcBhM")) .. _d("TR0UBA"),
Description = _d("Ix1SEV8ME00bAUJABhNNBh1CRwsGGVIGDUQGFU0THBsTDggfF15CQAxHBAZSClIHRwMdBQpWEQJNBh1CQRYJQ1I1C0UGRwQGUgMTEAsCBlIDVAIOA15SDUFDExgAHEJyFhMCUiEOXBdHAhQUTA"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})
end)
end
end

pgxj.oneDropdown = ygdw:Dropdown({
Name = _d("Ph4dFhNS"),
Search = false,
Multi = false,
Required = false,

Default = 1,
Options = pgxj.optionsFor[1],
Callback = function(xjek)
local rgz = type(xjek) == _d("GRMQDlY") and xjek[1] or xjek

if type(rgz) == _d("HgYAC10E") and pgxj.roleIds[rgz] then
pgxj.role[1] = pgxj.roleIds[rgz]
pgxj.picked[1] = rgz
end

pcall(function()
pgxj.oneDropdown:UpdateName(_d("Ph4dFhNSR4/y0EI") .. pgxj.roleLabel(1))
end)

if pgxj.applyRoles then
pgxj.applyRoles()
end
end,
}, _d("Hh4dFmxSOF8"))

pgxj.twoDropdown = ygdw:Dropdown({
Name = _d("Ph4dFhNR"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = pgxj.optionsFor[2],
Callback = function(ppgp)
local iqfh = type(ppgp) == _d("GRMQDlY") and ppgp[1] or ppgp

if type(iqfh) == _d("HgYAC10E") and pgxj.roleIds[iqfh] then
pgxj.role[2] = pgxj.roleIds[iqfh]
pgxj.picked[2] = iqfh
end

pcall(function()
pgxj.twoDropdown:UpdateName(_d("Ph4dFhNRR4/y0EI") .. pgxj.roleLabel(2))
end)

if pgxj.applyRoles then
pgxj.applyRoles()
end
end,
}, _d("Hh4dFmxROF8"))

pcall(function()
pgxj.oneDropdown:UpdateSelection(_d("OR0FB0E"))
end)

pcall(function()
pgxj.twoDropdown:UpdateSelection(_d("IyIxQlECExkeFxE"))
end)

getgenv().ACBXSlot = pgxj

local dklb = joid:Section({
Side = _d("IRcUFg"),
})

dklb:Header({
Name = _d("PxMbBhMBCB4B"),
})

dklb:Toggle({
Name = _d("LAcGDRMxBgQWUiBcEBQ"),
Default = false,
Callback = function(vwld)
dlzc.enabled = vwld
dlzc.pending = {}
dlzc.pendingUntil = {}

if vwld then
dlzc.cleared = {}
end
end,
}, _d("DAcGDWwRBgQWLQBcEBQ"))

dklb:Toggle({
Name = _d("LAcGDRM0BgEZUhZcQzUMGxZCcQwUHg"),
Default = false,
Callback = function(bac)
dlzc.walkToBoss = bac
end,
}, _d("DAcGDWwUBgEZLRZcPBUMGxY9UQwUHg"))

local mkkl
mkkl = dklb:Slider({
Name = _d("OhMeCRMwFwgXFg"),
Minimum = 0,
Maximum = 72,
Default = 18,
Precision = 0,
Callback = function(vpm)
local unp = math.floor(vpm + 0.5)
dlzc.walkSpeed = unp

if mkkl and unp ~= vpm then
mkkl:UpdateValue(unp)
end
end,
}, _d("GhMeCWwQFwgXFg"))

dklb:Dropdown({
Name = _d("PxMbBhMnDgsUGwFGDxMU"),
Search = false,
Multi = true,
Required = false,
Default = { _d("Ix0AD1IP") },
Options = aea,
Callback = function(erg)
local frq = {}

if type(erg) == _d("GRMQDlY") then
for qgv, gvqc in ipairs(aea) do
if erg[gvqc] then
table.insert(frq, ce[gvqc])
end
end
end

if #frq == 0 then
frq = { _d("Ax0AD1IP") }
end

dlzc.difficulties = frq
end,
}, _d("HxMbBmwHDgsUGwFGDxMU"))

function dlzc.pickedIds(slyk)
local dou = {}

if type(slyk) == _d("GRMQDlY") then
for dysy, wznl in ipairs(ubr) do
if slyk[wznl] and nq[wznl] then
table.insert(dou, nq[wznl])
end
end
elseif type(slyk) == _d("HgYAC10E") and nq[slyk] then
dou = { nq[slyk] }
end

return dou
end

dklb:Dropdown({
Name = _d("PxMbBhMhCB4B"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = ubr,
Callback = function(vdd)
dlzc.picks[1] = dlzc.pickedIds(vdd)
dlzc.cursor[1] = 1
dlzc.losses[1] = {}
end,
}, _d("HxMbBmwBCB4B"))

dlzc.boss2Dropdown = dklb:Dropdown({
Name = _d("PxMbBhMhCB4BUkpgDwgZUkBL"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = ubr,
Callback = function(fwrn)
dlzc.picks[2] = dlzc.pickedIds(fwrn)
dlzc.cursor[2] = 1
dlzc.losses[2] = {}
end,
}, _d("HxMbBmwBCB4BLRFfDBMyQA"))

pcall(function()
dlzc.boss2Dropdown:SetVisibility(false)
end)

task.spawn(function()
local aan = nil

while zybs() do
local vls = pgxj.splitNpc()

if vls ~= aan then
aan = vls

local gcm = dlzc.boss2Dropdown

if gcm then
pcall(function()
gcm:SetVisibility(vls)
end)
end
end

task.wait(0.5)
end
end)

ma:Paragraph({
Header = _d("LAcGDRMlDgoaBg"),
Body = _d("PhceB1AXRwIcF0JcEUcAHQAHEy03LgFSBEEMCk0GGgcTFAgfHhYREwECAR0FTA"),
})

for ldj, suzo in ipairs(xgbi) do
ma:Dropdown({
Name = suzo.name,
Search = true,
Multi = true,
Required = false,
Default = {},
Options = suzo.options,
Callback = function(ormm)
local gabv = {}

if type(ormm) == _d("GRMQDlY") then
if ormm.All then
for dpxe, tmo in ipairs(suzo.ids) do
table.insert(gabv, tmo)
end
else
for tja, ofms in ipairs(suzo.options) do
if ormm[ofms] and suzo.byName[ofms] then
table.insert(gabv, suzo.byName[ofms])
end
end
end
elseif type(ormm) == _d("HgYAC10E") then
if ormm == _d("LB4e") then
for ssyp, ew in ipairs(suzo.ids) do
table.insert(gabv, ew)
end
else
gabv = { suzo.byName[ormm] }
end
end

ydsj.selectedByWorld[suzo.name] = gabv
end,
}, _d("AwIRPQ") .. suzo.id)
end

ma:Toggle({
Name = _d("LAcGDRMgCAACHgdHBkc+Bh0QSg"),
Default = false,
Callback = function(gpb)
ydsj.story = gpb
ydsj.battlePending = false
ydsj.battlePendingUntil = 0
end,
}, _d("DAcGDWwACAACHgdHBjgeBh0QSg"))

ydsj.storyDropdown = ma:Dropdown({
Name = _d("KRsUBFoAEgEGGwdA"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = he,
Callback = function(bkf)
local htqk = type(bkf) == _d("GRMQDlY") and bkf[1] or bkf

if type(htqk) == _d("HgYAC10E") and spj[htqk] then
ydsj.storyDifficulty = spj[htqk]
end
end,
}, _d("CRsUBFoAEgEGGwdA"))

pcall(function()
ydsj.storyDropdown:UpdateSelection(he[1])
end)

pcall(function()
ydsj.storyDropdown:UpdateName(_d("KRsUBFoAEgEGGwdAQ4Xt0FI") .. he[1])
end)

ma:Paragraph({
Header = _d("JR0FQnIWEwJSMQ1eEwsIBhdCYBcIHwtSFVwRDB4"),
Body = _d("KxsVCkcQRwgEFxBKQxQZHQAbEy03LlJfQn0CCggZUhZbEQgYFRpCehACBhMbQh5DCANSBgpWQwgDF1IGWgUBBBEHDkcaRwwQHRRWT0caHQAJWg0ATQYaBxMCFQgTAUJaDUcCABYHQUMGAxZSAVwODgMVUgBSAAxNAB0XXQdHDAFSAVwMCwkdBQxAQwQBFxMQHWltJAZSEFYTCwwRFxETFw8IUhMQVgJHCQAdElcMEAMBUhVbCgsIUhsWEwoUTR0cThMCCQlSHgdSFQIeUgADWgdHDx0BEVYQRwweHQxWTQ"),
})

local kdpf = oya:Section({
Side = _d("IRcUFg"),
})

kdpf:Header({
Name = _d("OR0FB0E"),
})

local flc
local fulr

local pjj = {
remotes = {},
watcher = false,
hidMenu = false,

hardWatch = {},
}

function pjj.hardPick(xnqp)
xnqp = xnqp == true

for laes, cg in ipairs({ _d("LxMGFl8GIBgb"), _d("LxMGFl8GIBgbQA") }) do
local qznk = dw:FindFirstChild(cg)

if qznk then
if qznk:GetAttribute(_d("OR0FB0ErBh8WIgtQCA")) ~= xnqp then
pcall(function()
qznk:SetAttribute(_d("OR0FB0ErBh8WIgtQCA"), xnqp)
end)
end

if qznk:GetAttribute(_d("OR0FB0ErBh8WIBdd")) ~= nil and qznk:GetAttribute(_d("OR0FB0ErBh8WIBdd")) ~= xnqp then
pcall(function()
qznk:SetAttribute(_d("OR0FB0ErBh8WIBdd"), xnqp)
end)
end
end
end
end

function pjj.pinMode()
if not (vhlz.enabled or vhlz.nightmare) then
return
end

local zran = vhlz.nightmare == true

for pbiu, sudz in ipairs({ _d("LxMGFl8GIBgb"), _d("LxMGFl8GIBgbQA") }) do
local hzyk = dw:FindFirstChild(sudz)

if hzyk then
if hzyk:GetAttribute(_d("OR0FB0ErBh8WIgtQCA")) ~= zran then
pcall(function()
hzyk:SetAttribute(_d("OR0FB0ErBh8WIgtQCA"), zran)
end)
end

if pjj.hardWatch[hzyk] == nil then
local qlt, rib = pcall(function()
return hzyk:GetAttributeChangedSignal(_d("OR0FB0ErBh8WIgtQCA")):Connect(function()
if not (vhlz.enabled or vhlz.nightmare) then
return
end

local uxm = vhlz.nightmare == true

if hzyk.Parent and hzyk:GetAttribute(_d("OR0FB0ErBh8WIgtQCA")) ~= uxm then
pcall(function()
hzyk:SetAttribute(_d("OR0FB0ErBh8WIgtQCA"), uxm)
end)
end
end)
end)

if qlt then
pjj.hardWatch[hzyk] = rib
end
end
end
end
end

function pjj.pauseRows()
local vmss = as:FindFirstChild(_d("PR4TG1YRIBgb")) and as.PlayerGui:FindFirstChild(_d("PhcGFloNAB41Bws"))

if not vmss then
return nil, nil
end

return vmss:FindFirstChild(_d("PRMHEVYqCQsbHAtHBi4DAgcW"), true), vmss:FindFirstChild(_d("PRMHEVYqCQsbHAtHBiQFFxEJ"), true)
end

function pjj.pauseState()
local gvu = as:FindFirstChild(_d("PR4TG1YRIBgb")) and as.PlayerGui:FindFirstChild(_d("PhcGFloNAB41Bws"))
local iib = gvu and gvu:FindFirstChild(_d("KhcGMVYXEwQcFRE"), true)

if not iib then
return nil
end

local aaj, wou = pcall(function()
return iib:Invoke()
end)

if aaj and type(wou) == _d("GRMQDlY") then
return wou.pauseInfiniteEnabled == true
end

return nil
end

function pjj.pauseAt(au, kvq)
kvq = math.max(1, math.floor(tonumber(kvq) or 1))

local bzw, wpre = pjj.pauseRows()

if not (bzw and wpre) then
return false
end

local jhm = pcall(function()
if tonumber(bzw.Text) ~= kvq then
bzw.Text = tostring(kvq)

if getconnections then
for kt, jlzb in ipairs(getconnections(bzw.FocusLost)) do
pcall(function()
jlzb:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end
end)

if au ~= nil then
local xgzy = pjj.pauseState()

if xgzy ~= nil and xgzy ~= au and getconnections then
pcall(function()
for xiob, mw in ipairs(getconnections(wpre.MouseButton1Click)) do
pcall(function()
mw:Fire()
end)
end
end)
end
end

return jhm
end

function pjj.restorePause()
gsh.triggered = false

if gsh.enabled and gsh.floor > 0 then
pjj.pauseAt(true, gsh.floor)

pcall(function()
cb.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = gsh.floor,
})
end)

return
end

pcall(function()
cb.SaveClientData:FireServer({
pauseInfiniteEnabled = false,
pauseInfiniteAt = 1,
})
end)

pjj.pauseAt(false, 1)
end

function pjj.remote(mcn)
local lkiy = pjj.remotes[mcn]

if lkiy and lkiy.Parent then
return lkiy
end

local vgu = lkft:FindFirstChild(_d("PxcfDUcGFA"))
local emuo = vgu and vgu:FindFirstChild(mcn)

if emuo then
pjj.remotes[mcn] = emuo
end

return emuo
end

function pjj.historyOpen()
for bm, psfz in ipairs({ _d("LxMGFl8GIBgb"), _d("LxMGFl8GIBgbQA") }) do
local bri = dw:FindFirstChild(psfz)
local pwmf = bri and bri:FindFirstChild(_d("OR0FB0ErDh4GHRBKJRUMHxc"))

if pwmf and pwmf.Visible then
return true
end
end

return false
end

function pjj.generationOpen()
local oqt = dw:FindFirstChild(_d("OR0FB0ExAh4HHhZ0Fg4"))
local gax = oqt and oqt:FindFirstChild(_d("PxcBF18XIR8THwc"))

return gax ~= nil and gax.Visible
end

function pjj.standDown(pkal)
if not pjj.hidMenu then
local bbx = true

pcall(function()
bbx = wc:GetState() ~= false
end)

if bbx then
pjj.hidMenu = true

pcall(function()
wc:SetState(false)
end)
end
end

if pjj.watcher then
return
end

pjj.watcher = true

task.spawn(function()

local aocj = os.clock() + 6

while zybs() and os.clock() < aocj and not pkal() do
task.wait(0.2)
end

while zybs() and pkal() do
task.wait(0.4)
end

pjj.watcher = false

if pjj.hidMenu then
pjj.hidMenu = false

pcall(function()
wc:SetState(true)
end)
end
end)
end

vhlz.floorAt = 0
vhlz.battleAt = 0
vhlz.floor = nil
vhlz.manualPause = false

task.spawn(function()
local zz = jw(_d("LxMGFl8GMh0WExZW"))
local kycr = jw(_d("PgscAWcMEAgANA5cDBU"))
local hdg = jw(_d("LxMGFl8GIgMW"))
local hcl = jw(_d("OR0FB0ExEgM3HAZWBw"))

if zz then
zz.OnClientEvent:Connect(function()
vhlz.battleAt = os.clock()
end)
end

if kycr then
kycr.OnClientEvent:Connect(function(dhg)
vhlz.floorAt = os.clock()

if type(dhg) == _d("AwcfAFYR") and dhg > 1 then
vhlz.floor = dhg
else
vhlz.floor = nil
end
end)
end

if hdg then
hdg.OnClientEvent:Connect(function(rb)
if type(rb) == _d("GRMQDlY") and rb.mode == _d("GR0FB0E") then
vhlz.floorAt = os.clock()
end
end)
end

if hcl then
hcl.OnClientEvent:Connect(function()

vhlz.lastRunEnded = {
clock = os.clock(),
floor = vhlz.floor,
}

task.delay(1, function()
local bdk = dw:FindFirstChild(_d("OR0FB0ExAh4HHhZ0Fg4"))
local icds = bdk and bdk:FindFirstChild(_d("PxcBF18XIR8THwc"))
local ywp = {}

if icds then
for gypu, fai in ipairs(icds:GetDescendants()) do
if fai:IsA(_d("ORcKFn8CBQge")) and fai.Visible and fai.Text ~= _d("") and #ywp < 12 then
ywp[#ywp + 1] = fai.Text
end
end
end

if vhlz.lastRunEnded then
vhlz.lastRunEnded.texts = table.concat(ywp, _d("TQ5S"))
end
end)

vhlz.floorAt = 0
vhlz.battleAt = 0
vhlz.floor = nil

if vhlz.manualPause then
pjj.restorePause()
end
end)
end

end)

local function vrui()
local dnys = os.clock()

if dnys - (vhlz.floorAt or 0) < 90 and dnys - (vhlz.battleAt or 0) < 12 then
return true
end

for gddq, cubb in ipairs({ _d("LxMGFl8GIBgb"), _d("LxMGFl8GIBgbQA") }) do
local otp = dw:FindFirstChild(cubb)

if otp then

local isvm = otp:FindFirstChild(_d("OR0FB0ElCwIdAC5SAQIB"))

if isvm and isvm.Visible then
return true
end

local hvws = otp:FindFirstChild(_d("Kx4dDUEwBB8XFww"))

if hvws and hvws.Visible then
return true
end

local aol = otp:FindFirstChild(_d("LxMGFl8GNA4AFwdd"))

if aol and aol.Visible then
local fuj = aol:FindFirstChild(_d("PAcbAVgkDhsXJxJxFhMZHRw"))

if fuj and fuj.Visible then
return true
end
end
end
end

return false
end

function pjj.hardNow()

local sli = dw:FindFirstChild(_d("LxMGFl8GIBgb"))
local ftwd = sli and sli:GetAttribute(_d("OR0FB0ErBh8WIgtQCA"))

if ftwd ~= nil then
return ftwd == true
end

local pve = dlzc.misc.util.profile

return type(pve) == _d("GRMQDlY") and pve.lastTowerHard == true
end

function pjj.endIfWrongMode(wcf)
if not vrui() or pjj.hardNow() == (wcf == true) then
return false
end

pcall(function()
if type(fulr) == _d("CwccAUcKCAM") then
fulr()
else
cb.EndTowerRemote:FireServer(1)
end
end)

vhlz.floor = nil

return true
end

function pjj.hardPickNow()
for pzuu, jpr in ipairs({ _d("LxMGFl8GIBgb"), _d("LxMGFl8GIBgbQA") }) do
local ujx = dw:FindFirstChild(jpr)
local fzm = ujx and ujx:GetAttribute(_d("OR0FB0ErBh8WIgtQCA"))

if fzm ~= nil then
return fzm == true
end
end

return nil
end

function pjj.parked()
for yiw, bx in ipairs({ _d("LxMGFl8GIBgb"), _d("LxMGFl8GIBgbQA") }) do
local oevw = dw:FindFirstChild(bx)

if oevw then
local sw = oevw:FindFirstChild(_d("OR0FB0ElCwIdAC5SAQIB"))
local sm = oevw:FindFirstChild(_d("Kx4dDUEwBB8XFww"))
local qby = oevw:FindFirstChild(_d("LxMGFl8GNA4AFwdd"))

if sw and sw.Visible
and not (sm and sm.Visible)
and not (qby and qby.Visible) then
return true
end
end
end

return false
end

vhlz.ui = kdpf:Toggle({
Name = _d("LAcGDRM3CBoXAA"),
Default = false,
Callback = function(ziu)

if vhlz.quiet then
return
end

vhlz.enabled = ziu
vhlz.pending = false
vhlz.pendingUntil = 0

if ziu then

if pgxj.enabled and pgxj.role[1] ~= _d("GR0FB0E") then
vhlz.enabled = false

pcall(function()
vhlz.ui:UpdateState(false)
end)

pcall(function()
wc:Dialog({
Title = _d("LAcGDRM3CBoXAEJcBQE"),
Description = _d("Ph4dFhNSRwQBUhFWF0cZHVI") .. pgxj.roleName(1) .. _d("Q1ImClZDLgMUGwxaFx5NMRMRRw8CTR0cDkpDFBkTABZAQwgDUgEOXBdHXF5SEVxDFAgGUjFfDBNNQ1IWXEMzAgUXEBMFDh8BBkw"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})
end)

return
end

if pgxj.otherTowerOn(_d("GR0FB0E")) then
vhlz.enabled = false

pcall(function()
vhlz.ui:UpdateState(false)
end)

pcall(function()
wc:Dialog({
Title = _d("LAcGDRM3CBoXAEJcBQE"),
Description = _d("LBwdFlsGFU0GHRVWEUcMBwYNXgITBB0cQloQRwweAAdSBx5NHRxOEwIJCVIGCloQRwwREQ1GDRNNHRwOSkMGAR4dFUBDCAMXUhZcFAIfUgAXXUMGGVITQkcKCghcUjZGEQlNBhoDR0MIAxdSDVUFRwsbABFHT0cCAFIWRhEJTR0cQnIWEwJSIQ5cF0ceHVIHUgAPTQEeDUdDAAgGAUJaFxRNHQUMExcIGhcATA"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})
end)

return
end

vhlz.nightmare = false

pcall(function()
vhlz.quiet = true
vhlz.nightmareToggle:UpdateState(false)
vhlz.quiet = false
end)

vhlz.manualPause = false
vhlz.paused = false
pjj.restorePause()
vhlz.pauseArmed = false

pjj.endIfWrongMode(false)
pjj.hardPick(false)

return
end

if not vrui() then
return
end

vhlz.paused = true
local hf = flc()

wc:Notify({
Title = _d("LAcGDRM3CBoXAEJcBQE"),
Description = hf and _d("OR0FB0FDFRgcUhJSFhQIFlw") or _d("PwccQloQRwEbBAcfQwUYBlIMXEMFHxcTCRMBEhkGHQwTBQgYHBZM"),
Lifetime = 5,
})
end,
}, _d("DAcGDWwXCBoXAA"))

vhlz.nightmareToggle = kdpf:Toggle({
Name = _d("LAcGDRMtDgoaBg9SEQJNJh0VVhE"),
Default = false,
Callback = function(ipyi)
if vhlz.quiet then
return
end

vhlz.nightmare = ipyi

if not ipyi then

vhlz.enabled = false
vhlz.pending = false
vhlz.pendingUntil = 0

pjj.hardPick(false)

pcall(function()
vhlz.quiet = true
vhlz.ui:UpdateState(false)
vhlz.quiet = false
end)

if vrui() then
vhlz.paused = true
local isg = flc()

wc:Notify({
Title = _d("LAcGDRMtDgoaBg9SEQJNJh0VVhFHAhQU"),
Description = isg and _d("IxsVCkcOBh8XUhBGDUcdEwcRVgdJ") or _d("PwccQloQRwEbBAcfQwUYBlIMXEMFHxcTCRMBEhkGHQwTBQgYHBZM"),
Lifetime = 5,
})
end

return
end

if pgxj.enabled and pgxj.role[1] ~= _d("GR0FB0E") then
vhlz.nightmare = false

pcall(function()
vhlz.quiet = true
vhlz.nightmareToggle:UpdateState(false)
vhlz.quiet = false
end)

pcall(function()
wc:Dialog({
Title = _d("LAcGDRMtDgoaBg9SEQJNJh0VVhFHAhQU"),
Description = _d("IxsVCkcOBh8XUjZcFAIfUhENRg0THlITERM3CBoXAEJaDUceHh0WE1JLTRMcBhMaCBgAUhFfDBNNQ1ILQEMIA1I") .. pgxj.roleName(1) .. _d("TQAbBVsXRwMdBUwTMAIZUgEOXBdHXFIGDRM3CBoXAEJVChUeBlw"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})
end)

return
end

pcall(function()
vhlz.quiet = true
vhlz.ui:UpdateState(false)
vhlz.quiet = false
end)

vhlz.enabled = true
vhlz.manualPause = false
vhlz.paused = false

pjj.restorePause()
vhlz.pauseArmed = false

pjj.endIfWrongMode(true)
pjj.hardPick(true)

vhlz.pending = false
vhlz.pendingUntil = 0
end,
}, _d("DAcGDWwNDgoaBg9SEQIyBh0VVhE"))

kdpf:Header({
Name = _d("LAcGDRMzBhgBF0JnDBAIAA"),
})

local yf

yf = kdpf:Toggle({
Name = _d("LAcGDRMzBhgBF0J1DwgCAA"),
Default = false,
Callback = function(bs)
gsh.triggered = false

if bs and gsh.floor <= 0 then
gsh.enabled = false

pcall(function()
yf:UpdateState(false)
end)

pcall(function()
cb.SaveClientData:FireServer({ pauseInfiniteEnabled = false })
end)

wc:Dialog({
Title = _d("LAcGDRMzBhgBF0J1DwgCAA"),
Description = _d("PhcGQlJDFwwHAQcTBQsCHQBCUgEIGxdSUhMFDh8BBkIeQyYYBh1CYwISHhdSNlwUAh9SHAdWBxRNBh1CWA0IGlIFClYRAk0GHUJAFwgdXA"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})

return
end

gsh.enabled = bs

pcall(function()
cb.SaveClientData:FireServer({
pauseInfiniteEnabled = bs,
pauseInfiniteAt = gsh.floor,
})
end)
end,
}, _d("DAcGDWwTBhgBFz1VDwgCAA"))

kdpf:Input({
Name = _d("PRMHEVZDBhlSFA5cDBU"),
Placeholder = _d("CFwVTBNWVw"),
AcceptedCharacters = _d("IwcfAFYRFA"),
Callback = function(gqy)
local ajq = tonumber(gqy) or 0

if ajq < 0 then
ajq = 0
end

if ajq == gsh.floor then
return
end

gsh.floor = ajq
gsh.triggered = false

if ajq <= 0 and gsh.enabled then
gsh.enabled = false

pcall(function()
yf:UpdateState(false)
end)
end

pcall(function()
cb.SaveClientData:FireServer({
pauseInfiniteAt = ajq,
pauseInfiniteEnabled = gsh.enabled,
})
end)
end,
}, _d("HRMHEVY8BhktFA5cDBU"))

kdpf:Button({
Name = _d("PRMHEVZDMwIFFxA"),
Callback = function()
local rhoa = false

pcall(function()
rhoa = flc()
end)

if rhoa then

vhlz.manualPause = true
return
end

wc:Dialog({
Title = _d("PRMHEVZDMwIFFxA"),
Description = _d("Ix1SDloVAk0GHRVWEUcfBxxCRwxHHRMHEVZDFQQVGhYTDQgaXA"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})
end,
})

kdpf:Header({
Name = _d("LAcGDRMkDhsXUjdD"),
})

mrj.toggle = kdpf:Toggle({
Name = _d("LAcGDRMkDhsXUjdD"),
Default = false,
Callback = function(grb)
mrj.triggered = false

if grb and mrj.floor <= 0 then
mrj.enabled = false

pcall(function()
mrj.toggle:UpdateState(false)
end)

wc:Dialog({
Title = _d("LAcGDRMkDhsXUjdD"),
Description = _d("PhcGQlJDAAQEF0JGE0cLHh0NQUMGDx0EBxNTRwsbABFHQ0pNMwcWXEMgBAQXQmYTRwMXFwZAQxMCUhkMXBRHGhoXEFZDEwJSARZcE0k"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})

return
end

mrj.enabled = grb
end,
}, _d("DAcGDWwEDhsXLRdD"))

kdpf:Input({
Name = _d("KhsEBxMWF00dHEJVDwgCAA"),
Placeholder = _d("CFwVTBNUVw"),
AcceptedCharacters = _d("IwcfAFYRFA"),
Callback = function(ota)
local vcj = tonumber(ota) or 0

if vcj < 0 then
vcj = 0
end

if vcj == mrj.floor then
return
end

mrj.floor = vcj
mrj.triggered = false

if vcj <= 0 and mrj.enabled then
mrj.enabled = false

pcall(function()
mrj.toggle:UpdateState(false)
end)
end
end,
}, _d("ChsEB2wWFzIdHD1VDwgCAA"))

mrj.weatherToggle = kdpf:Toggle({
Name = _d("LAcGDRMEDhsXUhdDQwgDUgUHUhcPCAA"),
Default = false,
Callback = function(ktil)
mrj.weatherTriggered = false

if ktil and next(mrj.weathers) == nil then
mrj.weatherEnabled = false

pcall(function()
mrj.weatherToggle:UpdateState(false)
end)

wc:Dialog({
Title = _d("OhcTFlsGFU01GxRWQzId"),
Description = _d("ORsRCRMCE00eFwNAF0cCHBdCRAYGGRoXEBMBAgEdBUJVChUeBlJPEwwTBRcAFVoQAk0GGgdBBkcEAVIMXBcPBBwVQkcMRwobBAcTFhdNHRxM"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})

return
end

mrj.weatherEnabled = ktil
end,
}, _d("DAcGDWwEDhsXLRdDPAgDLQUHUhcPCAA"))

kdpf:Dropdown({
Name = _d("KhsEBxMWF00FFwNHCwIfAQ"),
Multi = true,
Required = false,
Options = { _d("OQsCClwMCQ"), _d("Lx4bGEkCFQk"), _d("IRsVCkcNDgMV"), _d("OhscBkAXCB8f"), _d("PhoTEFoNAAwc"), _d("PhscBUYPBh8bBhs"), _d("IB0cA0EAD002HQ9SCgk"), _d("Ox0bBg"), _d("IBMWBxMKCU06FwNFBgk"), _d("IBMcBVI") },
Callback = function(edbv)
mrj.weathers = {}

if type(edbv) == _d("GRMQDlY") then
for wka, ieu in pairs(edbv) do
if ieu then
mrj.weathers[wka] = true
end
end
end

mrj.weatherTriggered = false
end,
}, _d("ChsEB2wWFzIFFwNHCwIfAQ"))

kdpf:Input({
Name = _d("IBscC14WCk0UHg1cERQ"),
Placeholder = _d("XVJPQlINHk0UHg1cEQ"),
AcceptedCharacters = _d("IwcfB0EKBA"),
Callback = function(lppx)
local brur = math.floor(tonumber(lppx) or 0)

if brur < 0 then
brur = 0
end

mrj.weatherMinFloor = brur
mrj.weatherTriggered = false
end,
}, _d("ABscC14WCjIUHg1cERQ"))

kdpf:Button({
Name = _d("KhsEBxM2F00mHRVWEQ"),
Callback = function()
if not vrui() then
wc:Dialog({
Title = _d("KhsEBxM2F00mHRVWEQ"),
Description = _d("Ix1SDloVAk0GHRVWEUcfBxxCRwxHChsEBxMWF00AGwVbF0cDHQVM"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})

return
end

wc:Dialog({
Title = _d("KhsEBxM2F00mHRVWEQ"),
Description = _d("Kx0ABFYKE00GGgcTABIfABcMR0MTAgUXEBMREgNNUjZbChRNERMMXQwTTRAXQkYNAwIcF0w"),
Buttons = {
{
Name = _d("Kh1SAFIADA"),
},
{
Name = _d("KhsEBxMWFw"),
Callback = function()
local wkx = false

pcall(function()
wkx = fulr()
end)

if wkx then
return
end

task.defer(function()
task.wait(0.3)

wc:Dialog({
Title = _d("KhsEBxM2F00mHRVWEQ"),
Description = _d("Ix1SBVoVAk0HAkJRFhMZHRxCUg0UGhcAB1dDSk0GGgcTERIDUh8DSkMGAQAXA1caRw8XUg1FBhVD"),
Buttons = {
{
Name = _d("Kh0GQloX"),
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

kdpf:Button({
Name = _d("LhoXAVhDCwIBAUJbChQZHQAb"),
Callback = function()
local kkqy = pjj.remote(_d("PxcDF1YQEzkdBQdBKw4eBh0QSg"))

if not kkqy then
wc:Dialog({
Title = _d("IR0BERMrDh4GHRBK"),
Description = _d("ORobERMBEgQeFkJbAhRNHB1CRwwQCABSCloQEwIAC0JBBgoCBhdM"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})

return
end

pjj.standDown(pjj.historyOpen)

pcall(function()
kkqy:FireServer()
end)
end,
})

kdpf:Button({
Name = _d("LhoXAVhDAAgcFxBSFw4CHAE"),
Callback = function()

local ovtp = dw:FindFirstChild(_d("OR0FB0ExAh4HHhZ0Fg4"))
local qyhb = ovtp and ovtp:FindFirstChild(_d("IgIXDHQGCSUbARZcER4"))

if not qyhb then
wc:Dialog({
Title = _d("KhccB0ECEwQdHBE"),
Description = _d("ORobERMBEgQeFkJbAhRNHB1CVAYJCAATFloMCR5SBQtdBwgaXA"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})

return
end

pjj.standDown(pjj.generationOpen)

pcall(function()
qyhb:Fire()
end)
end,
})

ydsj.bossTeams.towerSection = oya:Section({
Side = _d("IRcUFg"),
})

ydsj.bossTeams.towerSection:Header({
Name = _d("OR0FB0FDMwgTHxE"),
})

ydsj.bossTeams.towerSection:Paragraph({
Header = _d("JR0FQkcMEAgAUhZWAgoeUgUNQQg"),
Body = _d("IhQUWBMGBg4aUhBGDUcYARcRExQPDAYXFFYRRxkXEw8TChMeUgEOXBdHDB4AB1IHHk0aHQ5XEElneD0MCUMCDBEaQkcMEAgAUgBWDwgaUgAXXRBHGhsGChMXDwhSBgdSDkcdGxEJVgdHCx0AQloXSQ"),
})

ydsj.bossTeams.towerToggle = ydsj.bossTeams.towerSection:Toggle({
Name = _d("OR0FB0FDMwgTHxE"),
Default = false,
Callback = function(puuh)
ydsj.bossTeams.towersOn = puuh
end,
}, _d("GR0FB0E8EwgTHxE"))

for ps, fw in ipairs({
{ kind = _d("GR0FB0E"), name = _d("JBwUC10KExRSMQNAFwsIUl1CfQoABQYfA0EG") },
{ kind = _d("BRMABlAMFQg"), name = _d("JAEeA10HRyUTAAZQDBUI") },
}) do
local hmpr = math.clamp(math.floor(tonumber(ydsj.bossTeams.towerPicked[fw.kind]) or 1), 1, 4)

ydsj.bossTeams.towerPicked[fw.kind] = hmpr

ydsj.bossTeams.towerUi[fw.kind] = ydsj.bossTeams.towerSection:Dropdown({
Name = fw.name,
Search = false,
Multi = false,
Required = false,
Default = hmpr,
Options = { _d("ORcTDxNS"), _d("ORcTDxNR"), _d("ORcTDxNQ"), _d("ORcTDxNX") },
Callback = function(tvgd)
local lyhy = type(tvgd) == _d("GRMQDlY") and tvgd[1] or tvgd
local ofh = type(lyhy) == _d("HgYAC10E") and tonumber(lyhy:match(_d("RVcWSRo"))) or nil

if ofh then
ydsj.bossTeams.towerPicked[fw.kind] = ofh
ydsj.bossTeams.save()
end

pcall(function()
ydsj.bossTeams.towerUi[fw.kind]:UpdateName(fw.name .. _d("TZDywBM") .. (lyhy or _d("ORcTDxNS")))
end)
end,
}, _d("GRcTD2wXCBoXAD0") .. fw.kind)

pcall(function()
ydsj.bossTeams.towerUi[fw.kind]:UpdateSelection(_d("ORcTDxM") .. tostring(hmpr))
ydsj.bossTeams.towerUi[fw.kind]:UpdateName(fw.name .. _d("TZDywBM3AgwfUg") .. tostring(hmpr))
end)
end

ydsj.bossTeams.towerSection:Header({
Name = _d("PgUTEhMMCU0UHg1cEQ"),
})

ydsj.bossTeams.towerSection:Paragraph({
Header = _d("PgUTEhMXAgwfUg1dQwZNFB4NXBE"),
Body = _d("ORoXQlQCCghVAUJcFAlNAQUDQ09HAx0GQlJDFwwHAQcdQyIMERpCQRYLCFIbERMCRwseHQ1BQwYDFlIWWwZHGRcTDxMUCB8cUgRBDApNBhoDR0MBAR0dEBMMCUFSBRBaFxMIHFILXRcITQYaBxMEBgAXVRETMAIZBhsMVBBHQExSI0YXCE0mFwNeQzQaEwJCAkMGAxZSUB9DFAJSBgpWQwAMHxdCXgIMCAFSFlsGRx4FGxZQC0cEBgEHXwVHGhoXDBMCRx8HHEJAFwYfBgFCRwsGGVIUDlwMFUNSPA1HCw4DFVILQEMUGR0CElYHRwwcFkJHCwJNAAcMEwgCCAIBQloXFE0BHg1HTW1nM1IBUhATARdSEEYNRwoXBhETFw8IUgEDXgZHHgUbFlALRwsAHQ8TFw8EAVISUg0CAV5SAFYABhgBF0JHCwJNFRMPVkQUTR0FDBMQEAwCUg1dDx5NFBsQVhBHBBwBC1cGRyQcFAtdChMIUiANXA4UQ3h4LlYCEQhSE0JVDwgCAFIDR0NXTQYdQkcWFQNSBgpSF0cfBx4HEwwBC1w"),
})

function ydsj.bossTeams.swapStatusText()
local jf = ydsj.bossTeams.swap
local kdv = {}

if jf.on then
table.insert(kdv, _d("IhxSTxMUFQQGBgddQxMCUgYKVkMADB8XRUBDJhgGHUJnBgYAUiEVUhNHHx0FER0"))
else
table.insert(kdv, _d("IhQUQh5DEwUXUgVSDgJKAVIRRAIXTRsBQl8GARlSEw5cDQJD"))
end

local egt = {
{ index = 1, floor = jf.floor, team = jf.team },
{ index = 2, floor = jf.floor2, team = jf.team2 },
}

for yiie, adp in ipairs(egt) do
if adp.floor > 0 then
table.insert(kdv, string.format(_d("PgUTEhNGA1dSJgdSDkdIFlIEQQwKTRQeDVwRR0gW"), adp.index, adp.team, adp.floor))
else
table.insert(kdv, string.format(_d("PgUTEhNGA1dSHQRVQ08DHVIEXwwIH1IBB0dK"), adp.index))
end
end

if ydsj.bossTeams.swapMessage ~= _d("") then
table.insert(kdv, ydsj.bossTeams.swapMessage)
end

return table.concat(kdv, _d("Zw"))
end

function ydsj.bossTeams.paintSwap()
pcall(function()
ydsj.bossTeams.swapStatus:UpdateBody(ydsj.bossTeams.swapStatusText())
end)
end

ydsj.bossTeams.swapToggle = ydsj.bossTeams.towerSection:Toggle({
Name = _d("PgUTEhMXAgwfUg1dQwEBHR0Q"),
Default = ydsj.bossTeams.swap.on,
Callback = function(bgm)
ydsj.bossTeams.swap.on = bgm

ydsj.bossTeams.swapReset()

ydsj.bossTeams.swapApply()
ydsj.bossTeams.save()
end,
}, _d("HgUTEmwXAgwfLQ1dPAEBHR0Q"))

ydsj.bossTeams.swapInput = ydsj.bossTeams.towerSection:Input({
Name = _d("Kx4dDUE"),
Placeholder = _d("CFwVTBNWV11SWlITXkcCFBRL"),
AcceptedCharacters = _d("IwcfB0EKBA"),
Callback = function(nmo)
local ssy = tonumber(type(nmo) == _d("HgYAC10E") and nmo:match(_d("RVcWSRo")) or nmo)

if ssy then
ydsj.bossTeams.swap.floor = ssy
ydsj.bossTeams.swapReset()
ydsj.bossTeams.swapApply()
ydsj.bossTeams.save()
end
end,
}, _d("Cx4dDUE"))

ydsj.bossTeams.swapDropdown = ydsj.bossTeams.towerSection:Dropdown({
Name = _d("PgUTEhMXCA"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(ydsj.bossTeams.swap.team) or 1), 1, 4),
Options = { _d("ORcTDxNS"), _d("ORcTDxNR"), _d("ORcTDxNQ"), _d("ORcTDxNX") },
Callback = function(shq)
local gdz = type(shq) == _d("GRMQDlY") and shq[1] or shq
local bom = type(gdz) == _d("HgYAC10E") and tonumber(gdz:match(_d("RVcWSRo"))) or nil

if bom then
ydsj.bossTeams.swap.team = bom
ydsj.bossTeams.swapReset()
ydsj.bossTeams.swapApply()
ydsj.bossTeams.save()
end

pcall(function()
ydsj.bossTeams.swapDropdown:UpdateName(_d("PgUTEhMXCE2Q8sAT") .. (gdz or _d("ORcTDxNS")))
end)

ydsj.bossTeams.paintSwap()
end,
}, _d("HgUTEmwXCA"))

ydsj.bossTeams.swapInput2 = ydsj.bossTeams.towerSection:Input({
Name = _d("Kx4dDUFDVQ"),
Placeholder = _d("CFwVTBNSV11CUkoDQ1pNHRQEGg"),
AcceptedCharacters = _d("IwcfB0EKBA"),
Callback = function(xtnf)
local efyy = tonumber(type(xtnf) == _d("HgYAC10E") and xtnf:match(_d("RVcWSRo")) or xtnf)

if efyy then
ydsj.bossTeams.swap.floor2 = efyy
ydsj.bossTeams.swapReset()
ydsj.bossTeams.swapApply()
ydsj.bossTeams.save()
end
end,
}, _d("Cx4dDUE8VQ"))

ydsj.bossTeams.swapDropdown2 = ydsj.bossTeams.towerSection:Dropdown({
Name = _d("PgUTEhMXCE1A"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(ydsj.bossTeams.swap.team2) or 1), 1, 4),
Options = { _d("ORcTDxNS"), _d("ORcTDxNR"), _d("ORcTDxNQ"), _d("ORcTDxNX") },
Callback = function(knw)
local dwza = type(knw) == _d("GRMQDlY") and knw[1] or knw
local krw = type(dwza) == _d("HgYAC10E") and tonumber(dwza:match(_d("RVcWSRo"))) or nil

if krw then
ydsj.bossTeams.swap.team2 = krw
ydsj.bossTeams.swapReset()
ydsj.bossTeams.swapApply()
ydsj.bossTeams.save()
end

pcall(function()
ydsj.bossTeams.swapDropdown2:UpdateName(_d("PgUTEhMXCE1AUoCzwUc") .. (dwza or _d("ORcTDxNS")))
end)

ydsj.bossTeams.paintSwap()
end,
}, _d("HgUTEmwXCDJA"))

ydsj.bossTeams.swapStatus = ydsj.bossTeams.towerSection:Paragraph({
Header = _d("PgUTEhMQEwwGBxE"),
Body = ydsj.bossTeams.swapStatusText(),
})

pcall(function()
local nbnf = math.clamp(math.floor(tonumber(ydsj.bossTeams.swap.team) or 1), 1, 4)
local xgr = math.clamp(math.floor(tonumber(ydsj.bossTeams.swap.team2) or 1), 1, 4)

ydsj.bossTeams.swapDropdown:UpdateSelection(_d("ORcTDxM") .. tostring(nbnf))
ydsj.bossTeams.swapDropdown:UpdateName(_d("PgUTEhMXCE2Q8sATNwIMH1I") .. tostring(nbnf))
ydsj.bossTeams.swapDropdown2:UpdateSelection(_d("ORcTDxM") .. tostring(xgr))
ydsj.bossTeams.swapDropdown2:UpdateName(_d("PgUTEhMXCE1AUoCzwUc5FxMPEw") .. tostring(xgr))
end)

task.spawn(function()
local pta = ydsj.bossTeams.swapStatusText()

while zybs() do
local ahya = ydsj.bossTeams.swapStatusText()

if ahya ~= pta then
pta = ahya
ydsj.bossTeams.paintSwap()
end

task.wait(2)
end
end)

if ydsj.bossTeams.swap.on then
task.delay(2, function()
pcall(ydsj.bossTeams.swapApply)
end)
end

ydsj.bossTeams.section = oya:Section({
Side = _d("PxsVCkc"),
})

ydsj.bossTeams.section:Header({
Name = _d("Lx0BERM3AgwfAQ"),
})

ydsj.bossTeams.section:Paragraph({
Header = _d("JR0FQlEMFB5SBgdSDhRNBR0QWA"),
Body = _d("IhQUWBMNCBkaGwxUQw4eUgEVWhcEBRcWQh5DAhsXABsTBQ4KGgZCRhACHlIGClZDEwgTH0JKDBJNEx4QVgIDFFIaA0UGRwEbHAdXQxIdXlIVWwoEBVIbERMXDwhSIQ5cF0dcUgYHUg5HGBweB0AQRx4eHRYTUUcZExkHQEMTBRdSAFIXEwEXXGg5LAlXUhcDUAtHDAAXAxMBAgEdBUJVCgAFBgFCRAoTBVIGClZDEwgTH0JKDBJNAhsBWEMBAgBSC0dN"),
})

ydsj.bossTeams.toggle = ydsj.bossTeams.section:Toggle({
Name = _d("Lx0BERM3AgwfAQ"),
Default = false,
Callback = function(jiky)
ydsj.bossTeams.enabled = jiky
end,
}, _d("Dx0BEWwXAgwfAQ"))

for fwv, fbdv in ipairs(xgbi) do
local xfji = ydsj.bossTeams.picked[fbdv.id] or 1

xfji = math.clamp(math.floor(tonumber(xfji) or 1), 1, 4)
ydsj.bossTeams.picked[fbdv.id] = xfji

ydsj.bossTeams.ui[fbdv.id] = ydsj.bossTeams.section:Dropdown({
Name = fbdv.name,
Search = false,
Multi = false,
Required = false,

Default = xfji,
Options = { _d("ORcTDxNS"), _d("ORcTDxNR"), _d("ORcTDxNQ"), _d("ORcTDxNX") },
Callback = function(sbw)
local xqcc = type(sbw) == _d("GRMQDlY") and sbw[1] or sbw
local fwe = type(xqcc) == _d("HgYAC10E") and tonumber(xqcc:match(_d("RVcWSRo"))) or nil

if fwe then
ydsj.bossTeams.picked[fbdv.id] = fwe

ydsj.bossTeams.save()
end

pcall(function()
ydsj.bossTeams.ui[fbdv.id]:UpdateName(fbdv.name .. _d("TZDywBM") .. (xqcc or _d("ORcTDxNS")))
end)
end,
}, _d("GRcTD2wUCB8eFj0") .. fbdv.id)

pcall(function()
ydsj.bossTeams.ui[fbdv.id]:UpdateSelection(_d("ORcTDxM") .. tostring(xfji))
ydsj.bossTeams.ui[fbdv.id]:UpdateName(fbdv.name .. _d("TZDywBM3AgwfUg") .. tostring(xfji))
end)
end

ydsj.bossTeams.raidSection = oya:Section({
Side = _d("PxsVCkc"),
})

ydsj.bossTeams.raidSection:Header({
Name = _d("PxMbBhM3AgwfAQ"),
})

ydsj.bossTeams.raidSection:Paragraph({
Header = _d("JR0FQkECDglSBgdSDhRNBR0QWA"),
Body = _d("IhQUWBMRBgQWAUJGEAJNBRoDRwYRCABSFlYCCk0GGgcTEAsCBlIDXxECDBYLQlsMCwkBXGg5LAlXUhcDUAtHHxMbBhMBAgEdBUJaEEcLHQcFWxdHGhsGChMXDwhSBgdSDkcdGxEJVgdHCx0AQloXSQ"),
})

ydsj.bossTeams.raidToggle = ydsj.bossTeams.raidSection:Toggle({
Name = _d("PxMbBhM3AgwfAQ"),
Default = false,
Callback = function(fkn)
ydsj.bossTeams.raidsOn = fkn
end,
}, _d("HxMbBmwXAgwfAQ"))

for honv, egro in ipairs(ven.Raids) do
if egro.BossTitle and egro.id then
local goft = ydsj.bossTeams.raidPicked[egro.id] or 1

goft = math.clamp(math.floor(tonumber(goft) or 1), 1, 4)
ydsj.bossTeams.raidPicked[egro.id] = goft

ydsj.bossTeams.raidUi[egro.id] = ydsj.bossTeams.raidSection:Dropdown({
Name = egro.BossTitle,
Search = false,
Multi = false,
Required = false,
Default = goft,
Options = { _d("ORcTDxNS"), _d("ORcTDxNR"), _d("ORcTDxNQ"), _d("ORcTDxNX") },
Callback = function(kwuh)
local ezw = type(kwuh) == _d("GRMQDlY") and kwuh[1] or kwuh
local snu = type(ezw) == _d("HgYAC10E") and tonumber(ezw:match(_d("RVcWSRo"))) or nil

if snu then
ydsj.bossTeams.raidPicked[egro.id] = snu
ydsj.bossTeams.save()
end

pcall(function()
ydsj.bossTeams.raidUi[egro.id]:UpdateName(egro.BossTitle .. _d("TZDywBM") .. (ezw or _d("ORcTDxNS")))
end)
end,
}, _d("GRcTD2wRBgQWLQ") .. egro.id)

pcall(function()
ydsj.bossTeams.raidUi[egro.id]:UpdateSelection(_d("ORcTDxM") .. tostring(goft))
ydsj.bossTeams.raidUi[egro.id]:UpdateName(egro.BossTitle .. _d("TZDywBM3AgwfUg") .. tostring(goft))
end)
end
end

task.spawn(function()
local hzmz = xdit()

while zybs() do
local jctv = xdit()

if pgxj.enabled and pgxj.statusText then
jctv = pgxj.statusText()
end

jctv = jctv .. _d("Z3ghB0EVAh9SBxIT") .. yzwr()

if jctv ~= hzmz then
hzmz = jctv
pcall(function()
fehd:UpdateBody(jctv)
end)
end
task.wait(0.5)
end
end)

task.spawn(function()
while zybs() do
for coqd, ianj in ipairs({ _d("LxMGFl8GIBgb"), _d("LxMGFl8GIBgbQA") }) do
local yt = dw:FindFirstChild(ianj)
local bext = yt and yt:FindFirstChild(_d("LxMGFl8GNA4AFwdd"))
local tyy = yt and yt:FindFirstChild(_d("JRsWB3ECExkeFyBGFxMCHA"))

if bext and bext.Visible and tyy and not tyy.Visible then
tyy.Visible = true
end
end

task.wait(0.5)
end
end)

task.spawn(function()
local pyn = false

while zybs() do
if nda then
local mlcg = dw:FindFirstChild(_d("OR0FB0ExAh4HHhZ0Fg4"))
local prqx = mlcg and mlcg:FindFirstChild(_d("PxcBF18XIR8THwc"))
local kyd = mlcg and mlcg:FindFirstChild(_d("KhccB0ECEwQcFSRBAgoI"))

if kyd and kyd.Visible then
kyd.Visible = false
end

local ocvh = prqx and prqx.Visible or false

if ocvh and not pyn then
local nxh = prqx:FindFirstChild(_d("Lh4dEVYhEhkGHQw"))
local vzf = false

if nxh then
for bivp, uyu in ipairs({ _d("IB0HEVYhEhkGHQwCIAsEERk"), _d("LBEGC0UCEwgW") }) do
local mauf = nxh[uyu]
if mauf then
for rto, xhsl in ipairs(getconnections(mauf)) do
pcall(function()
xhsl:Fire()
end)
vzf = true
end
end
end
end

if not vzf then
prqx.Visible = false
else
task.spawn(function()
task.wait(0.3)
if prqx.Parent and prqx.Visible then
prqx.Visible = false
end
end)
end
end

pyn = ocvh
else
pyn = false
end

task.wait(0.2)
end
end)

local yyo = {}

function yyo.active()
return ydsj.enabled or ydsj.story
end

function yyo.towerHolds()
if pgxj.enabled then
return false
end

if bhkm.run.enabled then
return true
end

return vhlz.enabled and not vhlz.paused
end

function yyo.ready(csoz, mjb, uqkx)
local cros = ydsj.unlocked[csoz]

return (not cros or cros[mjb] ~= false) and hp(csoz, mjb) <= uqkx
end

function yyo.hasReadyTarget()
local ulo = os.time()

for ih, brl in ipairs(gaxt()) do
for atob, lpz in ipairs(ena()) do
if yyo.ready(brl, lpz, ulo) then
return true
end
end
end

return false
end

function yyo.backOff(vdzd, wozo)
hxdy(vdzd, wozo, os.time() + 5)
end

function yyo.findTarget()
for uui, nut in ipairs(gaxt()) do
local ry = zjlj(nut)
local nrv = os.time() - (ydsj.lastFetch[nut] or 0) > 60

if nrv and ry and not ydsj.walkToNpc then
ldsv(ry)
task.wait(0.3)
ga(nut)
end

for pgjn, yobc in ipairs(ena()) do
if yyo.ready(nut, yobc, os.time()) then
return nut, yobc
end
end
end

return nil
end

function ydsj.bossTeams.slotForFight()
if pgxj.hasSlot2 == false then
return 1
end

if pgxj.busy(2) then
return 1
end

return 2
end

function ydsj.bossTeams.slotTeam(zt)
local gblr = dw:FindFirstChild(_d("PhcGFloNAB41Bws"))
local cjnk = gblr and gblr:FindFirstChild(_d("Ph4dFmcGBgA") .. zt .. _d("LwcGFlwN"), true)
local ibjt = cjnk and cjnk.Text

return ibjt and tonumber(ibjt:match(_d("RVcWSRo"))) or nil
end

function ydsj.bossTeams.applyTeam(ymv, zpu)
ymv = tonumber(ymv)

if not ymv then
return false
end

zpu = tonumber(zpu) or ydsj.bossTeams.slotForFight()

if pgxj.busy(zpu) then
return false
end

ydsj.bossTeams.lastSlot = zpu

local ilc = ydsj.bossTeams.slotTeam(zpu) or ydsj.bossTeams.applied[zpu]

if ilc == ymv then
return true
end

local jau = pjj.remote(_d("PgUbFlALMwgTHw"))

if not jau then
return false
end

local ghym = pcall(function()
jau:FireServer(ymv, false, zpu)
end)

ydsj.bossTeams.applied[zpu] = ymv
task.wait(0.2)

return ghym
end

function ydsj.bossTeams.apply(zldl)
if not ydsj.bossTeams.enabled then
return
end

local bwbf = ydsj.bossTeams.worldOf[zldl]
local ecy = bwbf and ydsj.bossTeams.picked[bwbf]

if not ecy then
return
end

ydsj.bossTeams.applyTeam(ecy)
end

function ydsj.bossTeams.applyTower(ljgm, wmqz)
if not ydsj.bossTeams.towersOn then
return false
end

local zsez = ydsj.bossTeams.towerPicked[ljgm]

local dnio = ydsj.bossTeams.swapFired[ljgm]

if ydsj.bossTeams.swap.on and type(dnio) == _d("GRMQDlY") then
zsez = dnio[2] or dnio[1] or zsez
end

if not zsez then
return false
end

return ydsj.bossTeams.applyTeam(zsez, wmqz)
end

function ydsj.bossTeams.applyRaid(fr)
if not ydsj.bossTeams.raidsOn then
return
end

local wxy = fr and ydsj.bossTeams.raidPicked[fr]

if not wxy then
return
end

ydsj.bossTeams.applyTeam(wxy)
end

function yyo.fight(oyig, iix)
local tz = zjlj(oyig)

if not tz then
yyo.backOff(oyig, iix)
return false
end

local vrc

if ydsj.walkToNpc then
local bvt = cu[oyig]

if bvt then
cb.TeleportToWorld:FireServer(bvt)
task.wait(2.5)

local ujg = zjlj(oyig) or tz
local dof = ujg:GetPivot()

vrc = myb(dof.Position + dof.LookVector * 6, function()
return not yyo.active() or not ydsj.walkToNpc
end)

if vrc then
ga(oyig)
vrc = yyo.ready(oyig, iix, os.time())
end
end
else
vrc = ldsv(tz)
end

if not vrc then
yyo.backOff(oyig, iix)
return false
end

task.wait(0.4)
ydsj.bossTeams.apply(oyig)
ydsj.activeDifficulty[oyig] = iix
cb.SetNPCDifficulty:FireServer(oyig, iix)
task.wait(0.4)

ydsj.currentBattle = {
npcId = oyig,
difficulty = iix,
}
cp = oyig
kwo = iix
cb.StartNPCBattle:FireServer(oyig)
hxdy(oyig, iix, os.time() + 10)
ydsj.battlePending = true
ydsj.battlePendingUntil = os.time() + 30
task.wait(1)

return true
end

ydsj.workPending = function()

if dlzc.misc and dlzc.misc.cards and dlzc.misc.cards.inFlight then
return true
end

if not yyo.active() then
return false
end

if ydsj.battlePending then
return true
end

local pyg = pgxj.npcSlot()

if pyg and pgxj.busy(pyg) then
return true
end

return yyo.hasReadyTarget()
end

task.spawn(function()
while zybs() do

local kprj = (pgxj.enabled and (dlzc.enabled or zqj.enabled or dlzc.worldBoss.enabled))
or yyo.towerHolds()
or not pgxj.slotFree(pgxj.npcSlot())

or (dlzc.misc and dlzc.misc.cards and dlzc.misc.cards.inFlight)
or (ydsj.battlePending and os.time() < ydsj.battlePendingUntil)

if yyo.active() and not kprj then
local pu, mou = yyo.findTarget()

if pu then
yyo.fight(pu, mou)
end
end

task.wait(0.5)
end
end)

task.spawn(function()
while zybs() do

local ssql = {}

if dlzc.enabled then
local udna = pgxj.roleSlot(_d("AwIR"))

if udna then
table.insert(ssql, udna)
end

if pgxj.splitNpc() and udna ~= 2 then
table.insert(ssql, 2)
end
end

local auol = lkft:FindFirstChild(_d("PxMbBmAXBhkHAQ"))

if #ssql > 0 and auol and (not zqj.enabled or pgxj.splitNpc()) and (pgxj.enabled or not ydsj.workPending()) then
for es, vwt in ipairs(ssql) do
local socq = auol

local cjoq = dlzc.bossFor(vwt)
local rlyp = socq:GetAttribute(_d("JAE9ElYN")) == true or socq:GetAttribute(_d("Kx0AAVYH")) == true
local kdp = cjoq ~= nil and socq:GetAttribute(_d("PxcTBko8") .. cjoq) == true
local uqef = cjoq and nct(cjoq)

if cjoq and dlzc.pending[cjoq] and os.time() >= (dlzc.pendingUntil[cjoq] or 0) then
dlzc.pending[cjoq] = false
dlzc.cleared[cjoq] = nil
end

if cjoq and pgxj.slotFree(vwt) and rlyp and kdp and dlzc.cleared[cjoq] ~= uqef and not dlzc.pending[cjoq] then
local sam = bo[cjoq]
local xer = sam and zjlj(sam)
local wzjm = false

if xer then
if dlzc.walkToBoss then
local znj = pdk[cjoq]
local zzgl = as.Character and as.Character:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))
local kasi = xer:GetPivot().Position
local qsxi = zzgl and (zzgl.Position - kasi).Magnitude <= 15

if qsxi then
wzjm = true
elseif znj then
cb.TeleportToWorld:FireServer(znj)

local qxm = os.clock()
while os.clock() - qxm < 2.5 and dlzc.enabled do
task.wait(0.1)
end

if dlzc.enabled then
local zav = zjlj(sam) or xer
local zwne = zav:GetPivot()
local uotn = zwne.Position + zwne.LookVector * 6
wzjm = cj(uotn, dlzc.walkSpeed, function()
return not dlzc.enabled or not dlzc.walkToBoss
end)
end
end

if not wzjm then
wzjm = ldsv(xer)
end
else
wzjm = ldsv(xer)
end

if wzjm then
task.wait(0.5)
end
end

if wzjm then
dlzc.inFlight[cjoq] = vwt
dlzc.pending[cjoq] = true
dlzc.pendingUntil[cjoq] = os.time() + 15
dlzc.cleared[cjoq] = uqef

local wza = dlzc.difficulties[1] or _d("Ax0AD1IP")
local zcqn = dlzc.progress[cjoq]

if zcqn then
local qyuk = zcqn.unlocked
local sqh = zcqn.cooldowns

for on, pids in ipairs(dlzc.difficulties) do
local pmd = not qyuk or qyuk[pids] ~= false
local ye = sqh and tonumber(sqh[pids]) or 0

if pmd and ye <= 0 then
wza = pids
break
end
end
end

ydsj.bossTeams.applyRaid(cjoq)
cb.SetRaidDifficulty:FireServer(wza, cjoq)
task.wait(0.3)
cb.StartRaidBattle:FireServer(cjoq)
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while zybs() do
local cde = zqj.inBattle and os.time() < zqj.inBattleUntil

if zqj.enabled and (pgxj.enabled or not ydsj.workPending()) and not cde and pgxj.slotFree(pgxj.roomSlot()) and not (zqj.pending and os.time() < zqj.pendingUntil) then
local ua = zqj.progress

if ua == nil then
cb.RequestInfiniteRoomProgress:FireServer()
task.wait(0.5)
else
local mpp = nil

for eyeg, jxp in ipairs(yi.Milestones) do
if yi.isMilestoneUnlocked(jxp, ua) and not yi.isMilestoneCleared(jxp, ua) then
mpp = jxp
break
end
end

if mpp then

local wpf = pgxj.roomSlot()

zqj.currentRoom = mpp
zqj.inBattle = true
zqj.inBattleUntil = os.time() + 60
zqj.pending = true
zqj.pendingUntil = os.time() + 10

local akg = dw:FindFirstChild(wpf == 2 and _d("PxcBB0chBhkGHgd1DwgCAEA") or _d("PxcBB0chBhkGHgd1DwgCAA"))
if akg and akg:IsA(_d("LxscBlIBCwg3BAddFw")) then
akg:Fire(mpp, _d("BBwUC10KEwgtAA1cDg"))
end

local kne = dw:FindFirstChild(wpf == 2 and _d("PgYTEEcqCQsbHAtHBjUCHR8gUhcTARdA") or _d("PgYTEEcqCQsbHAtHBjUCHR8gUhcTARc"))
if kne and kne:IsA(_d("LxscBlIBCwg3BAddFw")) then
kne:Fire(mpp)
end

cb.StartBattle:FireServer(_d("BBwUC10KEwgtAA1cDg"), {
milestone = mpp,
slot = wpf,
})
task.wait(2)
end
end
end

task.wait(1)
end
end)

local function aqvj(ysve, enp)
local rtjj = dw:FindFirstChild(_d("PhEAB1YNIBgb"))

if not rtjj then
return
end

local xwpr = rtjj:FindFirstChild(ysve)
local grwu = xwpr and xwpr:FindFirstChild(_d("OxMeF1YvBg8XHg"), true)
local dtr = xwpr and xwpr:FindFirstChild(_d("IRMQB18"), true)

if not xwpr then
return
end

local xlbq = false

if grwu then
xlbq = grwu.Text == _d("Ihw")
elseif dtr then
xlbq = not string.lower(dtr.Text):find(_d("AhQU"), 1, true)
end

if xlbq ~= enp then
for waj, qzfe in ipairs(getconnections(xwpr.MouseButton1Click)) do
local is = qzfe.Function

if type(is) == _d("CwccAUcKCAM") then
pcall(is)
else
pcall(function()
qzfe:Fire()
end)
end
end
end
end

getgenv().ACBXSetRollButton = aqvj

local function jqnx(zdp)
aqvj(_d("PAcbAVgxCAEeMBdHFwgD"), zdp)
aqvj(_d("LAcGDWEMCwEwBxZHDAk"), zdp)
end

getgenv().ACBXSetRollUi = jqnx
cdtc.setRollButton = aqvj

pcall(function()
cb.SaveClientData:FireServer({ autoHideBattle = false })
end)

task.defer(function()
task.wait(0.5)

local gj = dw:FindFirstChild(_d("LxMGFl8GIBgb"))
local tsc = gj and gj:FindFirstChild(_d("LxMGFl8GNA4AFwdd"))
local jx = gj and gj:FindFirstChild(_d("JRsWB3ECExkeFyBGFxMCHA"))

if jx and jx.Visible and tsc and not tsc.Visible and zzvo() then
for qe, gpe in ipairs(getconnections(jx.MouseButton1Click)) do
local qudt = gpe.Function

if type(qudt) == _d("CwccAUcKCAM") then
pcall(qudt)
else
pcall(function()
gpe:Fire()
end)
end
end
end
end)

jqnx(true)

task.spawn(function()
while zybs() do

if cdtc.autoRoll then
aqvj(_d("LAcGDWEMCwEwBxZHDAk"), true)
end

if cdtc.autoQuickRoll then
aqvj(_d("PAcbAVgxCAEeMBdHFwgD"), true)
end

task.wait(1)
end
end)

local function ue()

if vhlz.floor then
return vhlz.floor
end

local svze = dw:FindFirstChild(_d("LxMGFl8GIBgb"))

if not svze then
return nil
end

for nj, tqc in ipairs({ _d("OR0FB0ElCwIdAC5SAQIB"), _d("PwccJF8MCB8+EwBWDw") }) do
local sgk = svze:FindFirstChild(tqc)

if sgk and sgk.Visible and sgk.Text then
local ccu = tonumber(sgk.Text:match(_d("RVcWSRo")))

if ccu then
return ccu
end
end
end

local men = svze:FindFirstChild(_d("Kx4dDUEwBB8XFww"))
local nwpb = men and men:FindFirstChild(_d("OR0CIFIR"))
local wbn = nwpb and nwpb:FindFirstChild(_d("Kx4dDUEvBg8XHg"))

if wbn then
return tonumber(wbn.Text:match(_d("RVcWSRo")))
end

return nil
end

function ydsj.bossTeams.swapRows(xwnr)
local pwez = dw:FindFirstChild(_d("PhcGFloNAB41Bws"))
local fyce = pwez and pwez:FindFirstChild(_d("LAcGDWAUBh0") .. xwnr .. _d("Px0F"), true)

if not fyce then
return nil
end

return fyce:FindFirstChild(_d("LAcGDWAUBh0") .. xwnr .. _d("LhoXAVg")),
fyce:FindFirstChild(_d("LAcGDWAUBh0") .. xwnr .. _d("ORcTDw")),
fyce:FindFirstChild(_d("LAcGDWAUBh0") .. xwnr .. _d("Kx4dDUE"))
end

function ydsj.bossTeams.swapOn(ft)
local tar = dw:FindFirstChild(_d("PhcGFloNAB41Bws"))
local sak = tar and tar:FindFirstChild(_d("KhcGMVYXEwQcFRE"), true)

if not sak then
return nil
end

local tdx, ygt = pcall(function()
return sak:Invoke()
end)

if tdx and type(ygt) == _d("GRMQDlY") then
return ygt[ft == 1 and _d("DAcGDWcGBgAhBQNDJgkMEB4HVw") or _d("DAcGDWcGBgAhBQNDUSIDExAOVgc")] == true
end

return nil
end

function ydsj.bossTeams.swapBox(udr, njsp)
if tonumber(udr.Text) == njsp then
return
end

udr.Text = tostring(njsp)

if getconnections then
for dwtz, wdog in ipairs(getconnections(udr.FocusLost)) do
pcall(function()
wdog:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end

function ydsj.bossTeams.swapSet(reu, elpy, tgti, ejo)
local efqr, xsj, jwll = ydsj.bossTeams.swapRows(reu)

if not (efqr and xsj and jwll) then
return false
end

tgti = math.max(1, math.floor(tonumber(tgti) or 1))
ejo = math.clamp(math.floor(tonumber(ejo) or 1), 1, 4)

ydsj.bossTeams.swapBox(jwll, tgti)
ydsj.bossTeams.swapBox(xsj, ejo)

local nbci = ydsj.bossTeams.swapOn(reu)

if nbci ~= nil and nbci ~= (elpy == true) and getconnections then
pcall(function()
for vrvz, pflh in ipairs(getconnections(efqr.MouseButton1Click)) do
pcall(function()
pflh:Fire()
end)
end
end)
end

local dvd = reu == 1 and _d("") or _d("Xw")

pcall(function()
cb.SaveClientData:FireServer({
[_d("DAcGDWcGBgAhBQND") .. dvd .. _d("KBwTAF8GAw")] = elpy == true,
[_d("DAcGDWcGBgAhBQND") .. dvd .. _d("ORcTDw")] = ejo,
[_d("DAcGDWcGBgAhBQND") .. dvd .. _d("Kx4dDUE")] = tgti,
})
end)

return true
end

function ydsj.bossTeams.swapApply()
local vfm = ydsj.bossTeams
local zeyp = vfm.swap
local okbt = true

if zeyp.on then
okbt = vfm.swapSet(1, zeyp.floor > 0, zeyp.floor, zeyp.team)
okbt = vfm.swapSet(2, zeyp.floor2 > 0, zeyp.floor2, zeyp.team2) and okbt
else
okbt = vfm.swapSet(1, false, zeyp.floor, zeyp.team)
okbt = vfm.swapSet(2, false, zeyp.floor2, zeyp.team2) and okbt
end

vfm.swapMessage = _d("")

if not okbt then
vfm.swapMessage = _d("ORoXQlQCCghVAUJyFhMCUiYHUg5HPgUTEhMRCBoBUgNBBkcDHQZCURYOAQZSG1YXR0BSAAdHER4EHBVM")
end

vfm.paintSwap()
end

function ydsj.bossTeams.swapReset(lpp)
local exgq = ydsj.bossTeams

if lpp then
exgq.swapFired[lpp] = nil
else
exgq.swapFired = {}
end
end

function ydsj.bossTeams.swapTick()
local ropp = ydsj.bossTeams
local vns = ropp.swap

if not vns.on or (vns.floor <= 0 and vns.floor2 <= 0) then
if next(ropp.swapFired) ~= nil then
ropp.swapFired = {}
end

return
end

local zgjs = os.clock()
local qmmu = pjj.remote(_d("PgUbFlALMwgTHw"))

if zgjs - (ropp.swapWroteAt or 0) > 10 then
ropp.swapWroteAt = zgjs
ropp.swapApply()
end

local kisd = {
{
kind = _d("GR0FB0E"),
slot = pgxj.towerSlot(),

live = zgjs - (vhlz.floorAt or 0) < 90,
floor = ue(),

own = true,
},
{
kind = _d("BRMABlAMFQg"),
slot = pgxj.hardcoreSlot(),
live = eoi.active(),
floor = eoi.floorNow(),

own = false,
},
}

local vuvx = {
{ index = 1, floor = vns.floor, team = vns.team },
{ index = 2, floor = vns.floor2, team = vns.team2 },
}

for qqtt, emkv in ipairs(kisd) do
if not emkv.live then

ropp.swapFired[emkv.kind] = nil
elseif emkv.own and qmmu and emkv.floor then
local ziy = ropp.swapFired[emkv.kind]

for wjx, hbxl in ipairs(vuvx) do
local bfjt = type(ziy) == _d("GRMQDlY") and ziy[hbxl.index]

if hbxl.floor > 0 and emkv.floor == hbxl.floor and not bfjt then
local qney = pcall(function()
qmmu:FireServer(math.clamp(math.floor(hbxl.team), 1, 4), true, emkv.slot or 1)
end)

if qney then
ziy = type(ziy) == _d("GRMQDlY") and ziy or {}
ziy[hbxl.index] = hbxl.team
ropp.swapFired[emkv.kind] = ziy

ropp.swapMessage = string.format(_d("LhMBFl8GRwseHQ1BQ0IJUl9CQBQOGREaB1dDEwJSJgdSDkdIFlw"), emkv.floor, hbxl.team)
ropp.paintSwap()
end
end
end
end
end
end

task.spawn(function()
while zybs() do
pcall(ydsj.bossTeams.swapTick)
task.wait(0.5)
end
end)

local function lvrl()

return yyo.active() and yyo.hasReadyTarget()
end

function dlzc.worldBoss.remote(rn)
local bbdp = dlzc.worldBoss

bbdp.remotes = bbdp.remotes or {}

local ikbp = bbdp.remotes[rn]

if ikbp and ikbp.Parent then
return ikbp
end

local hrr = pjj.remote(rn)

if hrr then
bbdp.remotes[rn] = hrr
end

return hrr
end

function dlzc.worldBoss.setRepeat(cjqx)
local hct = dlzc.worldBoss
local vvai = hct.remote(_d("Oh0ADlchCB4BMwFHCggD"))

if not vvai then
return false
end

local dyqw = hct.state
local bwh = type(dyqw) == _d("GRMQDlY") and dyqw.repeatOn == true

if bwh == (cjqx and true or false) then
hct.repeatIntent = nil

return true
end

if cjqx then
local ecg = workspace:FindFirstChild(_d("Oh0ADlchCB4BMxBWDQY"))
local dbcf = ecg and (ecg:FindFirstChild(_d("LhceDn4CHw")) or ecg)
local ucz = as.Character and as.Character:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if not (dbcf and ucz) then
return false
end

local ikdp, wola = pcall(function()
return dbcf:GetPivot()
end)

if not ikdp or (ucz.Position - wola.Position).Magnitude > 60 then
return false
end
end

if hct.repeatIntent == cjqx and os.clock() - (hct.repeatAskedAt or 0) < 20 then
return false
end

hct.repeatIntent = cjqx

pcall(function()
vvai:FireServer(_d("HxcCB1IX"))
end)

hct.repeatAskedAt = os.clock()

return true
end

function dlzc.worldBoss.requestSync()
local jxn = dlzc.worldBoss
local cwe = jxn.remote(_d("Oh0ADlchCB4BMwFHCggD"))

if cwe then
pcall(function()
cwe:FireServer(_d("HgscAQ"))
end)
end

jxn.askedAt = os.clock()
end

function dlzc.worldBoss.hasWork()
local kpiv = dlzc.worldBoss
local lzdo = kpiv.state

if not kpiv.enabled or type(lzdo) ~= _d("GRMQDlY") then
return false
end

local aww = kpiv.isOpen()

if aww == nil then
aww = lzdo.open == true
end

return aww and lzdo.inFight ~= true
end

dlzc.worldBoss.bossUp = function()
local bnq = dlzc.worldBoss

if not bnq.enabled then
return false
end

local nry = bnq.isOpen()

if nry ~= nil then
return nry == true
end

local oogd = bnq.state

return type(oogd) == _d("GRMQDlY") and oogd.open == true
end

function dlzc.worldBoss.meter()
local bccd = dlzc.worldBoss
local tccf = os.clock()

if tccf - (bccd.meterAt or 0) < 1 then
return bccd.meterCurrent, bccd.meterMax
end

bccd.meterAt = tccf
bccd.meterCurrent = nil
bccd.meterMax = nil

local ojee = lkft:FindFirstChild(_d("Oh0ADlchCB4BIRZSFxIe"))
local hwkp = ojee and tonumber(ojee:GetAttribute(_d("IBcGB0E")))
local bfy = ojee and tonumber(ojee:GetAttribute(_d("IBcGB0EuBhU")))

if hwkp and bfy and bfy > 0 then
bccd.meterCurrent = hwkp
bccd.meterMax = bfy

return bccd.meterCurrent, bccd.meterMax
end

local function fq(ymj)
if type(ymj) ~= _d("HgYAC10E") then
return nil
end

local msfw, htj = ymj:match(_d("RSlXBhZNOkZbVxEZSzwmPzAJXgE6Uls"))
local jtm = tonumber(msfw)

if not jtm then
return nil
end

local adtm = ({ K = 1000, M = 1000000, B = 1000000000 })[string.upper(htj or _d(""))] or 1

return jtm * adtm
end

local vt = dw:FindFirstChild(_d("Oh0ADlchCB4BMANdDQIfNQcL"))
local qufr = vt and vt:FindFirstChild(_d("LxMcDFYR"))
local um = qufr and qufr:FindFirstChild(_d("IBcGB0EhBh8"))
local jjuj = um

if um and not um:IsA(_d("ORcKFn8CBQge")) then
jjuj = um:FindFirstChild(_d("ORcKFg"))
end

local qjfr = jjuj and jjuj:IsA(_d("ORcKFn8CBQge")) and jjuj.Text or nil

if type(qjfr) == _d("HgYAC10E") then
local qnku, wee = qjfr:match(_d("RSksTW5ITkJaXEka"))

bccd.meterCurrent = fq(qnku)
bccd.meterMax = fq(wee)
end

return bccd.meterCurrent, bccd.meterMax
end

function dlzc.worldBoss.meterFull()
local ty, mfp = dlzc.worldBoss.meter()

return ty ~= nil and mfp ~= nil and mfp > 0 and ty >= mfp
end

dlzc.worldBoss.holdsFishing = function()
local gd = dlzc.worldBoss

if not gd.enabled then
return false
end

if gd.fishingMode == _d("GhMbFg") then
return gd.bossUp()
end

return os.clock() < (gd.takingUntil or 0)
end

dlzc.worldBoss.holdsDigging = function()
local ins = dlzc.worldBoss

if not ins.enabled or ins.digHold ~= true then
return false
end

if not ins.bossUp() then
return false
end

return not (ins.stopAtFull and ins.meterFull())
end

dlzc.worldBoss.usesGameChain = function()
local gvoz = dlzc.worldBoss

return gvoz.fishingMode == _d("GhMbFg") or gvoz.digHold == true
end

function dlzc.worldBoss.travel()
local mlr = dlzc.worldBoss
local asb = as.Character
local jeb = asb and asb:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if not jeb or os.clock() < mlr.travelUntil then
return
end

mlr.travelUntil = os.clock() + 6

local lcpr = workspace:FindFirstChild(_d("Oh0ADlchCB4BIg1BFwYB"))
local zmd = lcpr and lcpr:FindFirstChild(_d("PR0AFlIP"))

if not zmd then
return
end

if (jeb.Position - zmd.Position).Magnitude > 150 then
local opd = pjj.remote(_d("ORceB0MMFRkmHTVcEQsJ"))

if opd then
pcall(function()
opd:FireServer(_d("AR0QAEo"))
end)
end

return
end

if (jeb.Position - zmd.Position).Magnitude > 6 then
mlr.walkLeg(zmd.Position + Vector3.new(0, 3, 0), 4)

if (jeb.Position - zmd.Position).Magnitude > 9 then
return
end
end

local gvvd = zmd:FindFirstChildOfClass(_d("PQAdGloODhkLIhBcDhcZ"))

if not gvvd then
return
end

pcall(function()
if type(fireproximityprompt) == _d("CwccAUcKCAM") then
fireproximityprompt(gvvd)
else
gvvd:InputHoldBegin()
task.wait(0.25)
gvvd:InputHoldEnd()
end
end)
end

function dlzc.worldBoss.reach()
local oqlx = dlzc.worldBoss

local txc = workspace:FindFirstChild(_d("Oh0ADlchCB4BMxBWDQY")) or workspace:FindFirstChild(_d("Oh0ADlchCB4BIRJSFAk"), true)
local tvz = as.Character
local gsnq = tvz and tvz:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if not (txc and gsnq) then
oqlx.travel()
return false
end

local dfzb = txc:FindFirstChild(_d("LhceDn4CHw")) or txc
local lzm, pyjs = pcall(function()
return dfzb:GetPivot()
end)

if not lzm then
return false
end

local tg = pyjs.Position + pyjs.LookVector * 6 + Vector3.new(0, 3, 0)
local iyhm = Vector3.new(pyjs.Position.X, tg.Y, pyjs.Position.Z)

gsnq.CFrame = CFrame.lookAt(tg, iyhm)

return true
end

dlzc.worldBoss.cityBounds = { 19100, 20900, -850, 850 }

function dlzc.worldBoss.inArena()
local rvqw = as.Character and as.Character:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))
local lyke = dlzc.worldBoss.cityBounds

if not rvqw then
return false
end

local tjuw = rvqw.Position

return tjuw.X >= lyke[1] and tjuw.X <= lyke[2]
and tjuw.Z >= lyke[3] and tjuw.Z <= lyke[4]
end

function dlzc.worldBoss.enterCity(jlqs)
local xk = dlzc.worldBoss

local anpu = os.clock() + (jlqs or 30)

if xk.inArena() then
return true
end

while os.clock() < anpu do
if not xk.enabled then
return false
end

xk.travel()

if xk.inArena() then
return true
end

task.wait(0.5)
end

return xk.inArena()
end

dlzc.worldBoss.walking = false
dlzc.worldBoss.walkStartedAt = 0

function dlzc.worldBoss.walkLeg(hxtt, al)
local vd = dlzc.worldBoss
local jc = as.Character
local aeqg = jc and jc:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))
local ltlr = jc and jc:FindFirstChildOfClass(_d("JQcfA10MDgk"))

if not (aeqg and ltlr) then
return false
end

if vd.walking and os.clock() - (vd.walkStartedAt or 0) < 45 then
return false
end

al = al or 6

vd.walking = true
vd.walkStartedAt = os.clock()

local qzem, xslu = pcall(function()
local vad = os.clock() + 40
local fnp = 0
local hgb = aeqg.Position
local dmp = os.clock()

while vd.enabled and os.clock() < vad do
local zjrl = Vector3.new(hxtt.X - aeqg.Position.X, 0, hxtt.Z - aeqg.Position.Z)

if zjrl.Magnitude <= al then
return true
end

if os.clock() - fnp >= 0.25 then
ltlr:MoveTo(Vector3.new(hxtt.X, aeqg.Position.Y, hxtt.Z))
fnp = os.clock()
end

if os.clock() - dmp >= 1.2 then
if (aeqg.Position - hgb).Magnitude < 2 then
ltlr.Jump = true
end

hgb = aeqg.Position
dmp = os.clock()
end

task.wait(0.1)
end

return Vector3.new(hxtt.X - aeqg.Position.X, 0, hxtt.Z - aeqg.Position.Z).Magnitude <= al
end)

pcall(function()
ltlr:MoveTo(aeqg.Position)
end)

vd.walking = false

return qzem and xslu == true
end

function dlzc.worldBoss.walkIn(osjc)
local yoh = dlzc.worldBoss
local bzsr = workspace:FindFirstChild(_d("Oh0ADlchCB4BMxBWDQY"))
local muje = bzsr and (bzsr:FindFirstChild(_d("LhceDn4CHw")) or bzsr) or nil
local qlgy = as.Character and as.Character:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if not (muje and qlgy) then
return false
end

local zgf, akb = pcall(function()
return muje:GetPivot()
end)

if not zgf then
return false
end

local dqd = akb.Position + akb.LookVector * 6 + Vector3.new(0, 3, 0)

if (qlgy.Position - dqd).Magnitude <= (osjc or 10) then
return true
end

local ivm = yoh.walkLeg(dqd, osjc or 6)

if not ivm then
ivm = (qlgy.Position - akb.Position).Magnitude <= 25
end

return ivm
end

function dlzc.worldBoss.approach()
local jd = dlzc.worldBoss

if not jd.walkToBoss then
return jd.reach()
end

if not jd.enterCity() then
return false
end

return jd.walkIn(10)
end

function dlzc.worldBoss.fight()
local gejd = dlzc.worldBoss
local cjvd = gejd.remote(_d("Oh0ADlchCB4BMwFHCggD"))

local function rvv(cmtt)
gejd.nextFightAt = os.clock() + (cmtt or 20)

return false
end

if not cjvd then
return rvv(60)
end

if gejd.stopAtFull and gejd.meterFull() then
return rvv(20)
end

if bj.enabled
and (bj.tpToBay or bj.deepZone)
and bj.phase ~= _d("BBYeBw") then
return false
end

gejd.takingUntil = os.clock() + 45

if not gejd.approach() then
gejd.takingUntil = os.clock() + 3

return rvv(20)
end

local rfgi = workspace:FindFirstChild(_d("Oh0ADlchCB4BMxBWDQY"))
local uv = rfgi and (rfgi:FindFirstChild(_d("LhceDn4CHw")) or rfgi) or nil
local ajp = as.Character and as.Character:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))

if uv and ajp then
local foto, kml = pcall(function()
return uv:GetPivot()
end)

if not foto or (ajp.Position - kml.Position).Magnitude > 60 then
gejd.takingUntil = os.clock() + 2

return rvv(10)
end
end

ydsj.bossTeams.applyTeam(gejd.team)

task.wait(1.4)

pcall(function()
cjvd:FireServer(_d("CxsVCkc"))
end)

gejd.fightAt = os.clock()
gejd.holdUntil = os.clock() + 4

gejd.takingUntil = os.clock() + 0.6

if bj.enabled and (bj.tpToBay or bj.deepZone) then
bj.deepPhase = _d("BBYeBw")
bj.deepStageAt = 0
bj.nextCastAt = 0
end

gejd.killsAtFire = type(gejd.state) == _d("GRMQDlY") and tonumber(gejd.state.kills) or nil

if not gejd.usesGameChain() and bj.enabled
and (bj.tpToBay or bj.deepZone) then
gejd.nextFightAt = os.clock() + 1
end

return true
end

function dlzc.worldBoss.buy(iymw)
local kulm = dlzc.worldBoss
local kyys = kulm.remote(_d("Oh0ADlchCB4BMwFHCggD"))

iymw = iymw or 1

if not kyys then
return 0
end

local uvpm = 0

for boqw = 1, iymw do
local gsx = kulm.state

if type(gsx) ~= _d("GRMQDlY") or type(gsx.shop) ~= _d("GRMQDlY") then
break
end

if os.clock() < kulm.buyAt then
break
end

local gbn = tonumber(gsx.medals) or 0
local jbp = nil

for vdp, sfn in ipairs(gsx.shop) do
local shb = tonumber(sfn.price) or 0
local qhe = sfn.kind ~= _d("BAYXDw") or (tonumber(sfn.left) or 0) > 0

if kulm.selected[sfn.id] == true and qhe and sfn.owned ~= true and shb <= gbn then
jbp = sfn
break
end
end

if not jbp then
break
end

pcall(function()
kyys:FireServer(_d("DwcL"), jbp.id, 1)
end)

uvpm = uvpm + 1
kulm.bought = kulm.bought + 1
kulm.buyAt = os.clock() + 1.2

kulm.syncedAt = 0
kulm.requestSync()
task.wait(1.1)
end

return uvpm
end

dlzc.worldBoss.questGroups = { _d("HRcAEVwNBgE"), _d("Ch4dAFIP"), _d("CxseDg"), _d("HxcBFkEKBBkbHQw") }

function dlzc.worldBoss.questRows(nnd)
local pa = dlzc.worldBoss
local zzj = type(nnd) == _d("GRMQDlY") and nnd.quests or nil
local rqkb = {}

if type(zzj) ~= _d("GRMQDlY") then
return rqkb
end

for gaq, koa in ipairs(pa.questGroups) do
local ekfc = zzj[koa]

if type(ekfc) == _d("GRMQDlY") then
for ex, jwo in ipairs(ekfc) do
if type(jwo) == _d("GRMQDlY") then
table.insert(rqkb, jwo)
end
end
end
end

return rqkb
end

function dlzc.worldBoss.claim()
local qtkg = dlzc.worldBoss
local xryw = qtkg.remote(_d("Oh0ADlchCB4BMwFHCggD"))
local lvl = qtkg.state

if not xryw or type(lvl) ~= _d("GRMQDlY") or type(lvl.quests) ~= _d("GRMQDlY") then
return 0
end

if os.clock() < qtkg.claimAt then
return 0
end

local cyjo = qtkg.questRows(lvl)

if #cyjo == 0 then
return 0
end

local rws = {}

for eqyk, kdqg in ipairs(cyjo) do
if kdqg.id ~= nil then
rws[tostring(kdqg.id)] = true
end
end

for ulr, hiee in pairs(qtkg.claimFired) do
if not rws[ulr] or os.clock() - hiee > 120 then
qtkg.claimFired[ulr] = nil
end
end

local nmt = nil

for pxt, aodj in ipairs(cyjo) do
if aodj.complete == true and aodj.claimed ~= true and aodj.id ~= nil then
local lto = tostring(aodj.id)
local vvf = qtkg.claimFired[lto]

if not (vvf and os.clock() - vvf < 6) then
nmt = aodj
break
end
end
end

if not nmt then
return 0
end

qtkg.claimFired[tostring(nmt.id)] = os.clock()
qtkg.claimedTotal = qtkg.claimedTotal + 1

pcall(function()
xryw:FireServer(_d("Dh4TC14"), nmt.id)
end)

qtkg.claimAt = os.clock() + 2
qtkg.syncedAt = 0
qtkg.requestSync()

return 1
end

dlzc.worldBoss.syncRemote = jw(_d("Oh0ADlchCB4BIRtdAA"))

if dlzc.worldBoss.syncRemote then
dlzc.worldBoss.syncRemote.OnClientEvent:Connect(function(ebfc)
local jquh = dlzc.worldBoss

if type(ebfc) ~= _d("GRMQDlY") then
return
end

jquh.state = ebfc
jquh.syncedAt = os.clock()

if ebfc.inFight == true then
jquh.wasFighting = true
elseif jquh.wasFighting then
jquh.wasFighting = false

if bj.enabled then
pcall(bj.recover)
end
end
end)
end

task.spawn(function()
dlzc.worldBoss.requestSync()
end)

task.spawn(function()
while zybs() do
local mts = dlzc.worldBoss
local tnfe = mts.state

if mts.autoClaim then
if os.clock() - mts.syncedAt > 4 and os.clock() - mts.askedAt > 1 then
mts.requestSync()
end

mts.claim()
end

if mts.enabled then

if os.clock() - mts.syncedAt > 4 and os.clock() - mts.askedAt > 1 then
mts.requestSync()
end

if mts.autoBuy and next(mts.selected) then
mts.buy(1)
end

local nvz = type(tnfe) == _d("GRMQDlY") and tnfe.repeatOn == true

if mts.usesGameChain() then

local yee = type(tnfe) == _d("GRMQDlY") and tonumber(tnfe.kills) or nil

if yee and yee ~= mts.seenKills then
mts.seenKills = yee
mts.progressAt = os.clock()
end

if mts.bossUp() and not nvz and os.clock() - (mts.repeatAskedAt or 0) > 20 then
if mts.approach() then
mts.repeatSeeded = true
mts.progressAt = os.clock()

mts.setRepeat(true)
end
end

if mts.hasWork() and os.clock() >= mts.holdUntil
and os.clock() - (mts.progressAt or 0) > 20
and os.clock() - (mts.kickAt or 0) > 20 then
local uugm = lvrl()
local zdxh = pgxj.roleSlot(_d("AwIR")) or 1
local ije = pgxj.enabled and pgxj.busy(zdxh)

if not uugm and not ije then
mts.kickAt = os.clock()
mts.fight()
end
end

if not mts.bossUp() and nvz and os.clock() - (mts.repeatAskedAt or 0) > 6 then
mts.repeatSeeded = false
mts.setRepeat(false)
end
elseif mts.isOpen() and nvz and os.clock() - (mts.repeatAskedAt or 0) > 6 then
mts.setRepeat(false)
end

local mct = type(tnfe) == _d("GRMQDlY") and tonumber(tnfe.kills) or nil

if mts.killsAtFire ~= nil and mct == mts.killsAtFire
and os.clock() - (mts.fightAt or 0) > 9
and os.clock() < (mts.nextFightAt or 0)
and os.clock() >= mts.holdUntil then
mts.killsAtFire = nil
mts.nextFightAt = os.clock()
end

if not mts.usesGameChain() and mts.hasWork() and os.clock() >= mts.holdUntil
and os.clock() >= (mts.nextFightAt or 0)
and not (mts.stopAtFull and mts.meterFull()) then

local wyt = lvrl()
local xebg = pgxj.roleSlot(_d("AwIR")) or 1
local zgkt = pgxj.enabled and pgxj.busy(xebg)

if not wyt and not zgkt then
mts.fight()
end
end
end

local ioyw = mts.bodyText()

if mts.bodyParagraph and ioyw ~= mts.bodyShown then
mts.bodyShown = ioyw

pcall(function()
mts.bodyParagraph:UpdateBody(ioyw)
end)
end

local lduv = mts.shopText()

if mts.shopParagraph and lduv ~= mts.shopShown then
mts.shopShown = lduv

pcall(function()
mts.shopParagraph:UpdateBody(lduv)
end)
end

task.wait(0.5)
end
end)

function pgxj.roomsHaveWork()
if not zqj.enabled then
return false
end

local kuge = zqj.progress

if kuge == nil then
return true
end

for drwm, zne in ipairs(yi.Milestones) do
if yi.isMilestoneUnlocked(zne, kuge) and not yi.isMilestoneCleared(zne, kuge) then
return true
end
end

return false
end

function pgxj.raidHasWork()
if not dlzc.enabled then
return false
end

local cir = lkft:FindFirstChild(_d("PxMbBmAXBhkHAQ"))

if not cir then
return false
end

if not (cir:GetAttribute(_d("JAE9ElYN")) == true or cir:GetAttribute(_d("Kx0AAVYH")) == true) then
return false
end

for jp, jtv in ipairs({ 1, 2 }) do
local cet = dlzc.picks[jtv] and dlzc.bossFor(jtv)

if cet and dlzc.cleared[cet] ~= nct(cet) then
return true
end
end

return false
end

function pgxj.towerYields()
return lvrl()
or pgxj.roomsHaveWork()
or pgxj.raidHasWork()
or dlzc.worldBoss.hasWork()
end

function pgxj.towerOutranks()
return not pgxj.enabled and (eoi.active() or bhkm.run.enabled)
end

local function ptvm(rv)
if not rv then
return false
end

local ghyu = false

for fyb, xbg in ipairs(getconnections(rv.MouseButton1Click)) do
local qcld = xbg.Function

if type(qcld) == _d("CwccAUcKCAM") then
pcall(qcld)
else
pcall(function()
xbg:Fire()
end)
end

ghyu = true
end

return ghyu
end

function fulr()
for utn, tht in ipairs({ _d("LxMGFl8GIBgb"), _d("LxMGFl8GIBgbQA") }) do
local ewjz = dw:FindFirstChild(tht)

if ewjz then
local red = ewjz:FindFirstChild(_d("LxMGFl8GNA4AFwdd"))
local donz = red and red:FindFirstChild(_d("PAcbAVgkDhsXJxJxFhMZHRw"))

if ptvm(donz) then
return true
end

local mjfn = ewjz:FindFirstChild(_d("Kx4dDUEwBB8XFww"))
local lsx = mjfn and mjfn:FindFirstChild(_d("Lx0GFlwOJQwA"))
local pel = lsx and lsx:FindFirstChild(_d("KhsEB2YTJRgGBg1d"))

if ptvm(pel) then
return true
end
end
end

local jyr = lkft:FindFirstChild(_d("PxcfDUcGFA"))
local dbhv = jyr and jyr:FindFirstChild(_d("KhsEB2YTMwIFFxA"))
local jje = jyr and jyr:FindFirstChild(_d("KBwWNlwUAh8gFw9cFwI"))

if not (dbhv or jje) then
return false
end

if dbhv then
pcall(function()
dbhv:FireServer()
end)
end

if jje then
pcall(function()
jje:FireServer(1)
end)
end

vhlz.manualPause = false
vhlz.floor = nil
pjj.restorePause()

return true
end

local syt = fulr

function fulr()

vhlz.lastGiveUp = {
at = os.time(),
clock = os.clock(),
floor = vhlz.floor,
parked = pjj.parked(),
active = vrui(),
hard = pjj.hardNow(),
nightmare = vhlz.nightmare == true,
caller = debug.traceback(_d(""), 2),
}

local nku = syt()

if nku then
ol.armedAt = os.clock()
end

return nku
end

function flc(dp)

local vpl = false

if dp ~= false and vrui() then
local mvbo = ue()

if mvbo then
vpl = pjj.pauseAt(true, mvbo) or vpl

vhlz.pauseArmed = true
end
end

for sxj, zawc in ipairs({ _d("LxMGFl8GIBgb"), _d("LxMGFl8GIBgbQA") }) do
local dhqj = dw:FindFirstChild(zawc)

if dhqj then
local rlc = dhqj:FindFirstChild(_d("LxMGFl8GNA4AFwdd"))
local wgxb = rlc and rlc:FindFirstChild(_d("PAcbAVghFQgTGSBGFxMCHA"))

if wgxb then

if tostring(wgxb.Text):find(_d("j+7h"), 1, true) then
vpl = true
elseif ptvm(wgxb) then
vpl = true
end
end

local lzll = dhqj:FindFirstChild(_d("Kx4dDUEwBB8XFww"))

if lzll and lzll.Visible then
local czl = lzll:FindFirstChild(_d("Lx0GFlwOJQwA"))
local luv = czl and czl:FindFirstChild(_d("ORMZB3ERAgwZMBdHFwgD"))

if ptvm(luv) then
vpl = true
end
end
end
end

return vpl
end

function eoi.pauseRun()
if not vrui() then
pcall(function()
wc:Dialog({
Title = _d("PRMHEVZDLh4eEwxXQy8MABYBXBEC"),
Description = _d("Ix1SFlwUAh9SABddQw4eUh4LRQZHHxsVCkdDCQIFXkJADEcZGhcQVkMOHlIcDUcLDgMVUhZcQxcMBwEHHQ"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})
end)

return
end

eoi.paused = true
eoi.manualPause = true
local iu = flc(false)

pcall(function()
wc:Notify({
Title = _d("PRMHEVZDLh4eEwxXQy8MABYBXBEC"),
Description = iu and _d("OR0FB0FDFRgcUhJSFhQIFlw") or _d("PwccQloQRwEbBAcfQwUYBlIMXEMFHxcTCRMBEhkGHQwTBQgYHBZM"),
Lifetime = 5,
})
end)
end

function eoi.giveUpRun()
if not vrui() then
pcall(function()
wc:Dialog({
Title = _d("KhsEBxM2F007AQ5SDQNNOhMQVwAIHxc"),
Description = _d("Ix1SFlwUAh9SABddQw4eUh4LRQZHHxsVCkdDCQIFXkJADEcZGhcQVkMOHlIcDUcLDgMVUhZcQwAEBBdCRhNJ"),
Buttons = {
{
Name = _d("Kh0GQloX"),
},
},
})
end)

return
end

eoi.gaveUp = true
eoi.paused = true
local ttg = fulr()

pcall(function()
wc:Notify({
Title = _d("KhsEBxM2F007AQ5SDQNNOhMQVwAIHxc"),
Description = ttg and _d("KhMEBxMWF00GGgcTABIfABcMR0MTAgUXEBMFCwIdAEw") or _d("PwccQloQRwEbBAcfQwUYBlIMXEMABAQXQkYTRw8HBhZcDUcLHQcMV00"),
Lifetime = 5,
})
end)
end

task.spawn(function()
while zybs() do

pcall(pjj.pinMode)

if vhlz.pauseArmed and not gsh.enabled
and (not vhlz.enabled or not vhlz.paused) then
pjj.restorePause()

if pjj.pauseState() ~= true then
vhlz.pauseArmed = false
end
end

if vhlz.enabled and not vhlz.manualPause and pgxj.towerSlot() ~= nil
and not bhkm.run.enabled then

local yczz = os.clock() - (vhlz.floorAt or 0) > 12
and os.clock() - (vhlz.battleAt or 0) > 12

local sgcs = pgxj.towerSlot() == 1 and not vhlz.paused
and not (gsh.enabled and gsh.floor > 0)
and yczz
and pjj.parked()

if sgcs then
vhlz.parkedAt = vhlz.parkedAt > 0 and vhlz.parkedAt or os.clock()

if os.clock() - vhlz.parkedAt >= 25 then
vhlz.parkedAt = os.clock()
fulr()
end
else
vhlz.parkedAt = 0
end

local waic = pjj.hardPickNow()

local demk = not vhlz.paused and not vhlz.pending
and not (gsh.enabled and gsh.floor > 0)
and vrui()
and waic ~= nil
and waic ~= (vhlz.nightmare == true)

if demk then
vhlz.modeWrongAt = vhlz.modeWrongAt or os.clock()
else
vhlz.modeWrongAt = nil
end

if vhlz.modeWrongAt and os.clock() - vhlz.modeWrongAt > 20
and os.clock() - (vhlz.modeFixAt or 0) > 20 then
vhlz.modeFixAt = os.clock()
vhlz.modeWrongAt = nil
pjj.endIfWrongMode(vhlz.nightmare == true)
end

if (vhlz.floorAt or 0) > 0 and not vhlz.paused
and os.clock() - vhlz.floorAt > 60
and os.clock() - (vhlz.battleAt or 0) > 60
and not vrui()
and not pgxj.busy(pgxj.towerSlot() or 1) then
vhlz.floorAt = 0
vhlz.battleAt = 0
vhlz.floor = nil
end

if not pgxj.enabled and (pgxj.towerOutranks() or pgxj.towerYields()) then
if not vhlz.paused then
vhlz.paused = true
flc()
end

elseif pgxj.slotFree(pgxj.towerSlot() or 1)
and (vhlz.floorAt or 0) == 0
and not ydsj.bossTeams.swapHold then
local yuu = ue()
local ciht = gsh.enabled and gsh.floor or 0
local szrl = ciht > 0 and yuu ~= nil and yuu >= ciht

if szrl then
if not vhlz.paused then
vhlz.paused = true
flc()
end
else

if vhlz.paused then
vhlz.paused = false
pjj.restorePause()
end

if not (vhlz.pending and os.time() < vhlz.pendingUntil) then

ydsj.bossTeams.applyTower(_d("GR0FB0E"), 1)

pjj.hardPick(vhlz.nightmare == true)
cb.EndTowerRemote:FireServer(1)
task.wait(0.25)

cb.StartBattle:FireServer(_d("GR0FB0E"), { hard = vhlz.nightmare == true })

mrj.triggered = false
mrj.weatherTriggered = false

vhlz.floorAt = os.clock()

vhlz.floor = nil
vhlz.pending = true
vhlz.pendingUntil = os.time() + 8
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while zybs() do
if eoi.active() and pgxj.hardcoreSlot() ~= nil then
local hlrz = pgxj.hardcoreSlot() or 1
local umw = eoi.floorNow()

local pf = gsh.enabled and gsh.floor or 0
local gqqo = mrj.enabled and mrj.floor or 0

if pf <= 0 and not eoi.stoodDown and not eoi.manualPause
and not ydsj.bossTeams.swapHold then
eoi.paused = false
end

if eoi.gaveUp then

elseif gqqo > 0 and umw and umw >= gqqo then
eoi.gaveUp = true
eoi.paused = true
local fya = fulr()

pcall(function()
wc:Notify({
Title = _d("LAcGDRMkDhsXUjdD"),
Description = fya and (_d("KhMEBxMWF00TBkJbAhUJER0QVkMBAR0dEBM") .. umw .. _d("Qw")) or (_d("JRMABlAMFQhSFA5cDBVN") .. umw .. _d("TQAXA1ALAgleUgBGF0cDHVIFWhUCTQcCQlEWExkdHEJVDBIDFlw")),
Lifetime = 5,
})
end)
elseif umw and pf > 0 and umw >= pf then
if not eoi.paused then
eoi.paused = true
flc(false)
end
elseif not pgxj.enabled and pgxj.towerYields() then

if not eoi.stoodDown then
eoi.stoodDown = true
eoi.paused = true
flc(false)
end
elseif eoi.stoodDown then

eoi.stoodDown = false
eoi.paused = false
elseif not eoi.paused and not ydsj.bossTeams.swapHold then
if pgxj.slotFree(hlrz) and not (eoi.pending and os.time() < eoi.pendingUntil) then
eoi.start(hlrz)
task.wait(2)
end
end
end

task.wait(1)
end
end)

function pgxj.slotActivity(lbyf)
if not pgxj.busy(lbyf) then
return nil
end

local xg = pgxj.role[lbyf]
local yhn = dw:FindFirstChild(lbyf == 2 and _d("LxMGFl8GIBgbQA") or _d("LxMGFl8GIBgb"))
local ahgl = yhn and yhn:FindFirstChild(_d("PwccJF8MCB8+EwBWDw"))
local txn = ahgl and ahgl.Text or _d("")

if zqj.enabled and xg == _d("AwIR") then
local mdg = txn:match(_d("MyAdDV5GFEZaVwYYSg"))

if mdg then
return _d("JBwUC10KEwhSAA1cDhRNX1IQXAwKTQ") .. mdg
end
end

if pgxj.isTowerRole(xg)
and (vhlz.enabled or bhkm.run.enabled or eoi.active()) then
local kwiz = txn:match(_d("MzQeDVwRQh5ZWkdXSE4"))

if kwiz then
return pgxj.roleName(lbyf) .. _d("TV9SBF8MCB9S") .. kwiz
end
end

return nil
end

function pgxj.statusText()
if not pgxj.enabled then
return _d("LAcGDRMwCwIGUg1VBUdAUhcUVhEeGRobDFRDFRgcAUJcDUceHh0WE1JJ")
end

local hpl = {}

for of = 1, 2 do
local pog = _d("Ph4dFhM") .. tostring(of) .. _d("TV9S")
local rqz = pgxj.slotActivity(of)

if of == 2 and pgxj.hasSlot2 == false then
pog = pog .. pgxj.roleLabel(of) .. _d("TV9SDlwADAgWUkpdBgIJAVIWWwZHKQcTDhMhBhkGHgcTMAsCBls")
elseif rqz then
pog = pog .. rqz
elseif pgxj.busy(of) then
pog = pog .. pgxj.roleLabel(of) .. _d("TV9SBFoEDxkbHAU")
else
pog = pog .. pgxj.roleLabel(of) .. _d("TV9SC1cPAg")
end

table.insert(hpl, pog)
end

return table.concat(hpl, _d("Z3g"))
end

task.spawn(function()
while zybs() do
pgxj.hasSlot2 = pgxj.detectSlot2()
task.wait(5)
end
end)

task.spawn(function()
while zybs() do

if not eoi.island and gsh.enabled and gsh.floor > 0 then
local bbnk = ue()

if bbnk and bbnk >= gsh.floor then
if not gsh.triggered then
gsh.triggered = true
flc()

pcall(function()
cb.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = bbnk,
})
end)
end
else
gsh.triggered = false
end
end

if not eoi.island and mrj.enabled and mrj.floor > 0 then
local fio = ue()

if fio and fio >= mrj.floor then

if not mrj.triggered and vrui() then
mrj.triggered = true
local gqrj = fulr()

pcall(function()
wc:Notify({
Title = _d("LAcGDRMkDhsXUjdD"),
Description = gqrj and (_d("KhMEBxMWF00TBkJVDwgCAFI") .. fio .. _d("Qw")) or (_d("Kx4dDUFD") .. fio .. _d("TQAXA1ALAgleUgBGF0cDHVIFWhUCTQcCQlEWExkdHEJVDBIDFlw")),
Lifetime = 5,
})
end)
end
else
mrj.triggered = false
end
end

if not eoi.island and mrj.weatherEnabled then
local uaz = ue()
local cabd = mrj.weatherMinFloor <= 0
or (uaz ~= nil and uaz >= mrj.weatherMinFloor)
local etae = cabd and mrj.weatherWanted() or nil

if etae then
if not mrj.weatherTriggered
and mrj.weatherGivenFor ~= mrj.weatherNow
and vrui() then
mrj.weatherTriggered = true
mrj.weatherGivenFor = mrj.weatherNow

local dse = fulr()

pcall(function()
wc:Notify({
Title = _d("OhcTFlsGFU01GxRWQzId"),
Description = dse
and (_d("KhMEBxMWF00TBkJVDwgCAFI") .. tostring(uaz) .. _d("TRscQg") .. etae .. _d("Qw"))
or (etae .. _d("TRsBQkYTS00QBxYTDQhNFRsUVkMSHVIQF0cXCANSEwxAFAIfFxZM")),
Lifetime = 5,
})
end)
end
else
mrj.weatherTriggered = false
end
end

task.wait(1)
end
end)

task.spawn(function()
if cb.WeatherChanged then
pcall(function()
cb.WeatherChanged.OnClientEvent:Connect(function(cxr)

mrj.weatherNow = nil
mrj.weatherAt = 0
mrj.weatherGivenFor = nil
ol.weatherSpent = nil

if type(cxr) == _d("HgYAC10E") then
mrj.weatherNow = cxr
end
end)
end)
end

while zybs() do
if os.clock() - mrj.weatherAt > 5 then
mrj.weatherAt = os.clock()

if cb.RequestWeatherState then
local san, ycvy = pcall(function()
return cb.RequestWeatherState:InvokeServer()
end)

if san and type(ycvy) == _d("HgYAC10E") then
if mrj.weatherNow ~= nil and mrj.weatherNow ~= ycvy then
ol.weatherSpent = nil
mrj.weatherGivenFor = nil
end

mrj.weatherNow = ycvy
end
end
end

task.wait(1)
end
end)

task.spawn(function()
local hml = nil
local vzgt = nil
local poje = 0

while zybs() do

if (ol.onWeather or ol.afterGiveUp) and os.clock() - poje > 60 then
poje = os.clock()

pcall(function()
cb.RequestItemSync:FireServer()
end)
end

if ol.onWeather and next(ol.weatherPotions) ~= nil then
local mve = mrj.weatherWanted(ol.weathers)

if mve and mrj.weatherNow ~= ol.weatherSpent then

ol.weatherSpent = mrj.weatherNow
ol.pop(ol.weatherPotions, ol.weatherAmount, _d("OhcTFlsGFU0") .. mve)
end
end

if ol.afterGiveUp and next(ol.giveUpPotions) ~= nil and ol.armedAt > 0 then

local bbpt = os.clock() - ol.armedAt

if not vrui() or bbpt >= 3 then
if bbpt <= 30 then
ol.armedAt = 0
ol.pop(ol.giveUpPotions, ol.giveUpAmount, _d("LBQGB0FDAAQEF0JGEw"))
else

ol.armedAt = 0
end
end
end

local mny = ol.status()

if mny ~= hml then
hml = mny

pcall(function()
ol.weatherParagraph:UpdateBody(mny)
end)
end

local bvq = ol.giveUpStatus()

if bvq ~= vzgt then
vzgt = bvq

pcall(function()
ol.giveUpParagraph:UpdateBody(bvq)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while zybs() do
local zc = bj.stick

if zc.enabled and os.clock() >= zc.at then
zc.at = os.clock() + 3

local frl = nil

for qwm, rub in ipairs(workspace:GetDescendants()) do
if (rub:IsA(_d("LxMBB2MCFRk")) or rub:IsA(_d("IB0WB18")))
and zc.names[string.lower(rub.Name)] then
frl = rub
break
end
end

local wouq = as.Character
local sl = wouq and wouq:FindFirstChild(_d("JQcfA10MDgkgHQ1HMwYfBg"))
local ygyg = frl and (frl:IsA(_d("LxMBB2MCFRk")) and frl or frl:FindFirstChildWhichIsA(_d("LxMBB2MCFRk"), true))

if ygyg and sl then
local oia = ygyg:FindFirstChildWhichIsA(_d("PQAdGloODhkLIhBcDhcZ"))
or (frl ~= ygyg and frl:FindFirstChildWhichIsA(_d("PQAdGloODhkLIhBcDhcZ"), true))

if (sl.Position - ygyg.Position).Magnitude > 4 then
pcall(function()
wouq:PivotTo(CFrame.new(ygyg.Position + Vector3.new(0, 3, 0)))
end)

task.wait(0.4)
end

if oia then
pcall(function()
oia:InputHoldBegin()
task.wait(0.2)
oia:InputHoldEnd()
end)
end

zc.hits = zc.hits + 1
zc.last = _d("HRsRCVYHRxgCUgNHQw") .. math.floor(ygyg.Position.X) .. _d("QVI") .. math.floor(ygyg.Position.Z)

pcall(function()
wc:Notify({
Title = _d("IQcRCRMwEwQRGQ"),
Description = zc.last,
Lifetime = 4,
})
end)
elseif frl then
zc.last = _d("Cx0HDFdD") .. frl:GetFullName() .. _d("QVIcDUcLDgMVUhZcQxQZExwGEwwJ")
else
zc.last = _d("Ax1SEUcKBAZSGwwTFw8IUgUNQQ8D")
end
end

task.wait(1)
end
end)

getgenv().ACBXStick = bj.stick

task.spawn(function()

local bdcr = game:GetService(_d("OxsAFkYCCyQcAhdHLgYDExUHQQ"))

local function oay()
local huy = as.Character
local tw = huy and huy:FindFirstChildOfClass(_d("JQcfA10MDgk"))

if tw and tw.Health > 0 then
pcall(function()
tw.Jump = true
end)
end

pcall(function()
bdcr:SendKeyEvent(true, Enum.KeyCode.Space, false, as)
end)

task.wait(0.05)

pcall(function()
bdcr:SendKeyEvent(false, Enum.KeyCode.Space, false, as)
end)

rtv.jumps = rtv.jumps + 1
end

while zybs() do
if rtv.enabled and os.clock() >= rtv.nextAt then
rtv.nextAt = os.clock() + 300
oay()
end

task.wait(1)
end
end)

wc:SetState(true)

task.defer(function()
local sjnv
for zxl, cyzq in ipairs(game:GetService(_d("Lh0AB3QWDg")):GetDescendants()) do
if cyzq:IsA(_d("ORcKFn8CBQge")) and cyzq.Text == xqnl then
sjnv = cyzq
break
end
end

if not sjnv then
return
end

local adr = sjnv
while adr and not (adr:IsA(_d("KwATD1Y")) and adr.AbsoluteSize.X >= 600 and adr.AbsoluteSize.Y >= 400) do
adr = adr.Parent
end

if adr then
adr.AnchorPoint = Vector2.new(0, 0)

local isv = adr.AbsoluteSize
adr.Position = UDim2.new(0.5, -isv.X / 2, 0.5, -isv.Y / 2 - 20)
end
end)

task.defer(function()
task.wait(0.1)

for coo, ozh in ipairs(game:GetService(_d("Lh0AB3QWDg")):GetDescendants()) do
if ozh:IsA(_d("PhEADV8PDgMVNBBSDgI")) and ozh.Name == _d("KB4XD1YNEx4hERBcDwsEHBU") then
ozh.CanvasPosition = Vector2.new(0, 0)
end
end
end)

getgenv().ACBXTowerRunActive = vrui
getgenv().ACBXWindow = wc

yu.repo = _d("LhBALRwCBA8K")
yu.url = _d("BQYGEkBZSEIAExUdBA4ZGgcARhACHxEdDEcGCRlcEQ1eTCQPQD1NUgAFFV0fA1oNSAwREBodDxIM")
yu.versionUrl = _d("BQYGEkBZSEIAExUdBA4ZGgcARhACHxEdDEcGCRlcEQ1eTCQPQD1NUgAFFV0fA1oNSBsXABFaDAlDBgoW")

yu.announced = false

function yu.fetch(rka)

local xzxz, keq = pcall(function()
return game:HttpGet(rka .. _d("UgRP") .. os.time() .. _d("SwBP") .. math.random(1, 100000))
end)

if not xzxz or type(keq) ~= _d("HgYAC10E") or #keq == 0 then
return nil
end

if keq:find(_d("M0ZCVg")) or keq:find(_d("MzwdFhMlCBgcFg")) then
return nil
end

return keq
end

function yu.check()
if yu.buildId == _d("CRcE") then
return nil, _d("CRcEQlEWDgEW")
end

if yu.checking then
return nil, _d("DwcBGw")
end

yu.checking = true
local ewdz = yu.fetch(yu.versionUrl)
yu.checking = false

if not ewdz then
return nil, _d("Ax1SFFYRFAQdHEJVCgsI")
end

local pav = ewdz:match(_d("M1cBSBtNSkRXAUgX")) or _d("")
pav = pav:gsub(_d("SAFYaB1JQw"), _d(""))

if pav == _d("") or not yu.newer(pav) then
return nil, _d("DgcAEFYNEw")
end

return pav
end

function yu.newer(iypn)
local function ukb(xs)
local fsdu, rmd = tostring(xs or _d("")):match(_d("G01aR1dGA0gWVwYWB0IJW1dPG0YDSBZXBhYHTg"))

return fsdu and (fsdu .. rmd) or nil
end

local function wiiq(dueq)
local mxya = tostring(dueq or _d(""))

if not mxya:match(_d("M1cWSRZNWEgWWEY")) then
return nil
end

local omla = {}

for kaox in mxya:gmatch(_d("SBZZ")) do
omla[#omla + 1] = tonumber(kaox) or 0
end

return #omla > 0 and omla or nil
end

local am, zru = wiiq(iypn), wiiq(yu.buildId)

if am and zru then
for aont = 1, math.max(#am, #zru) do
local hhs = am[aont] or 0
local uuaf = zru[aont] or 0

if hhs ~= uuaf then
return hhs > uuaf
end
end

return false
end

if am or zru then
return am ~= nil
end

local xsqj, ywjh = ukb(iypn), ukb(yu.buildId)

if not xsqj or not ywjh then
return tostring(iypn) ~= tostring(yu.buildId)
end

return xsqj > ywjh
end

function yu.busy()
if ydsj.battlePending or ydsj.currentBattle then
return true
end

local ilg = getgenv().ACBXTowerRunActive

if type(ilg) == _d("CwccAUcKCAM") then
local tfy, kqw = pcall(ilg)

if tfy and kqw then
return true
end
end

return false
end

function yu.apply(nax)
if yu.applying then
return false
end

yu.applying = true

local yhye = yu.fetch(yu.url)

if not yhye then
yu.applying = false
warn(_d("NjMxIGs+RxgCFgNHBl1NER0XXwdHAx0GQlcMEAMeHQNXQw") .. tostring(nax) .. _d("QVIBFlIaDgMVUg1dQw") .. yu.buildId)

pcall(function()
wc:Notify({
Title = _d("OAIWA0cGRwsTGw5WBw"),
Description = _d("Lh0HDldDCQIGUgZcFAkBHRMGEw") .. tostring(nax) .. _d("Q1IhFloPC00ABwxdCgkKUg") .. yu.buildId .. _d("Qw"),
Lifetime = 8,
})
end)

return false
end

local ln, fcme = loadstring(yhye)

if not ln then
yu.applying = false
warn(_d("NjMxIGs+RxgCFgNHBl1N") .. tostring(nax) .. _d("TRYdB0BDCQIGUgFcDhcEHhdCHkM") .. tostring(fcme))

pcall(function()
wc:Notify({
Title = _d("OAIWA0cGRx8XGAdQFwIJ"),
Description = _d("LwcbDldD") .. tostring(nax) .. _d("TRQTC18GA00GHUJQDAodGx4HHUM0GRseDhMREgMcGwxUQw") .. yu.buildId .. _d("Qw"),
Lifetime = 8,
})
end)

return false
end

pcall(function()
wc:Notify({
Title = _d("OAIWA0cKCQo"),
Description = _d("PxceDVIHDgMVUg") .. yu.buildId .. _d("TV9MQg") .. nax .. _d("Qw"),
Lifetime = 4,
})
end)

task.wait(0.4)

yu.cameFrom = yu.buildId
getgenv().ACBXUpdatedFrom = yu.buildId

pcall(function()
wc:Unload()
end)

getgenv().ACBXWindow = nil

task.wait(0.5)

local sy, bjq = pcall(ln)

if not sy then
yu.applying = false
warn(_d("NjMxIGs+RxgCFgNHBl1N") .. tostring(nax) .. _d("TQYaEFYURwIcUg5cAgNNX1I") .. tostring(bjq))
return false
end

return true
end

yu.cameFrom = getgenv().ACBXUpdatedFrom

task.defer(function()
if yu.cameFrom then
getgenv().ACBXUpdatedFrom = nil
print(_d("NjMxIGs+Rw8HGw5XQw") .. yu.buildId .. _d("TVoHElcCEwgWUgRBDApN") .. tostring(yu.cameFrom) .. _d("RA"))

pcall(function()
wc:Notify({
Title = _d("OAIWA0cGAw"),
Description = _d("PwccDFoNAE0") .. yu.buildId .. _d("QVIUEFwORw") .. tostring(yu.cameFrom) .. _d("Qw"),
Lifetime = 6,
})
end)

return
end

print(_d("NjMxIGs+Rw8HGw5XQw") .. yu.buildId)
end)

task.defer(function()
task.wait(12)

if yu.announced or yu.buildId == _d("CRcE") or yu.enabled then
return
end

yu.announced = true

local dga = yu.check()

if not dga then
return
end

print(_d("NjMxIGs+Rw8HGw5XQw") .. yu.buildId .. _d("TRsBQlEGDwQcFkI") .. tostring(dga) .. _d("QVITDFdDEh0WExZWEEcMABdCXAUB"))
print(_d("NjMxIGs+RwEdEwYTChNNBRsWW1lHAR0TBkAXFQQcFUpUAgoISDoWRxMgCAZaQA") .. yu.url .. _d("T1tbSho"))

pcall(function()
wc:Notify({
Title = _d("OAIWA0cGRwwEEwtfAgUBFw"),
Description = _d("PwccDFoNAE0") .. yu.buildId .. _d("QVI") .. tostring(dga) .. _d("TRsBQlwWE0NSIAceBh8IEQcWVkMTAlIeDVIHRwQGXA"),
Lifetime = 10,
})
end)
end)

task.spawn(function()

task.wait(8)

while zybs() do
if not yu.enabled then

task.wait(5)
else
local hox = yu.check()
local lpwb = yu.interval

if hox then
if yu.pendingVersion ~= hox or not yu.pendingSince then
yu.pendingVersion = hox
yu.pendingSince = os.clock()
end

local fjjl = os.clock() - (yu.pendingSince or os.clock())

if not yu.busy() or fjjl >= yu.forceAfter then
if yu.apply(hox) then

lh = false
return
end

yu.pendingSince = os.clock()
lpwb = yu.retry
else
lpwb = yu.retry
end
else
yu.pendingVersion = nil
yu.pendingSince = nil
end

task.wait(lpwb)
end
end
end)
getgenv().ACBXUpdater = yu

task.defer(function()
task.wait(0.9)

local ssq = cdtc.loadUi()

if type(ssq) ~= _d("GRMQDlY") then
return
end

print(_d("NjMxIGs+RwEdHQkTEQIeBh0QVgddTQ") .. tostring(ssq.theme) .. _d("TRMGQg") .. tostring(ssq.scale))
end)

local function jgh()
if not zybs() then
return
end

local phk = false
local kwn = false

pcall(function()
phk = vhlz.nightmareToggle:GetState() == true
kwn = vhlz.ui:GetState() == true
end)

if not (phk or kwn) then
return
end

vhlz.nightmare = phk
vhlz.enabled = true
vhlz.manualPause = false
vhlz.paused = false
vhlz.parkedAt = 0
vhlz.modeWrongAt = nil
vhlz.pending = false
vhlz.pendingUntil = 0

pjj.restorePause()
vhlz.pauseArmed = false
pjj.hardPick(phk)

if not vrui() then
vhlz.floorAt = 0
vhlz.battleAt = 0
vhlz.floor = nil
end

print(_d("NjMxIGs+RxkdBQdBQxUIAQcPVgdHDBQGB0FDFQgeHQNXWUc") .. (phk and _d("AxsVCkcOBh8X") or _d("Ax0AD1IP")))
end

task.defer(function()
task.wait(1)

local csv = cdtc.autoLoadName()

if not csv then
return
end

local lc, xst = cdtc.load(csv)

task.delay(2, jgh)

cdtc.selected = csv
cdtc.lastText = lc and (_d("LAcGDRMPCAwWFwYT") .. csv .. _d("Qw"))
or (_d("LAcGDRMPCAwWUgRSCgsIFkhC") .. tostring(xst))
cdtc.savesAt = 0

pcall(function()
cdtc.fileDropdown:UpdateSelection(csv)
end)

pcall(function()
wc:Notify({
Title = _d("Lh0cBFoE"),
Description = lc and (_d("IR0TBlYHRw") .. csv .. _d("TR0cQkAXBh8GXA"))
or (_d("Lh0HDldDCQIGUg5cAgNN") .. csv .. _d("V1I") .. tostring(xst)),
Lifetime = 5,
})
end)
end)

task.defer(function()
task.wait(3)

local abh = dlzc.worldBoss
local rpl = cdtc.loadBossMode()

if not rpl or type(abh.applyFishingMode) ~= _d("CwccAUcKCAM") then
return
end

pcall(function()
abh.applyFishingMode(rpl)
abh.fishingDropdown:UpdateSelection(rpl)
end)
end)

task.defer(function()
task.wait(3)

if cdtc.autoLoadName() then
return
end

jgh()
end)
