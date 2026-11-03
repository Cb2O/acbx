local _d = (function()
local A = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local M = {}
local cache = {}
for i = 1, #A do
M[string.sub(A, i, i)] = i - 1
end
local K = string.char(108, 57, 120, 97, 56, 103, 98)
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

local rkvw = "ACB Rebirth v1.03"

local function mcvb(ednh)
for naqt, syxn in ipairs(ednh:GetDescendants()) do
if syxn:IsA(_d("OFwAFXQGAAlV")) and syxn.Text == rkvw then
local xt = syxn
while xt and not xt:IsA(_d("P1oKBF0JJRlQ")) do
xt = xt.Parent
end
return xt
end
end
end

local function oxl()
local ihrd = game:GetService(_d("PFUZGF0VEQ")).LocalPlayer

for pn, bi in ipairs({
(gethui and gethui() or game:GetService(_d("L1YKBH8SCw"))),
game:GetService(_d("L1YKBH8SCw")),
ihrd and ihrd:FindFirstChild(_d("PFUZGF0VJRlQ")),
}) do
for bh, vjc in ipairs(bi:GetChildren()) do

if vjc:IsA(_d("P1oKBF0JJRlQ")) then
local jltu = vjc:FindFirstChild(_d("LlgLBA"))

if jltu and jltu:FindFirstChild(_d("P1AcBFoGEA")) and jltu:FindFirstChild(_d("L1YWFV0JFg")) then
return vjc
end
end
end
end
end

if oxl() and getgenv().ACBXAllowReload ~= true then
local mbv = getgenv().ACBXWindow
local onu = false
local kiwq = false

if mbv and mbv.Dialog then
pcall(function()
if mbv.GetState and mbv:GetState() == false then
mbv:SetState(true)
end

mbv:Dialog({
Title = _d("LXo6QWoCAAVLDAkYDhFMWBQTXQYGFRkKFFYJCwJe"),
Description = _d("LRkbDkgeQgVKWABUFQcNXQFBVAgDCFwcQVEJQhhRERIYFAcfShEOVklCPlwIDVkEB0xQDEFPDhYEGQwJURRCA1cdXhgzCgkZChRWCQsCXlgCVxcbTEoMDkgUQgpQChJMS0IfVlgOVgsbTFYWBBgCFAlLWAVKDhQJSlgVUAJCDVobDk0JFkI"),
Buttons = {
{
Name = _d("PlwIDVkEBw"),
Callback = function()
kiwq = true
onu = true
end,
},
{
Name = _d("J1wdEQ"),
Callback = function()
onu = true
end,
},
},
})
end)
else

kiwq = true
onu = true
end

local ht = os.clock() + 90

while not onu and os.clock() < ht do
task.wait(0.25)
end

if not kiwq then
warn(_d("N3g7I2A6QgBWGQUYFQcKTAsEXEdPTE0QBBgEDRxAWBVQBhZMUAtBShIMAlAWBhgUFg1AC08YJA4FWhNBagISAFgbBBgTDUxKDwBIRwsYFVgOSkcXH1xYNFYLDQ1dWBJbFQscTVgIVkcLGEpYMl0TFgVXHxIYEwMOFw"))

return
end

warn(_d("N3g7I2A6Qh5cCA1ZBAsCXlgVUAJCHkwWD1EJBUxaFxFBRxUFTRBBTA8LHxkXD11J"))
end

getgenv().ACBXAllowReload = nil

local acvr = getgenv().ACBXConnections
if type(acvr) == _d("GFgaDV0") then
for hur, zeu in ipairs(acvr) do
pcall(function()
zeu:Disconnect()
end)
end
end

local xb = {}
getgenv().ACBXConnections = xb

local function jhh(xa, kcm)
local uqh = xa:Connect(kcm)

table.insert(xb, uqh)

return uqh
end

local hvgd = getgenv().ACBXWindow
if hvgd then
pcall(function()
hvgd:Unload()
end)
end

for gti, sn in ipairs({
game:GetService(_d("L1YKBH8SCw")),
game:GetService(_d("PFUZGF0VEQ")).LocalPlayer:FindFirstChild(_d("PFUZGF0VJRlQ")),
}) do
if sn then
local avbb = mcvb(sn)
if avbb then
avbb:Destroy()
end
end
end

local jqs = game:GetService(_d("PFUZGF0VEQ"))
local egii = game:GetService(_d("PlwIDVEEAxhcHDJMCBANXh0"))
local gggl = game:GetService(_d("PFgMCV4ODAhQFgZrAhAaUBsE"))
local tgze = game:GetService(_d("PkwWMl0VFAVaHQ"))
local ehbn = jqs.LocalPlayer
local brbo = ehbn:WaitForChild(_d("PFUZGF0VJRlQ"))

local eux = false

local function vad()
pcall(function()
local zbrx = game:GetService(_d("OE4dBFY0Bx5PEQJd"))
local tteb = (gethui and gethui()) or brbo
local yru = Color3.fromRGB(77, 166, 255)
local pgz = ehbn.DisplayName

local function mk(mi, doq, vxoc)
zbrx:Create(
mi,
TweenInfo.new(doq, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
vxoc
):Play()
task.wait(doq)
end

local pmrr = Instance.new(_d("P1oKBF0JJRlQ"))
pmrr.Name = _d("LXo6OXEJFh5W")
pmrr.IgnoreGuiInset = true
pmrr.DisplayOrder = 1000000
pmrr.ResetOnSpawn = false
pmrr.Parent = tteb

local hnix = Instance.new(_d("KksZDF0"))
hnix.Size = UDim2.fromScale(1, 1)
hnix.BackgroundColor3 = Color3.fromRGB(4, 6, 11)
hnix.BackgroundTransparency = 1
hnix.BorderSizePixel = 0
hnix.Parent = pmrr

local yt = Instance.new(_d("KksZDF0"))
yt.AnchorPoint = Vector2.new(0.5, 0.5)
yt.Position = UDim2.fromScale(0.5, 0.5)
yt.Size = UDim2.fromOffset(400, 176)
yt.BackgroundColor3 = Color3.fromRGB(11, 16, 26)
yt.BackgroundTransparency = 1
yt.BorderSizePixel = 0
yt.Parent = pmrr

local wq = Instance.new(_d("OXA7DkoJBx4"))
wq.CornerRadius = UDim.new(0, 14)
wq.Parent = yt

local gujz = Instance.new(_d("OXArFUoICQk"))
gujz.Color = Color3.fromRGB(46, 60, 86)
gujz.Thickness = 1
gujz.Transparency = 1
gujz.Parent = yt

local urc = Instance.new(_d("KksZDF0"))
urc.Size = UDim2.fromOffset(44, 2)
urc.Position = UDim2.new(0.5, -22, 0, 34)
urc.BackgroundColor3 = yru
urc.BorderSizePixel = 0
urc.BackgroundTransparency = 1
urc.Parent = yt

local iq = Instance.new(_d("OFwAFXQGAAlV"))
iq.BackgroundTransparency = 1
iq.Size = UDim2.new(1, -48, 0, 48)
iq.Position = UDim2.fromOffset(24, 42)
iq.Font = Enum.Font.GothamBold
iq.Text = _d("L3tYKW0l")
iq.TextSize = 28
iq.TextYAlignment = Enum.TextYAlignment.Center
iq.TextColor3 = Color3.fromRGB(236, 242, 255)
iq.TextTransparency = 1
iq.Parent = yt

local dr = Instance.new(_d("OFwAFXQGAAlV"))
dr.BackgroundTransparency = 1
dr.Size = UDim2.new(1, -48, 0, 20)
dr.Position = UDim2.fromOffset(24, 94)
dr.Font = Enum.Font.Gotham
dr.Text = _d("AFYZBVEJBQ")
dr.TextSize = 14
dr.TextColor3 = Color3.fromRGB(150, 163, 186)
dr.TextTransparency = 1
dr.Parent = yt

local hu = Instance.new(_d("KksZDF0"))
hu.Size = UDim2.fromOffset(240, 3)
hu.Position = UDim2.new(0.5, -120, 0, 130)
hu.BackgroundColor3 = Color3.fromRGB(34, 44, 64)
hu.BorderSizePixel = 0
hu.BackgroundTransparency = 1
hu.Parent = yt

local fg = Instance.new(_d("KksZDF0"))
fg.Size = UDim2.fromScale(0, 1)
fg.BackgroundColor3 = yru
fg.BorderSizePixel = 0
fg.BackgroundTransparency = 1
fg.Parent = hu

local mstt = Instance.new(_d("OXA7DkoJBx4"))
mstt.CornerRadius = UDim.new(0, 4)
mstt.Parent = hu

local oc = Instance.new(_d("OXA7DkoJBx4"))
oc.CornerRadius = UDim.new(0, 4)
oc.Parent = fg

mk(hnix, 0.35, { BackgroundTransparency = 0.15 })
task.spawn(function()
mk(yt, 0.3, { BackgroundTransparency = 0 })
end)
task.spawn(function()
mk(gujz, 0.3, { Transparency = 0 })
end)
mk(iq, 0.3, { TextTransparency = 0 })
mk(urc, 0.3, { BackgroundTransparency = 0 })
mk(dr, 0.3, { TextTransparency = 0 })
mk(hu, 0.3, { BackgroundTransparency = 0 })
mk(fg, 0.3, { BackgroundTransparency = 0 })

local vott = { _d("AFYZBVEJBQ"), _d("AFYZBVEJBUI"), _d("AFYZBVEJBUIX"), _d("AFYZBVEJBUIXVg") }
task.spawn(function()
zbrx:Create(fg, TweenInfo.new(1.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
Size = UDim2.fromScale(1, 1),
}):Play()
for ej = 1, 6 do
dr.Text = vott[(ej - 1) % #vott + 1]
task.wait(0.2)
end
end)
task.wait(1.2)

mk(iq, 0.2, { TextTransparency = 1 })
mk(dr, 0.2, { TextTransparency = 1 })
mk(hu, 0.2, { BackgroundTransparency = 1 })
mk(fg, 0.2, { BackgroundTransparency = 1 })

iq.Text = _d("OFEZD1MUQgpWCkFNFAsCXlgMQUcRD0sREUw")
iq.TextSize = 22
iq.TextWrapped = true
dr.Text = rkvw
mk(iq, 0.25, { TextTransparency = 0 })
mk(dr, 0.25, { TextTransparency = 0 })
task.wait(1.1)
mk(iq, 0.2, { TextTransparency = 1 })
mk(dr, 0.2, { TextTransparency = 1 })

iq.Text = _d("O1wUAlcKB0w") .. pgz .. _d("TG0XQXslQiRMGg")
iq.TextSize = 22
dr.Text = _d("H00ZE0wODAs")
mk(iq, 0.3, { TextTransparency = 0 })
mk(dr, 0.3, { TextTransparency = 0 })
task.wait(1.3)

mk(iq, 0.25, { TextTransparency = 1 })
mk(dr, 0.25, { TextTransparency = 1 })
mk(hnix, 0.35, { BackgroundTransparency = 1 })

pmrr:Destroy()
end)

eux = true
end

task.spawn(vad)

local pds = egii:WaitForChild(_d("PlwVDkwCEQ"))

local function nay(gas, sue)
local kmvr = pds:FindFirstChild(gas)

if kmvr then
return kmvr
end

local jda = pds:WaitForChild(gas, sue or 3)

if not jda then
warn(_d("LXo6OQJHEAlUFxVdR0U") .. gas .. _d("SxkWDhgLDQJeHRMYAhoFSgwSGA4MTE0QCEtHBQ1UHUFOAhAfUBcPGEpCGFEZFRgBBw1NDRNdRwsfGRcHXg"))
end

return jda
end

local zbuo = {
StartNPCBattle = nay(_d("P00ZE0wpMi97GRVMCwc")),
NPCBattleResult = nay(_d("Imk7I1kTFgBcKgRLEg4Y")),
SyncNPCCooldowns = nay(_d("P0AWAnY3IS9WFw1cCBUCSg")),
SetNPCDifficulty = nay(_d("P1wML2gkJgVfHghbEg4YQA")),
StartRaidBattle = nay(_d("P00ZE0w1AwVdOgBMEw4J")),
SetRaidDifficulty = nay(_d("P1wMM1kOBihQHgdRBBcATQE")),
RaidProgress = nay(_d("PlgRBWgVDQtLHRJL")),
RequestRaidProgress = nay(_d("PlwJFF0UFj5YEQVoFQ0LSx0SSw")),
SyncInfiniteRoomProgress = nay(_d("P0AWAnEJBAVXERVdNQ0DVCgTVwAQCUoL")),
BuyRaidItem = nay(_d("LkwBM1kOBiVNHQw")),
RaidShopState = nay(_d("PlgRBWsPDRxqDABMAg")),
RaidNotify = nay(_d("PlgRBXYIFgVfAQ")),
SyncItems = nay(_d("P0AWAnETBwFK")),

UseItem = nay(_d("OUodKEwCDw")),
UseItemResult = nay(_d("OUodKEwCDz5cCxRUEw")),
RequestWeatherState = nay(_d("PlwJFF0UFjtcGRVQAhA/TRkVXQ")),
WeatherChanged = nay(_d("O1wZFVACEC9RGQ9fAgY")),
FishingUpdate = nay(_d("KlALCVEJBTlJHABMAg")),
FishingThrow = nay(_d("KlALCVEJBThRCg5P")),
FishingReel = nay(_d("KlALCVEJBT5cHQ0")),
FishingStop = nay(_d("KlALCVEJBT9NFxE")),

FishingIslandTeleport = nay(_d("KlALCVEJBSVKFABWAzYJVR0RVxUW")),

SyncCollection = nay(_d("P0AWAnsIDgBcGxVRCAw")),
RequestSync = nay(_d("PlwJFF0UFj9AFgI")),
ClaimIndexReward = nay(_d("L1UZCFUuDAhcADNdEAMeXQ")),
RequestAchievements = nay(_d("PlwJFF0UFi1aEAhdEQcBXBYVSw")),
SyncAchievements = nay(_d("P0AWAnkECgVcDgRVAgwYSg")),
ClaimAchievement = nay(_d("L1UZCFUmAQRQHRddCgcCTQ")),
RequestQuests = nay(_d("PlwJFF0UFj1MHRJMFA")),
SyncQuests = nay(_d("P0AWAmkSBx9NCw")),
ClaimQuest = nay(_d("L1UZCFU2FwlKDA")),
RequestPeriodicQuests = nay(_d("PlwJFF0UFjxcCghXAwsPaA0ESxMR")),
SyncPeriodicQuests = nay(_d("P0AWAmgCEAVWHAhbNhcJSgwS")),
ClaimPeriodicQuest = nay(_d("L1UZCFU3Bx5QFwVRBDMZXAsV")),

OpenFuseDialog = nay(_d("I0kdD34SEQl9EQBUCAU")),
FuseCards = nay(_d("KkwLBHsGEAhK")),
OpenDeconstructDialog = nay(_d("I0kdD3wCAQNXCxVKEgEYfREAVAgF")),
DeconstructCards = nay(_d("KFwbDlYUFh5MGxV7BhAISg")),
OpenPackShop = nay(_d("I0kdD2gGAQdqEA5I")),
EquipPack = nay(_d("KUgNCEg3Aw9S")),

RequestSkillTree = nay(_d("PlwJFF0UFj9SEQ1UMxAJXA")),
BuySkillNode = nay(_d("LkwBMlMODgB3FwVd")),
OpenAccessoryShop = nay(_d("I0kdD3kEAQlKCw5KHjEEVgg")),
OpenAccessoryShop2 = nay(_d("I0kdD3kEAQlKCw5KHjEEVghT")),
BuyAccessory = nay(_d("LkwBIFsEBx9KFxNB")),
BuyAccessory2 = nay(_d("LkwBIFsEBx9KFxNBVQ")),
EquipAccessory = nay(_d("KUgNCEgmAQ9cCxJXFRs")),

RedeemCode = nay(_d("PlwcBF0KIQNdHQ")),

OpenNPCDialog = nay(_d("I0kdD3Y3IShQGQ1XAA")),
TeleportToWorld = nay(_d("OFwUBEgIEBhtFzZXFQ4I")),
RaidBattleStarted = nay(_d("PlgRBXoGFhhVHTJMBhAYXBw")),
BattleEnd = nay(_d("LlgMFVQCJwJd")),
StartBattle = nay(_d("P00ZE0wlAxhNFAQ")),
RequestInfiniteRoomProgress = nay(_d("PlwJFF0UFiVXHghWDhYJaxcOVTcQA14KBEsU")),
EndTowerRemote = nay(_d("KVccNVcQBx5rHQxXEwc")),
SaveClientData = nay(_d("P1gOBHsLCwlXDCVZEwM")),
OpenRaidShop = nay(_d("I0kdD2oGCwhqEA5I")),
RequestItemSync = nay(_d("PlwJFF0UFiVNHQxrHgwP")),
FishingGetState = nay(_d("KlALCVEJBStcDDJMBhYJ")),
FishingSetAuto = nay(_d("KlALCVEJBT9cDCBNEw0")),
FishingShop = nay(_d("KlALCVEJBT9RFxE")),
DigGetState = nay(_d("KFAfJl0TMRhYDAQ")),
DigShop = nay(_d("KFAfMlAIEg")),
DigAction = nay(_d("KFAfIFsTCwNX")),
DigUpdate = nay(_d("KFAfNEgDAxhc")),
}

local elf = require(egii.ModuleScripts.NPCData)
local duj = require(egii.ModuleScripts.WorldDifficultyData)
local ka = require(egii.ModuleScripts.BossData)
local hm = require(egii.ModuleScripts.RaidData)
local ag = require(egii.ModuleScripts.InfiniteRoomData)
local kt = require(egii.ModuleScripts.CraftData)
local ibvn = require(egii.ModuleScripts.AchievementData)
local vm = require(egii.ModuleScripts.RaidShopData)
local xpgk = require(egii.ModuleScripts.ItemData)
local qr = require(egii.ModuleScripts.CardData)
local fww = require(egii.ModuleScripts.SkillTreeData)

local pcyb = {
enabled = false,
role = { _d("GFYPBEo"), _d("Akkb") },

picked = { _d("OFYPBEo"), _d("Imk7QVoGFhhVHRI") },
hasSlot2 = nil,
toggle = nil,

optionsFor = {
{ _d("OFYPBEo"), _d("JFgUDVcQBwlXWBVXEAce"), _d("Imk7QVoGFhhVHRI") },
{ _d("Imk7QVoGFhhVHRI"), _d("JUoUAFYDQgRYCgVbCBAJ") },
},
roleIds = {
Tower = _d("GFYPBEo"),

[_d("JFgKBVsIEAkZDA5PAhA")] = _d("BFgKBVsIEAk"),
[_d("Imk7QVoGFhhVHRI")] = _d("Akkb"),
[_d("JFgUDVcQBwlXWBVXEAce")] = _d("BFgUDVcQBwlX"),
[_d("JUoUAFYDQgRYCgVbCBAJ")] = _d("BFgKBVsIEAk"),
},
roleNames = {
tower = _d("OFYPBEo"),
hardcore = _d("JUoUAFYDQgRYCgVbCBAJ"),
npc = _d("Imk7QVoGFhhVHRI"),
halloween = _d("JFgUDVcQBwlXWBVXEAce"),
},
}

pcyb.prioGroups = {
{ id = _d("HlgRBUs"), label = _d("PlgRBUs"), rank = 1 },
{ id = _d("DlYLEg"), label = _d("K1UXA1kLQg5WCxI"), rank = 2 },
{ id = _d("Akkb"), label = _d("Imk7QVoGFhhVHRIYQUIeVhcMSw"), rank = 3 },
{ id = _d("BFgKBVsIEAk"), label = _d("JUoUAFYDQiRYCgVbCBAJ"), rank = 4 },
{ id = _d("G1gMBEo"), label = _d("KlALCVEJBUwWWCVRAAUFVx8"), rank = 5 },
}

pcyb.prioBlocks = function()
return false
end

pcyb.digBlocked = function()
return false
end

function pcyb.detectSlot2()
local trt = brbo:FindFirstChild(_d("P1wMFVEJBR9+DQg"))
local hck = trt and trt:FindFirstChild(_d("P1UXFWwCAwELKg5P"), true)

if hck then
return hck.Visible == true
end

return nil
end

function pcyb.roleSlot(jvu)
if not pcyb.enabled then
return 1
end

for drh = 1, 2 do
if pcyb.role[drh] == jvu then
return drh
end
end

return nil
end

function pcyb.isTowerRole(xea)
return xea == _d("GFYPBEo") or xea == _d("BFgKBVsIEAk") or xea == _d("BFgUDVcQBwlX")
end

function pcyb.towerSlot()
return pcyb.roleSlot(_d("GFYPBEo"))
end

function pcyb.hardcoreSlot()
local vdm = pcyb.roleSlot(_d("BFgKBVsIEAk"))

if vdm == 2 and pcyb.hasSlot2 == false then
return 1
end

return vdm
end

function pcyb.halloweenSlot()

local vz = pcyb.roleSlot(_d("BFgUDVcQBwlX"))

if vz == 1 then
return 1
end

return nil
end

function pcyb.roomSlot()
local acn = pcyb.roleSlot(_d("Akkb"))

if not pcyb.enabled then
return 1
end

if acn == nil then
return nil
end

if acn == 2 and pcyb.hasSlot2 == false then
return 1
end

return acn
end

function pcyb.splitNpc()
return pcyb.enabled and pcyb.role[1] == _d("Akkb") and pcyb.role[2] == _d("Akkb")
end

function pcyb.busy(dnpu)
local abk = brbo:FindFirstChild(dnpu == 2 and _d("JVc6AEwTDgkL") or _d("JVc6AEwTDgk"))

return abk ~= nil and abk:IsA(_d("LlYXDW4GDhlc")) and abk.Value == true
end

function pcyb.roleName(smh)
return pcyb.roleNames[pcyb.role[smh]] or pcyb.roleNames.npc
end

function pcyb.roleLabel(pynx)
return pcyb.picked[pynx] or pcyb.roleName(pynx)
end

local ig = nil

if egii:FindFirstChild(_d("IVYcFFQCMQ9LERFMFA")) and egii.ModuleScripts:FindFirstChild(_d("JFgUDVcQBwlXLA5PAhAoWAwA")) then
local ur, svkx = pcall(function()
return require(egii.ModuleScripts.HalloweenTowerData)
end)

if ur then
ig = svkx
end
end

local pp = nil

if egii:FindFirstChild(_d("IVYcFFQCMQ9LERFMFA")) and egii.ModuleScripts:FindFirstChild(_d("KlALCVEJBShYDAA")) then
local nw, fsv = pcall(function()
return require(egii.ModuleScripts.FishingData)
end)

if nw then
pp = fsv
end
end

local function ma(qc)
return tostring(qc):reverse():gsub(_d("RBwcRFxCBkU"), _d("SQhU")):reverse():gsub(_d("MhU"), _d(""))
end

local gnco = {
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

getgenv().ACBXHalloweenUpgrades = gnco.upgrade
getgenv().ACBXHalloweenTower = gnco.run

gnco.shopData = vm.ShopById.halloween
gnco.shopItems = {}
gnco.shopLabels = {}
gnco.cardNames = {
hw_brook = _d("LksXDlNHSiFMCwhbBg5MahMEVAIWA1dR"),
hw_death_the_kid = _d("KFwZFVBHFgRcWCpRA0JEcRkTVQgMBVpYJk0JQjtQHQ1cAhBF"),
hw_barragan = _d("LlgKE1kAAwIZUDJTAg4JTRcPGCwLAl5R"),
}
gnco.cardShortNames = {
hw_brook = _d("LksXDlM"),
hw_death_the_kid = _d("KFwZFVBHFgRcWCpRAw"),
hw_barragan = _d("LlgKE1kAAwI"),
}

for sw, yc in ipairs(gnco.shopData.Items) do
local iuwa, lyll = next(yc.price or {})
local gib = yc.id
local pmod = yc.id

if yc.itemId then
local wc = xpgk.ById[yc.itemId]
gib = wc and (wc.name or yc.itemId) or yc.itemId
pmod = gib
elseif yc.cardId then
gib = gnco.cardNames[yc.cardId] or (qr.ById[yc.cardId] and qr.ById[yc.cardId].name) or yc.cardId
pmod = gnco.cardShortNames[yc.cardId] or gib
end

local fe = iuwa == _d("BFgUDVcQBwlXJwJZCQYV") and _d("L1gWBUE") or (iuwa == _d("BlgbCmcIPQBYFhVdFQw") and _d("IFgWFV0VDB8") or tostring(iuwa))
local ju = gib .. _d("TNv49Rg") .. ma(lyll) .. _d("TA") .. fe

table.insert(gnco.shopItems, {
id = yc.id,
label = ju,
shortName = pmod,
currency = iuwa,
price = lyll,
stock = yc.stock,
cardId = yc.cardId,
})

table.insert(gnco.shopLabels, ju)
end

for hn, eke in ipairs({
_d("PlwJFF0UFiRYFA1XEAcJVy0RXxUDCFwL"),
_d("LkwBKVkLDgNOHQRWMhILSxkFXQ"),
_d("JFgUDVcQBwlXLRFfFQMIXCsVWRMH"),
_d("PlwJFF0UFiRYFA1XEAcJVywOTwIQPEsXBkoCER8"),
_d("P0AWAnAGDgBWDwRdCTYDTh0TaBUNC0sdEks"),
_d("I0kdD3AGDgBWDwRdCTYDTh0T"),
}) do
gnco.remote[eke] = nay(eke)
end

function gnco.fire(wqze, ...)
local ioj = gnco.remote[wqze]

if not ioj then
return
end

local pq = { ... }

pcall(function()
ioj:FireServer(table.unpack(pq))
end)
end

function gnco.on(uu, ix)
local irz = gnco.remote[uu]

if irz then
jhh(irz.OnClientEvent, ix)
end
end

if ig then
for fan, leuu in ipairs(ig.Upgrades) do
table.insert(gnco.upgrades, {
id = leuu.id,
name = leuu.name,
maxLevel = leuu.maxLevel,
})

table.insert(gnco.labels, leuu.name)
end
end

function gnco.level(czqb)
if not ig then
return 0
end

return ig.getUpgradeLevel(gnco.upgrade.levels, czqb)
end

function gnco.cost(eqe)
if not ig then
return nil
end

return ig.getUpgradeCost(eqe, gnco.level(eqe))
end

function gnco.bonus(mbp, yo)
if not ig then
return _d("")
end

return ig.formatUpgradeBonus(mbp, yo)
end

function gnco.request()
gnco.upgrade.lastRequest = os.time()
gnco.fire(_d("PlwJFF0UFiRYFA1XEAcJVy0RXxUDCFwL"))
end

function gnco.text()
if not ig then
return _d("JFgUDVcQBwlXWDVXEAceGRwATAZCBUpYD1cTQgVXWBVQDhFMWw0IVANM")
end

local un = gnco.upgrade
local kzdn = {}

if un.balance == nil then
table.insert(kzdn, _d("PEwVEVMODB8DWEwYTwMfUhEPX0cWBFxYEl0VFAlLUQ"))
else
table.insert(kzdn, _d("PEwVEVMODB8DWA") .. ma(un.balance))
end

for vx, vax in ipairs(gnco.upgrades) do
local ndui = gnco.level(vax.id)
local lb = gnco.cost(vax.id)
local duc = un.selected[vax.id] and _d("N0ElQQ") or _d("NxklQQ")
local vbio = duc .. vax.name .. _d("TBk0Fxg") .. ndui .. _d("Qw") .. vax.maxLevel

if lb then
table.insert(kzdn, vbio .. _d("TBkWBEATQg") .. tostring(lb) .. _d("TBk") .. gnco.bonus(vax.id, ndui + 1))
else
table.insert(kzdn, vbio .. _d("TBkVAEACBg"))
end
end

if not next(un.selected) then
table.insert(kzdn, _d("PFAbChgSEgtLGQVdFEIFV1gVUAJCCEsXEVwIFQIZGQ9cRyMZTRdBTRcFHlgcBEtHABlAC0FMDwdMWhAEWRcHH01YDlYCQhVWDUFbBgxMWB4HVxUGQg"))
end

return table.concat(kzdn, _d("Zg"))
end

function gnco.buy()
local eam = gnco.upgrade

if eam.waiting or eam.balance == nil or os.time() - eam.lastBuy < 1 then
return
end

local benf = nil
local ln = nil

for oq, ahp in ipairs(gnco.upgrades) do
if eam.selected[ahp.id] and os.time() >= (eam.failedUntil[ahp.id] or 0) then
local glb = gnco.cost(ahp.id)

if glb and eam.balance >= glb and (not ln or glb < ln) then
benf = ahp.id
ln = glb
end
end
end

if not benf then
return
end

eam.waiting = true
eam.lastBuy = os.time()
eam.pendingId = benf
eam.pendingLevel = gnco.level(benf)

eam.balance = eam.balance - ln

gnco.fire(_d("LkwBKVkLDgNOHQRWMhILSxkFXQ"), benf)
end

gnco.on(_d("JFgUDVcQBwlXLRFfFQMIXCsVWRMH"), function(faty)
if type(faty) ~= _d("GFgaDV0") then
return
end

local fvp = gnco.upgrade

fvp.balance = tonumber(faty.balance) or 0
fvp.levels = type(faty.levels) == _d("GFgaDV0") and faty.levels or {}

if fvp.pendingId then
if gnco.level(fvp.pendingId) <= fvp.pendingLevel then
fvp.failedUntil[fvp.pendingId] = os.time() + 15
end

fvp.pendingId = nil
end

if type(faty.message) == _d("H00KCFYA") then
fvp.lastMessage = faty.message
end

fvp.waiting = false
end)

gnco.on(_d("P0AWAnAGDgBWDwRdCTYDTh0TaBUNC0sdEks"), function(kchs, zkt)
gnco.run.highest = tonumber(kchs) or 0
gnco.run.savedRun = type(zkt) == _d("GFgaDV0") and zkt or nil
end)

gnco.on(_d("I0kdD3AGDgBWDwRdCTYDTh0T"), function(pmih, uezl, ncl)
gnco.run.highest = tonumber(pmih) or gnco.run.highest
gnco.run.savedRun = type(ncl) == _d("GFgaDV0") and ncl or nil
end)

jhh(zbuo.BattleEnd.OnClientEvent, function(gt)
if type(gt) == _d("GFgaDV0") and gt.mode == _d("BVceCFYOFglmCg5XCg") and gt.tower == _d("BFgUDVcQBwlX") then
gnco.run.inBattle = false
gnco.run.pending = true
gnco.run.pendingUntil = os.time() + 3

task.delay(0.3, function()
gnco.requestProgress()
end)
end
end)

function gnco.requestProgress()
gnco.run.lastRequest = os.time()
gnco.fire(_d("PlwJFF0UFiRYFA1XEAcJVywOTwIQPEsXBkoCER8"))
end

function gnco.bestRoom()
local yg = gnco.run.highest

if not ig or yg == nil then
return nil
end

for dew, znpa in ipairs(ig.Milestones) do
if ig.isMilestoneUnlocked(znpa, yg)
and not ig.isMilestoneCleared(znpa, yg) then
return znpa
end
end

return nil
end

function gnco.startRun()
local xp = gnco.bestRoom()

if not xp then
return false
end

local esb = gnco.run.savedRun
local fju = type(esb) == _d("GFgaDV0") and esb.milestone == xp
local cq = fju and (tonumber(esb.currentFloor) or xp) or xp

local xww = pcyb.halloweenSlot() or 1

local obw = getgenv().ACBXAuto

obw = type(obw) == _d("GFgaDV0") and obw.bossTeams or nil

if gnco.run.teamChosen and obw and obw.applyTeam then
obw.applyTeam(gnco.run.team, xww)
end

local hbl = brbo:FindFirstChild(xww == 2 and _d("PlwLBEwlAxhNFAR+Cw0DS0o") or _d("PlwLBEwlAxhNFAR+Cw0DSw"))

if hbl and hbl:IsA(_d("LlAWBVkFDgl8DgRWEw")) then
pcall(function()
hbl:Fire(cq, _d("BVceCFYOFglmCg5XCg"))
end)
end

local mb = brbo:FindFirstChild(xww == 2 and _d("P00ZE0wuDApQFghMAjADVhUjWRMWAFxK") or _d("P00ZE0wuDApQFghMAjADVhUjWRMWAFw"))

if mb and mb:IsA(_d("LlAWBVkFDgl8DgRWEw")) then
pcall(function()
mb:Fire(cq, _d("BFgUDVcQBwlX"), cq)
end)
end

gnco.run.milestone = xp
gnco.run.savedRun = nil
gnco.run.inBattle = true
gnco.run.inBattleUntil = os.time() + 120
gnco.run.pending = true
gnco.run.pendingUntil = os.time() + 10

if fju then
zbuo.StartBattle:FireServer(_d("BVceCFYOFglmCg5XCg"), {
continue = true,
tower = _d("BFgUDVcQBwlX"),
slot = xww,
})
else
zbuo.StartBattle:FireServer(_d("BVceCFYOFglmCg5XCg"), {
tower = _d("BFgUDVcQBwlX"),
milestone = xp,
slot = xww,
})
end

return true
end

local eve = {}
for ta, wzg in ipairs(elf.NPCs) do
eve[wzg.name] = wzg.id
end

local rui = getgenv().ACBXCooldowns
if type(rui) ~= _d("GFgaDV0") then
rui = {}
getgenv().ACBXCooldowns = rui
end

local qq = getgenv().ACBXAuto
if type(qq) == _d("GFgaDV0") and type(qq.cooldowns) == _d("GFgaDV0") then
for ps, fx in pairs(qq.cooldowns) do
if rui[ps] == nil then
rui[ps] = fx
end
end
end

local jag = {
enabled = false,
story = false,
storyDifficulty = _d("AlYKDFkL"),
storyDropdown = nil,
selectedByWorld = {},
difficulties = { _d("AlYKDFkL") },
walkToNpc = false,
cooldowns = rui,
activeDifficulty = {},
lastFetch = {},
unlocked = {},
currentBattle = nil,
battlePending = false,
battlePendingUntil = 0,
}

jag.bossTeams = {
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

path = _d("LXo6ORcTBw1UC09SFA0C"),
}

function jag.bossTeams.trackCollection()
if jag.bossTeams.collectionHooked then
return
end

jag.bossTeams.collectionHooked = true

local agg = pds:FindFirstChild(_d("P0AWAnsIDgBcGxVRCAw"))

if not agg then
return
end

jhh(agg.OnClientEvent, function(rst)
if type(rst) == _d("GFgaDV0") and type(rst.teams) == _d("GFgaDV0") then
jag.bossTeams.teams = rst.teams
jag.bossTeams.teamsAt = os.clock()
end
end)

task.spawn(function()

task.wait(3)

for bwm = 1, 8 do
if jag.bossTeams.teams then
return
end

local puwx = pds:FindFirstChild(_d("P04RFVsPNglYFQ"))
local wi = jag.bossTeams.slotTeam
local blpy = nil

if puwx and type(wi) == _d("CkwWAkwODQI") then
local pk, ozry = pcall(wi, 2)
blpy = pk and ozry or nil

if not blpy then
pk, ozry = pcall(wi, 1)
blpy = pk and ozry or nil
end
end

if blpy then
pcall(function()
puwx:FireServer(blpy, false, 2)
end)
end

task.wait(6)
end
end)
end

function jag.bossTeams.teamCards(dq)
local ja = jag.bossTeams.teams

if type(ja) ~= _d("GFgaDV0") then
return nil
end

local dc = ja[dq]

if type(dc) ~= _d("GFgaDV0") then
return 0
end

local le = 0

for zab, bru in pairs(dc) do
if type(bru) == _d("GFgaDV0") then
le = le + 1
end
end

return le
end

function jag.bossTeams.raidState()
return getgenv().ACBXAutoRaid
end

function jag.bossTeams.save()
if type(writefile) ~= _d("CkwWAkwODQI") then
return false
end

local qv = {}

for po, axjh in pairs(jag.bossTeams.picked) do
qv[po] = axjh
end

local fgy = {}

for syrr, xab in pairs(jag.bossTeams.raidPicked) do
fgy[syrr] = xab
end

local zol = {}

for yd, uetv in pairs(jag.bossTeams.towerPicked) do
zol[yd] = uetv
end

return pcall(function()
if type(makefolder) == _d("CkwWAkwODQI") and type(isfile) == _d("CkwWAkwODQI") and not isfile(jag.bossTeams.path) then
pcall(makefolder, _d("LXo6OQ"))
end

local lzi = jag.bossTeams.raidState()
local sgif = lzi and lzi.worldBoss
local rv = nil

if sgif and sgif.teamChosen then
rv = sgif.team
end

writefile(jag.bossTeams.path, game:GetService(_d("JE0MEWsCEBpQGwQ")):JSONEncode({
areas = qv,
raids = fgy,
towers = zol,
swap = jag.bossTeams.swap,
globalBoss = rv,
updatedAt = os.time(),
}))
end)
end

function jag.bossTeams.load()
if type(readfile) ~= _d("CkwWAkwODQI") or type(isfile) ~= _d("CkwWAkwODQI") then
return false
end

local inpr, fjgp = pcall(function()
if not isfile(jag.bossTeams.path) then
return nil
end

return readfile(jag.bossTeams.path)
end)

if not inpr or type(fjgp) ~= _d("H00KCFYA") or #fjgp == 0 then
return false
end

local vl
local sxlf = pcall(function()
vl = game:GetService(_d("JE0MEWsCEBpQGwQ")):JSONDecode(fjgp)
end)

if not sxlf or type(vl) ~= _d("GFgaDV0") then
return false
end

if type(vl.areas) == _d("GFgaDV0") then
for xr, clw in pairs(vl.areas) do
local hv = tonumber(clw)

if hv and hv >= 1 and hv <= 4 then
jag.bossTeams.picked[xr] = hv
end
end
end

if type(vl.raids) == _d("GFgaDV0") then
for dui, bcq in pairs(vl.raids) do
local chvf = tonumber(bcq)

if chvf and chvf >= 1 and chvf <= 4 then
jag.bossTeams.raidPicked[dui] = chvf
end
end
end

if type(vl.towers) == _d("GFgaDV0") then
for hwgb, kes in pairs(vl.towers) do
local qnvb = tonumber(kes)

if qnvb and qnvb >= 1 and qnvb <= 4 then
jag.bossTeams.towerPicked[hwgb] = qnvb
end
end
end

if type(vl.swap) == _d("GFgaDV0") then
local cm = tonumber(vl.swap.team)
local rfwd = tonumber(vl.swap.floor)

if cm and cm >= 1 and cm <= 4 then
jag.bossTeams.swap.team = cm
end

if rfwd and rfwd > 0 then
jag.bossTeams.swap.floor = rfwd
end

local jo = tonumber(vl.swap.team2)
local lxsa = tonumber(vl.swap.floor2)

if jo and jo >= 1 and jo <= 4 then
jag.bossTeams.swap.team2 = jo
end

if lxsa and lxsa > 0 then
jag.bossTeams.swap.floor2 = lxsa
end

jag.bossTeams.swap.on = vl.swap.on == true
end

local ken = tonumber(vl.globalBoss)
local ofzs = jag.bossTeams.raidState()
local szbo = ofzs and ofzs.worldBoss

if ken and ken >= 1 and ken <= 4 and szbo then
szbo.team = ken

szbo.teamChosen = true
end

return true
end

local ahk = nil
local ve = nil

local function lu(mkc, icn)
return mkc .. _d("EA") .. icn
end

local function wko(male, jjb)
return jag.cooldowns[lu(male, jjb)] or 0
end

local function zo(ga, bpxh, lw)
jag.cooldowns[lu(ga, bpxh)] = lw
end

getgenv().ACBXAuto = jag

local ha = {
enabled = false,
picks = { [1] = {}, [2] = {} },
cursor = { [1] = 1, [2] = 1 },
losses = { [1] = {}, [2] = {} },
inFlight = {},

lossLimit = 3,
difficulties = { _d("AlYKDFkL") },
walkToBoss = false,
walkSpeed = 18,
pending = {},
pendingUntil = {},
cleared = {},
progress = {},
}

getgenv().ACBXAutoRaid = ha

ha.worldBoss = {
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

fishingMode = _d("G1gRFQ"),
digHold = true,

walkToBoss = false,
walkToggle = nil,

building = false,
}

jag.bossTeams.trackCollection()
jag.bossTeams.load()

function ha.worldBoss.data()
local ae = ha.worldBoss

if ae.module == nil then
local saj, ffo = pcall(function()
return require(egii.ModuleScripts.WorldBossData)
end)

ae.module = saj and ffo or false
end

return ae.module or nil
end

function ha.worldBoss.clock(ux)
ux = math.max(0, math.floor(tonumber(ux) or 0))

local ggo = math.floor(ux / 3600)
local dtw = math.floor((ux % 3600) / 60)
local uv = ux % 60

if ggo > 0 then
return string.format(_d("SV0QQR1XUAhU"), ggo, dtw)
end

if dtw > 0 then
return string.format(_d("SV0VQR1XUAhK"), dtw, uv)
end

return string.format(_d("SV0L"), uv)
end

function ha.worldBoss.status()
local kys = nil

pcall(function()
kys = egii:FindFirstChild(_d("O1YKDVwlDR9KKxVZExcf"))
end)

return kys
end

function ha.worldBoss.isOpen()
local ymsj = ha.worldBoss.status()

if not ymsj then
return nil
end

return ymsj:GetAttribute(_d("LVoMCE4C")) == true
end

function ha.worldBoss.window()
local vo = ha.worldBoss.status()

if not vo then
return nil, nil
end

return tonumber(vo:GetAttribute(_d("KVccEnkT"))), tonumber(vo:GetAttribute(_d("IlwAFXkT")))
end

function ha.worldBoss.cycle()
local aq = ha.worldBoss
local jt = aq.data()

if not jt or not jt.getCycleState then
return nil
end

local nft, ftdc = pcall(function()
return jt.getCycleState()
end)

return nft and ftdc or nil
end

function ha.worldBoss.shopList()
local xl = ha.worldBoss

if xl.items then
return xl.items
end

local qss = {}
local ku = xl.data()

if not ku or type(ku.ShopItems) ~= _d("GFgaDV0") then
xl.items = qss
return qss
end

for dj, gcko in ipairs(ku.ShopItems) do
local mn = nil

pcall(function()
if gcko.itemId then
local exi = require(egii.ModuleScripts.ItemData)
local bg = exi[gcko.itemId] or (exi.ById and exi.ById[gcko.itemId])
mn = bg and bg.name or nil
elseif gcko.cardId then
local djrz = require(egii.ModuleScripts.CardData)
local sakp = djrz[gcko.cardId] or (djrz.ById and djrz.ById[gcko.cardId])
mn = sakp and sakp.name or nil
end
end)

local kco = ha.worldBoss.state

if type(kco) == _d("GFgaDV0") and type(kco.shop) == _d("GFgaDV0") then
for sgtl, gh in ipairs(kco.shop) do
if gh.id == gcko.id and gh.name then
mn = gh.name
break
end
end
end

if not mn then

mn = tostring(gcko.accessoryId or gcko.id or _d("Uw")):gsub(_d("Mw"), _d("TA")):gsub(_d("RBwZSBA8RxseJUsR"), function(eh, pub)
return eh:upper() .. pub
end)
end

table.insert(qss, {
id = gcko.id,
name = mn,
price = tonumber(gcko.price) or 0,
kind = gcko.itemId and _d("BU0dDA") or (gcko.cardId and _d("D1gKBQ") or _d("DVobBEsUDR5A")),
})
end

xl.items = qss

return qss
end

function ha.worldBoss.bodyText()
local wce = ha.worldBoss
local ryym = wce.state

if type(ryym) ~= _d("GFgaDV0") then
return _d("PlwZBVEJBUxNEAQYBQ0fSlZPFg")
end

local ok = {}
local tlb = wce.cycle()
local duon = wce.isOpen()
local ymp, ctoa = wce.window()

if duon == nil then
duon = ryym.open == true
end

if duon then
local ne = _d("I0kdDw")

if not ymp and tlb then
ymp = tlb.endsAt
end

if ymp and ymp > os.time() then
ne = ne .. _d("TPvPQQ") .. wce.clock(ymp - os.time()) .. _d("TFUdB0w")
end

table.insert(ok, ne)
else
local juz = _d("KFYPDxgBDR4ZFg5P")

if not ctoa and tlb then
ctoa = tlb.nextAt
end

if ctoa and ctoa > os.time() then
juz = juz .. _d("ZnsZAlNHCwIZ") .. wce.clock(ctoa - os.time())
end

table.insert(ok, juz)
end

table.insert(ok, _d("IVwcAFQUWEw") .. tostring(ryym.medals or 0) .. _d("ZnIRDVQUWEw") .. tostring(ryym.kills or 0))

if ryym.inFight then
table.insert(ok, _d("KlAfCUwODAs"))
elseif duon then

table.insert(ok, ryym.killedThisSpawn and _d("PlwZBUFtKQVVFARcRxYEUAtBSxcDG1dYAFQVBw1dAQ") or _d("PlwZBUE"))
end

if wce.stopAtFull then
local xw, im = wce.meter()

if xw and im then
local function hjbw(wepf)
if wepf >= 1000000000 then
return string.format(_d("SRdJB3o"), wepf / 1000000000)
elseif wepf >= 1000000 then
return string.format(_d("SV41"), math.floor(wepf / 100000) / 10)
elseif wepf >= 1000 then
return string.format(_d("SV4z"), math.floor(wepf / 100) / 10)
end

return tostring(math.floor(wepf))
end

table.insert(ok, _d("P1wKF10VQgFcDARKXUI") .. hjbw(xw) .. _d("TBZY") .. hjbw(im)
.. (wce.meterFull() and _d("Zn8NDVRHT0xXFxUYAQsLUQwIVgBCGFEREhgUEg1OFg") or _d("")))
end
end

return table.concat(ok, _d("ZjM"))
end

function ha.worldBoss.shopText()
local axsb = ha.worldBoss
local igti = axsb.state

if type(igti) ~= _d("GFgaDV0") or type(igti.shop) ~= _d("GFgaDV0") then
return _d("PlwZBVEJBUxNEAQYFAoDSVZPFg")
end

local cf = { _d("IVwcAFQUWEw") .. tostring(igti.medals or 0) }

for vgl, zrj in ipairs(igti.shop) do
local wbu = tostring(zrj.name or zrj.id)
local xmty = tostring(zrj.price or _d("Uw"))
local jhrm

if zrj.kind == _d("BU0dDA") then
jhrm = wbu .. _d("Zg") .. xmty .. _d("TPvPQQ") .. tostring(zrj.left or 0) .. _d("Qw") .. tostring(zrj.stock or _d("Uw")) .. _d("TFUdB0w")
elseif zrj.owned then
jhrm = wbu .. _d("ZnYPD10D")
else
jhrm = wbu .. _d("Zg") .. xmty .. _d("TPvPQVcJB0xWHgc")
end

table.insert(cf, jhrm)
end

return table.concat(cf, _d("ZjM"))
end

function ha.worldBoss.shopOptions()
local yqks = ha.worldBoss

if yqks.options then
return yqks.options
end

local uo = {}

yqks.labelToId = {}

for vu, utwz in ipairs(yqks.shopList()) do
local dem = utwz.name .. _d("TPvPQQ") .. tostring(utwz.price)

table.insert(uo, dem)
yqks.labelToId[dem] = utwz.id
end

yqks.options = uo

return uo
end

local function ldz(mdq)
local nhmx = ha.progress[mdq]
local az = egii:FindFirstChild(_d("PlgRBWsTAxhMCw"))
local ksqe = az and az:GetAttribute(_d("L0AbDV0uBg"))

if type(nhmx) == _d("GFgaDV0") then
if nhmx.cycleId then
ksqe = nhmx.cycleId
end

if nhmx.completed and nhmx.completedRaidId then
return tostring(ksqe) .. _d("Vl0XD10")
end

local pe = nhmx.phaseIndex or nhmx.phase

if pe then
return tostring(ksqe) .. _d("Vg") .. tostring(pe)
end
end

return tostring(ksqe)
end

function ha.finished(pah)
local nbkx = ha.progress[pah]

return type(nbkx) == _d("GFgaDV0") and nbkx.completed == true and nbkx.completedRaidId == pah
end

function ha.bossFor(lxy, oqay)
local xrax = ha.picks[oqay or lxy]

if not xrax or #xrax == 0 then
return nil
end

local spy = egii:FindFirstChild(_d("PlgRBWsTAxhMCw"))
local rer = ha.losses[lxy] or {}
local btsj = ha.cursor[lxy] or 1

for csgr = 0, #xrax - 1 do
local is = (btsj - 1 + csgr) % #xrax + 1
local najp = xrax[is]
local mx = not spy or spy:GetAttribute(_d("PlwZBUE4") .. najp) == true

if mx and not ha.finished(najp) and (rer[najp] or 0) < ha.lossLimit then
ha.cursor[lxy] = is

return najp
end
end

return nil
end

jhh(zbuo.RaidBattleStarted.OnClientEvent, function(zthx)

local utha = type(zthx) == _d("GFgaDV0") and zthx.raidId or nil

if type(utha) == _d("H00KCFYA") then
ha.pending[utha] = false
else
for llj in pairs(ha.pending) do
ha.pending[llj] = false
end
end
end)

jhh(zbuo.BattleEnd.OnClientEvent, function(znb)
for vv in pairs(ha.pending) do
ha.pending[vv] = false
end

if type(znb) ~= _d("GFgaDV0") or not ha.enabled then
return
end

local afkf = type(znb.raidId) == _d("H00KCFYA") and znb.raidId or nil
local hq = afkf and ha.inFlight[afkf] or nil

if not afkf then
for axa, gfy in pairs(ha.inFlight) do
afkf = axa
hq = gfy
break
end
end

if not afkf then
return
end

ha.inFlight[afkf] = nil

if znb.result == _d("AFYLBA") then

local hx = ha.losses[hq or 1]

ha.cleared[afkf] = nil
hx[afkf] = (hx[afkf] or 0) + 1

for zvl in pairs(ha.pendingUntil) do
ha.pendingUntil[zvl] = os.time() + 3
end
else

ha.losses[hq or 1][afkf] = 0
end
end)

jhh(zbuo.RaidProgress.OnClientEvent, function(ms)
if type(ms) == _d("GFgaDV0") and type(ms.raidId) == _d("H00KCFYA") then
ha.progress[ms.raidId] = ms
end
end)

zbuo.RequestRaidProgress:FireServer()

local ena = {
enabled = false,
progress = nil,
currentRoom = nil,
inBattle = false,
inBattleUntil = 0,
pending = false,
pendingUntil = 0,
}

getgenv().ACBXAutoRooms = ena

jhh(zbuo.SyncInfiniteRoomProgress.OnClientEvent, function(zgh)
if type(zgh) == _d("AkwVA10V") then
ena.progress = zgh
ena.pending = false
end
end)

jhh(zbuo.BattleEnd.OnClientEvent, function(fw)
if type(fw) == _d("GFgaDV0") and fw.mode == _d("BVceCFYOFglmCg5XCg") then
ena.inBattle = false
ena.pending = true
ena.pendingUntil = os.time() + 3

task.delay(0.3, function()
zbuo.RequestInfiniteRoomProgress:FireServer()
end)
end
end)

zbuo.RequestInfiniteRoomProgress:FireServer()

local difb = {
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

getgenv().ACBXAutoTower = difb

local hf = {
enabled = false,
floor = 0,
triggered = false,
}

getgenv().ACBXAutoPause = hf

local igpm = {
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
Typhoon = _d("GEAICVcIDA"),
Blizzard = _d("DlURG0IGEAg"),
Lightning = _d("AFAfCUwJCwJe"),
Windstorm = _d("G1AWBUsTDR5U"),
Sharingan = _d("H1EZE1EJBQ1X"),
Singularity = _d("H1AWBk0LAx5QDBg"),
[_d("IVYWAEoECkx9FwxZDgw")] = _d("AVYWAEoECjNdFwxZDgw"),
Void = _d("GlYRBQ"),
[_d("IVgcBBgODExxHQBOAgw")] = _d("AVgcBGcODDNRHQBOAgw"),
Manga = _d("AVgWBlk"),
},
}

function igpm.weatherLeft()
local qx = ehbn:FindFirstChildOfClass(_d("PFUZGF0VJRlQ"))
local iw = qx and qx:FindFirstChild(_d("O1wZFVACECtMEQ"))

if not iw then
return nil
end

for hcr, np in ipairs(iw:GetDescendants()) do
if np:IsA(_d("OFwAFXQGAAlV")) then
local nn = tonumber(string.match(tostring(np.Text), _d("Mm0RDF1HMAlUGQhWDgwLA10SEk9HCBJR")))

if nn and nn > 0 then
return nn
end
end
end

return nil
end

function igpm.weatherWanted(yiu)
local sie = igpm.weatherNow

if type(sie) ~= _d("H00KCFYA") then
return nil
end

for oe, vw in pairs(yiu or igpm.weathers) do
if vw and igpm.weatherIds[oe] == sie then
return oe
end
end

return nil
end

getgenv().ACBXAutoGiveUp = igpm

local ug = {
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

if egii:FindFirstChild(_d("IVYcFFQCMQ9LERFMFA")) and egii.ModuleScripts:FindFirstChild(_d("JFgKBVsIEAltFxZdFSYNTRk")) then
local hc, apk = pcall(function()
return require(egii.ModuleScripts.HardcoreTowerData)
end)

if hc then
ug.data = apk
end
end

getgenv().ACBXHardcore = ug

task.spawn(function()
local weqh = egii:FindFirstChild(_d("PlwVDkwCEQ"))

if not weqh then
return
end

local pu = weqh:WaitForChild(_d("P0AWAnAGEAhaFxNdMw0bXAoxSggFHlwLEg"), 20)

if pu and pu:IsA(_d("PlwVDkwCJxpcFhU")) then
ug.remotes.sync = pu

jhh(pu.OnClientEvent, function(snzc)
if type(snzc) ~= _d("GFgaDV0") then
return
end

ug.progress = tonumber(snzc.progress) or ug.progress
ug.best = tonumber(snzc.best) or ug.best

if type(snzc.points) == _d("GFgaDV0") then
ug.points = snzc.points
end
end)
end

local smta = weqh:WaitForChild(_d("PlwJFF0UFiRYCgVbCBAJbRcWXRUyHlYfE10UEQ"), 20)

if smta and smta:IsA(_d("PlwVDkwCJxpcFhU")) then
ug.remotes.request = smta

pcall(function()
smta:FireServer()
end)
end

local jiv = weqh:WaitForChild(_d("K1UXA1kLIBlfHjRIAwMYXBw"), 20)

if jiv and jiv:IsA(_d("PlwVDkwCJxpcFhU")) then
jhh(jiv.OnClientEvent, function(eruk, sb, oj, egti)
ug.globalLuck = tonumber(eruk) or 0
ug.globalRoll = tonumber(sb) or 0
ug.globalLuckTime = type(oj) == _d("H00KCFYA") and oj or _d("")
ug.globalRollTime = type(egti) == _d("H00KCFYA") and egti or _d("")
end)
end
end)

function pcyb.otherTowerOn(fxj)
if pcyb.enabled then
return false
end

if fxj == _d("GFYPBEo") then
return false
end

if fxj == _d("BFgUDVcQBwlX") then
return ug.active()
end

return gnco.run.enabled
end

function ug.active()
return ug.island
end

function ug.unspentPoints()
local fef = ug.data
local qft = tonumber(ug.progress) or 0
local cn = 0

if type(fef) == _d("GFgaDV0") and type(fef.getEarnedPoints) == _d("CkwWAkwODQI") then
local vlh, tvyz = pcall(fef.getEarnedPoints, qft)
cn = vlh and tonumber(tvyz) or 0
end

return math.max(0, cn - #(ug.points or {})), cn
end

function ug.buffText()
local scq = ug.data

if type(scq) ~= _d("GFgaDV0") then
return _d("JFgKBVsIEAltFxZdFSYNTRlBURRCAVALElEJBUxfCg5VRxYEUAtBWhILAF1W")
end

local hrao = tonumber(ug.progress) or 0
local xoz = tonumber(ug.best) or 0
local awy, yvm = ug.unspentPoints()
local dos = {
_d("KlUXDkpH") .. hrao .. _d("TBlYI10UFkw") .. xoz,
_d("PFYRD0wUWEw") .. awy .. _d("TEwWEkgCDBgZFwcY") .. yvm .. _d("TFwZE1YCBg"),
}

local nc = {}

for rjes, pmf in ipairs(ug.points or {}) do
local xql = scq.StatById and scq.StatById[pmf]
local ejm = xql and (xql.name or pmf) or tostring(pmf)
local gb = scq.PointValue and scq.PointValue[pmf]

table.insert(nc, gb and (ejm .. _d("TBI") .. tostring(gb)) or ejm)
end

if #nc == 0 then
table.insert(dos, _d("LkweB0tdQgJWFgQYBQ0ZXhAVGB4HGA"))
else
table.insert(dos, _d("LkweB0tdQg") .. table.concat(nc, _d("QBk")))
end

local tr = {}

if (tonumber(ug.globalLuck) or 0) > 0 then
table.insert(tr, _d("IEwbChhM") .. tostring(ug.globalLuck) .. _d("SQ") .. (ug.globalLuckTime ~= _d("") and (_d("TBE") .. ug.globalLuckTime .. _d("RQ")) or _d("")))
end

if (tonumber(ug.globalRoll) or 0) > 0 then
table.insert(tr, _d("PlYUDRgUEglcHEET") .. tostring(ug.globalRoll) .. _d("SQ") .. (ug.globalRollTime ~= _d("") and (_d("TBE") .. ug.globalRollTime .. _d("RQ")) or _d("")))
end

if #tr == 0 then
table.insert(dos, _d("K1UXA1kLQg5MHgdLXUICVhYEGAYBGFAOBA"))
else
table.insert(dos, _d("K1UXA1kLQg5MHgdLXUI") .. table.concat(tr, _d("QBk")))
end

return table.concat(dos, _d("Zg"))
end

function ug.nextMilestone()
local hz = ug.data

if type(hz) ~= _d("GFgaDV0") or type(hz.Milestones) ~= _d("GFgaDV0") or #hz.Milestones == 0 then
return nil
end

local wif = tonumber(ehbn:GetAttribute(_d("JFgKBVsIEAl/FA5XFQ"))) or 0

return math.min(wif + 1, hz.Milestones[#hz.Milestones])
end

function ug.start(kkp)
local mew = ug.nextMilestone()

if not mew then
return false
end

local glks = brbo:FindFirstChild(kkp == 2 and _d("PlwLBEwlAxhNFAR+Cw0DS0o") or _d("PlwLBEwlAxhNFAR+Cw0DSw"))

if glks and glks:IsA(_d("LlAWBVkFDgl8DgRWEw")) then
pcall(function()
glks:Fire(mew, _d("BVceCFYOFglmCg5XCg"))
end)
end

local mls = brbo:FindFirstChild(kkp == 2 and _d("P00ZE0wuDApQFghMAjADVhUjWRMWAFxK") or _d("P00ZE0wuDApQFghMAjADVhUjWRMWAFw"))

if mls and mls:IsA(_d("LlAWBVkFDgl8DgRWEw")) then
pcall(function()
mls:Fire(mew, _d("BFgKBVsIEAk"), mew)
end)
end

if jag.bossTeams.applyTower then
jag.bossTeams.applyTower(_d("BFgKBVsIEAk"), kkp)
end

ug.pending = true
ug.pendingUntil = os.time() + 10

return pcall(function()
zbuo.StartBattle:FireServer(_d("BVceCFYOFglmCg5XCg"), {
tower = _d("BFgKBVsIEAk"),
milestone = mew,
slot = kkp,
})
end)
end

function ug.floorNow()
local lnq = pcyb.hardcoreSlot()

if not lnq or not pcyb.busy(lnq) then
return nil
end

local pnv = brbo:FindFirstChild(lnq == 2 and _d("LlgMFVQCJRlQSg") or _d("LlgMFVQCJRlQ"))
local rxb = pnv and pnv:FindFirstChild(_d("PkwWJ1QIDR51GQNdCw"))
local eu = rxb and rxb.Text or _d("")

return tonumber(eu:match(_d("Mn8UDlcVRx8SUERcTEs")))
end

local qwf = {
enabled = true,
nextAt = os.clock() + 300,
jumps = 0,
}

getgenv().ACBXAntiKick = qwf

local rg = getgenv().ACBXNoUpdate == true

local pc = {
enabled = not rg,
buildId = "v261103-0053",
interval = 180,
retry = 45,
forceAfter = 900,
applying = false,
checking = false,
pendingVersion = nil,
pendingSince = nil,
cameFrom = nil,
}

getgenv().ACBXUpdater = pc

local vs = {
enabled = false,
tpToBay = false,

stick = {
enabled = false,
at = 0,
hits = 0,
last = _d("A18e"),

names = {
[_d("H00RAlM")] = true,
[_d("AEwbChgUFgVaEw")] = true,
[_d("AEwbCksTCw9S")] = true,
[_d("AEwbCmcUFgVaEw")] = true,
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
rod = _d("QQ"),
castTime = 0,
tutorialStep = 0,
phase = _d("BV0UBA"),
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
deepPhase = _d("BV0UBA"),
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

local ol = Vector3.new(-546.8, 13.9, -40250.1)

if type(getgenv().ACBXFishingCatches) == _d("GFgaDV0") then
vs.catches = getgenv().ACBXFishingCatches
end

vs.totalCatches = 0

for jsn, cr in pairs(vs.catches) do
vs.totalCatches = vs.totalCatches + cr
end

getgenv().ACBXFishingCatches = vs.catches
getgenv().ACBXFishing = vs

vs.catchName = function(eb)
local rpvk = xpgk.ById[eb]

if rpvk and rpvk.name then
return rpvk.name
end

local hxgm = qr.ById[eb]

if hxgm and hxgm.name then
return hxgm.name
end

return eb
end

local jat

jat = {
folder = _d("LXo6OQ"),
path = _d("LXo6ORcEAxhaEARLSQgfVhY"),
at = 0,
save = function()
if type(writefile) ~= _d("CkwWAkwODQI") then
return false
end

local bguh = pcall(function()
if type(makefolder) == _d("CkwWAkwODQI") and type(isfile) == _d("CkwWAkwODQI") and not isfile(jat.path) then
pcall(makefolder, jat.folder)
end

writefile(jat.path, game:GetService(_d("JE0MEWsCEBpQGwQ")):JSONEncode({
catches = vs.catches,
totalCatches = vs.totalCatches,
lastCatch = vs.lastCatch,
updatedAt = os.time(),
}))
end)

return bguh
end,
load = function()
if type(readfile) ~= _d("CkwWAkwODQI") or type(isfile) ~= _d("CkwWAkwODQI") then
return false
end

local nvs, bum = pcall(function()
if not isfile(jat.path) then
return nil
end

return readfile(jat.path)
end)

if not nvs or type(bum) ~= _d("H00KCFYA") or #bum == 0 then
return false
end

local nfuh
local fy = pcall(function()
nfuh = game:GetService(_d("JE0MEWsCEBpQGwQ")):JSONDecode(bum)
end)

if not fy or type(nfuh) ~= _d("GFgaDV0") or type(nfuh.catches) ~= _d("GFgaDV0") then
return false
end

for zea, cxca in pairs(nfuh.catches) do
local xg = tonumber(cxca) or 0

if xg > 0 then
vs.catches[tostring(zea)] = math.max(vs.catches[tostring(zea)] or 0, xg)
end
end

vs.totalCatches = 0

for ib, il in pairs(vs.catches) do
vs.totalCatches = vs.totalCatches + il
end

return true
end,
}

jat.load()
getgenv().ACBXFishingStore = jat

local dne = {}

local ie = 0

local function igyg()
local jwg = {}

for aigf, wgn in ipairs(workspace:GetDescendants()) do
if wgn:IsA(_d("LlgLBGgGEBg")) and wgn.Name == _d("O1gMBEo") then
table.insert(jwg, wgn)
end
end

dne = jwg
ie = os.clock()
end

local function dzjp(ato)
if type(ato) ~= _d("GFgaDV0") then
return false
end

vs.loaded = true
vs.dirty = false
vs.fishing = ato.fishing == true
vs.autoOn = ato.autoOn == true
vs.autoUnlocked = ato.autoUnlocked == true
vs.casts = tonumber(ato.casts) or vs.casts
vs.totalCasts = tonumber(ato.totalCasts) or vs.totalCasts
vs.luck = tonumber(ato.luck) or vs.luck
vs.rod = tostring(ato.equippedRod or vs.rod)
vs.castTime = tonumber(ato.castTime) or vs.castTime
vs.tutorialStep = tonumber(ato.tutorialStep) or vs.tutorialStep

if type(ato.rods) == _d("GFgaDV0") then
vs.rodsOwned = ato.rods
end

if type(ato.baits) == _d("GFgaDV0") then
vs.baitsOwned = ato.baits
end

if type(ato.boats) == _d("GFgaDV0") then
vs.boatsOwned = ato.boats
end

if type(ato.mats) == _d("GFgaDV0") then
vs.mats = ato.mats
end

if ato.bootOwned ~= nil then
vs.boot.owned = ato.bootOwned == true
end

if ato.bootEquipped ~= nil then
vs.boot.equipped = ato.bootEquipped == true
end

if ato.equippedBait ~= nil then
vs.equippedBait = tostring(ato.equippedBait)
end

if ato.activeBoat ~= nil then
vs.activeBoat = tostring(ato.activeBoat)
end

vs.boatTier = tonumber(ato.boatTier) or vs.boatTier
vs.islandLocked = ato.islandLocked == true
vs.rebirths = tonumber(ato.rebirths) or vs.rebirths

if type(ato.rebirthCards) == _d("GFgaDV0") then
vs.rebirthCards = ato.rebirthCards
end

vs.lastSync = os.time()

return true
end

local function iguq()
local dwme, bnj = pcall(function()
return zbuo.FishingGetState:InvokeServer()
end)

if not dwme or type(bnj) ~= _d("GFgaDV0") then
vs.loaded = false
return false
end

return dzjp(bnj)
end

local zjvu = false

local function lizc()
if zjvu then
return false
end

local spe = ehbn.Character

if not spe then
return false
end

if spe:FindFirstChild(_d("KlALCVEJBT5WHA")) then
return true
end

local jw = ehbn:FindFirstChild(_d("LlgbCkgGAQc"))
local hay = jw and jw:FindFirstChild(_d("KlALCVEJBT5WHA"))
local jqe = spe:FindFirstChildOfClass(_d("JEwVAFYICwg"))

if not (hay and jqe) then
return false
end

return pcall(function()
jqe:EquipTool(hay)
end)
end

local function uou()
local nite = ehbn.Character
local wvc = nite and nite:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not wvc then
return nil
end

local pley = RaycastParams.new()
pley.FilterType = Enum.RaycastFilterType.Exclude
pley.FilterDescendantsInstances = { nite }

local ba = 24
local seo = {}
local idg = 0

for fdhb = 0, ba - 1 do
local sblm = math.rad(fdhb * (360 / ba))
local plnv = Vector3.new(math.sin(sblm), 0, math.cos(sblm))
local tbl = wvc.Position + plnv * 20 + Vector3.new(0, 40, 0)
local yocf = workspace:Raycast(tbl, Vector3.new(0, -120, 0), pley)
local rlqg = yocf and (wvc.Position.Y - yocf.Position.Y) or 120

seo[fdhb] = rlqg > 12

if seo[fdhb] then
idg = idg + 1
end
end

if idg == 0 then
return nil
end

local gg, ibb = nil, 0

for ub = 0, ba - 1 do
if seo[ub] and not seo[(ub - 1) % ba] then
local as = 0

while as < ba and seo[(ub + as) % ba] do
as = as + 1
end

if as > ibb then
gg = ub
ibb = as
end
end
end

if not gg then
return nil
end

local gna = gg + (ibb - 1) / 2
local mey = math.rad(gna * (360 / ba))

return Vector3.new(math.sin(mey), 0, math.cos(mey))
end

local function sehn()
local rjsx = ehbn.Character
local wah = rjsx and rjsx:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not wah then
return nil
end

if #dne == 0 or os.clock() - ie > 20 then
igyg()
end

local ojm, wxlx = nil, math.huge

for vi, xceb in ipairs(dne) do
if xceb.Parent then
local hpu = (xceb.Position - wah.Position).Magnitude

if hpu < wxlx then
wxlx = hpu
ojm = xceb
end
end
end

if not ojm or wxlx > 25 then
local jwms = uou()

if jwms then
return jwms
end
end

if not ojm then
return nil
end

local tmb = Vector3.new(ojm.Position.X - wah.Position.X, 0, ojm.Position.Z - wah.Position.Z)

if tmb.Magnitude < 0.05 then
return Vector3.new(0, 0, -1)
end

return tmb.Unit
end

local function qgyr()
local dkw = ehbn.Character
local dt = dkw and dkw:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not dt then
return nil
end

local gz = dt.CFrame.LookVector
local szbi = Vector3.new(gz.X, 0, gz.Z)

if szbi.Magnitude < 0.05 then
return nil
end

return szbi.Unit
end

local function vjg()
local tu = ehbn.Character
local cw = tu and tu:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not cw then
return false
end

local crqo = ol
local yi = RaycastParams.new()
yi.FilterType = Enum.RaycastFilterType.Exclude
yi.FilterDescendantsInstances = { tu }

local wygi = workspace:Raycast(ol + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), yi)

if wygi and wygi.Instance.Name ~= _d("O1gMBEo") then
crqo = Vector3.new(ol.X, wygi.Position.Y + 3, ol.Z)
end

cw.CFrame = CFrame.new(crqo)
task.wait(0.5)
igyg()

return true
end

local function arco()
local ytc = ehbn.Character
local kg = ytc and ytc:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not kg then
return false
end

local qtre = Vector3.new(ol.X - kg.Position.X, 0, ol.Z - kg.Position.Z)
local zs = qtre.Magnitude

if zs < 2 then
return false
end

local nuk = qtre.Unit

if zs > 12 then
local gc = math.min(14, zs - 6)
local ph = kg.Position + nuk * gc
local mkvy = RaycastParams.new()
mkvy.FilterType = Enum.RaycastFilterType.Exclude
mkvy.FilterDescendantsInstances = { ytc }

local nhuz = workspace:Raycast(ph + Vector3.new(0, 25, 0), Vector3.new(0, -80, 0), mkvy)

if nhuz and nhuz.Instance.Name ~= _d("O1gMBEo") then
local ntk = nhuz.Position.Y + 3.2

if math.abs(ntk - kg.Position.Y) <= 10 then
local cg = Vector3.new(nhuz.Position.X, ntk, nhuz.Position.Z)
kg.CFrame = CFrame.lookAt(cg, cg + nuk)

return true
end
end
end

kg.CFrame = CFrame.lookAt(kg.Position, kg.Position + nuk)

return true
end

local hgk = {}

hgk.surfaceWait = 8

hgk.walking = false
hgk.walkStartedAt = 0

hgk.islandHold = Vector3.new(-7384, 16.3, -40539)

hgk.custom = nil
hgk.customIsland = nil

hgk.islandAnchors = {
{ id = _d("DVsZD1wIDAldJwhLCwMCXQ"), x = -3800 },
{ id = _d("GE4RD2cFBw1aEARL"), x = -6180 },
{ id = _d("G1AWBVUODgBmERJUAg"), x = -7480 },
}

hgk.arrivals = {
abandoned_island = Vector3.new(-3825, 24, -40260),
twin_beaches = Vector3.new(-6180, 40, -40350),
windmill_isle = Vector3.new(-7480, 30, -40350),
lobby = Vector3.new(-499, 17, -40234),
}

function hgk.islandOf(qxs)
if not qxs then
return _d("AFYaA0E")
end

if qxs.X > -4500 then
return _d("AFYaA0E")
end

local grnu, dm = _d("DVsZD1wIDAldJwhLCwMCXQ"), math.huge

for dmp, wv in ipairs(hgk.islandAnchors) do
local yl = math.abs(qxs.X - wv.x)

if yl < dm then
grnu = wv.id
dm = yl
end
end

return grnu
end

hgk.savedVersion = 2

do
local rctq = getgenv().ACBXDeepSpot

if type(rctq) == _d("GFgaDV0") and rctq.v == hgk.savedVersion
and tonumber(rctq.X) and tonumber(rctq.Y) and tonumber(rctq.Z) then
hgk.custom = Vector3.new(tonumber(rctq.X), tonumber(rctq.Y), tonumber(rctq.Z))
hgk.customIsland = rctq.island
end
end

function hgk.spot()
return hgk.custom or hgk.islandHold
end

function hgk.dropStale()
if not hgk.custom then
return false
end

if hgk.zoneAt(hgk.custom) then
return false
end

hgk.custom = nil
hgk.customIsland = nil
getgenv().ACBXDeepSpot = nil

return true
end

function hgk.capture()
local iodx = ehbn.Character
local vcmn = iodx and iodx:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not vcmn then
return false, _d("IlZYAlAGEA1aDARKRxYDGQoEWQNCDRkLEVcTQgpLFwwW")
end

local ledj = vcmn.Position
local ddlf = hgk.floorAt(Vector3.new(ledj.X, ledj.Y + 10, ledj.Z))

if not ddlf then
return false, _d("P00ZD1xHDQIZCw5UDgZMXgoOTQkGTF8RE0sTQkEZDAlRFEIfSRcVGA8DHxkWDhgBDgNWCkFMCEIPWAsVGAEQA1RW")
end

local yh = hgk.zoneAt(ledj)

if not yh then
return false, _d("OFEREhgUEgNNWAhLRw0ZTQsIXAJCCU8dE0FHBAVKEAhWAEIeUBYGGEpCH00ZD1xHDRpcCkFMDwdMThkVXRVCClAKEkxJ")
end

hgk.custom = ledj
hgk.customIsland = hgk.islandOf(ledj)

getgenv().ACBXDeepSpot = {
X = ledj.X,
Y = ledj.Y,
Z = ledj.Z,
island = hgk.customIsland,
v = hgk.savedVersion,
}

return true, _d("P1gOBFxHFgRQC0FLFw0YGRkSGBMKCRkcBF0XTxtYDARKRwoDVRxBEA") .. tostring(yh.name) .. _d("RRc")
end

function hgk.zoneTable()
local wdf = {}

if pp and type(pp.Zones) == _d("GFgaDV0") then
for kvgq, no in ipairs(pp.Zones) do
wdf[#wdf + 1] = {
id = tostring(no.id),
name = tostring(no.name or no.id),
half = tonumber(no.half) or 0,
luck = tonumber(no.luck) or 0,
index = tonumber(no.index) or 0,
boatTier = tonumber(no.boatTier) or 0,
}
end
end

table.sort(wdf, function(ll, dal)
return ll.index < dal.index
end)

return wdf
end

function hgk.zoneAt(frwg)
local tse = pp and pp.ZoneCenter
local hfjx = hgk.zoneTable()

if not (tse and frwg and #hfjx > 0) then
return nil
end

local ptcc = math.max(math.abs(frwg.X - tse.X), math.abs(frwg.Z - tse.Z))

for et, xfo in ipairs(hfjx) do
if ptcc < xfo.half then
return xfo
end
end

return nil
end

function hgk.current()
local hutm = ehbn.Character
local fv = hutm and hutm:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

return fv and hgk.zoneAt(fv.Position) or nil
end

function hgk.sync()
local wh = hgk.current()
vs.zoneId = wh and wh.id or nil
end

function hgk.floorAt(iyiu)
local lc = ehbn.Character
local jws = RaycastParams.new()
jws.FilterType = Enum.RaycastFilterType.Exclude
jws.FilterDescendantsInstances = { lc }

local bmuj = workspace:Raycast(Vector3.new(iyiu.X, iyiu.Y + 20, iyiu.Z), Vector3.new(0, -80, 0), jws)

if bmuj and bmuj.Instance.Name ~= _d("O1gMBEo") then
return bmuj
end

return nil
end

function hgk.ensureSpotMap()
local sbat = hgk.spot()
local db = Vector3.new(sbat.X, sbat.Y + 20, sbat.Z)

if hgk.floorAt(db) then
return true
end

local zdwd = workspace:FindFirstChild(_d("IVgIEg"))

if zdwd and zdwd:FindFirstChild(_d("L1YZEkwGDiBWGgNB")) then
if os.clock() - (hgk.hopAt or 0) > 1 then
hgk.hopAt = os.clock()
hgk.hop(sbat)
vs.lastMessage = _d("IVYOCFYAQhhWWBVQAkIIXB0RFRADGFwKQUsXDRg")
end

return false
end

if os.clock() - (hgk.islandAskedAt or 0) > 1.2 then
hgk.islandAskedAt = os.clock()

local qfx = hgk.customIsland or hgk.islandOf(sbat)

if qfx == _d("AFYaA0E") then
pcall(function()
zbuo.TeleportToWorld:FireServer(_d("AFYaA0E"))
end)
else
pcall(function()
zbuo.FishingIslandTeleport:FireServer(_d("G1gBEVcODBg"), qfx)
end)
end

vs.lastMessage = _d("OFgTCFYAQhhRHUFfBg8JHgtBTAIOCUkXE0xHFgMZDAldRwYJXAhMTwYWCUtYDFkX")
end

return false
end

function hgk.hop(chym)
local vj = ehbn.Character
local ds = vj and vj:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))
local shv = vj and vj:FindFirstChildOfClass(_d("JEwVAFYICwg"))

if not (ds and shv) then
return false
end

if shv.SeatPart then
pcall(function()
shv.Sit = false
end)
end

ds.AssemblyLinearVelocity = Vector3.zero
ds.CFrame = CFrame.new(Vector3.new(chym.X, chym.Y + 8, chym.Z))

return true
end

function hgk.faceWater()
local emht = ehbn.Character
local ww = emht and emht:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not ww then
return false
end

local ox = sehn()

if not ox then
local chg = pp and pp.ZoneCenter

if chg then
local pt = Vector3.new(chg.X - ww.Position.X, 0, chg.Z - ww.Position.Z)

ox = pt.Magnitude > 1 and pt.Unit or nil
end
end

if not ox then
return false
end

ww.CFrame = CFrame.lookAt(ww.Position, ww.Position + ox)

return true
end

function hgk.aimWater(wb)
local ltf = ehbn.Character
local hp = ltf and ltf:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not hp then
return false
end

if wb then
igyg()
end

local vhe = hp.CFrame.LookVector
local gsui = Vector3.new(vhe.X, 0, vhe.Z)
local ueq = sehn()

if not ueq then
return false
end

if gsui.Magnitude > 0.05 and gsui.Unit:Dot(ueq) > 0.985 then
return true
end

hp.CFrame = CFrame.lookAt(hp.Position, hp.Position + ueq)

return true
end

function hgk.hold(en)
local ewfn = ehbn.Character
local ixk = ewfn and ewfn:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))
local nnti = ewfn and ewfn:FindFirstChildOfClass(_d("JEwVAFYICwg"))

if not (ixk and nnti) then
return false
end

if nnti.SeatPart then
pcall(function()
nnti.Sit = false
end)
end

local oo = hgk.floorAt(en)

if not oo then
return false
end

ixk.AssemblyLinearVelocity = Vector3.zero
ixk.CFrame = CFrame.new(Vector3.new(en.X, oo.Position.Y + 3.2, en.Z))

pcall(hgk.aimWater, true)

vs.phase = _d("BV0UBA")
vs.nextCastAt = 0

return true
end

function hgk.dive()
local aj = hgk.spot()

if not hgk.ensureSpotMap() then
return false
end

if not hgk.hold(aj) then
return false
end

hgk.islandAskedAt = 0

local eq = hgk.zoneAt(aj)

vs.lastMessage = eq
and (_d("JFYUBVEJBUxNEAQYAwcJSVUWWRMHHhkLEVcTQkQ") .. tostring(eq.name) .. _d("RQ"))
or _d("JFYUBVEJBUxNEAQYAwcJSVUWWRMHHhkLEVcT")

task.wait(0.25)
hgk.sync()
vs.deepDiveAt = os.clock() + 2

return true
end

function hgk.walk()
local ry = ehbn.Character
local ijt = ry and ry:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if hgk.walking and os.clock() - (hgk.walkStartedAt or 0) < 60 then
return false
end

if not ijt then
return false
end

local qxo = hgk.spot()

if (ijt.Position - Vector3.new(qxo.X, ijt.Position.Y, qxo.Z)).Magnitude <= 8 then
vs.phase = _d("BV0UBA")
vs.nextCastAt = 0

return true
end

hgk.walking = true
hgk.walkStartedAt = os.clock()
vs.deepPhase = _d("G1gUCg")
vs.deepStageAt = os.clock()
vs.lastMessage = _d("O1gUClEJBUxNF0FMDwdMXR0ESAIRGBkPAEwCEExKCA5M")

task.spawn(function()
local khh = ry and ry:FindFirstChildOfClass(_d("JEwVAFYICwg"))

local niu, zhzw = pcall(function()

local lup = workspace:FindFirstChild(_d("IVgIEg"))
local isjn = hgk.customIsland or hgk.islandOf(qxo)
local wmk = (ijt.Position - Vector3.new(qxo.X, ijt.Position.Y, qxo.Z)).Magnitude

if wmk > 400 then
if not (lup and lup:FindFirstChild(_d("L1YZEkwGDiBWGgNB"))) then
pcall(function()
zbuo.TeleportToWorld:FireServer(_d("AFYaA0E"))
end)

local gtr = os.clock() + 20

while vs.deepWalk and os.clock() < gtr do
local sml = workspace:FindFirstChild(_d("IVgIEg"))

if sml and sml:FindFirstChild(_d("L1YZEkwGDiBWGgNB")) then
break
end

task.wait(0.5)
end
end

if vs.deepWalk then
local yky = hgk.arrivals and hgk.arrivals[isjn]

if yky then
hgk.hop(yky)
else
local tde = Vector3.new(qxo.X - ijt.Position.X, 0, qxo.Z - ijt.Position.Z)
local opv = tde.Magnitude > 1 and tde.Unit or Vector3.new(1, 0, 0)

hgk.hop(Vector3.new(qxo.X - opv.X * 120, qxo.Y, qxo.Z - opv.Z * 120))
end

task.wait(1.5)
end
end

if vs.deepWalk and khh then

local si = (ijt.Position - Vector3.new(qxo.X, ijt.Position.Y, qxo.Z)).Magnitude
local hyio = os.clock() + math.clamp(si / 8, 30, 600)
local cya = 0
local vq = ijt.Position
local pfoo = os.clock()

while vs.deepWalk and os.clock() < hyio do
local qwzi = Vector3.new(qxo.X - ijt.Position.X, 0, qxo.Z - ijt.Position.Z)

if qwzi.Magnitude <= 3 then
break
end

if os.clock() - cya >= 0.25 then
khh:MoveTo(Vector3.new(qxo.X, ijt.Position.Y, qxo.Z))
cya = os.clock()
end

if os.clock() - pfoo >= 1.2 then
if (ijt.Position - vq).Magnitude < 2 then
khh.Jump = true
end

vq = ijt.Position
pfoo = os.clock()
end

task.wait(0.1)
end

khh:MoveTo(ijt.Position)
end
end)

hgk.walking = false

if not niu then
vs.deepPhase = _d("BV0UBA")
vs.deepStageAt = os.clock()
vs.lastMessage = _d("O1gUChgTDUx9HQRIAhEYGS8ATAIQTF8ZCFQCBlYZ") .. tostring(zhzw)

return
end

if not vs.deepWalk then
return
end

local nf = Vector3.new(ijt.Position.X - qxo.X, 0, ijt.Position.Z - qxo.Z)

if nf.Magnitude <= 6 then

pcall(hgk.aimWater, true)
vs.phase = _d("BV0UBA")
vs.nextCastAt = 0
vs.deepPhase = _d("BFYUBQ")
vs.deepStageAt = os.clock()
hgk.sync()
vs.lastMessage = _d("O1gUCl0DQhhWWBVQAkIfWA4EXEcGCVwITE8GFglLWBJICBY")
else

vs.deepPhase = _d("BV0UBA")
vs.deepStageAt = os.clock()
vs.lastMessage = _d("L1YNDVxHDANNWBZZCwlMTRdBTA8HTF0dBEgCERgZDwBMAhBMSggOTEdPTE0KGFEJBUxYHwBRCQ")
end
end)

return false
end

function hgk.settle()
for bx = 1, 30 do
if not vs.deepZone or vs.deepWalk then
return false
end

if hgk.dive() then
return true
end

task.wait(1)
end

return false
end

function hgk.surface()
local txi = ehbn.Character
local zhu = txi and txi:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not zhu then
return false
end

local lgna = RaycastParams.new()
lgna.FilterType = Enum.RaycastFilterType.Exclude
lgna.FilterDescendantsInstances = { txi }

local jmlc = workspace:Raycast(ol + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), lgna)
local trin = ol

if jmlc and jmlc.Instance.Name ~= _d("O1gMBEo") then
trin = Vector3.new(ol.X, jmlc.Position.Y + 3, ol.Z)
end

zhu.CFrame = CFrame.new(trin)
vs.phase = _d("BV0UBA")
vs.nextCastAt = 0

return true
end

function vs.gotoIsland()
local ru = ehbn.Character
local unst = ru and ru:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))
local dehu = workspace:FindFirstChild(_d("JUoUAFYDJAVKEARKCgMCdygi"), true)

if not (unst and dehu) then
return false
end

local cbew = dehu:GetPivot()
local ati = RaycastParams.new()
ati.FilterType = Enum.RaycastFilterType.Exclude
ati.FilterDescendantsInstances = { ru, dehu }

local ts = nil
local tqim = -math.huge

for qa, xllc in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local mm = workspace:Raycast(cbew.Position + xllc + Vector3.new(0, 30, 0), Vector3.new(0, -120, 0), ati)

if mm and mm.Position.Y > tqim then
ts = mm
tqim = mm.Position.Y
end
end

if ts then
unst.CFrame = CFrame.new(Vector3.new(ts.Position.X, tqim + 3.5, ts.Position.Z))
else
unst.CFrame = CFrame.new(cbew.Position + Vector3.new(0, 4, 0))
end

vs.phase = _d("BV0UBA")
vs.nextCastAt = 0

return true
end

function hgk.cycle()
local mop = os.clock()
local smk = vs.deepPhase or _d("BV0UBA")
local hs = tonumber(vs.deepStageAt) or 0

if mop < math.max(vs.shopTripUntil or 0, vs.tpHoldUntil or 0) then
return
end

if smk == _d("BV0UBA") then
vs.deepPhase = _d("BFYUBQ")
vs.deepStageAt = mop

if vs.deepWalk then
hgk.walk()
else
hgk.dive()
end

return
end

if smk == _d("G1gUCg") then
return
end

if smk == _d("BFYUBQ") then
local bwlq = hgk.current()

local kzrc = hgk.zoneAt(hgk.spot())

if bwlq and not ehbn:GetAttribute(_d("P04RDFUODAs")) and mop - (vs.deepAimAt or 0) > 2 then
vs.deepAimAt = mop
pcall(hgk.aimWater)
end

if ehbn:GetAttribute(_d("P04RDFUODAs")) then
if vs.deepWalk then

vs.deepPhase = _d("BV0UBA")
vs.deepStageAt = mop
else
vs.deepPhase = _d("CFAI")
vs.deepStageAt = mop
vs.lastMessage = _d("P04RDFUODAsZGRUYEwoJGRwEXRdCH0kXFRhKQh9MCgdZBAcIGR4OSkcDBUs")
end
elseif not bwlq or (kzrc and bwlq.index < kzrc.index) then

vs.deepPhase = _d("BV0UBA")
vs.deepStageAt = mop
end

return
end

if smk == _d("CFAI") then
hgk.surface()
vs.deepPhase = _d("H0wKB1kEBw")
vs.deepStageAt = mop

return
end

if smk == _d("H0wKB1kEBw") and mop - hs >= hgk.surfaceWait then
vs.deepPhase = _d("BV0UBA")
end
end

local function kk()
local hhkm = ehbn.Character
local dlj = hhkm and hhkm:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not dlj then
return false
end

return (dlj.Position - ol).Magnitude <= 12
end

local function ek()
if not lizc() then
return false
end

local xj = pcall(function()
zbuo.FishingSetAuto:FireServer(true)
end)

vs.usingGameAuto = xj
return xj
end

local function iogb()
vs.usingGameAuto = false

pcall(function()
zbuo.FishingSetAuto:FireServer(false)
end)

pcall(function()
zbuo.FishingStop:FireServer()
end)
end

function vs.recover()
vs.phase = _d("BV0UBA")
vs.nextCastAt = 0
vs.deepPhase = _d("BV0UBA")
vs.deepStageAt = 0
vs.deepDiveAt = 0
vs.waterRefusals = 0
vs.usingGameAuto = false
vs.castMark = vs.totalCasts
vs.castMarkAt = os.clock()

pcall(iogb)
pcall(lizc)

if vs.deepZone and not hgk.current() then

pcall(function()
zbuo.TeleportToWorld:FireServer(_d("AFYaA0E"))
end)
elseif vs.tpToBay and not kk() then
pcall(vjg)
end

vs.lastMessage = _d("KlALCVEJBUxKDABUCwcIGVVBSgIRCU1YFVACQhtYDARKRwMCXVgVVwgJTE0QBBgAAwFcXxIYCw0OWwFBSggV")
end

local function fvg()
if not lizc() then
vs.lastMessage = _d("IlZYB1EUCgVXH0FKCAZMUBZBTA8HTFsZAlMXAw9S")
return false
end

local sg = qgyr()
local ule = sehn()
local robw = sg or ule

if not robw then
vs.lastMessage = _d("IlZYFlkTBx4ZHg5NCQZMVx0ASgUb")
return false
end

if sg and ule and sg:Dot(ule) < 0.25 then
robw = ule
end

vs.phase = _d("D1gLFVEJBQ")
vs.lastMessage = nil
vs.watchdogAt = os.clock() + 25

local mf, pjw = pcall(function()
zbuo.FishingThrow:FireServer(1, robw)
end)

if not mf then
vs.phase = _d("BV0UBA")
vs.lastMessage = tostring(pjw)
vs.nextCastAt = os.clock() + 3
return false
end

return true
end

local zi = jhh(zbuo.FishingUpdate.OnClientEvent, function(okd, gvi)
vs.dirty = true

if okd == _d("P00ZFV0") then
if type(gvi) == _d("GFgaDV0") then
vs.autoOn = gvi.autoOn == true
end

return
end

if okd == _d("L1gLFQ") then
vs.phase = _d("G1gRFVEJBS5QDAQ")
vs.waterRefusals = 0
return
end

if okd == _d("LlAMBA") then
local ow = type(gvi) == _d("GFgaDV0") and tonumber(gvi.warning) or 1

vs.phase = _d("HlwdDVEJBQ")
vs.watchdogAt = os.clock() + 15

task.delay(math.max(0.3, ow + 0.8), function()
if vs.phase ~= _d("HlwdDVEJBQ") then
return
end

pcall(function()
zbuo.FishingReel:FireServer(true, 120)
end)

vs.phase = _d("HlwLDlQRCwJe")
end)

return
end

if okd == _d("L1gMAlA") then

local tqsj = type(gvi) == _d("GFgaDV0") and tonumber(gvi.totalCasts) or nil
local bgtu = tonumber(getgenv().ACBXFishingCatchMark) or 0

if tqsj and tqsj <= bgtu and bgtu - tqsj < 25 then
return
end

if tqsj then
getgenv().ACBXFishingCatchMark = tqsj
end

local agf = type(gvi) == _d("GFgaDV0") and tostring(gvi.itemId) or _d("GVcTD1cQDA")
local hes = vs.catchName(agf)

vs.catches[agf] = (vs.catches[agf] or 0) + 1
vs.totalCatches = (vs.totalCatches or 0) + 1

local jsq = type(gvi) == _d("GFgaDV0") and gvi.chest or nil

if type(jsq) == _d("GFgaDV0") and jsq.itemId then
local nyvf = tostring(jsq.itemId)

vs.catches[nyvf] = (vs.catches[nyvf] or 0) + 1
end

if os.clock() - (jat.at or 0) >= 5 then
jat.at = os.clock()
jat.save()
end
vs.lastCatch = hes
vs.lastMessage = nil
vs.phase = _d("BV0UBA")
vs.nextCastAt = os.clock() + 2.5

if type(gvi) == _d("GFgaDV0") then
vs.casts = tonumber(gvi.casts) or vs.casts
vs.totalCasts = tonumber(gvi.totalCasts) or vs.totalCasts
vs.autoUnlocked = gvi.autoUnlocked == true or vs.autoUnlocked
end

return
end

if okd == _d("LUwMDncBBA") then

vs.usingGameAuto = false
vs.phase = _d("BV0UBA")
vs.nextCastAt = os.clock() + 1
return
end

if okd == _d("KUobAEgCBg") then
vs.phase = _d("BV0UBA")
vs.lastMessage = _d("OFEdQV4OEQQZHw5MRwMbWAE")
vs.nextCastAt = os.clock() + 2.5
return
end

if okd == _d("PlwSBFsTBwg") then
vs.phase = _d("BV0UBA")

local jg = type(gvi) == _d("GFgaDV0") and tostring(gvi.message) or _d("L1gLFRgVBwZcGxVdAw")
vs.lastMessage = jg

if jg:lower():find(_d("G1gMBEo"), 1, true) then
vs.waterRefusals = (vs.waterRefusals or 0) + 1

if vs.waterRefusals >= 2 then
vs.waterRefusals = 0

if arco() then
vs.lastMessage = _d("PlweFEsCBkxNDwhbAkJBGQwUSgkHCBkaAFsMQhhWDwBKA0IYUR1BTwYWCUs")
vs.nextCastAt = os.clock() + 1.5
return
end
end

vs.nextCastAt = os.clock() + 8
return
end

vs.waterRefusals = 0
vs.nextCastAt = os.clock() + 3
return
end
end)

local function qf()
if not vs.loaded then
return _d("PlwZBVEJBUxfERJQDgwLGQsVWRMHQhdW")
end

local lkkl = vs.autoUnlocked == true
or (vs.totalCasts or 0) > 0
or (vs.tutorialStep or 0) > 0
local ii = pp and pp.RodsById and pp.RodsById[vs.rod]
local vg = ii and tostring(ii.name) or tostring(vs.rod)
local ewle = math.floor((tonumber(vs.luck) or 0) * 100 + 0.5)

local trn = {
_d("PlYcWxg") .. vg,
_d("IEwbCgJH") .. ewle .. _d("SQ"),
}

local wbf = hgk.current()

if wbf then
table.insert(trn, _d("NlYWBAJH") .. wbf.name .. _d("TBFT") .. tostring(math.floor(wbf.luck * 100 + 0.5)) .. _d("SRkUFFsMSw"))
end

table.insert(trn, _d(""))
table.insert(trn, _d("L1gLFUtHFgMZCxFdCQZWGQ") .. ma(vs.casts or 0))
table.insert(trn, _d("OFYMAFRHAQ1KDBICRw") .. ma(vs.totalCasts or 0))

table.insert(trn, _d(""))
table.insert(trn, _d("KlALCVEJBUxMFg1XBAkJXUJB") .. (lkkl and _d("FVwL") or _d("AlY")))
table.insert(trn, _d("LUwMDhUBCx9RWBRIABANXR1bGA") .. (vs.autoUnlocked and _d("A04WBFw") or _d("AlYMQVcQDAld")))

if vs.enabled then
local ah = vs.usingGameAuto and _d("C1gVBBgGFxhW") or tostring(vs.phase)

if ah == _d("G1gRFVEJBS5QDAQ") then
ah = _d("G1gRFVEJBUxfFxMYBkIOUAwE")
elseif ah == _d("HlwdDVEJBQ") then
ah = _d("HlwdDVEJBUxQFg")
elseif ah == _d("HlwLDlQRCwJe") then
ah = _d("AFgWBVEJBUxQDA")
end

table.insert(trn, _d(""))
table.insert(trn, _d("LUwMDhghCx9RQkE") .. ah)

local dv = ha.worldBoss

if dv and type(dv.hasWork) == _d("CkwWAkwODQI") and dv.enabled and dv.hasWork() then
table.insert(trn, _d("JFYUBVEJBVYZHw1XBQMAGRoOSxRCBUpYFEhHSh5cCxRVAhFMVhZBURMRTFoXDlQDDRtXUQ"))
end

if vs.lastCatch then
table.insert(trn, _d("IFgLFRgEAxhaEFsY") .. vs.lastCatch)
end
end

if vs.lastMessage then
table.insert(trn, _d(""))
table.insert(trn, _d("IlYMBAJH") .. vs.lastMessage)
end

return table.concat(trn, _d("Zg"))
end

local function zgeo()
local rjz = 0

for vepa, wsr in pairs(vs.catches) do
local zw = xpgk.ById[vepa]

if not (zw and zw.type == _d("D1EdEkw")) then
rjz = rjz + wsr
end
end

return rjz
end

local function mdg()
local elh = {}

for mzbn, bwow in pairs(vs.catches) do
local vk = xpgk.ById[mzbn]
local omqb = vk and vk.type == _d("D1EdEkw") or false

table.insert(elh, {
name = vs.catchName(mzbn),
count = bwow,
chest = omqb,
rank = omqb and (tonumber(vk.border) or 1) or 0,
})
end

if #elh == 0 then
return _d("IlYMCVEJBUxaGRRfDxZMQB0VFm1oOEwKDxgIDEx4DRVXRyQFShBBWQkGTE0QBBgTAwBVAUFLEwMeTQtBUAIQCRdYKExHEQ1PHRIYDhYfXBQHFEcRAxkRFRgEAx5LEQRLRw0aXApBVgIaGBkLBEsUCwNXVg")
end

table.sort(elh, function(fvn, bns)
if fvn.chest ~= bns.chest then
return fvn.chest
end

if fvn.chest and fvn.rank ~= bns.rank then
return fvn.rank > bns.rank
end

if fvn.count ~= bns.count then
return fvn.count > bns.count
end

return fvn.name < bns.name
end)

local tuh = {}

for amza, nqyc in ipairs(elh) do
table.insert(tuh, nqyc.name .. _d("TNv49Rg") .. ma(nqyc.count))
end

local sl = {
table.concat(tuh, _d("ZjM")),
_d(""),
_d("OFYMAFRHAQ1MHwlMXUI") .. ma(zgeo()) .. _d("TPvPQQ") .. #elh .. _d("TFIRD1wU"),
}

if vs.lastCatch then
table.insert(sl, _d("IFgLFRgEAxhaEFsY") .. tostring(vs.lastCatch))
end

return table.concat(sl, _d("Zg"))
end

local ac = {
rod = Vector3.new(-493, 18, -40254),
bait = Vector3.new(-493, 18, -40254),
}

local function uirl(nfk)
if not pp then
return {}
end

local oss

if nfk == _d("HlYc") then
oss = pp.RodsById
elseif nfk == _d("DlgRFQ") then
oss = pp.BaitsById
else
oss = nil
end

local ee = {}

for kewp, wt in pairs(oss or {}) do
if not wt.crafted then
table.insert(ee, {
id = tostring(kewp),
name = tostring(wt.name or kewp),
cost = tonumber(wt.cost) or 0,
luck = tonumber(wt.luck) or 0,
index = tonumber(wt.index) or 0,
island = wt.shop == _d("BUoUAFYD"),
})
end
end

table.sort(ee, function(blyv, tg)
if blyv.index ~= tg.index then
return blyv.index < tg.index
end

return blyv.cost < tg.cost
end)

return ee
end

local function hqb(ghci)
if ghci == _d("HlYc") then
return vs.rodsOwned or {}
elseif ghci == _d("DlgRFQ") then
return vs.baitsOwned or {}
end

return {}
end

local function qw(wx)
if wx == _d("HlYc") then
return vs.rod
elseif wx == _d("DlgRFQ") then
return vs.equippedBait
end

return nil
end

local function jops(tmkf)
local bja = hqb(tmkf)
local bpnh = nil

for oz, aknr in ipairs(uirl(tmkf)) do
if bja[aknr.id] == true then
bpnh = aknr
end
end

if tmkf == _d("HlYc") and pp and pp.RodsById then
local zjfl = pp.RodsById.rod_secret

if zjfl and bja.rod_secret == true then
bpnh = {
id = _d("HlYcPksCAR5cDA"),
name = tostring(zjfl.name or _d("KUEbAFQOABlL")),
cost = tonumber(zjfl.cost) or 0,
luck = tonumber(zjfl.luck) or 0,
index = tonumber(zjfl.index) or 0,
island = true,
}
end
end

return bpnh
end

local function lr(yjuz)
if yjuz.island and vs.islandLocked then
return false
end

return true
end

local function xmr(jx)
local lyeb = hqb(jx)
local cah = vs.casts or 0
local qrbo = nil

for vcld, wcl in ipairs(uirl(jx)) do
if lyeb[wcl.id] ~= true and wcl.cost <= cah and lr(wcl) then
qrbo = wcl
end
end

return qrbo
end

local function lmmx(fgq)
local th = hqb(fgq)

for hxpo, ukn in ipairs(uirl(fgq)) do
if th[ukn.id] ~= true and lr(ukn) then
return ukn
end
end

return nil
end

local function qy(pf, mqam)
if not mqam then
return _d("AlYWBBgIFQJcHA")
end

return mqam.name .. _d("TBFT") .. tostring(math.floor(mqam.luck * 100 + 0.5)) .. _d("SRkUFFsMSw")
end

local function lzo()
if not pp then
return _d("KlALCVEJBShYDAAYCQ0YGR4OTQkGTBRYElAIEkxdGRVZRxcCWA4AUQsDDlUdTw")
end

local fjo = {}
local skg = { rod = _d("PlYc"), bait = _d("LlgRFQ") }

for tcti, jd in ipairs({ _d("HlYc"), _d("DlgRFQ") }) do
local ergr = jops(jd)
local bn = nil

for ui, zrt in ipairs(uirl(jd)) do
if zrt.id == qw(jd) then
bn = zrt.name
end
end

if #fjo > 0 then
table.insert(fjo, _d(""))
end

table.insert(fjo, skg[jd] .. _d("Vhk") .. qy(jd, ergr))
table.insert(fjo, _d("I1dYD1cQWEw") .. (bn or _d("AlYWBA")))

local rj = xmr(jd) or lmmx(jd)

if rj then
local dcd = rj.cost - (vs.casts or 0)

table.insert(fjo, _d("IlwAFQJH") .. rj.name .. _d("TPvPQQ") .. ma(rj.cost) .. _d("TFoZEkwU"))

if dcd > 0 then
table.insert(fjo, _d("IlwdBRg") .. ma(dcd) .. _d("TFQXE10"))
end
else
table.insert(fjo, _d("IlwAFQJHBxpcChhMDwsCXlgOTwkHCA"))
end
end

table.insert(fjo, _d(""))
table.insert(fjo, _d("L1gLFUtHFgMZCxFdCQZWGQ") .. ma(vs.casts or 0))

if vs.shopMessage then
table.insert(fjo, _d(""))
table.insert(fjo, vs.shopMessage)
end

return table.concat(fjo, _d("Zg"))
end

local function kj(lghi, rwln)
local tyke = os.clock()

if tyke < (vs.shopCallAt or 0) then
return false, _d("H1UXFg")
end

vs.shopCallAt = tyke + 1.4

local ury, iu, hfw, wss = pcall(function()
return zbuo.FishingShop:InvokeServer(lghi, rwln)
end)

if not ury then
return false, _d("CUsKDkpH") .. tostring(iu)
end

dzjp(wss)

if iu == true then
return true, nil
end

return false, tostring(hfw or _d("HlweFEsCBg"))
end

function vs.rebirthCardsHeld()
local nzvi = pp and type(pp.RebirthCards) == _d("GFgaDV0") and #pp.RebirthCards or 0

if nzvi == 0 then
return 0, 0
end

local earv = 0

for vuin, hhxw in ipairs(pp.RebirthCards) do
if vs.rebirthCards[hhxw.cardId] then
earv = earv + 1
end
end

return earv, nzvi
end

function vs.rebirthReady()
local krl, nwlk = vs.rebirthCardsHeld()

return nwlk > 0 and krl >= nwlk and (tonumber(vs.rebirths) or 0) < 1
end

function vs.rebirthText()
local buzy, nxym = vs.rebirthCardsHeld()

if nxym == 0 then
return _d("KlALCVEJBUxdGRVZRwwDTVgNVwYGCV1UQUsIQh5cGghKEwpMUAtBTQkDGlgRDVkFDgkX")
end

if (tonumber(vs.rebirths) or 0) >= 1 then
return _d("PlwaCEoTCgldVkFsDwdMeBoAVgMNAlwcQXEUDg1XHEFRFEIDSR0PFg")
end

if buzy >= nxym then
return _d("LVUUQQ") .. nxym .. _d("TFoZE1wUQgpQCwldA0xMax0AXB5CGFZYE10FCx5NEE8")
end

local cyhl = {}

for rr, emac in ipairs(pp.RebirthCards) do
if not vs.rebirthCards[emac.cardId] then
table.insert(cyhl, (string.gsub(emac.cardId, _d("Ml8RElA4"), _d(""))))
end
end

return buzy .. _d("Qw") .. nxym .. _d("TFoZE1wUTExqDAhUC0ICXB0FGA") .. table.concat(cyhl, _d("QBk")) .. _d("Qg")
end

local function tfz(eee)
local kjpm = ehbn.Character
local re = kjpm and kjpm:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not re then
return false
end

return (re.Position - (ac[eee] or ac.rod)).Magnitude <= 26
end

local function duq(snjo, aamr)

if aamr and aamr.island then
if not vs.shopIsland or not vs.shopIsland.toIsland() then
vs.shopMessage = _d("L1YNDVxHDANNWBNdBgEEGQwJXUcLH1UZD1xHAQNMFhVdFQ")

return false
end

return true
end

if tfz(snjo) then
return true
end

local ivf = ehbn.Character
local ldd = ivf and ivf:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not ldd then
return false
end

local bofn = ac[snjo] or ac.rod
vs.shopTripUntil = os.clock() + 12
vs.shopHoldUntil = os.clock() + 12

pcall(function()
ldd.CFrame = CFrame.new(bofn)
end)

task.wait(1.2)

return tfz(snjo)
end

local function xvj(dk, inx, tcc)
if not tcc then
return false
end

if (vs.casts or 0) < tcc.cost then
return false
end

if not duq(dk, tcc) then
vs.shopMessage = _d("L1YNDVxHDANNWBNdBgEEGQwJXUcRBFYIQV4IEEw") .. tcc.name
return false
end

local mns, ppnw = kj(inx, tcc.id)

if not mns then
local hts = tostring(ppnw)
local wm = hts:find(_d("OFgUChgTDUxNEAQYIQsfUR0TVQYM"), 1, true) or hts:find(_d("LlYZFRgjBw1VHRM"), 1, true)

if wm then

vs.shopMessage = _d("O1gUClEJBUxMCEFMCEIYUR1BWwgXAk0dExgBDR4Z") .. tcc.name
return false
end

if ppnw ~= _d("H1UXFg") then
vs.shopAt = os.clock() + 15
vs.shopMessage = _d("P1wKF10VQh5cHhRLAgZM") .. tcc.name .. _d("TBE") .. hts .. _d("RQ")
end

return false
end

vs.shopMessage = _d("LlYNBlATQg") .. tcc.name

return true
end

local function tvp(jdul)
local gwze = jops(jdul)

if not gwze or qw(jdul) == gwze.id then
return false
end

local wock

if jdul == _d("HlYc") then
wock = _d("KUgNCEg1DQg")
elseif jdul == _d("DlgRFQ") then
wock = _d("KUgNCEglAwVN")
else
return false
end

local yznx, intu = kj(wock, gwze.id)

if not yznx then
if intu ~= _d("H1UXFg") then
vs.shopMessage = _d("L1YNDVxHDANNWARJEgscGQ") .. gwze.name .. _d("TBE") .. tostring(intu) .. _d("RQ")
end

return false
end

if jdul == _d("HlYc") then
vs.rod = gwze.id
elseif jdul == _d("DlgRFQ") then
vs.equippedBait = gwze.id
else
return false
end

vs.shopMessage = _d("KUgNCEgXBwgZ") .. gwze.name

return true
end

local function znru()
local iuai = vs.shop

if os.time() - (vs.lastSync or 0) >= 5 then
iguq()
end

if iuai.equipRod then
tvp(_d("HlYc"))
end

if iuai.equipBait then
tvp(_d("DlgRFQ"))
end

if iuai.autoBuyRod then
xvj(_d("HlYc"), _d("LkwBM1cD"), xmr(_d("HlYc")))
end

if iuai.autoBuyBait then
xvj(_d("DlgRFQ"), _d("LkwBI1kOFg"), xmr(_d("DlgRFQ")))
end
end

local function mmts()
local vwfp = vs.shop

return vwfp.autoBuyRod or vwfp.autoBuyBait or vwfp.equipRod or vwfp.equipBait
end

vs.shopIsland = {
rods = function()
local plbl = pp and pp.RodsById or {}
local kmjn = {}

for uhpq, vynh in pairs(plbl) do
if tostring(vynh.shop) == _d("BUoUAFYD") then
table.insert(kmjn, {
id = tostring(uhpq),
name = tostring(vynh.name or uhpq),
cost = tonumber(vynh.cost) or 0,
luck = tonumber(vynh.luck) or 0,
index = tonumber(vynh.index) or 0,
crafted = vynh.crafted == true,
})
end
end

table.sort(kmjn, function(li, zowd)
return li.index < zowd.index
end)

return kmjn
end,

angler = function()
local gtaw = workspace:FindFirstChild(_d("Imk7Eg"), true)

if not gtaw then
return nil
end

for zgm, ary in ipairs(gtaw:GetChildren()) do
if ary:GetAttribute(_d("P1wbE10TIwJeFARKKTIv")) then
return ary
end
end

return nil
end,
held = function(wn)
return (vs.rodsOwned or {})[wn] == true
end,
recipeHeld = function(wuxs)
for mv, goo in ipairs(wuxs or {}) do
local ufaw = tonumber((vs.mats or {})[goo.id]) or 0

if ufaw < (tonumber(goo.count) or 0) then
return false
end
end

return true
end,
recipeText = function(dsw)
local dx = {}

for tat, ql in ipairs(dsw or {}) do
local eow = tonumber((vs.mats or {})[ql.id]) or 0
local nqbu = (xpgk.ById[ql.id] and xpgk.ById[ql.id].name) or tostring(ql.id)

table.insert(dx, nqbu .. _d("TA") .. ma(eow) .. _d("Qw") .. ma(tonumber(ql.count) or 0))
end

return table.concat(dx, _d("TPvPQQ"))
end,

stand = function(udi)
local rzk = ehbn.Character
local fgz = rzk and rzk:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not (fgz and udi) then
return false
end

local tbc = udi:GetPivot()
local ogwd = udi:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ")) or udi:FindFirstChildWhichIsA(_d("LlgLBGgGEBg"), true)
local wlml = ogwd and (ogwd.CFrame * CFrame.new(0, 0, -5)).Position or nil

if not wlml then
local acsw = RaycastParams.new()
acsw.FilterType = Enum.RaycastFilterType.Exclude
acsw.FilterDescendantsInstances = { rzk, udi }

local gmmm = nil
local ml = math.huge

for noqh, bng in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local ing = workspace:Raycast(tbc.Position + bng + Vector3.new(0, 30, 0), Vector3.new(0, -140, 0), acsw)

if ing and tostring(ing.Instance.Name) ~= _d("O1gMBEo") and ing.Position.Y <= tbc.Position.Y + 10 then
local ohra = math.abs(ing.Position.Y - tbc.Position.Y)

if ohra < ml then
gmmm = ing
ml = ohra
end
end
end

wlml = gmmm and Vector3.new(gmmm.Position.X, gmmm.Position.Y + 3.5, gmmm.Position.Z) or (tbc.Position + Vector3.new(0, 4, 0))
end

vs.shopTripUntil = os.clock() + 12

vs.islandTripUntil = os.clock() + 12

pcall(function()
fgz.CFrame = CFrame.new(wlml)
end)

task.wait(1.2)

return true
end,
atIsland = function()
local astr = workspace:FindFirstChild(_d("JUoUAFYDJAVKEARKCgMCdygi"), true)
local cb = ehbn.Character
local eghd = cb and cb:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not (astr and eghd) then
return false
end

return (eghd.Position - astr:GetPivot().Position).Magnitude <= 45
end,
toIsland = function()
if vs.shopIsland.atIsland() then
return true
end

vs.shopTripUntil = os.clock() + 12

if not vs.gotoIsland() then
return false
end

task.wait(1.2)

return vs.shopIsland.atIsland()
end,

craftExcalibur = function()
local kohs = vs.shopIsland.angler()

if not kohs or vs.shopIsland.held(_d("HlYcPksCAR5cDA")) then
return false
end

if not vs.shopIsland.recipeHeld(pp and pp.SecretRecipe) then
return false
end

vs.shopIsland.stand(kohs)

local zg, ycna = kj(_d("L0sZB0w1DQg"), _d("HlYcPksCAR5cDA"))

if zg then
vs.rod = _d("HlYcPksCAR5cDA")
vs.islandMessage = _d("L0sZB0wCBkxNEAQYIhoPWBQIWhIQTEsXBRgGFkxNEAQYLwsIXR0PGCYMC1UdEw")
elseif ycna ~= _d("H1UXFg") then
vs.islandMessage = _d("JFAcBV0JQi1XHw1dFUIeXB4USwIGTE0QBBgiGg9YFAhaEhBMEQ") .. tostring(ycna) .. _d("RQ")
end

return zg
end,
craftBoot = function()
if vs.boot.owned or vs.islandLocked then
return false
end

if not vs.shopIsland.recipeHeld(pp and pp.BootRecipe) then
return false
end

if not vs.shopIsland.toIsland() then
vs.islandMessage = _d("L1YNDVxHDANNWBNdBgEEGQwJXUcLH1UZD1xHAQNMFhVdFQ")
return false
end

local dip, tkl = kj(_d("L0sZB0wlDQNN"))

if dip then
vs.boot.owned = true
vs.islandMessage = _d("L0sZB0wCBkxNEAQYKwcLXBYFWRUbTHsXDkw")
elseif tkl ~= _d("H1UXFg") then
vs.islandMessage = _d("JUoUAFYDQipQCwldFQ8NV1gTXQEXH1wcQUwPB0xbFw5MR0o") .. tostring(tkl) .. _d("RQ")
end

return dip
end,
best = function()
local qtg = vs.rodsOwned or {}
local gio = nil

for rkdd, rtiy in ipairs(vs.shopIsland.rods()) do
if qtg[rtiy.id] == true and (gio == nil or rtiy.luck > gio.luck) then
gio = rtiy
end
end

return gio
end,

equipBoot = function()
if not vs.boot.owned or vs.boot.equipped then
return false
end

local glkx, ipam = kj(_d("KUgNCEglDQNN"), true)

if glkx then
vs.boot.equipped = true
vs.islandMessage = _d("KUgNCEgXBwgZDAldRy4JXh0PXAYQFRk6DlcT")
elseif ipam ~= _d("H1UXFg") then
vs.islandMessage = _d("L1YNDVxHDANNWARJEgscGQwJXUcAA1YMQRA") .. tostring(ipam) .. _d("RQ")
end

return glkx
end,
active = function()
local nme = vs.island

return nme.autoRod or nme.autoAcc or nme.equipAcc
end,
run = function()
local ewsj = vs.island

if os.time() - (vs.lastSync or 0) >= 8 then
iguq()
end

if ewsj.autoRod then
vs.shopIsland.craftExcalibur()
end

if ewsj.autoAcc then
vs.shopIsland.craftBoot()
end

if ewsj.equipAcc then
vs.shopIsland.equipBoot()
end
end,
text = function()
if not pp then
return _d("KlALCVEJBShYDAAYCQ0YGR4OTQkGTBRYFVACQgVKFABWA0IfURcRGA4RTEwWAE4GCwBYGg1dSQ")
end

local xtmu = {}
local ifbs = vs.rodsOwned or {}

table.insert(xtmu, vs.islandLocked and _d("LVsZD1wIDAldWChLCwMCXVgIS0cOA1oTBFxHT0xLHQNRFRYEGR4IShQWQg") or _d("LVsZD1wIDAldWChLCwMCXVgIS0cNHFwWTw"))

for ri, yux in ipairs(vs.shopIsland.rods()) do
local qvpv

if ifbs[yux.id] == true then
qvpv = vs.rod == yux.id and _d("A04WBFxHoNsZFw8YCQ0b") or _d("A04WBFw")
elseif yux.crafted then
qvpv = _d("JFAcBV0JQi1XHw1dFUIeXBsISAI")
else
qvpv = ma(yux.cost) .. _d("TFoZEkwU")
end

table.insert(xtmu, yux.name .. _d("TNv49Rg") .. qvpv)
end

table.insert(xtmu, _d(""))

if ifbs.rod_secret then
table.insert(xtmu, _d("KUEbAFQOABlLQkFXEAwJXQ"))
else
local qxts = vs.shopIsland.recipeHeld(pp.SecretRecipe)

table.insert(xtmu, _d("KUEbAFQOABlLQkE") .. (qxts and _d("HlwbCEgCQh5cGQVB") or _d("HlwbCEgCQh9RFxNM")))
table.insert(xtmu, vs.shopIsland.recipeText(pp.SecretRecipe))
end

table.insert(xtmu, _d("JFAcBV0JQi1XHw1dFVhM") .. (vs.shopIsland.angler() and _d("GUlYD1cQ") or _d("AlYMQVACEAk")))
table.insert(xtmu, _d(""))

local yym = vs.boot
local qz

if yym.equipped then
qz = _d("IFwfBFYDAx5AWCNXCBZWGR0QTQ4SHFwc")
elseif yym.owned then
qz = _d("IFwfBFYDAx5AWCNXCBZWGRcWVgIG")
elseif vs.shopIsland.recipeHeld(pp.BootRecipe) then
qz = _d("IFwfBFYDAx5AWCNXCBZWGQoEWw4SCRkKBFkDGw")
else
qz = _d("IFwfBFYDAx5AWCNXCBZWGQ") .. vs.shopIsland.recipeText(pp.BootRecipe)
end

table.insert(xtmu, qz)
table.insert(xtmu, _d("L1gLFUtHFgMZCxFdCQZWGQ") .. ma(vs.casts or 0))

if vs.islandMessage then
table.insert(xtmu, _d(""))
table.insert(xtmu, vs.islandMessage)
end

return table.concat(xtmu, _d("Zg"))
end,
}

task.spawn(function()
iguq()
end)

local czln = {
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

getgenv().ACBXAutoBuyHalloween = czln

jhh(zbuo.SyncItems.OnClientEvent, function(vue)
if type(vue) == _d("GFgaDV0") then
czln.balances = vue
czln.lastSync = os.time()
end
end)

zbuo.RequestItemSync:FireServer()

jhh(zbuo.RaidShopState.OnClientEvent, function(krlq)
if type(krlq) == _d("GFgaDV0") and krlq.shopId == _d("BFgUDVcQBwlX") then
czln.shopState = krlq
czln.stateAt = os.clock()
end
end)

jhh(zbuo.RaidNotify.OnClientEvent, function(tgzg)
local wwq = czln.pending

if not wwq or type(tgzg) ~= _d("H00KCFYA") then
return
end

if tgzg:sub(1, 9) == _d("PGwqInAmMSl9") then
czln.purchased[wwq.id] = (czln.purchased[wwq.id] or 0) + 1
czln.pending = nil
else
if czln.balances[wwq.currency] then
czln.balances[wwq.currency] = czln.balances[wwq.currency] + wwq.price
end

czln.failedUntil[wwq.id] = os.time() + 5
czln.pending = nil
end
end)

gnco.trip = {
untilAt = 0,
lastTry = 0,
lastResult = nil,
spot = nil,
}

function gnco.merchant()
local es = workspace:FindFirstChild(_d("Imk7Eg"))
local cqk = gnco.shopData and gnco.shopData.NpcName or _d("PEwVEVMODEx0HRNbDwMCTQ")

return es and es:FindFirstChild(cqk) or nil
end

function gnco.stand()
local oxq = gnco.merchant()
local fum = oxq and (oxq:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ")) or oxq:FindFirstChildWhichIsA(_d("LlgLBGgGEBg")))
local dotp = ehbn.Character
local rz = dotp and dotp:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not (fum and rz) then
return false
end

gnco.trip.spot = fum.Position + Vector3.new(0, 3, 4)
rz.AssemblyLinearVelocity = Vector3.zero
rz.CFrame = CFrame.new(gnco.trip.spot)

return true
end

function gnco.fresh()
return czln.shopState ~= nil and os.clock() - czln.stateAt < 30
end

function gnco.guiOpen()
local ulqg = brbo:FindFirstChild(_d("JFgUDVcQBwlXKwlXFyUZUA"))
local zu = ulqg and ulqg:FindFirstChild(_d("P1EXEX4VAwFc"))

if zu then
return zu.Visible == true
end

for urwn, om in ipairs(brbo:GetChildren()) do
if om:IsA(_d("P1oKBF0JJRlQ")) and om.Name:lower():find(_d("BFgUDVcQBwlX"), 1, true) and om.Enabled then
return true
end
end

return false
end

function gnco.close()
local lk = brbo:FindFirstChild(_d("JFgUDVcQBwlXKwlXFyUZUA"))
local jqrt = lk and lk:FindFirstChild(_d("P1EXEX4VAwFc"))

if not (jqrt and jqrt.Visible) then
return false
end

local tz = jqrt:FindFirstChild(_d("L1UXEl0lFxhNFw8"))

if not tz then
for arf, mo in ipairs(jqrt:GetDescendants()) do
if mo:IsA(_d("K0wRI00TFgNX")) and tostring(mo.Name):lower():find(_d("D1UXEl0"), 1, true) then
tz = mo
break
end
end
end

if tz and type(firesignal) == _d("CkwWAkwODQI") then
pcall(function()
firesignal(tz.MouseButton1Click)
end)

task.wait(0.3)

if not jqrt.Visible then
return true
end
end

pcall(function()
jqrt.Visible = false
end)

return true
end

function gnco.spend()
if czln.pending or os.time() - (czln.lastAttempt or 0) < 1 then
return nil
end

local fmkn = czln.shopState

for reow, tjj in ipairs(gnco.shopItems) do
if czln.selected[tjj.id] and os.time() >= (czln.failedUntil[tjj.id] or 0) then
local mztg = tjj.stock
local ids = czln.purchased[tjj.id] or 0

if fmkn and fmkn.stocks and fmkn.stocks[tjj.id] then
mztg = fmkn.stocks[tjj.id]
end

if fmkn and fmkn.bought then
ids = math.max(ids, fmkn.bought[tjj.id] or 0)
end

local ch = mztg and (mztg - ids) or 1
local srny = czln.balances[tjj.currency] or 0

if ch > 0 and srny >= tjj.price then
czln.pending = {
id = tjj.id,
price = tjj.price,
currency = tjj.currency,
at = os.time(),
}
czln.lastAttempt = os.time()
czln.balances[tjj.currency] = srny - tjj.price

pcall(function()
zbuo.BuyRaidItem:FireServer(tjj.id, 1)
end)

return tjj.id
end
end
end

return nil
end

function gnco.open(mq)
if not mq and gnco.fresh() then
return true
end

if not mq and os.clock() < (gnco.trip.lastTry or 0) + 8 then
return false
end

gnco.trip.lastTry = os.clock()
gnco.trip.untilAt = os.clock() + 12

vs.shopTripUntil = os.clock() + 12
vs.shopHoldUntil = os.clock() + 12
vs.phase = _d("BV0UBA")

local iddm = gnco.merchant()
local izi = iddm and iddm:FindFirstChild(_d("PEsXGVEKCxhAKBNXChIY"))

if not (iddm and izi) then
vs.deepPhase = _d("BV0UBA")
gnco.trip.untilAt = os.clock() + 60
gnco.trip.lastResult = _d("OFEdQWgSDxxSEQ8YKgceWhAAVhNCBUpYD1cTQgVXWBVQDhFMWw0IVANM")

return false
end

local mcpl = os.clock() + 3
local brdg = 0

while os.clock() < mcpl do

gnco.stand()

if os.clock() >= brdg then
brdg = os.clock() + 0.8

if type(fireproximityprompt) == _d("CkwWAkwODQI") then
pcall(function()
fireproximityprompt(izi)
end)
end

pcall(function()
zbuo.OpenRaidShop:FireServer(_d("BFgUDVcQBwlX"))
end)
end

if gnco.guiOpen() or gnco.fresh() then
break
end

task.wait(0.1)
end

if not (gnco.guiOpen() or gnco.fresh()) then

vs.deepPhase = _d("BV0UBA")
gnco.trip.untilAt = os.clock() + 60
gnco.trip.lastResult = _d("OFEdQVsIFwJNHRMYAwsIGRYOTEcDAkoPBEpHT0xQDEFXCQ4VGRcRXQkRTFAWQUwPB0xKHQBLCAwNVVgASgIDQg")

return false
end

gnco.trip.lastResult = _d("L1YND0wCEExWCARWSQ")

for yaxu = 1, 3 do
gnco.stand()

if not gnco.spend() then
break
end

task.wait(1.2)
end

pcall(gnco.close)

vs.deepPhase = _d("BV0UBA")

return true
end

local function yoq(cjak)
cjak = math.max(0, math.floor(cjak))
local nuoy = math.floor(cjak / 3600)
local dkiw = math.floor((cjak % 3600) / 60)
local ai = cjak % 60

if nuoy > 0 then
return string.format(_d("SV0QQR1XUAhU"), nuoy, dkiw)
elseif dkiw > 0 then
return string.format(_d("SV0VQR1XUAhK"), dkiw, ai)
end

return string.format(_d("SV0L"), ai)
end

local function zm()
local srz = brbo:FindFirstChild(_d("JFgUDVcQBwlXKwlXFyUZUA"))
local mtk = srz and srz:FindFirstChild(_d("P1EXEX4VAwFc"))
local rzhf = mtk and mtk:FindFirstChild(_d("JU0dDHQOERg"))
local vdds = {}
local llas = nil

if rzhf then
for wbb, kwxs in ipairs(gnco.shopItems) do
local alqq = rzhf:FindFirstChild(kwxs.id)
local tfnq = alqq and alqq:FindFirstChild(_d("LlYA"))
local rwk = tfnq and tfnq:FindFirstChild(_d("P00XAlM"))

if rwk and rwk:IsA(_d("OFwAFXQGAAlV")) then
local yowx, sx = rwk.Text:match(_d("RBwcShFCEUYWXRIST0cIElE"))

if yowx and sx then
vdds[kwxs.id] = {
remaining = tonumber(yowx),
total = tonumber(sx),
}
end
end
end
end

if mtk then
for co, iiiu in ipairs(mtk:GetDescendants()) do
if iiiu:IsA(_d("OFwAFXQGAAlV")) and iiiu.Text:find(_d("HlwLBEwUQgVX"), 1, true) then
llas = iiiu.Text:match(_d("HlwLBEwUQgVXXRIST0xHEFw"))
break
end
end
end

return vdds, llas
end

local function nk(dpwn)
if type(dpwn) ~= _d("H00KCFYA") then
return 0
end

local sljn = tonumber(dpwn:match(_d("RBwcShEP"))) or 0
local jssb = tonumber(dpwn:match(_d("RBwcShEK"))) or 0
local kfln = tonumber(dpwn:match(_d("RBwcShEU"))) or 0
return sljn * 3600 + jssb * 60 + kfln
end

local function zxd()
local zoxm = czln.shopState
local tsbl, voyw = zm()
local nfqp = {}
local jpd = {}
local kzxu = {}

for vml, tafx in ipairs(gnco.shopItems) do
local ygv = tafx.stock
local pfx = nil

if zoxm and zoxm.stocks and zoxm.stocks[tafx.id] then
ygv = zoxm.stocks[tafx.id]
end

local isgs = czln.purchased[tafx.id] or 0

if zoxm and zoxm.bought then
isgs = math.max(isgs, zoxm.bought[tafx.id] or 0)
end

if ygv then
pfx = math.max(0, ygv - isgs)
end

if (not zoxm or not zoxm.bought) and tsbl[tafx.id] then
pfx = tsbl[tafx.id].remaining
ygv = tsbl[tafx.id].total
end

local dck = tafx.currency == _d("BlgbCmcIPQBYFhVdFQw") and _d("IFgWFV0VDB8") or _d("L1gWBUE")
local wlji

if pfx == nil then
wlji = tafx.shortName
elseif pfx <= 0 then
wlji = tafx.shortName .. _d("TPvPQUsIDggZFxRM")
else
wlji = tafx.shortName .. _d("TPvPQQ") .. tostring(pfx) .. _d("Qw") .. tostring(ygv or _d("Uw"))
end

if not jpd[dck] then
jpd[dck] = {}
table.insert(kzxu, dck)
end

table.insert(jpd[dck], wlji)
end

local an = {}

for bbq, ei in ipairs(kzxu) do
table.insert(an, ei)

for ane, rojw in ipairs(jpd[ei]) do
table.insert(an, rojw)
end
end

table.insert(nfqp, table.concat(an, _d("ZjM")))
table.insert(nfqp, _d(""))

if zoxm and type(zoxm.resetsIn) == _d("AkwVA10V") then
local ilml = zoxm.resetsIn - (os.clock() - czln.stateAt)
table.insert(nfqp, _d("PlwLFVcECR8ZEQ8Y") .. yoq(ilml))
elseif voyw then
if czln.uiTimerText ~= voyw then
czln.uiTimerText = voyw
czln.uiTimerSeconds = nk(voyw)
czln.uiTimerAt = os.clock()
end

local bcc = czln.uiTimerSeconds - (os.clock() - czln.uiTimerAt)
table.insert(nfqp, _d("PlwLFVcECR8ZEQ8Y") .. yoq(bcc))
else
table.insert(nfqp, _d("PlwLFVcECR8ZHABRCxtM+89BTg4RBU1YFVACQh9RFxE"))
end

if not gnco.fresh() then
table.insert(nfqp, gnco.trip.lastResult or _d("OFEdQVsIFwJNHRMYDhFMWhQOSwIGTBRYLkgCDExKEA5IRxUNVRMSGBMKCRkbCVkVAw9NHRMYEhJMTRdBURNM"))
end

return table.concat(nfqp, _d("Zg"))
end

jhh(zbuo.NPCBattleResult.OnClientEvent, function(juu)
if type(juu) ~= _d("GFgaDV0") then
return
end

jag.battlePending = false

if juu.result == _d("D1YXDVwIFQI") and type(juu.remaining) == _d("AkwVA10V") and ahk and ve then
zo(ahk, ve, os.time() + juu.remaining)
return
end

if type(juu.npcId) == _d("H00KCFYA") then
local hgen = type(juu.difficulty) == _d("H00KCFYA") and juu.difficulty or jag.activeDifficulty[juu.npcId] or _d("AlYKDFkL")
local rs = elf.ById[juu.npcId]
local vmj = tonumber(juu.cooldown) or (rs and rs.cooldown) or 300
zo(juu.npcId, hgen, os.time() + vmj)
end
end)

jhh(zbuo.SyncNPCCooldowns.OnClientEvent, function(vso)
if type(vso) ~= _d("GFgaDV0") then
return
end

for ezqe, yw in pairs(vso) do
if type(ezqe) == _d("H00KCFYA") and type(yw) == _d("AkwVA10V") then
local jeif = jag.activeDifficulty[ezqe] or _d("AlYKDFkL")
zo(ezqe, jeif, yw)
end
end
end)

local powi = {}
local sni = {}

for wncf, qu in ipairs(duj.Worlds) do

local oqgx = { _d("LVUU") }
local vru = {}
local gcqa = {}
local vhs = nil

for rsg, dfq in ipairs(qu.npcs or {}) do
local jokp = elf.ById[dfq]
if jokp then
table.insert(oqgx, jokp.name)
table.insert(gcqa, dfq)
vru[jokp.name] = dfq
if jokp.type == _d("DlgMFVQC") then
vhs = dfq
end
end
end

local hjwr = qu.id
if vhs and ka.ById[vhs] then
hjwr = ka.ById[vhs].worldId or hjwr
end

for sta, wyj in ipairs(qu.npcs or {}) do
sni[wyj] = hjwr

jag.bossTeams.worldOf[wyj] = qu.id
end

table.insert(powi, {
id = qu.id,
teleportWorldId = hjwr,
name = qu.name,
options = oqgx,
ids = gcqa,
byName = vru,
npcs = qu.npcs,
})
end

local xik = {}
local gs = {}
local bbi = {}

for tc, ode in ipairs(duj.Difficulties) do
table.insert(xik, ode.name)
gs[ode.name] = ode.id
bbi[ode.id] = ode.name
end

local iipu = {}
local by = {}

for rec, rgsg in ipairs(hm.Difficulties) do
table.insert(iipu, rgsg.name)
by[rgsg.name] = rgsg.id
end

local di = {}
local txu = {}
local ydsr = {}
local us = {
soul_king = _d("PlgRBW8IEABd"),
beerus = _d("PlgRBW8IEABdJyNdAhAZSg"),
reid = _d("PlgRBW8IEABdJzNdDgY"),
}

for fi, jdeg in ipairs(hm.Raids) do
if jdeg.BossTitle and jdeg.id then
table.insert(di, jdeg.BossTitle)
txu[jdeg.BossTitle] = jdeg.id
ydsr[jdeg.id] = jdeg.NpcId
end
end

local function qal()
for rfnf, xu in ipairs({ _d("LlgMFVQCJRlQ"), _d("LlgMFVQCJRlQSg") }) do
local gko = brbo:FindFirstChild(xu)
local mc = gko and gko:FindFirstChild(_d("LlgMFVQCMQ9LHQRW"))
if mc and mc.Visible then
return mc
end
end
end

local function mehe()
for ygc, efo in ipairs({ _d("LlgMFVQCJRlQ"), _d("LlgMFVQCJRlQSg") }) do
local nss = brbo:FindFirstChild(efo)
local pa = nss and nss:FindFirstChild(_d("LlgMFVQCMQ9LHQRW"))
if pa then
return pa
end
end
end

local function kod()
if qal() then
return true
end

for jfz, djnd in ipairs({ _d("LlgMFVQCJRlQ"), _d("LlgMFVQCJRlQSg") }) do
local ekpe = brbo:FindFirstChild(djnd)
local vb = ekpe and ekpe:FindFirstChild(_d("JFAcBHoGFhhVHSNNExYDVw"))
if vb and vb.Visible then
return true
end
end

for qi, nwe in ipairs({ _d("JVc6AEwTDgk"), _d("JVc6AEwTDgkL") }) do
local kdd = brbo:FindFirstChild(nwe)
if kdd and kdd:IsA(_d("LlYXDW4GDhlc")) and kdd.Value then
return true
end
end

return false
end

function pcyb.slotFree(dvy)

if dvy == nil then
return false
end

if not pcyb.enabled then
return not kod()
end

return not pcyb.busy(dvy)
end

function pcyb.npcSlot()
return pcyb.roleSlot(_d("Akkb"))
end

local lfk

local function xzaj(eg)
eg = math.max(0, math.floor(eg))
if eg <= 0 then
return _d("HlwZBUE")
end

local bxl = math.floor(eg / 60)
local vt = eg % 60

if bxl > 0 then
return string.format(_d("SV0VQR1XUAhK"), bxl, vt)
end

return string.format(_d("SV0L"), vt)
end

local function pkzp()
for fvkg, qk in ipairs({ _d("LlgMFVQCJRlQ"), _d("LlgMFVQCJRlQSg") }) do
local mnf = brbo:FindFirstChild(qk)
if mnf then
local qgz = mnf:FindFirstChild(_d("PkwWJ1QIDR51GQNdCw"))
local gzr = mnf:FindFirstChild(_d("OFYPBEohDgNWCi1ZBQcA"))
if (qgz and qgz.Visible) or (gzr and gzr.Visible) then
return _d("JVdYNVcQBx4")
end
end
end

if ena.currentRoom and (ena.inBattle or kod()) then
local qvr = nil

for akqm, fk in ipairs({ _d("LlgMFVQCJRlQ"), _d("LlgMFVQCJRlQSg") }) do
local zn = brbo:FindFirstChild(fk)
local nog = zn and zn:FindFirstChild(_d("LlgMFVQCMQ9LHQRW"))
local erm = nog and nog:FindFirstChild(_d("KVcdDEEmARhQDgR7BhAI"))
local cekc = erm and erm:FindFirstChild(_d("IlgVBHQGAAlV"))

if cekc and cekc.Text ~= _d("") then
qvr = cekc.Text
break
end
end

if qvr then
return _d("LlgMFVQODAsZ") .. qvr .. _d("TGIqDlcKQg") .. ena.currentRoom .. _d("MQ")
end

return _d("LlgMFVQODAsZIzNXCA9M") .. ena.currentRoom .. _d("MQ")
end

local pwyi = mehe()
if kod() and pwyi then
local ygdb = pwyi:FindFirstChild(_d("KVcdDEEmARhQDgR7BhAI"))
local oi = ygdb and ygdb:FindFirstChild(_d("IlgVBHQGAAlV"))
local prt = oi and oi.Text

local vajs = nil
if jag.currentBattle then
vajs = jag.currentBattle.difficulty
elseif prt then
local ari = eve[prt]
if ari then
vajs = jag.activeDifficulty[ari]
end
end

local se = _d("")
if vajs then
se = _d("TGI") .. (bbi[vajs] or vajs) .. _d("MQ")
end

local jc = prt
if jag.currentBattle and jag.currentBattle.npcId then
local fa = elf.ById[jag.currentBattle.npcId]
if fa then
jc = fa.name
end
end

if jc and jc ~= _d("") then
return _d("LlgMFVQODAsZ") .. jc .. se
end

return _d("LlgMFVQODAs") .. se
end

jag.currentBattle = nil

local da = ha.enabled and (ha.bossFor(1) or ha.bossFor(2))

if da then
local gbz = egii:FindFirstChild(_d("PlgRBWsTAxhMCw"))

if gbz then
local ngb = da
local wzlg = hm.ById[ngb]
local bfy = wzlg and wzlg.BossTitle or ngb
local gr = gbz:GetAttribute(_d("JUo3EV0J")) == true or gbz:GetAttribute(_d("KlYKAl0D")) == true
local js = gbz:GetAttribute(_d("PlwZBUE4") .. ngb) == true
local ljc = ha.progress[ngb]
local huj = ljc and ljc.locked == true

if not gr then
local qj = tonumber(gbz:GetAttribute(_d("L1EZD18CES1N"))) or 0
return _d("JV0UBBhKQg") .. bfy .. _d("TGsZCFxdQg") .. xzaj(qj - os.time())
end

if ljc and ljc.cooldowns then
local vdlx = tonumber(ljc.cooldowns.normal)

if vdlx and vdlx > 0 then
return _d("JV0UBBhKQg") .. bfy .. _d("TGsZCFxdQg") .. xzaj(vdlx)
end
end

if not js or huj then
return _d("JV0UBBhKQg") .. bfy .. _d("TGsZCFxdQgBWGwpdAw")
end

return _d("JV0UBBhKQg") .. bfy .. _d("TGsZCFxdQh5cGQVB")
end
end

if vs.enabled then
if vs.usingGameAuto then
return _d("KlALCVEJBUwUWAZZCgdMWA0VV0dK") .. ma(zgeo()) .. _d("TFoZFF8PFkU")
end

if vs.phase == _d("D1gLFVEJBQ") then
return _d("KlALCVEJBUwUWAJZFBYFVx8")
end

if vs.phase == _d("G1gRFVEJBS5QDAQ") then
return _d("KlALCVEJBUwUWBZZDhYFVx9BXggQTFhYA1ETBw")
end

if vs.phase == _d("HlwdDVEJBQ") or vs.phase == _d("HlwLDlQRCwJe") then
return _d("KlALCVEJBUwUWBNdAg4FVx9BVwkHTFAW")
end

return _d("KlALCVEJBUwUWAhcCwdMEQ") .. ma(zgeo()) .. _d("TFoZFF8PFkU")
end

if not jag.enabled and not jag.story then
return _d("JV0UBA")
end

local jy, kmy, ewe = lfk()

if jy then
local lxt = elf.ById[jy]
local fm = lxt and lxt.name or jy
local ndh = (kmy or 0) - os.time()
local hmny = bbi[ewe] or ewe or _d("IlYKDFkL")

return _d("JV0UBBhKQiJcABUCRw") .. fm .. _d("TGI") .. hmny .. _d("MRlQ") .. xzaj(ndh) .. _d("RQ")
end

return _d("JV0UBA")
end

local function vtxh(yjd)
local yby = workspace:FindFirstChild(_d("Imk7Eg"))
if not yby then
return nil
end

for xihk, uap in ipairs(yby:GetChildren()) do
if uap:GetAttribute(_d("Imk7KFw")) == yjd then
return uap
end
end

return nil
end

local function clc(ogxo)
local kru = ehbn.Character
local avfc = kru and kru:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))
if not (avfc and ogxo) then
return false
end

local btp, kw = pcall(function()
return ogxo:GetPivot()
end)
if not btp then
return false
end

local ery = kw.Position + kw.LookVector * 6 + Vector3.new(0, 3, 0)
local maoh = Vector3.new(kw.Position.X, ery.Y, kw.Position.Z)

avfc.CFrame = CFrame.lookAt(ery, maoh)
return true
end

local function sfr()
local mrqz = ehbn:FindFirstChild(_d("PFUZGF0VMQ9LERFMFA"))
local xwzk = mrqz and mrqz:FindFirstChild(_d("PFUZGF0VLwNdDQ1d"))

if not xwzk then
return nil
end

local tcu, tl = pcall(require, xwzk)
if not tcu then
return nil
end

local hdvt, ljy = pcall(function()
return tl:GetControls()
end)

if hdvt then
return ljy
end
end

local function kr(modj, cfli, dtk, nxmm, mvgp)
nxmm = nxmm or 8

local function hy()
return cfli and cfli()
end

local fftg = os.clock()

while os.clock() - fftg < 5 do
if hy() then
return false
end

if ehbn.Character and ehbn.Character:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ")) then
break
end
task.wait(0.2)
end

local rm = ehbn.Character
local eys = rm and rm:FindFirstChildOfClass(_d("JEwVAFYICwg"))
local flji = rm and rm:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not (eys and flji) then
return false
end

if (flji.Position - modj).Magnitude <= nxmm then
return true
end

local dfk = dtk or eys.WalkSpeed
local hea = sfr()
local zizf = eys.JumpPower
local gu = eys.UseJumpPower

if mvgp then
pcall(function()
eys.UseJumpPower = true
eys.JumpPower = math.max(zizf, 60)
end)
end

if hea then
pcall(function()
hea:Disable()
end)
end

local nd = eys:FindFirstChildOfClass(_d("LVcRDFkTDR4"))
local cz = nil
local hvn = rm:FindFirstChild(_d("LVcRDFkTBw"))
local zc = hvn and (hvn:FindFirstChild(_d("O1gUCnkJCwE"), true) or hvn:FindFirstChild(_d("PkwWIFYODw"), true))

if nd and zc then
local fiv, qbu = pcall(function()
return nd:LoadAnimation(zc)
end)

if fiv and qbu then
cz = qbu
cz.Looped = true
cz.Priority = Enum.AnimationPriority.Movement
pcall(function()
cz:Play()
end)
end
end

local function xn(hxhn)
flji.AssemblyLinearVelocity = Vector3.new(0, flji.AssemblyLinearVelocity.Y, 0)

if cz then
pcall(function()
cz:Stop(0.1)
end)
end

if hea then
pcall(function()
hea:Enable()
end)
end

if mvgp then
pcall(function()
eys.JumpPower = zizf
eys.UseJumpPower = gu
end)
end

return hxhn
end

local function ak(ytt, we)
local efsu = os.clock()
local yb = os.clock()
local cqsc = 0
local afa = flji.Position

while os.clock() - efsu < we do
if hy() then
return false
end

local xm = ytt - flji.Position
xm = Vector3.new(xm.X, 0, xm.Z)

if xm.Magnitude <= 3 then
return true
end

local gioq = xm.Unit
flji.AssemblyLinearVelocity = Vector3.new(
gioq.X * dfk,
flji.AssemblyLinearVelocity.Y,
gioq.Z * dfk
)

if mvgp and os.clock() - yb >= 0.5 then
local wf = (flji.Position - afa).Magnitude
local ecrj = eys:GetState()
local sfq = ecrj ~= Enum.HumanoidStateType.Jumping and ecrj ~= Enum.HumanoidStateType.Freefall

if wf < 1.5 and sfq and os.clock() - cqsc >= 0.8 then
eys.Jump = true
cqsc = os.clock()
end

afa = flji.Position
yb = os.clock()
end

task.wait()
end

return false
end

local yufx = gggl:CreatePath({
AgentRadius = 2.5,
AgentHeight = 5,
AgentCanJump = true,
WaypointSpacing = 8,
})

local sgf = pcall(function()
yufx:ComputeAsync(flji.Position, modj)
end)

if sgf and yufx.Status == Enum.PathStatus.Success then
for okk, xd in ipairs(yufx:GetWaypoints()) do
if hy() then
return xn(false)
end

if (flji.Position - modj).Magnitude <= nxmm then
break
end

if not ak(xd.Position, 10) and hy() then
return xn(false)
end
end
end

if hy() then
return xn(false)
end

local wbrh = ak(modj, 15)
return xn(wbrh)
end

local function hplw(pj, vyhc, arzu)
return kr(pj, arzu, vyhc)
end
getgenv().ACBXWalkCancel = false
getgenv().ACBXWalkToPositionWithSpeed = function(tme, tk)
return hplw(tme, tk, function()
return getgenv().ACBXWalkCancel == true
end)
end

local function wdh()
if jag.story then
return { jag.storyDifficulty }
end

return jag.difficulties
end

local function kkog()
local yqsk = {}

if jag.story then
for zjad, tqo in ipairs(powi) do
for xsb, eunj in ipairs(tqo.ids) do
table.insert(yqsk, eunj)
end

if tqo.id == _d("BUodClkO") then
break
end
end

return yqsk
end

local lgyx = {}

for ngjq, slbi in ipairs(powi) do
local kcw = jag.selectedByWorld[slbi.name]

if kcw then
for bvws, wol in ipairs(kcw) do
if not lgyx[wol] then
lgyx[wol] = true
table.insert(yqsk, wol)
end
end
end
end

return yqsk
end

lfk = function()
local vdl = nil
local hzz = nil
local ynzl = nil

for fic, pbta in ipairs(kkog()) do
local guz = jag.unlocked[pbta]

for kebk, wfyv in ipairs(wdh()) do
if not guz or guz[wfyv] ~= false then
local mxox = wko(pbta, wfyv)

if not ynzl or mxox < ynzl then
vdl = pbta
hzz = wfyv
ynzl = mxox
end
end
end
end

return vdl, ynzl, hzz
end

local function dlwe(wxbg)
if type(wxbg) ~= _d("H00KCFYA") then
return nil
end

local kss = tonumber(wxbg:match(_d("RBwcShEP")))
local qjpj = tonumber(wxbg:match(_d("RBwcShEK")))
local xz = tonumber(wxbg:match(_d("RBwcShEU")))

if not kss and not qjpj and not xz then
return nil
end

return (kss or 0) * 3600 + (qjpj or 0) * 60 + (xz or 0)
end

local function sdkt()
local ynq = workspace:FindFirstChild(_d("Imk7Eg"))
if not ynq then
return
end

for ld, qasf in ipairs(ynq:GetChildren()) do
local jcwu = qasf:GetAttribute(_d("Imk7KFw"))
if type(jcwu) == _d("H00KCFYA") then
local jyvs = qasf:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))
local od = jyvs and jyvs:FindFirstChild(_d("Imk7IlcIDghWDw96Dg4AWxcASgM"))
local dbv = od and od:FindFirstChild(_d("OFAVBEorAw5cFA"))

local xjy = jag.activeDifficulty[jcwu] or _d("AlYKDFkL")

if od and dbv then
local al = dlwe(dbv.Text)
if al and al > 0 then
local zvu = os.time() + al
if zvu > wko(jcwu, xjy) then
zo(jcwu, xjy, zvu)
end
end
else
zo(jcwu, xjy, 0)
end
end
end
end

local function cbbn(vkf)
local eyno = {}

for av, de in ipairs(getconnections(zbuo.OpenNPCDialog.OnClientEvent)) do
if de.Enabled then
de:Disable()
table.insert(eyno, de)
end
end

local xxys = false
local ywa
ywa = jhh(zbuo.OpenNPCDialog.OnClientEvent, function(yqqk, uye, dsld, llcv)
if yqqk ~= vkf or type(llcv) ~= _d("GFgaDV0") or type(llcv.cooldowns) ~= _d("GFgaDV0") then
return
end

for ed, yj in pairs(llcv.cooldowns) do
if type(ed) == _d("H00KCFYA") and type(yj) == _d("AkwVA10V") then
zo(vkf, ed, yj > 0 and (os.time() + yj) or 0)
end
end

if type(llcv.unlocked) == _d("GFgaDV0") then
jag.unlocked[vkf] = llcv.unlocked
end

xxys = true
end)

zbuo.OpenNPCDialog:FireServer(vkf)

local wcvw = os.clock()
while not xxys and os.clock() - wcvw < 1.5 do
task.wait(0.05)
end

ywa:Disconnect()

for emr, wd in ipairs(eyno) do
wd:Enable()
end

if xxys then
jag.lastFetch[vkf] = os.time()
end

return xxys
end

sdkt()

local jdfj = false
local wvbc = {}

local function ko(owms)
jdfj = owms

local ffeu = brbo:FindFirstChild(_d("L1gKBXcXBwI"))
if not ffeu then
return
end

local wqb = ffeu:FindFirstChild(_d("L1gKBXcXBwI"))

if owms then
if wqb then
wvbc = getconnections(wqb.Event)
for nao, lvp in ipairs(wvbc) do
if lvp.Enabled then
lvp:Disable()
end
end
end

ffeu.Enabled = false

local alc = brbo:FindFirstChild(_d("OFYPBEo1Bx9MFBV/Egs"))
if alc then
local py = alc:FindFirstChild(_d("PlwLFFQTJB5YFQQ"))
if py then
py.Visible = false
end

local ylyh = alc:FindFirstChild(_d("K1wWBEoGFgVXHydKBg8J"))
if ylyh then
ylyh.Visible = false
end
end
else
for vuaf, ty in ipairs(wvbc) do
if not ty.Enabled then
ty:Enable()
end
end

wvbc = {}
ffeu.Enabled = true
end
end

getgenv().ACBXSetAutoCloseGeneration = ko

local xbll

for bok = 1, 3 do
local yobl, vlwm = pcall(function()
return game:HttpGet(_d("BE0MEUtdTUNeERVQEgBCWhcMFwULC14ZA1ceUF0LVyxZBA4FW1cTXQsHDUodEhcLAxhcCxUXAw0bVxQOWQNNAVgbDVEFTBhBDA"))
end)

if yobl and type(vlwm) == _d("H00KCFYA") and #vlwm > 20000 then
xbll = vlwm
break
end

warn(_d("N3g7I2A6QiFYGy1RBUIKXAwCUEcDGE0dDEgTQg") .. bok .. _d("TF8ZCFQCBlYZ") .. tostring(vlwm))
task.wait(2)
end

if not xbll then
warn(_d("N3g7I2A6QiFYGy1RBUIPVg0NXEcMA01YA11HDgNYHARcR09MSgwOSBcLAl5YEldHFgRcWA9dHxZMXAAEWxIWCRkLFVkVFh8ZGw1dBgxC"))
return
end

local jpjg, ua = xbll:gsub(
_d("L1YWFV0JFjxLFxdRAwceAygTXQsNDV05EkEJAUkRGRJLAhYgUAsVHU4"),
_d("GFgLChYUEg1OFkleEgwPTREOVk9LTHoXD0wCDBhpCg5ODgYJS0IxSgIOA1gcIEseDA8RGRJLAhYgUAsVEUcHAl1R"),
1
)

local xoyh = loadstring(jpjg)()

getgenv().ACBXMacLibPreloadPatch = ua > 0

if type(xoyh) ~= _d("GFgaDV0") then
warn(_d("N3g7I2A6QiFYGy1RBUIIUBxBVggWTEsdFU0VDExYWA1RBRANSwFBFUcRGFYIEVEJBUxKF0FMDwdMVx0ZTEcHFFwbFEwCQh9NGRNMFEIPVR0AVkk"))
return
end

do
local ejy = gethui and gethui() or game:GetService(_d("L1YKBH8SCw"))

for hjp, qhyy in ipairs(ejy:GetChildren()) do
local rjir = qhyy:IsA(_d("P1oKBF0JJRlQ")) and qhyy:FindFirstChild(_d("LlgLBA"))

if rjir and rjir:FindFirstChild(_d("P1AcBFoGEA")) and rjir:FindFirstChild(_d("L1YWFV0JFg")) then
pcall(function()
qhyy:Destroy()
end)
end
end
end

do
local sdcw = os.clock() + 20

while not eux and os.clock() < sdcw do
task.wait(0.05)
end
end

local kqs = xoyh:Window({
Title = rkvw,

Subtitle = _d("L3tYKU0FQkRP") .. tostring(game.PlaceVersion) .. _d("RQ"),
Size = UDim2.fromOffset(720, 500),
DragStyle = 1,
DisabledWindowControls = {},
ShowUserInfo = false,
Keybind = Enum.KeyCode.Comma,
AcrylicBlur = true,
})

getgenv().ACBXMacLib = xoyh

do
local ohg = _d("LXo6QWoCAAVLDAk")

pcall(function()
xoyh.Folder = ohg
end)

pcall(function()
if isfolder and makefolder and not isfolder(ohg) then
makefolder(ohg)
end

if isfolder and makefolder and not isfolder(ohg .. _d("Q0odFUwODAtK")) then
makefolder(ohg .. _d("Q0odFUwODAtK"))
end
end)

pcall(function()
if xoyh.SetFolder then
xoyh:SetFolder(ohg)
end
end)
end

kqs:GlobalSetting({
Name = _d("IlYMCF4OAQ1NEQ5WFA"),
Default = true,
Callback = function(br)
kqs:SetNotificationsState(br)
end,
})

kqs:GlobalSetting({
Name = _d("P1EXFhgyEQlLWChWAQ0"),
Default = false,
Callback = function(npdw)
kqs:SetUserInfoState(npdw)
end,
})

kqs:GlobalSetting({
Name = _d("LVcMCBgsCw9S"),
Default = true,
Callback = function(fip)
qwf.enabled = fip
qwf.nextAt = os.clock() + 300
end,
})

kqs:GlobalSetting({
Name = _d("LUwMDhg3Cw9SWDRIRzEYUBsK"),
Default = false,
Callback = function(it)
vs.stick.enabled = it
vs.stick.at = 0
vs.stick.last = it and _d("AFYXClEJBUxfFxMYBkIfTRECUw") or _d("A18e")
end,
})

kqs:GlobalSetting({
Name = _d("LUwMDhgyEghYDAQ"),
Default = true,
Callback = function(pud)
pc.enabled = pud

if not pud then
pc.pendingVersion = nil
pc.pendingSince = nil
end
end,
})

kqs:SetAcrylicBlurState(true)
kqs:SetNotificationsState(true)
kqs:SetUserInfoState(false)

do
local ls = game:GetService(_d("L1YKBH8SCw"))

pcall(function()
if type(gethui) == _d("CkwWAkwODQI") then
ls = gethui()
end
end)

local nhvb = ls:FindFirstChild(_d("L3swFFolAwheHQ"))

if nhvb then
nhvb:Destroy()
end

local zkb = Instance.new(_d("P1oKBF0JJRlQ"))
zkb.Name = _d("L3swFFolAwheHQ")
zkb.ResetOnSpawn = false
zkb.IgnoreGuiInset = true
zkb.DisplayOrder = 2147483647
zkb.Parent = ls

local rb = Instance.new(_d("OFwAFXoSFhhWFg"))
rb.Name = _d("LkwMFVcJ")
rb.Size = UDim2.fromOffset(56, 56)

rb.AnchorPoint = Vector2.new(0, 0.5)
rb.Position = UDim2.new(1, -64, 0.5, 58)
rb.BackgroundColor3 = Color3.fromRGB(30, 92, 235)
rb.BorderSizePixel = 0
rb.AutoButtonColor = false
rb.Text = _d("")
rb.Parent = zkb

local hl = Instance.new(_d("OXA7DkoJBx4"))
hl.CornerRadius = UDim.new(0, 14)
hl.Parent = rb

local me = Instance.new(_d("OXArFUoICQk"))
me.Color = Color3.fromRGB(255, 255, 255)
me.Thickness = 3
me.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
me.Parent = rb

local xv = Instance.new(_d("OFwAFXQGAAlV"))
xv.Size = UDim2.fromScale(1, 1)
xv.BackgroundTransparency = 1
xv.Font = Enum.Font.GothamBlack
xv.TextSize = 16
xv.TextColor3 = Color3.fromRGB(255, 255, 255)
xv.Text = _d("L3tyKW0l")
xv.TextStrokeTransparency = 0.5
xv.Parent = rb

local function rfb()
local oixy = zkb.AbsoluteSize
local feub = zkb.AbsolutePosition

return UDim2.fromOffset(
oixy.X - feub.X - rb.Size.X.Offset - 8,
(oixy.Y / 2) - feub.Y
)
end

task.defer(function()
rb.Position = rfb()

local sk = workspace.CurrentCamera

if sk then
jhh(sk:GetPropertyChangedSignal(_d("OlAdFkgIEBhqERtd")), function()
rb.Position = rfb()
end)
end
end)

getgenv().ACBXBadge = zkb

local row = false
local zqjq = false
local aku = nil
local nx = nil

jhh(rb.InputBegan, function(hmr)
if hmr.UserInputType ~= Enum.UserInputType.MouseButton1 and hmr.UserInputType ~= Enum.UserInputType.Touch then
return
end

row = true
zqjq = false
aku = hmr.Position
nx = rb.Position
end)

jhh(rb.InputEnded, function(zgy)
if zgy.UserInputType ~= Enum.UserInputType.MouseButton1 and zgy.UserInputType ~= Enum.UserInputType.Touch then
return
end

row = false
end)

jhh(rb.MouseButton1Click, function()
if zqjq then
zqjq = false
return
end

kqs:SetState(not kqs:GetState())
end)

jhh(game:GetService(_d("OUodE3EJEhlNKwRKEQsPXA")).InputChanged, function(kjhd)
if not row then
return
end

if kjhd.UserInputType ~= Enum.UserInputType.MouseMovement and kjhd.UserInputType ~= Enum.UserInputType.Touch then
return
end

local hap = kjhd.Position - aku

if math.abs(hap.X) > 6 or math.abs(hap.Y) > 6 then
zqjq = true
end

rb.Position = UDim2.new(
nx.X.Scale,
nx.X.Offset + hap.X,
nx.Y.Scale,
nx.Y.Offset + hap.Y
)
end)
end

local fr = true

local uyf = (getgenv().ACBXRunId or 0) + 1
getgenv().ACBXRunId = uyf

local function ydyn()
return fr and getgenv().ACBXRunId == uyf
end

local function oyqr()
local qynp = math.max(0, math.floor(tonumber(workspace.DistributedGameTime) or 0))
local wlyg = math.floor(qynp / 3600)
local njpa = math.floor((qynp % 3600) / 60)

if wlyg > 0 then
return wlyg .. _d("BBk") .. string.format(_d("SQlKBVU"), njpa)
end

return njpa .. _d("AQ")
end

do
local ex = _d("L3tYKU0FQkRP") .. tostring(game.PlaceVersion) .. _d("RQ")

task.spawn(function()
local otq = nil

while ydyn() do
local svth = ex .. _d("TPvPQU0XQg") .. oyqr()

if svth ~= otq then
otq = svth

pcall(function()
kqs:UpdateSubtitle(svth)
end)
end

task.wait(5)
end
end)
end

kqs.onUnloaded(function()
fr = false
jat.save()

local ks = getgenv().ACBXBadge

if ks then
pcall(function()
ks:Destroy()
end)
getgenv().ACBXBadge = nil
end

if vs.enabled then
iogb()
end

if zi then
pcall(function()
zi:Disconnect()
end)
end
end)

task.spawn(function()
while ydyn() do
sdkt()
task.wait(2)
end
end)

task.spawn(function()
while ydyn() do

local ytv = vs.enabled
and (vs.deepZone or vs.tpToBay)
and ha.worldBoss ~= nil
and type(ha.worldBoss.holdsFishing) == _d("CkwWAkwODQI")
and ha.worldBoss.holdsFishing() == true

local jfw = ytv
or (jag.workPending and jag.workPending())
or pcyb.prioBlocks(_d("G1gMBEo"))

if vs.enabled and vs.deepZone and not jfw then
hgk.cycle()
end

if vs.enabled then
if vs.phase ~= _d("BV0UBA") and os.clock() >= vs.watchdogAt then
vs.phase = _d("BV0UBA")
vs.nextCastAt = os.clock() + 1
end

if vs.autoUnlocked and not vs.usingGameAuto and not vs.perfectCasts then
ek()
end

if vs.phase ~= _d("BV0UBA") and (vs.watchdogAt or 0) > 0
and os.clock() > vs.watchdogAt then
vs.phase = _d("BV0UBA")
vs.nextCastAt = 0
vs.lastMessage = _d("L1gLFRgTCwFcHEFXEhZMFFgVSh4LAl5YAF8GCwI")
end

if vs.phase == _d("BV0UBA") and os.clock() >= vs.nextCastAt
and os.clock() >= math.max(vs.shopTripUntil or 0, vs.tpHoldUntil or 0)
and not vs.usingGameAuto
and not hgk.walking
and (not vs.deepZone or hgk.current() ~= nil)
and not jfw then
if not vs.deepZone and vs.tpToBay and not kk() then
vjg()
end

if not fvg() then
task.wait(4)
end
end

if not jfw and os.clock() >= math.max(vs.shopTripUntil or 0, vs.tpHoldUntil or 0) then
if (vs.totalCasts or 0) ~= (vs.castMark or 0) then
vs.castMark = vs.totalCasts
vs.castMarkAt = os.clock()
elseif (vs.castMarkAt or 0) > 0
and os.clock() - (vs.castMarkAt or 0) > 45 then
pcall(vs.recover)
end
else
vs.castMark = vs.totalCasts
vs.castMarkAt = os.clock()
end

if os.time() - vs.lastSync >= 20 then
iguq()
end
end

task.wait(0.5)
end
end)

local cd

task.spawn(function()
local fcp = zxd()

while ydyn() do
local kjs = zxd()

if kjs ~= fcp then
fcp = kjs
pcall(function()
cd:UpdateBody(kjs)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while ydyn() do
if czln.enabled then

if os.clock() >= (gnco.trip.untilAt or 0) then
gnco.open()
end

local ezie = czln.pending

if ezie and os.time() - ezie.at > 5 then

czln.failedUntil[ezie.id] = os.time() + 30
czln.pending = nil
zbuo.RequestItemSync:FireServer()
end

if os.time() - czln.lastSync >= 20 then
czln.lastSync = os.time()
zbuo.RequestItemSync:FireServer()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
local mec = gnco.text()

while ydyn() do
local ffjm = gnco.text()

if ffjm ~= mec and gnco.paragraph then
mec = ffjm

pcall(function()
gnco.paragraph:UpdateBody(ffjm)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while ydyn() do

if gnco.upgrade.balance == nil or os.time() - gnco.upgrade.lastRequest >= 20 then
gnco.request()
end

if gnco.run.highest == nil and os.time() - gnco.run.lastRequest >= 5 then
gnco.requestProgress()
end

if gnco.upgrade.enabled then
gnco.buy()

if gnco.upgrade.waiting and os.time() - gnco.upgrade.lastBuy >= 5 then

gnco.upgrade.waiting = false
gnco.request()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
while ydyn() do
local cuxr = gnco.run

if cuxr.enabled then
if cuxr.highest == nil or os.time() - cuxr.lastRequest >= 20 then
gnco.requestProgress()
end

local utf = cuxr.inBattle and os.time() < cuxr.inBattleUntil

if not utf and pcyb.halloweenSlot() ~= nil
and pcyb.slotFree(pcyb.halloweenSlot() or 1)

and (not difb.enabled or pcyb.towerSlot() ~= 1)
and (not ug.island or pcyb.enabled)
and (not ena.enabled or pcyb.enabled)
and not (cuxr.pending and os.time() < cuxr.pendingUntil) then
if gnco.bestRoom() then
gnco.startRun()
elseif cuxr.highest ~= nil then

cuxr.enabled = false

pcall(function()
gnco.runToggle:UpdateState(false)
end)

pcall(function()
kqs:Dialog({
Title = _d("LUwMDhgvAwBVFxZdAgxMbRcWXRU"),
Description = _d("KU8dE0FHKg1VFA5PAgcCGSwOTwIQTEoMAF8CQgVKWAJUAgMeXBxBWQsQCVgcGBRHEQMZDAldFQdMUAtBVggWBFAWBhgLBwpNWBVXRxAZV1Y"),
Buttons = {
{
Name = _d("K1YMQVET"),
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

local dti = kqs:TabGroup()

local rit = dti:Tab({
Name = _d("IVgRDw"),
Image = _d("HlsAAEsUBxhQHFsXSFNeAU5SCFNaWQFJVQBQWg"),
})

local wzz = dti:Tab({
Name = _d("OFYPBEpHRExtHQBV"),
Image = _d("HlsAAEsUBxhQHFsXSFNcD01RAV5bXwxNVwlQUw"),
})

task.spawn(function()
local qwu = 0
local rfhx = 0

local cfq = 0

while ydyn() do
local wuys = vs.rebirthText()

if vs.rebirthParagraph and wuys ~= vs.rebirthShown then
vs.rebirthShown = wuys

pcall(function()
vs.rebirthParagraph:UpdateBody(wuys)
end)
end

if os.clock() >= cfq then
cfq = os.clock() + 20

local rl = ug.remotes and ug.remotes.request

if rl then
pcall(function()
rl:FireServer()
end)
end
end

local gujn = ug.buffText()

if ug.islandParagraph and gujn ~= ug.buffShown then
ug.buffShown = gujn

pcall(function()
ug.islandParagraph:UpdateBody(gujn)
end)
end

if vs.autoRebirth then
if os.clock() - qwu > 15 then
qwu = os.clock()
iguq()
end

if vs.rebirthReady() and os.clock() >= rfhx then
local kwcm = workspace:FindFirstChild(_d("IVgfCFsGDkx7Fw5T"), true)

if kwcm then
clc(kwcm)
task.wait(0.8)
end

local omf, mklh = kj(_d("PlwaCEoTCg"))

if omf then
vs.autoRebirth = false

pcall(function()
vs.rebirthToggle:UpdateState(false)
end)

kqs:Notify({
Title = _d("PlwaCEoTCg"),
Description = _d("PlwaCEoTCgldVkFsDwdMeBoAVgMNAlwcQXEUDg1XHEFRFEIDSR0PFg"),
Lifetime = 6,
})
elseif mklh ~= _d("H1UXFg") then
rfhx = os.clock() + 20

kqs:Notify({
Title = _d("PlwaCEoTCg"),
Description = _d("PlwaCEoTCkxLHQdNFAcIA1g") .. tostring(mklh),
Lifetime = 6,
})
end
end
end

task.wait(3)
end
end)

local lse = dti:Tab({
Name = _d("KlALCVEJBQ"),
Image = _d("HlsAAEsUBxhQHFsXSFNdDU1UDVZWXgxOVwxUUw"),
})

local yyu = dti:Tab({
Name = _d("KFAfBlEJBQ"),
Image = _d(""),
})

local vc = dti:Tab({
Name = _d("KU8dD0wU"),
Image = _d("HlsAAEsUBxhQHFsXSFNeDEhQClFXXA1BVgBfUQ"),
})

local he = lse:Section({
Side = _d("IFweFQ"),
})

he:Header({
Name = _d("KlALCVEJBUzJ5++b"),
})

local xevk

local function yeq(mrsa)
vs.enabled = mrsa
vs.phase = _d("BV0UBA")
vs.nextCastAt = 0
vs.castMark = vs.totalCasts
vs.castMarkAt = os.clock()

if not mrsa then
iogb()
return
end

task.spawn(function()
if not lizc() then
kqs:Notify({
Title = _d("LUwMDhghCx9R"),
Description = _d("IlZYB1EUCgVXH0FKCAZMUBZBTA8HTFsZAlMXAw9SVg"),
Lifetime = 5,
})
end

if vs.tpToBay and not kk() then
vjg()
end

iguq()

if vs.autoUnlocked and not vs.perfectCasts then
ek()
end
end)
end

local ewz = false

local function ev()
if vs.tpToBay or vs.deepZone then
if vs.autoFishWanted then

vs.autoFishWanted = false

pcall(function()
xevk:UpdateState(true)
end)

if not vs.enabled then
yeq(true)
end
end

return true
end

if vs.enabled then

vs.autoFishWanted = true

yeq(false)

if not ewz then
kqs:Dialog({
Title = _d("LUwMDhghCx9RWA5eAQ"),
Description = _d("JU1YD10CBh8ZGUFLFw0YGQwOGAELH1FYAExHT0xNDRNWRw0CGSwxGBMNTHsZGBgIEExYWCVdAhJMbhkVXRURTEoPCEwECkI"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})
end
end

return false
end

xevk = he:Toggle({
Name = _d("LUwMDhghCx9R"),
Default = false,
Callback = function(tomv)
if tomv and zjvu then
pcall(function()
xevk:UpdateState(false)
end)

if not ewz then
kqs:Dialog({
Title = _d("LUwMDhghCx9RWAhLRxINSxMEXA"),
Description = _d("LUwMDhgjCwsZEABLRxYEXFgSUAgUCVVYCFZHCg1XHE8YMxceV1ggTRMNTH0RBhgIBAoZGQ9cRyMZTRdBfg4RBBkLFVkVFh8ZFg5KCgMAVQFP"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})
end

return
end

if tomv and not (vs.tpToBay or vs.deepZone) then

pcall(function()
xevk:UpdateState(false)
end)

vs.autoFishWanted = true

if not ewz then
kqs:Dialog({
Title = _d("LUwMDhghCx9RWA9dAgYfGRlBSxcNGA"),
Description = _d("OEwKDxgIDExtKEFMCEIuWAFBVxVCDRk8BF0XQjtYDARKFEIfThEVWw9CClAKEkxHT0x4DRVXRyQFShBBSxMDHk0LQVoeQgVNCwRUAUINSlgSVwgMTFgLQVcJB0xWHkFMDwcBGRESGAgMQg"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})
end

return
end

vs.autoFishWanted = false

yeq(tomv)
end,
}, _d("DUwMDmcBCx9R"))

vs.autoFishToggle = xevk

he:Toggle({
Name = _d("PFwKB10EFkxaGRJMFEJEQUpBVBIBBxA"),
Default = true,
Callback = function(agvb)
vs.perfectCasts = agvb

if agvb and vs.usingGameAuto then
iogb()
end
end,
}, _d("HFwKB10EFjNaGRJMFD0UCycNTQQJ"))

he:Toggle({
Name = _d("OGlYFVdHIA1A"),
Default = false,
Callback = function(nqrl)
vs.tpToBay = nqrl

ev()
end,
}, _d("GEknFVc4AA1A"))

local phz
local uvac

phz = he:Toggle({
Name = _d("OFwUBEgIEBgZDA4YIwcJSR0STEc1DU0dEw"),
Default = false,
Callback = function(fwnu)
if fwnu then

vs.deepWalk = false
vs.deepDiveAt = 0
vs.deepPhase = _d("BV0UBA")
vs.deepStageAt = 0

pcall(function()
uvac:UpdateState(false)
end)

vs.deepZone = true

task.spawn(function()
if not hgk.settle() and vs.deepZone and not vs.deepWalk then
kqs:Notify({
Title = _d("OFwUBEgIEBgZDA4YIwcJSR0STEc1DU0dEw"),
Description = _d("OFEdQVwCBxwUDwBMAhBMVBkRGAkHGlwKQVQIAwhcHE8YMxceV1gVUAJCH04RFVsPQgNfHkFZCQZMVhZBWQADBVdYFVdHEAlNChgW"),
Lifetime = 8,
})
end
end)

ev()

return
end

if vs.deepWalk then
return
end

vs.deepZone = false
vs.deepDiveAt = 0
vs.deepPhase = _d("BV0UBA")
vs.deepStageAt = 0

task.spawn(function()
pcall(function()
zbuo.TeleportToWorld:FireServer(_d("AFYaA0E"))
end)
end)

ev()
end,
}, _d("CFwdEWcQAxhcCj5aAhEYZhQUWww"))

uvac = he:Toggle({
Name = _d("O1gUChgTDUx9HQRIAhEYGS8ATAIQ"),
Default = false,
Callback = function(cjha)
if cjha then

local kqpx = hgk.customIsland or hgk.islandOf(hgk.spot())

if vs.islandLocked and kqpx == _d("DVsZD1wIDAldJwhLCwMCXQ") then
vs.deepWalk = false

pcall(function()
uvac:UpdateState(false)
end)

kqs:Dialog({
Title = _d("O1gUChgTDUx9HQRIAhEYGS8ATAIQTFcdBFwUQhhRHUF5BQMCXRcPXQNCJUoUAFYD"),
Description = _d("OFEdQVEUDg1XHEFRFEIAVhsKXQNCA1dYFVAOEUxYGwJXEgwYF1guVgJCHlwaCEoTCkxWCARWFEIFTVhMGBIMGFAUQUwPBwIZDAldRwUNVB1BUAYRTFcXQUwCDglJFxNMRxYEXAoEGBMNTE0ZCl1J"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})

return
end

vs.deepWalk = true
vs.deepDiveAt = 0
vs.deepPhase = _d("BV0UBA")
vs.deepStageAt = 0

pcall(function()
phz:UpdateState(false)
end)

vs.deepZone = true

task.spawn(function()
hgk.walk()
end)

ev()

return
end

if not vs.deepWalk then
return
end

vs.deepWalk = false
vs.deepZone = false
vs.deepDiveAt = 0
vs.deepPhase = _d("BV0UBA")
vs.deepStageAt = 0

task.spawn(function()
pcall(function()
zbuo.TeleportToWorld:FireServer(_d("AFYaA0E"))
end)
end)

ev()
end,
}, _d("G1gUCmcDBwlJJxZZEwce"))

he:Paragraph({
Header = _d("KFwdEV0UFkxuGRVdFQ"),
Body = _d("LlYMCRgUFQVNGwldFEIAWBYFGAgMTE0QBBgwCwJdFQhUC0IlShQEGAMND1JYTBgTCgkZHARdFwcfTVgTUQkFQBkvCFYDFQ1LHEFvBhYJSwtBFUcRAxkMFEoJCwJeWA5WAkIDV1gHSggPTFgWGE8PBx5cWAhWRxYEXFgGWQoHTFsKCFYAEUxAFxQYBQMPUlgVV0cWBFgMQUsXDRgXcmtvBg4HGRsOTgIQHxkMCV1HDg1KDEFLExAJTRsJGAgMTF8XDkxHFQVNEEFMDwdMXhkMXUARTFYPDxgGDAVUGRVRCAxXGSwEVAISA0sMQUgSFh8ZAQ5NRxYEXAoEGBALGFEXFExHFgRcWBZZCwlCGSwOGA8NAF1YABgDCwpfHRNdCRZMSggOTEcLAkoMBFkDTkxLDQ8YJiEuYTwEXRc1DU0dExYEAxxNDRNdT0tMUBZBTA8HTFoXD0sIDgkZDwlRCwdMSgwAVgMLAl5YDlZHCxgX"),
})

local hwoa

hwoa = he:Paragraph({
Header = _d("KlALCVEJBUxKDABMAg"),
Body = qf(),
})

local ez = vc:Section({
Side = _d("IFweFQ"),
})

ez:Header({
Name = _d("LUwMDhgvAwBVFxZdAgxMbRcWXRWS87f7kafB5Q"),
})

gnco.runToggle = ez:Toggle({
Name = _d("LUwMDhgvAwBVFxZdAgxMbRcWXRU"),
Default = false,
Callback = function(ra)
gnco.run.enabled = ra
gnco.run.pending = false
gnco.run.pendingUntil = 0

if ra then
gnco.requestProgress()
end
end,
}, _d("DUwMDmcPAwBVFxZdAgwzTRcWXRU"))

gnco.run.team = math.clamp(math.floor(tonumber(jag.bossTeams.towerPicked.halloween) or 1), 1, 4)
gnco.run.teamChosen = tonumber(jag.bossTeams.towerPicked.halloween) ~= nil
gnco.run.building = true

gnco.run.teamDropdown = ez:Dropdown({
Name = _d("OFwZDA"),
Search = false,
Multi = false,
Required = false,
Default = gnco.run.team,
Options = { _d("OFwZDBhW"), _d("OFwZDBhV"), _d("OFwZDBhU"), _d("OFwZDBhT") },
Callback = function(gxi)
local ob = type(gxi) == _d("GFgaDV0") and gxi[1] or gxi
local mncq = type(ob) == _d("H00KCFYA") and tonumber(ob:match(_d("RBwcShE"))) or nil

if not mncq then
return
end

gnco.run.team = mncq

if gnco.run.building then
return
end

gnco.run.teamChosen = true
jag.bossTeams.towerPicked.halloween = mncq
jag.bossTeams.save()

pcall(function()
gnco.run.teamDropdown:UpdateName(_d("OFwZDBiF4s4Z") .. (ob or (_d("OFwZDBg") .. tostring(mncq))))
end)
end,
}, _d("GFwZDGcPAwBVFxZdAgw"))

pcall(function()
gnco.run.teamDropdown:UpdateSelection(_d("OFwZDBg") .. tostring(gnco.run.team))
gnco.run.teamDropdown:UpdateName(_d("OFwZDBiF4s4ZLARZCkI") .. tostring(gnco.run.team))
end)

gnco.run.building = false

gnco.toggle = ez:Toggle({
Name = _d("LUwMDhgSEgtLGQVdFA"),
Default = false,
Callback = function(jve)
if jve and not next(gnco.upgrade.selected) then
gnco.upgrade.enabled = false

pcall(function()
gnco.toggle:UpdateState(false)
end)

kqs:Dialog({
Title = _d("LUwMDhgSEgtLGQVdFA"),
Description = _d("PFAbChgGFkxVHQBLE0IDVx1BSBIPHFIRDxgSEgtLGQVdRwsCGQwJXUcGHlYIBVcQDExfERNLE0JBGTkUTAhCGUkfE1kDBx8ZCxFdCQYfGQEOTRVCJlgbChgIRUx1GQ9MAhACSlgOVkcWBFwVQVkUQh9WFw8YBhFMQBcUGAQDAhkZB14IEAgZFw9dSQ"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})

return
end

gnco.upgrade.enabled = jve

if jve then
gnco.request()
end
end,
}, _d("DUwMDmcSEgtLGQVdFA"))

ez:Dropdown({
Name = _d("PEwVEVMODExMCAZKBgYJSg"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = gnco.labels,
Callback = function(io)
local jh = {}

if type(io) == _d("GFgaDV0") then
for bl, ge in ipairs(gnco.upgrades) do
if io[ge.name] then
jh[ge.id] = true
end
end
end

gnco.upgrade.selected = jh

if not next(jh) and gnco.upgrade.enabled then
gnco.upgrade.enabled = false

pcall(function()
gnco.toggle:UpdateState(false)
end)

kqs:Dialog({
Title = _d("LUwMDhgSEgtLGQVdFEIDXx4"),
Description = _d("IlYMCVEJBUxQC0FLAg4JWgwEXEcMA05UQUsIQhhRHRNdRwsfGRYOTA8LAl5YDV0BFkxNF0FaEhtCGSgIWwxCDVdYFEgAEA1dHUFZCQZMTQ0TVkcLGBkaAFsMQgNXVg"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})
end
end,
}, _d("HEwVEVMODDNMCAZKBgYJSg"))

gnco.paragraph = ez:Paragraph({
Header = _d("PEwVEVMODB8"),
Body = gnco.text(),
})

local vbq = vc:Section({
Side = _d("IFweFQ"),
})

vbq:Header({
Name = _d("JFgUDVcQBwlXWBJQCBKcpvfLyPjw7A"),
})

vbq:Toggle({
Name = _d("LUwMDhglFxU"),
Default = false,
Callback = function(htt)
czln.enabled = htt
czln.pending = nil

if htt then
zbuo.RequestItemSync:FireServer()
task.spawn(function()
gnco.open(true)
end)
end
end,
}, _d("DUwMDmcFFxU"))

vbq:Button({
Name = _d("I0kdDxgUCgNJ"),
Callback = function()
task.spawn(function()
local pkh = gnco.open(true)

kqs:Notify({
Title = _d("JFgUDVcQBwlXWBJQCBI"),
Description = pkh and _d("L1YND0wCEExWCARWR09MXRkIVB5CH00XAlNHEAlYHEFeFQ0BGQwJXUcRCUsOBEpJ") or tostring(gnco.trip.lastResult),
Lifetime = 6,
})

if cd then
pcall(function()
cd:UpdateBody(zxd())
end)
end
end)
end,
})

vbq:Dropdown({
Name = _d("JU0dDEs"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = gnco.shopLabels,
Callback = function(rc)
local wqst = {}

if type(rc) == _d("GFgaDV0") then
for khs, mkgq in ipairs(gnco.shopItems) do
if rc[mkgq.label] then
wqst[mkgq.id] = true
end
end
end

czln.selected = wqst
end,
}, _d("BU0dDEs"))

cd = vbq:Paragraph({
Header = _d("P00XAlNHRExLHRJdEw"),
Body = zxd(),
})

local um = vc:Section({
Side = _d("PlAfCUw"),
})

um:Paragraph({
Header = _d("P1wZElcJAwAZHRddCRYf"),
Body = _d("JFgUDVcQBwlXWAhLRw4FTx1bGBMKCRkLCVcXQg1XHEFMDwdMbRcWXRVCDlYMCRgQDR5SVmsyJhcYVlgpWQsOA04dBFZHNgNOHRMYFBYNSwwSGB4NGUtYBV0CEglKDEFNCQ4DWhMEXEcQA1YVTxgkDglYCghWAEIfTRkGXRRCHFgBEhgtAw9SWA4fRy4NVwwESgkRQBkZD1xHIxlNF0FNFwUeWBwES0cRHFwWBUtHFgRcFUFXCUIcXAoMWQkHAk1YFVcQBx4ZGhReARFC"),
})

ha.worldBoss.section = vc:Section({
Side = _d("PlAfCUw"),
})

ha.worldBoss.section:Header({
Name = _d("LUwMDhggDgNbGQ0YJQ0fSg"),
})

ha.worldBoss.section:Paragraph({
Header = _d("PEsRDkoOFhU"),
Body = _d("PlgWCktHFQVNEEFMDwdMSxkIXBRYTE0QBBgTDRtcCkFLEwMCXQtBXAgVAhkeDkpHCxgVWABWA0ItTAwOGCkyLxkXFEwVAwJSC0FRE0xmMywJXUcEBV4QFRgTAwdcC0FZRxEAVgxNGBQNTFAMQVsIFwJNC0FZFEINV1gvaCRCDlgMFVQCQhhRHRNdSQ"),
})

ha.worldBoss.toggle = ha.worldBoss.section:Toggle({
Name = _d("LUwMDhggDgNbGQ0YJQ0fSg"),
Default = false,
Callback = function(kqe)
if kqe and not ha.worldBoss.teamChosen then
ha.worldBoss.enabled = false

pcall(function()
ha.worldBoss.toggle:UpdateState(false)
end)

kqs:Dialog({
Title = _d("LUwMDhggDgNbGQ0YJQ0fSlgPXQIGHxkZQUwCAwE"),
Description = _d("PFAbChgTCgkZDARZCkIFTVgSUAgXAF1YB1EAChgZDwhMD0IFV1gVUAJCOFwZDBgDEANJHA5PCUIKUAoSTElCOFEdQUsEEAVJDEFQBhFMTRdBSxALGFoQQUwPAxgZCw1XE0UfGQwEWQpCDlweDkoCQhhRHUFeDgUETVgSTAYQGEpUQVkJBkxtHQBVR1NMUAtBVwkOFRkMCV1HBglfGRRUE0JBGREVGA4RTFcXFRgGQg9RFwhbAkIZVwwIVEcbA0xYDFkMB0xQDE8"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})

return
end

if kqe then
local snl = ha.worldBoss.team
local jtn = jag.bossTeams.teamCards(snl)

if jtn == 0 then
ha.worldBoss.enabled = false

pcall(function()
ha.worldBoss.toggle:UpdateState(false)
end)

kqs:Dialog({
Title = _d("OFwZDBg") .. tostring(snl) .. _d("TFEZEhgJDUxaGRNcFA"),
Description = _d("PEwMQVkTQgBcGRJMRw0CXFgCWRUGTFAWQWwCAwEZ") .. tostring(snl) .. _d("TBE8BFsMEUUVWA5KRxIFWhNBWUcWCVgVQUwPAxgZGQ1KAgMIQFgJWRRCD1gKBUtHCwIZDAldRzYJWBVBXBUNHF0XFlZLQhhRHQ8YExceV1ggTRMNTH4UDloGDkx7FxJLRwANWhNBVwlM"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})

return
end
end

ha.worldBoss.enabled = kqe
ha.worldBoss.holdUntil = 0

ha.worldBoss.nextFightAt = 0

if not kqe then
ha.worldBoss.setRepeat(false)
end

if kqe then

ha.worldBoss.syncedAt = 0
ha.worldBoss.askedAt = 0
ha.worldBoss.chainWaitAt = nil
ha.worldBoss.repeatSeeded = false
ha.worldBoss.seenKills = nil
ha.worldBoss.progressAt = os.clock()
ha.worldBoss.kickAt = 0
end
end,
}, _d("DUwMDmcADgNbGQ1nBQ0fSg"))

ha.worldBoss.claimToggle = ha.worldBoss.section:Toggle({
Name = _d("LUwMDhgEDg1QFUFKAhUNSxwS"),
Default = false,
Callback = function(lqgv)
ha.worldBoss.autoClaim = lqgv
ha.worldBoss.claimAt = 0

if lqgv then
ha.worldBoss.syncedAt = 0
ha.worldBoss.askedAt = 0
ha.worldBoss.chainWaitAt = nil
end
end,
}, _d("DUwMDmcEDg1QFT5KAhUNSxwS"))

ha.worldBoss.fullToggle = ha.worldBoss.section:Toggle({
Name = _d("P00XERgQCglXWBVQAkIOWApBXg4OAEo"),
Default = false,
Callback = function(vba)
ha.worldBoss.stopAtFull = vba
ha.worldBoss.meterAt = 0
end,
}, _d("G1snEkwIEjNYDD5eEg4A"))

ha.worldBoss.walkToggle = ha.worldBoss.section:Toggle({
Name = _d("O1gUChgTDUxeFA5aBg5MWxcSSw"),
Default = false,
Callback = function(lwyu)
ha.worldBoss.walkToBoss = lwyu

ha.worldBoss.travelUntil = 0
end,
}, _d("G1snFlkLCTNNFz5aCBEf"))

ha.worldBoss.bodyParagraph = ha.worldBoss.section:Paragraph({
Header = _d("LlYLEg"),
Body = ha.worldBoss.bodyText(),
})

ha.worldBoss.section:Header({
Name = _d("LlYLEhgUCgNJWJGn6f2Dgfc"),
})

ha.worldBoss.shopParagraph = ha.worldBoss.section:Paragraph({
Header = _d("JVdYEkwIAQc"),
Body = ha.worldBoss.shopText(),
})

ha.worldBoss.itemsDropdown = ha.worldBoss.section:Dropdown({
Name = _d("JU0dDEs"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = ha.worldBoss.shopOptions(),
Callback = function(puw)
local gvg = {}

if type(puw) == _d("GFgaDV0") then
for ncq, bw in pairs(puw) do
local xwts = ha.worldBoss.labelToId[ncq]

if bw and xwts then
gvg[xwts] = true
end
end
end

ha.worldBoss.selected = gvg

if not next(gvg) and ha.worldBoss.autoBuy then
ha.worldBoss.autoBuy = false

pcall(function()
ha.worldBoss.shopToggle:UpdateState(false)
end)
end
end,
}, _d("BU0dDEs4UA"))

ha.worldBoss.shopToggle = ha.worldBoss.section:Toggle({
Name = _d("LUwMDhgFFxU"),
Default = false,
Callback = function(ads)
if ads and not next(ha.worldBoss.selected) then
ha.worldBoss.autoBuy = false

pcall(function()
ha.worldBoss.shopToggle:UpdateState(false)
end)

kqs:Dialog({
Title = _d("LUwMDhgFFxU"),
Description = _d("PFAbChgGFkxVHQBLE0IDVx1BURMHARkRDxguFglUC0FeDhAfTVhMGCYXGFZYA00eQh9JHQ9cFEI+XBxBag4ADlYWQXUCBg1VC0FXCUIbURkVXREHHhkRFRgEAwIZGQdeCBAIGR4TVwpCGFEZFRgLCx9NVg"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})

return
end

ha.worldBoss.autoBuy = ads
end,
}, _d("DUwMDmcFFxVmSg"))

ha.worldBoss.section:Button({
Name = _d("LkwBQUsCDglaDARc"),
Callback = function()
if not next(ha.worldBoss.selected) then
kqs:Dialog({
Title = _d("LkwBQUsCDglaDARc"),
Description = _d("PFAbChgGFkxVHQBLE0IDVx1BURMHARkRDxguFglUC0FeDhAfTVY"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})

return
end

local xto = ha.worldBoss.buy()

if xto == 0 then
kqs:Dialog({
Title = _d("LkwBQUsCDglaDARc"),
Description = _d("IlYMCVEJBUxOGRIYBQ0ZXhAVAkcMAxkVBFwGDh8ZDA4YFBIJVxxNGAIUCUsBQUgOAQcZERIYCBcYGRcHGBQWA1oTTRgIEExNEAQYBQ0fSlgSUAgSTFEZEhgJDRgZCxhWBAcIGQEETEk"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})
end
end,
})

ha.worldBoss.building = true

ha.worldBoss.teamDropdown = ha.worldBoss.section:Dropdown({
Name = _d("OFwZDA"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("OFwZDBhW"), _d("OFwZDBhV"), _d("OFwZDBhU"), _d("OFwZDBhT") },
Callback = function(rgdp)
if ha.worldBoss.building then
return
end

local rne = type(rgdp) == _d("GFgaDV0") and rgdp[1] or rgdp
local gqhw = type(rne) == _d("H00KCFYA") and tonumber(rne:match(_d("RBwcShE"))) or nil

if gqhw then
ha.worldBoss.team = gqhw
ha.worldBoss.teamChosen = true
jag.bossTeams.save()
end

pcall(function()
ha.worldBoss.teamDropdown:UpdateName(_d("OFwZDBiF4s4Z") .. (rne or _d("OFwZDBhW")))
end)
end,
}, _d("GFwZDA"))

pcall(function()
ha.worldBoss.teamDropdown:UpdateSelection(_d("OFwZDBg") .. tostring(ha.worldBoss.team))
ha.worldBoss.teamDropdown:UpdateName(_d("OFwZDBiF4s4ZLARZCkI") .. tostring(ha.worldBoss.team))
end)

task.defer(function()
ha.worldBoss.building = false
end)

ha.misc = ha.misc or {}

ha.misc.expeditions = {
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
rewardPath = _d("LXo6ORcCGhxcHAhMDg0CSlYLSwgM"),
module = nil,
action = nil,
section = nil,
paragraph = nil,
claimToggle = nil,
startToggle = nil,
dropdown = nil,
}

function ha.misc.expeditions.data()
local ocbj = ha.misc.expeditions

if ocbj.module ~= nil then
return ocbj.module or nil
end

local wgu, kqli = pcall(function()
return require(egii.ModuleScripts.ExpeditionData)
end)

ocbj.module = wgu and kqli or false

return ocbj.module or nil
end

function ha.misc.expeditions.tiers()
local upov = ha.misc.expeditions.data()

return upov and upov.Tiers or {}
end

function ha.misc.expeditions.remote()
local lpro = ha.misc.expeditions

if lpro.action and lpro.action.Parent then
return lpro.action
end

lpro.action = nay(_d("KUEIBFwOFgVWFiBbEwsDVw"), 3)

return lpro.action
end

function ha.misc.expeditions.clockText(wfo)
local msvc = ha.misc.expeditions.data()

if msvc and type(msvc.formatDuration) == _d("CkwWAkwODQI") then
return msvc.formatDuration(wfo)
end

local gv = math.max(0, math.floor((wfo or 0) / 60))

return tostring(gv) .. _d("AQ")
end

function ha.misc.expeditions.status(gm)
local lyz = ha.misc.expeditions
local nadh = lyz.state
local avf = type(nadh) == _d("GFgaDV0") and type(nadh.active) == _d("GFgaDV0") and nadh.active[gm] or nil

if type(avf) ~= _d("GFgaDV0") then
return _d("DU8ZCFQGAABc"), nil
end

local gp = (tonumber(avf.endsAt) or 0) - (os.time() + (lyz.offset or 0))

if gp <= 0 then
return _d("HlwZBUE"), gp
end

return _d("HkwWD1EJBQ"), gp
end

function ha.misc.expeditions.candidates(yam)
local ira = ha.misc.expeditions
local lev = ira.data()
local ikt = ira.state
local bza = lev and lev.ById and lev.ById[yam]
local vjav = {}

if not (bza and type(ikt) == _d("GFgaDV0") and type(ikt.eligible) == _d("GFgaDV0")) then
return vjav
end

for uwme, ze in ipairs(ikt.eligible) do
if type(ze) == _d("GFgaDV0") and ze.cardId then
local sgvd = tonumber(ze.rarity) or 0
local dqm = (tonumber(ze.count) or 0) - (tonumber(ze.locked) or 0)

if sgvd >= (tonumber(bza.minRarity) or 0) and dqm > 0 then

table.insert(vjav, { cardId = ze.cardId, borderLevel = ze.borderLevel, rarity = sgvd, count = dqm })
end
end
end

table.sort(vjav, function(nis, hzmd)
if nis.rarity == hzmd.rarity then
return tostring(nis.cardId) < tostring(hzmd.cardId)
end

return nis.rarity < hzmd.rarity
end)

return vjav
end

function ha.misc.expeditions.cards(wgqd, gk)
local cmmc = ha.misc.expeditions
local gwol = cmmc.data()
local op = gwol and tonumber(gwol.CardsPerExpedition) or 4
local gwy = {}
local zifg = cmmc.candidates(wgqd)

gk = gk or {}

local function okjy(zqp, sqn)
local gqok = tostring(zqp.cardId) .. _d("Tw") .. tostring(zqp.borderLevel)

while #gwy < op and (gk[gqok] or 0) < sqn do
gk[gqok] = (gk[gqok] or 0) + 1

table.insert(gwy, { cardId = zqp.cardId, borderLevel = zqp.borderLevel })
end
end

for jhbd, rtae in ipairs(zifg) do
if #gwy >= op then
break
end

if rtae.count > 1 then
okjy(rtae, rtae.count - 1)
end
end

if #gwy < op then
for nbj, be in ipairs(zifg) do
if #gwy >= op then
break
end

okjy(be, be.count)
end
end

return gwy
end

function ha.misc.expeditions.available(zt)
local sref = ha.misc.expeditions
local esun = sref.data()
local vhc = esun and tonumber(esun.CardsPerExpedition) or 4
local lho = 0

for wjf, iqrk in ipairs(sref.candidates(zt)) do
lho = lho + iqrk.count

if lho >= vhc then
return vhc
end
end

return lho
end

function ha.misc.expeditions.text()
local qtbr = ha.misc.expeditions

if type(qtbr.state) ~= _d("GFgaDV0") then
return _d("PlwZBVEJBUxcABFdAwsYUBcPS0lMQg")
end

local bzk = qtbr.data()
local rbfm = bzk and tonumber(bzk.CardsPerExpedition) or 4
local tw = {}

for fziv, rli in ipairs(qtbr.tiers()) do
local xfkt, swwr = qtbr.status(rli.id)
local xsaw = tostring(rli.name)

if qtbr.tiersWanted[rli.id] then
xsaw = _d("jrnaQQ") .. xsaw
end

if xfkt == _d("HkwWD1EJBQ") then
xsaw = xsaw .. _d("ZmsdFU0VDB8ZEQ8Y") .. qtbr.clockText(swwr)
elseif xfkt == _d("HlwZBUE") then
xsaw = xsaw .. _d("ZmsdAFweQhhWWAJUBgsB")
else
local sds = qtbr.available(rli.id)
xsaw = xsaw .. _d("Zg") .. tostring(sds) .. _d("TFYeQQ") .. tostring(rbfm) .. _d("TFoZE1wU")

if sds >= rbfm then
xsaw = xsaw .. _d("ZnoZDxgUFg1LDA")
end
end

table.insert(tw, xsaw)
end

table.insert(tw, _d("KU8dE0FHBhlJFAhbBhYJGRESGBQHAk1YA10BDR5cWAAYBAMeXVgYVxJCBFYUBRgIDAkZFwcURwMCXVgOVgJCD1YIGBgIBExYWAJZFQZMUAtBUwISGBkaAFsMQhtRHRNdRxYEXFgVUQIQTFoZDxgUEg1LHUFRE0JBGRlBVAgMCRkbDkgeQgNXFBgYAA0JSlgOTRNCG1EdDxgTCgkZDAhdFUIPWBYPVxNCDlxYB1ELDgldWBZREwoDTAxBURNM"))

return table.concat(tw, _d("ZjM"))
end

function ha.misc.expeditions.request()
local vvz = ha.misc.expeditions
local koy = vvz.remote()

if koy then
pcall(function()
koy:FireServer(_d("HlwJFF0UFg"))
end)
end

vvz.askedAt = os.clock()
end

function ha.misc.expeditions.claim()
local own = ha.misc.expeditions

if os.clock() < own.claimAt then
return false
end

local heoq = false

for wsx, edla in ipairs(own.tiers()) do
if own.status(edla.id) == _d("HlwZBUE") then
heoq = true
break
end
end

if not heoq then
return false
end

local vdd = own.remote()

if not vdd then
return false
end

pcall(function()
vdd:FireServer(_d("D1UZCFUmDgA"))
end)

own.claimAt = os.clock() + 3
own.askedAt = 0

return true
end

function ha.misc.expeditions.popup()
local ssag = brbo:FindFirstChild(_d("KUEIBFwOFgVWFiZNDg"))

return ssag and ssag:FindFirstChild(_d("L1UZCFU3DRxMCA")) or nil
end

function ha.misc.expeditions.closeRewards()
local vtq = ha.misc.expeditions
local dwq = vtq.popup()

if not (dwq and dwq.Visible) then
return false
end

local uyx = dwq:FindFirstChild(_d("I1I6FEwTDQI"))

if uyx and type(firesignal) == _d("CkwWAkwODQI") then
pcall(firesignal, uyx.Activated)
end

pcall(function()
dwq.Visible = false
end)

return true
end

function ha.misc.expeditions.rewardsText()
local mnx = ha.misc.expeditions

if #mnx.rewardLog == 0 then
return _d("IlYMCVEJBUxaFABRCgcIGQEETElCKU8dE0FHEg1AFxRMRxYEXFgSXRUUCUtYEl0JBh8ZFABWAxFMUR0TXUcVBU0QQVETEUxNEQRKRwMCXVgITBRCD1YWFV0JFh8X")
end

local yqko = {}

for fz, alo in ipairs(mnx.rewardLog) do
local qri = {}
local azhj = alo.items or {}

for ecn, xlr in ipairs(azhj) do
if ecn > 4 then
table.insert(qri, _d("Rw") .. tostring(#azhj - 4) .. _d("TFQXE10"))
break
end

local qcow = xlr.id or xlr.itemId
local sxrz = qcow and xpgk.ById[qcow] or nil
local fpdq = (sxrz and sxrz.name) or (xlr.potions and _d("PFYMCFcJEQ")) or tostring(qcow or _d("HlwPAEoD"))

table.insert(qri, fpdq .. _d("TEE") .. tostring(xlr.count or xlr.max or xlr.min or 1))
end

local lag = math.max(0, os.time() - (tonumber(alo.at) or os.time()))
local emo

if lag < 60 then
emo = tostring(lag) .. _d("HxkZBlc")
elseif lag < 3600 then
emo = tostring(math.floor(lag / 60)) .. _d("ARkZBlc")
else
emo = tostring(math.floor(lag / 3600)) .. _d("BBkZBlc")
end

table.insert(yqko, tostring(alo.title) .. _d("TPvPQQ") .. emo)
table.insert(yqko, table.concat(qri, _d("QBk")))
end

return table.concat(yqko, _d("Zg"))
end

function ha.misc.expeditions.saveRewards()
local yijl = ha.misc.expeditions

if type(writefile) ~= _d("CkwWAkwODQI") then
return false
end

return pcall(function()
if type(makefolder) == _d("CkwWAkwODQI") and type(isfolder) == _d("CkwWAkwODQI") and not isfolder(_d("LXo6OQ")) then
makefolder(_d("LXo6OQ"))
end

writefile(yijl.rewardPath, game:GetService(_d("JE0MEWsCEBpQGwQ")):JSONEncode({
rewards = yijl.rewardLog,
updatedAt = os.time(),
}))
end)
end

function ha.misc.expeditions.loadRewards()
local rojm = ha.misc.expeditions

if type(readfile) ~= _d("CkwWAkwODQI") or type(isfile) ~= _d("CkwWAkwODQI") then
return false
end

local xrdi, qdwm = pcall(function()
if not isfile(rojm.rewardPath) then
return nil
end

return readfile(rojm.rewardPath)
end)

if not xrdi or type(qdwm) ~= _d("H00KCFYA") or #qdwm == 0 then
return false
end

local ggr

if not pcall(function()
ggr = game:GetService(_d("JE0MEWsCEBpQGwQ")):JSONDecode(qdwm)
end) then
return false
end

if type(ggr) ~= _d("GFgaDV0") or type(ggr.rewards) ~= _d("GFgaDV0") then
return false
end

rojm.rewardLog = {}

for scy, uge in ipairs(ggr.rewards) do
if type(uge) == _d("GFgaDV0") and type(uge.items) == _d("GFgaDV0") then
table.insert(rojm.rewardLog, {
at = tonumber(uge.at) or os.time(),
title = tostring(uge.title or _d("KUEIBFwOFgVWFg")),
items = uge.items,
})
end
end

return #rojm.rewardLog > 0
end

function ha.misc.expeditions.start(oh, ocd)
local asd = ha.misc.expeditions

if asd.status(oh) ~= _d("DU8ZCFQGAABc") then
return false
end

if os.clock() < (asd.startedAt[oh] or 0) then
return false
end

local aovh = asd.remote()

if not aovh then
return false
end

local hbr = asd.cards(oh, ocd)
local zfz = asd.data()
local xgs = zfz and tonumber(zfz.CardsPerExpedition) or 4

if #hbr < xgs then
return false
end

local lco = {}

for osnx, emw in ipairs(hbr) do
lco[osnx] = { cardId = emw.cardId, borderLevel = emw.borderLevel }
end

pcall(function()
aovh:FireServer(_d("H00ZE0w"), oh, lco)
end)

asd.startedAt[oh] = os.clock() + 6
asd.askedAt = 0

return true
end

ha.misc.icon = function()
local rsnx = gethui()

for fmx, kkm in ipairs(rsnx:QueryDescendants(_d("JVQZBl0rAw5cFA"))) do
if kkm.Name == _d("OFgaKFUGBQk") then
local bqne = kkm.Parent
local nmh = bqne and bqne:FindFirstChild(_d("OFgaMk8OFg9RHRN2Bg8J"))

if nmh and nmh.Text == _d("IVALAl0LDg1XHQ5NFA") then
if kkm:GetAttribute(_d("LXo6OXUOEQ9wGw5W")) then
return true
end

kkm:SetAttribute(_d("LXo6OXUOEQ9wGw5W"), true)
kkm.Image = _d("")
kkm.BackgroundTransparency = 1

local function za(dkv, fu, acvj, kuw, zpoh, esqg, emy)
local flgh = Instance.new(dkv)

flgh.Size = UDim2.fromOffset(zpoh, esqg)
flgh.Position = UDim2.fromOffset(acvj, kuw)
flgh.BackgroundColor3 = fu
flgh.BorderSizePixel = 0
flgh.Parent = kkm

if emy then
local bigp = Instance.new(_d("OXA7DkoJBx4"))
bigp.CornerRadius = UDim.new(0, emy)
bigp.Parent = flgh
end

return flgh
end

local gtw = Color3.fromRGB(168, 170, 176)

local function ng(ufy, cqc, ibj, cjz, kb)
local flvg = za(_d("KksZDF0"), gtw, ufy, cqc, ibj, cjz, kb)

flvg.BackgroundTransparency = 1

local xxd = Instance.new(_d("OXArFUoICQk"))

xxd.Color = gtw
xxd.Thickness = 1.4
xxd.LineJoinMode = Enum.LineJoinMode.Round
xxd.Parent = flvg

return flvg
end

ng(3, 1, 6, 4, 1)
ng(1, 4, 16, 12, 2)

local na = za(_d("KksZDF0"), gtw, 3, 8, 5, 5)

na.BackgroundTransparency = 1
na.ClipsDescendants = true

local vkhs = za(_d("KksZDF0"), gtw, 0, 1, 5, 5)

vkhs.Rotation = 45
vkhs.Parent = na

za(_d("KksZDF0"), gtw, 9, 9, 4, 4, 4)
za(_d("KksZDF0"), gtw, 13, 10, 3, 3, 1)

return true
end
end
end

return false
end

ha.misc.tab = dti:Tab({
Name = _d("IVALAl0LDg1XHQ5NFA"),

Image = _d(""),
})

task.defer(function()
for gl = 1, 20 do
if ha.misc.icon() then
break
end

task.wait(0.25)
end
end)

local rcwp = {
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
lastText = _d("IlYMCVEJBUxJFxFIAgZMQB0VFg"),
tab = nil,
weatherSection = nil,
giveUpSection = nil,
weatherParagraph = nil,
giveUpParagraph = nil,
weatherToggle = nil,
manualSection = nil,
giveUpToggle = nil,
}

getgenv().ACBXPop = rcwp

function rcwp.options()
local wwsz = {}

for sjli, yte in pairs(xpgk.ById) do
if yte.type == _d("HFYMCFcJ") and type(yte.name) == _d("H00KCFYA") then
wwsz[#wwsz + 1] = yte.name
end
end

table.sort(wwsz)

return wwsz
end

function rcwp.idOf(pjgw)
for iirg, xzce in pairs(xpgk.ById) do
if xzce.type == _d("HFYMCFcJ") and xzce.name == pjgw then
return iirg
end
end

return nil
end

function rcwp.count(yqe)
local vzdp = czln.balances

return tonumber(vzdp and vzdp[yqe]) or 0
end

jhh(zbuo.UseItemResult.OnClientEvent, function(qng)
rcwp.lastResult = tostring(qng)
rcwp.lastResultAt = os.clock()
end)

function rcwp.pop(xrhu, rjd, pwi)
local jmw = os.clock()
local mp = {}

for krft, zx in pairs(xrhu) do
if zx then
local hxi = rcwp.idOf(krft)

if hxi then
local lwd = rcwp.count(hxi)

if lwd <= 0 then
mp[#mp + 1] = krft .. _d("TBRYD1cJB0xVHQdM")
else
local ixv = math.clamp(math.floor(tonumber(rjd) or 1), 1, lwd)

pcall(function()
zbuo.UseItem:FireServer(hxi, ixv)
end)

mp[#mp + 1] = krft .. _d("TEE") .. ixv
task.wait(0.3)
end
end
end
end

if #mp == 0 then
rcwp.lastText = pwi .. _d("TBRYD1cTCgVXH0FLAg4JWgwEXA")

return false
end

task.wait(0.4)

rcwp.lastText = pwi .. _d("TBRY") .. table.concat(mp, _d("QBk"))

if (rcwp.lastResultAt or 0) >= jmw and rcwp.lastResult then
rcwp.lastText = rcwp.lastText .. _d("TBE") .. rcwp.lastResult .. _d("RQ")
end

pcall(function()
kqs:Notify({
Title = _d("PFYI"),
Description = rcwp.lastText,
Lifetime = 5,
})
end)

return true
end

function rcwp.status()
local supe = igpm.weatherWanted(rcwp.weathers)
local bae = igpm.weatherNow or _d("GVcTD1cQDA")
local jpaf = {
_d("O1wZFVACEFYZ") .. bae .. (supe and (_d("TBEIDkgXCwJeQkE") .. supe .. _d("RQ")) or _d("")),
}

table.insert(jpaf, _d("IFgLFQJH") .. rcwp.lastText)

return table.concat(jpaf, _d("Zg"))
end

function rcwp.giveUpStatus()
if rcwp.armedAt > 0 then
return _d("LUsVBFxHT0xOGQhMDgwLGR4OSkcWBFxYE00JQhhWWARWA0xmdRkSTF1C") .. rcwp.lastText
end

return _d("JV0UBBZtLg1KDFsY") .. rcwp.lastText
end

rcwp.tab = dti:Tab({
Name = _d("PFYI"),

Image = _d(""),
})

rcwp.icon = function()
local lmjl = gethui()

for gual, up in ipairs(lmjl:QueryDescendants(_d("JVQZBl0rAw5cFA"))) do
if up.Name == _d("OFgaKFUGBQk") then
local rgq = up.Parent
local sdz = rgq and rgq:FindFirstChild(_d("OFgaMk8OFg9RHRN2Bg8J"))

if sdz and sdz.Text == _d("PFYI") then
if up:GetAttribute(_d("LXo6OWgIEiVaFw8")) then
return true
end

up:SetAttribute(_d("LXo6OWgIEiVaFw8"), true)
up.Image = _d("")
up.BackgroundTransparency = 1

local srkf = Color3.fromRGB(168, 170, 176)

local function aab(jye, pmi, wk, wy, pdro, xvgq)
local woy = Instance.new(jye)

woy.Size = UDim2.fromOffset(wy, pdro)
woy.Position = UDim2.fromOffset(pmi, wk)
woy.BackgroundColor3 = srkf
woy.BorderSizePixel = 0
woy.Parent = up

if xvgq then
local bp = Instance.new(_d("OXA7DkoJBx4"))
bp.CornerRadius = UDim.new(0, xvgq)
bp.Parent = woy
end

return woy
end

local function lfkt(wek, yu, qeow, iy, yaz)
local vrb = aab(_d("KksZDF0"), wek, yu, qeow, iy, yaz)

vrb.BackgroundTransparency = 1

local csu = Instance.new(_d("OXArFUoICQk"))

csu.Color = srkf
csu.Thickness = 1.3
csu.LineJoinMode = Enum.LineJoinMode.Round
csu.Parent = vrb

return vrb
end

lfkt(1, 6, 16, 12, 6)
lfkt(6, 3, 6, 4, 1)
aab(_d("KksZDF0"), 5, 1, 8, 2, 1)
aab(_d("KksZDF0"), 7, 0, 4, 1, 0)

aab(_d("KksZDF0"), 4, 11, 10, 1, 0)
aab(_d("KksZDF0"), 13, 3, 2, 2, 2)
aab(_d("KksZDF0"), 15, 6, 2, 2, 2)

return true
end
end
end

return false
end

task.defer(function()
for kovj = 1, 20 do
if rcwp.icon() then
break
end

task.wait(0.25)
end
end)

rcwp.weatherSection = rcwp.tab:Section({
Side = _d("IFweFQ"),
})

rcwp.weatherSection:Header({
Name = _d("PFYMCFcJEUxWFkFPAgMYUR0TGJf9y5M"),
})

rcwp.weatherToggle = rcwp.weatherSection:Toggle({
Name = _d("PFYIQVcJQhhRHRJdRxUJWAwJXRUR"),
Default = false,
Callback = function(pd)
if pd and (next(rcwp.weatherPotions) == nil or next(rcwp.weathers) == nil) then
rcwp.onWeather = false

pcall(function()
rcwp.weatherToggle:UpdateState(false)
end)

kqs:Dialog({
Title = _d("PFYI"),
Description = _d("OFAbChgGFkxVHQBLE0IDVx1BTwIDGFEdExgGDAgZFw9dRxIDTREOVkcEBUsLFRhKQjxWCEFWAgcISlgDVxMKTE0XQVMJDRsZDwlZE0IYVlgFSg4MBxkZD1xHFQRcFk8"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})

return
end

rcwp.onWeather = pd

if pd then
rcwp.weatherSpent = nil
end
end,
}, _d("HFYIPlcJPRhRHRJdOBUJWAwJXRUR"))

rcwp.weatherSection:Dropdown({
Name = _d("O1wZFVACEB8"),
Multi = true,
Required = false,
Options = { _d("OEAICVcIDA"), _d("LlURG0IGEAg"), _d("IFAfCUwJCwJe"), _d("O1AWBUsTDR5U"), _d("P1EZE1EJBQ1X"), _d("P1AWBk0LAx5QDBg"), _d("IVYWAEoECkx9FwxZDgw"), _d("OlYRBQ"), _d("IVgcBBgODExxHQBOAgw"), _d("IVgWBlk") },
Callback = function(nvxn)
rcwp.weathers = {}

if type(nvxn) == _d("GFgaDV0") then
for ddr, kuks in pairs(nvxn) do
if kuks then
rcwp.weathers[ddr] = true
end
end
end
end,
}, _d("G1wZFVACEB8"))

rcwp.weatherSection:Dropdown({
Name = _d("PFYMCFcJEQ"),
Multi = true,
Required = false,
Options = rcwp.options(),
Callback = function(zgmz)
rcwp.weatherPotions = {}

if type(zgmz) == _d("GFgaDV0") then
for fdj, ivjq in pairs(zgmz) do
if ivjq then
rcwp.weatherPotions[fdj] = true
end
end
end
end,
}, _d("HFYMCFcJEQ"))

rcwp.weatherSection:Input({
Name = _d("LVQXFFYT"),
Placeholder = _d("XQ"),
AcceptedCharacters = _d("IkwVBEoOAQ"),
Callback = function(zpnu)
local itl = math.floor(tonumber(zpnu) or 1)

rcwp.weatherAmount = math.clamp(itl, 1, 50)
end,
}, _d("DVQXFFYT"))

rcwp.weatherParagraph = rcwp.weatherSection:Paragraph({
Header = _d("P00ZFU0U"),
Body = rcwp.status(),
})

rcwp.manualSection = rcwp.tab:Section({
Side = _d("IFweFQ"),
})

rcwp.manualSection:Header({
Name = _d("OUodQUgIFgVWFhIYCQ0bGYj+n80"),
})

rcwp.manualSection:Dropdown({
Name = _d("PFYMCFcJEQ"),
Multi = true,
Required = false,
Options = rcwp.options(),
Callback = function(jsd)
rcwp.manualPotions = {}

if type(jsd) == _d("GFgaDV0") then
for qyi, pweg in pairs(jsd) do
if pweg then
rcwp.manualPotions[qyi] = true
end
end
end
end,
}, _d("AVgWFFkLPRxWDAhXCRE"))

rcwp.manualSection:Input({
Name = _d("LVQXFFYT"),
Placeholder = _d("XQ"),
AcceptedCharacters = _d("IkwVBEoOAQ"),
Callback = function(xfr)
local ew = math.floor(tonumber(xfr) or 1)

rcwp.manualAmount = math.clamp(ew, 1, 50)
end,
}, _d("AVgWFFkLPQ1UFxRWEw"))

rcwp.manualSection:Button({
Name = _d("OUodQUgIFgVWFhI"),
Callback = function()
if next(rcwp.manualPotions) == nil then
kqs:Notify({
Title = _d("OUodQUgIFgVWFhI"),
Description = _d("PFAbChgGFkxVHQBLE0IDVx1BSAgWBVYWQVEJQhhRHUFcFQ0cXRcWVkcEBUsLFRY"),
Lifetime = 6,
})

return
end

task.spawn(function()
rcwp.pop(rcwp.manualPotions, rcwp.manualAmount, _d("IVgWFFkL"))
end)
end,
})

rcwp.giveUpSection = rcwp.tab:Section({
Side = _d("PlAfCUw"),
})

rcwp.giveUpSection:Header({
Name = _d("LV8MBEpHBQVPHUFNFw"),
})

rcwp.giveUpToggle = rcwp.giveUpSection:Toggle({
Name = _d("PFYIQVkBFglLWAAYEw0bXApBXw4UCRkNEQ"),
Default = false,
Callback = function(lahu)
if lahu and next(rcwp.giveUpPotions) == nil then
rcwp.afterGiveUp = false

pcall(function()
rcwp.giveUpToggle:UpdateState(false)
end)

kqs:Dialog({
Title = _d("PFYI"),
Description = _d("OFAbChgGFkxVHQBLE0IDVx1BSAgWBVYWQV4OEB9NWEwYEwoJSx1BURRCAlYMCVEJBUxNF0FcFQsCUlgAXhMHHhkMCV1HEBlXWA5MDwceThESXUk"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})

return
end

rcwp.afterGiveUp = lahu
end,
}, _d("HFYIPlkBFglLJwBnEw0bXAo+Xw4UCWYNEQ"))

rcwp.giveUpSection:Dropdown({
Name = _d("PFYMCFcJEQ"),
Multi = true,
Required = false,
Options = rcwp.options(),
Callback = function(xnp)
rcwp.giveUpPotions = {}

if type(xnp) == _d("GFgaDV0") then
for xqr, gdgd in pairs(xnp) do
if gdgd then
rcwp.giveUpPotions[xqr] = true
end
end
end
end,
}, _d("HFYMCFcJETML"))

rcwp.giveUpSection:Input({
Name = _d("LVQXFFYT"),
Placeholder = _d("XQ"),
AcceptedCharacters = _d("IkwVBEoOAQ"),
Callback = function(hb)
local kxzu = math.floor(tonumber(hb) or 1)

rcwp.giveUpAmount = math.clamp(kxzu, 1, 50)
end,
}, _d("DVQXFFYTPV4"))

rcwp.giveUpParagraph = rcwp.giveUpSection:Paragraph({
Header = _d("P00ZFU0U"),
Body = rcwp.giveUpStatus(),
})

local dum = {
autoSave = false,
autoRoll = true,
autoQuickRoll = true,

loading = false,
selected = nil,
lastText = _d("IlYMCVEJBUxOCghMEwcCGQEETEdPTEkRAlNHA0xKGRddRwQFVR1BWgIOA05W"),
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
theme = _d("OlYRBQ"),
accent = nil,
savesAt = 0,
autoSaveAt = 0,
themeAt = 0,
capAt = 0,
scaleAnchor = nil,
statusAt = 0,
knownSaves = _d(""),
}

getgenv().ACBXSettings = dum

dum.presets = {
Void = { panel = Color3.fromRGB(15, 15, 15), element = Color3.fromRGB(0, 0, 0), accent = Color3.fromRGB(168, 170, 176) },
Ocean = { panel = Color3.fromRGB(6, 16, 26), element = Color3.fromRGB(8, 26, 40), accent = Color3.fromRGB(77, 166, 255) },
Ember = { panel = Color3.fromRGB(26, 10, 8), element = Color3.fromRGB(36, 16, 10), accent = Color3.fromRGB(255, 122, 69) },
Sakura = { panel = Color3.fromRGB(26, 9, 18), element = Color3.fromRGB(38, 14, 26), accent = Color3.fromRGB(255, 125, 177) },
Mint = { panel = Color3.fromRGB(7, 20, 14), element = Color3.fromRGB(9, 30, 22), accent = Color3.fromRGB(77, 227, 160) },
Graphite = { panel = Color3.fromRGB(20, 20, 22), element = Color3.fromRGB(30, 30, 33), accent = Color3.fromRGB(200, 200, 206) },
}

dum.themeOrder = { _d("OlYRBQ"), _d("I1odAFY"), _d("KVQaBEo"), _d("P1gTFEoG"), _d("IVAWFQ"), _d("K0sZEVAOFgk") }

local wth = _d("LXo6QWoCAAVLDAkXFAcYTREPXxQ")

function dum.saves()
local stp, uome = pcall(function()
return xoyh:RefreshConfigList()
end)

if stp and type(uome) == _d("GFgaDV0") then
table.sort(uome)
return uome
end

return {}
end

function dum.autoLoadName()
local tvpu, udx = pcall(function()
if isfile and isfile(wth .. _d("Q1gNFVcLDQ1dVhVAEw")) then
return readfile(wth .. _d("Q1gNFVcLDQ1dVhVAEw"))
end
end)

if tvpu and type(udx) == _d("H00KCFYA") then
udx = udx:gsub(_d("MhwLSg"), _d("")):gsub(_d("SUpTRQ"), _d(""))

if udx ~= _d("") then
return udx
end
end

return nil
end

function dum.setAutoLoad(wbz)

return (pcall(function()
writefile(wth .. _d("Q1gNFVcLDQ1dVhVAEw"), wbz or _d(""))
end))
end

function dum.delete(lsks)
if type(lsks) ~= _d("H00KCFYA") or lsks == _d("") then
return false, _d("PFAbChgGQh9YDgQYAQsAXFgHURURGBc")
end

local oaht = wth .. _d("Qw") .. lsks .. _d("QlMLDlY")
local pb = false

pcall(function()
pb = isfile ~= nil and isfile(oaht) == true
end)

if not pb then
return false, _d("OFEdE11HCx8ZFg4YAQsAXFgCWQsOCV1Y") .. lsks .. _d("Qg")
end

local rvxh, cnz = pcall(function()
delfile(oaht)
end)

if not rvxh then
return false, tostring(cnz)
end

if dum.autoLoadName() == lsks then
dum.setAutoLoad(_d(""))
end

if dum.selected == lsks then
dum.selected = nil
dum.selectionShown = nil
end

dum.knownSaves = nil
dum.savesAt = 0

return true
end

function dum.save(eeg)
if type(eeg) ~= _d("H00KCFYA") or eeg:gsub(_d("SUo"), _d("")) == _d("") then
return false, _d("K1AOBBgTCgkZCwBOAkINGRYAVQJCClAKEkxJ")
end

local fjqu, scls, vf = pcall(function()
return xoyh:SaveConfig(eeg)
end)

if not fjqu then
return false, tostring(scls)
end

if scls ~= true then
return false, tostring(vf or _d("GFEdQV4ODgkZGw5NCwZMVxcVGAUHTE4KCEwTBwI"))
end

return true
end

function dum.replayOff(oxa)
local uol, ibsy = pcall(function()
return readfile(wth .. _d("Qw") .. oxa .. _d("QlMLDlY"))
end)

if not uol or type(ibsy) ~= _d("H00KCFYA") then
return
end

local qp
uol, qp = pcall(function()
return game:GetService(_d("JE0MEWsCEBpQGwQ")):JSONDecode(ibsy)
end)

if not uol or type(qp) ~= _d("GFgaDV0") or type(qp.objects) ~= _d("GFgaDV0") then
return
end

for pl, geqn in ipairs(qp.objects) do
if geqn.type == _d("OFYfBlQC") and geqn.state == false and geqn.flag then
local uney = xoyh.Options[geqn.flag]

if uney then
pcall(function()
uney:UpdateState(false)
end)
end
end
end
end

function dum.load(htm)
if type(htm) ~= _d("H00KCFYA") or htm == _d("") then
return false, _d("PFAbChgGQh9YDgQYAQsAXFgHURURGBc")
end

dum.loading = true
ewz = true

local rftm, ct, biem = pcall(function()
return xoyh:LoadConfig(htm)
end)

if not rftm then
dum.loading = false
ewz = false

return false, tostring(ct)
end

if ct ~= true then
dum.loading = false
ewz = false

return false, tostring(biem or _d("GFEdQV4ODgkZGw5NCwZMVxcVGAUHTEsdAFw"))
end

task.wait(0.25)
dum.replayOff(htm)
dum.loading = false
ewz = false

return true
end

dum.uiPath = _d("LXo6ORcSC0JTCw5W")

function dum.saveUi()
if type(writefile) ~= _d("CkwWAkwODQI") then
return false
end

if dum.restoring then
return false
end

local zkr = dum.accent

local suho = {
theme = dum.theme,
scale = tonumber(string.format(_d("SRdKBw"), dum.scaleTarget or 1)),
accent = zkr and string.format(_d("SV1URFxLRwg"),
math.floor(zkr.R * 255 + 0.5),
math.floor(zkr.G * 255 + 0.5),
math.floor(zkr.B * 255 + 0.5)) or nil,
}

return pcall(function()
if type(makefolder) == _d("CkwWAkwODQI") and type(isfolder) == _d("CkwWAkwODQI") and not isfolder(_d("LXo6OQ")) then
makefolder(_d("LXo6OQ"))
end

writefile(dum.uiPath, game:GetService(_d("JE0MEWsCEBpQGwQ")):JSONEncode(suho))
end)
end

function dum.loadUi()
if type(readfile) ~= _d("CkwWAkwODQI") or type(isfile) ~= _d("CkwWAkwODQI") then
return nil
end

local awz, djjt = pcall(function()
if not isfile(dum.uiPath) then
return nil
end

return readfile(dum.uiPath)
end)

if not awz or type(djjt) ~= _d("H00KCFYA") or djjt == _d("") then
return nil
end

local zfn
awz, zfn = pcall(function()
return game:GetService(_d("JE0MEWsCEBpQGwQ")):JSONDecode(djjt)
end)

if not awz or type(zfn) ~= _d("GFgaDV0") then
return nil
end

dum.restoring = true

if type(zfn.theme) == _d("H00KCFYA") and dum.presets[zfn.theme] then
dum.theme = zfn.theme

pcall(function()
dum.themeDropdown:UpdateSelection(zfn.theme)
dum.themeDropdown:UpdateName(_d("OFEdDF1dQg") .. zfn.theme)
end)
end

local vjsb, wpdx, aw = tostring(zfn.accent or _d("")):match(_d("MhFdBRNOTkQcHEoRS0pJXVNIHA"))

if vjsb then
local wabt = Color3.fromRGB(tonumber(vjsb), tonumber(wpdx), tonumber(aw))

dum.accent = wabt

pcall(function()
dum.accentPicker:SetColor(wabt)
end)
else
dum.accent = nil

local paxg = dum.presets[dum.theme] or dum.presets.Void

pcall(function()
dum.accentPicker:SetColor(paxg.accent)
end)
end

local dg = tonumber(zfn.scale)

if dg then
dg = math.clamp(dg, 0.5, dum.scaleCeiling())

dum.scaleTarget = dg
dum.scaleAnchor = nil

pcall(function()
dum.scaleSlider:UpdateValue(dg)
end)
end

dum.applyTheme()

dum.restoring = false
dum.saveUi()

return zfn
end

dum.prioPath = _d("LXo6ORcXEAVWCghMHkwGShcP")

function dum.groupAt(mmfy)
for qm, dh in ipairs(pcyb.prioGroups) do
if dh.rank == mmfy then
return dh
end
end
end

function dum.paintPriority()
if dum.prioBusy then
return
end

dum.prioBusy = true

for hj = 1, #pcyb.prioGroups do
local nh = dum.prioRows and dum.prioRows[hj]
local gnd = dum.groupAt(hj)

if nh and gnd then
pcall(function()
nh:UpdateSelection(gnd.label)
end)
end
end

dum.prioBusy = false
end

function dum.setPriority(fq, dxcj)
if dum.prioBusy or dum.prioBuilding then
return
end

local ntoa

for rnv, erik in ipairs(pcyb.prioGroups) do
if erik.id == fq then
ntoa = erik.rank
erik.rank = dxcj
end
end

if ntoa and ntoa ~= dxcj then
for tjtn, gody in ipairs(pcyb.prioGroups) do
if gody.id ~= fq and gody.rank == dxcj then
gody.rank = ntoa
end
end
end

dum.paintPriority()
dum.savePriority()
end

function dum.savePriority()
if type(writefile) ~= _d("CkwWAkwODQI") then
return false
end

local bjp = {}

for xfkd, ilxs in ipairs(pcyb.prioGroups) do
bjp[ilxs.id] = ilxs.rank
end

return pcall(function()
if type(makefolder) == _d("CkwWAkwODQI") and type(isfolder) == _d("CkwWAkwODQI") and not isfolder(_d("LXo6OQ")) then
makefolder(_d("LXo6OQ"))
end

writefile(dum.prioPath, game:GetService(_d("JE0MEWsCEBpQGwQ")):JSONEncode({ ranks = bjp }))
end)
end

function dum.loadPriority()
if type(readfile) ~= _d("CkwWAkwODQI") or type(isfile) ~= _d("CkwWAkwODQI") then
return nil
end

local tx, bd = pcall(function()
if not isfile(dum.prioPath) then
return nil
end

return readfile(dum.prioPath)
end)

if not tx or type(bd) ~= _d("H00KCFYA") or bd == _d("") then
return nil
end

local ojg

tx, ojg = pcall(function()
return game:GetService(_d("JE0MEWsCEBpQGwQ")):JSONDecode(bd)
end)

if not tx or type(ojg) ~= _d("GFgaDV0") or type(ojg.ranks) ~= _d("GFgaDV0") then
return nil
end

return ojg.ranks
end

function dum.restorePriority()
local zb = dum.loadPriority()

if not zb then
return
end

local obe = {}
local tkw = {}

for rbh, uf in ipairs(pcyb.prioGroups) do
local vfgb = tonumber(zb[uf.id])

if vfgb then
obe[#obe + 1] = { group = uf, rank = vfgb }
tkw[uf.id] = true
end
end

table.sort(obe, function(wtr, pdji)
return wtr.rank < pdji.rank
end)

for ssre, jyo in ipairs(obe) do
jyo.group.rank = ssre
end

local fp = #obe + 1

for bhc, vhxd in ipairs(pcyb.prioGroups) do
if not tkw[vhxd.id] then
vhxd.rank = fp
fp = fp + 1
end
end

dum.paintPriority()
end

function dum.colourKey(kd)
return math.floor(kd.R * 255) .. _d("QA") .. math.floor(kd.G * 255) .. _d("QA") .. math.floor(kd.B * 255)
end

function dum.guiRoot()

if not ydyn() then
return nil
end

if dum.root and dum.root.Parent then
return dum.root
end

local esn = gethui and gethui() or game:GetService(_d("L1YKBH8SCw"))

for rmjh, dirh in ipairs(esn:GetChildren()) do
if dirh:IsA(_d("P1oKBF0JJRlQ")) and dirh:FindFirstChild(_d("LlgLBA")) then
dum.root = dirh.Base

return dum.root
end
end

return nil
end

function dum.applyTheme()
local kvd = dum.guiRoot()
local kyej = dum.presets[dum.theme] or dum.presets.Void

if not kvd then
return false
end

local zxvs = {
panel = kyej.panel,
element = kyej.element,
accent = dum.accent or kyej.accent,
}

local qrwt = {}

for nnu, pi in pairs(dum.presets) do
qrwt[dum.colourKey(pi.panel)] = _d("HFgWBFQ")
qrwt[dum.colourKey(pi.element)] = _d("CVUdDF0JFg")
qrwt[dum.colourKey(pi.accent)] = _d("DVobBFYT")
end

qrwt[dum.colourKey(zxvs.accent)] = _d("DVobBFYT")

if qrwt[dum.colourKey(kvd.BackgroundColor3)] == _d("HFgWBFQ") then
kvd.BackgroundColor3 = zxvs.panel
end

for ly, kenk in ipairs(kvd:GetDescendants()) do
if kenk:IsA(_d("K0wRLloNBw9N")) then
local lsju = qrwt[dum.colourKey(kenk.BackgroundColor3)]

if lsju then
kenk.BackgroundColor3 = zxvs[lsju]
end
elseif kenk:IsA(_d("OXArFUoICQk")) then
if qrwt[dum.colourKey(kenk.Color)] == _d("DVobBFYT") then
kenk.Color = zxvs.accent
end
end

if kenk:IsA(_d("JVQZBl0rAw5cFA")) and kenk.Name == _d("OFgaKFUGBQk") and kenk.Image ~= _d("") then
kenk.ImageColor3 = zxvs.accent
kenk.ImageTransparency = 0
kenk:SetAttribute(_d("LXo6OWwGAC1aGwRWEw"), zxvs.accent)

if not kenk:GetAttribute(_d("LXo6OWwGADhQFhU")) then
kenk:SetAttribute(_d("LXo6OWwGADhQFhU"), true)

local function khey()
local aog = kenk:GetAttribute(_d("LXo6OWwGAC1aGwRWEw"))

if aog and kenk.ImageColor3 ~= aog then
kenk.ImageColor3 = aog
end

if kenk.ImageTransparency ~= 0 then
kenk.ImageTransparency = 0
end
end

jhh(kenk:GetPropertyChangedSignal(_d("JVQZBl0zEA1XCxFZFQcCWgE")), khey)
jhh(kenk:GetPropertyChangedSignal(_d("JVQZBl0kDQBWClI")), khey)
end
end
end

return true
end

local rd = dti:Tab({
Name = _d("IVgI"),
Image = _d("HlsAAEsUBxhQHFsXSFRcCklRD1JbXwg"),
})

local eo = {
holdFor = 25,
fly = {
on = false,
speed = 55,
connection = nil,
},
islands = {
{ name = _d("IFYaA0E"), kind = _d("G1YKDVw"), arg = _d("AFYaA0E") },
{ name = _d("LVsZD1wIDAldWChLCwMCXQ"), kind = _d("BUoUAFYD"), arg = _d("DVsZD1wIDAldJwhLCwMCXQ") },
{ name = _d("OE4RDxglBw1aEARL"), kind = _d("BUoUAFYD"), arg = _d("GE4RD2cFBw1aEARL"), note = _d("TG0QBBgUBx5PHRMYAxADSQtBURNCGVcMCFRHGwNMWAlZEQdMShkIVAIGTE0QBEoCTA") },
{ name = _d("O1AWBVUODgAZMRJUAg"), kind = _d("BUoUAFYD"), arg = _d("G1AWBVUODgBmERJUAg"), note = _d("TG0QBBgUBx5PHRMYAxADSQtBURNCGVcMCFRHGwNMWAlZEQdMShkIVAIGTE0QBEoCTA") },
},
npcs = {
{ name = _d("L1gKBRgqBx5eHQ"), npc = _d("CkwLBGcJEg8"), attr = _d("Imk7KFw"), at = Vector3.new(-272, 33, -40347) },
{ name = _d("KUEIBFwOFgVWFhI"), npc = _d("KUEIBFwOFgVWFi9oJA"), attr = _d("KUEIBFwOFgVWFi9oJA"), at = Vector3.new(-347, 35, -40361) },
{ name = _d("KFwbDlYUFh5MGxU"), npc = _d("CFwbDlYUFh5MGxVnCRIP"), attr = _d("Imk7KFw"), at = Vector3.new(-264, 33, -40331) },
{ name = _d("L0sZB0w"), npc = _d("D0sZB0w4DBxa"), attr = _d("Imk7KFw"), at = Vector3.new(-330, 33, -40277) },
{ name = _d("P1IRDVRHNh5cHQ"), npc = _d("P1IRDVQzEAlcNjF7"), attr = _d("P1IRDVQzEAlcNjF7"), at = Vector3.new(-290, 32, -40283) },
{ name = _d("L1gKBRguDAhcAA"), npc = _d("D1gKBWcODAhcAD5WFwE"), attr = _d("Imk7KFw"), at = Vector3.new(-313, 33, -40282) },
{ name = _d("PFgbChgqBx5aEABWEw"), npc = _d("HFgbCmcKBx5aEABWEw"), attr = _d("Imk7KFw"), at = Vector3.new(-301, 33, -40270) },
{ name = _d("KEwWBl0IDA"), npc = _d("CEwWBl0IDDNXCAI"), attr = _d("Imk7KFw"), at = Vector3.new(-339, 41, -40399) },
{ name = _d("KlALCV0VDw1X"), npc = _d("KlALCV0VDw1XNjF7"), attr = _d("KlALCV0VDw1XNjF7"), at = Vector3.new(-493, 14, -40262) },
{ name = _d("P1wbE10TQi1XHw1dFQ"), npc = _d("P1wbE10TIwJeFARKKTIv"), attr = _d("P1wbE10TIwJeFARKKTIv"), at = Vector3.new(-209, 34, -40382) },
{ name = _d("JFgUDVcQBwlXWDJQCBI"), npc = _d("PEwVEVMODEx0HRNbDwMCTQ"), at = Vector3.new(-29989, 78, -30259) },
{ name = _d("P1gbE1EBCw9cWCBUEwMe"), landmark = _d("P1gbE1EBCw9cOQ1MBhA"), island = _d("DVsZD1wIDAldJwhLCwMCXQ"), at = Vector3.new(-3548, 11, -40462) },
{ name = _d("JFgKBVsIEAkZLA5PAhA"), npc = _d("JFgKBVsIEAltFxZdFQ"), island = _d("DVsZD1wIDAldJwhLCwMCXQ"), at = Vector3.new(-3795, 25, -40250) },
{ name = _d("JUoUAFYDQipQCwldFQ8NVw"), npc = _d("JUoUAFYDJAVKEARKCgMCdygi"), attr = _d("JUoUAFYDJAVKEARKCgMCdygi"), island = _d("DVsZD1wIDAldJwhLCwMCXQ"), at = Vector3.new(-3825, 23, -40260) },
{ name = _d("KFAfBl0V"), npc = _d("KFAfBl0VLDx6"), attr = _d("KFAfBl0VLDx6"), island = _d("GE4RD2cFBw1aEARL"), at = Vector3.new(-5998, 26, -40565) },
{ name = _d("P1wbE10TQihQHwZdFQ"), npc = _d("P1wbE10TJgVeHwRKKTIv"), attr = _d("P1wbE10TJgVeHwRKKTIv"), island = _d("G1AWBVUODgBmERJUAg"), at = Vector3.new(-7740, 17, -40343) },
},
}

function eo.hold()
vs.tpHoldUntil = os.clock() + eo.holdFor

vs.deepPhase = _d("BV0UBA")
vs.deepStageAt = 0
vs.phase = _d("BV0UBA")
vs.nextCastAt = 0
vs.watchdogAt = 0

return eo.holdFor
end

function eo.point(pfn)
local mas

if pfn.landmark then
mas = workspace:FindFirstChild(pfn.landmark)
else
local mnp = workspace:FindFirstChild(_d("Imk7Eg"))

if mnp then
for qerq, kidu in ipairs(mnp:GetChildren()) do
local lcgd

if pfn.attr then
lcgd = kidu:GetAttribute(pfn.attr) == pfn.npc
else
lcgd = kidu.Name == pfn.npc
end

if lcgd then
mas = kidu
break
end
end
end
end

if mas then
local jlna = mas.PrimaryPart
or mas:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"), true)
or mas:FindFirstChildWhichIsA(_d("LlgLBGgGEBg"), true)

if jlna then
return jlna.Position
end
end

return pfn.at
end

function eo.resume()
if not vs.enabled then
return
end

local czbt = ehbn.Character
local upuy = czbt and czbt:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not upuy or (upuy.Position - ol).Magnitude < 40 then
return
end

pcall(function()
vs.recover()
end)
end

function eo.standAt(wgoa)
local lsqj = ehbn.Character
local id = lsqj and lsqj:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not id or not wgoa then
return false
end

local lwt = RaycastParams.new()
lwt.FilterType = Enum.RaycastFilterType.Exclude
lwt.FilterDescendantsInstances = { lsqj }

local mg = workspace:Raycast(wgoa + Vector3.new(0, 10, 0), Vector3.new(0, -80, 0), lwt)
local mox = wgoa.Y

if mg and mg.Instance.Name ~= _d("O1gMBEo") then
local zhs = mg.Position.Y + 3.2

if math.abs(zhs - wgoa.Y) <= 8 then
mox = zhs
end
end

local ssdg = Vector3.new(id.Position.X - wgoa.X, 0, id.Position.Z - wgoa.Z)

if ssdg.Magnitude < 1 then
ssdg = Vector3.new(4, 0, 0)
else
ssdg = ssdg.Unit * 4
end

local ktz = Vector3.new(wgoa.X + ssdg.X, mox, wgoa.Z + ssdg.Z)

id.CFrame = CFrame.new(ktz)

return true
end

function eo.unlock()
local qyec = {
{ id = _d("DVsZD1wIDAldJwhLCwMCXQ"), at = Vector3.new(-3825, 24, -40260) },
{ id = _d("GE4RD2cFBw1aEARL"), at = Vector3.new(-6180, 40, -40350) },
{ id = _d("G1AWBVUODgBmERJUAg"), at = Vector3.new(-7480, 30, -40350) },
}
local uyd = {}

for yurr, dyi in ipairs(qyec) do
local mok = zbuo.FishingGetState:InvokeServer()

if mok and mok.areas and mok.areas[dyi.id] == true then
table.insert(uyd, dyi.id .. _d("VhkZDUoCAwhAWA5IAgw"))
else
eo.hold()
eo.standAt(dyi.at)
task.wait(2.4)

local zrc = zbuo.FishingGetState:InvokeServer()

table.insert(uyd, dyi.id .. (zrc and zrc.areas and zrc.areas[dyi.id] and _d("VhkND1QIAQdcHA") or _d("VhkeAFELBwg")))
end
end

eo.hold()
pcall(function()
zbuo.TeleportToWorld:FireServer(_d("AFYaA0E"))
end)
task.wait(2.5)

return table.concat(uyd, _d("TPvPQQ"))
end

function eo.flyToggle(otwv)
eo.fly.on = otwv

if not otwv then
return _d("KlUBQVcBBEI")
end

local suus = ehbn.Character
local odjd = suus and suus:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not odjd then
return _d("IlZYAlAGEA1aDARKRxYDGRQIXhNM")
end

eo.fly.height = odjd.Position.Y

if eo.fly.connection then
return _d("KlUBQVcJTA")
end

local ndm = game:GetService(_d("OUodE3EJEhlNKwRKEQsPXA"))

eo.fly.connection = jhh(game:GetService(_d("PkwWMl0VFAVaHQ")).Heartbeat, function(pxj)
if not eo.fly.on then
return
end

local nyw = ehbn.Character
local ibqf = nyw and nyw:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not ibqf then
return
end

local yvck = workspace.CurrentCamera
local qljw = Vector3.zero

if yvck then
local dsc = yvck.CFrame.LookVector
local fxn = Vector3.new(dsc.X, 0, dsc.Z)

if fxn.Magnitude > 0.01 then
fxn = fxn.Unit
end

local uush = Vector3.new(fxn.Z, 0, -fxn.X)

if ndm:IsKeyDown(Enum.KeyCode.W) then
qljw = qljw + fxn
end

if ndm:IsKeyDown(Enum.KeyCode.S) then
qljw = qljw - fxn
end

if ndm:IsKeyDown(Enum.KeyCode.D) then
qljw = qljw + uush
end

if ndm:IsKeyDown(Enum.KeyCode.A) then
qljw = qljw - uush
end
end

local mj = 0

if ndm:IsKeyDown(Enum.KeyCode.Space) then
mj = 1
elseif ndm:IsKeyDown(Enum.KeyCode.LeftControl) then
mj = -1
end

local kpc = eo.fly.speed or 55
local cgp = qljw * kpc * pxj + Vector3.new(0, mj * kpc * 0.6 * pxj, 0)

if cgp.Magnitude < 0.001 then
return
end

ibqf.CFrame = ibqf.CFrame + cgp
ibqf.AssemblyLinearVelocity = Vector3.zero
end)

return _d("KlUBQVcJTA")
end

function eo.go(kpgy)
eo.hold()

if kpgy.kind == _d("G1YKDVw") then
pcall(function()
zbuo.TeleportToWorld:FireServer(kpgy.arg)
end)

return _d("P1wWFRgTCgkZ") .. kpgy.name .. _d("TE0dDV0XDR5NVg")
end

if kpgy.kind == _d("BUoUAFYD") then
pcall(function()
zbuo.FishingIslandTeleport:FireServer(kpgy.arg)
end)

return _d("P1wWFRgTCgkZ") .. kpgy.name .. _d("TE0dDV0XDR5NVg") .. tostring(kpgy.note or _d(""))
end

local rpo = eo.point(kpgy)
local mcd = ehbn.Character
local ca = mcd and mcd:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if rpo and ca and (ca.Position - rpo).Magnitude > 1500 then
pcall(function()
if kpgy.island then
zbuo.FishingIslandTeleport:FireServer(kpgy.island)
else
zbuo.TeleportToWorld:FireServer(_d("AFYaA0E"))
end
end)

task.wait(kpgy.island and 3.5 or 4.5)

rpo = eo.point(kpgy)

ca = ehbn.Character and ehbn.Character:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if rpo and ca and (ca.Position - rpo).Magnitude > 1500 then
return kpgy.name .. _d("TFALQVcJQg") .. tostring(kpgy.island or _d("GFEdQVQIAA5A"))
.. _d("TBRYFVACQgtYFQQYFQcKTAsES0cWBFgMQUwVCxwZDQ9MDg5MUAxBUAYRTFsdBFZHEAlYGwldA0IDVxsEFg")
end
end

if not rpo then
return kpgy.name .. _d("TFALQVYIFkxQFkFMDwsfGQ8OSgsGQg")
end

if not eo.standAt(rpo) then
return _d("IlZYAlAGEA1aDARKRxYDGRUOTgJM")
end

task.delay(eo.holdFor + 2, function()
pcall(eo.resume)
end)

return _d("P00XDlxHAAlKEQVdRw") .. kpgy.name .. _d("Qg")
end

eo.islandSection = rd:Section({ Side = _d("IFweFQ") })
eo.islandSection:Header({ Name = _d("JUoUAFYDEUzJ5+6liNrj") })

eo.npcSection = rd:Section({ Side = _d("PlAfCUw") })
eo.npcSection:Header({ Name = _d("Imk7EhiX/f+0") })

for twsh, fs in ipairs(eo.islands) do
eo.islandSection:Button({
Name = fs.name,
Callback = function()
task.spawn(function()
local jbe = eo.go(fs)

kqs:Notify({
Title = _d("OFwUBEgIEBg"),
Description = jbe,
Lifetime = 6,
})
end)
end,
})
end

eo.state = vs
eo.tab = rd
eo.islandSection:Button({
Name = _d("OVcUDlsMQg1VFEFRFA4NVxwS"),
Callback = function()
task.spawn(function()
local vor = eo.unlock()

kqs:Notify({
Title = _d("JUoUAFYDEQ"),
Description = vor,
Lifetime = 10,
})
end)
end,
})

eo.flySection = rd:Section({ Side = _d("IFweFQ") })
eo.flySection:Header({ Name = _d("KlUBQdr76oOB9w") })

eo.flySection:Toggle({
Name = _d("KlUBQRAwIz99VEFrFwMPXFgUSEtCL00KDRgDDRtXUQ"),
Default = false,
Callback = function(qemu)
local bkn = eo.flyToggle(qemu)

kqs:Notify({
Title = _d("KlUB"),
Description = bkn,
Lifetime = 4,
})
end,
}, _d("DVoaGWcBDhU"))

getgenv().ACBXTeleport = eo

getgenv().ACBXDeepWater = hgk

pcall(hgk.dropStale)

for md, wtix in ipairs(eo.npcs) do
eo.npcSection:Button({
Name = wtix.name,
Callback = function()
task.spawn(function()
local fpbu = eo.go(wtix)

kqs:Notify({
Title = _d("OFwUBEgIEBg"),
Description = fpbu,
Lifetime = 6,
})
end)
end,
})
end

local cl = yyu:Section({ Side = _d("IFweFQ") })

cl:Header({ Name = _d("KFAfBlEJBUzb4+7X3+0") })

local lcbm = {
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

local nqzj = (tonumber(getgenv().ACBXDigGeneration) or 0) + 1
getgenv().ACBXDigGeneration = nqzj

function lcbm.read()
local uto, zidj = pcall(function()
return zbuo.DigGetState:InvokeServer()
end)

return uto and type(zidj) == _d("GFgaDV0") and zidj or nil
end

function lcbm.call(cal, fdpu)
local xmlx, lj = pcall(function()
return zbuo.DigShop:InvokeServer(cal, fdpu)
end)

task.wait(2.5)

return xmlx and lj == true
end

function lcbm.wear()
local hln = ehbn.Character

if not hln then
return false
end

local thbc = hln:FindFirstChildOfClass(_d("JEwVAFYICwg"))
local uej = ehbn:FindFirstChild(_d("LlgbCkgGAQc"))

if not (thbc and uej) then
return false
end

thbc:UnequipTools()
task.wait(0.4)

for zfp = 1, 8 do
for qqws, kzy in ipairs(uej:GetChildren()) do
if kzy:IsA(_d("OFYXDQ")) and kzy.Name:find(_d("Mn0RBmsPDRpcFA")) then
thbc:EquipTool(kzy)

return true
end
end

task.wait(0.5)
end

return false
end

function lcbm.run()
local hkj = lcbm.read()

if not hkj then
return _d("OFEdQVwOBUxKEA5IRwsfGRYOTEcDAkoPBEoODAsX")
end

local ruf = {}

pcall(function()
local pzjh = zbuo.FishingGetState:InvokeServer()

ruf = pzjh and pzjh.areas or {}
end)

if not (ruf.abandoned_island and ruf.twin_beaches and ruf.windmill_isle) then
eo.unlock()
task.wait(1)
end

local lf

for idex, qwn in ipairs(eo.npcs) do
if qwn.name == _d("KFAfBl0V") then
lf = qwn
break
end
end

if not lf then
return _d("OFEdQWwVBw1KDRNdRyoZVwwESkcLHxkWDkxHCwIZDAlRFEIbVgoNXEk")
end

eo.go(lf)
task.wait(2)

local nzn = ehbn.Character
local szex = nzn and nzn:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))
local pwa = eo.point(lf)

if not (szex and pwa) or (szex.Position - pwa).Magnitude > 40 then
return _d("L1YNDVxHDANNWBNdBgEEGQwJXUc2HlwZEk0VB0xxDQ9MAhBC")
end

hkj = lcbm.read() or hkj

local kscd = false
local syj = hkj.shovels and hkj.shovels.shovel_basic == true
local wvwn = hkj.detectors and hkj.detectors.detector_basic == true

if not (syj and wvwn) then
kscd = lcbm.call(_d("L1UZCFU0Fg1LDARK"), _d("H1EXF10LPQ5YCwhb"))
hkj = lcbm.read() or hkj
end

if hkj.equippedShovel ~= _d("H1EXF10LPQ5YCwhb") then
lcbm.call(_d("KUgNCEg0CgNPHQ0"), _d("H1EXF10LPQ5YCwhb"))
end

if hkj.equippedDetector ~= _d("CFwMBFsTDR5mGgBLDgE") then
lcbm.call(_d("KUgNCEgjBxhcGxVXFQ"), _d("CFwMBFsTDR5mGgBLDgE"))
end

hkj = lcbm.read() or hkj

if hkj.equippedShovel == _d("H1EXF10LPQ5YCwhb") and hkj.equippedDetector == _d("CFwMBFsTDR5mGgBLDgE") then
local edc = lcbm.wear()
local nkve = false

if edc and vs.enabled then
vs.autoFishWanted = false
nkve = true

yeq(false)

pcall(function()
xevk:UpdateState(false)
end)
end

return (kscd and _d("L1UZCFUCBkxYFgUYAhMZUAgRXQM") or _d("KUgNCEgXBwg"))
.. _d("TE0QBBglAx9QG0FrDw0aXBRBWQkGTHsZElEEQihcDARbEw0eFw")
.. (nkve and _d("THgNFVdHJAVKEEFXAQRMFFgVUAJCH1EXF10LQgRYC0FMDwdMTRcOVEcRAFYMTw") or _d(""))
end

return _d("OFEdQXoGEQVaWDJQCBQJVVgOSkcmCU0dAkwIEExQC0FLEwsAVVgMURQRBVcfTw")
end

function lcbm.unlock()
if lcbm.busy then
return _d("LVUKBFkDG0xOFxNTDgwLFw")
end

lcbm.busy = true

local ukzk, urt = pcall(lcbm.run)

lcbm.busy = false

if not ukzk then
return _d("KFAfBlEJBUxfGQhUAgZWGQ") .. tostring(urt)
end

return urt
end

lcbm.icon = function()
local ubr = gethui()

for vtj, vcvf in ipairs(ubr:QueryDescendants(_d("JVQZBl0rAw5cFA"))) do
if vcvf.Name == _d("OFgaKFUGBQk") then
local vyka = vcvf.Parent
local exan = vyka and vyka:FindFirstChild(_d("OFgaMk8OFg9RHRN2Bg8J"))

if exan and exan.Text == _d("KFAfBlEJBQ") then
if vcvf:GetAttribute(_d("LXo6OXwOBSVaFw8")) then
return true
end

vcvf:SetAttribute(_d("LXo6OXwOBSVaFw8"), true)
vcvf.Image = _d("")
vcvf.BackgroundTransparency = 1

local cfd = Color3.fromRGB(233, 236, 242)

for afvq, uvj in ipairs(ubr:QueryDescendants(_d("JVQZBl0rAw5cFA"))) do
if uvj.Name == _d("OFgaKFUGBQk") and uvj ~= vcvf and uvj.Image ~= _d("") then
cfd = uvj.ImageColor3
break
end
end

local function fwks(yfzs, hvc, zrrm, vmq, qe, agvq)
local axq = Instance.new(_d("KksZDF0"))

axq.Size = UDim2.fromOffset(zrrm, vmq)
axq.Position = UDim2.fromOffset(yfzs, hvc)
axq.BackgroundColor3 = cfd
axq.BorderSizePixel = 0
axq.Parent = vcvf

if agvq then
axq.Rotation = agvq
end

if qe then
local zf = Instance.new(_d("OXA7DkoJBx4"))

zf.CornerRadius = UDim.new(0, qe)
zf.Parent = axq
end

return axq
end

fwks(1.1, 10.2, 7, 6.4, 1.6, -45)
fwks(3.1, 8.3, 11, 2.2, 0.8, -45)
fwks(9.8, 4.4, 5.6, 2, 0.8, 45)

return true
end
end
end

return false
end

task.defer(function()
for dky = 1, 20 do
if lcbm.icon() then
break
end

task.wait(0.25)
end
end)

cl:Button({
Name = _d("OVcUDlsMQghQHwZRCQU"),
Callback = function()
task.spawn(function()
kqs:Notify({
Title = _d("KFAfBlEJBQ"),
Description = _d("JFwZBVEJBUxNF0FMDwdMbQoEWRQXHlxYKU0JFglLVg"),
Lifetime = 5,
})

local qte = lcbm.unlock()

kqs:Notify({
Title = _d("KFAfBlEJBQ"),
Description = qte,
Lifetime = 10,
})
end)
end,
})

lcbm.statusParagraph = cl:Paragraph({
Header = _d("KFAfQUsTAxhc"),
Body = _d("PlwZBVEJBUxNEAQYAwsLGQsATgJMQhc"),
})

lcbm.data = require(egii.ModuleScripts.DigData)

function lcbm.zoneAt(bz)
for oope, zqxc in ipairs(game:GetService(_d("L1YUDV0EFgVWFjJdFRQFWh0")):GetTagged(lcbm.data.ZoneTag)) do
if zqxc:IsA(_d("LlgLBGgGEBg")) and zqxc:IsDescendantOf(workspace) then
local jr = zqxc.CFrame:PointToObjectSpace(bz)
local qh = zqxc.Size * 0.5

if math.abs(jr.X) <= qh.X and math.abs(jr.Y) <= qh.Y and math.abs(jr.Z) <= qh.Z then
return true
end
end
end

return false
end

function lcbm.onIsland()
for rrt, kdx in ipairs(game:GetService(_d("L1YUDV0EFgVWFjJdFRQFWh0")):GetTagged(lcbm.data.ZoneTag)) do
if kdx:IsA(_d("LlgLBGgGEBg")) and kdx:IsDescendantOf(workspace) then
return true
end
end

return false
end

function lcbm.bestShovel(zti)
local ttg = zti and zti.shovels or {}
local awtl = nil

for yjjp, nrcp in ipairs(lcbm.data.Shovels) do
if ttg[nrcp.id] == true then
awtl = nrcp.id
end
end

return awtl
end

function lcbm.equipBest()
local xajw = lcbm.read()
local zux = lcbm.bestShovel(xajw)

if not zux then
return nil
end

if xajw.equippedShovel ~= zux then
lcbm.call(_d("KUgNCEg0CgNPHQ0"), zux)
end

lcbm.wear()

return zux
end

function lcbm.bestDetector(ldc)
local vzjx = ldc and ldc.detectors or {}
local sf = nil

for shfj, grqq in ipairs(lcbm.data.Detectors) do
if vzjx[grqq.id] == true then
sf = grqq.id
end
end

return sf
end

function lcbm.equipBestDetector()
local imw = lcbm.read()
local ivty = lcbm.bestDetector(imw)

if not ivty then
return nil
end

if imw.equippedDetector ~= ivty then
lcbm.call(_d("KUgNCEgjBxhcGxVXFQ"), ivty)
end

return ivty
end

function lcbm.leaveNpc()
local lnk = ehbn.Character
local igf = lnk and lnk:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))
local nxg = lnk and lnk:FindFirstChildOfClass(_d("JEwVAFYICwg"))

if not (igf and nxg) then
return false
end

local jib

for ef, tdxr in ipairs(eo.npcs) do
if tdxr.name == _d("KFAfBl0V") then
jib = tdxr
break
end
end

local pcu = jib and eo.point(jib)

if not pcu then
return false
end

local nquk = Vector3.new(igf.Position.X - pcu.X, 0, igf.Position.Z - pcu.Z)

if nquk.Magnitude >= 16 then
return true
end

if nquk.Magnitude < 1 then
nquk = Vector3.new(0, 0, -1)
end

nquk = nquk.Unit

local nof = Vector3.new(pcu.X + nquk.X * 22, igf.Position.Y, pcu.Z + nquk.Z * 22)
local cuyb = os.clock() + 6

nxg:MoveTo(nof)

while os.clock() < cuyb do
local wmse = ehbn.Character
local su = wmse and wmse:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not su or (su.Position - nof).Magnitude < 4 then
break
end

task.wait(0.15)
end

pcall(function()
nxg:MoveTo(igf.Position)
end)

return true
end

function lcbm.goToSand(cznh)

if cznh or not lcbm.onIsland() then
if not cznh then

pcall(function()
zbuo.TeleportToWorld:FireServer(_d("AFYaA0E"))
end)

local ck = os.clock() + 15

while not lcbm.onIsland() and os.clock() < ck do
task.wait(0.5)
end
end

local wri

for sgjl, toi in ipairs(eo.npcs) do
if toi.name == _d("KFAfBl0V") then
wri = toi
break
end
end

if wri then
eo.go(wri)
task.wait(2)
end
end

if lcbm.onIsland() then
lcbm.leaveNpc()
end
end

function lcbm.spot()
local tpxy = ehbn.Character
local pbk = tpxy and tpxy:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not pbk then
return nil
end

local pv = pbk.CFrame.LookVector
local due = Vector3.new(pv.X, 0, pv.Z)

if due.Magnitude < 0.01 then
due = Vector3.new(0, 0, -1)
end

due = due.Unit

local lma = RaycastParams.new()
lma.FilterType = Enum.RaycastFilterType.Exclude
lma.FilterDescendantsInstances = { tpxy }

local function juq(mzai, xygw)
local zd = pbk.Position + mzai * xygw + Vector3.new(0, 4, 0)
local bzvn = workspace:Raycast(zd, Vector3.new(0, -18, 0), lma)

if bzvn and lcbm.zoneAt(bzvn.Position) then
return bzvn.Position
end
end

for lds, qt in ipairs({ 4, 7, 10, 2 }) do
local vpsj = juq(due, qt)

if vpsj then
return vpsj
end
end

local zwv = Vector3.new(-due.Z, 0, due.X)

for hnxh, xxba in ipairs({ 4, 8 }) do
for hktz, rnr in ipairs({ 1, -1 }) do
for pxop, zbz in ipairs({ 1, 0.5 }) do
local mwj = juq((zwv * (rnr * zbz) + due * (1 - zbz)).Unit, xxba)

if mwj then
return mwj
end
end
end
end

return nil
end

function lcbm.turn()
local sck = ehbn.Character
local pm = sck and sck:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not pm then
return
end

local anh = pm.CFrame.LookVector
local kbuj = Vector3.new(anh.X, 0, anh.Z)

if kbuj.Magnitude < 0.01 then
kbuj = Vector3.new(0, 0, -1)
end

kbuj = kbuj.Unit

local zpl = Vector3.new(-kbuj.Z, 0, kbuj.X)

pm.CFrame = CFrame.lookAt(pm.Position, pm.Position + zpl)
end

lcbm.misses = 0

lcbm.pending = false

lcbm.spots = {}
lcbm.treasures = {}

local function ctjk(pot)
local xkn = {}
local gslm = {}

for fyp, mkdb in pairs(pot) do
local ti
local jst

if typeof(mkdb) == _d("OlwbFVcVUQ") or typeof(mkdb) == _d("L38KAFUC") then
ti = fyp
jst = mkdb
elseif type(mkdb) == _d("GFgaDV0") then
ti = mkdb.id or mkdb.Id or mkdb[1]
jst = mkdb.position or mkdb.Position or mkdb.pos or mkdb[2]
end

if typeof(jst) == _d("L38KAFUC") then
jst = jst.Position
end

if ti ~= nil and typeof(jst) == _d("OlwbFVcVUQ") then
table.insert(xkn, { id = ti, position = jst, spot = true })
gslm[ti] = true
end
end

return xkn, gslm
end

pcall(function()
jhh(zbuo.DigUpdate.OnClientEvent, function(aeed, qami)
if aeed == _d("KFAfM10UFwBN") then
lcbm.pending = false
lcbm.resultAt = os.clock()
elseif aeed == _d("KFAfIlkJAQlV") then
lcbm.pending = false
elseif aeed == _d("KFAfMkwGEBg") then

lcbm.startedAt = os.clock()
lcbm.startDuration = type(qami) == _d("GFgaDV0") and tonumber(qami.duration) or nil
end

if (aeed == _d("P0kXFUs") or aeed == _d("OEsdAEsSEAlK")) and type(qami) == _d("GFgaDV0") then
local qwia, nbq = ctjk(qami)

if aeed == _d("P0kXFUs") then
for yxfk, qjt in ipairs(qwia) do
qjt.spot = true
end

lcbm.spots = qwia
lcbm.reportedSpots = nbq
else
lcbm.treasures = qwia

for cve, ltd in ipairs(qwia) do
ltd.spot = nil
end

lcbm.reported = nbq
end

local bxh = lcbm.target

if bxh and not bxh.mark then
local gf = bxh.spot and lcbm.reportedSpots or lcbm.reported

if gf and not gf[bxh.id] then
lcbm.targetGone = true
end
end
end
end)
end)

function lcbm.withinDig(vpnp)
local pzcr = ehbn.Character
local sh = pzcr and pzcr:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not sh then
return false
end

return (sh.Position - vpnp).Magnitude <= 10
end

lcbm.markGone = {}

function lcbm.marked()
local kwci = workspace:FindFirstChild(_d("KFAfLFkVCR8"))
local dsy = {}

if not kwci then
return dsy
end

local flko = os.clock()

for kdm, dkdl in ipairs(kwci:GetChildren()) do
if dkdl.Name == _d("NHQZE1M") and dkdl:IsA(_d("LlgLBGgGEBg")) then
local dtf = dkdl.Position
local px = string.format(_d("AVgKCgJCTFxfQkQWVwQ"), dtf.X, dtf.Z)
local nyr = lcbm.markGone[px]

if not (nyr and flko - nyr < 90) then
table.insert(dsy, { id = px, position = dtf, mark = true })
end
end
end

return dsy
end

function lcbm.chests()
local pcju = {}

for xuqb, acym in ipairs(lcbm.spots or {}) do
table.insert(pcju, acym)
end

for btop, byvo in ipairs(lcbm.treasures or {}) do
table.insert(pcju, byvo)
end

for ggui, xk in ipairs(lcbm.marked()) do
local xc = false

for sqq, nfqy in ipairs(pcju) do
if (nfqy.position - xk.position).Magnitude < 2 then
xc = true

break
end
end

if not xc then
table.insert(pcju, xk)
end
end

return pcju
end

function lcbm.release(ydfa)
if ydfa.mark then
lcbm.markGone[ydfa.id] = os.clock()
else
lcbm.forget(ydfa)
end
end

function lcbm.nearestChest(xdwy)
local oqkz = ehbn.Character
local hbh = oqkz and oqkz:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not hbh then
return nil
end

local owpa
local rpxv

for nozj, blco in ipairs(lcbm.chests()) do
local gzsg = (blco.position - hbh.Position).Magnitude

if gzsg <= xdwy and (not rpxv or gzsg < rpxv) then
owpa = blco
rpxv = gzsg
end
end

return owpa
end

function lcbm.forget(mwd)
for ns, gaoi in ipairs({ lcbm.spots or {}, lcbm.treasures or {} }) do
for npy, tszt in ipairs(gaoi) do
if tszt.id == mwd.id then
table.remove(gaoi, npy)

return
end
end
end
end

function lcbm.walkTo(xe)
local so = ehbn.Character
local lsaw = so and so:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))
local fkp = so and so:FindFirstChildOfClass(_d("JEwVAFYICwg"))

if not (lsaw and fkp) then
return false
end

local mny = os.clock() + 12
local lbm = (lsaw.Position - xe).Magnitude
local rqhn = os.clock()
local stcq = false

pcall(function()
fkp:MoveTo(xe)
end)

while os.clock() < mny do
local ky = ehbn.Character
local rsr = ky and ky:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not rsr then
break
end

local isk = (rsr.Position - xe).Magnitude

if isk <= 4 then
stcq = true

break
end

if lcbm.targetGone or not lcbm.autoOn
or getgenv().ACBXDigGeneration ~= nqzj or not ydyn() then
break
end

if isk < lbm - 1 then
lbm = isk
rqhn = os.clock()
elseif os.clock() - rqhn > 1.5 then
break
end

task.wait(0.15)
end

pcall(function()
fkp:MoveTo(lsaw.Position)
end)

return stcq
end

function lcbm.digAt(xsux)
lcbm.misses = 0
lcbm.pending = true
lcbm.startedAt = 0
lcbm.startDuration = nil
lcbm.refused = false

local abo = os.clock()
local bj = pcall(function()
zbuo.DigAction:FireServer(_d("P00ZE0w"), xsux)
end)

if not bj then
lcbm.pending = false
lcbm.refused = true

return false
end

local wwf = abo + 1.2
local er

while lcbm.pending and lcbm.autoOn
and getgenv().ACBXDigGeneration == nqzj and ydyn() do
local yy = os.clock()

if (lcbm.startedAt or 0) >= abo then

er = er or (lcbm.startedAt + (lcbm.startDuration or 0) + 1.5)

if yy >= er then
break
end
elseif yy >= wwf then
break
end

task.wait()
end

local uq = (lcbm.resultAt or 0) >= abo

lcbm.pending = false

if uq then
lcbm.dugAt = os.clock()
end

lcbm.refused = (lcbm.startedAt or 0) < abo

return uq
end

function lcbm.autoLoop()
local bt = false

while lcbm.autoOn and ydyn() and getgenv().ACBXDigGeneration == nqzj do
local wkpf = ha and ha.worldBoss
local vdja = wkpf ~= nil
and type(wkpf.holdsDigging) == _d("CkwWAkwODQI")
and wkpf.holdsDigging() == true

local hpd = wkpf ~= nil and type(wkpf.bossUp) == _d("CkwWAkwODQI") and wkpf.bossUp() == true

local ajs = hpd
and not (wkpf.stopAtFull and type(wkpf.meterFull) == _d("CkwWAkwODQI") and wkpf.meterFull())
local ndsl = ajs
and (pcyb.prioRank(_d("DlYLEg")) or 0) < (pcyb.prioRank(_d("G1gMBEo")) or 0)

if ndsl then
vdja = true
end

if lcbm.shopping then

task.wait(0.5)
elseif vdja or pcyb.digBlocked() then

bt = true

lcbm.heldAt = os.clock()
task.wait(1)
else
if bt then

bt = false

if type(wkpf.setRepeat) == _d("CkwWAkwODQI") then
wkpf.setRepeat(false)
end

lcbm.goToSand()
end

local phv = lcbm.chestOn and lcbm.nearestChest(2500) or nil
local uyy = false

if phv then
lcbm.target = phv
lcbm.targetGone = false

local gmb = ehbn.Character and ehbn.Character:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))
local tmn = gmb and (gmb.Position - phv.position).Magnitude or 999

if tmn > 45 then
pcall(function()
eo.standAt(phv.position)
end)

task.wait(0.6)
end

if not lcbm.walkTo(phv.position) and not lcbm.targetGone then
pcall(function()
eo.standAt(phv.position)
end)

task.wait(0.6)
lcbm.walkTo(phv.position)
end

local qpw = not lcbm.withinDig(phv.position)
local nbw = lcbm.targetGone

if nbw or qpw then
lcbm.strikes = nbw and 0 or (lcbm.strikes + 1)

if nbw or lcbm.strikes >= 2 then
lcbm.strikes = 0
lcbm.release(phv)
lcbm.skipped = lcbm.skipped + 1
end
else

if lcbm.digAt(phv.position) then
lcbm.strikes = 0
lcbm.release(phv)
lcbm.dug = lcbm.dug + 1
uyy = true
elseif lcbm.refused then

lcbm.strikes = 0
lcbm.release(phv)
lcbm.skipped = lcbm.skipped + 1
else

lcbm.strikes = lcbm.strikes + 1

if lcbm.strikes >= 3 then
lcbm.strikes = 0
lcbm.release(phv)
lcbm.skipped = lcbm.skipped + 1
end
end
end

lcbm.target = nil
lcbm.targetGone = false
end

if not uyy then
local wnfx = lcbm.spot()

if wnfx then
lcbm.digAt(wnfx)
else

lcbm.misses = (lcbm.misses or 0) + 1

if lcbm.misses >= 4 then
lcbm.misses = 0
lcbm.goToSand(true)
else
lcbm.turn()
task.wait(0.25)
end
end
end
end
end
end

function lcbm.autoStart()
local bnbe = lcbm.read()

if not (bnbe and lcbm.bestShovel(bnbe)) then
return _d("IlZYElAIFAlVWA5PCQcIGVVBbQkOA1oTQVwOBQtQFgYYAQseSgxP")
end

local imj = false

if vs.enabled then
vs.autoFishWanted = false

yeq(false)
pcall(function()
xevk:UpdateState(false)
end)

imj = true
end

zjvu = true
lcbm.equipBest()

if lcbm.chestOn then
pcall(lcbm.equipBestDetector)
end

lcbm.goToSand()
lcbm.dugAt = os.clock()

task.spawn(lcbm.runAuto)

return _d("KFAfBlEJBUI") .. (imj and _d("THgNFVdHJAVKEEFXAQRMFFgVUAJCH1EXF10LQgRYC0FMDwdMTRcOVEcRAFYMTw") or _d(""))
end

function lcbm.runAuto()
if lcbm.loopLive then
return
end

lcbm.loopLive = true

local kq, yfql = pcall(lcbm.autoLoop)

lcbm.loopLive = false

if not kq then
lcbm.loopError = tostring(yfql)
end
end

task.spawn(function()
while ydyn() and fr do
task.wait(5)

if lcbm.autoOn and not lcbm.shopping then
local iyn = os.clock()

if not lcbm.loopLive then
task.spawn(lcbm.runAuto)
elseif iyn - (lcbm.dugAt or iyn) > 25
and iyn - (lcbm.heldAt or 0) > 25
and iyn - (lcbm.watchdogAt or 0) > 20 then
lcbm.watchdogAt = iyn
lcbm.pending = false
lcbm.strikes = 0
lcbm.misses = 0
lcbm.target = nil
lcbm.targetGone = false

pcall(function()
lcbm.goToSand(true)
lcbm.equipBest()
end)
end
end
end
end)

function lcbm.toggleAuto(nvvj, gkqs)
if nvvj then
local ejhg = lcbm.autoOn == true

lcbm.chestOn = gkqs == true
lcbm.switching = true

pcall(function()
local pmnc = gkqs and lcbm.autoToggle or lcbm.chestToggle

if pmnc then
pmnc:UpdateState(false)
end
end)

lcbm.switching = false

if ejhg then
return
end

lcbm.autoOn = true

task.spawn(function()
local hd = lcbm.autoStart()

kqs:Notify({
Title = gkqs and _d("LUwMDhgjCwsZOwldFBYf") or _d("LUwMDhgjCws"),
Description = hd,
Lifetime = 6,
})
end)
else

if lcbm.switching then
return
end

lcbm.autoOn = false
lcbm.pending = false
zjvu = false
end
end

lcbm.autoToggle = cl:Toggle({
Name = _d("LUwMDhgjCws"),
Default = false,
Callback = function(irar)
lcbm.toggleAuto(irar, false)
end,
}, _d("CFAfBlEJBTNYDRVX"))

lcbm.chestToggle = cl:Toggle({
Name = _d("LUwMDhgjCwsZOwldFBYf"),
Default = false,
Callback = function(zit)
lcbm.toggleAuto(zit, true)
end,
}, _d("CFAfBlEJBTNYDRVXOAEEXAsV"))

lcbm.chestParagraph = cl:Paragraph({
Header = _d("L1EdEkwU"),
Body = _d("OEsZAlMCBlYZSEEVRyYZXkJBCEdPTGoTCEgXBwgDWFE"),
})

task.spawn(function()
local wbwa

while ydyn() and fr do
local jk = #lcbm.chests()
local boyl = _d("OEsZAlMCBlYZ") .. jk .. _d("TBRYJU0AWEw") .. lcbm.dug .. _d("TBRYMlMOEhxcHFsY") .. lcbm.skipped

if lcbm.chestOn and jk > 0 then
local hzpu = lcbm.nearestChest(2500)
local wnm = ehbn.Character
local hoj = wnm and wnm:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if hzpu and hoj then
local dxhg = math.floor((hzpu.position - hoj.Position).Magnitude)
boyl = boyl .. _d("ZncdAEoCERgDWA") .. dxhg .. (dxhg > 45 and _d("TEoMFFwUQkRRFxER") or _d("TEoMFFwU"))
end
end

if boyl ~= wbwa then
wbwa = boyl

pcall(function()
lcbm.chestParagraph:UpdateBody(boyl)
end)
end

task.wait(0.5)
end
end)

function lcbm.npcRow()
for vgvp, sv in ipairs(eo.npcs) do
if sv.name == _d("KFAfBl0V") then
return sv
end
end
end

function lcbm.shop(lnpm, ogi)
local efzs, hgm, xdo, wo = pcall(function()
return zbuo.DigShop:InvokeServer(lnpm, ogi)
end)

if not efzs then
return false, _d("OFEdQVwOBUxKEA5IRwsfGRYOTEcDAkoPBEoODAsX")
end

return hgm == true, xdo, type(wo) == _d("GFgaDV0") and wo or nil
end

function lcbm.pickShovel(neur)
local ido = neur.shovels or {}
local ywe = tonumber(neur.digs) or 0
local zoq

for isx, rob in ipairs(lcbm.data.Shovels) do
if not rob.crafted and rob.id ~= _d("H1EXF10LPQ5YCwhb") and ido[rob.id] ~= true then
local rax = tonumber(rob.cost) or math.huge

if rax <= ywe and (not zoq or rax > (tonumber(zoq.cost) or 0)) then
zoq = rob
end
end
end

return zoq
end

function lcbm.pickDetector(mw)
local zfy = mw.detectors or {}
local qvf = tonumber(mw.digs) or 0
local fl

for dd, fdo in ipairs(lcbm.data.Detectors) do
if not fdo.crafted and fdo.id ~= _d("CFwMBFsTDR5mGgBLDgE") and zfy[fdo.id] ~= true then
local ulr = tonumber(fdo.cost) or math.huge

if ulr <= qvf and (not fl or ulr > (tonumber(fl.cost) or 0)) then
fl = fdo
end
end
end

return fl
end

function lcbm.nextDef(cwte, xsuy)
local mlkd

for zy, pibl in ipairs(cwte) do
local kro = tonumber(pibl.cost)

if not pibl.crafted and kro and xsuy[pibl.id] ~= true then
if not mlkd or kro < (tonumber(mlkd.cost) or math.huge) then
mlkd = pibl
end
end
end

return mlkd
end

function lcbm.toCounter()
local blu = lcbm.npcRow()
local kki = blu and eo.point(blu)
local vcx = ehbn.Character
local dza = vcx and vcx:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not (kki and dza) then
return false
end

if (dza.Position - kki).Magnitude <= 20 then
return true
end

eo.go(blu)
task.wait(2.2)

vcx = ehbn.Character
dza = vcx and vcx:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

return dza ~= nil and (dza.Position - kki).Magnitude <= 20
end

function lcbm.secretRow()
for pys, gtwg in ipairs(eo.npcs) do
if gtwg.name == _d("P1wbE10TQihQHwZdFQ") then
return gtwg
end
end
end

function lcbm.secretDef(gsp)
for nb, vdek in ipairs(gsp or {}) do
if vdek.crafted then
return vdek
end
end
end

function lcbm.recipeHeld(hoq)
local lpnt = lcbm.data and lcbm.data.SecretRecipe
local yrek = hoq and hoq.mats

if type(lpnt) ~= _d("GFgaDV0") or type(yrek) ~= _d("GFgaDV0") then
return false
end

for adwr, mfx in ipairs(lpnt) do
if (tonumber(yrek[mfx.id]) or 0) < (tonumber(mfx.count) or 0) then
return false
end
end

return true
end

function lcbm.toSecret()
local meel = lcbm.secretRow()

if not meel then
return false
end

local vvu = workspace:FindFirstChild(_d("Imk7Eg"))
local spco = vvu and vvu:FindFirstChild(_d("P1wbE10TJgVeHwRKKTIv"))
local luw = spco and spco:GetPivot().Position or eo.point(meel)

if not luw then
return false
end

eo.hold()

for dhkk = 1, 3 do
local awqi = ehbn.Character
local iqbo = awqi and awqi:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not iqbo then
return false
end

local fpqs = (iqbo.Position - luw).Magnitude

if fpqs <= 20 then
return true
end

if fpqs > 1500 and meel.island then
pcall(function()
zbuo.FishingIslandTeleport:FireServer(meel.island)
end)

task.wait(4.5)
else
pcall(function()
eo.standAt(luw)
end)
task.wait(0.9)
end
end

local iyem = ehbn.Character
local jch = iyem and iyem:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

return jch ~= nil and (jch.Position - luw).Magnitude <= 20
end

function lcbm.craftSecret(ozxv, plre, qejo)
local nbaj = {}
local jrvx = ozxv and lcbm.secretDef(lcbm.data.Shovels) or nil
local azul = plre and lcbm.secretDef(lcbm.data.Detectors) or nil

local erb = jrvx and (qejo.shovels or {})[jrvx.id] ~= true
local kh = azul and (qejo.detectors or {})[azul.id] ~= true

if not (erb or kh) then
return nbaj, nil, qejo
end

if not lcbm.recipeHeld(qejo) then
return nbaj, nil, qejo
end

lcbm.shopping = true

local irxe = lcbm.toSecret()
local muq

if irxe then
local function egi(vsw, bbto)
if not bbto or not lcbm.recipeHeld(qejo) then
return
end

local zsf, xmlg = lcbm.shop(vsw, bbto.id)

if zsf then
table.insert(nbaj, bbto.name)
elseif not muq then
muq = tostring(xmlg)
end

qejo = lcbm.read() or qejo
end

egi(_d("L0sZB0w0CgNPHQ0"), erb and jrvx or nil)
egi(_d("L0sZB0wjBxhcGxVXFQ"), kh and azul or nil)
end

lcbm.shopping = false

return nbaj, muq, qejo
end

function lcbm.upgradeAll()
local nuj = lcbm.buyOn == true
local ayj = lcbm.detBuyOn == true

if not (nuj or ayj) then
return nil, _d("I18eTw")
end

local thcu = lcbm.read()

if not thcu then
return nil, _d("OFEdQVwOBUxKEA5IRwsfGRYOTEcDAkoPBEoODAsX")
end

local zaw, tcby, wdj = lcbm.craftSecret(nuj, ayj, thcu)

if wdj then
thcu = wdj
end

if nuj then
local uakz = lcbm.bestShovel(thcu)

if uakz and thcu.equippedShovel ~= uakz then
lcbm.equipBest()
end
end

if ayj then
local gylu = lcbm.bestDetector(thcu)

if gylu and thcu.equippedDetector ~= gylu then
lcbm.equipBestDetector()
end
end

local kdvx = nuj and lcbm.pickShovel(thcu) or nil
local tdt = ayj and lcbm.pickDetector(thcu) or nil

if not (kdvx or tdt) then

if #zaw > 0 then
if lcbm.autoOn then
lcbm.leaveNpc()
end

return table.concat(zaw, _d("TBJY"))
end

return nil, tcby and (_d("L0sZB0xHEAlfDRJdA1hM") .. tostring(tcby))
or _d("IlZYFEgAEA1dHUFRFEINXx4OSgMDDlUdQUECFkI")
end

lcbm.shopping = true
lcbm.toCounter()

local hsy = {}
local vy

for brlj, cjt in ipairs(zaw) do
hsy[#hsy + 1] = cjt
end

local function eetw(ldy, oyh)
if not oyh then
return
end

local pnkf, stdt = lcbm.shop(ldy, oyh.id)

if pnkf then
table.insert(hsy, oyh.name)
elseif not vy then
vy = tostring(stdt)
end
end

eetw(_d("LkwBMlAIFAlV"), kdvx)
eetw(_d("LkwBJV0TBw9NFxM"), tdt)

if #hsy == 0 then
lcbm.shopping = false

return nil, _d("LkwBQUoCBBlKHQUCRw") .. (vy or _d("AlZYAFYUFQlL"))
end

if nuj then
lcbm.equipBest()
end

if ayj then
lcbm.equipBestDetector()
end

if lcbm.autoOn then
lcbm.leaveNpc()
end

lcbm.shopping = false

return table.concat(hsy, _d("TBJY"))
end

function lcbm.buyLoop()
while lcbm.buyOn or lcbm.detBuyOn do
local vn, jp, rcbb = pcall(lcbm.upgradeAll)

lcbm.shopping = false

if not vn then
task.wait(10)
elseif jp then
kqs:Notify({
Title = _d("LUwMDhglFxUZPAhfAAsCXlgmXQYQ"),
Description = _d("KUgNCEgXBwgZDAldRw") .. jp .. _d("Qg"),
Lifetime = 6,
})

task.wait(3)
else
task.wait(rcbb == _d("I18eTw") and 0.5 or 10)
end
end
end

function lcbm.syncBuyLoop()
if not (lcbm.buyOn or lcbm.detBuyOn) or lcbm.buyRunning then
return
end

lcbm.buyRunning = true

task.spawn(function()
lcbm.buyLoop()

lcbm.buyRunning = false
end)
end

cl:Toggle({
Name = _d("LUwMDhglFxUZOgRLE0I/URcXXQs"),
Default = false,
Callback = function(fhp)
lcbm.buyOn = fhp
lcbm.syncBuyLoop()
end,
}, _d("CFAfBlEJBTNbDRg"))

cl:Toggle({
Name = _d("LUwMDhglFxUZOgRLE0IoXAwEWxMNHg"),
Default = false,
Callback = function(uw)
lcbm.detBuyOn = uw
lcbm.syncBuyLoop()
end,
}, _d("CFAfBlEJBTNbDRhnAwcYXBsVVxU"))

function lcbm.statusText()
local vesm = lcbm.read()

if not vesm then
return _d("OFEdQVwOBUxKEA5IRwsfGRYOTEcDAkoPBEoODAsX")
end

local ji = tonumber(vesm.digs) or 0
local sby = { _d("KFAfEgJH") .. ji }

local function fo(otfe, qkl)
if not qkl then
return otfe .. _d("VhkdF10VGxhREQ9fRw0bVx0FFg")
end

local bqko = tonumber(qkl.cost) or 0
local zdvb = bqko - ji

return otfe .. _d("Vhk") .. tostring(qkl.name) .. _d("TBRY") .. bqko
.. (zdvb <= 0 and _d("TBEKBFkDG0U") or (_d("TBE") .. zdvb .. _d("TE0XQV8ISw")))
end

table.insert(sby, fo(_d("IlwAFRgUCgNPHQ0"), lcbm.nextDef(lcbm.data.Shovels, vesm.shovels or {})))
table.insert(sby, fo(_d("IlwAFRgDBxhcGxVXFQ"), lcbm.nextDef(lcbm.data.Detectors, vesm.detectors or {})))

return table.concat(sby, _d("Zg"))
end

task.spawn(function()
while ydyn() and fr do
local kuoe, fmv = pcall(lcbm.statusText)

if kuoe and lcbm.statusParagraph then
pcall(function()
lcbm.statusParagraph:UpdateBody(fmv)
end)
end

task.wait(6)
end
end)

getgenv().ACBXDigging = lcbm

dum.tab = dti:Tab({
Name = _d("P1wMFVEJBR8"),

Image = _d(""),
})

dum.icon = function()
local qmc = gethui()

for jfvb, yxmv in ipairs(qmc:QueryDescendants(_d("JVQZBl0rAw5cFA"))) do
if yxmv.Name == _d("OFgaKFUGBQk") then
local mjf = yxmv.Parent
local kig = mjf and mjf:FindFirstChild(_d("OFgaMk8OFg9RHRN2Bg8J"))

if kig and kig.Text == _d("P1wMFVEJBR8") then
if yxmv:GetAttribute(_d("LXo6OXsIBSVaFw8")) then
return true
end

yxmv:SetAttribute(_d("LXo6OXsIBSVaFw8"), true)
yxmv.Image = _d("")
yxmv.BackgroundTransparency = 1

local rtod = Color3.fromRGB(168, 170, 176)

local function giv(zsq, ljth, evt, dgh, zv, jpbk)
local oyi = Instance.new(_d("KksZDF0"))

oyi.Size = UDim2.fromOffset(evt, dgh)
oyi.Position = UDim2.fromOffset(zsq, ljth)
oyi.BackgroundColor3 = rtod
oyi.BorderSizePixel = 0
oyi.Parent = yxmv

if not jpbk then
oyi.BackgroundTransparency = 1

local kwt = Instance.new(_d("OXArFUoICQk"))

kwt.Color = rtod
kwt.Thickness = 1.3
kwt.LineJoinMode = Enum.LineJoinMode.Round
kwt.Parent = oyi
end

if zv then
local jhy = Instance.new(_d("OXA7DkoJBx4"))

jhy.CornerRadius = UDim.new(0, zv)
jhy.Parent = oyi
end

return oyi
end

local mjq = {
{ 8, 0, 2, 3 },
{ 8, 15, 2, 3 },
{ 0, 8, 3, 2 },
{ 15, 8, 3, 2 },
{ 2, 2, 3, 3 },
{ 13, 2, 3, 3 },
{ 2, 13, 3, 3 },
{ 13, 13, 3, 3 },
}

for mdul, ieu in ipairs(mjq) do
giv(ieu[1], ieu[2], ieu[3], ieu[4], 0, true)
end

giv(2, 2, 14, 14, 7, false)
giv(7, 7, 4, 4, 2, true)

return true
end
end
end

return false
end

task.defer(function()
for ijvl = 1, 20 do
if dum.icon() then
break
end

task.wait(0.25)
end
end)

dum.prioSection = dum.tab:Section({
Side = _d("IFweFQ"),
})

dum.prioSection:Header({
Name = _d("PEsRDkoOFhU"),
})

dum.prioSection:Paragraph({
Header = _d("O1EXQV8IBx8ZHghKFBY"),
Body = _d("XRkMAFMCEUxNEAQYBgEPVg0PTEcEBUsLFRRHV0xOGQhMFEIKVgpBXREHHkAaDlweTEx8GQJQRxADTlgIS0cDTFcNDFoCEExYFgUYEwoJGRwTVxcGA04WQU0JBglLWAhMRwsfGQ8JWRNCH00ZD1wUQhhRHRNdR09MSRECU0cDTFcZDF1HFgRYDEFZCxAJWBwYGA8NAF0LQVkJDRhRHRMYCRcBWx0TGAYMCBkMCV1HFhtWWBJPBhJCGTlBSggVTFALQVACDggZGgBbDEIDVxQYGAUbTFhYD1kKB0xYGg5OAkIFTVgVUAYWTFEZEhgUDQFcDAlRCQVMTRdBXAhCHlAfCUxHDANOVmsyMw0bXAoSGAYQCRkWDkxHDQIZDAlRFEIAUAsVAkcDTE0XFl0VQgpQHwlMFEIDV1gVUAJCH1wKF10VQg1XHEFUAgMaXAtBTA8HTFoQAEoGARhcCkFeFQcJFVgSV0cLGBkKFFYUQg1VFw9fFAsIXFgETgIQFU0QCFYAQgRcCgQYBgwIGRcPVB5CH00ZD1wUQg1KEQVdRwQDS1gTWQ4GHxVYFVACQgtVFwNZC0IOVgsSGAYMCBk2MXtHAA1NDA1dFExmMysJVxcRQBkVBEoACwJeVEFdHxIJXREVUQgMHxkZD1xHFgRcWBNdFBZMVh5BTA8HTFYWBBUUCgNNWBVKDhIfGRkTXUcMA01YCV0VB0xWFkFIEhAcVgsEAkcWBFwBQVkLEAlYHBgYFBYNVxxBTA8HTEsND1YODAsZGRRMCA8NTREOVkcGA04WQU8PCwBcWBVQAhtMXRdBTA8HBUtYC1cFTA"),
})

dum.prioRows = {}

dum.prioBuilding = true

local iwx = {}

for xjf, avy in ipairs(pcyb.prioGroups) do
iwx[#iwx + 1] = avy.label
end

for waus = 1, #pcyb.prioGroups do
local zef = nil

pcall(function()
zef = dum.prioSection:Dropdown({
Name = _d("PEsRDkoOFhUZ") .. waus,
Search = false,
Multi = false,
Required = false,
Default = waus,
Options = iwx,
Callback = function(pena)
local kl = type(pena) == _d("GFgaDV0") and pena[1] or pena
local coh

for go, liw in ipairs(pcyb.prioGroups) do
if liw.label == kl then
coh = liw

break
end
end

if coh then
dum.setPriority(coh.id, waus)
end
end,
}, _d("HEsRDmcVAwJSJw") .. waus)
end)

dum.prioRows[waus] = zef
end

dum.prioBuilding = false

dum.configSection = dum.tab:Section({
Side = _d("IFweFQ"),
})

dum.configSection:Header({
Name = _d("L1YWB1EAQiFYFgBfAg8JVww"),
})

dum.autoSaveToggle = dum.configSection:Toggle({
Name = _d("LUwMDhgUAxpc"),
Default = false,
Callback = function(gw)
dum.autoSave = gw
dum.autoSaveAt = 0

if gw then
local dy = dum.selected or _d("CFweAE0LFg")
local ud, begd = dum.save(dy)

dum.selected = dy
dum.lastText = ud and (_d("LUwMDhgUAxpcWA5WR09MTgoOTAJC") .. dy)
or (_d("LUwMDhgUAxpcWA5WS0IKUAoSTEcVHlAMBBgBAwVVHQUCRw") .. tostring(begd))
else
dum.lastText = _d("LUwMDhgUAxpcWA5eAUw")
end
end,
}, _d("D1YWB1EAPQ1MDA5nFAMaXA"))

dum.nameInput = dum.configSection:Input({
Name = _d("P1gOBBgJAwFc"),
Placeholder = _d("CRcfTxg1AwVdCw"),
AcceptedCharacters = _d("LVUU"),
Callback = function(oqg)
dum.nameDraft = oqg
end,
})

dum.nameInput.IgnoreConfig = true

dum.configSection:Button({
Name = _d("L0sdAEwCQh9YDgQ"),
Callback = function()
local etl = dum.nameDraft or dum.nameInput:GetInput()

etl = type(etl) == _d("H00KCFYA") and etl:gsub(_d("MhwLSg"), _d("")):gsub(_d("SUpTRQ"), _d("")) or _d("")

if etl == _d("") then
kqs:Dialog({
Title = _d("L1YWB1EA"),
Description = _d("OEAIBBgGQgJYFQQYAQ0eGQwJXUcRDU8dQV4OEB9NWEwYDhZMWx0CVwoHHxkMCV1HBAVVHUZLRwwNVB1P"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})

return
end

local la, jwo = dum.save(etl)

if not la then
dum.lastText = _d("P1gOBBgBAwVVHQUCRw") .. tostring(jwo)

return
end

dum.selected = etl
dum.lastText = _d("L0sdAEwCBkw") .. etl .. _d("Qg")
dum.savesAt = 0

task.defer(function()
task.wait(0.25)

pcall(function()
dum.fileDropdown:UpdateSelection(etl)
end)
end)
end,
})

dum.fileDropdown = dum.configSection:Dropdown({
Name = _d("P1gOBBgBCwBc"),
Search = false,
Multi = false,
Required = false,
Options = dum.saves(),
Callback = function(omx)
local pfrj = type(omx) == _d("GFgaDV0") and omx[1] or omx

if type(pfrj) == _d("H00KCFYA") and pfrj ~= _d("") then
dum.selected = pfrj
dum.selectionShown = pfrj

pcall(function()
dum.fileDropdown:UpdateName(_d("P1gOBBgBCwBcQkE") .. pfrj)
end)
end
end,
})

dum.fileDropdown.IgnoreConfig = true

dum.configSection:Button({
Name = _d("IFYZBRgUBwBcGxVdAw"),
Callback = function()
local srqg = dum.selected or dum.fileDropdown.Value
local ocz, aue = dum.load(srqg)

dum.lastText = ocz and (_d("IFYZBV0DQg") .. srqg .. _d("Qg")) or (_d("IFYZBRgBAwVVHQUCRw") .. tostring(aue))
end,
})

dum.configSection:Button({
Name = _d("P1gOBBgTDUxKHQ1dBBYJXQ"),
Callback = function()
local wqu = dum.selected or dum.fileDropdown.Value
local aer, eim = dum.save(wqu)

dum.lastText = aer and (_d("O0sXFV1H") .. wqu .. _d("Qg")) or (_d("P1gOBBgBAwVVHQUCRw") .. tostring(eim))
end,
})

dum.configSection:Button({
Name = _d("KFwUBEwCQh9cFARbEwcIGQsATgI"),
Callback = function()
local gfvd = dum.selected or dum.fileDropdown.Value

if type(gfvd) ~= _d("H00KCFYA") or gfvd == _d("") then
dum.lastText = _d("PFAbChgGQh9YDgQYAQsAXFgHURURGBc")

return
end

kqs:Dialog({
Title = _d("KFwUBEwCQg") .. gfvd .. _d("Uw"),
Description = _d("OFEdQV4ODgkZERIYFQcBVg4EXEcEHlYVQVwOEQcZGQ9cRwENVxYOTEcACRkKBFsIFAlLHQUW"),
Buttons = {
{
Name = _d("KFwUBEwC"),
Callback = function()
local veh, tqzv = dum.delete(gfvd)

dum.lastText = veh
and (_d("KFwUBEwCBkw") .. gfvd .. _d("Qg"))
or (_d("L1YNDVxHDANNWAVdCwcYXEJB") .. tostring(tqzv))
end,
},
{
Name = _d("L1gWAl0L"),
},
},
})
end,
})

dum.configSection:Button({
Name = _d("PlweE10UCkxVERJM"),
Callback = function()
dum.savesAt = 0
dum.lastText = _d("P1gOBBgLCx9NWBNdARAJShAEXEk")
end,
})

dum.configSection:Button({
Name = _d("IVgKChgGEUxYDRVXRw4DWBw"),
Callback = function()
local ghei = dum.selected or dum.fileDropdown.Value

if type(ghei) ~= _d("H00KCFYA") or ghei == _d("") then
dum.lastText = _d("PFAbChgGQh9YDgQYAQsAXFgHURURGBc")

return
end

if dum.setAutoLoad(ghei) then
dum.lastText = ghei .. _d("TFUXAFwUQgNXWBJMBhAYFw")
else
dum.lastText = _d("L1YNDVxHDANNWBZKDhYJGQwJXUcDGU0XQVQIAwgZFQBKDAceFw")
end
end,
})

dum.configSection:Button({
Name = _d("L1UdAEpHAxlNF0FUCAMI"),
Callback = function()
dum.setAutoLoad(_d(""))
dum.lastText = _d("IlYMCVEJBUxVFwBcFEIDV1gSTAYQGBc")
end,
})

dum.statusParagraph = dum.configSection:Paragraph({
Header = _d("P00ZFU0U"),
Body = _d(""),
})

dum.miscSection = dum.tab:Section({
Side = _d("PlAfCUw"),
})

dum.miscSection:Header({
Name = _d("IVALAg"),
})

dum.miscSection:Toggle({
Name = _d("LUwMDhgEDgNKHUFfAgwJSxkVUQgMTGwx"),
Default = false,
Callback = function(xo)
ko(xo)
end,
}, _d("AVALAmcGFxhWJwJUCBEJZh8EVgIQDU0RDlY"))

dum.miscSection:Toggle({
Name = _d("LUwMDhg1DQBV"),
Default = true,
Callback = function(ysfl)
dum.autoRoll = ysfl

if ysfl and dum.setRollButton then
dum.setRollButton(_d("LUwMDmoIDgB7DRVMCAw"), true)
end
end,
}, _d("AVALAmcGFxhWJxNXCw4"))

dum.miscSection:Toggle({
Name = _d("LUwMDhg2FwVaE0FqCA4A"),
Default = true,
Callback = function(xh)
dum.autoQuickRoll = xh

if xh and dum.setRollButton then
dum.setRollButton(_d("PUwRAlM1DQBVOhRMEw0C"), true)
end
end,
}, _d("AVALAmcGFxhWJxBNDgEHZgoOVAs"))

dum.uiSection = dum.tab:Section({
Side = _d("PlAfCUw"),
})

dum.uiSection:Header({
Name = _d("OXA"),
})

dum.uiSection:Toggle({
Name = _d("LlgbCl8VDRlXHEFaCxce"),
Default = true,
Callback = function(ass)
pcall(function()
kqs:SetAcrylicBlurState(ass)
end)
end,
}, _d("GVAnA1kECQtLFxRWAz0OVQ0T"))

function dum.widthFactor(hufj)
return 1 + math.max(0, (hufj or 1) - 1) * 0.8
end

function dum.scaleCap()
local du = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local jvfo = math.min(120, math.floor(((du.Y - 40 - 8 - 8) / 500) * 100))

while jvfo > 50 and (dum.baseWidth or 720) * (jvfo / 100) * dum.widthFactor(jvfo / 100) > du.X - 16 do
jvfo = jvfo - 1
end

return math.max(50, jvfo)
end

function dum.scaleCeiling()
return math.min(1.2, dum.scaleCap() / 100)
end

function dum.refreshScaleCap()
local ojuh = dum.scaleSlider

if not ojuh then
return
end

local yufd = dum.scaleCeiling()

pcall(function()
ojuh.Settings.Maximum = yufd
end)

local cvwb = tonumber(ojuh:GetValue()) or 1

if cvwb > yufd then
dum.scaleTarget = yufd

pcall(function()
ojuh:UpdateValue(yufd)
end)
end
end

dum.scaleSlider = dum.uiSection:Slider({
Name = _d("OXBYElsGDgk"),
Default = 1,
Minimum = 0.5,

Maximum = dum.scaleCeiling(),
DisplayMethod = _d("OlgUFF0"),
Precision = 2,

Callback = function(snlv)
dum.scalePending = tonumber(snlv)
dum.scalePendingAt = os.clock()
end,
onInputComplete = function(zkx)
local zjpa = dum.scaleCeiling()

dum.scaleTarget = math.clamp(tonumber(zkx) or dum.scalePending or 1, 0.5, zjpa)
dum.scalePending = nil

dum.scaleAnchor = nil

dum.saveUi()
end,
}, _d("GVAnElsGDgk"))

dum.refreshScaleCap()

dum.themeDropdown = dum.uiSection:Dropdown({
Name = _d("OFEdDF1dQjpWEQU"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = dum.themeOrder,
Callback = function(mht)
local sft = type(mht) == _d("GFgaDV0") and mht[1] or mht

if type(sft) == _d("H00KCFYA") and dum.presets[sft] then
dum.theme = sft
dum.accent = nil
dum.applyTheme()

pcall(function()
dum.themeDropdown:UpdateName(_d("OFEdDF1dQg") .. sft)
end)

dum.saveUi()
end
end,
}, _d("GVAnFVACDwk"))

dum.accentPicker = dum.uiSection:Colorpicker({
Name = _d("LVobBFYTQg9WFA5NFQ"),
Default = Color3.fromRGB(168, 170, 176),
Alpha = 0,
Callback = function(kvw)
dum.accent = kvw
dum.applyTheme()
dum.saveUi()
end,
}, _d("GVAnAFsEBwJN"))

dum.codesSection = dum.tab:Section({
Side = _d("PlAfCUw"),
})

dum.codesSection:Header({
Name = _d("L1YcBEs"),
})

dum.codeText = _d("PlwcBF0KEUxcDgRKHkIPVhwEGBMKBUpYBlkKB0xKEAhIFEIbUAwJFEcNAlxYBE4CEBUZGw5NFw4JGRcHGBQHD1YWBUtJ")

function dum.setCodeText(djc)
dum.codeText = djc

pcall(function()
dum.codeParagraph:UpdateBody(djc)
end)
end

function dum.redeemCodes()
if dum.redeeming then
return
end

local aly = zbuo.RedeemCode
local wuft = egii:FindFirstChild(_d("IVYcFFQCMQ9LERFMFA"))
local cwf = wuft and wuft:FindFirstChild(_d("L1YcBHwGFg0"))
local vixd, oygs = false, nil

if aly and cwf then
vixd, oygs = pcall(function()
return require(cwf)
end)
end

local ppc = vixd and type(oygs) == _d("GFgaDV0") and oygs.Codes or nil

if not aly or type(ppc) ~= _d("GFgaDV0") then
dum.setCodeText(_d("OFEREhgRBx5KEQ5WRw0KGQwJXUcFDVQdQVAGEUxXF0FbCAYJGRQISxNCA0tYD1dHEAldHQRVRxAJVBcVXUk"))
return
end

local sxf = {}

for tv in pairs(ppc) do
sxf[#sxf + 1] = tv
end

table.sort(sxf)

local lh = #sxf

dum.redeeming = true
dum.setCodeText(_d("PlwcBF0KCwJeWA") .. lh .. _d("TFoXBV0UTEIX"))

task.spawn(function()
local qkm, nt, trli = 0, 0, 0
local idt = {}

for wej = 1, lh do
if not ydyn() then
break
end

local mzc = sxf[wej]
local xnn, whkt = pcall(function()
return aly:InvokeServer(mzc)
end)

local pogr = xnn and type(whkt) == _d("GFgaDV0") and whkt.success == true
local dcms = xnn and type(whkt) == _d("GFgaDV0") and tostring(whkt.message or _d("")) or tostring(whkt or _d(""))

if not pogr and string.find(string.lower(dcms), _d("G1gRFQ"), 1, true) then
task.wait(3.5)

xnn, whkt = pcall(function()
return aly:InvokeServer(mzc)
end)

pogr = xnn and type(whkt) == _d("GFgaDV0") and whkt.success == true
dcms = xnn and type(whkt) == _d("GFgaDV0") and tostring(whkt.message or _d("")) or tostring(whkt or _d(""))
end

if pogr then
qkm = qkm + 1
elseif string.find(string.lower(dcms), _d("DVUKBFkDGw"), 1, true) then
nt = nt + 1
else
trli = trli + 1

if #idt < 6 then
idt[#idt + 1] = mzc .. _d("Vhk") .. (dcms ~= _d("") and dcms or _d("AlZYAFYUFQlL"))
end
end

dum.setCodeText(string.format(_d("SV1YDl5HRwgZVUEdA0IeXBwEXQoHCBVYRFxHAwBLHQBcHk5MHBxBSgIEGUodBRY"), wej, lh, qkm, nt, trli))

if wej < lh and ydyn() then
task.wait(1.8)
end
end

local acsu = {
string.format(_d("PlwcBF0KBwgZXQUURwMASx0AXB5CBFgcQR0DTkxLHQdNFAcIGV0FGAgETBwcTw"), qkm, nt, trli, lh),
}

for aaq, yyk in ipairs(idt) do
acsu[#acsu + 1] = yyk
end

dum.redeeming = false
dum.setCodeText(table.concat(acsu, _d("Zg")))
end)
end

dum.codesSection:Button({
Name = _d("PlwcBF0KQg1VFEFbCAYJSg"),
Callback = function()
dum.redeemCodes()
end,
})

dum.codeParagraph = dum.codesSection:Paragraph({
Header = _d("L1YcBEs"),
Body = dum.codeText,
})

dum.scriptSection = dum.tab:Section({
Side = _d("PlAfCUw"),
})

dum.scriptSection:Header({
Name = _d("P1oKCEgT"),
})

dum.scriptSection:Button({
Name = _d("OVcUDlkDQh9aCghIEw"),
Callback = function()
pcall(function()
kqs:Unload()
end)

getgenv().ACBXWindow = nil
getgenv().ACBXAllowReload = nil
end,
})

task.spawn(function()
while ydyn() do

if os.clock() >= dum.savesAt then
dum.savesAt = os.clock() + 3

local pr = dum.saves()
local ctf = table.concat(pr, _d("EA"))

if ctf ~= dum.knownSaves then
dum.knownSaves = ctf

pcall(function()
dum.fileDropdown:ClearOptions()
dum.fileDropdown:InsertOptions(pr)
end)
end

if dum.selected and dum.selectionShown ~= dum.selected then
dum.selectionShown = dum.selected

pcall(function()
dum.fileDropdown:UpdateSelection(dum.selected)
end)
end
end

if dum.autoSave and os.clock() >= dum.autoSaveAt then
dum.autoSaveAt = os.clock() + 60

local hr = dum.selected or _d("CFweAE0LFg")
local eiya, hfx = dum.save(hr)

dum.selected = hr
dum.lastText = eiya and (_d("LUwMDhgUAxpcHEE") .. hr .. _d("TFgMQQ") .. os.date(_d("SXFCRHU")) .. _d("Qg"))
or (_d("LUwMDhgUAxpcWAdZDg4JXUJB") .. tostring(hfx))
end

if os.clock() >= dum.themeAt then
dum.themeAt = os.clock() + 3
dum.applyTheme()
end

if os.clock() >= dum.capAt then
dum.capAt = os.clock() + 2
dum.refreshScaleCap()
end

if os.clock() >= dum.statusAt then
dum.statusAt = os.clock() + 2

local pjl = dum.autoLoadName()
local bbw = table.concat({
_d("LUwMDhgLDQ1dQkE") .. (pjl or _d("AlYWBA")),
_d("P1gOBEtdQg") .. tostring(#dum.saves()),
dum.lastText,
}, _d("Zg"))

if bbw ~= dum.shownStatus then
dum.shownStatus = bbw

pcall(function()
dum.statusParagraph:UpdateBody(bbw)
end)
end
end

task.wait(0.25)
end
end)

task.spawn(function()
while ydyn() do

local uusw = dum.scalePending

if uusw and os.clock() - (dum.scalePendingAt or 0) > 0.35 then
local nnmv = dum.scaleCeiling()
local vhih = math.clamp(uusw, 0.5, nnmv)

dum.scalePending = nil

if math.abs(vhih - dum.scaleTarget) > 0.002 then
dum.scaleTarget = vhih
dum.scaleAnchor = nil

dum.saveUi()
end
end

if math.abs(dum.scaleTarget - dum.scale) > 0.002 then
local xq = dum.guiRoot()

if xq and not dum.baseWidth then
dum.baseWidth = xq.Size.X.Offset
dum.baseHeight = xq.Size.Y.Offset
end

local mdxr = dum.baseWidth or 720
local dmz = dum.baseHeight or 500
local rnfr = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local myx, qoxk = 8, 40

if not dum.scaleAnchor and xq then

local alm = dum.widthFactor(dum.scaleTarget)
local mihu, olr = mdxr * alm * dum.scaleTarget, dmz * dum.scaleTarget
local el = xq.AbsolutePosition

dum.scaleAnchor = Vector2.new(
math.clamp(el.X, myx, math.max(myx, rnfr.X - mihu - myx)),
math.clamp(el.Y, qoxk, math.max(qoxk, rnfr.Y - olr - myx))
)
end

local wr = dum.scaleAnchor

dum.scale = dum.scale + (dum.scaleTarget - dum.scale) * 0.18

local jm = dum.widthFactor(dum.scale)

pcall(function()
kqs:SetScale(dum.scale)

if xq then
local nhqn = math.floor(mdxr * jm)

xq.Size = UDim2.fromOffset(nhqn, math.floor(dmz))

local qgp = xq:FindFirstChild(_d("L1YWFV0JFg"))

if qgp then
local rvv = xq:FindFirstChild(_d("P1AcBFoGEA"))
local kwo = math.floor(rvv and rvv.Size.X.Scale * nhqn or nhqn * 0.325)

qgp.Size = UDim2.new(0, math.max(0, nhqn - kwo), 1, 0)
end
end
end)

if xq and wr then
local sug, agw = mdxr * jm * dum.scale, dmz * dum.scale
local rxq = math.clamp(wr.X, myx, math.max(myx, rnfr.X - sug - myx))
local xse = math.clamp(wr.Y, qoxk, math.max(qoxk, rnfr.Y - agw - myx))

local sd = xq.Parent and xq.Parent.AbsolutePosition or Vector2.zero

pcall(function()
xq.Position = UDim2.fromOffset(math.floor(rxq - sd.X), math.floor(xse - sd.Y))
end)
end
else

dum.scaleAnchor = nil
end

task.wait()
end
end)

ha.misc.tierLabels = {}
ha.misc.labelToTier = {}

ha.misc.expSection = ha.misc.tab:Section({
Side = _d("IFweFQ"),
})

ha.misc.expSection:Header({
Name = _d("KUEIBFwOFgVWFhIYl/37u5fZtw"),
})

ha.misc.claimToggle = ha.misc.expSection:Toggle({
Name = _d("LUwMDhgEDg1QFQ"),
Default = false,
Callback = function(sdk)
local laf = ha.misc.expeditions

laf.enabled = sdk
laf.claimAt = 0

if sdk then
laf.askedAt = 0
laf.request()
end
end,
}, _d("DUwMDmcEDg1QFQ"))

ha.misc.rewardToggle = ha.misc.expSection:Toggle({
Name = _d("LUwMDhgEDgNKHUFKAhUNSxwS"),
Default = false,
Callback = function(hzmu)
local pfik = ha.misc.expeditions

pfik.autoClose = hzmu

if hzmu then
pfik.closeRewards()
end
end,
}, _d("CUEIPlkSFgNmGw1XFAc"))

ha.misc.startToggle = ha.misc.expSection:Toggle({
Name = _d("LUwMDhgUFg1LDA"),
Default = false,
Callback = function(qs)
local bre = ha.misc.expeditions

if qs and not next(bre.tiersWanted) then
bre.autoStart = false

pcall(function()
ha.misc.startToggle:UpdateState(false)
end)

kqs:Dialog({
Title = _d("LUwMDhgUFg1LDEFWAgcISlgAGBMLCUs"),
Description = _d("PFAbChgGFkxVHQBLE0IDVx1BTA4HHhkRDxgTCgkZLAhdFUIISxcRXAgVAhkeCEoUFkIZPQBLHkIYWBMES0cWBFxYAlACAxxcCxUYBAMeXQtNGCkLC1EMDFkVB0xNEAQYFQMeXAsVFEcDAl1YAFYeQgJMFQNdFUIDX1gVUAIPTFoZDxgVFwIZGRUYCAwPXFY"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})

return
end

bre.autoStart = qs
bre.startedAt = {}

if qs then
bre.askedAt = 0
bre.request()
end
end,
}, _d("DUwMDmcUFg1LDA"))

for tnix, fvc in ipairs(ha.misc.expeditions.tiers()) do
table.insert(ha.misc.tierLabels, tostring(fvc.name))
ha.misc.labelToTier[tostring(fvc.name)] = fvc.id
end

ha.misc.building = true

ha.misc.tierDropdown = ha.misc.expSection:Dropdown({
Name = _d("OFAdEw"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = ha.misc.tierLabels,
Callback = function(jnrf)
local tab = ha.misc.expeditions

if ha.misc.building then
return
end

local hhcp = {}
local roiz = {}

if type(jnrf) == _d("GFgaDV0") then
for iaa, ylv in pairs(jnrf) do
local ecuy = ha.misc.labelToTier[tostring(iaa)]

if ylv and ecuy then
hhcp[ecuy] = true
table.insert(roiz, tostring(iaa))
end
end
end

table.sort(roiz)
tab.tiersWanted = hhcp

pcall(function()
ha.misc.tierDropdown:UpdateName(#roiz > 0 and (_d("OFAdExiF4s4Z") .. table.concat(roiz, _d("QBk"))) or _d("OFAdExiF4s4ZFg5WAg"))
end)
end,
}, _d("GFAdEw"))

task.defer(function()
ha.misc.building = false
end)

ha.misc.expSection:Button({
Name = _d("L1UZCFVHDANO"),
Callback = function()
local zpby = ha.misc.expeditions

if not zpby.claim() then
kqs:Notify({
Title = _d("KUEIBFwOFgVWFhI"),
Description = _d("IlYMCVEJBUxRGRIYBA0BXFgDWQQJTEAdFRY"),
Lifetime = 5,
})
end
end,
})

ha.misc.expSection:Button({
Name = _d("P1wWBRgUBwBcGxVdAw"),
Callback = function()
local clp = ha.misc.expeditions

if not next(clp.tiersWanted) then
kqs:Notify({
Title = _d("KUEIBFwOFgVWFhI"),
Description = _d("PFAbChgGFkxVHQBLE0IDVx1BTA4HHhkRDxgTCgkZHBNXFwYDThZBXg4QH01W"),
Lifetime = 5,
})

return
end

local lytn = {}
local fzh = 0

for pfg, kxox in ipairs(clp.tiers()) do
if clp.tiersWanted[kxox.id] and clp.status(kxox.id) == _d("DU8ZCFQGAABc") then
if clp.start(kxox.id, lytn) then
fzh = fzh + 1
end
end
end

if fzh == 0 then
kqs:Notify({
Title = _d("KUEIBFwOFgVWFhI"),
Description = _d("IlYMCVEJBUxaFxRUA0IOXFgSXQkWVhkMCV1HEQlVHQJMAgZMTREEShRCDUsdQVkLEAlYHBgYCBcYFVgOSkcWBFwKBBgGEAkZFg5MRwQDTApBXQsLC1AaDV1HAQ1LHBIYAQ0eGQwJXQpM"),
Lifetime = 6,
})
end
end,
})

ha.misc.expInfo = ha.misc.tab:Section({
Side = _d("PlAfCUw"),
})

ha.misc.expInfo:Header({
Name = _d("KUEIBFwOFgVWFhI"),
})

ha.misc.expParagraph = ha.misc.expInfo:Paragraph({
Header = _d("P00ZFU0U"),
Body = ha.misc.expeditions.text(),
})

ha.misc.expeditions.loadRewards()

ha.misc.expRewardParagraph = ha.misc.expInfo:Paragraph({
Header = _d("L1UZCFUCBg"),
Body = ha.misc.expeditions.rewardsText(),
})

task.spawn(function()
local mim = ha.misc.expeditions
local rkiu = nay(_d("P0AWAn0fEgldERVRCAwf"), 3)

if rkiu then
jhh(rkiu.OnClientEvent, function(gnxa)
if type(gnxa) ~= _d("GFgaDV0") then
return
end

mim.state = gnxa

mim.offset = (tonumber(gnxa.now) or os.time()) - os.time()
mim.syncedAt = os.clock()

if type(gnxa.rewards) == _d("GFgaDV0") and #gnxa.rewards > 0 then
table.insert(mim.rewardLog, 1, {
at = os.time(),
title = tostring(gnxa.rewardTitle or _d("KUEIBFwOFgVWFg")),
items = gnxa.rewards,
})

while #mim.rewardLog > 8 do
table.remove(mim.rewardLog)
end

mim.saveRewards()

if mim.autoClose then

task.delay(0.35, mim.closeRewards)
end
end
end)
end

while ydyn() do

if os.clock() - mim.askedAt > 1 and os.clock() - mim.syncedAt > 20 then
mim.request()
end

if mim.enabled then
mim.claim()
end

if mim.autoClose then
mim.closeRewards()
end

if mim.autoStart and next(mim.tiersWanted) then
local uvr = {}

for ljfw, hiy in ipairs(mim.tiers()) do
if mim.tiersWanted[hiy.id] and mim.status(hiy.id) == _d("DU8ZCFQGAABc") then
if mim.start(hiy.id, uvr) then
break
end
end
end
end

local qur = mim.text()

if ha.misc.expParagraph and qur ~= ha.misc.expShown then
ha.misc.expShown = qur

pcall(function()
ha.misc.expParagraph:UpdateBody(qur)
end)
end

local jtvk = mim.rewardsText()

if ha.misc.expRewardParagraph and jtvk ~= mim.rewardsShown then
mim.rewardsShown = jtvk

pcall(function()
ha.misc.expRewardParagraph:UpdateBody(jtvk)
end)
end

task.wait(0.75)
end
end)

ha.misc.util = {
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

function ha.misc.util.hook()
local dvwl = ha.misc.util

if dvwl.hooked then
return
end

dvwl.hooked = true

if zbuo.SyncCollection then
jhh(zbuo.SyncCollection.OnClientEvent, function(odz)
if type(odz) == _d("GFgaDV0") then
dvwl.profile = odz
dvwl.profileAt = os.clock()
end
end)
end

if zbuo.SyncAchievements then
jhh(zbuo.SyncAchievements.OnClientEvent, function(gncw)
if type(gncw) == _d("GFgaDV0") then
dvwl.ach = gncw
end
end)
end

if zbuo.SyncQuests then
jhh(zbuo.SyncQuests.OnClientEvent, function(uhn)
if type(uhn) == _d("GFgaDV0") and type(uhn.list) == _d("GFgaDV0") then
dvwl.quests = uhn
end
end)
end

if zbuo.SyncPeriodicQuests then
jhh(zbuo.SyncPeriodicQuests.OnClientEvent, function(xfi, skz)
if xfi == _d("G1wdClQe") and type(skz) == _d("GFgaDV0") and type(skz.list) == _d("GFgaDV0") then
dvwl.weekly = skz
end
end)
end
end

function ha.misc.util.askProfile()
local obs = ha.misc.util

if os.clock() - obs.askedAt < 1.5 then
return
end

obs.askedAt = os.clock()

if zbuo.RequestSync then
pcall(function()
zbuo.RequestSync:FireServer()
end)
end
end

function ha.misc.util.currentProfile()
local mpxz = ha.misc.util

if type(mpxz.profile) ~= _d("GFgaDV0") then
mpxz.askProfile()

return nil
end

if os.clock() - mpxz.profileAt > 20 then
mpxz.askProfile()
end

return mpxz.profile
end

function ha.misc.util.forgetProfile()
local yv = ha.misc.util

yv.profile = nil
yv.profileAt = 0
yv.askedAt = 0
end

function ha.misc.util.indexedTotal(ult)
local poib = 0

for zeh, vlv in pairs((ult and ult.cardIndex) or {}) do
if vlv then
poib = poib + 1
end
end

return poib
end

function ha.misc.util.indexPending(crnf)
local bje = {}

if type(crnf) ~= _d("GFgaDV0") then
return bje
end

local ea = ha.misc.util.indexedTotal(crnf)
local suz = crnf.indexMilestones or {}

for ywm = 1, 30 do
if not suz[ywm] and ywm * 5 <= ea then
table.insert(bje, ywm)
end
end

return bje
end

function ha.misc.util.indexFrame()
local ykxs = brbo:FindFirstChild(_d("L1gKBXEJBglBPxRR"))

return ykxs and ykxs:FindFirstChild(_d("JVccBEAhEA1UHQ"))
end

function ha.misc.util.clickButton(dyw)
if not dyw then
return false
end

if firesignal then
local bsto = pcall(firesignal, dyw.MouseButton1Click)

if bsto then
return true
end
end

return pcall(function()
dyw:Activate()
end)
end

function ha.misc.util.closeIndex()
local klp = ha.misc.util.indexFrame()

if not klp or not klp.Visible then
return false
end

pcall(function()
local ddbj = egii:FindFirstChild(_d("IVYcFFQCMQ9LERFMFA"))
local fgf = ddbj and ddbj:FindFirstChild(_d("IVwWFHUGDA1eHRM"))

if fgf then
require(fgf).close(klp)
end
end)

ha.misc.util.clickButton(klp:FindFirstChild(_d("L1UXEl0lFxhNFw8")))

pcall(function()
klp.Visible = false
end)

return true
end

function ha.misc.util.claimIndex()
local ljr = ha.misc.util

if os.clock() < ljr.indexAt then
return false
end

local mt = ljr.currentProfile()

if not mt then
return false
end

local sigu = ljr.indexPending(mt)
local izt = sigu[1]

if not izt then
return false
end

local ykud = ljr.indexedTotal(mt)
local poha = ljr.indexAsked

if type(poha) == _d("GFgaDV0") and poha.milestone == izt and poha.total == ykud then
return false
end

ljr.indexAsked = { milestone = izt, total = ykud }

pcall(function()
zbuo.ClaimIndexReward:FireServer(izt)
end)

ljr.indexAt = os.clock() + 1.5

ljr.profile = nil
ljr.profileAt = 0

task.delay(0.4, ljr.closeIndex)

return true
end

function ha.misc.util.achPending()
local klxo = {}
local zz = ha.misc.util.ach

if type(zz) ~= _d("GFgaDV0") then
return klxo
end

for jkce, mu in ipairs(zz.chains or {}) do
for qkuv, oknt in ipairs(mu.levels or {}) do
if oknt.reached and not oknt.claimed then
table.insert(klxo, { chain = tostring(mu.id), index = oknt.index, name = tostring(oknt.name or oknt.index) })
end
end
end

return klxo
end

function ha.misc.util.claimAchievement()
local vrip = ha.misc.util

if os.clock() < vrip.achAt then
return false
end

if type(vrip.ach) ~= _d("GFgaDV0") then
if os.clock() - vrip.achAskedAt > 4 and zbuo.RequestAchievements then
vrip.achAskedAt = os.clock()

pcall(function()
zbuo.RequestAchievements:FireServer()
end)
end

return false
end

for kkrv, hja in ipairs(vrip.achPending()) do
pcall(function()
zbuo.ClaimAchievement:FireServer(hja.chain, hja.index)
end)

vrip.achAt = os.clock() + 1

task.delay(1, function()
if zbuo.RequestAchievements then
pcall(function()
zbuo.RequestAchievements:FireServer()
end)
end
end)

return true
end

return false
end

function ha.misc.util.questRows()
local hqeu = ha.misc.util
local kup = {}

for upa, mga in ipairs({ { list = _d("CFgRDUE"), payload = hqeu.quests }, { list = _d("G1wdClQe"), payload = hqeu.weekly } }) do
for xcr, tbz in ipairs((type(mga.payload) == _d("GFgaDV0") and mga.payload.list) or {}) do
if type(tbz) == _d("GFgaDV0") then
table.insert(kup, { list = mga.list, index = xcr, quest = tbz })
end
end
end

return kup
end

function ha.misc.util.questPending()
local kscq = {}

for njw, jtq in ipairs(ha.misc.util.questRows()) do
local bju = jtq.quest

if not bju.claimed and (tonumber(bju.progress) or 0) >= (tonumber(bju.target) or math.huge) then
table.insert(kscq, jtq)
end
end

return kscq
end

function ha.misc.util.askQuests()
local oknx = ha.misc.util

if os.clock() - oknx.questAskedAt > 4 and zbuo.RequestQuests then
oknx.questAskedAt = os.clock()

pcall(function()
zbuo.RequestQuests:FireServer()
end)
end

if os.clock() - oknx.weeklyAskedAt > 4 and zbuo.RequestPeriodicQuests then
oknx.weeklyAskedAt = os.clock()

pcall(function()
zbuo.RequestPeriodicQuests:FireServer(_d("G1wdClQe"))
end)
end
end

function ha.misc.util.claimQuest()
local owu = ha.misc.util

if os.clock() < owu.questAt then
return false
end

if type(owu.quests) ~= _d("GFgaDV0") and type(owu.weekly) ~= _d("GFgaDV0") then
owu.askQuests()

return false
end

for rzu, wwvg in ipairs(owu.questPending()) do
if wwvg.list == _d("G1wdClQe") then
if zbuo.ClaimPeriodicQuest then
pcall(function()
zbuo.ClaimPeriodicQuest:FireServer(_d("G1wdClQe"), wwvg.index)
end)
end
else
pcall(function()
zbuo.ClaimQuest:FireServer(wwvg.index)
end)
end

owu.questAt = os.clock() + 1.2

task.delay(1, function()
owu.askQuests()
end)

return true
end

return false
end

function ha.misc.util.packCatalog()
local bxd = ha.misc.util

if bxd.packs then
return bxd.packs
end

local mnqf = {}
local ddv, hbxi = pcall(function()
return require(egii.ModuleScripts.PackData)
end)

if ddv and type(hbxi) == _d("GFgaDV0") and type(hbxi.Packs) == _d("GFgaDV0") then
for ouvn, qsj in ipairs(hbxi.Packs) do
if qsj.id then
table.insert(mnqf, { id = tostring(qsj.id), name = tostring(qsj.name or qsj.id) })
end
end
end

bxd.packs = mnqf

return mnqf
end

function ha.misc.util.packUnlocked(aif, zaox)
if type(aif) ~= _d("GFgaDV0") then
return true
end

local yqrh, yshw = pcall(function()
return require(egii.ModuleScripts.PackData)
end)
local ykkv, vjt = pcall(function()
return require(egii.ModuleScripts.PackSlotData)
end)

if not (yqrh and ykkv) then
return true
end

local mdqy = yshw.ById and yshw.ById[zaox]

if not mdqy then
return false
end

local rqk, fmr = pcall(vjt.isPackUnlocked, mdqy, aif)

return (not rqk) or fmr == true
end

function ha.misc.util.visit(sbq)
local oel = workspace:FindFirstChild(_d("Imk7Eg"))
local kwyf = oel and oel:FindFirstChild(sbq)
local ajvz = ehbn.Character
local mhiy = ajvz and ajvz:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))
local jrw = kwyf and (kwyf:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ")) or kwyf:FindFirstChildWhichIsA(_d("LlgLBGgGEBg"), true))

if not (jrw and mhiy) then
return nil
end

local qhgp = mhiy.CFrame

mhiy.CFrame = CFrame.new((jrw.CFrame * CFrame.new(0, 0, -5)).Position)

return qhgp
end

function ha.misc.util.returnTo(jngt)
local ifns = ehbn.Character
local hzo = ifns and ifns:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if hzo and jngt then
hzo.CFrame = jngt
end
end

function ha.misc.util.applyPacks(gss, jv)
local ylq = ha.misc.util

if os.clock() < ylq.packAt then
return false, _d("O1gRFRgGQgFWFQRWE0w")
end

local mjtj = ylq.currentProfile()

if not mjtj then
return false, _d("PlwZBVEJBUxAFxRKRxIeVh4IVAJCQRkME0FHAwtYEQ8YDgxMWFgSXQQNAl1W")
end

if jv and (tonumber(mjtj.packSlots) or 1) < 2 then
return false, _d("P1UXFRhVQgJcHQVLRxYEXFgEQBMQDRkIAFsMQh9VFxUYAAMBXAgASxRM")
end

if not (zbuo.OpenPackShop and zbuo.EquipPack) then
return false, _d("OFEdQUgGAQcZCwlXF0IFSlgPVxNCBVdYFVAOEUxeGQxdRxQJSwsIVwlM")
end

ylq.packAt = os.clock() + 8

task.spawn(function()
local bc = ylq.visit(_d("IlYaDV0UEQVXHxI"))

if not bc then
return
end

pcall(function()
zbuo.OpenPackShop:FireServer(_d("HFgbCmcKBx5aEABWEw"))
end)

task.wait(1.2)

if gss then
pcall(function()
zbuo.EquipPack:FireServer(gss, 1)
end)
end

if jv then
task.wait(0.8)

pcall(function()
zbuo.EquipPack:FireServer(jv, 2)
end)
end

task.wait(0.8)
ylq.returnTo(bc)
ylq.forgetProfile()
end)

return true
end

function ha.misc.util.accScore(cjrw)
local mqzk = cjrw.effects or {}

return (mqzk.luckBonus or 0) * 10
+ ((mqzk.luckMult or 1) - 1) * 200
+ ((mqzk.borderLuckMult or 1) - 1) * 200
- ((mqzk.rollCdMult or 1) - 1) * 30
end

function ha.misc.util.accCatalog()
local hexk = ha.misc.util

if hexk.accessories then
return hexk.accessories
end

local kogo = {}

for dwj, xdaa in ipairs({ _d("LVobBEsUDR5APABMBg"), _d("LVobBEsUDR5APABMBlA") }) do
local fve, zylf = pcall(function()
return require(egii.ModuleScripts[xdaa])
end)

if fve and type(zylf) == _d("GFgaDV0") and type(zylf.Accessories) == _d("GFgaDV0") then
for bqwp, wlh in ipairs(zylf.Accessories) do
if wlh.id then
table.insert(kogo, {
id = tostring(wlh.id),
name = tostring(wlh.name or wlh.id),
shop = dwj,

shopName = dwj == 1 and _d("LVobBEsUDR5AWDJQCBI") or _d("IUALFV0VCwNMC0F1Bgw"),
raidable = wlh.raidShopOnly == true,
hidden = wlh.hidden == true,
requirements = wlh.requirements or {},
score = ha.misc.util.accScore(wlh),
})
end
end
end
end

hexk.accessories = kogo

return kogo
end

function ha.misc.util.accOwned(rqws)
local sp = {}

for ov, rzcg in ipairs((rqws and rqws.accessories) or {}) do
sp[tostring(rzcg)] = true
end

return sp
end

function ha.misc.util.accMeets(wiwj, vd)
for sszt, fd in ipairs(vd.requirements) do
local fc = wiwj.cards and wiwj.cards[fd.cardId]
local iz = type(fc) == _d("GFgaDV0") and (tonumber(fc[fd.borderLevel]) or 0) or 0

if iz < (tonumber(fd.amount) or 0) then
return false
end
end

return true
end

function ha.misc.util.accPlan(tqpx)
local gag = ha.misc.util
local qcdf = gag.accOwned(tqpx)
local stou = {}

for qnr, rq in ipairs(gag.accCatalog()) do
if not qcdf[rq.id] and not rq.raidable and not rq.hidden and gag.accMeets(tqpx, rq) then
local mdcy = stou[rq.shop]

if not mdcy or rq.score > mdcy.score then
stou[rq.shop] = rq
end
end
end

return stou
end

function ha.misc.util.accPicks(kueb)
local dis = ha.misc.util
local zcx = dis.accOwned(kueb)
local imd, fvgw

for rk, bnfd in ipairs(dis.accCatalog()) do
if zcx[bnfd.id] then
if not imd or bnfd.score > imd.score then
imd = bnfd
end
elseif not bnfd.raidable and not bnfd.hidden and dis.accMeets(kueb, bnfd) then
if not fvgw or bnfd.score > fvgw.score then
fvgw = bnfd
end
end
end

return imd, fvgw
end

function ha.misc.util.equipBest()
local euzf = ha.misc.util
local isfy = euzf.currentProfile()

if not isfy or not zbuo.EquipAccessory then
return false
end

local vwgi = euzf.accPicks(isfy)

if not vwgi or isfy.equippedAccessory == vwgi.id then
return vwgi ~= nil
end

pcall(function()
zbuo.EquipAccessory:FireServer(vwgi.id)
end)

task.delay(1.5, function()
euzf.forgetProfile()
end)

return true
end

function ha.misc.util.buyBest()
local pzgz = ha.misc.util

if os.clock() < pzgz.accAt then
return false, _d("O1gRFRgGQgFWFQRWE0w")
end

if pcyb.busy(1) or pcyb.busy(2) then
pzgz.accNote = _d("JVdYABgFAxhNFAQYSkINGQsJVxdCGEsRERgQDRlVHEFdCQZMUAw")
return false, _d("JVdYABgFAxhNFAQYSkINGQsJVxdCGEsRERgQDRlVHEFdCQZMUAxP")
end

local wlbl = pzgz.currentProfile()

if not wlbl then
pzgz.accNote = _d("PlwZBVEJBUxAFxRKRxIeVh4IVAJCQRkPCFQLQhhLAUFZAAMFV1gIVkcDTEodAlcJBg")
return false, _d("PlwZBVEJBUxAFxRKRxIeVh4IVAJCQRkME0FHAwtYEQ8YDgxMWFgSXQQNAl1W")
end

local dmk = pzgz.accPlan(wlbl)
local kbea = {}

for lks = 1, 2 do
if dmk[lks] then
table.insert(kbea, dmk[lks].name)
end
end

if #kbea == 0 then
pzgz.accNote = _d("IlYMCVEJBUxXHRYYEgwAVhsKXQNCFVwMQRVHFgRcWAJZFQYfGR4OSkcLGBkZE11HDANNWAhWRxYEXFgCVwsOCVoMCFcJ")
return false, _d("IlYMCVEJBUxXHRYYBAMCGRoEGBIMAFYbCl0DQhVcDEEVRxYEXFgCWRUGHxkeDkpHCxgZGRNdRwwDTVgIVkcWBFxYAlcLDglaDAhXCUw")
end

pzgz.accAt = os.clock() + 12
pzgz.accNote = _d("O1gUClEJBUxNF0FMDwdMWhcUVhMHHhkeDkpH") .. table.concat(kbea, _d("TFgWBRg"))

task.spawn(function()
for jsvu = 1, 2 do
local auy = dmk[jsvu]

if auy then
local lx = jsvu == 1 and _d("HEwKEk0OFgldHA") or _d("G1geB10LDw1XHQBMFBUNXx4EVBQ")
local rkre = jsvu == 1 and zbuo.OpenAccessoryShop or zbuo.OpenAccessoryShop2
local jqz = jsvu == 1 and zbuo.BuyAccessory or zbuo.BuyAccessory2
local pgdm = lx and pzgz.visit(lx) or nil

if not pgdm then
local wpr = workspace:FindFirstChild(_d("Imk7Eg"))
local rgw = wpr and wpr:FindFirstChild(lx)

if rgw and os.clock() - (pzgz.worldAskedAt or 0) > 25 then

pzgz.worldAskedAt = os.clock()
pzgz.accNote = _d("L1EZE1kEFglLWA9XE0IeXBkFQUdPTE0KGFEJBUxYHwBRCUIfURcTTAsb")
elseif not rgw and os.clock() - (pzgz.worldAskedAt or 0) > 25 then

pzgz.worldAskedAt = os.clock()
pzgz.accNote = _d("IlZYAlcSDBhcCkFRCUIYURESGBANHlUcQRVHFg1SEQ9fRxYEXFgNVwUAFRkMBFQCEgNLDA")

pcall(function()
zbuo.TeleportToWorld:FireServer(_d("AFYaA0E"))
end)

task.wait(4.5)
pgdm = pzgz.visit(lx)
end
end

if pgdm and rkre and jqz then

task.wait(0.9)

pcall(function()
rkre:FireServer()
end)

task.wait(1.2)

pcall(function()
jqz:FireServer(auy.id)
end)

task.wait(0.9)
pzgz.returnTo(pgdm)
pzgz.accNote = _d("LlYNBlATQg") .. tostring(auy.name)
elseif not pgdm then
pzgz.accNote = _d("L1YNDVxHDANNWBNdBgEEGQwJXUcBA0wWFV0VQkEZDBNBRwMLWBEPGA4MTFhYDFcKBwJN")
end

task.wait(0.6)
end
end

pzgz.forgetProfile()

for ouyv = 1, 8 do
if type(pzgz.profile) == _d("GFgaDV0") then
break
end

pzgz.askProfile()
task.wait(0.7)
end

pzgz.equipBest()
end)

return true, table.concat(kbea, _d("QBk"))
end

function ha.misc.util.indexText()
local xeuw = ha.misc.util

if type(xeuw.profile) ~= _d("GFgaDV0") then
return _d("PlwZBVEJBUxAFxRKRwENSxxBUQkGCUFWTxY")
end

local gi = xeuw.indexPending(xeuw.profile)
local wnr = 0

for yxzs, ncsr in pairs(xeuw.profile.indexMilestones or {}) do
if ncsr then
wnr = wnr + 1
end
end

local utqx = tostring(xeuw.indexedTotal(xeuw.profile)) .. _d("TFoZE1wUQgVXHARAAgZAGQ") .. tostring(wnr) .. _d("TFYeQQtXQh5cDwBKAxFMWhQAUQoHCA")

if #gi > 0 then
utqx = utqx .. _d("ZmsdAFweWEw") .. table.concat(gi, _d("QBk"))
end

return utqx
end

function ha.misc.util.achText()
local aoz = ha.misc.util

if type(aoz.ach) ~= _d("GFgaDV0") then
return _d("PlwZBVEJBUxYGwlRAhQJVB0PTBRMQhc")
end

local kye = aoz.achPending()
local oqu = 0

for jnt, uvq in ipairs(aoz.ach.chains or {}) do
for cajt in ipairs(uvq.levels or {}) do
oqu = oqu + 1
end
end

return tostring(#kye) .. _d("TFYeQQ") .. tostring(oqu) .. _d("TFgbCVECFAlUHQ9MFEIeXBkFQQ")
end

function ha.misc.util.questText()
local omle = ha.misc.util

if type(omle.quests) ~= _d("GFgaDV0") and type(omle.weekly) ~= _d("GFgaDV0") then
return _d("PlwZBVEJBUxIDQRLExFCF1Y")
end

local nmrd, ivc = 0, 0

for tso, hxr in ipairs(omle.questPending()) do
if hxr.list == _d("G1wdClQe") then
ivc = ivc + 1
else
nmrd = nmrd + 1
end
end

local shkr = type(omle.quests) == _d("GFgaDV0") and #(omle.quests.list or {}) or 0
local mszv = type(omle.weekly) == _d("GFgaDV0") and #(omle.weekly.list or {}) or 0

return tostring(nmrd) .. _d("TFYeQQ") .. tostring(shkr) .. _d("TF0ZCFQeQh5cGQVBbQ")
.. tostring(ivc) .. _d("TFYeQQ") .. tostring(mszv) .. _d("TE4dBFMLG0xLHQBcHg")
end

function ha.misc.util.packText()
local phjy = ha.misc.util
local vrk = phjy.profile

if type(vrk) ~= _d("GFgaDV0") then
return _d("PlwZBVEJBUxAFxRKRxINWhMSFklM")
end

local function eed(wj)
for gfjr, hvk in ipairs(phjy.packCatalog()) do
if hvk.id == wj then
return hvk.name
end
end

return tostring(wj)
end

local gfj = _d("P1UXFRhWWEw") .. eed(vrk.equippedPack)

if (tonumber(vrk.packSlots) or 1) >= 2 then
gfj = gfj .. _d("ZmoUDkxHUFYZ") .. eed(vrk.equippedPack2)
else
gfj = gfj .. _d("ZmoUDkxHUFYZHwBVAhINSgtBVggWTFYPD10D")
end

return gfj
end

function ha.misc.util.accText()
local tiz = ha.misc.util
local mlm = tiz.profile

if type(mlm) ~= _d("GFgaDV0") then
return _d("PlwZBVEJBUxAFxRKRwMPWh0SSwgQBVwLTxZJ")
end

local dsq = tiz.accPicks(mlm)
local rvl = tiz.accPlan(mlm)
local glq = _d("AlYWBA")

for aa, xvgl in ipairs(tiz.accCatalog()) do
if xvgl.id == mlm.equippedAccessory then
glq = xvgl.name .. _d("TBE") .. xvgl.shopName .. _d("RQ")
end
end

local uh = _d("KUgNCEgXBwgDWA") .. glq

if dsq then
uh = uh .. _d("ZnsdEkxHDRtXHQUCRw") .. dsq.name
end

uh = uh .. _d("ZngbAl0UEQNLAUFrDw0cA1g") .. (rvl[1] and rvl[1].name or _d("AlYMCVEJBUxXHRY"))
uh = uh .. _d("ZnQBEkwCEAVWDRIYKgMCA1g") .. (rvl[2] and rvl[2].name or _d("AlYMCVEJBUxXHRY"))

if tiz.accNote then
uh = uh .. _d("ZnUZEkxHFh5QCFsY") .. tiz.accNote
end

return uh
end

ha.misc.util.hook()
ha.misc.util.askProfile()

ha.misc.indexSection = ha.misc.tab:Section({
Side = _d("IFweFQ"),
})

ha.misc.indexSection:Header({
Name = _d("L1gKBRguDAhcAEHI+PHr"),
})

ha.misc.indexToggle = ha.misc.indexSection:Toggle({
Name = _d("LUwMDhgEDg1QFQ"),
Default = false,
Callback = function(qofp)
ha.misc.util.indexOn = qofp
ha.misc.util.indexAt = 0

ha.misc.util.indexAsked = nil
end,
}, _d("DUwMDmcEDg1QFT4K"))

ha.misc.indexSection:Button({
Name = _d("L1UZCFVHDANO"),
Callback = function()
local lmwq = ha.misc.util

lmwq.indexAt = 0
lmwq.indexAsked = nil

if not lmwq.claimIndex() then
kqs:Notify({
Title = _d("L1gKBRguDAhcAA"),
Description = _d("IlZYDFELBx9NFw9dRwsfGQoEWQMbTE0XQVsLAwVUVg"),
Lifetime = 5,
})
end
end,
})

ha.misc.claimSection = ha.misc.tab:Section({
Side = _d("IFweFQ"),
})

ha.misc.claimSection:Header({
Name = _d("LVoQCF0RBwFcFhVLR0RMaA0ESxMRTMnn7r4"),
})

ha.misc.achToggle = ha.misc.claimSection:Toggle({
Name = _d("LUwMDhgEDg1QFUFZBAoFXA4EVQIMGEo"),
Default = false,
Callback = function(pjg)
ha.misc.util.achOn = pjg
ha.misc.util.achAt = 0

if pjg and zbuo.RequestAchievements then
pcall(function()
zbuo.RequestAchievements:FireServer()
end)
end
end,
}, _d("DUwMDmcEDg1QFT5ZBAoFXA4EVQIMGEo"))

ha.misc.questToggle = ha.misc.claimSection:Toggle({
Name = _d("LUwMDhgEDg1QFUFJEgcfTQs"),
Default = false,
Callback = function(mpzz)
ha.misc.util.questOn = mpzz
ha.misc.util.questAt = 0
ha.misc.util.questAskedAt = 0
ha.misc.util.weeklyAskedAt = 0

if mpzz then
ha.misc.util.askQuests()
end
end,
}, _d("DUwMDmcEDg1QFT5JEgcfTQs"))

ha.misc.claimSection:Button({
Name = _d("L1UZCFVHAwBVWA9XEA"),
Callback = function()
local pdyt = ha.misc.util

pdyt.achAt = 0
pdyt.questAt = 0

local reui = pdyt.claimAchievement()
local jipw = pdyt.claimQuest()

if not (reui or jipw) then
kqs:Notify({
Title = _d("LVoQCF0RBwFcFhVLR0RMaA0ESxMR"),
Description = _d("IlYMCVEJBUxQC0FKAgMIQFgVV0cBAFgRDBY"),
Lifetime = 5,
})
end
end,
})

ha.misc.packSection = ha.misc.tab:Section({
Side = _d("IFweFQ"),
})

ha.misc.packSection:Header({
Name = _d("L1gKBRg3Aw9SC0HI+OzY"),
})

ha.misc.packSection:Paragraph({
Header = _d("OE4XQUsLDRhK"),
Body = _d("PFAbCktHAxxJFBgYCAwAQFgWUAIMTEAXFBgXEAlKC0F5FxIAQFgRWQQJHxVYA10EAxlKHUFMDwdMSg8ITAQKTE4ZDVMUQhhWWBVQAkIBXAoCUAYMGBc"),
})

local vzs = {}
local cco = {}

for lkw, zko in ipairs(ha.misc.util.packCatalog()) do
table.insert(vzs, zko.name)
cco[zko.name] = zko.id
end

ha.misc.packSlotOne = nil
ha.misc.packSlotTwo = nil

ha.misc.packDropdownOne = ha.misc.packSection:Dropdown({
Name = _d("P1UXFRhW"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = vzs,
Callback = function(fhxc)
local kxc = type(fhxc) == _d("GFgaDV0") and fhxc[1] or fhxc

ha.misc.packSlotOne = cco[tostring(kxc)]
end,
}, _d("H1UXFWdW"))

ha.misc.packDropdownTwo = ha.misc.packSection:Dropdown({
Name = _d("P1UXFRhV"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = vzs,
Callback = function(iuxq)
local xabk = type(iuxq) == _d("GFgaDV0") and iuxq[1] or iuxq

ha.misc.packSlotTwo = cco[tostring(xabk)]
end,
}, _d("H1UXFWdV"))

ha.misc.packSection:Button({
Name = _d("LUkIDUFHEg1aExI"),
Callback = function()
local smab = ha.misc.util
local qji = ha.misc.packSlotOne
local lq = ha.misc.packSlotTwo

if not qji then
kqs:Notify({
Title = _d("L1gKBRg3Aw9SCw"),
Description = _d("PFAbChgGQhxYGwoYAQ0eGQsNVxNCXRkeCEoUFkI"),
Lifetime = 5,
})

return
end

local gque, qd = smab.applyPacks(qji, lq)

if not gque then
kqs:Dialog({
Title = _d("L1gKBRg3Aw9SCw"),
Description = qd,
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})
end
end,
})

ha.misc.cards = {
rarityLabels = { _d("LVUU"), _d("IlYKDFkL"), _d("K1YUBQ"), _d("PlgRD1oIFQ"), _d("OVcRF10VEQ1V") },
borderOf = { Normal = 1, Gold = 2, Rainbow = 3, Universal = 4 },
mergeOn = false,
deconOn = false,
mergeWanted = {},
deconWanted = {},
mergeAt = 0,
deconAt = 0,
mergeDone = _d("IlYMCVEJBUxKHQ9MRxsJTQ"),
deconDone = _d("IlYMCVEJBUxKHQ9MRxsJTQ"),

inFlight = false,

interval = 3600,
manualGap = 20,
manualAt = 0,

protectedPrefixes = { weather = true, boss = true, raid = true, wb = true, fish = true, hw = true, event = true },

deconExceptions = { weather_sayaka = true, weather_caesar = true },

deconConfirmed = false,
burnAskedAt = 0,
}

function ha.misc.cards.isProtected(imcx, xuku)
local rwpx = ha.misc.cards
local vryo = tostring(imcx or _d(""))
local sj = vryo:match(_d("MhEjABUdUkEAJUoROA"))

if not (sj and rwpx.protectedPrefixes[sj]) then
return false
end

return not (rwpx.deconExceptions[vryo] and xuku == 2)
end

function ha.misc.cards.burnAllowed(cdrb)
local iuin = ha.misc.cards
local ayl = iuin.wantedFor(_d("CFwbDlYwAwJNHQU"))

if not (ayl == nil or ayl[3] or ayl[4]) then
iuin.deconConfirmed = false

return true
end

if iuin.deconConfirmed then
return true
end

if cdrb then
return false
end

if os.clock() < (iuin.burnAskedAt or 0) then
return false
end

iuin.burnAskedAt = os.clock() + 20

kqs:Dialog({
Title = _d("LkwKDxg1AwVXGg5PRw0eGS0PUREHHkoZDRgEAx5dC14"),
Description = _d("LUwMDhgDBw9WFhJMFRcPTVgSXQkGHxkdF10VG0xaFxFBRwsCGQwJXUcPDU0bCVEJBUxLFxZLRwMCXVgCWQkMA01YA11HFwJdFw9dSUI")
.. _d("O1wZFVACEEAZGg5LFE5MSxkIXEcAA0oLTRgQDR5VHEFaCBEfFVgHURQKBVcfTRgvAwBVFxZdAgxMWBYFGAIUCVcMQVsGEAhKWABKAkIEXBQFGAUDD1JYBFETCglLWBZZHkw"),
Buttons = {
{
Name = _d("LkwKDxgTCglU"),
Callback = function()
iuin.deconConfirmed = true
iuin.deconAt = 0
iuin.manualAt = 0

pcall(function()
ha.misc.deconToggle:UpdateState(true)
end)
end,
},
{
Name = _d("L1gWAl0L"),
Callback = function()
pcall(function()
ha.misc.deconToggle:UpdateState(false)
end)
end,
},
},
})

return false
end

function ha.misc.cards.wantedFor(cdh)
local zl = ha.misc.cards[cdh] or {}

if next(zl) == nil or zl[0] then
return nil
end

return zl
end

function ha.misc.cards.npcFor(uxdy)
local bhb = workspace:FindFirstChild(_d("Imk7Eg"))

if not bhb then
return nil
end

local lrcq = uxdy and _d("CkwLBGcJEg8") or _d("CFwbDlYUFh5MGxVnCRIP")

for wruo, jsj in ipairs(bhb:GetChildren()) do
if jsj:GetAttribute(_d("Imk7KFw")) == lrcq then
return jsj
end
end

local zzim = uxdy and { _d("I1YICVQe"), _d("A1YIDUEC") } or { _d("P1EZFFQG"), _d("JFgOBGwQDShYHBI") }

for neaf, jcr in ipairs(bhb:GetChildren()) do
for uy, zoww in ipairs(zzim) do
if jcr.Name == zoww then
return jcr
end
end
end

local mpf = uxdy and { _d("D1gKBRgKBx5eEQ9f"), _d("A1YICVQe") } or { _d("CFwbDlYUFh5MGxVRCAw"), _d("H1EZFFQG") }

for gvr, qlqa in ipairs(bhb:GetChildren()) do
for gvw, qsgj in ipairs(qlqa:GetDescendants()) do
if qsgj:IsA(_d("OFwAFXQGAAlV")) and qsgj.Text ~= _d("") then
local ndmy = qsgj.Text:lower()

for wzr, shrx in ipairs(mpf) do
if ndmy:find(shrx, 1, true) then
return qlqa
end
end

break
end
end
end

return nil
end

function ha.misc.cards.rarityText(fotu)
local brof = ha.misc.cards.wantedFor(fotu)

if not brof then
return _d("LVUU")
end

local sxp = {}

for dbgr, ft in pairs(ha.misc.cards.borderOf) do
if brof[ft] then
table.insert(sxp, dbgr)
end
end

if #sxp == 0 then
return _d("LVUU")
end

table.sort(sxp)

return table.concat(sxp, _d("QBk"))
end

function ha.misc.cards.run(cyao, mndo, amo)
local tcl = ha.misc.cards
local rjmn = ha.misc.util
local aaf = cyao and _d("AVwKBl0mFg") or _d("CFwbDlYmFg")

if amo then
if os.clock() < tcl[aaf] then
return false, _d("IlYMQVwSB0xAHRUW")
end
elseif os.clock() < tcl.manualAt then
return false, _d("O1gRFRgGQgFWFQRWE0w")
end

if tcl.inFlight then
return false, _d("LVcXFVACEExaGRNcRxYeUAhBURRCDVUKBFkDG0xLDQ9WDgwLFw")
end

local hrv = pcyb.busy(1) and 1 or (pcyb.busy(2) and 2 or nil)
local tt = os.clock() - (difb.floorAt or 0) < 90
local dlb = hrv ~= nil and pcyb.towerSlot() == hrv and tt

if hrv and not dlb then
return false, _d("JVdYABgFAxhNFAQYSkIYUR1BTBULHBkPDk0LBkxcFgUYDhZC")
end

if jag.battlePending and os.time() < (jag.battlePendingUntil or 0) then
return false, _d("LRkaAEwTDgkZERIYFBYNSwwIVgBCQRkMCV1HFh5QCEFPCBcAXVgCWQkBCVVYCExJ")
end

if not cyao and not tcl.burnAllowed() then
return false, _d("L1YWB1EVD0xrGQhWBQ0bFi0PUREHHkoZDRgBCx5KDE8")
end

local mtfa = tcl.npcFor(cyao)

if not mtfa then
return false, cyao
and _d("I1YICVQeQgVKWA9XE0IFV1gVUA4RTFQZERhKQhhLGRddC0IYVlgJUQpCDVccQUgVBx9KWAhMRwMLWBEPFg")
or _d("OFEdQVwCAQNXCxVKEgEYGTYxe0cLHxkWDkxHCwIZDAlRFEIBWAhBFUcWHlgOBFRHFgMZERUYBgwIGQgTXRQRTFAMQVkAAwVXVg")
end

local fgry = cyao and zbuo.OpenFuseDialog or zbuo.OpenDeconstructDialog
local ho = cyao and zbuo.FuseCards or zbuo.DeconstructCards

if not (fgry and ho) then
return false, _d("OFEZFRgOEUxXFxUYDgxMTRAIS0cFDVQdQU4CEB9QFw8W")
end

local kpk = cyao and _d("AVwKBl0wAwJNHQU") or _d("CFwbDlYwAwJNHQU")
local ezl = tcl.wantedFor(kpk)

tcl.manualAt = os.clock() + tcl.manualGap

if amo then
tcl[aaf] = os.clock() + tcl.interval
end

tcl.inFlight = true

task.spawn(function()

local vznt = nil

local function zzv(zac, xud)
if cyao then
tcl.mergeDone = zac
else
tcl.deconDone = zac
end

if xud and amo then
tcl[aaf] = os.clock() + 120
end

tcl.inFlight = false
end

local glfx = rjmn.visit(mtfa.Name)

if not glfx then
zzv(_d("L1EZE1kEFglLWAhLRwwDTVgTXQYGFRlVQUoCFh5AEQ9fRwsCGQwWV0cPBVcNFV0UTA"), true)

return
end

task.wait(0.9)

local klw = nil
local xvmc = jhh(fgry.OnClientEvent, function(ecv)
if type(ecv) == _d("GFgaDV0") then
klw = ecv
end
end)

for kpzy = 1, 3 do
pcall(function()
fgry:FireServer()
end)

for cmx = 1, 20 do
if klw then
break
end

task.wait(0.3)
end

if klw then
break
end

task.wait(1.5)
end

xvmc:Disconnect()
rjmn.returnTo(glfx)

if type(klw) ~= _d("GFgaDV0") then
zzv(_d("OFEdQVwOAwBWH0FcDgZMVxcVGAYMH04dExhKQh5cDBNBDgwLGREPGBMVAxkVCFYSFglKVg"), true)

return
end

local laz = {}

for dwip, tdqp in ipairs(klw) do
local tnz = tonumber(tdqp.borderLevel)
local wdxc = tdqp.cardId or tdqp.id

if tnz and (not ezl or ezl[tnz])
and (cyao or not ha.misc.cards.isProtected(wdxc, tnz)) then
table.insert(laz, tdqp)
end
end

if #laz == 0 then

ha.misc.cards.closeFrame(cyao)
zzv(_d("IlYMCVEJBUxNF0FLAgwIGR4OSkc") .. ha.misc.cards.rarityText(kpk) .. _d("Qg"))

return
end

if mndo then

local vkr = {}

for jlfi, mdft in ipairs(laz) do
if (tonumber(mdft.count) or 0) >= mndo then
table.insert(vkr, mdft)
end
end

if #vkr == 0 then
ha.misc.cards.closeFrame(cyao)
zzv(_d("IlZY") .. ha.misc.cards.rarityText(kpk) .. _d("TEsXFhgPAx8Z") .. mndo .. _d("TFoXEVECEUxAHRUW"))

return
end

laz = vkr

table.sort(laz, function(hw, ynps)
return (tonumber(hw.count) or 0) < (tonumber(ynps.count) or 0)
end)

local hxt, ctm = {}, 0

for bzw, ses in ipairs(laz) do
local uifr = tonumber(ses.count) or 0

if #hxt > 0 and ctm + uifr > mndo then
break
end

table.insert(hxt, ses)
ctm = ctm + uifr
end

laz = hxt
vznt = ctm
end

local dtt = 0

ha.misc.cards.closeFrame(cyao)

if cyao then
if not ezl then

pcall(function()
ho:FireServer(_d("DVUU"), nil)
end)

dtt = #laz
else
local vh = {}

for vrv, rqe in ipairs(laz) do
table.insert(vh, { rqe.cardId, tonumber(rqe.borderLevel) })
end

pcall(function()
ho:FireServer(_d("H1wUBFsTBwhmGQ1U"), vh)
end)

dtt = #vh
end
else
local kobi = {}

for baz, vag in ipairs(laz) do
if #kobi >= 25 then
break
end

table.insert(kobi, { vag.cardId, tonumber(vag.borderLevel), _d("DVUU") })
end

pcall(function()
ho:FireServer(kobi)
end)

dtt = #kobi
end

zzv(_d("P1wWFRg") .. tostring(dtt) .. _d("TEsXFg") .. (dtt == 1 and _d("") or _d("Hw"))
.. _d("TBE") .. ha.misc.cards.rarityText(kpk) .. _d("RQ")
.. (vznt and (_d("QBk") .. tostring(vznt) .. _d("TFoZE1wU")) or _d("")))
end)

return true
end

function ha.misc.cards.closeFrame(rvik)
pcall(function()
local dxr = rvik and { _d("KkwLBH8SCw"), _d("KkwLBH4VAwFc") } or { _d("KFwbDlYUFh5MGxV/Egs"), _d("KFwbDlYUFh5MGxV+FQMBXA") }
local rtk = require(egii.ModuleScripts.MenuManager)
local numg = brbo:FindFirstChild(dxr[1])
local fowu = numg and numg:FindFirstChild(dxr[2])

if fowu then
rtk.close(fowu)
end

if not rvik then
local te = numg and numg:FindFirstChild(_d("KFwbDlYUFh5MGxVqBhYJSj4TWQoH"))

if te then
rtk.close(te)
else
te = brbo:FindFirstChild(_d("KFwbDlYUFh5MGxVqBhYJSj4TWQoH"))

if te then
rtk.close(te)
end
end
end
end)
end

function ha.misc.cards.refresh(fez)

local ftx = fez and ha.misc.mergeParagraph or ha.misc.deconParagraph

if not ftx then
return
end

pcall(function()
ftx:UpdateBody(fez
and ha.misc.cards.mergeText()
or ha.misc.cards.deconText())
end)
end

function ha.misc.cards.mergeText()
local fkk = ha.misc.cards

return _d("PlgKCEwOBx8DWA") .. fkk.rarityText(_d("AVwKBl0wAwJNHQU")) .. _d("Zg") .. fkk.mergeDone
end

function ha.misc.cards.deconText()
local jwn = ha.misc.cards

return _d("PlgKCEwOBx8DWA") .. jwn.rarityText(_d("CFwbDlYwAwJNHQU")) .. _d("Zg") .. jwn.deconDone
.. _d("Zm4dAEwPBx4VWANXFBFAGQoAUQNOTE4XE1QDQg5WCxIURwQFShAIVgBOTHEZDVQIFQlcFkFZCQZMXA4EVhNCD1gKBUtHAx5cWA9dEQceGQsEVhNM")
end

ha.misc.skill = {
on = false,
at = 0,
mainWanted = {},
raidWanted = {},

mainOrder = {},
raidOrder = {},
last = _d("IlYMCVEJBUxbFxRfDxZMQB0V"),
shown = _d(""),
}

function ha.misc.skill.branchMap(ycd)
local ce = {}

for hecv, cili in ipairs(fww.Trees[ycd].branches) do
ce[cili.name] = cili
end

return ce
end

function ha.misc.skill.branchLabels(ugun)
local ixzw = {}

for qldt, nrri in ipairs(fww.Trees[ugun].branches) do
table.insert(ixzw, nrri.name)
end

return ixzw
end

function ha.misc.skill.wantedFrom(cyin, hlf)
local dkhi = {}
local ci = ha.misc.skill.branchMap(hlf)

if type(cyin) == _d("GFgaDV0") then
for hg, kec in pairs(cyin) do
if kec and ci[tostring(hg)] then
dkhi[ci[tostring(hg)].id] = true
end
end
end

return dkhi
end

function ha.misc.skill.ordered(qys, jf)
local ax = {}
local ehq = {}

for wju, glj in ipairs(jf or {}) do
if qys[glj] then
table.insert(ax, glj)
ehq[glj] = true
end
end

for avkn in pairs(qys) do
if not ehq[avkn] then
table.insert(ax, avkn)
end
end

return ax
end

function ha.misc.skill.branchById(ad)
local xgqh = {}

for hi, czy in ipairs(fww.Trees[ad].branches) do
xgqh[czy.id] = czy
end

return xgqh
end

function ha.misc.skill.upgrade()
local ogb = ha.misc.skill
local yma = ha.misc.util
local lms = yma.currentProfile and yma.currentProfile()

if type(lms) ~= _d("GFgaDV0") then
return false, _d("IlZYEUoIBAVVHUFBAhZC")
end

local dll = lms.skillTrees or {}
local pvdi = { [1] = ogb.mainOrder, [2] = ogb.raidOrder }
local labk = nil

for waxy, ckx in ipairs(fww.Trees) do
local jb = dll[ckx.id]
local inet = tonumber(lms[ckx.pointsField or _d("H1IRDVQ3DQVXDBI")]) or 0
local uj = ha.misc.skill.branchById(waxy)

if type(jb) == _d("GFgaDV0") and inet > 0 then
for hyd, zqlx in ipairs(pvdi[waxy] or {}) do
local peba = uj[zqlx]

if peba and not labk then
local rhy = fww.getBranchLevel(dll, ckx.id, peba.id) or 0
local zxqd = rhy + 1

if zxqd <= peba.levels then
local wgq = peba.id .. zxqd
local fri = 1

if type(peba.costs) == _d("GFgaDV0") and tonumber(peba.costs[zxqd]) then
fri = tonumber(peba.costs[zxqd])
elseif tonumber(peba.cost) then
fri = tonumber(peba.cost)
end

if fri <= inet and fww.isAvailable(dll, ckx.id, wgq) then
labk = { tree = ckx.id, node = wgq, name = peba.name, level = zxqd }
end
end
end
end
end
end

if not labk then
return false, _d("IlYMCVEJBUxNF0FaEhtMQB0VFg")
end

zbuo.BuySkillNode:FireServer(labk.tree, labk.node)

if yma.askProfile then
pcall(yma.askProfile)
end

ogb.last = _d("LlYNBlATQg") .. labk.name .. _d("TA") .. tostring(labk.level)

return true
end

function ha.misc.skill.text()
local to = ha.misc.skill
local ydfd = ha.misc.util
local rgpy = ydfd.currentProfile and ydfd.currentProfile()

if type(rgpy) ~= _d("GFgaDV0") then
return _d("PFYRD0wUWEwGcg") .. to.last
end

local rxi = rgpy.skillTrees or {}
local sgg = {}

local okl = { [1] = to.mainOrder, [2] = to.raidOrder }

for kkxr, jogw in ipairs(fww.Trees) do
local nwc = tonumber(rgpy[jogw.pointsField or _d("H1IRDVQ3DQVXDBI")]) or 0
local kir = {}
local nazb = ha.misc.skill.branchById(kkxr)

for wsg, bpuw in ipairs(okl[kkxr] or {}) do
local cqg = nazb[bpuw]

if cqg then
local qxjx = fww.getBranchLevel(rxi, jogw.id, cqg.id) or 0
table.insert(kir, cqg.name .. _d("TA") .. tostring(qxjx) .. _d("Qw") .. tostring(cqg.levels))
end
end

sgg[#sgg + 1] = jogw.name .. _d("Vhk") .. tostring(nwc) .. _d("TEkMEg")
.. (#kir > 0 and (_d("TBRY") .. table.concat(kir, _d("QBk"))) or _d("TBRYD1cTCgVXH0FIDgEHXBw"))
end

sgg[#sgg + 1] = to.last

return table.concat(sgg, _d("Zg"))
end

ha.misc.mergeSection = ha.misc.tab:Section({
Side = _d("IFweFQ"),
})

ha.misc.mergeSection:Header({
Name = _d("IVwKBl1HkvOe1A"),
})

ha.misc.mergeToggle = ha.misc.mergeSection:Toggle({
Name = _d("LUwMDhgKBx5eHQ"),
Default = false,
Callback = function(vfun)
local ncdq = ha.misc.cards

ncdq.mergeOn = vfun

ncdq.mergeAt = (vfun and dum.loading) and (os.clock() + ncdq.interval) or 0
end,
}, _d("DUwMDmcKBx5eHQ"))

ha.misc.mergeDropdown = ha.misc.mergeSection:Dropdown({
Name = _d("PlgKCEwOBx8"),
Search = false,
Multi = true,
Required = false,
Default = { _d("LVUU") },
Options = ha.misc.cards.rarityLabels,
Callback = function(uvqf)
local whc = {}

if type(uvqf) == _d("GFgaDV0") then
for uios, ezxd in pairs(uvqf) do
if ezxd then
if uios == _d("LVUU") then
whc[0] = true
else
whc[ha.misc.cards.borderOf[tostring(uios)]] = true
end
end
end
end

ha.misc.cards.mergeWanted = whc
ha.misc.cards.refresh(true)
end,
}, _d("HlgKCEwOBx8"))

ha.misc.mergeSection:Button({
Name = _d("IVwKBl1HDANO"),
Callback = function()
local twy, wmo = ha.misc.cards.run(true)

if not twy then
kqs:Notify({
Title = _d("IVwKBl0"),
Description = wmo,
Lifetime = 6,
})
end
end,
})

ha.misc.mergeSection:Button({
Name = _d("IVwKBl1HW1w"),
Callback = function()

local jprf, vfuk = ha.misc.cards.run(true, 90)

if not jprf then
kqs:Notify({
Title = _d("IVwKBl1HW1w"),
Description = vfuk,
Lifetime = 6,
})
end
end,
})

ha.misc.mergeParagraph = ha.misc.mergeSection:Paragraph({
Header = _d("P00ZFU0U"),
Body = ha.misc.cards.mergeText(),
})

ha.misc.accSection = ha.misc.tab:Section({
Side = _d("PlAfCUw"),
})

ha.misc.accSection:Header({
Name = _d("LVobBEsUDR5QHRIYl/3+tw"),
})

ha.misc.accToggle = ha.misc.accSection:Toggle({
Name = _d("LUwMDhgFBx9NWABbBAcfShcTQQ"),
Default = false,
Callback = function(jadw)
ha.misc.util.accOn = jadw
ha.misc.util.accAt = 0
end,
}, _d("DUwMDmcFBx9NJwBbBAcfShcTQQ"))

ha.misc.accBuyToggle = ha.misc.accSection:Toggle({
Name = _d("LUwMDhgFFxUZGgRLEw"),
Default = false,
Callback = function(oua)
ha.misc.util.accBuyOn = oua
ha.misc.util.accBuyAt = 0
ha.misc.util.accAt = 0
end,
}, _d("DUwMDmcFFxVmGgRLEw"))

ha.misc.accSection:Button({
Name = _d("LkwBQVoCERg"),
Callback = function()
local ktmb, hwno = ha.misc.util.buyBest()

if not ktmb then
kqs:Notify({
Title = _d("LVobBEsUDR5QHRI"),
Description = hwno,
Lifetime = 6,
})
end
end,
})

ha.misc.accSection:Button({
Name = _d("KUgNCEhHAAlKDA"),
Callback = function()
if not ha.misc.util.equipBest() then
kqs:Notify({
Title = _d("LVobBEsUDR5QHRI"),
Description = _d("IlYMCVEJBUxbHRVMAhBMUAtBVxAMCV1YGF0TTA"),
Lifetime = 5,
})
end
end,
})

ha.misc.accParagraph = ha.misc.accSection:Paragraph({
Header = _d("P00ZFU0U"),
Body = ha.misc.util.accText(),
})

ha.misc.claimInfo = ha.misc.tab:Section({
Side = _d("PlAfCUw"),
})

ha.misc.claimInfo:Header({
Name = _d("IVALAl0LDg1XHQ5NFA"),
})

ha.misc.indexParagraph = ha.misc.claimInfo:Paragraph({
Header = _d("L1gKBRguDAhcAA"),
Body = ha.misc.util.indexText(),
})

ha.misc.achParagraph = ha.misc.claimInfo:Paragraph({
Header = _d("LVoQCF0RBwFcFhVL"),
Body = ha.misc.util.achText(),
})

ha.misc.questParagraph = ha.misc.claimInfo:Paragraph({
Header = _d("PUwdEkwU"),
Body = ha.misc.util.questText(),
})

ha.misc.packParagraph = ha.misc.claimInfo:Paragraph({
Header = _d("PFgbCks"),
Body = ha.misc.util.packText(),
})

ha.misc.skillSection = ha.misc.tab:Section({
Side = _d("PlAfCUw"),
})

ha.misc.skillSection:Header({
Name = _d("P1IRDVRHNh5cHUHI+O7f"),
})

ha.misc.skillToggle = ha.misc.skillSection:Toggle({
Name = _d("LUwMDhgSEgtLGQVd"),
Default = false,
Callback = function(mpe)
local bm = ha.misc.skill

if mpe and not (next(bm.mainWanted) or next(bm.raidWanted)) then
bm.on = false

pcall(function()
ha.misc.skillToggle:UpdateState(false)
end)

kqs:Dialog({
Title = _d("PFAbChgGQg5LGQ9bD0IKUAoSTA"),
Description = _d("L1EXDksCQg1NWA1dBhEYGRcPXUcAHlgWAlBHCwIZDAldRy8NUBZBTBUHCRkXExg1AwVdWBVKAgdMXQoOSAMNG1dYTBg")
.. _d("LUwMDhgSEgtLGQVdRw0CVQFBSxcHAl0LQUgICwJNC0FPDwceXFgYVxJCHFYRD0xHCxgX"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})

return
end

bm.on = mpe
bm.at = 0
end,
}, _d("DUwMDmcSEgtLGQVd"))

ha.misc.skillMainDropdown = ha.misc.skillSection:Dropdown({
Name = _d("IVgRDxgTEAlc"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = ha.misc.skill.branchLabels(1),
Callback = function(dwhl)
local hty = ha.misc.skill
local fizz = hty.wantedFrom(dwhl, 1)

hty.mainWanted = fizz
hty.mainOrder = hty.ordered(fizz, hty.mainOrder)
hty.shown = _d("")
end,
}, _d("AVgRD2cTEAlc"))

ha.misc.skillRaidDropdown = ha.misc.skillSection:Dropdown({
Name = _d("PlgRBRgTEAlc"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = ha.misc.skill.branchLabels(2),
Callback = function(xcs)
local kud = ha.misc.skill
local wpl = kud.wantedFrom(xcs, 2)

kud.raidWanted = wpl
kud.raidOrder = kud.ordered(wpl, kud.raidOrder)
kud.shown = _d("")
end,
}, _d("HlgRBWcTEAlc"))

pcall(function()
ha.misc.skillMainDropdown:UpdateSelection({})
end)

pcall(function()
ha.misc.skillRaidDropdown:UpdateSelection({})
end)

ha.misc.skillParagraph = ha.misc.skillSection:Paragraph({
Header = _d("P00ZFU0U"),
Body = ha.misc.skill.text(),
})

task.spawn(function()
local mxn = ha.misc.util

while ydyn() do
if mxn.indexOn or mxn.achOn or mxn.questOn or mxn.accOn or mxn.accBuyOn then
mxn.currentProfile()
end

if mxn.indexOn then
mxn.claimIndex()
end

if mxn.achOn then
mxn.claimAchievement()
end

if mxn.questOn then

if os.clock() - mxn.questAskedAt > 20 or os.clock() - mxn.weeklyAskedAt > 20 then
mxn.askQuests()
end

mxn.claimQuest()
end

if mxn.accOn and os.clock() >= mxn.accAt then
mxn.accAt = os.clock() + 3
mxn.equipBest()
end

local frwt = ha.misc.cards

if not frwt.inFlight then
if frwt.mergeOn and os.clock() >= frwt.mergeAt then
frwt.run(true, nil, true)
elseif frwt.deconOn and os.clock() >= frwt.deconAt then
frwt.run(false, nil, true)
end
end

if frwt.mergeDone ~= frwt.mergeShown then
frwt.mergeShown = frwt.mergeDone

pcall(function()
ha.misc.mergeParagraph:UpdateBody(ha.misc.cards.mergeText())
end)
end

if frwt.deconDone ~= frwt.deconShown then
frwt.deconShown = frwt.deconDone

pcall(function()
ha.misc.deconParagraph:UpdateBody(ha.misc.cards.deconText())
end)
end

local sa = ha.misc.skill

if sa.on and os.clock() >= sa.at then

sa.at = os.clock() + 2
sa.upgrade()
end

local vuq = ha.misc.skill.text()

if sa.shown ~= vuq then
sa.shown = vuq

pcall(function()
ha.misc.skillParagraph:UpdateBody(vuq)
end)
end

if mxn.accBuyOn and os.clock() >= mxn.accBuyAt then

local bjm = mxn.buyBest()

mxn.accBuyAt = os.clock() + (bjm and 45 or 10)
end

local bu = {
{ key = _d("BVccBEA"), paragraph = ha.misc.indexParagraph, value = mxn.indexText() },
{ key = _d("DVoQ"), paragraph = ha.misc.achParagraph, value = mxn.achText() },
{ key = _d("HUwdEkw"), paragraph = ha.misc.questParagraph, value = mxn.questText() },
{ key = _d("HFgbCg"), paragraph = ha.misc.packParagraph, value = mxn.packText() },
{ key = _d("DVob"), paragraph = ha.misc.accParagraph, value = mxn.accText() },
}

for dls, gtpj in ipairs(bu) do
if gtpj.paragraph and mxn.shown[gtpj.key] ~= gtpj.value then
mxn.shown[gtpj.key] = gtpj.value

pcall(function()
gtpj.paragraph:UpdateBody(gtpj.value)
end)
end
end

task.wait(0.75)
end
end)

local uxv = lse:Section({
Side = _d("PlAfCUw"),
})

uxv:Paragraph({
Header = _d("KlALCVEJBQ"),
Body = _d("LUwMDhghCx9RWARJEgscSlgYVxIQTEsXBRRHBA1aHRIYEwoJGQ8ATAIQTFgWBRgEAx9NC0FXCUIFTQtBVxAMQBkMCV0JQh5cHQ1LRxUEXBZBSwgPCU0QCFYAQg5QDARLSUI4aVgVV0cgDUBYEU0LDh8ZAQ5NRwANWhNBTAhCGFEdQVoGG0xfERNLE05MWBYFGBMKCRkMFldHJglcCARLE0I7WAwESkcRG1AMAlACEUxRFw1cRxYEXFgSSAgWTEAXFBgQBx5cWBJMBgwIUBYGGAgMTE4QBFZHGwNMWABKCgcIGQwJXQpCQRkMCV1HBglcCARLE0IeUBYGGAQDHksRBEtHFgRcWANRAAUJSgxBVBIBBxkaDlYSEUIzcjVQAkIfURcRGAUXFUpYAFYDQglIDQhIFEIeVhwSGAYMCBkaAFETQhtQDAkYEwoJGRsASxMRTEAXFBgPAxpcVkF6EhsFVx9BVgIHCEpYFVACQg9WDQ9MAhBMFFgDVxMKTFoXDF1HBB5WFUFMDwdMfxESUAIQAVgWTzJtIQ1NGwldFEIHXB0RS0cDTEsND1YODAsZDABUCxtMWwFBURMHARkZD1xHEQ1PHRIYDhZAGQsOGBMKCRkMDkwGDkxaGRNKDgcfGRcXXRVCDlwMFl0CDExKHRJLDg0CSlY"),
})

local eut = lse:Section({
Side = _d("PlAfCUw"),
})

eut:Header({
Name = _d("L1gMAlACEQ"),
})

local qhz

qhz = eut:Paragraph({
Header = _d("O1EZFRgeDRkZGwBNAAoY"),
Body = mdg(),
})

local nxv = lse:Section({
Side = _d("PlAfCUw"),
})

nxv:Header({
Name = _d("JUoUAFYDQh9RFxE"),
})

nxv:Toggle({
Name = _d("LUwMDhgEEA1fDEFKCAY"),
Default = false,
Callback = function(ybng)
vs.island.autoRod = ybng
vs.islandAt = 0
end,
}, _d("BUoUAFYDPQ1MDA5nFQ0I"))

nxv:Toggle({
Name = _d("LUwMDhgEEA1fDEFZBAEJSgsOSh4"),
Default = false,
Callback = function(vmcw)
vs.island.autoAcc = vmcw
vs.islandAt = 0
end,
}, _d("BUoUAFYDPQ1MDA5nBgEPXAsSVxUb"))

nxv:Toggle({
Name = _d("KUgNCEhHAw9aHRJLCBAV"),
Default = false,
Callback = function(qpcg)
vs.island.equipAcc = qpcg
vs.islandAt = 0
end,
}, _d("BUoUAFYDPQlIDQhIOAMPWh0SSwgQFQ"))

local rik

rik = nxv:Paragraph({
Header = _d("JUoUAFYDQgtcGRM"),
Body = vs.shopIsland.text(),
})

local cymx = lse:Section({
Side = _d("IFweFQ"),
})

cymx:Header({
Name = _d("PlwaCEoTCg"),
})

vs.rebirthToggle = cymx:Toggle({
Name = _d("LUwMDhgVBw5QChVQ"),
Default = false,
Callback = function(oot)
vs.autoRebirth = oot
end,
}, _d("DUwMDmcVBw5QChVQ"))

vs.rebirthParagraph = cymx:Paragraph({
Header = _d("P00ZFU0U"),
Body = vs.rebirthText(),
})

cymx:Button({
Name = _d("OGlYFVdHCx9VGQ9c"),
Callback = function()
if not vs.gotoIsland() then
kqs:Notify({
Title = _d("LVsZD1wIDAldWChLCwMCXQ"),
Description = _d("L1EZE1kEFglLWAhLRwwDTVgTXQYGFRkBBExHT0xNChgYBgUNUBZBUQlCDRkVDlUCDBgX"),
Lifetime = 5,
})
end
end,
})

local mwi

mwi = cymx:Toggle({
Name = _d("LUwMDhguEQBYFgUYLwMeXRsOSgI"),
Default = false,
Callback = function(qdmd)
ug.island = qdmd
ug.pending = false
ug.pendingUntil = 0
ug.paused = false
ug.gaveUp = false
ug.stoodDown = false
ug.manualPause = false

if not qdmd then
return
end

if pcyb.otherTowerOn(_d("BFgKBVsIEAk")) then
ug.island = false

pcall(function()
mwi:UpdateState(false)
end)

pcall(function()
kqs:Dialog({
Title = _d("LUwMDhguEQBYFgUYLwMeXRsOSgJCA18e"),
Description = _d("OFEdQXAGDgBWDwRdCUIYVg8ESkcLHxkZDUoCAwhAWBNNCQwFVx9NGAYMCBkPCEwPQgNXHUFLCw0YGQwJXUcFDVQdQVcJDhUZChRWFEIDVx1BUQkEBVcRFV1HEANWFUFZE0INGQwIVQJMTG0NE1ZHFgRYDEFXAQRAGRcTGBMXHldYDlZHIxlNF0FrCw0YGQsOGAIDD1FYFVcQBx4ZHwRMFEIFTQtBVxAMTEoUDkxJ"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})
end)

return
end

if pcyb.enabled and pcyb.hardcoreSlot() == nil then
ug.island = false

pcall(function()
mwi:UpdateState(false)
end)

pcall(function()
kqs:Dialog({
Title = _d("LUwMDhguEQBYFgUYLwMeXRsOSgJCA18e"),
Description = _d("IlZYElQIFkxQC0FLAhZMTRdBWUcWA04dExRHAwJdWBVQAkILWBUEGAgMAEBYEkwGEBhKWAAYEw0bXApBShIMTF8KDlVHA0xNFxZdFUIfVRcVFkcxCU1YDlYCQhhWWChLCwMCXVgJWRUGD1YKBBRHDR4ZDBRKCUItTAwOGDQOA01YDl4BTA"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})
end)

return
end

if not ug.data then
ug.island = false

pcall(function()
mwi:UpdateState(false)
end)

pcall(function()
kqs:Dialog({
Title = _d("LUwMDhguEQBYFgUYLwMeXRsOSgJCA18e"),
Description = _d("OFEREhgFFwVVHEFQBhFMVxdBcAYQCFoXE10zDRtcCiVZEwNAGQsOGBMKCRkMDk8CEEtKWBJMBgUJSlgCWQkMA01YA11HEAlYHEFZCQZMWFgTTQlCD1gWD1cTQg5cWBJMBhAYXBxP"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})
end)

return
end

local wute = ug.remotes.request

if wute then
pcall(function()
wute:FireServer()
end)
end
end,
}, _d("DUwMDmcOEQBYFgVnDwMeXRsOSgI"))

ug.islandToggle = mwi

ug.islandParagraph = cymx:Paragraph({
Header = _d("LkweB0s"),
Body = ug.buffText(),
})

cymx:Button({
Name = _d("PFgNEl1HKx9VGQ9cRyoNSxwCVxUH"),
Callback = function()
if ug.pauseRun then
ug.pauseRun()
end
end,
})

cymx:Button({
Name = _d("K1AOBBgyEkxwCw1ZCQZMcRkTXAQNHlw"),
Callback = function()
if ug.giveUpRun then
ug.giveUpRun()
end
end,
})

local sot = lse:Section({
Side = _d("IFweFQ"),
})

sot:Header({
Name = _d("KlALCVEJBUxKEA5I"),
})

sot:Toggle({
Name = _d("LUwMDhgFFxUZGgRLE0IeVhw"),
Default = false,
Callback = function(rf)
vs.shop.autoBuyRod = rf
vs.shopAt = 0
end,
}, _d("DUwMDmcFFxVmGgRLEz0eVhw"))

sot:Toggle({
Name = _d("LUwMDhgFFxUZGgRLE0IOWBEV"),
Default = false,
Callback = function(dznb)
vs.shop.autoBuyBait = dznb
vs.shopAt = 0
end,
}, _d("DUwMDmcFFxVmGgRLEz0OWBEV"))

sot:Toggle({
Name = _d("KUgNCEhHAAlKDEFKCAY"),
Default = false,
Callback = function(kzt)
vs.shop.equipRod = kzt
vs.shopAt = 0
end,
}, _d("CUgNCEg4AAlKDD5KCAY"))

sot:Toggle({
Name = _d("KUgNCEhHAAlKDEFaBgsY"),
Default = false,
Callback = function(ypzc)
vs.shop.equipBait = ypzc
vs.shopAt = 0
end,
}, _d("CUgNCEg4AAlKDD5aBgsY"))

local sz

sz = sot:Paragraph({
Header = _d("LlwLFRgeDRkZGwBWRwcdTBER"),
Body = lzo(),
})
task.spawn(function()
local gme = qf()
local uoi = mdg()
local gqb = lzo()
local keg = vs.shopIsland.text()

while ydyn() do
local ec = qf()

if ec ~= gme then
gme = ec
pcall(function()
hwoa:UpdateBody(ec)
end)
end

local pwyu = mdg()

if pwyu ~= uoi then
uoi = pwyu
pcall(function()
qhz:UpdateBody(pwyu)
end)
end

local dwyq = lzo()

if dwyq ~= gqb then
gqb = dwyq
pcall(function()
sz:UpdateBody(dwyq)
end)
end

local og = vs.shopIsland.text()

if og ~= keg then
keg = og
pcall(function()
rik:UpdateBody(og)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while ydyn() do

if mmts() and os.clock() >= (vs.shopAt or 0)
and os.clock() >= (vs.islandTripUntil or 0) then
vs.shopAt = os.clock() + 1
pcall(znru)
end

if vs.shopIsland.active() and os.clock() >= (vs.islandAt or 0)
and os.clock() >= math.max(vs.shopHoldUntil or 0, vs.tpHoldUntil or 0) then
vs.islandAt = os.clock() + 2
pcall(vs.shopIsland.run)
end

task.wait(1)
end
end)

rit:Select()

local zh = rit:Section({
Side = _d("IFweFQ"),
})

local lrdx = rit:Section({
Side = _d("PlAfCUw"),
})

local vzh = zh:Paragraph({
Header = _d("P00ZFU0U"),
Body = pkzp(),
})

zh:Divider()

jag.npcToggle = zh:Toggle({
Name = _d("LUwMDhgpMi8"),
Default = false,
Callback = function(ohzb)

if ohzb and not jag.story and #kkog() == 0 then
pcall(function()
jag.npcToggle:UpdateState(false)
end)

kqs:Dialog({
Title = _d("LUwMDhgpMi8ZFgRdAxFMWFgVWRUFCU0"),
Description = _d("PFAbChgGFkxVHQBLE0IDVx1BdjchTF8KDlVHFgRcWBZXFQ4ISlgDXQsNGxVYDkpHFhlLFkFXCUItTAwOGCQNAUkUBEwCQj9NFxNBSUI4UR0TXUcLHxkWDkwPCwJeWBVXRwQFXhAVGB4HGBc"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})

return
end

jag.enabled = ohzb
end,
}, _d("DUwMDmcJEg8"))

zh:Toggle({
Name = _d("O1gUChgTDUx3KCI"),
Default = false,
Callback = function(lvf)
jag.walkToNpc = lvf
end,
}, _d("G1gUCmcTDTNXCAI"))

zh:Dropdown({
Name = _d("KFAeB1EEFwBNAQ"),
Search = false,
Multi = true,
Required = false,
Default = { _d("IlYKDFkL") },
Options = xik,
Callback = function(xyd)
local eqv = {}

if type(xyd) == _d("GFgaDV0") then
for vhua, xfoo in ipairs(xik) do
if xyd[xfoo] then
table.insert(eqv, gs[xfoo])
end
end
end

if #eqv == 0 then
eqv = { _d("AlYKDFkL") }
end

jag.difficulties = eqv
end,
}, _d("CFAeB1EEFwBNAQ"))

zh:Toggle({
Name = _d("LUwMDhg1DQNUCw"),
Default = false,
Callback = function(uyo)
ena.enabled = uyo
ena.inBattle = false
ena.pending = false
end,
}, _d("DUwMDmcVDQNUCw"))

local pol = rit:Section({
Side = _d("IFweFQ"),
})

pol:Header({
Name = _d("P1UXFQ"),
})

pol:Paragraph({
Header = _d("JFYPQUwPB0xKFA5MFEIbVgoK"),
Body = _d("P1UXFRhWQkEZMQ9eDgwFTQFBbAgVCUtYSVYIEAFYFEFXFUIiUB8JTAoDHlxRQVcVQiRYFA1XEAcJV1g1VxAHHhVYEVQSEUx3KCIYBQMYTRQES0cVBFwWQUsLDRgZSkFRFEIOTAsYFm1oP1UXFRhVQkEZNjF7FE5MSxkIXBROTEsXDlUUTkxwCw1ZCQZMcRkTXAQNHlxWazIlDRhRWBJUCBYfGRcPGCkyLxkaAEwTDglKQkFMEA1MdygiGAEHDU0NE10UQg1NWA5WBAdAGRkPXEcDTEsZCFxHAANKC0FdBgEEF3JrbBANTE0XFl0VQh5MFhIYDhFMTRAEGAgMAEBYE10BFx9cHEFIBgseGVVBcRQODVccQXAGEAhaFxNdRw0CGRoOTA9CH1UXFUtHCx8ZFw9dRxAZV1gASwwHCBkeDkpHFhtQGwQWbWg/VRcVS0cNCl9CQVcJB0xKFA5MS0IYVg8EShRCGFgTBBgTFx5XC08"),
})

pcyb.toggle = pol:Toggle({
Name = _d("LUwMDhg0DgNN"),
Default = false,
Callback = function(rrc)
if rrc and pcyb.role[1] == pcyb.role[2] and pcyb.role[1] ~= _d("Akkb") then
pcyb.enabled = false

pcall(function()
pcyb.toggle:UpdateState(false)
end)

kqs:Dialog({
Title = _d("LUwMDhg0DgNN"),
Description = _d("P1UXFRhWQg1XHEFrCw0YGUpBWRUHTFsXFVBH") .. pcyb.roleLabel(1) .. _d("QhksCVkTQgVKWA5WAkIeTBZBWRQJCV1YB1cVQhhOEQJdS0IfVlgOVgJCA19YFVACQhhOF0FLCw0YSlgJWRRCGFZYA11HEQNUHRVQDgwLGR0NSwJM"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})

return
end

pcyb.enabled = rrc

if rrc then
pcyb.hasSlot2 = pcyb.detectSlot2()

if pcyb.hasSlot2 == false then
kqs:Dialog({
Title = _d("LUwMDhg0DgNN"),
Description = _d("P1UXFRhVQgBWFwpLRw4DWhMEXEdPTFAMQVYCBwhKWBVQAkIoTBkNGCUDGE0UBBg0DgNNWAZZCgccWAsSFEcNHhkxD14ODAVNHUFqCA0BGUpUCEcBAFwZE10DTkxbHQdXFQdMTRAEGBQHD1YWBRgUDgNNWAJZCUIOWAwVVAJMTGsXFEwODAsZCxVZHhFMVhZBSwsNGBlJQU0JFgVVWBVQAgxC"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})
end
end
end,
}, _d("DUwMDmcUDgNN"))

function pcyb.applyRoles()
if not pcyb.enabled then
return
end

if pcyb.role[1] == pcyb.role[2] and pcyb.role[1] ~= _d("Akkb") then
pcyb.enabled = false

pcall(function()
pcyb.toggle:UpdateState(false)
end)

pcall(function()
kqs:Dialog({
Title = _d("LUwMDhg0DgNNWA5eAQ"),
Description = _d("P1UXFRhWQg1XHEFrCw0YGUpBWRUHTFsXFVBH") .. pcyb.roleLabel(1) .. _d("QhksCVkTQgVKWA5WAkIeTBZBWRQJCV1YB1cVQhhOEQJdS0INVxxBURNCD1gWD1cTQhhYEwQYExUDGQsNVxMRQhkrBExHDQJcWBJUCBZMTRdBSwgPCU0QCFYAQglVCwQW"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})
end)

return
end

local ithu = {}

if pcyb.towerSlot() ~= 1 and difb.enabled then
difb.enabled = false
table.insert(ithu, _d("LUwMDhgzDRtcCg"))

pcall(function()
difb.ui:UpdateState(false)
end)
end

if pcyb.hardcoreSlot() == nil and ug.island then
ug.island = false
table.insert(ithu, _d("LUwMDhguEQBYFgUYLwMeXRsOSgI"))

pcall(function()
ug.islandToggle:UpdateState(false)
end)
end

if pcyb.halloweenSlot() == nil and gnco.run.enabled then
gnco.run.enabled = false
table.insert(ithu, _d("LUwMDhgvAwBVFxZdAgxMbRcWXRU"))

pcall(function()
gnco.toggle:UpdateState(false)
end)
end

if #ithu > 0 then
pcall(function()
kqs:Dialog({
Title = table.concat(ithu, _d("TFgWBRg")) .. _d("TFYeBw"),
Description = _d("IlZYElQIFkxQC0FLAhZMTRdBTA8DGBkMDk8CEExYFhgYCg0eXFRBSwhCBU1YCVkDQgJWDwldFQdMTRdBShIMQhk/CE4CQgVNWAAYFA4DTVgAXwYLAhVYDkpHFhlLFkF5EhYDGSsNVxNCA18eTw"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})
end)
end
end

pcyb.oneDropdown = pol:Dropdown({
Name = _d("P1UXFRhW"),
Search = false,
Multi = false,
Required = false,

Default = 1,
Options = pcyb.optionsFor[1],
Callback = function(tyi)
local bcnl = type(tyi) == _d("GFgaDV0") and tyi[1] or tyi

if type(bcnl) == _d("H00KCFYA") and pcyb.roleIds[bcnl] then
pcyb.role[1] = pcyb.roleIds[bcnl]
pcyb.picked[1] = bcnl
end

pcall(function()
pcyb.oneDropdown:UpdateName(_d("P1UXFRhWQo652kE") .. pcyb.roleLabel(1))
end)

if pcyb.applyRoles then
pcyb.applyRoles()
end
end,
}, _d("H1UXFWdWPV4"))

pcyb.twoDropdown = pol:Dropdown({
Name = _d("P1UXFRhV"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = pcyb.optionsFor[2],
Callback = function(kxy)
local gnef = type(kxy) == _d("GFgaDV0") and kxy[1] or kxy

if type(gnef) == _d("H00KCFYA") and pcyb.roleIds[gnef] then
pcyb.role[2] = pcyb.roleIds[gnef]
pcyb.picked[2] = gnef
end

pcall(function()
pcyb.twoDropdown:UpdateName(_d("P1UXFRhVQo652kE") .. pcyb.roleLabel(2))
end)

if pcyb.applyRoles then
pcyb.applyRoles()
end
end,
}, _d("H1UXFWdVPV4"))

pcall(function()
pcyb.oneDropdown:UpdateSelection(_d("OFYPBEo"))
end)

pcall(function()
pcyb.twoDropdown:UpdateSelection(_d("Imk7QVoGFhhVHRI"))
end)

getgenv().ACBXSlot = pcyb

local ojw = rit:Section({
Side = _d("IFweFQ"),
})

ojw:Header({
Name = _d("PlgRBRgFDR9K"),
})

ojw:Toggle({
Name = _d("LUwMDhg1AwVdWCNXFBE"),
Default = false,
Callback = function(ldr)
ha.enabled = ldr
ha.pending = {}
ha.pendingUntil = {}

if ldr then
ha.cleared = {}
end
end,
}, _d("DUwMDmcVAwVdJwNXFBE"))

ojw:Toggle({
Name = _d("LUwMDhgwAwBSWBVXRzANUBxBeggRHw"),
Default = false,
Callback = function(vyq)
ha.walkToBoss = vyq
end,
}, _d("DUwMDmcQAwBSJxVXOBANUBw+WggRHw"))

local nip
nip = ojw:Slider({
Name = _d("O1gUChg0EglcHA"),
Minimum = 0,
Maximum = 72,
Default = 18,
Precision = 0,
Callback = function(pmo)
local ddg = math.floor(pmo + 0.5)
ha.walkSpeed = ddg

if nip and ddg ~= pmo then
nip:UpdateValue(ddg)
end
end,
}, _d("G1gUCmcUEglcHA"))

ojw:Dropdown({
Name = _d("PlgRBRgjCwpfEQJNCxYV"),
Search = false,
Multi = true,
Required = false,
Default = { _d("IlYKDFkL") },
Options = iipu,
Callback = function(fzx)
local rnfs = {}

if type(fzx) == _d("GFgaDV0") then
for rwsh, vtw in ipairs(iipu) do
if fzx[vtw] then
table.insert(rnfs, by[vtw])
end
end
end

if #rnfs == 0 then
rnfs = { _d("AlYKDFkL") }
end

ha.difficulties = rnfs
end,
}, _d("HlgRBWcDCwpfEQJNCxYV"))

function ha.pickedIds(kwpa)
local wzk = {}

if type(kwpa) == _d("GFgaDV0") then
for rtt, lbi in ipairs(di) do
if kwpa[lbi] and txu[lbi] then
table.insert(wzk, txu[lbi])
end
end
elseif type(kwpa) == _d("H00KCFYA") and txu[kwpa] then
wzk = { txu[kwpa] }
end

return wzk
end

ojw:Dropdown({
Name = _d("PlgRBRglDR9K"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = di,
Callback = function(aicr)
ha.picks[1] = ha.pickedIds(aicr)
ha.cursor[1] = 1
ha.losses[1] = {}
end,
}, _d("HlgRBWcFDR9K"))

ha.boss2Dropdown = ojw:Dropdown({
Name = _d("PlgRBRglDR9KWElrCw0YGUpI"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = di,
Callback = function(yjfc)
ha.picks[2] = ha.pickedIds(yjfc)
ha.cursor[2] = 1
ha.losses[2] = {}
end,
}, _d("HlgRBWcFDR9KJxJUCBYzCw"))

pcall(function()
ha.boss2Dropdown:SetVisibility(false)
end)

task.spawn(function()
local dp = nil

while ydyn() do
local cnw = pcyb.splitNpc()

if cnw ~= dp then
dp = cnw

local cpk = ha.boss2Dropdown

if cpk then
pcall(function()
cpk:SetVisibility(cnw)
end)
end
end

task.wait(0.5)
end
end)

lrdx:Paragraph({
Header = _d("LUwMDhghCwtRDA"),
Body = _d("P1wUBFsTQgNXHUFXFUIBVgoEGCkyL0pYB0oID0xNEAQYEA0eVRwSGAUHAFYPTw"),
})

for bkdz, cwqb in ipairs(powi) do
lrdx:Dropdown({
Name = cwqb.name,
Search = true,
Multi = true,
Required = false,
Default = {},
Options = cwqb.options,
Callback = function(goz)
local wcrz = {}

if type(goz) == _d("GFgaDV0") then
if goz.All then
for ofn, zcn in ipairs(cwqb.ids) do
table.insert(wcrz, zcn)
end
else
for oxx, mafd in ipairs(cwqb.options) do
if goz[mafd] and cwqb.byName[mafd] then
table.insert(wcrz, cwqb.byName[mafd])
end
end
end
elseif type(goz) == _d("H00KCFYA") then
if goz == _d("LVUU") then
for qxdh, uszd in ipairs(cwqb.ids) do
table.insert(wcrz, uszd)
end
else
wcrz = { cwqb.byName[goz] }
end
end

jag.selectedByWorld[cwqb.name] = wcrz
end,
}, _d("AkkbPg") .. cwqb.id)
end

lrdx:Toggle({
Name = _d("LUwMDhgkDQFJFARMAkI/TRcTQQ"),
Default = false,
Callback = function(uoa)
jag.story = uoa
jag.battlePending = false
jag.battlePendingUntil = 0
end,
}, _d("DUwMDmcEDQFJFARMAj0fTRcTQQ"))

jag.storyDropdown = lrdx:Dropdown({
Name = _d("KFAeB1EEFwBNEQRL"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = xik,
Callback = function(yn)
local uyjq = type(yn) == _d("GFgaDV0") and yn[1] or yn

if type(uyjq) == _d("H00KCFYA") and gs[uyjq] then
jag.storyDifficulty = gs[uyjq]
end
end,
}, _d("CFAeB1EEFwBNEQRL"))

pcall(function()
jag.storyDropdown:UpdateSelection(xik[1])
end)

pcall(function()
jag.storyDropdown:UpdateName(_d("KFAeB1EEFwBNEQRLR4Dsm1g") .. xik[1])
end)

lrdx:Paragraph({
Header = _d("JFYPQXkSFgMZOw5VFw4JTR1BaxMNHkBYFlcVCR8"),
Body = _d("KlAfCUwUQglPHRNBRxEYVgoYGCkyLxlVQXYGDwlSWBVQFQ0ZXhBBcRQHB1gRQRVHDQIZDAldRw0CXFgFUQEEBVoNDUweQg1bFxddS0IbVgoKUQkFTE0QBBgGEAlYC0FRCUIDSxwESkcDAl1YAlcKCwJeWANZBAlMSxcUVgNCDUpYAlcIDghWDw9LRwEAXBkTFm1oJU1YE10XDg1aHRIYEwoJGRkTXQZCCEsXEVwIFQJKWBZQDg4JGREVGA4RTFYWTRgGDAgZFARZEQcfGQoAUQNCDlYLEl0UQg1VFw9dSQ"),
})

local tqf = wzz:Section({
Side = _d("IFweFQ"),
})

tqf:Header({
Name = _d("OFYPBEo"),
})

local oze
local nke

local jxg = {
remotes = {},
watcher = false,
hidMenu = false,

hardWatch = {},
}

pcall(function()
local gavw = getgenv().ACBXHardWatch

if type(gavw) == _d("GFgaDV0") then
for xvcd, yjet in pairs(gavw) do
pcall(function()
if yjet.Connected then
yjet:Disconnect()
end
end)
end
end

getgenv().ACBXHardWatch = jxg.hardWatch
end)

function jxg.hardPick(msn)
msn = msn == true

for kol, ywgd in ipairs({ _d("LlgMFVQCJRlQ"), _d("LlgMFVQCJRlQSg") }) do
local ia = brbo:FindFirstChild(ywgd)

if ia then
if ia:GetAttribute(_d("OFYPBEovAx5dKAhbDA")) ~= msn then
pcall(function()
ia:SetAttribute(_d("OFYPBEovAx5dKAhbDA"), msn)
end)
end

if ia:GetAttribute(_d("OFYPBEovAx5dKhRW")) ~= nil and ia:GetAttribute(_d("OFYPBEovAx5dKhRW")) ~= msn then
pcall(function()
ia:SetAttribute(_d("OFYPBEovAx5dKhRW"), msn)
end)
end
end
end
end

function jxg.pinMode()
if not (difb.enabled or difb.nightmare) then
return
end

local mjpc = difb.nightmare == true

for uetb, xgze in ipairs({ _d("LlgMFVQCJRlQ"), _d("LlgMFVQCJRlQSg") }) do
local kgae = brbo:FindFirstChild(xgze)

if kgae then
if kgae:GetAttribute(_d("OFYPBEovAx5dKAhbDA")) ~= mjpc then
pcall(function()
kgae:SetAttribute(_d("OFYPBEovAx5dKAhbDA"), mjpc)
end)
end

local ycmu = jxg.hardWatch[kgae]

if ycmu and ycmu.Connected == false then
jxg.hardWatch[kgae] = nil
ycmu = nil
end

if ycmu == nil then
local jnsb, sy = pcall(function()
return jhh(kgae:GetAttributeChangedSignal(_d("OFYPBEovAx5dKAhbDA")), function()
if not (difb.enabled or difb.nightmare) then
return
end

local lyzn = difb.nightmare == true

if kgae.Parent and kgae:GetAttribute(_d("OFYPBEovAx5dKAhbDA")) ~= lyzn then
pcall(function()
kgae:SetAttribute(_d("OFYPBEovAx5dKAhbDA"), lyzn)
end)
end
end)
end)

if jnsb then
jxg.hardWatch[kgae] = sy
end
end
end
end
end

function jxg.pauseRows()
local iss = ehbn:FindFirstChild(_d("PFUZGF0VJRlQ")) and ehbn.PlayerGui:FindFirstChild(_d("P1wMFVEJBR9+DQg"))

if not iss then
return nil, nil
end

return iss:FindFirstChild(_d("PFgNEl0uDApQFghMAisCSQ0V"), true), iss:FindFirstChild(_d("PFgNEl0uDApQFghMAiEEXBsK"), true)
end

function jxg.pauseState()
local phh = ehbn:FindFirstChild(_d("PFUZGF0VJRlQ")) and ehbn.PlayerGui:FindFirstChild(_d("P1wMFVEJBR9+DQg"))
local tity = phh and phh:FindFirstChild(_d("K1wMMl0TFgVXHxI"), true)

if not tity then
return nil
end

local scg, gro = pcall(function()
return tity:Invoke()
end)

if scg and type(gro) == _d("GFgaDV0") then
return gro.pauseInfiniteEnabled == true
end

return nil
end

function jxg.pauseAt(sfdg, sm)
sm = math.max(1, math.floor(tonumber(sm) or 1))

local aljw, ekm = jxg.pauseRows()

if not (aljw and ekm) then
return false
end

local pw = pcall(function()
if tonumber(aljw.Text) ~= sm then
aljw.Text = tostring(sm)

if getconnections then
for td, yx in ipairs(getconnections(aljw.FocusLost)) do
pcall(function()
yx:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end
end)

if sfdg ~= nil then
local ftq = jxg.pauseState()

if ftq ~= nil and ftq ~= sfdg and getconnections then
pcall(function()
for nezr, wpa in ipairs(getconnections(ekm.MouseButton1Click)) do
pcall(function()
wpa:Fire()
end)
end
end)
end
end

return pw
end

function jxg.restorePause()
hf.triggered = false

if hf.enabled and hf.floor > 0 then
jxg.pauseAt(true, hf.floor)

pcall(function()
zbuo.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = hf.floor,
})
end)

return
end

pcall(function()
zbuo.SaveClientData:FireServer({
pauseInfiniteEnabled = false,
pauseInfiniteAt = 1,
})
end)

jxg.pauseAt(false, 1)
end

function jxg.remote(dpo)
local jllm = jxg.remotes[dpo]

if jllm and jllm.Parent then
return jllm
end

local yqx = egii:FindFirstChild(_d("PlwVDkwCEQ"))
local atat = yqx and yqx:FindFirstChild(dpo)

if atat then
jxg.remotes[dpo] = atat
end

return atat
end

function jxg.historyOpen()
for fhnn, pfez in ipairs({ _d("LlgMFVQCJRlQ"), _d("LlgMFVQCJRlQSg") }) do
local zgz = brbo:FindFirstChild(pfez)
local wxgi = zgz and zgz:FindFirstChild(_d("OFYPBEovCx9NFxNBIRANVB0"))

if wxgi and wxgi.Visible then
return true
end
end

return false
end

function jxg.generationOpen()
local vvi = brbo:FindFirstChild(_d("OFYPBEo1Bx9MFBV/Egs"))
local ucgz = vvi and vvi:FindFirstChild(_d("PlwLFFQTJB5YFQQ"))

return ucgz ~= nil and ucgz.Visible
end

function jxg.standDown(fcy)
if not jxg.hidMenu then
local qus = true

pcall(function()
qus = kqs:GetState() ~= false
end)

if qus then
jxg.hidMenu = true

pcall(function()
kqs:SetState(false)
end)
end
end

if jxg.watcher then
return
end

jxg.watcher = true

task.spawn(function()

local evyw = os.clock() + 6

while ydyn() and os.clock() < evyw and not fcy() do
task.wait(0.2)
end

while ydyn() and fcy() do
task.wait(0.4)
end

jxg.watcher = false

if jxg.hidMenu then
jxg.hidMenu = false

pcall(function()
kqs:SetState(true)
end)
end
end)
end

difb.floorAt = 0
difb.battleAt = 0
difb.floor = nil
difb.manualPause = false

task.spawn(function()
local ngdu = nay(_d("LlgMFVQCNxxdGRVd"))
local qxam = nay(_d("P0AWAmwIFQlLPg1XCBA"))
local vsut = nay(_d("LlgMFVQCJwJd"))
local iory = nay(_d("OFYPBEo1FwJ8FgVdAw"))

if ngdu then
jhh(ngdu.OnClientEvent, function()
difb.battleAt = os.clock()
end)
end

if qxam then
jhh(qxam.OnClientEvent, function(qzy)
difb.floorAt = os.clock()

if type(qzy) == _d("AkwVA10V") and qzy > 1 then
difb.floor = qzy
else
difb.floor = nil
end
end)
end

if vsut then
jhh(vsut.OnClientEvent, function(uatk)
if type(uatk) == _d("GFgaDV0") and uatk.mode == _d("GFYPBEo") then
difb.floorAt = os.clock()
end
end)
end

if iory then
jhh(iory.OnClientEvent, function()

difb.lastRunEnded = {
clock = os.clock(),
floor = difb.floor,
}

task.delay(1, function()
local ntd = brbo:FindFirstChild(_d("OFYPBEo1Bx9MFBV/Egs"))
local nksz = ntd and ntd:FindFirstChild(_d("PlwLFFQTJB5YFQQ"))
local vyvk = {}

if nksz then
for zlaq, jeqz in ipairs(nksz:GetDescendants()) do
if jeqz:IsA(_d("OFwAFXQGAAlV")) and jeqz.Visible and jeqz.Text ~= _d("") and #vyvk < 12 then
vyvk[#vyvk + 1] = jeqz.Text
end
end
end

if difb.lastRunEnded then
difb.lastRunEnded.texts = table.concat(vyvk, _d("TEVY"))
end
end)

difb.floorAt = 0
difb.battleAt = 0
difb.floor = nil

if difb.manualPause then
jxg.restorePause()
end
end)
end

end)

local function wyt()
local pct = os.clock()

if pct - (difb.floorAt or 0) < 90 and pct - (difb.battleAt or 0) < 12 then
return true
end

for gzao, zvon in ipairs({ _d("LlgMFVQCJRlQ"), _d("LlgMFVQCJRlQSg") }) do
local taa = brbo:FindFirstChild(zvon)

if taa then

local pcjm = taa:FindFirstChild(_d("OFYPBEohDgNWCi1ZBQcA"))

if pcjm and pcjm.Visible then
return true
end

local cdg = taa:FindFirstChild(_d("KlUXDko0AR5cHQ8"))

if cdg and cdg.Visible then
return true
end

local ya = taa:FindFirstChild(_d("LlgMFVQCMQ9LHQRW"))

if ya and ya.Visible then
local hyz = ya:FindFirstChild(_d("PUwRAlMgCxpcLRF6EhYYVhY"))

if hyz and hyz.Visible then
return true
end
end
end
end

return false
end

function jxg.hardNow()

local sox = brbo:FindFirstChild(_d("LlgMFVQCJRlQ"))
local klk = sox and sox:GetAttribute(_d("OFYPBEovAx5dKAhbDA"))

if klk ~= nil then
return klk == true
end

local ppn = ha.misc.util.profile

return type(ppn) == _d("GFgaDV0") and ppn.lastTowerHard == true
end

function jxg.endIfWrongMode(bqtd)
if not wyt() or jxg.hardNow() == (bqtd == true) then
return false
end

pcall(function()
if type(nke) == _d("CkwWAkwODQI") then
nke()
else
zbuo.EndTowerRemote:FireServer(1)
end
end)

difb.floor = nil

return true
end

function jxg.hardPickNow()
for zwr, ygyl in ipairs({ _d("LlgMFVQCJRlQ"), _d("LlgMFVQCJRlQSg") }) do
local ggei = brbo:FindFirstChild(ygyl)
local pte = ggei and ggei:GetAttribute(_d("OFYPBEovAx5dKAhbDA"))

if pte ~= nil then
return pte == true
end
end

return nil
end

function jxg.parked()
for ohz, sfgd in ipairs({ _d("LlgMFVQCJRlQ"), _d("LlgMFVQCJRlQSg") }) do
local lt = brbo:FindFirstChild(sfgd)

if lt then
local mujr = lt:FindFirstChild(_d("OFYPBEohDgNWCi1ZBQcA"))
local onf = lt:FindFirstChild(_d("KlUXDko0AR5cHQ8"))
local gux = lt:FindFirstChild(_d("LlgMFVQCMQ9LHQRW"))

if mujr and mujr.Visible
and not (onf and onf.Visible)
and not (gux and gux.Visible) then
return true
end
end
end

return false
end

difb.ui = tqf:Toggle({
Name = _d("LUwMDhgzDRtcCg"),
Default = false,
Callback = function(cws)

if difb.quiet then
return
end

difb.enabled = cws
difb.pending = false
difb.pendingUntil = 0

if cws then

if pcyb.enabled and pcyb.role[1] ~= _d("GFYPBEo") then
difb.enabled = false

pcall(function()
difb.ui:UpdateState(false)
end)

pcall(function()
kqs:Dialog({
Title = _d("LUwMDhgzDRtcCkFXAQQ"),
Description = _d("P1UXFRhWQgVKWBJdE0IYVlg") .. pcyb.roleName(1) .. _d("QhksCV1HKwJfEQ9RExtMehkSTAsHTFYWDUFHERhYChVLRw0CGQsNVxNCXRVYEldHEQlNWDJUCBZMCFgVV0c2A04dExgBCx5KDE8"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})
end)

return
end

if pcyb.otherTowerOn(_d("GFYPBEo")) then
difb.enabled = false

pcall(function()
difb.ui:UpdateState(false)
end)

pcall(function()
kqs:Dialog({
Title = _d("LUwMDhgzDRtcCkFXAQQ"),
Description = _d("LVcXFVACEExNFxZdFUINTAwOVQYWBVYWQVEUQg1VCgRZAxtMVhZNGAYMCBkMCVEUQg1aGw5NCRZMVhYNQUcDAFUXFktHDQJcWBVXEAceGQoUVkcDGBkZQUwODwkXWDVNFQxMTRAATEcNAlxYDl4BQgpQChJMS0IDS1gVTRUMTFYWQXkSFgMZKw1XE0IfVlgEWQQKTEoUDkxHBQlNC0FRExFMVg8PGBMNG1wKTw"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})
end)

return
end

difb.nightmare = false

pcall(function()
difb.quiet = true
difb.nightmareToggle:UpdateState(false)
difb.quiet = false
end)

difb.manualPause = false
difb.paused = false
jxg.restorePause()
difb.pauseArmed = false

jxg.endIfWrongMode(false)
jxg.hardPick(false)

return
end

if not wyt() then
return
end

difb.paused = true
local jmr = oze()

kqs:Notify({
Title = _d("LUwMDhgzDRtcCkFXAQQ"),
Description = jmr and _d("OFYPBEpHEBlXWBFZEhEJXVY") or _d("PkwWQVEUQgBQDgQURwAZTVgPV0cAHlwZChgFFxhNFw8YAQ0ZVxxP"),
Lifetime = 5,
})
end,
}, _d("DUwMDmcTDRtcCg"))

difb.nightmareToggle = tqf:Toggle({
Name = _d("LUwMDhgpCwtRDAxZFQdMbRcWXRU"),
Default = false,
Callback = function(shx)
if difb.quiet then
return
end

difb.nightmare = shx

if not shx then

difb.enabled = false
difb.pending = false
difb.pendingUntil = 0

jxg.hardPick(false)

pcall(function()
difb.quiet = true
difb.ui:UpdateState(false)
difb.quiet = false
end)

if wyt() then
difb.paused = true
local xxtj = oze()

kqs:Notify({
Title = _d("LUwMDhgpCwtRDAxZFQdMbRcWXRVCA18e"),
Description = xxtj and _d("IlAfCUwKAx5cWBNNCUIcWA0SXQNM") or _d("PkwWQVEUQgBQDgQURwAZTVgPV0cAHlwZChgFFxhNFw8YAQ0ZVxxP"),
Lifetime = 5,
})
end

return
end

if pcyb.enabled and pcyb.role[1] ~= _d("GFYPBEo") then
difb.nightmare = false

pcall(function()
difb.quiet = true
difb.nightmareToggle:UpdateState(false)
difb.quiet = false
end)

pcall(function()
kqs:Dialog({
Title = _d("LUwMDhgpCwtRDAxZFQdMbRcWXRVCA18e"),
Description = _d("IlAfCUwKAx5cWDVXEAceGRsOTQkWHxkZEhgzDRtcCkFRCUIfVRcVGFZOTFgWBRgeDRlLWBJUCBZMCFgIS0cNAhk") .. pcyb.roleName(1) .. _d("TEsRBlATQgJWD08YNAcYGQsNVxNCXRkMDhgzDRtcCkFeDhAfTVY"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})
end)

return
end

pcall(function()
difb.quiet = true
difb.ui:UpdateState(false)
difb.quiet = false
end)

difb.enabled = true
difb.manualPause = false
difb.paused = false

jxg.restorePause()
difb.pauseArmed = false

jxg.endIfWrongMode(true)
jxg.hardPick(true)

difb.pending = false
difb.pendingUntil = 0
end,
}, _d("DUwMDmcJCwtRDAxZFQczTRcWXRU"))

tqf:Header({
Name = _d("LUwMDhg3AxlKHUFsCBUJSw"),
})

local ggi

ggi = tqf:Toggle({
Name = _d("LUwMDhg3AxlKHUF+Cw0DSw"),
Default = false,
Callback = function(avsn)
hf.triggered = false

if avsn and hf.floor <= 0 then
hf.enabled = false

pcall(function()
ggi:UpdateState(false)
end)

pcall(function()
zbuo.SaveClientData:FireServer({ pauseInfiniteEnabled = false })
end)

kqs:Dialog({
Title = _d("LUwMDhg3AxlKHUF+Cw0DSw"),
Description = _d("P1wMQVlHEg1MCwQYAQ4DVgpBWQUNGlxYURgBCx5KDEEVRyMZTRdBaAYXH1xYNVcQBx4ZFgRdAxFMTRdBUwkNGxkPCV0VB0xNF0FLEw0cFw"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})

return
end

hf.enabled = avsn

pcall(function()
zbuo.SaveClientData:FireServer({
pauseInfiniteEnabled = avsn,
pauseInfiniteAt = hf.floor,
})
end)
end,
}, _d("DUwMDmcXAxlKHT5eCw0DSw"))

tqf:Input({
Name = _d("PFgNEl1HAxgZHg1XCBA"),
Placeholder = _d("CRcfTxhSUg"),
AcceptedCharacters = _d("IkwVA10VEQ"),
Callback = function(hhcz)
local zgtr = tonumber(hhcz) or 0

if zgtr < 0 then
zgtr = 0
end

if zgtr == hf.floor then
return
end

hf.floor = zgtr
hf.triggered = false

if zgtr <= 0 and hf.enabled then
hf.enabled = false

pcall(function()
ggi:UpdateState(false)
end)
end

pcall(function()
zbuo.SaveClientData:FireServer({
pauseInfiniteAt = zgtr,
pauseInfiniteEnabled = hf.enabled,
})
end)
end,
}, _d("HFgNEl04AxhmHg1XCBA"))

tqf:Button({
Name = _d("PFgNEl1HNgNOHRM"),
Callback = function()
local utvk = false

pcall(function()
utvk = oze()
end)

if utvk then

difb.manualPause = true
return
end

kqs:Dialog({
Title = _d("PFgNEl1HNgNOHRM"),
Description = _d("IlZYDVERB0xNFxZdFUIeTBZBTAhCHFgNEl1HEAVeEBUYCQ0bFw"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})
end,
})

tqf:Header({
Name = _d("LUwMDhggCxpcWDRI"),
})

igpm.toggle = tqf:Toggle({
Name = _d("LUwMDhggCxpcWDRI"),
Default = false,
Callback = function(ubtk)
igpm.triggered = false

if ubtk and igpm.floor <= 0 then
igpm.enabled = false

pcall(function()
igpm.toggle:UpdateState(false)
end)

kqs:Dialog({
Title = _d("LUwMDhggCxpcWDRI"),
Description = _d("P1wMQVlHBQVPHUFNF0IKVRcOSkcDDlYOBBhXQgpQChJMR09MeA0VV0clBU8dQW0XQgJcHQVLRxYDGRMPVxBCG1EdE11HFgMZCxVXF0w"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})

return
end

igpm.enabled = ubtk
end,
}, _d("DUwMDmcACxpcJxRI"))

tqf:Input({
Name = _d("K1AOBBgSEkxWFkFeCw0DSw"),
Placeholder = _d("CRcfTxhQUg"),
AcceptedCharacters = _d("IkwVA10VEQ"),
Callback = function(lqh)
local bfyq = tonumber(lqh) or 0

if bfyq < 0 then
bfyq = 0
end

if bfyq == igpm.floor then
return
end

igpm.floor = bfyq
igpm.triggered = false

if bfyq <= 0 and igpm.enabled then
igpm.enabled = false

pcall(function()
igpm.toggle:UpdateState(false)
end)
end
end,
}, _d("C1AOBGcSEjNWFj5eCw0DSw"))

igpm.weatherToggle = tqf:Toggle({
Name = _d("LUwMDhgACxpcWBRIRw0CGQ8EWRMKCUs"),
Default = false,
Callback = function(zco)
igpm.weatherTriggered = false

if zco and next(igpm.weathers) == nil then
igpm.weatherEnabled = false

pcall(function()
igpm.weatherToggle:UpdateState(false)
end)

kqs:Dialog({
Title = _d("O1wZFVACEEx+ERddRzcc"),
Description = _d("OFAbChgGFkxVHQBLE0IDVx1BTwIDGFEdExgFBwBWD0FeDhAfTVhMGAgWBFwKFlEUB0xNEARKAkIFSlgPVxMKBVcfQUwIQgtQDgQYEhJMVhZP"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})

return
end

igpm.weatherEnabled = zco
end,
}, _d("DUwMDmcACxpcJxRIOA0CZg8EWRMKCUs"))

tqf:Dropdown({
Name = _d("K1AOBBgSEkxOHQBMDwceSg"),
Multi = true,
Required = false,
Options = { _d("OEAICVcIDA"), _d("LlURG0IGEAg"), _d("IFAfCUwJCwJe"), _d("O1AWBUsTDR5U"), _d("P1EZE1EJBQ1X"), _d("P1AWBk0LAx5QDBg"), _d("IVYWAEoECkx9FwxZDgw"), _d("OlYRBQ"), _d("IVgcBBgODExxHQBOAgw"), _d("IVgWBlk") },
Callback = function(sel)
igpm.weathers = {}

if type(sel) == _d("GFgaDV0") then
for dyfe, wphp in pairs(sel) do
if wphp then
igpm.weathers[dyfe] = true
end
end
end

igpm.weatherTriggered = false
end,
}, _d("C1AOBGcSEjNOHQBMDwceSg"))

tqf:Input({
Name = _d("IVAWCFUSD0xfFA5XFRE"),
Placeholder = _d("XBlFQVkJG0xfFA5XFQ"),
AcceptedCharacters = _d("IkwVBEoOAQ"),
Callback = function(xhrg)
local lqu = math.floor(tonumber(xhrg) or 0)

if lqu < 0 then
lqu = 0
end

igpm.weatherMinFloor = lqu
igpm.weatherTriggered = false
end,
}, _d("AVAWCFUSDzNfFA5XFRE"))

igpm.weatherLateToggle = tqf:Toggle({
Name = _d("K1AOBBgSEkxOERVQR1BcSlgNXQEW"),
Default = false,
Callback = function(nufc)
igpm.weatherLate = nufc
igpm.weatherTriggered = false

if nufc and not igpm.weatherEnabled then
pcall(function()
igpm.weatherToggle:UpdateState(true)
end)
end
end,
}, _d("C1AOBGcSEjNVGRVd"))

tqf:Button({
Name = _d("K1AOBBgyEkxtFxZdFQ"),
Callback = function()
if not wyt() then
kqs:Dialog({
Title = _d("K1AOBBgyEkxtFxZdFQ"),
Description = _d("IlZYDVERB0xNFxZdFUIeTBZBTAhCC1AOBBgSEkxLEQZQE0ICVg9P"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})

return
end

kqs:Dialog({
Title = _d("K1AOBBgyEkxtFxZdFQ"),
Description = _d("KlYKB10OFkxNEAQYBBceSx0PTEcWA04dExgVFwIGWDVQDhFMWhkPVggWTFsdQU0JBgNXHU8"),
Buttons = {
{
Name = _d("K1ZYA1kECQ"),
},
{
Name = _d("K1AOBBgSEg"),
Callback = function()
local famt = false

pcall(function()
famt = nke()
end)

if famt then
return
end

task.defer(function()
task.wait(0.3)

kqs:Dialog({
Title = _d("K1AOBBgyEkxtFxZdFQ"),
Description = _d("IlZYBlERB0xMCEFaEhYYVhZBWQkRG1wKBFxHT0xNEAQYFRcCGRUAQUcDAEsdAFweQg5cWA5OAhBC"),
Buttons = {
{
Name = _d("K1YMQVET"),
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

tqf:Button({
Name = _d("L1EdAlNHDgNKC0FQDhEYVgoY"),
Callback = function()
local xnbb = jxg.remote(_d("PlwJFF0UFjhWDwRKLwsfTRcTQQ"))

if not xnbb then
kqs:Dialog({
Title = _d("IFYLEhgvCx9NFxNB"),
Description = _d("OFEREhgFFwVVHEFQBhFMVxdBTAgVCUtYCVEUFgNLAUFKAg8DTR1P"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})

return
end

jxg.standDown(jxg.historyOpen)

pcall(function()
xnbb:FireServer()
end)
end,
})

tqf:Button({
Name = _d("L1EdAlNHBQlXHRNZEwsDVws"),
Callback = function()

local fno = brbo:FindFirstChild(_d("OFYPBEo1Bx9MFBV/Egs"))
local vsfu = fno and fno:FindFirstChild(_d("I0kdD38CDCRQCxVXFRs"))

if not vsfu then
kqs:Dialog({
Title = _d("K1wWBEoGFgVWFhI"),
Description = _d("OFEREhgFFwVVHEFQBhFMVxdBXwIMCUsZFVEIDB8ZDwhWAw0bFw"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})

return
end

jxg.standDown(jxg.generationOpen)

pcall(function()
vsfu:Fire()
end)
end,
})

jag.bossTeams.towerSection = wzz:Section({
Side = _d("IFweFQ"),
})

jag.bossTeams.towerSection:Header({
Name = _d("OFYPBEpHNglYFRI"),
})

jag.bossTeams.towerSection:Paragraph({
Header = _d("JFYPQUwIFQlLWBVdBg8fGQ8OSgw"),
Body = _d("I18eWxgCAw9RWBNNCUIZSh0SGBAKDU0dF10VQhhcGQwYDhYfGQsNVxNCDVUKBFkDG0xRFw1cFExmMzcPAkcHDVoQQUwIFQlLWANdCw0bGQoUVhRCG1AMCRgTCgkZDARZCkIcUBsKXQNCClYKQVETTA"),
})

jag.bossTeams.towerToggle = jag.bossTeams.towerSection:Toggle({
Name = _d("OFYPBEpHNglYFRI"),
Default = false,
Callback = function(pehk)
jag.bossTeams.towersOn = pehk
end,
}, _d("GFYPBEo4FglYFRI"))

for gjju, bqbk in ipairs({
{ kind = _d("GFYPBEo"), name = _d("JVceCFYOFhUZOwBLEw4JGVdBdg4FBE0VAEoC") },
{ kind = _d("BFgKBVsIEAk"), name = _d("JUoUAFYDQiRYCgVbCBAJ") },
}) do
local rtmu = math.clamp(math.floor(tonumber(jag.bossTeams.towerPicked[bqbk.kind]) or 1), 1, 4)

jag.bossTeams.towerPicked[bqbk.kind] = rtmu

jag.bossTeams.towerUi[bqbk.kind] = jag.bossTeams.towerSection:Dropdown({
Name = bqbk.name,
Search = false,
Multi = false,
Required = false,
Default = rtmu,
Options = { _d("OFwZDBhW"), _d("OFwZDBhV"), _d("OFwZDBhU"), _d("OFwZDBhT") },
Callback = function(gjm)
local trg = type(gjm) == _d("GFgaDV0") and gjm[1] or gjm
local dzbh = type(trg) == _d("H00KCFYA") and tonumber(trg:match(_d("RBwcShE"))) or nil

if dzbh then
jag.bossTeams.towerPicked[bqbk.kind] = dzbh
jag.bossTeams.save()
end

pcall(function()
jag.bossTeams.towerUi[bqbk.kind]:UpdateName(bqbk.name .. _d("TNv4wxg") .. (trg or _d("OFwZDBhW")))
end)
end,
}, _d("GFwZDGcTDRtcCj4") .. bqbk.kind)

pcall(function()
jag.bossTeams.towerUi[bqbk.kind]:UpdateSelection(_d("OFwZDBg") .. tostring(rtmu))
jag.bossTeams.towerUi[bqbk.kind]:UpdateName(bqbk.name .. _d("TNv4wxgzBw1UWA") .. tostring(rtmu))
end)
end

jag.bossTeams.towerSection:Header({
Name = _d("P04ZERgIDExfFA5XFQ"),
})

jag.bossTeams.towerSection:Paragraph({
Header = _d("P04ZERgTBw1UWA5WRwNMXxQOVxU"),
Body = _d("OFEdQV8GDwkeC0FXEAxMSg8ASEtCAlYMQVlHEg1MCwQWRycNWhBBShIOCRkREhgGQgpVFw5KRwMCXVgVUAJCGFwZDBgQDR5XWAdKCA9MTRAATEcEAFYXExgIDEAZDxNRExYJV1gIVhMNTE0QBBgAAwFcXxIYNAcYTREPXxRCQQdYIE0TDUxtHQBVRzEbWAhBCUcDAl1YUxRHEQMZDAldRwUNVB1BVQYJCUpYFVACQh9OERVbD0IFTQsEVAFCG1EdDxgGQh5MFkFLEwMeTQtBTA8DGBkeDVcIEEIZNg5MDwsCXlgIS0cRGFYIEV0DQg1XHEFMDwdMSw0PGAwHCUkLQVETEUxKFA5MSWhmeFgCWRQWAFxYE00JQgtcDBIYEwoJGQsAVQJCH04RFVsPQgpLFwwYEwoFSlgRWQkHABVYA10EAxlKHUFMDwdMXhkMXUARTFYPDxgUFQ1JWA5WCxtMXxETXRRCBVcLCFwCQiVXHghWDhYJGSoOVwoRQjNyLV0GFAkZGUFeCw0DS1gATEdSTE0XQUwSEAIZDAlZE0IeTBQEGAgEChc"),
})

function jag.bossTeams.swapStatusText()
local mtgi = jag.bossTeams.swap
local etrw = {}

if mtgi.on then
table.insert(etrw, _d("I1dYTBgQEAVNDARWRxYDGQwJXUcFDVQdRktHIxlNF0FsAgMBGSsWWRdCHlYPEhY"))
else
table.insert(etrw, _d("I18eQRVHFgRcWAZZCgdLSlgSTwYSTFALQVQCBBgZGQ1XCQdC"))
end

local ozb = {
{ index = 1, floor = mtgi.floor, team = mtgi.team },
{ index = 2, floor = mtgi.floor2, team = mtgi.team2 },
}

for dw, npup in ipairs(ozb) do
if npup.floor > 0 then
table.insert(etrw, string.format(_d("P04ZERhCBlYZLARZCkJJXVgHSggPTF8UDlcVQkld"), npup.index, npup.team, npup.floor))
else
table.insert(etrw, string.format(_d("P04ZERhCBlYZFwdeR0oCVlgHVAgNHhkLBExO"), npup.index))
end
end

if jag.bossTeams.swapMessage ~= _d("") then
table.insert(etrw, jag.bossTeams.swapMessage)
end

return table.concat(etrw, _d("Zg"))
end

function jag.bossTeams.paintSwap()
pcall(function()
jag.bossTeams.swapStatus:UpdateBody(jag.bossTeams.swapStatusText())
end)
end

jag.bossTeams.swapToggle = jag.bossTeams.towerSection:Toggle({
Name = _d("P04ZERgTBw1UWA5WRwQAVhcT"),
Default = jag.bossTeams.swap.on,
Callback = function(egrv)
jag.bossTeams.swap.on = egrv

jag.bossTeams.swapReset()

jag.bossTeams.swapApply()
jag.bossTeams.save()
end,
}, _d("H04ZEWcTBw1UJw5WOAQAVhcT"))

jag.bossTeams.swapInput = jag.bossTeams.towerSection:Input({
Name = _d("KlUXDko"),
Placeholder = _d("CRcfTxhSUlwZUFEYWkIDXx5I"),
AcceptedCharacters = _d("IkwVBEoOAQ"),
Callback = function(hqq)
local bhs = tonumber(type(hqq) == _d("H00KCFYA") and hqq:match(_d("RBwcShE")) or hqq)

if bhs then
jag.bossTeams.swap.floor = bhs
jag.bossTeams.swapReset()
jag.bossTeams.swapApply()
jag.bossTeams.save()
end
end,
}, _d("ClUXDko"))

jag.bossTeams.swapDropdown = jag.bossTeams.towerSection:Dropdown({
Name = _d("P04ZERgTDQ"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(jag.bossTeams.swap.team) or 1), 1, 4),
Options = { _d("OFwZDBhW"), _d("OFwZDBhV"), _d("OFwZDBhU"), _d("OFwZDBhT") },
Callback = function(yvj)
local ydbc = type(yvj) == _d("GFgaDV0") and yvj[1] or yvj
local mhrx = type(ydbc) == _d("H00KCFYA") and tonumber(ydbc:match(_d("RBwcShE"))) or nil

if mhrx then
jag.bossTeams.swap.team = mhrx
jag.bossTeams.swapReset()
jag.bossTeams.swapApply()
jag.bossTeams.save()
end

pcall(function()
jag.bossTeams.swapDropdown:UpdateName(_d("P04ZERgTDUzb+MMY") .. (ydbc or _d("OFwZDBhW")))
end)

jag.bossTeams.paintSwap()
end,
}, _d("H04ZEWcTDQ"))

jag.bossTeams.swapInput2 = jag.bossTeams.towerSection:Input({
Name = _d("KlUXDkpHUA"),
Placeholder = _d("CRcfTxhWUlwJWEkIR19MVh4HEQ"),
AcceptedCharacters = _d("IkwVBEoOAQ"),
Callback = function(ufac)
local qilz = tonumber(type(ufac) == _d("H00KCFYA") and ufac:match(_d("RBwcShE")) or ufac)

if qilz then
jag.bossTeams.swap.floor2 = qilz
jag.bossTeams.swapReset()
jag.bossTeams.swapApply()
jag.bossTeams.save()
end
end,
}, _d("ClUXDko4UA"))

jag.bossTeams.swapDropdown2 = jag.bossTeams.towerSection:Dropdown({
Name = _d("P04ZERgTDUwL"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(jag.bossTeams.swap.team2) or 1), 1, 4),
Options = { _d("OFwZDBhW"), _d("OFwZDBhV"), _d("OFwZDBhU"), _d("OFwZDBhT") },
Callback = function(uux)
local iosp = type(uux) == _d("GFgaDV0") and uux[1] or uux
local qxfc = type(iosp) == _d("H00KCFYA") and tonumber(iosp:match(_d("RBwcShE"))) or nil

if qxfc then
jag.bossTeams.swap.team2 = qxfc
jag.bossTeams.swapReset()
jag.bossTeams.swapApply()
jag.bossTeams.save()
end

pcall(function()
jag.bossTeams.swapDropdown2:UpdateName(_d("P04ZERgTDUwLWIO4xUI") .. (iosp or _d("OFwZDBhW")))
end)

jag.bossTeams.paintSwap()
end,
}, _d("H04ZEWcTDTML"))

jag.bossTeams.swapStatus = jag.bossTeams.towerSection:Paragraph({
Header = _d("P04ZERgUFg1NDRI"),
Body = jag.bossTeams.swapStatusText(),
})

pcall(function()
local cha = math.clamp(math.floor(tonumber(jag.bossTeams.swap.team) or 1), 1, 4)
local yoqa = math.clamp(math.floor(tonumber(jag.bossTeams.swap.team2) or 1), 1, 4)

jag.bossTeams.swapDropdown:UpdateSelection(_d("OFwZDBg") .. tostring(cha))
jag.bossTeams.swapDropdown:UpdateName(_d("P04ZERgTDUzb+MMYMwcNVFg") .. tostring(cha))
jag.bossTeams.swapDropdown2:UpdateSelection(_d("OFwZDBg") .. tostring(yoqa))
jag.bossTeams.swapDropdown2:UpdateName(_d("P04ZERgTDUwLWIO4xUI4XBkMGA") .. tostring(yoqa))
end)

task.spawn(function()
local nnx = jag.bossTeams.swapStatusText()

while ydyn() do
local agt = jag.bossTeams.swapStatusText()

if agt ~= nnx then
nnx = agt
jag.bossTeams.paintSwap()
end

task.wait(2)
end
end)

if jag.bossTeams.swap.on then
task.delay(2, function()
pcall(jag.bossTeams.swapApply)
end)
end

jag.bossTeams.section = wzz:Section({
Side = _d("PlAfCUw"),
})

jag.bossTeams.section:Header({
Name = _d("LlYLEhgzBw1UCw"),
})

jag.bossTeams.section:Paragraph({
Header = _d("JFYPQVoIER8ZDARZChFMThcTUw"),
Body = _d("I18eWxgJDRhREQ9fRwsfGQsWURMBBFwcQRVHBxpcChgYAQsLUQxBTRQHHxkMCV1HFglYFUFBCBdMWBQTXQYGFRkQAE4CQgBQFgRcRxccFVgWUA4BBBkREhgTCgkZKw1XE0JdGQwEWQpCGVcUBEsUQh9VFxUYVUIYWBMES0cWBFxYA1kTFgBcVmsyKAxWGR0AWw9CDUsdABgFBwBWD0FeDgUETQtBTw4WBBkMCV1HFglYFUFBCBdMSRECU0cEA0tYCExJ"),
})

jag.bossTeams.toggle = jag.bossTeams.section:Toggle({
Name = _d("LlYLEhgzBw1UCw"),
Default = false,
Callback = function(ake)
jag.bossTeams.enabled = ake
end,
}, _d("DlYLEmcTBw1UCw"))

for zcvg, ute in ipairs(powi) do
local rx = jag.bossTeams.picked[ute.id] or 1

rx = math.clamp(math.floor(tonumber(rx) or 1), 1, 4)
jag.bossTeams.picked[ute.id] = rx

jag.bossTeams.ui[ute.id] = jag.bossTeams.section:Dropdown({
Name = ute.name,
Search = false,
Multi = false,
Required = false,

Default = rx,
Options = { _d("OFwZDBhW"), _d("OFwZDBhV"), _d("OFwZDBhU"), _d("OFwZDBhT") },
Callback = function(ipaa)
local ens = type(ipaa) == _d("GFgaDV0") and ipaa[1] or ipaa
local fj = type(ens) == _d("H00KCFYA") and tonumber(ens:match(_d("RBwcShE"))) or nil

if fj then
jag.bossTeams.picked[ute.id] = fj

jag.bossTeams.save()
end

pcall(function()
jag.bossTeams.ui[ute.id]:UpdateName(ute.name .. _d("TNv4wxg") .. (ens or _d("OFwZDBhW")))
end)
end,
}, _d("GFwZDGcQDR5VHD4") .. ute.id)

pcall(function()
jag.bossTeams.ui[ute.id]:UpdateSelection(_d("OFwZDBg") .. tostring(rx))
jag.bossTeams.ui[ute.id]:UpdateName(ute.name .. _d("TNv4wxgzBw1UWA") .. tostring(rx))
end)
end

jag.bossTeams.raidSection = wzz:Section({
Side = _d("PlAfCUw"),
})

jag.bossTeams.raidSection:Header({
Name = _d("PlgRBRgzBw1UCw"),
})

jag.bossTeams.raidSection:Paragraph({
Header = _d("JFYPQUoGCwgZDARZChFMThcTUw"),
Body = _d("I18eWxgVAwVdC0FNFAdMThAATAIUCUtYFV0GD0xNEAQYFA4DTVgAVBUHDV0BQVAIDghKVmsyKAxWGR0AWw9CHlgRBRgFBwBWD0FRFEIKVg0GUBNCG1AMCRgTCgkZDARZCkIcUBsKXQNCClYKQVETTA"),
})

jag.bossTeams.raidToggle = jag.bossTeams.raidSection:Toggle({
Name = _d("PlgRBRgzBw1UCw"),
Default = false,
Callback = function(vmy)
jag.bossTeams.raidsOn = vmy
end,
}, _d("HlgRBWcTBw1UCw"))

for blnv, qju in ipairs(hm.Raids) do
if qju.BossTitle and qju.id then
local uzh = jag.bossTeams.raidPicked[qju.id] or 1

uzh = math.clamp(math.floor(tonumber(uzh) or 1), 1, 4)
jag.bossTeams.raidPicked[qju.id] = uzh

jag.bossTeams.raidUi[qju.id] = jag.bossTeams.raidSection:Dropdown({
Name = qju.BossTitle,
Search = false,
Multi = false,
Required = false,
Default = uzh,
Options = { _d("OFwZDBhW"), _d("OFwZDBhV"), _d("OFwZDBhU"), _d("OFwZDBhT") },
Callback = function(opfw)
local dqfm = type(opfw) == _d("GFgaDV0") and opfw[1] or opfw
local cbyn = type(dqfm) == _d("H00KCFYA") and tonumber(dqfm:match(_d("RBwcShE"))) or nil

if cbyn then
jag.bossTeams.raidPicked[qju.id] = cbyn
jag.bossTeams.save()
end

pcall(function()
jag.bossTeams.raidUi[qju.id]:UpdateName(qju.BossTitle .. _d("TNv4wxg") .. (dqfm or _d("OFwZDBhW")))
end)
end,
}, _d("GFwZDGcVAwVdJw") .. qju.id)

pcall(function()
jag.bossTeams.raidUi[qju.id]:UpdateSelection(_d("OFwZDBg") .. tostring(uzh))
jag.bossTeams.raidUi[qju.id]:UpdateName(qju.BossTitle .. _d("TNv4wxgzBw1UWA") .. tostring(uzh))
end)
end
end

task.spawn(function()
local zegv = pkzp()

while ydyn() do
local ic = pkzp()

if pcyb.enabled and pcyb.statusText then
ic = pcyb.statusText()
end

ic = ic .. _d("ZjMrBEoRBx4ZDREY") .. oyqr()

if ic ~= zegv then
zegv = ic
pcall(function()
vzh:UpdateBody(ic)
end)
end
task.wait(0.5)
end
end)

task.spawn(function()
while ydyn() do
for oqqp, pve in ipairs({ _d("LlgMFVQCJRlQ"), _d("LlgMFVQCJRlQSg") }) do
local pogq = brbo:FindFirstChild(pve)
local noi = pogq and pogq:FindFirstChild(_d("LlgMFVQCMQ9LHQRW"))
local ici = pogq and pogq:FindFirstChild(_d("JFAcBHoGFhhVHSNNExYDVw"))

if noi and noi.Visible and ici and not ici.Visible then
ici.Visible = true
end
end

task.wait(0.5)
end
end)

task.spawn(function()
local ekmu = false

while ydyn() do
if jdfj then
local gqmf = brbo:FindFirstChild(_d("OFYPBEo1Bx9MFBV/Egs"))
local bel = gqmf and gqmf:FindFirstChild(_d("PlwLFFQTJB5YFQQ"))
local urdy = gqmf and gqmf:FindFirstChild(_d("K1wWBEoGFgVXHydKBg8J"))

if urdy and urdy.Visible then
urdy.Visible = false
end

local ckjo = bel and bel.Visible or false

if ckjo and not ekmu then
local xvuy = bel:FindFirstChild(_d("L1UXEl0lFxhNFw8"))
local lo = false

if xvuy then
for qgb, pipn in ipairs({ _d("IVYNEl0lFxhNFw8JJA4FWhM"), _d("LVoMCE4GFgld") }) do
local chbg = xvuy[pipn]
if chbg then
for cnaq, lou in ipairs(getconnections(chbg)) do
pcall(function()
lou:Fire()
end)
lo = true
end
end
end
end

if not lo then
bel.Visible = false
else
task.spawn(function()
task.wait(0.3)
if bel.Parent and bel.Visible then
bel.Visible = false
end
end)
end
end

ekmu = ckjo
else
ekmu = false
end

task.wait(0.2)
end
end)

local vdh = {}

function vdh.active()
return jag.enabled or jag.story
end

function vdh.towerHolds()
if pcyb.enabled then
return false
end

if gnco.run.enabled then
return true
end

return difb.enabled and not difb.paused
end

function vdh.ready(wlhd, kysl, wtqx)
local qsas = jag.unlocked[wlhd]

return (not qsas or qsas[kysl] ~= false) and wko(wlhd, kysl) <= wtqx
end

function vdh.hasReadyTarget()
local tb = os.time()

for fmhf, ukps in ipairs(kkog()) do
for psib, bqzc in ipairs(wdh()) do
if vdh.ready(ukps, bqzc, tb) then
return true
end
end
end

return false
end

function vdh.backOff(cre, deq)
zo(cre, deq, os.time() + 5)
end

function vdh.findTarget()
for fefw, tza in ipairs(kkog()) do
local cay = vtxh(tza)
local ws = os.time() - (jag.lastFetch[tza] or 0) > 60

if ws and cay and not jag.walkToNpc then
clc(cay)
task.wait(0.3)
cbbn(tza)
end

for zqk, tiyr in ipairs(wdh()) do
if vdh.ready(tza, tiyr, os.time()) then
return tza, tiyr
end
end
end

return nil
end

function jag.bossTeams.slotForFight()
if pcyb.hasSlot2 == false then
return 1
end

if pcyb.busy(2) then
return 1
end

return 2
end

function jag.bossTeams.slotTeam(zwbc)
local ovf = brbo:FindFirstChild(_d("P1wMFVEJBR9+DQg"))
local vsa = ovf and ovf:FindFirstChild(_d("P1UXFWwCAwE") .. zwbc .. _d("LkwMFVcJ"), true)
local xayy = vsa and vsa.Text

return xayy and tonumber(xayy:match(_d("RBwcShE"))) or nil
end

function jag.bossTeams.applyTeam(ipag, peqn)
ipag = tonumber(ipag)

if not ipag then
return false
end

peqn = tonumber(peqn) or jag.bossTeams.slotForFight()

if pcyb.busy(peqn) then
return false
end

jag.bossTeams.lastSlot = peqn

local auly = jag.bossTeams.slotTeam(peqn) or jag.bossTeams.applied[peqn]

if auly == ipag then
return true
end

local utpu = jxg.remote(_d("P04RFVsPNglYFQ"))

if not utpu then
return false
end

local ehk = pcall(function()
utpu:FireServer(ipag, false, peqn)
end)

jag.bossTeams.applied[peqn] = ipag
task.wait(0.2)

return ehk
end

function jag.bossTeams.apply(lial)
if not jag.bossTeams.enabled then
return
end

local kml = jag.bossTeams.worldOf[lial]
local pfpc = kml and jag.bossTeams.picked[kml]

if not pfpc then
return
end

jag.bossTeams.applyTeam(pfpc)
end

function jag.bossTeams.applyTower(kcvo, ags)
if not jag.bossTeams.towersOn then
return false
end

local em = jag.bossTeams.towerPicked[kcvo]

local wjz = jag.bossTeams.swapFired[kcvo]

if jag.bossTeams.swap.on and type(wjz) == _d("GFgaDV0") then
em = wjz[2] or wjz[1] or em
end

if not em then
return false
end

return jag.bossTeams.applyTeam(em, ags)
end

function jag.bossTeams.applyRaid(vbfw)
if not jag.bossTeams.raidsOn then
return
end

local zqg = vbfw and jag.bossTeams.raidPicked[vbfw]

if not zqg then
return
end

jag.bossTeams.applyTeam(zqg)
end

function vdh.fight(ozqb, mue)
local cnay = vtxh(ozqb)

if not cnay then
vdh.backOff(ozqb, mue)
return false
end

local tyef

if jag.walkToNpc then
local vrqk = sni[ozqb]

if vrqk then
zbuo.TeleportToWorld:FireServer(vrqk)
task.wait(2.5)

local mto = vtxh(ozqb) or cnay
local msw = mto:GetPivot()

tyef = kr(msw.Position + msw.LookVector * 6, function()
return not vdh.active() or not jag.walkToNpc
end)

if tyef then
cbbn(ozqb)
tyef = vdh.ready(ozqb, mue, os.time())
end
end
else
tyef = clc(cnay)
end

if not tyef then
vdh.backOff(ozqb, mue)
return false
end

task.wait(0.4)
jag.bossTeams.apply(ozqb)
jag.activeDifficulty[ozqb] = mue
zbuo.SetNPCDifficulty:FireServer(ozqb, mue)
task.wait(0.4)

jag.currentBattle = {
npcId = ozqb,
difficulty = mue,
}
ahk = ozqb
ve = mue
zbuo.StartNPCBattle:FireServer(ozqb)
zo(ozqb, mue, os.time() + 10)
jag.battlePending = true
jag.battlePendingUntil = os.time() + 30
task.wait(1)

return true
end

jag.workPending = function()

if ha.misc and ha.misc.cards and ha.misc.cards.inFlight then
return true
end

if not vdh.active() then
return false
end

if jag.battlePending then
return true
end

local lar = pcyb.npcSlot()

if lar and pcyb.busy(lar) then
return true
end

return vdh.hasReadyTarget()
end

task.spawn(function()
while ydyn() do

local pki = (pcyb.enabled and (ha.enabled or ena.enabled or ha.worldBoss.enabled))
or vdh.towerHolds()
or not pcyb.slotFree(pcyb.npcSlot())

or (ha.misc and ha.misc.cards and ha.misc.cards.inFlight)
or (jag.battlePending and os.time() < jag.battlePendingUntil)

if vdh.active() and not pki and not pcyb.prioBlocks(_d("Akkb")) then
local uhpk, sscl = vdh.findTarget()

if uhpk then
vdh.fight(uhpk, sscl)
end
end

task.wait(0.5)
end
end)

task.spawn(function()
while ydyn() do

local nnl = {}

if ha.enabled then
local fuq = pcyb.roleSlot(_d("Akkb"))

if fuq then
table.insert(nnl, fuq)
end

if pcyb.splitNpc() and fuq ~= 2 then
table.insert(nnl, 2)
end
end

local oqqm = egii:FindFirstChild(_d("PlgRBWsTAxhMCw"))

if #nnl > 0 and oqqm and (not ena.enabled or pcyb.splitNpc()) and (pcyb.enabled or not jag.workPending()) then
for ij, km in ipairs(nnl) do
local zrun = oqqm

local lrsa = ha.bossFor(km, (km ~= 1 and not pcyb.splitNpc()) and 1 or nil)
local dxl = zrun:GetAttribute(_d("JUo3EV0J")) == true or zrun:GetAttribute(_d("KlYKAl0D")) == true
local hdh = lrsa ~= nil and zrun:GetAttribute(_d("PlwZBUE4") .. lrsa) == true
local ebpg = lrsa and ldz(lrsa)

if lrsa and ha.pending[lrsa] and os.time() >= (ha.pendingUntil[lrsa] or 0) then
ha.pending[lrsa] = false
ha.cleared[lrsa] = nil
end

if lrsa and pcyb.slotFree(km) and dxl and hdh and ha.cleared[lrsa] ~= ebpg and not ha.pending[lrsa] then
local dl = ydsr[lrsa]
local cpl = dl and vtxh(dl)
local uc = false

if cpl then
if ha.walkToBoss then
local wedo = us[lrsa]
local zzc = ehbn.Character and ehbn.Character:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))
local qmpc = cpl:GetPivot().Position
local rew = zzc and (zzc.Position - qmpc).Magnitude <= 15

if rew then
uc = true
elseif wedo then
zbuo.TeleportToWorld:FireServer(wedo)

local tff = os.clock()
while os.clock() - tff < 2.5 and ha.enabled do
task.wait(0.1)
end

if ha.enabled then
local hgwc = vtxh(dl) or cpl
local uoe = hgwc:GetPivot()
local gtqd = uoe.Position + uoe.LookVector * 6
uc = hplw(gtqd, ha.walkSpeed, function()
return not ha.enabled or not ha.walkToBoss
end)
end
end

if not uc then
uc = clc(cpl)
end
else
uc = clc(cpl)
end

if uc then
task.wait(0.5)
end
end

if uc and not pcyb.prioBlocks(_d("HlgRBUs")) then
ha.inFlight[lrsa] = km
ha.pending[lrsa] = true
ha.pendingUntil[lrsa] = os.time() + 15
ha.cleared[lrsa] = ebpg

local bf = ha.difficulties[1] or _d("AlYKDFkL")
local btd = ha.progress[lrsa]

if btd then
local lri = btd.unlocked
local dsh = btd.cooldowns

for exty, eouu in ipairs(ha.difficulties) do
local xtc = not lri or lri[eouu] ~= false
local pdsi = dsh and tonumber(dsh[eouu]) or 0

if xtc and pdsi <= 0 then
bf = eouu
break
end
end
end

jag.bossTeams.applyRaid(lrsa)
zbuo.SetRaidDifficulty:FireServer(bf, lrsa)
task.wait(0.3)
zbuo.StartRaidBattle:FireServer(lrsa)
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while ydyn() do
local hrx = ena.inBattle and os.time() < ena.inBattleUntil

if ena.enabled and (pcyb.enabled or not jag.workPending()) and not hrx and pcyb.slotFree(pcyb.roomSlot()) and not (ena.pending and os.time() < ena.pendingUntil) then
local udd = ena.progress

if udd == nil then
zbuo.RequestInfiniteRoomProgress:FireServer()
task.wait(0.5)
else
local ced = nil

for fcdo, cqs in ipairs(ag.Milestones) do
if ag.isMilestoneUnlocked(cqs, udd) and not ag.isMilestoneCleared(cqs, udd) then
ced = cqs
break
end
end

if ced then

local tfc = pcyb.roomSlot()

ena.currentRoom = ced
ena.inBattle = true
ena.inBattleUntil = os.time() + 60
ena.pending = true
ena.pendingUntil = os.time() + 10

local sgox = brbo:FindFirstChild(tfc == 2 and _d("PlwLBEwlAxhNFAR+Cw0DS0o") or _d("PlwLBEwlAxhNFAR+Cw0DSw"))
if sgox and sgox:IsA(_d("LlAWBVkFDgl8DgRWEw")) then
sgox:Fire(ced, _d("BVceCFYOFglmCg5XCg"))
end

local ruzn = brbo:FindFirstChild(tfc == 2 and _d("P00ZE0wuDApQFghMAjADVhUjWRMWAFxK") or _d("P00ZE0wuDApQFghMAjADVhUjWRMWAFw"))
if ruzn and ruzn:IsA(_d("LlAWBVkFDgl8DgRWEw")) then
ruzn:Fire(ced)
end

zbuo.StartBattle:FireServer(_d("BVceCFYOFglmCg5XCg"), {
milestone = ced,
slot = tfc,
})
task.wait(2)
end
end
end

task.wait(1)
end
end)

local function ro(bvg, mjbv)
local dhmj = brbo:FindFirstChild(_d("P1oKBF0JJRlQ"))

if not dhmj then
return
end

local vcvw = dhmj:FindFirstChild(bvg)
local zid = vcvw and vcvw:FindFirstChild(_d("OlgUFF0rAw5cFA"), true)
local hyyk = vcvw and vcvw:FindFirstChild(_d("IFgaBFQ"), true)

if not vcvw then
return
end

local nhj = false

if zid then
nhj = zid.Text == _d("I1c")
elseif hyyk then
nhj = not string.lower(hyyk.Text):find(_d("A18e"), 1, true)
end

if nhj ~= mjbv then
for ao, dyc in ipairs(getconnections(vcvw.MouseButton1Click)) do
local rgek = dyc.Function

if type(rgek) == _d("CkwWAkwODQI") then
pcall(rgek)
else
pcall(function()
dyc:Fire()
end)
end
end
end
end

getgenv().ACBXSetRollButton = ro

local function mocu(zkk)
ro(_d("PUwRAlM1DQBVOhRMEw0C"), zkk)
ro(_d("LUwMDmoIDgB7DRVMCAw"), zkk)
end

getgenv().ACBXSetRollUi = mocu
dum.setRollButton = ro

pcall(function()
zbuo.SaveClientData:FireServer({ autoHideBattle = false })
end)

task.defer(function()
task.wait(0.5)

local wkv = brbo:FindFirstChild(_d("LlgMFVQCJRlQ"))
local zqi = wkv and wkv:FindFirstChild(_d("LlgMFVQCMQ9LHQRW"))
local fqsq = wkv and wkv:FindFirstChild(_d("JFAcBHoGFhhVHSNNExYDVw"))

if fqsq and fqsq.Visible and zqi and not zqi.Visible and kod() then
for ttl, pkdb in ipairs(getconnections(fqsq.MouseButton1Click)) do
local gsn = pkdb.Function

if type(gsn) == _d("CkwWAkwODQI") then
pcall(gsn)
else
pcall(function()
pkdb:Fire()
end)
end
end
end
end)

mocu(true)

task.spawn(function()
while ydyn() do

if dum.autoRoll then
ro(_d("LUwMDmoIDgB7DRVMCAw"), true)
end

if dum.autoQuickRoll then
ro(_d("PUwRAlM1DQBVOhRMEw0C"), true)
end

task.wait(1)
end
end)

local function uba()

if difb.floor then
return difb.floor
end

local pg = brbo:FindFirstChild(_d("LlgMFVQCJRlQ"))

if not pg then
return nil
end

for ufgq, olaz in ipairs({ _d("OFYPBEohDgNWCi1ZBQcA"), _d("PkwWJ1QIDR51GQNdCw") }) do
local qif = pg:FindFirstChild(olaz)

if qif and qif.Visible and qif.Text then
local oth = tonumber(qif.Text:match(_d("RBwcShE")))

if oth then
return oth
end
end
end

local ycw = pg:FindFirstChild(_d("KlUXDko0AR5cHQ8"))
local qvu = ycw and ycw:FindFirstChild(_d("OFYII1kV"))
local umgc = qvu and qvu:FindFirstChild(_d("KlUXDkorAw5cFA"))

if umgc then
return tonumber(umgc.Text:match(_d("RBwcShE")))
end

return nil
end

function jag.bossTeams.swapRows(nj)
local byy = brbo:FindFirstChild(_d("P1wMFVEJBR9+DQg"))
local wxeu = byy and byy:FindFirstChild(_d("LUwMDmsQAxw") .. nj .. _d("PlYP"), true)

if not wxeu then
return nil
end

return wxeu:FindFirstChild(_d("LUwMDmsQAxw") .. nj .. _d("L1EdAlM")),
wxeu:FindFirstChild(_d("LUwMDmsQAxw") .. nj .. _d("OFwZDA")),
wxeu:FindFirstChild(_d("LUwMDmsQAxw") .. nj .. _d("KlUXDko"))
end

function jag.bossTeams.swapOn(xxu)
local nv = brbo:FindFirstChild(_d("P1wMFVEJBR9+DQg"))
local dgm = nv and nv:FindFirstChild(_d("K1wMMl0TFgVXHxI"), true)

if not dgm then
return nil
end

local ztz, xpxj = pcall(function()
return dgm:Invoke()
end)

if ztz and type(xpxj) == _d("GFgaDV0") then
return xpxj[xxu == 1 and _d("DUwMDmwCAwFqDwBIIgwNWxQEXA") or _d("DUwMDmwCAwFqDwBIVScCWBoNXQM")] == true
end

return nil
end

function jag.bossTeams.swapBox(klg, lbmv)
if tonumber(klg.Text) == lbmv then
return
end

klg.Text = tostring(lbmv)

if getconnections then
for boe, igv in ipairs(getconnections(klg.FocusLost)) do
pcall(function()
igv:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end

function jag.bossTeams.swapSet(sc, ab, slp, bpvn)
local dkxc, xuf, syil = jag.bossTeams.swapRows(sc)

if not (dkxc and xuf and syil) then
return false
end

slp = math.max(1, math.floor(tonumber(slp) or 1))
bpvn = math.clamp(math.floor(tonumber(bpvn) or 1), 1, 4)

jag.bossTeams.swapBox(syil, slp)
jag.bossTeams.swapBox(xuf, bpvn)

local tzan = jag.bossTeams.swapOn(sc)

if tzan ~= nil and tzan ~= (ab == true) and getconnections then
pcall(function()
for tf, mks in ipairs(getconnections(dkxc.MouseButton1Click)) do
pcall(function()
mks:Fire()
end)
end
end)
end

local vkcc = sc == 1 and _d("") or _d("Xg")

pcall(function()
zbuo.SaveClientData:FireServer({
[_d("DUwMDmwCAwFqDwBI") .. vkcc .. _d("KVcZA1QCBg")] = ab == true,
[_d("DUwMDmwCAwFqDwBI") .. vkcc .. _d("OFwZDA")] = bpvn,
[_d("DUwMDmwCAwFqDwBI") .. vkcc .. _d("KlUXDko")] = slp,
})
end)

return true
end

function jag.bossTeams.swapApply()
local usz = jag.bossTeams
local tny = usz.swap
local xpg = true

if tny.on then
xpg = usz.swapSet(1, tny.floor > 0, tny.floor, tny.team)
xpg = usz.swapSet(2, tny.floor2 > 0, tny.floor2, tny.team2) and xpg
else
xpg = usz.swapSet(1, false, tny.floor, tny.team)
xpg = usz.swapSet(2, false, tny.floor2, tny.team2) and xpg
end

usz.swapMessage = _d("")

if not xpg then
usz.swapMessage = _d("OFEdQV8GDwkeC0F5EhYDGSwEWQpCP04ZERgVDRtKWABKAkICVgxBWhILAE1YGF0TQkEZCgRMFRsFVx9P")
end

usz.paintSwap()
end

function jag.bossTeams.swapReset(pxp)
local hyg = jag.bossTeams

if pxp then
hyg.swapFired[pxp] = nil
else
hyg.swapFired = {}
end
end

function jag.bossTeams.swapTick()
local chh = jag.bossTeams
local ik = chh.swap

if not ik.on or (ik.floor <= 0 and ik.floor2 <= 0) then
if next(chh.swapFired) ~= nil then
chh.swapFired = {}
end

return
end

local navh = os.clock()
local cmiq = jxg.remote(_d("P04RFVsPNglYFQ"))

if navh - (chh.swapWroteAt or 0) > 10 then
chh.swapWroteAt = navh
chh.swapApply()
end

local zbtc = {
{
kind = _d("GFYPBEo"),
slot = pcyb.towerSlot(),

live = navh - (difb.floorAt or 0) < 90,
floor = uba(),

own = true,
},
{
kind = _d("BFgKBVsIEAk"),
slot = pcyb.hardcoreSlot(),
live = ug.active(),
floor = ug.floorNow(),

own = false,
},
}

local oimw = {
{ index = 1, floor = ik.floor, team = ik.team },
{ index = 2, floor = ik.floor2, team = ik.team2 },
}

for yty, ibe in ipairs(zbtc) do
if not ibe.live then

chh.swapFired[ibe.kind] = nil
elseif ibe.own and cmiq and ibe.floor then
local vbjz = chh.swapFired[ibe.kind]

for enpg, oism in ipairs(oimw) do
local pcz = type(vbjz) == _d("GFgaDV0") and vbjz[oism.index]

if oism.floor > 0 and ibe.floor == oism.floor and not pcz then
local wqfl = pcall(function()
cmiq:FireServer(math.clamp(math.floor(oism.team), 1, 4), true, ibe.slot or 1)
end)

if wqfl then
vbjz = type(vbjz) == _d("GFgaDV0") and vbjz or {}
vbjz[oism.index] = oism.team
chh.swapFired[ibe.kind] = vbjz

chh.swapMessage = string.format(_d("L1gLFVQCQgpVFw5KR0cIGVVBSxALGFoQBFxHFgMZLARZCkJJXVY"), ibe.floor, oism.team)
chh.paintSwap()
end
end
end
end
end
end

task.spawn(function()
while ydyn() do
pcall(jag.bossTeams.swapTick)
task.wait(0.5)
end
end)

local function tsn()

return vdh.active() and vdh.hasReadyTarget()
end

function ha.worldBoss.remote(mxz)
local bykg = ha.worldBoss

bykg.remotes = bykg.remotes or {}

local cslg = bykg.remotes[mxz]

if cslg and cslg.Parent then
return cslg
end

local vtnk = jxg.remote(mxz)

if vtnk then
bykg.remotes[mxz] = vtnk
end

return vtnk
end

function ha.worldBoss.setRepeat(gsy)
local bqo = ha.worldBoss
local fqbx = bqo.remote(_d("O1YKDVwlDR9KOQJMDg0C"))

if not fqbx then
return false
end

local bfq = bqo.state
local dbuk = type(bfq) == _d("GFgaDV0") and bfq.repeatOn == true

if dbuk == (gsy and true or false) then
bqo.repeatIntent = nil

return true
end

if gsy then
local xi = workspace:FindFirstChild(_d("O1YKDVwlDR9KORNdCQM"))
local ypv = xi and (xi:FindFirstChild(_d("L1wUDXUGGg")) or xi)
local hhw = ehbn.Character and ehbn.Character:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not (ypv and hhw) then
return false
end

local qypw, wir = pcall(function()
return ypv:GetPivot()
end)

if not qypw or (hhw.Position - wir.Position).Magnitude > 60 then
return false
end
end

if bqo.repeatIntent == gsy and os.clock() - (bqo.repeatAskedAt or 0) < 20 then
return false
end

bqo.repeatIntent = gsy

pcall(function()
fqbx:FireServer(_d("HlwIBFkT"))
end)

bqo.repeatAskedAt = os.clock()

return true
end

function ha.worldBoss.requestSync()
local fmw = ha.worldBoss
local lmvt = fmw.remote(_d("O1YKDVwlDR9KOQJMDg0C"))

if lmvt then
pcall(function()
lmvt:FireServer(_d("H0AWAg"))
end)
end

fmw.askedAt = os.clock()
end

function ha.worldBoss.hasWork()
local xgxm = ha.worldBoss
local uwp = xgxm.state

if not xgxm.enabled or type(uwp) ~= _d("GFgaDV0") then
return false
end

if xgxm.stopAtFull and type(xgxm.meterFull) == _d("CkwWAkwODQI") and xgxm.meterFull() then
return false
end

local ggpr = xgxm.isOpen()

if ggpr == nil then
ggpr = uwp.open == true
end

return ggpr and uwp.inFight ~= true
end

ha.worldBoss.bossUp = function()
local aec = ha.worldBoss

if not aec.enabled then
return false
end

local nfdr = aec.isOpen()

if nfdr ~= nil then
return nfdr == true
end

local au = aec.state

return type(au) == _d("GFgaDV0") and au.open == true
end

function ha.worldBoss.meter()
local lv = ha.worldBoss
local imeb = os.clock()

if imeb - (lv.meterAt or 0) < 1 then
return lv.meterCurrent, lv.meterMax
end

lv.meterAt = imeb
lv.meterCurrent = nil
lv.meterMax = nil

local ifca = egii:FindFirstChild(_d("O1YKDVwlDR9KKxVZExcf"))
local hh = ifca and tonumber(ifca:GetAttribute(_d("IVwMBEo")))
local jmo = ifca and tonumber(ifca:GetAttribute(_d("IVwMBEoqAxQ")))

if hh and jmo and jmo > 0 then
lv.meterCurrent = hh
lv.meterMax = jmo

return lv.meterCurrent, lv.meterMax
end

local function wu(tbrn)
if type(tbrn) ~= _d("H00KCFYA") then
return nil
end

local tq, tjn = tbrn:match(_d("RGJdBR1JP0cQXRISTzkndDoKVQU/UxA"))
local ahf = tonumber(tq)

if not ahf then
return nil
end

local iof = ({ K = 1000, M = 1000000, B = 1000000000 })[string.upper(tjn or _d(""))] or 1

return ahf * iof
end

local hkf = brbo:FindFirstChild(_d("O1YKDVwlDR9KOgBWCQcefg0I"))
local cgod = hkf and hkf:FindFirstChild(_d("LlgWD10V"))
local riw = cgod and cgod:FindFirstChild(_d("IVwMBEolAx4"))
local fivh = riw

if riw and not riw:IsA(_d("OFwAFXQGAAlV")) then
fivh = riw:FindFirstChild(_d("OFwAFQ"))
end

local qpcp = fivh and fivh:IsA(_d("OFwAFXQGAAlV")) and fivh.Text or nil

if type(qpcp) == _d("H00KCFYA") then
local wwn, pyi = qpcp:match(_d("RGImTmVMS0MRVkoR"))

lv.meterCurrent = wu(wwn)
lv.meterMax = wu(pyi)
end

return lv.meterCurrent, lv.meterMax
end

function ha.worldBoss.meterFull()
local vdsk, eei = ha.worldBoss.meter()

return vdsk ~= nil and eei ~= nil and eei > 0 and vdsk >= eei
end

ha.worldBoss.holdsFishing = function()
local jcl = ha.worldBoss

if not jcl.enabled or not jcl.bossUp() then
return false
end

if jcl.stopAtFull and jcl.meterFull() then
return false
end

return pcyb.prioBlocks(_d("G1gMBEo"))
end

ha.worldBoss.holdsDigging = function()
local ecpe = ha.worldBoss

if not ecpe.enabled or not ecpe.bossUp() then
return false
end

if ecpe.stopAtFull and ecpe.meterFull() then
return false
end

return pcyb.digBlocked()
end

ha.worldBoss.standDown = function()
local uhcn = ha.worldBoss

if uhcn.stopAtFull and type(uhcn.meterFull) == _d("CkwWAkwODQI") and uhcn.meterFull() then
return true
end

return pcyb.prioBlocks(_d("DlYLEg"))
end

ha.worldBoss.usesGameChain = function()
return true
end

function ha.worldBoss.travel()
local qbsn = ha.worldBoss
local pgai = ehbn.Character
local qeer = pgai and pgai:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not qeer or os.clock() < qbsn.travelUntil then
return
end

qbsn.travelUntil = os.clock() + 6

local lok = workspace:FindFirstChild(_d("O1YKDVwlDR9KKA5KEwMA"))
local nxfv = lok and lok:FindFirstChild(_d("PFYKFVkL"))

if not nxfv then
return
end

if (qeer.Position - nxfv.Position).Magnitude > 150 then
local smr = jxg.remote(_d("OFwUBEgIEBhtFzZXFQ4I"))

if smr then
pcall(function()
smr:FireServer(_d("AFYaA0E"))
end)
end

return
end

if (qeer.Position - nxfv.Position).Magnitude > 6 then
qbsn.walkLeg(nxfv.Position + Vector3.new(0, 3, 0), 4)

if (qeer.Position - nxfv.Position).Magnitude > 9 then
return
end
end

local rlcr = nxfv:FindFirstChildOfClass(_d("PEsXGVEKCxhAKBNXChIY"))

if not rlcr then
return
end

pcall(function()
if type(fireproximityprompt) == _d("CkwWAkwODQI") then
fireproximityprompt(rlcr)
else
rlcr:InputHoldBegin()
task.wait(0.25)
rlcr:InputHoldEnd()
end
end)
end

function ha.worldBoss.reach()
local yhcj = ha.worldBoss

local omr = workspace:FindFirstChild(_d("O1YKDVwlDR9KORNdCQM")) or workspace:FindFirstChild(_d("O1YKDVwlDR9KKxFZEAw"), true)
local zq = ehbn.Character
local tzs = zq and zq:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not (omr and tzs) then
yhcj.travel()
return false
end

local hdw = omr:FindFirstChild(_d("L1wUDXUGGg")) or omr
local jhdv, ryuf = pcall(function()
return hdw:GetPivot()
end)

if not jhdv then
return false
end

local csnp = ryuf.Position + ryuf.LookVector * 6 + Vector3.new(0, 3, 0)
local rt = Vector3.new(ryuf.Position.X, csnp.Y, ryuf.Position.Z)

tzs.CFrame = CFrame.lookAt(csnp, rt)

return true
end

ha.worldBoss.cityBounds = { 19100, 20900, -850, 850 }

function ha.worldBoss.inArena()
local ocyc = ehbn.Character and ehbn.Character:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))
local zdu = ha.worldBoss.cityBounds

if not ocyc then
return false
end

local qchm = ocyc.Position

return qchm.X >= zdu[1] and qchm.X <= zdu[2]
and qchm.Z >= zdu[3] and qchm.Z <= zdu[4]
end

function ha.worldBoss.enterCity(nio)
local crm = ha.worldBoss

local brl = os.clock() + (nio or 30)

if crm.inArena() then
return true
end

while os.clock() < brl do
if not crm.enabled then
return false
end

crm.travel()

if crm.inArena() then
return true
end

task.wait(0.5)
end

return crm.inArena()
end

ha.worldBoss.walking = false
ha.worldBoss.walkStartedAt = 0

function ha.worldBoss.walkLeg(wtsg, thf)
local ayv = ha.worldBoss
local ejbh = ehbn.Character
local rhb = ejbh and ejbh:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))
local yckx = ejbh and ejbh:FindFirstChildOfClass(_d("JEwVAFYICwg"))

if not (rhb and yckx) then
return false
end

if ayv.walking and os.clock() - (ayv.walkStartedAt or 0) < 45 then
return false
end

thf = thf or 6

ayv.walking = true
ayv.walkStartedAt = os.clock()

local hle, eaj = pcall(function()
local kcl = os.clock() + 40
local wnt = 0
local vorg = rhb.Position
local kcb = os.clock()

while ayv.enabled and os.clock() < kcl do
local cri = Vector3.new(wtsg.X - rhb.Position.X, 0, wtsg.Z - rhb.Position.Z)

if cri.Magnitude <= thf then
return true
end

if os.clock() - wnt >= 0.25 then
yckx:MoveTo(Vector3.new(wtsg.X, rhb.Position.Y, wtsg.Z))
wnt = os.clock()
end

if os.clock() - kcb >= 1.2 then
if (rhb.Position - vorg).Magnitude < 2 then
yckx.Jump = true
end

vorg = rhb.Position
kcb = os.clock()
end

task.wait(0.1)
end

return Vector3.new(wtsg.X - rhb.Position.X, 0, wtsg.Z - rhb.Position.Z).Magnitude <= thf
end)

pcall(function()
yckx:MoveTo(rhb.Position)
end)

ayv.walking = false

return hle and eaj == true
end

function ha.worldBoss.walkIn(qzp)
local cwux = ha.worldBoss
local onx = workspace:FindFirstChild(_d("O1YKDVwlDR9KORNdCQM"))
local lise = onx and (onx:FindFirstChild(_d("L1wUDXUGGg")) or onx) or nil
local njac = ehbn.Character and ehbn.Character:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if not (lise and njac) then
return false
end

local wfep, uaac = pcall(function()
return lise:GetPivot()
end)

if not wfep then
return false
end

local bkfc = uaac.Position + uaac.LookVector * 6 + Vector3.new(0, 3, 0)

if (njac.Position - bkfc).Magnitude <= (qzp or 10) then
return true
end

local hlak = cwux.walkLeg(bkfc, qzp or 6)

if not hlak then
hlak = (njac.Position - uaac.Position).Magnitude <= 25
end

return hlak
end

function ha.worldBoss.approach()
local je = ha.worldBoss

if not je.walkToBoss then
return je.reach()
end

if not je.enterCity() then
return false
end

return je.walkIn(10)
end

function ha.worldBoss.fight()
local kis = ha.worldBoss
local ris = kis.remote(_d("O1YKDVwlDR9KOQJMDg0C"))

local function ye(jwcy)
kis.nextFightAt = os.clock() + (jwcy or 20)

return false
end

if not ris then
return ye(60)
end

if kis.stopAtFull and kis.meterFull() then
return ye(20)
end

if vs.enabled
and (vs.tpToBay or vs.deepZone)
and vs.phase ~= _d("BV0UBA") then
return false
end

kis.takingUntil = os.clock() + 45

local bfh = workspace:FindFirstChild(_d("O1YKDVwlDR9KORNdCQM"))
local wjfj = bfh and (bfh:FindFirstChild(_d("L1wUDXUGGg")) or bfh) or nil
local xor = ehbn.Character and ehbn.Character:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

local function yuj()
if not (wjfj and xor) then
return nil
end

local agz, hdm = pcall(function()
return wjfj:GetPivot()
end)

if not agz then
return nil
end

return (xor.Position - hdm.Position).Magnitude
end

local gzvv = kis.usesGameChain() and (yuj() or math.huge) <= 60

if not gzvv and not kis.approach() then
kis.takingUntil = os.clock() + 3

return ye(kis.inArena() and 3 or 20)
end

if wjfj and xor then
local vrck, ep = pcall(function()
return wjfj:GetPivot()
end)

if not vrck or (xor.Position - ep.Position).Magnitude > 60 then
kis.takingUntil = os.clock() + 2

return ye(kis.inArena() and 2 or 10)
end
end

jag.bossTeams.applyTeam(kis.team)

task.wait(gzvv and 0 or (kis.walkToBoss and 0.3 or 1.4))

pcall(function()
ris:FireServer(_d("ClAfCUw"))
end)

kis.fightAt = os.clock()

kis.holdUntil = os.clock() + (kis.usesGameChain() and 0.7 or 4)

kis.takingUntil = os.clock() + 0.6

if vs.enabled and (vs.tpToBay or vs.deepZone) then
vs.deepPhase = _d("BV0UBA")
vs.deepStageAt = 0
vs.nextCastAt = 0
end

kis.killsAtFire = type(kis.state) == _d("GFgaDV0") and tonumber(kis.state.kills) or nil

if not kis.usesGameChain() and vs.enabled
and (vs.tpToBay or vs.deepZone) then
kis.nextFightAt = os.clock() + 1
end

return true
end

function ha.worldBoss.buy(sgwt)
local lgm = ha.worldBoss
local bxf = lgm.remote(_d("O1YKDVwlDR9KOQJMDg0C"))

sgwt = sgwt or 1

if not bxf then
return 0
end

local egs = 0

for edx = 1, sgwt do
local mljl = lgm.state

if type(mljl) ~= _d("GFgaDV0") or type(mljl.shop) ~= _d("GFgaDV0") then
break
end

if os.clock() < lgm.buyAt then
break
end

local xvu = tonumber(mljl.medals) or 0
local aisr = nil

for wcjj, rbya in ipairs(mljl.shop) do
local loy = tonumber(rbya.price) or 0
local cfv = rbya.kind ~= _d("BU0dDA") or (tonumber(rbya.left) or 0) > 0

if lgm.selected[rbya.id] == true and cfv and rbya.owned ~= true and loy <= xvu then
aisr = rbya
break
end
end

if not aisr then
break
end

pcall(function()
bxf:FireServer(_d("DkwB"), aisr.id, 1)
end)

egs = egs + 1
lgm.bought = lgm.bought + 1
lgm.buyAt = os.clock() + 1.2

lgm.syncedAt = 0
lgm.requestSync()
task.wait(1.1)
end

return egs
end

ha.worldBoss.questGroups = { _d("HFwKElcJAwA"), _d("C1UXA1kL"), _d("ClAUDQ"), _d("HlwLFUoOARhQFw8") }

function ha.worldBoss.questRows(celq)
local ghzy = ha.worldBoss
local hdah = type(celq) == _d("GFgaDV0") and celq.quests or nil
local gei = {}

if type(hdah) ~= _d("GFgaDV0") then
return gei
end

for sua, kwim in ipairs(ghzy.questGroups) do
local dccu = hdah[kwim]

if type(dccu) == _d("GFgaDV0") then
for dtsh, wg in ipairs(dccu) do
if type(wg) == _d("GFgaDV0") then
table.insert(gei, wg)
end
end
end
end

return gei
end

function ha.worldBoss.claim()
local bhw = ha.worldBoss
local kdi = bhw.remote(_d("O1YKDVwlDR9KOQJMDg0C"))
local edf = bhw.state

if not kdi or type(edf) ~= _d("GFgaDV0") or type(edf.quests) ~= _d("GFgaDV0") then
return 0
end

if os.clock() < bhw.claimAt then
return 0
end

local pbe = bhw.questRows(edf)

if #pbe == 0 then
return 0
end

local kfns = {}

for ieo, xywe in ipairs(pbe) do
if xywe.id ~= nil then
kfns[tostring(xywe.id)] = true
end
end

for mnvb, bgx in pairs(bhw.claimFired) do
if not kfns[mnvb] or os.clock() - bgx > 120 then
bhw.claimFired[mnvb] = nil
end
end

local sdj = nil

for bot, ugp in ipairs(pbe) do
if ugp.complete == true and ugp.claimed ~= true and ugp.id ~= nil then
local dhxh = tostring(ugp.id)
local ixzc = bhw.claimFired[dhxh]

if not (ixzc and os.clock() - ixzc < 6) then
sdj = ugp
break
end
end
end

if not sdj then
return 0
end

bhw.claimFired[tostring(sdj.id)] = os.clock()
bhw.claimedTotal = bhw.claimedTotal + 1

pcall(function()
kdi:FireServer(_d("D1UZCFU"), sdj.id)
end)

bhw.claimAt = os.clock() + 2
bhw.syncedAt = 0
bhw.requestSync()

return 1
end

ha.worldBoss.syncRemote = nay(_d("O1YKDVwlDR9KKxhWBA"))

if ha.worldBoss.syncRemote then
jhh(ha.worldBoss.syncRemote.OnClientEvent, function(nyoj)
local nqs = ha.worldBoss

if type(nyoj) ~= _d("GFgaDV0") then
return
end

nqs.state = nyoj
nqs.syncedAt = os.clock()

if nyoj.inFight == true then
nqs.wasFighting = true
elseif nqs.wasFighting then
nqs.wasFighting = false

if vs.enabled then
pcall(vs.recover)
end
end
end)
end

task.spawn(function()
ha.worldBoss.requestSync()
end)

task.spawn(function()
while ydyn() do
local wyl = ha.worldBoss
local glf = wyl.state

if wyl.autoClaim then
if os.clock() - wyl.syncedAt > 4 and os.clock() - wyl.askedAt > 1 then
wyl.requestSync()
end

wyl.claim()
end

if wyl.enabled then

if os.clock() - wyl.syncedAt > (wyl.bossUp() and 1.5 or 4) and os.clock() - wyl.askedAt > 1 then
wyl.requestSync()
end

if wyl.autoBuy and next(wyl.selected) then
wyl.buy(1)
end

local oqfw = type(glf) == _d("GFgaDV0") and glf.repeatOn == true

if wyl.usesGameChain() then

local ygw = type(glf) == _d("GFgaDV0") and tonumber(glf.kills) or nil

if ygw and ygw ~= wyl.seenKills then
wyl.seenKills = ygw
wyl.progressAt = os.clock()

wyl.chainWaitAt = nil
end

if wyl.standDown() then

if oqfw and os.clock() - (wyl.repeatAskedAt or 0) > 6 then
wyl.repeatSeeded = false
wyl.setRepeat(false)
end
elseif wyl.bossUp() and not oqfw and os.clock() - (wyl.repeatAskedAt or 0) > 20 then
if wyl.approach() then
wyl.repeatSeeded = true
wyl.progressAt = os.clock()

wyl.setRepeat(true)
end
end

if wyl.hasWork() and os.clock() >= wyl.holdUntil
and os.clock() >= (wyl.nextFightAt or 0)
and os.clock() - (wyl.kickAt or 0) > 0.5
and not (wyl.stopAtFull and wyl.meterFull())
and not pcyb.prioBlocks(_d("DlYLEg")) then
wyl.chainWaitAt = nil
wyl.kickAt = os.clock()
wyl.fight()
elseif not wyl.hasWork() then
wyl.chainWaitAt = nil
end

if not wyl.bossUp() then
wyl.chainWaitAt = nil

if oqfw and os.clock() - (wyl.repeatAskedAt or 0) > 6 then
wyl.repeatSeeded = false
wyl.setRepeat(false)
end
end
elseif wyl.isOpen() and oqfw and os.clock() - (wyl.repeatAskedAt or 0) > 6 then
wyl.setRepeat(false)
end

local xdwn = type(glf) == _d("GFgaDV0") and tonumber(glf.kills) or nil

if wyl.killsAtFire ~= nil and xdwn == wyl.killsAtFire
and os.clock() - (wyl.fightAt or 0) > (wyl.inArena() and 2.5 or 9)
and os.clock() < (wyl.nextFightAt or 0)
and os.clock() >= wyl.holdUntil then
wyl.killsAtFire = nil
wyl.nextFightAt = os.clock()
end

if not wyl.usesGameChain() and wyl.hasWork() and os.clock() >= wyl.holdUntil
and os.clock() >= (wyl.nextFightAt or 0)
and not (wyl.stopAtFull and wyl.meterFull()) then

local jic = tsn()
local jptw = pcyb.roleSlot(_d("Akkb")) or 1
local bsv = pcyb.enabled and pcyb.busy(jptw)

if not jic and not bsv then
wyl.fight()
end
end
end

local ay = wyl.bodyText()

if wyl.bodyParagraph and ay ~= wyl.bodyShown then
wyl.bodyShown = ay

pcall(function()
wyl.bodyParagraph:UpdateBody(ay)
end)
end

local yrwd = wyl.shopText()

if wyl.shopParagraph and yrwd ~= wyl.shopShown then
wyl.shopShown = yrwd

pcall(function()
wyl.shopParagraph:UpdateBody(yrwd)
end)
end

task.wait(0.5)
end
end)

function pcyb.roomsHaveWork()
if not ena.enabled then
return false
end

local egns = ena.progress

if egns == nil then
return true
end

for uscw, bktv in ipairs(ag.Milestones) do
if ag.isMilestoneUnlocked(bktv, egns) and not ag.isMilestoneCleared(bktv, egns) then
return true
end
end

return false
end

function pcyb.raidHasWork()
if not ha.enabled then
return false
end

local yxu = egii:FindFirstChild(_d("PlgRBWsTAxhMCw"))

if not yxu then
return false
end

if not (yxu:GetAttribute(_d("JUo3EV0J")) == true or yxu:GetAttribute(_d("KlYKAl0D")) == true) then
return false
end

for lsij, iob in ipairs({ 1, 2 }) do
local gj = (iob ~= 1 and not pcyb.splitNpc()) and 1 or nil
local gfku = ha.picks[gj or iob] and ha.bossFor(iob, gj)

if gfku and ha.cleared[gfku] ~= ldz(gfku) then
return true
end
end

return false
end

function pcyb.prioRank(grfk)
for qwzs, kuc in ipairs(pcyb.prioGroups) do
if kuc.id == grfk then
return kuc.rank
end
end

return 99
end

function pcyb.prioWants(jhe)
if jhe == _d("HlgRBUs") then
return pcyb.raidHasWork()
elseif jhe == _d("DlYLEg") then

return ha.worldBoss.hasWork()
elseif jhe == _d("Akkb") then
return tsn() or pcyb.roomsHaveWork()
elseif jhe == _d("BFgKBVsIEAk") then
return ug.active()
elseif jhe == _d("G1gMBEo") then
return vs.enabled or lcbm.autoOn == true
end

return false
end

function pcyb.prioBlocks(yqz)
local kivp = pcyb.prioRank(yqz)

for yf, qcqn in ipairs(pcyb.prioGroups) do
if qcqn.id ~= yqz and qcqn.rank < kivp and pcyb.prioWants(qcqn.id) then
return true
end
end

return false
end

function pcyb.digBlocked()
local fcaa = pcyb.prioRank(_d("G1gMBEo"))

for kcqs, iza in ipairs(pcyb.prioGroups) do
if iza.id ~= _d("G1gMBEo") and iza.id ~= _d("BFgKBVsIEAk")
and iza.rank < fcaa and pcyb.prioWants(iza.id) then
return true
end
end

return false
end

function pcyb.towerYields()
for yyw, cdm in ipairs({ _d("HlgRBUs"), _d("DlYLEg"), _d("Akkb") }) do
if pcyb.prioWants(cdm) then
return true
end
end

return false
end

function pcyb.towerOutranks()
return not pcyb.enabled and (ug.active() or gnco.run.enabled)
end

local function evfz(hwzn)
if not hwzn then
return false
end

local tkwd = false

for tdtx, gjhi in ipairs(getconnections(hwzn.MouseButton1Click)) do
local bnt = gjhi.Function

if type(bnt) == _d("CkwWAkwODQI") then
pcall(bnt)
else
pcall(function()
gjhi:Fire()
end)
end

tkwd = true
end

return tkwd
end

function nke()
for yozd, oft in ipairs({ _d("LlgMFVQCJRlQ"), _d("LlgMFVQCJRlQSg") }) do
local xwt = brbo:FindFirstChild(oft)

if xwt then
local upma = xwt:FindFirstChild(_d("LlgMFVQCMQ9LHQRW"))
local xrch = upma and upma:FindFirstChild(_d("PUwRAlMgCxpcLRF6EhYYVhY"))

if evfz(xrch) then
return true
end

local gxm = xwt:FindFirstChild(_d("KlUXDko0AR5cHQ8"))
local rkmy = gxm and gxm:FindFirstChild(_d("LlYMFVcKIA1L"))
local fgo = rkmy and rkmy:FindFirstChild(_d("K1AOBG0XIBlNDA5W"))

if evfz(fgo) then
return true
end
end
end

local imta = egii:FindFirstChild(_d("PlwVDkwCEQ"))
local tdqz = imta and imta:FindFirstChild(_d("K1AOBG0XNgNOHRM"))
local aat = imta and imta:FindFirstChild(_d("KVccNVcQBx5rHQxXEwc"))

if not (tdqz or aat) then
return false
end

if tdqz then
pcall(function()
tdqz:FireServer()
end)
end

if aat then
pcall(function()
aat:FireServer(1)
end)
end

difb.manualPause = false
difb.floor = nil
jxg.restorePause()

return true
end

local hkpk = nke

function nke()

difb.lastGiveUp = {
at = os.time(),
clock = os.clock(),
floor = difb.floor,
parked = jxg.parked(),
active = wyt(),
hard = jxg.hardNow(),
nightmare = difb.nightmare == true,
caller = debug.traceback(_d(""), 2),
}

local fpin = hkpk()

if fpin then
rcwp.armedAt = os.clock()
end

return fpin
end

function oze(slw)

local rvy = false

if slw ~= false and wyt() then
local byem = uba()

if byem then
rvy = jxg.pauseAt(true, byem) or rvy

difb.pauseArmed = true
end
end

for qxwi, ill in ipairs({ _d("LlgMFVQCJRlQ"), _d("LlgMFVQCJRlQSg") }) do
local ytmh = brbo:FindFirstChild(ill)

if ytmh then
local elm = ytmh:FindFirstChild(_d("LlgMFVQCMQ9LHQRW"))
local tidy = elm and elm:FindFirstChild(_d("PUwRAlMlEAlYEyNNExYDVw"))

if tidy then

if tostring(tidy.Text):find(_d("jqXr"), 1, true) then
rvy = true
elseif evfz(tidy) then
rvy = true
end
end

local hpfw = ytmh:FindFirstChild(_d("KlUXDko0AR5cHQ8"))

if hpfw and hpfw.Visible then
local mdc = hpfw:FindFirstChild(_d("LlYMFVcKIA1L"))
local ou = mdc and mdc:FindFirstChild(_d("OFgTBHoVBw1SOhRMEw0C"))

if evfz(ou) then
rvy = true
end
end
end
end

return rvy
end

function ug.pauseRun()
if not wyt() then
pcall(function()
kqs:Dialog({
Title = _d("PFgNEl1HKx9VGQ9cRyoNSxwCVxUH"),
Description = _d("IlZYFVcQBx4ZChRWRwsfGRQITgJCHlAfCUxHDANOVEFLCEIYUR0TXUcLHxkWDkwPCwJeWBVXRxINTAsEFg"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})
end)

return
end

ug.paused = true
ug.manualPause = true
local txg = oze(false)

pcall(function()
kqs:Notify({
Title = _d("PFgNEl1HKx9VGQ9cRyoNSxwCVxUH"),
Description = txg and _d("OFYPBEpHEBlXWBFZEhEJXVY") or _d("PkwWQVEUQgBQDgQURwAZTVgPV0cAHlwZChgFFxhNFw8YAQ0ZVxxP"),
Lifetime = 5,
})
end)
end

function ug.giveUpRun()
if not wyt() then
pcall(function()
kqs:Dialog({
Title = _d("K1AOBBgyEkxwCw1ZCQZMcRkTXAQNHlw"),
Description = _d("IlZYFVcQBx4ZChRWRwsfGRQITgJCHlAfCUxHDANOVEFLCEIYUR0TXUcLHxkWDkwPCwJeWBVXRwUFTx1BTRdM"),
Buttons = {
{
Name = _d("K1YMQVET"),
},
},
})
end)

return
end

ug.gaveUp = true
ug.paused = true
local ytb = nke()

pcall(function()
kqs:Notify({
Title = _d("K1AOBBgyEkxwCw1ZCQZMcRkTXAQNHlw"),
Description = ytb and _d("K1gOBBgSEkxNEAQYBBceSx0PTEcWA04dExgBDgNWCk8") or _d("PkwWQVEUQgBQDgQURwAZTVgPV0cFBU8dQU0XQg5MDBVXCUIKVg0PXEk"),
Lifetime = 5,
})
end)
end

task.spawn(function()
while ydyn() do

pcall(jxg.pinMode)

if difb.pauseArmed and not hf.enabled
and (not difb.enabled or not difb.paused) then
jxg.restorePause()

if jxg.pauseState() ~= true then
difb.pauseArmed = false
end
end

if difb.enabled and not difb.manualPause and pcyb.towerSlot() ~= nil
and not gnco.run.enabled then

local hwps = os.clock() - (difb.floorAt or 0) > 12
and os.clock() - (difb.battleAt or 0) > 12

local coyl = pcyb.towerSlot() == 1 and not difb.paused
and not (hf.enabled and hf.floor > 0)
and hwps
and jxg.parked()

if coyl then
difb.parkedAt = difb.parkedAt > 0 and difb.parkedAt or os.clock()

if os.clock() - difb.parkedAt >= 25 then
difb.parkedAt = os.clock()
nke()
end
else
difb.parkedAt = 0
end

local cwnc = jxg.hardPickNow()

local rlrc = not difb.paused and not difb.pending
and not (hf.enabled and hf.floor > 0)
and wyt()
and cwnc ~= nil
and cwnc ~= (difb.nightmare == true)

if rlrc then
difb.modeWrongAt = difb.modeWrongAt or os.clock()
else
difb.modeWrongAt = nil
end

if difb.modeWrongAt and os.clock() - difb.modeWrongAt > 20
and os.clock() - (difb.modeFixAt or 0) > 20 then
difb.modeFixAt = os.clock()
difb.modeWrongAt = nil
jxg.endIfWrongMode(difb.nightmare == true)
end

if (difb.floorAt or 0) > 0 and not difb.paused
and os.clock() - difb.floorAt > 60
and os.clock() - (difb.battleAt or 0) > 60
and not wyt()
and not pcyb.busy(pcyb.towerSlot() or 1) then
difb.floorAt = 0
difb.battleAt = 0
difb.floor = nil
end

if not pcyb.enabled and (pcyb.towerOutranks() or pcyb.towerYields()) then
if not difb.paused then
difb.paused = true
oze()
end

elseif pcyb.slotFree(pcyb.towerSlot() or 1)
and (difb.floorAt or 0) == 0
and not jag.bossTeams.swapHold then
local tsu = uba()
local ih = hf.enabled and hf.floor or 0
local agvk = ih > 0 and tsu ~= nil and tsu >= ih

if agvk then
if not difb.paused then
difb.paused = true
oze()
end
else

if difb.paused then
difb.paused = false
jxg.restorePause()
end

if not (difb.pending and os.time() < difb.pendingUntil) then

jag.bossTeams.applyTower(_d("GFYPBEo"), 1)

jxg.hardPick(difb.nightmare == true)

local wllc = workspace:FindFirstChild(_d("L1gLFVQCMgNLDABU"), true)

if wllc then
local mvq = ehbn.Character
local nlmh = mvq and mvq:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))

if nlmh and (wllc.Position - nlmh.Position).Magnitude > 60 then
pcall(function()
eo.standAt(wllc.Position)
end)

task.wait(0.8)
end
end

zbuo.EndTowerRemote:FireServer(1)
task.wait(0.25)

zbuo.StartBattle:FireServer(_d("GFYPBEo"), { hard = difb.nightmare == true })

igpm.triggered = false
igpm.weatherTriggered = false

difb.floorAt = os.clock()

difb.floor = nil
difb.pending = true
difb.pendingUntil = os.time() + 8
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while ydyn() do
if ug.active() and pcyb.hardcoreSlot() ~= nil then
local knve = pcyb.hardcoreSlot() or 1
local aak = ug.floorNow()

local vnn = hf.enabled and hf.floor or 0
local tlg = igpm.enabled and igpm.floor or 0

if vnn <= 0 and not ug.stoodDown and not ug.manualPause
and not jag.bossTeams.swapHold then
ug.paused = false
end

if ug.gaveUp then

elseif tlg > 0 and aak and aak >= tlg then
ug.gaveUp = true
ug.paused = true
local whdl = nke()

pcall(function()
kqs:Notify({
Title = _d("LUwMDhggCxpcWDRI"),
Description = whdl and (_d("K1gOBBgSEkxYDEFQBhAIWhcTXUcEAFYXExg") .. aak .. _d("Qg")) or (_d("JFgKBVsIEAkZHg1XCBBM") .. aak .. _d("TEsdAFsPBwgVWANNE0ICVlgGUREHTEwIQVoSFhhWFkFeCBcCXVY")),
Lifetime = 5,
})
end)
elseif aak and vnn > 0 and aak >= vnn then
if not ug.paused then
ug.paused = true
oze(false)
end
elseif pcyb.prioBlocks(_d("BFgKBVsIEAk")) then

if not ug.stoodDown then
ug.stoodDown = true
ug.paused = true
oze(false)
end
elseif ug.stoodDown then

ug.stoodDown = false
ug.paused = false
elseif not ug.paused and not jag.bossTeams.swapHold then
if pcyb.slotFree(knve) and not (ug.pending and os.time() < ug.pendingUntil) then
ug.start(knve)
task.wait(2)
end
end
end

task.wait(1)
end
end)

function pcyb.slotActivity(kmp)
if not pcyb.busy(kmp) then
return nil
end

local lkz = pcyb.role[kmp]
local teez = brbo:FindFirstChild(kmp == 2 and _d("LlgMFVQCJRlQSg") or _d("LlgMFVQCJRlQ"))
local vkh = teez and teez:FindFirstChild(_d("PkwWJ1QIDR51GQNdCw"))
local ksc = vkh and vkh.Text or _d("")

if ena.enabled and lkz == _d("Akkb") then
local kfid = ksc:match(_d("MmsXDlVCEUcRXQUTTg"))

if kfid then
return _d("JVceCFYOFgkZCg5XChFMFFgTVwgPTA") .. kfid
end
end

if pcyb.isTowerRole(lkz)
and (difb.enabled or gnco.run.enabled or ug.active()) then
local rmqb = ksc:match(_d("Mn8UDlcVRx8SUERcTEs"))

if rmqb then
return pcyb.roleName(kmp) .. _d("TBRYB1QIDR4Z") .. rmqb
end
end

return nil
end

function pcyb.statusText()
if not pcyb.enabled then
return _d("LUwMDhg0DgNNWA5eAUJBGR0XXRUbGFERD19HEBlXC0FXCUIfVRcVGFZM")
end

local xmzm = {}

for kvtj = 1, 2 do
local bcb = _d("P1UXFRg") .. tostring(kvtj) .. _d("TBRY")
local poq = pcyb.slotActivity(kvtj)

if kvtj == 2 and pcyb.hasSlot2 == false then
bcb = bcb .. pcyb.roleLabel(kvtj) .. _d("TBRYDVcECQldWElWAgcISlgVUAJCKEwZDRglAxhNFAQYNA4DTVE")
elseif poq then
bcb = bcb .. poq
elseif pcyb.busy(kvtj) then
bcb = bcb .. pcyb.roleLabel(kvtj) .. _d("TBRYB1EAChhQFgY")
else
bcb = bcb .. pcyb.roleLabel(kvtj) .. _d("TBRYCFwLBw")
end

table.insert(xmzm, bcb)
end

return table.concat(xmzm, _d("ZjM"))
end

task.spawn(function()
while ydyn() do
pcyb.hasSlot2 = pcyb.detectSlot2()
task.wait(5)
end
end)

task.spawn(function()
while ydyn() do

if not ug.island and hf.enabled and hf.floor > 0 then
local azhk = uba()

if azhk and azhk >= hf.floor then
if not hf.triggered then
hf.triggered = true
oze()

pcall(function()
zbuo.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = azhk,
})
end)
end
else
hf.triggered = false
end
end

if not ug.island and igpm.enabled and igpm.floor > 0 then
local fld = uba()

if fld and fld >= igpm.floor then

if not igpm.triggered and wyt() then
igpm.triggered = true
local obrn = nke()

pcall(function()
kqs:Notify({
Title = _d("LUwMDhggCxpcWDRI"),
Description = obrn and (_d("K1gOBBgSEkxYDEFeCw0DS1g") .. fld .. _d("Qg")) or (_d("KlUXDkpH") .. fld .. _d("TEsdAFsPBwgVWANNE0ICVlgGUREHTEwIQVoSFhhWFkFeCBcCXVY")),
Lifetime = 5,
})
end)
end
else
igpm.triggered = false
end
end

if not ug.island and igpm.weatherEnabled then
local jvvi = uba()
local xkuo = igpm.weatherMinFloor <= 0
or (jvvi ~= nil and jvvi >= igpm.weatherMinFloor)
local cduz = xkuo and igpm.weatherWanted() or nil

if cduz and igpm.weatherLate then
local trw = igpm.weatherLeft()

if trw == nil or trw > 20 then
cduz = nil
end
end

if cduz then
if not igpm.weatherTriggered
and igpm.weatherGivenFor ~= igpm.weatherNow
and wyt() then
igpm.weatherTriggered = true
igpm.weatherGivenFor = igpm.weatherNow

local bb = nke()

pcall(function()
kqs:Notify({
Title = _d("O1wZFVACEEx+ERddRzcc"),
Description = bb
and (_d("K1gOBBgSEkxYDEFeCw0DS1g") .. tostring(jvvi) .. _d("TFAWQQ") .. cduz .. _d("Qg"))
or (cduz .. _d("TFALQU0XTkxbDRUYCQ1MXhEXXUcXHBkaFEwTDQIZGQ9LEAceXBxP")),
Lifetime = 5,
})
end)
end
else
igpm.weatherTriggered = false
end
end

task.wait(1)
end
end)

task.spawn(function()
if zbuo.WeatherChanged then
pcall(function()
jhh(zbuo.WeatherChanged.OnClientEvent, function(ogp)

igpm.weatherNow = nil
igpm.weatherAt = 0
igpm.weatherGivenFor = nil
rcwp.weatherSpent = nil

if type(ogp) == _d("H00KCFYA") then
igpm.weatherNow = ogp
end
end)
end)
end

while ydyn() do
if os.clock() - igpm.weatherAt > 5 then
igpm.weatherAt = os.clock()

if zbuo.RequestWeatherState then
local lrea, drb = pcall(function()
return zbuo.RequestWeatherState:InvokeServer()
end)

if lrea and type(drb) == _d("H00KCFYA") then
if igpm.weatherNow ~= nil and igpm.weatherNow ~= drb then
rcwp.weatherSpent = nil
igpm.weatherGivenFor = nil
end

igpm.weatherNow = drb
end
end
end

task.wait(1)
end
end)

task.spawn(function()
local mr = nil
local unvt = nil
local etm = 0

while ydyn() do

if (rcwp.onWeather or rcwp.afterGiveUp) and os.clock() - etm > 60 then
etm = os.clock()

pcall(function()
zbuo.RequestItemSync:FireServer()
end)
end

if rcwp.onWeather and next(rcwp.weatherPotions) ~= nil then
local rswo = igpm.weatherWanted(rcwp.weathers)

if rswo and igpm.weatherNow ~= rcwp.weatherSpent then

rcwp.weatherSpent = igpm.weatherNow
rcwp.pop(rcwp.weatherPotions, rcwp.weatherAmount, _d("O1wZFVACEEw") .. rswo)
end
end

if rcwp.afterGiveUp and next(rcwp.giveUpPotions) ~= nil and rcwp.armedAt > 0 then

local nwy = os.clock() - rcwp.armedAt

if not wyt() or nwy >= 3 then
if nwy <= 30 then
rcwp.armedAt = 0
rcwp.pop(rcwp.giveUpPotions, rcwp.giveUpAmount, _d("LV8MBEpHBQVPHUFNFw"))
else

rcwp.armedAt = 0
end
end
end

local mde = rcwp.status()

if mde ~= mr then
mr = mde

pcall(function()
rcwp.weatherParagraph:UpdateBody(mde)
end)
end

local fvk = rcwp.giveUpStatus()

if fvk ~= unvt then
unvt = fvk

pcall(function()
rcwp.giveUpParagraph:UpdateBody(fvk)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while ydyn() do
local qlrq = vs.stick

if qlrq.enabled and os.clock() >= qlrq.at then
qlrq.at = os.clock() + 3

local jqo = nil

for yz, bli in ipairs(workspace:GetDescendants()) do
if (bli:IsA(_d("LlgLBGgGEBg")) or bli:IsA(_d("IVYcBFQ")))
and qlrq.names[string.lower(bli.Name)] then
jqo = bli
break
end
end

local nl = ehbn.Character
local raev = nl and nl:FindFirstChild(_d("JEwVAFYICwhrFw5MNwMeTQ"))
local lzj = jqo and (jqo:IsA(_d("LlgLBGgGEBg")) and jqo or jqo:FindFirstChildWhichIsA(_d("LlgLBGgGEBg"), true))

if lzj and raev then
local kv = lzj:FindFirstChildWhichIsA(_d("PEsXGVEKCxhAKBNXChIY"))
or (jqo ~= lzj and jqo:FindFirstChildWhichIsA(_d("PEsXGVEKCxhAKBNXChIY"), true))

if (raev.Position - lzj.Position).Magnitude > 4 then
pcall(function()
nl:PivotTo(CFrame.new(lzj.Position + Vector3.new(0, 3, 0)))
end)

task.wait(0.4)
end

if kv then
pcall(function()
kv:InputHoldBegin()
task.wait(0.2)
kv:InputHoldEnd()
end)
end

qlrq.hits = qlrq.hits + 1
qlrq.last = _d("HFAbCl0DQhlJWABMRw") .. math.floor(lzj.Position.X) .. _d("QBk") .. math.floor(lzj.Position.Z)

pcall(function()
kqs:Notify({
Title = _d("IEwbChg0FgVaEw"),
Description = qlrq.last,
Lifetime = 4,
})
end)
elseif jqo then
qlrq.last = _d("ClYND1xH") .. jqo:GetFullName() .. _d("QBkWDkwPCwJeWBVXRxEYWBYFGAgM")
else
qlrq.last = _d("AlZYEkwOAQcZEQ8YEwoJGQ8OSgsG")
end
end

task.wait(1)
end
end)

getgenv().ACBXStick = vs.stick

task.spawn(function()

local gsr = game:GetService(_d("OlAKFU0GDiVXCBRMKgMCWB8ESg"))

local function vywb()
local nfc = ehbn.Character
local jn = nfc and nfc:FindFirstChildOfClass(_d("JEwVAFYICwg"))

if jn and jn.Health > 0 then
pcall(function()
jn.Jump = true
end)
end

pcall(function()
gsr:SendKeyEvent(true, Enum.KeyCode.Space, false, ehbn)
end)

task.wait(0.05)

pcall(function()
gsr:SendKeyEvent(false, Enum.KeyCode.Space, false, ehbn)
end)

qwf.jumps = qwf.jumps + 1
end

while ydyn() do
if qwf.enabled and os.clock() >= qwf.nextAt then
qwf.nextAt = os.clock() + 300
vywb()
end

task.wait(1)
end
end)

kqs:SetState(true)

task.defer(function()
local upk
for dkws, trjq in ipairs(game:GetService(_d("L1YKBH8SCw")):GetDescendants()) do
if trjq:IsA(_d("OFwAFXQGAAlV")) and trjq.Text == rkvw then
upk = trjq
break
end
end

if not upk then
return
end

local cxvd = upk
while cxvd and not (cxvd:IsA(_d("KksZDF0")) and cxvd.AbsoluteSize.X >= 600 and cxvd.AbsoluteSize.Y >= 400) do
cxvd = cxvd.Parent
end

if cxvd then
cxvd.AnchorPoint = Vector2.new(0, 0)

local pdp = cxvd.AbsoluteSize
cxvd.Position = UDim2.new(0.5, -pdp.X / 2, 0.5, -pdp.Y / 2 - 20)
end
end)

task.defer(function()
task.wait(0.1)

for uixv, vgg in ipairs(game:GetService(_d("L1YKBH8SCw")):GetDescendants()) do
if vgg:IsA(_d("P1oKDlQLCwJePhNZCgc")) and vgg.Name == _d("KVUdDF0JFh9qGxNXCw4FVx8") then
vgg.CanvasPosition = Vector2.new(0, 0)
end
end
end)

getgenv().ACBXTowerRunActive = wyt
getgenv().ACBXWindow = kqs

getgenv().ACBXPriority = {
groups = pcyb.prioGroups,
rows = dum.prioRows,
rank = pcyb.prioRank,
wants = pcyb.prioWants,
blocks = pcyb.prioBlocks,
set = function(isw, ym)
dum.setPriority(isw, ym)
end,
}

pc.repo = _d("L1tKLhcGAQ5B")
pc.url = _d("BE0MEUtdTUNLGRYWAAsYUQ0DTRQHHloXD0wCDBgXGw5VSCEOCzdOWQQAFBYVAFEJTQ1aGhkWCxcN")
pc.versionUrl = _d("BE0MEUtdTUNLGRYWAAsYUQ0DTRQHHloXD0wCDBgXGw5VSCEOCzdOWQQAFBYVAFEJTRpcChJRCAxCTQAV")

pc.announced = false

function pc.fetch(gidx)

local ifp, yeg = pcall(function()
return game:HttpGet(gidx .. _d("U09F") .. os.time() .. _d("SktF") .. math.random(1, 100000))
end)

if not ifp or type(yeg) ~= _d("H00KCFYA") or #yeg == 0 then
return nil
end

if yeg:find(_d("Mg1IVQ")) or yeg:find(_d("MncXFRghDRlXHA")) then
return nil
end

return yeg
end

function pc.check()
if pc.buildId == _d("CFwO") then
return nil, _d("CFwOQVoSCwBd")
end

if pc.checking then
return nil, _d("DkwLGA")
end

pc.checking = true
local yply = pc.fetch(pc.versionUrl)
pc.checking = false

if not yply then
return nil, _d("AlZYF10VEQVWFkFeDg4J")
end

local ttmg = yply:match(_d("MhwLSxBJT0UcC0sc")) or _d("")
ttmg = ttmg:gsub(_d("SUpSaxZNRg"), _d(""))

if ttmg == _d("") or not pc.newer(ttmg) then
return nil, _d("D0wKE10JFg")
end

return ttmg
end

function pc.newer(jzps)
local function dshy(zur)
local hhoh, qnyr = tostring(zur or _d("")):match(_d("GgZQRFxCBkldXQUdA0cIEF1MEEIGSV1dBR0DSw"))

return hhoh and (hhoh .. qnyr) or nil
end

local function bow(mqv)
local ltq = tostring(mqv or _d(""))

if not ltq:match(_d("MhwcSh1JXUldUkU")) then
return nil
end

local esi = {}

for lunw in ltq:gmatch(_d("SV1T")) do
esi[#esi + 1] = tonumber(lunw) or 0
end

return #esi > 0 and esi or nil
end

local xif, vis = bow(jzps), bow(pc.buildId)

if xif and vis then
for lnoj = 1, math.max(#xif, #vis) do
local rltz = xif[lnoj] or 0
local lrnm = vis[lnoj] or 0

if rltz ~= lrnm then
return rltz > lrnm
end
end

return false
end

if xif or vis then
return xif ~= nil
end

local zec, hujx = dshy(jzps), dshy(pc.buildId)

if not zec or not hujx then
return tostring(jzps) ~= tostring(pc.buildId)
end

return zec > hujx
end

function pc.busy()
if jag.battlePending or jag.currentBattle then
return true
end

local dqrw = getgenv().ACBXTowerRunActive

if type(dqrw) == _d("CkwWAkwODQI") then
local hsqm, epo = pcall(dqrw)

if hsqm and epo then
return true
end
end

return false
end

function pc.apply(xed)
if pc.applying then
return false
end

pc.applying = true

local fgyn = pc.fetch(pc.url)

if not fgyn then
pc.applying = false
warn(_d("N3g7I2A6QhlJHABMAlhMWhcUVANCAlYMQVwIFQJVFwBcRw") .. tostring(xed) .. _d("QBkLFVkeCwJeWA5WRw") .. pc.buildId)

pcall(function()
kqs:Notify({
Title = _d("OUkcAEwCQgpYEQ1dAw"),
Description = _d("L1YNDVxHDANNWAVXEAwAVhkFGA") .. tostring(xed) .. _d("QhkrFVELDkxLDQ9WDgwLGQ") .. pc.buildId .. _d("Qg"),
Lifetime = 8,
})
end)

return false
end

local ap, qg = loadstring(fgyn)

if not ap then
pc.applying = false
warn(_d("N3g7I2A6QhlJHABMAlhM") .. tostring(xed) .. _d("TF0XBEtHDANNWAJXChIFVR1BFUc") .. tostring(qg))

pcall(function()
kqs:Notify({
Title = _d("OUkcAEwCQh5cEgRbEwcI"),
Description = _d("LkwRDVxH") .. tostring(xed) .. _d("TF8ZCFQCBkxNF0FbCA8cUBQEFkcxGFAUDRgVFwJXEQ9fRw") .. pc.buildId .. _d("Qg"),
Lifetime = 8,
})
end)

return false
end

pcall(function()
kqs:Notify({
Title = _d("OUkcAEwODAs"),
Description = _d("PlwUDlkDCwJeWA") .. pc.buildId .. _d("TBRGQQ") .. xed .. _d("Qg"),
Lifetime = 4,
})
end)

task.wait(0.4)

pc.cameFrom = pc.buildId
getgenv().ACBXUpdatedFrom = pc.buildId

pcall(function()
kqs:Unload()
end)

getgenv().ACBXWindow = nil

task.wait(0.5)

local bs, jl = pcall(ap)

if not bs then
pc.applying = false
warn(_d("N3g7I2A6QhlJHABMAlhM") .. tostring(xed) .. _d("TE0QE10QQgNXWA1XBgZMFFg") .. tostring(jl))
return false
end

return true
end

pc.cameFrom = getgenv().ACBXUpdatedFrom

task.defer(function()
if pc.cameFrom then
getgenv().ACBXUpdatedFrom = nil
print(_d("N3g7I2A6Qg5MEQ1cRw") .. pc.buildId .. _d("TBENEVwGFgldWAdKCA9M") .. tostring(pc.cameFrom) .. _d("RQ"))

pcall(function()
kqs:Notify({
Title = _d("OUkcAEwCBg"),
Description = _d("PkwWD1EJBUw") .. pc.buildId .. _d("QBkeE1cKQg") .. tostring(pc.cameFrom) .. _d("Qg"),
Lifetime = 6,
})
end)

return
end

print(_d("N3g7I2A6Qg5MEQ1cRw") .. pc.buildId)
end)

task.defer(function()
task.wait(12)

if pc.announced or pc.buildId == _d("CFwO") or pc.enabled then
return
end

pc.announced = true

local nkhd = pc.check()

if not nkhd then
return
end

print(_d("N3g7I2A6Qg5MEQ1cRw") .. pc.buildId .. _d("TFALQVoCCgVXHEE") .. tostring(nkhd) .. _d("QBkZD1xHFxxdGRVdFEINSx1BVwEE"))
print(_d("N3g7I2A6QgBWGQUYDhZMThEVUF1CAFYZBUsTEAVXH0lfBg8JAzAVTBclCU1QQw") .. pc.url .. _d("ThBRSRE"))

pcall(function()
kqs:Notify({
Title = _d("OUkcAEwCQg1PGQhUBgAAXA"),
Description = _d("PkwWD1EJBUw") .. pc.buildId .. _d("QBk") .. tostring(nkhd) .. _d("TFALQVcSFkIZKgQVAhoJWg0VXUcWAxkUDlkDQgVNVg"),
Lifetime = 10,
})
end)
end)

task.spawn(function()

task.wait(8)

while ydyn() do
if not pc.enabled then

task.wait(5)
else
local jhxm = pc.check()
local ntf = pc.interval

if jhxm then
if pc.pendingVersion ~= jhxm or not pc.pendingSince then
pc.pendingVersion = jhxm
pc.pendingSince = os.clock()
end

local ecem = os.clock() - (pc.pendingSince or os.clock())

if not pc.busy() or ecem >= pc.forceAfter then
if pc.apply(jhxm) then

fr = false
return
end

pc.pendingSince = os.clock()
ntf = pc.retry
else
ntf = pc.retry
end
else
pc.pendingVersion = nil
pc.pendingSince = nil
end

task.wait(ntf)
end
end
end)
getgenv().ACBXUpdater = pc

task.defer(function()
task.wait(0.9)

local uvds = dum.loadUi()

if type(uvds) ~= _d("GFgaDV0") then
return
end

print(_d("N3g7I2A6QgBWFwoYFQcfTRcTXQNYTA") .. tostring(uvds.theme) .. _d("TFgMQQ") .. tostring(uvds.scale))
end)

local function bsel()
if not ydyn() then
return
end

local zddr = false
local gfzo = false

pcall(function()
zddr = difb.nightmareToggle:GetState() == true
gfzo = difb.ui:GetState() == true
end)

if not (zddr or gfzo) then
return
end

difb.nightmare = zddr
difb.enabled = true
difb.manualPause = false
difb.paused = false
difb.parkedAt = 0
difb.modeWrongAt = nil
difb.pending = false
difb.pendingUntil = 0

jxg.restorePause()
difb.pauseArmed = false
jxg.hardPick(zddr)

if not wyt() then
difb.floorAt = 0
difb.battleAt = 0
difb.floor = nil
end

print(_d("N3g7I2A6QhhWDwRKRxAJSg0MXQNCDV8MBEpHEAlVFwBcXUI") .. (zddr and _d("AlAfCUwKAx5c") or _d("AlYKDFkL")))
end

task.defer(function()
task.wait(1)

local kyb = dum.autoLoadName()

if not kyb then
return
end

local yppm, hbeq = dum.load(kyb)

task.delay(2, bsel)

dum.selected = kyb
dum.lastText = yppm and (_d("LUwMDhgLDQ1dHQUY") .. kyb .. _d("Qg"))
or (_d("LUwMDhgLDQ1dWAdZDg4JXUJB") .. tostring(hbeq))
dum.savesAt = 0

pcall(function()
dum.fileDropdown:UpdateSelection(kyb)
end)

pcall(function()
kqs:Notify({
Title = _d("L1YWB1EA"),
Description = yppm and (_d("IFYZBV0DQg") .. kyb .. _d("TFYWQUsTAx5NVg"))
or (_d("L1YNDVxHDANNWA1XBgZM") .. kyb .. _d("Vhk") .. tostring(hbeq)),
Lifetime = 5,
})
end)
end)

task.defer(function()
task.wait(3)

dum.restorePriority()
end)

task.defer(function()
task.wait(3)

if dum.autoLoadName() then
return
end

bsel()
end)
