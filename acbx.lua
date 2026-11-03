local _d = (function()
local A = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local M = {}
local cache = {}
for i = 1, #A do
M[string.sub(A, i, i)] = i - 1
end
local K = string.char(120, 54, 55, 106, 118, 112, 56)
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

local mk = "ACB Rebirth v1.03"

local function eew(hd)
for mol, lyl in ipairs(hd:GetDescendants()) do
if lyl:IsA(_d("LFNPHjoRWh1a")) and lyl.Text == mk then
local xm = lyl
while xm and not xm:IsA(_d("K1VFDxMefw1f")) do
xm = xm.Parent
end
return xm
end
end
end

local function jj()
local llzm = game:GetService(_d("KFpWExMCSw")).LocalPlayer

for rqw, su in ipairs({
(gethui and gethui() or game:GetService(_d("O1lFDzEFUQ"))),
game:GetService(_d("O1lFDzEFUQ")),
llzm and llzm:FindFirstChild(_d("KFpWExMCfw1f")),
}) do
for fm, nntv in ipairs(su:GetChildren()) do

if nntv:IsA(_d("K1VFDxMefw1f")) then
local jfiw = nntv:FindFirstChild(_d("OldEDw"))

if jfiw and jfiw:FindFirstChild(_d("K19TDxQRSg")) and jfiw:FindFirstChild(_d("O1lZHhMeTA")) then
return nntv
end
end
end
end
end

if jj() and getgenv().ACBXAllowReload ~= true then
local ml = getgenv().ACBXWindow
local cx = false
local hit = false

if ml and ml.Dialog then
pcall(function()
if ml.GetState and ml:GetState() == false then
ml:SetState(true)
end

ml:Dialog({
Title = _d("OXV1SiQVWhFEQwJWGUtYV1sYExFcARZFHxgeURZR"),
Description = _d("ORZUBQYJGBFFFwsaAl0ZUk5KGh9ZHFNTSh8eGAxeXhlWA10LRV4FGF4YKlNHBhcTXVhfQ0oBGUwQFkMCHwMYF1hSVVYkUB0WRR8YHlEWURcJGQBBWEVDBQYDGB5fRRkCXBgLWRcFGBxBWFlZD1YVTh1EFw4EGU4dRRceHhUYGVVUBQMeTFY"),
Buttons = {
{
Name = _d("KlNHBhcTXQ"),
Callback = function()
hit = true
cx = true
end,
},
{
Name = _d("M1NSGg"),
Callback = function()
cx = true
end,
},
},
})
end)
else

hit = true
cx = true
end

local zty = os.clock() + 90

while not cx and os.clock() < zty do
task.wait(0.25)
end

if not hit then
warn(_d("I3d0KC4tGBRZVg5WAl0eQ0QPElAVWEJfD1YTVwhPFx4eEUxYX0RKBAVWFl9ZDVYDTBlPRERWM1QRVVxKJBVIFFdUD1YEV1hFQAsGUFEMGhcFBFBNC1MXPxgcVxlSFxkVAlEIQhcDGFBRDEUXORMETBFYUBlWBFkaGA"))

return
end

warn(_d("I3d0KC4tGApTRwYXE1EWURceHhUYCkNZBB8eX1hVWBoPUE8RQl9KAhhRCxZYBBNe"))
end

getgenv().ACBXAllowReload = nil

local fnza = getgenv().ACBXConnections
if type(fnza) == _d("DFdVBhM") then
for sj, skv in ipairs(fnza) do
pcall(function()
skv:Disconnect()
end)
end
end

local eie = {}
getgenv().ACBXConnections = eie

local function im(ro, iqso)
local ugp = ro:Connect(iqso)

table.insert(eie, ugp)

return ugp
end

local dvym = getgenv().ACBXWindow
if dvym then
pcall(function()
dvym:Unload()
end)
end

for uxm, nr in ipairs({
game:GetService(_d("O1lFDzEFUQ")),
game:GetService(_d("KFpWExMCSw")).LocalPlayer:FindFirstChild(_d("KFpWExMCfw1f")),
}) do
if nr then
local qs = eew(nr)
if qs then
qs:Destroy()
end
end
end

local tdh = game:GetService(_d("KFpWExMCSw"))
local ayu = game:GetService(_d("KlNHBh8TWQxTUzkCH0oZUVI"))
local pfr = game:GetService(_d("KFdDAhAZVhxfWQ0lFUoOX1QP"))
local ako = game:GetService(_d("KkNZORMCThFVUg"))
local omhv = tdh.LocalPlayer
local ff = omhv:WaitForChild(_d("KFpWExMCfw1f"))

local wamw = false

local function dk()
pcall(function()
local guxg = game:GetService(_d("LEFSDxgjXQpAXgkT"))
local bzo = (gethui and gethui()) or ff
local ueu = Color3.fromRGB(77, 166, 255)
local sr = omhv.DisplayName

local function rqn(vmp, ahjg, vipu)
guxg:Create(
vmp,
TweenInfo.new(ahjg, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
vipu
):Play()
task.wait(ahjg)
end

local svo = Instance.new(_d("K1VFDxMefw1f"))
svo.Name = _d("OXV1Mj8eTApZ")
svo.IgnoreGuiInset = true
svo.DisplayOrder = 1000000
svo.ResetOnSpawn = false
svo.Parent = bzo

local ncxx = Instance.new(_d("PkRWBxM"))
ncxx.Size = UDim2.fromScale(1, 1)
ncxx.BackgroundColor3 = Color3.fromRGB(4, 6, 11)
ncxx.BackgroundTransparency = 1
ncxx.BorderSizePixel = 0
ncxx.Parent = svo

local zz = Instance.new(_d("PkRWBxM"))
zz.AnchorPoint = Vector2.new(0.5, 0.5)
zz.Position = UDim2.fromScale(0.5, 0.5)
zz.Size = UDim2.fromOffset(400, 176)
zz.BackgroundColor3 = Color3.fromRGB(11, 16, 26)
zz.BackgroundTransparency = 1
zz.BorderSizePixel = 0
zz.Parent = svo

local up = Instance.new(_d("LX90BQQeXQo"))
up.CornerRadius = UDim.new(0, 14)
up.Parent = zz

local tu = Instance.new(_d("LX9kHgQfUx0"))
tu.Color = Color3.fromRGB(46, 60, 86)
tu.Thickness = 1
tu.Transparency = 1
tu.Parent = zz

local hzsb = Instance.new(_d("PkRWBxM"))
hzsb.Size = UDim2.fromOffset(44, 2)
hzsb.Position = UDim2.new(0.5, -22, 0, 34)
hzsb.BackgroundColor3 = ueu
hzsb.BorderSizePixel = 0
hzsb.BackgroundTransparency = 1
hzsb.Parent = zz

local edml = Instance.new(_d("LFNPHjoRWh1a"))
edml.BackgroundTransparency = 1
edml.Size = UDim2.new(1, -48, 0, 48)
edml.Position = UDim2.fromOffset(24, 42)
edml.Font = Enum.Font.GothamBold
edml.Text = _d("O3QXIiMy")
edml.TextSize = 28
edml.TextYAlignment = Enum.TextYAlignment.Center
edml.TextColor3 = Color3.fromRGB(236, 242, 255)
edml.TextTransparency = 1
edml.Parent = zz

local wopd = Instance.new(_d("LFNPHjoRWh1a"))
wopd.BackgroundTransparency = 1
wopd.Size = UDim2.new(1, -48, 0, 20)
wopd.Position = UDim2.fromOffset(24, 94)
wopd.Font = Enum.Font.Gotham
wopd.Text = _d("FFlWDh8eXw")
wopd.TextSize = 14
wopd.TextColor3 = Color3.fromRGB(150, 163, 186)
wopd.TextTransparency = 1
wopd.Parent = zz

local kuhd = Instance.new(_d("PkRWBxM"))
kuhd.Size = UDim2.fromOffset(240, 3)
kuhd.Position = UDim2.new(0.5, -120, 0, 130)
kuhd.BackgroundColor3 = Color3.fromRGB(34, 44, 64)
kuhd.BorderSizePixel = 0
kuhd.BackgroundTransparency = 1
kuhd.Parent = zz

local xc = Instance.new(_d("PkRWBxM"))
xc.Size = UDim2.fromScale(0, 1)
xc.BackgroundColor3 = ueu
xc.BorderSizePixel = 0
xc.BackgroundTransparency = 1
xc.Parent = kuhd

local rfa = Instance.new(_d("LX90BQQeXQo"))
rfa.CornerRadius = UDim.new(0, 4)
rfa.Parent = kuhd

local tsto = Instance.new(_d("LX90BQQeXQo"))
tsto.CornerRadius = UDim.new(0, 4)
tsto.Parent = xc

rqn(ncxx, 0.35, { BackgroundTransparency = 0.15 })
task.spawn(function()
rqn(zz, 0.3, { BackgroundTransparency = 0 })
end)
task.spawn(function()
rqn(tu, 0.3, { Transparency = 0 })
end)
rqn(edml, 0.3, { TextTransparency = 0 })
rqn(hzsb, 0.3, { BackgroundTransparency = 0 })
rqn(wopd, 0.3, { TextTransparency = 0 })
rqn(kuhd, 0.3, { BackgroundTransparency = 0 })
rqn(xc, 0.3, { BackgroundTransparency = 0 })

local caqm = { _d("FFlWDh8eXw"), _d("FFlWDh8eX1Y"), _d("FFlWDh8eX1YY"), _d("FFlWDh8eX1YYGQ") }
task.spawn(function()
guxg:Create(xc, TweenInfo.new(1.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
Size = UDim2.fromScale(1, 1),
}):Play()
for mjg = 1, 6 do
wopd.Text = caqm[(mjg - 1) % #caqm + 1]
task.wait(0.2)
end
end)
task.wait(1.2)

rqn(edml, 0.2, { TextTransparency = 1 })
rqn(wopd, 0.2, { TextTransparency = 1 })
rqn(kuhd, 0.2, { BackgroundTransparency = 1 })
rqn(xc, 0.2, { BackgroundTransparency = 1 })

edml.Text = _d("LF5WBB0DGB5ZRUoDA1EWURcHD1BLG0ReGgI")
edml.TextSize = 22
edml.TextWrapped = true
wopd.Text = mk
rqn(edml, 0.25, { TextTransparency = 0 })
rqn(wopd, 0.25, { TextTransparency = 0 })
task.wait(1.1)
rqn(edml, 0.2, { TextTransparency = 1 })
rqn(wopd, 0.2, { TextTransparency = 1 })

edml.Text = _d("L1NbCRkdXVg") .. sr .. _d("WGJYSjUyGDBDVQ")
edml.TextSize = 22
wopd.Text = _d("C0JWGAIZVh8")
rqn(edml, 0.3, { TextTransparency = 0 })
rqn(wopd, 0.3, { TextTransparency = 0 })
task.wait(1.3)

rqn(edml, 0.25, { TextTransparency = 1 })
rqn(wopd, 0.25, { TextTransparency = 1 })
rqn(ncxx, 0.35, { BackgroundTransparency = 1 })

svo:Destroy()
end)

wamw = true
end

task.spawn(dk)

local nkq = ayu:WaitForChild(_d("KlNaBQIVSw"))

local function wek(yw, xh)
local hwc = nkq:FindFirstChild(yw)

if hwc then
return hwc
end

local gt = nkq:WaitForChild(yw, xh or 3)

if not gt then
warn(_d("OXV1MkxQSh1bWB4TUB8") .. yw .. _d("XxZZBVYcVxZRUhhWFUARRUMZVhlWWEJfAwVQXxlbUkoAFUoLX1gEVl0YDF5WHlYWXRlCQhgTUFELFlgMEA"))
end

return gt
end

local xl = {
StartNPCBattle = wek(_d("K0JWGAI+aDt0Vh4CHF0")),
NPCBattleResult = wek(_d("NmZ0KBcETBRTZQ8FBVQM")),
SyncNPCCooldowns = wek(_d("K09ZCTggeztZWAYSH08WRQ")),
SetNPCDifficulty = wek(_d("K1NDJCYzfBFQUQMVBVQMTw")),
StartRaidBattle = wek(_d("K0JWGAIiWRFSdQsCBFQd")),
SetRaidDifficulty = wek(_d("K1NDOBcZXDxfUQwfE00UQk4")),
RaidProgress = wek(_d("KldeDiYCVx9EUhkF")),
RequestRaidProgress = wek(_d("KlNGHxMDTCpXXg4mAlcfRFIZBQ")),
SyncInfiniteRoomProgress = wek(_d("K09ZCT8eXhFYXh4TIlcXW2cYGRdKHUVE")),
BuyRaidItem = wek(_d("OkNOOBcZXDFCUgc")),
RaidShopState = wek(_d("KldeDiUYVwhlQwsCFQ")),
RaidNotify = wek(_d("KldeDjgfTBFQTg")),
SyncItems = wek(_d("K09ZCT8EXRVF")),

UseItem = wek(_d("LUVSIwIVVQ")),
UseItemResult = wek(_d("LUVSIwIVVSpTRB8aBA")),
RequestWeatherState = wek(_d("KlNGHxMDTC9TVh4eFUorQlYeEw")),
WeatherChanged = wek(_d("L1NWHh4VSjteVgQRFVw")),
FishingUpdate = wek(_d("Pl9EAh8eXy1GUwsCFQ")),
FishingThrow = wek(_d("Pl9EAh8eXyxeRQUB")),
FishingReel = wek(_d("Pl9EAh8eXypTUgY")),
FishingStop = wek(_d("Pl9EAh8eXytCWBo")),

FishingIslandTeleport = wek(_d("Pl9EAh8eXzFFWwsYFGwdWlIaGQJM")),

SyncCollection = wek(_d("K09ZCTUfVBRTVB4fH1Y")),
RequestSync = wek(_d("KlNGHxMDTCtPWQk")),
ClaimIndexReward = wek(_d("O1pWAxs5VhxTTzgTB1kKUg")),
RequestAchievements = wek(_d("KlNGHxMDTDlVXwMTBl0VU1keBQ")),
SyncAchievements = wek(_d("K09ZCTcTUBFTQQ8bFVYMRQ")),
ClaimAchievement = wek(_d("O1pWAxsxWxBfUhwTHV0WQg")),
RequestQuests = wek(_d("KlNGHxMDTClDUhkCAw")),
SyncQuests = wek(_d("K09ZCScFXQtCRA")),
ClaimQuest = wek(_d("O1pWAxshTR1FQw")),
RequestPeriodicQuests = wek(_d("KlNGHxMDTChTRQMZFFEbZ0IPBQRL")),
SyncPeriodicQuests = wek(_d("K09ZCSYVShFZUwMVIU0dRUMZ")),
ClaimPeriodicQuest = wek(_d("O1pWAxsgXQpfWA4fE2kNU0Qe")),

OpenFuseDialog = wek(_d("N0ZSBDAFSx1yXgsaH18")),
FuseCards = wek(_d("PkNEDzURShxF")),
OpenDeconstructDialog = wek(_d("N0ZSBDIVWxdYRB4EBVsMcl4LGh9f")),
DeconstructCards = wek(_d("PFNUBRgDTApDVB41EUocRQ")),
OpenPackShop = wek(_d("N0ZSBCYRWxNlXwUG")),
EquipPack = wek(_d("PUdCAwYgWRtd")),

RequestSkillTree = wek(_d("KlNGHxMDTCtdXgYaJEodUw")),
BuySkillNode = wek(_d("OkNOOR0ZVBR4WA4T")),
OpenAccessoryShop = wek(_d("N0ZSBDcTWx1FRAUECWsQWUc")),
OpenAccessoryShop2 = wek(_d("N0ZSBDcTWx1FRAUECWsQWUdY")),
BuyAccessory = wek(_d("OkNOKxUTXQtFWBgP")),
BuyAccessory2 = wek(_d("OkNOKxUTXQtFWBgPQg")),
EquipAccessory = wek(_d("PUdCAwYxWxtTRBkZAkE")),

RedeemCode = wek(_d("KlNTDxMdexdSUg")),

OpenNPCDialog = wek(_d("N0ZSBDggezxfVgYZFw")),
TeleportToWorld = wek(_d("LFNbDwYfSgxiWD0ZAlQc")),
RaidBattleStarted = wek(_d("KldeDjQRTAxaUjkCEUoMU1M")),
BattleEnd = wek(_d("OldDHhoVfRZS")),
StartBattle = wek(_d("K0JWGAIyWQxCWw8")),
RequestInfiniteRoomProgress = wek(_d("KlNGHxMDTDFYUQMYGUwdZFgFGyBKF1FFDwUD")),
EndTowerRemote = wek(_d("PVhTPhkHXQpkUgcZBF0")),
SaveClientData = wek(_d("K1dBDzUcUR1YQy4XBFk")),
OpenRaidShop = wek(_d("N0ZSBCQRURxlXwUG")),
RequestItemSync = wek(_d("KlNGHxMDTDFCUgclCVYb")),
FishingGetState = wek(_d("Pl9EAh8eXz9TQzkCEUwd")),
FishingSetAuto = wek(_d("Pl9EAh8eXytTQysDBFc")),
FishingShop = wek(_d("Pl9EAh8eXyteWBo")),
DigGetState = wek(_d("PF9QLRMEawxXQw8")),
DigShop = wek(_d("PF9QOR4fSA")),
DigAction = wek(_d("PF9QKxUEURdY")),
DigUpdate = wek(_d("PF9QPwYUWQxT")),
}

local cl = require(ayu.ModuleScripts.NPCData)
local bsnf = require(ayu.ModuleScripts.WorldDifficultyData)
local cd = require(ayu.ModuleScripts.BossData)
local shz = require(ayu.ModuleScripts.RaidData)
local jka = require(ayu.ModuleScripts.InfiniteRoomData)
local ccrb = require(ayu.ModuleScripts.CraftData)
local pa = require(ayu.ModuleScripts.AchievementData)
local qaed = require(ayu.ModuleScripts.RaidShopData)
local pc = require(ayu.ModuleScripts.ItemData)
local ysw = require(ayu.ModuleScripts.CardData)
local wo = require(ayu.ModuleScripts.SkillTreeData)

local fq = {
enabled = false,
role = { _d("DFlADwQ"), _d("FkZU") },

picked = { _d("LFlADwQ"), _d("NmZ0ShQRTAxaUhk") },
hasSlot2 = nil,
toggle = nil,

optionsFor = {
{ _d("LFlADwQ"), _d("MFdbBhkHXR1YFx4ZB10K"), _d("NmZ0ShQRTAxaUhk") },
{ _d("NmZ0ShQRTAxaUhk"), _d("MUVbCxgUGBBXRQ4VH0od") },
},
roleIds = {
Tower = _d("DFlADwQ"),

[_d("MFdFDhUfSh0WQwUBFUo")] = _d("EFdFDhUfSh0"),
[_d("NmZ0ShQRTAxaUhk")] = _d("FkZU"),
[_d("MFdbBhkHXR1YFx4ZB10K")] = _d("EFdbBhkHXR1Y"),
[_d("MUVbCxgUGBBXRQ4VH0od")] = _d("EFdFDhUfSh0"),
},
roleNames = {
tower = _d("LFlADwQ"),
hardcore = _d("MUVbCxgUGBBXRQ4VH0od"),
npc = _d("NmZ0ShQRTAxaUhk"),
halloween = _d("MFdbBhkHXR1YFx4ZB10K"),
},
}

fq.prioGroups = {
{ id = _d("CldeDgU"), label = _d("KldeDgU"), rank = 1 },
{ id = _d("GllEGQ"), label = _d("P1pYCBccGBpZRBk"), rank = 2 },
{ id = _d("FkZU"), label = _d("NmZ0ShQRTAxaUhlWVhgKWVgHBQ"), rank = 3 },
{ id = _d("EFdFDhUfSh0"), label = _d("MUVbCxgUGDBXRQ4VH0od"), rank = 4 },
{ id = _d("D1dDDwQ"), label = _d("Pl9EAh8eX1gZFy4fF18RWFA"), rank = 5 },
}

fq.prioBlocks = function()
return false
end

fq.digBlocked = function()
return false
end

function fq.detectSlot2()
local rr = ff:FindFirstChild(_d("K1NDHh8eXwtxQgM"))
local zl = rr and rr:FindFirstChild(_d("K1pYHiIVWRUEZQUB"), true)

if zl then
return zl.Visible == true
end

return nil
end

function fq.roleSlot(ru)
if not fq.enabled then
return 1
end

for je = 1, 2 do
if fq.role[je] == ru then
return je
end
end

return nil
end

function fq.isTowerRole(sg)
return sg == _d("DFlADwQ") or sg == _d("EFdFDhUfSh0") or sg == _d("EFdbBhkHXR1Y")
end

function fq.towerSlot()
return fq.roleSlot(_d("DFlADwQ"))
end

function fq.hardcoreSlot()
local hnkf = fq.roleSlot(_d("EFdFDhUfSh0"))

if hnkf == 2 and fq.hasSlot2 == false then
return 1
end

return hnkf
end

function fq.halloweenSlot()

local bp = fq.roleSlot(_d("EFdbBhkHXR1Y"))

if bp == 1 then
return 1
end

return nil
end

function fq.roomSlot()
local cp = fq.roleSlot(_d("FkZU"))

if not fq.enabled then
return 1
end

if cp == nil then
return nil
end

if cp == 2 and fq.hasSlot2 == false then
return 1
end

return cp
end

function fq.splitNpc()
return fq.enabled and fq.role[1] == _d("FkZU") and fq.role[2] == _d("FkZU")
end

function fq.busy(vimc)
local vla = ff:FindFirstChild(vimc == 2 and _d("MVh1CwIEVB0E") or _d("MVh1CwIEVB0"))

return vla ~= nil and vla:IsA(_d("OllYBiARVA1T")) and vla.Value == true
end

function fq.roleName(ntkw)
return fq.roleNames[fq.role[ntkw]] or fq.roleNames.npc
end

function fq.roleLabel(vgwg)
return fq.picked[vgwg] or fq.roleName(vgwg)
end

local dzky = nil

if ayu:FindFirstChild(_d("NVlTHxoVaxtEXhoCAw")) and ayu.ModuleScripts:FindFirstChild(_d("MFdbBhkHXR1YYwUBFUo8V0ML")) then
local nvf, flz = pcall(function()
return require(ayu.ModuleScripts.HalloweenTowerData)
end)

if nvf then
dzky = flz
end
end

local lf = nil

if ayu:FindFirstChild(_d("NVlTHxoVaxtEXhoCAw")) and ayu.ModuleScripts:FindFirstChild(_d("Pl9EAh8eXzxXQws")) then
local kvo, fr = pcall(function()
return require(ayu.ModuleScripts.FishingData)
end)

if kvo then
lf = fr
end
end

local function sjw(zcfr)
return tostring(zcfr):reverse():gsub(_d("UBNTTxJVXFE"), _d("XQcb")):reverse():gsub(_d("Jho"), _d(""))
end

local rtjv = {
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

getgenv().ACBXHalloweenUpgrades = rtjv.upgrade
getgenv().ACBXHalloweenTower = rtjv.run

rtjv.shopData = qaed.ShopById.halloween
rtjv.shopItems = {}
rtjv.shopLabels = {}
rtjv.cardNames = {
hw_brook = _d("OkRYBR1QEDVDRAMVEVRYZVwPGhVMF1ge"),
hw_death_the_kid = _d("PFNWHh5QTBBTFyEfFBhQflYYGx9WEVUXLQMeGC9fUgYSFUpR"),
hw_barragan = _d("OldFGBcXWRYWHzkdFVQdQlgEVjtRFlEe"),
}
rtjv.cardShortNames = {
hw_brook = _d("OkRYBR0"),
hw_death_the_kid = _d("PFNWHh5QTBBTFyEfFA"),
hw_barragan = _d("OldFGBcXWRY"),
}

for oukr, sl in ipairs(rtjv.shopData.Items) do
local qxlq, dort = next(sl.price or {})
local fnof = sl.id
local xadn = sl.id

if sl.itemId then
local dcm = pc.ById[sl.itemId]
fnof = dcm and (dcm.name or sl.itemId) or sl.itemId
xadn = fnof
elseif sl.cardId then
fnof = rtjv.cardNames[sl.cardId] or (ysw.ById[sl.cardId] and ysw.ById[sl.cardId].name) or sl.cardId
xadn = rtjv.cardShortNames[sl.cardId] or fnof
end

local mppm = qxlq == _d("EFdbBhkHXR1YaAkXHlwB") and _d("O1dZDg8") or (qxlq == _d("EldUASkfZxRXWR4TAlY") and _d("NFdZHhMCVgs") or tostring(qxlq))
local efd = fnof .. _d("WNS3/lY") .. sjw(dort) .. _d("WA") .. mppm

table.insert(rtjv.shopItems, {
id = sl.id,
label = efd,
shortName = xadn,
currency = qxlq,
price = dort,
stock = sl.stock,
cardId = sl.cardId,
})

table.insert(rtjv.shopLabels, efd)
end

for ho, tni in ipairs({
_d("KlNGHxMDTDBXWwYZB10dWGIaEQJZHFNE"),
_d("OkNOIhccVBdBUg8YJUgfRFYOEw"),
_d("MFdbBhkHXR1YYhoRAlkcU2QeFwRd"),
_d("KlNGHxMDTDBXWwYZB10dWGMFARVKKERYDQQVSws"),
_d("K09ZCT4RVBRZQA8THmwXQVIYJgJXH0RSGQU"),
_d("N0ZSBD4RVBRZQA8THmwXQVIY"),
}) do
rtjv.remote[tni] = wek(tni)
end

function rtjv.fire(wl, ...)
local dj = rtjv.remote[wl]

if not dj then
return
end

local fp = { ... }

pcall(function()
dj:FireServer(table.unpack(fp))
end)
end

function rtjv.on(zcw, cb)
local cjxk = rtjv.remote[zcw]

if cjxk then
im(cjxk.OnClientEvent, cb)
end
end

if dzky then
for at, fz in ipairs(dzky.Upgrades) do
table.insert(rtjv.upgrades, {
id = fz.id,
name = fz.name,
maxLevel = fz.maxLevel,
})

table.insert(rtjv.labels, fz.name)
end
end

function rtjv.level(fs)
if not dzky then
return 0
end

return dzky.getUpgradeLevel(rtjv.upgrade.levels, fs)
end

function rtjv.cost(hq)
if not dzky then
return nil
end

return dzky.getUpgradeCost(hq, rtjv.level(hq))
end

function rtjv.bonus(pf, zj)
if not dzky then
return _d("")
end

return dzky.formatUpgradeBonus(pf, zj)
end

function rtjv.request()
rtjv.upgrade.lastRequest = os.time()
rtjv.fire(_d("KlNGHxMDTDBXWwYZB10dWGIaEQJZHFNE"))
end

function rtjv.text()
if not dzky then
return _d("MFdbBhkHXR1YFz4ZB10KFlMLAhEYEUUXBBkEGBFYFx4eGUtYVEIDGhQW")
end

local hzx = rtjv.upgrade
local wp = {}

if hzx.balance == nil then
table.insert(wp, _d("KENaGh0ZVgsMF0dWWFkLXV4EEVBMEFMXGRMCTh1EHg"))
else
table.insert(wp, _d("KENaGh0ZVgsMFw") .. sjw(hzx.balance))
end

for yrn, rj in ipairs(rtjv.upgrades) do
local qyhy = rtjv.level(rj.id)
local wdl = rtjv.cost(rj.id)
local un = hzx.selected[rj.id] and _d("I05qSg") or _d("IxZqSg")
local pvbw = un .. rj.name .. _d("WBZ7HFY") .. qyhy .. _d("Vw") .. rj.maxLevel

if wdl then
table.insert(wp, pvbw .. _d("WBZZDw4EGA") .. tostring(wdl) .. _d("WBY") .. rtjv.bonus(rj.id, qyhy + 1))
else
table.insert(wp, pvbw .. _d("WBZaCw4VXA"))
end
end

if not next(hzx.selected) then
table.insert(wp, _d("KF9UAVYFSB9EVg4TAxgRWBceHhUYHERYGhIfTxYWVgQSUHkNQlhKAwBfCldTDwVQWg1PREoCGF1YVV8PFwBdC0IXBRgVGAFZQkoVEVZYV1EMGQJcVg"))
end

return table.concat(wp, _d("cg"))
end

function rtjv.buy()
local facg = rtjv.upgrade

if facg.waiting or facg.balance == nil or os.time() - facg.lastBuy < 1 then
return
end

local vwj = nil
local vje = nil

for pzoy, me in ipairs(rtjv.upgrades) do
if facg.selected[me.id] and os.time() >= (facg.failedUntil[me.id] or 0) then
local rpap = rtjv.cost(me.id)

if rpap and facg.balance >= rpap and (not vje or rpap < vje) then
vwj = me.id
vje = rpap
end
end
end

if not vwj then
return
end

facg.waiting = true
facg.lastBuy = os.time()
facg.pendingId = vwj
facg.pendingLevel = rtjv.level(vwj)

facg.balance = facg.balance - vje

rtjv.fire(_d("OkNOIhccVBdBUg8YJUgfRFYOEw"), vwj)
end

rtjv.on(_d("MFdbBhkHXR1YYhoRAlkcU2QeFwRd"), function(tjad)
if type(tjad) ~= _d("DFdVBhM") then
return
end

local ln = rtjv.upgrade

ln.balance = tonumber(tjad.balance) or 0
ln.levels = type(tjad.levels) == _d("DFdVBhM") and tjad.levels or {}

if ln.pendingId then
if rtjv.level(ln.pendingId) <= ln.pendingLevel then
ln.failedUntil[ln.pendingId] = os.time() + 15
end

ln.pendingId = nil
end

if type(tjad.message) == _d("C0JFAxgX") then
ln.lastMessage = tjad.message
end

ln.waiting = false
end)

rtjv.on(_d("K09ZCT4RVBRZQA8THmwXQVIYJgJXH0RSGQU"), function(lv, tov)
rtjv.run.highest = tonumber(lv) or 0
rtjv.run.savedRun = type(tov) == _d("DFdVBhM") and tov or nil
end)

rtjv.on(_d("N0ZSBD4RVBRZQA8THmwXQVIY"), function(strt, tmim, fkjh)
rtjv.run.highest = tonumber(strt) or rtjv.run.highest
rtjv.run.savedRun = type(fkjh) == _d("DFdVBhM") and fkjh or nil
end)

im(xl.BattleEnd.OnClientEvent, function(qw)
if type(qw) == _d("DFdVBhM") and qw.mode == _d("EVhRAxgZTB1pRQUZHQ") and qw.tower == _d("EFdbBhkHXR1Y") then
rtjv.run.inBattle = false
rtjv.run.pending = true
rtjv.run.pendingUntil = os.time() + 3

task.delay(0.3, function()
rtjv.requestProgress()
end)
end
end)

function rtjv.requestProgress()
rtjv.run.lastRequest = os.time()
rtjv.fire(_d("KlNGHxMDTDBXWwYZB10dWGMFARVKKERYDQQVSws"))
end

function rtjv.bestRoom()
local wtm = rtjv.run.highest

if not dzky or wtm == nil then
return nil
end

for taq, yri in ipairs(dzky.Milestones) do
if dzky.isMilestoneUnlocked(yri, wtm)
and not dzky.isMilestoneCleared(yri, wtm) then
return yri
end
end

return nil
end

function rtjv.startRun()
local uny = rtjv.bestRoom()

if not uny then
return false
end

local mzh = rtjv.run.savedRun
local mm = type(mzh) == _d("DFdVBhM") and mzh.milestone == uny
local najv = mm and (tonumber(mzh.currentFloor) or uny) or uny

local wpj = fq.halloweenSlot() or 1

local sccr = getgenv().ACBXAuto

sccr = type(sccr) == _d("DFdVBhM") and sccr.bossTeams or nil

if rtjv.run.teamChosen and sccr and sccr.applyTeam then
sccr.applyTeam(rtjv.run.team, wpj)
end

local uxva = ff:FindFirstChild(wpj == 2 and _d("KlNEDwIyWQxCWw8wHFcXRAU") or _d("KlNEDwIyWQxCWw8wHFcXRA"))

if uxva and uxva:IsA(_d("Ol9ZDhcSVB1zQQ8YBA")) then
pcall(function()
uxva:Fire(najv, _d("EVhRAxgZTB1pRQUZHQ"))
end)
end

local ta = ff:FindFirstChild(wpj == 2 and _d("K0JWGAI5Vh5fWQMCFWoXWVooFwRMFFMF") or _d("K0JWGAI5Vh5fWQMCFWoXWVooFwRMFFM"))

if ta and ta:IsA(_d("Ol9ZDhcSVB1zQQ8YBA")) then
pcall(function()
ta:Fire(najv, _d("EFdbBhkHXR1Y"), najv)
end)
end

rtjv.run.milestone = uny
rtjv.run.savedRun = nil
rtjv.run.inBattle = true
rtjv.run.inBattleUntil = os.time() + 120
rtjv.run.pending = true
rtjv.run.pendingUntil = os.time() + 10

if mm then
xl.StartBattle:FireServer(_d("EVhRAxgZTB1pRQUZHQ"), {
continue = true,
tower = _d("EFdbBhkHXR1Y"),
slot = wpj,
})
else
xl.StartBattle:FireServer(_d("EVhRAxgZTB1pRQUZHQ"), {
tower = _d("EFdbBhkHXR1Y"),
milestone = uny,
slot = wpj,
})
end

return true
end

local lwp = {}
for ulax, ki in ipairs(cl.NPCs) do
lwp[ki.name] = ki.id
end

local wrt = getgenv().ACBXCooldowns
if type(wrt) ~= _d("DFdVBhM") then
wrt = {}
getgenv().ACBXCooldowns = wrt
end

local tpmo = getgenv().ACBXAuto
if type(tpmo) == _d("DFdVBhM") and type(tpmo.cooldowns) == _d("DFdVBhM") then
for pog, ys in pairs(tpmo.cooldowns) do
if wrt[pog] == nil then
wrt[pog] = ys
end
end
end

local npj = {
enabled = false,
story = false,
storyDifficulty = _d("FllFBxcc"),
storyDropdown = nil,
selectedByWorld = {},
difficulties = { _d("FllFBxcc") },
walkToNpc = false,
cooldowns = wrt,
activeDifficulty = {},
lastFetch = {},
unlocked = {},
currentBattle = nil,
battlePending = false,
battlePendingUntil = 0,
}

npj.bossTeams = {
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

path = _d("OXV1MlkEXRlbREQcA1cW"),
}

function npj.bossTeams.trackCollection()
if npj.bossTeams.collectionHooked then
return
end

npj.bossTeams.collectionHooked = true

local txuz = nkq:FindFirstChild(_d("K09ZCTUfVBRTVB4fH1Y"))

if not txuz then
return
end

im(txuz.OnClientEvent, function(yzf)
if type(yzf) == _d("DFdVBhM") and type(yzf.teams) == _d("DFdVBhM") then
npj.bossTeams.teams = yzf.teams
npj.bossTeams.teamsAt = os.clock()
end
end)

task.spawn(function()

task.wait(3)

for ihai = 1, 8 do
if npj.bossTeams.teams then
return
end

local pjcz = nkq:FindFirstChild(_d("K0FeHhUYbB1XWg"))
local jly = npj.bossTeams.slotTeam
local pe = nil

if pjcz and type(jly) == _d("HkNZCQIZVxY") then
local dw, fj = pcall(jly, 2)
pe = dw and fj or nil

if not pe then
dw, fj = pcall(jly, 1)
pe = dw and fj or nil
end
end

if pe then
pcall(function()
pjcz:FireServer(pe, false, 2)
end)
end

task.wait(6)
end
end)
end

function npj.bossTeams.teamCards(lyc)
local pdu = npj.bossTeams.teams

if type(pdu) ~= _d("DFdVBhM") then
return nil
end

local lhrd = pdu[lyc]

if type(lhrd) ~= _d("DFdVBhM") then
return 0
end

local nja = 0

for ahh, cw in pairs(lhrd) do
if type(cw) == _d("DFdVBhM") then
nja = nja + 1
end
end

return nja
end

function npj.bossTeams.raidState()
return getgenv().ACBXAutoRaid
end

function npj.bossTeams.save()
if type(writefile) ~= _d("HkNZCQIZVxY") then
return false
end

local nij = {}

for xj, jux in pairs(npj.bossTeams.picked) do
nij[xj] = jux
end

local vvwj = {}

for va, dov in pairs(npj.bossTeams.raidPicked) do
vvwj[va] = dov
end

local yb = {}

for vuoi, xrg in pairs(npj.bossTeams.towerPicked) do
yb[vuoi] = xrg
end

return pcall(function()
if type(makefolder) == _d("HkNZCQIZVxY") and type(isfile) == _d("HkNZCQIZVxY") and not isfile(npj.bossTeams.path) then
pcall(makefolder, _d("OXV1Mg"))
end

local pi = npj.bossTeams.raidState()
local lxm = pi and pi.worldBoss
local dlg = nil

if lxm and lxm.teamChosen then
dlg = lxm.team
end

writefile(npj.bossTeams.path, game:GetService(_d("MEJDGiUVSg5fVA8")):JSONEncode({
areas = nij,
raids = vvwj,
towers = yb,
swap = npj.bossTeams.swap,
globalBoss = dlg,
updatedAt = os.time(),
}))
end)
end

function npj.bossTeams.load()
if type(readfile) ~= _d("HkNZCQIZVxY") or type(isfile) ~= _d("HkNZCQIZVxY") then
return false
end

local aj, nhye = pcall(function()
if not isfile(npj.bossTeams.path) then
return nil
end

return readfile(npj.bossTeams.path)
end)

if not aj or type(nhye) ~= _d("C0JFAxgX") or #nhye == 0 then
return false
end

local jpl
local ph = pcall(function()
jpl = game:GetService(_d("MEJDGiUVSg5fVA8")):JSONDecode(nhye)
end)

if not ph or type(jpl) ~= _d("DFdVBhM") then
return false
end

if type(jpl.areas) == _d("DFdVBhM") then
for cxd, weai in pairs(jpl.areas) do
local qijy = tonumber(weai)

if qijy and qijy >= 1 and qijy <= 4 then
npj.bossTeams.picked[cxd] = qijy
end
end
end

if type(jpl.raids) == _d("DFdVBhM") then
for qk, mbgh in pairs(jpl.raids) do
local qwa = tonumber(mbgh)

if qwa and qwa >= 1 and qwa <= 4 then
npj.bossTeams.raidPicked[qk] = qwa
end
end
end

if type(jpl.towers) == _d("DFdVBhM") then
for xtn, yn in pairs(jpl.towers) do
local af = tonumber(yn)

if af and af >= 1 and af <= 4 then
npj.bossTeams.towerPicked[xtn] = af
end
end
end

if type(jpl.swap) == _d("DFdVBhM") then
local en = tonumber(jpl.swap.team)
local fszh = tonumber(jpl.swap.floor)

if en and en >= 1 and en <= 4 then
npj.bossTeams.swap.team = en
end

if fszh and fszh > 0 then
npj.bossTeams.swap.floor = fszh
end

local ffv = tonumber(jpl.swap.team2)
local ncjr = tonumber(jpl.swap.floor2)

if ffv and ffv >= 1 and ffv <= 4 then
npj.bossTeams.swap.team2 = ffv
end

if ncjr and ncjr > 0 then
npj.bossTeams.swap.floor2 = ncjr
end

npj.bossTeams.swap.on = jpl.swap.on == true
end

local ig = tonumber(jpl.globalBoss)
local ihcj = npj.bossTeams.raidState()
local rbj = ihcj and ihcj.worldBoss

if ig and ig >= 1 and ig <= 4 and rbj then
rbj.team = ig

rbj.teamChosen = true
end

return true
end

local lps = nil
local egx = nil

local function log(juvs, oo)
return juvs .. _d("BA") .. oo
end

local function xdy(tlhx, jylr)
return npj.cooldowns[log(tlhx, jylr)] or 0
end

local function uq(qqdp, ckln, vm)
npj.cooldowns[log(qqdp, ckln)] = vm
end

getgenv().ACBXAuto = npj

local yvcz = {
enabled = false,
picks = { [1] = {}, [2] = {} },
cursor = { [1] = 1, [2] = 1 },
losses = { [1] = {}, [2] = {} },
inFlight = {},

lossLimit = 3,
difficulties = { _d("FllFBxcc") },
walkToBoss = false,
walkSpeed = 18,
pending = {},
pendingUntil = {},
cleared = {},
progress = {},
}

getgenv().ACBXAutoRaid = yvcz

yvcz.worldBoss = {
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

fishingMode = _d("D1deHg"),
digHold = true,

walkToBoss = false,
walkToggle = nil,

building = false,
}

npj.bossTeams.trackCollection()
npj.bossTeams.load()

function yvcz.worldBoss.data()
local nhzd = yvcz.worldBoss

if nhzd.module == nil then
local jysa, nybu = pcall(function()
return require(ayu.ModuleScripts.WorldBossData)
end)

nhzd.module = jysa and nybu or false
end

return nhzd.module or nil
end

function yvcz.worldBoss.clock(vg)
vg = math.max(0, math.floor(tonumber(vg) or 0))

local befp = math.floor(vg / 3600)
local na = math.floor((vg % 3600) / 60)
local uwf = vg % 60

if befp > 0 then
return string.format(_d("XVJfSlNAChxb"), befp, na)
end

if na > 0 then
return string.format(_d("XVJaSlNAChxF"), na, uwf)
end

return string.format(_d("XVJE"), uwf)
end

function yvcz.worldBoss.status()
local znm = nil

pcall(function()
znm = ayu:FindFirstChild(_d("L1lFBhIyVwtFZB4XBE0L"))
end)

return znm
end

function yvcz.worldBoss.isOpen()
local aprw = yvcz.worldBoss.status()

if not aprw then
return nil
end

return aprw:GetAttribute(_d("OVVDAwAV")) == true
end

function yvcz.worldBoss.window()
local fmq = yvcz.worldBoss.status()

if not fmq then
return nil, nil
end

return tonumber(fmq:GetAttribute(_d("PVhTGTcE"))), tonumber(fmq:GetAttribute(_d("NlNPHjcE")))
end

function yvcz.worldBoss.cycle()
local acre = yvcz.worldBoss
local rron = acre.data()

if not rron or not rron.getCycleState then
return nil
end

local ej, gc = pcall(function()
return rron.getCycleState()
end)

return ej and gc or nil
end

function yvcz.worldBoss.shopList()
local hfyi = yvcz.worldBoss

if hfyi.items then
return hfyi.items
end

local ybbg = {}
local vfca = hfyi.data()

if not vfca or type(vfca.ShopItems) ~= _d("DFdVBhM") then
hfyi.items = ybbg
return ybbg
end

for bpc, jrgb in ipairs(vfca.ShopItems) do
local xr = nil

pcall(function()
if jrgb.itemId then
local ub = require(ayu.ModuleScripts.ItemData)
local jik = ub[jrgb.itemId] or (ub.ById and ub.ById[jrgb.itemId])
xr = jik and jik.name or nil
elseif jrgb.cardId then
local mdca = require(ayu.ModuleScripts.CardData)
local fso = mdca[jrgb.cardId] or (mdca.ById and mdca.ById[jrgb.cardId])
xr = fso and fso.name or nil
end
end)

local qgb = yvcz.worldBoss.state

if type(qgb) == _d("DFdVBhM") and type(qgb.shop) == _d("DFdVBhM") then
for guwb, grmg in ipairs(qgb.shop) do
if grmg.id == jrgb.id and grmg.name then
xr = grmg.name
break
end
end
end

if not xr then

xr = tostring(jrgb.accessoryId or jrgb.id or _d("Rw")):gsub(_d("Jw"), _d("WA")):gsub(_d("UBNWQ14rHQ8RakBf"), function(utw, kazs)
return utw:upper() .. kazs
end)
end

table.insert(ybbg, {
id = jrgb.id,
name = xr,
price = tonumber(jrgb.price) or 0,
kind = jrgb.itemId and _d("EUJSBw") or (jrgb.cardId and _d("G1dFDg") or _d("GVVUDwUDVwpP")),
})
end

hfyi.items = ybbg

return ybbg
end

function yvcz.worldBoss.bodyText()
local rjb = yvcz.worldBoss
local cn = rjb.state

if type(cn) ~= _d("DFdVBhM") then
return _d("KlNWDh8eX1hCXw9WElcLRRlEWA")
end

local qan = {}
local rhrw = rjb.cycle()
local dhy = rjb.isOpen()
local hh, bxhu = rjb.window()

if dhy == nil then
dhy = cn.open == true
end

if dhy then
local nd = _d("N0ZSBA")

if not hh and rhrw then
hh = rhrw.endsAt
end

if hh and hh > os.time() then
nd = nd .. _d("WPSASg") .. rjb.clock(hh - os.time()) .. _d("WFpSDAI")
end

table.insert(qan, nd)
else
local ntkc = _d("PFlABFYWVwoWWQUB")

if not bxhu and rhrw then
bxhu = rhrw.nextAt
end

if bxhu and bxhu > os.time() then
ntkc = ntkc .. _d("cnRWCR1QURYW") .. rjb.clock(bxhu - os.time())
end

table.insert(qan, ntkc)
end

table.insert(qan, _d("NVNTCxoDAlg") .. tostring(cn.medals or 0) .. _d("cn1eBhoDAlg") .. tostring(cn.kills or 0))

if cn.inFight then
table.insert(qan, _d("Pl9QAgIZVh8"))
elseif dhy then

table.insert(qan, cn.killedThisSpawn and _d("KlNWDg96cxFaWw8SUEwQX0RKBQBZD1gXCxoCXRlSTg") or _d("KlNWDg8"))
end

if rjb.stopAtFull then
local azls, dmrp = rjb.meter()

if azls and dmrp then
local function ezk(rh)
if rh >= 1000000000 then
return string.format(_d("XRgGDDQ"), rh / 1000000000)
elseif rh >= 1000000 then
return string.format(_d("XVF6"), math.floor(rh / 100000) / 10)
elseif rh >= 1000 then
return string.format(_d("XVF8"), math.floor(rh / 100) / 10)
end

return tostring(math.floor(rh))
end

table.insert(qan, _d("K1NFHBMCGBVTQw8EShg") .. ezk(azls) .. _d("WBkX") .. ezk(dmrp)
.. (rjb.meterFull() and _d("cnBCBhpQFVhYWB5WFlEfXkMDGBcYDF5eGVYDSBlBWQ") or _d("")))
end
end

return table.concat(qan, _d("cjw"))
end

function yvcz.worldBoss.shopText()
local ep = yvcz.worldBoss
local aars = ep.state

if type(aars) ~= _d("DFdVBhM") or type(aars.shop) ~= _d("DFdVBhM") then
return _d("KlNWDh8eX1hCXw9WA1AXRhlEWA")
end

local tkl = { _d("NVNTCxoDAlg") .. tostring(aars.medals or 0) }

for aqz, ekgf in ipairs(aars.shop) do
local dmw = tostring(ekgf.name or ekgf.id)
local odam = tostring(ekgf.price or _d("Rw"))
local etil

if ekgf.kind == _d("EUJSBw") then
etil = dmw .. _d("cg") .. odam .. _d("WPSASg") .. tostring(ekgf.left or 0) .. _d("Vw") .. tostring(ekgf.stock or _d("Rw")) .. _d("WFpSDAI")
elseif ekgf.owned then
etil = dmw .. _d("cnlABBMU")
else
etil = dmw .. _d("cg") .. odam .. _d("WPSAShkeXVhZUQw")
end

table.insert(tkl, etil)
end

return table.concat(tkl, _d("cjw"))
end

function yvcz.worldBoss.shopOptions()
local icit = yvcz.worldBoss

if icit.options then
return icit.options
end

local fthc = {}

icit.labelToId = {}

for zamy, gzq in ipairs(icit.shopList()) do
local cm = gzq.name .. _d("WPSASg") .. tostring(gzq.price)

table.insert(fthc, cm)
icit.labelToId[cm] = gzq.id
end

icit.options = fthc

return fthc
end

local function cz(ryb)
local cs = yvcz.progress[ryb]
local kqv = ayu:FindFirstChild(_d("KldeDiUEWQxDRA"))
local ynft = kqv and kqv:GetAttribute(_d("O09UBhM5XA"))

if type(cs) == _d("DFdVBhM") then
if cs.cycleId then
ynft = cs.cycleId
end

if cs.completed and cs.completedRaidId then
return tostring(ynft) .. _d("QlJYBBM")
end

local pvs = cs.phaseIndex or cs.phase

if pvs then
return tostring(ynft) .. _d("Qg") .. tostring(pvs)
end
end

return tostring(ynft)
end

function yvcz.currentCycle()
local vep = nil

for ebln, fqq in pairs(yvcz.progress or {}) do
if type(fqq) == _d("DFdVBhM") then
local cy = tonumber(fqq.cycleId)

if cy and (not vep or cy > vep) then
vep = cy
end
end
end

return vep
end

function yvcz.finished(yf)
local qn = yvcz.progress[yf]

if type(qn) ~= _d("DFdVBhM") or qn.completed ~= true or qn.completedRaidId ~= yf then
return false
end

local avud = tonumber(qn.cycleId)
local jox = yvcz.currentCycle()

if avud and jox and avud < jox then
return false
end

return true
end

function yvcz.requestProgress(vjoy)
local utc = os.clock()

if not vjoy and utc - (yvcz.progressAt or 0) < 60 then
return
end

yvcz.progressAt = utc

pcall(function()
xl.RequestRaidProgress:FireServer()
end)
end

function yvcz.bossFor(zejt, pwgg)
local xfk = yvcz.picks[pwgg or zejt]

if not xfk or #xfk == 0 then
return nil
end

local ue = ayu:FindFirstChild(_d("KldeDiUEWQxDRA"))
local mli = yvcz.losses[zejt] or {}
local mcat = yvcz.cursor[zejt] or 1

for du = 0, #xfk - 1 do
local bux = (mcat - 1 + du) % #xfk + 1
local yix = xfk[bux]
local ie = not ue or ue:GetAttribute(_d("KlNWDg8v") .. yix) == true

if ie and not yvcz.finished(yix) and (mli[yix] or 0) < yvcz.lossLimit then
yvcz.cursor[zejt] = bux

return yix
end
end

return nil
end

im(xl.RaidBattleStarted.OnClientEvent, function(sz)

local ym = type(sz) == _d("DFdVBhM") and sz.raidId or nil

if type(ym) == _d("C0JFAxgX") then
yvcz.pending[ym] = false
else
for jnf in pairs(yvcz.pending) do
yvcz.pending[jnf] = false
end
end
end)

im(xl.BattleEnd.OnClientEvent, function(kq)

local oac = type(kq) == _d("DFdVBhM") and kq.mode or nil

if oac ~= nil and oac ~= _d("CldeDg") then
return
end

for se in pairs(yvcz.pending) do
yvcz.pending[se] = false
end

if type(kq) ~= _d("DFdVBhM") or not yvcz.enabled then
return
end

local hct = type(kq.raidId) == _d("C0JFAxgX") and kq.raidId or nil
local caew = hct and yvcz.inFlight[hct] or nil

if not hct then
for pnf, mq in pairs(yvcz.inFlight) do
hct = pnf
caew = mq
break
end
end

if not hct then
return
end

yvcz.inFlight[hct] = nil

if kq.result == _d("FFlEDw") then

local mihj = yvcz.losses[caew or 1]

yvcz.cleared[hct] = nil
mihj[hct] = (mihj[hct] or 0) + 1

for kzhg in pairs(yvcz.pendingUntil) do
yvcz.pendingUntil[kzhg] = os.time() + 3
end
else

yvcz.losses[caew or 1][hct] = 0
end

task.delay(0.3, function()
yvcz.requestProgress(true)
end)
end)

im(xl.RaidProgress.OnClientEvent, function(be)
if type(be) == _d("DFdVBhM") and type(be.raidId) == _d("C0JFAxgX") then
yvcz.progress[be.raidId] = be
end
end)

xl.RequestRaidProgress:FireServer()

local dyx = {
enabled = false,
progress = nil,
currentRoom = nil,
inBattle = false,
inBattleUntil = 0,
pending = false,
pendingUntil = 0,
}

getgenv().ACBXAutoRooms = dyx

im(xl.SyncInfiniteRoomProgress.OnClientEvent, function(dvfs)
if type(dvfs) == _d("FkNaCBMC") then
dyx.progress = dvfs
dyx.pending = false
end
end)

im(xl.BattleEnd.OnClientEvent, function(bf)
if type(bf) == _d("DFdVBhM") and bf.mode == _d("EVhRAxgZTB1pRQUZHQ") then
dyx.inBattle = false
dyx.pending = true
dyx.pendingUntil = os.time() + 3

task.delay(0.3, function()
xl.RequestInfiniteRoomProgress:FireServer()
end)
end
end)

xl.RequestInfiniteRoomProgress:FireServer()

local gapk = {
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

getgenv().ACBXAutoTower = gapk

local xqv = {
enabled = false,
floor = 0,
triggered = false,
}

getgenv().ACBXAutoPause = xqv

local vyac = {
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
Typhoon = _d("DE9HAhkfVg"),
Blizzard = _d("GlpeEAwRShw"),
Lightning = _d("FF9QAgIeURZR"),
Windstorm = _d("D19ZDgUEVwpb"),
Sharingan = _d("C15WGB8eXxlY"),
Singularity = _d("C19ZDQMcWQpfQxM"),
[_d("NVlZCwQTUFhyWAcXGVY")] = _d("FVlZCwQTUCdSWAcXGVY"),
Void = _d("DlleDg"),
[_d("NVdTD1YZVlh+UgsAFVY")] = _d("FVdTDykZVideUgsAFVY"),
Manga = _d("FVdZDRc"),
},
}

function vyac.weatherLeft()
local mneo = omhv:FindFirstChildOfClass(_d("KFpWExMCfw1f"))
local szyx = mneo and mneo:FindFirstChild(_d("L1NWHh4VSj9DXg"))

if not szyx then
return nil
end

for ecq, pce in ipairs(szyx:GetDescendants()) do
if pce:IsA(_d("LFNPHjoRWh1a")) then
local spw = tonumber(string.match(tostring(pce.Text), _d("JmJeBxNQah1bVgMYGVYfDBIZXFgdHB0e")))

if spw and spw > 0 then
return spw
end
end
end

return nil
end

function vyac.weatherWanted(ztyz)
local cdjz = vyac.weatherNow

if type(cdjz) ~= _d("C0JFAxgX") then
return nil
end

for xd, tid in pairs(ztyz or vyac.weathers) do
if tid and vyac.weatherIds[xd] == cdjz then
return xd
end
end

return nil
end

getgenv().ACBXAutoGiveUp = vyac

local rs = {
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

if ayu:FindFirstChild(_d("NVlTHxoVaxtEXhoCAw")) and ayu.ModuleScripts:FindFirstChild(_d("MFdFDhUfSh1iWB0TAnwZQlY")) then
local kt, ktia = pcall(function()
return require(ayu.ModuleScripts.HardcoreTowerData)
end)

if kt then
rs.data = ktia
end
end

getgenv().ACBXHardcore = rs

task.spawn(function()
local lrrg = ayu:FindFirstChild(_d("KlNaBQIVSw"))

if not lrrg then
return
end

local fxpp = lrrg:WaitForChild(_d("K09ZCT4RShxVWBgTJFcPU0U6BB9fClNEGQ"), 20)

if fxpp and fxpp:IsA(_d("KlNaBQIVfQ5TWR4")) then
rs.remotes.sync = fxpp

im(fxpp.OnClientEvent, function(fk)
if type(fk) ~= _d("DFdVBhM") then
return
end

rs.progress = tonumber(fk.progress) or rs.progress
rs.best = tonumber(fk.best) or rs.best

if type(fk.points) == _d("DFdVBhM") then
rs.points = fk.points
end
end)
end

local heq = lrrg:WaitForChild(_d("KlNGHxMDTDBXRQ4VH0odYlgdEwJoCllQGBMDSw"), 20)

if heq and heq:IsA(_d("KlNaBQIVfQ5TWR4")) then
rs.remotes.request = heq

pcall(function()
heq:FireServer()
end)
end

local ra = lrrg:WaitForChild(_d("P1pYCBcceg1QUT8GFFkMU1M"), 20)

if ra and ra:IsA(_d("KlNaBQIVfQ5TWR4")) then
im(ra.OnClientEvent, function(rga, gtoi, ubmv, jmmc)
rs.globalLuck = tonumber(rga) or 0
rs.globalRoll = tonumber(gtoi) or 0
rs.globalLuckTime = type(ubmv) == _d("C0JFAxgX") and ubmv or _d("")
rs.globalRollTime = type(jmmc) == _d("C0JFAxgX") and jmmc or _d("")
end)
end
end)

function fq.otherTowerOn(hyq)
if fq.enabled then
return false
end

if hyq == _d("DFlADwQ") then
return false
end

if hyq == _d("EFdbBhkHXR1Y") then
return rs.active()
end

return rtjv.run.enabled
end

function rs.active()
return rs.island
end

function rs.unspentPoints()
local kad = rs.data
local wuh = tonumber(rs.progress) or 0
local ul = 0

if type(kad) == _d("DFdVBhM") and type(kad.getEarnedPoints) == _d("HkNZCQIZVxY") then
local rhjy, vs = pcall(kad.getEarnedPoints, wuh)
ul = rhjy and tonumber(vs) or 0
end

return math.max(0, ul - #(rs.points or {})), ul
end

function rs.buffText()
local nc = rs.data

if type(nc) ~= _d("DFdVBhM") then
return _d("MFdFDhUfSh1iWB0TAnwZQlZKHwMYFV9EGR8eX1hQRQUbUEwQX0RKFAVRFFIZ")
end

local bu = tonumber(rs.progress) or 0
local bcdt = tonumber(rs.best) or 0
local sv, zlu = rs.unspentPoints()
local qjea = {
_d("PlpYBQRQ") .. bu .. _d("WBYXKBMDTFg") .. bcdt,
_d("KFleBAIDAlg") .. sv .. _d("WENZGQYVVgwWWAxW") .. zlu .. _d("WFNWGBgVXA"),
}

local epl = {}

for xz, dd in ipairs(rs.points or {}) do
local zo = nc.StatById and nc.StatById[dd]
local utoc = zo and (zo.name or dd) or tostring(dd)
local idey = nc.PointValue and nc.PointValue[dd]

table.insert(epl, idey and (utoc .. _d("WB0") .. tostring(idey)) or utoc)
end

if #epl == 0 then
table.insert(qjea, _d("OkNRDAVKGBZZWQ9WElcNUV8eVgldDA"))
else
table.insert(qjea, _d("OkNRDAVKGA") .. table.concat(epl, _d("VBY")))
end

local qos = {}

if (tonumber(rs.globalLuck) or 0) > 0 then
table.insert(qos, _d("NENUAVZb") .. tostring(rs.globalLuck) .. _d("XQ") .. (rs.globalLuckTime ~= _d("") and (_d("WB4") .. rs.globalLuckTime .. _d("UQ")) or _d("")))
end

if (tonumber(rs.globalRoll) or 0) > 0 then
table.insert(qos, _d("KllbBlYDSB1TU0pd") .. tostring(rs.globalRoll) .. _d("XQ") .. (rs.globalRollTime ~= _d("") and (_d("WB4") .. rs.globalRollTime .. _d("UQ")) or _d("")))
end

if #qos == 0 then
table.insert(qjea, _d("P1pYCBccGBpDUQwFShgWWVkPVhFbDF9BDw"))
else
table.insert(qjea, _d("P1pYCBccGBpDUQwFShg") .. table.concat(qos, _d("VBY")))
end

return table.concat(qjea, _d("cg"))
end

function rs.nextMilestone()
local vbas = rs.data

if type(vbas) ~= _d("DFdVBhM") or type(vbas.Milestones) ~= _d("DFdVBhM") or #vbas.Milestones == 0 then
return nil
end

local ozd = tonumber(omhv:GetAttribute(_d("MFdFDhUfSh1wWwUZAg"))) or 0

return math.min(ozd + 1, vbas.Milestones[#vbas.Milestones])
end

function rs.start(ush)
local bjy = rs.nextMilestone()

if not bjy then
return false
end

local ddv = ff:FindFirstChild(ush == 2 and _d("KlNEDwIyWQxCWw8wHFcXRAU") or _d("KlNEDwIyWQxCWw8wHFcXRA"))

if ddv and ddv:IsA(_d("Ol9ZDhcSVB1zQQ8YBA")) then
pcall(function()
ddv:Fire(bjy, _d("EVhRAxgZTB1pRQUZHQ"))
end)
end

local zxa = ff:FindFirstChild(ush == 2 and _d("K0JWGAI5Vh5fWQMCFWoXWVooFwRMFFMF") or _d("K0JWGAI5Vh5fWQMCFWoXWVooFwRMFFM"))

if zxa and zxa:IsA(_d("Ol9ZDhcSVB1zQQ8YBA")) then
pcall(function()
zxa:Fire(bjy, _d("EFdFDhUfSh0"), bjy)
end)
end

if npj.bossTeams.applyTower then
npj.bossTeams.applyTower(_d("EFdFDhUfSh0"), ush)
end

rs.pending = true
rs.pendingUntil = os.time() + 10

return pcall(function()
xl.StartBattle:FireServer(_d("EVhRAxgZTB1pRQUZHQ"), {
tower = _d("EFdFDhUfSh0"),
milestone = bjy,
slot = ush,
})
end)
end

function rs.floorNow()
local bgd = fq.hardcoreSlot()

if not bgd or not fq.busy(bgd) then
return nil
end

local xdd = ff:FindFirstChild(bgd == 2 and _d("OldDHhoVfw1fBQ") or _d("OldDHhoVfw1f"))
local hrl = xdd and xdd:FindFirstChild(_d("KkNZLBofVwp6VggTHA"))
local ekxk = hrl and hrl.Text or _d("")

return tonumber(ekxk:match(_d("JnBbBRkCHQsdH08SWxE")))
end

local vfcr = {
enabled = true,
nextAt = os.clock() + 300,
jumps = 0,
}

getgenv().ACBXAntiKick = vfcr

local qp = getgenv().ACBXNoUpdate == true

local mum = {
enabled = not qp,
buildId = "v261103-0148",
interval = 180,
retry = 45,
forceAfter = 900,
applying = false,
checking = false,
pendingVersion = nil,
pendingSince = nil,
cameFrom = nil,
}

getgenv().ACBXUpdater = mum

local wf = {
enabled = false,
tpToBay = false,

stick = {
enabled = false,
at = 0,
hits = 0,
last = _d("F1BR"),

names = {
[_d("C0JeCR0")] = true,
[_d("FENUAVYDTBFVXA")] = true,
[_d("FENUAQUEURtd")] = true,
[_d("FENUASkDTBFVXA")] = true,
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
rod = _d("VQ"),
castTime = 0,
tutorialStep = 0,
phase = _d("EVJbDw"),
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
deepPhase = _d("EVJbDw"),
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

local fre = Vector3.new(-546.8, 13.9, -40250.1)

if type(getgenv().ACBXFishingCatches) == _d("DFdVBhM") then
wf.catches = getgenv().ACBXFishingCatches
end

wf.totalCatches = 0

for alne, qh in pairs(wf.catches) do
wf.totalCatches = wf.totalCatches + qh
end

getgenv().ACBXFishingCatches = wf.catches
getgenv().ACBXFishing = wf

wf.catchName = function(ped)
local al = pc.ById[ped]

if al and al.name then
return al.name
end

local tx = ysw.ById[ped]

if tx and tx.name then
return tx.name
end

return ped
end

local lb

lb = {
folder = _d("OXV1Mg"),
path = _d("OXV1MlkTWQxVXw8FXlILWVk"),
at = 0,
save = function()
if type(writefile) ~= _d("HkNZCQIZVxY") then
return false
end

local pk = pcall(function()
if type(makefolder) == _d("HkNZCQIZVxY") and type(isfile) == _d("HkNZCQIZVxY") and not isfile(lb.path) then
pcall(makefolder, lb.folder)
end

writefile(lb.path, game:GetService(_d("MEJDGiUVSg5fVA8")):JSONEncode({
catches = wf.catches,
totalCatches = wf.totalCatches,
lastCatch = wf.lastCatch,
updatedAt = os.time(),
}))
end)

return pk
end,
load = function()
if type(readfile) ~= _d("HkNZCQIZVxY") or type(isfile) ~= _d("HkNZCQIZVxY") then
return false
end

local zgm, zm = pcall(function()
if not isfile(lb.path) then
return nil
end

return readfile(lb.path)
end)

if not zgm or type(zm) ~= _d("C0JFAxgX") or #zm == 0 then
return false
end

local oa
local efdl = pcall(function()
oa = game:GetService(_d("MEJDGiUVSg5fVA8")):JSONDecode(zm)
end)

if not efdl or type(oa) ~= _d("DFdVBhM") or type(oa.catches) ~= _d("DFdVBhM") then
return false
end

for ius, cuf in pairs(oa.catches) do
local gus = tonumber(cuf) or 0

if gus > 0 then
wf.catches[tostring(ius)] = math.max(wf.catches[tostring(ius)] or 0, gus)
end
end

wf.totalCatches = 0

for mnr, mu in pairs(wf.catches) do
wf.totalCatches = wf.totalCatches + mu
end

return true
end,
}

lb.load()
getgenv().ACBXFishingStore = lb

local kgny = {}

local ueka = 0

local function efmz()
local yls = {}

for lyu, spu in ipairs(workspace:GetDescendants()) do
if spu:IsA(_d("OldEDyYRSgw")) and spu.Name == _d("L1dDDwQ") then
table.insert(yls, spu)
end
end

kgny = yls
ueka = os.clock()
end

local function pifh(bgxe)
if type(bgxe) ~= _d("DFdVBhM") then
return false
end

wf.loaded = true
wf.dirty = false
wf.fishing = bgxe.fishing == true
wf.autoOn = bgxe.autoOn == true
wf.autoUnlocked = bgxe.autoUnlocked == true
wf.casts = tonumber(bgxe.casts) or wf.casts
wf.totalCasts = tonumber(bgxe.totalCasts) or wf.totalCasts
wf.luck = tonumber(bgxe.luck) or wf.luck
wf.rod = tostring(bgxe.equippedRod or wf.rod)
wf.castTime = tonumber(bgxe.castTime) or wf.castTime
wf.tutorialStep = tonumber(bgxe.tutorialStep) or wf.tutorialStep

if type(bgxe.rods) == _d("DFdVBhM") then
wf.rodsOwned = bgxe.rods
end

if type(bgxe.baits) == _d("DFdVBhM") then
wf.baitsOwned = bgxe.baits
end

if type(bgxe.boats) == _d("DFdVBhM") then
wf.boatsOwned = bgxe.boats
end

if type(bgxe.mats) == _d("DFdVBhM") then
wf.mats = bgxe.mats
end

if bgxe.bootOwned ~= nil then
wf.boot.owned = bgxe.bootOwned == true
end

if bgxe.bootEquipped ~= nil then
wf.boot.equipped = bgxe.bootEquipped == true
end

if bgxe.equippedBait ~= nil then
wf.equippedBait = tostring(bgxe.equippedBait)
end

if bgxe.activeBoat ~= nil then
wf.activeBoat = tostring(bgxe.activeBoat)
end

wf.boatTier = tonumber(bgxe.boatTier) or wf.boatTier
wf.islandLocked = bgxe.islandLocked == true
wf.rebirths = tonumber(bgxe.rebirths) or wf.rebirths

if type(bgxe.rebirthCards) == _d("DFdVBhM") then
wf.rebirthCards = bgxe.rebirthCards
end

wf.lastSync = os.time()

return true
end

local function imaz()
local jtht, vlfa = pcall(function()
return xl.FishingGetState:InvokeServer()
end)

if not jtht or type(vlfa) ~= _d("DFdVBhM") then
wf.loaded = false
return false
end

return pifh(vlfa)
end

local nazm = false

local function gzdt()
if nazm then
return false
end

local ougt = omhv.Character

if not ougt then
return false
end

if ougt:FindFirstChild(_d("Pl9EAh8eXypZUw")) then
return true
end

local cee = omhv:FindFirstChild(_d("OldUAQYRWxM"))
local fb = cee and cee:FindFirstChild(_d("Pl9EAh8eXypZUw"))
local rq = ougt:FindFirstChildOfClass(_d("MENaCxgfURw"))

if not (fb and rq) then
return false
end

return pcall(function()
rq:EquipTool(fb)
end)
end

local function mgs()
local wdr = omhv.Character
local bb = wdr and wdr:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not bb then
return nil
end

local rkob = RaycastParams.new()
rkob.FilterType = Enum.RaycastFilterType.Exclude
rkob.FilterDescendantsInstances = { wdr }

local htq = 24
local kcon = {}
local mfoz = 0

for riwo = 0, htq - 1 do
local cniw = math.rad(riwo * (360 / htq))
local qce = Vector3.new(math.sin(cniw), 0, math.cos(cniw))
local qd = bb.Position + qce * 20 + Vector3.new(0, 40, 0)
local tft = workspace:Raycast(qd, Vector3.new(0, -120, 0), rkob)
local kjsm = tft and (bb.Position.Y - tft.Position.Y) or 120

kcon[riwo] = kjsm > 12

if kcon[riwo] then
mfoz = mfoz + 1
end
end

if mfoz == 0 then
return nil
end

local wnee, ze = nil, 0

for civl = 0, htq - 1 do
if kcon[civl] and not kcon[(civl - 1) % htq] then
local koqq = 0

while koqq < htq and kcon[(civl + koqq) % htq] do
koqq = koqq + 1
end

if koqq > ze then
wnee = civl
ze = koqq
end
end
end

if not wnee then
return nil
end

local ez = wnee + (ze - 1) / 2
local nnnd = math.rad(ez * (360 / htq))

return Vector3.new(math.sin(nnnd), 0, math.cos(nnnd))
end

local function nk()
local otbc = omhv.Character
local recl = otbc and otbc:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not recl then
return nil
end

if #kgny == 0 or os.clock() - ueka > 20 then
efmz()
end

local efk, cv = nil, math.huge

for iiy, ybd in ipairs(kgny) do
if ybd.Parent then
local nza = (ybd.Position - recl.Position).Magnitude

if nza < cv then
cv = nza
efk = ybd
end
end
end

if not efk or cv > 25 then
local ldcj = mgs()

if ldcj then
return ldcj
end
end

if not efk then
return nil
end

local tr = Vector3.new(efk.Position.X - recl.Position.X, 0, efk.Position.Z - recl.Position.Z)

if tr.Magnitude < 0.05 then
return Vector3.new(0, 0, -1)
end

return tr.Unit
end

local function ek()
local pr = omhv.Character
local rv = pr and pr:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not rv then
return nil
end

local pgvb = rv.CFrame.LookVector
local kah = Vector3.new(pgvb.X, 0, pgvb.Z)

if kah.Magnitude < 0.05 then
return nil
end

return kah.Unit
end

local function fwpb()
local tt = omhv.Character
local dost = tt and tt:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not dost then
return false
end

local nuwr = fre
local jief = RaycastParams.new()
jief.FilterType = Enum.RaycastFilterType.Exclude
jief.FilterDescendantsInstances = { tt }

local mb = workspace:Raycast(fre + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), jief)

if mb and mb.Instance.Name ~= _d("L1dDDwQ") then
nuwr = Vector3.new(fre.X, mb.Position.Y + 3, fre.Z)
end

dost.CFrame = CFrame.new(nuwr)
task.wait(0.5)
efmz()

return true
end

local function qdex()
local vk = omhv.Character
local ac = vk and vk:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not ac then
return false
end

local ybz = Vector3.new(fre.X - ac.Position.X, 0, fre.Z - ac.Position.Z)
local ofaj = ybz.Magnitude

if ofaj < 2 then
return false
end

local ds = ybz.Unit

if ofaj > 12 then
local ih = math.min(14, ofaj - 6)
local mia = ac.Position + ds * ih
local vn = RaycastParams.new()
vn.FilterType = Enum.RaycastFilterType.Exclude
vn.FilterDescendantsInstances = { vk }

local uvtg = workspace:Raycast(mia + Vector3.new(0, 25, 0), Vector3.new(0, -80, 0), vn)

if uvtg and uvtg.Instance.Name ~= _d("L1dDDwQ") then
local gfnt = uvtg.Position.Y + 3.2

if math.abs(gfnt - ac.Position.Y) <= 10 then
local he = Vector3.new(uvtg.Position.X, gfnt, uvtg.Position.Z)
ac.CFrame = CFrame.lookAt(he, he + ds)

return true
end
end
end

ac.CFrame = CFrame.lookAt(ac.Position, ac.Position + ds)

return true
end

local arc = {}

arc.surfaceWait = 8

arc.walking = false
arc.walkStartedAt = 0

arc.islandHold = Vector3.new(-7384, 16.3, -40539)

arc.custom = nil
arc.customIsland = nil

arc.islandAnchors = {
{ id = _d("GVRWBBIfVh1SaAMFHFkWUg"), x = -3800 },
{ id = _d("DEFeBCkSXRlVXw8F"), x = -6180 },
{ id = _d("D19ZDhsZVBRpXhkaFQ"), x = -7480 },
}

arc.arrivals = {
abandoned_island = Vector3.new(-3825, 24, -40260),
twin_beaches = Vector3.new(-6180, 40, -40350),
windmill_isle = Vector3.new(-7480, 30, -40350),
lobby = Vector3.new(-499, 17, -40234),
}

function arc.islandOf(dc)
if not dc then
return _d("FFlVCA8")
end

if dc.X > -4500 then
return _d("FFlVCA8")
end

local nt, abz = _d("GVRWBBIfVh1SaAMFHFkWUg"), math.huge

for wqch, phef in ipairs(arc.islandAnchors) do
local ae = math.abs(dc.X - phef.x)

if ae < abz then
nt = phef.id
abz = ae
end
end

return nt
end

arc.savedVersion = 2

do
local tkc = getgenv().ACBXDeepSpot

if type(tkc) == _d("DFdVBhM") and tkc.v == arc.savedVersion
and tonumber(tkc.X) and tonumber(tkc.Y) and tonumber(tkc.Z) then
arc.custom = Vector3.new(tonumber(tkc.X), tonumber(tkc.Y), tonumber(tkc.Z))
arc.customIsland = tkc.island
end
end

function arc.spot()
return arc.custom or arc.islandHold
end

function arc.dropStale()
if not arc.custom then
return false
end

if arc.zoneAt(arc.custom) then
return false
end

arc.custom = nil
arc.customIsland = nil
getgenv().ACBXDeepSpot = nil

return true
end

function arc.capture()
local ipy = omhv.Character
local wzm = ipy and ipy:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not wzm then
return false, _d("NlkXCR4RShlVQw8EUEwXFkUPFxQYGRZEGhkEGB5EWAdY")
end

local yqua = wzm.Position
local wxsj = arc.floorAt(Vector3.new(yqua.X, yqua.Y + 10, yqua.Z))

if not wxsj then
return false, _d("K0JWBBJQVxYWRAUaGVxYUUUFAx5cWFBeGAUEGFUWQwIfAxgLRlgeVhhZCxZZBVYWVBdZRUoCHxgbV0QeVhZKF1sZ")
end

local hzvo = arc.zoneAt(yqua)

if not hzvo then
return false, _d("LF5eGVYDSBdCFwMFUFcNQkQDEhUYHUBSGA9QXhFFXwMYFxgKX1kNVl0YC0JWBBJQVw5TRUoCGF1YQVYeEwIYHl9FGQJe")
end

arc.custom = yqua
arc.customIsland = arc.islandOf(yqua)

getgenv().ACBXDeepSpot = {
X = yqua.X,
Y = yqua.Y,
Z = yqua.Z,
island = arc.customIsland,
v = arc.savedVersion,
}

return true, _d("K1dBDxJQTBBfREoFAFcMFlYZVgRQHRZTDxMAFQ9XQw8EUFAXWlNKXg") .. tostring(hzvo.name) .. _d("URg")
end

function arc.zoneTable()
local lyr = {}

if lf and type(lf.Zones) == _d("DFdVBhM") then
for tyl, fam in ipairs(lf.Zones) do
lyr[#lyr + 1] = {
id = tostring(fam.id),
name = tostring(fam.name or fam.id),
half = tonumber(fam.half) or 0,
luck = tonumber(fam.luck) or 0,
index = tonumber(fam.index) or 0,
boatTier = tonumber(fam.boatTier) or 0,
}
end
end

table.sort(lyr, function(djjc, kjq)
return djjc.index < kjq.index
end)

return lyr
end

function arc.zoneAt(emlr)
local gzk = lf and lf.ZoneCenter
local hfnz = arc.zoneTable()

if not (gzk and emlr and #hfnz > 0) then
return nil
end

local gal = math.max(math.abs(emlr.X - gzk.X), math.abs(emlr.Z - gzk.Z))

for chc, vt in ipairs(hfnz) do
if gal < vt.half then
return vt
end
end

return nil
end

function arc.current()
local rz = omhv.Character
local gf = rz and rz:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

return gf and arc.zoneAt(gf.Position) or nil
end

function arc.sync()
local mgt = arc.current()
wf.zoneId = mgt and mgt.id or nil
end

function arc.floorAt(hyot)
local zyqy = omhv.Character
local dpet = RaycastParams.new()
dpet.FilterType = Enum.RaycastFilterType.Exclude
dpet.FilterDescendantsInstances = { zyqy }

local qbdz = workspace:Raycast(Vector3.new(hyot.X, hyot.Y + 20, hyot.Z), Vector3.new(0, -80, 0), dpet)

if qbdz and qbdz.Instance.Name ~= _d("L1dDDwQ") then
return qbdz
end

return nil
end

function arc.ensureSpotMap()
local xwr = arc.spot()
local xry = Vector3.new(xwr.X, xwr.Y + 20, xwr.Z)

if arc.floorAt(xry) then
return true
end

local nuqw = workspace:FindFirstChild(_d("NVdHGQ"))

if nuqw and nuqw:FindFirstChild(_d("O1lWGQIRVDRZVQgP")) then
if os.clock() - (arc.hopAt or 0) > 1 then
arc.hopAt = os.clock()
arc.hop(xwr)
wf.lastMessage = _d("NVlBAxgXGAxZFx4eFRgcU1IaWwdZDFNFSgUAVww")
end

return false
end

if os.clock() - (arc.islandAskedAt or 0) > 1.2 then
arc.islandAskedAt = os.clock()

local xbi = arc.customIsland or arc.islandOf(xwr)

if xbi == _d("FFlVCA8") then
pcall(function()
xl.TeleportToWorld:FireServer(_d("FFlVCA8"))
end)
else
pcall(function()
xl.FishingIslandTeleport:FireServer(_d("D1dOGhkZVgw"), xbi)
end)
end

wf.lastMessage = _d("LFdcAxgXGAxeUkoREVUdEURKAhVUHUZYGAJQTBcWQwITUFwdU0dHARFMHUQXBxcA")
end

return false
end

function arc.hop(egzn)
local bkf = omhv.Character
local oe = bkf and bkf:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))
local kws = bkf and bkf:FindFirstChildOfClass(_d("MENaCxgfURw"))

if not (oe and kws) then
return false
end

if kws.SeatPart then
pcall(function()
kws.Sit = false
end)
end

oe.AssemblyLinearVelocity = Vector3.zero
oe.CFrame = CFrame.new(Vector3.new(egzn.X, egzn.Y + 8, egzn.Z))

return true
end

function arc.faceWater()
local mdqd = omhv.Character
local hbk = mdqd and mdqd:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not hbk then
return false
end

local sh = nk()

if not sh then
local wsr = lf and lf.ZoneCenter

if wsr then
local vazh = Vector3.new(wsr.X - hbk.Position.X, 0, wsr.Z - hbk.Position.Z)

sh = vazh.Magnitude > 1 and vazh.Unit or nil
end
end

if not sh then
return false
end

hbk.CFrame = CFrame.lookAt(hbk.Position, hbk.Position + sh)

return true
end

function arc.aimWater(wind)
local hrnq = omhv.Character
local txq = hrnq and hrnq:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not txq then
return false
end

if wind then
efmz()
end

local jngj = txq.CFrame.LookVector
local knx = Vector3.new(jngj.X, 0, jngj.Z)
local ttec = nk()

if not ttec then
return false
end

if knx.Magnitude > 0.05 and knx.Unit:Dot(ttec) > 0.985 then
return true
end

txq.CFrame = CFrame.lookAt(txq.Position, txq.Position + ttec)

return true
end

function arc.hold(gsag)
local rrjg = omhv.Character
local abfb = rrjg and rrjg:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))
local huv = rrjg and rrjg:FindFirstChildOfClass(_d("MENaCxgfURw"))

if not (abfb and huv) then
return false
end

if huv.SeatPart then
pcall(function()
huv.Sit = false
end)
end

local mnpy = arc.floorAt(gsag)

if not mnpy then
return false
end

abfb.AssemblyLinearVelocity = Vector3.zero
abfb.CFrame = CFrame.new(Vector3.new(gsag.X, mnpy.Position.Y + 3.2, gsag.Z))

pcall(arc.aimWater, true)

wf.phase = _d("EVJbDw")
wf.nextCastAt = 0

return true
end

function arc.dive()
local is = arc.spot()

if not arc.ensureSpotMap() then
return false
end

if not arc.hold(is) then
return false
end

arc.islandAskedAt = 0

local dlyx = arc.zoneAt(is)

wf.lastMessage = dlyx
and (_d("MFlbDh8eX1hCXw9WFF0dRhodFwRdChZEGhkEGFA") .. tostring(dlyx.name) .. _d("UQ"))
or _d("MFlbDh8eX1hCXw9WFF0dRhodFwRdChZEGhkE")

task.wait(0.25)
arc.sync()
wf.deepDiveAt = os.clock() + 2

return true
end

function arc.walk()
local sbwu = omhv.Character
local ht = sbwu and sbwu:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if arc.walking and os.clock() - (arc.walkStartedAt or 0) < 60 then
return false
end

if not ht then
return false
end

local tvv = arc.spot()

if (ht.Position - Vector3.new(tvv.X, ht.Position.Y, tvv.Z)).Magnitude <= 8 then
wf.phase = _d("EVJbDw")
wf.nextCastAt = 0

return true
end

arc.walking = true
arc.walkStartedAt = os.clock()
wf.deepPhase = _d("D1dbAQ")
wf.deepStageAt = os.clock()
wf.lastMessage = _d("L1dbAR8eX1hCWEoCGF1YUlIPBhVLDBZACwIVSlhFRwUC")

task.spawn(function()
local plb = sbwu and sbwu:FindFirstChildOfClass(_d("MENaCxgfURw"))

local pms, dhdg = pcall(function()

local ufmz = workspace:FindFirstChild(_d("NVdHGQ"))
local pqtr = arc.customIsland or arc.islandOf(tvv)
local lgbx = (ht.Position - Vector3.new(tvv.X, ht.Position.Y, tvv.Z)).Magnitude

if lgbx > 400 then
if not (ufmz and ufmz:FindFirstChild(_d("O1lWGQIRVDRZVQgP"))) then
pcall(function()
xl.TeleportToWorld:FireServer(_d("FFlVCA8"))
end)

local wg = os.clock() + 20

while wf.deepWalk and os.clock() < wg do
local pzx = workspace:FindFirstChild(_d("NVdHGQ"))

if pzx and pzx:FindFirstChild(_d("O1lWGQIRVDRZVQgP")) then
break
end

task.wait(0.5)
end
end

if wf.deepWalk then
local sy = arc.arrivals and arc.arrivals[pqtr]

if sy then
arc.hop(sy)
else
local zefb = Vector3.new(tvv.X - ht.Position.X, 0, tvv.Z - ht.Position.Z)
local kv = zefb.Magnitude > 1 and zefb.Unit or Vector3.new(1, 0, 0)

arc.hop(Vector3.new(tvv.X - kv.X * 120, tvv.Y, tvv.Z - kv.Z * 120))
end

task.wait(1.5)
end
end

if wf.deepWalk and plb then

local foc = (ht.Position - Vector3.new(tvv.X, ht.Position.Y, tvv.Z)).Magnitude
local ndai = os.clock() + math.clamp(foc / 8, 30, 600)
local xpw = 0
local hwdr = ht.Position
local jh = os.clock()

while wf.deepWalk and os.clock() < ndai do
local cwzz = Vector3.new(tvv.X - ht.Position.X, 0, tvv.Z - ht.Position.Z)

if cwzz.Magnitude <= 3 then
break
end

if os.clock() - xpw >= 0.25 then
plb:MoveTo(Vector3.new(tvv.X, ht.Position.Y, tvv.Z))
xpw = os.clock()
end

if os.clock() - jh >= 1.2 then
if (ht.Position - hwdr).Magnitude < 2 then
plb.Jump = true
end

hwdr = ht.Position
jh = os.clock()
end

task.wait(0.1)
end

plb:MoveTo(ht.Position)
end
end)

arc.walking = false

if not pms then
wf.deepPhase = _d("EVJbDw")
wf.deepStageAt = os.clock()
wf.lastMessage = _d("L1dbAVYEV1hyUg8GFUsMFmALAhVKWFBWAxoVXEIW") .. tostring(dhdg)

return
end

if not wf.deepWalk then
return
end

local co = Vector3.new(ht.Position.X - tvv.X, 0, ht.Position.Z - tvv.Z)

if co.Magnitude <= 6 then

pcall(arc.aimWater, true)
wf.phase = _d("EVJbDw")
wf.nextCastAt = 0
wf.deepPhase = _d("EFlbDg")
wf.deepStageAt = os.clock()
arc.sync()
wf.lastMessage = _d("L1dbARMUGAxZFx4eFRgLV0EPElBcHVNHRwERTB1EFxkGH0w")
else

wf.deepPhase = _d("EVJbDw")
wf.deepStageAt = os.clock()
wf.lastMessage = _d("O1lCBhJQVhdCFx0XHFNYQlhKAhhdWFJSDwYVSwwWQAsCFUpYRUcFAlAVWEJFEx8eX1hXUAsfHg")
end
end)

return false
end

function arc.settle()
for iifg = 1, 30 do
if not wf.deepZone or wf.deepWalk then
return false
end

if arc.dive() then
return true
end

task.wait(1)
end

return false
end

function arc.surface()
local orzw = omhv.Character
local ybuz = orzw and orzw:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not ybuz then
return false
end

local xf = RaycastParams.new()
xf.FilterType = Enum.RaycastFilterType.Exclude
xf.FilterDescendantsInstances = { orzw }

local nh = workspace:Raycast(fre + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), xf)
local izvj = fre

if nh and nh.Instance.Name ~= _d("L1dDDwQ") then
izvj = Vector3.new(fre.X, nh.Position.Y + 3, fre.Z)
end

ybuz.CFrame = CFrame.new(izvj)
wf.phase = _d("EVJbDw")
wf.nextCastAt = 0

return true
end

function wf.gotoIsland()
local nxi = omhv.Character
local ygdj = nxi and nxi:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))
local kfdx = workspace:FindFirstChild(_d("MUVbCxgUfhFFXw8EHVkWeGcp"), true)

if not (ygdj and kfdx) then
return false
end

local kzlg = kfdx:GetPivot()
local bid = RaycastParams.new()
bid.FilterType = Enum.RaycastFilterType.Exclude
bid.FilterDescendantsInstances = { nxi, kfdx }

local zcnt = nil
local yyhn = -math.huge

for cpbs, iz in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local tm = workspace:Raycast(kzlg.Position + iz + Vector3.new(0, 30, 0), Vector3.new(0, -120, 0), bid)

if tm and tm.Position.Y > yyhn then
zcnt = tm
yyhn = tm.Position.Y
end
end

if zcnt then
ygdj.CFrame = CFrame.new(Vector3.new(zcnt.Position.X, yyhn + 3.5, zcnt.Position.Z))
else
ygdj.CFrame = CFrame.new(kzlg.Position + Vector3.new(0, 4, 0))
end

wf.phase = _d("EVJbDw")
wf.nextCastAt = 0

return true
end

function arc.cycle()
local rem = os.clock()
local xps = wf.deepPhase or _d("EVJbDw")
local aow = tonumber(wf.deepStageAt) or 0

if rem < math.max(wf.shopTripUntil or 0, wf.tpHoldUntil or 0) then
return
end

if xps == _d("EVJbDw") then
wf.deepPhase = _d("EFlbDg")
wf.deepStageAt = rem

if wf.deepWalk then
arc.walk()
else
arc.dive()
end

return
end

if xps == _d("D1dbAQ") then
return
end

if xps == _d("EFlbDg") then
local estn = arc.current()

local ou = arc.zoneAt(arc.spot())

if estn and not omhv:GetAttribute(_d("K0FeBxsZVh8")) and rem - (wf.deepAimAt or 0) > 2 then
wf.deepAimAt = rem
pcall(arc.aimWater)
end

if omhv:GetAttribute(_d("K0FeBxsZVh8")) then
if wf.deepWalk then

wf.deepPhase = _d("EVJbDw")
wf.deepStageAt = rem
else
wf.deepPhase = _d("HF9H")
wf.deepStageAt = rem
wf.lastMessage = _d("K0FeBxsZVh8WVh5WBFAdFlMPEwAYC0ZYHlZdGAtDRQwXE10cFlEFBFBZEUQ")
end
elseif not estn or (ou and estn.index < ou.index) then

wf.deepPhase = _d("EVJbDw")
wf.deepStageAt = rem
end

return
end

if xps == _d("HF9H") then
arc.surface()
wf.deepPhase = _d("C0NFDBcTXQ")
wf.deepStageAt = rem

return
end

if xps == _d("C0NFDBcTXQ") and rem - aow >= arc.surfaceWait then
wf.deepPhase = _d("EVJbDw")
end
end

local function znxa()
local skm = omhv.Character
local iwt = skm and skm:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not iwt then
return false
end

return (iwt.Position - fre).Magnitude <= 12
end

local function xxfo()
if not gzdt() then
return false
end

local yem = pcall(function()
xl.FishingSetAuto:FireServer(true)
end)

wf.usingGameAuto = yem
return yem
end

local function vekc()
wf.usingGameAuto = false

pcall(function()
xl.FishingSetAuto:FireServer(false)
end)

pcall(function()
xl.FishingStop:FireServer()
end)
end

function wf.recover()
wf.phase = _d("EVJbDw")
wf.nextCastAt = 0
wf.deepPhase = _d("EVJbDw")
wf.deepStageAt = 0
wf.deepDiveAt = 0
wf.waterRefusals = 0
wf.usingGameAuto = false
wf.castMark = wf.totalCasts
wf.castMarkAt = os.clock()

pcall(vekc)
pcall(gzdt)

if wf.deepZone and not arc.current() then

pcall(function()
xl.TeleportToWorld:FireServer(_d("FFlVCA8"))
end)
elseif wf.tpToBay and not znxa() then
pcall(fwpb)
end

wf.lastMessage = _d("Pl9EAh8eX1hFQwsaHF0cFhpKBBVLHUIXHh4VGA9XQw8EUFkWUhceGR9TWEJfD1YXWRVTEBlWHFcaVE5KBB9P")
end

local function nmj()
if not gzdt() then
wf.lastMessage = _d("NlkXDB8DUBFYUEoEH1xYX1lKAhhdWFRWCR0AWRtd")
return false
end

local oveb = ek()
local ltnz = nk()
local ug = oveb or ltnz

if not ug then
wf.lastMessage = _d("NlkXHRcEXQoWUQUDHlxYWFILBBJB")
return false
end

if oveb and ltnz and oveb:Dot(ltnz) < 0.25 then
ug = ltnz
end

wf.phase = _d("G1dEHh8eXw")
wf.lastMessage = nil
wf.watchdogAt = os.clock() + 25

local tl, clrg = pcall(function()
xl.FishingThrow:FireServer(1, ug)
end)

if not tl then
wf.phase = _d("EVJbDw")
wf.lastMessage = tostring(clrg)
wf.nextCastAt = os.clock() + 3
return false
end

return true
end

local yfhk = im(xl.FishingUpdate.OnClientEvent, function(yrpr, krec)
wf.dirty = true

if yrpr == _d("K0JWHhM") then
if type(krec) == _d("DFdVBhM") then
wf.autoOn = krec.autoOn == true
end

return
end

if yrpr == _d("O1dEHg") then
wf.phase = _d("D1deHh8eXzpfQw8")
wf.waterRefusals = 0
return
end

if yrpr == _d("Ol9DDw") then
local axhw = type(krec) == _d("DFdVBhM") and tonumber(krec.warning) or 1

wf.phase = _d("ClNSBh8eXw")
wf.watchdogAt = os.clock() + 15

task.delay(math.max(0.3, axhw + 0.8), function()
if wf.phase ~= _d("ClNSBh8eXw") then
return
end

pcall(function()
xl.FishingReel:FireServer(true, 120)
end)

wf.phase = _d("ClNEBRoGURZR")
end)

return
end

if yrpr == _d("O1dDCR4") then

local go = type(krec) == _d("DFdVBhM") and tonumber(krec.totalCasts) or nil
local eyp = tonumber(getgenv().ACBXFishingCatchMark) or 0

if go and go <= eyp and eyp - go < 25 then
return
end

if go then
getgenv().ACBXFishingCatchMark = go
end

local oulq = type(krec) == _d("DFdVBhM") and tostring(krec.itemId) or _d("DVhcBBkHVg")
local gw = wf.catchName(oulq)

wf.catches[oulq] = (wf.catches[oulq] or 0) + 1
wf.totalCatches = (wf.totalCatches or 0) + 1

local vc = type(krec) == _d("DFdVBhM") and krec.chest or nil

if type(vc) == _d("DFdVBhM") and vc.itemId then
local aovf = tostring(vc.itemId)

wf.catches[aovf] = (wf.catches[aovf] or 0) + 1
end

if os.clock() - (lb.at or 0) >= 5 then
lb.at = os.clock()
lb.save()
end
wf.lastCatch = gw
wf.lastMessage = nil
wf.phase = _d("EVJbDw")
wf.nextCastAt = os.clock() + 2.5

if type(krec) == _d("DFdVBhM") then
wf.casts = tonumber(krec.casts) or wf.casts
wf.totalCasts = tonumber(krec.totalCasts) or wf.totalCasts
wf.autoUnlocked = krec.autoUnlocked == true or wf.autoUnlocked
end

return
end

if yrpr == _d("OUNDBTkWXg") then

wf.usingGameAuto = false
wf.phase = _d("EVJbDw")
wf.nextCastAt = os.clock() + 1
return
end

if yrpr == _d("PUVUCwYVXA") then
wf.phase = _d("EVJbDw")
wf.lastMessage = _d("LF5SShAZSxAWUAUCUFkPV04")
wf.nextCastAt = os.clock() + 2.5
return
end

if yrpr == _d("KlNdDxUEXRw") then
wf.phase = _d("EVJbDw")

local mii = type(krec) == _d("DFdVBhM") and tostring(krec.message) or _d("O1dEHlYCXRJTVB4TFA")
wf.lastMessage = mii

if mii:lower():find(_d("D1dDDwQ"), 1, true) then
wf.waterRefusals = (wf.waterRefusals or 0) + 1

if wf.waterRefusals >= 2 then
wf.waterRefusals = 0

if qdex() then
wf.lastMessage = _d("KlNRHwUVXFhCQAMVFRhVFkMfBB5dHBZVCxUbGAxZQAsEFBgMXlJKARFMHUQ")
wf.nextCastAt = os.clock() + 1.5
return
end
end

wf.nextCastAt = os.clock() + 8
return
end

wf.waterRefusals = 0
wf.nextCastAt = os.clock() + 3
return
end
end)

local function quz()
if not wf.loaded then
return _d("KlNWDh8eX1hQXhkeGVYfFkQeFwRdVhgZ")
end

local tvxk = wf.autoUnlocked == true
or (wf.totalCasts or 0) > 0
or (wf.tutorialStep or 0) > 0
local hcyu = lf and lf.RodsById and lf.RodsById[wf.rod]
local dxcn = hcyu and tostring(hcyu.name) or tostring(wf.rod)
local gio = math.floor((tonumber(wf.luck) or 0) * 100 + 0.5)

local gkul = {
_d("KllTUFY") .. dxcn,
_d("NENUAUxQ") .. gio .. _d("XQ"),
}

local hghh = arc.current()

if hghh then
table.insert(gkul, _d("IllZD0xQ") .. hghh.name .. _d("WB4c") .. tostring(math.floor(hghh.luck * 100 + 0.5)) .. _d("XRZbHxUbEQ"))
end

table.insert(gkul, _d(""))
table.insert(gkul, _d("O1dEHgVQTBcWRBoTHlxCFg") .. sjw(wf.casts or 0))
table.insert(gkul, _d("LFlDCxpQWxlFQxlMUA") .. sjw(wf.totalCasts or 0))

table.insert(gkul, _d(""))
table.insert(gkul, _d("Pl9EAh8eX1hDWQYZE1MdUg1K") .. (tvxk and _d("AVNE") or _d("Flk")))
table.insert(gkul, _d("OUNDBVsWUQteFx8GF0oZUlJQVg") .. (wf.autoUnlocked and _d("F0FZDxI") or _d("FllDShkHVh1S")))

if wf.enabled then
local oj = wf.usingGameAuto and _d("H1daD1YRTQxZ") or tostring(wf.phase)

if oj == _d("D1deHh8eXzpfQw8") then
oj = _d("D1deHh8eX1hQWBhWERgaX0MP")
elseif oj == _d("ClNSBh8eXw") then
oj = _d("ClNSBh8eX1hfWQ")
elseif oj == _d("ClNEBRoGURZR") then
oj = _d("FFdZDh8eX1hfQw")
end

table.insert(gkul, _d(""))
table.insert(gkul, _d("OUNDBVY2UQteDUo") .. oj)

local nity = yvcz.worldBoss

if nity and type(nity.hasWork) == _d("HkNZCQIZVxY") and nity.enabled and nity.hasWork() then
table.insert(gkul, _d("MFlbDh8eX0IWUAYZElkUFlUFBQMYEUUXHwZQEApTRB8bFUtYWVlKHwRLWFVYBRoUVw9YHg"))
end

if wf.lastCatch then
table.insert(gkul, _d("NFdEHlYTWQxVX1BW") .. wf.lastCatch)
end
end

if wf.lastMessage then
table.insert(gkul, _d(""))
table.insert(gkul, _d("NllDD0xQ") .. wf.lastMessage)
end

return table.concat(gkul, _d("cg"))
end

local function xay()
local ycll = 0

for pj, mi in pairs(wf.catches) do
local zyhu = pc.ById[pj]

if not (zyhu and zyhu.type == _d("G15SGQI")) then
ycll = ycll + mi
end
end

return ycll
end

local function ss()
local qpxu = {}

for oipu, lpj in pairs(wf.catches) do
local gkea = pc.ById[oipu]
local sdq = gkea and gkea.type == _d("G15SGQI") or false

table.insert(qpxu, {
name = wf.catchName(oipu),
count = lpj,
chest = sdq,
rank = sdq and (tonumber(gkea.border) or 1) or 0,
})
end

if #qpxu == 0 then
return _d("NllDAh8eX1hVVh8RGExYT1IeWHoyLENFBFYfVlh3Qh4ZUH4RRV9KFx5cWEJfD1YEWRRaTkoFBFkKQkRKHhVKHRgXIwJQSxlAUhlWGUwLU1sMWlBLFxZeHlYTWQpEXg8FUFcOU0VKGBVADBZEDwUDURdYGQ")
end

table.sort(qpxu, function(pv, eqdy)
if pv.chest ~= eqdy.chest then
return pv.chest
end

if pv.chest and pv.rank ~= eqdy.rank then
return pv.rank > eqdy.rank
end

if pv.count ~= eqdy.count then
return pv.count > eqdy.count
end

return pv.name < eqdy.name
end)

local dka = {}

for rhi, zzep in ipairs(qpxu) do
table.insert(dka, zzep.name .. _d("WNS3/lY") .. sjw(zzep.count))
end

local ij = {
table.concat(dka, _d("cjw")),
_d(""),
_d("LFlDCxpQWxlDUAICShg") .. sjw(xay()) .. _d("WPSASg") .. #qpxu .. _d("WF1eBBID"),
}

if wf.lastCatch then
table.insert(ij, _d("NFdEHlYTWQxVX1BW") .. tostring(wf.lastCatch))
end

return table.concat(ij, _d("cg"))
end

local xfp = {
rod = Vector3.new(-493, 18, -40254),
bait = Vector3.new(-493, 18, -40254),
}

local function rwd(altr)
if not lf then
return {}
end

local eo

if altr == _d("CllT") then
eo = lf.RodsById
elseif altr == _d("GldeHg") then
eo = lf.BaitsById
else
eo = nil
end

local fxp = {}

for ng, quaq in pairs(eo or {}) do
if not quaq.crafted then
table.insert(fxp, {
id = tostring(ng),
name = tostring(quaq.name or ng),
cost = tonumber(quaq.cost) or 0,
luck = tonumber(quaq.luck) or 0,
index = tonumber(quaq.index) or 0,
island = quaq.shop == _d("EUVbCxgU"),
})
end
end

table.sort(fxp, function(ad, ja)
if ad.index ~= ja.index then
return ad.index < ja.index
end

return ad.cost < ja.cost
end)

return fxp
end

local function eyl(xnyg)
if xnyg == _d("CllT") then
return wf.rodsOwned or {}
elseif xnyg == _d("GldeHg") then
return wf.baitsOwned or {}
end

return {}
end

local function vglz(fv)
if fv == _d("CllT") then
return wf.rod
elseif fv == _d("GldeHg") then
return wf.equippedBait
end

return nil
end

local function fjp(jkj)
local gwya = eyl(jkj)
local atzh = nil

for omq, hl in ipairs(rwd(jkj)) do
if gwya[hl.id] == true then
atzh = hl
end
end

if jkj == _d("CllT") and lf and lf.RodsById then
local iuiw = lf.RodsById.rod_secret

if iuiw and gwya.rod_secret == true then
atzh = {
id = _d("CllTNQUVWwpTQw"),
name = tostring(iuiw.name or _d("PU5UCxoZWg1E")),
cost = tonumber(iuiw.cost) or 0,
luck = tonumber(iuiw.luck) or 0,
index = tonumber(iuiw.index) or 0,
island = true,
}
end
end

return atzh
end

local function irze(vqj)
if vqj.island and wf.islandLocked then
return false
end

return true
end

local function wwl(ne)
local qrqd = eyl(ne)
local zde = wf.casts or 0
local qbqv = nil

for jovc, ycw in ipairs(rwd(ne)) do
if qrqd[ycw.id] ~= true and ycw.cost <= zde and irze(ycw) then
qbqv = ycw
end
end

return qbqv
end

local function wjnd(zsi)
local aop = eyl(zsi)

for azo, eest in ipairs(rwd(zsi)) do
if aop[eest.id] ~= true and irze(eest) then
return eest
end
end

return nil
end

local function eepa(tzk, nzz)
if not nzz then
return _d("FllZD1YfTxZTUw")
end

return nzz.name .. _d("WB4c") .. tostring(math.floor(nzz.luck * 100 + 0.5)) .. _d("XRZbHxUbEQ")
end

local function fdv()
if not lf then
return _d("Pl9EAh8eXzxXQwtWHlcMFlEFAx5cWBsXGR4fSFhSVh4XUE0WV0ELHxxZGlpSRA")
end

local pil = {}
local fvyn = { rod = _d("KllT"), bait = _d("OldeHg") }

for nmo, rps in ipairs({ _d("CllT"), _d("GldeHg") }) do
local ffw = fjp(rps)
local gtou = nil

for lsj, ttr in ipairs(rwd(rps)) do
if ttr.id == vglz(rps) then
gtou = ttr.name
end
end

if #pil > 0 then
table.insert(pil, _d(""))
end

table.insert(pil, fvyn[rps] .. _d("QhY") .. eepa(rps, ffw))
table.insert(pil, _d("N1gXBBkHAlg") .. (gtou or _d("FllZDw")))

local mnj = wwl(rps) or wjnd(rps)

if mnj then
local epsk = mnj.cost - (wf.casts or 0)

table.insert(pil, _d("NlNPHkxQ") .. mnj.name .. _d("WPSASg") .. sjw(mnj.cost) .. _d("WFVWGQID"))

if epsk > 0 then
table.insert(pil, _d("NlNSDlY") .. sjw(epsk) .. _d("WFtYGBM"))
end
else
table.insert(pil, _d("NlNPHkxQXQ5TRRMCGFEWURcFAR5dHA"))
end
end

table.insert(pil, _d(""))
table.insert(pil, _d("O1dEHgVQTBcWRBoTHlxCFg") .. sjw(wf.casts or 0))

if wf.shopMessage then
table.insert(pil, _d(""))
table.insert(pil, wf.shopMessage)
end

return table.concat(pil, _d("cg"))
end

local function gi(bx, nto)
local phw = os.clock()

if phw < (wf.shopCallAt or 0) then
return false, _d("C1pYHQ")
end

wf.shopCallAt = phw + 1.4

local vks, scdg, ncjf, evhf = pcall(function()
return xl.FishingShop:InvokeServer(bx, nto)
end)

if not vks then
return false, _d("HURFBQRQ") .. tostring(scdg)
end

pifh(evhf)

if scdg == true then
return true, nil
end

return false, tostring(ncjf or _d("ClNRHwUVXA"))
end

function wf.rebirthCardsHeld()
local grzw = lf and type(lf.RebirthCards) == _d("DFdVBhM") and #lf.RebirthCards or 0

if grzw == 0 then
return 0, 0
end

local uaz = 0

for qdb, nzqz in ipairs(lf.RebirthCards) do
if wf.rebirthCards[nzqz.cardId] then
uaz = uaz + 1
end
end

return uaz, grzw
end

function wf.rebirthReady()
local jbk, sfu = wf.rebirthCardsHeld()

return sfu > 0 and jbk >= sfu and (tonumber(wf.rebirths) or 0) < 1
end

function wf.rebirthText()
local wyes, qnqa = wf.rebirthCardsHeld()

if qnqa == 0 then
return _d("Pl9EAh8eX1hSVh4XUFYXQhcGGRFcHVIbSgUfGApTVQMEBFBYX0RKAx5ZDldeBhcSVB0Y")
end

if (tonumber(wf.rebirths) or 0) >= 1 then
return _d("KlNVAwQEUB1SGUoiGF1Yd1ULGBRXFlNTSj8DVBlYU0ofAxgXRlIEWA")
end

if wyes >= qnqa then
return _d("OVpbSg") .. qnqa .. _d("WFVWGBIDGB5fRAITFBZYZFILEgkYDFkXGBMSUQpCX0Q")
end

local xu = {}

for ycm, tw in ipairs(lf.RebirthCards) do
if not wf.rebirthCards[tw.cardId] then
table.insert(xu, (string.gsub(tw.cardId, _d("JlBeGR4v"), _d(""))))
end
end

return wyes .. _d("Vw") .. qnqa .. _d("WFVWGBIDFlhlQwMaHBgWU1IOVg") .. table.concat(xu, _d("VBY")) .. _d("Vg")
end

local function qsgt(cvpp)
local bz = omhv.Character
local ye = bz and bz:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not ye then
return false
end

return (ye.Position - (xfp[cvpp] or xfp.rod)).Magnitude <= 26
end

local function ylk(gba, kklb)

if kklb and kklb.island then
if not wf.shopIsland or not wf.shopIsland.toIsland() then
wf.shopMessage = _d("O1lCBhJQVhdCFxgTEVsQFkMCE1BRC1pWBBJQWxdDWR4TAg")

return false
end

return true
end

if qsgt(gba) then
return true
end

local geo = omhv.Character
local eizo = geo and geo:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not eizo then
return false
end

local nos = xfp[gba] or xfp.rod
wf.shopTripUntil = os.clock() + 12
wf.shopHoldUntil = os.clock() + 12

pcall(function()
eizo.CFrame = CFrame.new(nos)
end)

task.wait(1.2)

return qsgt(gba)
end

local function pqu(ykq, uj, bbq)
if not bbq then
return false
end

if (wf.casts or 0) < bbq.cost then
return false
end

if not ylk(ykq, bbq) then
wf.shopMessage = _d("O1lCBhJQVhdCFxgTEVsQFkMCE1BLEFlHShAfSlg") .. bbq.name
return false
end

local gmx, raty = gi(uj, bbq.id)

if not gmx then
local nwo = tostring(raty)
local ty = nwo:find(_d("LFdbAVYEV1hCXw9WNlELXlIYGxFW"), 1, true) or nwo:find(_d("OllWHlY0XRlaUhg"), 1, true)

if ty then

wf.shopMessage = _d("L1dbAR8eX1hDR0oCHxgMXlJKFR9NFkJSGFYWVwoW") .. bbq.name
return false
end

if raty ~= _d("C1pYHQ") then
wf.shopAt = os.clock() + 15
wf.shopMessage = _d("K1NFHBMCGApTUR8FFVxY") .. bbq.name .. _d("WB4") .. nwo .. _d("UQ")
end

return false
end

wf.shopMessage = _d("OllCDR4EGA") .. bbq.name

return true
end

local function ls(fnkw)
local wiz = fjp(fnkw)

if not wiz or vglz(fnkw) == wiz.id then
return false
end

local oipz

if fnkw == _d("CllT") then
oipz = _d("PUdCAwYiVxw")
elseif fnkw == _d("GldeHg") then
oipz = _d("PUdCAwYyWRFC")
else
return false
end

local lyp, ol = gi(oipz, wiz.id)

if not lyp then
if ol ~= _d("C1pYHQ") then
wf.shopMessage = _d("O1lCBhJQVhdCFw8HBVEIFg") .. wiz.name .. _d("WB4") .. tostring(ol) .. _d("UQ")
end

return false
end

if fnkw == _d("CllT") then
wf.rod = wiz.id
elseif fnkw == _d("GldeHg") then
wf.equippedBait = wiz.id
else
return false
end

wf.shopMessage = _d("PUdCAwYAXRwW") .. wiz.name

return true
end

local function mgr()
local sk = wf.shop

if os.time() - (wf.lastSync or 0) >= 5 then
imaz()
end

if sk.equipRod then
ls(_d("CllT"))
end

if sk.equipBait then
ls(_d("GldeHg"))
end

if sk.autoBuyRod then
pqu(_d("CllT"), _d("OkNOOBkU"), wwl(_d("CllT")))
end

if sk.autoBuyBait then
pqu(_d("GldeHg"), _d("OkNOKBcZTA"), wwl(_d("GldeHg")))
end
end

local function md()
local kdxe = wf.shop

return kdxe.autoBuyRod or kdxe.autoBuyBait or kdxe.equipRod or kdxe.equipBait
end

wf.shopIsland = {
rods = function()
local iksf = lf and lf.RodsById or {}
local qqd = {}

for wu, uitf in pairs(iksf) do
if tostring(uitf.shop) == _d("EUVbCxgU") then
table.insert(qqd, {
id = tostring(wu),
name = tostring(uitf.name or wu),
cost = tonumber(uitf.cost) or 0,
luck = tonumber(uitf.luck) or 0,
index = tonumber(uitf.index) or 0,
crafted = uitf.crafted == true,
})
end
end

table.sort(qqd, function(foaq, tcc)
return foaq.index < tcc.index
end)

return qqd
end,

angler = function()
local rbvc = workspace:FindFirstChild(_d("NmZ0GQ"), true)

if not rbvc then
return nil
end

for mv, cum in ipairs(rbvc:GetChildren()) do
if cum:GetAttribute(_d("K1NUGBMEeRZRWw8EPmg7")) then
return cum
end
end

return nil
end,
held = function(ofy)
return (wf.rodsOwned or {})[ofy] == true
end,
recipeHeld = function(xxe)
for stc, bdp in ipairs(xxe or {}) do
local ogo = tonumber((wf.mats or {})[bdp.id]) or 0

if ogo < (tonumber(bdp.count) or 0) then
return false
end
end

return true
end,
recipeText = function(ry)
local bgvt = {}

for ndqp, upla in ipairs(ry or {}) do
local vytk = tonumber((wf.mats or {})[upla.id]) or 0
local ouzr = (pc.ById[upla.id] and pc.ById[upla.id].name) or tostring(upla.id)

table.insert(bgvt, ouzr .. _d("WA") .. sjw(vytk) .. _d("Vw") .. sjw(tonumber(upla.count) or 0))
end

return table.concat(bgvt, _d("WPSASg"))
end,

stand = function(id)
local iu = omhv.Character
local er = iu and iu:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not (er and id) then
return false
end

local ca = id:GetPivot()
local gvv = id:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg")) or id:FindFirstChildWhichIsA(_d("OldEDyYRSgw"), true)
local jkdu = gvv and (gvv.CFrame * CFrame.new(0, 0, -5)).Position or nil

if not jkdu then
local lnxi = RaycastParams.new()
lnxi.FilterType = Enum.RaycastFilterType.Exclude
lnxi.FilterDescendantsInstances = { iu, id }

local bgwi = nil
local as = math.huge

for eng, ob in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local wao = workspace:Raycast(ca.Position + ob + Vector3.new(0, 30, 0), Vector3.new(0, -140, 0), lnxi)

if wao and tostring(wao.Instance.Name) ~= _d("L1dDDwQ") and wao.Position.Y <= ca.Position.Y + 10 then
local feb = math.abs(wao.Position.Y - ca.Position.Y)

if feb < as then
bgwi = wao
as = feb
end
end
end

jkdu = bgwi and Vector3.new(bgwi.Position.X, bgwi.Position.Y + 3.5, bgwi.Position.Z) or (ca.Position + Vector3.new(0, 4, 0))
end

wf.shopTripUntil = os.clock() + 12

wf.islandTripUntil = os.clock() + 12

pcall(function()
er.CFrame = CFrame.new(jkdu)
end)

task.wait(1.2)

return true
end,
atIsland = function()
local oex = workspace:FindFirstChild(_d("MUVbCxgUfhFFXw8EHVkWeGcp"), true)
local mp = omhv.Character
local ua = mp and mp:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not (oex and ua) then
return false
end

return (ua.Position - oex:GetPivot().Position).Magnitude <= 45
end,
toIsland = function()
if wf.shopIsland.atIsland() then
return true
end

wf.shopTripUntil = os.clock() + 12

if not wf.gotoIsland() then
return false
end

task.wait(1.2)

return wf.shopIsland.atIsland()
end,

craftExcalibur = function()
local dp = wf.shopIsland.angler()

if not dp or wf.shopIsland.held(_d("CllTNQUVWwpTQw")) then
return false
end

if not wf.shopIsland.recipeHeld(lf and lf.SecretRecipe) then
return false
end

wf.shopIsland.stand(dp)

local zf, guzz = gi(_d("O0RWDAIiVxw"), _d("CllTNQUVWwpTQw"))

if zf then
wf.rod = _d("CllTNQUVWwpTQw")
wf.islandMessage = _d("O0RWDAIVXFhCXw9WNUAbV1sDFAVKWERYDlYRTFhCXw9WOFEcUlIEVjFWH1pSGA")
elseif guzz ~= _d("C1pYHQ") then
wf.islandMessage = _d("MF9TDhMeGDlYUAYTAhgKU1EfBRVcWEJfD1Y1QBtXWwMUBUpYHg") .. tostring(guzz) .. _d("UQ")
end

return zf
end,
craftBoot = function()
if wf.boot.owned or wf.islandLocked then
return false
end

if not wf.shopIsland.recipeHeld(lf and lf.BootRecipe) then
return false
end

if not wf.shopIsland.toIsland() then
wf.islandMessage = _d("O1lCBhJQVhdCFxgTEVsQFkMCE1BRC1pWBBJQWxdDWR4TAg")
return false
end

local mrx, eca = gi(_d("O0RWDAIyVxdC"))

if mrx then
wf.boot.owned = true
wf.islandMessage = _d("O0RWDAIVXFhCXw9WPF0fU1kOFwJBWHRYBQI")
elseif eca ~= _d("C1pYHQ") then
wf.islandMessage = _d("MUVbCxgUGD5fRAITAlUZWBcYExZNC1NTSgIYXVhUWAUCUBA") .. tostring(eca) .. _d("UQ")
end

return mrx
end,
best = function()
local zmhd = wf.rodsOwned or {}
local ene = nil

for lvh, re in ipairs(wf.shopIsland.rods()) do
if zmhd[re.id] == true and (ene == nil or re.luck > ene.luck) then
ene = re
end
end

return ene
end,

equipBoot = function()
if not wf.boot.owned or wf.boot.equipped then
return false
end

local yv, lga = gi(_d("PUdCAwYyVxdC"), true)

if yv then
wf.boot.equipped = true
wf.islandMessage = _d("PUdCAwYAXRwWQwITUHQdUVIEEhFKARZ1BRkE")
elseif lga ~= _d("C1pYHQ") then
wf.islandMessage = _d("O1lCBhJQVhdCFw8HBVEIFkMCE1BaF1lDSl4") .. tostring(lga) .. _d("UQ")
end

return yv
end,
active = function()
local hjs = wf.island

return hjs.autoRod or hjs.autoAcc or hjs.equipAcc
end,
run = function()
local liaj = wf.island

if os.time() - (wf.lastSync or 0) >= 8 then
imaz()
end

if liaj.autoRod then
wf.shopIsland.craftExcalibur()
end

if liaj.autoAcc then
wf.shopIsland.craftBoot()
end

if liaj.equipAcc then
wf.shopIsland.equipBoot()
end
end,
text = function()
if not lf then
return _d("Pl9EAh8eXzxXQwtWHlcMFlEFAx5cWBsXHh4VGBFFWwsYFBgLXlgaVhlLWENZCwARURRXVQYTXg")
end

local oi = {}
local hka = wf.rodsOwned or {}

table.insert(oi, wf.islandLocked and _d("OVRWBBIfVh1SFyMFHFkWUhcDBVBUF1VcDxJQFVhEUggfAkwQFlEDBANMVg") or _d("OVRWBBIfVh1SFyMFHFkWUhcDBVBXCFNZRA"))

for jf, dh in ipairs(wf.shopIsland.rods()) do
local dqbt

if hka[dh.id] == true then
dqbt = wf.rod == dh.id and _d("F0FZDxJQ+s8WWARWHlcP") or _d("F0FZDxI")
elseif dh.crafted then
dqbt = _d("MF9TDhMeGDlYUAYTAhgKU1QDBhU")
else
dqbt = sjw(dh.cost) .. _d("WFVWGQID")
end

table.insert(oi, dh.name .. _d("WNS3/lY") .. dqbt)
end

table.insert(oi, _d(""))

if hka.rod_secret then
table.insert(oi, _d("PU5UCxoZWg1EDUoZB1YdUg"))
else
local juuk = wf.shopIsland.recipeHeld(lf.SecretRecipe)

table.insert(oi, _d("PU5UCxoZWg1EDUo") .. (juuk and _d("ClNUAwYVGApTVg4P") or _d("ClNUAwYVGAteWBgC")))
table.insert(oi, wf.shopIsland.recipeText(lf.SecretRecipe))
end

table.insert(oi, _d("MF9TDhMeGDlYUAYTAgJY") .. (wf.shopIsland.angler() and _d("DUYXBBkH") or _d("FllDSh4VSh0")))
table.insert(oi, _d(""))

local vuw = wf.boot
local ebdb

if vuw.equipped then
ebdb = _d("NFNQDxgUWQpPFygZH0xCFlIbAxlICFNT")
elseif vuw.owned then
ebdb = _d("NFNQDxgUWQpPFygZH0xCFlgdGBVc")
elseif wf.shopIsland.recipeHeld(lf.BootRecipe) then
ebdb = _d("NFNQDxgUWQpPFygZH0xCFkUPFRlIHRZFDxcUQQ")
else
ebdb = _d("NFNQDxgUWQpPFygZH0xCFg") .. wf.shopIsland.recipeText(lf.BootRecipe)
end

table.insert(oi, ebdb)
table.insert(oi, _d("O1dEHgVQTBcWRBoTHlxCFg") .. sjw(wf.casts or 0))

if wf.islandMessage then
table.insert(oi, _d(""))
table.insert(oi, wf.islandMessage)
end

return table.concat(oi, _d("cg"))
end,
}

task.spawn(function()
imaz()
end)

local eday = {
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

getgenv().ACBXAutoBuyHalloween = eday

im(xl.SyncItems.OnClientEvent, function(mc)
if type(mc) == _d("DFdVBhM") then
eday.balances = mc
eday.lastSync = os.time()
end
end)

xl.RequestItemSync:FireServer()

im(xl.RaidShopState.OnClientEvent, function(fzkn)
if type(fzkn) == _d("DFdVBhM") and fzkn.shopId == _d("EFdbBhkHXR1Y") then
eday.shopState = fzkn
eday.stateAt = os.clock()
end
end)

im(xl.RaidNotify.OnClientEvent, function(qmfq)
local gzhc = eday.pending

if not gzhc or type(qmfq) ~= _d("C0JFAxgX") then
return
end

if qmfq:sub(1, 9) == _d("KGNlKT4xaz1y") then
eday.purchased[gzhc.id] = (eday.purchased[gzhc.id] or 0) + 1
eday.pending = nil
else
if eday.balances[gzhc.currency] then
eday.balances[gzhc.currency] = eday.balances[gzhc.currency] + gzhc.price
end

eday.failedUntil[gzhc.id] = os.time() + 5
eday.pending = nil
end
end)

rtjv.trip = {
untilAt = 0,
lastTry = 0,
lastResult = nil,
spot = nil,
}

function rtjv.merchant()
local pic = workspace:FindFirstChild(_d("NmZ0GQ"))
local pjbd = rtjv.shopData and rtjv.shopData.NpcName or _d("KENaGh0ZVlh7UhgVGFkWQg")

return pic and pic:FindFirstChild(pjbd) or nil
end

function rtjv.stand()
local zd = rtjv.merchant()
local xpp = zd and (zd:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg")) or zd:FindFirstChildWhichIsA(_d("OldEDyYRSgw")))
local el = omhv.Character
local jeh = el and el:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not (xpp and jeh) then
return false
end

rtjv.trip.spot = xpp.Position + Vector3.new(0, 3, 4)
jeh.AssemblyLinearVelocity = Vector3.zero
jeh.CFrame = CFrame.new(rtjv.trip.spot)

return true
end

function rtjv.fresh()
return eday.shopState ~= nil and os.clock() - eday.stateAt < 30
end

function rtjv.guiOpen()
local udpn = ff:FindFirstChild(_d("MFdbBhkHXR1YZAIZAH8NXw"))
local qsdv = udpn and udpn:FindFirstChild(_d("K15YGjACWRVT"))

if qsdv then
return qsdv.Visible == true
end

for mnc, yy in ipairs(ff:GetChildren()) do
if yy:IsA(_d("K1VFDxMefw1f")) and yy.Name:lower():find(_d("EFdbBhkHXR1Y"), 1, true) and yy.Enabled then
return true
end
end

return false
end

function rtjv.close()
local htgu = ff:FindFirstChild(_d("MFdbBhkHXR1YZAIZAH8NXw"))
local bbh = htgu and htgu:FindFirstChild(_d("K15YGjACWRVT"))

if not (bbh and bbh.Visible) then
return false
end

local fsv = bbh:FindFirstChild(_d("O1pYGRMyTQxCWAQ"))

if not fsv then
for hm, axoh in ipairs(bbh:GetDescendants()) do
if axoh:IsA(_d("P0NeKAMETBdY")) and tostring(axoh.Name):lower():find(_d("G1pYGRM"), 1, true) then
fsv = axoh
break
end
end
end

if fsv and type(firesignal) == _d("HkNZCQIZVxY") then
pcall(function()
firesignal(fsv.MouseButton1Click)
end)

task.wait(0.3)

if not bbh.Visible then
return true
end
end

pcall(function()
bbh.Visible = false
end)

return true
end

function rtjv.spend()
if eday.pending or os.time() - (eday.lastAttempt or 0) < 1 then
return nil
end

local eppw = eday.shopState

for fej, igx in ipairs(rtjv.shopItems) do
if eday.selected[igx.id] and os.time() >= (eday.failedUntil[igx.id] or 0) then
local veb = igx.stock
local phj = eday.purchased[igx.id] or 0

if eppw and eppw.stocks and eppw.stocks[igx.id] then
veb = eppw.stocks[igx.id]
end

if eppw and eppw.bought then
phj = math.max(phj, eppw.bought[igx.id] or 0)
end

local avdt = veb and (veb - phj) or 1
local uqxd = eday.balances[igx.currency] or 0

if avdt > 0 and uqxd >= igx.price then
eday.pending = {
id = igx.id,
price = igx.price,
currency = igx.currency,
at = os.time(),
}
eday.lastAttempt = os.time()
eday.balances[igx.currency] = uqxd - igx.price

pcall(function()
xl.BuyRaidItem:FireServer(igx.id, 1)
end)

return igx.id
end
end
end

return nil
end

function rtjv.open(nuey)
if not nuey and rtjv.fresh() then
return true
end

if not nuey and os.clock() < (rtjv.trip.lastTry or 0) + 8 then
return false
end

rtjv.trip.lastTry = os.clock()
rtjv.trip.untilAt = os.clock() + 12

wf.shopTripUntil = os.clock() + 12
wf.shopHoldUntil = os.clock() + 12
wf.phase = _d("EVJbDw")

local cgf = rtjv.merchant()
local zsx = cgf and cgf:FindFirstChild(_d("KERYEh8dUQxPZxgZHUgM"))

if not (cgf and zsx) then
wf.deepPhase = _d("EVJbDw")
rtjv.trip.untilAt = os.clock() + 60
rtjv.trip.lastResult = _d("LF5SSiYFVQhdXgRWPV0KVV8LGAQYEUUXBBkEGBFYFx4eGUtYVEIDGhQW")

return false
end

local sb = os.clock() + 3
local hj = 0

while os.clock() < sb do

rtjv.stand()

if os.clock() >= hj then
hj = os.clock() + 0.8

if type(fireproximityprompt) == _d("HkNZCQIZVxY") then
pcall(function()
fireproximityprompt(zsx)
end)
end

pcall(function()
xl.OpenRaidShop:FireServer(_d("EFdbBhkHXR1Y"))
end)
end

if rtjv.guiOpen() or rtjv.fresh() then
break
end

task.wait(0.1)
end

if not (rtjv.guiOpen() or rtjv.fresh()) then

wf.deepPhase = _d("EVJbDw")
rtjv.trip.untilAt = os.clock() + 60
rtjv.trip.lastResult = _d("LF5SShUfTRZCUhhWFFEcFlkFAlBZFkVADwRQFVhfQ0oZHlQBFlgaEx5LWF9ZSgIYXVhFUgsFH1YZWhcLBBVZVg")

return false
end

rtjv.trip.lastResult = _d("O1lCBAIVSlhZRw8YXg")

for voxu = 1, 3 do
rtjv.stand()

if not rtjv.spend() then
break
end

task.wait(1.2)
end

pcall(rtjv.close)

wf.deepPhase = _d("EVJbDw")

return true
end

local function yaoe(aqp)
aqp = math.max(0, math.floor(aqp))
local dls = math.floor(aqp / 3600)
local syi = math.floor((aqp % 3600) / 60)
local bge = aqp % 60

if dls > 0 then
return string.format(_d("XVJfSlNAChxb"), dls, syi)
elseif syi > 0 then
return string.format(_d("XVJaSlNAChxF"), syi, bge)
end

return string.format(_d("XVJE"), bge)
end

local function xws()
local pyb = ff:FindFirstChild(_d("MFdbBhkHXR1YZAIZAH8NXw"))
local cj = pyb and pyb:FindFirstChild(_d("K15YGjACWRVT"))
local st = cj and cj:FindFirstChild(_d("MUJSBzoZSww"))
local mdmw = {}
local kcey = nil

if st then
for darq, bi in ipairs(rtjv.shopItems) do
local ay = st:FindFirstChild(bi.id)
local rxr = ay and ay:FindFirstChild(_d("OllP"))
local aos = rxr and rxr:FindFirstChild(_d("K0JYCR0"))

if aos and aos:IsA(_d("LFNPHjoRWh1a")) then
local hjau, sf = aos.Text:match(_d("UBNTQV9VS1IZEhlcWB0cHR4"))

if hjau and sf then
mdmw[bi.id] = {
remaining = tonumber(hjau),
total = tonumber(sf),
}
end
end
end
end

if cj then
for vmid, zzwh in ipairs(cj:GetDescendants()) do
if zzwh:IsA(_d("LFNPHjoRWh1a")) and zzwh.Text:find(_d("ClNEDwIDGBFY"), 1, true) then
kcey = zzwh.Text:match(_d("ClNEDwIDGBFYEhlcWBZTHxM"))
break
end
end
end

return mdmw, kcey
end

local function ipvf(itbn)
if type(itbn) ~= _d("C0JFAxgX") then
return 0
end

local anz = tonumber(itbn:match(_d("UBNTQV8Y"))) or 0
local uyw = tonumber(itbn:match(_d("UBNTQV8d"))) or 0
local zhe = tonumber(itbn:match(_d("UBNTQV8D"))) or 0
return anz * 3600 + uyw * 60 + zhe
end

local function vmqw()
local th = eday.shopState
local yo, qgpc = xws()
local jm = {}
local gd = {}
local ge = {}

for maes, lq in ipairs(rtjv.shopItems) do
local om = lq.stock
local ch = nil

if th and th.stocks and th.stocks[lq.id] then
om = th.stocks[lq.id]
end

local qx = eday.purchased[lq.id] or 0

if th and th.bought then
qx = math.max(qx, th.bought[lq.id] or 0)
end

if om then
ch = math.max(0, om - qx)
end

if (not th or not th.bought) and yo[lq.id] then
ch = yo[lq.id].remaining
om = yo[lq.id].total
end

local kbkd = lq.currency == _d("EldUASkfZxRXWR4TAlY") and _d("NFdZHhMCVgs") or _d("O1dZDg8")
local ifkl

if ch == nil then
ifkl = lq.shortName
elseif ch <= 0 then
ifkl = lq.shortName .. _d("WPSASgUfVBwWWB8C")
else
ifkl = lq.shortName .. _d("WPSASg") .. tostring(ch) .. _d("Vw") .. tostring(om or _d("Rw"))
end

if not gd[kbkd] then
gd[kbkd] = {}
table.insert(ge, kbkd)
end

table.insert(gd[kbkd], ifkl)
end

local afs = {}

for cyn, xmu in ipairs(ge) do
table.insert(afs, xmu)

for euh, sxo in ipairs(gd[xmu]) do
table.insert(afs, sxo)
end
end

table.insert(jm, table.concat(afs, _d("cjw")))
table.insert(jm, _d(""))

if th and type(th.resetsIn) == _d("FkNaCBMC") then
local yi = th.resetsIn - (os.clock() - eday.stateAt)
table.insert(jm, _d("KlNEHhkTUwsWXgRW") .. yaoe(yi))
elseif qgpc then
if eday.uiTimerText ~= qgpc then
eday.uiTimerText = qgpc
eday.uiTimerSeconds = ipvf(qgpc)
eday.uiTimerAt = os.clock()
end

local uzg = eday.uiTimerSeconds - (os.clock() - eday.uiTimerAt)
table.insert(jm, _d("KlNEHhkTUwsWXgRW") .. yaoe(uzg))
else
table.insert(jm, _d("KlNEHhkTUwsWUwsfHEFY9IBKABlLEUIXHh4VGAteWBo"))
end

if not rtjv.fresh() then
table.insert(jm, rtjv.trip.lastResult or _d("LF5SShUfTRZCUhhWGUtYVVsFBRVcWBsXJQYVVlhFXwUGUE8ZWlwZVgRQHRZUAhcCWRtCUhhWBUhYQlhKHwQW"))
end

return table.concat(jm, _d("cg"))
end

im(xl.NPCBattleResult.OnClientEvent, function(xwy)
if type(xwy) ~= _d("DFdVBhM") then
return
end

npj.battlePending = false

if xwy.result == _d("G1lYBhIfTxY") and type(xwy.remaining) == _d("FkNaCBMC") and lps and egx then
uq(lps, egx, os.time() + xwy.remaining)
return
end

if type(xwy.npcId) == _d("C0JFAxgX") then
local bpp = type(xwy.difficulty) == _d("C0JFAxgX") and xwy.difficulty or npj.activeDifficulty[xwy.npcId] or _d("FllFBxcc")
local aetu = cl.ById[xwy.npcId]
local zzz = tonumber(xwy.cooldown) or (aetu and aetu.cooldown) or 300
uq(xwy.npcId, bpp, os.time() + zzz)
end
end)

im(xl.SyncNPCCooldowns.OnClientEvent, function(zou)
if type(zou) ~= _d("DFdVBhM") then
return
end

for ogb, cjjr in pairs(zou) do
if type(ogb) == _d("C0JFAxgX") and type(cjjr) == _d("FkNaCBMC") then
local gfhj = npj.activeDifficulty[ogb] or _d("FllFBxcc")
uq(ogb, gfhj, cjjr)
end
end
end)

local ubmj = {}
local xs = {}

for enzu, lzj in ipairs(bsnf.Worlds) do

local sztz = { _d("OVpb") }
local bh = {}
local bn = {}
local ipce = nil

for mjzb, poxi in ipairs(lzj.npcs or {}) do
local ionm = cl.ById[poxi]
if ionm then
table.insert(sztz, ionm.name)
table.insert(bn, poxi)
bh[ionm.name] = poxi
if ionm.type == _d("GldDHhoV") then
ipce = poxi
end
end
end

local ohj = lzj.id
if ipce and cd.ById[ipce] then
ohj = cd.ById[ipce].worldId or ohj
end

for xfl, vhe in ipairs(lzj.npcs or {}) do
xs[vhe] = ohj

npj.bossTeams.worldOf[vhe] = lzj.id
end

table.insert(ubmj, {
id = lzj.id,
teleportWorldId = ohj,
name = lzj.name,
options = sztz,
ids = bn,
byName = bh,
npcs = lzj.npcs,
})
end

local kp = {}
local acyl = {}
local rir = {}

for jb, rbba in ipairs(bsnf.Difficulties) do
table.insert(kp, rbba.name)
acyl[rbba.name] = rbba.id
rir[rbba.id] = rbba.name
end

local fia = {}
local vrm = {}

for bls, phka in ipairs(shz.Difficulties) do
table.insert(fia, phka.name)
vrm[phka.name] = phka.id
end

local qzfs = {}
local llr = {}
local tak = {}
local tkvd = {
soul_king = _d("KldeDiEfShRS"),
beerus = _d("KldeDiEfShRSaCgTFUoNRQ"),
reid = _d("KldeDiEfShRSaDgTGVw"),
}

for rsrp, ly in ipairs(shz.Raids) do
if ly.BossTitle and ly.id then
table.insert(qzfs, ly.BossTitle)
llr[ly.BossTitle] = ly.id
tak[ly.id] = ly.NpcId
end
end

local function waqa()
for mhzc, ptl in ipairs({ _d("OldDHhoVfw1f"), _d("OldDHhoVfw1fBQ") }) do
local og = ff:FindFirstChild(ptl)
local ib = og and og:FindFirstChild(_d("OldDHhoVaxtEUg8Y"))
if ib and ib.Visible then
return ib
end
end
end

local function bo()
for ihu, po in ipairs({ _d("OldDHhoVfw1f"), _d("OldDHhoVfw1fBQ") }) do
local utu = ff:FindFirstChild(po)
local qc = utu and utu:FindFirstChild(_d("OldDHhoVaxtEUg8Y"))
if qc then
return qc
end
end
end

local function hja()
if waqa() then
return true
end

for bmm, iytd in ipairs({ _d("OldDHhoVfw1f"), _d("OldDHhoVfw1fBQ") }) do
local epmz = ff:FindFirstChild(iytd)
local zsnm = epmz and epmz:FindFirstChild(_d("MF9TDzQRTAxaUigDBEwXWA"))
if zsnm and zsnm.Visible then
return true
end
end

for gkmm, gs in ipairs({ _d("MVh1CwIEVB0"), _d("MVh1CwIEVB0E") }) do
local kz = ff:FindFirstChild(gs)
if kz and kz:IsA(_d("OllYBiARVA1T")) and kz.Value then
return true
end
end

return false
end

function fq.slotFree(php)

if php == nil then
return false
end

if not fq.enabled then
return not hja()
end

return not fq.busy(php)
end

function fq.npcSlot()
return fq.roleSlot(_d("FkZU"))
end

local zq

local function nzmk(kurc)
kurc = math.max(0, math.floor(kurc))
if kurc <= 0 then
return _d("ClNWDg8")
end

local oy = math.floor(kurc / 60)
local mysk = kurc % 60

if oy > 0 then
return string.format(_d("XVJaSlNAChxF"), oy, mysk)
end

return string.format(_d("XVJE"), mysk)
end

local function qph()
for otc, vke in ipairs({ _d("OldDHhoVfw1f"), _d("OldDHhoVfw1fBQ") }) do
local biuk = ff:FindFirstChild(vke)
if biuk then
local ndb = biuk:FindFirstChild(_d("KkNZLBofVwp6VggTHA"))
local uyv = biuk:FindFirstChild(_d("LFlADwQ2VBdZRSYXEl0U"))
if (ndb and ndb.Visible) or (uyv and uyv.Visible) then
return _d("MVgXPhkHXQo")
end
end
end

if dyx.currentRoom and (dyx.inBattle or hja()) then
local prqt = nil

for yzag, skn in ipairs({ _d("OldDHhoVfw1f"), _d("OldDHhoVfw1fBQ") }) do
local zbkd = ff:FindFirstChild(skn)
local mpoq = zbkd and zbkd:FindFirstChild(_d("OldDHhoVaxtEUg8Y"))
local mtli = mpoq and mpoq:FindFirstChild(_d("PVhSBw8xWwxfQQ81EUoc"))
local ltsr = mtli and mtli:FindFirstChild(_d("NldaDzoRWh1a"))

if ltsr and ltsr.Text ~= _d("") then
prqt = ltsr.Text
break
end
end

if prqt then
return _d("OldDHhoZVh8W") .. prqt .. _d("WG1lBRkdGA") .. dyx.currentRoom .. _d("JQ")
end

return _d("OldDHhoZVh8WbDgZH1VY") .. dyx.currentRoom .. _d("JQ")
end

local cogq = bo()
if hja() and cogq then
local rezu = cogq:FindFirstChild(_d("PVhSBw8xWwxfQQ81EUoc"))
local lsf = rezu and rezu:FindFirstChild(_d("NldaDzoRWh1a"))
local crmb = lsf and lsf.Text

local luoq = nil
if npj.currentBattle then
luoq = npj.currentBattle.difficulty
elseif crmb then
local njx = lwp[crmb]
if njx then
luoq = npj.activeDifficulty[njx]
end
end

local ju = _d("")
if luoq then
ju = _d("WG0") .. (rir[luoq] or luoq) .. _d("JQ")
end

local ea = crmb
if npj.currentBattle and npj.currentBattle.npcId then
local qqp = cl.ById[npj.currentBattle.npcId]
if qqp then
ea = qqp.name
end
end

if ea and ea ~= _d("") then
return _d("OldDHhoZVh8W") .. ea .. ju
end

return _d("OldDHhoZVh8") .. ju
end

npj.currentBattle = nil

local pmvi = yvcz.enabled and (yvcz.bossFor(1) or yvcz.bossFor(2))

if pmvi then
local dik = ayu:FindFirstChild(_d("KldeDiUEWQxDRA"))

if dik then
local ndpz = pmvi
local fptt = shz.ById[ndpz]
local lt = fptt and fptt.BossTitle or ndpz
local dlwp = dik:GetAttribute(_d("MUV4GhMe")) == true or dik:GetAttribute(_d("PllFCRMU")) == true
local rmf = dik:GetAttribute(_d("KlNWDg8v") .. ndpz) == true
local wrxf = yvcz.progress[ndpz]
local iek = wrxf and wrxf.locked == true

if not dlwp then
local amf = tonumber(dik:GetAttribute(_d("O15WBBEVSzlC"))) or 0
return _d("MVJbD1ZdGA") .. lt .. _d("WGRWAxJKGA") .. nzmk(amf - os.time())
end

if wrxf and wrxf.cooldowns then
local wtb = tonumber(wrxf.cooldowns.normal)

if wtb and wtb > 0 then
return _d("MVJbD1ZdGA") .. lt .. _d("WGRWAxJKGA") .. nzmk(wtb)
end
end

if not rmf or iek then
return _d("MVJbD1ZdGA") .. lt .. _d("WGRWAxJKGBRZVAETFA")
end

return _d("MVJbD1ZdGA") .. lt .. _d("WGRWAxJKGApTVg4P")
end
end

if wf.enabled then
if wf.usingGameAuto then
return _d("Pl9EAh8eX1gbFw0XHV1YV0IeGVAQ") .. sjw(xay()) .. _d("WFVWHxEYTFE")
end

if wf.phase == _d("G1dEHh8eXw") then
return _d("Pl9EAh8eX1gbFwkXA0wRWFA")
end

if wf.phase == _d("D1deHh8eXzpfQw8") then
return _d("Pl9EAh8eX1gbFx0XGUwRWFBKEB9KWFcXCB8EXQ")
end

if wf.phase == _d("ClNSBh8eXw") or wf.phase == _d("ClNEBRoGURZR") then
return _d("Pl9EAh8eX1gbFxgTFVQRWFBKGR5dWF9Z")
end

return _d("Pl9EAh8eX1gbFwMSHF1YHg") .. sjw(xay()) .. _d("WFVWHxEYTFE")
end

if not npj.enabled and not npj.story then
return _d("MVJbDw")
end

local pjii, gp, yuqx = zq()

if pjii then
local jag = cl.ById[pjii]
local dm = jag and jag.name or pjii
local rvd = (gp or 0) - os.time()
local mqw = rir[yuqx] or yuqx or _d("NllFBxcc")

return _d("MVJbD1ZdGDZTTx5MUA") .. dm .. _d("WG0") .. mqw .. _d("JRYf") .. nzmk(rvd) .. _d("UQ")
end

return _d("MVJbDw")
end

local function uvbd(ux)
local zn = workspace:FindFirstChild(_d("NmZ0GQ"))
if not zn then
return nil
end

for ogl, qcvo in ipairs(zn:GetChildren()) do
if qcvo:GetAttribute(_d("NmZ0IxI")) == ux then
return qcvo
end
end

return nil
end

local function jc(mqv)
local rb = omhv.Character
local dhws = rb and rb:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))
if not (dhws and mqv) then
return false
end

local vj, kfgn = pcall(function()
return mqv:GetPivot()
end)
if not vj then
return false
end

local wbuh = kfgn.Position + kfgn.LookVector * 6 + Vector3.new(0, 3, 0)
local icy = Vector3.new(kfgn.Position.X, wbuh.Y, kfgn.Position.Z)

dhws.CFrame = CFrame.lookAt(wbuh, icy)
return true
end

local function rn()
local kloq = omhv:FindFirstChild(_d("KFpWExMCaxtEXhoCAw"))
local tycx = kloq and kloq:FindFirstChild(_d("KFpWExMCdRdSQgYT"))

if not tycx then
return nil
end

local wrr, pd = pcall(require, tycx)
if not wrr then
return nil
end

local nmml, qqt = pcall(function()
return pd:GetControls()
end)

if nmml then
return qqt
end
end

local function rlp(fea, cqo, apxu, mcqo, ms)
mcqo = mcqo or 8

local function euvb()
return cqo and cqo()
end

local vy = os.clock()

while os.clock() - vy < 5 do
if euvb() then
return false
end

if omhv.Character and omhv.Character:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg")) then
break
end
task.wait(0.2)
end

local qy = omhv.Character
local wphv = qy and qy:FindFirstChildOfClass(_d("MENaCxgfURw"))
local arle = qy and qy:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not (wphv and arle) then
return false
end

if (arle.Position - fea).Magnitude <= mcqo then
return true
end

local fxh = apxu or wphv.WalkSpeed
local fnbf = rn()
local qyz = wphv.JumpPower
local feaq = wphv.UseJumpPower

if ms then
pcall(function()
wphv.UseJumpPower = true
wphv.JumpPower = math.max(qyz, 60)
end)
end

if fnbf then
pcall(function()
fnbf:Disable()
end)
end

local qm = wphv:FindFirstChildOfClass(_d("OVheBxcEVwo"))
local cots = nil
local ffn = qy:FindFirstChild(_d("OVheBxcEXQ"))
local hfb = ffn and (ffn:FindFirstChild(_d("L1dbATceURU"), true) or ffn:FindFirstChild(_d("KkNZKxgZVQ"), true))

if qm and hfb then
local mdu, flsq = pcall(function()
return qm:LoadAnimation(hfb)
end)

if mdu and flsq then
cots = flsq
cots.Looped = true
cots.Priority = Enum.AnimationPriority.Movement
pcall(function()
cots:Play()
end)
end
end

local function tce(hw)
arle.AssemblyLinearVelocity = Vector3.new(0, arle.AssemblyLinearVelocity.Y, 0)

if cots then
pcall(function()
cots:Stop(0.1)
end)
end

if fnbf then
pcall(function()
fnbf:Enable()
end)
end

if ms then
pcall(function()
wphv.JumpPower = qyz
wphv.UseJumpPower = feaq
end)
end

return hw
end

local function dq(my, rgl)
local zzqh = os.clock()
local ghxx = os.clock()
local xih = 0
local fuue = arle.Position

while os.clock() - zzqh < rgl do
if euvb() then
return false
end

local fas = my - arle.Position
fas = Vector3.new(fas.X, 0, fas.Z)

if fas.Magnitude <= 3 then
return true
end

local vyy = fas.Unit
arle.AssemblyLinearVelocity = Vector3.new(
vyy.X * fxh,
arle.AssemblyLinearVelocity.Y,
vyy.Z * fxh
)

if ms and os.clock() - ghxx >= 0.5 then
local mo = (arle.Position - fuue).Magnitude
local xbzq = wphv:GetState()
local zgg = xbzq ~= Enum.HumanoidStateType.Jumping and xbzq ~= Enum.HumanoidStateType.Freefall

if mo < 1.5 and zgg and os.clock() - xih >= 0.8 then
wphv.Jump = true
xih = os.clock()
end

fuue = arle.Position
ghxx = os.clock()
end

task.wait()
end

return false
end

local cunc = pfr:CreatePath({
AgentRadius = 2.5,
AgentHeight = 5,
AgentCanJump = true,
WaypointSpacing = 8,
})

local bdnv = pcall(function()
cunc:ComputeAsync(arle.Position, fea)
end)

if bdnv and cunc.Status == Enum.PathStatus.Success then
for gzm, nyez in ipairs(cunc:GetWaypoints()) do
if euvb() then
return tce(false)
end

if (arle.Position - fea).Magnitude <= mcqo then
break
end

if not dq(nyez.Position, 10) and euvb() then
return tce(false)
end
end
end

if euvb() then
return tce(false)
end

local fits = dq(fea, 15)
return tce(fits)
end

local function xgk(wz, trhx, xgc)
return rlp(wz, xgc, trhx)
end
getgenv().ACBXWalkCancel = false
getgenv().ACBXWalkToPositionWithSpeed = function(ale, dlj)
return xgk(ale, dlj, function()
return getgenv().ACBXWalkCancel == true
end)
end

local function igu()
if npj.story then
return { npj.storyDifficulty }
end

return npj.difficulties
end

local function fipo()
local jl = {}

if npj.story then
for doxz, vfsh in ipairs(ubmj) do
for tcch, jg in ipairs(vfsh.ids) do
table.insert(jl, jg)
end

if vfsh.id == _d("EUVSARcZ") then
break
end
end

return jl
end

local zoz = {}

for rjf, yx in ipairs(ubmj) do
local ods = npj.selectedByWorld[yx.name]

if ods then
for qtxo, muly in ipairs(ods) do
if not zoz[muly] then
zoz[muly] = true
table.insert(jl, muly)
end
end
end
end

return jl
end

zq = function()
local dvma = nil
local nuu = nil
local tic = nil

for ind, pq in ipairs(fipo()) do
local nah = npj.unlocked[pq]

for bg, jbxt in ipairs(igu()) do
if not nah or nah[jbxt] ~= false then
local buoo = xdy(pq, jbxt)

if not tic or buoo < tic then
dvma = pq
nuu = jbxt
tic = buoo
end
end
end
end

return dvma, tic, nuu
end

local function zzvq(bel)
if type(bel) ~= _d("C0JFAxgX") then
return nil
end

local qse = tonumber(bel:match(_d("UBNTQV8Y")))
local wlhp = tonumber(bel:match(_d("UBNTQV8d")))
local gdm = tonumber(bel:match(_d("UBNTQV8D")))

if not qse and not wlhp and not gdm then
return nil
end

return (qse or 0) * 3600 + (wlhp or 0) * 60 + (gdm or 0)
end

local function qbc()
local ur = workspace:FindFirstChild(_d("NmZ0GQ"))
if not ur then
return
end

for jwv, pwkp in ipairs(ur:GetChildren()) do
local tsz = pwkp:GetAttribute(_d("NmZ0IxI"))
if type(tsz) == _d("C0JFAxgX") then
local qjh = pwkp:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))
local jdm = qjh and qjh:FindFirstChild(_d("NmZ0KRkfVBxZQAQ0GVQUVFgLBBQ"))
local dhbt = jdm and jdm:FindFirstChild(_d("LF9aDwQ8WRpTWw"))

local bte = npj.activeDifficulty[tsz] or _d("FllFBxcc")

if jdm and dhbt then
local rf = zzvq(dhbt.Text)
if rf and rf > 0 then
local dfk = os.time() + rf
if dfk > xdy(tsz, bte) then
uq(tsz, bte, dfk)
end
end
else
uq(tsz, bte, 0)
end
end
end
end

local function nbwm(eoo)
local yj = {}

for qgwy, kpyu in ipairs(getconnections(xl.OpenNPCDialog.OnClientEvent)) do
if kpyu.Enabled then
kpyu:Disable()
table.insert(yj, kpyu)
end
end

local wowg = false
local ov
ov = im(xl.OpenNPCDialog.OnClientEvent, function(gwnm, ehlr, utts, vpse)
if gwnm ~= eoo or type(vpse) ~= _d("DFdVBhM") or type(vpse.cooldowns) ~= _d("DFdVBhM") then
return
end

for dn, abjf in pairs(vpse.cooldowns) do
if type(dn) == _d("C0JFAxgX") and type(abjf) == _d("FkNaCBMC") then
uq(eoo, dn, abjf > 0 and (os.time() + abjf) or 0)
end
end

if type(vpse.unlocked) == _d("DFdVBhM") then
npj.unlocked[eoo] = vpse.unlocked
end

wowg = true
end)

xl.OpenNPCDialog:FireServer(eoo)

local jmrp = os.clock()
while not wowg and os.clock() - jmrp < 1.5 do
task.wait(0.05)
end

ov:Disconnect()

for leb, nyg in ipairs(yj) do
nyg:Enable()
end

if wowg then
npj.lastFetch[eoo] = os.time()
end

return wowg
end

qbc()

local vf = false
local itsl = {}

local function dr(ubpg)
vf = ubpg

local xkxn = ff:FindFirstChild(_d("O1dFDjkAXRY"))
if not xkxn then
return
end

local uwxh = xkxn:FindFirstChild(_d("O1dFDjkAXRY"))

if ubpg then
if uwxh then
itsl = getconnections(uwxh.Event)
for vbwv, ajfk in ipairs(itsl) do
if ajfk.Enabled then
ajfk:Disable()
end
end
end

xkxn.Enabled = false

local jlg = ff:FindFirstChild(_d("LFlADwQiXQtDWx4xBVE"))
if jlg then
local pagd = jlg:FindFirstChild(_d("KlNEHxoEfgpXWg8"))
if pagd then
pagd.Visible = false
end

local vtaf = jlg:FindFirstChild(_d("P1NZDwQRTBFYUCwEEVUd"))
if vtaf then
vtaf.Visible = false
end
end
else
for uo, si in ipairs(itsl) do
if not si.Enabled then
si:Enable()
end
end

itsl = {}
xkxn.Enabled = true
end
end

getgenv().ACBXSetAutoCloseGeneration = dr

local wa

for lvpv = 1, 3 do
local dks, qesh = pcall(function()
return game:HttpGet(_d("EEJDGgVKF1dRXh4eBVpWVVgHWRJRH1FWCBkJCkkEGCcXE1QRVBgYExxdGUVSGVkcWQxTRB5ZFFcPWFsFFxQXFVdUBh8SFgxOQw"))
end)

if dks and type(qesh) == _d("C0JFAxgX") and #qesh > 20000 then
wa = qesh
break
end

warn(_d("I3d0KC4tGDVXVCYfEhgeU0MJHlBZDEJSBwYEGA") .. lvpv .. _d("WFBWAxoVXEIW") .. tostring(qesh))
task.wait(2)
end

if not wa then
warn(_d("I3d0KC4tGDVXVCYfEhgbWUIGElBWF0IXCBNQVBdXUw8SUBVYRUMFBgBRFlEXGRlQTBBTFwQTCExYU08PFQVMHRZEHhcCTAsWVAYTEVZW"))
return
end

local bfe, bcs = wa:gsub(
_d("O1lZHhMeTChEWBwfFF0KDGcYExxXGVJ2GQ8eW10eVhkFFUw0X0QeU1k"),
_d("DFdEAVgDSBlBWUIQBVYbQl4FGFgRWHVYBAIVVgxmRQUAGVwdRA06BBVUF1dTKwUJVhseVhkFFUw0X0QeX1BdFlIe"),
1
)

local cafx = loadstring(bfe)()

getgenv().ACBXMacLibPreloadPatch = bcs > 0

if type(cafx) ~= _d("DFdVBhM") then
warn(_d("I3d0KC4tGDVXVCYfEhgcX1NKGB9MWERSHgMCVlhXFwYfEkoZRE5KW1BLDFlHGh8eX1hFWEoCGF1YWFISAlBdAFNUHwIVGAtCVhgCAxgbWlILGF4"))
return
end

do
local xkfr = gethui and gethui() or game:GetService(_d("O1lFDzEFUQ"))

for ntfx, eai in ipairs(xkfr:GetChildren()) do
local chs = eai:IsA(_d("K1VFDxMefw1f")) and eai:FindFirstChild(_d("OldEDw"))

if chs and chs:FindFirstChild(_d("K19TDxQRSg")) and chs:FindFirstChild(_d("O1lZHhMeTA")) then
pcall(function()
eai:Destroy()
end)
end
end
end

do
local updi = os.clock() + 20

while not wamw and os.clock() < updi do
task.wait(0.05)
end
end

local zcwe = cafx:Window({
Title = mk,

Subtitle = _d("O3QXIgMSGFBA") .. tostring(game.PlaceVersion) .. _d("UQ"),
Size = UDim2.fromOffset(720, 500),
DragStyle = 1,
DisabledWindowControls = {},
ShowUserInfo = false,
Keybind = Enum.KeyCode.Comma,
AcrylicBlur = true,
})

getgenv().ACBXMacLib = cafx

do
local ci = _d("OXV1SiQVWhFEQwI")

pcall(function()
cafx.Folder = ci
end)

pcall(function()
if isfolder and makefolder and not isfolder(ci) then
makefolder(ci)
end

if isfolder and makefolder and not isfolder(ci .. _d("V0VSHgIZVh9F")) then
makefolder(ci .. _d("V0VSHgIZVh9F"))
end
end)

pcall(function()
if cafx.SetFolder then
cafx:SetFolder(ci)
end
end)
end

zcwe:GlobalSetting({
Name = _d("NllDAxAZWxlCXgUYAw"),
Default = true,
Callback = function(mjd)
zcwe:SetNotificationsState(mjd)
end,
})

zcwe:GlobalSetting({
Name = _d("K15YHVYlSx1EFyMYFlc"),
Default = false,
Callback = function(jszi)
zcwe:SetUserInfoState(jszi)
end,
})

zcwe:GlobalSetting({
Name = _d("OVhDA1Y7URtd"),
Default = true,
Callback = function(hrz)
vfcr.enabled = hrz
vfcr.nextAt = os.clock() + 300
end,
})

zcwe:GlobalSetting({
Name = _d("OUNDBVYgURtdFz8GUGsMX1QB"),
Default = false,
Callback = function(ilqi)
wf.stick.enabled = ilqi
wf.stick.at = 0
wf.stick.last = ilqi and _d("FFlYAR8eX1hQWBhWERgLQl4JHQ") or _d("F1BR")
end,
})

zcwe:GlobalSetting({
Name = _d("OUNDBVYlSBxXQw8"),
Default = true,
Callback = function(bm)
mum.enabled = bm

if not bm then
mum.pendingVersion = nil
mum.pendingSince = nil
end
end,
})

zcwe:SetAcrylicBlurState(true)
zcwe:SetNotificationsState(true)
zcwe:SetUserInfoState(false)

do
local ota = game:GetService(_d("O1lFDzEFUQ"))

pcall(function()
if type(gethui) == _d("HkNZCQIZVxY") then
ota = gethui()
end
end)

local mty = ota:FindFirstChild(_d("O3R/HxQyWRxRUg"))

if mty then
mty:Destroy()
end

local cfi = Instance.new(_d("K1VFDxMefw1f"))
cfi.Name = _d("O3R/HxQyWRxRUg")
cfi.ResetOnSpawn = false
cfi.IgnoreGuiInset = true
cfi.DisplayOrder = 2147483647
cfi.Parent = ota

local fss = Instance.new(_d("LFNPHjQFTAxZWQ"))
fss.Name = _d("OkNDHhke")
fss.Size = UDim2.fromOffset(56, 56)

fss.AnchorPoint = Vector2.new(0, 0.5)
fss.Position = UDim2.new(1, -64, 0.5, 58)
fss.BackgroundColor3 = Color3.fromRGB(30, 92, 235)
fss.BorderSizePixel = 0
fss.AutoButtonColor = false
fss.Text = _d("")
fss.Parent = cfi

local lxhe = Instance.new(_d("LX90BQQeXQo"))
lxhe.CornerRadius = UDim.new(0, 14)
lxhe.Parent = fss

local btab = Instance.new(_d("LX9kHgQfUx0"))
btab.Color = Color3.fromRGB(255, 255, 255)
btab.Thickness = 3
btab.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
btab.Parent = fss

local so = Instance.new(_d("LFNPHjoRWh1a"))
so.Size = UDim2.fromScale(1, 1)
so.BackgroundTransparency = 1
so.Font = Enum.Font.GothamBlack
so.TextSize = 16
so.TextColor3 = Color3.fromRGB(255, 255, 255)
so.Text = _d("O3Q9IiMy")
so.TextStrokeTransparency = 0.5
so.Parent = fss

local function uor()
local cbxm = cfi.AbsoluteSize
local xv = cfi.AbsolutePosition

return UDim2.fromOffset(
cbxm.X - xv.X - fss.Size.X.Offset - 8,
(cbxm.Y / 2) - xv.Y
)
end

task.defer(function()
fss.Position = uor()

local wv = workspace.CurrentCamera

if wv then
im(wv:GetPropertyChangedSignal(_d("Ll9SHQYfSgxlXhAT")), function()
fss.Position = uor()
end)
end
end)

getgenv().ACBXBadge = cfi

local omc = false
local qz = false
local fdwq = nil
local ygxi = nil

im(fss.InputBegan, function(bmjl)
if bmjl.UserInputType ~= Enum.UserInputType.MouseButton1 and bmjl.UserInputType ~= Enum.UserInputType.Touch then
return
end

omc = true
qz = false
fdwq = bmjl.Position
ygxi = fss.Position
end)

im(fss.InputEnded, function(ymwu)
if ymwu.UserInputType ~= Enum.UserInputType.MouseButton1 and ymwu.UserInputType ~= Enum.UserInputType.Touch then
return
end

omc = false
end)

im(fss.MouseButton1Click, function()
if qz then
qz = false
return
end

zcwe:SetState(not zcwe:GetState())
end)

im(game:GetService(_d("LUVSGD8eSA1CZA8EBlEbUw")).InputChanged, function(xbdb)
if not omc then
return
end

if xbdb.UserInputType ~= Enum.UserInputType.MouseMovement and xbdb.UserInputType ~= Enum.UserInputType.Touch then
return
end

local xxx = xbdb.Position - fdwq

if math.abs(xxx.X) > 6 or math.abs(xxx.Y) > 6 then
qz = true
end

fss.Position = UDim2.new(
ygxi.X.Scale,
ygxi.X.Offset + xxx.X,
ygxi.Y.Scale,
ygxi.Y.Offset + xxx.Y
)
end)
end

local pmw = true

local oz = (getgenv().ACBXRunId or 0) + 1
getgenv().ACBXRunId = oz

local function gsk()
return pmw and getgenv().ACBXRunId == oz
end

local function cob()
local mpy = math.max(0, math.floor(tonumber(workspace.DistributedGameTime) or 0))
local ieqg = math.floor(mpy / 3600)
local uz = math.floor((mpy % 3600) / 60)

if ieqg > 0 then
return ieqg .. _d("EBY") .. string.format(_d("XQYFDhs"), uz)
end

return uz .. _d("FQ")
end

do
local pihs = _d("O3QXIgMSGFBA") .. tostring(game.PlaceVersion) .. _d("UQ")

task.spawn(function()
local bhs = nil

while gsk() do
local kne = pihs .. _d("WPSASgMAGA") .. cob()

if kne ~= bhs then
bhs = kne

pcall(function()
zcwe:UpdateSubtitle(kne)
end)
end

task.wait(5)
end
end)
end

zcwe.onUnloaded(function()
pmw = false
lb.save()

local qlo = getgenv().ACBXBadge

if qlo then
pcall(function()
qlo:Destroy()
end)
getgenv().ACBXBadge = nil
end

if wf.enabled then
vekc()
end

if yfhk then
pcall(function()
yfhk:Disconnect()
end)
end
end)

task.spawn(function()
while gsk() do
qbc()
task.wait(2)
end
end)

task.spawn(function()
while gsk() do

local jga = wf.enabled
and (wf.deepZone or wf.tpToBay)
and yvcz.worldBoss ~= nil
and type(yvcz.worldBoss.holdsFishing) == _d("HkNZCQIZVxY")
and yvcz.worldBoss.holdsFishing() == true

local cuau = jga
or (npj.workPending and npj.workPending())
or fq.prioBlocks(_d("D1dDDwQ"))

if wf.enabled and wf.deepZone and not cuau then
arc.cycle()
end

if wf.enabled then
if wf.phase ~= _d("EVJbDw") and os.clock() >= wf.watchdogAt then
wf.phase = _d("EVJbDw")
wf.nextCastAt = os.clock() + 1
end

if wf.autoUnlocked and not wf.usingGameAuto and not wf.perfectCasts then
xxfo()
end

if wf.phase ~= _d("EVJbDw") and (wf.watchdogAt or 0) > 0
and os.clock() > wf.watchdogAt then
wf.phase = _d("EVJbDw")
wf.nextCastAt = 0
wf.lastMessage = _d("O1dEHlYEURVTU0oZBUxYGxceBAlRFlEXCxERURY")
end

if wf.phase == _d("EVJbDw") and os.clock() >= wf.nextCastAt
and os.clock() >= math.max(wf.shopTripUntil or 0, wf.tpHoldUntil or 0)
and not wf.usingGameAuto
and not arc.walking
and (not wf.deepZone or arc.current() ~= nil)
and not cuau then
if not wf.deepZone and wf.tpToBay and not znxa() then
fwpb()
end

if not nmj() then
task.wait(4)
end
end

if not cuau and os.clock() >= math.max(wf.shopTripUntil or 0, wf.tpHoldUntil or 0) then
if (wf.totalCasts or 0) ~= (wf.castMark or 0) then
wf.castMark = wf.totalCasts
wf.castMarkAt = os.clock()
elseif (wf.castMarkAt or 0) > 0
and os.clock() - (wf.castMarkAt or 0) > 45 then
pcall(wf.recover)
end
else
wf.castMark = wf.totalCasts
wf.castMarkAt = os.clock()
end

if os.time() - wf.lastSync >= 20 then
imaz()
end
end

task.wait(0.5)
end
end)

local fsgi

task.spawn(function()
local dwbu = vmqw()

while gsk() do
local zktd = vmqw()

if zktd ~= dwbu then
dwbu = zktd
pcall(function()
fsgi:UpdateBody(zktd)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while gsk() do
if eday.enabled then

if os.clock() >= (rtjv.trip.untilAt or 0) then
rtjv.open()
end

local lbb = eday.pending

if lbb and os.time() - lbb.at > 5 then

eday.failedUntil[lbb.id] = os.time() + 30
eday.pending = nil
xl.RequestItemSync:FireServer()
end

if os.time() - eday.lastSync >= 20 then
eday.lastSync = os.time()
xl.RequestItemSync:FireServer()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
local wc = rtjv.text()

while gsk() do
local xk = rtjv.text()

if xk ~= wc and rtjv.paragraph then
wc = xk

pcall(function()
rtjv.paragraph:UpdateBody(xk)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while gsk() do

if rtjv.upgrade.balance == nil or os.time() - rtjv.upgrade.lastRequest >= 20 then
rtjv.request()
end

if rtjv.run.highest == nil and os.time() - rtjv.run.lastRequest >= 5 then
rtjv.requestProgress()
end

if rtjv.upgrade.enabled then
rtjv.buy()

if rtjv.upgrade.waiting and os.time() - rtjv.upgrade.lastBuy >= 5 then

rtjv.upgrade.waiting = false
rtjv.request()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
while gsk() do
local mcgi = rtjv.run

if mcgi.enabled then
if mcgi.highest == nil or os.time() - mcgi.lastRequest >= 20 then
rtjv.requestProgress()
end

local aeei = mcgi.inBattle and os.time() < mcgi.inBattleUntil

if not aeei and fq.halloweenSlot() ~= nil
and fq.slotFree(fq.halloweenSlot() or 1)

and (not gapk.enabled or fq.towerSlot() ~= 1)
and (not rs.island or fq.enabled)
and (not dyx.enabled or fq.enabled)
and not (mcgi.pending and os.time() < mcgi.pendingUntil) then
if rtjv.bestRoom() then
rtjv.startRun()
elseif mcgi.highest ~= nil then

mcgi.enabled = false

pcall(function()
rtjv.runToggle:UpdateState(false)
end)

pcall(function()
zcwe:Dialog({
Title = _d("OUNDBVY4WRRaWB0TFVZYYlgdEwI"),
Description = _d("PUBSGA9QcBlaWwUBFV0WFmMFARVKWEVDCxEVGBFFFwkaFVkKU1NKFxxKHVdTE1pQSxcWQwITAl1YX0RKGB9MEF9ZDVYcXR5CFx4ZUEoNWBk"),
Buttons = {
{
Name = _d("P1lDSh8E"),
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

local ft = zcwe:TabGroup()

local uxr = ft:Tab({
Name = _d("NVdeBA"),
Image = _d("ClRPCwUDXQxfU1BZXwlKDgFZRkQATQ4GXk5HAA"),
})

local xq = ft:Tab({
Name = _d("LFlADwRQHlhiUgsb"),
Image = _d("ClRPCwUDXQxfU1BZXwlIAAJaT0kBSwMCXEdHCQ"),
})

task.spawn(function()
local rx = 0
local dv = 0

local tb = 0

while gsk() do
local wug = wf.rebirthText()

if wf.rebirthParagraph and wug ~= wf.rebirthShown then
wf.rebirthShown = wug

pcall(function()
wf.rebirthParagraph:UpdateBody(wug)
end)
end

if os.clock() >= tb then
tb = os.clock() + 20

local trs = rs.remotes and rs.remotes.request

if trs then
pcall(function()
trs:FireServer()
end)
end
end

local rjbm = rs.buffText()

if rs.islandParagraph and rjbm ~= rs.buffShown then
rs.buffShown = rjbm

pcall(function()
rs.islandParagraph:UpdateBody(rjbm)
end)
end

if wf.autoRebirth then
if os.clock() - rx > 15 then
rx = os.clock()
imaz()
end

if wf.rebirthReady() and os.clock() >= dv then
local jvc = workspace:FindFirstChild(_d("NVdQAxURVFh0WAUd"), true)

if jvc then
jc(jvc)
task.wait(0.8)
end

local jqlx, kki = gi(_d("KlNVAwQEUA"))

if jqlx then
wf.autoRebirth = false

pcall(function()
wf.rebirthToggle:UpdateState(false)
end)

zcwe:Notify({
Title = _d("KlNVAwQEUA"),
Description = _d("KlNVAwQEUB1SGUoiGF1Yd1ULGBRXFlNTSj8DVBlYU0ofAxgXRlIEWA"),
Lifetime = 6,
})
elseif kki ~= _d("C1pYHQ") then
dv = os.clock() + 20

zcwe:Notify({
Title = _d("KlNVAwQEUA"),
Description = _d("KlNVAwQEUFhEUgwDA10cDBc") .. tostring(kki),
Lifetime = 6,
})
end
end
end

task.wait(3)
end
end)

local jsi = ft:Tab({
Name = _d("Pl9EAh8eXw"),
Image = _d("ClRPCwUDXQxfU1BZXwlJAgJfQ0EMSgMBXEJDCQ"),
})

local aoo = ft:Tab({
Name = _d("PF9QDR8eXw"),
Image = _d(""),
})

local ha = ft:Tab({
Name = _d("PUBSBAID"),
Image = _d("ClRPCwUDXQxfU1BZXwlKAwdbREYNSAIOXU5ICw"),
})

local fn = jsi:Section({
Side = _d("NFNRHg"),
})

fn:Header({
Name = _d("Pl9EAh8eX1jGqOTV"),
})

local ld

local function oxse(oyxf)
wf.enabled = oyxf
wf.phase = _d("EVJbDw")
wf.nextCastAt = 0
wf.castMark = wf.totalCasts
wf.castMarkAt = os.clock()

if not oyxf then
vekc()
return
end

task.spawn(function()
if not gzdt() then
zcwe:Notify({
Title = _d("OUNDBVY2UQte"),
Description = _d("NlkXDB8DUBFYUEoEH1xYX1lKAhhdWFRWCR0AWRtdGQ"),
Lifetime = 5,
})
end

if wf.tpToBay and not znxa() then
fwpb()
end

imaz()

if wf.autoUnlocked and not wf.perfectCasts then
xxfo()
end
end)
end

local lqz = false

local function oc()
if wf.tpToBay or wf.deepZone then
if wf.autoFishWanted then

wf.autoFishWanted = false

pcall(function()
ld:UpdateState(true)
end)

if not wf.enabled then
oxse(true)
end
end

return true
end

if wf.enabled then

wf.autoFishWanted = true

oxse(false)

if not lqz then
zcwe:Dialog({
Title = _d("OUNDBVY2UQteFwUQFg"),
Description = _d("MUIXBBMVXAsWVkoFAFcMFkMFVhZRC14XCwJQFVhCQhgYUFcWFmM6VgRXWHRWE1YfSlhXFy4TFUhYYVYeEwJLWEVAAwITUFY"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})
end
end

return false
end

ld = fn:Toggle({
Name = _d("OUNDBVY2UQte"),
Default = false,
Callback = function(cvb)
if cvb and nazm then
pcall(function()
ld:UpdateState(false)
end)

if not lqz then
zcwe:Dialog({
Title = _d("OUNDBVY2UQteFwMFUEgZRFwPEg"),
Description = _d("OUNDBVY0UR8WXwsFUEwQUxcZHh9OHVoXAxhQUBlYU0RWJE0KWBcrAwRXWHJeDVYfXh4WVgQSUHkNQlhKMBlLEBZEHhcCTAsWWQUEHVkUWk5E"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})
end

return
end

if cvb and not (wf.tpToBay or wf.deepZone) then

pcall(function()
ld:UpdateState(false)
end)

wf.autoFishWanted = true

if not lqz then
zcwe:Dialog({
Title = _d("OUNDBVY2UQteFwQTFVwLFlZKBQBXDA"),
Description = _d("LENFBFYfVlhiZ0oCHxg6V05KGQIYGRZzDxMAGC9XQw8EAxgLQV4eFRgYHl9FGQJQFVh3Qh4ZUH4RRV9KBQRZCkJEShQJGBFCRA8aFhgZRRcZGR9WWFdEShkeXVhZUUoCGF0VFl4ZVh9WVg"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})
end

return
end

wf.autoFishWanted = false

oxse(cvb)
end,
}, _d("GUNDBSkWUQte"))

wf.autoFishToggle = ld

fn:Toggle({
Name = _d("KFNFDBMTTFhVVhkCAxhQTgVKGgVbEx8"),
Default = true,
Callback = function(hyt)
wf.perfectCasts = hyt

if hyt and wf.usingGameAuto then
vekc()
end
end,
}, _d("CFNFDBMTTCdVVhkCA2cABGgGAxNT"))

fn:Toggle({
Name = _d("LGYXHhlQehlP"),
Default = false,
Callback = function(aheh)
wf.tpToBay = aheh

oc()
end,
}, _d("DEZoHhkvWhlP"))

local mt
local ncxr

mt = fn:Toggle({
Name = _d("LFNbDwYfSgwWQwVWNF0dRlIZAlBvGUJSGA"),
Default = false,
Callback = function(jgrh)
if jgrh then

wf.deepWalk = false
wf.deepDiveAt = 0
wf.deepPhase = _d("EVJbDw")
wf.deepStageAt = 0

pcall(function()
ncxr:UpdateState(false)
end)

wf.deepZone = true

task.spawn(function()
if not arc.settle() and wf.deepZone and not wf.deepWalk then
zcwe:Notify({
Title = _d("LFNbDwYfSgwWQwVWNF0dRlIZAlBvGUJSGA"),
Description = _d("LF5SShIVXQgbQAsCFUpYW1YaVh5dDlNFShofWRxTU0RWJE0KWBceHhUYC0FeHhUYGBdQUUoXHlxYWVlKFxdZEVgXHhlQSh1CRRNY"),
Lifetime = 8,
})
end
end)

oc()

return
end

if wf.deepWalk then
return
end

wf.deepZone = false
wf.deepDiveAt = 0
wf.deepPhase = _d("EVJbDw")
wf.deepStageAt = 0

task.spawn(function()
pcall(function()
xl.TeleportToWorld:FireServer(_d("FFlVCA8"))
end)
end)

oc()
end,
}, _d("HFNSGikHWQxTRTUUFUsMaVsfFRs"))

ncxr = fn:Toggle({
Name = _d("L1dbAVYEV1hyUg8GFUsMFmALAhVK"),
Default = false,
Callback = function(bmvt)
if bmvt then

local uig = arc.customIsland or arc.islandOf(arc.spot())

if wf.islandLocked and uig == _d("GVRWBBIfVh1SaAMFHFkWUg") then
wf.deepWalk = false

pcall(function()
ncxr:UpdateState(false)
end)

zcwe:Dialog({
Title = _d("L1dbAVYEV1hyUg8GFUsMFmALAhVKWFhSDxIDGAxeUko3ElkWUlgEExQYMUVbCxgU"),
Description = _d("LF5SSh8DVBlYU0ofAxgUWVQBExQYF1gXHh4ZS1hXVAkZBVYMGBclGBUYClNVAwQEUFhZRw8YAxgRQhdHVgVWDF9bSgIYXRYWQwITUF8ZW1JKHhFLWFhYSgIVVB1GWBgCUEwQU0UPVgRXWEJWARNe"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})

return
end

wf.deepWalk = true
wf.deepDiveAt = 0
wf.deepPhase = _d("EVJbDw")
wf.deepStageAt = 0

pcall(function()
mt:UpdateState(false)
end)

wf.deepZone = true

task.spawn(function()
arc.walk()
end)

oc()

return
end

if not wf.deepWalk then
return
end

wf.deepWalk = false
wf.deepZone = false
wf.deepDiveAt = 0
wf.deepPhase = _d("EVJbDw")
wf.deepStageAt = 0

task.spawn(function()
pcall(function()
xl.TeleportToWorld:FireServer(_d("FFlVCA8"))
end)
end)

oc()
end,
}, _d("D1dbASkUXR1GaB0XBF0K"))

fn:Paragraph({
Header = _d("PFNSGhMDTFhhVh4TAg"),
Body = _d("OllDAlYDTxFCVAITAxgUV1kOVh9WWEJfD1YnURZSWgMaHBgxRVsPVhRXG10XR1YEUB0WUw8TAF0LQhcYHx5fVBZgAxgUTxlEU0ohEUwdRERKW1BLFxZDHwQeURZRFwUYFRgXWBcMBB9VWFdZEwEYXQpTFwMYUEwQUxcNFx1dWFRFAxgXS1hPWB9WElkbXRceGVBMEFdDSgUAVwwYPWAhEVQTFlQFABVKCxZDAhNQVBlFQ0oFBEodQlQCVh9WWFBYBQJQTxFCX0oCGF1YUVYHE1dLWFlABFYRVhFbVh4fH1ZDFmMPGhVIF0RDSgYFTAsWTgUDUEwQU0UPVgdRDF5YHwJQTBBTFx0XHFNWFmMFVhhXFFIXC1YUUR5QUhgTHkxYRUcFAlBRFkVDDxcUFFhEQgRWMXs6bnMPEwBvGUJSGFgTWQhCQhgTWBFYX1lKAhhdWFVYBAUfVB0WQAIfHF1YRUMLGBRRFlEXBRhQUQwY"),
})

local hrv

hrv = fn:Paragraph({
Header = _d("Pl9EAh8eX1hFQwsCFQ"),
Body = quz(),
})

local qj = ha:Section({
Side = _d("NFNRHg"),
})

qj:Header({
Name = _d("OUNDBVY4WRRaWB0TFVZYYlgdEwLI57i0munWvw"),
})

rtjv.runToggle = qj:Toggle({
Name = _d("OUNDBVY4WRRaWB0TFVZYYlgdEwI"),
Default = false,
Callback = function(cdjc)
rtjv.run.enabled = cdjc
rtjv.run.pending = false
rtjv.run.pendingUntil = 0

if cdjc then
rtjv.requestProgress()
end
end,
}, _d("GUNDBSkYWRRaWB0TFVYnQlgdEwI"))

rtjv.run.team = math.clamp(math.floor(tonumber(npj.bossTeams.towerPicked.halloween) or 1), 1, 4)
rtjv.run.teamChosen = tonumber(npj.bossTeams.towerPicked.halloween) ~= nil
rtjv.run.building = true

rtjv.run.teamDropdown = qj:Dropdown({
Name = _d("LFNWBw"),
Search = false,
Multi = false,
Required = false,
Default = rtjv.run.team,
Options = { _d("LFNWB1ZB"), _d("LFNWB1ZC"), _d("LFNWB1ZD"), _d("LFNWB1ZE") },
Callback = function(hfbj)
local xy = type(hfbj) == _d("DFdVBhM") and hfbj[1] or hfbj
local mz = type(xy) == _d("C0JFAxgX") and tonumber(xy:match(_d("UBNTQV8"))) or nil

if not mz then
return
end

rtjv.run.team = mz

if rtjv.run.building then
return
end

rtjv.run.teamChosen = true
npj.bossTeams.towerPicked.halloween = mz
npj.bossTeams.save()

pcall(function()
rtjv.run.teamDropdown:UpdateName(_d("LFNWB1aSuNoW") .. (xy or (_d("LFNWB1Y") .. tostring(mz))))
end)
end,
}, _d("DFNWBykYWRRaWB0TFVY"))

pcall(function()
rtjv.run.teamDropdown:UpdateSelection(_d("LFNWB1Y") .. tostring(rtjv.run.team))
rtjv.run.teamDropdown:UpdateName(_d("LFNWB1aSuNoWYw8XHRg") .. tostring(rtjv.run.team))
end)

rtjv.run.building = false

rtjv.toggle = qj:Toggle({
Name = _d("OUNDBVYFSB9EVg4TAw"),
Default = false,
Callback = function(cahv)
if cahv and not next(rtjv.upgrade.selected) then
rtjv.upgrade.enabled = false

pcall(function()
rtjv.toggle:UpdateState(false)
end)

zcwe:Dialog({
Title = _d("OUNDBVYFSB9EVg4TAw"),
Description = _d("KF9UAVYRTFhaUgsFBBgXWFJKBgVVCF1eBFYFSB9EVg4TUFEWFkMCE1BcCllHDhkHVlhQXhgFBBhVFnYfAh8YDUZQGBcUXQsWRBoTHlwLFk4FAwIYMldUAVYfH1h6VgQCFUoWRRcFGFBMEFNaShcDGAtZWARWEUtYT1gfVhNZFhZWDBAfShwWWAQTXg"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})

return
end

rtjv.upgrade.enabled = cahv

if cahv then
rtjv.request()
end
end,
}, _d("GUNDBSkFSB9EVg4TAw"))

qj:Dropdown({
Name = _d("KENaGh0ZVlhDRw0EEVwdRQ"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = rtjv.labels,
Callback = function(owi)
local nxq = {}

if type(owi) == _d("DFdVBhM") then
for gvf, lbp in ipairs(rtjv.upgrades) do
if owi[lbp.name] then
nxq[lbp.id] = true
end
end
end

rtjv.upgrade.selected = nxq

if not next(nxq) and rtjv.upgrade.enabled then
rtjv.upgrade.enabled = false

pcall(function()
rtjv.toggle:UpdateState(false)
end)

zcwe:Dialog({
Title = _d("OUNDBVYFSB9EVg4TAxgXUFE"),
Description = _d("NllDAh8eX1hfREoFFVQdVUMPElBWF0EbSgUfGAxeUhgTUFELFlkFAhhRFlEXBhMWTFhCWEoUBUFWFmcDFRsYGVgXHwYXShlSUkoXHlxYQkIYGFBRDBZVCxUbGBdYGQ"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})
end
end,
}, _d("CENaGh0ZVidDRw0EEVwdRQ"))

rtjv.paragraph = qj:Paragraph({
Header = _d("KENaGh0ZVgs"),
Body = rtjv.text(),
})

local ui = ha:Section({
Side = _d("NFNRHg"),
})

ui:Header({
Name = _d("MFdbBhkHXR1YFxkeH0iIqbjAhu+q+A"),
})

ui:Toggle({
Name = _d("OUNDBVYyTQE"),
Default = false,
Callback = function(fcif)
eday.enabled = fcif
eday.pending = nil

if fcif then
xl.RequestItemSync:FireServer()
task.spawn(function()
rtjv.open(true)
end)
end
end,
}, _d("GUNDBSkSTQE"))

ui:Button({
Name = _d("N0ZSBFYDUBdG"),
Callback = function()
task.spawn(function()
local nanh = rtjv.open(true)

zcwe:Notify({
Title = _d("MFdbBhkHXR1YFxkeH0g"),
Description = nanh and _d("O1lCBAIVSlhZRw8YUBVYUlYDGgkYC0JYCR1QSh1XU0oQAlcVFkMCE1BLHURBDwRe") or tostring(rtjv.trip.lastResult),
Lifetime = 6,
})

if fsgi then
pcall(function()
fsgi:UpdateBody(vmqw())
end)
end
end)
end,
})

ui:Dropdown({
Name = _d("MUJSBwU"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = rtjv.shopLabels,
Callback = function(ba)
local hs = {}

if type(ba) == _d("DFdVBhM") then
for qcn, weej in ipairs(rtjv.shopItems) do
if ba[weej.label] then
hs[weej.id] = true
end
end
end

eday.selected = hs
end,
}, _d("EUJSBwU"))

fsgi = ui:Paragraph({
Header = _d("K0JYCR1QHlhEUhkTBA"),
Body = vmqw(),
})

local eof = ha:Section({
Side = _d("Kl9QAgI"),
})

eof:Paragraph({
Header = _d("K1NWGRkeWRQWUhwTHkwL"),
Body = _d("MFdbBhkHXR1YFwMFUFQRQFJQVgRQHRZEAhkAGBlYU0oCGF1YYlgdEwIYGllDAlYHVwpdGWB8MU0MWRciFxxUF0FSDxhQbBdBUhhWA0wZREMZVglXDUQXDhMVSB1FQ0oDHlQXVVwPElBKF1laRFYzVB1XRQMYFxgLQlYNEwMYCFdOGVY6WRtdFwVRUHQZWEMPBB5LVBZWBBJQeQ1CWEoDAF8KV1MPBVBLCFNZDgVQTBBTWkoZHhgIU0UHFx5dFkIXHhkHXQoWVR8QFktW"),
})

yvcz.worldBoss.section = ha:Section({
Side = _d("Kl9QAgI"),
})

yvcz.worldBoss.section:Header({
Name = _d("OUNDBVY3VBdUVgZWMlcLRQ"),
})

yvcz.worldBoss.section:Paragraph({
Header = _d("KEReBQQZTAE"),
Body = _d("KldZAQVQTxFCX0oCGF1YRFYDEgMCWEJfD1YEVw9TRUoFBFkWUkRKEh9PFhZRBQRQUQwaFwsYFBg5Q0MFVj5oOxZYHwICWRZdREofBBZyPGMCE1BeEVFfHlYEWRNTREoXUEsUWUNGVgNXWF9DShUfTRZCREoXAxgZWBckJjMYGldDHhoVGAxeUhgTXg"),
})

yvcz.worldBoss.toggle = yvcz.worldBoss.section:Toggle({
Name = _d("OUNDBVY3VBdUVgZWMlcLRQ"),
Default = false,
Callback = function(jlwa)
if jlwa and not yvcz.worldBoss.teamChosen then
yvcz.worldBoss.enabled = false

pcall(function()
yvcz.worldBoss.toggle:UpdateState(false)
end)

zcwe:Dialog({
Title = _d("OUNDBVY3VBdUVgZWMlcLRRcEExVcCxZWSgIVWRU"),
Description = _d("KF9UAVYEUB0WQw8XHRgRQhcZHh9NFFIXDB8XUAwWQAMCGBgRWBceHhUYLFNWB1YUShdGUwUBHhgeX0UZAl4YLF5SSgUTShFGQ0oeEUtYQlhKBQdRDFVfSgIYWQwWRAYZBB8LFkMPFx0YGlNRBQQVGAxeUkoQGV8QQhcZAhFKDEUbShceXFhiUgsbUAlYX0RKGR5UARZDAhNQXB1QVh8aBBhVFl4eVhlLWFhYHlYRGBteWAMVFRgNWEMDGlBBF0MXBxcbXVhfQ0Q"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})

return
end

if jlwa then
local yvgk = yvcz.worldBoss.team
local dng = npj.bossTeams.teamCards(yvgk)

if dng == 0 then
yvcz.worldBoss.enabled = false

pcall(function()
yvcz.worldBoss.toggle:UpdateState(false)
end)

zcwe:Dialog({
Title = _d("LFNWB1Y") .. tostring(yvgk) .. _d("WF5WGVYeV1hVVhgSAw"),
Description = _d("KENDShcEGBRTVhkCUFcWUxcJFwJcWF9ZSiIVWRUW") .. tostring(yvgk) .. _d("WB5zDxUbS1EaFwUEUEgRVVxKF1BMHVdaSgIYWQwWVgYEFVkcTxcCFwMYG1dFDgVQURYWQwITUGwdV1pKEgJXCFJYHRhcGAxeUgRWBE0KWBcrAwRXWHFbBRQRVFh0WBkFUFoZVVxKGR4W"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})

return
end
end

yvcz.worldBoss.enabled = jlwa
yvcz.worldBoss.holdUntil = 0

yvcz.worldBoss.nextFightAt = 0

if not jlwa then
yvcz.worldBoss.setRepeat(false)
end

if jlwa then

yvcz.worldBoss.syncedAt = 0
yvcz.worldBoss.askedAt = 0
yvcz.worldBoss.chainWaitAt = nil
yvcz.worldBoss.repeatSeeded = false
yvcz.worldBoss.seenKills = nil
yvcz.worldBoss.progressAt = os.clock()
yvcz.worldBoss.kickAt = 0
end
end,
}, _d("GUNDBSkXVBdUVgYpElcLRQ"))

yvcz.worldBoss.claimToggle = yvcz.worldBoss.section:Toggle({
Name = _d("OUNDBVYTVBlfWkoEFU8ZRFMZ"),
Default = false,
Callback = function(mkp)
yvcz.worldBoss.autoClaim = mkp
yvcz.worldBoss.claimAt = 0

if mkp then
yvcz.worldBoss.syncedAt = 0
yvcz.worldBoss.askedAt = 0
yvcz.worldBoss.chainWaitAt = nil
end
end,
}, _d("GUNDBSkTVBlfWjUEFU8ZRFMZ"))

yvcz.worldBoss.fullToggle = yvcz.worldBoss.section:Toggle({
Name = _d("K0JYGlYHUB1YFx4eFRgaV0VKEBlUFEU"),
Default = false,
Callback = function(uyj)
yvcz.worldBoss.stopAtFull = uyj
yvcz.worldBoss.meterAt = 0
end,
}, _d("D1RoGQIfSCdXQzUQBVQU"))

yvcz.worldBoss.walkToggle = yvcz.worldBoss.section:Toggle({
Name = _d("L1dbAVYEV1hRWwUUEVRYVFgZBQ"),
Default = false,
Callback = function(zijc)
yvcz.worldBoss.walkToBoss = zijc

yvcz.worldBoss.travelUntil = 0
end,
}, _d("D1RoHRccUydCWDUUH0sL"))

yvcz.worldBoss.bodyParagraph = yvcz.worldBoss.section:Paragraph({
Header = _d("OllEGQ"),
Body = yvcz.worldBoss.bodyText(),
})

yvcz.worldBoss.section:Header({
Name = _d("OllEGVYDUBdGF5rp/qeXjrg"),
})

yvcz.worldBoss.shopParagraph = yvcz.worldBoss.section:Paragraph({
Header = _d("MVgXGQIfWxM"),
Body = yvcz.worldBoss.shopText(),
})

yvcz.worldBoss.itemsDropdown = yvcz.worldBoss.section:Dropdown({
Name = _d("MUJSBwU"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = yvcz.worldBoss.shopOptions(),
Callback = function(noq)
local cexu = {}

if type(noq) == _d("DFdVBhM") then
for jcx, raw in pairs(noq) do
local rnw = yvcz.worldBoss.labelToId[jcx]

if raw and rnw then
cexu[rnw] = true
end
end
end

yvcz.worldBoss.selected = cexu

if not next(cexu) and yvcz.worldBoss.autoBuy then
yvcz.worldBoss.autoBuy = false

pcall(function()
yvcz.worldBoss.shopToggle:UpdateState(false)
end)
end
end,
}, _d("EUJSBwUvCg"))

yvcz.worldBoss.shopToggle = yvcz.worldBoss.section:Toggle({
Name = _d("OUNDBVYSTQE"),
Default = false,
Callback = function(agpn)
if agpn and not next(yvcz.worldBoss.selected) then
yvcz.worldBoss.autoBuy = false

pcall(function()
yvcz.worldBoss.shopToggle:UpdateState(false)
end)

zcwe:Dialog({
Title = _d("OUNDBVYSTQE"),
Description = _d("KF9UAVYRTFhaUgsFBBgXWFJKHwRdFRZeBFY5TB1bREoQGUoLQhdHVjFNDFkXCAMJGAtGUgQSAxgqU1NKJBlaGllZSjsVXBlaREoZHhgPXlYeEwZdChZeHlYTWRYWVgwQH0ocFlEYGR0YDF5WHlYcUQtCGQ"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})

return
end

yvcz.worldBoss.autoBuy = agpn
end,
}, _d("GUNDBSkSTQFpBQ"))

yvcz.worldBoss.section:Button({
Name = _d("OkNOSgUVVB1VQw8S"),
Callback = function()
if not next(yvcz.worldBoss.selected) then
zcwe:Dialog({
Title = _d("OkNOSgUVVB1VQw8S"),
Description = _d("KF9UAVYRTFhaUgsFBBgXWFJKHwRdFRZeBFY5TB1bREoQGUoLQhk"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})

return
end

local zwbo = yvcz.worldBoss.buy()

if zwbo == 0 then
zcwe:Dialog({
Title = _d("OkNOSgUVVB1VQw8S"),
Description = _d("NllDAh8eX1hBVhlWElcNUV8eTFBWFxZaDxIRVAsWQwVWA0gdWFNGVhVOHUROSgYZWxMWXhlWH00MFlgMVgNMF1VcRlYfSlhCXw9WElcLRRcZHh9IWF5WGVYeVwwWRBMYE10cFk4PAl4"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})
end
end,
})

yvcz.worldBoss.building = true

yvcz.worldBoss.teamDropdown = yvcz.worldBoss.section:Dropdown({
Name = _d("LFNWBw"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("LFNWB1ZB"), _d("LFNWB1ZC"), _d("LFNWB1ZD"), _d("LFNWB1ZE") },
Callback = function(ve)
if yvcz.worldBoss.building then
return
end

local htj = type(ve) == _d("DFdVBhM") and ve[1] or ve
local ccmj = type(htj) == _d("C0JFAxgX") and tonumber(htj:match(_d("UBNTQV8"))) or nil

if ccmj then
yvcz.worldBoss.team = ccmj
yvcz.worldBoss.teamChosen = true
npj.bossTeams.save()
end

pcall(function()
yvcz.worldBoss.teamDropdown:UpdateName(_d("LFNWB1aSuNoW") .. (htj or _d("LFNWB1ZB")))
end)
end,
}, _d("DFNWBw"))

pcall(function()
yvcz.worldBoss.teamDropdown:UpdateSelection(_d("LFNWB1Y") .. tostring(yvcz.worldBoss.team))
yvcz.worldBoss.teamDropdown:UpdateName(_d("LFNWB1aSuNoWYw8XHRg") .. tostring(yvcz.worldBoss.team))
end)

task.defer(function()
yvcz.worldBoss.building = false
end)

yvcz.misc = yvcz.misc or {}

yvcz.misc.expeditions = {
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
rewardPath = _d("OXV1MlkVQAhTUwMCGVcWRRkABR9W"),
module = nil,
action = nil,
section = nil,
paragraph = nil,
claimToggle = nil,
startToggle = nil,
dropdown = nil,
}

function yvcz.misc.expeditions.data()
local eym = yvcz.misc.expeditions

if eym.module ~= nil then
return eym.module or nil
end

local gq, rgud = pcall(function()
return require(ayu.ModuleScripts.ExpeditionData)
end)

eym.module = gq and rgud or false

return eym.module or nil
end

function yvcz.misc.expeditions.tiers()
local odbk = yvcz.misc.expeditions.data()

return odbk and odbk.Tiers or {}
end

function yvcz.misc.expeditions.remote()
local ku = yvcz.misc.expeditions

if ku.action and ku.action.Parent then
return ku.action
end

ku.action = wek(_d("PU5HDxIZTBFZWSsVBFEXWA"), 3)

return ku.action
end

function yvcz.misc.expeditions.clockText(ruw)
local qfwr = yvcz.misc.expeditions.data()

if qfwr and type(qfwr.formatDuration) == _d("HkNZCQIZVxY") then
return qfwr.formatDuration(ruw)
end

local irhc = math.max(0, math.floor((ruw or 0) / 60))

return tostring(irhc) .. _d("FQ")
end

function yvcz.misc.expeditions.status(wguw)
local fktq = yvcz.misc.expeditions
local awjr = fktq.state
local upmj = type(awjr) == _d("DFdVBhM") and type(awjr.active) == _d("DFdVBhM") and awjr.active[wguw] or nil

if type(upmj) ~= _d("DFdVBhM") then
return _d("GUBWAxoRWhRT"), nil
end

local dnlg = (tonumber(upmj.endsAt) or 0) - (os.time() + (fktq.offset or 0))

if dnlg <= 0 then
return _d("ClNWDg8"), dnlg
end

return _d("CkNZBB8eXw"), dnlg
end

function yvcz.misc.expeditions.candidates(vlfg)
local usyt = yvcz.misc.expeditions
local vzpw = usyt.data()
local aqs = usyt.state
local etie = vzpw and vzpw.ById and vzpw.ById[vlfg]
local iedk = {}

if not (etie and type(aqs) == _d("DFdVBhM") and type(aqs.eligible) == _d("DFdVBhM")) then
return iedk
end

for sgoz, gubo in ipairs(aqs.eligible) do
if type(gubo) == _d("DFdVBhM") and gubo.cardId then
local rfo = tonumber(gubo.rarity) or 0
local xt = (tonumber(gubo.count) or 0) - (tonumber(gubo.locked) or 0)

if rfo >= (tonumber(etie.minRarity) or 0) and xt > 0 then

table.insert(iedk, { cardId = gubo.cardId, borderLevel = gubo.borderLevel, rarity = rfo, count = xt })
end
end
end

table.sort(iedk, function(usch, nyc)
if usch.rarity == nyc.rarity then
return tostring(usch.cardId) < tostring(nyc.cardId)
end

return usch.rarity < nyc.rarity
end)

return iedk
end

function yvcz.misc.expeditions.cards(yec, jdq)
local zg = yvcz.misc.expeditions
local zap = zg.data()
local ueiu = zap and tonumber(zap.CardsPerExpedition) or 4
local rfgs = {}
local laqs = zg.candidates(yec)

jdq = jdq or {}

local function fpk(ixa, pck)
local dyao = tostring(ixa.cardId) .. _d("Ww") .. tostring(ixa.borderLevel)

while #rfgs < ueiu and (jdq[dyao] or 0) < pck do
jdq[dyao] = (jdq[dyao] or 0) + 1

table.insert(rfgs, { cardId = ixa.cardId, borderLevel = ixa.borderLevel })
end
end

for uic, mim in ipairs(laqs) do
if #rfgs >= ueiu then
break
end

if mim.count > 1 then
fpk(mim, mim.count - 1)
end
end

if #rfgs < ueiu then
for wink, oyz in ipairs(laqs) do
if #rfgs >= ueiu then
break
end

fpk(oyz, oyz.count)
end
end

return rfgs
end

function yvcz.misc.expeditions.available(ud)
local slcg = yvcz.misc.expeditions
local da = slcg.data()
local qyig = da and tonumber(da.CardsPerExpedition) or 4
local tfjp = 0

for kwcp, fza in ipairs(slcg.candidates(ud)) do
tfjp = tfjp + fza.count

if tfjp >= qyig then
return qyig
end
end

return tfjp
end

function yvcz.misc.expeditions.text()
local ers = yvcz.misc.expeditions

if type(ers.state) ~= _d("DFdVBhM") then
return _d("KlNWDh8eX1hTTxoTFFEMX1gEBV4WVg")
end

local lpc = ers.data()
local qxtk = lpc and tonumber(lpc.CardsPerExpedition) or 4
local jk = {}

for tgc, au in ipairs(ers.tiers()) do
local yka, qfcl = ers.status(au.id)
local yu = tostring(au.name)

if ers.tiersWanted[au.id] then
yu = _d("mraVSg") .. yu
end

if yka == _d("CkNZBB8eXw") then
yu = yu .. _d("cmRSHgMCVgsWXgRW") .. ers.clockText(qfcl)
elseif yka == _d("ClNWDg8") then
yu = yu .. _d("cmRSCxIJGAxZFwkaEVEV")
else
local uij = ers.available(au.id)
yu = yu .. _d("cg") .. tostring(uij) .. _d("WFlRSg") .. tostring(qxtk) .. _d("WFVWGBID")

if uij >= qxtk then
yu = yu .. _d("cnVWBFYDTBlEQw")
end
end

table.insert(jk, yu)
end

table.insert(jk, _d("PUBSGA9QXA1GWwMVEUwdFl4ZVgNdFkIXCBMWVwpTFwtWE1kKUhcTGQUYEFlbDlYfVh0WWAxaUFkWUhcFGBUYG1lHE1YfXlhXFwkXAlxYX0RKHRVIDBZVCxUbGA9eUhgTUEwQUxceHxVKWFVWBFYDSBlEUkofBBhVFlZKGh9WHRZUBQYJGBdYWxNWF1cdRRcFAwQYD15SBFYEUB0WQwMTAhgbV1kEGQQYGlMXDB8cVB1SFx0fBFAXQ0NKHwQW"))

return table.concat(jk, _d("cjw"))
end

function yvcz.misc.expeditions.request()
local phxy = yvcz.misc.expeditions
local nkd = phxy.remote()

if nkd then
pcall(function()
nkd:FireServer(_d("ClNGHxMDTA"))
end)
end

phxy.askedAt = os.clock()
end

function yvcz.misc.expeditions.claim()
local xx = yvcz.misc.expeditions

if os.clock() < xx.claimAt then
return false
end

local jw = false

for qxne, qqrt in ipairs(xx.tiers()) do
if xx.status(qqrt.id) == _d("ClNWDg8") then
jw = true
break
end
end

if not jw then
return false
end

local op = xx.remote()

if not op then
return false
end

pcall(function()
op:FireServer(_d("G1pWAxsxVBQ"))
end)

xx.claimAt = os.clock() + 3
xx.askedAt = 0

return true
end

function yvcz.misc.expeditions.popup()
local buqj = ff:FindFirstChild(_d("PU5HDxIZTBFZWS0DGQ"))

return buqj and buqj:FindFirstChild(_d("O1pWAxsgVwhDRw")) or nil
end

function yvcz.misc.expeditions.closeRewards()
local flst = yvcz.misc.expeditions
local feru = flst.popup()

if not (feru and feru.Visible) then
return false
end

local kscl = feru:FindFirstChild(_d("N111HwIEVxY"))

if kscl and type(firesignal) == _d("HkNZCQIZVxY") then
pcall(firesignal, kscl.Activated)
end

pcall(function()
feru.Visible = false
end)

return true
end

function yvcz.misc.expeditions.rewardsText()
local qjbi = yvcz.misc.expeditions

if #qjbi.rewardLog == 0 then
return _d("NllDAh8eX1hVWwsfHV0cFk4PAl4YPUBSGA9QSBlPWB8CUEwQUxcZEwJOHUQXGRMeXAsWWwsYFEtYXlIYE1BPEUJfSh8ES1hCXg8EUFkWUhcDAgMYG1lZHhMeTAsY")
end

local tnto = {}

for sanx, lkaq in ipairs(qjbi.rewardLog) do
local ydy = {}
local jmq = lkaq.items or {}

for eh, mvis in ipairs(jmq) do
if eh > 4 then
table.insert(ydy, _d("Uw") .. tostring(#jmq - 4) .. _d("WFtYGBM"))
break
end

local qfk = mvis.id or mvis.itemId
local bs = qfk and pc.ById[qfk] or nil
local rzc = (bs and bs.name) or (mvis.potions and _d("KFlDAxkeSw")) or tostring(qfk or _d("ClNACwQU"))

table.insert(ydy, rzc .. _d("WE4") .. tostring(mvis.count or mvis.max or mvis.min or 1))
end

local ghh = math.max(0, os.time() - (tonumber(lkaq.at) or os.time()))
local kfw

if ghh < 60 then
kfw = tostring(ghh) .. _d("CxZWDRk")
elseif ghh < 3600 then
kfw = tostring(math.floor(ghh / 60)) .. _d("FRZWDRk")
else
kfw = tostring(math.floor(ghh / 3600)) .. _d("EBZWDRk")
end

table.insert(tnto, tostring(lkaq.title) .. _d("WPSASg") .. kfw)
table.insert(tnto, table.concat(ydy, _d("VBY")))
end

return table.concat(tnto, _d("cg"))
end

function yvcz.misc.expeditions.saveRewards()
local zupa = yvcz.misc.expeditions

if type(writefile) ~= _d("HkNZCQIZVxY") then
return false
end

return pcall(function()
if type(makefolder) == _d("HkNZCQIZVxY") and type(isfolder) == _d("HkNZCQIZVxY") and not isfolder(_d("OXV1Mg")) then
makefolder(_d("OXV1Mg"))
end

writefile(zupa.rewardPath, game:GetService(_d("MEJDGiUVSg5fVA8")):JSONEncode({
rewards = zupa.rewardLog,
updatedAt = os.time(),
}))
end)
end

function yvcz.misc.expeditions.loadRewards()
local nl = yvcz.misc.expeditions

if type(readfile) ~= _d("HkNZCQIZVxY") or type(isfile) ~= _d("HkNZCQIZVxY") then
return false
end

local pkyk, zp = pcall(function()
if not isfile(nl.rewardPath) then
return nil
end

return readfile(nl.rewardPath)
end)

if not pkyk or type(zp) ~= _d("C0JFAxgX") or #zp == 0 then
return false
end

local mx

if not pcall(function()
mx = game:GetService(_d("MEJDGiUVSg5fVA8")):JSONDecode(zp)
end) then
return false
end

if type(mx) ~= _d("DFdVBhM") or type(mx.rewards) ~= _d("DFdVBhM") then
return false
end

nl.rewardLog = {}

for gkc, cf in ipairs(mx.rewards) do
if type(cf) == _d("DFdVBhM") and type(cf.items) == _d("DFdVBhM") then
table.insert(nl.rewardLog, {
at = tonumber(cf.at) or os.time(),
title = tostring(cf.title or _d("PU5HDxIZTBFZWQ")),
items = cf.items,
})
end
end

return #nl.rewardLog > 0
end

function yvcz.misc.expeditions.start(wqx, bop)
local qgnm = yvcz.misc.expeditions

if qgnm.status(wqx) ~= _d("GUBWAxoRWhRT") then
return false
end

if os.clock() < (qgnm.startedAt[wqx] or 0) then
return false
end

local wn = qgnm.remote()

if not wn then
return false
end

local bnz = qgnm.cards(wqx, bop)
local igre = qgnm.data()
local gdil = igre and tonumber(igre.CardsPerExpedition) or 4

if #bnz < gdil then
return false
end

local tnp = {}

for ffhs, xwz in ipairs(bnz) do
tnp[ffhs] = { cardId = xwz.cardId, borderLevel = xwz.borderLevel }
end

pcall(function()
wn:FireServer(_d("C0JWGAI"), wqx, tnp)
end)

qgnm.startedAt[wqx] = os.clock() + 6
qgnm.askedAt = 0

return true
end

yvcz.misc.icon = function()
local lrow = gethui()

for cdao, oao in ipairs(lrow:QueryDescendants(_d("MVtWDRM8WRpTWw"))) do
if oao.Name == _d("LFdVIxsRXx0") then
local bsc = oao.Parent
local ryrq = bsc and bsc:FindFirstChild(_d("LFdVOQEZTBteUhg4EVUd"))

if ryrq and ryrq.Text == _d("NV9ECRMcVBlYUgUDAw") then
if oao:GetAttribute(_d("OXV1MjsZSxt/VAUY")) then
return true
end

oao:SetAttribute(_d("OXV1MjsZSxt/VAUY"), true)
oao.Image = _d("")
oao.BackgroundTransparency = 1

local function gnnz(nsf, cyb, fh, rcly, sp, av, xnl)
local lgrv = Instance.new(nsf)

lgrv.Size = UDim2.fromOffset(sp, av)
lgrv.Position = UDim2.fromOffset(fh, rcly)
lgrv.BackgroundColor3 = cyb
lgrv.BorderSizePixel = 0
lgrv.Parent = oao

if xnl then
local dwm = Instance.new(_d("LX90BQQeXQo"))
dwm.CornerRadius = UDim.new(0, xnl)
dwm.Parent = lgrv
end

return lgrv
end

local vmbp = Color3.fromRGB(168, 170, 176)

local function czw(vll, rpq, eqgd, jwtw, kht)
local wpm = gnnz(_d("PkRWBxM"), vmbp, vll, rpq, eqgd, jwtw, kht)

wpm.BackgroundTransparency = 1

local eeb = Instance.new(_d("LX9kHgQfUx0"))

eeb.Color = vmbp
eeb.Thickness = 1.4
eeb.LineJoinMode = Enum.LineJoinMode.Round
eeb.Parent = wpm

return wpm
end

czw(3, 1, 6, 4, 1)
czw(1, 4, 16, 12, 2)

local qdos = gnnz(_d("PkRWBxM"), vmbp, 3, 8, 5, 5)

qdos.BackgroundTransparency = 1
qdos.ClipsDescendants = true

local fsu = gnnz(_d("PkRWBxM"), vmbp, 0, 1, 5, 5)

fsu.Rotation = 45
fsu.Parent = qdos

gnnz(_d("PkRWBxM"), vmbp, 9, 9, 4, 4, 4)
gnnz(_d("PkRWBxM"), vmbp, 13, 10, 3, 3, 1)

return true
end
end
end

return false
end

yvcz.misc.tab = ft:Tab({
Name = _d("NV9ECRMcVBlYUgUDAw"),

Image = _d(""),
})

task.defer(function()
for bqr = 1, 20 do
if yvcz.misc.icon() then
break
end

task.wait(0.25)
end
end)

local jjc = {
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
lastText = _d("NllDAh8eX1hGWBoGFVxYT1IeWA"),
tab = nil,
weatherSection = nil,
giveUpSection = nil,
weatherParagraph = nil,
giveUpParagraph = nil,
weatherToggle = nil,
manualSection = nil,
giveUpToggle = nil,
}

getgenv().ACBXPop = jjc

function jjc.options()
local zlj = {}

for hwl, it in pairs(pc.ById) do
if it.type == _d("CFlDAxke") and type(it.name) == _d("C0JFAxgX") then
zlj[#zlj + 1] = it.name
end
end

table.sort(zlj)

return zlj
end

function jjc.idOf(xgci)
for bhqg, pzal in pairs(pc.ById) do
if pzal.type == _d("CFlDAxke") and pzal.name == xgci then
return bhqg
end
end

return nil
end

function jjc.count(hr)
local ok = eday.balances

return tonumber(ok and ok[hr]) or 0
end

im(xl.UseItemResult.OnClientEvent, function(od)
jjc.lastResult = tostring(od)
jjc.lastResultAt = os.clock()
end)

function jjc.pop(hxlo, bnov, qiy)
local fvkf = os.clock()
local ot = {}

for ojyf, tlpy in pairs(hxlo) do
if tlpy then
local ah = jjc.idOf(ojyf)

if ah then
local siv = jjc.count(ah)

if siv <= 0 then
ot[#ot + 1] = ojyf .. _d("WBsXBBkeXVhaUgwC")
else
local pl = math.clamp(math.floor(tonumber(bnov) or 1), 1, siv)

pcall(function()
xl.UseItem:FireServer(ah, pl)
end)

ot[#ot + 1] = ojyf .. _d("WE4") .. pl
task.wait(0.3)
end
end
end
end

if #ot == 0 then
jjc.lastText = qiy .. _d("WBsXBBkEUBFYUEoFFVQdVUMPEg")

return false
end

task.wait(0.4)

jjc.lastText = qiy .. _d("WBsX") .. table.concat(ot, _d("VBY"))

if (jjc.lastResultAt or 0) >= fvkf and jjc.lastResult then
jjc.lastText = jjc.lastText .. _d("WB4") .. jjc.lastResult .. _d("UQ")
end

pcall(function()
zcwe:Notify({
Title = _d("KFlH"),
Description = jjc.lastText,
Lifetime = 5,
})
end)

return true
end

function jjc.status()
local imhp = vyac.weatherWanted(jjc.weathers)
local rvi = vyac.weatherNow or _d("DVhcBBkHVg")
local qyc = {
_d("L1NWHh4VSkIW") .. rvi .. (imhp and (_d("WB5HBQYAURZRDUo") .. imhp .. _d("UQ")) or _d("")),
}

table.insert(qyc, _d("NFdEHkxQ") .. jjc.lastText)

return table.concat(qyc, _d("cg"))
end

function jjc.giveUpStatus()
if jjc.armedAt > 0 then
return _d("OURaDxJQFVhBVgMCGVYfFlEFBFBMEFMXGAMeGAxZFw8YFBZyelYZAkoY") .. jjc.lastText
end

return _d("MVJbD1h6dBlFQ1BW") .. jjc.lastText
end

jjc.tab = ft:Tab({
Name = _d("KFlH"),

Image = _d(""),
})

jjc.icon = function()
local mpw = gethui()

for zs, eg in ipairs(mpw:QueryDescendants(_d("MVtWDRM8WRpTWw"))) do
if eg.Name == _d("LFdVIxsRXx0") then
local uwae = eg.Parent
local duo = uwae and uwae:FindFirstChild(_d("LFdVOQEZTBteUhg4EVUd"))

if duo and duo.Text == _d("KFlH") then
if eg:GetAttribute(_d("OXV1MiYfSDFVWAQ")) then
return true
end

eg:SetAttribute(_d("OXV1MiYfSDFVWAQ"), true)
eg.Image = _d("")
eg.BackgroundTransparency = 1

local hmpt = Color3.fromRGB(168, 170, 176)

local function hfqc(jfv, vyra, rygq, pvvg, rsiy, fcxj)
local wfqw = Instance.new(jfv)

wfqw.Size = UDim2.fromOffset(pvvg, rsiy)
wfqw.Position = UDim2.fromOffset(vyra, rygq)
wfqw.BackgroundColor3 = hmpt
wfqw.BorderSizePixel = 0
wfqw.Parent = eg

if fcxj then
local hb = Instance.new(_d("LX90BQQeXQo"))
hb.CornerRadius = UDim.new(0, fcxj)
hb.Parent = wfqw
end

return wfqw
end

local function guqm(kqrr, ut, sxwr, whf, diy)
local gasg = hfqc(_d("PkRWBxM"), kqrr, ut, sxwr, whf, diy)

gasg.BackgroundTransparency = 1

local fahk = Instance.new(_d("LX9kHgQfUx0"))

fahk.Color = hmpt
fahk.Thickness = 1.3
fahk.LineJoinMode = Enum.LineJoinMode.Round
fahk.Parent = gasg

return gasg
end

guqm(1, 6, 16, 12, 6)
guqm(6, 3, 6, 4, 1)
hfqc(_d("PkRWBxM"), 5, 1, 8, 2, 1)
hfqc(_d("PkRWBxM"), 7, 0, 4, 1, 0)

hfqc(_d("PkRWBxM"), 4, 11, 10, 1, 0)
hfqc(_d("PkRWBxM"), 13, 3, 2, 2, 2)
hfqc(_d("PkRWBxM"), 15, 6, 2, 2, 2)

return true
end
end
end

return false
end

task.defer(function()
for nwxx = 1, 20 do
if jjc.icon() then
break
end

task.wait(0.25)
end
end)

jjc.weatherSection = jjc.tab:Section({
Side = _d("NFNRHg"),
})

jjc.weatherSection:Header({
Name = _d("KFlDAxkeS1hZWUoBFVkMXlIYVoCn35w"),
})

jjc.weatherToggle = jjc.weatherSection:Toggle({
Name = _d("KFlHShkeGAxeUhkTUE8dV0MCEwJL"),
Default = false,
Callback = function(qusl)
if qusl and (next(jjc.weatherPotions) == nil or next(jjc.weathers) == nil) then
jjc.onWeather = false

pcall(function()
jjc.weatherToggle:UpdateState(false)
end)

zcwe:Dialog({
Title = _d("KFlH"),
Description = _d("LF9UAVYRTFhaUgsFBBgXWFJKARVZDF5SGFYRVhwWWAQTUEgXQl4FGFBeEUREHlZdGChZR0oYFV0cRRcIGQRQWEJYSh0eVw8WQAIXBBgMWRcOBBlWExZWBBJQTxBTWUQ"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})

return
end

jjc.onWeather = qusl

if qusl then
jjc.weatherSpent = nil
end
end,
}, _d("CFlHNRkeZwxeUhkTL08dV0MCEwJL"))

jjc.weatherSection:Dropdown({
Name = _d("L1NWHh4VSgs"),
Multi = true,
Required = false,
Options = { _d("LE9HAhkfVg"), _d("OlpeEAwRShw"), _d("NF9QAgIeURZR"), _d("L19ZDgUEVwpb"), _d("K15WGB8eXxlY"), _d("K19ZDQMcWQpfQxM"), _d("NVlZCwQTUFhyWAcXGVY"), _d("LlleDg"), _d("NVdTD1YZVlh+UgsAFVY"), _d("NVdZDRc") },
Callback = function(scm)
jjc.weathers = {}

if type(scm) == _d("DFdVBhM") then
for ks, zkho in pairs(scm) do
if zkho then
jjc.weathers[ks] = true
end
end
end
end,
}, _d("D1NWHh4VSgs"))

jjc.weatherSection:Dropdown({
Name = _d("KFlDAxkeSw"),
Multi = true,
Required = false,
Options = jjc.options(),
Callback = function(xgxk)
jjc.weatherPotions = {}

if type(xgxk) == _d("DFdVBhM") then
for viog, yzn in pairs(xgxk) do
if yzn then
jjc.weatherPotions[viog] = true
end
end
end
end,
}, _d("CFlDAxkeSw"))

jjc.weatherSection:Input({
Name = _d("OVtYHxgE"),
Placeholder = _d("SQ"),
AcceptedCharacters = _d("NkNaDwQZWw"),
Callback = function(jwi)
local ed = math.floor(tonumber(jwi) or 1)

jjc.weatherAmount = math.clamp(ed, 1, 50)
end,
}, _d("GVtYHxgE"))

jjc.weatherParagraph = jjc.weatherSection:Paragraph({
Header = _d("K0JWHgMD"),
Body = jjc.status(),
})

jjc.manualSection = jjc.tab:Section({
Side = _d("NFNRHg"),
})

jjc.manualSection:Header({
Name = _d("LUVSSgYfTBFZWRlWHlcPFsf10do"),
})

jjc.manualSection:Dropdown({
Name = _d("KFlDAxkeSw"),
Multi = true,
Required = false,
Options = jjc.options(),
Callback = function(zpx)
jjc.manualPotions = {}

if type(zpx) == _d("DFdVBhM") then
for pgr, fws in pairs(zpx) do
if fws then
jjc.manualPotions[pgr] = true
end
end
end
end,
}, _d("FVdZHxccZwhZQwMZHks"))

jjc.manualSection:Input({
Name = _d("OVtYHxgE"),
Placeholder = _d("SQ"),
AcceptedCharacters = _d("NkNaDwQZWw"),
Callback = function(wvme)
local luzo = math.floor(tonumber(wvme) or 1)

jjc.manualAmount = math.clamp(luzo, 1, 50)
end,
}, _d("FVdZHxccZxlbWB8YBA"))

jjc.manualSection:Button({
Name = _d("LUVSSgYfTBFZWRk"),
Callback = function()
if next(jjc.manualPotions) == nil then
zcwe:Notify({
Title = _d("LUVSSgYfTBFZWRk"),
Description = _d("KF9UAVYRTFhaUgsFBBgXWFJKBh9MEVlZSh8eGAxeUkoSAlcIUlgdGFBeEUREHlg"),
Lifetime = 6,
})

return
end

task.spawn(function()
jjc.pop(jjc.manualPotions, jjc.manualAmount, _d("NVdZHxcc"))
end)
end,
})

jjc.giveUpSection = jjc.tab:Section({
Side = _d("Kl9QAgI"),
})

jjc.giveUpSection:Header({
Name = _d("OVBDDwRQXxFAUkoDAA"),
})

jjc.giveUpToggle = jjc.giveUpSection:Toggle({
Name = _d("KFlHShcWTB1EFwtWBFcPU0VKERlOHRZCGg"),
Default = false,
Callback = function(jtik)
if jtik and next(jjc.giveUpPotions) == nil then
jjc.afterGiveUp = false

pcall(function()
jjc.giveUpToggle:UpdateState(false)
end)

zcwe:Dialog({
Title = _d("KFlH"),
Description = _d("LF9UAVYRTFhaUgsFBBgXWFJKBh9MEVlZShAZSgtCF0dWBFAdRFJKHwMYFllDAh8eX1hCWEoSAlEWXRcLEARdChZDAhNQSg1YFwUCGF0KQV4ZE14"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})

return
end

jjc.afterGiveUp = jtik
end,
}, _d("CFlHNRcWTB1EaAspBFcPU0U1ERlOHWlCGg"))

jjc.giveUpSection:Dropdown({
Name = _d("KFlDAxkeSw"),
Multi = true,
Required = false,
Options = jjc.options(),
Callback = function(wwxh)
jjc.giveUpPotions = {}

if type(wwxh) == _d("DFdVBhM") then
for jea, qmbk in pairs(wwxh) do
if qmbk then
jjc.giveUpPotions[jea] = true
end
end
end
end,
}, _d("CFlDAxkeSycE"))

jjc.giveUpSection:Input({
Name = _d("OVtYHxgE"),
Placeholder = _d("SQ"),
AcceptedCharacters = _d("NkNaDwQZWw"),
Callback = function(phq)
local tbb = math.floor(tonumber(phq) or 1)

jjc.giveUpAmount = math.clamp(tbb, 1, 50)
end,
}, _d("GVtYHxgEZ0o"))

jjc.giveUpParagraph = jjc.giveUpSection:Paragraph({
Header = _d("K0JWHgMD"),
Body = jjc.giveUpStatus(),
})

local zhpb = {
autoSave = false,
autoRoll = true,
autoQuickRoll = true,

loading = false,
selected = nil,
lastText = _d("NllDAh8eX1hBRQMCBF0WFk4PAlAVWEZeCR1QWVhFVhwTUF4RWlJKFBVUF0EZ"),
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
theme = _d("LlleDg"),
accent = nil,
savesAt = 0,
autoSaveAt = 0,
themeAt = 0,
capAt = 0,
scaleAnchor = nil,
statusAt = 0,
knownSaves = _d(""),
}

getgenv().ACBXSettings = zhpb

zhpb.presets = {
Void = { panel = Color3.fromRGB(15, 15, 15), element = Color3.fromRGB(0, 0, 0), accent = Color3.fromRGB(168, 170, 176) },
Ocean = { panel = Color3.fromRGB(6, 16, 26), element = Color3.fromRGB(8, 26, 40), accent = Color3.fromRGB(77, 166, 255) },
Ember = { panel = Color3.fromRGB(26, 10, 8), element = Color3.fromRGB(36, 16, 10), accent = Color3.fromRGB(255, 122, 69) },
Sakura = { panel = Color3.fromRGB(26, 9, 18), element = Color3.fromRGB(38, 14, 26), accent = Color3.fromRGB(255, 125, 177) },
Mint = { panel = Color3.fromRGB(7, 20, 14), element = Color3.fromRGB(9, 30, 22), accent = Color3.fromRGB(77, 227, 160) },
Graphite = { panel = Color3.fromRGB(20, 20, 22), element = Color3.fromRGB(30, 30, 33), accent = Color3.fromRGB(200, 200, 206) },
}

zhpb.themeOrder = { _d("LlleDg"), _d("N1VSCxg"), _d("PVtVDwQ"), _d("K1dcHwQR"), _d("NV9ZHg"), _d("P0RWGh4ZTB0") }

local oaxf = _d("OXV1SiQVWhFEQwJZA10MQl4EEQM")

function zhpb.saves()
local atzr, btnu = pcall(function()
return cafx:RefreshConfigList()
end)

if atzr and type(btnu) == _d("DFdVBhM") then
table.sort(btnu)
return btnu
end

return {}
end

function zhpb.autoLoadName()
local nb, kbq = pcall(function()
if isfile and isfile(oaxf .. _d("V1dCHhkcVxlSGR4OBA")) then
return readfile(oaxf .. _d("V1dCHhkcVxlSGR4OBA"))
end
end)

if nb and type(kbq) == _d("C0JFAxgX") then
kbq = kbq:gsub(_d("JhNEQQ"), _d("")):gsub(_d("XUUcTg"), _d(""))

if kbq ~= _d("") then
return kbq
end
end

return nil
end

function zhpb.setAutoLoad(jtii)

return (pcall(function()
writefile(oaxf .. _d("V1dCHhkcVxlSGR4OBA"), jtii or _d(""))
end))
end

function zhpb.delete(smjo)
if type(smjo) ~= _d("C0JFAxgX") or smjo == _d("") then
return false, _d("KF9UAVYRGAtXQQ9WFlEUUxcMHwJLDBg")
end

local cmb = oaxf .. _d("Vw") .. smjo .. _d("VlxEBRg")
local vcpw = false

pcall(function()
vcpw = isfile ~= nil and isfile(cmb) == true
end)

if not vcpw then
return false, _d("LF5SGBNQUQsWWQVWFlEUUxcJFxxUHVIX") .. smjo .. _d("Vg")
end

local fprn, an = pcall(function()
delfile(cmb)
end)

if not fprn then
return false, tostring(an)
end

if zhpb.autoLoadName() == smjo then
zhpb.setAutoLoad(_d(""))
end

if zhpb.selected == smjo then
zhpb.selected = nil
zhpb.selectionShown = nil
end

zhpb.knownSaves = nil
zhpb.savesAt = 0

return true
end

function zhpb.save(bqd)
if type(bqd) ~= _d("C0JFAxgX") or bqd:gsub(_d("XUU"), _d("")) == _d("") then
return false, _d("P19BD1YEUB0WRAsAFRgZFlkLGxUYHl9FGQJe")
end

local aqb, nui, hkyc = pcall(function()
return cafx:SaveConfig(bqd)
end)

if not aqb then
return false, tostring(nui)
end

if nui ~= true then
return false, tostring(hkyc or _d("DF5SShAZVB0WVAUDHFxYWFgeVhJdWEFFAwIEXRY"))
end

return true
end

function zhpb.replayOff(vgwr)
local wty, gds = pcall(function()
return readfile(oaxf .. _d("Vw") .. vgwr .. _d("VlxEBRg"))
end)

if not wty or type(gds) ~= _d("C0JFAxgX") then
return
end

local myyb
wty, myyb = pcall(function()
return game:GetService(_d("MEJDGiUVSg5fVA8")):JSONDecode(gds)
end)

if not wty or type(myyb) ~= _d("DFdVBhM") or type(myyb.objects) ~= _d("DFdVBhM") then
return
end

for ruat, wwb in ipairs(myyb.objects) do
if wwb.type == _d("LFlQDRoV") and wwb.state == false and wwb.flag then
local ftg = cafx.Options[wwb.flag]

if ftg then
pcall(function()
ftg:UpdateState(false)
end)
end
end
end
end

function zhpb.load(ins)
if type(ins) ~= _d("C0JFAxgX") or ins == _d("") then
return false, _d("KF9UAVYRGAtXQQ9WFlEUUxcMHwJLDBg")
end

zhpb.loading = true
lqz = true

local duax, lonb, pnad = pcall(function()
return cafx:LoadConfig(ins)
end)

if not duax then
zhpb.loading = false
lqz = false

return false, tostring(lonb)
end

if lonb ~= true then
zhpb.loading = false
lqz = false

return false, tostring(pnad or _d("DF5SShAZVB0WVAUDHFxYWFgeVhJdWERSCxI"))
end

task.wait(0.25)
zhpb.replayOff(ins)
zhpb.loading = false
lqz = false

return true
end

zhpb.uiPath = _d("OXV1MlkFUVZcRAUY")

function zhpb.saveUi()
if type(writefile) ~= _d("HkNZCQIZVxY") then
return false
end

if zhpb.restoring then
return false
end

local vir = zhpb.accent

local ovl = {
theme = zhpb.theme,
scale = tonumber(string.format(_d("XRgFDA"), zhpb.scaleTarget or 1)),
accent = vir and string.format(_d("XVIbTxJcHRw"),
math.floor(vir.R * 255 + 0.5),
math.floor(vir.G * 255 + 0.5),
math.floor(vir.B * 255 + 0.5)) or nil,
}

return pcall(function()
if type(makefolder) == _d("HkNZCQIZVxY") and type(isfolder) == _d("HkNZCQIZVxY") and not isfolder(_d("OXV1Mg")) then
makefolder(_d("OXV1Mg"))
end

writefile(zhpb.uiPath, game:GetService(_d("MEJDGiUVSg5fVA8")):JSONEncode(ovl))
end)
end

function zhpb.loadUi()
if type(readfile) ~= _d("HkNZCQIZVxY") or type(isfile) ~= _d("HkNZCQIZVxY") then
return nil
end

local le, cnn = pcall(function()
if not isfile(zhpb.uiPath) then
return nil
end

return readfile(zhpb.uiPath)
end)

if not le or type(cnn) ~= _d("C0JFAxgX") or cnn == _d("") then
return nil
end

local ncm
le, ncm = pcall(function()
return game:GetService(_d("MEJDGiUVSg5fVA8")):JSONDecode(cnn)
end)

if not le or type(ncm) ~= _d("DFdVBhM") then
return nil
end

zhpb.restoring = true

if type(ncm.theme) == _d("C0JFAxgX") and zhpb.presets[ncm.theme] then
zhpb.theme = ncm.theme

pcall(function()
zhpb.themeDropdown:UpdateSelection(ncm.theme)
zhpb.themeDropdown:UpdateName(_d("LF5SBxNKGA") .. ncm.theme)
end)
end

local szq, waz, hahm = tostring(ncm.accent or _d("")):match(_d("Jh4SDl1ZFFATU0FfXBBdUhxDUg"))

if szq then
local tab = Color3.fromRGB(tonumber(szq), tonumber(waz), tonumber(hahm))

zhpb.accent = tab

pcall(function()
zhpb.accentPicker:SetColor(tab)
end)
else
zhpb.accent = nil

local eprm = zhpb.presets[zhpb.theme] or zhpb.presets.Void

pcall(function()
zhpb.accentPicker:SetColor(eprm.accent)
end)
end

local igf = tonumber(ncm.scale)

if igf then
igf = math.clamp(igf, 0.5, zhpb.scaleCeiling())

zhpb.scaleTarget = igf
zhpb.scaleAnchor = nil

pcall(function()
zhpb.scaleSlider:UpdateValue(igf)
end)
end

zhpb.applyTheme()

zhpb.restoring = false
zhpb.saveUi()

return ncm
end

zhpb.prioPath = _d("OXV1MlkAShFZRQMCCRYSRVgE")

function zhpb.groupAt(cch)
for uqd, kzqs in ipairs(fq.prioGroups) do
if kzqs.rank == cch then
return kzqs
end
end
end

function zhpb.paintPriority()
if zhpb.prioBusy then
return
end

zhpb.prioBusy = true

for ma = 1, #fq.prioGroups do
local lrq = zhpb.prioRows and zhpb.prioRows[ma]
local muqf = zhpb.groupAt(ma)

if lrq and muqf then
pcall(function()
lrq:UpdateSelection(muqf.label)
end)
end
end

zhpb.prioBusy = false
end

function zhpb.setPriority(dle, no)
if zhpb.prioBusy or zhpb.prioBuilding then
return
end

local edh

for ic, mqp in ipairs(fq.prioGroups) do
if mqp.id == dle then
edh = mqp.rank
mqp.rank = no
end
end

if edh and edh ~= no then
for to, pjfs in ipairs(fq.prioGroups) do
if pjfs.id ~= dle and pjfs.rank == no then
pjfs.rank = edh
end
end
end

zhpb.paintPriority()
zhpb.savePriority()
end

function zhpb.savePriority()
if type(writefile) ~= _d("HkNZCQIZVxY") then
return false
end

local aoy = {}

for jkd, ozl in ipairs(fq.prioGroups) do
aoy[ozl.id] = ozl.rank
end

return pcall(function()
if type(makefolder) == _d("HkNZCQIZVxY") and type(isfolder) == _d("HkNZCQIZVxY") and not isfolder(_d("OXV1Mg")) then
makefolder(_d("OXV1Mg"))
end

writefile(zhpb.prioPath, game:GetService(_d("MEJDGiUVSg5fVA8")):JSONEncode({ ranks = aoy }))
end)
end

function zhpb.loadPriority()
if type(readfile) ~= _d("HkNZCQIZVxY") or type(isfile) ~= _d("HkNZCQIZVxY") then
return nil
end

local zbjm, jdf = pcall(function()
if not isfile(zhpb.prioPath) then
return nil
end

return readfile(zhpb.prioPath)
end)

if not zbjm or type(jdf) ~= _d("C0JFAxgX") or jdf == _d("") then
return nil
end

local iv

zbjm, iv = pcall(function()
return game:GetService(_d("MEJDGiUVSg5fVA8")):JSONDecode(jdf)
end)

if not zbjm or type(iv) ~= _d("DFdVBhM") or type(iv.ranks) ~= _d("DFdVBhM") then
return nil
end

return iv.ranks
end

function zhpb.restorePriority()
local swb = zhpb.loadPriority()

if not swb then
return
end

local kc = {}
local xlz = {}

for ntq, wys in ipairs(fq.prioGroups) do
local kjyt = tonumber(swb[wys.id])

if kjyt then
kc[#kc + 1] = { group = wys, rank = kjyt }
xlz[wys.id] = true
end
end

table.sort(kc, function(es, wsx)
return es.rank < wsx.rank
end)

for gqu, gz in ipairs(kc) do
gz.group.rank = gqu
end

local krnu = #kc + 1

for bubl, ooe in ipairs(fq.prioGroups) do
if not xlz[ooe.id] then
ooe.rank = krnu
krnu = krnu + 1
end
end

zhpb.paintPriority()
end

function zhpb.colourKey(ott)
return math.floor(ott.R * 255) .. _d("VA") .. math.floor(ott.G * 255) .. _d("VA") .. math.floor(ott.B * 255)
end

function zhpb.guiRoot()

if not gsk() then
return nil
end

if zhpb.root and zhpb.root.Parent then
return zhpb.root
end

local tjy = gethui and gethui() or game:GetService(_d("O1lFDzEFUQ"))

for nlp, wrj in ipairs(tjy:GetChildren()) do
if wrj:IsA(_d("K1VFDxMefw1f")) and wrj:FindFirstChild(_d("OldEDw")) then
zhpb.root = wrj.Base

return zhpb.root
end
end

return nil
end

function zhpb.applyTheme()
local tgmy = zhpb.guiRoot()
local kyd = zhpb.presets[zhpb.theme] or zhpb.presets.Void

if not tgmy then
return false
end

local lh = {
panel = kyd.panel,
element = kyd.element,
accent = zhpb.accent or kyd.accent,
}

local rzd = {}

for wvfr, xtu in pairs(zhpb.presets) do
rzd[zhpb.colourKey(xtu.panel)] = _d("CFdZDxo")
rzd[zhpb.colourKey(xtu.element)] = _d("HVpSBxMeTA")
rzd[zhpb.colourKey(xtu.accent)] = _d("GVVUDxgE")
end

rzd[zhpb.colourKey(lh.accent)] = _d("GVVUDxgE")

if rzd[zhpb.colourKey(tgmy.BackgroundColor3)] == _d("CFdZDxo") then
tgmy.BackgroundColor3 = lh.panel
end

for znnr, bqrp in ipairs(tgmy:GetDescendants()) do
if bqrp:IsA(_d("P0NeJRQaXRtC")) then
local dnc = rzd[zhpb.colourKey(bqrp.BackgroundColor3)]

if dnc then
bqrp.BackgroundColor3 = lh[dnc]
end
elseif bqrp:IsA(_d("LX9kHgQfUx0")) then
if rzd[zhpb.colourKey(bqrp.Color)] == _d("GVVUDxgE") then
bqrp.Color = lh.accent
end
end

if bqrp:IsA(_d("MVtWDRM8WRpTWw")) and bqrp.Name == _d("LFdVIxsRXx0") and bqrp.Image ~= _d("") then
bqrp.ImageColor3 = lh.accent
bqrp.ImageTransparency = 0
bqrp:SetAttribute(_d("OXV1MiIRWjlVVA8YBA"), lh.accent)

if not bqrp:GetAttribute(_d("OXV1MiIRWixfWR4")) then
bqrp:SetAttribute(_d("OXV1MiIRWixfWR4"), true)

local function sgby()
local ztl = bqrp:GetAttribute(_d("OXV1MiIRWjlVVA8YBA"))

if ztl and bqrp.ImageColor3 ~= ztl then
bqrp.ImageColor3 = ztl
end

if bqrp.ImageTransparency ~= 0 then
bqrp.ImageTransparency = 0
end
end

im(bqrp:GetPropertyChangedSignal(_d("MVtWDRMkShlYRBoXAl0WVU4")), sgby)
im(bqrp:GetPropertyChangedSignal(_d("MVtWDRMzVxRZRVk")), sgby)
end
end
end

return true
end

local sac = ft:Tab({
Name = _d("NVdH"),
Image = _d("ClRPCwUDXQxfU1BZXw5IBQZaQUUBSwc"),
})

local fwr = {
holdFor = 25,
fly = {
on = false,
speed = 55,
connection = nil,
},
islands = {
{ name = _d("NFlVCA8"), kind = _d("D1lFBhI"), arg = _d("FFlVCA8") },
{ name = _d("OVRWBBIfVh1SFyMFHFkWUg"), kind = _d("EUVbCxgU"), arg = _d("GVRWBBIfVh1SaAMFHFkWUg") },
{ name = _d("LEFeBFYyXRlVXw8F"), kind = _d("EUVbCxgU"), arg = _d("DEFeBCkSXRlVXw8F"), note = _d("WGJfD1YDXQpAUhhWFEoXRkRKHwQYDVhDAxpQQRdDFwIXBl1YRVYDGhVcWEJfDwQVFg") },
{ name = _d("L19ZDhsZVBQWfhkaFQ"), kind = _d("EUVbCxgU"), arg = _d("D19ZDhsZVBRpXhkaFQ"), note = _d("WGJfD1YDXQpAUhhWFEoXRkRKHwQYDVhDAxpQQRdDFwIXBl1YRVYDGhVcWEJfDwQVFg") },
},
npcs = {
{ name = _d("O1dFDlY9XQpRUg"), npc = _d("HkNEDykeSBs"), attr = _d("NmZ0IxI"), at = Vector3.new(-272, 33, -40347) },
{ name = _d("PU5HDxIZTBFZWRk"), npc = _d("PU5HDxIZTBFZWSQmMw"), attr = _d("PU5HDxIZTBFZWSQmMw"), at = Vector3.new(-347, 35, -40361) },
{ name = _d("PFNUBRgDTApDVB4"), npc = _d("HFNUBRgDTApDVB4pHkgb"), attr = _d("NmZ0IxI"), at = Vector3.new(-264, 33, -40331) },
{ name = _d("O0RWDAI"), npc = _d("G0RWDAIvVghV"), attr = _d("NmZ0IxI"), at = Vector3.new(-330, 33, -40277) },
{ name = _d("K11eBhpQbApTUg"), npc = _d("K11eBhokSh1TeTo1"), attr = _d("K11eBhokSh1TeTo1"), at = Vector3.new(-290, 32, -40283) },
{ name = _d("O1dFDlY5VhxTTw"), npc = _d("G1dFDikZVhxTTzUYAFs"), attr = _d("NmZ0IxI"), at = Vector3.new(-313, 33, -40282) },
{ name = _d("KFdUAVY9XQpVXwsYBA"), npc = _d("CFdUASkdXQpVXwsYBA"), attr = _d("NmZ0IxI"), at = Vector3.new(-301, 33, -40270) },
{ name = _d("PENZDRMfVg"), npc = _d("HENZDRMfVidYRwk"), attr = _d("NmZ0IxI"), at = Vector3.new(-339, 41, -40399) },
{ name = _d("Pl9EAhMCVRlY"), npc = _d("Pl9EAhMCVRlYeTo1"), attr = _d("Pl9EAhMCVRlYeTo1"), at = Vector3.new(-493, 14, -40262) },
{ name = _d("K1NUGBMEGDlYUAYTAg"), npc = _d("K1NUGBMEeRZRWw8EPmg7"), attr = _d("K1NUGBMEeRZRWw8EPmg7"), at = Vector3.new(-209, 34, -40382) },
{ name = _d("MFdbBhkHXR1YFzkeH0g"), npc = _d("KENaGh0ZVlh7UhgVGFkWQg"), at = Vector3.new(-29989, 78, -30259) },
{ name = _d("K1dUGB8WURtTFysaBFkK"), landmark = _d("K1dUGB8WURtTdgYCEUo"), island = _d("GVRWBBIfVh1SaAMFHFkWUg"), at = Vector3.new(-3548, 11, -40462) },
{ name = _d("MFdFDhUfSh0WYwUBFUo"), npc = _d("MFdFDhUfSh1iWB0TAg"), island = _d("GVRWBBIfVh1SaAMFHFkWUg"), at = Vector3.new(-3795, 25, -40250) },
{ name = _d("MUVbCxgUGD5fRAITAlUZWA"), npc = _d("MUVbCxgUfhFFXw8EHVkWeGcp"), attr = _d("MUVbCxgUfhFFXw8EHVkWeGcp"), island = _d("GVRWBBIfVh1SaAMFHFkWUg"), at = Vector3.new(-3825, 23, -40260) },
{ name = _d("PF9QDRMC"), npc = _d("PF9QDRMCdih1"), attr = _d("PF9QDRMCdih1"), island = _d("DEFeBCkSXRlVXw8F"), at = Vector3.new(-5998, 26, -40565) },
{ name = _d("K1NUGBMEGDxfUA0TAg"), npc = _d("K1NUGBMEfBFRUA8EPmg7"), attr = _d("K1NUGBMEfBFRUA8EPmg7"), island = _d("D19ZDhsZVBRpXhkaFQ"), at = Vector3.new(-7740, 17, -40343) },
},
}

function fwr.hold()
wf.tpHoldUntil = os.clock() + fwr.holdFor

wf.deepPhase = _d("EVJbDw")
wf.deepStageAt = 0
wf.phase = _d("EVJbDw")
wf.nextCastAt = 0
wf.watchdogAt = 0

return fwr.holdFor
end

function fwr.point(ak)
local wig

if ak.landmark then
wig = workspace:FindFirstChild(ak.landmark)
else
local vbfs = workspace:FindFirstChild(_d("NmZ0GQ"))

if vbfs then
for pvl, tosb in ipairs(vbfs:GetChildren()) do
local nhx

if ak.attr then
nhx = tosb:GetAttribute(ak.attr) == ak.npc
else
nhx = tosb.Name == ak.npc
end

if nhx then
wig = tosb
break
end
end
end
end

if wig then
local rnkk = wig.PrimaryPart
or wig:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"), true)
or wig:FindFirstChildWhichIsA(_d("OldEDyYRSgw"), true)

if rnkk then
return rnkk.Position
end
end

return ak.at
end

function fwr.resume()
if not wf.enabled then
return
end

local saiy = omhv.Character
local tmvp = saiy and saiy:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not tmvp or (tmvp.Position - fre).Magnitude < 40 then
return
end

pcall(function()
wf.recover()
end)
end

function fwr.standAt(dpje)
local ixjv = omhv.Character
local vvnj = ixjv and ixjv:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not vvnj or not dpje then
return false
end

local dyk = RaycastParams.new()
dyk.FilterType = Enum.RaycastFilterType.Exclude
dyk.FilterDescendantsInstances = { ixjv }

local llo = workspace:Raycast(dpje + Vector3.new(0, 10, 0), Vector3.new(0, -80, 0), dyk)
local nw = dpje.Y

if llo and llo.Instance.Name ~= _d("L1dDDwQ") then
local tmtb = llo.Position.Y + 3.2

if math.abs(tmtb - dpje.Y) <= 8 then
nw = tmtb
end
end

local ecd = Vector3.new(vvnj.Position.X - dpje.X, 0, vvnj.Position.Z - dpje.Z)

if ecd.Magnitude < 1 then
ecd = Vector3.new(4, 0, 0)
else
ecd = ecd.Unit * 4
end

local fnv = Vector3.new(dpje.X + ecd.X, nw, dpje.Z + ecd.Z)

vvnj.CFrame = CFrame.new(fnv)

return true
end

function fwr.unlock()
local fd = {
{ id = _d("GVRWBBIfVh1SaAMFHFkWUg"), at = Vector3.new(-3825, 24, -40260) },
{ id = _d("DEFeBCkSXRlVXw8F"), at = Vector3.new(-6180, 40, -40350) },
{ id = _d("D19ZDhsZVBRpXhkaFQ"), at = Vector3.new(-7480, 30, -40350) },
}
local vbhr = {}

for gekv, pvzs in ipairs(fd) do
local tbg = xl.FishingGetState:InvokeServer()

if tbg and tbg.areas and tbg.areas[pvzs.id] == true then
table.insert(vbhr, pvzs.id .. _d("QhZWBgQVWRxPFwUGFVY"))
else
fwr.hold()
fwr.standAt(pvzs.at)
task.wait(2.4)

local mhpa = xl.FishingGetState:InvokeServer()

table.insert(vbhr, pvzs.id .. (mhpa and mhpa.areas and mhpa.areas[pvzs.id] and _d("QhZCBBofWxNTUw") or _d("QhZRCx8cXRw")))
end
end

fwr.hold()
pcall(function()
xl.TeleportToWorld:FireServer(_d("FFlVCA8"))
end)
task.wait(2.5)

return table.concat(vbhr, _d("WPSASg"))
end

function fwr.flyToggle(whkl)
fwr.fly.on = whkl

if not whkl then
return _d("PlpOShkWXlY")
end

local eqf = omhv.Character
local fqna = eqf and eqf:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not fqna then
return _d("NlkXCR4RShlVQw8EUEwXFlsDEAQW")
end

fwr.fly.height = fqna.Position.Y

if fwr.fly.connection then
return _d("PlpOShkeFg")
end

local bph = game:GetService(_d("LUVSGD8eSA1CZA8EBlEbUw"))

fwr.fly.connection = im(game:GetService(_d("KkNZORMCThFVUg")).Heartbeat, function(zy)
if not fwr.fly.on then
return
end

local az = omhv.Character
local ohwg = az and az:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not ohwg then
return
end

local vmz = workspace.CurrentCamera
local smgj = Vector3.zero

if vmz then
local apbz = vmz.CFrame.LookVector
local lm = Vector3.new(apbz.X, 0, apbz.Z)

if lm.Magnitude > 0.01 then
lm = lm.Unit
end

local qjxy = Vector3.new(lm.Z, 0, -lm.X)

if bph:IsKeyDown(Enum.KeyCode.W) then
smgj = smgj + lm
end

if bph:IsKeyDown(Enum.KeyCode.S) then
smgj = smgj - lm
end

if bph:IsKeyDown(Enum.KeyCode.D) then
smgj = smgj + qjxy
end

if bph:IsKeyDown(Enum.KeyCode.A) then
smgj = smgj - qjxy
end
end

local buno = 0

if bph:IsKeyDown(Enum.KeyCode.Space) then
buno = 1
elseif bph:IsKeyDown(Enum.KeyCode.LeftControl) then
buno = -1
end

local pwto = fwr.fly.speed or 55
local iht = smgj * pwto * zy + Vector3.new(0, buno * pwto * 0.6 * zy, 0)

if iht.Magnitude < 0.001 then
return
end

ohwg.CFrame = ohwg.CFrame + iht
ohwg.AssemblyLinearVelocity = Vector3.zero
end)

return _d("PlpOShkeFg")
end

function fwr.go(mg)
fwr.hold()

if mg.kind == _d("D1lFBhI") then
pcall(function()
xl.TeleportToWorld:FireServer(mg.arg)
end)

return _d("K1NZHlYEUB0W") .. mg.name .. _d("WEJSBhMAVwpCGQ")
end

if mg.kind == _d("EUVbCxgU") then
pcall(function()
xl.FishingIslandTeleport:FireServer(mg.arg)
end)

return _d("K1NZHlYEUB0W") .. mg.name .. _d("WEJSBhMAVwpCGQ") .. tostring(mg.note or _d(""))
end

local zkx = fwr.point(mg)
local itl = omhv.Character
local mlpz = itl and itl:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if zkx and mlpz and (mlpz.Position - zkx).Magnitude > 1500 then
pcall(function()
if mg.island then
xl.FishingIslandTeleport:FireServer(mg.island)
else
xl.TeleportToWorld:FireServer(_d("FFlVCA8"))
end
end)

task.wait(mg.island and 3.5 or 4.5)

zkx = fwr.point(mg)

mlpz = omhv.Character and omhv.Character:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if zkx and mlpz and (mlpz.Position - zkx).Magnitude > 1500 then
return mg.name .. _d("WF9EShkeGA") .. tostring(mg.island or _d("DF5SShofWhpP"))
.. _d("WBsXHh4VGB9XWg9WAl0eQ0QPBVBMEFdDSgICUQgWQgQCGVRYX0NKHhFLWFRSDxhQSh1XVAITFBgXWFQPWA")
end
end

if not zkx then
return mg.name .. _d("WF9EShgfTFhfWUoCGFELFkAFBBxcVg")
end

if not fwr.standAt(zkx) then
return _d("NlkXCR4RShlVQw8EUEwXFloFABUW")
end

task.delay(fwr.holdFor + 2, function()
pcall(fwr.resume)
end)

return _d("K0JYBRJQWh1FXg4TUA") .. mg.name .. _d("Vg")
end

fwr.islandSection = sac:Section({ Side = _d("NFNRHg") })
fwr.islandSection:Header({ Name = _d("MUVbCxgUS1jGqOXrn4D3") })

fwr.npcSection = sac:Section({ Side = _d("Kl9QAgI") })
fwr.npcSection:Header({ Name = _d("NmZ0GVaAp+u7") })

for rtz, tn in ipairs(fwr.islands) do
fwr.islandSection:Button({
Name = tn.name,
Callback = function()
task.spawn(function()
local olio = fwr.go(tn)

zcwe:Notify({
Title = _d("LFNbDwYfSgw"),
Description = olio,
Lifetime = 6,
})
end)
end,
})
end

fwr.state = wf
fwr.tab = sac
fwr.islandSection:Button({
Name = _d("LVhbBRUbGBlaW0ofA1QZWFMZ"),
Callback = function()
task.spawn(function()
local kr = fwr.unlock()

zcwe:Notify({
Title = _d("MUVbCxgUSw"),
Description = kr,
Lifetime = 10,
})
end)
end,
})

fwr.flySection = sac:Section({ Side = _d("NFNRHg") })
fwr.flySection:Header({ Name = _d("PlpOSpTssJeOuA") })

fwr.flySection:Toggle({
Name = _d("PlpOSl4neStyG0olAFkbUxcfBlwYO0JFBlYUVw9YHg"),
Default = false,
Callback = function(coi)
local karr = fwr.flyToggle(coi)

zcwe:Notify({
Title = _d("PlpO"),
Description = karr,
Lifetime = 4,
})
end,
}, _d("GVVVEikWVAE"))

getgenv().ACBXTeleport = fwr

getgenv().ACBXDeepWater = arc

pcall(arc.dropStale)

for wk, rl in ipairs(fwr.npcs) do
fwr.npcSection:Button({
Name = rl.name,
Callback = function()
task.spawn(function()
local xe = fwr.go(rl)

zcwe:Notify({
Title = _d("LFNbDwYfSgw"),
Description = xe,
Lifetime = 6,
})
end)
end,
})
end

local qsi = aoo:Section({ Side = _d("NFNRHg") })

qsi:Header({ Name = _d("PF9QDR8eX1jUrOWZyLc") })

local hrcx = {
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

local rde = (tonumber(getgenv().ACBXDigGeneration) or 0) + 1
getgenv().ACBXDigGeneration = rde

function hrcx.read()
local mxfr, sml = pcall(function()
return xl.DigGetState:InvokeServer()
end)

return mxfr and type(sml) == _d("DFdVBhM") and sml or nil
end

function hrcx.call(btdz, watd)
local veqb, mdx = pcall(function()
return xl.DigShop:InvokeServer(btdz, watd)
end)

task.wait(2.5)

return veqb and mdx == true
end

function hrcx.wear()
local pxta = omhv.Character

if not pxta then
return false
end

local ifx = pxta:FindFirstChildOfClass(_d("MENaCxgfURw"))
local wbo = omhv:FindFirstChild(_d("OldUAQYRWxM"))

if not (ifx and wbo) then
return false
end

ifx:UnequipTools()
task.wait(0.4)

for efys = 1, 8 do
for rarl, hrm in ipairs(wbo:GetChildren()) do
if hrm:IsA(_d("LFlYBg")) and hrm.Name:find(_d("JnJeDSUYVw5TWw")) then
ifx:EquipTool(hrm)

return true
end
end

task.wait(0.5)
end

return false
end

function hrcx.run()
local dhr = hrcx.read()

if not dhr then
return _d("LF5SShIZX1hFXwUGUFELFlkFAlBZFkVADwQZVh8Y")
end

local tv = {}

pcall(function()
local yer = xl.FishingGetState:InvokeServer()

tv = yer and yer.areas or {}
end)

if not (tv.abandoned_island and tv.twin_beaches and tv.windmill_isle) then
fwr.unlock()
task.wait(1)
end

local ypx

for bnma, qps in ipairs(fwr.npcs) do
if qps.name == _d("PF9QDRMC") then
ypx = qps
break
end
end

if not ypx then
return _d("LF5SSiICXRlFQhgTUHANWEMPBFBRCxZZBQJQURYWQwIfAxgPWUUGEl4")
end

fwr.go(ypx)
task.wait(2)

local gghh = omhv.Character
local psy = gghh and gghh:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))
local wvie = fwr.point(ypx)

if not (psy and wvie) or (psy.Position - wvie).Magnitude > 40 then
return _d("O1lCBhJQVhdCFxgTEVsQFkMCE1BsClNWGQMCXVh+QgQCFUpW")
end

dhr = hrcx.read() or dhr

local fhj = false
local aa = dhr.shovels and dhr.shovels.shovel_basic == true
local vnk = dhr.detectors and dhr.detectors.detector_basic == true

if not (aa and vnk) then
fhj = hrcx.call(_d("O1pWAxsjTBlEQw8E"), _d("C15YHBMcZxpXRAMV"))
dhr = hrcx.read() or dhr
end

if dhr.equippedShovel ~= _d("C15YHBMcZxpXRAMV") then
hrcx.call(_d("PUdCAwYjUBdAUgY"), _d("C15YHBMcZxpXRAMV"))
end

if dhr.equippedDetector ~= _d("HFNDDxUEVwppVQsFGVs") then
hrcx.call(_d("PUdCAwY0XQxTVB4ZAg"), _d("HFNDDxUEVwppVQsFGVs"))
end

dhr = hrcx.read() or dhr

if dhr.equippedShovel == _d("C15YHBMcZxpXRAMV") and dhr.equippedDetector == _d("HFNDDxUEVwppVQsFGVs") then
local qjlj = hrcx.wear()
local geh = false

if qjlj and wf.enabled then
wf.autoFishWanted = false
geh = true

oxse(false)

pcall(function()
ld:UpdateState(false)
end)
end

return (fhj and _d("O1pWAxsVXFhXWQ5WFUkNX0caExQ") or _d("PUdCAwYAXRw"))
.. _d("WEJfD1YyWQtfVEolGFcOU1tKFx5cWHRWGR8TGDxTQw8VBFcKGA")
.. (geh and _d("WHdCHhlQfhFFX0oZFl5YGxceHhUYC15YHBMcGBBXREoCGF1YQlgFGlBLFFlDRA") or _d(""))
end

return _d("LF5SSjQRSxFVFzkeH04dWhcFBFB8HUJSCQIfSlhfREoFBFEUWhcHHwNLEVhQRA")
end

function hrcx.unlock()
if hrcx.busy then
return _d("OVpFDxcUQVhBWBgdGVYfGA")
end

hrcx.busy = true

local zc, eep = pcall(hrcx.run)

hrcx.busy = false

if not zc then
return _d("PF9QDR8eX1hQVgMaFVxCFg") .. tostring(eep)
end

return eep
end

hrcx.icon = function()
local gkl = gethui()

for dvdq, wil in ipairs(gkl:QueryDescendants(_d("MVtWDRM8WRpTWw"))) do
if wil.Name == _d("LFdVIxsRXx0") then
local ehyc = wil.Parent
local mn = ehyc and ehyc:FindFirstChild(_d("LFdVOQEZTBteUhg4EVUd"))

if mn and mn.Text == _d("PF9QDR8eXw") then
if wil:GetAttribute(_d("OXV1MjIZXzFVWAQ")) then
return true
end

wil:SetAttribute(_d("OXV1MjIZXzFVWAQ"), true)
wil.Image = _d("")
wil.BackgroundTransparency = 1

local xfau = Color3.fromRGB(233, 236, 242)

for iadf, rlpx in ipairs(gkl:QueryDescendants(_d("MVtWDRM8WRpTWw"))) do
if rlpx.Name == _d("LFdVIxsRXx0") and rlpx ~= wil and rlpx.Image ~= _d("") then
xfau = rlpx.ImageColor3
break
end
end

local function utj(phyg, qeb, cps, lou, jqrb, fgu)
local zyrm = Instance.new(_d("PkRWBxM"))

zyrm.Size = UDim2.fromOffset(cps, lou)
zyrm.Position = UDim2.fromOffset(phyg, qeb)
zyrm.BackgroundColor3 = xfau
zyrm.BorderSizePixel = 0
zyrm.Parent = wil

if fgu then
zyrm.Rotation = fgu
end

if jqrb then
local prm = Instance.new(_d("LX90BQQeXQo"))

prm.CornerRadius = UDim.new(0, jqrb)
prm.Parent = zyrm
end

return zyrm
end

utj(1.1, 10.2, 7, 6.4, 1.6, -45)
utj(3.1, 8.3, 11, 2.2, 0.8, -45)
utj(9.8, 4.4, 5.6, 2, 0.8, 45)

return true
end
end
end

return false
end

task.defer(function()
for xoy = 1, 20 do
if hrcx.icon() then
break
end

task.wait(0.25)
end
end)

qsi:Button({
Name = _d("LVhbBRUbGBxfUA0fHl8"),
Callback = function()
task.spawn(function()
zcwe:Notify({
Title = _d("PF9QDR8eXw"),
Description = _d("MFNWDh8eX1hCWEoCGF1YYkUPFwNNClMXIgMeTB1EGQ"),
Lifetime = 5,
})

local eznu = hrcx.unlock()

zcwe:Notify({
Title = _d("PF9QDR8eXw"),
Description = eznu,
Lifetime = 10,
})
end)
end,
})

hrcx.statusParagraph = qsi:Paragraph({
Header = _d("PF9QSgUEWQxT"),
Body = _d("KlNWDh8eX1hCXw9WFFEfFkQLABUWVhg"),
})

hrcx.data = require(ayu.ModuleScripts.DigData)

function hrcx.zoneAt(dz)
for cmzb, upux in ipairs(game:GetService(_d("O1lbBhMTTBFZWTkTAk4RVVI")):GetTagged(hrcx.data.ZoneTag)) do
if upux:IsA(_d("OldEDyYRSgw")) and upux:IsDescendantOf(workspace) then
local fg = upux.CFrame:PointToObjectSpace(dz)
local cph = upux.Size * 0.5

if math.abs(fg.X) <= cph.X and math.abs(fg.Y) <= cph.Y and math.abs(fg.Z) <= cph.Z then
return true
end
end
end

return false
end

function hrcx.onIsland()
for wyp, gizn in ipairs(game:GetService(_d("O1lbBhMTTBFZWTkTAk4RVVI")):GetTagged(hrcx.data.ZoneTag)) do
if gizn:IsA(_d("OldEDyYRSgw")) and gizn:IsDescendantOf(workspace) then
return true
end
end

return false
end

function hrcx.bestShovel(juy)
local mtp = juy and juy.shovels or {}
local cyvg = nil

for pfj, tk in ipairs(hrcx.data.Shovels) do
if mtp[tk.id] == true then
cyvg = tk.id
end
end

return cyvg
end

function hrcx.equipBest()
local lay = hrcx.read()
local ia = hrcx.bestShovel(lay)

if not ia then
return nil
end

if lay.equippedShovel ~= ia then
hrcx.call(_d("PUdCAwYjUBdAUgY"), ia)
end

hrcx.wear()

return ia
end

function hrcx.bestDetector(cgk)
local rsw = cgk and cgk.detectors or {}
local bksl = nil

for choa, kzda in ipairs(hrcx.data.Detectors) do
if rsw[kzda.id] == true then
bksl = kzda.id
end
end

return bksl
end

function hrcx.equipBestDetector()
local avdo = hrcx.read()
local unku = hrcx.bestDetector(avdo)

if not unku then
return nil
end

if avdo.equippedDetector ~= unku then
hrcx.call(_d("PUdCAwY0XQxTVB4ZAg"), unku)
end

return unku
end

function hrcx.leaveNpc()
local gbtg = omhv.Character
local rqml = gbtg and gbtg:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))
local udhk = gbtg and gbtg:FindFirstChildOfClass(_d("MENaCxgfURw"))

if not (rqml and udhk) then
return false
end

local ahyx

for ukvw, xcmp in ipairs(fwr.npcs) do
if xcmp.name == _d("PF9QDRMC") then
ahyx = xcmp
break
end
end

local ibs = ahyx and fwr.point(ahyx)

if not ibs then
return false
end

local yaf = Vector3.new(rqml.Position.X - ibs.X, 0, rqml.Position.Z - ibs.Z)

if yaf.Magnitude >= 16 then
return true
end

if yaf.Magnitude < 1 then
yaf = Vector3.new(0, 0, -1)
end

yaf = yaf.Unit

local gls = Vector3.new(ibs.X + yaf.X * 22, rqml.Position.Y, ibs.Z + yaf.Z * 22)
local vvn = os.clock() + 6

udhk:MoveTo(gls)

while os.clock() < vvn do
local pep = omhv.Character
local seds = pep and pep:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not seds or (seds.Position - gls).Magnitude < 4 then
break
end

task.wait(0.15)
end

pcall(function()
udhk:MoveTo(rqml.Position)
end)

return true
end

function hrcx.goToSand(zahq)

if zahq or not hrcx.onIsland() then
if not zahq then

pcall(function()
xl.TeleportToWorld:FireServer(_d("FFlVCA8"))
end)

local gk = os.clock() + 15

while not hrcx.onIsland() and os.clock() < gk do
task.wait(0.5)
end
end

local nryw

for tdz, pzr in ipairs(fwr.npcs) do
if pzr.name == _d("PF9QDRMC") then
nryw = pzr
break
end
end

if nryw then
fwr.go(nryw)
task.wait(2)
end
end

if hrcx.onIsland() then
hrcx.leaveNpc()
end
end

function hrcx.spot()
local elwm = omhv.Character
local nprw = elwm and elwm:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not nprw then
return nil
end

local ts = nprw.CFrame.LookVector
local wx = Vector3.new(ts.X, 0, ts.Z)

if wx.Magnitude < 0.01 then
wx = Vector3.new(0, 0, -1)
end

wx = wx.Unit

local tlm = RaycastParams.new()
tlm.FilterType = Enum.RaycastFilterType.Exclude
tlm.FilterDescendantsInstances = { elwm }

local function buq(spur, ekmd)
local aizy = nprw.Position + spur * ekmd + Vector3.new(0, 4, 0)
local zu = workspace:Raycast(aizy, Vector3.new(0, -18, 0), tlm)

if zu and hrcx.zoneAt(zu.Position) then
return zu.Position
end
end

for igs, ple in ipairs({ 4, 7, 10, 2 }) do
local uh = buq(wx, ple)

if uh then
return uh
end
end

local dzc = Vector3.new(-wx.Z, 0, wx.X)

for tq, oyi in ipairs({ 4, 8 }) do
for uik, pda in ipairs({ 1, -1 }) do
for ivph, icbh in ipairs({ 1, 0.5 }) do
local poa = buq((dzc * (pda * icbh) + wx * (1 - icbh)).Unit, oyi)

if poa then
return poa
end
end
end
end

return nil
end

function hrcx.turn()
local wsb = omhv.Character
local uju = wsb and wsb:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not uju then
return
end

local mtk = uju.CFrame.LookVector
local iuy = Vector3.new(mtk.X, 0, mtk.Z)

if iuy.Magnitude < 0.01 then
iuy = Vector3.new(0, 0, -1)
end

iuy = iuy.Unit

local lmfq = Vector3.new(-iuy.Z, 0, iuy.X)

uju.CFrame = CFrame.lookAt(uju.Position, uju.Position + lmfq)
end

hrcx.misses = 0

hrcx.pending = false

hrcx.spots = {}
hrcx.treasures = {}

local function kb(amur)
local fvn = {}
local dcv = {}

for arsk, kpf in pairs(amur) do
local mwfs
local ptkq

if typeof(kpf) == _d("LlNUHhkCCw") or typeof(kpf) == _d("O3BFCxsV") then
mwfs = arsk
ptkq = kpf
elseif type(kpf) == _d("DFdVBhM") then
mwfs = kpf.id or kpf.Id or kpf[1]
ptkq = kpf.position or kpf.Position or kpf.pos or kpf[2]
end

if typeof(ptkq) == _d("O3BFCxsV") then
ptkq = ptkq.Position
end

if mwfs ~= nil and typeof(ptkq) == _d("LlNUHhkCCw") then
table.insert(fvn, { id = mwfs, position = ptkq, spot = true })
dcv[mwfs] = true
end
end

return fvn, dcv
end

pcall(function()
im(xl.DigUpdate.OnClientEvent, function(kin, bfs)
if kin == _d("PF9QOBMDTRRC") then
hrcx.pending = false
hrcx.resultAt = os.clock()
elseif kin == _d("PF9QKRceWx1a") then
hrcx.pending = false
elseif kin == _d("PF9QOQIRSgw") then

hrcx.startedAt = os.clock()
hrcx.startDuration = type(bfs) == _d("DFdVBhM") and tonumber(bfs.duration) or nil
end

if (kin == _d("K0ZYHgU") or kin == _d("LERSCwUFSh1F")) and type(bfs) == _d("DFdVBhM") then
local rwt, dszi = kb(bfs)

if kin == _d("K0ZYHgU") then
for arj, gahw in ipairs(rwt) do
gahw.spot = true
end

hrcx.spots = rwt
hrcx.reportedSpots = dszi
else
hrcx.treasures = rwt

for hu, iy in ipairs(rwt) do
iy.spot = nil
end

hrcx.reported = dszi
end

local tz = hrcx.target

if tz and not tz.mark then
local lho = tz.spot and hrcx.reportedSpots or hrcx.reported

if lho and not lho[tz.id] then
hrcx.targetGone = true
end
end
end
end)
end)

function hrcx.withinDig(zcnn)
local agc = omhv.Character
local tjd = agc and agc:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not tjd then
return false
end

return (tjd.Position - zcnn).Magnitude <= 10
end

hrcx.markGone = {}

function hrcx.marked()
local nifv = workspace:FindFirstChild(_d("PF9QJxcCUws"))
local adpr = {}

if not nifv then
return adpr
end

local ylml = os.clock()

for jxz, xsix in ipairs(nifv:GetChildren()) do
if xsix.Name == _d("IHtWGB0") and xsix:IsA(_d("OldEDyYRSgw")) then
local ihs = xsix.Position
local fzfb = string.format(_d("FVdFAUxVFkhQDU9YQF4"), ihs.X, ihs.Z)
local xtki = hrcx.markGone[fzfb]

if not (xtki and ylml - xtki < 90) then
table.insert(adpr, { id = fzfb, position = ihs, mark = true })
end
end
end

return adpr
end

function hrcx.chests()
local jpt = {}

for bquv, xnvv in ipairs(hrcx.spots or {}) do
table.insert(jpt, xnvv)
end

for kde, znh in ipairs(hrcx.treasures or {}) do
table.insert(jpt, znh)
end

for seq, npn in ipairs(hrcx.marked()) do
local she = false

for ixea, tori in ipairs(jpt) do
if (tori.position - npn.position).Magnitude < 2 then
she = true

break
end
end

if not she then
table.insert(jpt, npn)
end
end

return jpt
end

function hrcx.release(fece)
if fece.mark then
hrcx.markGone[fece.id] = os.clock()
else
hrcx.forget(fece)
end
end

function hrcx.nearestChest(pfgu)
local gfxw = omhv.Character
local uki = gfxw and gfxw:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not uki then
return nil
end

local kig
local iryv

for jcz, idu in ipairs(hrcx.chests()) do
local hjuu = (idu.position - uki.Position).Magnitude

if hjuu <= pfgu and (not iryv or hjuu < iryv) then
kig = idu
iryv = hjuu
end
end

return kig
end

function hrcx.forget(gli)
for ivwe, zvsx in ipairs({ hrcx.spots or {}, hrcx.treasures or {} }) do
for bul, mbm in ipairs(zvsx) do
if mbm.id == gli.id then
table.remove(zvsx, bul)

return
end
end
end
end

function hrcx.walkTo(xfg)
local kdtg = omhv.Character
local hqub = kdtg and kdtg:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))
local zivd = kdtg and kdtg:FindFirstChildOfClass(_d("MENaCxgfURw"))

if not (hqub and zivd) then
return false
end

local msu = os.clock() + 12
local apkn = (hqub.Position - xfg).Magnitude
local ck = os.clock()
local wcma = false

pcall(function()
zivd:MoveTo(xfg)
end)

while os.clock() < msu do
local kicl = omhv.Character
local aoia = kicl and kicl:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not aoia then
break
end

local dvio = (aoia.Position - xfg).Magnitude

if dvio <= 4 then
wcma = true

break
end

if hrcx.targetGone or not hrcx.autoOn
or getgenv().ACBXDigGeneration ~= rde or not gsk() then
break
end

if dvio < apkn - 1 then
apkn = dvio
ck = os.clock()
elseif os.clock() - ck > 1.5 then
break
end

task.wait(0.15)
end

pcall(function()
zivd:MoveTo(hqub.Position)
end)

return wcma
end

function hrcx.digAt(wqr)
hrcx.misses = 0
hrcx.pending = true
hrcx.startedAt = 0
hrcx.startDuration = nil
hrcx.refused = false

local qjw = os.clock()
local jt = pcall(function()
xl.DigAction:FireServer(_d("K0JWGAI"), wqr)
end)

if not jt then
hrcx.pending = false
hrcx.refused = true

return false
end

local fod = qjw + 1.2
local xgux

while hrcx.pending and hrcx.autoOn
and getgenv().ACBXDigGeneration == rde and gsk() do
local bjj = os.clock()

if (hrcx.startedAt or 0) >= qjw then

xgux = xgux or (hrcx.startedAt + (hrcx.startDuration or 0) + 1.5)

if bjj >= xgux then
break
end
elseif bjj >= fod then
break
end

task.wait()
end

local uai = (hrcx.resultAt or 0) >= qjw

hrcx.pending = false

if uai then
hrcx.dugAt = os.clock()
end

hrcx.refused = (hrcx.startedAt or 0) < qjw

return uai
end

function hrcx.autoLoop()
local mehs = false

while hrcx.autoOn and gsk() and getgenv().ACBXDigGeneration == rde do
local rqdn = yvcz and yvcz.worldBoss
local zml = rqdn ~= nil
and type(rqdn.holdsDigging) == _d("HkNZCQIZVxY")
and rqdn.holdsDigging() == true

local blqz = rqdn ~= nil and type(rqdn.bossUp) == _d("HkNZCQIZVxY") and rqdn.bossUp() == true

local sauo = blqz
and not (rqdn.stopAtFull and type(rqdn.meterFull) == _d("HkNZCQIZVxY") and rqdn.meterFull())
local txc = sauo
and (fq.prioRank(_d("GllEGQ")) or 0) < (fq.prioRank(_d("D1dDDwQ")) or 0)

if txc then
zml = true
end

if hrcx.shopping then

task.wait(0.5)
elseif zml or fq.digBlocked() then

mehs = true

hrcx.heldAt = os.clock()
task.wait(1)
else
if mehs then

mehs = false

if type(rqdn.setRepeat) == _d("HkNZCQIZVxY") then
rqdn.setRepeat(false)
end

hrcx.goToSand()
end

local vol = hrcx.chestOn and hrcx.nearestChest(2500) or nil
local blvm = false

if vol then
hrcx.target = vol
hrcx.targetGone = false

local jn = omhv.Character and omhv.Character:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))
local ouh = jn and (jn.Position - vol.position).Magnitude or 999

if ouh > 45 then
pcall(function()
fwr.standAt(vol.position)
end)

task.wait(0.6)
end

if not hrcx.walkTo(vol.position) and not hrcx.targetGone then
pcall(function()
fwr.standAt(vol.position)
end)

task.wait(0.6)
hrcx.walkTo(vol.position)
end

local rsla = not hrcx.withinDig(vol.position)
local hbe = hrcx.targetGone

if hbe or rsla then
hrcx.strikes = hbe and 0 or (hrcx.strikes + 1)

if hbe or hrcx.strikes >= 2 then
hrcx.strikes = 0
hrcx.release(vol)
hrcx.skipped = hrcx.skipped + 1
end
else

if hrcx.digAt(vol.position) then
hrcx.strikes = 0
hrcx.release(vol)
hrcx.dug = hrcx.dug + 1
blvm = true
elseif hrcx.refused then

hrcx.strikes = 0
hrcx.release(vol)
hrcx.skipped = hrcx.skipped + 1
else

hrcx.strikes = hrcx.strikes + 1

if hrcx.strikes >= 3 then
hrcx.strikes = 0
hrcx.release(vol)
hrcx.skipped = hrcx.skipped + 1
end
end
end

hrcx.target = nil
hrcx.targetGone = false
end

if not blvm then
local tgv = hrcx.spot()

if tgv then
hrcx.digAt(tgv)
else

hrcx.misses = (hrcx.misses or 0) + 1

if hrcx.misses >= 4 then
hrcx.misses = 0
hrcx.goToSand(true)
else
hrcx.turn()
task.wait(0.25)
end
end
end
end
end
end

function hrcx.autoStart()
local qpcj = hrcx.read()

if not (qpcj and hrcx.bestShovel(qpcj)) then
return _d("NlkXGR4fTh1aFwUBHl0cFhpKIx5UF1VcShIZXx9fWQ1WFlEKRUNE")
end

local szx = false

if wf.enabled then
wf.autoFishWanted = false

oxse(false)
pcall(function()
ld:UpdateState(false)
end)

szx = true
end

nazm = true
hrcx.equipBest()

if hrcx.chestOn then
pcall(hrcx.equipBestDetector)
end

hrcx.goToSand()
hrcx.dugAt = os.clock()

task.spawn(hrcx.runAuto)

return _d("PF9QDR8eX1Y") .. (szx and _d("WHdCHhlQfhFFX0oZFl5YGxceHhUYC15YHBMcGBBXREoCGF1YQlgFGlBLFFlDRA") or _d(""))
end

function hrcx.runAuto()
if hrcx.loopLive then
return
end

hrcx.loopLive = true

local jv, cmrw = pcall(hrcx.autoLoop)

hrcx.loopLive = false

if not jv then
hrcx.loopError = tostring(cmrw)
end
end

task.spawn(function()
while gsk() and pmw do
task.wait(5)

if hrcx.autoOn and not hrcx.shopping then
local rk = os.clock()

if not hrcx.loopLive then
task.spawn(hrcx.runAuto)
elseif rk - (hrcx.dugAt or rk) > 25
and rk - (hrcx.heldAt or 0) > 25
and rk - (hrcx.watchdogAt or 0) > 20 then
hrcx.watchdogAt = rk
hrcx.pending = false
hrcx.strikes = 0
hrcx.misses = 0
hrcx.target = nil
hrcx.targetGone = false

pcall(function()
hrcx.goToSand(true)
hrcx.equipBest()
end)
end
end
end
end)

function hrcx.toggleAuto(yz, cfqg)
if yz then
local przg = hrcx.autoOn == true

hrcx.chestOn = cfqg == true
hrcx.switching = true

pcall(function()
local kw = cfqg and hrcx.autoToggle or hrcx.chestToggle

if kw then
kw:UpdateState(false)
end
end)

hrcx.switching = false

if przg then
return
end

hrcx.autoOn = true

task.spawn(function()
local fgq = hrcx.autoStart()

zcwe:Notify({
Title = cfqg and _d("OUNDBVY0UR8WdAITA0wL") or _d("OUNDBVY0UR8"),
Description = fgq,
Lifetime = 6,
})
end)
else

if hrcx.switching then
return
end

hrcx.autoOn = false
hrcx.pending = false
nazm = false
end
end

hrcx.autoToggle = qsi:Toggle({
Name = _d("OUNDBVY0UR8"),
Default = false,
Callback = function(vzo)
hrcx.toggleAuto(vzo, false)
end,
}, _d("HF9QDR8eXydXQh4Z"))

hrcx.chestToggle = qsi:Toggle({
Name = _d("OUNDBVY0UR8WdAITA0wL"),
Default = false,
Callback = function(ubb)
hrcx.toggleAuto(ubb, true)
end,
}, _d("HF9QDR8eXydXQh4ZL1sQU0Qe"))

hrcx.chestParagraph = qsi:Paragraph({
Header = _d("O15SGQID"),
Body = _d("LERWCR0VXEIWB0pbUHwNUQ1KRlAVWGVcAwYAXRwMF1o"),
})

task.spawn(function()
local fzmh

while gsk() and pmw do
local yxr = #hrcx.chests()
local klx = _d("LERWCR0VXEIW") .. yxr .. _d("WBsXLgMXAlg") .. hrcx.dug .. _d("WBsXOR0ZSAhTU1BW") .. hrcx.skipped

if hrcx.chestOn and yxr > 0 then
local jeb = hrcx.nearestChest(2500)
local rqaf = omhv.Character
local fyir = rqaf and rqaf:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if jeb and fyir then
local lc = math.floor((jeb.position - fyir.Position).Magnitude)
klx = klx .. _d("cnhSCwQVSwwMFw") .. lc .. (lc > 45 and _d("WEVDHxIDGFBeWBpf") or _d("WEVDHxID"))
end
end

if klx ~= fzmh then
fzmh = klx

pcall(function()
hrcx.chestParagraph:UpdateBody(klx)
end)
end

task.wait(0.5)
end
end)

function hrcx.npcRow()
for gepc, dgwk in ipairs(fwr.npcs) do
if dgwk.name == _d("PF9QDRMC") then
return dgwk
end
end
end

function hrcx.shop(ayds, tlf)
local uuz, fyuj, zb, fsnc = pcall(function()
return xl.DigShop:InvokeServer(ayds, tlf)
end)

if not uuz then
return false, _d("LF5SShIZX1hFXwUGUFELFlkFAlBZFkVADwQZVh8Y")
end

return fyuj == true, zb, type(fsnc) == _d("DFdVBhM") and fsnc or nil
end

function hrcx.pickShovel(ojhc)
local jbix = ojhc.shovels or {}
local oejw = tonumber(ojhc.digs) or 0
local gdak

for dac, cbkm in ipairs(hrcx.data.Shovels) do
if not cbkm.crafted and cbkm.id ~= _d("C15YHBMcZxpXRAMV") and jbix[cbkm.id] ~= true then
local lwu = tonumber(cbkm.cost) or math.huge

if lwu <= oejw and (not gdak or lwu > (tonumber(gdak.cost) or 0)) then
gdak = cbkm
end
end
end

return gdak
end

function hrcx.pickDetector(vbc)
local lbe = vbc.detectors or {}
local hbt = tonumber(vbc.digs) or 0
local pmr

for ont, hpxl in ipairs(hrcx.data.Detectors) do
if not hpxl.crafted and hpxl.id ~= _d("HFNDDxUEVwppVQsFGVs") and lbe[hpxl.id] ~= true then
local yhi = tonumber(hpxl.cost) or math.huge

if yhi <= hbt and (not pmr or yhi > (tonumber(pmr.cost) or 0)) then
pmr = hpxl
end
end
end

return pmr
end

function hrcx.nextDef(tzr, vij)
local sduw

for pm, utib in ipairs(tzr) do
local yiup = tonumber(utib.cost)

if not utib.crafted and yiup and vij[utib.id] ~= true then
if not sduw or yiup < (tonumber(sduw.cost) or math.huge) then
sduw = utib
end
end
end

return sduw
end

function hrcx.toCounter()
local xqo = hrcx.npcRow()
local fc = xqo and fwr.point(xqo)
local oey = omhv.Character
local aim = oey and oey:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not (fc and aim) then
return false
end

if (aim.Position - fc).Magnitude <= 20 then
return true
end

fwr.go(xqo)
task.wait(2.2)

oey = omhv.Character
aim = oey and oey:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

return aim ~= nil and (aim.Position - fc).Magnitude <= 20
end

function hrcx.secretRow()
for ebtb, nboz in ipairs(fwr.npcs) do
if nboz.name == _d("K1NUGBMEGDxfUA0TAg") then
return nboz
end
end
end

function hrcx.secretDef(wgn)
for aloe, hopm in ipairs(wgn or {}) do
if hopm.crafted then
return hopm
end
end
end

function hrcx.recipeHeld(otk)
local rkr = hrcx.data and hrcx.data.SecretRecipe
local vfvr = otk and otk.mats

if type(rkr) ~= _d("DFdVBhM") or type(vfvr) ~= _d("DFdVBhM") then
return false
end

for hxl, xrj in ipairs(rkr) do
if (tonumber(vfvr[xrj.id]) or 0) < (tonumber(xrj.count) or 0) then
return false
end
end

return true
end

function hrcx.toSecret()
local ddtg = hrcx.secretRow()

if not ddtg then
return false
end

local gpxi = workspace:FindFirstChild(_d("NmZ0GQ"))
local elpv = gpxi and gpxi:FindFirstChild(_d("K1NUGBMEfBFRUA8EPmg7"))
local sqha = elpv and elpv:GetPivot().Position or fwr.point(ddtg)

if not sqha then
return false
end

fwr.hold()

for fu = 1, 3 do
local ssvd = omhv.Character
local qmj = ssvd and ssvd:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not qmj then
return false
end

local jxx = (qmj.Position - sqha).Magnitude

if jxx <= 20 then
return true
end

if jxx > 1500 and ddtg.island then
pcall(function()
xl.FishingIslandTeleport:FireServer(ddtg.island)
end)

task.wait(4.5)
else
pcall(function()
fwr.standAt(sqha)
end)
task.wait(0.9)
end
end

local ysit = omhv.Character
local bdop = ysit and ysit:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

return bdop ~= nil and (bdop.Position - sqha).Magnitude <= 20
end

function hrcx.craftSecret(oqyz, kdu, tmp)
local vlau = {}
local dif = oqyz and hrcx.secretDef(hrcx.data.Shovels) or nil
local fdbh = kdu and hrcx.secretDef(hrcx.data.Detectors) or nil

local wuz = dif and (tmp.shovels or {})[dif.id] ~= true
local kgxf = fdbh and (tmp.detectors or {})[fdbh.id] ~= true

if not (wuz or kgxf) then
return vlau, nil, tmp
end

if not hrcx.recipeHeld(tmp) then
return vlau, nil, tmp
end

hrcx.shopping = true

local favp = hrcx.toSecret()
local bd

if favp then
local function qmvx(bdo, kjj)
if not kjj or not hrcx.recipeHeld(tmp) then
return
end

local rp, xwof = hrcx.shop(bdo, kjj.id)

if rp then
table.insert(vlau, kjj.name)
elseif not bd then
bd = tostring(xwof)
end

tmp = hrcx.read() or tmp
end

qmvx(_d("O0RWDAIjUBdAUgY"), wuz and dif or nil)
qmvx(_d("O0RWDAI0XQxTVB4ZAg"), kgxf and fdbh or nil)
end

hrcx.shopping = false

return vlau, bd, tmp
end

function hrcx.upgradeAll()
local wy = hrcx.buyOn == true
local orib = hrcx.detBuyOn == true

if not (wy or orib) then
return nil, _d("N1BRRA")
end

local fnez = hrcx.read()

if not fnez then
return nil, _d("LF5SShIZX1hFXwUGUFELFlkFAlBZFkVADwQZVh8Y")
end

local lli, edv, vdoz = hrcx.craftSecret(wy, orib, fnez)

if vdoz then
fnez = vdoz
end

if wy then
local tc = hrcx.bestShovel(fnez)

if tc and fnez.equippedShovel ~= tc then
hrcx.equipBest()
end
end

if orib then
local jkai = hrcx.bestDetector(fnez)

if jkai and fnez.equippedDetector ~= jkai then
hrcx.equipBestDetector()
end
end

local qi = wy and hrcx.pickShovel(fnez) or nil
local aif = orib and hrcx.pickDetector(fnez) or nil

if not (qi or aif) then

if #lli > 0 then
if hrcx.autoOn then
hrcx.leaveNpc()
end

return table.concat(lli, _d("WB0X"))
end

return nil, edv and (_d("O0RWDAJQSh1QQhkTFAJY") .. tostring(edv))
or _d("NlkXHwYXShlSUkofAxgZUFEFBBRZGlpSSg8VTFY")
end

hrcx.shopping = true
hrcx.toCounter()

local xi = {}
local uxt

for gcs, zru in ipairs(lli) do
xi[#xi + 1] = zru
end

local function gkdn(qdd, fxsi)
if not fxsi then
return
end

local yylr, gya = hrcx.shop(qdd, fxsi.id)

if yylr then
table.insert(xi, fxsi.name)
elseif not uxt then
uxt = tostring(gya)
end
end

gkdn(_d("OkNOOR4fTh1a"), qi)
gkdn(_d("OkNOLhMEXRtCWBg"), aif)

if #xi == 0 then
hrcx.shopping = false

return nil, _d("OkNOSgQVXg1FUg5MUA") .. (uxt or _d("FlkXCxgDTx1E"))
end

if wy then
hrcx.equipBest()
end

if orib then
hrcx.equipBestDetector()
end

if hrcx.autoOn then
hrcx.leaveNpc()
end

hrcx.shopping = false

return table.concat(xi, _d("WB0X"))
end

function hrcx.buyLoop()
while hrcx.buyOn or hrcx.detBuyOn do
local kkiw, vtur, ev = pcall(hrcx.upgradeAll)

hrcx.shopping = false

if not kkiw then
task.wait(10)
elseif vtur then
zcwe:Notify({
Title = _d("OUNDBVYyTQEWcwMRF1EWURctExFK"),
Description = _d("PUdCAwYAXRwWQwITUA") .. vtur .. _d("Vg"),
Lifetime = 6,
})

task.wait(3)
else
task.wait(ev == _d("N1BRRA") and 0.5 or 10)
end
end
end

function hrcx.syncBuyLoop()
if not (hrcx.buyOn or hrcx.detBuyOn) or hrcx.buyRunning then
return
end

hrcx.buyRunning = true

task.spawn(function()
hrcx.buyLoop()

hrcx.buyRunning = false
end)
end

qsi:Toggle({
Name = _d("OUNDBVYyTQEWdQ8FBBgrXlgcExw"),
Default = false,
Callback = function(tvn)
hrcx.buyOn = tvn
hrcx.syncBuyLoop()
end,
}, _d("HF9QDR8eXydUQhM"))

qsi:Toggle({
Name = _d("OUNDBVYyTQEWdQ8FBBg8U0MPFQRXCg"),
Default = false,
Callback = function(td)
hrcx.detBuyOn = td
hrcx.syncBuyLoop()
end,
}, _d("HF9QDR8eXydUQhMpFF0MU1QeGQI"))

function hrcx.statusText()
local llk = hrcx.read()

if not llk then
return _d("LF5SShIZX1hFXwUGUFELFlkFAlBZFkVADwQZVh8Y")
end

local dss = tonumber(llk.digs) or 0
local fzm = { _d("PF9QGUxQ") .. dss }

local function dde(dehm, faby)
if not faby then
return dehm .. _d("QhZSHBMCQQxeXgQRUFcPWFIOWA")
end

local gtr = tonumber(faby.cost) or 0
local nnod = gtr - dss

return dehm .. _d("QhY") .. tostring(faby.name) .. _d("WBsX") .. gtr
.. (nnod <= 0 and _d("WB5FDxcUQVE") or (_d("WB4") .. nnod .. _d("WEJYShEfEQ")))
end

table.insert(fzm, dde(_d("NlNPHlYDUBdAUgY"), hrcx.nextDef(hrcx.data.Shovels, llk.shovels or {})))
table.insert(fzm, dde(_d("NlNPHlYUXQxTVB4ZAg"), hrcx.nextDef(hrcx.data.Detectors, llk.detectors or {})))

return table.concat(fzm, _d("cg"))
end

task.spawn(function()
while gsk() and pmw do
local xw, yshz = pcall(hrcx.statusText)

if xw and hrcx.statusParagraph then
pcall(function()
hrcx.statusParagraph:UpdateBody(yshz)
end)
end

task.wait(6)
end
end)

getgenv().ACBXDigging = hrcx

zhpb.tab = ft:Tab({
Name = _d("K1NDHh8eXws"),

Image = _d(""),
})

zhpb.icon = function()
local xigl = gethui()

for gubv, dvpy in ipairs(xigl:QueryDescendants(_d("MVtWDRM8WRpTWw"))) do
if dvpy.Name == _d("LFdVIxsRXx0") then
local prco = dvpy.Parent
local ygz = prco and prco:FindFirstChild(_d("LFdVOQEZTBteUhg4EVUd"))

if ygz and ygz.Text == _d("K1NDHh8eXws") then
if dvpy:GetAttribute(_d("OXV1MjUfXzFVWAQ")) then
return true
end

dvpy:SetAttribute(_d("OXV1MjUfXzFVWAQ"), true)
dvpy.Image = _d("")
dvpy.BackgroundTransparency = 1

local lyva = Color3.fromRGB(168, 170, 176)

local function llsk(kl, nm, ops, thdk, lmhq, mst)
local nyel = Instance.new(_d("PkRWBxM"))

nyel.Size = UDim2.fromOffset(ops, thdk)
nyel.Position = UDim2.fromOffset(kl, nm)
nyel.BackgroundColor3 = lyva
nyel.BorderSizePixel = 0
nyel.Parent = dvpy

if not mst then
nyel.BackgroundTransparency = 1

local ngm = Instance.new(_d("LX9kHgQfUx0"))

ngm.Color = lyva
ngm.Thickness = 1.3
ngm.LineJoinMode = Enum.LineJoinMode.Round
ngm.Parent = nyel
end

if lmhq then
local xlac = Instance.new(_d("LX90BQQeXQo"))

xlac.CornerRadius = UDim.new(0, lmhq)
xlac.Parent = nyel
end

return nyel
end

local xvlj = {
{ 8, 0, 2, 3 },
{ 8, 15, 2, 3 },
{ 0, 8, 3, 2 },
{ 15, 8, 3, 2 },
{ 2, 2, 3, 3 },
{ 13, 2, 3, 3 },
{ 2, 13, 3, 3 },
{ 13, 13, 3, 3 },
}

for nakf, nv in ipairs(xvlj) do
llsk(nv[1], nv[2], nv[3], nv[4], 0, true)
end

llsk(2, 2, 14, 14, 7, false)
llsk(7, 7, 4, 4, 2, true)

return true
end
end
end

return false
end

task.defer(function()
for xlog = 1, 20 do
if zhpb.icon() then
break
end

task.wait(0.25)
end
end)

zhpb.prioSection = zhpb.tab:Section({
Side = _d("NFNRHg"),
})

zhpb.prioSection:Header({
Name = _d("KEReBQQZTAE"),
})

zhpb.prioSection:Paragraph({
Header = _d("L15YShEfXQsWUQMEA0w"),
Body = _d("SRZDCx0VS1hCXw9WEVsbWUIEAlBeEUREHlpQDVhBVgMCAxgeWUVKEwZdCk9VBRIJFlhzVgkeUEoXQRcDBVBZWFhCBxQVSlhXWQ5WBFAdFlMYGQBcF0FZSgMeXB1EFwMCUFELFkACFwQYC0JWBBIDGAxeUhgTUBVYRl4JHVBZWFhWBxNQTBBXQ0oXHEodV1MTVhhXFFJEShceVwxeUhhWHk0VVFIYVhFWHBZDAhNQTA9ZFxkBEUhWFnZKBB9PWF9ESh4VVBwWVQsVGxgXWFsTVhJBWFcXBBcdXVhXVQUAFRgRQhceHhFMWF5WGVYDVxVTQwIfHl9YQlhKEh8YCl9QAgJQVhdBGWB8JFcPU0UZVhFKHRZZBQJQVxYWQwIfAxgUX0QeTFBZWEJYHRMCGB5fUAICAxgXWBceHhUYC1NFHBMCGBlYU0oaFVkOU0RKAhhdWFVfCwQRWwxTRUoQAl0dGhcZGVBRDBZFHxgDGBlaWAQRA1EcUxcPABVKAUJfAxgXGBBTRQ9WEVYcFlgEGgkYC0JWBBIDGBlFXg4TUF4XRBcYFxlcCxoXHh4VGB9aWAgXHBgaWUQZVhFWHBZ5OjVQWhlCQwYTAxZyPGQCGQBLVBZaDwQXURZRG0oTCEgdUl4eHx9WCxZWBBJQTBBTFxgTA0xYWVFKAhhdWFlZD1sDUBdCFx4EGUgLFlYYE1BWF0IXAhMCXVhZWUoGBUoIWUQPTFBMEFNOShccSh1XUxNWA0wZWFNKAhhdWERCBBgZVh8WVh8CH1UZQl4FGFBcF0FZSgEYURRTFx4eFUFYUlhKAhhdEUQXABkSFg"),
})

zhpb.prioRows = {}

zhpb.prioBuilding = true

local hrtw = {}

for wfef, dug in ipairs(fq.prioGroups) do
hrtw[#hrtw + 1] = dug.label
end

for yfd = 1, #fq.prioGroups do
local cku = nil

pcall(function()
cku = zhpb.prioSection:Dropdown({
Name = _d("KEReBQQZTAEW") .. yfd,
Search = false,
Multi = false,
Required = false,
Default = yfd,
Options = hrtw,
Callback = function(et)
local flud = type(et) == _d("DFdVBhM") and et[1] or et
local zzw

for cgj, hve in ipairs(fq.prioGroups) do
if hve.label == flud then
zzw = hve

break
end
end

if zzw then
zhpb.setPriority(zzw.id, yfd)
end
end,
}, _d("CEReBSkCWRZdaA") .. yfd)
end)

zhpb.prioRows[yfd] = cku
end

zhpb.prioBuilding = false

zhpb.configSection = zhpb.tab:Section({
Side = _d("NFNRHg"),
})

zhpb.configSection:Header({
Name = _d("O1lZDB8XGDVXWQsRFVUdWEM"),
})

zhpb.autoSaveToggle = zhpb.configSection:Toggle({
Name = _d("OUNDBVYDWQ5T"),
Default = false,
Callback = function(itbf)
zhpb.autoSave = itbf
zhpb.autoSaveAt = 0

if itbf then
local cgt = zhpb.selected or _d("HFNRCwMcTA")
local phl, ylky = zhpb.save(cgt)

zhpb.selected = cgt
zhpb.lastText = phl and (_d("OUNDBVYDWQ5TFwUYUBVYQUUFAhUY") .. cgt)
or (_d("OUNDBVYDWQ5TFwUYXBgeX0UZAlBPCl9DD1YWWRFaUg5MUA") .. tostring(ylky))
else
zhpb.lastText = _d("OUNDBVYDWQ5TFwUQFhY")
end
end,
}, _d("G1lZDB8XZxlDQwUpA1kOUw"))

zhpb.nameInput = zhpb.configSection:Input({
Name = _d("K1dBD1YeWRVT"),
Placeholder = _d("HRhQRFYiWRFSRA"),
AcceptedCharacters = _d("OVpb"),
Callback = function(euoe)
zhpb.nameDraft = euoe
end,
})

zhpb.nameInput.IgnoreConfig = true

zhpb.configSection:Button({
Name = _d("O0RSCwIVGAtXQQ8"),
Callback = function()
local ufq = zhpb.nameDraft or zhpb.nameInput:GetInput()

ufq = type(ufq) == _d("C0JFAxgX") and ufq:gsub(_d("JhNEQQ"), _d("")):gsub(_d("XUUcTg"), _d("")) or _d("")

if ufq == _d("") then
zcwe:Dialog({
Title = _d("O1lZDB8X"),
Description = _d("LE9HD1YRGBZXWg9WFlcKFkMCE1BLGUBSShAZSgtCF0dWGUxYVFIJGR1dCxZDAhNQXhFaUk0FUFYZW1JE"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})

return
end

local jd, bc = zhpb.save(ufq)

if not jd then
zhpb.lastText = _d("K1dBD1YWWRFaUg5MUA") .. tostring(bc)

return
end

zhpb.selected = ufq
zhpb.lastText = _d("O0RSCwIVXFg") .. ufq .. _d("Vg")
zhpb.savesAt = 0

task.defer(function()
task.wait(0.25)

pcall(function()
zhpb.fileDropdown:UpdateSelection(ufq)
end)
end)
end,
})

zhpb.fileDropdown = zhpb.configSection:Dropdown({
Name = _d("K1dBD1YWURRT"),
Search = false,
Multi = false,
Required = false,
Options = zhpb.saves(),
Callback = function(yhtp)
local duwc = type(yhtp) == _d("DFdVBhM") and yhtp[1] or yhtp

if type(duwc) == _d("C0JFAxgX") and duwc ~= _d("") then
zhpb.selected = duwc
zhpb.selectionShown = duwc

pcall(function()
zhpb.fileDropdown:UpdateName(_d("K1dBD1YWURRTDUo") .. duwc)
end)
end
end,
})

zhpb.fileDropdown.IgnoreConfig = true

zhpb.configSection:Button({
Name = _d("NFlWDlYDXRRTVB4TFA"),
Callback = function()
local dfr = zhpb.selected or zhpb.fileDropdown.Value
local kxl, thd = zhpb.load(dfr)

zhpb.lastText = kxl and (_d("NFlWDhMUGA") .. dfr .. _d("Vg")) or (_d("NFlWDlYWWRFaUg5MUA") .. tostring(thd))
end,
})

zhpb.configSection:Button({
Name = _d("K1dBD1YEV1hFUgYTE0wdUg"),
Callback = function()
local muer = zhpb.selected or zhpb.fileDropdown.Value
local jqxy, scu = zhpb.save(muer)

zhpb.lastText = jqxy and (_d("L0RYHhNQ") .. muer .. _d("Vg")) or (_d("K1dBD1YWWRFaUg5MUA") .. tostring(scu))
end,
})

zhpb.configSection:Button({
Name = _d("PFNbDwIVGAtTWw8VBF0cFkQLABU"),
Callback = function()
local twki = zhpb.selected or zhpb.fileDropdown.Value

if type(twki) ~= _d("C0JFAxgX") or twki == _d("") then
zhpb.lastText = _d("KF9UAVYRGAtXQQ9WFlEUUxcMHwJLDBg")

return
end

zcwe:Dialog({
Title = _d("PFNbDwIVGA") .. twki .. _d("Rw"),
Description = _d("LF5SShAZVB0WXhlWAl0VWUEPElBeCllaShIZSxMWVgQSUFsZWFkFAlBaHRZFDxUfTh1EUg5Y"),
Buttons = {
{
Name = _d("PFNbDwIV"),
Callback = function()
local jjgg, ohu = zhpb.delete(twki)

zhpb.lastText = jjgg
and (_d("PFNbDwIVXFg") .. twki .. _d("Vg"))
or (_d("O1lCBhJQVhdCFw4THF0MUw1K") .. tostring(ohu))
end,
},
{
Name = _d("O1dZCRMc"),
},
},
})
end,
})

zhpb.configSection:Button({
Name = _d("KlNRGBMDUFhaXhkC"),
Callback = function()
zhpb.savesAt = 0
zhpb.lastText = _d("K1dBD1YcUQtCFxgTFkodRV8PEl4")
end,
})

zhpb.configSection:Button({
Name = _d("NVdFAVYRS1hXQh4ZUFQXV1M"),
Callback = function()
local iupu = zhpb.selected or zhpb.fileDropdown.Value

if type(iupu) ~= _d("C0JFAxgX") or iupu == _d("") then
zhpb.lastText = _d("KF9UAVYRGAtXQQ9WFlEUUxcMHwJLDBg")

return
end

if zhpb.setAutoLoad(iupu) then
zhpb.lastText = iupu .. _d("WFpYCxIDGBdYFxkCEUoMGA")
else
zhpb.lastText = _d("O1lCBhJQVhdCFx0EGUwdFkMCE1BZDUJYShofWRwWWgsEG10KGA")
end
end,
})

zhpb.configSection:Button({
Name = _d("O1pSCwRQWQ1CWEoaH1kc"),
Callback = function()
zhpb.setAutoLoad(_d(""))
zhpb.lastText = _d("NllDAh8eX1haWAsSAxgXWBcZAhFKDBg")
end,
})

zhpb.statusParagraph = zhpb.configSection:Paragraph({
Header = _d("K0JWHgMD"),
Body = _d(""),
})

zhpb.miscSection = zhpb.tab:Section({
Side = _d("Kl9QAgI"),
})

zhpb.miscSection:Header({
Name = _d("NV9ECQ"),
})

zhpb.miscSection:Toggle({
Name = _d("OUNDBVYTVBdFUkoRFVYdRFYeHx9WWGN+"),
Default = false,
Callback = function(vdvf)
dr(vdvf)
end,
}, _d("FV9ECSkRTQxZaAkaH0sdaVAPGBVKGUJeBRg"))

zhpb.miscSection:Toggle({
Name = _d("OUNDBVYiVxRa"),
Default = true,
Callback = function(ydm)
zhpb.autoRoll = ydm

if ydm and zhpb.setRollButton then
zhpb.setRollButton(_d("OUNDBSQfVBR0Qh4CH1Y"), true)
end
end,
}, _d("FV9ECSkRTQxZaBgZHFQ"))

zhpb.miscSection:Toggle({
Name = _d("OUNDBVYhTRFVXEokH1QU"),
Default = true,
Callback = function(ejoa)
zhpb.autoQuickRoll = ejoa

if ejoa and zhpb.setRollButton then
zhpb.setRollButton(_d("KUNeCR0iVxRadR8CBFcW"), true)
end
end,
}, _d("FV9ECSkRTQxZaBsDGVsTaUUFGhw"))

zhpb.uiSection = zhpb.tab:Section({
Side = _d("Kl9QAgI"),
})

zhpb.uiSection:Header({
Name = _d("LX8"),
})

zhpb.uiSection:Toggle({
Name = _d("OldUARECVw1YU0oUHE0K"),
Default = true,
Callback = function(gzw)
pcall(function()
zcwe:SetAcrylicBlurState(gzw)
end)
end,
}, _d("DV9oCBcTUx9EWB8YFGcaWkIY"))

function zhpb.widthFactor(lml)
return 1 + math.max(0, (lml or 1) - 1) * 0.8
end

function zhpb.scaleCap()
local iyzi = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local ogyu = math.min(120, math.floor(((iyzi.Y - 40 - 8 - 8) / 500) * 100))

while ogyu > 50 and (zhpb.baseWidth or 720) * (ogyu / 100) * zhpb.widthFactor(ogyu / 100) > iyzi.X - 16 do
ogyu = ogyu - 1
end

return math.max(50, ogyu)
end

function zhpb.scaleCeiling()
return math.min(1.2, zhpb.scaleCap() / 100)
end

function zhpb.refreshScaleCap()
local fvp = zhpb.scaleSlider

if not fvp then
return
end

local wop = zhpb.scaleCeiling()

pcall(function()
fvp.Settings.Maximum = wop
end)

local pawb = tonumber(fvp:GetValue()) or 1

if pawb > wop then
zhpb.scaleTarget = wop

pcall(function()
fvp:UpdateValue(wop)
end)
end
end

zhpb.scaleSlider = zhpb.uiSection:Slider({
Name = _d("LX8XGRURVB0"),
Default = 1,
Minimum = 0.5,

Maximum = zhpb.scaleCeiling(),
DisplayMethod = _d("LldbHxM"),
Precision = 2,

Callback = function(ehae)
zhpb.scalePending = tonumber(ehae)
zhpb.scalePendingAt = os.clock()
end,
onInputComplete = function(pvd)
local prg = zhpb.scaleCeiling()

zhpb.scaleTarget = math.clamp(tonumber(pvd) or zhpb.scalePending or 1, 0.5, prg)
zhpb.scalePending = nil

zhpb.scaleAnchor = nil

zhpb.saveUi()
end,
}, _d("DV9oGRURVB0"))

zhpb.refreshScaleCap()

zhpb.themeDropdown = zhpb.uiSection:Dropdown({
Name = _d("LF5SBxNKGC5ZXg4"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = zhpb.themeOrder,
Callback = function(lgx)
local xynx = type(lgx) == _d("DFdVBhM") and lgx[1] or lgx

if type(xynx) == _d("C0JFAxgX") and zhpb.presets[xynx] then
zhpb.theme = xynx
zhpb.accent = nil
zhpb.applyTheme()

pcall(function()
zhpb.themeDropdown:UpdateName(_d("LF5SBxNKGA") .. xynx)
end)

zhpb.saveUi()
end
end,
}, _d("DV9oHh4VVR0"))

zhpb.accentPicker = zhpb.uiSection:Colorpicker({
Name = _d("OVVUDxgEGBtZWwUDAg"),
Default = Color3.fromRGB(168, 170, 176),
Alpha = 0,
Callback = function(dwk)
zhpb.accent = dwk
zhpb.applyTheme()
zhpb.saveUi()
end,
}, _d("DV9oCxUTXRZC"))

zhpb.codesSection = zhpb.tab:Section({
Side = _d("Kl9QAgI"),
})

zhpb.codesSection:Header({
Name = _d("O1lTDwU"),
})

zhpb.codeText = _d("KlNTDxMdS1hTQQ8ECRgbWVMPVgRQEUUXDRcdXVhFXwMGAxgPX0MCWlBXFlMXDwAVSgEWVAUDAFQdFlgMVgNdG1lZDgVe")

function zhpb.setCodeText(gub)
zhpb.codeText = gub

pcall(function()
zhpb.codeParagraph:UpdateBody(gub)
end)
end

function zhpb.redeemCodes()
if zhpb.redeeming then
return
end

local caq = xl.RedeemCode
local kf = ayu:FindFirstChild(_d("NVlTHxoVaxtEXhoCAw"))
local aich = kf and kf:FindFirstChild(_d("O1lTDzIRTBk"))
local ids, rxi = false, nil

if caq and aich then
ids, rxi = pcall(function()
return require(aich)
end)
end

local qt = ids and type(rxi) == _d("DFdVBhM") and rxi.Codes or nil

if not caq or type(qt) ~= _d("DFdVBhM") then
zhpb.setCodeText(_d("LF5eGVYGXQpFXgUYUFceFkMCE1BfGVtSSh4RS1hYWEoVH1wdFlsDBQQYF0QXBBlQSh1SUg8bUEodW1geE14"))
return
end

local kai = {}

for dfc in pairs(qt) do
kai[#kai + 1] = dfc
end

table.sort(kai)

local owu = #kai

zhpb.redeeming = true
zhpb.setCodeText(_d("KlNTDxMdURZRFw") .. owu .. _d("WFVYDhMDFlYY"))

task.spawn(function()
local avz, czq, qo = 0, 0, 0
local qcks = {}

for cywe = 1, owu do
if not gsk() then
break
end

local hsat = kai[cywe]
local kfrn, ain = pcall(function()
return caq:InvokeServer(hsat)
end)

local kugi = kfrn and type(ain) == _d("DFdVBhM") and ain.success == true
local ylyy = kfrn and type(ain) == _d("DFdVBhM") and tostring(ain.message or _d("")) or tostring(ain or _d(""))

if not kugi and string.find(string.lower(ylyy), _d("D1deHg"), 1, true) then
task.wait(3.5)

kfrn, ain = pcall(function()
return caq:InvokeServer(hsat)
end)

kugi = kfrn and type(ain) == _d("DFdVBhM") and ain.success == true
ylyy = kfrn and type(ain) == _d("DFdVBhM") and tostring(ain.message or _d("")) or tostring(ain or _d(""))
end

if kugi then
avz = avz + 1
elseif string.find(string.lower(ylyy), _d("GVpFDxcUQQ"), 1, true) then
czq = czq + 1
else
qo = qo + 1

if #qcks < 6 then
qcks[#qcks + 1] = hsat .. _d("QhY") .. (ylyy ~= _d("") and ylyy or _d("FlkXCxgDTx1E"))
end
end

zhpb.setCodeText(string.format(_d("XVIXBRBQHRwWGkpTFBgKU1MPEx1dHBoXTxJQWRREUgsSCRRYE1NKBBVeDUVSDlg"), cywe, owu, avz, czq, qo))

if cywe < owu and gsk() then
task.wait(1.8)
end
end

local ovaw = {
string.format(_d("KlNTDxMdXRwWEg5aUFkURFILEgkYEFdTSlMUFFhEUgwDA10cFhIOVh9eWBNTRA"), avz, czq, qo, owu),
}

for qfc, cjdr in ipairs(qcks) do
ovaw[#ovaw + 1] = cjdr
end

zhpb.redeeming = false
zhpb.setCodeText(table.concat(ovaw, _d("cg")))
end)
end

zhpb.codesSection:Button({
Name = _d("KlNTDxMdGBlaW0oVH1wdRQ"),
Callback = function()
zhpb.redeemCodes()
end,
})

zhpb.codeParagraph = zhpb.codesSection:Paragraph({
Header = _d("O1lTDwU"),
Body = zhpb.codeText,
})

zhpb.scriptSection = zhpb.tab:Section({
Side = _d("Kl9QAgI"),
})

zhpb.scriptSection:Header({
Name = _d("K1VFAwYE"),
})

zhpb.scriptSection:Button({
Name = _d("LVhbBRcUGAtVRQMGBA"),
Callback = function()
pcall(function()
zcwe:Unload()
end)

getgenv().ACBXWindow = nil
getgenv().ACBXAllowReload = nil
end,
})

task.spawn(function()
while gsk() do

if os.clock() >= zhpb.savesAt then
zhpb.savesAt = os.clock() + 3

local typd = zhpb.saves()
local irw = table.concat(typd, _d("BA"))

if irw ~= zhpb.knownSaves then
zhpb.knownSaves = irw

pcall(function()
zhpb.fileDropdown:ClearOptions()
zhpb.fileDropdown:InsertOptions(typd)
end)
end

if zhpb.selected and zhpb.selectionShown ~= zhpb.selected then
zhpb.selectionShown = zhpb.selected

pcall(function()
zhpb.fileDropdown:UpdateSelection(zhpb.selected)
end)
end
end

if zhpb.autoSave and os.clock() >= zhpb.autoSaveAt then
zhpb.autoSaveAt = os.clock() + 60

local fiz = zhpb.selected or _d("HFNRCwMcTA")
local ibh, yjq = zhpb.save(fiz)

zhpb.selected = fiz
zhpb.lastText = ibh and (_d("OUNDBVYDWQ5TU0o") .. fiz .. _d("WFdDSg") .. os.date(_d("XX4NTzs")) .. _d("Vg"))
or (_d("OUNDBVYDWQ5TFwwXGVQdUg1K") .. tostring(yjq))
end

if os.clock() >= zhpb.themeAt then
zhpb.themeAt = os.clock() + 3
zhpb.applyTheme()
end

if os.clock() >= zhpb.capAt then
zhpb.capAt = os.clock() + 2
zhpb.refreshScaleCap()
end

if os.clock() >= zhpb.statusAt then
zhpb.statusAt = os.clock() + 2

local ns = zhpb.autoLoadName()
local igj = table.concat({
_d("OUNDBVYcVxlSDUo") .. (ns or _d("FllZDw")),
_d("K1dBDwVKGA") .. tostring(#zhpb.saves()),
zhpb.lastText,
}, _d("cg"))

if igj ~= zhpb.shownStatus then
zhpb.shownStatus = igj

pcall(function()
zhpb.statusParagraph:UpdateBody(igj)
end)
end
end

task.wait(0.25)
end
end)

task.spawn(function()
while gsk() do

local nqva = zhpb.scalePending

if nqva and os.clock() - (zhpb.scalePendingAt or 0) > 0.35 then
local hsiy = zhpb.scaleCeiling()
local axfx = math.clamp(nqva, 0.5, hsiy)

zhpb.scalePending = nil

if math.abs(axfx - zhpb.scaleTarget) > 0.002 then
zhpb.scaleTarget = axfx
zhpb.scaleAnchor = nil

zhpb.saveUi()
end
end

if math.abs(zhpb.scaleTarget - zhpb.scale) > 0.002 then
local cqml = zhpb.guiRoot()

if cqml and not zhpb.baseWidth then
zhpb.baseWidth = cqml.Size.X.Offset
zhpb.baseHeight = cqml.Size.Y.Offset
end

local aoj = zhpb.baseWidth or 720
local cus = zhpb.baseHeight or 500
local ijzg = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local aq, bzkw = 8, 40

if not zhpb.scaleAnchor and cqml then

local vyqd = zhpb.widthFactor(zhpb.scaleTarget)
local fuj, bheg = aoj * vyqd * zhpb.scaleTarget, cus * zhpb.scaleTarget
local nsob = cqml.AbsolutePosition

zhpb.scaleAnchor = Vector2.new(
math.clamp(nsob.X, aq, math.max(aq, ijzg.X - fuj - aq)),
math.clamp(nsob.Y, bzkw, math.max(bzkw, ijzg.Y - bheg - aq))
)
end

local zljn = zhpb.scaleAnchor

zhpb.scale = zhpb.scale + (zhpb.scaleTarget - zhpb.scale) * 0.18

local kklc = zhpb.widthFactor(zhpb.scale)

pcall(function()
zcwe:SetScale(zhpb.scale)

if cqml then
local unye = math.floor(aoj * kklc)

cqml.Size = UDim2.fromOffset(unye, math.floor(cus))

local xvh = cqml:FindFirstChild(_d("O1lZHhMeTA"))

if xvh then
local frjx = cqml:FindFirstChild(_d("K19TDxQRSg"))
local bllw = math.floor(frjx and frjx.Size.X.Scale * unye or unye * 0.325)

xvh.Size = UDim2.new(0, math.max(0, unye - bllw), 1, 0)
end
end
end)

if cqml and zljn then
local ioml, kjyh = aoj * kklc * zhpb.scale, cus * zhpb.scale
local bmln = math.clamp(zljn.X, aq, math.max(aq, ijzg.X - ioml - aq))
local uupi = math.clamp(zljn.Y, bzkw, math.max(bzkw, ijzg.Y - kjyh - aq))

local nhv = cqml.Parent and cqml.Parent.AbsolutePosition or Vector2.zero

pcall(function()
cqml.Position = UDim2.fromOffset(math.floor(bmln - nhv.X), math.floor(uupi - nhv.Y))
end)
end
else

zhpb.scaleAnchor = nil
end

task.wait()
end
end)

yvcz.misc.tierLabels = {}
yvcz.misc.labelToTier = {}

yvcz.misc.expSection = yvcz.misc.tab:Section({
Side = _d("NFNRHg"),
})

yvcz.misc.expSection:Header({
Name = _d("PU5HDxIZTBFZWRlWgKfvtNjS+Q"),
})

yvcz.misc.claimToggle = yvcz.misc.expSection:Toggle({
Name = _d("OUNDBVYTVBlfWg"),
Default = false,
Callback = function(ugsa)
local wvy = yvcz.misc.expeditions

wvy.enabled = ugsa
wvy.claimAt = 0

if ugsa then
wvy.askedAt = 0
wvy.request()
end
end,
}, _d("GUNDBSkTVBlfWg"))

yvcz.misc.rewardToggle = yvcz.misc.expSection:Toggle({
Name = _d("OUNDBVYTVBdFUkoEFU8ZRFMZ"),
Default = false,
Callback = function(khv)
local txl = yvcz.misc.expeditions

txl.autoClose = khv

if khv then
txl.closeRewards()
end
end,
}, _d("HU5HNRcFTBdpVAYZA10"))

yvcz.misc.startToggle = yvcz.misc.expSection:Toggle({
Name = _d("OUNDBVYDTBlEQw"),
Default = false,
Callback = function(yjc)
local flgr = yvcz.misc.expeditions

if yjc and not next(flgr.tiersWanted) then
flgr.autoStart = false

pcall(function()
yvcz.misc.startToggle:UpdateState(false)
end)

zcwe:Dialog({
Title = _d("OUNDBVYDTBlEQ0oYFV0cRRcLVgRRHUQ"),
Description = _d("KF9UAVYRTFhaUgsFBBgXWFJKAhldChZeBFYEUB0WYwMTAhgcRFgaEh9PFhZRAwQDTFYWcgsFCRgMV1wPBVBMEFMXCR4VWQhTRB5WE1kKUkRGVj5RH15DBxcCXVhCXw9WAlkKU0QeWlBZFlIXCxgJGBZDWggTAhgXUBceHhVVWFVWBFYCTRYWVh5WH1YbUxk"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})

return
end

flgr.autoStart = yjc
flgr.startedAt = {}

if yjc then
flgr.askedAt = 0
flgr.request()
end
end,
}, _d("GUNDBSkDTBlEQw"))

for hok, vxmn in ipairs(yvcz.misc.expeditions.tiers()) do
table.insert(yvcz.misc.tierLabels, tostring(vxmn.name))
yvcz.misc.labelToTier[tostring(vxmn.name)] = vxmn.id
end

yvcz.misc.building = true

yvcz.misc.tierDropdown = yvcz.misc.expSection:Dropdown({
Name = _d("LF9SGA"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = yvcz.misc.tierLabels,
Callback = function(zqka)
local rw = yvcz.misc.expeditions

if yvcz.misc.building then
return
end

local eshx = {}
local xtb = {}

if type(zqka) == _d("DFdVBhM") then
for jupu, rhb in pairs(zqka) do
local pxt = yvcz.misc.labelToTier[tostring(jupu)]

if rhb and pxt then
eshx[pxt] = true
table.insert(xtb, tostring(jupu))
end
end
end

table.sort(xtb)
rw.tiersWanted = eshx

pcall(function()
yvcz.misc.tierDropdown:UpdateName(#xtb > 0 and (_d("LF9SGFaSuNoW") .. table.concat(xtb, _d("VBY"))) or _d("LF9SGFaSuNoWWQUYFQ"))
end)
end,
}, _d("DF9SGA"))

task.defer(function()
yvcz.misc.building = false
end)

yvcz.misc.expSection:Button({
Name = _d("O1pWAxtQVhdB"),
Callback = function()
local vvho = yvcz.misc.expeditions

if not vvho.claim() then
zcwe:Notify({
Title = _d("PU5HDxIZTBFZWRk"),
Description = _d("NllDAh8eX1heVhlWE1cVUxcIFxNTWE9SHlg"),
Lifetime = 5,
})
end
end,
})

yvcz.misc.expSection:Button({
Name = _d("K1NZDlYDXRRTVB4TFA"),
Callback = function()
local dtl = yvcz.misc.expeditions

if not next(dtl.tiersWanted) then
zcwe:Notify({
Title = _d("PU5HDxIZTBFZWRk"),
Description = _d("KF9UAVYRTFhaUgsFBBgXWFJKAhldChZeBFYEUB0WUxgZAFwXQVlKEBlKC0IZ"),
Lifetime = 5,
})

return
end

local bqli = {}
local smkn = 0

for zzg, ret in ipairs(dtl.tiers()) do
if dtl.tiersWanted[ret.id] and dtl.status(ret.id) == _d("GUBWAxoRWhRT") then
if dtl.start(ret.id, bqli) then
smkn = smkn + 1
end
end
end

if smkn == 0 then
zcwe:Notify({
Title = _d("PU5HDxIZTBFZWRk"),
Description = _d("NllDAh8eX1hVWB8aFBgaUxcZEx5MQhZDAhNQSx1aUgkCFVxYQl4PBAMYGURSShccSh1XUxNWH00MGhcFBFBMEFNFD1YRSh0WWQUCUF4XQ0VKExxRH19VBhNQWxlEUxlWFlcKFkMCEx0W"),
Lifetime = 6,
})
end
end,
})

yvcz.misc.expInfo = yvcz.misc.tab:Section({
Side = _d("Kl9QAgI"),
})

yvcz.misc.expInfo:Header({
Name = _d("PU5HDxIZTBFZWRk"),
})

yvcz.misc.expParagraph = yvcz.misc.expInfo:Paragraph({
Header = _d("K0JWHgMD"),
Body = yvcz.misc.expeditions.text(),
})

yvcz.misc.expeditions.loadRewards()

yvcz.misc.expRewardParagraph = yvcz.misc.expInfo:Paragraph({
Header = _d("O1pWAxsVXA"),
Body = yvcz.misc.expeditions.rewardsText(),
})

task.spawn(function()
local opp = yvcz.misc.expeditions
local zrn = wek(_d("K09ZCTMISB1SXh4fH1YL"), 3)

if zrn then
im(zrn.OnClientEvent, function(hph)
if type(hph) ~= _d("DFdVBhM") then
return
end

opp.state = hph

opp.offset = (tonumber(hph.now) or os.time()) - os.time()
opp.syncedAt = os.clock()

if type(hph.rewards) == _d("DFdVBhM") and #hph.rewards > 0 then
table.insert(opp.rewardLog, 1, {
at = os.time(),
title = tostring(hph.rewardTitle or _d("PU5HDxIZTBFZWQ")),
items = hph.rewards,
})

while #opp.rewardLog > 8 do
table.remove(opp.rewardLog)
end

opp.saveRewards()

if opp.autoClose then

task.delay(0.35, opp.closeRewards)
end
end
end)
end

while gsk() do

if os.clock() - opp.askedAt > 1 and os.clock() - opp.syncedAt > 20 then
opp.request()
end

if opp.enabled then
opp.claim()
end

if opp.autoClose then
opp.closeRewards()
end

if opp.autoStart and next(opp.tiersWanted) then
local jbf = {}

for wmlu, grpg in ipairs(opp.tiers()) do
if opp.tiersWanted[grpg.id] and opp.status(grpg.id) == _d("GUBWAxoRWhRT") then
if opp.start(grpg.id, jbf) then
break
end
end
end
end

local ettk = opp.text()

if yvcz.misc.expParagraph and ettk ~= yvcz.misc.expShown then
yvcz.misc.expShown = ettk

pcall(function()
yvcz.misc.expParagraph:UpdateBody(ettk)
end)
end

local qbf = opp.rewardsText()

if yvcz.misc.expRewardParagraph and qbf ~= opp.rewardsShown then
opp.rewardsShown = qbf

pcall(function()
yvcz.misc.expRewardParagraph:UpdateBody(qbf)
end)
end

task.wait(0.75)
end
end)

yvcz.misc.util = {
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

function yvcz.misc.util.hook()
local usfw = yvcz.misc.util

if usfw.hooked then
return
end

usfw.hooked = true

if xl.SyncCollection then
im(xl.SyncCollection.OnClientEvent, function(xn)
if type(xn) == _d("DFdVBhM") then
usfw.profile = xn
usfw.profileAt = os.clock()
end
end)
end

if xl.SyncAchievements then
im(xl.SyncAchievements.OnClientEvent, function(mts)
if type(mts) == _d("DFdVBhM") then
usfw.ach = mts
end
end)
end

if xl.SyncQuests then
im(xl.SyncQuests.OnClientEvent, function(vskt)
if type(vskt) == _d("DFdVBhM") and type(vskt.list) == _d("DFdVBhM") then
usfw.quests = vskt
end
end)
end

if xl.SyncPeriodicQuests then
im(xl.SyncPeriodicQuests.OnClientEvent, function(pn, fzzv)
if pn == _d("D1NSARoJ") and type(fzzv) == _d("DFdVBhM") and type(fzzv.list) == _d("DFdVBhM") then
usfw.weekly = fzzv
end
end)
end
end

function yvcz.misc.util.askProfile()
local di = yvcz.misc.util

if os.clock() - di.askedAt < 1.5 then
return
end

di.askedAt = os.clock()

if xl.RequestSync then
pcall(function()
xl.RequestSync:FireServer()
end)
end
end

function yvcz.misc.util.currentProfile()
local wq = yvcz.misc.util

if type(wq.profile) ~= _d("DFdVBhM") then
wq.askProfile()

return nil
end

if os.clock() - wq.profileAt > 20 then
wq.askProfile()
end

return wq.profile
end

function yvcz.misc.util.forgetProfile()
local yygq = yvcz.misc.util

yygq.profile = nil
yygq.profileAt = 0
yygq.askedAt = 0
end

function yvcz.misc.util.indexedTotal(tp)
local rc = 0

for ffqp, uax in pairs((tp and tp.cardIndex) or {}) do
if uax then
rc = rc + 1
end
end

return rc
end

function yvcz.misc.util.indexPending(ni)
local ql = {}

if type(ni) ~= _d("DFdVBhM") then
return ql
end

local vpt = yvcz.misc.util.indexedTotal(ni)
local udm = ni.indexMilestones or {}

for gigx = 1, 30 do
if not udm[gigx] and gigx * 5 <= vpt then
table.insert(ql, gigx)
end
end

return ql
end

function yvcz.misc.util.indexFrame()
local rqlp = ff:FindFirstChild(_d("O1dFDj8eXB1OcB8f"))

return rqlp and rqlp:FindFirstChild(_d("MVhTDw42ShlbUg"))
end

function yvcz.misc.util.clickButton(ppov)
if not ppov then
return false
end

if firesignal then
local crod = pcall(firesignal, ppov.MouseButton1Click)

if crod then
return true
end
end

return pcall(function()
ppov:Activate()
end)
end

function yvcz.misc.util.closeIndex()
local qg = yvcz.misc.util.indexFrame()

if not qg or not qg.Visible then
return false
end

pcall(function()
local wzlp = ayu:FindFirstChild(_d("NVlTHxoVaxtEXhoCAw"))
local ubf = wzlp and wzlp:FindFirstChild(_d("NVNZHzsRVhlRUhg"))

if ubf then
require(ubf).close(qg)
end
end)

yvcz.misc.util.clickButton(qg:FindFirstChild(_d("O1pYGRMyTQxCWAQ")))

pcall(function()
qg.Visible = false
end)

return true
end

function yvcz.misc.util.claimIndex()
local vv = yvcz.misc.util

if os.clock() < vv.indexAt then
return false
end

local kpyh = vv.currentProfile()

if not kpyh then
return false
end

local gph = vv.indexPending(kpyh)
local uowg = gph[1]

if not uowg then
return false
end

local zw = vv.indexedTotal(kpyh)
local ufn = vv.indexAsked

if type(ufn) == _d("DFdVBhM") and ufn.milestone == uowg and ufn.total == zw then
return false
end

vv.indexAsked = { milestone = uowg, total = zw }

pcall(function()
xl.ClaimIndexReward:FireServer(uowg)
end)

vv.indexAt = os.clock() + 1.5

vv.profile = nil
vv.profileAt = 0

task.delay(0.4, vv.closeIndex)

return true
end

function yvcz.misc.util.achPending()
local by = {}
local ixd = yvcz.misc.util.ach

if type(ixd) ~= _d("DFdVBhM") then
return by
end

for etq, qtw in ipairs(ixd.chains or {}) do
for eq, ghc in ipairs(qtw.levels or {}) do
if ghc.reached and not ghc.claimed then
table.insert(by, { chain = tostring(qtw.id), index = ghc.index, name = tostring(ghc.name or ghc.index) })
end
end
end

return by
end

function yvcz.misc.util.claimAchievement()
local buu = yvcz.misc.util

if os.clock() < buu.achAt then
return false
end

if type(buu.ach) ~= _d("DFdVBhM") then
if os.clock() - buu.achAskedAt > 4 and xl.RequestAchievements then
buu.achAskedAt = os.clock()

pcall(function()
xl.RequestAchievements:FireServer()
end)
end

return false
end

for of, twgd in ipairs(buu.achPending()) do
pcall(function()
xl.ClaimAchievement:FireServer(twgd.chain, twgd.index)
end)

buu.achAt = os.clock() + 1

task.delay(1, function()
if xl.RequestAchievements then
pcall(function()
xl.RequestAchievements:FireServer()
end)
end
end)

return true
end

return false
end

function yvcz.misc.util.questRows()
local xxl = yvcz.misc.util
local ghll = {}

for pun, rxn in ipairs({ { list = _d("HFdeBg8"), payload = xxl.quests }, { list = _d("D1NSARoJ"), payload = xxl.weekly } }) do
for pca, aoxl in ipairs((type(rxn.payload) == _d("DFdVBhM") and rxn.payload.list) or {}) do
if type(aoxl) == _d("DFdVBhM") then
table.insert(ghll, { list = rxn.list, index = pca, quest = aoxl })
end
end
end

return ghll
end

function yvcz.misc.util.questPending()
local uw = {}

for woa, evx in ipairs(yvcz.misc.util.questRows()) do
local ukq = evx.quest

if not ukq.claimed and (tonumber(ukq.progress) or 0) >= (tonumber(ukq.target) or math.huge) then
table.insert(uw, evx)
end
end

return uw
end

function yvcz.misc.util.askQuests()
local mvxd = yvcz.misc.util

if os.clock() - mvxd.questAskedAt > 4 and xl.RequestQuests then
mvxd.questAskedAt = os.clock()

pcall(function()
xl.RequestQuests:FireServer()
end)
end

if os.clock() - mvxd.weeklyAskedAt > 4 and xl.RequestPeriodicQuests then
mvxd.weeklyAskedAt = os.clock()

pcall(function()
xl.RequestPeriodicQuests:FireServer(_d("D1NSARoJ"))
end)
end
end

function yvcz.misc.util.claimQuest()
local kxr = yvcz.misc.util

if os.clock() < kxr.questAt then
return false
end

if type(kxr.quests) ~= _d("DFdVBhM") and type(kxr.weekly) ~= _d("DFdVBhM") then
kxr.askQuests()

return false
end

for tg, exjm in ipairs(kxr.questPending()) do
if exjm.list == _d("D1NSARoJ") then
if xl.ClaimPeriodicQuest then
pcall(function()
xl.ClaimPeriodicQuest:FireServer(_d("D1NSARoJ"), exjm.index)
end)
end
else
pcall(function()
xl.ClaimQuest:FireServer(exjm.index)
end)
end

kxr.questAt = os.clock() + 1.2

task.delay(1, function()
kxr.askQuests()
end)

return true
end

return false
end

function yvcz.misc.util.packCatalog()
local aaxu = yvcz.misc.util

if aaxu.packs then
return aaxu.packs
end

local xjcz = {}
local xcwa, svq = pcall(function()
return require(ayu.ModuleScripts.PackData)
end)

if xcwa and type(svq) == _d("DFdVBhM") and type(svq.Packs) == _d("DFdVBhM") then
for sq, bltd in ipairs(svq.Packs) do
if bltd.id then
table.insert(xjcz, { id = tostring(bltd.id), name = tostring(bltd.name or bltd.id) })
end
end
end

aaxu.packs = xjcz

return xjcz
end

function yvcz.misc.util.packUnlocked(jfk, bnp)
if type(jfk) ~= _d("DFdVBhM") then
return true
end

local lob, opcd = pcall(function()
return require(ayu.ModuleScripts.PackData)
end)
local nq, ovds = pcall(function()
return require(ayu.ModuleScripts.PackSlotData)
end)

if not (lob and nq) then
return true
end

local vvo = opcd.ById and opcd.ById[bnp]

if not vvo then
return false
end

local svt, vfgu = pcall(ovds.isPackUnlocked, vvo, jfk)

return (not svt) or vfgu == true
end

function yvcz.misc.util.visit(wam)
local ienp = workspace:FindFirstChild(_d("NmZ0GQ"))
local lui = ienp and ienp:FindFirstChild(wam)
local zyb = omhv.Character
local wfoi = zyb and zyb:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))
local yryh = lui and (lui:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg")) or lui:FindFirstChildWhichIsA(_d("OldEDyYRSgw"), true))

if not (yryh and wfoi) then
return nil
end

local ytuk = wfoi.CFrame

wfoi.CFrame = CFrame.new((yryh.CFrame * CFrame.new(0, 0, -5)).Position)

return ytuk
end

function yvcz.misc.util.returnTo(gxak)
local pxz = omhv.Character
local rrmf = pxz and pxz:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if rrmf and gxak then
rrmf.CFrame = gxak
end
end

function yvcz.misc.util.applyPacks(xp, wgnw)
local lsn = yvcz.misc.util

if os.clock() < lsn.packAt then
return false, _d("L1deHlYRGBVZWg8YBBY")
end

local guxt = lsn.currentProfile()

if not guxt then
return false, _d("KlNWDh8eX1hPWB8EUEgKWVEDGhUYVRZDGA9QWR9XXgRWGVZYVxcZExNXFlIZ")
end

if wgnw and (tonumber(guxt.packSlots) or 1) < 2 then
return false, _d("K1pYHlZCGBZTUg4FUEwQUxcPDgRKGRZHCxUbGAtaWB5WF1kVU0cLBQMW")
end

if not (xl.OpenPackShop and xl.EquipPack) then
return false, _d("LF5SSgYRWxMWRAIZABgRRRcEGQQYEVgXHh4ZS1hRVgcTUE4dREQDGR4W")
end

lsn.packAt = os.clock() + 8

task.spawn(function()
local clyj = lsn.visit(_d("NllVBhMDSxFYUBk"))

if not clyj then
return
end

pcall(function()
xl.OpenPackShop:FireServer(_d("CFdUASkdXQpVXwsYBA"))
end)

task.wait(1.2)

if xp then
pcall(function()
xl.EquipPack:FireServer(xp, 1)
end)
end

if wgnw then
task.wait(0.8)

pcall(function()
xl.EquipPack:FireServer(wgnw, 2)
end)
end

task.wait(0.8)
lsn.returnTo(clyj)
lsn.forgetProfile()
end)

return true
end

function yvcz.misc.util.accScore(gbgx)
local khm = gbgx.effects or {}

return (khm.luckBonus or 0) * 10
+ ((khm.luckMult or 1) - 1) * 200
+ ((khm.borderLuckMult or 1) - 1) * 200
- ((khm.rollCdMult or 1) - 1) * 30
end

function yvcz.misc.util.accCatalog()
local sjz = yvcz.misc.util

if sjz.accessories then
return sjz.accessories
end

local slc = {}

for eedx, agza in ipairs({ _d("OVVUDwUDVwpPcwsCEQ"), _d("OVVUDwUDVwpPcwsCEQo") }) do
local dgdb, wcw = pcall(function()
return require(ayu.ModuleScripts[agza])
end)

if dgdb and type(wcw) == _d("DFdVBhM") and type(wcw.Accessories) == _d("DFdVBhM") then
for yvd, dl in ipairs(wcw.Accessories) do
if dl.id then
table.insert(slc, {
id = tostring(dl.id),
name = tostring(dl.name or dl.id),
shop = eedx,

shopName = eedx == 1 and _d("OVVUDwUDVwpPFzkeH0g") or _d("NU9EHhMCURdDREo7EVY"),
raidable = dl.raidShopOnly == true,
hidden = dl.hidden == true,
requirements = dl.requirements or {},
score = yvcz.misc.util.accScore(dl),
})
end
end
end
end

sjz.accessories = slc

return slc
end

function yvcz.misc.util.accOwned(rohz)
local sjvi = {}

for abe, prqd in ipairs((rohz and rohz.accessories) or {}) do
sjvi[tostring(prqd)] = true
end

return sjvi
end

function yvcz.misc.util.accMeets(wvn, fcp)
for osp, nbnn in ipairs(fcp.requirements) do
local xdw = wvn.cards and wvn.cards[nbnn.cardId]
local hti = type(xdw) == _d("DFdVBhM") and (tonumber(xdw[nbnn.borderLevel]) or 0) or 0

if hti < (tonumber(nbnn.amount) or 0) then
return false
end
end

return true
end

function yvcz.misc.util.accPlan(gdq)
local yfe = yvcz.misc.util
local exbw = yfe.accOwned(gdq)
local tldh = {}

for qfm, fis in ipairs(yfe.accCatalog()) do
if not exbw[fis.id] and not fis.raidable and not fis.hidden and yfe.accMeets(gdq, fis) then
local cg = tldh[fis.shop]

if not cg or fis.score > cg.score then
tldh[fis.shop] = fis
end
end
end

return tldh
end

function yvcz.misc.util.accPicks(la)
local qznc = yvcz.misc.util
local vw = qznc.accOwned(la)
local bk, qpft

for iwd, oap in ipairs(qznc.accCatalog()) do
if vw[oap.id] then
if not bk or oap.score > bk.score then
bk = oap
end
elseif not oap.raidable and not oap.hidden and qznc.accMeets(la, oap) then
if not qpft or oap.score > qpft.score then
qpft = oap
end
end
end

return bk, qpft
end

function yvcz.misc.util.equipBest()
local gei = yvcz.misc.util
local ri = gei.currentProfile()

if not ri or not xl.EquipAccessory then
return false
end

local izb = gei.accPicks(ri)

if not izb or ri.equippedAccessory == izb.id then
return izb ~= nil
end

pcall(function()
xl.EquipAccessory:FireServer(izb.id)
end)

task.delay(1.5, function()
gei.forgetProfile()
end)

return true
end

function yvcz.misc.util.buyBest()
local tmyf = yvcz.misc.util

if os.clock() < tmyf.accAt then
return false, _d("L1deHlYRGBVZWg8YBBY")
end

if fq.busy(1) or fq.busy(2) then
tmyf.accNote = _d("MVgXC1YSWQxCWw9WXRgZFkQCGQAYDEReGlYHVw1aU0oTHlxYX0M")
return false, _d("MVgXC1YSWQxCWw9WXRgZFkQCGQAYDEReGlYHVw1aU0oTHlxYX0NE")
end

local lvp = tmyf.currentProfile()

if not lvp then
tmyf.accNote = _d("KlNWDh8eX1hPWB8EUEgKWVEDGhUYVRZAAxocGAxETkoXF1kRWBcDGFBZWEVSCRkeXA")
return false, _d("KlNWDh8eX1hPWB8EUEgKWVEDGhUYVRZDGA9QWR9XXgRWGVZYVxcZExNXFlIZ")
end

local ka = tmyf.accPlan(lvp)
local zr = {}

for mnnj = 1, 2 do
if ka[mnnj] then
table.insert(zr, ka[mnnj].name)
end
end

if #zr == 0 then
tmyf.accNote = _d("NllDAh8eX1hYUh1WBVYUWVQBExQYAVNDSltQTBBTFwkXAlwLFlEFBFBRDBZWGBNQVhdCFwMYUEwQUxcJGRxUHVVDAxke")
return false, _d("NllDAh8eX1hYUh1WE1kWFlUPVgVWFFlUARMUGAFTQ0pbUEwQUxcJFwJcCxZRBQRQUQwWVhgTUFYXQhcDGFBMEFMXCRkcVB1VQwMZHhY")
end

tmyf.accAt = os.clock() + 12
tmyf.accNote = _d("L1dbAR8eX1hCWEoCGF1YVVgfGARdChZRBQRQ") .. table.concat(zr, _d("WFdZDlY"))

task.spawn(function()
for efv = 1, 2 do
local rdqj = ka[efv]

if rdqj then
local izjz = efv == 1 and _d("CENFGQMZTB1SUw") or _d("D1dRDBMcVRlYUgsCA08ZUFEPGgM")
local iw = efv == 1 and xl.OpenAccessoryShop or xl.OpenAccessoryShop2
local kns = efv == 1 and xl.BuyAccessory or xl.BuyAccessory2
local rhp = izjz and tmyf.visit(izjz) or nil

if not rhp then
local yucj = workspace:FindFirstChild(_d("NmZ0GQ"))
local iqu = yucj and yucj:FindFirstChild(izjz)

if iqu and os.clock() - (tmyf.worldAskedAt or 0) > 25 then

tmyf.worldAskedAt = os.clock()
tmyf.accNote = _d("O15WGBcTTB1EFwQZBBgKU1YOD1AVWEJFEx8eX1hXUAsfHhgLXlgYAhxB")
elseif not iqu and os.clock() - (tmyf.worldAskedAt or 0) > 25 then

tmyf.worldAskedAt = os.clock()
tmyf.accNote = _d("NlkXCRkFVgxTRUofHhgMXl4ZVgdXClpTSltQTBldXgQRUEwQUxcGGRJaARZDDxoVSBdEQw")

pcall(function()
xl.TeleportToWorld:FireServer(_d("FFlVCA8"))
end)

task.wait(4.5)
rhp = tmyf.visit(izjz)
end
end

if rhp and iw and kns then

task.wait(0.9)

pcall(function()
iw:FireServer()
end)

task.wait(1.2)

pcall(function()
kns:FireServer(rdqj.id)
end)

task.wait(0.9)
tmyf.returnTo(rhp)
tmyf.accNote = _d("OllCDR4EGA") .. tostring(rdqj.name)
elseif not rhp then
tmyf.accNote = _d("O1lCBhJQVhdCFxgTEVsQFkMCE1BbF0NZHhMCGFUWQxgPUFkfV14EVhlWWFcXBxkdXRZC")
end

task.wait(0.6)
end
end

tmyf.forgetProfile()

for nmc = 1, 8 do
if type(tmyf.profile) == _d("DFdVBhM") then
break
end

tmyf.askProfile()
task.wait(0.7)
end

tmyf.equipBest()
end)

return true, table.concat(zr, _d("VBY"))
end

function yvcz.misc.util.indexText()
local pot = yvcz.misc.util

if type(pot.profile) ~= _d("DFdVBhM") then
return _d("KlNWDh8eX1hPWB8EUFsZRFNKHx5cHU4ZRFg")
end

local axf = pot.indexPending(pot.profile)
local mkl = 0

for uc, almb in pairs(pot.profile.indexMilestones or {}) do
if almb then
mkl = mkl + 1
end
end

local jy = tostring(pot.indexedTotal(pot.profile)) .. _d("WFVWGBIDGBFYUw8OFVxUFg") .. tostring(mkl) .. _d("WFlRSkVAGApTQAsEFEtYVVsLHx1dHA")

if #axf > 0 then
jy = jy .. _d("cmRSCxIJAlg") .. table.concat(axf, _d("VBY"))
end

return jy
end

function yvcz.misc.util.achText()
local umiz = yvcz.misc.util

if type(umiz.ach) ~= _d("DFdVBhM") then
return _d("KlNWDh8eX1hXVAIfFU4dW1IEAgMWVhg")
end

local atty = umiz.achPending()
local akct = 0

for cyd, sko in ipairs(umiz.ach.chains or {}) do
for tjaq in ipairs(sko.levels or {}) do
akct = akct + 1
end
end

return tostring(#atty) .. _d("WFlRSg") .. tostring(akct) .. _d("WFdUAh8VTh1bUgQCAxgKU1YODw")
end

function yvcz.misc.util.questText()
local mf = yvcz.misc.util

if type(mf.quests) ~= _d("DFdVBhM") and type(mf.weekly) ~= _d("DFdVBhM") then
return _d("KlNWDh8eX1hHQg8FBEtWGBk")
end

local gb, wttm = 0, 0

for dmy, jxve in ipairs(mf.questPending()) do
if jxve.list == _d("D1NSARoJ") then
wttm = wttm + 1
else
gb = gb + 1
end
end

local zlv = type(mf.quests) == _d("DFdVBhM") and #(mf.quests.list or {}) or 0
local nqe = type(mf.weekly) == _d("DFdVBhM") and #(mf.weekly.list or {}) or 0

return tostring(gb) .. _d("WFlRSg") .. tostring(zlv) .. _d("WFJWAxoJGApTVg4Peg")
.. tostring(wttm) .. _d("WFlRSg") .. tostring(nqe) .. _d("WEFSDx0cQVhEUgsSCQ")
end

function yvcz.misc.util.packText()
local nx = yvcz.misc.util
local wuv = nx.profile

if type(wuv) ~= _d("DFdVBhM") then
return _d("KlNWDh8eX1hPWB8EUEgZVVwZWF4W")
end

local function aaie(dkp)
for plf, tho in ipairs(nx.packCatalog()) do
if tho.id == dkp then
return tho.name
end
end

return tostring(dkp)
end

local pac = _d("K1pYHlZBAlg") .. aaie(wuv.equippedPack)

if (tonumber(wuv.packSlots) or 1) >= 2 then
pac = pac .. _d("cmVbBQJQCkIW") .. aaie(wuv.equippedPack2)
else
pac = pac .. _d("cmVbBQJQCkIWUAsbFUgZRURKGB9MWFlABBMU")
end

return pac
end

function yvcz.misc.util.accText()
local lcd = yvcz.misc.util
local fut = lcd.profile

if type(fut) ~= _d("DFdVBhM") then
return _d("KlNWDh8eX1hPWB8EUFkbVVIZBR9KEVNERFhe")
end

local vvzi = lcd.accPicks(fut)
local eu = lcd.accPlan(fut)
local dns = _d("FllZDw")

for wr, ydga in ipairs(lcd.accCatalog()) do
if ydga.id == fut.equippedAccessory then
dns = ydga.name .. _d("WB4") .. ydga.shopName .. _d("UQ")
end
end

local cyg = _d("PUdCAwYAXRwMFw") .. dns

if vvzi then
cyg = cyg .. _d("cnRSGQJQVw9YUg5MUA") .. vvzi.name
end

cyg = cyg .. _d("cndUCRMDSxdETkolGFcIDBc") .. (eu[1] and eu[1].name or _d("FllDAh8eX1hYUh0"))
cyg = cyg .. _d("cntOGQIVShFZQhlWPVkWDBc") .. (eu[2] and eu[2].name or _d("FllDAh8eX1hYUh0"))

if lcd.accNote then
cyg = cyg .. _d("cnpWGQJQTApfR1BW") .. lcd.accNote
end

return cyg
end

yvcz.misc.util.hook()
yvcz.misc.util.askProfile()

yvcz.misc.indexSection = yvcz.misc.tab:Section({
Side = _d("NFNRHg"),
})

yvcz.misc.indexSection:Header({
Name = _d("O1dFDlY5VhxTT0qG76v/"),
})

yvcz.misc.indexToggle = yvcz.misc.indexSection:Toggle({
Name = _d("OUNDBVYTVBlfWg"),
Default = false,
Callback = function(nvt)
yvcz.misc.util.indexOn = nvt
yvcz.misc.util.indexAt = 0

yvcz.misc.util.indexAsked = nil
end,
}, _d("GUNDBSkTVBlfWjVE"))

yvcz.misc.indexSection:Button({
Name = _d("O1pWAxtQVhdB"),
Callback = function()
local utpo = yvcz.misc.util

utpo.indexAt = 0
utpo.indexAsked = nil

if not utpo.claimIndex() then
zcwe:Notify({
Title = _d("O1dFDlY5VhxTTw"),
Description = _d("NlkXBx8cXQtCWAQTUFELFkUPFxRBWEJYShUcWRFbGQ"),
Lifetime = 5,
})
end
end,
})

yvcz.misc.claimSection = yvcz.misc.tab:Section({
Side = _d("NFNRHg"),
})

yvcz.misc.claimSection:Header({
Name = _d("OVVfAxMGXRVTWR4FUB5YZ0IPBQRLWMao5fA"),
})

yvcz.misc.achToggle = yvcz.misc.claimSection:Toggle({
Name = _d("OUNDBVYTVBlfWkoXE1ARU0EPGxVWDEU"),
Default = false,
Callback = function(iuaa)
yvcz.misc.util.achOn = iuaa
yvcz.misc.util.achAt = 0

if iuaa and xl.RequestAchievements then
pcall(function()
xl.RequestAchievements:FireServer()
end)
end
end,
}, _d("GUNDBSkTVBlfWjUXE1ARU0EPGxVWDEU"))

yvcz.misc.questToggle = yvcz.misc.claimSection:Toggle({
Name = _d("OUNDBVYTVBlfWkoHBV0LQkQ"),
Default = false,
Callback = function(gqdi)
yvcz.misc.util.questOn = gqdi
yvcz.misc.util.questAt = 0
yvcz.misc.util.questAskedAt = 0
yvcz.misc.util.weeklyAskedAt = 0

if gqdi then
yvcz.misc.util.askQuests()
end
end,
}, _d("GUNDBSkTVBlfWjUHBV0LQkQ"))

yvcz.misc.claimSection:Button({
Name = _d("O1pWAxtQWRRaFwQZBw"),
Callback = function()
local imwc = yvcz.misc.util

imwc.achAt = 0
imwc.questAt = 0

local aw = imwc.claimAchievement()
local ibk = imwc.claimQuest()

if not (aw or ibk) then
zcwe:Notify({
Title = _d("OVVfAxMGXRVTWR4FUB5YZ0IPBQRL"),
Description = _d("NllDAh8eX1hfREoEFVkcTxceGVBbFFdeB1g"),
Lifetime = 5,
})
end
end,
})

yvcz.misc.packSection = yvcz.misc.tab:Section({
Side = _d("NFNRHg"),
})

yvcz.misc.packSection:Header({
Name = _d("O1dFDlYgWRtdREqG77bM"),
})

yvcz.misc.packSection:Paragraph({
Header = _d("LEFYSgUcVwxF"),
Body = _d("KF9UAQVQWQhGWxNWH1YUTxcdHhVWWE9YH1YASh1FREo3AEgUTxcaFxNTCxoXCBMTWQ1FUkoCGF1YRUADAhNQWEFWBh0DGAxZFx4eFRgVU0UJHhFWDBg"),
})

local hcq = {}
local hz = {}

for fo, rchm in ipairs(yvcz.misc.util.packCatalog()) do
table.insert(hcq, rchm.name)
hz[rchm.name] = rchm.id
end

yvcz.misc.packSlotOne = nil
yvcz.misc.packSlotTwo = nil

yvcz.misc.packDropdownOne = yvcz.misc.packSection:Dropdown({
Name = _d("K1pYHlZB"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = hcq,
Callback = function(nir)
local hvn = type(nir) == _d("DFdVBhM") and nir[1] or nir

yvcz.misc.packSlotOne = hz[tostring(hvn)]
end,
}, _d("C1pYHilB"))

yvcz.misc.packDropdownTwo = yvcz.misc.packSection:Dropdown({
Name = _d("K1pYHlZC"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = hcq,
Callback = function(dnlo)
local yc = type(dnlo) == _d("DFdVBhM") and dnlo[1] or dnlo

yvcz.misc.packSlotTwo = hz[tostring(yc)]
end,
}, _d("C1pYHilC"))

yvcz.misc.packSection:Button({
Name = _d("OUZHBg9QSBlVXBk"),
Callback = function()
local ebf = yvcz.misc.util
local bxt = yvcz.misc.packSlotOne
local hpin = yvcz.misc.packSlotTwo

if not bxt then
zcwe:Notify({
Title = _d("O1dFDlYgWRtdRA"),
Description = _d("KF9UAVYRGAhXVAFWFlcKFkQGGQQYSRZRAwQDTFY"),
Lifetime = 5,
})

return
end

local olo, hab = ebf.applyPacks(bxt, hpin)

if not olo then
zcwe:Dialog({
Title = _d("O1dFDlYgWRtdRA"),
Description = hab,
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})
end
end,
})

yvcz.misc.cards = {
rarityLabels = { _d("OVpb"), _d("NllFBxcc"), _d("P1lbDg"), _d("KldeBBQfTw"), _d("LVheHBMCSxla") },
borderOf = { Normal = 1, Gold = 2, Rainbow = 3, Universal = 4 },
mergeOn = false,
deconOn = false,
mergeWanted = {},
deconWanted = {},
mergeAt = 0,
deconAt = 0,
mergeDone = _d("NllDAh8eX1hFUgQCUEEdQg"),
deconDone = _d("NllDAh8eX1hFUgQCUEEdQg"),

inFlight = false,

interval = 3600,
manualGap = 20,
manualAt = 0,

protectedPrefixes = { weather = true, boss = true, raid = true, wb = true, fish = true, hw = true, event = true },

deconExceptions = { weather_sayaka = true, weather_caesar = true },

deconConfirmed = false,
burnAskedAt = 0,
}

function yvcz.misc.cards.isProtected(btuh, jep)
local on = yvcz.misc.cards
local eqlc = tostring(btuh or _d(""))
local dx = eqlc:match(_d("Jh5sC1sKCFUPakFfLw"))

if not (dx and on.protectedPrefixes[dx]) then
return false
end

return not (on.deconExceptions[eqlc] and jep == 2)
end

function yvcz.misc.cards.burnAllowed(wos)
local dpsu = yvcz.misc.cards
local fvw = dpsu.wantedFor(_d("HFNUBRgnWRZCUg4"))

if not (fvw == nil or fvw[3] or fvw[4]) then
dpsu.deconConfirmed = false

return true
end

if dpsu.deconConfirmed then
return true
end

if wos then
return false
end

if os.clock() < (dpsu.burnAskedAt or 0) then
return false
end

dpsu.burnAskedAt = os.clock() + 20

zcwe:Dialog({
Title = _d("OkNFBFYiWRFYVQUBUFcKFmIEHwZdCkVWBlYTWQpSRFU"),
Description = _d("OUNDBVYUXRtZWRkCAk0bQhcZEx5cCxZSHBMCQVhVWBoPUFEWFkMCE1BVGUJUAh8eX1hEWB0FUFkWUhcJFx5WF0IXCBNQTRZSWAQTXhg")
.. _d("L1NWHh4VSlQWVQUFAxRYRFYDElBaF0VERlYHVwpaU0oUH0sLGhcMHwNQEVhQRlY4WRRaWB0TFVZYV1kOVhVOHVhDShURShxFFwsEFRgQU1sOVhJZG10XDx8EUB1EFx0XCRY"),
Buttons = {
{
Name = _d("OkNFBFYEUB1b"),
Callback = function()
dpsu.deconConfirmed = true
dpsu.deconAt = 0
dpsu.manualAt = 0

pcall(function()
yvcz.misc.deconToggle:UpdateState(true)
end)
end,
},
{
Name = _d("O1dZCRMc"),
Callback = function()
pcall(function()
yvcz.misc.deconToggle:UpdateState(false)
end)
end,
},
},
})

return false
end

function yvcz.misc.cards.wantedFor(uvxt)
local ipp = yvcz.misc.cards[uvxt] or {}

if next(ipp) == nil or ipp[0] then
return nil
end

return ipp
end

function yvcz.misc.cards.npcFor(mhme)
local te = workspace:FindFirstChild(_d("NmZ0GQ"))

if not te then
return nil
end

local sur = mhme and _d("HkNEDykeSBs") or _d("HFNUBRgDTApDVB4pHkgb")

for ljxx, jxc in ipairs(te:GetChildren()) do
if jxc:GetAttribute(_d("NmZ0IxI")) == sur then
return jxc
end
end

local qrz = mhme and { _d("N1lHAhoJ"), _d("F1lHBg8V") } or { _d("K15WHxoR"), _d("MFdBDyIHVzxXUxk") }

for jlsx, ima in ipairs(te:GetChildren()) do
for km, woqf in ipairs(qrz) do
if ima.Name == woqf then
return ima
end
end
end

local pyoc = mhme and { _d("G1dFDlYdXQpRXgQR"), _d("F1lHAhoJ") } or { _d("HFNUBRgDTApDVB4fH1Y"), _d("C15WHxoR") }

for fes, gjyj in ipairs(te:GetChildren()) do
for xea, fl in ipairs(gjyj:GetDescendants()) do
if fl:IsA(_d("LFNPHjoRWh1a")) and fl.Text ~= _d("") then
local xxq = fl.Text:lower()

for nps, cudu in ipairs(pyoc) do
if xxq:find(cudu, 1, true) then
return gjyj
end
end

break
end
end
end

return nil
end

function yvcz.misc.cards.rarityText(nytw)
local pxdp = yvcz.misc.cards.wantedFor(nytw)

if not pxdp then
return _d("OVpb")
end

local izg = {}

for gnl, nnt in pairs(yvcz.misc.cards.borderOf) do
if pxdp[nnt] then
table.insert(izg, gnl)
end
end

if #izg == 0 then
return _d("OVpb")
end

table.sort(izg)

return table.concat(izg, _d("VBY"))
end

function yvcz.misc.cards.run(xdo, fydu, itcs)
local ntn = yvcz.misc.cards
local uv = yvcz.misc.util
local bjd = xdo and _d("FVNFDRMxTA") or _d("HFNUBRgxTA")

if itcs then
if os.clock() < ntn[bjd] then
return false, _d("NllDShIFXVhPUh5Y")
end
elseif os.clock() < ntn.manualAt then
return false, _d("L1deHlYRGBVZWg8YBBY")
end

if ntn.inFlight then
return false, _d("OVhYHh4VSlhVVhgSUEwKX0dKHwMYGVpFDxcUQVhEQgQYGVYfGA")
end

local dso = fq.busy(1) and 1 or (fq.busy(2) and 2 or nil)
local ylpa = os.clock() - (gapk.floorAt or 0) < 90
local mcy = dso ~= nil and fq.towerSlot() == dso and ylpa

if dso and not mcy then
return false, _d("MVgXC1YSWQxCWw9WXRgMXlJKAgJRCBZABQMcXFhTWQ5WGUxW")
end

if npj.battlePending and os.time() < (npj.battlePendingUntil or 0) then
return false, _d("ORZVCwIEVB0WXhlWA0wZREMDGBcYVRZDAhNQTApfR0oBH00UUhcJFx5bHVoXAwJe")
end

if not xdo and not ntn.burnAllowed() then
return false, _d("O1lZDB8CVVhkVgMYElcPGWIEHwZdCkVWBlYWUQpFQ0Q")
end

local ffi = ntn.npcFor(xdo)

if not ffi then
return false, xdo
and _d("N1lHAhoJGBFFFwQZBBgRWBceHhlLWFtWGlZdGAxEVhwTHBgMWRcCHx0YGVhTSgYCXQtFFwMCUFkfV14EWA")
or _d("LF5SShIVWxdYRB4EBVsMFnk6NVBRCxZZBQJQURYWQwIfAxgVV0dKW1BMCldBDxpQTBcWXh5WEVYcFkcYEwNLWF9DShcXWRFYGQ")
end

local wtr = xdo and xl.OpenFuseDialog or xl.OpenDeconstructDialog
local bdr = xdo and xl.FuseCards or xl.DeconstructCards

if not (wtr and bdr) then
return false, _d("LF5WHlYZS1hYWB5WGVZYQl8DBVBfGVtSSgAVSgtfWARY")
end

local jin = xdo and _d("FVNFDRMnWRZCUg4") or _d("HFNUBRgnWRZCUg4")
local ao = ntn.wantedFor(jin)

ntn.manualAt = os.clock() + ntn.manualGap

if itcs then
ntn[bjd] = os.clock() + ntn.interval
end

ntn.inFlight = true

task.spawn(function()

local puj = nil

local function gff(hx, unma)
if xdo then
ntn.mergeDone = hx
else
ntn.deconDone = hx
end

if unma and itcs then
ntn[bjd] = os.clock() + 120
end

ntn.inFlight = false
end

local ncg = uv.visit(ffi.Name)

if not ncg then
gff(_d("O15WGBcTTB1EFwMFUFYXQhcYExFcARYaSgQVTApPXgQRUFEWFkMdGVBVEVhCHhMDFg"), true)

return
end

task.wait(0.9)

local gar = nil
local txqz = im(wtr.OnClientEvent, function(ulf)
if type(ulf) == _d("DFdVBhM") then
gar = ulf
end
end)

for xezc = 1, 3 do
pcall(function()
wtr:FireServer()
end)

for qfh = 1, 20 do
if gar then
break
end

task.wait(0.3)
end

if gar then
break
end

task.wait(1.5)
end

txqz:Disconnect()
uv.returnTo(ncg)

if type(gar) ~= _d("DFdVBhM") then
gff(_d("LF5SShIZWRRZUEoSGVxYWFgeVhFWC0FSGFZdGApTQxgPGVYfFl4EVgRPFxZaAxgFTB1FGQ"), true)

return
end

local reuz = {}

for smdd, ffkq in ipairs(gar) do
local oyud = tonumber(ffkq.borderLevel)
local aaxf = ffkq.cardId or ffkq.id

if oyud and (not ao or ao[oyud])
and (xdo or not yvcz.misc.cards.isProtected(aaxf, oyud)) then
table.insert(reuz, ffkq)
end
end

if #reuz == 0 then

yvcz.misc.cards.closeFrame(xdo)
gff(_d("NllDAh8eX1hCWEoFFVYcFlEFBFA") .. yvcz.misc.cards.rarityText(jin) .. _d("Vg"))

return
end

if fydu then

local pjpp = {}

for yarc, hhmk in ipairs(reuz) do
if (tonumber(hhmk.count) or 0) >= fydu then
table.insert(pjpp, hhmk)
end
end

if #pjpp == 0 then
yvcz.misc.cards.closeFrame(xdo)
gff(_d("NlkX") .. yvcz.misc.cards.rarityText(jin) .. _d("WERYHVYYWQsW") .. fydu .. _d("WFVYGh8VS1hPUh5Y"))

return
end

reuz = pjpp

table.sort(reuz, function(br, sevo)
return (tonumber(br.count) or 0) < (tonumber(sevo.count) or 0)
end)

local ke, mr = {}, 0

for bhw, qoe in ipairs(reuz) do
local pfaj = tonumber(qoe.count) or 0

if #ke > 0 and mr + pfaj > fydu then
break
end

table.insert(ke, qoe)
mr = mr + pfaj
end

reuz = ke
puj = mr
end

local vryx = 0

yvcz.misc.cards.closeFrame(xdo)

if xdo then
if not ao then

pcall(function()
bdr:FireServer(_d("GVpb"), nil)
end)

vryx = #reuz
else
local ljs = {}

for ish, tht in ipairs(reuz) do
table.insert(ljs, { tht.cardId, tonumber(tht.borderLevel) })
end

pcall(function()
bdr:FireServer(_d("C1NbDxUEXRxpVgYa"), ljs)
end)

vryx = #ljs
end
else
local obf = {}

for gn, awep in ipairs(reuz) do
if #obf >= 25 then
break
end

table.insert(obf, { awep.cardId, tonumber(awep.borderLevel), _d("GVpb") })
end

pcall(function()
bdr:FireServer(obf)
end)

vryx = #obf
end

gff(_d("K1NZHlY") .. tostring(vryx) .. _d("WERYHQ") .. (vryx == 1 and _d("") or _d("Cw"))
.. _d("WB4") .. yvcz.misc.cards.rarityText(jin) .. _d("UQ")
.. (puj and (_d("VBY") .. tostring(puj) .. _d("WFVWGBID")) or _d("")))
end)

return true
end

function yvcz.misc.cards.closeFrame(npjp)
pcall(function()
local tfex = npjp and { _d("PkNEDzEFUQ"), _d("PkNEDzACWRVT") } or { _d("PFNUBRgDTApDVB4xBVE"), _d("PFNUBRgDTApDVB4wAlkVUw") }
local vaa = require(ayu.ModuleScripts.MenuManager)
local nqr = ff:FindFirstChild(tfex[1])
local ow = nqr and nqr:FindFirstChild(tfex[2])

if ow then
vaa.close(ow)
end

if not npjp then
local ugap = nqr and nqr:FindFirstChild(_d("PFNUBRgDTApDVB4kEUwdRXEYFx1d"))

if ugap then
vaa.close(ugap)
else
ugap = ff:FindFirstChild(_d("PFNUBRgDTApDVB4kEUwdRXEYFx1d"))

if ugap then
vaa.close(ugap)
end
end
end
end)
end

function yvcz.misc.cards.refresh(vvkp)

local ojn = vvkp and yvcz.misc.mergeParagraph or yvcz.misc.deconParagraph

if not ojn then
return
end

pcall(function()
ojn:UpdateBody(vvkp
and yvcz.misc.cards.mergeText()
or yvcz.misc.cards.deconText())
end)
end

function yvcz.misc.cards.mergeText()
local tvgg = yvcz.misc.cards

return _d("KldFAwIZXQsMFw") .. tvgg.rarityText(_d("FVNFDRMnWRZCUg4")) .. _d("cg") .. tvgg.mergeDone
end

function yvcz.misc.cards.deconText()
local bnj = yvcz.misc.cards

return _d("KldFAwIZXQsMFw") .. bnj.rarityText(_d("HFNUBRgnWRZCUg4")) .. _d("cg") .. bnj.deconDone
.. _d("cmFSCwIYXQoaFwgZA0tUFkULHxQUWEFYGBoUGBpZRBlaUF4RRV8DGBcUWH5WBhofTx1TWUoXHlxYU0EPGAQYG1dFDgVQWQpTFwQTBl0KFkQPGAQW")
end

yvcz.misc.skill = {
on = false,
at = 0,
mainWanted = {},
raidWanted = {},

mainOrder = {},
raidOrder = {},
last = _d("NllDAh8eX1hUWB8RGExYT1Ie"),
shown = _d(""),
}

function yvcz.misc.skill.branchMap(tbs)
local gr = {}

for np, vlq in ipairs(wo.Trees[tbs].branches) do
gr[vlq.name] = vlq
end

return gr
end

function yvcz.misc.skill.branchLabels(mh)
local zlch = {}

for mnza, lthw in ipairs(wo.Trees[mh].branches) do
table.insert(zlch, lthw.name)
end

return zlch
end

function yvcz.misc.skill.wantedFrom(llia, us)
local ddz = {}
local jldo = yvcz.misc.skill.branchMap(us)

if type(llia) == _d("DFdVBhM") then
for tsd, dcl in pairs(llia) do
if dcl and jldo[tostring(tsd)] then
ddz[jldo[tostring(tsd)].id] = true
end
end
end

return ddz
end

function yvcz.misc.skill.ordered(uel, eysy)
local fgba = {}
local nlh = {}

for ejzn, kwrd in ipairs(eysy or {}) do
if uel[kwrd] then
table.insert(fgba, kwrd)
nlh[kwrd] = true
end
end

for fhry in pairs(uel) do
if not nlh[fhry] then
table.insert(fgba, fhry)
end
end

return fgba
end

function yvcz.misc.skill.branchById(vlz)
local xg = {}

for ibf, hre in ipairs(wo.Trees[vlz].branches) do
xg[hre.id] = hre
end

return xg
end

function yvcz.misc.skill.upgrade()
local amrd = yvcz.misc.skill
local afr = yvcz.misc.util
local mtkm = afr.currentProfile and afr.currentProfile()

if type(mtkm) ~= _d("DFdVBhM") then
return false, _d("NlkXGgQfXhFaUkoPFUxW")
end

local iwed = mtkm.skillTrees or {}
local agd = { [1] = amrd.mainOrder, [2] = amrd.raidOrder }
local pwqo = nil

for xvbd, zbr in ipairs(wo.Trees) do
local byn = iwed[zbr.id]
local qzn = tonumber(mtkm[zbr.pointsField or _d("C11eBhogVxFYQxk")]) or 0
local zorg = yvcz.misc.skill.branchById(xvbd)

if type(byn) == _d("DFdVBhM") and qzn > 0 then
for yykb, zpct in ipairs(agd[xvbd] or {}) do
local krg = zorg[zpct]

if krg and not pwqo then
local ab = wo.getBranchLevel(iwed, zbr.id, krg.id) or 0
local vb = ab + 1

if vb <= krg.levels then
local spvo = krg.id .. vb
local ppt = 1

if type(krg.costs) == _d("DFdVBhM") and tonumber(krg.costs[vb]) then
ppt = tonumber(krg.costs[vb])
elseif tonumber(krg.cost) then
ppt = tonumber(krg.cost)
end

if ppt <= qzn and wo.isAvailable(iwed, zbr.id, spvo) then
pwqo = { tree = zbr.id, node = spvo, name = krg.name, level = vb }
end
end
end
end
end
end

if not pwqo then
return false, _d("NllDAh8eX1hCWEoUBUFYT1IeWA")
end

xl.BuySkillNode:FireServer(pwqo.tree, pwqo.node)

if afr.askProfile then
pcall(afr.askProfile)
end

amrd.last = _d("OllCDR4EGA") .. pwqo.name .. _d("WA") .. tostring(pwqo.level)

return true
end

function yvcz.misc.skill.text()
local dpkj = yvcz.misc.skill
local olm = yvcz.misc.util
local lggi = olm.currentProfile and olm.currentProfile()

if type(lggi) ~= _d("DFdVBhM") then
return _d("KFleBAIDAlgJPQ") .. dpkj.last
end

local hn = lggi.skillTrees or {}
local quvm = {}

local dkav = { [1] = dpkj.mainOrder, [2] = dpkj.raidOrder }

for ny, fmyg in ipairs(wo.Trees) do
local ecqi = tonumber(lggi[fmyg.pointsField or _d("C11eBhogVxFYQxk")]) or 0
local cvfv = {}
local pss = yvcz.misc.skill.branchById(ny)

for pyt, gkj in ipairs(dkav[ny] or {}) do
local fnan = pss[gkj]

if fnan then
local nse = wo.getBranchLevel(hn, fmyg.id, fnan.id) or 0
table.insert(cvfv, fnan.name .. _d("WA") .. tostring(nse) .. _d("Vw") .. tostring(fnan.levels))
end
end

quvm[#quvm + 1] = fmyg.name .. _d("QhY") .. tostring(ecqi) .. _d("WEZDGQ")
.. (#cvfv > 0 and (_d("WBsX") .. table.concat(cvfv, _d("VBY"))) or _d("WBsXBBkEUBFYUEoGGVsTU1M"))
end

quvm[#quvm + 1] = dpkj.last

return table.concat(quvm, _d("cg"))
end

yvcz.misc.mergeSection = yvcz.misc.tab:Section({
Side = _d("NFNRHg"),
})

yvcz.misc.mergeSection:Header({
Name = _d("NVNFDRNQyOeRmw"),
})

yvcz.misc.mergeToggle = yvcz.misc.mergeSection:Toggle({
Name = _d("OUNDBVYdXQpRUg"),
Default = false,
Callback = function(uvaq)
local vmwk = yvcz.misc.cards

vmwk.mergeOn = uvaq

vmwk.mergeAt = (uvaq and zhpb.loading) and (os.clock() + vmwk.interval) or 0
end,
}, _d("GUNDBSkdXQpRUg"))

yvcz.misc.mergeDropdown = yvcz.misc.mergeSection:Dropdown({
Name = _d("KldFAwIZXQs"),
Search = false,
Multi = true,
Required = false,
Default = { _d("OVpb") },
Options = yvcz.misc.cards.rarityLabels,
Callback = function(fsjz)
local naf = {}

if type(fsjz) == _d("DFdVBhM") then
for nqw, nnsn in pairs(fsjz) do
if nnsn then
if nqw == _d("OVpb") then
naf[0] = true
else
naf[yvcz.misc.cards.borderOf[tostring(nqw)]] = true
end
end
end
end

yvcz.misc.cards.mergeWanted = naf
yvcz.misc.cards.refresh(true)
end,
}, _d("CldFAwIZXQs"))

yvcz.misc.mergeSection:Button({
Name = _d("NVNFDRNQVhdB"),
Callback = function()
local ahen, ya = yvcz.misc.cards.run(true)

if not ahen then
zcwe:Notify({
Title = _d("NVNFDRM"),
Description = ya,
Lifetime = 6,
})
end
end,
})

yvcz.misc.mergeSection:Button({
Name = _d("NVNFDRNQAUg"),
Callback = function()

local kun, fmwn = yvcz.misc.cards.run(true, 90)

if not kun then
zcwe:Notify({
Title = _d("NVNFDRNQAUg"),
Description = fmwn,
Lifetime = 6,
})
end
end,
})

yvcz.misc.mergeParagraph = yvcz.misc.mergeSection:Paragraph({
Header = _d("K0JWHgMD"),
Body = yvcz.misc.cards.mergeText(),
})

yvcz.misc.accSection = yvcz.misc.tab:Section({
Side = _d("Kl9QAgI"),
})

yvcz.misc.accSection:Header({
Name = _d("OVVUDwUDVwpfUhlWgKfquA"),
})

yvcz.misc.accToggle = yvcz.misc.accSection:Toggle({
Name = _d("OUNDBVYSXQtCFwsVE10LRVgYDw"),
Default = false,
Callback = function(pmqw)
yvcz.misc.util.accOn = pmqw
yvcz.misc.util.accAt = 0
end,
}, _d("GUNDBSkSXQtCaAsVE10LRVgYDw"))

yvcz.misc.accBuyToggle = yvcz.misc.accSection:Toggle({
Name = _d("OUNDBVYSTQEWVQ8FBA"),
Default = false,
Callback = function(bfjo)
yvcz.misc.util.accBuyOn = bfjo
yvcz.misc.util.accBuyAt = 0
yvcz.misc.util.accAt = 0
end,
}, _d("GUNDBSkSTQFpVQ8FBA"))

yvcz.misc.accSection:Button({
Name = _d("OkNOShQVSww"),
Callback = function()
local tphl, kktd = yvcz.misc.util.buyBest()

if not tphl then
zcwe:Notify({
Title = _d("OVVUDwUDVwpfUhk"),
Description = kktd,
Lifetime = 6,
})
end
end,
})

yvcz.misc.accSection:Button({
Name = _d("PUdCAwZQWh1FQw"),
Callback = function()
if not yvcz.misc.util.equipBest() then
zcwe:Notify({
Title = _d("OVVUDwUDVwpfUhk"),
Description = _d("NllDAh8eX1hUUh4CFUpYX0RKGQdWHVIXExMEFg"),
Lifetime = 5,
})
end
end,
})

yvcz.misc.accParagraph = yvcz.misc.accSection:Paragraph({
Header = _d("K0JWHgMD"),
Body = yvcz.misc.util.accText(),
})

yvcz.misc.claimInfo = yvcz.misc.tab:Section({
Side = _d("Kl9QAgI"),
})

yvcz.misc.claimInfo:Header({
Name = _d("NV9ECRMcVBlYUgUDAw"),
})

yvcz.misc.indexParagraph = yvcz.misc.claimInfo:Paragraph({
Header = _d("O1dFDlY5VhxTTw"),
Body = yvcz.misc.util.indexText(),
})

yvcz.misc.achParagraph = yvcz.misc.claimInfo:Paragraph({
Header = _d("OVVfAxMGXRVTWR4F"),
Body = yvcz.misc.util.achText(),
})

yvcz.misc.questParagraph = yvcz.misc.claimInfo:Paragraph({
Header = _d("KUNSGQID"),
Body = yvcz.misc.util.questText(),
})

yvcz.misc.packParagraph = yvcz.misc.claimInfo:Paragraph({
Header = _d("KFdUAQU"),
Body = yvcz.misc.util.packText(),
})

yvcz.misc.skillSection = yvcz.misc.tab:Section({
Side = _d("Kl9QAgI"),
})

yvcz.misc.skillSection:Header({
Name = _d("K11eBhpQbApTUkqG77TL"),
})

yvcz.misc.skillToggle = yvcz.misc.skillSection:Toggle({
Name = _d("OUNDBVYFSB9EVg4T"),
Default = false,
Callback = function(bw)
local wrn = yvcz.misc.skill

if bw and not (next(wrn.mainWanted) or next(wrn.raidWanted)) then
wrn.on = false

pcall(function()
yvcz.misc.skillToggle:UpdateState(false)
end)

zcwe:Dialog({
Title = _d("KF9UAVYRGBpEVgQVGBgeX0UZAg"),
Description = _d("O15YBQUVGBlCFwYTEUsMFlgEE1BaCldZCR5QURYWQwITUHUZX1lKAgJdHRZYGFYiWRFSFx4EFV1YUkUFBhRXD1gXR1Y")
.. _d("OUNDBVYFSB9EVg4TUFcWWk5KBQBdFlJESgYfURZCREoBGF0KUxcTGQUYCFleBAJQUQwY"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})

return
end

wrn.on = bw
wrn.at = 0
end,
}, _d("GUNDBSkFSB9EVg4T"))

yvcz.misc.skillMainDropdown = yvcz.misc.skillSection:Dropdown({
Name = _d("NVdeBFYESh1T"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = yvcz.misc.skill.branchLabels(1),
Callback = function(ytfl)
local bby = yvcz.misc.skill
local atkg = bby.wantedFrom(ytfl, 1)

bby.mainWanted = atkg
bby.mainOrder = bby.ordered(atkg, bby.mainOrder)
bby.shown = _d("")
end,
}, _d("FVdeBCkESh1T"))

yvcz.misc.skillRaidDropdown = yvcz.misc.skillSection:Dropdown({
Name = _d("KldeDlYESh1T"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = yvcz.misc.skill.branchLabels(2),
Callback = function(szb)
local cnx = yvcz.misc.skill
local sm = cnx.wantedFrom(szb, 2)

cnx.raidWanted = sm
cnx.raidOrder = cnx.ordered(sm, cnx.raidOrder)
cnx.shown = _d("")
end,
}, _d("CldeDikESh1T"))

pcall(function()
yvcz.misc.skillMainDropdown:UpdateSelection({})
end)

pcall(function()
yvcz.misc.skillRaidDropdown:UpdateSelection({})
end)

yvcz.misc.skillParagraph = yvcz.misc.skillSection:Paragraph({
Header = _d("K0JWHgMD"),
Body = yvcz.misc.skill.text(),
})

task.spawn(function()
local pdl = yvcz.misc.util

while gsk() do
if pdl.indexOn or pdl.achOn or pdl.questOn or pdl.accOn or pdl.accBuyOn then
pdl.currentProfile()
end

if pdl.indexOn then
pdl.claimIndex()
end

if pdl.achOn then
pdl.claimAchievement()
end

if pdl.questOn then

if os.clock() - pdl.questAskedAt > 20 or os.clock() - pdl.weeklyAskedAt > 20 then
pdl.askQuests()
end

pdl.claimQuest()
end

if pdl.accOn and os.clock() >= pdl.accAt then
pdl.accAt = os.clock() + 3
pdl.equipBest()
end

local yq = yvcz.misc.cards

if not yq.inFlight then
if yq.mergeOn and os.clock() >= yq.mergeAt then
yq.run(true, nil, true)
elseif yq.deconOn and os.clock() >= yq.deconAt then
yq.run(false, nil, true)
end
end

if yq.mergeDone ~= yq.mergeShown then
yq.mergeShown = yq.mergeDone

pcall(function()
yvcz.misc.mergeParagraph:UpdateBody(yvcz.misc.cards.mergeText())
end)
end

if yq.deconDone ~= yq.deconShown then
yq.deconShown = yq.deconDone

pcall(function()
yvcz.misc.deconParagraph:UpdateBody(yvcz.misc.cards.deconText())
end)
end

local blmo = yvcz.misc.skill

if blmo.on and os.clock() >= blmo.at then

blmo.at = os.clock() + 2
blmo.upgrade()
end

local itp = yvcz.misc.skill.text()

if blmo.shown ~= itp then
blmo.shown = itp

pcall(function()
yvcz.misc.skillParagraph:UpdateBody(itp)
end)
end

if pdl.accBuyOn and os.clock() >= pdl.accBuyAt then

local mffl = pdl.buyBest()

pdl.accBuyAt = os.clock() + (mffl and 45 or 10)
end

local xoey = {
{ key = _d("EVhTDw4"), paragraph = yvcz.misc.indexParagraph, value = pdl.indexText() },
{ key = _d("GVVf"), paragraph = yvcz.misc.achParagraph, value = pdl.achText() },
{ key = _d("CUNSGQI"), paragraph = yvcz.misc.questParagraph, value = pdl.questText() },
{ key = _d("CFdUAQ"), paragraph = yvcz.misc.packParagraph, value = pdl.packText() },
{ key = _d("GVVU"), paragraph = yvcz.misc.accParagraph, value = pdl.accText() },
}

for vdo, drjq in ipairs(xoey) do
if drjq.paragraph and pdl.shown[drjq.key] ~= drjq.value then
pdl.shown[drjq.key] = drjq.value

pcall(function()
drjq.paragraph:UpdateBody(drjq.value)
end)
end
end

task.wait(0.75)
end
end)

local xxrq = jsi:Section({
Side = _d("Kl9QAgI"),
})

xxrq:Paragraph({
Header = _d("Pl9EAh8eXw"),
Body = _d("OUNDBVY2UQteFw8HBVEIRRcTGQVKWERYDlpQXhlVUhlWBFAdFkALAhVKWFdZDlYTWQtCREoZHhgRQkRKGQdWVBZDAhMeGApTUgYFUE8QU1lKBR9VHUJfAxgXGBpfQw8FXhgsZhceGVB6GU8XGgMcVAsWTgUDUFoZVVxKAh8YDF5SShQRQVhQXhgFBBRYV1kOVgRQHRZDHRlQfB1TRw8FBBgvV0MPBFBLD19DCR4VS1heWAYSUEwQUxcZBh9MWE9YH1YHXQpTFxkCEVYcX1kNVh9WWEFfDxhQQRdDFwsEHV0cFkMCEx0YVRZDAhNQXB1TRw8FBBgKX1kNVhNZCkReDwVQTBBTFwgfF18dRUNKGgVbExZVBRgFS1Y8PT4eFRgLXlgaVhJNAUUXCxgUGB1HQgMGAxgKWVMZVhFWHBZVCx8EGA9fQwJWBFAdFlQLBQRLWE9YH1YYWQ5TGUo0BUERWFBKGBVdHEUXHh4VGBtZQgQCFUpYGxcIGQRQWFVYBxNQXgpZWkoCGF1YcF4ZHhVKFVdZRHx6exlCVAITAxgTU1IaBVBZWERCBBgZVh8WQwsaHEFYVE5KHwRdFRZWBBJQSxlAUhlWGUxUFkQFVgRQHRZDBQIRVFhVVhgEGV0LFlgcEwIYGlNDHRMVVlhFUhkFGVcWRRk"),
})

local gjhu = jsi:Section({
Side = _d("Kl9QAgI"),
})

gjhu:Header({
Name = _d("O1dDCR4VSw"),
})

local iubh

iubh = gjhu:Paragraph({
Header = _d("L15WHlYJVw0WVAsDF1AM"),
Body = ss(),
})

local yun = jsi:Section({
Side = _d("Kl9QAgI"),
})

yun:Header({
Name = _d("MUVbCxgUGAteWBo"),
})

yun:Toggle({
Name = _d("OUNDBVYTShlQQ0oEH1w"),
Default = false,
Callback = function(dvi)
wf.island.autoRod = dvi
wf.islandAt = 0
end,
}, _d("EUVbCxgUZxlDQwUpAlcc"))

yun:Toggle({
Name = _d("OUNDBVYTShlQQ0oXE1sdRUQFBAk"),
Default = false,
Callback = function(gvq)
wf.island.autoAcc = gvq
wf.islandAt = 0
end,
}, _d("EUVbCxgUZxlDQwUpEVsbU0QZGQJB"))

yun:Toggle({
Name = _d("PUdCAwZQWRtVUhkFH0oB"),
Default = false,
Callback = function(gtey)
wf.island.equipAcc = gtey
wf.islandAt = 0
end,
}, _d("EUVbCxgUZx1HQgMGL1kbVVIZBR9KAQ"))

local kwmd

kwmd = yun:Paragraph({
Header = _d("MUVbCxgUGB9TVhg"),
Body = wf.shopIsland.text(),
})

local qcz = jsi:Section({
Side = _d("NFNRHg"),
})

qcz:Header({
Name = _d("KlNVAwQEUA"),
})

wf.rebirthToggle = qcz:Toggle({
Name = _d("OUNDBVYCXRpfRR4e"),
Default = false,
Callback = function(glhy)
wf.autoRebirth = glhy
end,
}, _d("GUNDBSkCXRpfRR4e"))

wf.rebirthParagraph = qcz:Paragraph({
Header = _d("K0JWHgMD"),
Body = wf.rebirthText(),
})

qcz:Button({
Name = _d("LGYXHhlQUQtaVgQS"),
Callback = function()
if not wf.gotoIsland() then
zcwe:Notify({
Title = _d("OVRWBBIfVh1SFyMFHFkWUg"),
Description = _d("O15WGBcTTB1EFwMFUFYXQhcYExFcARZODwJQFVhCRRNWEV8ZX1lKHx4YGRZaBRsVVgwY"),
Lifetime = 5,
})
end
end,
})

local ngv

ngv = qcz:Toggle({
Name = _d("OUNDBVY5SxRXWQ5WOFkKUlQFBBU"),
Default = false,
Callback = function(lct)
rs.island = lct
rs.pending = false
rs.pendingUntil = 0
rs.paused = false
rs.gaveUp = false
rs.stoodDown = false
rs.manualPause = false

if not lct then
return
end

if fq.otherTowerOn(_d("EFdFDhUfSh0")) then
rs.island = false

pcall(function()
ngv:UpdateState(false)
end)

pcall(function()
zcwe:Dialog({
Title = _d("OUNDBVY5SxRXWQ5WOFkKUlQFBBUYF1BR"),
Description = _d("LF5SSj4RVBRZQA8THhgMWUAPBFBRCxZWBgQVWRxPFxgDHlYRWFBGVhFWHBZAAwIYGBdYUkoFHFcMFkMCE1BfGVtSShkeVAEWRR8YAxgXWFJKHx5eEVheHhNQShdZWkoXBBgZFkMDGxUWWGJCGBhQTBBXQ0oZFl5UFlgYVgRNClgXBRhQeQ1CWEolHFcMFkQFVhVZG14XHhkHXQoWUA8CAxgRQkRKGQdWWEVbBQJe"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})
end)

return
end

if fq.enabled and fq.hardcoreSlot() == nil then
rs.island = false

pcall(function()
ngv:UpdateState(false)
end)

pcall(function()
zcwe:Dialog({
Title = _d("OUNDBVY5SxRXWQ5WOFkKUlQFBBUYF1BR"),
Description = _d("NlkXGRofTFhfREoFFUxYQlhKF1BMF0FSGFpQWRZSFx4eFRgfV1oPVh9WFE8XGQIRSgxFFwtWBFcPU0VKBAVWWFBFBRtQWVhCWB0TAhgLWlgeWFBrHUIXBRgVGAxZFyMFHFkWUhcCFwJcG1lFD1pQVwoWQx8EHhg5Q0MFViNUF0IXBRAWFg"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})
end)

return
end

if not rs.data then
rs.island = false

pcall(function()
ngv:UpdateState(false)
end)

pcall(function()
zcwe:Dialog({
Title = _d("OUNDBVY5SxRXWQ5WOFkKUlQFBBUYF1BR"),
Description = _d("LF5eGVYSTRFaU0oeEUtYWFhKPhFKHFVYGBMkVw9TRS4XBFlUFkQFVgRQHRZDBQEVSl9FFxkCEV8dRRcJFx5WF0IXCBNQSh1XU0oXHlxYVxcYAx4YG1dZBBkEGBpTFxkCEUoMU1NE"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})
end)

return
end

local nbh = rs.remotes.request

if nbh then
pcall(function()
nbh:FireServer()
end)
end
end,
}, _d("GUNDBSkZSxRXWQ4pGFkKUlQFBBU"))

rs.islandToggle = ngv

rs.islandParagraph = qcz:Paragraph({
Header = _d("OkNRDAU"),
Body = rs.buffText(),
})

qcz:Button({
Name = _d("KFdCGRNQcQtaVgQSUHAZRFMJGQJd"),
Callback = function()
if rs.pauseRun then
rs.pauseRun()
end
end,
})

qcz:Button({
Name = _d("P19BD1YlSFh/RAYXHlxYflYYEhNXClM"),
Callback = function()
if rs.giveUpRun then
rs.giveUpRun()
end
end,
})

local ti = jsi:Section({
Side = _d("NFNRHg"),
})

ti:Header({
Name = _d("Pl9EAh8eX1hFXwUG"),
})

ti:Toggle({
Name = _d("OUNDBVYSTQEWVQ8FBBgKWVM"),
Default = false,
Callback = function(vjux)
wf.shop.autoBuyRod = vjux
wf.shopAt = 0
end,
}, _d("GUNDBSkSTQFpVQ8FBGcKWVM"))

ti:Toggle({
Name = _d("OUNDBVYSTQEWVQ8FBBgaV14e"),
Default = false,
Callback = function(obqi)
wf.shop.autoBuyBait = obqi
wf.shopAt = 0
end,
}, _d("GUNDBSkSTQFpVQ8FBGcaV14e"))

ti:Toggle({
Name = _d("PUdCAwZQWh1FQ0oEH1w"),
Default = false,
Callback = function(hey)
wf.shop.equipRod = hey
wf.shopAt = 0
end,
}, _d("HUdCAwYvWh1FQzUEH1w"))

ti:Toggle({
Name = _d("PUdCAwZQWh1FQ0oUEVEM"),
Default = false,
Callback = function(caeg)
wf.shop.equipBait = caeg
wf.shopAt = 0
end,
}, _d("HUdCAwYvWh1FQzUUEVEM"))

local kk

kk = ti:Paragraph({
Header = _d("OlNEHlYJVw0WVAsYUF0JQ14a"),
Body = fdv(),
})
task.spawn(function()
local rvh = quz()
local fvq = ss()
local nkl = fdv()
local kjen = wf.shopIsland.text()

while gsk() do
local wnfh = quz()

if wnfh ~= rvh then
rvh = wnfh
pcall(function()
hrv:UpdateBody(wnfh)
end)
end

local jug = ss()

if jug ~= fvq then
fvq = jug
pcall(function()
iubh:UpdateBody(jug)
end)
end

local uqo = fdv()

if uqo ~= nkl then
nkl = uqo
pcall(function()
kk:UpdateBody(uqo)
end)
end

local clus = wf.shopIsland.text()

if clus ~= kjen then
kjen = clus
pcall(function()
kwmd:UpdateBody(clus)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while gsk() do

if md() and os.clock() >= (wf.shopAt or 0)
and os.clock() >= (wf.islandTripUntil or 0) then
wf.shopAt = os.clock() + 1
pcall(mgr)
end

if wf.shopIsland.active() and os.clock() >= (wf.islandAt or 0)
and os.clock() >= math.max(wf.shopHoldUntil or 0, wf.tpHoldUntil or 0) then
wf.islandAt = os.clock() + 2
pcall(wf.shopIsland.run)
end

task.wait(1)
end
end)

uxr:Select()

local vh = uxr:Section({
Side = _d("NFNRHg"),
})

local inn = uxr:Section({
Side = _d("Kl9QAgI"),
})

local xcku = vh:Paragraph({
Header = _d("K0JWHgMD"),
Body = qph(),
})

vh:Divider()

npj.npcToggle = vh:Toggle({
Name = _d("OUNDBVY+aDs"),
Default = false,
Callback = function(sjb)

if sjb and not npj.story and #fipo() == 0 then
pcall(function()
npj.npcToggle:UpdateState(false)
end)

zcwe:Dialog({
Title = _d("OUNDBVY+aDsWWQ8TFEtYVxceFwJfHUI"),
Description = _d("KF9UAVYRTFhaUgsFBBgXWFJKOCB7WFBFBRtQTBBTFx0ZAlQcRRcIExxXDxoXBQRQTA1EWUoZHhg5Q0MFVjNXFUZbDwIVGCtCWBgPXhgsXlIYE1BRCxZZBQIYURZRFx4ZUF4RUV8eVgldDBg"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})

return
end

npj.enabled = sjb
end,
}, _d("GUNDBSkeSBs"))

vh:Toggle({
Name = _d("L1dbAVYEV1h4Zyk"),
Default = false,
Callback = function(wb)
npj.walkToNpc = wb
end,
}, _d("D1dbASkEVydYRwk"))

vh:Dropdown({
Name = _d("PF9RDB8TTRRCTg"),
Search = false,
Multi = true,
Required = false,
Default = { _d("NllFBxcc") },
Options = kp,
Callback = function(cskq)
local xba = {}

if type(cskq) == _d("DFdVBhM") then
for xxae, tir in ipairs(kp) do
if cskq[tir] then
table.insert(xba, acyl[tir])
end
end
end

if #xba == 0 then
xba = { _d("FllFBxcc") }
end

npj.difficulties = xba
end,
}, _d("HF9RDB8TTRRCTg"))

vh:Toggle({
Name = _d("OUNDBVYiVxdbRA"),
Default = false,
Callback = function(iww)
dyx.enabled = iww
dyx.inBattle = false
dyx.pending = false
end,
}, _d("GUNDBSkCVxdbRA"))

local kdy = uxr:Section({
Side = _d("NFNRHg"),
})

kdy:Header({
Name = _d("K1pYHg"),
})

kdy:Paragraph({
Header = _d("MFlASgIYXVhFWwUCAxgPWUUB"),
Body = _d("K1pYHlZBGFUWfgQQGVYRQk5KIh9PHUQXQhgfShVXW0oZAhg2X1ACAh1ZClMeShkCGDBXWwYZB10dWBc+GQddChoXGhoFS1h4ZylWElkMQlsPBVBPEFNZSgUcVwwWBUofAxgaQ0QTWHoyK1pYHlZCGFUWeTo1AxRYRFYDEgMUWERYBRsDFFh/RAYXHlxYflYYEhNXClMZYHwyVwxeFxkaH0wLFlgEVj5oOxZVCwIEVB1FDUoCB1dYeGcpVhZdGUJCGBMDGBlCFwUYE11UFlYEElBZWERWAxJQWhdFREoTEVsQGD1gIgdXWEJYHRMCGApDWRlWGUtYQl8PVh9WFE8XGBMWTQtTU0oGEVEKFhpKPwNUGVhTSj4RShxVWBgTUFcWFlUFAhgYC1pYHgVQUQsWWAQTUEoNWBcLBRtdHBZRBQRQTA9fVA9YejIrWlgeBVBXHlANShkeXVhFWwUCXBgMWUAPBAMYDFdcD1YETQpYREQ"),
})

fq.toggle = kdy:Toggle({
Name = _d("OUNDBVYjVBdC"),
Default = false,
Callback = function(llth)
if llth and fq.role[1] == fq.role[2] and fq.role[1] ~= _d("FkZU") then
fq.enabled = false

pcall(function()
fq.toggle:UpdateState(false)
end)

zcwe:Dialog({
Title = _d("OUNDBVYjVBdC"),
Description = _d("K1pYHlZBGBlYU0olHFcMFgVKFwJdWFRYHh5Q") .. fq.roleLabel(1) .. _d("VhZjAhcEGBFFFwUYFRgKQ1lKFwNTHVIXDBkCGAxBXgkTXBgLWRcFGBUYF1AXHh4VGAxBWEoFHFcMRRcCFwMYDFkXCBNQSxdbUh4eGVYfFlIGBRUW"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})

return
end

fq.enabled = llth

if llth then
fq.hasSlot2 = fq.detectSlot2()

if fq.hasSlot2 == false then
zcwe:Dialog({
Title = _d("OUNDBVYjVBdC"),
Description = _d("K1pYHlZCGBRZWAEFUFQXVVwPElAVWF9DShgVXRxFFx4eFRg8Q1YGVjJZDEJbD1YjVBdCFw0XHV0IV0QZWlBXChZ+BBAZVhFCUkokH1cVFgVfRlBbFFNWGBMUFFhUUgwZAl1YQl8PVgNdG1lZDlYDVBdCFwkXHhgaV0MeGhUWWGRYHwIZVh8WRB4XCUtYWVlKBRxXDBYGSgMeTBFaFx4eFVZW"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})
end
end
end,
}, _d("GUNDBSkDVBdC"))

function fq.applyRoles()
if not fq.enabled then
return
end

if fq.role[1] == fq.role[2] and fq.role[1] ~= _d("FkZU") then
fq.enabled = false

pcall(function()
fq.toggle:UpdateState(false)
end)

pcall(function()
zcwe:Dialog({
Title = _d("OUNDBVYjVBdCFwUQFg"),
Description = _d("K1pYHlZBGBlYU0olHFcMFgVKFwJdWFRYHh5Q") .. fq.roleLabel(1) .. _d("VhZjAhcEGBFFFwUYFRgKQ1lKFwNTHVIXDBkCGAxBXgkTXBgZWFNKHwQYG1dZBBkEGAxXXA9WBE8XFkQGGQRLVhZkDwJQVxZTFxkaH0xYQlhKBR9VHUJfAxgXGB1aRA9Y"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})
end)

return
end

local tnug = {}

if fq.towerSlot() ~= 1 and gapk.enabled then
gapk.enabled = false
table.insert(tnug, _d("OUNDBVYkVw9TRQ"))

pcall(function()
gapk.ui:UpdateState(false)
end)
end

if fq.hardcoreSlot() == nil and rs.island then
rs.island = false
table.insert(tnug, _d("OUNDBVY5SxRXWQ5WOFkKUlQFBBU"))

pcall(function()
rs.islandToggle:UpdateState(false)
end)
end

if fq.halloweenSlot() == nil and rtjv.run.enabled then
rtjv.run.enabled = false
table.insert(tnug, _d("OUNDBVY4WRRaWB0TFVZYYlgdEwI"))

pcall(function()
rtjv.toggle:UpdateState(false)
end)
end

if #tnug > 0 then
pcall(function()
zcwe:Dialog({
Title = table.concat(tnug, _d("WFdZDlY")) .. _d("WFlRDA"),
Description = _d("NlkXGRofTFhfREoFFUxYQlhKAhhZDBZDBQEVSlhXWRNWHVcKUxtKBR8YEUIXAhcUGBZZQAITAl1YQlhKBAVWVhZwAwAVGBFCFwtWA1QXQhcLERFRFhoXBQRQTA1EWUo3BUwXFmQGGQQYF1BRRA"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})
end)
end
end

fq.oneDropdown = kdy:Dropdown({
Name = _d("K1pYHlZB"),
Search = false,
Multi = false,
Required = false,

Default = 1,
Options = fq.optionsFor[1],
Callback = function(ytnn)
local mxkv = type(ytnn) == _d("DFdVBhM") and ytnn[1] or ytnn

if type(mxkv) == _d("C0JFAxgX") and fq.roleIds[mxkv] then
fq.role[1] = fq.roleIds[mxkv]
fq.picked[1] = mxkv
end

pcall(function()
fq.oneDropdown:UpdateName(_d("K1pYHlZBGJq2lUo") .. fq.roleLabel(1))
end)

if fq.applyRoles then
fq.applyRoles()
end
end,
}, _d("C1pYHilBZ0o"))

fq.twoDropdown = kdy:Dropdown({
Name = _d("K1pYHlZC"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = fq.optionsFor[2],
Callback = function(pyke)
local iguo = type(pyke) == _d("DFdVBhM") and pyke[1] or pyke

if type(iguo) == _d("C0JFAxgX") and fq.roleIds[iguo] then
fq.role[2] = fq.roleIds[iguo]
fq.picked[2] = iguo
end

pcall(function()
fq.twoDropdown:UpdateName(_d("K1pYHlZCGJq2lUo") .. fq.roleLabel(2))
end)

if fq.applyRoles then
fq.applyRoles()
end
end,
}, _d("C1pYHilCZ0o"))

pcall(function()
fq.oneDropdown:UpdateSelection(_d("LFlADwQ"))
end)

pcall(function()
fq.twoDropdown:UpdateSelection(_d("NmZ0ShQRTAxaUhk"))
end)

getgenv().ACBXSlot = fq

local am = uxr:Section({
Side = _d("NFNRHg"),
})

am:Header({
Name = _d("KldeDlYSVwtF"),
})

am:Toggle({
Name = _d("OUNDBVYiWRFSFygZA0s"),
Default = false,
Callback = function(jrq)
yvcz.enabled = jrq
yvcz.pending = {}
yvcz.pendingUntil = {}

if jrq then
yvcz.cleared = {}
end
end,
}, _d("GUNDBSkCWRFSaAgZA0s"))

am:Toggle({
Name = _d("OUNDBVYnWRRdFx4ZUGoZX1NKNB9LCw"),
Default = false,
Callback = function(gqa)
yvcz.walkToBoss = gqa
end,
}, _d("GUNDBSkHWRRdaB4ZL0oZX1M1FB9LCw"))

local wiq
wiq = am:Slider({
Name = _d("L1dbAVYjSB1TUw"),
Minimum = 0,
Maximum = 72,
Default = 18,
Precision = 0,
Callback = function(oeh)
local brlg = math.floor(oeh + 0.5)
yvcz.walkSpeed = brlg

if wiq and brlg ~= oeh then
wiq:UpdateValue(brlg)
end
end,
}, _d("D1dbASkDSB1TUw"))

am:Dropdown({
Name = _d("KldeDlY0UR5QXgkDHEwB"),
Search = false,
Multi = true,
Required = false,
Default = { _d("NllFBxcc") },
Options = fia,
Callback = function(wda)
local akb = {}

if type(wda) == _d("DFdVBhM") then
for qzvd, ehhf in ipairs(fia) do
if wda[ehhf] then
table.insert(akb, vrm[ehhf])
end
end
end

if #akb == 0 then
akb = { _d("FllFBxcc") }
end

yvcz.difficulties = akb
end,
}, _d("CldeDikUUR5QXgkDHEwB"))

function yvcz.pickedIds(qxfd)
local tcrv = {}

if type(qxfd) == _d("DFdVBhM") then
for rgx, inzc in ipairs(qzfs) do
if qxfd[inzc] and llr[inzc] then
table.insert(tcrv, llr[inzc])
end
end
elseif type(qxfd) == _d("C0JFAxgX") and llr[qxfd] then
tcrv = { llr[qxfd] }
end

return tcrv
end

am:Dropdown({
Name = _d("KldeDlYyVwtF"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = qzfs,
Callback = function(ytz)
yvcz.picks[1] = yvcz.pickedIds(ytz)
yvcz.cursor[1] = 1
yvcz.losses[1] = {}
end,
}, _d("CldeDikSVwtF"))

yvcz.boss2Dropdown = am:Dropdown({
Name = _d("KldeDlYyVwtFF0IlHFcMFgVD"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = qzfs,
Callback = function(io)
yvcz.picks[2] = yvcz.pickedIds(io)
yvcz.cursor[2] = 1
yvcz.losses[2] = {}
end,
}, _d("CldeDikSVwtFaBkaH0wnBA"))

pcall(function()
yvcz.boss2Dropdown:SetVisibility(false)
end)

task.spawn(function()
local dqk = nil

while gsk() do
local rvb = fq.splitNpc()

if rvb ~= dqk then
dqk = rvb

local sdkw = yvcz.boss2Dropdown

if sdkw then
pcall(function()
sdkw:SetVisibility(rvb)
end)
end
end

task.wait(0.5)
end
end)

inn:Paragraph({
Header = _d("OUNDBVY2UR9eQw"),
Body = _d("K1NbDxUEGBdYUkoZAhgVWUUPVj5oO0UXDAQfVVhCXw9WB1cKWlMZVhJdFFlARA"),
})

for zid, ygbi in ipairs(ubmj) do
inn:Dropdown({
Name = ygbi.name,
Search = true,
Multi = true,
Required = false,
Default = {},
Options = ygbi.options,
Callback = function(mei)
local vvjg = {}

if type(mei) == _d("DFdVBhM") then
if mei.All then
for mbc, syg in ipairs(ygbi.ids) do
table.insert(vvjg, syg)
end
else
for rje, ixsz in ipairs(ygbi.options) do
if mei[ixsz] and ygbi.byName[ixsz] then
table.insert(vvjg, ygbi.byName[ixsz])
end
end
end
elseif type(mei) == _d("C0JFAxgX") then
if mei == _d("OVpb") then
for blxo, asg in ipairs(ygbi.ids) do
table.insert(vvjg, asg)
end
else
vvjg = { ygbi.byName[mei] }
end
end

npj.selectedByWorld[ygbi.name] = vvjg
end,
}, _d("FkZUNQ") .. ygbi.id)
end

inn:Toggle({
Name = _d("OUNDBVYzVxVGWw8CFRgrQlgYDw"),
Default = false,
Callback = function(sgsm)
npj.story = sgsm
npj.battlePending = false
npj.battlePendingUntil = 0
end,
}, _d("GUNDBSkTVxVGWw8CFWcLQlgYDw"))

npj.storyDropdown = inn:Dropdown({
Name = _d("PF9RDB8TTRRCXg8F"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = kp,
Callback = function(hqeh)
local fapq = type(hqeh) == _d("DFdVBhM") and hqeh[1] or hqeh

if type(fapq) == _d("C0JFAxgX") and acyl[fapq] then
npj.storyDifficulty = acyl[fapq]
end
end,
}, _d("HF9RDB8TTRRCXg8F"))

pcall(function()
npj.storyDropdown:UpdateSelection(kp[1])
end)

pcall(function()
npj.storyDropdown:UpdateName(_d("PF9RDB8TTRRCXg8FUNr4lBc") .. kp[1])
end)

inn:Paragraph({
Header = _d("MFlASjcFTBcWdAUbAFQdQlJKJQRXCk8XHRkCUws"),
Body = _d("Pl9QAgIDGB1AUhgPUEsMWUUTVj5oOxYaSjgRVR1dFx4eAlcNUV9KPwNdE1deSltQVxYWQwITUFcWUxcOHxZeEVVCBgIJGBlUWBwTXBgPWUUBHx5fWEJfD1YRSh1XREofHhgXRFMPBFBZFlIXCRkdURZRFwgXE1NYRFgfGBQYGUUXCRkfVBxZQAQFUFsUU1YYWHoyMUIXGBMAVBlVUhlWBFAdFlYYExEYHERYGhIfTxZFFx0eGVQdFl4eVhlLWFlZRlYRVhwWWw8XBl0LFkULHxQYGllEGRMDGBlaWAQTXg"),
})

local erlu = xq:Section({
Side = _d("NFNRHg"),
})

erlu:Header({
Name = _d("LFlADwQ"),
})

local wuvu
local pam

local bzzv = {
remotes = {},
watcher = false,
hidMenu = false,

hardWatch = {},
}

pcall(function()
local qank = getgenv().ACBXHardWatch

if type(qank) == _d("DFdVBhM") then
for ee, nsmk in pairs(qank) do
pcall(function()
if nsmk.Connected then
nsmk:Disconnect()
end
end)
end
end

getgenv().ACBXHardWatch = bzzv.hardWatch
end)

function bzzv.hardPick(cpp)
cpp = cpp == true

for ai, dkc in ipairs({ _d("OldDHhoVfw1f"), _d("OldDHhoVfw1fBQ") }) do
local wjcc = ff:FindFirstChild(dkc)

if wjcc then
if wjcc:GetAttribute(_d("LFlADwQ4WQpSZwMVGw")) ~= cpp then
pcall(function()
wjcc:SetAttribute(_d("LFlADwQ4WQpSZwMVGw"), cpp)
end)
end

if wjcc:GetAttribute(_d("LFlADwQ4WQpSZR8Y")) ~= nil and wjcc:GetAttribute(_d("LFlADwQ4WQpSZR8Y")) ~= cpp then
pcall(function()
wjcc:SetAttribute(_d("LFlADwQ4WQpSZR8Y"), cpp)
end)
end
end
end
end

function bzzv.pinMode()
if not (gapk.enabled or gapk.nightmare) then
return
end

local ulao = gapk.nightmare == true

for ga, fi in ipairs({ _d("OldDHhoVfw1f"), _d("OldDHhoVfw1fBQ") }) do
local naj = ff:FindFirstChild(fi)

if naj then
if naj:GetAttribute(_d("LFlADwQ4WQpSZwMVGw")) ~= ulao then
pcall(function()
naj:SetAttribute(_d("LFlADwQ4WQpSZwMVGw"), ulao)
end)
end

local zrq = bzzv.hardWatch[naj]

if zrq and zrq.Connected == false then
bzzv.hardWatch[naj] = nil
zrq = nil
end

if zrq == nil then
local yqn, rvyo = pcall(function()
return im(naj:GetAttributeChangedSignal(_d("LFlADwQ4WQpSZwMVGw")), function()
if not (gapk.enabled or gapk.nightmare) then
return
end

local vdf = gapk.nightmare == true

if naj.Parent and naj:GetAttribute(_d("LFlADwQ4WQpSZwMVGw")) ~= vdf then
pcall(function()
naj:SetAttribute(_d("LFlADwQ4WQpSZwMVGw"), vdf)
end)
end
end)
end)

if yqn then
bzzv.hardWatch[naj] = rvyo
end
end
end
end
end

function bzzv.pauseRows()
local hcc = omhv:FindFirstChild(_d("KFpWExMCfw1f")) and omhv.PlayerGui:FindFirstChild(_d("K1NDHh8eXwtxQgM"))

if not hcc then
return nil, nil
end

return hcc:FindFirstChild(_d("KFdCGRM5Vh5fWQMCFXEWRkIe"), true), hcc:FindFirstChild(_d("KFdCGRM5Vh5fWQMCFXsQU1QB"), true)
end

function bzzv.pauseState()
local lqk = omhv:FindFirstChild(_d("KFpWExMCfw1f")) and omhv.PlayerGui:FindFirstChild(_d("K1NDHh8eXwtxQgM"))
local phk = lqk and lqk:FindFirstChild(_d("P1NDORMETBFYUBk"), true)

if not phk then
return nil
end

local iah, aqt = pcall(function()
return phk:Invoke()
end)

if iah and type(aqt) == _d("DFdVBhM") then
return aqt.pauseInfiniteEnabled == true
end

return nil
end

function bzzv.pauseAt(jlp, wpmu)
wpmu = math.max(1, math.floor(tonumber(wpmu) or 1))

local pco, nj = bzzv.pauseRows()

if not (pco and nj) then
return false
end

local aoci = pcall(function()
if tonumber(pco.Text) ~= wpmu then
pco.Text = tostring(wpmu)

if getconnections then
for bihx, ebl in ipairs(getconnections(pco.FocusLost)) do
pcall(function()
ebl:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end
end)

if jlp ~= nil then
local ywe = bzzv.pauseState()

if ywe ~= nil and ywe ~= jlp and getconnections then
pcall(function()
for quyt, gjw in ipairs(getconnections(nj.MouseButton1Click)) do
pcall(function()
gjw:Fire()
end)
end
end)
end
end

return aoci
end

function bzzv.restorePause()
xqv.triggered = false

if xqv.enabled and xqv.floor > 0 then
bzzv.pauseAt(true, xqv.floor)

pcall(function()
xl.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = xqv.floor,
})
end)

return
end

pcall(function()
xl.SaveClientData:FireServer({
pauseInfiniteEnabled = false,
pauseInfiniteAt = 1,
})
end)

bzzv.pauseAt(false, 1)
end

function bzzv.remote(kia)
local cit = bzzv.remotes[kia]

if cit and cit.Parent then
return cit
end

local yh = ayu:FindFirstChild(_d("KlNaBQIVSw"))
local ew = yh and yh:FindFirstChild(kia)

if ew then
bzzv.remotes[kia] = ew
end

return ew
end

function bzzv.historyOpen()
for avq, jya in ipairs({ _d("OldDHhoVfw1f"), _d("OldDHhoVfw1fBQ") }) do
local ehuw = ff:FindFirstChild(jya)
local ofmw = ehuw and ehuw:FindFirstChild(_d("LFlADwQ4UQtCWBgPNkoZW1I"))

if ofmw and ofmw.Visible then
return true
end
end

return false
end

function bzzv.generationOpen()
local yg = ff:FindFirstChild(_d("LFlADwQiXQtDWx4xBVE"))
local hhi = yg and yg:FindFirstChild(_d("KlNEHxoEfgpXWg8"))

return hhi ~= nil and hhi.Visible
end

function bzzv.standDown(jrg)
if not bzzv.hidMenu then
local kuvv = true

pcall(function()
kuvv = zcwe:GetState() ~= false
end)

if kuvv then
bzzv.hidMenu = true

pcall(function()
zcwe:SetState(false)
end)
end
end

if bzzv.watcher then
return
end

bzzv.watcher = true

task.spawn(function()

local hyu = os.clock() + 6

while gsk() and os.clock() < hyu and not jrg() do
task.wait(0.2)
end

while gsk() and jrg() do
task.wait(0.4)
end

bzzv.watcher = false

if bzzv.hidMenu then
bzzv.hidMenu = false

pcall(function()
zcwe:SetState(true)
end)
end
end)
end

gapk.floorAt = 0
gapk.battleAt = 0
gapk.floor = nil
gapk.manualPause = false

task.spawn(function()
local wobu = wek(_d("OldDHhoVbQhSVh4T"))
local yt = wek(_d("K09ZCSIfTx1EcQYZH0o"))
local szi = wek(_d("OldDHhoVfRZS"))
local pu = wek(_d("LFlADwQiTRZzWQ4TFA"))

if wobu then
im(wobu.OnClientEvent, function()
gapk.battleAt = os.clock()
end)
end

if yt then
im(yt.OnClientEvent, function(xwa)
gapk.floorAt = os.clock()

if type(xwa) == _d("FkNaCBMC") and xwa > 1 then
gapk.floor = xwa
else
gapk.floor = nil
end
end)
end

if szi then
im(szi.OnClientEvent, function(skz)
if type(skz) == _d("DFdVBhM") and skz.mode == _d("DFlADwQ") then
gapk.floorAt = os.clock()
end
end)
end

if pu then
im(pu.OnClientEvent, function()

gapk.lastRunEnded = {
clock = os.clock(),
floor = gapk.floor,
}

task.delay(1, function()
local iuk = ff:FindFirstChild(_d("LFlADwQiXQtDWx4xBVE"))
local brdb = iuk and iuk:FindFirstChild(_d("KlNEHxoEfgpXWg8"))
local tzh = {}

if brdb then
for vd, azjf in ipairs(brdb:GetDescendants()) do
if azjf:IsA(_d("LFNPHjoRWh1a")) and azjf.Visible and azjf.Text ~= _d("") and #tzh < 12 then
tzh[#tzh + 1] = azjf.Text
end
end
end

if gapk.lastRunEnded then
gapk.lastRunEnded.texts = table.concat(tzh, _d("WEoX"))
end
end)

gapk.floorAt = 0
gapk.battleAt = 0
gapk.floor = nil

if gapk.manualPause then
bzzv.restorePause()
end
end)
end

end)

local function uknx()
local jkwu = os.clock()

if jkwu - (gapk.floorAt or 0) < 90 and jkwu - (gapk.battleAt or 0) < 12 then
return true
end

for ztla, pgzj in ipairs({ _d("OldDHhoVfw1f"), _d("OldDHhoVfw1fBQ") }) do
local opb = ff:FindFirstChild(pgzj)

if opb then

local zt = opb:FindFirstChild(_d("LFlADwQ2VBdZRSYXEl0U"))

if zt and zt.Visible then
return true
end

local cej = opb:FindFirstChild(_d("PlpYBQQjWwpTUgQ"))

if cej and cej.Visible then
return true
end

local dvop = opb:FindFirstChild(_d("OldDHhoVaxtEUg8Y"))

if dvop and dvop.Visible then
local lsxg = dvop:FindFirstChild(_d("KUNeCR03UQ5TYho0BUwMWVk"))

if lsxg and lsxg.Visible then
return true
end
end
end
end

return false
end

function bzzv.hardNow()

local dkcv = ff:FindFirstChild(_d("OldDHhoVfw1f"))
local hefl = dkcv and dkcv:GetAttribute(_d("LFlADwQ4WQpSZwMVGw"))

if hefl ~= nil then
return hefl == true
end

local xhd = yvcz.misc.util.profile

return type(xhd) == _d("DFdVBhM") and xhd.lastTowerHard == true
end

function bzzv.endIfWrongMode(lon)
if not uknx() or bzzv.hardNow() == (lon == true) then
return false
end

pcall(function()
if type(pam) == _d("HkNZCQIZVxY") then
pam()
else
xl.EndTowerRemote:FireServer(1)
end
end)

gapk.floor = nil

return true
end

function bzzv.hardPickNow()
for kd, pba in ipairs({ _d("OldDHhoVfw1f"), _d("OldDHhoVfw1fBQ") }) do
local cvek = ff:FindFirstChild(pba)
local tma = cvek and cvek:GetAttribute(_d("LFlADwQ4WQpSZwMVGw"))

if tma ~= nil then
return tma == true
end
end

return nil
end

function bzzv.parked()
for fox, kegd in ipairs({ _d("OldDHhoVfw1f"), _d("OldDHhoVfw1fBQ") }) do
local suoi = ff:FindFirstChild(kegd)

if suoi then
local ii = suoi:FindFirstChild(_d("LFlADwQ2VBdZRSYXEl0U"))
local nyk = suoi:FindFirstChild(_d("PlpYBQQjWwpTUgQ"))
local vln = suoi:FindFirstChild(_d("OldDHhoVaxtEUg8Y"))

if ii and ii.Visible
and not (nyk and nyk.Visible)
and not (vln and vln.Visible) then
return true
end
end
end

return false
end

gapk.ui = erlu:Toggle({
Name = _d("OUNDBVYkVw9TRQ"),
Default = false,
Callback = function(nkp)

if gapk.quiet then
return
end

gapk.enabled = nkp
gapk.pending = false
gapk.pendingUntil = 0

if nkp then

if fq.enabled and fq.role[1] ~= _d("DFlADwQ") then
gapk.enabled = false

pcall(function()
gapk.ui:UpdateState(false)
end)

pcall(function()
zcwe:Dialog({
Title = _d("OUNDBVYkVw9TRUoZFl4"),
Description = _d("K1pYHlZBGBFFFxkTBBgMWRc") .. fq.roleName(1) .. _d("VhZjAhNQcRZQXgQfBEFYdVYZAhxdWFlZBg9QSwxXRR4FUFcWFkQGGQQYSRoXGRlQSx1CFzkaH0xYBxceGVBsF0FSGFYWUQpFQ0Q"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})
end)

return
end

if fq.otherTowerOn(_d("DFlADwQ")) then
gapk.enabled = false

pcall(function()
gapk.ui:UpdateState(false)
end)

pcall(function()
zcwe:Dialog({
Title = _d("OUNDBVYkVw9TRUoZFl4"),
Description = _d("OVhYHh4VSlhCWB0TAhgZQ0MFGxFMEVlZSh8DGBlaRQ8XFEFYWVlGVhFWHBZDAh8DGBlVVAUDHkxYWVkGD1BZFFpYHQVQVxZTFx4ZB10KFkUfGFBZDBZWSgIZVR0YFz4DAlZYQl8LAlBXFlMXBRAWGB5fRRkCXBgXRBceAwJWWFlZSjcFTBcWZAYZBBgLWRcPFxNQWEVbBQJQXx1CREofBEtYWUAEVgRXD1NFRA"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})
end)

return
end

gapk.nightmare = false

pcall(function()
gapk.quiet = true
gapk.nightmareToggle:UpdateState(false)
gapk.quiet = false
end)

gapk.manualPause = false
gapk.paused = false
bzzv.restorePause()
gapk.pauseArmed = false

bzzv.endIfWrongMode(false)
bzzv.hardPick(false)

return
end

if not uknx() then
return
end

gapk.paused = true
local bit = wuvu()

zcwe:Notify({
Title = _d("OUNDBVYkVw9TRUoZFl4"),
Description = bit and _d("LFlADwRQSg1YFxoXBUsdUhk") or _d("KkNZSh8DGBRfQQ9aUFoNQhcEGVBaClNWAVYSTQxCWARWFlcNWFNE"),
Lifetime = 5,
})
end,
}, _d("GUNDBSkEVw9TRQ"))

gapk.nightmareToggle = erlu:Toggle({
Name = _d("OUNDBVY+UR9eQwcXAl1YYlgdEwI"),
Default = false,
Callback = function(db)
if gapk.quiet then
return
end

gapk.nightmare = db

if not db then

gapk.enabled = false
gapk.pending = false
gapk.pendingUntil = 0

bzzv.hardPick(false)

pcall(function()
gapk.quiet = true
gapk.ui:UpdateState(false)
gapk.quiet = false
end)

if uknx() then
gapk.paused = true
local inti = wuvu()

zcwe:Notify({
Title = _d("OUNDBVY+UR9eQwcXAl1YYlgdEwIYF1BR"),
Description = inti and _d("Nl9QAgIdWQpTFxgDHhgIV0IZExQW") or _d("KkNZSh8DGBRfQQ9aUFoNQhcEGVBaClNWAVYSTQxCWARWFlcNWFNE"),
Lifetime = 5,
})
end

return
end

if fq.enabled and fq.role[1] ~= _d("DFlADwQ") then
gapk.nightmare = false

pcall(function()
gapk.quiet = true
gapk.nightmareToggle:UpdateState(false)
gapk.quiet = false
end)

pcall(function()
zcwe:Dialog({
Title = _d("OUNDBVY+UR9eQwcXAl1YYlgdEwIYF1BR"),
Description = _d("Nl9QAgIdWQpTFz4ZB10KFlQFAx5MCxZWGVYkVw9TRUofHhgLWlgeVkEUWFdZDlYJVw1EFxkaH0xYBxcDBVBXFhY") .. fq.roleName(1) .. _d("WEReDR4EGBZZQERWI10MFkQGGQQYSRZDBVYkVw9TRUoQGUoLQhk"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})
end)

return
end

pcall(function()
gapk.quiet = true
gapk.ui:UpdateState(false)
gapk.quiet = false
end)

gapk.enabled = true
gapk.manualPause = false
gapk.paused = false

bzzv.restorePause()
gapk.pauseArmed = false

bzzv.endIfWrongMode(true)
bzzv.hardPick(true)

gapk.pending = false
gapk.pendingUntil = 0
end,
}, _d("GUNDBSkeUR9eQwcXAl0nQlgdEwI"))

erlu:Header({
Name = _d("OUNDBVYgWQ1FUkoiH08dRA"),
})

local fzi

fzi = erlu:Toggle({
Name = _d("OUNDBVYgWQ1FUkowHFcXRA"),
Default = false,
Callback = function(imn)
xqv.triggered = false

if imn and xqv.floor <= 0 then
xqv.enabled = false

pcall(function()
fzi:UpdateState(false)
end)

pcall(function()
xl.SaveClientData:FireServer({ pauseInfiniteEnabled = false })
end)

zcwe:Dialog({
Title = _d("OUNDBVYgWQ1FUkowHFcXRA"),
Description = _d("K1NDShdQSBlDRA9WFlQXWUVKFxJXDlMXWlYWUQpFQ0pbUHkNQlhKJhFNC1MXPhkHXQoWWQ8TFEtYQlhKHR5XDxZAAhMCXVhCWEoFBFcIGA"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})

return
end

xqv.enabled = imn

pcall(function()
xl.SaveClientData:FireServer({
pauseInfiniteEnabled = imn,
pauseInfiniteAt = xqv.floor,
})
end)
end,
}, _d("GUNDBSkAWQ1FUjUQHFcXRA"))

erlu:Input({
Name = _d("KFdCGRNQWQwWUQYZH0o"),
Placeholder = _d("HRhQRFZFCA"),
AcceptedCharacters = _d("NkNaCBMCSw"),
Callback = function(pp)
local urjt = tonumber(pp) or 0

if urjt < 0 then
urjt = 0
end

if urjt == xqv.floor then
return
end

xqv.floor = urjt
xqv.triggered = false

if urjt <= 0 and xqv.enabled then
xqv.enabled = false

pcall(function()
fzi:UpdateState(false)
end)
end

pcall(function()
xl.SaveClientData:FireServer({
pauseInfiniteAt = urjt,
pauseInfiniteEnabled = xqv.enabled,
})
end)
end,
}, _d("CFdCGRMvWQxpUQYZH0o"))

erlu:Button({
Name = _d("KFdCGRNQbBdBUhg"),
Callback = function()
local ginp = false

pcall(function()
ginp = wuvu()
end)

if ginp then

gapk.manualPause = true
return
end

zcwe:Dialog({
Title = _d("KFdCGRNQbBdBUhg"),
Description = _d("NlkXBh8GXVhCWB0TAhgKQ1lKAh8YCFdCGRNQShFRXx5WHlcPGA"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})
end,
})

erlu:Header({
Name = _d("OUNDBVY3UQ5TFz8G"),
})

vyac.toggle = erlu:Toggle({
Name = _d("OUNDBVY3UQ5TFz8G"),
Default = false,
Callback = function(wws)
vyac.triggered = false

if wws and vyac.floor <= 0 then
vyac.enabled = false

pcall(function()
vyac.toggle:UpdateState(false)
end)

zcwe:Dialog({
Title = _d("OUNDBVY3UQ5TFz8G"),
Description = _d("K1NDShdQXxFAUkoDABgeWlgFBFBZGllBD1ZAGB5fRRkCUBVYd0IeGVB/EUBSSiMAGBZTUg4FUEwXFlwEGQcYD15SGBNQTBcWRB4ZABY"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})

return
end

vyac.enabled = wws
end,
}, _d("GUNDBSkXUQ5TaB8G"))

erlu:Input({
Name = _d("P19BD1YFSFhZWUoQHFcXRA"),
Placeholder = _d("HRhQRFZHCA"),
AcceptedCharacters = _d("NkNaCBMCSw"),
Callback = function(dcbk)
local cwfc = tonumber(dcbk) or 0

if cwfc < 0 then
cwfc = 0
end

if cwfc == vyac.floor then
return
end

vyac.floor = cwfc
vyac.triggered = false

if cwfc <= 0 and vyac.enabled then
vyac.enabled = false

pcall(function()
vyac.toggle:UpdateState(false)
end)
end
end,
}, _d("H19BDykFSCdZWTUQHFcXRA"))

vyac.weatherToggle = erlu:Toggle({
Name = _d("OUNDBVYXUQ5TFx8GUFcWFkAPFwRQHUQ"),
Default = false,
Callback = function(bzpa)
vyac.weatherTriggered = false

if bzpa and next(vyac.weathers) == nil then
vyac.weatherEnabled = false

pcall(function()
vyac.weatherToggle:UpdateState(false)
end)

zcwe:Dialog({
Title = _d("L1NWHh4VSlhxXhwTUG0I"),
Description = _d("LF9UAVYRTFhaUgsFBBgXWFJKARVZDF5SGFYSXRRZQEoQGUoLQhdHVh9MEFNFHR8DXVhCXw8EFRgRRRcEGQRQEVhQSgIfGB9fQQ9WBUhYWVlE"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})

return
end

vyac.weatherEnabled = bzpa
end,
}, _d("GUNDBSkXUQ5TaB8GL1cWaUAPFwRQHUQ"))

erlu:Dropdown({
Name = _d("P19BD1YFSFhBUgsCGF0KRQ"),
Multi = true,
Required = false,
Options = { _d("LE9HAhkfVg"), _d("OlpeEAwRShw"), _d("NF9QAgIeURZR"), _d("L19ZDgUEVwpb"), _d("K15WGB8eXxlY"), _d("K19ZDQMcWQpfQxM"), _d("NVlZCwQTUFhyWAcXGVY"), _d("LlleDg"), _d("NVdTD1YZVlh+UgsAFVY"), _d("NVdZDRc") },
Callback = function(gwjd)
vyac.weathers = {}

if type(gwjd) == _d("DFdVBhM") then
for bqbk, tpev in pairs(gwjd) do
if tpev then
vyac.weathers[bqbk] = true
end
end
end

vyac.weatherTriggered = false
end,
}, _d("H19BDykFSCdBUgsCGF0KRQ"))

erlu:Input({
Name = _d("NV9ZAxsFVVhQWwUZAks"),
Placeholder = _d("SBYKShceQVhQWwUZAg"),
AcceptedCharacters = _d("NkNaDwQZWw"),
Callback = function(snyw)
local fzfr = math.floor(tonumber(snyw) or 0)

if fzfr < 0 then
fzfr = 0
end

vyac.weatherMinFloor = fzfr
vyac.weatherTriggered = false
end,
}, _d("FV9ZAxsFVSdQWwUZAks"))

vyac.weatherLateToggle = erlu:Toggle({
Name = _d("P19BD1YFSFhBXh4eUApIRRcGExZM"),
Default = false,
Callback = function(erc)
vyac.weatherLate = erc
vyac.weatherTriggered = false

if erc and not vyac.weatherEnabled then
pcall(function()
vyac.weatherToggle:UpdateState(true)
end)
end
end,
}, _d("H19BDykFSCdaVh4T"))

erlu:Button({
Name = _d("P19BD1YlSFhiWB0TAg"),
Callback = function()
if not uknx() then
zcwe:Dialog({
Title = _d("P19BD1YlSFhiWB0TAg"),
Description = _d("NlkXBh8GXVhCWB0TAhgKQ1lKAh8YH19BD1YFSFhEXg0eBBgWWUBE"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})

return
end

zcwe:Dialog({
Title = _d("P19BD1YlSFhiWB0TAg"),
Description = _d("PllFDBMZTFhCXw9WE00KRFIEAlBMF0FSGFYCTRYJFz4eGUtYVVYEGB9MWFRSSgMeXBdYUkQ"),
Buttons = {
{
Name = _d("P1kXCBcTUw"),
},
{
Name = _d("P19BD1YFSA"),
Callback = function()
local ofu = false

pcall(function()
ofu = pam()
end)

if ofu then
return
end

task.defer(function()
task.wait(0.3)

zcwe:Dialog({
Title = _d("P19BD1YlSFhiWB0TAg"),
Description = _d("NlkXDR8GXVhDR0oUBUwMWVlKFx5LD1NFDxJQFVhCXw9WAk0WFloLD1BZFERSCxIJGBpTFwUAFUpW"),
Buttons = {
{
Name = _d("P1lDSh8E"),
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

erlu:Button({
Name = _d("O15SCR1QVBdFREoeGUsMWUUT"),
Callback = function()
local wpx = bzzv.remote(_d("KlNGHxMDTCxZQA8EOFELQlgYDw"))

if not wpx then
zcwe:Dialog({
Title = _d("NFlEGVY4UQtCWBgP"),
Description = _d("LF5eGVYSTRFaU0oeEUtYWFhKAh9PHUQXAh8DTBdETkoEFVUXQlJE"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})

return
end

bzzv.standDown(bzzv.historyOpen)

pcall(function()
wpx:FireServer()
end)
end,
})

erlu:Button({
Name = _d("O15SCR1QXx1YUhgXBFEXWEQ"),
Callback = function()

local bsrv = ff:FindFirstChild(_d("LFlADwQiXQtDWx4xBVE"))
local wwrp = bsrv and bsrv:FindFirstChild(_d("N0ZSBDEVVjBfRB4ZAkE"))

if not wwrp then
zcwe:Dialog({
Title = _d("P1NZDwQRTBFZWRk"),
Description = _d("LF5eGVYSTRFaU0oeEUtYWFhKERVWHURWHh8fVgsWQAMYFFcPGA"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})

return
end

bzzv.standDown(bzzv.generationOpen)

pcall(function()
wwrp:Fire()
end)
end,
})

npj.bossTeams.towerSection = xq:Section({
Side = _d("NFNRHg"),
})

npj.bossTeams.towerSection:Header({
Name = _d("LFlADwRQbB1XWhk"),
})

npj.bossTeams.towerSection:Paragraph({
Header = _d("MFlASgIfTx1EFx4TEVULFkAFBBs"),
Body = _d("N1BRUFYVWRteFxgDHhgNRVIZVgdQGUJSHBMCGAxTVgdWGUwLFkQGGQQYGVpFDxcUQVheWAYSAxZyPHgETFBdGVVfSgIfTx1EFwgTHFcPFkUfGAMYD19DAlYEUB0WQw8XHRgIX1QBExQYHllFSh8EFg"),
})

npj.bossTeams.towerToggle = npj.bossTeams.towerSection:Toggle({
Name = _d("LFlADwRQbB1XWhk"),
Default = false,
Callback = function(ooa)
npj.bossTeams.towersOn = ooa
end,
}, _d("DFlADwQvTB1XWhk"))

for ex, qpid in ipairs({
{ kind = _d("DFlADwQ"), name = _d("MVhRAxgZTAEWdAsFBFQdFhhKOBlfEEJaCwQV") },
{ kind = _d("EFdFDhUfSh0"), name = _d("MUVbCxgUGDBXRQ4VH0od") },
}) do
local nfb = math.clamp(math.floor(tonumber(npj.bossTeams.towerPicked[qpid.kind]) or 1), 1, 4)

npj.bossTeams.towerPicked[qpid.kind] = nfb

npj.bossTeams.towerUi[qpid.kind] = npj.bossTeams.towerSection:Dropdown({
Name = qpid.name,
Search = false,
Multi = false,
Required = false,
Default = nfb,
Options = { _d("LFNWB1ZB"), _d("LFNWB1ZC"), _d("LFNWB1ZD"), _d("LFNWB1ZE") },
Callback = function(urp)
local sxnr = type(urp) == _d("DFdVBhM") and urp[1] or urp
local ip = type(sxnr) == _d("C0JFAxgX") and tonumber(sxnr:match(_d("UBNTQV8"))) or nil

if ip then
npj.bossTeams.towerPicked[qpid.kind] = ip
npj.bossTeams.save()
end

pcall(function()
npj.bossTeams.towerUi[qpid.kind]:UpdateName(qpid.name .. _d("WNS3yFY") .. (sxnr or _d("LFNWB1ZB")))
end)
end,
}, _d("DFNWBykEVw9TRTU") .. qpid.kind)

pcall(function()
npj.bossTeams.towerUi[qpid.kind]:UpdateSelection(_d("LFNWB1Y") .. tostring(nfb))
npj.bossTeams.towerUi[qpid.kind]:UpdateName(qpid.name .. _d("WNS3yFYkXRlbFw") .. tostring(nfb))
end)
end

npj.bossTeams.towerSection:Header({
Name = _d("K0FWGlYfVlhQWwUZAg"),
})

npj.bossTeams.towerSection:Paragraph({
Header = _d("K0FWGlYEXRlbFwUYUFlYUFsFGQI"),
Body = _d("LF5SShERVR0RREoZB1ZYRUALBlwYFllDShdQSBlDRA9YUH0ZVV9KBAVUHRZeGVYRGB5aWAUEUFkWUhceHhUYDFNWB1YHVwpYFwwEH1VYQl8LAlBeFFlYGFYfVlQWQBgfBEwdWBcDGARXWEJfD1YXWRVTEBlWI10MQl4EEQMYVQgXKwMEV1hiUgsbUGsPV0dKR1BZFlIXWFpQSxcWQwITUF8ZW1JKGxFTHUUXHh4VGAtBXh4VGBgRQkQPGhYYD15SBFYRGApDWUoFBFkKQkRKAhhZDBZRBhkfSlYWeQUCGFEWURcDBVBLDFlHGhMUGBlYU0oCGF1YREIEVhtdHUZESh8ES1hFWwUCXjJydxcJFwNMFFMXGAMeGB9TQxlWBFAdFkQLGxUYC0FeHhUYGB5EWAdWBFARRRcaFx5dFBoXCBMTWQ1FUkoCGF1YUVYHE1dLWFlABFYDTxlGFwUYHEFYUF4YEwMYEVhEAxIVGDFYUQMYGUwdFmUFGR1LVjw9JhMRTh0WVkoQHFcXRBcLAlAIWEJYSgIFShYWQwIXBBgKQ1sPVh9eHhg"),
})

function npj.bossTeams.swapStatusText()
local eugs = npj.bossTeams.swap
local kqts = {}

if eugs.on then
table.insert(kqts, _d("N1gXR1YHShFCQw8YUEwXFkMCE1BfGVtSTQVQeQ1CWEoiFVkVFmQdFwAYCllAGVg"))
else
table.insert(kqts, _d("N1BRSltQTBBTFw0XHV1fRRcZARFIWF9EShoVXgwWVgYZHl1W"))
end

local fwfk = {
{ index = 1, floor = eugs.floor, team = eugs.team },
{ index = 2, floor = eugs.floor2, team = eugs.team2 },
}

for hp, wkin in ipairs(fwfk) do
if wkin.floor > 0 then
table.insert(kqts, string.format(_d("K0FWGlZVXEIWYw8XHRhdUhcMBB9VWFBbBRkCGF1S"), wkin.index, wkin.team, wkin.floor))
else
table.insert(kqts, string.format(_d("K0FWGlZVXEIWWAwQUBAWWRcMGh9XChZEDwJZ"), wkin.index))
end
end

if npj.bossTeams.swapMessage ~= _d("") then
table.insert(kqts, npj.bossTeams.swapMessage)
end

return table.concat(kqts, _d("cg"))
end

function npj.bossTeams.paintSwap()
pcall(function()
npj.bossTeams.swapStatus:UpdateBody(npj.bossTeams.swapStatusText())
end)
end

npj.bossTeams.swapToggle = npj.bossTeams.towerSection:Toggle({
Name = _d("K0FWGlYEXRlbFwUYUF4UWVgY"),
Default = npj.bossTeams.swap.on,
Callback = function(nhpn)
npj.bossTeams.swap.on = nhpn

npj.bossTeams.swapReset()

npj.bossTeams.swapApply()
npj.bossTeams.save()
end,
}, _d("C0FWGikEXRlbaAUYL14UWVgY"))

npj.bossTeams.swapInput = npj.bossTeams.towerSection:Input({
Name = _d("PlpYBQQ"),
Placeholder = _d("HRhQRFZFCEgWH1pWTRgXUFFD"),
AcceptedCharacters = _d("NkNaDwQZWw"),
Callback = function(gzxu)
local lplq = tonumber(type(gzxu) == _d("C0JFAxgX") and gzxu:match(_d("UBNTQV8")) or gzxu)

if lplq then
npj.bossTeams.swap.floor = lplq
npj.bossTeams.swapReset()
npj.bossTeams.swapApply()
npj.bossTeams.save()
end
end,
}, _d("HlpYBQQ"))

npj.bossTeams.swapDropdown = npj.bossTeams.towerSection:Dropdown({
Name = _d("K0FWGlYEVw"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(npj.bossTeams.swap.team) or 1), 1, 4),
Options = { _d("LFNWB1ZB"), _d("LFNWB1ZC"), _d("LFNWB1ZD"), _d("LFNWB1ZE") },
Callback = function(bjk)
local gpx = type(bjk) == _d("DFdVBhM") and bjk[1] or bjk
local fbyo = type(gpx) == _d("C0JFAxgX") and tonumber(gpx:match(_d("UBNTQV8"))) or nil

if fbyo then
npj.bossTeams.swap.team = fbyo
npj.bossTeams.swapReset()
npj.bossTeams.swapApply()
npj.bossTeams.save()
end

pcall(function()
npj.bossTeams.swapDropdown:UpdateName(_d("K0FWGlYEV1jUt8hW") .. (gpx or _d("LFNWB1ZB")))
end)

npj.bossTeams.paintSwap()
end,
}, _d("C0FWGikEVw"))

npj.bossTeams.swapInput2 = npj.bossTeams.towerSection:Input({
Name = _d("PlpYBQRQCg"),
Placeholder = _d("HRhQRFZBCEgGF0JGUAVYWVEMXw"),
AcceptedCharacters = _d("NkNaDwQZWw"),
Callback = function(jkhj)
local tje = tonumber(type(jkhj) == _d("C0JFAxgX") and jkhj:match(_d("UBNTQV8")) or jkhj)

if tje then
npj.bossTeams.swap.floor2 = tje
npj.bossTeams.swapReset()
npj.bossTeams.swapApply()
npj.bossTeams.save()
end
end,
}, _d("HlpYBQQvCg"))

npj.bossTeams.swapDropdown2 = npj.bossTeams.towerSection:Dropdown({
Name = _d("K0FWGlYEV1gE"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(npj.bossTeams.swap.team2) or 1), 1, 4),
Options = { _d("LFNWB1ZB"), _d("LFNWB1ZC"), _d("LFNWB1ZD"), _d("LFNWB1ZE") },
Callback = function(gmrq)
local casz = type(gmrq) == _d("DFdVBhM") and gmrq[1] or gmrq
local hvum = type(casz) == _d("C0JFAxgX") and tonumber(casz:match(_d("UBNTQV8"))) or nil

if hvum then
npj.bossTeams.swap.team2 = hvum
npj.bossTeams.swapReset()
npj.bossTeams.swapApply()
npj.bossTeams.save()
end

pcall(function()
npj.bossTeams.swapDropdown2:UpdateName(_d("K0FWGlYEV1gEF4j20hg") .. (casz or _d("LFNWB1ZB")))
end)

npj.bossTeams.paintSwap()
end,
}, _d("C0FWGikEVycE"))

npj.bossTeams.swapStatus = npj.bossTeams.towerSection:Paragraph({
Header = _d("K0FWGlYDTBlCQhk"),
Body = npj.bossTeams.swapStatusText(),
})

pcall(function()
local omd = math.clamp(math.floor(tonumber(npj.bossTeams.swap.team) or 1), 1, 4)
local hf = math.clamp(math.floor(tonumber(npj.bossTeams.swap.team2) or 1), 1, 4)

npj.bossTeams.swapDropdown:UpdateSelection(_d("LFNWB1Y") .. tostring(omd))
npj.bossTeams.swapDropdown:UpdateName(_d("K0FWGlYEV1jUt8hWJF0ZWxc") .. tostring(omd))
npj.bossTeams.swapDropdown2:UpdateSelection(_d("LFNWB1Y") .. tostring(hf))
npj.bossTeams.swapDropdown2:UpdateName(_d("K0FWGlYEV1gEF4j20hgsU1YHVg") .. tostring(hf))
end)

task.spawn(function()
local eme = npj.bossTeams.swapStatusText()

while gsk() do
local lomq = npj.bossTeams.swapStatusText()

if lomq ~= eme then
eme = lomq
npj.bossTeams.paintSwap()
end

task.wait(2)
end
end)

if npj.bossTeams.swap.on then
task.delay(2, function()
pcall(npj.bossTeams.swapApply)
end)
end

npj.bossTeams.section = xq:Section({
Side = _d("Kl9QAgI"),
})

npj.bossTeams.section:Header({
Name = _d("OllEGVYkXRlbRA"),
})

npj.bossTeams.section:Paragraph({
Header = _d("MFlAShQfSwsWQw8XHUtYQVgYHQ"),
Body = _d("N1BRUFYeVwxeXgQRUFELFkQdHwRbEFNTSltQXQ5TRRNWFlEfXkNKAwNdCxZDAhNQTB1XWkoPH01YV1sYExFcARZfCwAVGBRfWQ8SUE0IGhcdHhlbEBZeGVYEUB0WZAYZBBhJFkMPFx0YDVhbDwUDGAtaWB5WQhgMV1wPBVBMEFMXCBcETBRTGWB8P1ZCFlILFRgYGURSC1YSXRRZQEoQGV8QQkRKARlMEBZDAhNQTB1XWkoPH01YRl4JHVBeF0QXAwJe"),
})

npj.bossTeams.toggle = npj.bossTeams.section:Toggle({
Name = _d("OllEGVYkXRlbRA"),
Default = false,
Callback = function(jqlp)
npj.bossTeams.enabled = jqlp
end,
}, _d("GllEGSkEXRlbRA"))

for ghzv, obo in ipairs(ubmj) do
local pb = npj.bossTeams.picked[obo.id] or 1

pb = math.clamp(math.floor(tonumber(pb) or 1), 1, 4)
npj.bossTeams.picked[obo.id] = pb

npj.bossTeams.ui[obo.id] = npj.bossTeams.section:Dropdown({
Name = obo.name,
Search = false,
Multi = false,
Required = false,

Default = pb,
Options = { _d("LFNWB1ZB"), _d("LFNWB1ZC"), _d("LFNWB1ZD"), _d("LFNWB1ZE") },
Callback = function(kh)
local uhpk = type(kh) == _d("DFdVBhM") and kh[1] or kh
local xvjf = type(uhpk) == _d("C0JFAxgX") and tonumber(uhpk:match(_d("UBNTQV8"))) or nil

if xvjf then
npj.bossTeams.picked[obo.id] = xvjf

npj.bossTeams.save()
end

pcall(function()
npj.bossTeams.ui[obo.id]:UpdateName(obo.name .. _d("WNS3yFY") .. (uhpk or _d("LFNWB1ZB")))
end)
end,
}, _d("DFNWBykHVwpaUzU") .. obo.id)

pcall(function()
npj.bossTeams.ui[obo.id]:UpdateSelection(_d("LFNWB1Y") .. tostring(pb))
npj.bossTeams.ui[obo.id]:UpdateName(obo.name .. _d("WNS3yFYkXRlbFw") .. tostring(pb))
end)
end

npj.bossTeams.raidSection = xq:Section({
Side = _d("Kl9QAgI"),
})

npj.bossTeams.raidSection:Header({
Name = _d("KldeDlYkXRlbRA"),
})

npj.bossTeams.raidSection:Paragraph({
Header = _d("MFlASgQRURwWQw8XHUtYQVgYHQ"),
Body = _d("N1BRUFYCWRFSREoDA11YQV8LAhVOHUQXHhMRVVhCXw9WA1QXQhcLGgJdGVJOSh4fVBxFGWB8P1ZCFlILFRgYCldeDlYSXRRZQEofAxgeWUINHgQYD19DAlYEUB0WQw8XHRgIX1QBExQYHllFSh8EFg"),
})

npj.bossTeams.raidToggle = npj.bossTeams.raidSection:Toggle({
Name = _d("KldeDlYkXRlbRA"),
Default = false,
Callback = function(jxj)
npj.bossTeams.raidsOn = jxj
end,
}, _d("CldeDikEXRlbRA"))

for ptlx, fttg in ipairs(shz.Raids) do
if fttg.BossTitle and fttg.id then
local zer = npj.bossTeams.raidPicked[fttg.id] or 1

zer = math.clamp(math.floor(tonumber(zer) or 1), 1, 4)
npj.bossTeams.raidPicked[fttg.id] = zer

npj.bossTeams.raidUi[fttg.id] = npj.bossTeams.raidSection:Dropdown({
Name = fttg.BossTitle,
Search = false,
Multi = false,
Required = false,
Default = zer,
Options = { _d("LFNWB1ZB"), _d("LFNWB1ZC"), _d("LFNWB1ZD"), _d("LFNWB1ZE") },
Callback = function(sn)
local wh = type(sn) == _d("DFdVBhM") and sn[1] or sn
local cks = type(wh) == _d("C0JFAxgX") and tonumber(wh:match(_d("UBNTQV8"))) or nil

if cks then
npj.bossTeams.raidPicked[fttg.id] = cks
npj.bossTeams.save()
end

pcall(function()
npj.bossTeams.raidUi[fttg.id]:UpdateName(fttg.BossTitle .. _d("WNS3yFY") .. (wh or _d("LFNWB1ZB")))
end)
end,
}, _d("DFNWBykCWRFSaA") .. fttg.id)

pcall(function()
npj.bossTeams.raidUi[fttg.id]:UpdateSelection(_d("LFNWB1Y") .. tostring(zer))
npj.bossTeams.raidUi[fttg.id]:UpdateName(fttg.BossTitle .. _d("WNS3yFYkXRlbFw") .. tostring(zer))
end)
end
end

task.spawn(function()
local cc = qph()

while gsk() do
local imt = qph()

if fq.enabled and fq.statusText then
imt = fq.statusText()
end

imt = imt .. _d("cjxkDwQGXQoWQhpW") .. cob()

if imt ~= cc then
cc = imt
pcall(function()
xcku:UpdateBody(imt)
end)
end
task.wait(0.5)
end
end)

task.spawn(function()
while gsk() do
for bglk, uy in ipairs({ _d("OldDHhoVfw1f"), _d("OldDHhoVfw1fBQ") }) do
local ust = ff:FindFirstChild(uy)
local jcmt = ust and ust:FindFirstChild(_d("OldDHhoVaxtEUg8Y"))
local dyq = ust and ust:FindFirstChild(_d("MF9TDzQRTAxaUigDBEwXWA"))

if jcmt and jcmt.Visible and dyq and not dyq.Visible then
dyq.Visible = true
end
end

task.wait(0.5)
end
end)

task.spawn(function()
local fbt = false

while gsk() do
if vf then
local qf = ff:FindFirstChild(_d("LFlADwQiXQtDWx4xBVE"))
local zuz = qf and qf:FindFirstChild(_d("KlNEHxoEfgpXWg8"))
local uro = qf and qf:FindFirstChild(_d("P1NZDwQRTBFYUCwEEVUd"))

if uro and uro.Visible then
uro.Visible = false
end

local wii = zuz and zuz.Visible or false

if wii and not fbt then
local pznb = zuz:FindFirstChild(_d("O1pYGRMyTQxCWAQ"))
local jrak = false

if pznb then
for wehc, bsvk in ipairs({ _d("NVlCGRMyTQxCWARHM1QRVVw"), _d("OVVDAwARTB1S") }) do
local chq = pznb[bsvk]
if chq then
for ag, zvyc in ipairs(getconnections(chq)) do
pcall(function()
zvyc:Fire()
end)
jrak = true
end
end
end
end

if not jrak then
zuz.Visible = false
else
task.spawn(function()
task.wait(0.3)
if zuz.Parent and zuz.Visible then
zuz.Visible = false
end
end)
end
end

fbt = wii
else
fbt = false
end

task.wait(0.2)
end
end)

local aqh = {}

function aqh.active()
return npj.enabled or npj.story
end

function aqh.towerHolds()
if fq.enabled then
return false
end

if rtjv.run.enabled then
return true
end

return gapk.enabled and not gapk.paused
end

function aqh.ready(mcfq, kyi, gktn)
local jnwp = npj.unlocked[mcfq]

return (not jnwp or jnwp[kyi] ~= false) and xdy(mcfq, kyi) <= gktn
end

function aqh.hasReadyTarget()
local vrhb = os.time()

for rcl, gblv in ipairs(fipo()) do
for tku, ndu in ipairs(igu()) do
if aqh.ready(gblv, ndu, vrhb) then
return true
end
end
end

return false
end

function aqh.backOff(mwhb, rpns)
uq(mwhb, rpns, os.time() + 5)
end

function aqh.findTarget()
for ihj, etv in ipairs(fipo()) do
local gnb = uvbd(etv)
local hlv = os.time() - (npj.lastFetch[etv] or 0) > 60

if hlv and gnb and not npj.walkToNpc then
jc(gnb)
task.wait(0.3)
nbwm(etv)
end

for ppuk, move in ipairs(igu()) do
if aqh.ready(etv, move, os.time()) then
return etv, move
end
end
end

return nil
end

function npj.bossTeams.slotForFight()
if fq.hasSlot2 == false then
return 1
end

if fq.busy(2) then
return 1
end

return 2
end

function npj.bossTeams.slotTeam(ozqb)
local satk = ff:FindFirstChild(_d("K1NDHh8eXwtxQgM"))
local jq = satk and satk:FindFirstChild(_d("K1pYHiIVWRU") .. ozqb .. _d("OkNDHhke"), true)
local cbo = jq and jq.Text

return cbo and tonumber(cbo:match(_d("UBNTQV8"))) or nil
end

function npj.bossTeams.applyTeam(cslw, wwf)
cslw = tonumber(cslw)

if not cslw then
return false
end

wwf = tonumber(wwf) or npj.bossTeams.slotForFight()

if fq.busy(wwf) then
return false
end

npj.bossTeams.lastSlot = wwf

local lxw = npj.bossTeams.slotTeam(wwf) or npj.bossTeams.applied[wwf]

if lxw == cslw then
return true
end

local tjrn = bzzv.remote(_d("K0FeHhUYbB1XWg"))

if not tjrn then
return false
end

local toy = pcall(function()
tjrn:FireServer(cslw, false, wwf)
end)

npj.bossTeams.applied[wwf] = cslw
task.wait(0.2)

return toy
end

function npj.bossTeams.apply(ylb)
if not npj.bossTeams.enabled then
return
end

local gpl = npj.bossTeams.worldOf[ylb]
local lsxb = gpl and npj.bossTeams.picked[gpl]

if not lsxb then
return
end

npj.bossTeams.applyTeam(lsxb)
end

function npj.bossTeams.applyTower(tlbr, mxps)
if not npj.bossTeams.towersOn then
return false
end

local cnar = npj.bossTeams.towerPicked[tlbr]

local ilej = npj.bossTeams.swapFired[tlbr]

if npj.bossTeams.swap.on and type(ilej) == _d("DFdVBhM") then
cnar = ilej[2] or ilej[1] or cnar
end

if not cnar then
return false
end

return npj.bossTeams.applyTeam(cnar, mxps)
end

function npj.bossTeams.applyRaid(gpgc)
if not npj.bossTeams.raidsOn then
return
end

local dkrz = gpgc and npj.bossTeams.raidPicked[gpgc]

if not dkrz then
return
end

npj.bossTeams.applyTeam(dkrz)
end

function aqh.fight(llbv, sx)
local mxl = uvbd(llbv)

if not mxl then
aqh.backOff(llbv, sx)
return false
end

local kncy

if npj.walkToNpc then
local vlfc = xs[llbv]

if vlfc then
xl.TeleportToWorld:FireServer(vlfc)
task.wait(2.5)

local ar = uvbd(llbv) or mxl
local rti = ar:GetPivot()

kncy = rlp(rti.Position + rti.LookVector * 6, function()
return not aqh.active() or not npj.walkToNpc
end)

if kncy then
nbwm(llbv)
kncy = aqh.ready(llbv, sx, os.time())
end
end
else
kncy = jc(mxl)
end

if not kncy then
aqh.backOff(llbv, sx)
return false
end

task.wait(0.4)
npj.bossTeams.apply(llbv)
npj.activeDifficulty[llbv] = sx
xl.SetNPCDifficulty:FireServer(llbv, sx)
task.wait(0.4)

npj.currentBattle = {
npcId = llbv,
difficulty = sx,
}
lps = llbv
egx = sx
xl.StartNPCBattle:FireServer(llbv)
uq(llbv, sx, os.time() + 10)
npj.battlePending = true
npj.battlePendingUntil = os.time() + 30
task.wait(1)

return true
end

npj.workPending = function()

if yvcz.misc and yvcz.misc.cards and yvcz.misc.cards.inFlight then
return true
end

if not aqh.active() then
return false
end

if npj.battlePending then
return true
end

local afhh = fq.npcSlot()

if afhh and fq.busy(afhh) then
return true
end

return aqh.hasReadyTarget()
end

task.spawn(function()
while gsk() do

local xcbr = (fq.enabled and (yvcz.enabled or dyx.enabled or yvcz.worldBoss.enabled))
or aqh.towerHolds()
or not fq.slotFree(fq.npcSlot())

or (yvcz.misc and yvcz.misc.cards and yvcz.misc.cards.inFlight)
or (npj.battlePending and os.time() < npj.battlePendingUntil)

if aqh.active() and not xcbr and not fq.prioBlocks(_d("FkZU")) then
local zia, ezq = aqh.findTarget()

if zia then
aqh.fight(zia, ezq)
end
end

task.wait(0.5)
end
end)

task.spawn(function()
while gsk() do

local pxm = {}

if yvcz.enabled then

yvcz.requestProgress(false)

local btok = fq.roleSlot(_d("FkZU"))

if btok then
table.insert(pxm, btok)
end

if fq.splitNpc() and btok ~= 2 then
table.insert(pxm, 2)
end
end

local lbn = ayu:FindFirstChild(_d("KldeDiUEWQxDRA"))

if #pxm > 0 and lbn and (not dyx.enabled or fq.splitNpc()) and (fq.enabled or not npj.workPending()) then
for dslz, prh in ipairs(pxm) do
local jzwa = lbn

local ppha = yvcz.bossFor(prh, (prh ~= 1 and not fq.splitNpc()) and 1 or nil)
local ahd = jzwa:GetAttribute(_d("MUV4GhMe")) == true or jzwa:GetAttribute(_d("PllFCRMU")) == true
local yqlz = ppha ~= nil and jzwa:GetAttribute(_d("KlNWDg8v") .. ppha) == true
local fry = ppha and cz(ppha)

if ppha and yvcz.pending[ppha] and os.time() >= (yvcz.pendingUntil[ppha] or 0) then
yvcz.pending[ppha] = false
yvcz.cleared[ppha] = nil
end

if ppha and fq.slotFree(prh) and ahd and yqlz and yvcz.cleared[ppha] ~= fry and not yvcz.pending[ppha] then
local cpi = tak[ppha]
local vjq = cpi and uvbd(cpi)
local ajy = false

if vjq then
if yvcz.walkToBoss then
local tip = tkvd[ppha]
local utfq = omhv.Character and omhv.Character:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))
local rxl = vjq:GetPivot().Position
local jefw = utfq and (utfq.Position - rxl).Magnitude <= 15

if jefw then
ajy = true
elseif tip then
xl.TeleportToWorld:FireServer(tip)

local ypf = os.clock()
while os.clock() - ypf < 2.5 and yvcz.enabled do
task.wait(0.1)
end

if yvcz.enabled then
local qod = uvbd(cpi) or vjq
local cdx = qod:GetPivot()
local ogzu = cdx.Position + cdx.LookVector * 6
ajy = xgk(ogzu, yvcz.walkSpeed, function()
return not yvcz.enabled or not yvcz.walkToBoss
end)
end
end

if not ajy then
ajy = jc(vjq)
end
else
ajy = jc(vjq)
end

if ajy then
task.wait(0.5)
end
end

if ajy and not fq.prioBlocks(_d("CldeDgU")) then
yvcz.inFlight[ppha] = prh
yvcz.pending[ppha] = true
yvcz.pendingUntil[ppha] = os.time() + 15
yvcz.cleared[ppha] = fry

local qzo = yvcz.difficulties[1] or _d("FllFBxcc")
local bwhm = yvcz.progress[ppha]

if bwhm then
local krf = bwhm.unlocked
local rkd = bwhm.cooldowns

for ivh, bzb in ipairs(yvcz.difficulties) do
local fbkl = not krf or krf[bzb] ~= false
local dqqi = rkd and tonumber(rkd[bzb]) or 0

if fbkl and dqqi <= 0 then
qzo = bzb
break
end
end
end

npj.bossTeams.applyRaid(ppha)
xl.SetRaidDifficulty:FireServer(qzo, ppha)
task.wait(0.3)
xl.StartRaidBattle:FireServer(ppha)
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while gsk() do
local atql = dyx.inBattle and os.time() < dyx.inBattleUntil

if dyx.enabled and (fq.enabled or not npj.workPending()) and not atql and fq.slotFree(fq.roomSlot()) and not (dyx.pending and os.time() < dyx.pendingUntil) then
local nccz = dyx.progress

if nccz == nil then
xl.RequestInfiniteRoomProgress:FireServer()
task.wait(0.5)
else
local bxv = nil

for wsfp, mbty in ipairs(jka.Milestones) do
if jka.isMilestoneUnlocked(mbty, nccz) and not jka.isMilestoneCleared(mbty, nccz) then
bxv = mbty
break
end
end

if bxv then

local lncn = fq.roomSlot()

dyx.currentRoom = bxv
dyx.inBattle = true
dyx.inBattleUntil = os.time() + 60
dyx.pending = true
dyx.pendingUntil = os.time() + 10

local epxh = ff:FindFirstChild(lncn == 2 and _d("KlNEDwIyWQxCWw8wHFcXRAU") or _d("KlNEDwIyWQxCWw8wHFcXRA"))
if epxh and epxh:IsA(_d("Ol9ZDhcSVB1zQQ8YBA")) then
epxh:Fire(bxv, _d("EVhRAxgZTB1pRQUZHQ"))
end

local uzu = ff:FindFirstChild(lncn == 2 and _d("K0JWGAI5Vh5fWQMCFWoXWVooFwRMFFMF") or _d("K0JWGAI5Vh5fWQMCFWoXWVooFwRMFFM"))
if uzu and uzu:IsA(_d("Ol9ZDhcSVB1zQQ8YBA")) then
uzu:Fire(bxv)
end

xl.StartBattle:FireServer(_d("EVhRAxgZTB1pRQUZHQ"), {
milestone = bxv,
slot = lncn,
})
task.wait(2)
end
end
end

task.wait(1)
end
end)

local function xml(kkl, regp)
local uvq = ff:FindFirstChild(_d("K1VFDxMefw1f"))

if not uvq then
return
end

local lfz = uvq:FindFirstChild(kkl)
local qhk = lfz and lfz:FindFirstChild(_d("LldbHxM8WRpTWw"), true)
local dkbo = lfz and lfz:FindFirstChild(_d("NFdVDxo"), true)

if not lfz then
return
end

local wvd = false

if qhk then
wvd = qhk.Text == _d("N1g")
elseif dkbo then
wvd = not string.lower(dkbo.Text):find(_d("F1BR"), 1, true)
end

if wvd ~= regp then
for ckai, pvfl in ipairs(getconnections(lfz.MouseButton1Click)) do
local fno = pvfl.Function

if type(fno) == _d("HkNZCQIZVxY") then
pcall(fno)
else
pcall(function()
pvfl:Fire()
end)
end
end
end
end

getgenv().ACBXSetRollButton = xml

local function ppco(lgtr)
xml(_d("KUNeCR0iVxRadR8CBFcW"), lgtr)
xml(_d("OUNDBSQfVBR0Qh4CH1Y"), lgtr)
end

getgenv().ACBXSetRollUi = ppco
zhpb.setRollButton = xml

pcall(function()
xl.SaveClientData:FireServer({ autoHideBattle = false })
end)

task.defer(function()
task.wait(0.5)

local roa = ff:FindFirstChild(_d("OldDHhoVfw1f"))
local jdc = roa and roa:FindFirstChild(_d("OldDHhoVaxtEUg8Y"))
local nz = roa and roa:FindFirstChild(_d("MF9TDzQRTAxaUigDBEwXWA"))

if nz and nz.Visible and jdc and not jdc.Visible and hja() then
for mw, yuj in ipairs(getconnections(nz.MouseButton1Click)) do
local xzv = yuj.Function

if type(xzv) == _d("HkNZCQIZVxY") then
pcall(xzv)
else
pcall(function()
yuj:Fire()
end)
end
end
end
end)

ppco(true)

task.spawn(function()
while gsk() do

if zhpb.autoRoll then
xml(_d("OUNDBSQfVBR0Qh4CH1Y"), true)
end

if zhpb.autoQuickRoll then
xml(_d("KUNeCR0iVxRadR8CBFcW"), true)
end

task.wait(1)
end
end)

local function vqyw()

if gapk.floor then
return gapk.floor
end

local tmij = ff:FindFirstChild(_d("OldDHhoVfw1f"))

if not tmij then
return nil
end

for caox, kzai in ipairs({ _d("LFlADwQ2VBdZRSYXEl0U"), _d("KkNZLBofVwp6VggTHA") }) do
local pwyf = tmij:FindFirstChild(kzai)

if pwyf and pwyf.Visible and pwyf.Text then
local muh = tonumber(pwyf.Text:match(_d("UBNTQV8")))

if muh then
return muh
end
end
end

local tzml = tmij:FindFirstChild(_d("PlpYBQQjWwpTUgQ"))
local isz = tzml and tzml:FindFirstChild(_d("LFlHKBcC"))
local qhid = isz and isz:FindFirstChild(_d("PlpYBQQ8WRpTWw"))

if qhid then
return tonumber(qhid.Text:match(_d("UBNTQV8")))
end

return nil
end

function npj.bossTeams.swapRows(wjw)
local gapm = ff:FindFirstChild(_d("K1NDHh8eXwtxQgM"))
local yyuh = gapm and gapm:FindFirstChild(_d("OUNDBSUHWQg") .. wjw .. _d("KllA"), true)

if not yyuh then
return nil
end

return yyuh:FindFirstChild(_d("OUNDBSUHWQg") .. wjw .. _d("O15SCR0")),
yyuh:FindFirstChild(_d("OUNDBSUHWQg") .. wjw .. _d("LFNWBw")),
yyuh:FindFirstChild(_d("OUNDBSUHWQg") .. wjw .. _d("PlpYBQQ"))
end

function npj.bossTeams.swapOn(uvp)
local yyvk = ff:FindFirstChild(_d("K1NDHh8eXwtxQgM"))
local xbco = yyvk and yyvk:FindFirstChild(_d("P1NDORMETBFYUBk"), true)

if not xbco then
return nil
end

local fth, auk = pcall(function()
return xbco:Invoke()
end)

if fth and type(auk) == _d("DFdVBhM") then
return auk[uvp == 1 and _d("GUNDBSIVWRVlQAsGNVYZVFsPEg") or _d("GUNDBSIVWRVlQAsGQn0WV1UGExQ")] == true
end

return nil
end

function npj.bossTeams.swapBox(zdpv, kjjk)
if tonumber(zdpv.Text) == kjjk then
return
end

zdpv.Text = tostring(kjjk)

if getconnections then
for yxl, oxvh in ipairs(getconnections(zdpv.FocusLost)) do
pcall(function()
oxvh:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end

function npj.bossTeams.swapSet(yvqz, gfzb, tsat, syvk)
local zyh, uqb, acvx = npj.bossTeams.swapRows(yvqz)

if not (zyh and uqb and acvx) then
return false
end

tsat = math.max(1, math.floor(tonumber(tsat) or 1))
syvk = math.clamp(math.floor(tonumber(syvk) or 1), 1, 4)

npj.bossTeams.swapBox(acvx, tsat)
npj.bossTeams.swapBox(uqb, syvk)

local pzzr = npj.bossTeams.swapOn(yvqz)

if pzzr ~= nil and pzzr ~= (gfzb == true) and getconnections then
pcall(function()
for oxvl, uqru in ipairs(getconnections(zyh.MouseButton1Click)) do
pcall(function()
uqru:Fire()
end)
end
end)
end

local gu = yvqz == 1 and _d("") or _d("Sg")

pcall(function()
xl.SaveClientData:FireServer({
[_d("GUNDBSIVWRVlQAsG") .. gu .. _d("PVhWCBoVXA")] = gfzb == true,
[_d("GUNDBSIVWRVlQAsG") .. gu .. _d("LFNWBw")] = syvk,
[_d("GUNDBSIVWRVlQAsG") .. gu .. _d("PlpYBQQ")] = tsat,
})
end)

return true
end

function npj.bossTeams.swapApply()
local kysr = npj.bossTeams
local rey = kysr.swap
local lvoj = true

if rey.on then
lvoj = kysr.swapSet(1, rey.floor > 0, rey.floor, rey.team)
lvoj = kysr.swapSet(2, rey.floor2 > 0, rey.floor2, rey.team2) and lvoj
else
lvoj = kysr.swapSet(1, false, rey.floor, rey.team)
lvoj = kysr.swapSet(2, false, rey.floor2, rey.team2) and lvoj
end

kysr.swapMessage = _d("")

if not lvoj then
kysr.swapMessage = _d("LF5SShERVR0RREo3BUwXFmMPFx0YK0FWGlYCVw9FFwsEFRgWWUNKFAVRFEIXExMEGFUWRQ8CAkERWFBE")
end

kysr.paintSwap()
end

function npj.bossTeams.swapReset(ddbt)
local xa = npj.bossTeams

if ddbt then
xa.swapFired[ddbt] = nil
else
xa.swapFired = {}
end
end

function npj.bossTeams.swapTick()
local bmc = npj.bossTeams
local jhyl = bmc.swap

if not jhyl.on or (jhyl.floor <= 0 and jhyl.floor2 <= 0) then
if next(bmc.swapFired) ~= nil then
bmc.swapFired = {}
end

return
end

local qvul = os.clock()
local kuh = bzzv.remote(_d("K0FeHhUYbB1XWg"))

if qvul - (bmc.swapWroteAt or 0) > 10 then
bmc.swapWroteAt = qvul
bmc.swapApply()
end

local pybg = {
{
kind = _d("DFlADwQ"),
slot = fq.towerSlot(),

live = qvul - (gapk.floorAt or 0) < 90,
floor = vqyw(),

own = true,
},
{
kind = _d("EFdFDhUfSh0"),
slot = fq.hardcoreSlot(),
live = rs.active(),
floor = rs.floorNow(),

own = false,
},
}

local bshu = {
{ index = 1, floor = jhyl.floor, team = jhyl.team },
{ index = 2, floor = jhyl.floor2, team = jhyl.team2 },
}

for oh, rsid in ipairs(pybg) do
if not rsid.live then

bmc.swapFired[rsid.kind] = nil
elseif rsid.own and kuh and rsid.floor then
local aqn = bmc.swapFired[rsid.kind]

for sulv, ask in ipairs(bshu) do
local xbm = type(aqn) == _d("DFdVBhM") and aqn[ask.index]

if ask.floor > 0 and rsid.floor == ask.floor and not xbm then
local riwu = pcall(function()
kuh:FireServer(math.clamp(math.floor(ask.team), 1, 4), true, rsid.slot or 1)
end)

if riwu then
aqn = type(aqn) == _d("DFdVBhM") and aqn or {}
aqn[ask.index] = ask.team
bmc.swapFired[rsid.kind] = aqn

bmc.swapMessage = string.format(_d("O1dEHhoVGB5aWAUEUB0cFhpKBQdRDFVfDxJQTBcWYw8XHRhdUhk"), rsid.floor, ask.team)
bmc.paintSwap()
end
end
end
end
end
end

task.spawn(function()
while gsk() do
pcall(npj.bossTeams.swapTick)
task.wait(0.5)
end
end)

local function goli()

return aqh.active() and aqh.hasReadyTarget()
end

function yvcz.worldBoss.remote(ebek)
local kkpb = yvcz.worldBoss

kkpb.remotes = kkpb.remotes or {}

local gh = kkpb.remotes[ebek]

if gh and gh.Parent then
return gh
end

local ero = bzzv.remote(ebek)

if ero then
kkpb.remotes[ebek] = ero
end

return ero
end

function yvcz.worldBoss.setRepeat(nyl)
local afc = yvcz.worldBoss
local eyx = afc.remote(_d("L1lFBhIyVwtFdgkCGVcW"))

if not eyx then
return false
end

local ofbn = afc.state
local owqh = type(ofbn) == _d("DFdVBhM") and ofbn.repeatOn == true

if owqh == (nyl and true or false) then
afc.repeatIntent = nil

return true
end

if nyl then
local vq = workspace:FindFirstChild(_d("L1lFBhIyVwtFdhgTHlk"))
local dgv = vq and (vq:FindFirstChild(_d("O1NbBjsRQA")) or vq)
local euez = omhv.Character and omhv.Character:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not (dgv and euez) then
return false
end

local qav, cdwi = pcall(function()
return dgv:GetPivot()
end)

if not qav or (euez.Position - cdwi.Position).Magnitude > 60 then
return false
end
end

if afc.repeatIntent == nyl and os.clock() - (afc.repeatAskedAt or 0) < 20 then
return false
end

afc.repeatIntent = nyl

pcall(function()
eyx:FireServer(_d("ClNHDxcE"))
end)

afc.repeatAskedAt = os.clock()

return true
end

function yvcz.worldBoss.requestSync()
local dli = yvcz.worldBoss
local jbx = dli.remote(_d("L1lFBhIyVwtFdgkCGVcW"))

if jbx then
pcall(function()
jbx:FireServer(_d("C09ZCQ"))
end)
end

dli.askedAt = os.clock()
end

function yvcz.worldBoss.hasWork()
local iqn = yvcz.worldBoss
local jaak = iqn.state

if not iqn.enabled or type(jaak) ~= _d("DFdVBhM") then
return false
end

if iqn.stopAtFull and type(iqn.meterFull) == _d("HkNZCQIZVxY") and iqn.meterFull() then
return false
end

local vmi = iqn.isOpen()

if vmi == nil then
vmi = jaak.open == true
end

return vmi and jaak.inFight ~= true
end

yvcz.worldBoss.bossUp = function()
local xuq = yvcz.worldBoss

if not xuq.enabled then
return false
end

local ldv = xuq.isOpen()

if ldv ~= nil then
return ldv == true
end

local nhin = xuq.state

return type(nhin) == _d("DFdVBhM") and nhin.open == true
end

function yvcz.worldBoss.meter()
local yczh = yvcz.worldBoss
local zrhg = os.clock()

if zrhg - (yczh.meterAt or 0) < 1 then
return yczh.meterCurrent, yczh.meterMax
end

yczh.meterAt = zrhg
yczh.meterCurrent = nil
yczh.meterMax = nil

local ynjh = ayu:FindFirstChild(_d("L1lFBhIyVwtFZB4XBE0L"))
local kav = ynjh and tonumber(ynjh:GetAttribute(_d("NVNDDwQ")))
local ugtc = ynjh and tonumber(ynjh:GetAttribute(_d("NVNDDwQ9WQA")))

if kav and ugtc and ugtc > 0 then
yczh.meterCurrent = kav
yczh.meterMax = ugtc

return yczh.meterCurrent, yczh.meterMax
end

local function lr(oxsk)
if type(oxsk) ~= _d("C0JFAxgX") then
return nil
end

local wqw, pxk = oxsk:match(_d("UG0SDlNeZVMfEhlcWGMze3UBGxJlRx8"))
local uvlz = tonumber(wqw)

if not uvlz then
return nil
end

local suod = ({ K = 1000, M = 1000000, B = 1000000000 })[string.upper(pxk or _d(""))] or 1

return uvlz * suod
end

local skl = ff:FindFirstChild(_d("L1lFBhIyVwtFdQsYHl0KcUID"))
local il = skl and skl:FindFirstChild(_d("OldZBBMC"))
local ihsa = il and il:FindFirstChild(_d("NVNDDwQyWQo"))
local sns = ihsa

if ihsa and not ihsa:IsA(_d("LFNPHjoRWh1a")) then
sns = ihsa:FindFirstChild(_d("LFNPHg"))
end

local bpt = sns and sns:IsA(_d("LFNPHjoRWh1a")) and sns.Text or nil

if type(bpt) == _d("C0JFAxgX") then
local we, ygw = bpt:match(_d("UG1pRStbEVceGUFf"))

yczh.meterCurrent = lr(we)
yczh.meterMax = lr(ygw)
end

return yczh.meterCurrent, yczh.meterMax
end

function yvcz.worldBoss.meterFull()
local ergb, ljpf = yvcz.worldBoss.meter()

return ergb ~= nil and ljpf ~= nil and ljpf > 0 and ergb >= ljpf
end

yvcz.worldBoss.holdsFishing = function()
local wgpz = yvcz.worldBoss

if not wgpz.enabled or not wgpz.bossUp() then
return false
end

if wgpz.stopAtFull and wgpz.meterFull() then
return false
end

return fq.prioBlocks(_d("D1dDDwQ"))
end

yvcz.worldBoss.holdsDigging = function()
local rxg = yvcz.worldBoss

if not rxg.enabled or not rxg.bossUp() then
return false
end

if rxg.stopAtFull and rxg.meterFull() then
return false
end

return fq.digBlocked()
end

yvcz.worldBoss.standDown = function()
local vhb = yvcz.worldBoss

if vhb.stopAtFull and type(vhb.meterFull) == _d("HkNZCQIZVxY") and vhb.meterFull() then
return true
end

return fq.prioBlocks(_d("GllEGQ"))
end

yvcz.worldBoss.usesGameChain = function()
return true
end

function yvcz.worldBoss.travel()
local pmh = yvcz.worldBoss
local erec = omhv.Character
local buk = erec and erec:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not buk or os.clock() < pmh.travelUntil then
return
end

pmh.travelUntil = os.clock() + 6

local ce = workspace:FindFirstChild(_d("L1lFBhIyVwtFZwUEBFkU"))
local hcct = ce and ce:FindFirstChild(_d("KFlFHhcc"))

if not hcct then
return
end

if (buk.Position - hcct.Position).Magnitude > 150 then
local yyq = bzzv.remote(_d("LFNbDwYfSgxiWD0ZAlQc"))

if yyq then
pcall(function()
yyq:FireServer(_d("FFlVCA8"))
end)
end

return
end

if (buk.Position - hcct.Position).Magnitude > 6 then
pmh.walkLeg(hcct.Position + Vector3.new(0, 3, 0), 4)

if (buk.Position - hcct.Position).Magnitude > 9 then
return
end
end

local gskq = hcct:FindFirstChildOfClass(_d("KERYEh8dUQxPZxgZHUgM"))

if not gskq then
return
end

pcall(function()
if type(fireproximityprompt) == _d("HkNZCQIZVxY") then
fireproximityprompt(gskq)
else
gskq:InputHoldBegin()
task.wait(0.25)
gskq:InputHoldEnd()
end
end)
end

function yvcz.worldBoss.reach()
local ittw = yvcz.worldBoss

local wgf = workspace:FindFirstChild(_d("L1lFBhIyVwtFdhgTHlk")) or workspace:FindFirstChild(_d("L1lFBhIyVwtFZBoXB1Y"), true)
local okk = omhv.Character
local oft = okk and okk:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not (wgf and oft) then
ittw.travel()
return false
end

local jfnb = wgf:FindFirstChild(_d("O1NbBjsRQA")) or wgf
local boha, vdvw = pcall(function()
return jfnb:GetPivot()
end)

if not boha then
return false
end

local wuoa = vdvw.Position + vdvw.LookVector * 6 + Vector3.new(0, 3, 0)
local rnx = Vector3.new(vdvw.Position.X, wuoa.Y, vdvw.Position.Z)

oft.CFrame = CFrame.lookAt(wuoa, rnx)

return true
end

yvcz.worldBoss.cityBounds = { 19100, 20900, -850, 850 }

function yvcz.worldBoss.inArena()
local llx = omhv.Character and omhv.Character:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))
local pw = yvcz.worldBoss.cityBounds

if not llx then
return false
end

local psoe = llx.Position

return psoe.X >= pw[1] and psoe.X <= pw[2]
and psoe.Z >= pw[3] and psoe.Z <= pw[4]
end

function yvcz.worldBoss.enterCity(uvx)
local rbcx = yvcz.worldBoss

local lafw = os.clock() + (uvx or 30)

if rbcx.inArena() then
return true
end

while os.clock() < lafw do
if not rbcx.enabled then
return false
end

rbcx.travel()

if rbcx.inArena() then
return true
end

task.wait(0.5)
end

return rbcx.inArena()
end

yvcz.worldBoss.walking = false
yvcz.worldBoss.walkStartedAt = 0

function yvcz.worldBoss.walkLeg(dlsl, wzp)
local jxlu = yvcz.worldBoss
local rtrl = omhv.Character
local dt = rtrl and rtrl:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))
local ko = rtrl and rtrl:FindFirstChildOfClass(_d("MENaCxgfURw"))

if not (dt and ko) then
return false
end

if jxlu.walking and os.clock() - (jxlu.walkStartedAt or 0) < 45 then
return false
end

wzp = wzp or 6

jxlu.walking = true
jxlu.walkStartedAt = os.clock()

local hlpu, jzr = pcall(function()
local lhm = os.clock() + 40
local dg = 0
local bhj = dt.Position
local pge = os.clock()

while jxlu.enabled and os.clock() < lhm do
local wmk = Vector3.new(dlsl.X - dt.Position.X, 0, dlsl.Z - dt.Position.Z)

if wmk.Magnitude <= wzp then
return true
end

if os.clock() - dg >= 0.25 then
ko:MoveTo(Vector3.new(dlsl.X, dt.Position.Y, dlsl.Z))
dg = os.clock()
end

if os.clock() - pge >= 1.2 then
if (dt.Position - bhj).Magnitude < 2 then
ko.Jump = true
end

bhj = dt.Position
pge = os.clock()
end

task.wait(0.1)
end

return Vector3.new(dlsl.X - dt.Position.X, 0, dlsl.Z - dt.Position.Z).Magnitude <= wzp
end)

pcall(function()
ko:MoveTo(dt.Position)
end)

jxlu.walking = false

return hlpu and jzr == true
end

function yvcz.worldBoss.walkIn(vi)
local vwgl = yvcz.worldBoss
local kxi = workspace:FindFirstChild(_d("L1lFBhIyVwtFdhgTHlk"))
local mdka = kxi and (kxi:FindFirstChild(_d("O1NbBjsRQA")) or kxi) or nil
local rmi = omhv.Character and omhv.Character:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if not (mdka and rmi) then
return false
end

local cccy, jrag = pcall(function()
return mdka:GetPivot()
end)

if not cccy then
return false
end

local mbev = jrag.Position + jrag.LookVector * 6 + Vector3.new(0, 3, 0)

if (rmi.Position - mbev).Magnitude <= (vi or 10) then
return true
end

local sehj = vwgl.walkLeg(mbev, vi or 6)

if not sehj then
sehj = (rmi.Position - jrag.Position).Magnitude <= 25
end

return sehj
end

function yvcz.worldBoss.approach()
local xxek = yvcz.worldBoss

if not xxek.walkToBoss then
return xxek.reach()
end

if not xxek.enterCity() then
return false
end

return xxek.walkIn(10)
end

function yvcz.worldBoss.fight()
local rhhm = yvcz.worldBoss
local wfr = rhhm.remote(_d("L1lFBhIyVwtFdgkCGVcW"))

local function kfk(vssl)
rhhm.nextFightAt = os.clock() + (vssl or 20)

return false
end

if not wfr then
return kfk(60)
end

if rhhm.stopAtFull and rhhm.meterFull() then
return kfk(20)
end

if wf.enabled
and (wf.tpToBay or wf.deepZone)
and wf.phase ~= _d("EVJbDw") then
return false
end

rhhm.takingUntil = os.clock() + 45

local vsb = workspace:FindFirstChild(_d("L1lFBhIyVwtFdhgTHlk"))
local iow = vsb and (vsb:FindFirstChild(_d("O1NbBjsRQA")) or vsb) or nil
local mfx = omhv.Character and omhv.Character:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

local function cmf()
if not (iow and mfx) then
return nil
end

local qvgf, zi = pcall(function()
return iow:GetPivot()
end)

if not qvgf then
return nil
end

return (mfx.Position - zi.Position).Magnitude
end

local ldq = rhhm.usesGameChain() and (cmf() or math.huge) <= 60

if not ldq and not rhhm.approach() then
rhhm.takingUntil = os.clock() + 3

return kfk(rhhm.inArena() and 3 or 20)
end

if iow and mfx then
local zx, hi = pcall(function()
return iow:GetPivot()
end)

if not zx or (mfx.Position - hi.Position).Magnitude > 60 then
rhhm.takingUntil = os.clock() + 2

return kfk(rhhm.inArena() and 2 or 10)
end
end

npj.bossTeams.applyTeam(rhhm.team)

task.wait(ldq and 0 or (rhhm.walkToBoss and 0.3 or 1.4))

pcall(function()
wfr:FireServer(_d("Hl9QAgI"))
end)

rhhm.fightAt = os.clock()

rhhm.holdUntil = os.clock() + (rhhm.usesGameChain() and 0.7 or 4)

rhhm.takingUntil = os.clock() + 0.6

if wf.enabled and (wf.tpToBay or wf.deepZone) then
wf.deepPhase = _d("EVJbDw")
wf.deepStageAt = 0
wf.nextCastAt = 0
end

rhhm.killsAtFire = type(rhhm.state) == _d("DFdVBhM") and tonumber(rhhm.state.kills) or nil

if not rhhm.usesGameChain() and wf.enabled
and (wf.tpToBay or wf.deepZone) then
rhhm.nextFightAt = os.clock() + 1
end

return true
end

function yvcz.worldBoss.buy(fbr)
local xnb = yvcz.worldBoss
local kfqt = xnb.remote(_d("L1lFBhIyVwtFdgkCGVcW"))

fbr = fbr or 1

if not kfqt then
return 0
end

local lkl = 0

for fuh = 1, fbr do
local evav = xnb.state

if type(evav) ~= _d("DFdVBhM") or type(evav.shop) ~= _d("DFdVBhM") then
break
end

if os.clock() < xnb.buyAt then
break
end

local zh = tonumber(evav.medals) or 0
local irep = nil

for ber, ctm in ipairs(evav.shop) do
local igqr = tonumber(ctm.price) or 0
local woup = ctm.kind ~= _d("EUJSBw") or (tonumber(ctm.left) or 0) > 0

if xnb.selected[ctm.id] == true and woup and ctm.owned ~= true and igqr <= zh then
irep = ctm
break
end
end

if not irep then
break
end

pcall(function()
kfqt:FireServer(_d("GkNO"), irep.id, 1)
end)

lkl = lkl + 1
xnb.bought = xnb.bought + 1
xnb.buyAt = os.clock() + 1.2

xnb.syncedAt = 0
xnb.requestSync()
task.wait(1.1)
end

return lkl
end

yvcz.worldBoss.questGroups = { _d("CFNFGRkeWRQ"), _d("H1pYCBcc"), _d("Hl9bBg"), _d("ClNEHgQZWwxfWAQ") }

function yvcz.worldBoss.questRows(keb)
local whoo = yvcz.worldBoss
local lp = type(keb) == _d("DFdVBhM") and keb.quests or nil
local ynei = {}

if type(lp) ~= _d("DFdVBhM") then
return ynei
end

for ytp, dnlm in ipairs(whoo.questGroups) do
local azmn = lp[dnlm]

if type(azmn) == _d("DFdVBhM") then
for mun, ayz in ipairs(azmn) do
if type(ayz) == _d("DFdVBhM") then
table.insert(ynei, ayz)
end
end
end
end

return ynei
end

function yvcz.worldBoss.claim()
local yes = yvcz.worldBoss
local elix = yes.remote(_d("L1lFBhIyVwtFdgkCGVcW"))
local moiw = yes.state

if not elix or type(moiw) ~= _d("DFdVBhM") or type(moiw.quests) ~= _d("DFdVBhM") then
return 0
end

if os.clock() < yes.claimAt then
return 0
end

local cggo = yes.questRows(moiw)

if #cggo == 0 then
return 0
end

local ppu = {}

for uka, udvo in ipairs(cggo) do
if udvo.id ~= nil then
ppu[tostring(udvo.id)] = true
end
end

for wvym, bufy in pairs(yes.claimFired) do
if not ppu[wvym] or os.clock() - bufy > 120 then
yes.claimFired[wvym] = nil
end
end

local izbb = nil

for pbkw, erk in ipairs(cggo) do
if erk.complete == true and erk.claimed ~= true and erk.id ~= nil then
local xndp = tostring(erk.id)
local lifl = yes.claimFired[xndp]

if not (lifl and os.clock() - lifl < 6) then
izbb = erk
break
end
end
end

if not izbb then
return 0
end

yes.claimFired[tostring(izbb.id)] = os.clock()
yes.claimedTotal = yes.claimedTotal + 1

pcall(function()
elix:FireServer(_d("G1pWAxs"), izbb.id)
end)

yes.claimAt = os.clock() + 2
yes.syncedAt = 0
yes.requestSync()

return 1
end

yvcz.worldBoss.syncRemote = wek(_d("L1lFBhIyVwtFZBMYEw"))

if yvcz.worldBoss.syncRemote then
im(yvcz.worldBoss.syncRemote.OnClientEvent, function(vz)
local zhhp = yvcz.worldBoss

if type(vz) ~= _d("DFdVBhM") then
return
end

zhhp.state = vz
zhhp.syncedAt = os.clock()

if vz.inFight == true then
zhhp.wasFighting = true
elseif zhhp.wasFighting then
zhhp.wasFighting = false

if wf.enabled then
pcall(wf.recover)
end
end
end)
end

task.spawn(function()
yvcz.worldBoss.requestSync()
end)

task.spawn(function()
while gsk() do
local zvvv = yvcz.worldBoss
local nhu = zvvv.state

if zvvv.autoClaim then
if os.clock() - zvvv.syncedAt > 4 and os.clock() - zvvv.askedAt > 1 then
zvvv.requestSync()
end

zvvv.claim()
end

if zvvv.enabled then

if os.clock() - zvvv.syncedAt > (zvvv.bossUp() and 1.5 or 4) and os.clock() - zvvv.askedAt > 1 then
zvvv.requestSync()
end

if zvvv.autoBuy and next(zvvv.selected) then
zvvv.buy(1)
end

local flkn = type(nhu) == _d("DFdVBhM") and nhu.repeatOn == true

if zvvv.usesGameChain() then

local dfui = type(nhu) == _d("DFdVBhM") and tonumber(nhu.kills) or nil

if dfui and dfui ~= zvvv.seenKills then
zvvv.seenKills = dfui
zvvv.progressAt = os.clock()

zvvv.chainWaitAt = nil
end

if zvvv.standDown() then

if flkn and os.clock() - (zvvv.repeatAskedAt or 0) > 6 then
zvvv.repeatSeeded = false
zvvv.setRepeat(false)
end
elseif zvvv.bossUp() and not flkn and os.clock() - (zvvv.repeatAskedAt or 0) > 20 then
if zvvv.approach() then
zvvv.repeatSeeded = true
zvvv.progressAt = os.clock()

zvvv.setRepeat(true)
end
end

if zvvv.hasWork() and os.clock() >= zvvv.holdUntil
and os.clock() >= (zvvv.nextFightAt or 0)
and os.clock() - (zvvv.kickAt or 0) > 0.5
and not (zvvv.stopAtFull and zvvv.meterFull())
and not fq.prioBlocks(_d("GllEGQ")) then
zvvv.chainWaitAt = nil
zvvv.kickAt = os.clock()
zvvv.fight()
elseif not zvvv.hasWork() then
zvvv.chainWaitAt = nil
end

if not zvvv.bossUp() then
zvvv.chainWaitAt = nil

if flkn and os.clock() - (zvvv.repeatAskedAt or 0) > 6 then
zvvv.repeatSeeded = false
zvvv.setRepeat(false)
end
end
elseif zvvv.isOpen() and flkn and os.clock() - (zvvv.repeatAskedAt or 0) > 6 then
zvvv.setRepeat(false)
end

local gwz = type(nhu) == _d("DFdVBhM") and tonumber(nhu.kills) or nil

if zvvv.killsAtFire ~= nil and gwz == zvvv.killsAtFire
and os.clock() - (zvvv.fightAt or 0) > (zvvv.inArena() and 2.5 or 9)
and os.clock() < (zvvv.nextFightAt or 0)
and os.clock() >= zvvv.holdUntil then
zvvv.killsAtFire = nil
zvvv.nextFightAt = os.clock()
end

if not zvvv.usesGameChain() and zvvv.hasWork() and os.clock() >= zvvv.holdUntil
and os.clock() >= (zvvv.nextFightAt or 0)
and not (zvvv.stopAtFull and zvvv.meterFull()) then

local lwfo = goli()
local dsu = fq.roleSlot(_d("FkZU")) or 1
local lxi = fq.enabled and fq.busy(dsu)

if not lwfo and not lxi then
zvvv.fight()
end
end
end

local fpo = zvvv.bodyText()

if zvvv.bodyParagraph and fpo ~= zvvv.bodyShown then
zvvv.bodyShown = fpo

pcall(function()
zvvv.bodyParagraph:UpdateBody(fpo)
end)
end

local fit = zvvv.shopText()

if zvvv.shopParagraph and fit ~= zvvv.shopShown then
zvvv.shopShown = fit

pcall(function()
zvvv.shopParagraph:UpdateBody(fit)
end)
end

task.wait(0.5)
end
end)

function fq.roomsHaveWork()
if not dyx.enabled then
return false
end

local oagj = dyx.progress

if oagj == nil then
return true
end

for mphu, vud in ipairs(jka.Milestones) do
if jka.isMilestoneUnlocked(vud, oagj) and not jka.isMilestoneCleared(vud, oagj) then
return true
end
end

return false
end

function fq.raidHasWork()
if not yvcz.enabled then
return false
end

local qmz = ayu:FindFirstChild(_d("KldeDiUEWQxDRA"))

if not qmz then
return false
end

if not (qmz:GetAttribute(_d("MUV4GhMe")) == true or qmz:GetAttribute(_d("PllFCRMU")) == true) then
return false
end

for cscb, soxl in ipairs({ 1, 2 }) do
local law = (soxl ~= 1 and not fq.splitNpc()) and 1 or nil
local tsu = yvcz.picks[law or soxl] and yvcz.bossFor(soxl, law)

if tsu and yvcz.cleared[tsu] ~= cz(tsu) then
return true
end
end

return false
end

function fq.prioRank(kmg)
for qu, dwfu in ipairs(fq.prioGroups) do
if dwfu.id == kmg then
return dwfu.rank
end
end

return 99
end

function fq.prioWants(uwak)
if uwak == _d("CldeDgU") then
return fq.raidHasWork()
elseif uwak == _d("GllEGQ") then

return yvcz.worldBoss.hasWork()
elseif uwak == _d("FkZU") then
return goli() or fq.roomsHaveWork()
elseif uwak == _d("EFdFDhUfSh0") then
return rs.active()
elseif uwak == _d("D1dDDwQ") then
return wf.enabled or hrcx.autoOn == true
end

return false
end

function fq.prioBlocks(liz)
local zxeg = fq.prioRank(liz)

for snmn, hqhr in ipairs(fq.prioGroups) do
if hqhr.id ~= liz and hqhr.rank < zxeg and fq.prioWants(hqhr.id) then
return true
end
end

return false
end

function fq.digBlocked()
local erp = fq.prioRank(_d("D1dDDwQ"))

for chj, hwn in ipairs(fq.prioGroups) do
if hwn.id ~= _d("D1dDDwQ") and hwn.id ~= _d("EFdFDhUfSh0")
and hwn.rank < erp and fq.prioWants(hwn.id) then
return true
end
end

return false
end

function fq.towerYields()
for xld, kwf in ipairs({ _d("CldeDgU"), _d("GllEGQ"), _d("FkZU") }) do
if fq.prioWants(kwf) then
return true
end
end

return false
end

function fq.towerOutranks()
return not fq.enabled and (rs.active() or rtjv.run.enabled)
end

local function yr(xvk)
if not xvk then
return false
end

local sps = false

for gux, pgj in ipairs(getconnections(xvk.MouseButton1Click)) do
local veei = pgj.Function

if type(veei) == _d("HkNZCQIZVxY") then
pcall(veei)
else
pcall(function()
pgj:Fire()
end)
end

sps = true
end

return sps
end

function pam()
for fgln, klb in ipairs({ _d("OldDHhoVfw1f"), _d("OldDHhoVfw1fBQ") }) do
local rd = ff:FindFirstChild(klb)

if rd then
local xlk = rd:FindFirstChild(_d("OldDHhoVaxtEUg8Y"))
local li = xlk and xlk:FindFirstChild(_d("KUNeCR03UQ5TYho0BUwMWVk"))

if yr(li) then
return true
end

local dap = rd:FindFirstChild(_d("PlpYBQQjWwpTUgQ"))
local ndd = dap and dap:FindFirstChild(_d("OllDHhkdehlE"))
local jza = ndd and ndd:FindFirstChild(_d("P19BDyMAeg1CQwUY"))

if yr(jza) then
return true
end
end
end

local kmgc = ayu:FindFirstChild(_d("KlNaBQIVSw"))
local zjv = kmgc and kmgc:FindFirstChild(_d("P19BDyMAbBdBUhg"))
local nyra = kmgc and kmgc:FindFirstChild(_d("PVhTPhkHXQpkUgcZBF0"))

if not (zjv or nyra) then
return false
end

if zjv then
pcall(function()
zjv:FireServer()
end)
end

if nyra then
pcall(function()
nyra:FireServer(1)
end)
end

gapk.manualPause = false
gapk.floor = nil
bzzv.restorePause()

return true
end

local atu = pam

function pam()

gapk.lastGiveUp = {
at = os.time(),
clock = os.clock(),
floor = gapk.floor,
parked = bzzv.parked(),
active = uknx(),
hard = bzzv.hardNow(),
nightmare = gapk.nightmare == true,
caller = debug.traceback(_d(""), 2),
}

local snf = atu()

if snf then
jjc.armedAt = os.clock()
end

return snf
end

function wuvu(ahii)

local xtiz = false

if ahii ~= false and uknx() then
local sbz = vqyw()

if sbz then
xtiz = bzzv.pauseAt(true, sbz) or xtiz

gapk.pauseArmed = true
end
end

for bfq, sybr in ipairs({ _d("OldDHhoVfw1f"), _d("OldDHhoVfw1fBQ") }) do
local hky = ff:FindFirstChild(sybr)

if hky then
local asy = hky:FindFirstChild(_d("OldDHhoVaxtEUg8Y"))
local igdv = asy and asy:FindFirstChild(_d("KUNeCR0ySh1XXCgDBEwXWA"))

if igdv then

if tostring(igdv.Text):find(_d("mqqk"), 1, true) then
xtiz = true
elseif yr(igdv) then
xtiz = true
end
end

local hrli = hky:FindFirstChild(_d("PlpYBQQjWwpTUgQ"))

if hrli and hrli.Visible then
local rad = hrli:FindFirstChild(_d("OllDHhkdehlE"))
local pnc = rad and rad:FindFirstChild(_d("LFdcDzQCXRlddR8CBFcW"))

if yr(pnc) then
xtiz = true
end
end
end
end

return xtiz
end

function rs.pauseRun()
if not uknx() then
pcall(function()
zcwe:Dialog({
Title = _d("KFdCGRNQcQtaVgQSUHAZRFMJGQJd"),
Description = _d("NlkXHhkHXQoWRR8YUFELFlsDABUYCl9QAgJQVhdBG0oFHxgMXlIYE1BRCxZZBQIYURZRFx4ZUEgZQ0QPWA"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})
end)

return
end

rs.paused = true
rs.manualPause = true
local vzn = wuvu(false)

pcall(function()
zcwe:Notify({
Title = _d("KFdCGRNQcQtaVgQSUHAZRFMJGQJd"),
Description = vzn and _d("LFlADwRQSg1YFxoXBUsdUhk") or _d("KkNZSh8DGBRfQQ9aUFoNQhcEGVBaClNWAVYSTQxCWARWFlcNWFNE"),
Lifetime = 5,
})
end)
end

function rs.giveUpRun()
if not uknx() then
pcall(function()
zcwe:Dialog({
Title = _d("P19BD1YlSFh/RAYXHlxYflYYEhNXClM"),
Description = _d("NlkXHhkHXQoWRR8YUFELFlsDABUYCl9QAgJQVhdBG0oFHxgMXlIYE1BRCxZZBQIYURZRFx4ZUF8RQFJKAwAW"),
Buttons = {
{
Name = _d("P1lDSh8E"),
},
},
})
end)

return
end

rs.gaveUp = true
rs.paused = true
local jwqp = pam()

pcall(function()
zcwe:Notify({
Title = _d("P19BD1YlSFh/RAYXHlxYflYYEhNXClM"),
Description = jwqp and _d("P1dBD1YFSFhCXw9WE00KRFIEAlBMF0FSGFYWVBdZRUQ") or _d("KkNZSh8DGBRfQQ9aUFoNQhcEGVBfEUBSSgMAGBpDQx4ZHhgeWUIEEl4"),
Lifetime = 5,
})
end)
end

task.spawn(function()
while gsk() do

pcall(bzzv.pinMode)

if gapk.pauseArmed and not xqv.enabled
and (not gapk.enabled or not gapk.paused) then
bzzv.restorePause()

if bzzv.pauseState() ~= true then
gapk.pauseArmed = false
end
end

if gapk.enabled and not gapk.manualPause and fq.towerSlot() ~= nil
and not rtjv.run.enabled then

local rjp = os.clock() - (gapk.floorAt or 0) > 12
and os.clock() - (gapk.battleAt or 0) > 12

local mew = fq.towerSlot() == 1 and not gapk.paused
and not (xqv.enabled and xqv.floor > 0)
and rjp
and bzzv.parked()

if mew then
gapk.parkedAt = gapk.parkedAt > 0 and gapk.parkedAt or os.clock()

if os.clock() - gapk.parkedAt >= 25 then
gapk.parkedAt = os.clock()
pam()
end
else
gapk.parkedAt = 0
end

local xo = bzzv.hardPickNow()

local jodu = not gapk.paused and not gapk.pending
and not (xqv.enabled and xqv.floor > 0)
and uknx()
and xo ~= nil
and xo ~= (gapk.nightmare == true)

if jodu then
gapk.modeWrongAt = gapk.modeWrongAt or os.clock()
else
gapk.modeWrongAt = nil
end

if gapk.modeWrongAt and os.clock() - gapk.modeWrongAt > 20
and os.clock() - (gapk.modeFixAt or 0) > 20 then
gapk.modeFixAt = os.clock()
gapk.modeWrongAt = nil
bzzv.endIfWrongMode(gapk.nightmare == true)
end

if (gapk.floorAt or 0) > 0 and not gapk.paused
and os.clock() - gapk.floorAt > 60
and os.clock() - (gapk.battleAt or 0) > 60
and not uknx()
and not fq.busy(fq.towerSlot() or 1) then
gapk.floorAt = 0
gapk.battleAt = 0
gapk.floor = nil
end

if not fq.enabled and (fq.towerOutranks() or fq.towerYields()) then
if not gapk.paused then
gapk.paused = true
wuvu()
end

elseif fq.slotFree(fq.towerSlot() or 1)
and (gapk.floorAt or 0) == 0
and not npj.bossTeams.swapHold then
local ihl = vqyw()
local lslf = xqv.enabled and xqv.floor or 0
local kodk = lslf > 0 and ihl ~= nil and ihl >= lslf

if kodk then
if not gapk.paused then
gapk.paused = true
wuvu()
end
else

if gapk.paused then
gapk.paused = false
bzzv.restorePause()
end

if not (gapk.pending and os.time() < gapk.pendingUntil) then

npj.bossTeams.applyTower(_d("DFlADwQ"), 1)

bzzv.hardPick(gapk.nightmare == true)

local yjo = workspace:FindFirstChild(_d("O1dEHhoVaBdEQwsa"), true)

if yjo then
local hbl = omhv.Character
local bgfk = hbl and hbl:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))

if bgfk and (yjo.Position - bgfk.Position).Magnitude > 60 then
pcall(function()
fwr.standAt(yjo.Position)
end)

task.wait(0.8)
end
end

xl.EndTowerRemote:FireServer(1)
task.wait(0.25)

xl.StartBattle:FireServer(_d("DFlADwQ"), { hard = gapk.nightmare == true })

vyac.triggered = false
vyac.weatherTriggered = false

gapk.floorAt = os.clock()

gapk.floor = nil
gapk.pending = true
gapk.pendingUntil = os.time() + 8
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while gsk() do
if rs.active() and fq.hardcoreSlot() ~= nil then
local qogn = fq.hardcoreSlot() or 1
local ecv = rs.floorNow()

local caiy = xqv.enabled and xqv.floor or 0
local xgz = vyac.enabled and vyac.floor or 0

if caiy <= 0 and not rs.stoodDown and not rs.manualPause
and not npj.bossTeams.swapHold then
rs.paused = false
end

if rs.gaveUp then

elseif xgz > 0 and ecv and ecv >= xgz then
rs.gaveUp = true
rs.paused = true
local qvyt = pam()

pcall(function()
zcwe:Notify({
Title = _d("OUNDBVY3UQ5TFz8G"),
Description = qvyt and (_d("P1dBD1YFSFhXQ0oeEUocVVgYE1BeFFlYGFY") .. ecv .. _d("Vg")) or (_d("MFdFDhUfSh0WUQYZH0pY") .. ecv .. _d("WERSCxUYXRwaFwgDBBgWWRcNHwZdWENHShQFTAxZWUoQH00WUhk")),
Lifetime = 5,
})
end)
elseif ecv and caiy > 0 and ecv >= caiy then
if not rs.paused then
rs.paused = true
wuvu(false)
end
elseif fq.prioBlocks(_d("EFdFDhUfSh0")) then

if not rs.stoodDown then
rs.stoodDown = true
rs.paused = true
wuvu(false)
end
elseif rs.stoodDown then

rs.stoodDown = false
rs.paused = false
elseif not rs.paused and not npj.bossTeams.swapHold then
if fq.slotFree(qogn) and not (rs.pending and os.time() < rs.pendingUntil) then
rs.start(qogn)
task.wait(2)
end
end
end

task.wait(1)
end
end)

function fq.slotActivity(vptk)
if not fq.busy(vptk) then
return nil
end

local sakp = fq.role[vptk]
local foe = ff:FindFirstChild(vptk == 2 and _d("OldDHhoVfw1fBQ") or _d("OldDHhoVfw1f"))
local box = foe and foe:FindFirstChild(_d("KkNZLBofVwp6VggTHA"))
local jo = box and box.Text or _d("")

if dyx.enabled and sakp == _d("FkZU") then
local dams = jo:match(_d("JmRYBRtVS1MeEg5dWQ"))

if dams then
return _d("MVhRAxgZTB0WRQUZHUtYGxcYGR9VWA") .. dams
end
end

if fq.isTowerRole(sakp)
and (gapk.enabled or rtjv.run.enabled or rs.active()) then
local nmkh = jo:match(_d("JnBbBRkCHQsdH08SWxE"))

if nmkh then
return fq.roleName(vptk) .. _d("WBsXDBofVwoW") .. nmkh
end
end

return nil
end

function fq.statusText()
if not fq.enabled then
return _d("OUNDBVYjVBdCFwUQFhhVFlIcEwJBDF5eBBFQSg1YREoZHhgLWlgeVkEW")
end

local pub = {}

for mgie = 1, 2 do
local evim = _d("K1pYHlY") .. tostring(mgie) .. _d("WBsX")
local wj = fq.slotActivity(mgie)

if mgie == 2 and fq.hasSlot2 == false then
evim = evim .. fq.roleLabel(mgie) .. _d("WBsXBhkTUx1SF0IYFV0cRRceHhUYPENWBlYyWQxCWw9WI1QXQh4")
elseif wj then
evim = evim .. wj
elseif fq.busy(mgie) then
evim = evim .. fq.roleLabel(mgie) .. _d("WBsXDB8XUAxfWQ0")
else
evim = evim .. fq.roleLabel(mgie) .. _d("WBsXAxIcXQ")
end

table.insert(pub, evim)
end

return table.concat(pub, _d("cjw"))
end

task.spawn(function()
while gsk() do
fq.hasSlot2 = fq.detectSlot2()
task.wait(5)
end
end)

task.spawn(function()
while gsk() do

if not rs.island and xqv.enabled and xqv.floor > 0 then
local jmy = vqyw()

if jmy and jmy >= xqv.floor then
if not xqv.triggered then
xqv.triggered = true
wuvu()

pcall(function()
xl.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = jmy,
})
end)
end
else
xqv.triggered = false
end
end

if not rs.island and vyac.enabled and vyac.floor > 0 then
local tgg = vqyw()

if tgg and tgg >= vyac.floor then

if not vyac.triggered and uknx() then
vyac.triggered = true
local bgrb = pam()

pcall(function()
zcwe:Notify({
Title = _d("OUNDBVY3UQ5TFz8G"),
Description = bgrb and (_d("P1dBD1YFSFhXQ0oQHFcXRBc") .. tgg .. _d("Vg")) or (_d("PlpYBQRQ") .. tgg .. _d("WERSCxUYXRwaFwgDBBgWWRcNHwZdWENHShQFTAxZWUoQH00WUhk")),
Lifetime = 5,
})
end)
end
else
vyac.triggered = false
end
end

if not rs.island and vyac.weatherEnabled then
local nxa = vqyw()
local mfqj = vyac.weatherMinFloor <= 0
or (nxa ~= nil and nxa >= vyac.weatherMinFloor)
local ctbu = mfqj and vyac.weatherWanted() or nil

if ctbu and vyac.weatherLate then
local bkmf = vyac.weatherLeft()

if bkmf == nil or bkmf > 20 then
ctbu = nil
end
end

if ctbu then
if not vyac.weatherTriggered
and vyac.weatherGivenFor ~= vyac.weatherNow
and uknx() then
vyac.weatherTriggered = true
vyac.weatherGivenFor = vyac.weatherNow

local xxj = pam()

pcall(function()
zcwe:Notify({
Title = _d("L1NWHh4VSlhxXhwTUG0I"),
Description = xxj
and (_d("P1dBD1YFSFhXQ0oQHFcXRBc") .. tostring(nxa) .. _d("WF9ZSg") .. ctbu .. _d("Vg"))
or (ctbu .. _d("WF9ESgMAFFhUQh5WHldYUV4cE1BNCBZVHwIEVxYWVgQFB10KU1NE")),
Lifetime = 5,
})
end)
end
else
vyac.weatherTriggered = false
end
end

task.wait(1)
end
end)

task.spawn(function()
if xl.WeatherChanged then
pcall(function()
im(xl.WeatherChanged.OnClientEvent, function(omhx)

vyac.weatherNow = nil
vyac.weatherAt = 0
vyac.weatherGivenFor = nil
jjc.weatherSpent = nil

if type(omhx) == _d("C0JFAxgX") then
vyac.weatherNow = omhx
end
end)
end)
end

while gsk() do
if os.clock() - vyac.weatherAt > 5 then
vyac.weatherAt = os.clock()

if xl.RequestWeatherState then
local govv, tmz = pcall(function()
return xl.RequestWeatherState:InvokeServer()
end)

if govv and type(tmz) == _d("C0JFAxgX") then
if vyac.weatherNow ~= nil and vyac.weatherNow ~= tmz then
jjc.weatherSpent = nil
vyac.weatherGivenFor = nil
end

vyac.weatherNow = tmz
end
end
end

task.wait(1)
end
end)

task.spawn(function()
local jz = nil
local cu = nil
local ndfo = 0

while gsk() do

if (jjc.onWeather or jjc.afterGiveUp) and os.clock() - ndfo > 60 then
ndfo = os.clock()

pcall(function()
xl.RequestItemSync:FireServer()
end)
end

if jjc.onWeather and next(jjc.weatherPotions) ~= nil then
local rtwv = vyac.weatherWanted(jjc.weathers)

if rtwv and vyac.weatherNow ~= jjc.weatherSpent then

jjc.weatherSpent = vyac.weatherNow
jjc.pop(jjc.weatherPotions, jjc.weatherAmount, _d("L1NWHh4VSlg") .. rtwv)
end
end

if jjc.afterGiveUp and next(jjc.giveUpPotions) ~= nil and jjc.armedAt > 0 then

local vcv = os.clock() - jjc.armedAt

if not uknx() or vcv >= 3 then
if vcv <= 30 then
jjc.armedAt = 0
jjc.pop(jjc.giveUpPotions, jjc.giveUpAmount, _d("OVBDDwRQXxFAUkoDAA"))
else

jjc.armedAt = 0
end
end
end

local bcyx = jjc.status()

if bcyx ~= jz then
jz = bcyx

pcall(function()
jjc.weatherParagraph:UpdateBody(bcyx)
end)
end

local lkk = jjc.giveUpStatus()

if lkk ~= cu then
cu = lkk

pcall(function()
jjc.giveUpParagraph:UpdateBody(lkk)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while gsk() do
local huco = wf.stick

if huco.enabled and os.clock() >= huco.at then
huco.at = os.clock() + 3

local zhwo = nil

for sft, efsx in ipairs(workspace:GetDescendants()) do
if (efsx:IsA(_d("OldEDyYRSgw")) or efsx:IsA(_d("NVlTDxo")))
and huco.names[string.lower(efsx.Name)] then
zhwo = efsx
break
end
end

local pjqg = omhv.Character
local mjv = pjqg and pjqg:FindFirstChild(_d("MENaCxgfURxkWAUCIFkKQg"))
local upn = zhwo and (zhwo:IsA(_d("OldEDyYRSgw")) and zhwo or zhwo:FindFirstChildWhichIsA(_d("OldEDyYRSgw"), true))

if upn and mjv then
local ona = upn:FindFirstChildWhichIsA(_d("KERYEh8dUQxPZxgZHUgM"))
or (zhwo ~= upn and zhwo:FindFirstChildWhichIsA(_d("KERYEh8dUQxPZxgZHUgM"), true))

if (mjv.Position - upn.Position).Magnitude > 4 then
pcall(function()
pjqg:PivotTo(CFrame.new(upn.Position + Vector3.new(0, 3, 0)))
end)

task.wait(0.4)
end

if ona then
pcall(function()
ona:InputHoldBegin()
task.wait(0.2)
ona:InputHoldEnd()
end)
end

huco.hits = huco.hits + 1
huco.last = _d("CF9UARMUGA1GFwsCUA") .. math.floor(upn.Position.X) .. _d("VBY") .. math.floor(upn.Position.Z)

pcall(function()
zcwe:Notify({
Title = _d("NENUAVYjTBFVXA"),
Description = huco.last,
Lifetime = 4,
})
end)
elseif zhwo then
huco.last = _d("HllCBBJQ") .. zhwo:GetFullName() .. _d("VBZZBQIYURZRFx4ZUEsMV1kOVh9W")
else
huco.last = _d("FlkXGQIZWxMWXgRWBFAdFkAFBBxc")
end
end

task.wait(1)
end
end)

getgenv().ACBXStick = wf.stick

task.spawn(function()

local wue = game:GetService(_d("Ll9FHgMRVDFYRx8CPVkWV1APBA"))

local function shcg()
local zso = omhv.Character
local wlpd = zso and zso:FindFirstChildOfClass(_d("MENaCxgfURw"))

if wlpd and wlpd.Health > 0 then
pcall(function()
wlpd.Jump = true
end)
end

pcall(function()
wue:SendKeyEvent(true, Enum.KeyCode.Space, false, omhv)
end)

task.wait(0.05)

pcall(function()
wue:SendKeyEvent(false, Enum.KeyCode.Space, false, omhv)
end)

vfcr.jumps = vfcr.jumps + 1
end

while gsk() do
if vfcr.enabled and os.clock() >= vfcr.nextAt then
vfcr.nextAt = os.clock() + 300
shcg()
end

task.wait(1)
end
end)

zcwe:SetState(true)

task.defer(function()
local wzd
for ejm, fw in ipairs(game:GetService(_d("O1lFDzEFUQ")):GetDescendants()) do
if fw:IsA(_d("LFNPHjoRWh1a")) and fw.Text == mk then
wzd = fw
break
end
end

if not wzd then
return
end

local dcf = wzd
while dcf and not (dcf:IsA(_d("PkRWBxM")) and dcf.AbsoluteSize.X >= 600 and dcf.AbsoluteSize.Y >= 400) do
dcf = dcf.Parent
end

if dcf then
dcf.AnchorPoint = Vector2.new(0, 0)

local jwp = dcf.AbsoluteSize
dcf.Position = UDim2.new(0.5, -jwp.X / 2, 0.5, -jwp.Y / 2 - 20)
end
end)

task.defer(function()
task.wait(0.1)

for hizc, vzt in ipairs(game:GetService(_d("O1lFDzEFUQ")):GetDescendants()) do
if vzt:IsA(_d("K1VFBRocURZRcRgXHV0")) and vzt.Name == _d("PVpSBxMeTAtlVBgZHFQRWFA") then
vzt.CanvasPosition = Vector2.new(0, 0)
end
end
end)

getgenv().ACBXTowerRunActive = uknx
getgenv().ACBXWindow = zcwe

getgenv().ACBXPriority = {
groups = fq.prioGroups,
rows = zhpb.prioRows,
rank = fq.prioRank,
wants = fq.prioWants,
blocks = fq.prioBlocks,
set = function(jagv, ascr)
zhpb.setPriority(jagv, ascr)
end,
}

mum.repo = _d("O1QFJVkRWxpO")
mum.url = _d("EEJDGgVKF1dEVh1YF1EMXkIIAwNdClVYBAIVVgwYVAUbX3saBHhFFxNaABlaCx8eFxlVVRJYHE0Z")
mum.versionUrl = _d("EEJDGgVKF1dEVh1YF1EMXkIIAwNdClVYBAIVVgwYVAUbX3saBHhFFxNaABlaCx8eFw5TRRkfH1ZWQk8e")

mum.announced = false

function mum.fetch(esqb)

local ieia, eoyh = pcall(function()
return game:HttpGet(esqb .. _d("R0AK") .. os.time() .. _d("XkQK") .. math.random(1, 100000))
end)

if not ieia or type(eoyh) ~= _d("C0JFAxgX") or #eoyh == 0 then
return nil
end

if eoyh:find(_d("JgIHXg")) or eoyh:find(_d("JnhYHlY2Vw1YUw")) then
return nil
end

return eoyh
end

function mum.check()
if mum.buildId == _d("HFNB") then
return nil, _d("HFNBShQFURRS")
end

if mum.checking then
return nil, _d("GkNEEw")
end

mum.checking = true
local kte = mum.fetch(mum.versionUrl)
mum.checking = false

if not kte then
return nil, _d("FlkXHBMCSxFZWUoQGVQd")
end

local kqk = kte:match(_d("JhNEQF5eFVETREBS")) or _d("")
kqk = kqk:gsub(_d("XUUdYFhaHA"), _d(""))

if kqk == _d("") or not mum.newer(kqk) then
return nil, _d("G0NFGBMeTA")
end

return kqk
end

function mum.newer(kaes)
local function pgu(pzjw)
local bcb, ox = tostring(pzjw or _d("")):match(_d("DgkfTxJVXF1SEg5TFB0cHxJHXlVcXVISDlMUEQ"))

return bcb and (bcb .. ox) or nil
end

local function ccb(uzj)
local xpnp = tostring(uzj or _d(""))

if not xpnp:match(_d("JhNTQVNeB11SHU4")) then
return nil
end

local ruja = {}

for bblf in xpnp:gmatch(_d("XVIc")) do
ruja[#ruja + 1] = tonumber(bblf) or 0
end

return #ruja > 0 and ruja or nil
end

local rvdq, elw = ccb(kaes), ccb(mum.buildId)

if rvdq and elw then
for dcid = 1, math.max(#rvdq, #elw) do
local jqsq = rvdq[dcid] or 0
local hqqj = elw[dcid] or 0

if jqsq ~= hqqj then
return jqsq > hqqj
end
end

return false
end

if rvdq or elw then
return rvdq ~= nil
end

local qe, somg = pgu(kaes), pgu(mum.buildId)

if not qe or not somg then
return tostring(kaes) ~= tostring(mum.buildId)
end

return qe > somg
end

function mum.busy()
if npj.battlePending or npj.currentBattle then
return true
end

local bwak = getgenv().ACBXTowerRunActive

if type(bwak) == _d("HkNZCQIZVxY") then
local nim, ctkl = pcall(bwak)

if nim and ctkl then
return true
end
end

return false
end

function mum.apply(vvtg)
if mum.applying then
return false
end

mum.applying = true

local ncb = mum.fetch(mum.url)

if not ncb then
mum.applying = false
warn(_d("I3d0KC4tGA1GUwsCFQJYVVgfGhQYFllDShIfTxZaWAsSUA") .. tostring(vvtg) .. _d("VBZEHhcJURZRFwUYUA") .. mum.buildId)

pcall(function()
zcwe:Notify({
Title = _d("LUZTCwIVGB5XXgYTFA"),
Description = _d("O1lCBhJQVhdCFw4ZB1YUWVYOVg") .. tostring(vvtg) .. _d("VhZkHh8cVFhEQgQYGVYfFg") .. mum.buildId .. _d("Vg"),
Lifetime = 8,
})
end)

return false
end

local cle, tzu = loadstring(ncb)

if not cle then
mum.applying = false
warn(_d("I3d0KC4tGA1GUwsCFQJY") .. tostring(vvtg) .. _d("WFJYDwVQVhdCFwkZHUgRWlJKW1A") .. tostring(tzu))

pcall(function()
zcwe:Notify({
Title = _d("LUZTCwIVGApTXQ8VBF0c"),
Description = _d("OkNeBhJQ") .. tostring(vvtg) .. _d("WFBWAxoVXFhCWEoVH1UIX1sPWFBrDF9bBlYCTRZYXgQRUA") .. mum.buildId .. _d("Vg"),
Lifetime = 8,
})
end)

return false
end

pcall(function()
zcwe:Notify({
Title = _d("LUZTCwIZVh8"),
Description = _d("KlNbBRcUURZRFw") .. mum.buildId .. _d("WBsJSg") .. vvtg .. _d("Vg"),
Lifetime = 4,
})
end)

task.wait(0.4)

mum.cameFrom = mum.buildId
getgenv().ACBXUpdatedFrom = mum.buildId

pcall(function()
zcwe:Unload()
end)

getgenv().ACBXWindow = nil

task.wait(0.5)

local hxvx, rkcn = pcall(cle)

if not hxvx then
mum.applying = false
warn(_d("I3d0KC4tGA1GUwsCFQJY") .. tostring(vvtg) .. _d("WEJfGBMHGBdYFwYZEVxYGxc") .. tostring(rkcn))
return false
end

return true
end

mum.cameFrom = getgenv().ACBXUpdatedFrom

task.defer(function()
if mum.cameFrom then
getgenv().ACBXUpdatedFrom = nil
print(_d("I3d0KC4tGBpDXgYSUA") .. mum.buildId .. _d("WB5CGhIRTB1SFwwEH1VY") .. tostring(mum.cameFrom) .. _d("UQ"))

pcall(function()
zcwe:Notify({
Title = _d("LUZTCwIVXA"),
Description = _d("KkNZBB8eX1g") .. mum.buildId .. _d("VBZRGBkdGA") .. tostring(mum.cameFrom) .. _d("Vg"),
Lifetime = 6,
})
end)

return
end

print(_d("I3d0KC4tGBpDXgYSUA") .. mum.buildId)
end)

task.defer(function()
task.wait(12)

if mum.announced or mum.buildId == _d("HFNB") or mum.enabled then
return
end

mum.announced = true

local gl = mum.check()

if not gl then
return
end

print(_d("I3d0KC4tGBpDXgYSUA") .. mum.buildId .. _d("WF9EShQVUBFYU0o") .. tostring(gl) .. _d("VBZWBBJQTQhSVh4TAxgZRFJKGRZe"))
print(_d("I3d0KC4tGBRZVg5WGUxYQV4eHkoYFFlWDgUEShFYUEIREVUdDH8eAgB/HUIfSA") .. mum.url .. _d("Wh8eQl8"))

pcall(function()
zcwe:Notify({
Title = _d("LUZTCwIVGBlAVgMaEVoUUw"),
Description = _d("KkNZBB8eX1g") .. mum.buildId .. _d("VBY") .. tostring(gl) .. _d("WF9EShkFTFYWZQ9bFUAdVUIeE1BMFxZbBRcUGBFCGQ"),
Lifetime = 10,
})
end)
end)

task.spawn(function()

task.wait(8)

while gsk() do
if not mum.enabled then

task.wait(5)
else
local hg = mum.check()
local lmf = mum.interval

if hg then
if mum.pendingVersion ~= hg or not mum.pendingSince then
mum.pendingVersion = hg
mum.pendingSince = os.clock()
end

local srwn = os.clock() - (mum.pendingSince or os.clock())

if not mum.busy() or srwn >= mum.forceAfter then
if mum.apply(hg) then

pmw = false
return
end

mum.pendingSince = os.clock()
lmf = mum.retry
else
lmf = mum.retry
end
else
mum.pendingVersion = nil
mum.pendingSince = nil
end

task.wait(lmf)
end
end
end)
getgenv().ACBXUpdater = mum

task.defer(function()
task.wait(0.9)

local crrn = zhpb.loadUi()

if type(crrn) ~= _d("DFdVBhM") then
return
end

print(_d("I3d0KC4tGBRZWAFWAl0LQlgYExQCWA") .. tostring(crrn.theme) .. _d("WFdDSg") .. tostring(crrn.scale))
end)

local function xpon()
if not gsk() then
return
end

local rkt = false
local twcg = false

pcall(function()
rkt = gapk.nightmareToggle:GetState() == true
twcg = gapk.ui:GetState() == true
end)

if not (rkt or twcg) then
return
end

gapk.nightmare = rkt
gapk.enabled = true
gapk.manualPause = false
gapk.paused = false
gapk.parkedAt = 0
gapk.modeWrongAt = nil
gapk.pending = false
gapk.pendingUntil = 0

bzzv.restorePause()
gapk.pauseArmed = false
bzzv.hardPick(rkt)

if not uknx() then
gapk.floorAt = 0
gapk.battleAt = 0
gapk.floor = nil
end

print(_d("I3d0KC4tGAxZQA8EUEodRUIHExQYGVBDDwRQSh1aWAsSShg") .. (rkt and _d("Fl9QAgIdWQpT") or _d("FllFBxcc")))
end

task.defer(function()
task.wait(1)

local pcqt = zhpb.autoLoadName()

if not pcqt then
return
end

local vrh, wywi = zhpb.load(pcqt)

task.delay(2, xpon)

zhpb.selected = pcqt
zhpb.lastText = vrh and (_d("OUNDBVYcVxlSUg5W") .. pcqt .. _d("Vg"))
or (_d("OUNDBVYcVxlSFwwXGVQdUg1K") .. tostring(wywi))
zhpb.savesAt = 0

pcall(function()
zhpb.fileDropdown:UpdateSelection(pcqt)
end)

pcall(function()
zcwe:Notify({
Title = _d("O1lZDB8X"),
Description = vrh and (_d("NFlWDhMUGA") .. pcqt .. _d("WFlZSgUEWQpCGQ"))
or (_d("O1lCBhJQVhdCFwYZEVxY") .. pcqt .. _d("QhY") .. tostring(wywi)),
Lifetime = 5,
})
end)
end)

task.defer(function()
task.wait(3)

zhpb.restorePriority()
end)

task.defer(function()
task.wait(3)

if zhpb.autoLoadName() then
return
end

xpon()
end)
