local _d = (function()
local A = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local M = {}
local cache = {}
for i = 1, #A do
M[string.sub(A, i, i)] = i - 1
end
local K = string.char(112, 103, 97, 51, 52, 103, 108)
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

local xgv = "ACB Rebirth v1.0"

local function cd(jaik)
for se, hl in ipairs(jaik:GetDescendants()) do
if hl:IsA(_d("JAIZR3gGDhUL")) and hl.Text == xgv then
local mkg = hl
while mkg and not mkg:IsA(_d("IwQTVlEJKwUO")) do
mkg = mkg.Parent
end
return mkg
end
end
end

local function qpm()
local stw = game:GetService(_d("IAsASlEVHw")).LocalPlayer

for fnp, edb in ipairs({
(gethui and gethui() or game:GetService(_d("MwgTVnMSBQ"))),
game:GetService(_d("MwgTVnMSBQ")),
stw and stw:FindFirstChild(_d("IAsASlEVKwUO")),
}) do
for gwre, bkxj in ipairs(edb:GetChildren()) do

if bkxj:IsA(_d("IwQTVlEJKwUO")) then
local orx = bkxj:FindFirstChild(_d("MgYSVg"))

if orx and orx:FindFirstChild(_d("Iw4FVlYGHg")) and orx:FindFirstChild(_d("MwgPR1EJGA")) then
return bkxj
end
end
end
end
end

if qpm() and getgenv().ACBXAllowReload ~= true then
local sfl = getgenv().ACBXWindow
local eic = false
local wx = false

if sfl and sfl.Dialog then
pcall(function()
if sfl.GetState and sfl:GetState() == false then
sfl:SetState(true)
end

sfl:Dialog({
Title = _d("MSQjE2YCDhkVFVsUDh9QBg1BUQYICUcTRloJBR4A"),
Description = _d("MUcCXEQeTBkUQVJYFQkRAxgTWAgNFAIFE10JTAQPCEAUFAkDFAhcWklMIgIRX1UECVAOFRNDDhgYRxVbXRRMHwkEDBQzBBVHE0ZaCQUeAEFQWxcVUBQVXEQUTBYOE0BAS0wDCEFcWgsVUAgPVhQCGhUVQVdGDhoVFEFHXAJMEQQCXEEJGF4"),
Buttons = {
{
Name = _d("IgIRX1UECQ"),
Callback = function()
wx = true
eic = true
end,
},
{
Name = _d("OwIEQw"),
Callback = function()
eic = true
end,
},
},
})
end)
else

wx = true
eic = true
end

local aps = os.clock() + 90

while not eic and os.clock() < aps do
task.wait(0.25)
end

if not wx then
warn(_d("KyYicWw6TBwIAFcUFQkWEhJWUEdBUBMJVhQEAwAeQUdcBhhQDhITRhICHg4PVBQUGBEeEh0UJAAZBAoTZgIcHAYCVhQTA1AUFlJERwUES0FcRkcZAwJBZloLAxEDQUBXFQUAE0FaWkcFBBRBYFETGBkJBkAUEw0SSQ"))

return
end

warn(_d("KyYicWw6TAICEV9VBAUeAEFHXAJMAhIPXV0JC1AEDkNNRxsZEwkTQA8FA0cOXVFJ"))
end

getgenv().ACBXAllowReload = nil

local bo = getgenv().ACBXConnections
if type(bo) == _d("BAYDX1E") then
for bv, kok in ipairs(bo) do
pcall(function()
kok:Disconnect()
end)
end
end

local gzk = {}
getgenv().ACBXConnections = gzk

local function xftw(fvbz, lud)
local tttd = fvbz:Connect(lud)

table.insert(gzk, tttd)

return tttd
end

local lf = getgenv().ACBXWindow
if lf then
pcall(function()
lf:Unload()
end)
end

for gam, shff in ipairs({
game:GetService(_d("MwgTVnMSBQ")),
game:GetService(_d("IAsASlEVHw")).LocalPlayer:FindFirstChild(_d("IAsASlEVKwUO")),
}) do
if shff then
local ip = cd(shff)
if ip then
ip:Destroy()
end
end
end

local of = game:GetService(_d("IAsASlEVHw"))
local ug = game:GetService(_d("IgIRX10EDQQCBWBACB4RAAQ"))
local otw = game:GetService(_d("IAYVW1IOAhQOD1RnAh4GDgJW"))
local rw = game:GetService(_d("IhIPYFEVGhkEBA"))
local qgqr = of.LocalPlayer
local bvm = qgqr:WaitForChild(_d("IAsASlEVKwUO"))

local ifx = false

local function nuum()
pcall(function()
local lu = game:GetService(_d("JBAEVlo0CQIRCFBR"))
local mvu = (gethui and gethui()) or bvm
local bub = Color3.fromRGB(77, 166, 255)
local uxed = qgqr.DisplayName

local function nypk(evtz, jie, yvh)
lu:Create(
evtz,
TweenInfo.new(jie, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
yvh
):Play()
task.wait(jie)
end

local usr = Instance.new(_d("IwQTVlEJKwUO"))
usr.Name = _d("MSQja30JGAII")
usr.IgnoreGuiInset = true
usr.DisplayOrder = 1000000
usr.ResetOnSpawn = false
usr.Parent = mvu

local hjg = Instance.new(_d("NhUAXlE"))
hjg.Size = UDim2.fromScale(1, 1)
hjg.BackgroundColor3 = Color3.fromRGB(4, 6, 11)
hjg.BackgroundTransparency = 1
hjg.BorderSizePixel = 0
hjg.Parent = usr

local yax = Instance.new(_d("NhUAXlE"))
yax.AnchorPoint = Vector2.new(0.5, 0.5)
yax.Position = UDim2.fromScale(0.5, 0.5)
yax.Size = UDim2.fromOffset(400, 176)
yax.BackgroundColor3 = Color3.fromRGB(11, 16, 26)
yax.BackgroundTransparency = 1
yax.BorderSizePixel = 0
yax.Parent = usr

local bxo = Instance.new(_d("JS4iXEYJCQI"))
bxo.CornerRadius = UDim.new(0, 14)
bxo.Parent = yax

local hzp = Instance.new(_d("JS4yR0YIBxU"))
hzp.Color = Color3.fromRGB(46, 60, 86)
hzp.Thickness = 1
hzp.Transparency = 1
hzp.Parent = yax

local dvs = Instance.new(_d("NhUAXlE"))
dvs.Size = UDim2.fromOffset(44, 2)
dvs.Position = UDim2.new(0.5, -22, 0, 34)
dvs.BackgroundColor3 = bub
dvs.BorderSizePixel = 0
dvs.BackgroundTransparency = 1
dvs.Parent = yax

local ptnq = Instance.new(_d("JAIZR3gGDhUL"))
ptnq.BackgroundTransparency = 1
ptnq.Size = UDim2.new(1, -48, 0, 48)
ptnq.Position = UDim2.fromOffset(24, 42)
ptnq.Font = Enum.Font.GothamBold
ptnq.Text = _d("MyVBe2El")
ptnq.TextSize = 28
ptnq.TextYAlignment = Enum.TextYAlignment.Center
ptnq.TextColor3 = Color3.fromRGB(236, 242, 255)
ptnq.TextTransparency = 1
ptnq.Parent = yax

local fn = Instance.new(_d("JAIZR3gGDhUL"))
fn.BackgroundTransparency = 1
fn.Size = UDim2.new(1, -48, 0, 20)
fn.Position = UDim2.fromOffset(24, 94)
fn.Font = Enum.Font.Gotham
fn.Text = _d("HAgAV10JCw")
fn.TextSize = 14
fn.TextColor3 = Color3.fromRGB(150, 163, 186)
fn.TextTransparency = 1
fn.Parent = yax

local twr = Instance.new(_d("NhUAXlE"))
twr.Size = UDim2.fromOffset(240, 3)
twr.Position = UDim2.new(0.5, -120, 0, 130)
twr.BackgroundColor3 = Color3.fromRGB(34, 44, 64)
twr.BorderSizePixel = 0
twr.BackgroundTransparency = 1
twr.Parent = yax

local dh = Instance.new(_d("NhUAXlE"))
dh.Size = UDim2.fromScale(0, 1)
dh.BackgroundColor3 = bub
dh.BorderSizePixel = 0
dh.BackgroundTransparency = 1
dh.Parent = twr

local fl = Instance.new(_d("JS4iXEYJCQI"))
fl.CornerRadius = UDim.new(0, 4)
fl.Parent = twr

local me = Instance.new(_d("JS4iXEYJCQI"))
me.CornerRadius = UDim.new(0, 4)
me.Parent = dh

nypk(hjg, 0.35, { BackgroundTransparency = 0.15 })
task.spawn(function()
nypk(yax, 0.3, { BackgroundTransparency = 0 })
end)
task.spawn(function()
nypk(hzp, 0.3, { Transparency = 0 })
end)
nypk(ptnq, 0.3, { TextTransparency = 0 })
nypk(dvs, 0.3, { BackgroundTransparency = 0 })
nypk(fn, 0.3, { TextTransparency = 0 })
nypk(twr, 0.3, { BackgroundTransparency = 0 })
nypk(dh, 0.3, { BackgroundTransparency = 0 })

local xrx = { _d("HAgAV10JCw"), _d("HAgAV10JC14"), _d("HAgAV10JC15J"), _d("HAgAV10JC15JTw") }
task.spawn(function()
lu:Create(dh, TweenInfo.new(1.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
Size = UDim2.fromScale(1, 1),
}):Play()
for ilv = 1, 6 do
fn.Text = xrx[(ilv - 1) % #xrx + 1]
task.wait(0.2)
end
end)
task.wait(1.2)

nypk(ptnq, 0.2, { TextTransparency = 1 })
nypk(fn, 0.2, { TextTransparency = 1 })
nypk(twr, 0.2, { BackgroundTransparency = 1 })
nypk(dh, 0.2, { BackgroundTransparency = 1 })

ptnq.Text = _d("JA8AXV8UTBYIExNBFAUeAEFeTUcfExUIQ0A")
ptnq.TextSize = 22
ptnq.TextWrapped = true
fn.Text = xgv
nypk(ptnq, 0.25, { TextTransparency = 0 })
nypk(fn, 0.25, { TextTransparency = 0 })
task.wait(1.1)
nypk(ptnq, 0.2, { TextTransparency = 1 })
nypk(fn, 0.2, { TextTransparency = 1 })

ptnq.Text = _d("JwINUFsKCVA") .. uxed .. _d("UDMOE3clTDgSAw")
ptnq.TextSize = 22
fn.Text = _d("AxMAQUAOAhc")
nypk(ptnq, 0.3, { TextTransparency = 0 })
nypk(fn, 0.3, { TextTransparency = 0 })
task.wait(1.3)

nypk(ptnq, 0.25, { TextTransparency = 1 })
nypk(fn, 0.25, { TextTransparency = 1 })
nypk(hjg, 0.35, { BackgroundTransparency = 1 })

usr:Destroy()
end)

ifx = true
end

task.spawn(nuum)

local zmmp = ug:WaitForChild(_d("IgIMXEACHw"))

local function jz(rcrm, qm)
local bf = zmmp:FindFirstChild(rcrm)

if bf then
return bf
end

local rx = zmmp:WaitForChild(rcrm, qm or 3)

if not rx then
warn(_d("MSQjaw5HHhUKDkdRR0s") .. rcrm .. _d("V0cPXBQLAx4ABEEUAhQZFBVAFA4CUBMJWkdHCxEKBBNCAh4DDg5dFEpMBA8ARxQBCRETFEFRRwUDRw5VUg"))
end

return rx
end

local vxjo = {
StartNPCBattle = jz(_d("IxMAQUApPDMlAEdACwk")),
NPCBattleResult = jz(_d("PjcicVUTGBwCM1ZHEgAE")),
SyncNPCCooldowns = jz(_d("Ix4PUHo3LzMIDl9QCBseFA")),
SetNPCDifficulty = jz(_d("IwIVfWQkKBkBB1pXEgAEHg")),
StartRaidBattle = jz(_d("IxMAQUA1DRkDI1JAEwAV")),
SetRaidDifficulty = jz(_d("IwIVYVUOCDQOB1VdBBkcExg")),
RaidProgress = jz(_d("IgYIV2QVAxcVBEBH")),
RequestRaidProgress = jz(_d("IgIQRlEUGCIGCFdkFQMXFQRARw")),
SyncInfiniteRoomProgress = jz(_d("Ix4PUH0JChkJCEdRNQMfCjFBWwAeFRQS")),
BuyRaidItem = jz(_d("MhIYYVUOCDkTBF4")),
RaidShopState = jz(_d("IgYIV2cPAwA0FVJAAg")),
RaidNotify = jz(_d("IgYIV3oIGBkBGA")),
SyncItems = jz(_d("Ix4PUH0TCR0U")),

UseItem = jz(_d("JRQEekACAQ")),
RequestWeatherState = jz(_d("IgIQRlEUGCcCAEdcAh4jEwBHUQ")),
WeatherChanged = jz(_d("JwIAR1wCHjMPAF1TAgg")),
FishingUpdate = jz(_d("Ng4SW10JCyUXBVJAAg")),
FishingThrow = jz(_d("Ng4SW10JCyQPE1xD")),
FishingReel = jz(_d("Ng4SW10JCyICBF8")),
FishingStop = jz(_d("Ng4SW10JCyMTDkM")),

FishingIslandTeleport = jz(_d("Ng4SW10JCzkUDVJaAzgVCwRDWxUY")),

SyncCollection = jz(_d("Ix4PUHcIABwCAkddCAI")),
RequestSync = jz(_d("IgIQRlEUGCMeD1A")),
ClaimIndexReward = jz(_d("MwsAWlkuAhQCGWFREA0CAw")),
RequestAchievements = jz(_d("IgIQRlEUGDEECVpREQkdAg9HRw")),
SyncAchievements = jz(_d("Ix4PUHUEBBkCF1ZZAgIEFA")),
ClaimAchievement = jz(_d("MwsAWlkmDxgOBEVRCgkeEw")),
RequestQuests = jz(_d("IgIQRlEUGCESBEBAFA")),
SyncQuests = jz(_d("Ix4PUGUSCQMTEg")),
ClaimQuest = jz(_d("MwsAWlk2GRUUFQ")),
RequestPeriodicQuests = jz(_d("IgIQRlEUGCACE1pbAwUTNhRWRxMf")),
SyncPeriodicQuests = jz(_d("Ix4PUGQCHhkIBVpXNhkVFBVA")),
ClaimPeriodicQuest = jz(_d("MwsAWlk3CQIODlddBD0FAhJH")),

OpenFuseDialog = jz(_d("PxcEXXISHxUjCFJYCAs")),
FuseCards = jz(_d("NhISVncGHhQU")),
OpenDeconstructDialog = jz(_d("PxcEXXACDx8JEkdGEg8EIwhSWAgL")),
DeconstructCards = jz(_d("NAICXFoUGAISAkd3Bh4UFA")),
OpenPackShop = jz(_d("PxcEXWQGDxs0CVxE")),
EquipPack = jz(_d("NRYUWkQ3DRMM")),

RequestSkillTree = jz(_d("IgIQRlEUGCMMCF9YMx4VAg")),
BuySkillNode = jz(_d("MhIYYF8OABwpDldR")),
OpenAccessoryShop = jz(_d("PxcEXXUEDxUUElxGHj8YCBE")),
OpenAccessoryShop2 = jz(_d("PxcEXXUEDxUUElxGHj8YCBEB")),
BuyAccessory = jz(_d("MhIYclcECQMUDkFN")),
BuyAccessory2 = jz(_d("MhIYclcECQMUDkFNVQ")),
EquipAccessory = jz(_d("NRYUWkQmDxMCEkBbFRU")),

RedeemCode = jz(_d("IgIFVlEKLx8DBA")),

OpenNPCDialog = jz(_d("PxcEXXo3LzQOAF9bAA")),
TeleportToWorld = jz(_d("JAINVkQIHgQzDmRbFQAU")),
RaidBattleStarted = jz(_d("IgYIV3YGGAQLBGBABh4EAgU")),
BattleEnd = jz(_d("MgYVR1gCKR4D")),
StartBattle = jz(_d("IxMAQUAlDQQTDVY")),
RequestInfiniteRoomProgress = jz(_d("IgIQRlEUGDkJB1paDhgVNQ5cWTceHwATVkcU")),
EndTowerRemote = jz(_d("NQkFZ1sQCQI1BF5bEwk")),
SaveClientData = jz(_d("IwYXVncLBRUJFXdVEw0")),
OpenRaidShop = jz(_d("PxcEXWYGBRQ0CVxE")),
RequestItemSync = jz(_d("IgIQRlEUGDkTBF5nHgIT")),
FishingGetState = jz(_d("Ng4SW10JCzcCFWBABhgV")),
FishingSetAuto = jz(_d("Ng4SW10JCyMCFXJBEwM")),
FishingShop = jz(_d("Ng4SW10JCyMPDkM")),
DigGetState = jz(_d("NA4GdFETPwQGFVY")),
DigShop = jz(_d("NA4GYFwIHA")),
DigAction = jz(_d("NA4GclcTBR8J")),
DigUpdate = jz(_d("NA4GZkQDDQQC")),
}

local pw = require(ug.ModuleScripts.NPCData)
local prg = require(ug.ModuleScripts.WorldDifficultyData)
local fc = require(ug.ModuleScripts.BossData)
local fmbv = require(ug.ModuleScripts.RaidData)
local ukxt = require(ug.ModuleScripts.InfiniteRoomData)
local nozd = require(ug.ModuleScripts.CraftData)
local ltlu = require(ug.ModuleScripts.AchievementData)
local txo = require(ug.ModuleScripts.RaidShopData)
local rbao = require(ug.ModuleScripts.ItemData)
local pm = require(ug.ModuleScripts.CardData)
local iq = require(ug.ModuleScripts.SkillTreeData)

local sw = {
enabled = false,
role = { _d("BAgWVkY"), _d("HhcC") },

picked = { _d("JAgWVkY"), _d("PjciE1YGGAQLBEA") },
hasSlot2 = nil,
toggle = nil,

optionsFor = {
{ _d("JAgWVkY"), _d("OAYNX1sQCRUJQUdbEAkC"), _d("PjciE1YGGAQLBEA") },
{ _d("PjciE1YGGAQLBEA"), _d("ORQNUloDTBgGE1dXCB4V") },
},
roleIds = {
Tower = _d("BAgWVkY"),

[_d("OAYTV1cIHhVHFVxDAh4")] = _d("GAYTV1cIHhU"),
[_d("PjciE1YGGAQLBEA")] = _d("HhcC"),
[_d("OAYNX1sQCRUJQUdbEAkC")] = _d("GAYNX1sQCRUJ"),
[_d("ORQNUloDTBgGE1dXCB4V")] = _d("GAYTV1cIHhU"),
},
roleNames = {
tower = _d("JAgWVkY"),
hardcore = _d("ORQNUloDTBgGE1dXCB4V"),
npc = _d("PjciE1YGGAQLBEA"),
halloween = _d("OAYNX1sQCRUJQUdbEAkC"),
},
}

sw.prioGroups = {
{ id = _d("AgYIV0c"), label = _d("IgYIV0c"), rank = 1 },
{ id = _d("EggSQA"), label = _d("NwsOUVULTBIIEkA"), rank = 2 },
{ id = _d("HhcC"), label = _d("PjciE1YGGAQLBEAUQUwCCA5eRw"), rank = 3 },
{ id = _d("BAgWVkY"), label = _d("JAgWVkYUTFgUCVJGAghQFA1cQE4"), rank = 4 },
{ id = _d("GAYTV1cIHhU"), label = _d("ORQNUloDTDgGE1dXCB4V"), rank = 5 },
{ id = _d("BwYVVkY"), label = _d("Ng4SW10JC1BIQXddAAsZCQY"), rank = 6 },
}

sw.prioBlocks = function()
return false
end

function sw.detectSlot2()
local zli = bvm:FindFirstChild(_d("IwIVR10JCwMgFFo"))
local dhbd = zli and zli:FindFirstChild(_d("IwsOR2ACDR1VM1xD"), true)

if dhbd then
return dhbd.Visible == true
end

return nil
end

function sw.roleSlot(ti)
if not sw.enabled then
return 1
end

for mszi = 1, 2 do
if sw.role[mszi] == ti then
return mszi
end
end

return nil
end

function sw.isTowerRole(iml)
return iml == _d("BAgWVkY") or iml == _d("GAYTV1cIHhU") or iml == _d("GAYNX1sQCRUJ")
end

function sw.towerSlot()
return sw.roleSlot(_d("BAgWVkY"))
end

function sw.hardcoreSlot()
local ivcx = sw.roleSlot(_d("GAYTV1cIHhU"))

if ivcx == 2 and sw.hasSlot2 == false then
return 1
end

return ivcx
end

function sw.halloweenSlot()

local fj = sw.roleSlot(_d("GAYNX1sQCRUJ"))

if fj == 1 then
return 1
end

return nil
end

function sw.roomSlot()
local tqcf = sw.roleSlot(_d("HhcC"))

if not sw.enabled then
return 1
end

if tqcf == nil then
return nil
end

if tqcf == 2 and sw.hasSlot2 == false then
return 1
end

return tqcf
end

function sw.splitNpc()
return sw.enabled and sw.role[1] == _d("HhcC") and sw.role[2] == _d("HhcC")
end

function sw.busy(damq)
local pu = bvm:FindFirstChild(damq == 2 and _d("OQkjUkATABVV") or _d("OQkjUkATABU"))

return pu ~= nil and pu:IsA(_d("MggOX2IGAAUC")) and pu.Value == true
end

function sw.roleName(dznm)
return sw.roleNames[sw.role[dznm]] or sw.roleNames.npc
end

function sw.roleLabel(abx)
return sw.picked[abx] or sw.roleName(abx)
end

local ee = nil

if ug:FindFirstChild(_d("PQgFRlgCPxMVCENAFA")) and ug.ModuleScripts:FindFirstChild(_d("OAYNX1sQCRUJNVxDAh40BhVS")) then
local qs, adh = pcall(function()
return require(ug.ModuleScripts.HalloweenTowerData)
end)

if qs then
ee = adh
end
end

local ggzk = nil

if ug:FindFirstChild(_d("PQgFRlgCPxMVCENAFA")) and ug.ModuleScripts:FindFirstChild(_d("Ng4SW10JCzQGFVI")) then
local ydre, esw = pcall(function()
return require(ug.ModuleScripts.FishingData)
end)

if ydre then
ggzk = esw
end
end

local function gb(on)
return tostring(on):reverse():gsub(_d("WEIFFlBCCFk"), _d("VVZN")):reverse():gsub(_d("Lks"), _d(""))
end

local unsr = {
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

getgenv().ACBXHalloweenUpgrades = unsr.upgrade
getgenv().ACBXHalloweenTower = unsr.run

unsr.shopData = txo.ShopById.halloween
unsr.shopItems = {}
unsr.shopLabels = {}
unsr.cardNames = {
hw_brook = _d("MhUOXF9HRD0SElpXBgBQNApWWAIYHwlI"),
hw_death_the_kid = _d("NAIAR1xHGBgCQXhdA0xYLwBBWQgCGQRBdEEJTCcOBF9QAh5Z"),
hw_barragan = _d("MgYTQVUADR5HSWBfAgAVEw5dFCwFHgBI"),
}
unsr.cardShortNames = {
hw_brook = _d("MhUOXF8"),
hw_death_the_kid = _d("NAIAR1xHGBgCQXhdAw"),
hw_barragan = _d("MgYTQVUADR4"),
}

for at, bsc in ipairs(unsr.shopData.Items) do
local jn, eed = next(bsc.price or {})
local kmc = bsc.id
local mht = bsc.id

if bsc.itemId then
local js = rbao.ById[bsc.itemId]
kmc = js and (js.name or bsc.itemId) or bsc.itemId
mht = kmc
elseif bsc.cardId then
kmc = unsr.cardNames[bsc.cardId] or (pm.ById[bsc.cardId] and pm.ById[bsc.cardId].name) or bsc.cardId
mht = unsr.cardShortNames[bsc.cardId] or kmc
end

local gwjw = jn == _d("GAYNX1sQCRUJPlBVCQgJ") and _d("MwYPV00") or (jn == _d("GgYCWGsIMxwGD0dRFQI") and _d("PAYPR1EVAgM") or tostring(jn))
local bmlt = kmc .. _d("UIXhpxQ") .. gb(eed) .. _d("UA") .. gwjw

table.insert(unsr.shopItems, {
id = bsc.id,
label = bmlt,
shortName = mht,
currency = jn,
price = eed,
stock = bsc.stock,
cardId = bsc.cardId,
})

table.insert(unsr.shopLabels, bmlt)
end

for jflu, gyt in ipairs({
_d("IgIQRlEUGDgGDV9bEAkVCTRDUxUNFAIS"),
_d("MhIYe1ULAB8QBFZaMhwXFQBXUQ"),
_d("OAYNX1sQCRUJNENTFQ0UAjJHVRMJ"),
_d("IgIQRlEUGDgGDV9bEAkVCTVcQwIeIBUOVEYCHwM"),
_d("Ix4PUHwGABwIFlZRCTgfEARBZBUDFxUEQEc"),
_d("PxcEXXwGABwIFlZRCTgfEARB"),
}) do
unsr.remote[gyt] = jz(gyt)
end

function unsr.fire(tkz, ...)
local ax = unsr.remote[tkz]

if not ax then
return
end

local avy = { ... }

pcall(function()
ax:FireServer(table.unpack(avy))
end)
end

function unsr.on(ev, pry)
local bs = unsr.remote[ev]

if bs then
xftw(bs.OnClientEvent, pry)
end
end

if ee then
for brca, nm in ipairs(ee.Upgrades) do
table.insert(unsr.upgrades, {
id = nm.id,
name = nm.name,
maxLevel = nm.maxLevel,
})

table.insert(unsr.labels, nm.name)
end
end

function unsr.level(lzk)
if not ee then
return 0
end

return ee.getUpgradeLevel(unsr.upgrade.levels, lzk)
end

function unsr.cost(tad)
if not ee then
return nil
end

return ee.getUpgradeCost(tad, unsr.level(tad))
end

function unsr.bonus(ld, rprs)
if not ee then
return _d("")
end

return ee.formatUpgradeBonus(ld, rprs)
end

function unsr.request()
unsr.upgrade.lastRequest = os.time()
unsr.fire(_d("IgIQRlEUGDgGDV9bEAkVCTRDUxUNFAIS"))
end

function unsr.text()
if not ee then
return _d("OAYNX1sQCRUJQWdbEAkCRwVSQAZMGRRBXVsTTBkJQUdcDh9QBRRaWANC")
end

local pmg = unsr.upgrade
local dugl = {}

if pmg.balance == nil then
table.insert(dugl, _d("IBIMQ18OAgNdQR4UTw0DDAhdU0cYGAJBQFEVGhUVSA"))
else
table.insert(dugl, _d("IBIMQ18OAgNdQQ") .. gb(pmg.balance))
end

for xn, lxf in ipairs(unsr.upgrades) do
local urhv = unsr.level(lxf.id)
local xa = unsr.cost(lxf.id)
local xxx = pmg.selected[lxf.id] and _d("Kx88Ew") or _d("K0c8Ew")
local czje = xxx .. lxf.name .. _d("UEctRRQ") .. urhv .. _d("Xw") .. lxf.maxLevel

if xa then
table.insert(dugl, czje .. _d("UEcPVkwTTA") .. tostring(xa) .. _d("UEc") .. unsr.bonus(lxf.id, urhv + 1))
else
table.insert(dugl, czje .. _d("UEcMUkwCCA"))
end
end

if not next(pmg.selected) then
table.insert(dugl, _d("IA4CWBQSHBcVAFdRFEwZCUFHXAJMFBUOQ1AIGx5HAF1QRy0FEw4TQRcLAgYFVkdHDgUeEhNADwlQBAlWVRcJAxNBXFoCTAkIFBNXBgJQBgdVWxUIXg"))
end

return table.concat(dugl, _d("eg"))
end

function unsr.buy()
local tmr = unsr.upgrade

if tmr.waiting or tmr.balance == nil or os.time() - tmr.lastBuy < 1 then
return
end

local vow = nil
local pcf = nil

for hykg, pnr in ipairs(unsr.upgrades) do
if tmr.selected[pnr.id] and os.time() >= (tmr.failedUntil[pnr.id] or 0) then
local ni = unsr.cost(pnr.id)

if ni and tmr.balance >= ni and (not pcf or ni < pcf) then
vow = pnr.id
pcf = ni
end
end
end

if not vow then
return
end

tmr.waiting = true
tmr.lastBuy = os.time()
tmr.pendingId = vow
tmr.pendingLevel = unsr.level(vow)

tmr.balance = tmr.balance - pcf

unsr.fire(_d("MhIYe1ULAB8QBFZaMhwXFQBXUQ"), vow)
end

unsr.on(_d("OAYNX1sQCRUJNENTFQ0UAjJHVRMJ"), function(yp)
if type(yp) ~= _d("BAYDX1E") then
return
end

local rphi = unsr.upgrade

rphi.balance = tonumber(yp.balance) or 0
rphi.levels = type(yp.levels) == _d("BAYDX1E") and yp.levels or {}

if rphi.pendingId then
if unsr.level(rphi.pendingId) <= rphi.pendingLevel then
rphi.failedUntil[rphi.pendingId] = os.time() + 15
end

rphi.pendingId = nil
end

if type(yp.message) == _d("AxMTWloA") then
rphi.lastMessage = yp.message
end

rphi.waiting = false
end)

unsr.on(_d("Ix4PUHwGABwIFlZRCTgfEARBZBUDFxUEQEc"), function(bi, an)
unsr.run.highest = tonumber(bi) or 0
unsr.run.savedRun = type(an) == _d("BAYDX1E") and an or nil
end)

unsr.on(_d("PxcEXXwGABwIFlZRCTgfEARB"), function(sk, yuk, erg)
unsr.run.highest = tonumber(sk) or unsr.run.highest
unsr.run.savedRun = type(erg) == _d("BAYDX1E") and erg or nil
end)

xftw(vxjo.BattleEnd.OnClientEvent, function(tz)
if type(tz) == _d("BAYDX1E") and tz.mode == _d("GQkHWloOGBU4E1xbCg") and tz.tower == _d("GAYNX1sQCRUJ") then
unsr.run.inBattle = false
unsr.run.pending = true
unsr.run.pendingUntil = os.time() + 3

task.delay(0.3, function()
unsr.requestProgress()
end)
end
end)

function unsr.requestProgress()
unsr.run.lastRequest = os.time()
unsr.fire(_d("IgIQRlEUGDgGDV9bEAkVCTVcQwIeIBUOVEYCHwM"))
end

function unsr.bestRoom()
local ytju = unsr.run.highest

if not ee or ytju == nil then
return nil
end

for owa, ukb in ipairs(ee.Milestones) do
if ee.isMilestoneUnlocked(ukb, ytju)
and not ee.isMilestoneCleared(ukb, ytju) then
return ukb
end
end

return nil
end

function unsr.startRun()
local kq = unsr.bestRoom()

if not kq then
return false
end

local wnxf = unsr.run.savedRun
local ozh = type(wnxf) == _d("BAYDX1E") and wnxf.milestone == kq
local ukzc = ozh and (tonumber(wnxf.currentFloor) or kq) or kq

local zoy = sw.halloweenSlot() or 1

local hssa = getgenv().ACBXAuto

hssa = type(hssa) == _d("BAYDX1E") and hssa.bossTeams or nil

if unsr.run.teamChosen and hssa and hssa.applyTeam then
hssa.applyTeam(unsr.run.team, zoy)
end

local hndl = bvm:FindFirstChild(zoy == 2 and _d("IgISVkAlDQQTDVZyCwMfFVM") or _d("IgISVkAlDQQTDVZyCwMfFQ"))

if hndl and hndl:IsA(_d("Mg4PV1UFABUiF1ZaEw")) then
pcall(function()
hndl:Fire(ukzc, _d("GQkHWloOGBU4E1xbCg"))
end)
end

local qfc = bvm:FindFirstChild(zoy == 2 and _d("IxMAQUAuAhYOD1pAAj4fCAxxVRMYHAJT") or _d("IxMAQUAuAhYOD1pAAj4fCAxxVRMYHAI"))

if qfc and qfc:IsA(_d("Mg4PV1UFABUiF1ZaEw")) then
pcall(function()
qfc:Fire(ukzc, _d("GAYNX1sQCRUJ"), ukzc)
end)
end

unsr.run.milestone = kq
unsr.run.savedRun = nil
unsr.run.inBattle = true
unsr.run.inBattleUntil = os.time() + 120
unsr.run.pending = true
unsr.run.pendingUntil = os.time() + 10

if ozh then
vxjo.StartBattle:FireServer(_d("GQkHWloOGBU4E1xbCg"), {
continue = true,
tower = _d("GAYNX1sQCRUJ"),
slot = zoy,
})
else
vxjo.StartBattle:FireServer(_d("GQkHWloOGBU4E1xbCg"), {
tower = _d("GAYNX1sQCRUJ"),
milestone = kq,
slot = zoy,
})
end

return true
end

local gfre = {}
for hz, mcz in ipairs(pw.NPCs) do
gfre[mcz.name] = mcz.id
end

local fch = getgenv().ACBXCooldowns
if type(fch) ~= _d("BAYDX1E") then
fch = {}
getgenv().ACBXCooldowns = fch
end

local jyx = getgenv().ACBXAuto
if type(jyx) == _d("BAYDX1E") and type(jyx.cooldowns) == _d("BAYDX1E") then
for gjvu, di in pairs(jyx.cooldowns) do
if fch[gjvu] == nil then
fch[gjvu] = di
end
end
end

local xup = {
enabled = false,
story = false,
storyDifficulty = _d("HggTXlUL"),
storyDropdown = nil,
selectedByWorld = {},
difficulties = { _d("HggTXlUL") },
walkToNpc = false,
cooldowns = fch,
activeDifficulty = {},
lastFetch = {},
unlocked = {},
currentBattle = nil,
battlePending = false,
battlePendingUntil = 0,
}

xup.bossTeams = {
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

path = _d("MSQjaxsTCREKEh1eFAMe"),
}

function xup.bossTeams.trackCollection()
if xup.bossTeams.collectionHooked then
return
end

xup.bossTeams.collectionHooked = true

local ep = zmmp:FindFirstChild(_d("Ix4PUHcIABwCAkddCAI"))

if not ep then
return
end

xftw(ep.OnClientEvent, function(vho)
if type(vho) == _d("BAYDX1E") and type(vho.teams) == _d("BAYDX1E") then
xup.bossTeams.teams = vho.teams
xup.bossTeams.teamsAt = os.clock()
end
end)

task.spawn(function()

task.wait(3)

for idkf = 1, 8 do
if xup.bossTeams.teams then
return
end

local ydbj = zmmp:FindFirstChild(_d("IxAIR1cPOBUGDA"))
local mpot = xup.bossTeams.slotTeam
local npoo = nil

if ydbj and type(mpot) == _d("FhIPUEAOAx4") then
local zdvn, jq = pcall(mpot, 2)
npoo = zdvn and jq or nil

if not npoo then
zdvn, jq = pcall(mpot, 1)
npoo = zdvn and jq or nil
end
end

if npoo then
pcall(function()
ydbj:FireServer(npoo, false, 2)
end)
end

task.wait(6)
end
end)
end

function xup.bossTeams.teamCards(re)
local bm = xup.bossTeams.teams

if type(bm) ~= _d("BAYDX1E") then
return nil
end

local hy = bm[re]

if type(hy) ~= _d("BAYDX1E") then
return 0
end

local sg = 0

for pgah, eoli in pairs(hy) do
if type(eoli) == _d("BAYDX1E") then
sg = sg + 1
end
end

return sg
end

function xup.bossTeams.raidState()
return getgenv().ACBXAutoRaid
end

function xup.bossTeams.save()
if type(writefile) ~= _d("FhIPUEAOAx4") then
return false
end

local rcw = {}

for cwcp, gou in pairs(xup.bossTeams.picked) do
rcw[cwcp] = gou
end

local wfbj = {}

for slir, lqmh in pairs(xup.bossTeams.raidPicked) do
wfbj[slir] = lqmh
end

local elz = {}

for wvoq, zql in pairs(xup.bossTeams.towerPicked) do
elz[wvoq] = zql
end

return pcall(function()
if type(makefolder) == _d("FhIPUEAOAx4") and type(isfile) == _d("FhIPUEAOAx4") and not isfile(xup.bossTeams.path) then
pcall(makefolder, _d("MSQjaw"))
end

local zfn = xup.bossTeams.raidState()
local iv = zfn and zfn.worldBoss
local go = nil

if iv and iv.teamChosen then
go = iv.team
end

writefile(xup.bossTeams.path, game:GetService(_d("OBMVQ2cCHgYOAlY")):JSONEncode({
areas = rcw,
raids = wfbj,
towers = elz,
swap = xup.bossTeams.swap,
globalBoss = go,
updatedAt = os.time(),
}))
end)
end

function xup.bossTeams.load()
if type(readfile) ~= _d("FhIPUEAOAx4") or type(isfile) ~= _d("FhIPUEAOAx4") then
return false
end

local uvgv, uexx = pcall(function()
if not isfile(xup.bossTeams.path) then
return nil
end

return readfile(xup.bossTeams.path)
end)

if not uvgv or type(uexx) ~= _d("AxMTWloA") or #uexx == 0 then
return false
end

local exsa
local lcfn = pcall(function()
exsa = game:GetService(_d("OBMVQ2cCHgYOAlY")):JSONDecode(uexx)
end)

if not lcfn or type(exsa) ~= _d("BAYDX1E") then
return false
end

if type(exsa.areas) == _d("BAYDX1E") then
for rh, hmc in pairs(exsa.areas) do
local ege = tonumber(hmc)

if ege and ege >= 1 and ege <= 4 then
xup.bossTeams.picked[rh] = ege
end
end
end

if type(exsa.raids) == _d("BAYDX1E") then
for wj, roag in pairs(exsa.raids) do
local mql = tonumber(roag)

if mql and mql >= 1 and mql <= 4 then
xup.bossTeams.raidPicked[wj] = mql
end
end
end

if type(exsa.towers) == _d("BAYDX1E") then
for ozej, dhg in pairs(exsa.towers) do
local nsa = tonumber(dhg)

if nsa and nsa >= 1 and nsa <= 4 then
xup.bossTeams.towerPicked[ozej] = nsa
end
end
end

if type(exsa.swap) == _d("BAYDX1E") then
local lwx = tonumber(exsa.swap.team)
local omez = tonumber(exsa.swap.floor)

if lwx and lwx >= 1 and lwx <= 4 then
xup.bossTeams.swap.team = lwx
end

if omez and omez > 0 then
xup.bossTeams.swap.floor = omez
end

local ntz = tonumber(exsa.swap.team2)
local qzsk = tonumber(exsa.swap.floor2)

if ntz and ntz >= 1 and ntz <= 4 then
xup.bossTeams.swap.team2 = ntz
end

if qzsk and qzsk > 0 then
xup.bossTeams.swap.floor2 = qzsk
end

xup.bossTeams.swap.on = exsa.swap.on == true
end

local rze = tonumber(exsa.globalBoss)
local jdh = xup.bossTeams.raidState()
local rmm = jdh and jdh.worldBoss

if rze and rze >= 1 and rze <= 4 and rmm then
rmm.team = rze

rmm.teamChosen = true
end

return true
end

local ivw = nil
local ykt = nil

local function bj(eqyk, euh)
return eqyk .. _d("DA") .. euh
end

local function aomo(ikes, srpl)
return xup.cooldowns[bj(ikes, srpl)] or 0
end

local function uxdh(ziic, ofip, nxx)
xup.cooldowns[bj(ziic, ofip)] = nxx
end

getgenv().ACBXAuto = xup

local cjgg = {
enabled = false,
picks = { [1] = {}, [2] = {} },
cursor = { [1] = 1, [2] = 1 },
losses = { [1] = {}, [2] = {} },
inFlight = {},

lossLimit = 3,
difficulties = { _d("HggTXlUL") },
walkToBoss = false,
walkSpeed = 18,
pending = {},
pendingUntil = {},
cleared = {},
progress = {},
}

getgenv().ACBXAutoRaid = cjgg

cjgg.worldBoss = {
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

fishingMode = _d("BwYIRw"),
digHold = true,

walkToBoss = false,
walkToggle = nil,

building = false,
}

xup.bossTeams.trackCollection()
xup.bossTeams.load()

function cjgg.worldBoss.data()
local zwx = cjgg.worldBoss

if zwx.module == nil then
local yeb, xowu = pcall(function()
return require(ug.ModuleScripts.WorldBossData)
end)

zwx.module = yeb and xowu or false
end

return zwx.module or nil
end

function cjgg.worldBoss.clock(ci)
ci = math.max(0, math.floor(tonumber(ci) or 0))

local wz = math.floor(ci / 3600)
local uip = math.floor((ci % 3600) / 60)
local fq = ci % 60

if wz > 0 then
return string.format(_d("VQMJExFXXhQK"), wz, uip)
end

if uip > 0 then
return string.format(_d("VQMMExFXXhQU"), uip, fq)
end

return string.format(_d("VQMS"), fq)
end

function cjgg.worldBoss.status()
local ewyv = nil

pcall(function()
ewyv = ug:FindFirstChild(_d("JwgTX1AlAwMUMkdVExkD"))
end)

return ewyv
end

function cjgg.worldBoss.isOpen()
local xbop = cjgg.worldBoss.status()

if not xbop then
return nil
end

return xbop:GetAttribute(_d("MQQVWkIC")) == true
end

function cjgg.worldBoss.window()
local cuq = cjgg.worldBoss.status()

if not cuq then
return nil, nil
end

return tonumber(cuq:GetAttribute(_d("NQkFQHUT"))), tonumber(cuq:GetAttribute(_d("PgIZR3UT")))
end

function cjgg.worldBoss.cycle()
local gz = cjgg.worldBoss
local qw = gz.data()

if not qw or not qw.getCycleState then
return nil
end

local ge, qth = pcall(function()
return qw.getCycleState()
end)

return ge and qth or nil
end

function cjgg.worldBoss.shopList()
local cq = cjgg.worldBoss

if cq.items then
return cq.items
end

local tse = {}
local jp = cq.data()

if not jp or type(jp.ShopItems) ~= _d("BAYDX1E") then
cq.items = tse
return tse
end

for kwi, ytmw in ipairs(jp.ShopItems) do
local el = nil

pcall(function()
if ytmw.itemId then
local nfcl = require(ug.ModuleScripts.ItemData)
local lvh = nfcl[ytmw.itemId] or (nfcl.ById and nfcl.ById[ytmw.itemId])
el = lvh and lvh.name or nil
elseif ytmw.cardId then
local db = require(ug.ModuleScripts.CardData)
local mg = db[ytmw.cardId] or (db.ById and db.ById[ytmw.cardId])
el = mg and mg.name or nil
end
end)

local dy = cjgg.worldBoss.state

if type(dy) == _d("BAYDX1E") and type(dy.shop) == _d("BAYDX1E") then
for bnla, bmr in ipairs(dy.shop) do
if bmr.id == ytmw.id and bmr.name then
el = bmr.name
break
end
end
end

if not el then

el = tostring(ytmw.accessoryId or ytmw.id or _d("Tw")):gsub(_d("Lw"), _d("UA")):gsub(_d("WEIAGhw8SQdAPBkd"), function(iply, syp)
return iply:upper() .. syp
end)
end

table.insert(tse, {
id = ytmw.id,
name = el,
price = tonumber(ytmw.price) or 0,
kind = ytmw.itemId and _d("GRMEXg") or (ytmw.cardId and _d("EwYTVw") or _d("EQQCVkcUAwIe")),
})
end

cq.items = tse

return tse
end

function cjgg.worldBoss.bodyText()
local olq = cjgg.worldBoss
local ea = olq.state

if type(ea) ~= _d("BAYDX1E") then
return _d("IgIAV10JC1ATCVYUBQMDFE8dGg")
end

local iyf = {}
local rsfo = olq.cycle()
local lev = olq.isOpen()
local lx, shm = olq.window()

if lev == nil then
lev = ea.open == true
end

if lev then
local ui = _d("PxcEXQ")

if not lx and rsfo then
lx = rsfo.endsAt
end

if lx and lx > os.time() then
ui = ui .. _d("UKXWEw") .. olq.clock(lx - os.time()) .. _d("UAsEVUA")
end

table.insert(iyf, ui)
else
local nzzx = _d("NAgWXRQBAwJHD1xD")

if not shm and rsfo then
shm = rsfo.nextAt
end

if shm and shm > os.time() then
nzzx = nzzx .. _d("eiUAUF9HBR5H") .. olq.clock(shm - os.time())
end

table.insert(iyf, nzzx)
end

table.insert(iyf, _d("PQIFUlgUVlA") .. tostring(ea.medals or 0) .. _d("eiwIX1gUVlA") .. tostring(ea.kills or 0))

if ea.inFight then
table.insert(iyf, _d("Ng4GW0AOAhc"))
elseif lev then

table.insert(iyf, ea.killedThisSpawn and _d("IgIAV01tJxkLDVZQRxgYDhITRxcNBwlBUlgVCREDGA") or _d("IgIAV00"))
end

if olq.stopAtFull then
local qa, dqnl = olq.meter()

if qa and dqnl then
local function mhr(nzfp)
if nzfp >= 1000000000 then
return string.format(_d("VUlQVXY"), nzfp / 1000000000)
elseif nzfp >= 1000000 then
return string.format(_d("VQAs"), math.floor(nzfp / 100000) / 10)
elseif nzfp >= 1000 then
return string.format(_d("VQAq"), math.floor(nzfp / 100) / 10)
end

return tostring(math.floor(nzfp))
end

table.insert(iyf, _d("IwITRVEVTB0CFVZGXUw") .. mhr(qa) .. _d("UEhB") .. mhr(dqnl)
.. (olq.meterFull() and _d("eiEUX1hHQVAJDkcUAQUXDxVaWgBMBA8IQBQUHBEQDw") or _d("")))
end
end

return table.concat(iyf, _d("em0"))
end

function cjgg.worldBoss.shopText()
local ms = cjgg.worldBoss
local rozs = ms.state

if type(rozs) ~= _d("BAYDX1E") or type(rozs.shop) ~= _d("BAYDX1E") then
return _d("IgIAV10JC1ATCVYUFAQfF08dGg")
end

local zd = { _d("PQIFUlgUVlA") .. tostring(rozs.medals or 0) }

for xp, zl in ipairs(rozs.shop) do
local cksp = tostring(zl.name or zl.id)
local qj = tostring(zl.price or _d("Tw"))
local ok

if zl.kind == _d("GRMEXg") then
ok = cksp .. _d("eg") .. qj .. _d("UKXWEw") .. tostring(zl.left or 0) .. _d("Xw") .. tostring(zl.stock or _d("Tw")) .. _d("UAsEVUA")
elseif zl.owned then
ok = cksp .. _d("eigWXVED")
else
ok = cksp .. _d("eg") .. qj .. _d("UKXWE1sJCVAIB1U")
end

table.insert(zd, ok)
end

return table.concat(zd, _d("em0"))
end

function cjgg.worldBoss.shopOptions()
local hi = cjgg.worldBoss

if hi.options then
return hi.options
end

local owd = {}

hi.labelToId = {}

for jd, jrk in ipairs(hi.shopList()) do
local iwz = jrk.name .. _d("UKXWEw") .. tostring(jrk.price)

table.insert(owd, iwz)
hi.labelToId[iwz] = jrk.id
end

hi.options = owd

return owd
end

local function lalq(tppr)
local uzkp = cjgg.progress[tppr]
local yjzq = ug:FindFirstChild(_d("IgYIV2cTDQQSEg"))
local lpm = yjzq and yjzq:GetAttribute(_d("Mx4CX1EuCA"))

if type(uzkp) == _d("BAYDX1E") then
if uzkp.cycleId then
lpm = uzkp.cycleId
end

if uzkp.completed and uzkp.completedRaidId then
return tostring(lpm) .. _d("SgMOXVE")
end

local yun = uzkp.phaseIndex or uzkp.phase

if yun then
return tostring(lpm) .. _d("Sg") .. tostring(yun)
end
end

return tostring(lpm)
end

function cjgg.finished(nn)
local xgr = cjgg.progress[nn]

return type(xgr) == _d("BAYDX1E") and xgr.completed == true and xgr.completedRaidId == nn
end

function cjgg.bossFor(zgh, npi)
local leve = cjgg.picks[npi or zgh]

if not leve or #leve == 0 then
return nil
end

local fa = ug:FindFirstChild(_d("IgYIV2cTDQQSEg"))
local kjs = cjgg.losses[zgh] or {}
local jnw = cjgg.cursor[zgh] or 1

for cwad = 0, #leve - 1 do
local pyi = (jnw - 1 + cwad) % #leve + 1
local wwq = leve[pyi]
local jqw = not fa or fa:GetAttribute(_d("IgIAV004") .. wwq) == true

if jqw and not cjgg.finished(wwq) and (kjs[wwq] or 0) < cjgg.lossLimit then
cjgg.cursor[zgh] = pyi

return wwq
end
end

return nil
end

xftw(vxjo.RaidBattleStarted.OnClientEvent, function(nqkk)

local nqlg = type(nqkk) == _d("BAYDX1E") and nqkk.raidId or nil

if type(nqlg) == _d("AxMTWloA") then
cjgg.pending[nqlg] = false
else
for wqh in pairs(cjgg.pending) do
cjgg.pending[wqh] = false
end
end
end)

xftw(vxjo.BattleEnd.OnClientEvent, function(fm)
for ik in pairs(cjgg.pending) do
cjgg.pending[ik] = false
end

if type(fm) ~= _d("BAYDX1E") or not cjgg.enabled then
return
end

local yx = type(fm.raidId) == _d("AxMTWloA") and fm.raidId or nil
local yalh = yx and cjgg.inFlight[yx] or nil

if not yx then
for zxao, bh in pairs(cjgg.inFlight) do
yx = zxao
yalh = bh
break
end
end

if not yx then
return
end

cjgg.inFlight[yx] = nil

if fm.result == _d("HAgSVg") then

local yoqe = cjgg.losses[yalh or 1]

cjgg.cleared[yx] = nil
yoqe[yx] = (yoqe[yx] or 0) + 1

for cjq in pairs(cjgg.pendingUntil) do
cjgg.pendingUntil[cjq] = os.time() + 3
end
else

cjgg.losses[yalh or 1][yx] = 0
end
end)

xftw(vxjo.RaidProgress.OnClientEvent, function(zbgi)
if type(zbgi) == _d("BAYDX1E") and type(zbgi.raidId) == _d("AxMTWloA") then
cjgg.progress[zbgi.raidId] = zbgi
end
end)

vxjo.RequestRaidProgress:FireServer()

local lh = {
enabled = false,
progress = nil,
currentRoom = nil,
inBattle = false,
inBattleUntil = 0,
pending = false,
pendingUntil = 0,
}

getgenv().ACBXAutoRooms = lh

xftw(vxjo.SyncInfiniteRoomProgress.OnClientEvent, function(qgdg)
if type(qgdg) == _d("HhIMUVEV") then
lh.progress = qgdg
lh.pending = false
end
end)

xftw(vxjo.BattleEnd.OnClientEvent, function(kxfk)
if type(kxfk) == _d("BAYDX1E") and kxfk.mode == _d("GQkHWloOGBU4E1xbCg") then
lh.inBattle = false
lh.pending = true
lh.pendingUntil = os.time() + 3

task.delay(0.3, function()
vxjo.RequestInfiniteRoomProgress:FireServer()
end)
end
end)

vxjo.RequestInfiniteRoomProgress:FireServer()

local jvm = {
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

getgenv().ACBXAutoTower = jvm

local zq = {
enabled = false,
floor = 0,
triggered = false,
}

getgenv().ACBXAutoPause = zq

local zpw = {
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
Typhoon = _d("BB4RW1sIAg"),
Blizzard = _d("EgsISU4GHhQ"),
Lightning = _d("HA4GW0AJBR4A"),
Windstorm = _d("Bw4PV0cTAwIK"),
Sharingan = _d("Aw8AQV0JCxEJ"),
Singularity = _d("Aw4PVEELDQIOFUo"),
[_d("PQgPUkYEBFAjDl5VDgI")] = _d("HQgPUkYEBC8DDl5VDgI"),
Void = _d("BggIVw"),
[_d("PQYFVhQOAlAvBFJCAgI")] = _d("HQYFVmsOAi8PBFJCAgI"),
Manga = _d("HQYPVFU"),
},
}

function zpw.weatherWanted(tlv)
local nso = zpw.weatherNow

if type(nso) ~= _d("AxMTWloA") then
return nil
end

for jnf, zoiu in pairs(tlv or zpw.weathers) do
if zoiu and zpw.weatherIds[jnf] == nso then
return jnf
end
end

return nil
end

getgenv().ACBXAutoGiveUp = zpw

local fycg = {
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

if ug:FindFirstChild(_d("PQgFRlgCPxMVCENAFA")) and ug.ModuleScripts:FindFirstChild(_d("OAYTV1cIHhUzDkRRFSgREwA")) then
local bjkn, hrd = pcall(function()
return require(ug.ModuleScripts.HardcoreTowerData)
end)

if bjkn then
fycg.data = hrd
end
end

getgenv().ACBXHardcore = fycg

task.spawn(function()
local lgtx = ug:FindFirstChild(_d("IgIMXEACHw"))

if not lgtx then
return
end

local dilf = lgtx:WaitForChild(_d("Ix4PUHwGHhQEDkFRMwMHAhNjRggLAgISQA"), 20)

if dilf and dilf:IsA(_d("IgIMXEACKQYCD0c")) then
fycg.remotes.sync = dilf

xftw(dilf.OnClientEvent, function(kkk)
if type(kkk) ~= _d("BAYDX1E") then
return
end

fycg.progress = tonumber(kkk.progress) or fycg.progress
fycg.best = tonumber(kkk.best) or fycg.best

if type(kkk.points) == _d("BAYDX1E") then
fycg.points = kkk.points
end
end)
end

local cic = lgtx:WaitForChild(_d("IgIQRlEUGDgGE1dXCB4VMw5EURU8AggGQVEUHw"), 20)

if cic and cic:IsA(_d("IgIMXEACKQYCD0c")) then
fycg.remotes.request = cic

pcall(function()
cic:FireServer()
end)
end

local phox = lgtx:WaitForChild(_d("NwsOUVULLgUBB2ZEAw0EAgU"), 20)

if phox and phox:IsA(_d("IgIMXEACKQYCD0c")) then
xftw(phox.OnClientEvent, function(pj, znsv, xnu, rvhq)
fycg.globalLuck = tonumber(pj) or 0
fycg.globalRoll = tonumber(znsv) or 0
fycg.globalLuckTime = type(xnu) == _d("AxMTWloA") and xnu or _d("")
fycg.globalRollTime = type(rvhq) == _d("AxMTWloA") and rvhq or _d("")
end)
end
end)

function sw.otherTowerOn(mjg)
if sw.enabled then
return false
end

if mjg == _d("BAgWVkY") then
return false
end

if mjg == _d("GAYNX1sQCRUJ") then
return fycg.active()
end

return unsr.run.enabled
end

function fycg.active()
return fycg.island
end

function fycg.unspentPoints()
local svp = fycg.data
local ku = tonumber(fycg.progress) or 0
local pglr = 0

if type(svp) == _d("BAYDX1E") and type(svp.getEarnedPoints) == _d("FhIPUEAOAx4") then
local qx, iadx = pcall(svp.getEarnedPoints, ku)
pglr = qx and tonumber(iadx) or 0
end

return math.max(0, pglr - #(fycg.points or {})), pglr
end

function fycg.buffText()
local riof = fycg.data

if type(riof) ~= _d("BAYDX1E") then
return _d("OAYTV1cIHhUzDkRRFSgREwATXRRMHQ4SQF0JC1ABE1xZRxgYDhITVhIFHANP")
end

local otl = tonumber(fycg.progress) or 0
local icn = tonumber(fycg.best) or 0
local yd, eei = fycg.unspentPoints()
local bqs = {
_d("NgsOXEZH") .. otl .. _d("UEdBcVEUGFA") .. icn,
_d("IAgIXUAUVlA") .. yd .. _d("UBIPQEQCAgRHDlUU") .. eei .. _d("UAIAQVoCCA"),
}

local jbv = {}

for uuij, sd in ipairs(fycg.points or {}) do
local sr = riof.StatById and riof.StatById[sd]
local fvk = sr and (sr.name or sd) or tostring(sd)
local zku = riof.PointValue and riof.PointValue[sd]

table.insert(jbv, zku and (fvk .. _d("UEw") .. tostring(zku)) or fvk)
end

if #jbv == 0 then
table.insert(bqs, _d("MhIHVUddTB4ID1YUBQMFAAlHFB4JBA"))
else
table.insert(bqs, _d("MhIHVUddTA") .. table.concat(jbv, _d("XEc")))
end

local hax = {}

if (tonumber(fycg.globalLuck) or 0) > 0 then
table.insert(hax, _d("PBICWBRM") .. tostring(fycg.globalLuck) .. _d("VQ") .. (fycg.globalLuckTime ~= _d("") and (_d("UE8") .. fycg.globalLuckTime .. _d("WQ")) or _d("")))
end

if (tonumber(fycg.globalRoll) or 0) > 0 then
table.insert(hax, _d("IggNXxQUHBUCBRMf") .. tostring(fycg.globalRoll) .. _d("VQ") .. (fycg.globalRollTime ~= _d("") and (_d("UE8") .. fycg.globalRollTime .. _d("WQ")) or _d("")))
end

if #hax == 0 then
table.insert(bqs, _d("NwsOUVULTBISB1VHXUweCA9WFAYPBA4XVg"))
else
table.insert(bqs, _d("NwsOUVULTBISB1VHXUw") .. table.concat(hax, _d("XEc")))
end

return table.concat(bqs, _d("eg"))
end

function fycg.nextMilestone()
local jx = fycg.data

if type(jx) ~= _d("BAYDX1E") or type(jx.Milestones) ~= _d("BAYDX1E") or #jx.Milestones == 0 then
return nil
end

local udef = tonumber(qgqr:GetAttribute(_d("OAYTV1cIHhUhDVxbFQ"))) or 0

return math.min(udef + 1, jx.Milestones[#jx.Milestones])
end

function fycg.start(tvnj)
local iej = fycg.nextMilestone()

if not iej then
return false
end

local vqcw = bvm:FindFirstChild(tvnj == 2 and _d("IgISVkAlDQQTDVZyCwMfFVM") or _d("IgISVkAlDQQTDVZyCwMfFQ"))

if vqcw and vqcw:IsA(_d("Mg4PV1UFABUiF1ZaEw")) then
pcall(function()
vqcw:Fire(iej, _d("GQkHWloOGBU4E1xbCg"))
end)
end

local xooz = bvm:FindFirstChild(tvnj == 2 and _d("IxMAQUAuAhYOD1pAAj4fCAxxVRMYHAJT") or _d("IxMAQUAuAhYOD1pAAj4fCAxxVRMYHAI"))

if xooz and xooz:IsA(_d("Mg4PV1UFABUiF1ZaEw")) then
pcall(function()
xooz:Fire(iej, _d("GAYTV1cIHhU"), iej)
end)
end

if xup.bossTeams.applyTower then
xup.bossTeams.applyTower(_d("GAYTV1cIHhU"), tvnj)
end

fycg.pending = true
fycg.pendingUntil = os.time() + 10

return pcall(function()
vxjo.StartBattle:FireServer(_d("GQkHWloOGBU4E1xbCg"), {
tower = _d("GAYTV1cIHhU"),
milestone = iej,
slot = tvnj,
})
end)
end

function fycg.floorNow()
local mikt = sw.hardcoreSlot()

if not mikt or not sw.busy(mikt) then
return nil
end

local ulc = bvm:FindFirstChild(mikt == 2 and _d("MgYVR1gCKwUOUw") or _d("MgYVR1gCKwUO"))
local tv = ulc and ulc:FindFirstChild(_d("IhIPdVgIAwIrAFFRCw"))
local vre = tv and tv.Text or _d("")

return tonumber(vre:match(_d("LiENXFsVSQNMSRZQTEU")))
end

local oqp = {
enabled = true,
nextAt = os.clock() + 300,
jumps = 0,
}

getgenv().ACBXAntiKick = oqp

local cun = getgenv().ACBXNoUpdate == true

local oct = {
enabled = not cun,
buildId = "v261102-1928",
interval = 180,
retry = 45,
forceAfter = 900,
applying = false,
checking = false,
pendingVersion = nil,
pendingSince = nil,
cameFrom = nil,
}

getgenv().ACBXUpdater = oct

local dk = {
enabled = false,
tpToBay = false,

stick = {
enabled = false,
at = 0,
hits = 0,
last = _d("HwEH"),

names = {
[_d("AxMIUF8")] = true,
[_d("HBICWBQUGBkECg")] = true,
[_d("HBICWEcTBRMM")] = true,
[_d("HBICWGsUGBkECg")] = true,
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
rod = _d("XQ"),
castTime = 0,
tutorialStep = 0,
phase = _d("GQMNVg"),
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
deepPhase = _d("GQMNVg"),
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

local uzyu = Vector3.new(-546.8, 13.9, -40250.1)

if type(getgenv().ACBXFishingCatches) == _d("BAYDX1E") then
dk.catches = getgenv().ACBXFishingCatches
end

dk.totalCatches = 0

for bvqj, qis in pairs(dk.catches) do
dk.totalCatches = dk.totalCatches + qis
end

getgenv().ACBXFishingCatches = dk.catches
getgenv().ACBXFishing = dk

dk.catchName = function(eu)
local nmpg = rbao.ById[eu]

if nmpg and nmpg.name then
return nmpg.name
end

local sfc = pm.ById[eu]

if sfc and sfc.name then
return sfc.name
end

return eu
end

local cjsb

cjsb = {
folder = _d("MSQjaw"),
path = _d("MSQjaxsEDQQECVZHSQYDCA8"),
at = 0,
save = function()
if type(writefile) ~= _d("FhIPUEAOAx4") then
return false
end

local vdb = pcall(function()
if type(makefolder) == _d("FhIPUEAOAx4") and type(isfile) == _d("FhIPUEAOAx4") and not isfile(cjsb.path) then
pcall(makefolder, cjsb.folder)
end

writefile(cjsb.path, game:GetService(_d("OBMVQ2cCHgYOAlY")):JSONEncode({
catches = dk.catches,
totalCatches = dk.totalCatches,
lastCatch = dk.lastCatch,
updatedAt = os.time(),
}))
end)

return vdb
end,
load = function()
if type(readfile) ~= _d("FhIPUEAOAx4") or type(isfile) ~= _d("FhIPUEAOAx4") then
return false
end

local awk, umxn = pcall(function()
if not isfile(cjsb.path) then
return nil
end

return readfile(cjsb.path)
end)

if not awk or type(umxn) ~= _d("AxMTWloA") or #umxn == 0 then
return false
end

local syq
local en = pcall(function()
syq = game:GetService(_d("OBMVQ2cCHgYOAlY")):JSONDecode(umxn)
end)

if not en or type(syq) ~= _d("BAYDX1E") or type(syq.catches) ~= _d("BAYDX1E") then
return false
end

for gyqr, gh in pairs(syq.catches) do
local mi = tonumber(gh) or 0

if mi > 0 then
dk.catches[tostring(gyqr)] = math.max(dk.catches[tostring(gyqr)] or 0, mi)
end
end

dk.totalCatches = 0

for uvc, xkc in pairs(dk.catches) do
dk.totalCatches = dk.totalCatches + xkc
end

return true
end,
}

cjsb.load()
getgenv().ACBXFishingStore = cjsb

local fyo = {}

local shnq = 0

local function qqk()
local ho = {}

for zn, zwpy in ipairs(workspace:GetDescendants()) do
if zwpy:IsA(_d("MgYSVmQGHgQ")) and zwpy.Name == _d("JwYVVkY") then
table.insert(ho, zwpy)
end
end

fyo = ho
shnq = os.clock()
end

local function kszp(sari)
if type(sari) ~= _d("BAYDX1E") then
return false
end

dk.loaded = true
dk.dirty = false
dk.fishing = sari.fishing == true
dk.autoOn = sari.autoOn == true
dk.autoUnlocked = sari.autoUnlocked == true
dk.casts = tonumber(sari.casts) or dk.casts
dk.totalCasts = tonumber(sari.totalCasts) or dk.totalCasts
dk.luck = tonumber(sari.luck) or dk.luck
dk.rod = tostring(sari.equippedRod or dk.rod)
dk.castTime = tonumber(sari.castTime) or dk.castTime
dk.tutorialStep = tonumber(sari.tutorialStep) or dk.tutorialStep

if type(sari.rods) == _d("BAYDX1E") then
dk.rodsOwned = sari.rods
end

if type(sari.baits) == _d("BAYDX1E") then
dk.baitsOwned = sari.baits
end

if type(sari.boats) == _d("BAYDX1E") then
dk.boatsOwned = sari.boats
end

if type(sari.mats) == _d("BAYDX1E") then
dk.mats = sari.mats
end

if sari.bootOwned ~= nil then
dk.boot.owned = sari.bootOwned == true
end

if sari.bootEquipped ~= nil then
dk.boot.equipped = sari.bootEquipped == true
end

if sari.equippedBait ~= nil then
dk.equippedBait = tostring(sari.equippedBait)
end

if sari.activeBoat ~= nil then
dk.activeBoat = tostring(sari.activeBoat)
end

dk.boatTier = tonumber(sari.boatTier) or dk.boatTier
dk.islandLocked = sari.islandLocked == true
dk.rebirths = tonumber(sari.rebirths) or dk.rebirths

if type(sari.rebirthCards) == _d("BAYDX1E") then
dk.rebirthCards = sari.rebirthCards
end

dk.lastSync = os.time()

return true
end

local function ps()
local rm, eoaw = pcall(function()
return vxjo.FishingGetState:InvokeServer()
end)

if not rm or type(eoaw) ~= _d("BAYDX1E") then
dk.loaded = false
return false
end

return kszp(eoaw)
end

local ve = false

local function wqak()
if ve then
return false
end

local ojqi = qgqr.Character

if not ojqi then
return false
end

if ojqi:FindFirstChild(_d("Ng4SW10JCyIIBQ")) then
return true
end

local npqy = qgqr:FindFirstChild(_d("MgYCWEQGDxs"))
local mr = npqy and npqy:FindFirstChild(_d("Ng4SW10JCyIIBQ"))
local tos = ojqi:FindFirstChildOfClass(_d("OBIMUloIBRQ"))

if not (mr and tos) then
return false
end

return pcall(function()
tos:EquipTool(mr)
end)
end

local function kiy()
local dr = qgqr.Character
local uk = dr and dr:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not uk then
return nil
end

local xwh = RaycastParams.new()
xwh.FilterType = Enum.RaycastFilterType.Exclude
xwh.FilterDescendantsInstances = { dr }

local ejxo = 24
local bdb = {}
local lj = 0

for ejj = 0, ejxo - 1 do
local wqpv = math.rad(ejj * (360 / ejxo))
local zaw = Vector3.new(math.sin(wqpv), 0, math.cos(wqpv))
local sz = uk.Position + zaw * 20 + Vector3.new(0, 40, 0)
local ur = workspace:Raycast(sz, Vector3.new(0, -120, 0), xwh)
local ikrk = ur and (uk.Position.Y - ur.Position.Y) or 120

bdb[ejj] = ikrk > 12

if bdb[ejj] then
lj = lj + 1
end
end

if lj == 0 then
return nil
end

local ri, fr = nil, 0

for oxs = 0, ejxo - 1 do
if bdb[oxs] and not bdb[(oxs - 1) % ejxo] then
local gv = 0

while gv < ejxo and bdb[(oxs + gv) % ejxo] do
gv = gv + 1
end

if gv > fr then
ri = oxs
fr = gv
end
end
end

if not ri then
return nil
end

local ipau = ri + (fr - 1) / 2
local jax = math.rad(ipau * (360 / ejxo))

return Vector3.new(math.sin(jax), 0, math.cos(jax))
end

local function pmlk()
local fgrz = qgqr.Character
local qh = fgrz and fgrz:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not qh then
return nil
end

if #fyo == 0 or os.clock() - shnq > 20 then
qqk()
end

local omj, ijrw = nil, math.huge

for km, oca in ipairs(fyo) do
if oca.Parent then
local ul = (oca.Position - qh.Position).Magnitude

if ul < ijrw then
ijrw = ul
omj = oca
end
end
end

if not omj or ijrw > 25 then
local qoge = kiy()

if qoge then
return qoge
end
end

if not omj then
return nil
end

local ejcu = Vector3.new(omj.Position.X - qh.Position.X, 0, omj.Position.Z - qh.Position.Z)

if ejcu.Magnitude < 0.05 then
return Vector3.new(0, 0, -1)
end

return ejcu.Unit
end

local function ehve()
local fax = qgqr.Character
local gng = fax and fax:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not gng then
return nil
end

local pda = gng.CFrame.LookVector
local uyfh = Vector3.new(pda.X, 0, pda.Z)

if uyfh.Magnitude < 0.05 then
return nil
end

return uyfh.Unit
end

local function aj()
local wcg = qgqr.Character
local qhwc = wcg and wcg:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not qhwc then
return false
end

local led = uzyu
local xgq = RaycastParams.new()
xgq.FilterType = Enum.RaycastFilterType.Exclude
xgq.FilterDescendantsInstances = { wcg }

local ufq = workspace:Raycast(uzyu + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), xgq)

if ufq and ufq.Instance.Name ~= _d("JwYVVkY") then
led = Vector3.new(uzyu.X, ufq.Position.Y + 3, uzyu.Z)
end

qhwc.CFrame = CFrame.new(led)
task.wait(0.5)
qqk()

return true
end

local function tvd()
local wy = qgqr.Character
local dxm = wy and wy:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not dxm then
return false
end

local riu = Vector3.new(uzyu.X - dxm.Position.X, 0, uzyu.Z - dxm.Position.Z)
local fsgp = riu.Magnitude

if fsgp < 2 then
return false
end

local ahk = riu.Unit

if fsgp > 12 then
local ha = math.min(14, fsgp - 6)
local djim = dxm.Position + ahk * ha
local ayg = RaycastParams.new()
ayg.FilterType = Enum.RaycastFilterType.Exclude
ayg.FilterDescendantsInstances = { wy }

local nte = workspace:Raycast(djim + Vector3.new(0, 25, 0), Vector3.new(0, -80, 0), ayg)

if nte and nte.Instance.Name ~= _d("JwYVVkY") then
local wb = nte.Position.Y + 3.2

if math.abs(wb - dxm.Position.Y) <= 10 then
local xtf = Vector3.new(nte.Position.X, wb, nte.Position.Z)
dxm.CFrame = CFrame.lookAt(xtf, xtf + ahk)

return true
end
end
end

dxm.CFrame = CFrame.lookAt(dxm.Position, dxm.Position + ahk)

return true
end

local qeuf = {}

qeuf.surfaceWait = 8

qeuf.walking = false
qeuf.walkStartedAt = 0

qeuf.islandHold = Vector3.new(-7384, 16.3, -40539)

qeuf.custom = nil
qeuf.customIsland = nil

qeuf.islandAnchors = {
{ id = _d("EQUAXVAIAhUDPlpHCw0eAw"), x = -3800 },
{ id = _d("BBAIXWsFCREECVZH"), x = -6180 },
{ id = _d("Bw4PV1kOABw4CEBYAg"), x = -7480 },
}

qeuf.arrivals = {
abandoned_island = Vector3.new(-3825, 24, -40260),
twin_beaches = Vector3.new(-6180, 40, -40350),
windmill_isle = Vector3.new(-7480, 30, -40350),
lobby = Vector3.new(-499, 17, -40234),
}

function qeuf.islandOf(sxe)
if not sxe then
return _d("HAgDUU0")
end

if sxe.X > -4500 then
return _d("HAgDUU0")
end

local qzi, bzog = _d("EQUAXVAIAhUDPlpHCw0eAw"), math.huge

for ky, nd in ipairs(qeuf.islandAnchors) do
local mc = math.abs(sxe.X - nd.x)

if mc < bzog then
qzi = nd.id
bzog = mc
end
end

return qzi
end

qeuf.savedVersion = 2

do
local wjb = getgenv().ACBXDeepSpot

if type(wjb) == _d("BAYDX1E") and wjb.v == qeuf.savedVersion
and tonumber(wjb.X) and tonumber(wjb.Y) and tonumber(wjb.Z) then
qeuf.custom = Vector3.new(tonumber(wjb.X), tonumber(wjb.Y), tonumber(wjb.Z))
qeuf.customIsland = wjb.island
end
end

function qeuf.spot()
return qeuf.custom or qeuf.islandHold
end

function qeuf.dropStale()
if not qeuf.custom then
return false
end

if qeuf.zoneAt(qeuf.custom) then
return false
end

qeuf.custom = nil
qeuf.customIsland = nil
getgenv().ACBXDeepSpot = nil

return true
end

function qeuf.capture()
local vujh = qgqr.Character
local jypc = vujh and vujh:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not jypc then
return false, _d("PghBUFwGHhEEFVZGRxgfRxNWVQNMEUcSQ1sTTBYVDl4a")
end

local dqe = jypc.Position
local hh = qeuf.floorAt(Vector3.new(dqe.X, dqe.Y + 10, dqe.Z))

if not hh then
return false, _d("IxMAXVBHAx5HElxYDghQABNcQQkIUAEIQUcTTF1HFVtdFEwDFw5HFA8NA0cPXBQBAB8IExNACEwTBhJHFAEeHwpP")
end

local uaq = qeuf.zoneAt(dqe)

if not uaq then
return false, _d("JA8IQBQUHB8TQVpHRwMFExJaUAJMFREEQU1HChkUCVpaAEwCDg9UFEpMAxMAXVBHAwYCExNADwlQEABHURVMFg4TQEBJ")
end

qeuf.custom = dqe
qeuf.customIsland = qeuf.islandOf(dqe)

getgenv().ACBXDeepSpot = {
X = dqe.X,
Y = dqe.Y,
Z = dqe.Z,
island = qeuf.customIsland,
v = qeuf.savedVersion,
}

return true, _d("IwYXVlBHGBgOEhNHFwMERwBAFBMEFUcFVlEXQQcGFVZGRwQfCwUTHA") .. tostring(uaq.name) .. _d("WUk")
end

function qeuf.zoneTable()
local oau = {}

if ggzk and type(ggzk.Zones) == _d("BAYDX1E") then
for baxi, vcux in ipairs(ggzk.Zones) do
oau[#oau + 1] = {
id = tostring(vcux.id),
name = tostring(vcux.name or vcux.id),
half = tonumber(vcux.half) or 0,
luck = tonumber(vcux.luck) or 0,
index = tonumber(vcux.index) or 0,
boatTier = tonumber(vcux.boatTier) or 0,
}
end
end

table.sort(oau, function(dm, adgj)
return dm.index < adgj.index
end)

return oau
end

function qeuf.zoneAt(qjkj)
local nvr = ggzk and ggzk.ZoneCenter
local naf = qeuf.zoneTable()

if not (nvr and qjkj and #naf > 0) then
return nil
end

local dc = math.max(math.abs(qjkj.X - nvr.X), math.abs(qjkj.Z - nvr.Z))

for zkjg, op in ipairs(naf) do
if dc < op.half then
return op
end
end

return nil
end

function qeuf.current()
local vwe = qgqr.Character
local yf = vwe and vwe:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

return yf and qeuf.zoneAt(yf.Position) or nil
end

function qeuf.sync()
local ypuz = qeuf.current()
dk.zoneId = ypuz and ypuz.id or nil
end

function qeuf.floorAt(ukrz)
local cqq = qgqr.Character
local pcw = RaycastParams.new()
pcw.FilterType = Enum.RaycastFilterType.Exclude
pcw.FilterDescendantsInstances = { cqq }

local lr = workspace:Raycast(Vector3.new(ukrz.X, ukrz.Y + 20, ukrz.Z), Vector3.new(0, -80, 0), pcw)

if lr and lr.Instance.Name ~= _d("JwYVVkY") then
return lr
end

return nil
end

function qeuf.ensureSpotMap()
local ifsp = qeuf.spot()
local btt = Vector3.new(ifsp.X, ifsp.Y + 20, ifsp.Z)

if qeuf.floorAt(btt) then
return true
end

local ih = workspace:FindFirstChild(_d("PQYRQA"))

if ih and ih:FindFirstChild(_d("MwgAQEAGADwIA1FN")) then
if os.clock() - (qeuf.hopAt or 0) > 1 then
qeuf.hopAt = os.clock()
qeuf.hop(ifsp)
dk.lastMessage = _d("PQgXWloATAQIQUdcAkwUAgRDGRANBAITE0cXAwQ")
end

return false
end

if os.clock() - (qeuf.islandAskedAt or 0) > 1.2 then
qeuf.islandAskedAt = os.clock()

local vjt = qeuf.customIsland or qeuf.islandOf(ifsp)

if vjt == _d("HAgDUU0") then
pcall(function()
vxjo.TeleportToWorld:FireServer(_d("HAgDUU0"))
end)
else
pcall(function()
vxjo.FishingIslandTeleport:FireServer(_d("BwYYQ1sOAgQ"), vjt)
end)
end

dk.lastMessage = _d("JAYKWloATAQPBBNTBgEVQBITQAIAFRcOQUBHGB9HFVtRRwgVAhEeQwYYFRVBXlUX")
end

return false
end

function qeuf.hop(sayg)
local tbqn = qgqr.Character
local uym = tbqn and tbqn:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))
local zp = tbqn and tbqn:FindFirstChildOfClass(_d("OBIMUloIBRQ"))

if not (uym and zp) then
return false
end

if zp.SeatPart then
pcall(function()
zp.Sit = false
end)
end

uym.AssemblyLinearVelocity = Vector3.zero
uym.CFrame = CFrame.new(Vector3.new(sayg.X, sayg.Y + 8, sayg.Z))

return true
end

function qeuf.faceWater()
local cclt = qgqr.Character
local hwm = cclt and cclt:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not hwm then
return false
end

local mxdj = pmlk()

if not mxdj then
local pk = ggzk and ggzk.ZoneCenter

if pk then
local zptv = Vector3.new(pk.X - hwm.Position.X, 0, pk.Z - hwm.Position.Z)

mxdj = zptv.Magnitude > 1 and zptv.Unit or nil
end
end

if not mxdj then
return false
end

hwm.CFrame = CFrame.lookAt(hwm.Position, hwm.Position + mxdj)

return true
end

function qeuf.aimWater(kp)
local tfle = qgqr.Character
local ora = tfle and tfle:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not ora then
return false
end

if kp then
qqk()
end

local idm = ora.CFrame.LookVector
local vh = Vector3.new(idm.X, 0, idm.Z)
local kd = pmlk()

if not kd then
return false
end

if vh.Magnitude > 0.05 and vh.Unit:Dot(kd) > 0.985 then
return true
end

ora.CFrame = CFrame.lookAt(ora.Position, ora.Position + kd)

return true
end

function qeuf.hold(kinj)
local thor = qgqr.Character
local mq = thor and thor:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))
local wkxh = thor and thor:FindFirstChildOfClass(_d("OBIMUloIBRQ"))

if not (mq and wkxh) then
return false
end

if wkxh.SeatPart then
pcall(function()
wkxh.Sit = false
end)
end

local uz = qeuf.floorAt(kinj)

if not uz then
return false
end

mq.AssemblyLinearVelocity = Vector3.zero
mq.CFrame = CFrame.new(Vector3.new(kinj.X, uz.Position.Y + 3.2, kinj.Z))

pcall(qeuf.aimWater, true)

dk.phase = _d("GQMNVg")
dk.nextCastAt = 0

return true
end

function qeuf.dive()
local md = qeuf.spot()

if not qeuf.ensureSpotMap() then
return false
end

if not qeuf.hold(md) then
return false
end

qeuf.islandAskedAt = 0

local xi = qeuf.zoneAt(md)

dk.lastMessage = xi
and (_d("OAgNV10JC1ATCVYUAwkVF0xEVRMJAkcSQ1sTTFg") .. tostring(xi.name) .. _d("WQ"))
or _d("OAgNV10JC1ATCVYUAwkVF0xEVRMJAkcSQ1sT")

task.wait(0.25)
qeuf.sync()
dk.deepDiveAt = os.clock() + 2

return true
end

function qeuf.walk()
local wdw = qgqr.Character
local yxat = wdw and wdw:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if qeuf.walking and os.clock() - (qeuf.walkStartedAt or 0) < 60 then
return false
end

if not yxat then
return false
end

local ot = qeuf.spot()

if (yxat.Position - Vector3.new(ot.X, yxat.Position.Y, ot.Z)).Magnitude <= 8 then
dk.phase = _d("GQMNVg")
dk.nextCastAt = 0

return true
end

qeuf.walking = true
qeuf.walkStartedAt = os.clock()
dk.deepPhase = _d("BwYNWA")
dk.deepStageAt = os.clock()
dk.lastMessage = _d("JwYNWF0JC1ATDhNADwlQAwRWRAIfBEcWUkACHlAUEVxA")

task.spawn(function()
local fgeo = wdw and wdw:FindFirstChildOfClass(_d("OBIMUloIBRQ"))

local notm, gsej = pcall(function()

local bkx = workspace:FindFirstChild(_d("PQYRQA"))
local jy = qeuf.customIsland or qeuf.islandOf(ot)
local sn = (yxat.Position - Vector3.new(ot.X, yxat.Position.Y, ot.Z)).Magnitude

if sn > 400 then
if not (bkx and bkx:FindFirstChild(_d("MwgAQEAGADwIA1FN"))) then
pcall(function()
vxjo.TeleportToWorld:FireServer(_d("HAgDUU0"))
end)

local xxf = os.clock() + 20

while dk.deepWalk and os.clock() < xxf do
local fww = workspace:FindFirstChild(_d("PQYRQA"))

if fww and fww:FindFirstChild(_d("MwgAQEAGADwIA1FN")) then
break
end

task.wait(0.5)
end
end

if dk.deepWalk then
local mdj = qeuf.arrivals and qeuf.arrivals[jy]

if mdj then
qeuf.hop(mdj)
else
local zajw = Vector3.new(ot.X - yxat.Position.X, 0, ot.Z - yxat.Position.Z)
local ar = zajw.Magnitude > 1 and zajw.Unit or Vector3.new(1, 0, 0)

qeuf.hop(Vector3.new(ot.X - ar.X * 120, ot.Y, ot.Z - ar.Z * 120))
end

task.wait(1.5)
end
end

if dk.deepWalk and fgeo then

local vl = (yxat.Position - Vector3.new(ot.X, yxat.Position.Y, ot.Z)).Magnitude
local koul = os.clock() + math.clamp(vl / 8, 30, 600)
local zwu = 0
local kro = yxat.Position
local ft = os.clock()

while dk.deepWalk and os.clock() < koul do
local ack = Vector3.new(ot.X - yxat.Position.X, 0, ot.Z - yxat.Position.Z)

if ack.Magnitude <= 3 then
break
end

if os.clock() - zwu >= 0.25 then
fgeo:MoveTo(Vector3.new(ot.X, yxat.Position.Y, ot.Z))
zwu = os.clock()
end

if os.clock() - ft >= 1.2 then
if (yxat.Position - kro).Magnitude < 2 then
fgeo.Jump = true
end

kro = yxat.Position
ft = os.clock()
end

task.wait(0.1)
end

fgeo:MoveTo(yxat.Position)
end
end)

qeuf.walking = false

if not notm then
dk.deepPhase = _d("GQMNVg")
dk.deepStageAt = os.clock()
dk.lastMessage = _d("JwYNWBQTA1AjBFZEAh8ERzZSQAIeUAEAWlgCCEpH") .. tostring(gsej)

return
end

if not dk.deepWalk then
return
end

local tyq = Vector3.new(yxat.Position.X - ot.X, 0, yxat.Position.Z - ot.Z)

if tyq.Magnitude <= 6 then

pcall(qeuf.aimWater, true)
dk.phase = _d("GQMNVg")
dk.nextCastAt = 0
dk.deepPhase = _d("GAgNVw")
dk.deepStageAt = os.clock()
qeuf.sync()
dk.lastMessage = _d("JwYNWFEDTAQIQUdcAkwDBhdWUEcIFQIRHkMGGBUVQUBECBg")
else

dk.deepPhase = _d("GQMNVg")
dk.deepStageAt = os.clock()
dk.lastMessage = _d("MwgUX1BHAh8TQURVCwdQEw4TQA8JUAMEVkQCHwRHFlJAAh5QFBFcQEdBUBMTSl0JC1AGBlJdCQ")
end
end)

return false
end

function qeuf.settle()
for efwz = 1, 30 do
if not dk.deepZone or dk.deepWalk then
return false
end

if qeuf.dive() then
return true
end

task.wait(1)
end

return false
end

function qeuf.surface()
local khan = qgqr.Character
local mk = khan and khan:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not mk then
return false
end

local kyte = RaycastParams.new()
kyte.FilterType = Enum.RaycastFilterType.Exclude
kyte.FilterDescendantsInstances = { khan }

local sejj = workspace:Raycast(uzyu + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), kyte)
local xgxi = uzyu

if sejj and sejj.Instance.Name ~= _d("JwYVVkY") then
xgxi = Vector3.new(uzyu.X, sejj.Position.Y + 3, uzyu.Z)
end

mk.CFrame = CFrame.new(xgxi)
dk.phase = _d("GQMNVg")
dk.nextCastAt = 0

return true
end

function dk.gotoIsland()
local akp = qgqr.Character
local lwh = akp and akp:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))
local ukcf = workspace:FindFirstChild(_d("ORQNUloDKhkUCVZGCg0eKTFw"), true)

if not (lwh and ukcf) then
return false
end

local zf = ukcf:GetPivot()
local byb = RaycastParams.new()
byb.FilterType = Enum.RaycastFilterType.Exclude
byb.FilterDescendantsInstances = { akp, ukcf }

local vk = nil
local wf = -math.huge

for iar, ed in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local ap = workspace:Raycast(zf.Position + ed + Vector3.new(0, 30, 0), Vector3.new(0, -120, 0), byb)

if ap and ap.Position.Y > wf then
vk = ap
wf = ap.Position.Y
end
end

if vk then
lwh.CFrame = CFrame.new(Vector3.new(vk.Position.X, wf + 3.5, vk.Position.Z))
else
lwh.CFrame = CFrame.new(zf.Position + Vector3.new(0, 4, 0))
end

dk.phase = _d("GQMNVg")
dk.nextCastAt = 0

return true
end

function qeuf.cycle()
local iedf = os.clock()
local dajz = dk.deepPhase or _d("GQMNVg")
local gai = tonumber(dk.deepStageAt) or 0

if iedf < math.max(dk.shopTripUntil or 0, dk.tpHoldUntil or 0) then
return
end

if dajz == _d("GQMNVg") then
dk.deepPhase = _d("GAgNVw")
dk.deepStageAt = iedf

if dk.deepWalk then
qeuf.walk()
else
qeuf.dive()
end

return
end

if dajz == _d("BwYNWA") then
return
end

if dajz == _d("GAgNVw") then
local ldw = qeuf.current()

local sew = qeuf.zoneAt(qeuf.spot())

if ldw and not qgqr:GetAttribute(_d("IxAIXlkOAhc")) and iedf - (dk.deepAimAt or 0) > 2 then
dk.deepAimAt = iedf
pcall(qeuf.aimWater)
end

if qgqr:GetAttribute(_d("IxAIXlkOAhc")) then
if dk.deepWalk then

dk.deepPhase = _d("GQMNVg")
dk.deepStageAt = iedf
else
dk.deepPhase = _d("FA4R")
dk.deepStageAt = iedf
dk.lastMessage = _d("IxAIXlkOAhdHAEcUEwQVRwVWURdMAxcORxRKTAMSE1VVBAkURwdcRkcNGRU")
end
elseif not ldw or (sew and ldw.index < sew.index) then

dk.deepPhase = _d("GQMNVg")
dk.deepStageAt = iedf
end

return
end

if dajz == _d("FA4R") then
qeuf.surface()
dk.deepPhase = _d("AxITVVUECQ")
dk.deepStageAt = iedf

return
end

if dajz == _d("AxITVVUECQ") and iedf - gai >= qeuf.surfaceWait then
dk.deepPhase = _d("GQMNVg")
end
end

local function qhak()
local zxb = qgqr.Character
local kpzx = zxb and zxb:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not kpzx then
return false
end

return (kpzx.Position - uzyu).Magnitude <= 12
end

local function nx()
if not wqak() then
return false
end

local aize = pcall(function()
vxjo.FishingSetAuto:FireServer(true)
end)

dk.usingGameAuto = aize
return aize
end

local function rljf()
dk.usingGameAuto = false

pcall(function()
vxjo.FishingSetAuto:FireServer(false)
end)

pcall(function()
vxjo.FishingStop:FireServer()
end)
end

function dk.recover()
dk.phase = _d("GQMNVg")
dk.nextCastAt = 0
dk.deepPhase = _d("GQMNVg")
dk.deepStageAt = 0
dk.deepDiveAt = 0
dk.waterRefusals = 0
dk.usingGameAuto = false
dk.castMark = dk.totalCasts
dk.castMarkAt = os.clock()

pcall(rljf)
pcall(wqak)

if dk.deepZone and not qeuf.current() then

pcall(function()
vxjo.TeleportToWorld:FireServer(_d("HAgDUU0"))
end)
elseif dk.tpToBay and not qhak() then
pcall(aj)
end

dk.lastMessage = _d("Ng4SW10JC1AUFVJYCwkUR0wTRgIfFRNBR1wCTAcGFVZGRw0eA0FHWwgHUBMJVhQADR0CRkAUCwMSBRgTRggb")
end

local function nyxe()
if not wqak() then
dk.lastMessage = _d("PghBVV0UBBkJBhNGCAhQDg8TQA8JUAUAUF8XDRMM")
return false
end

local cxmm = ehve()
local iaf = pmlk()
local bkte = cxmm or iaf

if not bkte then
dk.lastMessage = _d("PghBRFUTCQJHB1xBCQhQCQRSRgUV")
return false
end

if cxmm and iaf and cxmm:Dot(iaf) < 0.25 then
bkte = iaf
end

dk.phase = _d("EwYSR10JCw")
dk.lastMessage = nil
dk.watchdogAt = os.clock() + 25

local dnx, tmz = pcall(function()
vxjo.FishingThrow:FireServer(1, bkte)
end)

if not dnx then
dk.phase = _d("GQMNVg")
dk.lastMessage = tostring(tmz)
dk.nextCastAt = os.clock() + 3
return false
end

return true
end

local zgww = xftw(vxjo.FishingUpdate.OnClientEvent, function(aef, qy)
dk.dirty = true

if aef == _d("IxMAR1E") then
if type(qy) == _d("BAYDX1E") then
dk.autoOn = qy.autoOn == true
end

return
end

if aef == _d("MwYSRw") then
dk.phase = _d("BwYIR10JCzIOFVY")
dk.waterRefusals = 0
return
end

if aef == _d("Mg4VVg") then
local um = type(qy) == _d("BAYDX1E") and tonumber(qy.warning) or 1

dk.phase = _d("AgIEX10JCw")
dk.watchdogAt = os.clock() + 15

task.delay(math.max(0.3, um + 0.8), function()
if dk.phase ~= _d("AgIEX10JCw") then
return
end

pcall(function()
vxjo.FishingReel:FireServer(true, 120)
end)

dk.phase = _d("AgISXFgRBR4A")
end)

return
end

if aef == _d("MwYVUFw") then

local vgmv = type(qy) == _d("BAYDX1E") and tonumber(qy.totalCasts) or nil
local zus = tonumber(getgenv().ACBXFishingCatchMark) or 0

if vgmv and vgmv <= zus and zus - vgmv < 25 then
return
end

if vgmv then
getgenv().ACBXFishingCatchMark = vgmv
end

local xsm = type(qy) == _d("BAYDX1E") and tostring(qy.itemId) or _d("BQkKXVsQAg")
local qhoh = dk.catchName(xsm)

dk.catches[xsm] = (dk.catches[xsm] or 0) + 1
dk.totalCatches = (dk.totalCatches or 0) + 1

local te = type(qy) == _d("BAYDX1E") and qy.chest or nil

if type(te) == _d("BAYDX1E") and te.itemId then
local ipy = tostring(te.itemId)

dk.catches[ipy] = (dk.catches[ipy] or 0) + 1
end

if os.clock() - (cjsb.at or 0) >= 5 then
cjsb.at = os.clock()
cjsb.save()
end
dk.lastCatch = qhoh
dk.lastMessage = nil
dk.phase = _d("GQMNVg")
dk.nextCastAt = os.clock() + 2.5

if type(qy) == _d("BAYDX1E") then
dk.casts = tonumber(qy.casts) or dk.casts
dk.totalCasts = tonumber(qy.totalCasts) or dk.totalCasts
dk.autoUnlocked = qy.autoUnlocked == true or dk.autoUnlocked
end

return
end

if aef == _d("MRIVXHsBCg") then

dk.usingGameAuto = false
dk.phase = _d("GQMNVg")
dk.nextCastAt = os.clock() + 1
return
end

if aef == _d("NRQCUkQCCA") then
dk.phase = _d("GQMNVg")
dk.lastMessage = _d("JA8EE1IOHxhHBlxARw0HBhg")
dk.nextCastAt = os.clock() + 2.5
return
end

if aef == _d("IgILVlcTCRQ") then
dk.phase = _d("GQMNVg")

local tpbg = type(qy) == _d("BAYDX1E") and tostring(qy.message) or _d("MwYSRxQVCRoCAkdRAw")
dk.lastMessage = tpbg

if tpbg:lower():find(_d("BwYVVkY"), 1, true) then
dk.waterRefusals = (dk.waterRefusals or 0) + 1

if dk.waterRefusals >= 2 then
dk.waterRefusals = 0

if tvd() then
dk.lastMessage = _d("IgIHRkcCCFATFlpXAkxdRxVGRgkJFEcDUlcMTAQIFlJGA0wEDwQTQwYYFRU")
dk.nextCastAt = os.clock() + 1.5
return
end
end

dk.nextCastAt = os.clock() + 8
return
end

dk.waterRefusals = 0
dk.nextCastAt = os.clock() + 3
return
end
end)

local function gk()
if not dk.loaded then
return _d("IgIAV10JC1ABCEBcDgIXRxJHVRMJXklP")
end

local bcr = dk.autoUnlocked == true
or (dk.totalCasts or 0) > 0
or (dk.tutorialStep or 0) > 0
local zsg = ggzk and ggzk.RodsById and ggzk.RodsById[dk.rod]
local jvqr = zsg and tostring(zsg.name) or tostring(dk.rod)
local kg = math.floor((tonumber(dk.luck) or 0) * 100 + 0.5)

local kx = {
_d("IggFCRQ") .. jvqr,
_d("PBICWA5H") .. kg .. _d("VQ"),
}

local rbie = qeuf.current()

if rbie then
table.insert(kx, _d("KggPVg5H") .. rbie.name .. _d("UE9K") .. tostring(math.floor(rbie.luck * 100 + 0.5)) .. _d("VUcNRlcMRQ"))
end

table.insert(kx, _d(""))
table.insert(kx, _d("MwYSR0dHGB9HEkNRCQhKRw") .. gb(dk.casts or 0))
table.insert(kx, _d("JAgVUlhHDxEUFUAORw") .. gb(dk.totalCasts or 0))

table.insert(kx, _d(""))
table.insert(kx, _d("Ng4SW10JC1ASD19bBAcVA1sT") .. (bcr and _d("CQIS") or _d("Hgg")))
table.insert(kx, _d("MRIVXBkBBQMPQUZEAB4RAwQJFA") .. (dk.autoUnlocked and _d("HxAPVlA") or _d("HggVE1sQAhUD")))

if dk.enabled then
local rz = dk.usingGameAuto and _d("FwYMVhQGGQQI") or tostring(dk.phase)

if rz == _d("BwYIR10JCzIOFVY") then
rz = _d("BwYIR10JC1ABDkEUBkwSDhVW")
elseif rz == _d("AgIEX10JCw") then
rz = _d("AgIEX10JC1AODw")
elseif rz == _d("AgISXFgRBR4A") then
rz = _d("HAYPV10JC1AOFQ")
end

table.insert(kx, _d(""))
table.insert(kx, _d("MRIVXBQhBQMPWxM") .. rz)

local dl = cjgg.worldBoss

if dl and type(dl.hasWork) == _d("FhIPUEAOAx4") and dl.enabled and dl.hasWork() then
table.insert(kx, _d("OAgNV10JC0pHBl9bBQ0cRwNcRxRMGRRBRkRHRAICEkZZAh9QCA8TXRMfUAQOXFgDAwcJSA"))
end

if dk.lastCatch then
table.insert(kx, _d("PAYSRxQEDQQECQkU") .. dk.lastCatch)
end
end

if dk.lastMessage then
table.insert(kx, _d(""))
table.insert(kx, _d("PggVVg5H") .. dk.lastMessage)
end

return table.concat(kx, _d("eg"))
end

local function xl()
local qhjm = 0

for ceqm, xipi in pairs(dk.catches) do
local aa = rbao.ById[ceqm]

if not (aa and aa.type == _d("Ew8EQEA")) then
qhjm = qhjm + xipi
end
end

return qhjm
end

local function eknh()
local yzv = {}

for uulq, hfyw in pairs(dk.catches) do
local pt = rbao.ById[uulq]
local rvvp = pt and pt.type == _d("Ew8EQEA") or false

table.insert(yzv, {
name = dk.catchName(uulq),
count = hfyw,
chest = rvvp,
rank = rvvp and (tonumber(pt.border) or 1) or 0,
})
end

if #yzv == 0 then
return _d("PggVW10JC1AEAEZTDxhQHgRHGm1mJBITXRQIAlAmFEdbRyoZFAkTVQkIUBMJVhQTDRwLGBNHEw0CExITXAIeFUlBekBHHxERBEAUDhgDAg1VGEcfH0cIRxQEDQIVCFZHRwMGAhMTWgIUBEcSVkcUBR8JTw")
end

table.sort(yzv, function(aju, hc)
if aju.chest ~= hc.chest then
return aju.chest
end

if aju.chest and aju.rank ~= hc.rank then
return aju.rank > hc.rank
end

if aju.count ~= hc.count then
return aju.count > hc.count
end

return aju.name < hc.name
end)

local afjj = {}

for xoik, sdt in ipairs(yzv) do
table.insert(afjj, sdt.name .. _d("UIXhpxQ") .. gb(sdt.count))
end

local odp = {
table.concat(afjj, _d("em0")),
_d(""),
_d("JAgVUlhHDxESBltAXUw") .. gb(xl()) .. _d("UKXWEw") .. #yzv .. _d("UAwIXVAU"),
}

if dk.lastCatch then
table.insert(odp, _d("PAYSRxQEDQQECQkU") .. tostring(dk.lastCatch))
end

return table.concat(odp, _d("eg"))
end

local aud = {
rod = Vector3.new(-493, 18, -40254),
bait = Vector3.new(-493, 18, -40254),
}

local function ek(iwl)
if not ggzk then
return {}
end

local mzj

if iwl == _d("AggF") then
mzj = ggzk.RodsById
elseif iwl == _d("EgYIRw") then
mzj = ggzk.BaitsById
else
mzj = nil
end

local hnxe = {}

for jgu, fb in pairs(mzj or {}) do
if not fb.crafted then
table.insert(hnxe, {
id = tostring(jgu),
name = tostring(fb.name or jgu),
cost = tonumber(fb.cost) or 0,
luck = tonumber(fb.luck) or 0,
index = tonumber(fb.index) or 0,
island = fb.shop == _d("GRQNUloD"),
})
end
end

table.sort(hnxe, function(meie, ew)
if meie.index ~= ew.index then
return meie.index < ew.index
end

return meie.cost < ew.cost
end)

return hnxe
end

local function gww(xpjf)
if xpjf == _d("AggF") then
return dk.rodsOwned or {}
elseif xpjf == _d("EgYIRw") then
return dk.baitsOwned or {}
end

return {}
end

local function vgk(wlb)
if wlb == _d("AggF") then
return dk.rod
elseif wlb == _d("EgYIRw") then
return dk.equippedBait
end

return nil
end

local function azm(bt)
local hbg = gww(bt)
local lrhs = nil

for pzt, pc in ipairs(ek(bt)) do
if hbg[pc.id] == true then
lrhs = pc
end
end

if bt == _d("AggF") and ggzk and ggzk.RodsById then
local dgy = ggzk.RodsById.rod_secret

if dgy and hbg.rod_secret == true then
lrhs = {
id = _d("AggFbEcCDwICFQ"),
name = tostring(dgy.name or _d("NR8CUlgODgUV")),
cost = tonumber(dgy.cost) or 0,
luck = tonumber(dgy.luck) or 0,
index = tonumber(dgy.index) or 0,
island = true,
}
end
end

return lrhs
end

local function tl(bx)
if bx.island and dk.islandLocked then
return false
end

return true
end

local function vnnn(bu)
local ytq = gww(bu)
local zk = dk.casts or 0
local qg = nil

for aylu, ub in ipairs(ek(bu)) do
if ytq[ub.id] ~= true and ub.cost <= zk and tl(ub) then
qg = ub
end
end

return qg
end

local function bwya(wo)
local eyd = gww(wo)

for ez, qfnk in ipairs(ek(wo)) do
if eyd[qfnk.id] ~= true and tl(qfnk) then
return qfnk
end
end

return nil
end

local function cxpr(qys, nk)
if not nk then
return _d("HggPVhQIGx4CBQ")
end

return nk.name .. _d("UE9K") .. tostring(math.floor(nk.luck * 100 + 0.5)) .. _d("VUcNRlcMRQ")
end

local function cn()
if not ggzk then
return _d("Ng4SW10JCzQGFVIUCQMERwdcQQkIUEpBQFwIHFADAEdVRxkeBhdSXQsNEgsEHQ")
end

local oe = {}
local yng = { rod = _d("IggF"), bait = _d("MgYIRw") }

for hyb, pbo in ipairs({ _d("AggF"), _d("EgYIRw") }) do
local rzta = azm(pbo)
local xpt = nil

for picn, igjc in ipairs(ek(pbo)) do
if igjc.id == vgk(pbo) then
xpt = igjc.name
end
end

if #oe > 0 then
table.insert(oe, _d(""))
end

table.insert(oe, yng[pbo] .. _d("Skc") .. cxpr(pbo, rzta))
table.insert(oe, _d("PwlBXVsQVlA") .. (xpt or _d("HggPVg")))

local yfg = vnnn(pbo) or bwya(pbo)

if yfg then
local lfci = yfg.cost - (dk.casts or 0)

table.insert(oe, _d("PgIZRw5H") .. yfg.name .. _d("UKXWEw") .. gb(yfg.cost) .. _d("UAQAQEAU"))

if lfci > 0 then
table.insert(oe, _d("PgIEVxQ") .. gb(lfci) .. _d("UAoOQVE"))
end
else
table.insert(oe, _d("PgIZRw5HCQYCE0pADwUeAEFcQwkJFA"))
end
end

table.insert(oe, _d(""))
table.insert(oe, _d("MwYSR0dHGB9HEkNRCQhKRw") .. gb(dk.casts or 0))

if dk.shopMessage then
table.insert(oe, _d(""))
table.insert(oe, dk.shopMessage)
end

return table.concat(oe, _d("eg"))
end

local function th(nh, mul)
local dg = os.clock()

if dg < (dk.shopCallAt or 0) then
return false, _d("AwsORA")
end

dk.shopCallAt = dg + 1.4

local wedu, jxl, dce, zrw = pcall(function()
return vxjo.FishingShop:InvokeServer(nh, mul)
end)

if not wedu then
return false, _d("FRUTXEZH") .. tostring(jxl)
end

kszp(zrw)

if jxl == true then
return true, nil
end

return false, tostring(dce or _d("AgIHRkcCCA"))
end

function dk.rebirthCardsHeld()
local yoz = ggzk and type(ggzk.RebirthCards) == _d("BAYDX1E") and #ggzk.RebirthCards or 0

if yoz == 0 then
return 0, 0
end

local cahu = 0

for lvo, mix in ipairs(ggzk.RebirthCards) do
if dk.rebirthCards[mix.cardId] then
cahu = cahu + 1
end
end

return cahu, yoz
end

function dk.rebirthReady()
local taw, kug = dk.rebirthCardsHeld()

return kug > 0 and taw >= kug and (tonumber(dk.rebirths) or 0) < 1
end

function dk.rebirthText()
local iyj, mey = dk.rebirthCardsHeld()

if mey == 0 then
return _d("Ng4SW10JC1ADAEdVRwIfE0FfWwYIFQNNE0cITAICA1pGEwRQDhITQQkNBgYIX1UFABVJ")
end

if (tonumber(dk.rebirths) or 0) >= 1 then
return _d("IgIDWkYTBBUDTxNgDwlQJgNSWgMDHgIFE30UABEJBRNdFEwfFwRdGg")
end

if iyj >= mey then
return _d("MQsNEw") .. mey .. _d("UAQAQVAUTBYOEltRA0JQNQRSUB5MBAhBQVEFBQITCR0")
end

local zwr = {}

for qxul, rul in ipairs(ggzk.RebirthCards) do
if not dk.rebirthCards[rul.cardId] then
table.insert(zwr, (string.gsub(rul.cardId, _d("LgEIQFw4"), _d(""))))
end
end

return iyj .. _d("Xw") .. mey .. _d("UAQAQVAUQlA0FVpYC0weAgRXFA") .. table.concat(zwr, _d("XEc")) .. _d("Xg")
end

local function vzu(dypa)
local ypnl = qgqr.Character
local wcx = ypnl and ypnl:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not wcx then
return false
end

return (wcx.Position - (aud[dypa] or aud.rod)).Magnitude <= 26
end

local function fqsr(uc, gf)

if gf and gf.island then
if not dk.shopIsland or not dk.shopIsland.toIsland() then
dk.shopMessage = _d("MwgUX1BHAh8TQUFRBg8YRxVbUUcFAwsAXVBHDx8SD0dRFQ")

return false
end

return true
end

if vzu(uc) then
return true
end

local ejf = qgqr.Character
local pmfw = ejf and ejf:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not pmfw then
return false
end

local chaf = aud[uc] or aud.rod
dk.shopTripUntil = os.clock() + 12
dk.shopHoldUntil = os.clock() + 12

pcall(function()
pmfw.CFrame = CFrame.new(chaf)
end)

task.wait(1.2)

return vzu(uc)
end

local function lbc(su, pna, wcxy)
if not wcxy then
return false
end

if (dk.casts or 0) < wcxy.cost then
return false
end

if not fqsr(su, wcxy) then
dk.shopMessage = _d("MwgUX1BHAh8TQUFRBg8YRxVbUUcfGAgRE1IIHlA") .. wcxy.name
return false
end

local scc, iybx = th(pna, wcxy.id)

if not scc then
local zeaa = tostring(iybx)
local od = zeaa:find(_d("JAYNWBQTA1ATCVYUIQUDDwRBWQYC"), 1, true) or zeaa:find(_d("MggARxQjCRELBEE"), 1, true)

if od then

dk.shopMessage = _d("JwYNWF0JC1ASERNACEwEDwQTVwgZHhMEQRQBAwJH") .. wcxy.name
return false
end

if iybx ~= _d("AwsORA") then
dk.shopAt = os.clock() + 15
dk.shopMessage = _d("IwITRVEVTAICB0ZHAghQ") .. wcxy.name .. _d("UE8") .. zeaa .. _d("WQ")
end

return false
end

dk.shopMessage = _d("MggUVFwTTA") .. wcxy.name

return true
end

local function gvc(vhv)
local bvj = azm(vhv)

if not bvj or vgk(vhv) == bvj.id then
return false
end

local brii

if vhv == _d("AggF") then
brii = _d("NRYUWkQ1AxQ")
elseif vhv == _d("EgYIRw") then
brii = _d("NRYUWkQlDRkT")
else
return false
end

local rk, prh = th(brii, bvj.id)

if not rk then
if prh ~= _d("AwsORA") then
dk.shopMessage = _d("MwgUX1BHAh8TQVZFEgUARw") .. bvj.name .. _d("UE8") .. tostring(prh) .. _d("WQ")
end

return false
end

if vhv == _d("AggF") then
dk.rod = bvj.id
elseif vhv == _d("EgYIRw") then
dk.equippedBait = bvj.id
else
return false
end

dk.shopMessage = _d("NRYUWkQXCRRH") .. bvj.name

return true
end

local function nfi()
local mp = dk.shop

if os.time() - (dk.lastSync or 0) >= 5 then
ps()
end

if mp.equipRod then
gvc(_d("AggF"))
end

if mp.equipBait then
gvc(_d("EgYIRw"))
end

if mp.autoBuyRod then
lbc(_d("AggF"), _d("MhIYYVsD"), vnnn(_d("AggF")))
end

if mp.autoBuyBait then
lbc(_d("EgYIRw"), _d("MhIYcVUOGA"), vnnn(_d("EgYIRw")))
end
end

local function hifm()
local ob = dk.shop

return ob.autoBuyRod or ob.autoBuyBait or ob.equipRod or ob.equipBait
end

dk.shopIsland = {
rods = function()
local cx = ggzk and ggzk.RodsById or {}
local gd = {}

for fv, qvvx in pairs(cx) do
if tostring(qvvx.shop) == _d("GRQNUloD") then
table.insert(gd, {
id = tostring(fv),
name = tostring(qvvx.name or fv),
cost = tonumber(qvvx.cost) or 0,
luck = tonumber(qvvx.luck) or 0,
index = tonumber(qvvx.index) or 0,
crafted = qvvx.crafted == true,
})
end
end

table.sort(gd, function(xur, bhdq)
return xur.index < bhdq.index
end)

return gd
end,

angler = function()
local kjod = workspace:FindFirstChild(_d("PjciQA"), true)

if not kjod then
return nil
end

for hk, ds in ipairs(kjod:GetChildren()) do
if ds:GetAttribute(_d("IwICQVETLR4ADVZGKTwz")) then
return ds
end
end

return nil
end,
held = function(fdpo)
return (dk.rodsOwned or {})[fdpo] == true
end,
recipeHeld = function(mjy)
for kqmi, reh in ipairs(mjy or {}) do
local cvu = tonumber((dk.mats or {})[reh.id]) or 0

if cvu < (tonumber(reh.count) or 0) then
return false
end
end

return true
end,
recipeText = function(kli)
local et = {}

for ydtx, ffwc in ipairs(kli or {}) do
local mogu = tonumber((dk.mats or {})[ffwc.id]) or 0
local tzkw = (rbao.ById[ffwc.id] and rbao.ById[ffwc.id].name) or tostring(ffwc.id)

table.insert(et, tzkw .. _d("UA") .. gb(mogu) .. _d("Xw") .. gb(tonumber(ffwc.count) or 0))
end

return table.concat(et, _d("UKXWEw"))
end,

stand = function(rah)
local vd = qgqr.Character
local ts = vd and vd:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not (ts and rah) then
return false
end

local pyv = rah:GetPivot()
local ulz = rah:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw")) or rah:FindFirstChildWhichIsA(_d("MgYSVmQGHgQ"), true)
local muu = ulz and (ulz.CFrame * CFrame.new(0, 0, -5)).Position or nil

if not muu then
local wjsd = RaycastParams.new()
wjsd.FilterType = Enum.RaycastFilterType.Exclude
wjsd.FilterDescendantsInstances = { vd, rah }

local kuc = nil
local amrc = math.huge

for wmyq, pz in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local hm = workspace:Raycast(pyv.Position + pz + Vector3.new(0, 30, 0), Vector3.new(0, -140, 0), wjsd)

if hm and tostring(hm.Instance.Name) ~= _d("JwYVVkY") and hm.Position.Y <= pyv.Position.Y + 10 then
local uu = math.abs(hm.Position.Y - pyv.Position.Y)

if uu < amrc then
kuc = hm
amrc = uu
end
end
end

muu = kuc and Vector3.new(kuc.Position.X, kuc.Position.Y + 3.5, kuc.Position.Z) or (pyv.Position + Vector3.new(0, 4, 0))
end

dk.shopTripUntil = os.clock() + 12

dk.islandTripUntil = os.clock() + 12

pcall(function()
ts.CFrame = CFrame.new(muu)
end)

task.wait(1.2)

return true
end,
atIsland = function()
local ysvs = workspace:FindFirstChild(_d("ORQNUloDKhkUCVZGCg0eKTFw"), true)
local fyf = qgqr.Character
local hu = fyf and fyf:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not (ysvs and hu) then
return false
end

return (hu.Position - ysvs:GetPivot().Position).Magnitude <= 45
end,
toIsland = function()
if dk.shopIsland.atIsland() then
return true
end

dk.shopTripUntil = os.clock() + 12

if not dk.gotoIsland() then
return false
end

task.wait(1.2)

return dk.shopIsland.atIsland()
end,

craftExcalibur = function()
local no = dk.shopIsland.angler()

if not no or dk.shopIsland.held(_d("AggFbEcCDwICFQ")) then
return false
end

if not dk.shopIsland.recipeHeld(ggzk and ggzk.SecretRecipe) then
return false
end

dk.shopIsland.stand(no)

local ixw, us = th(_d("MxUAVUA1AxQ"), _d("AggFbEcCDwICFQ"))

if ixw then
dk.rod = _d("AggFbEcCDwICFQ")
dk.islandMessage = _d("MxUAVUACCFATCVYUIhQTBg1aVhIeUBUOVxQGGFATCVYULwUUAwRdFCYCFwsEQQ")
elseif us ~= _d("AwsORA") then
dk.islandMessage = _d("OA4FV1EJTDEJBl9RFUwCAgdGRwIIUBMJVhQiFBMGDVpWEh5QTw") .. tostring(us) .. _d("WQ")
end

return ixw
end,
craftBoot = function()
if dk.boot.owned or dk.islandLocked then
return false
end

if not dk.shopIsland.recipeHeld(ggzk and ggzk.BootRecipe) then
return false
end

if not dk.shopIsland.toIsland() then
dk.islandMessage = _d("MwgUX1BHAh8TQUFRBg8YRxVbUUcFAwsAXVBHDx8SD0dRFQ")
return false
end

local ozkh, tlc = th(_d("MxUAVUAlAx8T"))

if ozkh then
dk.boot.owned = true
dk.islandMessage = _d("MxUAVUACCFATCVYUKwkXAg9XVRUVUCUOXEA")
elseif tlc ~= _d("AwsORA") then
dk.islandMessage = _d("ORQNUloDTDYOEltRFQERCUFBUQEZAwIFE0APCVAFDlxAR0Q") .. tostring(tlc) .. _d("WQ")
end

return ozkh
end,
best = function()
local fzqu = dk.rodsOwned or {}
local yzoy = nil

for fo, ixg in ipairs(dk.shopIsland.rods()) do
if fzqu[ixg.id] == true and (yzoy == nil or ixg.luck > yzoy.luck) then
yzoy = ixg
end
end

return yzoy
end,

equipBoot = function()
if not dk.boot.owned or dk.boot.equipped then
return false
end

local enat, ove = th(_d("NRYUWkQlAx8T"), true)

if enat then
dk.boot.equipped = true
dk.islandMessage = _d("NRYUWkQXCRRHFVtRRyAVAARdUAYeCUcjXFsT")
elseif ove ~= _d("AwsORA") then
dk.islandMessage = _d("MwgUX1BHAh8TQVZFEgUARxVbUUcOHwgVExw") .. tostring(ove) .. _d("WQ")
end

return enat
end,
active = function()
local bjbg = dk.island

return bjbg.autoRod or bjbg.autoAcc or bjbg.equipAcc
end,
run = function()
local wpdz = dk.island

if os.time() - (dk.lastSync or 0) >= 8 then
ps()
end

if wpdz.autoRod then
dk.shopIsland.craftExcalibur()
end

if wpdz.autoAcc then
dk.shopIsland.craftBoot()
end

if wpdz.equipAcc then
dk.shopIsland.equipBoot()
end
end,
text = function()
if not ggzk then
return _d("Ng4SW10JCzQGFVIUCQMERwdcQQkIUEpBR1wCTBkUDVJaA0wDDw5DFA4fUBIPUkIGBRwGA19RSQ")
end

local inkw = {}
local adjg = dk.rodsOwned or {}

table.insert(inkw, dk.islandLocked and _d("MQUAXVAIAhUDQXpHCw0eA0FaR0cAHwQKVlBHQVAVBFFdFRgYRwdaRhQYXg") or _d("MQUAXVAIAhUDQXpHCw0eA0FaR0cDAAIPHQ"))

for gg, tyhz in ipairs(dk.shopIsland.rods()) do
local necl

if adjg[tyhz.id] == true then
necl = dk.rod == tyhz.id and _d("HxAPVlBHrsdHDl0UCQMH") or _d("HxAPVlA")
elseif tyhz.crafted then
necl = _d("OA4FV1EJTDEJBl9RFUwCAgJaRAI")
else
necl = gb(tyhz.cost) .. _d("UAQAQEAU")
end

table.insert(inkw, tyhz.name .. _d("UIXhpxQ") .. necl)
end

table.insert(inkw, _d(""))

if adjg.rod_secret then
table.insert(inkw, _d("NR8CUlgODgUVWxNbEAIVAw"))
else
local zt = dk.shopIsland.recipeHeld(ggzk.SecretRecipe)

table.insert(inkw, _d("NR8CUlgODgUVWxM") .. (zt and _d("AgICWkQCTAICAFdN") or _d("AgICWkQCTAMPDkFA")))
table.insert(inkw, dk.shopIsland.recipeText(ggzk.SecretRecipe))
end

table.insert(inkw, _d("OA4FV1EJTDEJBl9RFVZQ") .. (dk.shopIsland.angler() and _d("BRdBXVsQ") or _d("HggVE1wCHhU")))
table.insert(inkw, _d(""))

local uuqd = dk.boot
local ychq

if uuqd.equipped then
ychq = _d("PAIGVloDDQIeQXFbCBhKRwRCQQ4cAAIF")
elseif uuqd.owned then
ychq = _d("PAIGVloDDQIeQXFbCBhKRw5EWgII")
elseif dk.shopIsland.recipeHeld(ggzk.BootRecipe) then
ychq = _d("PAIGVloDDQIeQXFbCBhKRxNWVw4cFUcTVlUDFQ")
else
ychq = _d("PAIGVloDDQIeQXFbCBhKRw") .. dk.shopIsland.recipeText(ggzk.BootRecipe)
end

table.insert(inkw, ychq)
table.insert(inkw, _d("MwYSR0dHGB9HEkNRCQhKRw") .. gb(dk.casts or 0))

if dk.islandMessage then
table.insert(inkw, _d(""))
table.insert(inkw, dk.islandMessage)
end

return table.concat(inkw, _d("eg"))
end,
}

task.spawn(function()
ps()
end)

local klg = {
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

getgenv().ACBXAutoBuyHalloween = klg

xftw(vxjo.SyncItems.OnClientEvent, function(de)
if type(de) == _d("BAYDX1E") then
klg.balances = de
klg.lastSync = os.time()
end
end)

vxjo.RequestItemSync:FireServer()

xftw(vxjo.RaidShopState.OnClientEvent, function(pchg)
if type(pchg) == _d("BAYDX1E") and pchg.shopId == _d("GAYNX1sQCRUJ") then
klg.shopState = pchg
klg.stateAt = os.clock()
end
end)

xftw(vxjo.RaidNotify.OnClientEvent, function(hpnj)
local gmk = klg.pending

if not gmk or type(hpnj) ~= _d("AxMTWloA") then
return
end

if hpnj:sub(1, 9) == _d("IDIzcHwmPzUj") then
klg.purchased[gmk.id] = (klg.purchased[gmk.id] or 0) + 1
klg.pending = nil
else
if klg.balances[gmk.currency] then
klg.balances[gmk.currency] = klg.balances[gmk.currency] + gmk.price
end

klg.failedUntil[gmk.id] = os.time() + 5
klg.pending = nil
end
end)

unsr.trip = {
untilAt = 0,
lastTry = 0,
lastResult = nil,
spot = nil,
}

function unsr.merchant()
local af = workspace:FindFirstChild(_d("PjciQA"))
local rs = unsr.shopData and unsr.shopData.NpcName or _d("IBIMQ18OAlAqBEFXDw0eEw")

return af and af:FindFirstChild(rs) or nil
end

function unsr.stand()
local tpp = unsr.merchant()
local pebm = tpp and (tpp:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw")) or tpp:FindFirstChildWhichIsA(_d("MgYSVmQGHgQ")))
local ei = qgqr.Character
local glll = ei and ei:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not (pebm and glll) then
return false
end

unsr.trip.spot = pebm.Position + Vector3.new(0, 3, 4)
glll.AssemblyLinearVelocity = Vector3.zero
glll.CFrame = CFrame.new(unsr.trip.spot)

return true
end

function unsr.fresh()
return klg.shopState ~= nil and os.clock() - klg.stateAt < 30
end

function unsr.guiOpen()
local xf = bvm:FindFirstChild(_d("OAYNX1sQCRUJMltbFysFDg"))
local tkx = xf and xf:FindFirstChild(_d("Iw8OQ3IVDR0C"))

if tkx then
return tkx.Visible == true
end

for qdbv, urlu in ipairs(bvm:GetChildren()) do
if urlu:IsA(_d("IwQTVlEJKwUO")) and urlu.Name:lower():find(_d("GAYNX1sQCRUJ"), 1, true) and urlu.Enabled then
return true
end
end

return false
end

function unsr.close()
local ze = bvm:FindFirstChild(_d("OAYNX1sQCRUJMltbFysFDg"))
local qn = ze and ze:FindFirstChild(_d("Iw8OQ3IVDR0C"))

if not (qn and qn.Visible) then
return false
end

local sb = qn:FindFirstChild(_d("MwsOQFElGQQTDl0"))

if not sb then
for tpgh, abi in ipairs(qn:GetDescendants()) do
if abi:IsA(_d("NxIIcUETGB8J")) and tostring(abi.Name):lower():find(_d("EwsOQFE"), 1, true) then
sb = abi
break
end
end
end

if sb and type(firesignal) == _d("FhIPUEAOAx4") then
pcall(function()
firesignal(sb.MouseButton1Click)
end)

task.wait(0.3)

if not qn.Visible then
return true
end
end

pcall(function()
qn.Visible = false
end)

return true
end

function unsr.spend()
if klg.pending or os.time() - (klg.lastAttempt or 0) < 1 then
return nil
end

local vmy = klg.shopState

for yvg, shj in ipairs(unsr.shopItems) do
if klg.selected[shj.id] and os.time() >= (klg.failedUntil[shj.id] or 0) then
local uylf = shj.stock
local ndt = klg.purchased[shj.id] or 0

if vmy and vmy.stocks and vmy.stocks[shj.id] then
uylf = vmy.stocks[shj.id]
end

if vmy and vmy.bought then
ndt = math.max(ndt, vmy.bought[shj.id] or 0)
end

local ij = uylf and (uylf - ndt) or 1
local uo = klg.balances[shj.currency] or 0

if ij > 0 and uo >= shj.price then
klg.pending = {
id = shj.id,
price = shj.price,
currency = shj.currency,
at = os.time(),
}
klg.lastAttempt = os.time()
klg.balances[shj.currency] = uo - shj.price

pcall(function()
vxjo.BuyRaidItem:FireServer(shj.id, 1)
end)

return shj.id
end
end
end

return nil
end

function unsr.open(tzc)
if not tzc and unsr.fresh() then
return true
end

if not tzc and os.clock() < (unsr.trip.lastTry or 0) + 8 then
return false
end

unsr.trip.lastTry = os.clock()
unsr.trip.untilAt = os.clock() + 12

dk.shopTripUntil = os.clock() + 12
dk.shopHoldUntil = os.clock() + 12
dk.phase = _d("GQMNVg")

local zph = unsr.merchant()
local xlrm = zph and zph:FindFirstChild(_d("IBUOS10KBQQeMUFbChwE"))

if not (zph and xlrm) then
dk.deepPhase = _d("GQMNVg")
unsr.trip.untilAt = os.clock() + 60
unsr.trip.lastResult = _d("JA8EE2QSAQAMCF0UKgkCBAlSWhNMGRRBXVsTTBkJQUdcDh9QBRRaWANC")

return false
end

local oi = os.clock() + 3
local qbqs = 0

while os.clock() < oi do

unsr.stand()

if os.clock() >= qbqs then
qbqs = os.clock() + 0.8

if type(fireproximityprompt) == _d("FhIPUEAOAx4") then
pcall(function()
fireproximityprompt(xlrm)
end)
end

pcall(function()
vxjo.OpenRaidShop:FireServer(_d("GAYNX1sQCRUJ"))
end)
end

if unsr.guiOpen() or unsr.fresh() then
break
end

task.wait(0.1)
end

if not (unsr.guiOpen() or unsr.fresh()) then

dk.deepPhase = _d("GQMNVg")
unsr.trip.untilAt = os.clock() + 60
unsr.trip.lastResult = _d("JA8EE1cIGR4TBEEUAwUURw9cQEcNHhQWVkZHQVAOFRNbCQAJRw5DUQkfUA4PE0APCVAUBFJHCAIRC0FSRgINXg")

return false
end

unsr.trip.lastResult = _d("MwgUXUACHlAIEVZaSQ")

for xm = 1, 3 do
unsr.stand()

if not unsr.spend() then
break
end

task.wait(1.2)
end

pcall(unsr.close)

dk.deepPhase = _d("GQMNVg")

return true
end

local function pygu(xcx)
xcx = math.max(0, math.floor(xcx))
local xs = math.floor(xcx / 3600)
local yxom = math.floor((xcx % 3600) / 60)
local dt = xcx % 60

if xs > 0 then
return string.format(_d("VQMJExFXXhQK"), xs, yxom)
elseif yxom > 0 then
return string.format(_d("VQMMExFXXhQU"), yxom, dt)
end

return string.format(_d("VQMS"), dt)
end

local function eb()
local lt = bvm:FindFirstChild(_d("OAYNX1sQCRUJMltbFysFDg"))
local oajx = lt and lt:FindFirstChild(_d("Iw8OQ3IVDR0C"))
local eivl = oajx and oajx:FindFirstChild(_d("ORMEXngOHwQ"))
local as = {}
local dzb = nil

if eivl then
for sh, waw in ipairs(unsr.shopItems) do
local cm = eivl:FindFirstChild(waw.id)
local gq = cm and cm:FindFirstChild(_d("MggZ"))
local wey = gq and gq:FindFirstChild(_d("IxMOUF8"))

if wey and wey:IsA(_d("JAIZR3gGDhUL")) then
local bamo, apd = wey.Text:match(_d("WEIFGB1CH1pIREAeT0kUTEg"))

if bamo and apd then
as[waw.id] = {
remaining = tonumber(bamo),
total = tonumber(apd),
}
end
end
end
end

if oajx then
for hto, yosk in ipairs(oajx:GetDescendants()) do
if yosk:IsA(_d("JAIZR3gGDhUL")) and yosk.Text:find(_d("AgISVkAUTBkJ"), 1, true) then
dzb = yosk.Text:match(_d("AgISVkAUTBkJREAeT0JbTkU"))
break
end
end
end

return as, dzb
end

local function nej(yaa)
if type(yaa) ~= _d("AxMTWloA") then
return 0
end

local xml = tonumber(yaa:match(_d("WEIFGB0P"))) or 0
local hs = tonumber(yaa:match(_d("WEIFGB0K"))) or 0
local jqfd = tonumber(yaa:match(_d("WEIFGB0U"))) or 0
return xml * 3600 + hs * 60 + jqfd
end

local function ll()
local dief = klg.shopState
local acj, grh = eb()
local xu = {}
local tthd = {}
local pe = {}

for aamt, bc in ipairs(unsr.shopItems) do
local hmz = bc.stock
local gr = nil

if dief and dief.stocks and dief.stocks[bc.id] then
hmz = dief.stocks[bc.id]
end

local nwq = klg.purchased[bc.id] or 0

if dief and dief.bought then
nwq = math.max(nwq, dief.bought[bc.id] or 0)
end

if hmz then
gr = math.max(0, hmz - nwq)
end

if (not dief or not dief.bought) and acj[bc.id] then
gr = acj[bc.id].remaining
hmz = acj[bc.id].total
end

local xokq = bc.currency == _d("GgYCWGsIMxwGD0dRFQI") and _d("PAYPR1EVAgM") or _d("MwYPV00")
local vq

if gr == nil then
vq = bc.shortName
elseif gr <= 0 then
vq = bc.shortName .. _d("UKXWE0cIABRHDkZA")
else
vq = bc.shortName .. _d("UKXWEw") .. tostring(gr) .. _d("Xw") .. tostring(hmz or _d("Tw"))
end

if not tthd[xokq] then
tthd[xokq] = {}
table.insert(pe, xokq)
end

table.insert(tthd[xokq], vq)
end

local bxp = {}

for lzke, vws in ipairs(pe) do
table.insert(bxp, vws)

for vqj, cbl in ipairs(tthd[vws]) do
table.insert(bxp, cbl)
end
end

table.insert(xu, table.concat(bxp, _d("em0")))
table.insert(xu, _d(""))

if dief and type(dief.resetsIn) == _d("HhIMUVEV") then
local avcl = dief.resetsIn - (os.clock() - klg.stateAt)
table.insert(xu, _d("IgISR1sEBwNHCF0U") .. pygu(avcl))
elseif grh then
if klg.uiTimerText ~= grh then
klg.uiTimerText = grh
klg.uiTimerSeconds = nej(grh)
klg.uiTimerAt = os.clock()
end

local ppfy = klg.uiTimerSeconds - (os.clock() - klg.uiTimerAt)
table.insert(xu, _d("IgISR1sEBwNHCF0U") .. pygu(ppfy))
else
table.insert(xu, _d("IgISR1sEBwNHBVJdCxVQpdYTQg4fGRNBR1wCTAMPDkM"))
end

if not unsr.fresh() then
table.insert(xu, unsr.trip.lastResult or _d("JA8EE1cIGR4TBEEUDh9QBA1cRwIIUEpBfEQCAlAUCVxERxsRCwpAFBMEFUcCW1UVDRMTBEEUEhxQEw4TXRNC"))
end

return table.concat(xu, _d("eg"))
end

xftw(vxjo.NPCBattleResult.OnClientEvent, function(qvy)
if type(qvy) ~= _d("BAYDX1E") then
return
end

xup.battlePending = false

if qvy.result == _d("EwgOX1AIGx4") and type(qvy.remaining) == _d("HhIMUVEV") and ivw and ykt then
uxdh(ivw, ykt, os.time() + qvy.remaining)
return
end

if type(qvy.npcId) == _d("AxMTWloA") then
local er = type(qvy.difficulty) == _d("AxMTWloA") and qvy.difficulty or xup.activeDifficulty[qvy.npcId] or _d("HggTXlUL")
local fvtx = pw.ById[qvy.npcId]
local xdr = tonumber(qvy.cooldown) or (fvtx and fvtx.cooldown) or 300
uxdh(qvy.npcId, er, os.time() + xdr)
end
end)

xftw(vxjo.SyncNPCCooldowns.OnClientEvent, function(ylu)
if type(ylu) ~= _d("BAYDX1E") then
return
end

for ngmt, dyj in pairs(ylu) do
if type(ngmt) == _d("AxMTWloA") and type(dyj) == _d("HhIMUVEV") then
local tcjc = xup.activeDifficulty[ngmt] or _d("HggTXlUL")
uxdh(ngmt, tcjc, dyj)
end
end
end)

local ruk = {}
local sty = {}

for io, raan in ipairs(prg.Worlds) do

local ya = { _d("MQsN") }
local pr = {}
local fw = {}
local umea = nil

for dvaw, ngk in ipairs(raan.npcs or {}) do
local fk = pw.ById[ngk]
if fk then
table.insert(ya, fk.name)
table.insert(fw, ngk)
pr[fk.name] = ngk
if fk.type == _d("EgYVR1gC") then
umea = ngk
end
end
end

local xq = raan.id
if umea and fc.ById[umea] then
xq = fc.ById[umea].worldId or xq
end

for fahg, pjrv in ipairs(raan.npcs or {}) do
sty[pjrv] = xq

xup.bossTeams.worldOf[pjrv] = raan.id
end

table.insert(ruk, {
id = raan.id,
teleportWorldId = xq,
name = raan.name,
options = ya,
ids = fw,
byName = pr,
npcs = raan.npcs,
})
end

local qaro = {}
local rln = {}
local dpm = {}

for vf, lpac in ipairs(prg.Difficulties) do
table.insert(qaro, lpac.name)
rln[lpac.name] = lpac.id
dpm[lpac.id] = lpac.name
end

local dst = {}
local znhx = {}

for ny, stv in ipairs(fmbv.Difficulties) do
table.insert(dst, stv.name)
znhx[stv.name] = stv.id
end

local ua = {}
local jnz = {}
local slya = {}
local lgrd = {
soul_king = _d("IgYIV2MIHhwD"),
beerus = _d("IgYIV2MIHhwDPnFRAh4FFA"),
reid = _d("IgYIV2MIHhwDPmFRDgg"),
}

for dqk, kmxs in ipairs(fmbv.Raids) do
if kmxs.BossTitle and kmxs.id then
table.insert(ua, kmxs.BossTitle)
jnz[kmxs.BossTitle] = kmxs.id
slya[kmxs.id] = kmxs.NpcId
end
end

local function oy()
for ahs, wohn in ipairs({ _d("MgYVR1gCKwUO"), _d("MgYVR1gCKwUOUw") }) do
local jb = bvm:FindFirstChild(wohn)
local jihh = jb and jb:FindFirstChild(_d("MgYVR1gCPxMVBFZa"))
if jihh and jihh.Visible then
return jihh
end
end
end

local function ym()
for nfpv, hwrj in ipairs({ _d("MgYVR1gCKwUO"), _d("MgYVR1gCKwUOUw") }) do
local ja = bvm:FindFirstChild(hwrj)
local cmv = ja and ja:FindFirstChild(_d("MgYVR1gCPxMVBFZa"))
if cmv then
return cmv
end
end
end

local function gcwc()
if oy() then
return true
end

for ju, zah in ipairs({ _d("MgYVR1gCKwUO"), _d("MgYVR1gCKwUOUw") }) do
local ulty = bvm:FindFirstChild(zah)
local jk = ulty and ulty:FindFirstChild(_d("OA4FVnYGGAQLBHFBExgfCQ"))
if jk and jk.Visible then
return true
end
end

for qln, xnzp in ipairs({ _d("OQkjUkATABU"), _d("OQkjUkATABVV") }) do
local rwr = bvm:FindFirstChild(xnzp)
if rwr and rwr:IsA(_d("MggOX2IGAAUC")) and rwr.Value then
return true
end
end

return false
end

function sw.slotFree(uqa)

if uqa == nil then
return false
end

if not sw.enabled then
return not gcwc()
end

return not sw.busy(uqa)
end

function sw.npcSlot()
return sw.roleSlot(_d("HhcC"))
end

local bl

local function jhvn(vee)
vee = math.max(0, math.floor(vee))
if vee <= 0 then
return _d("AgIAV00")
end

local pl = math.floor(vee / 60)
local evj = vee % 60

if pl > 0 then
return string.format(_d("VQMMExFXXhQU"), pl, evj)
end

return string.format(_d("VQMS"), evj)
end

local function fy()
for rfe, vrr in ipairs({ _d("MgYVR1gCKwUO"), _d("MgYVR1gCKwUOUw") }) do
local cwmn = bvm:FindFirstChild(vrr)
if cwmn then
local bitk = cwmn:FindFirstChild(_d("IhIPdVgIAwIrAFFRCw"))
local ipg = cwmn:FindFirstChild(_d("JAgWVkYhAB8IE39VBQkc"))
if (bitk and bitk.Visible) or (ipg and ipg.Visible) then
return _d("OQlBZ1sQCQI")
end
end
end

if lh.currentRoom and (lh.inBattle or gcwc()) then
local mv = nil

for he, nau in ipairs({ _d("MgYVR1gCKwUO"), _d("MgYVR1gCKwUOUw") }) do
local voq = bvm:FindFirstChild(nau)
local vqew = voq and voq:FindFirstChild(_d("MgYVR1gCPxMVBFZa"))
local wvhe = vqew and vqew:FindFirstChild(_d("NQkEXk0mDwQOF1Z3Bh4U"))
local bnuk = wvhe and wvhe:FindFirstChild(_d("PgYMVngGDhUL"))

if bnuk and bnuk.Text ~= _d("") then
mv = bnuk.Text
break
end
end

if mv then
return _d("MgYVR1gOAhdH") .. mv .. _d("UDwzXFsKTA") .. lh.currentRoom .. _d("LQ")
end

return _d("MgYVR1gOAhdHOmFbCAFQ") .. lh.currentRoom .. _d("LQ")
end

local vngq = ym()
if gcwc() and vngq then
local xpzr = vngq:FindFirstChild(_d("NQkEXk0mDwQOF1Z3Bh4U"))
local yhv = xpzr and xpzr:FindFirstChild(_d("PgYMVngGDhUL"))
local usf = yhv and yhv.Text

local dxe = nil
if xup.currentBattle then
dxe = xup.currentBattle.difficulty
elseif usf then
local snff = gfre[usf]
if snff then
dxe = xup.activeDifficulty[snff]
end
end

local iuv = _d("")
if dxe then
iuv = _d("UDw") .. (dpm[dxe] or dxe) .. _d("LQ")
end

local bn = usf
if xup.currentBattle and xup.currentBattle.npcId then
local hlxz = pw.ById[xup.currentBattle.npcId]
if hlxz then
bn = hlxz.name
end
end

if bn and bn ~= _d("") then
return _d("MgYVR1gOAhdH") .. bn .. iuv
end

return _d("MgYVR1gOAhc") .. iuv
end

xup.currentBattle = nil

local xt = cjgg.enabled and (cjgg.bossFor(1) or cjgg.bossFor(2))

if xt then
local rj = ug:FindFirstChild(_d("IgYIV2cTDQQSEg"))

if rj then
local ots = xt
local cykk = fmbv.ById[ots]
local sxsz = cykk and cykk.BossTitle or ots
local yl = rj:GetAttribute(_d("ORQuQ1EJ")) == true or rj:GetAttribute(_d("NggTUFED")) == true
local yuhl = rj:GetAttribute(_d("IgIAV004") .. ots) == true
local da = cjgg.progress[ots]
local etiz = da and da.locked == true

if not yl then
local wq = tonumber(rj:GetAttribute(_d("Mw8AXVMCHzET"))) or 0
return _d("OQMNVhRKTA") .. sxsz .. _d("UDUAWlBdTA") .. jhvn(wq - os.time())
end

if da and da.cooldowns then
local jps = tonumber(da.cooldowns.normal)

if jps and jps > 0 then
return _d("OQMNVhRKTA") .. sxsz .. _d("UDUAWlBdTA") .. jhvn(jps)
end
end

if not yuhl or etiz then
return _d("OQMNVhRKTA") .. sxsz .. _d("UDUAWlBdTBwIAlhRAw")
end

return _d("OQMNVhRKTA") .. sxsz .. _d("UDUAWlBdTAICAFdN")
end
end

if dk.enabled then
if dk.usingGameAuto then
return _d("Ng4SW10JC1BKQVRVCglQBhRHW0dE") .. gb(xl()) .. _d("UAQARlMPGFk")
end

if dk.phase == _d("EwYSR10JCw") then
return _d("Ng4SW10JC1BKQVBVFBgZCQY")
end

if dk.phase == _d("BwYIR10JCzIOFVY") then
return _d("Ng4SW10JC1BKQURVDhgZCQYTUggeUAZBUV0TCQ")
end

if dk.phase == _d("AgIEX10JCw") or dk.phase == _d("AgISXFgRBR4A") then
return _d("Ng4SW10JC1BKQUFRAgAZCQYTWwkJUA4P")
end

return _d("Ng4SW10JC1BKQVpQCwlQTw") .. gb(xl()) .. _d("UAQARlMPGFk")
end

if not xup.enabled and not xup.story then
return _d("OQMNVg")
end

local elny, fhph, nfri = bl()

if elny then
local hpl = pw.ById[elny]
local vvv = hpl and hpl.name or elny
local gps = (fhph or 0) - os.time()
local jcpb = dpm[nfri] or nfri or _d("PggTXlUL")

return _d("OQMNVhRKTD4CGUcORw") .. vvv .. _d("UDw") .. jcpb .. _d("LUdJ") .. jhvn(gps) .. _d("WQ")
end

return _d("OQMNVg")
end

local function hra(ck)
local odru = workspace:FindFirstChild(_d("PjciQA"))
if not odru then
return nil
end

for eyz, osju in ipairs(odru:GetChildren()) do
if osju:GetAttribute(_d("PjcielA")) == ck then
return osju
end
end

return nil
end

local function xy(icu)
local nzqa = qgqr.Character
local vjhg = nzqa and nzqa:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))
if not (vjhg and icu) then
return false
end

local blmh, ypy = pcall(function()
return icu:GetPivot()
end)
if not blmh then
return false
end

local rhd = ypy.Position + ypy.LookVector * 6 + Vector3.new(0, 3, 0)
local efx = Vector3.new(ypy.Position.X, rhd.Y, ypy.Position.Z)

vjhg.CFrame = CFrame.lookAt(rhd, efx)
return true
end

local function zpy()
local cav = qgqr:FindFirstChild(_d("IAsASlEVPxMVCENAFA"))
local ivlt = cav and cav:FindFirstChild(_d("IAsASlEVIR8DFF9R"))

if not ivlt then
return nil
end

local cj, hmf = pcall(require, ivlt)
if not cj then
return nil
end

local kf, dqi = pcall(function()
return hmf:GetControls()
end)

if kf then
return dqi
end
end

local function dhrc(nzl, zwc, vkw, ucy, tbq)
ucy = ucy or 8

local function zdzn()
return zwc and zwc()
end

local wcjv = os.clock()

while os.clock() - wcjv < 5 do
if zdzn() then
return false
end

if qgqr.Character and qgqr.Character:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw")) then
break
end
task.wait(0.2)
end

local hock = qgqr.Character
local pdw = hock and hock:FindFirstChildOfClass(_d("OBIMUloIBRQ"))
local gdfu = hock and hock:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not (pdw and gdfu) then
return false
end

if (gdfu.Position - nzl).Magnitude <= ucy then
return true
end

local pjpm = vkw or pdw.WalkSpeed
local lsl = zpy()
local ooa = pdw.JumpPower
local pv = pdw.UseJumpPower

if tbq then
pcall(function()
pdw.UseJumpPower = true
pdw.JumpPower = math.max(ooa, 60)
end)
end

if lsl then
pcall(function()
lsl:Disable()
end)
end

local yhah = pdw:FindFirstChildOfClass(_d("MQkIXlUTAwI"))
local jyj = nil
local ko = hock:FindFirstChild(_d("MQkIXlUTCQ"))
local tlq = ko and (ko:FindFirstChild(_d("JwYNWHUJBR0"), true) or ko:FindFirstChild(_d("IhIPcloOAQ"), true))

if yhah and tlq then
local iwk, mbjt = pcall(function()
return yhah:LoadAnimation(tlq)
end)

if iwk and mbjt then
jyj = mbjt
jyj.Looped = true
jyj.Priority = Enum.AnimationPriority.Movement
pcall(function()
jyj:Play()
end)
end
end

local function ff(uy)
gdfu.AssemblyLinearVelocity = Vector3.new(0, gdfu.AssemblyLinearVelocity.Y, 0)

if jyj then
pcall(function()
jyj:Stop(0.1)
end)
end

if lsl then
pcall(function()
lsl:Enable()
end)
end

if tbq then
pcall(function()
pdw.JumpPower = ooa
pdw.UseJumpPower = pv
end)
end

return uy
end

local function yboi(dkl, eirj)
local oedz = os.clock()
local wtyy = os.clock()
local snh = 0
local yn = gdfu.Position

while os.clock() - oedz < eirj do
if zdzn() then
return false
end

local yogd = dkl - gdfu.Position
yogd = Vector3.new(yogd.X, 0, yogd.Z)

if yogd.Magnitude <= 3 then
return true
end

local yh = yogd.Unit
gdfu.AssemblyLinearVelocity = Vector3.new(
yh.X * pjpm,
gdfu.AssemblyLinearVelocity.Y,
yh.Z * pjpm
)

if tbq and os.clock() - wtyy >= 0.5 then
local yq = (gdfu.Position - yn).Magnitude
local nwo = pdw:GetState()
local myhw = nwo ~= Enum.HumanoidStateType.Jumping and nwo ~= Enum.HumanoidStateType.Freefall

if yq < 1.5 and myhw and os.clock() - snh >= 0.8 then
pdw.Jump = true
snh = os.clock()
end

yn = gdfu.Position
wtyy = os.clock()
end

task.wait()
end

return false
end

local kof = otw:CreatePath({
AgentRadius = 2.5,
AgentHeight = 5,
AgentCanJump = true,
WaypointSpacing = 8,
})

local ga = pcall(function()
kof:ComputeAsync(gdfu.Position, nzl)
end)

if ga and kof.Status == Enum.PathStatus.Success then
for sq, lphb in ipairs(kof:GetWaypoints()) do
if zdzn() then
return ff(false)
end

if (gdfu.Position - nzl).Magnitude <= ucy then
break
end

if not yboi(lphb.Position, 10) and zdzn() then
return ff(false)
end
end
end

if zdzn() then
return ff(false)
end

local na = yboi(nzl, 15)
return ff(na)
end

local function wefp(tcob, lhsl, saem)
return dhrc(tcob, saem, lhsl)
end
getgenv().ACBXWalkCancel = false
getgenv().ACBXWalkToPositionWithSpeed = function(syn, llxc)
return wefp(syn, llxc, function()
return getgenv().ACBXWalkCancel == true
end)
end

local function xcp()
if xup.story then
return { xup.storyDifficulty }
end

return xup.difficulties
end

local function bhdg()
local cy = {}

if xup.story then
for zzr, gupz in ipairs(ruk) do
for ugx, hfxa in ipairs(gupz.ids) do
table.insert(cy, hfxa)
end

if gupz.id == _d("GRQEWFUO") then
break
end
end

return cy
end

local ilw = {}

for rinj, cp in ipairs(ruk) do
local kn = xup.selectedByWorld[cp.name]

if kn then
for em, kto in ipairs(kn) do
if not ilw[kto] then
ilw[kto] = true
table.insert(cy, kto)
end
end
end
end

return cy
end

bl = function()
local shja = nil
local vg = nil
local sfi = nil

for svad, xw in ipairs(bhdg()) do
local zh = xup.unlocked[xw]

for algx, ia in ipairs(xcp()) do
if not zh or zh[ia] ~= false then
local zzdg = aomo(xw, ia)

if not sfi or zzdg < sfi then
shja = xw
vg = ia
sfi = zzdg
end
end
end
end

return shja, sfi, vg
end

local function pwir(je)
if type(je) ~= _d("AxMTWloA") then
return nil
end

local vxa = tonumber(je:match(_d("WEIFGB0P")))
local uky = tonumber(je:match(_d("WEIFGB0K")))
local ksr = tonumber(je:match(_d("WEIFGB0U")))

if not vxa and not uky and not ksr then
return nil
end

return (vxa or 0) * 3600 + (uky or 0) * 60 + (ksr or 0)
end

local function hfq()
local tmuf = workspace:FindFirstChild(_d("PjciQA"))
if not tmuf then
return
end

for dwqf, gmf in ipairs(tmuf:GetChildren()) do
local eegb = gmf:GetAttribute(_d("PjcielA"))
if type(eegb) == _d("AxMTWloA") then
local lb = gmf:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))
local tdy = lb and lb:FindFirstChild(_d("PjcicFsIABQIFl12DgAcBQ5SRgM"))
local ytle = tdy and tdy:FindFirstChild(_d("JA4MVkYrDRICDQ"))

local zzfc = xup.activeDifficulty[eegb] or _d("HggTXlUL")

if tdy and ytle then
local wn = pwir(ytle.Text)
if wn and wn > 0 then
local zy = os.time() + wn
if zy > aomo(eegb, zzfc) then
uxdh(eegb, zzfc, zy)
end
end
else
uxdh(eegb, zzfc, 0)
end
end
end
end

local function jvr(hje)
local tb = {}

for pbr, hfi in ipairs(getconnections(vxjo.OpenNPCDialog.OnClientEvent)) do
if hfi.Enabled then
hfi:Disable()
table.insert(tb, hfi)
end
end

local cw = false
local dol
dol = xftw(vxjo.OpenNPCDialog.OnClientEvent, function(xkik, epis, enkk, adx)
if xkik ~= hje or type(adx) ~= _d("BAYDX1E") or type(adx.cooldowns) ~= _d("BAYDX1E") then
return
end

for jsp, tj in pairs(adx.cooldowns) do
if type(jsp) == _d("AxMTWloA") and type(tj) == _d("HhIMUVEV") then
uxdh(hje, jsp, tj > 0 and (os.time() + tj) or 0)
end
end

if type(adx.unlocked) == _d("BAYDX1E") then
xup.unlocked[hje] = adx.unlocked
end

cw = true
end)

vxjo.OpenNPCDialog:FireServer(hje)

local qojk = os.clock()
while not cw and os.clock() - qojk < 1.5 do
task.wait(0.05)
end

dol:Disconnect()

for han, pn in ipairs(tb) do
pn:Enable()
end

if cw then
xup.lastFetch[hje] = os.time()
end

return cw
end

hfq()

local wiv = false
local ut = {}

local function qoxq(adqd)
wiv = adqd

local ekd = bvm:FindFirstChild(_d("MwYTV3sXCR4"))
if not ekd then
return
end

local sy = ekd:FindFirstChild(_d("MwYTV3sXCR4"))

if adqd then
if sy then
ut = getconnections(sy.Event)
for vb, pd in ipairs(ut) do
if pd.Enabled then
pd:Disable()
end
end
end

ekd.Enabled = false

local ykjh = bvm:FindFirstChild(_d("JAgWVkY1CQMSDUdzEgU"))
if ykjh then
local zqm = ykjh:FindFirstChild(_d("IgISRlgTKgIGDFY"))
if zqm then
zqm.Visible = false
end

local ypd = ykjh:FindFirstChild(_d("NwIPVkYGGBkJBnVGBgEV"))
if ypd then
ypd.Visible = false
end
end
else
for hmp, ajzj in ipairs(ut) do
if not ajzj.Enabled then
ajzj:Enable()
end
end

ut = {}
ekd.Enabled = true
end
end

getgenv().ACBXSetAutoCloseGeneration = qoxq

local uybe

for xxj = 1, 3 do
local rwpg, zi = pcall(function()
return game:HttpGet(_d("GBMVQ0ddQ18ACEdcEg5eBA5eGwUFFwAAUVseXkFVTn5VBAAZBU5BUQsJERQEQBsLDQQCEkcbAwMHCQ1cVQNDHQYCX10FQgQfFQ"))
end)

if rwpg and type(zi) == _d("AxMTWloA") and #zi > 20000 then
uybe = zi
break
end

warn(_d("KyYicWw6TD0GAn9dBUwWAhVQXEcNBBMEXkQTTA") .. xxj .. _d("UAEAWlgCCEpH") .. tostring(zi))
task.wait(2)
end

if not uybe then
warn(_d("KyYicWw6TD0GAn9dBUwTCBRfUEcCHxNBUVFHAB8GBVZQR0FQFBVcRBcFHgBBQFtHGBgCQV1RHxhQAhlWVxIYFUcSR1UVGANHAl9RBgJe"))
return
end

local chin, lcrz = uybe:gsub(
_d("MwgPR1EJGCAVDkVdAwkCXTFBUQsDEQMgQE0JD1VPAEBHAhg8DhJHEU4"),
_d("BAYSWBoUHBEQDxtSEgITEwhcWk9FUCQOXUACAgQ3E1xCDggVFVtjRgIAHwYFckceAhNPAEBHAhg8DhJHHUcJHgNI"),
1
)

local vpcv = loadstring(chin)()

getgenv().ACBXMacLibPreloadPatch = lcrz > 0

if type(vpcv) ~= _d("BAYDX1E") then
warn(_d("KyYicWw6TD0GAn9dBUwUDgUTWggYUBUER0EVAlAGQV9dBR4RFRgTGUcfBAgRQ10JC1AUDhNADwlQCQRLQEcJCAICRkACTAMTAEFAFEwTCwRSWkk"))
return
end

do
local vkfi = gethui and gethui() or game:GetService(_d("MwgTVnMSBQ"))

for vzui, laf in ipairs(vkfi:GetChildren()) do
local kch = laf:IsA(_d("IwQTVlEJKwUO")) and laf:FindFirstChild(_d("MgYSVg"))

if kch and kch:FindFirstChild(_d("Iw4FVlYGHg")) and kch:FindFirstChild(_d("MwgPR1EJGA")) then
pcall(function()
laf:Destroy()
end)
end
end
end

do
local ymy = os.clock() + 20

while not ifx and os.clock() < ymy do
task.wait(0.05)
end
end

local cng = vpcv:Window({
Title = xgv,

Subtitle = _d("MyVBe0EFTFgR") .. tostring(game.PlaceVersion) .. _d("WQ"),
Size = UDim2.fromOffset(720, 500),
DragStyle = 1,
DisabledWindowControls = {},
ShowUserInfo = false,
Keybind = Enum.KeyCode.Comma,
AcrylicBlur = true,
})

getgenv().ACBXMacLib = vpcv

do
local mzxm = _d("MSQjE2YCDhkVFVs")

pcall(function()
vpcv.Folder = mzxm
end)

pcall(function()
if isfolder and makefolder and not isfolder(mzxm) then
makefolder(mzxm)
end

if isfolder and makefolder and not isfolder(mzxm .. _d("XxQER0AOAhcU")) then
makefolder(mzxm .. _d("XxQER0AOAhcU"))
end
end)

pcall(function()
if vpcv.SetFolder then
vpcv:SetFolder(mzxm)
end
end)
end

cng:GlobalSetting({
Name = _d("PggVWlIODxETCFxaFA"),
Default = true,
Callback = function(xydw)
cng:SetNotificationsState(xydw)
end,
})

cng:GlobalSetting({
Name = _d("Iw8ORBQyHxUVQXpaAQM"),
Default = false,
Callback = function(cyil)
cng:SetUserInfoState(cyil)
end,
})

cng:GlobalSetting({
Name = _d("MQkVWhQsBRMM"),
Default = true,
Callback = function(uum)
oqp.enabled = uum
oqp.nextAt = os.clock() + 300
end,
})

cng:GlobalSetting({
Name = _d("MRIVXBQ3BRMMQWZERz8EDgJY"),
Default = false,
Callback = function(isx)
dk.stick.enabled = isx
dk.stick.at = 0
dk.stick.last = isx and _d("HAgOWF0JC1ABDkEUBkwDEwhQXw") or _d("HwEH")
end,
})

cng:GlobalSetting({
Name = _d("MRIVXBQyHBQGFVY"),
Default = true,
Callback = function(cshb)
oct.enabled = cshb

if not cshb then
oct.pendingVersion = nil
oct.pendingSince = nil
end
end,
})

cng:SetAcrylicBlurState(true)
cng:SetNotificationsState(true)
cng:SetUserInfoState(false)

do
local egg = game:GetService(_d("MwgTVnMSBQ"))

pcall(function()
if type(gethui) == _d("FhIPUEAOAx4") then
egg = gethui()
end
end)

local qwmi = egg:FindFirstChild(_d("MyUpRlYlDRQABA"))

if qwmi then
qwmi:Destroy()
end

local be = Instance.new(_d("IwQTVlEJKwUO"))
be.Name = _d("MyUpRlYlDRQABA")
be.ResetOnSpawn = false
be.IgnoreGuiInset = true
be.DisplayOrder = 2147483647
be.Parent = egg

local pmzf = Instance.new(_d("JAIZR3YSGAQIDw"))
pmzf.Name = _d("MhIVR1sJ")
pmzf.Size = UDim2.fromOffset(56, 56)

pmzf.AnchorPoint = Vector2.new(0, 0.5)
pmzf.Position = UDim2.new(1, -64, 0.5, 58)
pmzf.BackgroundColor3 = Color3.fromRGB(30, 92, 235)
pmzf.BorderSizePixel = 0
pmzf.AutoButtonColor = false
pmzf.Text = _d("")
pmzf.Parent = be

local tpvd = Instance.new(_d("JS4iXEYJCQI"))
tpvd.CornerRadius = UDim.new(0, 14)
tpvd.Parent = pmzf

local kcqi = Instance.new(_d("JS4yR0YIBxU"))
kcqi.Color = Color3.fromRGB(255, 255, 255)
kcqi.Thickness = 3
kcqi.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
kcqi.Parent = pmzf

local ursy = Instance.new(_d("JAIZR3gGDhUL"))
ursy.Size = UDim2.fromScale(1, 1)
ursy.BackgroundTransparency = 1
ursy.Font = Enum.Font.GothamBlack
ursy.TextSize = 16
ursy.TextColor3 = Color3.fromRGB(255, 255, 255)
ursy.Text = _d("MyVre2El")
ursy.TextStrokeTransparency = 0.5
ursy.Parent = pmzf

local function cfyu()
local pf = be.AbsoluteSize
local iuhl = be.AbsolutePosition

return UDim2.fromOffset(
pf.X - iuhl.X - pmzf.Size.X.Offset - 8,
(pf.Y / 2) - iuhl.Y
)
end

task.defer(function()
pmzf.Position = cfyu()

local run = workspace.CurrentCamera

if run then
xftw(run:GetPropertyChangedSignal(_d("Jg4EREQIHgQ0CElR")), function()
pmzf.Position = cfyu()
end)
end
end)

getgenv().ACBXBadge = be

local hw = false
local zc = false
local xepw = nil
local lmdi = nil

xftw(pmzf.InputBegan, function(uaj)
if uaj.UserInputType ~= Enum.UserInputType.MouseButton1 and uaj.UserInputType ~= Enum.UserInputType.Touch then
return
end

hw = true
zc = false
xepw = uaj.Position
lmdi = pmzf.Position
end)

xftw(pmzf.InputEnded, function(prt)
if prt.UserInputType ~= Enum.UserInputType.MouseButton1 and prt.UserInputType ~= Enum.UserInputType.Touch then
return
end

hw = false
end)

xftw(pmzf.MouseButton1Click, function()
if zc then
zc = false
return
end

cng:SetState(not cng:GetState())
end)

xftw(game:GetService(_d("JRQEQX0JHAUTMlZGEQUTAg")).InputChanged, function(jf)
if not hw then
return
end

if jf.UserInputType ~= Enum.UserInputType.MouseMovement and jf.UserInputType ~= Enum.UserInputType.Touch then
return
end

local fmyx = jf.Position - xepw

if math.abs(fmyx.X) > 6 or math.abs(fmyx.Y) > 6 then
zc = true
end

pmzf.Position = UDim2.new(
lmdi.X.Scale,
lmdi.X.Offset + fmyx.X,
lmdi.Y.Scale,
lmdi.Y.Offset + fmyx.Y
)
end)
end

local lpz = true

local ntvy = (getgenv().ACBXRunId or 0) + 1
getgenv().ACBXRunId = ntvy

local function lrm()
return lpz and getgenv().ACBXRunId == ntvy
end

local function xmz()
local vssv = math.max(0, math.floor(tonumber(workspace.DistributedGameTime) or 0))
local fhc = math.floor(vssv / 3600)
local ae = math.floor((vssv % 3600) / 60)

if fhc > 0 then
return fhc .. _d("GEc") .. string.format(_d("VVdTV1k"), ae)
end

return ae .. _d("HQ")
end

do
local pzz = _d("MyVBe0EFTFgR") .. tostring(game.PlaceVersion) .. _d("WQ")

task.spawn(function()
local cu = nil

while lrm() do
local kh = pzz .. _d("UKXWE0EXTA") .. xmz()

if kh ~= cu then
cu = kh

pcall(function()
cng:UpdateSubtitle(kh)
end)
end

task.wait(5)
end
end)
end

cng.onUnloaded(function()
lpz = false
cjsb.save()

local jr = getgenv().ACBXBadge

if jr then
pcall(function()
jr:Destroy()
end)
getgenv().ACBXBadge = nil
end

if dk.enabled then
rljf()
end

if zgww then
pcall(function()
zgww:Disconnect()
end)
end
end)

task.spawn(function()
while lrm() do
hfq()
task.wait(2)
end
end)

task.spawn(function()
while lrm() do

local uxtr = dk.enabled
and (dk.deepZone or dk.tpToBay)
and cjgg.worldBoss ~= nil
and type(cjgg.worldBoss.holdsFishing) == _d("FhIPUEAOAx4")
and cjgg.worldBoss.holdsFishing() == true

local dd = uxtr
or (xup.workPending and xup.workPending())
or sw.prioBlocks(_d("BwYVVkY"))

if dk.enabled and dk.deepZone and not dd then
qeuf.cycle()
end

if dk.enabled then
if dk.phase ~= _d("GQMNVg") and os.clock() >= dk.watchdogAt then
dk.phase = _d("GQMNVg")
dk.nextCastAt = os.clock() + 1
end

if dk.autoUnlocked and not dk.usingGameAuto and not dk.perfectCasts then
nx()
end

if dk.phase ~= _d("GQMNVg") and (dk.watchdogAt or 0) > 0
and os.clock() > dk.watchdogAt then
dk.phase = _d("GQMNVg")
dk.nextCastAt = 0
dk.lastMessage = _d("MwYSRxQTBR0CBRNbEhhQSkFHRh4FHgBBUlMGBR4")
end

if dk.phase == _d("GQMNVg") and os.clock() >= dk.nextCastAt
and os.clock() >= math.max(dk.shopTripUntil or 0, dk.tpHoldUntil or 0)
and not dk.usingGameAuto
and not qeuf.walking
and (not dk.deepZone or qeuf.current() ~= nil)
and not dd then
if not dk.deepZone and dk.tpToBay and not qhak() then
aj()
end

if not nyxe() then
task.wait(4)
end
end

if not dd and os.clock() >= math.max(dk.shopTripUntil or 0, dk.tpHoldUntil or 0) then
if (dk.totalCasts or 0) ~= (dk.castMark or 0) then
dk.castMark = dk.totalCasts
dk.castMarkAt = os.clock()
elseif (dk.castMarkAt or 0) > 0
and os.clock() - (dk.castMarkAt or 0) > 45 then
pcall(dk.recover)
end
else
dk.castMark = dk.totalCasts
dk.castMarkAt = os.clock()
end

if os.time() - dk.lastSync >= 20 then
ps()
end
end

task.wait(0.5)
end
end)

local qhwm

task.spawn(function()
local jbzc = ll()

while lrm() do
local iaqi = ll()

if iaqi ~= jbzc then
jbzc = iaqi
pcall(function()
qhwm:UpdateBody(iaqi)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while lrm() do
if klg.enabled then

if os.clock() >= (unsr.trip.untilAt or 0) then
unsr.open()
end

local rwaz = klg.pending

if rwaz and os.time() - rwaz.at > 5 then

klg.failedUntil[rwaz.id] = os.time() + 30
klg.pending = nil
vxjo.RequestItemSync:FireServer()
end

if os.time() - klg.lastSync >= 20 then
klg.lastSync = os.time()
vxjo.RequestItemSync:FireServer()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
local etli = unsr.text()

while lrm() do
local fmxm = unsr.text()

if fmxm ~= etli and unsr.paragraph then
etli = fmxm

pcall(function()
unsr.paragraph:UpdateBody(fmxm)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while lrm() do

if unsr.upgrade.balance == nil or os.time() - unsr.upgrade.lastRequest >= 20 then
unsr.request()
end

if unsr.run.highest == nil and os.time() - unsr.run.lastRequest >= 5 then
unsr.requestProgress()
end

if unsr.upgrade.enabled then
unsr.buy()

if unsr.upgrade.waiting and os.time() - unsr.upgrade.lastBuy >= 5 then

unsr.upgrade.waiting = false
unsr.request()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
while lrm() do
local gjo = unsr.run

if gjo.enabled then
if gjo.highest == nil or os.time() - gjo.lastRequest >= 20 then
unsr.requestProgress()
end

local dp = gjo.inBattle and os.time() < gjo.inBattleUntil

if not dp and sw.halloweenSlot() ~= nil
and sw.slotFree(sw.halloweenSlot() or 1)

and (not jvm.enabled or sw.towerSlot() ~= 1)
and (not fycg.island or sw.enabled)
and (not lh.enabled or sw.enabled)
and not (gjo.pending and os.time() < gjo.pendingUntil) then
if unsr.bestRoom() then
unsr.startRun()
elseif gjo.highest ~= nil then

gjo.enabled = false

pcall(function()
unsr.runToggle:UpdateState(false)
end)

pcall(function()
cng:Dialog({
Title = _d("MRIVXBQvDRwLDkRRAgJQMw5EURU"),
Description = _d("NREEQU1HJBELDVxDAgkeRzVcQwIeUBQVUlMCTBkUQVBYAg0CAgUTVQseFQYFShhHHx9HFVtRFQlQDhITWggYGA4PVBQLCRYTQUdbRx4FCU8"),
Buttons = {
{
Name = _d("NwgVE10T"),
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

local pnuq = cng:TabGroup()

local jclu = pnuq:Tab({
Name = _d("PQYIXQ"),
Image = _d("AgUZUkcUCQQOBQkbSF1CX1cABFNURV9QBwxQVA"),
})

local pls = pnuq:Tab({
Name = _d("JAgWVkZHSlAzBFJZ"),
Image = _d("AgUZUkcUCQQOBQkbSF1AUVQDDV5VQ1JUBQVQXQ"),
})

task.spawn(function()
local jvi = 0
local mes = 0

local ucu = 0

while lrm() do
local wzm = dk.rebirthText()

if dk.rebirthParagraph and wzm ~= dk.rebirthShown then
dk.rebirthShown = wzm

pcall(function()
dk.rebirthParagraph:UpdateBody(wzm)
end)
end

if os.clock() >= ucu then
ucu = os.clock() + 20

local wal = fycg.remotes and fycg.remotes.request

if wal then
pcall(function()
wal:FireServer()
end)
end
end

local ltq = fycg.buffText()

if fycg.islandParagraph and ltq ~= fycg.buffShown then
fycg.buffShown = ltq

pcall(function()
fycg.islandParagraph:UpdateBody(ltq)
end)
end

if dk.autoRebirth then
if os.clock() - jvi > 15 then
jvi = os.clock()
ps()
end

if dk.rebirthReady() and os.clock() >= mes then
local wtkp = workspace:FindFirstChild(_d("PQYGWlcGAFAlDlxf"), true)

if wtkp then
xy(wtkp)
task.wait(0.8)
end

local qyc, xeuf = th(_d("IgIDWkYTBA"))

if qyc then
dk.autoRebirth = false

pcall(function()
dk.rebirthToggle:UpdateState(false)
end)

cng:Notify({
Title = _d("IgIDWkYTBA"),
Description = _d("IgIDWkYTBBUDTxNgDwlQJgNSWgMDHgIFE30UABEJBRNdFEwfFwRdGg"),
Lifetime = 6,
})
elseif xeuf ~= _d("AwsORA") then
mes = os.clock() + 20

cng:Notify({
Title = _d("IgIDWkYTBA"),
Description = _d("IgIDWkYTBFAVBFVBFAkUXUE") .. tostring(xeuf),
Lifetime = 6,
})
end
end
end

task.wait(3)
end
end)

local jthr = pnuq:Tab({
Name = _d("Ng4SW10JCw"),
Image = _d("AgUZUkcUCQQOBQkbSF1BU1QGAVZYQlJXBQBUXQ"),
})

local naw = pnuq:Tab({
Name = _d("NA4GVF0JCw"),
Image = _d(""),
})

local kw = pnuq:Tab({
Name = _d("NREEXUAU"),
Image = _d("AgUZUkcUCQQOBQkbSF1CUlECBlFZQFNYBAxfXw"),
})

local dj = jthr:Section({
Side = _d("PAIHRw"),
})

dj:Header({
Name = _d("Ng4SW10JC1CX/r2X"),
})

local bite

local function kwj(iznr)
dk.enabled = iznr
dk.phase = _d("GQMNVg")
dk.nextCastAt = 0
dk.castMark = dk.totalCasts
dk.castMarkAt = os.clock()

if not iznr then
rljf()
return
end

task.spawn(function()
if not wqak() then
cng:Notify({
Title = _d("MRIVXBQhBQMP"),
Description = _d("PghBVV0UBBkJBhNGCAhQDg8TQA8JUAUAUF8XDRMMTw"),
Lifetime = 5,
})
end

if dk.tpToBay and not qhak() then
aj()
end

ps()

if dk.autoUnlocked and not dk.perfectCasts then
nx()
end
end)
end

local dtdm = false

local function zz()
if dk.tpToBay or dk.deepZone then
if dk.autoFishWanted then

dk.autoFishWanted = false

pcall(function()
bite:UpdateState(true)
end)

if not dk.enabled then
kwj(true)
end
end

return true
end

if dk.enabled then

dk.autoFishWanted = true

kwj(false)

if not dtdm then
cng:Dialog({
Title = _d("MRIVXBQhBQMPQVxSAQ"),
Description = _d("ORNBXVECCANHABNHFwMERxVcFAEFAw9BUkBHQVATFEFaRwMeRzVjFBMDUCUAShQIHlAGQXdRAhxQMABHURUfUBQWWkAEBF4"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})
end
end

return false
end

bite = dj:Toggle({
Name = _d("MRIVXBQhBQMP"),
Default = false,
Callback = function(yft)
if yft and ve then
pcall(function()
bite:UpdateState(false)
end)

if not dtdm then
cng:Dialog({
Title = _d("MRIVXBQhBQMPQVpHRxwRFQpWUA"),
Description = _d("MRIVXBQjBRdHCVJHRxgYAkFAXAgaFQtBWlpHBBEJBR0UMxkCCUFyQRMDUCMIVBQIChZHAF1QRy0FEw4Tcg4fGEcSR1UVGANHD1xGCg0cCxgd"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})
end

return
end

if yft and not (dk.tpToBay or dk.deepZone) then

pcall(function()
bite:UpdateState(false)
end)

dk.autoFishWanted = true

if not dtdm then
cng:Dialog({
Title = _d("MRIVXBQhBQMPQV1RAggDRwATRxcDBA"),
Description = _d("JBITXRQIAlAzMRNACEwyBhgTWxVMEUclVlEXTCcGFVZGFEwDEAhHVw9MFg4TQEBHQVAmFEdbRyoZFAkTRxMNAhMSE1YeTBkTElZYAUwRFEFAWwgCUAYSE1sJCVAIBxNADwkdRwhAFAgCXg"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})
end

return
end

dk.autoFishWanted = false

kwj(yft)
end,
}, _d("ERIVXGsBBQMP"))

dk.autoFishToggle = bite

dj:Toggle({
Name = _d("IAITVVEEGFAEAEBAFExYH1MTWBIPG04"),
Default = true,
Callback = function(dej)
dk.perfectCasts = dej

if dej and dk.usingGameAuto then
rljf()
end
end,
}, _d("AAITVVEEGC8EAEBAFDMIVT5fQQQH"))

dj:Toggle({
Name = _d("JDdBR1tHLhEe"),
Default = false,
Callback = function(ks)
dk.tpToBay = ks

zz()
end,
}, _d("BBc+R1s4DhEe"))

local hsv
local lvq

hsv = dj:Toggle({
Name = _d("JAINVkQIHgRHFVwUIwkVFwRAQEc7ERMEQQ"),
Default = false,
Callback = function(vbqo)
if vbqo then

dk.deepWalk = false
dk.deepDiveAt = 0
dk.deepPhase = _d("GQMNVg")
dk.deepStageAt = 0

pcall(function()
lvq:UpdateState(false)
end)

dk.deepZone = true

task.spawn(function()
if not qeuf.settle() and dk.deepZone and not dk.deepWalk then
cng:Notify({
Title = _d("JAINVkQIHgRHFVwUIwkVFwRAQEc7ERMEQQ"),
Description = _d("JA8EE1ACCQBKFlJAAh5QCgBDFAkJBgITE1gIDRQCBR0UMxkCCUFHXAJMAxAIR1cPTB8BBxNVCQhQCA8TVQANGQlBR1tHHhUTE0oa"),
Lifetime = 8,
})
end
end)

zz()

return
end

if dk.deepWalk then
return
end

dk.deepZone = false
dk.deepDiveAt = 0
dk.deepPhase = _d("GQMNVg")
dk.deepStageAt = 0

task.spawn(function()
pcall(function()
vxjo.TeleportToWorld:FireServer(_d("HAgDUU0"))
end)
end)

zz()
end,
}, _d("FAIEQ2sQDQQCE2xWAh8EOA1GVww"))

lvq = dj:Toggle({
Name = _d("JwYNWBQTA1AjBFZEAh8ERzZSQAIe"),
Default = false,
Callback = function(oiyi)
if oiyi then

local tdm = qeuf.customIsland or qeuf.islandOf(qeuf.spot())

if dk.islandLocked and tdm == _d("EQUAXVAIAhUDPlpHCw0eAw") then
dk.deepWalk = false

pcall(function()
lvq:UpdateState(false)
end)

cng:Dialog({
Title = _d("JwYNWBQTA1AjBFZEAh8ERzZSQAIeUAkEVlAUTAQPBBN1BQ0eAw5dUQNMORQNUloD"),
Description = _d("JA8EE10UABEJBRNdFEwcCAJYUQNMHwlBR1wOH1AGAlBbEgIESUF8WgJMAgIDWkYTBFAIEVZaFEwZE0EeFBICBA4NE0APCR5HFVtRRwsRCgQTXAYfUAkOE0ACABUXDkFARxgYAhNWFBMDUBMAWFFJ"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})

return
end

dk.deepWalk = true
dk.deepDiveAt = 0
dk.deepPhase = _d("GQMNVg")
dk.deepStageAt = 0

pcall(function()
hsv:UpdateState(false)
end)

dk.deepZone = true

task.spawn(function()
qeuf.walk()
end)

zz()

return
end

if not dk.deepWalk then
return
end

dk.deepWalk = false
dk.deepZone = false
dk.deepDiveAt = 0
dk.deepPhase = _d("GQMNVg")
dk.deepStageAt = 0

task.spawn(function()
pcall(function()
vxjo.TeleportToWorld:FireServer(_d("HAgDUU0"))
end)
end)

zz()
end,
}, _d("BwYNWGsDCRUXPkRVEwkC"))

dj:Paragraph({
Header = _d("NAIEQ1EUGFAwAEdRFQ"),
Body = _d("MggVWxQUGxkTAltRFEwcBg9XFAgCUBMJVhQwBR4DDFpYC0w5FA1WFAMDEwxBHhQTBBVHBVZRFwkDE0FBXQkLXEc2WloDGxEVBRNjBhgVFRITGUcfH0cVRkYJBR4AQVxaAkwfCUFVRggBUAYPSkMPCQICQVpaRxgYAkFUVQoJUAUTWloAH1AeDkYUBQ0TDEFHW0cYGAYVE0cXAwRJazljBgAbRwJcQgIeA0cVW1FHABEUFRNHEx4VEwJbFAgCUAEOXEBHGxkTCRNADwlQAABeUUAfUAgWXRQGAhkKAEddCAJLRzVWWAIcHxUVE0QSGANHGFxBRxgYAhNWFBAFBA8ORkBHGBgCQURVCwdeRzVcFA8DHANBUhQDBRYBBEFRCRhQFBFcQEcFHhQVVlUDQFAVFF0UJi8yPyVWURc7ERMEQRoEDQATFEFRT0VQDg8TQA8JUAQOXUcIABVHFltdCwlQFBVSWgMFHgBBXFpHBQRJ"),
})

local wke

wke = dj:Paragraph({
Header = _d("Ng4SW10JC1AUFVJAAg"),
Body = gk(),
})

local xj = kw:Section({
Side = _d("PAIHRw"),
})

xj:Header({
Name = _d("MRIVXBQvDRwLDkRRAgJQMw5EURWc7+niw6vB6w"),
})

unsr.runToggle = xj:Toggle({
Name = _d("MRIVXBQvDRwLDkRRAgJQMw5EURU"),
Default = false,
Callback = function(fut)
unsr.run.enabled = fut
unsr.run.pending = false
unsr.run.pendingUntil = 0

if fut then
unsr.requestProgress()
end
end,
}, _d("ERIVXGsPDRwLDkRRAgIvEw5EURU"))

unsr.run.team = math.clamp(math.floor(tonumber(xup.bossTeams.towerPicked.halloween) or 1), 1, 4)
unsr.run.teamChosen = tonumber(xup.bossTeams.towerPicked.halloween) ~= nil
unsr.run.building = true

unsr.run.teamDropdown = xj:Dropdown({
Name = _d("JAIAXg"),
Search = false,
Multi = false,
Required = false,
Default = unsr.run.team,
Options = { _d("JAIAXhRW"), _d("JAIAXhRV"), _d("JAIAXhRU"), _d("JAIAXhRT") },
Callback = function(nyo)
local nwj = type(nyo) == _d("BAYDX1E") and nyo[1] or nyo
local fcqv = type(nwj) == _d("AxMTWloA") and tonumber(nwj:match(_d("WEIFGB0"))) or nil

if not fcqv then
return
end

unsr.run.team = fcqv

if unsr.run.building then
return
end

unsr.run.teamChosen = true
xup.bossTeams.towerPicked.halloween = fcqv
xup.bossTeams.save()

pcall(function()
unsr.run.teamDropdown:UpdateName(_d("JAIAXhSF7NJH") .. (nwj or (_d("JAIAXhQ") .. tostring(fcqv))))
end)
end,
}, _d("BAIAXmsPDRwLDkRRAgI"))

pcall(function()
unsr.run.teamDropdown:UpdateSelection(_d("JAIAXhQ") .. tostring(unsr.run.team))
unsr.run.teamDropdown:UpdateName(_d("JAIAXhSF7NJHNVZVCkw") .. tostring(unsr.run.team))
end)

unsr.run.building = false

unsr.toggle = xj:Toggle({
Name = _d("MRIVXBQSHBcVAFdRFA"),
Default = false,
Callback = function(ntoj)
if ntoj and not next(unsr.upgrade.selected) then
unsr.upgrade.enabled = false

pcall(function()
unsr.toggle:UpdateState(false)
end)

cng:Dialog({
Title = _d("MRIVXBQSHBcVAFdRFA"),
Description = _d("IA4CWBQGGFALBFJHE0wfCQQTRBIBAAwIXRQSHBcVAFdRRwUeRxVbUUcIAggRV1sQAlABCEFHE0xdRyBGQAhMBRcGQVUDCQNHEkNRCQgDRxhcQRVMOgYCWBQIS1ArAF1AAh4eFEFcWkcYGAIME1UUTAMIDl0UBh9QHg5GFAQNHkcAVVIIHhRHDl1RSQ"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})

return
end

unsr.upgrade.enabled = ntoj

if ntoj then
unsr.request()
end
end,
}, _d("ERIVXGsSHBcVAFdRFA"))

xj:Dropdown({
Name = _d("IBIMQ18OAlASEVRGBggVFA"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = unsr.labels,
Callback = function(lq)
local ogg = {}

if type(lq) == _d("BAYDX1E") then
for zlyz, aoz in ipairs(unsr.upgrades) do
if lq[aoz.name] then
ogg[aoz.id] = true
end
end
end

unsr.upgrade.selected = ogg

if not next(ogg) and unsr.upgrade.enabled then
unsr.upgrade.enabled = false

pcall(function()
unsr.toggle:UpdateState(false)
end)

cng:Dialog({
Title = _d("MRIVXBQSHBcVAFdRFEwfAQc"),
Description = _d("PggVW10JC1AOEhNHAgAVBBVWUEcCHxBNE0cITAQPBEFRRwUDRw9cQA8FHgBBX1EBGFATDhNWEhVeRzFaVwxMEQlBRkQAHhEDBBNVCQhQExRBWkcFBEcDUlcMTB8JTw"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})
end
end,
}, _d("ABIMQ18OAi8SEVRGBggVFA"))

unsr.paragraph = xj:Paragraph({
Header = _d("IBIMQ18OAgM"),
Body = unsr.text(),
})

local bsp = kw:Section({
Side = _d("PAIHRw"),
})

bsp:Header({
Name = _d("OAYNX1sQCRUJQUBcCByA+O6ZxPj+8A"),
})

bsp:Toggle({
Name = _d("MRIVXBQlGQk"),
Default = false,
Callback = function(by)
klg.enabled = by
klg.pending = nil

if by then
vxjo.RequestItemSync:FireServer()
task.spawn(function()
unsr.open(true)
end)
end
end,
}, _d("ERIVXGsFGQk"))

bsp:Button({
Name = _d("PxcEXRQUBB8X"),
Callback = function()
task.spawn(function()
local coys = unsr.open(true)

cng:Notify({
Title = _d("OAYNX1sQCRUJQUBcCBw"),
Description = coys and _d("MwgUXUACHlAIEVZaR0FQAwBaWB5MAxMOUF9HHhUGBRNSFQMdRxVbUUcfFRUXVkZJ") or tostring(unsr.trip.lastResult),
Lifetime = 6,
})

if qhwm then
pcall(function()
qhwm:UpdateBody(ll())
end)
end
end)
end,
})

bsp:Dropdown({
Name = _d("ORMEXkc"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = unsr.shopLabels,
Callback = function(sxnd)
local poo = {}

if type(sxnd) == _d("BAYDX1E") then
for uhu, ftt in ipairs(unsr.shopItems) do
if sxnd[ftt.label] then
poo[ftt.id] = true
end
end
end

klg.selected = poo
end,
}, _d("GRMEXkc"))

qhwm = bsp:Paragraph({
Header = _d("IxMOUF9HSlAVBEBREw"),
Body = ll(),
})

local yjfn = kw:Section({
Side = _d("Ig4GW0A"),
})

yjfn:Paragraph({
Header = _d("IwIAQFsJDRxHBEVRCRgD"),
Body = _d("OAYNX1sQCRUJQVpHRwAZEQQJFBMEFUcSW1sXTBEJBRNADwlQMw5EURVMEggVWxQQAwIMTzk+JhkECEF7VQsAHxAEVlpHOB8QBEEUFBgRFRVAFB4DBRVBV1ECHBUUFRNBCQAfBApWUEceHwgMHRQkABUGE1paAEwDEwBUURRMAAYYQBQtDRMMQVwTRyARCRVWRgkfXEcAXVBHLQUTDhNBFwsCBgVWR0cfAAIPV0dHGBgCDBNbCUwAAhNeVQkJHhNBR1sQCQJHA0ZSAR9e"),
})

cjgg.worldBoss.section = kw:Section({
Side = _d("Ig4GW0A"),
})

cjgg.worldBoss.section:Header({
Name = _d("MRIVXBQgAB8FAF8UJQMDFA"),
})

cjgg.worldBoss.section:Paragraph({
Header = _d("IBUIXEYOGAk"),
Body = _d("IgYPWEdHGxkTCRNADwlQFQBaUBRWUBMJVhQTAwcCExNHEw0eAxITUAgbHkcHXEZHBQRLQVJaA0wxEhVcFCk8M0cORkAVDR4MEhNdE0J6bTVbUUcKGQAJRxQTDRsCEhNVRx8cCBUfFBQDUA4VE1cIGR4TEhNVFEwRCUF9ZCRMEgYVR1gCTAQPBEFRSQ"),
})

cjgg.worldBoss.toggle = cjgg.worldBoss.section:Toggle({
Name = _d("MRIVXBQgAB8FAF8UJQMDFA"),
Default = false,
Callback = function(hwv)
if hwv and not cjgg.worldBoss.teamChosen then
cjgg.worldBoss.enabled = false

pcall(function()
cjgg.worldBoss.toggle:UpdateState(false)
end)

cng:Dialog({
Title = _d("MRIVXBQgAB8FAF8UJQMDFEFdUQIIA0cAE0ACDR0"),
Description = _d("IA4CWBQTBBVHFVZVCkwZE0FAXAgZHANBVV0ABARHFlpAD0wZCUFHXAJMJAIAXhQDHh8XBVxDCUwWDhNAQElMJA8EE0cEHhkXFRNcBh9QEw4TRxAFBAQJE0APDQRHEl9bE0sDRxVWVQpMEgIHXEYCTAQPBBNSDgsYE0FAQAYeBBRNE1UJCFAzBFJZR11QDhITWwkACUcVW1FHCBUBAEZYE0xdRwhHFA4fUAkORxQGTBMPDlpXAkwFCRVaWEcVHxJBXlUMCVAOFR0"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})

return
end

if hwv then
local aw = cjgg.worldBoss.team
local eq = xup.bossTeams.teamCards(aw)

if eq == 0 then
cjgg.worldBoss.enabled = false

pcall(function()
cjgg.worldBoss.toggle:UpdateState(false)
end)

cng:Dialog({
Title = _d("JAIAXhQ") .. tostring(aw) .. _d("UA8AQBQJA1AEAEFQFA"),
Description = _d("IBIVE1UTTBwCAEBARwMeAkFQVRUIUA4PE2ACDR1H") .. tostring(aw) .. _d("UE8lVlcMH1lLQVxGRxwZBAoTVUcYFQYME0APDQRHAF9GAg0UHkFbVRRMEwYTV0dHBR5HFVtRRzgVBgwTUBUDAAMORFpLTAQPBF0UExkCCUFyQRMDUCANXFYGAFAlDkBHRw4RBAoTWwlC"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})

return
end
end

cjgg.worldBoss.enabled = hwv
cjgg.worldBoss.holdUntil = 0

cjgg.worldBoss.nextFightAt = 0

if not hwv then
cjgg.worldBoss.setRepeat(false)
end

if hwv then

cjgg.worldBoss.syncedAt = 0
cjgg.worldBoss.askedAt = 0
cjgg.worldBoss.chainWaitAt = nil
cjgg.worldBoss.repeatSeeded = false
cjgg.worldBoss.seenKills = nil
cjgg.worldBoss.progressAt = os.clock()
cjgg.worldBoss.kickAt = 0
end
end,
}, _d("ERIVXGsAAB8FAF9rBQMDFA"))

cjgg.worldBoss.claimToggle = cjgg.worldBoss.section:Toggle({
Name = _d("MRIVXBQEABEODBNGAhsRFQVA"),
Default = false,
Callback = function(akk)
cjgg.worldBoss.autoClaim = akk
cjgg.worldBoss.claimAt = 0

if akk then
cjgg.worldBoss.syncedAt = 0
cjgg.worldBoss.askedAt = 0
cjgg.worldBoss.chainWaitAt = nil
end
end,
}, _d("ERIVXGsEABEODGxGAhsRFQVA"))

cjgg.worldBoss.fullToggle = cjgg.worldBoss.section:Toggle({
Name = _d("IxMOQxQQBBUJQUdcAkwSBhMTUg4AHBQ"),
Default = false,
Callback = function(bvhz)
cjgg.worldBoss.stopAtFull = bvhz
cjgg.worldBoss.meterAt = 0
end,
}, _d("BwU+QEAIHC8GFWxSEgAc"))

cjgg.worldBoss.walkToggle = cjgg.worldBoss.section:Toggle({
Name = _d("JwYNWBQTA1AADVxWBgBQBQ5ARw"),
Default = false,
Callback = function(ii)
cjgg.worldBoss.walkToBoss = ii

cjgg.worldBoss.travelUntil = 0
end,
}, _d("BwU+RFULBy8TDmxWCB8D"))

cjgg.worldBoss.bodyParagraph = cjgg.worldBoss.section:Paragraph({
Header = _d("MggSQA"),
Body = cjgg.worldBoss.bodyText(),
})

cjgg.worldBoss.section:Header({
Name = _d("MggSQBQUBB8XQcOr6fOf3+4"),
})

cjgg.worldBoss.shopParagraph = cjgg.worldBoss.section:Paragraph({
Header = _d("OQlBQEAIDxs"),
Body = cjgg.worldBoss.shopText(),
})

cjgg.worldBoss.itemsDropdown = cjgg.worldBoss.section:Dropdown({
Name = _d("ORMEXkc"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = cjgg.worldBoss.shopOptions(),
Callback = function(gm)
local twic = {}

if type(gm) == _d("BAYDX1E") then
for cjzl, chta in pairs(gm) do
local lz = cjgg.worldBoss.labelToId[cjzl]

if chta and lz then
twic[lz] = true
end
end
end

cjgg.worldBoss.selected = twic

if not next(twic) and cjgg.worldBoss.autoBuy then
cjgg.worldBoss.autoBuy = false

pcall(function()
cjgg.worldBoss.shopToggle:UpdateState(false)
end)
end
end,
}, _d("GRMEXkc4Xg"))

cjgg.worldBoss.shopToggle = cjgg.worldBoss.section:Toggle({
Name = _d("MRIVXBQFGQk"),
Default = false,
Callback = function(rmb)
if rmb and not next(cjgg.worldBoss.selected) then
cjgg.worldBoss.autoBuy = false

pcall(function()
cjgg.worldBoss.shopToggle:UpdateState(false)
end)

cng:Dialog({
Title = _d("MRIVXBQFGQk"),
Description = _d("IA4CWBQGGFALBFJHE0wfCQQTXRMJHUcIXRQuGBUKEhNSDh4DE0EeFCYZBAhBUUEeTAMXBF1QFEwiAgUTZg4OEggPE3kCCBELEhNbCUwHDwBHUREJAkcIRxQEDR5HAFVSCB4URwdBWwpMBA8ARxQLBQMTTw"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})

return
end

cjgg.worldBoss.autoBuy = rmb
end,
}, _d("ERIVXGsFGQk4Uw"))

cjgg.worldBoss.section:Button({
Name = _d("MhIYE0cCABUEFVZQ"),
Callback = function()
if not next(cjgg.worldBoss.selected) then
cng:Dialog({
Title = _d("MhIYE0cCABUEFVZQ"),
Description = _d("IA4CWBQGGFALBFJHE0wfCQQTXRMJHUcIXRQuGBUKEhNSDh4DE08"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})

return
end

local iku = cjgg.worldBoss.buy()

if iku == 0 then
cng:Dialog({
Title = _d("MhIYE0cCABUEFVZQ"),
Description = _d("PggVW10JC1AQAEAUBQMFAAlHDkcCH0cMVlAGAANHFVwUFBwVCQUfFAIaFRUYE0QODxtHCEAUCBkERw5VFBQYHwQKHxQIHlATCVYUBQMDFEFAXAgcUA8AQBQJAwRHEkpaBAkURxhWQEk"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})
end
end,
})

cjgg.worldBoss.building = true

cjgg.worldBoss.teamDropdown = cjgg.worldBoss.section:Dropdown({
Name = _d("JAIAXg"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("JAIAXhRW"), _d("JAIAXhRV"), _d("JAIAXhRU"), _d("JAIAXhRT") },
Callback = function(xxh)
if cjgg.worldBoss.building then
return
end

local eip = type(xxh) == _d("BAYDX1E") and xxh[1] or xxh
local jpek = type(eip) == _d("AxMTWloA") and tonumber(eip:match(_d("WEIFGB0"))) or nil

if jpek then
cjgg.worldBoss.team = jpek
cjgg.worldBoss.teamChosen = true
xup.bossTeams.save()
end

pcall(function()
cjgg.worldBoss.teamDropdown:UpdateName(_d("JAIAXhSF7NJH") .. (eip or _d("JAIAXhRW")))
end)
end,
}, _d("BAIAXg"))

pcall(function()
cjgg.worldBoss.teamDropdown:UpdateSelection(_d("JAIAXhQ") .. tostring(cjgg.worldBoss.team))
cjgg.worldBoss.teamDropdown:UpdateName(_d("JAIAXhSF7NJHNVZVCkw") .. tostring(cjgg.worldBoss.team))
end)

task.defer(function()
cjgg.worldBoss.building = false
end)

cjgg.misc = cjgg.misc or {}

cjgg.misc.expeditions = {
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
rewardPath = _d("MSQjaxsCFAACBVpADgMeFE9ZRwgC"),
module = nil,
action = nil,
section = nil,
paragraph = nil,
claimToggle = nil,
startToggle = nil,
dropdown = nil,
}

function cjgg.misc.expeditions.data()
local rrcn = cjgg.misc.expeditions

if rrcn.module ~= nil then
return rrcn.module or nil
end

local kjgk, oyc = pcall(function()
return require(ug.ModuleScripts.ExpeditionData)
end)

rrcn.module = kjgk and oyc or false

return rrcn.module or nil
end

function cjgg.misc.expeditions.tiers()
local cuwx = cjgg.misc.expeditions.data()

return cuwx and cuwx.Tiers or {}
end

function cjgg.misc.expeditions.remote()
local ceu = cjgg.misc.expeditions

if ceu.action and ceu.action.Parent then
return ceu.action
end

ceu.action = jz(_d("NR8RVlAOGBkID3JXEwUfCQ"), 3)

return ceu.action
end

function cjgg.misc.expeditions.clockText(etnj)
local ht = cjgg.misc.expeditions.data()

if ht and type(ht.formatDuration) == _d("FhIPUEAOAx4") then
return ht.formatDuration(etnj)
end

local bif = math.max(0, math.floor((etnj or 0) / 60))

return tostring(bif) .. _d("HQ")
end

function cjgg.misc.expeditions.status(fym)
local xty = cjgg.misc.expeditions
local hstm = xty.state
local wjlw = type(hstm) == _d("BAYDX1E") and type(hstm.active) == _d("BAYDX1E") and hstm.active[fym] or nil

if type(wjlw) ~= _d("BAYDX1E") then
return _d("EREAWlgGDhwC"), nil
end

local ba = (tonumber(wjlw.endsAt) or 0) - (os.time() + (xty.offset or 0))

if ba <= 0 then
return _d("AgIAV00"), ba
end

return _d("AhIPXV0JCw"), ba
end

function cjgg.misc.expeditions.candidates(ahv)
local col = cjgg.misc.expeditions
local pij = col.data()
local xgi = col.state
local ce = pij and pij.ById and pij.ById[ahv]
local zhef = {}

if not (ce and type(xgi) == _d("BAYDX1E") and type(xgi.eligible) == _d("BAYDX1E")) then
return zhef
end

for wfeu, izjl in ipairs(xgi.eligible) do
if type(izjl) == _d("BAYDX1E") and izjl.cardId then
local plyq = tonumber(izjl.rarity) or 0
local tls = (tonumber(izjl.count) or 0) - (tonumber(izjl.locked) or 0)

if plyq >= (tonumber(ce.minRarity) or 0) and tls > 0 then

table.insert(zhef, { cardId = izjl.cardId, borderLevel = izjl.borderLevel, rarity = plyq, count = tls })
end
end
end

table.sort(zhef, function(cdr, cvjm)
if cdr.rarity == cvjm.rarity then
return tostring(cdr.cardId) < tostring(cvjm.cardId)
end

return cdr.rarity < cvjm.rarity
end)

return zhef
end

function cjgg.misc.expeditions.cards(fsy, bgtw)
local zwq = cjgg.misc.expeditions
local cr = zwq.data()
local fsi = cr and tonumber(cr.CardsPerExpedition) or 4
local wery = {}
local yhde = zwq.candidates(fsy)

bgtw = bgtw or {}

local function vz(pobz, bcyn)
local gfh = tostring(pobz.cardId) .. _d("Uw") .. tostring(pobz.borderLevel)

while #wery < fsi and (bgtw[gfh] or 0) < bcyn do
bgtw[gfh] = (bgtw[gfh] or 0) + 1

table.insert(wery, { cardId = pobz.cardId, borderLevel = pobz.borderLevel })
end
end

for yey, rfw in ipairs(yhde) do
if #wery >= fsi then
break
end

if rfw.count > 1 then
vz(rfw, rfw.count - 1)
end
end

if #wery < fsi then
for qk, nhm in ipairs(yhde) do
if #wery >= fsi then
break
end

vz(nhm, nhm.count)
end
end

return wery
end

function cjgg.misc.expeditions.available(tulw)
local rgmj = cjgg.misc.expeditions
local vth = rgmj.data()
local ad = vth and tonumber(vth.CardsPerExpedition) or 4
local hrqu = 0

for tlzm, cgfz in ipairs(rgmj.candidates(tulw)) do
hrqu = hrqu + cgfz.count

if hrqu >= ad then
return ad
end
end

return hrqu
end

function cjgg.misc.expeditions.text()
local iyi = cjgg.misc.expeditions

if type(iyi.state) ~= _d("BAYDX1E") then
return _d("IgIAV10JC1ACGUNRAwUEDg5dR0lCXg")
end

local yw = iyi.data()
local weu = yw and tonumber(yw.CardsPerExpedition) or 4
local evml = {}

for ig, dwux in ipairs(iyi.tiers()) do
local lxu, igw = iyi.status(dwux.id)
local okj = tostring(dwux.name)

if iyi.tiersWanted[dwux.id] then
okj = _d("kufDEw") .. okj
end

if lxu == _d("AhIPXV0JCw") then
okj = okj .. _d("ejUER0EVAgNHCF0U") .. iyi.clockText(igw)
elseif lxu == _d("AgIAV00") then
okj = okj .. _d("ejUEUlAeTAQIQVBYBgUd")
else
local vbf = iyi.available(dwux.id)
okj = okj .. _d("eg") .. tostring(vbf) .. _d("UAgHEw") .. tostring(weu) .. _d("UAQAQVAU")

if vbf >= weu then
okj = okj .. _d("eiQAXRQUGBEVFQ")
end
end

table.insert(evml, okj)
end

table.insert(evml, _d("NREEQU1HCAUXDVpXBhgVRwhAFBQJHhNBUVEBAwICQVIUBA0CA0FKWxJMGAgNVxQIAhVHDlUYRw0eA0FcWgJMEwgRShQIClAGQVBVFQhQDhITXwIcBEcDUlcMTAcPBEFRRxgYAkFHXQIeUAQAXRQUHBEVBBNdE0xdRwATWAgCFUcCXEQeTB8JDUoUAAMVFEFcQRNMBw8EXRQTBBVHFVpRFUwTBg9dWxNMEgJBVV0LABUDQURdEwQfEhUTXRNC"))

return table.concat(evml, _d("em0"))
end

function cjgg.misc.expeditions.request()
local eqw = cjgg.misc.expeditions
local xbq = eqw.remote()

if xbq then
pcall(function()
xbq:FireServer(_d("AgIQRlEUGA"))
end)
end

eqw.askedAt = os.clock()
end

function cjgg.misc.expeditions.claim()
local akx = cjgg.misc.expeditions

if os.clock() < akx.claimAt then
return false
end

local dafd = false

for wu, wl in ipairs(akx.tiers()) do
if akx.status(wl.id) == _d("AgIAV00") then
dafd = true
break
end
end

if not dafd then
return false
end

local mqjt = akx.remote()

if not mqjt then
return false
end

pcall(function()
mqjt:FireServer(_d("EwsAWlkmABw"))
end)

akx.claimAt = os.clock() + 3
akx.askedAt = 0

return true
end

function cjgg.misc.expeditions.popup()
local ghi = bvm:FindFirstChild(_d("NR8RVlAOGBkID3RBDg"))

return ghi and ghi:FindFirstChild(_d("MwsAWlk3AwASEQ")) or nil
end

function cjgg.misc.expeditions.closeRewards()
local brzq = cjgg.misc.expeditions
local fvm = brzq.popup()

if not (fvm and fvm.Visible) then
return false
end

local xgoz = fvm:FindFirstChild(_d("PwwjRkATAx4"))

if xgoz and type(firesignal) == _d("FhIPUEAOAx4") then
pcall(firesignal, xgoz.Activated)
end

pcall(function()
fvm.Visible = false
end)

return true
end

function cjgg.misc.expeditions.rewardsText()
local jef = cjgg.misc.expeditions

if #jef.rewardLog == 0 then
return _d("PggVW10JC1AEDVJdCgkURxhWQElMNREEQU1HHBEeDkZARxgYAkFAURUaFRVBQFEJCANHDVJaAx9QDwRBUUcbGRMJE10TH1ATCFZGRw0eA0FaQBRMEwgPR1EJGANJ")
end

local yud = {}

for vzms, ywv in ipairs(jef.rewardLog) do
local xhr = {}
local sci = ywv.items or {}

for fupg, juyp in ipairs(sci) do
if fupg > 4 then
table.insert(xhr, _d("Ww") .. tostring(#sci - 4) .. _d("UAoOQVE"))
break
end

local qt = juyp.id or juyp.itemId
local zgtl = qt and rbao.ById[qt] or nil
local lhe = (zgtl and zgtl.name) or (juyp.potions and _d("IAgVWlsJHw")) or tostring(qt or _d("AgIWUkYD"))

table.insert(xhr, lhe .. _d("UB8") .. tostring(juyp.count or juyp.max or juyp.min or 1))
end

local tixm = math.max(0, os.time() - (tonumber(ywv.at) or os.time()))
local xzu

if tixm < 60 then
xzu = tostring(tixm) .. _d("A0cAVFs")
elseif tixm < 3600 then
xzu = tostring(math.floor(tixm / 60)) .. _d("HUcAVFs")
else
xzu = tostring(math.floor(tixm / 3600)) .. _d("GEcAVFs")
end

table.insert(yud, tostring(ywv.title) .. _d("UKXWEw") .. xzu)
table.insert(yud, table.concat(xhr, _d("XEc")))
end

return table.concat(yud, _d("eg"))
end

function cjgg.misc.expeditions.saveRewards()
local dvlx = cjgg.misc.expeditions

if type(writefile) ~= _d("FhIPUEAOAx4") then
return false
end

return pcall(function()
if type(makefolder) == _d("FhIPUEAOAx4") and type(isfolder) == _d("FhIPUEAOAx4") and not isfolder(_d("MSQjaw")) then
makefolder(_d("MSQjaw"))
end

writefile(dvlx.rewardPath, game:GetService(_d("OBMVQ2cCHgYOAlY")):JSONEncode({
rewards = dvlx.rewardLog,
updatedAt = os.time(),
}))
end)
end

function cjgg.misc.expeditions.loadRewards()
local dljp = cjgg.misc.expeditions

if type(readfile) ~= _d("FhIPUEAOAx4") or type(isfile) ~= _d("FhIPUEAOAx4") then
return false
end

local vct, ubak = pcall(function()
if not isfile(dljp.rewardPath) then
return nil
end

return readfile(dljp.rewardPath)
end)

if not vct or type(ubak) ~= _d("AxMTWloA") or #ubak == 0 then
return false
end

local ne

if not pcall(function()
ne = game:GetService(_d("OBMVQ2cCHgYOAlY")):JSONDecode(ubak)
end) then
return false
end

if type(ne) ~= _d("BAYDX1E") or type(ne.rewards) ~= _d("BAYDX1E") then
return false
end

dljp.rewardLog = {}

for erfa, oqi in ipairs(ne.rewards) do
if type(oqi) == _d("BAYDX1E") and type(oqi.items) == _d("BAYDX1E") then
table.insert(dljp.rewardLog, {
at = tonumber(oqi.at) or os.time(),
title = tostring(oqi.title or _d("NR8RVlAOGBkIDw")),
items = oqi.items,
})
end
end

return #dljp.rewardLog > 0
end

function cjgg.misc.expeditions.start(hyc, nar)
local owye = cjgg.misc.expeditions

if owye.status(hyc) ~= _d("EREAWlgGDhwC") then
return false
end

if os.clock() < (owye.startedAt[hyc] or 0) then
return false
end

local kvg = owye.remote()

if not kvg then
return false
end

local bz = owye.cards(hyc, nar)
local ovzr = owye.data()
local vfx = ovzr and tonumber(ovzr.CardsPerExpedition) or 4

if #bz < vfx then
return false
end

local zozl = {}

for ukj, zngq in ipairs(bz) do
zozl[ukj] = { cardId = zngq.cardId, borderLevel = zngq.borderLevel }
end

pcall(function()
kvg:FireServer(_d("AxMAQUA"), hyc, zozl)
end)

owye.startedAt[hyc] = os.clock() + 6
owye.askedAt = 0

return true
end

cjgg.misc.icon = function()
local zbrp = gethui()

for fh, mzo in ipairs(zbrp:QueryDescendants(_d("OQoAVFErDRICDQ"))) do
if mzo.Name == _d("JAYDelkGCxU") then
local xtt = mzo.Parent
local oxm = xtt and xtt:FindFirstChild(_d("JAYDYEMOGBMPBEF6BgEV"))

if oxm and oxm.Text == _d("PQ4SUFELABEJBFxBFA") then
if mzo:GetAttribute(_d("MSQja3kOHxMuAlxa")) then
return true
end

mzo:SetAttribute(_d("MSQja3kOHxMuAlxa"), true)
mzo.Image = _d("")
mzo.BackgroundTransparency = 1

local function xgf(nzua, ac, kyb, ndqq, sgep, qse, unz)
local dsh = Instance.new(nzua)

dsh.Size = UDim2.fromOffset(sgep, qse)
dsh.Position = UDim2.fromOffset(kyb, ndqq)
dsh.BackgroundColor3 = ac
dsh.BorderSizePixel = 0
dsh.Parent = mzo

if unz then
local svq = Instance.new(_d("JS4iXEYJCQI"))
svq.CornerRadius = UDim.new(0, unz)
svq.Parent = dsh
end

return dsh
end

local qvc = Color3.fromRGB(168, 170, 176)

local function un(ao, fu, fkml, jykj, easo)
local mu = xgf(_d("NhUAXlE"), qvc, ao, fu, fkml, jykj, easo)

mu.BackgroundTransparency = 1

local wkx = Instance.new(_d("JS4yR0YIBxU"))

wkx.Color = qvc
wkx.Thickness = 1.4
wkx.LineJoinMode = Enum.LineJoinMode.Round
wkx.Parent = mu

return mu
end

un(3, 1, 6, 4, 1)
un(1, 4, 16, 12, 2)

local tkqk = xgf(_d("NhUAXlE"), qvc, 3, 8, 5, 5)

tkqk.BackgroundTransparency = 1
tkqk.ClipsDescendants = true

local pudl = xgf(_d("NhUAXlE"), qvc, 0, 1, 5, 5)

pudl.Rotation = 45
pudl.Parent = tkqk

xgf(_d("NhUAXlE"), qvc, 9, 9, 4, 4, 4)
xgf(_d("NhUAXlE"), qvc, 13, 10, 3, 3, 1)

return true
end
end
end

return false
end

cjgg.misc.tab = pnuq:Tab({
Name = _d("PQ4SUFELABEJBFxBFA"),

Image = _d(""),
})

task.defer(function()
for bgfq = 1, 20 do
if cjgg.misc.icon() then
break
end

task.wait(0.25)
end
end)

local wk = {
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
lastText = _d("PggVW10JC1AXDkNEAghQHgRHGg"),
tab = nil,
weatherSection = nil,
giveUpSection = nil,
weatherParagraph = nil,
giveUpParagraph = nil,
weatherToggle = nil,
giveUpToggle = nil,
}

getgenv().ACBXPop = wk

function wk.options()
local ozg = {}

for ceg, nmwu in pairs(rbao.ById) do
if nmwu.type == _d("AAgVWlsJ") and type(nmwu.name) == _d("AxMTWloA") then
ozg[#ozg + 1] = nmwu.name
end
end

table.sort(ozg)

return ozg
end

function wk.idOf(kmbk)
for zxe, nael in pairs(rbao.ById) do
if nael.type == _d("AAgVWlsJ") and nael.name == kmbk then
return zxe
end
end

return nil
end

function wk.count(xme)
local hkxt = klg.balances

return tonumber(hkxt and hkxt[xme]) or 0
end

function wk.pop(xts, ir, lahp)
local inak = {}

for guw, adxk in pairs(xts) do
if adxk then
local aih = wk.idOf(guw)

if aih then
local ocu = wk.count(aih)

if ocu <= 0 then
inak[#inak + 1] = guw .. _d("UEpBXVsJCVALBFVA")
else
local ibki = math.clamp(math.floor(tonumber(ir) or 1), 1, ocu)

pcall(function()
vxjo.UseItem:FireServer(aih, ibki)
end)

inak[#inak + 1] = guw .. _d("UB8") .. ibki
task.wait(0.3)
end
end
end
end

if #inak == 0 then
return false
end

wk.lastText = lahp .. _d("UEpB") .. table.concat(inak, _d("XEc"))

pcall(function()
cng:Notify({
Title = _d("IAgR"),
Description = wk.lastText,
Lifetime = 5,
})
end)

return true
end

function wk.status()
local mghg = zpw.weatherWanted(wk.weathers)
local lokr = zpw.weatherNow or _d("BQkKXVsQAg")
local ef = {
_d("JwIAR1wCHkpH") .. lokr .. (mghg and (_d("UE8RXEQXBR4AWxM") .. mghg .. _d("WQ")) or _d("")),
_d("PAYSRw5H") .. wk.lastText,
}

return table.concat(ef, _d("eg"))
end

function wk.giveUpStatus()
if wk.armedAt > 0 then
return _d("MRUMVlBHQVAQAFpADgIXRwdcRkcYGAJBQUEJTAQIQVZaA0J6KwBAQF1M") .. wk.lastText
end

return _d("OQMNVhptIBEUFQkU") .. wk.lastText
end

wk.tab = pnuq:Tab({
Name = _d("IAgR"),

Image = _d(""),
})

wk.icon = function()
local utbr = gethui()

for xji, gjj in ipairs(utbr:QueryDescendants(_d("OQoAVFErDRICDQ"))) do
if gjj.Name == _d("JAYDelkGCxU") then
local joi = gjj.Parent
local iwhr = joi and joi:FindFirstChild(_d("JAYDYEMOGBMPBEF6BgEV"))

if iwhr and iwhr.Text == _d("IAgR") then
if gjj:GetAttribute(_d("MSQja2QIHDkEDl0")) then
return true
end

gjj:SetAttribute(_d("MSQja2QIHDkEDl0"), true)
gjj.Image = _d("")
gjj.BackgroundTransparency = 1

local jmf = Color3.fromRGB(168, 170, 176)

local function lbw(ervd, tw, ygc, cao, jaoh, yznb)
local hrww = Instance.new(ervd)

hrww.Size = UDim2.fromOffset(cao, jaoh)
hrww.Position = UDim2.fromOffset(tw, ygc)
hrww.BackgroundColor3 = jmf
hrww.BorderSizePixel = 0
hrww.Parent = gjj

if yznb then
local lc = Instance.new(_d("JS4iXEYJCQI"))
lc.CornerRadius = UDim.new(0, yznb)
lc.Parent = hrww
end

return hrww
end

local function pthj(ay, sv, lmtm, ieey, ajfc)
local rqcs = lbw(_d("NhUAXlE"), ay, sv, lmtm, ieey, ajfc)

rqcs.BackgroundTransparency = 1

local exi = Instance.new(_d("JS4yR0YIBxU"))

exi.Color = jmf
exi.Thickness = 1.3
exi.LineJoinMode = Enum.LineJoinMode.Round
exi.Parent = rqcs

return rqcs
end

pthj(1, 6, 16, 12, 6)
pthj(6, 3, 6, 4, 1)
lbw(_d("NhUAXlE"), 5, 1, 8, 2, 1)
lbw(_d("NhUAXlE"), 7, 0, 4, 1, 0)

lbw(_d("NhUAXlE"), 4, 11, 10, 1, 0)
lbw(_d("NhUAXlE"), 13, 3, 2, 2, 2)
lbw(_d("NhUAXlE"), 15, 6, 2, 2, 2)

return true
end
end
end

return false
end

task.defer(function()
for wdl = 1, 20 do
if wk.icon() then
break
end

task.wait(0.25)
end
end)

wk.weatherSection = wk.tab:Section({
Side = _d("PAIHRw"),
})

wk.weatherSection:Header({
Name = _d("IAgVWlsJH1AIDxNDAg0EDwRBFJfz180"),
})

wk.weatherToggle = wk.weatherSection:Toggle({
Name = _d("IAgRE1sJTAQPBEBRRxsVBhVbURUf"),
Default = false,
Callback = function(nrrm)
if nrrm and (next(wk.weatherPotions) == nil or next(wk.weathers) == nil) then
wk.onWeather = false

pcall(function()
wk.weatherToggle:UpdateState(false)
end)

cng:Dialog({
Title = _d("IAgR"),
Description = _d("JA4CWBQGGFALBFJHE0wfCQQTQwINBA8EQRQGAhRHDl1RRxwfEwhcWkcKGRUSRxRKTCAIERNaAgkUFEFRWxMEUBMOE18JAwdHFltVE0wECEFXRg4CG0cAXVBHGxgCDx0"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})

return
end

wk.onWeather = nrrm

if nrrm then
wk.weatherSpent = nil
end
end,
}, _d("AAgRbFsJMwQPBEBROBsVBhVbURUf"))

wk.weatherSection:Dropdown({
Name = _d("JwIAR1wCHgM"),
Multi = true,
Required = false,
Options = { _d("JB4RW1sIAg"), _d("MgsISU4GHhQ"), _d("PA4GW0AJBR4A"), _d("Jw4PV0cTAwIK"), _d("Iw8AQV0JCxEJ"), _d("Iw4PVEELDQIOFUo"), _d("PQgPUkYEBFAjDl5VDgI"), _d("JggIVw"), _d("PQYFVhQOAlAvBFJCAgI"), _d("PQYPVFU") },
Callback = function(fttj)
wk.weathers = {}

if type(fttj) == _d("BAYDX1E") then
for yzm, fp in pairs(fttj) do
if fp then
wk.weathers[yzm] = true
end
end
end
end,
}, _d("BwIAR1wCHgM"))

wk.weatherSection:Dropdown({
Name = _d("IAgVWlsJHw"),
Multi = true,
Required = false,
Options = wk.options(),
Callback = function(qba)
wk.weatherPotions = {}

if type(qba) == _d("BAYDX1E") then
for fncc, odf in pairs(qba) do
if odf then
wk.weatherPotions[fncc] = true
end
end
end
end,
}, _d("AAgVWlsJHw"))

wk.weatherSection:Input({
Name = _d("MQoORloT"),
Placeholder = _d("QQ"),
AcceptedCharacters = _d("PhIMVkYODw"),
Callback = function(xdm)
local jlx = math.floor(tonumber(xdm) or 1)

wk.weatherAmount = math.clamp(jlx, 1, 50)
end,
}, _d("EQoORloT"))

wk.weatherParagraph = wk.weatherSection:Paragraph({
Header = _d("IxMAR0EU"),
Body = wk.status(),
})

wk.giveUpSection = wk.tab:Section({
Side = _d("Ig4GW0A"),
})

wk.giveUpSection:Header({
Name = _d("MQEVVkZHCxkRBBNBFw"),
})

wk.giveUpToggle = wk.giveUpSection:Toggle({
Name = _d("IAgRE1UBGBUVQVIUEwMHAhMTUw4aFUcUQw"),
Default = false,
Callback = function(wugl)
if wugl and next(wk.giveUpPotions) == nil then
wk.afterGiveUp = false

pcall(function()
wk.giveUpToggle:UpdateState(false)
end)

cng:Dialog({
Title = _d("IAgR"),
Description = _d("JA4CWBQGGFALBFJHE0wfCQQTRAgYGQgPE1IOHgMTQR4UEwQVFQQTXRRMHggVW10JC1ATDhNQFQUeDEFSUhMJAkcVW1FHHgUJQVxADwkCEAhAUUk"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})

return
end

wk.afterGiveUp = wugl
end,
}, _d("AAgRbFUBGBUVPlJrEwMHAhNsUw4aFTgUQw"))

wk.giveUpSection:Dropdown({
Name = _d("IAgVWlsJHw"),
Multi = true,
Required = false,
Options = wk.options(),
Callback = function(pmwt)
wk.giveUpPotions = {}

if type(pmwt) == _d("BAYDX1E") then
for reo, nbdg in pairs(pmwt) do
if nbdg then
wk.giveUpPotions[reo] = true
end
end
end
end,
}, _d("AAgVWlsJHy9V"))

wk.giveUpSection:Input({
Name = _d("MQoORloT"),
Placeholder = _d("QQ"),
AcceptedCharacters = _d("PhIMVkYODw"),
Callback = function(fdes)
local hoiw = math.floor(tonumber(fdes) or 1)

wk.giveUpAmount = math.clamp(hoiw, 1, 50)
end,
}, _d("EQoORloTM0I"))

wk.giveUpParagraph = wk.giveUpSection:Paragraph({
Header = _d("IxMAR0EU"),
Body = wk.giveUpStatus(),
})

local bqg = {
autoSave = false,
autoRoll = true,
autoQuickRoll = true,

loading = false,
selected = nil,
lastText = _d("PggVW10JC1AQE1pAEwkeRxhWQEdBUBcIUF9HDVAUAEVRRwoZCwQTVgIAHxBP"),
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
theme = _d("JggIVw"),
accent = nil,
savesAt = 0,
autoSaveAt = 0,
themeAt = 0,
capAt = 0,
scaleAnchor = nil,
statusAt = 0,
knownSaves = _d(""),
}

getgenv().ACBXSettings = bqg

bqg.presets = {
Void = { panel = Color3.fromRGB(15, 15, 15), element = Color3.fromRGB(0, 0, 0), accent = Color3.fromRGB(168, 170, 176) },
Ocean = { panel = Color3.fromRGB(6, 16, 26), element = Color3.fromRGB(8, 26, 40), accent = Color3.fromRGB(77, 166, 255) },
Ember = { panel = Color3.fromRGB(26, 10, 8), element = Color3.fromRGB(36, 16, 10), accent = Color3.fromRGB(255, 122, 69) },
Sakura = { panel = Color3.fromRGB(26, 9, 18), element = Color3.fromRGB(38, 14, 26), accent = Color3.fromRGB(255, 125, 177) },
Mint = { panel = Color3.fromRGB(7, 20, 14), element = Color3.fromRGB(9, 30, 22), accent = Color3.fromRGB(77, 227, 160) },
Graphite = { panel = Color3.fromRGB(20, 20, 22), element = Color3.fromRGB(30, 30, 33), accent = Color3.fromRGB(200, 200, 206) },
}

bqg.themeOrder = { _d("JggIVw"), _d("PwQEUlo"), _d("NQoDVkY"), _d("IwYKRkYG"), _d("PQ4PRw"), _d("NxUAQ1wOGBU") }

local vtlb = _d("MSQjE2YCDhkVFVsbFAkEEwhdUxQ")

function bqg.saves()
local oul, ss = pcall(function()
return vpcv:RefreshConfigList()
end)

if oul and type(ss) == _d("BAYDX1E") then
table.sort(ss)
return ss
end

return {}
end

function bqg.autoLoadName()
local ql, jg = pcall(function()
if isfile and isfile(vtlb .. _d("XwYUR1sLAxEDT0dMEw")) then
return readfile(vtlb .. _d("XwYUR1sLAxEDT0dMEw"))
end
end)

if ql and type(jg) == _d("AxMTWloA") then
jg = jg:gsub(_d("LkISGA"), _d("")):gsub(_d("VRRKFw"), _d(""))

if jg ~= _d("") then
return jg
end
end

return nil
end

function bqg.setAutoLoad(vilk)

return (pcall(function()
writefile(vtlb .. _d("XwYUR1sLAxEDT0dMEw"), vilk or _d(""))
end))
end

function bqg.delete(gdif)
if type(gdif) ~= _d("AxMTWloA") or gdif == _d("") then
return false, _d("IA4CWBQGTAMGF1YUAQUcAkFVXRUfBEk")
end

local snd = vtlb .. _d("Xw") .. gdif .. _d("Xg0SXFo")
local ljoe = false

pcall(function()
ljoe = isfile ~= nil and isfile(snd) == true
end)

if not ljoe then
return false, _d("JA8EQVFHBQNHD1wUAQUcAkFQVQsAFQNB") .. gdif .. _d("Xg")
end

local wcd, mzmk = pcall(function()
delfile(snd)
end)

if not wcd then
return false, tostring(mzmk)
end

if bqg.autoLoadName() == gdif then
bqg.setAutoLoad(_d(""))
end

if bqg.selected == gdif then
bqg.selected = nil
bqg.selectionShown = nil
end

bqg.knownSaves = nil
bqg.savesAt = 0

return true
end

function bqg.save(ghd)
if type(ghd) ~= _d("AxMTWloA") or ghd:gsub(_d("VRQ"), _d("")) == _d("") then
return false, _d("Nw4XVhQTBBVHElJCAkwRRw9SWQJMFg4TQEBJ")
end

local xim, zex, sdl = pcall(function()
return vpcv:SaveConfig(ghd)
end)

if not xim then
return false, tostring(zex)
end

if zex ~= true then
return false, tostring(sdl or _d("BA8EE1IOABVHAlxBCwhQCQ5HFAUJUBATWkATCR4"))
end

return true
end

function bqg.replayOff(soxi)
local imhh, xhuq = pcall(function()
return readfile(vtlb .. _d("Xw") .. soxi .. _d("Xg0SXFo"))
end)

if not imhh or type(xhuq) ~= _d("AxMTWloA") then
return
end

local etv
imhh, etv = pcall(function()
return game:GetService(_d("OBMVQ2cCHgYOAlY")):JSONDecode(xhuq)
end)

if not imhh or type(etv) ~= _d("BAYDX1E") or type(etv.objects) ~= _d("BAYDX1E") then
return
end

for okje, ubn in ipairs(etv.objects) do
if ubn.type == _d("JAgGVFgC") and ubn.state == false and ubn.flag then
local wcun = vpcv.Options[ubn.flag]

if wcun then
pcall(function()
wcun:UpdateState(false)
end)
end
end
end
end

function bqg.load(hyey)
if type(hyey) ~= _d("AxMTWloA") or hyey == _d("") then
return false, _d("IA4CWBQGTAMGF1YUAQUcAkFVXRUfBEk")
end

bqg.loading = true
dtdm = true

local cbar, si, jdk = pcall(function()
return vpcv:LoadConfig(hyey)
end)

if not cbar then
bqg.loading = false
dtdm = false

return false, tostring(si)
end

if si ~= true then
bqg.loading = false
dtdm = false

return false, tostring(jdk or _d("BA8EE1IOABVHAlxBCwhQCQ5HFAUJUBUEUlA"))
end

task.wait(0.25)
bqg.replayOff(hyey)
bqg.loading = false
dtdm = false

return true
end

bqg.uiPath = _d("MSQjaxsSBV4NElxa")

function bqg.saveUi()
if type(writefile) ~= _d("FhIPUEAOAx4") then
return false
end

if bqg.restoring then
return false
end

local bnbv = bqg.accent

local bupl = {
theme = bqg.theme,
scale = tonumber(string.format(_d("VUlTVQ"), bqg.scaleTarget or 1)),
accent = bnbv and string.format(_d("VQNNFlBLSRQ"),
math.floor(bnbv.R * 255 + 0.5),
math.floor(bnbv.G * 255 + 0.5),
math.floor(bnbv.B * 255 + 0.5)) or nil,
}

return pcall(function()
if type(makefolder) == _d("FhIPUEAOAx4") and type(isfolder) == _d("FhIPUEAOAx4") and not isfolder(_d("MSQjaw")) then
makefolder(_d("MSQjaw"))
end

writefile(bqg.uiPath, game:GetService(_d("OBMVQ2cCHgYOAlY")):JSONEncode(bupl))
end)
end

function bqg.loadUi()
if type(readfile) ~= _d("FhIPUEAOAx4") or type(isfile) ~= _d("FhIPUEAOAx4") then
return nil
end

local ifb, icfs = pcall(function()
if not isfile(bqg.uiPath) then
return nil
end

return readfile(bqg.uiPath)
end)

if not ifb or type(icfs) ~= _d("AxMTWloA") or icfs == _d("") then
return nil
end

local adem
ifb, adem = pcall(function()
return game:GetService(_d("OBMVQ2cCHgYOAlY")):JSONDecode(icfs)
end)

if not ifb or type(adem) ~= _d("BAYDX1E") then
return nil
end

bqg.restoring = true

if type(adem.theme) == _d("AxMTWloA") and bqg.presets[adem.theme] then
bqg.theme = adem.theme

pcall(function()
bqg.themeDropdown:UpdateSelection(adem.theme)
bqg.themeDropdown:UpdateName(_d("JA8EXlFdTA") .. adem.theme)
end)
end

local mse, boa, udpi = tostring(adem.accent or _d("")):match(_d("Lk9EVx9OQFhCBRgdS0RVA0oaEA"))

if mse then
local yfpz = Color3.fromRGB(tonumber(mse), tonumber(boa), tonumber(udpi))

bqg.accent = yfpz

pcall(function()
bqg.accentPicker:SetColor(yfpz)
end)
else
bqg.accent = nil

local ios = bqg.presets[bqg.theme] or bqg.presets.Void

pcall(function()
bqg.accentPicker:SetColor(ios.accent)
end)
end

local gatr = tonumber(adem.scale)

if gatr then
gatr = math.clamp(gatr, 0.5, bqg.scaleCeiling())

bqg.scaleTarget = gatr
bqg.scaleAnchor = nil

pcall(function()
bqg.scaleSlider:UpdateValue(gatr)
end)
end

bqg.applyTheme()

bqg.restoring = false
bqg.saveUi()

return adem
end

bqg.prioPath = _d("MSQjaxsXHhkIE1pAHkIaFA5d")

function bqg.prioLabel(zg)
local wv = #sw.prioGroups

if zg <= 1 then
return _d("QUdJW10ABBUUFRo")
end

if zg >= wv then
return tostring(wv) .. _d("UE8NXEMCHwRO")
end

return tostring(zg)
end

function bqg.paintPriority()
if bqg.prioBusy then
return
end

bqg.prioBusy = true

for ggtx, byf in ipairs(sw.prioGroups) do
local rcb = bqg.prioRows and bqg.prioRows[byf.id]

if rcb then
pcall(function()
rcb:UpdateSelection(bqg.prioLabel(byf.rank))
end)
end
end

bqg.prioBusy = false
end

function bqg.setPriority(tyj, tbsz)
if bqg.prioBusy or bqg.prioBuilding then
return
end

local fz

for jzjf, lte in ipairs(sw.prioGroups) do
if lte.id == tyj then
fz = lte.rank
lte.rank = tbsz
end
end

if fz and fz ~= tbsz then
for gols, wcgr in ipairs(sw.prioGroups) do
if wcgr.id ~= tyj and wcgr.rank == tbsz then
wcgr.rank = fz
end
end
end

bqg.paintPriority()
bqg.savePriority()
end

function bqg.savePriority()
if type(writefile) ~= _d("FhIPUEAOAx4") then
return false
end

local wzrn = {}

for nl, dahf in ipairs(sw.prioGroups) do
wzrn[dahf.id] = dahf.rank
end

return pcall(function()
if type(makefolder) == _d("FhIPUEAOAx4") and type(isfolder) == _d("FhIPUEAOAx4") and not isfolder(_d("MSQjaw")) then
makefolder(_d("MSQjaw"))
end

writefile(bqg.prioPath, game:GetService(_d("OBMVQ2cCHgYOAlY")):JSONEncode({ ranks = wzrn }))
end)
end

function bqg.loadPriority()
if type(readfile) ~= _d("FhIPUEAOAx4") or type(isfile) ~= _d("FhIPUEAOAx4") then
return nil
end

local vo, zpzf = pcall(function()
if not isfile(bqg.prioPath) then
return nil
end

return readfile(bqg.prioPath)
end)

if not vo or type(zpzf) ~= _d("AxMTWloA") or zpzf == _d("") then
return nil
end

local vt

vo, vt = pcall(function()
return game:GetService(_d("OBMVQ2cCHgYOAlY")):JSONDecode(zpzf)
end)

if not vo or type(vt) ~= _d("BAYDX1E") or type(vt.ranks) ~= _d("BAYDX1E") then
return nil
end

return vt.ranks
end

function bqg.restorePriority()
local tmcc = bqg.loadPriority()

if not tmcc then
return
end

for hih, alur in ipairs(sw.prioGroups) do
local dij = tonumber(tmcc[alur.id])

if dij and dij >= 1 and dij <= #sw.prioGroups then
alur.rank = dij
end
end

bqg.paintPriority()
end

function bqg.colourKey(pck)
return math.floor(pck.R * 255) .. _d("XA") .. math.floor(pck.G * 255) .. _d("XA") .. math.floor(pck.B * 255)
end

function bqg.guiRoot()

if not lrm() then
return nil
end

if bqg.root and bqg.root.Parent then
return bqg.root
end

local rwd = gethui and gethui() or game:GetService(_d("MwgTVnMSBQ"))

for bndh, dn in ipairs(rwd:GetChildren()) do
if dn:IsA(_d("IwQTVlEJKwUO")) and dn:FindFirstChild(_d("MgYSVg")) then
bqg.root = dn.Base

return bqg.root
end
end

return nil
end

function bqg.applyTheme()
local fua = bqg.guiRoot()
local pzyl = bqg.presets[bqg.theme] or bqg.presets.Void

if not fua then
return false
end

local nfk = {
panel = pzyl.panel,
element = pzyl.element,
accent = bqg.accent or pzyl.accent,
}

local oghm = {}

for qvnz, zeut in pairs(bqg.presets) do
oghm[bqg.colourKey(zeut.panel)] = _d("AAYPVlg")
oghm[bqg.colourKey(zeut.element)] = _d("FQsEXlEJGA")
oghm[bqg.colourKey(zeut.accent)] = _d("EQQCVloT")
end

oghm[bqg.colourKey(nfk.accent)] = _d("EQQCVloT")

if oghm[bqg.colourKey(fua.BackgroundColor3)] == _d("AAYPVlg") then
fua.BackgroundColor3 = nfk.panel
end

for uyub, dnzx in ipairs(fua:GetDescendants()) do
if dnzx:IsA(_d("NxIIfFYNCRMT")) then
local hvv = oghm[bqg.colourKey(dnzx.BackgroundColor3)]

if hvv then
dnzx.BackgroundColor3 = nfk[hvv]
end
elseif dnzx:IsA(_d("JS4yR0YIBxU")) then
if oghm[bqg.colourKey(dnzx.Color)] == _d("EQQCVloT") then
dnzx.Color = nfk.accent
end
end

if dnzx:IsA(_d("OQoAVFErDRICDQ")) and dnzx.Name == _d("JAYDelkGCxU") and dnzx.Image ~= _d("") then
dnzx.ImageColor3 = nfk.accent
dnzx.ImageTransparency = 0
dnzx:SetAttribute(_d("MSQja2AGDjEEAlZaEw"), nfk.accent)

if not dnzx:GetAttribute(_d("MSQja2AGDiQOD0c")) then
dnzx:SetAttribute(_d("MSQja2AGDiQOD0c"), true)

local function ag()
local ix = dnzx:GetAttribute(_d("MSQja2AGDjEEAlZaEw"))

if ix and dnzx.ImageColor3 ~= ix then
dnzx.ImageColor3 = ix
end

if dnzx.ImageTransparency ~= 0 then
dnzx.ImageTransparency = 0
end
end

xftw(dnzx:GetPropertyChangedSignal(_d("OQoAVFEzHhEJEkNVFQkeBBg")), ag)
xftw(dnzx:GetPropertyChangedSignal(_d("OQoAVFEkAxwIEwA")), ag)
end
end
end

return true
end

local wkr = pnuq:Tab({
Name = _d("PQYR"),
Image = _d("AgUZUkcUCQQOBQkbSFpAVFADA1JVQ1Y"),
})

local hgu = {
holdFor = 25,
fly = {
on = false,
speed = 55,
connection = nil,
},
islands = {
{ name = _d("PAgDUU0"), kind = _d("BwgTX1A"), arg = _d("HAgDUU0") },
{ name = _d("MQUAXVAIAhUDQXpHCw0eAw"), kind = _d("GRQNUloD"), arg = _d("EQUAXVAIAhUDPlpHCw0eAw") },
{ name = _d("JBAIXRQlCREECVZH"), kind = _d("GRQNUloD"), arg = _d("BBAIXWsFCREECVZH"), note = _d("UDMJVhQUCQIRBEEUAx4fFxITXRNMBQkVWlhHFR8SQVtVEQlQFABaWAIIUBMJVkYCQg") },
{ name = _d("Jw4PV1kOABxHKEBYAg"), kind = _d("GRQNUloD"), arg = _d("Bw4PV1kOABw4CEBYAg"), note = _d("UDMJVhQUCQIRBEEUAx4fFxITXRNMBQkVWlhHFR8SQVtVEQlQFABaWAIIUBMJVkYCQg") },
},
npcs = {
{ name = _d("MwYTVxQqCQIABA"), npc = _d("FhISVmsJHBM"), attr = _d("PjcielA"), at = Vector3.new(-272, 33, -40347) },
{ name = _d("NR8RVlAOGBkID0A"), npc = _d("NR8RVlAOGBkID31kJA"), attr = _d("NR8RVlAOGBkID31kJA"), at = Vector3.new(-347, 35, -40361) },
{ name = _d("NAICXFoUGAISAkc"), npc = _d("FAICXFoUGAISAkdrCRwT"), attr = _d("PjcielA"), at = Vector3.new(-264, 33, -40331) },
{ name = _d("MxUAVUA"), npc = _d("ExUAVUA4AgAE"), attr = _d("PjcielA"), at = Vector3.new(-330, 33, -40277) },
{ name = _d("IwwIX1hHOAICBA"), npc = _d("IwwIX1gzHhUCL2N3"), attr = _d("IwwIX1gzHhUCL2N3"), at = Vector3.new(-290, 32, -40283) },
{ name = _d("MwYTVxQuAhQCGQ"), npc = _d("EwYTV2sOAhQCGWxaFw8"), attr = _d("PjcielA"), at = Vector3.new(-313, 33, -40282) },
{ name = _d("IAYCWBQqCQIECVJaEw"), npc = _d("AAYCWGsKCQIECVJaEw"), attr = _d("PjcielA"), at = Vector3.new(-301, 33, -40270) },
{ name = _d("NBIPVFEIAg"), npc = _d("FBIPVFEIAi8JEVA"), attr = _d("PjcielA"), at = Vector3.new(-339, 41, -40399) },
{ name = _d("Ng4SW1EVAREJ"), npc = _d("Ng4SW1EVAREJL2N3"), attr = _d("Ng4SW1EVAREJL2N3"), at = Vector3.new(-493, 14, -40262) },
{ name = _d("IwICQVETTDEJBl9RFQ"), npc = _d("IwICQVETLR4ADVZGKTwz"), attr = _d("IwICQVETLR4ADVZGKTwz"), at = Vector3.new(-209, 34, -40382) },
{ name = _d("OAYNX1sQCRUJQWBcCBw"), npc = _d("IBIMQ18OAlAqBEFXDw0eEw"), at = Vector3.new(-29989, 78, -30259) },
{ name = _d("IwYCQV0BBRMCQXJYEw0C"), landmark = _d("IwYCQV0BBRMCIF9ABh4"), island = _d("EQUAXVAIAhUDPlpHCw0eAw"), at = Vector3.new(-3548, 11, -40462) },
{ name = _d("OAYTV1cIHhVHNVxDAh4"), npc = _d("OAYTV1cIHhUzDkRRFQ"), island = _d("EQUAXVAIAhUDPlpHCw0eAw"), at = Vector3.new(-3795, 25, -40250) },
{ name = _d("ORQNUloDTDYOEltRFQERCQ"), npc = _d("ORQNUloDKhkUCVZGCg0eKTFw"), attr = _d("ORQNUloDKhkUCVZGCg0eKTFw"), island = _d("EQUAXVAIAhUDPlpHCw0eAw"), at = Vector3.new(-3825, 23, -40260) },
{ name = _d("NA4GVFEV"), npc = _d("NA4GVFEVIiAk"), attr = _d("NA4GVFEVIiAk"), island = _d("BBAIXWsFCREECVZH"), at = Vector3.new(-5998, 26, -40565) },
{ name = _d("IwICQVETTDQOBlRRFQ"), npc = _d("IwICQVETKBkABlZGKTwz"), attr = _d("IwICQVETKBkABlZGKTwz"), island = _d("Bw4PV1kOABw4CEBYAg"), at = Vector3.new(-7740, 17, -40343) },
},
}

function hgu.hold()
dk.tpHoldUntil = os.clock() + hgu.holdFor

dk.deepPhase = _d("GQMNVg")
dk.deepStageAt = 0
dk.phase = _d("GQMNVg")
dk.nextCastAt = 0
dk.watchdogAt = 0

return hgu.holdFor
end

function hgu.point(lxjb)
local hltk

if lxjb.landmark then
hltk = workspace:FindFirstChild(lxjb.landmark)
else
local hmr = workspace:FindFirstChild(_d("PjciQA"))

if hmr then
for mhd, bkz in ipairs(hmr:GetChildren()) do
local vza

if lxjb.attr then
vza = bkz:GetAttribute(lxjb.attr) == lxjb.npc
else
vza = bkz.Name == lxjb.npc
end

if vza then
hltk = bkz
break
end
end
end
end

if hltk then
local jjw = hltk.PrimaryPart
or hltk:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"), true)
or hltk:FindFirstChildWhichIsA(_d("MgYSVmQGHgQ"), true)

if jjw then
return jjw.Position
end
end

return lxjb.at
end

function hgu.resume()
if not dk.enabled then
return
end

local yhh = qgqr.Character
local syjb = yhh and yhh:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not syjb or (syjb.Position - uzyu).Magnitude < 40 then
return
end

pcall(function()
dk.recover()
end)
end

function hgu.standAt(omr)
local wagm = qgqr.Character
local ltcf = wagm and wagm:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not ltcf or not omr then
return false
end

local dvp = RaycastParams.new()
dvp.FilterType = Enum.RaycastFilterType.Exclude
dvp.FilterDescendantsInstances = { wagm }

local chl = workspace:Raycast(omr + Vector3.new(0, 10, 0), Vector3.new(0, -80, 0), dvp)
local mlu = omr.Y

if chl and chl.Instance.Name ~= _d("JwYVVkY") then
local wsu = chl.Position.Y + 3.2

if math.abs(wsu - omr.Y) <= 8 then
mlu = wsu
end
end

local kcw = Vector3.new(ltcf.Position.X - omr.X, 0, ltcf.Position.Z - omr.Z)

if kcw.Magnitude < 1 then
kcw = Vector3.new(4, 0, 0)
else
kcw = kcw.Unit * 4
end

local lug = Vector3.new(omr.X + kcw.X, mlu, omr.Z + kcw.Z)

ltcf.CFrame = CFrame.new(lug)

return true
end

function hgu.unlock()
local boaf = {
{ id = _d("EQUAXVAIAhUDPlpHCw0eAw"), at = Vector3.new(-3825, 24, -40260) },
{ id = _d("BBAIXWsFCREECVZH"), at = Vector3.new(-6180, 40, -40350) },
{ id = _d("Bw4PV1kOABw4CEBYAg"), at = Vector3.new(-7480, 30, -40350) },
}
local vlpz = {}

for lpq, amrp in ipairs(boaf) do
local ery = vxjo.FishingGetState:InvokeServer()

if ery and ery.areas and ery.areas[amrp.id] == true then
table.insert(vlpz, amrp.id .. _d("SkcAX0YCDRQeQVxEAgI"))
else
hgu.hold()
hgu.standAt(amrp.at)
task.wait(2.4)

local pknm = vxjo.FishingGetState:InvokeServer()

table.insert(vlpz, amrp.id .. (pknm and pknm.areas and pknm.areas[amrp.id] and _d("SkcUXVgIDxsCBQ") or _d("SkcHUl0LCRQ")))
end
end

hgu.hold()
pcall(function()
vxjo.TeleportToWorld:FireServer(_d("HAgDUU0"))
end)
task.wait(2.5)

return table.concat(vlpz, _d("UKXWEw"))
end

function hgu.flyToggle(nyva)
hgu.fly.on = nyva

if not nyva then
return _d("NgsYE1sBCl4")
end

local svf = qgqr.Character
local gtir = svf and svf:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not gtir then
return _d("PghBUFwGHhEEFVZGRxgfRw1aUhNC")
end

hgu.fly.height = gtir.Position.Y

if hgu.fly.connection then
return _d("NgsYE1sJQg")
end

local moiu = game:GetService(_d("JRQEQX0JHAUTMlZGEQUTAg"))

hgu.fly.connection = xftw(game:GetService(_d("IhIPYFEVGhkEBA")).Heartbeat, function(fbzc)
if not hgu.fly.on then
return
end

local slry = qgqr.Character
local bixb = slry and slry:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not bixb then
return
end

local yti = workspace.CurrentCamera
local dfq = Vector3.zero

if yti then
local dx = yti.CFrame.LookVector
local qeaa = Vector3.new(dx.X, 0, dx.Z)

if qeaa.Magnitude > 0.01 then
qeaa = qeaa.Unit
end

local yri = Vector3.new(qeaa.Z, 0, -qeaa.X)

if moiu:IsKeyDown(Enum.KeyCode.W) then
dfq = dfq + qeaa
end

if moiu:IsKeyDown(Enum.KeyCode.S) then
dfq = dfq - qeaa
end

if moiu:IsKeyDown(Enum.KeyCode.D) then
dfq = dfq + yri
end

if moiu:IsKeyDown(Enum.KeyCode.A) then
dfq = dfq - yri
end
end

local rav = 0

if moiu:IsKeyDown(Enum.KeyCode.Space) then
rav = 1
elseif moiu:IsKeyDown(Enum.KeyCode.LeftControl) then
rav = -1
end

local qmh = hgu.fly.speed or 55
local dyrx = dfq * qmh * fbzc + Vector3.new(0, rav * qmh * 0.6 * fbzc, 0)

if dyrx.Magnitude < 0.001 then
return
end

bixb.CFrame = bixb.CFrame + dyrx
bixb.AssemblyLinearVelocity = Vector3.zero
end)

return _d("NgsYE1sJQg")
end

function hgu.go(vnm)
hgu.hold()

if vnm.kind == _d("BwgTX1A") then
pcall(function()
vxjo.TeleportToWorld:FireServer(vnm.arg)
end)

return _d("IwIPRxQTBBVH") .. vnm.name .. _d("UBMEX1EXAwITTw")
end

if vnm.kind == _d("GRQNUloD") then
pcall(function()
vxjo.FishingIslandTeleport:FireServer(vnm.arg)
end)

return _d("IwIPRxQTBBVH") .. vnm.name .. _d("UBMEX1EXAwITTw") .. tostring(vnm.note or _d(""))
end

local jbly = hgu.point(vnm)
local sl = qgqr.Character
local wixe = sl and sl:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if jbly and wixe and (wixe.Position - jbly).Magnitude > 1500 then
pcall(function()
if vnm.island then
vxjo.FishingIslandTeleport:FireServer(vnm.island)
else
vxjo.TeleportToWorld:FireServer(_d("HAgDUU0"))
end
end)

task.wait(vnm.island and 3.5 or 4.5)

jbly = hgu.point(vnm)

wixe = qgqr.Character and qgqr.Character:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if jbly and wixe and (wixe.Position - jbly).Magnitude > 1500 then
return vnm.name .. _d("UA4SE1sJTA") .. tostring(vnm.island or _d("BA8EE1gIDhIe"))
.. _d("UEpBR1wCTBcGDFYUFQkWEhJWR0cYGAYVE0AVBQBHFF1ADgBQDhUTXAYfUAUEVlpHHhUGAltRA0wfCQJWGg")
end
end

if not jbly then
return vnm.name .. _d("UA4SE1oIGFAODxNADwUDRxZcRgsIXg")
end

if not hgu.standAt(jbly) then
return _d("PghBUFwGHhEEFVZGRxgfRwxcQgJC")
end

task.delay(hgu.holdFor + 2, function()
pcall(hgu.resume)
end)

return _d("IxMOXFBHDhUUCFdRRw") .. vnm.name .. _d("Xg")
end

hgu.islandSection = wkr:Section({ Side = _d("PAIHRw") })
hgu.islandSection:Header({ Name = _d("ORQNUloDH1CX/rypiNT/") })

hgu.npcSection = wkr:Section({ Side = _d("Ig4GW0A") })
hgu.npcSection:Header({ Name = _d("PjciQBSX8+Pq") })

for tnfr, fkq in ipairs(hgu.islands) do
hgu.islandSection:Button({
Name = fkq.name,
Callback = function()
task.spawn(function()
local kuy = hgu.go(fkq)

cng:Notify({
Title = _d("JAINVkQIHgQ"),
Description = kuy,
Lifetime = 6,
})
end)
end,
})
end

hgu.state = dk
hgu.tab = wkr
hgu.islandSection:Button({
Name = _d("JQkNXFcMTBELDRNdFAARCQVA"),
Callback = function()
task.spawn(function()
local bbn = hgu.unlock()

cng:Notify({
Title = _d("ORQNUloDHw"),
Description = bbn,
Lifetime = 10,
})
end)
end,
})

hgu.flySection = wkr:Section({ Side = _d("PAIHRw") })
hgu.flySection:Header({ Name = _d("NgsYE9b75J/f7g") })

hgu.flySection:Toggle({
Name = _d("NgsYExwwLSMjTRNnFw0TAkFGREtMMxMTXxQDAwcJSA"),
Default = false,
Callback = function(rhht)
local jadx = hgu.flyToggle(rhht)

cng:Notify({
Title = _d("NgsY"),
Description = jadx,
Lifetime = 4,
})
end,
}, _d("EQQDS2sBAAk"))

getgenv().ACBXTeleport = hgu

getgenv().ACBXDeepWater = qeuf

pcall(qeuf.dropStale)

for joug, xwzb in ipairs(hgu.npcs) do
hgu.npcSection:Button({
Name = xwzb.name,
Callback = function()
task.spawn(function()
local urq = hgu.go(xwzb)

cng:Notify({
Title = _d("JAINVkQIHgQ"),
Description = urq,
Lifetime = 6,
})
end)
end,
})
end

local gic = naw:Section({ Side = _d("PAIHRw") })

gic:Header({ Name = _d("NA4GVF0JC1CF+rzb3+M") })

local awwc = {
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

local nomq = (tonumber(getgenv().ACBXDigGeneration) or 0) + 1
getgenv().ACBXDigGeneration = nomq

function awwc.read()
local my, xv = pcall(function()
return vxjo.DigGetState:InvokeServer()
end)

return my and type(xv) == _d("BAYDX1E") and xv or nil
end

function awwc.call(jv, mfhu)
local cvk, ujv = pcall(function()
return vxjo.DigShop:InvokeServer(jv, mfhu)
end)

task.wait(2.5)

return cvk and ujv == true
end

function awwc.wear()
local uhn = qgqr.Character

if not uhn then
return false
end

local smab = uhn:FindFirstChildOfClass(_d("OBIMUloIBRQ"))
local glbl = qgqr:FindFirstChild(_d("MgYCWEQGDxs"))

if not (smab and glbl) then
return false
end

smab:UnequipTools()
task.wait(0.4)

for li = 1, 8 do
for ooe, soh in ipairs(glbl:GetChildren()) do
if soh:IsA(_d("JAgOXw")) and soh.Name:find(_d("LiMIVGcPAwYCDQ")) then
smab:EquipTool(soh)

return true
end
end

task.wait(0.5)
end

return false
end

function awwc.run()
local zss = awwc.read()

if not zss then
return _d("JA8EE1AOC1AUCVxERwUDRw9cQEcNHhQWVkYOAhdJ")
end

local cstg = {}

pcall(function()
local simv = vxjo.FishingGetState:InvokeServer()

cstg = simv and simv.areas or {}
end)

if not (cstg.abandoned_island and cstg.twin_beaches and cstg.windmill_isle) then
hgu.unlock()
task.wait(1)
end

local wp

for lgc, trkd in ipairs(hgu.npcs) do
if trkd.name == _d("NA4GVFEV") then
wp = trkd
break
end
end

if not wp then
return _d("JA8EE2AVCREUFEFRRyQFCRVWRkcFA0cPXEBHBR5HFVtdFEwHCBNfUEk")
end

hgu.go(wp)
task.wait(2)

local witk = qgqr.Character
local jxu = witk and witk:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))
local pov = hgu.point(wp)

if not (jxu and pov) or (jxu.Position - pov).Magnitude > 40 then
return _d("MwgUX1BHAh8TQUFRBg8YRxVbUUc4AgIAQEEVCVAvFF1AAh5e")
end

zss = awwc.read() or zss

local mom = false
local kuf = zss.shovels and zss.shovels.shovel_basic == true
local zykg = zss.detectors and zss.detectors.detector_basic == true

if not (kuf and zykg) then
mom = awwc.call(_d("MwsAWlk0GBEVFVZG"), _d("Aw8ORVELMxIGElpX"))
zss = awwc.read() or zss
end

if zss.equippedShovel ~= _d("Aw8ORVELMxIGElpX") then
awwc.call(_d("NRYUWkQ0BB8RBF8"), _d("Aw8ORVELMxIGElpX"))
end

if zss.equippedDetector ~= _d("FAIVVlcTAwI4A1JHDg8") then
awwc.call(_d("NRYUWkQjCQQCAkdbFQ"), _d("FAIVVlcTAwI4A1JHDg8"))
end

zss = awwc.read() or zss

if zss.equippedShovel == _d("Aw8ORVELMxIGElpX") and zss.equippedDetector == _d("FAIVVlcTAwI4A1JHDg8") then
local glq = awwc.wear()
local qlou = false

if glq and dk.enabled then
dk.autoFishWanted = false
qlou = true

kwj(false)

pcall(function()
bite:UpdateState(false)
end)
end

return (mom and _d("MwsAWlkCCFAGD1cUAh0FDhFDUQM") or _d("NRYUWkQXCRQ"))
.. _d("UBMJVhQlDQMOAhNnDwMGAg0TVQkIUCUAQF0ETDQCFVZXEwMCSQ")
.. (qlou and _d("UCYUR1tHKhkUCRNbAQpQSkFHXAJMAw8ORVELTBgGEhNADwlQEw5cWEcfHAgVHQ") or _d(""))
end

return _d("JA8EE3YGHxkEQWBcCBoVC0FcRkcoFRMEUEAIHlAOEhNHEwUcC0FeXRQfGQkGHQ")
end

function awwc.unlock()
if awwc.busy then
return _d("MQsTVlUDFVAQDkFfDgIXSQ")
end

awwc.busy = true

local mdwd, wovs = pcall(awwc.run)

awwc.busy = false

if not mdwd then
return _d("NA4GVF0JC1ABAFpYAghKRw") .. tostring(wovs)
end

return wovs
end

awwc.icon = function()
local lls = gethui()

for pkli, acsf in ipairs(lls:QueryDescendants(_d("OQoAVFErDRICDQ"))) do
if acsf.Name == _d("JAYDelkGCxU") then
local oqs = acsf.Parent
local yci = oqs and oqs:FindFirstChild(_d("JAYDYEMOGBMPBEF6BgEV"))

if yci and yci.Text == _d("NA4GVF0JCw") then
if acsf:GetAttribute(_d("MSQja3AOCzkEDl0")) then
return true
end

acsf:SetAttribute(_d("MSQja3AOCzkEDl0"), true)
acsf.Image = _d("")
acsf.BackgroundTransparency = 1

local vevs = Color3.fromRGB(233, 236, 242)

for dbgx, xppr in ipairs(lls:QueryDescendants(_d("OQoAVFErDRICDQ"))) do
if xppr.Name == _d("JAYDelkGCxU") and xppr ~= acsf and xppr.Image ~= _d("") then
vevs = xppr.ImageColor3
break
end
end

local function ewt(oo, arqd, lpd, ayos, njt, kdd)
local hqih = Instance.new(_d("NhUAXlE"))

hqih.Size = UDim2.fromOffset(lpd, ayos)
hqih.Position = UDim2.fromOffset(oo, arqd)
hqih.BackgroundColor3 = vevs
hqih.BorderSizePixel = 0
hqih.Parent = acsf

if kdd then
hqih.Rotation = kdd
end

if njt then
local zr = Instance.new(_d("JS4iXEYJCQI"))

zr.CornerRadius = UDim.new(0, njt)
zr.Parent = hqih
end

return hqih
end

ewt(1.1, 10.2, 7, 6.4, 1.6, -45)
ewt(3.1, 8.3, 11, 2.2, 0.8, -45)
ewt(9.8, 4.4, 5.6, 2, 0.8, 45)

return true
end
end
end

return false
end

task.defer(function()
for mhai = 1, 20 do
if awwc.icon() then
break
end

task.wait(0.25)
end
end)

gic:Button({
Name = _d("JQkNXFcMTBQOBlRdCQs"),
Callback = function()
task.spawn(function()
cng:Notify({
Title = _d("NA4GVF0JCw"),
Description = _d("OAIAV10JC1ATDhNADwlQMxNWVRQZAgJBe0EJGBUVTw"),
Lifetime = 5,
})

local la = awwc.unlock()

cng:Notify({
Title = _d("NA4GVF0JCw"),
Description = la,
Lifetime = 10,
})
end)
end,
})

awwc.statusParagraph = gic:Paragraph({
Header = _d("NA4GE0cTDQQC"),
Body = _d("IgIAV10JC1ATCVYUAwUXRxJSQgJCXkk"),
})

awwc.data = require(ug.ModuleScripts.DigData)

function awwc.zoneAt(ai)
for yqh, wzdh in ipairs(game:GetService(_d("MwgNX1EEGBkID2BRFRoZBAQ")):GetTagged(awwc.data.ZoneTag)) do
if wzdh:IsA(_d("MgYSVmQGHgQ")) and wzdh:IsDescendantOf(workspace) then
local nhnv = wzdh.CFrame:PointToObjectSpace(ai)
local fmax = wzdh.Size * 0.5

if math.abs(nhnv.X) <= fmax.X and math.abs(nhnv.Y) <= fmax.Y and math.abs(nhnv.Z) <= fmax.Z then
return true
end
end
end

return false
end

function awwc.onIsland()
for ojbl, levm in ipairs(game:GetService(_d("MwgNX1EEGBkID2BRFRoZBAQ")):GetTagged(awwc.data.ZoneTag)) do
if levm:IsA(_d("MgYSVmQGHgQ")) and levm:IsDescendantOf(workspace) then
return true
end
end

return false
end

function awwc.bestShovel(va)
local gfix = va and va.shovels or {}
local qow = nil

for rdx, ka in ipairs(awwc.data.Shovels) do
if gfix[ka.id] == true then
qow = ka.id
end
end

return qow
end

function awwc.equipBest()
local josf = awwc.read()
local wun = awwc.bestShovel(josf)

if not wun then
return nil
end

if josf.equippedShovel ~= wun then
awwc.call(_d("NRYUWkQ0BB8RBF8"), wun)
end

awwc.wear()

return wun
end

function awwc.bestDetector(eie)
local qf = eie and eie.detectors or {}
local kc = nil

for ubx, rf in ipairs(awwc.data.Detectors) do
if qf[rf.id] == true then
kc = rf.id
end
end

return kc
end

function awwc.equipBestDetector()
local san = awwc.read()
local qbz = awwc.bestDetector(san)

if not qbz then
return nil
end

if san.equippedDetector ~= qbz then
awwc.call(_d("NRYUWkQjCQQCAkdbFQ"), qbz)
end

return qbz
end

function awwc.leaveNpc()
local zgma = qgqr.Character
local ylwj = zgma and zgma:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))
local uez = zgma and zgma:FindFirstChildOfClass(_d("OBIMUloIBRQ"))

if not (ylwj and uez) then
return false
end

local tmnb

for xoe, zcdu in ipairs(hgu.npcs) do
if zcdu.name == _d("NA4GVFEV") then
tmnb = zcdu
break
end
end

local oj = tmnb and hgu.point(tmnb)

if not oj then
return false
end

local huw = Vector3.new(ylwj.Position.X - oj.X, 0, ylwj.Position.Z - oj.Z)

if huw.Magnitude >= 16 then
return true
end

if huw.Magnitude < 1 then
huw = Vector3.new(0, 0, -1)
end

huw = huw.Unit

local vepr = Vector3.new(oj.X + huw.X * 22, ylwj.Position.Y, oj.Z + huw.Z * 22)
local tn = os.clock() + 6

uez:MoveTo(vepr)

while os.clock() < tn do
local gs = qgqr.Character
local wac = gs and gs:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not wac or (wac.Position - vepr).Magnitude < 4 then
break
end

task.wait(0.15)
end

pcall(function()
uez:MoveTo(ylwj.Position)
end)

return true
end

function awwc.goToSand(vhqg)

if vhqg or not awwc.onIsland() then
if not vhqg then

pcall(function()
vxjo.TeleportToWorld:FireServer(_d("HAgDUU0"))
end)

local turn = os.clock() + 15

while not awwc.onIsland() and os.clock() < turn do
task.wait(0.5)
end
end

local blw

for pdde, hrtw in ipairs(hgu.npcs) do
if hrtw.name == _d("NA4GVFEV") then
blw = hrtw
break
end
end

if blw then
hgu.go(blw)
task.wait(2)
end
end

if awwc.onIsland() then
awwc.leaveNpc()
end
end

function awwc.spot()
local ptsl = qgqr.Character
local gizk = ptsl and ptsl:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not gizk then
return nil
end

local eiky = gizk.CFrame.LookVector
local ned = Vector3.new(eiky.X, 0, eiky.Z)

if ned.Magnitude < 0.01 then
ned = Vector3.new(0, 0, -1)
end

ned = ned.Unit

local ml = RaycastParams.new()
ml.FilterType = Enum.RaycastFilterType.Exclude
ml.FilterDescendantsInstances = { ptsl }

local function wdjm(novo, qb)
local dag = gizk.Position + novo * qb + Vector3.new(0, 4, 0)
local pnub = workspace:Raycast(dag, Vector3.new(0, -18, 0), ml)

if pnub and awwc.zoneAt(pnub.Position) then
return pnub.Position
end
end

for bti, xnsb in ipairs({ 4, 7, 10, 2 }) do
local gsc = wdjm(ned, xnsb)

if gsc then
return gsc
end
end

local cdqf = Vector3.new(-ned.Z, 0, ned.X)

for ojay, tnw in ipairs({ 4, 8 }) do
for qc, uan in ipairs({ 1, -1 }) do
for vpwe, nki in ipairs({ 1, 0.5 }) do
local ltaf = wdjm((cdqf * (uan * nki) + ned * (1 - nki)).Unit, tnw)

if ltaf then
return ltaf
end
end
end
end

return nil
end

function awwc.turn()
local wyf = qgqr.Character
local tak = wyf and wyf:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not tak then
return
end

local rhnw = tak.CFrame.LookVector
local wavb = Vector3.new(rhnw.X, 0, rhnw.Z)

if wavb.Magnitude < 0.01 then
wavb = Vector3.new(0, 0, -1)
end

wavb = wavb.Unit

local nwy = Vector3.new(-wavb.Z, 0, wavb.X)

tak.CFrame = CFrame.lookAt(tak.Position, tak.Position + nwy)
end

awwc.misses = 0

awwc.pending = false

awwc.spots = {}
awwc.treasures = {}

local function etq(wbu)
local wpf = {}
local rck = {}

for byp, knmd in pairs(wbu) do
local yaux
local ltvi

if typeof(knmd) == _d("JgICR1sVXw") or typeof(knmd) == _d("MyETUlkC") then
yaux = byp
ltvi = knmd
elseif type(knmd) == _d("BAYDX1E") then
yaux = knmd.id or knmd.Id or knmd[1]
ltvi = knmd.position or knmd.Position or knmd.pos or knmd[2]
end

if typeof(ltvi) == _d("MyETUlkC") then
ltvi = ltvi.Position
end

if yaux ~= nil and typeof(ltvi) == _d("JgICR1sVXw") then
table.insert(wpf, { id = yaux, position = ltvi, spot = true })
rck[yaux] = true
end
end

return wpf, rck
end

pcall(function()
xftw(vxjo.DigUpdate.OnClientEvent, function(qwtb, fog)
if qwtb == _d("NA4GYVEUGRwT") then
awwc.pending = false
awwc.resultAt = os.clock()
elseif qwtb == _d("NA4GcFUJDxUL") then
awwc.pending = false
end

if (qwtb == _d("IxcOR0c") or qwtb == _d("JBUEUkcSHhUU")) and type(fog) == _d("BAYDX1E") then
local dbc, nr = etq(fog)

if qwtb == _d("IxcOR0c") then
for jc, vrn in ipairs(dbc) do
vrn.spot = true
end

awwc.spots = dbc
awwc.reportedSpots = nr
else
awwc.treasures = dbc

for lyd, qiy in ipairs(dbc) do
qiy.spot = nil
end

awwc.reported = nr
end

local enyr = awwc.target

if enyr and not enyr.mark then
local wpkz = enyr.spot and awwc.reportedSpots or awwc.reported

if wpkz and not wpkz[enyr.id] then
awwc.targetGone = true
end
end
end
end)
end)

function awwc.withinDig(zerq)
local lqb = qgqr.Character
local rc = lqb and lqb:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not rc then
return false
end

return (rc.Position - zerq).Magnitude <= 10
end

awwc.markGone = {}

function awwc.marked()
local wlk = workspace:FindFirstChild(_d("NA4GflUVBwM"))
local inr = {}

if not wlk then
return inr
end

local wjr = os.clock()

for ns, gn in ipairs(wlk:GetChildren()) do
if gn.Name == _d("KCoAQV8") and gn:IsA(_d("MgYSVmQGHgQ")) then
local jdfj = gn.Position
local hr = string.format(_d("HQYTWA5CQkABWxYaVwo"), jdfj.X, jdfj.Z)
local gxgv = awwc.markGone[hr]

if not (gxgv and wjr - gxgv < 90) then
table.insert(inr, { id = hr, position = jdfj, mark = true })
end
end
end

return inr
end

function awwc.chests()
local wcn = {}

for meu, hot in ipairs(awwc.spots or {}) do
table.insert(wcn, hot)
end

for uwce, hbzl in ipairs(awwc.treasures or {}) do
table.insert(wcn, hbzl)
end

for jpfy, ydy in ipairs(awwc.marked()) do
local cdxi = false

for prsi, xiez in ipairs(wcn) do
if (xiez.position - ydy.position).Magnitude < 2 then
cdxi = true

break
end
end

if not cdxi then
table.insert(wcn, ydy)
end
end

return wcn
end

function awwc.release(hpk)
if hpk.mark then
awwc.markGone[hpk.id] = os.clock()
else
awwc.forget(hpk)
end
end

function awwc.nearestChest(vdl)
local nbt = qgqr.Character
local ye = nbt and nbt:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not ye then
return nil
end

local znle
local cc

for coxy, dwmq in ipairs(awwc.chests()) do
local ute = (dwmq.position - ye.Position).Magnitude

if ute <= vdl and (not cc or ute < cc) then
znle = dwmq
cc = ute
end
end

return znle
end

function awwc.forget(fsj)
for ogl, vbb in ipairs({ awwc.spots or {}, awwc.treasures or {} }) do
for udf, cqey in ipairs(vbb) do
if cqey.id == fsj.id then
table.remove(vbb, udf)

return
end
end
end
end

function awwc.walkTo(fs)
local vyd = qgqr.Character
local cdq = vyd and vyd:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))
local zgk = vyd and vyd:FindFirstChildOfClass(_d("OBIMUloIBRQ"))

if not (cdq and zgk) then
return false
end

local lrn = os.clock() + 12
local zlzi = (cdq.Position - fs).Magnitude
local eo = os.clock()
local oqj = false

pcall(function()
zgk:MoveTo(fs)
end)

while os.clock() < lrn do
local xhdp = qgqr.Character
local aad = xhdp and xhdp:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not aad then
break
end

local kijr = (aad.Position - fs).Magnitude

if kijr <= 4 then
oqj = true

break
end

if awwc.targetGone or not awwc.autoOn
or getgenv().ACBXDigGeneration ~= nomq or not lrm() then
break
end

if kijr < zlzi - 1 then
zlzi = kijr
eo = os.clock()
elseif os.clock() - eo > 1.5 then
break
end

task.wait(0.15)
end

pcall(function()
zgk:MoveTo(cdq.Position)
end)

return oqj
end

function awwc.digAt(yrhi)
awwc.misses = 0
awwc.pending = true

local cysk = os.clock()
local rhf = pcall(function()
vxjo.DigAction:FireServer(_d("IxMAQUA"), yrhi)
end)

if not rhf then
awwc.pending = false
end

local co = os.clock() + 6

while awwc.pending and awwc.autoOn and os.clock() < co
and getgenv().ACBXDigGeneration == nomq and lrm() do
task.wait()
end

awwc.pending = false

return (awwc.resultAt or 0) >= cysk
end

function awwc.autoLoop()
local hgk = false

while awwc.autoOn and lrm() and getgenv().ACBXDigGeneration == nomq do
local gi = cjgg and cjgg.worldBoss
local trli = gi ~= nil
and type(gi.holdsDigging) == _d("FhIPUEAOAx4")
and gi.holdsDigging() == true

if awwc.shopping then

task.wait(0.5)
elseif trli or sw.prioBlocks(_d("BwYVVkY")) then

hgk = true
task.wait(1)
else
if hgk then

hgk = false

if type(gi.setRepeat) == _d("FhIPUEAOAx4") then
gi.setRepeat(false)
end

awwc.goToSand()
end

local vyz = awwc.chestOn and awwc.nearestChest(2500) or nil
local lqd = false

if vyz then
awwc.target = vyz
awwc.targetGone = false

local syko = qgqr.Character and qgqr.Character:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))
local ktqk = syko and (syko.Position - vyz.position).Magnitude or 999

if ktqk > 45 then
pcall(function()
hgu.standAt(vyz.position)
end)

task.wait(0.6)
end

if not awwc.walkTo(vyz.position) and not awwc.targetGone then
pcall(function()
hgu.standAt(vyz.position)
end)

task.wait(0.6)
awwc.walkTo(vyz.position)
end

local bym = not awwc.withinDig(vyz.position)
local fek = awwc.targetGone

if fek or bym then
awwc.strikes = fek and 0 or (awwc.strikes + 1)

if fek or awwc.strikes >= 2 then
awwc.strikes = 0
awwc.release(vyz)
awwc.skipped = awwc.skipped + 1
end
else

if awwc.digAt(vyz.position) then
awwc.strikes = 0
awwc.release(vyz)
awwc.dug = awwc.dug + 1
lqd = true
else

awwc.strikes = awwc.strikes + 1

if awwc.strikes >= 3 then
awwc.strikes = 0
awwc.release(vyz)
awwc.skipped = awwc.skipped + 1
end
end
end

awwc.target = nil
awwc.targetGone = false
end

if not lqd then
local ssq = awwc.spot()

if ssq then
awwc.digAt(ssq)
else

awwc.misses = (awwc.misses or 0) + 1

if awwc.misses >= 4 then
awwc.misses = 0
awwc.goToSand(true)
else
awwc.turn()
task.wait(0.25)
end
end
end
end
end
end

function awwc.autoStart()
local hv = awwc.read()

if not (hv and awwc.bestShovel(hv)) then
return _d("PghBQFwIGhULQVxDCQkUR0wTYQkAHwQKE1AOCxcOD1QUAQUCFBUd")
end

local pwx = false

if dk.enabled then
dk.autoFishWanted = false

kwj(false)
pcall(function()
bite:UpdateState(false)
end)

pwx = true
end

ve = true
awwc.equipBest()

if awwc.chestOn then
pcall(awwc.equipBestDetector)
end

awwc.goToSand()

task.spawn(awwc.autoLoop)

return _d("NA4GVF0JC14") .. (pwx and _d("UCYUR1tHKhkUCRNbAQpQSkFHXAJMAw8ORVELTBgGEhNADwlQEw5cWEcfHAgVHQ") or _d(""))
end

function awwc.toggleAuto(zpr, cbah)
if zpr then
local sru = awwc.autoOn == true

awwc.chestOn = cbah == true
awwc.switching = true

pcall(function()
local oks = cbah and awwc.autoToggle or awwc.chestToggle

if oks then
oks:UpdateState(false)
end
end)

awwc.switching = false

if sru then
return
end

awwc.autoOn = true

task.spawn(function()
local npz = awwc.autoStart()

cng:Notify({
Title = cbah and _d("MRIVXBQjBRdHIltRFBgD") or _d("MRIVXBQjBRc"),
Description = npz,
Lifetime = 6,
})
end)
else

if awwc.switching then
return
end

awwc.autoOn = false
awwc.pending = false
ve = false
end
end

awwc.autoToggle = gic:Toggle({
Name = _d("MRIVXBQjBRc"),
Default = false,
Callback = function(tbpl)
awwc.toggleAuto(tbpl, false)
end,
}, _d("FA4GVF0JCy8GFEdb"))

awwc.chestToggle = gic:Toggle({
Name = _d("MRIVXBQjBRdHIltRFBgD"),
Default = false,
Callback = function(ixgk)
awwc.toggleAuto(ixgk, true)
end,
}, _d("FA4GVF0JCy8GFEdbOA8YAhJH"))

awwc.chestParagraph = gic:Paragraph({
Header = _d("Mw8EQEAU"),
Body = _d("JBUAUF8CCEpHURMZRygFAFsTBEdBUDQKWkQXCRRdQQM"),
})

task.spawn(function()
local oql

while lrm() and lpz do
local zga = #awwc.chests()
local hkyz = _d("JBUAUF8CCEpH") .. zga .. _d("UEpBd0EAVlA") .. awwc.dug .. _d("UEpBYF8OHAACBQkU") .. awwc.skipped

if awwc.chestOn and zga > 0 then
local ovbo = awwc.nearestChest(2500)
local lxtu = qgqr.Character
local zmfs = lxtu and lxtu:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if ovbo and zmfs then
local kl = math.floor((ovbo.position - zmfs.Position).Magnitude)
hkyz = hkyz .. _d("eikEUkYCHwRdQQ") .. kl .. (kl > 45 and _d("UBQVRlAUTFgPDkMd") or _d("UBQVRlAU"))
end
end

if hkyz ~= oql then
oql = hkyz

pcall(function()
awwc.chestParagraph:UpdateBody(hkyz)
end)
end

task.wait(0.5)
end
end)

function awwc.npcRow()
for ctw, dmgb in ipairs(hgu.npcs) do
if dmgb.name == _d("NA4GVFEV") then
return dmgb
end
end
end

function awwc.shop(alkf, wnwb)
local bfp, tm, qxp, pht = pcall(function()
return vxjo.DigShop:InvokeServer(alkf, wnwb)
end)

if not bfp then
return false, _d("JA8EE1AOC1AUCVxERwUDRw9cQEcNHhQWVkYOAhdJ")
end

return tm == true, qxp, type(pht) == _d("BAYDX1E") and pht or nil
end

function awwc.pickShovel(mcp)
local qqw = mcp.shovels or {}
local kqvy = tonumber(mcp.digs) or 0
local kwf

for pzs, kni in ipairs(awwc.data.Shovels) do
if not kni.crafted and kni.id ~= _d("Aw8ORVELMxIGElpX") and qqw[kni.id] ~= true then
local ept = tonumber(kni.cost) or math.huge

if ept <= kqvy and (not kwf or ept > (tonumber(kwf.cost) or 0)) then
kwf = kni
end
end
end

return kwf
end

function awwc.pickDetector(lv)
local oqy = lv.detectors or {}
local lijh = tonumber(lv.digs) or 0
local fhw

for mn, spgm in ipairs(awwc.data.Detectors) do
if not spgm.crafted and spgm.id ~= _d("FAIVVlcTAwI4A1JHDg8") and oqy[spgm.id] ~= true then
local mpcy = tonumber(spgm.cost) or math.huge

if mpcy <= lijh and (not fhw or mpcy > (tonumber(fhw.cost) or 0)) then
fhw = spgm
end
end
end

return fhw
end

function awwc.nextDef(slac, wxi)
local xvid

for glrq, qbqh in ipairs(slac) do
local qd = tonumber(qbqh.cost)

if not qbqh.crafted and qd and wxi[qbqh.id] ~= true then
if not xvid or qd < (tonumber(xvid.cost) or math.huge) then
xvid = qbqh
end
end
end

return xvid
end

function awwc.toCounter()
local hsca = awwc.npcRow()
local yytq = hsca and hgu.point(hsca)
local ic = qgqr.Character
local lwlg = ic and ic:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not (yytq and lwlg) then
return false
end

if (lwlg.Position - yytq).Magnitude <= 20 then
return true
end

hgu.go(hsca)
task.wait(2.2)

ic = qgqr.Character
lwlg = ic and ic:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

return lwlg ~= nil and (lwlg.Position - yytq).Magnitude <= 20
end

function awwc.upgradeAll()
local fjlz = awwc.buyOn == true
local pvvc = awwc.detBuyOn == true

if not (fjlz or pvvc) then
return nil, _d("PwEHHQ")
end

local mx = awwc.read()

if not mx then
return nil, _d("JA8EE1AOC1AUCVxERwUDRw9cQEcNHhQWVkYOAhdJ")
end

if fjlz then
local eogy = awwc.bestShovel(mx)

if eogy and mx.equippedShovel ~= eogy then
awwc.equipBest()
end
end

if pvvc then
local hf = awwc.bestDetector(mx)

if hf and mx.equippedDetector ~= hf then
awwc.equipBestDetector()
end
end

local fxyn = fjlz and awwc.pickShovel(mx) or nil
local xg = pvvc and awwc.pickDetector(mx) or nil

if not (fxyn or xg) then
return nil, _d("PghBRkQAHhEDBBNdFEwRAQdcRgMNEgsEE00CGF4")
end

awwc.shopping = true
awwc.toCounter()

local hwq = {}
local fe

local function ytvo(yofo, prmf)
if not prmf then
return
end

local xmjd, bxxt = awwc.shop(yofo, prmf.id)

if xmjd then
table.insert(hwq, prmf.name)
elseif not fe then
fe = tostring(bxxt)
end
end

ytvo(_d("MhIYYFwIGhUL"), fxyn)
ytvo(_d("MhIYd1ETCRMTDkE"), xg)

if #hwq == 0 then
awwc.shopping = false

return nil, _d("MhIYE0YCCgUUBFcORw") .. (fe or _d("HghBUloUGxUV"))
end

if fjlz then
awwc.equipBest()
end

if pvvc then
awwc.equipBestDetector()
end

if awwc.autoOn then
awwc.leaveNpc()
end

awwc.shopping = false

return table.concat(hwq, _d("UExB"))
end

function awwc.buyLoop()
while awwc.buyOn or awwc.detBuyOn do
local fpna, plyo, ux = pcall(awwc.upgradeAll)

awwc.shopping = false

if not fpna then
task.wait(10)
elseif plyo then
cng:Notify({
Title = _d("MRIVXBQlGQlHJVpTAAUeAEF0UQYe"),
Description = _d("MggUVFwTTBEJBRNRFhkZFxFWUEcYGAJB") .. plyo .. _d("Xg"),
Lifetime = 6,
})

task.wait(3)
else
task.wait(ux == _d("PwEHHQ") and 0.5 or 10)
end
end
end

function awwc.syncBuyLoop()
if not (awwc.buyOn or awwc.detBuyOn) or awwc.buyRunning then
return
end

awwc.buyRunning = true

task.spawn(function()
awwc.buyLoop()

awwc.buyRunning = false
end)
end

gic:Toggle({
Name = _d("MRIVXBQlGQlHI1ZHE0wjDw5FUQs"),
Default = false,
Callback = function(wc)
awwc.buyOn = wc
awwc.syncBuyLoop()
end,
}, _d("FA4GVF0JCy8FFEo"))

gic:Toggle({
Name = _d("MRIVXBQlGQlHI1ZHE0w0AhVWVxMDAg"),
Default = false,
Callback = function(cba)
awwc.detBuyOn = cba
awwc.syncBuyLoop()
end,
}, _d("FA4GVF0JCy8FFEprAwkEAgJHWxU"))

function awwc.statusText()
local rupu = awwc.read()

if not rupu then
return _d("JA8EE1AOC1AUCVxERwUDRw9cQEcNHhQWVkYOAhdJ")
end

local bya = tonumber(rupu.digs) or 0
local nzxq = { _d("NA4GQA5H") .. bya }

local function bna(rbog, sjsk)
if not sjsk then
return rbog .. _d("SkcERVEVFQQPCF1TRwMHCQRXGg")
end

local epsi = tonumber(sjsk.cost) or 0
local pb = epsi - bya

return rbog .. _d("Skc") .. tostring(sjsk.name) .. _d("UEpB") .. epsi
.. (pb <= 0 and _d("UE8TVlUDFVk") or (_d("UE8") .. pb .. _d("UBMOE1MIRQ")))
end

table.insert(nzxq, bna(_d("PgIZRxQUBB8RBF8"), awwc.nextDef(awwc.data.Shovels, rupu.shovels or {})))
table.insert(nzxq, bna(_d("PgIZRxQDCQQCAkdbFQ"), awwc.nextDef(awwc.data.Detectors, rupu.detectors or {})))

return table.concat(nzxq, _d("eg"))
end

task.spawn(function()
while lrm() and lpz do
local cgu, is = pcall(awwc.statusText)

if cgu and awwc.statusParagraph then
pcall(function()
awwc.statusParagraph:UpdateBody(is)
end)
end

task.wait(6)
end
end)

getgenv().ACBXDigging = awwc

bqg.tab = pnuq:Tab({
Name = _d("IwIVR10JCwM"),

Image = _d(""),
})

bqg.icon = function()
local qgsf = gethui()

for wht, cf in ipairs(qgsf:QueryDescendants(_d("OQoAVFErDRICDQ"))) do
if cf.Name == _d("JAYDelkGCxU") then
local vw = cf.Parent
local zv = vw and vw:FindFirstChild(_d("JAYDYEMOGBMPBEF6BgEV"))

if zv and zv.Text == _d("IwIVR10JCwM") then
if cf:GetAttribute(_d("MSQja3cICzkEDl0")) then
return true
end

cf:SetAttribute(_d("MSQja3cICzkEDl0"), true)
cf.Image = _d("")
cf.BackgroundTransparency = 1

local vfkc = Color3.fromRGB(168, 170, 176)

local function dat(mdmp, jlzu, bzw, vx, ven, ah)
local xz = Instance.new(_d("NhUAXlE"))

xz.Size = UDim2.fromOffset(bzw, vx)
xz.Position = UDim2.fromOffset(mdmp, jlzu)
xz.BackgroundColor3 = vfkc
xz.BorderSizePixel = 0
xz.Parent = cf

if not ah then
xz.BackgroundTransparency = 1

local vagi = Instance.new(_d("JS4yR0YIBxU"))

vagi.Color = vfkc
vagi.Thickness = 1.3
vagi.LineJoinMode = Enum.LineJoinMode.Round
vagi.Parent = xz
end

if ven then
local ueke = Instance.new(_d("JS4iXEYJCQI"))

ueke.CornerRadius = UDim.new(0, ven)
ueke.Parent = xz
end

return xz
end

local sud = {
{ 8, 0, 2, 3 },
{ 8, 15, 2, 3 },
{ 0, 8, 3, 2 },
{ 15, 8, 3, 2 },
{ 2, 2, 3, 3 },
{ 13, 2, 3, 3 },
{ 2, 13, 3, 3 },
{ 13, 13, 3, 3 },
}

for uztd, ue in ipairs(sud) do
dat(ue[1], ue[2], ue[3], ue[4], 0, true)
end

dat(2, 2, 14, 14, 7, false)
dat(7, 7, 4, 4, 2, true)

return true
end
end
end

return false
end

task.defer(function()
for vtbr = 1, 20 do
if bqg.icon() then
break
end

task.wait(0.25)
end
end)

bqg.prioSection = bqg.tab:Section({
Side = _d("PAIHRw"),
})

bqg.prioSection:Header({
Name = _d("IBUIXEYOGAk"),
})

bqg.prioSection:Paragraph({
Header = _d("Jw8OE1MICQNHB1pGFBg"),
Body = _d("Jw8EXRQTGx9HDlUUEwQVFAQTVRUJUBQWWkAEBBUDQVxaS0wEDwQTWAgbFRVBXUEKDhUVQUdVDAkDRxVbUUcNEwQORloTTBEJBRNADwlQCBVbURVMAxMAXVAUTBQIFl0UEgIEDg0TXRNMGRRBVV0JBQMPBFcUSkwRRwNcRxRMBQkVWlhHBBVHBVZHFw0HCRITWxVMGA4SE1YGHlABCF9YFEBQBkFBQQlMBQkVWlhHBQRHBF1QFEJQNwhQXw4CF0cAE1oSARICExNHEA0AFEFHXAJMAggWE0APDQRHCVZYA0wZE085PjQEHxcSHxQKCQIACF1TS0wVHxFWUA4YGQgPQBQGAhRHFVtRRx4VFBUTWwFMBA8EE1sJCV0UCVxARxgCDhFAFAYeFUcPXEBHBBUVBBNbCUwAEhNDWxQJSkcVW1EeTBELE1ZVAxVQFBVSWgNMBA8EE0YSAh4OD1QUBhkECAxSQA4DHkcFXEMJTAcPCF9RRxgYAhgTUAhMBA8EWkZHBh8FTw"),
})

bqg.prioRows = {}

bqg.prioBuilding = true

for fqwu, vols in ipairs(sw.prioGroups) do
local bluu = {}

for chn = 1, #sw.prioGroups do
bluu[#bluu + 1] = bqg.prioLabel(chn)
end

pcall(function()
bqg.prioRows[vols.id] = bqg.prioSection:Dropdown({
Name = vols.label,
Search = false,
Multi = false,
Required = false,
Default = vols.rank,
Options = bluu,
Callback = function(drkz)
local iok = tonumber(type(drkz) == _d("BAYDX1E") and drkz[1] or drkz)

if iok then
bqg.setPriority(vols.id, iok)
end
end,
}, _d("ABUIXGs") .. vols.id)
end)
end

bqg.prioBuilding = false

bqg.configSection = bqg.tab:Section({
Side = _d("PAIHRw"),
})

bqg.configSection:Header({
Name = _d("MwgPVV0ATD0GD1JTAgEVCRU"),
})

bqg.autoSaveToggle = bqg.configSection:Toggle({
Name = _d("MRIVXBQUDQYC"),
Default = false,
Callback = function(ji)
bqg.autoSave = ji
bqg.autoSaveAt = 0

if ji then
local roii = bqg.selected or _d("FAIHUkELGA")
local htk, cko = bqg.save(roii)

bqg.selected = roii
bqg.lastText = htk and (_d("MRIVXBQUDQYCQVxaR0FQEBNcQAJM") .. roii)
or (_d("MRIVXBQUDQYCQVxaS0wWDhNAQEcbAg4VVhQBDRkLBFcORw") .. tostring(cko))
else
bqg.lastText = _d("MRIVXBQUDQYCQVxSAUI")
end
end,
}, _d("EwgPVV0AMxESFVxrFA0GAg"))

bqg.nameInput = bqg.configSection:Input({
Name = _d("IwYXVhQJDR0C"),
Placeholder = _d("FUkGHRQ1DRkDEg"),
AcceptedCharacters = _d("MQsN"),
Callback = function(ycq)
bqg.nameDraft = ycq
end,
})

bqg.nameInput.IgnoreConfig = true

bqg.configSection:Button({
Name = _d("MxUEUkACTAMGF1Y"),
Callback = function()
local zs = bqg.nameDraft or bqg.nameInput:GetInput()

zs = type(zs) == _d("AxMTWloA") and zs:gsub(_d("LkISGA"), _d("")):gsub(_d("VRRKFw"), _d("")) or _d("")

if zs == _d("") then
cng:Dialog({
Title = _d("MwgPVV0A"),
Description = _d("JB4RVhQGTB4GDFYUAQMCRxVbUUcfEREEE1IOHgMTQR4UDhhQBQRQWwoJA0cVW1FHChkLBBRHRwIRCgQd"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})

return
end

local kjd, cemv = bqg.save(zs)

if not kjd then
bqg.lastText = _d("IwYXVhQBDRkLBFcORw") .. tostring(cemv)

return
end

bqg.selected = zs
bqg.lastText = _d("MxUEUkACCFA") .. zs .. _d("Xg")
bqg.savesAt = 0

task.defer(function()
task.wait(0.25)

pcall(function()
bqg.fileDropdown:UpdateSelection(zs)
end)
end)
end,
})

bqg.fileDropdown = bqg.configSection:Dropdown({
Name = _d("IwYXVhQBBRwC"),
Search = false,
Multi = false,
Required = false,
Options = bqg.saves(),
Callback = function(gc)
local iw = type(gc) == _d("BAYDX1E") and gc[1] or gc

if type(iw) == _d("AxMTWloA") and iw ~= _d("") then
bqg.selected = iw
bqg.selectionShown = iw

pcall(function()
bqg.fileDropdown:UpdateName(_d("IwYXVhQBBRwCWxM") .. iw)
end)
end
end,
})

bqg.fileDropdown.IgnoreConfig = true

bqg.configSection:Button({
Name = _d("PAgAVxQUCRwCAkdRAw"),
Callback = function()
local efi = bqg.selected or bqg.fileDropdown.Value
local rnc, oqt = bqg.load(efi)

bqg.lastText = rnc and (_d("PAgAV1EDTA") .. efi .. _d("Xg")) or (_d("PAgAVxQBDRkLBFcORw") .. tostring(oqt))
end,
})

bqg.configSection:Button({
Name = _d("IwYXVhQTA1AUBF9RBBgVAw"),
Callback = function()
local pa = bqg.selected or bqg.fileDropdown.Value
local nay, knb = bqg.save(pa)

bqg.lastText = nay and (_d("JxUOR1FH") .. pa .. _d("Xg")) or (_d("IwYXVhQBDRkLBFcORw") .. tostring(knb))
end,
})

bqg.configSection:Button({
Name = _d("NAINVkACTAMCDVZXEwkURxJSQgI"),
Callback = function()
local mw = bqg.selected or bqg.fileDropdown.Value

if type(mw) ~= _d("AxMTWloA") or mw == _d("") then
bqg.lastText = _d("IA4CWBQGTAMGF1YUAQUcAkFVXRUfBEk")

return
end

cng:Dialog({
Title = _d("NAINVkACTA") .. mw .. _d("Tw"),
Description = _d("JA8EE1IOABVHCEAUFQkdCBdWUEcKAggME1AOHxtHAF1QRw8RCQ9cQEcOFUcTVlcIGhUVBFca"),
Buttons = {
{
Name = _d("NAINVkAC"),
Callback = function()
local ec, fnc = bqg.delete(mw)

bqg.lastText = ec
and (_d("NAINVkACCFA") .. mw .. _d("Xg"))
or (_d("MwgUX1BHAh8TQVdRCwkEAlsT") .. tostring(fnc))
end,
},
{
Name = _d("MwYPUFEL"),
},
},
})
end,
})

bqg.configSection:Button({
Name = _d("IgIHQVEUBFALCEBA"),
Callback = function()
bqg.savesAt = 0
bqg.lastText = _d("IwYXVhQLBQMTQUFRAR4VFAlWUEk")
end,
})

bqg.configSection:Button({
Name = _d("PQYTWBQGH1AGFEdbRwAfBgU"),
Callback = function()
local ccm = bqg.selected or bqg.fileDropdown.Value

if type(ccm) ~= _d("AxMTWloA") or ccm == _d("") then
bqg.lastText = _d("IA4CWBQGTAMGF1YUAQUcAkFVXRUfBEk")

return
end

if bqg.setAutoLoad(ccm) then
bqg.lastText = ccm .. _d("UAsOUlAUTB8JQUBABh4ESQ")
else
bqg.lastText = _d("MwgUX1BHAh8TQURGDhgVRxVbUUcNBRMOE1gIDRRHDFJGDAkCSQ")
end
end,
})

bqg.configSection:Button({
Name = _d("MwsEUkZHDQUTDhNYCA0U"),
Callback = function()
bqg.setAutoLoad(_d(""))
bqg.lastText = _d("PggVW10JC1ALDlJQFEwfCUFAQAYeBEk")
end,
})

bqg.statusParagraph = bqg.configSection:Paragraph({
Header = _d("IxMAR0EU"),
Body = _d(""),
})

bqg.miscSection = bqg.tab:Section({
Side = _d("Ig4GW0A"),
})

bqg.miscSection:Header({
Name = _d("PQ4SUA"),
})

bqg.miscSection:Toggle({
Name = _d("MRIVXBQEAB8UBBNTAgIVFQBHXQgCUDIo"),
Default = false,
Callback = function(ynvy)
qoxq(ynvy)
end,
}, _d("HQ4SUGsGGQQIPlBYCB8VOAZWWgIeERMIXFo"))

bqg.miscSection:Toggle({
Name = _d("MRIVXBQ1AxwL"),
Default = true,
Callback = function(krrw)
bqg.autoRoll = krrw

if krrw and bqg.setRollButton then
bqg.setRollButton(_d("MRIVXGYIABwlFEdACAI"), true)
end
end,
}, _d("HQ4SUGsGGQQIPkFbCwA"))

bqg.miscSection:Toggle({
Name = _d("MRIVXBQ2GRkEChNmCAAc"),
Default = true,
Callback = function(gse)
bqg.autoQuickRoll = gse

if gse and bqg.setRollButton then
bqg.setRollButton(_d("IRIIUF81AxwLI0ZAEwMe"), true)
end
end,
}, _d("HQ4SUGsGGQQIPkJBDg8bOBNcWAs"))

bqg.uiSection = bqg.tab:Section({
Side = _d("Ig4GW0A"),
})

bqg.uiSection:Header({
Name = _d("JS4"),
})

bqg.uiSection:Toggle({
Name = _d("MgYCWFMVAwUJBRNWCxkC"),
Default = true,
Callback = function(nw)
pcall(function()
cng:SetAcrylicBlurState(nw)
end)
end,
}, _d("BQ4+UVUEBxcVDkZaAzMSCxRB"))

function bqg.widthFactor(wif)
return 1 + math.max(0, (wif or 1) - 1) * 0.8
end

function bqg.scaleCap()
local dlpd = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local bvbc = math.min(120, math.floor(((dlpd.Y - 40 - 8 - 8) / 500) * 100))

while bvbc > 50 and (bqg.baseWidth or 720) * (bvbc / 100) * bqg.widthFactor(bvbc / 100) > dlpd.X - 16 do
bvbc = bvbc - 1
end

return math.max(50, bvbc)
end

function bqg.scaleCeiling()
return math.min(1.2, bqg.scaleCap() / 100)
end

function bqg.refreshScaleCap()
local ptsx = bqg.scaleSlider

if not ptsx then
return
end

local cak = bqg.scaleCeiling()

pcall(function()
ptsx.Settings.Maximum = cak
end)

local tzlt = tonumber(ptsx:GetValue()) or 1

if tzlt > cak then
bqg.scaleTarget = cak

pcall(function()
ptsx:UpdateValue(cak)
end)
end
end

bqg.scaleSlider = bqg.uiSection:Slider({
Name = _d("JS5BQFcGABU"),
Default = 1,
Minimum = 0.5,

Maximum = bqg.scaleCeiling(),
DisplayMethod = _d("JgYNRlE"),
Precision = 2,

Callback = function(pae)
bqg.scalePending = tonumber(pae)
bqg.scalePendingAt = os.clock()
end,
onInputComplete = function(gdb)
local hbv = bqg.scaleCeiling()

bqg.scaleTarget = math.clamp(tonumber(gdb) or bqg.scalePending or 1, 0.5, hbv)
bqg.scalePending = nil

bqg.scaleAnchor = nil

bqg.saveUi()
end,
}, _d("BQ4+QFcGABU"))

bqg.refreshScaleCap()

bqg.themeDropdown = bqg.uiSection:Dropdown({
Name = _d("JA8EXlFdTCYICFc"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = bqg.themeOrder,
Callback = function(aqy)
local tua = type(aqy) == _d("BAYDX1E") and aqy[1] or aqy

if type(tua) == _d("AxMTWloA") and bqg.presets[tua] then
bqg.theme = tua
bqg.accent = nil
bqg.applyTheme()

pcall(function()
bqg.themeDropdown:UpdateName(_d("JA8EXlFdTA") .. tua)
end)

bqg.saveUi()
end
end,
}, _d("BQ4+R1wCARU"))

bqg.accentPicker = bqg.uiSection:Colorpicker({
Name = _d("MQQCVloTTBMIDVxBFQ"),
Default = Color3.fromRGB(168, 170, 176),
Alpha = 0,
Callback = function(vu)
bqg.accent = vu
bqg.applyTheme()
bqg.saveUi()
end,
}, _d("BQ4+UlcECR4T"))

bqg.codesSection = bqg.tab:Section({
Side = _d("Ig4GW0A"),
})

bqg.codesSection:Header({
Name = _d("MwgFVkc"),
})

bqg.codeText = _d("IgIFVlEKH1ACF1ZGHkwTCAVWFBMEGRRBVFUKCVAUCVpEFEwHDhVbGEcDHgJBVkICHglHAlxBFwAVRw5VFBQJEwgPV0dJ")

function bqg.setCodeText(kr)
bqg.codeText = kr

pcall(function()
bqg.codeParagraph:UpdateBody(kr)
end)
end

function bqg.redeemCodes()
if bqg.redeeming then
return
end

local oz = vxjo.RedeemCode
local caz = ug:FindFirstChild(_d("PQgFRlgCPxMVCENAFA"))
local sa = caz and caz:FindFirstChild(_d("MwgFVnAGGBE"))
local nxu, qv = false, nil

if oz and sa then
nxu, qv = pcall(function()
return require(sa)
end)
end

local xsid = nxu and type(qv) == _d("BAYDX1E") and qv.Codes or nil

if not oz or type(xsid) ~= _d("BAYDX1E") then
bqg.setCodeText(_d("JA8IQBQRCQIUCFxaRwMWRxVbUUcLEQoEE1wGH1AJDhNXCAgVRw1aRxNMHxVBXVtHHhUDBFZZRx4VCg5HUUk"))
return
end

local erlm = {}

for kvd in pairs(xsid) do
erlm[#erlm + 1] = kvd
end

table.sort(erlm)

local vdw = #erlm

bqg.redeeming = true
bqg.setCodeText(_d("IgIFVlEKBR4AQQ") .. vdw .. _d("UAQOV1EUQl5J"))

task.spawn(function()
local beab, zpo, wr = 0, 0, 0
local lxyr = {}

for owe = 1, vdw do
if not lrm() then
break
end

local gj = erlm[owe]
local wmj, jmvd = pcall(function()
return oz:InvokeServer(gj)
end)

local lrii = wmj and type(jmvd) == _d("BAYDX1E") and jmvd.success == true
local lzmj = wmj and type(jmvd) == _d("BAYDX1E") and tostring(jmvd.message or _d("")) or tostring(jmvd or _d(""))

if not lrii and string.find(string.lower(lzmj), _d("BwYIRw"), 1, true) then
task.wait(3.5)

wmj, jmvd = pcall(function()
return oz:InvokeServer(gj)
end)

lrii = wmj and type(jmvd) == _d("BAYDX1E") and jmvd.success == true
lzmj = wmj and type(jmvd) == _d("BAYDX1E") and tostring(jmvd.message or _d("")) or tostring(jmvd or _d(""))
end

if lrii then
beab = beab + 1
elseif string.find(string.lower(lzmj), _d("EQsTVlUDFQ"), 1, true) then
zpo = zpo + 1
else
wr = wr + 1

if #lxyr < 6 then
lxyr[#lxyr + 1] = gj .. _d("Skc") .. (lzmj ~= _d("") and lzmj or _d("HghBUloUGxUV"))
end
end

bqg.setCodeText(string.format(_d("VQNBXFJHSRRHTBMRA0wCAgVWUQoJFEtBFlBHDRwVBFJQHkBQQgUTRgIKBRQEVxo"), owe, vdw, beab, zpo, wr))

if owe < vdw and lrm() then
task.wait(1.8)
end
end

local cyfk = {
string.format(_d("IgIFVlEKCRRHRFcYRw0cFQRSUB5MGAYFExEDQFAVBFVBFAkUR0RXFAgKUEIFHQ"), beab, zpo, wr, vdw),
}

for bres, csx in ipairs(lxyr) do
cyfk[#cyfk + 1] = csx
end

bqg.redeeming = false
bqg.setCodeText(table.concat(cyfk, _d("eg")))
end)
end

bqg.codesSection:Button({
Name = _d("IgIFVlEKTBELDRNXCAgVFA"),
Callback = function()
bqg.redeemCodes()
end,
})

bqg.codeParagraph = bqg.codesSection:Paragraph({
Header = _d("MwgFVkc"),
Body = bqg.codeText,
})

bqg.scriptSection = bqg.tab:Section({
Side = _d("Ig4GW0A"),
})

bqg.scriptSection:Header({
Name = _d("IwQTWkQT"),
})

bqg.scriptSection:Button({
Name = _d("JQkNXFUDTAMEE1pEEw"),
Callback = function()
pcall(function()
cng:Unload()
end)

getgenv().ACBXWindow = nil
getgenv().ACBXAllowReload = nil
end,
})

task.spawn(function()
while lrm() do

if os.clock() >= bqg.savesAt then
bqg.savesAt = os.clock() + 3

local eyk = bqg.saves()
local ru = table.concat(eyk, _d("DA"))

if ru ~= bqg.knownSaves then
bqg.knownSaves = ru

pcall(function()
bqg.fileDropdown:ClearOptions()
bqg.fileDropdown:InsertOptions(eyk)
end)
end

if bqg.selected and bqg.selectionShown ~= bqg.selected then
bqg.selectionShown = bqg.selected

pcall(function()
bqg.fileDropdown:UpdateSelection(bqg.selected)
end)
end
end

if bqg.autoSave and os.clock() >= bqg.autoSaveAt then
bqg.autoSaveAt = os.clock() + 60

local dz = bqg.selected or _d("FAIHUkELGA")
local ujo, aovv = bqg.save(dz)

bqg.selected = dz
bqg.lastText = ujo and (_d("MRIVXBQUDQYCBRM") .. dz .. _d("UAYVEw") .. os.date(_d("VS9bFnk")) .. _d("Xg"))
or (_d("MRIVXBQUDQYCQVVVDgAVA1sT") .. tostring(aovv))
end

if os.clock() >= bqg.themeAt then
bqg.themeAt = os.clock() + 3
bqg.applyTheme()
end

if os.clock() >= bqg.capAt then
bqg.capAt = os.clock() + 2
bqg.refreshScaleCap()
end

if os.clock() >= bqg.statusAt then
bqg.statusAt = os.clock() + 2

local kzcw = bqg.autoLoadName()
local dbx = table.concat({
_d("MRIVXBQLAxEDWxM") .. (kzcw or _d("HggPVg")),
_d("IwYXVkddTA") .. tostring(#bqg.saves()),
bqg.lastText,
}, _d("eg"))

if dbx ~= bqg.shownStatus then
bqg.shownStatus = dbx

pcall(function()
bqg.statusParagraph:UpdateBody(dbx)
end)
end
end

task.wait(0.25)
end
end)

task.spawn(function()
while lrm() do

local nqw = bqg.scalePending

if nqw and os.clock() - (bqg.scalePendingAt or 0) > 0.35 then
local rip = bqg.scaleCeiling()
local ypj = math.clamp(nqw, 0.5, rip)

bqg.scalePending = nil

if math.abs(ypj - bqg.scaleTarget) > 0.002 then
bqg.scaleTarget = ypj
bqg.scaleAnchor = nil

bqg.saveUi()
end
end

if math.abs(bqg.scaleTarget - bqg.scale) > 0.002 then
local hytw = bqg.guiRoot()

if hytw and not bqg.baseWidth then
bqg.baseWidth = hytw.Size.X.Offset
bqg.baseHeight = hytw.Size.Y.Offset
end

local sx = bqg.baseWidth or 720
local hlma = bqg.baseHeight or 500
local slxs = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local sfz, syw = 8, 40

if not bqg.scaleAnchor and hytw then

local sris = bqg.widthFactor(bqg.scaleTarget)
local brcv, gsqp = sx * sris * bqg.scaleTarget, hlma * bqg.scaleTarget
local cvfq = hytw.AbsolutePosition

bqg.scaleAnchor = Vector2.new(
math.clamp(cvfq.X, sfz, math.max(sfz, slxs.X - brcv - sfz)),
math.clamp(cvfq.Y, syw, math.max(syw, slxs.Y - gsqp - sfz))
)
end

local hgj = bqg.scaleAnchor

bqg.scale = bqg.scale + (bqg.scaleTarget - bqg.scale) * 0.18

local slgj = bqg.widthFactor(bqg.scale)

pcall(function()
cng:SetScale(bqg.scale)

if hytw then
local ex = math.floor(sx * slgj)

hytw.Size = UDim2.fromOffset(ex, math.floor(hlma))

local ungx = hytw:FindFirstChild(_d("MwgPR1EJGA"))

if ungx then
local mee = hytw:FindFirstChild(_d("Iw4FVlYGHg"))
local ox = math.floor(mee and mee.Size.X.Scale * ex or ex * 0.325)

ungx.Size = UDim2.new(0, math.max(0, ex - ox), 1, 0)
end
end
end)

if hytw and hgj then
local foq, rwbr = sx * slgj * bqg.scale, hlma * bqg.scale
local vn = math.clamp(hgj.X, sfz, math.max(sfz, slxs.X - foq - sfz))
local fxan = math.clamp(hgj.Y, syw, math.max(syw, slxs.Y - rwbr - sfz))

local rxrn = hytw.Parent and hytw.Parent.AbsolutePosition or Vector2.zero

pcall(function()
hytw.Position = UDim2.fromOffset(math.floor(vn - rxrn.X), math.floor(fxan - rxrn.Y))
end)
end
else

bqg.scaleAnchor = nil
end

task.wait()
end
end)

cjgg.misc.tierLabels = {}
cjgg.misc.labelToTier = {}

cjgg.misc.expSection = cjgg.misc.tab:Section({
Side = _d("PAIHRw"),
})

cjgg.misc.expSection:Header({
Name = _d("NR8RVlAOGBkID0AUl/Pn5Y6Luw"),
})

cjgg.misc.claimToggle = cjgg.misc.expSection:Toggle({
Name = _d("MRIVXBQEABEODA"),
Default = false,
Callback = function(pro)
local cb = cjgg.misc.expeditions

cb.enabled = pro
cb.claimAt = 0

if pro then
cb.askedAt = 0
cb.request()
end
end,
}, _d("ERIVXGsEABEODA"))

cjgg.misc.rewardToggle = cjgg.misc.expSection:Toggle({
Name = _d("MRIVXBQEAB8UBBNGAhsRFQVA"),
Default = false,
Callback = function(nohj)
local czog = cjgg.misc.expeditions

czog.autoClose = nohj

if nohj then
czog.closeRewards()
end
end,
}, _d("FR8RbFUSGB84Al9bFAk"))

cjgg.misc.startToggle = cjgg.misc.expSection:Toggle({
Name = _d("MRIVXBQUGBEVFQ"),
Default = false,
Callback = function(qtpt)
local hmn = cjgg.misc.expeditions

if qtpt and not next(hmn.tiersWanted) then
hmn.autoStart = false

pcall(function()
cjgg.misc.startToggle:UpdateState(false)
end)

cng:Dialog({
Title = _d("MRIVXBQUGBEVFRNaAgkUFEFSFBMFFRU"),
Description = _d("IA4CWBQGGFALBFJHE0wfCQQTQA4JAkcIXRQTBBVHNVpRFUwUFQ5DUAgbHkcHWkYUGF5HJFJHHkwEBgpWR0cYGAJBUFwCDQACEkcUBA0CAxIfFCkFFw8VXlUVCVATCVYUFQ0CAhJHGEcNHgNBUloeTB4SDFFRFUwfAUFHXAIBUAQAXRQVGR5HAEcUCAITAk8"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})

return
end

hmn.autoStart = qtpt
hmn.startedAt = {}

if qtpt then
hmn.askedAt = 0
hmn.request()
end
end,
}, _d("ERIVXGsUGBEVFQ"))

for hpuf, hadt in ipairs(cjgg.misc.expeditions.tiers()) do
table.insert(cjgg.misc.tierLabels, tostring(hadt.name))
cjgg.misc.labelToTier[tostring(hadt.name)] = hadt.id
end

cjgg.misc.building = true

cjgg.misc.tierDropdown = cjgg.misc.expSection:Dropdown({
Name = _d("JA4EQQ"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = cjgg.misc.tierLabels,
Callback = function(qsq)
local sfy = cjgg.misc.expeditions

if cjgg.misc.building then
return
end

local uj = {}
local gqa = {}

if type(qsq) == _d("BAYDX1E") then
for mm, krtb in pairs(qsq) do
local woeb = cjgg.misc.labelToTier[tostring(mm)]

if krtb and woeb then
uj[woeb] = true
table.insert(gqa, tostring(mm))
end
end
end

table.sort(gqa)
sfy.tiersWanted = uj

pcall(function()
cjgg.misc.tierDropdown:UpdateName(#gqa > 0 and (_d("JA4EQRSF7NJH") .. table.concat(gqa, _d("XEc"))) or _d("JA4EQRSF7NJHD1xaAg"))
end)
end,
}, _d("BA4EQQ"))

task.defer(function()
cjgg.misc.building = false
end)

cjgg.misc.expSection:Button({
Name = _d("MwsAWllHAh8Q"),
Callback = function()
local tpl = cjgg.misc.expeditions

if not tpl.claim() then
cng:Notify({
Title = _d("NR8RVlAOGBkID0A"),
Description = _d("PggVW10JC1APAEAUBAMdAkFRVQQHUB4ERxo"),
Lifetime = 5,
})
end
end,
})

cjgg.misc.expSection:Button({
Name = _d("IwIPVxQUCRwCAkdRAw"),
Callback = function()
local mco = cjgg.misc.expeditions

if not next(mco.tiersWanted) then
cng:Notify({
Title = _d("NR8RVlAOGBkID0A"),
Description = _d("IA4CWBQGGFALBFJHE0wfCQQTQA4JAkcIXRQTBBVHBUFbFwgfEA8TUg4eAxNP"),
Lifetime = 5,
})

return
end

local kail = {}
local uvdo = 0

for bbqp, ahh in ipairs(mco.tiers()) do
if mco.tiersWanted[ahh.id] and mco.status(ahh.id) == _d("EREAWlgGDhwC") then
if mco.start(ahh.id, kail) then
uvdo = uvdo + 1
end
end
end

if uvdo == 0 then
cng:Notify({
Title = _d("NR8RVlAOGBkID0A"),
Description = _d("PggVW10JC1AEDkZYA0wSAkFAUQkYSkcVW1FHHxULBFBAAghQEwhWRhRMERUEE1ULHhUGBUoUCBkES0FcRkcYGAITVhQGHhVHD1xARwofEhMTUQsFFw4DX1FHDxEVBUAUAQMCRxVbUQpC"),
Lifetime = 6,
})
end
end,
})

cjgg.misc.expInfo = cjgg.misc.tab:Section({
Side = _d("Ig4GW0A"),
})

cjgg.misc.expInfo:Header({
Name = _d("NR8RVlAOGBkID0A"),
})

cjgg.misc.expParagraph = cjgg.misc.expInfo:Paragraph({
Header = _d("IxMAR0EU"),
Body = cjgg.misc.expeditions.text(),
})

cjgg.misc.expeditions.loadRewards()

cjgg.misc.expRewardParagraph = cjgg.misc.expInfo:Paragraph({
Header = _d("MwsAWlkCCA"),
Body = cjgg.misc.expeditions.rewardsText(),
})

task.spawn(function()
local crfs = cjgg.misc.expeditions
local qzx = jz(_d("Ix4PUHEfHBUDCEddCAID"), 3)

if qzx then
xftw(qzx.OnClientEvent, function(xo)
if type(xo) ~= _d("BAYDX1E") then
return
end

crfs.state = xo

crfs.offset = (tonumber(xo.now) or os.time()) - os.time()
crfs.syncedAt = os.clock()

if type(xo.rewards) == _d("BAYDX1E") and #xo.rewards > 0 then
table.insert(crfs.rewardLog, 1, {
at = os.time(),
title = tostring(xo.rewardTitle or _d("NR8RVlAOGBkIDw")),
items = xo.rewards,
})

while #crfs.rewardLog > 8 do
table.remove(crfs.rewardLog)
end

crfs.saveRewards()

if crfs.autoClose then

task.delay(0.35, crfs.closeRewards)
end
end
end)
end

while lrm() do

if os.clock() - crfs.askedAt > 1 and os.clock() - crfs.syncedAt > 20 then
crfs.request()
end

if crfs.enabled then
crfs.claim()
end

if crfs.autoClose then
crfs.closeRewards()
end

if crfs.autoStart and next(crfs.tiersWanted) then
local hoz = {}

for gqjn, wimk in ipairs(crfs.tiers()) do
if crfs.tiersWanted[wimk.id] and crfs.status(wimk.id) == _d("EREAWlgGDhwC") then
if crfs.start(wimk.id, hoz) then
break
end
end
end
end

local djt = crfs.text()

if cjgg.misc.expParagraph and djt ~= cjgg.misc.expShown then
cjgg.misc.expShown = djt

pcall(function()
cjgg.misc.expParagraph:UpdateBody(djt)
end)
end

local andn = crfs.rewardsText()

if cjgg.misc.expRewardParagraph and andn ~= crfs.rewardsShown then
crfs.rewardsShown = andn

pcall(function()
cjgg.misc.expRewardParagraph:UpdateBody(andn)
end)
end

task.wait(0.75)
end
end)

cjgg.misc.util = {
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

function cjgg.misc.util.hook()
local qto = cjgg.misc.util

if qto.hooked then
return
end

qto.hooked = true

if vxjo.SyncCollection then
xftw(vxjo.SyncCollection.OnClientEvent, function(bzpk)
if type(bzpk) == _d("BAYDX1E") then
qto.profile = bzpk
qto.profileAt = os.clock()
end
end)
end

if vxjo.SyncAchievements then
xftw(vxjo.SyncAchievements.OnClientEvent, function(jpg)
if type(jpg) == _d("BAYDX1E") then
qto.ach = jpg
end
end)
end

if vxjo.SyncQuests then
xftw(vxjo.SyncQuests.OnClientEvent, function(gx)
if type(gx) == _d("BAYDX1E") and type(gx.list) == _d("BAYDX1E") then
qto.quests = gx
end
end)
end

if vxjo.SyncPeriodicQuests then
xftw(vxjo.SyncPeriodicQuests.OnClientEvent, function(nakm, bwaj)
if nakm == _d("BwIEWFge") and type(bwaj) == _d("BAYDX1E") and type(bwaj.list) == _d("BAYDX1E") then
qto.weekly = bwaj
end
end)
end
end

function cjgg.misc.util.askProfile()
local sf = cjgg.misc.util

if os.clock() - sf.askedAt < 1.5 then
return
end

sf.askedAt = os.clock()

if vxjo.RequestSync then
pcall(function()
vxjo.RequestSync:FireServer()
end)
end
end

function cjgg.misc.util.currentProfile()
local ndqb = cjgg.misc.util

if type(ndqb.profile) ~= _d("BAYDX1E") then
ndqb.askProfile()

return nil
end

if os.clock() - ndqb.profileAt > 20 then
ndqb.askProfile()
end

return ndqb.profile
end

function cjgg.misc.util.forgetProfile()
local uf = cjgg.misc.util

uf.profile = nil
uf.profileAt = 0
uf.askedAt = 0
end

function cjgg.misc.util.indexedTotal(nz)
local sait = 0

for yhct, pq in pairs((nz and nz.cardIndex) or {}) do
if pq then
sait = sait + 1
end
end

return sait
end

function cjgg.misc.util.indexPending(igy)
local nu = {}

if type(igy) ~= _d("BAYDX1E") then
return nu
end

local iwkp = cjgg.misc.util.indexedTotal(igy)
local qke = igy.indexMilestones or {}

for zbf = 1, 30 do
if not qke[zbf] and zbf * 5 <= iwkp then
table.insert(nu, zbf)
end
end

return nu
end

function cjgg.misc.util.indexFrame()
local gdx = bvm:FindFirstChild(_d("MwYTV30JCBUfJkZd"))

return gdx and gdx:FindFirstChild(_d("OQkFVkwhHhEKBA"))
end

function cjgg.misc.util.clickButton(hiy)
if not hiy then
return false
end

if firesignal then
local bgqt = pcall(firesignal, hiy.MouseButton1Click)

if bgqt then
return true
end
end

return pcall(function()
hiy:Activate()
end)
end

function cjgg.misc.util.closeIndex()
local btk = cjgg.misc.util.indexFrame()

if not btk or not btk.Visible then
return false
end

pcall(function()
local grg = ug:FindFirstChild(_d("PQgFRlgCPxMVCENAFA"))
local cdfx = grg and grg:FindFirstChild(_d("PQIPRnkGAhEABEE"))

if cdfx then
require(cdfx).close(btk)
end
end)

cjgg.misc.util.clickButton(btk:FindFirstChild(_d("MwsOQFElGQQTDl0")))

pcall(function()
btk.Visible = false
end)

return true
end

function cjgg.misc.util.claimIndex()
local njs = cjgg.misc.util

if os.clock() < njs.indexAt then
return false
end

local vrsc = njs.currentProfile()

if not vrsc then
return false
end

local gmb = njs.indexPending(vrsc)
local hjlf = gmb[1]

if not hjlf then
return false
end

local jloy = njs.indexedTotal(vrsc)
local ytyy = njs.indexAsked

if type(ytyy) == _d("BAYDX1E") and ytyy.milestone == hjlf and ytyy.total == jloy then
return false
end

njs.indexAsked = { milestone = hjlf, total = jloy }

pcall(function()
vxjo.ClaimIndexReward:FireServer(hjlf)
end)

njs.indexAt = os.clock() + 1.5

njs.profile = nil
njs.profileAt = 0

task.delay(0.4, njs.closeIndex)

return true
end

function cjgg.misc.util.achPending()
local ldzl = {}
local tzt = cjgg.misc.util.ach

if type(tzt) ~= _d("BAYDX1E") then
return ldzl
end

for uxc, kfum in ipairs(tzt.chains or {}) do
for ejt, au in ipairs(kfum.levels or {}) do
if au.reached and not au.claimed then
table.insert(ldzl, { chain = tostring(kfum.id), index = au.index, name = tostring(au.name or au.index) })
end
end
end

return ldzl
end

function cjgg.misc.util.claimAchievement()
local cifo = cjgg.misc.util

if os.clock() < cifo.achAt then
return false
end

if type(cifo.ach) ~= _d("BAYDX1E") then
if os.clock() - cifo.achAskedAt > 4 and vxjo.RequestAchievements then
cifo.achAskedAt = os.clock()

pcall(function()
vxjo.RequestAchievements:FireServer()
end)
end

return false
end

for sxls, qjbo in ipairs(cifo.achPending()) do
pcall(function()
vxjo.ClaimAchievement:FireServer(qjbo.chain, qjbo.index)
end)

cifo.achAt = os.clock() + 1

task.delay(1, function()
if vxjo.RequestAchievements then
pcall(function()
vxjo.RequestAchievements:FireServer()
end)
end
end)

return true
end

return false
end

function cjgg.misc.util.questRows()
local eh = cjgg.misc.util
local ys = {}

for cqpy, dyoj in ipairs({ { list = _d("FAYIX00"), payload = eh.quests }, { list = _d("BwIEWFge"), payload = eh.weekly } }) do
for wcv, fyy in ipairs((type(dyoj.payload) == _d("BAYDX1E") and dyoj.payload.list) or {}) do
if type(fyy) == _d("BAYDX1E") then
table.insert(ys, { list = dyoj.list, index = wcv, quest = fyy })
end
end
end

return ys
end

function cjgg.misc.util.questPending()
local hig = {}

for uxjd, yk in ipairs(cjgg.misc.util.questRows()) do
local tor = yk.quest

if not tor.claimed and (tonumber(tor.progress) or 0) >= (tonumber(tor.target) or math.huge) then
table.insert(hig, yk)
end
end

return hig
end

function cjgg.misc.util.askQuests()
local cfc = cjgg.misc.util

if os.clock() - cfc.questAskedAt > 4 and vxjo.RequestQuests then
cfc.questAskedAt = os.clock()

pcall(function()
vxjo.RequestQuests:FireServer()
end)
end

if os.clock() - cfc.weeklyAskedAt > 4 and vxjo.RequestPeriodicQuests then
cfc.weeklyAskedAt = os.clock()

pcall(function()
vxjo.RequestPeriodicQuests:FireServer(_d("BwIEWFge"))
end)
end
end

function cjgg.misc.util.claimQuest()
local eun = cjgg.misc.util

if os.clock() < eun.questAt then
return false
end

if type(eun.quests) ~= _d("BAYDX1E") and type(eun.weekly) ~= _d("BAYDX1E") then
eun.askQuests()

return false
end

for hiqh, wmky in ipairs(eun.questPending()) do
if wmky.list == _d("BwIEWFge") then
if vxjo.ClaimPeriodicQuest then
pcall(function()
vxjo.ClaimPeriodicQuest:FireServer(_d("BwIEWFge"), wmky.index)
end)
end
else
pcall(function()
vxjo.ClaimQuest:FireServer(wmky.index)
end)
end

eun.questAt = os.clock() + 1.2

task.delay(1, function()
eun.askQuests()
end)

return true
end

return false
end

function cjgg.misc.util.packCatalog()
local vtr = cjgg.misc.util

if vtr.packs then
return vtr.packs
end

local fryk = {}
local tqyu, hj = pcall(function()
return require(ug.ModuleScripts.PackData)
end)

if tqyu and type(hj) == _d("BAYDX1E") and type(hj.Packs) == _d("BAYDX1E") then
for nhz, ths in ipairs(hj.Packs) do
if ths.id then
table.insert(fryk, { id = tostring(ths.id), name = tostring(ths.name or ths.id) })
end
end
end

vtr.packs = fryk

return fryk
end

function cjgg.misc.util.packUnlocked(qmvj, rec)
if type(qmvj) ~= _d("BAYDX1E") then
return true
end

local nvg, kz = pcall(function()
return require(ug.ModuleScripts.PackData)
end)
local sj, nst = pcall(function()
return require(ug.ModuleScripts.PackSlotData)
end)

if not (nvg and sj) then
return true
end

local urlz = kz.ById and kz.ById[rec]

if not urlz then
return false
end

local hsol, tbh = pcall(nst.isPackUnlocked, urlz, qmvj)

return (not hsol) or tbh == true
end

function cjgg.misc.util.visit(sanj)
local xbkx = workspace:FindFirstChild(_d("PjciQA"))
local ifm = xbkx and xbkx:FindFirstChild(sanj)
local im = qgqr.Character
local mic = im and im:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))
local ggl = ifm and (ifm:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw")) or ifm:FindFirstChildWhichIsA(_d("MgYSVmQGHgQ"), true))

if not (ggl and mic) then
return nil
end

local nmg = mic.CFrame

mic.CFrame = CFrame.new((ggl.CFrame * CFrame.new(0, 0, -5)).Position)

return nmg
end

function cjgg.misc.util.returnTo(xcnj)
local kmt = qgqr.Character
local xin = kmt and kmt:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if xin and xcnj then
xin.CFrame = xcnj
end
end

function cjgg.misc.util.applyPacks(rky, shjh)
local acip = cjgg.misc.util

if os.clock() < acip.packAt then
return false, _d("JwYIRxQGTB0IDFZaE0I")
end

local khb = acip.currentProfile()

if not khb then
return false, _d("IgIAV10JC1AeDkZGRxwCCAdaWAJMXUcVQU1HDRcGCF0UDgJQBkFAUQQDHgNP")
end

if shjh and (tonumber(khb.packSlots) or 1) < 2 then
return false, _d("IwsORxRVTB4CBFdHRxgYAkFWTBMeEUcRUlcMTAMLDkcUAA0dAhFSRxRC")
end

if not (vxjo.OpenPackShop and vxjo.EquipPack) then
return false, _d("JA8EE0QGDxtHEltbF0wZFEFdWxNMGQlBR1wOH1AAAF5RRxoVFRJaWwlC")
end

acip.packAt = os.clock() + 8

task.spawn(function()
local uybf = acip.visit(_d("PggDX1EUHxkJBkA"))

if not uybf then
return
end

pcall(function()
vxjo.OpenPackShop:FireServer(_d("AAYCWGsKCQIECVJaEw"))
end)

task.wait(1.2)

if rky then
pcall(function()
vxjo.EquipPack:FireServer(rky, 1)
end)
end

if shjh then
task.wait(0.8)

pcall(function()
vxjo.EquipPack:FireServer(shjh, 2)
end)
end

task.wait(0.8)
acip.returnTo(uybf)
acip.forgetProfile()
end)

return true
end

function cjgg.misc.util.accScore(ow)
local omzc = ow.effects or {}

return (omzc.luckBonus or 0) * 10
+ ((omzc.luckMult or 1) - 1) * 200
+ ((omzc.borderLuckMult or 1) - 1) * 200
- ((omzc.rollCdMult or 1) - 1) * 30
end

function cjgg.misc.util.accCatalog()
local imu = cjgg.misc.util

if imu.accessories then
return imu.accessories
end

local gbx = {}

for yqk, xba in ipairs({ _d("MQQCVkcUAwIeJVJABg"), _d("MQQCVkcUAwIeJVJABl4") }) do
local kjw, xotn = pcall(function()
return require(ug.ModuleScripts[xba])
end)

if kjw and type(xotn) == _d("BAYDX1E") and type(xotn.Accessories) == _d("BAYDX1E") then
for ukm, poc in ipairs(xotn.Accessories) do
if poc.id then
table.insert(gbx, {
id = tostring(poc.id),
name = tostring(poc.name or poc.id),
shop = yqk,

shopName = yqk == 1 and _d("MQQCVkcUAwIeQWBcCBw") or _d("PR4SR1EVBR8SEhN5BgI"),
raidable = poc.raidShopOnly == true,
hidden = poc.hidden == true,
requirements = poc.requirements or {},
score = cjgg.misc.util.accScore(poc),
})
end
end
end
end

imu.accessories = gbx

return gbx
end

function cjgg.misc.util.accOwned(xefy)
local flzi = {}

for wtkq, uvz in ipairs((xefy and xefy.accessories) or {}) do
flzi[tostring(uvz)] = true
end

return flzi
end

function cjgg.misc.util.accMeets(dmr, ptv)
for ofg, irtz in ipairs(ptv.requirements) do
local tgbf = dmr.cards and dmr.cards[irtz.cardId]
local jo = type(tgbf) == _d("BAYDX1E") and (tonumber(tgbf[irtz.borderLevel]) or 0) or 0

if jo < (tonumber(irtz.amount) or 0) then
return false
end
end

return true
end

function cjgg.misc.util.accPlan(egku)
local za = cjgg.misc.util
local qq = za.accOwned(egku)
local dep = {}

for cesx, qaw in ipairs(za.accCatalog()) do
if not qq[qaw.id] and not qaw.raidable and not qaw.hidden and za.accMeets(egku, qaw) then
local ws = dep[qaw.shop]

if not ws or qaw.score > ws.score then
dep[qaw.shop] = qaw
end
end
end

return dep
end

function cjgg.misc.util.accPicks(uld)
local mhu = cjgg.misc.util
local yxhh = mhu.accOwned(uld)
local ry, djl

for vez, xczd in ipairs(mhu.accCatalog()) do
if yxhh[xczd.id] then
if not ry or xczd.score > ry.score then
ry = xczd
end
elseif not xczd.raidable and not xczd.hidden and mhu.accMeets(uld, xczd) then
if not djl or xczd.score > djl.score then
djl = xczd
end
end
end

return ry, djl
end

function cjgg.misc.util.equipBest()
local cnaf = cjgg.misc.util
local ebh = cnaf.currentProfile()

if not ebh or not vxjo.EquipAccessory then
return false
end

local vfjc = cnaf.accPicks(ebh)

if not vfjc or ebh.equippedAccessory == vfjc.id then
return vfjc ~= nil
end

pcall(function()
vxjo.EquipAccessory:FireServer(vfjc.id)
end)

task.delay(1.5, function()
cnaf.forgetProfile()
end)

return true
end

function cjgg.misc.util.buyBest()
local jhfy = cjgg.misc.util

if os.clock() < jhfy.accAt then
return false, _d("JwYIRxQGTB0IDFZaE0I")
end

if sw.busy(1) or sw.busy(2) then
jhfy.accNote = _d("OQlBUhQFDQQTDVYUSkwRRxJbWxdMBBUIQxQQAwULBRNRCQhQDhU")
return false, _d("OQlBUhQFDQQTDVYUSkwRRxJbWxdMBBUIQxQQAwULBRNRCQhQDhUd")
end

local ckp = jhfy.currentProfile()

if not ckp then
jhfy.accNote = _d("IgIAV10JC1AeDkZGRxwCCAdaWAJMXUcWWlgLTAQVGBNVAA0ZCUFaWkcNUBQEUFsJCA")
return false, _d("IgIAV10JC1AeDkZGRxwCCAdaWAJMXUcVQU1HDRcGCF0UDgJQBkFAUQQDHgNP")
end

local ayb = jhfy.accPlan(ckp)
local jbr = {}

for osc = 1, 2 do
if ayb[osc] then
table.insert(jbr, ayb[osc].name)
end
end

if #jbr == 0 then
jhfy.accNote = _d("PggVW10JC1AJBEQUEgIcCAJYUQNMCQIVExlHGBgCQVBVFQgDRwdcRkcFBEcAQVFHAh8TQVpaRxgYAkFQWwsAFQQVWlsJ")
return false, _d("PggVW10JC1AJBEQUBA0eRwNWFBICHAgCWFEDTAkCFRMZRxgYAkFQVRUIA0cHXEZHBQRHAEFRRwIfE0FaWkcYGAJBUFsLABUEFVpbCUI")
end

jhfy.accAt = os.clock() + 12
jhfy.accNote = _d("JwYNWF0JC1ATDhNADwlQBA5GWhMJAkcHXEZH") .. table.concat(jbr, _d("UAYPVxQ"))

task.spawn(function()
for rp = 1, 2 do
local debo = ayb[rp]

if debo then
local hx = rp == 1 and _d("ABITQEEOGBUDBQ") or _d("BwYHVVELAREJBFJAFBsRAQdWWBQ")
local ixc = rp == 1 and vxjo.OpenAccessoryShop or vxjo.OpenAccessoryShop2
local tiyy = rp == 1 and vxjo.BuyAccessory or vxjo.BuyAccessory2
local nryk = hx and jhfy.visit(hx) or nil

if not nryk then
local bey = workspace:FindFirstChild(_d("PjciQA"))
local tph = bey and bey:FindFirstChild(hx)

if tph and os.clock() - (jhfy.worldAskedAt or 0) > 25 then

jhfy.worldAskedAt = os.clock()
jhfy.accNote = _d("Mw8AQVUEGBUVQV1bE0wCAgBXTUdBUBMTSl0JC1AGBlJdCUwDDw5BQAsV")
elseif not tph and os.clock() - (jhfy.worldAskedAt or 0) > 25 then

jhfy.worldAskedAt = os.clock()
jhfy.accNote = _d("PghBUFsSAgQCExNdCUwEDwhAFBADAgsFExlHGBEMCF1TRxgYAkFfWwUOCUcVVlgCHB8VFQ")

pcall(function()
vxjo.TeleportToWorld:FireServer(_d("HAgDUU0"))
end)

task.wait(4.5)
nryk = jhfy.visit(hx)
end
end

if nryk and ixc and tiyy then

task.wait(0.9)

pcall(function()
ixc:FireServer()
end)

task.wait(1.2)

pcall(function()
tiyy:FireServer(debo.id)
end)

task.wait(0.9)
jhfy.returnTo(nryk)
jhfy.accNote = _d("MggUVFwTTA") .. tostring(debo.name)
elseif not nryk then
jhfy.accNote = _d("MwgUX1BHAh8TQUFRBg8YRxVbUUcPHxIPR1EVTF1HFUFNRw0XBghdFA4CUAZBXlsKCR4T")
end

task.wait(0.6)
end
end

jhfy.forgetProfile()

for uyw = 1, 8 do
if type(jhfy.profile) == _d("BAYDX1E") then
break
end

jhfy.askProfile()
task.wait(0.7)
end

jhfy.equipBest()
end)

return true, table.concat(jbr, _d("XEc"))
end

function cjgg.misc.util.indexText()
local rjh = cjgg.misc.util

if type(rjh.profile) ~= _d("BAYDX1E") then
return _d("IgIAV10JC1AeDkZGRw8RFQUTXQkIFR9PHRo")
end

local wep = rjh.indexPending(rjh.profile)
local zm = 0

for ylt, rvf in pairs(rjh.profile.indexMilestones or {}) do
if rvf then
zm = zm + 1
end
end

local xe = tostring(rjh.indexedTotal(rjh.profile)) .. _d("UAQAQVAUTBkJBVZMAghcRw") .. tostring(zm) .. _d("UAgHEwdXTAICFlJGAx9QBA1SXQoJFA")

if #wep > 0 then
xe = xe .. _d("ejUEUlAeVlA") .. table.concat(wep, _d("XEc"))
end

return xe
end

function cjgg.misc.util.achText()
local std = cjgg.misc.util

if type(std.ach) ~= _d("BAYDX1E") then
return _d("IgIAV10JC1AGAltdAhoVCgRdQBRCXkk")
end

local hjf = std.achPending()
local xxkm = 0

for twnh, qtis in ipairs(std.ach.chains or {}) do
for iazu in ipairs(qtis.levels or {}) do
xxkm = xxkm + 1
end
end

return tostring(#hjf) .. _d("UAgHEw") .. tostring(xxkm) .. _d("UAYCW10CGhUKBF1AFEwCAgBXTQ")
end

function cjgg.misc.util.questText()
local aejb = cjgg.misc.util

if type(aejb.quests) ~= _d("BAYDX1E") and type(aejb.weekly) ~= _d("BAYDX1E") then
return _d("IgIAV10JC1AWFFZHEx9eSU8")
end

local pqaz, yv = 0, 0

for mns, ta in ipairs(aejb.questPending()) do
if ta.list == _d("BwIEWFge") then
yv = yv + 1
else
pqaz = pqaz + 1
end
end

local zbb = type(aejb.quests) == _d("BAYDX1E") and #(aejb.quests.list or {}) or 0
local xlk = type(aejb.weekly) == _d("BAYDX1E") and #(aejb.weekly.list or {}) or 0

return tostring(pqaz) .. _d("UAgHEw") .. tostring(zbb) .. _d("UAMAWlgeTAICAFdNbQ")
.. tostring(yv) .. _d("UAgHEw") .. tostring(xlk) .. _d("UBAEVl8LFVAVBFJQHg")
end

function cjgg.misc.util.packText()
local ldr = cjgg.misc.util
local gnm = ldr.profile

if type(gnm) ~= _d("BAYDX1E") then
return _d("IgIAV10JC1AeDkZGRxwRBApAGklC")
end

local function rfpe(purw)
for rmp, ryn in ipairs(ldr.packCatalog()) do
if ryn.id == purw then
return ryn.name
end
end

return tostring(purw)
end

local xpbj = _d("IwsORxRWVlA") .. rfpe(gnm.equippedPack)

if (tonumber(gnm.packSlots) or 1) >= 2 then
xpbj = xpbj .. _d("ejQNXEBHXkpH") .. rfpe(gnm.equippedPack2)
else
xpbj = xpbj .. _d("ejQNXEBHXkpHBlJZAhwRFBITWggYUAgWXVED")
end

return xpbj
end

function cjgg.misc.util.accText()
local tcpd = cjgg.misc.util
local jnnd = tcpd.profile

if type(jnnd) ~= _d("BAYDX1E") then
return _d("IgIAV10JC1AeDkZGRw0TBARARwgeGQISHRpJ")
end

local htz = tcpd.accPicks(jnnd)
local qqy = tcpd.accPlan(jnnd)
local zu = _d("HggPVg")

for nphw, iu in ipairs(tcpd.accCatalog()) do
if iu.id == jnnd.equippedAccessory then
zu = iu.name .. _d("UE8") .. iu.shopName .. _d("WQ")
end
end

local zibj = _d("NRYUWkQXCRRdQQ") .. zu

if htz then
zibj = zibj .. _d("eiUEQEBHAwcJBFcORw") .. htz.name
end

zibj = zibj .. _d("eiYCUFEUHx8VGBNnDwMAXUE") .. (qqy[1] and qqy[1].name or _d("HggVW10JC1AJBEQ"))
zibj = zibj .. _d("eioYQEACHhkIFEAUKg0eXUE") .. (qqy[2] and qqy[2].name or _d("HggVW10JC1AJBEQ"))

if tcpd.accNote then
zibj = zibj .. _d("eisAQEBHGAIOEQkU") .. tcpd.accNote
end

return zibj
end

cjgg.misc.util.hook()
cjgg.misc.util.askProfile()

cjgg.misc.indexSection = cjgg.misc.tab:Section({
Side = _d("PAIHRw"),
})

cjgg.misc.indexSection:Header({
Name = _d("MwYTVxQuAhQCGRPE+P/3"),
})

cjgg.misc.indexToggle = cjgg.misc.indexSection:Toggle({
Name = _d("MRIVXBQEABEODA"),
Default = false,
Callback = function(olom)
cjgg.misc.util.indexOn = olom
cjgg.misc.util.indexAt = 0

cjgg.misc.util.indexAsked = nil
end,
}, _d("ERIVXGsEABEODGwG"))

cjgg.misc.indexSection:Button({
Name = _d("MwsAWllHAh8Q"),
Callback = function()
local epg = cjgg.misc.util

epg.indexAt = 0
epg.indexAsked = nil

if not epg.claimIndex() then
cng:Notify({
Title = _d("MwYTVxQuAhQCGQ"),
Description = _d("PghBXl0LCQMTDl1RRwUDRxNWVQMVUBMOE1cLDRkKTw"),
Lifetime = 5,
})
end
end,
})

cjgg.misc.claimSection = cjgg.misc.tab:Section({
Side = _d("PAIHRw"),
})

cjgg.misc.claimSection:Header({
Name = _d("MQQJWlERCR0CD0dHR0pQNhRWRxMfUJf+vLI"),
})

cjgg.misc.achToggle = cjgg.misc.claimSection:Toggle({
Name = _d("MRIVXBQEABEODBNVBAQZAhdWWQICBBQ"),
Default = false,
Callback = function(eptj)
cjgg.misc.util.achOn = eptj
cjgg.misc.util.achAt = 0

if eptj and vxjo.RequestAchievements then
pcall(function()
vxjo.RequestAchievements:FireServer()
end)
end
end,
}, _d("ERIVXGsEABEODGxVBAQZAhdWWQICBBQ"))

cjgg.misc.questToggle = cjgg.misc.claimSection:Toggle({
Name = _d("MRIVXBQEABEODBNFEgkDExI"),
Default = false,
Callback = function(cxs)
cjgg.misc.util.questOn = cxs
cjgg.misc.util.questAt = 0
cjgg.misc.util.questAskedAt = 0
cjgg.misc.util.weeklyAskedAt = 0

if cxs then
cjgg.misc.util.askQuests()
end
end,
}, _d("ERIVXGsEABEODGxFEgkDExI"))

cjgg.misc.claimSection:Button({
Name = _d("MwsAWllHDRwLQV1bEA"),
Callback = function()
local pfl = cjgg.misc.util

pfl.achAt = 0
pfl.questAt = 0

local bqt = pfl.claimAchievement()
local lsu = pfl.claimQuest()

if not (bqt or lsu) then
cng:Notify({
Title = _d("MQQJWlERCR0CD0dHR0pQNhRWRxMf"),
Description = _d("PggVW10JC1AOEhNGAg0UHkFHW0cPHAYIXho"),
Lifetime = 5,
})
end
end,
})

cjgg.misc.packSection = cjgg.misc.tab:Section({
Side = _d("PAIHRw"),
})

cjgg.misc.packSection:Header({
Name = _d("MwYTVxQ3DRMMEhPE+OLE"),
})

cjgg.misc.packSection:Paragraph({
Header = _d("JBAOE0cLAwQU"),
Body = _d("IA4CWEdHDQAXDUoUCAIcHkFEXAICUB4ORhQXHhUUEhN1FxwcHkFDVQQHA0tBUVEEDQUUBBNADwlQFBZaQAQEUBAAX18UTAQIQUdcAkwdAhNQXAYCBEk"),
})

local gzm = {}
local vijf = {}

for yo, mndx in ipairs(cjgg.misc.util.packCatalog()) do
table.insert(gzm, mndx.name)
vijf[mndx.name] = mndx.id
end

cjgg.misc.packSlotOne = nil
cjgg.misc.packSlotTwo = nil

cjgg.misc.packDropdownOne = cjgg.misc.packSection:Dropdown({
Name = _d("IwsORxRW"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = gzm,
Callback = function(wdom)
local womu = type(wdom) == _d("BAYDX1E") and wdom[1] or wdom

cjgg.misc.packSlotOne = vijf[tostring(womu)]
end,
}, _d("AwsOR2tW"))

cjgg.misc.packDropdownTwo = cjgg.misc.packSection:Dropdown({
Name = _d("IwsORxRV"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = gzm,
Callback = function(ayt)
local yb = type(ayt) == _d("BAYDX1E") and ayt[1] or ayt

cjgg.misc.packSlotTwo = vijf[tostring(yb)]
end,
}, _d("AwsOR2tV"))

cjgg.misc.packSection:Button({
Name = _d("MRcRX01HHBEECkA"),
Callback = function()
local daak = cjgg.misc.util
local iqz = cjgg.misc.packSlotOne
local njz = cjgg.misc.packSlotTwo

if not iqz then
cng:Notify({
Title = _d("MwYTVxQ3DRMMEg"),
Description = _d("IA4CWBQGTAAGAlgUAQMCRxJfWxNMQUcHWkYUGF4"),
Lifetime = 5,
})

return
end

local iicy, rwqi = daak.applyPacks(iqz, njz)

if not iicy then
cng:Dialog({
Title = _d("MwYTVxQ3DRMMEg"),
Description = rwqi,
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})
end
end,
})

cjgg.misc.cards = {
rarityLabels = { _d("MQsN"), _d("PggTXlUL"), _d("NwgNVw"), _d("IgYIXVYIGw"), _d("JQkIRVEVHxEL") },
borderOf = { Normal = 1, Gold = 2, Rainbow = 3, Universal = 4 },
mergeOn = false,
deconOn = false,
mergeWanted = {},
deconWanted = {},
mergeAt = 0,
deconAt = 0,
mergeDone = _d("PggVW10JC1AUBF1ARxUVEw"),
deconDone = _d("PggVW10JC1AUBF1ARxUVEw"),

inFlight = false,

interval = 3600,
manualGap = 20,
manualAt = 0,

protectedPrefixes = { weather = true, boss = true, raid = true, wb = true, fish = true, hw = true, event = true },

deconExceptions = { weather_sayaka = true, weather_caesar = true },

deconConfirmed = false,
burnAskedAt = 0,
}

function cjgg.misc.cards.isProtected(ehdm, qzab)
local kfh = cjgg.misc.cards
local qcz = tostring(ehdm or _d(""))
local qblz = qcz:match(_d("Lk86UhkdXF1ePBgdOA"))

if not (qblz and kfh.protectedPrefixes[qblz]) then
return false
end

return not (kfh.deconExceptions[qcz] and qzab == 2)
end

function cjgg.misc.cards.burnAllowed(fwmu)
local ghq = cjgg.misc.cards
local ykxm = ghq.wantedFor(_d("FAICXFowDR4TBFc"))

if not (ykxm == nil or ykxm[3] or ykxm[4]) then
ghq.deconConfirmed = false

return true
end

if ghq.deconConfirmed then
return true
end

if fwmu then
return false
end

if os.clock() < (ghq.burnAskedAt or 0) then
return false
end

ghq.burnAskedAt = os.clock() + 20

cng:Dialog({
Title = _d("MhITXRQ1DRkJA1xDRwMCRzRdXREJAhQAXxQEDQIDEgw"),
Description = _d("MRIVXBQDCRMID0BAFRkTE0FAUQkIA0cERVEVFVAEDkNNRwUeRxVbUUcBERMCW10JC1AVDkRHRw0eA0FQVQkCHxNBUVFHGR4DDl1RSUw")
.. _d("JwIAR1wCHlxHA1xHFEBQFQBaUEcOHxQSHxQQAwILBRNWCB8DS0FVXRQEGQkGHxQvDRwLDkRRAgJQBg9XFAIaFQkVE1cGHhQUQVJGAkwYAg1XFAUNEwxBVl0TBBUVQURVHkI"),
Buttons = {
{
Name = _d("MhITXRQTBBUK"),
Callback = function()
ghq.deconConfirmed = true
ghq.deconAt = 0
ghq.manualAt = 0

pcall(function()
cjgg.misc.deconToggle:UpdateState(true)
end)
end,
},
{
Name = _d("MwYPUFEL"),
Callback = function()
pcall(function()
cjgg.misc.deconToggle:UpdateState(false)
end)
end,
},
},
})

return false
end

function cjgg.misc.cards.wantedFor(uij)
local owc = cjgg.misc.cards[uij] or {}

if next(owc) == nil or owc[0] then
return nil
end

return owc
end

function cjgg.misc.cards.npcFor(mnki)
local vxxq = workspace:FindFirstChild(_d("PjciQA"))

if not vxxq then
return nil
end

local aye = mnki and _d("FhISVmsJHBM") or _d("FAICXFoUGAISAkdrCRwT")

for xyrx, vnoy in ipairs(vxxq:GetChildren()) do
if vnoy:GetAttribute(_d("PjcielA")) == aye then
return vnoy
end
end

local bdjy = mnki and { _d("PwgRW1ge"), _d("HwgRX00C") } or { _d("Iw8ARlgG"), _d("OAYXVmAQAzQGBUA") }

for wjq, aymx in ipairs(vxxq:GetChildren()) do
for rng, wh in ipairs(bdjy) do
if aymx.Name == wh then
return aymx
end
end
end

local ypm = mnki and { _d("EwYTVxQKCQIACF1T"), _d("HwgRW1ge") } or { _d("FAICXFoUGAISAkddCAI"), _d("Aw8ARlgG") }

for ezs, ngi in ipairs(vxxq:GetChildren()) do
for hcuy, bep in ipairs(ngi:GetDescendants()) do
if bep:IsA(_d("JAIZR3gGDhUL")) and bep.Text ~= _d("") then
local yi = bep.Text:lower()

for hhi, kcrg in ipairs(ypm) do
if yi:find(kcrg, 1, true) then
return ngi
end
end

break
end
end
end

return nil
end

function cjgg.misc.cards.rarityText(kgvz)
local qwmx = cjgg.misc.cards.wantedFor(kgvz)

if not qwmx then
return _d("MQsN")
end

local qhe = {}

for vj, xtkw in pairs(cjgg.misc.cards.borderOf) do
if qwmx[xtkw] then
table.insert(qhe, vj)
end
end

if #qhe == 0 then
return _d("MQsN")
end

table.sort(qhe)

return table.concat(qhe, _d("XEc"))
end

function cjgg.misc.cards.run(ysm, tdt, ocn)
local sdyi = cjgg.misc.cards
local qr = cjgg.misc.util
local wgnf = ysm and _d("HQITVFEmGA") or _d("FAICXFomGA")

if ocn then
if os.clock() < sdyi[wgnf] then
return false, _d("PggVE1ASCVAeBEca")
end
elseif os.clock() < sdyi.manualAt then
return false, _d("JwYIRxQGTB0IDFZaE0I")
end

if sdyi.inFlight then
return false, _d("MQkOR1wCHlAEAEFQRxgCDhETXRRMEQsTVlUDFVAVFF1aDgIXSQ")
end

local hbmh = sw.busy(1) and 1 or (sw.busy(2) and 2 or nil)
local hb = os.clock() - (jvm.floorAt or 0) < 90
local xjsb = hbmh ~= nil and sw.towerSlot() == hbmh and hb

if hbmh and not xjsb then
return false, _d("OQlBUhQFDQQTDVYUSkwEDwQTQBUFAEcWXEELCFACD1cUDhhe")
end

if xup.battlePending and os.time() < (xup.battlePendingUntil or 0) then
return false, _d("MUcDUkATABVHCEAUFBgRFRVaWgBMXUcVW1FHGAIOERNDCBkcA0FQVQkPFQtBWkBJ")
end

if not ysm and not sdyi.burnAllowed() then
return false, _d("MwgPVV0VAVA1AFpaBQMHSDRdXREJAhQAXxQBBQIUFR0")
end

local beeo = sdyi.npcFor(ysm)

if not beeo then
return false, ysm
and _d("PwgRW1geTBkUQV1bE0wZCUFHXA4fUAoAQxRKTAQVAEVRC0wECEFbXQpMEQkFE0QVCQMUQVpARw0XBghdGg")
or _d("JA8EE1ACDx8JEkdGEg8ERy9jd0cFA0cPXEBHBR5HFVtdFEwdBhETGUcYAgYXVlhHGB9HCEcUBgIURxFBURQfUA4VE1UADRkJTw")
end

local jxv = ysm and vxjo.OpenFuseDialog or vxjo.OpenDeconstructDialog
local twop = ysm and vxjo.FuseCards or vxjo.DeconstructCards

if not (jxv and twop) then
return false, _d("JA8ARxQOH1AJDkcUDgJQEwlaR0cLEQoEE0ICHgMODl0a")
end

local xc = ysm and _d("HQITVFEwDR4TBFc") or _d("FAICXFowDR4TBFc")
local hd = sdyi.wantedFor(xc)

sdyi.manualAt = os.clock() + sdyi.manualGap

if ocn then
sdyi[wgnf] = os.clock() + sdyi.interval
end

sdyi.inFlight = true

task.spawn(function()

local vovh = nil

local function wsjs(eiod, dwb)
if ysm then
sdyi.mergeDone = eiod
else
sdyi.deconDone = eiod
end

if dwb and ocn then
sdyi[wgnf] = os.clock() + 120
end

sdyi.inFlight = false
end

local yzbg = qr.visit(beeo.Name)

if not yzbg then
wsjs(_d("Mw8AQVUEGBUVQVpHRwIfE0FBUQYICUdME0YCGAIeCF1TRwUeRxVEW0cBGQkUR1EUQg"), true)

return
end

task.wait(0.9)

local pbtq = nil
local lbv = xftw(jxv.OnClientEvent, function(hat)
if type(hat) == _d("BAYDX1E") then
pbtq = hat
end
end)

for sknr = 1, 3 do
pcall(function()
jxv:FireServer()
end)

for yen = 1, 20 do
if pbtq then
break
end

task.wait(0.3)
end

if pbtq then
break
end

task.wait(1.5)
end

lbv:Disconnect()
qr.returnTo(yzbg)

if type(pbtq) ~= _d("BAYDX1E") then
wsjs(_d("JA8EE1AODRwIBhNQDghQCQ5HFAYCAxAEQRRKTAICFUFNDgIXRwhdFBMbH0cMWloSGBUUTw"), true)

return
end

local eft = {}

for tnac, dhpx in ipairs(pbtq) do
local ovw = tonumber(dhpx.borderLevel)
local yobx = dhpx.cardId or dhpx.id

if ovw and (not hd or hd[ovw])
and (ysm or not cjgg.misc.cards.isProtected(yobx, ovw)) then
table.insert(eft, dhpx)
end
end

if #eft == 0 then

cjgg.misc.cards.closeFrame(ysm)
wsjs(_d("PggVW10JC1ATDhNHAgIURwdcRkc") .. cjgg.misc.cards.rarityText(xc) .. _d("Xg"))

return
end

if tdt then

local ie = {}

for xtqr, ihk in ipairs(eft) do
if (tonumber(ihk.count) or 0) >= tdt then
table.insert(ie, ihk)
end
end

if #ie == 0 then
cjgg.misc.cards.closeFrame(ysm)
wsjs(_d("PghB") .. cjgg.misc.cards.rarityText(xc) .. _d("UBUORBQPDQNH") .. tdt .. _d("UAQOQ10CH1AeBEca"))

return
end

eft = ie

table.sort(eft, function(oq, clg)
return (tonumber(oq.count) or 0) < (tonumber(clg.count) or 0)
end)

local lkh, gyfv = {}, 0

for recr, xqw in ipairs(eft) do
local gpz = tonumber(xqw.count) or 0

if #lkh > 0 and gyfv + gpz > tdt then
break
end

table.insert(lkh, xqw)
gyfv = gyfv + gpz
end

eft = lkh
vovh = gyfv
end

local dbu = 0

cjgg.misc.cards.closeFrame(ysm)

if ysm then
if not hd then

pcall(function()
twop:FireServer(_d("EQsN"), nil)
end)

dbu = #eft
else
local ijzr = {}

for vovq, sla in ipairs(eft) do
table.insert(ijzr, { sla.cardId, tonumber(sla.borderLevel) })
end

pcall(function()
twop:FireServer(_d("AwINVlcTCRQ4AF9Y"), ijzr)
end)

dbu = #ijzr
end
else
local plfc = {}

for gycl, npmi in ipairs(eft) do
if #plfc >= 25 then
break
end

table.insert(plfc, { npmi.cardId, tonumber(npmi.borderLevel), _d("EQsN") })
end

pcall(function()
twop:FireServer(plfc)
end)

dbu = #plfc
end

wsjs(_d("IwIPRxQ") .. tostring(dbu) .. _d("UBUORA") .. (dbu == 1 and _d("") or _d("Aw"))
.. _d("UE8") .. cjgg.misc.cards.rarityText(xc) .. _d("WQ")
.. (vovh and (_d("XEc") .. tostring(vovh) .. _d("UAQAQVAU")) or _d("")))
end)

return true
end

function cjgg.misc.cards.closeFrame(ikbh)
pcall(function()
local law = ikbh and { _d("NhISVnMSBQ"), _d("NhISVnIVDR0C") } or { _d("NAICXFoUGAISAkdzEgU"), _d("NAICXFoUGAISAkdyFQ0dAg") }
local cmki = require(ug.ModuleScripts.MenuManager)
local tji = bvm:FindFirstChild(law[1])
local ln = tji and tji:FindFirstChild(law[2])

if ln then
cmki.close(ln)
end

if not ikbh then
local kizp = tji and tji:FindFirstChild(_d("NAICXFoUGAISAkdmBhgVFCdBVQoJ"))

if kizp then
cmki.close(kizp)
else
kizp = bvm:FindFirstChild(_d("NAICXFoUGAISAkdmBhgVFCdBVQoJ"))

if kizp then
cmki.close(kizp)
end
end
end
end)
end

function cjgg.misc.cards.refresh(xuik)

local qbi = xuik and cjgg.misc.mergeParagraph or cjgg.misc.deconParagraph

if not qbi then
return
end

pcall(function()
qbi:UpdateBody(xuik
and cjgg.misc.cards.mergeText()
or cjgg.misc.cards.deconText())
end)
end

function cjgg.misc.cards.mergeText()
local uohu = cjgg.misc.cards

return _d("IgYTWkAOCQNdQQ") .. uohu.rarityText(_d("HQITVFEwDR4TBFc")) .. _d("eg") .. uohu.mergeDone
end

function cjgg.misc.cards.deconText()
local hdft = cjgg.misc.cards

return _d("IgYTWkAOCQNdQQ") .. hdft.rarityText(_d("FAICXFowDR4TBFc")) .. _d("eg") .. hdft.deconDone
.. _d("ejAEUkAPCQJLQVFbFB9cRxNSXQNAUBAOQVgDTBIIEkAYRwoZFAlaWgBAUC8AX1gIGxUCDxNVCQhQAhdWWhNMEwYTV0dHDQICQV1REQkCRxJWWhNC")
end

cjgg.misc.skill = {
on = false,
at = 0,
mainWanted = {},
raidWanted = {},

mainOrder = {},
raidOrder = {},
last = _d("PggVW10JC1AFDkZTDxhQHgRH"),
shown = _d(""),
}

function cjgg.misc.skill.branchMap(yc)
local bd = {}

for vwoc, syql in ipairs(iq.Trees[yc].branches) do
bd[syql.name] = syql
end

return bd
end

function cjgg.misc.skill.branchLabels(zjas)
local hbb = {}

for iioj, jne in ipairs(iq.Trees[zjas].branches) do
table.insert(hbb, jne.name)
end

return hbb
end

function cjgg.misc.skill.wantedFrom(mfe, sss)
local vv = {}
local dom = cjgg.misc.skill.branchMap(sss)

if type(mfe) == _d("BAYDX1E") then
for wztv, qi in pairs(mfe) do
if qi and dom[tostring(wztv)] then
vv[dom[tostring(wztv)].id] = true
end
end
end

return vv
end

function cjgg.misc.skill.ordered(xvg, huq)
local iycm = {}
local mnb = {}

for qer, idkr in ipairs(huq or {}) do
if xvg[idkr] then
table.insert(iycm, idkr)
mnb[idkr] = true
end
end

for iqee in pairs(xvg) do
if not mnb[iqee] then
table.insert(iycm, iqee)
end
end

return iycm
end

function cjgg.misc.skill.branchById(mt)
local qdw = {}

for sedf, cprr in ipairs(iq.Trees[mt].branches) do
qdw[cprr.id] = cprr
end

return qdw
end

function cjgg.misc.skill.upgrade()
local yrba = cjgg.misc.skill
local aka = cjgg.misc.util
local kfqe = aka.currentProfile and aka.currentProfile()

if type(kfqe) ~= _d("BAYDX1E") then
return false, _d("PghBQ0YIChkLBBNNAhhe")
end

local oke = kfqe.skillTrees or {}
local poz = { [1] = yrba.mainOrder, [2] = yrba.raidOrder }
local ufe = nil

for gsv, ftnd in ipairs(iq.Trees) do
local duji = oke[ftnd.id]
local zjkl = tonumber(kfqe[ftnd.pointsField or _d("AwwIX1g3AxkJFUA")]) or 0
local gwwp = cjgg.misc.skill.branchById(gsv)

if type(duji) == _d("BAYDX1E") and zjkl > 0 then
for ofyt, riq in ipairs(poz[gsv] or {}) do
local rmk = gwwp[riq]

if rmk and not ufe then
local xvzo = iq.getBranchLevel(oke, ftnd.id, rmk.id) or 0
local ch = xvzo + 1

if ch <= rmk.levels then
local qij = rmk.id .. ch
local ixq = 1

if type(rmk.costs) == _d("BAYDX1E") and tonumber(rmk.costs[ch]) then
ixq = tonumber(rmk.costs[ch])
elseif tonumber(rmk.cost) then
ixq = tonumber(rmk.cost)
end

if ixq <= zjkl and iq.isAvailable(oke, ftnd.id, qij) then
ufe = { tree = ftnd.id, node = qij, name = rmk.name, level = ch }
end
end
end
end
end
end

if not ufe then
return false, _d("PggVW10JC1ATDhNWEhVQHgRHGg")
end

vxjo.BuySkillNode:FireServer(ufe.tree, ufe.node)

if aka.askProfile then
pcall(aka.askProfile)
end

yrba.last = _d("MggUVFwTTA") .. ufe.name .. _d("UA") .. tostring(ufe.level)

return true
end

function cjgg.misc.skill.text()
local vef = cjgg.misc.skill
local hqmk = cjgg.misc.util
local euk = hqmk.currentProfile and hqmk.currentProfile()

if type(euk) ~= _d("BAYDX1E") then
return _d("IAgIXUAUVlBYaw") .. vef.last
end

local dznw = euk.skillTrees or {}
local bffx = {}

local ribf = { [1] = vef.mainOrder, [2] = vef.raidOrder }

for ovg, mqnb in ipairs(iq.Trees) do
local klf = tonumber(euk[mqnb.pointsField or _d("AwwIX1g3AxkJFUA")]) or 0
local az = {}
local yux = cjgg.misc.skill.branchById(ovg)

for fg, oda in ipairs(ribf[ovg] or {}) do
local zce = yux[oda]

if zce then
local gmrn = iq.getBranchLevel(dznw, mqnb.id, zce.id) or 0
table.insert(az, zce.name .. _d("UA") .. tostring(gmrn) .. _d("Xw") .. tostring(zce.levels))
end
end

bffx[#bffx + 1] = mqnb.name .. _d("Skc") .. tostring(klf) .. _d("UBcVQA")
.. (#az > 0 and (_d("UEpB") .. table.concat(az, _d("XEc"))) or _d("UEpBXVsTBBkJBhNEDg8bAgU"))
end

bffx[#bffx + 1] = vef.last

return table.concat(bffx, _d("eg"))
end

cjgg.misc.mergeSection = cjgg.misc.tab:Section({
Side = _d("PAIHRw"),
})

cjgg.misc.mergeSection:Header({
Name = _d("PQITVFFHnO/AzQ"),
})

cjgg.misc.mergeToggle = cjgg.misc.mergeSection:Toggle({
Name = _d("MRIVXBQKCQIABA"),
Default = false,
Callback = function(eqe)
local fcl = cjgg.misc.cards

fcl.mergeOn = eqe

fcl.mergeAt = (eqe and bqg.loading) and (os.clock() + fcl.interval) or 0
end,
}, _d("ERIVXGsKCQIABA"))

cjgg.misc.mergeDropdown = cjgg.misc.mergeSection:Dropdown({
Name = _d("IgYTWkAOCQM"),
Search = false,
Multi = true,
Required = false,
Default = { _d("MQsN") },
Options = cjgg.misc.cards.rarityLabels,
Callback = function(mti)
local hsuk = {}

if type(mti) == _d("BAYDX1E") then
for lk, sibx in pairs(mti) do
if sibx then
if lk == _d("MQsN") then
hsuk[0] = true
else
hsuk[cjgg.misc.cards.borderOf[tostring(lk)]] = true
end
end
end
end

cjgg.misc.cards.mergeWanted = hsuk
cjgg.misc.cards.refresh(true)
end,
}, _d("AgYTWkAOCQM"))

cjgg.misc.mergeSection:Button({
Name = _d("PQITVFFHAh8Q"),
Callback = function()
local iec, gmsg = cjgg.misc.cards.run(true)

if not iec then
cng:Notify({
Title = _d("PQITVFE"),
Description = gmsg,
Lifetime = 6,
})
end
end,
})

cjgg.misc.mergeSection:Button({
Name = _d("PQITVFFHVUA"),
Callback = function()

local wxod, nrhb = cjgg.misc.cards.run(true, 90)

if not wxod then
cng:Notify({
Title = _d("PQITVFFHVUA"),
Description = nrhb,
Lifetime = 6,
})
end
end,
})

cjgg.misc.mergeParagraph = cjgg.misc.mergeSection:Paragraph({
Header = _d("IxMAR0EU"),
Body = cjgg.misc.cards.mergeText(),
})

cjgg.misc.accSection = cjgg.misc.tab:Section({
Side = _d("Ig4GW0A"),
})

cjgg.misc.accSection:Header({
Name = _d("MQQCVkcUAwIOBEAUl/Pi6Q"),
})

cjgg.misc.accToggle = cjgg.misc.accSection:Toggle({
Name = _d("MRIVXBQFCQMTQVJXBAkDFA5BTQ"),
Default = false,
Callback = function(csom)
cjgg.misc.util.accOn = csom
cjgg.misc.util.accAt = 0
end,
}, _d("ERIVXGsFCQMTPlJXBAkDFA5BTQ"))

cjgg.misc.accBuyToggle = cjgg.misc.accSection:Toggle({
Name = _d("MRIVXBQFGQlHA1ZHEw"),
Default = false,
Callback = function(fiyv)
cjgg.misc.util.accBuyOn = fiyv
cjgg.misc.util.accBuyAt = 0
cjgg.misc.util.accAt = 0
end,
}, _d("ERIVXGsFGQk4A1ZHEw"))

cjgg.misc.accSection:Button({
Name = _d("MhIYE1YCHwQ"),
Callback = function()
local hos, qbg = cjgg.misc.util.buyBest()

if not hos then
cng:Notify({
Title = _d("MQQCVkcUAwIOBEA"),
Description = qbg,
Lifetime = 6,
})
end
end,
})

cjgg.misc.accSection:Button({
Name = _d("NRYUWkRHDhUUFQ"),
Callback = function()
if not cjgg.misc.util.equipBest() then
cng:Notify({
Title = _d("MQQCVkcUAwIOBEA"),
Description = _d("PggVW10JC1AFBEdAAh5QDhITWxACFQNBSlETQg"),
Lifetime = 5,
})
end
end,
})

cjgg.misc.accParagraph = cjgg.misc.accSection:Paragraph({
Header = _d("IxMAR0EU"),
Body = cjgg.misc.util.accText(),
})

cjgg.misc.claimInfo = cjgg.misc.tab:Section({
Side = _d("Ig4GW0A"),
})

cjgg.misc.claimInfo:Header({
Name = _d("PQ4SUFELABEJBFxBFA"),
})

cjgg.misc.indexParagraph = cjgg.misc.claimInfo:Paragraph({
Header = _d("MwYTVxQuAhQCGQ"),
Body = cjgg.misc.util.indexText(),
})

cjgg.misc.achParagraph = cjgg.misc.claimInfo:Paragraph({
Header = _d("MQQJWlERCR0CD0dH"),
Body = cjgg.misc.util.achText(),
})

cjgg.misc.questParagraph = cjgg.misc.claimInfo:Paragraph({
Header = _d("IRIEQEAU"),
Body = cjgg.misc.util.questText(),
})

cjgg.misc.packParagraph = cjgg.misc.claimInfo:Paragraph({
Header = _d("IAYCWEc"),
Body = cjgg.misc.util.packText(),
})

cjgg.misc.skillSection = cjgg.misc.tab:Section({
Side = _d("Ig4GW0A"),
})

cjgg.misc.skillSection:Header({
Name = _d("IwwIX1hHOAICBBPE+ODD"),
})

cjgg.misc.skillToggle = cjgg.misc.skillSection:Toggle({
Name = _d("MRIVXBQSHBcVAFdR"),
Default = false,
Callback = function(xph)
local ty = cjgg.misc.skill

if xph and not (next(ty.mainWanted) or next(ty.raidWanted)) then
ty.on = false

pcall(function()
cjgg.misc.skillToggle:UpdateState(false)
end)

cng:Dialog({
Title = _d("IA4CWBQGTBIVAF1XD0wWDhNAQA"),
Description = _d("Mw8OXEcCTBETQV9RBh8ERw5dUUcOAgYPUFxHBR5HFVtRRyERDg8TQBUJFUcOQRQ1DRkDQUdGAglQAxNcRAMDBwlBHhQ")
.. _d("MRIVXBQSHBcVAFdRRwMeCxgTRxcJHgMSE0QIBR4TEhNDDwkCAkFKWxJMAAgIXUBHBQRJ"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})

return
end

ty.on = xph
ty.at = 0
end,
}, _d("ERIVXGsSHBcVAFdR"))

cjgg.misc.skillMainDropdown = cjgg.misc.skillSection:Dropdown({
Name = _d("PQYIXRQTHhUC"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = cjgg.misc.skill.branchLabels(1),
Callback = function(rozx)
local clt = cjgg.misc.skill
local cxjp = clt.wantedFrom(rozx, 1)

clt.mainWanted = cxjp
clt.mainOrder = clt.ordered(cxjp, clt.mainOrder)
clt.shown = _d("")
end,
}, _d("HQYIXWsTHhUC"))

cjgg.misc.skillRaidDropdown = cjgg.misc.skillSection:Dropdown({
Name = _d("IgYIVxQTHhUC"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = cjgg.misc.skill.branchLabels(2),
Callback = function(euyt)
local rab = cjgg.misc.skill
local pdi = rab.wantedFrom(euyt, 2)

rab.raidWanted = pdi
rab.raidOrder = rab.ordered(pdi, rab.raidOrder)
rab.shown = _d("")
end,
}, _d("AgYIV2sTHhUC"))

pcall(function()
cjgg.misc.skillMainDropdown:UpdateSelection({})
end)

pcall(function()
cjgg.misc.skillRaidDropdown:UpdateSelection({})
end)

cjgg.misc.skillParagraph = cjgg.misc.skillSection:Paragraph({
Header = _d("IxMAR0EU"),
Body = cjgg.misc.skill.text(),
})

task.spawn(function()
local pnb = cjgg.misc.util

while lrm() do
if pnb.indexOn or pnb.achOn or pnb.questOn or pnb.accOn or pnb.accBuyOn then
pnb.currentProfile()
end

if pnb.indexOn then
pnb.claimIndex()
end

if pnb.achOn then
pnb.claimAchievement()
end

if pnb.questOn then

if os.clock() - pnb.questAskedAt > 20 or os.clock() - pnb.weeklyAskedAt > 20 then
pnb.askQuests()
end

pnb.claimQuest()
end

if pnb.accOn and os.clock() >= pnb.accAt then
pnb.accAt = os.clock() + 3
pnb.equipBest()
end

local ffcg = cjgg.misc.cards

if not ffcg.inFlight then
if ffcg.mergeOn and os.clock() >= ffcg.mergeAt then
ffcg.run(true, nil, true)
elseif ffcg.deconOn and os.clock() >= ffcg.deconAt then
ffcg.run(false, nil, true)
end
end

if ffcg.mergeDone ~= ffcg.mergeShown then
ffcg.mergeShown = ffcg.mergeDone

pcall(function()
cjgg.misc.mergeParagraph:UpdateBody(cjgg.misc.cards.mergeText())
end)
end

if ffcg.deconDone ~= ffcg.deconShown then
ffcg.deconShown = ffcg.deconDone

pcall(function()
cjgg.misc.deconParagraph:UpdateBody(cjgg.misc.cards.deconText())
end)
end

local hupm = cjgg.misc.skill

if hupm.on and os.clock() >= hupm.at then

hupm.at = os.clock() + 2
hupm.upgrade()
end

local so = cjgg.misc.skill.text()

if hupm.shown ~= so then
hupm.shown = so

pcall(function()
cjgg.misc.skillParagraph:UpdateBody(so)
end)
end

if pnb.accBuyOn and os.clock() >= pnb.accBuyAt then

local am = pnb.buyBest()

pnb.accBuyAt = os.clock() + (am and 45 or 10)
end

local wgxn = {
{ key = _d("GQkFVkw"), paragraph = cjgg.misc.indexParagraph, value = pnb.indexText() },
{ key = _d("EQQJ"), paragraph = cjgg.misc.achParagraph, value = pnb.achText() },
{ key = _d("ARIEQEA"), paragraph = cjgg.misc.questParagraph, value = pnb.questText() },
{ key = _d("AAYCWA"), paragraph = cjgg.misc.packParagraph, value = pnb.packText() },
{ key = _d("EQQC"), paragraph = cjgg.misc.accParagraph, value = pnb.accText() },
}

for fzkw, yjep in ipairs(wgxn) do
if yjep.paragraph and pnb.shown[yjep.key] ~= yjep.value then
pnb.shown[yjep.key] = yjep.value

pcall(function()
yjep.paragraph:UpdateBody(yjep.value)
end)
end
end

task.wait(0.75)
end
end)

local zixh = jthr:Section({
Side = _d("Ig4GW0A"),
})

zixh:Paragraph({
Header = _d("Ng4SW10JCw"),
Body = _d("MRIVXBQhBQMPQVZFEgUAFEFKWxIeUBUOVxhHChEEBEAUEwQVRxZSQAIeUAYPVxQEDQMTEhNbCUwZExITWxACXEcVW1EJTAICBF9HRxsYAg8TRwgBFRMJWloATBIOFVZHSUwkN0FHW0cuER5BQ0ELAANHGFxBRw4RBAoTQAhMBA8EE1YGFVABCEFHE0BQBg9XFBMEFUcVRFtHKBUCEVZHE0wnBhVWRkcfBw4VUFwCH1APDl9QRxgYAkFARAgYUB4ORhQQCQICQUBABgIUDg9UFAgCUBAJVlpHFR8SQVJGCgkURxVbUQpMXUcVW1FHCBUCEVZHE0wCDg9UFAQNAhUIVkdHGBgCQVFdAAsVFBUTWBIPG0cDXFoSH15ta2dcAkwDDw5DFAUZCRRBUloDTBUWFFpEFEwCCAVAFAYCFEcDUl0TTAcOFVsUEwQVRwJSRxMfUB4ORhQPDQYCTxN2EhUZCQYTWgIJFBRBR1wCTBMIFF1AAh5QSkFRWxMEUAQOXlFHCgIIDBNADwlQIQhAXAIeHQYPHT5tLxETAltRFEwbAgRDR0cNUBUUXVoOAhdHFVJYCxVQBRgTXRMJHUcAXVBHHxERBEAUDhhcRxJcFBMEFUcVXEAGAFAEAEFGDgkDRw5FURVMEgIVRFECAlAUBEBHDgMeFE8"),
})

local hhd = jthr:Section({
Side = _d("Ig4GW0A"),
})

hhd:Header({
Name = _d("MwYVUFwCHw"),
})

local kuab

kuab = hhd:Paragraph({
Header = _d("Jw8ARxQeAwVHAlJBAAQE"),
Body = eknh(),
})

local gjq = jthr:Section({
Side = _d("Ig4GW0A"),
})

gjq:Header({
Name = _d("ORQNUloDTAMPDkM"),
})

gjq:Toggle({
Name = _d("MRIVXBQEHhEBFRNGCAg"),
Default = false,
Callback = function(ojfd)
dk.island.autoRod = ojfd
dk.islandAt = 0
end,
}, _d("GRQNUloDMxESFVxrFQMU"))

gjq:Toggle({
Name = _d("MRIVXBQEHhEBFRNVBA8VFBJcRh4"),
Default = false,
Callback = function(mlsz)
dk.island.autoAcc = mlsz
dk.islandAt = 0
end,
}, _d("GRQNUloDMxESFVxrBg8TAhJAWxUV"))

gjq:Toggle({
Name = _d("NRYUWkRHDRMEBEBHCB4J"),
Default = false,
Callback = function(aerc)
dk.island.equipAcc = aerc
dk.islandAt = 0
end,
}, _d("GRQNUloDMxUWFFpEOA0TBARARwgeCQ"))

local tu

tu = gjq:Paragraph({
Header = _d("ORQNUloDTBcCAEE"),
Body = dk.shopIsland.text(),
})

local dtx = jthr:Section({
Side = _d("PAIHRw"),
})

dtx:Header({
Name = _d("IgIDWkYTBA"),
})

dk.rebirthToggle = dtx:Toggle({
Name = _d("MRIVXBQVCRIOE0dc"),
Default = false,
Callback = function(uxfk)
dk.autoRebirth = uxfk
end,
}, _d("ERIVXGsVCRIOE0dc"))

dk.rebirthParagraph = dtx:Paragraph({
Header = _d("IxMAR0EU"),
Body = dk.rebirthText(),
})

dtx:Button({
Name = _d("JDdBR1tHBQMLAF1Q"),
Callback = function()
if not dk.gotoIsland() then
cng:Notify({
Title = _d("MQUAXVAIAhUDQXpHCw0eAw"),
Description = _d("Mw8AQVUEGBUVQVpHRwIfE0FBUQYICUcYVkBHQVATE0oUBgsRDg8TXQlMEUcMXFkCAgRJ"),
Lifetime = 5,
})
end
end,
})

local knbv

knbv = dtx:Toggle({
Name = _d("MRIVXBQuHxwGD1cULw0CAwJcRgI"),
Default = false,
Callback = function(gnj)
fycg.island = gnj
fycg.pending = false
fycg.pendingUntil = 0
fycg.paused = false
fycg.gaveUp = false
fycg.stoodDown = false
fycg.manualPause = false

if not gnj then
return
end

if sw.otherTowerOn(_d("GAYTV1cIHhU")) then
fycg.island = false

pcall(function()
knbv:UpdateState(false)
end)

pcall(function()
cng:Dialog({
Title = _d("MRIVXBQuHxwGD1cULw0CAwJcRgJMHwEH"),
Description = _d("JA8EE3wGABwIFlZRCUwECBZWRkcFA0cAX0YCDRQeQUFBCQIZCQYfFAYCFEcWWkAPTB8JBBNHCwMERxVbUUcLEQoEE1sJAAlHE0ZaFEwfCQQTXQkKGQkIR1FHHh8IDBNVE0wRRxVaWQJCUDMUQVpHGBgGFRNbAQpcRw5BFBMZAglBXFpHLQUTDhNnCwMERxJcFAINEw9BR1sQCQJHBlZAFEwZExITWxACUBQNXEBJ"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})
end)

return
end

if sw.enabled and sw.hardcoreSlot() == nil then
fycg.island = false

pcall(function()
knbv:UpdateState(false)
end)

pcall(function()
cng:Dialog({
Title = _d("MRIVXBQuHxwGD1cULw0CAwJcRgJMHwEH"),
Description = _d("PghBQFgIGFAOEhNHAhhQEw4TVUcYHxAEQRhHDR4DQUdcAkwXBgxWFAgCHB5BQEAGHgQUQVIUEwMHAhMTRhICUAETXFlHDVATDkRRFUwDCw5HGkc/FRNBXFoCTAQIQXpHCw0eA0FbVRUIEwgTVhhHAwJHFUZGCUwxEhVcFDQAHxNBXFIBQg"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})
end)

return
end

if not fycg.data then
fycg.island = false

pcall(function()
knbv:UpdateState(false)
end)

pcall(function()
cng:Dialog({
Title = _d("MRIVXBQuHxwGD1cULw0CAwJcRgJMHwEH"),
Description = _d("JA8IQBQFGRkLBRNcBh9QCQ4TfAYeFAQOQVEzAwcCE3dVEw1cRxJcFBMEFUcVXEMCHlcUQUBABgsVFEFQVQkCHxNBUVFHHhUGBRNVCQhQBkFBQQlMEwYPXVsTTBICQUBABh4EAgUd"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})
end)

return
end

local zapq = fycg.remotes.request

if zapq then
pcall(function()
zapq:FireServer()
end)
end
end,
}, _d("ERIVXGsOHxwGD1drDw0CAwJcRgI"))

fycg.islandToggle = knbv

fycg.islandParagraph = dtx:Paragraph({
Header = _d("MhIHVUc"),
Body = fycg.buffText(),
})

dtx:Button({
Name = _d("IAYUQFFHJQMLAF1QRyQRFQVQWxUJ"),
Callback = function()
if fycg.pauseRun then
fycg.pauseRun()
end
end,
})

dtx:Button({
Name = _d("Nw4XVhQyHFAuEl9VCQhQLwBBUAQDAgI"),
Callback = function()
if fycg.giveUpRun then
fycg.giveUpRun()
end
end,
})

local jvv = jthr:Section({
Side = _d("PAIHRw"),
})

jvv:Header({
Name = _d("Ng4SW10JC1AUCVxE"),
})

jvv:Toggle({
Name = _d("MRIVXBQFGQlHA1ZHE0wCCAU"),
Default = false,
Callback = function(cctg)
dk.shop.autoBuyRod = cctg
dk.shopAt = 0
end,
}, _d("ERIVXGsFGQk4A1ZHEzMCCAU"))

jvv:Toggle({
Name = _d("MRIVXBQFGQlHA1ZHE0wSBghH"),
Default = false,
Callback = function(xrdt)
dk.shop.autoBuyBait = xrdt
dk.shopAt = 0
end,
}, _d("ERIVXGsFGQk4A1ZHEzMSBghH"))

jvv:Toggle({
Name = _d("NRYUWkRHDhUUFRNGCAg"),
Default = false,
Callback = function(prd)
dk.shop.equipRod = prd
dk.shopAt = 0
end,
}, _d("FRYUWkQ4DhUUFWxGCAg"))

jvv:Toggle({
Name = _d("NRYUWkRHDhUUFRNWBgUE"),
Default = false,
Callback = function(zkp)
dk.shop.equipBait = zkp
dk.shopAt = 0
end,
}, _d("FRYUWkQ4DhUUFWxWBgUE"))

local mfy

mfy = jvv:Paragraph({
Header = _d("MgISRxQeAwVHAlJaRwkBEghD"),
Body = cn(),
})
task.spawn(function()
local hibp = gk()
local jsxf = eknh()
local nhk = cn()
local xeqx = dk.shopIsland.text()

while lrm() do
local tdlt = gk()

if tdlt ~= hibp then
hibp = tdlt
pcall(function()
wke:UpdateBody(tdlt)
end)
end

local rpw = eknh()

if rpw ~= jsxf then
jsxf = rpw
pcall(function()
kuab:UpdateBody(rpw)
end)
end

local sle = cn()

if sle ~= nhk then
nhk = sle
pcall(function()
mfy:UpdateBody(sle)
end)
end

local ly = dk.shopIsland.text()

if ly ~= xeqx then
xeqx = ly
pcall(function()
tu:UpdateBody(ly)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while lrm() do

if hifm() and os.clock() >= (dk.shopAt or 0)
and os.clock() >= (dk.islandTripUntil or 0) then
dk.shopAt = os.clock() + 1
pcall(nfi)
end

if dk.shopIsland.active() and os.clock() >= (dk.islandAt or 0)
and os.clock() >= math.max(dk.shopHoldUntil or 0, dk.tpHoldUntil or 0) then
dk.islandAt = os.clock() + 2
pcall(dk.shopIsland.run)
end

task.wait(1)
end
end)

jclu:Select()

local lm = jclu:Section({
Side = _d("PAIHRw"),
})

local hef = jclu:Section({
Side = _d("Ig4GW0A"),
})

local ndej = lm:Paragraph({
Header = _d("IxMAR0EU"),
Body = fy(),
})

lm:Divider()

xup.npcToggle = lm:Toggle({
Name = _d("MRIVXBQpPDM"),
Default = false,
Callback = function(tt)

if tt and not xup.story and #bhdg() == 0 then
pcall(function()
xup.npcToggle:UpdateState(false)
end)

cng:Dialog({
Title = _d("MRIVXBQpPDNHD1ZRAx9QBkFHVRULFRM"),
Description = _d("IA4CWBQGGFALBFJHE0wfCQQTejcvUAETXFlHGBgCQURbFQAUFEFRUQsDB0tBXEZHGAUVDxNbCUwxEhVcFCQDHRcNVkACTCMTDkFNSUwkDwRBUUcFA0cPXEAPBR4AQUdbRwoZAAlHFB4JBEk"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})

return
end

xup.enabled = tt
end,
}, _d("ERIVXGsJHBM"))

lm:Toggle({
Name = _d("JwYNWBQTA1ApMXA"),
Default = false,
Callback = function(jrj)
xup.walkToNpc = jrj
end,
}, _d("BwYNWGsTAy8JEVA"))

lm:Dropdown({
Name = _d("NA4HVV0EGRwTGA"),
Search = false,
Multi = true,
Required = false,
Default = { _d("PggTXlUL") },
Options = qaro,
Callback = function(gyp)
local ete = {}

if type(gyp) == _d("BAYDX1E") then
for znxi, jrn in ipairs(qaro) do
if gyp[jrn] then
table.insert(ete, rln[jrn])
end
end
end

if #ete == 0 then
ete = { _d("HggTXlUL") }
end

xup.difficulties = ete
end,
}, _d("FA4HVV0EGRwTGA"))

lm:Toggle({
Name = _d("MRIVXBQ1Ax8KEg"),
Default = false,
Callback = function(ihj)
lh.enabled = ihj
lh.inBattle = false
lh.pending = false
end,
}, _d("ERIVXGsVAx8KEg"))

local ljfr = jclu:Section({
Side = _d("PAIHRw"),
})

ljfr:Header({
Name = _d("IwsORw"),
})

ljfr:Paragraph({
Header = _d("OAgWE0APCVAUDVxAFEwHCBNY"),
Body = _d("IwsORxRWTF1HKF1SDgIZExgTYAgbFRVBG1oIHh0GDRNbFUw+DgZbQAoNAgJIE1sVTDgGDV9bEAkVCUFnWxAJAktBQ1gSH1ApMXAUBQ0EEw1WR0cbGAIPE0cLAwRHUxNdFEwSEhJKGm1mIwsORxRVTF1HL2N3FEBQFQBaUBRAUBUOXFkUQFAuEl9VCQhQLwBBUAQDAgJPOT4lAwQPQUBYCBgDRw5dFCk8M0cDUkATABUUWxNAEANQKTFwFAEJERMUQVEUTBETQVxaBAlcRwBdUEcNUBUAWlBHDh8UEhNRBg8YSWs5YBADUBMORFEVTAISD0AUDh9QEwlWFAgCHB5BQVEBGQMCBRNEBgUCR0wTfRQAEQkFE3wGHhQEDkFRRwMeRwNcQA9MAwsOR0dHBQNHDl1RRx4FCUFSRwwJFEcHXEZHGAcOAlYabWYjCw5HR0cDFgFbE1sJCVAUDVxAS0wECBZWRhRMBAYKVhQTGQIJEh0"),
})

sw.toggle = ljfr:Toggle({
Name = _d("MRIVXBQ0AB8T"),
Default = false,
Callback = function(evxd)
if evxd and sw.role[1] == sw.role[2] and sw.role[1] ~= _d("HhcC") then
sw.enabled = false

pcall(function()
sw.toggle:UpdateState(false)
end)

cng:Dialog({
Title = _d("MRIVXBQ0AB8T"),
Description = _d("IwsORxRWTBEJBRNnCwMER1MTVRUJUAUOR1xH") .. sw.roleLabel(1) .. _d("Xkc1W1UTTBkUQVxaAkwCEg8TVRQHFQNBVVsVTAQQCFBRS0wDCEFcWgJMHwFBR1wCTAQQDhNHCwMEFEFbVRRMBAhBUVFHHx8KBEdcDgIXRwRfRwJC"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})

return
end

sw.enabled = evxd

if evxd then
sw.hasSlot2 = sw.detectSlot2()

if sw.hasSlot2 == false then
cng:Dialog({
Title = _d("MRIVXBQ0AB8T"),
Description = _d("IwsORxRVTBwIDlhHRwAfBApWUEdBUA4VE1oCCRQUQUdcAkw0EgBfFCUNBBMNVhQ0AB8TQVRVCgkABhJAGEcDAkcoXVIOAhkTBBNmCAMdR1MGBEcPHAIAQVEDQFAFBFVbFQlQEwlWFBQJEwgPVxQUAB8TQVBVCUwSBhVHWAJCUDUORkAOAhdHEkdVHh9QCA8TRwsDBEdQE0EJGBkLQUdcAgJe"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})
end
end
end,
}, _d("ERIVXGsUAB8T"))

function sw.applyRoles()
if not sw.enabled then
return
end

if sw.role[1] == sw.role[2] and sw.role[1] ~= _d("HhcC") then
sw.enabled = false

pcall(function()
sw.toggle:UpdateState(false)
end)

pcall(function()
cng:Dialog({
Title = _d("MRIVXBQ0AB8TQVxSAQ"),
Description = _d("IwsORxRWTBEJBRNnCwMER1MTVRUJUAUOR1xH") .. sw.roleLabel(1) .. _d("Xkc1W1UTTBkUQVxaAkwCEg8TVRQHFQNBVVsVTAQQCFBRS0wRCQUTXRNMEwYPXVsTTAQGClYUExsfRxJfWxMfXkcyVkBHAx4CQUBYCBhQEw4TRwgBFRMJWloATBULElYa"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})
end)

return
end

local boow = {}

if sw.towerSlot() ~= 1 and jvm.enabled then
jvm.enabled = false
table.insert(boow, _d("MRIVXBQzAwcCEw"))

pcall(function()
jvm.ui:UpdateState(false)
end)
end

if sw.hardcoreSlot() == nil and fycg.island then
fycg.island = false
table.insert(boow, _d("MRIVXBQuHxwGD1cULw0CAwJcRgI"))

pcall(function()
fycg.islandToggle:UpdateState(false)
end)
end

if sw.halloweenSlot() == nil and unsr.run.enabled then
unsr.run.enabled = false
table.insert(boow, _d("MRIVXBQvDRwLDkRRAgJQMw5EURU"))

pcall(function()
unsr.toggle:UpdateState(false)
end)
end

if #boow > 0 then
pcall(function()
cng:Dialog({
Title = table.concat(boow, _d("UAYPVxQ")) .. _d("UAgHVQ"),
Description = _d("PghBQFgIGFAOEhNHAhhQEw4TQA8NBEcVXEMCHlAGD0oUCgMCAk0TRwhMGRNBW1UDTB4IFltRFQlQEw4TRhICXkcmWkICTBkTQVIUFAAfE0FSUwYFHktBXEZHGAUVDxN1EhgfRzJfWxNMHwEHHQ"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})
end)
end
end

sw.oneDropdown = ljfr:Dropdown({
Name = _d("IwsORxRW"),
Search = false,
Multi = false,
Required = false,

Default = 1,
Options = sw.optionsFor[1],
Callback = function(zjou)
local pug = type(zjou) == _d("BAYDX1E") and zjou[1] or zjou

if type(pug) == _d("AxMTWloA") and sw.roleIds[pug] then
sw.role[1] = sw.roleIds[pug]
sw.picked[1] = pug
end

pcall(function()
sw.oneDropdown:UpdateName(_d("IwsORxRWTJLnwxM") .. sw.roleLabel(1))
end)

if sw.applyRoles then
sw.applyRoles()
end
end,
}, _d("AwsOR2tWM0I"))

sw.twoDropdown = ljfr:Dropdown({
Name = _d("IwsORxRV"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = sw.optionsFor[2],
Callback = function(yiyu)
local dds = type(yiyu) == _d("BAYDX1E") and yiyu[1] or yiyu

if type(dds) == _d("AxMTWloA") and sw.roleIds[dds] then
sw.role[2] = sw.roleIds[dds]
sw.picked[2] = dds
end

pcall(function()
sw.twoDropdown:UpdateName(_d("IwsORxRVTJLnwxM") .. sw.roleLabel(2))
end)

if sw.applyRoles then
sw.applyRoles()
end
end,
}, _d("AwsOR2tVM0I"))

pcall(function()
sw.oneDropdown:UpdateSelection(_d("JAgWVkY"))
end)

pcall(function()
sw.twoDropdown:UpdateSelection(_d("PjciE1YGGAQLBEA"))
end)

getgenv().ACBXSlot = sw

local cjm = jclu:Section({
Side = _d("PAIHRw"),
})

cjm:Header({
Name = _d("IgYIVxQFAwMU"),
})

cjm:Toggle({
Name = _d("MRIVXBQ1DRkDQXFbFB8"),
Default = false,
Callback = function(ywx)
cjgg.enabled = ywx
cjgg.pending = {}
cjgg.pendingUntil = {}

if ywx then
cjgg.cleared = {}
end
end,
}, _d("ERIVXGsVDRkDPlFbFB8"))

cjm:Toggle({
Name = _d("MRIVXBQwDRwMQUdbRz4RDgUTdggfAw"),
Default = false,
Callback = function(zeb)
cjgg.walkToBoss = zeb
end,
}, _d("ERIVXGsQDRwMPkdbOB4RDgVsVggfAw"))

local fpwu
fpwu = cjm:Slider({
Name = _d("JwYNWBQ0HBUCBQ"),
Minimum = 0,
Maximum = 72,
Default = 18,
Precision = 0,
Callback = function(hkav)
local nzmg = math.floor(hkav + 0.5)
cjgg.walkSpeed = nzmg

if fpwu and nzmg ~= hkav then
fpwu:UpdateValue(nzmg)
end
end,
}, _d("BwYNWGsUHBUCBQ"))

cjm:Dropdown({
Name = _d("IgYIVxQjBRYBCFBBCxgJ"),
Search = false,
Multi = true,
Required = false,
Default = { _d("PggTXlUL") },
Options = dst,
Callback = function(itwp)
local hyak = {}

if type(itwp) == _d("BAYDX1E") then
for cwq, crw in ipairs(dst) do
if itwp[crw] then
table.insert(hyak, znhx[crw])
end
end
end

if #hyak == 0 then
hyak = { _d("HggTXlUL") }
end

cjgg.difficulties = hyak
end,
}, _d("AgYIV2sDBRYBCFBBCxgJ"))

function cjgg.pickedIds(vs)
local ewq = {}

if type(vs) == _d("BAYDX1E") then
for iaby, zcip in ipairs(ua) do
if vs[zcip] and jnz[zcip] then
table.insert(ewq, jnz[zcip])
end
end
elseif type(vs) == _d("AxMTWloA") and jnz[vs] then
ewq = { jnz[vs] }
end

return ewq
end

cjm:Dropdown({
Name = _d("IgYIVxQlAwMU"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = ua,
Callback = function(zbgq)
cjgg.picks[1] = cjgg.pickedIds(zbgq)
cjgg.cursor[1] = 1
cjgg.losses[1] = {}
end,
}, _d("AgYIV2sFAwMU"))

cjgg.boss2Dropdown = cjm:Dropdown({
Name = _d("IgYIVxQlAwMUQRtnCwMER1Ma"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = ua,
Callback = function(goz)
cjgg.picks[2] = cjgg.pickedIds(goz)
cjgg.cursor[2] = 1
cjgg.losses[2] = {}
end,
}, _d("AgYIV2sFAwMUPkBYCBgvVQ"))

pcall(function()
cjgg.boss2Dropdown:SetVisibility(false)
end)

task.spawn(function()
local fgf = nil

while lrm() do
local vznt = sw.splitNpc()

if vznt ~= fgf then
fgf = vznt

local trbl = cjgg.boss2Dropdown

if trbl then
pcall(function()
trbl:SetVisibility(vznt)
end)
end
end

task.wait(0.5)
end
end)

hef:Paragraph({
Header = _d("MRIVXBQhBRcPFQ"),
Body = _d("IwINVlcTTB8JBBNbFUwdCBNWFCk8MxRBVUYIAVATCVYUEAMCCwVAFAUJHAgWHQ"),
})

for alj, lzal in ipairs(ruk) do
hef:Dropdown({
Name = lzal.name,
Search = true,
Multi = true,
Required = false,
Default = {},
Options = lzal.options,
Callback = function(wlf)
local ajm = {}

if type(wlf) == _d("BAYDX1E") then
if wlf.All then
for ryi, szsg in ipairs(lzal.ids) do
table.insert(ajm, szsg)
end
else
for lri, dgkt in ipairs(lzal.options) do
if wlf[dgkt] and lzal.byName[dgkt] then
table.insert(ajm, lzal.byName[dgkt])
end
end
end
elseif type(wlf) == _d("AxMTWloA") then
if wlf == _d("MQsN") then
for nln, pdmz in ipairs(lzal.ids) do
table.insert(ajm, pdmz)
end
else
ajm = { lzal.byName[wlf] }
end
end

xup.selectedByWorld[lzal.name] = ajm
end,
}, _d("HhcCbA") .. lzal.id)
end

hef:Toggle({
Name = _d("MRIVXBQkAx0XDVZAAkwjEw5BTQ"),
Default = false,
Callback = function(qwo)
xup.story = qwo
xup.battlePending = false
xup.battlePendingUntil = 0
end,
}, _d("ERIVXGsEAx0XDVZAAjMDEw5BTQ"))

xup.storyDropdown = hef:Dropdown({
Name = _d("NA4HVV0EGRwTCFZH"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = qaro,
Callback = function(tlr)
local hycr = type(tlr) == _d("BAYDX1E") and tlr[1] or tlr

if type(hycr) == _d("AxMTWloA") and rln[hycr] then
xup.storyDifficulty = rln[hycr]
end
end,
}, _d("FA4HVV0EGRwTCFZH"))

pcall(function()
xup.storyDropdown:UpdateSelection(qaro[1])
end)

pcall(function()
xup.storyDropdown:UpdateName(_d("NA4HVV0EGRwTCFZHR47wxUE") .. qaro[1])
end)

hef:Paragraph({
Header = _d("OAgWE3USGB9HIlxZFwAVEwQTZxMDAh5BRFsVBwM"),
Body = _d("Ng4GW0AUTBURBEFNRx8ECBNKFCk8M0dME3oGARUMQUdcFQMFAAkTfRQJGwYIExlHAx5HFVtRRwMeAkFXXQEKGQQUX0AeTBEFDkVRS0wHCBNYXQkLUBMJVhQGHhUGEhNdCUwfFQVWRkcNHgNBUFsKBR4AQVFVBAdQFQ5GWgNMERRBUFsIABQIFl1HRw8cAgBBGm1mORNBQVEXABEEBEAUEwQVRwBBUQZMFBUOQ1AIGx4UQURcDgAVRwhHFA4fUAgPHxQGAhRHDVZVEQkDRxNSXQNMEggSQFEUTBELDl1RSQ"),
})

local qjlw = pls:Section({
Side = _d("PAIHRw"),
})

qjlw:Header({
Name = _d("JAgWVkY"),
})

local ggku
local lqmk

local tkfn = {
remotes = {},
watcher = false,
hidMenu = false,

hardWatch = {},
}

pcall(function()
local adgp = getgenv().ACBXHardWatch

if type(adgp) == _d("BAYDX1E") then
for ele, fzwi in pairs(adgp) do
pcall(function()
if fzwi.Connected then
fzwi:Disconnect()
end
end)
end
end

getgenv().ACBXHardWatch = tkfn.hardWatch
end)

function tkfn.hardPick(pvoj)
pvoj = pvoj == true

for pupk, rcmc in ipairs({ _d("MgYVR1gCKwUO"), _d("MgYVR1gCKwUOUw") }) do
local oisk = bvm:FindFirstChild(rcmc)

if oisk then
if oisk:GetAttribute(_d("JAgWVkYvDQIDMVpXDA")) ~= pvoj then
pcall(function()
oisk:SetAttribute(_d("JAgWVkYvDQIDMVpXDA"), pvoj)
end)
end

if oisk:GetAttribute(_d("JAgWVkYvDQIDM0Za")) ~= nil and oisk:GetAttribute(_d("JAgWVkYvDQIDM0Za")) ~= pvoj then
pcall(function()
oisk:SetAttribute(_d("JAgWVkYvDQIDM0Za"), pvoj)
end)
end
end
end
end

function tkfn.pinMode()
if not (jvm.enabled or jvm.nightmare) then
return
end

local uw = jvm.nightmare == true

for iav, kjm in ipairs({ _d("MgYVR1gCKwUO"), _d("MgYVR1gCKwUOUw") }) do
local qxc = bvm:FindFirstChild(kjm)

if qxc then
if qxc:GetAttribute(_d("JAgWVkYvDQIDMVpXDA")) ~= uw then
pcall(function()
qxc:SetAttribute(_d("JAgWVkYvDQIDMVpXDA"), uw)
end)
end

local duic = tkfn.hardWatch[qxc]

if duic and duic.Connected == false then
tkfn.hardWatch[qxc] = nil
duic = nil
end

if duic == nil then
local jtkh, clo = pcall(function()
return xftw(qxc:GetAttributeChangedSignal(_d("JAgWVkYvDQIDMVpXDA")), function()
if not (jvm.enabled or jvm.nightmare) then
return
end

local wfk = jvm.nightmare == true

if qxc.Parent and qxc:GetAttribute(_d("JAgWVkYvDQIDMVpXDA")) ~= wfk then
pcall(function()
qxc:SetAttribute(_d("JAgWVkYvDQIDMVpXDA"), wfk)
end)
end
end)
end)

if jtkh then
tkfn.hardWatch[qxc] = clo
end
end
end
end
end

function tkfn.pauseRows()
local wca = qgqr:FindFirstChild(_d("IAsASlEVKwUO")) and qgqr.PlayerGui:FindFirstChild(_d("IwIVR10JCwMgFFo"))

if not wca then
return nil, nil
end

return wca:FindFirstChild(_d("IAYUQFEuAhYOD1pAAiUeFxRH"), true), wca:FindFirstChild(_d("IAYUQFEuAhYOD1pAAi8YAgJY"), true)
end

function tkfn.pauseState()
local tc = qgqr:FindFirstChild(_d("IAsASlEVKwUO")) and qgqr.PlayerGui:FindFirstChild(_d("IwIVR10JCwMgFFo"))
local kwno = tc and tc:FindFirstChild(_d("NwIVYFETGBkJBkA"), true)

if not kwno then
return nil
end

local rl, mja = pcall(function()
return kwno:Invoke()
end)

if rl and type(mja) == _d("BAYDX1E") then
return mja.pauseInfiniteEnabled == true
end

return nil
end

function tkfn.pauseAt(fwzs, olbo)
olbo = math.max(1, math.floor(tonumber(olbo) or 1))

local chqp, zht = tkfn.pauseRows()

if not (chqp and zht) then
return false
end

local isdr = pcall(function()
if tonumber(chqp.Text) ~= olbo then
chqp.Text = tostring(olbo)

if getconnections then
for afn, xzl in ipairs(getconnections(chqp.FocusLost)) do
pcall(function()
xzl:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end
end)

if fwzs ~= nil then
local loc = tkfn.pauseState()

if loc ~= nil and loc ~= fwzs and getconnections then
pcall(function()
for nimp, gsl in ipairs(getconnections(zht.MouseButton1Click)) do
pcall(function()
gsl:Fire()
end)
end
end)
end
end

return isdr
end

function tkfn.restorePause()
zq.triggered = false

if zq.enabled and zq.floor > 0 then
tkfn.pauseAt(true, zq.floor)

pcall(function()
vxjo.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = zq.floor,
})
end)

return
end

pcall(function()
vxjo.SaveClientData:FireServer({
pauseInfiniteEnabled = false,
pauseInfiniteAt = 1,
})
end)

tkfn.pauseAt(false, 1)
end

function tkfn.remote(kfd)
local yfvz = tkfn.remotes[kfd]

if yfvz and yfvz.Parent then
return yfvz
end

local lyqu = ug:FindFirstChild(_d("IgIMXEACHw"))
local swfu = lyqu and lyqu:FindFirstChild(kfd)

if swfu then
tkfn.remotes[kfd] = swfu
end

return swfu
end

function tkfn.historyOpen()
for mmr, wsof in ipairs({ _d("MgYVR1gCKwUO"), _d("MgYVR1gCKwUOUw") }) do
local vdng = bvm:FindFirstChild(wsof)
local jt = vdng and vdng:FindFirstChild(_d("JAgWVkYvBQMTDkFNIR4RCgQ"))

if jt and jt.Visible then
return true
end
end

return false
end

function tkfn.generationOpen()
local gxel = bvm:FindFirstChild(_d("JAgWVkY1CQMSDUdzEgU"))
local kdvp = gxel and gxel:FindFirstChild(_d("IgISRlgTKgIGDFY"))

return kdvp ~= nil and kdvp.Visible
end

function tkfn.standDown(wkh)
if not tkfn.hidMenu then
local lxj = true

pcall(function()
lxj = cng:GetState() ~= false
end)

if lxj then
tkfn.hidMenu = true

pcall(function()
cng:SetState(false)
end)
end
end

if tkfn.watcher then
return
end

tkfn.watcher = true

task.spawn(function()

local kox = os.clock() + 6

while lrm() and os.clock() < kox and not wkh() do
task.wait(0.2)
end

while lrm() and wkh() do
task.wait(0.4)
end

tkfn.watcher = false

if tkfn.hidMenu then
tkfn.hidMenu = false

pcall(function()
cng:SetState(true)
end)
end
end)
end

jvm.floorAt = 0
jvm.battleAt = 0
jvm.floor = nil
jvm.manualPause = false

task.spawn(function()
local cqex = jz(_d("MgYVR1gCOQADAEdR"))
local ndrh = jz(_d("Ix4PUGAIGxUVJ19bCB4"))
local aiku = jz(_d("MgYVR1gCKR4D"))
local wys = jz(_d("JAgWVkY1GR4iD1dRAw"))

if cqex then
xftw(cqex.OnClientEvent, function()
jvm.battleAt = os.clock()
end)
end

if ndrh then
xftw(ndrh.OnClientEvent, function(trr)
jvm.floorAt = os.clock()

if type(trr) == _d("HhIMUVEV") and trr > 1 then
jvm.floor = trr
else
jvm.floor = nil
end
end)
end

if aiku then
xftw(aiku.OnClientEvent, function(tmkl)
if type(tmkl) == _d("BAYDX1E") and tmkl.mode == _d("BAgWVkY") then
jvm.floorAt = os.clock()
end
end)
end

if wys then
xftw(wys.OnClientEvent, function()

jvm.lastRunEnded = {
clock = os.clock(),
floor = jvm.floor,
}

task.delay(1, function()
local veon = bvm:FindFirstChild(_d("JAgWVkY1CQMSDUdzEgU"))
local jpy = veon and veon:FindFirstChild(_d("IgISRlgTKgIGDFY"))
local tbxn = {}

if jpy then
for crs, vkja in ipairs(jpy:GetDescendants()) do
if vkja:IsA(_d("JAIZR3gGDhUL")) and vkja.Visible and vkja.Text ~= _d("") and #tbxn < 12 then
tbxn[#tbxn + 1] = vkja.Text
end
end
end

if jvm.lastRunEnded then
jvm.lastRunEnded.texts = table.concat(tbxn, _d("UBtB"))
end
end)

jvm.floorAt = 0
jvm.battleAt = 0
jvm.floor = nil

if jvm.manualPause then
tkfn.restorePause()
end
end)
end

end)

local function upyh()
local xyns = os.clock()

if xyns - (jvm.floorAt or 0) < 90 and xyns - (jvm.battleAt or 0) < 12 then
return true
end

for son, vy in ipairs({ _d("MgYVR1gCKwUO"), _d("MgYVR1gCKwUOUw") }) do
local govv = bvm:FindFirstChild(vy)

if govv then

local xxfs = govv:FindFirstChild(_d("JAgWVkYhAB8IE39VBQkc"))

if xxfs and xxfs.Visible then
return true
end

local pkb = govv:FindFirstChild(_d("NgsOXEY0DwICBF0"))

if pkb and pkb.Visible then
return true
end

local asca = govv:FindFirstChild(_d("MgYVR1gCPxMVBFZa"))

if asca and asca.Visible then
local mwd = asca:FindFirstChild(_d("IRIIUF8gBQYCNEN2EhgECA8"))

if mwd and mwd.Visible then
return true
end
end
end
end

return false
end

function tkfn.hardNow()

local jozj = bvm:FindFirstChild(_d("MgYVR1gCKwUO"))
local bp = jozj and jozj:GetAttribute(_d("JAgWVkYvDQIDMVpXDA"))

if bp ~= nil then
return bp == true
end

local pcve = cjgg.misc.util.profile

return type(pcve) == _d("BAYDX1E") and pcve.lastTowerHard == true
end

function tkfn.endIfWrongMode(qimf)
if not upyh() or tkfn.hardNow() == (qimf == true) then
return false
end

pcall(function()
if type(lqmk) == _d("FhIPUEAOAx4") then
lqmk()
else
vxjo.EndTowerRemote:FireServer(1)
end
end)

jvm.floor = nil

return true
end

function tkfn.hardPickNow()
for rby, ioat in ipairs({ _d("MgYVR1gCKwUO"), _d("MgYVR1gCKwUOUw") }) do
local xcc = bvm:FindFirstChild(ioat)
local kmu = xcc and xcc:GetAttribute(_d("JAgWVkYvDQIDMVpXDA"))

if kmu ~= nil then
return kmu == true
end
end

return nil
end

function tkfn.parked()
for oshe, tg in ipairs({ _d("MgYVR1gCKwUO"), _d("MgYVR1gCKwUOUw") }) do
local zxx = bvm:FindFirstChild(tg)

if zxx then
local lleu = zxx:FindFirstChild(_d("JAgWVkYhAB8IE39VBQkc"))
local kol = zxx:FindFirstChild(_d("NgsOXEY0DwICBF0"))
local cxb = zxx:FindFirstChild(_d("MgYVR1gCPxMVBFZa"))

if lleu and lleu.Visible
and not (kol and kol.Visible)
and not (cxb and cxb.Visible) then
return true
end
end
end

return false
end

jvm.ui = qjlw:Toggle({
Name = _d("MRIVXBQzAwcCEw"),
Default = false,
Callback = function(oqab)

if jvm.quiet then
return
end

jvm.enabled = oqab
jvm.pending = false
jvm.pendingUntil = 0

if oqab then

if sw.enabled and sw.role[1] ~= _d("BAgWVkY") then
jvm.enabled = false

pcall(function()
jvm.ui:UpdateState(false)
end)

pcall(function()
cng:Dialog({
Title = _d("MRIVXBQzAwcCExNbAQo"),
Description = _d("IwsORxRWTBkUQUBRE0wECEE") .. sw.roleName(1) .. _d("Xkc1W1FHJR4BCF1dExVQJABAQAsJUAgPX01HHwQGE0dHRwMeRxJfWxNMQUtBQFtHHxUTQWBYCBhQVkFHW0c4HxAEQRQBBQIUFR0"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})
end)

return
end

if sw.otherTowerOn(_d("BAgWVkY")) then
jvm.enabled = false

pcall(function()
jvm.ui:UpdateState(false)
end)

pcall(function()
cng:Dialog({
Title = _d("MRIVXBQzAwcCExNbAQo"),
Description = _d("MQkOR1wCHlATDkRRFUwREhVcWQYYGQgPE10UTBELE1ZVAxVQCA8fFAYCFEcVW10UTBEEAlxBCRhQCA9fTUcNHAsOREdHAx4CQUdbEAkCRxNGWkcNBEcAE0AOARVJQWdBFQJQEwlSQEcDHgJBXFIBTBYOE0BAS0wfFUFHQRUCUAgPE3USGB9HMl9bE0wDCEFWVQQEUBQNXEBHCxUTEhNdEx9QCBZdFBMDBwITHQ"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})
end)

return
end

jvm.nightmare = false

pcall(function()
jvm.quiet = true
jvm.nightmareToggle:UpdateState(false)
jvm.quiet = false
end)

jvm.manualPause = false
jvm.paused = false
tkfn.restorePause()
jvm.pauseArmed = false

tkfn.endIfWrongMode(false)
tkfn.hardPick(false)

return
end

if not upyh() then
return
end

jvm.paused = true
local wva = ggku()

cng:Notify({
Title = _d("MRIVXBQzAwcCExNbAQo"),
Description = wva and _d("JAgWVkZHHgUJQUNVEh8VA08") or _d("IhIPE10UTBwOF1YYRw4FE0FdW0cOAgIAWBQFGQQTDl0UAQMFCQUd"),
Lifetime = 5,
})
end,
}, _d("ERIVXGsTAwcCEw"))

jvm.nightmareToggle = qjlw:Toggle({
Name = _d("MRIVXBQpBRcPFV5VFQlQMw5EURU"),
Default = false,
Callback = function(gl)
if jvm.quiet then
return
end

jvm.nightmare = gl

if not gl then

jvm.enabled = false
jvm.pending = false
jvm.pendingUntil = 0

tkfn.hardPick(false)

pcall(function()
jvm.quiet = true
jvm.ui:UpdateState(false)
jvm.quiet = false
end)

if upyh() then
jvm.paused = true
local hlkz = ggku()

cng:Notify({
Title = _d("MRIVXBQpBRcPFV5VFQlQMw5EURVMHwEH"),
Description = hlkz and _d("Pg4GW0AKDQICQUFBCUwABhRAUQNC") or _d("IhIPE10UTBwOF1YYRw4FE0FdW0cOAgIAWBQFGQQTDl0UAQMFCQUd"),
Lifetime = 5,
})
end

return
end

if sw.enabled and sw.role[1] ~= _d("BAgWVkY") then
jvm.nightmare = false

pcall(function()
jvm.quiet = true
jvm.nightmareToggle:UpdateState(false)
jvm.quiet = false
end)

pcall(function()
cng:Dialog({
Title = _d("MRIVXBQpBRcPFV5VFQlQMw5EURVMHwEH"),
Description = _d("Pg4GW0AKDQICQWdbEAkCRwJcQQkYA0cAQBQzAwcCExNdCUwDCw5HFFZAUAYPVxQeAwUVQUBYCBhQVkFaR0cDHkc") .. sw.roleName(1) .. _d("UBUIVFwTTB4IFh0UNAkERxJfWxNMQUcVXBQzAwcCExNSDh4DE08"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})
end)

return
end

pcall(function()
jvm.quiet = true
jvm.ui:UpdateState(false)
jvm.quiet = false
end)

jvm.enabled = true
jvm.manualPause = false
jvm.paused = false

tkfn.restorePause()
jvm.pauseArmed = false

tkfn.endIfWrongMode(true)
tkfn.hardPick(true)

jvm.pending = false
jvm.pendingUntil = 0
end,
}, _d("ERIVXGsJBRcPFV5VFQkvEw5EURU"))

qjlw:Header({
Name = _d("MRIVXBQ3DQUUBBNgCBsVFQ"),
})

local oeo

oeo = qjlw:Toggle({
Name = _d("MRIVXBQ3DQUUBBNyCwMfFQ"),
Default = false,
Callback = function(bw)
zq.triggered = false

if bw and zq.floor <= 0 then
zq.enabled = false

pcall(function()
oeo:UpdateState(false)
end)

pcall(function()
vxjo.SaveClientData:FireServer({ pauseInfiniteEnabled = false })
end)

cng:Dialog({
Title = _d("MRIVXBQ3DQUUBBNyCwMfFQ"),
Description = _d("IwIVE1VHHBESElYUAQAfCBMTVQUDBgJBAxQBBQIUFRMZRy0FEw4TZAYZAwJBZ1sQCQJHD1ZRAx9QEw4TXwkDB0cWW1EVCVATDhNHEwMASQ"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})

return
end

zq.enabled = bw

pcall(function()
vxjo.SaveClientData:FireServer({
pauseInfiniteEnabled = bw,
pauseInfiniteAt = zq.floor,
})
end)
end,
}, _d("ERIVXGsXDQUUBGxSCwMfFQ"))

qjlw:Input({
Name = _d("IAYUQFFHDQRHB19bCB4"),
Placeholder = _d("FUkGHRRSXA"),
AcceptedCharacters = _d("PhIMUVEVHw"),
Callback = function(vlni)
local bqwx = tonumber(vlni) or 0

if bqwx < 0 then
bqwx = 0
end

if bqwx == zq.floor then
return
end

zq.floor = bqwx
zq.triggered = false

if bqwx <= 0 and zq.enabled then
zq.enabled = false

pcall(function()
oeo:UpdateState(false)
end)
end

pcall(function()
vxjo.SaveClientData:FireServer({
pauseInfiniteAt = bqwx,
pauseInfiniteEnabled = zq.enabled,
})
end)
end,
}, _d("AAYUQFE4DQQ4B19bCB4"))

qjlw:Button({
Name = _d("IAYUQFFHOB8QBEE"),
Callback = function()
local niy = false

pcall(function()
niy = ggku()
end)

if niy then

jvm.manualPause = true
return
end

cng:Dialog({
Title = _d("IAYUQFFHOB8QBEE"),
Description = _d("PghBX10RCVATDkRRFUwCEg8TQAhMAAYUQFFHHhkACUcUCQMHSQ"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})
end,
})

qjlw:Header({
Name = _d("MRIVXBQgBQYCQWZE"),
})

zpw.toggle = qjlw:Toggle({
Name = _d("MRIVXBQgBQYCQWZE"),
Default = false,
Callback = function(fybt)
zpw.triggered = false

if fybt and zpw.floor <= 0 then
zpw.enabled = false

pcall(function()
zpw.toggle:UpdateState(false)
end)

cng:Dialog({
Title = _d("MRIVXBQgBQYCQWZE"),
Description = _d("IwIVE1VHCxkRBBNBF0wWCw5cRkcNEggXVhRXTBYOE0BAR0FQJhRHW0crGREEE2EXTB4CBFdHRxgfRwpdWxBMBw8EQVFHGB9HEkdbF0I"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})

return
end

zpw.enabled = fybt
end,
}, _d("ERIVXGsABQYCPkZE"))

qjlw:Input({
Name = _d("Nw4XVhQSHFAIDxNSCwMfFQ"),
Placeholder = _d("FUkGHRRQXA"),
AcceptedCharacters = _d("PhIMUVEVHw"),
Callback = function(iko)
local fchc = tonumber(iko) or 0

if fchc < 0 then
fchc = 0
end

if fchc == zpw.floor then
return
end

zpw.floor = fchc
zpw.triggered = false

if fchc <= 0 and zpw.enabled then
zpw.enabled = false

pcall(function()
zpw.toggle:UpdateState(false)
end)
end
end,
}, _d("Fw4XVmsSHC8ID2xSCwMfFQ"))

zpw.weatherToggle = qjlw:Toggle({
Name = _d("MRIVXBQABQYCQUZERwMeRxZWVRMEFRU"),
Default = false,
Callback = function(dlp)
zpw.weatherTriggered = false

if dlp and next(zpw.weathers) == nil then
zpw.weatherEnabled = false

pcall(function()
zpw.weatherToggle:UpdateState(false)
end)

cng:Dialog({
Title = _d("JwIAR1wCHlAgCEVRRzkA"),
Description = _d("JA4CWBQGGFALBFJHE0wfCQQTQwINBA8EQRQFCRwIFhNSDh4DE0EeFAgYGAITRF0UCVATCVZGAkwZFEFdWxMEGQkGE0AITBcOF1YUEhxQCA8d"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})

return
end

zpw.weatherEnabled = dlp
end,
}, _d("ERIVXGsABQYCPkZEOAMeOBZWVRMEFRU"))

qjlw:Dropdown({
Name = _d("Nw4XVhQSHFAQBFJADwkCFA"),
Multi = true,
Required = false,
Options = { _d("JB4RW1sIAg"), _d("MgsISU4GHhQ"), _d("PA4GW0AJBR4A"), _d("Jw4PV0cTAwIK"), _d("Iw8AQV0JCxEJ"), _d("Iw4PVEELDQIOFUo"), _d("PQgPUkYEBFAjDl5VDgI"), _d("JggIVw"), _d("PQYFVhQOAlAvBFJCAgI"), _d("PQYPVFU") },
Callback = function(kmzi)
zpw.weathers = {}

if type(kmzi) == _d("BAYDX1E") then
for qob, fev in pairs(kmzi) do
if fev then
zpw.weathers[qob] = true
end
end
end

zpw.weatherTriggered = false
end,
}, _d("Fw4XVmsSHC8QBFJADwkCFA"))

qjlw:Input({
Name = _d("PQ4PWlkSAVABDVxbFR8"),
Placeholder = _d("QEdcE1UJFVABDVxbFQ"),
AcceptedCharacters = _d("PhIMVkYODw"),
Callback = function(ayvd)
local uv = math.floor(tonumber(ayvd) or 0)

if uv < 0 then
uv = 0
end

zpw.weatherMinFloor = uv
zpw.weatherTriggered = false
end,
}, _d("HQ4PWlkSAS8BDVxbFR8"))

qjlw:Button({
Name = _d("Nw4XVhQyHFAzDkRRFQ"),
Callback = function()
if not upyh() then
cng:Dialog({
Title = _d("Nw4XVhQyHFAzDkRRFQ"),
Description = _d("PghBX10RCVATDkRRFUwCEg8TQAhMFw4XVhQSHFAVCFRcE0weCBYd"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})

return
end

cng:Dialog({
Title = _d("Nw4XVhQyHFAzDkRRFQ"),
Description = _d("NggTVVEOGFATCVYUBBkCFQRdQEcYHxAEQRQVGR5YQWdcDh9QBABdWggYUAUEE0EJCB8JBB0"),
Buttons = {
{
Name = _d("NwhBUVUEBw"),
},
{
Name = _d("Nw4XVhQSHA"),
Callback = function()
local huwu = false

pcall(function()
huwu = lqmk()
end)

if huwu then
return
end

task.defer(function()
task.wait(0.3)

cng:Dialog({
Title = _d("Nw4XVhQyHFAzDkRRFQ"),
Description = _d("PghBVF0RCVASERNWEhgECA8TVQkfBwITVlBHQVATCVYUFRkeRwxSTUcNHBUEUlAeTBICQVxCAh5e"),
Buttons = {
{
Name = _d("NwgVE10T"),
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

qjlw:Button({
Name = _d("Mw8EUF9HAB8UEhNcDh8ECBNK"),
Callback = function()
local bneh = tkfn.remote(_d("IgIQRlEUGCQIFlZGLwUDEw5BTQ"))

if not bneh then
cng:Dialog({
Title = _d("PAgSQBQvBQMTDkFN"),
Description = _d("JA8IQBQFGRkLBRNcBh9QCQ4TQAgbFRVBW10UGB8VGBNGAgEfEwQd"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})

return
end

tkfn.standDown(tkfn.historyOpen)

pcall(function()
bneh:FireServer()
end)
end,
})

qjlw:Button({
Name = _d("Mw8EUF9HCxUJBEFVEwUfCRI"),
Callback = function()

local zamm = bvm:FindFirstChild(_d("JAgWVkY1CQMSDUdzEgU"))
local ib = zamm and zamm:FindFirstChild(_d("PxcEXXMCAjgOEkdbFRU"))

if not ib then
cng:Dialog({
Title = _d("NwIPVkYGGBkID0A"),
Description = _d("JA8IQBQFGRkLBRNcBh9QCQ4TUwICFRUAR10IAgNHFlpaAwMHSQ"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})

return
end

tkfn.standDown(tkfn.generationOpen)

pcall(function()
ib:Fire()
end)
end,
})

xup.bossTeams.towerSection = pls:Section({
Side = _d("PAIHRw"),
})

xup.bossTeams.towerSection:Header({
Name = _d("JAgWVkZHOBUGDEA"),
})

xup.bossTeams.towerSection:Paragraph({
Header = _d("OAgWE0AIGxUVQUdRBgEDRxZcRgw"),
Body = _d("PwEHCRQCDRMPQUFBCUwFFARAFBAEERMERVEVTAQCAF4UDhgDRxJfWxNMEQsTVlUDFVAPDl9QFEJ6bS5dDkcJEQQJE0AIGxUVQVFRCwMHRxNGWhRMBw4VWxQTBBVHFVZVCkwADgJYUQNMFggTE10TQg"),
})

xup.bossTeams.towerToggle = xup.bossTeams.towerSection:Toggle({
Name = _d("JAgWVkZHOBUGDEA"),
Default = false,
Callback = function(fwyf)
xup.bossTeams.towersOn = fwyf
end,
}, _d("BAgWVkY4GBUGDEA"))

for mqxr, uwd in ipairs({
{ kind = _d("BAgWVkY"), name = _d("OQkHWloOGAlHIlJHEwAVR04Teg4LGBMMUkYC") },
{ kind = _d("GAYTV1cIHhU"), name = _d("ORQNUloDTDgGE1dXCB4V") },
}) do
local cru = math.clamp(math.floor(tonumber(xup.bossTeams.towerPicked[uwd.kind]) or 1), 1, 4)

xup.bossTeams.towerPicked[uwd.kind] = cru

xup.bossTeams.towerUi[uwd.kind] = xup.bossTeams.towerSection:Dropdown({
Name = uwd.name,
Search = false,
Multi = false,
Required = false,
Default = cru,
Options = { _d("JAIAXhRW"), _d("JAIAXhRV"), _d("JAIAXhRU"), _d("JAIAXhRT") },
Callback = function(uid)
local eeeb = type(uid) == _d("BAYDX1E") and uid[1] or uid
local ptww = type(eeeb) == _d("AxMTWloA") and tonumber(eeeb:match(_d("WEIFGB0"))) or nil

if ptww then
xup.bossTeams.towerPicked[uwd.kind] = ptww
xup.bossTeams.save()
end

pcall(function()
xup.bossTeams.towerUi[uwd.kind]:UpdateName(uwd.name .. _d("UIXhkRQ") .. (eeeb or _d("JAIAXhRW")))
end)
end,
}, _d("BAIAXmsTAwcCE2w") .. uwd.kind)

pcall(function()
xup.bossTeams.towerUi[uwd.kind]:UpdateSelection(_d("JAIAXhQ") .. tostring(cru))
xup.bossTeams.towerUi[uwd.kind]:UpdateName(uwd.name .. _d("UIXhkRQzCREKQQ") .. tostring(cru))
end)
end

xup.bossTeams.towerSection:Header({
Name = _d("IxAAQxQIAlABDVxbFQ"),
})

xup.bossTeams.towerSection:Paragraph({
Header = _d("IxAAQxQTCREKQVxaRw1QAQ1cWxU"),
Body = _d("JA8EE1MGARVAEhNbEAJQFBZSREtMHggVE1VHHBESElYaRykRBAkTRhIAFUcIQBQGTBYLDlxGRw0eA0FHXAJMBAIAXhQQAwIJQVVGCAFQEwlSQEcKHAgOQRQIAlxHFkFdExgVCUFaWhMDUBMJVhQADR0CRkAUNAkEEwhdUxRMXVlBckETA1AzBFJZRz8HBhETBUcNHgNBARhHHx9HFVtRRwsRCgQTWQYHFRRBR1wCTAMQCEdXD0wZExJWWAFMBw8EXRQGTAISDxNHEw0CExITQA8NBEcHX1sIHl5HL1xADwUeAEFaR0cfBAgRQ1EDTBEJBRNADwlQFRRdFAwJFRcSE10TH1AUDVxASWZ6JkFQVRQYHAJBQUEJTBcCFUAUEwQVRxJSWQJMAxAIR1cPTBYVDl4UEwQZFEFDVQkJHEtBUVEEDQUUBBNADwlQAABeUUAfUAgWXRQUGxEXQVxaCxVQAQhBURRMGQkSWlACTDkJB1paDhgVRzNcWwofXm1rf1EGGhVHABNSCwMfFUFSQEdcUBMOE0ASHh5HFVtVE0wCEg1WFAgKFkk"),
})

function xup.bossTeams.swapStatusText()
local esu = xup.bossTeams.swap
local lic = {}

if esu.on then
table.insert(lic, _d("PwlBHhQQHhkTFVZaRxgfRxVbUUcLEQoEFEdHLQUTDhNgAg0dRzJEVRdMAggWQBo"))
else
table.insert(lic, _d("PwEHExlHGBgCQVRVCglXFEFAQwYcUA4SE1gCCgRHAF9bCQle"))
end

local rix = {
{ index = 1, floor = esu.floor, team = esu.team },
{ index = 2, floor = esu.floor2, team = esu.team2 },
}

for eal, hux in ipairs(rix) do
if hux.floor > 0 then
table.insert(lic, string.format(_d("IxAAQxRCCEpHNVZVCkxVA0FVRggBUAENXFsVTFUD"), hux.index, hux.team, hux.floor))
else
table.insert(lic, string.format(_d("IxAAQxRCCEpHDlVSR0QeCEFVWAgDAkcSVkBO"), hux.index))
end
end

if xup.bossTeams.swapMessage ~= _d("") then
table.insert(lic, xup.bossTeams.swapMessage)
end

return table.concat(lic, _d("eg"))
end

function xup.bossTeams.paintSwap()
pcall(function()
xup.bossTeams.swapStatus:UpdateBody(xup.bossTeams.swapStatusText())
end)
end

xup.bossTeams.swapToggle = xup.bossTeams.towerSection:Toggle({
Name = _d("IxAAQxQTCREKQVxaRwocCA5B"),
Default = xup.bossTeams.swap.on,
Callback = function(drkv)
xup.bossTeams.swap.on = drkv

xup.bossTeams.swapReset()

xup.bossTeams.swapApply()
xup.bossTeams.save()
end,
}, _d("AxAAQ2sTCREKPlxaOAocCA5B"))

xup.bossTeams.swapInput = xup.bossTeams.towerSection:Input({
Name = _d("NgsOXEY"),
Placeholder = _d("FUkGHRRSXEBHSQMUWkwfAQca"),
AcceptedCharacters = _d("PhIMVkYODw"),
Callback = function(qar)
local tffl = tonumber(type(qar) == _d("AxMTWloA") and qar:match(_d("WEIFGB0")) or qar)

if tffl then
xup.bossTeams.swap.floor = tffl
xup.bossTeams.swapReset()
xup.bossTeams.swapApply()
xup.bossTeams.save()
end
end,
}, _d("FgsOXEY"))

xup.bossTeams.swapDropdown = xup.bossTeams.towerSection:Dropdown({
Name = _d("IxAAQxQTAw"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(xup.bossTeams.swap.team) or 1), 1, 4),
Options = { _d("JAIAXhRW"), _d("JAIAXhRV"), _d("JAIAXhRU"), _d("JAIAXhRT") },
Callback = function(kb)
local yjkm = type(kb) == _d("BAYDX1E") and kb[1] or kb
local mdo = type(yjkm) == _d("AxMTWloA") and tonumber(yjkm:match(_d("WEIFGB0"))) or nil

if mdo then
xup.bossTeams.swap.team = mdo
xup.bossTeams.swapReset()
xup.bossTeams.swapApply()
xup.bossTeams.save()
end

pcall(function()
xup.bossTeams.swapDropdown:UpdateName(_d("IxAAQxQTA1CF4ZEU") .. (yjkm or _d("JAIAXhRW")))
end)

xup.bossTeams.paintSwap()
end,
}, _d("AxAAQ2sTAw"))

xup.bossTeams.swapInput2 = xup.bossTeams.towerSection:Input({
Name = _d("NgsOXEZHXg"),
Placeholder = _d("FUkGHRRWXEBXQRsER1FQCAdVHQ"),
AcceptedCharacters = _d("PhIMVkYODw"),
Callback = function(ewca)
local ltgl = tonumber(type(ewca) == _d("AxMTWloA") and ewca:match(_d("WEIFGB0")) or ewca)

if ltgl then
xup.bossTeams.swap.floor2 = ltgl
xup.bossTeams.swapReset()
xup.bossTeams.swapApply()
xup.bossTeams.save()
end
end,
}, _d("FgsOXEY4Xg"))

xup.bossTeams.swapDropdown2 = xup.bossTeams.towerSection:Dropdown({
Name = _d("IxAAQxQTA1BV"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(xup.bossTeams.swap.team2) or 1), 1, 4),
Options = { _d("JAIAXhRW"), _d("JAIAXhRV"), _d("JAIAXhRU"), _d("JAIAXhRT") },
Callback = function(slm)
local bug = type(slm) == _d("BAYDX1E") and slm[1] or slm
local br = type(bug) == _d("AxMTWloA") and tonumber(bug:match(_d("WEIFGB0"))) or nil

if br then
xup.bossTeams.swap.team2 = br
xup.bossTeams.swapReset()
xup.bossTeams.swapApply()
xup.bossTeams.save()
end

pcall(function()
xup.bossTeams.swapDropdown2:UpdateName(_d("IxAAQxQTA1BVQdG0xUw") .. (bug or _d("JAIAXhRW")))
end)

xup.bossTeams.paintSwap()
end,
}, _d("AxAAQ2sTAy9V"))

xup.bossTeams.swapStatus = xup.bossTeams.towerSection:Paragraph({
Header = _d("IxAAQxQUGBETFEA"),
Body = xup.bossTeams.swapStatusText(),
})

pcall(function()
local uozp = math.clamp(math.floor(tonumber(xup.bossTeams.swap.team) or 1), 1, 4)
local nfzh = math.clamp(math.floor(tonumber(xup.bossTeams.swap.team2) or 1), 1, 4)

xup.bossTeams.swapDropdown:UpdateSelection(_d("JAIAXhQ") .. tostring(uozp))
xup.bossTeams.swapDropdown:UpdateName(_d("IxAAQxQTA1CF4ZEUMwkRCkE") .. tostring(uozp))
xup.bossTeams.swapDropdown2:UpdateSelection(_d("JAIAXhQ") .. tostring(nfzh))
xup.bossTeams.swapDropdown2:UpdateName(_d("IxAAQxQTA1BVQdG0xUwkAgBeFA") .. tostring(nfzh))
end)

task.spawn(function()
local mme = xup.bossTeams.swapStatusText()

while lrm() do
local qtnj = xup.bossTeams.swapStatusText()

if qtnj ~= mme then
mme = qtnj
xup.bossTeams.paintSwap()
end

task.wait(2)
end
end)

if xup.bossTeams.swap.on then
task.delay(2, function()
pcall(xup.bossTeams.swapApply)
end)
end

xup.bossTeams.section = pls:Section({
Side = _d("Ig4GW0A"),
})

xup.bossTeams.section:Header({
Name = _d("MggSQBQzCREKEg"),
})

xup.bossTeams.section:Paragraph({
Header = _d("OAgWE1YIHwNHFVZVCh9QEA5BXw"),
Body = _d("PwEHCRQJAwQPCF1TRwUDRxJEXRMPGAIFExlHCQYCE0oUAQUXDxUTQRQJA0cVW1FHGBUGDBNNCBlQBg1BUQYICUcJUkICTBwOD1ZQRxkAS0FEXA4PGEcIQBQTBBVHMl9bE0xBRxVWVQpMBQkNVkcUTAMLDkcUVUwEBgpWR0cYGAJBUVUTGBwCTzk+KAJKRwRSVw9MERUEUhQFCRwIFhNSDgsYExITQw4YGEcVW1FHGBUGDBNNCBlQFwhQX0cKHxVBWkBJ"),
})

xup.bossTeams.toggle = xup.bossTeams.section:Toggle({
Name = _d("MggSQBQzCREKEg"),
Default = false,
Callback = function(pcdz)
xup.bossTeams.enabled = pcdz
end,
}, _d("EggSQGsTCREKEg"))

for evt, fqrd in ipairs(ruk) do
local thau = xup.bossTeams.picked[fqrd.id] or 1

thau = math.clamp(math.floor(tonumber(thau) or 1), 1, 4)
xup.bossTeams.picked[fqrd.id] = thau

xup.bossTeams.ui[fqrd.id] = xup.bossTeams.section:Dropdown({
Name = fqrd.name,
Search = false,
Multi = false,
Required = false,

Default = thau,
Options = { _d("JAIAXhRW"), _d("JAIAXhRV"), _d("JAIAXhRU"), _d("JAIAXhRT") },
Callback = function(qmb)
local qzy = type(qmb) == _d("BAYDX1E") and qmb[1] or qmb
local oru = type(qzy) == _d("AxMTWloA") and tonumber(qzy:match(_d("WEIFGB0"))) or nil

if oru then
xup.bossTeams.picked[fqrd.id] = oru

xup.bossTeams.save()
end

pcall(function()
xup.bossTeams.ui[fqrd.id]:UpdateName(fqrd.name .. _d("UIXhkRQ") .. (qzy or _d("JAIAXhRW")))
end)
end,
}, _d("BAIAXmsQAwILBWw") .. fqrd.id)

pcall(function()
xup.bossTeams.ui[fqrd.id]:UpdateSelection(_d("JAIAXhQ") .. tostring(thau))
xup.bossTeams.ui[fqrd.id]:UpdateName(fqrd.name .. _d("UIXhkRQzCREKQQ") .. tostring(thau))
end)
end

xup.bossTeams.raidSection = pls:Section({
Side = _d("Ig4GW0A"),
})

xup.bossTeams.raidSection:Header({
Name = _d("IgYIVxQzCREKEg"),
})

xup.bossTeams.raidSection:Paragraph({
Header = _d("OAgWE0YGBRRHFVZVCh9QEA5BXw"),
Body = _d("PwEHCRQVDRkDEhNBFAlQEAlSQAIaFRVBR1EGAVATCVYUFAAfE0FSWBUJEQMYE1wIABQUTzk+KAJKRwRSVw9MAgYIVxQFCRwIFhNdFEwWCBRUXBNMBw4VWxQTBBVHFVZVCkwADgJYUQNMFggTE10TQg"),
})

xup.bossTeams.raidToggle = xup.bossTeams.raidSection:Toggle({
Name = _d("IgYIVxQzCREKEg"),
Default = false,
Callback = function(nare)
xup.bossTeams.raidsOn = nare
end,
}, _d("AgYIV2sTCREKEg"))

for xcw, aytm in ipairs(fmbv.Raids) do
if aytm.BossTitle and aytm.id then
local mxfx = xup.bossTeams.raidPicked[aytm.id] or 1

mxfx = math.clamp(math.floor(tonumber(mxfx) or 1), 1, 4)
xup.bossTeams.raidPicked[aytm.id] = mxfx

xup.bossTeams.raidUi[aytm.id] = xup.bossTeams.raidSection:Dropdown({
Name = aytm.BossTitle,
Search = false,
Multi = false,
Required = false,
Default = mxfx,
Options = { _d("JAIAXhRW"), _d("JAIAXhRV"), _d("JAIAXhRU"), _d("JAIAXhRT") },
Callback = function(eeb)
local uq = type(eeb) == _d("BAYDX1E") and eeb[1] or eeb
local hjr = type(uq) == _d("AxMTWloA") and tonumber(uq:match(_d("WEIFGB0"))) or nil

if hjr then
xup.bossTeams.raidPicked[aytm.id] = hjr
xup.bossTeams.save()
end

pcall(function()
xup.bossTeams.raidUi[aytm.id]:UpdateName(aytm.BossTitle .. _d("UIXhkRQ") .. (uq or _d("JAIAXhRW")))
end)
end,
}, _d("BAIAXmsVDRkDPg") .. aytm.id)

pcall(function()
xup.bossTeams.raidUi[aytm.id]:UpdateSelection(_d("JAIAXhQ") .. tostring(mxfx))
xup.bossTeams.raidUi[aytm.id]:UpdateName(aytm.BossTitle .. _d("UIXhkRQzCREKQQ") .. tostring(mxfx))
end)
end
end

task.spawn(function()
local hzry = fy()

while lrm() do
local cazj = fy()

if sw.enabled and sw.statusText then
cazj = sw.statusText()
end

cazj = cazj .. _d("em0yVkYRCQJHFEMU") .. xmz()

if cazj ~= hzry then
hzry = cazj
pcall(function()
ndej:UpdateBody(cazj)
end)
end
task.wait(0.5)
end
end)

task.spawn(function()
while lrm() do
for zwoz, osz in ipairs({ _d("MgYVR1gCKwUO"), _d("MgYVR1gCKwUOUw") }) do
local jeu = bvm:FindFirstChild(osz)
local krxm = jeu and jeu:FindFirstChild(_d("MgYVR1gCPxMVBFZa"))
local rmh = jeu and jeu:FindFirstChild(_d("OA4FVnYGGAQLBHFBExgfCQ"))

if krxm and krxm.Visible and rmh and not rmh.Visible then
rmh.Visible = true
end
end

task.wait(0.5)
end
end)

task.spawn(function()
local ypu = false

while lrm() do
if wiv then
local lhs = bvm:FindFirstChild(_d("JAgWVkY1CQMSDUdzEgU"))
local xnjj = lhs and lhs:FindFirstChild(_d("IgISRlgTKgIGDFY"))
local to = lhs and lhs:FindFirstChild(_d("NwIPVkYGGBkJBnVGBgEV"))

if to and to.Visible then
to.Visible = false
end

local negk = xnjj and xnjj.Visible or false

if negk and not ypu then
local uzfa = xnjj:FindFirstChild(_d("MwsOQFElGQQTDl0"))
local cqzz = false

if uzfa then
for vkj, awab in ipairs({ _d("PQgUQFElGQQTDl0FJAAZBAo"), _d("MQQVWkIGGBUD") }) do
local kvt = uzfa[awab]
if kvt then
for xr, zjwo in ipairs(getconnections(kvt)) do
pcall(function()
zjwo:Fire()
end)
cqzz = true
end
end
end
end

if not cqzz then
xnjj.Visible = false
else
task.spawn(function()
task.wait(0.3)
if xnjj.Parent and xnjj.Visible then
xnjj.Visible = false
end
end)
end
end

ypu = negk
else
ypu = false
end

task.wait(0.2)
end
end)

local dgv = {}

function dgv.active()
return xup.enabled or xup.story
end

function dgv.towerHolds()
if sw.enabled then
return false
end

if unsr.run.enabled then
return true
end

return jvm.enabled and not jvm.paused
end

function dgv.ready(zdrk, vvj, vpur)
local xfkx = xup.unlocked[zdrk]

return (not xfkx or xfkx[vvj] ~= false) and aomo(zdrk, vvj) <= vpur
end

function dgv.hasReadyTarget()
local vdiu = os.time()

for fi, yqln in ipairs(bhdg()) do
for xwmh, okga in ipairs(xcp()) do
if dgv.ready(yqln, okga, vdiu) then
return true
end
end
end

return false
end

function dgv.backOff(sm, bkba)
uxdh(sm, bkba, os.time() + 5)
end

function dgv.findTarget()
for ima, kuz in ipairs(bhdg()) do
local bqz = hra(kuz)
local lqq = os.time() - (xup.lastFetch[kuz] or 0) > 60

if lqq and bqz and not xup.walkToNpc then
xy(bqz)
task.wait(0.3)
jvr(kuz)
end

for zqfz, lto in ipairs(xcp()) do
if dgv.ready(kuz, lto, os.time()) then
return kuz, lto
end
end
end

return nil
end

function xup.bossTeams.slotForFight()
if sw.hasSlot2 == false then
return 1
end

if sw.busy(2) then
return 1
end

return 2
end

function xup.bossTeams.slotTeam(kvpd)
local hdc = bvm:FindFirstChild(_d("IwIVR10JCwMgFFo"))
local rwt = hdc and hdc:FindFirstChild(_d("IwsOR2ACDR0") .. kvpd .. _d("MhIVR1sJ"), true)
local vrrn = rwt and rwt.Text

return vrrn and tonumber(vrrn:match(_d("WEIFGB0"))) or nil
end

function xup.bossTeams.applyTeam(sqsg, fgoi)
sqsg = tonumber(sqsg)

if not sqsg then
return false
end

fgoi = tonumber(fgoi) or xup.bossTeams.slotForFight()

if sw.busy(fgoi) then
return false
end

xup.bossTeams.lastSlot = fgoi

local lnly = xup.bossTeams.slotTeam(fgoi) or xup.bossTeams.applied[fgoi]

if lnly == sqsg then
return true
end

local snr = tkfn.remote(_d("IxAIR1cPOBUGDA"))

if not snr then
return false
end

local zbba = pcall(function()
snr:FireServer(sqsg, false, fgoi)
end)

xup.bossTeams.applied[fgoi] = sqsg
task.wait(0.2)

return zbba
end

function xup.bossTeams.apply(cnkd)
if not xup.bossTeams.enabled then
return
end

local zyx = xup.bossTeams.worldOf[cnkd]
local gih = zyx and xup.bossTeams.picked[zyx]

if not gih then
return
end

xup.bossTeams.applyTeam(gih)
end

function xup.bossTeams.applyTower(uh, pvm)
if not xup.bossTeams.towersOn then
return false
end

local fwu = xup.bossTeams.towerPicked[uh]

local evik = xup.bossTeams.swapFired[uh]

if xup.bossTeams.swap.on and type(evik) == _d("BAYDX1E") then
fwu = evik[2] or evik[1] or fwu
end

if not fwu then
return false
end

return xup.bossTeams.applyTeam(fwu, pvm)
end

function xup.bossTeams.applyRaid(uot)
if not xup.bossTeams.raidsOn then
return
end

local wxk = uot and xup.bossTeams.raidPicked[uot]

if not wxk then
return
end

xup.bossTeams.applyTeam(wxk)
end

function dgv.fight(ref, afqm)
local xso = hra(ref)

if not xso then
dgv.backOff(ref, afqm)
return false
end

local eony

if xup.walkToNpc then
local rdpn = sty[ref]

if rdpn then
vxjo.TeleportToWorld:FireServer(rdpn)
task.wait(2.5)

local qlhc = hra(ref) or xso
local cepm = qlhc:GetPivot()

eony = dhrc(cepm.Position + cepm.LookVector * 6, function()
return not dgv.active() or not xup.walkToNpc
end)

if eony then
jvr(ref)
eony = dgv.ready(ref, afqm, os.time())
end
end
else
eony = xy(xso)
end

if not eony then
dgv.backOff(ref, afqm)
return false
end

task.wait(0.4)
xup.bossTeams.apply(ref)
xup.activeDifficulty[ref] = afqm
vxjo.SetNPCDifficulty:FireServer(ref, afqm)
task.wait(0.4)

xup.currentBattle = {
npcId = ref,
difficulty = afqm,
}
ivw = ref
ykt = afqm
vxjo.StartNPCBattle:FireServer(ref)
uxdh(ref, afqm, os.time() + 10)
xup.battlePending = true
xup.battlePendingUntil = os.time() + 30
task.wait(1)

return true
end

xup.workPending = function()

if cjgg.misc and cjgg.misc.cards and cjgg.misc.cards.inFlight then
return true
end

if not dgv.active() then
return false
end

if xup.battlePending then
return true
end

local vwfm = sw.npcSlot()

if vwfm and sw.busy(vwfm) then
return true
end

return dgv.hasReadyTarget()
end

task.spawn(function()
while lrm() do

local oyj = (sw.enabled and (cjgg.enabled or lh.enabled or cjgg.worldBoss.enabled))
or dgv.towerHolds()
or not sw.slotFree(sw.npcSlot())

or (cjgg.misc and cjgg.misc.cards and cjgg.misc.cards.inFlight)
or (xup.battlePending and os.time() < xup.battlePendingUntil)

if dgv.active() and not oyj and not sw.prioBlocks(_d("HhcC")) then
local sot, nbo = dgv.findTarget()

if sot then
dgv.fight(sot, nbo)
end
end

task.wait(0.5)
end
end)

task.spawn(function()
while lrm() do

local ipia = {}

if cjgg.enabled then
local ftg = sw.roleSlot(_d("HhcC"))

if ftg then
table.insert(ipia, ftg)
end

if sw.splitNpc() and ftg ~= 2 then
table.insert(ipia, 2)
end
end

local grz = ug:FindFirstChild(_d("IgYIV2cTDQQSEg"))

if #ipia > 0 and grz and (not lh.enabled or sw.splitNpc()) and (sw.enabled or not xup.workPending()) then
for rvb, sunw in ipairs(ipia) do
local uoid = grz

local bpp = cjgg.bossFor(sunw, (sunw ~= 1 and not sw.splitNpc()) and 1 or nil)
local gbdr = uoid:GetAttribute(_d("ORQuQ1EJ")) == true or uoid:GetAttribute(_d("NggTUFED")) == true
local ccsv = bpp ~= nil and uoid:GetAttribute(_d("IgIAV004") .. bpp) == true
local wi = bpp and lalq(bpp)

if bpp and cjgg.pending[bpp] and os.time() >= (cjgg.pendingUntil[bpp] or 0) then
cjgg.pending[bpp] = false
cjgg.cleared[bpp] = nil
end

if bpp and sw.slotFree(sunw) and gbdr and ccsv and cjgg.cleared[bpp] ~= wi and not cjgg.pending[bpp] then
local piol = slya[bpp]
local ogr = piol and hra(piol)
local vnzt = false

if ogr then
if cjgg.walkToBoss then
local atwj = lgrd[bpp]
local wzb = qgqr.Character and qgqr.Character:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))
local zcv = ogr:GetPivot().Position
local wisf = wzb and (wzb.Position - zcv).Magnitude <= 15

if wisf then
vnzt = true
elseif atwj then
vxjo.TeleportToWorld:FireServer(atwj)

local hby = os.clock()
while os.clock() - hby < 2.5 and cjgg.enabled do
task.wait(0.1)
end

if cjgg.enabled then
local eeiz = hra(piol) or ogr
local ouy = eeiz:GetPivot()
local uju = ouy.Position + ouy.LookVector * 6
vnzt = wefp(uju, cjgg.walkSpeed, function()
return not cjgg.enabled or not cjgg.walkToBoss
end)
end
end

if not vnzt then
vnzt = xy(ogr)
end
else
vnzt = xy(ogr)
end

if vnzt then
task.wait(0.5)
end
end

if vnzt and not sw.prioBlocks(_d("AgYIV0c")) then
cjgg.inFlight[bpp] = sunw
cjgg.pending[bpp] = true
cjgg.pendingUntil[bpp] = os.time() + 15
cjgg.cleared[bpp] = wi

local bpl = cjgg.difficulties[1] or _d("HggTXlUL")
local ftwi = cjgg.progress[bpp]

if ftwi then
local ngg = ftwi.unlocked
local epcd = ftwi.cooldowns

for qju, cjv in ipairs(cjgg.difficulties) do
local ualw = not ngg or ngg[cjv] ~= false
local feem = epcd and tonumber(epcd[cjv]) or 0

if ualw and feem <= 0 then
bpl = cjv
break
end
end
end

xup.bossTeams.applyRaid(bpp)
vxjo.SetRaidDifficulty:FireServer(bpl, bpp)
task.wait(0.3)
vxjo.StartRaidBattle:FireServer(bpp)
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while lrm() do
local tnh = lh.inBattle and os.time() < lh.inBattleUntil

if lh.enabled and (sw.enabled or not xup.workPending()) and not tnh and sw.slotFree(sw.roomSlot()) and not (lh.pending and os.time() < lh.pendingUntil) then
local huz = lh.progress

if huz == nil then
vxjo.RequestInfiniteRoomProgress:FireServer()
task.wait(0.5)
else
local let = nil

for qpu, dazk in ipairs(ukxt.Milestones) do
if ukxt.isMilestoneUnlocked(dazk, huz) and not ukxt.isMilestoneCleared(dazk, huz) then
let = dazk
break
end
end

if let then

local cfb = sw.roomSlot()

lh.currentRoom = let
lh.inBattle = true
lh.inBattleUntil = os.time() + 60
lh.pending = true
lh.pendingUntil = os.time() + 10

local bcdk = bvm:FindFirstChild(cfb == 2 and _d("IgISVkAlDQQTDVZyCwMfFVM") or _d("IgISVkAlDQQTDVZyCwMfFQ"))
if bcdk and bcdk:IsA(_d("Mg4PV1UFABUiF1ZaEw")) then
bcdk:Fire(let, _d("GQkHWloOGBU4E1xbCg"))
end

local lmfi = bvm:FindFirstChild(cfb == 2 and _d("IxMAQUAuAhYOD1pAAj4fCAxxVRMYHAJT") or _d("IxMAQUAuAhYOD1pAAj4fCAxxVRMYHAI"))
if lmfi and lmfi:IsA(_d("Mg4PV1UFABUiF1ZaEw")) then
lmfi:Fire(let)
end

vxjo.StartBattle:FireServer(_d("GQkHWloOGBU4E1xbCg"), {
milestone = let,
slot = cfb,
})
task.wait(2)
end
end
end

task.wait(1)
end
end)

local function xtj(nvbo, asb)
local ejtj = bvm:FindFirstChild(_d("IwQTVlEJKwUO"))

if not ejtj then
return
end

local jpi = ejtj:FindFirstChild(nvbo)
local ogb = jpi and jpi:FindFirstChild(_d("JgYNRlErDRICDQ"), true)
local rlr = jpi and jpi:FindFirstChild(_d("PAYDVlg"), true)

if not jpi then
return
end

local jpn = false

if ogb then
jpn = ogb.Text == _d("Pwk")
elseif rlr then
jpn = not string.lower(rlr.Text):find(_d("HwEH"), 1, true)
end

if jpn ~= asb then
for ekwl, xsq in ipairs(getconnections(jpi.MouseButton1Click)) do
local puf = xsq.Function

if type(puf) == _d("FhIPUEAOAx4") then
pcall(puf)
else
pcall(function()
xsq:Fire()
end)
end
end
end
end

getgenv().ACBXSetRollButton = xtj

local function tdrb(kt)
xtj(_d("IRIIUF81AxwLI0ZAEwMe"), kt)
xtj(_d("MRIVXGYIABwlFEdACAI"), kt)
end

getgenv().ACBXSetRollUi = tdrb
bqg.setRollButton = xtj

pcall(function()
vxjo.SaveClientData:FireServer({ autoHideBattle = false })
end)

task.defer(function()
task.wait(0.5)

local ajf = bvm:FindFirstChild(_d("MgYVR1gCKwUO"))
local zgq = ajf and ajf:FindFirstChild(_d("MgYVR1gCPxMVBFZa"))
local qgt = ajf and ajf:FindFirstChild(_d("OA4FVnYGGAQLBHFBExgfCQ"))

if qgt and qgt.Visible and zgq and not zgq.Visible and gcwc() then
for oylc, oejw in ipairs(getconnections(qgt.MouseButton1Click)) do
local ptnw = oejw.Function

if type(ptnw) == _d("FhIPUEAOAx4") then
pcall(ptnw)
else
pcall(function()
oejw:Fire()
end)
end
end
end
end)

tdrb(true)

task.spawn(function()
while lrm() do

if bqg.autoRoll then
xtj(_d("MRIVXGYIABwlFEdACAI"), true)
end

if bqg.autoQuickRoll then
xtj(_d("IRIIUF81AxwLI0ZAEwMe"), true)
end

task.wait(1)
end
end)

local function isp()

if jvm.floor then
return jvm.floor
end

local ngfj = bvm:FindFirstChild(_d("MgYVR1gCKwUO"))

if not ngfj then
return nil
end

for vwgr, fdd in ipairs({ _d("JAgWVkYhAB8IE39VBQkc"), _d("IhIPdVgIAwIrAFFRCw") }) do
local gnai = ngfj:FindFirstChild(fdd)

if gnai and gnai.Visible and gnai.Text then
local ouq = tonumber(gnai.Text:match(_d("WEIFGB0")))

if ouq then
return ouq
end
end
end

local udb = ngfj:FindFirstChild(_d("NgsOXEY0DwICBF0"))
local tgje = udb and udb:FindFirstChild(_d("JAgRcVUV"))
local hony = tgje and tgje:FindFirstChild(_d("NgsOXEYrDRICDQ"))

if hony then
return tonumber(hony.Text:match(_d("WEIFGB0")))
end

return nil
end

function xup.bossTeams.swapRows(wkw)
local tyd = bvm:FindFirstChild(_d("IwIVR10JCwMgFFo"))
local fxe = tyd and tyd:FindFirstChild(_d("MRIVXGcQDQA") .. wkw .. _d("IggW"), true)

if not fxe then
return nil
end

return fxe:FindFirstChild(_d("MRIVXGcQDQA") .. wkw .. _d("Mw8EUF8")),
fxe:FindFirstChild(_d("MRIVXGcQDQA") .. wkw .. _d("JAIAXg")),
fxe:FindFirstChild(_d("MRIVXGcQDQA") .. wkw .. _d("NgsOXEY"))
end

function xup.bossTeams.swapOn(px)
local bag = bvm:FindFirstChild(_d("IwIVR10JCwMgFFo"))
local oqh = bag and bag:FindFirstChild(_d("NwIVYFETGBkJBkA"), true)

if not oqh then
return nil
end

local lg, ajei = pcall(function()
return oqh:Invoke()
end)

if lg and type(ajei) == _d("BAYDX1E") then
return ajei[px == 1 and _d("ERIVXGACDR00FlJEIgIRBQ1WUA") or _d("ERIVXGACDR00FlJEVSkeBgNfUQM")] == true
end

return nil
end

function xup.bossTeams.swapBox(zfng, vha)
if tonumber(zfng.Text) == vha then
return
end

zfng.Text = tostring(vha)

if getconnections then
for hyqy, xkhn in ipairs(getconnections(zfng.FocusLost)) do
pcall(function()
xkhn:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end

function xup.bossTeams.swapSet(wugs, vmb, zez, ssw)
local po, diza, dmv = xup.bossTeams.swapRows(wugs)

if not (po and diza and dmv) then
return false
end

zez = math.max(1, math.floor(tonumber(zez) or 1))
ssw = math.clamp(math.floor(tonumber(ssw) or 1), 1, 4)

xup.bossTeams.swapBox(dmv, zez)
xup.bossTeams.swapBox(diza, ssw)

local amjo = xup.bossTeams.swapOn(wugs)

if amjo ~= nil and amjo ~= (vmb == true) and getconnections then
pcall(function()
for tgd, mles in ipairs(getconnections(po.MouseButton1Click)) do
pcall(function()
mles:Fire()
end)
end
end)
end

local ertu = wugs == 1 and _d("") or _d("Qg")

pcall(function()
vxjo.SaveClientData:FireServer({
[_d("ERIVXGACDR00FlJE") .. ertu .. _d("NQkAUVgCCA")] = vmb == true,
[_d("ERIVXGACDR00FlJE") .. ertu .. _d("JAIAXg")] = ssw,
[_d("ERIVXGACDR00FlJE") .. ertu .. _d("NgsOXEY")] = zez,
})
end)

return true
end

function xup.bossTeams.swapApply()
local bhg = xup.bossTeams
local gkb = bhg.swap
local gza = true

if gkb.on then
gza = bhg.swapSet(1, gkb.floor > 0, gkb.floor, gkb.team)
gza = bhg.swapSet(2, gkb.floor2 > 0, gkb.floor2, gkb.team2) and gza
else
gza = bhg.swapSet(1, false, gkb.floor, gkb.team)
gza = bhg.swapSet(2, false, gkb.floor2, gkb.team2) and gza
end

bhg.swapMessage = _d("")

if not gza then
bhg.swapMessage = _d("JA8EE1MGARVAEhN1EhgfRzVWVQpMIxAAQxQVAwcUQVJGAkweCBUTVhIFHBNBSlETTF1HE1ZAFRUZCQYd")
end

bhg.paintSwap()
end

function xup.bossTeams.swapReset(zzv)
local jyci = xup.bossTeams

if zzv then
jyci.swapFired[zzv] = nil
else
jyci.swapFired = {}
end
end

function xup.bossTeams.swapTick()
local oqbg = xup.bossTeams
local leid = oqbg.swap

if not leid.on or (leid.floor <= 0 and leid.floor2 <= 0) then
if next(oqbg.swapFired) ~= nil then
oqbg.swapFired = {}
end

return
end

local fwa = os.clock()
local fmp = tkfn.remote(_d("IxAIR1cPOBUGDA"))

if fwa - (oqbg.swapWroteAt or 0) > 10 then
oqbg.swapWroteAt = fwa
oqbg.swapApply()
end

local tk = {
{
kind = _d("BAgWVkY"),
slot = sw.towerSlot(),

live = fwa - (jvm.floorAt or 0) < 90,
floor = isp(),

own = true,
},
{
kind = _d("GAYTV1cIHhU"),
slot = sw.hardcoreSlot(),
live = fycg.active(),
floor = fycg.floorNow(),

own = false,
},
}

local vib = {
{ index = 1, floor = leid.floor, team = leid.team },
{ index = 2, floor = leid.floor2, team = leid.team2 },
}

for fdbf, dhif in ipairs(tk) do
if not dhif.live then

oqbg.swapFired[dhif.kind] = nil
elseif dhif.own and fmp and dhif.floor then
local lmgb = oqbg.swapFired[dhif.kind]

for jvaz, tmpe in ipairs(vib) do
local bg = type(lmgb) == _d("BAYDX1E") and lmgb[tmpe.index]

if tmpe.floor > 0 and dhif.floor == tmpe.floor and not bg then
local cbxl = pcall(function()
fmp:FireServer(math.clamp(math.floor(tmpe.team), 1, 4), true, dhif.slot or 1)
end)

if cbxl then
lmgb = type(lmgb) == _d("BAYDX1E") and lmgb or {}
lmgb[tmpe.index] = tmpe.team
oqbg.swapFired[dhif.kind] = lmgb

oqbg.swapMessage = string.format(_d("MwYSR1gCTBYLDlxGR0kUR0wTRxAFBAQJVlBHGB9HNVZVCkxVA08"), dhif.floor, tmpe.team)
oqbg.paintSwap()
end
end
end
end
end
end

task.spawn(function()
while lrm() do
pcall(xup.bossTeams.swapTick)
task.wait(0.5)
end
end)

local function vbay()

return dgv.active() and dgv.hasReadyTarget()
end

function cjgg.worldBoss.remote(nyqh)
local gqm = cjgg.worldBoss

gqm.remotes = gqm.remotes or {}

local pxai = gqm.remotes[nyqh]

if pxai and pxai.Parent then
return pxai
end

local mmc = tkfn.remote(nyqh)

if mmc then
gqm.remotes[nyqh] = mmc
end

return mmc
end

function cjgg.worldBoss.setRepeat(kja)
local rtyw = cjgg.worldBoss
local cvo = rtyw.remote(_d("JwgTX1AlAwMUIFBADgMe"))

if not cvo then
return false
end

local sie = rtyw.state
local ovm = type(sie) == _d("BAYDX1E") and sie.repeatOn == true

if ovm == (kja and true or false) then
rtyw.repeatIntent = nil

return true
end

if kja then
local ngn = workspace:FindFirstChild(_d("JwgTX1AlAwMUIEFRCQ0"))
local fvpz = ngn and (ngn:FindFirstChild(_d("MwINX3kGFA")) or ngn)
local cwam = qgqr.Character and qgqr.Character:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not (fvpz and cwam) then
return false
end

local xd, fhz = pcall(function()
return fvpz:GetPivot()
end)

if not xd or (cwam.Position - fhz.Position).Magnitude > 60 then
return false
end
end

if rtyw.repeatIntent == kja and os.clock() - (rtyw.repeatAskedAt or 0) < 20 then
return false
end

rtyw.repeatIntent = kja

pcall(function()
cvo:FireServer(_d("AgIRVlUT"))
end)

rtyw.repeatAskedAt = os.clock()

return true
end

function cjgg.worldBoss.requestSync()
local wdzy = cjgg.worldBoss
local vguj = wdzy.remote(_d("JwgTX1AlAwMUIFBADgMe"))

if vguj then
pcall(function()
vguj:FireServer(_d("Ax4PUA"))
end)
end

wdzy.askedAt = os.clock()
end

function cjgg.worldBoss.hasWork()
local qsm = cjgg.worldBoss
local xmsv = qsm.state

if not qsm.enabled or type(xmsv) ~= _d("BAYDX1E") then
return false
end

local avt = qsm.isOpen()

if avt == nil then
avt = xmsv.open == true
end

return avt and xmsv.inFight ~= true
end

cjgg.worldBoss.bossUp = function()
local llj = cjgg.worldBoss

if not llj.enabled then
return false
end

local ziqm = llj.isOpen()

if ziqm ~= nil then
return ziqm == true
end

local vyms = llj.state

return type(vyms) == _d("BAYDX1E") and vyms.open == true
end

function cjgg.worldBoss.meter()
local tkpq = cjgg.worldBoss
local umyk = os.clock()

if umyk - (tkpq.meterAt or 0) < 1 then
return tkpq.meterCurrent, tkpq.meterMax
end

tkpq.meterAt = umyk
tkpq.meterCurrent = nil
tkpq.meterMax = nil

local ikek = ug:FindFirstChild(_d("JwgTX1AlAwMUMkdVExkD"))
local nuy = ikek and tonumber(ikek:GetAttribute(_d("PQIVVkY")))
local pi = ikek and tonumber(ikek:GetAttribute(_d("PQIVVkYqDQg")))

if nuy and pi and pi > 0 then
tkpq.meterCurrent = nuy
tkpq.meterMax = pi

return tkpq.meterCurrent, tkpq.meterMax
end

local function gfmt(gjr)
if type(gjr) ~= _d("AxMTWloA") then
return nil
end

local ybtn, zgvh = gjr:match(_d("WDxEVxFJMVtOREAeTzc7KiNYWQUxT04"))
local iht = tonumber(ybtn)

if not iht then
return nil
end

local irn = ({ K = 1000, M = 1000000, B = 1000000000 })[string.upper(zgvh or _d(""))] or 1

return iht * irn
end

local dta = bvm:FindFirstChild(_d("JwgTX1AlAwMUI1JaCQkCIBRa"))
local tmas = dta and dta:FindFirstChild(_d("MgYPXVEV"))
local vcod = tmas and tmas:FindFirstChild(_d("PQIVVkYlDQI"))
local mcaz = vcod

if vcod and not vcod:IsA(_d("JAIZR3gGDhUL")) then
mcaz = vcod:FindFirstChild(_d("JAIZRw"))
end

local jkes = mcaz and mcaz:IsA(_d("JAIZR3gGDhUL")) and mcaz.Text or nil

if type(jkes) == _d("AxMTWloA") then
local sit, bfss = jkes:match(_d("WDw/HGlMRV9PTxgd"))

tkpq.meterCurrent = gfmt(sit)
tkpq.meterMax = gfmt(bfss)
end

return tkpq.meterCurrent, tkpq.meterMax
end

function cjgg.worldBoss.meterFull()
local ocp, cly = cjgg.worldBoss.meter()

return ocp ~= nil and cly ~= nil and cly > 0 and ocp >= cly
end

cjgg.worldBoss.holdsFishing = function()
local lp = cjgg.worldBoss

if not lp.enabled or not lp.bossUp() then
return false
end

if lp.stopAtFull and lp.meterFull() then
return false
end

return sw.prioBlocks(_d("BwYVVkY"))
end

cjgg.worldBoss.holdsDigging = function()
local utf = cjgg.worldBoss

if not utf.enabled or not utf.bossUp() then
return false
end

if utf.stopAtFull and utf.meterFull() then
return false
end

return sw.prioBlocks(_d("BwYVVkY"))
end

cjgg.worldBoss.usesGameChain = function()
return true
end

function cjgg.worldBoss.travel()
local jwxi = cjgg.worldBoss
local jpx = qgqr.Character
local qzge = jpx and jpx:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not qzge or os.clock() < jwxi.travelUntil then
return
end

jwxi.travelUntil = os.clock() + 6

local toc = workspace:FindFirstChild(_d("JwgTX1AlAwMUMVxGEw0c"))
local jvya = toc and toc:FindFirstChild(_d("IAgTR1UL"))

if not jvya then
return
end

if (qzge.Position - jvya.Position).Magnitude > 150 then
local kyz = tkfn.remote(_d("JAINVkQIHgQzDmRbFQAU"))

if kyz then
pcall(function()
kyz:FireServer(_d("HAgDUU0"))
end)
end

return
end

if (qzge.Position - jvya.Position).Magnitude > 6 then
jwxi.walkLeg(jvya.Position + Vector3.new(0, 3, 0), 4)

if (qzge.Position - jvya.Position).Magnitude > 9 then
return
end
end

local ivp = jvya:FindFirstChildOfClass(_d("IBUOS10KBQQeMUFbChwE"))

if not ivp then
return
end

pcall(function()
if type(fireproximityprompt) == _d("FhIPUEAOAx4") then
fireproximityprompt(ivp)
else
ivp:InputHoldBegin()
task.wait(0.25)
ivp:InputHoldEnd()
end
end)
end

function cjgg.worldBoss.reach()
local scse = cjgg.worldBoss

local ijyi = workspace:FindFirstChild(_d("JwgTX1AlAwMUIEFRCQ0")) or workspace:FindFirstChild(_d("JwgTX1AlAwMUMkNVEAI"), true)
local any = qgqr.Character
local tr = any and any:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not (ijyi and tr) then
scse.travel()
return false
end

local bgys = ijyi:FindFirstChild(_d("MwINX3kGFA")) or ijyi
local dsec, kfju = pcall(function()
return bgys:GetPivot()
end)

if not dsec then
return false
end

local fka = kfju.Position + kfju.LookVector * 6 + Vector3.new(0, 3, 0)
local tehv = Vector3.new(kfju.Position.X, fka.Y, kfju.Position.Z)

tr.CFrame = CFrame.lookAt(fka, tehv)

return true
end

cjgg.worldBoss.cityBounds = { 19100, 20900, -850, 850 }

function cjgg.worldBoss.inArena()
local fltf = qgqr.Character and qgqr.Character:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))
local lwts = cjgg.worldBoss.cityBounds

if not fltf then
return false
end

local wgwi = fltf.Position

return wgwi.X >= lwts[1] and wgwi.X <= lwts[2]
and wgwi.Z >= lwts[3] and wgwi.Z <= lwts[4]
end

function cjgg.worldBoss.enterCity(ol)
local iqg = cjgg.worldBoss

local sxal = os.clock() + (ol or 30)

if iqg.inArena() then
return true
end

while os.clock() < sxal do
if not iqg.enabled then
return false
end

iqg.travel()

if iqg.inArena() then
return true
end

task.wait(0.5)
end

return iqg.inArena()
end

cjgg.worldBoss.walking = false
cjgg.worldBoss.walkStartedAt = 0

function cjgg.worldBoss.walkLeg(rb, mvtk)
local wtz = cjgg.worldBoss
local vlk = qgqr.Character
local xgpa = vlk and vlk:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))
local tuo = vlk and vlk:FindFirstChildOfClass(_d("OBIMUloIBRQ"))

if not (xgpa and tuo) then
return false
end

if wtz.walking and os.clock() - (wtz.walkStartedAt or 0) < 45 then
return false
end

mvtk = mvtk or 6

wtz.walking = true
wtz.walkStartedAt = os.clock()

local bq, wgj = pcall(function()
local blm = os.clock() + 40
local hjk = 0
local vcel = xgpa.Position
local cz = os.clock()

while wtz.enabled and os.clock() < blm do
local hpsa = Vector3.new(rb.X - xgpa.Position.X, 0, rb.Z - xgpa.Position.Z)

if hpsa.Magnitude <= mvtk then
return true
end

if os.clock() - hjk >= 0.25 then
tuo:MoveTo(Vector3.new(rb.X, xgpa.Position.Y, rb.Z))
hjk = os.clock()
end

if os.clock() - cz >= 1.2 then
if (xgpa.Position - vcel).Magnitude < 2 then
tuo.Jump = true
end

vcel = xgpa.Position
cz = os.clock()
end

task.wait(0.1)
end

return Vector3.new(rb.X - xgpa.Position.X, 0, rb.Z - xgpa.Position.Z).Magnitude <= mvtk
end)

pcall(function()
tuo:MoveTo(xgpa.Position)
end)

wtz.walking = false

return bq and wgj == true
end

function cjgg.worldBoss.walkIn(jmu)
local yky = cjgg.worldBoss
local sto = workspace:FindFirstChild(_d("JwgTX1AlAwMUIEFRCQ0"))
local fwf = sto and (sto:FindFirstChild(_d("MwINX3kGFA")) or sto) or nil
local pyg = qgqr.Character and qgqr.Character:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

if not (fwf and pyg) then
return false
end

local vuk, bzth = pcall(function()
return fwf:GetPivot()
end)

if not vuk then
return false
end

local hxwn = bzth.Position + bzth.LookVector * 6 + Vector3.new(0, 3, 0)

if (pyg.Position - hxwn).Magnitude <= (jmu or 10) then
return true
end

local og = yky.walkLeg(hxwn, jmu or 6)

if not og then
og = (pyg.Position - bzth.Position).Magnitude <= 25
end

return og
end

function cjgg.worldBoss.approach()
local olj = cjgg.worldBoss

if not olj.walkToBoss then
return olj.reach()
end

if not olj.enterCity() then
return false
end

return olj.walkIn(10)
end

function cjgg.worldBoss.fight()
local pcvp = cjgg.worldBoss
local euqh = pcvp.remote(_d("JwgTX1AlAwMUIFBADgMe"))

local function wa(jse)
pcvp.nextFightAt = os.clock() + (jse or 20)

return false
end

if not euqh then
return wa(60)
end

if pcvp.stopAtFull and pcvp.meterFull() then
return wa(20)
end

if dk.enabled
and (dk.tpToBay or dk.deepZone)
and dk.phase ~= _d("GQMNVg") then
return false
end

pcvp.takingUntil = os.clock() + 45

local bnf = workspace:FindFirstChild(_d("JwgTX1AlAwMUIEFRCQ0"))
local pyu = bnf and (bnf:FindFirstChild(_d("MwINX3kGFA")) or bnf) or nil
local lfry = qgqr.Character and qgqr.Character:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))

local function coz()
if not (pyu and lfry) then
return nil
end

local gdah, orlh = pcall(function()
return pyu:GetPivot()
end)

if not gdah then
return nil
end

return (lfry.Position - orlh.Position).Magnitude
end

local ljno = pcvp.usesGameChain() and (coz() or math.huge) <= 60

if not ljno and not pcvp.approach() then
pcvp.takingUntil = os.clock() + 3

return wa(pcvp.inArena() and 3 or 20)
end

if pyu and lfry then
local sznf, nhb = pcall(function()
return pyu:GetPivot()
end)

if not sznf or (lfry.Position - nhb.Position).Magnitude > 60 then
pcvp.takingUntil = os.clock() + 2

return wa(pcvp.inArena() and 2 or 10)
end
end

xup.bossTeams.applyTeam(pcvp.team)

task.wait(ljno and 0 or (pcvp.walkToBoss and 0.3 or 1.4))

pcall(function()
euqh:FireServer(_d("Fg4GW0A"))
end)

pcvp.fightAt = os.clock()

pcvp.holdUntil = os.clock() + (pcvp.usesGameChain() and 0.7 or 4)

pcvp.takingUntil = os.clock() + 0.6

if dk.enabled and (dk.tpToBay or dk.deepZone) then
dk.deepPhase = _d("GQMNVg")
dk.deepStageAt = 0
dk.nextCastAt = 0
end

pcvp.killsAtFire = type(pcvp.state) == _d("BAYDX1E") and tonumber(pcvp.state.kills) or nil

if not pcvp.usesGameChain() and dk.enabled
and (dk.tpToBay or dk.deepZone) then
pcvp.nextFightAt = os.clock() + 1
end

return true
end

function cjgg.worldBoss.buy(lwle)
local lrcq = cjgg.worldBoss
local aae = lrcq.remote(_d("JwgTX1AlAwMUIFBADgMe"))

lwle = lwle or 1

if not aae then
return 0
end

local msdr = 0

for kws = 1, lwle do
local iydd = lrcq.state

if type(iydd) ~= _d("BAYDX1E") or type(iydd.shop) ~= _d("BAYDX1E") then
break
end

if os.clock() < lrcq.buyAt then
break
end

local oyhx = tonumber(iydd.medals) or 0
local aoox = nil

for oahe, qwai in ipairs(iydd.shop) do
local dlx = tonumber(qwai.price) or 0
local ufwh = qwai.kind ~= _d("GRMEXg") or (tonumber(qwai.left) or 0) > 0

if lrcq.selected[qwai.id] == true and ufwh and qwai.owned ~= true and dlx <= oyhx then
aoox = qwai
break
end
end

if not aoox then
break
end

pcall(function()
aae:FireServer(_d("EhIY"), aoox.id, 1)
end)

msdr = msdr + 1
lrcq.bought = lrcq.bought + 1
lrcq.buyAt = os.clock() + 1.2

lrcq.syncedAt = 0
lrcq.requestSync()
task.wait(1.1)
end

return msdr
end

cjgg.worldBoss.questGroups = { _d("AAITQFsJDRw"), _d("FwsOUVUL"), _d("Fg4NXw"), _d("AgISR0YODwQODl0") }

function cjgg.worldBoss.questRows(hyle)
local pkse = cjgg.worldBoss
local asba = type(hyle) == _d("BAYDX1E") and hyle.quests or nil
local jdf = {}

if type(asba) ~= _d("BAYDX1E") then
return jdf
end

for efa, jyfb in ipairs(pkse.questGroups) do
local howj = asba[jyfb]

if type(howj) == _d("BAYDX1E") then
for tho, muny in ipairs(howj) do
if type(muny) == _d("BAYDX1E") then
table.insert(jdf, muny)
end
end
end
end

return jdf
end

function cjgg.worldBoss.claim()
local vi = cjgg.worldBoss
local whj = vi.remote(_d("JwgTX1AlAwMUIFBADgMe"))
local qcfi = vi.state

if not whj or type(qcfi) ~= _d("BAYDX1E") or type(qcfi.quests) ~= _d("BAYDX1E") then
return 0
end

if os.clock() < vi.claimAt then
return 0
end

local wcp = vi.questRows(qcfi)

if #wcp == 0 then
return 0
end

local tyk = {}

for zngt, nnmh in ipairs(wcp) do
if nnmh.id ~= nil then
tyk[tostring(nnmh.id)] = true
end
end

for vdej, lfmt in pairs(vi.claimFired) do
if not tyk[vdej] or os.clock() - lfmt > 120 then
vi.claimFired[vdej] = nil
end
end

local obuc = nil

for qnb, nup in ipairs(wcp) do
if nup.complete == true and nup.claimed ~= true and nup.id ~= nil then
local hae = tostring(nup.id)
local ctb = vi.claimFired[hae]

if not (ctb and os.clock() - ctb < 6) then
obuc = nup
break
end
end
end

if not obuc then
return 0
end

vi.claimFired[tostring(obuc.id)] = os.clock()
vi.claimedTotal = vi.claimedTotal + 1

pcall(function()
whj:FireServer(_d("EwsAWlk"), obuc.id)
end)

vi.claimAt = os.clock() + 2
vi.syncedAt = 0
vi.requestSync()

return 1
end

cjgg.worldBoss.syncRemote = jz(_d("JwgTX1AlAwMUMkpaBA"))

if cjgg.worldBoss.syncRemote then
xftw(cjgg.worldBoss.syncRemote.OnClientEvent, function(ztcb)
local hqj = cjgg.worldBoss

if type(ztcb) ~= _d("BAYDX1E") then
return
end

hqj.state = ztcb
hqj.syncedAt = os.clock()

if ztcb.inFight == true then
hqj.wasFighting = true
elseif hqj.wasFighting then
hqj.wasFighting = false

if dk.enabled then
pcall(dk.recover)
end
end
end)
end

task.spawn(function()
cjgg.worldBoss.requestSync()
end)

task.spawn(function()
while lrm() do
local xuif = cjgg.worldBoss
local yqth = xuif.state

if xuif.autoClaim then
if os.clock() - xuif.syncedAt > 4 and os.clock() - xuif.askedAt > 1 then
xuif.requestSync()
end

xuif.claim()
end

if xuif.enabled then

if os.clock() - xuif.syncedAt > (xuif.bossUp() and 1.5 or 4) and os.clock() - xuif.askedAt > 1 then
xuif.requestSync()
end

if xuif.autoBuy and next(xuif.selected) then
xuif.buy(1)
end

local we = type(yqth) == _d("BAYDX1E") and yqth.repeatOn == true

if xuif.usesGameChain() then

local ygt = type(yqth) == _d("BAYDX1E") and tonumber(yqth.kills) or nil

if ygt and ygt ~= xuif.seenKills then
xuif.seenKills = ygt
xuif.progressAt = os.clock()

xuif.chainWaitAt = nil
end

if xuif.bossUp() and not we and os.clock() - (xuif.repeatAskedAt or 0) > 20 then
if xuif.approach() then
xuif.repeatSeeded = true
xuif.progressAt = os.clock()

xuif.setRepeat(true)
end
end

if xuif.hasWork() and os.clock() >= xuif.holdUntil
and os.clock() >= (xuif.nextFightAt or 0)
and os.clock() - (xuif.kickAt or 0) > 0.5
and not (xuif.stopAtFull and xuif.meterFull())
and not sw.prioBlocks(_d("EggSQA")) then
xuif.chainWaitAt = nil
xuif.kickAt = os.clock()
xuif.fight()
elseif not xuif.hasWork() then
xuif.chainWaitAt = nil
end

if not xuif.bossUp() then
xuif.chainWaitAt = nil

if we and os.clock() - (xuif.repeatAskedAt or 0) > 6 then
xuif.repeatSeeded = false
xuif.setRepeat(false)
end
end
elseif xuif.isOpen() and we and os.clock() - (xuif.repeatAskedAt or 0) > 6 then
xuif.setRepeat(false)
end

local matt = type(yqth) == _d("BAYDX1E") and tonumber(yqth.kills) or nil

if xuif.killsAtFire ~= nil and matt == xuif.killsAtFire
and os.clock() - (xuif.fightAt or 0) > (xuif.inArena() and 2.5 or 9)
and os.clock() < (xuif.nextFightAt or 0)
and os.clock() >= xuif.holdUntil then
xuif.killsAtFire = nil
xuif.nextFightAt = os.clock()
end

if not xuif.usesGameChain() and xuif.hasWork() and os.clock() >= xuif.holdUntil
and os.clock() >= (xuif.nextFightAt or 0)
and not (xuif.stopAtFull and xuif.meterFull()) then

local ajtj = vbay()
local xly = sw.roleSlot(_d("HhcC")) or 1
local cwk = sw.enabled and sw.busy(xly)

if not ajtj and not cwk then
xuif.fight()
end
end
end

local mob = xuif.bodyText()

if xuif.bodyParagraph and mob ~= xuif.bodyShown then
xuif.bodyShown = mob

pcall(function()
xuif.bodyParagraph:UpdateBody(mob)
end)
end

local oox = xuif.shopText()

if xuif.shopParagraph and oox ~= xuif.shopShown then
xuif.shopShown = oox

pcall(function()
xuif.shopParagraph:UpdateBody(oox)
end)
end

task.wait(0.5)
end
end)

function sw.roomsHaveWork()
if not lh.enabled then
return false
end

local iul = lh.progress

if iul == nil then
return true
end

for pxd, hjyd in ipairs(ukxt.Milestones) do
if ukxt.isMilestoneUnlocked(hjyd, iul) and not ukxt.isMilestoneCleared(hjyd, iul) then
return true
end
end

return false
end

function sw.raidHasWork()
if not cjgg.enabled then
return false
end

local akf = ug:FindFirstChild(_d("IgYIV2cTDQQSEg"))

if not akf then
return false
end

if not (akf:GetAttribute(_d("ORQuQ1EJ")) == true or akf:GetAttribute(_d("NggTUFED")) == true) then
return false
end

for hrb, suiz in ipairs({ 1, 2 }) do
local hqqu = (suiz ~= 1 and not sw.splitNpc()) and 1 or nil
local elo = cjgg.picks[hqqu or suiz] and cjgg.bossFor(suiz, hqqu)

if elo and cjgg.cleared[elo] ~= lalq(elo) then
return true
end
end

return false
end

function sw.prioRank(cdvy)
for spko, hwc in ipairs(sw.prioGroups) do
if hwc.id == cdvy then
return hwc.rank
end
end

return 99
end

function sw.prioWants(tucx)
if tucx == _d("AgYIV0c") then
return sw.raidHasWork()
elseif tucx == _d("EggSQA") then

return cjgg.worldBoss.hasWork()
elseif tucx == _d("HhcC") then
return vbay() or sw.roomsHaveWork()
elseif tucx == _d("BAgWVkY") then
return jvm.enabled or jvm.nightmare == true or unsr.run.enabled
elseif tucx == _d("GAYTV1cIHhU") then
return fycg.active()
elseif tucx == _d("BwYVVkY") then
return dk.enabled or awwc.autoOn == true
end

return false
end

function sw.prioBlocks(quys)
local eya = sw.prioRank(quys)

for obi, ukg in ipairs(sw.prioGroups) do
if ukg.id ~= quys and ukg.rank < eya and sw.prioWants(ukg.id) then
return true
end
end

return false
end

function sw.towerYields()
return sw.prioBlocks(_d("BAgWVkY"))
end

function sw.towerOutranks()
return not sw.enabled and (fycg.active() or unsr.run.enabled)
end

local function pcm(rgqy)
if not rgqy then
return false
end

local dqug = false

for gnp, gml in ipairs(getconnections(rgqy.MouseButton1Click)) do
local anmj = gml.Function

if type(anmj) == _d("FhIPUEAOAx4") then
pcall(anmj)
else
pcall(function()
gml:Fire()
end)
end

dqug = true
end

return dqug
end

function lqmk()
for fif, cdpa in ipairs({ _d("MgYVR1gCKwUO"), _d("MgYVR1gCKwUOUw") }) do
local pejt = bvm:FindFirstChild(cdpa)

if pejt then
local gfd = pejt:FindFirstChild(_d("MgYVR1gCPxMVBFZa"))
local aki = gfd and gfd:FindFirstChild(_d("IRIIUF8gBQYCNEN2EhgECA8"))

if pcm(aki) then
return true
end

local krqd = pejt:FindFirstChild(_d("NgsOXEY0DwICBF0"))
local jehc = krqd and krqd:FindFirstChild(_d("MggVR1sKLhEV"))
local xrmb = jehc and jehc:FindFirstChild(_d("Nw4XVmEXLgUTFVxa"))

if pcm(xrmb) then
return true
end
end
end

local al = ug:FindFirstChild(_d("IgIMXEACHw"))
local kqyl = al and al:FindFirstChild(_d("Nw4XVmEXOB8QBEE"))
local iph = al and al:FindFirstChild(_d("NQkFZ1sQCQI1BF5bEwk"))

if not (kqyl or iph) then
return false
end

if kqyl then
pcall(function()
kqyl:FireServer()
end)
end

if iph then
pcall(function()
iph:FireServer(1)
end)
end

jvm.manualPause = false
jvm.floor = nil
tkfn.restorePause()

return true
end

local nvqg = lqmk

function lqmk()

jvm.lastGiveUp = {
at = os.time(),
clock = os.clock(),
floor = jvm.floor,
parked = tkfn.parked(),
active = upyh(),
hard = tkfn.hardNow(),
nightmare = jvm.nightmare == true,
caller = debug.traceback(_d(""), 2),
}

local aic = nvqg()

if aic then
wk.armedAt = os.clock()
end

return aic
end

function ggku(ems)

local xwkv = false

if ems ~= false and upyh() then
local itbh = isp()

if itbh then
xwkv = tkfn.pauseAt(true, itbh) or xwkv

jvm.pauseArmed = true
end
end

for cim, zste in ipairs({ _d("MgYVR1gCKwUO"), _d("MgYVR1gCKwUOUw") }) do
local zysd = bvm:FindFirstChild(zste)

if zysd then
local hrfj = zysd:FindFirstChild(_d("MgYVR1gCPxMVBFZa"))
local vc = hrfj and hrfj:FindFirstChild(_d("IRIIUF8lHhUGCnFBExgfCQ"))

if vc then

if tostring(vc.Text):find(_d("kvvy"), 1, true) then
xwkv = true
elseif pcm(vc) then
xwkv = true
end
end

local aks = zysd:FindFirstChild(_d("NgsOXEY0DwICBF0"))

if aks and aks.Visible then
local iwx = aks:FindFirstChild(_d("MggVR1sKLhEV"))
local zzj = iwx and iwx:FindFirstChild(_d("JAYKVnYVCREMI0ZAEwMe"))

if pcm(zzj) then
xwkv = true
end
end
end
end

return xwkv
end

function fycg.pauseRun()
if not upyh() then
pcall(function()
cng:Dialog({
Title = _d("IAYUQFFHJQMLAF1QRyQRFQVQWxUJ"),
Description = _d("PghBR1sQCQJHE0ZaRwUDRw1aQgJMAg4GW0BHAh8QTRNHCEwEDwRBUUcFA0cPXEAPBR4AQUdbRxwREhJWGg"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})
end)

return
end

fycg.paused = true
fycg.manualPause = true
local igh = ggku(false)

pcall(function()
cng:Notify({
Title = _d("IAYUQFFHJQMLAF1QRyQRFQVQWxUJ"),
Description = igh and _d("JAgWVkZHHgUJQUNVEh8VA08") or _d("IhIPE10UTBwOF1YYRw4FE0FdW0cOAgIAWBQFGQQTDl0UAQMFCQUd"),
Lifetime = 5,
})
end)
end

function fycg.giveUpRun()
if not upyh() then
pcall(function()
cng:Dialog({
Title = _d("Nw4XVhQyHFAuEl9VCQhQLwBBUAQDAgI"),
Description = _d("PghBR1sQCQJHE0ZaRwUDRw1aQgJMAg4GW0BHAh8QTRNHCEwEDwRBUUcFA0cPXEAPBR4AQUdbRwsZEQQTQRdC"),
Buttons = {
{
Name = _d("NwgVE10T"),
},
},
})
end)

return
end

fycg.gaveUp = true
fycg.paused = true
local whx = lqmk()

pcall(function()
cng:Notify({
Title = _d("Nw4XVhQyHFAuEl9VCQhQLwBBUAQDAgI"),
Description = whx and _d("NwYXVhQSHFATCVYUBBkCFQRdQEcYHxAEQRQBAB8IEx0") or _d("IhIPE10UTBwOF1YYRw4FE0FdW0cLGREEE0EXTBISFUdbCUwWCBRdUEk"),
Lifetime = 5,
})
end)
end

task.spawn(function()
while lrm() do

pcall(tkfn.pinMode)

if jvm.pauseArmed and not zq.enabled
and (not jvm.enabled or not jvm.paused) then
tkfn.restorePause()

if tkfn.pauseState() ~= true then
jvm.pauseArmed = false
end
end

if jvm.enabled and not jvm.manualPause and sw.towerSlot() ~= nil
and not unsr.run.enabled then

local iuy = os.clock() - (jvm.floorAt or 0) > 12
and os.clock() - (jvm.battleAt or 0) > 12

local yog = sw.towerSlot() == 1 and not jvm.paused
and not (zq.enabled and zq.floor > 0)
and iuy
and tkfn.parked()

if yog then
jvm.parkedAt = jvm.parkedAt > 0 and jvm.parkedAt or os.clock()

if os.clock() - jvm.parkedAt >= 25 then
jvm.parkedAt = os.clock()
lqmk()
end
else
jvm.parkedAt = 0
end

local zup = tkfn.hardPickNow()

local djyy = not jvm.paused and not jvm.pending
and not (zq.enabled and zq.floor > 0)
and upyh()
and zup ~= nil
and zup ~= (jvm.nightmare == true)

if djyy then
jvm.modeWrongAt = jvm.modeWrongAt or os.clock()
else
jvm.modeWrongAt = nil
end

if jvm.modeWrongAt and os.clock() - jvm.modeWrongAt > 20
and os.clock() - (jvm.modeFixAt or 0) > 20 then
jvm.modeFixAt = os.clock()
jvm.modeWrongAt = nil
tkfn.endIfWrongMode(jvm.nightmare == true)
end

if (jvm.floorAt or 0) > 0 and not jvm.paused
and os.clock() - jvm.floorAt > 60
and os.clock() - (jvm.battleAt or 0) > 60
and not upyh()
and not sw.busy(sw.towerSlot() or 1) then
jvm.floorAt = 0
jvm.battleAt = 0
jvm.floor = nil
end

if not sw.enabled and (sw.towerOutranks() or sw.towerYields()) then
if not jvm.paused then
jvm.paused = true
ggku()
end

elseif sw.slotFree(sw.towerSlot() or 1)
and (jvm.floorAt or 0) == 0
and not xup.bossTeams.swapHold then
local eonn = isp()
local nptg = zq.enabled and zq.floor or 0
local iww = nptg > 0 and eonn ~= nil and eonn >= nptg

if iww then
if not jvm.paused then
jvm.paused = true
ggku()
end
else

if jvm.paused then
jvm.paused = false
tkfn.restorePause()
end

if not (jvm.pending and os.time() < jvm.pendingUntil) then

xup.bossTeams.applyTower(_d("BAgWVkY"), 1)

tkfn.hardPick(jvm.nightmare == true)
vxjo.EndTowerRemote:FireServer(1)
task.wait(0.25)

vxjo.StartBattle:FireServer(_d("BAgWVkY"), { hard = jvm.nightmare == true })

zpw.triggered = false
zpw.weatherTriggered = false

jvm.floorAt = os.clock()

jvm.floor = nil
jvm.pending = true
jvm.pendingUntil = os.time() + 8
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while lrm() do
if fycg.active() and sw.hardcoreSlot() ~= nil then
local uasg = sw.hardcoreSlot() or 1
local wwvd = fycg.floorNow()

local zkr = zq.enabled and zq.floor or 0
local ltqc = zpw.enabled and zpw.floor or 0

if zkr <= 0 and not fycg.stoodDown and not fycg.manualPause
and not xup.bossTeams.swapHold then
fycg.paused = false
end

if fycg.gaveUp then

elseif ltqc > 0 and wwvd and wwvd >= ltqc then
fycg.gaveUp = true
fycg.paused = true
local eqc = lqmk()

pcall(function()
cng:Notify({
Title = _d("MRIVXBQgBQYCQWZE"),
Description = eqc and (_d("NwYXVhQSHFAGFRNcBh4UBA5BUUcKHAgOQRQ") .. wwvd .. _d("Xg")) or (_d("OAYTV1cIHhVHB19bCB5Q") .. wwvd .. _d("UBUEUlcPCRRLQVFBE0weCEFUXREJUBIRE1YSGAQIDxNSCBkeA08")),
Lifetime = 5,
})
end)
elseif wwvd and zkr > 0 and wwvd >= zkr then
if not fycg.paused then
fycg.paused = true
ggku(false)
end
elseif sw.prioBlocks(_d("GAYTV1cIHhU")) then

if not fycg.stoodDown then
fycg.stoodDown = true
fycg.paused = true
ggku(false)
end
elseif fycg.stoodDown then

fycg.stoodDown = false
fycg.paused = false
elseif not fycg.paused and not xup.bossTeams.swapHold then
if sw.slotFree(uasg) and not (fycg.pending and os.time() < fycg.pendingUntil) then
fycg.start(uasg)
task.wait(2)
end
end
end

task.wait(1)
end
end)

function sw.slotActivity(iz)
if not sw.busy(iz) then
return nil
end

local lft = sw.role[iz]
local yah = bvm:FindFirstChild(iz == 2 and _d("MgYVR1gCKwUOUw") or _d("MgYVR1gCKwUO"))
local uns = yah and yah:FindFirstChild(_d("IhIPdVgIAwIrAFFRCw"))
local qjvr = uns and uns.Text or _d("")

if lh.enabled and lft == _d("HhcC") then
local rndy = qjvr:match(_d("LjUOXFlCH1tPRFcfTg"))

if rndy then
return _d("OQkHWloOGBVHE1xbCh9QSkFBWwgBUA") .. rndy
end
end

if sw.isTowerRole(lft)
and (jvm.enabled or unsr.run.enabled or fycg.active()) then
local jif = qjvr:match(_d("LiENXFsVSQNMSRZQTEU"))

if jif then
return sw.roleName(iz) .. _d("UEpBVVgIAwJH") .. jif
end
end

return nil
end

function sw.statusText()
if not sw.enabled then
return _d("MRIVXBQ0AB8TQVxSAUxdRwRFURUVBA8IXVNHHgUJEhNbCUwDCw5HFFZC")
end

local dba = {}

for rmvh = 1, 2 do
local gnxy = _d("IwsORxQ") .. tostring(rmvh) .. _d("UEpB")
local tgte = sw.slotActivity(rmvh)

if rmvh == 2 and sw.hasSlot2 == false then
gnxy = gnxy .. sw.roleLabel(rmvh) .. _d("UEpBX1sEBxUDQRtaAgkUFEFHXAJMNBIAXxQlDQQTDVYUNAAfE0g")
elseif tgte then
gnxy = gnxy .. tgte
elseif sw.busy(rmvh) then
gnxy = gnxy .. sw.roleLabel(rmvh) .. _d("UEpBVV0ABAQOD1Q")
else
gnxy = gnxy .. sw.roleLabel(rmvh) .. _d("UEpBWlALCQ")
end

table.insert(dba, gnxy)
end

return table.concat(dba, _d("em0"))
end

task.spawn(function()
while lrm() do
sw.hasSlot2 = sw.detectSlot2()
task.wait(5)
end
end)

task.spawn(function()
while lrm() do

if not fycg.island and zq.enabled and zq.floor > 0 then
local dkyc = isp()

if dkyc and dkyc >= zq.floor then
if not zq.triggered then
zq.triggered = true
ggku()

pcall(function()
vxjo.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = dkyc,
})
end)
end
else
zq.triggered = false
end
end

if not fycg.island and zpw.enabled and zpw.floor > 0 then
local gu = isp()

if gu and gu >= zpw.floor then

if not zpw.triggered and upyh() then
zpw.triggered = true
local vzeq = lqmk()

pcall(function()
cng:Notify({
Title = _d("MRIVXBQgBQYCQWZE"),
Description = vzeq and (_d("NwYXVhQSHFAGFRNSCwMfFUE") .. gu .. _d("Xg")) or (_d("NgsOXEZH") .. gu .. _d("UBUEUlcPCRRLQVFBE0weCEFUXREJUBIRE1YSGAQIDxNSCBkeA08")),
Lifetime = 5,
})
end)
end
else
zpw.triggered = false
end
end

if not fycg.island and zpw.weatherEnabled then
local nrw = isp()
local hlyq = zpw.weatherMinFloor <= 0
or (nrw ~= nil and nrw >= zpw.weatherMinFloor)
local rzxa = hlyq and zpw.weatherWanted() or nil

if rzxa then
if not zpw.weatherTriggered
and zpw.weatherGivenFor ~= zpw.weatherNow
and upyh() then
zpw.weatherTriggered = true
zpw.weatherGivenFor = zpw.weatherNow

local pinb = lqmk()

pcall(function()
cng:Notify({
Title = _d("JwIAR1wCHlAgCEVRRzkA"),
Description = pinb
and (_d("NwYXVhQSHFAGFRNSCwMfFUE") .. tostring(nrw) .. _d("UA4PEw") .. rzxa .. _d("Xg"))
or (rzxa .. _d("UA4SE0EXQFAFFEcUCQNQAAhFUUcZAEcDRkATAx5HAF1HEAkCAgUd")),
Lifetime = 5,
})
end)
end
else
zpw.weatherTriggered = false
end
end

task.wait(1)
end
end)

task.spawn(function()
if vxjo.WeatherChanged then
pcall(function()
xftw(vxjo.WeatherChanged.OnClientEvent, function(zahd)

zpw.weatherNow = nil
zpw.weatherAt = 0
zpw.weatherGivenFor = nil
wk.weatherSpent = nil

if type(zahd) == _d("AxMTWloA") then
zpw.weatherNow = zahd
end
end)
end)
end

while lrm() do
if os.clock() - zpw.weatherAt > 5 then
zpw.weatherAt = os.clock()

if vxjo.RequestWeatherState then
local utcs, xh = pcall(function()
return vxjo.RequestWeatherState:InvokeServer()
end)

if utcs and type(xh) == _d("AxMTWloA") then
if zpw.weatherNow ~= nil and zpw.weatherNow ~= xh then
wk.weatherSpent = nil
zpw.weatherGivenFor = nil
end

zpw.weatherNow = xh
end
end
end

task.wait(1)
end
end)

task.spawn(function()
local tex = nil
local teui = nil
local tagf = 0

while lrm() do

if (wk.onWeather or wk.afterGiveUp) and os.clock() - tagf > 60 then
tagf = os.clock()

pcall(function()
vxjo.RequestItemSync:FireServer()
end)
end

if wk.onWeather and next(wk.weatherPotions) ~= nil then
local qxvn = zpw.weatherWanted(wk.weathers)

if qxvn and zpw.weatherNow ~= wk.weatherSpent then

wk.weatherSpent = zpw.weatherNow
wk.pop(wk.weatherPotions, wk.weatherAmount, _d("JwIAR1wCHlA") .. qxvn)
end
end

if wk.afterGiveUp and next(wk.giveUpPotions) ~= nil and wk.armedAt > 0 then

local wril = os.clock() - wk.armedAt

if not upyh() or wril >= 3 then
if wril <= 30 then
wk.armedAt = 0
wk.pop(wk.giveUpPotions, wk.giveUpAmount, _d("MQEVVkZHCxkRBBNBFw"))
else

wk.armedAt = 0
end
end
end

local ccx = wk.status()

if ccx ~= tex then
tex = ccx

pcall(function()
wk.weatherParagraph:UpdateBody(ccx)
end)
end

local dlyo = wk.giveUpStatus()

if dlyo ~= teui then
teui = dlyo

pcall(function()
wk.giveUpParagraph:UpdateBody(dlyo)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while lrm() do
local ipn = dk.stick

if ipn.enabled and os.clock() >= ipn.at then
ipn.at = os.clock() + 3

local gwsb = nil

for mxi, tld in ipairs(workspace:GetDescendants()) do
if (tld:IsA(_d("MgYSVmQGHgQ")) or tld:IsA(_d("PQgFVlg")))
and ipn.names[string.lower(tld.Name)] then
gwsb = tld
break
end
end

local wko = qgqr.Character
local ajht = wko and wko:FindFirstChild(_d("OBIMUloIBRQ1DlxANw0CEw"))
local ezwj = gwsb and (gwsb:IsA(_d("MgYSVmQGHgQ")) and gwsb or gwsb:FindFirstChildWhichIsA(_d("MgYSVmQGHgQ"), true))

if ezwj and ajht then
local wtas = ezwj:FindFirstChildWhichIsA(_d("IBUOS10KBQQeMUFbChwE"))
or (gwsb ~= ezwj and gwsb:FindFirstChildWhichIsA(_d("IBUOS10KBQQeMUFbChwE"), true))

if (ajht.Position - ezwj.Position).Magnitude > 4 then
pcall(function()
wko:PivotTo(CFrame.new(ezwj.Position + Vector3.new(0, 3, 0)))
end)

task.wait(0.4)
end

if wtas then
pcall(function()
wtas:InputHoldBegin()
task.wait(0.2)
wtas:InputHoldEnd()
end)
end

ipn.hits = ipn.hits + 1
ipn.last = _d("AA4CWFEDTAUXQVJARw") .. math.floor(ezwj.Position.X) .. _d("XEc") .. math.floor(ezwj.Position.Z)

pcall(function()
cng:Notify({
Title = _d("PBICWBQ0GBkECg"),
Description = ipn.last,
Lifetime = 4,
})
end)
elseif gwsb then
ipn.last = _d("FggUXVBH") .. gwsb:GetFullName() .. _d("XEcPXEAPBR4AQUdbRx8EBg9XFAgC")
else
ipn.last = _d("HghBQEAODxtHCF0UEwQVRxZcRgsI")
end
end

task.wait(1)
end
end)

getgenv().ACBXStick = dk.stick

task.spawn(function()

local geuv = game:GetService(_d("Jg4TR0EGADkJEUZAKg0eBgZWRg"))

local function unre()
local boy = qgqr.Character
local vntl = boy and boy:FindFirstChildOfClass(_d("OBIMUloIBRQ"))

if vntl and vntl.Health > 0 then
pcall(function()
vntl.Jump = true
end)
end

pcall(function()
geuv:SendKeyEvent(true, Enum.KeyCode.Space, false, qgqr)
end)

task.wait(0.05)

pcall(function()
geuv:SendKeyEvent(false, Enum.KeyCode.Space, false, qgqr)
end)

oqp.jumps = oqp.jumps + 1
end

while lrm() do
if oqp.enabled and os.clock() >= oqp.nextAt then
oqp.nextAt = os.clock() + 300
unre()
end

task.wait(1)
end
end)

cng:SetState(true)

task.defer(function()
local wkg
for wgqe, jojb in ipairs(game:GetService(_d("MwgTVnMSBQ")):GetDescendants()) do
if jojb:IsA(_d("JAIZR3gGDhUL")) and jojb.Text == xgv then
wkg = jojb
break
end
end

if not wkg then
return
end

local dhy = wkg
while dhy and not (dhy:IsA(_d("NhUAXlE")) and dhy.AbsoluteSize.X >= 600 and dhy.AbsoluteSize.Y >= 400) do
dhy = dhy.Parent
end

if dhy then
dhy.AnchorPoint = Vector2.new(0, 0)

local cvg = dhy.AbsoluteSize
dhy.Position = UDim2.new(0.5, -cvg.X / 2, 0.5, -cvg.Y / 2 - 20)
end
end)

task.defer(function()
task.wait(0.1)

for detf, bevv in ipairs(game:GetService(_d("MwgTVnMSBQ")):GetDescendants()) do
if bevv:IsA(_d("IwQTXFgLBR4AJ0FVCgk")) and bevv.Name == _d("NQsEXlEJGAM0AkFbCwAZCQY") then
bevv.CanvasPosition = Vector2.new(0, 0)
end
end
end)

getgenv().ACBXTowerRunActive = upyh
getgenv().ACBXWindow = cng

getgenv().ACBXPriority = {
groups = sw.prioGroups,
rows = bqg.prioRows,
rank = sw.prioRank,
wants = sw.prioWants,
blocks = sw.prioBlocks,
set = function(rxy, ldv)
bqg.setPriority(rxy, ldv)
end,
}

oct.repo = _d("MwVTfBsGDxIf")
oct.url = _d("GBMVQ0ddQ18VAEQaAAUEDxRRQRQJAgQOXUACAgRJAlxZSC8SVS4cVQQOCEgMUl0JQxEEA0saCxkR")
oct.versionUrl = _d("GBMVQ0ddQ18VAEQaAAUEDxRRQRQJAgQOXUACAgRJAlxZSC8SVS4cVQQOCEgMUl0JQwYCE0BdCAJeExlH")

oct.announced = false

function oct.fetch(yhe)

local jtz, zush = pcall(function()
return game:HttpGet(yhe .. _d("TxFc") .. os.time() .. _d("VhVc") .. math.random(1, 100000))
end)

if not jtz or type(zush) ~= _d("AxMTWloA") or #zush == 0 then
return nil
end

if zush:find(_d("LlNRBw")) or zush:find(_d("LikORxQhAwUJBQ")) then
return nil
end

return zush
end

function oct.check()
if oct.buildId == _d("FAIX") then
return nil, _d("FAIXE1YSBRwD")
end

if oct.checking then
return nil, _d("EhISSg")
end

oct.checking = true
local itk = oct.fetch(oct.versionUrl)
oct.checking = false

if not itk then
return nil, _d("HghBRVEVHxkIDxNSDgAV")
end

local uuj = itk:match(_d("LkISGRxJQVlCEhkQ")) or _d("")
uuj = uuj:gsub(_d("VRRLORpNSA"), _d(""))

if uuj == _d("") or not oct.newer(uuj) then
return nil, _d("ExITQVEJGA")
end

return uuj
end

function oct.newer(ukav)
local function vddc(wd)
local chj, dpe = tostring(wd or _d("")):match(_d("BlhJFlBCCFUDRFcRA0kUTkQeHEIIVQNEVxEDRQ"))

return chj and (chj .. dpe) or nil
end

local function nqk(xrq)
local nfq = tostring(xrq or _d(""))

if not nfq:match(_d("LkIFGBFJU1UDSxc")) then
return nil
end

local mqg = {}

for brzt in nfq:gmatch(_d("VQNK")) do
mqg[#mqg + 1] = tonumber(brzt) or 0
end

return #mqg > 0 and mqg or nil
end

local bwv, ufl = nqk(ukav), nqk(oct.buildId)

if bwv and ufl then
for nq = 1, math.max(#bwv, #ufl) do
local pmvx = bwv[nq] or 0
local jkvj = ufl[nq] or 0

if pmvx ~= jkvj then
return pmvx > jkvj
end
end

return false
end

if bwv or ufl then
return bwv ~= nil
end

local bggz, jyza = vddc(ukav), vddc(oct.buildId)

if not bggz or not jyza then
return tostring(ukav) ~= tostring(oct.buildId)
end

return bggz > jyza
end

function oct.busy()
if xup.battlePending or xup.currentBattle then
return true
end

local dva = getgenv().ACBXTowerRunActive

if type(dva) == _d("FhIPUEAOAx4") then
local gy, kj = pcall(dva)

if gy and kj then
return true
end
end

return false
end

function oct.apply(axub)
if oct.applying then
return false
end

oct.applying = true

local dgwc = oct.fetch(oct.url)

if not dgwc then
oct.applying = false
warn(_d("KyYicWw6TAUXBVJAAlZQBA5GWANMHggVE1AIGx4LDlJQRw") .. tostring(axub) .. _d("XEcSR1UeBR4AQVxaRw") .. oct.buildId)

pcall(function()
cng:Notify({
Title = _d("JRcFUkACTBYGCF9RAw"),
Description = _d("MwgUX1BHAh8TQVdbEAIcCABXFA") .. tostring(axub) .. _d("XkcyR10LAFAVFF1aDgIXRw") .. oct.buildId .. _d("Xg"),
Lifetime = 8,
})
end)

return false
end

local bhz, vr = loadstring(dgwc)

if not bhz then
oct.applying = false
warn(_d("KyYicWw6TAUXBVJAAlZQ") .. tostring(axub) .. _d("UAMOVkdHAh8TQVBbChwZCwQTGUc") .. tostring(vr))

pcall(function()
cng:Notify({
Title = _d("JRcFUkACTAICC1ZXEwkU"),
Description = _d("MhIIX1BH") .. tostring(axub) .. _d("UAEAWlgCCFATDhNXCAEADg1WGkc/BA4NXxQVGR4JCF1TRw") .. oct.buildId .. _d("Xg"),
Lifetime = 8,
})
end)

return false
end

pcall(function()
cng:Notify({
Title = _d("JRcFUkAOAhc"),
Description = _d("IgINXFUDBR4AQQ") .. oct.buildId .. _d("UEpfEw") .. axub .. _d("Xg"),
Lifetime = 4,
})
end)

task.wait(0.4)

oct.cameFrom = oct.buildId
getgenv().ACBXUpdatedFrom = oct.buildId

pcall(function()
cng:Unload()
end)

getgenv().ACBXWindow = nil

task.wait(0.5)

local oiw, mmtr = pcall(bhz)

if not oiw then
oct.applying = false
warn(_d("KyYicWw6TAUXBVJAAlZQ") .. tostring(axub) .. _d("UBMJQVEQTB8JQV9bBghQSkE") .. tostring(mmtr))
return false
end

return true
end

oct.cameFrom = getgenv().ACBXUpdatedFrom

task.defer(function()
if oct.cameFrom then
getgenv().ACBXUpdatedFrom = nil
print(_d("KyYicWw6TBISCF9QRw") .. oct.buildId .. _d("UE8UQ1AGGBUDQVVGCAFQ") .. tostring(oct.cameFrom) .. _d("WQ"))

pcall(function()
cng:Notify({
Title = _d("JRcFUkACCA"),
Description = _d("IhIPXV0JC1A") .. oct.buildId .. _d("XEcHQVsKTA") .. tostring(oct.cameFrom) .. _d("Xg"),
Lifetime = 6,
})
end)

return
end

print(_d("KyYicWw6TBISCF9QRw") .. oct.buildId)
end)

task.defer(function()
task.wait(12)

if oct.announced or oct.buildId == _d("FAIX") or oct.enabled then
return
end

oct.announced = true

local sjbn = oct.check()

if not sjbn then
return
end

print(_d("KyYicWw6TBISCF9QRw") .. oct.buildId .. _d("UA4SE1YCBBkJBRM") .. tostring(sjbn) .. _d("XEcAXVBHGQADAEdRFEwRFQQTWwEK"))
print(_d("KyYicWw6TBwIAFcUDhhQEAhHXF1MHAgAV0cTHhkJBhtTBgEVXSlHQBcrFRNJEQ") .. oct.url .. _d("Uk5IGx0"))

pcall(function()
cng:Notify({
Title = _d("JRcFUkACTBERAFpYBg4cAg"),
Description = _d("IhIPXV0JC1A") .. oct.buildId .. _d("XEc") .. tostring(sjbn) .. _d("UA4SE1sSGF5HM1YZAhQVBBRHUUcYH0cNXFUDTBkTTw"),
Lifetime = 10,
})
end)
end)

task.spawn(function()

task.wait(8)

while lrm() do
if not oct.enabled then

task.wait(5)
else
local xfa = oct.check()
local lcs = oct.interval

if xfa then
if oct.pendingVersion ~= xfa or not oct.pendingSince then
oct.pendingVersion = xfa
oct.pendingSince = os.clock()
end

local vvjn = os.clock() - (oct.pendingSince or os.clock())

if not oct.busy() or vvjn >= oct.forceAfter then
if oct.apply(xfa) then

lpz = false
return
end

oct.pendingSince = os.clock()
lcs = oct.retry
else
lcs = oct.retry
end
else
oct.pendingVersion = nil
oct.pendingSince = nil
end

task.wait(lcs)
end
end
end)
getgenv().ACBXUpdater = oct

task.defer(function()
task.wait(0.9)

local nxzn = bqg.loadUi()

if type(nxzn) ~= _d("BAYDX1E") then
return
end

print(_d("KyYicWw6TBwIDlgUFQkDEw5BUQNWUA") .. tostring(nxzn.theme) .. _d("UAYVEw") .. tostring(nxzn.scale))
end)

local function zdq()
if not lrm() then
return
end

local gnan = false
local xgmg = false

pcall(function()
gnan = jvm.nightmareToggle:GetState() == true
xgmg = jvm.ui:GetState() == true
end)

if not (gnan or xgmg) then
return
end

jvm.nightmare = gnan
jvm.enabled = true
jvm.manualPause = false
jvm.paused = false
jvm.parkedAt = 0
jvm.modeWrongAt = nil
jvm.pending = false
jvm.pendingUntil = 0

tkfn.restorePause()
jvm.pauseArmed = false
tkfn.hardPick(gnan)

if not upyh() then
jvm.floorAt = 0
jvm.battleAt = 0
jvm.floor = nil
end

print(_d("KyYicWw6TAQIFlZGRx4VFBReUQNMEQEVVkZHHhULDlJQXUw") .. (gnan and _d("Hg4GW0AKDQIC") or _d("HggTXlUL")))
end

task.defer(function()
task.wait(1)

local blf = bqg.autoLoadName()

if not blf then
return
end

local mkgc, vp = bqg.load(blf)

task.delay(2, zdq)

bqg.selected = blf
bqg.lastText = mkgc and (_d("MRIVXBQLAxEDBFcU") .. blf .. _d("Xg"))
or (_d("MRIVXBQLAxEDQVVVDgAVA1sT") .. tostring(vp))
bqg.savesAt = 0

pcall(function()
bqg.fileDropdown:UpdateSelection(blf)
end)

pcall(function()
cng:Notify({
Title = _d("MwgPVV0A"),
Description = mkgc and (_d("PAgAV1EDTA") .. blf .. _d("UAgPE0cTDQITTw"))
or (_d("MwgUX1BHAh8TQV9bBghQ") .. blf .. _d("Skc") .. tostring(vp)),
Lifetime = 5,
})
end)
end)

task.defer(function()
task.wait(3)

bqg.restorePriority()
end)

task.defer(function()
task.wait(3)

if bqg.autoLoadName() then
return
end

zdq()
end)
