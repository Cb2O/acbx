local _d = (function()
local A = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local M = {}
local cache = {}
for i = 1, #A do
M[string.sub(A, i, i)] = i - 1
end
local K = string.char(114, 111, 49, 56, 119, 117, 119)
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

local kcp = "ACB Rebirth v0.9993"

local function vpw(fxb)
for jj, vnbt in ipairs(fxb:GetDescendants()) do
if vnbt:IsA(_d("JgpJTDsUFRcD")) and vnbt.Text == kcp then
local cbf = vnbt
while cbf and not cbf:IsA(_d("IQxDXRIbMAcG")) do
cbf = cbf.Parent
end
return cbf
end
end
end

local function cd()
local fjve = game:GetService(_d("IgNQQRIHBA")).LocalPlayer

for jne, ivs in ipairs({
(gethui and gethui() or game:GetService(_d("MQBDXTAAHg"))),
game:GetService(_d("MQBDXTAAHg")),
fjve and fjve:FindFirstChild(_d("IgNQQRIHMAcG")),
}) do
for mbm, qev in ipairs(ivs:GetChildren()) do

if qev:IsA(_d("IQxDXRIbMAcG")) then
local ulul = qev:FindFirstChild(_d("MA5CXQ"))

if ulul and ulul:FindFirstChild(_d("IQZVXRUUBQ")) and ulul:FindFirstChild(_d("MQBfTBIbAw")) then
return qev
end
end
end
end
end

if cd() and getgenv().ACBXAllowReload ~= true then
local cma = getgenv().ACBXWindow
local jeu = false
local kdg = false

if cma and cma.Dialog then
pcall(function()
if cma.GetState and cma:GetState() == false then
cma:SetState(true)
end

cma:Dialog({
Title = _d("MyxzGCUQFRsdRVBXHARSDl1KEhQTC09DTRkbHhwI"),
Description = _d("M09SVwcMVxscEVkbBxITC0gYGxoWFgpVGB4bVwYHWEtXBhIBHFhXGVtXIApBVBYWElIGRRgAHAMaT0VQHgZXHQFUB1chHxdPQ00ZGx4cCBFbGAUOUhxFVwcGVxQGQ0sDWVcBABFXGRkOUgBfXVcQARcdEVwFHAEXHBFMHxBXEwxSVwIbA1w"),
Buttons = {
{
Name = _d("IApBVBYWEg"),
Callback = function()
kdg = true
jeu = true
end,
},
{
Name = _d("OQpUSA"),
Callback = function()
jeu = true
end,
},
},
})
end)
else

kdg = true
jeu = true
end

local pq = os.clock() + 90

while not jeu and os.clock() < pq do
task.wait(0.25)
end

if not kdg then
warn(_d("KS5yei8oVx4AUFxXBxIUGkJdE1VaUhtZXVcWGAIWEUwfFANSBkIYBQAZHAZfX1cGAxMWQhZXNhsbDFoYJRAHHg5SXVcBGFIcRlkHVR4GQxFXBVUCAQoRbRkZGBMLEUsUBx4CGxFRGVUeBhwRaxIBAxsBVktXARYQQQ"))

return
end

warn(_d("KS5yei8oVwAKQVQWFh4cCBFMHxBXABpfVh4bEFIMXkgOVQAbG1kYAx0eAU9eVhJb"))
end

getgenv().ACBXAllowReload = nil

local ig = getgenv().ACBXWindow
if ig then
pcall(function()
ig:Unload()
end)
end

for df, du in ipairs({
game:GetService(_d("MQBDXTAAHg")),
game:GetService(_d("IgNQQRIHBA")).LocalPlayer:FindFirstChild(_d("IgNQQRIHMAcG")),
}) do
if du then
local ikq = vpw(du)
if ikq then
ikq:Destroy()
end
end
end

local wc = game:GetService(_d("IgNQQRIHBA"))
local mkd = game:GetService(_d("IApBVB4WFgYKVWsDGgUTCFQ"))
local yrpn = game:GetService(_d("Ig5FUBEcGRYGX18kEAUEBlJd"))
local cci = game:GetService(_d("IBpfaxIHARsMVA"))
local ga = wc.LocalPlayer
local rprq = ga:WaitForChild(_d("IgNQQRIHMAcG"))

local ux = false

local function wa()
pcall(function()
local rdhe = game:GetService(_d("JhhUXRkmEgAZWFsS"))
local qfco = (gethui and gethui()) or rprq
local kds = Color3.fromRGB(77, 166, 255)
local ptnz = ga.DisplayName

local function edva(echd, fiq, vert)
rdhe:Create(
echd,
TweenInfo.new(fiq, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
vert
):Play()
task.wait(fiq)
end

local bdig = Instance.new(_d("IQxDXRIbMAcG"))
bdig.Name = _d("MyxzYD4bAwAA")
bdig.IgnoreGuiInset = true
bdig.DisplayOrder = 1000000
bdig.ResetOnSpawn = false
bdig.Parent = qfco

local ox = Instance.new(_d("NB1QVRI"))
ox.Size = UDim2.fromScale(1, 1)
ox.BackgroundColor3 = Color3.fromRGB(4, 6, 11)
ox.BackgroundTransparency = 1
ox.BorderSizePixel = 0
ox.Parent = bdig

local bzvf = Instance.new(_d("NB1QVRI"))
bzvf.AnchorPoint = Vector2.new(0.5, 0.5)
bzvf.Position = UDim2.fromScale(0.5, 0.5)
bzvf.Size = UDim2.fromOffset(400, 176)
bzvf.BackgroundColor3 = Color3.fromRGB(11, 16, 26)
bzvf.BackgroundTransparency = 1
bzvf.BorderSizePixel = 0
bzvf.Parent = bdig

local rw = Instance.new(_d("JyZyVwUbEgA"))
rw.CornerRadius = UDim.new(0, 14)
rw.Parent = bzvf

local vtzr = Instance.new(_d("JyZiTAUaHBc"))
vtzr.Color = Color3.fromRGB(46, 60, 86)
vtzr.Thickness = 1
vtzr.Transparency = 1
vtzr.Parent = bzvf

local zjd = Instance.new(_d("NB1QVRI"))
zjd.Size = UDim2.fromOffset(44, 2)
zjd.Position = UDim2.new(0.5, -22, 0, 34)
zjd.BackgroundColor3 = kds
zjd.BorderSizePixel = 0
zjd.BackgroundTransparency = 1
zjd.Parent = bzvf

local tt = Instance.new(_d("JgpJTDsUFRcD"))
tt.BackgroundTransparency = 1
tt.Size = UDim2.new(1, -48, 0, 48)
tt.Position = UDim2.fromOffset(24, 42)
tt.Font = Enum.Font.GothamBold
tt.Text = _d("MS0RcCI3")
tt.TextSize = 28
tt.TextYAlignment = Enum.TextYAlignment.Center
tt.TextColor3 = Color3.fromRGB(236, 242, 255)
tt.TextTransparency = 1
tt.Parent = bzvf

local ext = Instance.new(_d("JgpJTDsUFRcD"))
ext.BackgroundTransparency = 1
ext.Size = UDim2.new(1, -48, 0, 20)
ext.Position = UDim2.fromOffset(24, 94)
ext.Font = Enum.Font.Gotham
ext.Text = _d("HgBQXB4bEA")
ext.TextSize = 14
ext.TextColor3 = Color3.fromRGB(150, 163, 186)
ext.TextTransparency = 1
ext.Parent = bzvf

local hi = Instance.new(_d("NB1QVRI"))
hi.Size = UDim2.fromOffset(240, 3)
hi.Position = UDim2.new(0.5, -120, 0, 130)
hi.BackgroundColor3 = Color3.fromRGB(34, 44, 64)
hi.BorderSizePixel = 0
hi.BackgroundTransparency = 1
hi.Parent = bzvf

local ex = Instance.new(_d("NB1QVRI"))
ex.Size = UDim2.fromScale(0, 1)
ex.BackgroundColor3 = kds
ex.BorderSizePixel = 0
ex.BackgroundTransparency = 1
ex.Parent = hi

local nq = Instance.new(_d("JyZyVwUbEgA"))
nq.CornerRadius = UDim.new(0, 4)
nq.Parent = hi

local ptne = Instance.new(_d("JyZyVwUbEgA"))
ptne.CornerRadius = UDim.new(0, 4)
ptne.Parent = ex

edva(ox, 0.35, { BackgroundTransparency = 0.15 })
task.spawn(function()
edva(bzvf, 0.3, { BackgroundTransparency = 0 })
end)
task.spawn(function()
edva(vtzr, 0.3, { Transparency = 0 })
end)
edva(tt, 0.3, { TextTransparency = 0 })
edva(zjd, 0.3, { BackgroundTransparency = 0 })
edva(ext, 0.3, { TextTransparency = 0 })
edva(hi, 0.3, { BackgroundTransparency = 0 })
edva(ex, 0.3, { BackgroundTransparency = 0 })

local ofwd = { _d("HgBQXB4bEA"), _d("HgBQXB4bEFw"), _d("HgBQXB4bEFxB"), _d("HgBQXB4bEFxBHw") }
task.spawn(function()
rdhe:Create(ex, TweenInfo.new(1.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
Size = UDim2.fromScale(1, 1),
}):Play()
for vmug = 1, 6 do
ext.Text = ofwd[(vmug - 1) % #ofwd + 1]
task.wait(0.2)
end
end)
task.wait(1.2)

edva(tt, 0.2, { TextTransparency = 1 })
edva(ext, 0.2, { TextTransparency = 1 })
edva(hi, 0.2, { BackgroundTransparency = 1 })
edva(ex, 0.2, { BackgroundTransparency = 1 })

tt.Text = _d("JgdQVhwGVxQAQxgCBh4cCBFVDlUEER1YSAM")
tt.TextSize = 22
tt.TextWrapped = true
ext.Text = kcp
edva(tt, 0.25, { TextTransparency = 0 })
edva(ext, 0.25, { TextTransparency = 0 })
task.wait(1.1)
edva(tt, 0.2, { TextTransparency = 1 })
edva(ext, 0.2, { TextTransparency = 1 })

tt.Text = _d("JQpdWxgYElI") .. ptnz .. _d("UjteGDQ3VzoaUw")
tt.TextSize = 22
ext.Text = _d("ARtQSgMcGRU")
edva(tt, 0.3, { TextTransparency = 0 })
edva(ext, 0.3, { TextTransparency = 0 })
task.wait(1.3)

edva(tt, 0.25, { TextTransparency = 1 })
edva(ext, 0.25, { TextTransparency = 1 })
edva(ox, 0.35, { BackgroundTransparency = 1 })

bdig:Destroy()
end)

ux = true
end

task.spawn(wa)

local vps = mkd:WaitForChild(_d("IApcVwMQBA"))

local function ph(kk, hz)
local htfd = vps:FindFirstChild(kk)

if htfd then
return htfd
end

local ortc = vps:WaitForChild(kk, hz or 3)

if not ortc then
warn(_d("MyxzYE1VBRcCXkwSVVA") .. kk .. _d("VU9fV1cZGBwIVEpXEA8bHEVLVxwZUhtZUQRVEBMCVBgBEAUBBl5WV1hXBgdQTFcTEhMbREoSVR4BT15eEQ"))
end

return ortc
end

local fw = {
StartNPCBattle = ph(_d("IRtQSgM7JzEtUEwDGRI")),
NPCBattleResult = ph(_d("PD9yehYBAx4KY10EABsG")),
SyncNPCCooldowns = ph(_d("IRZfWzklNDEAXlQTGgAcHA")),
SetNPCDifficulty = ph(_d("IQpFdic2MxsJV1EUABsGFg")),
StartRaidBattle = ph(_d("IRtQSgMnFhsLc1kDARsX")),
SetRaidDifficulty = ph(_d("IQpFahYcEzYGV14eFgIeG0g")),
RaidProgress = ph(_d("IA5YXCcHGBUdVEsE")),
RequestRaidProgress = ph(_d("IApATRIGAyAOWFwnBxgVHVRLBA")),
SyncInfiniteRoomProgress = ph(_d("IRZfWz4bERsBWEwSJxgdAmFKGBIFFxxC")),
BuyRaidItem = ph(_d("MBpIahYcEzsbVFU")),
RaidShopState = ph(_d("IA5YXCQdGAI8RVkDEA")),
RaidNotify = ph(_d("IA5YXDkaAxsJSA")),
SyncItems = ph(_d("IRZfWz4BEh8c")),

UseItem = ph(_d("JxxUcQMQGg")),
RequestWeatherState = ph(_d("IApATRIGAyUKUEwfEAUhG1BMEg")),
WeatherChanged = ph(_d("JQpQTB8QBTEHUFYQEBM")),
FishingUpdate = ph(_d("NAZCUB4bECcfVVkDEA")),
FishingThrow = ph(_d("NAZCUB4bECYHQ1cA")),
FishingReel = ph(_d("NAZCUB4bECAKVFQ")),
FishingStop = ph(_d("NAZCUB4bECEbXkg")),

FishingIslandTeleport = ph(_d("NAZCUB4bEDscXVkZESMXA1RIGAcD")),

SyncCollection = ph(_d("IRZfWzQaGx4KUkweGhk")),
RequestSync = ph(_d("IApATRIGAyEWX1s")),
ClaimIndexReward = ph(_d("MQNQURo8GRYKSWoSAhYACw")),
RequestAchievements = ph(_d("IApATRIGAzMMWVESAxIfCl9MBA")),
SyncAchievements = ph(_d("IRZfWzYWHxsKR10aEBkGHA")),
ClaimAchievement = ph(_d("MQNQURo0FBoGVE4SGBIcGw")),
RequestQuests = ph(_d("IApATRIGAyMaVEsDBg")),
SyncQuests = ph(_d("IRZfWyYAEgEbQg")),
ClaimQuest = ph(_d("MQNQURokAhccRQ")),
RequestPeriodicQuests = ph(_d("IApATRIGAyIKQ1EYER4RPkRdBAEE")),
SyncPeriodicQuests = ph(_d("IRZfWycQBRsAVVEUJAIXHEVL")),
ClaimPeriodicQuest = ph(_d("MQNQURolEgAGXlweFiYHCkJM")),

OpenFuseDialog = ph(_d("PR9UVjEABBcrWFkbGhA")),
FuseCards = ph(_d("NBpCXTQUBRYc")),
OpenDeconstructDialog = ph(_d("PR9UVjMQFB0BQkwFABQGK1hZGxoQ")),
DeconstructCards = ph(_d("NgpSVxkGAwAaUkw0FAUWHA")),
OpenPackShop = ph(_d("PR9UVicUFBk8WVcH")),
EquipPack = ph(_d("Nx5EUQclFhEE")),

RequestSkillTree = ph(_d("IApATRIGAyEEWFQbIQUXCg")),
BuySkillNode = ph(_d("MBpIaxwcGx4hXlwS")),
OpenAccessoryShop = ph(_d("PR9UVjYWFBccQlcFDCQaAEE")),
OpenAccessoryShop2 = ph(_d("PR9UVjYWFBccQlcFDCQaAEEK")),
BuyAccessory = ph(_d("MBpIeRQWEgEcXkoO")),
BuyAccessory2 = ph(_d("MBpIeRQWEgEcXkoORw")),
EquipAccessory = ph(_d("Nx5EUQc0FBEKQksYBw4")),

RedeemCode = ph(_d("IApVXRIYNB0LVA")),

OpenNPCDialog = ph(_d("PR9UVjklNDYGUFQYEg")),
TeleportToWorld = ph(_d("JgpdXQcaBQY7Xm8YBxsW")),
RaidBattleStarted = ph(_d("IA5YXDUUAwYDVGsDFAUGClU")),
BattleEnd = ph(_d("MA5FTBsQMhwL")),
StartBattle = ph(_d("IRtQSgM3FgYbXV0")),
RequestInfiniteRoomProgress = ph(_d("IApATRIGAzsBV1EZHAMXPV5XGiUFHQhDXQQG")),
EndTowerRemote = ph(_d("NwFVbBgCEgA9VFUYARI")),
SaveClientData = ph(_d("IQ5HXTQZHhcBRXwWARY")),
OpenRaidShop = ph(_d("PR9UViUUHhY8WVcH")),
RequestItemSync = ph(_d("IApATRIGAzsbVFUkDBkR")),
FishingGetState = ph(_d("NAZCUB4bEDUKRWsDFAMX")),
FishingSetAuto = ph(_d("NAZCUB4bECEKRXkCARg")),
FishingShop = ph(_d("NAZCUB4bECEHXkg")),
DigGetState = ph(_d("NgZWfxIBJAYORV0")),
DigShop = ph(_d("NgZWax8aBw")),
DigAction = ph(_d("NgZWeRQBHh0B")),
DigUpdate = ph(_d("NgZWbQcRFgYK")),
}

local gyro = require(mkd.ModuleScripts.NPCData)
local tgg = require(mkd.ModuleScripts.WorldDifficultyData)
local bv = require(mkd.ModuleScripts.BossData)
local pdqj = require(mkd.ModuleScripts.RaidData)
local wsho = require(mkd.ModuleScripts.InfiniteRoomData)
local gws = require(mkd.ModuleScripts.CraftData)
local co = require(mkd.ModuleScripts.AchievementData)
local czcy = require(mkd.ModuleScripts.RaidShopData)
local wih = require(mkd.ModuleScripts.ItemData)
local fp = require(mkd.ModuleScripts.CardData)
local li = require(mkd.ModuleScripts.SkillTreeData)

local ojev = {
enabled = false,
role = { _d("BgBGXQU"), _d("HB9S") },

picked = { _d("JgBGXQU"), _d("PD9yGBUUAwYDVEs") },
hasSlot2 = nil,
toggle = nil,

optionsFor = {
{ _d("JgBGXQU"), _d("Og5dVBgCEhcBEUwYAhIA"), _d("PD9yGBUUAwYDVEs") },
{ _d("PD9yGBUUAwYDVEs"), _d("OxxdWRkRVxoOQ1wUGgUX") },
},
roleIds = {
Tower = _d("BgBGXQU"),

[_d("Og5DXBQaBRdPRVcAEAU")] = _d("Gg5DXBQaBRc"),
[_d("PD9yGBUUAwYDVEs")] = _d("HB9S"),
[_d("Og5dVBgCEhcBEUwYAhIA")] = _d("Gg5dVBgCEhcB"),
[_d("OxxdWRkRVxoOQ1wUGgUX")] = _d("Gg5DXBQaBRc"),
},
roleNames = {
tower = _d("JgBGXQU"),
hardcore = _d("OxxdWRkRVxoOQ1wUGgUX"),
npc = _d("PD9yGBUUAwYDVEs"),
halloween = _d("Og5dVBgCEhcBEUwYAhIA"),
},
}

function ojev.detectSlot2()
local eeo = rprq:FindFirstChild(_d("IQpFTB4bEAEoRFE"))
local hrxa = eeo and eeo:FindFirstChild(_d("IQNeTCMQFh9dY1cA"), true)

if hrxa then
return hrxa.Visible == true
end

return nil
end

function ojev.roleSlot(nob)
if not ojev.enabled then
return 1
end

for wx = 1, 2 do
if ojev.role[wx] == nob then
return wx
end
end

return nil
end

function ojev.isTowerRole(gyyu)
return gyyu == _d("BgBGXQU") or gyyu == _d("Gg5DXBQaBRc") or gyyu == _d("Gg5dVBgCEhcB")
end

function ojev.towerSlot()
return ojev.roleSlot(_d("BgBGXQU"))
end

function ojev.hardcoreSlot()
local lhk = ojev.roleSlot(_d("Gg5DXBQaBRc"))

if lhk == 2 and ojev.hasSlot2 == false then
return 1
end

return lhk
end

function ojev.halloweenSlot()

local ecfb = ojev.roleSlot(_d("Gg5dVBgCEhcB"))

if ecfb == 1 then
return 1
end

return nil
end

function ojev.roomSlot()
local zko = ojev.roleSlot(_d("HB9S"))

if not ojev.enabled then
return 1
end

if zko == nil then
return nil
end

if zko == 2 and ojev.hasSlot2 == false then
return 1
end

return zko
end

function ojev.splitNpc()
return ojev.enabled and ojev.role[1] == _d("HB9S") and ojev.role[2] == _d("HB9S")
end

function ojev.busy(twng)
local ask = rprq:FindFirstChild(twng == 2 and _d("OwFzWQMBGxdd") or _d("OwFzWQMBGxc"))

return ask ~= nil and ask:IsA(_d("MABeVCEUGwcK")) and ask.Value == true
end

function ojev.roleName(td)
return ojev.roleNames[ojev.role[td]] or ojev.roleNames.npc
end

function ojev.roleLabel(kfve)
return ojev.picked[kfve] or ojev.roleName(kfve)
end

local ft = nil

if mkd:FindFirstChild(_d("PwBVTRsQJBEdWEgDBg")) and mkd.ModuleScripts:FindFirstChild(_d("Og5dVBgCEhcBZVcAEAU2DkVZ")) then
local bx, tx = pcall(function()
return require(mkd.ModuleScripts.HalloweenTowerData)
end)

if bx then
ft = tx
end
end

local pa = nil

if mkd:FindFirstChild(_d("PwBVTRsQJBEdWEgDBg")) and mkd.ModuleScripts:FindFirstChild(_d("NAZCUB4bEDYORVk")) then
local xcv, qqrj = pcall(function()
return require(mkd.ModuleScripts.FishingData)
end)

if xcv then
pa = qqrj
end
end

local function szvu(puc)
return tostring(puc):reverse():gsub(_d("WkpVHRNQE1s"), _d("V14d")):reverse():gsub(_d("LEM"), _d(""))
end

local fvtg = {
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

getgenv().ACBXHalloweenUpgrades = fvtg.upgrade
getgenv().ACBXHalloweenTower = fvtg.run

fvtg.shopData = czcy.ShopById.halloween
fvtg.shopItems = {}
fvtg.shopLabels = {}
fvtg.cardNames = {
hw_brook = _d("MB1eVxxVXz8aQlEUFBtSPFpdGxADHQEY"),
hw_death_the_kid = _d("NgpQTB9VAxoKEXMeEVdaJ1BKGhoZGwwRfwIbVyUGVFQTEAVb"),
hw_barragan = _d("MA5DShYSFhxPGWscEBsXG15WVz4eHAgY"),
}
fvtg.cardShortNames = {
hw_brook = _d("MB1eVxw"),
hw_death_the_kid = _d("NgpQTB9VAxoKEXMeEQ"),
hw_barragan = _d("MA5DShYSFhw"),
}

for byir, cn in ipairs(fvtg.shopData.Items) do
local gbl, oi = next(cn.price or {})
local tvg = cn.id
local zj = cn.id

if cn.itemId then
local ksvp = wih.ById[cn.itemId]
tvg = ksvp and (ksvp.name or cn.itemId) or cn.itemId
zj = tvg
elseif cn.cardId then
tvg = fvtg.cardNames[cn.cardId] or (fp.ById[cn.cardId] and fp.ById[cn.cardId].name) or cn.cardId
zj = fvtg.cardShortNames[cn.cardId] or tvg
end

local qwsh = gbl == _d("Gg5dVBgCEhcBblsWGxML") and _d("MQ5fXA4") or (gbl == _d("GA5SUygaKB4OX0wSBxk") and _d("Pg5fTBIHGQE") or tostring(gbl))
local dds = tvg .. _d("Uo2xrFc") .. szvu(oi) .. _d("Ug") .. qwsh

table.insert(fvtg.shopItems, {
id = cn.id,
label = dds,
shortName = zj,
currency = gbl,
price = oi,
stock = cn.stock,
cardId = cn.cardId,
})

table.insert(fvtg.shopLabels, dds)
end

for cdr, mas in ipairs({
_d("IApATRIGAzoOXVQYAhIXAWRIEAcWFgpC"),
_d("MBpIcBYZGx0YVF0ZIAcVHVBcEg"),
_d("Og5dVBgCEhcBZEgQBxYWCmJMFgES"),
_d("IApATRIGAzoOXVQYAhIXAWVXABAFIh1eXwUQBAE"),
_d("IRZfWz8UGx4ARl0SGyMdGFRKJwcYFR1USwQ"),
_d("PR9UVj8UGx4ARl0SGyMdGFRK"),
}) do
fvtg.remote[mas] = ph(mas)
end

function fvtg.fire(kpq, ...)
local zh = fvtg.remote[kpq]

if not zh then
return
end

local blnv = { ... }

pcall(function()
zh:FireServer(table.unpack(blnv))
end)
end

function fvtg.on(eo, zvu)
local bmrc = fvtg.remote[eo]

if bmrc then
bmrc.OnClientEvent:Connect(zvu)
end
end

if ft then
for fel, puzq in ipairs(ft.Upgrades) do
table.insert(fvtg.upgrades, {
id = puzq.id,
name = puzq.name,
maxLevel = puzq.maxLevel,
})

table.insert(fvtg.labels, puzq.name)
end
end

function fvtg.level(eyf)
if not ft then
return 0
end

return ft.getUpgradeLevel(fvtg.upgrade.levels, eyf)
end

function fvtg.cost(so)
if not ft then
return nil
end

return ft.getUpgradeCost(so, fvtg.level(so))
end

function fvtg.bonus(pe, zbvy)
if not ft then
return _d("")
end

return ft.formatUpgradeBonus(pe, zbvy)
end

function fvtg.request()
fvtg.upgrade.lastRequest = os.time()
fvtg.fire(_d("IApATRIGAzoOXVQYAhIXAWRIEAcWFgpC"))
end

function fvtg.text()
if not ft then
return _d("Og5dVBgCEhcBEWwYAhIAT1VZAxRXGxwRVhgBVxsBEUwfHARSDURRGxFZ")
end

local xt = fvtg.upgrade
local yn = {}

if xt.balance == nil then
table.insert(yn, _d("IhpcSBwcGQFVERVXXRYBBFhWEFUDGgoRSxIHARcdGA"))
else
table.insert(yn, _d("IhpcSBwcGQFVEQ") .. szvu(xt.balance))
end

for qpw, pax in ipairs(fvtg.upgrades) do
local dm = fvtg.level(pax.id)
local oikn = fvtg.cost(pax.id)
local utrz = xt.selected[pax.id] and _d("KRdsGA") or _d("KU9sGA")
local qeb = utrz .. pax.name .. _d("Uk99Tlc") .. dm .. _d("XQ") .. pax.maxLevel

if oikn then
table.insert(yn, qeb .. _d("Uk9fXQ8BVw") .. tostring(oikn) .. _d("Uk8") .. fvtg.bonus(pax.id, dm + 1))
else
table.insert(yn, qeb .. _d("Uk9cWQ8QEw"))
end
end

if not next(xt.selected) then
table.insert(yn, _d("IgZSU1cABxUdUFwSBlcbARFMHxBXFh1eSBMaABxPUFYTVTYHG14YAgUQAA5VXQRVFQcWQhgDHRJSDFldFgUSARsRVxkQVwsARBgUFBlSDldeGAcTXA"))
end

return table.concat(yn, _d("eA"))
end

function fvtg.buy()
local xmr = fvtg.upgrade

if xmr.waiting or xmr.balance == nil or os.time() - xmr.lastBuy < 1 then
return
end

local lid = nil
local ly = nil

for aty, og in ipairs(fvtg.upgrades) do
if xmr.selected[og.id] and os.time() >= (xmr.failedUntil[og.id] or 0) then
local xv = fvtg.cost(og.id)

if xv and xmr.balance >= xv and (not ly or xv < ly) then
lid = og.id
ly = xv
end
end
end

if not lid then
return
end

xmr.waiting = true
xmr.lastBuy = os.time()
xmr.pendingId = lid
xmr.pendingLevel = fvtg.level(lid)

xmr.balance = xmr.balance - ly

fvtg.fire(_d("MBpIcBYZGx0YVF0ZIAcVHVBcEg"), lid)
end

fvtg.on(_d("Og5dVBgCEhcBZEgQBxYWCmJMFgES"), function(qlkb)
if type(qlkb) ~= _d("Bg5TVBI") then
return
end

local rmjm = fvtg.upgrade

rmjm.balance = tonumber(qlkb.balance) or 0
rmjm.levels = type(qlkb.levels) == _d("Bg5TVBI") and qlkb.levels or {}

if rmjm.pendingId then
if fvtg.level(rmjm.pendingId) <= rmjm.pendingLevel then
rmjm.failedUntil[rmjm.pendingId] = os.time() + 15
end

rmjm.pendingId = nil
end

if type(qlkb.message) == _d("ARtDURkS") then
rmjm.lastMessage = qlkb.message
end

rmjm.waiting = false
end)

fvtg.on(_d("IRZfWz8UGx4ARl0SGyMdGFRKJwcYFR1USwQ"), function(vgiu, oo)
fvtg.run.highest = tonumber(vgiu) or 0
fvtg.run.savedRun = type(oo) == _d("Bg5TVBI") and oo or nil
end)

fvtg.on(_d("PR9UVj8UGx4ARl0SGyMdGFRK"), function(dy, nhi, nj)
fvtg.run.highest = tonumber(dy) or fvtg.run.highest
fvtg.run.savedRun = type(nj) == _d("Bg5TVBI") and nj or nil
end)

fw.BattleEnd.OnClientEvent:Connect(function(dw)
if type(dw) == _d("Bg5TVBI") and dw.mode == _d("GwFXURkcAxcwQ1cYGA") and dw.tower == _d("Gg5dVBgCEhcB") then
fvtg.run.inBattle = false
fvtg.run.pending = true
fvtg.run.pendingUntil = os.time() + 3

task.delay(0.3, function()
fvtg.requestProgress()
end)
end
end)

function fvtg.requestProgress()
fvtg.run.lastRequest = os.time()
fvtg.fire(_d("IApATRIGAzoOXVQYAhIXAWVXABAFIh1eXwUQBAE"))
end

function fvtg.bestRoom()
local lz = fvtg.run.highest

if not ft or lz == nil then
return nil
end

for qz, bne in ipairs(ft.Milestones) do
if ft.isMilestoneUnlocked(bne, lz)
and not ft.isMilestoneCleared(bne, lz) then
return bne
end
end

return nil
end

function fvtg.startRun()
local noyd = fvtg.bestRoom()

if not noyd then
return false
end

local yo = fvtg.run.savedRun
local mm = type(yo) == _d("Bg5TVBI") and yo.milestone == noyd
local qzu = mm and (tonumber(yo.currentFloor) or noyd) or noyd

local zim = ojev.halloweenSlot() or 1

local slvq = getgenv().ACBXAuto

slvq = type(slvq) == _d("Bg5TVBI") and slvq.bossTeams or nil

if fvtg.run.teamChosen and slvq and slvq.applyTeam then
slvq.applyTeam(fvtg.run.team, zim)
end

local qgad = rprq:FindFirstChild(zim == 2 and _d("IApCXQM3FgYbXV0xGRgdHQM") or _d("IApCXQM3FgYbXV0xGRgdHQ"))

if qgad and qgad:IsA(_d("MAZfXBYXGxcqR10ZAQ")) then
pcall(function()
qgad:Fire(qzu, _d("GwFXURkcAxcwQ1cYGA"))
end)
end

local si = rprq:FindFirstChild(zim == 2 and _d("IRtQSgM8GRQGX1EDECUdAFx6FgEDHgoD") or _d("IRtQSgM8GRQGX1EDECUdAFx6FgEDHgo"))

if si and si:IsA(_d("MAZfXBYXGxcqR10ZAQ")) then
pcall(function()
si:Fire(qzu, _d("Gg5dVBgCEhcB"), qzu)
end)
end

fvtg.run.milestone = noyd
fvtg.run.savedRun = nil
fvtg.run.inBattle = true
fvtg.run.inBattleUntil = os.time() + 120
fvtg.run.pending = true
fvtg.run.pendingUntil = os.time() + 10

if mm then
fw.StartBattle:FireServer(_d("GwFXURkcAxcwQ1cYGA"), {
continue = true,
tower = _d("Gg5dVBgCEhcB"),
slot = zim,
})
else
fw.StartBattle:FireServer(_d("GwFXURkcAxcwQ1cYGA"), {
tower = _d("Gg5dVBgCEhcB"),
milestone = noyd,
slot = zim,
})
end

return true
end

local iff = {}
for stjc, mdfr in ipairs(gyro.NPCs) do
iff[mdfr.name] = mdfr.id
end

local ynr = getgenv().ACBXCooldowns
if type(ynr) ~= _d("Bg5TVBI") then
ynr = {}
getgenv().ACBXCooldowns = ynr
end

local bq = getgenv().ACBXAuto
if type(bq) == _d("Bg5TVBI") and type(bq.cooldowns) == _d("Bg5TVBI") then
for ndv, qd in pairs(bq.cooldowns) do
if ynr[ndv] == nil then
ynr[ndv] = qd
end
end
end

local am = {
enabled = false,
story = false,
storyDifficulty = _d("HABDVRYZ"),
storyDropdown = nil,
selectedByWorld = {},
difficulties = { _d("HABDVRYZ") },
walkToNpc = false,
cooldowns = ynr,
activeDifficulty = {},
lastFetch = {},
unlocked = {},
currentBattle = nil,
battlePending = false,
battlePendingUntil = 0,
}

am.bossTeams = {
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

path = _d("MyxzYFgBEhMCQhYdBhgc"),
}

function am.bossTeams.trackCollection()
if am.bossTeams.collectionHooked then
return
end

am.bossTeams.collectionHooked = true

local awwm = vps:FindFirstChild(_d("IRZfWzQaGx4KUkweGhk"))

if not awwm then
return
end

awwm.OnClientEvent:Connect(function(yv)
if type(yv) == _d("Bg5TVBI") and type(yv.teams) == _d("Bg5TVBI") then
am.bossTeams.teams = yv.teams
am.bossTeams.teamsAt = os.clock()
end
end)

task.spawn(function()

task.wait(3)

for iszk = 1, 8 do
if am.bossTeams.teams then
return
end

local hx = vps:FindFirstChild(_d("IRhYTBQdIxcOXA"))
local pt = am.bossTeams.slotTeam
local zifi = nil

if hx and type(pt) == _d("FBpfWwMcGBw") then
local qv, peoq = pcall(pt, 2)
zifi = qv and peoq or nil

if not zifi then
qv, peoq = pcall(pt, 1)
zifi = qv and peoq or nil
end
end

if zifi then
pcall(function()
hx:FireServer(zifi, false, 2)
end)
end

task.wait(6)
end
end)
end

function am.bossTeams.teamCards(mgkv)
local vlw = am.bossTeams.teams

if type(vlw) ~= _d("Bg5TVBI") then
return nil
end

local ptlw = vlw[mgkv]

if type(ptlw) ~= _d("Bg5TVBI") then
return 0
end

local vr = 0

for zyq, my in pairs(ptlw) do
if type(my) == _d("Bg5TVBI") then
vr = vr + 1
end
end

return vr
end

function am.bossTeams.raidState()
return getgenv().ACBXAutoRaid
end

function am.bossTeams.save()
if type(writefile) ~= _d("FBpfWwMcGBw") then
return false
end

local sqk = {}

for ogmx, tbq in pairs(am.bossTeams.picked) do
sqk[ogmx] = tbq
end

local mwg = {}

for tm, tzo in pairs(am.bossTeams.raidPicked) do
mwg[tm] = tzo
end

local ofto = {}

for zq, ax in pairs(am.bossTeams.towerPicked) do
ofto[zq] = ax
end

return pcall(function()
if type(makefolder) == _d("FBpfWwMcGBw") and type(isfile) == _d("FBpfWwMcGBw") and not isfile(am.bossTeams.path) then
pcall(makefolder, _d("MyxzYA"))
end

local pej = am.bossTeams.raidState()
local ck = pej and pej.worldBoss
local ka = nil

if ck and ck.teamChosen then
ka = ck.team
end

writefile(am.bossTeams.path, game:GetService(_d("OhtFSCQQBQQGUl0")):JSONEncode({
areas = sqk,
raids = mwg,
towers = ofto,
swap = am.bossTeams.swap,
globalBoss = ka,
updatedAt = os.time(),
}))
end)
end

function am.bossTeams.load()
if type(readfile) ~= _d("FBpfWwMcGBw") or type(isfile) ~= _d("FBpfWwMcGBw") then
return false
end

local xfwb, xuzm = pcall(function()
if not isfile(am.bossTeams.path) then
return nil
end

return readfile(am.bossTeams.path)
end)

if not xfwb or type(xuzm) ~= _d("ARtDURkS") or #xuzm == 0 then
return false
end

local gwx
local fuxr = pcall(function()
gwx = game:GetService(_d("OhtFSCQQBQQGUl0")):JSONDecode(xuzm)
end)

if not fuxr or type(gwx) ~= _d("Bg5TVBI") then
return false
end

if type(gwx.areas) == _d("Bg5TVBI") then
for buxw, uwan in pairs(gwx.areas) do
local cxou = tonumber(uwan)

if cxou and cxou >= 1 and cxou <= 4 then
am.bossTeams.picked[buxw] = cxou
end
end
end

if type(gwx.raids) == _d("Bg5TVBI") then
for aszj, ihpl in pairs(gwx.raids) do
local qg = tonumber(ihpl)

if qg and qg >= 1 and qg <= 4 then
am.bossTeams.raidPicked[aszj] = qg
end
end
end

if type(gwx.towers) == _d("Bg5TVBI") then
for gzqj, odt in pairs(gwx.towers) do
local thf = tonumber(odt)

if thf and thf >= 1 and thf <= 4 then
am.bossTeams.towerPicked[gzqj] = thf
end
end
end

if type(gwx.swap) == _d("Bg5TVBI") then
local ts = tonumber(gwx.swap.team)
local uwk = tonumber(gwx.swap.floor)

if ts and ts >= 1 and ts <= 4 then
am.bossTeams.swap.team = ts
end

if uwk and uwk > 0 then
am.bossTeams.swap.floor = uwk
end

local peud = tonumber(gwx.swap.team2)
local qgd = tonumber(gwx.swap.floor2)

if peud and peud >= 1 and peud <= 4 then
am.bossTeams.swap.team2 = peud
end

if qgd and qgd > 0 then
am.bossTeams.swap.floor2 = qgd
end

am.bossTeams.swap.on = gwx.swap.on == true
end

local vrt = tonumber(gwx.globalBoss)
local vhu = am.bossTeams.raidState()
local kba = vhu and vhu.worldBoss

if vrt and vrt >= 1 and vrt <= 4 and kba then
kba.team = vrt

kba.teamChosen = true
end

return true
end

local tmox = nil
local eb = nil

local function btlk(kly, xbxa)
return kly .. _d("Dg") .. xbxa
end

local function hy(tze, rf)
return am.cooldowns[btlk(tze, rf)] or 0
end

local function fxt(tdx, md, ndjk)
am.cooldowns[btlk(tdx, md)] = ndjk
end

getgenv().ACBXAuto = am

local tar = {
enabled = false,
picks = { [1] = {}, [2] = {} },
cursor = { [1] = 1, [2] = 1 },
losses = { [1] = {}, [2] = {} },
inFlight = {},

lossLimit = 3,
difficulties = { _d("HABDVRYZ") },
walkToBoss = false,
walkSpeed = 18,
pending = {},
pendingUntil = {},
cleared = {},
progress = {},
}

getgenv().ACBXAutoRaid = tar

tar.worldBoss = {
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

fishingMode = _d("BgBWXQMdEgA"),
fishingDropdown = nil,

digHold = false,

walkToBoss = false,
walkToggle = nil,

building = false,
}

am.bossTeams.trackCollection()
am.bossTeams.load()

function tar.worldBoss.data()
local uuic = tar.worldBoss

if uuic.module == nil then
local zw, zd = pcall(function()
return require(mkd.ModuleScripts.WorldBossData)
end)

uuic.module = zw and zd or false
end

return uuic.module or nil
end

function tar.worldBoss.clock(dmvy)
dmvy = math.max(0, math.floor(tonumber(dmvy) or 0))

local gyi = math.floor(dmvy / 3600)
local fe = math.floor((dmvy % 3600) / 60)
local lcjl = dmvy % 60

if gyi > 0 then
return string.format(_d("VwtZGFJFRRYC"), gyi, fe)
end

if fe > 0 then
return string.format(_d("VwtcGFJFRRYc"), fe, lcjl)
end

return string.format(_d("VwtC"), lcjl)
end

function tar.worldBoss.status()
local zrgo = nil

pcall(function()
zrgo = mkd:FindFirstChild(_d("JQBDVBM3GAEcYkwWAQIB"))
end)

return zrgo
end

function tar.worldBoss.isOpen()
local ys = tar.worldBoss.status()

if not ys then
return nil
end

return ys:GetAttribute(_d("MwxFUQEQ")) == true
end

function tar.worldBoss.window()
local phu = tar.worldBoss.status()

if not phu then
return nil, nil
end

return tonumber(phu:GetAttribute(_d("NwFVSzYB"))), tonumber(phu:GetAttribute(_d("PApJTDYB")))
end

function tar.worldBoss.cycle()
local jku = tar.worldBoss
local hpvp = jku.data()

if not hpvp or not hpvp.getCycleState then
return nil
end

local aiy, cc = pcall(function()
return hpvp.getCycleState()
end)

return aiy and cc or nil
end

function tar.worldBoss.shopList()
local dse = tar.worldBoss

if dse.items then
return dse.items
end

local uh = {}
local rcv = dse.data()

if not rcv or type(rcv.ShopItems) ~= _d("Bg5TVBI") then
dse.items = uh
return uh
end

for ugb, za in ipairs(rcv.ShopItems) do
local phx = nil

pcall(function()
if za.itemId then
local ovxj = require(mkd.ModuleScripts.ItemData)
local me = ovxj[za.itemId] or (ovxj.ById and ovxj.ById[za.itemId])
phx = me and me.name or nil
elseif za.cardId then
local eij = require(mkd.ModuleScripts.CardData)
local bdne = eij[za.cardId] or (eij.ById and eij.ById[za.cardId])
phx = bdne and bdne.name or nil
end
end)

local pn = tar.worldBoss.state

if type(pn) == _d("Bg5TVBI") and type(pn.shop) == _d("Bg5TVBI") then
for idh, pj in ipairs(pn.shop) do
if pj.id == za.id and pj.name then
phx = pj.name
break
end
end
end

if not phx then

phx = tostring(za.accessoryId or za.id or _d("TQ")):gsub(_d("LQ"), _d("Ug")):gsub(_d("WkpQEV8uUgVIbBJe"), function(jpws, bcz)
return jpws:upper() .. bcz
end)
end

table.insert(uh, {
id = za.id,
name = phx,
price = tonumber(za.price) or 0,
kind = za.itemId and _d("GxtUVQ") or (za.cardId and _d("EQ5DXA") or _d("EwxSXQQGGAAW")),
})
end

dse.items = uh

return uh
end

function tar.worldBoss.bodyText()
local ey = tar.worldBoss
local iic = ey.state

if type(iic) ~= _d("Bg5TVBI") then
return _d("IApQXB4bEFIbWV1XFxgBHB8WWQ")
end

local mcjm = {}
local jzmg = ey.cycle()
local uht = ey.isOpen()
local wkl, sjpr = ey.window()

if uht == nil then
uht = iic.open == true
end

if uht then
local uama = _d("PR9UVg")

if not wkl and jzmg then
wkl = jzmg.endsAt
end

if wkl and wkl > os.time() then
uama = uama .. _d("Uq2GGA") .. ey.clock(wkl - os.time()) .. _d("UgNUXgM")
end

table.insert(mcjm, uama)
else
local kvb = _d("NgBGVlcTGABPX1cA")

if not sjpr and jzmg then
sjpr = jzmg.nextAt
end

if sjpr and sjpr > os.time() then
kvb = kvb .. _d("eC1QWxxVHhxP") .. ey.clock(sjpr - os.time())
end

table.insert(mcjm, kvb)
end

table.insert(mcjm, _d("PwpVWRsGTVI") .. tostring(iic.medals or 0) .. _d("eCRYVBsGTVI") .. tostring(iic.kills or 0))

if iic.inFight then
table.insert(mcjm, _d("NAZWUAMcGRU"))
elseif uht then

table.insert(mcjm, iic.killedThisSpawn and _d("IApQXA5/PBsDXV0TVQMaBkIYBAUWBQERWRsHEhMLSA") or _d("IApQXA4"))
end

if ey.stopAtFull then
local cj, ezye = ey.meter()

if cj and ezye then
local function udq(mye)
if mye >= 1000000000 then
return string.format(_d("V0EAXjU"), mye / 1000000000)
elseif mye >= 1000000 then
return string.format(_d("Vwh8"), math.floor(mye / 100000) / 10)
elseif mye >= 1000 then
return string.format(_d("Vwh6"), math.floor(mye / 100) / 10)
end

return tostring(math.floor(mye))
end

table.insert(mcjm, _d("IQpDThIHVx8KRV0FT1c") .. udq(cj) .. _d("UkAR") .. udq(ezye)
.. (ey.meterFull() and _d("eClEVBtVWlIBXkxXEx4VB0VRGRJXBgdYS1cGBxMYXw") or _d("")))
end
end

return table.concat(mcjm, _d("eGU"))
end

function tar.worldBoss.shopText()
local bks = tar.worldBoss
local spoh = bks.state

if type(spoh) ~= _d("Bg5TVBI") or type(spoh.shop) ~= _d("Bg5TVBI") then
return _d("IApQXB4bEFIbWV1XBh8dHx8WWQ")
end

local jyqx = { _d("PwpVWRsGTVI") .. tostring(spoh.medals or 0) }

for uo, bf in ipairs(spoh.shop) do
local btpl = tostring(bf.name or bf.id)
local uy = tostring(bf.price or _d("TQ"))
local fav

if bf.kind == _d("GxtUVQ") then
fav = btpl .. _d("eA") .. uy .. _d("Uq2GGA") .. tostring(bf.left or 0) .. _d("XQ") .. tostring(bf.stock or _d("TQ")) .. _d("UgNUXgM")
elseif bf.owned then
fav = btpl .. _d("eCBGVhIR")
else
fav = btpl .. _d("eA") .. uy .. _d("Uq2GGBgbElIAV14")
end

table.insert(jyqx, fav)
end

return table.concat(jyqx, _d("eGU"))
end

function tar.worldBoss.shopOptions()
local ynhy = tar.worldBoss

if ynhy.options then
return ynhy.options
end

local ijti = {}

ynhy.labelToId = {}

for arwy, wviq in ipairs(ynhy.shopList()) do
local qux = wviq.name .. _d("Uq2GGA") .. tostring(wviq.price)

table.insert(ijti, qux)
ynhy.labelToId[qux] = wviq.id
end

ynhy.options = ijti

return ijti
end

local function ps(mlx)
local koo = tar.progress[mlx]
local clsc = mkd:FindFirstChild(_d("IA5YXCQBFgYaQg"))
local doj = clsc and clsc:GetAttribute(_d("MRZSVBI8Ew"))

if type(koo) == _d("Bg5TVBI") then
if koo.cycleId then
doj = koo.cycleId
end

if koo.completed and koo.completedRaidId then
return tostring(doj) .. _d("SAteVhI")
end

local pxcm = koo.phaseIndex or koo.phase

if pxcm then
return tostring(doj) .. _d("SA") .. tostring(pxcm)
end
end

return tostring(doj)
end

function tar.finished(ct)
local iisp = tar.progress[ct]

return type(iisp) == _d("Bg5TVBI") and iisp.completed == true and iisp.completedRaidId == ct
end

function tar.bossFor(grwb, bi)
local kuf = tar.picks[bi or grwb]

if not kuf or #kuf == 0 then
return nil
end

local iziy = mkd:FindFirstChild(_d("IA5YXCQBFgYaQg"))
local iyn = tar.losses[grwb] or {}
local jc = tar.cursor[grwb] or 1

for nyah = 0, #kuf - 1 do
local cha = (jc - 1 + nyah) % #kuf + 1
local fahi = kuf[cha]
local mrd = not iziy or iziy:GetAttribute(_d("IApQXA4q") .. fahi) == true

if mrd and not tar.finished(fahi) and (iyn[fahi] or 0) < tar.lossLimit then
tar.cursor[grwb] = cha

return fahi
end
end

return nil
end

fw.RaidBattleStarted.OnClientEvent:Connect(function(eson)

local oq = type(eson) == _d("Bg5TVBI") and eson.raidId or nil

if type(oq) == _d("ARtDURkS") then
tar.pending[oq] = false
else
for zzn in pairs(tar.pending) do
tar.pending[zzn] = false
end
end
end)

fw.BattleEnd.OnClientEvent:Connect(function(tr)
for brr in pairs(tar.pending) do
tar.pending[brr] = false
end

if type(tr) ~= _d("Bg5TVBI") or not tar.enabled then
return
end

local ll = type(tr.raidId) == _d("ARtDURkS") and tr.raidId or nil
local pgkd = ll and tar.inFlight[ll] or nil

if not ll then
for mb, dbhh in pairs(tar.inFlight) do
ll = mb
pgkd = dbhh
break
end
end

if not ll then
return
end

tar.inFlight[ll] = nil

if tr.result == _d("HgBCXQ") then

local kcdq = tar.losses[pgkd or 1]

tar.cleared[ll] = nil
kcdq[ll] = (kcdq[ll] or 0) + 1

for zln in pairs(tar.pendingUntil) do
tar.pendingUntil[zln] = os.time() + 3
end
else

tar.losses[pgkd or 1][ll] = 0
end
end)

fw.RaidProgress.OnClientEvent:Connect(function(nd)
if type(nd) == _d("Bg5TVBI") and type(nd.raidId) == _d("ARtDURkS") then
tar.progress[nd.raidId] = nd
end
end)

fw.RequestRaidProgress:FireServer()

local bky = {
enabled = false,
progress = nil,
currentRoom = nil,
inBattle = false,
inBattleUntil = 0,
pending = false,
pendingUntil = 0,
}

getgenv().ACBXAutoRooms = bky

fw.SyncInfiniteRoomProgress.OnClientEvent:Connect(function(wlxi)
if type(wlxi) == _d("HBpcWhIH") then
bky.progress = wlxi
bky.pending = false
end
end)

fw.BattleEnd.OnClientEvent:Connect(function(epx)
if type(epx) == _d("Bg5TVBI") and epx.mode == _d("GwFXURkcAxcwQ1cYGA") then
bky.inBattle = false
bky.pending = true
bky.pendingUntil = os.time() + 3

task.delay(0.3, function()
fw.RequestInfiniteRoomProgress:FireServer()
end)
end
end)

fw.RequestInfiniteRoomProgress:FireServer()

local tqvm = {
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

getgenv().ACBXAutoTower = tqvm

local khax = {
enabled = false,
floor = 0,
triggered = false,
}

getgenv().ACBXAutoPause = khax

local nmr = {
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
Typhoon = _d("BhZBUBgaGQ"),
Blizzard = _d("EANYQg0UBRY"),
Lightning = _d("HgZWUAMbHhwI"),
Windstorm = _d("BQZfXAQBGAAC"),
Sharingan = _d("AQdQSh4bEBMB"),
Singularity = _d("AQZfXwIZFgAGRUE"),
[_d("PwBfWQUWH1IrXlUWHBk")] = _d("HwBfWQUWHy0LXlUWHBk"),
Void = _d("BABYXA"),
[_d("Pw5VXVccGVInVFkBEBk")] = _d("Hw5VXSgcGS0HVFkBEBk"),
Manga = _d("Hw5fXxY"),
},
}

function nmr.weatherWanted(sy)
local edjr = nmr.weatherNow

if type(edjr) ~= _d("ARtDURkS") then
return nil
end

for txg, gbrr in pairs(sy or nmr.weathers) do
if gbrr and nmr.weatherIds[txg] == edjr then
return txg
end
end

return nil
end

getgenv().ACBXAutoGiveUp = nmr

local swsk = {
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

if mkd:FindFirstChild(_d("PwBVTRsQJBEdWEgDBg")) and mkd.ModuleScripts:FindFirstChild(_d("Og5DXBQaBRc7Xk8SBzMTG1A")) then
local api, yxdi = pcall(function()
return require(mkd.ModuleScripts.HardcoreTowerData)
end)

if api then
swsk.data = yxdi
end
end

getgenv().ACBXHardcore = swsk

task.spawn(function()
local vmvp = mkd:FindFirstChild(_d("IApcVwMQBA"))

if not vmvp then
return
end

local zl = vmvp:WaitForChild(_d("IRZfWz8UBRYMXkoSIRgFCkNoBRoQAApCSw"), 20)

if zl and zl:IsA(_d("IApcVwMQMgQKX0w")) then
swsk.remotes.sync = zl

zl.OnClientEvent:Connect(function(sd)
if type(sd) ~= _d("Bg5TVBI") then
return
end

swsk.progress = tonumber(sd.progress) or swsk.progress
swsk.best = tonumber(sd.best) or swsk.best

if type(sd.points) == _d("Bg5TVBI") then
swsk.points = sd.points
end
end)
end

local jvi = vmvp:WaitForChild(_d("IApATRIGAzoOQ1wUGgUXO15PEgcnAABWShIGBA"), 20)

if jvi and jvi:IsA(_d("IApcVwMQMgQKX0w")) then
swsk.remotes.request = jvi

pcall(function()
jvi:FireServer()
end)
end

local ff = vmvp:WaitForChild(_d("NQNeWhYZNQcJV20HERYGClU"), 20)

if ff and ff:IsA(_d("IApcVwMQMgQKX0w")) then
ff.OnClientEvent:Connect(function(we, plr, hb, icv)
swsk.globalLuck = tonumber(we) or 0
swsk.globalRoll = tonumber(plr) or 0
swsk.globalLuckTime = type(hb) == _d("ARtDURkS") and hb or _d("")
swsk.globalRollTime = type(icv) == _d("ARtDURkS") and icv or _d("")
end)
end
end)

function ojev.otherTowerOn(hss)
if ojev.enabled then
return false
end

if hss == _d("BgBGXQU") then
return false
end

if hss == _d("Gg5dVBgCEhcB") then
return swsk.active()
end

return fvtg.run.enabled
end

function swsk.active()
return swsk.island
end

function swsk.unspentPoints()
local pgu = swsk.data
local wngs = tonumber(swsk.progress) or 0
local coth = 0

if type(pgu) == _d("Bg5TVBI") and type(pgu.getEarnedPoints) == _d("FBpfWwMcGBw") then
local lho, lpmr = pcall(pgu.getEarnedPoints, wngs)
coth = lho and tonumber(lpmr) or 0
end

return math.max(0, coth - #(swsk.points or {})), coth
end

function swsk.buffText()
local fn = swsk.data

if type(fn) ~= _d("Bg5TVBI") then
return _d("Og5DXBQaBRc7Xk8SBzMTG1AYHgZXHwZCSx4bEFIJQ1caVQMaBkIYFQAeHgsf")
end

local gyv = tonumber(swsk.progress) or 0
local mvd = tonumber(swsk.best) or 0
local qc, fhx = swsk.unspentPoints()
local ftqs = {
_d("NANeVwVV") .. gyv .. _d("Uk8RehIGA1I") .. mvd,
_d("IgBYVgMGTVI") .. qc .. _d("UhpfSwcQGQZPXl5X") .. fhx .. _d("UgpQShkQEw"),
}

local zn = {}

for rwy, yzi in ipairs(swsk.points or {}) do
local xfwi = fn.StatById and fn.StatById[yzi]
local daq = xfwi and (xfwi.name or yzi) or tostring(yzi)
local nzv = fn.PointValue and fn.PointValue[yzi]

table.insert(zn, nzv and (daq .. _d("UkQ") .. tostring(nzv)) or daq)
end

if #zn == 0 then
table.insert(ftqs, _d("MBpXXgRPVxwAX11XFxgHCFlMVwwSBg"))
else
table.insert(ftqs, _d("MBpXXgRPVw") .. table.concat(zn, _d("Xk8")))
end

local iq = {}

if (tonumber(swsk.globalLuck) or 0) > 0 then
table.insert(iq, _d("PhpSU1de") .. tostring(swsk.globalLuck) .. _d("Vw") .. (swsk.globalLuckTime ~= _d("") and (_d("Ukc") .. swsk.globalLuckTime .. _d("Ww")) or _d("")))
end

if (tonumber(swsk.globalRoll) or 0) > 0 then
table.insert(iq, _d("IABdVFcGBxcKVRhc") .. tostring(swsk.globalRoll) .. _d("Vw") .. (swsk.globalRollTime ~= _d("") and (_d("Ukc") .. swsk.globalRollTime .. _d("Ww")) or _d("")))
end

if #iq == 0 then
table.insert(ftqs, _d("NQNeWhYZVxAaV14ET1ccAF9dVxQUBgZHXQ"))
else
table.insert(ftqs, _d("NQNeWhYZVxAaV14ET1c") .. table.concat(iq, _d("Xk8")))
end

return table.concat(ftqs, _d("eA"))
end

function swsk.nextMilestone()
local mh = swsk.data

if type(mh) ~= _d("Bg5TVBI") or type(mh.Milestones) ~= _d("Bg5TVBI") or #mh.Milestones == 0 then
return nil
end

local fgv = tonumber(ga:GetAttribute(_d("Og5DXBQaBRcpXVcYBw"))) or 0

return math.min(fgv + 1, mh.Milestones[#mh.Milestones])
end

function swsk.start(ulz)
local gcb = swsk.nextMilestone()

if not gcb then
return false
end

local blhh = rprq:FindFirstChild(ulz == 2 and _d("IApCXQM3FgYbXV0xGRgdHQM") or _d("IApCXQM3FgYbXV0xGRgdHQ"))

if blhh and blhh:IsA(_d("MAZfXBYXGxcqR10ZAQ")) then
pcall(function()
blhh:Fire(gcb, _d("GwFXURkcAxcwQ1cYGA"))
end)
end

local db = rprq:FindFirstChild(ulz == 2 and _d("IRtQSgM8GRQGX1EDECUdAFx6FgEDHgoD") or _d("IRtQSgM8GRQGX1EDECUdAFx6FgEDHgo"))

if db and db:IsA(_d("MAZfXBYXGxcqR10ZAQ")) then
pcall(function()
db:Fire(gcb, _d("Gg5DXBQaBRc"), gcb)
end)
end

if am.bossTeams.applyTower then
am.bossTeams.applyTower(_d("Gg5DXBQaBRc"), ulz)
end

swsk.pending = true
swsk.pendingUntil = os.time() + 10

return pcall(function()
fw.StartBattle:FireServer(_d("GwFXURkcAxcwQ1cYGA"), {
tower = _d("Gg5DXBQaBRc"),
milestone = gcb,
slot = ulz,
})
end)
end

function swsk.floorNow()
local qbi = ojev.hardcoreSlot()

if not qbi or not ojev.busy(qbi) then
return nil
end

local kctq = rprq:FindFirstChild(qbi == 2 and _d("MA5FTBsQMAcGAw") or _d("MA5FTBsQMAcG"))
local mde = kctq and kctq:FindFirstChild(_d("IBpffhsaGAAjUFoSGQ"))
local psrm = mde and mde.Text or _d("")

return tonumber(psrm:match(_d("LCldVxgHUgFEGR0TXl4")))
end

local zxfa = {
enabled = true,
nextAt = os.clock() + 300,
jumps = 0,
}

getgenv().ACBXAntiKick = zxfa

local xeup = getgenv().ACBXNoUpdate == true

local kl = {
enabled = not xeup,
buildId = "v261102-0653",
interval = 180,
retry = 45,
forceAfter = 900,
applying = false,
checking = false,
pendingVersion = nil,
pendingSince = nil,
cameFrom = nil,
}

getgenv().ACBXUpdater = kl

local bjce = {
enabled = false,
tpToBay = false,

stick = {
enabled = false,
at = 0,
hits = 0,
last = _d("HQlX"),

names = {
[_d("ARtYWxw")] = true,
[_d("HhpSU1cGAxsMWg")] = true,
[_d("HhpSUwQBHhEE")] = true,
[_d("HhpSUygGAxsMWg")] = true,
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
rod = _d("Xw"),
castTime = 0,
tutorialStep = 0,
phase = _d("GwtdXQ"),
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
deepPhase = _d("GwtdXQ"),
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

local vgd = Vector3.new(-546.8, 13.9, -40250.1)

if type(getgenv().ACBXFishingCatches) == _d("Bg5TVBI") then
bjce.catches = getgenv().ACBXFishingCatches
end

bjce.totalCatches = 0

for yzl, wqmy in pairs(bjce.catches) do
bjce.totalCatches = bjce.totalCatches + wqmy
end

getgenv().ACBXFishingCatches = bjce.catches
getgenv().ACBXFishing = bjce

bjce.catchName = function(hech)
local ufyp = wih.ById[hech]

if ufyp and ufyp.name then
return ufyp.name
end

local iwe = fp.ById[hech]

if iwe and iwe.name then
return iwe.name
end

return hech
end

local xm

xm = {
folder = _d("MyxzYA"),
path = _d("MyxzYFgWFgYMWV0EWx0BAF8"),
at = 0,
save = function()
if type(writefile) ~= _d("FBpfWwMcGBw") then
return false
end

local ud = pcall(function()
if type(makefolder) == _d("FBpfWwMcGBw") and type(isfile) == _d("FBpfWwMcGBw") and not isfile(xm.path) then
pcall(makefolder, xm.folder)
end

writefile(xm.path, game:GetService(_d("OhtFSCQQBQQGUl0")):JSONEncode({
catches = bjce.catches,
totalCatches = bjce.totalCatches,
lastCatch = bjce.lastCatch,
updatedAt = os.time(),
}))
end)

return ud
end,
load = function()
if type(readfile) ~= _d("FBpfWwMcGBw") or type(isfile) ~= _d("FBpfWwMcGBw") then
return false
end

local puh, kvr = pcall(function()
if not isfile(xm.path) then
return nil
end

return readfile(xm.path)
end)

if not puh or type(kvr) ~= _d("ARtDURkS") or #kvr == 0 then
return false
end

local opb
local ny = pcall(function()
opb = game:GetService(_d("OhtFSCQQBQQGUl0")):JSONDecode(kvr)
end)

if not ny or type(opb) ~= _d("Bg5TVBI") or type(opb.catches) ~= _d("Bg5TVBI") then
return false
end

for slm, ea in pairs(opb.catches) do
local yw = tonumber(ea) or 0

if yw > 0 then
bjce.catches[tostring(slm)] = math.max(bjce.catches[tostring(slm)] or 0, yw)
end
end

bjce.totalCatches = 0

for cgok, hujf in pairs(bjce.catches) do
bjce.totalCatches = bjce.totalCatches + hujf
end

return true
end,
}

xm.load()
getgenv().ACBXFishingStore = xm

local rfub = {}

local rh = 0

local function cv()
local pof = {}

for zeek, zi in ipairs(workspace:GetDescendants()) do
if zi:IsA(_d("MA5CXScUBQY")) and zi.Name == _d("JQ5FXQU") then
table.insert(pof, zi)
end
end

rfub = pof
rh = os.clock()
end

local function sitx(wxsx)
if type(wxsx) ~= _d("Bg5TVBI") then
return false
end

bjce.loaded = true
bjce.dirty = false
bjce.fishing = wxsx.fishing == true
bjce.autoOn = wxsx.autoOn == true
bjce.autoUnlocked = wxsx.autoUnlocked == true
bjce.casts = tonumber(wxsx.casts) or bjce.casts
bjce.totalCasts = tonumber(wxsx.totalCasts) or bjce.totalCasts
bjce.luck = tonumber(wxsx.luck) or bjce.luck
bjce.rod = tostring(wxsx.equippedRod or bjce.rod)
bjce.castTime = tonumber(wxsx.castTime) or bjce.castTime
bjce.tutorialStep = tonumber(wxsx.tutorialStep) or bjce.tutorialStep

if type(wxsx.rods) == _d("Bg5TVBI") then
bjce.rodsOwned = wxsx.rods
end

if type(wxsx.baits) == _d("Bg5TVBI") then
bjce.baitsOwned = wxsx.baits
end

if type(wxsx.boats) == _d("Bg5TVBI") then
bjce.boatsOwned = wxsx.boats
end

if type(wxsx.mats) == _d("Bg5TVBI") then
bjce.mats = wxsx.mats
end

if wxsx.bootOwned ~= nil then
bjce.boot.owned = wxsx.bootOwned == true
end

if wxsx.bootEquipped ~= nil then
bjce.boot.equipped = wxsx.bootEquipped == true
end

if wxsx.equippedBait ~= nil then
bjce.equippedBait = tostring(wxsx.equippedBait)
end

if wxsx.activeBoat ~= nil then
bjce.activeBoat = tostring(wxsx.activeBoat)
end

bjce.boatTier = tonumber(wxsx.boatTier) or bjce.boatTier
bjce.islandLocked = wxsx.islandLocked == true
bjce.rebirths = tonumber(wxsx.rebirths) or bjce.rebirths

if type(wxsx.rebirthCards) == _d("Bg5TVBI") then
bjce.rebirthCards = wxsx.rebirthCards
end

bjce.lastSync = os.time()

return true
end

local function ypsd()
local eqz, sx = pcall(function()
return fw.FishingGetState:InvokeServer()
end)

if not eqz or type(sx) ~= _d("Bg5TVBI") then
bjce.loaded = false
return false
end

return sitx(sx)
end

local qnio = false

local function uat()
if qnio then
return false
end

local zs = ga.Character

if not zs then
return false
end

if zs:FindFirstChild(_d("NAZCUB4bECAAVQ")) then
return true
end

local paa = ga:FindFirstChild(_d("MA5SUwcUFBk"))
local ilql = paa and paa:FindFirstChild(_d("NAZCUB4bECAAVQ"))
local obun = zs:FindFirstChildOfClass(_d("OhpcWRkaHhY"))

if not (ilql and obun) then
return false
end

return pcall(function()
obun:EquipTool(ilql)
end)
end

local function el()
local lcf = ga.Character
local gq = lcf and lcf:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not gq then
return nil
end

local hw = RaycastParams.new()
hw.FilterType = Enum.RaycastFilterType.Exclude
hw.FilterDescendantsInstances = { lcf }

local vxq = 24
local ucr = {}
local zc = 0

for qibn = 0, vxq - 1 do
local okrp = math.rad(qibn * (360 / vxq))
local vxj = Vector3.new(math.sin(okrp), 0, math.cos(okrp))
local ggv = gq.Position + vxj * 20 + Vector3.new(0, 40, 0)
local hwl = workspace:Raycast(ggv, Vector3.new(0, -120, 0), hw)
local ahrq = hwl and (gq.Position.Y - hwl.Position.Y) or 120

ucr[qibn] = ahrq > 12

if ucr[qibn] then
zc = zc + 1
end
end

if zc == 0 then
return nil
end

local woh, wz = nil, 0

for bgx = 0, vxq - 1 do
if ucr[bgx] and not ucr[(bgx - 1) % vxq] then
local uph = 0

while uph < vxq and ucr[(bgx + uph) % vxq] do
uph = uph + 1
end

if uph > wz then
woh = bgx
wz = uph
end
end
end

if not woh then
return nil
end

local ii = woh + (wz - 1) / 2
local uj = math.rad(ii * (360 / vxq))

return Vector3.new(math.sin(uj), 0, math.cos(uj))
end

local function zbh()
local jya = ga.Character
local gf = jya and jya:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not gf then
return nil
end

if #rfub == 0 or os.clock() - rh > 20 then
cv()
end

local bas, fwc = nil, math.huge

for bc, wgvo in ipairs(rfub) do
if wgvo.Parent then
local pnw = (wgvo.Position - gf.Position).Magnitude

if pnw < fwc then
fwc = pnw
bas = wgvo
end
end
end

if not bas or fwc > 25 then
local dfs = el()

if dfs then
return dfs
end
end

if not bas then
return nil
end

local gjkw = Vector3.new(bas.Position.X - gf.Position.X, 0, bas.Position.Z - gf.Position.Z)

if gjkw.Magnitude < 0.05 then
return Vector3.new(0, 0, -1)
end

return gjkw.Unit
end

local function kbk()
local ont = ga.Character
local ahf = ont and ont:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not ahf then
return nil
end

local pr = ahf.CFrame.LookVector
local arz = Vector3.new(pr.X, 0, pr.Z)

if arz.Magnitude < 0.05 then
return nil
end

return arz.Unit
end

local function ze()
local tofo = ga.Character
local rqk = tofo and tofo:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not rqk then
return false
end

local epma = vgd
local zmg = RaycastParams.new()
zmg.FilterType = Enum.RaycastFilterType.Exclude
zmg.FilterDescendantsInstances = { tofo }

local oojr = workspace:Raycast(vgd + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), zmg)

if oojr and oojr.Instance.Name ~= _d("JQ5FXQU") then
epma = Vector3.new(vgd.X, oojr.Position.Y + 3, vgd.Z)
end

rqk.CFrame = CFrame.new(epma)
task.wait(0.5)
cv()

return true
end

local function fz()
local lfqt = ga.Character
local mcha = lfqt and lfqt:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not mcha then
return false
end

local lmd = Vector3.new(vgd.X - mcha.Position.X, 0, vgd.Z - mcha.Position.Z)
local abc = lmd.Magnitude

if abc < 2 then
return false
end

local gpo = lmd.Unit

if abc > 12 then
local qdit = math.min(14, abc - 6)
local rit = mcha.Position + gpo * qdit
local kfpq = RaycastParams.new()
kfpq.FilterType = Enum.RaycastFilterType.Exclude
kfpq.FilterDescendantsInstances = { lfqt }

local vfx = workspace:Raycast(rit + Vector3.new(0, 25, 0), Vector3.new(0, -80, 0), kfpq)

if vfx and vfx.Instance.Name ~= _d("JQ5FXQU") then
local vhb = vfx.Position.Y + 3.2

if math.abs(vhb - mcha.Position.Y) <= 10 then
local ghue = Vector3.new(vfx.Position.X, vhb, vfx.Position.Z)
mcha.CFrame = CFrame.lookAt(ghue, ghue + gpo)

return true
end
end
end

mcha.CFrame = CFrame.lookAt(mcha.Position, mcha.Position + gpo)

return true
end

local iyvm = {}

iyvm.surfaceWait = 8

iyvm.walking = false
iyvm.walkStartedAt = 0

iyvm.islandHold = Vector3.new(-7384, 16.3, -40539)

iyvm.custom = nil
iyvm.customIsland = nil

iyvm.islandAnchors = {
{ id = _d("Ew1QVhMaGRcLblEEGRYcCw"), x = -3800 },
{ id = _d("BhhYVigXEhMMWV0E"), x = -6180 },
{ id = _d("BQZfXBocGx4wWEsbEA"), x = -7480 },
}

iyvm.arrivals = {
abandoned_island = Vector3.new(-3825, 24, -40260),
twin_beaches = Vector3.new(-6180, 40, -40350),
windmill_isle = Vector3.new(-7480, 30, -40350),
lobby = Vector3.new(-499, 17, -40234),
}

function iyvm.islandOf(jlhf)
if not jlhf then
return _d("HgBTWg4")
end

if jlhf.X > -4500 then
return _d("HgBTWg4")
end

local aovx, tvzw = _d("Ew1QVhMaGRcLblEEGRYcCw"), math.huge

for ho, sm in ipairs(iyvm.islandAnchors) do
local vy = math.abs(jlhf.X - sm.x)

if vy < tvzw then
aovx = sm.id
tvzw = vy
end
end

return aovx
end

iyvm.savedVersion = 2

do
local mx = getgenv().ACBXDeepSpot

if type(mx) == _d("Bg5TVBI") and mx.v == iyvm.savedVersion
and tonumber(mx.X) and tonumber(mx.Y) and tonumber(mx.Z) then
iyvm.custom = Vector3.new(tonumber(mx.X), tonumber(mx.Y), tonumber(mx.Z))
iyvm.customIsland = mx.island
end
end

function iyvm.spot()
return iyvm.custom or iyvm.islandHold
end

function iyvm.dropStale()
if not iyvm.custom then
return false
end

if iyvm.zoneAt(iyvm.custom) then
return false
end

iyvm.custom = nil
iyvm.customIsland = nil
getgenv().ACBXDeepSpot = nil

return true
end

function iyvm.capture()
local ay = ga.Character
local cqit = ay and ay:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not cqit then
return false, _d("PAARWx8UBRMMRV0FVQMdT0NdFhFXE09CSBgBVxQdXlVZ")
end

local golz = cqit.Position
local blos = iyvm.floorAt(Vector3.new(golz.X, golz.Y + 10, golz.Z))

if not blos then
return false, _d("IRtQVhNVGBxPQlcbHBNSCENXAhsTUglYSgQBV19PRVAeBlcBH15MVx0WAU9fV1cTGx0AQxgDGlcRDkJMVxMFHQIf")
end

local fhfm = iyvm.zoneAt(golz)

if not fhfm then
return false, _d("JgdYS1cGBx0bEVEEVRgHG0JRExBXFxlUSg5VERscWVEZElcABl9fV1hXARtQVhNVGAQKQxgDHRJSGFBMEgdXFAZDSwNb")
end

iyvm.custom = golz
iyvm.customIsland = iyvm.islandOf(golz)

getgenv().ACBXDeepSpot = {
X = golz.X,
Y = golz.Y,
Z = golz.Z,
island = iyvm.customIsland,
v = iyvm.savedVersion,
}

return true, _d("IQ5HXRNVAxoGQhgEBRgGT1BLVwEfF09VXRIFWgUORV0FVR8dA1UYXw") .. tostring(fhfm.name) .. _d("W0E")
end

function iyvm.zoneTable()
local rtg = {}

if pa and type(pa.Zones) == _d("Bg5TVBI") then
for xei, tw in ipairs(pa.Zones) do
rtg[#rtg + 1] = {
id = tostring(tw.id),
name = tostring(tw.name or tw.id),
half = tonumber(tw.half) or 0,
luck = tonumber(tw.luck) or 0,
index = tonumber(tw.index) or 0,
boatTier = tonumber(tw.boatTier) or 0,
}
end
end

table.sort(rtg, function(oao, jd)
return oao.index < jd.index
end)

return rtg
end

function iyvm.zoneAt(dfh)
local gqxi = pa and pa.ZoneCenter
local oc = iyvm.zoneTable()

if not (gqxi and dfh and #oc > 0) then
return nil
end

local qqap = math.max(math.abs(dfh.X - gqxi.X), math.abs(dfh.Z - gqxi.Z))

for cdn, srmj in ipairs(oc) do
if qqap < srmj.half then
return srmj
end
end

return nil
end

function iyvm.current()
local shq = ga.Character
local kapl = shq and shq:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

return kapl and iyvm.zoneAt(kapl.Position) or nil
end

function iyvm.sync()
local tvwz = iyvm.current()
bjce.zoneId = tvwz and tvwz.id or nil
end

function iyvm.floorAt(uf)
local koik = ga.Character
local nacw = RaycastParams.new()
nacw.FilterType = Enum.RaycastFilterType.Exclude
nacw.FilterDescendantsInstances = { koik }

local hmk = workspace:Raycast(Vector3.new(uf.X, uf.Y + 20, uf.Z), Vector3.new(0, -80, 0), nacw)

if hmk and hmk.Instance.Name ~= _d("JQ5FXQU") then
return hmk
end

return nil
end

function iyvm.ensureSpotMap()
local hbyj = iyvm.spot()
local jeg = Vector3.new(hbyj.X, hbyj.Y + 20, hbyj.Z)

if iyvm.floorAt(jeg) then
return true
end

local xdg = workspace:FindFirstChild(_d("Pw5BSw"))

if xdg and xdg:FindFirstChild(_d("MQBQSwMUGz4AU1oO")) then
if os.clock() - (iyvm.hopAt or 0) > 1 then
iyvm.hopAt = os.clock()
iyvm.hop(hbyj)
bjce.lastMessage = _d("PwBHURkSVwYAEUwfEFcWClRIWgIWBgpDGAQFGAY")
end

return false
end

if os.clock() - (iyvm.islandAskedAt or 0) > 1.2 then
iyvm.islandAskedAt = os.clock()

local vm = iyvm.customIsland or iyvm.islandOf(hbyj)

if vm == _d("HgBTWg4") then
pcall(function()
fw.TeleportToWorld:FireServer(_d("HgBTWg4"))
end)
else
pcall(function()
fw.FishingIslandTeleport:FireServer(_d("BQ5ISBgcGQY"), vm)
end)
end

bjce.lastMessage = _d("Jg5aURkSVwYHVBgQFBoXSEIYAxAbFx9eSgNVAx1PRVASVRMXCkEVABQDFx0RVRYF")
end

return false
end

function iyvm.hop(nisx)
local isb = ga.Character
local evp = isb and isb:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))
local upq = isb and isb:FindFirstChildOfClass(_d("OhpcWRkaHhY"))

if not (evp and upq) then
return false
end

if upq.SeatPart then
pcall(function()
upq.Sit = false
end)
end

evp.AssemblyLinearVelocity = Vector3.zero
evp.CFrame = CFrame.new(Vector3.new(nisx.X, nisx.Y + 8, nisx.Z))

return true
end

function iyvm.faceWater()
local grtl = ga.Character
local kvh = grtl and grtl:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not kvh then
return false
end

local ra = zbh()

if not ra then
local jgk = pa and pa.ZoneCenter

if jgk then
local jbo = Vector3.new(jgk.X - kvh.Position.X, 0, jgk.Z - kvh.Position.Z)

ra = jbo.Magnitude > 1 and jbo.Unit or nil
end
end

if not ra then
return false
end

kvh.CFrame = CFrame.lookAt(kvh.Position, kvh.Position + ra)

return true
end

function iyvm.aimWater(izyk)
local rxm = ga.Character
local vdpl = rxm and rxm:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not vdpl then
return false
end

if izyk then
cv()
end

local fdm = vdpl.CFrame.LookVector
local zhe = Vector3.new(fdm.X, 0, fdm.Z)
local ayqy = zbh()

if not ayqy then
return false
end

if zhe.Magnitude > 0.05 and zhe.Unit:Dot(ayqy) > 0.985 then
return true
end

vdpl.CFrame = CFrame.lookAt(vdpl.Position, vdpl.Position + ayqy)

return true
end

function iyvm.hold(nhbc)
local ry = ga.Character
local eat = ry and ry:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))
local gr = ry and ry:FindFirstChildOfClass(_d("OhpcWRkaHhY"))

if not (eat and gr) then
return false
end

if gr.SeatPart then
pcall(function()
gr.Sit = false
end)
end

local nbll = iyvm.floorAt(nhbc)

if not nbll then
return false
end

eat.AssemblyLinearVelocity = Vector3.zero
eat.CFrame = CFrame.new(Vector3.new(nhbc.X, nbll.Position.Y + 3.2, nhbc.Z))

pcall(iyvm.aimWater, true)

bjce.phase = _d("GwtdXQ")
bjce.nextCastAt = 0

return true
end

function iyvm.dive()
local xiv = iyvm.spot()

if not iyvm.ensureSpotMap() then
return false
end

if not iyvm.hold(xiv) then
return false
end

iyvm.islandAskedAt = 0

local yf = iyvm.zoneAt(xiv)

bjce.lastMessage = yf
and (_d("OgBdXB4bEFIbWV1XERIXHxxPFgESAE9CSBgBV1o") .. tostring(yf.name) .. _d("Ww"))
or _d("OgBdXB4bEFIbWV1XERIXHxxPFgESAE9CSBgB")

task.wait(0.25)
iyvm.sync()
bjce.deepDiveAt = os.clock() + 2

return true
end

function iyvm.walk()
local hwza = ga.Character
local iaiu = hwza and hwza:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if iyvm.walking and os.clock() - (iyvm.walkStartedAt or 0) < 60 then
return false
end

if not iaiu then
return false
end

local cqyb = iyvm.spot()

if (iaiu.Position - Vector3.new(cqyb.X, iaiu.Position.Y, cqyb.Z)).Magnitude <= 8 then
bjce.phase = _d("GwtdXQ")
bjce.nextCastAt = 0

return true
end

iyvm.walking = true
iyvm.walkStartedAt = os.clock()
bjce.deepPhase = _d("BQ5dUw")
bjce.deepStageAt = os.clock()
bjce.lastMessage = _d("JQ5dUx4bEFIbXhgDHRJSC1RdBxAEBk9GWQMQBVIcQVcD")

task.spawn(function()
local lwr = hwza and hwza:FindFirstChildOfClass(_d("OhpcWRkaHhY"))

local nv, ci = pcall(function()

local qrv = workspace:FindFirstChild(_d("Pw5BSw"))
local fubi = iyvm.customIsland or iyvm.islandOf(cqyb)
local umrd = (iaiu.Position - Vector3.new(cqyb.X, iaiu.Position.Y, cqyb.Z)).Magnitude

if umrd > 400 then
if not (qrv and qrv:FindFirstChild(_d("MQBQSwMUGz4AU1oO"))) then
pcall(function()
fw.TeleportToWorld:FireServer(_d("HgBTWg4"))
end)

local gtbq = os.clock() + 20

while bjce.deepWalk and os.clock() < gtbq do
local kojz = workspace:FindFirstChild(_d("Pw5BSw"))

if kojz and kojz:FindFirstChild(_d("MQBQSwMUGz4AU1oO")) then
break
end

task.wait(0.5)
end
end

if bjce.deepWalk then
local okl = iyvm.arrivals and iyvm.arrivals[fubi]

if okl then
iyvm.hop(okl)
else
local wql = Vector3.new(cqyb.X - iaiu.Position.X, 0, cqyb.Z - iaiu.Position.Z)
local gkjh = wql.Magnitude > 1 and wql.Unit or Vector3.new(1, 0, 0)

iyvm.hop(Vector3.new(cqyb.X - gkjh.X * 120, cqyb.Y, cqyb.Z - gkjh.Z * 120))
end

task.wait(1.5)
end
end

if bjce.deepWalk and lwr then

local rgro = (iaiu.Position - Vector3.new(cqyb.X, iaiu.Position.Y, cqyb.Z)).Magnitude
local vytp = os.clock() + math.clamp(rgro / 8, 30, 600)
local dl = 0
local wgqx = iaiu.Position
local pbm = os.clock()

while bjce.deepWalk and os.clock() < vytp do
local czti = Vector3.new(cqyb.X - iaiu.Position.X, 0, cqyb.Z - iaiu.Position.Z)

if czti.Magnitude <= 3 then
break
end

if os.clock() - dl >= 0.25 then
lwr:MoveTo(Vector3.new(cqyb.X, iaiu.Position.Y, cqyb.Z))
dl = os.clock()
end

if os.clock() - pbm >= 1.2 then
if (iaiu.Position - wgqx).Magnitude < 2 then
lwr.Jump = true
end

wgqx = iaiu.Position
pbm = os.clock()
end

task.wait(0.1)
end

lwr:MoveTo(iaiu.Position)
end
end)

iyvm.walking = false

if not nv then
bjce.deepPhase = _d("GwtdXQ")
bjce.deepStageAt = os.clock()
bjce.lastMessage = _d("JQ5dU1cBGFIrVF0HEAQGT2ZZAxAFUglQURsQE0hP") .. tostring(ci)

return
end

if not bjce.deepWalk then
return
end

local xp = Vector3.new(iaiu.Position.X - cqyb.X, 0, iaiu.Position.Z - cqyb.Z)

if xp.Magnitude <= 6 then

pcall(iyvm.aimWater, true)
bjce.phase = _d("GwtdXQ")
bjce.nextCastAt = 0
bjce.deepPhase = _d("GgBdXA")
bjce.deepStageAt = os.clock()
iyvm.sync()
bjce.lastMessage = _d("JQ5dUxIRVwYAEUwfEFcBDkddE1UTFwpBFQAUAxcdEUsHGgM")
else

bjce.deepPhase = _d("GwtdXQ")
bjce.deepStageAt = os.clock()
bjce.lastMessage = _d("MQBEVBNVGR0bEU8WGRxSG14YAx0SUgtUXQcQBAZPRlkDEAVSHEFXA1VaUhtDQR4bEFIOVlkeGw")
end
end)

return false
end

function iyvm.settle()
for bija = 1, 30 do
if not bjce.deepZone or bjce.deepWalk then
return false
end

if iyvm.dive() then
return true
end

task.wait(1)
end

return false
end

function iyvm.surface()
local zx = ga.Character
local qm = zx and zx:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not qm then
return false
end

local nr = RaycastParams.new()
nr.FilterType = Enum.RaycastFilterType.Exclude
nr.FilterDescendantsInstances = { zx }

local aqz = workspace:Raycast(vgd + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), nr)
local yj = vgd

if aqz and aqz.Instance.Name ~= _d("JQ5FXQU") then
yj = Vector3.new(vgd.X, aqz.Position.Y + 3, vgd.Z)
end

qm.CFrame = CFrame.new(yj)
bjce.phase = _d("GwtdXQ")
bjce.nextCastAt = 0

return true
end

function bjce.gotoIsland()
local xd = ga.Character
local ja = xd and xd:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))
local euqc = workspace:FindFirstChild(_d("OxxdWRkRMRscWV0FGBYcIWF7"), true)

if not (ja and euqc) then
return false
end

local ftg = euqc:GetPivot()
local acw = RaycastParams.new()
acw.FilterType = Enum.RaycastFilterType.Exclude
acw.FilterDescendantsInstances = { xd, euqc }

local ode = nil
local eybl = -math.huge

for csz, nzb in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local ffb = workspace:Raycast(ftg.Position + nzb + Vector3.new(0, 30, 0), Vector3.new(0, -120, 0), acw)

if ffb and ffb.Position.Y > eybl then
ode = ffb
eybl = ffb.Position.Y
end
end

if ode then
ja.CFrame = CFrame.new(Vector3.new(ode.Position.X, eybl + 3.5, ode.Position.Z))
else
ja.CFrame = CFrame.new(ftg.Position + Vector3.new(0, 4, 0))
end

bjce.phase = _d("GwtdXQ")
bjce.nextCastAt = 0

return true
end

function iyvm.cycle()
local gaw = os.clock()
local ltkd = bjce.deepPhase or _d("GwtdXQ")
local dfpb = tonumber(bjce.deepStageAt) or 0

if gaw < math.max(bjce.shopTripUntil or 0, bjce.tpHoldUntil or 0) then
return
end

if ltkd == _d("GwtdXQ") then
bjce.deepPhase = _d("GgBdXA")
bjce.deepStageAt = gaw

if bjce.deepWalk then
iyvm.walk()
else
iyvm.dive()
end

return
end

if ltkd == _d("BQ5dUw") then
return
end

if ltkd == _d("GgBdXA") then
local wsgx = iyvm.current()

local psiz = iyvm.zoneAt(iyvm.spot())

if wsgx and not ga:GetAttribute(_d("IRhYVRocGRU")) and gaw - (bjce.deepAimAt or 0) > 2 then
bjce.deepAimAt = gaw
pcall(iyvm.aimWater)
end

if ga:GetAttribute(_d("IRhYVRocGRU")) then
if bjce.deepWalk then

bjce.deepPhase = _d("GwtdXQ")
bjce.deepStageAt = gaw
else
bjce.deepPhase = _d("FgZB")
bjce.deepStageAt = gaw
bjce.lastMessage = _d("IRhYVRocGRVPUExXAR8XT1VdEgVXAR9eTFdYVwEaQ14WFhIWT1dXBVUWGx0")
end
elseif not wsgx or (psiz and wsgx.index < psiz.index) then

bjce.deepPhase = _d("GwtdXQ")
bjce.deepStageAt = gaw
end

return
end

if ltkd == _d("FgZB") then
iyvm.surface()
bjce.deepPhase = _d("ARpDXhYWEg")
bjce.deepStageAt = gaw

return
end

if ltkd == _d("ARpDXhYWEg") and gaw - dfpb >= iyvm.surfaceWait then
bjce.deepPhase = _d("GwtdXQ")
end
end

local function br()
local tckj = ga.Character
local chf = tckj and tckj:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not chf then
return false
end

return (chf.Position - vgd).Magnitude <= 12
end

local function ma()
if not uat() then
return false
end

local fcb = pcall(function()
fw.FishingSetAuto:FireServer(true)
end)

bjce.usingGameAuto = fcb
return fcb
end

local function ribi()
bjce.usingGameAuto = false

pcall(function()
fw.FishingSetAuto:FireServer(false)
end)

pcall(function()
fw.FishingStop:FireServer()
end)
end

function bjce.recover()
bjce.phase = _d("GwtdXQ")
bjce.nextCastAt = 0
bjce.deepPhase = _d("GwtdXQ")
bjce.deepStageAt = 0
bjce.deepDiveAt = 0
bjce.waterRefusals = 0
bjce.usingGameAuto = false
bjce.castMark = bjce.totalCasts
bjce.castMarkAt = os.clock()

pcall(ribi)
pcall(uat)

if bjce.deepZone and not iyvm.current() then

pcall(function()
fw.TeleportToWorld:FireServer(_d("HgBTWg4"))
end)
elseif bjce.tpToBay and not br() then
pcall(ze)
end

bjce.lastMessage = _d("NAZCUB4bEFIcRVkbGRIWTxwYBRAEFxsRTB8QVwUORV0FVRYcCxFMGBocUhtZXVcSFh8KFktXGRgQDUgYBRoA")
end

local function vh()
if not uat() then
bjce.lastMessage = _d("PAARXh4GHxsBVhgFGhNSBl8YAx0SUg1QWxwFFhEE")
return false
end

local cabq = kbk()
local ewbs = zbh()
local pwsu = cabq or ewbs

if not pwsu then
bjce.lastMessage = _d("PAARTxYBEgBPV1cCGxNSAVRZBRcO")
return false
end

if cabq and ewbs and cabq:Dot(ewbs) < 0.25 then
pwsu = ewbs
end

bjce.phase = _d("EQ5CTB4bEA")
bjce.lastMessage = nil
bjce.watchdogAt = os.clock() + 25

local rjp, fauv = pcall(function()
fw.FishingThrow:FireServer(1, pwsu)
end)

if not rjp then
bjce.phase = _d("GwtdXQ")
bjce.lastMessage = tostring(fauv)
bjce.nextCastAt = os.clock() + 3
return false
end

return true
end

local dpze = fw.FishingUpdate.OnClientEvent:Connect(function(vdz, gxob)
bjce.dirty = true

if vdz == _d("IRtQTBI") then
if type(gxob) == _d("Bg5TVBI") then
bjce.autoOn = gxob.autoOn == true
end

return
end

if vdz == _d("MQ5CTA") then
bjce.phase = _d("BQ5YTB4bEDAGRV0")
bjce.waterRefusals = 0
return
end

if vdz == _d("MAZFXQ") then
local sjqt = type(gxob) == _d("Bg5TVBI") and tonumber(gxob.warning) or 1

bjce.phase = _d("AApUVB4bEA")
bjce.watchdogAt = os.clock() + 15

task.delay(math.max(0.3, sjqt + 0.8), function()
if bjce.phase ~= _d("AApUVB4bEA") then
return
end

pcall(function()
fw.FishingReel:FireServer(true, 120)
end)

bjce.phase = _d("AApCVxsDHhwI")
end)

return
end

if vdz == _d("MQ5FWx8") then

local set = type(gxob) == _d("Bg5TVBI") and tonumber(gxob.totalCasts) or nil
local yc = tonumber(getgenv().ACBXFishingCatchMark) or 0

if set and set <= yc and yc - set < 25 then
return
end

if set then
getgenv().ACBXFishingCatchMark = set
end

local sja = type(gxob) == _d("Bg5TVBI") and tostring(gxob.itemId) or _d("BwFaVhgCGQ")
local yu = bjce.catchName(sja)

bjce.catches[sja] = (bjce.catches[sja] or 0) + 1
bjce.totalCatches = (bjce.totalCatches or 0) + 1

local ozg = type(gxob) == _d("Bg5TVBI") and gxob.chest or nil

if type(ozg) == _d("Bg5TVBI") and ozg.itemId then
local qckv = tostring(ozg.itemId)

bjce.catches[qckv] = (bjce.catches[qckv] or 0) + 1
end

if os.clock() - (xm.at or 0) >= 5 then
xm.at = os.clock()
xm.save()
end
bjce.lastCatch = yu
bjce.lastMessage = nil
bjce.phase = _d("GwtdXQ")
bjce.nextCastAt = os.clock() + 2.5

if type(gxob) == _d("Bg5TVBI") then
bjce.casts = tonumber(gxob.casts) or bjce.casts
bjce.totalCasts = tonumber(gxob.totalCasts) or bjce.totalCasts
bjce.autoUnlocked = gxob.autoUnlocked == true or bjce.autoUnlocked
end

return
end

if vdz == _d("MxpFVzgTEQ") then

bjce.usingGameAuto = false
bjce.phase = _d("GwtdXQ")
bjce.nextCastAt = os.clock() + 1
return
end

if vdz == _d("NxxSWQcQEw") then
bjce.phase = _d("GwtdXQ")
bjce.lastMessage = _d("JgdUGBEcBBpPVlcDVRYFDkg")
bjce.nextCastAt = os.clock() + 2.5
return
end

if vdz == _d("IApbXRQBEhY") then
bjce.phase = _d("GwtdXQ")

local hvlu = type(gxob) == _d("Bg5TVBI") and tostring(gxob.message) or _d("MQ5CTFcHEhgKUkwSEQ")
bjce.lastMessage = hvlu

if hvlu:lower():find(_d("BQ5FXQU"), 1, true) then
bjce.waterRefusals = (bjce.waterRefusals or 0) + 1

if bjce.waterRefusals >= 2 then
bjce.waterRefusals = 0

if fz() then
bjce.lastMessage = _d("IApXTQQQE1IbRlEUEFdfT0VNBRsSFk9TWRQeVwYARlkFEVcGB1QYABQDFx0")
bjce.nextCastAt = os.clock() + 1.5
return
end
end

bjce.nextCastAt = os.clock() + 8
return
end

bjce.waterRefusals = 0
bjce.nextCastAt = os.clock() + 3
return
end
end)

local function eszx()
if not bjce.loaded then
return _d("IApQXB4bEFIJWEsfHBkVT0JMFgESXEEf")
end

local nz = bjce.autoUnlocked == true
or (bjce.totalCasts or 0) > 0
or (bjce.tutorialStep or 0) > 0
local up = pa and pa.RodsById and pa.RodsById[bjce.rod]
local ucio = up and tostring(up.name) or tostring(bjce.rod)
local mwf = math.floor((tonumber(bjce.luck) or 0) * 100 + 0.5)

local ulq = {
_d("IABVAlc") .. ucio,
_d("PhpSU01V") .. mwf .. _d("Vw"),
}

local onar = iyvm.current()

if onar then
table.insert(ulq, _d("KABfXU1V") .. onar.name .. _d("Ukca") .. tostring(math.floor(onar.luck * 100 + 0.5)) .. _d("V09dTRQeXg"))
end

table.insert(ulq, _d(""))
table.insert(ulq, _d("MQ5CTARVAx1PQkgSGxNITw") .. szvu(bjce.casts or 0))
table.insert(ulq, _d("JgBFWRtVFBMcRUtNVQ") .. szvu(bjce.totalCasts or 0))

table.insert(ulq, _d(""))
table.insert(ulq, _d("NAZCUB4bEFIaX1QYFhwXCwsY") .. (nz and _d("CwpC") or _d("HAA")))
table.insert(ulq, _d("MxpFV1oTHgEHEU0HEgUTC1QCVw") .. (bjce.autoUnlocked and _d("HRhfXRM") or _d("HABFGBgCGRcL")))

if bjce.enabled then
local xdqf = bjce.usingGameAuto and _d("FQ5cXVcUAgYA") or tostring(bjce.phase)

if xdqf == _d("BQ5YTB4bEDAGRV0") then
xdqf = _d("BQ5YTB4bEFIJXkpXFFcQBkVd")
elseif xdqf == _d("AApUVB4bEA") then
xdqf = _d("AApUVB4bEFIGXw")
elseif xdqf == _d("AApCVxsDHhwI") then
xdqf = _d("Hg5fXB4bEFIGRQ")
end

table.insert(ulq, _d(""))
table.insert(ulq, _d("MxpFV1czHgEHCxg") .. xdqf)

local au = tar.worldBoss

if au and type(au.hasWork) == _d("FBpfWwMcGBw") and au.enabled and au.hasWork() then
table.insert(ulq, _d("OgBdXB4bEEhPVlQYFxYeT1NXBAZXGxwRTQdVXwAKQk0aEARSAF8YHgEEUgxeVxsRGAUBGA"))
end

if bjce.lastCatch then
table.insert(ulq, _d("Pg5CTFcWFgYMWQJX") .. bjce.lastCatch)
end
end

if bjce.lastMessage then
table.insert(ulq, _d(""))
table.insert(ulq, _d("PABFXU1V") .. bjce.lastMessage)
end

return table.concat(ulq, _d("eA"))
end

local function xrq()
local dj = 0

for irm, awh in pairs(bjce.catches) do
local sq = wih.ById[irm]

if not (sq and sq.type == _d("EQdUSwM")) then
dj = dj + awh
end
end

return dj
end

local function izm()
local oskn = {}

for ejcj, trs in pairs(bjce.catches) do
local ahc = wih.ById[ejcj]
local err = ahc and ahc.type == _d("EQdUSwM") or false

table.insert(oskn, {
name = bjce.catchName(ejcj),
count = trs,
chest = err,
rank = err and (tonumber(ahc.border) or 1) or 0,
})
end

if #oskn == 0 then
return _d("PABFUB4bEFIMUE0QHQNSFlRMWX99JhpDVlcaGVIuREwYVTEbHFkYFhsTUhtZXVcBFh4DSBgEARYAG0IYHxAFF0ERcQNVBBMZVEtXHAMBCl1eW1UEHU9YTFcWFgAdWF0EVRgECkMYGRAPBk9CXQQGHh0BHw")
end

table.sort(oskn, function(ji, ssi)
if ji.chest ~= ssi.chest then
return ji.chest
end

if ji.chest and ji.rank ~= ssi.rank then
return ji.rank > ssi.rank
end

if ji.count ~= ssi.count then
return ji.count > ssi.count
end

return ji.name < ssi.name
end)

local mgf = {}

for aqd, su in ipairs(oskn) do
table.insert(mgf, su.name .. _d("Uo2xrFc") .. szvu(su.count))
end

local ydi = {
table.concat(mgf, _d("eGU")),
_d(""),
_d("JgBFWRtVFBMaVlADT1c") .. szvu(xrq()) .. _d("Uq2GGA") .. #oskn .. _d("UgRYVhMG"),
}

if bjce.lastCatch then
table.insert(ydi, _d("Pg5CTFcWFgYMWQJX") .. tostring(bjce.lastCatch))
end

return table.concat(ydi, _d("eA"))
end

local afg = {
rod = Vector3.new(-493, 18, -40254),
bait = Vector3.new(-493, 18, -40254),
}

local function clpj(baci)
if not pa then
return {}
end

local gda

if baci == _d("AABV") then
gda = pa.RodsById
elseif baci == _d("EA5YTA") then
gda = pa.BaitsById
else
gda = nil
end

local btz = {}

for rxr, eu in pairs(gda or {}) do
if not eu.crafted then
table.insert(btz, {
id = tostring(rxr),
name = tostring(eu.name or rxr),
cost = tonumber(eu.cost) or 0,
luck = tonumber(eu.luck) or 0,
index = tonumber(eu.index) or 0,
island = eu.shop == _d("GxxdWRkR"),
})
end
end

table.sort(btz, function(bh, cs)
if bh.index ~= cs.index then
return bh.index < cs.index
end

return bh.cost < cs.cost
end)

return btz
end

local function xhhc(qt)
if qt == _d("AABV") then
return bjce.rodsOwned or {}
elseif qt == _d("EA5YTA") then
return bjce.baitsOwned or {}
end

return {}
end

local function rze(gy)
if gy == _d("AABV") then
return bjce.rod
elseif gy == _d("EA5YTA") then
return bjce.equippedBait
end

return nil
end

local function yhjc(bxd)
local biwu = xhhc(bxd)
local fc = nil

for jnv, qrc in ipairs(clpj(bxd)) do
if biwu[qrc.id] == true then
fc = qrc
end
end

return fc
end

local function qk(mcyf)
if mcyf.island and bjce.islandLocked then
return false
end

return true
end

local function kwez(tf)
local cgag = xhhc(tf)
local hnd = bjce.casts or 0
local gpw = nil

for ezj, xxxw in ipairs(clpj(tf)) do
if cgag[xxxw.id] ~= true and xxxw.cost <= hnd and qk(xxxw) then
gpw = xxxw
end
end

return gpw
end

local function tjs(wrj)
local ap = xhhc(wrj)

for owg, rovf in ipairs(clpj(wrj)) do
if ap[rovf.id] ~= true and qk(rovf) then
return rovf
end
end

return nil
end

local function kjal(mir, igy)
if not igy then
return _d("HABfXVcaABwKVQ")
end

return igy.name .. _d("Ukca") .. tostring(math.floor(igy.luck * 100 + 0.5)) .. _d("V09dTRQeXg")
end

local function iklo()
if not pa then
return _d("NAZCUB4bEDYORVlXGxgGT1dXAhsTUkIRSx8aB1ILUEwWVQIcDkdZHhkWEANUFg")
end

local nlsz = {}
local ssbd = { rod = _d("IABV"), bait = _d("MA5YTA") }

for rwr, jlg in ipairs({ _d("AABV"), _d("EA5YTA") }) do
local ds = yhjc(jlg)
local bxod = nil

for yag, uq in ipairs(clpj(jlg)) do
if uq.id == rze(jlg) then
bxod = uq.name
end
end

if #nlsz > 0 then
table.insert(nlsz, _d(""))
end

table.insert(nlsz, ssbd[jlg] .. _d("SE8") .. kjal(jlg, ds))
table.insert(nlsz, _d("PQERVhgCTVI") .. (bxod or _d("HABfXQ")))

local mo = kwez(jlg) or tjs(jlg)

if mo then
local hv = mo.cost - (bjce.casts or 0)

table.insert(nlsz, _d("PApJTE1V") .. mo.name .. _d("Uq2GGA") .. szvu(mo.cost) .. _d("UgxQSwMG"))

if hv > 0 then
table.insert(nlsz, _d("PApUXFc") .. szvu(hv) .. _d("UgJeShI"))
end
else
table.insert(nlsz, _d("PApJTE1VEgQKQ0EDHR4cCBFXABsSFg"))
end
end

table.insert(nlsz, _d(""))
table.insert(nlsz, _d("MQ5CTARVAx1PQkgSGxNITw") .. szvu(bjce.casts or 0))

if bjce.shopMessage then
table.insert(nlsz, _d(""))
table.insert(nlsz, bjce.shopMessage)
end

return table.concat(nlsz, _d("eA"))
end

local function qbp(kqty, fwz)
local vvv = os.clock()

if vvv < (bjce.shopCallAt or 0) then
return false, _d("AQNeTw")
end

bjce.shopCallAt = vvv + 1.4

local ty, hnzg, bew, mk = pcall(function()
return fw.FishingShop:InvokeServer(kqty, fwz)
end)

if not ty then
return false, _d("Fx1DVwVV") .. tostring(hnzg)
end

sitx(mk)

if hnzg == true then
return true, nil
end

return false, tostring(bew or _d("AApXTQQQEw"))
end

function bjce.rebirthCardsHeld()
local fzdl = pa and type(pa.RebirthCards) == _d("Bg5TVBI") and #pa.RebirthCards or 0

if fzdl == 0 then
return 0, 0
end

local sgm = 0

for qpy, aheq in ipairs(pa.RebirthCards) do
if bjce.rebirthCards[aheq.cardId] then
sgm = sgm + 1
end
end

return sgm, fzdl
end

function bjce.rebirthReady()
local fruj, by = bjce.rebirthCardsHeld()

return by > 0 and fruj >= by and (tonumber(bjce.rebirths) or 0) < 1
end

function bjce.rebirthText()
local titf, hvw = bjce.rebirthCardsHeld()

if hvw == 0 then
return _d("NAZCUB4bEFILUEwWVRkdGxFUGBQTFwsdGAQaVwAKU1EFAR9SBkIYAhsWBA5YVBYXGxdB")
end

if (tonumber(bjce.rebirths) or 0) >= 1 then
return _d("IApTUQUBHxcLHxgjHRJSLlNZGREYHApVGD4GGxMBVRgeBlcdH1RWWQ")
end

if titf >= hvw then
return _d("MwNdGA") .. hvw .. _d("UgxQShMGVxQGQlASEVlSPVRZEwxXBgARShIXHgAbWRY")
end

local pi = {}

for cg, yjjg in ipairs(pa.RebirthCards) do
if not bjce.rebirthCards[yjjg.cardId] then
table.insert(pi, (string.gsub(yjjg.cardId, _d("LAlYSx8q"), _d(""))))
end
end

return titf .. _d("XQ") .. hvw .. _d("UgxQShMGWVI8RVEbGVccClRcVw") .. table.concat(pi, _d("Xk8")) .. _d("XA")
end

local function cvi(lo)
local tyjd = ga.Character
local cmsj = tyjd and tyjd:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not cmsj then
return false
end

return (cmsj.Position - (afg[lo] or afg.rod)).Magnitude <= 26
end

local function ktuh(cbr)
if cvi(cbr) then
return true
end

local ybds = ga.Character
local fgjk = ybds and ybds:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not fgjk then
return false
end

local aw = afg[cbr] or afg.rod
bjce.shopTripUntil = os.clock() + 12
bjce.shopHoldUntil = os.clock() + 12

pcall(function()
fgjk.CFrame = CFrame.new(aw)
end)

task.wait(1.2)

return cvi(cbr)
end

local function xy(gfq, jpd, oerh)
if not oerh then
return false
end

if (bjce.casts or 0) < oerh.cost then
return false
end

if not ktuh(gfq) then
bjce.shopMessage = _d("MQBEVBNVGR0bEUoSFBQaT0VQElUEGgBBGBEaBVI") .. oerh.name
return false
end

local hxvy, hh = qbp(jpd, oerh.id)

if not hxvy then
local ilk = tostring(hh)
local pkd = ilk:find(_d("Jg5dU1cBGFIbWV1XMx4BB1RKGhQZ"), 1, true) or ilk:find(_d("MABQTFcxEhMDVEo"), 1, true)

if pkd then

bjce.shopMessage = _d("JQ5dUx4bEFIaQRgDGlcGB1QYFBoCHBtUSlcTGABP") .. oerh.name
return false
end

if hh ~= _d("AQNeTw") then
bjce.shopAt = os.clock() + 15
bjce.shopMessage = _d("IQpDThIHVwAKV00EEBNS") .. oerh.name .. _d("Ukc") .. ilk .. _d("Ww")
end

return false
end

bjce.shopMessage = _d("MABEXx8BVw") .. oerh.name

return true
end

local function boa(em)
local pvya = yhjc(em)

if not pvya or rze(em) == pvya.id then
return false
end

local nt

if em == _d("AABV") then
nt = _d("Nx5EUQcnGBY")
elseif em == _d("EA5YTA") then
nt = _d("Nx5EUQc3Fhsb")
else
return false
end

local ndq, grh = qbp(nt, pvya.id)

if not ndq then
if grh ~= _d("AQNeTw") then
bjce.shopMessage = _d("MQBEVBNVGR0bEV0GAB4CTw") .. pvya.name .. _d("Ukc") .. tostring(grh) .. _d("Ww")
end

return false
end

if em == _d("AABV") then
bjce.rod = pvya.id
elseif em == _d("EA5YTA") then
bjce.equippedBait = pvya.id
else
return false
end

bjce.shopMessage = _d("Nx5EUQcFEhZP") .. pvya.name

return true
end

local function th()
local agkw = bjce.shop

if os.time() - (bjce.lastSync or 0) >= 5 then
ypsd()
end

if agkw.equipRod then
boa(_d("AABV"))
end

if agkw.equipBait then
boa(_d("EA5YTA"))
end

if agkw.autoBuyRod then
xy(_d("AABV"), _d("MBpIahgR"), kwez(_d("AABV")))
end

if agkw.autoBuyBait then
xy(_d("EA5YTA"), _d("MBpIehYcAw"), kwez(_d("EA5YTA")))
end
end

local function ms()
local iws = bjce.shop

return iws.autoBuyRod or iws.autoBuyBait or iws.equipRod or iws.equipBait
end

bjce.shopIsland = {
rods = function()
local hcfc = pa and pa.RodsById or {}
local hbuz = {}

for wehq, moty in pairs(hcfc) do
if tostring(moty.shop) == _d("GxxdWRkR") then
table.insert(hbuz, {
id = tostring(wehq),
name = tostring(moty.name or wehq),
cost = tonumber(moty.cost) or 0,
luck = tonumber(moty.luck) or 0,
index = tonumber(moty.index) or 0,
crafted = moty.crafted == true,
})
end
end

table.sort(hbuz, function(cni, tirq)
return cni.index < tirq.index
end)

return hbuz
end,

angler = function()
local rnzm = workspace:FindFirstChild(_d("PD9ySw"), true)

if not rnzm then
return nil
end

for zvbq, mz in ipairs(rnzm:GetChildren()) do
if mz:GetAttribute(_d("IQpSShIBNhwIXV0FOycx")) then
return mz
end
end

return nil
end,
held = function(vwuh)
return (bjce.rodsOwned or {})[vwuh] == true
end,
recipeHeld = function(heu)
for ksg, bbpe in ipairs(heu or {}) do
local rcud = tonumber((bjce.mats or {})[bbpe.id]) or 0

if rcud < (tonumber(bbpe.count) or 0) then
return false
end
end

return true
end,
recipeText = function(ut)
local fquu = {}

for xrt, abj in ipairs(ut or {}) do
local ius = tonumber((bjce.mats or {})[abj.id]) or 0
local bni = (wih.ById[abj.id] and wih.ById[abj.id].name) or tostring(abj.id)

table.insert(fquu, bni .. _d("Ug") .. szvu(ius) .. _d("XQ") .. szvu(tonumber(abj.count) or 0))
end

return table.concat(fquu, _d("Uq2GGA"))
end,

stand = function(zp)
local bn = ga.Character
local vkj = bn and bn:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not (vkj and zp) then
return false
end

local rzwz = zp:GetPivot()
local reg = zp:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw")) or zp:FindFirstChildWhichIsA(_d("MA5CXScUBQY"), true)
local yaf = reg and (reg.CFrame * CFrame.new(0, 0, -5)).Position or nil

if not yaf then
local mkct = RaycastParams.new()
mkct.FilterType = Enum.RaycastFilterType.Exclude
mkct.FilterDescendantsInstances = { bn, zp }

local wgoy = nil
local qppj = math.huge

for nnjj, pist in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local ek = workspace:Raycast(rzwz.Position + pist + Vector3.new(0, 30, 0), Vector3.new(0, -140, 0), mkct)

if ek and tostring(ek.Instance.Name) ~= _d("JQ5FXQU") and ek.Position.Y <= rzwz.Position.Y + 10 then
local mwae = math.abs(ek.Position.Y - rzwz.Position.Y)

if mwae < qppj then
wgoy = ek
qppj = mwae
end
end
end

yaf = wgoy and Vector3.new(wgoy.Position.X, wgoy.Position.Y + 3.5, wgoy.Position.Z) or (rzwz.Position + Vector3.new(0, 4, 0))
end

bjce.shopTripUntil = os.clock() + 12

bjce.islandTripUntil = os.clock() + 12

pcall(function()
vkj.CFrame = CFrame.new(yaf)
end)

task.wait(1.2)

return true
end,
atIsland = function()
local jn = workspace:FindFirstChild(_d("OxxdWRkRMRscWV0FGBYcIWF7"), true)
local yy = ga.Character
local ack = yy and yy:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not (jn and ack) then
return false
end

return (ack.Position - jn:GetPivot().Position).Magnitude <= 45
end,
toIsland = function()
if bjce.shopIsland.atIsland() then
return true
end

bjce.shopTripUntil = os.clock() + 12

if not bjce.gotoIsland() then
return false
end

task.wait(1.2)

return bjce.shopIsland.atIsland()
end,

craftExcalibur = function()
local mju = bjce.shopIsland.angler()

if not mju or bjce.shopIsland.held(_d("AABVZwQQFAAKRQ")) then
return false
end

if not bjce.shopIsland.recipeHeld(pa and pa.SecretRecipe) then
return false
end

bjce.shopIsland.stand(mju)

local bnsa, fru = qbp(_d("MR1QXgMnGBY"), _d("AABVZwQQFAAKRQ"))

if bnsa then
bjce.rod = _d("AABVZwQQFAAKRQ")
bjce.islandMessage = _d("MR1QXgMQE1IbWV1XMA8RDl1RFQAFUh1eXFcUA1IbWV1XPR4WC1RWVzQZFQNUSg")
elseif fru ~= _d("AQNeTw") then
bjce.islandMessage = _d("OgZVXBIbVzMBVlQSB1cACldNBBATUhtZXVcwDxEOXVEVAAVSRw") .. tostring(fru) .. _d("Ww")
end

return bnsa
end,
buyRod = function()
if bjce.islandLocked then
return false
end

local dfko = bjce.rodsOwned or {}
local txqm = nil

for rno, lts in ipairs(bjce.shopIsland.rods()) do
if not lts.crafted
and dfko[lts.id] ~= true
and lts.cost <= (bjce.casts or 0)
and (txqm == nil or lts.index > txqm.index) then
txqm = lts
end
end

if not txqm then
return false
end

if not bjce.shopIsland.toIsland() then
bjce.islandMessage = _d("MQBEVBNVGR0bEUoSFBQaT0VQElUeAQNQVhNVFB0aX0wSBw")
return false
end

local wp, dt = qbp(_d("MBpIahgR"), txqm.id)

if wp then
bjce.islandMessage = _d("MABEXx8BVw") .. txqm.name
elseif dt ~= _d("AQNeTw") then
local go = tostring(dt)

if not (go:find(_d("Jg5dU1cBGA"), 1, true) or go:find(_d("OxxdWRkREgA"), 1, true)) then
bjce.islandAt = os.clock() + 15
bjce.islandMessage = _d("IQpDThIHVwAKV00EEBNS") .. txqm.name .. _d("Ukc") .. go .. _d("Ww")
end
end

return wp
end,
craftBoot = function()
if bjce.boot.owned or bjce.islandLocked then
return false
end

if not bjce.shopIsland.recipeHeld(pa and pa.BootRecipe) then
return false
end

if not bjce.shopIsland.toIsland() then
bjce.islandMessage = _d("MQBEVBNVGR0bEUoSFBQaT0VQElUeAQNQVhNVFB0aX0wSBw")
return false
end

local qkt, hnf = qbp(_d("MR1QXgM3GB0b"))

if qkt then
bjce.boot.owned = true
bjce.islandMessage = _d("MR1QXgMQE1IbWV1XORIVCl9cFgcOUi1eVwM")
elseif hnf ~= _d("AQNeTw") then
bjce.islandMessage = _d("OxxdWRkRVzQGQlASBxoTARFKEhMCAQpVGAMdElINXlcDVV8") .. tostring(hnf) .. _d("Ww")
end

return qkt
end,
best = function()
local ohl = bjce.rodsOwned or {}
local gv = nil

for rctg, odpi in ipairs(bjce.shopIsland.rods()) do
if ohl[odpi.id] == true and (gv == nil or odpi.luck > gv.luck) then
gv = odpi
end
end

return gv
end,

equipRod = function()
local rbcj = bjce.shopIsland.best()

if not rbcj or bjce.rod == rbcj.id then
return false
end

local jt, sor = qbp(_d("Nx5EUQcnGBY"), rbcj.id)

if jt then
bjce.rod = rbcj.id
bjce.islandMessage = _d("Nx5EUQcFEhZP") .. rbcj.name
elseif sor ~= _d("AQNeTw") then
bjce.islandMessage = _d("MQBEVBNVGR0bEV0GAB4CTw") .. rbcj.name .. _d("Ukc") .. tostring(sor) .. _d("Ww")
end

return jt
end,
equipBoot = function()
if not bjce.boot.owned or bjce.boot.equipped then
return false
end

local fmvu, ni = qbp(_d("Nx5EUQc3GB0b"), true)

if fmvu then
bjce.boot.equipped = true
bjce.islandMessage = _d("Nx5EUQcFEhZPRVASVTsXCFRWExQFC09zVxgB")
elseif ni ~= _d("AQNeTw") then
bjce.islandMessage = _d("MQBEVBNVGR0bEV0GAB4CT0VQElUVHQBFGF8") .. tostring(ni) .. _d("Ww")
end

return fmvu
end,
active = function()
local nuhg = bjce.island

return nuhg.autoRod or nuhg.equipRod or nuhg.autoAcc or nuhg.equipAcc
end,
run = function()
local xhq = bjce.island

if os.time() - (bjce.lastSync or 0) >= 8 then
ypsd()
end

local pv = false

if xhq.autoRod then
pv = bjce.shopIsland.craftExcalibur()
end

if xhq.equipRod then
bjce.shopIsland.equipRod()
end

if xhq.autoRod and not pv then
bjce.shopIsland.buyRod()
end

if xhq.autoAcc then
bjce.shopIsland.craftBoot()
end

if xhq.equipAcc then
bjce.shopIsland.equipBoot()
end
end,
text = function()
if not pa then
return _d("NAZCUB4bEDYORVlXGxgGT1dXAhsTUkIRTB8QVxscXVkZEVcBB15IVxwEUhpfWQEUHh4OU1QSWw")
end

local zmnw = {}
local tqu = bjce.rodsOwned or {}

table.insert(zmnw, bjce.islandLocked and _d("Mw1QVhMaGRcLEXEEGRYcCxFRBFUbHQxaXRNVWlIdVFoeBwMaT1dRBQYDXA") or _d("Mw1QVhMaGRcLEXEEGRYcCxFRBFUYAgpfFg"))

for fnmu, mxa in ipairs(bjce.shopIsland.rods()) do
local cbd

if tqu[mxa.id] == true then
cbd = bjce.rod == mxa.id and _d("HRhfXRNVtcVPXlZXGxgF") or _d("HRhfXRM")
elseif mxa.crafted then
cbd = _d("OgZVXBIbVzMBVlQSB1cAClJRBxA")
else
cbd = szvu(mxa.cost) .. _d("UgxQSwMG")
end

table.insert(zmnw, mxa.name .. _d("Uo2xrFc") .. cbd)
end

table.insert(zmnw, _d(""))

if tqu.rod_secret then
table.insert(zmnw, _d("NxdSWRscFQcdCxgYAhkXCw"))
else
local iaa = bjce.shopIsland.recipeHeld(pa.SecretRecipe)

table.insert(zmnw, _d("NxdSWRscFQcdCxg") .. (iaa and _d("AApSUQcQVwAKUFwO") or _d("AApSUQcQVwEHXkoD")))
table.insert(zmnw, bjce.shopIsland.recipeText(pa.SecretRecipe))
end

table.insert(zmnw, _d("OgZVXBIbVzMBVlQSB01S") .. (bjce.shopIsland.angler() and _d("Bx8RVhgC") or _d("HABFGB8QBRc")))
table.insert(zmnw, _d(""))

local grp = bjce.boot
local amh

if grp.equipped then
amh = _d("PgpWXRkRFgAWEXoYGgNIT1RJAhwHAgpV")
elseif grp.owned then
amh = _d("PgpWXRkRFgAWEXoYGgNIT15PGRAT")
elseif bjce.shopIsland.recipeHeld(pa.BootRecipe) then
amh = _d("PgpWXRkRFgAWEXoYGgNIT0NdFBwHF09DXRYRDg")
else
amh = _d("PgpWXRkRFgAWEXoYGgNITw") .. bjce.shopIsland.recipeText(pa.BootRecipe)
end

table.insert(zmnw, amh)
table.insert(zmnw, _d("MQ5CTARVAx1PQkgSGxNITw") .. szvu(bjce.casts or 0))

if bjce.islandMessage then
table.insert(zmnw, _d(""))
table.insert(zmnw, bjce.islandMessage)
end

return table.concat(zmnw, _d("eA"))
end,
}

task.spawn(function()
ypsd()
end)

local ai = {
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

getgenv().ACBXAutoBuyHalloween = ai

fw.SyncItems.OnClientEvent:Connect(function(fm)
if type(fm) == _d("Bg5TVBI") then
ai.balances = fm
ai.lastSync = os.time()
end
end)

fw.RequestItemSync:FireServer()

fw.RaidShopState.OnClientEvent:Connect(function(faon)
if type(faon) == _d("Bg5TVBI") and faon.shopId == _d("Gg5dVBgCEhcB") then
ai.shopState = faon
ai.stateAt = os.clock()
end
end)

fw.RaidNotify.OnClientEvent:Connect(function(vkf)
local ne = ai.pending

if not ne or type(vkf) ~= _d("ARtDURkS") then
return
end

if vkf:sub(1, 9) == _d("Ijpjez80JDcr") then
ai.purchased[ne.id] = (ai.purchased[ne.id] or 0) + 1
ai.pending = nil
else
if ai.balances[ne.currency] then
ai.balances[ne.currency] = ai.balances[ne.currency] + ne.price
end

ai.failedUntil[ne.id] = os.time() + 5
ai.pending = nil
end
end)

fvtg.trip = {
untilAt = 0,
lastTry = 0,
lastResult = nil,
spot = nil,
}

function fvtg.merchant()
local ttz = workspace:FindFirstChild(_d("PD9ySw"))
local ocyf = fvtg.shopData and fvtg.shopData.NpcName or _d("IhpcSBwcGVIiVEoUHRYcGw")

return ttz and ttz:FindFirstChild(ocyf) or nil
end

function fvtg.stand()
local wpuv = fvtg.merchant()
local nia = wpuv and (wpuv:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw")) or wpuv:FindFirstChildWhichIsA(_d("MA5CXScUBQY")))
local qwhp = ga.Character
local tte = qwhp and qwhp:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not (nia and tte) then
return false
end

fvtg.trip.spot = nia.Position + Vector3.new(0, 3, 4)
tte.AssemblyLinearVelocity = Vector3.zero
tte.CFrame = CFrame.new(fvtg.trip.spot)

return true
end

function fvtg.fresh()
return ai.shopState ~= nil and os.clock() - ai.stateAt < 30
end

function fvtg.guiOpen()
local cm = rprq:FindFirstChild(_d("Og5dVBgCEhcBYlAYBTAHBg"))
local fgnp = cm and cm:FindFirstChild(_d("IQdeSDEHFh8K"))

if fgnp then
return fgnp.Visible == true
end

for bftn, glcz in ipairs(rprq:GetChildren()) do
if glcz:IsA(_d("IQxDXRIbMAcG")) and glcz.Name:lower():find(_d("Gg5dVBgCEhcB"), 1, true) and glcz.Enabled then
return true
end
end

return false
end

function fvtg.close()
local kvm = rprq:FindFirstChild(_d("Og5dVBgCEhcBYlAYBTAHBg"))
local nrp = kvm and kvm:FindFirstChild(_d("IQdeSDEHFh8K"))

if not (nrp and nrp.Visible) then
return false
end

local lt = nrp:FindFirstChild(_d("MQNeSxI3AgYbXlY"))

if not lt then
for en, sa in ipairs(nrp:GetDescendants()) do
if sa:IsA(_d("NRpYegIBAx0B")) and tostring(sa.Name):lower():find(_d("EQNeSxI"), 1, true) then
lt = sa
break
end
end
end

if lt and type(firesignal) == _d("FBpfWwMcGBw") then
pcall(function()
firesignal(lt.MouseButton1Click)
end)

task.wait(0.3)

if not nrp.Visible then
return true
end
end

pcall(function()
nrp.Visible = false
end)

return true
end

function fvtg.spend()
if ai.pending or os.time() - (ai.lastAttempt or 0) < 1 then
return nil
end

local kivb = ai.shopState

for quf, zvj in ipairs(fvtg.shopItems) do
if ai.selected[zvj.id] and os.time() >= (ai.failedUntil[zvj.id] or 0) then
local ylgj = zvj.stock
local ifb = ai.purchased[zvj.id] or 0

if kivb and kivb.stocks and kivb.stocks[zvj.id] then
ylgj = kivb.stocks[zvj.id]
end

if kivb and kivb.bought then
ifb = math.max(ifb, kivb.bought[zvj.id] or 0)
end

local qbm = ylgj and (ylgj - ifb) or 1
local sk = ai.balances[zvj.currency] or 0

if qbm > 0 and sk >= zvj.price then
ai.pending = {
id = zvj.id,
price = zvj.price,
currency = zvj.currency,
at = os.time(),
}
ai.lastAttempt = os.time()
ai.balances[zvj.currency] = sk - zvj.price

pcall(function()
fw.BuyRaidItem:FireServer(zvj.id, 1)
end)

return zvj.id
end
end
end

return nil
end

function fvtg.open(epm)
if not epm and fvtg.fresh() then
return true
end

if not epm and os.clock() < (fvtg.trip.lastTry or 0) + 8 then
return false
end

fvtg.trip.lastTry = os.clock()
fvtg.trip.untilAt = os.clock() + 12

bjce.shopTripUntil = os.clock() + 12
bjce.shopHoldUntil = os.clock() + 12
bjce.phase = _d("GwtdXQ")

local abmh = fvtg.merchant()
local xk = abmh and abmh:FindFirstChild(_d("Ih1eQB4YHgYWYUoYGAcG"))

if not (abmh and xk) then
bjce.deepPhase = _d("GwtdXQ")
fvtg.trip.untilAt = os.clock() + 60
fvtg.trip.lastResult = _d("JgdUGCcAGgIEWFZXOBIADFlZGQFXGxwRVhgBVxsBEUwfHARSDURRGxFZ")

return false
end

local vbrn = os.clock() + 3
local vgum = 0

while os.clock() < vbrn do

fvtg.stand()

if os.clock() >= vgum then
vgum = os.clock() + 0.8

if type(fireproximityprompt) == _d("FBpfWwMcGBw") then
pcall(function()
fireproximityprompt(xk)
end)
end

pcall(function()
fw.OpenRaidShop:FireServer(_d("Gg5dVBgCEhcB"))
end)
end

if fvtg.guiOpen() or fvtg.fresh() then
break
end

task.wait(0.1)
end

if not (fvtg.guiOpen() or fvtg.fresh()) then

bjce.deepPhase = _d("GwtdXQ")
fvtg.trip.untilAt = os.clock() + 60
fvtg.trip.lastResult = _d("JgdUGBQaAhwbVEpXER4WT19XA1UWHBxGXQVVWlIGRRgYGxsLT15IEhsEUgZfGAMdElIcVFkEGhkTAxFZBRAWXA")

return false
end

fvtg.trip.lastResult = _d("MQBEVgMQBVIAQV0ZWw")

for ir = 1, 3 do
fvtg.stand()

if not fvtg.spend() then
break
end

task.wait(1.2)
end

pcall(fvtg.close)

bjce.deepPhase = _d("GwtdXQ")

return true
end

local function aos(uc)
uc = math.max(0, math.floor(uc))
local lrqk = math.floor(uc / 3600)
local cu = math.floor((uc % 3600) / 60)
local bdy = uc % 60

if lrqk > 0 then
return string.format(_d("VwtZGFJFRRYC"), lrqk, cu)
elseif cu > 0 then
return string.format(_d("VwtcGFJFRRYc"), cu, bdy)
end

return string.format(_d("VwtC"), bdy)
end

local function sch()
local ffp = rprq:FindFirstChild(_d("Og5dVBgCEhcBYlAYBTAHBg"))
local zxw = ffp and ffp:FindFirstChild(_d("IQdeSDEHFh8K"))
local yzjg = zxw and zxw:FindFirstChild(_d("OxtUVTscBAY"))
local qtc = {}
local mst = nil

if yzjg then
for kaw, ethx in ipairs(fvtg.shopItems) do
local ve = yzjg:FindFirstChild(ethx.id)
local jgi = ve and ve:FindFirstChild(_d("MABJ"))
local hwo = jgi and jgi:FindFirstChild(_d("IRteWxw"))

if hwo and hwo:IsA(_d("JgpJTDsUFRcD")) then
local px, cz = hwo.Text:match(_d("WkpVE15QBFhAFEtdXVIWRBg"))

if px and cz then
qtc[ethx.id] = {
remaining = tonumber(px),
total = tonumber(cz),
}
end
end
end
end

if zxw then
for tfw, gphn in ipairs(zxw:GetDescendants()) do
if gphn:IsA(_d("JgpJTDsUFRcD")) and gphn.Text:find(_d("AApCXQMGVxsB"), 1, true) then
mst = gphn.Text:match(_d("AApCXQMGVxsBFEtdXVlZRhU"))
break
end
end
end

return qtc, mst
end

local function hnq(awqa)
if type(awqa) ~= _d("ARtDURkS") then
return 0
end

local arq = tonumber(awqa:match(_d("WkpVE14d"))) or 0
local pg = tonumber(awqa:match(_d("WkpVE14Y"))) or 0
local nbci = tonumber(awqa:match(_d("WkpVE14G"))) or 0
return arq * 3600 + pg * 60 + nbci
end

local function cqr()
local aq = ai.shopState
local xfjt, iqu = sch()
local ywv = {}
local ycyn = {}
local bys = {}

for jii, qwn in ipairs(fvtg.shopItems) do
local uqvh = qwn.stock
local dlbq = nil

if aq and aq.stocks and aq.stocks[qwn.id] then
uqvh = aq.stocks[qwn.id]
end

local vnyj = ai.purchased[qwn.id] or 0

if aq and aq.bought then
vnyj = math.max(vnyj, aq.bought[qwn.id] or 0)
end

if uqvh then
dlbq = math.max(0, uqvh - vnyj)
end

if (not aq or not aq.bought) and xfjt[qwn.id] then
dlbq = xfjt[qwn.id].remaining
uqvh = xfjt[qwn.id].total
end

local nvcj = qwn.currency == _d("GA5SUygaKB4OX0wSBxk") and _d("Pg5fTBIHGQE") or _d("MQ5fXA4")
local wfuz

if dlbq == nil then
wfuz = qwn.shortName
elseif dlbq <= 0 then
wfuz = qwn.shortName .. _d("Uq2GGAQaGxZPXk0D")
else
wfuz = qwn.shortName .. _d("Uq2GGA") .. tostring(dlbq) .. _d("XQ") .. tostring(uqvh or _d("TQ"))
end

if not ycyn[nvcj] then
ycyn[nvcj] = {}
table.insert(bys, nvcj)
end

table.insert(ycyn[nvcj], wfuz)
end

local puz = {}

for zgz, ik in ipairs(bys) do
table.insert(puz, ik)

for zya, qsh in ipairs(ycyn[ik]) do
table.insert(puz, qsh)
end
end

table.insert(ywv, table.concat(puz, _d("eGU")))
table.insert(ywv, _d(""))

if aq and type(aq.resetsIn) == _d("HBpcWhIH") then
local kzri = aq.resetsIn - (os.clock() - ai.stateAt)
table.insert(ywv, _d("IApCTBgWHAFPWFZX") .. aos(kzri))
elseif iqu then
if ai.uiTimerText ~= iqu then
ai.uiTimerText = iqu
ai.uiTimerSeconds = hnq(iqu)
ai.uiTimerAt = os.clock()
end

local izy = ai.uiTimerSeconds - (os.clock() - ai.uiTimerAt)
table.insert(ywv, _d("IApCTBgWHAFPWFZX") .. aos(izy))
else
table.insert(ywv, _d("IApCTBgWHAFPVVkeGQ5SrYYYARwEGxsRTB8QVwEHXkg"))
end

if not fvtg.fresh() then
table.insert(ywv, fvtg.trip.lastResult or _d("JgdUGBQaAhwbVEpXHARSDF1XBBATUkIRdwcQGVIcWVcHVQATA1pLVwEfF09SUBYHFhEbVEpXAAdSG14YHgFZ"))
end

return table.concat(ywv, _d("eA"))
end

fw.NPCBattleResult.OnClientEvent:Connect(function(ev)
if type(ev) ~= _d("Bg5TVBI") then
return
end

am.battlePending = false

if ev.result == _d("EQBeVBMaABw") and type(ev.remaining) == _d("HBpcWhIH") and tmox and eb then
fxt(tmox, eb, os.time() + ev.remaining)
return
end

if type(ev.npcId) == _d("ARtDURkS") then
local vv = type(ev.difficulty) == _d("ARtDURkS") and ev.difficulty or am.activeDifficulty[ev.npcId] or _d("HABDVRYZ")
local ov = gyro.ById[ev.npcId]
local ohme = tonumber(ev.cooldown) or (ov and ov.cooldown) or 300
fxt(ev.npcId, vv, os.time() + ohme)
end
end)

fw.SyncNPCCooldowns.OnClientEvent:Connect(function(tlg)
if type(tlg) ~= _d("Bg5TVBI") then
return
end

for mdhw, opkc in pairs(tlg) do
if type(mdhw) == _d("ARtDURkS") and type(opkc) == _d("HBpcWhIH") then
local hxw = am.activeDifficulty[mdhw] or _d("HABDVRYZ")
fxt(mdhw, hxw, opkc)
end
end
end)

local ok = {}
local rl = {}

for ruh, dpi in ipairs(tgg.Worlds) do

local ac = { _d("MwNd") }
local kc = {}
local vxok = {}
local daj = nil

for zvw, ubh in ipairs(dpi.npcs or {}) do
local ordn = gyro.ById[ubh]
if ordn then
table.insert(ac, ordn.name)
table.insert(vxok, ubh)
kc[ordn.name] = ubh
if ordn.type == _d("EA5FTBsQ") then
daj = ubh
end
end
end

local ro = dpi.id
if daj and bv.ById[daj] then
ro = bv.ById[daj].worldId or ro
end

for ysrg, jm in ipairs(dpi.npcs or {}) do
rl[jm] = ro

am.bossTeams.worldOf[jm] = dpi.id
end

table.insert(ok, {
id = dpi.id,
teleportWorldId = ro,
name = dpi.name,
options = ac,
ids = vxok,
byName = kc,
npcs = dpi.npcs,
})
end

local xokp = {}
local mvjy = {}
local ggop = {}

for gmrw, qoii in ipairs(tgg.Difficulties) do
table.insert(xokp, qoii.name)
mvjy[qoii.name] = qoii.id
ggop[qoii.id] = qoii.name
end

local keb = {}
local srqe = {}

for vml, bqks in ipairs(pdqj.Difficulties) do
table.insert(keb, bqks.name)
srqe[bqks.name] = bqks.id
end

local gqj = {}
local ixq = {}
local rnyi = {}
local wttf = {
soul_king = _d("IA5YXCAaBR4L"),
beerus = _d("IA5YXCAaBR4LbnoSEAUHHA"),
reid = _d("IA5YXCAaBR4LbmoSHBM"),
}

for pijs, ldzy in ipairs(pdqj.Raids) do
if ldzy.BossTitle and ldzy.id then
table.insert(gqj, ldzy.BossTitle)
ixq[ldzy.BossTitle] = ldzy.id
rnyi[ldzy.id] = ldzy.NpcId
end
end

local function jdi()
for fdx, cdni in ipairs({ _d("MA5FTBsQMAcG"), _d("MA5FTBsQMAcGAw") }) do
local gs = rprq:FindFirstChild(cdni)
local ujlr = gs and gs:FindFirstChild(_d("MA5FTBsQJBEdVF0Z"))
if ujlr and ujlr.Visible then
return ujlr
end
end
end

local function vkb()
for od, wdx in ipairs({ _d("MA5FTBsQMAcG"), _d("MA5FTBsQMAcGAw") }) do
local lscw = rprq:FindFirstChild(wdx)
local csso = lscw and lscw:FindFirstChild(_d("MA5FTBsQJBEdVF0Z"))
if csso then
return csso
end
end
end

local function vhzq()
if jdi() then
return true
end

for bxxf, lmn in ipairs({ _d("MA5FTBsQMAcG"), _d("MA5FTBsQMAcGAw") }) do
local zah = rprq:FindFirstChild(lmn)
local ecn = zah and zah:FindFirstChild(_d("OgZVXTUUAwYDVHoCAQMdAQ"))
if ecn and ecn.Visible then
return true
end
end

for kgr, ggfv in ipairs({ _d("OwFzWQMBGxc"), _d("OwFzWQMBGxdd") }) do
local tv = rprq:FindFirstChild(ggfv)
if tv and tv:IsA(_d("MABeVCEUGwcK")) and tv.Value then
return true
end
end

return false
end

function ojev.slotFree(eid)

if eid == nil then
return false
end

if not ojev.enabled then
return not vhzq()
end

return not ojev.busy(eid)
end

function ojev.npcSlot()
return ojev.roleSlot(_d("HB9S"))
end

local ti

local function uvon(yi)
yi = math.max(0, math.floor(yi))
if yi <= 0 then
return _d("AApQXA4")
end

local vgyr = math.floor(yi / 60)
local ib = yi % 60

if vgyr > 0 then
return string.format(_d("VwtcGFJFRRYc"), vgyr, ib)
end

return string.format(_d("VwtC"), ib)
end

local function nu()
for mlz, cupd in ipairs({ _d("MA5FTBsQMAcG"), _d("MA5FTBsQMAcGAw") }) do
local rvno = rprq:FindFirstChild(cupd)
if rvno then
local qvuc = rvno:FindFirstChild(_d("IBpffhsaGAAjUFoSGQ"))
local xgis = rvno:FindFirstChild(_d("JgBGXQUzGx0AQ3QWFxIe"))
if (qvuc and qvuc.Visible) or (xgis and xgis.Visible) then
return _d("OwERbBgCEgA")
end
end
end

if bky.currentRoom and (bky.inBattle or vhzq()) then
local bits = nil

for oqho, tvtr in ipairs({ _d("MA5FTBsQMAcG"), _d("MA5FTBsQMAcGAw") }) do
local uik = rprq:FindFirstChild(tvtr)
local oh = uik and uik:FindFirstChild(_d("MA5FTBsQJBEdVF0Z"))
local mkkb = oh and oh:FindFirstChild(_d("NwFUVQ40FAYGR100FAUW"))
local vg = mkkb and mkkb:FindFirstChild(_d("PA5cXTsUFRcD"))

if vg and vg.Text ~= _d("") then
bits = vg.Text
break
end
end

if bits then
return _d("MA5FTBscGRVP") .. bits .. _d("UjRjVxgYVw") .. bky.currentRoom .. _d("Lw")
end

return _d("MA5FTBscGRVPamoYGhpS") .. bky.currentRoom .. _d("Lw")
end

local vjf = vkb()
if vhzq() and vjf then
local fpc = vjf:FindFirstChild(_d("NwFUVQ40FAYGR100FAUW"))
local rsb = fpc and fpc:FindFirstChild(_d("PA5cXTsUFRcD"))
local jpa = rsb and rsb.Text

local ojdi = nil
if am.currentBattle then
ojdi = am.currentBattle.difficulty
elseif jpa then
local vw = iff[jpa]
if vw then
ojdi = am.activeDifficulty[vw]
end
end

local upt = _d("")
if ojdi then
upt = _d("UjQ") .. (ggop[ojdi] or ojdi) .. _d("Lw")
end

local vav = jpa
if am.currentBattle and am.currentBattle.npcId then
local ufhr = gyro.ById[am.currentBattle.npcId]
if ufhr then
vav = ufhr.name
end
end

if vav and vav ~= _d("") then
return _d("MA5FTBscGRVP") .. vav .. upt
end

return _d("MA5FTBscGRU") .. upt
end

am.currentBattle = nil

local axdo = tar.enabled and (tar.bossFor(1) or tar.bossFor(2))

if axdo then
local sw = mkd:FindFirstChild(_d("IA5YXCQBFgYaQg"))

if sw then
local ns = axdo
local wma = pdqj.ById[ns]
local qker = wma and wma.BossTitle or ns
local rp = sw:GetAttribute(_d("Oxx+SBIb")) == true or sw:GetAttribute(_d("NABDWxIR")) == true
local yd = sw:GetAttribute(_d("IApQXA4q") .. ns) == true
local isa = tar.progress[ns]
local xh = isa and isa.locked == true

if not rp then
local hd = tonumber(sw:GetAttribute(_d("MQdQVhAQBDMb"))) or 0
return _d("OwtdXVdYVw") .. qker .. _d("Uj1QURNPVw") .. uvon(hd - os.time())
end

if isa and isa.cooldowns then
local ijzd = tonumber(isa.cooldowns.normal)

if ijzd and ijzd > 0 then
return _d("OwtdXVdYVw") .. qker .. _d("Uj1QURNPVw") .. uvon(ijzd)
end
end

if not yd or xh then
return _d("OwtdXVdYVw") .. qker .. _d("Uj1QURNPVx4AUlMSEQ")
end

return _d("OwtdXVdYVw") .. qker .. _d("Uj1QURNPVwAKUFwO")
end
end

if bjce.enabled then
if bjce.usingGameAuto then
return _d("NAZCUB4bEFJCEV8WGBJSDkRMGFVf") .. szvu(xrq()) .. _d("UgxQTRAdA1s")
end

if bjce.phase == _d("EQ5CTB4bEA") then
return _d("NAZCUB4bEFJCEVsWBgMbAVY")
end

if bjce.phase == _d("BQ5YTB4bEDAGRV0") then
return _d("NAZCUB4bEFJCEU8WHAMbAVYYERoFUg4RWh4BEg")
end

if bjce.phase == _d("AApUVB4bEA") or bjce.phase == _d("AApCVxsDHhwI") then
return _d("NAZCUB4bEFJCEUoSEBsbAVYYGBsSUgZf")
end

return _d("NAZCUB4bEFJCEVETGRJSRw") .. szvu(xrq()) .. _d("UgxQTRAdA1s")
end

if not am.enabled and not am.story then
return _d("OwtdXQ")
end

local xfw, nm, tnvv = ti()

if xfw then
local cww = gyro.ById[xfw]
local wf = cww and cww.name or xfw
local ytca = (nm or 0) - os.time()
local izh = ggop[tnvv] or tnvv or _d("PABDVRYZ")

return _d("OwtdXVdYVzwKSUxNVQ") .. wf .. _d("UjQ") .. izh .. _d("L08Z") .. uvon(ytca) .. _d("Ww")
end

return _d("OwtdXQ")
end

local function bxj(fuj)
local eaij = workspace:FindFirstChild(_d("PD9ySw"))
if not eaij then
return nil
end

for uqyt, kvl in ipairs(eaij:GetChildren()) do
if kvl:GetAttribute(_d("PD9ycRM")) == fuj then
return kvl
end
end

return nil
end

local function hhw(jjp)
local yk = ga.Character
local ltzp = yk and yk:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))
if not (ltzp and jjp) then
return false
end

local zy, tny = pcall(function()
return jjp:GetPivot()
end)
if not zy then
return false
end

local ioop = tny.Position + tny.LookVector * 6 + Vector3.new(0, 3, 0)
local kkm = Vector3.new(tny.Position.X, ioop.Y, tny.Position.Z)

ltzp.CFrame = CFrame.lookAt(ioop, kkm)
return true
end

local function wuvy()
local mn = ga:FindFirstChild(_d("IgNQQRIHJBEdWEgDBg"))
local pnya = mn and mn:FindFirstChild(_d("IgNQQRIHOh0LRFQS"))

if not pnya then
return nil
end

local hihy, sam = pcall(require, pnya)
if not hihy then
return nil
end

local ajco, sldn = pcall(function()
return sam:GetControls()
end)

if ajco then
return sldn
end
end

local function wkb(gsmc, fud, hku, uz, uecs)
uz = uz or 8

local function dpl()
return fud and fud()
end

local lomv = os.clock()

while os.clock() - lomv < 5 do
if dpl() then
return false
end

if ga.Character and ga.Character:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw")) then
break
end
task.wait(0.2)
end

local psuz = ga.Character
local mbel = psuz and psuz:FindFirstChildOfClass(_d("OhpcWRkaHhY"))
local otrn = psuz and psuz:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not (mbel and otrn) then
return false
end

if (otrn.Position - gsmc).Magnitude <= uz then
return true
end

local kwlr = hku or mbel.WalkSpeed
local odbt = wuvy()
local iqgv = mbel.JumpPower
local gkhr = mbel.UseJumpPower

if uecs then
pcall(function()
mbel.UseJumpPower = true
mbel.JumpPower = math.max(iqgv, 60)
end)
end

if odbt then
pcall(function()
odbt:Disable()
end)
end

local pmi = mbel:FindFirstChildOfClass(_d("MwFYVRYBGAA"))
local aeta = nil
local juit = psuz:FindFirstChild(_d("MwFYVRYBEg"))
local qbkd = juit and (juit:FindFirstChild(_d("JQ5dUzYbHh8"), true) or juit:FindFirstChild(_d("IBpfeRkcGg"), true))

if pmi and qbkd then
local peto, qgvb = pcall(function()
return pmi:LoadAnimation(qbkd)
end)

if peto and qgvb then
aeta = qgvb
aeta.Looped = true
aeta.Priority = Enum.AnimationPriority.Movement
pcall(function()
aeta:Play()
end)
end
end

local function gi(jjhw)
otrn.AssemblyLinearVelocity = Vector3.new(0, otrn.AssemblyLinearVelocity.Y, 0)

if aeta then
pcall(function()
aeta:Stop(0.1)
end)
end

if odbt then
pcall(function()
odbt:Enable()
end)
end

if uecs then
pcall(function()
mbel.JumpPower = iqgv
mbel.UseJumpPower = gkhr
end)
end

return jjhw
end

local function yku(pqcb, ozw)
local jrg = os.clock()
local wm = os.clock()
local fd = 0
local xc = otrn.Position

while os.clock() - jrg < ozw do
if dpl() then
return false
end

local pd = pqcb - otrn.Position
pd = Vector3.new(pd.X, 0, pd.Z)

if pd.Magnitude <= 3 then
return true
end

local ivq = pd.Unit
otrn.AssemblyLinearVelocity = Vector3.new(
ivq.X * kwlr,
otrn.AssemblyLinearVelocity.Y,
ivq.Z * kwlr
)

if uecs and os.clock() - wm >= 0.5 then
local hee = (otrn.Position - xc).Magnitude
local yet = mbel:GetState()
local kia = yet ~= Enum.HumanoidStateType.Jumping and yet ~= Enum.HumanoidStateType.Freefall

if hee < 1.5 and kia and os.clock() - fd >= 0.8 then
mbel.Jump = true
fd = os.clock()
end

xc = otrn.Position
wm = os.clock()
end

task.wait()
end

return false
end

local da = yrpn:CreatePath({
AgentRadius = 2.5,
AgentHeight = 5,
AgentCanJump = true,
WaypointSpacing = 8,
})

local vj = pcall(function()
da:ComputeAsync(otrn.Position, gsmc)
end)

if vj and da.Status == Enum.PathStatus.Success then
for mvlf, ez in ipairs(da:GetWaypoints()) do
if dpl() then
return gi(false)
end

if (otrn.Position - gsmc).Magnitude <= uz then
break
end

if not yku(ez.Position, 10) and dpl() then
return gi(false)
end
end
end

if dpl() then
return gi(false)
end

local mg = yku(gsmc, 15)
return gi(mg)
end

local function gklm(rc, rdsu, wjyz)
return wkb(rc, wjyz, rdsu)
end
getgenv().ACBXWalkCancel = false
getgenv().ACBXWalkToPositionWithSpeed = function(wjnj, fno)
return gklm(wjnj, fno, function()
return getgenv().ACBXWalkCancel == true
end)
end

local function qvu()
if am.story then
return { am.storyDifficulty }
end

return am.difficulties
end

local function scxw()
local pub = {}

if am.story then
for wug, cqz in ipairs(ok) do
for xf, qir in ipairs(cqz.ids) do
table.insert(pub, qir)
end

if cqz.id == _d("GxxUUxYc") then
break
end
end

return pub
end

local eee = {}

for bzis, nra in ipairs(ok) do
local zrkb = am.selectedByWorld[nra.name]

if zrkb then
for nl, buf in ipairs(zrkb) do
if not eee[buf] then
eee[buf] = true
table.insert(pub, buf)
end
end
end
end

return pub
end

ti = function()
local ucj = nil
local scq = nil
local st = nil

for wt, hblq in ipairs(scxw()) do
local pp = am.unlocked[hblq]

for bhyn, xuhb in ipairs(qvu()) do
if not pp or pp[xuhb] ~= false then
local xpin = hy(hblq, xuhb)

if not st or xpin < st then
ucj = hblq
scq = xuhb
st = xpin
end
end
end
end

return ucj, st, scq
end

local function rrh(sb)
if type(sb) ~= _d("ARtDURkS") then
return nil
end

local jpz = tonumber(sb:match(_d("WkpVE14d")))
local vcl = tonumber(sb:match(_d("WkpVE14Y")))
local ldu = tonumber(sb:match(_d("WkpVE14G")))

if not jpz and not vcl and not ldu then
return nil
end

return (jpz or 0) * 3600 + (vcl or 0) * 60 + (ldu or 0)
end

local function vzu()
local rpc = workspace:FindFirstChild(_d("PD9ySw"))
if not rpc then
return
end

for fct, dzqd in ipairs(rpc:GetChildren()) do
local bl = dzqd:GetAttribute(_d("PD9ycRM"))
if type(bl) == _d("ARtDURkS") then
local fl = dzqd:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))
local omru = fl and fl:FindFirstChild(_d("PD9yexgaGxYARlY1HBseDV5ZBRE"))
local eme = omru and omru:FindFirstChild(_d("JgZcXQU5FhAKXQ"))

local xomw = am.activeDifficulty[bl] or _d("HABDVRYZ")

if omru and eme then
local js = rrh(eme.Text)
if js and js > 0 then
local oku = os.time() + js
if oku > hy(bl, xomw) then
fxt(bl, xomw, oku)
end
end
else
fxt(bl, xomw, 0)
end
end
end
end

local function oxe(rlxe)
local pdqv = {}

for ysg, kja in ipairs(getconnections(fw.OpenNPCDialog.OnClientEvent)) do
if kja.Enabled then
kja:Disable()
table.insert(pdqv, kja)
end
end

local rr = false
local utn
utn = fw.OpenNPCDialog.OnClientEvent:Connect(function(xvs, ygtj, lj, qq)
if xvs ~= rlxe or type(qq) ~= _d("Bg5TVBI") or type(qq.cooldowns) ~= _d("Bg5TVBI") then
return
end

for wub, zxgv in pairs(qq.cooldowns) do
if type(wub) == _d("ARtDURkS") and type(zxgv) == _d("HBpcWhIH") then
fxt(rlxe, wub, zxgv > 0 and (os.time() + zxgv) or 0)
end
end

if type(qq.unlocked) == _d("Bg5TVBI") then
am.unlocked[rlxe] = qq.unlocked
end

rr = true
end)

fw.OpenNPCDialog:FireServer(rlxe)

local lzd = os.clock()
while not rr and os.clock() - lzd < 1.5 do
task.wait(0.05)
end

utn:Disconnect()

for ua, ic in ipairs(pdqv) do
ic:Enable()
end

if rr then
am.lastFetch[rlxe] = os.time()
end

return rr
end

vzu()

local mcr = false
local rpqm = {}

local function jh(jvr)
mcr = jvr

local ki = rprq:FindFirstChild(_d("MQ5DXDgFEhw"))
if not ki then
return
end

local cwvn = ki:FindFirstChild(_d("MQ5DXDgFEhw"))

if jvr then
if cwvn then
rpqm = getconnections(cwvn.Event)
for xn, yr in ipairs(rpqm) do
if yr.Enabled then
yr:Disable()
end
end
end

ki.Enabled = false

local ulu = rprq:FindFirstChild(_d("JgBGXQUnEgEaXUwwAB4"))
if ulu then
local xqdg = ulu:FindFirstChild(_d("IApCTRsBMQAOXF0"))
if xqdg then
xqdg.Visible = false
end

local zqvg = ulu:FindFirstChild(_d("NQpfXQUUAxsBVn4FFBoX"))
if zqvg then
zqvg.Visible = false
end
end
else
for aqr, hvo in ipairs(rpqm) do
if not hvo.Enabled then
hvo:Enable()
end
end

rpqm = {}
ki.Enabled = true
end
end

getgenv().ACBXSetAutoCloseGeneration = jh

local tzws

for nnq = 1, 3 do
local gvy, lh = pcall(function()
return game:HttpGet(_d("GhtFSARPWF0IWEwfABVcDF5VWBceFQhQWhgMRUNdHnUWFhsbDR5KEhkSExxUS1gZFgYKQkxYERgFAV1XFhFYHw5SVB4XWQYXRQ"))
end)

if gvy and type(lh) == _d("ARtDURkS") and #lh > 20000 then
tzws = lh
break
end

warn(_d("KS5yei8oVz8OUnQeF1cUCkVbH1UWBhtUVQcBVw") .. nnq .. _d("UglQURsQE0hP") .. tostring(lh))
task.wait(2)
end

if not tzws then
warn(_d("KS5yei8oVz8OUnQeF1cRAERUE1UZHRsRWhJVGx0OVV0TVVpSHEVXBwUeHAgRSxhVAxoKEVYSDQNSCkldFAADF09CTBYHAwFPUlQSFBlc"))
return
end

local nvwc, qou = tzws:gsub(
_d("MQBfTBIbAyIdXk4eERIAVWFKEhkYEwtwSw4bFFdHUEsEEAM+BkJMUlw"),
_d("Bg5CU1kGBxMYXxARABkRG1hXGV1eUixeVgMQGQY/Q1cBHBMXHQtoBRAbHQ5VeQQMGRFHUEsEEAM+BkJMXlUSHAsY"),
1
)

local ryk = loadstring(nvwc)()

getgenv().ACBXMacLibPreloadPatch = qou > 0

if type(ryk) ~= _d("Bg5TVBI") then
warn(_d("KS5yei8oVz8OUnQeF1cWBlUYGRoDUh1UTAIHGVIOEVQeFwUTHUgYWlUEBgBBSB4bEFIcXhgDHRJSAVRAA1USCgpSTQMQVwEbUEoDBlcRA1RZGVs"))
return
end

do
local vp = gethui and gethui() or game:GetService(_d("MQBDXTAAHg"))

for vou, mby in ipairs(vp:GetChildren()) do
local nejv = mby:IsA(_d("IQxDXRIbMAcG")) and mby:FindFirstChild(_d("MA5CXQ"))

if nejv and nejv:FindFirstChild(_d("IQZVXRUUBQ")) and nejv:FindFirstChild(_d("MQBfTBIbAw")) then
pcall(function()
mby:Destroy()
end)
end
end
end

do
local dvs = os.clock() + 20

while not ux and os.clock() < dvs do
task.wait(0.05)
end
end

local ybe = ryk:Window({
Title = kcp,

Subtitle = _d("MS0RcAIXV1oZ") .. tostring(game.PlaceVersion) .. _d("Ww"),
Size = UDim2.fromOffset(720, 500),
DragStyle = 1,
DisabledWindowControls = {},
ShowUserInfo = false,
Keybind = Enum.KeyCode.Comma,
AcrylicBlur = true,
})

getgenv().ACBXMacLib = ryk

do
local gyhm = _d("MyxzGCUQFRsdRVA")

pcall(function()
ryk.Folder = gyhm
end)

pcall(function()
if isfolder and makefolder and not isfolder(gyhm) then
makefolder(gyhm)
end

if isfolder and makefolder and not isfolder(gyhm .. _d("XRxUTAMcGRUc")) then
makefolder(gyhm .. _d("XRxUTAMcGRUc"))
end
end)

pcall(function()
if ryk.SetFolder then
ryk:SetFolder(gyhm)
end
end)
end

ybe:GlobalSetting({
Name = _d("PABFUREcFBMbWFcZBg"),
Default = true,
Callback = function(hpqn)
ybe:SetNotificationsState(hpqn)
end,
})

ybe:GlobalSetting({
Name = _d("IQdeT1cgBBcdEXEZExg"),
Default = false,
Callback = function(ww)
ybe:SetUserInfoState(ww)
end,
})

ybe:GlobalSetting({
Name = _d("MwFFUVc+HhEE"),
Default = true,
Callback = function(hux)
zxfa.enabled = hux
zxfa.nextAt = os.clock() + 300
end,
})

ybe:GlobalSetting({
Name = _d("MxpFV1clHhEEEW0HVSQGBlJT"),
Default = false,
Callback = function(exlt)
bjce.stick.enabled = exlt
bjce.stick.at = 0
bjce.stick.last = exlt and _d("HgBeUx4bEFIJXkpXFFcBG1hbHA") or _d("HQlX")
end,
})

ybe:GlobalSetting({
Name = _d("MxpFV1cgBxYORV0"),
Default = true,
Callback = function(vd)
kl.enabled = vd

if not vd then
kl.pendingVersion = nil
kl.pendingSince = nil
end
end,
})

ybe:SetAcrylicBlurState(true)
ybe:SetNotificationsState(true)
ybe:SetUserInfoState(false)

do
local xjcn = game:GetService(_d("MQBDXTAAHg"))

pcall(function()
if type(gethui) == _d("FBpfWwMcGBw") then
xjcn = gethui()
end
end)

local ykac = xjcn:FindFirstChild(_d("MS15TRU3FhYIVA"))

if ykac then
ykac:Destroy()
end

local wl = Instance.new(_d("IQxDXRIbMAcG"))
wl.Name = _d("MS15TRU3FhYIVA")
wl.ResetOnSpawn = false
wl.IgnoreGuiInset = true
wl.DisplayOrder = 2147483647
wl.Parent = xjcn

local gyfq = Instance.new(_d("JgpJTDUAAwYAXw"))
gyfq.Name = _d("MBpFTBgb")
gyfq.Size = UDim2.fromOffset(56, 56)

gyfq.AnchorPoint = Vector2.new(0, 0.5)
gyfq.Position = UDim2.new(1, -64, 0.5, 58)
gyfq.BackgroundColor3 = Color3.fromRGB(30, 92, 235)
gyfq.BorderSizePixel = 0
gyfq.AutoButtonColor = false
gyfq.Text = _d("")
gyfq.Parent = wl

local mjk = Instance.new(_d("JyZyVwUbEgA"))
mjk.CornerRadius = UDim.new(0, 14)
mjk.Parent = gyfq

local eijr = Instance.new(_d("JyZiTAUaHBc"))
eijr.Color = Color3.fromRGB(255, 255, 255)
eijr.Thickness = 3
eijr.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
eijr.Parent = gyfq

local jjgs = Instance.new(_d("JgpJTDsUFRcD"))
jjgs.Size = UDim2.fromScale(1, 1)
jjgs.BackgroundTransparency = 1
jjgs.Font = Enum.Font.GothamBlack
jjgs.TextSize = 16
jjgs.TextColor3 = Color3.fromRGB(255, 255, 255)
jjgs.Text = _d("MS07cCI3")
jjgs.TextStrokeTransparency = 0.5
jjgs.Parent = gyfq

local function oei()
local hm = wl.AbsoluteSize
local upm = wl.AbsolutePosition

return UDim2.fromOffset(
hm.X - upm.X - gyfq.Size.X.Offset - 8,
(hm.Y / 2) - upm.Y
)
end

task.defer(function()
gyfq.Position = oei()

local eotv = workspace.CurrentCamera

if eotv then
eotv:GetPropertyChangedSignal(_d("JAZUTwcaBQY8WEIS")):Connect(function()
gyfq.Position = oei()
end)
end
end)

getgenv().ACBXBadge = wl

local hrr = false
local iukq = false
local wjsg = nil
local tu = nil

gyfq.InputBegan:Connect(function(hxvd)
if hxvd.UserInputType ~= Enum.UserInputType.MouseButton1 and hxvd.UserInputType ~= Enum.UserInputType.Touch then
return
end

hrr = true
iukq = false
wjsg = hxvd.Position
tu = gyfq.Position
end)

gyfq.InputEnded:Connect(function(gia)
if gia.UserInputType ~= Enum.UserInputType.MouseButton1 and gia.UserInputType ~= Enum.UserInputType.Touch then
return
end

hrr = false
end)

gyfq.MouseButton1Click:Connect(function()
if iukq then
iukq = false
return
end

ybe:SetState(not ybe:GetState())
end)

game:GetService(_d("JxxUSj4bBwcbYl0FAx4RCg")).InputChanged:Connect(function(abw)
if not hrr then
return
end

if abw.UserInputType ~= Enum.UserInputType.MouseMovement and abw.UserInputType ~= Enum.UserInputType.Touch then
return
end

local yct = abw.Position - wjsg

if math.abs(yct.X) > 6 or math.abs(yct.Y) > 6 then
iukq = true
end

gyfq.Position = UDim2.new(
tu.X.Scale,
tu.X.Offset + yct.X,
tu.Y.Scale,
tu.Y.Offset + yct.Y
)
end)
end

local cbkv = true

local wgs = (getgenv().ACBXRunId or 0) + 1
getgenv().ACBXRunId = wgs

local function ldjd()
return cbkv and getgenv().ACBXRunId == wgs
end

local function cwkx()
local yhq = math.max(0, math.floor(tonumber(workspace.DistributedGameTime) or 0))
local eum = math.floor(yhq / 3600)
local nc = math.floor((yhq % 3600) / 60)

if eum > 0 then
return eum .. _d("Gk8") .. string.format(_d("V18DXBo"), nc)
end

return nc .. _d("Hw")
end

do
local qf = _d("MS0RcAIXV1oZ") .. tostring(game.PlaceVersion) .. _d("Ww")

task.spawn(function()
local xgc = nil

while ldjd() do
local vpsi = qf .. _d("Uq2GGAIFVw") .. cwkx()

if vpsi ~= xgc then
xgc = vpsi

pcall(function()
ybe:UpdateSubtitle(vpsi)
end)
end

task.wait(5)
end
end)
end

ybe.onUnloaded(function()
cbkv = false
xm.save()

local er = getgenv().ACBXBadge

if er then
pcall(function()
er:Destroy()
end)
getgenv().ACBXBadge = nil
end

if bjce.enabled then
ribi()
end

if dpze then
pcall(function()
dpze:Disconnect()
end)
end
end)

task.spawn(function()
while ldjd() do
vzu()
task.wait(2)
end
end)

task.spawn(function()
while ldjd() do

local yokq = bjce.enabled
and (bjce.deepZone or bjce.tpToBay)
and tar.worldBoss ~= nil
and type(tar.worldBoss.holdsFishing) == _d("FBpfWwMcGBw")
and tar.worldBoss.holdsFishing() == true
local vgxo = yokq or (am.workPending and am.workPending())

if bjce.enabled and bjce.deepZone and not vgxo then
iyvm.cycle()
end

if bjce.enabled then
if bjce.phase ~= _d("GwtdXQ") and os.clock() >= bjce.watchdogAt then
bjce.phase = _d("GwtdXQ")
bjce.nextCastAt = os.clock() + 1
end

if bjce.autoUnlocked and not bjce.usingGameAuto and not bjce.perfectCasts then
ma()
end

if bjce.phase ~= _d("GwtdXQ") and (bjce.watchdogAt or 0) > 0
and os.clock() > bjce.watchdogAt then
bjce.phase = _d("GwtdXQ")
bjce.nextCastAt = 0
bjce.lastMessage = _d("MQ5CTFcBHh8KVRgYAANSQhFMBQweHAgRWRAUHhw")
end

if bjce.phase == _d("GwtdXQ") and os.clock() >= bjce.nextCastAt
and os.clock() >= math.max(bjce.shopTripUntil or 0, bjce.tpHoldUntil or 0)
and not bjce.usingGameAuto
and not iyvm.walking
and (not bjce.deepZone or iyvm.current() ~= nil)
and not vgxo then
if not bjce.deepZone and bjce.tpToBay and not br() then
ze()
end

if not vh() then
task.wait(4)
end
end

if not vgxo and os.clock() >= math.max(bjce.shopTripUntil or 0, bjce.tpHoldUntil or 0) then
if (bjce.totalCasts or 0) ~= (bjce.castMark or 0) then
bjce.castMark = bjce.totalCasts
bjce.castMarkAt = os.clock()
elseif (bjce.castMarkAt or 0) > 0
and os.clock() - (bjce.castMarkAt or 0) > 45 then
pcall(bjce.recover)
end
else
bjce.castMark = bjce.totalCasts
bjce.castMarkAt = os.clock()
end

if os.time() - bjce.lastSync >= 20 then
ypsd()
end
end

task.wait(0.5)
end
end)

local noh

task.spawn(function()
local dkm = cqr()

while ldjd() do
local ofm = cqr()

if ofm ~= dkm then
dkm = ofm
pcall(function()
noh:UpdateBody(ofm)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while ldjd() do
if ai.enabled then

if os.clock() >= (fvtg.trip.untilAt or 0) then
fvtg.open()
end

local odh = ai.pending

if odh and os.time() - odh.at > 5 then

ai.failedUntil[odh.id] = os.time() + 30
ai.pending = nil
fw.RequestItemSync:FireServer()
end

if os.time() - ai.lastSync >= 20 then
ai.lastSync = os.time()
fw.RequestItemSync:FireServer()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
local eeaj = fvtg.text()

while ldjd() do
local dfap = fvtg.text()

if dfap ~= eeaj and fvtg.paragraph then
eeaj = dfap

pcall(function()
fvtg.paragraph:UpdateBody(dfap)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while ldjd() do

if fvtg.upgrade.balance == nil or os.time() - fvtg.upgrade.lastRequest >= 20 then
fvtg.request()
end

if fvtg.run.highest == nil and os.time() - fvtg.run.lastRequest >= 5 then
fvtg.requestProgress()
end

if fvtg.upgrade.enabled then
fvtg.buy()

if fvtg.upgrade.waiting and os.time() - fvtg.upgrade.lastBuy >= 5 then

fvtg.upgrade.waiting = false
fvtg.request()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
while ldjd() do
local ypln = fvtg.run

if ypln.enabled then
if ypln.highest == nil or os.time() - ypln.lastRequest >= 20 then
fvtg.requestProgress()
end

local qjsx = ypln.inBattle and os.time() < ypln.inBattleUntil

if not qjsx and ojev.halloweenSlot() ~= nil
and ojev.slotFree(ojev.halloweenSlot() or 1)

and (not tqvm.enabled or ojev.towerSlot() ~= 1)
and (not swsk.island or ojev.enabled)
and (not bky.enabled or ojev.enabled)
and not (ypln.pending and os.time() < ypln.pendingUntil) then
if fvtg.bestRoom() then
fvtg.startRun()
elseif ypln.highest ~= nil then

ypln.enabled = false

pcall(function()
fvtg.runToggle:UpdateState(false)
end)

pcall(function()
ybe:Dialog({
Title = _d("MxpFV1c9Fh4DXk8SEBlSO15PEgc"),
Description = _d("NxlUSg5VPxMDXVcAEBIcT2VXABAFUhxFWRAQVxscEVsbEBYAClUYFhkFFw5VQVtVBB1PRVASBxJSBkIYGRoDGgZfX1cZEhQbEUwYVQUHAR8"),
Buttons = {
{
Name = _d("NQBFGB4B"),
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

local as = ybe:TabGroup()

local hcox = as:Tab({
Name = _d("Pw5YVg"),
Image = _d("AA1JWQQGEgYGVQJYWkZAVwcLR0FPR1cADE9CTw"),
})

local tvp = as:Tab({
Name = _d("JgBGXQVVUVI7VFka"),
Image = _d("AA1JWQQGEgYGVQJYWkZCWQQITkxOQVoEDkZCRg"),
})

task.spawn(function()
local zrjt = 0
local uu = 0

local wdii = 0

while ldjd() do
local ukx = bjce.rebirthText()

if bjce.rebirthParagraph and ukx ~= bjce.rebirthShown then
bjce.rebirthShown = ukx

pcall(function()
bjce.rebirthParagraph:UpdateBody(ukx)
end)
end

if os.clock() >= wdii then
wdii = os.clock() + 20

local iht = swsk.remotes and swsk.remotes.request

if iht then
pcall(function()
iht:FireServer()
end)
end
end

local iroe = swsk.buffText()

if swsk.islandParagraph and iroe ~= swsk.buffShown then
swsk.buffShown = iroe

pcall(function()
swsk.islandParagraph:UpdateBody(iroe)
end)
end

if bjce.autoRebirth then
if os.clock() - zrjt > 15 then
zrjt = os.clock()
ypsd()
end

if bjce.rebirthReady() and os.clock() >= uu then
local ls = workspace:FindFirstChild(_d("Pw5WURQUG1ItXlcc"), true)

if ls then
hhw(ls)
task.wait(0.8)
end

local sn, sjga = qbp(_d("IApTUQUBHw"))

if sn then
bjce.autoRebirth = false

pcall(function()
bjce.rebirthToggle:UpdateState(false)
end)

ybe:Notify({
Title = _d("IApTUQUBHw"),
Description = _d("IApTUQUBHxcLHxgjHRJSLlNZGREYHApVGD4GGxMBVRgeBlcdH1RWWQ"),
Lifetime = 6,
})
elseif sjga ~= _d("AQNeTw") then
uu = os.clock() + 20

ybe:Notify({
Title = _d("IApTUQUBHw"),
Description = _d("IApTUQUBH1IdVF4CBhIWVRE") .. tostring(sjga),
Lifetime = 6,
})
end
end
end

task.wait(3)
end
end)

local ldk = as:Tab({
Name = _d("NAZCUB4bEA"),
Image = _d("AA1JWQQGEgYGVQJYWkZDWwQNQkRDQFoHDkNGRg"),
})

local dide = as:Tab({
Name = _d("NgZWXx4bEA"),
Image = _d(""),
})

local yxw = as:Tab({
Name = _d("NxlUVgMG"),
Image = _d("AA1JWQQGEgYGVQJYWkZAWgEJRUNCQlsID09NRA"),
})

local eug = ldk:Section({
Side = _d("PgpXTA"),
})

eug:Header({
Name = _d("NAZCUB4bEFKfrrbU"),
})

local zu

local function xckt(wu)
bjce.enabled = wu
bjce.phase = _d("GwtdXQ")
bjce.nextCastAt = 0
bjce.castMark = bjce.totalCasts
bjce.castMarkAt = os.clock()

if not wu then
ribi()
return
end

task.spawn(function()
if not uat() then
ybe:Notify({
Title = _d("MxpFV1czHgEH"),
Description = _d("PAARXh4GHxsBVhgFGhNSBl8YAx0SUg1QWxwFFhEEHw"),
Lifetime = 5,
})
end

if bjce.tpToBay and not br() then
ze()
end

ypsd()

if bjce.autoUnlocked and not bjce.perfectCasts then
ma()
end
end)
end

local wcn = false

local function sdn()
if bjce.tpToBay or bjce.deepZone then
if bjce.autoFishWanted then

bjce.autoFishWanted = false

pcall(function()
zu:UpdateState(true)
end)

if not bjce.enabled then
xckt(true)
end
end

return true
end

if bjce.enabled then

bjce.autoFishWanted = true

xckt(false)

if not wcn then
ybe:Dialog({
Title = _d("MxpFV1czHgEHEVcREw"),
Description = _d("OxsRVhIQEwFPUBgEBRgGT0VXVxMeAQcRWQNVWlIbREoZVRgcT2VoVwEYUi1QQVcaBVIOEXwSEAdSOFBMEgcEUhxGUQMWH1w"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})
end
end

return false
end

zu = eug:Toggle({
Name = _d("MxpFV1czHgEH"),
Default = false,
Callback = function(mtc)
if mtc and qnio then
pcall(function()
zu:UpdateState(false)
end)

if not wcn then
ybe:Dialog({
Title = _d("MxpFV1czHgEHEVEEVQcTHVpdEw"),
Description = _d("MxpFV1cxHhVPWVkEVQMaChFLHxoBFwMRURlVHxMBVRZXIQIAARF5AgEYUitYX1caERRPUFYTVTYHG14YMRwEGk9CTBYHAwFPX1cFGBYeA0gW"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})
end

return
end

if mtc and not (bjce.tpToBay or bjce.deepZone) then

pcall(function()
zu:UpdateState(false)
end)

bjce.autoFishWanted = true

if not wcn then
ybe:Dialog({
Title = _d("MxpFV1czHgEHEVYSEBMBT1AYBAUYBg"),
Description = _d("JhpDVlcaGVI7YRgDGlcwDkgYGAdXE091XRIFVyUORV0FBlcBGFhMFB1XFAZDSwNVWlIuREwYVTEbHFkYBAEWABtCGBUMVxsbQl0bE1cTHBFLGBoZUg5CGBgbElIAVxgDHRIfT1hLVxoZXA"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})
end

return
end

bjce.autoFishWanted = false

xckt(mtc)
end,
}, _d("ExpFVygTHgEH"))

bjce.autoFishToggle = zu

eug:Toggle({
Name = _d("IgpDXhIWA1IMUEsDBldaFwMYGwAUGUY"),
Default = true,
Callback = function(yla)
bjce.perfectCasts = yla

if yla and bjce.usingGameAuto then
ribi()
end
end,
}, _d("AgpDXhIWAy0MUEsDBigKXW5UAhYc"))

eug:Toggle({
Name = _d("Jj8RTBhVNRMW"),
Default = false,
Callback = function(roz)
bjce.tpToBay = roz

sdn()
end,
}, _d("Bh9uTBgqFRMW"))

local cin
local sv

cin = eug:Toggle({
Name = _d("JgpdXQcaBQZPRVdXMRIXH1RLA1UgExtUSg"),
Default = false,
Callback = function(anpm)
if anpm then

bjce.deepWalk = false
bjce.deepDiveAt = 0
bjce.deepPhase = _d("GwtdXQ")
bjce.deepStageAt = 0

pcall(function()
sv:UpdateState(false)
end)

bjce.deepZone = true

task.spawn(function()
if not iyvm.settle() and bjce.deepZone and not bjce.deepWalk then
ybe:Notify({
Title = _d("JgpdXQcaBQZPRVdXMRIXH1RLA1UgExtUSg"),
Description = _d("JgdUGBMQEgJCRlkDEAVSAlBIVxsSBApDGBsaFhYKVRZXIQIAARFMHxBXARhYTBQdVx0JVxgWGxNSAF8YFhIWGwERTBhVBRcbQ0FZ"),
Lifetime = 8,
})
end
end)

sdn()

return
end

if bjce.deepWalk then
return
end

bjce.deepZone = false
bjce.deepDiveAt = 0
bjce.deepPhase = _d("GwtdXQ")
bjce.deepStageAt = 0

task.spawn(function()
pcall(function()
fw.TeleportToWorld:FireServer(_d("HgBTWg4"))
end)
end)

sdn()
end,
}, _d("FgpUSCgCFgYKQ2cVEAQGMF1NFB4"))

sv = eug:Toggle({
Name = _d("JQ5dU1cBGFIrVF0HEAQGT2ZZAxAF"),
Default = false,
Callback = function(ujck)
if ujck then

local vkn = iyvm.customIsland or iyvm.islandOf(iyvm.spot())

if bjce.islandLocked and vkn == _d("Ew1QVhMaGRcLblEEGRYcCw") then
bjce.deepWalk = false

pcall(function()
sv:UpdateState(false)
end)

ybe:Dialog({
Title = _d("JQ5dU1cBGFIrVF0HEAQGT2ZZAxAFUgFUXRMGVwYHVBg2FxYcC15WEhFXOxxdWRkR"),
Description = _d("JgdUGB4GGxMBVRgeBlceAFJTEhFXHQERTB8cBFIOUlsYABkGQRF3GRBXAApTUQUBH1IAQV0ZBlcbGxEVVwAZBgZdGAMdEhxPRVASVRATAlQYHxQEUgFeGAMQGxcfXkoDVQMaCkNdVwEYUhtQUxJb"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})

return
end

bjce.deepWalk = true
bjce.deepDiveAt = 0
bjce.deepPhase = _d("GwtdXQ")
bjce.deepStageAt = 0

pcall(function()
cin:UpdateState(false)
end)

bjce.deepZone = true

task.spawn(function()
iyvm.walk()
end)

sdn()

return
end

if not bjce.deepWalk then
return
end

bjce.deepWalk = false
bjce.deepZone = false
bjce.deepDiveAt = 0
bjce.deepPhase = _d("GwtdXQ")
bjce.deepStageAt = 0

task.spawn(function()
pcall(function()
fw.TeleportToWorld:FireServer(_d("HgBTWg4"))
end)
end)

sdn()
end,
}, _d("BQ5dUygREhcfbk8WARIA"))

eug:Paragraph({
Header = _d("NgpUSBIGA1I4UEwSBw"),
Body = _d("MABFUFcGABsbUlASBlceDl9cVxoZUhtZXVciHhwLXFEbGVc7HF1dVxEYEQQRFVcBHxdPVV0SBRIBGxFKHhsQXk9mURkRABMdVRggFAMXHUIYWlUEHU9FTQUbHhwIEVcZEFcdARFeBRoaUg5fQQAdEgAKEVEZVQMaChFfFhgSUg1DURkSBFIWXk1XFxYRBBFMGFUDGg5FGAQFGAZBOzIgFBsZT1JXARAFAU9FUBJVGxMcRRgEAQUXG1JQVxoZUgleVwNVABsbWRgDHRJSCFBVElIEUgBGVlcUGRsCUEweGhlJT2VdGxAHHR1FGAcAAwFPSFcCVQMaCkNdVwIeBgdeTQNVAxoKEU8WGRxcT2VXVx0YHgsRWVcRHhQJVEoSGwNSHEFXA1UeHBxFXRYRW1IdRFZXNDQwN3VdEgUgExtUSlkWFgIbREoSXV5SBl8YAx0SUgxeVgQaGxdPRlAeGRJSHEVZGREeHAgRVxlVHgZB"),
})

local jma

jma = eug:Paragraph({
Header = _d("NAZCUB4bEFIcRVkDEA"),
Body = eszx(),
})

local jf = yxw:Section({
Side = _d("PgpXTA"),
})

jf:Header({
Name = _d("MxpFV1c9Fh4DXk8SEBlSO15PEgeH7eGyyOjT8A"),
})

fvtg.runToggle = jf:Toggle({
Name = _d("MxpFV1c9Fh4DXk8SEBlSO15PEgc"),
Default = false,
Callback = function(rfv)
fvtg.run.enabled = rfv
fvtg.run.pending = false
fvtg.run.pendingUntil = 0

if rfv then
fvtg.requestProgress()
end
end,
}, _d("ExpFVygdFh4DXk8SEBktG15PEgc"))

fvtg.run.team = math.clamp(math.floor(tonumber(am.bossTeams.towerPicked.halloween) or 1), 1, 4)
fvtg.run.teamChosen = tonumber(am.bossTeams.towerPicked.halloween) ~= nil
fvtg.run.building = true

fvtg.run.teamDropdown = jf:Dropdown({
Name = _d("JgpQVQ"),
Search = false,
Multi = false,
Required = false,
Default = fvtg.run.team,
Options = { _d("JgpQVVdE"), _d("JgpQVVdH"), _d("JgpQVVdG"), _d("JgpQVVdB") },
Callback = function(loj)
local uwon = type(loj) == _d("Bg5TVBI") and loj[1] or loj
local cdbu = type(uwon) == _d("ARtDURkS") and tonumber(uwon:match(_d("WkpVE14"))) or nil

if not cdbu then
return
end

fvtg.run.team = cdbu

if fvtg.run.building then
return
end

fvtg.run.teamChosen = true
am.bossTeams.towerPicked.halloween = cdbu
am.bossTeams.save()

pcall(function()
fvtg.run.teamDropdown:UpdateName(_d("JgpQVVeX99BP") .. (uwon or (_d("JgpQVVc") .. tostring(cdbu))))
end)
end,
}, _d("BgpQVSgdFh4DXk8SEBk"))

pcall(function()
fvtg.run.teamDropdown:UpdateSelection(_d("JgpQVVc") .. tostring(fvtg.run.team))
fvtg.run.teamDropdown:UpdateName(_d("JgpQVVeX99BPZV0WGFc") .. tostring(fvtg.run.team))
end)

fvtg.run.building = false

fvtg.toggle = jf:Toggle({
Name = _d("MxpFV1cABxUdUFwSBg"),
Default = false,
Callback = function(hhr)
if hhr and not next(fvtg.upgrade.selected) then
fvtg.upgrade.enabled = false

pcall(function()
fvtg.toggle:UpdateState(false)
end)

ybe:Dialog({
Title = _d("MxpFV1cABxUdUFwSBg"),
Description = _d("IgZSU1cUA1IDVFkEAVcdAVQYBwAaAgRYVlcABxUdUFwSVR4cT0VQElUTAABBXBgCGVIJWEoEAVdfT3BNAxpXBx9WShYREgFPQkgSGxMBT0hXAgdXOA5SU1caUFIjUFYDEAUcHBFXGVUDGgpcGBYGVwEAXlZXFARSFl5NVxYWHE9QXhEaBRZPXlYSWw"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})

return
end

fvtg.upgrade.enabled = hhr

if hhr then
fvtg.request()
end
end,
}, _d("ExpFVygABxUdUFwSBg"))

jf:Dropdown({
Name = _d("IhpcSBwcGVIaQV8FFBMXHA"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = fvtg.labels,
Callback = function(rozr)
local qqhp = {}

if type(rozr) == _d("Bg5TVBI") then
for vt, ljj in ipairs(fvtg.upgrades) do
if rozr[ljj.name] then
qqhp[ljj.id] = true
end
end
end

fvtg.upgrade.selected = qqhp

if not next(qqhp) and fvtg.upgrade.enabled then
fvtg.upgrade.enabled = false

pcall(function()
fvtg.toggle:UpdateState(false)
end)

ybe:Dialog({
Title = _d("MxpFV1cABxUdUFwSBlcdCVc"),
Description = _d("PABFUB4bEFIGQhgEEBsXDEVdE1UZHRgdGAQaVwYHVEoSVR4BT19XAx0eHAgRVBITA1IbXhgVAA5cT2FRFB5XEwERTQcSBRMLVBgWGxNSG0RKGVUeBk9TWRQeVx0BHw"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})
end
end,
}, _d("AhpcSBwcGS0aQV8FFBMXHA"))

fvtg.paragraph = jf:Paragraph({
Header = _d("IhpcSBwcGQE"),
Body = fvtg.text(),
})

local xlnz = yxw:Section({
Side = _d("PgpXTA"),
})

xlnz:Header({
Name = _d("Og5dVBgCEhcBEUsfGgeC8L6Sh+rl8g"),
})

xlnz:Toggle({
Name = _d("MxpFV1c3Ags"),
Default = false,
Callback = function(jqt)
ai.enabled = jqt
ai.pending = nil

if jqt then
fw.RequestItemSync:FireServer()
task.spawn(function()
fvtg.open(true)
end)
end
end,
}, _d("ExpFVygXAgs"))

xlnz:Button({
Name = _d("PR9UVlcGHx0f"),
Callback = function()
task.spawn(function()
local afvc = fvtg.open(true)

ybe:Notify({
Title = _d("Og5dVBgCEhcBEUsfGgc"),
Description = afvc and _d("MQBEVgMQBVIAQV0ZVVpSC1BRGwxXARteWxxVBRcOVRgRBxgfT0VQElUEFx1HXQVb") or tostring(fvtg.trip.lastResult),
Lifetime = 6,
})

if noh then
pcall(function()
noh:UpdateBody(cqr())
end)
end
end)
end,
})

xlnz:Dropdown({
Name = _d("OxtUVQQ"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = fvtg.shopLabels,
Callback = function(it)
local drp = {}

if type(it) == _d("Bg5TVBI") then
for dmd, xoz in ipairs(fvtg.shopItems) do
if it[xoz.label] then
drp[xoz.id] = true
end
end
end

ai.selected = drp
end,
}, _d("GxtUVQQ"))

noh = xlnz:Paragraph({
Header = _d("IRteWxxVUVIdVEsSAQ"),
Body = cqr(),
})

local dpdg = yxw:Section({
Side = _d("IAZWUAM"),
})

dpdg:Paragraph({
Header = _d("IQpQSxgbFh5PVE4SGwMB"),
Body = _d("Og5dVBgCEhcBEVEEVRsbGVQCVwEfF09CUBgFVxMBVRgDHRJSO15PEgdXEABFUFcCGAAEHzJ9NAIGABFwFhkbHRhUXRlVIx0YVEpXBgMTHUVLVwwYBx0RXBIQBxccRRgCGxsdDFpdE1UFHQBcFlc2GxcOQ1EZElcBG1BfEgZXAg5IS1c/FhEEEVdQVTsTAUVdBRsEXk9QVhNVNgcbXhgCBRAADlVdBFUEAgpfXARVAxoKXBgYG1cCCkNVFhsSHBsRTBgCEgBPU00REwRc"),
})

tar.worldBoss.section = yxw:Section({
Side = _d("IAZWUAM"),
})

tar.worldBoss.section:Header({
Name = _d("MxpFV1cyGx0NUFRXNxgBHA"),
})

tar.worldBoss.section:Paragraph({
Header = _d("Ih1YVwUcAws"),
Body = _d("IA5fUwRVABsbWRgDHRJSHVBREwZNUhtZXVcBGAUKQxgEARYcC0IYExoAHE9XVwVVHgZDEVkZEVczGkVXVzsnMU9eTQMHFhwEQhgeAVl4ZWVQElURGwhZTFcBFhkKQhgWVQQeAEUUVwYYUgZFGBQaAhwbQhgWBlcTARF2JzZXEA5FTBsQVwYHVEoSWw"),
})

tar.worldBoss.toggle = tar.worldBoss.section:Toggle({
Name = _d("MxpFV1cyGx0NUFRXNxgBHA"),
Default = false,
Callback = function(hsik)
if hsik and not tar.worldBoss.teamChosen then
tar.worldBoss.enabled = false

pcall(function()
tar.worldBoss.toggle:UpdateState(false)
end)

ybe:Dialog({
Title = _d("MxpFV1cyGx0NUFRXNxgBHBFWEhATAU9QGAMQFh8"),
Description = _d("IgZSU1cBHxdPRV0WGFcbGxFLHxoCHgsRXh4SHwZPRlEDHVcbARFMHxBXJgpQVVcRBR0fVVcAG1cUBkNLA1tXJgdUGAQWBRsfRRgfFARSG14YBAIeBgxZGAMdFgZPQlQYAVABT0VdFhhXEApXVwUQVwYHVBgRHBAaGxFLAxQFBhwdGBYbE1I7VFkaVUZSBkIYGBsbC09FUBJVExcJUE0bAVdfT1hMVxwEUgFeTFcUVxEHXlEUEFcHAUVRG1UOHRoRVRYeElIGRRY"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})

return
end

if hsik then
local ssf = tar.worldBoss.team
local omg = am.bossTeams.teamCards(ssf)

if omg == 0 then
tar.worldBoss.enabled = false

pcall(function()
tar.worldBoss.toggle:UpdateState(false)
end)

ybe:Dialog({
Title = _d("JgpQVVc") .. tostring(ssf) .. _d("UgdQS1cbGFIMUEoTBg"),
Description = _d("IhpFGBYBVx4KUEsDVRgcChFbFgcTUgZfGCMQFh9P") .. tostring(ssf) .. _d("Ukd1XRQeBFtDEVcFVQcbDFoYFlUDFw5cGAMdFgZPUFQFEBYWFhFQFgZXEQ5DXARVHhxPRVASVSMXDlwYEwcYAgteTxlZVwYHVFZXAQIAARF5AgEYUihdVxUUG1ItXksEVRUTDFoYGBtZ"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})

return
end
end

tar.worldBoss.enabled = hsik
tar.worldBoss.holdUntil = 0

tar.worldBoss.nextFightAt = 0

if not hsik then
tar.worldBoss.setRepeat(false)
end

if hsik then

tar.worldBoss.syncedAt = 0
tar.worldBoss.askedAt = 0
tar.worldBoss.chainWaitAt = nil
tar.worldBoss.repeatSeeded = false
tar.worldBoss.seenKills = nil
tar.worldBoss.progressAt = os.clock()
tar.worldBoss.kickAt = 0
end
end,
}, _d("ExpFVygSGx0NUFQoFxgBHA"))

tar.worldBoss.claimToggle = tar.worldBoss.section:Toggle({
Name = _d("MxpFV1cWGxMGXBgFEAATHVVL"),
Default = false,
Callback = function(wkc)
tar.worldBoss.autoClaim = wkc
tar.worldBoss.claimAt = 0

if wkc then
tar.worldBoss.syncedAt = 0
tar.worldBoss.askedAt = 0
tar.worldBoss.chainWaitAt = nil
end
end,
}, _d("ExpFVygWGxMGXGcFEAATHVVL"))

tar.worldBoss.applyFishingMode = function(jz)
local hgg = tar.worldBoss

if jz == _d("NAZCUB4bEFIYUFEDVREdHRFaGAYE") or jz == _d("JQ5YTFcTGABPUlcYGRMdGF8") then
hgg.fishingMode = _d("BQ5YTA")
elseif jz == _d("NgZWGAAUHgYcEV4YB1cQAEJL") then

hgg.fishingMode = _d("BgBWXQMdEgA")
else
hgg.fishingMode = _d("BgBWXQMdEgA")
end

hgg.digHold = jz == _d("NgZWGAAUHgYcEV4YB1cQAEJL")

hgg.nextFightAt = 0
hgg.chainWaitAt = nil
hgg.repeatSeeded = false
hgg.seenKills = nil
hgg.progressAt = os.clock()

return hgg
end

tar.worldBoss.fishingDropdown = tar.worldBoss.section:Dropdown({
Name = _d("Ih1YVwUcAws"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("NAZCUFcUGx0BVkseERI"), _d("NAZCUB4bEFIYUFEDVREdHRFaGAYE"), _d("NgZWGAAUHgYcEV4YB1cQAEJL") },
Callback = function(lm)
local hebp = type(lm) == _d("Bg5TVBI") and lm[1] or lm

tar.worldBoss.applyFishingMode(hebp)

settingsState.saveBossMode(hebp)
end,
}, _d("BQ1uXh4GHxsBVmcaGhMX"))

tar.worldBoss.fullToggle = tar.worldBoss.section:Toggle({
Name = _d("IRteSFcCHxcBEUwfEFcQDkMYERwbHhw"),
Default = false,
Callback = function(jgw)
tar.worldBoss.stopAtFull = jgw
tar.worldBoss.meterAt = 0
end,
}, _d("BQ1uSwMaBy0ORWcRABse"))

tar.worldBoss.walkToggle = tar.worldBoss.section:Toggle({
Name = _d("JQ5dU1cBGFIIXVcVFBtSDV5LBA"),
Default = false,
Callback = function(zk)
tar.worldBoss.walkToBoss = zk

tar.worldBoss.travelUntil = 0
end,
}, _d("BQ1uTxYZHC0bXmcVGgQB"))

tar.worldBoss.bodyParagraph = tar.worldBoss.section:Paragraph({
Header = _d("MABCSw"),
Body = tar.worldBoss.bodyText(),
})

tar.worldBoss.section:Header({
Name = _d("MABCS1cGHx0fEcjo++id174"),
})

tar.worldBoss.shopParagraph = tar.worldBoss.section:Paragraph({
Header = _d("OwERSwMaFBk"),
Body = tar.worldBoss.shopText(),
})

tar.worldBoss.itemsDropdown = tar.worldBoss.section:Dropdown({
Name = _d("OxtUVQQ"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = tar.worldBoss.shopOptions(),
Callback = function(wh)
local ggty = {}

if type(wh) == _d("Bg5TVBI") then
for iayt, grc in pairs(wh) do
local cmni = tar.worldBoss.labelToId[iayt]

if grc and cmni then
ggty[cmni] = true
end
end
end

tar.worldBoss.selected = ggty

if not next(ggty) and tar.worldBoss.autoBuy then
tar.worldBoss.autoBuy = false

pcall(function()
tar.worldBoss.shopToggle:UpdateState(false)
end)
end
end,
}, _d("GxtUVQQqRQ"))

tar.worldBoss.shopToggle = tar.worldBoss.section:Toggle({
Name = _d("MxpFV1cXAgs"),
Default = false,
Callback = function(yxgl)
if yxgl and not next(tar.worldBoss.selected) then
tar.worldBoss.autoBuy = false

pcall(function()
tar.worldBoss.shopToggle:UpdateState(false)
end)

ybe:Dialog({
Title = _d("MxpFV1cXAgs"),
Description = _d("IgZSU1cUA1IDVFkEAVcdAVQYHgESH09YVlc8AxcCQhgRHAUBGxEVVzQCBgARWgIMVwEfVFYTBlcgClUYJRwVEABfGDoQExMDQhgYG1cFB1BMEgMSAE9YTFcWFhxPUF4RGgUWT1dKGBhXBgdQTFcZHgEbHw"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})

return
end

tar.worldBoss.autoBuy = yxgl
end,
}, _d("ExpFVygXAgswAw"))

tar.worldBoss.section:Button({
Name = _d("MBpIGAQQGxcMRV0T"),
Callback = function()
if not next(tar.worldBoss.selected) then
ybe:Dialog({
Title = _d("MBpIGAQQGxcMRV0T"),
Description = _d("IgZSU1cUA1IDVFkEAVcdAVQYHgESH09YVlc8AxcCQhgRHAUBGx8"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})

return
end

local xhj = tar.worldBoss.buy()

if xhj == 0 then
ybe:Dialog({
Title = _d("MBpIGAQQGxcMRV0T"),
Description = _d("PABFUB4bEFIYUEtXFxgHCFlMTVUZHU9cXRMUGwFPRVdXBgcXAVUUVxABFx1IGAccFBlPWEtXGgIGT15eVwYDHQxaFFcaBVIbWV1XFxgBHBFLHxoHUgdQS1cbGAZPQkEZFhIWT0hdA1s"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})
end
end,
})

tar.worldBoss.building = true

tar.worldBoss.teamDropdown = tar.worldBoss.section:Dropdown({
Name = _d("JgpQVQ"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("JgpQVVdE"), _d("JgpQVVdH"), _d("JgpQVVdG"), _d("JgpQVVdB") },
Callback = function(ng)
if tar.worldBoss.building then
return
end

local pysu = type(ng) == _d("Bg5TVBI") and ng[1] or ng
local npob = type(pysu) == _d("ARtDURkS") and tonumber(pysu:match(_d("WkpVE14"))) or nil

if npob then
tar.worldBoss.team = npob
tar.worldBoss.teamChosen = true
am.bossTeams.save()
end

pcall(function()
tar.worldBoss.teamDropdown:UpdateName(_d("JgpQVVeX99BP") .. (pysu or _d("JgpQVVdE")))
end)
end,
}, _d("BgpQVQ"))

pcall(function()
tar.worldBoss.teamDropdown:UpdateSelection(_d("JgpQVVc") .. tostring(tar.worldBoss.team))
tar.worldBoss.teamDropdown:UpdateName(_d("JgpQVVeX99BPZV0WGFc") .. tostring(tar.worldBoss.team))
end)

task.defer(function()
tar.worldBoss.building = false
end)

tar.misc = tar.misc or {}

tar.misc.expeditions = {
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
rewardPath = _d("MyxzYFgQDwIKVVEDHBgcHB9SBBoZ"),
module = nil,
action = nil,
section = nil,
paragraph = nil,
claimToggle = nil,
startToggle = nil,
dropdown = nil,
}

function tar.misc.expeditions.data()
local dn = tar.misc.expeditions

if dn.module ~= nil then
return dn.module or nil
end

local vx, uazc = pcall(function()
return require(mkd.ModuleScripts.ExpeditionData)
end)

dn.module = vx and uazc or false

return dn.module or nil
end

function tar.misc.expeditions.tiers()
local om = tar.misc.expeditions.data()

return om and om.Tiers or {}
end

function tar.misc.expeditions.remote()
local uris = tar.misc.expeditions

if uris.action and uris.action.Parent then
return uris.action
end

uris.action = ph(_d("NxdBXRMcAxsAX3kUAR4dAQ"), 3)

return uris.action
end

function tar.misc.expeditions.clockText(buv)
local fdk = tar.misc.expeditions.data()

if fdk and type(fdk.formatDuration) == _d("FBpfWwMcGBw") then
return fdk.formatDuration(buv)
end

local jiuh = math.max(0, math.floor((buv or 0) / 60))

return tostring(jiuh) .. _d("Hw")
end

function tar.misc.expeditions.status(wpbj)
local mj = tar.misc.expeditions
local all = mj.state
local ctz = type(all) == _d("Bg5TVBI") and type(all.active) == _d("Bg5TVBI") and all.active[wpbj] or nil

if type(ctz) ~= _d("Bg5TVBI") then
return _d("ExlQURsUFR4K"), nil
end

local xg = (tonumber(ctz.endsAt) or 0) - (os.time() + (mj.offset or 0))

if xg <= 0 then
return _d("AApQXA4"), xg
end

return _d("ABpfVh4bEA"), xg
end

function tar.misc.expeditions.candidates(efnb)
local szun = tar.misc.expeditions
local rbiy = szun.data()
local lamt = szun.state
local eaw = rbiy and rbiy.ById and rbiy.ById[efnb]
local wras = {}

if not (eaw and type(lamt) == _d("Bg5TVBI") and type(lamt.eligible) == _d("Bg5TVBI")) then
return wras
end

for bbef, ffrv in ipairs(lamt.eligible) do
if type(ffrv) == _d("Bg5TVBI") and ffrv.cardId then
local ucxo = tonumber(ffrv.rarity) or 0
local jows = (tonumber(ffrv.count) or 0) - (tonumber(ffrv.locked) or 0)

if ucxo >= (tonumber(eaw.minRarity) or 0) and jows > 0 then

table.insert(wras, { cardId = ffrv.cardId, borderLevel = ffrv.borderLevel, rarity = ucxo, count = jows })
end
end
end

table.sort(wras, function(oqk, lw)
if oqk.rarity == lw.rarity then
return tostring(oqk.cardId) < tostring(lw.cardId)
end

return oqk.rarity < lw.rarity
end)

return wras
end

function tar.misc.expeditions.cards(uuvi, rty)
local dzn = tar.misc.expeditions
local jnde = dzn.data()
local fcwr = jnde and tonumber(jnde.CardsPerExpedition) or 4
local jq = {}
local itp = dzn.candidates(uuvi)

rty = rty or {}

local function pf(vzfa, jxb)
local thd = tostring(vzfa.cardId) .. _d("UQ") .. tostring(vzfa.borderLevel)

while #jq < fcwr and (rty[thd] or 0) < jxb do
rty[thd] = (rty[thd] or 0) + 1

table.insert(jq, { cardId = vzfa.cardId, borderLevel = vzfa.borderLevel })
end
end

for pbeo, psr in ipairs(itp) do
if #jq >= fcwr then
break
end

if psr.count > 1 then
pf(psr, psr.count - 1)
end
end

if #jq < fcwr then
for nwi, dmzh in ipairs(itp) do
if #jq >= fcwr then
break
end

pf(dmzh, dmzh.count)
end
end

return jq
end

function tar.misc.expeditions.available(sofb)
local oih = tar.misc.expeditions
local qrw = oih.data()
local uyu = qrw and tonumber(qrw.CardsPerExpedition) or 4
local qtbs = 0

for ofc, ckmt in ipairs(oih.candidates(sofb)) do
qtbs = qtbs + ckmt.count

if qtbs >= uyu then
return uyu
end
end

return qtbs
end

function tar.misc.expeditions.text()
local lu = tar.misc.expeditions

if type(lu.state) ~= _d("Bg5TVBI") then
return _d("IApQXB4bEFIKSUgSER4GBl5WBFtZXA")
end

local gpjc = lu.data()
local uqw = gpjc and tonumber(gpjc.CardsPerExpedition) or 4
local ekc = {}

for yt, nh in ipairs(lu.tiers()) do
local kdx, dad = lu.status(nh.id)
local rv = tostring(nh.name)

if lu.tiersWanted[nh.id] then
rv = _d("kO+TGA") .. rv
end

if kdx == _d("ABpfVh4bEA") then
rv = rv .. _d("eD1UTAIHGQFPWFZX") .. lu.clockText(dad)
elseif kdx == _d("AApQXA4") then
rv = rv .. _d("eD1UWRMMVwYAEVsbFB4f")
else
local jgr = lu.available(nh.id)
rv = rv .. _d("eA") .. tostring(jgr) .. _d("UgBXGA") .. tostring(uqw) .. _d("UgxQShMG")

if jgr >= uqw then
rv = rv .. _d("eCxQVlcGAxMdRQ")
end
end

table.insert(ekc, rv)
end

table.insert(ekc, _d("NxlUSg5VEwcfXVEUFAMXT1hLVwYSHBsRWhITGAAKEVlXFhYACxFBGABXGgBdXFcaGRdPXl5bVRYcCxFXGRBXEQBBQVcaEVIOEVsWBxNSBkIYHBAHBk9TWRQeVwUHVEoSVQMaChFMHhAFUgxQVlcGBxMdVBgeAVdfT1AYGxoZF09SVwcMVx0BXUFXEhgXHBFXAgFXBQdUVlcBHxdPRVESB1cRDl9WGAFXEAoRXh4ZGxcLEU8eAR8dGkUYHgFZ"))

return table.concat(ekc, _d("eGU"))
end

function tar.misc.expeditions.request()
local aj = tar.misc.expeditions
local hxtz = aj.remote()

if hxtz then
pcall(function()
hxtz:FireServer(_d("AApATRIGAw"))
end)
end

aj.askedAt = os.clock()
end

function tar.misc.expeditions.claim()
local oqu = tar.misc.expeditions

if os.clock() < oqu.claimAt then
return false
end

local zelz = false

for lgdi, ha in ipairs(oqu.tiers()) do
if oqu.status(ha.id) == _d("AApQXA4") then
zelz = true
break
end
end

if not zelz then
return false
end

local cfew = oqu.remote()

if not cfew then
return false
end

pcall(function()
cfew:FireServer(_d("EQNQURo0Gx4"))
end)

oqu.claimAt = os.clock() + 3
oqu.askedAt = 0

return true
end

function tar.misc.expeditions.popup()
local svl = rprq:FindFirstChild(_d("NxdBXRMcAxsAX38CHA"))

return svl and svl:FindFirstChild(_d("MQNQURolGAIaQQ")) or nil
end

function tar.misc.expeditions.closeRewards()
local rwj = tar.misc.expeditions
local knq = rwj.popup()

if not (knq and knq.Visible) then
return false
end

local czor = knq:FindFirstChild(_d("PQRzTQMBGBw"))

if czor and type(firesignal) == _d("FBpfWwMcGBw") then
pcall(firesignal, czor.Activated)
end

pcall(function()
knq.Visible = false
end)

return true
end

function tar.misc.expeditions.rewardsText()
local qlpm = tar.misc.expeditions

if #qlpm.rewardLog == 0 then
return _d("PABFUB4bEFIMXVkeGBIWT0hdA1tXNxlUSg5VBxMWXk0DVQMaChFLEgcBFx0RSxIbEwFPXVkZEQRSB1RKElUAGxtZGB4BBFIbWF0FVRYcCxFRAwZXEQBfTBIbAwFB")
end

local ykmy = {}

for wk, adsz in ipairs(qlpm.rewardLog) do
local zuky = {}
local isob = adsz.items or {}

for nhw, mtu in ipairs(isob) do
if nhw > 4 then
table.insert(zuky, _d("WQ") .. tostring(#isob - 4) .. _d("UgJeShI"))
break
end

local tqjo = mtu.id or mtu.itemId
local qyry = tqjo and wih.ById[tqjo] or nil
local yume = (qyry and qyry.name) or (mtu.potions and _d("IgBFURgbBA")) or tostring(tqjo or _d("AApGWQUR"))

table.insert(zuky, yume .. _d("Uhc") .. tostring(mtu.count or mtu.max or mtu.min or 1))
end

local iu = math.max(0, os.time() - (tonumber(adsz.at) or os.time()))
local irv

if iu < 60 then
irv = tostring(iu) .. _d("AU9QXxg")
elseif iu < 3600 then
irv = tostring(math.floor(iu / 60)) .. _d("H09QXxg")
else
irv = tostring(math.floor(iu / 3600)) .. _d("Gk9QXxg")
end

table.insert(ykmy, tostring(adsz.title) .. _d("Uq2GGA") .. irv)
table.insert(ykmy, table.concat(zuky, _d("Xk8")))
end

return table.concat(ykmy, _d("eA"))
end

function tar.misc.expeditions.saveRewards()
local zwxy = tar.misc.expeditions

if type(writefile) ~= _d("FBpfWwMcGBw") then
return false
end

return pcall(function()
if type(makefolder) == _d("FBpfWwMcGBw") and type(isfolder) == _d("FBpfWwMcGBw") and not isfolder(_d("MyxzYA")) then
makefolder(_d("MyxzYA"))
end

writefile(zwxy.rewardPath, game:GetService(_d("OhtFSCQQBQQGUl0")):JSONEncode({
rewards = zwxy.rewardLog,
updatedAt = os.time(),
}))
end)
end

function tar.misc.expeditions.loadRewards()
local fo = tar.misc.expeditions

if type(readfile) ~= _d("FBpfWwMcGBw") or type(isfile) ~= _d("FBpfWwMcGBw") then
return false
end

local ynbo, vf = pcall(function()
if not isfile(fo.rewardPath) then
return nil
end

return readfile(fo.rewardPath)
end)

if not ynbo or type(vf) ~= _d("ARtDURkS") or #vf == 0 then
return false
end

local kt

if not pcall(function()
kt = game:GetService(_d("OhtFSCQQBQQGUl0")):JSONDecode(vf)
end) then
return false
end

if type(kt) ~= _d("Bg5TVBI") or type(kt.rewards) ~= _d("Bg5TVBI") then
return false
end

fo.rewardLog = {}

for lcbn, xxqc in ipairs(kt.rewards) do
if type(xxqc) == _d("Bg5TVBI") and type(xxqc.items) == _d("Bg5TVBI") then
table.insert(fo.rewardLog, {
at = tonumber(xxqc.at) or os.time(),
title = tostring(xxqc.title or _d("NxdBXRMcAxsAXw")),
items = xxqc.items,
})
end
end

return #fo.rewardLog > 0
end

function tar.misc.expeditions.start(nn, emp)
local qb = tar.misc.expeditions

if qb.status(nn) ~= _d("ExlQURsUFR4K") then
return false
end

if os.clock() < (qb.startedAt[nn] or 0) then
return false
end

local iklv = qb.remote()

if not iklv then
return false
end

local teqo = qb.cards(nn, emp)
local jr = qb.data()
local lpbe = jr and tonumber(jr.CardsPerExpedition) or 4

if #teqo < lpbe then
return false
end

local tb = {}

for skmi, tg in ipairs(teqo) do
tb[skmi] = { cardId = tg.cardId, borderLevel = tg.borderLevel }
end

pcall(function()
iklv:FireServer(_d("ARtQSgM"), nn, tb)
end)

qb.startedAt[nn] = os.clock() + 6
qb.askedAt = 0

return true
end

tar.misc.icon = function()
local qoc = gethui()

for wjvu, kzw in ipairs(qoc:QueryDescendants(_d("OwJQXxI5FhAKXQ"))) do
if kzw.Name == _d("Jg5TcRoUEBc") then
local zzd = kzw.Parent
local vtua = zzd and zzd:FindFirstChild(_d("Jg5TawAcAxEHVEo5FBoX"))

if vtua and vtua.Text == _d("PwZCWxIZGxMBVFcCBg") then
if kzw:GetAttribute(_d("MyxzYDocBBEmUlcZ")) then
return true
end

kzw:SetAttribute(_d("MyxzYDocBBEmUlcZ"), true)
kzw.Image = _d("")
kzw.BackgroundTransparency = 1

local function oe(zgy, ecop, fsrs, tkyd, rlq, opq, qlcs)
local wfw = Instance.new(zgy)

wfw.Size = UDim2.fromOffset(rlq, opq)
wfw.Position = UDim2.fromOffset(fsrs, tkyd)
wfw.BackgroundColor3 = ecop
wfw.BorderSizePixel = 0
wfw.Parent = kzw

if qlcs then
local fyx = Instance.new(_d("JyZyVwUbEgA"))
fyx.CornerRadius = UDim.new(0, qlcs)
fyx.Parent = wfw
end

return wfw
end

local rvoy = Color3.fromRGB(168, 170, 176)

local function zdf(ysm, dq, fqn, dhdx, vi)
local bhq = oe(_d("NB1QVRI"), rvoy, ysm, dq, fqn, dhdx, vi)

bhq.BackgroundTransparency = 1

local elys = Instance.new(_d("JyZiTAUaHBc"))

elys.Color = rvoy
elys.Thickness = 1.4
elys.LineJoinMode = Enum.LineJoinMode.Round
elys.Parent = bhq

return bhq
end

zdf(3, 1, 6, 4, 1)
zdf(1, 4, 16, 12, 2)

local sinx = oe(_d("NB1QVRI"), rvoy, 3, 8, 5, 5)

sinx.BackgroundTransparency = 1
sinx.ClipsDescendants = true

local ytm = oe(_d("NB1QVRI"), rvoy, 0, 1, 5, 5)

ytm.Rotation = 45
ytm.Parent = sinx

oe(_d("NB1QVRI"), rvoy, 9, 9, 4, 4, 4)
oe(_d("NB1QVRI"), rvoy, 13, 10, 3, 3, 1)

return true
end
end
end

return false
end

tar.misc.tab = as:Tab({
Name = _d("PwZCWxIZGxMBVFcCBg"),

Image = _d(""),
})

task.defer(function()
for cpd = 1, 20 do
if tar.misc.icon() then
break
end

task.wait(0.25)
end
end)

local mad = {
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
lastText = _d("PABFUB4bEFIfXkgHEBNSFlRMWQ"),
tab = nil,
weatherSection = nil,
giveUpSection = nil,
weatherParagraph = nil,
giveUpParagraph = nil,
weatherToggle = nil,
giveUpToggle = nil,
}

getgenv().ACBXPop = mad

function mad.options()
local hwtd = {}

for tczh, wtq in pairs(wih.ById) do
if wtq.type == _d("AgBFURgb") and type(wtq.name) == _d("ARtDURkS") then
hwtd[#hwtd + 1] = wtq.name
end
end

table.sort(hwtd)

return hwtd
end

function mad.idOf(zum)
for brod, luq in pairs(wih.ById) do
if luq.type == _d("AgBFURgb") and luq.name == zum then
return brod
end
end

return nil
end

function mad.count(kbyh)
local nf = ai.balances

return tonumber(nf and nf[kbyh]) or 0
end

function mad.pop(clfg, vvzm, az)
local fr = {}

for bp, xqc in pairs(clfg) do
if xqc then
local ybg = mad.idOf(bp)

if ybg then
local zyl = mad.count(ybg)

if zyl <= 0 then
fr[#fr + 1] = bp .. _d("UkIRVhgbElIDVF4D")
else
local xtph = math.clamp(math.floor(tonumber(vvzm) or 1), 1, zyl)

pcall(function()
fw.UseItem:FireServer(ybg, xtph)
end)

fr[#fr + 1] = bp .. _d("Uhc") .. xtph
task.wait(0.3)
end
end
end
end

if #fr == 0 then
return false
end

mad.lastText = az .. _d("UkIR") .. table.concat(fr, _d("Xk8"))

pcall(function()
ybe:Notify({
Title = _d("IgBB"),
Description = mad.lastText,
Lifetime = 5,
})
end)

return true
end

function mad.status()
local gmkj = nmr.weatherWanted(mad.weathers)
local ylo = nmr.weatherNow or _d("BwFaVhgCGQ")
local ojx = {
_d("JQpQTB8QBUhP") .. ylo .. (gmkj and (_d("UkdBVwcFHhwICxg") .. gmkj .. _d("Ww")) or _d("")),
_d("Pg5CTE1V") .. mad.lastText,
}

return table.concat(ojx, _d("eA"))
end

function mad.giveUpStatus()
if mad.armedAt > 0 then
return _d("Mx1cXRNVWlIYUFEDHBkVT1dXBVUDGgoRSgIbVwYAEV0ZEVl4I1BLA09X") .. mad.lastText
end

return _d("OwtdXVl/OxMcRQJX") .. mad.lastText
end

mad.tab = as:Tab({
Name = _d("IgBB"),

Image = _d(""),
})

mad.icon = function()
local anof = gethui()

for rua, fiea in ipairs(anof:QueryDescendants(_d("OwJQXxI5FhAKXQ"))) do
if fiea.Name == _d("Jg5TcRoUEBc") then
local gmj = fiea.Parent
local lrm = gmj and gmj:FindFirstChild(_d("Jg5TawAcAxEHVEo5FBoX"))

if lrm and lrm.Text == _d("IgBB") then
if fiea:GetAttribute(_d("MyxzYCcaBzsMXlY")) then
return true
end

fiea:SetAttribute(_d("MyxzYCcaBzsMXlY"), true)
fiea.Image = _d("")
fiea.BackgroundTransparency = 1

local fvyc = Color3.fromRGB(168, 170, 176)

local function pqg(pntj, hdq, rjw, gmjb, ctmz, rmag)
local grhy = Instance.new(pntj)

grhy.Size = UDim2.fromOffset(gmjb, ctmz)
grhy.Position = UDim2.fromOffset(hdq, rjw)
grhy.BackgroundColor3 = fvyc
grhy.BorderSizePixel = 0
grhy.Parent = fiea

if rmag then
local qxux = Instance.new(_d("JyZyVwUbEgA"))
qxux.CornerRadius = UDim.new(0, rmag)
qxux.Parent = grhy
end

return grhy
end

local function ziyr(dsil, mat, klpb, ydat, etej)
local al = pqg(_d("NB1QVRI"), dsil, mat, klpb, ydat, etej)

al.BackgroundTransparency = 1

local cid = Instance.new(_d("JyZiTAUaHBc"))

cid.Color = fvyc
cid.Thickness = 1.3
cid.LineJoinMode = Enum.LineJoinMode.Round
cid.Parent = al

return al
end

ziyr(1, 6, 16, 12, 6)
ziyr(6, 3, 6, 4, 1)
pqg(_d("NB1QVRI"), 5, 1, 8, 2, 1)
pqg(_d("NB1QVRI"), 7, 0, 4, 1, 0)

pqg(_d("NB1QVRI"), 4, 11, 10, 1, 0)
pqg(_d("NB1QVRI"), 13, 3, 2, 2, 2)
pqg(_d("NB1QVRI"), 15, 6, 2, 2, 2)

return true
end
end
end

return false
end

task.defer(function()
for fu = 1, 20 do
if mad.icon() then
break
end

task.wait(0.25)
end
end)

mad.weatherSection = mad.tab:Section({
Side = _d("PgpXTA"),
})

mad.weatherSection:Header({
Name = _d("IgBFURgbBFIAXxgAEBYGB1RKV4Xo1cU"),
})

mad.weatherToggle = mad.weatherSection:Toggle({
Name = _d("IgBBGBgbVwYHVEsSVQAXDkVQEgcE"),
Default = false,
Callback = function(cge)
if cge and (next(mad.weatherPotions) == nil or next(mad.weathers) == nil) then
mad.onWeather = false

pcall(function()
mad.weatherToggle:UpdateState(false)
end)

ybe:Dialog({
Title = _d("IgBB"),
Description = _d("JgZSU1cUA1IDVFkEAVcdAVQYABAWBgdUSlcUGRZPXlYSVQcdG1hXGVURGx1CTFdYVyIAQRgZEBIWHBFaGAEfUhteGBwbGAVPRlAWAVcGABFcBRwZGU9QVhNVABoKXxY"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})

return
end

mad.onWeather = cge

if cge then
mad.weatherSpent = nil
end
end,
}, _d("AgBBZxgbKAYHVEsSKgAXDkVQEgcE"))

mad.weatherSection:Dropdown({
Name = _d("JQpQTB8QBQE"),
Multi = true,
Required = false,
Options = { _d("JhZBUBgaGQ"), _d("MANYQg0UBRY"), _d("PgZWUAMbHhwI"), _d("JQZfXAQBGAAC"), _d("IQdQSh4bEBMB"), _d("IQZfXwIZFgAGRUE"), _d("PwBfWQUWH1IrXlUWHBk"), _d("JABYXA"), _d("Pw5VXVccGVInVFkBEBk"), _d("Pw5fXxY") },
Callback = function(mcg)
mad.weathers = {}

if type(mcg) == _d("Bg5TVBI") then
for ent, mhea in pairs(mcg) do
if mhea then
mad.weathers[ent] = true
end
end
end
end,
}, _d("BQpQTB8QBQE"))

mad.weatherSection:Dropdown({
Name = _d("IgBFURgbBA"),
Multi = true,
Required = false,
Options = mad.options(),
Callback = function(wzdk)
mad.weatherPotions = {}

if type(wzdk) == _d("Bg5TVBI") then
for tub, nohp in pairs(wzdk) do
if nohp then
mad.weatherPotions[tub] = true
end
end
end
end,
}, _d("AgBFURgbBA"))

mad.weatherSection:Input({
Name = _d("MwJeTRkB"),
Placeholder = _d("Qw"),
AcceptedCharacters = _d("PBpcXQUcFA"),
Callback = function(wryy)
local akqr = math.floor(tonumber(wryy) or 1)

mad.weatherAmount = math.clamp(akqr, 1, 50)
end,
}, _d("EwJeTRkB"))

mad.weatherParagraph = mad.weatherSection:Paragraph({
Header = _d("IRtQTAIG"),
Body = mad.status(),
})

mad.giveUpSection = mad.tab:Section({
Side = _d("IAZWUAM"),
})

mad.giveUpSection:Header({
Name = _d("MwlFXQVVEBsZVBgCBQ"),
})

mad.giveUpToggle = mad.giveUpSection:Toggle({
Name = _d("IgBBGBYTAxcdEVlXARgFCkMYEBwBF09ESA"),
Default = false,
Callback = function(efq)
if efq and next(mad.giveUpPotions) == nil then
mad.afterGiveUp = false

pcall(function()
mad.giveUpToggle:UpdateState(false)
end)

ybe:Dialog({
Title = _d("IgBB"),
Description = _d("JgZSU1cUA1IDVFkEAVcdAVQYBxoDGwBfGBEcBQEbERVXAR8XHVQYHgZXHABFUB4bEFIbXhgTBx4cBBFZEQESAE9FUBJVBQcBEVcDHRIAGFhLEls"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})

return
end

mad.afterGiveUp = efq
end,
}, _d("AgBBZxYTAxcdblkoARgFCkNnEBwBFzBESA"))

mad.giveUpSection:Dropdown({
Name = _d("IgBFURgbBA"),
Multi = true,
Required = false,
Options = mad.options(),
Callback = function(qjlx)
mad.giveUpPotions = {}

if type(qjlx) == _d("Bg5TVBI") then
for fwh, qzvv in pairs(qjlx) do
if qzvv then
mad.giveUpPotions[fwh] = true
end
end
end
end,
}, _d("AgBFURgbBC1d"))

mad.giveUpSection:Input({
Name = _d("MwJeTRkB"),
Placeholder = _d("Qw"),
AcceptedCharacters = _d("PBpcXQUcFA"),
Callback = function(mmqw)
local il = math.floor(tonumber(mmqw) or 1)

mad.giveUpAmount = math.clamp(il, 1, 50)
end,
}, _d("EwJeTRkBKEA"))

mad.giveUpParagraph = mad.giveUpSection:Paragraph({
Header = _d("IRtQTAIG"),
Body = mad.giveUpStatus(),
})

local qllf = {
autoSave = false,
autoRoll = true,
autoQuickRoll = true,

loading = false,
selected = nil,
lastText = _d("PABFUB4bEFIYQ1EDARIcT0hdA1VaUh9YWxxVFlIcUE4SVREbA1QYFRAbHRgf"),
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
theme = _d("JABYXA"),
accent = nil,
savesAt = 0,
autoSaveAt = 0,
themeAt = 0,
capAt = 0,
scaleAnchor = nil,
statusAt = 0,
knownSaves = _d(""),
}

getgenv().ACBXSettings = qllf

qllf.presets = {
Void = { panel = Color3.fromRGB(15, 15, 15), element = Color3.fromRGB(0, 0, 0), accent = Color3.fromRGB(168, 170, 176) },
Ocean = { panel = Color3.fromRGB(6, 16, 26), element = Color3.fromRGB(8, 26, 40), accent = Color3.fromRGB(77, 166, 255) },
Ember = { panel = Color3.fromRGB(26, 10, 8), element = Color3.fromRGB(36, 16, 10), accent = Color3.fromRGB(255, 122, 69) },
Sakura = { panel = Color3.fromRGB(26, 9, 18), element = Color3.fromRGB(38, 14, 26), accent = Color3.fromRGB(255, 125, 177) },
Mint = { panel = Color3.fromRGB(7, 20, 14), element = Color3.fromRGB(9, 30, 22), accent = Color3.fromRGB(77, 227, 160) },
Graphite = { panel = Color3.fromRGB(20, 20, 22), element = Color3.fromRGB(30, 30, 33), accent = Color3.fromRGB(200, 200, 206) },
}

qllf.themeOrder = { _d("JABYXA"), _d("PQxUWRk"), _d("NwJTXQU"), _d("IQ5aTQUU"), _d("PwZfTA"), _d("NR1QSB8cAxc") }

local im = _d("MyxzGCUQFRsdRVBYBhIGG1hWEAY")

function qllf.saves()
local edw, vkc = pcall(function()
return ryk:RefreshConfigList()
end)

if edw and type(vkc) == _d("Bg5TVBI") then
table.sort(vkc)
return vkc
end

return {}
end

function qllf.autoLoadName()
local ee, hdal = pcall(function()
if isfile and isfile(im .. _d("XQ5ETBgZGBMLH0wPAQ")) then
return readfile(im .. _d("XQ5ETBgZGBMLH0wPAQ"))
end
end)

if ee and type(hdal) == _d("ARtDURkS") then
hdal = hdal:gsub(_d("LEpCEw"), _d("")):gsub(_d("VxwaHA"), _d(""))

if hdal ~= _d("") then
return hdal
end
end

return nil
end

function qllf.setAutoLoad(rtva)

return (pcall(function()
writefile(im .. _d("XQ5ETBgZGBMLH0wPAQ"), rtva or _d(""))
end))
end

function qllf.delete(smcm)
if type(smcm) ~= _d("ARtDURkS") or smcm == _d("") then
return false, _d("IgZSU1cUVwEOR11XEx4eChFeHgcEBkE")
end

local irpq = im .. _d("XQ") .. smcm .. _d("XAVCVxk")
local av = false

pcall(function()
av = isfile ~= nil and isfile(irpq) == true
end)

if not av then
return false, _d("JgdUShJVHgFPX1dXEx4eChFbFhkbFwsR") .. smcm .. _d("XA")
end

local scs, sbow = pcall(function()
delfile(irpq)
end)

if not scs then
return false, tostring(sbow)
end

if qllf.autoLoadName() == smcm then
qllf.setAutoLoad(_d(""))
end

if qllf.selected == smcm then
qllf.selected = nil
qllf.selectionShown = nil
end

qllf.knownSaves = nil
qllf.savesAt = 0

return true
end

function qllf.save(dyu)
if type(dyu) ~= _d("ARtDURkS") or dyu:gsub(_d("Vxw"), _d("")) == _d("") then
return false, _d("NQZHXVcBHxdPQlkBEFcTT19ZGhBXFAZDSwNb")
end

local houh, cvtv, kpi = pcall(function()
return ryk:SaveConfig(dyu)
end)

if not houh then
return false, tostring(cvtv)
end

if cvtv ~= true then
return false, tostring(kpi or _d("BgdUGBEcGxdPUlcCGRNSAV5MVxcSUhhDUQMBEhw"))
end

return true
end

function qllf.replayOff(uxh)
local wgn, xojv = pcall(function()
return readfile(im .. _d("XQ") .. uxh .. _d("XAVCVxk"))
end)

if not wgn or type(xojv) ~= _d("ARtDURkS") then
return
end

local py
wgn, py = pcall(function()
return game:GetService(_d("OhtFSCQQBQQGUl0")):JSONDecode(xojv)
end)

if not wgn or type(py) ~= _d("Bg5TVBI") or type(py.objects) ~= _d("Bg5TVBI") then
return
end

for idf, oy in ipairs(py.objects) do
if oy.type == _d("JgBWXxsQ") and oy.state == false and oy.flag then
local xcak = ryk.Options[oy.flag]

if xcak then
pcall(function()
xcak:UpdateState(false)
end)
end
end
end
end

function qllf.load(pza)
if type(pza) ~= _d("ARtDURkS") or pza == _d("") then
return false, _d("IgZSU1cUVwEOR11XEx4eChFeHgcEBkE")
end

qllf.loading = true
wcn = true

local ih, owq, jcct = pcall(function()
return ryk:LoadConfig(pza)
end)

if not ih then
qllf.loading = false
wcn = false

return false, tostring(owq)
end

if owq ~= true then
qllf.loading = false
wcn = false

return false, tostring(jcct or _d("BgdUGBEcGxdPUlcCGRNSAV5MVxcSUh1UWRM"))
end

task.wait(0.25)
qllf.replayOff(pza)
qllf.loading = false
wcn = false

return true
end

qllf.uiPath = _d("MyxzYFgAHlwFQlcZ")

function qllf.saveUi()
if type(writefile) ~= _d("FBpfWwMcGBw") then
return false
end

if qllf.restoring then
return false
end

local wnc = qllf.accent

local cl = {
theme = qllf.theme,
scale = tonumber(string.format(_d("V0EDXg"), qllf.scaleTarget or 1)),
accent = wnc and string.format(_d("VwsdHRNZUhY"),
math.floor(wnc.R * 255 + 0.5),
math.floor(wnc.G * 255 + 0.5),
math.floor(wnc.B * 255 + 0.5)) or nil,
}

return pcall(function()
if type(makefolder) == _d("FBpfWwMcGBw") and type(isfolder) == _d("FBpfWwMcGBw") and not isfolder(_d("MyxzYA")) then
makefolder(_d("MyxzYA"))
end

writefile(qllf.uiPath, game:GetService(_d("OhtFSCQQBQQGUl0")):JSONEncode(cl))
end)
end

function qllf.loadUi()
if type(readfile) ~= _d("FBpfWwMcGBw") or type(isfile) ~= _d("FBpfWwMcGBw") then
return nil
end

local ru, xelt = pcall(function()
if not isfile(qllf.uiPath) then
return nil
end

return readfile(qllf.uiPath)
end)

if not ru or type(xelt) ~= _d("ARtDURkS") or xelt == _d("") then
return nil
end

local vlsr
ru, vlsr = pcall(function()
return game:GetService(_d("OhtFSCQQBQQGUl0")):JSONDecode(xelt)
end)

if not ru or type(vlsr) ~= _d("Bg5TVBI") then
return nil
end

qllf.restoring = true

if type(vlsr.theme) == _d("ARtDURkS") and qllf.presets[vlsr.theme] then
qllf.theme = vlsr.theme

pcall(function()
qllf.themeDropdown:UpdateSelection(vlsr.theme)
qllf.themeDropdown:UpdateName(_d("JgdUVRJPVw") .. vlsr.theme)
end)
end

local can, pcx, kjr = tostring(vlsr.accent or _d("")):match(_d("LEcUXFxcW1pKVRNeWV9XCxoRUw"))

if can then
local sf = Color3.fromRGB(tonumber(can), tonumber(pcx), tonumber(kjr))

qllf.accent = sf

pcall(function()
qllf.accentPicker:SetColor(sf)
end)
else
qllf.accent = nil

local kjdl = qllf.presets[qllf.theme] or qllf.presets.Void

pcall(function()
qllf.accentPicker:SetColor(kjdl.accent)
end)
end

local xgm = tonumber(vlsr.scale)

if xgm then
xgm = math.clamp(xgm, 0.5, qllf.scaleCeiling())

qllf.scaleTarget = xgm
qllf.scaleAnchor = nil

pcall(function()
qllf.scaleSlider:UpdateValue(xgm)
end)
end

qllf.applyTheme()

qllf.restoring = false
qllf.saveUi()

return vlsr
end

qllf.bossModePath = _d("MyxzYFgXGAEcH1IEGhk")

function qllf.saveBossMode(qqh)
if type(writefile) ~= _d("FBpfWwMcGBw") or type(qqh) ~= _d("ARtDURkS") or qqh == _d("") then
return false
end

return pcall(function()
if type(makefolder) == _d("FBpfWwMcGBw") and type(isfolder) == _d("FBpfWwMcGBw") and not isfolder(_d("MyxzYA")) then
makefolder(_d("MyxzYA"))
end

writefile(qllf.bossModePath, game:GetService(_d("OhtFSCQQBQQGUl0")):JSONEncode({ mode = qqh }))
end)
end

function qllf.loadBossMode()
if type(readfile) ~= _d("FBpfWwMcGBw") or type(isfile) ~= _d("FBpfWwMcGBw") then
return nil
end

local pzz, wax = pcall(function()
if not isfile(qllf.bossModePath) then
return nil
end

return readfile(qllf.bossModePath)
end)

if not pzz or type(wax) ~= _d("ARtDURkS") or wax == _d("") then
return nil
end

local cnux

pzz, cnux = pcall(function()
return game:GetService(_d("OhtFSCQQBQQGUl0")):JSONDecode(wax)
end)

if not pzz or type(cnux) ~= _d("Bg5TVBI") or type(cnux.mode) ~= _d("ARtDURkS") then
return nil
end

return cnux.mode
end

function qllf.colourKey(eli)
return math.floor(eli.R * 255) .. _d("Xg") .. math.floor(eli.G * 255) .. _d("Xg") .. math.floor(eli.B * 255)
end

function qllf.guiRoot()

if not ldjd() then
return nil
end

if qllf.root and qllf.root.Parent then
return qllf.root
end

local zii = gethui and gethui() or game:GetService(_d("MQBDXTAAHg"))

for rnra, owup in ipairs(zii:GetChildren()) do
if owup:IsA(_d("IQxDXRIbMAcG")) and owup:FindFirstChild(_d("MA5CXQ")) then
qllf.root = owup.Base

return qllf.root
end
end

return nil
end

function qllf.applyTheme()
local qbn = qllf.guiRoot()
local hbxk = qllf.presets[qllf.theme] or qllf.presets.Void

if not qbn then
return false
end

local qyfu = {
panel = hbxk.panel,
element = hbxk.element,
accent = qllf.accent or hbxk.accent,
}

local mc = {}

for jo, fvg in pairs(qllf.presets) do
mc[qllf.colourKey(fvg.panel)] = _d("Ag5fXRs")
mc[qllf.colourKey(fvg.element)] = _d("FwNUVRIbAw")
mc[qllf.colourKey(fvg.accent)] = _d("EwxSXRkB")
end

mc[qllf.colourKey(qyfu.accent)] = _d("EwxSXRkB")

if mc[qllf.colourKey(qbn.BackgroundColor3)] == _d("Ag5fXRs") then
qbn.BackgroundColor3 = qyfu.panel
end

for xbo, ju in ipairs(qbn:GetDescendants()) do
if ju:IsA(_d("NRpYdxUfEhEb")) then
local hfk = mc[qllf.colourKey(ju.BackgroundColor3)]

if hfk then
ju.BackgroundColor3 = qyfu[hfk]
end
elseif ju:IsA(_d("JyZiTAUaHBc")) then
if mc[qllf.colourKey(ju.Color)] == _d("EwxSXRkB") then
ju.Color = qyfu.accent
end
end

if ju:IsA(_d("OwJQXxI5FhAKXQ")) and ju.Name == _d("Jg5TcRoUEBc") and ju.Image ~= _d("") then
ju.ImageColor3 = qyfu.accent
ju.ImageTransparency = 0
ju:SetAttribute(_d("MyxzYCMUFTMMUl0ZAQ"), qyfu.accent)

if not ju:GetAttribute(_d("MyxzYCMUFSYGX0w")) then
ju:SetAttribute(_d("MyxzYCMUFSYGX0w"), true)

local function fpj()
local gbz = ju:GetAttribute(_d("MyxzYCMUFTMMUl0ZAQ"))

if gbz and ju.ImageColor3 ~= gbz then
ju.ImageColor3 = gbz
end

if ju.ImageTransparency ~= 0 then
ju.ImageTransparency = 0
end
end

ju:GetPropertyChangedSignal(_d("OwJQXxIhBRMBQkgWBxIcDEg")):Connect(fpj)
ju:GetPropertyChangedSignal(_d("OwJQXxI2GB4AQws")):Connect(fpj)
end
end
end

return true
end

local tpnb = as:Tab({
Name = _d("Pw5B"),
Image = _d("AA1JWQQGEgYGVQJYWkFCXAAIQEBOQV4"),
})

local yoo = {
holdFor = 25,
fly = {
on = false,
speed = 55,
connection = nil,
},
islands = {
{ name = _d("PgBTWg4"), kind = _d("BQBDVBM"), arg = _d("HgBTWg4") },
{ name = _d("Mw1QVhMaGRcLEXEEGRYcCw"), kind = _d("GxxdWRkR"), arg = _d("Ew1QVhMaGRcLblEEGRYcCw") },
{ name = _d("JhhYVlc3EhMMWV0E"), kind = _d("GxxdWRkR"), arg = _d("BhhYVigXEhMMWV0E"), note = _d("UjtZXVcGEgAZVEpXEQUdH0IYHgFXBwFFURtVDh0aEVAWAxJSHFBRGxATUhtZXQUQWQ") },
{ name = _d("JQZfXBocGx5PeEsbEA"), kind = _d("GxxdWRkR"), arg = _d("BQZfXBocGx4wWEsbEA"), note = _d("UjtZXVcGEgAZVEpXEQUdH0IYHgFXBwFFURtVDh0aEVAWAxJSHFBRGxATUhtZXQUQWQ") },
},
npcs = {
{ name = _d("MQ5DXFc4EgAIVA"), npc = _d("FBpCXSgbBxE"), attr = _d("PD9ycRM"), at = Vector3.new(-272, 33, -40347) },
{ name = _d("NxdBXRMcAxsAX0s"), npc = _d("NxdBXRMcAxsAX3YnNg"), attr = _d("NxdBXRMcAxsAX3YnNg"), at = Vector3.new(-347, 35, -40361) },
{ name = _d("NgpSVxkGAwAaUkw"), npc = _d("FgpSVxkGAwAaUkwoGwcR"), attr = _d("PD9ycRM"), at = Vector3.new(-264, 33, -40331) },
{ name = _d("MR1QXgM"), npc = _d("ER1QXgMqGQIM"), attr = _d("PD9ycRM"), at = Vector3.new(-330, 33, -40277) },
{ name = _d("IQRYVBtVIwAKVA"), npc = _d("IQRYVBshBRcKf2g0"), attr = _d("IQRYVBshBRcKf2g0"), at = Vector3.new(-290, 32, -40283) },
{ name = _d("MQ5DXFc8GRYKSQ"), npc = _d("EQ5DXCgcGRYKSWcZBRQ"), attr = _d("PD9ycRM"), at = Vector3.new(-313, 33, -40282) },
{ name = _d("Ig5SU1c4EgAMWVkZAQ"), npc = _d("Ag5SUygYEgAMWVkZAQ"), attr = _d("PD9ycRM"), at = Vector3.new(-301, 33, -40270) },
{ name = _d("NhpfXxIaGQ"), npc = _d("FhpfXxIaGS0BQVs"), attr = _d("PD9ycRM"), at = Vector3.new(-339, 41, -40399) },
{ name = _d("NAZCUBIHGhMB"), npc = _d("NAZCUBIHGhMBf2g0"), attr = _d("NAZCUBIHGhMBf2g0"), at = Vector3.new(-493, 14, -40262) },
{ name = _d("IQpSShIBVzMBVlQSBw"), npc = _d("IQpSShIBNhwIXV0FOycx"), attr = _d("IQpSShIBNhwIXV0FOycx"), at = Vector3.new(-209, 34, -40382) },
{ name = _d("Og5dVBgCEhcBEWsfGgc"), npc = _d("IhpcSBwcGVIiVEoUHRYcGw"), at = Vector3.new(-29989, 78, -30259) },
{ name = _d("IQ5SSh4THhEKEXkbARYA"), landmark = _d("IQ5SSh4THhEKcFQDFAU"), island = _d("Ew1QVhMaGRcLblEEGRYcCw"), at = Vector3.new(-3548, 11, -40462) },
{ name = _d("Og5DXBQaBRdPZVcAEAU"), npc = _d("Og5DXBQaBRc7Xk8SBw"), island = _d("Ew1QVhMaGRcLblEEGRYcCw"), at = Vector3.new(-3795, 25, -40250) },
{ name = _d("OxxdWRkRVzQGQlASBxoTAQ"), npc = _d("OxxdWRkRMRscWV0FGBYcIWF7"), attr = _d("OxxdWRkRMRscWV0FGBYcIWF7"), island = _d("Ew1QVhMaGRcLblEEGRYcCw"), at = Vector3.new(-3825, 23, -40260) },
{ name = _d("NgZWXxIH"), npc = _d("NgZWXxIHOSIs"), attr = _d("NgZWXxIHOSIs"), island = _d("BhhYVigXEhMMWV0E"), at = Vector3.new(-5998, 26, -40565) },
{ name = _d("IQpSShIBVzYGVl8SBw"), npc = _d("IQpSShIBMxsIVl0FOycx"), attr = _d("IQpSShIBMxsIVl0FOycx"), island = _d("BQZfXBocGx4wWEsbEA"), at = Vector3.new(-7740, 17, -40343) },
},
}

function yoo.hold()
bjce.tpHoldUntil = os.clock() + yoo.holdFor

bjce.deepPhase = _d("GwtdXQ")
bjce.deepStageAt = 0
bjce.phase = _d("GwtdXQ")
bjce.nextCastAt = 0
bjce.watchdogAt = 0

return yoo.holdFor
end

function yoo.point(zz)
local fi

if zz.landmark then
fi = workspace:FindFirstChild(zz.landmark)
else
local ipvj = workspace:FindFirstChild(_d("PD9ySw"))

if ipvj then
for qkmf, smwx in ipairs(ipvj:GetChildren()) do
local bjqr

if zz.attr then
bjqr = smwx:GetAttribute(zz.attr) == zz.npc
else
bjqr = smwx.Name == zz.npc
end

if bjqr then
fi = smwx
break
end
end
end
end

if fi then
local iagg = fi.PrimaryPart
or fi:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"), true)
or fi:FindFirstChildWhichIsA(_d("MA5CXScUBQY"), true)

if iagg then
return iagg.Position
end
end

return zz.at
end

function yoo.resume()
if not bjce.enabled then
return
end

local ol = ga.Character
local jum = ol and ol:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not jum or (jum.Position - vgd).Magnitude < 40 then
return
end

pcall(function()
bjce.recover()
end)
end

function yoo.standAt(vmn)
local vz = ga.Character
local apj = vz and vz:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not apj or not vmn then
return false
end

local wv = RaycastParams.new()
wv.FilterType = Enum.RaycastFilterType.Exclude
wv.FilterDescendantsInstances = { vz }

local iezi = workspace:Raycast(vmn + Vector3.new(0, 10, 0), Vector3.new(0, -80, 0), wv)
local pzws = vmn.Y

if iezi and iezi.Instance.Name ~= _d("JQ5FXQU") then
local uqnv = iezi.Position.Y + 3.2

if math.abs(uqnv - vmn.Y) <= 8 then
pzws = uqnv
end
end

local qnmf = Vector3.new(apj.Position.X - vmn.X, 0, apj.Position.Z - vmn.Z)

if qnmf.Magnitude < 1 then
qnmf = Vector3.new(4, 0, 0)
else
qnmf = qnmf.Unit * 4
end

local bpce = Vector3.new(vmn.X + qnmf.X, pzws, vmn.Z + qnmf.Z)

apj.CFrame = CFrame.new(bpce)

return true
end

function yoo.unlock()
local vtbk = {
{ id = _d("Ew1QVhMaGRcLblEEGRYcCw"), at = Vector3.new(-3825, 24, -40260) },
{ id = _d("BhhYVigXEhMMWV0E"), at = Vector3.new(-6180, 40, -40350) },
{ id = _d("BQZfXBocGx4wWEsbEA"), at = Vector3.new(-7480, 30, -40350) },
}
local nfne = {}

for jsw, ccpv in ipairs(vtbk) do
local fwvq = fw.FishingGetState:InvokeServer()

if fwvq and fwvq.areas and fwvq.areas[ccpv.id] == true then
table.insert(nfne, ccpv.id .. _d("SE9QVAUQFhYWEVcHEBk"))
else
yoo.hold()
yoo.standAt(ccpv.at)
task.wait(2.4)

local gxqf = fw.FishingGetState:InvokeServer()

table.insert(nfne, ccpv.id .. (gxqf and gxqf.areas and gxqf.areas[ccpv.id] and _d("SE9EVhsaFBkKVQ") or _d("SE9XWR4ZEhY")))
end
end

yoo.hold()
pcall(function()
fw.TeleportToWorld:FireServer(_d("HgBTWg4"))
end)
task.wait(2.5)

return table.concat(nfne, _d("Uq2GGA"))
end

function yoo.flyToggle(cayv)
yoo.fly.on = cayv

if not cayv then
return _d("NANIGBgTEVw")
end

local jare = ga.Character
local aumv = jare and jare:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not aumv then
return _d("PAARWx8UBRMMRV0FVQMdT11REQFZ")
end

yoo.fly.height = aumv.Position.Y

if yoo.fly.connection then
return _d("NANIGBgbWQ")
end

local dezz = game:GetService(_d("JxxUSj4bBwcbYl0FAx4RCg"))

yoo.fly.connection = game:GetService(_d("IBpfaxIHARsMVA")).Heartbeat:Connect(function(vgys)
if not yoo.fly.on then
return
end

local boom = ga.Character
local nga = boom and boom:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not nga then
return
end

local tdo = workspace.CurrentCamera
local bg = Vector3.zero

if tdo then
local qyr = tdo.CFrame.LookVector
local drde = Vector3.new(qyr.X, 0, qyr.Z)

if drde.Magnitude > 0.01 then
drde = drde.Unit
end

local lfx = Vector3.new(drde.Z, 0, -drde.X)

if dezz:IsKeyDown(Enum.KeyCode.W) then
bg = bg + drde
end

if dezz:IsKeyDown(Enum.KeyCode.S) then
bg = bg - drde
end

if dezz:IsKeyDown(Enum.KeyCode.D) then
bg = bg + lfx
end

if dezz:IsKeyDown(Enum.KeyCode.A) then
bg = bg - lfx
end
end

local gp = 0

if dezz:IsKeyDown(Enum.KeyCode.Space) then
gp = 1
elseif dezz:IsKeyDown(Enum.KeyCode.LeftControl) then
gp = -1
end

local efb = yoo.fly.speed or 55
local dv = bg * efb * vgys + Vector3.new(0, gp * efb * 0.6 * vgys, 0)

if dv.Magnitude < 0.001 then
return
end

nga.CFrame = nga.CFrame + dv
nga.AssemblyLinearVelocity = Vector3.zero
end)

return _d("NANIGBgbWQ")
end

function yoo.go(erlb)
yoo.hold()

if erlb.kind == _d("BQBDVBM") then
pcall(function()
fw.TeleportToWorld:FireServer(erlb.arg)
end)

return _d("IQpfTFcBHxdP") .. erlb.name .. _d("UhtUVBIFGAAbHw")
end

if erlb.kind == _d("GxxdWRkR") then
pcall(function()
fw.FishingIslandTeleport:FireServer(erlb.arg)
end)

return _d("IQpfTFcBHxdP") .. erlb.name .. _d("UhtUVBIFGAAbHw") .. tostring(erlb.note or _d(""))
end

local wuls = yoo.point(erlb)
local eqzh = ga.Character
local ri = eqzh and eqzh:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if wuls and ri and (ri.Position - wuls).Magnitude > 1500 then
pcall(function()
if erlb.island then
fw.FishingIslandTeleport:FireServer(erlb.island)
else
fw.TeleportToWorld:FireServer(_d("HgBTWg4"))
end
end)

task.wait(erlb.island and 3.5 or 4.5)

wuls = yoo.point(erlb)

ri = ga.Character and ga.Character:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if wuls and ri and (ri.Position - wuls).Magnitude > 1500 then
return erlb.name .. _d("UgZCGBgbVw") .. tostring(erlb.island or _d("BgdUGBsaFRAW"))
.. _d("UkIRTB8QVxUOXF1XBxIUGkJdBFUDGg5FGAMHHgJPRFYDHBtSBkUYHxQEUg1UXRlVBRcOUlASEVcdAVJdWQ")
end
end

if not wuls then
return erlb.name .. _d("UgZCGBkaA1IGXxgDHR4BT0ZXBRkTXA")
end

if not yoo.standAt(wuls) then
return _d("PAARWx8UBRMMRV0FVQMdT1xXARBZ")
end

task.delay(yoo.holdFor + 2, function()
pcall(yoo.resume)
end)

return _d("IRteVxNVFRccWFwSVQ") .. erlb.name .. _d("XA")
end

yoo.islandSection = tpnb:Section({ Side = _d("PgpXTA") })
yoo.islandSection:Header({ Name = _d("OxxdWRkRBFKfrrfqms/9") })

yoo.npcSection = tpnb:Section({ Side = _d("IAZWUAM") })
yoo.npcSection:Header({ Name = _d("PD9yS1eF6OHi") })

for xw, jjb in ipairs(yoo.islands) do
yoo.islandSection:Button({
Name = jjb.name,
Callback = function()
task.spawn(function()
local qrqk = yoo.go(jjb)

ybe:Notify({
Title = _d("JgpdXQcaBQY"),
Description = qrqk,
Lifetime = 6,
})
end)
end,
})
end

yoo.state = bjce
yoo.tab = tpnb
yoo.islandSection:Button({
Name = _d("JwFdVxQeVxMDXRgeBhsTAVVL"),
Callback = function()
task.spawn(function()
local aoka = yoo.unlock()

ybe:Notify({
Title = _d("OxxdWRkRBA"),
Description = aoka,
Lifetime = 10,
})
end)
end,
})

yoo.flySection = tpnb:Section({ Side = _d("PgpXTA") })
yoo.flySection:Header({ Name = _d("NANIGJXp/53Xvg") })

yoo.flySection:Toggle({
Name = _d("NANIGF8iNiErHRgkBRYRChFNB1lXMRtDVFcRGAUBGA"),
Default = false,
Callback = function(hn)
local lsu = yoo.flyToggle(hn)

ybe:Notify({
Title = _d("NANI"),
Description = lsu,
Lifetime = 4,
})
end,
}, _d("EwxTQCgTGws"))

getgenv().ACBXTeleport = yoo

getgenv().ACBXDeepWater = iyvm

pcall(iyvm.dropStale)

for kvtx, bt in ipairs(yoo.npcs) do
yoo.npcSection:Button({
Name = bt.name,
Callback = function()
task.spawn(function()
local apf = yoo.go(bt)

ybe:Notify({
Title = _d("JgpdXQcaBQY"),
Description = apf,
Lifetime = 6,
})
end)
end,
})
end

local hp = dide:Section({ Side = _d("PgpXTA") })

hp:Header({ Name = _d("NgZWXx4bEFKNqreYzfg") })

local jus = {
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

local zb = (tonumber(getgenv().ACBXDigGeneration) or 0) + 1
getgenv().ACBXDigGeneration = zb

function jus.read()
local xwl, hybt = pcall(function()
return fw.DigGetState:InvokeServer()
end)

return xwl and type(hybt) == _d("Bg5TVBI") and hybt or nil
end

function jus.call(zunh, lpn)
local gduw, odys = pcall(function()
return fw.DigShop:InvokeServer(zunh, lpn)
end)

task.wait(2.5)

return gduw and odys == true
end

function jus.wear()
local rkz = ga.Character

if not rkz then
return false
end

local gzz = rkz:FindFirstChildOfClass(_d("OhpcWRkaHhY"))
local uyl = ga:FindFirstChild(_d("MA5SUwcUFBk"))

if not (gzz and uyl) then
return false
end

gzz:UnequipTools()
task.wait(0.4)

for idrf = 1, 8 do
for xvex, kfn in ipairs(uyl:GetChildren()) do
if kfn:IsA(_d("JgBeVA")) and kfn.Name:find(_d("LCtYXyQdGAQKXQ")) then
gzz:EquipTool(kfn)

return true
end
end

task.wait(0.5)
end

return false
end

function jus.run()
local tk = jus.read()

if not tk then
return _d("JgdUGBMcEFIcWVcHVR4BT19XA1UWHBxGXQUcGRVB")
end

local ptg = {}

pcall(function()
local qaol = fw.FishingGetState:InvokeServer()

ptg = qaol and qaol.areas or {}
end)

if not (ptg.abandoned_island and ptg.twin_beaches and ptg.windmill_isle) then
yoo.unlock()
task.wait(1)
end

local op

for phew, pbw in ipairs(yoo.npcs) do
if pbw.name == _d("NgZWXxIH") then
op = pbw
break
end
end

if not op then
return _d("JgdUGCMHEhMcREoSVT8HAUVdBVUeAU9fVwNVHhxPRVAeBlcFAENUE1s")
end

yoo.go(op)
task.wait(2)

local tlt = ga.Character
local hzbz = tlt and tlt:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))
local awsp = yoo.point(op)

if not (hzbz and awsp) or (hzbz.Position - awsp).Magnitude > 40 then
return _d("MQBEVBNVGR0bEUoSFBQaT0VQElUjAApQSwIHElInRFYDEAVc")
end

tk = jus.read() or tk

local ei = false
local xiw = tk.shovels and tk.shovels.shovel_basic == true
local uw = tk.detectors and tk.detectors.detector_basic == true

if not (xiw and uw) then
ei = jus.call(_d("MQNQURomAxMdRV0F"), _d("AQdeThIZKBAOQlEU"))
tk = jus.read() or tk
end

if tk.equippedShovel ~= _d("AQdeThIZKBAOQlEU") then
jus.call(_d("Nx5EUQcmHx0ZVFQ"), _d("AQdeThIZKBAOQlEU"))
end

if tk.equippedDetector ~= _d("FgpFXRQBGAAwU1kEHBQ") then
jus.call(_d("Nx5EUQcxEgYKUkwYBw"), _d("FgpFXRQBGAAwU1kEHBQ"))
end

tk = jus.read() or tk

if tk.equippedShovel == _d("AQdeThIZKBAOQlEU") and tk.equippedDetector == _d("FgpFXRQBGAAwU1kEHBQ") then
local onp = jus.wear()
local mqu = false

if onp and bjce.enabled then
bjce.autoFishWanted = false
mqu = true

xckt(false)

pcall(function()
zu:UpdateState(false)
end)
end

return (ei and _d("MQNQURoQE1IOX1xXEAYHBkFIEhE") or _d("Nx5EUQcFEhY"))
.. _d("UhtZXVc3FgEGUhgkHRgECl0YFhsTUi1QSx4WVzYKRV0UARgAQQ")
.. (mqu and _d("Ui5ETBhVMRscWRgYExFSQhFMHxBXAQdeThIZVxoOQhgDHRJSG15XG1UEHgBFFg") or _d(""))
end

return _d("JgdUGDUUBBsMEWsfGgEXAxFXBVUzFxtUWwMaBVIGQhgEAR4eAxFVHgYEGwFWFg")
end

function jus.unlock()
if jus.busy then
return _d("MwNDXRYRDlIYXkocHBkVQQ")
end

jus.busy = true

local tppr, lqfb = pcall(jus.run)

jus.busy = false

if not tppr then
return _d("NgZWXx4bEFIJUFEbEBNITw") .. tostring(lqfb)
end

return lqfb
end

jus.icon = function()
local qhn = gethui()

for gayu, vdan in ipairs(qhn:QueryDescendants(_d("OwJQXxI5FhAKXQ"))) do
if vdan.Name == _d("Jg5TcRoUEBc") then
local wvmb = vdan.Parent
local jp = wvmb and wvmb:FindFirstChild(_d("Jg5TawAcAxEHVEo5FBoX"))

if jp and jp.Text == _d("NgZWXx4bEA") then
if vdan:GetAttribute(_d("MyxzYDMcEDsMXlY")) then
return true
end

vdan:SetAttribute(_d("MyxzYDMcEDsMXlY"), true)
vdan.Image = _d("")
vdan.BackgroundTransparency = 1

local hevl = Color3.fromRGB(233, 236, 242)

for lmw, bfvc in ipairs(qhn:QueryDescendants(_d("OwJQXxI5FhAKXQ"))) do
if bfvc.Name == _d("Jg5TcRoUEBc") and bfvc ~= vdan and bfvc.Image ~= _d("") then
hevl = bfvc.ImageColor3
break
end
end

local function bxa(jbir, ed, svpd, zay, qae, cbv)
local wru = Instance.new(_d("NB1QVRI"))

wru.Size = UDim2.fromOffset(svpd, zay)
wru.Position = UDim2.fromOffset(jbir, ed)
wru.BackgroundColor3 = hevl
wru.BorderSizePixel = 0
wru.Parent = vdan

if cbv then
wru.Rotation = cbv
end

if qae then
local dtk = Instance.new(_d("JyZyVwUbEgA"))

dtk.CornerRadius = UDim.new(0, qae)
dtk.Parent = wru
end

return wru
end

bxa(1.1, 10.2, 7, 6.4, 1.6, -45)
bxa(3.1, 8.3, 11, 2.2, 0.8, -45)
bxa(9.8, 4.4, 5.6, 2, 0.8, 45)

return true
end
end
end

return false
end

task.defer(function()
for xtdc = 1, 20 do
if jus.icon() then
break
end

task.wait(0.25)
end
end)

hp:Button({
Name = _d("JwFdVxQeVxYGVl8eGxA"),
Callback = function()
task.spawn(function()
ybe:Notify({
Title = _d("NgZWXx4bEA"),
Description = _d("OgpQXB4bEFIbXhgDHRJSO0NdFgYCAAoRcAIbAxcdHw"),
Lifetime = 5,
})

local cqxc = jus.unlock()

ybe:Notify({
Title = _d("NgZWXx4bEA"),
Description = cqxc,
Lifetime = 10,
})
end)
end,
})

jus.statusParagraph = hp:Paragraph({
Header = _d("NgZWGAQBFgYK"),
Body = _d("IApQXB4bEFIbWV1XER4VT0JZARBZXEE"),
})

jus.data = require(mkd.ModuleScripts.DigData)

function jus.zoneAt(mwld)
for mq, ezme in ipairs(game:GetService(_d("MQBdVBIWAxsAX2sSBwEbDFQ")):GetTagged(jus.data.ZoneTag)) do
if ezme:IsA(_d("MA5CXScUBQY")) and ezme:IsDescendantOf(workspace) then
local ckxt = ezme.CFrame:PointToObjectSpace(mwld)
local qwv = ezme.Size * 0.5

if math.abs(ckxt.X) <= qwv.X and math.abs(ckxt.Y) <= qwv.Y and math.abs(ckxt.Z) <= qwv.Z then
return true
end
end
end

return false
end

function jus.onIsland()
for tji, qs in ipairs(game:GetService(_d("MQBdVBIWAxsAX2sSBwEbDFQ")):GetTagged(jus.data.ZoneTag)) do
if qs:IsA(_d("MA5CXScUBQY")) and qs:IsDescendantOf(workspace) then
return true
end
end

return false
end

function jus.bestShovel(ekd)
local smmd = ekd and ekd.shovels or {}
local tc = nil

for blqd, fash in ipairs(jus.data.Shovels) do
if smmd[fash.id] == true then
tc = fash.id
end
end

return tc
end

function jus.equipBest()
local nss = jus.read()
local xgij = jus.bestShovel(nss)

if not xgij then
return nil
end

if nss.equippedShovel ~= xgij then
jus.call(_d("Nx5EUQcmHx0ZVFQ"), xgij)
end

jus.wear()

return xgij
end

function jus.bestDetector(bsq)
local uxza = bsq and bsq.detectors or {}
local dmxi = nil

for fwym, vnox in ipairs(jus.data.Detectors) do
if uxza[vnox.id] == true then
dmxi = vnox.id
end
end

return dmxi
end

function jus.equipBestDetector()
local dgii = jus.read()
local hf = jus.bestDetector(dgii)

if not hf then
return nil
end

if dgii.equippedDetector ~= hf then
jus.call(_d("Nx5EUQcxEgYKUkwYBw"), hf)
end

return hf
end

function jus.leaveNpc()
local rb = ga.Character
local vylw = rb and rb:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))
local fx = rb and rb:FindFirstChildOfClass(_d("OhpcWRkaHhY"))

if not (vylw and fx) then
return false
end

local lall

for llz, cxz in ipairs(yoo.npcs) do
if cxz.name == _d("NgZWXxIH") then
lall = cxz
break
end
end

local dfb = lall and yoo.point(lall)

if not dfb then
return false
end

local dxgq = Vector3.new(vylw.Position.X - dfb.X, 0, vylw.Position.Z - dfb.Z)

if dxgq.Magnitude >= 16 then
return true
end

if dxgq.Magnitude < 1 then
dxgq = Vector3.new(0, 0, -1)
end

dxgq = dxgq.Unit

local ndbs = Vector3.new(dfb.X + dxgq.X * 22, vylw.Position.Y, dfb.Z + dxgq.Z * 22)
local feha = os.clock() + 6

fx:MoveTo(ndbs)

while os.clock() < feha do
local aoe = ga.Character
local ggd = aoe and aoe:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not ggd or (ggd.Position - ndbs).Magnitude < 4 then
break
end

task.wait(0.15)
end

pcall(function()
fx:MoveTo(vylw.Position)
end)

return true
end

function jus.goToSand(fnu)

if fnu or not jus.onIsland() then
if not fnu then

pcall(function()
fw.TeleportToWorld:FireServer(_d("HgBTWg4"))
end)

local ezvd = os.clock() + 15

while not jus.onIsland() and os.clock() < ezvd do
task.wait(0.5)
end
end

local zf

for hkk, fbjb in ipairs(yoo.npcs) do
if fbjb.name == _d("NgZWXxIH") then
zf = fbjb
break
end
end

if zf then
yoo.go(zf)
task.wait(2)
end
end

if jus.onIsland() then
jus.leaveNpc()
end
end

function jus.spot()
local uze = ga.Character
local muh = uze and uze:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not muh then
return nil
end

local hdj = muh.CFrame.LookVector
local ce = Vector3.new(hdj.X, 0, hdj.Z)

if ce.Magnitude < 0.01 then
ce = Vector3.new(0, 0, -1)
end

ce = ce.Unit

local bge = RaycastParams.new()
bge.FilterType = Enum.RaycastFilterType.Exclude
bge.FilterDescendantsInstances = { uze }

local function yaa(mpdu, fj)
local dtn = muh.Position + mpdu * fj + Vector3.new(0, 4, 0)
local rlcb = workspace:Raycast(dtn, Vector3.new(0, -18, 0), bge)

if rlcb and jus.zoneAt(rlcb.Position) then
return rlcb.Position
end
end

for yuhp, kfh in ipairs({ 4, 7, 10, 2 }) do
local edl = yaa(ce, kfh)

if edl then
return edl
end
end

local jky = Vector3.new(-ce.Z, 0, ce.X)

for jecf, jnjd in ipairs({ 4, 8 }) do
for pqts, naw in ipairs({ 1, -1 }) do
for hwty, aael in ipairs({ 1, 0.5 }) do
local jvjc = yaa((jky * (naw * aael) + ce * (1 - aael)).Unit, jnjd)

if jvjc then
return jvjc
end
end
end
end

return nil
end

function jus.turn()
local qnmj = ga.Character
local zyie = qnmj and qnmj:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not zyie then
return
end

local fis = zyie.CFrame.LookVector
local dex = Vector3.new(fis.X, 0, fis.Z)

if dex.Magnitude < 0.01 then
dex = Vector3.new(0, 0, -1)
end

dex = dex.Unit

local mu = Vector3.new(-dex.Z, 0, dex.X)

zyie.CFrame = CFrame.lookAt(zyie.Position, zyie.Position + mu)
end

jus.misses = 0

jus.pending = false

jus.treasures = {}

pcall(function()
fw.DigUpdate.OnClientEvent:Connect(function(puqb, nzhg)
if puqb == _d("NgZWahIGAh4b") then
jus.pending = false
jus.resultAt = os.clock()
elseif puqb == _d("NgZWexYbFBcD") then
jus.pending = false
end

if puqb == _d("Jh1UWQQABRcc") and type(nzhg) == _d("Bg5TVBI") then
local ixro = {}
local qvw = {}

for lr, bwu in pairs(nzhg) do
local cnau
local qcde

if typeof(bwu) == _d("JApSTBgHRA") or typeof(bwu) == _d("MSlDWRoQ") then
cnau = lr
qcde = bwu
elseif type(bwu) == _d("Bg5TVBI") then
cnau = bwu.id or bwu.Id or bwu[1]
qcde = bwu.position or bwu.Position or bwu.pos or bwu[2]
end

if typeof(qcde) == _d("MSlDWRoQ") then
qcde = qcde.Position
end

if cnau ~= nil and typeof(qcde) == _d("JApSTBgHRA") then
table.insert(ixro, { id = cnau, position = qcde })
qvw[cnau] = true
end
end

jus.treasures = ixro
jus.reported = qvw

if jus.target and not jus.target.mark and not qvw[jus.target.id] then
jus.targetGone = true
end
end
end)
end)

function jus.withinDig(xms)
local kqsu = ga.Character
local fwbk = kqsu and kqsu:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not fwbk then
return false
end

return (fwbk.Position - xms).Magnitude <= 10
end

jus.markGone = {}

function jus.marked()
local xrro = workspace:FindFirstChild(_d("NgZWdRYHHAE"))
local inbc = {}

if not xrro then
return inbc
end

local rsnu = os.clock()

for yws, slt in ipairs(xrro:GetChildren()) do
if slt.Name == _d("KiJQShw") and slt:IsA(_d("MA5CXScUBQY")) then
local yegu = slt.Position
local woix = string.format(_d("Hw5DU01QWUIJCx1ZRRE"), yegu.X, yegu.Z)
local uha = jus.markGone[woix]

if not (uha and rsnu - uha < 90) then
table.insert(inbc, { id = woix, position = yegu, mark = true })
end
end
end

return inbc
end

function jus.chests()
local sdw = {}

for wnzu, dbic in ipairs(jus.treasures or {}) do
table.insert(sdw, dbic)
end

for bboe, lof in ipairs(jus.marked()) do
local risn = false

for uwof, yb in ipairs(sdw) do
if (yb.position - lof.position).Magnitude < 2 then
risn = true

break
end
end

if not risn then
table.insert(sdw, lof)
end
end

return sdw
end

function jus.release(wsy)
if wsy.mark then
jus.markGone[wsy.id] = os.clock()
else
jus.forget(wsy)
end
end

function jus.nearestChest(akc)
local naig = ga.Character
local tyu = naig and naig:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not tyu then
return nil
end

local oeol
local ddgm

for skm, upn in ipairs(jus.chests()) do
local oyil = (upn.position - tyu.Position).Magnitude

if oyil <= akc and (not ddgm or oyil < ddgm) then
oeol = upn
ddgm = oyil
end
end

return oeol
end

function jus.forget(mts)
for kx, brv in ipairs(jus.treasures or {}) do
if brv.id == mts.id then
table.remove(jus.treasures, kx)

return
end
end
end

function jus.walkTo(xkv)
local dbdx = ga.Character
local nkqo = dbdx and dbdx:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))
local wevq = dbdx and dbdx:FindFirstChildOfClass(_d("OhpcWRkaHhY"))

if not (nkqo and wevq) then
return false
end

local ss = os.clock() + 12

pcall(function()
wevq:MoveTo(xkv)
end)

while os.clock() < ss do
local zqo = ga.Character
local zeot = zqo and zqo:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not zeot or (zeot.Position - xkv).Magnitude <= 4 then
break
end

if jus.targetGone or not jus.autoOn
or getgenv().ACBXDigGeneration ~= zb or not ldjd() then
break
end

task.wait(0.15)
end

pcall(function()
wevq:MoveTo(nkqo.Position)
end)

return true
end

function jus.digAt(dmrw)
jus.misses = 0
jus.pending = true

local sh = os.clock()
local nic = pcall(function()
fw.DigAction:FireServer(_d("IRtQSgM"), dmrw)
end)

if not nic then
jus.pending = false
end

local prt = os.clock() + 6

while jus.pending and jus.autoOn and os.clock() < prt
and getgenv().ACBXDigGeneration == zb and ldjd() do
task.wait()
end

jus.pending = false

return (jus.resultAt or 0) >= sh
end

function jus.autoLoop()
local bei = false

while jus.autoOn and ldjd() and getgenv().ACBXDigGeneration == zb do
local jyad = tar and tar.worldBoss
local vgw = jyad ~= nil
and type(jyad.holdsDigging) == _d("FBpfWwMcGBw")
and jyad.holdsDigging() == true

if jus.shopping then

task.wait(0.5)
elseif vgw then

bei = true
task.wait(1)
else
if bei then

bei = false

if type(jyad.setRepeat) == _d("FBpfWwMcGBw") then
jyad.setRepeat(false)
end

jus.goToSand()
end

local kdf = jus.chestOn and jus.nearestChest(70) or nil
local kub = false

if kdf then
jus.target = kdf
jus.targetGone = false

jus.walkTo(kdf.position)

local umro = not jus.withinDig(kdf.position)
local kit = jus.targetGone

if kit or umro then
jus.strikes = kit and 0 or (jus.strikes + 1)

if kit or jus.strikes >= 2 then
jus.strikes = 0
jus.release(kdf)
jus.skipped = jus.skipped + 1
end
else

local kz = false
local aet = ga.Character

if aet then
for sjks, pio in ipairs(aet:GetChildren()) do
if pio:IsA(_d("JgBeVA")) and pio.Name:find(_d("LCtYXyQdGAQKXQ")) then
kz = true

break
end
end
end

if not kz then
jus.wear()
end

if jus.digAt(kdf.position) then
jus.strikes = 0
jus.release(kdf)
jus.dug = jus.dug + 1
kub = true
else

jus.strikes = jus.strikes + 1

if jus.strikes >= 3 then
jus.strikes = 0
jus.release(kdf)
jus.skipped = jus.skipped + 1
end
end
end

jus.target = nil
jus.targetGone = false
end

if not kub then
local utbv = jus.spot()

if utbv then
jus.digAt(utbv)
else

jus.misses = (jus.misses or 0) + 1

if jus.misses >= 4 then
jus.misses = 0
jus.goToSand(true)
else
jus.turn()
task.wait(0.25)
end
end
end
end
end
end

function jus.autoStart()
local ycy = jus.read()

if not (ycy and jus.bestShovel(ycy)) then
return _d("PAARSx8aARcDEVcAGxIWTxwYIhsbHQxaGBMcEBUGX19XEx4AHEUW")
end

local locw = false

if bjce.enabled then
bjce.autoFishWanted = false

xckt(false)
pcall(function()
zu:UpdateState(false)
end)

locw = true
end

qnio = true
jus.equipBest()

jus.goToSand()

task.spawn(jus.autoLoop)

return _d("NgZWXx4bEFw") .. (locw and _d("Ui5ETBhVMRscWRgYExFSQhFMHxBXAQdeThIZVxoOQhgDHRJSG15XG1UEHgBFFg") or _d(""))
end

function jus.toggleAuto(orn, eq)
if orn then
local aa = jus.autoOn == true

jus.chestOn = eq == true
jus.switching = true

pcall(function()
local ukty = eq and jus.autoToggle or jus.chestToggle

if ukty then
ukty:UpdateState(false)
end
end)

jus.switching = false

if aa then
return
end

jus.autoOn = true

task.spawn(function()
local wg = jus.autoStart()

ybe:Notify({
Title = eq and _d("MxpFV1cxHhVPclASBgMB") or _d("MxpFV1cxHhU"),
Description = wg,
Lifetime = 6,
})
end)
else

if jus.switching then
return
end

jus.autoOn = false
jus.pending = false
qnio = false
end
end

jus.autoToggle = hp:Toggle({
Name = _d("MxpFV1cxHhU"),
Default = false,
Callback = function(zv)
jus.toggleAuto(zv, false)
end,
}, _d("FgZWXx4bEC0OREwY"))

jus.chestToggle = hp:Toggle({
Name = _d("MxpFV1cxHhVPclASBgMB"),
Default = false,
Callback = function(hoxu)
jus.toggleAuto(hoxu, true)
end,
}, _d("FgZWXx4bEC0OREwYKhQaCkJM"))

jus.chestParagraph = hp:Paragraph({
Header = _d("MQdUSwMG"),
Body = _d("Jh1QWxwQE0hPARhaVTMHCAsYR1VaUjxaUQcFEhZVEQg"),
})

task.spawn(function()
local hg

while ldjd() and cbkv do
local ya = #jus.chests()
local tonm = _d("Jh1QWxwQE0hP") .. ya .. _d("UkIRfAISTVI") .. jus.dug .. _d("UkIRaxwcBwIKVQJX") .. jus.skipped

if jus.chestOn and ya > 0 then
local tl = jus.nearestChest(70)
local hzg = ga.Character
local dlsk = hzg and hzg:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if tl and dlsk then
tonm = tonm .. _d("eCFUWQUQBAZVEQ") .. math.floor((tl.position - dlsk.Position).Magnitude) .. _d("UhxFTRMG")
end
end

if tonm ~= hg then
hg = tonm

pcall(function()
jus.chestParagraph:UpdateBody(tonm)
end)
end

task.wait(0.5)
end
end)

function jus.npcRow()
for snbb, jegg in ipairs(yoo.npcs) do
if jegg.name == _d("NgZWXxIH") then
return jegg
end
end
end

function jus.shop(ij, xr)
local zjv, le, zm, rlw = pcall(function()
return fw.DigShop:InvokeServer(ij, xr)
end)

if not zjv then
return false, _d("JgdUGBMcEFIcWVcHVR4BT19XA1UWHBxGXQUcGRVB")
end

return le == true, zm, type(rlw) == _d("Bg5TVBI") and rlw or nil
end

function jus.pickShovel(apg)
local pat = apg.shovels or {}
local oxwf = tonumber(apg.digs) or 0
local rj

for wzvb, kbip in ipairs(jus.data.Shovels) do
if not kbip.crafted and kbip.id ~= _d("AQdeThIZKBAOQlEU") and pat[kbip.id] ~= true then
local iulk = tonumber(kbip.cost) or math.huge

if iulk <= oxwf and (not rj or iulk > (tonumber(rj.cost) or 0)) then
rj = kbip
end
end
end

return rj
end

function jus.pickDetector(knk)
local kfc = knk.detectors or {}
local llsj = tonumber(knk.digs) or 0
local nhir

for cx, wy in ipairs(jus.data.Detectors) do
if not wy.crafted and wy.id ~= _d("FgpFXRQBGAAwU1kEHBQ") and kfc[wy.id] ~= true then
local pm = tonumber(wy.cost) or math.huge

if pm <= llsj and (not nhir or pm > (tonumber(nhir.cost) or 0)) then
nhir = wy
end
end
end

return nhir
end

function jus.nextDef(bjnm, xwyp)
local nzo

for bz, gn in ipairs(bjnm) do
local shbs = tonumber(gn.cost)

if not gn.crafted and shbs and xwyp[gn.id] ~= true then
if not nzo or shbs < (tonumber(nzo.cost) or math.huge) then
nzo = gn
end
end
end

return nzo
end

function jus.toCounter()
local kty = jus.npcRow()
local srr = kty and yoo.point(kty)
local nk = ga.Character
local ldyd = nk and nk:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not (srr and ldyd) then
return false
end

if (ldyd.Position - srr).Magnitude <= 20 then
return true
end

yoo.go(kty)
task.wait(2.2)

nk = ga.Character
ldyd = nk and nk:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

return ldyd ~= nil and (ldyd.Position - srr).Magnitude <= 20
end

function jus.upgradeAll()
local qyqa = jus.buyOn == true
local dkl = jus.detBuyOn == true

if not (qyqa or dkl) then
return nil, _d("PQlXFg")
end

local qly = jus.read()

if not qly then
return nil, _d("JgdUGBMcEFIcWVcHVR4BT19XA1UWHBxGXQUcGRVB")
end

if qyqa then
local ehfi = jus.bestShovel(qly)

if ehfi and qly.equippedShovel ~= ehfi then
jus.equipBest()
end
end

if dkl then
local nyp = jus.bestDetector(qly)

if nyp and qly.equippedDetector ~= nyp then
jus.equipBestDetector()
end
end

local zpam = qyqa and jus.pickShovel(qly) or nil
local hzcr = dkl and jus.pickDetector(qly) or nil

if not (zpam or hzcr) then
return nil, _d("PAARTQcSBRMLVBgeBlcTCVdXBREWEANUGA4QA1w")
end

jus.shopping = true
jus.toCounter()

local rs = {}
local xbvt

local function zfu(hfn, rnx)
if not rnx then
return
end

local wfry, ggx = jus.shop(hfn, rnx.id)

if wfry then
table.insert(rs, rnx.name)
elseif not xbvt then
xbvt = tostring(ggx)
end
end

zfu(_d("MBpIax8aARcD"), zpam)
zfu(_d("MBpIfBIBEhEbXko"), hzcr)

if #rs == 0 then
jus.shopping = false

return nil, _d("MBpIGAUQEQccVFxNVQ") .. (xbvt or _d("HAARWRkGABcd"))
end

if qyqa then
jus.equipBest()
end

if dkl then
jus.equipBestDetector()
end

if jus.autoOn then
jus.leaveNpc()
end

jus.shopping = false

return table.concat(rs, _d("UkQR"))
end

function jus.buyLoop()
while jus.buyOn or jus.detBuyOn do
local akrt, dk, zmwz = pcall(jus.upgradeAll)

jus.shopping = false

if not akrt then
task.wait(10)
elseif dk then
ybe:Notify({
Title = _d("MxpFV1c3AgtPdVEQEh4cCBF/EhQF"),
Description = _d("MABEXx8BVxMBVRgSBAIbH0FdE1UDGgoR") .. dk .. _d("XA"),
Lifetime = 6,
})

task.wait(3)
else
task.wait(zmwz == _d("PQlXFg") and 0.5 or 10)
end
end
end

function jus.syncBuyLoop()
if not (jus.buyOn or jus.detBuyOn) or jus.buyRunning then
return
end

jus.buyRunning = true

task.spawn(function()
jus.buyLoop()

jus.buyRunning = false
end)
end

hp:Toggle({
Name = _d("MxpFV1c3AgtPc10EAVchB15OEhk"),
Default = false,
Callback = function(dxhc)
jus.buyOn = dxhc
jus.syncBuyLoop()
end,
}, _d("FgZWXx4bEC0NREE"))

hp:Toggle({
Name = _d("MxpFV1c3AgtPc10EAVc2CkVdFAEYAA"),
Default = false,
Callback = function(tdcn)
jus.detBuyOn = tdcn
jus.syncBuyLoop()
end,
}, _d("FgZWXx4bEC0NREEoERIGClJMGAc"))

function jus.statusText()
local ygl = jus.read()

if not ygl then
return _d("JgdUGBMcEFIcWVcHVR4BT19XA1UWHBxGXQUcGRVB")
end

local oz = tonumber(ygl.digs) or 0
local wpw = { _d("NgZWS01V") .. oz }

local function lzz(mma, eze)
if not eze then
return mma .. _d("SE9UThIHDgYHWFYQVRgFAVRcWQ")
end

local jizh = tonumber(eze.cost) or 0
local alqj = jizh - oz

return mma .. _d("SE8") .. tostring(eze.name) .. _d("UkIR") .. jizh
.. (alqj <= 0 and _d("UkdDXRYRDls") or (_d("Ukc") .. alqj .. _d("UhteGBAaXg")))
end

table.insert(wpw, lzz(_d("PApJTFcGHx0ZVFQ"), jus.nextDef(jus.data.Shovels, ygl.shovels or {})))
table.insert(wpw, lzz(_d("PApJTFcREgYKUkwYBw"), jus.nextDef(jus.data.Detectors, ygl.detectors or {})))

return table.concat(wpw, _d("eA"))
end

task.spawn(function()
while ldjd() and cbkv do
local lly, qi = pcall(jus.statusText)

if lly and jus.statusParagraph then
pcall(function()
jus.statusParagraph:UpdateBody(qi)
end)
end

task.wait(6)
end
end)

getgenv().ACBXDigging = jus

qllf.tab = as:Tab({
Name = _d("IQpFTB4bEAE"),

Image = _d(""),
})

qllf.icon = function()
local enps = gethui()

for ot, hyne in ipairs(enps:QueryDescendants(_d("OwJQXxI5FhAKXQ"))) do
if hyne.Name == _d("Jg5TcRoUEBc") then
local kgs = hyne.Parent
local hdbv = kgs and kgs:FindFirstChild(_d("Jg5TawAcAxEHVEo5FBoX"))

if hdbv and hdbv.Text == _d("IQpFTB4bEAE") then
if hyne:GetAttribute(_d("MyxzYDQaEDsMXlY")) then
return true
end

hyne:SetAttribute(_d("MyxzYDQaEDsMXlY"), true)
hyne.Image = _d("")
hyne.BackgroundTransparency = 1

local ref = Color3.fromRGB(168, 170, 176)

local function bmk(rk, hhjt, yvmz, hizz, azhc, knre)
local kqi = Instance.new(_d("NB1QVRI"))

kqi.Size = UDim2.fromOffset(yvmz, hizz)
kqi.Position = UDim2.fromOffset(rk, hhjt)
kqi.BackgroundColor3 = ref
kqi.BorderSizePixel = 0
kqi.Parent = hyne

if not knre then
kqi.BackgroundTransparency = 1

local ayar = Instance.new(_d("JyZiTAUaHBc"))

ayar.Color = ref
ayar.Thickness = 1.3
ayar.LineJoinMode = Enum.LineJoinMode.Round
ayar.Parent = kqi
end

if azhc then
local krz = Instance.new(_d("JyZyVwUbEgA"))

krz.CornerRadius = UDim.new(0, azhc)
krz.Parent = kqi
end

return kqi
end

local qjpy = {
{ 8, 0, 2, 3 },
{ 8, 15, 2, 3 },
{ 0, 8, 3, 2 },
{ 15, 8, 3, 2 },
{ 2, 2, 3, 3 },
{ 13, 2, 3, 3 },
{ 2, 13, 3, 3 },
{ 13, 13, 3, 3 },
}

for upfy, yjh in ipairs(qjpy) do
bmk(yjh[1], yjh[2], yjh[3], yjh[4], 0, true)
end

bmk(2, 2, 14, 14, 7, false)
bmk(7, 7, 4, 4, 2, true)

return true
end
end
end

return false
end

task.defer(function()
for oinb = 1, 20 do
if qllf.icon() then
break
end

task.wait(0.25)
end
end)

qllf.configSection = qllf.tab:Section({
Side = _d("PgpXTA"),
})

qllf.configSection:Header({
Name = _d("MQBfXh4SVz8OX1kQEBoXAUU"),
})

qllf.autoSaveToggle = qllf.configSection:Toggle({
Name = _d("MxpFV1cGFgQK"),
Default = false,
Callback = function(wvq)
qllf.autoSave = wvq
qllf.autoSaveAt = 0

if wvq then
local lwtc = qllf.selected or _d("FgpXWQIZAw")
local zli, jydg = qllf.save(lwtc)

qllf.selected = lwtc
qllf.lastText = zli and (_d("MxpFV1cGFgQKEVcZVVpSGENXAxBX") .. lwtc)
or (_d("MxpFV1cGFgQKEVcZWVcUBkNLA1UAAAZFXVcTFhsDVFxNVQ") .. tostring(jydg))
else
qllf.lastText = _d("MxpFV1cGFgQKEVcRE1k")
end
end,
}, _d("EQBfXh4SKBMaRVcoBhYECg"))

qllf.nameInput = qllf.configSection:Input({
Name = _d("IQ5HXVcbFh8K"),
Placeholder = _d("F0FWFlcnFhsLQg"),
AcceptedCharacters = _d("MwNd"),
Callback = function(shlu)
qllf.nameDraft = shlu
end,
})

qllf.nameInput.IgnoreConfig = true

qllf.configSection:Button({
Name = _d("MR1UWQMQVwEOR10"),
Callback = function()
local se = qllf.nameDraft or qllf.nameInput:GetInput()

se = type(se) == _d("ARtDURkS") and se:gsub(_d("LEpCEw"), _d("")):gsub(_d("VxwaHA"), _d("")) or _d("")

if se == _d("") then
ybe:Dialog({
Title = _d("MQBfXh4S"),
Description = _d("JhZBXVcUVxwOXF1XExgAT0VQElUEExlUGBEcBQEbERVXHANSDVRbGBgSAU9FUBJVERsDVB8EVRkTAlQW"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})

return
end

local odmm, qwt = qllf.save(se)

if not odmm then
qllf.lastText = _d("IQ5HXVcTFhsDVFxNVQ") .. tostring(qwt)

return
end

qllf.selected = se
qllf.lastText = _d("MR1UWQMQE1I") .. se .. _d("XA")
qllf.savesAt = 0

task.defer(function()
task.wait(0.25)

pcall(function()
qllf.fileDropdown:UpdateSelection(se)
end)
end)
end,
})

qllf.fileDropdown = qllf.configSection:Dropdown({
Name = _d("IQ5HXVcTHh4K"),
Search = false,
Multi = false,
Required = false,
Options = qllf.saves(),
Callback = function(bypw)
local hnce = type(bypw) == _d("Bg5TVBI") and bypw[1] or bypw

if type(hnce) == _d("ARtDURkS") and hnce ~= _d("") then
qllf.selected = hnce
qllf.selectionShown = hnce

pcall(function()
qllf.fileDropdown:UpdateName(_d("IQ5HXVcTHh4KCxg") .. hnce)
end)
end
end,
})

qllf.fileDropdown.IgnoreConfig = true

qllf.configSection:Button({
Name = _d("PgBQXFcGEh4KUkwSEQ"),
Callback = function()
local ibls = qllf.selected or qllf.fileDropdown.Value
local sgxo, mwli = qllf.load(ibls)

qllf.lastText = sgxo and (_d("PgBQXBIRVw") .. ibls .. _d("XA")) or (_d("PgBQXFcTFhsDVFxNVQ") .. tostring(mwli))
end,
})

qllf.configSection:Button({
Name = _d("IQ5HXVcBGFIcVFQSFgMXCw"),
Callback = function()
local min = qllf.selected or qllf.fileDropdown.Value
local ohph, kq = qllf.save(min)

qllf.lastText = ohph and (_d("JR1eTBJV") .. min .. _d("XA")) or (_d("IQ5HXVcTFhsDVFxNVQ") .. tostring(kq))
end,
})

qllf.configSection:Button({
Name = _d("NgpdXQMQVwEKXV0UARIWT0JZARA"),
Callback = function()
local cugy = qllf.selected or qllf.fileDropdown.Value

if type(cugy) ~= _d("ARtDURkS") or cugy == _d("") then
qllf.lastText = _d("IgZSU1cUVwEOR11XEx4eChFeHgcEBkE")

return
end

ybe:Dialog({
Title = _d("NgpdXQMQVw") .. cugy .. _d("TQ"),
Description = _d("JgdUGBEcGxdPWEtXBxIfAEddE1URAABcGBMcBBlPUFYTVRQTAV9XA1UVF09DXRQaARcdVFxZ"),
Buttons = {
{
Name = _d("NgpdXQMQ"),
Callback = function()
local rm, wvj = qllf.delete(cugy)

qllf.lastText = rm
and (_d("NgpdXQMQE1I") .. cugy .. _d("XA"))
or (_d("MQBEVBNVGR0bEVwSGRIGCgsY") .. tostring(wvj))
end,
},
{
Name = _d("MQ5fWxIZ"),
},
},
})
end,
})

qllf.configSection:Button({
Name = _d("IApXShIGH1IDWEsD"),
Callback = function()
qllf.savesAt = 0
qllf.lastText = _d("IQ5HXVcZHgEbEUoSEwUXHFldE1s")
end,
})

qllf.configSection:Button({
Name = _d("Pw5DU1cUBFIOREwYVRsdDlU"),
Callback = function()
local yhtk = qllf.selected or qllf.fileDropdown.Value

if type(yhtk) ~= _d("ARtDURkS") or yhtk == _d("") then
qllf.lastText = _d("IgZSU1cUVwEOR11XEx4eChFeHgcEBkE")

return
end

if qllf.setAutoLoad(yhtk) then
qllf.lastText = yhtk .. _d("UgNeWRMGVx0BEUsDFAUGQQ")
else
qllf.lastText = _d("MQBEVBNVGR0bEU8FHAMXT0VQElUWBxteGBsaFhZPXFkFHhIAQQ")
end
end,
})

qllf.configSection:Button({
Name = _d("MQNUWQVVFgcbXhgbGhYW"),
Callback = function()
qllf.setAutoLoad(_d(""))
qllf.lastText = _d("PABFUB4bEFIDXlkTBlcdARFLAxQFBkE")
end,
})

qllf.statusParagraph = qllf.configSection:Paragraph({
Header = _d("IRtQTAIG"),
Body = _d(""),
})

qllf.miscSection = qllf.tab:Section({
Side = _d("IAZWUAM"),
})

qllf.miscSection:Header({
Name = _d("PwZCWw"),
})

qllf.miscSection:Toggle({
Name = _d("MxpFV1cWGx0cVBgQEBkXHVBMHhoZUjp4"),
Default = false,
Callback = function(nb)
jh(nb)
end,
}, _d("HwZCWygUAgYAblsbGgQXMFZdGRAFExtYVxk"))

qllf.miscSection:Toggle({
Name = _d("MxpFV1cnGB4D"),
Default = true,
Callback = function(pgid)
qllf.autoRoll = pgid

if pgid and qllf.setRollButton then
qllf.setRollButton(_d("MxpFVyUaGx4tREwDGhk"), true)
end
end,
}, _d("HwZCWygUAgYAbkoYGRs"))

qllf.miscSection:Toggle({
Name = _d("MxpFV1ckAhsMWhglGhse"),
Default = true,
Callback = function(ouex)
qllf.autoQuickRoll = ouex

if ouex and qllf.setRollButton then
qllf.setRollButton(_d("IxpYWxwnGB4Dc00DARgc"), true)
end
end,
}, _d("HwZCWygUAgYAbkkCHBQZMENXGxk"))

qllf.uiSection = qllf.tab:Section({
Side = _d("IAZWUAM"),
})

qllf.uiSection:Header({
Name = _d("JyY"),
})

qllf.uiSection:Toggle({
Name = _d("MA5SUxAHGAcBVRgVGQIA"),
Default = true,
Callback = function(iz)
pcall(function()
ybe:SetAcrylicBlurState(iz)
end)
end,
}, _d("BwZuWhYWHBUdXk0ZESgQA0RK"))

function qllf.widthFactor(vrq)
return 1 + math.max(0, (vrq or 1) - 1) * 0.8
end

function qllf.scaleCap()
local pqi = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local ztlg = math.min(120, math.floor(((pqi.Y - 40 - 8 - 8) / 500) * 100))

while ztlg > 50 and (qllf.baseWidth or 720) * (ztlg / 100) * qllf.widthFactor(ztlg / 100) > pqi.X - 16 do
ztlg = ztlg - 1
end

return math.max(50, ztlg)
end

function qllf.scaleCeiling()
return math.min(1.2, qllf.scaleCap() / 100)
end

function qllf.refreshScaleCap()
local ygsc = qllf.scaleSlider

if not ygsc then
return
end

local dhri = qllf.scaleCeiling()

pcall(function()
ygsc.Settings.Maximum = dhri
end)

local eaf = tonumber(ygsc:GetValue()) or 1

if eaf > dhri then
qllf.scaleTarget = dhri

pcall(function()
ygsc:UpdateValue(dhri)
end)
end
end

qllf.scaleSlider = qllf.uiSection:Slider({
Name = _d("JyYRSxQUGxc"),
Default = 1,
Minimum = 0.5,

Maximum = qllf.scaleCeiling(),
DisplayMethod = _d("JA5dTRI"),
Precision = 2,

Callback = function(imvk)
qllf.scalePending = tonumber(imvk)
qllf.scalePendingAt = os.clock()
end,
onInputComplete = function(uobb)
local llni = qllf.scaleCeiling()

qllf.scaleTarget = math.clamp(tonumber(uobb) or qllf.scalePending or 1, 0.5, llni)
qllf.scalePending = nil

qllf.scaleAnchor = nil

qllf.saveUi()
end,
}, _d("BwZuSxQUGxc"))

qllf.refreshScaleCap()

qllf.themeDropdown = qllf.uiSection:Dropdown({
Name = _d("JgdUVRJPVyQAWFw"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = qllf.themeOrder,
Callback = function(ghkl)
local fv = type(ghkl) == _d("Bg5TVBI") and ghkl[1] or ghkl

if type(fv) == _d("ARtDURkS") and qllf.presets[fv] then
qllf.theme = fv
qllf.accent = nil
qllf.applyTheme()

pcall(function()
qllf.themeDropdown:UpdateName(_d("JgdUVRJPVw") .. fv)
end)

qllf.saveUi()
end
end,
}, _d("BwZuTB8QGhc"))

qllf.accentPicker = qllf.uiSection:Colorpicker({
Name = _d("MwxSXRkBVxEAXVcCBw"),
Default = Color3.fromRGB(168, 170, 176),
Alpha = 0,
Callback = function(fei)
qllf.accent = fei
qllf.applyTheme()
qllf.saveUi()
end,
}, _d("BwZuWRQWEhwb"))

qllf.codesSection = qllf.tab:Section({
Side = _d("IAZWUAM"),
})

qllf.codesSection:Header({
Name = _d("MQBVXQQ"),
})

qllf.codeText = _d("IApVXRIYBFIKR10FDFcRAFVdVwEfGxwRXxYYElIcWVEHBlcFBkVQW1UYHAoRXQEQBQtPUlcCBRsXT15eVwYSEQBfXARb")

function qllf.setCodeText(jqp)
qllf.codeText = jqp

pcall(function()
qllf.codeParagraph:UpdateBody(jqp)
end)
end

function qllf.redeemCodes()
if qllf.redeeming then
return
end

local xkxg = fw.RedeemCode
local yx = mkd:FindFirstChild(_d("PwBVTRsQJBEdWEgDBg"))
local lso = yx and yx:FindFirstChild(_d("MQBVXTMUAxM"))
local hsyc, bpn = false, nil

if xkxg and lso then
hsyc, bpn = pcall(function()
return require(lso)
end)
end

local eefr = hsyc and type(bpn) == _d("Bg5TVBI") and bpn.Codes or nil

if not xkxg or type(eefr) ~= _d("Bg5TVBI") then
qllf.setCodeText(_d("JgdYS1cDEgAcWFcZVRgUT0VQElUQEwJUGB8UBFIBXhgUGhMXT11RBAFXHR0RVhhVBRcLVF0aVQUXAl5MEls"))
return
end

local ynz = {}

for cisu in pairs(eefr) do
ynz[#ynz + 1] = cisu
end

table.sort(ynz)

local mjp = #ynz

qllf.redeeming = true
qllf.setCodeText(_d("IApVXRIYHhwIEQ") .. mjp .. _d("UgxeXBIGWVxB"))

task.spawn(function()
local cw, ws, uyxz = 0, 0, 0
local matz = {}

for pz = 1, mjp do
if not ldjd() then
break
end

local oegx = ynz[pz]
local cdt, dwf = pcall(function()
return xkxg:InvokeServer(oegx)
end)

local ocr = cdt and type(dwf) == _d("Bg5TVBI") and dwf.success == true
local ku = cdt and type(dwf) == _d("Bg5TVBI") and tostring(dwf.message or _d("")) or tostring(dwf or _d(""))

if not ocr and string.find(string.lower(ku), _d("BQ5YTA"), 1, true) then
task.wait(3.5)

cdt, dwf = pcall(function()
return xkxg:InvokeServer(oegx)
end)

ocr = cdt and type(dwf) == _d("Bg5TVBI") and dwf.success == true
ku = cdt and type(dwf) == _d("Bg5TVBI") and tostring(dwf.message or _d("")) or tostring(dwf or _d(""))
end

if ocr then
cw = cw + 1
elseif string.find(string.lower(ku), _d("EwNDXRYRDg"), 1, true) then
ws = ws + 1
else
uyxz = uyxz + 1

if #matz < 6 then
matz[#matz + 1] = oegx .. _d("SE8") .. (ku ~= _d("") and ku or _d("HAARWRkGABcd"))
end
end

qllf.setCodeText(string.format(_d("VwsRVxFVUhZPHBhSEVcAClVdEhgSFkMRHRNVFh4dVFkTDFtSSlUYBRARBxxUXFk"), pz, mjp, cw, ws, uyxz))

if pz < mjp and ldjd() then
task.wait(1.8)
end
end

local fdpg = {
string.format(_d("IApVXRIYEhZPFFxbVRYeHVRZEwxXGg5VGFIRW1IdVF4CBhIWTxRcVxoRUkpVFg"), cw, ws, uyxz, mjp),
}

for dzl, vc in ipairs(matz) do
fdpg[#fdpg + 1] = vc
end

qllf.redeeming = false
qllf.setCodeText(table.concat(fdpg, _d("eA")))
end)
end

qllf.codesSection:Button({
Name = _d("IApVXRIYVxMDXRgUGhMXHA"),
Callback = function()
qllf.redeemCodes()
end,
})

qllf.codeParagraph = qllf.codesSection:Paragraph({
Header = _d("MQBVXQQ"),
Body = qllf.codeText,
})

qllf.scriptSection = qllf.tab:Section({
Side = _d("IAZWUAM"),
})

qllf.scriptSection:Header({
Name = _d("IQxDUQcB"),
})

qllf.scriptSection:Button({
Name = _d("JwFdVxYRVwEMQ1EHAQ"),
Callback = function()
pcall(function()
ybe:Unload()
end)

getgenv().ACBXWindow = nil
getgenv().ACBXAllowReload = nil
end,
})

task.spawn(function()
while ldjd() do

if os.clock() >= qllf.savesAt then
qllf.savesAt = os.clock() + 3

local aeaf = qllf.saves()
local lhe = table.concat(aeaf, _d("Dg"))

if lhe ~= qllf.knownSaves then
qllf.knownSaves = lhe

pcall(function()
qllf.fileDropdown:ClearOptions()
qllf.fileDropdown:InsertOptions(aeaf)
end)
end

if qllf.selected and qllf.selectionShown ~= qllf.selected then
qllf.selectionShown = qllf.selected

pcall(function()
qllf.fileDropdown:UpdateSelection(qllf.selected)
end)
end
end

if qllf.autoSave and os.clock() >= qllf.autoSaveAt then
qllf.autoSaveAt = os.clock() + 60

local eiwy = qllf.selected or _d("FgpXWQIZAw")
local ydu, ayv = qllf.save(eiwy)

qllf.selected = eiwy
qllf.lastText = ydu and (_d("MxpFV1cGFgQKVRg") .. eiwy .. _d("Ug5FGA") .. os.date(_d("VycLHTo")) .. _d("XA"))
or (_d("MxpFV1cGFgQKEV4WHBsXCwsY") .. tostring(ayv))
end

if os.clock() >= qllf.themeAt then
qllf.themeAt = os.clock() + 3
qllf.applyTheme()
end

if os.clock() >= qllf.capAt then
qllf.capAt = os.clock() + 2
qllf.refreshScaleCap()
end

if os.clock() >= qllf.statusAt then
qllf.statusAt = os.clock() + 2

local nkp = qllf.autoLoadName()
local dzsn = table.concat({
_d("MxpFV1cZGBMLCxg") .. (nkp or _d("HABfXQ")),
_d("IQ5HXQRPVw") .. tostring(#qllf.saves()),
qllf.lastText,
}, _d("eA"))

if dzsn ~= qllf.shownStatus then
qllf.shownStatus = dzsn

pcall(function()
qllf.statusParagraph:UpdateBody(dzsn)
end)
end
end

task.wait(0.25)
end
end)

task.spawn(function()
while ldjd() do

local km = qllf.scalePending

if km and os.clock() - (qllf.scalePendingAt or 0) > 0.35 then
local oj = qllf.scaleCeiling()
local qau = math.clamp(km, 0.5, oj)

qllf.scalePending = nil

if math.abs(qau - qllf.scaleTarget) > 0.002 then
qllf.scaleTarget = qau
qllf.scaleAnchor = nil

qllf.saveUi()
end
end

if math.abs(qllf.scaleTarget - qllf.scale) > 0.002 then
local tcsg = qllf.guiRoot()

if tcsg and not qllf.baseWidth then
qllf.baseWidth = tcsg.Size.X.Offset
qllf.baseHeight = tcsg.Size.Y.Offset
end

local bxkk = qllf.baseWidth or 720
local afam = qllf.baseHeight or 500
local qccn = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local qbum, yyp = 8, 40

if not qllf.scaleAnchor and tcsg then

local lmmu = qllf.widthFactor(qllf.scaleTarget)
local pdwe, jejv = bxkk * lmmu * qllf.scaleTarget, afam * qllf.scaleTarget
local juls = tcsg.AbsolutePosition

qllf.scaleAnchor = Vector2.new(
math.clamp(juls.X, qbum, math.max(qbum, qccn.X - pdwe - qbum)),
math.clamp(juls.Y, yyp, math.max(yyp, qccn.Y - jejv - qbum))
)
end

local bu = qllf.scaleAnchor

qllf.scale = qllf.scale + (qllf.scaleTarget - qllf.scale) * 0.18

local rdg = qllf.widthFactor(qllf.scale)

pcall(function()
ybe:SetScale(qllf.scale)

if tcsg then
local kj = math.floor(bxkk * rdg)

tcsg.Size = UDim2.fromOffset(kj, math.floor(afam))

local gql = tcsg:FindFirstChild(_d("MQBfTBIbAw"))

if gql then
local fvlg = tcsg:FindFirstChild(_d("IQZVXRUUBQ"))
local orqj = math.floor(fvlg and fvlg.Size.X.Scale * kj or kj * 0.325)

gql.Size = UDim2.new(0, math.max(0, kj - orqj), 1, 0)
end
end
end)

if tcsg and bu then
local jg, gd = bxkk * rdg * qllf.scale, afam * qllf.scale
local makh = math.clamp(bu.X, qbum, math.max(qbum, qccn.X - jg - qbum))
local ejh = math.clamp(bu.Y, yyp, math.max(yyp, qccn.Y - gd - qbum))

local zssa = tcsg.Parent and tcsg.Parent.AbsolutePosition or Vector2.zero

pcall(function()
tcsg.Position = UDim2.fromOffset(math.floor(makh - zssa.X), math.floor(ejh - zssa.Y))
end)
end
else

qllf.scaleAnchor = nil
end

task.wait()
end
end)

tar.misc.tierLabels = {}
tar.misc.labelToTier = {}

tar.misc.expSection = tar.misc.tab:Section({
Side = _d("PgpXTA"),
})

tar.misc.expSection:Header({
Name = _d("NxdBXRMcAxsAX0tXhejl7d6A+A"),
})

tar.misc.claimToggle = tar.misc.expSection:Toggle({
Name = _d("MxpFV1cWGxMGXA"),
Default = false,
Callback = function(bcrf)
local sj = tar.misc.expeditions

sj.enabled = bcrf
sj.claimAt = 0

if bcrf then
sj.askedAt = 0
sj.request()
end
end,
}, _d("ExpFVygWGxMGXA"))

tar.misc.rewardToggle = tar.misc.expSection:Toggle({
Name = _d("MxpFV1cWGx0cVBgFEAATHVVL"),
Default = false,
Callback = function(vjs)
local zoe = tar.misc.expeditions

zoe.autoClose = vjs

if vjs then
zoe.closeRewards()
end
end,
}, _d("FxdBZxYAAx0wUlQYBhI"))

tar.misc.startToggle = tar.misc.expSection:Toggle({
Name = _d("MxpFV1cGAxMdRQ"),
Default = false,
Callback = function(pexw)
local eh = tar.misc.expeditions

if pexw and not next(eh.tiersWanted) then
eh.autoStart = false

pcall(function()
tar.misc.startToggle:UpdateState(false)
end)

ybe:Dialog({
Title = _d("MxpFV1cGAxMdRRgZEBIWHBFZVwEeFx0"),
Description = _d("IgZSU1cUA1IDVFkEAVcdAVQYAxwSAE9YVlcBHxdPZVESB1cWHV5IExoAHE9XUQUGA1xPdFkEDFcGDlpdBFUDGgoRWx8QFgIKQkxXFhYAC0IUVzseFQdFVRYHElIbWV1XBxYACkJMW1UWHAsRWRkMVxwaXFoSB1cdCRFMHxAaUgxQVlcHAhxPUExXGhkRCh8"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})

return
end

eh.autoStart = pexw
eh.startedAt = {}

if pexw then
eh.askedAt = 0
eh.request()
end
end,
}, _d("ExpFVygGAxMdRQ"))

for rfq, kskg in ipairs(tar.misc.expeditions.tiers()) do
table.insert(tar.misc.tierLabels, tostring(kskg.name))
tar.misc.labelToTier[tostring(kskg.name)] = kskg.id
end

tar.misc.building = true

tar.misc.tierDropdown = tar.misc.expSection:Dropdown({
Name = _d("JgZUSg"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = tar.misc.tierLabels,
Callback = function(uub)
local szgz = tar.misc.expeditions

if tar.misc.building then
return
end

local ubef = {}
local fef = {}

if type(uub) == _d("Bg5TVBI") then
for jprj, mhuo in pairs(uub) do
local vxw = tar.misc.labelToTier[tostring(jprj)]

if mhuo and vxw then
ubef[vxw] = true
table.insert(fef, tostring(jprj))
end
end
end

table.sort(fef)
szgz.tiersWanted = ubef

pcall(function()
tar.misc.tierDropdown:UpdateName(#fef > 0 and (_d("JgZUSleX99BP") .. table.concat(fef, _d("Xk8"))) or _d("JgZUSleX99BPX1cZEA"))
end)
end,
}, _d("BgZUSg"))

task.defer(function()
tar.misc.building = false
end)

tar.misc.expSection:Button({
Name = _d("MQNQURpVGR0Y"),
Callback = function()
local kd = tar.misc.expeditions

if not kd.claim() then
ybe:Notify({
Title = _d("NxdBXRMcAxsAX0s"),
Description = _d("PABFUB4bEFIHUEtXFhgfChFaFhYcUhZUTFk"),
Lifetime = 5,
})
end
end,
})

tar.misc.expSection:Button({
Name = _d("IQpfXFcGEh4KUkwSEQ"),
Callback = function()
local paz = tar.misc.expeditions

if not next(paz.tiersWanted) then
ybe:Notify({
Title = _d("NxdBXRMcAxsAX0s"),
Description = _d("IgZSU1cUA1IDVFkEAVcdAVQYAxwSAE9YVlcBHxdPVUoYBRMdGF8YERwFARsf"),
Lifetime = 5,
})

return
end

local nns = {}
local ucl = 0

for dvmw, crn in ipairs(paz.tiers()) do
if paz.tiersWanted[crn.id] and paz.status(crn.id) == _d("ExlQURsUFR4K") then
if paz.start(crn.id, nns) then
ucl = ucl + 1
end
end
end

if ucl == 0 then
ybe:Notify({
Title = _d("NxdBXRMcAxsAX0s"),
Description = _d("PABFUB4bEFIMXk0bEVcQChFLEhsDSE9FUBJVBBcDVFsDEBNSG1hdBQZXEx1UGBYZBRcOVUFXGgIGQxFXBVUDGgpDXVcUBRdPX1cDVREdGkMYEhkeFQZTVBJVFBMdVUtXExgAT0VQEhhZ"),
Lifetime = 6,
})
end
end,
})

tar.misc.expInfo = tar.misc.tab:Section({
Side = _d("IAZWUAM"),
})

tar.misc.expInfo:Header({
Name = _d("NxdBXRMcAxsAX0s"),
})

tar.misc.expParagraph = tar.misc.expInfo:Paragraph({
Header = _d("IRtQTAIG"),
Body = tar.misc.expeditions.text(),
})

tar.misc.expeditions.loadRewards()

tar.misc.expRewardParagraph = tar.misc.expInfo:Paragraph({
Header = _d("MQNQURoQEw"),
Body = tar.misc.expeditions.rewardsText(),
})

task.spawn(function()
local sph = tar.misc.expeditions
local vrc = ph(_d("IRZfWzINBxcLWEweGhkB"), 3)

if vrc then
vrc.OnClientEvent:Connect(function(un)
if type(un) ~= _d("Bg5TVBI") then
return
end

sph.state = un

sph.offset = (tonumber(un.now) or os.time()) - os.time()
sph.syncedAt = os.clock()

if type(un.rewards) == _d("Bg5TVBI") and #un.rewards > 0 then
table.insert(sph.rewardLog, 1, {
at = os.time(),
title = tostring(un.rewardTitle or _d("NxdBXRMcAxsAXw")),
items = un.rewards,
})

while #sph.rewardLog > 8 do
table.remove(sph.rewardLog)
end

sph.saveRewards()

if sph.autoClose then

task.delay(0.35, sph.closeRewards)
end
end
end)
end

while ldjd() do

if os.clock() - sph.askedAt > 1 and os.clock() - sph.syncedAt > 20 then
sph.request()
end

if sph.enabled then
sph.claim()
end

if sph.autoClose then
sph.closeRewards()
end

if sph.autoStart and next(sph.tiersWanted) then
local lq = {}

for wpnw, jyot in ipairs(sph.tiers()) do
if sph.tiersWanted[jyot.id] and sph.status(jyot.id) == _d("ExlQURsUFR4K") then
if sph.start(jyot.id, lq) then
break
end
end
end
end

local an = sph.text()

if tar.misc.expParagraph and an ~= tar.misc.expShown then
tar.misc.expShown = an

pcall(function()
tar.misc.expParagraph:UpdateBody(an)
end)
end

local jzpd = sph.rewardsText()

if tar.misc.expRewardParagraph and jzpd ~= sph.rewardsShown then
sph.rewardsShown = jzpd

pcall(function()
tar.misc.expRewardParagraph:UpdateBody(jzpd)
end)
end

task.wait(0.75)
end
end)

tar.misc.util = {
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

function tar.misc.util.hook()
local anr = tar.misc.util

if anr.hooked then
return
end

anr.hooked = true

if fw.SyncCollection then
fw.SyncCollection.OnClientEvent:Connect(function(twz)
if type(twz) == _d("Bg5TVBI") then
anr.profile = twz
anr.profileAt = os.clock()
end
end)
end

if fw.SyncAchievements then
fw.SyncAchievements.OnClientEvent:Connect(function(wex)
if type(wex) == _d("Bg5TVBI") then
anr.ach = wex
end
end)
end

if fw.SyncQuests then
fw.SyncQuests.OnClientEvent:Connect(function(cer)
if type(cer) == _d("Bg5TVBI") and type(cer.list) == _d("Bg5TVBI") then
anr.quests = cer
end
end)
end

if fw.SyncPeriodicQuests then
fw.SyncPeriodicQuests.OnClientEvent:Connect(function(znis, sqvt)
if znis == _d("BQpUUxsM") and type(sqvt) == _d("Bg5TVBI") and type(sqvt.list) == _d("Bg5TVBI") then
anr.weekly = sqvt
end
end)
end
end

function tar.misc.util.askProfile()
local lvl = tar.misc.util

if os.clock() - lvl.askedAt < 1.5 then
return
end

lvl.askedAt = os.clock()

if fw.RequestSync then
pcall(function()
fw.RequestSync:FireServer()
end)
end
end

function tar.misc.util.currentProfile()
local gjb = tar.misc.util

if type(gjb.profile) ~= _d("Bg5TVBI") then
gjb.askProfile()

return nil
end

if os.clock() - gjb.profileAt > 20 then
gjb.askProfile()
end

return gjb.profile
end

function tar.misc.util.forgetProfile()
local lbs = tar.misc.util

lbs.profile = nil
lbs.profileAt = 0
lbs.askedAt = 0
end

function tar.misc.util.indexedTotal(gh)
local ieyh = 0

for wos, cgb in pairs((gh and gh.cardIndex) or {}) do
if cgb then
ieyh = ieyh + 1
end
end

return ieyh
end

function tar.misc.util.indexPending(luj)
local vfvk = {}

if type(luj) ~= _d("Bg5TVBI") then
return vfvk
end

local lmk = tar.misc.util.indexedTotal(luj)
local rzi = luj.indexMilestones or {}

for fvzr = 1, 30 do
if not rzi[fvzr] and fvzr * 5 <= lmk then
table.insert(vfvk, fvzr)
end
end

return vfvk
end

function tar.misc.util.indexFrame()
local uoi = rprq:FindFirstChild(_d("MQ5DXD4bExcXdk0e"))

return uoi and uoi:FindFirstChild(_d("OwFVXQ8zBRMCVA"))
end

function tar.misc.util.clickButton(olf)
if not olf then
return false
end

if firesignal then
local palk = pcall(firesignal, olf.MouseButton1Click)

if palk then
return true
end
end

return pcall(function()
olf:Activate()
end)
end

function tar.misc.util.closeIndex()
local ldql = tar.misc.util.indexFrame()

if not ldql or not ldql.Visible then
return false
end

pcall(function()
local dfd = mkd:FindFirstChild(_d("PwBVTRsQJBEdWEgDBg"))
local qgn = dfd and dfd:FindFirstChild(_d("PwpfTToUGRMIVEo"))

if qgn then
require(qgn).close(ldql)
end
end)

tar.misc.util.clickButton(ldql:FindFirstChild(_d("MQNeSxI3AgYbXlY")))

pcall(function()
ldql.Visible = false
end)

return true
end

function tar.misc.util.claimIndex()
local wkr = tar.misc.util

if os.clock() < wkr.indexAt then
return false
end

local kouz = wkr.currentProfile()

if not kouz then
return false
end

local ley = wkr.indexPending(kouz)
local qgdx = ley[1]

if not qgdx then
return false
end

local pxlh = wkr.indexedTotal(kouz)
local aae = wkr.indexAsked

if type(aae) == _d("Bg5TVBI") and aae.milestone == qgdx and aae.total == pxlh then
return false
end

wkr.indexAsked = { milestone = qgdx, total = pxlh }

pcall(function()
fw.ClaimIndexReward:FireServer(qgdx)
end)

wkr.indexAt = os.clock() + 1.5

wkr.profile = nil
wkr.profileAt = 0

task.delay(0.4, wkr.closeIndex)

return true
end

function tar.misc.util.achPending()
local fbpe = {}
local vzfw = tar.misc.util.ach

if type(vzfw) ~= _d("Bg5TVBI") then
return fbpe
end

for ag, cou in ipairs(vzfw.chains or {}) do
for hmmt, ipih in ipairs(cou.levels or {}) do
if ipih.reached and not ipih.claimed then
table.insert(fbpe, { chain = tostring(cou.id), index = ipih.index, name = tostring(ipih.name or ipih.index) })
end
end
end

return fbpe
end

function tar.misc.util.claimAchievement()
local gif = tar.misc.util

if os.clock() < gif.achAt then
return false
end

if type(gif.ach) ~= _d("Bg5TVBI") then
if os.clock() - gif.achAskedAt > 4 and fw.RequestAchievements then
gif.achAskedAt = os.clock()

pcall(function()
fw.RequestAchievements:FireServer()
end)
end

return false
end

for ymsz, ql in ipairs(gif.achPending()) do
pcall(function()
fw.ClaimAchievement:FireServer(ql.chain, ql.index)
end)

gif.achAt = os.clock() + 1

task.delay(1, function()
if fw.RequestAchievements then
pcall(function()
fw.RequestAchievements:FireServer()
end)
end
end)

return true
end

return false
end

function tar.misc.util.questRows()
local hjy = tar.misc.util
local lmg = {}

for ko, yz in ipairs({ { list = _d("Fg5YVA4"), payload = hjy.quests }, { list = _d("BQpUUxsM"), payload = hjy.weekly } }) do
for skj, lf in ipairs((type(yz.payload) == _d("Bg5TVBI") and yz.payload.list) or {}) do
if type(lf) == _d("Bg5TVBI") then
table.insert(lmg, { list = yz.list, index = skj, quest = lf })
end
end
end

return lmg
end

function tar.misc.util.questPending()
local win = {}

for elr, kvqm in ipairs(tar.misc.util.questRows()) do
local lc = kvqm.quest

if not lc.claimed and (tonumber(lc.progress) or 0) >= (tonumber(lc.target) or math.huge) then
table.insert(win, kvqm)
end
end

return win
end

function tar.misc.util.askQuests()
local jrz = tar.misc.util

if os.clock() - jrz.questAskedAt > 4 and fw.RequestQuests then
jrz.questAskedAt = os.clock()

pcall(function()
fw.RequestQuests:FireServer()
end)
end

if os.clock() - jrz.weeklyAskedAt > 4 and fw.RequestPeriodicQuests then
jrz.weeklyAskedAt = os.clock()

pcall(function()
fw.RequestPeriodicQuests:FireServer(_d("BQpUUxsM"))
end)
end
end

function tar.misc.util.claimQuest()
local odab = tar.misc.util

if os.clock() < odab.questAt then
return false
end

if type(odab.quests) ~= _d("Bg5TVBI") and type(odab.weekly) ~= _d("Bg5TVBI") then
odab.askQuests()

return false
end

for clqx, uch in ipairs(odab.questPending()) do
if uch.list == _d("BQpUUxsM") then
if fw.ClaimPeriodicQuest then
pcall(function()
fw.ClaimPeriodicQuest:FireServer(_d("BQpUUxsM"), uch.index)
end)
end
else
pcall(function()
fw.ClaimQuest:FireServer(uch.index)
end)
end

odab.questAt = os.clock() + 1.2

task.delay(1, function()
odab.askQuests()
end)

return true
end

return false
end

function tar.misc.util.packCatalog()
local wku = tar.misc.util

if wku.packs then
return wku.packs
end

local rink = {}
local fq, wwmv = pcall(function()
return require(mkd.ModuleScripts.PackData)
end)

if fq and type(wwmv) == _d("Bg5TVBI") and type(wwmv.Packs) == _d("Bg5TVBI") then
for atw, ubbd in ipairs(wwmv.Packs) do
if ubbd.id then
table.insert(rink, { id = tostring(ubbd.id), name = tostring(ubbd.name or ubbd.id) })
end
end
end

wku.packs = rink

return rink
end

function tar.misc.util.packUnlocked(ummq, zpe)
if type(ummq) ~= _d("Bg5TVBI") then
return true
end

local jxeb, zrpx = pcall(function()
return require(mkd.ModuleScripts.PackData)
end)
local qfet, cvcg = pcall(function()
return require(mkd.ModuleScripts.PackSlotData)
end)

if not (jxeb and qfet) then
return true
end

local qvz = zrpx.ById and zrpx.ById[zpe]

if not qvz then
return false
end

local vtu, hai = pcall(cvcg.isPackUnlocked, qvz, ummq)

return (not vtu) or hai == true
end

function tar.misc.util.visit(uiv)
local lltv = workspace:FindFirstChild(_d("PD9ySw"))
local svcc = lltv and lltv:FindFirstChild(uiv)
local bwal = ga.Character
local dcs = bwal and bwal:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))
local ljw = svcc and (svcc:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw")) or svcc:FindFirstChildWhichIsA(_d("MA5CXScUBQY"), true))

if not (ljw and dcs) then
return nil
end

local aek = dcs.CFrame

dcs.CFrame = CFrame.new((ljw.CFrame * CFrame.new(0, 0, -5)).Position)

return aek
end

function tar.misc.util.returnTo(gwsz)
local mbce = ga.Character
local ttlb = mbce and mbce:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if ttlb and gwsz then
ttlb.CFrame = gwsz
end
end

function tar.misc.util.applyPacks(jzax, ocgw)
local ads = tar.misc.util

if os.clock() < ads.packAt then
return false, _d("JQ5YTFcUVx8AXF0ZAVk")
end

local gmtm = ads.currentProfile()

if not gmtm then
return false, _d("IApQXB4bEFIWXk0FVQcAAFdRGxBXX09FSg5VFhUOWFZXHBlSDhFLEhYYHAsf")
end

if ocgw and (tonumber(gmtm.packSlots) or 1) < 2 then
return false, _d("IQNeTFdHVxwKVFwEVQMaChFdDwEFE09BWRQeVwEDXkxXEhYfCkFZBAZZ")
end

if not (fw.OpenPackShop and fw.EquipPack) then
return false, _d("JgdUGAcUFBlPQlAYBVcbHBFWGAFXGwERTB8cBFIIUFUSVQEXHUJRGBtZ")
end

ads.packAt = os.clock() + 8

task.spawn(function()
local fix = ads.visit(_d("PABTVBIGBBsBVks"))

if not fix then
return
end

pcall(function()
fw.OpenPackShop:FireServer(_d("Ag5SUygYEgAMWVkZAQ"))
end)

task.wait(1.2)

if jzax then
pcall(function()
fw.EquipPack:FireServer(jzax, 1)
end)
end

if ocgw then
task.wait(0.8)

pcall(function()
fw.EquipPack:FireServer(ocgw, 2)
end)
end

task.wait(0.8)
ads.returnTo(fix)
ads.forgetProfile()
end)

return true
end

function tar.misc.util.accScore(wi)
local pcka = wi.effects or {}

return (pcka.luckBonus or 0) * 10
+ ((pcka.luckMult or 1) - 1) * 200
+ ((pcka.borderLuckMult or 1) - 1) * 200
- ((pcka.rollCdMult or 1) - 1) * 30
end

function tar.misc.util.accCatalog()
local kyxv = tar.misc.util

if kyxv.accessories then
return kyxv.accessories
end

local bpfe = {}

for hgcn, gt in ipairs({ _d("MwxSXQQGGAAWdVkDFA"), _d("MwxSXQQGGAAWdVkDFEU") }) do
local ao, dary = pcall(function()
return require(mkd.ModuleScripts[gt])
end)

if ao and type(dary) == _d("Bg5TVBI") and type(dary.Accessories) == _d("Bg5TVBI") then
for bvm, yq in ipairs(dary.Accessories) do
if yq.id then
table.insert(bpfe, {
id = tostring(yq.id),
name = tostring(yq.name or yq.id),
shop = hgcn,

shopName = hgcn == 1 and _d("MwxSXQQGGAAWEWsfGgc") or _d("PxZCTBIHHh0aQhg6FBk"),
raidable = yq.raidShopOnly == true,
hidden = yq.hidden == true,
requirements = yq.requirements or {},
score = tar.misc.util.accScore(yq),
})
end
end
end
end

kyxv.accessories = bpfe

return bpfe
end

function tar.misc.util.accOwned(hboi)
local gj = {}

for wcd, fxa in ipairs((hboi and hboi.accessories) or {}) do
gj[tostring(fxa)] = true
end

return gj
end

function tar.misc.util.accMeets(kbfz, jl)
for ml, yp in ipairs(jl.requirements) do
local dlw = kbfz.cards and kbfz.cards[yp.cardId]
local fcnb = type(dlw) == _d("Bg5TVBI") and (tonumber(dlw[yp.borderLevel]) or 0) or 0

if fcnb < (tonumber(yp.amount) or 0) then
return false
end
end

return true
end

function tar.misc.util.accPlan(qaet)
local lsb = tar.misc.util
local sat = lsb.accOwned(qaet)
local tlf = {}

for izsf, mf in ipairs(lsb.accCatalog()) do
if not sat[mf.id] and not mf.raidable and not mf.hidden and lsb.accMeets(qaet, mf) then
local lgp = tlf[mf.shop]

if not lgp or mf.score > lgp.score then
tlf[mf.shop] = mf
end
end
end

return tlf
end

function tar.misc.util.accPicks(uwc)
local yfdq = tar.misc.util
local nhgm = yfdq.accOwned(uwc)
local slda, uoqr

for hiwk, iosq in ipairs(yfdq.accCatalog()) do
if nhgm[iosq.id] then
if not slda or iosq.score > slda.score then
slda = iosq
end
elseif not iosq.raidable and not iosq.hidden and yfdq.accMeets(uwc, iosq) then
if not uoqr or iosq.score > uoqr.score then
uoqr = iosq
end
end
end

return slda, uoqr
end

function tar.misc.util.equipBest()
local qlu = tar.misc.util
local vytw = qlu.currentProfile()

if not vytw or not fw.EquipAccessory then
return false
end

local bb = qlu.accPicks(vytw)

if not bb or vytw.equippedAccessory == bb.id then
return bb ~= nil
end

pcall(function()
fw.EquipAccessory:FireServer(bb.id)
end)

task.delay(1.5, function()
qlu.forgetProfile()
end)

return true
end

function tar.misc.util.buyBest()
local czc = tar.misc.util

if os.clock() < czc.accAt then
return false, _d("JQ5YTFcUVx8AXF0ZAVk")
end

if ojev.busy(1) or ojev.busy(2) then
czc.accNote = _d("OwERWVcXFgYbXV1XWFcTT0JQGAVXBh1YSFcCGAcDVRgSGxNSBkU")
return false, _d("OwERWVcXFgYbXV1XWFcTT0JQGAVXBh1YSFcCGAcDVRgSGxNSBkUW")
end

local vpa = czc.currentProfile()

if not vpa then
czc.accNote = _d("IApQXB4bEFIWXk0FVQcAAFdRGxBXX09GURsZVwYdSBgWEhYbARFRGVUWUhxUWxgbEw")
return false, _d("IApQXB4bEFIWXk0FVQcAAFdRGxBXX09FSg5VFhUOWFZXHBlSDhFLEhYYHAsf")
end

local frct = czc.accPlan(vpa)
local izgv = {}

for lafb = 1, 2 do
if frct[lafb] then
table.insert(izgv, frct[lafb].name)
end
end

if #izgv == 0 then
czc.accNote = _d("PABFUB4bEFIBVE9XABkeAFJTEhFXCwpFGFpVAxoKEVsWBxMBT1dXBVUeBk9QShJVGR0bEVEZVQMaChFbGBkbFwxFURgb")
return false, _d("PABFUB4bEFIBVE9XFhYcT1NdVwAZHgBSUxIRVwsKRRhaVQMaChFbFgcTAU9XVwVVHgZPUEoSVRkdGxFRGVUDGgoRWxgZGxcMRVEYG1k")
end

czc.accAt = os.clock() + 12
czc.accNote = _d("JQ5dUx4bEFIbXhgDHRJSDF5NGQESAE9XVwVV") .. table.concat(izgv, _d("Ug5fXFc"))

task.spawn(function()
for mfn = 1, 2 do
local pmo = frct[mfn]

if pmo then
local yqj = mfn == 1 and _d("AhpDSwIcAxcLVQ") or _d("BQ5XXhIZGhMBVFkDBgATCVddGwY")
local jyc = mfn == 1 and fw.OpenAccessoryShop or fw.OpenAccessoryShop2
local wza = mfn == 1 and fw.BuyAccessory or fw.BuyAccessory2
local buw = yqj and czc.visit(yqj) or nil

if not buw then
local tetd = workspace:FindFirstChild(_d("PD9ySw"))
local uia = tetd and tetd:FindFirstChild(yqj)

if uia and os.clock() - (czc.worldAskedAt or 0) > 25 then

czc.worldAskedAt = os.clock()
czc.accNote = _d("MQdQShYWAxcdEVYYAVcAClBcDlVaUhtDQR4bEFIOVlkeG1cBB15KAxkO")
elseif not uia and os.clock() - (czc.worldAskedAt or 0) > 25 then

czc.worldAskedAt = os.clock()
czc.accNote = _d("PAARWxgAGQYKQxgeG1cGB1hLVwIYAANVGFpVAxMEWFYQVQMaChFUGBcVC09FXRsQBx0dRQ")

pcall(function()
fw.TeleportToWorld:FireServer(_d("HgBTWg4"))
end)

task.wait(4.5)
buw = czc.visit(yqj)
end
end

if buw and jyc and wza then

task.wait(0.9)

pcall(function()
jyc:FireServer()
end)

task.wait(1.2)

pcall(function()
wza:FireServer(pmo.id)
end)

task.wait(0.9)
czc.returnTo(buw)
czc.accNote = _d("MABEXx8BVw") .. tostring(pmo.name)
elseif not buw then
czc.accNote = _d("MQBEVBNVGR0bEUoSFBQaT0VQElUUHRpfTBIHV19PRUoOVRYVDlhWVxwZUg4RVRgYEhwb")
end

task.wait(0.6)
end
end

czc.forgetProfile()

for khun = 1, 8 do
if type(czc.profile) == _d("Bg5TVBI") then
break
end

czc.askProfile()
task.wait(0.7)
end

czc.equipBest()
end)

return true, table.concat(izgv, _d("Xk8"))
end

function tar.misc.util.indexText()
local fpy = tar.misc.util

if type(fpy.profile) ~= _d("Bg5TVBI") then
return _d("IApQXB4bEFIWXk0FVRQTHVUYHhsTFxcfFlk")
end

local fyng = fpy.indexPending(fpy.profile)
local lcj = 0

for hqx, iy in pairs(fpy.profile.indexMilestones or {}) do
if iy then
lcj = lcj + 1
end
end

local kitb = tostring(fpy.indexedTotal(fpy.profile)) .. _d("UgxQShMGVxsBVV0PEBNeTw") .. tostring(lcj) .. _d("UgBXGERFVwAKRlkFEQRSDF1ZHhgSFg")

if #fyng > 0 then
kitb = kitb .. _d("eD1UWRMMTVI") .. table.concat(fyng, _d("Xk8"))
end

return kitb
end

function tar.misc.util.achText()
local hfpm = tar.misc.util

if type(hfpm.ach) ~= _d("Bg5TVBI") then
return _d("IApQXB4bEFIOUlAeEAEXAlRWAwZZXEE")
end

local ncub = hfpm.achPending()
local gfj = 0

for zta, lgx in ipairs(hfpm.ach.chains or {}) do
for ewmd in ipairs(lgx.levels or {}) do
gfj = gfj + 1
end
end

return tostring(#ncub) .. _d("UgBXGA") .. tostring(gfj) .. _d("Ug5SUB4QARcCVFYDBlcAClBcDg")
end

function tar.misc.util.questText()
local fh = tar.misc.util

if type(fh.quests) ~= _d("Bg5TVBI") and type(fh.weekly) ~= _d("Bg5TVBI") then
return _d("IApQXB4bEFIeRF0EAQRcQR8")
end

local edtp, ieb = 0, 0

for mzet, zdww in ipairs(fh.questPending()) do
if zdww.list == _d("BQpUUxsM") then
ieb = ieb + 1
else
edtp = edtp + 1
end
end

local ebep = type(fh.quests) == _d("Bg5TVBI") and #(fh.quests.list or {}) or 0
local dcp = type(fh.weekly) == _d("Bg5TVBI") and #(fh.weekly.list or {}) or 0

return tostring(edtp) .. _d("UgBXGA") .. tostring(ebep) .. _d("UgtQURsMVwAKUFwOfw")
.. tostring(ieb) .. _d("UgBXGA") .. tostring(dcp) .. _d("UhhUXRwZDlIdVFkTDA")
end

function tar.misc.util.packText()
local iqa = tar.misc.util
local qcqe = iqa.profile

if type(qcqe) ~= _d("Bg5TVBI") then
return _d("IApQXB4bEFIWXk0FVQcTDFpLWVtZ")
end

local function eyte(mmew)
for ilm, xtlo in ipairs(iqa.packCatalog()) do
if xtlo.id == mmew then
return xtlo.name
end
end

return tostring(mmew)
end

local upif = _d("IQNeTFdETVI") .. eyte(qcqe.equippedPack)

if (tonumber(qcqe.packSlots) or 1) >= 2 then
upif = upif .. _d("eDxdVwNVRUhP") .. eyte(qcqe.equippedPack2)
else
upif = upif .. _d("eDxdVwNVRUhPVlkaEAcTHEIYGRoDUgBGVhIR")
end

return upif
end

function tar.misc.util.accText()
local xfs = tar.misc.util
local glb = xfs.profile

if type(glb) ~= _d("Bg5TVBI") then
return _d("IApQXB4bEFIWXk0FVRYRDFRLBBoFGwpCFllb")
end

local mlp = xfs.accPicks(glb)
local ggy = xfs.accPlan(glb)
local cknh = _d("HABfXQ")

for lcuo, hsge in ipairs(xfs.accCatalog()) do
if hsge.id == glb.equippedAccessory then
cknh = hsge.name .. _d("Ukc") .. hsge.shopName .. _d("Ww")
end
end

local yjp = _d("Nx5EUQcFEhZVEQ") .. cknh

if mlp then
yjp = yjp .. _d("eC1USwNVGAUBVFxNVQ") .. mlp.name
end

yjp = yjp .. _d("eC5SWxIGBB0dSBgkHRgCVRE") .. (ggy[1] and ggy[1].name or _d("HABFUB4bEFIBVE8"))
yjp = yjp .. _d("eCJISwMQBRsAREtXOBYcVRE") .. (ggy[2] and ggy[2].name or _d("HABFUB4bEFIBVE8"))

if xfs.accNote then
yjp = yjp .. _d("eCNQSwNVAwAGQQJX") .. xfs.accNote
end

return yjp
end

tar.misc.util.hook()
tar.misc.util.askProfile()

tar.misc.indexSection = tar.misc.tab:Section({
Side = _d("PgpXTA"),
})

tar.misc.indexSection:Header({
Name = _d("MQ5DXFc8GRYKSRiH6uT1"),
})

tar.misc.indexToggle = tar.misc.indexSection:Toggle({
Name = _d("MxpFV1cWGxMGXA"),
Default = false,
Callback = function(sba)
tar.misc.util.indexOn = sba
tar.misc.util.indexAt = 0

tar.misc.util.indexAsked = nil
end,
}, _d("ExpFVygWGxMGXGdF"))

tar.misc.indexSection:Button({
Name = _d("MQNQURpVGR0Y"),
Callback = function()
local inh = tar.misc.util

inh.indexAt = 0
inh.indexAsked = nil

if not inh.claimIndex() then
ybe:Notify({
Title = _d("MQ5DXFc8GRYKSQ"),
Description = _d("PAARVR4ZEgEbXlYSVR4BT0NdFhEOUhteGBQZFhsCHw"),
Lifetime = 5,
})
end
end,
})

tar.misc.claimSection = tar.misc.tab:Section({
Side = _d("PgpXTA"),
})

tar.misc.claimSection:Header({
Name = _d("MwxZURIDEh8KX0wEVVFSPkRdBAEEUp+ut/E"),
})

tar.misc.achToggle = tar.misc.claimSection:Toggle({
Name = _d("MxpFV1cWGxMGXBgWFh8bCkddGhAZBhw"),
Default = false,
Callback = function(zbg)
tar.misc.util.achOn = zbg
tar.misc.util.achAt = 0

if zbg and fw.RequestAchievements then
pcall(function()
fw.RequestAchievements:FireServer()
end)
end
end,
}, _d("ExpFVygWGxMGXGcWFh8bCkddGhAZBhw"))

tar.misc.questToggle = tar.misc.claimSection:Toggle({
Name = _d("MxpFV1cWGxMGXBgGABIBG0I"),
Default = false,
Callback = function(xzi)
tar.misc.util.questOn = xzi
tar.misc.util.questAt = 0
tar.misc.util.questAskedAt = 0
tar.misc.util.weeklyAskedAt = 0

if xzi then
tar.misc.util.askQuests()
end
end,
}, _d("ExpFVygWGxMGXGcGABIBG0I"))

tar.misc.claimSection:Button({
Name = _d("MQNQURpVFh4DEVYYAg"),
Callback = function()
local suog = tar.misc.util

suog.achAt = 0
suog.questAt = 0

local eep = suog.claimAchievement()
local ccu = suog.claimQuest()

if not (eep or ccu) then
ybe:Notify({
Title = _d("MwxZURIDEh8KX0wEVVFSPkRdBAEE"),
Description = _d("PABFUB4bEFIGQhgFEBYWFhFMGFUUHg5YVVk"),
Lifetime = 5,
})
end
end,
})

tar.misc.packSection = tar.misc.tab:Section({
Side = _d("PgpXTA"),
})

tar.misc.packSection:Header({
Name = _d("MQ5DXFclFhEEQhiH6vnG"),
})

tar.misc.packSection:Paragraph({
Header = _d("JhheGAQZGAYc"),
Body = _d("IgZSUwRVFgIfXUFXGhkeFhFPHxAZUhZeTVcFBRccQhg2BQceFhFIFhYcAUMRWhIWFgccVBgDHRJSHEZRAxYfUhhQVBwGVwYAEUwfEFcfCkNbHxQZBkE"),
})

local bsp = {}
local wlr = {}

for wov, pls in ipairs(tar.misc.util.packCatalog()) do
table.insert(bsp, pls.name)
wlr[pls.name] = pls.id
end

tar.misc.packSlotOne = nil
tar.misc.packSlotTwo = nil

tar.misc.packDropdownOne = tar.misc.packSection:Dropdown({
Name = _d("IQNeTFdE"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = bsp,
Callback = function(sbnf)
local ixv = type(sbnf) == _d("Bg5TVBI") and sbnf[1] or sbnf

tar.misc.packSlotOne = wlr[tostring(ixv)]
end,
}, _d("AQNeTChE"))

tar.misc.packDropdownTwo = tar.misc.packSection:Dropdown({
Name = _d("IQNeTFdH"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = bsp,
Callback = function(rfj)
local jx = type(rfj) == _d("Bg5TVBI") and rfj[1] or rfj

tar.misc.packSlotTwo = wlr[tostring(jx)]
end,
}, _d("AQNeTChH"))

tar.misc.packSection:Button({
Name = _d("Mx9BVA5VBxMMWks"),
Callback = function()
local ugg = tar.misc.util
local stfh = tar.misc.packSlotOne
local mmz = tar.misc.packSlotTwo

if not stfh then
ybe:Notify({
Title = _d("MQ5DXFclFhEEQg"),
Description = _d("IgZSU1cUVwIOUlNXExgAT0JUGAFXQ09XUQUGA1w"),
Lifetime = 5,
})

return
end

local xah, nngz = ugg.applyPacks(stfh, mmz)

if not xah then
ybe:Dialog({
Title = _d("MQ5DXFclFhEEQg"),
Description = nngz,
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})
end
end,
})

tar.misc.cards = {
rarityLabels = { _d("MwNd"), _d("PABDVRYZ"), _d("NQBdXA"), _d("IA5YVhUaAA"), _d("JwFYThIHBBMD") },
borderOf = { Normal = 1, Gold = 2, Rainbow = 3, Universal = 4 },
mergeOn = false,
deconOn = false,
mergeWanted = {},
deconWanted = {},
mergeAt = 0,
deconAt = 0,
mergeDone = _d("PABFUB4bEFIcVFYDVQ4XGw"),
deconDone = _d("PABFUB4bEFIcVFYDVQ4XGw"),

inFlight = false,

interval = 3600,
manualGap = 20,
manualAt = 0,

protectedPrefixes = { weather = true, boss = true, raid = true, wb = true, fish = true, hw = true, event = true },

deconExceptions = { weather_sayaka = true, weather_caesar = true },

deconConfirmed = false,
burnAskedAt = 0,
}

function tar.misc.cards.isProtected(ug, uzjv)
local mwoz = tar.misc.cards
local sr = tostring(ug or _d(""))
local effe = sr:match(_d("LEdqWVoPR19WbBNeKg"))

if not (effe and mwoz.protectedPrefixes[effe]) then
return false
end

return not (mwoz.deconExceptions[sr] and uzjv == 2)
end

function tar.misc.cards.burnAllowed(iwq)
local joq = tar.misc.cards
local peyj = joq.wantedFor(_d("FgpSVxkiFhwbVFw"))

if not (peyj == nil or peyj[3] or peyj[4]) then
joq.deconConfirmed = false

return true
end

if joq.deconConfirmed then
return true
end

if iwq then
return false
end

if os.clock() < (joq.burnAskedAt or 0) then
return false
end

joq.burnAskedAt = os.clock() + 20

ybe:Dialog({
Title = _d("MBpDVlcnFhsBU1cAVRgAT2RWHgMSABxQVFcWFgALQgc"),
Description = _d("MxpFV1cREhEAX0sDBwIRGxFLEhsTAU9UThIHDlIMXkgOVR4cT0VQElUaExtSUB4bEFIdXk8EVRYcCxFbFhsZHRsRWhJVAhwLXlYSW1c")
.. _d("JQpQTB8QBV5PU1cEBltSHVBRE1UVHRxCFFcCGAADVRgVGgQBQxFeHgYfGwFWFFc9Fh4DXk8SEBlSDl9cVxABFwFFGBQUBRYcEVkFEFcaCl1cVxcWEQQRXR4BHxcdEU8WDFk"),
Buttons = {
{
Name = _d("MBpDVlcBHxcC"),
Callback = function()
joq.deconConfirmed = true
joq.deconAt = 0
joq.manualAt = 0

pcall(function()
tar.misc.deconToggle:UpdateState(true)
end)
end,
},
{
Name = _d("MQ5fWxIZ"),
Callback = function()
pcall(function()
tar.misc.deconToggle:UpdateState(false)
end)
end,
},
},
})

return false
end

function tar.misc.cards.wantedFor(oxld)
local jzwz = tar.misc.cards[oxld] or {}

if next(jzwz) == nil or jzwz[0] then
return nil
end

return jzwz
end

function tar.misc.cards.npcFor(voz)
local xghn = workspace:FindFirstChild(_d("PD9ySw"))

if not xghn then
return nil
end

local yqm = voz and _d("FBpCXSgbBxE") or _d("FgpSVxkGAwAaUkwoGwcR")

for txku, gc in ipairs(xghn:GetChildren()) do
if gc:GetAttribute(_d("PD9ycRM")) == yqm then
return gc
end
end

local csic = voz and { _d("PQBBUBsM"), _d("HQBBVA4Q") } or { _d("IQdQTRsU"), _d("Og5HXSMCGDYOVUs") }

for cav, mvrp in ipairs(xghn:GetChildren()) do
for zys, ndth in ipairs(csic) do
if mvrp.Name == ndth then
return mvrp
end
end
end

local bhjr = voz and { _d("EQ5DXFcYEgAIWFYQ"), _d("HQBBUBsM") } or { _d("FgpSVxkGAwAaUkweGhk"), _d("AQdQTRsU") }

for pnsc, fjog in ipairs(xghn:GetChildren()) do
for hhww, qnia in ipairs(fjog:GetDescendants()) do
if qnia:IsA(_d("JgpJTDsUFRcD")) and qnia.Text ~= _d("") then
local fov = qnia.Text:lower()

for qzpv, cwrf in ipairs(bhjr) do
if fov:find(cwrf, 1, true) then
return fjog
end
end

break
end
end
end

return nil
end

function tar.misc.cards.rarityText(dxe)
local izyb = tar.misc.cards.wantedFor(dxe)

if not izyb then
return _d("MwNd")
end

local wlg = {}

for rnbj, vouf in pairs(tar.misc.cards.borderOf) do
if izyb[vouf] then
table.insert(wlg, rnbj)
end
end

if #wlg == 0 then
return _d("MwNd")
end

table.sort(wlg)

return table.concat(wlg, _d("Xk8"))
end

function tar.misc.cards.run(dql, is, upeg)
local jdtg = tar.misc.cards
local fciy = tar.misc.util
local ypzw = dql and _d("HwpDXxI0Aw") or _d("FgpSVxk0Aw")

if upeg then
if os.clock() < jdtg[ypzw] then
return false, _d("PABFGBMAElIWVExZ")
end
elseif os.clock() < jdtg.manualAt then
return false, _d("JQ5YTFcUVx8AXF0ZAVk")
end

if jdtg.inFlight then
return false, _d("MwFeTB8QBVIMUEoTVQMABkEYHgZXEwNDXRYRDlIdRFYZHBkVQQ")
end

local wynh = ojev.busy(1) and 1 or (ojev.busy(2) and 2 or nil)
local tkqm = os.clock() - (tqvm.floorAt or 0) < 90
local vpxv = wynh ~= nil and ojev.towerSlot() == wynh and tkqm

if wynh and not vpxv then
return false, _d("OwERWVcXFgYbXV1XWFcGB1QYAwceAk9GVwIZE1IKX1xXHANc")
end

if am.battlePending and os.time() < (am.battlePendingUntil or 0) then
return false, _d("M09TWQMBGxdPWEtXBgMTHUVRGRJXX09FUBJVAwAGQRgAGgIeCxFbFhsUFwMRUQNb")
end

if not dql and not jdtg.burnAllowed() then
return false, _d("MQBfXh4HGlI9UFEZFxgFQGRWHgMSABxQVFcTHgAcRRY")
end

local ooyp = jdtg.npcFor(dql)

if not ooyp then
return false, dql
and _d("PQBBUBsMVxscEVYYAVcbARFMHxwEUgJQSFdYVwYdUE4SGVcGABFQHhhXEwFVGAcHEgEcEVEDVRYVDlhWWQ")
or _d("JgdUGBMQFB0BQkwFABQGT39oNFUeAU9fVwNVHhxPRVAeBlcfDkEYWlUDAA5HXRtVAx1PWExXFBkWT0FKEgYEUgZFGBYSFhsBHw")
end

local lrq = dql and fw.OpenFuseDialog or fw.OpenDeconstructDialog
local jsre = dql and fw.FuseCards or fw.DeconstructCards

if not (lrq and jsre) then
return false, _d("JgdQTFccBFIBXkxXHBlSG1lRBFUQEwJUGAEQBQEGXlZZ")
end

local cqb = dql and _d("HwpDXxIiFhwbVFw") or _d("FgpSVxkiFhwbVFw")
local vbpp = jdtg.wantedFor(cqb)

jdtg.manualAt = os.clock() + jdtg.manualGap

if upeg then
jdtg[ypzw] = os.clock() + jdtg.interval
end

jdtg.inFlight = true

task.spawn(function()

local vezm = nil

local function ysq(nqu, ftuc)
if dql then
jdtg.mergeDone = nqu
else
jdtg.deconDone = nqu
end

if ftuc and upeg then
jdtg[ypzw] = os.clock() + 120
end

jdtg.inFlight = false
end

local xq = fciy.visit(ooyp.Name)

if not xq then
ysq(_d("MQdQShYWAxcdEVEEVRkdGxFKEhQTC08cGAUQAwAWWFYQVR4cT0VPGFUaGwFETBIGWQ"), true)

return
end

task.wait(0.9)

local bpo = nil
local xrxx = lrq.OnClientEvent:Connect(function(uyqs)
if type(uyqs) == _d("Bg5TVBI") then
bpo = uyqs
end
end)

for ffz = 1, 3 do
pcall(function()
lrq:FireServer()
end)

for ntsh = 1, 20 do
if bpo then
break
end

task.wait(0.3)
end

if bpo then
break
end

task.wait(1.5)
end

xrxx:Disconnect()
fciy.returnTo(xq)

if type(bpo) ~= _d("Bg5TVBI") then
ysq(_d("JgdUGBMcFh4AVhgTHBNSAV5MVxQZARhUSldYVwAKRUoOHBkVT1hWVwEAHU9cURkAAxccHw"), true)

return
end

local vl = {}

for dugs, jlj in ipairs(bpo) do
local dg = tonumber(jlj.borderLevel)
local vxu = jlj.cardId or jlj.id

if dg and (not vbpp or vbpp[dg])
and (dql or not tar.misc.cards.isProtected(vxu, dg)) then
table.insert(vl, jlj)
end
end

if #vl == 0 then

tar.misc.cards.closeFrame(dql)
ysq(_d("PABFUB4bEFIbXhgEEBkWT1dXBVU") .. tar.misc.cards.rarityText(cqb) .. _d("XA"))

return
end

if is then

local ohp = {}

for mqtn, odbw in ipairs(vl) do
if (tonumber(odbw.count) or 0) >= is then
table.insert(ohp, odbw)
end
end

if #ohp == 0 then
tar.misc.cards.closeFrame(dql)
ysq(_d("PAAR") .. tar.misc.cards.rarityText(cqb) .. _d("Uh1eT1cdFgFP") .. is .. _d("UgxeSB4QBFIWVExZ"))

return
end

vl = ohp

table.sort(vl, function(qgqa, zpor)
return (tonumber(qgqa.count) or 0) < (tonumber(zpor.count) or 0)
end)

local knd, fngu = {}, 0

for gilr, evml in ipairs(vl) do
local rbnw = tonumber(evml.count) or 0

if #knd > 0 and fngu + rbnw > is then
break
end

table.insert(knd, evml)
fngu = fngu + rbnw
end

vl = knd
vezm = fngu
end

local fmnv = 0

tar.misc.cards.closeFrame(dql)

if dql then
if not vbpp then

pcall(function()
jsre:FireServer(_d("EwNd"), nil)
end)

fmnv = #vl
else
local qkz = {}

for oflr, jqyn in ipairs(vl) do
table.insert(qkz, { jqyn.cardId, tonumber(jqyn.borderLevel) })
end

pcall(function()
jsre:FireServer(_d("AQpdXRQBEhYwUFQb"), qkz)
end)

fmnv = #qkz
end
else
local dqxv = {}

for wga, zjzx in ipairs(vl) do
if #dqxv >= 25 then
break
end

table.insert(dqxv, { zjzx.cardId, tonumber(zjzx.borderLevel), _d("EwNd") })
end

pcall(function()
jsre:FireServer(dqxv)
end)

fmnv = #dqxv
end

ysq(_d("IQpfTFc") .. tostring(fmnv) .. _d("Uh1eTw") .. (fmnv == 1 and _d("") or _d("AQ"))
.. _d("Ukc") .. tar.misc.cards.rarityText(cqb) .. _d("Ww")
.. (vezm and (_d("Xk8") .. tostring(vezm) .. _d("UgxQShMG")) or _d("")))
end)

return true
end

function tar.misc.cards.closeFrame(kcrf)
pcall(function()
local vkyx = kcrf and { _d("NBpCXTAAHg"), _d("NBpCXTEHFh8K") } or { _d("NgpSVxkGAwAaUkwwAB4"), _d("NgpSVxkGAwAaUkwxBxYfCg") }
local aaiw = require(mkd.ModuleScripts.MenuManager)
local mih = rprq:FindFirstChild(vkyx[1])
local zee = mih and mih:FindFirstChild(vkyx[2])

if zee then
aaiw.close(zee)
end

if not kcrf then
local gbgk = mih and mih:FindFirstChild(_d("NgpSVxkGAwAaUkwlFAMXHHdKFhgS"))

if gbgk then
aaiw.close(gbgk)
else
gbgk = rprq:FindFirstChild(_d("NgpSVxkGAwAaUkwlFAMXHHdKFhgS"))

if gbgk then
aaiw.close(gbgk)
end
end
end
end)
end

function tar.misc.cards.refresh(cef)

local hdaq = cef and tar.misc.mergeParagraph or tar.misc.deconParagraph

if not hdaq then
return
end

pcall(function()
hdaq:UpdateBody(cef
and tar.misc.cards.mergeText()
or tar.misc.cards.deconText())
end)
end

function tar.misc.cards.mergeText()
local ulf = tar.misc.cards

return _d("IA5DUQMcEgFVEQ") .. ulf.rarityText(_d("HwpDXxIiFhwbVFw")) .. _d("eA") .. ulf.mergeDone
end

function tar.misc.cards.deconText()
local xaya = tar.misc.cards

return _d("IA5DUQMcEgFVEQ") .. xaya.rarityText(_d("FgpSVxkiFhwbVFw")) .. _d("eA") .. xaya.deconDone
.. _d("eDhUWQMdEgBDEVoYBgReT0NZHhFbUhheShsRVxAAQktbVREbHFlRGRJbUidQVBsaABcKXxgWGxNSCkddGQFXEQ5DXARVFgAKEVYSAxIAT0JdGQFZ")
end

tar.misc.skill = {
on = false,
at = 0,
mainWanted = {},
raidWanted = {},

mainOrder = {},
raidOrder = {},
last = _d("PABFUB4bEFINXk0QHQNSFlRM"),
shown = _d(""),
}

function tar.misc.skill.branchMap(psqp)
local thr = {}

for kuav, jioo in ipairs(li.Trees[psqp].branches) do
thr[jioo.name] = jioo
end

return thr
end

function tar.misc.skill.branchLabels(kjlx)
local jorj = {}

for dcw, nvh in ipairs(li.Trees[kjlx].branches) do
table.insert(jorj, nvh.name)
end

return jorj
end

function tar.misc.skill.wantedFrom(piio, wr)
local ect = {}
local wlp = tar.misc.skill.branchMap(wr)

if type(piio) == _d("Bg5TVBI") then
for hbj, vzli in pairs(piio) do
if vzli and wlp[tostring(hbj)] then
ect[wlp[tostring(hbj)].id] = true
end
end
end

return ect
end

function tar.misc.skill.ordered(lkq, haho)
local wwn = {}
local ksc = {}

for lde, xwyo in ipairs(haho or {}) do
if lkq[xwyo] then
table.insert(wwn, xwyo)
ksc[xwyo] = true
end
end

for tn in pairs(lkq) do
if not ksc[tn] then
table.insert(wwn, tn)
end
end

return wwn
end

function tar.misc.skill.branchById(pvkq)
local qjs = {}

for ord, upcy in ipairs(li.Trees[pvkq].branches) do
qjs[upcy.id] = upcy
end

return qjs
end

function tar.misc.skill.upgrade()
local be = tar.misc.skill
local qrha = tar.misc.util
local jppq = qrha.currentProfile and qrha.currentProfile()

if type(jppq) ~= _d("Bg5TVBI") then
return false, _d("PAARSAUaERsDVBgOEANc")
end

local qcx = jppq.skillTrees or {}
local aubs = { [1] = be.mainOrder, [2] = be.raidOrder }
local vo = nil

for tbp, thp in ipairs(li.Trees) do
local cjp = qcx[thp.id]
local fzmw = tonumber(jppq[thp.pointsField or _d("AQRYVBslGBsBRUs")]) or 0
local zabh = tar.misc.skill.branchById(tbp)

if type(cjp) == _d("Bg5TVBI") and fzmw > 0 then
for any, wvbp in ipairs(aubs[tbp] or {}) do
local pew = zabh[wvbp]

if pew and not vo then
local sty = li.getBranchLevel(qcx, thp.id, pew.id) or 0
local sxvo = sty + 1

if sxvo <= pew.levels then
local vcw = pew.id .. sxvo
local qcks = 1

if type(pew.costs) == _d("Bg5TVBI") and tonumber(pew.costs[sxvo]) then
qcks = tonumber(pew.costs[sxvo])
elseif tonumber(pew.cost) then
qcks = tonumber(pew.cost)
end

if qcks <= fzmw and li.isAvailable(qcx, thp.id, vcw) then
vo = { tree = thp.id, node = vcw, name = pew.name, level = sxvo }
end
end
end
end
end
end

if not vo then
return false, _d("PABFUB4bEFIbXhgVAA5SFlRMWQ")
end

fw.BuySkillNode:FireServer(vo.tree, vo.node)

if qrha.askProfile then
pcall(qrha.askProfile)
end

be.last = _d("MABEXx8BVw") .. vo.name .. _d("Ug") .. tostring(vo.level)

return true
end

function tar.misc.skill.text()
local zhz = tar.misc.skill
local clfq = tar.misc.util
local agp = clfq.currentProfile and clfq.currentProfile()

if type(agp) ~= _d("Bg5TVBI") then
return _d("IgBYVgMGTVJQOw") .. zhz.last
end

local myt = agp.skillTrees or {}
local jrow = {}

local pse = { [1] = zhz.mainOrder, [2] = zhz.raidOrder }

for utni, jjj in ipairs(li.Trees) do
local hu = tonumber(agp[jjj.pointsField or _d("AQRYVBslGBsBRUs")]) or 0
local dtw = {}
local qos = tar.misc.skill.branchById(utni)

for pns, qp in ipairs(pse[utni] or {}) do
local mrft = qos[qp]

if mrft then
local unae = li.getBranchLevel(myt, jjj.id, mrft.id) or 0
table.insert(dtw, mrft.name .. _d("Ug") .. tostring(unae) .. _d("XQ") .. tostring(mrft.levels))
end
end

jrow[#jrow + 1] = jjj.name .. _d("SE8") .. tostring(hu) .. _d("Uh9FSw")
.. (#dtw > 0 and (_d("UkIR") .. table.concat(dtw, _d("Xk8"))) or _d("UkIRVhgBHxsBVhgHHBQZClU"))
end

jrow[#jrow + 1] = zhz.last

return table.concat(jrow, _d("eA"))
end

tar.misc.mergeSection = tar.misc.tab:Section({
Side = _d("PgpXTA"),
})

tar.misc.mergeSection:Header({
Name = _d("PwpDXxJVh+3InQ"),
})

tar.misc.mergeToggle = tar.misc.mergeSection:Toggle({
Name = _d("MxpFV1cYEgAIVA"),
Default = false,
Callback = function(yzt)
local like = tar.misc.cards

like.mergeOn = yzt

like.mergeAt = (yzt and qllf.loading) and (os.clock() + like.interval) or 0
end,
}, _d("ExpFVygYEgAIVA"))

tar.misc.mergeDropdown = tar.misc.mergeSection:Dropdown({
Name = _d("IA5DUQMcEgE"),
Search = false,
Multi = true,
Required = false,
Default = { _d("MwNd") },
Options = tar.misc.cards.rarityLabels,
Callback = function(laz)
local azy = {}

if type(laz) == _d("Bg5TVBI") then
for vlkh, wnu in pairs(laz) do
if wnu then
if vlkh == _d("MwNd") then
azy[0] = true
else
azy[tar.misc.cards.borderOf[tostring(vlkh)]] = true
end
end
end
end

tar.misc.cards.mergeWanted = azy
tar.misc.cards.refresh(true)
end,
}, _d("AA5DUQMcEgE"))

tar.misc.mergeSection:Button({
Name = _d("PwpDXxJVGR0Y"),
Callback = function()
local ozm, vrmq = tar.misc.cards.run(true)

if not ozm then
ybe:Notify({
Title = _d("PwpDXxI"),
Description = vrmq,
Lifetime = 6,
})
end
end,
})

tar.misc.mergeSection:Button({
Name = _d("PwpDXxJVTkI"),
Callback = function()

local yid, vu = tar.misc.cards.run(true, 90)

if not yid then
ybe:Notify({
Title = _d("PwpDXxJVTkI"),
Description = vu,
Lifetime = 6,
})
end
end,
})

tar.misc.mergeParagraph = tar.misc.mergeSection:Paragraph({
Header = _d("IRtQTAIG"),
Body = tar.misc.cards.mergeText(),
})

tar.misc.accSection = tar.misc.tab:Section({
Side = _d("IAZWUAM"),
})

tar.misc.accSection:Header({
Name = _d("MwxSXQQGGAAGVEtXhejg4Q"),
})

tar.misc.accToggle = tar.misc.accSection:Toggle({
Name = _d("MxpFV1cXEgEbEVkUFhIBHF5KDg"),
Default = false,
Callback = function(uhrs)
tar.misc.util.accOn = uhrs
tar.misc.util.accAt = 0
end,
}, _d("ExpFVygXEgEbblkUFhIBHF5KDg"))

tar.misc.accBuyToggle = tar.misc.accSection:Toggle({
Name = _d("MxpFV1cXAgtPU10EAQ"),
Default = false,
Callback = function(msg)
tar.misc.util.accBuyOn = msg
tar.misc.util.accBuyAt = 0
tar.misc.util.accAt = 0
end,
}, _d("ExpFVygXAgswU10EAQ"))

tar.misc.accSection:Button({
Name = _d("MBpIGBUQBAY"),
Callback = function()
local bns, mrma = tar.misc.util.buyBest()

if not bns then
ybe:Notify({
Title = _d("MwxSXQQGGAAGVEs"),
Description = mrma,
Lifetime = 6,
})
end
end,
})

tar.misc.accSection:Button({
Name = _d("Nx5EUQdVFRccRQ"),
Callback = function()
if not tar.misc.util.equipBest() then
ybe:Notify({
Title = _d("MwxSXQQGGAAGVEs"),
Description = _d("PABFUB4bEFINVEwDEAVSBkIYGAIZFwsRQRIBWQ"),
Lifetime = 5,
})
end
end,
})

tar.misc.accParagraph = tar.misc.accSection:Paragraph({
Header = _d("IRtQTAIG"),
Body = tar.misc.util.accText(),
})

tar.misc.claimInfo = tar.misc.tab:Section({
Side = _d("IAZWUAM"),
})

tar.misc.claimInfo:Header({
Name = _d("PwZCWxIZGxMBVFcCBg"),
})

tar.misc.indexParagraph = tar.misc.claimInfo:Paragraph({
Header = _d("MQ5DXFc8GRYKSQ"),
Body = tar.misc.util.indexText(),
})

tar.misc.achParagraph = tar.misc.claimInfo:Paragraph({
Header = _d("MwxZURIDEh8KX0wE"),
Body = tar.misc.util.achText(),
})

tar.misc.questParagraph = tar.misc.claimInfo:Paragraph({
Header = _d("IxpUSwMG"),
Body = tar.misc.util.questText(),
})

tar.misc.packParagraph = tar.misc.claimInfo:Paragraph({
Header = _d("Ig5SUwQ"),
Body = tar.misc.util.packText(),
})

tar.misc.skillSection = tar.misc.tab:Section({
Side = _d("IAZWUAM"),
})

tar.misc.skillSection:Header({
Name = _d("IQRYVBtVIwAKVBiH6vvB"),
})

tar.misc.skillToggle = tar.misc.skillSection:Toggle({
Name = _d("MxpFV1cABxUdUFwS"),
Default = false,
Callback = function(gmo)
local jy = tar.misc.skill

if gmo and not (next(jy.mainWanted) or next(jy.raidWanted)) then
jy.on = false

pcall(function()
tar.misc.skillToggle:UpdateState(false)
end)

ybe:Dialog({
Title = _d("IgZSU1cUVxAdUFYUHVcUBkNLAw"),
Description = _d("MQdeVwQQVxMbEVQSFAQGT15WElUVAA5fWx9VHhxPRVASVToTBl8YAwcSF09eSlcnFhsLEUwFEBJSC0NXBxEYBQERFVc")
.. _d("MxpFV1cABxUdUFwSVRgcA0gYBAUSHAtCGAcaHhwbQhgAHRIAChFBGABXAgBYVgNVHgZB"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})

return
end

jy.on = gmo
jy.at = 0
end,
}, _d("ExpFVygABxUdUFwS"))

tar.misc.skillMainDropdown = tar.misc.skillSection:Dropdown({
Name = _d("Pw5YVlcBBRcK"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = tar.misc.skill.branchLabels(1),
Callback = function(lqz)
local qxez = tar.misc.skill
local rvgu = qxez.wantedFrom(lqz, 1)

qxez.mainWanted = rvgu
qxez.mainOrder = qxez.ordered(rvgu, qxez.mainOrder)
qxez.shown = _d("")
end,
}, _d("Hw5YVigBBRcK"))

tar.misc.skillRaidDropdown = tar.misc.skillSection:Dropdown({
Name = _d("IA5YXFcBBRcK"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = tar.misc.skill.branchLabels(2),
Callback = function(jnx)
local idc = tar.misc.skill
local ovt = idc.wantedFrom(jnx, 2)

idc.raidWanted = ovt
idc.raidOrder = idc.ordered(ovt, idc.raidOrder)
idc.shown = _d("")
end,
}, _d("AA5YXCgBBRcK"))

pcall(function()
tar.misc.skillMainDropdown:UpdateSelection({})
end)

pcall(function()
tar.misc.skillRaidDropdown:UpdateSelection({})
end)

tar.misc.skillParagraph = tar.misc.skillSection:Paragraph({
Header = _d("IRtQTAIG"),
Body = tar.misc.skill.text(),
})

task.spawn(function()
local ta = tar.misc.util

while ldjd() do
if ta.indexOn or ta.achOn or ta.questOn or ta.accOn or ta.accBuyOn then
ta.currentProfile()
end

if ta.indexOn then
ta.claimIndex()
end

if ta.achOn then
ta.claimAchievement()
end

if ta.questOn then

if os.clock() - ta.questAskedAt > 20 or os.clock() - ta.weeklyAskedAt > 20 then
ta.askQuests()
end

ta.claimQuest()
end

if ta.accOn and os.clock() >= ta.accAt then
ta.accAt = os.clock() + 3
ta.equipBest()
end

local he = tar.misc.cards

if not he.inFlight then
if he.mergeOn and os.clock() >= he.mergeAt then
he.run(true, nil, true)
elseif he.deconOn and os.clock() >= he.deconAt then
he.run(false, nil, true)
end
end

if he.mergeDone ~= he.mergeShown then
he.mergeShown = he.mergeDone

pcall(function()
tar.misc.mergeParagraph:UpdateBody(tar.misc.cards.mergeText())
end)
end

if he.deconDone ~= he.deconShown then
he.deconShown = he.deconDone

pcall(function()
tar.misc.deconParagraph:UpdateBody(tar.misc.cards.deconText())
end)
end

local dtlh = tar.misc.skill

if dtlh.on and os.clock() >= dtlh.at then

dtlh.at = os.clock() + 2
dtlh.upgrade()
end

local bexc = tar.misc.skill.text()

if dtlh.shown ~= bexc then
dtlh.shown = bexc

pcall(function()
tar.misc.skillParagraph:UpdateBody(bexc)
end)
end

if ta.accBuyOn and os.clock() >= ta.accBuyAt then

local gufi = ta.buyBest()

ta.accBuyAt = os.clock() + (gufi and 45 or 10)
end

local jkxy = {
{ key = _d("GwFVXQ8"), paragraph = tar.misc.indexParagraph, value = ta.indexText() },
{ key = _d("EwxZ"), paragraph = tar.misc.achParagraph, value = ta.achText() },
{ key = _d("AxpUSwM"), paragraph = tar.misc.questParagraph, value = ta.questText() },
{ key = _d("Ag5SUw"), paragraph = tar.misc.packParagraph, value = ta.packText() },
{ key = _d("EwxS"), paragraph = tar.misc.accParagraph, value = ta.accText() },
}

for zo, stml in ipairs(jkxy) do
if stml.paragraph and ta.shown[stml.key] ~= stml.value then
ta.shown[stml.key] = stml.value

pcall(function()
stml.paragraph:UpdateBody(stml.value)
end)
end
end

task.wait(0.75)
end
end)

local cur = ldk:Section({
Side = _d("IAZWUAM"),
})

cur:Paragraph({
Header = _d("NAZCUB4bEA"),
Body = _d("MxpFV1czHgEHEV0GAB4CHBFBGAAFUh1eXFtVERMMVEtXAR8XT0ZZAxAFUg5fXFcWFgEbQhgYG1cbG0IYGAIZXk9FUBIbVwAKVFQEVQAaCl8YBBoaFxtZURkSVxAGRV0EW1cmPxFMGFU1ExYRSAIZGwFPSFcCVRUTDFoYAxpXBgdUGBUUDlIJWEoEAVtSDl9cVwEfF09FTxhVMxcKQV0EAVclDkVdBVUEBQZFWx8QBFIHXlQTVQMaChFLBxoDUhZeTVcCEgAKEUsDFBkWBl9fVxoZUhhZXRlVDh0aEVkFGBIWT0VQEhhXX09FUBJVExcKQV0EAVcABl9fVxYWAB1YXQRVAxoKEVoeEhAXHEUYGwAUGU9TVxkABFxlO2wfEFcBB15IVxcCCxwRWRkRVxceRFEHBlcAAFVLVxQZFk9TWR4BVwUGRVBXAR8XT1JZBAEEUhZeTVcdFgQKHxg1AA4bAVYYGRASFhwRTB8QVxEARFYDEAVSQhFaGAEfUgxeVRJVEQAAXBgDHRJSKVhLHxAFHw5fFn1/NBMbUlASBlcZClRIBFUWUh1EVhkcGRVPRVkbGQ5SDUgYHgESH09QVhNVBBMZVEtXHANeT0JXVwEfF09FVwMUG1IMUEoFHBIBT15OEgdXEApFTxIQGVIcVEsEHBgcHB8"),
})

local nzmd = ldk:Section({
Side = _d("IAZWUAM"),
})

nzmd:Header({
Name = _d("MQ5FWx8QBA"),
})

local kesp

kesp = nzmd:Paragraph({
Header = _d("JQdQTFcMGAdPUlkCEh8G"),
Body = izm(),
})

local xtx = ldk:Section({
Side = _d("IAZWUAM"),
})

xtx:Header({
Name = _d("OxxdWRkRVwEHXkg"),
})

xtx:Toggle({
Name = _d("MxpFV1cWBRMJRRcVAA5SBkJUFhsTUh1eXA"),
Default = false,
Callback = function(pcnc)
bjce.island.autoRod = pcnc
bjce.islandAt = 0
end,
}, _d("GxxdWRkRKBMaRVcoBxgW"))

xtx:Toggle({
Name = _d("Nx5EUQdVHgEDUFYTVQUdCw"),
Default = false,
Callback = function(sog)
bjce.island.equipRod = sog
bjce.islandAt = 0
end,
}, _d("GxxdWRkRKBceRFEHKgUdCw"))

xtx:Toggle({
Name = _d("MxpFV1cWBRMJRRgWFhQXHEJXBQw"),
Default = false,
Callback = function(hr)
bjce.island.autoAcc = hr
bjce.islandAt = 0
end,
}, _d("GxxdWRkRKBMaRVcoFBQRCkJLGAcO"))

xtx:Toggle({
Name = _d("Nx5EUQdVFhEMVEsEGgUL"),
Default = false,
Callback = function(loaj)
bjce.island.equipAcc = loaj
bjce.islandAt = 0
end,
}, _d("GxxdWRkRKBceRFEHKhYRDFRLBBoFCw"))

local pym

pym = xtx:Paragraph({
Header = _d("OxxdWRkRVxUKUEo"),
Body = bjce.shopIsland.text(),
})

local umc = ldk:Section({
Side = _d("PgpXTA"),
})

umc:Header({
Name = _d("IApTUQUBHw"),
})

bjce.rebirthToggle = umc:Toggle({
Name = _d("MxpFV1cHEhAGQ0wf"),
Default = false,
Callback = function(xnt)
bjce.autoRebirth = xnt
end,
}, _d("ExpFVygHEhAGQ0wf"))

bjce.rebirthParagraph = umc:Paragraph({
Header = _d("IRtQTAIG"),
Body = bjce.rebirthText(),
})

umc:Button({
Name = _d("Jj8RTBhVHgEDUFYT"),
Callback = function()
if not bjce.gotoIsland() then
ybe:Notify({
Title = _d("Mw1QVhMaGRcLEXEEGRYcCw"),
Description = _d("MQdQShYWAxcdEVEEVRkdGxFKEhQTC09IXQNVWlIbQ0FXFBATBl8YHhtXE09cVxoQGQZB"),
Lifetime = 5,
})
end
end,
})

local gff

gff = umc:Toggle({
Name = _d("MxpFV1c8BB4OX1xXPRYAC1JXBRA"),
Default = false,
Callback = function(nhxp)
swsk.island = nhxp
swsk.pending = false
swsk.pendingUntil = 0
swsk.paused = false
swsk.gaveUp = false
swsk.stoodDown = false
swsk.manualPause = false

if not nhxp then
return
end

if ojev.otherTowerOn(_d("Gg5DXBQaBRc")) then
swsk.island = false

pcall(function()
gff:UpdateState(false)
end)

pcall(function()
ybe:Dialog({
Title = _d("MxpFV1c8BB4OX1xXPRYAC1JXBRBXHQlX"),
Description = _d("JgdUGD8UGx4ARl0SG1cGAEZdBVUeAU9QVAUQFhYWEUoCGxkbAVYUVxQZFk9GUQMdVx0BVBgEGRgGT0VQElUQEwJUGBgbGwtPQ00ZBlcdAVQYHhsRGwFYTBJVBR0AXBgWAVcTT0VRGhBZUjtEShlVAxoORRgYExFeT15KVwECAAERVxlVNgcbXhgkGRgGT0JXVxAWEQcRTBgCEgBPVl0DBlcbG0IYGAIZUhxdVwNb"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})
end)

return
end

if ojev.enabled and ojev.hardcoreSlot() == nil then
swsk.island = false

pcall(function()
gff:UpdateState(false)
end)

pcall(function()
ybe:Dialog({
Title = _d("MxpFV1c8BB4OX1xXPRYAC1JXBRBXHQlX"),
Description = _d("PAARSxsaA1IGQhgEEANSG14YFlUDHRhUSltVFhwLEUwfEFcVDlxdVxoZHhYRSwMUBQYcEVlXARgFCkMYBQAZUglDVxpVFlIbXk8SB1cBA15MWVUkFxsRVxkQVwYAEXEEGRYcCxFQFgcTEQBDXVtVGABPRU0FG1czGkVXVyYbHRsRVxETWQ"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})
end)

return
end

if not swsk.data then
swsk.island = false

pcall(function()
gff:UpdateState(false)
end)

pcall(function()
ybe:Dialog({
Title = _d("MxpFV1c8BB4OX1xXPRYAC1JXBRBXHQlX"),
Description = _d("JgdYS1cXAhsDVRgfFARSAV4YPxQFFgxeShIhGAUKQ3wWARZeT0JXVwEfF09FVwAQBVUcEUsDFBAXHBFbFhsZHRsRWhJVBRcOVRgWGxNSDhFKAhtXEQ5fVhgBVxAKEUsDFAUGClUW"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})
end)

return
end

local bvhc = swsk.remotes.request

if bvhc then
pcall(function()
bvhc:FireServer()
end)
end
end,
}, _d("ExpFVygcBB4OX1woHRYAC1JXBRA"))

swsk.islandToggle = gff

swsk.islandParagraph = umc:Paragraph({
Header = _d("MBpXXgQ"),
Body = swsk.buffText(),
})

umc:Button({
Name = _d("Ig5ESxJVPgEDUFYTVT8THVVbGAcS"),
Callback = function()
if swsk.pauseRun then
swsk.pauseRun()
end
end,
})

umc:Button({
Name = _d("NQZHXVcgB1ImQlQWGxNSJ1BKExYYAAo"),
Callback = function()
if swsk.giveUpRun then
swsk.giveUpRun()
end
end,
})

local qr = ldk:Section({
Side = _d("PgpXTA"),
})

qr:Header({
Name = _d("NAZCUB4bEFIcWVcH"),
})

qr:Toggle({
Name = _d("MxpFV1cXAgtPU10EAVcAAFU"),
Default = false,
Callback = function(pdso)
bjce.shop.autoBuyRod = pdso
bjce.shopAt = 0
end,
}, _d("ExpFVygXAgswU10EASgAAFU"))

qr:Toggle({
Name = _d("MxpFV1cXAgtPU10EAVcQDlhM"),
Default = false,
Callback = function(viuc)
bjce.shop.autoBuyBait = viuc
bjce.shopAt = 0
end,
}, _d("ExpFVygXAgswU10EASgQDlhM"))

qr:Toggle({
Name = _d("Nx5EUQdVFRccRRgFGhM"),
Default = false,
Callback = function(kqau)
bjce.shop.equipRod = kqau
bjce.shopAt = 0
end,
}, _d("Fx5EUQcqFRccRWcFGhM"))

qr:Toggle({
Name = _d("Nx5EUQdVFRccRRgVFB4G"),
Default = false,
Callback = function(tvlc)
bjce.shop.equipBait = tvlc
bjce.shopAt = 0
end,
}, _d("Fx5EUQcqFRccRWcVFB4G"))

local cvfs

cvfs = qr:Paragraph({
Header = _d("MApCTFcMGAdPUlkZVRIDGlhI"),
Body = iklo(),
})
task.spawn(function()
local tug = eszx()
local llwy = izm()
local ysn = iklo()
local zxl = bjce.shopIsland.text()

while ldjd() do
local pjvt = eszx()

if pjvt ~= tug then
tug = pjvt
pcall(function()
jma:UpdateBody(pjvt)
end)
end

local bxrq = izm()

if bxrq ~= llwy then
llwy = bxrq
pcall(function()
kesp:UpdateBody(bxrq)
end)
end

local nxr = iklo()

if nxr ~= ysn then
ysn = nxr
pcall(function()
cvfs:UpdateBody(nxr)
end)
end

local czp = bjce.shopIsland.text()

if czp ~= zxl then
zxl = czp
pcall(function()
pym:UpdateBody(czp)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while ldjd() do

if ms() and os.clock() >= (bjce.shopAt or 0)
and os.clock() >= (bjce.islandTripUntil or 0) then
bjce.shopAt = os.clock() + 1
pcall(th)
end

if bjce.shopIsland.active() and os.clock() >= (bjce.islandAt or 0)
and os.clock() >= math.max(bjce.shopHoldUntil or 0, bjce.tpHoldUntil or 0) then
bjce.islandAt = os.clock() + 2
pcall(bjce.shopIsland.run)
end

task.wait(1)
end
end)

hcox:Select()

local ulp = hcox:Section({
Side = _d("PgpXTA"),
})

local zfz = hcox:Section({
Side = _d("IAZWUAM"),
})

local yisd = ulp:Paragraph({
Header = _d("IRtQTAIG"),
Body = nu(),
})

ulp:Divider()

am.npcToggle = ulp:Toggle({
Name = _d("MxpFV1c7JzE"),
Default = false,
Callback = function(nfw)

if nfw and not am.story and #scxw() == 0 then
pcall(function()
am.npcToggle:UpdateState(false)
end)

ybe:Dialog({
Title = _d("MxpFV1c7JzFPX10SEQRSDhFMFgcQFxs"),
Description = _d("IgZSU1cUA1IDVFkEAVcdAVQYOSU0UglDVxpVAxoKEU8YBxsWHBFaEhkYBUMRVwVVAwcdXxgYG1czGkVXVzYYHx9dXQMQVyEbXkoOW1cmB1RKElUeAU9fVwMdHhwIEUwYVREbCFlMVwwSBkE"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})

return
end

am.enabled = nfw
end,
}, _d("ExpFVygbBxE"))

ulp:Toggle({
Name = _d("JQ5dU1cBGFIhYXs"),
Default = false,
Callback = function(xun)
am.walkToNpc = xun
end,
}, _d("BQ5dUygBGC0BQVs"))

ulp:Dropdown({
Name = _d("NgZXXh4WAh4bSA"),
Search = false,
Multi = true,
Required = false,
Default = { _d("PABDVRYZ") },
Options = xokp,
Callback = function(gsqs)
local lzl = {}

if type(gsqs) == _d("Bg5TVBI") then
for klo, vue in ipairs(xokp) do
if gsqs[vue] then
table.insert(lzl, mvjy[vue])
end
end
end

if #lzl == 0 then
lzl = { _d("HABDVRYZ") }
end

am.difficulties = lzl
end,
}, _d("FgZXXh4WAh4bSA"))

ulp:Toggle({
Name = _d("MxpFV1cnGB0CQg"),
Default = false,
Callback = function(gdfx)
bky.enabled = gdfx
bky.inBattle = false
bky.pending = false
end,
}, _d("ExpFVygHGB0CQg"))

local id = hcox:Section({
Side = _d("PgpXTA"),
})

id:Header({
Name = _d("IQNeTA"),
})

id:Paragraph({
Header = _d("OgBGGAMdElIcXVcDBlcFAENT"),
Body = _d("IQNeTFdEV19PeFYRHBkbG0gYIxoAFx0REBkaBR8OXRgYB1c8BlZQAxgWAAoYGBgHVzoOXVQYAhIXARFsGAISAEMRSBsABFIhYXtXFxYGG11dBFUAGgpfGAQZGAZPAxgeBlcQGkJBWX99IQNeTFdHV19Pf2g0BltSHVBREwZbUh1eVxoGW1ImQlQWGxNSJ1BKExYYAAofMn03GAYHEUsbGgMBT15WVzsnMU9TWQMBGxccCxgDAhhSIWF7VxMSExtEShIGVxMbEVcZFhJeT1BWE1UWUh1QURNVFR0cQhgSFBQaQTsyIwIYUhteTxIHVwAaX0tXHARSG1ldVxoZHhYRShITAgEKVRgHFB4ATxwYPgYbEwFVGD8UBRYMXkoSVRgcT1NXAx1XAQNeTARVHgFPXlYSVQUHARFZBB4SFk9XVwVVAwUGUl1Zf30hA15MBFUYFAkLGBgbElIcXVcDWVcGAEZdBQZXBg5aXVcBAgABQhY"),
})

ojev.toggle = id:Toggle({
Name = _d("MxpFV1cmGx0b"),
Default = false,
Callback = function(ltah)
if ltah and ojev.role[1] == ojev.role[2] and ojev.role[1] ~= _d("HB9S") then
ojev.enabled = false

pcall(function()
ojev.toggle:UpdateState(false)
end)

ybe:Dialog({
Title = _d("MxpFV1cmGx0b"),
Description = _d("IQNeTFdEVxMBVRgkGRgGTwMYFgcSUg1eTB9V") .. ojev.roleLabel(1) .. _d("XE9lUBYBVxscEVcZEFcAGl8YFgYcFwsRXhgHVwYYWFsSWVcBABFXGRBXHQkRTB8QVwYYXhgEGRgGHBFQFgZXBgARWhJVBB0CVEwfHBkVT1RUBBBZ"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})

return
end

ojev.enabled = ltah

if ltah then
ojev.hasSlot2 = ojev.detectSlot2()

if ojev.hasSlot2 == false then
ybe:Dialog({
Title = _d("MxpFV1cmGx0b"),
Description = _d("IQNeTFdHVx4AXlMEVRsdDFpdE1VaUgZFGBkQEhYcEUwfEFc2GlBUVzcWBhtdXVcmGx0bEV8WGBICDkJLW1UYAE94VhEcGRsbVBglGhgfTwMNR1UUHgpQShIRW1INVF4YBxJSG1ldVwYSEQBfXFcGGx0bEVsWG1cQDkVMGxBZUj1eTQMcGRVPQkwWDARSAF8YBBkYBk8AGAIbAxsDEUwfEBlc"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})
end
end
end,
}, _d("ExpFVygGGx0b"))

function ojev.applyRoles()
if not ojev.enabled then
return
end

if ojev.role[1] == ojev.role[2] and ojev.role[1] ~= _d("HB9S") then
ojev.enabled = false

pcall(function()
ojev.toggle:UpdateState(false)
end)

pcall(function()
ybe:Dialog({
Title = _d("MxpFV1cmGx0bEVcREw"),
Description = _d("IQNeTFdEVxMBVRgkGRgGTwMYFgcSUg1eTB9V") .. ojev.roleLabel(1) .. _d("XE9lUBYBVxscEVcZEFcAGl8YFgYcFwsRXhgHVwYYWFsSWVcTAVUYHgFXEQ5fVhgBVwYOWl1XAQAdT0JUGAEEXE9iXQNVGBwKEUsbGgNSG14YBBoaFxtZURkSVxcDQl1Z"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})
end)

return
end

local ufdq = {}

if ojev.towerSlot() ~= 1 and tqvm.enabled then
tqvm.enabled = false
table.insert(ufdq, _d("MxpFV1chGAUKQw"))

pcall(function()
tqvm.ui:UpdateState(false)
end)
end

if ojev.hardcoreSlot() == nil and swsk.island then
swsk.island = false
table.insert(ufdq, _d("MxpFV1c8BB4OX1xXPRYAC1JXBRA"))

pcall(function()
swsk.islandToggle:UpdateState(false)
end)
end

if ojev.halloweenSlot() == nil and fvtg.run.enabled then
fvtg.run.enabled = false
table.insert(ufdq, _d("MxpFV1c9Fh4DXk8SEBlSO15PEgc"))

pcall(function()
fvtg.toggle:UpdateState(false)
end)
end

if #ufdq > 0 then
pcall(function()
ybe:Dialog({
Title = table.concat(ufdq, _d("Ug5fXFc")) .. _d("UgBXXg"),
Description = _d("PAARSxsaA1IGQhgEEANSG14YAx0WBk9FVwAQBVIOX0FXGBgACh0YBBpXGxsRUBYRVxwARlASBxJSG14YBQAZXE92UQEQVxsbEVlXBhsdGxFZEBQeHEMRVwVVAwcdXxg2AAMdT2JUGAFXHQlXFg"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})
end)
end
end

ojev.oneDropdown = id:Dropdown({
Name = _d("IQNeTFdE"),
Search = false,
Multi = false,
Required = false,

Default = 1,
Options = ojev.optionsFor[1],
Callback = function(wghj)
local bxk = type(wghj) == _d("Bg5TVBI") and wghj[1] or wghj

if type(bxk) == _d("ARtDURkS") and ojev.roleIds[bxk] then
ojev.role[1] = ojev.roleIds[bxk]
ojev.picked[1] = bxk
end

pcall(function()
ojev.oneDropdown:UpdateName(_d("IQNeTFdEV5Dvkxg") .. ojev.roleLabel(1))
end)

if ojev.applyRoles then
ojev.applyRoles()
end
end,
}, _d("AQNeTChEKEA"))

ojev.twoDropdown = id:Dropdown({
Name = _d("IQNeTFdH"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = ojev.optionsFor[2],
Callback = function(pcn)
local wyjq = type(pcn) == _d("Bg5TVBI") and pcn[1] or pcn

if type(wyjq) == _d("ARtDURkS") and ojev.roleIds[wyjq] then
ojev.role[2] = ojev.roleIds[wyjq]
ojev.picked[2] = wyjq
end

pcall(function()
ojev.twoDropdown:UpdateName(_d("IQNeTFdHV5Dvkxg") .. ojev.roleLabel(2))
end)

if ojev.applyRoles then
ojev.applyRoles()
end
end,
}, _d("AQNeTChHKEA"))

pcall(function()
ojev.oneDropdown:UpdateSelection(_d("JgBGXQU"))
end)

pcall(function()
ojev.twoDropdown:UpdateSelection(_d("PD9yGBUUAwYDVEs"))
end)

getgenv().ACBXSlot = ojev

local ub = hcox:Section({
Side = _d("PgpXTA"),
})

ub:Header({
Name = _d("IA5YXFcXGAEc"),
})

ub:Toggle({
Name = _d("MxpFV1cnFhsLEXoYBgQ"),
Default = false,
Callback = function(biv)
tar.enabled = biv
tar.pending = {}
tar.pendingUntil = {}

if biv then
tar.cleared = {}
end
end,
}, _d("ExpFVygHFhsLbloYBgQ"))

ub:Toggle({
Name = _d("MxpFV1ciFh4EEUwYVSUTBlUYNRoEAQ"),
Default = false,
Callback = function(hcdp)
tar.walkToBoss = hcdp
end,
}, _d("ExpFVygCFh4EbkwYKgUTBlVnFRoEAQ"))

local darl
darl = ub:Slider({
Name = _d("JQ5dU1cmBxcKVQ"),
Minimum = 0,
Maximum = 72,
Default = 18,
Precision = 0,
Callback = function(utba)
local rq = math.floor(utba + 0.5)
tar.walkSpeed = rq

if darl and rq ~= utba then
darl:UpdateValue(rq)
end
end,
}, _d("BQ5dUygGBxcKVQ"))

ub:Dropdown({
Name = _d("IA5YXFcxHhQJWFsCGQML"),
Search = false,
Multi = true,
Required = false,
Default = { _d("PABDVRYZ") },
Options = keb,
Callback = function(ach)
local exp = {}

if type(ach) == _d("Bg5TVBI") then
for idn, vjad in ipairs(keb) do
if ach[vjad] then
table.insert(exp, srqe[vjad])
end
end
end

if #exp == 0 then
exp = { _d("HABDVRYZ") }
end

tar.difficulties = exp
end,
}, _d("AA5YXCgRHhQJWFsCGQML"))

function tar.pickedIds(vrcd)
local lgid = {}

if type(vrcd) == _d("Bg5TVBI") then
for pix, kcy in ipairs(gqj) do
if vrcd[kcy] and ixq[kcy] then
table.insert(lgid, ixq[kcy])
end
end
elseif type(vrcd) == _d("ARtDURkS") and ixq[vrcd] then
lgid = { ixq[vrcd] }
end

return lgid
end

ub:Dropdown({
Name = _d("IA5YXFc3GAEc"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = gqj,
Callback = function(tksj)
tar.picks[1] = tar.pickedIds(tksj)
tar.cursor[1] = 1
tar.losses[1] = {}
end,
}, _d("AA5YXCgXGAEc"))

tar.boss2Dropdown = ub:Dropdown({
Name = _d("IA5YXFc3GAEcERAkGRgGTwMR"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = gqj,
Callback = function(wveq)
tar.picks[2] = tar.pickedIds(wveq)
tar.cursor[2] = 1
tar.losses[2] = {}
end,
}, _d("AA5YXCgXGAEcbksbGgMtXQ"))

pcall(function()
tar.boss2Dropdown:SetVisibility(false)
end)

task.spawn(function()
local bk = nil

while ldjd() do
local pdcj = ojev.splitNpc()

if pdcj ~= bk then
bk = pdcj

local huyt = tar.boss2Dropdown

if huyt then
pcall(function()
huyt:SetVisibility(pdcj)
end)
end
end

task.wait(0.5)
end
end)

zfz:Paragraph({
Header = _d("MxpFV1czHhUHRQ"),
Body = _d("IQpdXRQBVx0BVBgYB1cfAENdVzsnMRwRXgUaGlIbWV1XAhgAA1VLVxcSHgBGFg"),
})

for xgx, jwge in ipairs(ok) do
zfz:Dropdown({
Name = jwge.name,
Search = true,
Multi = true,
Required = false,
Default = {},
Options = jwge.options,
Callback = function(iayg)
local rgx = {}

if type(iayg) == _d("Bg5TVBI") then
if iayg.All then
for tcjt, tbk in ipairs(jwge.ids) do
table.insert(rgx, tbk)
end
else
for bzp, syd in ipairs(jwge.options) do
if iayg[syd] and jwge.byName[syd] then
table.insert(rgx, jwge.byName[syd])
end
end
end
elseif type(iayg) == _d("ARtDURkS") then
if iayg == _d("MwNd") then
for dku, orh in ipairs(jwge.ids) do
table.insert(rgx, orh)
end
else
rgx = { jwge.byName[iayg] }
end
end

am.selectedByWorld[jwge.name] = rgx
end,
}, _d("HB9SZw") .. jwge.id)
end

zfz:Toggle({
Name = _d("MxpFV1c2GB8fXV0DEFchG15KDg"),
Default = false,
Callback = function(xglm)
am.story = xglm
am.battlePending = false
am.battlePendingUntil = 0
end,
}, _d("ExpFVygWGB8fXV0DECgBG15KDg"))

am.storyDropdown = zfz:Dropdown({
Name = _d("NgZXXh4WAh4bWF0E"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = xokp,
Callback = function(kftw)
local erj = type(kftw) == _d("Bg5TVBI") and kftw[1] or kftw

if type(erj) == _d("ARtDURkS") and mvjy[erj] then
am.storyDifficulty = mvjy[erj]
end
end,
}, _d("FgZXXh4WAh4bWF0E"))

pcall(function()
am.storyDropdown:UpdateSelection(xokp[1])
end)

pcall(function()
am.storyDropdown:UpdateName(_d("NgZXXh4WAh4bWF0EVZXyzRE") .. xokp[1])
end)

zfz:Paragraph({
Header = _d("OgBGGDYAAx1PclcaBRsXG1QYJAEYABYRTxgHHAE"),
Body = _d("NAZWUAMGVxcZVEoOVQQGAENBVzsnMU8cGDkUGhcEEUwfBxgHCFkYPgYSGQ5YGFpVGBxPRVASVRgcChFcHhMRGwxEVAMMVxMNXk4SWVcFAENTHhsQUhtZXVcUBRcOQhgeG1cdHVVdBVUWHAsRWxgYHhwIEVoWFhxSHV5NGRFXExwRWxgaGxYARlYEVRQeClBKWX99OxsRShIFGxMMVEtXAR8XT1BKEhRXFh1eSBMaABwcEU8fHBsXT1hMVxwEUgBfFFcUGRZPXV0WAxIBT0NZHhFXEABCSxIGVxMDXlYSWw"),
})

local hyoj = tvp:Section({
Side = _d("PgpXTA"),
})

hyoj:Header({
Name = _d("JgBGXQU"),
})

local nwz
local sl

local eos = {
remotes = {},
watcher = false,
hidMenu = false,

hardWatch = {},
}

pcall(function()
local nmg = getgenv().ACBXHardWatch

if type(nmg) == _d("Bg5TVBI") then
for kkga, ruib in pairs(nmg) do
pcall(function()
if ruib.Connected then
ruib:Disconnect()
end
end)
end
end

getgenv().ACBXHardWatch = eos.hardWatch
end)

function eos.hardPick(zg)
zg = zg == true

for xawq, avto in ipairs({ _d("MA5FTBsQMAcG"), _d("MA5FTBsQMAcGAw") }) do
local hfcs = rprq:FindFirstChild(avto)

if hfcs then
if hfcs:GetAttribute(_d("JgBGXQU9FgALYVEUHg")) ~= zg then
pcall(function()
hfcs:SetAttribute(_d("JgBGXQU9FgALYVEUHg"), zg)
end)
end

if hfcs:GetAttribute(_d("JgBGXQU9FgALY00Z")) ~= nil and hfcs:GetAttribute(_d("JgBGXQU9FgALY00Z")) ~= zg then
pcall(function()
hfcs:SetAttribute(_d("JgBGXQU9FgALY00Z"), zg)
end)
end
end
end
end

function eos.pinMode()
if not (tqvm.enabled or tqvm.nightmare) then
return
end

local hwv = tqvm.nightmare == true

for bbc, vpo in ipairs({ _d("MA5FTBsQMAcG"), _d("MA5FTBsQMAcGAw") }) do
local pwu = rprq:FindFirstChild(vpo)

if pwu then
if pwu:GetAttribute(_d("JgBGXQU9FgALYVEUHg")) ~= hwv then
pcall(function()
pwu:SetAttribute(_d("JgBGXQU9FgALYVEUHg"), hwv)
end)
end

local ke = eos.hardWatch[pwu]

if ke and ke.Connected == false then
eos.hardWatch[pwu] = nil
ke = nil
end

if ke == nil then
local ijsm, yzih = pcall(function()
return pwu:GetAttributeChangedSignal(_d("JgBGXQU9FgALYVEUHg")):Connect(function()
if not (tqvm.enabled or tqvm.nightmare) then
return
end

local irb = tqvm.nightmare == true

if pwu.Parent and pwu:GetAttribute(_d("JgBGXQU9FgALYVEUHg")) ~= irb then
pcall(function()
pwu:SetAttribute(_d("JgBGXQU9FgALYVEUHg"), irb)
end)
end
end)
end)

if ijsm then
eos.hardWatch[pwu] = yzih
end
end
end
end
end

function eos.pauseRows()
local oga = ga:FindFirstChild(_d("IgNQQRIHMAcG")) and ga.PlayerGui:FindFirstChild(_d("IQpFTB4bEAEoRFE"))

if not oga then
return nil, nil
end

return oga:FindFirstChild(_d("Ig5ESxI8GRQGX1EDED4cH0RM"), true), oga:FindFirstChild(_d("Ig5ESxI8GRQGX1EDEDQaClJT"), true)
end

function eos.pauseState()
local mlaw = ga:FindFirstChild(_d("IgNQQRIHMAcG")) and ga.PlayerGui:FindFirstChild(_d("IQpFTB4bEAEoRFE"))
local bbo = mlaw and mlaw:FindFirstChild(_d("NQpFaxIBAxsBVks"), true)

if not bbo then
return nil
end

local oiwd, phf = pcall(function()
return bbo:Invoke()
end)

if oiwd and type(phf) == _d("Bg5TVBI") then
return phf.pauseInfiniteEnabled == true
end

return nil
end

function eos.pauseAt(kzx, rwn)
rwn = math.max(1, math.floor(tonumber(rwn) or 1))

local awdd, xqf = eos.pauseRows()

if not (awdd and xqf) then
return false
end

local usv = pcall(function()
if tonumber(awdd.Text) ~= rwn then
awdd.Text = tostring(rwn)

if getconnections then
for juxu, vix in ipairs(getconnections(awdd.FocusLost)) do
pcall(function()
vix:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end
end)

if kzx ~= nil then
local lfj = eos.pauseState()

if lfj ~= nil and lfj ~= kzx and getconnections then
pcall(function()
for giq, cq in ipairs(getconnections(xqf.MouseButton1Click)) do
pcall(function()
cq:Fire()
end)
end
end)
end
end

return usv
end

function eos.restorePause()
khax.triggered = false

if khax.enabled and khax.floor > 0 then
eos.pauseAt(true, khax.floor)

pcall(function()
fw.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = khax.floor,
})
end)

return
end

pcall(function()
fw.SaveClientData:FireServer({
pauseInfiniteEnabled = false,
pauseInfiniteAt = 1,
})
end)

eos.pauseAt(false, 1)
end

function eos.remote(srl)
local esk = eos.remotes[srl]

if esk and esk.Parent then
return esk
end

local sdlw = mkd:FindFirstChild(_d("IApcVwMQBA"))
local zpvl = sdlw and sdlw:FindFirstChild(srl)

if zpvl then
eos.remotes[srl] = zpvl
end

return zpvl
end

function eos.historyOpen()
for wdr, fktu in ipairs({ _d("MA5FTBsQMAcG"), _d("MA5FTBsQMAcGAw") }) do
local esnz = rprq:FindFirstChild(fktu)
local yzf = esnz and esnz:FindFirstChild(_d("JgBGXQU9HgEbXkoOMwUTAlQ"))

if yzf and yzf.Visible then
return true
end
end

return false
end

function eos.generationOpen()
local bfv = rprq:FindFirstChild(_d("JgBGXQUnEgEaXUwwAB4"))
local fnru = bfv and bfv:FindFirstChild(_d("IApCTRsBMQAOXF0"))

return fnru ~= nil and fnru.Visible
end

function eos.standDown(zpt)
if not eos.hidMenu then
local lfv = true

pcall(function()
lfv = ybe:GetState() ~= false
end)

if lfv then
eos.hidMenu = true

pcall(function()
ybe:SetState(false)
end)
end
end

if eos.watcher then
return
end

eos.watcher = true

task.spawn(function()

local tzqf = os.clock() + 6

while ldjd() and os.clock() < tzqf and not zpt() do
task.wait(0.2)
end

while ldjd() and zpt() do
task.wait(0.4)
end

eos.watcher = false

if eos.hidMenu then
eos.hidMenu = false

pcall(function()
ybe:SetState(true)
end)
end
end)
end

tqvm.floorAt = 0
tqvm.battleAt = 0
tqvm.floor = nil
tqvm.manualPause = false

task.spawn(function()
local xb = ph(_d("MA5FTBsQIgILUEwS"))
local rkyc = ph(_d("IRZfWyMaABcdd1QYGgU"))
local vqim = ph(_d("MA5FTBsQMhwL"))
local jbgy = ph(_d("JgBGXQUnAhwqX1wSEQ"))

if xb then
xb.OnClientEvent:Connect(function()
tqvm.battleAt = os.clock()
end)
end

if rkyc then
rkyc.OnClientEvent:Connect(function(qrtc)
tqvm.floorAt = os.clock()

if type(qrtc) == _d("HBpcWhIH") and qrtc > 1 then
tqvm.floor = qrtc
else
tqvm.floor = nil
end
end)
end

if vqim then
vqim.OnClientEvent:Connect(function(pk)
if type(pk) == _d("Bg5TVBI") and pk.mode == _d("BgBGXQU") then
tqvm.floorAt = os.clock()
end
end)
end

if jbgy then
jbgy.OnClientEvent:Connect(function()

tqvm.lastRunEnded = {
clock = os.clock(),
floor = tqvm.floor,
}

task.delay(1, function()
local vgp = rprq:FindFirstChild(_d("JgBGXQUnEgEaXUwwAB4"))
local aim = vgp and vgp:FindFirstChild(_d("IApCTRsBMQAOXF0"))
local duzh = {}

if aim then
for srmh, juf in ipairs(aim:GetDescendants()) do
if juf:IsA(_d("JgpJTDsUFRcD")) and juf.Visible and juf.Text ~= _d("") and #duzh < 12 then
duzh[#duzh + 1] = juf.Text
end
end
end

if tqvm.lastRunEnded then
tqvm.lastRunEnded.texts = table.concat(duzh, _d("UhMR"))
end
end)

tqvm.floorAt = 0
tqvm.battleAt = 0
tqvm.floor = nil

if tqvm.manualPause then
eos.restorePause()
end
end)
end

end)

local function ahp()
local ekr = os.clock()

if ekr - (tqvm.floorAt or 0) < 90 and ekr - (tqvm.battleAt or 0) < 12 then
return true
end

for dxu, ixy in ipairs({ _d("MA5FTBsQMAcG"), _d("MA5FTBsQMAcGAw") }) do
local bml = rprq:FindFirstChild(ixy)

if bml then

local antf = bml:FindFirstChild(_d("JgBGXQUzGx0AQ3QWFxIe"))

if antf and antf.Visible then
return true
end

local ecbd = bml:FindFirstChild(_d("NANeVwUmFAAKVFY"))

if ecbd and ecbd.Visible then
return true
end

local keeg = bml:FindFirstChild(_d("MA5FTBsQJBEdVF0Z"))

if keeg and keeg.Visible then
local mmcx = keeg:FindFirstChild(_d("IxpYWxwyHgQKZEg1AAMGAF8"))

if mmcx and mmcx.Visible then
return true
end
end
end
end

return false
end

function eos.hardNow()

local cb = rprq:FindFirstChild(_d("MA5FTBsQMAcG"))
local zzmn = cb and cb:GetAttribute(_d("JgBGXQU9FgALYVEUHg"))

if zzmn ~= nil then
return zzmn == true
end

local sozt = tar.misc.util.profile

return type(sozt) == _d("Bg5TVBI") and sozt.lastTowerHard == true
end

function eos.endIfWrongMode(oedf)
if not ahp() or eos.hardNow() == (oedf == true) then
return false
end

pcall(function()
if type(sl) == _d("FBpfWwMcGBw") then
sl()
else
fw.EndTowerRemote:FireServer(1)
end
end)

tqvm.floor = nil

return true
end

function eos.hardPickNow()
for jlur, yca in ipairs({ _d("MA5FTBsQMAcG"), _d("MA5FTBsQMAcGAw") }) do
local ui = rprq:FindFirstChild(yca)
local ptdl = ui and ui:GetAttribute(_d("JgBGXQU9FgALYVEUHg"))

if ptdl ~= nil then
return ptdl == true
end
end

return nil
end

function eos.parked()
for rkze, tyoo in ipairs({ _d("MA5FTBsQMAcG"), _d("MA5FTBsQMAcGAw") }) do
local sp = rprq:FindFirstChild(tyoo)

if sp then
local efv = sp:FindFirstChild(_d("JgBGXQUzGx0AQ3QWFxIe"))
local miki = sp:FindFirstChild(_d("NANeVwUmFAAKVFY"))
local qjd = sp:FindFirstChild(_d("MA5FTBsQJBEdVF0Z"))

if efv and efv.Visible
and not (miki and miki.Visible)
and not (qjd and qjd.Visible) then
return true
end
end
end

return false
end

tqvm.ui = hyoj:Toggle({
Name = _d("MxpFV1chGAUKQw"),
Default = false,
Callback = function(fs)

if tqvm.quiet then
return
end

tqvm.enabled = fs
tqvm.pending = false
tqvm.pendingUntil = 0

if fs then

if ojev.enabled and ojev.role[1] ~= _d("BgBGXQU") then
tqvm.enabled = false

pcall(function()
tqvm.ui:UpdateState(false)
end)

pcall(function()
ybe:Dialog({
Title = _d("MxpFV1chGAUKQxgYExE"),
Description = _d("IQNeTFdEVxscEUsSAVcGABE") .. ojev.roleName(1) .. _d("XE9lUBJVPhwJWFYeAQ5SLFBLAxkSUgBfVA5VBAYOQ0wEVRgcT0JUGAFXQ0MRSxhVBBcbEWsbGgNSXhFMGFUjHRhUSlcTHgAcRRY"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})
end)

return
end

if ojev.otherTowerOn(_d("BgBGXQU")) then
tqvm.enabled = false

pcall(function()
tqvm.ui:UpdateState(false)
end)

pcall(function()
ybe:Dialog({
Title = _d("MxpFV1chGAUKQxgYExE"),
Description = _d("MwFeTB8QBVIbXk8SB1cTGkVXGhQDGwBfGB4GVxMDQ10WEQ5SAF8UVxQZFk9FUB4GVxMMUlcCGwNSAF9UDlUWHgNeTwRVGBwKEUwYAhIAT0NNGVUWBk9QGAMcGhdBEWwCBxlSG1lZA1UYHAoRVxETVxQGQ0sDWVcdHRFMAgcZUgBfGDYAAx1PYlQYAVcBABFdFhYfUhxdVwNVEBcbQhgeAQRSAEZWVwEYBQpDFg"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})
end)

return
end

tqvm.nightmare = false

pcall(function()
tqvm.quiet = true
tqvm.nightmareToggle:UpdateState(false)
tqvm.quiet = false
end)

tqvm.manualPause = false
tqvm.paused = false
eos.restorePause()
tqvm.pauseArmed = false

eos.endIfWrongMode(false)
eos.hardPick(false)

return
end

if not ahp() then
return
end

tqvm.paused = true
local zr = nwz()

ybe:Notify({
Title = _d("MxpFV1chGAUKQxgYExE"),
Description = zr and _d("JgBGXQVVBQcBEUgWAAQXCx8") or _d("IBpfGB4GVx4GR11bVRUHGxFWGFUVAApQU1cXAgYbXlZXExgHAVUW"),
Lifetime = 5,
})
end,
}, _d("ExpFVygBGAUKQw"))

tqvm.nightmareToggle = hyoj:Toggle({
Name = _d("MxpFV1c7HhUHRVUWBxJSO15PEgc"),
Default = false,
Callback = function(cbh)
if tqvm.quiet then
return
end

tqvm.nightmare = cbh

if not cbh then

tqvm.enabled = false
tqvm.pending = false
tqvm.pendingUntil = 0

eos.hardPick(false)

pcall(function()
tqvm.quiet = true
tqvm.ui:UpdateState(false)
tqvm.quiet = false
end)

if ahp() then
tqvm.paused = true
local oyt = nwz()

ybe:Notify({
Title = _d("MxpFV1c7HhUHRVUWBxJSO15PEgdXHQlX"),
Description = oyt and _d("PAZWUAMYFgAKEUoCG1cCDkRLEhFZ") or _d("IBpfGB4GVx4GR11bVRUHGxFWGFUVAApQU1cXAgYbXlZXExgHAVUW"),
Lifetime = 5,
})
end

return
end

if ojev.enabled and ojev.role[1] ~= _d("BgBGXQU") then
tqvm.nightmare = false

pcall(function()
tqvm.quiet = true
tqvm.nightmareToggle:UpdateState(false)
tqvm.quiet = false
end)

pcall(function()
ybe:Dialog({
Title = _d("MxpFV1c7HhUHRVUWBxJSO15PEgdXHQlX"),
Description = _d("PAZWUAMYFgAKEWwYAhIAT1JXAhsDAU9QS1chGAUKQxgeG1cBA15MV0RbUg5fXFcMGAcdEUsbGgNSXhFRBFUYHE8") .. ojev.roleName(1) .. _d("Uh1YXx8BVxwARhZXJhIGT0JUGAFXQ09FV1chGAUKQxgRHAUBGx8"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})
end)

return
end

pcall(function()
tqvm.quiet = true
tqvm.ui:UpdateState(false)
tqvm.quiet = false
end)

tqvm.enabled = true
tqvm.manualPause = false
tqvm.paused = false

eos.restorePause()
tqvm.pauseArmed = false

eos.endIfWrongMode(true)
eos.hardPick(true)

tqvm.pending = false
tqvm.pendingUntil = 0
end,
}, _d("ExpFVygbHhUHRVUWBxItG15PEgc"))

hyoj:Header({
Name = _d("MxpFV1clFgccVBgjGgAXHQ"),
})

local gjbz

gjbz = hyoj:Toggle({
Name = _d("MxpFV1clFgccVBgxGRgdHQ"),
Default = false,
Callback = function(jkn)
khax.triggered = false

if jkn and khax.floor <= 0 then
khax.enabled = false

pcall(function()
gjbz:UpdateState(false)
end)

pcall(function()
fw.SaveClientData:FireServer({ pauseInfiniteEnabled = false })
end)

ybe:Dialog({
Title = _d("MxpFV1clFgccVBgxGRgdHQ"),
Description = _d("IQpFGBZVBxMaQl1XExsdAEMYFhcYBAoRCFcTHgAcRRhaVTYHG14YJxQCAQoRbBgCEgBPX10SEQRSG14YHBsYBU9GUBIHElIbXhgEARgCQQ"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})

return
end

khax.enabled = jkn

pcall(function()
fw.SaveClientData:FireServer({
pauseInfiniteEnabled = jkn,
pauseInfiniteAt = khax.floor,
})
end)
end,
}, _d("ExpFVygFFgccVGcRGRgdHQ"))

hyoj:Input({
Name = _d("Ig5ESxJVFgZPV1QYGgU"),
Placeholder = _d("F0FWFldARw"),
AcceptedCharacters = _d("PBpcWhIHBA"),
Callback = function(fncv)
local kcyd = tonumber(fncv) or 0

if kcyd < 0 then
kcyd = 0
end

if kcyd == khax.floor then
return
end

khax.floor = kcyd
khax.triggered = false

if kcyd <= 0 and khax.enabled then
khax.enabled = false

pcall(function()
gjbz:UpdateState(false)
end)
end

pcall(function()
fw.SaveClientData:FireServer({
pauseInfiniteAt = kcyd,
pauseInfiniteEnabled = khax.enabled,
})
end)
end,
}, _d("Ag5ESxIqFgYwV1QYGgU"))

hyoj:Button({
Name = _d("Ig5ESxJVIx0YVEo"),
Callback = function()
local pyfm = false

pcall(function()
pyfm = nwz()
end)

if pyfm then

tqvm.manualPause = true
return
end

ybe:Dialog({
Title = _d("Ig5ESxJVIx0YVEo"),
Description = _d("PAARVB4DElIbXk8SB1cAGl8YAxpXAg5ESxJVBRsIWUxXGxgFQQ"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})
end,
})

hyoj:Header({
Name = _d("MxpFV1cyHgQKEW0H"),
})

nmr.toggle = hyoj:Toggle({
Name = _d("MxpFV1cyHgQKEW0H"),
Default = false,
Callback = function(asux)
nmr.triggered = false

if asux and nmr.floor <= 0 then
nmr.enabled = false

pcall(function()
nmr.toggle:UpdateState(false)
end)

ybe:Dialog({
Title = _d("MxpFV1cyHgQKEW0H"),
Description = _d("IQpFGBZVEBsZVBgCBVcUA15XBVUWEABHXVdFVxQGQ0sDVVpSLkRMGFUwGxlUGCIFVxwKVFwEVQMdT1pWGAJXBQdUShJVAx1PQkwYBVk"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})

return
end

nmr.enabled = asux
end,
}, _d("ExpFVygSHgQKbk0H"))

hyoj:Input({
Name = _d("NQZHXVcAB1IAXxgRGRgdHQ"),
Placeholder = _d("F0FWFldCRw"),
AcceptedCharacters = _d("PBpcWhIHBA"),
Callback = function(kro)
local hmj = tonumber(kro) or 0

if hmj < 0 then
hmj = 0
end

if hmj == nmr.floor then
return
end

nmr.floor = hmj
nmr.triggered = false

if hmj <= 0 and nmr.enabled then
nmr.enabled = false

pcall(function()
nmr.toggle:UpdateState(false)
end)
end
end,
}, _d("FQZHXSgABy0AX2cRGRgdHQ"))

nmr.weatherToggle = hyoj:Toggle({
Name = _d("MxpFV1cSHgQKEU0HVRgcT0ZdFgEfFx0"),
Default = false,
Callback = function(blr)
nmr.weatherTriggered = false

if blr and next(nmr.weathers) == nil then
nmr.weatherEnabled = false

pcall(function()
nmr.weatherToggle:UpdateState(false)
end)

ybe:Dialog({
Title = _d("JQpQTB8QBVIoWE4SVSIC"),
Description = _d("JgZSU1cUA1IDVFkEAVcdAVQYABAWBgdUSlcXEh4ARhgRHAUBGxEVVxoDGgpDTx4GElIbWV0FEFcbHBFWGAEfGwFWGAMaVxUGR11XAAdSAF8W"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})

return
end

nmr.weatherEnabled = blr
end,
}, _d("ExpFVygSHgQKbk0HKhgcMEZdFgEfFx0"))

hyoj:Dropdown({
Name = _d("NQZHXVcAB1IYVFkDHRIAHA"),
Multi = true,
Required = false,
Options = { _d("JhZBUBgaGQ"), _d("MANYQg0UBRY"), _d("PgZWUAMbHhwI"), _d("JQZfXAQBGAAC"), _d("IQdQSh4bEBMB"), _d("IQZfXwIZFgAGRUE"), _d("PwBfWQUWH1IrXlUWHBk"), _d("JABYXA"), _d("Pw5VXVccGVInVFkBEBk"), _d("Pw5fXxY") },
Callback = function(int)
nmr.weathers = {}

if type(int) == _d("Bg5TVBI") then
for hcms, swv in pairs(int) do
if swv then
nmr.weathers[hcms] = true
end
end
end

nmr.weatherTriggered = false
end,
}, _d("FQZHXSgABy0YVFkDHRIAHA"))

hyoj:Input({
Name = _d("PwZfURoAGlIJXVcYBwQ"),
Placeholder = _d("Qk8MGBYbDlIJXVcYBw"),
AcceptedCharacters = _d("PBpcXQUcFA"),
Callback = function(cqa)
local wfvk = math.floor(tonumber(cqa) or 0)

if wfvk < 0 then
wfvk = 0
end

nmr.weatherMinFloor = wfvk
nmr.weatherTriggered = false
end,
}, _d("HwZfURoAGi0JXVcYBwQ"))

hyoj:Button({
Name = _d("NQZHXVcgB1I7Xk8SBw"),
Callback = function()
if not ahp() then
ybe:Dialog({
Title = _d("NQZHXVcgB1I7Xk8SBw"),
Description = _d("PAARVB4DElIbXk8SB1cAGl8YAxpXFQZHXVcAB1IdWF8fAVccAEYW"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})

return
end

ybe:Dialog({
Title = _d("NQZHXVcgB1I7Xk8SBw"),
Description = _d("NABDXhIcA1IbWV1XFgIAHVRWA1UDHRhUSlcHAhxQEWwfHARSDFBWGRoDUg1UGAIbEx0BVBY"),
Buttons = {
{
Name = _d("NQARWhYWHA"),
},
{
Name = _d("NQZHXVcABw"),
Callback = function()
local lftt = false

pcall(function()
lftt = sl()
end)

if lftt then
return
end

task.defer(function()
task.wait(0.3)

ybe:Dialog({
Title = _d("NQZHXVcgB1I7Xk8SBw"),
Description = _d("PAARXx4DElIaQRgVAAMGAF8YFhsEBQpDXRNVWlIbWV1XBwIcT1xZDlUWHh1UWRMMVxAKEVcBEAVc"),
Buttons = {
{
Name = _d("NQBFGB4B"),
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

hyoj:Button({
Name = _d("MQdUWxxVGx0cQhgfHAQGAENB"),
Callback = function()
local fjcj = eos.remote(_d("IApATRIGAyYARl0FPR4BG15KDg"))

if not fjcj then
ybe:Dialog({
Title = _d("PgBCS1c9HgEbXkoO"),
Description = _d("JgdYS1cXAhsDVRgfFARSAV4YAxoAFx0RUB4GAx0dSBgFEBodG1QW"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})

return
end

eos.standDown(eos.historyOpen)

pcall(function()
fjcj:FireServer()
end)
end,
})

hyoj:Button({
Name = _d("MQdUWxxVEBcBVEoWAR4dAUI"),
Callback = function()

local ucxu = rprq:FindFirstChild(_d("JgBGXQUnEgEaXUwwAB4"))
local jw = ucxu and ucxu:FindFirstChild(_d("PR9UVjAQGToGQkwYBw4"))

if not jw then
ybe:Dialog({
Title = _d("NQpfXQUUAxsAX0s"),
Description = _d("JgdYS1cXAhsDVRgfFARSAV4YEBAZFx1QTB4aGQFPRlEZERgFQQ"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})

return
end

eos.standDown(eos.generationOpen)

pcall(function()
jw:Fire()
end)
end,
})

am.bossTeams.towerSection = tvp:Section({
Side = _d("PgpXTA"),
})

am.bossTeams.towerSection:Header({
Name = _d("JgBGXQVVIxcOXEs"),
})

am.bossTeams.towerSection:Paragraph({
Header = _d("OgBGGAMaABcdEUwSFBoBT0ZXBR4"),
Body = _d("PQlXAlcQFhEHEUoCG1cHHFRLVwIfExtUThIHVwYKUFVXHAMBT0JUGAFXEwNDXRYRDlIHXlQTBll4ZX5WTVUSEwxZGAMaABcdEVoSGRgFT0NNGQZXBQZFUFcBHxdPRV0WGFcCBlJTEhFXFABDGB4BWQ"),
})

am.bossTeams.towerToggle = am.bossTeams.towerSection:Toggle({
Name = _d("JgBGXQVVIxcOXEs"),
Default = false,
Callback = function(okw)
am.bossTeams.towersOn = okw
end,
}, _d("BgBGXQUqAxcOXEs"))

for ae, uti in ipairs({
{ kind = _d("BgBGXQU"), name = _d("OwFXURkcAwtPclkEARsXTx4YORwQGhtcWQUQ") },
{ kind = _d("Gg5DXBQaBRc"), name = _d("OxxdWRkRVzoOQ1wUGgUX") },
}) do
local di = math.clamp(math.floor(tonumber(am.bossTeams.towerPicked[uti.kind]) or 1), 1, 4)

am.bossTeams.towerPicked[uti.kind] = di

am.bossTeams.towerUi[uti.kind] = am.bossTeams.towerSection:Dropdown({
Name = uti.name,
Search = false,
Multi = false,
Required = false,
Default = di,
Options = { _d("JgpQVVdE"), _d("JgpQVVdH"), _d("JgpQVVdG"), _d("JgpQVVdB") },
Callback = function(wrz)
local osro = type(wrz) == _d("Bg5TVBI") and wrz[1] or wrz
local lump = type(osro) == _d("ARtDURkS") and tonumber(osro:match(_d("WkpVE14"))) or nil

if lump then
am.bossTeams.towerPicked[uti.kind] = lump
am.bossTeams.save()
end

pcall(function()
am.bossTeams.towerUi[uti.kind]:UpdateName(uti.name .. _d("Uo2xmlc") .. (osro or _d("JgpQVVdE")))
end)
end,
}, _d("BgpQVSgBGAUKQ2c") .. uti.kind)

pcall(function()
am.bossTeams.towerUi[uti.kind]:UpdateSelection(_d("JgpQVVc") .. tostring(di))
am.bossTeams.towerUi[uti.kind]:UpdateName(uti.name .. _d("Uo2xmlchEhMCEQ") .. tostring(di))
end)
end

am.bossTeams.towerSection:Header({
Name = _d("IRhQSFcaGVIJXVcYBw"),
})

am.bossTeams.towerSection:Paragraph({
Header = _d("IRhQSFcBEhMCEVcZVRZSCV1XGAc"),
Body = _d("JgdUGBAUGhdIQhgYAhlSHEZZB1lXHABFGBZVBxMaQl1ZVTITDFkYBQAbF09YS1cUVxQDXlcFVRYcCxFMHxBXBgpQVVcCGAABEV4FGhpSG1lZA1URHgBeSlcaGV5PRkoeAQMXARFRGQEYUhtZXVcSFh8KFktXJhIGG1hWEAZXX1EReQIBGFI7VFkaVSQFDkEYRlUWHAsRCltVBB1PRVASVRATAlQYGhQcFxwRTB8QVwEYWEwUHVcbG0JdGxNXBQdUVlcUVwAaXxgEARYAG0IYAx0WBk9XVBgaBVxPf1cDHR4cCBFRBFUEBgBBSBIRVxMBVRgDHRJSHURWVx4SFx9CGB4BBFIcXVcDW314LhFbFgYDHgoRSgIbVxUKRUtXAR8XT0JZGhBXARhYTBQdVxQdXlVXAR8bHBFIFhsSHkMRWhIWFgccVBgDHRJSCFBVElIEUgBGVlcGABMfEVcZGQ5SCVhKEgZXGwFCURMQVzsBV1EZHAMXT2NXGBgEXGU7dBIUARdPUBgRGRgdHRFZA1VHUhteGAMABRxPRVAWAVcAGl1dVxoRFEE"),
})

function am.bossTeams.swapStatusText()
local ckky = am.bossTeams.swap
local dovj = {}

if ckky.on then
table.insert(dovj, _d("PQERFVcCBRsbRV0ZVQMdT0VQElUQEwJUHwRVNgcbXhgjEBYfT2JPFgVXAABGS1k"))
else
table.insert(dovj, _d("PQlXGFpVAxoKEV8WGBJVHBFLABQHUgZCGBsQEQZPUFQYGxJc"))
end

local osqm = {
{ index = 1, floor = ckky.floor, team = ckky.team },
{ index = 2, floor = ckky.floor2, team = ckky.team2 },
}

for jkl, vhd in ipairs(osqm) do
if vhd.floor > 0 then
table.insert(dovj, string.format(_d("IRhQSFdQE0hPZV0WGFdXCxFeBRoaUgldVxgHV1cL"), vhd.index, vhd.team, vhd.floor))
else
table.insert(dovj, string.format(_d("IRhQSFdQE0hPXl4RVV8cABFeGxoYAE9CXQNc"), vhd.index))
end
end

if am.bossTeams.swapMessage ~= _d("") then
table.insert(dovj, am.bossTeams.swapMessage)
end

return table.concat(dovj, _d("eA"))
end

function am.bossTeams.paintSwap()
pcall(function()
am.bossTeams.swapStatus:UpdateBody(am.bossTeams.swapStatusText())
end)
end

am.bossTeams.swapToggle = am.bossTeams.towerSection:Toggle({
Name = _d("IRhQSFcBEhMCEVcZVREeAF5K"),
Default = am.bossTeams.swap.on,
Callback = function(mxb)
am.bossTeams.swap.on = mxb

am.bossTeams.swapReset()

am.bossTeams.swapApply()
am.bossTeams.save()
end,
}, _d("ARhQSCgBEhMCblcZKhEeAF5K"))

am.bossTeams.swapInput = am.bossTeams.towerSection:Input({
Name = _d("NANeVwU"),
Placeholder = _d("F0FWFldAR0JPGQhXSFcdCVcR"),
AcceptedCharacters = _d("PBpcXQUcFA"),
Callback = function(zjxs)
local bju = tonumber(type(zjxs) == _d("ARtDURkS") and zjxs:match(_d("WkpVE14")) or zjxs)

if bju then
am.bossTeams.swap.floor = bju
am.bossTeams.swapReset()
am.bossTeams.swapApply()
am.bossTeams.save()
end
end,
}, _d("FANeVwU"))

am.bossTeams.swapDropdown = am.bossTeams.towerSection:Dropdown({
Name = _d("IRhQSFcBGA"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(am.bossTeams.swap.team) or 1), 1, 4),
Options = { _d("JgpQVVdE"), _d("JgpQVVdH"), _d("JgpQVVdG"), _d("JgpQVVdB") },
Callback = function(drm)
local lxaj = type(drm) == _d("Bg5TVBI") and drm[1] or drm
local ebdl = type(lxaj) == _d("ARtDURkS") and tonumber(lxaj:match(_d("WkpVE14"))) or nil

if ebdl then
am.bossTeams.swap.team = ebdl
am.bossTeams.swapReset()
am.bossTeams.swapApply()
am.bossTeams.save()
end

pcall(function()
am.bossTeams.swapDropdown:UpdateName(_d("IRhQSFcBGFKNsZpX") .. (lxaj or _d("JgpQVVdE")))
end)

am.bossTeams.paintSwap()
end,
}, _d("ARhQSCgBGA"))

am.bossTeams.swapInput2 = am.bossTeams.towerSection:Input({
Name = _d("NANeVwVVRQ"),
Placeholder = _d("F0FWFldER0JfERBHVUpSAFdeXg"),
AcceptedCharacters = _d("PBpcXQUcFA"),
Callback = function(fpk)
local oce = tonumber(type(fpk) == _d("ARtDURkS") and fpk:match(_d("WkpVE14")) or fpk)

if oce then
am.bossTeams.swap.floor2 = oce
am.bossTeams.swapReset()
am.bossTeams.swapApply()
am.bossTeams.save()
end
end,
}, _d("FANeVwUqRQ"))

am.bossTeams.swapDropdown2 = am.bossTeams.towerSection:Dropdown({
Name = _d("IRhQSFcBGFJd"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(am.bossTeams.swap.team2) or 1), 1, 4),
Options = { _d("JgpQVVdE"), _d("JgpQVVdH"), _d("JgpQVVdG"), _d("JgpQVVdB") },
Callback = function(faoi)
local qn = type(faoi) == _d("Bg5TVBI") and faoi[1] or faoi
local pyh = type(qn) == _d("ARtDURkS") and tonumber(qn:match(_d("WkpVE14"))) or nil

if pyh then
am.bossTeams.swap.team2 = pyh
am.bossTeams.swapReset()
am.bossTeams.swapApply()
am.bossTeams.save()
end

pcall(function()
am.bossTeams.swapDropdown2:UpdateName(_d("IRhQSFcBGFJdEdr311c") .. (qn or _d("JgpQVVdE")))
end)

am.bossTeams.paintSwap()
end,
}, _d("ARhQSCgBGC1d"))

am.bossTeams.swapStatus = am.bossTeams.towerSection:Paragraph({
Header = _d("IRhQSFcGAxMbREs"),
Body = am.bossTeams.swapStatusText(),
})

pcall(function()
local yajj = math.clamp(math.floor(tonumber(am.bossTeams.swap.team) or 1), 1, 4)
local ejkw = math.clamp(math.floor(tonumber(am.bossTeams.swap.team2) or 1), 1, 4)

am.bossTeams.swapDropdown:UpdateSelection(_d("JgpQVVc") .. tostring(yajj))
am.bossTeams.swapDropdown:UpdateName(_d("IRhQSFcBGFKNsZpXIRITAhE") .. tostring(yajj))
am.bossTeams.swapDropdown2:UpdateSelection(_d("JgpQVVc") .. tostring(ejkw))
am.bossTeams.swapDropdown2:UpdateName(_d("IRhQSFcBGFJdEdr311cmClBVVw") .. tostring(ejkw))
end)

task.spawn(function()
local don = am.bossTeams.swapStatusText()

while ldjd() do
local tz = am.bossTeams.swapStatusText()

if tz ~= don then
don = tz
am.bossTeams.paintSwap()
end

task.wait(2)
end
end)

if am.bossTeams.swap.on then
task.delay(2, function()
pcall(am.bossTeams.swapApply)
end)
end

am.bossTeams.section = tvp:Section({
Side = _d("IAZWUAM"),
})

am.bossTeams.section:Header({
Name = _d("MABCS1chEhMCQg"),
})

am.bossTeams.section:Paragraph({
Header = _d("OgBGGBUaBAFPRV0WGARSGF5KHA"),
Body = _d("PQlXAlcbGAYHWFYQVR4BT0JPHgEUGgpVGFpVEgQKQ0FXEx4VB0UYAgYSAU9FUBJVAxcOXBgOGgJSDl1KEhQTC09ZWQEQVx4GX10TVQICQxFPHxwUGk9YS1cBHxdPYlQYAVdDT0VdFhhXBwFdXQQGVwEDXkxXR1cGDlpdBFUDGgoRWhYBAx4KHzJ9OhlIT1RZFB1XEx1UWVcXEh4ARhgRHBAaG0IYABwDGk9FUBJVAxcOXBgOGgJSH1hbHFURHR0RUQNb"),
})

am.bossTeams.toggle = am.bossTeams.section:Toggle({
Name = _d("MABCS1chEhMCQg"),
Default = false,
Callback = function(cadv)
am.bossTeams.enabled = cadv
end,
}, _d("EABCSygBEhMCQg"))

for rffj, biyy in ipairs(ok) do
local bczc = am.bossTeams.picked[biyy.id] or 1

bczc = math.clamp(math.floor(tonumber(bczc) or 1), 1, 4)
am.bossTeams.picked[biyy.id] = bczc

am.bossTeams.ui[biyy.id] = am.bossTeams.section:Dropdown({
Name = biyy.name,
Search = false,
Multi = false,
Required = false,

Default = bczc,
Options = { _d("JgpQVVdE"), _d("JgpQVVdH"), _d("JgpQVVdG"), _d("JgpQVVdB") },
Callback = function(qco)
local pfb = type(qco) == _d("Bg5TVBI") and qco[1] or qco
local xqt = type(pfb) == _d("ARtDURkS") and tonumber(pfb:match(_d("WkpVE14"))) or nil

if xqt then
am.bossTeams.picked[biyy.id] = xqt

am.bossTeams.save()
end

pcall(function()
am.bossTeams.ui[biyy.id]:UpdateName(biyy.name .. _d("Uo2xmlc") .. (pfb or _d("JgpQVVdE")))
end)
end,
}, _d("BgpQVSgCGAADVWc") .. biyy.id)

pcall(function()
am.bossTeams.ui[biyy.id]:UpdateSelection(_d("JgpQVVc") .. tostring(bczc))
am.bossTeams.ui[biyy.id]:UpdateName(biyy.name .. _d("Uo2xmlchEhMCEQ") .. tostring(bczc))
end)
end

am.bossTeams.raidSection = tvp:Section({
Side = _d("IAZWUAM"),
})

am.bossTeams.raidSection:Header({
Name = _d("IA5YXFchEhMCQg"),
})

am.bossTeams.raidSection:Paragraph({
Header = _d("OgBGGAUUHhZPRV0WGARSGF5KHA"),
Body = _d("PQlXAlcHFhsLQhgCBhJSGFlZAxABFx0RTBIUGlIbWV1XBhsdGxFZGwcSEwtIGB8aGxYcHzJ9OhlIT1RZFB1XAA5YXFcXEh4ARhgeBlcUAERfHwFXBQZFUFcBHxdPRV0WGFcCBlJTEhFXFABDGB4BWQ"),
})

am.bossTeams.raidToggle = am.bossTeams.raidSection:Toggle({
Name = _d("IA5YXFchEhMCQg"),
Default = false,
Callback = function(plhq)
am.bossTeams.raidsOn = plhq
end,
}, _d("AA5YXCgBEhMCQg"))

for ias, qib in ipairs(pdqj.Raids) do
if qib.BossTitle and qib.id then
local ahq = am.bossTeams.raidPicked[qib.id] or 1

ahq = math.clamp(math.floor(tonumber(ahq) or 1), 1, 4)
am.bossTeams.raidPicked[qib.id] = ahq

am.bossTeams.raidUi[qib.id] = am.bossTeams.raidSection:Dropdown({
Name = qib.BossTitle,
Search = false,
Multi = false,
Required = false,
Default = ahq,
Options = { _d("JgpQVVdE"), _d("JgpQVVdH"), _d("JgpQVVdG"), _d("JgpQVVdB") },
Callback = function(wny)
local whox = type(wny) == _d("Bg5TVBI") and wny[1] or wny
local rkb = type(whox) == _d("ARtDURkS") and tonumber(whox:match(_d("WkpVE14"))) or nil

if rkb then
am.bossTeams.raidPicked[qib.id] = rkb
am.bossTeams.save()
end

pcall(function()
am.bossTeams.raidUi[qib.id]:UpdateName(qib.BossTitle .. _d("Uo2xmlc") .. (whox or _d("JgpQVVdE")))
end)
end,
}, _d("BgpQVSgHFhsLbg") .. qib.id)

pcall(function()
am.bossTeams.raidUi[qib.id]:UpdateSelection(_d("JgpQVVc") .. tostring(ahq))
am.bossTeams.raidUi[qib.id]:UpdateName(qib.BossTitle .. _d("Uo2xmlchEhMCEQ") .. tostring(ahq))
end)
end
end

task.spawn(function()
local ist = nu()

while ldjd() do
local qbz = nu()

if ojev.enabled and ojev.statusText then
qbz = ojev.statusText()
end

qbz = qbz .. _d("eGViXQUDEgBPREhX") .. cwkx()

if qbz ~= ist then
ist = qbz
pcall(function()
yisd:UpdateBody(qbz)
end)
end
task.wait(0.5)
end
end)

task.spawn(function()
while ldjd() do
for no, bkxm in ipairs({ _d("MA5FTBsQMAcG"), _d("MA5FTBsQMAcGAw") }) do
local iita = rprq:FindFirstChild(bkxm)
local qzks = iita and iita:FindFirstChild(_d("MA5FTBsQJBEdVF0Z"))
local bgan = iita and iita:FindFirstChild(_d("OgZVXTUUAwYDVHoCAQMdAQ"))

if qzks and qzks.Visible and bgan and not bgan.Visible then
bgan.Visible = true
end
end

task.wait(0.5)
end
end)

task.spawn(function()
local wyn = false

while ldjd() do
if mcr then
local jyp = rprq:FindFirstChild(_d("JgBGXQUnEgEaXUwwAB4"))
local czaf = jyp and jyp:FindFirstChild(_d("IApCTRsBMQAOXF0"))
local xio = jyp and jyp:FindFirstChild(_d("NQpfXQUUAxsBVn4FFBoX"))

if xio and xio.Visible then
xio.Visible = false
end

local usj = czaf and czaf.Visible or false

if usj and not wyn then
local ujcr = czaf:FindFirstChild(_d("MQNeSxI3AgYbXlY"))
local ipld = false

if ujcr then
for pkgo, fcl in ipairs({ _d("PwBESxI3AgYbXlZGNhsbDFo"), _d("MwxFUQEUAxcL") }) do
local bo = ujcr[fcl]
if bo then
for srb, gug in ipairs(getconnections(bo)) do
pcall(function()
gug:Fire()
end)
ipld = true
end
end
end
end

if not ipld then
czaf.Visible = false
else
task.spawn(function()
task.wait(0.3)
if czaf.Parent and czaf.Visible then
czaf.Visible = false
end
end)
end
end

wyn = usj
else
wyn = false
end

task.wait(0.2)
end
end)

local qrke = {}

function qrke.active()
return am.enabled or am.story
end

function qrke.towerHolds()
if ojev.enabled then
return false
end

if fvtg.run.enabled then
return true
end

return tqvm.enabled and not tqvm.paused
end

function qrke.ready(hxb, ljya, qie)
local whvx = am.unlocked[hxb]

return (not whvx or whvx[ljya] ~= false) and hy(hxb, ljya) <= qie
end

function qrke.hasReadyTarget()
local oqbf = os.time()

for nnc, sgfe in ipairs(scxw()) do
for yazl, ie in ipairs(qvu()) do
if qrke.ready(sgfe, ie, oqbf) then
return true
end
end
end

return false
end

function qrke.backOff(xju, huch)
fxt(xju, huch, os.time() + 5)
end

function qrke.findTarget()
for jcee, snk in ipairs(scxw()) do
local ymhs = bxj(snk)
local fgf = os.time() - (am.lastFetch[snk] or 0) > 60

if fgf and ymhs and not am.walkToNpc then
hhw(ymhs)
task.wait(0.3)
oxe(snk)
end

for hmbo, spu in ipairs(qvu()) do
if qrke.ready(snk, spu, os.time()) then
return snk, spu
end
end
end

return nil
end

function am.bossTeams.slotForFight()
if ojev.hasSlot2 == false then
return 1
end

if ojev.busy(2) then
return 1
end

return 2
end

function am.bossTeams.slotTeam(joc)
local izsi = rprq:FindFirstChild(_d("IQpFTB4bEAEoRFE"))
local jjxq = izsi and izsi:FindFirstChild(_d("IQNeTCMQFh8") .. joc .. _d("MBpFTBgb"), true)
local jhyl = jjxq and jjxq.Text

return jhyl and tonumber(jhyl:match(_d("WkpVE14"))) or nil
end

function am.bossTeams.applyTeam(rprt, wj)
rprt = tonumber(rprt)

if not rprt then
return false
end

wj = tonumber(wj) or am.bossTeams.slotForFight()

if ojev.busy(wj) then
return false
end

am.bossTeams.lastSlot = wj

local ofio = am.bossTeams.slotTeam(wj) or am.bossTeams.applied[wj]

if ofio == rprt then
return true
end

local aei = eos.remote(_d("IRhYTBQdIxcOXA"))

if not aei then
return false
end

local vjux = pcall(function()
aei:FireServer(rprt, false, wj)
end)

am.bossTeams.applied[wj] = rprt
task.wait(0.2)

return vjux
end

function am.bossTeams.apply(jti)
if not am.bossTeams.enabled then
return
end

local mfg = am.bossTeams.worldOf[jti]
local irqb = mfg and am.bossTeams.picked[mfg]

if not irqb then
return
end

am.bossTeams.applyTeam(irqb)
end

function am.bossTeams.applyTower(gpdb, drn)
if not am.bossTeams.towersOn then
return false
end

local tzzo = am.bossTeams.towerPicked[gpdb]

local qbuk = am.bossTeams.swapFired[gpdb]

if am.bossTeams.swap.on and type(qbuk) == _d("Bg5TVBI") then
tzzo = qbuk[2] or qbuk[1] or tzzo
end

if not tzzo then
return false
end

return am.bossTeams.applyTeam(tzzo, drn)
end

function am.bossTeams.applyRaid(ulql)
if not am.bossTeams.raidsOn then
return
end

local pqc = ulql and am.bossTeams.raidPicked[ulql]

if not pqc then
return
end

am.bossTeams.applyTeam(pqc)
end

function qrke.fight(dce, fba)
local ahw = bxj(dce)

if not ahw then
qrke.backOff(dce, fba)
return false
end

local heur

if am.walkToNpc then
local soc = rl[dce]

if soc then
fw.TeleportToWorld:FireServer(soc)
task.wait(2.5)

local dopl = bxj(dce) or ahw
local hzpj = dopl:GetPivot()

heur = wkb(hzpj.Position + hzpj.LookVector * 6, function()
return not qrke.active() or not am.walkToNpc
end)

if heur then
oxe(dce)
heur = qrke.ready(dce, fba, os.time())
end
end
else
heur = hhw(ahw)
end

if not heur then
qrke.backOff(dce, fba)
return false
end

task.wait(0.4)
am.bossTeams.apply(dce)
am.activeDifficulty[dce] = fba
fw.SetNPCDifficulty:FireServer(dce, fba)
task.wait(0.4)

am.currentBattle = {
npcId = dce,
difficulty = fba,
}
tmox = dce
eb = fba
fw.StartNPCBattle:FireServer(dce)
fxt(dce, fba, os.time() + 10)
am.battlePending = true
am.battlePendingUntil = os.time() + 30
task.wait(1)

return true
end

am.workPending = function()

if tar.misc and tar.misc.cards and tar.misc.cards.inFlight then
return true
end

if not qrke.active() then
return false
end

if am.battlePending then
return true
end

local hwf = ojev.npcSlot()

if hwf and ojev.busy(hwf) then
return true
end

return qrke.hasReadyTarget()
end

task.spawn(function()
while ldjd() do

local svi = (ojev.enabled and (tar.enabled or bky.enabled or tar.worldBoss.enabled))
or qrke.towerHolds()
or not ojev.slotFree(ojev.npcSlot())

or (tar.misc and tar.misc.cards and tar.misc.cards.inFlight)
or (am.battlePending and os.time() < am.battlePendingUntil)

if qrke.active() and not svi then
local ip, nbug = qrke.findTarget()

if ip then
qrke.fight(ip, nbug)
end
end

task.wait(0.5)
end
end)

task.spawn(function()
while ldjd() do

local bbvi = {}

if tar.enabled then
local mwwc = ojev.roleSlot(_d("HB9S"))

if mwwc then
table.insert(bbvi, mwwc)
end

if ojev.splitNpc() and mwwc ~= 2 then
table.insert(bbvi, 2)
end
end

local vgcw = mkd:FindFirstChild(_d("IA5YXCQBFgYaQg"))

if #bbvi > 0 and vgcw and (not bky.enabled or ojev.splitNpc()) and (ojev.enabled or not am.workPending()) then
for kft, snbe in ipairs(bbvi) do
local qxws = vgcw

local kh = tar.bossFor(snbe, (snbe ~= 1 and not ojev.splitNpc()) and 1 or nil)
local uoy = qxws:GetAttribute(_d("Oxx+SBIb")) == true or qxws:GetAttribute(_d("NABDWxIR")) == true
local hmnu = kh ~= nil and qxws:GetAttribute(_d("IApQXA4q") .. kh) == true
local rnj = kh and ps(kh)

if kh and tar.pending[kh] and os.time() >= (tar.pendingUntil[kh] or 0) then
tar.pending[kh] = false
tar.cleared[kh] = nil
end

if kh and ojev.slotFree(snbe) and uoy and hmnu and tar.cleared[kh] ~= rnj and not tar.pending[kh] then
local tvob = rnyi[kh]
local drg = tvob and bxj(tvob)
local squm = false

if drg then
if tar.walkToBoss then
local wwhg = wttf[kh]
local amxx = ga.Character and ga.Character:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))
local rcsj = drg:GetPivot().Position
local ftu = amxx and (amxx.Position - rcsj).Magnitude <= 15

if ftu then
squm = true
elseif wwhg then
fw.TeleportToWorld:FireServer(wwhg)

local uie = os.clock()
while os.clock() - uie < 2.5 and tar.enabled do
task.wait(0.1)
end

if tar.enabled then
local qevi = bxj(tvob) or drg
local ruoa = qevi:GetPivot()
local fy = ruoa.Position + ruoa.LookVector * 6
squm = gklm(fy, tar.walkSpeed, function()
return not tar.enabled or not tar.walkToBoss
end)
end
end

if not squm then
squm = hhw(drg)
end
else
squm = hhw(drg)
end

if squm then
task.wait(0.5)
end
end

if squm then
tar.inFlight[kh] = snbe
tar.pending[kh] = true
tar.pendingUntil[kh] = os.time() + 15
tar.cleared[kh] = rnj

local kmnc = tar.difficulties[1] or _d("HABDVRYZ")
local nhh = tar.progress[kh]

if nhh then
local shg = nhh.unlocked
local ziqm = nhh.cooldowns

for qqg, xqo in ipairs(tar.difficulties) do
local fjgo = not shg or shg[xqo] ~= false
local egg = ziqm and tonumber(ziqm[xqo]) or 0

if fjgo and egg <= 0 then
kmnc = xqo
break
end
end
end

am.bossTeams.applyRaid(kh)
fw.SetRaidDifficulty:FireServer(kmnc, kh)
task.wait(0.3)
fw.StartRaidBattle:FireServer(kh)
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while ldjd() do
local rwyp = bky.inBattle and os.time() < bky.inBattleUntil

if bky.enabled and (ojev.enabled or not am.workPending()) and not rwyp and ojev.slotFree(ojev.roomSlot()) and not (bky.pending and os.time() < bky.pendingUntil) then
local xkex = bky.progress

if xkex == nil then
fw.RequestInfiniteRoomProgress:FireServer()
task.wait(0.5)
else
local lsk = nil

for zimk, bxnq in ipairs(wsho.Milestones) do
if wsho.isMilestoneUnlocked(bxnq, xkex) and not wsho.isMilestoneCleared(bxnq, xkex) then
lsk = bxnq
break
end
end

if lsk then

local sso = ojev.roomSlot()

bky.currentRoom = lsk
bky.inBattle = true
bky.inBattleUntil = os.time() + 60
bky.pending = true
bky.pendingUntil = os.time() + 10

local kn = rprq:FindFirstChild(sso == 2 and _d("IApCXQM3FgYbXV0xGRgdHQM") or _d("IApCXQM3FgYbXV0xGRgdHQ"))
if kn and kn:IsA(_d("MAZfXBYXGxcqR10ZAQ")) then
kn:Fire(lsk, _d("GwFXURkcAxcwQ1cYGA"))
end

local skda = rprq:FindFirstChild(sso == 2 and _d("IRtQSgM8GRQGX1EDECUdAFx6FgEDHgoD") or _d("IRtQSgM8GRQGX1EDECUdAFx6FgEDHgo"))
if skda and skda:IsA(_d("MAZfXBYXGxcqR10ZAQ")) then
skda:Fire(lsk)
end

fw.StartBattle:FireServer(_d("GwFXURkcAxcwQ1cYGA"), {
milestone = lsk,
slot = sso,
})
task.wait(2)
end
end
end

task.wait(1)
end
end)

local function np(ylyf, vn)
local skw = rprq:FindFirstChild(_d("IQxDXRIbMAcG"))

if not skw then
return
end

local izcp = skw:FindFirstChild(ylyf)
local nrht = izcp and izcp:FindFirstChild(_d("JA5dTRI5FhAKXQ"), true)
local xxxz = izcp and izcp:FindFirstChild(_d("Pg5TXRs"), true)

if not izcp then
return
end

local aqc = false

if nrht then
aqc = nrht.Text == _d("PQE")
elseif xxxz then
aqc = not string.lower(xxxz.Text):find(_d("HQlX"), 1, true)
end

if aqc ~= vn then
for skcg, dfy in ipairs(getconnections(izcp.MouseButton1Click)) do
local xyy = dfy.Function

if type(xyy) == _d("FBpfWwMcGBw") then
pcall(xyy)
else
pcall(function()
dfy:Fire()
end)
end
end
end
end

getgenv().ACBXSetRollButton = np

local function zpm(lqo)
np(_d("IxpYWxwnGB4Dc00DARgc"), lqo)
np(_d("MxpFVyUaGx4tREwDGhk"), lqo)
end

getgenv().ACBXSetRollUi = zpm
qllf.setRollButton = np

pcall(function()
fw.SaveClientData:FireServer({ autoHideBattle = false })
end)

task.defer(function()
task.wait(0.5)

local pqrz = rprq:FindFirstChild(_d("MA5FTBsQMAcG"))
local hrm = pqrz and pqrz:FindFirstChild(_d("MA5FTBsQJBEdVF0Z"))
local fjw = pqrz and pqrz:FindFirstChild(_d("OgZVXTUUAwYDVHoCAQMdAQ"))

if fjw and fjw.Visible and hrm and not hrm.Visible and vhzq() then
for pvg, eg in ipairs(getconnections(fjw.MouseButton1Click)) do
local gtm = eg.Function

if type(gtm) == _d("FBpfWwMcGBw") then
pcall(gtm)
else
pcall(function()
eg:Fire()
end)
end
end
end
end)

zpm(true)

task.spawn(function()
while ldjd() do

if qllf.autoRoll then
np(_d("MxpFVyUaGx4tREwDGhk"), true)
end

if qllf.autoQuickRoll then
np(_d("IxpYWxwnGB4Dc00DARgc"), true)
end

task.wait(1)
end
end)

local function dhx()

if tqvm.floor then
return tqvm.floor
end

local scn = rprq:FindFirstChild(_d("MA5FTBsQMAcG"))

if not scn then
return nil
end

for gk, gb in ipairs({ _d("JgBGXQUzGx0AQ3QWFxIe"), _d("IBpffhsaGAAjUFoSGQ") }) do
local vne = scn:FindFirstChild(gb)

if vne and vne.Visible and vne.Text then
local ewdq = tonumber(vne.Text:match(_d("WkpVE14")))

if ewdq then
return ewdq
end
end
end

local ezs = scn:FindFirstChild(_d("NANeVwUmFAAKVFY"))
local rtq = ezs and ezs:FindFirstChild(_d("JgBBehYH"))
local veii = rtq and rtq:FindFirstChild(_d("NANeVwU5FhAKXQ"))

if veii then
return tonumber(veii.Text:match(_d("WkpVE14")))
end

return nil
end

function am.bossTeams.swapRows(twps)
local ehfu = rprq:FindFirstChild(_d("IQpFTB4bEAEoRFE"))
local mek = ehfu and ehfu:FindFirstChild(_d("MxpFVyQCFgI") .. twps .. _d("IABG"), true)

if not mek then
return nil
end

return mek:FindFirstChild(_d("MxpFVyQCFgI") .. twps .. _d("MQdUWxw")),
mek:FindFirstChild(_d("MxpFVyQCFgI") .. twps .. _d("JgpQVQ")),
mek:FindFirstChild(_d("MxpFVyQCFgI") .. twps .. _d("NANeVwU"))
end

function am.bossTeams.swapOn(vao)
local saqy = rprq:FindFirstChild(_d("IQpFTB4bEAEoRFE"))
local lqq = saqy and saqy:FindFirstChild(_d("NQpFaxIBAxsBVks"), true)

if not lqq then
return nil
end

local hxc, vtlb = pcall(function()
return lqq:Invoke()
end)

if hxc and type(vtlb) == _d("Bg5TVBI") then
return vtlb[vao == 1 and _d("ExpFVyMQFh88RlkHMBkTDV1dEw") or _d("ExpFVyMQFh88RlkHRzIcDlNUEhE")] == true
end

return nil
end

function am.bossTeams.swapBox(vvo, anj)
if tonumber(vvo.Text) == anj then
return
end

vvo.Text = tostring(anj)

if getconnections then
for dfk, duxc in ipairs(getconnections(vvo.FocusLost)) do
pcall(function()
duxc:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end

function am.bossTeams.swapSet(kg, idv, lsfu, sz)
local gnko, icg, afkk = am.bossTeams.swapRows(kg)

if not (gnko and icg and afkk) then
return false
end

lsfu = math.max(1, math.floor(tonumber(lsfu) or 1))
sz = math.clamp(math.floor(tonumber(sz) or 1), 1, 4)

am.bossTeams.swapBox(afkk, lsfu)
am.bossTeams.swapBox(icg, sz)

local ado = am.bossTeams.swapOn(kg)

if ado ~= nil and ado ~= (idv == true) and getconnections then
pcall(function()
for frde, de in ipairs(getconnections(gnko.MouseButton1Click)) do
pcall(function()
de:Fire()
end)
end
end)
end

local bls = kg == 1 and _d("") or _d("QA")

pcall(function()
fw.SaveClientData:FireServer({
[_d("ExpFVyMQFh88RlkH") .. bls .. _d("NwFQWhsQEw")] = idv == true,
[_d("ExpFVyMQFh88RlkH") .. bls .. _d("JgpQVQ")] = sz,
[_d("ExpFVyMQFh88RlkH") .. bls .. _d("NANeVwU")] = lsfu,
})
end)

return true
end

function am.bossTeams.swapApply()
local vhjg = am.bossTeams
local fut = vhjg.swap
local iskd = true

if fut.on then
iskd = vhjg.swapSet(1, fut.floor > 0, fut.floor, fut.team)
iskd = vhjg.swapSet(2, fut.floor2 > 0, fut.floor2, fut.team2) and iskd
else
iskd = vhjg.swapSet(1, false, fut.floor, fut.team)
iskd = vhjg.swapSet(2, false, fut.floor2, fut.team2) and iskd
end

vhjg.swapMessage = _d("")

if not iskd then
vhjg.swapMessage = _d("JgdUGBAUGhdIQhg2AAMdT2VdFhhXIRhQSFcHGAUcEVkFEFccAEUYFQAeHhsRQRIBV19PQ10DBw4bAVYW")
end

vhjg.paintSwap()
end

function am.bossTeams.swapReset(wjlg)
local wqwr = am.bossTeams

if wjlg then
wqwr.swapFired[wjlg] = nil
else
wqwr.swapFired = {}
end
end

function am.bossTeams.swapTick()
local mji = am.bossTeams
local tj = mji.swap

if not tj.on or (tj.floor <= 0 and tj.floor2 <= 0) then
if next(mji.swapFired) ~= nil then
mji.swapFired = {}
end

return
end

local kkpb = os.clock()
local rdvl = eos.remote(_d("IRhYTBQdIxcOXA"))

if kkpb - (mji.swapWroteAt or 0) > 10 then
mji.swapWroteAt = kkpb
mji.swapApply()
end

local urh = {
{
kind = _d("BgBGXQU"),
slot = ojev.towerSlot(),

live = kkpb - (tqvm.floorAt or 0) < 90,
floor = dhx(),

own = true,
},
{
kind = _d("Gg5DXBQaBRc"),
slot = ojev.hardcoreSlot(),
live = swsk.active(),
floor = swsk.floorNow(),

own = false,
},
}

local aen = {
{ index = 1, floor = tj.floor, team = tj.team },
{ index = 2, floor = tj.floor2, team = tj.team2 },
}

for on, rvp in ipairs(urh) do
if not rvp.live then

mji.swapFired[rvp.kind] = nil
elseif rvp.own and rdvl and rvp.floor then
local nik = mji.swapFired[rvp.kind]

for majs, qeu in ipairs(aen) do
local ttle = type(nik) == _d("Bg5TVBI") and nik[qeu.index]

if qeu.floor > 0 and rvp.floor == qeu.floor and not ttle then
local vsnv = pcall(function()
rdvl:FireServer(math.clamp(math.floor(qeu.team), 1, 4), true, rvp.slot or 1)
end)

if vsnv then
nik = type(nik) == _d("Bg5TVBI") and nik or {}
nik[qeu.index] = qeu.team
mji.swapFired[rvp.kind] = nik

mji.swapMessage = string.format(_d("MQ5CTBsQVxQDXlcFVVIWTxwYBAIeBgxZXRNVAx1PZV0WGFdXCx8"), rvp.floor, qeu.team)
mji.paintSwap()
end
end
end
end
end
end

task.spawn(function()
while ldjd() do
pcall(am.bossTeams.swapTick)
task.wait(0.5)
end
end)

local function ysk()

return qrke.active() and qrke.hasReadyTarget()
end

function tar.worldBoss.remote(wjhl)
local gjz = tar.worldBoss

gjz.remotes = gjz.remotes or {}

local hza = gjz.remotes[wjhl]

if hza and hza.Parent then
return hza
end

local inik = eos.remote(wjhl)

if inik then
gjz.remotes[wjhl] = inik
end

return inik
end

function tar.worldBoss.setRepeat(wwkr)
local rac = tar.worldBoss
local imo = rac.remote(_d("JQBDVBM3GAEccFsDHBgc"))

if not imo then
return false
end

local rynb = rac.state
local mxr = type(rynb) == _d("Bg5TVBI") and rynb.repeatOn == true

if mxr == (wwkr and true or false) then
rac.repeatIntent = nil

return true
end

if wwkr then
local isrd = workspace:FindFirstChild(_d("JQBDVBM3GAEccEoSGxY"))
local bhn = isrd and (isrd:FindFirstChild(_d("MQpdVDoUDw")) or isrd)
local hsra = ga.Character and ga.Character:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not (bhn and hsra) then
return false
end

local aeu, bqx = pcall(function()
return bhn:GetPivot()
end)

if not aeu or (hsra.Position - bqx.Position).Magnitude > 60 then
return false
end
end

if rac.repeatIntent == wwkr and os.clock() - (rac.repeatAskedAt or 0) < 20 then
return false
end

rac.repeatIntent = wwkr

pcall(function()
imo:FireServer(_d("AApBXRYB"))
end)

rac.repeatAskedAt = os.clock()

return true
end

function tar.worldBoss.requestSync()
local fdoc = tar.worldBoss
local foow = fdoc.remote(_d("JQBDVBM3GAEccFsDHBgc"))

if foow then
pcall(function()
foow:FireServer(_d("ARZfWw"))
end)
end

fdoc.askedAt = os.clock()
end

function tar.worldBoss.hasWork()
local ssob = tar.worldBoss
local iqyd = ssob.state

if not ssob.enabled or type(iqyd) ~= _d("Bg5TVBI") then
return false
end

local mrc = ssob.isOpen()

if mrc == nil then
mrc = iqyd.open == true
end

return mrc and iqyd.inFight ~= true
end

tar.worldBoss.bossUp = function()
local iaep = tar.worldBoss

if not iaep.enabled then
return false
end

local lgui = iaep.isOpen()

if lgui ~= nil then
return lgui == true
end

local pkj = iaep.state

return type(pkj) == _d("Bg5TVBI") and pkj.open == true
end

function tar.worldBoss.meter()
local viic = tar.worldBoss
local na = os.clock()

if na - (viic.meterAt or 0) < 1 then
return viic.meterCurrent, viic.meterMax
end

viic.meterAt = na
viic.meterCurrent = nil
viic.meterMax = nil

local zrsq = mkd:FindFirstChild(_d("JQBDVBM3GAEcYkwWAQIB"))
local wymq = zrsq and tonumber(zrsq:GetAttribute(_d("PwpFXQU")))
local alp = zrsq and tonumber(zrsq:GetAttribute(_d("PwpFXQU4Fgo")))

if wymq and alp and alp > 0 then
viic.meterCurrent = wymq
viic.meterMax = alp

return viic.meterCurrent, viic.meterMax
end

local function iv(mmc)
if type(mmc) ~= _d("ARtDURkS") then
return nil
end

local ttd, dpu = mmc:match(_d("WjQUXFJbKllGFEtdXSw5InNTGhcqTUY"))
local xvb = tonumber(ttd)

if not xvb then
return nil
end

local jrd = ({ K = 1000, M = 1000000, B = 1000000000 })[string.upper(dpu or _d(""))] or 1

return xvb * jrd
end

local ikkp = rprq:FindFirstChild(_d("JQBDVBM3GAEcc1kZGxIAKERR"))
local islv = ikkp and ikkp:FindFirstChild(_d("MA5fVhIH"))
local atl = islv and islv:FindFirstChild(_d("PwpFXQU3FgA"))
local bwa = atl

if atl and not atl:IsA(_d("JgpJTDsUFRcD")) then
bwa = atl:FindFirstChild(_d("JgpJTA"))
end

local xgw = bwa and bwa:IsA(_d("JgpJTDsUFRcD")) and bwa.Text or nil

if type(xgw) == _d("ARtDURkS") then
local cf, nar = xgw:match(_d("WjRvFypeXl1HHxNe"))

viic.meterCurrent = iv(cf)
viic.meterMax = iv(nar)
end

return viic.meterCurrent, viic.meterMax
end

function tar.worldBoss.meterFull()
local dtqv, wotb = tar.worldBoss.meter()

return dtqv ~= nil and wotb ~= nil and wotb > 0 and dtqv >= wotb
end

tar.worldBoss.holdsFishing = function()
local aysf = tar.worldBoss

if not aysf.enabled then
return false
end

if aysf.fishingMode == _d("BQ5YTA") then
return aysf.bossUp()
end

return os.clock() < (aysf.takingUntil or 0)
end

tar.worldBoss.holdsDigging = function()
local szih = tar.worldBoss

if not szih.enabled or szih.digHold ~= true then
return false
end

if not szih.bossUp() then
return false
end

return not (szih.stopAtFull and szih.meterFull())
end

tar.worldBoss.usesGameChain = function()
local mqc = tar.worldBoss

return mqc.fishingMode == _d("BQ5YTA") or mqc.digHold == true
end

function tar.worldBoss.travel()
local shza = tar.worldBoss
local jun = ga.Character
local fosa = jun and jun:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not fosa or os.clock() < shza.travelUntil then
return
end

shza.travelUntil = os.clock() + 6

local cfj = workspace:FindFirstChild(_d("JQBDVBM3GAEcYVcFARYe"))
local qaj = cfj and cfj:FindFirstChild(_d("IgBDTBYZ"))

if not qaj then
return
end

if (fosa.Position - qaj.Position).Magnitude > 150 then
local ahd = eos.remote(_d("JgpdXQcaBQY7Xm8YBxsW"))

if ahd then
pcall(function()
ahd:FireServer(_d("HgBTWg4"))
end)
end

return
end

if (fosa.Position - qaj.Position).Magnitude > 6 then
shza.walkLeg(qaj.Position + Vector3.new(0, 3, 0), 4)

if (fosa.Position - qaj.Position).Magnitude > 9 then
return
end
end

local mpsr = qaj:FindFirstChildOfClass(_d("Ih1eQB4YHgYWYUoYGAcG"))

if not mpsr then
return
end

pcall(function()
if type(fireproximityprompt) == _d("FBpfWwMcGBw") then
fireproximityprompt(mpsr)
else
mpsr:InputHoldBegin()
task.wait(0.25)
mpsr:InputHoldEnd()
end
end)
end

function tar.worldBoss.reach()
local xu = tar.worldBoss

local cxg = workspace:FindFirstChild(_d("JQBDVBM3GAEccEoSGxY")) or workspace:FindFirstChild(_d("JQBDVBM3GAEcYkgWAhk"), true)
local wskk = ga.Character
local frcv = wskk and wskk:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not (cxg and frcv) then
xu.travel()
return false
end

local oqyi = cxg:FindFirstChild(_d("MQpdVDoUDw")) or cxg
local dah, klb = pcall(function()
return oqyi:GetPivot()
end)

if not dah then
return false
end

local dqyq = klb.Position + klb.LookVector * 6 + Vector3.new(0, 3, 0)
local gig = Vector3.new(klb.Position.X, dqyq.Y, klb.Position.Z)

frcv.CFrame = CFrame.lookAt(dqyq, gig)

return true
end

tar.worldBoss.cityBounds = { 19100, 20900, -850, 850 }

function tar.worldBoss.inArena()
local uqa = ga.Character and ga.Character:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))
local asuw = tar.worldBoss.cityBounds

if not uqa then
return false
end

local xxhs = uqa.Position

return xxhs.X >= asuw[1] and xxhs.X <= asuw[2]
and xxhs.Z >= asuw[3] and xxhs.Z <= asuw[4]
end

function tar.worldBoss.enterCity(nx)
local ethf = tar.worldBoss

local ldo = os.clock() + (nx or 30)

if ethf.inArena() then
return true
end

while os.clock() < ldo do
if not ethf.enabled then
return false
end

ethf.travel()

if ethf.inArena() then
return true
end

task.wait(0.5)
end

return ethf.inArena()
end

tar.worldBoss.walking = false
tar.worldBoss.walkStartedAt = 0

function tar.worldBoss.walkLeg(bpmq, ktm)
local mla = tar.worldBoss
local jv = ga.Character
local nax = jv and jv:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))
local eae = jv and jv:FindFirstChildOfClass(_d("OhpcWRkaHhY"))

if not (nax and eae) then
return false
end

if mla.walking and os.clock() - (mla.walkStartedAt or 0) < 45 then
return false
end

ktm = ktm or 6

mla.walking = true
mla.walkStartedAt = os.clock()

local ieu, jnwa = pcall(function()
local ehq = os.clock() + 40
local muq = 0
local wfb = nax.Position
local weuv = os.clock()

while mla.enabled and os.clock() < ehq do
local fhpo = Vector3.new(bpmq.X - nax.Position.X, 0, bpmq.Z - nax.Position.Z)

if fhpo.Magnitude <= ktm then
return true
end

if os.clock() - muq >= 0.25 then
eae:MoveTo(Vector3.new(bpmq.X, nax.Position.Y, bpmq.Z))
muq = os.clock()
end

if os.clock() - weuv >= 1.2 then
if (nax.Position - wfb).Magnitude < 2 then
eae.Jump = true
end

wfb = nax.Position
weuv = os.clock()
end

task.wait(0.1)
end

return Vector3.new(bpmq.X - nax.Position.X, 0, bpmq.Z - nax.Position.Z).Magnitude <= ktm
end)

pcall(function()
eae:MoveTo(nax.Position)
end)

mla.walking = false

return ieu and jnwa == true
end

function tar.worldBoss.walkIn(ibrb)
local kzhn = tar.worldBoss
local ijz = workspace:FindFirstChild(_d("JQBDVBM3GAEccEoSGxY"))
local dr = ijz and (ijz:FindFirstChild(_d("MQpdVDoUDw")) or ijz) or nil
local atc = ga.Character and ga.Character:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

if not (dr and atc) then
return false
end

local unu, wevo = pcall(function()
return dr:GetPivot()
end)

if not unu then
return false
end

local axmx = wevo.Position + wevo.LookVector * 6 + Vector3.new(0, 3, 0)

if (atc.Position - axmx).Magnitude <= (ibrb or 10) then
return true
end

local laog = kzhn.walkLeg(axmx, ibrb or 6)

if not laog then
laog = (atc.Position - wevo.Position).Magnitude <= 25
end

return laog
end

function tar.worldBoss.approach()
local vk = tar.worldBoss

if not vk.walkToBoss then
return vk.reach()
end

if not vk.enterCity() then
return false
end

return vk.walkIn(10)
end

function tar.worldBoss.fight()
local cmq = tar.worldBoss
local xxu = cmq.remote(_d("JQBDVBM3GAEccFsDHBgc"))

local function uqpp(xko)
cmq.nextFightAt = os.clock() + (xko or 20)

return false
end

if not xxu then
return uqpp(60)
end

if cmq.stopAtFull and cmq.meterFull() then
return uqpp(20)
end

if bjce.enabled
and (bjce.tpToBay or bjce.deepZone)
and bjce.phase ~= _d("GwtdXQ") then
return false
end

cmq.takingUntil = os.clock() + 45

local ujy = workspace:FindFirstChild(_d("JQBDVBM3GAEccEoSGxY"))
local stmi = ujy and (ujy:FindFirstChild(_d("MQpdVDoUDw")) or ujy) or nil
local ow = ga.Character and ga.Character:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))

local function gcwt()
if not (stmi and ow) then
return nil
end

local evc, nvur = pcall(function()
return stmi:GetPivot()
end)

if not evc then
return nil
end

return (ow.Position - nvur.Position).Magnitude
end

local oyzc = cmq.usesGameChain() and (gcwt() or math.huge) <= 60

if not oyzc and not cmq.approach() then
cmq.takingUntil = os.clock() + 3

return uqpp(cmq.inArena() and 3 or 20)
end

if stmi and ow then
local hday, cr = pcall(function()
return stmi:GetPivot()
end)

if not hday or (ow.Position - cr.Position).Magnitude > 60 then
cmq.takingUntil = os.clock() + 2

return uqpp(cmq.inArena() and 2 or 10)
end
end

am.bossTeams.applyTeam(cmq.team)

task.wait(oyzc and 0 or (cmq.walkToBoss and 0.3 or 1.4))

pcall(function()
xxu:FireServer(_d("FAZWUAM"))
end)

cmq.fightAt = os.clock()

cmq.holdUntil = os.clock() + (cmq.usesGameChain() and 0.7 or 4)

cmq.takingUntil = os.clock() + 0.6

if bjce.enabled and (bjce.tpToBay or bjce.deepZone) then
bjce.deepPhase = _d("GwtdXQ")
bjce.deepStageAt = 0
bjce.nextCastAt = 0
end

cmq.killsAtFire = type(cmq.state) == _d("Bg5TVBI") and tonumber(cmq.state.kills) or nil

if not cmq.usesGameChain() and bjce.enabled
and (bjce.tpToBay or bjce.deepZone) then
cmq.nextFightAt = os.clock() + 1
end

return true
end

function tar.worldBoss.buy(qzuc)
local lhhj = tar.worldBoss
local aqvb = lhhj.remote(_d("JQBDVBM3GAEccFsDHBgc"))

qzuc = qzuc or 1

if not aqvb then
return 0
end

local sbqa = 0

for fuq = 1, qzuc do
local acfk = lhhj.state

if type(acfk) ~= _d("Bg5TVBI") or type(acfk.shop) ~= _d("Bg5TVBI") then
break
end

if os.clock() < lhhj.buyAt then
break
end

local gm = tonumber(acfk.medals) or 0
local wwnm = nil

for njvd, krc in ipairs(acfk.shop) do
local mxae = tonumber(krc.price) or 0
local npsj = krc.kind ~= _d("GxtUVQ") or (tonumber(krc.left) or 0) > 0

if lhhj.selected[krc.id] == true and npsj and krc.owned ~= true and mxae <= gm then
wwnm = krc
break
end
end

if not wwnm then
break
end

pcall(function()
aqvb:FireServer(_d("EBpI"), wwnm.id, 1)
end)

sbqa = sbqa + 1
lhhj.bought = lhhj.bought + 1
lhhj.buyAt = os.clock() + 1.2

lhhj.syncedAt = 0
lhhj.requestSync()
task.wait(1.1)
end

return sbqa
end

tar.worldBoss.questGroups = { _d("AgpDSxgbFh4"), _d("FQNeWhYZ"), _d("FAZdVA"), _d("AApCTAUcFAYGXlY") }

function tar.worldBoss.questRows(kv)
local uto = tar.worldBoss
local aly = type(kv) == _d("Bg5TVBI") and kv.quests or nil
local doi = {}

if type(aly) ~= _d("Bg5TVBI") then
return doi
end

for lnt, wctb in ipairs(uto.questGroups) do
local kcoz = aly[wctb]

if type(kcoz) == _d("Bg5TVBI") then
for yhqh, ffo in ipairs(kcoz) do
if type(ffo) == _d("Bg5TVBI") then
table.insert(doi, ffo)
end
end
end
end

return doi
end

function tar.worldBoss.claim()
local lux = tar.worldBoss
local xub = lux.remote(_d("JQBDVBM3GAEccFsDHBgc"))
local npd = lux.state

if not xub or type(npd) ~= _d("Bg5TVBI") or type(npd.quests) ~= _d("Bg5TVBI") then
return 0
end

if os.clock() < lux.claimAt then
return 0
end

local hnk = lux.questRows(npd)

if #hnk == 0 then
return 0
end

local dwa = {}

for qvku, nlt in ipairs(hnk) do
if nlt.id ~= nil then
dwa[tostring(nlt.id)] = true
end
end

for cnn, eacr in pairs(lux.claimFired) do
if not dwa[cnn] or os.clock() - eacr > 120 then
lux.claimFired[cnn] = nil
end
end

local yfw = nil

for mjm, wuvb in ipairs(hnk) do
if wuvb.complete == true and wuvb.claimed ~= true and wuvb.id ~= nil then
local ueb = tostring(wuvb.id)
local czgw = lux.claimFired[ueb]

if not (czgw and os.clock() - czgw < 6) then
yfw = wuvb
break
end
end
end

if not yfw then
return 0
end

lux.claimFired[tostring(yfw.id)] = os.clock()
lux.claimedTotal = lux.claimedTotal + 1

pcall(function()
xub:FireServer(_d("EQNQURo"), yfw.id)
end)

lux.claimAt = os.clock() + 2
lux.syncedAt = 0
lux.requestSync()

return 1
end

tar.worldBoss.syncRemote = ph(_d("JQBDVBM3GAEcYkEZFg"))

if tar.worldBoss.syncRemote then
tar.worldBoss.syncRemote.OnClientEvent:Connect(function(xpw)
local tq = tar.worldBoss

if type(xpw) ~= _d("Bg5TVBI") then
return
end

tq.state = xpw
tq.syncedAt = os.clock()

if xpw.inFight == true then
tq.wasFighting = true
elseif tq.wasFighting then
tq.wasFighting = false

if bjce.enabled then
pcall(bjce.recover)
end
end
end)
end

task.spawn(function()
tar.worldBoss.requestSync()
end)

task.spawn(function()
while ldjd() do
local bss = tar.worldBoss
local osji = bss.state

if bss.autoClaim then
if os.clock() - bss.syncedAt > 4 and os.clock() - bss.askedAt > 1 then
bss.requestSync()
end

bss.claim()
end

if bss.enabled then

if os.clock() - bss.syncedAt > (bss.bossUp() and 1.5 or 4) and os.clock() - bss.askedAt > 1 then
bss.requestSync()
end

if bss.autoBuy and next(bss.selected) then
bss.buy(1)
end

local wfs = type(osji) == _d("Bg5TVBI") and osji.repeatOn == true

if bss.usesGameChain() then

local zojr = type(osji) == _d("Bg5TVBI") and tonumber(osji.kills) or nil

if zojr and zojr ~= bss.seenKills then
bss.seenKills = zojr
bss.progressAt = os.clock()

bss.chainWaitAt = nil
end

if bss.bossUp() and not wfs and os.clock() - (bss.repeatAskedAt or 0) > 20 then
if bss.approach() then
bss.repeatSeeded = true
bss.progressAt = os.clock()

bss.setRepeat(true)
end
end

if bss.hasWork() and os.clock() >= bss.holdUntil
and os.clock() >= (bss.nextFightAt or 0)
and os.clock() - (bss.kickAt or 0) > 0.5
and not (bss.stopAtFull and bss.meterFull()) then
bss.chainWaitAt = nil
bss.kickAt = os.clock()
bss.fight()
elseif not bss.hasWork() then
bss.chainWaitAt = nil
end

if not bss.bossUp() then
bss.chainWaitAt = nil

if wfs and os.clock() - (bss.repeatAskedAt or 0) > 6 then
bss.repeatSeeded = false
bss.setRepeat(false)
end
end
elseif bss.isOpen() and wfs and os.clock() - (bss.repeatAskedAt or 0) > 6 then
bss.setRepeat(false)
end

local yghl = type(osji) == _d("Bg5TVBI") and tonumber(osji.kills) or nil

if bss.killsAtFire ~= nil and yghl == bss.killsAtFire
and os.clock() - (bss.fightAt or 0) > (bss.inArena() and 2.5 or 9)
and os.clock() < (bss.nextFightAt or 0)
and os.clock() >= bss.holdUntil then
bss.killsAtFire = nil
bss.nextFightAt = os.clock()
end

if not bss.usesGameChain() and bss.hasWork() and os.clock() >= bss.holdUntil
and os.clock() >= (bss.nextFightAt or 0)
and not (bss.stopAtFull and bss.meterFull()) then

local hgjv = ysk()
local tsl = ojev.roleSlot(_d("HB9S")) or 1
local rzv = ojev.enabled and ojev.busy(tsl)

if not hgjv and not rzv then
bss.fight()
end
end
end

local aqf = bss.bodyText()

if bss.bodyParagraph and aqf ~= bss.bodyShown then
bss.bodyShown = aqf

pcall(function()
bss.bodyParagraph:UpdateBody(aqf)
end)
end

local vvqf = bss.shopText()

if bss.shopParagraph and vvqf ~= bss.shopShown then
bss.shopShown = vvqf

pcall(function()
bss.shopParagraph:UpdateBody(vvqf)
end)
end

task.wait(0.5)
end
end)

function ojev.roomsHaveWork()
if not bky.enabled then
return false
end

local ddzv = bky.progress

if ddzv == nil then
return true
end

for pxv, rjsz in ipairs(wsho.Milestones) do
if wsho.isMilestoneUnlocked(rjsz, ddzv) and not wsho.isMilestoneCleared(rjsz, ddzv) then
return true
end
end

return false
end

function ojev.raidHasWork()
if not tar.enabled then
return false
end

local tfd = mkd:FindFirstChild(_d("IA5YXCQBFgYaQg"))

if not tfd then
return false
end

if not (tfd:GetAttribute(_d("Oxx+SBIb")) == true or tfd:GetAttribute(_d("NABDWxIR")) == true) then
return false
end

for kfu, xwk in ipairs({ 1, 2 }) do
local bm = (xwk ~= 1 and not ojev.splitNpc()) and 1 or nil
local hmfz = tar.picks[bm or xwk] and tar.bossFor(xwk, bm)

if hmfz and tar.cleared[hmfz] ~= ps(hmfz) then
return true
end
end

return false
end

function ojev.towerYields()
return ysk()
or ojev.roomsHaveWork()
or ojev.raidHasWork()
or tar.worldBoss.hasWork()
end

function ojev.towerOutranks()
return not ojev.enabled and (swsk.active() or fvtg.run.enabled)
end

local function oda(frv)
if not frv then
return false
end

local bfga = false

for rtux, qnri in ipairs(getconnections(frv.MouseButton1Click)) do
local jyoq = qnri.Function

if type(jyoq) == _d("FBpfWwMcGBw") then
pcall(jyoq)
else
pcall(function()
qnri:Fire()
end)
end

bfga = true
end

return bfga
end

function sl()
for xvnc, nkip in ipairs({ _d("MA5FTBsQMAcG"), _d("MA5FTBsQMAcGAw") }) do
local yhz = rprq:FindFirstChild(nkip)

if yhz then
local skrl = yhz:FindFirstChild(_d("MA5FTBsQJBEdVF0Z"))
local gcq = skrl and skrl:FindFirstChild(_d("IxpYWxwyHgQKZEg1AAMGAF8"))

if oda(gcq) then
return true
end

local cpq = yhz:FindFirstChild(_d("NANeVwUmFAAKVFY"))
local dodh = cpq and cpq:FindFirstChild(_d("MABFTBgYNRMd"))
local us = dodh and dodh:FindFirstChild(_d("NQZHXSIFNQcbRVcZ"))

if oda(us) then
return true
end
end
end

local czbb = mkd:FindFirstChild(_d("IApcVwMQBA"))
local npiv = czbb and czbb:FindFirstChild(_d("NQZHXSIFIx0YVEo"))
local dvnv = czbb and czbb:FindFirstChild(_d("NwFVbBgCEgA9VFUYARI"))

if not (npiv or dvnv) then
return false
end

if npiv then
pcall(function()
npiv:FireServer()
end)
end

if dvnv then
pcall(function()
dvnv:FireServer(1)
end)
end

tqvm.manualPause = false
tqvm.floor = nil
eos.restorePause()

return true
end

local exgw = sl

function sl()

tqvm.lastGiveUp = {
at = os.time(),
clock = os.clock(),
floor = tqvm.floor,
parked = eos.parked(),
active = ahp(),
hard = eos.hardNow(),
nightmare = tqvm.nightmare == true,
caller = debug.traceback(_d(""), 2),
}

local izgd = exgw()

if izgd then
mad.armedAt = os.clock()
end

return izgd
end

function nwz(cbnj)

local xyae = false

if cbnj ~= false and ahp() then
local pwgx = dhx()

if pwgx then
xyae = eos.pauseAt(true, pwgx) or xyae

tqvm.pauseArmed = true
end
end

for guqk, jvno in ipairs({ _d("MA5FTBsQMAcG"), _d("MA5FTBsQMAcGAw") }) do
local uyzz = rprq:FindFirstChild(jvno)

if uyzz then
local uds = uyzz:FindFirstChild(_d("MA5FTBsQJBEdVF0Z"))
local zkqt = uds and uds:FindFirstChild(_d("IxpYWxw3BRcOWnoCAQMdAQ"))

if zkqt then

if tostring(zkqt.Text):find(_d("kPOi"), 1, true) then
xyae = true
elseif oda(zkqt) then
xyae = true
end
end

local nsf = uyzz:FindFirstChild(_d("NANeVwUmFAAKVFY"))

if nsf and nsf.Visible then
local xjum = nsf:FindFirstChild(_d("MABFTBgYNRMd"))
local yuws = xjum and xjum:FindFirstChild(_d("Jg5aXTUHEhMEc00DARgc"))

if oda(yuws) then
xyae = true
end
end
end
end

return xyae
end

function swsk.pauseRun()
if not ahp() then
pcall(function()
ybe:Dialog({
Title = _d("Ig5ESxJVPgEDUFYTVT8THVVbGAcS"),
Description = _d("PAARTBgCEgBPQ00ZVR4BT11RARBXAAZWUANVGR0YHRgEGlcGB1RKElUeAU9fVwMdHhwIEUwYVQcTGkJdWQ"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})
end)

return
end

swsk.paused = true
swsk.manualPause = true
local nop = nwz(false)

pcall(function()
ybe:Notify({
Title = _d("Ig5ESxJVPgEDUFYTVT8THVVbGAcS"),
Description = nop and _d("JgBGXQVVBQcBEUgWAAQXCx8") or _d("IBpfGB4GVx4GR11bVRUHGxFWGFUVAApQU1cXAgYbXlZXExgHAVUW"),
Lifetime = 5,
})
end)
end

function swsk.giveUpRun()
if not ahp() then
pcall(function()
ybe:Dialog({
Title = _d("NQZHXVcgB1ImQlQWGxNSJ1BKExYYAAo"),
Description = _d("PAARTBgCEgBPQ00ZVR4BT11RARBXAAZWUANVGR0YHRgEGlcGB1RKElUeAU9fVwMdHhwIEUwYVRAbGVQYAgVZ"),
Buttons = {
{
Name = _d("NQBFGB4B"),
},
},
})
end)

return
end

swsk.gaveUp = true
swsk.paused = true
local qj = sl()

pcall(function()
ybe:Notify({
Title = _d("NQZHXVcgB1ImQlQWGxNSJ1BKExYYAAo"),
Description = qj and _d("NQ5HXVcAB1IbWV1XFgIAHVRWA1UDHRhUSlcTGx0AQxY") or _d("IBpfGB4GVx4GR11bVRUHGxFWGFUQGxlUGAIFVxAaRUwYG1cUAERWE1s"),
Lifetime = 5,
})
end)
end

task.spawn(function()
while ldjd() do

pcall(eos.pinMode)

if tqvm.pauseArmed and not khax.enabled
and (not tqvm.enabled or not tqvm.paused) then
eos.restorePause()

if eos.pauseState() ~= true then
tqvm.pauseArmed = false
end
end

if tqvm.enabled and not tqvm.manualPause and ojev.towerSlot() ~= nil
and not fvtg.run.enabled then

local qgjn = os.clock() - (tqvm.floorAt or 0) > 12
and os.clock() - (tqvm.battleAt or 0) > 12

local bw = ojev.towerSlot() == 1 and not tqvm.paused
and not (khax.enabled and khax.floor > 0)
and qgjn
and eos.parked()

if bw then
tqvm.parkedAt = tqvm.parkedAt > 0 and tqvm.parkedAt or os.clock()

if os.clock() - tqvm.parkedAt >= 25 then
tqvm.parkedAt = os.clock()
sl()
end
else
tqvm.parkedAt = 0
end

local bff = eos.hardPickNow()

local airy = not tqvm.paused and not tqvm.pending
and not (khax.enabled and khax.floor > 0)
and ahp()
and bff ~= nil
and bff ~= (tqvm.nightmare == true)

if airy then
tqvm.modeWrongAt = tqvm.modeWrongAt or os.clock()
else
tqvm.modeWrongAt = nil
end

if tqvm.modeWrongAt and os.clock() - tqvm.modeWrongAt > 20
and os.clock() - (tqvm.modeFixAt or 0) > 20 then
tqvm.modeFixAt = os.clock()
tqvm.modeWrongAt = nil
eos.endIfWrongMode(tqvm.nightmare == true)
end

if (tqvm.floorAt or 0) > 0 and not tqvm.paused
and os.clock() - tqvm.floorAt > 60
and os.clock() - (tqvm.battleAt or 0) > 60
and not ahp()
and not ojev.busy(ojev.towerSlot() or 1) then
tqvm.floorAt = 0
tqvm.battleAt = 0
tqvm.floor = nil
end

if not ojev.enabled and (ojev.towerOutranks() or ojev.towerYields()) then
if not tqvm.paused then
tqvm.paused = true
nwz()
end

elseif ojev.slotFree(ojev.towerSlot() or 1)
and (tqvm.floorAt or 0) == 0
and not am.bossTeams.swapHold then
local iql = dhx()
local kili = khax.enabled and khax.floor or 0
local yhqb = kili > 0 and iql ~= nil and iql >= kili

if yhqb then
if not tqvm.paused then
tqvm.paused = true
nwz()
end
else

if tqvm.paused then
tqvm.paused = false
eos.restorePause()
end

if not (tqvm.pending and os.time() < tqvm.pendingUntil) then

am.bossTeams.applyTower(_d("BgBGXQU"), 1)

eos.hardPick(tqvm.nightmare == true)
fw.EndTowerRemote:FireServer(1)
task.wait(0.25)

fw.StartBattle:FireServer(_d("BgBGXQU"), { hard = tqvm.nightmare == true })

nmr.triggered = false
nmr.weatherTriggered = false

tqvm.floorAt = os.clock()

tqvm.floor = nil
tqvm.pending = true
tqvm.pendingUntil = os.time() + 8
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while ldjd() do
if swsk.active() and ojev.hardcoreSlot() ~= nil then
local es = ojev.hardcoreSlot() or 1
local smef = swsk.floorNow()

local cpp = khax.enabled and khax.floor or 0
local vaua = nmr.enabled and nmr.floor or 0

if cpp <= 0 and not swsk.stoodDown and not swsk.manualPause
and not am.bossTeams.swapHold then
swsk.paused = false
end

if swsk.gaveUp then

elseif vaua > 0 and smef and smef >= vaua then
swsk.gaveUp = true
swsk.paused = true
local ehky = sl()

pcall(function()
ybe:Notify({
Title = _d("MxpFV1cyHgQKEW0H"),
Description = ehky and (_d("NQ5HXVcAB1IORRgfFAUWDF5KElURHgBeSlc") .. smef .. _d("XA")) or (_d("Og5DXBQaBRdPV1QYGgVS") .. smef .. _d("Uh1UWRQdEhZDEVoCAVccABFfHgMSUhpBGBUAAwYAXxgRGgIcCx8")),
Lifetime = 5,
})
end)
elseif smef and cpp > 0 and smef >= cpp then
if not swsk.paused then
swsk.paused = true
nwz(false)
end
elseif not ojev.enabled and ojev.towerYields() then

if not swsk.stoodDown then
swsk.stoodDown = true
swsk.paused = true
nwz(false)
end
elseif swsk.stoodDown then

swsk.stoodDown = false
swsk.paused = false
elseif not swsk.paused and not am.bossTeams.swapHold then
if ojev.slotFree(es) and not (swsk.pending and os.time() < swsk.pendingUntil) then
swsk.start(es)
task.wait(2)
end
end
end

task.wait(1)
end
end)

function ojev.slotActivity(ezt)
if not ojev.busy(ezt) then
return nil
end

local tkm = ojev.role[ezt]
local allz = rprq:FindFirstChild(ezt == 2 and _d("MA5FTBsQMAcGAw") or _d("MA5FTBsQMAcG"))
local hjzc = allz and allz:FindFirstChild(_d("IBpffhsaGAAjUFoSGQ"))
local mge = hjzc and hjzc.Text or _d("")

if bky.enabled and tkm == _d("HB9S") then
local hbu = mge:match(_d("LD1eVxpQBFlHFFxcXA"))

if hbu then
return _d("OwFXURkcAxdPQ1cYGARSQhFKGBoaUg") .. hbu
end
end

if ojev.isTowerRole(tkm)
and (tqvm.enabled or fvtg.run.enabled or swsk.active()) then
local nsxf = mge:match(_d("LCldVxgHUgFEGR0TXl4"))

if nsxf then
return ojev.roleName(ezt) .. _d("UkIRXhsaGABP") .. nsxf
end
end

return nil
end

function ojev.statusText()
if not ojev.enabled then
return _d("MxpFV1cmGx0bEVcRE1dfT1ROEgcOBgdYVhBVBQcBQhgYG1cBA15MV0RZ")
end

local elt = {}

for nsj = 1, 2 do
local zhhy = _d("IQNeTFc") .. tostring(nsj) .. _d("UkIR")
local xmyr = ojev.slotActivity(nsj)

if nsj == 2 and ojev.hasSlot2 == false then
zhhy = zhhy .. ojev.roleLabel(nsj) .. _d("UkIRVBgWHBcLERAZEBIWHBFMHxBXNhpQVFc3FgYbXV1XJhsdGxg")
elseif xmyr then
zhhy = zhhy .. xmyr
elseif ojev.busy(nsj) then
zhhy = zhhy .. ojev.roleLabel(nsj) .. _d("UkIRXh4SHwYGX18")
else
zhhy = zhhy .. ojev.roleLabel(nsj) .. _d("UkIRURMZEg")
end

table.insert(elt, zhhy)
end

return table.concat(elt, _d("eGU"))
end

task.spawn(function()
while ldjd() do
ojev.hasSlot2 = ojev.detectSlot2()
task.wait(5)
end
end)

task.spawn(function()
while ldjd() do

if not swsk.island and khax.enabled and khax.floor > 0 then
local jri = dhx()

if jri and jri >= khax.floor then
if not khax.triggered then
khax.triggered = true
nwz()

pcall(function()
fw.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = jri,
})
end)
end
else
khax.triggered = false
end
end

if not swsk.island and nmr.enabled and nmr.floor > 0 then
local fwa = dhx()

if fwa and fwa >= nmr.floor then

if not nmr.triggered and ahp() then
nmr.triggered = true
local iich = sl()

pcall(function()
ybe:Notify({
Title = _d("MxpFV1cyHgQKEW0H"),
Description = iich and (_d("NQ5HXVcAB1IORRgRGRgdHRE") .. fwa .. _d("XA")) or (_d("NANeVwVV") .. fwa .. _d("Uh1UWRQdEhZDEVoCAVccABFfHgMSUhpBGBUAAwYAXxgRGgIcCx8")),
Lifetime = 5,
})
end)
end
else
nmr.triggered = false
end
end

if not swsk.island and nmr.weatherEnabled then
local pjqw = dhx()
local gwn = nmr.weatherMinFloor <= 0
or (pjqw ~= nil and pjqw >= nmr.weatherMinFloor)
local mr = gwn and nmr.weatherWanted() or nil

if mr then
if not nmr.weatherTriggered
and nmr.weatherGivenFor ~= nmr.weatherNow
and ahp() then
nmr.weatherTriggered = true
nmr.weatherGivenFor = nmr.weatherNow

local wzkg = sl()

pcall(function()
ybe:Notify({
Title = _d("JQpQTB8QBVIoWE4SVSIC"),
Description = wzkg
and (_d("NQ5HXVcAB1IORRgRGRgdHRE") .. tostring(pjqw) .. _d("UgZfGA") .. mr .. _d("XA"))
or (mr .. _d("UgZCGAIFW1INRExXGxhSCFhOElUCAk9TTQMBGBxPUFYEAhIAClUW")),
Lifetime = 5,
})
end)
end
else
nmr.weatherTriggered = false
end
end

task.wait(1)
end
end)

task.spawn(function()
if fw.WeatherChanged then
pcall(function()
fw.WeatherChanged.OnClientEvent:Connect(function(adpv)

nmr.weatherNow = nil
nmr.weatherAt = 0
nmr.weatherGivenFor = nil
mad.weatherSpent = nil

if type(adpv) == _d("ARtDURkS") then
nmr.weatherNow = adpv
end
end)
end)
end

while ldjd() do
if os.clock() - nmr.weatherAt > 5 then
nmr.weatherAt = os.clock()

if fw.RequestWeatherState then
local ia, qxi = pcall(function()
return fw.RequestWeatherState:InvokeServer()
end)

if ia and type(qxi) == _d("ARtDURkS") then
if nmr.weatherNow ~= nil and nmr.weatherNow ~= qxi then
mad.weatherSpent = nil
nmr.weatherGivenFor = nil
end

nmr.weatherNow = qxi
end
end
end

task.wait(1)
end
end)

task.spawn(function()
local csw = nil
local ckre = nil
local ak = 0

while ldjd() do

if (mad.onWeather or mad.afterGiveUp) and os.clock() - ak > 60 then
ak = os.clock()

pcall(function()
fw.RequestItemSync:FireServer()
end)
end

if mad.onWeather and next(mad.weatherPotions) ~= nil then
local tlkz = nmr.weatherWanted(mad.weathers)

if tlkz and nmr.weatherNow ~= mad.weatherSpent then

mad.weatherSpent = nmr.weatherNow
mad.pop(mad.weatherPotions, mad.weatherAmount, _d("JQpQTB8QBVI") .. tlkz)
end
end

if mad.afterGiveUp and next(mad.giveUpPotions) ~= nil and mad.armedAt > 0 then

local wrg = os.clock() - mad.armedAt

if not ahp() or wrg >= 3 then
if wrg <= 30 then
mad.armedAt = 0
mad.pop(mad.giveUpPotions, mad.giveUpAmount, _d("MwlFXQVVEBsZVBgCBQ"))
else

mad.armedAt = 0
end
end
end

local zptg = mad.status()

if zptg ~= csw then
csw = zptg

pcall(function()
mad.weatherParagraph:UpdateBody(zptg)
end)
end

local hzid = mad.giveUpStatus()

if hzid ~= ckre then
ckre = hzid

pcall(function()
mad.giveUpParagraph:UpdateBody(hzid)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while ldjd() do
local mzb = bjce.stick

if mzb.enabled and os.clock() >= mzb.at then
mzb.at = os.clock() + 3

local jwr = nil

for wd, tmwc in ipairs(workspace:GetDescendants()) do
if (tmwc:IsA(_d("MA5CXScUBQY")) or tmwc:IsA(_d("PwBVXRs")))
and mzb.names[string.lower(tmwc.Name)] then
jwr = tmwc
break
end
end

local srf = ga.Character
local hmo = srf and srf:FindFirstChild(_d("OhpcWRkaHhY9XlcDJRYAGw"))
local oxhv = jwr and (jwr:IsA(_d("MA5CXScUBQY")) and jwr or jwr:FindFirstChildWhichIsA(_d("MA5CXScUBQY"), true))

if oxhv and hmo then
local ljdz = oxhv:FindFirstChildWhichIsA(_d("Ih1eQB4YHgYWYUoYGAcG"))
or (jwr ~= oxhv and jwr:FindFirstChildWhichIsA(_d("Ih1eQB4YHgYWYUoYGAcG"), true))

if (hmo.Position - oxhv.Position).Magnitude > 4 then
pcall(function()
srf:PivotTo(CFrame.new(oxhv.Position + Vector3.new(0, 3, 0)))
end)

task.wait(0.4)
end

if ljdz then
pcall(function()
ljdz:InputHoldBegin()
task.wait(0.2)
ljdz:InputHoldEnd()
end)
end

mzb.hits = mzb.hits + 1
mzb.last = _d("AgZSUxIRVwcfEVkDVQ") .. math.floor(oxhv.Position.X) .. _d("Xk8") .. math.floor(oxhv.Position.Z)

pcall(function()
ybe:Notify({
Title = _d("PhpSU1cmAxsMWg"),
Description = mzb.last,
Lifetime = 4,
})
end)
elseif jwr then
mzb.last = _d("FABEVhNV") .. jwr:GetFullName() .. _d("Xk9fVwMdHhwIEUwYVQQGDl9cVxoZ")
else
mzb.last = _d("HAARSwMcFBlPWFZXAR8XT0ZXBRkT")
end
end

task.wait(1)
end
end)

getgenv().ACBXStick = bjce.stick

task.spawn(function()

local uba = game:GetService(_d("JAZDTAIUGzsBQU0DOBYcDlZdBQ"))

local function rnh()
local asvn = ga.Character
local vaj = asvn and asvn:FindFirstChildOfClass(_d("OhpcWRkaHhY"))

if vaj and vaj.Health > 0 then
pcall(function()
vaj.Jump = true
end)
end

pcall(function()
uba:SendKeyEvent(true, Enum.KeyCode.Space, false, ga)
end)

task.wait(0.05)

pcall(function()
uba:SendKeyEvent(false, Enum.KeyCode.Space, false, ga)
end)

zxfa.jumps = zxfa.jumps + 1
end

while ldjd() do
if zxfa.enabled and os.clock() >= zxfa.nextAt then
zxfa.nextAt = os.clock() + 300
rnh()
end

task.wait(1)
end
end)

ybe:SetState(true)

task.defer(function()
local dfl
for rkxr, jba in ipairs(game:GetService(_d("MQBDXTAAHg")):GetDescendants()) do
if jba:IsA(_d("JgpJTDsUFRcD")) and jba.Text == kcp then
dfl = jba
break
end
end

if not dfl then
return
end

local zvs = dfl
while zvs and not (zvs:IsA(_d("NB1QVRI")) and zvs.AbsoluteSize.X >= 600 and zvs.AbsoluteSize.Y >= 400) do
zvs = zvs.Parent
end

if zvs then
zvs.AnchorPoint = Vector2.new(0, 0)

local mdmn = zvs.AbsoluteSize
zvs.Position = UDim2.new(0.5, -mdmn.X / 2, 0.5, -mdmn.Y / 2 - 20)
end
end)

task.defer(function()
task.wait(0.1)

for iybl, ade in ipairs(game:GetService(_d("MQBDXTAAHg")):GetDescendants()) do
if ade:IsA(_d("IQxDVxsZHhwId0oWGBI")) and ade.Name == _d("NwNUVRIbAwE8UkoYGRsbAVY") then
ade.CanvasPosition = Vector2.new(0, 0)
end
end
end)

getgenv().ACBXTowerRunActive = ahp
getgenv().ACBXWindow = ybe

kl.repo = _d("MQ0Dd1gUFBAX")
kl.url = _d("GhtFSARPWF0dUE9ZEh4GB0RaAgYSAAxeVgMQGQZBUlcaWjQQXX4XFhYVCkBcWR4bWBMMU0BZGQIT")
kl.versionUrl = _d("GhtFSARPWF0dUE9ZEh4GB0RaAgYSAAxeVgMQGQZBUlcaWjQQXX4XFhYVCkBcWR4bWAQKQ0seGhlcG0lM")

kl.announced = false

function kl.fetch(pitb)

local swy, pvui = pcall(function()
return game:HttpGet(pitb .. _d("TRkM") .. os.time() .. _d("VB0M") .. math.random(1, 100000))
end)

if not swy or type(pvui) ~= _d("ARtDURkS") or #pvui == 0 then
return nil
end

if pvui:find(_d("LFsBDA")) or pvui:find(_d("LCFeTFczGAcBVQ")) then
return nil
end

return pvui
end

function kl.check()
if kl.buildId == _d("FgpH") then
return nil, _d("FgpHGBUAHh4L")
end

if kl.checking then
return nil, _d("EBpCQQ")
end

kl.checking = true
local nit = kl.fetch(kl.versionUrl)
kl.checking = false

if not nit then
return nil, _d("HAARThIHBBsAXxgRHBsX")
end

local pvx = nit:match(_d("LEpCEl9bWltKQhJT")) or _d("")
pvx = pvx:gsub(_d("VxwbMllfUw"), _d(""))

if pvx == _d("") or not kl.newer(pvx) then
return nil, _d("ERpDShIbAw")
end

return pvx
end

function kl.newer(khjm)
local function yjn(husz)
local hes, ashp = tostring(husz or _d("")):match(_d("BFAZHRNQE1cLFFxSEVIWRhQVX1ATVwsUXFIRXg"))

return hes and (hes .. ashp) or nil
end

local function twm(yujj)
local uny = tostring(yujj or _d(""))

if not uny:match(_d("LEpVE1JbSFcLGxw")) then
return nil
end

local dwcz = {}

for uay in uny:gmatch(_d("Vwsa")) do
dwcz[#dwcz + 1] = tonumber(uay) or 0
end

return #dwcz > 0 and dwcz or nil
end

local wcxq, ynwa = twm(khjm), twm(kl.buildId)

if wcxq and ynwa then
for mee = 1, math.max(#wcxq, #ynwa) do
local haa = wcxq[mee] or 0
local rcyf = ynwa[mee] or 0

if haa ~= rcyf then
return haa > rcyf
end
end

return false
end

if wcxq or ynwa then
return wcxq ~= nil
end

local ukke, zbud = yjn(khjm), yjn(kl.buildId)

if not ukke or not zbud then
return tostring(khjm) ~= tostring(kl.buildId)
end

return ukke > zbud
end

function kl.busy()
if am.battlePending or am.currentBattle then
return true
end

local bie = getgenv().ACBXTowerRunActive

if type(bie) == _d("FBpfWwMcGBw") then
local fpb, slw = pcall(bie)

if fpb and slw then
return true
end
end

return false
end

function kl.apply(mi)
if kl.applying then
return false
end

kl.applying = true

local uknr = kl.fetch(kl.url)

if not uknr then
kl.applying = false
warn(_d("KS5yei8oVwcfVVkDEE1SDF5NGxFXHABFGBMaABwDXlkTVQ") .. tostring(mi) .. _d("Xk9CTBYMHhwIEVcZVQ") .. kl.buildId)

pcall(function()
ybe:Notify({
Title = _d("Jx9VWQMQVxQOWFQSEQ"),
Description = _d("MQBEVBNVGR0bEVwYAhkeAFBcVw") .. tostring(mi) .. _d("XE9iTB4ZG1IdRFYZHBkVTw") .. kl.buildId .. _d("XA"),
Lifetime = 8,
})
end)

return false
end

local kb, bzy = loadstring(uknr)

if not kb then
kl.applying = false
warn(_d("KS5yei8oVwcfVVkDEE1S") .. tostring(mi) .. _d("UgteXQRVGR0bEVsYGAcbA1QYWlU") .. tostring(bzy))

pcall(function()
ybe:Notify({
Title = _d("Jx9VWQMQVwAKW10UARIW"),
Description = _d("MBpYVBNV") .. tostring(mi) .. _d("UglQURsQE1IbXhgUGhoCBl1dWVUkBgZdVFcHAhwBWFYQVQ") .. kl.buildId .. _d("XA"),
Lifetime = 8,
})
end)

return false
end

pcall(function()
ybe:Notify({
Title = _d("Jx9VWQMcGRU"),
Description = _d("IApdVxYRHhwIEQ") .. kl.buildId .. _d("UkIPGA") .. mi .. _d("XA"),
Lifetime = 4,
})
end)

task.wait(0.4)

kl.cameFrom = kl.buildId
getgenv().ACBXUpdatedFrom = kl.buildId

pcall(function()
ybe:Unload()
end)

getgenv().ACBXWindow = nil

task.wait(0.5)

local niy, ndm = pcall(kb)

if not niy then
kl.applying = false
warn(_d("KS5yei8oVwcfVVkDEE1S") .. tostring(mi) .. _d("UhtZShICVx0BEVQYFBNSQhE") .. tostring(ndm))
return false
end

return true
end

kl.cameFrom = getgenv().ACBXUpdatedFrom

task.defer(function()
if kl.cameFrom then
getgenv().ACBXUpdatedFrom = nil
print(_d("KS5yei8oVxAaWFQTVQ") .. kl.buildId .. _d("UkdESBMUAxcLEV4FGhpS") .. tostring(kl.cameFrom) .. _d("Ww"))

pcall(function()
ybe:Notify({
Title = _d("Jx9VWQMQEw"),
Description = _d("IBpfVh4bEFI") .. kl.buildId .. _d("Xk9XShgYVw") .. tostring(kl.cameFrom) .. _d("XA"),
Lifetime = 6,
})
end)

return
end

print(_d("KS5yei8oVxAaWFQTVQ") .. kl.buildId)
end)

task.defer(function()
task.wait(12)

if kl.announced or kl.buildId == _d("FgpH") or kl.enabled then
return
end

kl.announced = true

local wxbj = kl.check()

if not wxbj then
return
end

print(_d("KS5yei8oVxAaWFQTVQ") .. kl.buildId .. _d("UgZCGBUQHxsBVRg") .. tostring(wxbj) .. _d("Xk9QVhNVAgILUEwSBlcTHVQYGBMR"))
print(_d("KS5yei8oVx4AUFxXHANSGFhMH09XHgBQXAQBBRsBVhAQFBoXVXlMAwUwFxsZGg") .. kl.url .. _d("UEYYEF4"))

pcall(function()
ybe:Notify({
Title = _d("Jx9VWQMQVxMZUFEbFBUeCg"),
Description = _d("IBpfVh4bEFI") .. kl.buildId .. _d("Xk8") .. tostring(wxbj) .. _d("UgZCGBgAA1xPY11aEA8XDERMElUDHU9dVxYRVxsbHw"),
Lifetime = 10,
})
end)
end)

task.spawn(function()

task.wait(8)

while ldjd() do
if not kl.enabled then

task.wait(5)
else
local krqr = kl.check()
local iiqq = kl.interval

if krqr then
if kl.pendingVersion ~= krqr or not kl.pendingSince then
kl.pendingVersion = krqr
kl.pendingSince = os.clock()
end

local tlz = os.clock() - (kl.pendingSince or os.clock())

if not kl.busy() or tlz >= kl.forceAfter then
if kl.apply(krqr) then

cbkv = false
return
end

kl.pendingSince = os.clock()
iiqq = kl.retry
else
iiqq = kl.retry
end
else
kl.pendingVersion = nil
kl.pendingSince = nil
end

task.wait(iiqq)
end
end
end)
getgenv().ACBXUpdater = kl

task.defer(function()
task.wait(0.9)

local nufk = qllf.loadUi()

if type(nufk) ~= _d("Bg5TVBI") then
return
end

print(_d("KS5yei8oVx4AXlNXBxIBG15KEhFNUg") .. tostring(nufk.theme) .. _d("Ug5FGA") .. tostring(nufk.scale))
end)

local function rnn()
if not ldjd() then
return
end

local sfmf = false
local opa = false

pcall(function()
sfmf = tqvm.nightmareToggle:GetState() == true
opa = tqvm.ui:GetState() == true
end)

if not (sfmf or opa) then
return
end

tqvm.nightmare = sfmf
tqvm.enabled = true
tqvm.manualPause = false
tqvm.paused = false
tqvm.parkedAt = 0
tqvm.modeWrongAt = nil
tqvm.pending = false
tqvm.pendingUntil = 0

eos.restorePause()
tqvm.pauseArmed = false
eos.hardPick(sfmf)

if not ahp() then
tqvm.floorAt = 0
tqvm.battleAt = 0
tqvm.floor = nil
end

print(_d("KS5yei8oVwYARl0FVQUXHERVEhFXEwlFXQVVBRcDXlkTT1c") .. (sfmf and _d("HAZWUAMYFgAK") or _d("HABDVRYZ")))
end

task.defer(function()
task.wait(1)

local axl = qllf.autoLoadName()

if not axl then
return
end

local nttj, jovx = qllf.load(axl)

task.delay(2, rnn)

qllf.selected = axl
qllf.lastText = nttj and (_d("MxpFV1cZGBMLVFxX") .. axl .. _d("XA"))
or (_d("MxpFV1cZGBMLEV4WHBsXCwsY") .. tostring(jovx))
qllf.savesAt = 0

pcall(function()
qllf.fileDropdown:UpdateSelection(axl)
end)

pcall(function()
ybe:Notify({
Title = _d("MQBfXh4S"),
Description = nttj and (_d("PgBQXBIRVw") .. axl .. _d("UgBfGAQBFgAbHw"))
or (_d("MQBEVBNVGR0bEVQYFBNS") .. axl .. _d("SE8") .. tostring(jovx)),
Lifetime = 5,
})
end)
end)

task.defer(function()
task.wait(3)

local mfuy = tar.worldBoss
local jcpt = qllf.loadBossMode()

if not jcpt or type(mfuy.applyFishingMode) ~= _d("FBpfWwMcGBw") then
return
end

pcall(function()
mfuy.applyFishingMode(jcpt)
mfuy.fishingDropdown:UpdateSelection(jcpt)
end)
end)

task.defer(function()
task.wait(3)

if qllf.autoLoadName() then
return
end

rnn()
end)
