local _d = (function()
local A = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local M = {}
local cache = {}
for i = 1, #A do
M[string.sub(A, i, i)] = i - 1
end
local K = string.char(54, 108, 101, 54, 116, 109, 122)
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

local pke = "ACB Rebirth v0.998"

local function yu(lppy)
for scr, mi in ipairs(lppy:GetDescendants()) do
if mi:IsA(_d("YgkdQjgMGFMA")) and mi.Text == pke then
local kyoj = mi
while kyoj and not kyoj:IsA(_d("ZQ8XUxEDPUMF")) do
kyoj = kyoj.Parent
end
return kyoj
end
end
end

local function qw()
local iu = game:GetService(_d("ZgAETxEfCQ")).LocalPlayer

for pt, vsui in ipairs({
(gethui and gethui() or game:GetService(_d("dQMXUzMYEw"))),
game:GetService(_d("dQMXUzMYEw")),
iu and iu:FindFirstChild(_d("ZgAETxEfPUMF")),
}) do
for jcae, zbs in ipairs(vsui:GetChildren()) do

if zbs:IsA(_d("ZQ8XUxEDPUMF")) then
local kfgd = zbs:FindFirstChild(_d("dA0WUw"))

if kfgd and kfgd:FindFirstChild(_d("ZQUBUxYMCA")) and kfgd:FindFirstChild(_d("dQMLQhEDDg")) then
return zbs
end
end
end
end
end

if qw() and getgenv().ACBXAllowReload ~= true then
local bf = getgenv().ACBXWindow
local alpi = false
local zaw = false

if bf and bf.Dialog then
pcall(function()
if bf.GetState and bf:GetState() == false then
bf:SetState(true)
end

bf:Dialog({
Title = _d("dy8nFiYIGF8eEV5UBAkWDQlEEQweT0wXQxoDE1gL"),
Description = _d("d0wGWQQUWl8fRVcYHx9XCBwWGAIbUgkBFh0DWkIEDEVUHh9FHwxZGkNaZAkVWhUOHxYFERYDBA5eTBFeHR5aWQIACVQ5ElNMF0MaAxNYC0VVGx0DFh8RWQQeWlAFF0UAQVpFA0VZGgEDFgMLU1QIDFMeRVIGBAxTH0VCHAhaVw8GWQEDDhg"),
Buttons = {
{
Name = _d("ZAkVWhUOHw"),
Callback = function()
zaw = true
alpi = true
end,
},
{
Name = _d("fQkARg"),
Callback = function()
alpi = true
end,
},
},
})
end)
else

zaw = true
alpi = true
end

local vi = os.clock() + 90

while not alpi and os.clock() < vi do
task.wait(0.25)
end

if not zaw then
warn(_d("bS0mdCwwWloDBFJUHx9QGRZTEE1XFhgNU1QOFUYVRUIcDA4WBRYWBhgUWAULUVQeDlcVFhhULhZfDw4WJggKWg0GU1QZFRYfElcETRNCQEVZBk0PRQlFYxoBFVcIRUUXHxNGGEVfGk0TQh9FZREZDl8CAkVUGRtUQg"))

return
end

warn(_d("bS0mdCwwWkQJFVoVDhNYC0VCHAhaRBkLWB0DHRYPCkYNTQ1fGA0WAAUTRUwKWBFD"))
end

getgenv().ACBXAllowReload = nil

local qa = getgenv().ACBXWindow
if qa then
pcall(function()
qa:Unload()
end)
end

for anlz, of in ipairs({
game:GetService(_d("dQMXUzMYEw")),
game:GetService(_d("ZgAETxEfCQ")).LocalPlayer:FindFirstChild(_d("ZgAETxEfPUMF")),
}) do
if of then
local id = yu(of)
if id then
id:Destroy()
end
end
end

local nq = game:GetService(_d("ZgAETxEfCQ"))
local pen = game:GetService(_d("ZAkVWh0OG0IJAWUAAghXCwA"))
local pe = game:GetService(_d("Zg0RXhIEFFIFC1EnCAhABQZT"))
local puss = game:GetService(_d("ZBkLZREfDF8PAA"))
local nsmz = nq.LocalPlayer
local xjwi = nsmz:WaitForChild(_d("ZgAETxEfPUMF"))

local elv = false

local function lvv()
pcall(function()
local dn = game:GetService(_d("YhsAUxo+H0QaDFUR"))
local ec = (gethui and gethui()) or xjwi
local tvj = Color3.fromRGB(77, 166, 255)
local cy = nsmz.DisplayName

local function pu(ofjn, afff, urzu)
dn:Create(
ofjn,
TweenInfo.new(afff, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
urzu
):Play()
task.wait(afff)
end

local ubnh = Instance.new(_d("ZQ8XUxEDPUMF"))
ubnh.Name = _d("dy8nbj0DDkQD")
ubnh.IgnoreGuiInset = true
ubnh.DisplayOrder = 1000000
ubnh.ResetOnSpawn = false
ubnh.Parent = ec

local oewy = Instance.new(_d("cB4EWxE"))
oewy.Size = UDim2.fromScale(1, 1)
oewy.BackgroundColor3 = Color3.fromRGB(4, 6, 11)
oewy.BackgroundTransparency = 1
oewy.BorderSizePixel = 0
oewy.Parent = ubnh

local hx = Instance.new(_d("cB4EWxE"))
hx.AnchorPoint = Vector2.new(0.5, 0.5)
hx.Position = UDim2.fromScale(0.5, 0.5)
hx.Size = UDim2.fromOffset(400, 176)
hx.BackgroundColor3 = Color3.fromRGB(11, 16, 26)
hx.BackgroundTransparency = 1
hx.BorderSizePixel = 0
hx.Parent = ubnh

local fwoj = Instance.new(_d("YyUmWQYDH0Q"))
fwoj.CornerRadius = UDim.new(0, 14)
fwoj.Parent = hx

local lkbr = Instance.new(_d("YyU2QgYCEVM"))
lkbr.Color = Color3.fromRGB(46, 60, 86)
lkbr.Thickness = 1
lkbr.Transparency = 1
lkbr.Parent = hx

local odfd = Instance.new(_d("cB4EWxE"))
odfd.Size = UDim2.fromOffset(44, 2)
odfd.Position = UDim2.new(0.5, -22, 0, 34)
odfd.BackgroundColor3 = tvj
odfd.BorderSizePixel = 0
odfd.BackgroundTransparency = 1
odfd.Parent = hx

local coo = Instance.new(_d("YgkdQjgMGFMA"))
coo.BackgroundTransparency = 1
coo.Size = UDim2.new(1, -48, 0, 48)
coo.Position = UDim2.fromOffset(24, 42)
coo.Font = Enum.Font.GothamBold
coo.Text = _d("dS5FfiEv")
coo.TextSize = 28
coo.TextYAlignment = Enum.TextYAlignment.Center
coo.TextColor3 = Color3.fromRGB(236, 242, 255)
coo.TextTransparency = 1
coo.Parent = hx

local odjt = Instance.new(_d("YgkdQjgMGFMA"))
odjt.BackgroundTransparency = 1
odjt.Size = UDim2.new(1, -48, 0, 20)
odjt.Position = UDim2.fromOffset(24, 94)
odjt.Font = Enum.Font.Gotham
odjt.Text = _d("WgMEUh0DHQ")
odjt.TextSize = 14
odjt.TextColor3 = Color3.fromRGB(150, 163, 186)
odjt.TextTransparency = 1
odjt.Parent = hx

local hhi = Instance.new(_d("cB4EWxE"))
hhi.Size = UDim2.fromOffset(240, 3)
hhi.Position = UDim2.new(0.5, -120, 0, 130)
hhi.BackgroundColor3 = Color3.fromRGB(34, 44, 64)
hhi.BorderSizePixel = 0
hhi.BackgroundTransparency = 1
hhi.Parent = hx

local bvnr = Instance.new(_d("cB4EWxE"))
bvnr.Size = UDim2.fromScale(0, 1)
bvnr.BackgroundColor3 = tvj
bvnr.BorderSizePixel = 0
bvnr.BackgroundTransparency = 1
bvnr.Parent = hhi

local ecxo = Instance.new(_d("YyUmWQYDH0Q"))
ecxo.CornerRadius = UDim.new(0, 4)
ecxo.Parent = hhi

local nenw = Instance.new(_d("YyUmWQYDH0Q"))
nenw.CornerRadius = UDim.new(0, 4)
nenw.Parent = bvnr

pu(oewy, 0.35, { BackgroundTransparency = 0.15 })
task.spawn(function()
pu(hx, 0.3, { BackgroundTransparency = 0 })
end)
task.spawn(function()
pu(lkbr, 0.3, { Transparency = 0 })
end)
pu(coo, 0.3, { TextTransparency = 0 })
pu(odfd, 0.3, { BackgroundTransparency = 0 })
pu(odjt, 0.3, { TextTransparency = 0 })
pu(hhi, 0.3, { BackgroundTransparency = 0 })
pu(bvnr, 0.3, { BackgroundTransparency = 0 })

local py = { _d("WgMEUh0DHQ"), _d("WgMEUh0DHRg"), _d("WgMEUh0DHRhC"), _d("WgMEUh0DHRhCSw") }
task.spawn(function()
dn:Create(bvnr, TweenInfo.new(1.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
Size = UDim2.fromScale(1, 1),
}):Play()
for mkg = 1, 6 do
odjt.Text = py[(mkg - 1) % #py + 1]
task.wait(0.2)
end
end)
task.wait(1.2)

pu(coo, 0.2, { TextTransparency = 1 })
pu(odjt, 0.2, { TextTransparency = 1 })
pu(hhi, 0.2, { BackgroundTransparency = 1 })
pu(bvnr, 0.2, { BackgroundTransparency = 1 })

coo.Text = _d("YgQEWB8eWlADFxYBHhNYC0VbDU0JVR4MRgA")
coo.TextSize = 22
coo.TextWrapped = true
odjt.Text = pke
pu(coo, 0.25, { TextTransparency = 0 })
pu(odjt, 0.25, { TextTransparency = 0 })
task.wait(1.1)
pu(coo, 0.2, { TextTransparency = 1 })
pu(odjt, 0.2, { TextTransparency = 1 })

coo.Text = _d("YQkJVRsAHxY") .. cy .. _d("FjgKFjcvWn4ZBw")
coo.TextSize = 22
odjt.Text = _d("RRgERAAEFFE")
pu(coo, 0.3, { TextTransparency = 0 })
pu(odjt, 0.3, { TextTransparency = 0 })
task.wait(1.3)

pu(coo, 0.25, { TextTransparency = 1 })
pu(odjt, 0.25, { TextTransparency = 1 })
pu(oewy, 0.35, { BackgroundTransparency = 1 })

ubnh:Destroy()
end)

elv = true
end

task.spawn(lvv)

local zjg = pen:WaitForChild(_d("ZAkIWQAICQ"))

local function zem(wo, vs)
local wuu = zjg:FindFirstChild(wo)

if wuu then
return wuu
end

local so = zjg:WaitForChild(wo, vs or 3)

if not so then
warn(_d("dy8nbk5NCFMBCkIRTV0") .. wo .. _d("EUwLWVQBFVgLAERUCAJfHxFFVAQUFhgNXwdNHVcBABYCCAhFBQpYVEBaQgQEQlQLH1cYEEQRTRNFTApQEg"))
end

return so
end

local etxi = {
StartNPCBattle = zem(_d("ZRgERAAjKnUuBEIAAR8")),
NPCBattleResult = zem(_d("eDwmdBUZDloJN1MHGBZC")),
SyncNPCCooldowns = zem(_d("ZRULVTo9OXUDCloQAg1YHw")),
SetNPCDifficulty = zem(_d("ZQkReCQuPl8KA18XGBZCFQ")),
StartRaidBattle = zem(_d("ZRgERAA/G18IJ1cAGRZT")),
SetRaidDifficulty = zem(_d("ZQkRZBUEHnIFA1AdDg9aGBw")),
RaidProgress = zem(_d("ZA0MUiQfFVEeAEUH")),
RequestRaidProgress = zem(_d("ZAkUQxEeDmQNDFIkHxVRHgBFBw")),
SyncInfiniteRoomProgress = zem(_d("ZRULVT0DHF8CDEIRPxVZATVEGwoIUx8W")),
BuyRaidItem = zem(_d("dBkcZBUEHn8YAFs")),
RaidShopState = zem(_d("ZA0MUicFFUY/EVcACA")),
RaidNotify = zem(_d("ZA0MUjoCDl8KHA")),
SyncItems = zem(_d("ZRULVT0ZH1sf")),

UseItem = zem(_d("Yx8AfwAIFw")),
RequestWeatherState = zem(_d("ZAkUQxEeDmEJBEIcCAhlGARCEQ")),
WeatherChanged = zem(_d("YQkEQhwICHUEBFgTCB4")),
FishingUpdate = zem(_d("cAUWXh0DHWMcAVcACA")),
FishingThrow = zem(_d("cAUWXh0DHWIEF1kD")),
FishingReel = zem(_d("cAUWXh0DHWQJAFo")),
FishingStop = zem(_d("cAUWXh0DHWUYCkY")),

FishingIslandTeleport = zem(_d("cAUWXh0DHX8fCVcaCS5TAABGGx8O")),

SyncCollection = zem(_d("ZRULVTcCFloJBkIdAhQ")),
RequestSync = zem(_d("ZAkUQxEeDmUVC1U")),
ClaimIndexReward = zem(_d("dQAEXxkkFFIJHWQRGhtECA")),
RequestAchievements = zem(_d("ZAkUQxEeDncPDV8RGx9bCQtCBw")),
SyncAchievements = zem(_d("ZRULVTUOEl8JE1MZCBRCHw")),
ClaimAchievement = zem(_d("dQAEXxksGV4FAEARAB9YGA")),
RequestQuests = zem(_d("ZAkUQxEeDmcZAEUAHg")),
SyncQuests = zem(_d("ZRULVSUYH0UYFg")),
ClaimQuest = zem(_d("dQAEXxk8D1MfEQ")),
RequestPeriodicQuests = zem(_d("ZAkUQxEeDmYJF18bCRNVPRBTBxkJ")),
SyncPeriodicQuests = zem(_d("ZRULVSQICF8DAV8XPA9THxFF")),
ClaimPeriodicQuest = zem(_d("dQAEXxk9H0QFClIdDitDCRZC")),

OpenFuseDialog = zem(_d("eRwAWDIYCVMoDFcYAh0")),
FuseCards = zem(_d("cBkWUzcMCFIf")),
OpenDeconstructDialog = zem(_d("eRwAWDAIGVkCFkIGGBlCKAxXGAId")),
DeconstructCards = zem(_d("cgkGWRoeDkQZBkI3DAhSHw")),
OpenPackShop = zem(_d("eRwAWCQMGV0/DVkE")),
EquipPack = zem(_d("cx0QXwQ9G1UH")),

RequestSkillTree = zem(_d("ZAkUQxEeDmUHDFoYOQhTCQ")),
BuySkillNode = zem(_d("dBkcZR8EFloiClIR")),
OpenAccessoryShop = zem(_d("eRwAWDUOGVMfFlkGFCleAxU")),
OpenAccessoryShop2 = zem(_d("eRwAWDUOGVMfFlkGFCleAxUE")),
BuyAccessory = zem(_d("dBkcdxcOH0UfCkQN")),
BuyAccessory2 = zem(_d("dBkcdxcOH0UfCkQNXw")),
EquipAccessory = zem(_d("cx0QXwQsGVUJFkUbHwM")),

RedeemCode = zem(_d("ZAkBUxEAOVkIAA")),

OpenNPCDialog = zem(_d("eRwAWDo9OXIFBFobCg")),
TeleportToWorld = zem(_d("YgkJUwQCCEI4CmEbHxZS")),
RaidBattleStarted = zem(_d("ZA0MUjYMDkIAAGUADAhCCQE")),
BattleEnd = zem(_d("dA0RQhgIP1gI")),
StartBattle = zem(_d("ZRgERAAvG0IYCVM")),
RequestInfiniteRoomProgress = zem(_d("ZAkUQxEeDn8CA18aBA5TPgpZGT0IWQsXUwce")),
EndTowerRemote = zem(_d("cwIBYhsaH0Q+AFsbGR8")),
SaveClientData = zem(_d("ZQ0TUzcBE1MCEXIVGRs")),
OpenRaidShop = zem(_d("eRwAWCYME1I/DVkE")),
RequestItemSync = zem(_d("ZAkUQxEeDn8YAFsnFBRV")),
FishingGetState = zem(_d("cAUWXh0DHXEJEWUADA5T")),
FishingSetAuto = zem(_d("cAUWXh0DHWUJEXcBGRU")),
FishingShop = zem(_d("cAUWXh0DHWUECkY")),
DigGetState = zem(_d("cgUCcREZKUINEVM")),
DigShop = zem(_d("cgUCZRwCCg")),
DigAction = zem(_d("cgUCdxcZE1kC")),
DigUpdate = zem(_d("cgUCYwQJG0IJ")),
}

local gor = require(pen.ModuleScripts.NPCData)
local hh = require(pen.ModuleScripts.WorldDifficultyData)
local vjv = require(pen.ModuleScripts.BossData)
local ld = require(pen.ModuleScripts.RaidData)
local mzcg = require(pen.ModuleScripts.InfiniteRoomData)
local hpv = require(pen.ModuleScripts.CraftData)
local vbl = require(pen.ModuleScripts.AchievementData)
local ox = require(pen.ModuleScripts.RaidShopData)
local tcbh = require(pen.ModuleScripts.ItemData)
local lzf = require(pen.ModuleScripts.CardData)
local vnw = require(pen.ModuleScripts.SkillTreeData)

local gsu = {
enabled = false,
role = { _d("QgMSUwY"), _d("WBwG") },

picked = { _d("YgMSUwY"), _d("eDwmFhYMDkIAAEU") },
hasSlot2 = nil,
toggle = nil,

optionsFor = {
{ _d("YgMSUwY"), _d("fg0JWhsaH1MCRUIbGh9E"), _d("eDwmFhYMDkIAAEU") },
{ _d("eDwmFhYMDkIAAEU"), _d("fx8JVxoJWl4NF1IXAghT") },
},
roleIds = {
Tower = _d("QgMSUwY"),

[_d("fg0XUhcCCFNMEVkDCAg")] = _d("Xg0XUhcCCFM"),
[_d("eDwmFhYMDkIAAEU")] = _d("WBwG"),
[_d("fg0JWhsaH1MCRUIbGh9E")] = _d("Xg0JWhsaH1MC"),
[_d("fx8JVxoJWl4NF1IXAghT")] = _d("Xg0XUhcCCFM"),
},
roleNames = {
tower = _d("YgMSUwY"),
hardcore = _d("fx8JVxoJWl4NF1IXAghT"),
npc = _d("eDwmFhYMDkIAAEU"),
halloween = _d("fg0JWhsaH1MCRUIbGh9E"),
},
}

function gsu.detectSlot2()
local oncr = xjwi:FindFirstChild(_d("ZQkRQh0DHUUrEF8"))
local uxms = oncr and oncr:FindFirstChild(_d("ZQAKQiAIG1teN1kD"), true)

if uxms then
return uxms.Visible == true
end

return nil
end

function gsu.roleSlot(ff)
if not gsu.enabled then
return 1
end

for hl = 1, 2 do
if gsu.role[hl] == ff then
return hl
end
end

return nil
end

function gsu.isTowerRole(pwh)
return pwh == _d("QgMSUwY") or pwh == _d("Xg0XUhcCCFM") or pwh == _d("Xg0JWhsaH1MC")
end

function gsu.towerSlot()
return gsu.roleSlot(_d("QgMSUwY"))
end

function gsu.hardcoreSlot()
local ch = gsu.roleSlot(_d("Xg0XUhcCCFM"))

if ch == 2 and gsu.hasSlot2 == false then
return 1
end

return ch
end

function gsu.halloweenSlot()

local rvmc = gsu.roleSlot(_d("Xg0JWhsaH1MC"))

if rvmc == 1 then
return 1
end

return nil
end

function gsu.roomSlot()
local hbbi = gsu.roleSlot(_d("WBwG"))

if not gsu.enabled then
return 1
end

if hbbi == nil then
return nil
end

if hbbi == 2 and gsu.hasSlot2 == false then
return 1
end

return hbbi
end

function gsu.splitNpc()
return gsu.enabled and gsu.role[1] == _d("WBwG") and gsu.role[2] == _d("WBwG")
end

function gsu.busy(xkb)
local svw = xjwi:FindFirstChild(xkb == 2 and _d("fwInVwAZFlNe") or _d("fwInVwAZFlM"))

return svw ~= nil and svw:IsA(_d("dAMKWiIMFkMJ")) and svw.Value == true
end

function gsu.roleName(ufbi)
return gsu.roleNames[gsu.role[ufbi]] or gsu.roleNames.npc
end

function gsu.roleLabel(mcym)
return gsu.picked[mcym] or gsu.roleName(mcym)
end

local pnls = nil

if pen:FindFirstChild(_d("ewMBQxgIKVUeDEYAHg")) and pen.ModuleScripts:FindFirstChild(_d("fg0JWhsaH1MCMVkDCAhyDRFX")) then
local vp, piuh = pcall(function()
return require(pen.ModuleScripts.HalloweenTowerData)
end)

if vp then
pnls = piuh
end
end

local ehj = nil

if pen:FindFirstChild(_d("ewMBQxgIKVUeDEYAHg")) and pen.ModuleScripts:FindFirstChild(_d("cAUWXh0DHXINEVc")) then
local qtv, vy = pcall(function()
return require(pen.ModuleScripts.FishingData)
end)

if qtv then
ehj = vy
end
end

local function te(gnot)
return tostring(gnot):reverse():gsub(_d("HkkBExBIHh8"), _d("E11J")):reverse():gsub(_d("aEA"), _d(""))
end

local ot = {
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

getgenv().ACBXHalloweenUpgrades = ot.upgrade
getgenv().ACBXHalloweenTower = ot.run

ot.shopData = ox.ShopById.halloween
ot.shopItems = {}
ot.shopLabels = {}
ot.cardNames = {
hw_brook = _d("dB4KWR9NUnsZFl8XDBYWPw5TGAgOWQJM"),
hw_death_the_kid = _d("cgkEQhxNDl4JRX0dCVoeJAREGQIUXw9FcQEDWmEFAFoQCAgf"),
hw_barragan = _d("dA0XRBUKG1hMTWUfCBZTGApYVCYTWAtM"),
}
ot.cardShortNames = {
hw_brook = _d("dB4KWR8"),
hw_death_the_kid = _d("cgkEQhxNDl4JRX0dCQ"),
hw_barragan = _d("dA0XRBUKG1g"),
}

for rld, ydjv in ipairs(ot.shopData.Items) do
local buaa, mq = next(ydjv.price or {})
local qiuf = ydjv.id
local jy = ydjv.id

if ydjv.itemId then
local kq = tcbh.ById[ydjv.itemId]
qiuf = kq and (kq.name or ydjv.itemId) or ydjv.itemId
jy = qiuf
elseif ydjv.cardId then
qiuf = ot.cardNames[ydjv.cardId] or (lzf.ById[ydjv.cardId] and lzf.ById[ydjv.cardId].name) or ydjv.cardId
jy = ot.cardShortNames[ydjv.cardId] or qiuf
end

local qjzb = buaa == _d("Xg0JWhsaH1MCOlUVAx5P") and _d("dQ0LUg0") or (buaa == _d("XA0GXSsCJVoNC0IRHxQ") and _d("eg0LQhEfFEU") or tostring(buaa))
local eyg = qiuf .. _d("Fo7lolQ") .. te(mq) .. _d("Fg") .. qjzb

table.insert(ot.shopItems, {
id = ydjv.id,
label = eyg,
shortName = jy,
currency = buaa,
price = mq,
stock = ydjv.stock,
cardId = ydjv.cardId,
})

table.insert(ot.shopLabels, eyg)
end

for jht, vbqf in ipairs({
_d("ZAkUQxEeDn4NCVobGh9TAjBGEx8bUgkW"),
_d("dBkcfhUBFlkbAFMaOApRHgRSEQ"),
_d("fg0JWhsaH1MCMEYTHxtSCTZCFRkf"),
_d("ZAkUQxEeDn4NCVobGh9TAjFZAwgIZh4KUQYICUU"),
_d("ZRULVTwMFloDElMRAy5ZGwBEJB8VUR4ARQc"),
_d("eRwAWDwMFloDElMRAy5ZGwBE"),
}) do
ot.remote[vbqf] = zem(vbqf)
end

function ot.fire(xuc, ...)
local efr = ot.remote[xuc]

if not efr then
return
end

local ebgx = { ... }

pcall(function()
efr:FireServer(table.unpack(ebgx))
end)
end

function ot.on(zaeb, pcph)
local mtf = ot.remote[zaeb]

if mtf then
mtf.OnClientEvent:Connect(pcph)
end
end

if pnls then
for cks, vrz in ipairs(pnls.Upgrades) do
table.insert(ot.upgrades, {
id = vrz.id,
name = vrz.name,
maxLevel = vrz.maxLevel,
})

table.insert(ot.labels, vrz.name)
end
end

function ot.level(co)
if not pnls then
return 0
end

return pnls.getUpgradeLevel(ot.upgrade.levels, co)
end

function ot.cost(kj)
if not pnls then
return nil
end

return pnls.getUpgradeCost(kj, ot.level(kj))
end

function ot.bonus(zx, updu)
if not pnls then
return _d("")
end

return pnls.formatUpgradeBonus(zx, updu)
end

function ot.request()
ot.upgrade.lastRequest = os.time()
ot.fire(_d("ZAkUQxEeDn4NCVobGh9TAjBGEx8bUgkW"))
end

function ot.text()
if not pnls then
return _d("fg0JWhsaH1MCRWIbGh9ETAFXAAxaXx9FWBsZWl8CRUIcBAkWDhBfGAlU")
end

local ed = ot.upgrade
local nbo = {}

if ed.balance == nil then
table.insert(nbo, _d("ZhkIRh8EFEVWRRtURRtFBwxYE00OXglFRREfDFMeTA"))
else
table.insert(nbo, _d("ZhkIRh8EFEVWRQ") .. te(ed.balance))
end

for yq, bmi in ipairs(ot.upgrades) do
local qs = ot.level(bmi.id)
local tm = ot.cost(bmi.id)
local dtq = ed.selected[bmi.id] and _d("bRQ4Fg") or _d("bUw4Fg")
local mrnn = dtq .. bmi.name .. _d("FkwpQFQ") .. qs .. _d("GQ") .. bmi.maxLevel

if tm then
table.insert(nbo, mrnn .. _d("FkwLUwwZWg") .. tostring(tm) .. _d("Fkw") .. ot.bonus(bmi.id, qs + 1))
else
table.insert(nbo, mrnn .. _d("FkwIVwwIHg"))
end
end

if not next(ed.selected) then
table.insert(nbo, _d("ZgUGXVQYClEeBFIRHlpfAkVCHAhaUh4KRhACDVhMBFgQTTtDGAoWAR0dRA0BUwdNGEMVFhYABR8WDw1TFR0fRRhFWRoIWk8DEBYXDBQWDQNQGx8eGA"))
end

return table.concat(nbo, _d("PA"))
end

function ot.buy()
local ohio = ot.upgrade

if ohio.waiting or ohio.balance == nil or os.time() - ohio.lastBuy < 1 then
return
end

local ubx = nil
local fsi = nil

for rsw, jrz in ipairs(ot.upgrades) do
if ohio.selected[jrz.id] and os.time() >= (ohio.failedUntil[jrz.id] or 0) then
local yiwg = ot.cost(jrz.id)

if yiwg and ohio.balance >= yiwg and (not fsi or yiwg < fsi) then
ubx = jrz.id
fsi = yiwg
end
end
end

if not ubx then
return
end

ohio.waiting = true
ohio.lastBuy = os.time()
ohio.pendingId = ubx
ohio.pendingLevel = ot.level(ubx)

ohio.balance = ohio.balance - fsi

ot.fire(_d("dBkcfhUBFlkbAFMaOApRHgRSEQ"), ubx)
end

ot.on(_d("fg0JWhsaH1MCMEYTHxtSCTZCFRkf"), function(itqv)
if type(itqv) ~= _d("Qg0HWhE") then
return
end

local vhr = ot.upgrade

vhr.balance = tonumber(itqv.balance) or 0
vhr.levels = type(itqv.levels) == _d("Qg0HWhE") and itqv.levels or {}

if vhr.pendingId then
if ot.level(vhr.pendingId) <= vhr.pendingLevel then
vhr.failedUntil[vhr.pendingId] = os.time() + 15
end

vhr.pendingId = nil
end

if type(itqv.message) == _d("RRgXXxoK") then
vhr.lastMessage = itqv.message
end

vhr.waiting = false
end)

ot.on(_d("ZRULVTwMFloDElMRAy5ZGwBEJB8VUR4ARQc"), function(yp, sxiu)
ot.run.highest = tonumber(yp) or 0
ot.run.savedRun = type(sxiu) == _d("Qg0HWhE") and sxiu or nil
end)

ot.on(_d("eRwAWDwMFloDElMRAy5ZGwBE"), function(jnt, qu, fv)
ot.run.highest = tonumber(jnt) or ot.run.highest
ot.run.savedRun = type(fv) == _d("Qg0HWhE") and fv or nil
end)

etxi.BattleEnd.OnClientEvent:Connect(function(je)
if type(je) == _d("Qg0HWhE") and je.mode == _d("XwIDXxoEDlMzF1kbAA") and je.tower == _d("Xg0JWhsaH1MC") then
ot.run.inBattle = false
ot.run.pending = true
ot.run.pendingUntil = os.time() + 3

task.delay(0.3, function()
ot.requestProgress()
end)
end
end)

function ot.requestProgress()
ot.run.lastRequest = os.time()
ot.fire(_d("ZAkUQxEeDn4NCVobGh9TAjFZAwgIZh4KUQYICUU"))
end

function ot.bestRoom()
local cd = ot.run.highest

if not pnls or cd == nil then
return nil
end

for msxd, efx in ipairs(pnls.Milestones) do
if pnls.isMilestoneUnlocked(efx, cd)
and not pnls.isMilestoneCleared(efx, cd) then
return efx
end
end

return nil
end

function ot.startRun()
local xojb = ot.bestRoom()

if not xojb then
return false
end

local uh = ot.run.savedRun
local bqvp = type(uh) == _d("Qg0HWhE") and uh.milestone == xojb
local rp = bqvp and (tonumber(uh.currentFloor) or xojb) or xojb

local jurw = gsu.halloweenSlot() or 1

local bo = getgenv().ACBXAuto

bo = type(bo) == _d("Qg0HWhE") and bo.bossTeams or nil

if ot.run.teamChosen and bo and bo.applyTeam then
bo.applyTeam(ot.run.team, jurw)
end

local dxr = xjwi:FindFirstChild(jurw == 2 and _d("ZAkWUwAvG0IYCVMyARVZHlc") or _d("ZAkWUwAvG0IYCVMyARVZHg"))

if dxr and dxr:IsA(_d("dAULUhUPFlMpE1MaGQ")) then
pcall(function()
dxr:Fire(rp, _d("XwIDXxoEDlMzF1kbAA"))
end)
end

local zhe = xjwi:FindFirstChild(jurw == 2 and _d("ZRgERAAkFFAFC18ACChZAwh0FRkOWglX") or _d("ZRgERAAkFFAFC18ACChZAwh0FRkOWgk"))

if zhe and zhe:IsA(_d("dAULUhUPFlMpE1MaGQ")) then
pcall(function()
zhe:Fire(rp, _d("Xg0JWhsaH1MC"), rp)
end)
end

ot.run.milestone = xojb
ot.run.savedRun = nil
ot.run.inBattle = true
ot.run.inBattleUntil = os.time() + 120
ot.run.pending = true
ot.run.pendingUntil = os.time() + 10

if bqvp then
etxi.StartBattle:FireServer(_d("XwIDXxoEDlMzF1kbAA"), {
continue = true,
tower = _d("Xg0JWhsaH1MC"),
slot = jurw,
})
else
etxi.StartBattle:FireServer(_d("XwIDXxoEDlMzF1kbAA"), {
tower = _d("Xg0JWhsaH1MC"),
milestone = xojb,
slot = jurw,
})
end

return true
end

local edbe = {}
for va, aqqi in ipairs(gor.NPCs) do
edbe[aqqi.name] = aqqi.id
end

local vrf = getgenv().ACBXCooldowns
if type(vrf) ~= _d("Qg0HWhE") then
vrf = {}
getgenv().ACBXCooldowns = vrf
end

local hag = getgenv().ACBXAuto
if type(hag) == _d("Qg0HWhE") and type(hag.cooldowns) == _d("Qg0HWhE") then
for gyp, pzji in pairs(hag.cooldowns) do
if vrf[gyp] == nil then
vrf[gyp] = pzji
end
end
end

local kuve = {
enabled = false,
story = false,
storyDifficulty = _d("WAMXWxUB"),
storyDropdown = nil,
selectedByWorld = {},
difficulties = { _d("WAMXWxUB") },
walkToNpc = false,
cooldowns = vrf,
activeDifficulty = {},
lastFetch = {},
unlocked = {},
currentBattle = nil,
battlePending = false,
battlePendingUntil = 0,
}

kuve.bossTeams = {
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

path = _d("dy8nblsZH1cBFhgeHhVY"),
}

function kuve.bossTeams.trackCollection()
if kuve.bossTeams.collectionHooked then
return
end

kuve.bossTeams.collectionHooked = true

local nlg = zjg:FindFirstChild(_d("ZRULVTcCFloJBkIdAhQ"))

if not nlg then
return
end

nlg.OnClientEvent:Connect(function(ri)
if type(ri) == _d("Qg0HWhE") and type(ri.teams) == _d("Qg0HWhE") then
kuve.bossTeams.teams = ri.teams
kuve.bossTeams.teamsAt = os.clock()
end
end)

task.spawn(function()

task.wait(3)

for kw = 1, 8 do
if kuve.bossTeams.teams then
return
end

local ud = zjg:FindFirstChild(_d("ZRsMQhcFLlMNCA"))
local fgo = kuve.bossTeams.slotTeam
local opzz = nil

if ud and type(fgo) == _d("UBkLVQAEFVg") then
local dgb, gzw = pcall(fgo, 2)
opzz = dgb and gzw or nil

if not opzz then
dgb, gzw = pcall(fgo, 1)
opzz = dgb and gzw or nil
end
end

if opzz then
pcall(function()
ud:FireServer(opzz, false, 2)
end)
end

task.wait(6)
end
end)
end

function kuve.bossTeams.teamCards(xbb)
local ugw = kuve.bossTeams.teams

if type(ugw) ~= _d("Qg0HWhE") then
return nil
end

local vhth = ugw[xbb]

if type(vhth) ~= _d("Qg0HWhE") then
return 0
end

local znu = 0

for pb, wute in pairs(vhth) do
if type(wute) == _d("Qg0HWhE") then
znu = znu + 1
end
end

return znu
end

function kuve.bossTeams.raidState()
return getgenv().ACBXAutoRaid
end

function kuve.bossTeams.save()
if type(writefile) ~= _d("UBkLVQAEFVg") then
return false
end

local zlu = {}

for gv, vxo in pairs(kuve.bossTeams.picked) do
zlu[gv] = vxo
end

local gjpf = {}

for wrgf, mpje in pairs(kuve.bossTeams.raidPicked) do
gjpf[wrgf] = mpje
end

local fu = {}

for jrwi, eln in pairs(kuve.bossTeams.towerPicked) do
fu[jrwi] = eln
end

return pcall(function()
if type(makefolder) == _d("UBkLVQAEFVg") and type(isfile) == _d("UBkLVQAEFVg") and not isfile(kuve.bossTeams.path) then
pcall(makefolder, _d("dy8nbg"))
end

local dphn = kuve.bossTeams.raidState()
local juo = dphn and dphn.worldBoss
local fd = nil

if juo and juo.teamChosen then
fd = juo.team
end

writefile(kuve.bossTeams.path, game:GetService(_d("fhgRRicICEAFBlM")):JSONEncode({
areas = zlu,
raids = gjpf,
towers = fu,
swap = kuve.bossTeams.swap,
globalBoss = fd,
updatedAt = os.time(),
}))
end)
end

function kuve.bossTeams.load()
if type(readfile) ~= _d("UBkLVQAEFVg") or type(isfile) ~= _d("UBkLVQAEFVg") then
return false
end

local ttpu, mm = pcall(function()
if not isfile(kuve.bossTeams.path) then
return nil
end

return readfile(kuve.bossTeams.path)
end)

if not ttpu or type(mm) ~= _d("RRgXXxoK") or #mm == 0 then
return false
end

local hha
local doqo = pcall(function()
hha = game:GetService(_d("fhgRRicICEAFBlM")):JSONDecode(mm)
end)

if not doqo or type(hha) ~= _d("Qg0HWhE") then
return false
end

if type(hha.areas) == _d("Qg0HWhE") then
for exn, fhpy in pairs(hha.areas) do
local ft = tonumber(fhpy)

if ft and ft >= 1 and ft <= 4 then
kuve.bossTeams.picked[exn] = ft
end
end
end

if type(hha.raids) == _d("Qg0HWhE") then
for vd, owyo in pairs(hha.raids) do
local nczn = tonumber(owyo)

if nczn and nczn >= 1 and nczn <= 4 then
kuve.bossTeams.raidPicked[vd] = nczn
end
end
end

if type(hha.towers) == _d("Qg0HWhE") then
for hfe, qlbv in pairs(hha.towers) do
local spiz = tonumber(qlbv)

if spiz and spiz >= 1 and spiz <= 4 then
kuve.bossTeams.towerPicked[hfe] = spiz
end
end
end

if type(hha.swap) == _d("Qg0HWhE") then
local ob = tonumber(hha.swap.team)
local ctps = tonumber(hha.swap.floor)

if ob and ob >= 1 and ob <= 4 then
kuve.bossTeams.swap.team = ob
end

if ctps and ctps > 0 then
kuve.bossTeams.swap.floor = ctps
end

local ml = tonumber(hha.swap.team2)
local osdb = tonumber(hha.swap.floor2)

if ml and ml >= 1 and ml <= 4 then
kuve.bossTeams.swap.team2 = ml
end

if osdb and osdb > 0 then
kuve.bossTeams.swap.floor2 = osdb
end

kuve.bossTeams.swap.on = hha.swap.on == true
end

local ijax = tonumber(hha.globalBoss)
local uo = kuve.bossTeams.raidState()
local lp = uo and uo.worldBoss

if ijax and ijax >= 1 and ijax <= 4 and lp then
lp.team = ijax

lp.teamChosen = true
end

return true
end

local oq = nil
local izdc = nil

local function wzzo(ti, vnru)
return ti .. _d("Sg") .. vnru
end

local function tx(zer, bd)
return kuve.cooldowns[wzzo(zer, bd)] or 0
end

local function xyf(qviu, qik, jzmd)
kuve.cooldowns[wzzo(qviu, qik)] = jzmd
end

getgenv().ACBXAuto = kuve

local axd = {
enabled = false,
picks = { [1] = {}, [2] = {} },
cursor = { [1] = 1, [2] = 1 },
losses = { [1] = {}, [2] = {} },
inFlight = {},

lossLimit = 3,
difficulties = { _d("WAMXWxUB") },
walkToBoss = false,
walkSpeed = 18,
pending = {},
pendingUntil = {},
cleared = {},
progress = {},
}

getgenv().ACBXAutoRaid = axd

axd.worldBoss = {
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

fishingMode = _d("QgMCUwAFH0Q"),
fishingDropdown = nil,

digHold = false,

walkToBoss = false,
walkToggle = nil,

building = false,
}

kuve.bossTeams.trackCollection()
kuve.bossTeams.load()

function axd.worldBoss.data()
local ex = axd.worldBoss

if ex.module == nil then
local nkr, ogjq = pcall(function()
return require(pen.ModuleScripts.WorldBossData)
end)

ex.module = nkr and ogjq or false
end

return ex.module or nil
end

function axd.worldBoss.clock(xlen)
xlen = math.max(0, math.floor(tonumber(xlen) or 0))

local bcrm = math.floor(xlen / 3600)
local orku = math.floor((xlen % 3600) / 60)
local wa = xlen % 60

if bcrm > 0 then
return string.format(_d("EwgNFlFdSFIB"), bcrm, orku)
end

if orku > 0 then
return string.format(_d("EwgIFlFdSFIf"), orku, wa)
end

return string.format(_d("EwgW"), wa)
end

function axd.worldBoss.status()
local bivp = nil

pcall(function()
bivp = pen:FindFirstChild(_d("YQMXWhAvFUUfNkIVGQ9F"))
end)

return bivp
end

function axd.worldBoss.isOpen()
local rcf = axd.worldBoss.status()

if not rcf then
return nil
end

return rcf:GetAttribute(_d("dw8RXwII")) == true
end

function axd.worldBoss.window()
local ivb = axd.worldBoss.status()

if not ivb then
return nil, nil
end

return tonumber(ivb:GetAttribute(_d("cwIBRTUZ"))), tonumber(ivb:GetAttribute(_d("eAkdQjUZ")))
end

function axd.worldBoss.cycle()
local mz = axd.worldBoss
local scd = mz.data()

if not scd or not scd.getCycleState then
return nil
end

local qg, dk = pcall(function()
return scd.getCycleState()
end)

return qg and dk or nil
end

function axd.worldBoss.shopList()
local zfa = axd.worldBoss

if zfa.items then
return zfa.items
end

local uq = {}
local nad = zfa.data()

if not nad or type(nad.ShopItems) ~= _d("Qg0HWhE") then
zfa.items = uq
return uq
end

for psfn, mfk in ipairs(nad.ShopItems) do
local but = nil

pcall(function()
if mfk.itemId then
local sw = require(pen.ModuleScripts.ItemData)
local st = sw[mfk.itemId] or (sw.ById and sw.ById[mfk.itemId])
but = st and st.name or nil
elseif mfk.cardId then
local lli = require(pen.ModuleScripts.CardData)
local zox = lli[mfk.cardId] or (lli.ById and lli.ById[mfk.cardId])
but = zox and zox.name or nil
end
end)

local iwy = axd.worldBoss.state

if type(iwy) == _d("Qg0HWhE") and type(iwy.shop) == _d("Qg0HWhE") then
for uey, ofzb in ipairs(iwy.shop) do
if ofzb.id == mfk.id and ofzb.name then
but = ofzb.name
break
end
end
end

if not but then

but = tostring(mfk.accessoryId or mfk.id or _d("CQ")):gsub(_d("aQ"), _d("Fg")):gsub(_d("HkkEH1w2X0FLOBxd"), function(qbst, rvft)
return qbst:upper() .. rvft
end)
end

table.insert(uq, {
id = mfk.id,
name = but,
price = tonumber(mfk.price) or 0,
kind = mfk.itemId and _d("XxgAWw") or (mfk.cardId and _d("VQ0XUg") or _d("Vw8GUwceFUQV")),
})
end

zfa.items = uq

return uq
end

function axd.worldBoss.bodyText()
local uhq = axd.worldBoss
local nuj = uhq.state

if type(nuj) ~= _d("Qg0HWhE") then
return _d("ZAkEUh0DHRYYDVNUDxVFH0sYWg")
end

local doks = {}
local bco = uhq.cycle()
local us = uhq.isOpen()
local wyx, nedz = uhq.window()

if us == nil then
us = nuj.open == true
end

if us then
local moik = _d("eRwAWA")

if not wyx and bco then
wyx = bco.endsAt
end

if wyx and wyx > os.time() then
moik = moik .. _d("Fq7SFg") .. uhq.clock(wyx - os.time()) .. _d("FgAAUAA")
end

table.insert(doks, moik)
else
local wciy = _d("cgMSWFQLFURMC1kD")

if not nedz and bco then
nedz = bco.nextAt
end

if nedz and nedz > os.time() then
wciy = wciy .. _d("PC4EVR9NE1hM") .. uhq.clock(nedz - os.time())
end

table.insert(doks, wciy)
end

table.insert(doks, _d("ewkBVxgeQBY") .. tostring(nuj.medals or 0) .. _d("PCcMWhgeQBY") .. tostring(nuj.kills or 0))

if nuj.inFight then
table.insert(doks, _d("cAUCXgAEFFE"))
elseif us then

table.insert(doks, nuj.killedThisSpawn and _d("ZAkEUg1nMV8ACVMQTQ5eBRYWBx0bQQJFVxgfH1cIHA") or _d("ZAkEUg0"))
end

if uhq.stopAtFull then
local cza, hdc = uhq.meter()

if cza and hdc then
local function ev(xox)
if xox >= 1000000000 then
return string.format(_d("E0JUUDY"), xox / 1000000000)
elseif xox >= 1000000 then
return string.format(_d("Ewso"), math.floor(xox / 100000) / 10)
elseif xox >= 1000 then
return string.format(_d("Ewsu"), math.floor(xox / 100) / 10)
end

return tostring(math.floor(xox))
end

table.insert(doks, _d("ZQkXQBEfWlsJEVMGV1o") .. ev(cza) .. _d("FkNF") .. ev(hdc)
.. (uhq.meterFull() and _d("PCoQWhhNVxYCCkJUCxNRBBFfGgpaQgQMRVQeClcbCw") or _d("")))
end
end

return table.concat(doks, _d("PGY"))
end

function axd.worldBoss.shopText()
local fcn = axd.worldBoss
local kts = fcn.state

if type(kts) ~= _d("Qg0HWhE") or type(kts.shop) ~= _d("Qg0HWhE") then
return _d("ZAkEUh0DHRYYDVNUHhJZHEsYWg")
end

local wkzp = { _d("ewkBVxgeQBY") .. tostring(kts.medals or 0) }

for icf, sbya in ipairs(kts.shop) do
local spw = tostring(sbya.name or sbya.id)
local zc = tostring(sbya.price or _d("CQ"))
local ygyb

if sbya.kind == _d("XxgAWw") then
ygyb = spw .. _d("PA") .. zc .. _d("Fq7SFg") .. tostring(sbya.left or 0) .. _d("GQ") .. tostring(sbya.stock or _d("CQ")) .. _d("FgAAUAA")
elseif sbya.owned then
ygyb = spw .. _d("PCMSWBEJ")
else
ygyb = spw .. _d("PA") .. zc .. _d("Fq7SFhsDHxYDA1A")
end

table.insert(wkzp, ygyb)
end

return table.concat(wkzp, _d("PGY"))
end

function axd.worldBoss.shopOptions()
local mywj = axd.worldBoss

if mywj.options then
return mywj.options
end

local ym = {}

mywj.labelToId = {}

for nnt, xmo in ipairs(mywj.shopList()) do
local al = xmo.name .. _d("Fq7SFg") .. tostring(xmo.price)

table.insert(ym, al)
mywj.labelToId[al] = xmo.id
end

mywj.options = ym

return ym
end

local function mrty(ggwv)
local bryd = axd.progress[ggwv]
local cpz = pen:FindFirstChild(_d("ZA0MUicZG0IZFg"))
local fe = cpz and cpz:GetAttribute(_d("dRUGWhEkHg"))

if type(bryd) == _d("Qg0HWhE") then
if bryd.cycleId then
fe = bryd.cycleId
end

if bryd.completed and bryd.completedRaidId then
return tostring(fe) .. _d("DAgKWBE")
end

local uha = bryd.phaseIndex or bryd.phase

if uha then
return tostring(fe) .. _d("DA") .. tostring(uha)
end
end

return tostring(fe)
end

function axd.finished(zsxy)
local kf = axd.progress[zsxy]

return type(kf) == _d("Qg0HWhE") and kf.completed == true and kf.completedRaidId == zsxy
end

function axd.bossFor(rb)
local vcc = axd.picks[rb]

if not vcc or #vcc == 0 then
return nil
end

local olkf = pen:FindFirstChild(_d("ZA0MUicZG0IZFg"))
local cboc = axd.losses[rb] or {}
local ggtv = axd.cursor[rb] or 1

for bfp = 0, #vcc - 1 do
local aies = (ggtv - 1 + bfp) % #vcc + 1
local bgrk = vcc[aies]
local ja = not olkf or olkf:GetAttribute(_d("ZAkEUg0y") .. bgrk) == true

if ja and not axd.finished(bgrk) and (cboc[bgrk] or 0) < axd.lossLimit then
axd.cursor[rb] = aies

return bgrk
end
end

return nil
end

etxi.RaidBattleStarted.OnClientEvent:Connect(function(rof)

local hv = type(rof) == _d("Qg0HWhE") and rof.raidId or nil

if type(hv) == _d("RRgXXxoK") then
axd.pending[hv] = false
else
for nkqu in pairs(axd.pending) do
axd.pending[nkqu] = false
end
end
end)

etxi.BattleEnd.OnClientEvent:Connect(function(xwjg)
for pfdc in pairs(axd.pending) do
axd.pending[pfdc] = false
end

if type(xwjg) ~= _d("Qg0HWhE") or not axd.enabled then
return
end

local oy = type(xwjg.raidId) == _d("RRgXXxoK") and xwjg.raidId or nil
local qdo = oy and axd.inFlight[oy] or nil

if not oy then
for jxnd, vrr in pairs(axd.inFlight) do
oy = jxnd
qdo = vrr
break
end
end

if not oy then
return
end

axd.inFlight[oy] = nil

if xwjg.result == _d("WgMWUw") then

local wb = axd.losses[qdo or 1]

axd.cleared[oy] = nil
wb[oy] = (wb[oy] or 0) + 1

for lqn in pairs(axd.pendingUntil) do
axd.pendingUntil[lqn] = os.time() + 3
end
else

axd.losses[qdo or 1][oy] = 0
end
end)

etxi.RaidProgress.OnClientEvent:Connect(function(gjvl)
if type(gjvl) == _d("Qg0HWhE") and type(gjvl.raidId) == _d("RRgXXxoK") then
axd.progress[gjvl.raidId] = gjvl
end
end)

etxi.RequestRaidProgress:FireServer()

local nms = {
enabled = false,
progress = nil,
currentRoom = nil,
inBattle = false,
inBattleUntil = 0,
pending = false,
pendingUntil = 0,
}

getgenv().ACBXAutoRooms = nms

etxi.SyncInfiniteRoomProgress.OnClientEvent:Connect(function(yrpy)
if type(yrpy) == _d("WBkIVBEf") then
nms.progress = yrpy
nms.pending = false
end
end)

etxi.BattleEnd.OnClientEvent:Connect(function(rzyj)
if type(rzyj) == _d("Qg0HWhE") and rzyj.mode == _d("XwIDXxoEDlMzF1kbAA") then
nms.inBattle = false
nms.pending = true
nms.pendingUntil = os.time() + 3

task.delay(0.3, function()
etxi.RequestInfiniteRoomProgress:FireServer()
end)
end
end)

etxi.RequestInfiniteRoomProgress:FireServer()

local rlid = {
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

getgenv().ACBXAutoTower = rlid

local qzh = {
enabled = false,
floor = 0,
triggered = false,
}

getgenv().ACBXAutoPause = qzh

local pwis = {
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
Typhoon = _d("QhUVXhsCFA"),
Blizzard = _d("VAAMTA4MCFI"),
Lightning = _d("WgUCXgADE1gL"),
Windstorm = _d("QQULUgcZFUQB"),
Sharingan = _d("RQQERB0DHVcC"),
Singularity = _d("RQULUQEBG0QFEU8"),
[_d("ewMLVwYOEhYoClsVBBQ")] = _d("WwMLVwYOEmkIClsVBBQ"),
Void = _d("QAMMUg"),
[_d("ew0BU1QEFBYkAFcCCBQ")] = _d("Ww0BUysEFGkEAFcCCBQ"),
Manga = _d("Ww0LURU"),
},
}

function pwis.weatherWanted(ref)
local bk = pwis.weatherNow

if type(bk) ~= _d("RRgXXxoK") then
return nil
end

for ny, vcco in pairs(ref or pwis.weathers) do
if vcco and pwis.weatherIds[ny] == bk then
return ny
end
end

return nil
end

getgenv().ACBXAutoGiveUp = pwis

local tz = {
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

if pen:FindFirstChild(_d("ewMBQxgIKVUeDEYAHg")) and pen.ModuleScripts:FindFirstChild(_d("fg0XUhcCCFM4CkERHz5XGAQ")) then
local rvzn, rdp = pcall(function()
return require(pen.ModuleScripts.HardcoreTowerData)
end)

if rvzn then
tz.data = rdp
end
end

getgenv().ACBXHardcore = tz

task.spawn(function()
local gtpq = pen:FindFirstChild(_d("ZAkIWQAICQ"))

if not gtpq then
return
end

local oimz = gtpq:WaitForChild(_d("ZRULVTwMCFIPCkQRORVBCRdmBgIdRAkWRQ"), 20)

if oimz and oimz:IsA(_d("ZAkIWQAIP0AJC0I")) then
tz.remotes.sync = oimz

oimz.OnClientEvent:Connect(function(iaq)
if type(iaq) ~= _d("Qg0HWhE") then
return
end

tz.progress = tonumber(iaq.progress) or tz.progress
tz.best = tonumber(iaq.best) or tz.best

if type(iaq.points) == _d("Qg0HWhE") then
tz.points = iaq.points
end
end)
end

local vtlx = gtpq:WaitForChild(_d("ZAkUQxEeDn4NF1IXAghTOApBER8qRAMCRBEeCQ"), 20)

if vtlx and vtlx:IsA(_d("ZAkIWQAIP0AJC0I")) then
tz.remotes.request = vtlx

pcall(function()
vtlx:FireServer()
end)
end

local kwi = gtpq:WaitForChild(_d("cQAKVBUBOEMKA2MECRtCCQE"), 20)

if kwi and kwi:IsA(_d("ZAkIWQAIP0AJC0I")) then
kwi.OnClientEvent:Connect(function(rjr, rqaz, sfcd, ypek)
tz.globalLuck = tonumber(rjr) or 0
tz.globalRoll = tonumber(rqaz) or 0
tz.globalLuckTime = type(sfcd) == _d("RRgXXxoK") and sfcd or _d("")
tz.globalRollTime = type(ypek) == _d("RRgXXxoK") and ypek or _d("")
end)
end
end)

function gsu.otherTowerOn(fnzc)
if gsu.enabled then
return false
end

if fnzc == _d("QgMSUwY") then
return false
end

if fnzc == _d("Xg0JWhsaH1MC") then
return tz.active()
end

return ot.run.enabled
end

function tz.active()
return tz.island
end

function tz.unspentPoints()
local dl = tz.data
local ge = tonumber(tz.progress) or 0
local qnxw = 0

if type(dl) == _d("Qg0HWhE") and type(dl.getEarnedPoints) == _d("UBkLVQAEFVg") then
local hf, sfv = pcall(dl.getEarnedPoints, ge)
qnxw = hf and tonumber(sfv) or 0
end

return math.max(0, qnxw - #(tz.points or {})), qnxw
end

function tz.buffText()
local llrx = tz.data

if type(llrx) ~= _d("Qg0HWhE") then
return _d("fg0XUhcCCFM4CkERHz5XGAQWHR5aWwUWRR0DHRYKF1kZTQ5eBRYWFhgTWghL")
end

local qqbi = tonumber(tz.progress) or 0
local xl = tonumber(tz.best) or 0
local hkbs, oc = tz.unspentPoints()
local dab = {
_d("cAAKWQZN") .. qqbi .. _d("FkxFdBEeDhY") .. xl,
_d("ZgMMWAAeQBY") .. hkbs .. _d("FhkLRQQIFEJMClBU") .. oc .. _d("FgkERBoIHg"),
}

local xtcj = {}

for hd, oj in ipairs(tz.points or {}) do
local trjd = llrx.StatById and llrx.StatById[oj]
local urqx = trjd and (trjd.name or oj) or tostring(oj)
local foxn = llrx.PointValue and llrx.PointValue[oj]

table.insert(xtcj, foxn and (urqx .. _d("Fkc") .. tostring(foxn)) or urqx)
end

if #xtcj == 0 then
table.insert(dab, _d("dBkDUAdXWlgDC1NUDxVDCw1CVBQfQg"))
else
table.insert(dab, _d("dBkDUAdXWg") .. table.concat(xtcj, _d("Gkw")))
end

local dsmn = {}

if (tonumber(tz.globalLuck) or 0) > 0 then
table.insert(dsmn, _d("ehkGXVRG") .. tostring(tz.globalLuck) .. _d("Ew") .. (tz.globalLuckTime ~= _d("") and (_d("FkQ") .. tz.globalLuckTime .. _d("Hw")) or _d("")))
end

if (tonumber(tz.globalRoll) or 0) > 0 then
table.insert(dsmn, _d("ZAMJWlQeClMJARZf") .. tostring(tz.globalRoll) .. _d("Ew") .. (tz.globalRollTime ~= _d("") and (_d("FkQ") .. tz.globalRollTime .. _d("Hw")) or _d("")))
end

if #dsmn == 0 then
table.insert(dab, _d("cQAKVBUBWlQZA1AHV1pYAwtTVAwZQgUTUw"))
else
table.insert(dab, _d("cQAKVBUBWlQZA1AHV1o") .. table.concat(dsmn, _d("Gkw")))
end

return table.concat(dab, _d("PA"))
end

function tz.nextMilestone()
local fuh = tz.data

if type(fuh) ~= _d("Qg0HWhE") or type(fuh.Milestones) ~= _d("Qg0HWhE") or #fuh.Milestones == 0 then
return nil
end

local micl = tonumber(nsmz:GetAttribute(_d("fg0XUhcCCFMqCVkbHw"))) or 0

return math.min(micl + 1, fuh.Milestones[#fuh.Milestones])
end

function tz.start(ba)
local nese = tz.nextMilestone()

if not nese then
return false
end

local uu = xjwi:FindFirstChild(ba == 2 and _d("ZAkWUwAvG0IYCVMyARVZHlc") or _d("ZAkWUwAvG0IYCVMyARVZHg"))

if uu and uu:IsA(_d("dAULUhUPFlMpE1MaGQ")) then
pcall(function()
uu:Fire(nese, _d("XwIDXxoEDlMzF1kbAA"))
end)
end

local ctd = xjwi:FindFirstChild(ba == 2 and _d("ZRgERAAkFFAFC18ACChZAwh0FRkOWglX") or _d("ZRgERAAkFFAFC18ACChZAwh0FRkOWgk"))

if ctd and ctd:IsA(_d("dAULUhUPFlMpE1MaGQ")) then
pcall(function()
ctd:Fire(nese, _d("Xg0XUhcCCFM"), nese)
end)
end

if kuve.bossTeams.applyTower then
kuve.bossTeams.applyTower(_d("Xg0XUhcCCFM"), ba)
end

tz.pending = true
tz.pendingUntil = os.time() + 10

return pcall(function()
etxi.StartBattle:FireServer(_d("XwIDXxoEDlMzF1kbAA"), {
tower = _d("Xg0XUhcCCFM"),
milestone = nese,
slot = ba,
})
end)
end

function tz.floorNow()
local nppl = gsu.hardcoreSlot()

if not nppl or not gsu.busy(nppl) then
return nil
end

local eab = xjwi:FindFirstChild(nppl == 2 and _d("dA0RQhgIPUMFVw") or _d("dA0RQhgIPUMF"))
local kaii = eab and eab:FindFirstChild(_d("ZBkLcBgCFUQgBFQRAQ"))
local vr = kaii and kaii.Text or _d("")

return tonumber(vr:match(_d("aCoJWRsfX0VHTRMQRlM")))
end

local ytp = {
enabled = true,
nextAt = os.clock() + 300,
jumps = 0,
}

getgenv().ACBXAntiKick = ytp

local pofl = getgenv().ACBXNoUpdate == true

local ysgd = {
enabled = not pofl,
buildId = "0.998",
interval = 180,
retry = 45,
forceAfter = 900,
applying = false,
checking = false,
pendingVersion = nil,
pendingSince = nil,
cameFrom = nil,
}

local yje = {
enabled = false,
tpToBay = false,

stick = {
enabled = false,
at = 0,
hits = 0,
last = _d("WQoD"),

names = {
[_d("RRgMVR8")] = true,
[_d("WhkGXVQeDl8PDg")] = true,
[_d("WhkGXQcZE1UH")] = true,
[_d("WhkGXSseDl8PDg")] = true,
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
rod = _d("Gw"),
castTime = 0,
tutorialStep = 0,
phase = _d("XwgJUw"),
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
deepPhase = _d("XwgJUw"),
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

local sex = Vector3.new(-546.8, 13.9, -40250.1)

if type(getgenv().ACBXFishingCatches) == _d("Qg0HWhE") then
yje.catches = getgenv().ACBXFishingCatches
end

yje.totalCatches = 0

for ta, xvvj in pairs(yje.catches) do
yje.totalCatches = yje.totalCatches + xvvj
end

getgenv().ACBXFishingCatches = yje.catches
getgenv().ACBXFishing = yje

yje.catchName = function(gtxt)
local ey = tcbh.ById[gtxt]

if ey and ey.name then
return ey.name
end

local zvb = lzf.ById[gtxt]

if zvb and zvb.name then
return zvb.name
end

return gtxt
end

local yva

yva = {
folder = _d("dy8nbg"),
path = _d("dy8nblsOG0IPDVMHQxBFAws"),
at = 0,
save = function()
if type(writefile) ~= _d("UBkLVQAEFVg") then
return false
end

local mhye = pcall(function()
if type(makefolder) == _d("UBkLVQAEFVg") and type(isfile) == _d("UBkLVQAEFVg") and not isfile(yva.path) then
pcall(makefolder, yva.folder)
end

writefile(yva.path, game:GetService(_d("fhgRRicICEAFBlM")):JSONEncode({
catches = yje.catches,
totalCatches = yje.totalCatches,
lastCatch = yje.lastCatch,
updatedAt = os.time(),
}))
end)

return mhye
end,
load = function()
if type(readfile) ~= _d("UBkLVQAEFVg") or type(isfile) ~= _d("UBkLVQAEFVg") then
return false
end

local elr, phh = pcall(function()
if not isfile(yva.path) then
return nil
end

return readfile(yva.path)
end)

if not elr or type(phh) ~= _d("RRgXXxoK") or #phh == 0 then
return false
end

local clm
local mw = pcall(function()
clm = game:GetService(_d("fhgRRicICEAFBlM")):JSONDecode(phh)
end)

if not mw or type(clm) ~= _d("Qg0HWhE") or type(clm.catches) ~= _d("Qg0HWhE") then
return false
end

for hbgn, jlz in pairs(clm.catches) do
local cm = tonumber(jlz) or 0

if cm > 0 then
yje.catches[tostring(hbgn)] = math.max(yje.catches[tostring(hbgn)] or 0, cm)
end
end

yje.totalCatches = 0

for mjbt, mbgl in pairs(yje.catches) do
yje.totalCatches = yje.totalCatches + mbgl
end

return true
end,
}

yva.load()
getgenv().ACBXFishingStore = yva

local tsg = {}

local nry = 0

local function yv()
local el = {}

for siq, ewpe in ipairs(workspace:GetDescendants()) do
if ewpe:IsA(_d("dA0WUyQMCEI")) and ewpe.Name == _d("YQ0RUwY") then
table.insert(el, ewpe)
end
end

tsg = el
nry = os.clock()
end

local function by(qnhj)
if type(qnhj) ~= _d("Qg0HWhE") then
return false
end

yje.loaded = true
yje.dirty = false
yje.fishing = qnhj.fishing == true
yje.autoOn = qnhj.autoOn == true
yje.autoUnlocked = qnhj.autoUnlocked == true
yje.casts = tonumber(qnhj.casts) or yje.casts
yje.totalCasts = tonumber(qnhj.totalCasts) or yje.totalCasts
yje.luck = tonumber(qnhj.luck) or yje.luck
yje.rod = tostring(qnhj.equippedRod or yje.rod)
yje.castTime = tonumber(qnhj.castTime) or yje.castTime
yje.tutorialStep = tonumber(qnhj.tutorialStep) or yje.tutorialStep

if type(qnhj.rods) == _d("Qg0HWhE") then
yje.rodsOwned = qnhj.rods
end

if type(qnhj.baits) == _d("Qg0HWhE") then
yje.baitsOwned = qnhj.baits
end

if type(qnhj.boats) == _d("Qg0HWhE") then
yje.boatsOwned = qnhj.boats
end

if type(qnhj.mats) == _d("Qg0HWhE") then
yje.mats = qnhj.mats
end

if qnhj.bootOwned ~= nil then
yje.boot.owned = qnhj.bootOwned == true
end

if qnhj.bootEquipped ~= nil then
yje.boot.equipped = qnhj.bootEquipped == true
end

if qnhj.equippedBait ~= nil then
yje.equippedBait = tostring(qnhj.equippedBait)
end

if qnhj.activeBoat ~= nil then
yje.activeBoat = tostring(qnhj.activeBoat)
end

yje.boatTier = tonumber(qnhj.boatTier) or yje.boatTier
yje.islandLocked = qnhj.islandLocked == true
yje.rebirths = tonumber(qnhj.rebirths) or yje.rebirths

if type(qnhj.rebirthCards) == _d("Qg0HWhE") then
yje.rebirthCards = qnhj.rebirthCards
end

yje.lastSync = os.time()

return true
end

local function qddk()
local rkv, vkvw = pcall(function()
return etxi.FishingGetState:InvokeServer()
end)

if not rkv or type(vkvw) ~= _d("Qg0HWhE") then
yje.loaded = false
return false
end

return by(vkvw)
end

local berr = false

local function edj()
if berr then
return false
end

local ww = nsmz.Character

if not ww then
return false
end

if ww:FindFirstChild(_d("cAUWXh0DHWQDAQ")) then
return true
end

local oo = nsmz:FindFirstChild(_d("dA0GXQQMGV0"))
local mpnx = oo and oo:FindFirstChild(_d("cAUWXh0DHWQDAQ"))
local bwjx = ww:FindFirstChildOfClass(_d("fhkIVxoCE1I"))

if not (mpnx and bwjx) then
return false
end

return pcall(function()
bwjx:EquipTool(mpnx)
end)
end

local function hhcv()
local dz = nsmz.Character
local cqay = dz and dz:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if not cqay then
return nil
end

local nphu = RaycastParams.new()
nphu.FilterType = Enum.RaycastFilterType.Exclude
nphu.FilterDescendantsInstances = { dz }

local fizy = 24
local moc = {}
local hfs = 0

for icdv = 0, fizy - 1 do
local pquj = math.rad(icdv * (360 / fizy))
local wfb = Vector3.new(math.sin(pquj), 0, math.cos(pquj))
local lya = cqay.Position + wfb * 20 + Vector3.new(0, 40, 0)
local pae = workspace:Raycast(lya, Vector3.new(0, -120, 0), nphu)
local piro = pae and (cqay.Position.Y - pae.Position.Y) or 120

moc[icdv] = piro > 12

if moc[icdv] then
hfs = hfs + 1
end
end

if hfs == 0 then
return nil
end

local ocbf, lw = nil, 0

for mgpu = 0, fizy - 1 do
if moc[mgpu] and not moc[(mgpu - 1) % fizy] then
local fh = 0

while fh < fizy and moc[(mgpu + fh) % fizy] do
fh = fh + 1
end

if fh > lw then
ocbf = mgpu
lw = fh
end
end
end

if not ocbf then
return nil
end

local aqiu = ocbf + (lw - 1) / 2
local ej = math.rad(aqiu * (360 / fizy))

return Vector3.new(math.sin(ej), 0, math.cos(ej))
end

local function fya()
local ugjn = nsmz.Character
local ihi = ugjn and ugjn:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if not ihi then
return nil
end

if #tsg == 0 or os.clock() - nry > 20 then
yv()
end

local wk, whkd = nil, math.huge

for thfr, nk in ipairs(tsg) do
if nk.Parent then
local rq = (nk.Position - ihi.Position).Magnitude

if rq < whkd then
whkd = rq
wk = nk
end
end
end

if not wk or whkd > 25 then
local xqx = hhcv()

if xqx then
return xqx
end
end

if not wk then
return nil
end

local ck = Vector3.new(wk.Position.X - ihi.Position.X, 0, wk.Position.Z - ihi.Position.Z)

if ck.Magnitude < 0.05 then
return Vector3.new(0, 0, -1)
end

return ck.Unit
end

local function eil()
local deo = nsmz.Character
local krdb = deo and deo:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if not krdb then
return nil
end

local mnea = krdb.CFrame.LookVector
local yr = Vector3.new(mnea.X, 0, mnea.Z)

if yr.Magnitude < 0.05 then
return nil
end

return yr.Unit
end

local function zfd()
local grlr = nsmz.Character
local fn = grlr and grlr:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if not fn then
return false
end

local lzef = sex
local yhkj = RaycastParams.new()
yhkj.FilterType = Enum.RaycastFilterType.Exclude
yhkj.FilterDescendantsInstances = { grlr }

local cf = workspace:Raycast(sex + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), yhkj)

if cf and cf.Instance.Name ~= _d("YQ0RUwY") then
lzef = Vector3.new(sex.X, cf.Position.Y + 3, sex.Z)
end

fn.CFrame = CFrame.new(lzef)
task.wait(0.5)
yv()

return true
end

local function pop()
local vha = nsmz.Character
local iwxe = vha and vha:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if not iwxe then
return false
end

local pjg = Vector3.new(sex.X - iwxe.Position.X, 0, sex.Z - iwxe.Position.Z)
local io = pjg.Magnitude

if io < 2 then
return false
end

local eu = pjg.Unit

if io > 12 then
local ttzi = math.min(14, io - 6)
local sh = iwxe.Position + eu * ttzi
local ai = RaycastParams.new()
ai.FilterType = Enum.RaycastFilterType.Exclude
ai.FilterDescendantsInstances = { vha }

local vkr = workspace:Raycast(sh + Vector3.new(0, 25, 0), Vector3.new(0, -80, 0), ai)

if vkr and vkr.Instance.Name ~= _d("YQ0RUwY") then
local kfn = vkr.Position.Y + 3.2

if math.abs(kfn - iwxe.Position.Y) <= 10 then
local ctg = Vector3.new(vkr.Position.X, kfn, vkr.Position.Z)
iwxe.CFrame = CFrame.lookAt(ctg, ctg + eu)

return true
end
end
end

iwxe.CFrame = CFrame.lookAt(iwxe.Position, iwxe.Position + eu)

return true
end

local oza = {}

oza.surfaceWait = 8

oza.walking = false
oza.walkStartedAt = 0

oza.islandHold = Vector3.new(-7384, 16.3, -40539)

oza.custom = nil
oza.customIsland = nil

oza.islandAnchors = {
{ id = _d("Vw4EWBACFFMIOl8HARtYCA"), x = -3800 },
{ id = _d("QhsMWCsPH1cPDVMH"), x = -6180 },
{ id = _d("QQULUhkEFlozDEUYCA"), x = -7480 },
}

oza.arrivals = {
abandoned_island = Vector3.new(-3825, 24, -40260),
twin_beaches = Vector3.new(-6180, 40, -40350),
windmill_isle = Vector3.new(-7480, 30, -40350),
lobby = Vector3.new(-499, 17, -40234),
}

function oza.islandOf(nmr)
if not nmr then
return _d("WgMHVA0")
end

if nmr.X > -4500 then
return _d("WgMHVA0")
end

local ao, ngf = _d("Vw4EWBACFFMIOl8HARtYCA"), math.huge

for wm, nlh in ipairs(oza.islandAnchors) do
local rsd = math.abs(nmr.X - nlh.x)

if rsd < ngf then
ao = nlh.id
ngf = rsd
end
end

return ao
end

oza.savedVersion = 2

do
local cgtl = getgenv().ACBXDeepSpot

if type(cgtl) == _d("Qg0HWhE") and cgtl.v == oza.savedVersion
and tonumber(cgtl.X) and tonumber(cgtl.Y) and tonumber(cgtl.Z) then
oza.custom = Vector3.new(tonumber(cgtl.X), tonumber(cgtl.Y), tonumber(cgtl.Z))
oza.customIsland = cgtl.island
end
end

function oza.spot()
return oza.custom or oza.islandHold
end

function oza.dropStale()
if not oza.custom then
return false
end

if oza.zoneAt(oza.custom) then
return false
end

oza.custom = nil
oza.customIsland = nil
getgenv().ACBXDeepSpot = nil

return true
end

function oza.capture()
local mdwr = nsmz.Character
local zfj = mdwr and mdwr:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if not zfj then
return false, _d("eANFVRwMCFcPEVMGTQ5ZTBdTFQlaV0wWRhsZWlAeClta")
end

local nml = zfj.Position
local be = oza.floorAt(Vector3.new(nml.X, nml.Y + 10, nml.Z))

if not be then
return false, _d("ZRgEWBBNFVhMFlkYBB4WCxdZAQMeFgoMRAcZWhtMEV4dHlpFHApCVAUbRUwLWVQLFlkDFxYAAlpVDRZCVAsIWQFL")
end

local ddib = oza.zoneAt(nml)

if not ddib then
return false, _d("YgQMRVQeClkYRV8HTRVDGBZfEAhaUxoARA1NHF8fDV8aClpEBQtRVEBaRRgEWBBNFUAJFxYABR8WGwRCER9aUAUXRQBD")
end

oza.custom = nml
oza.customIsland = oza.islandOf(nml)

getgenv().ACBXDeepSpot = {
X = nml.X,
Y = nml.Y,
Z = nml.Z,
island = oza.customIsland,
v = oza.savedVersion,
}

return true, _d("ZQ0TUxBNDl4FFhYHHRVCTARFVBkSU0wBUxEdV0ENEVMGTRJZAAEWXA") .. tostring(ddib.name) .. _d("H0I")
end

function oza.zoneTable()
local gfs = {}

if ehj and type(ehj.Zones) == _d("Qg0HWhE") then
for tzir, kwuz in ipairs(ehj.Zones) do
gfs[#gfs + 1] = {
id = tostring(kwuz.id),
name = tostring(kwuz.name or kwuz.id),
half = tonumber(kwuz.half) or 0,
luck = tonumber(kwuz.luck) or 0,
index = tonumber(kwuz.index) or 0,
boatTier = tonumber(kwuz.boatTier) or 0,
}
end
end

table.sort(gfs, function(hoqo, kqct)
return hoqo.index < kqct.index
end)

return gfs
end

function oza.zoneAt(ju)
local xshj = ehj and ehj.ZoneCenter
local pwfm = oza.zoneTable()

if not (xshj and ju and #pwfm > 0) then
return nil
end

local pkqg = math.max(math.abs(ju.X - xshj.X), math.abs(ju.Z - xshj.Z))

for pw, ppz in ipairs(pwfm) do
if pkqg < ppz.half then
return ppz
end
end

return nil
end

function oza.current()
local ajex = nsmz.Character
local ofgh = ajex and ajex:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

return ofgh and oza.zoneAt(ofgh.Position) or nil
end

function oza.sync()
local vx = oza.current()
yje.zoneId = vx and vx.id or nil
end

function oza.floorAt(lje)
local wcsp = nsmz.Character
local fvv = RaycastParams.new()
fvv.FilterType = Enum.RaycastFilterType.Exclude
fvv.FilterDescendantsInstances = { wcsp }

local lxym = workspace:Raycast(Vector3.new(lje.X, lje.Y + 20, lje.Z), Vector3.new(0, -80, 0), fvv)

if lxym and lxym.Instance.Name ~= _d("YQ0RUwY") then
return lxym
end

return nil
end

function oza.ensureSpotMap()
local msm = oza.spot()
local tsbr = Vector3.new(msm.X, msm.Y + 20, msm.Z)

if oza.floorAt(tsbr) then
return true
end

local ez = workspace:FindFirstChild(_d("ew0VRQ"))

if ez and ez:FindFirstChild(_d("dQMERQAMFnoDB1QN")) then
if os.clock() - (oza.hopAt or 0) > 1 then
oza.hopAt = os.clock()
oza.hop(msm)
yje.lastMessage = _d("ewMTXxoKWkIDRUIcCFpSCQBGWRobQgkXFgcdFUI")
end

return false
end

if os.clock() - (oza.islandAskedAt or 0) > 1.2 then
oza.islandAskedAt = os.clock()

local yha = oza.customIsland or oza.islandOf(msm)

if yha == _d("WgMHVA0") then
pcall(function()
etxi.TeleportToWorld:FireServer(_d("WgMHVA0"))
end)
else
pcall(function()
etxi.FishingIslandTeleport:FireServer(_d("QQ0cRhsEFEI"), yha)
end)
end

yje.lastMessage = _d("Yg0OXxoKWkIEABYTDBdTSxYWAAgWUxwKRABNDllMEV4RTR5TCRUbAwwOUx5FWxUd")
end

return false
end

function oza.hop(hcm)
local wcw = nsmz.Character
local rg = wcw and wcw:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))
local yqg = wcw and wcw:FindFirstChildOfClass(_d("fhkIVxoCE1I"))

if not (rg and yqg) then
return false
end

if yqg.SeatPart then
pcall(function()
yqg.Sit = false
end)
end

rg.AssemblyLinearVelocity = Vector3.zero
rg.CFrame = CFrame.new(Vector3.new(hcm.X, hcm.Y + 8, hcm.Z))

return true
end

function oza.faceWater()
local uibh = nsmz.Character
local fy = uibh and uibh:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if not fy then
return false
end

local qvj = fya()

if not qvj then
local gw = ehj and ehj.ZoneCenter

if gw then
local spmz = Vector3.new(gw.X - fy.Position.X, 0, gw.Z - fy.Position.Z)

qvj = spmz.Magnitude > 1 and spmz.Unit or nil
end
end

if not qvj then
return false
end

fy.CFrame = CFrame.lookAt(fy.Position, fy.Position + qvj)

return true
end

function oza.aimWater(sg)
local pd = nsmz.Character
local ei = pd and pd:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if not ei then
return false
end

if sg then
yv()
end

local bw = ei.CFrame.LookVector
local ax = Vector3.new(bw.X, 0, bw.Z)
local ufn = fya()

if not ufn then
return false
end

if ax.Magnitude > 0.05 and ax.Unit:Dot(ufn) > 0.985 then
return true
end

ei.CFrame = CFrame.lookAt(ei.Position, ei.Position + ufn)

return true
end

function oza.hold(bghn)
local jfps = nsmz.Character
local esq = jfps and jfps:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))
local rj = jfps and jfps:FindFirstChildOfClass(_d("fhkIVxoCE1I"))

if not (esq and rj) then
return false
end

if rj.SeatPart then
pcall(function()
rj.Sit = false
end)
end

local fgna = oza.floorAt(bghn)

if not fgna then
return false
end

esq.AssemblyLinearVelocity = Vector3.zero
esq.CFrame = CFrame.new(Vector3.new(bghn.X, fgna.Position.Y + 3.2, bghn.Z))

pcall(oza.aimWater, true)

yje.phase = _d("XwgJUw")
yje.nextCastAt = 0

return true
end

function oza.dive()
local obij = oza.spot()

if not oza.ensureSpotMap() then
return false
end

if not oza.hold(obij) then
return false
end

oza.islandAskedAt = 0

local ah = oza.zoneAt(obij)

yje.lastMessage = ah
and (_d("fgMJUh0DHRYYDVNUCR9THEhBFRkfREwWRhsZWh4") .. tostring(ah.name) .. _d("Hw"))
or _d("fgMJUh0DHRYYDVNUCR9THEhBFRkfREwWRhsZ")

task.wait(0.25)
oza.sync()
yje.deepDiveAt = os.clock() + 2

return true
end

function oza.walk()
local ms = nsmz.Character
local xy = ms and ms:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if oza.walking and os.clock() - (oza.walkStartedAt or 0) < 60 then
return false
end

if not xy then
return false
end

local pxqw = oza.spot()

if (xy.Position - Vector3.new(pxqw.X, xy.Position.Y, pxqw.Z)).Magnitude <= 8 then
yje.phase = _d("XwgJUw")
yje.nextCastAt = 0

return true
end

oza.walking = true
oza.walkStartedAt = os.clock()
yje.deepPhase = _d("QQ0JXQ")
yje.deepStageAt = os.clock()
yje.lastMessage = _d("YQ0JXR0DHRYYChYABR8WCABTBAgJQkwSVwAICBYfFVkA")

task.spawn(function()
local qt = ms and ms:FindFirstChildOfClass(_d("fhkIVxoCE1I"))

local nzys, rtu = pcall(function()

local vdqj = workspace:FindFirstChild(_d("ew0VRQ"))
local lg = oza.customIsland or oza.islandOf(pxqw)
local yd = (xy.Position - Vector3.new(pxqw.X, xy.Position.Y, pxqw.Z)).Magnitude

if yd > 400 then
if not (vdqj and vdqj:FindFirstChild(_d("dQMERQAMFnoDB1QN"))) then
pcall(function()
etxi.TeleportToWorld:FireServer(_d("WgMHVA0"))
end)

local fsie = os.clock() + 20

while yje.deepWalk and os.clock() < fsie do
local xd = workspace:FindFirstChild(_d("ew0VRQ"))

if xd and xd:FindFirstChild(_d("dQMERQAMFnoDB1QN")) then
break
end

task.wait(0.5)
end
end

if yje.deepWalk then
local akq = oza.arrivals and oza.arrivals[lg]

if akq then
oza.hop(akq)
else
local jdi = Vector3.new(pxqw.X - xy.Position.X, 0, pxqw.Z - xy.Position.Z)
local pdv = jdi.Magnitude > 1 and jdi.Unit or Vector3.new(1, 0, 0)

oza.hop(Vector3.new(pxqw.X - pdv.X * 120, pxqw.Y, pxqw.Z - pdv.Z * 120))
end

task.wait(1.5)
end
end

if yje.deepWalk and qt then

local aw = (xy.Position - Vector3.new(pxqw.X, xy.Position.Y, pxqw.Z)).Magnitude
local qxgp = os.clock() + math.clamp(aw / 8, 30, 600)
local ph = 0
local tkax = xy.Position
local dizp = os.clock()

while yje.deepWalk and os.clock() < qxgp do
local duas = Vector3.new(pxqw.X - xy.Position.X, 0, pxqw.Z - xy.Position.Z)

if duas.Magnitude <= 3 then
break
end

if os.clock() - ph >= 0.25 then
qt:MoveTo(Vector3.new(pxqw.X, xy.Position.Y, pxqw.Z))
ph = os.clock()
end

if os.clock() - dizp >= 1.2 then
if (xy.Position - tkax).Magnitude < 2 then
qt.Jump = true
end

tkax = xy.Position
dizp = os.clock()
end

task.wait(0.1)
end

qt:MoveTo(xy.Position)
end
end)

oza.walking = false

if not nzys then
yje.deepPhase = _d("XwgJUw")
yje.deepStageAt = os.clock()
yje.lastMessage = _d("YQ0JXVQZFRYoAFMECAlCTDJXAAgIFgoEXxgIHgxM") .. tostring(rtu)

return
end

if not yje.deepWalk then
return
end

local vccz = Vector3.new(xy.Position.X - pxqw.X, 0, xy.Position.Z - pxqw.Z)

if vccz.Magnitude <= 6 then

pcall(oza.aimWater, true)
yje.phase = _d("XwgJUw")
yje.nextCastAt = 0
yje.deepPhase = _d("XgMJUg")
yje.deepStageAt = os.clock()
oza.sync()
yje.lastMessage = _d("YQ0JXREJWkIDRUIcCFpFDRNTEE0eUwkVGwMMDlMeRUUEAg4")
else

yje.deepPhase = _d("XwgJUw")
yje.deepStageAt = os.clock()
yje.lastMessage = _d("dQMQWhBNFFkYRUEVAREWGAoWAAUfFggAUwQICUJMElcACAgWHxVZAE1XFhgXTx0DHRYNAlcdAw")
end
end)

return false
end

function oza.settle()
for yh = 1, 30 do
if not yje.deepZone or yje.deepWalk then
return false
end

if oza.dive() then
return true
end

task.wait(1)
end

return false
end

function oza.surface()
local sfwi = nsmz.Character
local uzk = sfwi and sfwi:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if not uzk then
return false
end

local oa = RaycastParams.new()
oa.FilterType = Enum.RaycastFilterType.Exclude
oa.FilterDescendantsInstances = { sfwi }

local duzf = workspace:Raycast(sex + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), oa)
local vzm = sex

if duzf and duzf.Instance.Name ~= _d("YQ0RUwY") then
vzm = Vector3.new(sex.X, duzf.Position.Y + 3, sex.Z)
end

uzk.CFrame = CFrame.new(vzm)
yje.phase = _d("XwgJUw")
yje.nextCastAt = 0

return true
end

function yje.gotoIsland()
local cdfb = nsmz.Character
local aqzm = cdfb and cdfb:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))
local jo = workspace:FindFirstChild(_d("fx8JVxoJPF8fDVMGABtYIjV1"), true)

if not (aqzm and jo) then
return false
end

local kqsa = jo:GetPivot()
local nffr = RaycastParams.new()
nffr.FilterType = Enum.RaycastFilterType.Exclude
nffr.FilterDescendantsInstances = { cdfb, jo }

local qpu = nil
local cgbf = -math.huge

for ofiy, xygd in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local sn = workspace:Raycast(kqsa.Position + xygd + Vector3.new(0, 30, 0), Vector3.new(0, -120, 0), nffr)

if sn and sn.Position.Y > cgbf then
qpu = sn
cgbf = sn.Position.Y
end
end

if qpu then
aqzm.CFrame = CFrame.new(Vector3.new(qpu.Position.X, cgbf + 3.5, qpu.Position.Z))
else
aqzm.CFrame = CFrame.new(kqsa.Position + Vector3.new(0, 4, 0))
end

yje.phase = _d("XwgJUw")
yje.nextCastAt = 0

return true
end

function oza.cycle()
local lk = os.clock()
local fa = yje.deepPhase or _d("XwgJUw")
local cxek = tonumber(yje.deepStageAt) or 0

if lk < math.max(yje.shopTripUntil or 0, yje.tpHoldUntil or 0) then
return
end

if fa == _d("XwgJUw") then
yje.deepPhase = _d("XgMJUg")
yje.deepStageAt = lk

if yje.deepWalk then
oza.walk()
else
oza.dive()
end

return
end

if fa == _d("QQ0JXQ") then
return
end

if fa == _d("XgMJUg") then
local vt = oza.current()

local hvt = oza.zoneAt(oza.spot())

if vt and not nsmz:GetAttribute(_d("ZRsMWxkEFFE")) and lk - (yje.deepAimAt or 0) > 2 then
yje.deepAimAt = lk
pcall(oza.aimWater)
end

if nsmz:GetAttribute(_d("ZRsMWxkEFFE")) then
if yje.deepWalk then

yje.deepPhase = _d("XwgJUw")
yje.deepStageAt = lk
else
yje.deepPhase = _d("UgUV")
yje.deepStageAt = lk
yje.lastMessage = _d("ZRsMWxkEFFFMBEJUGRJTTAFTER1aRRwKQlRAWkUZF1AVDh9STANZBk0bXx4")
end
elseif not vt or (hvt and vt.index < hvt.index) then

yje.deepPhase = _d("XwgJUw")
yje.deepStageAt = lk
end

return
end

if fa == _d("UgUV") then
oza.surface()
yje.deepPhase = _d("RRkXUBUOHw")
yje.deepStageAt = lk

return
end

if fa == _d("RRkXUBUOHw") and lk - cxek >= oza.surfaceWait then
yje.deepPhase = _d("XwgJUw")
end
end

local function ezk()
local an = nsmz.Character
local drzp = an and an:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if not drzp then
return false
end

return (drzp.Position - sex).Magnitude <= 12
end

local function vh()
if not edj() then
return false
end

local ubm = pcall(function()
etxi.FishingSetAuto:FireServer(true)
end)

yje.usingGameAuto = ubm
return ubm
end

local function ctf()
yje.usingGameAuto = false

pcall(function()
etxi.FishingSetAuto:FireServer(false)
end)

pcall(function()
etxi.FishingStop:FireServer()
end)
end

function yje.recover()
yje.phase = _d("XwgJUw")
yje.nextCastAt = 0
yje.deepPhase = _d("XwgJUw")
yje.deepStageAt = 0
yje.deepDiveAt = 0
yje.waterRefusals = 0
yje.usingGameAuto = false
yje.castMark = yje.totalCasts
yje.castMarkAt = os.clock()

pcall(ctf)
pcall(edj)

if yje.deepZone and not oza.current() then

pcall(function()
etxi.TeleportToWorld:FireServer(_d("WgMHVA0"))
end)
elseif yje.tpToBay and not ezk() then
pcall(zfd)
end

yje.lastMessage = _d("cAUWXh0DHRYfEVcYAR9STEgWBggJUxhFQhwIWkENEVMGTRtYCEVCGwIRFhgNU1QKG1sJQkVUARVUDhwWBgIN")
end

local function xhnb()
if not edj() then
yje.lastMessage = _d("eANFUB0eEl8CAhYGAh4WBQsWAAUfFg4EVR8dG1UH")
return false
end

local girs = eil()
local lu = fya()
local lb = girs or lu

if not lb then
yje.lastMessage = _d("eANFQRUZH0RMA1kBAx4WAgBXBg8D")
return false
end

if girs and lu and girs:Dot(lu) < 0.25 then
lb = lu
end

yje.phase = _d("VQ0WQh0DHQ")
yje.lastMessage = nil
yje.watchdogAt = os.clock() + 25

local fm, qh = pcall(function()
etxi.FishingThrow:FireServer(1, lb)
end)

if not fm then
yje.phase = _d("XwgJUw")
yje.lastMessage = tostring(qh)
yje.nextCastAt = os.clock() + 3
return false
end

return true
end

local hned = etxi.FishingUpdate.OnClientEvent:Connect(function(vk, hafj)
yje.dirty = true

if vk == _d("ZRgEQhE") then
if type(hafj) == _d("Qg0HWhE") then
yje.autoOn = hafj.autoOn == true
end

return
end

if vk == _d("dQ0WQg") then
yje.phase = _d("QQ0MQh0DHXQFEVM")
yje.waterRefusals = 0
return
end

if vk == _d("dAURUw") then
local sj = type(hafj) == _d("Qg0HWhE") and tonumber(hafj.warning) or 1

yje.phase = _d("RAkAWh0DHQ")
yje.watchdogAt = os.clock() + 15

task.delay(math.max(0.3, sj + 0.8), function()
if yje.phase ~= _d("RAkAWh0DHQ") then
return
end

pcall(function()
etxi.FishingReel:FireServer(true, 120)
end)

yje.phase = _d("RAkWWRgbE1gL")
end)

return
end

if vk == _d("dQ0RVRw") then

local ngjp = type(hafj) == _d("Qg0HWhE") and tonumber(hafj.totalCasts) or nil
local gkhq = tonumber(getgenv().ACBXFishingCatchMark) or 0

if ngjp and ngjp <= gkhq and gkhq - ngjp < 25 then
return
end

if ngjp then
getgenv().ACBXFishingCatchMark = ngjp
end

local sfy = type(hafj) == _d("Qg0HWhE") and tostring(hafj.itemId) or _d("QwIOWBsaFA")
local yfwh = yje.catchName(sfy)

yje.catches[sfy] = (yje.catches[sfy] or 0) + 1
yje.totalCatches = (yje.totalCatches or 0) + 1

local rdy = type(hafj) == _d("Qg0HWhE") and hafj.chest or nil

if type(rdy) == _d("Qg0HWhE") and rdy.itemId then
local zemd = tostring(rdy.itemId)

yje.catches[zemd] = (yje.catches[zemd] or 0) + 1
end

if os.clock() - (yva.at or 0) >= 5 then
yva.at = os.clock()
yva.save()
end
yje.lastCatch = yfwh
yje.lastMessage = nil
yje.phase = _d("XwgJUw")
yje.nextCastAt = os.clock() + 2.5

if type(hafj) == _d("Qg0HWhE") then
yje.casts = tonumber(hafj.casts) or yje.casts
yje.totalCasts = tonumber(hafj.totalCasts) or yje.totalCasts
yje.autoUnlocked = hafj.autoUnlocked == true or yje.autoUnlocked
end

return
end

if vk == _d("dxkRWTsLHA") then

yje.usingGameAuto = false
yje.phase = _d("XwgJUw")
yje.nextCastAt = os.clock() + 1
return
end

if vk == _d("cx8GVwQIHg") then
yje.phase = _d("XwgJUw")
yje.lastMessage = _d("YgQAFhIECV5MAlkATRtBDRw")
yje.nextCastAt = os.clock() + 2.5
return
end

if vk == _d("ZAkPUxcZH1I") then
yje.phase = _d("XwgJUw")

local tncr = type(hafj) == _d("Qg0HWhE") and tostring(hafj.message) or _d("dQ0WQlQfH1wJBkIRCQ")
yje.lastMessage = tncr

if tncr:lower():find(_d("QQ0RUwY"), 1, true) then
yje.waterRefusals = (yje.waterRefusals or 0) + 1

if yje.waterRefusals >= 2 then
yje.waterRefusals = 0

if pop() then
yje.lastMessage = _d("ZAkDQwcIHhYYEl8XCFobTBFDBgMfUkwHVxcGWkIDElcGCVpCBAAWAwwOUx4")
yje.nextCastAt = os.clock() + 1.5
return
end
end

yje.nextCastAt = os.clock() + 8
return
end

yje.waterRefusals = 0
yje.nextCastAt = os.clock() + 3
return
end
end)

local function mlxr()
if not yje.loaded then
return _d("ZAkEUh0DHRYKDEUcBBRRTBZCFRkfGEJL")
end

local phka = yje.autoUnlocked == true
or (yje.totalCasts or 0) > 0
or (yje.tutorialStep or 0) > 0
local pr = ehj and ehj.RodsById and ehj.RodsById[yje.rod]
local atdw = pr and tostring(pr.name) or tostring(yje.rod)
local oqaj = math.floor((tonumber(yje.luck) or 0) * 100 + 0.5)

local bmc = {
_d("ZAMBDFQ") .. atdw,
_d("ehkGXU5N") .. oqaj .. _d("Ew"),
}

local epgx = oza.current()

if epgx then
table.insert(bmc, _d("bAMLU05N") .. epgx.name .. _d("FkRO") .. tostring(math.floor(epgx.luck * 100 + 0.5)) .. _d("E0wJQxcGUw"))
end

table.insert(bmc, _d(""))
table.insert(bmc, _d("dQ0WQgdNDllMFkYRAx4MTA") .. te(yje.casts or 0))
table.insert(bmc, _d("YgMRVxhNGVcfEUVOTQ") .. te(yje.totalCasts or 0))

table.insert(bmc, _d(""))
table.insert(bmc, _d("cAUWXh0DHRYZC1obDhFTCF8W") .. (phka and _d("TwkW") or _d("WAM")))
table.insert(bmc, _d("dxkRWVkLE0UERUMECghXCAAMVA") .. (yje.autoUnlocked and _d("WRsLUxA") or _d("WAMRFhsaFFMI")))

if yje.enabled then
local vgq = yje.usingGameAuto and _d("UQ0IU1QMD0ID") or tostring(yje.phase)

if vgq == _d("QQ0MQh0DHXQFEVM") then
vgq = _d("QQ0MQh0DHRYKCkRUDFpUBRFT")
elseif vgq == _d("RAkAWh0DHQ") then
vgq = _d("RAkAWh0DHRYFCw")
elseif vgq == _d("RAkWWRgbE1gL") then
vgq = _d("Wg0LUh0DHRYFEQ")
end

table.insert(bmc, _d(""))
table.insert(bmc, _d("dxkRWVQrE0UEXxY") .. vgq)

local uyta = axd.worldBoss

if uyta and type(uyta.hasWork) == _d("UBkLVQAEFVg") and uyta.enabled and uyta.hasWork() then
table.insert(bmc, _d("fgMJUh0DHQxMAlobDxtaTAdZBx5aXx9FQwRNUkQJFkMZCAkWAwsWHRkJFg8KWRgJFUECTA"))
end

if yje.lastCatch then
table.insert(bmc, _d("eg0WQlQOG0IPDQxU") .. yje.lastCatch)
end
end

if yje.lastMessage then
table.insert(bmc, _d(""))
table.insert(bmc, _d("eAMRU05N") .. yje.lastMessage)
end

return table.concat(bmc, _d("PA"))
end

local function khif()
local wyy = 0

for as, vwbt in pairs(yje.catches) do
local gf = tcbh.ById[as]

if not (gf and gf.type == _d("VQQARQA")) then
wyy = wyy + vwbt
end
end

return wyy
end

local function thr()
local lvzd = {}

for rv, mn in pairs(yje.catches) do
local irz = tcbh.ById[rv]
local xiw = irz and irz.type == _d("VQQARQA") or false

table.insert(lvzd, {
name = yje.catchName(rv),
count = mn,
chest = xiw,
rank = xiw and (tonumber(irz.border) or 1) or 0,
})
end

if #lvzd == 0 then
return _d("eAMRXh0DHRYPBEMTBQ4WFQBCWmdwYhkXWFQCFBYtEEIbTTxfHw0WFQMeFhgNU1QZG1oAHBYHGRtEGBYWHAgIU0JFfwBNCVcaAEVUBA5FCQlQWE0JWUwMQlQOG0QeDFMHTRVACRcWGggCQkwWUwceE1kCSw")
end

table.sort(lvzd, function(moxq, qrh)
if moxq.chest ~= qrh.chest then
return moxq.chest
end

if moxq.chest and moxq.rank ~= qrh.rank then
return moxq.rank > qrh.rank
end

if moxq.count ~= qrh.count then
return moxq.count > qrh.count
end

return moxq.name < qrh.name
end)

local iye = {}

for ifnb, wl in ipairs(lvzd) do
table.insert(iye, wl.name .. _d("Fo7lolQ") .. te(wl.count))
end

local key = {
table.concat(iye, _d("PGY")),
_d(""),
_d("YgMRVxhNGVcZAl4AV1o") .. te(khif()) .. _d("Fq7SFg") .. #lvzd .. _d("FgcMWBAe"),
}

if yje.lastCatch then
table.insert(key, _d("eg0WQlQOG0IPDQxU") .. tostring(yje.lastCatch))
end

return table.concat(key, _d("PA"))
end

local xz = {
rod = Vector3.new(-493, 18, -40254),
bait = Vector3.new(-493, 18, -40254),
}

local function lxr(mnys)
if not ehj then
return {}
end

local hm

if mnys == _d("RAMB") then
hm = ehj.RodsById
elseif mnys == _d("VA0MQg") then
hm = ehj.BaitsById
else
hm = nil
end

local puy = {}

for qk, zv in pairs(hm or {}) do
if not zv.crafted then
table.insert(puy, {
id = tostring(qk),
name = tostring(zv.name or qk),
cost = tonumber(zv.cost) or 0,
luck = tonumber(zv.luck) or 0,
index = tonumber(zv.index) or 0,
island = zv.shop == _d("Xx8JVxoJ"),
})
end
end

table.sort(puy, function(qe, ua)
if qe.index ~= ua.index then
return qe.index < ua.index
end

return qe.cost < ua.cost
end)

return puy
end

local function ybtp(yosz)
if yosz == _d("RAMB") then
return yje.rodsOwned or {}
elseif yosz == _d("VA0MQg") then
return yje.baitsOwned or {}
end

return {}
end

local function wzd(uuku)
if uuku == _d("RAMB") then
return yje.rod
elseif uuku == _d("VA0MQg") then
return yje.equippedBait
end

return nil
end

local function yjm(ws)
local sfwq = ybtp(ws)
local fas = nil

for fad, qckm in ipairs(lxr(ws)) do
if sfwq[qckm.id] == true then
fas = qckm
end
end

return fas
end

local function ha(yfk)
if yfk.island and yje.islandLocked then
return false
end

return true
end

local function hr(tt)
local kb = ybtp(tt)
local ko = yje.casts or 0
local aeg = nil

for em, zyw in ipairs(lxr(tt)) do
if kb[zyw.id] ~= true and zyw.cost <= ko and ha(zyw) then
aeg = zyw
end
end

return aeg
end

local function ali(svqp)
local hfa = ybtp(svqp)

for ut, lso in ipairs(lxr(svqp)) do
if hfa[lso.id] ~= true and ha(lso) then
return lso
end
end

return nil
end

local function ty(veq, ojx)
if not ojx then
return _d("WAMLU1QCDVgJAQ")
end

return ojx.name .. _d("FkRO") .. tostring(math.floor(ojx.luck * 100 + 0.5)) .. _d("E0wJQxcGUw")
end

local function tf()
if not ehj then
return _d("cAUWXh0DHXINEVdUAxVCTANZAQMeFkFFRRwCChYIBEIVTQ9YDRNXHQEbVAAAGA")
end

local ng = {}
local gh = { rod = _d("ZAMB"), bait = _d("dA0MQg") }

for xwko, eg in ipairs({ _d("RAMB"), _d("VA0MQg") }) do
local vuu = yjm(eg)
local zkj = nil

for slm, dwxd in ipairs(lxr(eg)) do
if dwxd.id == wzd(eg) then
zkj = dwxd.name
end
end

if #ng > 0 then
table.insert(ng, _d(""))
end

table.insert(ng, gh[eg] .. _d("DEw") .. ty(eg, vuu))
table.insert(ng, _d("eQJFWBsaQBY") .. (zkj or _d("WAMLUw")))

local px = hr(eg) or ali(eg)

if px then
local zpu = px.cost - (yje.casts or 0)

table.insert(ng, _d("eAkdQk5N") .. px.name .. _d("Fq7SFg") .. te(px.cost) .. _d("Fg8ERQAe"))

if zpu > 0 then
table.insert(ng, _d("eAkAUlQ") .. te(zpu) .. _d("FgEKRBE"))
end
else
table.insert(ng, _d("eAkdQk5NH0AJF08ABRNYC0VZAwMfUg"))
end
end

table.insert(ng, _d(""))
table.insert(ng, _d("dQ0WQgdNDllMFkYRAx4MTA") .. te(yje.casts or 0))

if yje.shopMessage then
table.insert(ng, _d(""))
table.insert(ng, yje.shopMessage)
end

return table.concat(ng, _d("PA"))
end

local function flo(tv, yqql)
local agsr = os.clock()

if agsr < (yje.shopCallAt or 0) then
return false, _d("RQAKQQ")
end

yje.shopCallAt = agsr + 1.4

local dhqm, kd, mh, efne = pcall(function()
return etxi.FishingShop:InvokeServer(tv, yqql)
end)

if not dhqm then
return false, _d("Ux4XWQZN") .. tostring(kd)
end

by(efne)

if kd == true then
return true, nil
end

return false, tostring(mh or _d("RAkDQwcIHg"))
end

function yje.rebirthCardsHeld()
local ac = ehj and type(ehj.RebirthCards) == _d("Qg0HWhE") and #ehj.RebirthCards or 0

if ac == 0 then
return 0, 0
end

local pdmc = 0

for gu, gyay in ipairs(ehj.RebirthCards) do
if yje.rebirthCards[gyay.cardId] then
pdmc = pdmc + 1
end
end

return pdmc, ac
end

function yje.rebirthReady()
local nsok, uqx = yje.rebirthCardsHeld()

return uqx > 0 and nsok >= uqx and (tonumber(yje.rebirths) or 0) < 1
end

function yje.rebirthText()
local lqd, iewj = yje.rebirthCardsHeld()

if iewj == 0 then
return _d("cAUWXh0DHRYIBEIVTRRZGEVaGwweUwhJFgcCWkQJB18GGRIWBRYWAQMbQA0MWhUPFlNC")
end

if (tonumber(yje.rebirths) or 0) >= 1 then
return _d("ZAkHXwYZElMISxYgBR8WLQdXGgkVWAkBFj0eFlcCARYdHlpZHABYWg")
end

if lqd >= iewj then
return _d("dwAJFg") .. iewj .. _d("Fg8ERBAeWlAFFl4RCVQWPgBXEBRaQgNFRBEPE0QYDRg")
end

local sws = {}

for hxe, mnwj in ipairs(ehj.RebirthCards) do
if not yje.rebirthCards[mnwj.cardId] then
table.insert(sws, (string.gsub(mnwj.cardId, _d("aAoMRRwy"), _d(""))))
end
end

return lqd .. _d("GQ") .. iewj .. _d("Fg8ERBAeVBY/EV8YAVpYCQBSVA") .. table.concat(sws, _d("Gkw")) .. _d("GA")
end

local function se(zywi)
local lq = nsmz.Character
local ueje = lq and lq:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if not ueje then
return false
end

return (ueje.Position - (xz[zywi] or xz.rod)).Magnitude <= 26
end

local function hi(swpu)
if se(swpu) then
return true
end

local wbj = nsmz.Character
local rqi = wbj and wbj:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if not rqi then
return false
end

local rmo = xz[swpu] or xz.rod
yje.shopTripUntil = os.clock() + 12
yje.shopHoldUntil = os.clock() + 12

pcall(function()
rqi.CFrame = CFrame.new(rmo)
end)

task.wait(1.2)

return se(swpu)
end

local function gxo(zoyb, lc, gda)
if not gda then
return false
end

if (yje.casts or 0) < gda.cost then
return false
end

if not hi(zoyb) then
yje.shopMessage = _d("dQMQWhBNFFkYRUQRDBleTBFeEU0JXgMVFhICCBY") .. gda.name
return false
end

local ehrx, ig = flo(lc, gda.id)

if not ehrx then
local fgih = tostring(ig)
local es = fgih:find(_d("Yg0JXVQZFRYYDVNUKxNFBABEGQwU"), 1, true) or fgih:find(_d("dAMEQlQpH1cAAEQ"), 1, true)

if es then

yje.shopMessage = _d("YQ0JXR0DHRYZFRYAAlpCBAAWFwIPWBgARFQLFURM") .. gda.name
return false
end

if ig ~= _d("RQAKQQ") then
yje.shopAt = os.clock() + 15
yje.shopMessage = _d("ZQkXQBEfWkQJA0MHCB4W") .. gda.name .. _d("FkQ") .. fgih .. _d("Hw")
end

return false
end

yje.shopMessage = _d("dAMQURwZWg") .. gda.name

return true
end

local function gd(am)
local dsoi = yjm(am)

if not dsoi or wzd(am) == dsoi.id then
return false
end

local xn

if am == _d("RAMB") then
xn = _d("cx0QXwQ/FVI")
elseif am == _d("VA0MQg") then
xn = _d("cx0QXwQvG18Y")
else
return false
end

local gte, yzgq = flo(xn, dsoi.id)

if not gte then
if yzgq ~= _d("RQAKQQ") then
yje.shopMessage = _d("dQMQWhBNFFkYRVMFGBNGTA") .. dsoi.name .. _d("FkQ") .. tostring(yzgq) .. _d("Hw")
end

return false
end

if am == _d("RAMB") then
yje.rod = dsoi.id
elseif am == _d("VA0MQg") then
yje.equippedBait = dsoi.id
else
return false
end

yje.shopMessage = _d("cx0QXwQdH1JM") .. dsoi.name

return true
end

local function pay()
local shnt = yje.shop

if os.time() - (yje.lastSync or 0) >= 5 then
qddk()
end

if shnt.equipRod then
gd(_d("RAMB"))
end

if shnt.equipBait then
gd(_d("VA0MQg"))
end

if shnt.autoBuyRod then
gxo(_d("RAMB"), _d("dBkcZBsJ"), hr(_d("RAMB")))
end

if shnt.autoBuyBait then
gxo(_d("VA0MQg"), _d("dBkcdBUEDg"), hr(_d("VA0MQg")))
end
end

local function qcqi()
local ujw = yje.shop

return ujw.autoBuyRod or ujw.autoBuyBait or ujw.equipRod or ujw.equipBait
end

yje.shopIsland = {
rods = function()
local ozz = ehj and ehj.RodsById or {}
local eons = {}

for yul, xxt in pairs(ozz) do
if tostring(xxt.shop) == _d("Xx8JVxoJ") then
table.insert(eons, {
id = tostring(yul),
name = tostring(xxt.name or yul),
cost = tonumber(xxt.cost) or 0,
luck = tonumber(xxt.luck) or 0,
index = tonumber(xxt.index) or 0,
crafted = xxt.crafted == true,
})
end
end

table.sort(eons, function(cqgg, fxcq)
return cqgg.index < fxcq.index
end)

return eons
end,

angler = function()
local mfmo = workspace:FindFirstChild(_d("eDwmRQ"), true)

if not mfmo then
return nil
end

for xlxb, ew in ipairs(mfmo:GetChildren()) do
if ew:GetAttribute(_d("ZQkGRBEZO1gLCVMGIyp1")) then
return ew
end
end

return nil
end,
held = function(pk)
return (yje.rodsOwned or {})[pk] == true
end,
recipeHeld = function(ekg)
for vf, vqz in ipairs(ekg or {}) do
local cts = tonumber((yje.mats or {})[vqz.id]) or 0

if cts < (tonumber(vqz.count) or 0) then
return false
end
end

return true
end,
recipeText = function(xojw)
local mmbv = {}

for nto, bh in ipairs(xojw or {}) do
local ayny = tonumber((yje.mats or {})[bh.id]) or 0
local bwa = (tcbh.ById[bh.id] and tcbh.ById[bh.id].name) or tostring(bh.id)

table.insert(mmbv, bwa .. _d("Fg") .. te(ayny) .. _d("GQ") .. te(tonumber(bh.count) or 0))
end

return table.concat(mmbv, _d("Fq7SFg"))
end,

stand = function(lsh)
local no = nsmz.Character
local wnnb = no and no:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if not (wnnb and lsh) then
return false
end

local up = lsh:GetPivot()
local pzhl = lsh:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA")) or lsh:FindFirstChildWhichIsA(_d("dA0WUyQMCEI"), true)
local omqm = pzhl and (pzhl.CFrame * CFrame.new(0, 0, -5)).Position or nil

if not omqm then
local seod = RaycastParams.new()
seod.FilterType = Enum.RaycastFilterType.Exclude
seod.FilterDescendantsInstances = { no, lsh }

local nv = nil
local ike = math.huge

for taau, zgja in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local delx = workspace:Raycast(up.Position + zgja + Vector3.new(0, 30, 0), Vector3.new(0, -140, 0), seod)

if delx and tostring(delx.Instance.Name) ~= _d("YQ0RUwY") and delx.Position.Y <= up.Position.Y + 10 then
local cj = math.abs(delx.Position.Y - up.Position.Y)

if cj < ike then
nv = delx
ike = cj
end
end
end

omqm = nv and Vector3.new(nv.Position.X, nv.Position.Y + 3.5, nv.Position.Z) or (up.Position + Vector3.new(0, 4, 0))
end

yje.shopTripUntil = os.clock() + 12

yje.islandTripUntil = os.clock() + 12

pcall(function()
wnnb.CFrame = CFrame.new(omqm)
end)

task.wait(1.2)

return true
end,
atIsland = function()
local au = workspace:FindFirstChild(_d("fx8JVxoJPF8fDVMGABtYIjV1"), true)
local ueo = nsmz.Character
local bn = ueo and ueo:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if not (au and bn) then
return false
end

return (bn.Position - au:GetPivot().Position).Magnitude <= 45
end,
toIsland = function()
if yje.shopIsland.atIsland() then
return true
end

yje.shopTripUntil = os.clock() + 12

if not yje.gotoIsland() then
return false
end

task.wait(1.2)

return yje.shopIsland.atIsland()
end,

craftExcalibur = function()
local glps = yje.shopIsland.angler()

if not glps or yje.shopIsland.held(_d("RAMBaQcIGUQJEQ")) then
return false
end

if not yje.shopIsland.recipeHeld(ehj and ehj.SecretRecipe) then
return false
end

yje.shopIsland.stand(glps)

local hw, bv = flo(_d("dR4EUAA/FVI"), _d("RAMBaQcIGUQJEQ"))

if hw then
yje.rod = _d("RAMBaQcIGUQJEQ")
yje.islandMessage = _d("dR4EUAAIHhYYDVNUKAJVDQlfFhgIFh4KUlQMDhYYDVNUJRNSCABYVCwUUQAARA")
elseif bv ~= _d("RQAKQQ") then
yje.islandMessage = _d("fgUBUhEDWncCAloRH1pECQNDBwgeFhgNU1QoAlUNCV8WGAgWRA") .. tostring(bv) .. _d("Hw")
end

return hw
end,
buyRod = function()
if yje.islandLocked then
return false
end

local uprp = yje.rodsOwned or {}
local jzn = nil

for th, hjgf in ipairs(yje.shopIsland.rods()) do
if not hjgf.crafted
and uprp[hjgf.id] ~= true
and hjgf.cost <= (yje.casts or 0)
and (jzn == nil or hjgf.index > jzn.index) then
jzn = hjgf
end
end

if not jzn then
return false
end

if not yje.shopIsland.toIsland() then
yje.islandMessage = _d("dQMQWhBNFFkYRUQRDBleTBFeEU0TRQAEWBBNGVkZC0IRHw")
return false
end

local top, nyqn = flo(_d("dBkcZBsJ"), jzn.id)

if top then
yje.islandMessage = _d("dAMQURwZWg") .. jzn.name
elseif nyqn ~= _d("RQAKQQ") then
local pz = tostring(nyqn)

if not (pz:find(_d("Yg0JXVQZFQ"), 1, true) or pz:find(_d("fx8JVxoJH0Q"), 1, true)) then
yje.islandAt = os.clock() + 15
yje.islandMessage = _d("ZQkXQBEfWkQJA0MHCB4W") .. jzn.name .. _d("FkQ") .. pz .. _d("Hw")
end
end

return top
end,
craftBoot = function()
if yje.boot.owned or yje.islandLocked then
return false
end

if not yje.shopIsland.recipeHeld(ehj and ehj.BootRecipe) then
return false
end

if not yje.shopIsland.toIsland() then
yje.islandMessage = _d("dQMQWhBNFFkYRUQRDBleTBFeEU0TRQAEWBBNGVkZC0IRHw")
return false
end

local wiz, hrav = flo(_d("dR4EUAAvFVkY"))

if wiz then
yje.boot.owned = true
yje.islandMessage = _d("dR4EUAAIHhYYDVNUIR9RCQtSFR8DFi4KWQA")
elseif hrav ~= _d("RQAKQQ") then
yje.islandMessage = _d("fx8JVxoJWnAFFl4RHxdXAkVEEQsPRQkBFgAFHxYOClkATVI") .. tostring(hrav) .. _d("Hw")
end

return wiz
end,
best = function()
local xoz = yje.rodsOwned or {}
local ikj = nil

for wsdj, gocm in ipairs(yje.shopIsland.rods()) do
if xoz[gocm.id] == true and (ikj == nil or gocm.luck > ikj.luck) then
ikj = gocm
end
end

return ikj
end,

equipRod = function()
local vzsr = yje.shopIsland.best()

if not vzsr or yje.rod == vzsr.id then
return false
end

local gbra, hfv = flo(_d("cx0QXwQ/FVI"), vzsr.id)

if gbra then
yje.rod = vzsr.id
yje.islandMessage = _d("cx0QXwQdH1JM") .. vzsr.name
elseif hfv ~= _d("RQAKQQ") then
yje.islandMessage = _d("dQMQWhBNFFkYRVMFGBNGTA") .. vzsr.name .. _d("FkQ") .. tostring(hfv) .. _d("Hw")
end

return gbra
end,
equipBoot = function()
if not yje.boot.owned or yje.boot.equipped then
return false
end

local mbdi, baev = flo(_d("cx0QXwQvFVkY"), true)

if mbdi then
yje.boot.equipped = true
yje.islandMessage = _d("cx0QXwQdH1JMEV4RTTZTCwBYEAwIT0wnWRsZ")
elseif baev ~= _d("RQAKQQ") then
yje.islandMessage = _d("dQMQWhBNFFkYRVMFGBNGTBFeEU0YWQMRFlw") .. tostring(baev) .. _d("Hw")
end

return mbdi
end,
active = function()
local rra = yje.island

return rra.autoRod or rra.equipRod or rra.autoAcc or rra.equipAcc
end,
run = function()
local olof = yje.island

if os.time() - (yje.lastSync or 0) >= 8 then
qddk()
end

local egg = false

if olof.autoRod then
egg = yje.shopIsland.craftExcalibur()
end

if olof.equipRod then
yje.shopIsland.equipRod()
end

if olof.autoRod and not egg then
yje.shopIsland.buyRod()
end

if olof.autoAcc then
yje.shopIsland.craftBoot()
end

if olof.equipAcc then
yje.shopIsland.equipBoot()
end
end,
text = function()
if not ehj then
return _d("cAUWXh0DHXINEVdUAxVCTANZAQMeFkFFQhwIWl8fCVcaCVpFBApGVAQJFhkLVwIME1oNB1oRQw")
end

local sgy = {}
local fq = yje.rodsOwned or {}

table.insert(sgy, yje.islandLocked and _d("dw4EWBACFFMIRX8HARtYCEVfB00WWQ8OUxBNVxYeAFQdHw5eTANfBh4OGA") or _d("dw4EWBACFFMIRX8HARtYCEVfB00VRgkLGA"))

for qqhj, eov in ipairs(yje.shopIsland.rods()) do
local ntmh

if fq[eov.id] == true then
ntmh = yje.rod == eov.id and _d("WRsLUxBNuIFMClhUAxVB") or _d("WRsLUxA")
elseif eov.crafted then
ntmh = _d("fgUBUhEDWncCAloRH1pECQZfBAg")
else
ntmh = te(eov.cost) .. _d("Fg8ERQAe")
end

table.insert(sgy, eov.name .. _d("Fo7lolQ") .. ntmh)
end

table.insert(sgy, _d(""))

if fq.rod_secret then
table.insert(sgy, _d("cxQGVxgEGEMeXxYbGhRTCA"))
else
local vfie = yje.shopIsland.recipeHeld(ehj.SecretRecipe)

table.insert(sgy, _d("cxQGVxgEGEMeXxY") .. (vfie and _d("RAkGXwQIWkQJBFIN") or _d("RAkGXwQIWkUECkQA")))
table.insert(sgy, yje.shopIsland.recipeText(ehj.SecretRecipe))
end

table.insert(sgy, _d("fgUBUhEDWncCAloRH0AW") .. (yje.shopIsland.angler() and _d("QxxFWBsa") or _d("WAMRFhwICFM")))
table.insert(sgy, _d(""))

local ylni = yje.boot
local xdbo

if ylni.equipped then
xdbo = _d("egkCUxoJG0QVRXQbAg4MTABHAQQKRgkB")
elseif ylni.owned then
xdbo = _d("egkCUxoJG0QVRXQbAg4MTApBGgge")
elseif yje.shopIsland.recipeHeld(ehj.BootRecipe) then
xdbo = _d("egkCUxoJG0QVRXQbAg4MTBdTFwQKU0wXUxUJAw")
else
xdbo = _d("egkCUxoJG0QVRXQbAg4MTA") .. yje.shopIsland.recipeText(ehj.BootRecipe)
end

table.insert(sgy, xdbo)
table.insert(sgy, _d("dQ0WQgdNDllMFkYRAx4MTA") .. te(yje.casts or 0))

if yje.islandMessage then
table.insert(sgy, _d(""))
table.insert(sgy, yje.islandMessage)
end

return table.concat(sgy, _d("PA"))
end,
}

task.spawn(function()
qddk()
end)

local yaia = {
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

getgenv().ACBXAutoBuyHalloween = yaia

etxi.SyncItems.OnClientEvent:Connect(function(gcb)
if type(gcb) == _d("Qg0HWhE") then
yaia.balances = gcb
yaia.lastSync = os.time()
end
end)

etxi.RequestItemSync:FireServer()

etxi.RaidShopState.OnClientEvent:Connect(function(pc)
if type(pc) == _d("Qg0HWhE") and pc.shopId == _d("Xg0JWhsaH1MC") then
yaia.shopState = pc
yaia.stateAt = os.clock()
end
end)

etxi.RaidNotify.OnClientEvent:Connect(function(shc)
local cbbs = yaia.pending

if not cbbs or type(shc) ~= _d("RRgXXxoK") then
return
end

if shc:sub(1, 9) == _d("Zjk3dTwsKXMo") then
yaia.purchased[cbbs.id] = (yaia.purchased[cbbs.id] or 0) + 1
yaia.pending = nil
else
if yaia.balances[cbbs.currency] then
yaia.balances[cbbs.currency] = yaia.balances[cbbs.currency] + cbbs.price
end

yaia.failedUntil[cbbs.id] = os.time() + 5
yaia.pending = nil
end
end)

ot.trip = {
untilAt = 0,
lastTry = 0,
lastResult = nil,
spot = nil,
}

function ot.merchant()
local dx = workspace:FindFirstChild(_d("eDwmRQ"))
local sa = ot.shopData and ot.shopData.NpcName or _d("ZhkIRh8EFBYhAEQXBRtYGA")

return dx and dx:FindFirstChild(sa) or nil
end

function ot.stand()
local lj = ot.merchant()
local wyon = lj and (lj:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA")) or lj:FindFirstChildWhichIsA(_d("dA0WUyQMCEI")))
local wdla = nsmz.Character
local xyo = wdla and wdla:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if not (wyon and xyo) then
return false
end

ot.trip.spot = wyon.Position + Vector3.new(0, 3, 4)
xyo.AssemblyLinearVelocity = Vector3.zero
xyo.CFrame = CFrame.new(ot.trip.spot)

return true
end

function ot.fresh()
return yaia.shopState ~= nil and os.clock() - yaia.stateAt < 30
end

function ot.guiOpen()
local nju = xjwi:FindFirstChild(_d("fg0JWhsaH1MCNl4bHT1DBQ"))
local nblm = nju and nju:FindFirstChild(_d("ZQQKRjIfG1sJ"))

if nblm then
return nblm.Visible == true
end

for rw, wsia in ipairs(xjwi:GetChildren()) do
if wsia:IsA(_d("ZQ8XUxEDPUMF")) and wsia.Name:lower():find(_d("Xg0JWhsaH1MC"), 1, true) and wsia.Enabled then
return true
end
end

return false
end

function ot.close()
local tfn = xjwi:FindFirstChild(_d("fg0JWhsaH1MCNl4bHT1DBQ"))
local mbo = tfn and tfn:FindFirstChild(_d("ZQQKRjIfG1sJ"))

if not (mbo and mbo.Visible) then
return false
end

local azsp = mbo:FindFirstChild(_d("dQAKRREvD0IYClg"))

if not azsp then
for ue, rh in ipairs(mbo:GetDescendants()) do
if rh:IsA(_d("cRkMdAEZDlkC")) and tostring(rh.Name):lower():find(_d("VQAKRRE"), 1, true) then
azsp = rh
break
end
end
end

if azsp and type(firesignal) == _d("UBkLVQAEFVg") then
pcall(function()
firesignal(azsp.MouseButton1Click)
end)

task.wait(0.3)

if not mbo.Visible then
return true
end
end

pcall(function()
mbo.Visible = false
end)

return true
end

function ot.spend()
if yaia.pending or os.time() - (yaia.lastAttempt or 0) < 1 then
return nil
end

local wvn = yaia.shopState

for xo, nny in ipairs(ot.shopItems) do
if yaia.selected[nny.id] and os.time() >= (yaia.failedUntil[nny.id] or 0) then
local njkm = nny.stock
local vhjq = yaia.purchased[nny.id] or 0

if wvn and wvn.stocks and wvn.stocks[nny.id] then
njkm = wvn.stocks[nny.id]
end

if wvn and wvn.bought then
vhjq = math.max(vhjq, wvn.bought[nny.id] or 0)
end

local ns = njkm and (njkm - vhjq) or 1
local epqh = yaia.balances[nny.currency] or 0

if ns > 0 and epqh >= nny.price then
yaia.pending = {
id = nny.id,
price = nny.price,
currency = nny.currency,
at = os.time(),
}
yaia.lastAttempt = os.time()
yaia.balances[nny.currency] = epqh - nny.price

pcall(function()
etxi.BuyRaidItem:FireServer(nny.id, 1)
end)

return nny.id
end
end
end

return nil
end

function ot.open(cndx)
if not cndx and ot.fresh() then
return true
end

if not cndx and os.clock() < (ot.trip.lastTry or 0) + 8 then
return false
end

ot.trip.lastTry = os.clock()
ot.trip.untilAt = os.clock() + 12

yje.shopTripUntil = os.clock() + 12
yje.shopHoldUntil = os.clock() + 12
yje.phase = _d("XwgJUw")

local umo = ot.merchant()
local igwf = umo and umo:FindFirstChild(_d("Zh4KTh0AE0IVNUQbAApC"))

if not (umo and igwf) then
yje.deepPhase = _d("XwgJUw")
ot.trip.untilAt = os.clock() + 60
ot.trip.lastResult = _d("YgQAFiQYF0YHDFhUIB9EDw1XGhlaXx9FWBsZWl8CRUIcBAkWDhBfGAlU")

return false
end

local ek = os.clock() + 3
local qrtu = 0

while os.clock() < ek do

ot.stand()

if os.clock() >= qrtu then
qrtu = os.clock() + 0.8

if type(fireproximityprompt) == _d("UBkLVQAEFVg") then
pcall(function()
fireproximityprompt(igwf)
end)
end

pcall(function()
etxi.OpenRaidShop:FireServer(_d("Xg0JWhsaH1MC"))
end)
end

if ot.guiOpen() or ot.fresh() then
break
end

task.wait(0.1)
end

if not (ot.guiOpen() or ot.fresh()) then

yje.deepPhase = _d("XwgJUw")
ot.trip.untilAt = os.clock() + 60
ot.trip.lastResult = _d("YgQAFhcCD1gYAERUCRNSTAtZAE0bWB8SUwZNVxYFERYbAxZPTApGEQMJFgULFgAFHxYfAFcHAhRXAEVXBggbGA")

return false
end

ot.trip.lastResult = _d("dQMQWAAICBYDFVMaQw")

for qb = 1, 3 do
ot.stand()

if not ot.spend() then
break
end

task.wait(1.2)
end

pcall(ot.close)

yje.deepPhase = _d("XwgJUw")

return true
end

local function sl(crrg)
crrg = math.max(0, math.floor(crrg))
local ufe = math.floor(crrg / 3600)
local slqa = math.floor((crrg % 3600) / 60)
local vkw = crrg % 60

if ufe > 0 then
return string.format(_d("EwgNFlFdSFIB"), ufe, slqa)
elseif slqa > 0 then
return string.format(_d("EwgIFlFdSFIf"), slqa, vkw)
end

return string.format(_d("EwgW"), vkw)
end

local function gem()
local rhh = xjwi:FindFirstChild(_d("fg0JWhsaH1MCNl4bHT1DBQ"))
local uvuu = rhh and rhh:FindFirstChild(_d("ZQQKRjIfG1sJ"))
local ap = uvuu and uvuu:FindFirstChild(_d("fxgAWzgECUI"))
local gnu = {}
local bgq = nil

if ap then
for qjke, niv in ipairs(ot.shopItems) do
local ppwe = ap:FindFirstChild(niv.id)
local itfh = ppwe and ppwe:FindFirstChild(_d("dAMd"))
local dbos = itfh and itfh:FindFirstChild(_d("ZRgKVR8"))

if dbos and dbos:IsA(_d("YgkdQjgMGFMA")) then
local tddl, cxw = dbos.Text:match(_d("HkkBHV1ICRxDQEVeRV9SR0w"))

if tddl and cxw then
gnu[niv.id] = {
remaining = tonumber(tddl),
total = tonumber(cxw),
}
end
end
end
end

if uvuu then
for blfl, zp in ipairs(uvuu:GetDescendants()) do
if zp:IsA(_d("YgkdQjgMGFMA")) and zp.Text:find(_d("RAkWUwAeWl8C"), 1, true) then
bgq = zp.Text:match(_d("RAkWUwAeWl8CQEVeRVQdRUE"))
break
end
end
end

return gnu, bgq
end

local function rwig(rdr)
if type(rdr) ~= _d("RRgXXxoK") then
return 0
end

local ky = tonumber(rdr:match(_d("HkkBHV0F"))) or 0
local jm = tonumber(rdr:match(_d("HkkBHV0A"))) or 0
local nu = tonumber(rdr:match(_d("HkkBHV0e"))) or 0
return ky * 3600 + jm * 60 + nu
end

local function jnwr()
local bhzz = yaia.shopState
local ute, wvdc = gem()
local rdj = {}
local dooz = {}
local pof = {}

for kzc, iwh in ipairs(ot.shopItems) do
local nw = iwh.stock
local xjh = nil

if bhzz and bhzz.stocks and bhzz.stocks[iwh.id] then
nw = bhzz.stocks[iwh.id]
end

local tzco = yaia.purchased[iwh.id] or 0

if bhzz and bhzz.bought then
tzco = math.max(tzco, bhzz.bought[iwh.id] or 0)
end

if nw then
xjh = math.max(0, nw - tzco)
end

if (not bhzz or not bhzz.bought) and ute[iwh.id] then
xjh = ute[iwh.id].remaining
nw = ute[iwh.id].total
end

local umf = iwh.currency == _d("XA0GXSsCJVoNC0IRHxQ") and _d("eg0LQhEfFEU") or _d("dQ0LUg0")
local hxyw

if xjh == nil then
hxyw = iwh.shortName
elseif xjh <= 0 then
hxyw = iwh.shortName .. _d("Fq7SFgcCFlJMCkMA")
else
hxyw = iwh.shortName .. _d("Fq7SFg") .. tostring(xjh) .. _d("GQ") .. tostring(nw or _d("CQ"))
end

if not dooz[umf] then
dooz[umf] = {}
table.insert(pof, umf)
end

table.insert(dooz[umf], hxyw)
end

local kut = {}

for nt, qoa in ipairs(pof) do
table.insert(kut, qoa)

for tc, tou in ipairs(dooz[qoa]) do
table.insert(kut, tou)
end
end

table.insert(rdj, table.concat(kut, _d("PGY")))
table.insert(rdj, _d(""))

if bhzz and type(bhzz.resetsIn) == _d("WBkIVBEf") then
local coi = bhzz.resetsIn - (os.clock() - yaia.stateAt)
table.insert(rdj, _d("ZAkWQhsOEUVMDFhU") .. sl(coi))
elseif wvdc then
if yaia.uiTimerText ~= wvdc then
yaia.uiTimerText = wvdc
yaia.uiTimerSeconds = rwig(wvdc)
yaia.uiTimerAt = os.clock()
end

local qqs = yaia.uiTimerSeconds - (os.clock() - yaia.uiTimerAt)
table.insert(rdj, _d("ZAkWQhsOEUVMDFhU") .. sl(qqs))
else
table.insert(rdj, _d("ZAkWQhsOEUVMAVcdAQMWrtIWAgQJXxhFQhwIWkUECkY"))
end

if not ot.fresh() then
table.insert(rdj, ot.trip.lastResult or _d("YgQAFhcCD1gYAERUBAkWDwlZBwgeFkFFeQQIFBYfDVkETQ1XAA5FVBkSU0wGXhUfG1UYAERUGAoWGAoWHRlU"))
end

return table.concat(rdj, _d("PA"))
end

etxi.NPCBattleResult.OnClientEvent:Connect(function(ur)
if type(ur) ~= _d("Qg0HWhE") then
return
end

kuve.battlePending = false

if ur.result == _d("VQMKWhACDVg") and type(ur.remaining) == _d("WBkIVBEf") and oq and izdc then
xyf(oq, izdc, os.time() + ur.remaining)
return
end

if type(ur.npcId) == _d("RRgXXxoK") then
local df = type(ur.difficulty) == _d("RRgXXxoK") and ur.difficulty or kuve.activeDifficulty[ur.npcId] or _d("WAMXWxUB")
local nbsx = gor.ById[ur.npcId]
local ow = tonumber(ur.cooldown) or (nbsx and nbsx.cooldown) or 300
xyf(ur.npcId, df, os.time() + ow)
end
end)

etxi.SyncNPCCooldowns.OnClientEvent:Connect(function(furc)
if type(furc) ~= _d("Qg0HWhE") then
return
end

for lf, xw in pairs(furc) do
if type(lf) == _d("RRgXXxoK") and type(xw) == _d("WBkIVBEf") then
local qoc = kuve.activeDifficulty[lf] or _d("WAMXWxUB")
xyf(lf, qoc, xw)
end
end
end)

local odzb = {}
local abk = {}

for rzc, hj in ipairs(hh.Worlds) do

local nd = { _d("dwAJ") }
local puo = {}
local ufd = {}
local gsod = nil

for yz, royw in ipairs(hj.npcs or {}) do
local fjdo = gor.ById[royw]
if fjdo then
table.insert(nd, fjdo.name)
table.insert(ufd, royw)
puo[fjdo.name] = royw
if fjdo.type == _d("VA0RQhgI") then
gsod = royw
end
end
end

local jtmu = hj.id
if gsod and vjv.ById[gsod] then
jtmu = vjv.ById[gsod].worldId or jtmu
end

for yw, na in ipairs(hj.npcs or {}) do
abk[na] = jtmu

kuve.bossTeams.worldOf[na] = hj.id
end

table.insert(odzb, {
id = hj.id,
teleportWorldId = jtmu,
name = hj.name,
options = nd,
ids = ufd,
byName = puo,
npcs = hj.npcs,
})
end

local rfgv = {}
local kr = {}
local wfvg = {}

for dkf, uc in ipairs(hh.Difficulties) do
table.insert(rfgv, uc.name)
kr[uc.name] = uc.id
wfvg[uc.id] = uc.name
end

local lqff = {}
local klo = {}

for fvd, lv in ipairs(ld.Difficulties) do
table.insert(lqff, lv.name)
klo[lv.name] = lv.id
end

local rdzp = {}
local jmv = {}
local jxs = {}
local vw = {
soul_king = _d("ZA0MUiMCCFoI"),
beerus = _d("ZA0MUiMCCFoIOnQRCAhDHw"),
reid = _d("ZA0MUiMCCFoIOmQRBB4"),
}

for ejok, luqi in ipairs(ld.Raids) do
if luqi.BossTitle and luqi.id then
table.insert(rdzp, luqi.BossTitle)
jmv[luqi.BossTitle] = luqi.id
jxs[luqi.id] = luqi.NpcId
end
end

local function wnsl()
for kgcg, hzl in ipairs({ _d("dA0RQhgIPUMF"), _d("dA0RQhgIPUMFVw") }) do
local cqcs = xjwi:FindFirstChild(hzl)
local nojd = cqcs and cqcs:FindFirstChild(_d("dA0RQhgIKVUeAFMa"))
if nojd and nojd.Visible then
return nojd
end
end
end

local function eju()
for aqi, bj in ipairs({ _d("dA0RQhgIPUMF"), _d("dA0RQhgIPUMFVw") }) do
local ijm = xjwi:FindFirstChild(bj)
local gvwk = ijm and ijm:FindFirstChild(_d("dA0RQhgIKVUeAFMa"))
if gvwk then
return gvwk
end
end
end

local function jtqz()
if wnsl() then
return true
end

for nwu, ompd in ipairs({ _d("dA0RQhgIPUMF"), _d("dA0RQhgIPUMFVw") }) do
local puc = xjwi:FindFirstChild(ompd)
local dy = puc and puc:FindFirstChild(_d("fgUBUzYMDkIAAHQBGQ5ZAg"))
if dy and dy.Visible then
return true
end
end

for tl, xxjs in ipairs({ _d("fwInVwAZFlM"), _d("fwInVwAZFlNe") }) do
local svj = xjwi:FindFirstChild(xxjs)
if svj and svj:IsA(_d("dAMKWiIMFkMJ")) and svj.Value then
return true
end
end

return false
end

function gsu.slotFree(ozc)

if ozc == nil then
return false
end

if not gsu.enabled then
return not jtqz()
end

return not gsu.busy(ozc)
end

function gsu.npcSlot()
return gsu.roleSlot(_d("WBwG"))
end

local ctod

local function rnc(vc)
vc = math.max(0, math.floor(vc))
if vc <= 0 then
return _d("RAkEUg0")
end

local son = math.floor(vc / 60)
local aa = vc % 60

if son > 0 then
return string.format(_d("EwgIFlFdSFIf"), son, aa)
end

return string.format(_d("EwgW"), aa)
end

local function pma()
for qfuo, ofu in ipairs({ _d("dA0RQhgIPUMF"), _d("dA0RQhgIPUMFVw") }) do
local xxls = xjwi:FindFirstChild(ofu)
if xxls then
local uvao = xxls:FindFirstChild(_d("ZBkLcBgCFUQgBFQRAQ"))
local rvf = xxls:FindFirstChild(_d("YgMSUwYrFlkDF3oVDx9a"))
if (uvao and uvao.Visible) or (rvf and rvf.Visible) then
return _d("fwJFYhsaH0Q")
end
end
end

if nms.currentRoom and (nms.inBattle or jtqz()) then
local xac = nil

for lgx, nna in ipairs({ _d("dA0RQhgIPUMF"), _d("dA0RQhgIPUMFVw") }) do
local ux = xjwi:FindFirstChild(nna)
local bjm = ux and ux:FindFirstChild(_d("dA0RQhgIKVUeAFMa"))
local rph = bjm and bjm:FindFirstChild(_d("cwIAWw0sGUIFE1M3DAhS"))
local kom = rph and rph:FindFirstChild(_d("eA0IUzgMGFMA"))

if kom and kom.Text ~= _d("") then
xac = kom.Text
break
end
end

if xac then
return _d("dA0RQhgEFFFM") .. xac .. _d("Fjc3WRsAWg") .. nms.currentRoom .. _d("aw")
end

return _d("dA0RQhgEFFFMPmQbAhcW") .. nms.currentRoom .. _d("aw")
end

local ui = eju()
if jtqz() and ui then
local kjza = ui:FindFirstChild(_d("cwIAWw0sGUIFE1M3DAhS"))
local yqvj = kjza and kjza:FindFirstChild(_d("eA0IUzgMGFMA"))
local lqdx = yqvj and yqvj.Text

local dngp = nil
if kuve.currentBattle then
dngp = kuve.currentBattle.difficulty
elseif lqdx then
local kz = edbe[lqdx]
if kz then
dngp = kuve.activeDifficulty[kz]
end
end

local xs = _d("")
if dngp then
xs = _d("Fjc") .. (wfvg[dngp] or dngp) .. _d("aw")
end

local kao = lqdx
if kuve.currentBattle and kuve.currentBattle.npcId then
local pj = gor.ById[kuve.currentBattle.npcId]
if pj then
kao = pj.name
end
end

if kao and kao ~= _d("") then
return _d("dA0RQhgEFFFM") .. kao .. xs
end

return _d("dA0RQhgEFFE") .. xs
end

kuve.currentBattle = nil

local is = axd.enabled and (axd.bossFor(1) or axd.bossFor(2))

if is then
local blb = pen:FindFirstChild(_d("ZA0MUicZG0IZFg"))

if blb then
local bm = is
local zbsd = ld.ById[bm]
local ktd = zbsd and zbsd.BossTitle or bm
local af = blb:GetAttribute(_d("fx8qRhED")) == true or blb:GetAttribute(_d("cAMXVREJ")) == true
local hg = blb:GetAttribute(_d("ZAkEUg0y") .. bm) == true
local beg = axd.progress[bm]
local fnrx = beg and beg.locked == true

if not af then
local eo = tonumber(blb:GetAttribute(_d("dQQEWBMICXcY"))) or 0
return _d("fwgJU1RAWg") .. ktd .. _d("Fj4EXxBXWg") .. rnc(eo - os.time())
end

if beg and beg.cooldowns then
local jlj = tonumber(beg.cooldowns.normal)

if jlj and jlj > 0 then
return _d("fwgJU1RAWg") .. ktd .. _d("Fj4EXxBXWg") .. rnc(jlj)
end
end

if not hg or fnrx then
return _d("fwgJU1RAWg") .. ktd .. _d("Fj4EXxBXWloDBl0RCQ")
end

return _d("fwgJU1RAWg") .. ktd .. _d("Fj4EXxBXWkQJBFIN")
end
end

if yje.enabled then
if yje.usingGameAuto then
return _d("cAUWXh0DHRZBRVEVAB8WDRBCG01S") .. te(khif()) .. _d("Fg8EQxMFDh8")
end

if yje.phase == _d("VQ0WQh0DHQ") then
return _d("cAUWXh0DHRZBRVUVHg5fAgI")
end

if yje.phase == _d("QQ0MQh0DHXQFEVM") then
return _d("cAUWXh0DHRZBRUEVBA5fAgIWEgIIFg1FVB0ZHw")
end

if yje.phase == _d("RAkAWh0DHQ") or yje.phase == _d("RAkWWRgbE1gL") then
return _d("cAUWXh0DHRZBRUQRCBZfAgIWGwMfFgUL")
end

return _d("cAUWXh0DHRZBRV8QAR8WRA") .. te(khif()) .. _d("Fg8EQxMFDh8")
end

if not kuve.enabled and not kuve.story then
return _d("fwgJUw")
end

local mkf, wab, ucgc = ctod()

if mkf then
local szps = gor.ById[mkf]
local zcp = szps and szps.name or mkf
local soqy = (wab or 0) - os.time()
local tgsi = wfvg[ucgc] or ucgc or _d("eAMXWxUB")

return _d("fwgJU1RAWngJHUJOTQ") .. zcp .. _d("Fjc") .. tgsi .. _d("a0xN") .. rnc(soqy) .. _d("Hw")
end

return _d("fwgJUw")
end

local function qtu(zckk)
local elg = workspace:FindFirstChild(_d("eDwmRQ"))
if not elg then
return nil
end

for ujd, fx in ipairs(elg:GetChildren()) do
if fx:GetAttribute(_d("eDwmfxA")) == zckk then
return fx
end
end

return nil
end

local function zjt(bgt)
local rt = nsmz.Character
local xm = rt and rt:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))
if not (xm and bgt) then
return false
end

local rnnt, ysse = pcall(function()
return bgt:GetPivot()
end)
if not rnnt then
return false
end

local db = ysse.Position + ysse.LookVector * 6 + Vector3.new(0, 3, 0)
local yi = Vector3.new(ysse.Position.X, db.Y, ysse.Position.Z)

xm.CFrame = CFrame.lookAt(db, yi)
return true
end

local function xvvv()
local otqc = nsmz:FindFirstChild(_d("ZgAETxEfKVUeDEYAHg"))
local lbn = otqc and otqc:FindFirstChild(_d("ZgAETxEfN1kIEFoR"))

if not lbn then
return nil
end

local ixhy, wn = pcall(require, lbn)
if not ixhy then
return nil
end

local jb, srzz = pcall(function()
return wn:GetControls()
end)

if jb then
return srzz
end
end

local function fjgf(uxr, mhbd, gcq, opro, haye)
opro = opro or 8

local function zjoy()
return mhbd and mhbd()
end

local bosn = os.clock()

while os.clock() - bosn < 5 do
if zjoy() then
return false
end

if nsmz.Character and nsmz.Character:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA")) then
break
end
task.wait(0.2)
end

local yaj = nsmz.Character
local yxb = yaj and yaj:FindFirstChildOfClass(_d("fhkIVxoCE1I"))
local wdd = yaj and yaj:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if not (yxb and wdd) then
return false
end

if (wdd.Position - uxr).Magnitude <= opro then
return true
end

local oaq = gcq or yxb.WalkSpeed
local yx = xvvv()
local aaws = yxb.JumpPower
local qc = yxb.UseJumpPower

if haye then
pcall(function()
yxb.UseJumpPower = true
yxb.JumpPower = math.max(aaws, 60)
end)
end

if yx then
pcall(function()
yx:Disable()
end)
end

local nj = yxb:FindFirstChildOfClass(_d("dwIMWxUZFUQ"))
local mb = nil
local ce = yaj:FindFirstChild(_d("dwIMWxUZHw"))
local vb = ce and (ce:FindFirstChild(_d("YQ0JXTUDE1s"), true) or ce:FindFirstChild(_d("ZBkLdxoEFw"), true))

if nj and vb then
local wf, jzl = pcall(function()
return nj:LoadAnimation(vb)
end)

if wf and jzl then
mb = jzl
mb.Looped = true
mb.Priority = Enum.AnimationPriority.Movement
pcall(function()
mb:Play()
end)
end
end

local function kl(adhi)
wdd.AssemblyLinearVelocity = Vector3.new(0, wdd.AssemblyLinearVelocity.Y, 0)

if mb then
pcall(function()
mb:Stop(0.1)
end)
end

if yx then
pcall(function()
yx:Enable()
end)
end

if haye then
pcall(function()
yxb.JumpPower = aaws
yxb.UseJumpPower = qc
end)
end

return adhi
end

local function kbhz(ino, vad)
local aqsx = os.clock()
local bvp = os.clock()
local gam = 0
local xhy = wdd.Position

while os.clock() - aqsx < vad do
if zjoy() then
return false
end

local totk = ino - wdd.Position
totk = Vector3.new(totk.X, 0, totk.Z)

if totk.Magnitude <= 3 then
return true
end

local um = totk.Unit
wdd.AssemblyLinearVelocity = Vector3.new(
um.X * oaq,
wdd.AssemblyLinearVelocity.Y,
um.Z * oaq
)

if haye and os.clock() - bvp >= 0.5 then
local hpua = (wdd.Position - xhy).Magnitude
local mhqc = yxb:GetState()
local xid = mhqc ~= Enum.HumanoidStateType.Jumping and mhqc ~= Enum.HumanoidStateType.Freefall

if hpua < 1.5 and xid and os.clock() - gam >= 0.8 then
yxb.Jump = true
gam = os.clock()
end

xhy = wdd.Position
bvp = os.clock()
end

task.wait()
end

return false
end

local kpcx = pe:CreatePath({
AgentRadius = 2.5,
AgentHeight = 5,
AgentCanJump = true,
WaypointSpacing = 8,
})

local bvx = pcall(function()
kpcx:ComputeAsync(wdd.Position, uxr)
end)

if bvx and kpcx.Status == Enum.PathStatus.Success then
for tbz, axwe in ipairs(kpcx:GetWaypoints()) do
if zjoy() then
return kl(false)
end

if (wdd.Position - uxr).Magnitude <= opro then
break
end

if not kbhz(axwe.Position, 10) and zjoy() then
return kl(false)
end
end
end

if zjoy() then
return kl(false)
end

local mbs = kbhz(uxr, 15)
return kl(mbs)
end

local function egfr(pia, qaa, lgyf)
return fjgf(pia, lgyf, qaa)
end
getgenv().ACBXWalkCancel = false
getgenv().ACBXWalkToPositionWithSpeed = function(dxix, llxc)
return egfr(dxix, llxc, function()
return getgenv().ACBXWalkCancel == true
end)
end

local function ylka()
if kuve.story then
return { kuve.storyDifficulty }
end

return kuve.difficulties
end

local function dff()
local ybjr = {}

if kuve.story then
for qrw, hqk in ipairs(odzb) do
for ze, amg in ipairs(hqk.ids) do
table.insert(ybjr, amg)
end

if hqk.id == _d("Xx8AXRUE") then
break
end
end

return ybjr
end

local qtx = {}

for tyu, cqz in ipairs(odzb) do
local xmn = kuve.selectedByWorld[cqz.name]

if xmn then
for cto, xazx in ipairs(xmn) do
if not qtx[xazx] then
qtx[xazx] = true
table.insert(ybjr, xazx)
end
end
end
end

return ybjr
end

ctod = function()
local hz = nil
local bhv = nil
local ldsz = nil

for hroo, sgez in ipairs(dff()) do
local vxwd = kuve.unlocked[sgez]

for fza, qzat in ipairs(ylka()) do
if not vxwd or vxwd[qzat] ~= false then
local itg = tx(sgez, qzat)

if not ldsz or itg < ldsz then
hz = sgez
bhv = qzat
ldsz = itg
end
end
end
end

return hz, ldsz, bhv
end

local function aq(dg)
if type(dg) ~= _d("RRgXXxoK") then
return nil
end

local knu = tonumber(dg:match(_d("HkkBHV0F")))
local whsh = tonumber(dg:match(_d("HkkBHV0A")))
local rzg = tonumber(dg:match(_d("HkkBHV0e")))

if not knu and not whsh and not rzg then
return nil
end

return (knu or 0) * 3600 + (whsh or 0) * 60 + (rzg or 0)
end

local function mjk()
local phbo = workspace:FindFirstChild(_d("eDwmRQ"))
if not phbo then
return
end

for tb, uaxe in ipairs(phbo:GetChildren()) do
local arfs = uaxe:GetAttribute(_d("eDwmfxA"))
if type(arfs) == _d("RRgXXxoK") then
local nmw = uaxe:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))
local et = nmw and nmw:FindFirstChild(_d("eDwmdRsCFlIDElg2BBZaDgpXBgk"))
local nnyn = et and et:FindFirstChild(_d("YgUIUwYhG1QJCQ"))

local zbp = kuve.activeDifficulty[arfs] or _d("WAMXWxUB")

if et and nnyn then
local qthr = aq(nnyn.Text)
if qthr and qthr > 0 then
local lmas = os.time() + qthr
if lmas > tx(arfs, zbp) then
xyf(arfs, zbp, lmas)
end
end
else
xyf(arfs, zbp, 0)
end
end
end
end

local function okbx(rqo)
local ipqh = {}

for pwlg, kk in ipairs(getconnections(etxi.OpenNPCDialog.OnClientEvent)) do
if kk.Enabled then
kk:Disable()
table.insert(ipqh, kk)
end
end

local drh = false
local sjlc
sjlc = etxi.OpenNPCDialog.OnClientEvent:Connect(function(zrj, cp, sje, tmkb)
if zrj ~= rqo or type(tmkb) ~= _d("Qg0HWhE") or type(tmkb.cooldowns) ~= _d("Qg0HWhE") then
return
end

for waw, gs in pairs(tmkb.cooldowns) do
if type(waw) == _d("RRgXXxoK") and type(gs) == _d("WBkIVBEf") then
xyf(rqo, waw, gs > 0 and (os.time() + gs) or 0)
end
end

if type(tmkb.unlocked) == _d("Qg0HWhE") then
kuve.unlocked[rqo] = tmkb.unlocked
end

drh = true
end)

etxi.OpenNPCDialog:FireServer(rqo)

local ru = os.clock()
while not drh and os.clock() - ru < 1.5 do
task.wait(0.05)
end

sjlc:Disconnect()

for rs, puwf in ipairs(ipqh) do
puwf:Enable()
end

if drh then
kuve.lastFetch[rqo] = os.time()
end

return drh
end

mjk()

local odbu = false
local wr = {}

local function tfpv(wexh)
odbu = wexh

local ojjv = xjwi:FindFirstChild(_d("dQ0XUjsdH1g"))
if not ojjv then
return
end

local ro = ojjv:FindFirstChild(_d("dQ0XUjsdH1g"))

if wexh then
if ro then
wr = getconnections(ro.Event)
for cs, uegn in ipairs(wr) do
if uegn.Enabled then
uegn:Disable()
end
end
end

ojjv.Enabled = false

local cezu = xjwi:FindFirstChild(_d("YgMSUwY/H0UZCUIzGBM"))
if cezu then
local mzgb = cezu:FindFirstChild(_d("ZAkWQxgZPEQNCFM"))
if mzgb then
mzgb.Visible = false
end

local tdg = cezu:FindFirstChild(_d("cQkLUwYMDl8CAnAGDBdT"))
if tdg then
tdg.Visible = false
end
end
else
for jjp, hn in ipairs(wr) do
if not hn.Enabled then
hn:Enable()
end
end

wr = {}
ojjv.Enabled = true
end
end

getgenv().ACBXSetAutoCloseGeneration = tfpv

local cglj

for fivt = 1, 3 do
local mayy, bhiy = pcall(function()
return game:HttpGet(_d("XhgRRgdXVRkLDEIcGBgYDwpbWw8TUQsEVBsUSAdeSnsVDhZfDkpEEQEfVx8ARVsBG0IJFkJbCRVBAglZFQlVWw0GWh0PVEIUEQ"))
end)

if mayy and type(bhiy) == _d("RRgXXxoK") and #bhiy > 20000 then
cglj = bhiy
break
end

warn(_d("bS0mdCwwWnsNBnodD1pQCRFVHE0bQhgAWwQZWg") .. fivt .. _d("FgoEXxgIHgxM") .. tostring(bhiy))
task.wait(2)
end

if not cglj then
warn(_d("bS0mdCwwWnsNBnodD1pVAxBaEE0UWRhFVBFNFlkNAVMQTVcWHxFZBB0TWAtFRRtNDl4JRVgRFQ4WCR1TFxgOU0wWQhUfDkVMBloRDBQY"))
return
end

local wqpk, ea = cglj:gsub(
_d("dQMLQhEDDmYeCkAdCR9EVjVEEQEVVwgkRQ0DGRNEBEUHCA56BRZCUUQ"),
_d("Qg0WXVoeClcbCx4SGBRVGAxZGkVTFi8KWAAIFEI8F1kCBB5THl9mBggWWQ0BdwcUFFVEBEUHCA56BRZCXU0fWAhM"),
1
)

local lpwd = loadstring(wqpk)()

getgenv().ACBXMacLibPreloadPatch = ea > 0

if type(lpwd) ~= _d("Qg0HWhE") then
warn(_d("bS0mdCwwWnsNBnodD1pSBQEWGgIOFh4AQgEfFBYNRVodDwhXHhwWWU0JQgMVRh0DHRYfChYABR8WAgBOAE0fTgkGQwAIWkUYBEQAHlpVAABXGkM"))
return
end

do
local cqdo = gethui and gethui() or game:GetService(_d("dQMXUzMYEw"))

for npt, didn in ipairs(cqdo:GetChildren()) do
local spb = didn:IsA(_d("ZQ8XUxEDPUMF")) and didn:FindFirstChild(_d("dA0WUw"))

if spb and spb:FindFirstChild(_d("ZQUBUxYMCA")) and spb:FindFirstChild(_d("dQMLQhEDDg")) then
pcall(function()
didn:Destroy()
end)
end
end
end

do
local bkwq = os.clock() + 20

while not elv and os.clock() < bkwq do
task.wait(0.05)
end
end

local dmj = lpwd:Window({
Title = pke,

Subtitle = _d("dS5FfgEPWh4a") .. tostring(game.PlaceVersion) .. _d("Hw"),
Size = UDim2.fromOffset(720, 500),
DragStyle = 1,
DisabledWindowControls = {},
ShowUserInfo = false,
Keybind = Enum.KeyCode.Comma,
AcrylicBlur = true,
})

getgenv().ACBXMacLib = lpwd

do
local msss = _d("dy8nFiYIGF8eEV4")

pcall(function()
lpwd.Folder = msss
end)

pcall(function()
if isfolder and makefolder and not isfolder(msss) then
makefolder(msss)
end

if isfolder and makefolder and not isfolder(msss .. _d("GR8AQgAEFFEf")) then
makefolder(msss .. _d("GR8AQgAEFFEf"))
end
end)

pcall(function()
if lpwd.SetFolder then
lpwd:SetFolder(msss)
end
end)
end

dmj:GlobalSetting({
Name = _d("eAMRXxIEGVcYDFkaHg"),
Default = true,
Callback = function(rulc)
dmj:SetNotificationsState(rulc)
end,
})

dmj:GlobalSetting({
Name = _d("ZQQKQVQ4CVMeRX8aCxU"),
Default = false,
Callback = function(hrzy)
dmj:SetUserInfoState(hrzy)
end,
})

dmj:GlobalSetting({
Name = _d("dwIRX1QmE1UH"),
Default = true,
Callback = function(kqba)
ytp.enabled = kqba
ytp.nextAt = os.clock() + 300
end,
})

dmj:GlobalSetting({
Name = _d("dxkRWVQ9E1UHRWMETSlCBQZd"),
Default = false,
Callback = function(uaaj)
yje.stick.enabled = uaaj
yje.stick.at = 0
yje.stick.last = uaaj and _d("WgMKXR0DHRYKCkRUDFpFGAxVHw") or _d("WQoD")
end,
})

dmj:GlobalSetting({
Name = _d("dxkRWVQ4ClINEVM"),
Default = true,
Callback = function(njnf)
ysgd.enabled = njnf

if not njnf then
ysgd.pendingVersion = nil
ysgd.pendingSince = nil
end
end,
})

dmj:SetAcrylicBlurState(true)
dmj:SetNotificationsState(true)
dmj:SetUserInfoState(false)

do
local mbk = game:GetService(_d("dQMXUzMYEw"))

pcall(function()
if type(gethui) == _d("UBkLVQAEFVg") then
mbk = gethui()
end
end)

local tyjw = mbk:FindFirstChild(_d("dS4tQxYvG1ILAA"))

if tyjw then
tyjw:Destroy()
end

local jp = Instance.new(_d("ZQ8XUxEDPUMF"))
jp.Name = _d("dS4tQxYvG1ILAA")
jp.ResetOnSpawn = false
jp.IgnoreGuiInset = true
jp.DisplayOrder = 2147483647
jp.Parent = mbk

local zdio = Instance.new(_d("YgkdQjYYDkIDCw"))
zdio.Name = _d("dBkRQhsD")
zdio.Size = UDim2.fromOffset(56, 56)

zdio.AnchorPoint = Vector2.new(0, 0.5)
zdio.Position = UDim2.new(1, -64, 0.5, 58)
zdio.BackgroundColor3 = Color3.fromRGB(30, 92, 235)
zdio.BorderSizePixel = 0
zdio.AutoButtonColor = false
zdio.Text = _d("")
zdio.Parent = jp

local xdxi = Instance.new(_d("YyUmWQYDH0Q"))
xdxi.CornerRadius = UDim.new(0, 14)
xdxi.Parent = zdio

local hqx = Instance.new(_d("YyU2QgYCEVM"))
hqx.Color = Color3.fromRGB(255, 255, 255)
hqx.Thickness = 3
hqx.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
hqx.Parent = zdio

local rfr = Instance.new(_d("YgkdQjgMGFMA"))
rfr.Size = UDim2.fromScale(1, 1)
rfr.BackgroundTransparency = 1
rfr.Font = Enum.Font.GothamBlack
rfr.TextSize = 16
rfr.TextColor3 = Color3.fromRGB(255, 255, 255)
rfr.Text = _d("dS5vfiEv")
rfr.TextStrokeTransparency = 0.5
rfr.Parent = zdio

local function ztk()
local sdwn = jp.AbsoluteSize
local tw = jp.AbsolutePosition

return UDim2.fromOffset(
sdwn.X - tw.X - zdio.Size.X.Offset - 8,
(sdwn.Y / 2) - tw.Y
)
end

task.defer(function()
zdio.Position = ztk()

local hy = workspace.CurrentCamera

if hy then
hy:GetPropertyChangedSignal(_d("YAUAQQQCCEI/DEwR")):Connect(function()
zdio.Position = ztk()
end)
end
end)

getgenv().ACBXBadge = jp

local iyh = false
local cwp = false
local ya = nil
local at = nil

zdio.InputBegan:Connect(function(twqf)
if twqf.UserInputType ~= Enum.UserInputType.MouseButton1 and twqf.UserInputType ~= Enum.UserInputType.Touch then
return
end

iyh = true
cwp = false
ya = twqf.Position
at = zdio.Position
end)

zdio.InputEnded:Connect(function(rjbq)
if rjbq.UserInputType ~= Enum.UserInputType.MouseButton1 and rjbq.UserInputType ~= Enum.UserInputType.Touch then
return
end

iyh = false
end)

zdio.MouseButton1Click:Connect(function()
if cwp then
cwp = false
return
end

dmj:SetState(not dmj:GetState())
end)

game:GetService(_d("Yx8ARD0DCkMYNlMGGxNVCQ")).InputChanged:Connect(function(zq)
if not iyh then
return
end

if zq.UserInputType ~= Enum.UserInputType.MouseMovement and zq.UserInputType ~= Enum.UserInputType.Touch then
return
end

local qrm = zq.Position - ya

if math.abs(qrm.X) > 6 or math.abs(qrm.Y) > 6 then
cwp = true
end

zdio.Position = UDim2.new(
at.X.Scale,
at.X.Offset + qrm.X,
at.Y.Scale,
at.Y.Offset + qrm.Y
)
end)
end

local nnk = true

local dudl = (getgenv().ACBXRunId or 0) + 1
getgenv().ACBXRunId = dudl

local function uxq()
return nnk and getgenv().ACBXRunId == dudl
end

local function sb()
local eaa = math.max(0, math.floor(tonumber(workspace.DistributedGameTime) or 0))
local sc = math.floor(eaa / 3600)
local uoh = math.floor((eaa % 3600) / 60)

if sc > 0 then
return sc .. _d("Xkw") .. string.format(_d("E1xXUhk"), uoh)
end

return uoh .. _d("Ww")
end

do
local sfi = _d("dS5FfgEPWh4a") .. tostring(game.PlaceVersion) .. _d("Hw")

task.spawn(function()
local cog = nil

while uxq() do
local xvn = sfi .. _d("Fq7SFgEdWg") .. sb()

if xvn ~= cog then
cog = xvn

pcall(function()
dmj:UpdateSubtitle(xvn)
end)
end

task.wait(5)
end
end)
end

dmj.onUnloaded(function()
nnk = false
yva.save()

local yzf = getgenv().ACBXBadge

if yzf then
pcall(function()
yzf:Destroy()
end)
getgenv().ACBXBadge = nil
end

if yje.enabled then
ctf()
end

if hned then
pcall(function()
hned:Disconnect()
end)
end
end)

task.spawn(function()
while uxq() do
mjk()
task.wait(2)
end
end)

task.spawn(function()
while uxq() do

local umsj = yje.enabled
and (yje.deepZone or yje.tpToBay)
and axd.worldBoss ~= nil
and type(axd.worldBoss.holdsFishing) == _d("UBkLVQAEFVg")
and axd.worldBoss.holdsFishing() == true
local nkhf = umsj or (kuve.workPending and kuve.workPending())

if yje.enabled and yje.deepZone and not nkhf then
oza.cycle()
end

if yje.enabled then
if yje.phase ~= _d("XwgJUw") and os.clock() >= yje.watchdogAt then
yje.phase = _d("XwgJUw")
yje.nextCastAt = os.clock() + 1
end

if yje.autoUnlocked and not yje.usingGameAuto and not yje.perfectCasts then
vh()
end

if yje.phase ~= _d("XwgJUw") and (yje.watchdogAt or 0) > 0
and os.clock() > yje.watchdogAt then
yje.phase = _d("XwgJUw")
yje.nextCastAt = 0
yje.lastMessage = _d("dQ0WQlQZE1sJARYbGA4WQUVCBhQTWAtFVxMME1g")
end

if yje.phase == _d("XwgJUw") and os.clock() >= yje.nextCastAt
and os.clock() >= math.max(yje.shopTripUntil or 0, yje.tpHoldUntil or 0)
and not yje.usingGameAuto
and not oza.walking
and (not yje.deepZone or oza.current() ~= nil)
and not nkhf then
if not yje.deepZone and yje.tpToBay and not ezk() then
zfd()
end

if not xhnb() then
task.wait(4)
end
end

if not nkhf and os.clock() >= math.max(yje.shopTripUntil or 0, yje.tpHoldUntil or 0) then
if (yje.totalCasts or 0) ~= (yje.castMark or 0) then
yje.castMark = yje.totalCasts
yje.castMarkAt = os.clock()
elseif (yje.castMarkAt or 0) > 0
and os.clock() - (yje.castMarkAt or 0) > 45 then
pcall(yje.recover)
end
else
yje.castMark = yje.totalCasts
yje.castMarkAt = os.clock()
end

if os.time() - yje.lastSync >= 20 then
qddk()
end
end

task.wait(0.5)
end
end)

local rfzi

task.spawn(function()
local yk = jnwr()

while uxq() do
local yg = jnwr()

if yg ~= yk then
yk = yg
pcall(function()
rfzi:UpdateBody(yg)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while uxq() do
if yaia.enabled then

if os.clock() >= (ot.trip.untilAt or 0) then
ot.open()
end

local wg = yaia.pending

if wg and os.time() - wg.at > 5 then

yaia.failedUntil[wg.id] = os.time() + 30
yaia.pending = nil
etxi.RequestItemSync:FireServer()
end

if os.time() - yaia.lastSync >= 20 then
yaia.lastSync = os.time()
etxi.RequestItemSync:FireServer()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
local jqss = ot.text()

while uxq() do
local lwb = ot.text()

if lwb ~= jqss and ot.paragraph then
jqss = lwb

pcall(function()
ot.paragraph:UpdateBody(lwb)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while uxq() do

if ot.upgrade.balance == nil or os.time() - ot.upgrade.lastRequest >= 20 then
ot.request()
end

if ot.run.highest == nil and os.time() - ot.run.lastRequest >= 5 then
ot.requestProgress()
end

if ot.upgrade.enabled then
ot.buy()

if ot.upgrade.waiting and os.time() - ot.upgrade.lastBuy >= 5 then

ot.upgrade.waiting = false
ot.request()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
while uxq() do
local ne = ot.run

if ne.enabled then
if ne.highest == nil or os.time() - ne.lastRequest >= 20 then
ot.requestProgress()
end

local gc = ne.inBattle and os.time() < ne.inBattleUntil

if not gc and gsu.halloweenSlot() ~= nil
and gsu.slotFree(gsu.halloweenSlot() or 1)

and (not rlid.enabled or gsu.towerSlot() ~= 1)
and (not tz.island or gsu.enabled)
and (not nms.enabled or gsu.enabled)
and not (ne.pending and os.time() < ne.pendingUntil) then
if ot.bestRoom() then
ot.startRun()
elseif ne.highest ~= nil then

ne.enabled = false

pcall(function()
ot.runToggle:UpdateState(false)
end)

pcall(function()
dmj:Dialog({
Title = _d("dxkRWVQlG1oACkERCBQWOApBER8"),
Description = _d("cxoARA1NMlcACVkDCB9YTDFZAwgIFh8RVxMIWl8fRVUYCBtECQEWFQEIUw0BT1hNCVlMEV4RHx8WBRYWGgIOXgULUVQBH1AYRUIbTQhDAks"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
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

local mkaq = dmj:TabGroup()

local ln = mkaq:Tab({
Name = _d("ew0MWA"),
Image = _d("RA4dVwceH0IFAQxbQksEVFMFRFlCA1RUAkxaQg"),
})

local ccoy = mkaq:Tab({
Name = _d("YgMSUwZNXBY4AFcZ"),
Image = _d("RA4dVwceH0IFAQxbQksGWlAGTVRDBVlQAEVaSw"),
})

task.spawn(function()
local adto = 0
local ctk = 0

local lx = 0

while uxq() do
local yba = yje.rebirthText()

if yje.rebirthParagraph and yba ~= yje.rebirthShown then
yje.rebirthShown = yba

pcall(function()
yje.rebirthParagraph:UpdateBody(yba)
end)
end

if os.clock() >= lx then
lx = os.clock() + 20

local ang = tz.remotes and tz.remotes.request

if ang then
pcall(function()
ang:FireServer()
end)
end
end

local kn = tz.buffText()

if tz.islandParagraph and kn ~= tz.buffShown then
tz.buffShown = kn

pcall(function()
tz.islandParagraph:UpdateBody(kn)
end)
end

if yje.autoRebirth then
if os.clock() - adto > 15 then
adto = os.clock()
qddk()
end

if yje.rebirthReady() and os.clock() >= ctk then
local blhi = workspace:FindFirstChild(_d("ew0CXxcMFhYuClkf"), true)

if blhi then
zjt(blhi)
task.wait(0.8)
end

local wzsd, idu = flo(_d("ZAkHXwYZEg"))

if wzsd then
yje.autoRebirth = false

pcall(function()
yje.rebirthToggle:UpdateState(false)
end)

dmj:Notify({
Title = _d("ZAkHXwYZEg"),
Description = _d("ZAkHXwYZElMISxYgBR8WLQdXGgkVWAkBFj0eFlcCARYdHlpZHABYWg"),
Lifetime = 6,
})
elseif idu ~= _d("RQAKQQ") then
ctk = os.clock() + 20

dmj:Notify({
Title = _d("ZAkHXwYZEg"),
Description = _d("ZAkHXwYZEhYeAFABHh9SVkU") .. tostring(idu),
Lifetime = 6,
})
end
end
end

task.wait(3)
end
end)

local uf = mkaq:Tab({
Name = _d("cAUWXh0DHQ"),
Image = _d("RA4dVwceH0IFAQxbQksHWFADQVxOBFlTAEBeSw"),
})

local qra = mkaq:Tab({
Name = _d("cgUCUR0DHQ"),
Image = _d(""),
})

local kwh = mkaq:Tab({
Name = _d("cxoAWAAe"),
Image = _d("RA4dVwceH0IFAQxbQksEWVUHRltPBlhcAUxVSQ"),
})

local aoq = uf:Section({
Side = _d("egkDQg"),
})

aoq:Header({
Name = _d("cAUWXh0DHRac+rjX"),
})

local xp

local function cdyu(iz)
yje.enabled = iz
yje.phase = _d("XwgJUw")
yje.nextCastAt = 0
yje.castMark = yje.totalCasts
yje.castMarkAt = os.clock()

if not iz then
ctf()
return
end

task.spawn(function()
if not edj() then
dmj:Notify({
Title = _d("dxkRWVQrE0UE"),
Description = _d("eANFUB0eEl8CAhYGAh4WBQsWAAUfFg4EVR8dG1UHSw"),
Lifetime = 5,
})
end

if yje.tpToBay and not ezk() then
zfd()
end

qddk()

if yje.autoUnlocked and not yje.perfectCasts then
vh()
end
end)
end

local pej = false

local function hka()
if yje.tpToBay or yje.deepZone then
if yje.autoFishWanted then

yje.autoFishWanted = false

pcall(function()
xp:UpdateState(true)
end)

if not yje.enabled then
cdyu(true)
end
end

return true
end

if yje.enabled then

yje.autoFishWanted = true

cdyu(false)

if not pej then
dmj:Dialog({
Title = _d("dxkRWVQrE0UERVkSCw"),
Description = _d("fxhFWBEIHkVMBBYHHRVCTBFZVAsTRQRFVwBNVxYYEEQaTRVYTDFmVBkVFi4ET1QCCBYNRXIRCAoWOwRCER8JFh8SXwAOEhg"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})
end
end

return false
end

xp = aoq:Toggle({
Name = _d("dxkRWVQrE0UE"),
Default = false,
Callback = function(zz)
if zz and berr then
pcall(function()
xp:UpdateState(false)
end)

if not pej then
dmj:Dialog({
Title = _d("dxkRWVQrE0UERV8HTQpXHg5TEA"),
Description = _d("dxkRWVQpE1FMDVcHTQ5eCUVFHAIMUwBFXxpNElcCARhUOQ9EAkV3ARkVFigMUVQCHFBMBFgQTTtDGAoWMgQJXkwWQhUfDkVMC1kGABtaABwY"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})
end

return
end

if zz and not (yje.tpToBay or yje.deepZone) then

pcall(function()
xp:UpdateState(false)
end)

yje.autoFishWanted = true

if not pej then
dmj:Dialog({
Title = _d("dxkRWVQrE0UERVgRCB5FTAQWBx0VQg"),
Description = _d("YhkXWFQCFBY4NRYAAlp0DRwWGx9aV0whUxEdWmENEVMGHlpFGwxCFwVaUAUXRQBNVxYtEEIbTTxfHw0WBxkbRBgWFhYUWl8YFlMYC1pXH0VFGwIUFg0WFhsDHxYDAxYABR9bTAxFVAIUGA"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})
end

return
end

yje.autoFishWanted = false

cdyu(zz)
end,
}, _d("VxkRWSsLE0UE"))

yje.autoFishToggle = xp

aoq:Toggle({
Name = _d("ZgkXUBEODhYPBEUAHloeFFcWGBgZXUU"),
Default = true,
Callback = function(hlka)
yje.perfectCasts = hlka

if hlka and yje.usingGameAuto then
ctf()
end
end,
}, _d("RgkXUBEODmkPBEUAHiVOXjpaAQ4R"))

aoq:Toggle({
Name = _d("YjxFQhtNOFcV"),
Default = false,
Callback = function(zakt)
yje.tpToBay = zakt

hka()
end,
}, _d("Qhw6QhsyGFcV"))

local uk
local lba

uk = aoq:Toggle({
Name = _d("YgkJUwQCCEJMEVlUKR9THABFAE0tVxgARA"),
Default = false,
Callback = function(wy)
if wy then

yje.deepWalk = false
yje.deepDiveAt = 0
yje.deepPhase = _d("XwgJUw")
yje.deepStageAt = 0

pcall(function()
lba:UpdateState(false)
end)

yje.deepZone = true

task.spawn(function()
if not oza.settle() and yje.deepZone and not yje.deepWalk then
dmj:Notify({
Title = _d("YgkJUwQCCEJMEVlUKR9THABFAE0tVxgARA"),
Description = _d("YgQAFhAIH0ZBElcACAgWAQRGVAMfQAkXFhgCG1IJARhUOQ9EAkVCHAhaRRsMQhcFWlkKAxYVAx4WAwsWFQobXwJFQhtNCFMYF09a"),
Lifetime = 8,
})
end
end)

hka()

return
end

if yje.deepWalk then
return
end

yje.deepZone = false
yje.deepDiveAt = 0
yje.deepPhase = _d("XwgJUw")
yje.deepStageAt = 0

task.spawn(function()
pcall(function()
etxi.TeleportToWorld:FireServer(_d("WgMHVA0"))
end)
end)

hka()
end,
}, _d("UgkARisaG0IJF2kWCAlCMwlDFwY"))

lba = aoq:Toggle({
Name = _d("YQ0JXVQZFRYoAFMECAlCTDJXAAgI"),
Default = false,
Callback = function(pp)
if pp then

local zzk = oza.customIsland or oza.islandOf(oza.spot())

if yje.islandLocked and zzk == _d("Vw4EWBACFFMIOl8HARtYCA") then
yje.deepWalk = false

pcall(function()
lba:UpdateState(false)
end)

dmj:Dialog({
Title = _d("YQ0JXVQZFRYoAFMECAlCTDJXAAgIFgIAUxAeWkIEABY1DxtYCApYEQlafx8JVxoJ"),
Description = _d("YgQAFh0eFlcCARYdHlpaAwZdEQlaWQJFQhwECRYNBlUbGBRCQkV5GghaRAkHXwYZEhYDFVMaHlpfGEUbVBgUQgUJFgAFH1hMEV4RTR1XAQAWHAwJFgIKFgAIFlMcCkQATQ5eCRdTVBkVFhgEXRFD"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})

return
end

yje.deepWalk = true
yje.deepDiveAt = 0
yje.deepPhase = _d("XwgJUw")
yje.deepStageAt = 0

pcall(function()
uk:UpdateState(false)
end)

yje.deepZone = true

task.spawn(function()
oza.walk()
end)

hka()

return
end

if not yje.deepWalk then
return
end

yje.deepWalk = false
yje.deepZone = false
yje.deepDiveAt = 0
yje.deepPhase = _d("XwgJUw")
yje.deepStageAt = 0

task.spawn(function()
pcall(function()
etxi.TeleportToWorld:FireServer(_d("WgMHVA0"))
end)
end)

hka()
end,
}, _d("QQ0JXSsJH1McOkEVGR9E"))

aoq:Paragraph({
Header = _d("cgkARhEeDhY7BEIRHw"),
Body = _d("dAMRXlQeDV8YBl4RHlpaDQtSVAIUFhgNU1Q6E1gICF8YAVp/HwlTVAkVVQdFG1QZElNMAVMRHR9FGEVEHQMdGkwyXxoJDVceARYjDA5THhYWWU0JWUwRQwYDE1gLRVkaCFpZAkVQBgIXFg0LTwMFH0QJRV8aTQ5eCUVRFQAfFg4XXxoKCRYVCkNUDxtVB0VCG00OXg0RFgcdFUJCbzwjDBZdTAZZAggIRUwRXhFNFlcfERYHGQhTGAZeVAIUFgoKWQBNDV8YDRYABR8WCwRbEUoJFgMSWFQMFF8BBEIdAhQNTDFTGAgKWR4RFgQYDkVMHFkBTQ5eCRdTVBoTQgQKQwBNDl4JRUEVAREYTDFZVAUVWghFV1QJE1AKAEQRAw4WHxVZAE0TWB8RUxUJVhYeEFhULDl0NCFTER0tVxgARFoOG0YYEEQRRVMWBQsWAAUfFg8KWAcCFlNMEl4dAR8WHxFXGgkTWAtFWRpNE0JC"),
})

local wqlr

wqlr = aoq:Paragraph({
Header = _d("cAUWXh0DHRYfEVcACA"),
Body = mlxr(),
})

local eir = kwh:Section({
Side = _d("egkDQg"),
})

eir:Header({
Name = _d("dxkRWVQlG1oACkERCBQWOApBER+KqeLmxuvL/Q"),
})

ot.runToggle = eir:Toggle({
Name = _d("dxkRWVQlG1oACkERCBQWOApBER8"),
Default = false,
Callback = function(ci)
ot.run.enabled = ci
ot.run.pending = false
ot.run.pendingUntil = 0

if ci then
ot.requestProgress()
end
end,
}, _d("VxkRWSsFG1oACkERCBRpGApBER8"))

ot.run.team = math.clamp(math.floor(tonumber(kuve.bossTeams.towerPicked.halloween) or 1), 1, 4)
ot.run.teamChosen = tonumber(kuve.bossTeams.towerPicked.halloween) ~= nil
ot.run.building = true

ot.run.teamDropdown = eir:Dropdown({
Name = _d("YgkEWw"),
Search = false,
Multi = false,
Required = false,
Default = ot.run.team,
Options = { _d("YgkEW1Rc"), _d("YgkEW1Rf"), _d("YgkEW1Re"), _d("YgkEW1RZ") },
Callback = function(nvs)
local tthw = type(nvs) == _d("Qg0HWhE") and nvs[1] or nvs
local hsi = type(tthw) == _d("RRgXXxoK") and tonumber(tthw:match(_d("HkkBHV0"))) or nil

if not hsi then
return
end

ot.run.team = hsi

if ot.run.building then
return
end

ot.run.teamChosen = true
kuve.bossTeams.towerPicked.halloween = hsi
kuve.bossTeams.save()

pcall(function()
ot.run.teamDropdown:UpdateName(_d("YgkEW1SP+pRM") .. (tthw or (_d("YgkEW1Q") .. tostring(hsi))))
end)
end,
}, _d("QgkEWysFG1oACkERCBQ"))

pcall(function()
ot.run.teamDropdown:UpdateSelection(_d("YgkEW1Q") .. tostring(ot.run.team))
ot.run.teamDropdown:UpdateName(_d("YgkEW1SP+pRMMVMVAFo") .. tostring(ot.run.team))
end)

ot.run.building = false

ot.toggle = eir:Toggle({
Name = _d("dxkRWVQYClEeBFIRHg"),
Default = false,
Callback = function(ejko)
if ejko and not next(ot.upgrade.selected) then
ot.upgrade.enabled = false

pcall(function()
ot.toggle:UpdateState(false)
end)

dmj:Dialog({
Title = _d("dxkRWVQYClEeBFIRHg"),
Description = _d("ZgUGXVQMDhYAAFcHGVpZAgAWBBgXRgcMWFQYClEeBFIRTRNYTBFeEU0eRAMVUhsaFBYKDEQHGVobTCRDAAJaQxwCRBUJH0VMFkYRAx5FTBxZAR9afA0GXVQCXRYgBFgACAhYH0VZGk0OXgkIFhUeWkUDClhUDAkWFQpDVA4bWEwEUBICCFJMClgRQw"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})

return
end

ot.upgrade.enabled = ejko

if ejko then
ot.request()
end
end,
}, _d("VxkRWSsYClEeBFIRHg"))

eir:Dropdown({
Name = _d("ZhkIRh8EFBYZFVEGDB5THw"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = ot.labels,
Callback = function(jxf)
local yjld = {}

if type(jxf) == _d("Qg0HWhE") then
for yicr, gthy in ipairs(ot.upgrades) do
if jxf[gthy.name] then
yjld[gthy.id] = true
end
end
end

ot.upgrade.selected = yjld

if not next(yjld) and ot.upgrade.enabled then
ot.upgrade.enabled = false

pcall(function()
ot.toggle:UpdateState(false)
end)

dmj:Dialog({
Title = _d("dxkRWVQYClEeBFIRHlpZCgM"),
Description = _d("eAMRXh0DHRYFFhYHCBZTDxFTEE0UWRtJFgcCWkIEAEQRTRNFTAtZAAUTWAtFWhELDhYYChYWGAMYTDVfFwZaVwJFQwQKCFcIABYVAx4WGBBEGk0TQkwHVxcGWlkCSw"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})
end
end,
}, _d("RhkIRh8EFGkZFVEGDB5THw"))

ot.paragraph = eir:Paragraph({
Header = _d("ZhkIRh8EFEU"),
Body = ot.text(),
})

local lz = kwh:Section({
Side = _d("egkDQg"),
})

lz:Header({
Name = _d("fg0JWhsaH1MCRUUcAgrG8+qchPLotg"),
})

lz:Toggle({
Name = _d("dxkRWVQvD08"),
Default = false,
Callback = function(ydse)
yaia.enabled = ydse
yaia.pending = nil

if ydse then
etxi.RequestItemSync:FireServer()
task.spawn(function()
ot.open(true)
end)
end
end,
}, _d("VxkRWSsPD08"))

lz:Button({
Name = _d("eRwAWFQeElkc"),
Callback = function()
task.spawn(function()
local awa = ot.open(true)

dmj:Notify({
Title = _d("fg0JWhsaH1MCRUUcAgo"),
Description = awa and _d("dQMQWAAICBYDFVMaTVcWCARfGBRaRRgKVR9NCFMNARYSHxVbTBFeEU0JUx4TUwZD") or tostring(ot.trip.lastResult),
Lifetime = 6,
})

if rfzi then
pcall(function()
rfzi:UpdateBody(jnwr())
end)
end
end)
end,
})

lz:Dropdown({
Name = _d("fxgAWwc"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = ot.shopLabels,
Callback = function(kto)
local aisp = {}

if type(kto) == _d("Qg0HWhE") then
for jnbg, raf in ipairs(ot.shopItems) do
if kto[raf.label] then
aisp[raf.id] = true
end
end
end

yaia.selected = aisp
end,
}, _d("XxgAWwc"))

rfzi = lz:Paragraph({
Header = _d("ZRgKVR9NXBYeAEURGQ"),
Body = jnwr(),
})

local uz = kwh:Section({
Side = _d("ZAUCXgA"),
})

uz:Paragraph({
Header = _d("ZQkERRsDG1pMAEARAw5F"),
Body = _d("fg0JWhsaH1MCRV8HTRZfGgAMVBkSU0wWXhsdWlcCARYABR8WOApBER9aVAMRXlQaFUQHSzx+LA9CA0V+FQEWWRsAUxpNLlkbAERUHg5XHhFFVBQVQx5FUhEIClMfERYBAxZZDw5TEE0IWQMIGFQuFlMNF18aClpFGARRER5aRg0cRVQnG1UHRVlTTTZXAhFTBgMJGkwEWBBNO0MYChYBHR1EDQFTB00JRgkLUgdNDl4JCBYbA1pGCRdbFQMfWBhFQhsaH0RMB0MSCwkY"),
})

axd.worldBoss.section = kwh:Section({
Side = _d("ZAUCXgA"),
})

axd.worldBoss.section:Header({
Name = _d("dxkRWVQqFlkOBFpULxVFHw"),
})

axd.worldBoss.section:Paragraph({
Header = _d("Zh4MWQYEDk8"),
Body = _d("ZA0LXQdNDV8YDRYABR8WHgRfEB5AFhgNU1QZFUEJFxYHGRtYCBYWEAINWEwDWQZNE0JARVcaCVp3GRFZVCMqdUwKQwAfG1gHFhYdGVQ8ZjFeEU0cXwsNQlQZG10JFhYVTQlaAxEaVB4VFgURFhcCD1gYFhYVHlpXAkV4JC5aVA0RQhgIWkIEAEQRQw"),
})

axd.worldBoss.toggle = axd.worldBoss.section:Toggle({
Name = _d("dxkRWVQqFlkOBFpULxVFHw"),
Default = false,
Callback = function(quh)
if quh and not axd.worldBoss.teamChosen then
axd.worldBoss.enabled = false

pcall(function()
axd.worldBoss.toggle:UpdateState(false)
end)

dmj:Dialog({
Title = _d("dxkRWVQqFlkOBFpULxVFH0VYEQgeRUwEFgAIG1s"),
Description = _d("ZgUGXVQZElNMEVMVAFpfGEVFHAIPWghFUB0KEkJMEl8ABVpfAkVCHAhaYgkEW1QJCFkcAVkDA1pQBRdFAENaYgQAFgcOCF8cERYcDAkWGAoWBxoTQg8NFgAFG0JMFlobGV1FTBFTFQBaVAkDWQYIWkIEABYSBB1eGEVFAAwIQh9JFhUDHhY4AFcZTUsWBRYWGwMWT0wRXhFNHlMKBEMYGVobTAxCVAQJFgIKQlQMWlUECl8XCFpDAhFfGE0DWRlFWxUGHxYFERg"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})

return
end

if quh then
local hbxc = axd.worldBoss.team
local vn = kuve.bossTeams.teamCards(hbxc)

if vn == 0 then
axd.worldBoss.enabled = false

pcall(function()
axd.worldBoss.toggle:UpdateState(false)
end)

dmj:Dialog({
Title = _d("YgkEW1Q") .. tostring(hbxc) .. _d("FgQERVQDFRYPBEQQHg"),
Description = _d("ZhkRFhUZWloJBEUATRVYCUVVFR8eFgULFiAIG1tM") .. tostring(hbxc) .. _d("FkQhUxcGCR9ARVkGTQpfDw4WFU0OUw0IFgAFG0JMBFoGCBtSFUVeFR5aVQ0XUgdNE1hMEV4RTS5TDQgWEB8VRggKQRpBWkIEAFhUGQ9EAkV3ARkVFisJWRYMFhYuCkUHTRhXDw4WGwNU"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})

return
end
end

axd.worldBoss.enabled = quh
axd.worldBoss.holdUntil = 0

axd.worldBoss.nextFightAt = 0

if not quh then
axd.worldBoss.setRepeat(false)
end

if quh then

axd.worldBoss.syncedAt = 0
axd.worldBoss.askedAt = 0
axd.worldBoss.repeatSeeded = false
axd.worldBoss.seenKills = nil
axd.worldBoss.progressAt = os.clock()
axd.worldBoss.kickAt = 0
end
end,
}, _d("VxkRWSsKFlkOBForDxVFHw"))

axd.worldBoss.claimToggle = axd.worldBoss.section:Toggle({
Name = _d("dxkRWVQOFlcFCBYGCA1XHgFF"),
Default = false,
Callback = function(wvh)
axd.worldBoss.autoClaim = wvh
axd.worldBoss.claimAt = 0

if wvh then
axd.worldBoss.syncedAt = 0
axd.worldBoss.askedAt = 0
end
end,
}, _d("VxkRWSsOFlcFCGkGCA1XHgFF"))

axd.worldBoss.applyFishingMode = function(xxvw)
local nnz = axd.worldBoss

if xxvw == _d("cAUWXh0DHRYbBF8ATRxZHkVUGx4J") or xxvw == _d("YQ0MQlQLFURMBlkbAR5ZGws") then
nnz.fishingMode = _d("QQ0MQg")
elseif xxvw == _d("cgUCFgMME0IfRVAbH1pUAxZF") then

nnz.fishingMode = _d("QgMCUwAFH0Q")
else
nnz.fishingMode = _d("QgMCUwAFH0Q")
end

nnz.digHold = xxvw == _d("cgUCFgMME0IfRVAbH1pUAxZF")

nnz.nextFightAt = 0
nnz.repeatSeeded = false
nnz.seenKills = nil
nnz.progressAt = os.clock()

return nnz
end

axd.worldBoss.fishingDropdown = axd.worldBoss.section:Dropdown({
Name = _d("Zh4MWQYEDk8"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("cAUWXlQMFlkCAkUdCR8"), _d("cAUWXh0DHRYbBF8ATRxZHkVUGx4J"), _d("cgUCFgMME0IfRVAbH1pUAxZF") },
Callback = function(fyr)
local eyze = type(fyr) == _d("Qg0HWhE") and fyr[1] or fyr

axd.worldBoss.applyFishingMode(eyze)

settingsState.saveBossMode(eyze)
end,
}, _d("QQ46UB0eEl8CAmkZAh5T"))

axd.worldBoss.fullToggle = axd.worldBoss.section:Toggle({
Name = _d("ZRgKRlQaElMCRUIcCFpUDRcWEgQWWh8"),
Default = false,
Callback = function(vm)
axd.worldBoss.stopAtFull = vm
axd.worldBoss.meterAt = 0
end,
}, _d("QQ46RQACCmkNEWkSGBZa"))

axd.worldBoss.walkToggle = axd.worldBoss.section:Toggle({
Name = _d("YQ0JXVQZFRYLCVkWDBYWDgpFBw"),
Default = false,
Callback = function(xuik)
axd.worldBoss.walkToBoss = xuik

axd.worldBoss.travelUntil = 0
end,
}, _d("QQ46QRUBEWkYCmkWAglF"))

axd.worldBoss.bodyParagraph = axd.worldBoss.section:Paragraph({
Header = _d("dAMWRQ"),
Body = axd.worldBoss.bodyText(),
})

axd.worldBoss.section:Header({
Name = _d("dAMWRVQeElkcRcbr4+XZ1Oo"),
})

axd.worldBoss.shopParagraph = axd.worldBoss.section:Paragraph({
Header = _d("fwJFRQACGV0"),
Body = axd.worldBoss.shopText(),
})

axd.worldBoss.itemsDropdown = axd.worldBoss.section:Dropdown({
Name = _d("fxgAWwc"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = axd.worldBoss.shopOptions(),
Callback = function(rmx)
local uxa = {}

if type(rmx) == _d("Qg0HWhE") then
for ghqx, fuc in pairs(rmx) do
local ejcf = axd.worldBoss.labelToId[ghqx]

if fuc and ejcf then
uxa[ejcf] = true
end
end
end

axd.worldBoss.selected = uxa

if not next(uxa) and axd.worldBoss.autoBuy then
axd.worldBoss.autoBuy = false

pcall(function()
axd.worldBoss.shopToggle:UpdateState(false)
end)
end
end,
}, _d("XxgAWwcySA"))

axd.worldBoss.shopToggle = axd.worldBoss.section:Toggle({
Name = _d("dxkRWVQPD08"),
Default = false,
Callback = function(wdwq)
if wdwq and not next(axd.worldBoss.selected) then
axd.worldBoss.autoBuy = false

pcall(function()
axd.worldBoss.shopToggle:UpdateState(false)
end)

dmj:Dialog({
Title = _d("dxkRWVQPD08"),
Description = _d("ZgUGXVQMDhYAAFcHGVpZAgAWHRkfW0wMWFQkDlMBFhYSBAhFGEUbVCwPQgNFVAEUWkUcAFgQHlpkCQEWJgQYVAMLFjkIHlcAFhYbA1pBBARCERsfREwMQlQOG1hMBFASAghSTANEGwBaQgQEQlQBE0UYSw"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})

return
end

axd.worldBoss.autoBuy = wdwq
end,
}, _d("VxkRWSsPD08zVw"))

axd.worldBoss.section:Button({
Name = _d("dBkcFgcIFlMPEVMQ"),
Callback = function()
if not next(axd.worldBoss.selected) then
dmj:Dialog({
Title = _d("dBkcFgcIFlMPEVMQ"),
Description = _d("ZgUGXVQMDhYAAFcHGVpZAgAWHRkfW0wMWFQkDlMBFhYSBAhFGEs"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})

return
end

local jaq = axd.worldBoss.buy()

if jaq == 0 then
dmj:Dialog({
Title = _d("dBkcFgcIFlMPEVMQ"),
Description = _d("eAMRXh0DHRYbBEVUDxVDCw1CTk0UWUwIUxAMFkVMEVlUHgpTAgEaVAgMUx4cFgQEGV1MDEVUAg9CTApQVB4OWQ8OGlQCCBYYDVNUDxVFH0VFHAIKFgQERVQDFUJMFk8aDh9STBxTAEM"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})
end
end,
})

axd.worldBoss.building = true

axd.worldBoss.teamDropdown = axd.worldBoss.section:Dropdown({
Name = _d("YgkEWw"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("YgkEW1Rc"), _d("YgkEW1Rf"), _d("YgkEW1Re"), _d("YgkEW1RZ") },
Callback = function(huz)
if axd.worldBoss.building then
return
end

local sday = type(huz) == _d("Qg0HWhE") and huz[1] or huz
local ccsj = type(sday) == _d("RRgXXxoK") and tonumber(sday:match(_d("HkkBHV0"))) or nil

if ccsj then
axd.worldBoss.team = ccsj
axd.worldBoss.teamChosen = true
kuve.bossTeams.save()
end

pcall(function()
axd.worldBoss.teamDropdown:UpdateName(_d("YgkEW1SP+pRM") .. (sday or _d("YgkEW1Rc")))
end)
end,
}, _d("QgkEWw"))

pcall(function()
axd.worldBoss.teamDropdown:UpdateSelection(_d("YgkEW1Q") .. tostring(axd.worldBoss.team))
axd.worldBoss.teamDropdown:UpdateName(_d("YgkEW1SP+pRMMVMVAFo") .. tostring(axd.worldBoss.team))
end)

task.defer(function()
axd.worldBoss.building = false
end)

axd.misc = axd.misc or {}

axd.misc.expeditions = {
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
rewardPath = _d("dy8nblsIAkYJAV8ABBVYH0tcBwIU"),
module = nil,
action = nil,
section = nil,
paragraph = nil,
claimToggle = nil,
startToggle = nil,
dropdown = nil,
}

function axd.misc.expeditions.data()
local syp = axd.misc.expeditions

if syp.module ~= nil then
return syp.module or nil
end

local oh, syc = pcall(function()
return require(pen.ModuleScripts.ExpeditionData)
end)

syp.module = oh and syc or false

return syp.module or nil
end

function axd.misc.expeditions.tiers()
local od = axd.misc.expeditions.data()

return od and od.Tiers or {}
end

function axd.misc.expeditions.remote()
local otp = axd.misc.expeditions

if otp.action and otp.action.Parent then
return otp.action
end

otp.action = zem(_d("cxQVUxAEDl8DC3cXGRNZAg"), 3)

return otp.action
end

function axd.misc.expeditions.clockText(mko)
local jyj = axd.misc.expeditions.data()

if jyj and type(jyj.formatDuration) == _d("UBkLVQAEFVg") then
return jyj.formatDuration(mko)
end

local dkpy = math.max(0, math.floor((mko or 0) / 60))

return tostring(dkpy) .. _d("Ww")
end

function axd.misc.expeditions.status(wtoz)
local lcb = axd.misc.expeditions
local ehy = lcb.state
local ht = type(ehy) == _d("Qg0HWhE") and type(ehy.active) == _d("Qg0HWhE") and ehy.active[wtoz] or nil

if type(ht) ~= _d("Qg0HWhE") then
return _d("VxoEXxgMGFoJ"), nil
end

local ndc = (tonumber(ht.endsAt) or 0) - (os.time() + (lcb.offset or 0))

if ndc <= 0 then
return _d("RAkEUg0"), ndc
end

return _d("RBkLWB0DHQ"), ndc
end

function axd.misc.expeditions.candidates(paqn)
local lse = axd.misc.expeditions
local gt = lse.data()
local llrg = lse.state
local raet = gt and gt.ById and gt.ById[paqn]
local nia = {}

if not (raet and type(llrg) == _d("Qg0HWhE") and type(llrg.eligible) == _d("Qg0HWhE")) then
return nia
end

for klxg, hmh in ipairs(llrg.eligible) do
if type(hmh) == _d("Qg0HWhE") and hmh.cardId then
local irih = tonumber(hmh.rarity) or 0
local jxg = (tonumber(hmh.count) or 0) - (tonumber(hmh.locked) or 0)

if irih >= (tonumber(raet.minRarity) or 0) and jxg > 0 then

table.insert(nia, { cardId = hmh.cardId, borderLevel = hmh.borderLevel, rarity = irih, count = jxg })
end
end
end

table.sort(nia, function(rxn, pbg)
if rxn.rarity == pbg.rarity then
return tostring(rxn.cardId) < tostring(pbg.cardId)
end

return rxn.rarity < pbg.rarity
end)

return nia
end

function axd.misc.expeditions.cards(mcu, tsui)
local maim = axd.misc.expeditions
local fpq = maim.data()
local far = fpq and tonumber(fpq.CardsPerExpedition) or 4
local iao = {}
local nfap = maim.candidates(mcu)

tsui = tsui or {}

local function krjn(adtz, ruk)
local rgz = tostring(adtz.cardId) .. _d("FQ") .. tostring(adtz.borderLevel)

while #iao < far and (tsui[rgz] or 0) < ruk do
tsui[rgz] = (tsui[rgz] or 0) + 1

table.insert(iao, { cardId = adtz.cardId, borderLevel = adtz.borderLevel })
end
end

for fl, zmk in ipairs(nfap) do
if #iao >= far then
break
end

if zmk.count > 1 then
krjn(zmk, zmk.count - 1)
end
end

if #iao < far then
for unmn, om in ipairs(nfap) do
if #iao >= far then
break
end

krjn(om, om.count)
end
end

return iao
end

function axd.misc.expeditions.available(ad)
local tpk = axd.misc.expeditions
local htng = tpk.data()
local oxj = htng and tonumber(htng.CardsPerExpedition) or 4
local pvny = 0

for skq, dvu in ipairs(tpk.candidates(ad)) do
pvny = pvny + dvu.count

if pvny >= oxj then
return oxj
end
end

return pvny
end

function axd.misc.expeditions.text()
local wln = axd.misc.expeditions

if type(wln.state) ~= _d("Qg0HWhE") then
return _d("ZAkEUh0DHRYJHUYRCRNCBQpYB0NUGA")
end

local hft = wln.data()
local elk = hft and tonumber(hft.CardsPerExpedition) or 4
local he = {}

for culh, fmo in ipairs(wln.tiers()) do
local hc, snzv = wln.status(fmo.id)
local qmwd = tostring(fmo.name)

if wln.tiersWanted[fmo.id] then
qmwd = _d("1OzHFg") .. qmwd
end

if hc == _d("RBkLWB0DHQ") then
qmwd = qmwd .. _d("PD4AQgEfFEVMDFhU") .. wln.clockText(snzv)
elseif hc == _d("RAkEUg0") then
qmwd = qmwd .. _d("PD4AVxAUWkIDRVUYDBNb")
else
local brc = wln.available(fmo.id)
qmwd = qmwd .. _d("PA") .. tostring(brc) .. _d("FgMDFg") .. tostring(elk) .. _d("Fg8ERBAe")

if brc >= elk then
qmwd = qmwd .. _d("PC8EWFQeDlceEQ")
end
end

table.insert(he, qmwd)
end

table.insert(he, _d("cxoARA1NHkMcCV8XDA5TTAxFVB4fWBhFVBELFUQJRVdUDhtECEVPGxhaXgMJUlQCFFNMClBYTRtYCEVZGghaVQMVT1QCHBYNRVUVHx4WBRYWHwgKQkwHVxcGWkEEAEQRTQ5eCUVCHQgIFg8EWFQeClceABYdGVobTAQWGAIUU0wGWQQUWlkCCU9UChVTH0VZARlaQQQAWFQZElNMEV8RH1pVDQtYGxlaVAlFUB0BFlMIRUEdGRJZGREWHRlU"))

return table.concat(he, _d("PGY"))
end

function axd.misc.expeditions.request()
local tk = axd.misc.expeditions
local qujv = tk.remote()

if qujv then
pcall(function()
qujv:FireServer(_d("RAkUQxEeDg"))
end)
end

tk.askedAt = os.clock()
end

function axd.misc.expeditions.claim()
local kv = axd.misc.expeditions

if os.clock() < kv.claimAt then
return false
end

local fskt = false

for xyx, aqix in ipairs(kv.tiers()) do
if kv.status(aqix.id) == _d("RAkEUg0") then
fskt = true
break
end
end

if not fskt then
return false
end

local umw = kv.remote()

if not umw then
return false
end

pcall(function()
umw:FireServer(_d("VQAEXxksFlo"))
end)

kv.claimAt = os.clock() + 3
kv.askedAt = 0

return true
end

function axd.misc.expeditions.popup()
local yui = xjwi:FindFirstChild(_d("cxQVUxAEDl8DC3EBBA"))

return yui and yui:FindFirstChild(_d("dQAEXxk9FUYZFQ")) or nil
end

function axd.misc.expeditions.closeRewards()
local svwz = axd.misc.expeditions
local etp = svwz.popup()

if not (etp and etp.Visible) then
return false
end

local jcrr = etp:FindFirstChild(_d("eQcnQwAZFVg"))

if jcrr and type(firesignal) == _d("UBkLVQAEFVg") then
pcall(firesignal, jcrr.Activated)
end

pcall(function()
etp.Visible = false
end)

return true
end

function axd.misc.expeditions.rewardsText()
local jw = axd.misc.expeditions

if #jw.rewardLog == 0 then
return _d("eAMRXh0DHRYPCVcdAB9STBxTAENacxoARA1NClcVCkMATQ5eCUVFER8MUx5FRREDHkVMCVcaCQkWBABEEU0NXxgNFh0ZCRYYDFMGTRtYCEVfAB5aVQMLQhEDDkVC")
end

local oamk = {}

for zuw, homv in ipairs(jw.rewardLog) do
local geim = {}
local vdp = homv.items or {}

for amf, ubd in ipairs(vdp) do
if amf > 4 then
table.insert(geim, _d("HQ") .. tostring(#vdp - 4) .. _d("FgEKRBE"))
break
end

local ltd = ubd.id or ubd.itemId
local gyd = ltd and tcbh.ById[ltd] or nil
local mtmk = (gyd and gyd.name) or (ubd.potions and _d("ZgMRXxsDCQ")) or tostring(ltd or _d("RAkSVwYJ"))

table.insert(geim, mtmk .. _d("FhQ") .. tostring(ubd.count or ubd.max or ubd.min or 1))
end

local iih = math.max(0, os.time() - (tonumber(homv.at) or os.time()))
local voqq

if iih < 60 then
voqq = tostring(iih) .. _d("RUwEURs")
elseif iih < 3600 then
voqq = tostring(math.floor(iih / 60)) .. _d("W0wEURs")
else
voqq = tostring(math.floor(iih / 3600)) .. _d("XkwEURs")
end

table.insert(oamk, tostring(homv.title) .. _d("Fq7SFg") .. voqq)
table.insert(oamk, table.concat(geim, _d("Gkw")))
end

return table.concat(oamk, _d("PA"))
end

function axd.misc.expeditions.saveRewards()
local mvwf = axd.misc.expeditions

if type(writefile) ~= _d("UBkLVQAEFVg") then
return false
end

return pcall(function()
if type(makefolder) == _d("UBkLVQAEFVg") and type(isfolder) == _d("UBkLVQAEFVg") and not isfolder(_d("dy8nbg")) then
makefolder(_d("dy8nbg"))
end

writefile(mvwf.rewardPath, game:GetService(_d("fhgRRicICEAFBlM")):JSONEncode({
rewards = mvwf.rewardLog,
updatedAt = os.time(),
}))
end)
end

function axd.misc.expeditions.loadRewards()
local ofg = axd.misc.expeditions

if type(readfile) ~= _d("UBkLVQAEFVg") or type(isfile) ~= _d("UBkLVQAEFVg") then
return false
end

local gjo, xmd = pcall(function()
if not isfile(ofg.rewardPath) then
return nil
end

return readfile(ofg.rewardPath)
end)

if not gjo or type(xmd) ~= _d("RRgXXxoK") or #xmd == 0 then
return false
end

local aotv

if not pcall(function()
aotv = game:GetService(_d("fhgRRicICEAFBlM")):JSONDecode(xmd)
end) then
return false
end

if type(aotv) ~= _d("Qg0HWhE") or type(aotv.rewards) ~= _d("Qg0HWhE") then
return false
end

ofg.rewardLog = {}

for jjgb, dqxt in ipairs(aotv.rewards) do
if type(dqxt) == _d("Qg0HWhE") and type(dqxt.items) == _d("Qg0HWhE") then
table.insert(ofg.rewardLog, {
at = tonumber(dqxt.at) or os.time(),
title = tostring(dqxt.title or _d("cxQVUxAEDl8DCw")),
items = dqxt.items,
})
end
end

return #ofg.rewardLog > 0
end

function axd.misc.expeditions.start(squb, fqa)
local whg = axd.misc.expeditions

if whg.status(squb) ~= _d("VxoEXxgMGFoJ") then
return false
end

if os.clock() < (whg.startedAt[squb] or 0) then
return false
end

local vxef = whg.remote()

if not vxef then
return false
end

local wvg = whg.cards(squb, fqa)
local ihd = whg.data()
local clx = ihd and tonumber(ihd.CardsPerExpedition) or 4

if #wvg < clx then
return false
end

local xms = {}

for nkl, ctb in ipairs(wvg) do
xms[nkl] = { cardId = ctb.cardId, borderLevel = ctb.borderLevel }
end

pcall(function()
vxef:FireServer(_d("RRgERAA"), squb, xms)
end)

whg.startedAt[squb] = os.clock() + 6
whg.askedAt = 0

return true
end

axd.misc.icon = function()
local wiy = gethui()

for rom, nqkv in ipairs(wiy:QueryDescendants(_d("fwEEUREhG1QJCQ"))) do
if nqkv.Name == _d("Yg0HfxkMHVM") then
local rdv = nqkv.Parent
local vwmg = rdv and rdv:FindFirstChild(_d("Yg0HZQMEDlUEAEQ6DBdT"))

if vwmg and vwmg.Text == _d("ewUWVREBFlcCAFkBHg") then
if nqkv:GetAttribute(_d("dy8nbjkECVUlBlka")) then
return true
end

nqkv:SetAttribute(_d("dy8nbjkECVUlBlka"), true)
nqkv.Image = _d("")
nqkv.BackgroundTransparency = 1

local function mlm(reqe, wnjz, wlve, vj, ydv, mipm, vtn)
local fnu = Instance.new(reqe)

fnu.Size = UDim2.fromOffset(ydv, mipm)
fnu.Position = UDim2.fromOffset(wlve, vj)
fnu.BackgroundColor3 = wnjz
fnu.BorderSizePixel = 0
fnu.Parent = nqkv

if vtn then
local ymr = Instance.new(_d("YyUmWQYDH0Q"))
ymr.CornerRadius = UDim.new(0, vtn)
ymr.Parent = fnu
end

return fnu
end

local pyyy = Color3.fromRGB(168, 170, 176)

local function rnxn(kfuj, ept, kzcf, cat, iirw)
local lfq = mlm(_d("cB4EWxE"), pyyy, kfuj, ept, kzcf, cat, iirw)

lfq.BackgroundTransparency = 1

local bszm = Instance.new(_d("YyU2QgYCEVM"))

bszm.Color = pyyy
bszm.Thickness = 1.4
bszm.LineJoinMode = Enum.LineJoinMode.Round
bszm.Parent = lfq

return lfq
end

rnxn(3, 1, 6, 4, 1)
rnxn(1, 4, 16, 12, 2)

local zbvq = mlm(_d("cB4EWxE"), pyyy, 3, 8, 5, 5)

zbvq.BackgroundTransparency = 1
zbvq.ClipsDescendants = true

local fasp = mlm(_d("cB4EWxE"), pyyy, 0, 1, 5, 5)

fasp.Rotation = 45
fasp.Parent = zbvq

mlm(_d("cB4EWxE"), pyyy, 9, 9, 4, 4, 4)
mlm(_d("cB4EWxE"), pyyy, 13, 10, 3, 3, 1)

return true
end
end
end

return false
end

axd.misc.tab = mkaq:Tab({
Name = _d("ewUWVREBFlcCAFkBHg"),

Image = _d(""),
})

task.defer(function()
for byfu = 1, 20 do
if axd.misc.icon() then
break
end

task.wait(0.25)
end
end)

local ewwk = {
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
lastText = _d("eAMRXh0DHRYcCkYECB4WFQBCWg"),
tab = nil,
weatherSection = nil,
giveUpSection = nil,
weatherParagraph = nil,
giveUpParagraph = nil,
weatherToggle = nil,
giveUpToggle = nil,
}

getgenv().ACBXPop = ewwk

function ewwk.options()
local nc = {}

for krwg, ovb in pairs(tcbh.ById) do
if ovb.type == _d("RgMRXxsD") and type(ovb.name) == _d("RRgXXxoK") then
nc[#nc + 1] = ovb.name
end
end

table.sort(nc)

return nc
end

function ewwk.idOf(ghyx)
for gn, eax in pairs(tcbh.ById) do
if eax.type == _d("RgMRXxsD") and eax.name == ghyx then
return gn
end
end

return nil
end

function ewwk.count(xx)
local pl = yaia.balances

return tonumber(pl and pl[xx]) or 0
end

function ewwk.pop(cdz, cout, bzi)
local zd = {}

for hmli, xpgl in pairs(cdz) do
if xpgl then
local dzgf = ewwk.idOf(hmli)

if dzgf then
local ldue = ewwk.count(dzgf)

if ldue <= 0 then
zd[#zd + 1] = hmli .. _d("FkFFWBsDHxYAAFAA")
else
local cc = math.clamp(math.floor(tonumber(cout) or 1), 1, ldue)

pcall(function()
etxi.UseItem:FireServer(dzgf, cc)
end)

zd[#zd + 1] = hmli .. _d("FhQ") .. cc
task.wait(0.3)
end
end
end
end

if #zd == 0 then
return false
end

ewwk.lastText = bzi .. _d("FkFF") .. table.concat(zd, _d("Gkw"))

pcall(function()
dmj:Notify({
Title = _d("ZgMV"),
Description = ewwk.lastText,
Lifetime = 5,
})
end)

return true
end

function ewwk.status()
local kvw = pwis.weatherWanted(ewwk.weathers)
local nrs = pwis.weatherNow or _d("QwIOWBsaFA")
local pfo = {
_d("YQkEQhwICAxM") .. nrs .. (kvw and (_d("FkQVWQQdE1gLXxY") .. kvw .. _d("Hw")) or _d("")),
_d("eg0WQk5N") .. ewwk.lastText,
}

return table.concat(pfo, _d("PA"))
end

function ewwk.giveUpStatus()
if ewwk.armedAt > 0 then
return _d("dx4IUxBNVxYbBF8ABBRRTANZBk0OXglFRAEDWkIDRVMaCVQ8IARFAFda") .. ewwk.lastText
end

return _d("fwgJU1pnNlcfEQxU") .. ewwk.lastText
end

ewwk.tab = mkaq:Tab({
Name = _d("ZgMV"),

Image = _d(""),
})

ewwk.icon = function()
local rjo = gethui()

for fvu, bps in ipairs(rjo:QueryDescendants(_d("fwEEUREhG1QJCQ"))) do
if bps.Name == _d("Yg0HfxkMHVM") then
local pqc = bps.Parent
local xgk = pqc and pqc:FindFirstChild(_d("Yg0HZQMEDlUEAEQ6DBdT"))

if xgk and xgk.Text == _d("ZgMV") then
if bps:GetAttribute(_d("dy8nbiQCCn8PClg")) then
return true
end

bps:SetAttribute(_d("dy8nbiQCCn8PClg"), true)
bps.Image = _d("")
bps.BackgroundTransparency = 1

local glx = Color3.fromRGB(168, 170, 176)

local function yyxt(eou, az, vxm, ubxs, qxo, srsn)
local hacn = Instance.new(eou)

hacn.Size = UDim2.fromOffset(ubxs, qxo)
hacn.Position = UDim2.fromOffset(az, vxm)
hacn.BackgroundColor3 = glx
hacn.BorderSizePixel = 0
hacn.Parent = bps

if srsn then
local afp = Instance.new(_d("YyUmWQYDH0Q"))
afp.CornerRadius = UDim.new(0, srsn)
afp.Parent = hacn
end

return hacn
end

local function mj(eqtw, zrsn, ls, pgo, dfzu)
local msf = yyxt(_d("cB4EWxE"), eqtw, zrsn, ls, pgo, dfzu)

msf.BackgroundTransparency = 1

local crf = Instance.new(_d("YyU2QgYCEVM"))

crf.Color = glx
crf.Thickness = 1.3
crf.LineJoinMode = Enum.LineJoinMode.Round
crf.Parent = msf

return msf
end

mj(1, 6, 16, 12, 6)
mj(6, 3, 6, 4, 1)
yyxt(_d("cB4EWxE"), 5, 1, 8, 2, 1)
yyxt(_d("cB4EWxE"), 7, 0, 4, 1, 0)

yyxt(_d("cB4EWxE"), 4, 11, 10, 1, 0)
yyxt(_d("cB4EWxE"), 13, 3, 2, 2, 2)
yyxt(_d("cB4EWxE"), 15, 6, 2, 2, 2)

return true
end
end
end

return false
end

task.defer(function()
for dd = 1, 20 do
if ewwk.icon() then
break
end

task.wait(0.25)
end
end)

ewwk.weatherSection = ewwk.tab:Section({
Side = _d("egkDQg"),
})

ewwk.weatherSection:Header({
Name = _d("ZgMRXxsDCRYDCxYDCBtCBABEVJ3lkcY"),
})

ewwk.weatherToggle = ewwk.weatherSection:Toggle({
Name = _d("ZgMVFhsDWkIEAEURTQ1TDRFeER8J"),
Default = false,
Callback = function(pzqs)
if pzqs and (next(ewwk.weatherPotions) == nil or next(ewwk.weathers) == nil) then
ewwk.onWeather = false

pcall(function()
ewwk.weatherToggle:UpdateState(false)
end)

dmj:Dialog({
Title = _d("ZgMV"),
Description = _d("YgUGXVQMDhYAAFcHGVpZAgAWAwgbQgQARFQMFFJMClgRTQpZGAxZGk0cXx4WQlRAWmYDFRYaCB9SH0VUGxkSFhgKFh8DFUFMEl4VGVpCA0VSBgQUXUwEWBBNDV4JCxg"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})

return
end

ewwk.onWeather = pzqs

if pzqs then
ewwk.weatherSpent = nil
end
end,
}, _d("RgMVaRsDJUIEAEURMg1TDRFeER8J"))

ewwk.weatherSection:Dropdown({
Name = _d("YQkEQhwICEU"),
Multi = true,
Required = false,
Options = { _d("YhUVXhsCFA"), _d("dAAMTA4MCFI"), _d("egUCXgADE1gL"), _d("YQULUgcZFUQB"), _d("ZQQERB0DHVcC"), _d("ZQULUQEBG0QFEU8"), _d("ewMLVwYOEhYoClsVBBQ"), _d("YAMMUg"), _d("ew0BU1QEFBYkAFcCCBQ"), _d("ew0LURU") },
Callback = function(pv)
ewwk.weathers = {}

if type(pv) == _d("Qg0HWhE") then
for gun, daqi in pairs(pv) do
if daqi then
ewwk.weathers[gun] = true
end
end
end
end,
}, _d("QQkEQhwICEU"))

ewwk.weatherSection:Dropdown({
Name = _d("ZgMRXxsDCQ"),
Multi = true,
Required = false,
Options = ewwk.options(),
Callback = function(dt)
ewwk.weatherPotions = {}

if type(dt) == _d("Qg0HWhE") then
for mhck, hvj in pairs(dt) do
if hvj then
ewwk.weatherPotions[mhck] = true
end
end
end
end,
}, _d("RgMRXxsDCQ"))

ewwk.weatherSection:Input({
Name = _d("dwEKQxoZ"),
Placeholder = _d("Bw"),
AcceptedCharacters = _d("eBkIUwYEGQ"),
Callback = function(ejo)
local hpl = math.floor(tonumber(ejo) or 1)

ewwk.weatherAmount = math.clamp(hpl, 1, 50)
end,
}, _d("VwEKQxoZ"))

ewwk.weatherParagraph = ewwk.weatherSection:Paragraph({
Header = _d("ZRgEQgEe"),
Body = ewwk.status(),
})

ewwk.giveUpSection = ewwk.tab:Section({
Side = _d("ZAUCXgA"),
})

ewwk.giveUpSection:Header({
Name = _d("dwoRUwZNHV8aABYBHQ"),
})

ewwk.giveUpToggle = ewwk.giveUpSection:Toggle({
Name = _d("ZgMVFhULDlMeRVdUGRVBCRcWEwQMU0wQRg"),
Default = false,
Callback = function(ghk)
if ghk and next(ewwk.giveUpPotions) == nil then
ewwk.afterGiveUp = false

pcall(function()
ewwk.giveUpToggle:UpdateState(false)
end)

dmj:Dialog({
Title = _d("ZgMV"),
Description = _d("YgUGXVQMDhYAAFcHGVpZAgAWBAIOXwMLFhIECEUYRRtUGRJTHgAWHR5aWAMRXh0DHRYYChYQHxNYB0VXEhkfREwRXhFNCEMCRVkABR9EGwxFEUM"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})

return
end

ewwk.afterGiveUp = ghk
end,
}, _d("RgMVaRULDlMeOlcrGRVBCRdpEwQMUzMQRg"))

ewwk.giveUpSection:Dropdown({
Name = _d("ZgMRXxsDCQ"),
Multi = true,
Required = false,
Options = ewwk.options(),
Callback = function(lnd)
ewwk.giveUpPotions = {}

if type(lnd) == _d("Qg0HWhE") then
for jt, fqd in pairs(lnd) do
if fqd then
ewwk.giveUpPotions[jt] = true
end
end
end
end,
}, _d("RgMRXxsDCWle"))

ewwk.giveUpSection:Input({
Name = _d("dwEKQxoZ"),
Placeholder = _d("Bw"),
AcceptedCharacters = _d("eBkIUwYEGQ"),
Callback = function(cgp)
local ske = math.floor(tonumber(cgp) or 1)

ewwk.giveUpAmount = math.clamp(ske, 1, 50)
end,
}, _d("VwEKQxoZJQQ"))

ewwk.giveUpParagraph = ewwk.giveUpSection:Paragraph({
Header = _d("ZRgEQgEe"),
Body = ewwk.giveUpStatus(),
})

local vikf = {
autoSave = false,
autoRoll = true,
autoQuickRoll = true,

loading = false,
selected = nil,
lastText = _d("eAMRXh0DHRYbF18AGR9YTBxTAE1XFhwMVR9NGxYfBEARTRxfAAAWFggWWRtL"),
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
theme = _d("YAMMUg"),
accent = nil,
savesAt = 0,
autoSaveAt = 0,
themeAt = 0,
capAt = 0,
scaleAnchor = nil,
statusAt = 0,
knownSaves = _d(""),
}

getgenv().ACBXSettings = vikf

vikf.presets = {
Void = { panel = Color3.fromRGB(15, 15, 15), element = Color3.fromRGB(0, 0, 0), accent = Color3.fromRGB(168, 170, 176) },
Ocean = { panel = Color3.fromRGB(6, 16, 26), element = Color3.fromRGB(8, 26, 40), accent = Color3.fromRGB(77, 166, 255) },
Ember = { panel = Color3.fromRGB(26, 10, 8), element = Color3.fromRGB(36, 16, 10), accent = Color3.fromRGB(255, 122, 69) },
Sakura = { panel = Color3.fromRGB(26, 9, 18), element = Color3.fromRGB(38, 14, 26), accent = Color3.fromRGB(255, 125, 177) },
Mint = { panel = Color3.fromRGB(7, 20, 14), element = Color3.fromRGB(9, 30, 22), accent = Color3.fromRGB(77, 227, 160) },
Graphite = { panel = Color3.fromRGB(20, 20, 22), element = Color3.fromRGB(30, 30, 33), accent = Color3.fromRGB(200, 200, 206) },
}

vikf.themeOrder = { _d("YAMMUg"), _d("eQ8AVxo"), _d("cwEHUwY"), _d("ZQ0OQwYM"), _d("ewULQg"), _d("cR4ERhwEDlM") }

local jq = _d("dy8nFiYIGF8eEV5bHh9CGAxYEx4")

function vikf.saves()
local twzi, fif = pcall(function()
return lpwd:RefreshConfigList()
end)

if twzi and type(fif) == _d("Qg0HWhE") then
table.sort(fif)
return fif
end

return {}
end

function vikf.autoLoadName()
local fgae, ecvr = pcall(function()
if isfile and isfile(jq .. _d("GQ0QQhsBFVcIS0IMGQ")) then
return readfile(jq .. _d("GQ0QQhsBFVcIS0IMGQ"))
end
end)

if fgae and type(ecvr) == _d("RRgXXxoK") then
ecvr = ecvr:gsub(_d("aEkWHQ"), _d("")):gsub(_d("Ex9OEg"), _d(""))

if ecvr ~= _d("") then
return ecvr
end
end

return nil
end

function vikf.setAutoLoad(nx)

return (pcall(function()
writefile(jq .. _d("GQ0QQhsBFVcIS0IMGQ"), nx or _d(""))
end))
end

function vikf.delete(hoh)
if type(hoh) ~= _d("RRgXXxoK") or hoh == _d("") then
return false, _d("ZgUGXVQMWkUNE1NUCxNaCUVQHR8JQkI")
end

local anul = jq .. _d("GQ") .. hoh .. _d("GAYWWRo")
local msg = false

pcall(function()
msg = isfile ~= nil and isfile(anul) == true
end)

if not msg then
return false, _d("YgQARBFNE0VMC1lUCxNaCUVVFQEWUwhF") .. hoh .. _d("GA")
end

local fkd, zm = pcall(function()
delfile(anul)
end)

if not fkd then
return false, tostring(zm)
end

if vikf.autoLoadName() == hoh then
vikf.setAutoLoad(_d(""))
end

if vikf.selected == hoh then
vikf.selected = nil
vikf.selectionShown = nil
end

vikf.knownSaves = nil
vikf.savesAt = 0

return true
end

function vikf.save(hmqa)
if type(hmqa) ~= _d("RRgXXxoK") or hmqa:gsub(_d("Ex8"), _d("")) == _d("") then
return false, _d("cQUTU1QZElNMFlcCCFpXTAtXGQhaUAUXRQBD")
end

local affi, ocob, lega = pcall(function()
return lpwd:SaveConfig(hmqa)
end)

if not affi then
return false, tostring(ocob)
end

if ocob ~= true then
return false, tostring(lega or _d("QgQAFhIEFlNMBlkBAR4WAgpCVA8fFhsXXwAZH1g"))
end

return true
end

function vikf.replayOff(yyn)
local izk, gog = pcall(function()
return readfile(jq .. _d("GQ") .. yyn .. _d("GAYWWRo"))
end)

if not izk or type(gog) ~= _d("RRgXXxoK") then
return
end

local rbfj
izk, rbfj = pcall(function()
return game:GetService(_d("fhgRRicICEAFBlM")):JSONDecode(gog)
end)

if not izk or type(rbfj) ~= _d("Qg0HWhE") or type(rbfj.objects) ~= _d("Qg0HWhE") then
return
end

for bgd, bl in ipairs(rbfj.objects) do
if bl.type == _d("YgMCURgI") and bl.state == false and bl.flag then
local kwfv = lpwd.Options[bl.flag]

if kwfv then
pcall(function()
kwfv:UpdateState(false)
end)
end
end
end
end

function vikf.load(aoos)
if type(aoos) ~= _d("RRgXXxoK") or aoos == _d("") then
return false, _d("ZgUGXVQMWkUNE1NUCxNaCUVQHR8JQkI")
end

vikf.loading = true
pej = true

local wp, ar, lazc = pcall(function()
return lpwd:LoadConfig(aoos)
end)

if not wp then
vikf.loading = false
pej = false

return false, tostring(ar)
end

if ar ~= true then
vikf.loading = false
pej = false

return false, tostring(lazc or _d("QgQAFhIEFlNMBlkBAR4WAgpCVA8fFh4AVxA"))
end

task.wait(0.25)
vikf.replayOff(aoos)
vikf.loading = false
pej = false

return true
end

vikf.uiPath = _d("dy8nblsYExgGFlka")

function vikf.saveUi()
if type(writefile) ~= _d("UBkLVQAEFVg") then
return false
end

if vikf.restoring then
return false
end

local myw = vikf.accent

local sop = {
theme = vikf.theme,
scale = tonumber(string.format(_d("E0JXUA"), vikf.scaleTarget or 1)),
accent = myw and string.format(_d("EwhJExBBX1I"),
math.floor(myw.R * 255 + 0.5),
math.floor(myw.G * 255 + 0.5),
math.floor(myw.B * 255 + 0.5)) or nil,
}

return pcall(function()
if type(makefolder) == _d("UBkLVQAEFVg") and type(isfolder) == _d("UBkLVQAEFVg") and not isfolder(_d("dy8nbg")) then
makefolder(_d("dy8nbg"))
end

writefile(vikf.uiPath, game:GetService(_d("fhgRRicICEAFBlM")):JSONEncode(sop))
end)
end

function vikf.loadUi()
if type(readfile) ~= _d("UBkLVQAEFVg") or type(isfile) ~= _d("UBkLVQAEFVg") then
return nil
end

local rov, blu = pcall(function()
if not isfile(vikf.uiPath) then
return nil
end

return readfile(vikf.uiPath)
end)

if not rov or type(blu) ~= _d("RRgXXxoK") or blu == _d("") then
return nil
end

local ipr
rov, ipr = pcall(function()
return game:GetService(_d("fhgRRicICEAFBlM")):JSONDecode(blu)
end)

if not rov or type(ipr) ~= _d("Qg0HWhE") then
return nil
end

vikf.restoring = true

if type(ipr.theme) == _d("RRgXXxoK") and vikf.presets[ipr.theme] then
vikf.theme = ipr.theme

pcall(function()
vikf.themeDropdown:UpdateSelection(ipr.theme)
vikf.themeDropdown:UpdateName(_d("YgQAWxFXWg") .. ipr.theme)
end)
end

local mbka, ujt, bobz = tostring(ipr.accent or _d("")):match(_d("aERAUl9EVh5JAR1dQVITCE4fUA"))

if mbka then
local lh = Color3.fromRGB(tonumber(mbka), tonumber(ujt), tonumber(bobz))

vikf.accent = lh

pcall(function()
vikf.accentPicker:SetColor(lh)
end)
else
vikf.accent = nil

local kreo = vikf.presets[vikf.theme] or vikf.presets.Void

pcall(function()
vikf.accentPicker:SetColor(kreo.accent)
end)
end

local csv = tonumber(ipr.scale)

if csv then
csv = math.clamp(csv, 0.5, vikf.scaleCeiling())

vikf.scaleTarget = csv
vikf.scaleAnchor = nil

pcall(function()
vikf.scaleSlider:UpdateValue(csv)
end)
end

vikf.applyTheme()

vikf.restoring = false
vikf.saveUi()

return ipr
end

vikf.bossModePath = _d("dy8nblsPFUUfS1wHAhQ")

function vikf.saveBossMode(ho)
if type(writefile) ~= _d("UBkLVQAEFVg") or type(ho) ~= _d("RRgXXxoK") or ho == _d("") then
return false
end

return pcall(function()
if type(makefolder) == _d("UBkLVQAEFVg") and type(isfolder) == _d("UBkLVQAEFVg") and not isfolder(_d("dy8nbg")) then
makefolder(_d("dy8nbg"))
end

writefile(vikf.bossModePath, game:GetService(_d("fhgRRicICEAFBlM")):JSONEncode({ mode = ho }))
end)
end

function vikf.loadBossMode()
if type(readfile) ~= _d("UBkLVQAEFVg") or type(isfile) ~= _d("UBkLVQAEFVg") then
return nil
end

local xr, rhgr = pcall(function()
if not isfile(vikf.bossModePath) then
return nil
end

return readfile(vikf.bossModePath)
end)

if not xr or type(rhgr) ~= _d("RRgXXxoK") or rhgr == _d("") then
return nil
end

local szc

xr, szc = pcall(function()
return game:GetService(_d("fhgRRicICEAFBlM")):JSONDecode(rhgr)
end)

if not xr or type(szc) ~= _d("Qg0HWhE") or type(szc.mode) ~= _d("RRgXXxoK") then
return nil
end

return szc.mode
end

function vikf.colourKey(cms)
return math.floor(cms.R * 255) .. _d("Gg") .. math.floor(cms.G * 255) .. _d("Gg") .. math.floor(cms.B * 255)
end

function vikf.guiRoot()

if not uxq() then
return nil
end

if vikf.root and vikf.root.Parent then
return vikf.root
end

local xi = gethui and gethui() or game:GetService(_d("dQMXUzMYEw"))

for ycu, eho in ipairs(xi:GetChildren()) do
if eho:IsA(_d("ZQ8XUxEDPUMF")) and eho:FindFirstChild(_d("dA0WUw")) then
vikf.root = eho.Base

return vikf.root
end
end

return nil
end

function vikf.applyTheme()
local xsy = vikf.guiRoot()
local cqc = vikf.presets[vikf.theme] or vikf.presets.Void

if not xsy then
return false
end

local hajs = {
panel = cqc.panel,
element = cqc.element,
accent = vikf.accent or cqc.accent,
}

local ayv = {}

for aev, runi in pairs(vikf.presets) do
ayv[vikf.colourKey(runi.panel)] = _d("Rg0LUxg")
ayv[vikf.colourKey(runi.element)] = _d("UwAAWxEDDg")
ayv[vikf.colourKey(runi.accent)] = _d("Vw8GUxoZ")
end

ayv[vikf.colourKey(hajs.accent)] = _d("Vw8GUxoZ")

if ayv[vikf.colourKey(xsy.BackgroundColor3)] == _d("Rg0LUxg") then
xsy.BackgroundColor3 = hajs.panel
end

for ks, mljk in ipairs(xsy:GetDescendants()) do
if mljk:IsA(_d("cRkMeRYHH1UY")) then
local heao = ayv[vikf.colourKey(mljk.BackgroundColor3)]

if heao then
mljk.BackgroundColor3 = hajs[heao]
end
elseif mljk:IsA(_d("YyU2QgYCEVM")) then
if ayv[vikf.colourKey(mljk.Color)] == _d("Vw8GUxoZ") then
mljk.Color = hajs.accent
end
end

if mljk:IsA(_d("fwEEUREhG1QJCQ")) and mljk.Name == _d("Yg0HfxkMHVM") and mljk.Image ~= _d("") then
mljk.ImageColor3 = hajs.accent
mljk.ImageTransparency = 0
mljk:SetAttribute(_d("dy8nbiAMGHcPBlMaGQ"), hajs.accent)

if not mljk:GetAttribute(_d("dy8nbiAMGGIFC0I")) then
mljk:SetAttribute(_d("dy8nbiAMGGIFC0I"), true)

local function oowu()
local aioc = mljk:GetAttribute(_d("dy8nbiAMGHcPBlMaGQ"))

if aioc and mljk.ImageColor3 ~= aioc then
mljk.ImageColor3 = aioc
end

if mljk.ImageTransparency ~= 0 then
mljk.ImageTransparency = 0
end
end

mljk:GetPropertyChangedSignal(_d("fwEEURE5CFcCFkYVHx9YDxw")):Connect(oowu)
mljk:GetPropertyChangedSignal(_d("fwEEUREuFVoDFwU")):Connect(oowu)
end
end
end

return true
end

local rbq = mkaq:Tab({
Name = _d("ew0V"),
Image = _d("RA4dVwceH0IFAQxbQkwGX1QGQ1hDBV0"),
})

local bdve = {
holdFor = 25,
fly = {
on = false,
speed = 55,
connection = nil,
},
islands = {
{ name = _d("egMHVA0"), kind = _d("QQMXWhA"), arg = _d("WgMHVA0") },
{ name = _d("dw4EWBACFFMIRX8HARtYCA"), kind = _d("Xx8JVxoJ"), arg = _d("Vw4EWBACFFMIOl8HARtYCA") },
{ name = _d("YhsMWFQvH1cPDVMH"), kind = _d("Xx8JVxoJ"), arg = _d("QhsMWCsPH1cPDVMH"), note = _d("FjgNU1QeH0QaAERUCQhZHBYWHRlaQwIRXxhNA1kZRV4VGx8WHwRfGAgeFhgNUwYIVA") },
{ name = _d("YQULUhkEFlpMLEUYCA"), kind = _d("Xx8JVxoJ"), arg = _d("QQULUhkEFlozDEUYCA"), note = _d("FjgNU1QeH0QaAERUCQhZHBYWHRlaQwIRXxhNA1kZRV4VGx8WHwRfGAgeFhgNUwYIVA") },
},
npcs = {
{ name = _d("dQ0XUlQgH0QLAA"), npc = _d("UBkWUysDClU"), attr = _d("eDwmfxA"), at = Vector3.new(-272, 33, -40347) },
{ name = _d("cxQVUxAEDl8DC0U"), npc = _d("cxQVUxAEDl8DC3gkLg"), attr = _d("cxQVUxAEDl8DC3gkLg"), at = Vector3.new(-347, 35, -40361) },
{ name = _d("cgkGWRoeDkQZBkI"), npc = _d("UgkGWRoeDkQZBkIrAwpV"), attr = _d("eDwmfxA"), at = Vector3.new(-264, 33, -40331) },
{ name = _d("dR4EUAA"), npc = _d("VR4EUAAyFEYP"), attr = _d("eDwmfxA"), at = Vector3.new(-330, 33, -40277) },
{ name = _d("ZQcMWhhNLkQJAA"), npc = _d("ZQcMWhg5CFMJK2Y3"), attr = _d("ZQcMWhg5CFMJK2Y3"), at = Vector3.new(-290, 32, -40283) },
{ name = _d("dQ0XUlQkFFIJHQ"), npc = _d("VQ0XUisEFFIJHWkaHRk"), attr = _d("eDwmfxA"), at = Vector3.new(-313, 33, -40282) },
{ name = _d("Zg0GXVQgH0QPDVcaGQ"), npc = _d("Rg0GXSsAH0QPDVcaGQ"), attr = _d("eDwmfxA"), at = Vector3.new(-301, 33, -40270) },
{ name = _d("chkLURECFA"), npc = _d("UhkLURECFGkCFVU"), attr = _d("eDwmfxA"), at = Vector3.new(-339, 41, -40399) },
{ name = _d("cAUWXhEfF1cC"), npc = _d("cAUWXhEfF1cCK2Y3"), attr = _d("cAUWXhEfF1cCK2Y3"), at = Vector3.new(-493, 14, -40262) },
{ name = _d("ZQkGRBEZWncCAloRHw"), npc = _d("ZQkGRBEZO1gLCVMGIyp1"), attr = _d("ZQkGRBEZO1gLCVMGIyp1"), at = Vector3.new(-209, 34, -40382) },
{ name = _d("fg0JWhsaH1MCRWUcAgo"), npc = _d("ZhkIRh8EFBYhAEQXBRtYGA"), at = Vector3.new(-29989, 78, -30259) },
{ name = _d("ZQ0GRB0LE1UJRXcYGRtE"), landmark = _d("ZQ0GRB0LE1UJJFoADAg"), island = _d("Vw4EWBACFFMIOl8HARtYCA"), at = Vector3.new(-3548, 11, -40462) },
{ name = _d("fg0XUhcCCFNMMVkDCAg"), npc = _d("fg0XUhcCCFM4CkERHw"), island = _d("Vw4EWBACFFMIOl8HARtYCA"), at = Vector3.new(-3795, 25, -40250) },
{ name = _d("fx8JVxoJWnAFFl4RHxdXAg"), npc = _d("fx8JVxoJPF8fDVMGABtYIjV1"), attr = _d("fx8JVxoJPF8fDVMGABtYIjV1"), island = _d("Vw4EWBACFFMIOl8HARtYCA"), at = Vector3.new(-3825, 23, -40260) },
{ name = _d("cgUCUREf"), npc = _d("cgUCUREfNGYv"), attr = _d("cgUCUREfNGYv"), island = _d("QhsMWCsPH1cPDVMH"), at = Vector3.new(-5998, 26, -40565) },
{ name = _d("ZQkGRBEZWnIFAlERHw"), npc = _d("ZQkGRBEZPl8LAlMGIyp1"), attr = _d("ZQkGRBEZPl8LAlMGIyp1"), island = _d("QQULUhkEFlozDEUYCA"), at = Vector3.new(-7740, 17, -40343) },
},
}

function bdve.hold()
yje.tpHoldUntil = os.clock() + bdve.holdFor

yje.deepPhase = _d("XwgJUw")
yje.deepStageAt = 0
yje.phase = _d("XwgJUw")
yje.nextCastAt = 0
yje.watchdogAt = 0

return bdve.holdFor
end

function bdve.point(syk)
local zfi

if syk.landmark then
zfi = workspace:FindFirstChild(syk.landmark)
else
local ait = workspace:FindFirstChild(_d("eDwmRQ"))

if ait then
for tcdg, otly in ipairs(ait:GetChildren()) do
local qdlb

if syk.attr then
qdlb = otly:GetAttribute(syk.attr) == syk.npc
else
qdlb = otly.Name == syk.npc
end

if qdlb then
zfi = otly
break
end
end
end
end

if zfi then
local we = zfi.PrimaryPart
or zfi:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"), true)
or zfi:FindFirstChildWhichIsA(_d("dA0WUyQMCEI"), true)

if we then
return we.Position
end
end

return syk.at
end

function bdve.resume()
if not yje.enabled then
return
end

local wqe = nsmz.Character
local fsj = wqe and wqe:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if not fsj or (fsj.Position - sex).Magnitude < 40 then
return
end

pcall(function()
yje.recover()
end)
end

function bdve.standAt(dyz)
local nkk = nsmz.Character
local ajhv = nkk and nkk:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if not ajhv or not dyz then
return false
end

local rdh = RaycastParams.new()
rdh.FilterType = Enum.RaycastFilterType.Exclude
rdh.FilterDescendantsInstances = { nkk }

local suia = workspace:Raycast(dyz + Vector3.new(0, 10, 0), Vector3.new(0, -80, 0), rdh)
local unh = dyz.Y

if suia and suia.Instance.Name ~= _d("YQ0RUwY") then
local ddf = suia.Position.Y + 3.2

if math.abs(ddf - dyz.Y) <= 8 then
unh = ddf
end
end

local ouh = Vector3.new(ajhv.Position.X - dyz.X, 0, ajhv.Position.Z - dyz.Z)

if ouh.Magnitude < 1 then
ouh = Vector3.new(4, 0, 0)
else
ouh = ouh.Unit * 4
end

local ekj = Vector3.new(dyz.X + ouh.X, unh, dyz.Z + ouh.Z)

ajhv.CFrame = CFrame.new(ekj)

return true
end

function bdve.unlock()
local fc = {
{ id = _d("Vw4EWBACFFMIOl8HARtYCA"), at = Vector3.new(-3825, 24, -40260) },
{ id = _d("QhsMWCsPH1cPDVMH"), at = Vector3.new(-6180, 40, -40350) },
{ id = _d("QQULUhkEFlozDEUYCA"), at = Vector3.new(-7480, 30, -40350) },
}
local ljw = {}

for pf, kc in ipairs(fc) do
local knor = etxi.FishingGetState:InvokeServer()

if knor and knor.areas and knor.areas[kc.id] == true then
table.insert(ljw, kc.id .. _d("DEwEWgYIG1IVRVkECBQ"))
else
bdve.hold()
bdve.standAt(kc.at)
task.wait(2.4)

local ae = etxi.FishingGetState:InvokeServer()

table.insert(ljw, kc.id .. (ae and ae.areas and ae.areas[kc.id] and _d("DEwQWBgCGV0JAQ") or _d("DEwDVx0BH1I")))
end
end

bdve.hold()
pcall(function()
etxi.TeleportToWorld:FireServer(_d("WgMHVA0"))
end)
task.wait(2.5)

return table.concat(ljw, _d("Fq7SFg"))
end

function bdve.flyToggle(mab)
bdve.fly.on = mab

if not mab then
return _d("cAAcFhsLHBg")
end

local rtjp = nsmz.Character
local op = rtjp and rtjp:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if not op then
return _d("eANFVRwMCFcPEVMGTQ5ZTAlfEhlU")
end

bdve.fly.height = op.Position.Y

if bdve.fly.connection then
return _d("cAAcFhsDVA")
end

local vmhh = game:GetService(_d("Yx8ARD0DCkMYNlMGGxNVCQ"))

bdve.fly.connection = game:GetService(_d("ZBkLZREfDF8PAA")).Heartbeat:Connect(function(ye)
if not bdve.fly.on then
return
end

local dufv = nsmz.Character
local qoo = dufv and dufv:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if not qoo then
return
end

local mx = workspace.CurrentCamera
local lxa = Vector3.zero

if mx then
local oopg = mx.CFrame.LookVector
local qsl = Vector3.new(oopg.X, 0, oopg.Z)

if qsl.Magnitude > 0.01 then
qsl = qsl.Unit
end

local kp = Vector3.new(qsl.Z, 0, -qsl.X)

if vmhh:IsKeyDown(Enum.KeyCode.W) then
lxa = lxa + qsl
end

if vmhh:IsKeyDown(Enum.KeyCode.S) then
lxa = lxa - qsl
end

if vmhh:IsKeyDown(Enum.KeyCode.D) then
lxa = lxa + kp
end

if vmhh:IsKeyDown(Enum.KeyCode.A) then
lxa = lxa - kp
end
end

local obgd = 0

if vmhh:IsKeyDown(Enum.KeyCode.Space) then
obgd = 1
elseif vmhh:IsKeyDown(Enum.KeyCode.LeftControl) then
obgd = -1
end

local oedk = bdve.fly.speed or 55
local nwpy = lxa * oedk * ye + Vector3.new(0, obgd * oedk * 0.6 * ye, 0)

if nwpy.Magnitude < 0.001 then
return
end

qoo.CFrame = qoo.CFrame + nwpy
qoo.AssemblyLinearVelocity = Vector3.zero
end)

return _d("cAAcFhsDVA")
end

function bdve.go(cw)
bdve.hold()

if cw.kind == _d("QQMXWhA") then
pcall(function()
etxi.TeleportToWorld:FireServer(cw.arg)
end)

return _d("ZQkLQlQZElNM") .. cw.name .. _d("FhgAWhEdFUQYSw")
end

if cw.kind == _d("Xx8JVxoJ") then
pcall(function()
etxi.FishingIslandTeleport:FireServer(cw.arg)
end)

return _d("ZQkLQlQZElNM") .. cw.name .. _d("FhgAWhEdFUQYSw") .. tostring(cw.note or _d(""))
end

local gupl = bdve.point(cw)
local td = nsmz.Character
local yex = td and td:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if gupl and yex and (yex.Position - gupl).Magnitude > 1500 then
pcall(function()
if cw.island then
etxi.FishingIslandTeleport:FireServer(cw.island)
else
etxi.TeleportToWorld:FireServer(_d("WgMHVA0"))
end
end)

task.wait(cw.island and 3.5 or 4.5)

gupl = bdve.point(cw)

yex = nsmz.Character and nsmz.Character:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if gupl and yex and (yex.Position - gupl).Magnitude > 1500 then
return cw.name .. _d("FgUWFhsDWg") .. tostring(cw.island or _d("QgQAFhgCGFQV"))
.. _d("FkFFQhwIWlENCFNUHx9QGRZTB00OXg0RFgAfE0ZMEFgABBYWBREWHAwJFg4AUxpNCFMNBl4RCVpZAgZTWg")
end
end

if not gupl then
return cw.name .. _d("FgUWFhoCDhYFCxYABRNFTBJZBgEeGA")
end

if not bdve.standAt(gupl) then
return _d("eANFVRwMCFcPEVMGTQ5ZTAhZAghU")
end

task.delay(bdve.holdFor + 2, function()
pcall(bdve.resume)
end)

return _d("ZRgKWRBNGFMfDFIRTQ") .. cw.name .. _d("GA")
end

bdve.islandSection = rbq:Section({ Side = _d("egkDQg") })
bdve.islandSection:Header({ Name = _d("fx8JVxoJCRac+rnpgsK5") })

bdve.npcSection = rbq:Section({ Side = _d("ZAUCXgA") })
bdve.npcSection:Header({ Name = _d("eDwmRVSd5aXh") })

for myu, bob in ipairs(bdve.islands) do
bdve.islandSection:Button({
Name = bob.name,
Callback = function()
task.spawn(function()
local ll = bdve.go(bob)

dmj:Notify({
Title = _d("YgkJUwQCCEI"),
Description = ll,
Lifetime = 6,
})
end)
end,
})
end

bdve.state = yje
bdve.tab = rbq
bdve.islandSection:Button({
Name = _d("YwIJWRcGWlcACRYdHhZXAgFF"),
Callback = function()
task.spawn(function()
local ogm = bdve.unlock()

dmj:Notify({
Title = _d("fx8JVxoJCQ"),
Description = ogm,
Lifetime = 10,
})
end)
end,
})

bdve.flySection = rbq:Section({ Side = _d("egkDQg") })
bdve.flySection:Header({ Name = _d("cAAcFpbx8tnU6g") })

bdve.flySection:Toggle({
Name = _d("cAAcFlw6O2UoSRYnHRtVCUVDBEFadRgXWlQJFUECTA"),
Default = false,
Callback = function(jl)
local ppl = bdve.flyToggle(jl)

dmj:Notify({
Title = _d("cAAc"),
Description = ppl,
Lifetime = 4,
})
end,
}, _d("Vw8HTisLFk8"))

getgenv().ACBXTeleport = bdve

getgenv().ACBXDeepWater = oza

pcall(oza.dropStale)

for auoa, hjf in ipairs(bdve.npcs) do
bdve.npcSection:Button({
Name = hjf.name,
Callback = function()
task.spawn(function()
local whjm = bdve.go(hjf)

dmj:Notify({
Title = _d("YgkJUwQCCEI"),
Description = whjm,
Lifetime = 6,
})
end)
end,
})
end

local cx = qra:Section({ Side = _d("egkDQg") })

cx:Header({ Name = _d("cgUCUR0DHRaO/rmb1fU") })

local xso = {
busy = false,
}

local ubgn = (tonumber(getgenv().ACBXDigGeneration) or 0) + 1
getgenv().ACBXDigGeneration = ubgn

function xso.read()
local qbkg, rsj = pcall(function()
return etxi.DigGetState:InvokeServer()
end)

return qbkg and type(rsj) == _d("Qg0HWhE") and rsj or nil
end

function xso.call(hfun, tpm)
local vg, opd = pcall(function()
return etxi.DigShop:InvokeServer(hfun, tpm)
end)

task.wait(2.5)

return vg and opd == true
end

function xso.wear()
local ct = nsmz.Character

if not ct then
return false
end

local mtm = ct:FindFirstChildOfClass(_d("fhkIVxoCE1I"))
local ocw = nsmz:FindFirstChild(_d("dA0GXQQMGV0"))

if not (mtm and ocw) then
return false
end

mtm:UnequipTools()
task.wait(0.4)

for ef = 1, 8 do
for imxw, eesf in ipairs(ocw:GetChildren()) do
if eesf:IsA(_d("YgMKWg")) and eesf.Name:find(_d("aCgMUScFFUAJCQ")) then
mtm:EquipTool(eesf)

return true
end
end

task.wait(0.5)
end

return false
end

function xso.run()
local sx = xso.read()

if not sx then
return _d("YgQAFhAEHRYfDVkETRNFTAtZAE0bWB8SUwYEFFFC")
end

local buq = {}

pcall(function()
local vrhk = etxi.FishingGetState:InvokeServer()

buq = vrhk and vrhk.areas or {}
end)

if not (buq.abandoned_island and buq.twin_beaches and buq.windmill_isle) then
bdve.unlock()
task.wait(1)
end

local tfuh

for clq, trs in ipairs(bdve.npcs) do
if trs.name == _d("cgUCUREf") then
tfuh = trs
break
end
end

if not tfuh then
return _d("YgQAFiAfH1cfEEQRTTJDAhFTBk0TRUwLWQBNE1hMEV4dHlpBAxdaEEM")
end

bdve.go(tfuh)
task.wait(2)

local wreh = nsmz.Character
local cpa = wreh and wreh:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))
local ssiq = bdve.point(tfuh)

if not (cpa and ssiq) or (cpa.Position - ssiq).Magnitude > 40 then
return _d("dQMQWhBNFFkYRUQRDBleTBFeEU0uRAkERQEfHxYkEFgACAgY")
end

sx = xso.read() or sx

local oowc = false
local rtru = sx.shovels and sx.shovels.shovel_basic == true
local gi = sx.detectors and sx.detectors.detector_basic == true

if not (rtru and gi) then
oowc = xso.call(_d("dQAEXxk+DlceEVMG"), _d("RQQKQBEBJVQNFl8X"))
sx = xso.read() or sx
end

if sx.equippedShovel ~= _d("RQQKQBEBJVQNFl8X") then
xso.call(_d("cx0QXwQ+ElkaAFo"), _d("RQQKQBEBJVQNFl8X"))
end

if sx.equippedDetector ~= _d("UgkRUxcZFUQzB1cHBBk") then
xso.call(_d("cx0QXwQpH0IJBkIbHw"), _d("UgkRUxcZFUQzB1cHBBk"))
end

sx = xso.read() or sx

if sx.equippedShovel == _d("RQQKQBEBJVQNFl8X") and sx.equippedDetector == _d("UgkRUxcZFUQzB1cHBBk") then
local ubf = xso.wear()
local qi = false

if ubf and yje.enabled then
yje.autoFishWanted = false
qi = true

cdyu(false)

pcall(function()
xp:UpdateState(false)
end)
end

return (oowc and _d("dQAEXxkIHhYNC1JUCAtDBRVGEQk") or _d("cx0QXwQdH1I"))
.. _d("FhgNU1QvG0UFBhYnBRVACQkWFQMeFi4ERR0OWnIJEVMXGRVEQg")
.. (qi and _d("Fi0QQhtNPF8fDRYbCxwWQUVCHAhaRQQKQBEBWl4NFhYABR8WGApZGE0JWgMRGA") or _d(""))
end

return _d("YgQAFjYMCV8PRWUcAgxTAEVZBk0+UxgAVQACCBYFFhYHGRNaAEVbHR4JXwICGA")
end

function xso.unlock()
if xso.busy then
return _d("dwAXUxUJAxYbCkQfBBRRQg")
end

xso.busy = true

local twyk, sbi = pcall(xso.run)

xso.busy = false

if not twyk then
return _d("cgUCUR0DHRYKBF8YCB4MTA") .. tostring(sbi)
end

return sbi
end

xso.icon = function()
local gfny = gethui()

for ocs, zl in ipairs(gfny:QueryDescendants(_d("fwEEUREhG1QJCQ"))) do
if zl.Name == _d("Yg0HfxkMHVM") then
local yo = zl.Parent
local yew = yo and yo:FindFirstChild(_d("Yg0HZQMEDlUEAEQ6DBdT"))

if yew and yew.Text == _d("cgUCUR0DHQ") then
if zl:GetAttribute(_d("dy8nbjAEHX8PClg")) then
return true
end

zl:SetAttribute(_d("dy8nbjAEHX8PClg"), true)
zl.Image = _d("")
zl.BackgroundTransparency = 1

local bpe = Color3.fromRGB(233, 236, 242)

for ak, org in ipairs(gfny:QueryDescendants(_d("fwEEUREhG1QJCQ"))) do
if org.Name == _d("Yg0HfxkMHVM") and org ~= zl and org.Image ~= _d("") then
bpe = org.ImageColor3
break
end
end

local function dua(dnj, sy, xu, xys, ug, ryx)
local tqpn = Instance.new(_d("cB4EWxE"))

tqpn.Size = UDim2.fromOffset(xu, xys)
tqpn.Position = UDim2.fromOffset(dnj, sy)
tqpn.BackgroundColor3 = bpe
tqpn.BorderSizePixel = 0
tqpn.Parent = zl

if ryx then
tqpn.Rotation = ryx
end

if ug then
local rebd = Instance.new(_d("YyUmWQYDH0Q"))

rebd.CornerRadius = UDim.new(0, ug)
rebd.Parent = tqpn
end

return tqpn
end

dua(1.1, 10.2, 7, 6.4, 1.6, -45)
dua(3.1, 8.3, 11, 2.2, 0.8, -45)
dua(9.8, 4.4, 5.6, 2, 0.8, 45)

return true
end
end
end

return false
end

task.defer(function()
for iff = 1, 20 do
if xso.icon() then
break
end

task.wait(0.25)
end
end)

cx:Button({
Name = _d("YwIJWRcGWlIFAlEdAx0"),
Callback = function()
task.spawn(function()
dmj:Notify({
Title = _d("cgUCUR0DHQ"),
Description = _d("fgkEUh0DHRYYChYABR8WOBdTFR4PRAlFfgEDDlMeSw"),
Lifetime = 5,
})

local weaz = xso.unlock()

dmj:Notify({
Title = _d("cgUCUR0DHQ"),
Description = weaz,
Lifetime = 10,
})
end)
end,
})

xso.data = require(pen.ModuleScripts.DigData)

function xso.zoneAt(ppdt)
for vo, zpcx in ipairs(game:GetService(_d("dQMJWhEODl8DC2URHwxfDwA")):GetTagged(xso.data.ZoneTag)) do
if zpcx:IsA(_d("dA0WUyQMCEI")) and zpcx:IsDescendantOf(workspace) then
local qoio = zpcx.CFrame:PointToObjectSpace(ppdt)
local dv = zpcx.Size * 0.5

if math.abs(qoio.X) <= dv.X and math.abs(qoio.Y) <= dv.Y and math.abs(qoio.Z) <= dv.Z then
return true
end
end
end

return false
end

function xso.onIsland()
for tnhg, zya in ipairs(game:GetService(_d("dQMJWhEODl8DC2URHwxfDwA")):GetTagged(xso.data.ZoneTag)) do
if zya:IsA(_d("dA0WUyQMCEI")) and zya:IsDescendantOf(workspace) then
return true
end
end

return false
end

function xso.bestShovel(yig)
local xbn = yig and yig.shovels or {}
local pad = nil

for cyf, rqwh in ipairs(xso.data.Shovels) do
if xbn[rqwh.id] == true then
pad = rqwh.id
end
end

return pad
end

function xso.equipBest()
local it = xso.read()
local gq = xso.bestShovel(it)

if not gq then
return nil
end

if it.equippedShovel ~= gq then
xso.call(_d("cx0QXwQ+ElkaAFo"), gq)
end

xso.wear()

return gq
end

function xso.leaveNpc()
local qzv = nsmz.Character
local ize = qzv and qzv:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))
local oak = qzv and qzv:FindFirstChildOfClass(_d("fhkIVxoCE1I"))

if not (ize and oak) then
return false
end

local zyx

for ie, avn in ipairs(bdve.npcs) do
if avn.name == _d("cgUCUREf") then
zyx = avn
break
end
end

local ufk = zyx and bdve.point(zyx)

if not ufk then
return false
end

local lsm = Vector3.new(ize.Position.X - ufk.X, 0, ize.Position.Z - ufk.Z)

if lsm.Magnitude >= 16 then
return true
end

if lsm.Magnitude < 1 then
lsm = Vector3.new(0, 0, -1)
end

lsm = lsm.Unit

local exi = Vector3.new(ufk.X + lsm.X * 22, ize.Position.Y, ufk.Z + lsm.Z * 22)
local cg = os.clock() + 6

oak:MoveTo(exi)

while os.clock() < cg do
local ivpn = nsmz.Character
local fgs = ivpn and ivpn:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if not fgs or (fgs.Position - exi).Magnitude < 4 then
break
end

task.wait(0.15)
end

pcall(function()
oak:MoveTo(ize.Position)
end)

return true
end

function xso.goToSand()
if not xso.onIsland() then

pcall(function()
etxi.TeleportToWorld:FireServer(_d("WgMHVA0"))
end)

local qukc = os.clock() + 15

while not xso.onIsland() and os.clock() < qukc do
task.wait(0.5)
end
end

if not xso.onIsland() then
local bsl

for mjo, qwzf in ipairs(bdve.npcs) do
if qwzf.name == _d("cgUCUREf") then
bsl = qwzf
break
end
end

if bsl then
bdve.go(bsl)
task.wait(2)
end
end

if xso.onIsland() then
xso.leaveNpc()
end
end

function xso.spot()
local mpo = nsmz.Character
local mtkq = mpo and mpo:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if not mtkq then
return nil
end

local fp = mtkq.CFrame.LookVector
local gie = Vector3.new(fp.X, 0, fp.Z)

if gie.Magnitude < 0.01 then
gie = Vector3.new(0, 0, -1)
end

gie = gie.Unit

local cwd = RaycastParams.new()
cwd.FilterType = Enum.RaycastFilterType.Exclude
cwd.FilterDescendantsInstances = { mpo }

local function ihx(bmwx, ramg)
local cwe = mtkq.Position + bmwx * ramg + Vector3.new(0, 4, 0)
local cyq = workspace:Raycast(cwe, Vector3.new(0, -18, 0), cwd)

if cyq and xso.zoneAt(cyq.Position) then
return cyq.Position
end
end

for wxnz, bliz in ipairs({ 4, 7, 10, 2 }) do
local fvp = ihx(gie, bliz)

if fvp then
return fvp
end
end

local rkz = Vector3.new(-gie.Z, 0, gie.X)

for xg, pmks in ipairs({ 4, 8 }) do
for jz, pxs in ipairs({ 1, -1 }) do
for rz, wpwk in ipairs({ 1, 0.5 }) do
local nclu = ihx((rkz * (pxs * wpwk) + gie * (1 - wpwk)).Unit, pmks)

if nclu then
return nclu
end
end
end
end

return nil
end

function xso.turn()
local zfyk = nsmz.Character
local cwl = zfyk and zfyk:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if not cwl then
return
end

local vqlm = cwl.CFrame.LookVector
local dkrg = Vector3.new(vqlm.X, 0, vqlm.Z)

if dkrg.Magnitude < 0.01 then
dkrg = Vector3.new(0, 0, -1)
end

dkrg = dkrg.Unit

local ubwq = Vector3.new(-dkrg.Z, 0, dkrg.X)

cwl.CFrame = CFrame.lookAt(cwl.Position, cwl.Position + ubwq)
end

xso.pending = false

pcall(function()
etxi.DigUpdate.OnClientEvent:Connect(function(tus)
if tus == _d("cgUCZBEeD1oY") or tus == _d("cgUCdRUDGVMA") then
xso.pending = false
end
end)
end)

function xso.autoLoop()
local qfgw = false

while xso.autoOn and uxq() and getgenv().ACBXDigGeneration == ubgn do
local ip = axd and axd.worldBoss
local yih = ip ~= nil
and type(ip.holdsDigging) == _d("UBkLVQAEFVg")
and ip.holdsDigging() == true

if yih then

qfgw = true
task.wait(1)
else
if qfgw then

qfgw = false

if type(ip.setRepeat) == _d("UBkLVQAEFVg") then
ip.setRepeat(false)
end

xso.goToSand()
end

local kjhv = xso.spot()

if kjhv then
xso.pending = true

local kgzz = pcall(function()
etxi.DigAction:FireServer(_d("ZRgERAA"), kjhv)
end)

if not kgzz then
xso.pending = false
end

local mur = os.clock() + 6

while xso.pending and xso.autoOn and os.clock() < mur
and getgenv().ACBXDigGeneration == ubgn and uxq() do
task.wait()
end

xso.pending = false
else
xso.turn()
task.wait(0.25)
end
end
end
end

function xso.autoStart()
local qkga = xso.read()

if not (qkga and xso.bestShovel(qkga)) then
return _d("eANFRRwCDFMARVkDAx9STEgWIQMWWQ8OFhAEHVEFC1FUCxNEHxEY")
end

local wnxg = false

if yje.enabled then
yje.autoFishWanted = false

cdyu(false)
pcall(function()
xp:UpdateState(false)
end)

wnxg = true
end

berr = true
xso.equipBest()

xso.goToSand()

task.spawn(xso.autoLoop)

return _d("cgUCUR0DHRg") .. (wnxg and _d("Fi0QQhtNPF8fDRYbCxwWQUVCHAhaRQQKQBEBWl4NFhYABR8WGApZGE0JWgMRGA") or _d(""))
end

cx:Toggle({
Name = _d("dxkRWVQpE1E"),
Default = false,
Callback = function(gdl)
xso.autoOn = gdl

if not gdl then
xso.pending = false
berr = false
return
end

task.spawn(function()
local ujz = xso.autoStart()

dmj:Notify({
Title = _d("dxkRWVQpE1E"),
Description = ujz,
Lifetime = 6,
})
end)
end,
}, _d("UgUCUR0DHWkNEEIb"))

function xso.npcRow()
for muvp, ieu in ipairs(bdve.npcs) do
if ieu.name == _d("cgUCUREf") then
return ieu
end
end
end

function xso.shop(hpex, esh)
local kncd, zwzo, sre, bhjc = pcall(function()
return etxi.DigShop:InvokeServer(hpex, esh)
end)

if not kncd then
return false, _d("YgQAFhAEHRYfDVkETRNFTAtZAE0bWB8SUwYEFFFC")
end

return zwzo == true, sre, type(bhjc) == _d("Qg0HWhE") and bhjc or nil
end

function xso.upgrade()
local utjj = xso.read()

if not utjj then
return nil, _d("YgQAFhAEHRYfDVkETRNFTAtZAE0bWB8SUwYEFFFC")
end

local gzxm = xso.bestShovel(utjj)

if gzxm and utjj.equippedShovel ~= gzxm then
xso.equipBest()
utjj = xso.read() or utjj
end

local ejfz = utjj.shovels or {}
local cjl = tonumber(utjj.digs) or 0
local bxan

for gksd, qezh in ipairs(xso.data.Shovels) do
if not qezh.crafted and qezh.id ~= _d("RQQKQBEBJVQNFl8X") and ejfz[qezh.id] ~= true then
local lm = tonumber(qezh.cost) or math.huge

if lm <= cjl and (not bxan or lm > (tonumber(bxan.cost) or 0)) then
bxan = qezh
end
end
end

if not bxan then
return nil, _d("eANFQwQKCFcIABYdHlpXCgNZBgkbVAAAFg0IDhg")
end

local ul = xso.npcRow()
local cfg = ul and bdve.point(ul)
local vrp = nsmz.Character
local cfgx = vrp and vrp:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if cfg and cfgx and (cfgx.Position - cfg).Magnitude > 20 then
bdve.go(ul)
task.wait(2.2)

vrp = nsmz.Character
cfgx = vrp and vrp:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))
end

local hzfl, cwv = xso.shop(_d("dBkcZRwCDFMA"), bxan.id)

if not hzfl then
return nil, _d("dBkcFgYIHEMfAFJOTQ") .. tostring(cwv)
end

xso.equipBest()

if xso.autoOn then
xso.leaveNpc()
end

return bxan.name
end

function xso.buyLoop()
while xso.buyOn do
local jqb = xso.upgrade()

if jqb then
dmj:Notify({
Title = _d("dxkRWVQvD09MNl4bGx9a"),
Description = _d("dAMQURwZWlcCARYRHA9fHBVTEE0OXglF") .. jqb .. _d("GA"),
Lifetime = 6,
})

task.wait(3)
else
task.wait(10)
end
end
end

cx:Toggle({
Name = _d("dxkRWVQvD09MJ1MHGVplBApAEQE"),
Default = false,
Callback = function(msw)
xso.buyOn = msw

if not msw or xso.buyRunning then
return
end

xso.buyRunning = true

task.spawn(function()
xso.buyLoop()

xso.buyRunning = false
end)
end,
}, _d("UgUCUR0DHWkOEE8"))

getgenv().ACBXDigging = xso

vikf.tab = mkaq:Tab({
Name = _d("ZQkRQh0DHUU"),

Image = _d(""),
})

vikf.icon = function()
local pws = gethui()

for pbp, myhq in ipairs(pws:QueryDescendants(_d("fwEEUREhG1QJCQ"))) do
if myhq.Name == _d("Yg0HfxkMHVM") then
local pmf = myhq.Parent
local uv = pmf and pmf:FindFirstChild(_d("Yg0HZQMEDlUEAEQ6DBdT"))

if uv and uv.Text == _d("ZQkRQh0DHUU") then
if myhq:GetAttribute(_d("dy8nbjcCHX8PClg")) then
return true
end

myhq:SetAttribute(_d("dy8nbjcCHX8PClg"), true)
myhq.Image = _d("")
myhq.BackgroundTransparency = 1

local sju = Color3.fromRGB(168, 170, 176)

local function yb(knx, ddu, si, iy, fw, tqjr)
local hnla = Instance.new(_d("cB4EWxE"))

hnla.Size = UDim2.fromOffset(si, iy)
hnla.Position = UDim2.fromOffset(knx, ddu)
hnla.BackgroundColor3 = sju
hnla.BorderSizePixel = 0
hnla.Parent = myhq

if not tqjr then
hnla.BackgroundTransparency = 1

local tkb = Instance.new(_d("YyU2QgYCEVM"))

tkb.Color = sju
tkb.Thickness = 1.3
tkb.LineJoinMode = Enum.LineJoinMode.Round
tkb.Parent = hnla
end

if fw then
local lchd = Instance.new(_d("YyUmWQYDH0Q"))

lchd.CornerRadius = UDim.new(0, fw)
lchd.Parent = hnla
end

return hnla
end

local cmd = {
{ 8, 0, 2, 3 },
{ 8, 15, 2, 3 },
{ 0, 8, 3, 2 },
{ 15, 8, 3, 2 },
{ 2, 2, 3, 3 },
{ 13, 2, 3, 3 },
{ 2, 13, 3, 3 },
{ 13, 13, 3, 3 },
}

for guss, vmxs in ipairs(cmd) do
yb(vmxs[1], vmxs[2], vmxs[3], vmxs[4], 0, true)
end

yb(2, 2, 14, 14, 7, false)
yb(7, 7, 4, 4, 2, true)

return true
end
end
end

return false
end

task.defer(function()
for sdsd = 1, 20 do
if vikf.icon() then
break
end

task.wait(0.25)
end
end)

vikf.configSection = vikf.tab:Section({
Side = _d("egkDQg"),
})

vikf.configSection:Header({
Name = _d("dQMLUB0KWnsNC1cTCBdTAhE"),
})

vikf.autoSaveToggle = vikf.configSection:Toggle({
Name = _d("dxkRWVQeG0AJ"),
Default = false,
Callback = function(fkxq)
vikf.autoSave = fkxq
vikf.autoSaveAt = 0

if fkxq then
local dvwv = vikf.selected or _d("UgkDVwEBDg")
local qn, lt = vikf.save(dvwv)

vikf.selected = dvwv
vikf.lastText = qn and (_d("dxkRWVQeG0AJRVkaTVcWGxdZAAha") .. dvwv)
or (_d("dxkRWVQeG0AJRVkaQVpQBRdFAE0NRAURU1QLG18AAFJOTQ") .. tostring(lt))
else
vikf.lastText = _d("dxkRWVQeG0AJRVkSC1Q")
end
end,
}, _d("VQMLUB0KJVcZEVkrHhtACQ"))

vikf.nameInput = vikf.configSection:Input({
Name = _d("ZQ0TU1QDG1sJ"),
Placeholder = _d("U0ICGFQ/G18IFg"),
AcceptedCharacters = _d("dwAJ"),
Callback = function(psc)
vikf.nameDraft = psc
end,
})

vikf.nameInput.IgnoreConfig = true

vikf.configSection:Button({
Name = _d("dR4AVwAIWkUNE1M"),
Callback = function()
local isbi = vikf.nameDraft or vikf.nameInput:GetInput()

isbi = type(isbi) == _d("RRgXXxoK") and isbi:gsub(_d("aEkWHQ"), _d("")):gsub(_d("Ex9OEg"), _d("")) or _d("")

if isbi == _d("") then
dmj:Dialog({
Title = _d("dQMLUB0K"),
Description = _d("YhUVU1QMWlgNCFNUCxVETBFeEU0JVxoAFhIECEUYRRtUBA4WDgBVGwAfRUwRXhFNHF8AABEHTRRXAQAY"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})

return
end

local cku, qf = vikf.save(isbi)

if not cku then
vikf.lastText = _d("ZQ0TU1QLG18AAFJOTQ") .. tostring(qf)

return
end

vikf.selected = isbi
vikf.lastText = _d("dR4AVwAIHhY") .. isbi .. _d("GA")
vikf.savesAt = 0

task.defer(function()
task.wait(0.25)

pcall(function()
vikf.fileDropdown:UpdateSelection(isbi)
end)
end)
end,
})

vikf.fileDropdown = vikf.configSection:Dropdown({
Name = _d("ZQ0TU1QLE1oJ"),
Search = false,
Multi = false,
Required = false,
Options = vikf.saves(),
Callback = function(ggbf)
local me = type(ggbf) == _d("Qg0HWhE") and ggbf[1] or ggbf

if type(me) == _d("RRgXXxoK") and me ~= _d("") then
vikf.selected = me
vikf.selectionShown = me

pcall(function()
vikf.fileDropdown:UpdateName(_d("ZQ0TU1QLE1oJXxY") .. me)
end)
end
end,
})

vikf.fileDropdown.IgnoreConfig = true

vikf.configSection:Button({
Name = _d("egMEUlQeH1oJBkIRCQ"),
Callback = function()
local upak = vikf.selected or vikf.fileDropdown.Value
local yjp, ure = vikf.load(upak)

vikf.lastText = yjp and (_d("egMEUhEJWg") .. upak .. _d("GA")) or (_d("egMEUlQLG18AAFJOTQ") .. tostring(ure))
end,
})

vikf.configSection:Button({
Name = _d("ZQ0TU1QZFRYfAFoRDg5TCA"),
Callback = function()
local kxq = vikf.selected or vikf.fileDropdown.Value
local qys, dbob = vikf.save(kxq)

vikf.lastText = qys and (_d("YR4KQhFN") .. kxq .. _d("GA")) or (_d("ZQ0TU1QLG18AAFJOTQ") .. tostring(dbob))
end,
})

vikf.configSection:Button({
Name = _d("cgkJUwAIWkUJCVMXGR9STBZXAgg"),
Callback = function()
local on = vikf.selected or vikf.fileDropdown.Value

if type(on) ~= _d("RRgXXxoK") or on == _d("") then
vikf.lastText = _d("ZgUGXVQMWkUNE1NUCxNaCUVQHR8JQkI")

return
end

dmj:Dialog({
Title = _d("cgkJUwAIWg") .. on .. _d("CQ"),
Description = _d("YgQAFhIEFlNMDEVUHx9bAxNTEE0cRAMIFhAECV1MBFgQTRlXAgtZAE0YU0wXUxcCDFMeAFJa"),
Buttons = {
{
Name = _d("cgkJUwAI"),
Callback = function()
local erte, spov = vikf.delete(on)

vikf.lastText = erte
and (_d("cgkJUwAIHhY") .. on .. _d("GA"))
or (_d("dQMQWhBNFFkYRVIRAR9CCV8W") .. tostring(spov))
end,
},
{
Name = _d("dQ0LVREB"),
},
},
})
end,
})

vikf.configSection:Button({
Name = _d("ZAkDRBEeEhYADEUA"),
Callback = function()
vikf.savesAt = 0
vikf.lastText = _d("ZQ0TU1QBE0UYRUQRCwhTHw1TEEM")
end,
})

vikf.configSection:Button({
Name = _d("ew0XXVQMCRYNEEIbTRZZDQE"),
Callback = function()
local uzhz = vikf.selected or vikf.fileDropdown.Value

if type(uzhz) ~= _d("RRgXXxoK") or uzhz == _d("") then
vikf.lastText = _d("ZgUGXVQMWkUNE1NUCxNaCUVQHR8JQkI")

return
end

if vikf.setAutoLoad(uzhz) then
vikf.lastText = uzhz .. _d("FgAKVxAeWlkCRUUADAhCQg")
else
vikf.lastText = _d("dQMQWhBNFFkYRUEGBA5TTBFeEU0bQxgKFhgCG1JMCFcGBh9EQg")
end
end,
})

vikf.configSection:Button({
Name = _d("dQAAVwZNG0MYChYYAhtS"),
Callback = function()
vikf.setAutoLoad(_d(""))
vikf.lastText = _d("eAMRXh0DHRYAClcQHlpZAkVFAAwIQkI")
end,
})

vikf.statusParagraph = vikf.configSection:Paragraph({
Header = _d("ZRgEQgEe"),
Body = _d(""),
})

vikf.miscSection = vikf.tab:Section({
Side = _d("ZAUCXgA"),
})

vikf.miscSection:Header({
Name = _d("ewUWVQ"),
})

vikf.miscSection:Toggle({
Name = _d("dxkRWVQOFlkfABYTCBRTHgRCHQIUFjks"),
Default = false,
Callback = function(vym)
tfpv(vym)
end,
}, _d("WwUWVSsMD0IDOlUYAglTMwJTGggIVxgMWRo"))

vikf.miscSection:Toggle({
Name = _d("dxkRWVQ/FVoA"),
Default = true,
Callback = function(puah)
vikf.autoRoll = puah

if puah and vikf.setRollButton then
vikf.setRollButton(_d("dxkRWSYCFlouEEIAAhQ"), true)
end
end,
}, _d("WwUWVSsMD0IDOkQbARY"))

vikf.miscSection:Toggle({
Name = _d("dxkRWVQ8D18PDhYmAhZa"),
Default = true,
Callback = function(okqc)
vikf.autoQuickRoll = okqc

if okqc and vikf.setRollButton then
vikf.setRollButton(_d("ZxkMVR8/FVoAJ0MAGRVY"), true)
end
end,
}, _d("WwUWVSsMD0IDOkcBBBldMxdZGAE"))

vikf.uiSection = vikf.tab:Section({
Side = _d("ZAUCXgA"),
})

vikf.uiSection:Header({
Name = _d("YyU"),
})

vikf.uiSection:Toggle({
Name = _d("dA0GXRMfFUMCARYWAQ9E"),
Default = true,
Callback = function(lti)
pcall(function()
dmj:SetAcrylicBlurState(lti)
end)
end,
}, _d("QwU6VBUOEVEeCkMaCSVUABBE"))

function vikf.widthFactor(auxb)
return 1 + math.max(0, (auxb or 1) - 1) * 0.8
end

function vikf.scaleCap()
local uhiq = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local moug = math.min(120, math.floor(((uhiq.Y - 40 - 8 - 8) / 500) * 100))

while moug > 50 and (vikf.baseWidth or 720) * (moug / 100) * vikf.widthFactor(moug / 100) > uhiq.X - 16 do
moug = moug - 1
end

return math.max(50, moug)
end

function vikf.scaleCeiling()
return math.min(1.2, vikf.scaleCap() / 100)
end

function vikf.refreshScaleCap()
local plga = vikf.scaleSlider

if not plga then
return
end

local vrag = vikf.scaleCeiling()

pcall(function()
plga.Settings.Maximum = vrag
end)

local dic = tonumber(plga:GetValue()) or 1

if dic > vrag then
vikf.scaleTarget = vrag

pcall(function()
plga:UpdateValue(vrag)
end)
end
end

vikf.scaleSlider = vikf.uiSection:Slider({
Name = _d("YyVFRRcMFlM"),
Default = 1,
Minimum = 0.5,

Maximum = vikf.scaleCeiling(),
DisplayMethod = _d("YA0JQxE"),
Precision = 2,

Callback = function(ojbr)
vikf.scalePending = tonumber(ojbr)
vikf.scalePendingAt = os.clock()
end,
onInputComplete = function(kir)
local qvvk = vikf.scaleCeiling()

vikf.scaleTarget = math.clamp(tonumber(kir) or vikf.scalePending or 1, 0.5, qvvk)
vikf.scalePending = nil

vikf.scaleAnchor = nil

vikf.saveUi()
end,
}, _d("QwU6RRcMFlM"))

vikf.refreshScaleCap()

vikf.themeDropdown = vikf.uiSection:Dropdown({
Name = _d("YgQAWxFXWmADDFI"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = vikf.themeOrder,
Callback = function(mro)
local oljk = type(mro) == _d("Qg0HWhE") and mro[1] or mro

if type(oljk) == _d("RRgXXxoK") and vikf.presets[oljk] then
vikf.theme = oljk
vikf.accent = nil
vikf.applyTheme()

pcall(function()
vikf.themeDropdown:UpdateName(_d("YgQAWxFXWg") .. oljk)
end)

vikf.saveUi()
end
end,
}, _d("QwU6QhwIF1M"))

vikf.accentPicker = vikf.uiSection:Colorpicker({
Name = _d("dw8GUxoZWlUDCVkBHw"),
Default = Color3.fromRGB(168, 170, 176),
Alpha = 0,
Callback = function(eyrj)
vikf.accent = eyrj
vikf.applyTheme()
vikf.saveUi()
end,
}, _d("QwU6VxcOH1gY"))

vikf.codesSection = vikf.tab:Section({
Side = _d("ZAUCXgA"),
})

vikf.codesSection:Header({
Name = _d("dQMBUwc"),
})

vikf.codeText = _d("ZAkBUxEACRYJE1MGFFpVAwFTVBkSXx9FURUAHxYfDV8EHlpBBRFeWE0VWAlFUwIICE9MBlkBHRZTTApQVB4fVQMLUgdD")

function vikf.setCodeText(vsbi)
vikf.codeText = vsbi

pcall(function()
vikf.codeParagraph:UpdateBody(vsbi)
end)
end

function vikf.redeemCodes()
if vikf.redeeming then
return
end

local opb = etxi.RedeemCode
local aqw = pen:FindFirstChild(_d("ewMBQxgIKVUeDEYAHg"))
local cxut = aqw and aqw:FindFirstChild(_d("dQMBUzAMDlc"))
local bdcg, tqi = false, nil

if opb and cxut then
bdcg, tqi = pcall(function()
return require(cxut)
end)
end

local xvd = bdcg and type(tqi) == _d("Qg0HWhE") and tqi.Codes or nil

if not opb or type(xvd) ~= _d("Qg0HWhE") then
vikf.setCodeText(_d("YgQMRVQbH0QfDFkaTRVQTBFeEU0dVwEAFhwMCRYCChYXAh5TTAlfBxlaWR5FWBtNCFMIAFMZTQhTAQpCEUM"))
return
end

local bqc = {}

for oap in pairs(xvd) do
bqc[#bqc + 1] = oap
end

table.sort(bqc)

local smzv = #bqc

vikf.redeeming = true
vikf.setCodeText(_d("ZAkBUxEAE1gLRQ") .. smzv .. _d("Fg8KUhEeVBhC"))

task.spawn(function()
local my, otnv, lryr = 0, 0, 0
local ibcw = {}

for mbsn = 1, smzv do
if not uxq() then
break
end

local nshc = bqc[mbsn]
local atkp, csj = pcall(function()
return opb:InvokeServer(nshc)
end)

local okvu = atkp and type(csj) == _d("Qg0HWhE") and csj.success == true
local qtop = atkp and type(csj) == _d("Qg0HWhE") and tostring(csj.message or _d("")) or tostring(csj or _d(""))

if not okvu and string.find(string.lower(qtop), _d("QQ0MQg"), 1, true) then
task.wait(3.5)

atkp, csj = pcall(function()
return opb:InvokeServer(nshc)
end)

okvu = atkp and type(csj) == _d("Qg0HWhE") and csj.success == true
qtop = atkp and type(csj) == _d("Qg0HWhE") and tostring(csj.message or _d("")) or tostring(csj or _d(""))
end

if okvu then
my = my + 1
elseif string.find(string.lower(qtop), _d("VwAXUxUJAw"), 1, true) then
otnv = otnv + 1
else
lryr = lryr + 1

if #ibcw < 6 then
ibcw[#ibcw + 1] = nshc .. _d("DEw") .. (qtop ~= _d("") and qtop or _d("WANFVxoeDVMe"))
end
end

vikf.setCodeText(string.format(_d("EwhFWRJNX1JMSBZRCVpECQFTEQAfUkBFExBNG1oeAFcQFFYWSQEWBggcQx8AUlo"), mbsn, smzv, my, otnv, lryr))

if mbsn < smzv and uxq() then
task.wait(1.8)
end
end

local mmab = {
string.format(_d("ZAkBUxEAH1JMQFJYTRtaHgBXEBRaXg0BFlEJVhYeAFABHh9STEBSVAIcFkkBGA"), my, otnv, lryr, smzv),
}

for elxg, ymh in ipairs(ibcw) do
mmab[#mmab + 1] = ymh
end

vikf.redeeming = false
vikf.setCodeText(table.concat(mmab, _d("PA")))
end)
end

vikf.codesSection:Button({
Name = _d("ZAkBUxEAWlcACRYXAh5THw"),
Callback = function()
vikf.redeemCodes()
end,
})

vikf.codeParagraph = vikf.codesSection:Paragraph({
Header = _d("dQMBUwc"),
Body = vikf.codeText,
})

vikf.scriptSection = vikf.tab:Section({
Side = _d("ZAUCXgA"),
})

vikf.scriptSection:Header({
Name = _d("ZQ8XXwQZ"),
})

vikf.scriptSection:Button({
Name = _d("YwIJWRUJWkUPF18EGQ"),
Callback = function()
pcall(function()
dmj:Unload()
end)

getgenv().ACBXWindow = nil
getgenv().ACBXAllowReload = nil
end,
})

task.spawn(function()
while uxq() do

if os.clock() >= vikf.savesAt then
vikf.savesAt = os.clock() + 3

local dp = vikf.saves()
local lbiu = table.concat(dp, _d("Sg"))

if lbiu ~= vikf.knownSaves then
vikf.knownSaves = lbiu

pcall(function()
vikf.fileDropdown:ClearOptions()
vikf.fileDropdown:InsertOptions(dp)
end)
end

if vikf.selected and vikf.selectionShown ~= vikf.selected then
vikf.selectionShown = vikf.selected

pcall(function()
vikf.fileDropdown:UpdateSelection(vikf.selected)
end)
end
end

if vikf.autoSave and os.clock() >= vikf.autoSaveAt then
vikf.autoSaveAt = os.clock() + 60

local lnnk = vikf.selected or _d("UgkDVwEBDg")
local tzhv, uunl = vikf.save(lnnk)

vikf.selected = lnnk
vikf.lastText = tzhv and (_d("dxkRWVQeG0AJARY") .. lnnk .. _d("Fg0RFg") .. os.date(_d("EyRfEzk")) .. _d("GA"))
or (_d("dxkRWVQeG0AJRVAVBBZTCF8W") .. tostring(uunl))
end

if os.clock() >= vikf.themeAt then
vikf.themeAt = os.clock() + 3
vikf.applyTheme()
end

if os.clock() >= vikf.capAt then
vikf.capAt = os.clock() + 2
vikf.refreshScaleCap()
end

if os.clock() >= vikf.statusAt then
vikf.statusAt = os.clock() + 2

local edti = vikf.autoLoadName()
local jtc = table.concat({
_d("dxkRWVQBFVcIXxY") .. (edti or _d("WAMLUw")),
_d("ZQ0TUwdXWg") .. tostring(#vikf.saves()),
vikf.lastText,
}, _d("PA"))

if jtc ~= vikf.shownStatus then
vikf.shownStatus = jtc

pcall(function()
vikf.statusParagraph:UpdateBody(jtc)
end)
end
end

task.wait(0.25)
end
end)

task.spawn(function()
while uxq() do

local xhg = vikf.scalePending

if xhg and os.clock() - (vikf.scalePendingAt or 0) > 0.35 then
local lbea = vikf.scaleCeiling()
local fjr = math.clamp(xhg, 0.5, lbea)

vikf.scalePending = nil

if math.abs(fjr - vikf.scaleTarget) > 0.002 then
vikf.scaleTarget = fjr
vikf.scaleAnchor = nil

vikf.saveUi()
end
end

if math.abs(vikf.scaleTarget - vikf.scale) > 0.002 then
local pqf = vikf.guiRoot()

if pqf and not vikf.baseWidth then
vikf.baseWidth = pqf.Size.X.Offset
vikf.baseHeight = pqf.Size.Y.Offset
end

local jzwu = vikf.baseWidth or 720
local vbm = vikf.baseHeight or 500
local cmfm = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local ku, fct = 8, 40

if not vikf.scaleAnchor and pqf then

local lrpq = vikf.widthFactor(vikf.scaleTarget)
local ma, cyv = jzwu * lrpq * vikf.scaleTarget, vbm * vikf.scaleTarget
local xk = pqf.AbsolutePosition

vikf.scaleAnchor = Vector2.new(
math.clamp(xk.X, ku, math.max(ku, cmfm.X - ma - ku)),
math.clamp(xk.Y, fct, math.max(fct, cmfm.Y - cyv - ku))
)
end

local rx = vikf.scaleAnchor

vikf.scale = vikf.scale + (vikf.scaleTarget - vikf.scale) * 0.18

local fxv = vikf.widthFactor(vikf.scale)

pcall(function()
dmj:SetScale(vikf.scale)

if pqf then
local riuo = math.floor(jzwu * fxv)

pqf.Size = UDim2.fromOffset(riuo, math.floor(vbm))

local pbc = pqf:FindFirstChild(_d("dQMLQhEDDg"))

if pbc then
local iav = pqf:FindFirstChild(_d("ZQUBUxYMCA"))
local tls = math.floor(iav and iav.Size.X.Scale * riuo or riuo * 0.325)

pbc.Size = UDim2.new(0, math.max(0, riuo - tls), 1, 0)
end
end
end)

if pqf and rx then
local zcdb, rtkq = jzwu * fxv * vikf.scale, vbm * vikf.scale
local vrlp = math.clamp(rx.X, ku, math.max(ku, cmfm.X - zcdb - ku))
local ukjm = math.clamp(rx.Y, fct, math.max(fct, cmfm.Y - rtkq - ku))

local pnbk = pqf.Parent and pqf.Parent.AbsolutePosition or Vector2.zero

pcall(function()
pqf.Position = UDim2.fromOffset(math.floor(vrlp - pnbk.X), math.floor(ukjm - pnbk.Y))
end)
end
else

vikf.scaleAnchor = nil
end

task.wait()
end
end)

axd.misc.tierLabels = {}
axd.misc.labelToTier = {}

axd.misc.expSection = axd.misc.tab:Section({
Side = _d("egkDQg"),
})

axd.misc.expSection:Header({
Name = _d("cxQVUxAEDl8DC0VUneWh7oqO+w"),
})

axd.misc.claimToggle = axd.misc.expSection:Toggle({
Name = _d("dxkRWVQOFlcFCA"),
Default = false,
Callback = function(gdhw)
local ckoe = axd.misc.expeditions

ckoe.enabled = gdhw
ckoe.claimAt = 0

if gdhw then
ckoe.askedAt = 0
ckoe.request()
end
end,
}, _d("VxkRWSsOFlcFCA"))

axd.misc.rewardToggle = axd.misc.expSection:Toggle({
Name = _d("dxkRWVQOFlkfABYGCA1XHgFF"),
Default = false,
Callback = function(lpf)
local zas = axd.misc.expeditions

zas.autoClose = lpf

if lpf then
zas.closeRewards()
end
end,
}, _d("UxQVaRUYDlkzBlobHh8"))

axd.misc.startToggle = axd.misc.expSection:Toggle({
Name = _d("dxkRWVQeDlceEQ"),
Default = false,
Callback = function(oodb)
local vvx = axd.misc.expeditions

if oodb and not next(vvx.tiersWanted) then
vvx.autoStart = false

pcall(function()
axd.misc.startToggle:UpdateState(false)
end)

dmj:Dialog({
Title = _d("dxkRWVQeDlceERYaCB9SH0VXVBkTUx4"),
Description = _d("ZgUGXVQMDhYAAFcHGVpZAgAWAAQfREwMWFQZElNMMV8RH1pSHgpGEAINWEwDXwYeDhhMIFcHFFpCDQ5TB00OXglFVRwIG0YJFkJUDhtECBYaVCMTUQQRWxUfHxYYDVNUHxtECRZCWE0bWAhFVxoUWlgZCFQRH1pZCkVCHAgXFg8EWFQfD1hMBEJUAhRVCUs"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})

return
end

vvx.autoStart = oodb
vvx.startedAt = {}

if oodb then
vvx.askedAt = 0
vvx.request()
end
end,
}, _d("VxkRWSseDlceEQ"))

for cnx, kkqi in ipairs(axd.misc.expeditions.tiers()) do
table.insert(axd.misc.tierLabels, tostring(kkqi.name))
axd.misc.labelToTier[tostring(kkqi.name)] = kkqi.id
end

axd.misc.building = true

axd.misc.tierDropdown = axd.misc.expSection:Dropdown({
Name = _d("YgUARA"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = axd.misc.tierLabels,
Callback = function(qeu)
local jfz = axd.misc.expeditions

if axd.misc.building then
return
end

local zlf = {}
local nxw = {}

if type(qeu) == _d("Qg0HWhE") then
for utz, smo in pairs(qeu) do
local whav = axd.misc.labelToTier[tostring(utz)]

if smo and whav then
zlf[whav] = true
table.insert(nxw, tostring(utz))
end
end
end

table.sort(nxw)
jfz.tiersWanted = zlf

pcall(function()
axd.misc.tierDropdown:UpdateName(#nxw > 0 and (_d("YgUARFSP+pRM") .. table.concat(nxw, _d("Gkw"))) or _d("YgUARFSP+pRMC1kaCA"))
end)
end,
}, _d("QgUARA"))

task.defer(function()
axd.misc.building = false
end)

axd.misc.expSection:Button({
Name = _d("dQAEXxlNFFkb"),
Callback = function()
local wmw = axd.misc.expeditions

if not wmw.claim() then
dmj:Notify({
Title = _d("cxQVUxAEDl8DC0U"),
Description = _d("eAMRXh0DHRYEBEVUDhVbCUVUFQ4RFhUAQlo"),
Lifetime = 5,
})
end
end,
})

axd.misc.expSection:Button({
Name = _d("ZQkLUlQeH1oJBkIRCQ"),
Callback = function()
local www = axd.misc.expeditions

if not next(www.tiersWanted) then
dmj:Notify({
Title = _d("cxQVUxAEDl8DC0U"),
Description = _d("ZgUGXVQMDhYAAFcHGVpZAgAWAAQfREwMWFQZElNMAUQbHR5ZGwsWEgQIRRhL"),
Lifetime = 5,
})

return
end

local po = {}
local ngoq = 0

for fib, pzz in ipairs(www.tiers()) do
if www.tiersWanted[pzz.id] and www.status(pzz.id) == _d("VxoEXxgMGFoJ") then
if www.start(pzz.id, po) then
ngoq = ngoq + 1
end
end
end

if ngoq == 0 then
dmj:Notify({
Title = _d("cxQVUxAEDl8DC0U"),
Description = _d("eAMRXh0DHRYPCkMYCVpUCUVFEQMODEwRXhFNCVMAAFUACB4WGAxTBh5aVx4AFhUBCFMNAU9UAg9CQEVZBk0OXgkXU1QMCFNMC1kATRxZGRcWEQETUQUHWhFNGVceAUVUCxVETBFeEQBU"),
Lifetime = 6,
})
end
end,
})

axd.misc.expInfo = axd.misc.tab:Section({
Side = _d("ZAUCXgA"),
})

axd.misc.expInfo:Header({
Name = _d("cxQVUxAEDl8DC0U"),
})

axd.misc.expParagraph = axd.misc.expInfo:Paragraph({
Header = _d("ZRgEQgEe"),
Body = axd.misc.expeditions.text(),
})

axd.misc.expeditions.loadRewards()

axd.misc.expRewardParagraph = axd.misc.expInfo:Paragraph({
Header = _d("dQAEXxkIHg"),
Body = axd.misc.expeditions.rewardsText(),
})

task.spawn(function()
local uxcc = axd.misc.expeditions
local cfiz = zem(_d("ZRULVTEVClMIDEIdAhRF"), 3)

if cfiz then
cfiz.OnClientEvent:Connect(function(lvwy)
if type(lvwy) ~= _d("Qg0HWhE") then
return
end

uxcc.state = lvwy

uxcc.offset = (tonumber(lvwy.now) or os.time()) - os.time()
uxcc.syncedAt = os.clock()

if type(lvwy.rewards) == _d("Qg0HWhE") and #lvwy.rewards > 0 then
table.insert(uxcc.rewardLog, 1, {
at = os.time(),
title = tostring(lvwy.rewardTitle or _d("cxQVUxAEDl8DCw")),
items = lvwy.rewards,
})

while #uxcc.rewardLog > 8 do
table.remove(uxcc.rewardLog)
end

uxcc.saveRewards()

if uxcc.autoClose then

task.delay(0.35, uxcc.closeRewards)
end
end
end)
end

while uxq() do

if os.clock() - uxcc.askedAt > 1 and os.clock() - uxcc.syncedAt > 20 then
uxcc.request()
end

if uxcc.enabled then
uxcc.claim()
end

if uxcc.autoClose then
uxcc.closeRewards()
end

if uxcc.autoStart and next(uxcc.tiersWanted) then
local ctqg = {}

for uiri, xks in ipairs(uxcc.tiers()) do
if uxcc.tiersWanted[xks.id] and uxcc.status(xks.id) == _d("VxoEXxgMGFoJ") then
if uxcc.start(xks.id, ctqg) then
break
end
end
end
end

local xb = uxcc.text()

if axd.misc.expParagraph and xb ~= axd.misc.expShown then
axd.misc.expShown = xb

pcall(function()
axd.misc.expParagraph:UpdateBody(xb)
end)
end

local xar = uxcc.rewardsText()

if axd.misc.expRewardParagraph and xar ~= uxcc.rewardsShown then
uxcc.rewardsShown = xar

pcall(function()
axd.misc.expRewardParagraph:UpdateBody(xar)
end)
end

task.wait(0.75)
end
end)

axd.misc.util = {
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

function axd.misc.util.hook()
local nn = axd.misc.util

if nn.hooked then
return
end

nn.hooked = true

if etxi.SyncCollection then
etxi.SyncCollection.OnClientEvent:Connect(function(dtqy)
if type(dtqy) == _d("Qg0HWhE") then
nn.profile = dtqy
nn.profileAt = os.clock()
end
end)
end

if etxi.SyncAchievements then
etxi.SyncAchievements.OnClientEvent:Connect(function(hzte)
if type(hzte) == _d("Qg0HWhE") then
nn.ach = hzte
end
end)
end

if etxi.SyncQuests then
etxi.SyncQuests.OnClientEvent:Connect(function(ltxv)
if type(ltxv) == _d("Qg0HWhE") and type(ltxv.list) == _d("Qg0HWhE") then
nn.quests = ltxv
end
end)
end

if etxi.SyncPeriodicQuests then
etxi.SyncPeriodicQuests.OnClientEvent:Connect(function(jdmi, vrs)
if jdmi == _d("QQkAXRgU") and type(vrs) == _d("Qg0HWhE") and type(vrs.list) == _d("Qg0HWhE") then
nn.weekly = vrs
end
end)
end
end

function axd.misc.util.askProfile()
local xt = axd.misc.util

if os.clock() - xt.askedAt < 1.5 then
return
end

xt.askedAt = os.clock()

if etxi.RequestSync then
pcall(function()
etxi.RequestSync:FireServer()
end)
end
end

function axd.misc.util.currentProfile()
local mkza = axd.misc.util

if type(mkza.profile) ~= _d("Qg0HWhE") then
mkza.askProfile()

return nil
end

if os.clock() - mkza.profileAt > 20 then
mkza.askProfile()
end

return mkza.profile
end

function axd.misc.util.forgetProfile()
local bbm = axd.misc.util

bbm.profile = nil
bbm.profileAt = 0
bbm.askedAt = 0
end

function axd.misc.util.indexedTotal(yvuo)
local lue = 0

for ydod, fz in pairs((yvuo and yvuo.cardIndex) or {}) do
if fz then
lue = lue + 1
end
end

return lue
end

function axd.misc.util.indexPending(ys)
local wq = {}

if type(ys) ~= _d("Qg0HWhE") then
return wq
end

local kswu = axd.misc.util.indexedTotal(ys)
local uj = ys.indexMilestones or {}

for gyw = 1, 30 do
if not uj[gyw] and gyw * 5 <= kswu then
table.insert(wq, gyw)
end
end

return wq
end

function axd.misc.util.indexFrame()
local xqxa = xjwi:FindFirstChild(_d("dQ0XUj0DHlMUIkMd"))

return xqxa and xqxa:FindFirstChild(_d("fwIBUwwrCFcBAA"))
end

function axd.misc.util.clickButton(fqt)
if not fqt then
return false
end

if firesignal then
local tfbg = pcall(firesignal, fqt.MouseButton1Click)

if tfbg then
return true
end
end

return pcall(function()
fqt:Activate()
end)
end

function axd.misc.util.closeIndex()
local kpwe = axd.misc.util.indexFrame()

if not kpwe or not kpwe.Visible then
return false
end

pcall(function()
local ckiv = pen:FindFirstChild(_d("ewMBQxgIKVUeDEYAHg"))
local slp = ckiv and ckiv:FindFirstChild(_d("ewkLQzkMFFcLAEQ"))

if slp then
require(slp).close(kpwe)
end
end)

axd.misc.util.clickButton(kpwe:FindFirstChild(_d("dQAKRREvD0IYClg")))

pcall(function()
kpwe.Visible = false
end)

return true
end

function axd.misc.util.claimIndex()
local tkh = axd.misc.util

if os.clock() < tkh.indexAt then
return false
end

local cq = tkh.currentProfile()

if not cq then
return false
end

local wca = tkh.indexPending(cq)
local feq = wca[1]

if not feq then
return false
end

local il = tkh.indexedTotal(cq)
local snk = tkh.indexAsked

if type(snk) == _d("Qg0HWhE") and snk.milestone == feq and snk.total == il then
return false
end

tkh.indexAsked = { milestone = feq, total = il }

pcall(function()
etxi.ClaimIndexReward:FireServer(feq)
end)

tkh.indexAt = os.clock() + 1.5

tkh.profile = nil
tkh.profileAt = 0

task.delay(0.4, tkh.closeIndex)

return true
end

function axd.misc.util.achPending()
local feo = {}
local rm = axd.misc.util.ach

if type(rm) ~= _d("Qg0HWhE") then
return feo
end

for mdk, qwo in ipairs(rm.chains or {}) do
for xrkf, ehxs in ipairs(qwo.levels or {}) do
if ehxs.reached and not ehxs.claimed then
table.insert(feo, { chain = tostring(qwo.id), index = ehxs.index, name = tostring(ehxs.name or ehxs.index) })
end
end
end

return feo
end

function axd.misc.util.claimAchievement()
local km = axd.misc.util

if os.clock() < km.achAt then
return false
end

if type(km.ach) ~= _d("Qg0HWhE") then
if os.clock() - km.achAskedAt > 4 and etxi.RequestAchievements then
km.achAskedAt = os.clock()

pcall(function()
etxi.RequestAchievements:FireServer()
end)
end

return false
end

for jpe, yay in ipairs(km.achPending()) do
pcall(function()
etxi.ClaimAchievement:FireServer(yay.chain, yay.index)
end)

km.achAt = os.clock() + 1

task.delay(1, function()
if etxi.RequestAchievements then
pcall(function()
etxi.RequestAchievements:FireServer()
end)
end
end)

return true
end

return false
end

function axd.misc.util.questRows()
local sszk = axd.misc.util
local pton = {}

for bcah, kdqm in ipairs({ { list = _d("Ug0MWg0"), payload = sszk.quests }, { list = _d("QQkAXRgU"), payload = sszk.weekly } }) do
for fvsq, vq in ipairs((type(kdqm.payload) == _d("Qg0HWhE") and kdqm.payload.list) or {}) do
if type(vq) == _d("Qg0HWhE") then
table.insert(pton, { list = kdqm.list, index = fvsq, quest = vq })
end
end
end

return pton
end

function axd.misc.util.questPending()
local hcvr = {}

for iho, gve in ipairs(axd.misc.util.questRows()) do
local anar = gve.quest

if not anar.claimed and (tonumber(anar.progress) or 0) >= (tonumber(anar.target) or math.huge) then
table.insert(hcvr, gve)
end
end

return hcvr
end

function axd.misc.util.askQuests()
local uib = axd.misc.util

if os.clock() - uib.questAskedAt > 4 and etxi.RequestQuests then
uib.questAskedAt = os.clock()

pcall(function()
etxi.RequestQuests:FireServer()
end)
end

if os.clock() - uib.weeklyAskedAt > 4 and etxi.RequestPeriodicQuests then
uib.weeklyAskedAt = os.clock()

pcall(function()
etxi.RequestPeriodicQuests:FireServer(_d("QQkAXRgU"))
end)
end
end

function axd.misc.util.claimQuest()
local jmku = axd.misc.util

if os.clock() < jmku.questAt then
return false
end

if type(jmku.quests) ~= _d("Qg0HWhE") and type(jmku.weekly) ~= _d("Qg0HWhE") then
jmku.askQuests()

return false
end

for bg, ybdi in ipairs(jmku.questPending()) do
if ybdi.list == _d("QQkAXRgU") then
if etxi.ClaimPeriodicQuest then
pcall(function()
etxi.ClaimPeriodicQuest:FireServer(_d("QQkAXRgU"), ybdi.index)
end)
end
else
pcall(function()
etxi.ClaimQuest:FireServer(ybdi.index)
end)
end

jmku.questAt = os.clock() + 1.2

task.delay(1, function()
jmku.askQuests()
end)

return true
end

return false
end

function axd.misc.util.packCatalog()
local ldu = axd.misc.util

if ldu.packs then
return ldu.packs
end

local dup = {}
local bbx, euym = pcall(function()
return require(pen.ModuleScripts.PackData)
end)

if bbx and type(euym) == _d("Qg0HWhE") and type(euym.Packs) == _d("Qg0HWhE") then
for reub, qkl in ipairs(euym.Packs) do
if qkl.id then
table.insert(dup, { id = tostring(qkl.id), name = tostring(qkl.name or qkl.id) })
end
end
end

ldu.packs = dup

return dup
end

function axd.misc.util.packUnlocked(iqiz, elbx)
if type(iqiz) ~= _d("Qg0HWhE") then
return true
end

local lef, vyw = pcall(function()
return require(pen.ModuleScripts.PackData)
end)
local pov, mrqa = pcall(function()
return require(pen.ModuleScripts.PackSlotData)
end)

if not (lef and pov) then
return true
end

local eksn = vyw.ById and vyw.ById[elbx]

if not eksn then
return false
end

local avy, ocb = pcall(mrqa.isPackUnlocked, eksn, iqiz)

return (not avy) or ocb == true
end

function axd.misc.util.visit(wndj)
local cmbw = workspace:FindFirstChild(_d("eDwmRQ"))
local fcl = cmbw and cmbw:FindFirstChild(wndj)
local jusz = nsmz.Character
local rfga = jusz and jusz:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))
local yoc = fcl and (fcl:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA")) or fcl:FindFirstChildWhichIsA(_d("dA0WUyQMCEI"), true))

if not (yoc and rfga) then
return nil
end

local wd = rfga.CFrame

rfga.CFrame = CFrame.new((yoc.CFrame * CFrame.new(0, 0, -5)).Position)

return wd
end

function axd.misc.util.returnTo(qpfm)
local ca = nsmz.Character
local jqv = ca and ca:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if jqv and qpfm then
jqv.CFrame = qpfm
end
end

function axd.misc.util.applyPacks(kt, idk)
local hu = axd.misc.util

if os.clock() < hu.packAt then
return false, _d("YQ0MQlQMWlsDCFMaGVQ")
end

local bjp = hu.currentProfile()

if not bjp then
return false, _d("ZAkEUh0DHRYVCkMGTQpEAwNfGAhaG0wRRA1NG1ENDFhUBBQWDUVFEQ4VWAhL")
end

if idk and (tonumber(bjp.packSlots) or 1) < 2 then
return false, _d("ZQAKQlRfWlgJAFIHTQ5eCUVTDBkIV0wVVxcGWkUACkJUChtbCRVXBx5U")
end

if not (etxi.OpenPackShop and etxi.EquipPack) then
return false, _d("YgQAFgQMGV1MFl4bHVpfH0VYGxlaXwJFQhwECRYLBFsRTQxTHhZfGwNU")
end

hu.packAt = os.clock() + 8

task.spawn(function()
local cel = hu.visit(_d("eAMHWhEeCV8CAkU"))

if not cel then
return
end

pcall(function()
etxi.OpenPackShop:FireServer(_d("Rg0GXSsAH0QPDVcaGQ"))
end)

task.wait(1.2)

if kt then
pcall(function()
etxi.EquipPack:FireServer(kt, 1)
end)
end

if idk then
task.wait(0.8)

pcall(function()
etxi.EquipPack:FireServer(idk, 2)
end)
end

task.wait(0.8)
hu.returnTo(cel)
hu.forgetProfile()
end)

return true
end

function axd.misc.util.accScore(gno)
local nnva = gno.effects or {}

return (nnva.luckBonus or 0) * 10
+ ((nnva.luckMult or 1) - 1) * 200
+ ((nnva.borderLuckMult or 1) - 1) * 200
- ((nnva.rollCdMult or 1) - 1) * 30
end

function axd.misc.util.accCatalog()
local bpuq = axd.misc.util

if bpuq.accessories then
return bpuq.accessories
end

local ldcm = {}

for un, rtky in ipairs({ _d("dw8GUwceFUQVIVcADA"), _d("dw8GUwceFUQVIVcADEg") }) do
local wrc, ixn = pcall(function()
return require(pen.ModuleScripts[rtky])
end)

if wrc and type(ixn) == _d("Qg0HWhE") and type(ixn.Accessories) == _d("Qg0HWhE") then
for tqnd, kwc in ipairs(ixn.Accessories) do
if kwc.id then
table.insert(ldcm, {
id = tostring(kwc.id),
name = tostring(kwc.name or kwc.id),
shop = un,

shopName = un == 1 and _d("dw8GUwceFUQVRWUcAgo") or _d("exUWQhEfE1kZFhY5DBQ"),
raidable = kwc.raidShopOnly == true,
hidden = kwc.hidden == true,
requirements = kwc.requirements or {},
score = axd.misc.util.accScore(kwc),
})
end
end
end
end

bpuq.accessories = ldcm

return ldcm
end

function axd.misc.util.accOwned(oqam)
local cv = {}

for mag, div in ipairs((oqam and oqam.accessories) or {}) do
cv[tostring(div)] = true
end

return cv
end

function axd.misc.util.accMeets(asq, jyxr)
for lnw, zpd in ipairs(jyxr.requirements) do
local lvns = asq.cards and asq.cards[zpd.cardId]
local rkcn = type(lvns) == _d("Qg0HWhE") and (tonumber(lvns[zpd.borderLevel]) or 0) or 0

if rkcn < (tonumber(zpd.amount) or 0) then
return false
end
end

return true
end

function axd.misc.util.accPlan(aydd)
local fr = axd.misc.util
local qkn = fr.accOwned(aydd)
local clh = {}

for uyzv, esle in ipairs(fr.accCatalog()) do
if not qkn[esle.id] and not esle.raidable and not esle.hidden and fr.accMeets(aydd, esle) then
local zzz = clh[esle.shop]

if not zzz or esle.score > zzz.score then
clh[esle.shop] = esle
end
end
end

return clh
end

function axd.misc.util.accPicks(zw)
local jyv = axd.misc.util
local uvb = jyv.accOwned(zw)
local zbb, ixos

for wti, ee in ipairs(jyv.accCatalog()) do
if uvb[ee.id] then
if not zbb or ee.score > zbb.score then
zbb = ee
end
elseif not ee.raidable and not ee.hidden and jyv.accMeets(zw, ee) then
if not ixos or ee.score > ixos.score then
ixos = ee
end
end
end

return zbb, ixos
end

function axd.misc.util.equipBest()
local zsl = axd.misc.util
local upvo = zsl.currentProfile()

if not upvo or not etxi.EquipAccessory then
return false
end

local guqg = zsl.accPicks(upvo)

if not guqg or upvo.equippedAccessory == guqg.id then
return guqg ~= nil
end

pcall(function()
etxi.EquipAccessory:FireServer(guqg.id)
end)

task.delay(1.5, function()
zsl.forgetProfile()
end)

return true
end

function axd.misc.util.buyBest()
local alc = axd.misc.util

if os.clock() < alc.accAt then
return false, _d("YQ0MQlQMWlsDCFMaGVQ")
end

if gsu.busy(1) or gsu.busy(2) then
alc.accNote = _d("fwJFV1QPG0IYCVNUQFpXTBZeGx1aQh4MRlQaFUMAARYRAx4WBRE")
return false, _d("fwJFV1QPG0IYCVNUQFpXTBZeGx1aQh4MRlQaFUMAARYRAx4WBREY")
end

local apra = alc.currentProfile()

if not apra then
alc.accNote = _d("ZAkEUh0DHRYVCkMGTQpEAwNfGAhaG0wSXxgBWkIeHBYVChtfAkVfGk0bFh8AVRsDHg")
return false, _d("ZAkEUh0DHRYVCkMGTQpEAwNfGAhaG0wRRA1NG1ENDFhUBBQWDUVFEQ4VWAhL")
end

local qp = alc.accPlan(apra)
local lne = {}

for rni = 1, 2 do
if qp[rni] then
table.insert(lne, qp[rni].name)
end
end

if #lne == 0 then
alc.accNote = _d("eAMRXh0DHRYCAEFUGBRaAwZdEQlaTwkRFllNDl4JRVUVHx5FTANZBk0TQkwERBFNFFkYRV8aTQ5eCUVVGwEWUw8RXxsD")
return false, _d("eAMRXh0DHRYCAEFUDhtYTAdTVBgUWgMGXREJWk8JERZZTQ5eCUVVFR8eRUwDWQZNE0JMBEQRTRRZGEVfGk0OXglFVRsBFlMPEV8bA1Q")
end

alc.accAt = os.clock() + 12
alc.accNote = _d("YQ0JXR0DHRYYChYABR8WDwpDGhkfREwDWQZN") .. table.concat(lne, _d("Fg0LUlQ"))

task.spawn(function()
for cnuc = 1, 2 do
local ipwe = qp[cnuc]

if ipwe then
local jjkm = cnuc == 1 and _d("RhkXRQEEDlMIAQ") or _d("QQ0DUBEBF1cCAFcAHg1XCgNTGB4")
local oe = cnuc == 1 and etxi.OpenAccessoryShop or etxi.OpenAccessoryShop2
local cbos = cnuc == 1 and etxi.BuyAccessory or etxi.BuyAccessory2
local xfst = jjkm and alc.visit(jjkm) or nil

if not xfst then
local iqvv = workspace:FindFirstChild(_d("eDwmRQ"))
local ndsd = iqvv and iqvv:FindFirstChild(jjkm)

if ndsd and os.clock() - (alc.worldAskedAt or 0) > 25 then

alc.worldAskedAt = os.clock()
alc.accNote = _d("dQQERBUODlMeRVgbGVpECQRSDU1XFhgXTx0DHRYNAlcdA1pFBApEAAED")
elseif not ndsd and os.clock() - (alc.worldAskedAt or 0) > 25 then

alc.worldAskedAt = os.clock()
alc.accNote = _d("eANFVRsYFEIJFxYdA1pCBAxFVBoVRAABFllNDlcHDFgTTQ5eCUVaGw8YT0wRUxgIClkeEQ")

pcall(function()
etxi.TeleportToWorld:FireServer(_d("WgMHVA0"))
end)

task.wait(4.5)
xfst = alc.visit(jjkm)
end
end

if xfst and oe and cbos then

task.wait(0.9)

pcall(function()
oe:FireServer()
end)

task.wait(1.2)

pcall(function()
cbos:FireServer(ipwe.id)
end)

task.wait(0.9)
alc.returnTo(xfst)
alc.accNote = _d("dAMQURwZWg") .. tostring(ipwe.name)
elseif not xfst then
alc.accNote = _d("dQMQWhBNFFkYRUQRDBleTBFeEU0ZWRkLQhEfWhtMEUQNTRtRDQxYVAQUFg1FWxsAH1gY")
end

task.wait(0.6)
end
end

alc.forgetProfile()

for zsu = 1, 8 do
if type(alc.profile) == _d("Qg0HWhE") then
break
end

alc.askProfile()
task.wait(0.7)
end

alc.equipBest()
end)

return true, table.concat(lne, _d("Gkw"))
end

function axd.misc.util.indexText()
local bszr = axd.misc.util

if type(bszr.profile) ~= _d("Qg0HWhE") then
return _d("ZAkEUh0DHRYVCkMGTRlXHgEWHQMeUxRLGFo")
end

local rnpl = bszr.indexPending(bszr.profile)
local xh = 0

for opep, yhmb in pairs(bszr.profile.indexMilestones or {}) do
if yhmb then
xh = xh + 1
end
end

local ivk = tostring(bszr.indexedTotal(bszr.profile)) .. _d("Fg8ERBAeWl8CAVMMCB4aTA") .. tostring(xh) .. _d("FgMDFkddWkQJElcGCQkWDwlXHQAfUg")

if #rnpl > 0 then
ivk = ivk .. _d("PD4AVxAUQBY") .. table.concat(rnpl, _d("Gkw"))
end

return ivk
end

function axd.misc.util.achText()
local sgzn = axd.misc.util

if type(sgzn.ach) ~= _d("Qg0HWhE") then
return _d("ZAkEUh0DHRYNBl4dCAxTAQBYAB5UGEI")
end

local wdtc = sgzn.achPending()
local ecj = 0

for hofs, zubl in ipairs(sgzn.ach.chains or {}) do
for jvh in ipairs(zubl.levels or {}) do
ecj = ecj + 1
end
end

return tostring(#wdtc) .. _d("FgMDFg") .. tostring(ecj) .. _d("Fg0GXh0IDFMBAFgAHlpECQRSDQ")
end

function axd.misc.util.questText()
local hlta = axd.misc.util

if type(hlta.quests) ~= _d("Qg0HWhE") and type(hlta.weekly) ~= _d("Qg0HWhE") then
return _d("ZAkEUh0DHRYdEFMHGQkYQks")
end

local ivkc, njla = 0, 0

for mgkf, qax in ipairs(hlta.questPending()) do
if qax.list == _d("QQkAXRgU") then
njla = njla + 1
else
ivkc = ivkc + 1
end
end

local mjsg = type(hlta.quests) == _d("Qg0HWhE") and #(hlta.quests.list or {}) or 0
local jwm = type(hlta.weekly) == _d("Qg0HWhE") and #(hlta.weekly.list or {}) or 0

return tostring(ivkc) .. _d("FgMDFg") .. tostring(mjsg) .. _d("FggEXxgUWkQJBFINZw")
.. tostring(njla) .. _d("FgMDFg") .. tostring(jwm) .. _d("FhsAUx8BAxYeAFcQFA")
end

function axd.misc.util.packText()
local rmbt = axd.misc.util
local eto = rmbt.profile

if type(eto) ~= _d("Qg0HWhE") then
return _d("ZAkEUh0DHRYVCkMGTQpXDw5FWkNU")
end

local function dhis(yqj)
for rk, bi in ipairs(rmbt.packCatalog()) do
if bi.id == yqj then
return bi.name
end
end

return tostring(yqj)
end

local rkw = _d("ZQAKQlRcQBY") .. dhis(eto.equippedPack)

if (tonumber(eto.packSlots) or 1) >= 2 then
rkw = rkw .. _d("PD8JWQBNSAxM") .. dhis(eto.equippedPack2)
else
rkw = rkw .. _d("PD8JWQBNSAxMAlcZCApXHxYWGgIOFgMSWBEJ")
end

return rkw
end

function axd.misc.util.accText()
local aj = axd.misc.util
local bqge = aj.profile

if type(bqge) ~= _d("Qg0HWhE") then
return _d("ZAkEUh0DHRYVCkMGTRtVDwBFBwIIXwkWGFpD")
end

local wjof = aj.accPicks(bqge)
local sfb = aj.accPlan(bqge)
local dnd = _d("WAMLUw")

for iyc, nso in ipairs(aj.accCatalog()) do
if nso.id == bqge.equippedAccessory then
dnd = nso.name .. _d("FkQ") .. nso.shopName .. _d("Hw")
end
end

local tcu = _d("cx0QXwQdH1JWRQ") .. dnd

if wjof then
tcu = tcu .. _d("PC4ARQBNFUECAFJOTQ") .. wjof.name
end

tcu = tcu .. _d("PC0GVREeCVkeHBYnBRVGVkU") .. (sfb[1] and sfb[1].name or _d("WAMRXh0DHRYCAEE"))
tcu = tcu .. _d("PCEcRQAICF8DEEVUIBtYVkU") .. (sfb[2] and sfb[2].name or _d("WAMRXh0DHRYCAEE"))

if aj.accNote then
tcu = tcu .. _d("PCAERQBNDkQFFQxU") .. aj.accNote
end

return tcu
end

axd.misc.util.hook()
axd.misc.util.askProfile()

axd.misc.indexSection = axd.misc.tab:Section({
Side = _d("egkDQg"),
})

axd.misc.indexSection:Header({
Name = _d("dQ0XUlQkFFIJHRaE8umx"),
})

axd.misc.indexToggle = axd.misc.indexSection:Toggle({
Name = _d("dxkRWVQOFlcFCA"),
Default = false,
Callback = function(iae)
axd.misc.util.indexOn = iae
axd.misc.util.indexAt = 0

axd.misc.util.indexAsked = nil
end,
}, _d("VxkRWSsOFlcFCGlG"))

axd.misc.indexSection:Button({
Name = _d("dQAEXxlNFFkb"),
Callback = function()
local pgh = axd.misc.util

pgh.indexAt = 0
pgh.indexAsked = nil

if not pgh.claimIndex() then
dmj:Notify({
Title = _d("dQ0XUlQkFFIJHQ"),
Description = _d("eANFWx0BH0UYClgRTRNFTBdTFQkDFhgKFhcBG18BSw"),
Lifetime = 5,
})
end
end,
})

axd.misc.claimSection = axd.misc.tab:Section({
Side = _d("egkDQg"),
})

axd.misc.claimSection:Header({
Name = _d("dw8NXxEbH1sJC0IHTVwWPRBTBxkJFpz6ufI"),
})

axd.misc.achToggle = axd.misc.claimSection:Toggle({
Name = _d("dxkRWVQOFlcFCBYVDhJfCRNTGQgUQh8"),
Default = false,
Callback = function(wt)
axd.misc.util.achOn = wt
axd.misc.util.achAt = 0

if wt and etxi.RequestAchievements then
pcall(function()
etxi.RequestAchievements:FireServer()
end)
end
end,
}, _d("VxkRWSsOFlcFCGkVDhJfCRNTGQgUQh8"))

axd.misc.questToggle = axd.misc.claimSection:Toggle({
Name = _d("dxkRWVQOFlcFCBYFGB9FGBY"),
Default = false,
Callback = function(qrqf)
axd.misc.util.questOn = qrqf
axd.misc.util.questAt = 0
axd.misc.util.questAskedAt = 0
axd.misc.util.weeklyAskedAt = 0

if qrqf then
axd.misc.util.askQuests()
end
end,
}, _d("VxkRWSsOFlcFCGkFGB9FGBY"))

axd.misc.claimSection:Button({
Name = _d("dQAEXxlNG1oARVgbGg"),
Callback = function()
local hs = axd.misc.util

hs.achAt = 0
hs.questAt = 0

local gxv = hs.claimAchievement()
local idl = hs.claimQuest()

if not (gxv or idl) then
dmj:Notify({
Title = _d("dw8NXxEbH1sJC0IHTVwWPRBTBxkJ"),
Description = _d("eAMRXh0DHRYFFhYGCBtSFUVCG00ZWg0MW1o"),
Lifetime = 5,
})
end
end,
})

axd.misc.packSection = axd.misc.tab:Section({
Side = _d("egkDQg"),
})

axd.misc.packSection:Header({
Name = _d("dQ0XUlQ9G1UHFhaE8vSC"),
})

axd.misc.packSection:Paragraph({
Header = _d("YhsKFgcBFUIf"),
Body = _d("ZgUGXQdNG0YcCU9UAhRaFUVBHAgUFhUKQ1QdCFMfFhY1HQpaFUVGFQ4RRUBFVBEOG0MfABYABR8WHxJfAA4SFhsEWh8eWkIDRUIcCFpbCRdVHAwUQkI"),
})

local mdj = {}
local jx = {}

for wj, tev in ipairs(axd.misc.util.packCatalog()) do
table.insert(mdj, tev.name)
jx[tev.name] = tev.id
end

axd.misc.packSlotOne = nil
axd.misc.packSlotTwo = nil

axd.misc.packDropdownOne = axd.misc.packSection:Dropdown({
Name = _d("ZQAKQlRc"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = mdj,
Callback = function(tbq)
local ixzu = type(tbq) == _d("Qg0HWhE") and tbq[1] or tbq

axd.misc.packSlotOne = jx[tostring(ixzu)]
end,
}, _d("RQAKQitc"))

axd.misc.packDropdownTwo = axd.misc.packSection:Dropdown({
Name = _d("ZQAKQlRf"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = mdj,
Callback = function(tafa)
local fws = type(tafa) == _d("Qg0HWhE") and tafa[1] or tafa

axd.misc.packSlotTwo = jx[tostring(fws)]
end,
}, _d("RQAKQitf"))

axd.misc.packSection:Button({
Name = _d("dxwVWg1NClcPDkU"),
Callback = function()
local trvf = axd.misc.util
local ollq = axd.misc.packSlotOne
local ttxj = axd.misc.packSlotTwo

if not ollq then
dmj:Notify({
Title = _d("dQ0XUlQ9G1UHFg"),
Description = _d("ZgUGXVQMWkYNBl1UCxVETBZaGxlaB0wDXwYeDhg"),
Lifetime = 5,
})

return
end

local cxk, yc = trvf.applyPacks(ollq, ttxj)

if not cxk then
dmj:Dialog({
Title = _d("dQ0XUlQ9G1UHFg"),
Description = yc,
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})
end
end,
})

axd.misc.cards = {
rarityLabels = { _d("dwAJ"), _d("eAMXWxUB"), _d("cQMJUg"), _d("ZA0MWBYCDQ"), _d("YwIMQBEfCVcA") },
borderOf = { Normal = 1, Gold = 2, Rainbow = 3, Universal = 4 },
mergeOn = false,
deconOn = false,
mergeWanted = {},
deconWanted = {},
mergeAt = 0,
deconAt = 0,
mergeDone = _d("eAMRXh0DHRYfAFgATQNTGA"),
deconDone = _d("eAMRXh0DHRYfAFgATQNTGA"),

inFlight = false,

interval = 3600,
manualGap = 20,
manualAt = 0,

protectedPrefixes = { weather = true, boss = true, raid = true, wb = true, fish = true, hw = true, event = true },

deconExceptions = { weather_sayaka = true, weather_caesar = true },

deconConfirmed = false,
burnAskedAt = 0,
}

function axd.misc.cards.isProtected(apfy, zih)
local tubv = axd.misc.cards
local vfd = tostring(apfy or _d(""))
local tnge = vfd:match(_d("aEQ+V1kXShtVOB1dMg"))

if not (tnge and tubv.protectedPrefixes[tnge]) then
return false
end

return not (tubv.deconExceptions[vfd] and zih == 2)
end

function axd.misc.cards.burnAllowed(wotx)
local kox = axd.misc.cards
local pkv = kox.wantedFor(_d("UgkGWRo6G1gYAFI"))

if not (pkv == nil or pkv[3] or pkv[4]) then
kox.deconConfirmed = false

return true
end

if kox.deconConfirmed then
return true
end

if wotx then
return false
end

if os.clock() < (kox.burnAskedAt or 0) then
return false
end

kox.burnAskedAt = os.clock() + 20

dmj:Dialog({
Title = _d("dBkXWFQ/G18CB1kDTRVETDBYHRsfRB8EWlQOG0QIFgk"),
Description = _d("dxkRWVQJH1UDC0UAHw9VGEVFEQMeRUwAQBEfAxYPCkYNTRNYTBFeEU0XVxgGXh0DHRYeCkEHTRtYCEVVFQMUWRhFVBFND1gIClgRQ1o")
.. _d("YQkEQhwICBpMB1kHHlYWHgRfEE0YWR8WGlQaFUQAARYWAglFQEVQHR4SXwICGlQlG1oACkERCBQWDQtSVAgMUwIRFhcMCFIfRVcGCFpeCQlSVA8bVQdFUx0ZElMeRUEVFFQ"),
Buttons = {
{
Name = _d("dBkXWFQZElMB"),
Callback = function()
kox.deconConfirmed = true
kox.deconAt = 0
kox.manualAt = 0

pcall(function()
axd.misc.deconToggle:UpdateState(true)
end)
end,
},
{
Name = _d("dQ0LVREB"),
Callback = function()
pcall(function()
axd.misc.deconToggle:UpdateState(false)
end)
end,
},
},
})

return false
end

function axd.misc.cards.wantedFor(wou)
local zg = axd.misc.cards[wou] or {}

if next(zg) == nil or zg[0] then
return nil
end

return zg
end

function axd.misc.cards.npcFor(vtmf)
local br = workspace:FindFirstChild(_d("eDwmRQ"))

if not br then
return nil
end

local icpp = vtmf and _d("UBkWUysDClU") or _d("UgkGWRoeDkQZBkIrAwpV")

for cxl, jhzt in ipairs(br:GetChildren()) do
if jhzt:GetAttribute(_d("eDwmfxA")) == icpp then
return jhzt
end
end

local vmr = vtmf and { _d("eQMVXhgU"), _d("WQMVWg0I") } or { _d("ZQQEQxgM"), _d("fg0TUyAaFXINAUU") }

for hde, le in ipairs(br:GetChildren()) do
for mxrz, mf in ipairs(vmr) do
if le.Name == mf then
return le
end
end
end

local ttt = vtmf and { _d("VQ0XUlQAH0QLDFgT"), _d("WQMVXhgU") } or { _d("UgkGWRoeDkQZBkIdAhQ"), _d("RQQEQxgM") }

for khil, wgu in ipairs(br:GetChildren()) do
for rznc, ejw in ipairs(wgu:GetDescendants()) do
if ejw:IsA(_d("YgkdQjgMGFMA")) and ejw.Text ~= _d("") then
local ppju = ejw.Text:lower()

for xeo, mph in ipairs(ttt) do
if ppju:find(mph, 1, true) then
return wgu
end
end

break
end
end
end

return nil
end

function axd.misc.cards.rarityText(iqv)
local ywpi = axd.misc.cards.wantedFor(iqv)

if not ywpi then
return _d("dwAJ")
end

local cn = {}

for hk, rruk in pairs(axd.misc.cards.borderOf) do
if ywpi[rruk] then
table.insert(cn, hk)
end
end

if #cn == 0 then
return _d("dwAJ")
end

table.sort(cn)

return table.concat(cn, _d("Gkw"))
end

function axd.misc.cards.run(txzc, jejw, eosj)
local moft = axd.misc.cards
local fpw = axd.misc.util
local vyiv = txzc and _d("WwkXUREsDg") or _d("UgkGWRosDg")

if eosj then
if os.clock() < moft[vyiv] then
return false, _d("eAMRFhAYHxYVAEJa")
end
elseif os.clock() < moft.manualAt then
return false, _d("YQ0MQlQMWlsDCFMaGVQ")
end

if moft.inFlight then
return false, _d("dwIKQhwICBYPBEQQTQ5EBRUWHR5aVwAXUxUJAxYeEFgaBBRRQg")
end

local rqu = gsu.busy(1) and 1 or (gsu.busy(2) and 2 or nil)
local jcwh = os.clock() - (rlid.floorAt or 0) < 90
local yygr = rqu ~= nil and gsu.towerSlot() == rqu and jcwh

if rqu and not yygr then
return false, _d("fwJFV1QPG0IYCVNUQFpCBAAWAB8TRkwSWQEBHhYJC1JUBA4Y")
end

if kuve.battlePending and os.time() < (kuve.battlePendingUntil or 0) then
return false, _d("d0wHVwAZFlNMDEVUHg5XHhFfGgpaG0wRXhFNDkQFFRYDAg9aCEVVFQMZUwBFXwBD")
end

if not txzc and not moft.burnAllowed() then
return false, _d("dQMLUB0fFxY+BF8aDxVBQzBYHRsfRB8EWlQLE0QfERg")
end

local qhc = moft.npcFor(txzc)

if not qhc then
return false, txzc
and _d("eQMVXhgUWl8fRVgbGVpfAkVCHAQJFgEERlRAWkIeBEARAVpCA0VeHQBaVwIBFgQfH0UfRV8ATRtRDQxYWg")
or _d("YgQAFhAIGVkCFkIGGBlCTCtmN00TRUwLWQBNE1hMEV4dHlpbDRUWWU0ORA0TUxhNDllMDEJUDBRSTBVEER4JFgURFhUKG18CSw")
end

local wguw = txzc and etxi.OpenFuseDialog or etxi.OpenDeconstructDialog
local pagt = txzc and etxi.FuseCards or etxi.DeconstructCards

if not (wguw and pagt) then
return false, _d("YgQEQlQECRYCCkJUBBQWGA1fB00dVwEAFgIICEUFClha")
end

local gooj = txzc and _d("WwkXURE6G1gYAFI") or _d("UgkGWRo6G1gYAFI")
local hku = moft.wantedFor(gooj)

moft.manualAt = os.clock() + moft.manualGap

if eosj then
moft[vyiv] = os.clock() + moft.interval
end

moft.inFlight = true

task.spawn(function()

local oi = nil

local function oycp(hrx, wwe)
if txzc then
moft.mergeDone = hrx
else
moft.deconDone = hrx
end

if wwe and eosj then
moft[vyiv] = os.clock() + 120
end

moft.inFlight = false
end

local dbuv = fpw.visit(qhc.Name)

if not dbuv then
oycp(_d("dQQERBUODlMeRV8HTRRZGEVEEQweT0xIFgYIDkQVDFgTTRNYTBFBG00XXwIQQhEeVA"), true)

return
end

task.wait(0.9)

local eb = nil
local kiw = wguw.OnClientEvent:Connect(function(ltfy)
if type(ltfy) == _d("Qg0HWhE") then
eb = ltfy
end
end)

for gg = 1, 3 do
pcall(function()
wguw:FireServer()
end)

for hnt = 1, 20 do
if eb then
break
end

task.wait(0.3)
end

if eb then
break
end

task.wait(1.5)
end

kiw:Disconnect()
fpw.returnTo(dbuv)

if type(eb) ~= _d("Qg0HWhE") then
oycp(_d("YgQAFhAEG1oDAhYQBB4WAgpCVAwURRsARFRAWkQJEUQNBBRRTAxYVBkNWUwIXxoYDlMfSw"), true)

return
end

local qyne = {}

for dfgt, ebw in ipairs(eb) do
local npfe = tonumber(ebw.borderLevel)
local tj = ebw.cardId or ebw.id

if npfe and (not hku or hku[npfe])
and (txzc or not axd.misc.cards.isProtected(tj, npfe)) then
table.insert(qyne, ebw)
end
end

if #qyne == 0 then

axd.misc.cards.closeFrame(txzc)
oycp(_d("eAMRXh0DHRYYChYHCBRSTANZBk0") .. axd.misc.cards.rarityText(gooj) .. _d("GA"))

return
end

if jejw then

local ol = {}

for ylf, snjk in ipairs(qyne) do
if (tonumber(snjk.count) or 0) >= jejw then
table.insert(ol, snjk)
end
end

if #ol == 0 then
axd.misc.cards.closeFrame(txzc)
oycp(_d("eANF") .. axd.misc.cards.rarityText(gooj) .. _d("Fh4KQVQFG0VM") .. jejw .. _d("Fg8KRh0ICRYVAEJa"))

return
end

qyne = ol

table.sort(qyne, function(tix, xcd)
return (tonumber(tix.count) or 0) < (tonumber(xcd.count) or 0)
end)

local yysd, ybah = {}, 0

for xil, okv in ipairs(qyne) do
local zpy = tonumber(okv.count) or 0

if #yysd > 0 and ybah + zpy > jejw then
break
end

table.insert(yysd, okv)
ybah = ybah + zpy
end

qyne = yysd
oi = ybah
end

local gqe = 0

axd.misc.cards.closeFrame(txzc)

if txzc then
if not hku then

pcall(function()
pagt:FireServer(_d("VwAJ"), nil)
end)

gqe = #qyne
else
local norq = {}

for ss, rkl in ipairs(qyne) do
table.insert(norq, { rkl.cardId, tonumber(rkl.borderLevel) })
end

pcall(function()
pagt:FireServer(_d("RQkJUxcZH1IzBFoY"), norq)
end)

gqe = #norq
end
else
local ogsb = {}

for zyzf, jqta in ipairs(qyne) do
if #ogsb >= 25 then
break
end

table.insert(ogsb, { jqta.cardId, tonumber(jqta.borderLevel), _d("VwAJ") })
end

pcall(function()
pagt:FireServer(ogsb)
end)

gqe = #ogsb
end

oycp(_d("ZQkLQlQ") .. tostring(gqe) .. _d("Fh4KQQ") .. (gqe == 1 and _d("") or _d("RQ"))
.. _d("FkQ") .. axd.misc.cards.rarityText(gooj) .. _d("Hw")
.. (oi and (_d("Gkw") .. tostring(oi) .. _d("Fg8ERBAe")) or _d("")))
end)

return true
end

function axd.misc.cards.closeFrame(qrej)
pcall(function()
local ucs = qrej and { _d("cBkWUzMYEw"), _d("cBkWUzIfG1sJ") } or { _d("cgkGWRoeDkQZBkIzGBM"), _d("cgkGWRoeDkQZBkIyHxtbCQ") }
local dah = require(pen.ModuleScripts.MenuManager)
local qo = xjwi:FindFirstChild(ucs[1])
local wnt = qo and qo:FindFirstChild(ucs[2])

if wnt then
dah.close(wnt)
end

if not qrej then
local dorn = qo and qo:FindFirstChild(_d("cgkGWRoeDkQZBkImDA5THyNEFQAf"))

if dorn then
dah.close(dorn)
else
dorn = xjwi:FindFirstChild(_d("cgkGWRoeDkQZBkImDA5THyNEFQAf"))

if dorn then
dah.close(dorn)
end
end
end
end)
end

function axd.misc.cards.refresh(sqs)

local qq = sqs and axd.misc.mergeParagraph or axd.misc.deconParagraph

if not qq then
return
end

pcall(function()
qq:UpdateBody(sqs
and axd.misc.cards.mergeText()
or axd.misc.cards.deconText())
end)
end

function axd.misc.cards.mergeText()
local jle = axd.misc.cards

return _d("ZA0XXwAEH0VWRQ") .. jle.rarityText(_d("WwkXURE6G1gYAFI")) .. _d("PA") .. jle.mergeDone
end

function axd.misc.cards.deconText()
local eyvq = axd.misc.cards

return _d("ZA0XXwAEH0VWRQ") .. eyvq.rarityText(_d("UgkGWRo6G1gYAFI")) .. _d("PA") .. eyvq.deconDone
.. _d("PDsAVwAFH0RARVQbHgkaTBdXHQlWFhsKRBgJWlQDFkVYTRxfHw1fGgpWFiQEWhgCDVMJCxYVAx4WCRNTGhlaVQ0XUgdNG0QJRVgRGx9ETBZTGhlU")
end

axd.misc.skill = {
on = false,
at = 0,
mainWanted = {},
raidWanted = {},

mainOrder = {},
raidOrder = {},
last = _d("eAMRXh0DHRYOCkMTBQ4WFQBC"),
shown = _d(""),
}

function axd.misc.skill.branchMap(vyc)
local ivyd = {}

for snq, xrwz in ipairs(vnw.Trees[vyc].branches) do
ivyd[xrwz.name] = xrwz
end

return ivyd
end

function axd.misc.skill.branchLabels(scym)
local nmk = {}

for er, vlh in ipairs(vnw.Trees[scym].branches) do
table.insert(nmk, vlh.name)
end

return nmk
end

function axd.misc.skill.wantedFrom(pogw, nldy)
local etc = {}
local ccd = axd.misc.skill.branchMap(nldy)

if type(pogw) == _d("Qg0HWhE") then
for vepl, reh in pairs(pogw) do
if reh and ccd[tostring(vepl)] then
etc[ccd[tostring(vepl)].id] = true
end
end
end

return etc
end

function axd.misc.skill.ordered(jivs, sln)
local qr = {}
local kg = {}

for onm, sjne in ipairs(sln or {}) do
if jivs[sjne] then
table.insert(qr, sjne)
kg[sjne] = true
end
end

for jr in pairs(jivs) do
if not kg[jr] then
table.insert(qr, jr)
end
end

return qr
end

function axd.misc.skill.branchById(juab)
local ono = {}

for ucp, bgtt in ipairs(vnw.Trees[juab].branches) do
ono[bgtt.id] = bgtt
end

return ono
end

function axd.misc.skill.upgrade()
local lasu = axd.misc.skill
local mc = axd.misc.util
local bee = mc.currentProfile and mc.currentProfile()

if type(bee) ~= _d("Qg0HWhE") then
return false, _d("eANFRgYCHF8AABYNCA4Y")
end

local jfxd = bee.skillTrees or {}
local rdd = { [1] = lasu.mainOrder, [2] = lasu.raidOrder }
local qgg = nil

for fcmp, exlm in ipairs(vnw.Trees) do
local soch = jfxd[exlm.id]
local oeiw = tonumber(bee[exlm.pointsField or _d("RQcMWhg9FV8CEUU")]) or 0
local koju = axd.misc.skill.branchById(fcmp)

if type(soch) == _d("Qg0HWhE") and oeiw > 0 then
for owny, nffl in ipairs(rdd[fcmp] or {}) do
local afmt = koju[nffl]

if afmt and not qgg then
local yjg = vnw.getBranchLevel(jfxd, exlm.id, afmt.id) or 0
local owo = yjg + 1

if owo <= afmt.levels then
local gdt = afmt.id .. owo
local wyl = 1

if type(afmt.costs) == _d("Qg0HWhE") and tonumber(afmt.costs[owo]) then
wyl = tonumber(afmt.costs[owo])
elseif tonumber(afmt.cost) then
wyl = tonumber(afmt.cost)
end

if wyl <= oeiw and vnw.isAvailable(jfxd, exlm.id, gdt) then
qgg = { tree = exlm.id, node = gdt, name = afmt.name, level = owo }
end
end
end
end
end
end

if not qgg then
return false, _d("eAMRXh0DHRYYChYWGAMWFQBCWg")
end

etxi.BuySkillNode:FireServer(qgg.tree, qgg.node)

if mc.askProfile then
pcall(mc.askProfile)
end

lasu.last = _d("dAMQURwZWg") .. qgg.name .. _d("Fg") .. tostring(qgg.level)

return true
end

function axd.misc.skill.text()
local arp = axd.misc.skill
local win = axd.misc.util
local ont = win.currentProfile and win.currentProfile()

if type(ont) ~= _d("Qg0HWhE") then
return _d("ZgMMWAAeQBZTbw") .. arp.last
end

local xlpf = ont.skillTrees or {}
local bxo = {}

local hb = { [1] = arp.mainOrder, [2] = arp.raidOrder }

for ios, qwtg in ipairs(vnw.Trees) do
local qrdn = tonumber(ont[qwtg.pointsField or _d("RQcMWhg9FV8CEUU")]) or 0
local hmrd = {}
local sk = axd.misc.skill.branchById(ios)

for kwe, jio in ipairs(hb[ios] or {}) do
local mky = sk[jio]

if mky then
local mmw = vnw.getBranchLevel(xlpf, qwtg.id, mky.id) or 0
table.insert(hmrd, mky.name .. _d("Fg") .. tostring(mmw) .. _d("GQ") .. tostring(mky.levels))
end
end

bxo[#bxo + 1] = qwtg.name .. _d("DEw") .. tostring(qrdn) .. _d("FhwRRQ")
.. (#hmrd > 0 and (_d("FkFF") .. table.concat(hmrd, _d("Gkw"))) or _d("FkFFWBsZEl8CAhYEBBldCQE"))
end

bxo[#bxo + 1] = arp.last

return table.concat(bxo, _d("PA"))
end

axd.misc.mergeSection = axd.misc.tab:Section({
Side = _d("egkDQg"),
})

axd.misc.mergeSection:Header({
Name = _d("ewkXURFNiqnLyQ"),
})

axd.misc.mergeToggle = axd.misc.mergeSection:Toggle({
Name = _d("dxkRWVQAH0QLAA"),
Default = false,
Callback = function(fwj)
local evb = axd.misc.cards

evb.mergeOn = fwj

evb.mergeAt = (fwj and vikf.loading) and (os.clock() + evb.interval) or 0
end,
}, _d("VxkRWSsAH0QLAA"))

axd.misc.mergeDropdown = axd.misc.mergeSection:Dropdown({
Name = _d("ZA0XXwAEH0U"),
Search = false,
Multi = true,
Required = false,
Default = { _d("dwAJ") },
Options = axd.misc.cards.rarityLabels,
Callback = function(qsyx)
local hxm = {}

if type(qsyx) == _d("Qg0HWhE") then
for ou, rtp in pairs(qsyx) do
if rtp then
if ou == _d("dwAJ") then
hxm[0] = true
else
hxm[axd.misc.cards.borderOf[tostring(ou)]] = true
end
end
end
end

axd.misc.cards.mergeWanted = hxm
axd.misc.cards.refresh(true)
end,
}, _d("RA0XXwAEH0U"))

axd.misc.mergeSection:Button({
Name = _d("ewkXURFNFFkb"),
Callback = function()
local bhid, yhgy = axd.misc.cards.run(true)

if not bhid then
dmj:Notify({
Title = _d("ewkXURE"),
Description = yhgy,
Lifetime = 6,
})
end
end,
})

axd.misc.mergeSection:Button({
Name = _d("ewkXURFNQwY"),
Callback = function()

local xkyo, amh = axd.misc.cards.run(true, 90)

if not xkyo then
dmj:Notify({
Title = _d("ewkXURFNQwY"),
Description = amh,
Lifetime = 6,
})
end
end,
})

axd.misc.mergeParagraph = axd.misc.mergeSection:Paragraph({
Header = _d("ZRgEQgEe"),
Body = axd.misc.cards.mergeText(),
})

axd.misc.accSection = axd.misc.tab:Section({
Side = _d("ZAUCXgA"),
})

axd.misc.accSection:Header({
Name = _d("dw8GUwceFUQFAEVUneWk4g"),
})

axd.misc.accToggle = axd.misc.accSection:Toggle({
Name = _d("dxkRWVQPH0UYRVcXDh9FHwpEDQ"),
Default = false,
Callback = function(jgh)
axd.misc.util.accOn = jgh
axd.misc.util.accAt = 0
end,
}, _d("VxkRWSsPH0UYOlcXDh9FHwpEDQ"))

axd.misc.accBuyToggle = axd.misc.accSection:Toggle({
Name = _d("dxkRWVQPD09MB1MHGQ"),
Default = false,
Callback = function(acv)
axd.misc.util.accBuyOn = acv
axd.misc.util.accBuyAt = 0
axd.misc.util.accAt = 0
end,
}, _d("VxkRWSsPD08zB1MHGQ"))

axd.misc.accSection:Button({
Name = _d("dBkcFhYICUI"),
Callback = function()
local bcwt, sewf = axd.misc.util.buyBest()

if not bcwt then
dmj:Notify({
Title = _d("dw8GUwceFUQFAEU"),
Description = sewf,
Lifetime = 6,
})
end
end,
})

axd.misc.accSection:Button({
Name = _d("cx0QXwRNGFMfEQ"),
Callback = function()
if not axd.misc.util.equipBest() then
dmj:Notify({
Title = _d("dw8GUwceFUQFAEU"),
Description = _d("eAMRXh0DHRYOAEIACAgWBRYWGxoUUwhFTxEZVA"),
Lifetime = 5,
})
end
end,
})

axd.misc.accParagraph = axd.misc.accSection:Paragraph({
Header = _d("ZRgEQgEe"),
Body = axd.misc.util.accText(),
})

axd.misc.claimInfo = axd.misc.tab:Section({
Side = _d("ZAUCXgA"),
})

axd.misc.claimInfo:Header({
Name = _d("ewUWVREBFlcCAFkBHg"),
})

axd.misc.indexParagraph = axd.misc.claimInfo:Paragraph({
Header = _d("dQ0XUlQkFFIJHQ"),
Body = axd.misc.util.indexText(),
})

axd.misc.achParagraph = axd.misc.claimInfo:Paragraph({
Header = _d("dw8NXxEbH1sJC0IH"),
Body = axd.misc.util.achText(),
})

axd.misc.questParagraph = axd.misc.claimInfo:Paragraph({
Header = _d("ZxkARQAe"),
Body = axd.misc.util.questText(),
})

axd.misc.packParagraph = axd.misc.claimInfo:Paragraph({
Header = _d("Zg0GXQc"),
Body = axd.misc.util.packText(),
})

axd.misc.skillSection = axd.misc.tab:Section({
Side = _d("ZAUCXgA"),
})

axd.misc.skillSection:Header({
Name = _d("ZQcMWhhNLkQJABaE8vaF"),
})

axd.misc.skillToggle = axd.misc.skillSection:Toggle({
Name = _d("dxkRWVQYClEeBFIR"),
Default = false,
Callback = function(fsiz)
local wx = axd.misc.skill

if fsiz and not (next(wx.mainWanted) or next(wx.raidWanted)) then
wx.on = false

pcall(function()
axd.misc.skillToggle:UpdateState(false)
end)

dmj:Dialog({
Title = _d("ZgUGXVQMWlQeBFgXBVpQBRdFAA"),
Description = _d("dQQKWQcIWlcYRVoRDAlCTApYEU0YRA0LVRxNE1hMEV4RTTdXBQsWAB8fU0wKRFQ/G18IRUIGCB8WCBdZBAkVQQJFG1Q")
.. _d("dxkRWVQYClEeBFIRTRVYABwWBx0fWAgWFgQCE1gYFhYDBR9ECUVPGxhaRgMMWABNE0JC"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})

return
end

wx.on = fsiz
wx.at = 0
end,
}, _d("VxkRWSsYClEeBFIR"))

axd.misc.skillMainDropdown = axd.misc.skillSection:Dropdown({
Name = _d("ew0MWFQZCFMJ"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = axd.misc.skill.branchLabels(1),
Callback = function(fk)
local ssw = axd.misc.skill
local tqd = ssw.wantedFrom(fk, 1)

ssw.mainWanted = tqd
ssw.mainOrder = ssw.ordered(tqd, ssw.mainOrder)
ssw.shown = _d("")
end,
}, _d("Ww0MWCsZCFMJ"))

axd.misc.skillRaidDropdown = axd.misc.skillSection:Dropdown({
Name = _d("ZA0MUlQZCFMJ"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = axd.misc.skill.branchLabels(2),
Callback = function(qpl)
local rny = axd.misc.skill
local zzl = rny.wantedFrom(qpl, 2)

rny.raidWanted = zzl
rny.raidOrder = rny.ordered(zzl, rny.raidOrder)
rny.shown = _d("")
end,
}, _d("RA0MUisZCFMJ"))

pcall(function()
axd.misc.skillMainDropdown:UpdateSelection({})
end)

pcall(function()
axd.misc.skillRaidDropdown:UpdateSelection({})
end)

axd.misc.skillParagraph = axd.misc.skillSection:Paragraph({
Header = _d("ZRgEQgEe"),
Body = axd.misc.skill.text(),
})

task.spawn(function()
local ajch = axd.misc.util

while uxq() do
if ajch.indexOn or ajch.achOn or ajch.questOn or ajch.accOn or ajch.accBuyOn then
ajch.currentProfile()
end

if ajch.indexOn then
ajch.claimIndex()
end

if ajch.achOn then
ajch.claimAchievement()
end

if ajch.questOn then

if os.clock() - ajch.questAskedAt > 20 or os.clock() - ajch.weeklyAskedAt > 20 then
ajch.askQuests()
end

ajch.claimQuest()
end

if ajch.accOn and os.clock() >= ajch.accAt then
ajch.accAt = os.clock() + 3
ajch.equipBest()
end

local tsu = axd.misc.cards

if not tsu.inFlight then
if tsu.mergeOn and os.clock() >= tsu.mergeAt then
tsu.run(true, nil, true)
elseif tsu.deconOn and os.clock() >= tsu.deconAt then
tsu.run(false, nil, true)
end
end

if tsu.mergeDone ~= tsu.mergeShown then
tsu.mergeShown = tsu.mergeDone

pcall(function()
axd.misc.mergeParagraph:UpdateBody(axd.misc.cards.mergeText())
end)
end

if tsu.deconDone ~= tsu.deconShown then
tsu.deconShown = tsu.deconDone

pcall(function()
axd.misc.deconParagraph:UpdateBody(axd.misc.cards.deconText())
end)
end

local noio = axd.misc.skill

if noio.on and os.clock() >= noio.at then

noio.at = os.clock() + 2
noio.upgrade()
end

local rgc = axd.misc.skill.text()

if noio.shown ~= rgc then
noio.shown = rgc

pcall(function()
axd.misc.skillParagraph:UpdateBody(rgc)
end)
end

if ajch.accBuyOn and os.clock() >= ajch.accBuyAt then

local talu = ajch.buyBest()

ajch.accBuyAt = os.clock() + (talu and 45 or 10)
end

local tprk = {
{ key = _d("XwIBUww"), paragraph = axd.misc.indexParagraph, value = ajch.indexText() },
{ key = _d("Vw8N"), paragraph = axd.misc.achParagraph, value = ajch.achText() },
{ key = _d("RxkARQA"), paragraph = axd.misc.questParagraph, value = ajch.questText() },
{ key = _d("Rg0GXQ"), paragraph = axd.misc.packParagraph, value = ajch.packText() },
{ key = _d("Vw8G"), paragraph = axd.misc.accParagraph, value = ajch.accText() },
}

for doc, dm in ipairs(tprk) do
if dm.paragraph and ajch.shown[dm.key] ~= dm.value then
ajch.shown[dm.key] = dm.value

pcall(function()
dm.paragraph:UpdateBody(dm.value)
end)
end
end

task.wait(0.75)
end
end)

local qub = uf:Section({
Side = _d("ZAUCXgA"),
})

qub:Paragraph({
Header = _d("cAUWXh0DHQ"),
Body = _d("dxkRWVQrE0UERVMFGBNGH0VPGxgIFh4KUlhNHFcPAEVUGRJTTBJXAAgIFg0LUlQOG0UYFhYbA1pfGBYWGxoUGkwRXhEDWkQJAFoHTQ1eCQsWBwIXUxgNXxoKWlQFEVMHQ1piPEVCG004VxVFRgEBFkVMHFkBTRhXDw4WAAJaQgQAFhYMAxYKDEQHGVYWDQtSVBkSU0wRQRtNPlMJFVMHGVphDRFTBk0JQQURVRwICRYECloQTQ5eCUVFBAIOFhUKQ1QaH0QJRUUADBRSBQtRVAIUFhsNUxpNA1kZRVcGAB9STBFeEQBaG0wRXhFNHlMJFVMHGVpEBQtRVA4bRB4MUwdNDl4JRVQdCh1THxEWGBgZXUwHWRoYCRhmb2IcCFpFBApGVA8PTx9FVxoJWlMdEF8EHlpEAwFFVAwUUkwHVx0ZWkEFEV5UGRJTTAZXBxkJFhUKQ1QFG0AJSxY2GANfAgIWGggfUh9FQhwIWlUDEFgACAgWQUVUGxkSFg8KWxFNHEQDCBYABR8WKgxFHAgIWw0LGH5nOVcYBl4RHlpdCQBGB00bFh4QWBoEFFFMEVcYAQMWDhwWHRkfW0wEWBBNCVcaAEVUBA4aTBZZVBkSU0wRWQAMFhYPBEQGBB9FTApAER9aVAkRQREIFBYfAEUHBBVYH0s"),
})

local dpq = uf:Section({
Side = _d("ZAUCXgA"),
})

dpq:Header({
Name = _d("dQ0RVRwICQ"),
})

local urz

urz = dpq:Paragraph({
Header = _d("YQQEQlQUFUNMBlcBChJC"),
Body = thr(),
})

local uzo = uf:Section({
Side = _d("ZAUCXgA"),
})

uzo:Header({
Name = _d("fx8JVxoJWkUECkY"),
})

uzo:Toggle({
Name = _d("dxkRWVQOCFcKERkWGAMWBRZaFQMeFh4KUg"),
Default = false,
Callback = function(dsdq)
yje.island.autoRod = dsdq
yje.islandAt = 0
end,
}, _d("Xx8JVxoJJVcZEVkrHxVS"))

uzo:Toggle({
Name = _d("cx0QXwRNE0UABFgQTQhZCA"),
Default = false,
Callback = function(jzh)
yje.island.equipRod = jzh
yje.islandAt = 0
end,
}, _d("Xx8JVxoJJVMdEF8EMghZCA"))

uzo:Toggle({
Name = _d("dxkRWVQOCFcKERYVDhlTHxZZBhQ"),
Default = false,
Callback = function(zbw)
yje.island.autoAcc = zbw
yje.islandAt = 0
end,
}, _d("Xx8JVxoJJVcZEVkrDBlVCRZFGx8D"))

uzo:Toggle({
Name = _d("cx0QXwRNG1UPAEUHAghP"),
Default = false,
Callback = function(bxhq)
yje.island.equipAcc = bxhq
yje.islandAt = 0
end,
}, _d("Xx8JVxoJJVMdEF8EMhtVDwBFBwIITw"))

local peya

peya = uzo:Paragraph({
Header = _d("fx8JVxoJWlEJBEQ"),
Body = yje.shopIsland.text(),
})

local qjkk = uf:Section({
Side = _d("egkDQg"),
})

qjkk:Header({
Name = _d("ZAkHXwYZEg"),
})

yje.rebirthToggle = qjkk:Toggle({
Name = _d("dxkRWVQfH1QFF0Ic"),
Default = false,
Callback = function(rvdq)
yje.autoRebirth = rvdq
end,
}, _d("VxkRWSsfH1QFF0Ic"))

yje.rebirthParagraph = qjkk:Paragraph({
Header = _d("ZRgEQgEe"),
Body = yje.rebirthText(),
})

qjkk:Button({
Name = _d("YjxFQhtNE0UABFgQ"),
Callback = function()
if not yje.gotoIsland() then
dmj:Notify({
Title = _d("dw4EWBACFFMIRX8HARtYCA"),
Description = _d("dQQERBUODlMeRV8HTRRZGEVEEQweT0wcUwBNVxYYF09UDB1XBQsWHQNaV0wIWRkIFEJC"),
Lifetime = 5,
})
end
end,
})

local gj

gj = qjkk:Toggle({
Name = _d("dxkRWVQkCVoNC1JUJRtECAZZBgg"),
Default = false,
Callback = function(qcm)
tz.island = qcm
tz.pending = false
tz.pendingUntil = 0
tz.paused = false
tz.gaveUp = false
tz.stoodDown = false
tz.manualPause = false

if not qcm then
return
end

if gsu.otherTowerOn(_d("Xg0XUhcCCFM")) then
tz.island = false

pcall(function()
gj:UpdateState(false)
end)

pcall(function()
dmj:Dialog({
Title = _d("dxkRWVQkCVoNC1JUJRtECAZZBghaWQoD"),
Description = _d("YgQAFjwMFloDElMRA1pCAxJTBk0TRUwEWgYIG1IVRUQBAxRfAgIaVAwUUkwSXwAFWlkCABYHARVCTBFeEU0dVwEAFhsDFk9MF0MaHlpZAgAWHQMcXwIMQhFNCFkDCBYVGVpXTBFfGQhUFjgQRBpNDl4NERYbCxwaTApEVBkPRAJFWRpNO0MYChYnARVCTBZZVAgbVQRFQhsaH0RMAlMAHlpfGBYWGxoUFh8JWQBD"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})
end)

return
end

if gsu.enabled and gsu.hardcoreSlot() == nil then
tz.island = false

pcall(function()
gj:UpdateState(false)
end)

pcall(function()
dmj:Dialog({
Title = _d("dxkRWVQkCVoNC1JUJRtECAZZBghaWQoD"),
Description = _d("eANFRRgCDhYFFhYHCA4WGAoWFU0OWRsARFhNG1gIRUIcCFpRDQhTVAIUWhVFRQAMCEIfRVdUGRVBCRcWBhgUFgoXWRlNGxYYCkERH1pFAApCWk0pUxhFWRoIWkIDRX8HARtYCEVeFR8eVQMXU1hNFURMEUMGA1p3GRFZVD4WWRhFWRILVA"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})
end)

return
end

if not tz.data then
tz.island = false

pcall(function()
gj:UpdateState(false)
end)

pcall(function()
dmj:Dialog({
Title = _d("dxkRWVQkCVoNC1JUJRtECAZZBghaWQoD"),
Description = _d("YgQMRVQPD18AARYcDAkWAgoWPAwIUg8KRBE5FUEJF3IVGRsaTBZZVBkSU0wRWQMICBEfRUUADB1TH0VVFQMUWRhFVBFNCFMNARYVAx4WDUVEAQNaVQ0LWBsZWlQJRUUADAhCCQEY"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})
end)

return
end

local ry = tz.remotes.request

if ry then
pcall(function()
ry:FireServer()
end)
end
end,
}, _d("VxkRWSsECVoNC1IrBRtECAZZBgg"))

tz.islandToggle = gj

tz.islandParagraph = qjkk:Paragraph({
Header = _d("dBkDUAc"),
Body = tz.buffText(),
})

qjkk:Button({
Name = _d("Zg0QRRFNM0UABFgQTTJXHgFVGx8f"),
Callback = function()
if tz.pauseRun then
tz.pauseRun()
end
end,
})

qjkk:Button({
Name = _d("cQUTU1Q4ChYlFloVAx4WJAREEA4VRAk"),
Callback = function()
if tz.giveUpRun then
tz.giveUpRun()
end
end,
})

local ykew = uf:Section({
Side = _d("egkDQg"),
})

ykew:Header({
Name = _d("cAUWXh0DHRYfDVkE"),
})

ykew:Toggle({
Name = _d("dxkRWVQPD09MB1MHGVpEAwE"),
Default = false,
Callback = function(vaij)
yje.shop.autoBuyRod = vaij
yje.shopAt = 0
end,
}, _d("VxkRWSsPD08zB1MHGSVEAwE"))

ykew:Toggle({
Name = _d("dxkRWVQPD09MB1MHGVpUDQxC"),
Default = false,
Callback = function(uoc)
yje.shop.autoBuyBait = uoc
yje.shopAt = 0
end,
}, _d("VxkRWSsPD08zB1MHGSVUDQxC"))

ykew:Toggle({
Name = _d("cx0QXwRNGFMfERYGAh4"),
Default = false,
Callback = function(wwh)
yje.shop.equipRod = wwh
yje.shopAt = 0
end,
}, _d("Ux0QXwQyGFMfEWkGAh4"))

ykew:Toggle({
Name = _d("cx0QXwRNGFMfERYWDBNC"),
Default = false,
Callback = function(bnxj)
yje.shop.equipBait = bnxj
yje.shopAt = 0
end,
}, _d("Ux0QXwQyGFMfEWkWDBNC"))

local sz

sz = ykew:Paragraph({
Header = _d("dAkWQlQUFUNMBlcaTR9HGQxG"),
Body = tf(),
})
task.spawn(function()
local yos = mlxr()
local buw = thr()
local vwf = tf()
local jkqe = yje.shopIsland.text()

while uxq() do
local rf = mlxr()

if rf ~= yos then
yos = rf
pcall(function()
wqlr:UpdateBody(rf)
end)
end

local ok = thr()

if ok ~= buw then
buw = ok
pcall(function()
urz:UpdateBody(ok)
end)
end

local hpyu = tf()

if hpyu ~= vwf then
vwf = hpyu
pcall(function()
sz:UpdateBody(hpyu)
end)
end

local boyk = yje.shopIsland.text()

if boyk ~= jkqe then
jkqe = boyk
pcall(function()
peya:UpdateBody(boyk)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while uxq() do

if qcqi() and os.clock() >= (yje.shopAt or 0)
and os.clock() >= (yje.islandTripUntil or 0) then
yje.shopAt = os.clock() + 1
pcall(pay)
end

if yje.shopIsland.active() and os.clock() >= (yje.islandAt or 0)
and os.clock() >= math.max(yje.shopHoldUntil or 0, yje.tpHoldUntil or 0) then
yje.islandAt = os.clock() + 2
pcall(yje.shopIsland.run)
end

task.wait(1)
end
end)

ln:Select()

local vuog = ln:Section({
Side = _d("egkDQg"),
})

local gctb = ln:Section({
Side = _d("ZAUCXgA"),
})

local pm = vuog:Paragraph({
Header = _d("ZRgEQgEe"),
Body = pma(),
})

vuog:Divider()

kuve.npcToggle = vuog:Toggle({
Name = _d("dxkRWVQjKnU"),
Default = false,
Callback = function(vcmf)

if vcmf and not kuve.story and #dff() == 0 then
pcall(function()
kuve.npcToggle:UpdateState(false)
end)

dmj:Dialog({
Title = _d("dxkRWVQjKnVMC1MRCQkWDUVCFR8dUxg"),
Description = _d("ZgUGXVQMDhYAAFcHGVpZAgAWOj05FgoXWRlNDl4JRUEbHxZSH0VUEQEVQUBFWQZNDkMeCxYbA1p3GRFZVC4VWxwJUwAIWmUYCkQNQ1piBABEEU0TRUwLWQAFE1gLRUIbTRxfCw1CVBQfQkI"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})

return
end

kuve.enabled = vcmf
end,
}, _d("VxkRWSsDClU"))

vuog:Toggle({
Name = _d("YQ0JXVQZFRYiNXU"),
Default = false,
Callback = function(bdk)
kuve.walkToNpc = bdk
end,
}, _d("QQ0JXSsZFWkCFVU"))

vuog:Dropdown({
Name = _d("cgUDUB0OD1oYHA"),
Search = false,
Multi = true,
Required = false,
Default = { _d("eAMXWxUB") },
Options = rfgv,
Callback = function(onov)
local mov = {}

if type(onov) == _d("Qg0HWhE") then
for zzd, qlsx in ipairs(rfgv) do
if onov[qlsx] then
table.insert(mov, kr[qlsx])
end
end
end

if #mov == 0 then
mov = { _d("WAMXWxUB") }
end

kuve.difficulties = mov
end,
}, _d("UgUDUB0OD1oYHA"))

vuog:Toggle({
Name = _d("dxkRWVQ/FVkBFg"),
Default = false,
Callback = function(nmdy)
nms.enabled = nmdy
nms.inBattle = false
nms.pending = false
end,
}, _d("VxkRWSsfFVkBFg"))

local ipyl = ln:Section({
Side = _d("egkDQg"),
})

ipyl:Header({
Name = _d("ZQAKQg"),
})

ipyl:Paragraph({
Header = _d("fgMSFgAFHxYfCVkAHlpBAxdd"),
Body = _d("ZQAKQlRcWhtMLFgSBBRfGBwWIAINUx5FHhoCCFsNCRYbH1p4BQJeAAAbRAlMFhsfWn4NCVobGh9TAkViGxofREBFRhgYCRYiNXVUDxtCGAlTB00NXgkLFgcBFUJMVxYdHlpUGRZPWmdwZQAKQlRfWhtMK2Y3HlYWHgRfEB5WFh4KWRkeVhYlFloVAx4WJAREEA4VRAlLPH4vFUIERUUYAg5FTApYVCMqdUwHVwAZFlMfXxYAGhUWIjV1VAsfVxgQRBEeWlcYRVkaDh8aTARYEE0bFh4EXxBNGFkfFhYRDBleQm88IBoVFhgKQREfWkQZC0VUBAkWGA1TVAIUWhVFRBELD0UJARYEDBNETEgWPR4WVwIBFjwMCFIPCkQRTRVYTAdZAAVaRQAKQgdNE0VMClgRTQhDAkVXBwYfUkwDWQZNDkEFBlNaZ3BlAApCB00VUApfFhsDHxYfCVkAQVpCAxJTBh5aQg0OU1QZD0QCFhg"),
})

gsu.toggle = ipyl:Toggle({
Name = _d("dxkRWVQ+FlkY"),
Default = false,
Callback = function(wof)
if wof and gsu.role[1] == gsu.role[2] and gsu.role[1] ~= _d("WBwG") then
gsu.enabled = false

pcall(function()
gsu.toggle:UpdateState(false)
end)

dmj:Dialog({
Title = _d("dxkRWVQ+FlkY"),
Description = _d("ZQAKQlRcWlcCARYnARVCTFcWFR8fFg4KQhxN") .. gsu.roleLabel(1) .. _d("GEwxXhUZWl8fRVkaCFpEGQsWFR4RUwhFUBsfWkIbDFURQVpFA0VZGghaWQpFQhwIWkIbChYHARVCH0VeFR5aQgNFVBFNCVkBAEIcBBRRTABaBwhU"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})

return
end

gsu.enabled = wof

if wof then
gsu.hasSlot2 = gsu.detectSlot2()

if gsu.hasSlot2 == false then
dmj:Dialog({
Title = _d("dxkRWVQ+FlkY"),
Description = _d("ZQAKQlRfWloDCl0HTRZZDw5TEE1XFgURFhoIH1IfRUIcCFpyGQRaVC8bQhgJU1Q+FlkYRVEVAB9GDRZFWE0VREwsWBIEFF8YABYmAhVbTFcDRE0ZWgkERBEJVhYOAFAbHx8WGA1TVB4fVQMLUlQeFlkYRVUVA1pUDRFCGAhUFj4KQwAEFFFMFkIVFAkWAwsWBwEVQkxUFgEDDl8ARUIcCBQY"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})
end
end
end,
}, _d("VxkRWSseFlkY"))

function gsu.applyRoles()
if not gsu.enabled then
return
end

if gsu.role[1] == gsu.role[2] and gsu.role[1] ~= _d("WBwG") then
gsu.enabled = false

pcall(function()
gsu.toggle:UpdateState(false)
end)

pcall(function()
dmj:Dialog({
Title = _d("dxkRWVQ+FlkYRVkSCw"),
Description = _d("ZQAKQlRcWlcCARYnARVCTFcWFR8fFg4KQhxN") .. gsu.roleLabel(1) .. _d("GEwxXhUZWl8fRVkaCFpEGQsWFR4RUwhFUBsfWkIbDFURQVpXAgEWHRlaVQ0LWBsZWkINDlNUGQ1ZTBZaGxkJGEw2UwBNFVgJRUUYAg4WGAoWBwIXUxgNXxoKWlMAFlNa"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})
end)

return
end

local aky = {}

if gsu.towerSlot() ~= 1 and rlid.enabled then
rlid.enabled = false
table.insert(aky, _d("dxkRWVQ5FUEJFw"))

pcall(function()
rlid.ui:UpdateState(false)
end)
end

if gsu.hardcoreSlot() == nil and tz.island then
tz.island = false
table.insert(aky, _d("dxkRWVQkCVoNC1JUJRtECAZZBgg"))

pcall(function()
tz.islandToggle:UpdateState(false)
end)
end

if gsu.halloweenSlot() == nil and ot.run.enabled then
ot.run.enabled = false
table.insert(aky, _d("dxkRWVQlG1oACkERCBQWOApBER8"))

pcall(function()
ot.toggle:UpdateState(false)
end)
end

if #aky > 0 then
pcall(function()
dmj:Dialog({
Title = table.concat(aky, _d("Fg0LUlQ")) .. _d("FgMDUA"),
Description = _d("eANFRRgCDhYFFhYHCA4WGAoWAAUbQkwRWQMICBYNC09UABVECUkWBwJaXxhFXhUJWlgDEl4RHx8WGAoWBhgUGEwiXwIIWl8YRVdUHhZZGEVXEwwTWEBFWQZNDkMeCxY1GA5ZTDZaGxlaWQoDGA"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})
end)
end
end

gsu.oneDropdown = ipyl:Dropdown({
Name = _d("ZQAKQlRc"),
Search = false,
Multi = false,
Required = false,

Default = 1,
Options = gsu.optionsFor[1],
Callback = function(njr)
local myh = type(njr) == _d("Qg0HWhE") and njr[1] or njr

if type(myh) == _d("RRgXXxoK") and gsu.roleIds[myh] then
gsu.role[1] = gsu.roleIds[myh]
gsu.picked[1] = myh
end

pcall(function()
gsu.oneDropdown:UpdateName(_d("ZQAKQlRcWtTsxxY") .. gsu.roleLabel(1))
end)

if gsu.applyRoles then
gsu.applyRoles()
end
end,
}, _d("RQAKQitcJQQ"))

gsu.twoDropdown = ipyl:Dropdown({
Name = _d("ZQAKQlRf"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = gsu.optionsFor[2],
Callback = function(opyb)
local vgp = type(opyb) == _d("Qg0HWhE") and opyb[1] or opyb

if type(vgp) == _d("RRgXXxoK") and gsu.roleIds[vgp] then
gsu.role[2] = gsu.roleIds[vgp]
gsu.picked[2] = vgp
end

pcall(function()
gsu.twoDropdown:UpdateName(_d("ZQAKQlRfWtTsxxY") .. gsu.roleLabel(2))
end)

if gsu.applyRoles then
gsu.applyRoles()
end
end,
}, _d("RQAKQitfJQQ"))

pcall(function()
gsu.oneDropdown:UpdateSelection(_d("YgMSUwY"))
end)

pcall(function()
gsu.twoDropdown:UpdateSelection(_d("eDwmFhYMDkIAAEU"))
end)

getgenv().ACBXSlot = gsu

local bxqi = ln:Section({
Side = _d("egkDQg"),
})

bxqi:Header({
Name = _d("ZA0MUlQPFUUf"),
})

bxqi:Toggle({
Name = _d("dxkRWVQ/G18IRXQbHgk"),
Default = false,
Callback = function(zo)
axd.enabled = zo
axd.pending = {}
axd.pendingUntil = {}

if zo then
axd.cleared = {}
end
end,
}, _d("VxkRWSsfG18IOlQbHgk"))

bxqi:Toggle({
Name = _d("dxkRWVQ6G1oHRUIbTShXBQEWNgIJRQ"),
Default = false,
Callback = function(jjo)
axd.walkToBoss = jjo
end,
}, _d("VxkRWSsaG1oHOkIbMghXBQFpFgIJRQ"))

local kqfe
kqfe = bxqi:Slider({
Name = _d("YQ0JXVQ+ClMJAQ"),
Minimum = 0,
Maximum = 72,
Default = 18,
Precision = 0,
Callback = function(rc)
local lvk = math.floor(rc + 0.5)
axd.walkSpeed = lvk

if kqfe and lvk ~= rc then
kqfe:UpdateValue(lvk)
end
end,
}, _d("QQ0JXSseClMJAQ"))

bxqi:Dropdown({
Name = _d("ZA0MUlQpE1AKDFUBAQ5P"),
Search = false,
Multi = true,
Required = false,
Default = { _d("eAMXWxUB") },
Options = lqff,
Callback = function(nzk)
local cipi = {}

if type(nzk) == _d("Qg0HWhE") then
for oat, izds in ipairs(lqff) do
if nzk[izds] then
table.insert(cipi, klo[izds])
end
end
end

if #cipi == 0 then
cipi = { _d("WAMXWxUB") }
end

axd.difficulties = cipi
end,
}, _d("RA0MUisJE1AKDFUBAQ5P"))

function axd.pickedIds(ibh)
local wlg = {}

if type(ibh) == _d("Qg0HWhE") then
for adyy, lvrw in ipairs(rdzp) do
if ibh[lvrw] and jmv[lvrw] then
table.insert(wlg, jmv[lvrw])
end
end
elseif type(ibh) == _d("RRgXXxoK") and jmv[ibh] then
wlg = { jmv[ibh] }
end

return wlg
end

bxqi:Dropdown({
Name = _d("ZA0MUlQvFUUf"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = rdzp,
Callback = function(kikt)
axd.picks[1] = axd.pickedIds(kikt)
axd.cursor[1] = 1
axd.losses[1] = {}
end,
}, _d("RA0MUisPFUUf"))

axd.boss2Dropdown = bxqi:Dropdown({
Name = _d("ZA0MUlQvFUUfRR4nARVCTFcf"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = rdzp,
Callback = function(rya)
axd.picks[2] = axd.pickedIds(rya)
axd.cursor[2] = 1
axd.losses[2] = {}
end,
}, _d("RA0MUisPFUUfOkUYAg5pXg"))

pcall(function()
axd.boss2Dropdown:SetVisibility(false)
end)

task.spawn(function()
local pdb = nil

while uxq() do
local hbk = gsu.splitNpc()

if hbk ~= pdb then
pdb = hbk

local axw = axd.boss2Dropdown

if axw then
pcall(function()
axw:SetVisibility(hbk)
end)
end
end

task.wait(0.5)
end
end)

gctb:Paragraph({
Header = _d("dxkRWVQrE1EEEQ"),
Body = _d("ZQkJUxcZWlkCABYbH1pbAxdTVCMqdR9FUAYCFxYYDVNUGhVEAAFFVA8fWgMSGA"),
})

for yxqz, kde in ipairs(odzb) do
gctb:Dropdown({
Name = kde.name,
Search = true,
Multi = true,
Required = false,
Default = {},
Options = kde.options,
Callback = function(oml)
local wvci = {}

if type(oml) == _d("Qg0HWhE") then
if oml.All then
for jajk, lvq in ipairs(kde.ids) do
table.insert(wvci, lvq)
end
else
for buei, hso in ipairs(kde.options) do
if oml[hso] and kde.byName[hso] then
table.insert(wvci, kde.byName[hso])
end
end
end
elseif type(oml) == _d("RRgXXxoK") then
if oml == _d("dwAJ") then
for leee, cu in ipairs(kde.ids) do
table.insert(wvci, cu)
end
else
wvci = { kde.byName[oml] }
end
end

kuve.selectedByWorld[kde.name] = wvci
end,
}, _d("WBwGaQ") .. kde.id)
end

gctb:Toggle({
Name = _d("dxkRWVQuFVscCVMACFplGApEDQ"),
Default = false,
Callback = function(fttp)
kuve.story = fttp
kuve.battlePending = false
kuve.battlePendingUntil = 0
end,
}, _d("VxkRWSsOFVscCVMACCVFGApEDQ"))

kuve.storyDropdown = gctb:Dropdown({
Name = _d("cgUDUB0OD1oYDFMH"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = rfgv,
Callback = function(gow)
local qizu = type(gow) == _d("Qg0HWhE") and gow[1] or gow

if type(qizu) == _d("RRgXXxoK") and kr[qizu] then
kuve.storyDifficulty = kr[qizu]
end
end,
}, _d("UgUDUB0OD1oYDFMH"))

pcall(function()
kuve.storyDropdown:UpdateSelection(rfgv[1])
end)

pcall(function()
kuve.storyDropdown:UpdateName(_d("cgUDUB0OD1oYDFMHTZi2zkU") .. rfgv[1])
end)

gctb:Paragraph({
Header = _d("fgMSFjUYDllMJlkZHRZTGAAWJxkVRBVFQRsfEUU"),
Body = _d("cAUCXgAeWlMaAEQNTQlCAxdPVCMqdUxIFjoMF1MHRUIcHxVDCw0WPR4fXQ0MFllNFVhMEV4RTRVYCUVSHQscXw8QWgAUWlcOCkARQVpBAxddHQMdFhgNU1QMCFMNFhYdA1pZHgFTBk0bWAhFVRsAE1gLRVQVDhEWHgpDGglaVx9FVRsCFlIDElgHTRlaCQREWmdwfxhFRBEdFlcPAEVUGRJTTAREEQxaUh4KRhACDVgfRUEcBBZTTAxCVAQJFgMLGlQMFFJMCVMVGx9FTBdXHQlaVAMWRREeWlcAClgRQw"),
})

local cjd = ccoy:Section({
Side = _d("egkDQg"),
})

cjd:Header({
Name = _d("YgMSUwY"),
})

local fqjd
local ygcx

local zawb = {
remotes = {},
watcher = false,
hidMenu = false,

hardWatch = {},
}

function zawb.hardPick(njkv)
njkv = njkv == true

for czvd, zqo in ipairs({ _d("dA0RQhgIPUMF"), _d("dA0RQhgIPUMFVw") }) do
local uw = xjwi:FindFirstChild(zqo)

if uw then
if uw:GetAttribute(_d("YgMSUwYlG0QINV8XBg")) ~= njkv then
pcall(function()
uw:SetAttribute(_d("YgMSUwYlG0QINV8XBg"), njkv)
end)
end

if uw:GetAttribute(_d("YgMSUwYlG0QIN0Ma")) ~= nil and uw:GetAttribute(_d("YgMSUwYlG0QIN0Ma")) ~= njkv then
pcall(function()
uw:SetAttribute(_d("YgMSUwYlG0QIN0Ma"), njkv)
end)
end
end
end
end

function zawb.pinMode()
if not (rlid.enabled or rlid.nightmare) then
return
end

local rl = rlid.nightmare == true

for wfri, gvo in ipairs({ _d("dA0RQhgIPUMF"), _d("dA0RQhgIPUMFVw") }) do
local ylx = xjwi:FindFirstChild(gvo)

if ylx then
if ylx:GetAttribute(_d("YgMSUwYlG0QINV8XBg")) ~= rl then
pcall(function()
ylx:SetAttribute(_d("YgMSUwYlG0QINV8XBg"), rl)
end)
end

if zawb.hardWatch[ylx] == nil then
local hqmz, ckcy = pcall(function()
return ylx:GetAttributeChangedSignal(_d("YgMSUwYlG0QINV8XBg")):Connect(function()
if not (rlid.enabled or rlid.nightmare) then
return
end

local tvd = rlid.nightmare == true

if ylx.Parent and ylx:GetAttribute(_d("YgMSUwYlG0QINV8XBg")) ~= tvd then
pcall(function()
ylx:SetAttribute(_d("YgMSUwYlG0QINV8XBg"), tvd)
end)
end
end)
end)

if hqmz then
zawb.hardWatch[ylx] = ckcy
end
end
end
end
end

function zawb.pauseRows()
local cvdq = nsmz:FindFirstChild(_d("ZgAETxEfPUMF")) and nsmz.PlayerGui:FindFirstChild(_d("ZQkRQh0DHUUrEF8"))

if not cvdq then
return nil, nil
end

return cvdq:FindFirstChild(_d("Zg0QRREkFFAFC18ACDNYHBBC"), true), cvdq:FindFirstChild(_d("Zg0QRREkFFAFC18ACDleCQZd"), true)
end

function zawb.pauseState()
local wgj = nsmz:FindFirstChild(_d("ZgAETxEfPUMF")) and nsmz.PlayerGui:FindFirstChild(_d("ZQkRQh0DHUUrEF8"))
local hlz = wgj and wgj:FindFirstChild(_d("cQkRZREZDl8CAkU"), true)

if not hlz then
return nil
end

local flbj, cqlr = pcall(function()
return hlz:Invoke()
end)

if flbj and type(cqlr) == _d("Qg0HWhE") then
return cqlr.pauseInfiniteEnabled == true
end

return nil
end

function zawb.pauseAt(ituy, vabc)
vabc = math.max(1, math.floor(tonumber(vabc) or 1))

local zxv, ksh = zawb.pauseRows()

if not (zxv and ksh) then
return false
end

local hovv = pcall(function()
if tonumber(zxv.Text) ~= vabc then
zxv.Text = tostring(vabc)

if getconnections then
for arpn, wyog in ipairs(getconnections(zxv.FocusLost)) do
pcall(function()
wyog:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end
end)

if ituy ~= nil then
local mv = zawb.pauseState()

if mv ~= nil and mv ~= ituy and getconnections then
pcall(function()
for pi, wtv in ipairs(getconnections(ksh.MouseButton1Click)) do
pcall(function()
wtv:Fire()
end)
end
end)
end
end

return hovv
end

function zawb.restorePause()
qzh.triggered = false

if qzh.enabled and qzh.floor > 0 then
zawb.pauseAt(true, qzh.floor)

pcall(function()
etxi.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = qzh.floor,
})
end)

return
end

pcall(function()
etxi.SaveClientData:FireServer({
pauseInfiniteEnabled = false,
pauseInfiniteAt = 1,
})
end)

zawb.pauseAt(false, 1)
end

function zawb.remote(grqk)
local johw = zawb.remotes[grqk]

if johw and johw.Parent then
return johw
end

local gvis = pen:FindFirstChild(_d("ZAkIWQAICQ"))
local tic = gvis and gvis:FindFirstChild(grqk)

if tic then
zawb.remotes[grqk] = tic
end

return tic
end

function zawb.historyOpen()
for xeh, usaj in ipairs({ _d("dA0RQhgIPUMF"), _d("dA0RQhgIPUMFVw") }) do
local ka = xjwi:FindFirstChild(usaj)
local ccbp = ka and ka:FindFirstChild(_d("YgMSUwYlE0UYCkQNKwhXAQA"))

if ccbp and ccbp.Visible then
return true
end
end

return false
end

function zawb.generationOpen()
local yerd = xjwi:FindFirstChild(_d("YgMSUwY/H0UZCUIzGBM"))
local tgr = yerd and yerd:FindFirstChild(_d("ZAkWQxgZPEQNCFM"))

return tgr ~= nil and tgr.Visible
end

function zawb.standDown(alv)
if not zawb.hidMenu then
local kms = true

pcall(function()
kms = dmj:GetState() ~= false
end)

if kms then
zawb.hidMenu = true

pcall(function()
dmj:SetState(false)
end)
end
end

if zawb.watcher then
return
end

zawb.watcher = true

task.spawn(function()

local uvr = os.clock() + 6

while uxq() and os.clock() < uvr and not alv() do
task.wait(0.2)
end

while uxq() and alv() do
task.wait(0.4)
end

zawb.watcher = false

if zawb.hidMenu then
zawb.hidMenu = false

pcall(function()
dmj:SetState(true)
end)
end
end)
end

rlid.floorAt = 0
rlid.battleAt = 0
rlid.floor = nil
rlid.manualPause = false

task.spawn(function()
local ga = zem(_d("dA0RQhgIL0YIBEIR"))
local ieo = zem(_d("ZRULVSACDVMeI1obAgg"))
local veqa = zem(_d("dA0RQhgIP1gI"))
local eehk = zem(_d("YgMSUwY/D1gpC1IRCQ"))

if ga then
ga.OnClientEvent:Connect(function()
rlid.battleAt = os.clock()
end)
end

if ieo then
ieo.OnClientEvent:Connect(function(eqkz)
rlid.floorAt = os.clock()

if type(eqkz) == _d("WBkIVBEf") and eqkz > 1 then
rlid.floor = eqkz
else
rlid.floor = nil
end
end)
end

if veqa then
veqa.OnClientEvent:Connect(function(hrng)
if type(hrng) == _d("Qg0HWhE") and hrng.mode == _d("QgMSUwY") then
rlid.floorAt = os.clock()
end
end)
end

if eehk then
eehk.OnClientEvent:Connect(function()

rlid.lastRunEnded = {
clock = os.clock(),
floor = rlid.floor,
}

task.delay(1, function()
local dyu = xjwi:FindFirstChild(_d("YgMSUwY/H0UZCUIzGBM"))
local wlku = dyu and dyu:FindFirstChild(_d("ZAkWQxgZPEQNCFM"))
local ioja = {}

if wlku then
for tti, mmr in ipairs(wlku:GetDescendants()) do
if mmr:IsA(_d("YgkdQjgMGFMA")) and mmr.Visible and mmr.Text ~= _d("") and #ioja < 12 then
ioja[#ioja + 1] = mmr.Text
end
end
end

if rlid.lastRunEnded then
rlid.lastRunEnded.texts = table.concat(ioja, _d("FhBF"))
end
end)

rlid.floorAt = 0
rlid.battleAt = 0
rlid.floor = nil

if rlid.manualPause then
zawb.restorePause()
end
end)
end

end)

local function pkz()
local ezbm = os.clock()

if ezbm - (rlid.floorAt or 0) < 90 and ezbm - (rlid.battleAt or 0) < 12 then
return true
end

for holi, krwr in ipairs({ _d("dA0RQhgIPUMF"), _d("dA0RQhgIPUMFVw") }) do
local ki = xjwi:FindFirstChild(krwr)

if ki then

local zkk = ki:FindFirstChild(_d("YgMSUwYrFlkDF3oVDx9a"))

if zkk and zkk.Visible then
return true
end

local gegz = ki:FindFirstChild(_d("cAAKWQY+GUQJAFg"))

if gegz and gegz.Visible then
return true
end

local ftti = ki:FindFirstChild(_d("dA0RQhgIKVUeAFMa"))

if ftti and ftti.Visible then
local fmr = ftti:FindFirstChild(_d("ZxkMVR8qE0AJMEY2GA5CAws"))

if fmr and fmr.Visible then
return true
end
end
end
end

return false
end

function zawb.hardNow()

local gwk = xjwi:FindFirstChild(_d("dA0RQhgIPUMF"))
local arft = gwk and gwk:GetAttribute(_d("YgMSUwYlG0QINV8XBg"))

if arft ~= nil then
return arft == true
end

local zee = axd.misc.util.profile

return type(zee) == _d("Qg0HWhE") and zee.lastTowerHard == true
end

function zawb.endIfWrongMode(bxq)
if not pkz() or zawb.hardNow() == (bxq == true) then
return false
end

pcall(function()
if type(ygcx) == _d("UBkLVQAEFVg") then
ygcx()
else
etxi.EndTowerRemote:FireServer(1)
end
end)

rlid.floor = nil

return true
end

function zawb.hardPickNow()
for qmw, fau in ipairs({ _d("dA0RQhgIPUMF"), _d("dA0RQhgIPUMFVw") }) do
local fdi = xjwi:FindFirstChild(fau)
local hwpv = fdi and fdi:GetAttribute(_d("YgMSUwYlG0QINV8XBg"))

if hwpv ~= nil then
return hwpv == true
end
end

return nil
end

function zawb.parked()
for ebl, hzn in ipairs({ _d("dA0RQhgIPUMF"), _d("dA0RQhgIPUMFVw") }) do
local itja = xjwi:FindFirstChild(hzn)

if itja then
local cos = itja:FindFirstChild(_d("YgMSUwYrFlkDF3oVDx9a"))
local ysx = itja:FindFirstChild(_d("cAAKWQY+GUQJAFg"))
local cvkp = itja:FindFirstChild(_d("dA0RQhgIKVUeAFMa"))

if cos and cos.Visible
and not (ysx and ysx.Visible)
and not (cvkp and cvkp.Visible) then
return true
end
end
end

return false
end

rlid.ui = cjd:Toggle({
Name = _d("dxkRWVQ5FUEJFw"),
Default = false,
Callback = function(txj)

if rlid.quiet then
return
end

rlid.enabled = txj
rlid.pending = false
rlid.pendingUntil = 0

if txj then

if gsu.enabled and gsu.role[1] ~= _d("QgMSUwY") then
rlid.enabled = false

pcall(function()
rlid.ui:UpdateState(false)
end)

pcall(function()
dmj:Dialog({
Title = _d("dxkRWVQ5FUEJFxYbCxw"),
Description = _d("ZQAKQlRcWl8fRUURGVpCA0U") .. gsu.roleName(1) .. _d("GEwxXhFNM1gKDFgdGQMWLwRFAAEfFgMLWg1NCUINF0IHTRVYTBZaGxlaB0BFRRtNCVMYRWUYAg4WXUVCG00uWRsARFQLE0QfERg"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})
end)

return
end

if gsu.otherTowerOn(_d("QgMSUwY")) then
rlid.enabled = false

pcall(function()
rlid.ui:UpdateState(false)
end)

pcall(function()
dmj:Dialog({
Title = _d("dxkRWVQ5FUEJFxYbCxw"),
Description = _d("dwIKQhwICBYYCkERH1pXGRFZGQwOXwMLFh0eWlcAF1MVCQMWAwsaVAwUUkwRXh0eWlcPBlkBAw4WAwtaDU0bWgAKQQdNFVgJRUIbGh9ETBdDGk0bQkwEFgAEF1NCRWIBHxQWGA1XAE0VWAlFWRILWlAFF0UAQVpZHkVCAR8UFgMLFjUYDllMNlobGVpFA0VTFQ4SFh8JWQBNHVMYFhYdGQkWAxJYVBkVQQkXGA"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})
end)

return
end

rlid.nightmare = false

pcall(function()
rlid.quiet = true
rlid.nightmareToggle:UpdateState(false)
rlid.quiet = false
end)

rlid.manualPause = false
rlid.paused = false
zawb.restorePause()
rlid.pauseArmed = false

zawb.endIfWrongMode(false)
zawb.hardPick(false)

return
end

if not pkz() then
return
end

rlid.paused = true
local nai = fqjd()

dmj:Notify({
Title = _d("dxkRWVQ5FUEJFxYbCxw"),
Description = nai and _d("YgMSUwZNCEMCRUYVGAlTCEs") or _d("ZBkLFh0eWloFE1NYTRhDGEVYG00YRAkEXVQPD0IYClhUCxVDAgEY"),
Lifetime = 5,
})
end,
}, _d("VxkRWSsZFUEJFw"))

rlid.nightmareToggle = cjd:Toggle({
Name = _d("dxkRWVQjE1EEEVsVHx8WOApBER8"),
Default = false,
Callback = function(gk)
if rlid.quiet then
return
end

rlid.nightmare = gk

if not gk then

rlid.enabled = false
rlid.pending = false
rlid.pendingUntil = 0

zawb.hardPick(false)

pcall(function()
rlid.quiet = true
rlid.ui:UpdateState(false)
rlid.quiet = false
end)

if pkz() then
rlid.paused = true
local xmbz = fqjd()

dmj:Notify({
Title = _d("dxkRWVQjE1EEEVsVHx8WOApBER9aWQoD"),
Description = xmbz and _d("eAUCXgAAG0QJRUQBA1pGDRBFEQlU") or _d("ZBkLFh0eWloFE1NYTRhDGEVYG00YRAkEXVQPD0IYClhUCxVDAgEY"),
Lifetime = 5,
})
end

return
end

if gsu.enabled and gsu.role[1] ~= _d("QgMSUwY") then
rlid.nightmare = false

pcall(function()
rlid.quiet = true
rlid.nightmareToggle:UpdateState(false)
rlid.quiet = false
end)

pcall(function()
dmj:Dialog({
Title = _d("dxkRWVQjE1EEEVsVHx8WOApBER9aWQoD"),
Description = _d("eAUCXgAAG0QJRWIbGh9ETAZZAQMORUwERVQ5FUEJFxYdA1pFAApCVFxWFg0LUlQUFUMeRUUYAg4WXUVfB00VWEw") .. gsu.roleName(1) .. _d("Fh4MURwZWlgDEhhUPh9CTBZaGxlaB0wRWVQ5FUEJFxYSBAhFGEs"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})
end)

return
end

pcall(function()
rlid.quiet = true
rlid.ui:UpdateState(false)
rlid.quiet = false
end)

rlid.enabled = true
rlid.manualPause = false
rlid.paused = false

zawb.restorePause()
rlid.pauseArmed = false

zawb.endIfWrongMode(true)
zawb.hardPick(true)

rlid.pending = false
rlid.pendingUntil = 0
end,
}, _d("VxkRWSsDE1EEEVsVHx9pGApBER8"))

cjd:Header({
Name = _d("dxkRWVQ9G0MfABYgAg1THg"),
})

local njj

njj = cjd:Toggle({
Name = _d("dxkRWVQ9G0MfABYyARVZHg"),
Default = false,
Callback = function(pklv)
qzh.triggered = false

if pklv and qzh.floor <= 0 then
qzh.enabled = false

pcall(function()
njj:UpdateState(false)
end)

pcall(function()
etxi.SaveClientData:FireServer({ pauseInfiniteEnabled = false })
end)

dmj:Dialog({
Title = _d("dxkRWVQ9G0MfABYyARVZHg"),
Description = _d("ZQkRFhVNClcZFlNUCxZZAxcWFQ8VQAlFBlQLE0QfERZZTTtDGAoWJAwPRQlFYhsaH0RMC1MRCQkWGAoWHwMVQUwSXhEfHxYYChYHGRVGQg"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})

return
end

qzh.enabled = pklv

pcall(function()
etxi.SaveClientData:FireServer({
pauseInfiniteEnabled = pklv,
pauseInfiniteAt = qzh.floor,
})
end)
end,
}, _d("VxkRWSsdG0MfAGkSARVZHg"))

cjd:Input({
Name = _d("Zg0QRRFNG0JMA1obAgg"),
Placeholder = _d("U0ICGFRYSg"),
AcceptedCharacters = _d("eBkIVBEfCQ"),
Callback = function(hfn)
local cew = tonumber(hfn) or 0

if cew < 0 then
cew = 0
end

if cew == qzh.floor then
return
end

qzh.floor = cew
qzh.triggered = false

if cew <= 0 and qzh.enabled then
qzh.enabled = false

pcall(function()
njj:UpdateState(false)
end)
end

pcall(function()
etxi.SaveClientData:FireServer({
pauseInfiniteAt = cew,
pauseInfiniteEnabled = qzh.enabled,
})
end)
end,
}, _d("Rg0QRREyG0IzA1obAgg"))

cjd:Button({
Name = _d("Zg0QRRFNLlkbAEQ"),
Callback = function()
local arot = false

pcall(function()
arot = fqjd()
end)

if arot then

rlid.manualPause = true
return
end

dmj:Dialog({
Title = _d("Zg0QRRFNLlkbAEQ"),
Description = _d("eANFWh0bHxYYCkERH1pEGQsWAAJaRg0QRRFNCF8LDUJUAxVBQg"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})
end,
})

cjd:Header({
Name = _d("dxkRWVQqE0AJRWME"),
})

pwis.toggle = cjd:Toggle({
Name = _d("dxkRWVQqE0AJRWME"),
Default = false,
Callback = function(xtgj)
pwis.triggered = false

if xtgj and pwis.floor <= 0 then
pwis.enabled = false

pcall(function()
pwis.toggle:UpdateState(false)
end)

dmj:Dialog({
Title = _d("dxkRWVQqE0AJRWME"),
Description = _d("ZQkRFhVNHV8aABYBHVpQAApZBk0bVAMTU1RdWlAFF0UATVcWLRBCG009XxoAFiEdWlgJAFIHTQ5ZTA5YGxpaQQQARBFNDllMFkIbHVQ"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})

return
end

pwis.enabled = xtgj
end,
}, _d("VxkRWSsKE0AJOkME"))

cjd:Input({
Name = _d("cQUTU1QYChYDCxYSARVZHg"),
Placeholder = _d("U0ICGFRaSg"),
AcceptedCharacters = _d("eBkIVBEfCQ"),
Callback = function(byqy)
local yyg = tonumber(byqy) or 0

if yyg < 0 then
yyg = 0
end

if yyg == pwis.floor then
return
end

pwis.floor = yyg
pwis.triggered = false

if yyg <= 0 and pwis.enabled then
pwis.enabled = false

pcall(function()
pwis.toggle:UpdateState(false)
end)
end
end,
}, _d("UQUTUysYCmkDC2kSARVZHg"))

pwis.weatherToggle = cjd:Toggle({
Name = _d("dxkRWVQKE0AJRUMETRVYTBJTFRkSUx4"),
Default = false,
Callback = function(akv)
pwis.weatherTriggered = false

if akv and next(pwis.weathers) == nil then
pwis.weatherEnabled = false

pcall(function()
pwis.weatherToggle:UpdateState(false)
end)

dmj:Dialog({
Title = _d("YQkEQhwICBYrDEARTS9G"),
Description = _d("YgUGXVQMDhYAAFcHGVpZAgAWAwgbQgQARFQPH1oDEhYSBAhFGEUbVAIOXgkXQR0eHxYYDVMGCFpfH0VYGxkSXwICFgACWlEFE1NUGAoWAwsY"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})

return
end

pwis.weatherEnabled = akv
end,
}, _d("VxkRWSsKE0AJOkMEMhVYMxJTFRkSUx4"))

cjd:Dropdown({
Name = _d("cQUTU1QYChYbAFcABR9EHw"),
Multi = true,
Required = false,
Options = { _d("YhUVXhsCFA"), _d("dAAMTA4MCFI"), _d("egUCXgADE1gL"), _d("YQULUgcZFUQB"), _d("ZQQERB0DHVcC"), _d("ZQULUQEBG0QFEU8"), _d("ewMLVwYOEhYoClsVBBQ"), _d("YAMMUg"), _d("ew0BU1QEFBYkAFcCCBQ"), _d("ew0LURU") },
Callback = function(jpd)
pwis.weathers = {}

if type(jpd) == _d("Qg0HWhE") then
for ppuj, qnoe in pairs(jpd) do
if qnoe then
pwis.weathers[ppuj] = true
end
end
end

pwis.weatherTriggered = false
end,
}, _d("UQUTUysYCmkbAFcABR9EHw"))

cjd:Input({
Name = _d("ewULXxkYFxYKCVkbHwk"),
Placeholder = _d("BkxYFhUDAxYKCVkbHw"),
AcceptedCharacters = _d("eBkIUwYEGQ"),
Callback = function(ckvi)
local cky = math.floor(tonumber(ckvi) or 0)

if cky < 0 then
cky = 0
end

pwis.weatherMinFloor = cky
pwis.weatherTriggered = false
end,
}, _d("WwULXxkYF2kKCVkbHwk"))

cjd:Button({
Name = _d("cQUTU1Q4ChY4CkERHw"),
Callback = function()
if not pkz() then
dmj:Dialog({
Title = _d("cQUTU1Q4ChY4CkERHw"),
Description = _d("eANFWh0bHxYYCkERH1pEGQsWAAJaUQUTU1QYChYeDFEcGVpYAxIY"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})

return
end

dmj:Dialog({
Title = _d("cQUTU1Q4ChY4CkERHw"),
Description = _d("cAMXUBEEDhYYDVNUDg9EHgBYAE0OWRsARFQfD1hTRWIcBAkWDwRYGgIOFg4AFgEDHlkCABg"),
Buttons = {
{
Name = _d("cQNFVBUOEQ"),
},
{
Name = _d("cQUTU1QYCg"),
Callback = function()
local rzic = false

pcall(function()
rzic = ygcx()
end)

if rzic then
return
end

task.defer(function()
task.wait(0.3)

dmj:Dialog({
Title = _d("cQUTU1Q4ChY4CkERHw"),
Description = _d("eANFUR0bHxYZFRYWGA5CAwsWFQMJQQkXUxBNVxYYDVNUHw9YTAhXDU0bWh4AVxAUWlQJRVkCCAgY"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
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

cjd:Button({
Name = _d("dQQAVR9NFlkfFhYcBAlCAxdP"),
Callback = function()
local wftl = zawb.remote(_d("ZAkUQxEeDmIDElMGJRNFGApEDQ"))

if not wftl then
dmj:Dialog({
Title = _d("egMWRVQlE0UYCkQN"),
Description = _d("YgQMRVQPD18AARYcDAkWAgoWAAINUx5FXh0eDlkeHBYGCBdZGAAY"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})

return
end

zawb.standDown(zawb.historyOpen)

pcall(function()
wftl:FireServer()
end)
end,
})

cjd:Button({
Name = _d("dQQAVR9NHVMCAEQVGRNZAhY"),
Callback = function()

local qowx = xjwi:FindFirstChild(_d("YgMSUwY/H0UZCUIzGBM"))
local xlo = qowx and qowx:FindFirstChild(_d("eRwAWDMIFH4FFkIbHwM"))

if not xlo then
dmj:Dialog({
Title = _d("cQkLUwYMDl8DC0U"),
Description = _d("YgQMRVQPD18AARYcDAkWAgoWEwgUUx4EQh0CFEVMEl8aCRVBQg"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})

return
end

zawb.standDown(zawb.generationOpen)

pcall(function()
xlo:Fire()
end)
end,
})

kuve.bossTeams.towerSection = ccoy:Section({
Side = _d("egkDQg"),
})

kuve.bossTeams.towerSection:Header({
Name = _d("YgMSUwZNLlMNCEU"),
})

kuve.bossTeams.towerSection:Paragraph({
Header = _d("fgMSFgACDVMeRUIRDBdFTBJZBgY"),
Body = _d("eQoDDFQIG1UERUQBA1pDHwBFVBoSVxgAQBEfWkIJBFtUBA5FTBZaGxlaVwAXUxUJAxYECloQHlQ8ZipYTk0fVw8NFgACDVMeRVQRARVBTBdDGh5aQQURXlQZElNMEVMVAFpGBQZdEQlaUAMXFh0ZVA"),
})

kuve.bossTeams.towerToggle = kuve.bossTeams.towerSection:Toggle({
Name = _d("YgMSUwZNLlMNCEU"),
Default = false,
Callback = function(jnw)
kuve.bossTeams.towersOn = jnw
end,
}, _d("QgMSUwYyDlMNCEU"))

for xscy, hfeb in ipairs({
{ kind = _d("QgMSUwY"), name = _d("fwIDXxoEDk9MJlcHGRZTTEoWOgQdXhgIVwYI") },
{ kind = _d("Xg0XUhcCCFM"), name = _d("fx8JVxoJWn4NF1IXAghT") },
}) do
local ggmt = math.clamp(math.floor(tonumber(kuve.bossTeams.towerPicked[hfeb.kind]) or 1), 1, 4)

kuve.bossTeams.towerPicked[hfeb.kind] = ggmt

kuve.bossTeams.towerUi[hfeb.kind] = kuve.bossTeams.towerSection:Dropdown({
Name = hfeb.name,
Search = false,
Multi = false,
Required = false,
Default = ggmt,
Options = { _d("YgkEW1Rc"), _d("YgkEW1Rf"), _d("YgkEW1Re"), _d("YgkEW1RZ") },
Callback = function(cjyq)
local ra = type(cjyq) == _d("Qg0HWhE") and cjyq[1] or cjyq
local goq = type(ra) == _d("RRgXXxoK") and tonumber(ra:match(_d("HkkBHV0"))) or nil

if goq then
kuve.bossTeams.towerPicked[hfeb.kind] = goq
kuve.bossTeams.save()
end

pcall(function()
kuve.bossTeams.towerUi[hfeb.kind]:UpdateName(hfeb.name .. _d("Fo7llFQ") .. (ra or _d("YgkEW1Rc")))
end)
end,
}, _d("QgkEWysZFUEJF2k") .. hfeb.kind)

pcall(function()
kuve.bossTeams.towerUi[hfeb.kind]:UpdateSelection(_d("YgkEW1Q") .. tostring(ggmt))
kuve.bossTeams.towerUi[hfeb.kind]:UpdateName(hfeb.name .. _d("Fo7llFQ5H1cBRQ") .. tostring(ggmt))
end)
end

kuve.bossTeams.towerSection:Header({
Name = _d("ZRsERlQCFBYKCVkbHw"),
})

kuve.bossTeams.towerSection:Paragraph({
Header = _d("ZRsERlQZH1cBRVkaTRsWCglZGx8"),
Body = _d("YgQAFhMMF1NLFhYbGhQWHxJXBEFaWAMRFhVNClcZFlNaTT9XDw0WBhgWU0wMRVQMWlAAClkGTRtYCEVCHAhaQgkEW1QaFUQCRVAGAhcWGA1XAE0cWgMKRFQCFBpMEkQdGQ5TAkVfGhkVFhgNU1QKG1sJQkVUPh9CGAxYEx5aG1JFdwEZFRY4AFcZTSlBDRUWRU0bWAhFBFhNCVlMEV4RTR1XAQAWGQwRUx9FQhwIWkUbDEIXBVpfGBZTGAtaQQQAWFQMWkQZCxYHGRtEGBYWAAUbQkwDWhsCCBhMK1kABRNYC0VfB00JQgMVRhEJWlcCARYABR8WHhBYVAYfUxwWFh0ZCRYfCVkAQ3A8LUVVFR4OWglFRAEDWlEJEUVUGRJTTBZXGQhaRRsMQhcFWlAeCltUGRJfH0VGFQMfWkBFVBEOG0MfABYABR8WCwRbEUoJFgMSWFQeDVccRVkaAQMWCgxEER5aXwIWXxAIWn8CA18aBA5TTDdZGwAJGGZvehEMDFNMBBYSARVZHkVXAE1KFhgKFgAYCFhMEV4VGVpEGQlTVAIcUEI"),
})

function kuve.bossTeams.swapStatusText()
local defp = kuve.bossTeams.swap
local ppw = {}

if defp.on then
table.insert(ppw, _d("eQJFG1QaCF8YEVMaTQ5ZTBFeEU0dVwEAEQdNO0MYChYgCBtbTDZBFR1aRAMSRVo"))
else
table.insert(ppw, _d("eQoDFllNDl4JRVEVAB8RH0VFAwwKFgUWFhgIHEJMBFobAx8Y"))
end

local drf = {
{ index = 1, floor = defp.floor, team = defp.team },
{ index = 2, floor = defp.floor2, team = defp.team2 },
}

for pqzd, fsa in ipairs(drf) do
if fsa.floor > 0 then
table.insert(ppw, string.format(_d("ZRsERlRIHgxMMVMVAFoTCEVQBgIXFgoJWRsfWhMI"), fsa.index, fsa.team, fsa.floor))
else
table.insert(ppw, string.format(_d("ZRsERlRIHgxMClASTVJYA0VQGAIVREwWUwBE"), fsa.index))
end
end

if kuve.bossTeams.swapMessage ~= _d("") then
table.insert(ppw, kuve.bossTeams.swapMessage)
end

return table.concat(ppw, _d("PA"))
end

function kuve.bossTeams.paintSwap()
pcall(function()
kuve.bossTeams.swapStatus:UpdateBody(kuve.bossTeams.swapStatusText())
end)
end

kuve.bossTeams.swapToggle = kuve.bossTeams.towerSection:Toggle({
Name = _d("ZRsERlQZH1cBRVkaTRxaAwpE"),
Default = kuve.bossTeams.swap.on,
Callback = function(gab)
kuve.bossTeams.swap.on = gab

kuve.bossTeams.swapReset()

kuve.bossTeams.swapApply()
kuve.bossTeams.save()
end,
}, _d("RRsERisZH1cBOlkaMhxaAwpE"))

kuve.bossTeams.swapInput = kuve.bossTeams.towerSection:Input({
Name = _d("cAAKWQY"),
Placeholder = _d("U0ICGFRYSgZMTQZUUFpZCgMf"),
AcceptedCharacters = _d("eBkIUwYEGQ"),
Callback = function(vxgi)
local efb = tonumber(type(vxgi) == _d("RRgXXxoK") and vxgi:match(_d("HkkBHV0")) or vxgi)

if efb then
kuve.bossTeams.swap.floor = efb
kuve.bossTeams.swapReset()
kuve.bossTeams.swapApply()
kuve.bossTeams.save()
end
end,
}, _d("UAAKWQY"))

kuve.bossTeams.swapDropdown = kuve.bossTeams.towerSection:Dropdown({
Name = _d("ZRsERlQZFQ"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(kuve.bossTeams.swap.team) or 1), 1, 4),
Options = { _d("YgkEW1Rc"), _d("YgkEW1Rf"), _d("YgkEW1Re"), _d("YgkEW1RZ") },
Callback = function(lkef)
local cchv = type(lkef) == _d("Qg0HWhE") and lkef[1] or lkef
local vqw = type(cchv) == _d("RRgXXxoK") and tonumber(cchv:match(_d("HkkBHV0"))) or nil

if vqw then
kuve.bossTeams.swap.team = vqw
kuve.bossTeams.swapReset()
kuve.bossTeams.swapApply()
kuve.bossTeams.save()
end

pcall(function()
kuve.bossTeams.swapDropdown:UpdateName(_d("ZRsERlQZFRaO5ZRU") .. (cchv or _d("YgkEW1Rc")))
end)

kuve.bossTeams.paintSwap()
end,
}, _d("RRsERisZFQ"))

kuve.bossTeams.swapInput2 = kuve.bossTeams.towerSection:Input({
Name = _d("cAAKWQZNSA"),
Placeholder = _d("U0ICGFRcSgZcRR5ETUcWAwNQXQ"),
AcceptedCharacters = _d("eBkIUwYEGQ"),
Callback = function(lvc)
local ufs = tonumber(type(lvc) == _d("RRgXXxoK") and lvc:match(_d("HkkBHV0")) or lvc)

if ufs then
kuve.bossTeams.swap.floor2 = ufs
kuve.bossTeams.swapReset()
kuve.bossTeams.swapApply()
kuve.bossTeams.save()
end
end,
}, _d("UAAKWQYySA"))

kuve.bossTeams.swapDropdown2 = kuve.bossTeams.towerSection:Dropdown({
Name = _d("ZRsERlQZFRZe"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(kuve.bossTeams.swap.team2) or 1), 1, 4),
Options = { _d("YgkEW1Rc"), _d("YgkEW1Rf"), _d("YgkEW1Re"), _d("YgkEW1RZ") },
Callback = function(wxer)
local gyg = type(wxer) == _d("Qg0HWhE") and wxer[1] or wxer
local jxj = type(gyg) == _d("RRgXXxoK") and tonumber(gyg:match(_d("HkkBHV0"))) or nil

if jxj then
kuve.bossTeams.swap.team2 = jxj
kuve.bossTeams.swapReset()
kuve.bossTeams.swapApply()
kuve.bossTeams.save()
end

pcall(function()
kuve.bossTeams.swapDropdown2:UpdateName(_d("ZRsERlQZFRZeRdT0z1o") .. (gyg or _d("YgkEW1Rc")))
end)

kuve.bossTeams.paintSwap()
end,
}, _d("RRsERisZFWle"))

kuve.bossTeams.swapStatus = kuve.bossTeams.towerSection:Paragraph({
Header = _d("ZRsERlQeDlcYEEU"),
Body = kuve.bossTeams.swapStatusText(),
})

pcall(function()
local prl = math.clamp(math.floor(tonumber(kuve.bossTeams.swap.team) or 1), 1, 4)
local bfio = math.clamp(math.floor(tonumber(kuve.bossTeams.swap.team2) or 1), 1, 4)

kuve.bossTeams.swapDropdown:UpdateSelection(_d("YgkEW1Q") .. tostring(prl))
kuve.bossTeams.swapDropdown:UpdateName(_d("ZRsERlQZFRaO5ZRUOR9XAUU") .. tostring(prl))
kuve.bossTeams.swapDropdown2:UpdateSelection(_d("YgkEW1Q") .. tostring(bfio))
kuve.bossTeams.swapDropdown2:UpdateName(_d("ZRsERlQZFRZeRdT0z1piCQRbVA") .. tostring(bfio))
end)

task.spawn(function()
local wi = kuve.bossTeams.swapStatusText()

while uxq() do
local jmj = kuve.bossTeams.swapStatusText()

if jmj ~= wi then
wi = jmj
kuve.bossTeams.paintSwap()
end

task.wait(2)
end
end)

if kuve.bossTeams.swap.on then
task.delay(2, function()
pcall(kuve.bossTeams.swapApply)
end)
end

kuve.bossTeams.section = ccoy:Section({
Side = _d("ZAUCXgA"),
})

kuve.bossTeams.section:Header({
Name = _d("dAMWRVQ5H1cBFg"),
})

kuve.bossTeams.section:Paragraph({
Header = _d("fgMSFhYCCUVMEVMVAAkWGwpEHw"),
Body = _d("eQoDDFQDFUIEDFgTTRNFTBZBHRkZXgkBFllNH0AJF09UCxNRBBEWAR4fRUwRXhFNDlMNCBYNAg8WDQlEEQweT0wNVwIIWloFC1MQTQ9GQEVBHAQZXkwMRVQZElNMNlobGVoHTBFTFQBaQwIJUwceWkUACkJUX1pCDQ5TB00OXglFVBUZDloJSzx+IhQMTABXFwVaVx4AV1QPH1oDEhYSBB1eGBYWAwQOXkwRXhFNDlMNCBYNAg8WHAxVH00cWR5FXwBD"),
})

kuve.bossTeams.toggle = kuve.bossTeams.section:Toggle({
Name = _d("dAMWRVQ5H1cBFg"),
Default = false,
Callback = function(jsy)
kuve.bossTeams.enabled = jsy
end,
}, _d("VAMWRSsZH1cBFg"))

for ywg, hzw in ipairs(odzb) do
local krd = kuve.bossTeams.picked[hzw.id] or 1

krd = math.clamp(math.floor(tonumber(krd) or 1), 1, 4)
kuve.bossTeams.picked[hzw.id] = krd

kuve.bossTeams.ui[hzw.id] = kuve.bossTeams.section:Dropdown({
Name = hzw.name,
Search = false,
Multi = false,
Required = false,

Default = krd,
Options = { _d("YgkEW1Rc"), _d("YgkEW1Rf"), _d("YgkEW1Re"), _d("YgkEW1RZ") },
Callback = function(czog)
local ssc = type(czog) == _d("Qg0HWhE") and czog[1] or czog
local bnba = type(ssc) == _d("RRgXXxoK") and tonumber(ssc:match(_d("HkkBHV0"))) or nil

if bnba then
kuve.bossTeams.picked[hzw.id] = bnba

kuve.bossTeams.save()
end

pcall(function()
kuve.bossTeams.ui[hzw.id]:UpdateName(hzw.name .. _d("Fo7llFQ") .. (ssc or _d("YgkEW1Rc")))
end)
end,
}, _d("QgkEWysaFUQAAWk") .. hzw.id)

pcall(function()
kuve.bossTeams.ui[hzw.id]:UpdateSelection(_d("YgkEW1Q") .. tostring(krd))
kuve.bossTeams.ui[hzw.id]:UpdateName(hzw.name .. _d("Fo7llFQ5H1cBRQ") .. tostring(krd))
end)
end

kuve.bossTeams.raidSection = ccoy:Section({
Side = _d("ZAUCXgA"),
})

kuve.bossTeams.raidSection:Header({
Name = _d("ZA0MUlQ5H1cBFg"),
})

kuve.bossTeams.raidSection:Paragraph({
Header = _d("fgMSFgYME1JMEVMVAAkWGwpEHw"),
Body = _d("eQoDDFQfG18IFhYBHh8WGw1XAAgMUx5FQhEMFxYYDVNUHhZZGEVXGB8fVwgcFhwCFlIfSzx+IhQMTABXFwVaRA0MUlQPH1oDEhYdHlpQAxBRHBlaQQURXlQZElNMEVMVAFpGBQZdEQlaUAMXFh0ZVA"),
})

kuve.bossTeams.raidToggle = kuve.bossTeams.raidSection:Toggle({
Name = _d("ZA0MUlQ5H1cBFg"),
Default = false,
Callback = function(sozx)
kuve.bossTeams.raidsOn = sozx
end,
}, _d("RA0MUisZH1cBFg"))

for xnn, cdj in ipairs(ld.Raids) do
if cdj.BossTitle and cdj.id then
local chwl = kuve.bossTeams.raidPicked[cdj.id] or 1

chwl = math.clamp(math.floor(tonumber(chwl) or 1), 1, 4)
kuve.bossTeams.raidPicked[cdj.id] = chwl

kuve.bossTeams.raidUi[cdj.id] = kuve.bossTeams.raidSection:Dropdown({
Name = cdj.BossTitle,
Search = false,
Multi = false,
Required = false,
Default = chwl,
Options = { _d("YgkEW1Rc"), _d("YgkEW1Rf"), _d("YgkEW1Re"), _d("YgkEW1RZ") },
Callback = function(zap)
local xgrz = type(zap) == _d("Qg0HWhE") and zap[1] or zap
local fjh = type(xgrz) == _d("RRgXXxoK") and tonumber(xgrz:match(_d("HkkBHV0"))) or nil

if fjh then
kuve.bossTeams.raidPicked[cdj.id] = fjh
kuve.bossTeams.save()
end

pcall(function()
kuve.bossTeams.raidUi[cdj.id]:UpdateName(cdj.BossTitle .. _d("Fo7llFQ") .. (xgrz or _d("YgkEW1Rc")))
end)
end,
}, _d("QgkEWysfG18IOg") .. cdj.id)

pcall(function()
kuve.bossTeams.raidUi[cdj.id]:UpdateSelection(_d("YgkEW1Q") .. tostring(chwl))
kuve.bossTeams.raidUi[cdj.id]:UpdateName(cdj.BossTitle .. _d("Fo7llFQ5H1cBRQ") .. tostring(chwl))
end)
end
end

task.spawn(function()
local bsc = pma()

while uxq() do
local kse = pma()

if gsu.enabled and gsu.statusText then
kse = gsu.statusText()
end

kse = kse .. _d("PGY2UwYbH0RMEEZU") .. sb()

if kse ~= bsc then
bsc = kse
pcall(function()
pm:UpdateBody(kse)
end)
end
task.wait(0.5)
end
end)

task.spawn(function()
while uxq() do
for jpx, jbbk in ipairs({ _d("dA0RQhgIPUMF"), _d("dA0RQhgIPUMFVw") }) do
local ncf = xjwi:FindFirstChild(jbbk)
local dq = ncf and ncf:FindFirstChild(_d("dA0RQhgIKVUeAFMa"))
local gdf = ncf and ncf:FindFirstChild(_d("fgUBUzYMDkIAAHQBGQ5ZAg"))

if dq and dq.Visible and gdf and not gdf.Visible then
gdf.Visible = true
end
end

task.wait(0.5)
end
end)

task.spawn(function()
local jg = false

while uxq() do
if odbu then
local dvnd = xjwi:FindFirstChild(_d("YgMSUwY/H0UZCUIzGBM"))
local dbni = dvnd and dvnd:FindFirstChild(_d("ZAkWQxgZPEQNCFM"))
local zheu = dvnd and dvnd:FindFirstChild(_d("cQkLUwYMDl8CAnAGDBdT"))

if zheu and zheu.Visible then
zheu.Visible = false
end

local whpf = dbni and dbni.Visible or false

if whpf and not jg then
local npol = dbni:FindFirstChild(_d("dQAKRREvD0IYClg"))
local hgq = false

if npol then
for jict, zy in ipairs({ _d("ewMQRREvD0IYClhFLhZfDw4"), _d("dw8RXwIMDlMI") }) do
local idna = npol[zy]
if idna then
for bifa, fyxh in ipairs(getconnections(idna)) do
pcall(function()
fyxh:Fire()
end)
hgq = true
end
end
end
end

if not hgq then
dbni.Visible = false
else
task.spawn(function()
task.wait(0.3)
if dbni.Parent and dbni.Visible then
dbni.Visible = false
end
end)
end
end

jg = whpf
else
jg = false
end

task.wait(0.2)
end
end)

local uesf = {}

function uesf.active()
return kuve.enabled or kuve.story
end

function uesf.towerHolds()
if gsu.enabled then
return false
end

if ot.run.enabled then
return true
end

return rlid.enabled and not rlid.paused
end

function uesf.ready(dzf, jnbr, gvz)
local pso = kuve.unlocked[dzf]

return (not pso or pso[jnbr] ~= false) and tx(dzf, jnbr) <= gvz
end

function uesf.hasReadyTarget()
local disy = os.time()

for vl, iizo in ipairs(dff()) do
for incj, zrx in ipairs(ylka()) do
if uesf.ready(iizo, zrx, disy) then
return true
end
end
end

return false
end

function uesf.backOff(llt, dktn)
xyf(llt, dktn, os.time() + 5)
end

function uesf.findTarget()
for pcxu, flbz in ipairs(dff()) do
local ccm = qtu(flbz)
local tug = os.time() - (kuve.lastFetch[flbz] or 0) > 60

if tug and ccm and not kuve.walkToNpc then
zjt(ccm)
task.wait(0.3)
okbx(flbz)
end

for xcfi, nph in ipairs(ylka()) do
if uesf.ready(flbz, nph, os.time()) then
return flbz, nph
end
end
end

return nil
end

function kuve.bossTeams.slotForFight()
if gsu.hasSlot2 == false then
return 1
end

if gsu.busy(2) then
return 1
end

return 2
end

function kuve.bossTeams.slotTeam(zj)
local hct = xjwi:FindFirstChild(_d("ZQkRQh0DHUUrEF8"))
local dbkp = hct and hct:FindFirstChild(_d("ZQAKQiAIG1s") .. zj .. _d("dBkRQhsD"), true)
local dc = dbkp and dbkp.Text

return dc and tonumber(dc:match(_d("HkkBHV0"))) or nil
end

function kuve.bossTeams.applyTeam(efv, luu)
efv = tonumber(efv)

if not efv then
return false
end

luu = tonumber(luu) or kuve.bossTeams.slotForFight()

if gsu.busy(luu) then
return false
end

kuve.bossTeams.lastSlot = luu

local iaxj = kuve.bossTeams.slotTeam(luu) or kuve.bossTeams.applied[luu]

if iaxj == efv then
return true
end

local pksf = zawb.remote(_d("ZRsMQhcFLlMNCA"))

if not pksf then
return false
end

local vuca = pcall(function()
pksf:FireServer(efv, false, luu)
end)

kuve.bossTeams.applied[luu] = efv
task.wait(0.2)

return vuca
end

function kuve.bossTeams.apply(vry)
if not kuve.bossTeams.enabled then
return
end

local lpel = kuve.bossTeams.worldOf[vry]
local nzty = lpel and kuve.bossTeams.picked[lpel]

if not nzty then
return
end

kuve.bossTeams.applyTeam(nzty)
end

function kuve.bossTeams.applyTower(bag, muu)
if not kuve.bossTeams.towersOn then
return false
end

local ifu = kuve.bossTeams.towerPicked[bag]

local ims = kuve.bossTeams.swapFired[bag]

if kuve.bossTeams.swap.on and type(ims) == _d("Qg0HWhE") then
ifu = ims[2] or ims[1] or ifu
end

if not ifu then
return false
end

return kuve.bossTeams.applyTeam(ifu, muu)
end

function kuve.bossTeams.applyRaid(cmbx)
if not kuve.bossTeams.raidsOn then
return
end

local lgms = cmbx and kuve.bossTeams.raidPicked[cmbx]

if not lgms then
return
end

kuve.bossTeams.applyTeam(lgms)
end

function uesf.fight(jc, rrhj)
local tju = qtu(jc)

if not tju then
uesf.backOff(jc, rrhj)
return false
end

local bay

if kuve.walkToNpc then
local scen = abk[jc]

if scen then
etxi.TeleportToWorld:FireServer(scen)
task.wait(2.5)

local ydtk = qtu(jc) or tju
local qitm = ydtk:GetPivot()

bay = fjgf(qitm.Position + qitm.LookVector * 6, function()
return not uesf.active() or not kuve.walkToNpc
end)

if bay then
okbx(jc)
bay = uesf.ready(jc, rrhj, os.time())
end
end
else
bay = zjt(tju)
end

if not bay then
uesf.backOff(jc, rrhj)
return false
end

task.wait(0.4)
kuve.bossTeams.apply(jc)
kuve.activeDifficulty[jc] = rrhj
etxi.SetNPCDifficulty:FireServer(jc, rrhj)
task.wait(0.4)

kuve.currentBattle = {
npcId = jc,
difficulty = rrhj,
}
oq = jc
izdc = rrhj
etxi.StartNPCBattle:FireServer(jc)
xyf(jc, rrhj, os.time() + 10)
kuve.battlePending = true
kuve.battlePendingUntil = os.time() + 30
task.wait(1)

return true
end

kuve.workPending = function()

if axd.misc and axd.misc.cards and axd.misc.cards.inFlight then
return true
end

if not uesf.active() then
return false
end

if kuve.battlePending then
return true
end

local mio = gsu.npcSlot()

if mio and gsu.busy(mio) then
return true
end

return uesf.hasReadyTarget()
end

task.spawn(function()
while uxq() do

local fcp = (gsu.enabled and (axd.enabled or nms.enabled or axd.worldBoss.enabled))
or uesf.towerHolds()
or not gsu.slotFree(gsu.npcSlot())

or (axd.misc and axd.misc.cards and axd.misc.cards.inFlight)
or (kuve.battlePending and os.time() < kuve.battlePendingUntil)

if uesf.active() and not fcp then
local cyw, rpz = uesf.findTarget()

if cyw then
uesf.fight(cyw, rpz)
end
end

task.wait(0.5)
end
end)

task.spawn(function()
while uxq() do

local yfts = {}

if axd.enabled then
local fbb = gsu.roleSlot(_d("WBwG"))

if fbb then
table.insert(yfts, fbb)
end

if gsu.splitNpc() and fbb ~= 2 then
table.insert(yfts, 2)
end
end

local kx = pen:FindFirstChild(_d("ZA0MUicZG0IZFg"))

if #yfts > 0 and kx and (not nms.enabled or gsu.splitNpc()) and (gsu.enabled or not kuve.workPending()) then
for np, tmax in ipairs(yfts) do
local dpc = kx

local xba = axd.bossFor(tmax)
local peuc = dpc:GetAttribute(_d("fx8qRhED")) == true or dpc:GetAttribute(_d("cAMXVREJ")) == true
local xrpq = xba ~= nil and dpc:GetAttribute(_d("ZAkEUg0y") .. xba) == true
local vere = xba and mrty(xba)

if xba and axd.pending[xba] and os.time() >= (axd.pendingUntil[xba] or 0) then
axd.pending[xba] = false
axd.cleared[xba] = nil
end

if xba and gsu.slotFree(tmax) and peuc and xrpq and axd.cleared[xba] ~= vere and not axd.pending[xba] then
local hqxx = jxs[xba]
local kngr = hqxx and qtu(hqxx)
local vu = false

if kngr then
if axd.walkToBoss then
local nnc = vw[xba]
local gsdm = nsmz.Character and nsmz.Character:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))
local zpof = kngr:GetPivot().Position
local ypu = gsdm and (gsdm.Position - zpof).Magnitude <= 15

if ypu then
vu = true
elseif nnc then
etxi.TeleportToWorld:FireServer(nnc)

local kla = os.clock()
while os.clock() - kla < 2.5 and axd.enabled do
task.wait(0.1)
end

if axd.enabled then
local lmt = qtu(hqxx) or kngr
local jstn = lmt:GetPivot()
local mwo = jstn.Position + jstn.LookVector * 6
vu = egfr(mwo, axd.walkSpeed, function()
return not axd.enabled or not axd.walkToBoss
end)
end
end

if not vu then
vu = zjt(kngr)
end
else
vu = zjt(kngr)
end

if vu then
task.wait(0.5)
end
end

if vu then
axd.inFlight[xba] = tmax
axd.pending[xba] = true
axd.pendingUntil[xba] = os.time() + 15
axd.cleared[xba] = vere

local rjz = axd.difficulties[1] or _d("WAMXWxUB")
local usj = axd.progress[xba]

if usj then
local nz = usj.unlocked
local wyh = usj.cooldowns

for tu, vvg in ipairs(axd.difficulties) do
local llyt = not nz or nz[vvg] ~= false
local vvp = wyh and tonumber(wyh[vvg]) or 0

if llyt and vvp <= 0 then
rjz = vvg
break
end
end
end

kuve.bossTeams.applyRaid(xba)
etxi.SetRaidDifficulty:FireServer(rjz, xba)
task.wait(0.3)
etxi.StartRaidBattle:FireServer(xba)
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while uxq() do
local qfn = nms.inBattle and os.time() < nms.inBattleUntil

if nms.enabled and (gsu.enabled or not kuve.workPending()) and not qfn and gsu.slotFree(gsu.roomSlot()) and not (nms.pending and os.time() < nms.pendingUntil) then
local bs = nms.progress

if bs == nil then
etxi.RequestInfiniteRoomProgress:FireServer()
task.wait(0.5)
else
local drm = nil

for gsjq, vmgz in ipairs(mzcg.Milestones) do
if mzcg.isMilestoneUnlocked(vmgz, bs) and not mzcg.isMilestoneCleared(vmgz, bs) then
drm = vmgz
break
end
end

if drm then

local ktuz = gsu.roomSlot()

nms.currentRoom = drm
nms.inBattle = true
nms.inBattleUntil = os.time() + 60
nms.pending = true
nms.pendingUntil = os.time() + 10

local elxe = xjwi:FindFirstChild(ktuz == 2 and _d("ZAkWUwAvG0IYCVMyARVZHlc") or _d("ZAkWUwAvG0IYCVMyARVZHg"))
if elxe and elxe:IsA(_d("dAULUhUPFlMpE1MaGQ")) then
elxe:Fire(drm, _d("XwIDXxoEDlMzF1kbAA"))
end

local jyq = xjwi:FindFirstChild(ktuz == 2 and _d("ZRgERAAkFFAFC18ACChZAwh0FRkOWglX") or _d("ZRgERAAkFFAFC18ACChZAwh0FRkOWgk"))
if jyq and jyq:IsA(_d("dAULUhUPFlMpE1MaGQ")) then
jyq:Fire(drm)
end

etxi.StartBattle:FireServer(_d("XwIDXxoEDlMzF1kbAA"), {
milestone = drm,
slot = ktuz,
})
task.wait(2)
end
end
end

task.wait(1)
end
end)

local function jdsv(yps, ckph)
local vtku = xjwi:FindFirstChild(_d("ZQ8XUxEDPUMF"))

if not vtku then
return
end

local mpwr = vtku:FindFirstChild(yps)
local vekl = mpwr and mpwr:FindFirstChild(_d("YA0JQxEhG1QJCQ"), true)
local jhuu = mpwr and mpwr:FindFirstChild(_d("eg0HUxg"), true)

if not mpwr then
return
end

local crsl = false

if vekl then
crsl = vekl.Text == _d("eQI")
elseif jhuu then
crsl = not string.lower(jhuu.Text):find(_d("WQoD"), 1, true)
end

if crsl ~= ckph then
for tpd, sboj in ipairs(getconnections(mpwr.MouseButton1Click)) do
local mol = sboj.Function

if type(mol) == _d("UBkLVQAEFVg") then
pcall(mol)
else
pcall(function()
sboj:Fire()
end)
end
end
end
end

getgenv().ACBXSetRollButton = jdsv

local function gggm(qoq)
jdsv(_d("ZxkMVR8/FVoAJ0MAGRVY"), qoq)
jdsv(_d("dxkRWSYCFlouEEIAAhQ"), qoq)
end

getgenv().ACBXSetRollUi = gggm
vikf.setRollButton = jdsv

pcall(function()
etxi.SaveClientData:FireServer({ autoHideBattle = false })
end)

task.defer(function()
task.wait(0.5)

local cqym = xjwi:FindFirstChild(_d("dA0RQhgIPUMF"))
local cflb = cqym and cqym:FindFirstChild(_d("dA0RQhgIKVUeAFMa"))
local pzkg = cqym and cqym:FindFirstChild(_d("fgUBUzYMDkIAAHQBGQ5ZAg"))

if pzkg and pzkg.Visible and cflb and not cflb.Visible and jtqz() then
for inr, bmr in ipairs(getconnections(pzkg.MouseButton1Click)) do
local wvy = bmr.Function

if type(wvy) == _d("UBkLVQAEFVg") then
pcall(wvy)
else
pcall(function()
bmr:Fire()
end)
end
end
end
end)

gggm(true)

task.spawn(function()
while uxq() do

if vikf.autoRoll then
jdsv(_d("dxkRWSYCFlouEEIAAhQ"), true)
end

if vikf.autoQuickRoll then
jdsv(_d("ZxkMVR8/FVoAJ0MAGRVY"), true)
end

task.wait(1)
end
end)

local function cnd()

if rlid.floor then
return rlid.floor
end

local fyu = xjwi:FindFirstChild(_d("dA0RQhgIPUMF"))

if not fyu then
return nil
end

for ijuz, bjq in ipairs({ _d("YgMSUwYrFlkDF3oVDx9a"), _d("ZBkLcBgCFUQgBFQRAQ") }) do
local tvky = fyu:FindFirstChild(bjq)

if tvky and tvky.Visible and tvky.Text then
local yl = tonumber(tvky.Text:match(_d("HkkBHV0")))

if yl then
return yl
end
end
end

local ccw = fyu:FindFirstChild(_d("cAAKWQY+GUQJAFg"))
local iya = ccw and ccw:FindFirstChild(_d("YgMVdBUf"))
local xbdj = iya and iya:FindFirstChild(_d("cAAKWQYhG1QJCQ"))

if xbdj then
return tonumber(xbdj.Text:match(_d("HkkBHV0")))
end

return nil
end

function kuve.bossTeams.swapRows(iiig)
local gbi = xjwi:FindFirstChild(_d("ZQkRQh0DHUUrEF8"))
local vaj = gbi and gbi:FindFirstChild(_d("dxkRWScaG0Y") .. iiig .. _d("ZAMS"), true)

if not vaj then
return nil
end

return vaj:FindFirstChild(_d("dxkRWScaG0Y") .. iiig .. _d("dQQAVR8")),
vaj:FindFirstChild(_d("dxkRWScaG0Y") .. iiig .. _d("YgkEWw")),
vaj:FindFirstChild(_d("dxkRWScaG0Y") .. iiig .. _d("cAAKWQY"))
end

function kuve.bossTeams.swapOn(zpva)
local zfhx = xjwi:FindFirstChild(_d("ZQkRQh0DHUUrEF8"))
local izj = zfhx and zfhx:FindFirstChild(_d("cQkRZREZDl8CAkU"), true)

if not izj then
return nil
end

local agsj, hrep = pcall(function()
return izj:Invoke()
end)

if agsj and type(hrep) == _d("Qg0HWhE") then
return hrep[zpva == 1 and _d("VxkRWSAIG1s/ElcEKBRXDglTEA") or _d("VxkRWSAIG1s/ElcEXz9YDQdaEQk")] == true
end

return nil
end

function kuve.bossTeams.swapBox(bmo, yfa)
if tonumber(bmo.Text) == yfa then
return
end

bmo.Text = tostring(yfa)

if getconnections then
for nyr, nr in ipairs(getconnections(bmo.FocusLost)) do
pcall(function()
nr:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end

function kuve.bossTeams.swapSet(fb, uyv, kek, sdc)
local xkj, bb, ipx = kuve.bossTeams.swapRows(fb)

if not (xkj and bb and ipx) then
return false
end

kek = math.max(1, math.floor(tonumber(kek) or 1))
sdc = math.clamp(math.floor(tonumber(sdc) or 1), 1, 4)

kuve.bossTeams.swapBox(ipx, kek)
kuve.bossTeams.swapBox(bb, sdc)

local ep = kuve.bossTeams.swapOn(fb)

if ep ~= nil and ep ~= (uyv == true) and getconnections then
pcall(function()
for ayn, kbf in ipairs(getconnections(xkj.MouseButton1Click)) do
pcall(function()
kbf:Fire()
end)
end
end)
end

local kvlw = fb == 1 and _d("") or _d("BA")

pcall(function()
etxi.SaveClientData:FireServer({
[_d("VxkRWSAIG1s/ElcE") .. kvlw .. _d("cwIEVBgIHg")] = uyv == true,
[_d("VxkRWSAIG1s/ElcE") .. kvlw .. _d("YgkEWw")] = sdc,
[_d("VxkRWSAIG1s/ElcE") .. kvlw .. _d("cAAKWQY")] = kek,
})
end)

return true
end

function kuve.bossTeams.swapApply()
local vlfg = kuve.bossTeams
local yyj = vlfg.swap
local oxt = true

if yyj.on then
oxt = vlfg.swapSet(1, yyj.floor > 0, yyj.floor, yyj.team)
oxt = vlfg.swapSet(2, yyj.floor2 > 0, yyj.floor2, yyj.team2) and oxt
else
oxt = vlfg.swapSet(1, false, yyj.floor, yyj.team)
oxt = vlfg.swapSet(2, false, yyj.floor2, yyj.team2) and oxt
end

vlfg.swapMessage = _d("")

if not oxt then
vlfg.swapMessage = _d("YgQAFhMMF1NLFhY1GA5ZTDFTFQBaZRsERlQfFUEfRVcGCFpYAxEWFhgTWhhFTxEZWhtMF1MAHwNfAgIY")
end

vlfg.paintSwap()
end

function kuve.bossTeams.swapReset(hyo)
local hkv = kuve.bossTeams

if hyo then
hkv.swapFired[hyo] = nil
else
hkv.swapFired = {}
end
end

function kuve.bossTeams.swapTick()
local orx = kuve.bossTeams
local ab = orx.swap

if not ab.on or (ab.floor <= 0 and ab.floor2 <= 0) then
if next(orx.swapFired) ~= nil then
orx.swapFired = {}
end

return
end

local nvi = os.clock()
local fi = zawb.remote(_d("ZRsMQhcFLlMNCA"))

if nvi - (orx.swapWroteAt or 0) > 10 then
orx.swapWroteAt = nvi
orx.swapApply()
end

local ouqk = {
{
kind = _d("QgMSUwY"),
slot = gsu.towerSlot(),

live = nvi - (rlid.floorAt or 0) < 90,
floor = cnd(),

own = true,
},
{
kind = _d("Xg0XUhcCCFM"),
slot = gsu.hardcoreSlot(),
live = tz.active(),
floor = tz.floorNow(),

own = false,
},
}

local ikpk = {
{ index = 1, floor = ab.floor, team = ab.team },
{ index = 2, floor = ab.floor2, team = ab.team2 },
}

for yrvk, rjf in ipairs(ouqk) do
if not rjf.live then

orx.swapFired[rjf.kind] = nil
elseif rjf.own and fi and rjf.floor then
local nwjc = orx.swapFired[rjf.kind]

for rjod, tvsf in ipairs(ikpk) do
local jv = type(nwjc) == _d("Qg0HWhE") and nwjc[tvsf.index]

if tvsf.floor > 0 and rjf.floor == tvsf.floor and not jv then
local sljn = pcall(function()
fi:FireServer(math.clamp(math.floor(tvsf.team), 1, 4), true, rjf.slot or 1)
end)

if sljn then
nwjc = type(nwjc) == _d("Qg0HWhE") and nwjc or {}
nwjc[tvsf.index] = tvsf.team
orx.swapFired[rjf.kind] = nwjc

orx.swapMessage = string.format(_d("dQ0WQhgIWlAAClkGTV9STEgWBxoTQg8NUxBNDllMMVMVAFoTCEs"), rjf.floor, tvsf.team)
orx.paintSwap()
end
end
end
end
end
end

task.spawn(function()
while uxq() do
pcall(kuve.bossTeams.swapTick)
task.wait(0.5)
end
end)

local function bad()

return uesf.active() and uesf.hasReadyTarget()
end

function axd.worldBoss.remote(inn)
local tho = axd.worldBoss

tho.remotes = tho.remotes or {}

local qzn = tho.remotes[inn]

if qzn and qzn.Parent then
return qzn
end

local qmi = zawb.remote(inn)

if qmi then
tho.remotes[inn] = qmi
end

return qmi
end

function axd.worldBoss.setRepeat(dpl)
local hiy = axd.worldBoss
local sjx = hiy.remote(_d("YQMXWhAvFUUfJFUABBVY"))

if not sjx then
return false
end

local xwu = hiy.state
local jne = type(xwu) == _d("Qg0HWhE") and xwu.repeatOn == true

if jne == (dpl and true or false) then
hiy.repeatIntent = nil

return true
end

if dpl then
local vfeu = workspace:FindFirstChild(_d("YQMXWhAvFUUfJEQRAxs"))
local jat = vfeu and (vfeu:FindFirstChild(_d("dQkJWjkMAg")) or vfeu)
local wivr = nsmz.Character and nsmz.Character:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if not (jat and wivr) then
return false
end

local kguw, fqer = pcall(function()
return jat:GetPivot()
end)

if not kguw or (wivr.Position - fqer.Position).Magnitude > 60 then
return false
end
end

if hiy.repeatIntent == dpl and os.clock() - (hiy.repeatAskedAt or 0) < 20 then
return false
end

hiy.repeatIntent = dpl

pcall(function()
sjx:FireServer(_d("RAkVUxUZ"))
end)

hiy.repeatAskedAt = os.clock()

return true
end

function axd.worldBoss.requestSync()
local oeq = axd.worldBoss
local xfkp = oeq.remote(_d("YQMXWhAvFUUfJFUABBVY"))

if xfkp then
pcall(function()
xfkp:FireServer(_d("RRULVQ"))
end)
end

oeq.askedAt = os.clock()
end

function axd.worldBoss.hasWork()
local umzz = axd.worldBoss
local ub = umzz.state

if not umzz.enabled or type(ub) ~= _d("Qg0HWhE") then
return false
end

local behj = umzz.isOpen()

if behj == nil then
behj = ub.open == true
end

return behj and ub.inFight ~= true
end

axd.worldBoss.bossUp = function()
local glrq = axd.worldBoss

if not glrq.enabled then
return false
end

local iin = glrq.isOpen()

if iin ~= nil then
return iin == true
end

local ydz = glrq.state

return type(ydz) == _d("Qg0HWhE") and ydz.open == true
end

function axd.worldBoss.meter()
local skag = axd.worldBoss
local dhov = os.clock()

if dhov - (skag.meterAt or 0) < 1 then
return skag.meterCurrent, skag.meterMax
end

skag.meterAt = dhov
skag.meterCurrent = nil
skag.meterMax = nil

local yuu = pen:FindFirstChild(_d("YQMXWhAvFUUfNkIVGQ9F"))
local cxp = yuu and tonumber(yuu:GetAttribute(_d("ewkRUwY")))
local grup = yuu and tonumber(yuu:GetAttribute(_d("ewkRUwYgG04")))

if cxp and grup and grup > 0 then
skag.meterCurrent = cxp
skag.meterMax = grup

return skag.meterCurrent, skag.meterMax
end

local function kye(cge)
if type(cge) ~= _d("RRgXXxoK") then
return nil
end

local hhvv, xug = cge:match(_d("HjdAUlFDJx1FQEVeRSF9ISddGQ8nCUU"))
local ioy = tonumber(hhvv)

if not ioy then
return nil
end

local ia = ({ K = 1000, M = 1000000, B = 1000000000 })[string.upper(xug or _d(""))] or 1

return ioy * ia
end

local fse = xjwi:FindFirstChild(_d("YQMXWhAvFUUfJ1caAx9EKxBf"))
local satd = fse and fse:FindFirstChild(_d("dA0LWBEf"))
local fkbd = satd and satd:FindFirstChild(_d("ewkRUwYvG0Q"))
local rxed = fkbd

if fkbd and not fkbd:IsA(_d("YgkdQjgMGFMA")) then
rxed = fkbd:FindFirstChild(_d("YgkdQg"))
end

local mg = rxed and rxed:IsA(_d("YgkdQjgMGFMA")) and rxed.Text or nil

if type(mg) == _d("RRgXXxoK") then
local sceh, gquo = mg:match(_d("Hjc7GSlGUxlESx1d"))

skag.meterCurrent = kye(sceh)
skag.meterMax = kye(gquo)
end

return skag.meterCurrent, skag.meterMax
end

function axd.worldBoss.meterFull()
local juw, ay = axd.worldBoss.meter()

return juw ~= nil and ay ~= nil and ay > 0 and juw >= ay
end

axd.worldBoss.holdsFishing = function()
local yqtt = axd.worldBoss

if not yqtt.enabled then
return false
end

if yqtt.fishingMode == _d("QQ0MQg") then
return yqtt.bossUp()
end

return os.clock() < (yqtt.takingUntil or 0)
end

axd.worldBoss.holdsDigging = function()
local vmyr = axd.worldBoss

if not vmyr.enabled or vmyr.digHold ~= true then
return false
end

if not vmyr.bossUp() then
return false
end

return not (vmyr.stopAtFull and vmyr.meterFull())
end

axd.worldBoss.usesGameChain = function()
local nvue = axd.worldBoss

return nvue.fishingMode == _d("QQ0MQg") or nvue.digHold == true
end

function axd.worldBoss.travel()
local shv = axd.worldBoss
local goty = nsmz.Character
local itip = goty and goty:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if not itip or os.clock() < shv.travelUntil then
return
end

shv.travelUntil = os.clock() + 6

local jvga = workspace:FindFirstChild(_d("YQMXWhAvFUUfNVkGGRta"))
local tn = jvga and jvga:FindFirstChild(_d("ZgMXQhUB"))

if not tn then
return
end

if (itip.Position - tn.Position).Magnitude > 150 then
local lvd = zawb.remote(_d("YgkJUwQCCEI4CmEbHxZS"))

if lvd then
pcall(function()
lvd:FireServer(_d("WgMHVA0"))
end)
end

return
end

if (itip.Position - tn.Position).Magnitude > 6 then
shv.walkLeg(tn.Position + Vector3.new(0, 3, 0), 4)

if (itip.Position - tn.Position).Magnitude > 9 then
return
end
end

local fqif = tn:FindFirstChildOfClass(_d("Zh4KTh0AE0IVNUQbAApC"))

if not fqif then
return
end

pcall(function()
if type(fireproximityprompt) == _d("UBkLVQAEFVg") then
fireproximityprompt(fqif)
else
fqif:InputHoldBegin()
task.wait(0.25)
fqif:InputHoldEnd()
end
end)
end

function axd.worldBoss.reach()
local swsu = axd.worldBoss

local gbk = workspace:FindFirstChild(_d("YQMXWhAvFUUfJEQRAxs")) or workspace:FindFirstChild(_d("YQMXWhAvFUUfNkYVGhQ"), true)
local nky = nsmz.Character
local rjp = nky and nky:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if not (gbk and rjp) then
swsu.travel()
return false
end

local hjj = gbk:FindFirstChild(_d("dQkJWjkMAg")) or gbk
local eieu, dhm = pcall(function()
return hjj:GetPivot()
end)

if not eieu then
return false
end

local bucw = dhm.Position + dhm.LookVector * 6 + Vector3.new(0, 3, 0)
local nqeo = Vector3.new(dhm.Position.X, bucw.Y, dhm.Position.Z)

rjp.CFrame = CFrame.lookAt(bucw, nqeo)

return true
end

axd.worldBoss.cityBounds = { 19100, 20900, -850, 850 }

function axd.worldBoss.inArena()
local hq = nsmz.Character and nsmz.Character:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))
local qxnc = axd.worldBoss.cityBounds

if not hq then
return false
end

local cke = hq.Position

return cke.X >= qxnc[1] and cke.X <= qxnc[2]
and cke.Z >= qxnc[3] and cke.Z <= qxnc[4]
end

function axd.worldBoss.enterCity(fywe)
local glvq = axd.worldBoss

local hzfg = os.clock() + (fywe or 30)

if glvq.inArena() then
return true
end

while os.clock() < hzfg do
if not glvq.enabled then
return false
end

glvq.travel()

if glvq.inArena() then
return true
end

task.wait(0.5)
end

return glvq.inArena()
end

axd.worldBoss.walking = false
axd.worldBoss.walkStartedAt = 0

function axd.worldBoss.walkLeg(rajb, rqlz)
local zvi = axd.worldBoss
local zro = nsmz.Character
local ngr = zro and zro:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))
local tqa = zro and zro:FindFirstChildOfClass(_d("fhkIVxoCE1I"))

if not (ngr and tqa) then
return false
end

if zvi.walking and os.clock() - (zvi.walkStartedAt or 0) < 45 then
return false
end

rqlz = rqlz or 6

zvi.walking = true
zvi.walkStartedAt = os.clock()

local pkpc, oww = pcall(function()
local fbdm = os.clock() + 40
local ehz = 0
local ueh = ngr.Position
local lut = os.clock()

while zvi.enabled and os.clock() < fbdm do
local bc = Vector3.new(rajb.X - ngr.Position.X, 0, rajb.Z - ngr.Position.Z)

if bc.Magnitude <= rqlz then
return true
end

if os.clock() - ehz >= 0.25 then
tqa:MoveTo(Vector3.new(rajb.X, ngr.Position.Y, rajb.Z))
ehz = os.clock()
end

if os.clock() - lut >= 1.2 then
if (ngr.Position - ueh).Magnitude < 2 then
tqa.Jump = true
end

ueh = ngr.Position
lut = os.clock()
end

task.wait(0.1)
end

return Vector3.new(rajb.X - ngr.Position.X, 0, rajb.Z - ngr.Position.Z).Magnitude <= rqlz
end)

pcall(function()
tqa:MoveTo(ngr.Position)
end)

zvi.walking = false

return pkpc and oww == true
end

function axd.worldBoss.walkIn(gxwx)
local otv = axd.worldBoss
local epz = workspace:FindFirstChild(_d("YQMXWhAvFUUfJEQRAxs"))
local geoj = epz and (epz:FindFirstChild(_d("dQkJWjkMAg")) or epz) or nil
local pg = nsmz.Character and nsmz.Character:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if not (geoj and pg) then
return false
end

local wpse, oswe = pcall(function()
return geoj:GetPivot()
end)

if not wpse then
return false
end

local dlx = oswe.Position + oswe.LookVector * 6 + Vector3.new(0, 3, 0)

if (pg.Position - dlx).Magnitude <= (gxwx or 10) then
return true
end

local mjrk = otv.walkLeg(dlx, gxwx or 6)

if not mjrk then
mjrk = (pg.Position - oswe.Position).Magnitude <= 25
end

return mjrk
end

function axd.worldBoss.approach()
local ly = axd.worldBoss

if not ly.walkToBoss then
return ly.reach()
end

if not ly.enterCity() then
return false
end

return ly.walkIn(10)
end

function axd.worldBoss.fight()
local bib = axd.worldBoss
local uqme = bib.remote(_d("YQMXWhAvFUUfJFUABBVY"))

local function bnb(jnl)
bib.nextFightAt = os.clock() + (jnl or 20)

return false
end

if not uqme then
return bnb(60)
end

if bib.stopAtFull and bib.meterFull() then
return bnb(20)
end

if yje.enabled
and (yje.tpToBay or yje.deepZone)
and yje.phase ~= _d("XwgJUw") then
return false
end

bib.takingUntil = os.clock() + 45

if not bib.approach() then
bib.takingUntil = os.clock() + 3

return bnb(bib.inArena() and 3 or 20)
end

local ykh = workspace:FindFirstChild(_d("YQMXWhAvFUUfJEQRAxs"))
local awjn = ykh and (ykh:FindFirstChild(_d("dQkJWjkMAg")) or ykh) or nil
local judq = nsmz.Character and nsmz.Character:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))

if awjn and judq then
local lzq, iomj = pcall(function()
return awjn:GetPivot()
end)

if not lzq or (judq.Position - iomj.Position).Magnitude > 60 then
bib.takingUntil = os.clock() + 2

return bnb(bib.inArena() and 2 or 10)
end
end

kuve.bossTeams.applyTeam(bib.team)

task.wait(bib.walkToBoss and 0.3 or 1.4)

pcall(function()
uqme:FireServer(_d("UAUCXgA"))
end)

bib.fightAt = os.clock()
bib.holdUntil = os.clock() + 4

bib.takingUntil = os.clock() + 0.6

if yje.enabled and (yje.tpToBay or yje.deepZone) then
yje.deepPhase = _d("XwgJUw")
yje.deepStageAt = 0
yje.nextCastAt = 0
end

bib.killsAtFire = type(bib.state) == _d("Qg0HWhE") and tonumber(bib.state.kills) or nil

if not bib.usesGameChain() and yje.enabled
and (yje.tpToBay or yje.deepZone) then
bib.nextFightAt = os.clock() + 1
end

return true
end

function axd.worldBoss.buy(tr)
local hwv = axd.worldBoss
local mgj = hwv.remote(_d("YQMXWhAvFUUfJFUABBVY"))

tr = tr or 1

if not mgj then
return 0
end

local zsvc = 0

for pege = 1, tr do
local pur = hwv.state

if type(pur) ~= _d("Qg0HWhE") or type(pur.shop) ~= _d("Qg0HWhE") then
break
end

if os.clock() < hwv.buyAt then
break
end

local nnvy = tonumber(pur.medals) or 0
local qvi = nil

for urws, zojd in ipairs(pur.shop) do
local chms = tonumber(zojd.price) or 0
local fjsl = zojd.kind ~= _d("XxgAWw") or (tonumber(zojd.left) or 0) > 0

if hwv.selected[zojd.id] == true and fjsl and zojd.owned ~= true and chms <= nnvy then
qvi = zojd
break
end
end

if not qvi then
break
end

pcall(function()
mgj:FireServer(_d("VBkc"), qvi.id, 1)
end)

zsvc = zsvc + 1
hwv.bought = hwv.bought + 1
hwv.buyAt = os.clock() + 1.2

hwv.syncedAt = 0
hwv.requestSync()
task.wait(1.1)
end

return zsvc
end

axd.worldBoss.questGroups = { _d("RgkXRRsDG1o"), _d("UQAKVBUB"), _d("UAUJWg"), _d("RAkWQgYEGUIFClg") }

function axd.worldBoss.questRows(vge)
local olxl = axd.worldBoss
local zvib = type(vge) == _d("Qg0HWhE") and vge.quests or nil
local nbp = {}

if type(zvib) ~= _d("Qg0HWhE") then
return nbp
end

for crv, pepg in ipairs(olxl.questGroups) do
local bdj = zvib[pepg]

if type(bdj) == _d("Qg0HWhE") then
for zusn, fvzp in ipairs(bdj) do
if type(fvzp) == _d("Qg0HWhE") then
table.insert(nbp, fvzp)
end
end
end
end

return nbp
end

function axd.worldBoss.claim()
local mep = axd.worldBoss
local gxsk = mep.remote(_d("YQMXWhAvFUUfJFUABBVY"))
local uqk = mep.state

if not gxsk or type(uqk) ~= _d("Qg0HWhE") or type(uqk.quests) ~= _d("Qg0HWhE") then
return 0
end

if os.clock() < mep.claimAt then
return 0
end

local xdd = mep.questRows(uqk)

if #xdd == 0 then
return 0
end

local vay = {}

for fnkn, ni in ipairs(xdd) do
if ni.id ~= nil then
vay[tostring(ni.id)] = true
end
end

for rqp, vhxb in pairs(mep.claimFired) do
if not vay[rqp] or os.clock() - vhxb > 120 then
mep.claimFired[rqp] = nil
end
end

local vuen = nil

for ocbm, kgzd in ipairs(xdd) do
if kgzd.complete == true and kgzd.claimed ~= true and kgzd.id ~= nil then
local njw = tostring(kgzd.id)
local rso = mep.claimFired[njw]

if not (rso and os.clock() - rso < 6) then
vuen = kgzd
break
end
end
end

if not vuen then
return 0
end

mep.claimFired[tostring(vuen.id)] = os.clock()
mep.claimedTotal = mep.claimedTotal + 1

pcall(function()
gxsk:FireServer(_d("VQAEXxk"), vuen.id)
end)

mep.claimAt = os.clock() + 2
mep.syncedAt = 0
mep.requestSync()

return 1
end

axd.worldBoss.syncRemote = zem(_d("YQMXWhAvFUUfNk8aDg"))

if axd.worldBoss.syncRemote then
axd.worldBoss.syncRemote.OnClientEvent:Connect(function(foqm)
local ehhx = axd.worldBoss

if type(foqm) ~= _d("Qg0HWhE") then
return
end

ehhx.state = foqm
ehhx.syncedAt = os.clock()

if foqm.inFight == true then
ehhx.wasFighting = true
elseif ehhx.wasFighting then
ehhx.wasFighting = false

if yje.enabled then
pcall(yje.recover)
end
end
end)
end

task.spawn(function()
axd.worldBoss.requestSync()
end)

task.spawn(function()
while uxq() do
local bmz = axd.worldBoss
local bqeh = bmz.state

if bmz.autoClaim then
if os.clock() - bmz.syncedAt > 4 and os.clock() - bmz.askedAt > 1 then
bmz.requestSync()
end

bmz.claim()
end

if bmz.enabled then

if os.clock() - bmz.syncedAt > (bmz.bossUp() and 1.5 or 4) and os.clock() - bmz.askedAt > 1 then
bmz.requestSync()
end

if bmz.autoBuy and next(bmz.selected) then
bmz.buy(1)
end

local dpb = type(bqeh) == _d("Qg0HWhE") and bqeh.repeatOn == true

if bmz.usesGameChain() then

local ictd = type(bqeh) == _d("Qg0HWhE") and tonumber(bqeh.kills) or nil

if ictd and ictd ~= bmz.seenKills then
bmz.seenKills = ictd
bmz.progressAt = os.clock()
end

if bmz.bossUp() and not dpb and os.clock() - (bmz.repeatAskedAt or 0) > 20 then
if bmz.approach() then
bmz.repeatSeeded = true
bmz.progressAt = os.clock()

bmz.setRepeat(true)
end
end

if bmz.hasWork() and os.clock() >= bmz.holdUntil
and os.clock() - (bmz.progressAt or 0) > 20
and os.clock() - (bmz.kickAt or 0) > 20 then
local ezg = bad()
local di = gsu.roleSlot(_d("WBwG")) or 1
local uvm = gsu.enabled and gsu.busy(di)

if not ezg and not uvm then
bmz.kickAt = os.clock()
bmz.fight()
end
end

if not bmz.bossUp() and dpb and os.clock() - (bmz.repeatAskedAt or 0) > 6 then
bmz.repeatSeeded = false
bmz.setRepeat(false)
end
elseif bmz.isOpen() and dpb and os.clock() - (bmz.repeatAskedAt or 0) > 6 then
bmz.setRepeat(false)
end

local bijj = type(bqeh) == _d("Qg0HWhE") and tonumber(bqeh.kills) or nil

if bmz.killsAtFire ~= nil and bijj == bmz.killsAtFire
and os.clock() - (bmz.fightAt or 0) > (bmz.inArena() and 2.5 or 9)
and os.clock() < (bmz.nextFightAt or 0)
and os.clock() >= bmz.holdUntil then
bmz.killsAtFire = nil
bmz.nextFightAt = os.clock()
end

if not bmz.usesGameChain() and bmz.hasWork() and os.clock() >= bmz.holdUntil
and os.clock() >= (bmz.nextFightAt or 0)
and not (bmz.stopAtFull and bmz.meterFull()) then

local shl = bad()
local zysv = gsu.roleSlot(_d("WBwG")) or 1
local irtg = gsu.enabled and gsu.busy(zysv)

if not shl and not irtg then
bmz.fight()
end
end
end

local sd = bmz.bodyText()

if bmz.bodyParagraph and sd ~= bmz.bodyShown then
bmz.bodyShown = sd

pcall(function()
bmz.bodyParagraph:UpdateBody(sd)
end)
end

local demc = bmz.shopText()

if bmz.shopParagraph and demc ~= bmz.shopShown then
bmz.shopShown = demc

pcall(function()
bmz.shopParagraph:UpdateBody(demc)
end)
end

task.wait(0.5)
end
end)

function gsu.roomsHaveWork()
if not nms.enabled then
return false
end

local pdra = nms.progress

if pdra == nil then
return true
end

for ytt, fzq in ipairs(mzcg.Milestones) do
if mzcg.isMilestoneUnlocked(fzq, pdra) and not mzcg.isMilestoneCleared(fzq, pdra) then
return true
end
end

return false
end

function gsu.raidHasWork()
if not axd.enabled then
return false
end

local ysp = pen:FindFirstChild(_d("ZA0MUicZG0IZFg"))

if not ysp then
return false
end

if not (ysp:GetAttribute(_d("fx8qRhED")) == true or ysp:GetAttribute(_d("cAMXVREJ")) == true) then
return false
end

for xpl, rppf in ipairs({ 1, 2 }) do
local qnr = axd.picks[rppf] and axd.bossFor(rppf)

if qnr and axd.cleared[qnr] ~= mrty(qnr) then
return true
end
end

return false
end

function gsu.towerYields()
return bad()
or gsu.roomsHaveWork()
or gsu.raidHasWork()
or axd.worldBoss.hasWork()
end

function gsu.towerOutranks()
return not gsu.enabled and (tz.active() or ot.run.enabled)
end

local function pya(uiz)
if not uiz then
return false
end

local llcp = false

for ktt, tdfq in ipairs(getconnections(uiz.MouseButton1Click)) do
local hmxq = tdfq.Function

if type(hmxq) == _d("UBkLVQAEFVg") then
pcall(hmxq)
else
pcall(function()
tdfq:Fire()
end)
end

llcp = true
end

return llcp
end

function ygcx()
for snzt, conb in ipairs({ _d("dA0RQhgIPUMF"), _d("dA0RQhgIPUMFVw") }) do
local tgn = xjwi:FindFirstChild(conb)

if tgn then
local uhz = tgn:FindFirstChild(_d("dA0RQhgIKVUeAFMa"))
local hcx = uhz and uhz:FindFirstChild(_d("ZxkMVR8qE0AJMEY2GA5CAws"))

if pya(hcx) then
return true
end

local vctr = tgn:FindFirstChild(_d("cAAKWQY+GUQJAFg"))
local zwfq = vctr and vctr:FindFirstChild(_d("dAMRQhsAOFce"))
local bok = zwfq and zwfq:FindFirstChild(_d("cQUTUyEdOEMYEVka"))

if pya(bok) then
return true
end
end
end

local xnjt = pen:FindFirstChild(_d("ZAkIWQAICQ"))
local enmp = xnjt and xnjt:FindFirstChild(_d("cQUTUyEdLlkbAEQ"))
local rmyr = xnjt and xnjt:FindFirstChild(_d("cwIBYhsaH0Q+AFsbGR8"))

if not (enmp or rmyr) then
return false
end

if enmp then
pcall(function()
enmp:FireServer()
end)
end

if rmyr then
pcall(function()
rmyr:FireServer(1)
end)
end

rlid.manualPause = false
rlid.floor = nil
zawb.restorePause()

return true
end

local nqh = ygcx

function ygcx()

rlid.lastGiveUp = {
at = os.time(),
clock = os.clock(),
floor = rlid.floor,
parked = zawb.parked(),
active = pkz(),
hard = zawb.hardNow(),
nightmare = rlid.nightmare == true,
caller = debug.traceback(_d(""), 2),
}

local itiz = nqh()

if itiz then
ewwk.armedAt = os.clock()
end

return itiz
end

function fqjd(mgya)

local lr = false

if mgya ~= false and pkz() then
local tg = cnd()

if tg then
lr = zawb.pauseAt(true, tg) or lr

rlid.pauseArmed = true
end
end

for vpys, qtxv in ipairs({ _d("dA0RQhgIPUMF"), _d("dA0RQhgIPUMFVw") }) do
local znz = xjwi:FindFirstChild(qtxv)

if znz then
local hylu = znz:FindFirstChild(_d("dA0RQhgIKVUeAFMa"))
local glco = hylu and hylu:FindFirstChild(_d("ZxkMVR8vCFMNDnQBGQ5ZAg"))

if glco then

if tostring(glco.Text):find(_d("1PD2"), 1, true) then
lr = true
elseif pya(glco) then
lr = true
end
end

local owcx = znz:FindFirstChild(_d("cAAKWQY+GUQJAFg"))

if owcx and owcx.Visible then
local rd = owcx:FindFirstChild(_d("dAMRQhsAOFce"))
local fthk = rd and rd:FindFirstChild(_d("Yg0OUzYfH1cHJ0MAGRVY"))

if pya(fthk) then
lr = true
end
end
end
end

return lr
end

function tz.pauseRun()
if not pkz() then
pcall(function()
dmj:Dialog({
Title = _d("Zg0QRRFNM0UABFgQTTJXHgFVGx8f"),
Description = _d("eANFQhsaH0RMF0MaTRNFTAlfAghaRAUCXgBNFFkbSRYHAlpCBABEEU0TRUwLWQAFE1gLRUIbTQpXGRZTWg"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})
end)

return
end

tz.paused = true
tz.manualPause = true
local ksqm = fqjd(false)

pcall(function()
dmj:Notify({
Title = _d("Zg0QRRFNM0UABFgQTTJXHgFVGx8f"),
Description = ksqm and _d("YgMSUwZNCEMCRUYVGAlTCEs") or _d("ZBkLFh0eWloFE1NYTRhDGEVYG00YRAkEXVQPD0IYClhUCxVDAgEY"),
Lifetime = 5,
})
end)
end

function tz.giveUpRun()
if not pkz() then
pcall(function()
dmj:Dialog({
Title = _d("cQUTU1Q4ChYlFloVAx4WJAREEA4VRAk"),
Description = _d("eANFQhsaH0RMF0MaTRNFTAlfAghaRAUCXgBNFFkbSRYHAlpCBABEEU0TRUwLWQAFE1gLRUIbTR1fGgAWAR1U"),
Buttons = {
{
Name = _d("cQMRFh0Z"),
},
},
})
end)

return
end

tz.gaveUp = true
tz.paused = true
local mhn = ygcx()

pcall(function()
dmj:Notify({
Title = _d("cQUTU1Q4ChYlFloVAx4WJAREEA4VRAk"),
Description = mhn and _d("cQ0TU1QYChYYDVNUDg9EHgBYAE0OWRsARFQLFlkDFxg") or _d("ZBkLFh0eWloFE1NYTRhDGEVYG00dXxoAFgEdWlQZEUIbA1pQAxBYEEM"),
Lifetime = 5,
})
end)
end

task.spawn(function()
while uxq() do

pcall(zawb.pinMode)

if rlid.pauseArmed and not qzh.enabled
and (not rlid.enabled or not rlid.paused) then
zawb.restorePause()

if zawb.pauseState() ~= true then
rlid.pauseArmed = false
end
end

if rlid.enabled and not rlid.manualPause and gsu.towerSlot() ~= nil
and not ot.run.enabled then

local vevr = os.clock() - (rlid.floorAt or 0) > 12
and os.clock() - (rlid.battleAt or 0) > 12

local tqr = gsu.towerSlot() == 1 and not rlid.paused
and not (qzh.enabled and qzh.floor > 0)
and vevr
and zawb.parked()

if tqr then
rlid.parkedAt = rlid.parkedAt > 0 and rlid.parkedAt or os.clock()

if os.clock() - rlid.parkedAt >= 25 then
rlid.parkedAt = os.clock()
ygcx()
end
else
rlid.parkedAt = 0
end

local cntk = zawb.hardPickNow()

local fbpt = not rlid.paused and not rlid.pending
and not (qzh.enabled and qzh.floor > 0)
and pkz()
and cntk ~= nil
and cntk ~= (rlid.nightmare == true)

if fbpt then
rlid.modeWrongAt = rlid.modeWrongAt or os.clock()
else
rlid.modeWrongAt = nil
end

if rlid.modeWrongAt and os.clock() - rlid.modeWrongAt > 20
and os.clock() - (rlid.modeFixAt or 0) > 20 then
rlid.modeFixAt = os.clock()
rlid.modeWrongAt = nil
zawb.endIfWrongMode(rlid.nightmare == true)
end

if (rlid.floorAt or 0) > 0 and not rlid.paused
and os.clock() - rlid.floorAt > 60
and os.clock() - (rlid.battleAt or 0) > 60
and not pkz()
and not gsu.busy(gsu.towerSlot() or 1) then
rlid.floorAt = 0
rlid.battleAt = 0
rlid.floor = nil
end

if not gsu.enabled and (gsu.towerOutranks() or gsu.towerYields()) then
if not rlid.paused then
rlid.paused = true
fqjd()
end

elseif gsu.slotFree(gsu.towerSlot() or 1)
and (rlid.floorAt or 0) == 0
and not kuve.bossTeams.swapHold then
local ovg = cnd()
local uteb = qzh.enabled and qzh.floor or 0
local ji = uteb > 0 and ovg ~= nil and ovg >= uteb

if ji then
if not rlid.paused then
rlid.paused = true
fqjd()
end
else

if rlid.paused then
rlid.paused = false
zawb.restorePause()
end

if not (rlid.pending and os.time() < rlid.pendingUntil) then

kuve.bossTeams.applyTower(_d("QgMSUwY"), 1)

zawb.hardPick(rlid.nightmare == true)
etxi.EndTowerRemote:FireServer(1)
task.wait(0.25)

etxi.StartBattle:FireServer(_d("QgMSUwY"), { hard = rlid.nightmare == true })

pwis.triggered = false
pwis.weatherTriggered = false

rlid.floorAt = os.clock()

rlid.floor = nil
rlid.pending = true
rlid.pendingUntil = os.time() + 8
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while uxq() do
if tz.active() and gsu.hardcoreSlot() ~= nil then
local jlai = gsu.hardcoreSlot() or 1
local dbuk = tz.floorNow()

local zjqv = qzh.enabled and qzh.floor or 0
local xurr = pwis.enabled and pwis.floor or 0

if zjqv <= 0 and not tz.stoodDown and not tz.manualPause
and not kuve.bossTeams.swapHold then
tz.paused = false
end

if tz.gaveUp then

elseif xurr > 0 and dbuk and dbuk >= xurr then
tz.gaveUp = true
tz.paused = true
local pdwb = ygcx()

pcall(function()
dmj:Notify({
Title = _d("dxkRWVQqE0AJRWME"),
Description = pdwb and (_d("cQ0TU1QYChYNERYcDAhSDwpEEU0cWgMKRFQ") .. dbuk .. _d("GA")) or (_d("fg0XUhcCCFNMA1obAggW") .. dbuk .. _d("Fh4AVxcFH1JARVQBGVpYA0VRHRsfFhkVFhYYDkIDCxYSAg9YCEs")),
Lifetime = 5,
})
end)
elseif dbuk and zjqv > 0 and dbuk >= zjqv then
if not tz.paused then
tz.paused = true
fqjd(false)
end
elseif not gsu.enabled and gsu.towerYields() then

if not tz.stoodDown then
tz.stoodDown = true
tz.paused = true
fqjd(false)
end
elseif tz.stoodDown then

tz.stoodDown = false
tz.paused = false
elseif not tz.paused and not kuve.bossTeams.swapHold then
if gsu.slotFree(jlai) and not (tz.pending and os.time() < tz.pendingUntil) then
tz.start(jlai)
task.wait(2)
end
end
end

task.wait(1)
end
end)

function gsu.slotActivity(ufr)
if not gsu.busy(ufr) then
return nil
end

local ksfx = gsu.role[ufr]
local nqqr = xjwi:FindFirstChild(ufr == 2 and _d("dA0RQhgIPUMFVw") or _d("dA0RQhgIPUMF"))
local arjp = nqqr and nqqr:FindFirstChild(_d("ZBkLcBgCFUQgBFQRAQ"))
local rrnc = arjp and arjp.Text or _d("")

if nms.enabled and ksfx == _d("WBwG") then
local jab = rrnc:match(_d("aD4KWRlICR1EQFJfRA"))

if jab then
return _d("fwIDXxoEDlNMF1kbAAkWQUVEGwIXFg") .. jab
end
end

if gsu.isTowerRole(ksfx)
and (rlid.enabled or ot.run.enabled or tz.active()) then
local kkgj = rrnc:match(_d("aCoJWRsfX0VHTRMQRlM"))

if kkgj then
return gsu.roleName(ufr) .. _d("FkFFUBgCFURM") .. kkgj
end
end

return nil
end

function gsu.statusText()
if not gsu.enabled then
return _d("dxkRWVQ+FlkYRVkSC1obTABAER8DQgQMWBNNCEMCFhYbA1pFAApCVFxU")
end

local purb = {}

for ytrn = 1, 2 do
local zqin = _d("ZQAKQlQ") .. tostring(ytrn) .. _d("FkFF")
local fus = gsu.slotActivity(ytrn)

if ytrn == 2 and gsu.hasSlot2 == false then
zqin = zqin .. gsu.roleLabel(ytrn) .. _d("FkFFWhsOEVMIRR4aCB9SH0VCHAhachkEWlQvG0IYCVNUPhZZGEw")
elseif fus then
zqin = zqin .. fus
elseif gsu.busy(ytrn) then
zqin = zqin .. gsu.roleLabel(ytrn) .. _d("FkFFUB0KEkIFC1E")
else
zqin = zqin .. gsu.roleLabel(ytrn) .. _d("FkFFXxABHw")
end

table.insert(purb, zqin)
end

return table.concat(purb, _d("PGY"))
end

task.spawn(function()
while uxq() do
gsu.hasSlot2 = gsu.detectSlot2()
task.wait(5)
end
end)

task.spawn(function()
while uxq() do

if not tz.island and qzh.enabled and qzh.floor > 0 then
local dcdi = cnd()

if dcdi and dcdi >= qzh.floor then
if not qzh.triggered then
qzh.triggered = true
fqjd()

pcall(function()
etxi.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = dcdi,
})
end)
end
else
qzh.triggered = false
end
end

if not tz.island and pwis.enabled and pwis.floor > 0 then
local mmk = cnd()

if mmk and mmk >= pwis.floor then

if not pwis.triggered and pkz() then
pwis.triggered = true
local kmgp = ygcx()

pcall(function()
dmj:Notify({
Title = _d("dxkRWVQqE0AJRWME"),
Description = kmgp and (_d("cQ0TU1QYChYNERYSARVZHkU") .. mmk .. _d("GA")) or (_d("cAAKWQZN") .. mmk .. _d("Fh4AVxcFH1JARVQBGVpYA0VRHRsfFhkVFhYYDkIDCxYSAg9YCEs")),
Lifetime = 5,
})
end)
end
else
pwis.triggered = false
end
end

if not tz.island and pwis.weatherEnabled then
local xtzo = cnd()
local qhzl = pwis.weatherMinFloor <= 0
or (xtzo ~= nil and xtzo >= pwis.weatherMinFloor)
local yluf = qhzl and pwis.weatherWanted() or nil

if yluf then
if not pwis.weatherTriggered
and pwis.weatherGivenFor ~= pwis.weatherNow
and pkz() then
pwis.weatherTriggered = true
pwis.weatherGivenFor = pwis.weatherNow

local xcin = ygcx()

pcall(function()
dmj:Notify({
Title = _d("YQkEQhwICBYrDEARTS9G"),
Description = xcin
and (_d("cQ0TU1QYChYNERYSARVZHkU") .. tostring(xtzo) .. _d("FgULFg") .. yluf .. _d("GA"))
or (yluf .. _d("FgUWFgEdVhYOEEJUAxUWCwxAEU0PRkwHQwAZFVhMBFgHGh9ECQEY")),
Lifetime = 5,
})
end)
end
else
pwis.weatherTriggered = false
end
end

task.wait(1)
end
end)

task.spawn(function()
if etxi.WeatherChanged then
pcall(function()
etxi.WeatherChanged.OnClientEvent:Connect(function(xqi)

pwis.weatherNow = nil
pwis.weatherAt = 0
pwis.weatherGivenFor = nil
ewwk.weatherSpent = nil

if type(xqi) == _d("RRgXXxoK") then
pwis.weatherNow = xqi
end
end)
end)
end

while uxq() do
if os.clock() - pwis.weatherAt > 5 then
pwis.weatherAt = os.clock()

if etxi.RequestWeatherState then
local ygnj, jlen = pcall(function()
return etxi.RequestWeatherState:InvokeServer()
end)

if ygnj and type(jlen) == _d("RRgXXxoK") then
if pwis.weatherNow ~= nil and pwis.weatherNow ~= jlen then
ewwk.weatherSpent = nil
pwis.weatherGivenFor = nil
end

pwis.weatherNow = jlen
end
end
end

task.wait(1)
end
end)

task.spawn(function()
local afq = nil
local mbfy = nil
local vcgy = 0

while uxq() do

if (ewwk.onWeather or ewwk.afterGiveUp) and os.clock() - vcgy > 60 then
vcgy = os.clock()

pcall(function()
etxi.RequestItemSync:FireServer()
end)
end

if ewwk.onWeather and next(ewwk.weatherPotions) ~= nil then
local gxh = pwis.weatherWanted(ewwk.weathers)

if gxh and pwis.weatherNow ~= ewwk.weatherSpent then

ewwk.weatherSpent = pwis.weatherNow
ewwk.pop(ewwk.weatherPotions, ewwk.weatherAmount, _d("YQkEQhwICBY") .. gxh)
end
end

if ewwk.afterGiveUp and next(ewwk.giveUpPotions) ~= nil and ewwk.armedAt > 0 then

local elhe = os.clock() - ewwk.armedAt

if not pkz() or elhe >= 3 then
if elhe <= 30 then
ewwk.armedAt = 0
ewwk.pop(ewwk.giveUpPotions, ewwk.giveUpAmount, _d("dwoRUwZNHV8aABYBHQ"))
else

ewwk.armedAt = 0
end
end
end

local xiqf = ewwk.status()

if xiqf ~= afq then
afq = xiqf

pcall(function()
ewwk.weatherParagraph:UpdateBody(xiqf)
end)
end

local mdo = ewwk.giveUpStatus()

if mdo ~= mbfy then
mbfy = mdo

pcall(function()
ewwk.giveUpParagraph:UpdateBody(mdo)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while uxq() do
local rmmi = yje.stick

if rmmi.enabled and os.clock() >= rmmi.at then
rmmi.at = os.clock() + 3

local jmi = nil

for gho, pkcg in ipairs(workspace:GetDescendants()) do
if (pkcg:IsA(_d("dA0WUyQMCEI")) or pkcg:IsA(_d("ewMBUxg")))
and rmmi.names[string.lower(pkcg.Name)] then
jmi = pkcg
break
end
end

local txrh = nsmz.Character
local euhu = txrh and txrh:FindFirstChild(_d("fhkIVxoCE1I+ClkAPRtEGA"))
local yqst = jmi and (jmi:IsA(_d("dA0WUyQMCEI")) and jmi or jmi:FindFirstChildWhichIsA(_d("dA0WUyQMCEI"), true))

if yqst and euhu then
local hov = yqst:FindFirstChildWhichIsA(_d("Zh4KTh0AE0IVNUQbAApC"))
or (jmi ~= yqst and jmi:FindFirstChildWhichIsA(_d("Zh4KTh0AE0IVNUQbAApC"), true))

if (euhu.Position - yqst.Position).Magnitude > 4 then
pcall(function()
txrh:PivotTo(CFrame.new(yqst.Position + Vector3.new(0, 3, 0)))
end)

task.wait(0.4)
end

if hov then
pcall(function()
hov:InputHoldBegin()
task.wait(0.2)
hov:InputHoldEnd()
end)
end

rmmi.hits = rmmi.hits + 1
rmmi.last = _d("RgUGXREJWkMcRVcATQ") .. math.floor(yqst.Position.X) .. _d("Gkw") .. math.floor(yqst.Position.Z)

pcall(function()
dmj:Notify({
Title = _d("ehkGXVQ+Dl8PDg"),
Description = rmmi.last,
Lifetime = 4,
})
end)
elseif jmi then
rmmi.last = _d("UAMQWBBN") .. jmi:GetFullName() .. _d("GkwLWQAFE1gLRUIbTQlCDQtSVAIU")
else
rmmi.last = _d("WANFRQAEGV1MDFhUGRJTTBJZBgEe")
end
end

task.wait(1)
end
end)

getgenv().ACBXStick = yje.stick

task.spawn(function()

local yy = game:GetService(_d("YAUXQgEMFn8CFUMAIBtYDQJTBg"))

local function ciu()
local tdku = nsmz.Character
local nej = tdku and tdku:FindFirstChildOfClass(_d("fhkIVxoCE1I"))

if nej and nej.Health > 0 then
pcall(function()
nej.Jump = true
end)
end

pcall(function()
yy:SendKeyEvent(true, Enum.KeyCode.Space, false, nsmz)
end)

task.wait(0.05)

pcall(function()
yy:SendKeyEvent(false, Enum.KeyCode.Space, false, nsmz)
end)

ytp.jumps = ytp.jumps + 1
end

while uxq() do
if ytp.enabled and os.clock() >= ytp.nextAt then
ytp.nextAt = os.clock() + 300
ciu()
end

task.wait(1)
end
end)

dmj:SetState(true)

task.defer(function()
local mvq
for cjk, bns in ipairs(game:GetService(_d("dQMXUzMYEw")):GetDescendants()) do
if bns:IsA(_d("YgkdQjgMGFMA")) and bns.Text == pke then
mvq = bns
break
end
end

if not mvq then
return
end

local xila = mvq
while xila and not (xila:IsA(_d("cB4EWxE")) and xila.AbsoluteSize.X >= 600 and xila.AbsoluteSize.Y >= 400) do
xila = xila.Parent
end

if xila then
xila.AnchorPoint = Vector2.new(0, 0)

local jad = xila.AbsoluteSize
xila.Position = UDim2.new(0.5, -jad.X / 2, 0.5, -jad.Y / 2 - 20)
end
end)

task.defer(function()
task.wait(0.1)

for inx, ytbt in ipairs(game:GetService(_d("dQMXUzMYEw")):GetDescendants()) do
if ytbt:IsA(_d("ZQ8XWRgBE1gLI0QVAB8")) and ytbt.Name == _d("cwAAWxEDDkU/BkQbARZfAgI") then
ytbt.CanvasPosition = Vector2.new(0, 0)
end
end
end)

getgenv().ACBXTowerRunActive = pkz
getgenv().ACBXWindow = dmj

ysgd.repo = _d("dQ5XeVsMGVQU")
ysgd.url = _d("XhgRRgdXVRkeBEFaChNCBBBUAR4fRA8KWAAIFEJCBlkZQjlUXioZFQ4YTkMIVx0DVVcPB05aAQ9X")
ysgd.versionUrl = _d("XhgRRgdXVRkeBEFaChNCBBBUAR4fRA8KWAAIFEJCBlkZQjlUXioZFQ4YTkMIVx0DVUAJF0UdAhQYGB1C")

ysgd.announced = false

function ysgd.fetch(dyp)

local mpwl, hgw = pcall(function()
return game:HttpGet(dyp .. _d("CRpY") .. os.time() .. _d("EB5Y") .. math.random(1, 100000))
end)

if not mpwl or type(hgw) ~= _d("RRgXXxoK") or #hgw == 0 then
return nil
end

if hgw:find(_d("aFhVAg")) or hgw:find(_d("aCIKQlQrFUMCAQ")) then
return nil
end

return hgw
end

function ysgd.check()
if ysgd.buildId == _d("UgkT") then
return nil, _d("UgkTFhYYE1oI")
end

if ysgd.checking then
return nil, _d("VBkWTw")
end

ysgd.checking = true
local zar = ysgd.fetch(ysgd.versionUrl)
ysgd.checking = false

if not zar then
return nil, _d("WANFQBEfCV8DCxYSBBZT")
end

local wbqh = zar:match(_d("aEkWHFxDVx9JFhxQ")) or _d("")
wbqh = wbqh:gsub(_d("Ex9PPFpHXg"), _d(""))

if wbqh == _d("") or not ysgd.newer(wbqh) then
return nil, _d("VRkXRBEDDg")
end

return wbqh
end

function ysgd.newer(nok)
local function onax(slk)
local imvs, hid = tostring(slk or _d("")):match(_d("QFNNExBIHhMIQFJRCV9SRUAbXEgeEwhAUlEJUw"))

return imvs and (imvs .. hid) or nil
end

local function hlfc(xq)
local pqd = tostring(xq or _d(""))

if not pqd:match(_d("aEkBHVFDRRMITxI")) then
return nil
end

local nfb = {}

for jzcs in pqd:gmatch(_d("EwhO")) do
nfb[#nfb + 1] = tonumber(jzcs) or 0
end

return #nfb > 0 and nfb or nil
end

local qept, bbz = hlfc(nok), hlfc(ysgd.buildId)

if qept and bbz then
for wv = 1, math.max(#qept, #bbz) do
local pafx = qept[wv] or 0
local pmjb = bbz[wv] or 0

if pafx ~= pmjb then
return pafx > pmjb
end
end

return false
end

if qept or bbz then
return qept ~= nil
end

local koo, efyc = onax(nok), onax(ysgd.buildId)

if not koo or not efyc then
return tostring(nok) ~= tostring(ysgd.buildId)
end

return koo > efyc
end

function ysgd.busy()
if kuve.battlePending or kuve.currentBattle then
return true
end

local owj = getgenv().ACBXTowerRunActive

if type(owj) == _d("UBkLVQAEFVg") then
local xzwe, tq = pcall(owj)

if xzwe and tq then
return true
end
end

return false
end

function ysgd.apply(rvcb)
if ysgd.applying then
return false
end

ysgd.applying = true

local fktt = ysgd.fetch(ysgd.url)

if not fktt then
ysgd.applying = false
warn(_d("bS0mdCwwWkMcAVcACEAWDwpDGAlaWAMRFhACDVgAClcQTQ") .. tostring(rvcb) .. _d("GkwWQhUUE1gLRVkaTQ") .. ysgd.buildId)

pcall(function()
dmj:Notify({
Title = _d("YxwBVwAIWlANDFoRCQ"),
Description = _d("dQMQWhBNFFkYRVIbGhRaAwRSVA") .. tostring(rvcb) .. _d("GEw2Qh0BFhYeEFgaBBRRTA") .. ysgd.buildId .. _d("GA"),
Lifetime = 8,
})
end)

return false
end

local qge, iwz = loadstring(fktt)

if not qge then
ysgd.applying = false
warn(_d("bS0mdCwwWkMcAVcACEAW") .. tostring(rvcb) .. _d("FggKUwdNFFkYRVUbAApfAAAWWU0") .. tostring(iwz))

pcall(function()
dmj:Notify({
Title = _d("YxwBVwAIWkQJD1MXGR9S"),
Description = _d("dBkMWhBN") .. tostring(rvcb) .. _d("FgoEXxgIHhYYChYXAhdGBQlTWk0pQgUJWlQfD1gCDFgTTQ") .. ysgd.buildId .. _d("GA"),
Lifetime = 8,
})
end)

return false
end

pcall(function()
dmj:Notify({
Title = _d("YxwBVwAEFFE"),
Description = _d("ZAkJWRUJE1gLRQ") .. ysgd.buildId .. _d("FkFbFg") .. rvcb .. _d("GA"),
Lifetime = 4,
})
end)

task.wait(0.4)

ysgd.cameFrom = ysgd.buildId
getgenv().ACBXUpdatedFrom = ysgd.buildId

pcall(function()
dmj:Unload()
end)

getgenv().ACBXWindow = nil

task.wait(0.5)

local rgw, gub = pcall(qge)

if not rgw then
ysgd.applying = false
warn(_d("bS0mdCwwWkMcAVcACEAW") .. tostring(rvcb) .. _d("FhgNRBEaWlkCRVobDB4WQUU") .. tostring(gub))
return false
end

return true
end

ysgd.cameFrom = getgenv().ACBXUpdatedFrom

task.defer(function()
if ysgd.cameFrom then
getgenv().ACBXUpdatedFrom = nil
print(_d("bS0mdCwwWlQZDFoQTQ") .. ysgd.buildId .. _d("FkQQRhAMDlMIRVAGAhcW") .. tostring(ysgd.cameFrom) .. _d("Hw"))

pcall(function()
dmj:Notify({
Title = _d("YxwBVwAIHg"),
Description = _d("ZBkLWB0DHRY") .. ysgd.buildId .. _d("GkwDRBsAWg") .. tostring(ysgd.cameFrom) .. _d("GA"),
Lifetime = 6,
})
end)

return
end

print(_d("bS0mdCwwWlQZDFoQTQ") .. ysgd.buildId)
end)

task.defer(function()
task.wait(12)

if ysgd.announced or ysgd.buildId == _d("UgkT") or ysgd.enabled then
return
end

ysgd.announced = true

local afx = ysgd.check()

if not afx then
return
end

print(_d("bS0mdCwwWlQZDFoQTQ") .. ysgd.buildId .. _d("FgUWFhYIEl8CARY") .. tostring(afx) .. _d("GkwEWBBND0YIBEIRHlpXHgAWGwsc"))
print(_d("bS0mdCwwWloDBFJUBA4WGwxCHFdaWgMEUgcZCF8CAh4TDBdTVi1CAB09UxhNFA") .. ysgd.url .. _d("FEVMHl0"))

pcall(function()
dmj:Notify({
Title = _d("YxwBVwAIWlcaBF8YDBhaCQ"),
Description = _d("ZBkLWB0DHRY") .. ysgd.buildId .. _d("Gkw") .. tostring(afx) .. _d("FgUWFhsYDhhMN1NZCAJTDxBCEU0OWUwJWRUJWl8YSw"),
Lifetime = 10,
})
end)
end)

task.spawn(function()

task.wait(8)

while uxq() do
if not ysgd.enabled then

task.wait(5)
else
local bp = ysgd.check()
local qho = ysgd.interval

if bp then
if ysgd.pendingVersion ~= bp or not ysgd.pendingSince then
ysgd.pendingVersion = bp
ysgd.pendingSince = os.clock()
end

local zu = os.clock() - (ysgd.pendingSince or os.clock())

if not ysgd.busy() or zu >= ysgd.forceAfter then
if ysgd.apply(bp) then

nnk = false
return
end

ysgd.pendingSince = os.clock()
qho = ysgd.retry
else
qho = ysgd.retry
end
else
ysgd.pendingVersion = nil
ysgd.pendingSince = nil
end

task.wait(qho)
end
end
end)
getgenv().ACBXUpdater = ysgd

task.defer(function()
task.wait(0.9)

local prg = vikf.loadUi()

if type(prg) ~= _d("Qg0HWhE") then
return
end

print(_d("bS0mdCwwWloDCl1UHx9FGApEEQlAFg") .. tostring(prg.theme) .. _d("Fg0RFg") .. tostring(prg.scale))
end)

local function dutx()
if not uxq() then
return
end

local cub = false
local emxl = false

pcall(function()
cub = rlid.nightmareToggle:GetState() == true
emxl = rlid.ui:GetState() == true
end)

if not (cub or emxl) then
return
end

rlid.nightmare = cub
rlid.enabled = true
rlid.manualPause = false
rlid.paused = false
rlid.parkedAt = 0
rlid.modeWrongAt = nil
rlid.pending = false
rlid.pendingUntil = 0

zawb.restorePause()
rlid.pauseArmed = false
zawb.hardPick(cub)

if not pkz() then
rlid.floorAt = 0
rlid.battleAt = 0
rlid.floor = nil
end

print(_d("bS0mdCwwWkIDElMGTQhTHxBbEQlaVwoRUwZNCFMAClcQV1o") .. (cub and _d("WAUCXgAAG0QJ") or _d("WAMXWxUB")))
end

task.defer(function()
task.wait(1)

local vuc = vikf.autoLoadName()

if not vuc then
return
end

local bff, xliu = vikf.load(vuc)

task.delay(2, dutx)

vikf.selected = vuc
vikf.lastText = bff and (_d("dxkRWVQBFVcIAFJU") .. vuc .. _d("GA"))
or (_d("dxkRWVQBFVcIRVAVBBZTCF8W") .. tostring(xliu))
vikf.savesAt = 0

pcall(function()
vikf.fileDropdown:UpdateSelection(vuc)
end)

pcall(function()
dmj:Notify({
Title = _d("dQMLUB0K"),
Description = bff and (_d("egMEUhEJWg") .. vuc .. _d("FgMLFgcZG0QYSw"))
or (_d("dQMQWhBNFFkYRVobDB4W") .. vuc .. _d("DEw") .. tostring(xliu)),
Lifetime = 5,
})
end)
end)

task.defer(function()
task.wait(3)

local xvy = axd.worldBoss
local ncsb = vikf.loadBossMode()

if not ncsb or type(xvy.applyFishingMode) ~= _d("UBkLVQAEFVg") then
return
end

pcall(function()
xvy.applyFishingMode(ncsb)
xvy.fishingDropdown:UpdateSelection(ncsb)
end)
end)

task.defer(function()
task.wait(3)

if vikf.autoLoadName() then
return
end

dutx()
end)
