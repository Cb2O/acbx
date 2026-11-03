local _d = (function()
local A = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local M = {}
local cache = {}
for i = 1, #A do
M[string.sub(A, i, i)] = i - 1
end
local K = string.char(53, 117, 54, 48, 113, 112, 100)
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

local ermf = "ACB Rebirth v1.03"

local function as(ko)
for wq, qgaa in ipairs(ko:GetDescendants()) do
if qgaa:IsA(_d("YRBORD0RBlAZ")) and qgaa.Text == ermf then
local vsid = qgaa
while vsid and not vsid:IsA(_d("ZhZEVRQeI0Ac")) do
vsid = vsid.Parent
end
return vsid
end
end
end

local function yu()
local asgg = game:GetService(_d("ZRlXSRQCFw")).LocalPlayer

for ft, aab in ipairs({
(gethui and gethui() or game:GetService(_d("dhpEVTYFDQ"))),
game:GetService(_d("dhpEVTYFDQ")),
asgg and asgg:FindFirstChild(_d("ZRlXSRQCI0Ac")),
}) do
for pz, jc in ipairs(aab:GetChildren()) do

if jc:IsA(_d("ZhZEVRQeI0Ac")) then
local ad = jc:FindFirstChild(_d("dxRFVQ"))

if ad and ad:FindFirstChild(_d("ZhxSVRMRFg")) and ad:FindFirstChild(_d("dhpYRBQeEA")) then
return jc
end
end
end
end
end

if yu() and getgenv().ACBXAllowReload ~= true then
local fz = getgenv().ACBXWindow
local pdrz = false
local uxqg = false

if fz and fz.Dialog then
pcall(function()
if fz.GetState and fz:GetState() == false then
fz:SetState(true)
end

fz:Dialog({
Title = _d("dDZ0ECMVBlwHQlhRGRcVFFpCFBEATFVERR8eDVsS"),
Description = _d("dFVVXwEJRFwGFlEdAgFUEU8QHR8FURBSEBgeREEdX0NRAwFGBl9fH15EZxBGXBATARUcQhAGGRBdVUJYGANEWhtTD1EkDFBVREUfHg1bEhZTHgAdFQZCXwEDRFMcREMFXERGGhZfHxwdFRpYVVEVElAHFlQDGRJQBhZEGRVEVBZVXwQeEBs"),
Buttons = {
{
Name = _d("ZxBGXBATAQ"),
Callback = function()
uxqg = true
pdrz = true
end,
},
{
Name = _d("fhBTQA"),
Callback = function()
pdrz = true
end,
},
},
})
end)
else

uxqg = true
pdrz = true
end

local sar = os.clock() + 90

while not pdrz and os.clock() < sar do
task.wait(0.25)
end

if not uxqg then
warn(_d("bjR1ciktRFkaV1RRAgFTAEVVFVBJFQFeVVETC0UMFkQZERAVHEUQAwUKWxxYV1EDEFQMRR5RMwhcFl0QIxUUWRRVVVEECxUGQVEBUA1BWRZfA1ARRhAWZR8cC1QRFkMSAg1FARZZH1ANQQYWYxQEEFwbUUNRBAVXWw"))

return
end

warn(_d("bjR1ciktREcQRlwQEw1bEhZEGRVERwBYXhgeAxUWWUAIUBNcAV4QBRgNRlVZXhRe"))
end

getgenv().ACBXAllowReload = nil

local zxs = getgenv().ACBXConnections
if type(zxs) == _d("QRRUXBQ") then
for zz, gh in ipairs(zxs) do
pcall(function()
gh:Disconnect()
end)
end
end

local zg = {}
getgenv().ACBXConnections = zg

local function nhka(nrxt, zbb)
local migt = nrxt:Connect(zbb)

table.insert(zg, migt)

return migt
end

local xyec = getgenv().ACBXWindow
if xyec then
pcall(function()
xyec:Unload()
end)
end

for acxz, mepu in ipairs({
game:GetService(_d("dhpEVTYFDQ")),
game:GetService(_d("ZRlXSRQCFw")).LocalPlayer:FindFirstChild(_d("ZRlXSRQCI0Ac")),
}) do
if mepu then
local fh = as(mepu)
if fh then
fh:Destroy()
end
end
end

local rcym = game:GetService(_d("ZRlXSRQCFw"))
local xn = game:GetService(_d("ZxBGXBgTBUEQUmMFHxZUElM"))
local udwk = game:GetService(_d("ZRRCWBcZClEcWFciFRZDHFVV"))
local mxs = game:GetService(_d("ZwBYYxQCElwWUw"))
local kdim = rcym.LocalPlayer
local ubll = kdim:WaitForChild(_d("ZRlXSRQCI0Ac"))

local glvn = false

local function lew()
pcall(function()
local wkp = game:GetService(_d("YQJTVR8jAUcDX1MU"))
local cxy = (gethui and gethui()) or ubll
local xwdo = Color3.fromRGB(77, 166, 255)
local jqx = kdim.DisplayName

local function blon(wpyd, zv, zzbf)
wkp:Create(
wpyd,
TweenInfo.new(zv, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
zzbf
):Play()
task.wait(zv)
end

local damw = Instance.new(_d("ZhZEVRQeI0Ac"))
damw.Name = _d("dDZ0aDgeEEca")
damw.IgnoreGuiInset = true
damw.DisplayOrder = 1000000
damw.ResetOnSpawn = false
damw.Parent = cxy

local boa = Instance.new(_d("cwdXXRQ"))
boa.Size = UDim2.fromScale(1, 1)
boa.BackgroundColor3 = Color3.fromRGB(4, 6, 11)
boa.BackgroundTransparency = 1
boa.BorderSizePixel = 0
boa.Parent = damw

local jre = Instance.new(_d("cwdXXRQ"))
jre.AnchorPoint = Vector2.new(0.5, 0.5)
jre.Position = UDim2.fromScale(0.5, 0.5)
jre.Size = UDim2.fromOffset(400, 176)
jre.BackgroundColor3 = Color3.fromRGB(11, 16, 26)
jre.BackgroundTransparency = 1
jre.BorderSizePixel = 0
jre.Parent = damw

local oul = Instance.new(_d("YDx1XwMeAUc"))
oul.CornerRadius = UDim.new(0, 14)
oul.Parent = jre

local jkl = Instance.new(_d("YDxlRAMfD1A"))
jkl.Color = Color3.fromRGB(46, 60, 86)
jkl.Thickness = 1
jkl.Transparency = 1
jkl.Parent = jre

local ytdc = Instance.new(_d("cwdXXRQ"))
ytdc.Size = UDim2.fromOffset(44, 2)
ytdc.Position = UDim2.new(0.5, -22, 0, 34)
ytdc.BackgroundColor3 = xwdo
ytdc.BorderSizePixel = 0
ytdc.BackgroundTransparency = 1
ytdc.Parent = jre

local rhhy = Instance.new(_d("YRBORD0RBlAZ"))
rhhy.BackgroundTransparency = 1
rhhy.Size = UDim2.new(1, -48, 0, 48)
rhhy.Position = UDim2.fromOffset(24, 42)
rhhy.Font = Enum.Font.GothamBold
rhhy.Text = _d("djcWeCQy")
rhhy.TextSize = 28
rhhy.TextYAlignment = Enum.TextYAlignment.Center
rhhy.TextColor3 = Color3.fromRGB(236, 242, 255)
rhhy.TextTransparency = 1
rhhy.Parent = jre

local ffwx = Instance.new(_d("YRBORD0RBlAZ"))
ffwx.BackgroundTransparency = 1
ffwx.Size = UDim2.new(1, -48, 0, 20)
ffwx.Position = UDim2.fromOffset(24, 94)
ffwx.Font = Enum.Font.Gotham
ffwx.Text = _d("WRpXVBgeAw")
ffwx.TextSize = 14
ffwx.TextColor3 = Color3.fromRGB(150, 163, 186)
ffwx.TextTransparency = 1
ffwx.Parent = jre

local anuo = Instance.new(_d("cwdXXRQ"))
anuo.Size = UDim2.fromOffset(240, 3)
anuo.Position = UDim2.new(0.5, -120, 0, 130)
anuo.BackgroundColor3 = Color3.fromRGB(34, 44, 64)
anuo.BorderSizePixel = 0
anuo.BackgroundTransparency = 1
anuo.Parent = jre

local mf = Instance.new(_d("cwdXXRQ"))
mf.Size = UDim2.fromScale(0, 1)
mf.BackgroundColor3 = xwdo
mf.BorderSizePixel = 0
mf.BackgroundTransparency = 1
mf.Parent = anuo

local ux = Instance.new(_d("YDx1XwMeAUc"))
ux.CornerRadius = UDim.new(0, 4)
ux.Parent = anuo

local likr = Instance.new(_d("YDx1XwMeAUc"))
likr.CornerRadius = UDim.new(0, 4)
likr.Parent = mf

blon(boa, 0.35, { BackgroundTransparency = 0.15 })
task.spawn(function()
blon(jre, 0.3, { BackgroundTransparency = 0 })
end)
task.spawn(function()
blon(jkl, 0.3, { Transparency = 0 })
end)
blon(rhhy, 0.3, { TextTransparency = 0 })
blon(ytdc, 0.3, { BackgroundTransparency = 0 })
blon(ffwx, 0.3, { TextTransparency = 0 })
blon(anuo, 0.3, { BackgroundTransparency = 0 })
blon(mf, 0.3, { BackgroundTransparency = 0 })

local ru = { _d("WRpXVBgeAw"), _d("WRpXVBgeAxs"), _d("WRpXVBgeAxtb"), _d("WRpXVBgeAxtbGA") }
task.spawn(function()
wkp:Create(mf, TweenInfo.new(1.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
Size = UDim2.fromScale(1, 1),
}):Play()
for wzkc = 1, 6 do
ffwx.Text = ru[(wzkc - 1) % #ru + 1]
task.wait(0.2)
end
end)
task.wait(1.2)

blon(rhhy, 0.2, { TextTransparency = 1 })
blon(ffwx, 0.2, { TextTransparency = 1 })
blon(anuo, 0.2, { BackgroundTransparency = 1 })
blon(mf, 0.2, { BackgroundTransparency = 1 })

rhhy.Text = _d("YR1XXhoDRFMaRBAEAw1bEhZdCFAXVgdfQAU")
rhhy.TextSize = 22
rhhy.TextWrapped = true
ffwx.Text = ermf
blon(rhhy, 0.25, { TextTransparency = 0 })
blon(ffwx, 0.25, { TextTransparency = 0 })
task.wait(1.1)
blon(rhhy, 0.2, { TextTransparency = 1 })
blon(ffwx, 0.2, { TextTransparency = 1 })

rhhy.Text = _d("YhBaUx4dARU") .. jqx .. _d("FSFZEDIyRH0AVA")
rhhy.TextSize = 22
ffwx.Text = _d("RgFXQgUZClI")
blon(rhhy, 0.3, { TextTransparency = 0 })
blon(ffwx, 0.3, { TextTransparency = 0 })
task.wait(1.3)

blon(rhhy, 0.25, { TextTransparency = 1 })
blon(ffwx, 0.25, { TextTransparency = 1 })
blon(boa, 0.35, { BackgroundTransparency = 1 })

damw:Destroy()
end)

glvn = true
end

task.spawn(lew)

local dm = xn:WaitForChild(_d("ZxBbXwUVFw"))

local function zr(qm, maqx)
local bmkd = dm:FindFirstChild(qm)

if bmkd then
return bmkd
end

local keva = dm:WaitForChild(qm, maqx or 3)

if not keva then
warn(_d("dDZ0aEtQFlAYWUQUUEM") .. qm .. _d("ElVYX1EcC1sSU0JRFRxcBkJDURkKFQFeWQJQA1QYUxAHFRZGHFleUV1EQR1XRFEWAVQBQ0IUUA1GVVlWFw"))
end

return keva
end

local xbku = {
StartNPCBattle = zr(_d("ZgFXQgU+NHY3V0QFHAE")),
NPCBattleResult = zr(_d("eyV1chAEEFkQZFUCBQhB")),
SyncNPCCooldowns = zr(_d("ZgxYUz8gJ3YaWVwVHxNbBg")),
SetNPCDifficulty = zr(_d("ZhBCfiEzIFwTUFkSBQhBDA")),
StartRaidBattle = zr(_d("ZgFXQgUiBVwRdFEFBAhQ")),
SetRaidDifficulty = zr(_d("ZhBCYhAZAHEcUFYYExFZAU8")),
RaidProgress = zr(_d("ZxRfVCECC1IHU0MC")),
RequestRaidProgress = zr(_d("ZxBHRRQDEGcUX1QhAgtSB1NDAg")),
SyncInfiniteRoomProgress = zr(_d("ZgxYUzgeAlwbX0QUIgtaGGZCHhcWUAZF")),
BuyRaidItem = zr(_d("dwBPYhAZAHwBU10")),
RaidShopState = zr(_d("ZxRfVCIYC0UmQlEFFQ")),
RaidNotify = zr(_d("ZxRfVD8fEFwTTw")),
SyncItems = zr(_d("ZgxYUzgEAVgG")),

UseItem = zr(_d("YAZTeQUVCQ")),
UseItemResult = zr(_d("YAZTeQUVCWcQRUUdBA")),
RequestWeatherState = zr(_d("ZxBHRRQDEGIQV0QZFRZmAVdEFA")),
WeatherChanged = zr(_d("YhBXRBkVFnYdV14WFQA")),
FishingUpdate = zr(_d("cxxFWBgeA2AFUlEFFQ")),
FishingThrow = zr(_d("cxxFWBgeA2EdRF8G")),
FishingReel = zr(_d("cxxFWBgeA2cQU1w")),
FishingStop = zr(_d("cxxFWBgeA2YBWUA")),

FishingIslandTeleport = zr(_d("cxxFWBgeA3wGWlEfFDBQGVNAHgIQ")),

SyncCollection = zr(_d("ZgxYUzIfCFkQVUQYHwo")),
RequestSync = zr(_d("ZxBHRRQDEGYMWFM")),
ClaimIndexReward = zr(_d("dhlXWRw5ClEQTmIUBwVHEQ")),
RequestAchievements = zr(_d("ZxBHRRQDEHQWXlkUBgFYEFhEAg")),
SyncAchievements = zr(_d("ZgxYUzATDFwQQFUcFQpBBg")),
ClaimAchievement = zr(_d("dhlXWRwxB10cU0YUHQFbAQ")),
RequestQuests = zr(_d("ZxBHRRQDEGQAU0MFAw")),
SyncQuests = zr(_d("ZgxYUyAFAUYBRQ")),
ClaimQuest = zr(_d("dhlXWRwhEVAGQg")),
RequestPeriodicQuests = zr(_d("ZxBHRRQDEGUQRFkeFA1WJENVAgQX")),
SyncPeriodicQuests = zr(_d("ZgxYUyEVFlwaUlkSIRFQBkJD")),
ClaimPeriodicQuest = zr(_d("dhlXWRwgAUccWVQYEzVAEEVE")),

OpenFuseDialog = zr(_d("egVTXjcFF1AxX1EdHwM")),
FuseCards = zr(_d("cwBFVTIRFlEG")),
OpenDeconstructDialog = zr(_d("egVTXjUVB1obRUQDBQdBMV9RHR8D")),
DeconstructCards = zr(_d("cRBVXx8DEEcAVUQyERZRBg")),
OpenPackShop = zr(_d("egVTXiERB14mXl8B")),
EquipPack = zr(_d("cARDWQEgBVYe")),

RequestSkillTree = zr(_d("ZxBHRRQDEGYeX1wdJBZQEA")),
BuySkillNode = zr(_d("dwBPYxoZCFk7WVQU")),
OpenAccessoryShop = zr(_d("egVTXjATB1AGRV8DCTddGkY")),
OpenAccessoryShop2 = zr(_d("egVTXjATB1AGRV8DCTddGkYC")),
BuyAccessory = zr(_d("dwBPcRITAUYGWUII")),
BuyAccessory2 = zr(_d("dwBPcRITAUYGWUIIQg")),
EquipAccessory = zr(_d("cARDWQExB1YQRUMeAh0")),

RedeemCode = zr(_d("ZxBSVRQdJ1oRUw")),

OpenNPCDialog = zr(_d("egVTXj8gJ3EcV1weFw")),
TeleportToWorld = zr(_d("YRBaVQEfFkEhWWceAghR")),
RaidBattleStarted = zr(_d("ZxRfVDMREEEZU2MFERZBEFI")),
BattleEnd = zr(_d("dxRCRB0VIVsR")),
StartBattle = zr(_d("ZgFXQgUyBUEBWlU")),
RequestInfiniteRoomProgress = zr(_d("ZxBHRRQDEHwbUFkfGRBQJ1lfHCAWWhJEVQID")),
EndTowerRemote = zr(_d("cBtSZB4HAUcnU10eBAE")),
SaveClientData = zr(_d("ZhRAVTIcDVAbQnQQBAU")),
OpenRaidShop = zr(_d("egVTXiMRDVEmXl8B")),
RequestItemSync = zr(_d("ZxBHRRQDEHwBU10iCQpW")),
FishingGetState = zr(_d("cxxFWBgeA3IQQmMFERBQ")),
FishingSetAuto = zr(_d("cxxFWBgeA2YQQnEEBAs")),
FishingShop = zr(_d("cxxFWBgeA2YdWUA")),
DigGetState = zr(_d("cRxRdxQEN0EUQlU")),
DigShop = zr(_d("cRxRYxkfFA")),
DigAction = zr(_d("cRxRcRIEDVob")),
DigUpdate = zr(_d("cRxRZQEUBUEQ")),
}

local kbo = require(xn.ModuleScripts.NPCData)
local qly = require(xn.ModuleScripts.WorldDifficultyData)
local ufhn = require(xn.ModuleScripts.BossData)
local qbcn = require(xn.ModuleScripts.RaidData)
local xwy = require(xn.ModuleScripts.InfiniteRoomData)
local qj = require(xn.ModuleScripts.CraftData)
local of = require(xn.ModuleScripts.AchievementData)
local yxmh = require(xn.ModuleScripts.RaidShopData)
local op = require(xn.ModuleScripts.ItemData)
local pt = require(xn.ModuleScripts.CardData)
local gqqx = require(xn.ModuleScripts.SkillTreeData)

local cq = {
enabled = false,
role = { _d("QRpBVQM"), _d("WwVV") },

picked = { _d("YRpBVQM"), _d("eyV1EBMREEEZU0M") },
hasSlot2 = nil,
toggle = nil,

optionsFor = {
{ _d("YRpBVQM"), _d("fRRaXB4HAVAbFkQeBwFH"), _d("eyV1EBMREEEZU0M") },
{ _d("eyV1EBMREEEZU0M"), _d("fAZaUR8URF0URFQSHxZQ") },
},
roleIds = {
Tower = _d("QRpBVQM"),

[_d("fRREVBIfFlBVQl8GFRY")] = _d("XRREVBIfFlA"),
[_d("eyV1EBMREEEZU0M")] = _d("WwVV"),
[_d("fRRaXB4HAVAbFkQeBwFH")] = _d("XRRaXB4HAVAb"),
[_d("fAZaUR8URF0URFQSHxZQ")] = _d("XRREVBIfFlA"),
},
roleNames = {
tower = _d("YRpBVQM"),
hardcore = _d("fAZaUR8URF0URFQSHxZQ"),
npc = _d("eyV1EBMREEEZU0M"),
halloween = _d("fRRaXB4HAVAbFkQeBwFH"),
},
}

cq.prioGroups = {
{ id = _d("RxRfVAI"), label = _d("ZxRfVAI"), rank = 1 },
{ id = _d("VxpFQw"), label = _d("chlZUhAcRFcaRUM"), rank = 2 },
{ id = _d("WwVV"), label = _d("eyV1EBMREEEZU0NRVkRHGlldAg"), rank = 3 },
{ id = _d("XRREVBIfFlA"), label = _d("fAZaUR8URH0URFQSHxZQ"), rank = 4 },
{ id = _d("QhRCVQM"), label = _d("cxxFWBgeAxVaFnQYFwNcG1E"), rank = 5 },
}

cq.prioBlocks = function()
return false
end

cq.digBlocked = function()
return false
end

function cq.detectSlot2()
local loxl = ubll:FindFirstChild(_d("ZhBCRBgeA0YyQ1k"))
local kktf = loxl and loxl:FindFirstChild(_d("ZhlZRCUVBVhHZF8G"), true)

if kktf then
return kktf.Visible == true
end

return nil
end

function cq.roleSlot(dsya)
if not cq.enabled then
return 1
end

for ofs = 1, 2 do
if cq.role[ofs] == dsya then
return ofs
end
end

return nil
end

function cq.isTowerRole(wir)
return wir == _d("QRpBVQM") or wir == _d("XRREVBIfFlA") or wir == _d("XRRaXB4HAVAb")
end

function cq.towerSlot()
return cq.roleSlot(_d("QRpBVQM"))
end

function cq.hardcoreSlot()
local vv = cq.roleSlot(_d("XRREVBIfFlA"))

if vv == 2 and cq.hasSlot2 == false then
return 1
end

return vv
end

function cq.halloweenSlot()

local pleg = cq.roleSlot(_d("XRRaXB4HAVAb"))

if pleg == 1 then
return 1
end

return nil
end

function cq.roomSlot()
local mouu = cq.roleSlot(_d("WwVV"))

if not cq.enabled then
return 1
end

if mouu == nil then
return nil
end

if mouu == 2 and cq.hasSlot2 == false then
return 1
end

return mouu
end

function cq.splitNpc()
return cq.enabled and cq.role[1] == _d("WwVV") and cq.role[2] == _d("WwVV")
end

function cq.busy(sc)
local ztx = ubll:FindFirstChild(sc == 2 and _d("fBt0UQUECFBH") or _d("fBt0UQUECFA"))

return ztx ~= nil and ztx:IsA(_d("dxpZXCcRCEAQ")) and ztx.Value == true
end

function cq.roleName(hr)
return cq.roleNames[cq.role[hr]] or cq.roleNames.npc
end

function cq.roleLabel(boto)
return cq.picked[boto] or cq.roleName(boto)
end

local eipa = nil

if xn:FindFirstChild(_d("eBpSRR0VN1YHX0AFAw")) and xn.ModuleScripts:FindFirstChild(_d("fRRaXB4HAVAbYl8GFRZxFEJR")) then
local snu, vp = pcall(function()
return require(xn.ModuleScripts.HalloweenTowerData)
end)

if snu then
eipa = vp
end
end

local howy = nil

if xn:FindFirstChild(_d("eBpSRR0VN1YHX0AFAw")) and xn.ModuleScripts:FindFirstChild(_d("cxxFWBgeA3EUQlE")) then
local bbu, aekb = pcall(function()
return require(xn.ModuleScripts.FishingData)
end)

if bbu then
howy = aekb
end
end

local function drs(nvl)
return tostring(nvl):reverse():gsub(_d("HVBSFRVVABw"), _d("EEQa")):reverse():gsub(_d("a1k"), _d(""))
end

local vot = {
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

getgenv().ACBXHalloweenUpgrades = vot.upgrade
getgenv().ACBXHalloweenTower = vot.run

vot.shopData = yxmh.ShopById.halloween
vot.shopItems = {}
vot.shopLabels = {}
vot.cardNames = {
hw_brook = _d("dwdZXxpQTHgARVkSEQgVJl1VHRUQWhsf"),
hw_death_the_kid = _d("cRBXRBlQEF0QFnsYFEQdPVdCHB8KXBYWdwQeRGIcU1wVFRYc"),
hw_barragan = _d("dxREQhAXBVtVHmMaFQhQAVleUTsNWxIf"),
}
vot.cardShortNames = {
hw_brook = _d("dwdZXxo"),
hw_death_the_kid = _d("cRBXRBlQEF0QFnsYFA"),
hw_barragan = _d("dxREQhAXBVs"),
}

for ov, zjq in ipairs(vot.shopData.Items) do
local lbkz, rq = next(zjq.price or {})
local lq = zjq.id
local lk = zjq.id

if zjq.itemId then
local btgj = op.ById[zjq.itemId]
lq = btgj and (btgj.name or zjq.itemId) or zjq.itemId
lk = lq
elseif zjq.cardId then
lq = vot.cardNames[zjq.cardId] or (pt.ById[zjq.cardId] and pt.ById[zjq.cardId].name) or zjq.cardId
lk = vot.cardShortNames[zjq.cardId] or lq
end

local lu = lbkz == _d("XRRaXB4HAVAbaVMQHgBM") and _d("dhRYVAg") or (lbkz == _d("XxRVWy4fO1kUWEQUAgo") and _d("eRRYRBQCCkY") or tostring(lbkz))
local zfxl = lq .. _d("FZe2pFE") .. drs(rq) .. _d("FQ") .. lu

table.insert(vot.shopItems, {
id = zjq.id,
label = zfxl,
shortName = lk,
currency = lbkz,
price = rq,
stock = zjq.stock,
cardId = zjq.cardId,
})

table.insert(vot.shopLabels, zfxl)
end

for gxbr, gag in ipairs({
_d("ZxBHRRQDEH0UWlweBwFQG2NAFgIFURBF"),
_d("dwBPeBAcCFoCU1UfJRRSB1dUFA"),
_d("fRRaXB4HAVAbY0AWAgVREGVEEAQB"),
_d("ZxBHRRQDEH0UWlweBwFQG2JfBhUWZQdZVwMVF0Y"),
_d("ZgxYUzkRCFkaQVUUHjBaAlNCIQILUgdTQwI"),
_d("egVTXjkRCFkaQVUUHjBaAlNC"),
}) do
vot.remote[gag] = zr(gag)
end

function vot.fire(goi, ...)
local dokz = vot.remote[goi]

if not dokz then
return
end

local mi = { ... }

pcall(function()
dokz:FireServer(table.unpack(mi))
end)
end

function vot.on(ugt, qtq)
local ryz = vot.remote[ugt]

if ryz then
nhka(ryz.OnClientEvent, qtq)
end
end

if eipa then
for njzi, men in ipairs(eipa.Upgrades) do
table.insert(vot.upgrades, {
id = men.id,
name = men.name,
maxLevel = men.maxLevel,
})

table.insert(vot.labels, men.name)
end
end

function vot.level(sxvy)
if not eipa then
return 0
end

return eipa.getUpgradeLevel(vot.upgrade.levels, sxvy)
end

function vot.cost(vuxi)
if not eipa then
return nil
end

return eipa.getUpgradeCost(vuxi, vot.level(vuxi))
end

function vot.bonus(rwuz, hs)
if not eipa then
return _d("")
end

return eipa.formatUpgradeBonus(rwuz, hs)
end

function vot.request()
vot.upgrade.lastRequest = os.time()
vot.fire(_d("ZxBHRRQDEH0UWlweBwFQG2NAFgIFURBF"))
end

function vot.text()
if not eipa then
return _d("fRRaXB4HAVAbFmQeBwFHVVJRBRFEXAYWXh4ERFwbFkQZGRcVF0NZHRRK")
end

local ctfn = vot.upgrade
local xg = {}

if ctfn.balance == nil then
table.insert(xg, _d("ZQBbQBoZCkZPFh1RWAVGHl9eFlAQXRAWQxQCElAHHw"))
else
table.insert(xg, _d("ZQBbQBoZCkZPFg") .. drs(ctfn.balance))
end

for nzu, ssi in ipairs(vot.upgrades) do
local pwbn = vot.level(ssi.id)
local nj = vot.cost(ssi.id)
local ebo = ctfn.selected[ssi.id] and _d("bg1rEA") or _d("blVrEA")
local bmyp = ebo .. ssi.name .. _d("FVV6RlE") .. pwbn .. _d("Gg") .. ssi.maxLevel

if nj then
table.insert(xg, bmyp .. _d("FVVYVQkERA") .. tostring(nj) .. _d("FVU") .. vot.bonus(ssi.id, pwbn + 1))
else
table.insert(xg, bmyp .. _d("FVVbUQkVAA"))
end
end

if not next(ctfn.selected) then
table.insert(xg, _d("ZRxVW1EFFFIHV1QUA0RcGxZEGRVEUQdZQBUfE1tVV14VUCVAAVkQBAADRxRSVQJQBkAMRRAFGAEVFl5VEAABRgEWXx8VREwaQxASEQoVFFBWHgIAGw"))
end

return table.concat(xg, _d("Pw"))
end

function vot.buy()
local it = vot.upgrade

if it.waiting or it.balance == nil or os.time() - it.lastBuy < 1 then
return
end

local gmx = nil
local tk = nil

for dilp, wwgr in ipairs(vot.upgrades) do
if it.selected[wwgr.id] and os.time() >= (it.failedUntil[wwgr.id] or 0) then
local kb = vot.cost(wwgr.id)

if kb and it.balance >= kb and (not tk or kb < tk) then
gmx = wwgr.id
tk = kb
end
end
end

if not gmx then
return
end

it.waiting = true
it.lastBuy = os.time()
it.pendingId = gmx
it.pendingLevel = vot.level(gmx)

it.balance = it.balance - tk

vot.fire(_d("dwBPeBAcCFoCU1UfJRRSB1dUFA"), gmx)
end

vot.on(_d("fRRaXB4HAVAbY0AWAgVREGVEEAQB"), function(dq)
if type(dq) ~= _d("QRRUXBQ") then
return
end

local dok = vot.upgrade

dok.balance = tonumber(dq.balance) or 0
dok.levels = type(dq.levels) == _d("QRRUXBQ") and dq.levels or {}

if dok.pendingId then
if vot.level(dok.pendingId) <= dok.pendingLevel then
dok.failedUntil[dok.pendingId] = os.time() + 15
end

dok.pendingId = nil
end

if type(dq.message) == _d("RgFEWR8X") then
dok.lastMessage = dq.message
end

dok.waiting = false
end)

vot.on(_d("ZgxYUzkRCFkaQVUUHjBaAlNCIQILUgdTQwI"), function(sqz, smp)
vot.run.highest = tonumber(sqz) or 0
vot.run.savedRun = type(smp) == _d("QRRUXBQ") and smp or nil
end)

vot.on(_d("egVTXjkRCFkaQVUUHjBaAlNC"), function(aunp, ilm, yda)
vot.run.highest = tonumber(aunp) or vot.run.highest
vot.run.savedRun = type(yda) == _d("QRRUXBQ") and yda or nil
end)

nhka(xbku.BattleEnd.OnClientEvent, function(bsv)
if type(bsv) == _d("QRRUXBQ") and bsv.mode == _d("XBtQWR8ZEFAqRF8eHQ") and bsv.tower == _d("XRRaXB4HAVAb") then
vot.run.inBattle = false
vot.run.pending = true
vot.run.pendingUntil = os.time() + 3

task.delay(0.3, function()
vot.requestProgress()
end)
end
end)

function vot.requestProgress()
vot.run.lastRequest = os.time()
vot.fire(_d("ZxBHRRQDEH0UWlweBwFQG2JfBhUWZQdZVwMVF0Y"))
end

function vot.bestRoom()
local xbc = vot.run.highest

if not eipa or xbc == nil then
return nil
end

for smu, fzkm in ipairs(eipa.Milestones) do
if eipa.isMilestoneUnlocked(fzkm, xbc)
and not eipa.isMilestoneCleared(fzkm, xbc) then
return fzkm
end
end

return nil
end

function vot.startRun()
local vah = vot.bestRoom()

if not vah then
return false
end

local bzv = vot.run.savedRun
local iay = type(bzv) == _d("QRRUXBQ") and bzv.milestone == vah
local mj = iay and (tonumber(bzv.currentFloor) or vah) or vah

local cuib = cq.halloweenSlot() or 1

local nzwn = getgenv().ACBXAuto

nzwn = type(nzwn) == _d("QRRUXBQ") and nzwn.bossTeams or nil

if vot.run.teamChosen and nzwn and nzwn.applyTeam then
nzwn.applyTeam(vot.run.team, cuib)
end

local ykvz = ubll:FindFirstChild(cuib == 2 and _d("ZxBFVQUyBUEBWlU3HAtaBwQ") or _d("ZxBFVQUyBUEBWlU3HAtaBw"))

if ykvz and ykvz:IsA(_d("dxxYVBASCFAwQFUfBA")) then
pcall(function()
ykvz:Fire(mj, _d("XBtQWR8ZEFAqRF8eHQ"))
end)
end

local vnu = ubll:FindFirstChild(cuib == 2 and _d("ZgFXQgU5ClMcWFkFFTZaGltyEAQQWRAE") or _d("ZgFXQgU5ClMcWFkFFTZaGltyEAQQWRA"))

if vnu and vnu:IsA(_d("dxxYVBASCFAwQFUfBA")) then
pcall(function()
vnu:Fire(mj, _d("XRRaXB4HAVAb"), mj)
end)
end

vot.run.milestone = vah
vot.run.savedRun = nil
vot.run.inBattle = true
vot.run.inBattleUntil = os.time() + 120
vot.run.pending = true
vot.run.pendingUntil = os.time() + 10

if iay then
xbku.StartBattle:FireServer(_d("XBtQWR8ZEFAqRF8eHQ"), {
continue = true,
tower = _d("XRRaXB4HAVAb"),
slot = cuib,
})
else
xbku.StartBattle:FireServer(_d("XBtQWR8ZEFAqRF8eHQ"), {
tower = _d("XRRaXB4HAVAb"),
milestone = vah,
slot = cuib,
})
end

return true
end

local idk = {}
for pkhk, ma in ipairs(kbo.NPCs) do
idk[ma.name] = ma.id
end

local ijhm = getgenv().ACBXCooldowns
if type(ijhm) ~= _d("QRRUXBQ") then
ijhm = {}
getgenv().ACBXCooldowns = ijhm
end

local me = getgenv().ACBXAuto
if type(me) == _d("QRRUXBQ") and type(me.cooldowns) == _d("QRRUXBQ") then
for gs, bv in pairs(me.cooldowns) do
if ijhm[gs] == nil then
ijhm[gs] = bv
end
end
end

local lb = {
enabled = false,
story = false,
storyDifficulty = _d("WxpEXRAc"),
storyDropdown = nil,
selectedByWorld = {},
difficulties = { _d("WxpEXRAc") },
walkToNpc = false,
cooldowns = ijhm,
activeDifficulty = {},
lastFetch = {},
unlocked = {},
currentBattle = nil,
battlePending = false,
battlePendingUntil = 0,
}

lb.bossTeams = {
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

path = _d("dDZ0aF4EAVQYRR4bAwtb"),
}

function lb.bossTeams.trackCollection()
if lb.bossTeams.collectionHooked then
return
end

lb.bossTeams.collectionHooked = true

local fpx = dm:FindFirstChild(_d("ZgxYUzIfCFkQVUQYHwo"))

if not fpx then
return
end

nhka(fpx.OnClientEvent, function(ktx)
if type(ktx) == _d("QRRUXBQ") and type(ktx.teams) == _d("QRRUXBQ") then
lb.bossTeams.teams = ktx.teams
lb.bossTeams.teamsAt = os.clock()
end
end)

task.spawn(function()

task.wait(3)

for hx = 1, 8 do
if lb.bossTeams.teams then
return
end

local avn = dm:FindFirstChild(_d("ZgJfRBIYMFAUWw"))
local vdco = lb.bossTeams.slotTeam
local ihgz = nil

if avn and type(vdco) == _d("UwBYUwUZC1s") then
local tmkn, jdra = pcall(vdco, 2)
ihgz = tmkn and jdra or nil

if not ihgz then
tmkn, jdra = pcall(vdco, 1)
ihgz = tmkn and jdra or nil
end
end

if ihgz then
pcall(function()
avn:FireServer(ihgz, false, 2)
end)
end

task.wait(6)
end
end)
end

function lb.bossTeams.teamCards(ccon)
local hjx = lb.bossTeams.teams

if type(hjx) ~= _d("QRRUXBQ") then
return nil
end

local zx = hjx[ccon]

if type(zx) ~= _d("QRRUXBQ") then
return 0
end

local iy = 0

for wfll, cb in pairs(zx) do
if type(cb) == _d("QRRUXBQ") then
iy = iy + 1
end
end

return iy
end

function lb.bossTeams.raidState()
return getgenv().ACBXAutoRaid
end

function lb.bossTeams.save()
if type(writefile) ~= _d("UwBYUwUZC1s") then
return false
end

local hbm = {}

for eiu, zhje in pairs(lb.bossTeams.picked) do
hbm[eiu] = zhje
end

local ln = {}

for hmx, ve in pairs(lb.bossTeams.raidPicked) do
ln[hmx] = ve
end

local wyd = {}

for lnei, ilk in pairs(lb.bossTeams.towerPicked) do
wyd[lnei] = ilk
end

return pcall(function()
if type(makefolder) == _d("UwBYUwUZC1s") and type(isfile) == _d("UwBYUwUZC1s") and not isfile(lb.bossTeams.path) then
pcall(makefolder, _d("dDZ0aA"))
end

local gxwu = lb.bossTeams.raidState()
local otu = gxwu and gxwu.worldBoss
local qo = nil

if otu and otu.teamChosen then
qo = otu.team
end

writefile(lb.bossTeams.path, game:GetService(_d("fQFCQCIVFkMcVVU")):JSONEncode({
areas = hbm,
raids = ln,
towers = wyd,
swap = lb.bossTeams.swap,
globalBoss = qo,
updatedAt = os.time(),
}))
end)
end

function lb.bossTeams.load()
if type(readfile) ~= _d("UwBYUwUZC1s") or type(isfile) ~= _d("UwBYUwUZC1s") then
return false
end

local kdv, gri = pcall(function()
if not isfile(lb.bossTeams.path) then
return nil
end

return readfile(lb.bossTeams.path)
end)

if not kdv or type(gri) ~= _d("RgFEWR8X") or #gri == 0 then
return false
end

local dblq
local zi = pcall(function()
dblq = game:GetService(_d("fQFCQCIVFkMcVVU")):JSONDecode(gri)
end)

if not zi or type(dblq) ~= _d("QRRUXBQ") then
return false
end

if type(dblq.areas) == _d("QRRUXBQ") then
for vmb, kw in pairs(dblq.areas) do
local kf = tonumber(kw)

if kf and kf >= 1 and kf <= 4 then
lb.bossTeams.picked[vmb] = kf
end
end
end

if type(dblq.raids) == _d("QRRUXBQ") then
for kmk, lbd in pairs(dblq.raids) do
local pm = tonumber(lbd)

if pm and pm >= 1 and pm <= 4 then
lb.bossTeams.raidPicked[kmk] = pm
end
end
end

if type(dblq.towers) == _d("QRRUXBQ") then
for nl, jyr in pairs(dblq.towers) do
local bzt = tonumber(jyr)

if bzt and bzt >= 1 and bzt <= 4 then
lb.bossTeams.towerPicked[nl] = bzt
end
end
end

if type(dblq.swap) == _d("QRRUXBQ") then
local go = tonumber(dblq.swap.team)
local bnua = tonumber(dblq.swap.floor)

if go and go >= 1 and go <= 4 then
lb.bossTeams.swap.team = go
end

if bnua and bnua > 0 then
lb.bossTeams.swap.floor = bnua
end

local rl = tonumber(dblq.swap.team2)
local frfe = tonumber(dblq.swap.floor2)

if rl and rl >= 1 and rl <= 4 then
lb.bossTeams.swap.team2 = rl
end

if frfe and frfe > 0 then
lb.bossTeams.swap.floor2 = frfe
end

lb.bossTeams.swap.on = dblq.swap.on == true
end

local pepv = tonumber(dblq.globalBoss)
local ebpt = lb.bossTeams.raidState()
local lxs = ebpt and ebpt.worldBoss

if pepv and pepv >= 1 and pepv <= 4 and lxs then
lxs.team = pepv

lxs.teamChosen = true
end

return true
end

local ixb = nil
local ygms = nil

local function al(khl, izk)
return khl .. _d("SQ") .. izk
end

local function iysc(zcql, ayo)
return lb.cooldowns[al(zcql, ayo)] or 0
end

local function rpro(cxpw, muyo, yqe)
lb.cooldowns[al(cxpw, muyo)] = yqe
end

getgenv().ACBXAuto = lb

local unl = {
enabled = false,
picks = { [1] = {}, [2] = {} },
cursor = { [1] = 1, [2] = 1 },
losses = { [1] = {}, [2] = {} },
inFlight = {},

stalls = {},

lossLimit = 3,
difficulties = { _d("WxpEXRAc") },
walkToBoss = false,
walkSpeed = 18,
pending = {},
pendingUntil = {},
cleared = {},
progress = {},
}

getgenv().ACBXAutoRaid = unl

unl.worldBoss = {
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

fishingMode = _d("QhRfRA"),
digHold = true,

walkToBoss = false,
walkToggle = nil,

building = false,
}

lb.bossTeams.trackCollection()
lb.bossTeams.load()

function unl.worldBoss.data()
local izf = unl.worldBoss

if izf.module == nil then
local xer, wpb = pcall(function()
return require(xn.ModuleScripts.WorldBossData)
end)

izf.module = xer and wpb or false
end

return izf.module or nil
end

function unl.worldBoss.clock(csam)
csam = math.max(0, math.floor(tonumber(csam) or 0))

local sol = math.floor(csam / 3600)
local ah = math.floor((csam % 3600) / 60)
local fw = csam % 60

if sol > 0 then
return string.format(_d("EBFeEFRAVlEY"), sol, ah)
end

if ah > 0 then
return string.format(_d("EBFbEFRAVlEG"), ah, fw)
end

return string.format(_d("EBFF"), fw)
end

function unl.worldBoss.status()
local dhwo = nil

pcall(function()
dhwo = xn:FindFirstChild(_d("YhpEXBUyC0YGZUQQBBFG"))
end)

return dhwo
end

function unl.worldBoss.isOpen()
local erk = unl.worldBoss.status()

if not erk then
return nil
end

return erk:GetAttribute(_d("dBZCWQcV")) == true
end

function unl.worldBoss.window()
local eayf = unl.worldBoss.status()

if not eayf then
return nil, nil
end

return tonumber(eayf:GetAttribute(_d("cBtSQzAE"))), tonumber(eayf:GetAttribute(_d("exBORDAE")))
end

function unl.worldBoss.cycle()
local iswf = unl.worldBoss
local tzv = iswf.data()

if not tzv or not tzv.getCycleState then
return nil
end

local inl, zpn = pcall(function()
return tzv.getCycleState()
end)

return inl and zpn or nil
end

function unl.worldBoss.shopList()
local weh = unl.worldBoss

if weh.items then
return weh.items
end

local ctd = {}
local bvp = weh.data()

if not bvp or type(bvp.ShopItems) ~= _d("QRRUXBQ") then
weh.items = ctd
return ctd
end

for zvo, csl in ipairs(bvp.ShopItems) do
local yxn = nil

pcall(function()
if csl.itemId then
local ivgd = require(xn.ModuleScripts.ItemData)
local ebi = ivgd[csl.itemId] or (ivgd.ById and ivgd.ById[csl.itemId])
yxn = ebi and ebi.name or nil
elseif csl.cardId then
local rye = require(xn.ModuleScripts.CardData)
local sfzd = rye[csl.cardId] or (rye.ById and rye.ById[csl.cardId])
yxn = sfzd and sfzd.name or nil
end
end)

local qxsr = unl.worldBoss.state

if type(qxsr) == _d("QRRUXBQ") and type(qxsr.shop) == _d("QRRUXBQ") then
for evc, dhfx in ipairs(qxsr.shop) do
if dhfx.id == csl.id and dhfx.name then
yxn = dhfx.name
break
end
end
end

if not yxn then

yxn = tostring(csl.accessoryId or csl.id or _d("Cg")):gsub(_d("ag"), _d("FQ")):gsub(_d("HVBXGVkrQUJSaxpY"), function(ae, lige)
return ae:upper() .. lige
end)
end

table.insert(ctd, {
id = csl.id,
name = yxn,
price = tonumber(csl.price) or 0,
kind = csl.itemId and _d("XAFTXQ") or (csl.cardId and _d("VhREVA") or _d("VBZVVQIDC0cM")),
})
end

weh.items = ctd

return ctd
end

function unl.worldBoss.bodyText()
local ctej = unl.worldBoss
local jza = ctej.state

if type(jza) ~= _d("QRRUXBQ") then
return _d("ZxBXVBgeAxUBXlVREgtGBhgeXw")
end

local grj = {}
local gw = ctej.cycle()
local yo = ctej.isOpen()
local re, iiyu = ctej.window()

if yo == nil then
yo = jza.open == true
end

if yo then
local oj = _d("egVTXg")

if not re and gw then
re = gw.endsAt
end

if re and re > os.time() then
oj = oj .. _d("FbeBEA") .. ctej.clock(re - os.time()) .. _d("FRlTVgU")
end

table.insert(grj, oj)
else
local gxka = _d("cRpBXlEWC0dVWF8G")

if not iiyu and gw then
iiyu = gw.nextAt
end

if iiyu and iiyu > os.time() then
gxka = gxka .. _d("PzdXUxpQDVtV") .. ctej.clock(iiyu - os.time())
end

table.insert(grj, gxka)
end

table.insert(grj, _d("eBBSUR0DXhU") .. tostring(jza.medals or 0) .. _d("Pz5fXB0DXhU") .. tostring(jza.kills or 0))

if jza.inFight then
table.insert(grj, _d("cxxRWAUZClI"))
elseif yo then

table.insert(grj, jza.killedThisSpawn and _d("ZxBXVAh6L1wZWlUVUBBdHEUQAgAFQhsWUR0CAVQRTw") or _d("ZxBXVAg"))
end

if ctej.stopAtFull then
local ijz, ldb = ctej.meter()

if ijz and ldb then
local function ioa(wbr)
if wbr >= 1000000000 then
return string.format(_d("EFsHVjM"), wbr / 1000000000)
elseif wbr >= 1000000 then
return string.format(_d("EBJ7"), math.floor(wbr / 100000) / 10)
elseif wbr >= 1000 then
return string.format(_d("EBJ9"), math.floor(wbr / 100) / 10)
end

return tostring(math.floor(wbr))
end

table.insert(grj, _d("ZhBERhQCRFgQQlUDSkQ") .. ioa(ijz) .. _d("FVoW") .. ioa(ldb)
.. (ctej.meterFull() and _d("PzNDXB1QSRUbWURRFg1SHUJZHxdEQR1fQ1EDFFQCWA") or _d("")))
end
end

return table.concat(grj, _d("P38"))
end

function unl.worldBoss.shopText()
local jyw = unl.worldBoss
local qnn = jyw.state

if type(qnn) ~= _d("QRRUXBQ") or type(qnn.shop) ~= _d("QRRUXBQ") then
return _d("ZxBXVBgeAxUBXlVRAwxaBRgeXw")
end

local gks = { _d("eBBSUR0DXhU") .. tostring(qnn.medals or 0) }

for by, zvez in ipairs(qnn.shop) do
local kim = tostring(zvez.name or zvez.id)
local ksku = tostring(zvez.price or _d("Cg"))
local vtbc

if zvez.kind == _d("XAFTXQ") then
vtbc = kim .. _d("Pw") .. ksku .. _d("FbeBEA") .. tostring(zvez.left or 0) .. _d("Gg") .. tostring(zvez.stock or _d("Cg")) .. _d("FRlTVgU")
elseif zvez.owned then
vtbc = kim .. _d("PzpBXhQU")
else
vtbc = kim .. _d("Pw") .. ksku .. _d("FbeBEB4eARUaUFY")
end

table.insert(gks, vtbc)
end

return table.concat(gks, _d("P38"))
end

function unl.worldBoss.shopOptions()
local vuo = unl.worldBoss

if vuo.options then
return vuo.options
end

local oim = {}

vuo.labelToId = {}

for zf, pzau in ipairs(vuo.shopList()) do
local zyyp = pzau.name .. _d("FbeBEA") .. tostring(pzau.price)

table.insert(oim, zyyp)
vuo.labelToId[zyyp] = pzau.id
end

vuo.options = oim

return oim
end

local function xlxd(jf)
local ecvj = unl.progress[jf]
local zgup = xn:FindFirstChild(_d("ZxRfVCIEBUEARQ"))
local dqxj = zgup and zgup:GetAttribute(_d("dgxVXBQ5AA"))

if type(ecvj) == _d("QRRUXBQ") then
if ecvj.cycleId then
dqxj = ecvj.cycleId
end

if ecvj.completed and ecvj.completedRaidId then
return tostring(dqxj) .. _d("DxFZXhQ")
end

local cg = ecvj.phaseIndex or ecvj.phase

if cg then
return tostring(dqxj) .. _d("Dw") .. tostring(cg)
end
end

return tostring(dqxj)
end

function unl.currentCycle()
local anbi = nil

for ura, snqe in pairs(unl.progress or {}) do
if type(snqe) == _d("QRRUXBQ") then
local qwg = tonumber(snqe.cycleId)

if qwg and (not anbi or qwg > anbi) then
anbi = qwg
end
end
end

return anbi
end

function unl.finished(fago)
local gc = unl.progress[fago]

if type(gc) ~= _d("QRRUXBQ") or gc.completed ~= true or gc.completedRaidId ~= fago then
return false
end

local azxr = tonumber(gc.cycleId)
local eb = unl.currentCycle()

if azxr and eb and azxr < eb then
return false
end

return true
end

function unl.requestProgress(bq)
local fve = os.clock()

if not bq and fve - (unl.progressAt or 0) < 60 then
return
end

unl.progressAt = fve

pcall(function()
xbku.RequestRaidProgress:FireServer()
end)
end

function unl.bossFor(zim, jet)
local eg = unl.picks[jet or zim]

if not eg or #eg == 0 then
return nil
end

local wv = xn:FindFirstChild(_d("ZxRfVCIEBUEARQ"))
local tuj = unl.losses[zim] or {}
local ty = unl.cursor[zim] or 1

for tcyi = 0, #eg - 1 do
local wa = (ty - 1 + tcyi) % #eg + 1
local df = eg[wa]
local da = not wv or wv:GetAttribute(_d("ZxBXVAgv") .. df) == true

if da and not unl.finished(df)
and (tuj[df] or 0) < unl.lossLimit
and (unl.stalls[df] or 0) < unl.lossLimit then
unl.cursor[zim] = wa

return df
end
end

return nil
end

nhka(xbku.RaidBattleStarted.OnClientEvent, function(gq)

local nx = type(gq) == _d("QRRUXBQ") and gq.raidId or nil

if type(nx) == _d("RgFEWR8X") then
unl.pending[nx] = false
unl.stalls[nx] = nil
else
for uuq in pairs(unl.pending) do
unl.pending[uuq] = false
end
end
end)

nhka(xbku.BattleEnd.OnClientEvent, function(basv)

local ifhy = type(basv) == _d("QRRUXBQ") and basv.mode or nil

if ifhy ~= nil and ifhy ~= _d("RxRfVA") then
return
end

for cmq in pairs(unl.pending) do
unl.pending[cmq] = false
end

if type(basv) ~= _d("QRRUXBQ") or not unl.enabled then
return
end

local cbk = type(basv.raidId) == _d("RgFEWR8X") and basv.raidId or nil
local tr = cbk and unl.inFlight[cbk] or nil

if not cbk then
for ta, rsgp in pairs(unl.inFlight) do
cbk = ta
tr = rsgp
break
end
end

if not cbk then
return
end

unl.inFlight[cbk] = nil

if basv.result == _d("WRpFVQ") then

local xa = unl.losses[tr or 1]

unl.cleared[cbk] = nil
xa[cbk] = (xa[cbk] or 0) + 1

for lp in pairs(unl.pendingUntil) do
unl.pendingUntil[lp] = os.time() + 3
end
else

unl.losses[tr or 1][cbk] = 0
end

task.delay(0.3, function()
unl.requestProgress(true)
end)
end)

nhka(xbku.RaidProgress.OnClientEvent, function(wdf)
if type(wdf) == _d("QRRUXBQ") and type(wdf.raidId) == _d("RgFEWR8X") then
local bnn = unl.progress[wdf.raidId]

if type(bnn) ~= _d("QRRUXBQ") or tostring(bnn.cycleId) ~= tostring(wdf.cycleId) then
unl.stalls[wdf.raidId] = nil
end

unl.progress[wdf.raidId] = wdf
end
end)

xbku.RequestRaidProgress:FireServer()

local dxxf = {
enabled = false,
progress = nil,
currentRoom = nil,
inBattle = false,
inBattleUntil = 0,
pending = false,
pendingUntil = 0,
}

getgenv().ACBXAutoRooms = dxxf

nhka(xbku.SyncInfiniteRoomProgress.OnClientEvent, function(qrjo)
if type(qrjo) == _d("WwBbUhQC") then
dxxf.progress = qrjo
dxxf.pending = false
end
end)

nhka(xbku.BattleEnd.OnClientEvent, function(aei)
if type(aei) == _d("QRRUXBQ") and aei.mode == _d("XBtQWR8ZEFAqRF8eHQ") then
dxxf.inBattle = false
dxxf.pending = true
dxxf.pendingUntil = os.time() + 3

task.delay(0.3, function()
xbku.RequestInfiniteRoomProgress:FireServer()
end)
end
end)

xbku.RequestInfiniteRoomProgress:FireServer()

local wioq = {
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

getgenv().ACBXAutoTower = wioq

local rfr = {
enabled = false,
floor = 0,
triggered = false,
}

getgenv().ACBXAutoPause = rfr

local gtav = {
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
Typhoon = _d("QQxGWB4fCg"),
Blizzard = _d("VxlfSgsRFlE"),
Lightning = _d("WRxRWAUeDVsS"),
Windstorm = _d("QhxYVAIEC0cY"),
Sharingan = _d("Rh1XQhgeA1Qb"),
Singularity = _d("RhxYVwQcBUccQkk"),
[_d("eBpYUQMTDBUxWV0QGQo")] = _d("WBpYUQMTDGoRWV0QGQo"),
Void = _d("QxpfVA"),
[_d("eBRSVVEZChU9U1EHFQo")] = _d("WBRSVS4ZCmodU1EHFQo"),
Manga = _d("WBRYVxA"),
},
}

function gtav.weatherLeft()
local et = kdim:FindFirstChildOfClass(_d("ZRlXSRQCI0Ac"))
local zjh = et and et:FindFirstChild(_d("YhBXRBkVFnIAXw"))

if not zjh then
return nil
end

for sjz, bcdt in ipairs(zjh:GetDescendants()) do
if bcdt:IsA(_d("YRBORD0RBlAZ")) then
local vzw = tonumber(string.match(tostring(bcdt.Text), _d("ayFfXRRQNlAYV1kfGQpSTxNDW1hBUV4f")))

if vzw and vzw > 0 then
return vzw
end
end
end

return nil
end

function gtav.weatherWanted(ywb)
local xr = gtav.weatherNow

if type(xr) ~= _d("RgFEWR8X") then
return nil
end

for zno, lqrx in pairs(ywb or gtav.weathers) do
if lqrx and gtav.weatherIds[zno] == xr then
return zno
end
end

return nil
end

getgenv().ACBXAutoGiveUp = gtav

local giv = {
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

if xn:FindFirstChild(_d("eBpSRR0VN1YHX0AFAw")) and xn.ModuleScripts:FindFirstChild(_d("fRREVBIfFlAhWUcUAiBUAVc")) then
local naw, bkt = pcall(function()
return require(xn.ModuleScripts.HardcoreTowerData)
end)

if naw then
giv.data = bkt
end
end

getgenv().ACBXHardcore = giv

task.spawn(function()
local ks = xn:FindFirstChild(_d("ZxBbXwUVFw"))

if not ks then
return
end

local ga = ks:WaitForChild(_d("ZgxYUzkRFlEWWUIUJAtCEERgAx8DRxBFQw"), 20)

if ga and ga:IsA(_d("ZxBbXwUVIUMQWEQ")) then
giv.remotes.sync = ga

nhka(ga.OnClientEvent, function(jqmd)
if type(jqmd) ~= _d("QRRUXBQ") then
return
end

giv.progress = tonumber(jqmd.progress) or giv.progress
giv.best = tonumber(jqmd.best) or giv.best

if type(jqmd.points) == _d("QRRUXBQ") then
giv.points = jqmd.points
end
end)
end

local bf = ks:WaitForChild(_d("ZxBHRRQDEH0URFQSHxZQIVlHFAI0RxpRQhQDFw"), 20)

if bf and bf:IsA(_d("ZxBbXwUVIUMQWEQ")) then
giv.remotes.request = bf

pcall(function()
bf:FireServer()
end)
end

local drdr = ks:WaitForChild(_d("chlZUhAcJkATUGUBFAVBEFI"), 20)

if drdr and drdr:IsA(_d("ZxBbXwUVIUMQWEQ")) then
nhka(drdr.OnClientEvent, function(lvc, td, yknx, egys)
giv.globalLuck = tonumber(lvc) or 0
giv.globalRoll = tonumber(td) or 0
giv.globalLuckTime = type(yknx) == _d("RgFEWR8X") and yknx or _d("")
giv.globalRollTime = type(egys) == _d("RgFEWR8X") and egys or _d("")
end)
end
end)

function cq.otherTowerOn(kko)
if cq.enabled then
return false
end

if kko == _d("QRpBVQM") then
return false
end

if kko == _d("XRRaXB4HAVAb") then
return giv.active()
end

return vot.run.enabled
end

function giv.active()
return giv.island
end

function giv.unspentPoints()
local qq = giv.data
local on = tonumber(giv.progress) or 0
local fzo = 0

if type(qq) == _d("QRRUXBQ") and type(qq.getEarnedPoints) == _d("UwBYUwUZC1s") then
local uzj, fd = pcall(qq.getEarnedPoints, on)
fzo = uzj and tonumber(fd) or 0
end

return math.max(0, fzo - #(giv.points or {})), fzo
end

function giv.buffText()
local uvy = giv.data

if type(uvy) ~= _d("QRRUXBQ") then
return _d("fRREVBIfFlAhWUcUAiBUAVcQGANEWBxFQxgeAxUTRF8cUBBdHEUQEwUNWREY")
end

local gmth = tonumber(giv.progress) or 0
local mta = tonumber(giv.best) or 0
local qhrp, pgw = giv.unspentPoints()
local xdzf = {
_d("cxlZXwNQ") .. gmth .. _d("FVUWchQDEBU") .. mta,
_d("ZRpfXgUDXhU") .. qhrp .. _d("FQBYQwEVCkFVWVZR") .. pgw .. _d("FRBXQh8VAA"),
}

local yx = {}

for umuz, ugz in ipairs(giv.points or {}) do
local ncm = uvy.StatById and uvy.StatById[ugz]
local qu = ncm and (ncm.name or ugz) or tostring(ugz)
local zraj = uvy.PointValue and uvy.PointValue[ugz]

table.insert(yx, zraj and (qu .. _d("FV4") .. tostring(zraj)) or qu)
end

if #yx == 0 then
table.insert(xdzf, _d("dwBQVgJKRFsaWFVREgtAEl5EUQkBQQ"))
else
table.insert(xdzf, _d("dwBQVgJKRA") .. table.concat(yx, _d("GVU")))
end

local pl = {}

if (tonumber(giv.globalLuck) or 0) > 0 then
table.insert(pl, _d("eQBVW1Fb") .. tostring(giv.globalLuck) .. _d("EA") .. (giv.globalLuckTime ~= _d("") and (_d("FV0") .. giv.globalLuckTime .. _d("HA")) or _d("")))
end

if (tonumber(giv.globalRoll) or 0) > 0 then
table.insert(pl, _d("ZxpaXFEDFFAQUhBa") .. tostring(giv.globalRoll) .. _d("EA") .. (giv.globalRollTime ~= _d("") and (_d("FV0") .. giv.globalRollTime .. _d("HA")) or _d("")))
end

if #pl == 0 then
table.insert(xdzf, _d("chlZUhAcRFcAUFYCSkRbGlhVUREHQRxAVQ"))
else
table.insert(xdzf, _d("chlZUhAcRFcAUFYCSkQ") .. table.concat(pl, _d("GVU")))
end

return table.concat(xdzf, _d("Pw"))
end

function giv.nextMilestone()
local sg = giv.data

if type(sg) ~= _d("QRRUXBQ") or type(sg.Milestones) ~= _d("QRRUXBQ") or #sg.Milestones == 0 then
return nil
end

local eqme = tonumber(kdim:GetAttribute(_d("fRREVBIfFlAzWl8eAg"))) or 0

return math.min(eqme + 1, sg.Milestones[#sg.Milestones])
end

function giv.start(kk)
local gwbg = giv.nextMilestone()

if not gwbg then
return false
end

local zpff = ubll:FindFirstChild(kk == 2 and _d("ZxBFVQUyBUEBWlU3HAtaBwQ") or _d("ZxBFVQUyBUEBWlU3HAtaBw"))

if zpff and zpff:IsA(_d("dxxYVBASCFAwQFUfBA")) then
pcall(function()
zpff:Fire(gwbg, _d("XBtQWR8ZEFAqRF8eHQ"))
end)
end

local hj = ubll:FindFirstChild(kk == 2 and _d("ZgFXQgU5ClMcWFkFFTZaGltyEAQQWRAE") or _d("ZgFXQgU5ClMcWFkFFTZaGltyEAQQWRA"))

if hj and hj:IsA(_d("dxxYVBASCFAwQFUfBA")) then
pcall(function()
hj:Fire(gwbg, _d("XRREVBIfFlA"), gwbg)
end)
end

if lb.bossTeams.applyTower then
lb.bossTeams.applyTower(_d("XRREVBIfFlA"), kk)
end

giv.pending = true
giv.pendingUntil = os.time() + 10

return pcall(function()
xbku.StartBattle:FireServer(_d("XBtQWR8ZEFAqRF8eHQ"), {
tower = _d("XRREVBIfFlA"),
milestone = gwbg,
slot = kk,
})
end)
end

function giv.floorNow()
local clq = cq.hardcoreSlot()

if not clq or not cq.busy(clq) then
return nil
end

local kbya = ubll:FindFirstChild(clq == 2 and _d("dxRCRB0VI0AcBA") or _d("dxRCRB0VI0Ac"))
local znek = kbya and kbya:FindFirstChild(_d("ZwBYdh0fC0c5V1IUHA"))
local rr = znek and znek.Text or _d("")

return tonumber(rr:match(_d("azNaXx4CQUZeHhUVW00")))
end

local pvq = {
enabled = true,
nextAt = os.clock() + 300,
jumps = 0,
}

getgenv().ACBXAntiKick = pvq

local cff = getgenv().ACBXNoUpdate == true

local noha = {
enabled = not cff,
buildId = "v261103-0205",
interval = 180,
retry = 45,
forceAfter = 900,
applying = false,
checking = false,
pendingVersion = nil,
pendingSince = nil,
cameFrom = nil,
}

getgenv().ACBXUpdater = noha

local htn = {
enabled = false,
tpToBay = false,

stick = {
enabled = false,
at = 0,
hits = 0,
last = _d("WhNQ"),

names = {
[_d("RgFfUxo")] = true,
[_d("WQBVW1EDEFwWXQ")] = true,
[_d("WQBVWwIEDVYe")] = true,
[_d("WQBVWy4DEFwWXQ")] = true,
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
rod = _d("GA"),
castTime = 0,
tutorialStep = 0,
phase = _d("XBFaVQ"),
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
deepPhase = _d("XBFaVQ"),
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

local oaoh = Vector3.new(-546.8, 13.9, -40250.1)

if type(getgenv().ACBXFishingCatches) == _d("QRRUXBQ") then
htn.catches = getgenv().ACBXFishingCatches
end

htn.totalCatches = 0

for pnyf, uvj in pairs(htn.catches) do
htn.totalCatches = htn.totalCatches + uvj
end

getgenv().ACBXFishingCatches = htn.catches
getgenv().ACBXFishing = htn

htn.catchName = function(fij)
local vy = op.ById[fij]

if vy and vy.name then
return vy.name
end

local vciw = pt.ById[fij]

if vciw and vciw.name then
return vciw.name
end

return fij
end

local dbfy

dbfy = {
folder = _d("dDZ0aA"),
path = _d("dDZ0aF4TBUEWXlUCXg5GGlg"),
at = 0,
save = function()
if type(writefile) ~= _d("UwBYUwUZC1s") then
return false
end

local bru = pcall(function()
if type(makefolder) == _d("UwBYUwUZC1s") and type(isfile) == _d("UwBYUwUZC1s") and not isfile(dbfy.path) then
pcall(makefolder, dbfy.folder)
end

writefile(dbfy.path, game:GetService(_d("fQFCQCIVFkMcVVU")):JSONEncode({
catches = htn.catches,
totalCatches = htn.totalCatches,
lastCatch = htn.lastCatch,
updatedAt = os.time(),
}))
end)

return bru
end,
load = function()
if type(readfile) ~= _d("UwBYUwUZC1s") or type(isfile) ~= _d("UwBYUwUZC1s") then
return false
end

local yijg, iri = pcall(function()
if not isfile(dbfy.path) then
return nil
end

return readfile(dbfy.path)
end)

if not yijg or type(iri) ~= _d("RgFEWR8X") or #iri == 0 then
return false
end

local usq
local jho = pcall(function()
usq = game:GetService(_d("fQFCQCIVFkMcVVU")):JSONDecode(iri)
end)

if not jho or type(usq) ~= _d("QRRUXBQ") or type(usq.catches) ~= _d("QRRUXBQ") then
return false
end

for ggt, jve in pairs(usq.catches) do
local hyzd = tonumber(jve) or 0

if hyzd > 0 then
htn.catches[tostring(ggt)] = math.max(htn.catches[tostring(ggt)] or 0, hyzd)
end
end

htn.totalCatches = 0

for cvtj, dc in pairs(htn.catches) do
htn.totalCatches = htn.totalCatches + dc
end

return true
end,
}

dbfy.load()
getgenv().ACBXFishingStore = dbfy

local jy = {}

local za = 0

local function gpf()
local hqpo = {}

for rzo, ik in ipairs(workspace:GetDescendants()) do
if ik:IsA(_d("dxRFVSERFkE")) and ik.Name == _d("YhRCVQM") then
table.insert(hqpo, ik)
end
end

jy = hqpo
za = os.clock()
end

local function iyd(vg)
if type(vg) ~= _d("QRRUXBQ") then
return false
end

htn.loaded = true
htn.dirty = false
htn.fishing = vg.fishing == true
htn.autoOn = vg.autoOn == true
htn.autoUnlocked = vg.autoUnlocked == true
htn.casts = tonumber(vg.casts) or htn.casts
htn.totalCasts = tonumber(vg.totalCasts) or htn.totalCasts
htn.luck = tonumber(vg.luck) or htn.luck
htn.rod = tostring(vg.equippedRod or htn.rod)
htn.castTime = tonumber(vg.castTime) or htn.castTime
htn.tutorialStep = tonumber(vg.tutorialStep) or htn.tutorialStep

if type(vg.rods) == _d("QRRUXBQ") then
htn.rodsOwned = vg.rods
end

if type(vg.baits) == _d("QRRUXBQ") then
htn.baitsOwned = vg.baits
end

if type(vg.boats) == _d("QRRUXBQ") then
htn.boatsOwned = vg.boats
end

if type(vg.mats) == _d("QRRUXBQ") then
htn.mats = vg.mats
end

if vg.bootOwned ~= nil then
htn.boot.owned = vg.bootOwned == true
end

if vg.bootEquipped ~= nil then
htn.boot.equipped = vg.bootEquipped == true
end

if vg.equippedBait ~= nil then
htn.equippedBait = tostring(vg.equippedBait)
end

if vg.activeBoat ~= nil then
htn.activeBoat = tostring(vg.activeBoat)
end

htn.boatTier = tonumber(vg.boatTier) or htn.boatTier
htn.islandLocked = vg.islandLocked == true
htn.rebirths = tonumber(vg.rebirths) or htn.rebirths

if type(vg.rebirthCards) == _d("QRRUXBQ") then
htn.rebirthCards = vg.rebirthCards
end

htn.lastSync = os.time()

return true
end

local function yti()
local ziy, riyc = pcall(function()
return xbku.FishingGetState:InvokeServer()
end)

if not ziy or type(riyc) ~= _d("QRRUXBQ") then
htn.loaded = false
return false
end

return iyd(riyc)
end

local vtzm = false

local function rxhm()
if vtzm then
return false
end

local egk = kdim.Character

if not egk then
return false
end

if egk:FindFirstChild(_d("cxxFWBgeA2caUg")) then
return true
end

local qqe = kdim:FindFirstChild(_d("dxRVWwERB14"))
local qfzr = qqe and qqe:FindFirstChild(_d("cxxFWBgeA2caUg"))
local pgub = egk:FindFirstChildOfClass(_d("fQBbUR8fDVE"))

if not (qfzr and pgub) then
return false
end

return pcall(function()
pgub:EquipTool(qfzr)
end)
end

local function yy()
local kue = kdim.Character
local js = kue and kue:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not js then
return nil
end

local smth = RaycastParams.new()
smth.FilterType = Enum.RaycastFilterType.Exclude
smth.FilterDescendantsInstances = { kue }

local va = 24
local zkkc = {}
local zefn = 0

for zth = 0, va - 1 do
local rfj = math.rad(zth * (360 / va))
local utrs = Vector3.new(math.sin(rfj), 0, math.cos(rfj))
local aafp = js.Position + utrs * 20 + Vector3.new(0, 40, 0)
local odmz = workspace:Raycast(aafp, Vector3.new(0, -120, 0), smth)
local ygat = odmz and (js.Position.Y - odmz.Position.Y) or 120

zkkc[zth] = ygat > 12

if zkkc[zth] then
zefn = zefn + 1
end
end

if zefn == 0 then
return nil
end

local vlmt, nroa = nil, 0

for bsa = 0, va - 1 do
if zkkc[bsa] and not zkkc[(bsa - 1) % va] then
local yk = 0

while yk < va and zkkc[(bsa + yk) % va] do
yk = yk + 1
end

if yk > nroa then
vlmt = bsa
nroa = yk
end
end
end

if not vlmt then
return nil
end

local fwn = vlmt + (nroa - 1) / 2
local jub = math.rad(fwn * (360 / va))

return Vector3.new(math.sin(jub), 0, math.cos(jub))
end

local function aetp()
local jqki = kdim.Character
local xhs = jqki and jqki:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not xhs then
return nil
end

if #jy == 0 or os.clock() - za > 20 then
gpf()
end

local uyja, em = nil, math.huge

for cgsy, bqm in ipairs(jy) do
if bqm.Parent then
local kdj = (bqm.Position - xhs.Position).Magnitude

if kdj < em then
em = kdj
uyja = bqm
end
end
end

if not uyja or em > 25 then
local iz = yy()

if iz then
return iz
end
end

if not uyja then
return nil
end

local zxhv = Vector3.new(uyja.Position.X - xhs.Position.X, 0, uyja.Position.Z - xhs.Position.Z)

if zxhv.Magnitude < 0.05 then
return Vector3.new(0, 0, -1)
end

return zxhv.Unit
end

local function dpv()
local pn = kdim.Character
local kvh = pn and pn:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not kvh then
return nil
end

local vuc = kvh.CFrame.LookVector
local lbes = Vector3.new(vuc.X, 0, vuc.Z)

if lbes.Magnitude < 0.05 then
return nil
end

return lbes.Unit
end

local function hjtl()
local so = kdim.Character
local xyc = so and so:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not xyc then
return false
end

local oeb = oaoh
local nrx = RaycastParams.new()
nrx.FilterType = Enum.RaycastFilterType.Exclude
nrx.FilterDescendantsInstances = { so }

local uppd = workspace:Raycast(oaoh + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), nrx)

if uppd and uppd.Instance.Name ~= _d("YhRCVQM") then
oeb = Vector3.new(oaoh.X, uppd.Position.Y + 3, oaoh.Z)
end

xyc.CFrame = CFrame.new(oeb)
task.wait(0.5)
gpf()

return true
end

local function jq()
local kivj = kdim.Character
local ji = kivj and kivj:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not ji then
return false
end

local pawj = Vector3.new(oaoh.X - ji.Position.X, 0, oaoh.Z - ji.Position.Z)
local ybkf = pawj.Magnitude

if ybkf < 2 then
return false
end

local pwqw = pawj.Unit

if ybkf > 12 then
local dqeb = math.min(14, ybkf - 6)
local squv = ji.Position + pwqw * dqeb
local wxye = RaycastParams.new()
wxye.FilterType = Enum.RaycastFilterType.Exclude
wxye.FilterDescendantsInstances = { kivj }

local lswh = workspace:Raycast(squv + Vector3.new(0, 25, 0), Vector3.new(0, -80, 0), wxye)

if lswh and lswh.Instance.Name ~= _d("YhRCVQM") then
local kg = lswh.Position.Y + 3.2

if math.abs(kg - ji.Position.Y) <= 10 then
local ozu = Vector3.new(lswh.Position.X, kg, lswh.Position.Z)
ji.CFrame = CFrame.lookAt(ozu, ozu + pwqw)

return true
end
end
end

ji.CFrame = CFrame.lookAt(ji.Position, ji.Position + pwqw)

return true
end

local ivkv = {}

ivkv.surfaceWait = 8

ivkv.walking = false
ivkv.walkStartedAt = 0

ivkv.islandHold = Vector3.new(-7384, 16.3, -40539)

ivkv.custom = nil
ivkv.customIsland = nil

ivkv.islandAnchors = {
{ id = _d("VBdXXhUfClARaVkCHAVbEQ"), x = -3800 },
{ id = _d("QQJfXi4SAVQWXlUC"), x = -6180 },
{ id = _d("QhxYVBwZCFkqX0MdFQ"), x = -7480 },
}

ivkv.arrivals = {
abandoned_island = Vector3.new(-3825, 24, -40260),
twin_beaches = Vector3.new(-6180, 40, -40350),
windmill_isle = Vector3.new(-7480, 30, -40350),
lobby = Vector3.new(-499, 17, -40234),
}

function ivkv.islandOf(gjtp)
if not gjtp then
return _d("WRpUUgg")
end

if gjtp.X > -4500 then
return _d("WRpUUgg")
end

local atb, tkx = _d("VBdXXhUfClARaVkCHAVbEQ"), math.huge

for voz, hon in ipairs(ivkv.islandAnchors) do
local qxw = math.abs(gjtp.X - hon.x)

if qxw < tkx then
atb = hon.id
tkx = qxw
end
end

return atb
end

ivkv.savedVersion = 2

do
local kmxk = getgenv().ACBXDeepSpot

if type(kmxk) == _d("QRRUXBQ") and kmxk.v == ivkv.savedVersion
and tonumber(kmxk.X) and tonumber(kmxk.Y) and tonumber(kmxk.Z) then
ivkv.custom = Vector3.new(tonumber(kmxk.X), tonumber(kmxk.Y), tonumber(kmxk.Z))
ivkv.customIsland = kmxk.island
end
end

function ivkv.spot()
return ivkv.custom or ivkv.islandHold
end

function ivkv.dropStale()
if not ivkv.custom then
return false
end

if ivkv.zoneAt(ivkv.custom) then
return false
end

ivkv.custom = nil
ivkv.customIsland = nil
getgenv().ACBXDeepSpot = nil

return true
end

function ivkv.capture()
local xuu = kdim.Character
local mexy = xuu and xuu:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not mexy then
return false, _d("exoWUxkRFlQWQlUDUBBaVURVEBREVFVFQB4ERFMHWV1f")
end

local evqj = mexy.Position
local ob = ivkv.floorAt(Vector3.new(evqj.X, evqj.Y + 10, evqj.Z))

if not ob then
return false, _d("ZgFXXhVQC1tVRV8dGQAVEkRfBB4AFRNfQgIERBhVQlgYA0RGBVlEURgFRlVYX1EWCFoaRBAFH0RWFEVEURYWWhgY")
end

local wxh = ivkv.zoneAt(evqj)

if not wxh then
return false, _d("YR1fQ1EDFFoBFlkCUAtAAUVZFRVEUANTQghQAlwGXlkfF0RHHFhXUV1ERgFXXhVQC0MQRBAFGAEVAldEFAJEUxxEQwVe")
end

ivkv.custom = evqj
ivkv.customIsland = ivkv.islandOf(evqj)

getgenv().ACBXDeepSpot = {
X = evqj.X,
Y = evqj.Y,
Z = evqj.Z,
island = ivkv.customIsland,
v = ivkv.savedVersion,
}

return true, _d("ZhRAVRVQEF0cRRACAAtBVVdDUQQMUFVSVRQASUIUQlUDUAxaGVIQWQ") .. tostring(wxh.name) .. _d("HFs")
end

function ivkv.zoneTable()
local glkd = {}

if howy and type(howy.Zones) == _d("QRRUXBQ") then
for gdmm, doyg in ipairs(howy.Zones) do
glkd[#glkd + 1] = {
id = tostring(doyg.id),
name = tostring(doyg.name or doyg.id),
half = tonumber(doyg.half) or 0,
luck = tonumber(doyg.luck) or 0,
index = tonumber(doyg.index) or 0,
boatTier = tonumber(doyg.boatTier) or 0,
}
end
end

table.sort(glkd, function(kaw, dme)
return kaw.index < dme.index
end)

return glkd
end

function ivkv.zoneAt(fvx)
local biq = howy and howy.ZoneCenter
local aau = ivkv.zoneTable()

if not (biq and fvx and #aau > 0) then
return nil
end

local ips = math.max(math.abs(fvx.X - biq.X), math.abs(fvx.Z - biq.Z))

for vamf, jnrh in ipairs(aau) do
if ips < jnrh.half then
return jnrh
end
end

return nil
end

function ivkv.current()
local ol = kdim.Character
local mkg = ol and ol:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

return mkg and ivkv.zoneAt(mkg.Position) or nil
end

function ivkv.sync()
local wr = ivkv.current()
htn.zoneId = wr and wr.id or nil
end

function ivkv.floorAt(wrlc)
local qw = kdim.Character
local ebn = RaycastParams.new()
ebn.FilterType = Enum.RaycastFilterType.Exclude
ebn.FilterDescendantsInstances = { qw }

local kahp = workspace:Raycast(Vector3.new(wrlc.X, wrlc.Y + 20, wrlc.Z), Vector3.new(0, -80, 0), ebn)

if kahp and kahp.Instance.Name ~= _d("YhRCVQM") then
return kahp
end

return nil
end

function ivkv.ensureSpotMap()
local mhlk = ivkv.spot()
local abh = Vector3.new(mhlk.X, mhlk.Y + 20, mhlk.Z)

if ivkv.floorAt(abh) then
return true
end

local wcda = workspace:FindFirstChild(_d("eBRGQw"))

if wcda and wcda:FindFirstChild(_d("dhpXQwURCHkaVFII")) then
if os.clock() - (ivkv.hopAt or 0) > 1 then
ivkv.hopAt = os.clock()
ivkv.hop(mhlk)
htn.lastMessage = _d("eBpAWR8XREEaFkQZFURREFNAXAcFQRBEEAIAC0E")
end

return false
end

if os.clock() - (ivkv.islandAskedAt or 0) > 1.2 then
ivkv.islandAskedAt = os.clock()

local skr = ivkv.customIsland or ivkv.islandOf(mhlk)

if skr == _d("WRpUUgg") then
pcall(function()
xbku.TeleportToWorld:FireServer(_d("WRpUUgg"))
end)
else
pcall(function()
xbku.FishingIslandTeleport:FireServer(_d("QhRPQB4ZCkE"), skr)
end)
end

htn.lastMessage = _d("YRRdWR8XREEdUxAWEQlQUkUQBRUIUAVZQgVQEFpVQlgUUABQEEYdBhEQUAcWXRAA")
end

return false
end

function ivkv.hop(nlal)
local fgoi = kdim.Character
local il = fgoi and fgoi:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))
local qoq = fgoi and fgoi:FindFirstChildOfClass(_d("fQBbUR8fDVE"))

if not (il and qoq) then
return false
end

if qoq.SeatPart then
pcall(function()
qoq.Sit = false
end)
end

il.AssemblyLinearVelocity = Vector3.zero
il.CFrame = CFrame.new(Vector3.new(nlal.X, nlal.Y + 8, nlal.Z))

return true
end

function ivkv.faceWater()
local jv = kdim.Character
local fb = jv and jv:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not fb then
return false
end

local vba = aetp()

if not vba then
local kjbe = howy and howy.ZoneCenter

if kjbe then
local cfwa = Vector3.new(kjbe.X - fb.Position.X, 0, kjbe.Z - fb.Position.Z)

vba = cfwa.Magnitude > 1 and cfwa.Unit or nil
end
end

if not vba then
return false
end

fb.CFrame = CFrame.lookAt(fb.Position, fb.Position + vba)

return true
end

function ivkv.aimWater(oopj)
local no = kdim.Character
local pfc = no and no:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not pfc then
return false
end

if oopj then
gpf()
end

local pp = pfc.CFrame.LookVector
local dj = Vector3.new(pp.X, 0, pp.Z)
local ydxt = aetp()

if not ydxt then
return false
end

if dj.Magnitude > 0.05 and dj.Unit:Dot(ydxt) > 0.985 then
return true
end

pfc.CFrame = CFrame.lookAt(pfc.Position, pfc.Position + ydxt)

return true
end

function ivkv.hold(tlni)
local micw = kdim.Character
local trp = micw and micw:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))
local lsf = micw and micw:FindFirstChildOfClass(_d("fQBbUR8fDVE"))

if not (trp and lsf) then
return false
end

if lsf.SeatPart then
pcall(function()
lsf.Sit = false
end)
end

local jmfq = ivkv.floorAt(tlni)

if not jmfq then
return false
end

trp.AssemblyLinearVelocity = Vector3.zero
trp.CFrame = CFrame.new(Vector3.new(tlni.X, jmfq.Position.Y + 3.2, tlni.Z))

pcall(ivkv.aimWater, true)

htn.phase = _d("XBFaVQ")
htn.nextCastAt = 0

return true
end

function ivkv.dive()
local loaa = ivkv.spot()

if not ivkv.ensureSpotMap() then
return false
end

if not ivkv.hold(loaa) then
return false
end

ivkv.islandAskedAt = 0

local zajo = ivkv.zoneAt(loaa)

htn.lastMessage = zajo
and (_d("fRpaVBgeAxUBXlVRFAFQBRtHEAQBR1VFQB4ERB0") .. tostring(zajo.name) .. _d("HA"))
or _d("fRpaVBgeAxUBXlVRFAFQBRtHEAQBR1VFQB4E")

task.wait(0.25)
ivkv.sync()
htn.deepDiveAt = os.clock() + 2

return true
end

function ivkv.walk()
local fx = kdim.Character
local igd = fx and fx:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if ivkv.walking and os.clock() - (ivkv.walkStartedAt or 0) < 60 then
return false
end

if not igd then
return false
end

local ju = ivkv.spot()

if (igd.Position - Vector3.new(ju.X, igd.Position.Y, ju.Z)).Magnitude <= 8 then
htn.phase = _d("XBFaVQ")
htn.nextCastAt = 0

return true
end

ivkv.walking = true
ivkv.walkStartedAt = os.clock()
htn.deepPhase = _d("QhRaWw")
htn.deepStageAt = os.clock()
htn.lastMessage = _d("YhRaWxgeAxUBWRAFGAEVEVNVARUXQVVBUQUVFhUGRl8F")

task.spawn(function()
local wbys = fx and fx:FindFirstChildOfClass(_d("fQBbUR8fDVE"))

local hsb, mk = pcall(function()

local lsp = workspace:FindFirstChild(_d("eBRGQw"))
local wd = ivkv.customIsland or ivkv.islandOf(ju)
local pzw = (igd.Position - Vector3.new(ju.X, igd.Position.Y, ju.Z)).Magnitude

if pzw > 400 then
if not (lsp and lsp:FindFirstChild(_d("dhpXQwURCHkaVFII"))) then
pcall(function()
xbku.TeleportToWorld:FireServer(_d("WRpUUgg"))
end)

local pqa = os.clock() + 20

while htn.deepWalk and os.clock() < pqa do
local jxy = workspace:FindFirstChild(_d("eBRGQw"))

if jxy and jxy:FindFirstChild(_d("dhpXQwURCHkaVFII")) then
break
end

task.wait(0.5)
end
end

if htn.deepWalk then
local ct = ivkv.arrivals and ivkv.arrivals[wd]

if ct then
ivkv.hop(ct)
else
local ip = Vector3.new(ju.X - igd.Position.X, 0, ju.Z - igd.Position.Z)
local vi = ip.Magnitude > 1 and ip.Unit or Vector3.new(1, 0, 0)

ivkv.hop(Vector3.new(ju.X - vi.X * 120, ju.Y, ju.Z - vi.Z * 120))
end

task.wait(1.5)
end
end

if htn.deepWalk and wbys then

local ckdt = (igd.Position - Vector3.new(ju.X, igd.Position.Y, ju.Z)).Magnitude
local dbs = os.clock() + math.clamp(ckdt / 8, 30, 600)
local kif = 0
local yfq = igd.Position
local xcpu = os.clock()

while htn.deepWalk and os.clock() < dbs do
local eds = Vector3.new(ju.X - igd.Position.X, 0, ju.Z - igd.Position.Z)

if eds.Magnitude <= 3 then
break
end

if os.clock() - kif >= 0.25 then
wbys:MoveTo(Vector3.new(ju.X, igd.Position.Y, ju.Z))
kif = os.clock()
end

if os.clock() - xcpu >= 1.2 then
if (igd.Position - yfq).Magnitude < 2 then
wbys.Jump = true
end

yfq = igd.Position
xcpu = os.clock()
end

task.wait(0.1)
end

wbys:MoveTo(igd.Position)
end
end)

ivkv.walking = false

if not hsb then
htn.deepPhase = _d("XBFaVQ")
htn.deepStageAt = os.clock()
htn.lastMessage = _d("YhRaW1EECxUxU1UBFRdBVWFRBRUWFRNXWR0VAA9V") .. tostring(mk)

return
end

if not htn.deepWalk then
return
end

local hg = Vector3.new(igd.Position.X - ju.X, 0, igd.Position.Z - ju.Z)

if hg.Magnitude <= 6 then

pcall(ivkv.aimWater, true)
htn.phase = _d("XBFaVQ")
htn.nextCastAt = 0
htn.deepPhase = _d("XRpaVA")
htn.deepStageAt = os.clock()
ivkv.sync()
htn.lastMessage = _d("YhRaWxQUREEaFkQZFURGFEBVFVAAUBBGHQYREFAHFkMBHxA")
else

htn.deepPhase = _d("XBFaVQ")
htn.deepStageAt = os.clock()
htn.lastMessage = _d("dhpDXBVQCloBFkcQHA8VAVkQBRgBFRFTVQEVF0FVQVEFFRYVBkZfBVBJFQFESRgeAxUUUVEYHg")
end
end)

return false
end

function ivkv.settle()
for ci = 1, 30 do
if not htn.deepZone or htn.deepWalk then
return false
end

if ivkv.dive() then
return true
end

task.wait(1)
end

return false
end

function ivkv.surface()
local sp = kdim.Character
local ixyp = sp and sp:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not ixyp then
return false
end

local zesc = RaycastParams.new()
zesc.FilterType = Enum.RaycastFilterType.Exclude
zesc.FilterDescendantsInstances = { sp }

local cmr = workspace:Raycast(oaoh + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), zesc)
local cldv = oaoh

if cmr and cmr.Instance.Name ~= _d("YhRCVQM") then
cldv = Vector3.new(oaoh.X, cmr.Position.Y + 3, oaoh.Z)
end

ixyp.CFrame = CFrame.new(cldv)
htn.phase = _d("XBFaVQ")
htn.nextCastAt = 0

return true
end

function htn.gotoIsland()
local nhv = kdim.Character
local pbds = nhv and nhv:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))
local erz = workspace:FindFirstChild(_d("fAZaUR8UIlwGXlUDHQVbO2Zz"), true)

if not (pbds and erz) then
return false
end

local dcq = erz:GetPivot()
local knmy = RaycastParams.new()
knmy.FilterType = Enum.RaycastFilterType.Exclude
knmy.FilterDescendantsInstances = { nhv, erz }

local ir = nil
local ch = -math.huge

for kstj, xowo in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local eknp = workspace:Raycast(dcq.Position + xowo + Vector3.new(0, 30, 0), Vector3.new(0, -120, 0), knmy)

if eknp and eknp.Position.Y > ch then
ir = eknp
ch = eknp.Position.Y
end
end

if ir then
pbds.CFrame = CFrame.new(Vector3.new(ir.Position.X, ch + 3.5, ir.Position.Z))
else
pbds.CFrame = CFrame.new(dcq.Position + Vector3.new(0, 4, 0))
end

htn.phase = _d("XBFaVQ")
htn.nextCastAt = 0

return true
end

function ivkv.cycle()
local xkm = os.clock()
local zdk = htn.deepPhase or _d("XBFaVQ")
local jmw = tonumber(htn.deepStageAt) or 0

if xkm < math.max(htn.shopTripUntil or 0, htn.tpHoldUntil or 0) then
return
end

if zdk == _d("XBFaVQ") then
htn.deepPhase = _d("XRpaVA")
htn.deepStageAt = xkm

if htn.deepWalk then
ivkv.walk()
else
ivkv.dive()
end

return
end

if zdk == _d("QhRaWw") then
return
end

if zdk == _d("XRpaVA") then
local dcp = ivkv.current()

local nz = ivkv.zoneAt(ivkv.spot())

if dcp and not kdim:GetAttribute(_d("ZgJfXRwZClI")) and xkm - (htn.deepAimAt or 0) > 2 then
htn.deepAimAt = xkm
pcall(ivkv.aimWater)
end

if kdim:GetAttribute(_d("ZgJfXRwZClI")) then
if htn.deepWalk then

htn.deepPhase = _d("XBFaVQ")
htn.deepStageAt = xkm
else
htn.deepPhase = _d("URxG")
htn.deepStageAt = xkm
htn.lastMessage = _d("ZgJfXRwZClJVV0RRBAxQVVJVFABERgVZRFFdREYARFYQEwFRVVBfA1AFXAc")
end
elseif not dcp or (nz and dcp.index < nz.index) then

htn.deepPhase = _d("XBFaVQ")
htn.deepStageAt = xkm
end

return
end

if zdk == _d("URxG") then
ivkv.surface()
htn.deepPhase = _d("RgBEVhATAQ")
htn.deepStageAt = xkm

return
end

if zdk == _d("RgBEVhATAQ") and xkm - jmw >= ivkv.surfaceWait then
htn.deepPhase = _d("XBFaVQ")
end
end

local function pgka()
local kyun = kdim.Character
local ps = kyun and kyun:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not ps then
return false
end

return (ps.Position - oaoh).Magnitude <= 12
end

local function eax()
if not rxhm() then
return false
end

local jz = pcall(function()
xbku.FishingSetAuto:FireServer(true)
end)

htn.usingGameAuto = jz
return jz
end

local function emw()
htn.usingGameAuto = false

pcall(function()
xbku.FishingSetAuto:FireServer(false)
end)

pcall(function()
xbku.FishingStop:FireServer()
end)
end

function htn.recover()
htn.phase = _d("XBFaVQ")
htn.nextCastAt = 0
htn.deepPhase = _d("XBFaVQ")
htn.deepStageAt = 0
htn.deepDiveAt = 0
htn.waterRefusals = 0
htn.usingGameAuto = false
htn.castMark = htn.totalCasts
htn.castMarkAt = os.clock()

pcall(emw)
pcall(rxhm)

if htn.deepZone and not ivkv.current() then

pcall(function()
xbku.TeleportToWorld:FireServer(_d("WRpUUgg"))
end)
elseif htn.tpToBay and not pgka() then
pcall(hjtl)
end

htn.lastMessage = _d("cxxFWBgeAxUGQlEdHAFRVRsQAxUXUAEWRBkVREIUQlUDUAVbERZEHh8PFQFeVVEXBVgQEUNRHAtXF08QAx8T")
end

local function kzv()
if not rxhm() then
htn.lastMessage = _d("exoWVhgDDFwbURADHwAVHFgQBRgBFRdXUxoABVYe")
return false
end

local vw = dpv()
local nrxp = aetp()
local rz = vw or nrxp

if not rz then
htn.lastMessage = _d("exoWRxAEAUdVUF8EHgAVG1NRAxId")
return false
end

if vw and nrxp and vw:Dot(nrxp) < 0.25 then
rz = nrxp
end

htn.phase = _d("VhRFRBgeAw")
htn.lastMessage = nil
htn.watchdogAt = os.clock() + 25

local tj, qsu = pcall(function()
xbku.FishingThrow:FireServer(1, rz)
end)

if not tj then
htn.phase = _d("XBFaVQ")
htn.lastMessage = tostring(qsu)
htn.nextCastAt = os.clock() + 3
return false
end

return true
end

local rlvl = nhka(xbku.FishingUpdate.OnClientEvent, function(gozu, hya)
htn.dirty = true

if gozu == _d("ZgFXRBQ") then
if type(hya) == _d("QRRUXBQ") then
htn.autoOn = hya.autoOn == true
end

return
end

if gozu == _d("dhRFRA") then
htn.phase = _d("QhRfRBgeA3ccQlU")
htn.waterRefusals = 0
return
end

if gozu == _d("dxxCVQ") then
local ek = type(hya) == _d("QRRUXBQ") and tonumber(hya.warning) or 1

htn.phase = _d("RxBTXBgeAw")
htn.watchdogAt = os.clock() + 15

task.delay(math.max(0.3, ek + 0.8), function()
if htn.phase ~= _d("RxBTXBgeAw") then
return
end

pcall(function()
xbku.FishingReel:FireServer(true, 120)
end)

htn.phase = _d("RxBFXx0GDVsS")
end)

return
end

if gozu == _d("dhRCUxk") then

local moz = type(hya) == _d("QRRUXBQ") and tonumber(hya.totalCasts) or nil
local ckni = tonumber(getgenv().ACBXFishingCatchMark) or 0

if moz and moz <= ckni and ckni - moz < 25 then
return
end

if moz then
getgenv().ACBXFishingCatchMark = moz
end

local zob = type(hya) == _d("QRRUXBQ") and tostring(hya.itemId) or _d("QBtdXh4HCg")
local togy = htn.catchName(zob)

htn.catches[zob] = (htn.catches[zob] or 0) + 1
htn.totalCatches = (htn.totalCatches or 0) + 1

local cgwm = type(hya) == _d("QRRUXBQ") and hya.chest or nil

if type(cgwm) == _d("QRRUXBQ") and cgwm.itemId then
local ev = tostring(cgwm.itemId)

htn.catches[ev] = (htn.catches[ev] or 0) + 1
end

if os.clock() - (dbfy.at or 0) >= 5 then
dbfy.at = os.clock()
dbfy.save()
end
htn.lastCatch = togy
htn.lastMessage = nil
htn.phase = _d("XBFaVQ")
htn.nextCastAt = os.clock() + 2.5

if type(hya) == _d("QRRUXBQ") then
htn.casts = tonumber(hya.casts) or htn.casts
htn.totalCasts = tonumber(hya.totalCasts) or htn.totalCasts
htn.autoUnlocked = hya.autoUnlocked == true or htn.autoUnlocked
end

return
end

if gozu == _d("dABCXz4WAg") then

htn.usingGameAuto = false
htn.phase = _d("XBFaVQ")
htn.nextCastAt = os.clock() + 1
return
end

if gozu == _d("cAZVUQEVAA") then
htn.phase = _d("XBFaVQ")
htn.lastMessage = _d("YR1TEBcZF11VUV8FUAVCFE8")
htn.nextCastAt = os.clock() + 2.5
return
end

if gozu == _d("ZxBcVRIEAVE") then
htn.phase = _d("XBFaVQ")

local xmyd = type(hya) == _d("QRRUXBQ") and tostring(hya.message) or _d("dhRFRFECAV8QVUQUFA")
htn.lastMessage = xmyd

if xmyd:lower():find(_d("QhRCVQM"), 1, true) then
htn.waterRefusals = (htn.waterRefusals or 0) + 1

if htn.waterRefusals >= 2 then
htn.waterRefusals = 0

if jq() then
htn.lastMessage = _d("ZxBQRQIVABUBQVkSFUQYVUJFAx4BUVVUURIbREEaQVEDFERBHVMQBhEQUAc")
htn.nextCastAt = os.clock() + 1.5
return
end
end

htn.nextCastAt = os.clock() + 8
return
end

htn.waterRefusals = 0
htn.nextCastAt = os.clock() + 3
return
end
end)

local function nrt()
if not htn.loaded then
return _d("ZxBXVBgeAxUTX0MZGQpSVUVEEAQBG1sY")
end

local ezm = htn.autoUnlocked == true
or (htn.totalCasts or 0) > 0
or (htn.tutorialStep or 0) > 0
local tji = howy and howy.RodsById and howy.RodsById[htn.rod]
local fk = tji and tostring(tji.name) or tostring(htn.rod)
local sdi = math.floor((tonumber(htn.luck) or 0) * 100 + 0.5)

local vph = {
_d("ZxpSClE") .. fk,
_d("eQBVW0tQ") .. sdi .. _d("EA"),
}

local mrrr = ivkv.current()

if mrrr then
table.insert(vph, _d("bxpYVUtQ") .. mrrr.name .. _d("FV0d") .. tostring(math.floor(mrrr.luck * 100 + 0.5)) .. _d("EFVaRRIbTQ"))
end

table.insert(vph, _d(""))
table.insert(vph, _d("dhRFRAJQEFpVRUAUHgAPVQ") .. drs(htn.casts or 0))
table.insert(vph, _d("YRpCUR1QB1QGQkNLUA") .. drs(htn.totalCasts or 0))

table.insert(vph, _d(""))
table.insert(vph, _d("cxxFWBgeAxUAWFweEw9QEQwQ") .. (ezm and _d("TBBF") or _d("Wxo")))
table.insert(vph, _d("dABCX1wWDUYdFkUBFxZUEVMKUQ") .. (htn.autoUnlocked and _d("WgJYVRU") or _d("WxpCEB4HClAR")))

if htn.enabled then
local tzxf = htn.usingGameAuto and _d("UhRbVVEREUEa") or tostring(htn.phase)

if tzxf == _d("QhRfRBgeA3ccQlU") then
tzxf = _d("QhRfRBgeAxUTWUJREURXHEJV")
elseif tzxf == _d("RxBTXBgeAw") then
tzxf = _d("RxBTXBgeAxUcWA")
elseif tzxf == _d("RxBFXx0GDVsS") then
tzxf = _d("WRRYVBgeAxUcQg")
end

table.insert(vph, _d(""))
table.insert(vph, _d("dABCX1E2DUYdDBA") .. tzxf)

local er = unl.worldBoss

if er and type(er.hasWork) == _d("UwBYUwUZC1s") and er.enabled and er.hasWork() then
table.insert(vph, _d("fRpaVBgeAw9VUVweEgVZVVRfAgNEXAYWRQFQTEcQRUUcFRcVGlgQGAQXFRZZXx0UC0IbHw"))
end

if htn.lastCatch then
table.insert(vph, _d("eRRFRFETBUEWXgpR") .. htn.lastCatch)
end
end

if htn.lastMessage then
table.insert(vph, _d(""))
table.insert(vph, _d("expCVUtQ") .. htn.lastMessage)
end

return table.concat(vph, _d("Pw"))
end

local function xnpv()
local rwno = 0

for chw, xp in pairs(htn.catches) do
local yxi = op.ById[chw]

if not (yxi and yxi.type == _d("Vh1TQwU")) then
rwno = rwno + xp
end
end

return rwno
end

local function jkf()
local wp = {}

for gv, nvp in pairs(htn.catches) do
local swu = op.ById[gv]
local evug = swu and swu.type == _d("Vh1TQwU") or false

table.insert(wp, {
name = htn.catchName(gv),
count = nvp,
chest = evug,
rank = evug and (tonumber(swu.border) or 1) or 0,
})
end

if #wp == 0 then
return _d("expCWBgeAxUWV0UWGBAVDFNEX3puYQBEXlEfChU0Q0QeUCJcBl4QEB4AFQFeVVEEBVkZTxACBAVHAUUQGRUWUFsWeQVQF1QDU0NRGRBGEFpWXVAXWlVfRFETBUcHX1UCUAtDEEQQHxUcQVVFVQIDDVobGA")
end

table.sort(wp, function(cj, jais)
if cj.chest ~= jais.chest then
return cj.chest
end

if cj.chest and cj.rank ~= jais.rank then
return cj.rank > jais.rank
end

if cj.count ~= jais.count then
return cj.count > jais.count
end

return cj.name < jais.name
end)

local jfq = {}

for djc, jjrk in ipairs(wp) do
table.insert(jfq, jjrk.name .. _d("FZe2pFE") .. drs(jjrk.count))
end

local mog = {
table.concat(jfq, _d("P38")),
_d(""),
_d("YRpCUR1QB1QAUVgFSkQ") .. drs(xnpv()) .. _d("FbeBEA") .. #wp .. _d("FR5fXhUD"),
}

if htn.lastCatch then
table.insert(mog, _d("eRRFRFETBUEWXgpR") .. tostring(htn.lastCatch))
end

return table.concat(mog, _d("Pw"))
end

local syg = {
rod = Vector3.new(-493, 18, -40254),
bait = Vector3.new(-493, 18, -40254),
}

local function yqea(krb)
if not howy then
return {}
end

local yil

if krb == _d("RxpS") then
yil = howy.RodsById
elseif krb == _d("VxRfRA") then
yil = howy.BaitsById
else
yil = nil
end

local gr = {}

for npw, azi in pairs(yil or {}) do
if not azi.crafted then
table.insert(gr, {
id = tostring(npw),
name = tostring(azi.name or npw),
cost = tonumber(azi.cost) or 0,
luck = tonumber(azi.luck) or 0,
index = tonumber(azi.index) or 0,
island = azi.shop == _d("XAZaUR8U"),
})
end
end

table.sort(gr, function(my, pvu)
if my.index ~= pvu.index then
return my.index < pvu.index
end

return my.cost < pvu.cost
end)

return gr
end

local function yli(rtwx)
if rtwx == _d("RxpS") then
return htn.rodsOwned or {}
elseif rtwx == _d("VxRfRA") then
return htn.baitsOwned or {}
end

return {}
end

local function aoa(sefc)
if sefc == _d("RxpS") then
return htn.rod
elseif sefc == _d("VxRfRA") then
return htn.equippedBait
end

return nil
end

local function ybn(qwal)
local myjd = yli(qwal)
local vrh = nil

for lna, jztw in ipairs(yqea(qwal)) do
if myjd[jztw.id] == true then
vrh = jztw
end
end

if qwal == _d("RxpS") and howy and howy.RodsById then
local nsu = howy.RodsById.rod_secret

if nsu and myjd.rod_secret == true then
vrh = {
id = _d("RxpSbwIVB0cQQg"),
name = tostring(nsu.name or _d("cA1VUR0ZBkAH")),
cost = tonumber(nsu.cost) or 0,
luck = tonumber(nsu.luck) or 0,
index = tonumber(nsu.index) or 0,
island = true,
}
end
end

return vrh
end

local function ojxl(lpf)
if lpf.island and htn.islandLocked then
return false
end

return true
end

local function bda(yvms)
local xvmq = yli(yvms)
local pane = htn.casts or 0
local ejmb = nil

for naxw, nou in ipairs(yqea(yvms)) do
if xvmq[nou.id] ~= true and nou.cost <= pane and ojxl(nou) then
ejmb = nou
end
end

return ejmb
end

local function wtpp(etg)
local bzjp = yli(etg)

for nryk, nmec in ipairs(yqea(etg)) do
if bzjp[nmec.id] ~= true and ojxl(nmec) then
return nmec
end
end

return nil
end

local function bt(lncl, gbyu)
if not gbyu then
return _d("WxpYVVEfE1sQUg")
end

return gbyu.name .. _d("FV0d") .. tostring(math.floor(gbyu.luck * 100 + 0.5)) .. _d("EFVaRRIbTQ")
end

local function hwu()
if not howy then
return _d("cxxFWBgeA3EUQlFRHgtBVVBfBB4AFVgWQxkfFBURV0QQUBFbFEBRGBwFVxlTHg")
end

local mxr = {}
local jnb = { rod = _d("ZxpS"), bait = _d("dxRfRA") }

for qdkp, mvl in ipairs({ _d("RxpS"), _d("VxRfRA") }) do
local bg = ybn(mvl)
local umn = nil

for wuhz, zd in ipairs(yqea(mvl)) do
if zd.id == aoa(mvl) then
umn = zd.name
end
end

if #mxr > 0 then
table.insert(mxr, _d(""))
end

table.insert(mxr, jnb[mvl] .. _d("D1U") .. bt(mvl, bg))
table.insert(mxr, _d("ehsWXh4HXhU") .. (umn or _d("WxpYVQ")))

local yyu = bda(mvl) or wtpp(mvl)

if yyu then
local dqi = yyu.cost - (htn.casts or 0)

table.insert(mxr, _d("exBOREtQ") .. yyu.name .. _d("FbeBEA") .. drs(yyu.cost) .. _d("FRZXQwUD"))

if dqi > 0 then
table.insert(mxr, _d("exBTVFE") .. drs(dqi) .. _d("FRhZQhQ"))
end
else
table.insert(mxr, _d("exBOREtQAUMQREkFGA1bEhZfBh4BUQ"))
end
end

table.insert(mxr, _d(""))
table.insert(mxr, _d("dhRFRAJQEFpVRUAUHgAPVQ") .. drs(htn.casts or 0))

if htn.shopMessage then
table.insert(mxr, _d(""))
table.insert(mxr, htn.shopMessage)
end

return table.concat(mxr, _d("Pw"))
end

local function jylb(ian, tnm)
local fpw = os.clock()

if fpw < (htn.shopCallAt or 0) then
return false, _d("RhlZRw")
end

htn.shopCallAt = fpw + 1.4

local dbko, xvz, hkz, px = pcall(function()
return xbku.FishingShop:InvokeServer(ian, tnm)
end)

if not dbko then
return false, _d("UAdEXwNQ") .. tostring(xvz)
end

iyd(px)

if xvz == true then
return true, nil
end

return false, tostring(hkz or _d("RxBQRQIVAA"))
end

function htn.rebirthCardsHeld()
local mu = howy and type(howy.RebirthCards) == _d("QRRUXBQ") and #howy.RebirthCards or 0

if mu == 0 then
return 0, 0
end

local ej = 0

for gnlx, ef in ipairs(howy.RebirthCards) do
if htn.rebirthCards[ef.cardId] then
ej = ej + 1
end
end

return ej, mu
end

function htn.rebirthReady()
local lo, dy = htn.rebirthCardsHeld()

return dy > 0 and lo >= dy and (tonumber(htn.rebirths) or 0) < 1
end

function htn.rebirthText()
local ool, qc = htn.rebirthCardsHeld()

if qc == 0 then
return _d("cxxFWBgeAxURV0QQUApaARZcHhEAUBEaEAIfREcQVFkDBAwVHEUQBB4FQxRfXBASCFBb")
end

if (tonumber(htn.rebirths) or 0) >= 1 then
return _d("ZxBUWQMEDFARGBAlGAEVNFRRHxQLWxBSEDgDCFQbUhAYA0RaBVNeXw")
end

if ool >= qc then
return _d("dBlaEA") .. qc .. _d("FRZXQhUDRFMcRVgUFEoVJ1NRFQlEQRoWQhQSDUcBXh4")
end

local qdwc = {}

for xcqe, dmk in ipairs(howy.RebirthCards) do
if not htn.rebirthCards[dmk.cardId] then
table.insert(qdwc, (string.gsub(dmk.cardId, _d("axNfQxkv"), _d(""))))
end
end

return ool .. _d("Gg") .. qc .. _d("FRZXQhUDShUmQlkdHERbEFNUUQ") .. table.concat(qdwc, _d("GVU")) .. _d("Gw")
end

local function ur(pi)
local rtj = kdim.Character
local lim = rtj and rtj:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not lim then
return false
end

return (lim.Position - (syg[pi] or syg.rod)).Magnitude <= 26
end

local function pyib(qcy, ojm)

if ojm and ojm.island then
if not htn.shopIsland or not htn.shopIsland.toIsland() then
htn.shopMessage = _d("dhpDXBVQCloBFkIUEQddVUJYFFANRhlXXhVQB1oAWEQUAg")

return false
end

return true
end

if ur(qcy) then
return true
end

local mcm = kdim.Character
local hi = mcm and mcm:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not hi then
return false
end

local stls = syg[qcy] or syg.rod
htn.shopTripUntil = os.clock() + 12
htn.shopHoldUntil = os.clock() + 12

pcall(function()
hi.CFrame = CFrame.new(stls)
end)

task.wait(1.2)

return ur(qcy)
end

local function ycc(mn, fuux, pg)
if not pg then
return false
end

if (htn.casts or 0) < pg.cost then
return false
end

if not pyib(mn, pg) then
htn.shopMessage = _d("dhpDXBVQCloBFkIUEQddVUJYFFAXXRpGEBcfFhU") .. pg.name
return false
end

local bdk, xrav = jylb(fuux, pg.id)

if not bdk then
local dv = tostring(xrav)
local awpo = dv:find(_d("YRRaW1EECxUBXlVRNg1GHVNCHBEK"), 1, true) or dv:find(_d("dxpXRFE0AVQZU0I"), 1, true)

if awpo then

htn.shopMessage = _d("YhRaWxgeAxUARhAFH0RBHVMQEh8RWwFTQlEWC0dV") .. pg.name
return false
end

if xrav ~= _d("RhlZRw") then
htn.shopAt = os.clock() + 15
htn.shopMessage = _d("ZhBERhQCREcQUEUCFQAV") .. pg.name .. _d("FV0") .. dv .. _d("HA")
end

return false
end

htn.shopMessage = _d("dxpDVxkERA") .. pg.name

return true
end

local function km(qfu)
local xjt = ybn(qfu)

if not xjt or aoa(qfu) == xjt.id then
return false
end

local znf

if qfu == _d("RxpS") then
znf = _d("cARDWQEiC1E")
elseif qfu == _d("VxRfRA") then
znf = _d("cARDWQEyBVwB")
else
return false
end

local drdv, infh = jylb(znf, xjt.id)

if not drdv then
if infh ~= _d("RhlZRw") then
htn.shopMessage = _d("dhpDXBVQCloBFlUABQ1FVQ") .. xjt.name .. _d("FV0") .. tostring(infh) .. _d("HA")
end

return false
end

if qfu == _d("RxpS") then
htn.rod = xjt.id
elseif qfu == _d("VxRfRA") then
htn.equippedBait = xjt.id
else
return false
end

htn.shopMessage = _d("cARDWQEAAVFV") .. xjt.name

return true
end

local function citp()
local megj = htn.shop

if os.time() - (htn.lastSync or 0) >= 5 then
yti()
end

if megj.equipRod then
km(_d("RxpS"))
end

if megj.equipBait then
km(_d("VxRfRA"))
end

if megj.autoBuyRod then
ycc(_d("RxpS"), _d("dwBPYh4U"), bda(_d("RxpS")))
end

if megj.autoBuyBait then
ycc(_d("VxRfRA"), _d("dwBPchAZEA"), bda(_d("VxRfRA")))
end
end

local function elb()
local lbey = htn.shop

return lbey.autoBuyRod or lbey.autoBuyBait or lbey.equipRod or lbey.equipBait
end

htn.shopIsland = {
rods = function()
local pzf = howy and howy.RodsById or {}
local rtx = {}

for yg, rmk in pairs(pzf) do
if tostring(rmk.shop) == _d("XAZaUR8U") then
table.insert(rtx, {
id = tostring(yg),
name = tostring(rmk.name or yg),
cost = tonumber(rmk.cost) or 0,
luck = tonumber(rmk.luck) or 0,
index = tonumber(rmk.index) or 0,
crafted = rmk.crafted == true,
})
end
end

table.sort(rtx, function(cqcl, rp)
return cqcl.index < rp.index
end)

return rtx
end,

angler = function()
local aeu = workspace:FindFirstChild(_d("eyV1Qw"), true)

if not aeu then
return nil
end

for uugi, gbov in ipairs(aeu:GetChildren()) do
if gbov:GetAttribute(_d("ZhBVQhQEJVsSWlUDPjR2")) then
return gbov
end
end

return nil
end,
held = function(nny)
return (htn.rodsOwned or {})[nny] == true
end,
recipeHeld = function(jdp)
for ccmq, xvq in ipairs(jdp or {}) do
local gk = tonumber((htn.mats or {})[xvq.id]) or 0

if gk < (tonumber(xvq.count) or 0) then
return false
end
end

return true
end,
recipeText = function(kkpb)
local gmzx = {}

for jghu, pcch in ipairs(kkpb or {}) do
local ktj = tonumber((htn.mats or {})[pcch.id]) or 0
local wkb = (op.ById[pcch.id] and op.ById[pcch.id].name) or tostring(pcch.id)

table.insert(gmzx, wkb .. _d("FQ") .. drs(ktj) .. _d("Gg") .. drs(tonumber(pcch.count) or 0))
end

return table.concat(gmzx, _d("FbeBEA"))
end,

stand = function(lygm)
local oebz = kdim.Character
local jfy = oebz and oebz:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not (jfy and lygm) then
return false
end

local gjjd = lygm:GetPivot()
local ltv = lygm:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ")) or lygm:FindFirstChildWhichIsA(_d("dxRFVSERFkE"), true)
local vji = ltv and (ltv.CFrame * CFrame.new(0, 0, -5)).Position or nil

if not vji then
local cbj = RaycastParams.new()
cbj.FilterType = Enum.RaycastFilterType.Exclude
cbj.FilterDescendantsInstances = { oebz, lygm }

local yrx = nil
local iyay = math.huge

for yb, dehy in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local gkj = workspace:Raycast(gjjd.Position + dehy + Vector3.new(0, 30, 0), Vector3.new(0, -140, 0), cbj)

if gkj and tostring(gkj.Instance.Name) ~= _d("YhRCVQM") and gkj.Position.Y <= gjjd.Position.Y + 10 then
local sb = math.abs(gkj.Position.Y - gjjd.Position.Y)

if sb < iyay then
yrx = gkj
iyay = sb
end
end
end

vji = yrx and Vector3.new(yrx.Position.X, yrx.Position.Y + 3.5, yrx.Position.Z) or (gjjd.Position + Vector3.new(0, 4, 0))
end

htn.shopTripUntil = os.clock() + 12

htn.islandTripUntil = os.clock() + 12

pcall(function()
jfy.CFrame = CFrame.new(vji)
end)

task.wait(1.2)

return true
end,
atIsland = function()
local nt = workspace:FindFirstChild(_d("fAZaUR8UIlwGXlUDHQVbO2Zz"), true)
local zon = kdim.Character
local ijkh = zon and zon:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not (nt and ijkh) then
return false
end

return (ijkh.Position - nt:GetPivot().Position).Magnitude <= 45
end,
toIsland = function()
if htn.shopIsland.atIsland() then
return true
end

htn.shopTripUntil = os.clock() + 12

if not htn.gotoIsland() then
return false
end

task.wait(1.2)

return htn.shopIsland.atIsland()
end,

craftExcalibur = function()
local kgqx = htn.shopIsland.angler()

if not kgqx or htn.shopIsland.held(_d("RxpSbwIVB0cQQg")) then
return false
end

if not htn.shopIsland.recipeHeld(howy and howy.SecretRecipe) then
return false
end

htn.shopIsland.stand(kgqx)

local vac, keec = jylb(_d("dgdXVgUiC1E"), _d("RxpSbwIVB0cQQg"))

if vac then
htn.rod = _d("RxpSbwIVB0cQQg")
htn.islandMessage = _d("dgdXVgUVABUBXlVRNRxWFFpZEwUWFQdZVFEREBUBXlVROA1REVNeUTEKUhlTQg")
elseif keec ~= _d("RhlZRw") then
htn.islandMessage = _d("fRxSVBQeRHQbUVwUAkRHEFBFAhUAFQFeVVE1HFYUWlkTBRYVXQ") .. tostring(keec) .. _d("HA")
end

return vac
end,
craftBoot = function()
if htn.boot.owned or htn.islandLocked then
return false
end

if not htn.shopIsland.recipeHeld(howy and howy.BootRecipe) then
return false
end

if not htn.shopIsland.toIsland() then
htn.islandMessage = _d("dhpDXBVQCloBFkIUEQddVUJYFFANRhlXXhVQB1oAWEQUAg")
return false
end

local uv, qhk = jylb(_d("dgdXVgUyC1oB"))

if uv then
htn.boot.owned = true
htn.islandMessage = _d("dgdXVgUVABUBXlVRPAFSEFhUEAIdFTdZXwU")
elseif qhk ~= _d("RhlZRw") then
htn.islandMessage = _d("fAZaUR8URHMcRVgUAglUGxZCFBYRRhBSEAUYARUXWV8FUEw") .. tostring(qhk) .. _d("HA")
end

return uv
end,
best = function()
local hrn = htn.rodsOwned or {}
local sooz = nil

for qwy, htp in ipairs(htn.shopIsland.rods()) do
if hrn[htp.id] == true and (sooz == nil or htp.luck > sooz.luck) then
sooz = htp
end
end

return sooz
end,

equipBoot = function()
if not htn.boot.owned or htn.boot.equipped then
return false
end

local dl, rjp = jylb(_d("cARDWQEyC1oB"), true)

if dl then
htn.boot.equipped = true
htn.islandMessage = _d("cARDWQEAAVFVQlgUUChQElNeFREWTFV0Xx4E")
elseif rjp ~= _d("RhlZRw") then
htn.islandMessage = _d("dhpDXBVQCloBFlUABQ1FVUJYFFAGWhpCEFk") .. tostring(rjp) .. _d("HA")
end

return dl
end,
active = function()
local edxv = htn.island

return edxv.autoRod or edxv.autoAcc or edxv.equipAcc
end,
run = function()
local qs = htn.island

if os.time() - (htn.lastSync or 0) >= 8 then
yti()
end

if qs.autoRod then
htn.shopIsland.craftExcalibur()
end

if qs.autoAcc then
htn.shopIsland.craftBoot()
end

if qs.equipAcc then
htn.shopIsland.equipBoot()
end
end,
text = function()
if not howy then
return _d("cxxFWBgeA3EUQlFRHgtBVVBfBB4AFVgWRBkVRFwGWlEfFERGHVlAURkXFQBYUQcRDVkUVFwUXg")
end

local ywk = {}
local ify = htn.rodsOwned or {}

table.insert(ywk, htn.islandLocked and _d("dBdXXhUfClARFnkCHAVbERZZAlAIWhZdVRVQSRUHU1IYAhBdVVBZAwMQGw") or _d("dBdXXhUfClARFnkCHAVbERZZAlALRRBYHg"))

for ml, adw in ipairs(htn.shopIsland.rods()) do
local tgz

if ify[adw.id] == true then
tgz = htn.rod == adw.id and _d("WgJYVRVQpoJVWV5RHgtC") or _d("WgJYVRU")
elseif adw.crafted then
tgz = _d("fRxSVBQeRHQbUVwUAkRHEFVZARU")
else
tgz = drs(adw.cost) .. _d("FRZXQwUD")
end

table.insert(ywk, adw.name .. _d("FZe2pFE") .. tgz)
end

table.insert(ywk, _d(""))

if ify.rod_secret then
table.insert(ywk, _d("cA1VUR0ZBkAHDBAeBwpQEQ"))
else
local doc = htn.shopIsland.recipeHeld(howy.SecretRecipe)

table.insert(ywk, _d("cA1VUR0ZBkAHDBA") .. (doc and _d("RxBVWQEVREcQV1QI") or _d("RxBVWQEVREYdWUIF")))
table.insert(ywk, htn.shopIsland.recipeText(howy.SecretRecipe))
end

table.insert(ywk, _d("fRxSVBQeRHQbUVwUAl4V") .. (htn.shopIsland.angler() and _d("QAUWXh4H") or _d("WxpCEBkVFlA")))
table.insert(ywk, _d(""))

local ku = htn.boot
local qe

if ku.equipped then
qe = _d("eRBRVR8UBUcMFnIeHxAPVVNBBBkURRBS")
elseif ku.owned then
qe = _d("eRBRVR8UBUcMFnIeHxAPVVlHHxUA")
elseif htn.shopIsland.recipeHeld(howy.BootRecipe) then
qe = _d("eRBRVR8UBUcMFnIeHxAPVURVEhkUUFVEVRAUHQ")
else
qe = _d("eRBRVR8UBUcMFnIeHxAPVQ") .. htn.shopIsland.recipeText(howy.BootRecipe)
end

table.insert(ywk, qe)
table.insert(ywk, _d("dhRFRAJQEFpVRUAUHgAPVQ") .. drs(htn.casts or 0))

if htn.islandMessage then
table.insert(ywk, _d(""))
table.insert(ywk, htn.islandMessage)
end

return table.concat(ywk, _d("Pw"))
end,
}

task.spawn(function()
yti()
end)

local cl = {
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

getgenv().ACBXAutoBuyHalloween = cl

nhka(xbku.SyncItems.OnClientEvent, function(eteg)
if type(eteg) == _d("QRRUXBQ") then
cl.balances = eteg
cl.lastSync = os.time()
end
end)

xbku.RequestItemSync:FireServer()

nhka(xbku.RaidShopState.OnClientEvent, function(aydj)
if type(aydj) == _d("QRRUXBQ") and aydj.shopId == _d("XRRaXB4HAVAb") then
cl.shopState = aydj
cl.stateAt = os.clock()
end
end)

nhka(xbku.RaidNotify.OnClientEvent, function(jp)
local wo = cl.pending

if not wo or type(jp) ~= _d("RgFEWR8X") then
return
end

if jp:sub(1, 9) == _d("ZSBkczkxN3Ax") then
cl.purchased[wo.id] = (cl.purchased[wo.id] or 0) + 1
cl.pending = nil
else
if cl.balances[wo.currency] then
cl.balances[wo.currency] = cl.balances[wo.currency] + wo.price
end

cl.failedUntil[wo.id] = os.time() + 5
cl.pending = nil
end
end)

vot.trip = {
untilAt = 0,
lastTry = 0,
lastResult = nil,
spot = nil,
}

function vot.merchant()
local gow = workspace:FindFirstChild(_d("eyV1Qw"))
local nkd = vot.shopData and vot.shopData.NpcName or _d("ZQBbQBoZChU4U0ISGAVbAQ")

return gow and gow:FindFirstChild(nkd) or nil
end

function vot.stand()
local ka = vot.merchant()
local hybl = ka and (ka:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ")) or ka:FindFirstChildWhichIsA(_d("dxRFVSERFkE")))
local emor = kdim.Character
local cyyo = emor and emor:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not (hybl and cyyo) then
return false
end

vot.trip.spot = hybl.Position + Vector3.new(0, 3, 4)
cyyo.AssemblyLinearVelocity = Vector3.zero
cyyo.CFrame = CFrame.new(vot.trip.spot)

return true
end

function vot.fresh()
return cl.shopState ~= nil and os.clock() - cl.stateAt < 30
end

function vot.guiOpen()
local gz = ubll:FindFirstChild(_d("fRRaXB4HAVAbZVgeACNAHA"))
local qqa = gz and gz:FindFirstChild(_d("Zh1ZQDcCBVgQ"))

if qqa then
return qqa.Visible == true
end

for pni, vukf in ipairs(ubll:GetChildren()) do
if vukf:IsA(_d("ZhZEVRQeI0Ac")) and vukf.Name:lower():find(_d("XRRaXB4HAVAb"), 1, true) and vukf.Enabled then
return true
end
end

return false
end

function vot.close()
local lcb = ubll:FindFirstChild(_d("fRRaXB4HAVAbZVgeACNAHA"))
local wui = lcb and lcb:FindFirstChild(_d("Zh1ZQDcCBVgQ"))

if not (wui and wui.Visible) then
return false
end

local weps = wui:FindFirstChild(_d("dhlZQxQyEUEBWV4"))

if not weps then
for ghes, yuyv in ipairs(wui:GetDescendants()) do
if yuyv:IsA(_d("cgBfcgQEEFob")) and tostring(yuyv.Name):lower():find(_d("VhlZQxQ"), 1, true) then
weps = yuyv
break
end
end
end

if weps and type(firesignal) == _d("UwBYUwUZC1s") then
pcall(function()
firesignal(weps.MouseButton1Click)
end)

task.wait(0.3)

if not wui.Visible then
return true
end
end

pcall(function()
wui.Visible = false
end)

return true
end

function vot.spend()
if cl.pending or os.time() - (cl.lastAttempt or 0) < 1 then
return nil
end

local czi = cl.shopState

for rd, hqqr in ipairs(vot.shopItems) do
if cl.selected[hqqr.id] and os.time() >= (cl.failedUntil[hqqr.id] or 0) then
local heri = hqqr.stock
local uo = cl.purchased[hqqr.id] or 0

if czi and czi.stocks and czi.stocks[hqqr.id] then
heri = czi.stocks[hqqr.id]
end

if czi and czi.bought then
uo = math.max(uo, czi.bought[hqqr.id] or 0)
end

local tqcg = heri and (heri - uo) or 1
local zdbo = cl.balances[hqqr.currency] or 0

if tqcg > 0 and zdbo >= hqqr.price then
cl.pending = {
id = hqqr.id,
price = hqqr.price,
currency = hqqr.currency,
at = os.time(),
}
cl.lastAttempt = os.time()
cl.balances[hqqr.currency] = zdbo - hqqr.price

pcall(function()
xbku.BuyRaidItem:FireServer(hqqr.id, 1)
end)

return hqqr.id
end
end
end

return nil
end

function vot.open(cvw)
if not cvw and vot.fresh() then
return true
end

if not cvw and os.clock() < (vot.trip.lastTry or 0) + 8 then
return false
end

vot.trip.lastTry = os.clock()
vot.trip.untilAt = os.clock() + 12

htn.shopTripUntil = os.clock() + 12
htn.shopHoldUntil = os.clock() + 12
htn.phase = _d("XBFaVQ")

local broi = vot.merchant()
local vk = broi and broi:FindFirstChild(_d("ZQdZSBgdDUEMZkIeHRRB"))

if not (broi and vk) then
htn.deepPhase = _d("XBFaVQ")
vot.trip.untilAt = os.clock() + 60
vot.trip.lastResult = _d("YR1TECEFCUUeX15RPQFHFl5RHwREXAYWXh4ERFwbFkQZGRcVF0NZHRRK")

return false
end

local rc = os.clock() + 3
local tig = 0

while os.clock() < rc do

vot.stand()

if os.clock() >= tig then
tig = os.clock() + 0.8

if type(fireproximityprompt) == _d("UwBYUwUZC1s") then
pcall(function()
fireproximityprompt(vk)
end)
end

pcall(function()
xbku.OpenRaidShop:FireServer(_d("XRRaXB4HAVAb"))
end)
end

if vot.guiOpen() or vot.fresh() then
break
end

task.wait(0.1)
end

if not (vot.guiOpen() or vot.fresh()) then

htn.deepPhase = _d("XBFaVQ")
vot.trip.untilAt = os.clock() + 60
vot.trip.lastResult = _d("YR1TEBIfEVsBU0JRFA1RVVhfBVAFWwZBVQNQSRUcQhAeHghMVVlAFB4XFRxYEAUYARUGU1ECHwpUGRZRAxUFGw")

return false
end

vot.trip.lastResult = _d("dhpDXgUVFhUaRlUfXg")

for ql = 1, 3 do
vot.stand()

if not vot.spend() then
break
end

task.wait(1.2)
end

pcall(vot.close)

htn.deepPhase = _d("XBFaVQ")

return true
end

local function hu(kzc)
kzc = math.max(0, math.floor(kzc))
local ow = math.floor(kzc / 3600)
local xh = math.floor((kzc % 3600) / 60)
local siem = kzc % 60

if ow > 0 then
return string.format(_d("EBFeEFRAVlEY"), ow, xh)
elseif xh > 0 then
return string.format(_d("EBFbEFRAVlEG"), xh, siem)
end

return string.format(_d("EBFF"), siem)
end

local function md()
local llux = ubll:FindFirstChild(_d("fRRaXB4HAVAbZVgeACNAHA"))
local jtyz = llux and llux:FindFirstChild(_d("Zh1ZQDcCBVgQ"))
local sxy = jtyz and jtyz:FindFirstChild(_d("fAFTXT0ZF0E"))
local lkfs = {}
local god = nil

if sxy then
for bz, nbm in ipairs(vot.shopItems) do
local ep = sxy:FindFirstChild(nbm.id)
local fddm = ep and ep:FindFirstChild(_d("dxpO"))
local qgb = fddm and fddm:FindFirstChild(_d("ZgFZUxo"))

if qgb and qgb:IsA(_d("YRBORD0RBlAZ")) then
local yeq, zcp = qgb.Text:match(_d("HVBSG1hVFx9aE0NbWEFRXh8"))

if yeq and zcp then
lkfs[nbm.id] = {
remaining = tonumber(yeq),
total = tonumber(zcp),
}
end
end
end
end

if jtyz then
for lz, gbx in ipairs(jtyz:GetDescendants()) do
if gbx:IsA(_d("YRBORD0RBlAZ")) and gbx.Text:find(_d("RxBFVQUDRFwb"), 1, true) then
god = gbx.Text:match(_d("RxBFVQUDRFwbE0NbWEoeXBI"))
break
end
end
end

return lkfs, god
end

local function jzj(mbxp)
if type(mbxp) ~= _d("RgFEWR8X") then
return 0
end

local gdu = tonumber(mbxp:match(_d("HVBSG1gY"))) or 0
local kgru = tonumber(mbxp:match(_d("HVBSG1gd"))) or 0
local ocww = tonumber(mbxp:match(_d("HVBSG1gD"))) or 0
return gdu * 3600 + kgru * 60 + ocww
end

local function lhrd()
local rct = cl.shopState
local rpwi, gaft = md()
local ay = {}
local bce = {}
local wx = {}

for dn, kixt in ipairs(vot.shopItems) do
local kahl = kixt.stock
local wsxm = nil

if rct and rct.stocks and rct.stocks[kixt.id] then
kahl = rct.stocks[kixt.id]
end

local lix = cl.purchased[kixt.id] or 0

if rct and rct.bought then
lix = math.max(lix, rct.bought[kixt.id] or 0)
end

if kahl then
wsxm = math.max(0, kahl - lix)
end

if (not rct or not rct.bought) and rpwi[kixt.id] then
wsxm = rpwi[kixt.id].remaining
kahl = rpwi[kixt.id].total
end

local dzdv = kixt.currency == _d("XxRVWy4fO1kUWEQUAgo") and _d("eRRYRBQCCkY") or _d("dhRYVAg")
local vael

if wsxm == nil then
vael = kixt.shortName
elseif wsxm <= 0 then
vael = kixt.shortName .. _d("FbeBEAIfCFFVWUUF")
else
vael = kixt.shortName .. _d("FbeBEA") .. tostring(wsxm) .. _d("Gg") .. tostring(kahl or _d("Cg"))
end

if not bce[dzdv] then
bce[dzdv] = {}
table.insert(wx, dzdv)
end

table.insert(bce[dzdv], vael)
end

local oers = {}

for zbc, ztk in ipairs(wx) do
table.insert(oers, ztk)

for hewq, vbtn in ipairs(bce[ztk]) do
table.insert(oers, vbtn)
end
end

table.insert(ay, table.concat(oers, _d("P38")))
table.insert(ay, _d(""))

if rct and type(rct.resetsIn) == _d("WwBbUhQC") then
local uh = rct.resetsIn - (os.clock() - cl.stateAt)
table.insert(ay, _d("ZxBFRB4TD0ZVX15R") .. hu(uh))
elseif gaft then
if cl.uiTimerText ~= gaft then
cl.uiTimerText = gaft
cl.uiTimerSeconds = jzj(gaft)
cl.uiTimerAt = os.clock()
end

local kuus = cl.uiTimerSeconds - (os.clock() - cl.uiTimerAt)
table.insert(ay, _d("ZxBFRB4TD0ZVX15R") .. hu(kuus))
else
table.insert(ay, _d("ZxBFRB4TD0ZVUlEYHB0Vt4EQBxkXXAEWRBkVREYdWUA"))
end

if not vot.fresh() then
table.insert(ay, vot.trip.lastResult or _d("YR1TEBIfEVsBU0JRGRcVFlpfAhUAFVgWfwEVChUGXl8BUBNUGV1DUQQMUFVVWBACBVYBU0JRBRQVAVkQGARK"))
end

return table.concat(ay, _d("Pw"))
end

nhka(xbku.NPCBattleResult.OnClientEvent, function(iey)
if type(iey) ~= _d("QRRUXBQ") then
return
end

lb.battlePending = false

if iey.result == _d("VhpZXBUfE1s") and type(iey.remaining) == _d("WwBbUhQC") and ixb and ygms then
rpro(ixb, ygms, os.time() + iey.remaining)
return
end

if type(iey.npcId) == _d("RgFEWR8X") then
local ak = type(iey.difficulty) == _d("RgFEWR8X") and iey.difficulty or lb.activeDifficulty[iey.npcId] or _d("WxpEXRAc")
local tzqh = kbo.ById[iey.npcId]
local tcb = tonumber(iey.cooldown) or (tzqh and tzqh.cooldown) or 300
rpro(iey.npcId, ak, os.time() + tcb)
end
end)

nhka(xbku.SyncNPCCooldowns.OnClientEvent, function(zyp)
if type(zyp) ~= _d("QRRUXBQ") then
return
end

for jx, scq in pairs(zyp) do
if type(jx) == _d("RgFEWR8X") and type(scq) == _d("WwBbUhQC") then
local ye = lb.activeDifficulty[jx] or _d("WxpEXRAc")
rpro(jx, ye, scq)
end
end
end)

local lvxf = {}
local ouph = {}

for anl, yqq in ipairs(qly.Worlds) do

local ac = { _d("dBla") }
local hpf = {}
local bkty = {}
local bir = nil

for wjf, zjk in ipairs(yqq.npcs or {}) do
local hp = kbo.ById[zjk]
if hp then
table.insert(ac, hp.name)
table.insert(bkty, zjk)
hpf[hp.name] = zjk
if hp.type == _d("VxRCRB0V") then
bir = zjk
end
end
end

local auza = yqq.id
if bir and ufhn.ById[bir] then
auza = ufhn.ById[bir].worldId or auza
end

for nm, onoj in ipairs(yqq.npcs or {}) do
ouph[onoj] = auza

lb.bossTeams.worldOf[onoj] = yqq.id
end

table.insert(lvxf, {
id = yqq.id,
teleportWorldId = auza,
name = yqq.name,
options = ac,
ids = bkty,
byName = hpf,
npcs = yqq.npcs,
})
end

local ufoy = {}
local vte = {}
local vjo = {}

for lv, jhpn in ipairs(qly.Difficulties) do
table.insert(ufoy, jhpn.name)
vte[jhpn.name] = jhpn.id
vjo[jhpn.id] = jhpn.name
end

local gid = {}
local jrc = {}

for raat, rdy in ipairs(qbcn.Difficulties) do
table.insert(gid, rdy.name)
jrc[rdy.name] = rdy.id
end

local ai = {}
local xdu = {}
local kmz = {}
local qhs = {
soul_king = _d("ZxRfVCYfFlkR"),
beerus = _d("ZxRfVCYfFlkRaXIUFRZABg"),
reid = _d("ZxRfVCYfFlkRaWIUGQA"),
}

for jqel, zj in ipairs(qbcn.Raids) do
if zj.BossTitle and zj.id then
table.insert(ai, zj.BossTitle)
xdu[zj.BossTitle] = zj.id
kmz[zj.id] = zj.NpcId
end
end

local function lt()
for cxmj, rb in ipairs({ _d("dxRCRB0VI0Ac"), _d("dxRCRB0VI0AcBA") }) do
local wz = ubll:FindFirstChild(rb)
local du = wz and wz:FindFirstChild(_d("dxRCRB0VN1YHU1Uf"))
if du and du.Visible then
return du
end
end
end

local function hxei()
for lkdq, ujv in ipairs({ _d("dxRCRB0VI0Ac"), _d("dxRCRB0VI0AcBA") }) do
local wzmr = ubll:FindFirstChild(ujv)
local exg = wzmr and wzmr:FindFirstChild(_d("dxRCRB0VN1YHU1Uf"))
if exg then
return exg
end
end
end

local function nkvz()
if lt() then
return true
end

for qopn, vdd in ipairs({ _d("dxRCRB0VI0Ac"), _d("dxRCRB0VI0AcBA") }) do
local sihu = ubll:FindFirstChild(vdd)
local ozhf = sihu and sihu:FindFirstChild(_d("fRxSVTMREEEZU3IEBBBaGw"))
if ozhf and ozhf.Visible then
return true
end
end

for fzq, cd in ipairs({ _d("fBt0UQUECFA"), _d("fBt0UQUECFBH") }) do
local qk = ubll:FindFirstChild(cd)
if qk and qk:IsA(_d("dxpZXCcRCEAQ")) and qk.Value then
return true
end
end

return false
end

function cq.slotFree(qdzs)

if qdzs == nil then
return false
end

if not cq.enabled then
return not nkvz()
end

return not cq.busy(qdzs)
end

function cq.npcSlot()
return cq.roleSlot(_d("WwVV"))
end

local wku

local function vb(sqdr)
sqdr = math.max(0, math.floor(sqdr))
if sqdr <= 0 then
return _d("RxBXVAg")
end

local pmk = math.floor(sqdr / 60)
local afoq = sqdr % 60

if pmk > 0 then
return string.format(_d("EBFbEFRAVlEG"), pmk, afoq)
end

return string.format(_d("EBFF"), afoq)
end

local function swdo()
for gd, pipj in ipairs({ _d("dxRCRB0VI0Ac"), _d("dxRCRB0VI0AcBA") }) do
local mp = ubll:FindFirstChild(pipj)
if mp then
local sgf = mp:FindFirstChild(_d("ZwBYdh0fC0c5V1IUHA"))
local stpo = mp:FindFirstChild(_d("YRpBVQM2CFoaRHwQEgFZ"))
if (sgf and sgf.Visible) or (stpo and stpo.Visible) then
return _d("fBsWZB4HAUc")
end
end
end

if dxxf.currentRoom and (dxxf.inBattle or nkvz()) then
local mfh = nil

for wqk, vz in ipairs({ _d("dxRCRB0VI0Ac"), _d("dxRCRB0VI0AcBA") }) do
local ourb = ubll:FindFirstChild(vz)
local rx = ourb and ourb:FindFirstChild(_d("dxRCRB0VN1YHU1Uf"))
local pswb = rx and rx:FindFirstChild(_d("cBtTXQgxB0EcQFUyERZR"))
local ttk = pswb and pswb:FindFirstChild(_d("exRbVT0RBlAZ"))

if ttk and ttk.Text ~= _d("") then
mfh = ttk.Text
break
end
end

if mfh then
return _d("dxRCRB0ZClJV") .. mfh .. _d("FS5kXx4dRA") .. dxxf.currentRoom .. _d("aA")
end

return _d("dxRCRB0ZClJVbWIeHwkV") .. dxxf.currentRoom .. _d("aA")
end

local zbrb = hxei()
if nkvz() and zbrb then
local tqgu = zbrb:FindFirstChild(_d("cBtTXQgxB0EcQFUyERZR"))
local xaj = tqgu and tqgu:FindFirstChild(_d("exRbVT0RBlAZ"))
local izv = xaj and xaj.Text

local abfe = nil
if lb.currentBattle then
abfe = lb.currentBattle.difficulty
elseif izv then
local zugg = idk[izv]
if zugg then
abfe = lb.activeDifficulty[zugg]
end
end

local uwf = _d("")
if abfe then
uwf = _d("FS4") .. (vjo[abfe] or abfe) .. _d("aA")
end

local mif = izv
if lb.currentBattle and lb.currentBattle.npcId then
local ewpa = kbo.ById[lb.currentBattle.npcId]
if ewpa then
mif = ewpa.name
end
end

if mif and mif ~= _d("") then
return _d("dxRCRB0ZClJV") .. mif .. uwf
end

return _d("dxRCRB0ZClI") .. uwf
end

lb.currentBattle = nil

local fiz = unl.enabled and (unl.bossFor(1) or unl.bossFor(2))

if fiz then
local wxm = xn:FindFirstChild(_d("ZxRfVCIEBUEARQ"))

if wxm then
local czta = fiz
local ygeo = qbcn.ById[czta]
local jdnp = ygeo and ygeo.BossTitle or czta
local ujk = wxm:GetAttribute(_d("fAZ5QBQe")) == true or wxm:GetAttribute(_d("cxpEUxQU")) == true
local wsk = wxm:GetAttribute(_d("ZxBXVAgv") .. czta) == true
local rk = unl.progress[czta]
local ltlk = rk and rk.locked == true

if not ujk then
local cn = tonumber(wxm:GetAttribute(_d("dh1XXhYVF3QB"))) or 0
return _d("fBFaVVFdRA") .. jdnp .. _d("FSdXWRVKRA") .. vb(cn - os.time())
end

if rk and rk.cooldowns then
local dvg = tonumber(rk.cooldowns.normal)

if dvg and dvg > 0 then
return _d("fBFaVVFdRA") .. jdnp .. _d("FSdXWRVKRA") .. vb(dvg)
end
end

if not wsk or ltlk then
return _d("fBFaVVFdRA") .. jdnp .. _d("FSdXWRVKRFkaVVsUFA")
end

return _d("fBFaVVFdRA") .. jdnp .. _d("FSdXWRVKREcQV1QI")
end
end

if htn.enabled then
if htn.usingGameAuto then
return _d("cxxFWBgeAxVYFlcQHQEVFENEHlBM") .. drs(xnpv()) .. _d("FRZXRRYYEBw")
end

if htn.phase == _d("VhRFRBgeAw") then
return _d("cxxFWBgeAxVYFlMQAxBcG1E")
end

if htn.phase == _d("QhRfRBgeA3ccQlU") then
return _d("cxxFWBgeAxVYFkcQGRBcG1EQFx8WFRQWUhgEAQ")
end

if htn.phase == _d("RxBTXBgeAw") or htn.phase == _d("RxBFXx0GDVsS") then
return _d("cxxFWBgeAxVYFkIUFQhcG1EQHh4BFRxY")
end

return _d("cxxFWBgeAxVYFlkVHAEVXQ") .. drs(xnpv()) .. _d("FRZXRRYYEBw")
end

if not lb.enabled and not lb.story then
return _d("fBFaVQ")
end

local we, yp, wh = wku()

if we then
local pq = kbo.ById[we]
local yren = pq and pq.name or we
local hbc = (yp or 0) - os.time()
local zxae = vjo[wh] or wh or _d("expEXRAc")

return _d("fBFaVVFdRHsQTkRLUA") .. yren .. _d("FS4") .. zxae .. _d("aFUe") .. vb(hbc) .. _d("HA")
end

return _d("fBFaVQ")
end

local function fwd(pxa)
local wm = workspace:FindFirstChild(_d("eyV1Qw"))
if not wm then
return nil
end

for bxx, vkz in ipairs(wm:GetChildren()) do
if vkz:GetAttribute(_d("eyV1eRU")) == pxa then
return vkz
end
end

return nil
end

local function xlst(kfh)
local yatx = kdim.Character
local ugy = yatx and yatx:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))
if not (ugy and kfh) then
return false
end

local bfd, nkt = pcall(function()
return kfh:GetPivot()
end)
if not bfd then
return false
end

local brly = nkt.Position + nkt.LookVector * 6 + Vector3.new(0, 3, 0)
local zymp = Vector3.new(nkt.Position.X, brly.Y, nkt.Position.Z)

ugy.CFrame = CFrame.lookAt(brly, zymp)
return true
end

local function xs()
local ttqp = kdim:FindFirstChild(_d("ZRlXSRQCN1YHX0AFAw"))
local bquh = ttqp and ttqp:FindFirstChild(_d("ZRlXSRQCKVoRQ1wU"))

if not bquh then
return nil
end

local mwt, flx = pcall(require, bquh)
if not mwt then
return nil
end

local xwq, ho = pcall(function()
return flx:GetControls()
end)

if xwq then
return ho
end
end

local function owl(myi, kheb, qeq, npuc, yd)
npuc = npuc or 8

local function pgnn()
return kheb and kheb()
end

local gp = os.clock()

while os.clock() - gp < 5 do
if pgnn() then
return false
end

if kdim.Character and kdim.Character:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ")) then
break
end
task.wait(0.2)
end

local rdm = kdim.Character
local czqn = rdm and rdm:FindFirstChildOfClass(_d("fQBbUR8fDVE"))
local yipl = rdm and rdm:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not (czqn and yipl) then
return false
end

if (yipl.Position - myi).Magnitude <= npuc then
return true
end

local cdb = qeq or czqn.WalkSpeed
local xt = xs()
local pyc = czqn.JumpPower
local dp = czqn.UseJumpPower

if yd then
pcall(function()
czqn.UseJumpPower = true
czqn.JumpPower = math.max(pyc, 60)
end)
end

if xt then
pcall(function()
xt:Disable()
end)
end

local oeq = czqn:FindFirstChildOfClass(_d("dBtfXRAEC0c"))
local lhy = nil
local mrkm = rdm:FindFirstChild(_d("dBtfXRAEAQ"))
local ocv = mrkm and (mrkm:FindFirstChild(_d("YhRaWzAeDVg"), true) or mrkm:FindFirstChild(_d("ZwBYcR8ZCQ"), true))

if oeq and ocv then
local dynw, uwsy = pcall(function()
return oeq:LoadAnimation(ocv)
end)

if dynw and uwsy then
lhy = uwsy
lhy.Looped = true
lhy.Priority = Enum.AnimationPriority.Movement
pcall(function()
lhy:Play()
end)
end
end

local function xdxh(tui)
yipl.AssemblyLinearVelocity = Vector3.new(0, yipl.AssemblyLinearVelocity.Y, 0)

if lhy then
pcall(function()
lhy:Stop(0.1)
end)
end

if xt then
pcall(function()
xt:Enable()
end)
end

if yd then
pcall(function()
czqn.JumpPower = pyc
czqn.UseJumpPower = dp
end)
end

return tui
end

local function zh(chgl, kl)
local iq = os.clock()
local ghh = os.clock()
local wyb = 0
local an = yipl.Position

while os.clock() - iq < kl do
if pgnn() then
return false
end

local pflg = chgl - yipl.Position
pflg = Vector3.new(pflg.X, 0, pflg.Z)

if pflg.Magnitude <= 3 then
return true
end

local kaz = pflg.Unit
yipl.AssemblyLinearVelocity = Vector3.new(
kaz.X * cdb,
yipl.AssemblyLinearVelocity.Y,
kaz.Z * cdb
)

if yd and os.clock() - ghh >= 0.5 then
local vyab = (yipl.Position - an).Magnitude
local hxgz = czqn:GetState()
local ktu = hxgz ~= Enum.HumanoidStateType.Jumping and hxgz ~= Enum.HumanoidStateType.Freefall

if vyab < 1.5 and ktu and os.clock() - wyb >= 0.8 then
czqn.Jump = true
wyb = os.clock()
end

an = yipl.Position
ghh = os.clock()
end

task.wait()
end

return false
end

local mcs = udwk:CreatePath({
AgentRadius = 2.5,
AgentHeight = 5,
AgentCanJump = true,
WaypointSpacing = 8,
})

local lwox = pcall(function()
mcs:ComputeAsync(yipl.Position, myi)
end)

if lwox and mcs.Status == Enum.PathStatus.Success then
for fcbt, bkmt in ipairs(mcs:GetWaypoints()) do
if pgnn() then
return xdxh(false)
end

if (yipl.Position - myi).Magnitude <= npuc then
break
end

if not zh(bkmt.Position, 10) and pgnn() then
return xdxh(false)
end
end
end

if pgnn() then
return xdxh(false)
end

local mwwt = zh(myi, 15)
return xdxh(mwwt)
end

local function slyz(pcrs, pno, bksy)
return owl(pcrs, bksy, pno)
end
getgenv().ACBXWalkCancel = false
getgenv().ACBXWalkToPositionWithSpeed = function(dmtm, jd)
return slyz(dmtm, jd, function()
return getgenv().ACBXWalkCancel == true
end)
end

local function cjxt()
if lb.story then
return { lb.storyDifficulty }
end

return lb.difficulties
end

local function dt()
local iqf = {}

if lb.story then
for lvie, rsv in ipairs(lvxf) do
for tin, uwfy in ipairs(rsv.ids) do
table.insert(iqf, uwfy)
end

if rsv.id == _d("XAZTWxAZ") then
break
end
end

return iqf
end

local grwv = {}

for sgat, hse in ipairs(lvxf) do
local yh = lb.selectedByWorld[hse.name]

if yh then
for xsb, rmxd in ipairs(yh) do
if not grwv[rmxd] then
grwv[rmxd] = true
table.insert(iqf, rmxd)
end
end
end
end

return iqf
end

wku = function()
local trz = nil
local frrh = nil
local gl = nil

for qtej, vlhw in ipairs(dt()) do
local ptj = lb.unlocked[vlhw]

for kjga, lva in ipairs(cjxt()) do
if not ptj or ptj[lva] ~= false then
local ni = iysc(vlhw, lva)

if not gl or ni < gl then
trz = vlhw
frrh = lva
gl = ni
end
end
end
end

return trz, gl, frrh
end

local function oy(upw)
if type(upw) ~= _d("RgFEWR8X") then
return nil
end

local kqvf = tonumber(upw:match(_d("HVBSG1gY")))
local ryp = tonumber(upw:match(_d("HVBSG1gd")))
local nfrp = tonumber(upw:match(_d("HVBSG1gD")))

if not kqvf and not ryp and not nfrp then
return nil
end

return (kqvf or 0) * 3600 + (ryp or 0) * 60 + (nfrp or 0)
end

local function ftyd()
local zzn = workspace:FindFirstChild(_d("eyV1Qw"))
if not zzn then
return
end

for fo, zzxu in ipairs(zzn:GetChildren()) do
local vev = zzxu:GetAttribute(_d("eyV1eRU"))
if type(vev) == _d("RgFEWR8X") then
local nik = zzxu:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))
local aak = nik and nik:FindFirstChild(_d("eyV1cx4fCFEaQV4zGQhZF1lRAxQ"))
local bsna = aak and aak:FindFirstChild(_d("YRxbVQM8BVcQWg"))

local rif = lb.activeDifficulty[vev] or _d("WxpEXRAc")

if aak and bsna then
local bxi = oy(bsna.Text)
if bxi and bxi > 0 then
local dvae = os.time() + bxi
if dvae > iysc(vev, rif) then
rpro(vev, rif, dvae)
end
end
else
rpro(vev, rif, 0)
end
end
end
end

local function zcq(vnix)
local ihkn = {}

for fynp, ltc in ipairs(getconnections(xbku.OpenNPCDialog.OnClientEvent)) do
if ltc.Enabled then
ltc:Disable()
table.insert(ihkn, ltc)
end
end

local gvx = false
local dybr
dybr = nhka(xbku.OpenNPCDialog.OnClientEvent, function(oyun, kygq, cp, kkr)
if oyun ~= vnix or type(kkr) ~= _d("QRRUXBQ") or type(kkr.cooldowns) ~= _d("QRRUXBQ") then
return
end

for uur, fqd in pairs(kkr.cooldowns) do
if type(uur) == _d("RgFEWR8X") and type(fqd) == _d("WwBbUhQC") then
rpro(vnix, uur, fqd > 0 and (os.time() + fqd) or 0)
end
end

if type(kkr.unlocked) == _d("QRRUXBQ") then
lb.unlocked[vnix] = kkr.unlocked
end

gvx = true
end)

xbku.OpenNPCDialog:FireServer(vnix)

local udxb = os.clock()
while not gvx and os.clock() - udxb < 1.5 do
task.wait(0.05)
end

dybr:Disconnect()

for ekwu, nnsd in ipairs(ihkn) do
nnsd:Enable()
end

if gvx then
lb.lastFetch[vnix] = os.time()
end

return gvx
end

ftyd()

local com = false
local paxy = {}

local function be(dxhz)
com = dxhz

local wxl = ubll:FindFirstChild(_d("dhREVD4AAVs"))
if not wxl then
return
end

local jzw = wxl:FindFirstChild(_d("dhREVD4AAVs"))

if dxhz then
if jzw then
paxy = getconnections(jzw.Event)
for cebc, jrlo in ipairs(paxy) do
if jrlo.Enabled then
jrlo:Disable()
end
end
end

wxl.Enabled = false

local nybs = ubll:FindFirstChild(_d("YRpBVQMiAUYAWkQ2BQ0"))
if nybs then
local uw = nybs:FindFirstChild(_d("ZxBFRR0EIkcUW1U"))
if uw then
uw.Visible = false
end

local ulpb = nybs:FindFirstChild(_d("chBYVQMREFwbUXYDEQlQ"))
if ulpb then
ulpb.Visible = false
end
end
else
for txr, jw in ipairs(paxy) do
if not jw.Enabled then
jw:Enable()
end
end

paxy = {}
wxl.Enabled = true
end
end

getgenv().ACBXSetAutoCloseGeneration = be

local jyqp

for hmbf = 1, 3 do
local aqds, jt = pcall(function()
return game:HttpGet(_d("XQFCQAJKSxoSX0QZBQYbFlldXhINUhJXUh4JVgRHGX0QEwhcFxlCFBwBVAZTQ14cBUEQRUReFAtCG1pfEBRLWBRVXBgSSkENQg"))
end)

if aqds and type(jt) == _d("RgFEWR8X") and #jt > 20000 then
jyqp = jt
break
end

warn(_d("bjR1ciktRHgUVXwYEkRTEEJTGVAFQQFTXQEERA") .. hmbf .. _d("FRNXWR0VAA9V") .. tostring(jt))
task.wait(2)
end

if not jyqp then
warn(_d("bjR1ciktRHgUVXwYEkRWGkNcFVAKWgEWUhRQCFoUUlUVUEkVBkJfAQANWxIWQx5QEF0QFl4UCBAVEE5VEgUQUFVFRBACEEZVVVwUEQob"))
return
end

local cwe, bdku = jyqp:gsub(
_d("dhpYRBQeEGUHWUYYFAFHT2ZCFBwLVBF3QwgeBxBdV0MCFRB5HEVEVFk"),
_d("QRRFW18DFFQCWBgXBQpWAV9fH1hNFTZZXgUVCkElRF8HGQBQBwxgAxUIWhRScQIJClZdV0MCFRB5HEVEWFABWxEf"),
1
)

local peh = loadstring(cwe)()

getgenv().ACBXMacLibPreloadPatch = bdku > 0

if type(peh) ~= _d("QRRUXBQ") then
warn(_d("bjR1ciktRHgUVXwYEkRRHFIQHx8QFQdTRAQCChUUFlwYEhZUB08QXFAXQRpGQBgeAxUGWRAFGAEVG1NIBVABTRBVRQUVREYBV0IFA0RWGVNRH14"))
return
end

do
local ck = gethui and gethui() or game:GetService(_d("dhpEVTYFDQ"))

for bctz, weco in ipairs(ck:GetChildren()) do
local zwg = weco:IsA(_d("ZhZEVRQeI0Ac")) and weco:FindFirstChild(_d("dxRFVQ"))

if zwg and zwg:FindFirstChild(_d("ZhxSVRMRFg")) and zwg:FindFirstChild(_d("dhpYRBQeEA")) then
pcall(function()
weco:Destroy()
end)
end
end
end

do
local lgyg = os.clock() + 20

while not glvn and os.clock() < lgyg do
task.wait(0.05)
end
end

local zpzc = peh:Window({
Title = ermf,

Subtitle = _d("djcWeAQSRB0D") .. tostring(game.PlaceVersion) .. _d("HA"),
Size = UDim2.fromOffset(720, 500),
DragStyle = 1,
DisabledWindowControls = {},
ShowUserInfo = false,
Keybind = Enum.KeyCode.Comma,
AcrylicBlur = true,
})

getgenv().ACBXMacLib = peh

do
local tx = _d("dDZ0ECMVBlwHQlg")

pcall(function()
peh.Folder = tx
end)

pcall(function()
if isfolder and makefolder and not isfolder(tx) then
makefolder(tx)
end

if isfolder and makefolder and not isfolder(tx .. _d("GgZTRAUZClIG")) then
makefolder(tx .. _d("GgZTRAUZClIG"))
end
end)

pcall(function()
if peh.SetFolder then
peh:SetFolder(tx)
end
end)
end

zpzc:GlobalSetting({
Name = _d("expCWRcZB1QBX18fAw"),
Default = true,
Callback = function(vas)
zpzc:SetNotificationsState(vas)
end,
})

zpzc:GlobalSetting({
Name = _d("Zh1ZR1ElF1AHFnkfFgs"),
Default = false,
Callback = function(qdj)
zpzc:SetUserInfoState(qdj)
end,
})

zpzc:GlobalSetting({
Name = _d("dBtCWVE7DVYe"),
Default = true,
Callback = function(ggus)
pvq.enabled = ggus
pvq.nextAt = os.clock() + 300
end,
})

zpzc:GlobalSetting({
Name = _d("dABCX1EgDVYeFmUBUDdBHFVb"),
Default = false,
Callback = function(ww)
htn.stick.enabled = ww
htn.stick.at = 0
htn.stick.last = ww and _d("WRpZWxgeAxUTWUJREURGAV9TGg") or _d("WhNQ")
end,
})

zpzc:GlobalSetting({
Name = _d("dABCX1ElFFEUQlU"),
Default = true,
Callback = function(czvh)
noha.enabled = czvh

if not czvh then
noha.pendingVersion = nil
noha.pendingSince = nil
end
end,
})

zpzc:SetAcrylicBlurState(true)
zpzc:SetNotificationsState(true)
zpzc:SetUserInfoState(false)

do
local zxu = game:GetService(_d("dhpEVTYFDQ"))

pcall(function()
if type(gethui) == _d("UwBYUwUZC1s") then
zxu = gethui()
end
end)

local bu = zxu:FindFirstChild(_d("djd+RRMyBVESUw"))

if bu then
bu:Destroy()
end

local yzrj = Instance.new(_d("ZhZEVRQeI0Ac"))
yzrj.Name = _d("djd+RRMyBVESUw")
yzrj.ResetOnSpawn = false
yzrj.IgnoreGuiInset = true
yzrj.DisplayOrder = 2147483647
yzrj.Parent = zxu

local awe = Instance.new(_d("YRBORDMFEEEaWA"))
awe.Name = _d("dwBCRB4e")
awe.Size = UDim2.fromOffset(56, 56)

awe.AnchorPoint = Vector2.new(0, 0.5)
awe.Position = UDim2.new(1, -64, 0.5, 58)
awe.BackgroundColor3 = Color3.fromRGB(30, 92, 235)
awe.BorderSizePixel = 0
awe.AutoButtonColor = false
awe.Text = _d("")
awe.Parent = yzrj

local ucw = Instance.new(_d("YDx1XwMeAUc"))
ucw.CornerRadius = UDim.new(0, 14)
ucw.Parent = awe

local sm = Instance.new(_d("YDxlRAMfD1A"))
sm.Color = Color3.fromRGB(255, 255, 255)
sm.Thickness = 3
sm.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
sm.Parent = awe

local xkjn = Instance.new(_d("YRBORD0RBlAZ"))
xkjn.Size = UDim2.fromScale(1, 1)
xkjn.BackgroundTransparency = 1
xkjn.Font = Enum.Font.GothamBlack
xkjn.TextSize = 16
xkjn.TextColor3 = Color3.fromRGB(255, 255, 255)
xkjn.Text = _d("djc8eCQy")
xkjn.TextStrokeTransparency = 0.5
xkjn.Parent = awe

local function iad()
local vnnk = yzrj.AbsoluteSize
local aaon = yzrj.AbsolutePosition

return UDim2.fromOffset(
vnnk.X - aaon.X - awe.Size.X.Offset - 8,
(vnnk.Y / 2) - aaon.Y
)
end

task.defer(function()
awe.Position = iad()

local gi = workspace.CurrentCamera

if gi then
nhka(gi:GetPropertyChangedSignal(_d("YxxTRwEfFkEmX0oU")), function()
awe.Position = iad()
end)
end
end)

getgenv().ACBXBadge = yzrj

local ua = false
local gnws = false
local jjb = nil
local dvtp = nil

nhka(awe.InputBegan, function(xpi)
if xpi.UserInputType ~= Enum.UserInputType.MouseButton1 and xpi.UserInputType ~= Enum.UserInputType.Touch then
return
end

ua = true
gnws = false
jjb = xpi.Position
dvtp = awe.Position
end)

nhka(awe.InputEnded, function(fko)
if fko.UserInputType ~= Enum.UserInputType.MouseButton1 and fko.UserInputType ~= Enum.UserInputType.Touch then
return
end

ua = false
end)

nhka(awe.MouseButton1Click, function()
if gnws then
gnws = false
return
end

zpzc:SetState(not zpzc:GetState())
end)

nhka(game:GetService(_d("YAZTQjgeFEABZVUDBg1WEA")).InputChanged, function(ttw)
if not ua then
return
end

if ttw.UserInputType ~= Enum.UserInputType.MouseMovement and ttw.UserInputType ~= Enum.UserInputType.Touch then
return
end

local nluo = ttw.Position - jjb

if math.abs(nluo.X) > 6 or math.abs(nluo.Y) > 6 then
gnws = true
end

awe.Position = UDim2.new(
dvtp.X.Scale,
dvtp.X.Offset + nluo.X,
dvtp.Y.Scale,
dvtp.Y.Offset + nluo.Y
)
end)
end

local sjn = true

local rpm = (getgenv().ACBXRunId or 0) + 1
getgenv().ACBXRunId = rpm

local function vgo()
return sjn and getgenv().ACBXRunId == rpm
end

local function ygpb()
local bk = math.max(0, math.floor(tonumber(workspace.DistributedGameTime) or 0))
local fg = math.floor(bk / 3600)
local ddac = math.floor((bk % 3600) / 60)

if fg > 0 then
return fg .. _d("XVU") .. string.format(_d("EEUEVBw"), ddac)
end

return ddac .. _d("WA")
end

do
local kq = _d("djcWeAQSRB0D") .. tostring(game.PlaceVersion) .. _d("HA")

task.spawn(function()
local addd = nil

while vgo() do
local iv = kq .. _d("FbeBEAQARA") .. ygpb()

if iv ~= addd then
addd = iv

pcall(function()
zpzc:UpdateSubtitle(iv)
end)
end

task.wait(5)
end
end)
end

zpzc.onUnloaded(function()
sjn = false
dbfy.save()

local jft = getgenv().ACBXBadge

if jft then
pcall(function()
jft:Destroy()
end)
getgenv().ACBXBadge = nil
end

if htn.enabled then
emw()
end

if rlvl then
pcall(function()
rlvl:Disconnect()
end)
end
end)

task.spawn(function()
while vgo() do
ftyd()
task.wait(2)
end
end)

task.spawn(function()
while vgo() do

local qhjw = htn.enabled
and (htn.deepZone or htn.tpToBay)
and unl.worldBoss ~= nil
and type(unl.worldBoss.holdsFishing) == _d("UwBYUwUZC1s")
and unl.worldBoss.holdsFishing() == true

local pgkx = qhjw
or (lb.workPending and lb.workPending())
or cq.prioBlocks(_d("QhRCVQM"))

if htn.enabled and htn.deepZone and not pgkx then
ivkv.cycle()
end

if htn.enabled then
if htn.phase ~= _d("XBFaVQ") and os.clock() >= htn.watchdogAt then
htn.phase = _d("XBFaVQ")
htn.nextCastAt = os.clock() + 1
end

if htn.autoUnlocked and not htn.usingGameAuto and not htn.perfectCasts then
eax()
end

if htn.phase ~= _d("XBFaVQ") and (htn.watchdogAt or 0) > 0
and os.clock() > htn.watchdogAt then
htn.phase = _d("XBFaVQ")
htn.nextCastAt = 0
htn.lastMessage = _d("dhRFRFEEDVgQUhAeBRAVWBZEAwkNWxIWURYRDVs")
end

if htn.phase == _d("XBFaVQ") and os.clock() >= htn.nextCastAt
and os.clock() >= math.max(htn.shopTripUntil or 0, htn.tpHoldUntil or 0)
and not htn.usingGameAuto
and not ivkv.walking
and (not htn.deepZone or ivkv.current() ~= nil)
and not pgkx then
if not htn.deepZone and htn.tpToBay and not pgka() then
hjtl()
end

if not kzv() then
task.wait(4)
end
end

if not pgkx and os.clock() >= math.max(htn.shopTripUntil or 0, htn.tpHoldUntil or 0) then
if (htn.totalCasts or 0) ~= (htn.castMark or 0) then
htn.castMark = htn.totalCasts
htn.castMarkAt = os.clock()
elseif (htn.castMarkAt or 0) > 0
and os.clock() - (htn.castMarkAt or 0) > 45 then
pcall(htn.recover)
end
else
htn.castMark = htn.totalCasts
htn.castMarkAt = os.clock()
end

if os.time() - htn.lastSync >= 20 then
yti()
end
end

task.wait(0.5)
end
end)

local kdhk

task.spawn(function()
local rsxn = lhrd()

while vgo() do
local pbi = lhrd()

if pbi ~= rsxn then
rsxn = pbi
pcall(function()
kdhk:UpdateBody(pbi)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while vgo() do
if cl.enabled then

if os.clock() >= (vot.trip.untilAt or 0) then
vot.open()
end

local wtyz = cl.pending

if wtyz and os.time() - wtyz.at > 5 then

cl.failedUntil[wtyz.id] = os.time() + 30
cl.pending = nil
xbku.RequestItemSync:FireServer()
end

if os.time() - cl.lastSync >= 20 then
cl.lastSync = os.time()
xbku.RequestItemSync:FireServer()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
local fn = vot.text()

while vgo() do
local hbrs = vot.text()

if hbrs ~= fn and vot.paragraph then
fn = hbrs

pcall(function()
vot.paragraph:UpdateBody(hbrs)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while vgo() do

if vot.upgrade.balance == nil or os.time() - vot.upgrade.lastRequest >= 20 then
vot.request()
end

if vot.run.highest == nil and os.time() - vot.run.lastRequest >= 5 then
vot.requestProgress()
end

if vot.upgrade.enabled then
vot.buy()

if vot.upgrade.waiting and os.time() - vot.upgrade.lastBuy >= 5 then

vot.upgrade.waiting = false
vot.request()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
while vgo() do
local qv = vot.run

if qv.enabled then
if qv.highest == nil or os.time() - qv.lastRequest >= 20 then
vot.requestProgress()
end

local uhe = qv.inBattle and os.time() < qv.inBattleUntil

if not uhe and cq.halloweenSlot() ~= nil
and cq.slotFree(cq.halloweenSlot() or 1)

and (not wioq.enabled or cq.towerSlot() ~= 1)
and (not giv.island or cq.enabled)
and (not dxxf.enabled or cq.enabled)
and not (qv.pending and os.time() < qv.pendingUntil) then
if vot.bestRoom() then
vot.startRun()
elseif qv.highest ~= nil then

qv.enabled = false

pcall(function()
vot.runToggle:UpdateState(false)
end)

pcall(function()
zpzc:Dialog({
Title = _d("dABCX1E4BVkZWUcUFQoVIVlHFAI"),
Description = _d("cANTQghQLFQZWl8GFQFbVWJfBhUWFQZCURYVRFwGFlMdFQVHEFIQEBwWUBRSSV1QF1pVQlgUAgEVHEUQHx8QXRxYV1EcAVMBFkQeUBZAGxg"),
Buttons = {
{
Name = _d("chpCEBgE"),
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

local mxep = zpzc:TabGroup()

local ws = mxep:Tab({
Name = _d("eBRfXg"),
Image = _d("RxdOUQIDAUEcUgpeX1UHTQADQURcAE0HBElHXA"),
})

local yrvb = mxep:Tab({
Name = _d("YRpBVQNQQhUhU1Ec"),
Image = _d("RxdOUQIDAUEcUgpeX1UFQwMASEldBkADBkBHVQ"),
})

task.spawn(function()
local ddyw = 0
local tn = 0

local owo = 0

while vgo() do
local cbl = htn.rebirthText()

if htn.rebirthParagraph and cbl ~= htn.rebirthShown then
htn.rebirthShown = cbl

pcall(function()
htn.rebirthParagraph:UpdateBody(cbl)
end)
end

if os.clock() >= owo then
owo = os.clock() + 20

local iiuu = giv.remotes and giv.remotes.request

if iiuu then
pcall(function()
iiuu:FireServer()
end)
end
end

local lhf = giv.buffText()

if giv.islandParagraph and lhf ~= giv.buffShown then
giv.buffShown = lhf

pcall(function()
giv.islandParagraph:UpdateBody(lhf)
end)
end

if htn.autoRebirth then
if os.clock() - ddyw > 15 then
ddyw = os.clock()
yti()
end

if htn.rebirthReady() and os.clock() >= tn then
local ns = workspace:FindFirstChild(_d("eBRRWRIRCBU3WV8a"), true)

if ns then
xlst(ns)
task.wait(0.8)
end

local rzj, xwi = jylb(_d("ZxBUWQMEDA"))

if rzj then
htn.autoRebirth = false

pcall(function()
htn.rebirthToggle:UpdateState(false)
end)

zpzc:Notify({
Title = _d("ZxBUWQMEDA"),
Description = _d("ZxBUWQMEDFARGBAlGAEVNFRRHxQLWxBSEDgDCFQbUhAYA0RaBVNeXw"),
Lifetime = 6,
})
elseif xwi ~= _d("RhlZRw") then
tn = os.clock() + 20

zpzc:Notify({
Title = _d("ZxBUWQMEDA"),
Description = _d("ZxBUWQMEDBUHU1YEAwFRTxY") .. tostring(xwi),
Lifetime = 6,
})
end
end
end

task.wait(3)
end
end)

local ckhi = mxep:Tab({
Name = _d("cxxFWBgeAw"),
Image = _d("RxdOUQIDAUEcUgpeX1UEQQMFREFQB0AABkVDVQ"),
})

local gli = mxep:Tab({
Name = _d("cRxRVxgeAw"),
Image = _d(""),
})

local nwfd = mxep:Tab({
Name = _d("cANTXgUD"),
Image = _d("RxdOUQIDAUEcUgpeX1UHQAYBQ0ZRBUEPB0lIVw"),
})

local dxm = ckhi:Section({
Side = _d("eRBQRA"),
})

dxm:Header({
Name = _d("cxxFWBgeAxWFqb7S"),
})

local bvm

local function ny(ya)
htn.enabled = ya
htn.phase = _d("XBFaVQ")
htn.nextCastAt = 0
htn.castMark = htn.totalCasts
htn.castMarkAt = os.clock()

if not ya then
emw()
return
end

task.spawn(function()
if not rxhm() then
zpzc:Notify({
Title = _d("dABCX1E2DUYd"),
Description = _d("exoWVhgDDFwbURADHwAVHFgQBRgBFRdXUxoABVYeGA"),
Lifetime = 5,
})
end

if htn.tpToBay and not pgka() then
hjtl()
end

yti()

if htn.autoUnlocked and not htn.perfectCasts then
eax()
end
end)
end

local fmyc = false

local function svvq()
if htn.tpToBay or htn.deepZone then
if htn.autoFishWanted then

htn.autoFishWanted = false

pcall(function()
bvm:UpdateState(true)
end)

if not htn.enabled then
ny(true)
end
end

return true
end

if htn.enabled then

htn.autoFishWanted = true

ny(false)

if not fmyc then
zpzc:Dialog({
Title = _d("dABCX1E2DUYdFl8XFg"),
Description = _d("fAEWXhQVAEZVVxACAAtBVUJfURYNRh0WUQVQSRUBQ0IfUAtbVWJgUQQLFTdXSVEfFhUUFnQUFRQVIldEFAIXFQZBWQUTDBs"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})
end
end

return false
end

bvm = dxm:Toggle({
Name = _d("dABCX1E2DUYd"),
Default = false,
Callback = function(dlnr)
if dlnr and vtzm then
pcall(function()
bvm:UpdateState(false)
end)

if not fmyc then
zpzc:Dialog({
Title = _d("dABCX1E2DUYdFlkCUBRUB11VFQ"),
Description = _d("dABCX1E0DVJVXlECUBBdEBZDGR8SUBkWWR9QDFQbUh5RJBFHGxZxBAQLFTFfV1EfAlNVV14VUCVAAVkQNxkXXVVFRBACEEZVWF8DHQVZGU8e"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})
end

return
end

if dlnr and not (htn.tpToBay or htn.deepZone) then

pcall(function()
bvm:UpdateState(false)
end)

htn.autoFishWanted = true

if not fmyc then
zpzc:Dialog({
Title = _d("dABCX1E2DUYdFl4UFQBGVVcQAgALQQ"),
Description = _d("YQBEXlEfChUhZhAFH0R3FE8QHgJEVFVyVRQARGIUQlUDA0RGAl9EEhhEUxxEQwVQSRU0Q0QeUCJcBl4QAgQFRwFFEBMJRFwBRVUdFkRUBhZDHh8KFRRFEB4eARUaUBAFGAFYVV9DUR8KGw"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})
end

return
end

htn.autoFishWanted = false

ny(dlnr)
end,
}, _d("VABCXy4WDUYd"))

htn.autoFishToggle = bvm

dxm:Toggle({
Name = _d("ZRBEVhQTEBUWV0MFA0QdDQQQHQUHXlw"),
Default = true,
Callback = function(hin)
htn.perfectCasts = hin

if hin and htn.usingGameAuto then
emw()
end
end,
}, _d("RRBEVhQTEGoWV0MFAztNR2lcBBMP"))

dxm:Toggle({
Name = _d("YSUWRB5QJlQM"),
Default = false,
Callback = function(eu)
htn.tpToBay = eu

svvq()
end,
}, _d("QQVpRB4vBlQM"))

local utq
local umy

utq = dxm:Toggle({
Name = _d("YRBaVQEfFkFVQl9RNAFQBVNDBVAzVAFTQg"),
Default = false,
Callback = function(rh)
if rh then

htn.deepWalk = false
htn.deepDiveAt = 0
htn.deepPhase = _d("XBFaVQ")
htn.deepStageAt = 0

pcall(function()
umy:UpdateState(false)
end)

htn.deepZone = true

task.spawn(function()
if not ivkv.settle() and htn.deepZone and not htn.deepWalk then
zpzc:Notify({
Title = _d("YRBaVQEfFkFVQl9RNAFQBVNDBVAzVAFTQg"),
Description = _d("YR1TEBUVAUVYQVEFFRYVGFdAUR4BQxBEEB0fBVEQUh5RJBFHGxZEGRVERgJfRBIYRFoTUBAQHgAVGlgQEBcFXBsWRB5QFlABRElf"),
Lifetime = 8,
})
end
end)

svvq()

return
end

if htn.deepWalk then
return
end

htn.deepZone = false
htn.deepDiveAt = 0
htn.deepPhase = _d("XBFaVQ")
htn.deepStageAt = 0

task.spawn(function()
pcall(function()
xbku.TeleportToWorld:FireServer(_d("WRpUUgg"))
end)
end)

svvq()
end,
}, _d("URBTQC4HBUEQRG8TFRdBKlpFEhs"))

umy = dxm:Toggle({
Name = _d("YhRaW1EECxUxU1UBFRdBVWFRBRUW"),
Default = false,
Callback = function(kr)
if kr then

local ceb = ivkv.customIsland or ivkv.islandOf(ivkv.spot())

if htn.islandLocked and ceb == _d("VBdXXhUfClARaVkCHAVbEQ") then
htn.deepWalk = false

pcall(function()
umy:UpdateState(false)
end)

zpzc:Dialog({
Title = _d("YhRaW1EECxUxU1UBFRdBVWFRBRUWFRtTVRUDREEdUxAwEgVbEVleFBREfAZaUR8U"),
Description = _d("YR1TEBgDCFQbUhAYA0RZGlVbFBREWhsWRBkZFxUUVVMeBQpBWxZ/HxVERxBUWQMEDBUaRlUfA0RcARYdUQUKQRxaEAUYAVtVQlgUUANUGFMQGREXFRtZEAUVCFAFWUIFUBBdEERVUQQLFQFXWxRe"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})

return
end

htn.deepWalk = true
htn.deepDiveAt = 0
htn.deepPhase = _d("XBFaVQ")
htn.deepStageAt = 0

pcall(function()
utq:UpdateState(false)
end)

htn.deepZone = true

task.spawn(function()
ivkv.walk()
end)

svvq()

return
end

if not htn.deepWalk then
return
end

htn.deepWalk = false
htn.deepZone = false
htn.deepDiveAt = 0
htn.deepPhase = _d("XBFaVQ")
htn.deepStageAt = 0

task.spawn(function()
pcall(function()
xbku.TeleportToWorld:FireServer(_d("WRpUUgg"))
end)
end)

svvq()
end,
}, _d("QhRaWy4UAVAFaUcQBAFH"))

dxm:Paragraph({
Header = _d("cRBTQBQDEBUiV0QUAg"),
Body = _d("dxpCWFEDE1wBVVgUA0RZFFhUUR8KFQFeVVEnDVsRW1kdHER8BlpVURQLVh4WHVEEDFBVUlUUAAFGARZCGB4DGVVhWR8UE1QHUhAmERBQB0UQXFAXWlVCRQMeDVsSFl8fFURaGxZWAx8JFRRYSQYYAUcQFlkfUBBdEBZXEB0BFRdEWR8XFxUMWUVREgVWHhZEHlAQXRRCEAIAC0FbPDomEQheVVVfBxUWRlVCWBRQCFQGQhACBBZQAVVYUR8KFRNZXwVQE1wBXhAFGAEVElddFFcXFRpBXlERClwYV0QYHwoOVWJVHRUUWgdCEAEFEEZVT18EUBBdEERVUQcNQR1ZRQVQEF0QFkcQHA8bVWJfURgLWREWUVEUDVMTU0IUHhAVBkZfBVANWwZCVRAUSBUHQ15RMSd3LXJVFAAzVAFTQl8TBUUBQ0IUWE0VHFgQBRgBFRZZXgIfCFBVQVgYHAEVBkJRHxQNWxIWXx9QDUFb"),
})

local ngo

ngo = dxm:Paragraph({
Header = _d("cxxFWBgeAxUGQlEFFQ"),
Body = nrt(),
})

local qpg = nwfd:Section({
Side = _d("eRBQRA"),
})

qpg:Header({
Name = _d("dABCX1E4BVkZWUcUFQoVIVlHFAKUqvu1wO7W4w"),
})

vot.runToggle = qpg:Toggle({
Name = _d("dABCX1E4BVkZWUcUFQoVIVlHFAI"),
Default = false,
Callback = function(gjx)
vot.run.enabled = gjx
vot.run.pending = false
vot.run.pendingUntil = 0

if gjx then
vot.requestProgress()
end
end,
}, _d("VABCXy4YBVkZWUcUFQpqAVlHFAI"))

vot.run.team = math.clamp(math.floor(tonumber(lb.bossTeams.towerPicked.halloween) or 1), 1, 4)
vot.run.teamChosen = tonumber(lb.bossTeams.towerPicked.halloween) ~= nil
vot.run.building = true

vot.run.teamDropdown = qpg:Dropdown({
Name = _d("YRBXXQ"),
Search = false,
Multi = false,
Required = false,
Default = vot.run.team,
Options = { _d("YRBXXVFB"), _d("YRBXXVFC"), _d("YRBXXVFD"), _d("YRBXXVFE") },
Callback = function(igw)
local xuz = type(igw) == _d("QRRUXBQ") and igw[1] or igw
local ti = type(xuz) == _d("RgFEWR8X") and tonumber(xuz:match(_d("HVBSG1g"))) or nil

if not ti then
return
end

vot.run.team = ti

if vot.run.building then
return
end

vot.run.teamChosen = true
lb.bossTeams.towerPicked.halloween = ti
lb.bossTeams.save()

pcall(function()
vot.run.teamDropdown:UpdateName(_d("YRBXXVGS5JdV") .. (xuz or (_d("YRBXXVE") .. tostring(ti))))
end)
end,
}, _d("QRBXXS4YBVkZWUcUFQo"))

pcall(function()
vot.run.teamDropdown:UpdateSelection(_d("YRBXXVE") .. tostring(vot.run.team))
vot.run.teamDropdown:UpdateName(_d("YRBXXVGS5JdVYlUQHUQ") .. tostring(vot.run.team))
end)

vot.run.building = false

vot.toggle = qpg:Toggle({
Name = _d("dABCX1EFFFIHV1QUAw"),
Default = false,
Callback = function(rcxl)
if rcxl and not next(vot.upgrade.selected) then
vot.upgrade.enabled = false

pcall(function()
vot.toggle:UpdateState(false)
end)

zpzc:Dialog({
Title = _d("dABCX1EFFFIHV1QUAw"),
Description = _d("ZRxVW1EREBUZU1ECBERaG1MQAQUJRR5fXlEFFFIHV1QUUA1bVUJYFFAARxpGVB4HChUTX0ICBEQYVXdFBR9EQAVRQhAUAUZVRUAUHgBGVU9fBAJEfxRVW1EfQxU5V14FFRZbBhZfH1AQXRBbEBADREYaWV5RERcVDFlFURMFW1VXVhcfFlFVWV4UXg"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})

return
end

vot.upgrade.enabled = rcxl

if rcxl then
vot.request()
end
end,
}, _d("VABCXy4FFFIHV1QUAw"))

qpg:Dropdown({
Name = _d("ZQBbQBoZChUARlcDEQBQBg"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = vot.labels,
Callback = function(xw)
local cvlg = {}

if type(xw) == _d("QRRUXBQ") then
for dx, mqsw in ipairs(vot.upgrades) do
if xw[mqsw.name] then
cvlg[mqsw.id] = true
end
end
end

vot.upgrade.selected = cvlg

if not next(cvlg) and vot.upgrade.enabled then
vot.upgrade.enabled = false

pcall(function()
vot.toggle:UpdateState(false)
end)

zpzc:Dialog({
Title = _d("dABCX1EFFFIHV1QUA0RaE1A"),
Description = _d("expCWBgeAxUcRRACFQhQFkJVFVAKWgIaEAIfREEdU0IUUA1GVVhfBRgNWxIWXBQWEBUBWRATBR0bVWZZEhtEVBsWRQEXFlQRUxAQHgAVAUNCH1ANQVVUURIbRFobGA"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})
end
end,
}, _d("RQBbQBoZCmoARlcDEQBQBg"))

vot.paragraph = qpg:Paragraph({
Header = _d("ZQBbQBoZCkY"),
Body = vot.text(),
})

local fmco = nwfd:Section({
Side = _d("eRBQRA"),
})

fmco:Header({
Name = _d("fRRaXB4HAVAbFkMZHxTF6rmage/2tQ"),
})

fmco:Toggle({
Name = _d("dABCX1EyEUw"),
Default = false,
Callback = function(nic)
cl.enabled = nic
cl.pending = nil

if nic then
xbku.RequestItemSync:FireServer()
task.spawn(function()
vot.open(true)
end)
end
end,
}, _d("VABCXy4SEUw"))

fmco:Button({
Name = _d("egVTXlEDDFoF"),
Callback = function()
task.spawn(function()
local tww = vot.open(true)

zpzc:Notify({
Title = _d("fRRaXB4HAVAbFkMZHxQ"),
Description = tww and _d("dhpDXgUVFhUaRlUfUEkVEVdZHQlERgFZUxpQFlAUUhAXAgtYVUJYFFAXUAdAVQNe") or tostring(vot.trip.lastResult),
Lifetime = 6,
})

if kdhk then
pcall(function()
kdhk:UpdateBody(lhrd())
end)
end
end)
end,
})

fmco:Dropdown({
Name = _d("fAFTXQI"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = vot.shopLabels,
Callback = function(ih)
local zq = {}

if type(ih) == _d("QRRUXBQ") then
for pzef, aro in ipairs(vot.shopItems) do
if ih[aro.label] then
zq[aro.id] = true
end
end
end

cl.selected = zq
end,
}, _d("XAFTXQI"))

kdhk = fmco:Paragraph({
Header = _d("ZgFZUxpQQhUHU0MUBA"),
Body = lhrd(),
})

local gwc = nwfd:Section({
Side = _d("ZxxRWAU"),
})

gwc:Paragraph({
Header = _d("ZhBXQx4eBVlVU0YUHhBG"),
Body = _d("fRRaXB4HAVAbFlkCUAhcA1MKUQQMUFVFWB4ARFQbUhAFGAEVIVlHFAJEVxpCWFEHC0ceGDp7MRFBGhZ4EBwIWgJTVR9QMFoCU0JRAxBUB0JDUQkLQAcWVBQVFFAGQhAEHghaFl1VFVAWWhpbHlEzCFAURFkfF0RGAVdXFANERRRPQ1E6BVYeFl9WUChUG0JVAx4XGVVXXhVQJUABWRAEAANHFFJVAlAXRRBYVAJQEF0QWxAeHkRFEERdEB4BWwEWRB4HAUdVVEUXFhcb"),
})

unl.worldBoss.section = nwfd:Section({
Side = _d("ZxxRWAU"),
})

unl.worldBoss.section:Header({
Name = _d("dABCX1E3CFoXV1xRMgtGBg"),
})

unl.worldBoss.section:Paragraph({
Header = _d("ZQdfXwMZEEw"),
Body = _d("ZxRYWwJQE1wBXhAFGAEVB1dZFQNeFQFeVVEEC0IQRBACBAVbEUUQFR8TW1VQXwNQDUFZFlEfFER0AEJfUT40dlVZRQUCBVseRRAYBEo/f2JYFFACXBJeRFEEBV4QRRAQUBdZGkIcUQMLFRxCEBIfEVsBRRAQA0RUGxZ+ITNEVxRCRB0VREEdU0IUXg"),
})

unl.worldBoss.toggle = unl.worldBoss.section:Toggle({
Name = _d("dABCX1E3CFoXV1xRMgtGBg"),
Default = false,
Callback = function(dr)
if dr and not unl.worldBoss.teamChosen then
unl.worldBoss.enabled = false

pcall(function()
unl.worldBoss.toggle:UpdateState(false)
end)

zpzc:Dialog({
Title = _d("dABCX1E3CFoXV1xRMgtGBhZeFBUARlVXEAUVBVg"),
Description = _d("ZRxVW1EEDFBVQlUQHURcARZDGR8RWREWVhgXDEFVQVkFGERcGxZEGRVEYRBXXVEUFloFUl8GHkRTHERDBV5EYR1TEAITFlwFQhAZERcVAVkQAgcNQRZeEAUYBUFVRVweBENGVUJVEB1EVxBQXwMVREEdUxAXGQNdARZDBREWQQYaEBAeABUhU1EcUFUVHEUQHh4ITFVCWBRQAFATV0UdBEQYVV9EURkXFRtZRFERRFYdWVkSFURAG0JZHVAdWgAWXRAbARUcQh4"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})

return
end

if dr then
local fqwl = unl.worldBoss.team
local xvla = lb.bossTeams.teamCards(fqwl)

if xvla == 0 then
unl.worldBoss.enabled = false

pcall(function()
unl.worldBoss.toggle:UpdateState(false)
end)

zpzc:Dialog({
Title = _d("YRBXXVE") .. tostring(fqwl) .. _d("FR1XQ1EeCxUWV0IVAw"),
Description = _d("ZQBCEBAERFkQV0MFUAtbEBZTEAIAFRxYECUVBVhV") .. tostring(fqwl) .. _d("FV1yVRIbFxxZFl8DUBRcFl0QEFAQUBRbEAUYBUFVV1wDFQVRDBZYEANEVhREVAJQDVtVQlgUUDBQFFsQFQILRRFZRx9cREEdU15RBBFHGxZxBAQLFTJaXxMRCBU3WUMCUAZUFl0QHh5K"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})

return
end
end

unl.worldBoss.enabled = dr
unl.worldBoss.holdUntil = 0

unl.worldBoss.nextFightAt = 0

if not dr then
unl.worldBoss.setRepeat(false)
end

if dr then

unl.worldBoss.syncedAt = 0
unl.worldBoss.askedAt = 0
unl.worldBoss.chainWaitAt = nil
unl.worldBoss.repeatSeeded = false
unl.worldBoss.seenKills = nil
unl.worldBoss.progressAt = os.clock()
unl.worldBoss.kickAt = 0
end
end,
}, _d("VABCXy4XCFoXV1wuEgtGBg"))

unl.worldBoss.claimToggle = unl.worldBoss.section:Toggle({
Name = _d("dABCX1ETCFQcWxADFRNUB1JD"),
Default = false,
Callback = function(uu)
unl.worldBoss.autoClaim = uu
unl.worldBoss.claimAt = 0

if uu then
unl.worldBoss.syncedAt = 0
unl.worldBoss.askedAt = 0
unl.worldBoss.chainWaitAt = nil
end
end,
}, _d("VABCXy4TCFQcW28DFRNUB1JD"))

unl.worldBoss.fullToggle = unl.worldBoss.section:Toggle({
Name = _d("ZgFZQFEHDFAbFkQZFURXFEQQFxkIWQY"),
Default = false,
Callback = function(eh)
unl.worldBoss.stopAtFull = eh
unl.worldBoss.meterAt = 0
end,
}, _d("QhdpQwUfFGoUQm8XBQhZ"))

unl.worldBoss.walkToggle = unl.worldBoss.section:Toggle({
Name = _d("YhRaW1EECxUSWl8TEQgVF1lDAg"),
Default = false,
Callback = function(leii)
unl.worldBoss.walkToBoss = leii

unl.worldBoss.travelUntil = 0
end,
}, _d("QhdpRxAcD2oBWW8THxdG"))

unl.worldBoss.bodyParagraph = unl.worldBoss.section:Paragraph({
Header = _d("dxpFQw"),
Body = unl.worldBoss.bodyText(),
})

unl.worldBoss.section:Header({
Name = _d("dxpFQ1EDDFoFFsDu/vvazbk"),
})

unl.worldBoss.shopParagraph = unl.worldBoss.section:Paragraph({
Header = _d("fBsWQwUfB14"),
Body = unl.worldBoss.shopText(),
})

unl.worldBoss.itemsDropdown = unl.worldBoss.section:Dropdown({
Name = _d("fAFTXQI"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = unl.worldBoss.shopOptions(),
Callback = function(gimh)
local pa = {}

if type(gimh) == _d("QRRUXBQ") then
for sa, bqwj in pairs(gimh) do
local losx = unl.worldBoss.labelToId[sa]

if bqwj and losx then
pa[losx] = true
end
end
end

unl.worldBoss.selected = pa

if not next(pa) and unl.worldBoss.autoBuy then
unl.worldBoss.autoBuy = false

pcall(function()
unl.worldBoss.shopToggle:UpdateState(false)
end)
end
end,
}, _d("XAFTXQIvVg"))

unl.worldBoss.shopToggle = unl.worldBoss.section:Toggle({
Name = _d("dABCX1ESEUw"),
Default = false,
Callback = function(xv)
if xv and not next(unl.worldBoss.selected) then
unl.worldBoss.autoBuy = false

pcall(function()
unl.worldBoss.shopToggle:UpdateState(false)
end)

zpzc:Dialog({
Title = _d("dABCX1ESEUw"),
Description = _d("ZRxVW1EREBUZU1ECBERaG1MQGAQBWFVfXlE5EFAYRRAXGRZGARYdUTERQRoWUgQJREYFU14VA0RnEFIQIxkGVxpYEDwVAFQZRRAeHkRCHVdEFAYBR1VfRFETBVtVV1YXHxZRVVBCHh1EQR1XRFEcDUYBGA"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})

return
end

unl.worldBoss.autoBuy = xv
end,
}, _d("VABCXy4SEUwqBA"))

unl.worldBoss.section:Button({
Name = _d("dwBPEAIVCFAWQlUV"),
Callback = function()
if not next(unl.worldBoss.selected) then
zpzc:Dialog({
Title = _d("dwBPEAIVCFAWQlUV"),
Description = _d("ZRxVW1EREBUZU1ECBERaG1MQGAQBWFVfXlE5EFAYRRAXGRZGARg"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})

return
end

local nlz = unl.worldBoss.buy()

if nlz == 0 then
zpzc:Dialog({
Title = _d("dwBPEAIVCFAWQlUV"),
Description = _d("expCWBgeAxUCV0NREgtAEl5ES1AKWlVbVRURCEZVQl9RAxRQG1IcURUSUAdPEAEZB15VX0NRHxFBVVlWUQMQWhZdHFEfFhUBXlVREgtGBhZDGR8UFR1XQ1EeC0FVRUkfEwFRVU9VBV4"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})
end
end,
})

unl.worldBoss.building = true

unl.worldBoss.teamDropdown = unl.worldBoss.section:Dropdown({
Name = _d("YRBXXQ"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("YRBXXVFB"), _d("YRBXXVFC"), _d("YRBXXVFD"), _d("YRBXXVFE") },
Callback = function(xb)
if unl.worldBoss.building then
return
end

local yaf = type(xb) == _d("QRRUXBQ") and xb[1] or xb
local iztu = type(yaf) == _d("RgFEWR8X") and tonumber(yaf:match(_d("HVBSG1g"))) or nil

if iztu then
unl.worldBoss.team = iztu
unl.worldBoss.teamChosen = true
lb.bossTeams.save()
end

pcall(function()
unl.worldBoss.teamDropdown:UpdateName(_d("YRBXXVGS5JdV") .. (yaf or _d("YRBXXVFB")))
end)
end,
}, _d("QRBXXQ"))

pcall(function()
unl.worldBoss.teamDropdown:UpdateSelection(_d("YRBXXVE") .. tostring(unl.worldBoss.team))
unl.worldBoss.teamDropdown:UpdateName(_d("YRBXXVGS5JdVYlUQHUQ") .. tostring(unl.worldBoss.team))
end)

task.defer(function()
unl.worldBoss.building = false
end)

unl.misc = unl.misc or {}

unl.misc.expeditions = {
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
rewardPath = _d("dDZ0aF4VHEUQUlkFGQtbBhhaAh8K"),
module = nil,
action = nil,
section = nil,
paragraph = nil,
claimToggle = nil,
startToggle = nil,
dropdown = nil,
}

function unl.misc.expeditions.data()
local bo = unl.misc.expeditions

if bo.module ~= nil then
return bo.module or nil
end

local zwk, xm = pcall(function()
return require(xn.ModuleScripts.ExpeditionData)
end)

bo.module = zwk and xm or false

return bo.module or nil
end

function unl.misc.expeditions.tiers()
local kwv = unl.misc.expeditions.data()

return kwv and kwv.Tiers or {}
end

function unl.misc.expeditions.remote()
local sgg = unl.misc.expeditions

if sgg.action and sgg.action.Parent then
return sgg.action
end

sgg.action = zr(_d("cA1GVRUZEFwaWHESBA1aGw"), 3)

return sgg.action
end

function unl.misc.expeditions.clockText(en)
local fbu = unl.misc.expeditions.data()

if fbu and type(fbu.formatDuration) == _d("UwBYUwUZC1s") then
return fbu.formatDuration(en)
end

local bkk = math.max(0, math.floor((en or 0) / 60))

return tostring(bkk) .. _d("WA")
end

function unl.misc.expeditions.status(mmsm)
local ot = unl.misc.expeditions
local nd = ot.state
local lvoq = type(nd) == _d("QRRUXBQ") and type(nd.active) == _d("QRRUXBQ") and nd.active[mmsm] or nil

if type(lvoq) ~= _d("QRRUXBQ") then
return _d("VANXWR0RBlkQ"), nil
end

local sitp = (tonumber(lvoq.endsAt) or 0) - (os.time() + (ot.offset or 0))

if sitp <= 0 then
return _d("RxBXVAg"), sitp
end

return _d("RwBYXhgeAw"), sitp
end

function unl.misc.expeditions.candidates(qx)
local lecw = unl.misc.expeditions
local zw = lecw.data()
local xi = lecw.state
local udgd = zw and zw.ById and zw.ById[qx]
local vd = {}

if not (udgd and type(xi) == _d("QRRUXBQ") and type(xi.eligible) == _d("QRRUXBQ")) then
return vd
end

for pnbx, zobf in ipairs(xi.eligible) do
if type(zobf) == _d("QRRUXBQ") and zobf.cardId then
local aail = tonumber(zobf.rarity) or 0
local ib = (tonumber(zobf.count) or 0) - (tonumber(zobf.locked) or 0)

if aail >= (tonumber(udgd.minRarity) or 0) and ib > 0 then

table.insert(vd, { cardId = zobf.cardId, borderLevel = zobf.borderLevel, rarity = aail, count = ib })
end
end
end

table.sort(vd, function(vue, tnec)
if vue.rarity == tnec.rarity then
return tostring(vue.cardId) < tostring(tnec.cardId)
end

return vue.rarity < tnec.rarity
end)

return vd
end

function unl.misc.expeditions.cards(fwk, zwsu)
local vpdx = unl.misc.expeditions
local vfy = vpdx.data()
local lh = vfy and tonumber(vfy.CardsPerExpedition) or 4
local btdn = {}
local jue = vpdx.candidates(fwk)

zwsu = zwsu or {}

local function wqvc(gxfr, cifx)
local byof = tostring(gxfr.cardId) .. _d("Fg") .. tostring(gxfr.borderLevel)

while #btdn < lh and (zwsu[byof] or 0) < cifx do
zwsu[byof] = (zwsu[byof] or 0) + 1

table.insert(btdn, { cardId = gxfr.cardId, borderLevel = gxfr.borderLevel })
end
end

for uz, xkc in ipairs(jue) do
if #btdn >= lh then
break
end

if xkc.count > 1 then
wqvc(xkc, xkc.count - 1)
end
end

if #btdn < lh then
for pe, hb in ipairs(jue) do
if #btdn >= lh then
break
end

wqvc(hb, hb.count)
end
end

return btdn
end

function unl.misc.expeditions.available(pw)
local qzlu = unl.misc.expeditions
local nkr = qzlu.data()
local mjr = nkr and tonumber(nkr.CardsPerExpedition) or 4
local yf = 0

for chh, ed in ipairs(qzlu.candidates(pw)) do
yf = yf + ed.count

if yf >= mjr then
return mjr
end
end

return yf
end

function unl.misc.expeditions.text()
local uk = unl.misc.expeditions

if type(uk.state) ~= _d("QRRUXBQ") then
return _d("ZxBXVBgeAxUQTkAUFA1BHFleAl5KGw")
end

local inf = uk.data()
local mwbd = inf and tonumber(inf.CardsPerExpedition) or 4
local xx = {}

for daft, drzy in ipairs(uk.tiers()) do
local xoyu, gguc = uk.status(drzy.id)
local tq = tostring(drzy.name)

if uk.tiersWanted[drzy.id] then
tq = _d("1/WUEA") .. tq
end

if xoyu == _d("RwBYXhgeAw") then
tq = tq .. _d("PydTRAQCCkZVX15R") .. uk.clockText(gguc)
elseif xoyu == _d("RxBXVAg") then
tq = tq .. _d("PydTURUJREEaFlMdEQ1Y")
else
local lpcj = uk.available(drzy.id)
tq = tq .. _d("Pw") .. tostring(lpcj) .. _d("FRpQEA") .. tostring(mwbd) .. _d("FRZXQhUD")

if lpcj >= mwbd then
tq = tq .. _d("PzZXXlEDEFQHQg")
end
end

table.insert(xx, tq)
end

table.insert(xx, _d("cANTQghQAEAFWlkSERBQVV9DUQMBWwEWUhQWC0cQFlFREwVHERZJHgVEXRpaVFEfClBVWVZdUAVbERZfHxVEVhpGSVEfAhUUFlMQAgAVHEUQGhUUQVVUURIbREIdU0IUUBBdEBZEGBUWFRZXXlEDFFQHUxAYBEQYVVcQHR8KUFVVXwEJRFobWklRFwtQBhZfBAREQh1TXlEEDFBVQlkUAkRWFFheHgREVxAWVhgcCFARFkcYBAxaAEIQGARK"))

return table.concat(xx, _d("P38"))
end

function unl.misc.expeditions.request()
local knsy = unl.misc.expeditions
local hohf = knsy.remote()

if hohf then
pcall(function()
hohf:FireServer(_d("RxBHRRQDEA"))
end)
end

knsy.askedAt = os.clock()
end

function unl.misc.expeditions.claim()
local gjey = unl.misc.expeditions

if os.clock() < gjey.claimAt then
return false
end

local wzlp = false

for poum, ebw in ipairs(gjey.tiers()) do
if gjey.status(ebw.id) == _d("RxBXVAg") then
wzlp = true
break
end
end

if not wzlp then
return false
end

local gebe = gjey.remote()

if not gebe then
return false
end

pcall(function()
gebe:FireServer(_d("VhlXWRwxCFk"))
end)

gjey.claimAt = os.clock() + 3
gjey.askedAt = 0

return true
end

function unl.misc.expeditions.popup()
local jcd = ubll:FindFirstChild(_d("cA1GVRUZEFwaWHcEGQ"))

return jcd and jcd:FindFirstChild(_d("dhlXWRwgC0UARg")) or nil
end

function unl.misc.expeditions.closeRewards()
local dve = unl.misc.expeditions
local shg = dve.popup()

if not (shg and shg.Visible) then
return false
end

local rfh = shg:FindFirstChild(_d("eh50RQUEC1s"))

if rfh and type(firesignal) == _d("UwBYUwUZC1s") then
pcall(firesignal, rfh.Activated)
end

pcall(function()
shg.Visible = false
end)

return true
end

function unl.misc.expeditions.rewardsText()
local mmn = unl.misc.expeditions

if #mmn.rewardLog == 0 then
return _d("expCWBgeAxUWWlEYHQFRVU9VBV5EcANTQghQFFQMWUUFUBBdEBZDFAISUAcWQxQeAEZVWlEfFBcVHVNCFFATXAFeEBgEFxUBX1UDUAVbERZZBQNEVhpYRBQeEEZb")
end

local eod = {}

for krm, zmkr in ipairs(mmn.rewardLog) do
local ublf = {}
local dep = zmkr.items or {}

for cnp, coen in ipairs(dep) do
if cnp > 4 then
table.insert(ublf, _d("Hg") .. tostring(#dep - 4) .. _d("FRhZQhQ"))
break
end

local nxhp = coen.id or coen.itemId
local wcd = nxhp and op.ById[nxhp] or nil
local cebk = (wcd and wcd.name) or (coen.potions and _d("ZRpCWR4eFw")) or tostring(nxhp or _d("RxBBUQMU"))

table.insert(ublf, cebk .. _d("FQ0") .. tostring(coen.count or coen.max or coen.min or 1))
end

local coi = math.max(0, os.time() - (tonumber(zmkr.at) or os.time()))
local jbx

if coi < 60 then
jbx = tostring(coi) .. _d("RlVXVx4")
elseif coi < 3600 then
jbx = tostring(math.floor(coi / 60)) .. _d("WFVXVx4")
else
jbx = tostring(math.floor(coi / 3600)) .. _d("XVVXVx4")
end

table.insert(eod, tostring(zmkr.title) .. _d("FbeBEA") .. jbx)
table.insert(eod, table.concat(ublf, _d("GVU")))
end

return table.concat(eod, _d("Pw"))
end

function unl.misc.expeditions.saveRewards()
local vkc = unl.misc.expeditions

if type(writefile) ~= _d("UwBYUwUZC1s") then
return false
end

return pcall(function()
if type(makefolder) == _d("UwBYUwUZC1s") and type(isfolder) == _d("UwBYUwUZC1s") and not isfolder(_d("dDZ0aA")) then
makefolder(_d("dDZ0aA"))
end

writefile(vkc.rewardPath, game:GetService(_d("fQFCQCIVFkMcVVU")):JSONEncode({
rewards = vkc.rewardLog,
updatedAt = os.time(),
}))
end)
end

function unl.misc.expeditions.loadRewards()
local kbsy = unl.misc.expeditions

if type(readfile) ~= _d("UwBYUwUZC1s") or type(isfile) ~= _d("UwBYUwUZC1s") then
return false
end

local akve, ssj = pcall(function()
if not isfile(kbsy.rewardPath) then
return nil
end

return readfile(kbsy.rewardPath)
end)

if not akve or type(ssj) ~= _d("RgFEWR8X") or #ssj == 0 then
return false
end

local wvre

if not pcall(function()
wvre = game:GetService(_d("fQFCQCIVFkMcVVU")):JSONDecode(ssj)
end) then
return false
end

if type(wvre) ~= _d("QRRUXBQ") or type(wvre.rewards) ~= _d("QRRUXBQ") then
return false
end

kbsy.rewardLog = {}

for skns, elai in ipairs(wvre.rewards) do
if type(elai) == _d("QRRUXBQ") and type(elai.items) == _d("QRRUXBQ") then
table.insert(kbsy.rewardLog, {
at = tonumber(elai.at) or os.time(),
title = tostring(elai.title or _d("cA1GVRUZEFwaWA")),
items = elai.items,
})
end
end

return #kbsy.rewardLog > 0
end

function unl.misc.expeditions.start(odm, od)
local kzou = unl.misc.expeditions

if kzou.status(odm) ~= _d("VANXWR0RBlkQ") then
return false
end

if os.clock() < (kzou.startedAt[odm] or 0) then
return false
end

local fgit = kzou.remote()

if not fgit then
return false
end

local gm = kzou.cards(odm, od)
local cz = kzou.data()
local gwaz = cz and tonumber(cz.CardsPerExpedition) or 4

if #gm < gwaz then
return false
end

local kmw = {}

for mdd, ax in ipairs(gm) do
kmw[mdd] = { cardId = ax.cardId, borderLevel = ax.borderLevel }
end

pcall(function()
fgit:FireServer(_d("RgFXQgU"), odm, kmw)
end)

kzou.startedAt[odm] = os.clock() + 6
kzou.askedAt = 0

return true
end

unl.misc.icon = function()
local zyd = gethui()

for dwwt, vxu in ipairs(zyd:QueryDescendants(_d("fBhXVxQ8BVcQWg"))) do
if vxu.Name == _d("YRRUeRwRA1A") then
local qkyq = vxu.Parent
local xk = qkyq and qkyq:FindFirstChild(_d("YRRUYwYZEFYdU0I/EQlQ"))

if xk and xk.Text == _d("eBxFUxQcCFQbU18EAw") then
if vxu:GetAttribute(_d("dDZ0aDwZF1Y8VV8f")) then
return true
end

vxu:SetAttribute(_d("dDZ0aDwZF1Y8VV8f"), true)
vxu.Image = _d("")
vxu.BackgroundTransparency = 1

local function whm(tjpu, mg, qi, rzhn, el, kks, xks)
local xz = Instance.new(tjpu)

xz.Size = UDim2.fromOffset(el, kks)
xz.Position = UDim2.fromOffset(qi, rzhn)
xz.BackgroundColor3 = mg
xz.BorderSizePixel = 0
xz.Parent = vxu

if xks then
local fldj = Instance.new(_d("YDx1XwMeAUc"))
fldj.CornerRadius = UDim.new(0, xks)
fldj.Parent = xz
end

return xz
end

local wsv = Color3.fromRGB(168, 170, 176)

local function jlw(qg, tzx, ffsk, czb, bcu)
local uae = whm(_d("cwdXXRQ"), wsv, qg, tzx, ffsk, czb, bcu)

uae.BackgroundTransparency = 1

local opr = Instance.new(_d("YDxlRAMfD1A"))

opr.Color = wsv
opr.Thickness = 1.4
opr.LineJoinMode = Enum.LineJoinMode.Round
opr.Parent = uae

return uae
end

jlw(3, 1, 6, 4, 1)
jlw(1, 4, 16, 12, 2)

local ixl = whm(_d("cwdXXRQ"), wsv, 3, 8, 5, 5)

ixl.BackgroundTransparency = 1
ixl.ClipsDescendants = true

local uvn = whm(_d("cwdXXRQ"), wsv, 0, 1, 5, 5)

uvn.Rotation = 45
uvn.Parent = ixl

whm(_d("cwdXXRQ"), wsv, 9, 9, 4, 4, 4)
whm(_d("cwdXXRQ"), wsv, 13, 10, 3, 3, 1)

return true
end
end
end

return false
end

unl.misc.tab = mxep:Tab({
Name = _d("eBxFUxQcCFQbU18EAw"),

Image = _d(""),
})

task.defer(function()
for yzm = 1, 20 do
if unl.misc.icon() then
break
end

task.wait(0.25)
end
end)

local eiw = {
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
lastText = _d("expCWBgeAxUFWUABFQAVDFNEXw"),
tab = nil,
weatherSection = nil,
giveUpSection = nil,
weatherParagraph = nil,
giveUpParagraph = nil,
weatherToggle = nil,
manualSection = nil,
giveUpToggle = nil,
}

getgenv().ACBXPop = eiw

function eiw.options()
local tt = {}

for xhr, jjbv in pairs(op.ById) do
if jjbv.type == _d("RRpCWR4e") and type(jjbv.name) == _d("RgFEWR8X") then
tt[#tt + 1] = jjbv.name
end
end

table.sort(tt)

return tt
end

function eiw.idOf(regb)
for aecx, zha in pairs(op.ById) do
if zha.type == _d("RRpCWR4e") and zha.name == regb then
return aecx
end
end

return nil
end

function eiw.count(ulwf)
local xlq = cl.balances

return tonumber(xlq and xlq[ulwf]) or 0
end

nhka(xbku.UseItemResult.OnClientEvent, function(ewm)
eiw.lastResult = tostring(ewm)
eiw.lastResultAt = os.clock()
end)

function eiw.pop(kipu, mr, bw)
local bha = os.clock()
local lnvk = {}

for leu, xpjh in pairs(kipu) do
if xpjh then
local ece = eiw.idOf(leu)

if ece then
local fust = eiw.count(ece)

if fust <= 0 then
lnvk[#lnvk + 1] = leu .. _d("FVgWXh4eARUZU1YF")
else
local bdo = math.clamp(math.floor(tonumber(mr) or 1), 1, fust)

pcall(function()
xbku.UseItem:FireServer(ece, bdo)
end)

lnvk[#lnvk + 1] = leu .. _d("FQ0") .. bdo
task.wait(0.3)
end
end
end
end

if #lnvk == 0 then
eiw.lastText = bw .. _d("FVgWXh4EDFwbURACFQhQFkJVFQ")

return false
end

task.wait(0.4)

eiw.lastText = bw .. _d("FVgW") .. table.concat(lnvk, _d("GVU"))

if (eiw.lastResultAt or 0) >= bha and eiw.lastResult then
eiw.lastText = eiw.lastText .. _d("FV0") .. eiw.lastResult .. _d("HA")
end

pcall(function()
zpzc:Notify({
Title = _d("ZRpG"),
Description = eiw.lastText,
Lifetime = 5,
})
end)

return true
end

function eiw.status()
local flm = gtav.weatherWanted(eiw.weathers)
local hva = gtav.weatherNow or _d("QBtdXh4HCg")
local riw = {
_d("YhBXRBkVFg9V") .. hva .. (flm and (_d("FV1GXwEADVsSDBA") .. flm .. _d("HA")) or _d("")),
}

table.insert(riw, _d("eRRFREtQ") .. eiw.lastText)

return table.concat(riw, _d("Pw"))
end

function eiw.giveUpStatus()
if eiw.armedAt > 0 then
return _d("dAdbVRVQSRUCV1kFGQpSVVBfA1AQXRAWQgQeREEaFlUfFEo/OVdDBUpE") .. eiw.lastText
end

return _d("fBFaVV96KFQGQgpR") .. eiw.lastText
end

eiw.tab = mxep:Tab({
Name = _d("ZRpG"),

Image = _d(""),
})

eiw.icon = function()
local yyx = gethui()

for vzd, bi in ipairs(yyx:QueryDescendants(_d("fBhXVxQ8BVcQWg"))) do
if bi.Name == _d("YRRUeRwRA1A") then
local honq = bi.Parent
local ll = honq and honq:FindFirstChild(_d("YRRUYwYZEFYdU0I/EQlQ"))

if ll and ll.Text == _d("ZRpG") then
if bi:GetAttribute(_d("dDZ0aCEfFHwWWV4")) then
return true
end

bi:SetAttribute(_d("dDZ0aCEfFHwWWV4"), true)
bi.Image = _d("")
bi.BackgroundTransparency = 1

local hbj = Color3.fromRGB(168, 170, 176)

local function fgbb(esj, kimo, lhz, wcs, foy, clm)
local ymyx = Instance.new(esj)

ymyx.Size = UDim2.fromOffset(wcs, foy)
ymyx.Position = UDim2.fromOffset(kimo, lhz)
ymyx.BackgroundColor3 = hbj
ymyx.BorderSizePixel = 0
ymyx.Parent = bi

if clm then
local nho = Instance.new(_d("YDx1XwMeAUc"))
nho.CornerRadius = UDim.new(0, clm)
nho.Parent = ymyx
end

return ymyx
end

local function xha(rj, ired, chnh, bvv, regn)
local dhk = fgbb(_d("cwdXXRQ"), rj, ired, chnh, bvv, regn)

dhk.BackgroundTransparency = 1

local av = Instance.new(_d("YDxlRAMfD1A"))

av.Color = hbj
av.Thickness = 1.3
av.LineJoinMode = Enum.LineJoinMode.Round
av.Parent = dhk

return dhk
end

xha(1, 6, 16, 12, 6)
xha(6, 3, 6, 4, 1)
fgbb(_d("cwdXXRQ"), 5, 1, 8, 2, 1)
fgbb(_d("cwdXXRQ"), 7, 0, 4, 1, 0)

fgbb(_d("cwdXXRQ"), 4, 11, 10, 1, 0)
fgbb(_d("cwdXXRQ"), 13, 3, 2, 2, 2)
fgbb(_d("cwdXXRQ"), 15, 6, 2, 2, 2)

return true
end
end
end

return false
end

task.defer(function()
for ajt = 1, 20 do
if eiw.icon() then
break
end

task.wait(0.25)
end
end)

eiw.weatherSection = eiw.tab:Section({
Side = _d("eRBQRA"),
})

eiw.weatherSection:Header({
Name = _d("ZRpCWR4eFxUaWBAGFQVBHVNCUYD7kt8"),
})

eiw.weatherToggle = eiw.weatherSection:Toggle({
Name = _d("ZRpGEB4eREEdU0MUUBNQFEJYFAIX"),
Default = false,
Callback = function(hzqz)
if hzqz and (next(eiw.weatherPotions) == nil or next(eiw.weathers) == nil) then
eiw.onWeather = false

pcall(function()
eiw.weatherToggle:UpdateState(false)
end)

zpzc:Dialog({
Title = _d("ZRpG"),
Description = _d("YRxVW1EREBUZU1ECBERaG1MQBhUFQR1TQlERClFVWV4UUBRaAV9fH1ACXAdFRFFdRGUaRhAfFQFRBhZSHgQMFQFZEBoeC0JVQVgQBERBGhZUAxkKXlVXXhVQE10QWB4"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})

return
end

eiw.onWeather = hzqz

if hzqz then
eiw.weatherSpent = nil
end
end,
}, _d("RRpGbx4eO0EdU0MULxNQFEJYFAIX"))

eiw.weatherSection:Dropdown({
Name = _d("YhBXRBkVFkY"),
Multi = true,
Required = false,
Options = { _d("YQxGWB4fCg"), _d("dxlfSgsRFlE"), _d("eRxRWAUeDVsS"), _d("YhxYVAIEC0cY"), _d("Zh1XQhgeA1Qb"), _d("ZhxYVwQcBUccQkk"), _d("eBpYUQMTDBUxWV0QGQo"), _d("YxpfVA"), _d("eBRSVVEZChU9U1EHFQo"), _d("eBRYVxA") },
Callback = function(tnwj)
eiw.weathers = {}

if type(tnwj) == _d("QRRUXBQ") then
for xe, iux in pairs(tnwj) do
if iux then
eiw.weathers[xe] = true
end
end
end
end,
}, _d("QhBXRBkVFkY"))

eiw.weatherSection:Dropdown({
Name = _d("ZRpCWR4eFw"),
Multi = true,
Required = false,
Options = eiw.options(),
Callback = function(hsha)
eiw.weatherPotions = {}

if type(hsha) == _d("QRRUXBQ") then
for noq, tihr in pairs(hsha) do
if tihr then
eiw.weatherPotions[noq] = true
end
end
end
end,
}, _d("RRpCWR4eFw"))

eiw.weatherSection:Input({
Name = _d("dBhZRR8E"),
Placeholder = _d("BA"),
AcceptedCharacters = _d("ewBbVQMZBw"),
Callback = function(vuwy)
local jbsn = math.floor(tonumber(vuwy) or 1)

eiw.weatherAmount = math.clamp(jbsn, 1, 50)
end,
}, _d("VBhZRR8E"))

eiw.weatherParagraph = eiw.weatherSection:Paragraph({
Header = _d("ZgFXRAQD"),
Body = eiw.status(),
})

eiw.manualSection = eiw.tab:Section({
Side = _d("eRBQRA"),
})

eiw.manualSection:Header({
Name = _d("YAZTEAEfEFwaWENRHgtCVcav1to"),
})

eiw.manualSection:Dropdown({
Name = _d("ZRpCWR4eFw"),
Multi = true,
Required = false,
Options = eiw.options(),
Callback = function(ksjl)
eiw.manualPotions = {}

if type(ksjl) == _d("QRRUXBQ") then
for ut, cto in pairs(ksjl) do
if cto then
eiw.manualPotions[ut] = true
end
end
end
end,
}, _d("WBRYRRAcO0UaQlkeHhc"))

eiw.manualSection:Input({
Name = _d("dBhZRR8E"),
Placeholder = _d("BA"),
AcceptedCharacters = _d("ewBbVQMZBw"),
Callback = function(pux)
local lowq = math.floor(tonumber(pux) or 1)

eiw.manualAmount = math.clamp(lowq, 1, 50)
end,
}, _d("WBRYRRAcO1QYWUUfBA"))

eiw.manualSection:Button({
Name = _d("YAZTEAEfEFwaWEM"),
Callback = function()
if next(eiw.manualPotions) == nil then
zpzc:Notify({
Title = _d("YAZTEAEfEFwaWEM"),
Description = _d("ZRxVW1EREBUZU1ECBERaG1MQAR8QXBpYEBgeREEdUxAVAgtFEVlHH1ACXAdFRF8"),
Lifetime = 6,
})

return
end

task.spawn(function()
eiw.pop(eiw.manualPotions, eiw.manualAmount, _d("eBRYRRAc"))
end)
end,
})

eiw.giveUpSection = eiw.tab:Section({
Side = _d("ZxxRWAU"),
})

eiw.giveUpSection:Header({
Name = _d("dBNCVQNQA1wDUxAEAA"),
})

eiw.giveUpToggle = eiw.giveUpSection:Toggle({
Name = _d("ZRpGEBAWEFAHFlFRBAtCEEQQFhkSUFVDQA"),
Default = false,
Callback = function(ufof)
if ufof and next(eiw.giveUpPotions) == nil then
eiw.afterGiveUp = false

pcall(function()
eiw.giveUpToggle:UpdateState(false)
end)

zpzc:Dialog({
Title = _d("ZRpG"),
Description = _d("YRxVW1EREBUZU1ECBERaG1MQAR8QXBpYEBcZFkYBFh1RBAxQB1MQGANEWxpCWBgeAxUBWRAVAg1bHhZRFwQBR1VCWBRQFkAbFl8FGAFHAl9DFF4"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})

return
end

eiw.afterGiveUp = ufof
end,
}, _d("RRpGbxAWEFAHaVEuBAtCEERvFhkSUCpDQA"))

eiw.giveUpSection:Dropdown({
Name = _d("ZRpCWR4eFw"),
Multi = true,
Required = false,
Options = eiw.options(),
Callback = function(qz)
eiw.giveUpPotions = {}

if type(qz) == _d("QRRUXBQ") then
for tzj, twb in pairs(qz) do
if twb then
eiw.giveUpPotions[tzj] = true
end
end
end
end,
}, _d("RRpCWR4eF2pH"))

eiw.giveUpSection:Input({
Name = _d("dBhZRR8E"),
Placeholder = _d("BA"),
AcceptedCharacters = _d("ewBbVQMZBw"),
Callback = function(avd)
local wsc = math.floor(tonumber(avd) or 1)

eiw.giveUpAmount = math.clamp(wsc, 1, 50)
end,
}, _d("VBhZRR8EOwc"))

eiw.giveUpParagraph = eiw.giveUpSection:Paragraph({
Header = _d("ZgFXRAQD"),
Body = eiw.giveUpStatus(),
})

local rqc = {
autoSave = false,
autoRoll = true,
autoQuickRoll = true,

loading = false,
selected = nil,
lastText = _d("expCWBgeAxUCRFkFBAFbVU9VBVBJFQVfUxpQBRUGV0YUUAJcGVMQExUIWgIY"),
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
theme = _d("YxpfVA"),
accent = nil,
savesAt = 0,
autoSaveAt = 0,
themeAt = 0,
capAt = 0,
scaleAnchor = nil,
statusAt = 0,
knownSaves = _d(""),
}

getgenv().ACBXSettings = rqc

rqc.presets = {
Void = { panel = Color3.fromRGB(15, 15, 15), element = Color3.fromRGB(0, 0, 0), accent = Color3.fromRGB(168, 170, 176) },
Ocean = { panel = Color3.fromRGB(6, 16, 26), element = Color3.fromRGB(8, 26, 40), accent = Color3.fromRGB(77, 166, 255) },
Ember = { panel = Color3.fromRGB(26, 10, 8), element = Color3.fromRGB(36, 16, 10), accent = Color3.fromRGB(255, 122, 69) },
Sakura = { panel = Color3.fromRGB(26, 9, 18), element = Color3.fromRGB(38, 14, 26), accent = Color3.fromRGB(255, 125, 177) },
Mint = { panel = Color3.fromRGB(7, 20, 14), element = Color3.fromRGB(9, 30, 22), accent = Color3.fromRGB(77, 227, 160) },
Graphite = { panel = Color3.fromRGB(20, 20, 22), element = Color3.fromRGB(30, 30, 33), accent = Color3.fromRGB(200, 200, 206) },
}

rqc.themeOrder = { _d("YxpfVA"), _d("ehZTUR8"), _d("cBhUVQM"), _d("ZhRdRQMR"), _d("eBxYRA"), _d("cgdXQBkZEFA") }

local nuik = _d("dDZ0ECMVBlwHQlheAwFBAV9eFgM")

function rqc.saves()
local dh, vf = pcall(function()
return peh:RefreshConfigList()
end)

if dh and type(vf) == _d("QRRUXBQ") then
table.sort(vf)
return vf
end

return {}
end

function rqc.autoLoadName()
local nnb, xaeh = pcall(function()
if isfile and isfile(nuik .. _d("GhRDRB4cC1QRGEQJBA")) then
return readfile(nuik .. _d("GhRDRB4cC1QRGEQJBA"))
end
end)

if nnb and type(xaeh) == _d("RgFEWR8X") then
xaeh = xaeh:gsub(_d("a1BFGw"), _d("")):gsub(_d("EAYdFA"), _d(""))

if xaeh ~= _d("") then
return xaeh
end
end

return nil
end

function rqc.setAutoLoad(pvqg)

return (pcall(function()
writefile(nuik .. _d("GhRDRB4cC1QRGEQJBA"), pvqg or _d(""))
end))
end

function rqc.delete(mko)
if type(mko) ~= _d("RgFEWR8X") or mko == _d("") then
return false, _d("ZRxVW1ERREYUQFVRFg1ZEBZWGAIXQVs")
end

local iw = nuik .. _d("Gg") .. mko .. _d("Gx9FXx8")
local ihfx = false

pcall(function()
ihfx = isfile ~= nil and isfile(iw) == true
end)

if not ihfx then
return false, _d("YR1TQhRQDUZVWF9RFg1ZEBZTEBwIUBEW") .. mko .. _d("Gw")
end

local rphd, ybzc = pcall(function()
delfile(iw)
end)

if not rphd then
return false, tostring(ybzc)
end

if rqc.autoLoadName() == mko then
rqc.setAutoLoad(_d(""))
end

if rqc.selected == mko then
rqc.selected = nil
rqc.selectionShown = nil
end

rqc.knownSaves = nil
rqc.savesAt = 0

return true
end

function rqc.save(lqxu)
if type(lqxu) ~= _d("RgFEWR8X") or lqxu:gsub(_d("EAY"), _d("")) == _d("") then
return false, _d("chxAVVEEDFBVRVEHFURUVVhRHBVEUxxEQwVe")
end

local rvog, qws, wcjz = pcall(function()
return peh:SaveConfig(lqxu)
end)

if not rvog then
return false, tostring(qws)
end

if qws ~= true then
return false, tostring(wcjz or _d("QR1TEBcZCFBVVV8EHAAVG1lEURIBFQJEWQUEAVs"))
end

return true
end

function rqc.replayOff(ims)
local su, mc = pcall(function()
return readfile(nuik .. _d("Gg") .. ims .. _d("Gx9FXx8"))
end)

if not su or type(mc) ~= _d("RgFEWR8X") then
return
end

local grk
su, grk = pcall(function()
return game:GetService(_d("fQFCQCIVFkMcVVU")):JSONDecode(mc)
end)

if not su or type(grk) ~= _d("QRRUXBQ") or type(grk.objects) ~= _d("QRRUXBQ") then
return
end

for gxn, emhg in ipairs(grk.objects) do
if emhg.type == _d("YRpRVx0V") and emhg.state == false and emhg.flag then
local hl = peh.Options[emhg.flag]

if hl then
pcall(function()
hl:UpdateState(false)
end)
end
end
end
end

function rqc.load(xvw)
if type(xvw) ~= _d("RgFEWR8X") or xvw == _d("") then
return false, _d("ZRxVW1ERREYUQFVRFg1ZEBZWGAIXQVs")
end

rqc.loading = true
fmyc = true

local ldkw, rsb, ejqa = pcall(function()
return peh:LoadConfig(xvw)
end)

if not ldkw then
rqc.loading = false
fmyc = false

return false, tostring(rsb)
end

if rsb ~= true then
rqc.loading = false
fmyc = false

return false, tostring(ejqa or _d("QR1TEBcZCFBVVV8EHAAVG1lEURIBFQdTURU"))
end

task.wait(0.25)
rqc.replayOff(xvw)
rqc.loading = false
fmyc = false

return true
end

rqc.uiPath = _d("dDZ0aF4FDRsfRV8f")

function rqc.saveUi()
if type(writefile) ~= _d("UwBYUwUZC1s") then
return false
end

if rqc.restoring then
return false
end

local kn = rqc.accent

local hbv = {
theme = rqc.theme,
scale = tonumber(string.format(_d("EFsEVg"), rqc.scaleTarget or 1)),
accent = kn and string.format(_d("EBEaFRVcQVE"),
math.floor(kn.R * 255 + 0.5),
math.floor(kn.G * 255 + 0.5),
math.floor(kn.B * 255 + 0.5)) or nil,
}

return pcall(function()
if type(makefolder) == _d("UwBYUwUZC1s") and type(isfolder) == _d("UwBYUwUZC1s") and not isfolder(_d("dDZ0aA")) then
makefolder(_d("dDZ0aA"))
end

writefile(rqc.uiPath, game:GetService(_d("fQFCQCIVFkMcVVU")):JSONEncode(hbv))
end)
end

function rqc.loadUi()
if type(readfile) ~= _d("UwBYUwUZC1s") or type(isfile) ~= _d("UwBYUwUZC1s") then
return nil
end

local wbtw, zyaa = pcall(function()
if not isfile(rqc.uiPath) then
return nil
end

return readfile(rqc.uiPath)
end)

if not wbtw or type(zyaa) ~= _d("RgFEWR8X") or zyaa == _d("") then
return nil
end

local eik
wbtw, eik = pcall(function()
return game:GetService(_d("fQFCQCIVFkMcVVU")):JSONDecode(zyaa)
end)

if not wbtw or type(eik) ~= _d("QRRUXBQ") then
return nil
end

rqc.restoring = true

if type(eik.theme) == _d("RgFEWR8X") and rqc.presets[eik.theme] then
rqc.theme = eik.theme

pcall(function()
rqc.themeDropdown:UpdateSelection(eik.theme)
rqc.themeDropdown:UpdateName(_d("YR1TXRRKRA") .. eik.theme)
end)
end

local ecm, sdu, ts = tostring(eik.accent or _d("")):match(_d("a10TVFpZSB1QUhtYXEwQER0ZVQ"))

if ecm then
local ie = Color3.fromRGB(tonumber(ecm), tonumber(sdu), tonumber(ts))

rqc.accent = ie

pcall(function()
rqc.accentPicker:SetColor(ie)
end)
else
rqc.accent = nil

local amxv = rqc.presets[rqc.theme] or rqc.presets.Void

pcall(function()
rqc.accentPicker:SetColor(amxv.accent)
end)
end

local dsh = tonumber(eik.scale)

if dsh then
dsh = math.clamp(dsh, 0.5, rqc.scaleCeiling())

rqc.scaleTarget = dsh
rqc.scaleAnchor = nil

pcall(function()
rqc.scaleSlider:UpdateValue(dsh)
end)
end

rqc.applyTheme()

rqc.restoring = false
rqc.saveUi()

return eik
end

rqc.prioPath = _d("dDZ0aF4AFlwaRFkFCUpfBlle")

function rqc.groupAt(xed)
for jo, orko in ipairs(cq.prioGroups) do
if orko.rank == xed then
return orko
end
end
end

function rqc.paintPriority()
if rqc.prioBusy then
return
end

rqc.prioBusy = true

for cew = 1, #cq.prioGroups do
local lpuz = rqc.prioRows and rqc.prioRows[cew]
local ms = rqc.groupAt(cew)

if lpuz and ms then
pcall(function()
lpuz:UpdateSelection(ms.label)
end)
end
end

rqc.prioBusy = false
end

function rqc.setPriority(omm, oz)
if rqc.prioBusy or rqc.prioBuilding then
return
end

local ior

for pdgv, oer in ipairs(cq.prioGroups) do
if oer.id == omm then
ior = oer.rank
oer.rank = oz
end
end

if ior and ior ~= oz then
for cetz, estp in ipairs(cq.prioGroups) do
if estp.id ~= omm and estp.rank == oz then
estp.rank = ior
end
end
end

rqc.paintPriority()
rqc.savePriority()
end

function rqc.savePriority()
if type(writefile) ~= _d("UwBYUwUZC1s") then
return false
end

local jl = {}

for ylk, idkb in ipairs(cq.prioGroups) do
jl[idkb.id] = idkb.rank
end

return pcall(function()
if type(makefolder) == _d("UwBYUwUZC1s") and type(isfolder) == _d("UwBYUwUZC1s") and not isfolder(_d("dDZ0aA")) then
makefolder(_d("dDZ0aA"))
end

writefile(rqc.prioPath, game:GetService(_d("fQFCQCIVFkMcVVU")):JSONEncode({ ranks = jl }))
end)
end

function rqc.loadPriority()
if type(readfile) ~= _d("UwBYUwUZC1s") or type(isfile) ~= _d("UwBYUwUZC1s") then
return nil
end

local bdh, rkjy = pcall(function()
if not isfile(rqc.prioPath) then
return nil
end

return readfile(rqc.prioPath)
end)

if not bdh or type(rkjy) ~= _d("RgFEWR8X") or rkjy == _d("") then
return nil
end

local xoal

bdh, xoal = pcall(function()
return game:GetService(_d("fQFCQCIVFkMcVVU")):JSONDecode(rkjy)
end)

if not bdh or type(xoal) ~= _d("QRRUXBQ") or type(xoal.ranks) ~= _d("QRRUXBQ") then
return nil
end

return xoal.ranks
end

function rqc.restorePriority()
local jaky = rqc.loadPriority()

if not jaky then
return
end

local whk = {}
local vau = {}

for io, zqbp in ipairs(cq.prioGroups) do
local lfkp = tonumber(jaky[zqbp.id])

if lfkp then
whk[#whk + 1] = { group = zqbp, rank = lfkp }
vau[zqbp.id] = true
end
end

table.sort(whk, function(sba, at)
return sba.rank < at.rank
end)

for qbq, vm in ipairs(whk) do
vm.group.rank = qbq
end

local heno = #whk + 1

for yruv, wvdv in ipairs(cq.prioGroups) do
if not vau[wvdv.id] then
wvdv.rank = heno
heno = heno + 1
end
end

rqc.paintPriority()
end

function rqc.colourKey(wgnc)
return math.floor(wgnc.R * 255) .. _d("GQ") .. math.floor(wgnc.G * 255) .. _d("GQ") .. math.floor(wgnc.B * 255)
end

function rqc.guiRoot()

if not vgo() then
return nil
end

if rqc.root and rqc.root.Parent then
return rqc.root
end

local tyq = gethui and gethui() or game:GetService(_d("dhpEVTYFDQ"))

for qt, ii in ipairs(tyq:GetChildren()) do
if ii:IsA(_d("ZhZEVRQeI0Ac")) and ii:FindFirstChild(_d("dxRFVQ")) then
rqc.root = ii.Base

return rqc.root
end
end

return nil
end

function rqc.applyTheme()
local zyfg = rqc.guiRoot()
local wja = rqc.presets[rqc.theme] or rqc.presets.Void

if not zyfg then
return false
end

local te = {
panel = wja.panel,
element = wja.element,
accent = rqc.accent or wja.accent,
}

local ltay = {}

for diur, qtz in pairs(rqc.presets) do
ltay[rqc.colourKey(qtz.panel)] = _d("RRRYVR0")
ltay[rqc.colourKey(qtz.element)] = _d("UBlTXRQeEA")
ltay[rqc.colourKey(qtz.accent)] = _d("VBZVVR8E")
end

ltay[rqc.colourKey(te.accent)] = _d("VBZVVR8E")

if ltay[rqc.colourKey(zyfg.BackgroundColor3)] == _d("RRRYVR0") then
zyfg.BackgroundColor3 = te.panel
end

for tb, yonu in ipairs(zyfg:GetDescendants()) do
if yonu:IsA(_d("cgBffxMaAVYB")) then
local dbip = ltay[rqc.colourKey(yonu.BackgroundColor3)]

if dbip then
yonu.BackgroundColor3 = te[dbip]
end
elseif yonu:IsA(_d("YDxlRAMfD1A")) then
if ltay[rqc.colourKey(yonu.Color)] == _d("VBZVVR8E") then
yonu.Color = te.accent
end
end

if yonu:IsA(_d("fBhXVxQ8BVcQWg")) and yonu.Name == _d("YRRUeRwRA1A") and yonu.Image ~= _d("") then
yonu.ImageColor3 = te.accent
yonu.ImageTransparency = 0
yonu:SetAttribute(_d("dDZ0aCURBnQWVVUfBA"), te.accent)

if not yonu:GetAttribute(_d("dDZ0aCURBmEcWEQ")) then
yonu:SetAttribute(_d("dDZ0aCURBmEcWEQ"), true)

local function gpe()
local topo = yonu:GetAttribute(_d("dDZ0aCURBnQWVVUfBA"))

if topo and yonu.ImageColor3 ~= topo then
yonu.ImageColor3 = topo
end

if yonu.ImageTransparency ~= 0 then
yonu.ImageTransparency = 0
end
end

nhka(yonu:GetPropertyChangedSignal(_d("fBhXVxQkFlQbRUAQAgFbFk8")), gpe)
nhka(yonu:GetPropertyChangedSignal(_d("fBhXVxQzC1kaRAM")), gpe)
end
end
end

return true
end

local xop = mxep:Tab({
Name = _d("eBRG"),
Image = _d("RxdOUQIDAUEcUgpeX1IFRgcARkVdBkQ"),
})

local lf = {
holdFor = 25,
fly = {
on = false,
speed = 55,
connection = nil,
},
islands = {
{ name = _d("eRpUUgg"), kind = _d("QhpEXBU"), arg = _d("WRpUUgg") },
{ name = _d("dBdXXhUfClARFnkCHAVbEQ"), kind = _d("XAZaUR8U"), arg = _d("VBdXXhUfClARaVkCHAVbEQ") },
{ name = _d("YQJfXlEyAVQWXlUC"), kind = _d("XAZaUR8U"), arg = _d("QQJfXi4SAVQWXlUC"), note = _d("FSFeVVEDAUcDU0JRFBZaBUUQGAREQBtCWR1QHVoAFlgQBgEVBldZHRUAFQFeVQMVSg") },
{ name = _d("YhxYVBwZCFlVf0MdFQ"), kind = _d("XAZaUR8U"), arg = _d("QhxYVBwZCFkqX0MdFQ"), note = _d("FSFeVVEDAUcDU0JRFBZaBUUQGAREQBtCWR1QHVoAFlgQBgEVBldZHRUAFQFeVQMVSg") },
},
npcs = {
{ name = _d("dhREVFE9AUcSUw"), npc = _d("UwBFVS4eFFY"), attr = _d("eyV1eRU"), at = Vector3.new(-272, 33, -40347) },
{ name = _d("cA1GVRUZEFwaWEM"), npc = _d("cA1GVRUZEFwaWH4hMw"), attr = _d("cA1GVRUZEFwaWH4hMw"), at = Vector3.new(-347, 35, -40361) },
{ name = _d("cRBVXx8DEEcAVUQ"), npc = _d("URBVXx8DEEcAVUQuHhRW"), attr = _d("eyV1eRU"), at = Vector3.new(-264, 33, -40331) },
{ name = _d("dgdXVgU"), npc = _d("VgdXVgUvCkUW"), attr = _d("eyV1eRU"), at = Vector3.new(-330, 33, -40277) },
{ name = _d("Zh5fXB1QMEcQUw"), npc = _d("Zh5fXB0kFlAQeGAy"), attr = _d("Zh5fXB0kFlAQeGAy"), at = Vector3.new(-290, 32, -40283) },
{ name = _d("dhREVFE5ClEQTg"), npc = _d("VhREVC4ZClEQTm8fAAc"), attr = _d("eyV1eRU"), at = Vector3.new(-313, 33, -40282) },
{ name = _d("ZRRVW1E9AUcWXlEfBA"), npc = _d("RRRVWy4dAUcWXlEfBA"), attr = _d("eyV1eRU"), at = Vector3.new(-301, 33, -40270) },
{ name = _d("cQBYVxQfCg"), npc = _d("UQBYVxQfCmobRlM"), attr = _d("eyV1eRU"), at = Vector3.new(-339, 41, -40399) },
{ name = _d("cxxFWBQCCVQb"), npc = _d("cxxFWBQCCVQbeGAy"), attr = _d("cxxFWBQCCVQbeGAy"), at = Vector3.new(-493, 14, -40262) },
{ name = _d("ZhBVQhQERHQbUVwUAg"), npc = _d("ZhBVQhQEJVsSWlUDPjR2"), attr = _d("ZhBVQhQEJVsSWlUDPjR2"), at = Vector3.new(-209, 34, -40382) },
{ name = _d("fRRaXB4HAVAbFmMZHxQ"), npc = _d("ZQBbQBoZChU4U0ISGAVbAQ"), at = Vector3.new(-29989, 78, -30259) },
{ name = _d("ZhRVQhgWDVYQFnEdBAVH"), landmark = _d("ZhRVQhgWDVYQd1wFERY"), island = _d("VBdXXhUfClARaVkCHAVbEQ"), at = Vector3.new(-3548, 11, -40462) },
{ name = _d("fRREVBIfFlBVYl8GFRY"), npc = _d("fRREVBIfFlAhWUcUAg"), island = _d("VBdXXhUfClARaVkCHAVbEQ"), at = Vector3.new(-3795, 25, -40250) },
{ name = _d("fAZaUR8URHMcRVgUAglUGw"), npc = _d("fAZaUR8UIlwGXlUDHQVbO2Zz"), attr = _d("fAZaUR8UIlwGXlUDHQVbO2Zz"), island = _d("VBdXXhUfClARaVkCHAVbEQ"), at = Vector3.new(-3825, 23, -40260) },
{ name = _d("cRxRVxQC"), npc = _d("cRxRVxQCKmU2"), attr = _d("cRxRVxQCKmU2"), island = _d("QQJfXi4SAVQWXlUC"), at = Vector3.new(-5998, 26, -40565) },
{ name = _d("ZhBVQhQERHEcUVcUAg"), npc = _d("ZhBVQhQEIFwSUVUDPjR2"), attr = _d("ZhBVQhQEIFwSUVUDPjR2"), island = _d("QhxYVBwZCFkqX0MdFQ"), at = Vector3.new(-7740, 17, -40343) },
},
}

function lf.hold()
htn.tpHoldUntil = os.clock() + lf.holdFor

htn.deepPhase = _d("XBFaVQ")
htn.deepStageAt = 0
htn.phase = _d("XBFaVQ")
htn.nextCastAt = 0
htn.watchdogAt = 0

return lf.holdFor
end

function lf.point(rkz)
local egs

if rkz.landmark then
egs = workspace:FindFirstChild(rkz.landmark)
else
local iss = workspace:FindFirstChild(_d("eyV1Qw"))

if iss then
for pd, yilc in ipairs(iss:GetChildren()) do
local ilec

if rkz.attr then
ilec = yilc:GetAttribute(rkz.attr) == rkz.npc
else
ilec = yilc.Name == rkz.npc
end

if ilec then
egs = yilc
break
end
end
end
end

if egs then
local pnrc = egs.PrimaryPart
or egs:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"), true)
or egs:FindFirstChildWhichIsA(_d("dxRFVSERFkE"), true)

if pnrc then
return pnrc.Position
end
end

return rkz.at
end

function lf.resume()
if not htn.enabled then
return
end

local cnsn = kdim.Character
local pzhj = cnsn and cnsn:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not pzhj or (pzhj.Position - oaoh).Magnitude < 40 then
return
end

pcall(function()
htn.recover()
end)
end

function lf.standAt(ixhg)
local hkfm = kdim.Character
local ke = hkfm and hkfm:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not ke or not ixhg then
return false
end

local gg = RaycastParams.new()
gg.FilterType = Enum.RaycastFilterType.Exclude
gg.FilterDescendantsInstances = { hkfm }

local jlag = workspace:Raycast(ixhg + Vector3.new(0, 10, 0), Vector3.new(0, -80, 0), gg)
local zamo = ixhg.Y

if jlag and jlag.Instance.Name ~= _d("YhRCVQM") then
local jzu = jlag.Position.Y + 3.2

if math.abs(jzu - ixhg.Y) <= 8 then
zamo = jzu
end
end

local qmlm = Vector3.new(ke.Position.X - ixhg.X, 0, ke.Position.Z - ixhg.Z)

if qmlm.Magnitude < 1 then
qmlm = Vector3.new(4, 0, 0)
else
qmlm = qmlm.Unit * 4
end

local jxte = Vector3.new(ixhg.X + qmlm.X, zamo, ixhg.Z + qmlm.Z)

ke.CFrame = CFrame.new(jxte)

return true
end

function lf.unlock()
local oaha = {
{ id = _d("VBdXXhUfClARaVkCHAVbEQ"), at = Vector3.new(-3825, 24, -40260) },
{ id = _d("QQJfXi4SAVQWXlUC"), at = Vector3.new(-6180, 40, -40350) },
{ id = _d("QhxYVBwZCFkqX0MdFQ"), at = Vector3.new(-7480, 30, -40350) },
}
local tu = {}

for udh, puw in ipairs(oaha) do
local jg = xbku.FishingGetState:InvokeServer()

if jg and jg.areas and jg.areas[puw.id] == true then
table.insert(tu, puw.id .. _d("D1VXXAMVBVEMFl8BFQo"))
else
lf.hold()
lf.standAt(puw.at)
task.wait(2.4)

local tqv = xbku.FishingGetState:InvokeServer()

table.insert(tu, puw.id .. (tqv and tqv.areas and tqv.areas[puw.id] and _d("D1VDXh0fB14QUg") or _d("D1VQURgcAVE")))
end
end

lf.hold()
pcall(function()
xbku.TeleportToWorld:FireServer(_d("WRpUUgg"))
end)
task.wait(2.5)

return table.concat(tu, _d("FbeBEA"))
end

function lf.flyToggle(zo)
lf.fly.on = zo

if not zo then
return _d("cxlPEB4WAhs")
end

local ilz = kdim.Character
local usoy = ilz and ilz:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not usoy then
return _d("exoWUxkRFlQWQlUDUBBaVVpZFwRK")
end

lf.fly.height = usoy.Position.Y

if lf.fly.connection then
return _d("cxlPEB4eSg")
end

local srj = game:GetService(_d("YAZTQjgeFEABZVUDBg1WEA"))

lf.fly.connection = nhka(game:GetService(_d("ZwBYYxQCElwWUw")).Heartbeat, function(sis)
if not lf.fly.on then
return
end

local evay = kdim.Character
local szy = evay and evay:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not szy then
return
end

local dlph = workspace.CurrentCamera
local rmfw = Vector3.zero

if dlph then
local ifs = dlph.CFrame.LookVector
local kws = Vector3.new(ifs.X, 0, ifs.Z)

if kws.Magnitude > 0.01 then
kws = kws.Unit
end

local zn = Vector3.new(kws.Z, 0, -kws.X)

if srj:IsKeyDown(Enum.KeyCode.W) then
rmfw = rmfw + kws
end

if srj:IsKeyDown(Enum.KeyCode.S) then
rmfw = rmfw - kws
end

if srj:IsKeyDown(Enum.KeyCode.D) then
rmfw = rmfw + zn
end

if srj:IsKeyDown(Enum.KeyCode.A) then
rmfw = rmfw - zn
end
end

local hf = 0

if srj:IsKeyDown(Enum.KeyCode.Space) then
hf = 1
elseif srj:IsKeyDown(Enum.KeyCode.LeftControl) then
hf = -1
end

local ubbd = lf.fly.speed or 55
local ez = rmfw * ubbd * sis + Vector3.new(0, hf * ubbd * 0.6 * sis, 0)

if ez.Magnitude < 0.001 then
return
end

szy.CFrame = szy.CFrame + ez
szy.AssemblyLinearVelocity = Vector3.zero
end)

return _d("cxlPEB4eSg")
end

function lf.go(oih)
lf.hold()

if oih.kind == _d("QhpEXBU") then
pcall(function()
xbku.TeleportToWorld:FireServer(oih.arg)
end)

return _d("ZhBYRFEEDFBV") .. oih.name .. _d("FQFTXBQAC0cBGA")
end

if oih.kind == _d("XAZaUR8U") then
pcall(function()
xbku.FishingIslandTeleport:FireServer(oih.arg)
end)

return _d("ZhBYRFEEDFBV") .. oih.name .. _d("FQFTXBQAC0cBGA") .. tostring(oih.note or _d(""))
end

local goj = lf.point(oih)
local tam = kdim.Character
local yfc = tam and tam:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if goj and yfc and (yfc.Position - goj).Magnitude > 1500 then
pcall(function()
if oih.island then
xbku.FishingIslandTeleport:FireServer(oih.island)
else
xbku.TeleportToWorld:FireServer(_d("WRpUUgg"))
end
end)

task.wait(oih.island and 3.5 or 4.5)

goj = lf.point(oih)

yfc = kdim.Character and kdim.Character:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if goj and yfc and (yfc.Position - goj).Magnitude > 1500 then
return oih.name .. _d("FRxFEB4eRA") .. tostring(oih.island or _d("QR1TEB0fBlcM"))
.. _d("FVgWRBkVRFIUW1VRAgFTAEVVAlAQXRRCEAUCDUVVQ14FGQgVHEIQGREXFRdTVR9QFlAUVVgUFERaG1VVXw")
end
end

if not goj then
return oih.name .. _d("FRxFEB8fEBUcWBAFGA1GVUFfAxwAGw")
end

if not lf.standAt(goj) then
return _d("exoWUxkRFlQWQlUDUBBaVVtfBxVK")
end

task.delay(lf.holdFor + 2, function()
pcall(lf.resume)
end)

return _d("ZgFZXxVQBlAGX1QUUA") .. oih.name .. _d("Gw")
end

lf.islandSection = xop:Section({ Side = _d("eRBQRA") })
lf.islandSection:Header({ Name = _d("fAZaUR8UFxWFqb/sn9y6") })

lf.npcSection = xop:Section({ Side = _d("ZxxRWAU") })
lf.npcSection:Header({ Name = _d("eyV1Q1GA+6b4") })

for mlq, apwe in ipairs(lf.islands) do
lf.islandSection:Button({
Name = apwe.name,
Callback = function()
task.spawn(function()
local bpab = lf.go(apwe)

zpzc:Notify({
Title = _d("YRBaVQEfFkE"),
Description = bpab,
Lifetime = 6,
})
end)
end,
})
end

lf.state = htn
lf.tab = xop
lf.islandSection:Button({
Name = _d("YBtaXxIbRFQZWhAYAwhUG1JD"),
Callback = function()
task.spawn(function()
local yot = lf.unlock()

zpzc:Notify({
Title = _d("fAZaUR8UFw"),
Description = yot,
Lifetime = 10,
})
end)
end,
})

lf.flySection = xop:Section({ Side = _d("eRBQRA") })
lf.flySection:Header({ Name = _d("cxlPEJPs7NrNuQ") })

lf.flySection:Toggle({
Name = _d("cxlPEFknJWYxGhAiAAVWEBZFAVxEdgFEXFEUC0IbHw"),
Default = false,
Callback = function(urt)
local um = lf.flyToggle(urt)

zpzc:Notify({
Title = _d("cxlP"),
Description = um,
Lifetime = 4,
})
end,
}, _d("VBZUSC4WCEw"))

getgenv().ACBXTeleport = lf

getgenv().ACBXDeepWater = ivkv

pcall(ivkv.dropStale)

for kkqu, zy in ipairs(lf.npcs) do
lf.npcSection:Button({
Name = zy.name,
Callback = function()
task.spawn(function()
local hmsj = lf.go(zy)

zpzc:Notify({
Title = _d("YRBaVQEfFkE"),
Description = hmsj,
Lifetime = 6,
})
end)
end,
})
end

local uqav = gli:Section({ Side = _d("eRBQRA") })

uqav:Header({ Name = _d("cRxRVxgeAxWXrb+eyOs") })

local om = {
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

local hm = (tonumber(getgenv().ACBXDigGeneration) or 0) + 1
getgenv().ACBXDigGeneration = hm

function om.read()
local dpmf, hzs = pcall(function()
return xbku.DigGetState:InvokeServer()
end)

return dpmf and type(hzs) == _d("QRRUXBQ") and hzs or nil
end

function om.call(xzjb, hmyb)
local pfs, mcyf = pcall(function()
return xbku.DigShop:InvokeServer(xzjb, hmyb)
end)

task.wait(2.5)

return pfs and mcyf == true
end

function om.wear()
local opbb = kdim.Character

if not opbb then
return false
end

local dw = opbb:FindFirstChildOfClass(_d("fQBbUR8fDVE"))
local vbk = kdim:FindFirstChild(_d("dxRVWwERB14"))

if not (dw and vbk) then
return false
end

dw:UnequipTools()
task.wait(0.4)

for wbwe = 1, 8 do
for amgh, vhwp in ipairs(vbk:GetChildren()) do
if vhwp:IsA(_d("YRpZXA")) and vhwp.Name:find(_d("azFfVyIYC0MQWg")) then
dw:EquipTool(vhwp)

return true
end
end

task.wait(0.5)
end

return false
end

function om.run()
local mug = om.read()

if not mug then
return _d("YR1TEBUZAxUGXl8BUA1GVVhfBVAFWwZBVQMZClJb")
end

local nr = {}

pcall(function()
local tdsu = xbku.FishingGetState:InvokeServer()

nr = tdsu and tdsu.areas or {}
end)

if not (nr.abandoned_island and nr.twin_beaches and nr.windmill_isle) then
lf.unlock()
task.wait(1)
end

local ybj

for irx, uzp in ipairs(lf.npcs) do
if uzp.name == _d("cRxRVxQC") then
ybj = uzp
break
end
end

if not ybj then
return _d("YR1TECUCAVQGQ0IUUCxAG0JVA1ANRlVYXwVQDVtVQlgYA0RCGkRcFV4")
end

lf.go(ybj)
task.wait(2)

local ipk = kdim.Character
local dqbi = ipk and ipk:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))
local jegg = lf.point(ybj)

if not (dqbi and jegg) or (dqbi.Position - jegg).Magnitude > 40 then
return _d("dhpDXBVQCloBFkIUEQddVUJYFFAwRxBXQwQCARU9Q14FFRYb")
end

mug = om.read() or mug

local bqs = false
local vvmb = mug.shovels and mug.shovels.shovel_basic == true
local htj = mug.detectors and mug.detectors.detector_basic == true

if not (vvmb and htj) then
bqs = om.call(_d("dhlXWRwjEFQHQlUD"), _d("Rh1ZRhQcO1cURVkS"))
mug = om.read() or mug
end

if mug.equippedShovel ~= _d("Rh1ZRhQcO1cURVkS") then
om.call(_d("cARDWQEjDFoDU1w"), _d("Rh1ZRhQcO1cURVkS"))
end

if mug.equippedDetector ~= _d("URBCVRIEC0cqVFECGQc") then
om.call(_d("cARDWQE0AUEQVUQeAg"), _d("URBCVRIEC0cqVFECGQc"))
end

mug = om.read() or mug

if mug.equippedShovel == _d("Rh1ZRhQcO1cURVkS") and mug.equippedDetector == _d("URBCVRIEC0cqVFECGQc") then
local pqp = om.wear()
local wqd = false

if pqp and htn.enabled then
htn.autoFishWanted = false
wqd = true

ny(false)

pcall(function()
bvm:UpdateState(false)
end)
end

return (bqs and _d("dhlXWRwVABUUWFRRFRVAHEZAFBQ") or _d("cARDWQEAAVE"))
.. _d("FQFeVVEyBUYcVRAiGAtDEFoQEB4AFTdXQxgTRHEQQlUSBAtHWw")
.. (wqd and _d("FTRDRB5QIlwGXhAeFgIVWBZEGRVERh1ZRhQcRF0URRAFGAEVAVlfHVAXWRpCHg") or _d(""))
end

return _d("YR1TEDMRF1wWFmMZHxJQGRZfA1AgUAFTUwUfFhUcRRACBA1ZGRZdGAMXXBtRHg")
end

function om.unlock()
if om.busy then
return _d("dBlEVRAUHRUCWUIaGQpSWw")
end

om.busy = true

local zghd, hams = pcall(om.run)

om.busy = false

if not zghd then
return _d("cRxRVxgeAxUTV1kdFQAPVQ") .. tostring(hams)
end

return hams
end

om.icon = function()
local ca = gethui()

for se, scrr in ipairs(ca:QueryDescendants(_d("fBhXVxQ8BVcQWg"))) do
if scrr.Name == _d("YRRUeRwRA1A") then
local mdg = scrr.Parent
local wtzt = mdg and mdg:FindFirstChild(_d("YRRUYwYZEFYdU0I/EQlQ"))

if wtzt and wtzt.Text == _d("cRxRVxgeAw") then
if scrr:GetAttribute(_d("dDZ0aDUZA3wWWV4")) then
return true
end

scrr:SetAttribute(_d("dDZ0aDUZA3wWWV4"), true)
scrr.Image = _d("")
scrr.BackgroundTransparency = 1

local xmfg = Color3.fromRGB(233, 236, 242)

for ogm, fhsi in ipairs(ca:QueryDescendants(_d("fBhXVxQ8BVcQWg"))) do
if fhsi.Name == _d("YRRUeRwRA1A") and fhsi ~= scrr and fhsi.Image ~= _d("") then
xmfg = fhsi.ImageColor3
break
end
end

local function lkj(ruq, mzqm, tw, ajix, ugng, db)
local nra = Instance.new(_d("cwdXXRQ"))

nra.Size = UDim2.fromOffset(tw, ajix)
nra.Position = UDim2.fromOffset(ruq, mzqm)
nra.BackgroundColor3 = xmfg
nra.BorderSizePixel = 0
nra.Parent = scrr

if db then
nra.Rotation = db
end

if ugng then
local fm = Instance.new(_d("YDx1XwMeAUc"))

fm.CornerRadius = UDim.new(0, ugng)
fm.Parent = nra
end

return nra
end

lkj(1.1, 10.2, 7, 6.4, 1.6, -45)
lkj(3.1, 8.3, 11, 2.2, 0.8, -45)
lkj(9.8, 4.4, 5.6, 2, 0.8, 45)

return true
end
end
end

return false
end

task.defer(function()
for azwb = 1, 20 do
if om.icon() then
break
end

task.wait(0.25)
end
end)

uqav:Button({
Name = _d("YBtaXxIbRFEcUVcYHgM"),
Callback = function()
task.spawn(function()
zpzc:Notify({
Title = _d("cRxRVxgeAw"),
Description = _d("fRBXVBgeAxUBWRAFGAEVIURVEAMRRxAWeAQeEFAHGA"),
Lifetime = 5,
})

local tlwy = om.unlock()

zpzc:Notify({
Title = _d("cRxRVxgeAw"),
Description = tlwy,
Lifetime = 10,
})
end)
end,
})

om.statusParagraph = uqav:Paragraph({
Header = _d("cRxREAIEBUEQ"),
Body = _d("ZxBXVBgeAxUBXlVRFA1SVUVRBxVKG1s"),
})

om.data = require(xn.ModuleScripts.DigData)

function om.zoneAt(pfwq)
for xga, ld in ipairs(game:GetService(_d("dhpaXBQTEFwaWGMUAhJcFlM")):GetTagged(om.data.ZoneTag)) do
if ld:IsA(_d("dxRFVSERFkE")) and ld:IsDescendantOf(workspace) then
local xqz = ld.CFrame:PointToObjectSpace(pfwq)
local rnv = ld.Size * 0.5

if math.abs(xqz.X) <= rnv.X and math.abs(xqz.Y) <= rnv.Y and math.abs(xqz.Z) <= rnv.Z then
return true
end
end
end

return false
end

function om.onIsland()
for wyw, wfn in ipairs(game:GetService(_d("dhpaXBQTEFwaWGMUAhJcFlM")):GetTagged(om.data.ZoneTag)) do
if wfn:IsA(_d("dxRFVSERFkE")) and wfn:IsDescendantOf(workspace) then
return true
end
end

return false
end

function om.bestShovel(yxxm)
local bee = yxxm and yxxm.shovels or {}
local akly = nil

for bigc, zage in ipairs(om.data.Shovels) do
if bee[zage.id] == true then
akly = zage.id
end
end

return akly
end

function om.equipBest()
local lfi = om.read()
local aye = om.bestShovel(lfi)

if not aye then
return nil
end

if lfi.equippedShovel ~= aye then
om.call(_d("cARDWQEjDFoDU1w"), aye)
end

om.wear()

return aye
end

function om.bestDetector(lgwp)
local aeh = lgwp and lgwp.detectors or {}
local unr = nil

for cw, fscn in ipairs(om.data.Detectors) do
if aeh[fscn.id] == true then
unr = fscn.id
end
end

return unr
end

function om.equipBestDetector()
local tup = om.read()
local exa = om.bestDetector(tup)

if not exa then
return nil
end

if tup.equippedDetector ~= exa then
om.call(_d("cARDWQE0AUEQVUQeAg"), exa)
end

return exa
end

function om.leaveNpc()
local zii = kdim.Character
local igh = zii and zii:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))
local bpu = zii and zii:FindFirstChildOfClass(_d("fQBbUR8fDVE"))

if not (igh and bpu) then
return false
end

local yoz

for hfps, ipc in ipairs(lf.npcs) do
if ipc.name == _d("cRxRVxQC") then
yoz = ipc
break
end
end

local ozf = yoz and lf.point(yoz)

if not ozf then
return false
end

local alt = Vector3.new(igh.Position.X - ozf.X, 0, igh.Position.Z - ozf.Z)

if alt.Magnitude >= 16 then
return true
end

if alt.Magnitude < 1 then
alt = Vector3.new(0, 0, -1)
end

alt = alt.Unit

local kp = Vector3.new(ozf.X + alt.X * 22, igh.Position.Y, ozf.Z + alt.Z * 22)
local sial = os.clock() + 6

bpu:MoveTo(kp)

while os.clock() < sial do
local anzx = kdim.Character
local psqd = anzx and anzx:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not psqd or (psqd.Position - kp).Magnitude < 4 then
break
end

task.wait(0.15)
end

pcall(function()
bpu:MoveTo(igh.Position)
end)

return true
end

function om.goToSand(wu)

if wu or not om.onIsland() then
if not wu then

pcall(function()
xbku.TeleportToWorld:FireServer(_d("WRpUUgg"))
end)

local gyja = os.clock() + 15

while not om.onIsland() and os.clock() < gyja do
task.wait(0.5)
end
end

local ba

for ffqo, mvn in ipairs(lf.npcs) do
if mvn.name == _d("cRxRVxQC") then
ba = mvn
break
end
end

if ba then
lf.go(ba)
task.wait(2)
end
end

if om.onIsland() then
om.leaveNpc()
end
end

function om.spot()
local ki = kdim.Character
local rg = ki and ki:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not rg then
return nil
end

local dez = rg.CFrame.LookVector
local fy = Vector3.new(dez.X, 0, dez.Z)

if fy.Magnitude < 0.01 then
fy = Vector3.new(0, 0, -1)
end

fy = fy.Unit

local six = RaycastParams.new()
six.FilterType = Enum.RaycastFilterType.Exclude
six.FilterDescendantsInstances = { ki }

local function gzxu(tc, lm)
local rdah = rg.Position + tc * lm + Vector3.new(0, 4, 0)
local ywu = workspace:Raycast(rdah, Vector3.new(0, -18, 0), six)

if ywu and om.zoneAt(ywu.Position) then
return ywu.Position
end
end

for dgs, idy in ipairs({ 4, 7, 10, 2 }) do
local mpt = gzxu(fy, idy)

if mpt then
return mpt
end
end

local us = Vector3.new(-fy.Z, 0, fy.X)

for oxmy, bpk in ipairs({ 4, 8 }) do
for qpti, kd in ipairs({ 1, -1 }) do
for zp, txz in ipairs({ 1, 0.5 }) do
local yr = gzxu((us * (kd * txz) + fy * (1 - txz)).Unit, bpk)

if yr then
return yr
end
end
end
end

return nil
end

function om.turn()
local aa = kdim.Character
local rtoy = aa and aa:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not rtoy then
return
end

local oi = rtoy.CFrame.LookVector
local dahx = Vector3.new(oi.X, 0, oi.Z)

if dahx.Magnitude < 0.01 then
dahx = Vector3.new(0, 0, -1)
end

dahx = dahx.Unit

local zads = Vector3.new(-dahx.Z, 0, dahx.X)

rtoy.CFrame = CFrame.lookAt(rtoy.Position, rtoy.Position + zads)
end

om.misses = 0

om.pending = false

om.spots = {}
om.treasures = {}

local function jmb(cu)
local ogr = {}
local lg = {}

for takg, ntbw in pairs(cu) do
local eur
local dd

if typeof(ntbw) == _d("YxBVRB4CVw") or typeof(ntbw) == _d("djNEURwV") then
eur = takg
dd = ntbw
elseif type(ntbw) == _d("QRRUXBQ") then
eur = ntbw.id or ntbw.Id or ntbw[1]
dd = ntbw.position or ntbw.Position or ntbw.pos or ntbw[2]
end

if typeof(dd) == _d("djNEURwV") then
dd = dd.Position
end

if eur ~= nil and typeof(dd) == _d("YxBVRB4CVw") then
table.insert(ogr, { id = eur, position = dd, spot = true })
lg[eur] = true
end
end

return ogr, lg
end

pcall(function()
nhka(xbku.DigUpdate.OnClientEvent, function(lc, dwhx)
if lc == _d("cRxRYhQDEVkB") then
om.pending = false
om.resultAt = os.clock()
elseif lc == _d("cRxRcxAeB1AZ") then
om.pending = false
elseif lc == _d("cRxRYwURFkE") then

om.startedAt = os.clock()
om.startDuration = type(dwhx) == _d("QRRUXBQ") and tonumber(dwhx.duration) or nil
end

if (lc == _d("ZgVZRAI") or lc == _d("YQdTUQIFFlAG")) and type(dwhx) == _d("QRRUXBQ") then
local li, uynn = jmb(dwhx)

if lc == _d("ZgVZRAI") then
for mxl, sus in ipairs(li) do
sus.spot = true
end

om.spots = li
om.reportedSpots = uynn
else
om.treasures = li

for jycp, xss in ipairs(li) do
xss.spot = nil
end

om.reported = uynn
end

local you = om.target

if you and not you.mark then
local ffwn = you.spot and om.reportedSpots or om.reported

if ffwn and not ffwn[you.id] then
om.targetGone = true
end
end
end
end)
end)

function om.withinDig(rpj)
local ucy = kdim.Character
local cy = ucy and ucy:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not cy then
return false
end

return (cy.Position - rpj).Magnitude <= 10
end

om.markGone = {}

function om.marked()
local ug = workspace:FindFirstChild(_d("cRxRfRACD0Y"))
local fjj = {}

if not ug then
return fjj
end

local omp = os.clock()

for dvp, oai in ipairs(ug:GetChildren()) do
if oai.Name == _d("bThXQho") and oai:IsA(_d("dxRFVSERFkE")) then
local ng = oai.Position
local bsu = string.format(_d("WBREW0tVSgUTDBVfQAI"), ng.X, ng.Z)
local cuj = om.markGone[bsu]

if not (cuj and omp - cuj < 90) then
table.insert(fjj, { id = bsu, position = ng, mark = true })
end
end
end

return fjj
end

function om.chests()
local vt = {}

for hren, pges in ipairs(om.spots or {}) do
table.insert(vt, pges)
end

for rmyb, vjxi in ipairs(om.treasures or {}) do
table.insert(vt, vjxi)
end

for iaif, qgww in ipairs(om.marked()) do
local jh = false

for uf, lkv in ipairs(vt) do
if (lkv.position - qgww.position).Magnitude < 2 then
jh = true

break
end
end

if not jh then
table.insert(vt, qgww)
end
end

return vt
end

function om.release(kkfd)
if kkfd.mark then
om.markGone[kkfd.id] = os.clock()
else
om.forget(kkfd)
end
end

function om.nearestChest(he)
local inab = kdim.Character
local ao = inab and inab:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not ao then
return nil
end

local yhqj
local hwyh

for wey, ry in ipairs(om.chests()) do
local hyd = (ry.position - ao.Position).Magnitude

if hyd <= he and (not hwyh or hyd < hwyh) then
yhqj = ry
hwyh = hyd
end
end

return yhqj
end

function om.forget(sha)
for ouhz, bpzf in ipairs({ om.spots or {}, om.treasures or {} }) do
for pff, pwh in ipairs(bpzf) do
if pwh.id == sha.id then
table.remove(bpzf, pff)

return
end
end
end
end

function om.walkTo(gbnw)
local evo = kdim.Character
local xzgu = evo and evo:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))
local wk = evo and evo:FindFirstChildOfClass(_d("fQBbUR8fDVE"))

if not (xzgu and wk) then
return false
end

local rccq = os.clock() + 12
local arcn = (xzgu.Position - gbnw).Magnitude
local itbt = os.clock()
local suq = false

pcall(function()
wk:MoveTo(gbnw)
end)

while os.clock() < rccq do
local xagy = kdim.Character
local ymo = xagy and xagy:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not ymo then
break
end

local aba = (ymo.Position - gbnw).Magnitude

if aba <= 4 then
suq = true

break
end

if om.targetGone or not om.autoOn
or getgenv().ACBXDigGeneration ~= hm or not vgo() then
break
end

if aba < arcn - 1 then
arcn = aba
itbt = os.clock()
elseif os.clock() - itbt > 1.5 then
break
end

task.wait(0.15)
end

pcall(function()
wk:MoveTo(xzgu.Position)
end)

return suq
end

function om.digAt(uam)
om.misses = 0
om.pending = true
om.startedAt = 0
om.startDuration = nil
om.refused = false

local pwdt = os.clock()
local zve = pcall(function()
xbku.DigAction:FireServer(_d("ZgFXQgU"), uam)
end)

if not zve then
om.pending = false
om.refused = true

return false
end

local xl = pwdt + 1.2
local ph

while om.pending and om.autoOn
and getgenv().ACBXDigGeneration == hm and vgo() do
local yc = os.clock()

if (om.startedAt or 0) >= pwdt then

ph = ph or (om.startedAt + (om.startDuration or 0) + 1.5)

if yc >= ph then
break
end
elseif yc >= xl then
break
end

task.wait()
end

local szd = (om.resultAt or 0) >= pwdt

om.pending = false

if szd then
om.dugAt = os.clock()
end

om.refused = (om.startedAt or 0) < pwdt

return szd
end

function om.autoLoop()
local kjp = false

while om.autoOn and vgo() and getgenv().ACBXDigGeneration == hm do
local uy = unl and unl.worldBoss
local fvdv = uy ~= nil
and type(uy.holdsDigging) == _d("UwBYUwUZC1s")
and uy.holdsDigging() == true

local di = uy ~= nil and type(uy.bossUp) == _d("UwBYUwUZC1s") and uy.bossUp() == true

local kz = di
and not (uy.stopAtFull and type(uy.meterFull) == _d("UwBYUwUZC1s") and uy.meterFull())
local pgm = kz
and (cq.prioRank(_d("VxpFQw")) or 0) < (cq.prioRank(_d("QhRCVQM")) or 0)

if pgm then
fvdv = true
end

if om.shopping then

task.wait(0.5)
elseif fvdv or cq.digBlocked() then

kjp = true

om.heldAt = os.clock()
task.wait(1)
else
if kjp then

kjp = false

if type(uy.setRepeat) == _d("UwBYUwUZC1s") then
uy.setRepeat(false)
end

om.goToSand()
end

local fzme = om.chestOn and om.nearestChest(2500) or nil
local qqm = false

if fzme then
om.target = fzme
om.targetGone = false

local qfkw = kdim.Character and kdim.Character:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))
local gy = qfkw and (qfkw.Position - fzme.position).Magnitude or 999

if gy > 45 then
pcall(function()
lf.standAt(fzme.position)
end)

task.wait(0.6)
end

if not om.walkTo(fzme.position) and not om.targetGone then
pcall(function()
lf.standAt(fzme.position)
end)

task.wait(0.6)
om.walkTo(fzme.position)
end

local pwlu = not om.withinDig(fzme.position)
local xfkl = om.targetGone

if xfkl or pwlu then
om.strikes = xfkl and 0 or (om.strikes + 1)

if xfkl or om.strikes >= 2 then
om.strikes = 0
om.release(fzme)
om.skipped = om.skipped + 1
end
else

if om.digAt(fzme.position) then
om.strikes = 0
om.release(fzme)
om.dug = om.dug + 1
qqm = true
elseif om.refused then

om.strikes = 0
om.release(fzme)
om.skipped = om.skipped + 1
else

om.strikes = om.strikes + 1

if om.strikes >= 3 then
om.strikes = 0
om.release(fzme)
om.skipped = om.skipped + 1
end
end
end

om.target = nil
om.targetGone = false
end

if not qqm then
local thkv = om.spot()

if thkv then
om.digAt(thkv)
else

om.misses = (om.misses or 0) + 1

if om.misses >= 4 then
om.misses = 0
om.goToSand(true)
else
om.turn()
task.wait(0.25)
end
end
end
end
end
end

function om.autoStart()
local lmc = om.read()

if not (lmc and om.bestShovel(lmc)) then
return _d("exoWQxkfElAZFl8GHgFRVRsQJB4IWhZdEBUZA1IcWFdRFg1HBkIe")
end

local iqmx = false

if htn.enabled then
htn.autoFishWanted = false

ny(false)
pcall(function()
bvm:UpdateState(false)
end)

iqmx = true
end

vtzm = true
om.equipBest()

if om.chestOn then
pcall(om.equipBestDetector)
end

om.goToSand()
om.dugAt = os.clock()

task.spawn(om.runAuto)

return _d("cRxRVxgeAxs") .. (iqmx and _d("FTRDRB5QIlwGXhAeFgIVWBZEGRVERh1ZRhQcRF0URRAFGAEVAVlfHVAXWRpCHg") or _d(""))
end

function om.runAuto()
if om.loopLive then
return
end

om.loopLive = true

local pdc, yrry = pcall(om.autoLoop)

om.loopLive = false

if not pdc then
om.loopError = tostring(yrry)
end
end

task.spawn(function()
while vgo() and sjn do
task.wait(5)

if om.autoOn and not om.shopping then
local mbwn = os.clock()

if not om.loopLive then
task.spawn(om.runAuto)
elseif mbwn - (om.dugAt or mbwn) > 25
and mbwn - (om.heldAt or 0) > 25
and mbwn - (om.watchdogAt or 0) > 20 then
om.watchdogAt = mbwn
om.pending = false
om.strikes = 0
om.misses = 0
om.target = nil
om.targetGone = false

pcall(function()
om.goToSand(true)
om.equipBest()
end)
end
end
end
end)

function om.toggleAuto(ahuw, bdx)
if ahuw then
local egh = om.autoOn == true

om.chestOn = bdx == true
om.switching = true

pcall(function()
local aqi = bdx and om.autoToggle or om.chestToggle

if aqi then
aqi:UpdateState(false)
end
end)

om.switching = false

if egh then
return
end

om.autoOn = true

task.spawn(function()
local fywg = om.autoStart()

zpzc:Notify({
Title = bdx and _d("dABCX1E0DVJVdVgUAxBG") or _d("dABCX1E0DVI"),
Description = fywg,
Lifetime = 6,
})
end)
else

if om.switching then
return
end

om.autoOn = false
om.pending = false
vtzm = false
end
end

om.autoToggle = uqav:Toggle({
Name = _d("dABCX1E0DVI"),
Default = false,
Callback = function(mai)
om.toggleAuto(mai, false)
end,
}, _d("URxRVxgeA2oUQ0Qe"))

om.chestToggle = uqav:Toggle({
Name = _d("dABCX1E0DVJVdVgUAxBG"),
Default = false,
Callback = function(zxtv)
om.toggleAuto(zxtv, true)
end,
}, _d("URxRVxgeA2oUQ0QeLwddEEVE"))

om.chestParagraph = uqav:Paragraph({
Header = _d("dh1TQwUD"),
Body = _d("YQdXUxoVAA9VBhBcUCBAEgwQQVBJFSZdWQEAAVFPFgA"),
})

task.spawn(function()
local ghq

while vgo() and sjn do
local ox = #om.chests()
local mvw = _d("YQdXUxoVAA9V") .. ox .. _d("FVgWdAQXXhU") .. om.dug .. _d("FVgWYxoZFEUQUgpR") .. om.skipped

if om.chestOn and ox > 0 then
local tdh = om.nearestChest(2500)
local vsci = kdim.Character
local ooej = vsci and vsci:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if tdh and ooej then
local drxf = math.floor((tdh.position - ooej.Position).Magnitude)
mvw = mvw .. _d("PztTUQMVF0FPFg") .. drxf .. (drxf > 45 and _d("FQZCRRUDRB0dWUBY") or _d("FQZCRRUD"))
end
end

if mvw ~= ghq then
ghq = mvw

pcall(function()
om.chestParagraph:UpdateBody(mvw)
end)
end

task.wait(0.5)
end
end)

function om.npcRow()
for luq, jm in ipairs(lf.npcs) do
if jm.name == _d("cRxRVxQC") then
return jm
end
end
end

function om.shop(kcr, ue)
local bzd, guq, rmt, wc = pcall(function()
return xbku.DigShop:InvokeServer(kcr, ue)
end)

if not bzd then
return false, _d("YR1TEBUZAxUGXl8BUA1GVVhfBVAFWwZBVQMZClJb")
end

return guq == true, rmt, type(wc) == _d("QRRUXBQ") and wc or nil
end

function om.pickShovel(zsez)
local zan = zsez.shovels or {}
local wf = tonumber(zsez.digs) or 0
local vhq

for wb, vijp in ipairs(om.data.Shovels) do
if not vijp.crafted and vijp.id ~= _d("Rh1ZRhQcO1cURVkS") and zan[vijp.id] ~= true then
local rcmx = tonumber(vijp.cost) or math.huge

if rcmx <= wf and (not vhq or rcmx > (tonumber(vhq.cost) or 0)) then
vhq = vijp
end
end
end

return vhq
end

function om.pickDetector(jus)
local fi = jus.detectors or {}
local mv = tonumber(jus.digs) or 0
local dosb

for mtq, gwsh in ipairs(om.data.Detectors) do
if not gwsh.crafted and gwsh.id ~= _d("URBCVRIEC0cqVFECGQc") and fi[gwsh.id] ~= true then
local kbp = tonumber(gwsh.cost) or math.huge

if kbp <= mv and (not dosb or kbp > (tonumber(dosb.cost) or 0)) then
dosb = gwsh
end
end
end

return dosb
end

function om.nextDef(rosm, obb)
local kper

for mkh, xpf in ipairs(rosm) do
local jcqj = tonumber(xpf.cost)

if not xpf.crafted and jcqj and obb[xpf.id] ~= true then
if not kper or jcqj < (tonumber(kper.cost) or math.huge) then
kper = xpf
end
end
end

return kper
end

function om.toCounter()
local omin = om.npcRow()
local oerm = omin and lf.point(omin)
local owd = kdim.Character
local abq = owd and owd:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not (oerm and abq) then
return false
end

if (abq.Position - oerm).Magnitude <= 20 then
return true
end

lf.go(omin)
task.wait(2.2)

owd = kdim.Character
abq = owd and owd:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

return abq ~= nil and (abq.Position - oerm).Magnitude <= 20
end

function om.secretRow()
for cgu, roik in ipairs(lf.npcs) do
if roik.name == _d("ZhBVQhQERHEcUVcUAg") then
return roik
end
end
end

function om.secretDef(vmgq)
for vmkz, zwcj in ipairs(vmgq or {}) do
if zwcj.crafted then
return zwcj
end
end
end

function om.recipeHeld(bxjb)
local mzjz = om.data and om.data.SecretRecipe
local govd = bxjb and bxjb.mats

if type(mzjz) ~= _d("QRRUXBQ") or type(govd) ~= _d("QRRUXBQ") then
return false
end

for msa, yxnj in ipairs(mzjz) do
if (tonumber(govd[yxnj.id]) or 0) < (tonumber(yxnj.count) or 0) then
return false
end
end

return true
end

function om.toSecret()
local vpru = om.secretRow()

if not vpru then
return false
end

local aiv = workspace:FindFirstChild(_d("eyV1Qw"))
local piqa = aiv and aiv:FindFirstChild(_d("ZhBVQhQEIFwSUVUDPjR2"))
local eo = piqa and piqa:GetPivot().Position or lf.point(vpru)

if not eo then
return false
end

lf.hold()

for tgnd = 1, 3 do
local qnnu = kdim.Character
local ydt = qnnu and qnnu:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not ydt then
return false
end

local xlec = (ydt.Position - eo).Magnitude

if xlec <= 20 then
return true
end

if xlec > 1500 and vpru.island then
pcall(function()
xbku.FishingIslandTeleport:FireServer(vpru.island)
end)

task.wait(4.5)
else
pcall(function()
lf.standAt(eo)
end)
task.wait(0.9)
end
end

local wool = kdim.Character
local opee = wool and wool:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

return opee ~= nil and (opee.Position - eo).Magnitude <= 20
end

function om.craftSecret(pr, hlt, glu)
local amto = {}
local dps = pr and om.secretDef(om.data.Shovels) or nil
local pqja = hlt and om.secretDef(om.data.Detectors) or nil

local mgnz = dps and (glu.shovels or {})[dps.id] ~= true
local po = pqja and (glu.detectors or {})[pqja.id] ~= true

if not (mgnz or po) then
return amto, nil, glu
end

if not om.recipeHeld(glu) then
return amto, nil, glu
end

om.shopping = true

local xu = om.toSecret()
local dzjr

if xu then
local function bd(ygxk, dun)
if not dun or not om.recipeHeld(glu) then
return
end

local drst, jdjj = om.shop(ygxk, dun.id)

if drst then
table.insert(amto, dun.name)
elseif not dzjr then
dzjr = tostring(jdjj)
end

glu = om.read() or glu
end

bd(_d("dgdXVgUjDFoDU1w"), mgnz and dps or nil)
bd(_d("dgdXVgU0AUEQVUQeAg"), po and pqja or nil)
end

om.shopping = false

return amto, dzjr, glu
end

function om.upgradeAll()
local wtdw = om.buyOn == true
local yjyx = om.detBuyOn == true

if not (wtdw or yjyx) then
return nil, _d("ehNQHg")
end

local dyh = om.read()

if not dyh then
return nil, _d("YR1TEBUZAxUGXl8BUA1GVVhfBVAFWwZBVQMZClJb")
end

local oue, ds, nqbv = om.craftSecret(wtdw, yjyx, dyh)

if nqbv then
dyh = nqbv
end

if wtdw then
local oiqc = om.bestShovel(dyh)

if oiqc and dyh.equippedShovel ~= oiqc then
om.equipBest()
end
end

if yjyx then
local hdw = om.bestDetector(dyh)

if hdw and dyh.equippedDetector ~= hdw then
om.equipBestDetector()
end
end

local nju = wtdw and om.pickShovel(dyh) or nil
local sff = yjyx and om.pickDetector(dyh) or nil

if not (nju or sff) then

if #oue > 0 then
if om.autoOn then
om.leaveNpc()
end

return table.concat(oue, _d("FV4W"))
end

return nil, ds and (_d("dgdXVgVQFlATQ0MUFF4V") .. tostring(ds))
or _d("exoWRQEXFlQRUxAYA0RUE1BfAxQFVxlTEAgVEBs")
end

om.shopping = true
om.toCounter()

local wnl = {}
local dbos

for rzs, bqfi in ipairs(oue) do
wnl[#wnl + 1] = bqfi
end

local function ybfj(bwjy, py)
if not py then
return
end

local yyd, khg = om.shop(bwjy, py.id)

if yyd then
table.insert(wnl, py.name)
elseif not dbos then
dbos = tostring(khg)
end
end

ybfj(_d("dwBPYxkfElAZ"), nju)
ybfj(_d("dwBPdBQEAVYBWUI"), sff)

if #wnl == 0 then
om.shopping = false

return nil, _d("dwBPEAMVAkAGU1RLUA") .. (dbos or _d("WxoWUR8DE1AH"))
end

if wtdw then
om.equipBest()
end

if yjyx then
om.equipBestDetector()
end

if om.autoOn then
om.leaveNpc()
end

om.shopping = false

return table.concat(wnl, _d("FV4W"))
end

function om.buyLoop()
while om.buyOn or om.detBuyOn do
local txjc, flvu, rjk = pcall(om.upgradeAll)

om.shopping = false

if not txjc then
task.wait(10)
elseif flvu then
zpzc:Notify({
Title = _d("dABCX1EyEUxVclkWFw1bEhZ3FBEW"),
Description = _d("cARDWQEAAVFVQlgUUA") .. flvu .. _d("Gw"),
Lifetime = 6,
})

task.wait(3)
else
task.wait(rjk == _d("ehNQHg") and 0.5 or 10)
end
end
end

function om.syncBuyLoop()
if not (om.buyOn or om.detBuyOn) or om.buyRunning then
return
end

om.buyRunning = true

task.spawn(function()
om.buyLoop()

om.buyRunning = false
end)
end

uqav:Toggle({
Name = _d("dABCX1EyEUxVdFUCBERmHVlGFBw"),
Default = false,
Callback = function(wi)
om.buyOn = wi
om.syncBuyLoop()
end,
}, _d("URxRVxgeA2oXQ0k"))

uqav:Toggle({
Name = _d("dABCX1EyEUxVdFUCBERxEEJVEgQLRw"),
Default = false,
Callback = function(vwto)
om.detBuyOn = vwto
om.syncBuyLoop()
end,
}, _d("URxRVxgeA2oXQ0kuFAFBEFVEHgI"))

function om.statusText()
local ork = om.read()

if not ork then
return _d("YR1TEBUZAxUGXl8BUA1GVVhfBVAFWwZBVQMZClJb")
end

local yfpj = tonumber(ork.digs) or 0
local oq = { _d("cRxRQ0tQ") .. yfpj }

local function xwr(qma, jkrn)
if not jkrn then
return qma .. _d("D1VTRhQCHUEdX14WUAtCG1NUXw")
end

local sjrb = tonumber(jkrn.cost) or 0
local lul = sjrb - yfpj

return qma .. _d("D1U") .. tostring(jkrn.name) .. _d("FVgW") .. sjrb
.. (lul <= 0 and _d("FV1EVRAUHRw") or (_d("FV0") .. lul .. _d("FQFZEBYfTQ")))
end

table.insert(oq, xwr(_d("exBORFEDDFoDU1w"), om.nextDef(om.data.Shovels, ork.shovels or {})))
table.insert(oq, xwr(_d("exBORFEUAUEQVUQeAg"), om.nextDef(om.data.Detectors, ork.detectors or {})))

return table.concat(oq, _d("Pw"))
end

task.spawn(function()
while vgo() and sjn do
local qkx, pbr = pcall(om.statusText)

if qkx and om.statusParagraph then
pcall(function()
om.statusParagraph:UpdateBody(pbr)
end)
end

task.wait(6)
end
end)

getgenv().ACBXDigging = om

rqc.tab = mxep:Tab({
Name = _d("ZhBCRBgeA0Y"),

Image = _d(""),
})

rqc.icon = function()
local sykj = gethui()

for dopf, sxmx in ipairs(sykj:QueryDescendants(_d("fBhXVxQ8BVcQWg"))) do
if sxmx.Name == _d("YRRUeRwRA1A") then
local rsw = sxmx.Parent
local yyyf = rsw and rsw:FindFirstChild(_d("YRRUYwYZEFYdU0I/EQlQ"))

if yyyf and yyyf.Text == _d("ZhBCRBgeA0Y") then
if sxmx:GetAttribute(_d("dDZ0aDIfA3wWWV4")) then
return true
end

sxmx:SetAttribute(_d("dDZ0aDIfA3wWWV4"), true)
sxmx.Image = _d("")
sxmx.BackgroundTransparency = 1

local phq = Color3.fromRGB(168, 170, 176)

local function ey(amv, dsc, grn, hy, ud, bjyx)
local ntgq = Instance.new(_d("cwdXXRQ"))

ntgq.Size = UDim2.fromOffset(grn, hy)
ntgq.Position = UDim2.fromOffset(amv, dsc)
ntgq.BackgroundColor3 = phq
ntgq.BorderSizePixel = 0
ntgq.Parent = sxmx

if not bjyx then
ntgq.BackgroundTransparency = 1

local dcah = Instance.new(_d("YDxlRAMfD1A"))

dcah.Color = phq
dcah.Thickness = 1.3
dcah.LineJoinMode = Enum.LineJoinMode.Round
dcah.Parent = ntgq
end

if ud then
local wodv = Instance.new(_d("YDx1XwMeAUc"))

wodv.CornerRadius = UDim.new(0, ud)
wodv.Parent = ntgq
end

return ntgq
end

local rpmz = {
{ 8, 0, 2, 3 },
{ 8, 15, 2, 3 },
{ 0, 8, 3, 2 },
{ 15, 8, 3, 2 },
{ 2, 2, 3, 3 },
{ 13, 2, 3, 3 },
{ 2, 13, 3, 3 },
{ 13, 13, 3, 3 },
}

for moe, es in ipairs(rpmz) do
ey(es[1], es[2], es[3], es[4], 0, true)
end

ey(2, 2, 14, 14, 7, false)
ey(7, 7, 4, 4, 2, true)

return true
end
end
end

return false
end

task.defer(function()
for nnko = 1, 20 do
if rqc.icon() then
break
end

task.wait(0.25)
end
end)

rqc.prioSection = rqc.tab:Section({
Side = _d("eRBQRA"),
})

rqc.prioSection:Header({
Name = _d("ZQdfXwMZEEw"),
})

rqc.prioSection:Paragraph({
Header = _d("Yh1ZEBYfAUZVUFkDAxA"),
Body = _d("BFVCURoVFxUBXlVREQdWGkNeBVACXAdFRF1QURUCV1kFA0RTGkQQFAYBRwxUXxUJShUwV1MZUBZaAhZZAlAFFRtDXRMVFhUUWFRRBAxQVVJCHgAAWgJYEAQeAFAHFlkFUA1GVUFYEARERgFXXhUDREEdU0IUUEkVBV9TGlAFFRtXXRRQEF0UQhAQHBZQFFJJURgLWRFFEBAeC0EdU0JRHhFYF1NCUREKUVVCWBRQEEIaFkMGERQbVXcQAx8TFRxFEBkVCFFVVFESG0RaG1pJURIdFRQWXhAdARUUVF8HFURcARZEGREQFR1XQ1EDC1gQQlgYHgMVAVkQFR9ERxxRWAVQCloCGDp7JAtCEERDUREWUFVYXwVQC1tVQlgYA0RZHEVES1AFFQFZRxQCRFMcUVgFA0RaGxZEGRVERhBERhQCRFQbUhAdFQVDEEUQBRgBFRZeUQMRB0EQRBAXAgFQWRZDHlANQVVERR8DRFQZWV4WAw1REBZVBxUWTAFeWR8XRF0QRFVREQpRVVleHQlERgFXXhUDRFQGX1QUUAJaBxZCEBkARlkWRBkVRFIZWVIQHERXGkVDUREKUVV4YDJQBlQBQlwUA0o/f2VYHgAXGVVbVQMXDVsSGhAUCBRQEV9EGB8KRlVXXhVQEF0QFkIUAxAVGlAQBRgBFRpYVVwDDFoBFkQDGRRGVVdCFFAKWgEWWBQCARUaWBABBRZFGkVVS1AQXRBPEBAcFlAUUklRAxBUG1IQBRgBFQdDXh8ZClJVV0UFHwlUAV9fH1AAWgJYEAYYDVkQFkQZFR0VEVkQBRgBXAcWWh4SSg"),
})

rqc.prioRows = {}

rqc.prioBuilding = true

local fjvo = {}

for ipy, fvv in ipairs(cq.prioGroups) do
fjvo[#fjvo + 1] = fvv.label
end

for tmt = 1, #cq.prioGroups do
local pxd = nil

pcall(function()
pxd = rqc.prioSection:Dropdown({
Name = _d("ZQdfXwMZEExV") .. tmt,
Search = false,
Multi = false,
Required = false,
Default = tmt,
Options = fjvo,
Callback = function(wgyz)
local ff = type(wgyz) == _d("QRRUXBQ") and wgyz[1] or wgyz
local wbui

for are, nv in ipairs(cq.prioGroups) do
if nv.label == ff then
wbui = nv

break
end
end

if wbui then
rqc.setPriority(wbui.id, tmt)
end
end,
}, _d("RQdfXy4CBVseaQ") .. tmt)
end)

rqc.prioRows[tmt] = pxd
end

rqc.prioBuilding = false

rqc.configSection = rqc.tab:Section({
Side = _d("eRBQRA"),
})

rqc.configSection:Header({
Name = _d("dhpYVhgXRHgUWFEWFQlQG0I"),
})

rqc.autoSaveToggle = rqc.configSection:Toggle({
Name = _d("dABCX1EDBUMQ"),
Default = false,
Callback = function(zotq)
rqc.autoSave = zotq
rqc.autoSaveAt = 0

if zotq then
local pclq = rqc.selected or _d("URBQUQQcEA")
local qcs, wpcx = rqc.save(pclq)

rqc.selected = pclq
rqc.lastText = qcs and (_d("dABCX1EDBUMQFl8fUEkVAkRfBRVE") .. pclq)
or (_d("dABCX1EDBUMQFl8fXERTHERDBVATRxxCVVEWBVwZU1RLUA") .. tostring(wpcx))
else
rqc.lastText = _d("dABCX1EDBUMQFl8XFko")
end
end,
}, _d("VhpYVhgXO1QAQl8uAwVDEA"))

rqc.nameInput = rqc.configSection:Input({
Name = _d("ZhRAVVEeBVgQ"),
Placeholder = _d("UFtRHlEiBVwRRQ"),
AcceptedCharacters = _d("dBla"),
Callback = function(bmq)
rqc.nameDraft = bmq
end,
})

rqc.nameInput.IgnoreConfig = true

rqc.configSection:Button({
Name = _d("dgdTUQUVREYUQFU"),
Callback = function()
local hseo = rqc.nameDraft or rqc.nameInput:GetInput()

hseo = type(hseo) == _d("RgFEWR8X") and hseo:gsub(_d("a1BFGw"), _d("")):gsub(_d("EAYdFA"), _d("")) or _d("")

if hseo == _d("") then
zpzc:Dialog({
Title = _d("dhpYVhgX"),
Description = _d("YQxGVVERRFsUW1VRFgtHVUJYFFAXVANTEBcZFkYBFh1RGRAVF1NTHh0BRlVCWBRQAlwZUxcCUApUGFMe"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})

return
end

local snb, kbqy = rqc.save(hseo)

if not snb then
rqc.lastText = _d("ZhRAVVEWBVwZU1RLUA") .. tostring(kbqy)

return
end

rqc.selected = hseo
rqc.lastText = _d("dgdTUQUVABU") .. hseo .. _d("Gw")
rqc.savesAt = 0

task.defer(function()
task.wait(0.25)

pcall(function()
rqc.fileDropdown:UpdateSelection(hseo)
end)
end)
end,
})

rqc.fileDropdown = rqc.configSection:Dropdown({
Name = _d("ZhRAVVEWDVkQ"),
Search = false,
Multi = false,
Required = false,
Options = rqc.saves(),
Callback = function(qqnb)
local lkzw = type(qqnb) == _d("QRRUXBQ") and qqnb[1] or qqnb

if type(lkzw) == _d("RgFEWR8X") and lkzw ~= _d("") then
rqc.selected = lkzw
rqc.selectionShown = lkzw

pcall(function()
rqc.fileDropdown:UpdateName(_d("ZhRAVVEWDVkQDBA") .. lkzw)
end)
end
end,
})

rqc.fileDropdown.IgnoreConfig = true

rqc.configSection:Button({
Name = _d("eRpXVFEDAVkQVUQUFA"),
Callback = function()
local agv = rqc.selected or rqc.fileDropdown.Value
local fj, lzp = rqc.load(agv)

rqc.lastText = fj and (_d("eRpXVBQURA") .. agv .. _d("Gw")) or (_d("eRpXVFEWBVwZU1RLUA") .. tostring(lzp))
end,
})

rqc.configSection:Button({
Name = _d("ZhRAVVEECxUGU1wUExBQEQ"),
Callback = function()
local zaz = rqc.selected or rqc.fileDropdown.Value
local nu, lmn = rqc.save(zaz)

rqc.lastText = nu and (_d("YgdZRBRQ") .. zaz .. _d("Gw")) or (_d("ZhRAVVEWBVwZU1RLUA") .. tostring(lmn))
end,
})

rqc.configSection:Button({
Name = _d("cRBaVQUVREYQWlUSBAFRVUVRBxU"),
Callback = function()
local ysx = rqc.selected or rqc.fileDropdown.Value

if type(ysx) ~= _d("RgFEWR8X") or ysx == _d("") then
rqc.lastText = _d("ZRxVW1ERREYUQFVRFg1ZEBZWGAIXQVs")

return
end

zpzc:Dialog({
Title = _d("cRBaVQUVRA") .. ysx .. _d("Cg"),
Description = _d("YR1TEBcZCFBVX0NRAgFYGkBVFVACRxpbEBUZF15VV14VUAdUG1hfBVAGUFVEVRIfElAHU1Rf"),
Buttons = {
{
Name = _d("cRBaVQUV"),
Callback = function()
local syc, qb = rqc.delete(ysx)

rqc.lastText = syc
and (_d("cRBaVQUVABU") .. ysx .. _d("Gw"))
or (_d("dhpDXBVQCloBFlQUHAFBEAwQ") .. tostring(qb))
end,
},
{
Name = _d("dhRYUxQc"),
},
},
})
end,
})

rqc.configSection:Button({
Name = _d("ZxBQQhQDDBUZX0MF"),
Callback = function()
rqc.savesAt = 0
rqc.lastText = _d("ZhRAVVEcDUYBFkIUFhZQBl5VFV4")
end,
})

rqc.configSection:Button({
Name = _d("eBREW1ERFxUUQ0QeUAhaFFI"),
Callback = function()
local fbx = rqc.selected or rqc.fileDropdown.Value

if type(fbx) ~= _d("RgFEWR8X") or fbx == _d("") then
rqc.lastText = _d("ZRxVW1ERREYUQFVRFg1ZEBZWGAIXQVs")

return
end

if rqc.setAutoLoad(fbx) then
rqc.lastText = fbx .. _d("FRlZURUDRFobFkMFERZBWw")
else
rqc.lastText = _d("dhpDXBVQCloBFkcDGRBQVUJYFFAFQAFZEB0fBVFVW1EDGwFHWw")
end
end,
})

rqc.configSection:Button({
Name = _d("dhlTUQNQBUABWRAdHwVR"),
Callback = function()
rqc.setAutoLoad(_d(""))
rqc.lastText = _d("expCWBgeAxUZWVEVA0RaGxZDBREWQVs")
end,
})

rqc.statusParagraph = rqc.configSection:Paragraph({
Header = _d("ZgFXRAQD"),
Body = _d(""),
})

rqc.miscSection = rqc.tab:Section({
Side = _d("ZxxRWAU"),
})

rqc.miscSection:Header({
Name = _d("eBxFUw"),
})

rqc.miscSection:Toggle({
Name = _d("dABCX1ETCFoGUxAWFQpQB1dEGB8KFSB/"),
Default = false,
Callback = function(qmv)
be(qmv)
end,
}, _d("WBxFUy4REUEaaVMdHxdQKlFVHxUWVAFfXx8"))

rqc.miscSection:Toggle({
Name = _d("dABCX1EiC1kZ"),
Default = true,
Callback = function(jsj)
rqc.autoRoll = jsj

if jsj and rqc.setRollButton then
rqc.setRollButton(_d("dABCXyMfCFk3Q0QFHwo"), true)
end
end,
}, _d("WBxFUy4REUEaaUIeHAg"))

rqc.miscSection:Toggle({
Name = _d("dABCX1EhEVwWXRAjHwhZ"),
Default = true,
Callback = function(gdh)
rqc.autoQuickRoll = gdh

if gdh and rqc.setRollButton then
rqc.setRollButton(_d("ZABfUxoiC1kZdEUFBAtb"), true)
end
end,
}, _d("WBxFUy4REUEaaUEEGQdeKkRfHRw"))

rqc.uiSection = rqc.tab:Section({
Side = _d("ZxxRWAU"),
})

rqc.uiSection:Header({
Name = _d("YDw"),
})

rqc.uiSection:Toggle({
Name = _d("dxRVWxYCC0AbUhATHBFH"),
Default = true,
Callback = function(uhn)
pcall(function()
zpzc:SetAcrylicBlurState(uhn)
end)
end,
}, _d("QBxpUhATD1IHWUUfFDtXGUNC"))

function rqc.widthFactor(yjvt)
return 1 + math.max(0, (yjvt or 1) - 1) * 0.8
end

function rqc.scaleCap()
local vuz = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local xirn = math.min(120, math.floor(((vuz.Y - 40 - 8 - 8) / 500) * 100))

while xirn > 50 and (rqc.baseWidth or 720) * (xirn / 100) * rqc.widthFactor(xirn / 100) > vuz.X - 16 do
xirn = xirn - 1
end

return math.max(50, xirn)
end

function rqc.scaleCeiling()
return math.min(1.2, rqc.scaleCap() / 100)
end

function rqc.refreshScaleCap()
local ovl = rqc.scaleSlider

if not ovl then
return
end

local ia = rqc.scaleCeiling()

pcall(function()
ovl.Settings.Maximum = ia
end)

local xvp = tonumber(ovl:GetValue()) or 1

if xvp > ia then
rqc.scaleTarget = ia

pcall(function()
ovl:UpdateValue(ia)
end)
end
end

rqc.scaleSlider = rqc.uiSection:Slider({
Name = _d("YDwWQxIRCFA"),
Default = 1,
Minimum = 0.5,

Maximum = rqc.scaleCeiling(),
DisplayMethod = _d("YxRaRRQ"),
Precision = 2,

Callback = function(qdja)
rqc.scalePending = tonumber(qdja)
rqc.scalePendingAt = os.clock()
end,
onInputComplete = function(zftv)
local foe = rqc.scaleCeiling()

rqc.scaleTarget = math.clamp(tonumber(zftv) or rqc.scalePending or 1, 0.5, foe)
rqc.scalePending = nil

rqc.scaleAnchor = nil

rqc.saveUi()
end,
}, _d("QBxpQxIRCFA"))

rqc.refreshScaleCap()

rqc.themeDropdown = rqc.uiSection:Dropdown({
Name = _d("YR1TXRRKRGMaX1Q"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = rqc.themeOrder,
Callback = function(sfoj)
local xbcn = type(sfoj) == _d("QRRUXBQ") and sfoj[1] or sfoj

if type(xbcn) == _d("RgFEWR8X") and rqc.presets[xbcn] then
rqc.theme = xbcn
rqc.accent = nil
rqc.applyTheme()

pcall(function()
rqc.themeDropdown:UpdateName(_d("YR1TXRRKRA") .. xbcn)
end)

rqc.saveUi()
end
end,
}, _d("QBxpRBkVCVA"))

rqc.accentPicker = rqc.uiSection:Colorpicker({
Name = _d("dBZVVR8ERFYaWl8EAg"),
Default = Color3.fromRGB(168, 170, 176),
Alpha = 0,
Callback = function(fst)
rqc.accent = fst
rqc.applyTheme()
rqc.saveUi()
end,
}, _d("QBxpURITAVsB"))

rqc.codesSection = rqc.tab:Section({
Side = _d("ZxxRWAU"),
})

rqc.codesSection:Header({
Name = _d("dhpSVQI"),
})

rqc.codeText = _d("ZxBSVRQdFxUQQFUDCURWGlJVUQQMXAYWVxAdARUGXlkBA0RCHEJYXVALWxAWVQcVFkxVVV8EAAhQVVlWUQMBVhpYVAJe")

function rqc.setCodeText(cmsw)
rqc.codeText = cmsw

pcall(function()
rqc.codeParagraph:UpdateBody(cmsw)
end)
end

function rqc.redeemCodes()
if rqc.redeeming then
return
end

local bco = xbku.RedeemCode
local cujd = xn:FindFirstChild(_d("eBpSRR0VN1YHX0AFAw"))
local vlao = cujd and cujd:FindFirstChild(_d("dhpSVTUREFQ"))
local vj, qay = false, nil

if bco and vlao then
vj, qay = pcall(function()
return require(vlao)
end)
end

local vobg = vj and type(qay) == _d("QRRUXBQ") and qay.Codes or nil

if not bco or type(vobg) ~= _d("QRRUXBQ") then
rqc.setCodeText(_d("YR1fQ1EGAUcGX18fUAtTVUJYFFADVBhTEBkRFxUbWRASHwBQVVpZAgREWgcWXh5QFlARU1UcUBZQGFlEFF4"))
return
end

local yrq = {}

for urn in pairs(vobg) do
yrq[#yrq + 1] = urn
end

table.sort(yrq)

local oh = #yrq

rqc.redeeming = true
rqc.setCodeText(_d("ZxBSVRQdDVsSFg") .. oh .. _d("FRZZVBQDShtb"))

task.spawn(function()
local uggh, nzfq, mln = 0, 0, 0
local knt = {}

for upyd = 1, oh do
if not vgo() then
break
end

local aeur = yrq[upyd]
local omwf, ctt = pcall(function()
return bco:InvokeServer(aeur)
end)

local lxhy = omwf and type(ctt) == _d("QRRUXBQ") and ctt.success == true
local qtjq = omwf and type(ctt) == _d("QRRUXBQ") and tostring(ctt.message or _d("")) or tostring(ctt or _d(""))

if not lxhy and string.find(string.lower(qtjq), _d("QhRfRA"), 1, true) then
task.wait(3.5)

omwf, ctt = pcall(function()
return bco:InvokeServer(aeur)
end)

lxhy = omwf and type(ctt) == _d("QRRUXBQ") and ctt.success == true
qtjq = omwf and type(ctt) == _d("QRRUXBQ") and tostring(ctt.message or _d("")) or tostring(ctt or _d(""))
end

if lxhy then
uggh = uggh + 1
elseif string.find(string.lower(qtjq), _d("VBlEVRAUHQ"), 1, true) then
nzfq = nzfq + 1
else
mln = mln + 1

if #knt < 6 then
knt[#knt + 1] = aeur .. _d("D1U") .. (qtjq ~= _d("") and qtjq or _d("WxoWUR8DE1AH"))
end
end

rqc.setCodeText(string.format(_d("EBEWXxdQQVFVGxBUFERHEFJVFB0BUVkWFRVQBVkHU1EVCUgVUFIQAxUCQAZTVF8"), upyd, oh, uggh, nzfq, mln))

if upyd < oh and vgo() then
task.wait(1.8)
end
end

local zrhe = {
string.format(_d("ZxBSVRQdAVFVE1RdUAVZB1NRFQlEXRRSEFQUSBUHU1YEAwFRVRNUUR8CFVBSHg"), uggh, nzfq, mln, oh),
}

for kbzq, fvjh in ipairs(knt) do
zrhe[#zrhe + 1] = fvjh
end

rqc.redeeming = false
rqc.setCodeText(table.concat(zrhe, _d("Pw")))
end)
end

rqc.codesSection:Button({
Name = _d("ZxBSVRQdRFQZWhASHwBQBg"),
Callback = function()
rqc.redeemCodes()
end,
})

rqc.codeParagraph = rqc.codesSection:Paragraph({
Header = _d("dhpSVQI"),
Body = rqc.codeText,
})

rqc.scriptSection = rqc.tab:Section({
Side = _d("ZxxRWAU"),
})

rqc.scriptSection:Header({
Name = _d("ZhZEWQEE"),
})

rqc.scriptSection:Button({
Name = _d("YBtaXxAUREYWRFkBBA"),
Callback = function()
pcall(function()
zpzc:Unload()
end)

getgenv().ACBXWindow = nil
getgenv().ACBXAllowReload = nil
end,
})

task.spawn(function()
while vgo() do

if os.clock() >= rqc.savesAt then
rqc.savesAt = os.clock() + 3

local zxyo = rqc.saves()
local cani = table.concat(zxyo, _d("SQ"))

if cani ~= rqc.knownSaves then
rqc.knownSaves = cani

pcall(function()
rqc.fileDropdown:ClearOptions()
rqc.fileDropdown:InsertOptions(zxyo)
end)
end

if rqc.selected and rqc.selectionShown ~= rqc.selected then
rqc.selectionShown = rqc.selected

pcall(function()
rqc.fileDropdown:UpdateSelection(rqc.selected)
end)
end
end

if rqc.autoSave and os.clock() >= rqc.autoSaveAt then
rqc.autoSaveAt = os.clock() + 60

local ec = rqc.selected or _d("URBQUQQcEA")
local rt, tuk = rqc.save(ec)

rqc.selected = ec
rqc.lastText = rt and (_d("dABCX1EDBUMQUhA") .. ec .. _d("FRRCEA") .. os.date(_d("ED0MFTw")) .. _d("Gw"))
or (_d("dABCX1EDBUMQFlYQGQhQEQwQ") .. tostring(tuk))
end

if os.clock() >= rqc.themeAt then
rqc.themeAt = os.clock() + 3
rqc.applyTheme()
end

if os.clock() >= rqc.capAt then
rqc.capAt = os.clock() + 2
rqc.refreshScaleCap()
end

if os.clock() >= rqc.statusAt then
rqc.statusAt = os.clock() + 2

local wbob = rqc.autoLoadName()
local zyfm = table.concat({
_d("dABCX1EcC1QRDBA") .. (wbob or _d("WxpYVQ")),
_d("ZhRAVQJKRA") .. tostring(#rqc.saves()),
rqc.lastText,
}, _d("Pw"))

if zyfm ~= rqc.shownStatus then
rqc.shownStatus = zyfm

pcall(function()
rqc.statusParagraph:UpdateBody(zyfm)
end)
end
end

task.wait(0.25)
end
end)

task.spawn(function()
while vgo() do

local yoo = rqc.scalePending

if yoo and os.clock() - (rqc.scalePendingAt or 0) > 0.35 then
local vpo = rqc.scaleCeiling()
local wzv = math.clamp(yoo, 0.5, vpo)

rqc.scalePending = nil

if math.abs(wzv - rqc.scaleTarget) > 0.002 then
rqc.scaleTarget = wzv
rqc.scaleAnchor = nil

rqc.saveUi()
end
end

if math.abs(rqc.scaleTarget - rqc.scale) > 0.002 then
local lqia = rqc.guiRoot()

if lqia and not rqc.baseWidth then
rqc.baseWidth = lqia.Size.X.Offset
rqc.baseHeight = lqia.Size.Y.Offset
end

local ktr = rqc.baseWidth or 720
local fgkf = rqc.baseHeight or 500
local nk = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local ssoe, jwbn = 8, 40

if not rqc.scaleAnchor and lqia then

local ahyt = rqc.widthFactor(rqc.scaleTarget)
local wcmb, klu = ktr * ahyt * rqc.scaleTarget, fgkf * rqc.scaleTarget
local vpro = lqia.AbsolutePosition

rqc.scaleAnchor = Vector2.new(
math.clamp(vpro.X, ssoe, math.max(ssoe, nk.X - wcmb - ssoe)),
math.clamp(vpro.Y, jwbn, math.max(jwbn, nk.Y - klu - ssoe))
)
end

local fgr = rqc.scaleAnchor

rqc.scale = rqc.scale + (rqc.scaleTarget - rqc.scale) * 0.18

local hssc = rqc.widthFactor(rqc.scale)

pcall(function()
zpzc:SetScale(rqc.scale)

if lqia then
local rw = math.floor(ktr * hssc)

lqia.Size = UDim2.fromOffset(rw, math.floor(fgkf))

local tta = lqia:FindFirstChild(_d("dhpYRBQeEA"))

if tta then
local itbj = lqia:FindFirstChild(_d("ZhxSVRMRFg"))
local yzz = math.floor(itbj and itbj.Size.X.Scale * rw or rw * 0.325)

tta.Size = UDim2.new(0, math.max(0, rw - yzz), 1, 0)
end
end
end)

if lqia and fgr then
local vzb, fa = ktr * hssc * rqc.scale, fgkf * rqc.scale
local foit = math.clamp(fgr.X, ssoe, math.max(ssoe, nk.X - vzb - ssoe))
local tnn = math.clamp(fgr.Y, jwbn, math.max(jwbn, nk.Y - fa - ssoe))

local xyk = lqia.Parent and lqia.Parent.AbsolutePosition or Vector2.zero

pcall(function()
lqia.Position = UDim2.fromOffset(math.floor(foit - xyk.X), math.floor(tnn - xyk.Y))
end)
end
else

rqc.scaleAnchor = nil
end

task.wait()
end
end)

unl.misc.tierLabels = {}
unl.misc.labelToTier = {}

unl.misc.expSection = unl.misc.tab:Section({
Side = _d("eRBQRA"),
})

unl.misc.expSection:Header({
Name = _d("cA1GVRUZEFwaWENRgPui99mI/g"),
})

unl.misc.claimToggle = unl.misc.expSection:Toggle({
Name = _d("dABCX1ETCFQcWw"),
Default = false,
Callback = function(kshg)
local chm = unl.misc.expeditions

chm.enabled = kshg
chm.claimAt = 0

if kshg then
chm.askedAt = 0
chm.request()
end
end,
}, _d("VABCXy4TCFQcWw"))

unl.misc.rewardToggle = unl.misc.expSection:Toggle({
Name = _d("dABCX1ETCFoGUxADFRNUB1JD"),
Default = false,
Callback = function(htc)
local ls = unl.misc.expeditions

ls.autoClose = htc

if htc then
ls.closeRewards()
end
end,
}, _d("UA1GbxAFEFoqVVweAwE"))

unl.misc.startToggle = unl.misc.expSection:Toggle({
Name = _d("dABCX1EDEFQHQg"),
Default = false,
Callback = function(szv)
local dwoz = unl.misc.expeditions

if szv and not next(dwoz.tiersWanted) then
dwoz.autoStart = false

pcall(function()
unl.misc.startToggle:UpdateState(false)
end)

zpzc:Dialog({
Title = _d("dABCX1EDEFQHQhAfFQFRBhZRUQQNUAc"),
Description = _d("ZRxVW1EREBUZU1ECBERaG1MQBRkBR1VfXlEEDFBVYlkUAkRRB1lAFR8TW1VQWQMDEBtVc1ECCURBFF1VAlAQXRAWUxkVBUUQRURREwVHEUUcUT4NUh1CXRACARUBXlVRAgVHEEVEXVAFWxEWUR8JRFsAW1IUAkRaExZEGRUJFRZXXlECEVtVV0RRHwpWEBg"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})

return
end

dwoz.autoStart = szv
dwoz.startedAt = {}

if szv then
dwoz.askedAt = 0
dwoz.request()
end
end,
}, _d("VABCXy4DEFQHQg"))

for rs, gogt in ipairs(unl.misc.expeditions.tiers()) do
table.insert(unl.misc.tierLabels, tostring(gogt.name))
unl.misc.labelToTier[tostring(gogt.name)] = gogt.id
end

unl.misc.building = true

unl.misc.tierDropdown = unl.misc.expSection:Dropdown({
Name = _d("YRxTQg"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = unl.misc.tierLabels,
Callback = function(xjbp)
local ucvt = unl.misc.expeditions

if unl.misc.building then
return
end

local ucf = {}
local cqt = {}

if type(xjbp) == _d("QRRUXBQ") then
for vpyf, xpzb in pairs(xjbp) do
local rplq = unl.misc.labelToTier[tostring(vpyf)]

if xpzb and rplq then
ucf[rplq] = true
table.insert(cqt, tostring(vpyf))
end
end
end

table.sort(cqt)
ucvt.tiersWanted = ucf

pcall(function()
unl.misc.tierDropdown:UpdateName(#cqt > 0 and (_d("YRxTQlGS5JdV") .. table.concat(cqt, _d("GVU"))) or _d("YRxTQlGS5JdVWF8fFQ"))
end)
end,
}, _d("QRxTQg"))

task.defer(function()
unl.misc.building = false
end)

unl.misc.expSection:Button({
Name = _d("dhlXWRxQCloC"),
Callback = function()
local pv = unl.misc.expeditions

if not pv.claim() then
zpzc:Notify({
Title = _d("cA1GVRUZEFwaWEM"),
Description = _d("expCWBgeAxUdV0NREwtYEBZSEBMPFQxTRF8"),
Lifetime = 5,
})
end
end,
})

unl.misc.expSection:Button({
Name = _d("ZhBYVFEDAVkQVUQUFA"),
Callback = function()
local asiy = unl.misc.expeditions

if not next(asiy.tiersWanted) then
zpzc:Notify({
Title = _d("cA1GVRUZEFwaWEM"),
Description = _d("ZRxVW1EREBUZU1ECBERaG1MQBRkBR1VfXlEEDFBVUkIeAABaAlgQFxkWRgEY"),
Lifetime = 5,
})

return
end

local qooy = {}
local psqv = 0

for hbl, lkr in ipairs(asiy.tiers()) do
if asiy.tiersWanted[lkr.id] and asiy.status(lkr.id) == _d("VANXWR0RBlkQ") then
if asiy.start(lkr.id, qooy) then
psqv = psqv + 1
end
end
end

if psqv == 0 then
zpzc:Notify({
Title = _d("cA1GVRUZEFwaWEM"),
Description = _d("expCWBgeAxUWWUUdFERXEBZDFB4QD1VCWBRQF1AZU1MFFQAVAV9VAwNEVAdTEBAcFlAUUklRHxFBWRZfA1AQXRBEVVERFlBVWF8FUAJaAEQQFBwNUhxUXBRQB1QHUkNRFgtHVUJYFB1K"),
Lifetime = 6,
})
end
end,
})

unl.misc.expInfo = unl.misc.tab:Section({
Side = _d("ZxxRWAU"),
})

unl.misc.expInfo:Header({
Name = _d("cA1GVRUZEFwaWEM"),
})

unl.misc.expParagraph = unl.misc.expInfo:Paragraph({
Header = _d("ZgFXRAQD"),
Body = unl.misc.expeditions.text(),
})

unl.misc.expeditions.loadRewards()

unl.misc.expRewardParagraph = unl.misc.expInfo:Paragraph({
Header = _d("dhlXWRwVAA"),
Body = unl.misc.expeditions.rewardsText(),
})

task.spawn(function()
local cvv = unl.misc.expeditions
local grc = zr(_d("ZgxYUzQIFFARX0QYHwpG"), 3)

if grc then
nhka(grc.OnClientEvent, function(dfsx)
if type(dfsx) ~= _d("QRRUXBQ") then
return
end

cvv.state = dfsx

cvv.offset = (tonumber(dfsx.now) or os.time()) - os.time()
cvv.syncedAt = os.clock()

if type(dfsx.rewards) == _d("QRRUXBQ") and #dfsx.rewards > 0 then
table.insert(cvv.rewardLog, 1, {
at = os.time(),
title = tostring(dfsx.rewardTitle or _d("cA1GVRUZEFwaWA")),
items = dfsx.rewards,
})

while #cvv.rewardLog > 8 do
table.remove(cvv.rewardLog)
end

cvv.saveRewards()

if cvv.autoClose then

task.delay(0.35, cvv.closeRewards)
end
end
end)
end

while vgo() do

if os.clock() - cvv.askedAt > 1 and os.clock() - cvv.syncedAt > 20 then
cvv.request()
end

if cvv.enabled then
cvv.claim()
end

if cvv.autoClose then
cvv.closeRewards()
end

if cvv.autoStart and next(cvv.tiersWanted) then
local jiqo = {}

for trc, gu in ipairs(cvv.tiers()) do
if cvv.tiersWanted[gu.id] and cvv.status(gu.id) == _d("VANXWR0RBlkQ") then
if cvv.start(gu.id, jiqo) then
break
end
end
end
end

local umba = cvv.text()

if unl.misc.expParagraph and umba ~= unl.misc.expShown then
unl.misc.expShown = umba

pcall(function()
unl.misc.expParagraph:UpdateBody(umba)
end)
end

local rpw = cvv.rewardsText()

if unl.misc.expRewardParagraph and rpw ~= cvv.rewardsShown then
cvv.rewardsShown = rpw

pcall(function()
unl.misc.expRewardParagraph:UpdateBody(rpw)
end)
end

task.wait(0.75)
end
end)

unl.misc.util = {
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

function unl.misc.util.hook()
local ojv = unl.misc.util

if ojv.hooked then
return
end

ojv.hooked = true

if xbku.SyncCollection then
nhka(xbku.SyncCollection.OnClientEvent, function(drqm)
if type(drqm) == _d("QRRUXBQ") then
ojv.profile = drqm
ojv.profileAt = os.clock()
end
end)
end

if xbku.SyncAchievements then
nhka(xbku.SyncAchievements.OnClientEvent, function(nnle)
if type(nnle) == _d("QRRUXBQ") then
ojv.ach = nnle
end
end)
end

if xbku.SyncQuests then
nhka(xbku.SyncQuests.OnClientEvent, function(tv)
if type(tv) == _d("QRRUXBQ") and type(tv.list) == _d("QRRUXBQ") then
ojv.quests = tv
end
end)
end

if xbku.SyncPeriodicQuests then
nhka(xbku.SyncPeriodicQuests.OnClientEvent, function(xea, ykf)
if xea == _d("QhBTWx0J") and type(ykf) == _d("QRRUXBQ") and type(ykf.list) == _d("QRRUXBQ") then
ojv.weekly = ykf
end
end)
end
end

function unl.misc.util.askProfile()
local xczy = unl.misc.util

if os.clock() - xczy.askedAt < 1.5 then
return
end

xczy.askedAt = os.clock()

if xbku.RequestSync then
pcall(function()
xbku.RequestSync:FireServer()
end)
end
end

function unl.misc.util.currentProfile()
local epk = unl.misc.util

if type(epk.profile) ~= _d("QRRUXBQ") then
epk.askProfile()

return nil
end

if os.clock() - epk.profileAt > 20 then
epk.askProfile()
end

return epk.profile
end

function unl.misc.util.forgetProfile()
local kxco = unl.misc.util

kxco.profile = nil
kxco.profileAt = 0
kxco.askedAt = 0
end

function unl.misc.util.indexedTotal(tqw)
local lwss = 0

for jvqq, iqq in pairs((tqw and tqw.cardIndex) or {}) do
if iqq then
lwss = lwss + 1
end
end

return lwss
end

function unl.misc.util.indexPending(geya)
local jfwh = {}

if type(geya) ~= _d("QRRUXBQ") then
return jfwh
end

local ce = unl.misc.util.indexedTotal(geya)
local cm = geya.indexMilestones or {}

for dyq = 1, 30 do
if not cm[dyq] and dyq * 5 <= ce then
table.insert(jfwh, dyq)
end
end

return jfwh
end

function unl.misc.util.indexFrame()
local apks = ubll:FindFirstChild(_d("dhREVDgeAFANcUUY"))

return apks and apks:FindFirstChild(_d("fBtSVQk2FlQYUw"))
end

function unl.misc.util.clickButton(co)
if not co then
return false
end

if firesignal then
local eeoq = pcall(firesignal, co.MouseButton1Click)

if eeoq then
return true
end
end

return pcall(function()
co:Activate()
end)
end

function unl.misc.util.closeIndex()
local lrqx = unl.misc.util.indexFrame()

if not lrqx or not lrqx.Visible then
return false
end

pcall(function()
local cdi = xn:FindFirstChild(_d("eBpSRR0VN1YHX0AFAw"))
local vr = cdi and cdi:FindFirstChild(_d("eBBYRTwRClQSU0I"))

if vr then
require(vr).close(lrqx)
end
end)

unl.misc.util.clickButton(lrqx:FindFirstChild(_d("dhlZQxQyEUEBWV4")))

pcall(function()
lrqx.Visible = false
end)

return true
end

function unl.misc.util.claimIndex()
local akdh = unl.misc.util

if os.clock() < akdh.indexAt then
return false
end

local au = akdh.currentProfile()

if not au then
return false
end

local tcv = akdh.indexPending(au)
local dqs = tcv[1]

if not dqs then
return false
end

local tys = akdh.indexedTotal(au)
local zrn = akdh.indexAsked

if type(zrn) == _d("QRRUXBQ") and zrn.milestone == dqs and zrn.total == tys then
return false
end

akdh.indexAsked = { milestone = dqs, total = tys }

pcall(function()
xbku.ClaimIndexReward:FireServer(dqs)
end)

akdh.indexAt = os.clock() + 1.5

akdh.profile = nil
akdh.profileAt = 0

task.delay(0.4, akdh.closeIndex)

return true
end

function unl.misc.util.achPending()
local vwhb = {}
local qp = unl.misc.util.ach

if type(qp) ~= _d("QRRUXBQ") then
return vwhb
end

for itif, rdnw in ipairs(qp.chains or {}) do
for eck, crxh in ipairs(rdnw.levels or {}) do
if crxh.reached and not crxh.claimed then
table.insert(vwhb, { chain = tostring(rdnw.id), index = crxh.index, name = tostring(crxh.name or crxh.index) })
end
end
end

return vwhb
end

function unl.misc.util.claimAchievement()
local uyyh = unl.misc.util

if os.clock() < uyyh.achAt then
return false
end

if type(uyyh.ach) ~= _d("QRRUXBQ") then
if os.clock() - uyyh.achAskedAt > 4 and xbku.RequestAchievements then
uyyh.achAskedAt = os.clock()

pcall(function()
xbku.RequestAchievements:FireServer()
end)
end

return false
end

for ok, vgy in ipairs(uyyh.achPending()) do
pcall(function()
xbku.ClaimAchievement:FireServer(vgy.chain, vgy.index)
end)

uyyh.achAt = os.clock() + 1

task.delay(1, function()
if xbku.RequestAchievements then
pcall(function()
xbku.RequestAchievements:FireServer()
end)
end
end)

return true
end

return false
end

function unl.misc.util.questRows()
local iyaz = unl.misc.util
local xam = {}

for dhz, bx in ipairs({ { list = _d("URRfXAg"), payload = iyaz.quests }, { list = _d("QhBTWx0J"), payload = iyaz.weekly } }) do
for pncx, rvkl in ipairs((type(bx.payload) == _d("QRRUXBQ") and bx.payload.list) or {}) do
if type(rvkl) == _d("QRRUXBQ") then
table.insert(xam, { list = bx.list, index = pncx, quest = rvkl })
end
end
end

return xam
end

function unl.misc.util.questPending()
local osl = {}

for mx, wka in ipairs(unl.misc.util.questRows()) do
local ann = wka.quest

if not ann.claimed and (tonumber(ann.progress) or 0) >= (tonumber(ann.target) or math.huge) then
table.insert(osl, wka)
end
end

return osl
end

function unl.misc.util.askQuests()
local mti = unl.misc.util

if os.clock() - mti.questAskedAt > 4 and xbku.RequestQuests then
mti.questAskedAt = os.clock()

pcall(function()
xbku.RequestQuests:FireServer()
end)
end

if os.clock() - mti.weeklyAskedAt > 4 and xbku.RequestPeriodicQuests then
mti.weeklyAskedAt = os.clock()

pcall(function()
xbku.RequestPeriodicQuests:FireServer(_d("QhBTWx0J"))
end)
end
end

function unl.misc.util.claimQuest()
local ys = unl.misc.util

if os.clock() < ys.questAt then
return false
end

if type(ys.quests) ~= _d("QRRUXBQ") and type(ys.weekly) ~= _d("QRRUXBQ") then
ys.askQuests()

return false
end

for nkxe, zsjg in ipairs(ys.questPending()) do
if zsjg.list == _d("QhBTWx0J") then
if xbku.ClaimPeriodicQuest then
pcall(function()
xbku.ClaimPeriodicQuest:FireServer(_d("QhBTWx0J"), zsjg.index)
end)
end
else
pcall(function()
xbku.ClaimQuest:FireServer(zsjg.index)
end)
end

ys.questAt = os.clock() + 1.2

task.delay(1, function()
ys.askQuests()
end)

return true
end

return false
end

function unl.misc.util.packCatalog()
local uaml = unl.misc.util

if uaml.packs then
return uaml.packs
end

local tci = {}
local vmv, bdml = pcall(function()
return require(xn.ModuleScripts.PackData)
end)

if vmv and type(bdml) == _d("QRRUXBQ") and type(bdml.Packs) == _d("QRRUXBQ") then
for zrfo, hoeg in ipairs(bdml.Packs) do
if hoeg.id then
table.insert(tci, { id = tostring(hoeg.id), name = tostring(hoeg.name or hoeg.id) })
end
end
end

uaml.packs = tci

return tci
end

function unl.misc.util.packUnlocked(nc, fhp)
if type(nc) ~= _d("QRRUXBQ") then
return true
end

local pjle, uesp = pcall(function()
return require(xn.ModuleScripts.PackData)
end)
local wpue, puax = pcall(function()
return require(xn.ModuleScripts.PackSlotData)
end)

if not (pjle and wpue) then
return true
end

local hsqo = uesp.ById and uesp.ById[fhp]

if not hsqo then
return false
end

local fq, hk = pcall(puax.isPackUnlocked, hsqo, nc)

return (not fq) or hk == true
end

function unl.misc.util.visit(wiqf)
local usl = workspace:FindFirstChild(_d("eyV1Qw"))
local yzrb = usl and usl:FindFirstChild(wiqf)
local qwrw = kdim.Character
local chen = qwrw and qwrw:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))
local hn = yzrb and (yzrb:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ")) or yzrb:FindFirstChildWhichIsA(_d("dxRFVSERFkE"), true))

if not (hn and chen) then
return nil
end

local ufpf = chen.CFrame

chen.CFrame = CFrame.new((hn.CFrame * CFrame.new(0, 0, -5)).Position)

return ufpf
end

function unl.misc.util.returnTo(ymkj)
local ufrt = kdim.Character
local lseq = ufrt and ufrt:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if lseq and ymkj then
lseq.CFrame = ymkj
end
end

function unl.misc.util.applyPacks(dbgh, mbak)
local aifu = unl.misc.util

if os.clock() < aifu.packAt then
return false, _d("YhRfRFERRFgaW1UfBEo")
end

local jeyy = aifu.currentProfile()

if not jeyy then
return false, _d("ZxBXVBgeAxUMWUUDUBRHGlBZHRVEGFVCQghQBVIUX15RGQoVFBZDFBMLWxEY")
end

if mbak and (tonumber(jeyy.packSlots) or 1) < 2 then
return false, _d("ZhlZRFFCRFsQU1QCUBBdEBZVCQQWVFVGURIbREYZWURRFwVYEEZRAgNK")
end

if not (xbku.OpenPackShop and xbku.EquipPack) then
return false, _d("YR1TEAERB15VRVgeAERcBhZeHgREXBsWRBkZFxUSV10UUBJQB0VZHh5K")
end

aifu.packAt = os.clock() + 8

task.spawn(function()
local ifai = aifu.visit(_d("expUXBQDF1wbUUM"))

if not ifai then
return
end

pcall(function()
xbku.OpenPackShop:FireServer(_d("RRRVWy4dAUcWXlEfBA"))
end)

task.wait(1.2)

if dbgh then
pcall(function()
xbku.EquipPack:FireServer(dbgh, 1)
end)
end

if mbak then
task.wait(0.8)

pcall(function()
xbku.EquipPack:FireServer(mbak, 2)
end)
end

task.wait(0.8)
aifu.returnTo(ifai)
aifu.forgetProfile()
end)

return true
end

function unl.misc.util.accScore(kmu)
local scry = kmu.effects or {}

return (scry.luckBonus or 0) * 10
+ ((scry.luckMult or 1) - 1) * 200
+ ((scry.borderLuckMult or 1) - 1) * 200
- ((scry.rollCdMult or 1) - 1) * 30
end

function unl.misc.util.accCatalog()
local ekx = unl.misc.util

if ekx.accessories then
return ekx.accessories
end

local hpyc = {}

for nuwk, vzhi in ipairs({ _d("dBZVVQIDC0cMclEFEQ"), _d("dBZVVQIDC0cMclEFEVY") }) do
local xte, ecox = pcall(function()
return require(xn.ModuleScripts[vzhi])
end)

if xte and type(ecox) == _d("QRRUXBQ") and type(ecox.Accessories) == _d("QRRUXBQ") then
for ahr, hpvs in ipairs(ecox.Accessories) do
if hpvs.id then
table.insert(hpyc, {
id = tostring(hpvs.id),
name = tostring(hpvs.name or hpvs.id),
shop = nuwk,

shopName = nuwk == 1 and _d("dBZVVQIDC0cMFmMZHxQ") or _d("eAxFRBQCDVoARRA8EQo"),
raidable = hpvs.raidShopOnly == true,
hidden = hpvs.hidden == true,
requirements = hpvs.requirements or {},
score = unl.misc.util.accScore(hpvs),
})
end
end
end
end

ekx.accessories = hpyc

return hpyc
end

function unl.misc.util.accOwned(ij)
local ssq = {}

for vvm, nun in ipairs((ij and ij.accessories) or {}) do
ssq[tostring(nun)] = true
end

return ssq
end

function unl.misc.util.accMeets(atob, ikqd)
for pry, oe in ipairs(ikqd.requirements) do
local vpzg = atob.cards and atob.cards[oe.cardId]
local xcaa = type(vpzg) == _d("QRRUXBQ") and (tonumber(vpzg[oe.borderLevel]) or 0) or 0

if xcaa < (tonumber(oe.amount) or 0) then
return false
end
end

return true
end

function unl.misc.util.accPlan(katm)
local mhi = unl.misc.util
local hxge = mhi.accOwned(katm)
local veq = {}

for fp, qdt in ipairs(mhi.accCatalog()) do
if not hxge[qdt.id] and not qdt.raidable and not qdt.hidden and mhi.accMeets(katm, qdt) then
local vgtp = veq[qdt.shop]

if not vgtp or qdt.score > vgtp.score then
veq[qdt.shop] = qdt
end
end
end

return veq
end

function unl.misc.util.accPicks(hryv)
local gfr = unl.misc.util
local sy = gfr.accOwned(hryv)
local ihqr, vjzj

for rlj, dbfx in ipairs(gfr.accCatalog()) do
if sy[dbfx.id] then
if not ihqr or dbfx.score > ihqr.score then
ihqr = dbfx
end
elseif not dbfx.raidable and not dbfx.hidden and gfr.accMeets(hryv, dbfx) then
if not vjzj or dbfx.score > vjzj.score then
vjzj = dbfx
end
end
end

return ihqr, vjzj
end

function unl.misc.util.equipBest()
local lidu = unl.misc.util
local kdp = lidu.currentProfile()

if not kdp or not xbku.EquipAccessory then
return false
end

local lgp = lidu.accPicks(kdp)

if not lgp or kdp.equippedAccessory == lgp.id then
return lgp ~= nil
end

pcall(function()
xbku.EquipAccessory:FireServer(lgp.id)
end)

task.delay(1.5, function()
lidu.forgetProfile()
end)

return true
end

function unl.misc.util.buyBest()
local miau = unl.misc.util

if os.clock() < miau.accAt then
return false, _d("YhRfRFERRFgaW1UfBEo")
end

if cq.busy(1) or cq.busy(2) then
miau.accNote = _d("fBsWUVESBUEBWlVRXURUVUVYHgBEQQdfQFEHC0AZUhAUHgAVHEI")
return false, _d("fBsWUVESBUEBWlVRXURUVUVYHgBEQQdfQFEHC0AZUhAUHgAVHEIe")
end

local yevp = miau.currentProfile()

if not yevp then
miau.accNote = _d("ZxBXVBgeAxUMWUUDUBRHGlBZHRVEGFVBWR0cREEHTxAQFwVcGxZZH1AFFQZTUx4eAA")
return false, _d("ZxBXVBgeAxUMWUUDUBRHGlBZHRVEGFVCQghQBVIUX15RGQoVFBZDFBMLWxEY")
end

local ywjl = miau.accPlan(yevp)
local ebxp = {}

for hsx = 1, 2 do
if ywjl[hsx] then
table.insert(ebxp, ywjl[hsx].name)
end
end

if #ebxp == 0 then
miau.accNote = _d("expCWBgeAxUbU0dRBQpZGlVbFBRETBBCEFxQEF0QFlMQAgBGVVBfA1ANQVVXQhRQCloBFlkfUBBdEBZTHhwIUBZCWR4e")
return false, _d("expCWBgeAxUbU0dREwVbVVRVUQUKWRpVWxQUREwQQhBcUBBdEBZTEAIARlVQXwNQDUFVV0IUUApaARZZH1AQXRAWUx4cCFAWQlkeHko")
end

miau.accAt = os.clock() + 12
miau.accNote = _d("YhRaWxgeAxUBWRAFGAEVFllFHwQBR1VQXwNQ") .. table.concat(ebxp, _d("FRRYVFE"))

task.spawn(function()
for czm = 1, 2 do
local ddt = ywjl[czm]

if ddt then
local yn = czm == 1 and _d("RQBEQwQZEFARUg") or _d("QhRQVhQcCVQbU1EFAxNUE1BVHQM")
local tdu = czm == 1 and xbku.OpenAccessoryShop or xbku.OpenAccessoryShop2
local zopk = czm == 1 and xbku.BuyAccessory or xbku.BuyAccessory2
local cbq = yn and miau.visit(yn) or nil

if not cbq then
local hqqy = workspace:FindFirstChild(_d("eyV1Qw"))
local rujo = hqqy and hqqy:FindFirstChild(yn)

if rujo and os.clock() - (miau.worldAskedAt or 0) > 25 then

miau.worldAskedAt = os.clock()
miau.accNote = _d("dh1XQhATEFAHFl4eBERHEFdUCFBJFQFESRgeAxUUUVEYHkRGHVlCBRwd")
elseif not rujo and os.clock() - (miau.worldAskedAt or 0) > 25 then

miau.worldAskedAt = os.clock()
miau.accNote = _d("exoWUx4FCkEQRBAYHkRBHV9DUQcLRxlSEFxQEFQeX14WUBBdEBZcHhIGTFVCVR0VFFoHQg")

pcall(function()
xbku.TeleportToWorld:FireServer(_d("WRpUUgg"))
end)

task.wait(4.5)
cbq = miau.visit(yn)
end
end

if cbq and tdu and zopk then

task.wait(0.9)

pcall(function()
tdu:FireServer()
end)

task.wait(1.2)

pcall(function()
zopk:FireServer(ddt.id)
end)

task.wait(0.9)
miau.returnTo(cbq)
miau.accNote = _d("dxpDVxkERA") .. tostring(ddt.name)
elseif not cbq then
miau.accNote = _d("dhpDXBVQCloBFkIUEQddVUJYFFAHWgBYRBQCRBhVQkIIUAVSFF9eURkKFRQWXR4dAVsB")
end

task.wait(0.6)
end
end

miau.forgetProfile()

for avju = 1, 8 do
if type(miau.profile) == _d("QRRUXBQ") then
break
end

miau.askProfile()
task.wait(0.7)
end

miau.equipBest()
end)

return true, table.concat(ebxp, _d("GVU"))
end

function unl.misc.util.indexText()
local pqdf = unl.misc.util

if type(pqdf.profile) ~= _d("QRRUXBQ") then
return _d("ZxBXVBgeAxUMWUUDUAdUB1IQGB4AUA0YHl8")
end

local aojj = pqdf.indexPending(pqdf.profile)
local cks = 0

for fci, hzo in pairs(pqdf.profile.indexMilestones or {}) do
if hzo then
cks = cks + 1
end
end

local ebb = tostring(pqdf.indexedTotal(pqdf.profile)) .. _d("FRZXQhUDRFwbUlUJFQAZVQ") .. tostring(cks) .. _d("FRpQEEJAREcQQVEDFBcVFlpRGB0BUQ")

if #aojj > 0 then
ebb = ebb .. _d("PydTURUJXhU") .. table.concat(aojj, _d("GVU"))
end

return ebb
end

function unl.misc.util.achText()
local dgn = unl.misc.util

if type(dgn.ach) ~= _d("QRRUXBQ") then
return _d("ZxBXVBgeAxUUVVgYFRJQGFNeBQNKG1s")
end

local zta = dgn.achPending()
local mafd = 0

for pqcn, yuw in ipairs(dgn.ach.chains or {}) do
for xah in ipairs(yuw.levels or {}) do
mafd = mafd + 1
end
end

return tostring(#zta) .. _d("FRpQEA") .. tostring(mafd) .. _d("FRRVWBgVElAYU14FA0RHEFdUCA")
end

function unl.misc.util.questText()
local qlsx = unl.misc.util

if type(qlsx.quests) ~= _d("QRRUXBQ") and type(qlsx.weekly) ~= _d("QRRUXBQ") then
return _d("ZxBXVBgeAxUEQ1UCBBcbWxg")
end

local hmb, aif = 0, 0

for fasi, pgr in ipairs(qlsx.questPending()) do
if pgr.list == _d("QhBTWx0J") then
aif = aif + 1
else
hmb = hmb + 1
end
end

local laqg = type(qlsx.quests) == _d("QRRUXBQ") and #(qlsx.quests.list or {}) or 0
local mku = type(qlsx.weekly) == _d("QRRUXBQ") and #(qlsx.weekly.list or {}) or 0

return tostring(hmb) .. _d("FRpQEA") .. tostring(laqg) .. _d("FRFXWR0JREcQV1QIeg")
.. tostring(aif) .. _d("FRpQEA") .. tostring(mku) .. _d("FQJTVRocHRUHU1EVCQ")
end

function unl.misc.util.packText()
local onnv = unl.misc.util
local xjlt = onnv.profile

if type(xjlt) ~= _d("QRRUXBQ") then
return _d("ZxBXVBgeAxUMWUUDUBRUFl1DX15K")
end

local function zpq(cakq)
for xmdm, iibi in ipairs(onnv.packCatalog()) do
if iibi.id == cakq then
return iibi.name
end
end

return tostring(cakq)
end

local bfe = _d("ZhlZRFFBXhU") .. zpq(xjlt.equippedPack)

if (tonumber(xjlt.packSlots) or 1) >= 2 then
bfe = bfe .. _d("PyZaXwVQVg9V") .. zpq(xjlt.equippedPack2)
else
bfe = bfe .. _d("PyZaXwVQVg9VUVEcFRRUBkUQHx8QFRpBXhQU")
end

return bfe
end

function unl.misc.util.accText()
local lrpm = unl.misc.util
local jpo = lrpm.profile

if type(jpo) ~= _d("QRRUXBQ") then
return _d("ZxBXVBgeAxUMWUUDUAVWFlNDAh8WXBBFHl9e")
end

local xy = lrpm.accPicks(jpo)
local url = lrpm.accPlan(jpo)
local qh = _d("WxpYVQ")

for ijqw, zao in ipairs(lrpm.accCatalog()) do
if zao.id == jpo.equippedAccessory then
qh = zao.name .. _d("FV0") .. zao.shopName .. _d("HA")
end
end

local wviw = _d("cARDWQEAAVFPFg") .. qh

if xy then
wviw = wviw .. _d("PzdTQwVQC0IbU1RLUA") .. xy.name
end

wviw = wviw .. _d("PzRVUxQDF1oHTxAiGAtFTxY") .. (url[1] and url[1].name or _d("WxpCWBgeAxUbU0c"))
wviw = wviw .. _d("PzhPQwUVFlwaQ0NRPQVbTxY") .. (url[2] and url[2].name or _d("WxpCWBgeAxUbU0c"))

if lrpm.accNote then
wviw = wviw .. _d("PzlXQwVQEEccRgpR") .. lrpm.accNote
end

return wviw
end

unl.misc.util.hook()
unl.misc.util.askProfile()

unl.misc.indexSection = unl.misc.tab:Section({
Side = _d("eRBQRA"),
})

unl.misc.indexSection:Header({
Name = _d("dhREVFE5ClEQThCB7/ey"),
})

unl.misc.indexToggle = unl.misc.indexSection:Toggle({
Name = _d("dABCX1ETCFQcWw"),
Default = false,
Callback = function(czz)
unl.misc.util.indexOn = czz
unl.misc.util.indexAt = 0

unl.misc.util.indexAsked = nil
end,
}, _d("VABCXy4TCFQcW29D"))

unl.misc.indexSection:Button({
Name = _d("dhlXWRxQCloC"),
Callback = function()
local xd = unl.misc.util

xd.indexAt = 0
xd.indexAsked = nil

if not xd.claimIndex() then
zpzc:Notify({
Title = _d("dhREVFE5ClEQTg"),
Description = _d("exoWXRgcAUYBWV4UUA1GVURVEBQdFQFZEBIcBVwYGA"),
Lifetime = 5,
})
end
end,
})

unl.misc.claimSection = unl.misc.tab:Section({
Side = _d("eRBQRA"),
})

unl.misc.claimSection:Header({
Name = _d("dBZeWRQGAVgQWEQCUEIVJENVAgQXFYWpv/c"),
})

unl.misc.achToggle = unl.misc.claimSection:Toggle({
Name = _d("dABCX1ETCFQcWxAQEwxcEEBVHBUKQQY"),
Default = false,
Callback = function(ndj)
unl.misc.util.achOn = ndj
unl.misc.util.achAt = 0

if ndj and xbku.RequestAchievements then
pcall(function()
xbku.RequestAchievements:FireServer()
end)
end
end,
}, _d("VABCXy4TCFQcW28QEwxcEEBVHBUKQQY"))

unl.misc.questToggle = unl.misc.claimSection:Toggle({
Name = _d("dABCX1ETCFQcWxAABQFGAUU"),
Default = false,
Callback = function(kx)
unl.misc.util.questOn = kx
unl.misc.util.questAt = 0
unl.misc.util.questAskedAt = 0
unl.misc.util.weeklyAskedAt = 0

if kx then
unl.misc.util.askQuests()
end
end,
}, _d("VABCXy4TCFQcW28ABQFGAUU"))

unl.misc.claimSection:Button({
Name = _d("dhlXWRxQBVkZFl4eBw"),
Callback = function()
local bvmv = unl.misc.util

bvmv.achAt = 0
bvmv.questAt = 0

local afsf = bvmv.claimAchievement()
local dia = bvmv.claimQuest()

if not (afsf or dia) then
zpzc:Notify({
Title = _d("dBZeWRQGAVgQWEQCUEIVJENVAgQX"),
Description = _d("expCWBgeAxUcRRADFQVRDBZEHlAHWRRfXV8"),
Lifetime = 5,
})
end
end,
})

unl.misc.packSection = unl.misc.tab:Section({
Side = _d("eRBQRA"),
})

unl.misc.packSection:Header({
Name = _d("dhREVFEgBVYeRRCB7+qB"),
})

unl.misc.packSection:Paragraph({
Header = _d("YQJZEAIcC0EG"),
Body = _d("ZRxVWwJQBUUFWklRHwpZDBZHGRUKFQxZRVEAFlAGRRAwABRZDBZAEBMPRlkWUhQTBUAGUxAFGAEVBkFZBRMMFQJXXBoDREEaFkQZFURYEERTGREKQVs"),
})

local ag = {}
local poq = {}

for rqt, ylo in ipairs(unl.misc.util.packCatalog()) do
table.insert(ag, ylo.name)
poq[ylo.name] = ylo.id
end

unl.misc.packSlotOne = nil
unl.misc.packSlotTwo = nil

unl.misc.packDropdownOne = unl.misc.packSection:Dropdown({
Name = _d("ZhlZRFFB"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = ag,
Callback = function(wqw)
local bj = type(wqw) == _d("QRRUXBQ") and wqw[1] or wqw

unl.misc.packSlotOne = poq[tostring(bj)]
end,
}, _d("RhlZRC5B"))

unl.misc.packDropdownTwo = unl.misc.packSection:Dropdown({
Name = _d("ZhlZRFFC"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = ag,
Callback = function(rxt)
local nmij = type(rxt) == _d("QRRUXBQ") and rxt[1] or rxt

unl.misc.packSlotTwo = poq[tostring(nmij)]
end,
}, _d("RhlZRC5C"))

unl.misc.packSection:Button({
Name = _d("dAVGXAhQFFQWXUM"),
Callback = function()
local vgui = unl.misc.util
local ibr = unl.misc.packSlotOne
local hkc = unl.misc.packSlotTwo

if not ibr then
zpzc:Notify({
Title = _d("dhREVFEgBVYeRQ"),
Description = _d("ZRxVW1ERREUUVVtRFgtHVUVcHgREBFVQWQMDEBs"),
Lifetime = 5,
})

return
end

local ami, ksw = vgui.applyPacks(ibr, hkc)

if not ami then
zpzc:Dialog({
Title = _d("dhREVFEgBVYeRQ"),
Description = ksw,
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})
end
end,
})

unl.misc.cards = {
rarityLabels = { _d("dBla"), _d("expEXRAc"), _d("chpaVA"), _d("ZxRfXhMfEw"), _d("YBtfRhQCF1QZ") },
borderOf = { Normal = 1, Gold = 2, Rainbow = 3, Universal = 4 },
mergeOn = false,
deconOn = false,
mergeWanted = {},
deconWanted = {},
mergeAt = 0,
deconAt = 0,
mergeDone = _d("expCWBgeAxUGU14FUB1QAQ"),
deconDone = _d("expCWBgeAxUGU14FUB1QAQ"),

inFlight = false,

interval = 3600,
manualGap = 20,
manualAt = 0,

protectedPrefixes = { weather = true, boss = true, raid = true, wb = true, fish = true, hw = true, event = true },

deconExceptions = { weather_sayaka = true, weather_caesar = true },

deconConfirmed = false,
burnAskedAt = 0,
}

function unl.misc.cards.isProtected(yoti, nzq)
local leq = unl.misc.cards
local nbly = tostring(yoti or _d(""))
local ani = nbly:match(_d("a11tUVwKVBhMaxtYLw"))

if not (ani and leq.protectedPrefixes[ani]) then
return false
end

return not (leq.deconExceptions[nbly] and nzq == 2)
end

function unl.misc.cards.burnAllowed(rded)
local fl = unl.misc.cards
local hfpa = fl.wantedFor(_d("URBVXx8nBVsBU1Q"))

if not (hfpa == nil or hfpa[3] or hfpa[4]) then
fl.deconConfirmed = false

return true
end

if fl.deconConfirmed then
return true
end

if rded then
return false
end

if os.clock() < (fl.burnAskedAt or 0) then
return false
end

fl.burnAskedAt = os.clock() + 20

zpzc:Dialog({
Title = _d("dwBEXlEiBVwbVF8GUAtHVWNeGAYBRwZXXFETBUcRRQ8"),
Description = _d("dABCX1EUAVYaWEMFAhFWARZDFB4ARlVTRhQCHRUWWUAIUA1bVUJYFFAJVAFVWBgeAxUHWUcCUAVbERZTEB4KWgEWUhRQEVsRWV4UXkQ")
.. _d("YhBXRBkVFhlVVF8CA0gVB1dZFVAGWgZFHFEHC0cZUhATHxdGWRZWGAMMXBtRHFE4BVkZWUcUFQoVFFhUURUSUBtCEBIRFlEGFlEDFURdEFpUURIFVh4WVRgEDFAHFkcQCUo"),
Buttons = {
{
Name = _d("dwBEXlEEDFAY"),
Callback = function()
fl.deconConfirmed = true
fl.deconAt = 0
fl.manualAt = 0

pcall(function()
unl.misc.deconToggle:UpdateState(true)
end)
end,
},
{
Name = _d("dhRYUxQc"),
Callback = function()
pcall(function()
unl.misc.deconToggle:UpdateState(false)
end)
end,
},
},
})

return false
end

function unl.misc.cards.wantedFor(ix)
local irkj = unl.misc.cards[ix] or {}

if next(irkj) == nil or irkj[0] then
return nil
end

return irkj
end

function unl.misc.cards.npcFor(wzdb)
local bgl = workspace:FindFirstChild(_d("eyV1Qw"))

if not bgl then
return nil
end

local vs = wzdb and _d("UwBFVS4eFFY") or _d("URBVXx8DEEcAVUQuHhRW")

for wumk, jfk in ipairs(bgl:GetChildren()) do
if jfk:GetAttribute(_d("eyV1eRU")) == vs then
return jfk
end
end

local hgi = wzdb and { _d("ehpGWB0J"), _d("WhpGXAgV") } or { _d("Zh1XRR0R"), _d("fRRAVSUHC3EUUkM") }

for zm, pkir in ipairs(bgl:GetChildren()) do
for adkl, lnd in ipairs(hgi) do
if pkir.Name == lnd then
return pkir
end
end
end

local vicf = wzdb and { _d("VhREVFEdAUcSX14W"), _d("WhpGWB0J") } or { _d("URBVXx8DEEcAVUQYHwo"), _d("Rh1XRR0R") }

for ayg, uehr in ipairs(bgl:GetChildren()) do
for ajc, wl in ipairs(uehr:GetDescendants()) do
if wl:IsA(_d("YRBORD0RBlAZ")) and wl.Text ~= _d("") then
local mdpk = wl.Text:lower()

for rny, jk in ipairs(vicf) do
if mdpk:find(jk, 1, true) then
return uehr
end
end

break
end
end
end

return nil
end

function unl.misc.cards.rarityText(hc)
local bgxb = unl.misc.cards.wantedFor(hc)

if not bgxb then
return _d("dBla")
end

local rpy = {}

for trqe, xfmx in pairs(unl.misc.cards.borderOf) do
if bgxb[xfmx] then
table.insert(rpy, trqe)
end
end

if #rpy == 0 then
return _d("dBla")
end

table.sort(rpy)

return table.concat(rpy, _d("GVU"))
end

function unl.misc.cards.run(pdd, gx, vug)
local rjf = unl.misc.cards
local mra = unl.misc.util
local seis = pdd and _d("WBBEVxQxEA") or _d("URBVXx8xEA")

if vug then
if os.clock() < rjf[seis] then
return false, _d("expCEBUFARUMU0Rf")
end
elseif os.clock() < rjf.manualAt then
return false, _d("YhRfRFERRFgaW1UfBEo")
end

if rjf.inFlight then
return false, _d("dBtZRBkVFhUWV0IVUBBHHEYQGANEVBlEVRAUHRUHQ14fGQpSWw")
end

local qf = cq.busy(1) and 1 or (cq.busy(2) and 2 or nil)
local fkli = os.clock() - (wioq.floorAt or 0) < 90
local eq = qf ~= nil and cq.towerSlot() == qf and fkli

if qf and not eq then
return false, _d("fBsWUVESBUEBWlVRXURBHVMQBQINRVVBXwQcABUQWFRRGRAb")
end

if lb.battlePending and os.time() < (lb.battlePendingUntil or 0) then
return false, _d("dFVUUQUECFBVX0NRAxBUB0JZHxdEGFVCWBRQEEccRhAGHxFZERZTEB4HUBkWWQVe")
end

if not pdd and not rjf.burnAllowed() then
return false, _d("dhpYVhgCCRUnV1kfEgtCWmNeGAYBRwZXXFEWDUcGQh4")
end

local wtsh = rjf.npcFor(pdd)

if not wtsh then
return false, pdd
and _d("ehpGWB0JRFwGFl4eBERcGxZEGRkXFRhXQFFdREEHV0YUHERBGhZYGB1EVBtSEAECAUYGFlkFUAVSFF9eXw")
or _d("YR1TEBUVB1obRUQDBQdBVXhgMlANRlVYXwVQDVtVQlgYA0RYFEYQXFAQRxRAVR1QEFpVX0RREQpRVUZCFAMXFRxCEBAXBVwbGA")
end

local apu = pdd and xbku.OpenFuseDialog or xbku.OpenDeconstructDialog
local ouyx = pdd and xbku.FuseCards or xbku.DeconstructCards

if not (apu and ouyx) then
return false, _d("YR1XRFEZFxUbWURRGQoVAV5ZAlADVBhTEAcVFkYcWV5f")
end

local qge = pdd and _d("WBBEVxQnBVsBU1Q") or _d("URBVXx8nBVsBU1Q")
local ri = rjf.wantedFor(qge)

rjf.manualAt = os.clock() + rjf.manualGap

if vug then
rjf[seis] = os.clock() + rjf.interval
end

rjf.inFlight = true

task.spawn(function()

local nia = nil

local function ynbo(prmt, pfw)
if pdd then
rjf.mergeDone = prmt
else
rjf.deconDone = prmt
end

if pfw and vug then
rjf[seis] = os.clock() + 120
end

rjf.inFlight = false
end

local hmf = mra.visit(wtsh.Name)

if not hmf then
ynbo(_d("dh1XQhATEFAHFlkCUApaARZCFBEATFUbEAMVEEcMX14WUA1bVUJHHlAJXBtDRBQDSg"), true)

return
end

task.wait(0.9)

local bvy = nil
local uxmm = nhka(apu.OnClientEvent, function(wbvd)
if type(wbvd) == _d("QRRUXBQ") then
bvy = wbvd
end
end)

for wqzm = 1, 3 do
pcall(function()
apu:FireServer()
end)

for awps = 1, 20 do
if bvy then
break
end

task.wait(0.3)
end

if bvy then
break
end

task.wait(1.5)
end

uxmm:Disconnect()
mra.returnTo(hmf)

if type(bvy) ~= _d("QRRUXBQ") then
ynbo(_d("YR1TEBUZBVkaURAVGQAVG1lEUREKRgJTQlFdREcQQkIIGQpSVV9eUQQTWlVbWR8FEFAGGA"), true)

return
end

local bc = {}

for kc, jkpt in ipairs(bvy) do
local jjc = tonumber(jkpt.borderLevel)
local hggn = jkpt.cardId or jkpt.id

if jjc and (not ri or ri[jjc])
and (pdd or not unl.misc.cards.isProtected(hggn, jjc)) then
table.insert(bc, jkpt)
end
end

if #bc == 0 then

unl.misc.cards.closeFrame(pdd)
ynbo(_d("expCWBgeAxUBWRACFQpRVVBfA1A") .. unl.misc.cards.rarityText(qge) .. _d("Gw"))

return
end

if gx then

local puu = {}

for ddqz, ckqw in ipairs(bc) do
if (tonumber(ckqw.count) or 0) >= gx then
table.insert(puu, ckqw)
end
end

if #puu == 0 then
unl.misc.cards.closeFrame(pdd)
ynbo(_d("exoW") .. unl.misc.cards.rarityText(qge) .. _d("FQdZR1EYBUZV") .. gx .. _d("FRZZQBgVFxUMU0Rf"))

return
end

bc = puu

table.sort(bc, function(jiw, yrn)
return (tonumber(jiw.count) or 0) < (tonumber(yrn.count) or 0)
end)

local impg, qbgt = {}, 0

for jicn, kfos in ipairs(bc) do
local zrer = tonumber(kfos.count) or 0

if #impg > 0 and qbgt + zrer > gx then
break
end

table.insert(impg, kfos)
qbgt = qbgt + zrer
end

bc = impg
nia = qbgt
end

local afq = 0

unl.misc.cards.closeFrame(pdd)

if pdd then
if not ri then

pcall(function()
ouyx:FireServer(_d("VBla"), nil)
end)

afq = #bc
else
local nwi = {}

for rlex, stbm in ipairs(bc) do
table.insert(nwi, { stbm.cardId, tonumber(stbm.borderLevel) })
end

pcall(function()
ouyx:FireServer(_d("RhBaVRIEAVEqV1wd"), nwi)
end)

afq = #nwi
end
else
local kkat = {}

for pyj, xazf in ipairs(bc) do
if #kkat >= 25 then
break
end

table.insert(kkat, { xazf.cardId, tonumber(xazf.borderLevel), _d("VBla") })
end

pcall(function()
ouyx:FireServer(kkat)
end)

afq = #kkat
end

ynbo(_d("ZhBYRFE") .. tostring(afq) .. _d("FQdZRw") .. (afq == 1 and _d("") or _d("Rg"))
.. _d("FV0") .. unl.misc.cards.rarityText(qge) .. _d("HA")
.. (nia and (_d("GVU") .. tostring(nia) .. _d("FRZXQhUD")) or _d("")))
end)

return true
end

function unl.misc.cards.closeFrame(cwdh)
pcall(function()
local rrog = cwdh and { _d("cwBFVTYFDQ"), _d("cwBFVTcCBVgQ") } or { _d("cRBVXx8DEEcAVUQ2BQ0"), _d("cRBVXx8DEEcAVUQ3AgVYEA") }
local rcos = require(xn.ModuleScripts.MenuManager)
local gt = ubll:FindFirstChild(rrog[1])
local spq = gt and gt:FindFirstChild(rrog[2])

if spq then
rcos.close(spq)
end

if not cwdh then
local twj = gt and gt:FindFirstChild(_d("cRBVXx8DEEcAVUQjERBQBnBCEB0B"))

if twj then
rcos.close(twj)
else
twj = ubll:FindFirstChild(_d("cRBVXx8DEEcAVUQjERBQBnBCEB0B"))

if twj then
rcos.close(twj)
end
end
end
end)
end

function unl.misc.cards.refresh(sskb)

local lpo = sskb and unl.misc.mergeParagraph or unl.misc.deconParagraph

if not lpo then
return
end

pcall(function()
lpo:UpdateBody(sskb
and unl.misc.cards.mergeText()
or unl.misc.cards.deconText())
end)
end

function unl.misc.cards.mergeText()
local vhfz = unl.misc.cards

return _d("ZxREWQUZAUZPFg") .. vhfz.rarityText(_d("WBBEVxQnBVsBU1Q")) .. _d("Pw") .. vhfz.mergeDone
end

function unl.misc.cards.deconText()
local ivj = unl.misc.cards

return _d("ZxREWQUZAUZPFg") .. ivj.rarityText(_d("URBVXx8nBVsBU1Q")) .. _d("Pw") .. ivj.deconDone
.. _d("PyJTUQUYAUdZFlIeAxcZVURRGBRIFQJZQh0URFcaRUNdUAJcBl5ZHxdIFT1XXB0fE1AQWBAQHgAVEEBVHwREVhREVAJQBUcQFl4UBgFHVUVVHwRK")
end

unl.misc.skill = {
on = false,
at = 0,
mainWanted = {},
raidWanted = {},

mainOrder = {},
raidOrder = {},
last = _d("expCWBgeAxUXWUUWGBAVDFNE"),
shown = _d(""),
}

function unl.misc.skill.branchMap(fpc)
local pjlp = {}

for lqfb, kagm in ipairs(gqqx.Trees[fpc].branches) do
pjlp[kagm.name] = kagm
end

return pjlp
end

function unl.misc.skill.branchLabels(qbv)
local mt = {}

for vxy, lvdj in ipairs(gqqx.Trees[qbv].branches) do
table.insert(mt, lvdj.name)
end

return mt
end

function unl.misc.skill.wantedFrom(ycmx, boc)
local dud = {}
local xpg = unl.misc.skill.branchMap(boc)

if type(ycmx) == _d("QRRUXBQ") then
for bwxe, nkct in pairs(ycmx) do
if nkct and xpg[tostring(bwxe)] then
dud[xpg[tostring(bwxe)].id] = true
end
end
end

return dud
end

function unl.misc.skill.ordered(zhbb, mksg)
local pwaa = {}
local pcb = {}

for rycr, qgq in ipairs(mksg or {}) do
if zhbb[qgq] then
table.insert(pwaa, qgq)
pcb[qgq] = true
end
end

for vse in pairs(zhbb) do
if not pcb[vse] then
table.insert(pwaa, vse)
end
end

return pwaa
end

function unl.misc.skill.branchById(ysfn)
local vnk = {}

for sxmm, ejjj in ipairs(gqqx.Trees[ysfn].branches) do
vnk[ejjj.id] = ejjj
end

return vnk
end

function unl.misc.skill.upgrade()
local mlsy = unl.misc.skill
local tgr = unl.misc.util
local fmfm = tgr.currentProfile and tgr.currentProfile()

if type(fmfm) ~= _d("QRRUXBQ") then
return false, _d("exoWQAMfAlwZUxAIFRAb")
end

local vzzx = fmfm.skillTrees or {}
local shyi = { [1] = mlsy.mainOrder, [2] = mlsy.raidOrder }
local ijp = nil

for tqe, bbr in ipairs(gqqx.Trees) do
local gwzi = vzzx[bbr.id]
local bifz = tonumber(fmfm[bbr.pointsField or _d("Rh5fXB0gC1wbQkM")]) or 0
local lhn = unl.misc.skill.branchById(tqe)

if type(gwzi) == _d("QRRUXBQ") and bifz > 0 then
for fty, zmtr in ipairs(shyi[tqe] or {}) do
local xre = lhn[zmtr]

if xre and not ijp then
local yz = gqqx.getBranchLevel(vzzx, bbr.id, xre.id) or 0
local mny = yz + 1

if mny <= xre.levels then
local yvgb = xre.id .. mny
local wtzw = 1

if type(xre.costs) == _d("QRRUXBQ") and tonumber(xre.costs[mny]) then
wtzw = tonumber(xre.costs[mny])
elseif tonumber(xre.cost) then
wtzw = tonumber(xre.cost)
end

if wtzw <= bifz and gqqx.isAvailable(vzzx, bbr.id, yvgb) then
ijp = { tree = bbr.id, node = yvgb, name = xre.name, level = mny }
end
end
end
end
end
end

if not ijp then
return false, _d("expCWBgeAxUBWRATBR0VDFNEXw")
end

xbku.BuySkillNode:FireServer(ijp.tree, ijp.node)

if tgr.askProfile then
pcall(tgr.askProfile)
end

mlsy.last = _d("dxpDVxkERA") .. ijp.name .. _d("FQ") .. tostring(ijp.level)

return true
end

function unl.misc.skill.text()
local bia = unl.misc.skill
local fpki = unl.misc.util
local kfy = fpki.currentProfile and fpki.currentProfile()

if type(kfy) ~= _d("QRRUXBQ") then
return _d("ZRpfXgUDXhVKPA") .. bia.last
end

local njmg = kfy.skillTrees or {}
local mfi = {}

local wtjd = { [1] = bia.mainOrder, [2] = bia.raidOrder }

for sxgx, rvv in ipairs(gqqx.Trees) do
local ftsy = tonumber(kfy[rvv.pointsField or _d("Rh5fXB0gC1wbQkM")]) or 0
local iakp = {}
local jvj = unl.misc.skill.branchById(sxgx)

for qgx, zkui in ipairs(wtjd[sxgx] or {}) do
local ivir = jvj[zkui]

if ivir then
local skg = gqqx.getBranchLevel(njmg, rvv.id, ivir.id) or 0
table.insert(iakp, ivir.name .. _d("FQ") .. tostring(skg) .. _d("Gg") .. tostring(ivir.levels))
end
end

mfi[#mfi + 1] = rvv.name .. _d("D1U") .. tostring(ftsy) .. _d("FQVCQw")
.. (#iakp > 0 and (_d("FVgW") .. table.concat(iakp, _d("GVU"))) or _d("FVgWXh4EDFwbURABGQdeEFI"))
end

mfi[#mfi + 1] = bia.last

return table.concat(mfi, _d("Pw"))
end

unl.misc.mergeSection = unl.misc.tab:Section({
Side = _d("eRBQRA"),
})

unl.misc.mergeSection:Header({
Name = _d("eBBEVxRQlKrSmg"),
})

unl.misc.mergeToggle = unl.misc.mergeSection:Toggle({
Name = _d("dABCX1EdAUcSUw"),
Default = false,
Callback = function(oqg)
local rf = unl.misc.cards

rf.mergeOn = oqg

rf.mergeAt = (oqg and rqc.loading) and (os.clock() + rf.interval) or 0
end,
}, _d("VABCXy4dAUcSUw"))

unl.misc.mergeDropdown = unl.misc.mergeSection:Dropdown({
Name = _d("ZxREWQUZAUY"),
Search = false,
Multi = true,
Required = false,
Default = { _d("dBla") },
Options = unl.misc.cards.rarityLabels,
Callback = function(tyk)
local idh = {}

if type(tyk) == _d("QRRUXBQ") then
for bysx, jkbc in pairs(tyk) do
if jkbc then
if bysx == _d("dBla") then
idh[0] = true
else
idh[unl.misc.cards.borderOf[tostring(bysx)]] = true
end
end
end
end

unl.misc.cards.mergeWanted = idh
unl.misc.cards.refresh(true)
end,
}, _d("RxREWQUZAUY"))

unl.misc.mergeSection:Button({
Name = _d("eBBEVxRQCloC"),
Callback = function()
local qube, mqw = unl.misc.cards.run(true)

if not qube then
zpzc:Notify({
Title = _d("eBBEVxQ"),
Description = mqw,
Lifetime = 6,
})
end
end,
})

unl.misc.mergeSection:Button({
Name = _d("eBBEVxRQXQU"),
Callback = function()

local mgd, dssh = unl.misc.cards.run(true, 90)

if not mgd then
zpzc:Notify({
Title = _d("eBBEVxRQXQU"),
Description = dssh,
Lifetime = 6,
})
end
end,
})

unl.misc.mergeParagraph = unl.misc.mergeSection:Paragraph({
Header = _d("ZgFXRAQD"),
Body = unl.misc.cards.mergeText(),
})

unl.misc.accSection = unl.misc.tab:Section({
Side = _d("ZxxRWAU"),
})

unl.misc.accSection:Header({
Name = _d("dBZVVQIDC0ccU0NRgPun+w"),
})

unl.misc.accToggle = unl.misc.accSection:Toggle({
Name = _d("dABCX1ESAUYBFlESEwFGBllCCA"),
Default = false,
Callback = function(wn)
unl.misc.util.accOn = wn
unl.misc.util.accAt = 0
end,
}, _d("VABCXy4SAUYBaVESEwFGBllCCA"))

unl.misc.accBuyToggle = unl.misc.accSection:Toggle({
Name = _d("dABCX1ESEUxVVFUCBA"),
Default = false,
Callback = function(rxyx)
unl.misc.util.accBuyOn = rxyx
unl.misc.util.accBuyAt = 0
unl.misc.util.accAt = 0
end,
}, _d("VABCXy4SEUwqVFUCBA"))

unl.misc.accSection:Button({
Name = _d("dwBPEBMVF0E"),
Callback = function()
local pps, zpnr = unl.misc.util.buyBest()

if not pps then
zpzc:Notify({
Title = _d("dBZVVQIDC0ccU0M"),
Description = zpnr,
Lifetime = 6,
})
end
end,
})

unl.misc.accSection:Button({
Name = _d("cARDWQFQBlAGQg"),
Callback = function()
if not unl.misc.util.equipBest() then
zpzc:Notify({
Title = _d("dBZVVQIDC0ccU0M"),
Description = _d("expCWBgeAxUXU0QFFRYVHEUQHgcKUBEWSRQESg"),
Lifetime = 5,
})
end
end,
})

unl.misc.accParagraph = unl.misc.accSection:Paragraph({
Header = _d("ZgFXRAQD"),
Body = unl.misc.util.accText(),
})

unl.misc.claimInfo = unl.misc.tab:Section({
Side = _d("ZxxRWAU"),
})

unl.misc.claimInfo:Header({
Name = _d("eBxFUxQcCFQbU18EAw"),
})

unl.misc.indexParagraph = unl.misc.claimInfo:Paragraph({
Header = _d("dhREVFE5ClEQTg"),
Body = unl.misc.util.indexText(),
})

unl.misc.achParagraph = unl.misc.claimInfo:Paragraph({
Header = _d("dBZeWRQGAVgQWEQC"),
Body = unl.misc.util.achText(),
})

unl.misc.questParagraph = unl.misc.claimInfo:Paragraph({
Header = _d("ZABTQwUD"),
Body = unl.misc.util.questText(),
})

unl.misc.packParagraph = unl.misc.claimInfo:Paragraph({
Header = _d("ZRRVWwI"),
Body = unl.misc.util.packText(),
})

unl.misc.skillSection = unl.misc.tab:Section({
Side = _d("ZxxRWAU"),
})

unl.misc.skillSection:Header({
Name = _d("Zh5fXB1QMEcQUxCB7+iG"),
})

unl.misc.skillToggle = unl.misc.skillSection:Toggle({
Name = _d("dABCX1EFFFIHV1QU"),
Default = false,
Callback = function(qzaf)
local pbc = unl.misc.skill

if qzaf and not (next(pbc.mainWanted) or next(pbc.raidWanted)) then
pbc.on = false

pcall(function()
unl.misc.skillToggle:UpdateState(false)
end)

zpzc:Dialog({
Title = _d("ZRxVW1ERRFcHV14SGERTHERDBQ"),
Description = _d("dh1ZXwIVRFQBFlwUERdBVVleFFAGRxRYUxlQDVtVQlgUUClUHFgQBQIBUFVZQlEiBVwRFkQDFQEVEURfARQLQhsWHVE")
.. _d("dABCX1EFFFIHV1QUUAtbGU8QAgABWxFFEAEfDVsBRRAGGAFHEBZJHgVERRpfXgVQDUFb"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})

return
end

pbc.on = qzaf
pbc.at = 0
end,
}, _d("VABCXy4FFFIHV1QU"))

unl.misc.skillMainDropdown = unl.misc.skillSection:Dropdown({
Name = _d("eBRfXlEEFlAQ"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = unl.misc.skill.branchLabels(1),
Callback = function(seyl)
local ilcp = unl.misc.skill
local gjkz = ilcp.wantedFrom(seyl, 1)

ilcp.mainWanted = gjkz
ilcp.mainOrder = ilcp.ordered(gjkz, ilcp.mainOrder)
ilcp.shown = _d("")
end,
}, _d("WBRfXi4EFlAQ"))

unl.misc.skillRaidDropdown = unl.misc.skillSection:Dropdown({
Name = _d("ZxRfVFEEFlAQ"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = unl.misc.skill.branchLabels(2),
Callback = function(yhs)
local hqad = unl.misc.skill
local fnbx = hqad.wantedFrom(yhs, 2)

hqad.raidWanted = fnbx
hqad.raidOrder = hqad.ordered(fnbx, hqad.raidOrder)
hqad.shown = _d("")
end,
}, _d("RxRfVC4EFlAQ"))

pcall(function()
unl.misc.skillMainDropdown:UpdateSelection({})
end)

pcall(function()
unl.misc.skillRaidDropdown:UpdateSelection({})
end)

unl.misc.skillParagraph = unl.misc.skillSection:Paragraph({
Header = _d("ZgFXRAQD"),
Body = unl.misc.skill.text(),
})

task.spawn(function()
local bwkp = unl.misc.util

while vgo() do
if bwkp.indexOn or bwkp.achOn or bwkp.questOn or bwkp.accOn or bwkp.accBuyOn then
bwkp.currentProfile()
end

if bwkp.indexOn then
bwkp.claimIndex()
end

if bwkp.achOn then
bwkp.claimAchievement()
end

if bwkp.questOn then

if os.clock() - bwkp.questAskedAt > 20 or os.clock() - bwkp.weeklyAskedAt > 20 then
bwkp.askQuests()
end

bwkp.claimQuest()
end

if bwkp.accOn and os.clock() >= bwkp.accAt then
bwkp.accAt = os.clock() + 3
bwkp.equipBest()
end

local ogqe = unl.misc.cards

if not ogqe.inFlight then
if ogqe.mergeOn and os.clock() >= ogqe.mergeAt then
ogqe.run(true, nil, true)
elseif ogqe.deconOn and os.clock() >= ogqe.deconAt then
ogqe.run(false, nil, true)
end
end

if ogqe.mergeDone ~= ogqe.mergeShown then
ogqe.mergeShown = ogqe.mergeDone

pcall(function()
unl.misc.mergeParagraph:UpdateBody(unl.misc.cards.mergeText())
end)
end

if ogqe.deconDone ~= ogqe.deconShown then
ogqe.deconShown = ogqe.deconDone

pcall(function()
unl.misc.deconParagraph:UpdateBody(unl.misc.cards.deconText())
end)
end

local tylk = unl.misc.skill

if tylk.on and os.clock() >= tylk.at then

tylk.at = os.clock() + 2
tylk.upgrade()
end

local esoa = unl.misc.skill.text()

if tylk.shown ~= esoa then
tylk.shown = esoa

pcall(function()
unl.misc.skillParagraph:UpdateBody(esoa)
end)
end

if bwkp.accBuyOn and os.clock() >= bwkp.accBuyAt then

local aac = bwkp.buyBest()

bwkp.accBuyAt = os.clock() + (aac and 45 or 10)
end

local qcck = {
{ key = _d("XBtSVQk"), paragraph = unl.misc.indexParagraph, value = bwkp.indexText() },
{ key = _d("VBZe"), paragraph = unl.misc.achParagraph, value = bwkp.achText() },
{ key = _d("RABTQwU"), paragraph = unl.misc.questParagraph, value = bwkp.questText() },
{ key = _d("RRRVWw"), paragraph = unl.misc.packParagraph, value = bwkp.packText() },
{ key = _d("VBZV"), paragraph = unl.misc.accParagraph, value = bwkp.accText() },
}

for oac, jhui in ipairs(qcck) do
if jhui.paragraph and bwkp.shown[jhui.key] ~= jhui.value then
bwkp.shown[jhui.key] = jhui.value

pcall(function()
jhui.paragraph:UpdateBody(jhui.value)
end)
end
end

task.wait(0.75)
end
end)

local oli = ckhi:Section({
Side = _d("ZxxRWAU"),
})

oli:Paragraph({
Header = _d("cxxFWBgeAw"),
Body = _d("dABCX1E2DUYdFlUABQ1FBhZJHgUWFQdZVF1QAlQWU0NRBAxQVUFRBRUWFRRYVFETBUYBRRAeHkRcAUUQHgcKGVVCWBQeREcQU1wCUBNdEFgQAh8JUAFeWR8XRFccQlUCXkRhJRZEHlAmVAwWQAQcCEZVT18EUAZUFl0QBR9EQR1TEBMRHRUTX0ICBEgVFFhUUQQMUFVCRx5QIFAQRlUCBERiFEJVA1AXQhxCUxkVFxUdWVwVUBBdEBZDAR8QFQxZRVEHAUcQFkMFEQpRHFhXUR8KFQJeVR9QHVoAFlEDHQFRVUJYFB1EGFVCWBRQAFAQRlUCBERHHFhXURMFRwdfVQJQEF0QFlIYFwNQBkIQHQUHXlVUXx8FFxt/PGQZFURGHVlAURIRTAYWUR8URFAEQ1kBA0RHGlJDUREKUVVUURgEREIcQlhRBAxQVVVRAgQXFQxZRVEYBUMQGBAzBR1cG1EQHxUBUQYWRBkVRFYaQ14FFRYVWBZSHgQMFRZZXRRQAkcaWxAFGAEVM19DGRUWWBRYHnt6J1QBVVgUA0ReEFNAAlAFFQdDXh8ZClJVQlEdHB0VF08QGAQBWFVXXhVQF1QDU0NRGRAZVUVfUQQMUFVCXwURCBUWV0IDGQFGVVlGFAJEVxBCRxQVChUGU0MCGQtbBhg"),
})

local vjyf = ckhi:Section({
Side = _d("ZxxRWAU"),
})

vjyf:Header({
Name = _d("dhRCUxkVFw"),
})

local lwo

lwo = vjyf:Paragraph({
Header = _d("Yh1XRFEJC0BVVVEEFwxB"),
Body = jkf(),
})

local si = ckhi:Section({
Side = _d("ZxxRWAU"),
})

si:Header({
Name = _d("fAZaUR8UREYdWUA"),
})

si:Toggle({
Name = _d("dABCX1ETFlQTQhADHwA"),
Default = false,
Callback = function(fmp)
htn.island.autoRod = fmp
htn.islandAt = 0
end,
}, _d("XAZaUR8UO1QAQl8uAgtR"))

si:Toggle({
Name = _d("dABCX1ETFlQTQhAQEwdQBkVfAwk"),
Default = false,
Callback = function(ijgo)
htn.island.autoAcc = ijgo
htn.islandAt = 0
end,
}, _d("XAZaUR8UO1QAQl8uEQdWEEVDHgId"))

si:Toggle({
Name = _d("cARDWQFQBVYWU0MCHxZM"),
Default = false,
Callback = function(uanx)
htn.island.equipAcc = uanx
htn.islandAt = 0
end,
}, _d("XAZaUR8UO1AEQ1kBLwVWFlNDAh8WTA"))

local dmy

dmy = si:Paragraph({
Header = _d("fAZaUR8URFIQV0I"),
Body = htn.shopIsland.text(),
})

local bph = ckhi:Section({
Side = _d("eRBQRA"),
})

bph:Header({
Name = _d("ZxBUWQMEDA"),
})

htn.rebirthToggle = bph:Toggle({
Name = _d("dABCX1ECAVccREQZ"),
Default = false,
Callback = function(baod)
htn.autoRebirth = baod
end,
}, _d("VABCXy4CAVccREQZ"))

htn.rebirthParagraph = bph:Paragraph({
Header = _d("ZgFXRAQD"),
Body = htn.rebirthText(),
})

bph:Button({
Name = _d("YSUWRB5QDUYZV14V"),
Callback = function()
if not htn.gotoIsland() then
zpzc:Notify({
Title = _d("dBdXXhUfClARFnkCHAVbEQ"),
Description = _d("dh1XQhATEFAHFlkCUApaARZCFBEATFVPVQVQSRUBRElREQNUHFgQGB5EVFVbXxwVCkFb"),
Lifetime = 5,
})
end
end,
})

local toik

toik = bph:Toggle({
Name = _d("dABCX1E5F1kUWFRROAVHEVVfAxU"),
Default = false,
Callback = function(vwqx)
giv.island = vwqx
giv.pending = false
giv.pendingUntil = 0
giv.paused = false
giv.gaveUp = false
giv.stoodDown = false
giv.manualPause = false

if not vwqx then
return
end

if cq.otherTowerOn(_d("XRREVBIfFlA")) then
giv.island = false

pcall(function()
toik:UpdateState(false)
end)

pcall(function()
zpzc:Dialog({
Title = _d("dABCX1E5F1kUWFRROAVHEVVfAxVEWhNQ"),
Description = _d("YR1TEDkRCFkaQVUUHkRBGkFVA1ANRlVXXAMVBVEMFkIEHgpcG1EcUREKUVVBWQUYRFobUxACHAtBVUJYFFADVBhTEB4eCExVREUfA0RaG1MQGB4CXBtfRBRQFloaWxAQBERUVUJZHBVKFSFDQh9QEF0UQhAeFgIZVVlCUQQRRxsWXx9QJUABWRAiHAtBVUVfURUFVh0WRB4HAUdVUVUFA0RcAUUQHgcKFQZaXwVe"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})
end)

return
end

if cq.enabled and cq.hardcoreSlot() == nil then
giv.island = false

pcall(function()
toik:UpdateState(false)
end)

pcall(function()
zpzc:Dialog({
Title = _d("dABCX1E5F1kUWFRROAVHEVVfAxVEWhNQ"),
Description = _d("exoWQx0fEBUcRRACFRAVAVkQEFAQWgJTQl1QBVsRFkQZFURSFFtVUR8KWQwWQwURFkEGFlFRBAtCEEQQAwUKFRNEXxxQBRUBWUcUAkRGGVlEX1A3UAEWXx8VREEaFnkCHAVbERZYEAIAVhpEVV1QC0dVQkUDHkR0AEJfUSMIWgEWXxcWSg"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})
end)

return
end

if not giv.data then
giv.island = false

pcall(function()
toik:UpdateState(false)
end)

pcall(function()
zpzc:Dialog({
Title = _d("dABCX1E5F1kUWFRROAVHEVVfAxVEWhNQ"),
Description = _d("YR1fQ1ESEVwZUhAZERcVG1kQOREWURZZQhQkC0IQRHQQBAUZVUVfUQQMUFVCXwYVFhIGFkMFEQNQBhZTEB4KWgEWUhRQFlAUUhAQHgAVFBZCBB5EVhRYXh4ERFcQFkMFERZBEFIe"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})
end)

return
end

local vmtx = giv.remotes.request

if vmtx then
pcall(function()
vmtx:FireServer()
end)
end
end,
}, _d("VABCXy4ZF1kUWFQuGAVHEVVfAxU"))

giv.islandToggle = toik

giv.islandParagraph = bph:Paragraph({
Header = _d("dwBQVgI"),
Body = giv.buffText(),
})

bph:Button({
Name = _d("ZRRDQxRQLUYZV14VUCxUB1JTHgIB"),
Callback = function()
if giv.pauseRun then
giv.pauseRun()
end
end,
})

bph:Button({
Name = _d("chxAVVElFBU8RVwQHgAVPVdCFRMLRxA"),
Callback = function()
if giv.giveUpRun then
giv.giveUpRun()
end
end,
})

local kydz = ckhi:Section({
Side = _d("eRBQRA"),
})

kydz:Header({
Name = _d("cxxFWBgeAxUGXl8B"),
})

kydz:Toggle({
Name = _d("dABCX1ESEUxVVFUCBERHGlI"),
Default = false,
Callback = function(plbv)
htn.shop.autoBuyRod = plbv
htn.shopAt = 0
end,
}, _d("VABCXy4SEUwqVFUCBDtHGlI"))

kydz:Toggle({
Name = _d("dABCX1ESEUxVVFUCBERXFF9E"),
Default = false,
Callback = function(ivob)
htn.shop.autoBuyBait = ivob
htn.shopAt = 0
end,
}, _d("VABCXy4SEUwqVFUCBDtXFF9E"))

kydz:Toggle({
Name = _d("cARDWQFQBlAGQhADHwA"),
Default = false,
Callback = function(ljym)
htn.shop.equipRod = ljym
htn.shopAt = 0
end,
}, _d("UARDWQEvBlAGQm8DHwA"))

kydz:Toggle({
Name = _d("cARDWQFQBlAGQhATEQ1B"),
Default = false,
Callback = function(xjsh)
htn.shop.equipBait = xjsh
htn.shopAt = 0
end,
}, _d("UARDWQEvBlAGQm8TEQ1B"))

local fch

fch = kydz:Paragraph({
Header = _d("dxBFRFEJC0BVVVEfUAFEAF9A"),
Body = hwu(),
})
task.spawn(function()
local fcr = nrt()
local aqnx = jkf()
local rza = hwu()
local xbk = htn.shopIsland.text()

while vgo() do
local naqo = nrt()

if naqo ~= fcr then
fcr = naqo
pcall(function()
ngo:UpdateBody(naqo)
end)
end

local fzpj = jkf()

if fzpj ~= aqnx then
aqnx = fzpj
pcall(function()
lwo:UpdateBody(fzpj)
end)
end

local ecd = hwu()

if ecd ~= rza then
rza = ecd
pcall(function()
fch:UpdateBody(ecd)
end)
end

local fuf = htn.shopIsland.text()

if fuf ~= xbk then
xbk = fuf
pcall(function()
dmy:UpdateBody(fuf)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while vgo() do

if elb() and os.clock() >= (htn.shopAt or 0)
and os.clock() >= (htn.islandTripUntil or 0) then
htn.shopAt = os.clock() + 1
pcall(citp)
end

if htn.shopIsland.active() and os.clock() >= (htn.islandAt or 0)
and os.clock() >= math.max(htn.shopHoldUntil or 0, htn.tpHoldUntil or 0) then
htn.islandAt = os.clock() + 2
pcall(htn.shopIsland.run)
end

task.wait(1)
end
end)

ws:Select()

local hgl = ws:Section({
Side = _d("eRBQRA"),
})

local wed = ws:Section({
Side = _d("ZxxRWAU"),
})

local day = hgl:Paragraph({
Header = _d("ZgFXRAQD"),
Body = swdo(),
})

hgl:Divider()

lb.npcToggle = hgl:Toggle({
Name = _d("dABCX1E+NHY"),
Default = false,
Callback = function(zlil)

if zlil and not lb.story and #dt() == 0 then
pcall(function()
lb.npcToggle:UpdateState(false)
end)

zpzc:Dialog({
Title = _d("dABCX1E+NHZVWFUUFBcVFBZEEAIDUAE"),
Description = _d("ZRxVW1EREBUZU1ECBERaG1MQPyAnFRNEXxxQEF0QFkceAghRBhZSFBwLQlkWXwNQEEAHWBAeHkR0AEJfUTMLWAVaVQUVRGYBWUIIXkRhHVNCFFANRlVYXwUYDVsSFkQeUAJcEl5EUQkBQVs"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})

return
end

lb.enabled = zlil
end,
}, _d("VABCXy4eFFY"))

hgl:Toggle({
Name = _d("YhRaW1EECxU7ZnM"),
Default = false,
Callback = function(tvg)
lb.walkToNpc = tvg
end,
}, _d("QhRaWy4EC2obRlM"))

hgl:Dropdown({
Name = _d("cRxQVhgTEVkBTw"),
Search = false,
Multi = true,
Required = false,
Default = { _d("expEXRAc") },
Options = ufoy,
Callback = function(dbx)
local ucea = {}

if type(dbx) == _d("QRRUXBQ") then
for zmrf, zvqu in ipairs(ufoy) do
if dbx[zvqu] then
table.insert(ucea, vte[zvqu])
end
end
end

if #ucea == 0 then
ucea = { _d("WxpEXRAc") }
end

lb.difficulties = ucea
end,
}, _d("URxQVhgTEVkBTw"))

hgl:Toggle({
Name = _d("dABCX1EiC1oYRQ"),
Default = false,
Callback = function(dz)
dxxf.enabled = dz
dxxf.inBattle = false
dxxf.pending = false
end,
}, _d("VABCXy4CC1oYRQ"))

local nsn = ws:Section({
Side = _d("eRBQRA"),
})

nsn:Header({
Name = _d("ZhlZRA"),
})

nsn:Paragraph({
Header = _d("fRpBEAUYARUGWl8FA0RCGkRb"),
Body = _d("ZhlZRFFBRBhVf14XGQpcAU8QJR8TUAcWGB8fFlgUWhAeAkR7HFFYBR0FRxAfEB4CRH0UWlweBwFQGxZkHgcBR1kWQB0FFxU7ZnNREgVBAVpVAlATXRBYEAIcC0FVBBAYA0RXAEVJX3puZhlZRFFCRBhVeGAyA0gVB1dZFQNIFQdZXxwDSBU8RVwQHgAVPVdCFRMLRxAYOnsyC0EdFkMdHxBGVVleUT40dlVUUQUECFAGDBAFBwsVO2ZzURYBVAFDQhQDRFQBFl8fEwEZVVdeFVAFFQdXWRVQBloGRRAUEQddWzw6JQcLFQFZRxQCREcAWENRGRcVAV5VUR8KWQwWQhQWEUYQUhABEQ1HVRsQOAMIVBtSEDkRFlEWWUIUUAtbVVRfBRhERhlZRAJQDUZVWV4UUBZAGxZRAhsBUVVQXwNQEEIcVVVfem5mGVlEAlALUxMMEB4eARUGWl8FXERBGkFVAwNEQRRdVVEEEUcbRR4"),
})

cq.toggle = nsn:Toggle({
Name = _d("dABCX1EjCFoB"),
Default = false,
Callback = function(mxp)
if mxp and cq.role[1] == cq.role[2] and cq.role[1] ~= _d("WwVV") then
cq.enabled = false

pcall(function()
cq.toggle:UpdateState(false)
end)

zpzc:Dialog({
Title = _d("dABCX1EjCFoB"),
Description = _d("ZhlZRFFBRFQbUhAiHAtBVQQQEAIBFRdZRBlQ") .. cq.roleLabel(1) .. _d("G1ViWBAERFwGFl8fFURHAFgQEAMPUBEWVh4CREECX1MUXERGGhZfHxVEWhMWRBkVREECWRACHAtBBhZYEANEQRoWUhRQF1oYU0QZGQpSVVNcAhVK"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})

return
end

cq.enabled = mxp

if mxp then
cq.hasSlot2 = cq.detectSlot2()

if cq.hasSlot2 == false then
zpzc:Dialog({
Title = _d("dABCX1EjCFoB"),
Description = _d("ZhlZRFFCRFkaWVsCUAhaFl1VFVBJFRxCEB8VAVEGFkQZFURxAFdcUTIFQQFaVVEjCFoBFlcQHQFFFEVDXVALR1V/XhcZClwBUxAjHwtYVQQFQVAHWRBXQhQUSBUXU1YeAgEVAV5VUQMBVhpYVFEDCFoBFlMQHkRXFEJEHRVKFSdZRQUZClJVRUQQCRcVGlgQAhwLQVUHEAQeEFwZFkQZFQob"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})
end
end
end,
}, _d("VABCXy4DCFoB"))

function cq.applyRoles()
if not cq.enabled then
return
end

if cq.role[1] == cq.role[2] and cq.role[1] ~= _d("WwVV") then
cq.enabled = false

pcall(function()
cq.toggle:UpdateState(false)
end)

pcall(function()
zpzc:Dialog({
Title = _d("dABCX1EjCFoBFl8XFg"),
Description = _d("ZhlZRFFBRFQbUhAiHAtBVQQQEAIBFRdZRBlQ") .. cq.roleLabel(1) .. _d("G1ViWBAERFwGFl8fFURHAFgQEAMPUBEWVh4CREECX1MUXERUG1IQGAREVhRYXh4EREEUXVVRBBNaVUVcHgQXG1VlVQVQC1sQFkMdHxAVAVkQAh8JUAFeWR8XRFAZRVVf"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})
end)

return
end

local hd = {}

if cq.towerSlot() ~= 1 and wioq.enabled then
wioq.enabled = false
table.insert(hd, _d("dABCX1EkC0IQRA"))

pcall(function()
wioq.ui:UpdateState(false)
end)
end

if cq.hardcoreSlot() == nil and giv.island then
giv.island = false
table.insert(hd, _d("dABCX1E5F1kUWFRROAVHEVVfAxU"))

pcall(function()
giv.islandToggle:UpdateState(false)
end)
end

if cq.halloweenSlot() == nil and vot.run.enabled then
vot.run.enabled = false
table.insert(hd, _d("dABCX1E4BVkZWUcUFQoVIVlHFAI"))

pcall(function()
vot.toggle:UpdateState(false)
end)
end

if #hd > 0 then
pcall(function()
zpzc:Dialog({
Title = table.concat(hd, _d("FRRYVFE")) .. _d("FRpQVg"),
Description = _d("exoWQx0fEBUcRRACFRAVAVkQBRgFQVVCXwYVFhUUWElRHQtHEBoQAh9EXAEWWBAURFsaQVgUAgEVAVkQAwUKG1VxWQcVRFwBFlFRAwhaARZRFhENW1kWXwNQEEAHWBAwBRBaVWVcHgREWhNQHg"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})
end)
end
end

cq.oneDropdown = nsn:Dropdown({
Name = _d("ZhlZRFFB"),
Search = false,
Multi = false,
Required = false,

Default = 1,
Options = cq.optionsFor[1],
Callback = function(kog)
local ktk = type(kog) == _d("QRRUXBQ") and kog[1] or kog

if type(ktk) == _d("RgFEWR8X") and cq.roleIds[ktk] then
cq.role[1] = cq.roleIds[ktk]
cq.picked[1] = ktk
end

pcall(function()
cq.oneDropdown:UpdateName(_d("ZhlZRFFBRNf1lBA") .. cq.roleLabel(1))
end)

if cq.applyRoles then
cq.applyRoles()
end
end,
}, _d("RhlZRC5BOwc"))

cq.twoDropdown = nsn:Dropdown({
Name = _d("ZhlZRFFC"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = cq.optionsFor[2],
Callback = function(ryf)
local zndc = type(ryf) == _d("QRRUXBQ") and ryf[1] or ryf

if type(zndc) == _d("RgFEWR8X") and cq.roleIds[zndc] then
cq.role[2] = cq.roleIds[zndc]
cq.picked[2] = zndc
end

pcall(function()
cq.twoDropdown:UpdateName(_d("ZhlZRFFCRNf1lBA") .. cq.roleLabel(2))
end)

if cq.applyRoles then
cq.applyRoles()
end
end,
}, _d("RhlZRC5COwc"))

pcall(function()
cq.oneDropdown:UpdateSelection(_d("YRpBVQM"))
end)

pcall(function()
cq.twoDropdown:UpdateSelection(_d("eyV1EBMREEEZU0M"))
end)

getgenv().ACBXSlot = cq

local qhrz = ws:Section({
Side = _d("eRBQRA"),
})

qhrz:Header({
Name = _d("ZxRfVFESC0YG"),
})

qhrz:Toggle({
Name = _d("dABCX1EiBVwRFnIeAxc"),
Default = false,
Callback = function(oxa)
unl.enabled = oxa
unl.pending = {}
unl.pendingUntil = {}

if oxa then
unl.cleared = {}
end
end,
}, _d("VABCXy4CBVwRaVIeAxc"))

qhrz:Toggle({
Name = _d("dABCX1EnBVkeFkQeUDZUHFIQMx8XRg"),
Default = false,
Callback = function(qba)
unl.walkToBoss = qba
end,
}, _d("VABCXy4HBVkeaUQeLxZUHFJvEx8XRg"))

local eoso
eoso = qhrz:Slider({
Name = _d("YhRaW1EjFFAQUg"),
Minimum = 0,
Maximum = 72,
Default = 18,
Precision = 0,
Callback = function(iftd)
local crty = math.floor(iftd + 0.5)
unl.walkSpeed = crty

if eoso and crty ~= iftd then
eoso:UpdateValue(crty)
end
end,
}, _d("QhRaWy4DFFAQUg"))

qhrz:Dropdown({
Name = _d("ZxRfVFE0DVMTX1MEHBBM"),
Search = false,
Multi = true,
Required = false,
Default = { _d("expEXRAc") },
Options = gid,
Callback = function(vsmd)
local pu = {}

if type(vsmd) == _d("QRRUXBQ") then
for hz, nh in ipairs(gid) do
if vsmd[nh] then
table.insert(pu, jrc[nh])
end
end
end

if #pu == 0 then
pu = { _d("WxpEXRAc") }
end

unl.difficulties = pu
end,
}, _d("RxRfVC4UDVMTX1MEHBBM"))

function unl.pickedIds(vx)
local trkw = {}

if type(vx) == _d("QRRUXBQ") then
for muq, wwl in ipairs(ai) do
if vx[wwl] and xdu[wwl] then
table.insert(trkw, xdu[wwl])
end
end
elseif type(vx) == _d("RgFEWR8X") and xdu[vx] then
trkw = { xdu[vx] }
end

return trkw
end

qhrz:Dropdown({
Name = _d("ZxRfVFEyC0YG"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = ai,
Callback = function(mjlt)
unl.picks[1] = unl.pickedIds(mjlt)
unl.cursor[1] = 1
unl.losses[1] = {}
end,
}, _d("RxRfVC4SC0YG"))

unl.boss2Dropdown = qhrz:Dropdown({
Name = _d("ZxRfVFEyC0YGFhgiHAtBVQQZ"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = ai,
Callback = function(syo)
unl.picks[2] = unl.pickedIds(syo)
unl.cursor[2] = 1
unl.losses[2] = {}
end,
}, _d("RxRfVC4SC0YGaUMdHxBqRw"))

pcall(function()
unl.boss2Dropdown:SetVisibility(false)
end)

task.spawn(function()
local jshj = nil

while vgo() do
local zk = cq.splitNpc()

if zk ~= jshj then
jshj = zk

local qknv = unl.boss2Dropdown

if qknv then
pcall(function()
qknv:SetVisibility(zk)
end)
end
end

task.wait(0.5)
end
end)

wed:Paragraph({
Header = _d("dABCX1E2DVIdQg"),
Body = _d("ZhBaVRIERFobUxAeAkRYGkRVUT40dgYWVgMfCRUBXlVRBwtHGVJDURIBWRpBHg"),
})

for ogbc, kh in ipairs(lvxf) do
wed:Dropdown({
Name = kh.name,
Search = true,
Multi = true,
Required = false,
Default = {},
Options = kh.options,
Callback = function(vh)
local mfm = {}

if type(vh) == _d("QRRUXBQ") then
if vh.All then
for alvn, mm in ipairs(kh.ids) do
table.insert(mfm, mm)
end
else
for vo, amr in ipairs(kh.options) do
if vh[amr] and kh.byName[amr] then
table.insert(mfm, kh.byName[amr])
end
end
end
elseif type(vh) == _d("RgFEWR8X") then
if vh == _d("dBla") then
for hnza, vn in ipairs(kh.ids) do
table.insert(mfm, vn)
end
else
mfm = { kh.byName[vh] }
end
end

lb.selectedByWorld[kh.name] = mfm
end,
}, _d("WwVVbw") .. kh.id)
end

wed:Toggle({
Name = _d("dABCX1EzC1gFWlUFFURmAVlCCA"),
Default = false,
Callback = function(efnx)
lb.story = efnx
lb.battlePending = false
lb.battlePendingUntil = 0
end,
}, _d("VABCXy4TC1gFWlUFFTtGAVlCCA"))

lb.storyDropdown = wed:Dropdown({
Name = _d("cRxQVhgTEVkBX1UC"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = ufoy,
Callback = function(qed)
local qxtk = type(qed) == _d("QRRUXBQ") and qed[1] or qed

if type(qxtk) == _d("RgFEWR8X") and vte[qxtk] then
lb.storyDifficulty = vte[qxtk]
end
end,
}, _d("URxQVhgTEVkBX1UC"))

pcall(function()
lb.storyDropdown:UpdateSelection(ufoy[1])
end)

pcall(function()
lb.storyDropdown:UpdateName(_d("cRxQVhgTEVkBX1UCUIa11xY") .. ufoy[1])
end)

wed:Paragraph({
Header = _d("fRpBEDAFEFpVdV8cAAhQAVMQIgQLRwwWRx4CD0Y"),
Body = _d("cxxRWAUDRFADU0IIUBdBGkRJUT40dlUbED8RCVAeFkQZAgtAEl4QOAMBXhRfEFxQC1tVQlgUUAtbEBZUGBYCXBZDXAUJRFQXWUYUXERCGkRbGB4DFQFeVVERFlAURRAYHkRaB1JVA1AFWxEWUx4dDVsSFlIQEw8VB1lFHxREVAYWUx4fCFEaQV4CUAdZEFdCX3pufAEWQhQACFQWU0NRBAxQVVdCFBFEUQdZQBUfE1sGFkcZGQhQVV9EURkXFRpYHFERClFVWlUQBgFGVURRGBREVxpFQxQDRFQZWV4UXg"),
})

local pxt = yrvb:Section({
Side = _d("eRBQRA"),
})

pxt:Header({
Name = _d("YRpBVQM"),
})

local ffjm
local aw

local dfd = {
remotes = {},
watcher = false,
hidMenu = false,

hardWatch = {},
}

pcall(function()
local dbpd = getgenv().ACBXHardWatch

if type(dbpd) == _d("QRRUXBQ") then
for khu, bsx in pairs(dbpd) do
pcall(function()
if bsx.Connected then
bsx:Disconnect()
end
end)
end
end

getgenv().ACBXHardWatch = dfd.hardWatch
end)

function dfd.hardPick(nwx)
nwx = nwx == true

for pnsp, hhyr in ipairs({ _d("dxRCRB0VI0Ac"), _d("dxRCRB0VI0AcBA") }) do
local pxwj = ubll:FindFirstChild(hhyr)

if pxwj then
if pxwj:GetAttribute(_d("YRpBVQM4BUcRZlkSGw")) ~= nwx then
pcall(function()
pxwj:SetAttribute(_d("YRpBVQM4BUcRZlkSGw"), nwx)
end)
end

if pxwj:GetAttribute(_d("YRpBVQM4BUcRZEUf")) ~= nil and pxwj:GetAttribute(_d("YRpBVQM4BUcRZEUf")) ~= nwx then
pcall(function()
pxwj:SetAttribute(_d("YRpBVQM4BUcRZEUf"), nwx)
end)
end
end
end
end

function dfd.pinMode()
if not (wioq.enabled or wioq.nightmare) then
return
end

local ckfm = wioq.nightmare == true

for lldc, ozle in ipairs({ _d("dxRCRB0VI0Ac"), _d("dxRCRB0VI0AcBA") }) do
local egl = ubll:FindFirstChild(ozle)

if egl then
if egl:GetAttribute(_d("YRpBVQM4BUcRZlkSGw")) ~= ckfm then
pcall(function()
egl:SetAttribute(_d("YRpBVQM4BUcRZlkSGw"), ckfm)
end)
end

local kyf = dfd.hardWatch[egl]

if kyf and kyf.Connected == false then
dfd.hardWatch[egl] = nil
kyf = nil
end

if kyf == nil then
local ncr, stk = pcall(function()
return nhka(egl:GetAttributeChangedSignal(_d("YRpBVQM4BUcRZlkSGw")), function()
if not (wioq.enabled or wioq.nightmare) then
return
end

local pbs = wioq.nightmare == true

if egl.Parent and egl:GetAttribute(_d("YRpBVQM4BUcRZlkSGw")) ~= pbs then
pcall(function()
egl:SetAttribute(_d("YRpBVQM4BUcRZlkSGw"), pbs)
end)
end
end)
end)

if ncr then
dfd.hardWatch[egl] = stk
end
end
end
end
end

function dfd.pauseRows()
local mnwd = kdim:FindFirstChild(_d("ZRlXSRQCI0Ac")) and kdim.PlayerGui:FindFirstChild(_d("ZhBCRBgeA0YyQ1k"))

if not mnwd then
return nil, nil
end

return mnwd:FindFirstChild(_d("ZRRDQxQ5ClMcWFkFFS1bBUNE"), true), mnwd:FindFirstChild(_d("ZRRDQxQ5ClMcWFkFFSddEFVb"), true)
end

function dfd.pauseState()
local jxae = kdim:FindFirstChild(_d("ZRlXSRQCI0Ac")) and kdim.PlayerGui:FindFirstChild(_d("ZhBCRBgeA0YyQ1k"))
local bdz = jxae and jxae:FindFirstChild(_d("chBCYxQEEFwbUUM"), true)

if not bdz then
return nil
end

local nftx, zt = pcall(function()
return bdz:Invoke()
end)

if nftx and type(zt) == _d("QRRUXBQ") then
return zt.pauseInfiniteEnabled == true
end

return nil
end

function dfd.pauseAt(ly, jhke)
jhke = math.max(1, math.floor(tonumber(jhke) or 1))

local fjt, pf = dfd.pauseRows()

if not (fjt and pf) then
return false
end

local ui = pcall(function()
if tonumber(fjt.Text) ~= jhke then
fjt.Text = tostring(jhke)

if getconnections then
for gb, cdjr in ipairs(getconnections(fjt.FocusLost)) do
pcall(function()
cdjr:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end
end)

if ly ~= nil then
local hnz = dfd.pauseState()

if hnz ~= nil and hnz ~= ly and getconnections then
pcall(function()
for yqg, rlnn in ipairs(getconnections(pf.MouseButton1Click)) do
pcall(function()
rlnn:Fire()
end)
end
end)
end
end

return ui
end

function dfd.restorePause()
rfr.triggered = false

if rfr.enabled and rfr.floor > 0 then
dfd.pauseAt(true, rfr.floor)

pcall(function()
xbku.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = rfr.floor,
})
end)

return
end

pcall(function()
xbku.SaveClientData:FireServer({
pauseInfiniteEnabled = false,
pauseInfiniteAt = 1,
})
end)

dfd.pauseAt(false, 1)
end

function dfd.remote(idsi)
local zxz = dfd.remotes[idsi]

if zxz and zxz.Parent then
return zxz
end

local nijw = xn:FindFirstChild(_d("ZxBbXwUVFw"))
local nfnj = nijw and nijw:FindFirstChild(idsi)

if nfnj then
dfd.remotes[idsi] = nfnj
end

return nfnj
end

function dfd.historyOpen()
for txo, ozz in ipairs({ _d("dxRCRB0VI0Ac"), _d("dxRCRB0VI0AcBA") }) do
local jhx = ubll:FindFirstChild(ozz)
local jrih = jhx and jhx:FindFirstChild(_d("YRpBVQM4DUYBWUIINhZUGFM"))

if jrih and jrih.Visible then
return true
end
end

return false
end

function dfd.generationOpen()
local fnmt = ubll:FindFirstChild(_d("YRpBVQMiAUYAWkQ2BQ0"))
local ecv = fnmt and fnmt:FindFirstChild(_d("ZxBFRR0EIkcUW1U"))

return ecv ~= nil and ecv.Visible
end

function dfd.standDown(pft)
if not dfd.hidMenu then
local qoyy = true

pcall(function()
qoyy = zpzc:GetState() ~= false
end)

if qoyy then
dfd.hidMenu = true

pcall(function()
zpzc:SetState(false)
end)
end
end

if dfd.watcher then
return
end

dfd.watcher = true

task.spawn(function()

local nakj = os.clock() + 6

while vgo() and os.clock() < nakj and not pft() do
task.wait(0.2)
end

while vgo() and pft() do
task.wait(0.4)
end

dfd.watcher = false

if dfd.hidMenu then
dfd.hidMenu = false

pcall(function()
zpzc:SetState(true)
end)
end
end)
end

wioq.floorAt = 0
wioq.battleAt = 0
wioq.floor = nil
wioq.manualPause = false

task.spawn(function()
local qcro = zr(_d("dxRCRB0VMUURV0QU"))
local ygbp = zr(_d("ZgxYUyUfE1AHcFweHxY"))
local dizr = zr(_d("dxRCRB0VIVsR"))
local kyom = zr(_d("YRpBVQMiEVswWFQUFA"))

if qcro then
nhka(qcro.OnClientEvent, function()
wioq.battleAt = os.clock()
end)
end

if ygbp then
nhka(ygbp.OnClientEvent, function(aq)
wioq.floorAt = os.clock()

if type(aq) == _d("WwBbUhQC") and aq > 1 then
wioq.floor = aq
else
wioq.floor = nil
end
end)
end

if dizr then
nhka(dizr.OnClientEvent, function(qzkx)
if type(qzkx) == _d("QRRUXBQ") and qzkx.mode == _d("QRpBVQM") then
wioq.floorAt = os.clock()
end
end)
end

if kyom then
nhka(kyom.OnClientEvent, function()

wioq.lastRunEnded = {
clock = os.clock(),
floor = wioq.floor,
}

task.delay(1, function()
local wy = ubll:FindFirstChild(_d("YRpBVQMiAUYAWkQ2BQ0"))
local ccg = wy and wy:FindFirstChild(_d("ZxBFRR0EIkcUW1U"))
local ssk = {}

if ccg then
for bfxi, gxiy in ipairs(ccg:GetDescendants()) do
if gxiy:IsA(_d("YRBORD0RBlAZ")) and gxiy.Visible and gxiy.Text ~= _d("") and #ssk < 12 then
ssk[#ssk + 1] = gxiy.Text
end
end
end

if wioq.lastRunEnded then
wioq.lastRunEnded.texts = table.concat(ssk, _d("FQkW"))
end
end)

wioq.floorAt = 0
wioq.battleAt = 0
wioq.floor = nil

if wioq.manualPause then
dfd.restorePause()
end
end)
end

end)

local function ipbb()
local xce = os.clock()

if xce - (wioq.floorAt or 0) < 90 and xce - (wioq.battleAt or 0) < 12 then
return true
end

for zzhg, qa in ipairs({ _d("dxRCRB0VI0Ac"), _d("dxRCRB0VI0AcBA") }) do
local qy = ubll:FindFirstChild(qa)

if qy then

local ky = qy:FindFirstChild(_d("YRpBVQM2CFoaRHwQEgFZ"))

if ky and ky.Visible then
return true
end

local lkk = qy:FindFirstChild(_d("cxlZXwMjB0cQU14"))

if lkk and lkk.Visible then
return true
end

local nqw = qy:FindFirstChild(_d("dxRCRB0VN1YHU1Uf"))

if nqw and nqw.Visible then
local ivjg = nqw:FindFirstChild(_d("ZABfUxo3DUMQY0AzBRBBGlg"))

if ivjg and ivjg.Visible then
return true
end
end
end
end

return false
end

function dfd.hardNow()

local tpq = ubll:FindFirstChild(_d("dxRCRB0VI0Ac"))
local oidd = tpq and tpq:GetAttribute(_d("YRpBVQM4BUcRZlkSGw"))

if oidd ~= nil then
return oidd == true
end

local wjw = unl.misc.util.profile

return type(wjw) == _d("QRRUXBQ") and wjw.lastTowerHard == true
end

function dfd.endIfWrongMode(ss)
if not ipbb() or dfd.hardNow() == (ss == true) then
return false
end

pcall(function()
if type(aw) == _d("UwBYUwUZC1s") then
aw()
else
xbku.EndTowerRemote:FireServer(1)
end
end)

wioq.floor = nil

return true
end

function dfd.hardPickNow()
for ebpu, zb in ipairs({ _d("dxRCRB0VI0Ac"), _d("dxRCRB0VI0AcBA") }) do
local crp = ubll:FindFirstChild(zb)
local zjbu = crp and crp:GetAttribute(_d("YRpBVQM4BUcRZlkSGw"))

if zjbu ~= nil then
return zjbu == true
end
end

return nil
end

function dfd.parked()
for fu, xfmj in ipairs({ _d("dxRCRB0VI0Ac"), _d("dxRCRB0VI0AcBA") }) do
local gfv = ubll:FindFirstChild(xfmj)

if gfv then
local llzz = gfv:FindFirstChild(_d("YRpBVQM2CFoaRHwQEgFZ"))
local br = gfv:FindFirstChild(_d("cxlZXwMjB0cQU14"))
local rdbu = gfv:FindFirstChild(_d("dxRCRB0VN1YHU1Uf"))

if llzz and llzz.Visible
and not (br and br.Visible)
and not (rdbu and rdbu.Visible) then
return true
end
end
end

return false
end

wioq.ui = pxt:Toggle({
Name = _d("dABCX1EkC0IQRA"),
Default = false,
Callback = function(hlj)

if wioq.quiet then
return
end

wioq.enabled = hlj
wioq.pending = false
wioq.pendingUntil = 0

if hlj then

if cq.enabled and cq.role[1] ~= _d("QRpBVQM") then
wioq.enabled = false

pcall(function()
wioq.ui:UpdateState(false)
end)

pcall(function()
zpzc:Dialog({
Title = _d("dABCX1EkC0IQRBAeFgI"),
Description = _d("ZhlZRFFBRFwGFkMUBERBGhY") .. cq.roleName(1) .. _d("G1ViWBRQLVsTX14YBB0VNldDBRwBFRpYXAhQF0EUREQCUAtbVUVcHgREBFkWQx5QF1ABFmMdHxAVRBZEHlAwWgJTQlEWDUcGQh4"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})
end)

return
end

if cq.otherTowerOn(_d("QRpBVQM")) then
wioq.enabled = false

pcall(function()
wioq.ui:UpdateState(false)
end)

pcall(function()
zpzc:Dialog({
Title = _d("dABCX1EkC0IQRBAeFgI"),
Description = _d("dBtZRBkVFhUBWUcUAkRUAEJfHBEQXBpYEBgDRFQZRFUQFB0VGlgcUREKUVVCWBgDRFQWVV8EHhAVGlhcCFAFWRlZRwJQC1sQFkQeBwFHVURFH1AFQVVXEAUZCVBbFmQEAgoVAV5RBVALWxAWXxcWRFMcREMFXERaBxZEBAIKFRpYEDAFEFpVZVweBERGGhZVEBMMFQZaXwVQA1ABRRAYBBcVGkFeUQQLQhBEHg"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})
end)

return
end

wioq.nightmare = false

pcall(function()
wioq.quiet = true
wioq.nightmareToggle:UpdateState(false)
wioq.quiet = false
end)

wioq.manualPause = false
wioq.paused = false
dfd.restorePause()
wioq.pauseArmed = false

dfd.endIfWrongMode(false)
dfd.hardPick(false)

return
end

if not ipbb() then
return
end

wioq.paused = true
local opx = ffjm()

zpzc:Notify({
Title = _d("dABCX1EkC0IQRBAeFgI"),
Description = opx and _d("YRpBVQNQFkAbFkAQBRdQERg") or _d("ZwBYEBgDRFkcQFVdUAZAARZeHlAGRxBXW1ESEUEBWV5RFgtAG1Ie"),
Lifetime = 5,
})
end,
}, _d("VABCXy4EC0IQRA"))

wioq.nightmareToggle = pxt:Toggle({
Name = _d("dABCX1E+DVIdQl0QAgEVIVlHFAI"),
Default = false,
Callback = function(eay)
if wioq.quiet then
return
end

wioq.nightmare = eay

if not eay then

wioq.enabled = false
wioq.pending = false
wioq.pendingUntil = 0

dfd.hardPick(false)

pcall(function()
wioq.quiet = true
wioq.ui:UpdateState(false)
wioq.quiet = false
end)

if ipbb() then
wioq.paused = true
local ghg = ffjm()

zpzc:Notify({
Title = _d("dABCX1E+DVIdQl0QAgEVIVlHFAJEWhNQ"),
Description = ghg and _d("exxRWAUdBUcQFkIEHkRFFENDFBRK") or _d("ZwBYEBgDRFkcQFVdUAZAARZeHlAGRxBXW1ESEUEBWV5RFgtAG1Ie"),
Lifetime = 5,
})
end

return
end

if cq.enabled and cq.role[1] ~= _d("QRpBVQM") then
wioq.nightmare = false

pcall(function()
wioq.quiet = true
wioq.nightmareToggle:UpdateState(false)
wioq.quiet = false
end)

pcall(function()
zpzc:Dialog({
Title = _d("dABCX1E+DVIdQl0QAgEVIVlHFAJEWhNQ"),
Description = _d("exxRWAUdBUcQFmQeBwFHVVVfBB4QRlVXQ1EkC0IQRBAYHkRGGVlEUUFIFRRYVFEJC0AHFkMdHxAVRBZZAlALW1U") .. cq.roleName(1) .. _d("FQdfVxkERFsaQR5RIwFBVUVcHgREBFVCX1EkC0IQRBAXGRZGARg"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})
end)

return
end

pcall(function()
wioq.quiet = true
wioq.ui:UpdateState(false)
wioq.quiet = false
end)

wioq.enabled = true
wioq.manualPause = false
wioq.paused = false

dfd.restorePause()
wioq.pauseArmed = false

dfd.endIfWrongMode(true)
dfd.hardPick(true)

wioq.pending = false
wioq.pendingUntil = 0
end,
}, _d("VABCXy4eDVIdQl0QAgFqAVlHFAI"))

pxt:Header({
Name = _d("dABCX1EgBUAGUxAlHxNQBw"),
})

local ncz

ncz = pxt:Toggle({
Name = _d("dABCX1EgBUAGUxA3HAtaBw"),
Default = false,
Callback = function(hnml)
rfr.triggered = false

if hnml and rfr.floor <= 0 then
rfr.enabled = false

pcall(function()
ncz:UpdateState(false)
end)

pcall(function()
xbku.SaveClientData:FireServer({ pauseInfiniteEnabled = false })
end)

zpzc:Dialog({
Title = _d("dABCX1EgBUAGUxA3HAtaBw"),
Description = _d("ZhBCEBBQFFQARVVRFghaGkQQEBILQxAWAFEWDUcGQhBcUCVAAVkQIRERRhAWZB4HAUdVWFUUFBcVAVkQGh4LQlVBWBQCARUBWRACBAtFWw"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})

return
end

rfr.enabled = hnml

pcall(function()
xbku.SaveClientData:FireServer({
pauseInfiniteEnabled = hnml,
pauseInfiniteAt = rfr.floor,
})
end)
end,
}, _d("VABCXy4ABUAGU28XHAtaBw"))

pxt:Input({
Name = _d("ZRRDQxRQBUFVUFweHxY"),
Placeholder = _d("UFtRHlFFVA"),
AcceptedCharacters = _d("ewBbUhQCFw"),
Callback = function(wvyt)
local pgy = tonumber(wvyt) or 0

if pgy < 0 then
pgy = 0
end

if pgy == rfr.floor then
return
end

rfr.floor = pgy
rfr.triggered = false

if pgy <= 0 and rfr.enabled then
rfr.enabled = false

pcall(function()
ncz:UpdateState(false)
end)
end

pcall(function()
xbku.SaveClientData:FireServer({
pauseInfiniteAt = pgy,
pauseInfiniteEnabled = rfr.enabled,
})
end)
end,
}, _d("RRRDQxQvBUEqUFweHxY"))

pxt:Button({
Name = _d("ZRRDQxRQMFoCU0I"),
Callback = function()
local ab = false

pcall(function()
ab = ffjm()
end)

if ab then

wioq.manualPause = true
return
end

zpzc:Dialog({
Title = _d("ZRRDQxRQMFoCU0I"),
Description = _d("exoWXBgGARUBWUcUAkRHAFgQBR9ERRRDQxRQFlwSXkRRHgtCWw"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})
end,
})

pxt:Header({
Name = _d("dABCX1E3DUMQFmUB"),
})

gtav.toggle = pxt:Toggle({
Name = _d("dABCX1E3DUMQFmUB"),
Default = false,
Callback = function(kzdj)
gtav.triggered = false

if kzdj and gtav.floor <= 0 then
gtav.enabled = false

pcall(function()
gtav.toggle:UpdateState(false)
end)

zpzc:Dialog({
Title = _d("dABCX1E3DUMQFmUB"),
Description = _d("ZhBCEBBQA1wDUxAEAERTGVlfA1AFVxpAVVFARFMcREMFUEkVNENEHlAjXANTECQARFsQU1QCUBBaVV1eHgdEQh1TQhRQEFpVRUQeAEo"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})

return
end

gtav.enabled = kzdj
end,
}, _d("VABCXy4XDUMQaUUB"))

pxt:Input({
Name = _d("chxAVVEFFBUaWBAXHAtaBw"),
Placeholder = _d("UFtRHlFHVA"),
AcceptedCharacters = _d("ewBbUhQCFw"),
Callback = function(qga)
local sgkv = tonumber(qga) or 0

if sgkv < 0 then
sgkv = 0
end

if sgkv == gtav.floor then
return
end

gtav.floor = sgkv
gtav.triggered = false

if sgkv <= 0 and gtav.enabled then
gtav.enabled = false

pcall(function()
gtav.toggle:UpdateState(false)
end)
end
end,
}, _d("UhxAVS4FFGoaWG8XHAtaBw"))

gtav.weatherToggle = pxt:Toggle({
Name = _d("dABCX1EXDUMQFkUBUAtbVUFVEAQMUAc"),
Default = false,
Callback = function(wwv)
gtav.weatherTriggered = false

if wwv and next(gtav.weathers) == nil then
gtav.weatherEnabled = false

pcall(function()
gtav.weatherToggle:UpdateState(false)
end)

zpzc:Dialog({
Title = _d("YhBXRBkVFhUyX0YUUDFF"),
Description = _d("YRxVW1EREBUZU1ECBERaG1MQBhUFQR1TQlESAVkaQRAXGRZGARYdUR8QXRBERxgDARUBXlUDFURcBhZeHgQMXBtREAUfRFIcQFVRBRQVGlge"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})

return
end

gtav.weatherEnabled = wwv
end,
}, _d("VABCXy4XDUMQaUUBLwtbKkFVEAQMUAc"))

pxt:Dropdown({
Name = _d("chxAVVEFFBUCU1EFGAFHBg"),
Multi = true,
Required = false,
Options = { _d("YQxGWB4fCg"), _d("dxlfSgsRFlE"), _d("eRxRWAUeDVsS"), _d("YhxYVAIEC0cY"), _d("Zh1XQhgeA1Qb"), _d("ZhxYVwQcBUccQkk"), _d("eBpYUQMTDBUxWV0QGQo"), _d("YxpfVA"), _d("eBRSVVEZChU9U1EHFQo"), _d("eBRYVxA") },
Callback = function(zxzo)
gtav.weathers = {}

if type(zxzo) == _d("QRRUXBQ") then
for verm, ihv in pairs(zxzo) do
if ihv then
gtav.weathers[verm] = true
end
end
end

gtav.weatherTriggered = false
end,
}, _d("UhxAVS4FFGoCU1EFGAFHBg"))

pxt:Input({
Name = _d("eBxYWRwFCRUTWl8eAhc"),
Placeholder = _d("BVULEBAeHRUTWl8eAg"),
AcceptedCharacters = _d("ewBbVQMZBw"),
Callback = function(dsii)
local ocyf = math.floor(tonumber(dsii) or 0)

if ocyf < 0 then
ocyf = 0
end

gtav.weatherMinFloor = ocyf
gtav.weatherTriggered = false
end,
}, _d("WBxYWRwFCWoTWl8eAhc"))

gtav.weatherLateToggle = pxt:Toggle({
Name = _d("chxAVVEFFBUCX0QZUFYFBhZcFBYQ"),
Default = false,
Callback = function(gxqf)
gtav.weatherLate = gxqf
gtav.weatherTriggered = false

if gxqf and not gtav.weatherEnabled then
pcall(function()
gtav.weatherToggle:UpdateState(true)
end)
end
end,
}, _d("UhxAVS4FFGoZV0QU"))

pxt:Button({
Name = _d("chxAVVElFBUhWUcUAg"),
Callback = function()
if not ipbb() then
zpzc:Dialog({
Title = _d("chxAVVElFBUhWUcUAg"),
Description = _d("exoWXBgGARUBWUcUAkRHAFgQBR9EUhxAVVEFFBUHX1cZBERbGkEe"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})

return
end

zpzc:Dialog({
Title = _d("chxAVVElFBUhWUcUAg"),
Description = _d("cxpEVhQZEBUBXlVRExFHB1NeBVAQWgJTQlECEVtKFmQZGRcVFldeHx8QFRdTEAQeAFobUx4"),
Buttons = {
{
Name = _d("choWUhATDw"),
},
{
Name = _d("chxAVVEFFA"),
Callback = function()
local qwu = false

pcall(function()
qwu = aw()
end)

if qwu then
return
end

task.defer(function()
task.wait(0.3)

zpzc:Dialog({
Title = _d("chxAVVElFBUhWUcUAg"),
Description = _d("exoWVxgGARUARhATBRBBGlgQEB4XQhBEVRVQSRUBXlVRAhFbVVtRCFAFWQdTURUJRFcQFl8HFRYb"),
Buttons = {
{
Name = _d("chpCEBgE"),
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

pxt:Button({
Name = _d("dh1TUxpQCFoGRRAZGRdBGkRJ"),
Callback = function()
local wvne = dfd.remote(_d("ZxBHRRQDEGEaQVUDOA1GAVlCCA"))

if not wvne then
zpzc:Dialog({
Title = _d("eRpFQ1E4DUYBWUII"),
Description = _d("YR1fQ1ESEVwZUhAZERcVG1kQBR8TUAcWWBgDEFoHTxADFQlaAVMe"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})

return
end

dfd.standDown(dfd.historyOpen)

pcall(function()
wvne:FireServer()
end)
end,
})

pxt:Button({
Name = _d("dh1TUxpQA1AbU0IQBA1aG0U"),
Callback = function()

local rioi = ubll:FindFirstChild(_d("YRpBVQMiAUYAWkQ2BQ0"))
local gpd = rioi and rioi:FindFirstChild(_d("egVTXjYVCn0cRUQeAh0"))

if not gpd then
zpzc:Dialog({
Title = _d("chBYVQMREFwaWEM"),
Description = _d("YR1fQ1ESEVwZUhAZERcVG1kQFhUKUAdXRBgfCkZVQVkfFAtCWw"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})

return
end

dfd.standDown(dfd.generationOpen)

pcall(function()
gpd:Fire()
end)
end,
})

lb.bossTeams.towerSection = yrvb:Section({
Side = _d("eRBQRA"),
})

lb.bossTeams.towerSection:Header({
Name = _d("YRpBVQNQMFAUW0M"),
})

lb.bossTeams.towerSection:Paragraph({
Header = _d("fRpBEAUfE1AHFkQUEQlGVUFfAxs"),
Body = _d("ehNQClEVBVYdFkIEHkRABlNDUQcMVAFTRhQCREEQV11RGRBGVUVcHgREVBlEVRAUHRUdWVwVA0o/f3leS1ABVBZeEAUfE1AHFlIUHAtCVURFHwNEQhxCWFEEDFBVQlUQHURFHFVbFBREUxpEEBgESg"),
})

lb.bossTeams.towerToggle = lb.bossTeams.towerSection:Toggle({
Name = _d("YRpBVQNQMFAUW0M"),
Default = false,
Callback = function(ldwb)
lb.bossTeams.towersOn = ldwb
end,
}, _d("QRpBVQMvEFAUW0M"))

for dqlj, sz in ipairs({
{ kind = _d("QRpBVQM"), name = _d("fBtQWR8ZEExVdVECBAhQVRkQPxkDXQFbUQMV") },
{ kind = _d("XRREVBIfFlA"), name = _d("fAZaUR8URH0URFQSHxZQ") },
}) do
local pxg = math.clamp(math.floor(tonumber(lb.bossTeams.towerPicked[sz.kind]) or 1), 1, 4)

lb.bossTeams.towerPicked[sz.kind] = pxg

lb.bossTeams.towerUi[sz.kind] = lb.bossTeams.towerSection:Dropdown({
Name = sz.name,
Search = false,
Multi = false,
Required = false,
Default = pxg,
Options = { _d("YRBXXVFB"), _d("YRBXXVFC"), _d("YRBXXVFD"), _d("YRBXXVFE") },
Callback = function(ydd)
local mii = type(ydd) == _d("QRRUXBQ") and ydd[1] or ydd
local gahm = type(mii) == _d("RgFEWR8X") and tonumber(mii:match(_d("HVBSG1g"))) or nil

if gahm then
lb.bossTeams.towerPicked[sz.kind] = gahm
lb.bossTeams.save()
end

pcall(function()
lb.bossTeams.towerUi[sz.kind]:UpdateName(sz.name .. _d("FZe2klE") .. (mii or _d("YRBXXVFB")))
end)
end,
}, _d("QRBXXS4EC0IQRG8") .. sz.kind)

pcall(function()
lb.bossTeams.towerUi[sz.kind]:UpdateSelection(_d("YRBXXVE") .. tostring(pxg))
lb.bossTeams.towerUi[sz.kind]:UpdateName(sz.name .. _d("FZe2klEkAVQYFg") .. tostring(pxg))
end)
end

lb.bossTeams.towerSection:Header({
Name = _d("ZgJXQFEfChUTWl8eAg"),
})

lb.bossTeams.towerSection:Paragraph({
Header = _d("ZgJXQFEEAVQYFl8fUAUVE1pfHgI"),
Body = _d("YR1TEBYRCVBSRRAeBwoVBkFRAVxEWxpCEBBQFFQARVVfUCFUFl4QAwUIUFVfQ1ERRFMZWV8DUAVbERZEGRVEQRBXXVEHC0cbFlYDHwkVAV5RBVACWRpZQlEfChlVQUIYBBBQGxZZHwQLFQFeVVEXBVgQEUNRIwFBAV9eFgNEGEsWcQQECxUhU1EcUDdCFEYQQFAFWxEWAl1QF1pVQlgUUANUGFMQHBEPUAYWRBkVREYCX0QSGERcAUVVHRZEQh1TXlERREcAWBACBAVHAUUQBRgFQVVQXB4fFhtVeF8FGA1bEhZZAlAXQRpGQBQURFQbUhAFGAEVB0NeURsBUAVFEBgEFxUGWl8FXm4/NBZTEAMQWRAWQgQeRFIQQkNRBAxQVUVRHBVERgJfRBIYRFMHWV1RBAxcBhZAEB4BWVkWUhQTBUAGUxAFGAEVElddFFcXFRpBXlEDE1QFFl8fHB0VE19CFANEXBtFWRUVRHwbUFkfGRBQVWRfHh0XG388fBQRElBVVxAXHAtaBxZRBVBUFQFZEAUFFltVQlgQBERHAFpVUR8CU1s"),
})

function lb.bossTeams.swapStatusText()
local bdes = lb.bossTeams.swap
local vgf = {}

if bdes.on then
table.insert(vgf, _d("ehsWHVEHFlwBQlUfUBBaVUJYFFADVBhTFwJQJUABWRAlFQVYVWVHEABERxpBQ18"))
else
table.insert(vgf, _d("ehNQEFxQEF0QFlcQHQESBhZDBhEUFRxFEB0VAkFVV1weHgEb"))
end

local mzkp = {
{ index = 1, floor = bdes.floor, team = bdes.team },
{ index = 2, floor = bdes.floor2, team = bdes.team2 },
}

for wox, smj in ipairs(mzkp) do
if smj.floor > 0 then
table.insert(vgf, string.format(_d("ZgJXQFFVAA9VYlUQHUQQERZWAx8JFRNaXx4CRBAR"), smj.index, smj.team, smj.floor))
else
table.insert(vgf, string.format(_d("ZgJXQFFVAA9VWVYXUExbGhZWHR8LR1VFVQVZ"), smj.index))
end
end

if lb.bossTeams.swapMessage ~= _d("") then
table.insert(vgf, lb.bossTeams.swapMessage)
end

return table.concat(vgf, _d("Pw"))
end

function lb.bossTeams.paintSwap()
pcall(function()
lb.bossTeams.swapStatus:UpdateBody(lb.bossTeams.swapStatusText())
end)
end

lb.bossTeams.swapToggle = lb.bossTeams.towerSection:Toggle({
Name = _d("ZgJXQFEEAVQYFl8fUAJZGllC"),
Default = lb.bossTeams.swap.on,
Callback = function(nqr)
lb.bossTeams.swap.on = nqr

lb.bossTeams.swapReset()

lb.bossTeams.swapApply()
lb.bossTeams.save()
end,
}, _d("RgJXQC4EAVQYaV8fLwJZGllC"))

lb.bossTeams.swapInput = lb.bossTeams.towerSection:Input({
Name = _d("cxlZXwM"),
Placeholder = _d("UFtRHlFFVAVVHgBRTURaE1AZ"),
AcceptedCharacters = _d("ewBbVQMZBw"),
Callback = function(rrsl)
local pvf = tonumber(type(rrsl) == _d("RgFEWR8X") and rrsl:match(_d("HVBSG1g")) or rrsl)

if pvf then
lb.bossTeams.swap.floor = pvf
lb.bossTeams.swapReset()
lb.bossTeams.swapApply()
lb.bossTeams.save()
end
end,
}, _d("UxlZXwM"))

lb.bossTeams.swapDropdown = lb.bossTeams.towerSection:Dropdown({
Name = _d("ZgJXQFEECw"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(lb.bossTeams.swap.team) or 1), 1, 4),
Options = { _d("YRBXXVFB"), _d("YRBXXVFC"), _d("YRBXXVFD"), _d("YRBXXVFE") },
Callback = function(clef)
local xlj = type(clef) == _d("QRRUXBQ") and clef[1] or clef
local swo = type(xlj) == _d("RgFEWR8X") and tonumber(xlj:match(_d("HVBSG1g"))) or nil

if swo then
lb.bossTeams.swap.team = swo
lb.bossTeams.swapReset()
lb.bossTeams.swapApply()
lb.bossTeams.save()
end

pcall(function()
lb.bossTeams.swapDropdown:UpdateName(_d("ZgJXQFEECxWXtpJR") .. (xlj or _d("YRBXXVFB")))
end)

lb.bossTeams.paintSwap()
end,
}, _d("RgJXQC4ECw"))

lb.bossTeams.swapInput2 = lb.bossTeams.towerSection:Input({
Name = _d("cxlZXwNQVg"),
Placeholder = _d("UFtRHlFBVAVFFhhBUFkVGlBWWA"),
AcceptedCharacters = _d("ewBbVQMZBw"),
Callback = function(pao)
local gdn = tonumber(type(pao) == _d("RgFEWR8X") and pao:match(_d("HVBSG1g")) or pao)

if gdn then
lb.bossTeams.swap.floor2 = gdn
lb.bossTeams.swapReset()
lb.bossTeams.swapApply()
lb.bossTeams.save()
end
end,
}, _d("UxlZXwMvVg"))

lb.bossTeams.swapDropdown2 = lb.bossTeams.towerSection:Dropdown({
Name = _d("ZgJXQFEECxVH"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(lb.bossTeams.swap.team2) or 1), 1, 4),
Options = { _d("YRBXXVFB"), _d("YRBXXVFC"), _d("YRBXXVFD"), _d("YRBXXVFE") },
Callback = function(egiw)
local vrro = type(egiw) == _d("QRRUXBQ") and egiw[1] or egiw
local inhv = type(vrro) == _d("RgFEWR8X") and tonumber(vrro:match(_d("HVBSG1g"))) or nil

if inhv then
lb.bossTeams.swap.team2 = inhv
lb.bossTeams.swapReset()
lb.bossTeams.swapApply()
lb.bossTeams.save()
end

pcall(function()
lb.bossTeams.swapDropdown2:UpdateName(_d("ZgJXQFEECxVHFtLx0kQ") .. (vrro or _d("YRBXXVFB")))
end)

lb.bossTeams.paintSwap()
end,
}, _d("RgJXQC4EC2pH"))

lb.bossTeams.swapStatus = lb.bossTeams.towerSection:Paragraph({
Header = _d("ZgJXQFEDEFQBQ0M"),
Body = lb.bossTeams.swapStatusText(),
})

pcall(function()
local vhk = math.clamp(math.floor(tonumber(lb.bossTeams.swap.team) or 1), 1, 4)
local ana = math.clamp(math.floor(tonumber(lb.bossTeams.swap.team2) or 1), 1, 4)

lb.bossTeams.swapDropdown:UpdateSelection(_d("YRBXXVE") .. tostring(vhk))
lb.bossTeams.swapDropdown:UpdateName(_d("ZgJXQFEECxWXtpJRJAFUGBY") .. tostring(vhk))
lb.bossTeams.swapDropdown2:UpdateSelection(_d("YRBXXVE") .. tostring(ana))
lb.bossTeams.swapDropdown2:UpdateName(_d("ZgJXQFEECxVHFtLx0kRhEFddUQ") .. tostring(ana))
end)

task.spawn(function()
local sid = lb.bossTeams.swapStatusText()

while vgo() do
local vav = lb.bossTeams.swapStatusText()

if vav ~= sid then
sid = vav
lb.bossTeams.paintSwap()
end

task.wait(2)
end
end)

if lb.bossTeams.swap.on then
task.delay(2, function()
pcall(lb.bossTeams.swapApply)
end)
end

lb.bossTeams.section = yrvb:Section({
Side = _d("ZxxRWAU"),
})

lb.bossTeams.section:Header({
Name = _d("dxpFQ1EkAVQYRQ"),
})

lb.bossTeams.section:Paragraph({
Header = _d("fRpBEBMfF0ZVQlUQHRcVAllCGg"),
Body = _d("ehNQClEeC0EdX14WUA1GVUVHGAQHXRBSEFxQAUMQRElRFg1SHUIQBAMBRlVCWBRQEFAUWxAIHxEVFFpCFBEATFVeUQcVRFkcWFUVUBFFWRZHGRkHXVVfQ1EEDFBVZVweBEQEVUJVEB1EQBtaVQIDREYZWURRQkRBFF1VAlAQXRAWUhAEEFkQGDp7PwoPVVNREhhEVAdTUVESAVkaQRAXGQNdAUUQBhkQXVVCWBRQEFAUWxAIHxEVBV9TGlACWgcWWQVe"),
})

lb.bossTeams.toggle = lb.bossTeams.section:Toggle({
Name = _d("dxpFQ1EkAVQYRQ"),
Default = false,
Callback = function(pj)
lb.bossTeams.enabled = pj
end,
}, _d("VxpFQy4EAVQYRQ"))

for ykw, rhph in ipairs(lvxf) do
local upa = lb.bossTeams.picked[rhph.id] or 1

upa = math.clamp(math.floor(tonumber(upa) or 1), 1, 4)
lb.bossTeams.picked[rhph.id] = upa

lb.bossTeams.ui[rhph.id] = lb.bossTeams.section:Dropdown({
Name = rhph.name,
Search = false,
Multi = false,
Required = false,

Default = upa,
Options = { _d("YRBXXVFB"), _d("YRBXXVFC"), _d("YRBXXVFD"), _d("YRBXXVFE") },
Callback = function(uj)
local rypj = type(uj) == _d("QRRUXBQ") and uj[1] or uj
local vaua = type(rypj) == _d("RgFEWR8X") and tonumber(rypj:match(_d("HVBSG1g"))) or nil

if vaua then
lb.bossTeams.picked[rhph.id] = vaua

lb.bossTeams.save()
end

pcall(function()
lb.bossTeams.ui[rhph.id]:UpdateName(rhph.name .. _d("FZe2klE") .. (rypj or _d("YRBXXVFB")))
end)
end,
}, _d("QRBXXS4HC0cZUm8") .. rhph.id)

pcall(function()
lb.bossTeams.ui[rhph.id]:UpdateSelection(_d("YRBXXVE") .. tostring(upa))
lb.bossTeams.ui[rhph.id]:UpdateName(rhph.name .. _d("FZe2klEkAVQYFg") .. tostring(upa))
end)
end

lb.bossTeams.raidSection = yrvb:Section({
Side = _d("ZxxRWAU"),
})

lb.bossTeams.raidSection:Header({
Name = _d("ZxRfVFEkAVQYRQ"),
})

lb.bossTeams.raidSection:Paragraph({
Header = _d("fRpBEAMRDVFVQlUQHRcVAllCGg"),
Body = _d("ehNQClECBVwRRRAEAwEVAl5RBRUSUAcWRBQRCRUBXlVRAwhaARZRHQIBVBFPEBkfCFEGGDp7PwoPVVNREhhERxRfVFESAVkaQRAYA0RTGkNXGQREQhxCWFEEDFBVQlUQHURFHFVbFBREUxpEEBgESg"),
})

lb.bossTeams.raidToggle = lb.bossTeams.raidSection:Toggle({
Name = _d("ZxRfVFEkAVQYRQ"),
Default = false,
Callback = function(ooq)
lb.bossTeams.raidsOn = ooq
end,
}, _d("RxRfVC4EAVQYRQ"))

for ghaa, zrub in ipairs(qbcn.Raids) do
if zrub.BossTitle and zrub.id then
local jdx = lb.bossTeams.raidPicked[zrub.id] or 1

jdx = math.clamp(math.floor(tonumber(jdx) or 1), 1, 4)
lb.bossTeams.raidPicked[zrub.id] = jdx

lb.bossTeams.raidUi[zrub.id] = lb.bossTeams.raidSection:Dropdown({
Name = zrub.BossTitle,
Search = false,
Multi = false,
Required = false,
Default = jdx,
Options = { _d("YRBXXVFB"), _d("YRBXXVFC"), _d("YRBXXVFD"), _d("YRBXXVFE") },
Callback = function(jnef)
local hrwq = type(jnef) == _d("QRRUXBQ") and jnef[1] or jnef
local vtwl = type(hrwq) == _d("RgFEWR8X") and tonumber(hrwq:match(_d("HVBSG1g"))) or nil

if vtwl then
lb.bossTeams.raidPicked[zrub.id] = vtwl
lb.bossTeams.save()
end

pcall(function()
lb.bossTeams.raidUi[zrub.id]:UpdateName(zrub.BossTitle .. _d("FZe2klE") .. (hrwq or _d("YRBXXVFB")))
end)
end,
}, _d("QRBXXS4CBVwRaQ") .. zrub.id)

pcall(function()
lb.bossTeams.raidUi[zrub.id]:UpdateSelection(_d("YRBXXVE") .. tostring(jdx))
lb.bossTeams.raidUi[zrub.id]:UpdateName(zrub.BossTitle .. _d("FZe2klEkAVQYFg") .. tostring(jdx))
end)
end
end

task.spawn(function()
local bb = swdo()

while vgo() do
local ubic = swdo()

if cq.enabled and cq.statusText then
ubic = cq.statusText()
end

ubic = ubic .. _d("P39lVQMGAUdVQ0BR") .. ygpb()

if ubic ~= bb then
bb = ubic
pcall(function()
day:UpdateBody(ubic)
end)
end
task.wait(0.5)
end
end)

task.spawn(function()
while vgo() do
for jmz, kqfv in ipairs({ _d("dxRCRB0VI0Ac"), _d("dxRCRB0VI0AcBA") }) do
local udr = ubll:FindFirstChild(kqfv)
local pncu = udr and udr:FindFirstChild(_d("dxRCRB0VN1YHU1Uf"))
local mat = udr and udr:FindFirstChild(_d("fRxSVTMREEEZU3IEBBBaGw"))

if pncu and pncu.Visible and mat and not mat.Visible then
mat.Visible = true
end
end

task.wait(0.5)
end
end)

task.spawn(function()
local gbe = false

while vgo() do
if com then
local dhvh = ubll:FindFirstChild(_d("YRpBVQMiAUYAWkQ2BQ0"))
local kzbd = dhvh and dhvh:FindFirstChild(_d("ZxBFRR0EIkcUW1U"))
local wity = dhvh and dhvh:FindFirstChild(_d("chBYVQMREFwbUXYDEQlQ"))

if wity and wity.Visible then
wity.Visible = false
end

local qpn = kzbd and kzbd.Visible or false

if qpn and not gbe then
local xih = kzbd:FindFirstChild(_d("dhlZQxQyEUEBWV4"))
local gve = false

if xih then
for amed, erx in ipairs({ _d("eBpDQxQyEUEBWV5AMwhcFl0"), _d("dBZCWQcREFAR") }) do
local pvqi = xih[erx]
if pvqi then
for wayy, gzim in ipairs(getconnections(pvqi)) do
pcall(function()
gzim:Fire()
end)
gve = true
end
end
end
end

if not gve then
kzbd.Visible = false
else
task.spawn(function()
task.wait(0.3)
if kzbd.Parent and kzbd.Visible then
kzbd.Visible = false
end
end)
end
end

gbe = qpn
else
gbe = false
end

task.wait(0.2)
end
end)

local im = {}

function im.active()
return lb.enabled or lb.story
end

function im.towerHolds()
if cq.enabled then
return false
end

if vot.run.enabled then
return true
end

return wioq.enabled and not wioq.paused
end

function im.ready(ivwh, wt, pc)
local eccq = lb.unlocked[ivwh]

return (not eccq or eccq[wt] ~= false) and iysc(ivwh, wt) <= pc
end

function im.hasReadyTarget()
local xar = os.time()

for osu, is in ipairs(dt()) do
for odyl, aun in ipairs(cjxt()) do
if im.ready(is, aun, xar) then
return true
end
end
end

return false
end

function im.backOff(ayc, pnkf)
rpro(ayc, pnkf, os.time() + 5)
end

function im.findTarget()
for ar, enf in ipairs(dt()) do
local eqd = fwd(enf)
local kkp = os.time() - (lb.lastFetch[enf] or 0) > 60

if kkp and eqd and not lb.walkToNpc then
xlst(eqd)
task.wait(0.3)
zcq(enf)
end

for udf, tsf in ipairs(cjxt()) do
if im.ready(enf, tsf, os.time()) then
return enf, tsf
end
end
end

return nil
end

function lb.bossTeams.slotForFight()
if cq.hasSlot2 == false then
return 1
end

if cq.busy(2) then
return 1
end

return 2
end

function lb.bossTeams.slotTeam(tkc)
local bvbl = ubll:FindFirstChild(_d("ZhBCRBgeA0YyQ1k"))
local pzz = bvbl and bvbl:FindFirstChild(_d("ZhlZRCUVBVg") .. tkc .. _d("dwBCRB4e"), true)
local np = pzz and pzz.Text

return np and tonumber(np:match(_d("HVBSG1g"))) or nil
end

function lb.bossTeams.applyTeam(exk, lnav)
exk = tonumber(exk)

if not exk then
return false
end

lnav = tonumber(lnav) or lb.bossTeams.slotForFight()

if cq.busy(lnav) then
return false
end

lb.bossTeams.lastSlot = lnav

local aogw = lb.bossTeams.slotTeam(lnav) or lb.bossTeams.applied[lnav]

if aogw == exk then
return true
end

local rvb = dfd.remote(_d("ZgJfRBIYMFAUWw"))

if not rvb then
return false
end

local fxa = pcall(function()
rvb:FireServer(exk, false, lnav)
end)

lb.bossTeams.applied[lnav] = exk
task.wait(0.2)

return fxa
end

function lb.bossTeams.apply(ubc)
if not lb.bossTeams.enabled then
return
end

local zuct = lb.bossTeams.worldOf[ubc]
local tvf = zuct and lb.bossTeams.picked[zuct]

if not tvf then
return
end

lb.bossTeams.applyTeam(tvf)
end

function lb.bossTeams.applyTower(qtrd, vki)
if not lb.bossTeams.towersOn then
return false
end

local la = lb.bossTeams.towerPicked[qtrd]

local twg = lb.bossTeams.swapFired[qtrd]

if lb.bossTeams.swap.on and type(twg) == _d("QRRUXBQ") then
la = twg[2] or twg[1] or la
end

if not la then
return false
end

return lb.bossTeams.applyTeam(la, vki)
end

function lb.bossTeams.applyRaid(kqbg)
if not lb.bossTeams.raidsOn then
return
end

local brng = kqbg and lb.bossTeams.raidPicked[kqbg]

if not brng then
return
end

lb.bossTeams.applyTeam(brng)
end

function im.fight(yfk, qclt)
local rmc = fwd(yfk)

if not rmc then
im.backOff(yfk, qclt)
return false
end

local ee

if lb.walkToNpc then
local ycg = ouph[yfk]

if ycg then
xbku.TeleportToWorld:FireServer(ycg)
task.wait(2.5)

local xo = fwd(yfk) or rmc
local tydn = xo:GetPivot()

ee = owl(tydn.Position + tydn.LookVector * 6, function()
return not im.active() or not lb.walkToNpc
end)

if ee then
zcq(yfk)
ee = im.ready(yfk, qclt, os.time())
end
end
else
ee = xlst(rmc)
end

if not ee then
im.backOff(yfk, qclt)
return false
end

task.wait(0.4)
lb.bossTeams.apply(yfk)
lb.activeDifficulty[yfk] = qclt
xbku.SetNPCDifficulty:FireServer(yfk, qclt)
task.wait(0.4)

lb.currentBattle = {
npcId = yfk,
difficulty = qclt,
}
ixb = yfk
ygms = qclt
xbku.StartNPCBattle:FireServer(yfk)
rpro(yfk, qclt, os.time() + 10)
lb.battlePending = true
lb.battlePendingUntil = os.time() + 30
task.wait(1)

return true
end

lb.workPending = function()

if unl.misc and unl.misc.cards and unl.misc.cards.inFlight then
return true
end

if not im.active() then
return false
end

if lb.battlePending then
return true
end

local kijn = cq.npcSlot()

if kijn and cq.busy(kijn) then
return true
end

return im.hasReadyTarget()
end

task.spawn(function()
while vgo() do

local prvy = (cq.enabled and (unl.enabled or dxxf.enabled or unl.worldBoss.enabled))
or im.towerHolds()
or not cq.slotFree(cq.npcSlot())

or (unl.misc and unl.misc.cards and unl.misc.cards.inFlight)
or (lb.battlePending and os.time() < lb.battlePendingUntil)

if im.active() and not prvy and not cq.prioBlocks(_d("WwVV")) then
local nqp, tjm = im.findTarget()

if nqp then
im.fight(nqp, tjm)
end
end

task.wait(0.5)
end
end)

task.spawn(function()
while vgo() do

local ckm = {}

if unl.enabled then

unl.requestProgress(false)

local qchu = cq.roleSlot(_d("WwVV"))

if qchu then
table.insert(ckm, qchu)
end

if cq.splitNpc() and qchu ~= 2 then
table.insert(ckm, 2)
end
end

local fhva = xn:FindFirstChild(_d("ZxRfVCIEBUEARQ"))

if #ckm > 0 and fhva and (not dxxf.enabled or cq.splitNpc()) and (cq.enabled or not lb.workPending()) then
for ron, bdn in ipairs(ckm) do
local wcax = fhva

local oml = unl.bossFor(bdn, (bdn ~= 1 and not cq.splitNpc()) and 1 or nil)
local agba = wcax:GetAttribute(_d("fAZ5QBQe")) == true or wcax:GetAttribute(_d("cxpEUxQU")) == true
local poeh = oml ~= nil and wcax:GetAttribute(_d("ZxBXVAgv") .. oml) == true
local czj = oml and xlxd(oml)

if oml and unl.pending[oml] and os.time() >= (unl.pendingUntil[oml] or 0) then

unl.pending[oml] = false
unl.cleared[oml] = nil
unl.inFlight[oml] = nil
unl.stalls[oml] = (unl.stalls[oml] or 0) + 1
end

if oml and cq.slotFree(bdn) and agba and poeh and unl.cleared[oml] ~= czj and not unl.pending[oml] then
local ozck = kmz[oml]
local zwfc = ozck and fwd(ozck)
local tdav = false

if zwfc then
if unl.walkToBoss then
local teie = qhs[oml]
local fpm = kdim.Character and kdim.Character:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))
local ujgo = zwfc:GetPivot().Position
local ivqe = fpm and (fpm.Position - ujgo).Magnitude <= 15

if ivqe then
tdav = true
elseif teie then
xbku.TeleportToWorld:FireServer(teie)

local xuor = os.clock()
while os.clock() - xuor < 2.5 and unl.enabled do
task.wait(0.1)
end

if unl.enabled then
local ltz = fwd(ozck) or zwfc
local rwe = ltz:GetPivot()
local ysc = rwe.Position + rwe.LookVector * 6
tdav = slyz(ysc, unl.walkSpeed, function()
return not unl.enabled or not unl.walkToBoss
end)
end
end

if not tdav then
tdav = xlst(zwfc)
end
else
tdav = xlst(zwfc)
end

if tdav then
task.wait(0.5)
end
end

if tdav and not cq.prioBlocks(_d("RxRfVAI")) then
unl.inFlight[oml] = bdn
unl.pending[oml] = true
unl.pendingUntil[oml] = os.time() + 15
unl.cleared[oml] = czj

local zs = unl.difficulties[1] or _d("WxpEXRAc")
local mw = unl.progress[oml]

if mw then
local iaeu = mw.unlocked
local weza = mw.cooldowns

for twhq, aytu in ipairs(unl.difficulties) do
local fgcn = not iaeu or iaeu[aytu] ~= false
local dqc = weza and tonumber(weza[aytu]) or 0

if fgcn and dqc <= 0 then
zs = aytu
break
end
end
end

lb.bossTeams.applyRaid(oml)
xbku.SetRaidDifficulty:FireServer(zs, oml)
task.wait(0.3)
xbku.StartRaidBattle:FireServer(oml)
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while vgo() do
local xq = dxxf.inBattle and os.time() < dxxf.inBattleUntil

if dxxf.enabled and (cq.enabled or not lb.workPending()) and not xq and cq.slotFree(cq.roomSlot()) and not (dxxf.pending and os.time() < dxxf.pendingUntil) then
local lcg = dxxf.progress

if lcg == nil then
xbku.RequestInfiniteRoomProgress:FireServer()
task.wait(0.5)
else
local hwfu = nil

for qbf, ymd in ipairs(xwy.Milestones) do
if xwy.isMilestoneUnlocked(ymd, lcg) and not xwy.isMilestoneCleared(ymd, lcg) then
hwfu = ymd
break
end
end

if hwfu then

local kvrf = cq.roomSlot()

dxxf.currentRoom = hwfu
dxxf.inBattle = true
dxxf.inBattleUntil = os.time() + 60
dxxf.pending = true
dxxf.pendingUntil = os.time() + 10

local ha = ubll:FindFirstChild(kvrf == 2 and _d("ZxBFVQUyBUEBWlU3HAtaBwQ") or _d("ZxBFVQUyBUEBWlU3HAtaBw"))
if ha and ha:IsA(_d("dxxYVBASCFAwQFUfBA")) then
ha:Fire(hwfu, _d("XBtQWR8ZEFAqRF8eHQ"))
end

local qn = ubll:FindFirstChild(kvrf == 2 and _d("ZgFXQgU5ClMcWFkFFTZaGltyEAQQWRAE") or _d("ZgFXQgU5ClMcWFkFFTZaGltyEAQQWRA"))
if qn and qn:IsA(_d("dxxYVBASCFAwQFUfBA")) then
qn:Fire(hwfu)
end

xbku.StartBattle:FireServer(_d("XBtQWR8ZEFAqRF8eHQ"), {
milestone = hwfu,
slot = kvrf,
})
task.wait(2)
end
end
end

task.wait(1)
end
end)

local function pbqf(vtip, ncj)
local egw = ubll:FindFirstChild(_d("ZhZEVRQeI0Ac"))

if not egw then
return
end

local pihs = egw:FindFirstChild(vtip)
local hhd = pihs and pihs:FindFirstChild(_d("YxRaRRQ8BVcQWg"), true)
local mwds = pihs and pihs:FindFirstChild(_d("eRRUVR0"), true)

if not pihs then
return
end

local sf = false

if hhd then
sf = hhd.Text == _d("ehs")
elseif mwds then
sf = not string.lower(mwds.Text):find(_d("WhNQ"), 1, true)
end

if sf ~= ncj then
for aerj, qjzj in ipairs(getconnections(pihs.MouseButton1Click)) do
local ibw = qjzj.Function

if type(ibw) == _d("UwBYUwUZC1s") then
pcall(ibw)
else
pcall(function()
qjzj:Fire()
end)
end
end
end
end

getgenv().ACBXSetRollButton = pbqf

local function jvpg(rlm)
pbqf(_d("ZABfUxoiC1kZdEUFBAtb"), rlm)
pbqf(_d("dABCXyMfCFk3Q0QFHwo"), rlm)
end

getgenv().ACBXSetRollUi = jvpg
rqc.setRollButton = pbqf

pcall(function()
xbku.SaveClientData:FireServer({ autoHideBattle = false })
end)

task.defer(function()
task.wait(0.5)

local vbf = ubll:FindFirstChild(_d("dxRCRB0VI0Ac"))
local jmx = vbf and vbf:FindFirstChild(_d("dxRCRB0VN1YHU1Uf"))
local jfkn = vbf and vbf:FindFirstChild(_d("fRxSVTMREEEZU3IEBBBaGw"))

if jfkn and jfkn.Visible and jmx and not jmx.Visible and nkvz() then
for amwl, epz in ipairs(getconnections(jfkn.MouseButton1Click)) do
local vc = epz.Function

if type(vc) == _d("UwBYUwUZC1s") then
pcall(vc)
else
pcall(function()
epz:Fire()
end)
end
end
end
end)

jvpg(true)

task.spawn(function()
while vgo() do

if rqc.autoRoll then
pbqf(_d("dABCXyMfCFk3Q0QFHwo"), true)
end

if rqc.autoQuickRoll then
pbqf(_d("ZABfUxoiC1kZdEUFBAtb"), true)
end

task.wait(1)
end
end)

local function xnlo()

if wioq.floor then
return wioq.floor
end

local lr = ubll:FindFirstChild(_d("dxRCRB0VI0Ac"))

if not lr then
return nil
end

for nrqi, ghcz in ipairs({ _d("YRpBVQM2CFoaRHwQEgFZ"), _d("ZwBYdh0fC0c5V1IUHA") }) do
local ajmx = lr:FindFirstChild(ghcz)

if ajmx and ajmx.Visible and ajmx.Text then
local mvo = tonumber(ajmx.Text:match(_d("HVBSG1g")))

if mvo then
return mvo
end
end
end

local huh = lr:FindFirstChild(_d("cxlZXwMjB0cQU14"))
local lw = huh and huh:FindFirstChild(_d("YRpGchAC"))
local wpe = lw and lw:FindFirstChild(_d("cxlZXwM8BVcQWg"))

if wpe then
return tonumber(wpe.Text:match(_d("HVBSG1g")))
end

return nil
end

function lb.bossTeams.swapRows(ffr)
local xdgr = ubll:FindFirstChild(_d("ZhBCRBgeA0YyQ1k"))
local fujx = xdgr and xdgr:FindFirstChild(_d("dABCXyIHBUU") .. ffr .. _d("ZxpB"), true)

if not fujx then
return nil
end

return fujx:FindFirstChild(_d("dABCXyIHBUU") .. ffr .. _d("dh1TUxo")),
fujx:FindFirstChild(_d("dABCXyIHBUU") .. ffr .. _d("YRBXXQ")),
fujx:FindFirstChild(_d("dABCXyIHBUU") .. ffr .. _d("cxlZXwM"))
end

function lb.bossTeams.swapOn(byr)
local eav = ubll:FindFirstChild(_d("ZhBCRBgeA0YyQ1k"))
local aobg = eav and eav:FindFirstChild(_d("chBCYxQEEFwbUUM"), true)

if not aobg then
return nil
end

local glro, nqah = pcall(function()
return aobg:Invoke()
end)

if glro and type(nqah) == _d("QRRUXBQ") then
return nqah[byr == 1 and _d("VABCXyUVBVgmQVEBNQpUF1pVFQ") or _d("VABCXyUVBVgmQVEBQiFbFFRcFBQ")] == true
end

return nil
end

function lb.bossTeams.swapBox(zafj, kqcf)
if tonumber(zafj.Text) == kqcf then
return
end

zafj.Text = tostring(kqcf)

if getconnections then
for rhlm, nwv in ipairs(getconnections(zafj.FocusLost)) do
pcall(function()
nwv:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end

function lb.bossTeams.swapSet(iew, gkzu, tjek, zuju)
local khci, zzs, xzm = lb.bossTeams.swapRows(iew)

if not (khci and zzs and xzm) then
return false
end

tjek = math.max(1, math.floor(tonumber(tjek) or 1))
zuju = math.clamp(math.floor(tonumber(zuju) or 1), 1, 4)

lb.bossTeams.swapBox(xzm, tjek)
lb.bossTeams.swapBox(zzs, zuju)

local shk = lb.bossTeams.swapOn(iew)

if shk ~= nil and shk ~= (gkzu == true) and getconnections then
pcall(function()
for nlc, hpuj in ipairs(getconnections(khci.MouseButton1Click)) do
pcall(function()
hpuj:Fire()
end)
end
end)
end

local hcu = iew == 1 and _d("") or _d("Bw")

pcall(function()
xbku.SaveClientData:FireServer({
[_d("VABCXyUVBVgmQVEB") .. hcu .. _d("cBtXUh0VAA")] = gkzu == true,
[_d("VABCXyUVBVgmQVEB") .. hcu .. _d("YRBXXQ")] = zuju,
[_d("VABCXyUVBVgmQVEB") .. hcu .. _d("cxlZXwM")] = tjek,
})
end)

return true
end

function lb.bossTeams.swapApply()
local mxgl = lb.bossTeams
local nlrl = mxgl.swap
local rzy = true

if nlrl.on then
rzy = mxgl.swapSet(1, nlrl.floor > 0, nlrl.floor, nlrl.team)
rzy = mxgl.swapSet(2, nlrl.floor2 > 0, nlrl.floor2, nlrl.team2) and rzy
else
rzy = mxgl.swapSet(1, false, nlrl.floor, nlrl.team)
rzy = mxgl.swapSet(2, false, nlrl.floor2, nlrl.team2) and rzy
end

mxgl.swapMessage = _d("")

if not rzy then
mxgl.swapMessage = _d("YR1TEBYRCVBSRRAwBRBaVWJVEB1EZgJXQFECC0IGFlEDFURbGkIQEwUNWQEWSRQERBhVRFUFAh1cG1Ee")
end

mxgl.paintSwap()
end

function lb.bossTeams.swapReset(viq)
local qwb = lb.bossTeams

if viq then
qwb.swapFired[viq] = nil
else
qwb.swapFired = {}
end
end

function lb.bossTeams.swapTick()
local reo = lb.bossTeams
local bgt = reo.swap

if not bgt.on or (bgt.floor <= 0 and bgt.floor2 <= 0) then
if next(reo.swapFired) ~= nil then
reo.swapFired = {}
end

return
end

local xxri = os.clock()
local qjbk = dfd.remote(_d("ZgJfRBIYMFAUWw"))

if xxri - (reo.swapWroteAt or 0) > 10 then
reo.swapWroteAt = xxri
reo.swapApply()
end

local pkhh = {
{
kind = _d("QRpBVQM"),
slot = cq.towerSlot(),

live = xxri - (wioq.floorAt or 0) < 90,
floor = xnlo(),

own = true,
},
{
kind = _d("XRREVBIfFlA"),
slot = cq.hardcoreSlot(),
live = giv.active(),
floor = giv.floorNow(),

own = false,
},
}

local jfl = {
{ index = 1, floor = bgt.floor, team = bgt.team },
{ index = 2, floor = bgt.floor2, team = bgt.team2 },
}

for jip, ignr in ipairs(pkhh) do
if not ignr.live then

reo.swapFired[ignr.kind] = nil
elseif ignr.own and qjbk and ignr.floor then
local eunm = reo.swapFired[ignr.kind]

for oo, nbc in ipairs(jfl) do
local osi = type(eunm) == _d("QRRUXBQ") and eunm[nbc.index]

if nbc.floor > 0 and ignr.floor == nbc.floor and not osi then
local mwb = pcall(function()
qjbk:FireServer(math.clamp(math.floor(nbc.team), 1, 4), true, ignr.slot or 1)
end)

if mwb then
eunm = type(eunm) == _d("QRRUXBQ") and eunm or {}
eunm[nbc.index] = nbc.team
reo.swapFired[ignr.kind] = eunm

reo.swapMessage = string.format(_d("dhRFRB0VRFMZWV8DUEFRVRsQAgcNQRZeVRVQEFpVYlUQHUQQERg"), ignr.floor, nbc.team)
reo.paintSwap()
end
end
end
end
end
end

task.spawn(function()
while vgo() do
pcall(lb.bossTeams.swapTick)
task.wait(0.5)
end
end)

local function cvz()

return im.active() and im.hasReadyTarget()
end

function unl.worldBoss.remote(eae)
local wg = unl.worldBoss

wg.remotes = wg.remotes or {}

local mipg = wg.remotes[eae]

if mipg and mipg.Parent then
return mipg
end

local rmbg = dfd.remote(eae)

if rmbg then
wg.remotes[eae] = rmbg
end

return rmbg
end

function unl.worldBoss.setRepeat(jdl)
local zcb = unl.worldBoss
local yygx = zcb.remote(_d("YhpEXBUyC0YGd1MFGQtb"))

if not yygx then
return false
end

local hgh = zcb.state
local qqs = type(hgh) == _d("QRRUXBQ") and hgh.repeatOn == true

if qqs == (jdl and true or false) then
zcb.repeatIntent = nil

return true
end

if jdl then
local euez = workspace:FindFirstChild(_d("YhpEXBUyC0YGd0IUHgU"))
local sqa = euez and (euez:FindFirstChild(_d("dhBaXDwRHA")) or euez)
local lxb = kdim.Character and kdim.Character:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not (sqa and lxb) then
return false
end

local jjg, swdk = pcall(function()
return sqa:GetPivot()
end)

if not jjg or (lxb.Position - swdk.Position).Magnitude > 60 then
return false
end
end

if zcb.repeatIntent == jdl and os.clock() - (zcb.repeatAskedAt or 0) < 20 then
return false
end

zcb.repeatIntent = jdl

pcall(function()
yygx:FireServer(_d("RxBGVRAE"))
end)

zcb.repeatAskedAt = os.clock()

return true
end

function unl.worldBoss.requestSync()
local ex = unl.worldBoss
local cri = ex.remote(_d("YhpEXBUyC0YGd1MFGQtb"))

if cri then
pcall(function()
cri:FireServer(_d("RgxYUw"))
end)
end

ex.askedAt = os.clock()
end

function unl.worldBoss.hasWork()
local vtz = unl.worldBoss
local idfd = vtz.state

if not vtz.enabled or type(idfd) ~= _d("QRRUXBQ") then
return false
end

if vtz.stopAtFull and type(vtz.meterFull) == _d("UwBYUwUZC1s") and vtz.meterFull() then
return false
end

local ausc = vtz.isOpen()

if ausc == nil then
ausc = idfd.open == true
end

return ausc and idfd.inFight ~= true
end

unl.worldBoss.bossUp = function()
local glxy = unl.worldBoss

if not glxy.enabled then
return false
end

local umu = glxy.isOpen()

if umu ~= nil then
return umu == true
end

local jn = glxy.state

return type(jn) == _d("QRRUXBQ") and jn.open == true
end

function unl.worldBoss.meter()
local ucrf = unl.worldBoss
local awxl = os.clock()

if awxl - (ucrf.meterAt or 0) < 1 then
return ucrf.meterCurrent, ucrf.meterMax
end

ucrf.meterAt = awxl
ucrf.meterCurrent = nil
ucrf.meterMax = nil

local drmj = xn:FindFirstChild(_d("YhpEXBUyC0YGZUQQBBFG"))
local iu = drmj and tonumber(drmj:GetAttribute(_d("eBBCVQM")))
local vsfj = drmj and tonumber(drmj:GetAttribute(_d("eBBCVQM9BU0")))

if iu and vsfj and vsfj > 0 then
ucrf.meterCurrent = iu
ucrf.meterMax = vsfj

return ucrf.meterCurrent, ucrf.meterMax
end

local function zzo(auc)
if type(auc) ~= _d("RgFEWR8X") then
return nil
end

local kj, sgw = auc:match(_d("HS4TVFReOR5cE0NbWD9+OHRbHBI5Clw"))
local fc = tonumber(kj)

if not fc then
return nil
end

local sip = ({ K = 1000, M = 1000000, B = 1000000000 })[string.upper(sgw or _d(""))] or 1

return fc * sip
end

local wgpy = ubll:FindFirstChild(_d("YhpEXBUyC0YGdFEfHgFHMkNZ"))
local bkqy = wgpy and wgpy:FindFirstChild(_d("dxRYXhQC"))
local qpmr = bkqy and bkqy:FindFirstChild(_d("eBBCVQMyBUc"))
local hde = qpmr

if qpmr and not qpmr:IsA(_d("YRBORD0RBlAZ")) then
hde = qpmr:FindFirstChild(_d("YRBORA"))
end

local oydn = hde and hde:IsA(_d("YRBORD0RBlAZ")) and hde.Text or nil

if type(oydn) == _d("RgFEWR8X") then
local cxo, vjkh = oydn:match(_d("HS5oHyxbTRpdGBtY"))

ucrf.meterCurrent = zzo(cxo)
ucrf.meterMax = zzo(vjkh)
end

return ucrf.meterCurrent, ucrf.meterMax
end

function unl.worldBoss.meterFull()
local gszq, igx = unl.worldBoss.meter()

return gszq ~= nil and igx ~= nil and igx > 0 and gszq >= igx
end

unl.worldBoss.holdsFishing = function()
local jxft = unl.worldBoss

if not jxft.enabled or not jxft.bossUp() then
return false
end

if jxft.stopAtFull and jxft.meterFull() then
return false
end

return cq.prioBlocks(_d("QhRCVQM"))
end

unl.worldBoss.holdsDigging = function()
local zmp = unl.worldBoss

if not zmp.enabled or not zmp.bossUp() then
return false
end

if zmp.stopAtFull and zmp.meterFull() then
return false
end

return cq.digBlocked()
end

unl.worldBoss.standDown = function()
local jgl = unl.worldBoss

if jgl.stopAtFull and type(jgl.meterFull) == _d("UwBYUwUZC1s") and jgl.meterFull() then
return true
end

return cq.prioBlocks(_d("VxpFQw"))
end

unl.worldBoss.usesGameChain = function()
return true
end

function unl.worldBoss.travel()
local jnk = unl.worldBoss
local uoo = kdim.Character
local nf = uoo and uoo:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not nf or os.clock() < jnk.travelUntil then
return
end

jnk.travelUntil = os.clock() + 6

local ych = workspace:FindFirstChild(_d("YhpEXBUyC0YGZl8DBAVZ"))
local ukia = ych and ych:FindFirstChild(_d("ZRpERBAc"))

if not ukia then
return
end

if (nf.Position - ukia.Position).Magnitude > 150 then
local vfx = dfd.remote(_d("YRBaVQEfFkEhWWceAghR"))

if vfx then
pcall(function()
vfx:FireServer(_d("WRpUUgg"))
end)
end

return
end

if (nf.Position - ukia.Position).Magnitude > 6 then
jnk.walkLeg(ukia.Position + Vector3.new(0, 3, 0), 4)

if (nf.Position - ukia.Position).Magnitude > 9 then
return
end
end

local kjvz = ukia:FindFirstChildOfClass(_d("ZQdZSBgdDUEMZkIeHRRB"))

if not kjvz then
return
end

pcall(function()
if type(fireproximityprompt) == _d("UwBYUwUZC1s") then
fireproximityprompt(kjvz)
else
kjvz:InputHoldBegin()
task.wait(0.25)
kjvz:InputHoldEnd()
end
end)
end

function unl.worldBoss.reach()
local rgyw = unl.worldBoss

local qkb = workspace:FindFirstChild(_d("YhpEXBUyC0YGd0IUHgU")) or workspace:FindFirstChild(_d("YhpEXBUyC0YGZUAQBwo"), true)
local igag = kdim.Character
local hqe = igag and igag:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not (qkb and hqe) then
rgyw.travel()
return false
end

local qr = qkb:FindFirstChild(_d("dhBaXDwRHA")) or qkb
local xpw, hltc = pcall(function()
return qr:GetPivot()
end)

if not xpw then
return false
end

local xcff = hltc.Position + hltc.LookVector * 6 + Vector3.new(0, 3, 0)
local lmx = Vector3.new(hltc.Position.X, xcff.Y, hltc.Position.Z)

hqe.CFrame = CFrame.lookAt(xcff, lmx)

return true
end

unl.worldBoss.cityBounds = { 19100, 20900, -850, 850 }

function unl.worldBoss.inArena()
local rvuw = kdim.Character and kdim.Character:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))
local bs = unl.worldBoss.cityBounds

if not rvuw then
return false
end

local bto = rvuw.Position

return bto.X >= bs[1] and bto.X <= bs[2]
and bto.Z >= bs[3] and bto.Z <= bs[4]
end

function unl.worldBoss.enterCity(lj)
local tvbs = unl.worldBoss

local lel = os.clock() + (lj or 30)

if tvbs.inArena() then
return true
end

while os.clock() < lel do
if not tvbs.enabled then
return false
end

tvbs.travel()

if tvbs.inArena() then
return true
end

task.wait(0.5)
end

return tvbs.inArena()
end

unl.worldBoss.walking = false
unl.worldBoss.walkStartedAt = 0

function unl.worldBoss.walkLeg(dfi, qah)
local keu = unl.worldBoss
local xfxd = kdim.Character
local hlfa = xfxd and xfxd:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))
local minx = xfxd and xfxd:FindFirstChildOfClass(_d("fQBbUR8fDVE"))

if not (hlfa and minx) then
return false
end

if keu.walking and os.clock() - (keu.walkStartedAt or 0) < 45 then
return false
end

qah = qah or 6

keu.walking = true
keu.walkStartedAt = os.clock()

local husr, xdyu = pcall(function()
local mquq = os.clock() + 40
local umsh = 0
local tadv = hlfa.Position
local aca = os.clock()

while keu.enabled and os.clock() < mquq do
local ftt = Vector3.new(dfi.X - hlfa.Position.X, 0, dfi.Z - hlfa.Position.Z)

if ftt.Magnitude <= qah then
return true
end

if os.clock() - umsh >= 0.25 then
minx:MoveTo(Vector3.new(dfi.X, hlfa.Position.Y, dfi.Z))
umsh = os.clock()
end

if os.clock() - aca >= 1.2 then
if (hlfa.Position - tadv).Magnitude < 2 then
minx.Jump = true
end

tadv = hlfa.Position
aca = os.clock()
end

task.wait(0.1)
end

return Vector3.new(dfi.X - hlfa.Position.X, 0, dfi.Z - hlfa.Position.Z).Magnitude <= qah
end)

pcall(function()
minx:MoveTo(hlfa.Position)
end)

keu.walking = false

return husr and xdyu == true
end

function unl.worldBoss.walkIn(ezh)
local cnyl = unl.worldBoss
local puqc = workspace:FindFirstChild(_d("YhpEXBUyC0YGd0IUHgU"))
local yab = puqc and (puqc:FindFirstChild(_d("dhBaXDwRHA")) or puqc) or nil
local aag = kdim.Character and kdim.Character:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if not (yab and aag) then
return false
end

local mjgw, mobj = pcall(function()
return yab:GetPivot()
end)

if not mjgw then
return false
end

local ikni = mobj.Position + mobj.LookVector * 6 + Vector3.new(0, 3, 0)

if (aag.Position - ikni).Magnitude <= (ezh or 10) then
return true
end

local zycj = cnyl.walkLeg(ikni, ezh or 6)

if not zycj then
zycj = (aag.Position - mobj.Position).Magnitude <= 25
end

return zycj
end

function unl.worldBoss.approach()
local jvc = unl.worldBoss

if not jvc.walkToBoss then
return jvc.reach()
end

if not jvc.enterCity() then
return false
end

return jvc.walkIn(10)
end

function unl.worldBoss.fight()
local iwjh = unl.worldBoss
local vq = iwjh.remote(_d("YhpEXBUyC0YGd1MFGQtb"))

local function zsxe(nux)
iwjh.nextFightAt = os.clock() + (nux or 20)

return false
end

if not vq then
return zsxe(60)
end

if iwjh.stopAtFull and iwjh.meterFull() then
return zsxe(20)
end

if htn.enabled
and (htn.tpToBay or htn.deepZone)
and htn.phase ~= _d("XBFaVQ") then
return false
end

iwjh.takingUntil = os.clock() + 45

local afve = workspace:FindFirstChild(_d("YhpEXBUyC0YGd0IUHgU"))
local nnoe = afve and (afve:FindFirstChild(_d("dhBaXDwRHA")) or afve) or nil
local mht = kdim.Character and kdim.Character:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

local function bbjr()
if not (nnoe and mht) then
return nil
end

local cafh, pdof = pcall(function()
return nnoe:GetPivot()
end)

if not cafh then
return nil
end

return (mht.Position - pdof.Position).Magnitude
end

local cah = iwjh.usesGameChain() and (bbjr() or math.huge) <= 60

if not cah and not iwjh.approach() then
iwjh.takingUntil = os.clock() + 3

return zsxe(iwjh.inArena() and 3 or 20)
end

if nnoe and mht then
local twbq, zlgv = pcall(function()
return nnoe:GetPivot()
end)

if not twbq or (mht.Position - zlgv.Position).Magnitude > 60 then
iwjh.takingUntil = os.clock() + 2

return zsxe(iwjh.inArena() and 2 or 10)
end
end

lb.bossTeams.applyTeam(iwjh.team)

task.wait(cah and 0 or (iwjh.walkToBoss and 0.3 or 1.4))

pcall(function()
vq:FireServer(_d("UxxRWAU"))
end)

iwjh.fightAt = os.clock()

iwjh.holdUntil = os.clock() + (iwjh.usesGameChain() and 0.7 or 4)

iwjh.takingUntil = os.clock() + 0.6

if htn.enabled and (htn.tpToBay or htn.deepZone) then
htn.deepPhase = _d("XBFaVQ")
htn.deepStageAt = 0
htn.nextCastAt = 0
end

iwjh.killsAtFire = type(iwjh.state) == _d("QRRUXBQ") and tonumber(iwjh.state.kills) or nil

if not iwjh.usesGameChain() and htn.enabled
and (htn.tpToBay or htn.deepZone) then
iwjh.nextFightAt = os.clock() + 1
end

return true
end

function unl.worldBoss.buy(rmf)
local tuu = unl.worldBoss
local jgxb = tuu.remote(_d("YhpEXBUyC0YGd1MFGQtb"))

rmf = rmf or 1

if not jgxb then
return 0
end

local dev = 0

for sx = 1, rmf do
local wpkl = tuu.state

if type(wpkl) ~= _d("QRRUXBQ") or type(wpkl.shop) ~= _d("QRRUXBQ") then
break
end

if os.clock() < tuu.buyAt then
break
end

local zjr = tonumber(wpkl.medals) or 0
local dk = nil

for drqa, tm in ipairs(wpkl.shop) do
local zqm = tonumber(tm.price) or 0
local bfte = tm.kind ~= _d("XAFTXQ") or (tonumber(tm.left) or 0) > 0

if tuu.selected[tm.id] == true and bfte and tm.owned ~= true and zqm <= zjr then
dk = tm
break
end
end

if not dk then
break
end

pcall(function()
jgxb:FireServer(_d("VwBP"), dk.id, 1)
end)

dev = dev + 1
tuu.bought = tuu.bought + 1
tuu.buyAt = os.clock() + 1.2

tuu.syncedAt = 0
tuu.requestSync()
task.wait(1.1)
end

return dev
end

unl.worldBoss.questGroups = { _d("RRBEQx4eBVk"), _d("UhlZUhAc"), _d("UxxaXA"), _d("RxBFRAMZB0EcWV4") }

function unl.worldBoss.questRows(yucw)
local swi = unl.worldBoss
local ruxh = type(yucw) == _d("QRRUXBQ") and yucw.quests or nil
local skhj = {}

if type(ruxh) ~= _d("QRRUXBQ") then
return skhj
end

for hbmy, ge in ipairs(swi.questGroups) do
local bnc = ruxh[ge]

if type(bnc) == _d("QRRUXBQ") then
for bvo, ekt in ipairs(bnc) do
if type(ekt) == _d("QRRUXBQ") then
table.insert(skhj, ekt)
end
end
end
end

return skhj
end

function unl.worldBoss.claim()
local buvi = unl.worldBoss
local weu = buvi.remote(_d("YhpEXBUyC0YGd1MFGQtb"))
local bly = buvi.state

if not weu or type(bly) ~= _d("QRRUXBQ") or type(bly.quests) ~= _d("QRRUXBQ") then
return 0
end

if os.clock() < buvi.claimAt then
return 0
end

local dspj = buvi.questRows(bly)

if #dspj == 0 then
return 0
end

local kzw = {}

for fym, kit in ipairs(dspj) do
if kit.id ~= nil then
kzw[tostring(kit.id)] = true
end
end

for flje, evvm in pairs(buvi.claimFired) do
if not kzw[flje] or os.clock() - evvm > 120 then
buvi.claimFired[flje] = nil
end
end

local bwo = nil

for vit, jkm in ipairs(dspj) do
if jkm.complete == true and jkm.claimed ~= true and jkm.id ~= nil then
local vxwi = tostring(jkm.id)
local kdqv = buvi.claimFired[vxwi]

if not (kdqv and os.clock() - kdqv < 6) then
bwo = jkm
break
end
end
end

if not bwo then
return 0
end

buvi.claimFired[tostring(bwo.id)] = os.clock()
buvi.claimedTotal = buvi.claimedTotal + 1

pcall(function()
weu:FireServer(_d("VhlXWRw"), bwo.id)
end)

buvi.claimAt = os.clock() + 2
buvi.syncedAt = 0
buvi.requestSync()

return 1
end

unl.worldBoss.syncRemote = zr(_d("YhpEXBUyC0YGZUkfEw"))

if unl.worldBoss.syncRemote then
nhka(unl.worldBoss.syncRemote.OnClientEvent, function(igy)
local rn = unl.worldBoss

if type(igy) ~= _d("QRRUXBQ") then
return
end

rn.state = igy
rn.syncedAt = os.clock()

if igy.inFight == true then
rn.wasFighting = true
elseif rn.wasFighting then
rn.wasFighting = false

if htn.enabled then
pcall(htn.recover)
end
end
end)
end

task.spawn(function()
unl.worldBoss.requestSync()
end)

task.spawn(function()
while vgo() do
local dch = unl.worldBoss
local ofow = dch.state

if dch.autoClaim then
if os.clock() - dch.syncedAt > 4 and os.clock() - dch.askedAt > 1 then
dch.requestSync()
end

dch.claim()
end

if dch.enabled then

if os.clock() - dch.syncedAt > (dch.bossUp() and 1.5 or 4) and os.clock() - dch.askedAt > 1 then
dch.requestSync()
end

if dch.autoBuy and next(dch.selected) then
dch.buy(1)
end

local biuu = type(ofow) == _d("QRRUXBQ") and ofow.repeatOn == true

if dch.usesGameChain() then

local ehex = type(ofow) == _d("QRRUXBQ") and tonumber(ofow.kills) or nil

if ehex and ehex ~= dch.seenKills then
dch.seenKills = ehex
dch.progressAt = os.clock()

dch.chainWaitAt = nil
end

if dch.standDown() then

if biuu and os.clock() - (dch.repeatAskedAt or 0) > 6 then
dch.repeatSeeded = false
dch.setRepeat(false)
end
elseif dch.bossUp() and not biuu and os.clock() - (dch.repeatAskedAt or 0) > 20 then
if dch.approach() then
dch.repeatSeeded = true
dch.progressAt = os.clock()

dch.setRepeat(true)
end
end

if dch.hasWork() and os.clock() >= dch.holdUntil
and os.clock() >= (dch.nextFightAt or 0)
and os.clock() - (dch.kickAt or 0) > 0.5
and not (dch.stopAtFull and dch.meterFull())
and not cq.prioBlocks(_d("VxpFQw")) then
dch.chainWaitAt = nil
dch.kickAt = os.clock()
dch.fight()
elseif not dch.hasWork() then
dch.chainWaitAt = nil
end

if not dch.bossUp() then
dch.chainWaitAt = nil

if biuu and os.clock() - (dch.repeatAskedAt or 0) > 6 then
dch.repeatSeeded = false
dch.setRepeat(false)
end
end
elseif dch.isOpen() and biuu and os.clock() - (dch.repeatAskedAt or 0) > 6 then
dch.setRepeat(false)
end

local sh = type(ofow) == _d("QRRUXBQ") and tonumber(ofow.kills) or nil

if dch.killsAtFire ~= nil and sh == dch.killsAtFire
and os.clock() - (dch.fightAt or 0) > (dch.inArena() and 2.5 or 9)
and os.clock() < (dch.nextFightAt or 0)
and os.clock() >= dch.holdUntil then
dch.killsAtFire = nil
dch.nextFightAt = os.clock()
end

if not dch.usesGameChain() and dch.hasWork() and os.clock() >= dch.holdUntil
and os.clock() >= (dch.nextFightAt or 0)
and not (dch.stopAtFull and dch.meterFull()) then

local ggi = cvz()
local hxz = cq.roleSlot(_d("WwVV")) or 1
local qmj = cq.enabled and cq.busy(hxz)

if not ggi and not qmj then
dch.fight()
end
end
end

local hh = dch.bodyText()

if dch.bodyParagraph and hh ~= dch.bodyShown then
dch.bodyShown = hh

pcall(function()
dch.bodyParagraph:UpdateBody(hh)
end)
end

local omji = dch.shopText()

if dch.shopParagraph and omji ~= dch.shopShown then
dch.shopShown = omji

pcall(function()
dch.shopParagraph:UpdateBody(omji)
end)
end

task.wait(0.5)
end
end)

function cq.roomsHaveWork()
if not dxxf.enabled then
return false
end

local ntns = dxxf.progress

if ntns == nil then
return true
end

for umw, yce in ipairs(xwy.Milestones) do
if xwy.isMilestoneUnlocked(yce, ntns) and not xwy.isMilestoneCleared(yce, ntns) then
return true
end
end

return false
end

function cq.raidHasWork()
if not unl.enabled then
return false
end

local pga = xn:FindFirstChild(_d("ZxRfVCIEBUEARQ"))

if not pga then
return false
end

if not (pga:GetAttribute(_d("fAZ5QBQe")) == true or pga:GetAttribute(_d("cxpEUxQU")) == true) then
return false
end

for negc, xxk in ipairs({ 1, 2 }) do
local txsv = (xxk ~= 1 and not cq.splitNpc()) and 1 or nil
local zid = unl.picks[txsv or xxk] and unl.bossFor(xxk, txsv)

if zid and (unl.cleared[zid] ~= xlxd(zid)
or unl.pending[zid] == true
or unl.inFlight[zid] ~= nil) then
return true
end
end

return false
end

function cq.prioRank(yalr)
for rba, xf in ipairs(cq.prioGroups) do
if xf.id == yalr then
return xf.rank
end
end

return 99
end

function cq.prioWants(ryx)
if ryx == _d("RxRfVAI") then
return cq.raidHasWork()
elseif ryx == _d("VxpFQw") then

return unl.worldBoss.hasWork()
elseif ryx == _d("WwVV") then
return cvz() or cq.roomsHaveWork()
elseif ryx == _d("XRREVBIfFlA") then
return giv.active()
elseif ryx == _d("QhRCVQM") then
return htn.enabled or om.autoOn == true
end

return false
end

function cq.prioBlocks(skgk)
local vuwj = cq.prioRank(skgk)

for hxu, voy in ipairs(cq.prioGroups) do
if voy.id ~= skgk and voy.rank < vuwj and cq.prioWants(voy.id) then
return true
end
end

return false
end

function cq.digBlocked()
local kfja = cq.prioRank(_d("QhRCVQM"))

for blu, nes in ipairs(cq.prioGroups) do
if nes.id ~= _d("QhRCVQM") and nes.id ~= _d("XRREVBIfFlA")
and nes.rank < kfja and cq.prioWants(nes.id) then
return true
end
end

return false
end

function cq.towerYields()
for tvy, nliq in ipairs({ _d("RxRfVAI"), _d("VxpFQw"), _d("WwVV") }) do
if cq.prioWants(nliq) then
return true
end
end

return false
end

function cq.towerOutranks()
return not cq.enabled and (giv.active() or vot.run.enabled)
end

local function jzoo(topr)
if not topr then
return false
end

local myt = false

for nlw, yuba in ipairs(getconnections(topr.MouseButton1Click)) do
local bhd = yuba.Function

if type(bhd) == _d("UwBYUwUZC1s") then
pcall(bhd)
else
pcall(function()
yuba:Fire()
end)
end

myt = true
end

return myt
end

function aw()
for zu, wte in ipairs({ _d("dxRCRB0VI0Ac"), _d("dxRCRB0VI0AcBA") }) do
local kmpm = ubll:FindFirstChild(wte)

if kmpm then
local mmiu = kmpm:FindFirstChild(_d("dxRCRB0VN1YHU1Uf"))
local spd = mmiu and mmiu:FindFirstChild(_d("ZABfUxo3DUMQY0AzBRBBGlg"))

if jzoo(spd) then
return true
end

local vqpb = kmpm:FindFirstChild(_d("cxlZXwMjB0cQU14"))
local urk = vqpb and vqpb:FindFirstChild(_d("dxpCRB4dJlQH"))
local hhum = urk and urk:FindFirstChild(_d("chxAVSQAJkABQl8f"))

if jzoo(hhum) then
return true
end
end
end

local fszo = xn:FindFirstChild(_d("ZxBbXwUVFw"))
local jqd = fszo and fszo:FindFirstChild(_d("chxAVSQAMFoCU0I"))
local wkbi = fszo and fszo:FindFirstChild(_d("cBtSZB4HAUcnU10eBAE"))

if not (jqd or wkbi) then
return false
end

if jqd then
pcall(function()
jqd:FireServer()
end)
end

if wkbi then
pcall(function()
wkbi:FireServer(1)
end)
end

wioq.manualPause = false
wioq.floor = nil
dfd.restorePause()

return true
end

local elcr = aw

function aw()

wioq.lastGiveUp = {
at = os.time(),
clock = os.clock(),
floor = wioq.floor,
parked = dfd.parked(),
active = ipbb(),
hard = dfd.hardNow(),
nightmare = wioq.nightmare == true,
caller = debug.traceback(_d(""), 2),
}

local hgr = elcr()

if hgr then
eiw.armedAt = os.clock()
end

return hgr
end

function ffjm(iwpd)

local ssdw = false

if iwpd ~= false and ipbb() then
local gzjh = xnlo()

if gzjh then
ssdw = dfd.pauseAt(true, gzjh) or ssdw

wioq.pauseArmed = true
end
end

for cirk, snm in ipairs({ _d("dxRCRB0VI0Ac"), _d("dxRCRB0VI0AcBA") }) do
local qdgr = ubll:FindFirstChild(snm)

if qdgr then
local mnej = qdgr:FindFirstChild(_d("dxRCRB0VN1YHU1Uf"))
local pigr = mnej and mnej:FindFirstChild(_d("ZABfUxoyFlAUXXIEBBBaGw"))

if pigr then

if tostring(pigr.Text):find(_d("1+ml"), 1, true) then
ssdw = true
elseif jzoo(pigr) then
ssdw = true
end
end

local djbe = qdgr:FindFirstChild(_d("cxlZXwMjB0cQU14"))

if djbe and djbe.Visible then
local ub = djbe:FindFirstChild(_d("dxpCRB4dJlQH"))
local lfy = ub and ub:FindFirstChild(_d("YRRdVTMCAVQedEUFBAtb"))

if jzoo(lfy) then
ssdw = true
end
end
end
end

return ssdw
end

function giv.pauseRun()
if not ipbb() then
pcall(function()
zpzc:Dialog({
Title = _d("ZRRDQxRQLUYZV14VUCxUB1JTHgIB"),
Description = _d("exoWRB4HAUdVREUfUA1GVVpZBxVERxxRWAVQCloCGhACH0RBHVNCFFANRlVYXwUYDVsSFkQeUBRUAEVVXw"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})
end)

return
end

giv.paused = true
giv.manualPause = true
local zmy = ffjm(false)

pcall(function()
zpzc:Notify({
Title = _d("ZRRDQxRQLUYZV14VUCxUB1JTHgIB"),
Description = zmy and _d("YRpBVQNQFkAbFkAQBRdQERg") or _d("ZwBYEBgDRFkcQFVdUAZAARZeHlAGRxBXW1ESEUEBWV5RFgtAG1Ie"),
Lifetime = 5,
})
end)
end

function giv.giveUpRun()
if not ipbb() then
pcall(function()
zpzc:Dialog({
Title = _d("chxAVVElFBU8RVwQHgAVPVdCFRMLRxA"),
Description = _d("exoWRB4HAUdVREUfUA1GVVpZBxVERxxRWAVQCloCGhACH0RBHVNCFFANRlVYXwUYDVsSFkQeUANcA1MQBABK"),
Buttons = {
{
Name = _d("chpCEBgE"),
},
},
})
end)

return
end

giv.gaveUp = true
giv.paused = true
local mhnf = aw()

pcall(function()
zpzc:Notify({
Title = _d("chxAVVElFBU8RVwQHgAVPVdCFRMLRxA"),
Description = mhnf and _d("chRAVVEFFBUBXlVRExFHB1NeBVAQWgJTQlEWCFoaRB4") or _d("ZwBYEBgDRFkcQFVdUAZAARZeHlADXANTEAQARFcAQkQeHkRTGkNeFV4"),
Lifetime = 5,
})
end)
end

task.spawn(function()
while vgo() do

pcall(dfd.pinMode)

if wioq.pauseArmed and not rfr.enabled
and (not wioq.enabled or not wioq.paused) then
dfd.restorePause()

if dfd.pauseState() ~= true then
wioq.pauseArmed = false
end
end

if wioq.enabled and not wioq.manualPause and cq.towerSlot() ~= nil
and not vot.run.enabled then

local aeak = os.clock() - (wioq.floorAt or 0) > 12
and os.clock() - (wioq.battleAt or 0) > 12

local tgm = cq.towerSlot() == 1 and not wioq.paused
and not (rfr.enabled and rfr.floor > 0)
and aeak
and dfd.parked()

if tgm then
wioq.parkedAt = wioq.parkedAt > 0 and wioq.parkedAt or os.clock()

if os.clock() - wioq.parkedAt >= 25 then
wioq.parkedAt = os.clock()
aw()
end
else
wioq.parkedAt = 0
end

local rvac = dfd.hardPickNow()

local qhp = not wioq.paused and not wioq.pending
and not (rfr.enabled and rfr.floor > 0)
and ipbb()
and rvac ~= nil
and rvac ~= (wioq.nightmare == true)

if qhp then
wioq.modeWrongAt = wioq.modeWrongAt or os.clock()
else
wioq.modeWrongAt = nil
end

if wioq.modeWrongAt and os.clock() - wioq.modeWrongAt > 20
and os.clock() - (wioq.modeFixAt or 0) > 20 then
wioq.modeFixAt = os.clock()
wioq.modeWrongAt = nil
dfd.endIfWrongMode(wioq.nightmare == true)
end

if (wioq.floorAt or 0) > 0 and not wioq.paused
and os.clock() - wioq.floorAt > 60
and os.clock() - (wioq.battleAt or 0) > 60
and not ipbb()
and not cq.busy(cq.towerSlot() or 1) then
wioq.floorAt = 0
wioq.battleAt = 0
wioq.floor = nil
end

if not cq.enabled and (cq.towerOutranks() or cq.towerYields()) then
if not wioq.paused then
wioq.paused = true
ffjm()
end

elseif cq.slotFree(cq.towerSlot() or 1)
and (wioq.floorAt or 0) == 0
and not lb.bossTeams.swapHold then
local cjn = xnlo()
local hjb = rfr.enabled and rfr.floor or 0
local lax = hjb > 0 and cjn ~= nil and cjn >= hjb

if lax then
if not wioq.paused then
wioq.paused = true
ffjm()
end
else

if wioq.paused then
wioq.paused = false
dfd.restorePause()
end

if not (wioq.pending and os.time() < wioq.pendingUntil) then

lb.bossTeams.applyTower(_d("QRpBVQM"), 1)

dfd.hardPick(wioq.nightmare == true)

local gjcs = workspace:FindFirstChild(_d("dhRFRB0VNFoHQlEd"), true)

if gjcs then
local yno = kdim.Character
local ixq = yno and yno:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))

if ixq and (gjcs.Position - ixq.Position).Magnitude > 60 then
pcall(function()
lf.standAt(gjcs.Position)
end)

task.wait(0.8)
end
end

xbku.EndTowerRemote:FireServer(1)
task.wait(0.25)

xbku.StartBattle:FireServer(_d("QRpBVQM"), { hard = wioq.nightmare == true })

gtav.triggered = false
gtav.weatherTriggered = false

wioq.floorAt = os.clock()

wioq.floor = nil
wioq.pending = true
wioq.pendingUntil = os.time() + 8
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while vgo() do
if giv.active() and cq.hardcoreSlot() ~= nil then
local qqul = cq.hardcoreSlot() or 1
local aqvc = giv.floorNow()

local vofi = rfr.enabled and rfr.floor or 0
local pnxj = gtav.enabled and gtav.floor or 0

if vofi <= 0 and not giv.stoodDown and not giv.manualPause
and not lb.bossTeams.swapHold then
giv.paused = false
end

if giv.gaveUp then

elseif pnxj > 0 and aqvc and aqvc >= pnxj then
giv.gaveUp = true
giv.paused = true
local yvyi = aw()

pcall(function()
zpzc:Notify({
Title = _d("dABCX1E3DUMQFmUB"),
Description = yvyi and (_d("chRAVVEFFBUUQhAZERZRFllCFFACWRpZQlE") .. aqvc .. _d("Gw")) or (_d("fRREVBIfFlBVUFweHxYV") .. aqvc .. _d("FQdTURIYAVFZFlIEBERbGhZXGAYBFQBGEBMFEEEaWBAXHxFbERg")),
Lifetime = 5,
})
end)
elseif aqvc and vofi > 0 and aqvc >= vofi then
if not giv.paused then
giv.paused = true
ffjm(false)
end
elseif cq.prioBlocks(_d("XRREVBIfFlA")) then

if not giv.stoodDown then
giv.stoodDown = true
giv.paused = true
ffjm(false)
end
elseif giv.stoodDown then

giv.stoodDown = false
giv.paused = false
elseif not giv.paused and not lb.bossTeams.swapHold then
if cq.slotFree(qqul) and not (giv.pending and os.time() < giv.pendingUntil) then
giv.start(qqul)
task.wait(2)
end
end
end

task.wait(1)
end
end)

function cq.slotActivity(kzrz)
if not cq.busy(kzrz) then
return nil
end

local nxiu = cq.role[kzrz]
local thr = ubll:FindFirstChild(kzrz == 2 and _d("dxRCRB0VI0AcBA") or _d("dxRCRB0VI0Ac"))
local tsaq = thr and thr:FindFirstChild(_d("ZwBYdh0fC0c5V1IUHA"))
local dkg = tsaq and tsaq.Text or _d("")

if dxxf.enabled and nxiu == _d("WwVV") then
local sw = dkg:match(_d("aydZXxxVFx5dE1RaWQ"))

if sw then
return _d("fBtQWR8ZEFBVRF8eHRcVWBZCHh8JFQ") .. sw
end
end

if cq.isTowerRole(nxiu)
and (wioq.enabled or vot.run.enabled or giv.active()) then
local xwj = dkg:match(_d("azNaXx4CQUZeHhUVW00"))

if xwj then
return cq.roleName(kzrz) .. _d("FVgWVh0fC0dV") .. xwj
end
end

return nil
end

function cq.statusText()
if not cq.enabled then
return _d("dABCX1EjCFoBFl8XFkQYVVNGFAIdQR1fXhZQFkAbRRAeHkRGGVlEUUFK")
end

local efr = {}

for bhi = 1, 2 do
local amoi = _d("ZhlZRFE") .. tostring(bhi) .. _d("FVgW")
local ohw = cq.slotActivity(bhi)

if bhi == 2 and cq.hasSlot2 == false then
amoi = amoi .. cq.roleLabel(bhi) .. _d("FVgWXB4TD1ARFhgfFQFRBhZEGRVEcQBXXFEyBUEBWlVRIwhaAR8")
elseif ohw then
amoi = amoi .. ohw
elseif cq.busy(bhi) then
amoi = amoi .. cq.roleLabel(bhi) .. _d("FVgWVhgXDEEcWFc")
else
amoi = amoi .. cq.roleLabel(bhi) .. _d("FVgWWRUcAQ")
end

table.insert(efr, amoi)
end

return table.concat(efr, _d("P38"))
end

task.spawn(function()
while vgo() do
cq.hasSlot2 = cq.detectSlot2()
task.wait(5)
end
end)

task.spawn(function()
while vgo() do

if not giv.island and rfr.enabled and rfr.floor > 0 then
local jr = xnlo()

if jr and jr >= rfr.floor then
if not rfr.triggered then
rfr.triggered = true
ffjm()

pcall(function()
xbku.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = jr,
})
end)
end
else
rfr.triggered = false
end
end

if not giv.island and gtav.enabled and gtav.floor > 0 then
local czf = xnlo()

if czf and czf >= gtav.floor then

if not gtav.triggered and ipbb() then
gtav.triggered = true
local rdb = aw()

pcall(function()
zpzc:Notify({
Title = _d("dABCX1E3DUMQFmUB"),
Description = rdb and (_d("chRAVVEFFBUUQhAXHAtaBxY") .. czf .. _d("Gw")) or (_d("cxlZXwNQ") .. czf .. _d("FQdTURIYAVFZFlIEBERbGhZXGAYBFQBGEBMFEEEaWBAXHxFbERg")),
Lifetime = 5,
})
end)
end
else
gtav.triggered = false
end
end

if not giv.island and gtav.weatherEnabled then
local uhnl = xnlo()
local fmdn = gtav.weatherMinFloor <= 0
or (uhnl ~= nil and uhnl >= gtav.weatherMinFloor)
local tg = fmdn and gtav.weatherWanted() or nil

if tg and gtav.weatherLate then
local hfpc = gtav.weatherLeft()

if hfpc == nil or hfpc > 20 then
tg = nil
end
end

if tg then
if not gtav.weatherTriggered
and gtav.weatherGivenFor ~= gtav.weatherNow
and ipbb() then
gtav.weatherTriggered = true
gtav.weatherGivenFor = gtav.weatherNow

local jvw = aw()

pcall(function()
zpzc:Notify({
Title = _d("YhBXRBkVFhUyX0YUUDFF"),
Description = jvw
and (_d("chRAVVEFFBUUQhAXHAtaBxY") .. tostring(uhnl) .. _d("FRxYEA") .. tg .. _d("Gw"))
or (tg .. _d("FRxFEAQASBUXQ0RRHgsVEl9GFFARRVVURQUEC1tVV14CBwFHEFIe")),
Lifetime = 5,
})
end)
end
else
gtav.weatherTriggered = false
end
end

task.wait(1)
end
end)

task.spawn(function()
if xbku.WeatherChanged then
pcall(function()
nhka(xbku.WeatherChanged.OnClientEvent, function(hppj)

gtav.weatherNow = nil
gtav.weatherAt = 0
gtav.weatherGivenFor = nil
eiw.weatherSpent = nil

if type(hppj) == _d("RgFEWR8X") then
gtav.weatherNow = hppj
end
end)
end)
end

while vgo() do
if os.clock() - gtav.weatherAt > 5 then
gtav.weatherAt = os.clock()

if xbku.RequestWeatherState then
local gcwd, ujyt = pcall(function()
return xbku.RequestWeatherState:InvokeServer()
end)

if gcwd and type(ujyt) == _d("RgFEWR8X") then
if gtav.weatherNow ~= nil and gtav.weatherNow ~= ujyt then
eiw.weatherSpent = nil
gtav.weatherGivenFor = nil
end

gtav.weatherNow = ujyt
end
end
end

task.wait(1)
end
end)

task.spawn(function()
local ywbl = nil
local qytw = nil
local kml = 0

while vgo() do

if (eiw.onWeather or eiw.afterGiveUp) and os.clock() - kml > 60 then
kml = os.clock()

pcall(function()
xbku.RequestItemSync:FireServer()
end)
end

if eiw.onWeather and next(eiw.weatherPotions) ~= nil then
local nn = gtav.weatherWanted(eiw.weathers)

if nn and gtav.weatherNow ~= eiw.weatherSpent then

eiw.weatherSpent = gtav.weatherNow
eiw.pop(eiw.weatherPotions, eiw.weatherAmount, _d("YhBXRBkVFhU") .. nn)
end
end

if eiw.afterGiveUp and next(eiw.giveUpPotions) ~= nil and eiw.armedAt > 0 then

local nb = os.clock() - eiw.armedAt

if not ipbb() or nb >= 3 then
if nb <= 30 then
eiw.armedAt = 0
eiw.pop(eiw.giveUpPotions, eiw.giveUpAmount, _d("dBNCVQNQA1wDUxAEAA"))
else

eiw.armedAt = 0
end
end
end

local dqig = eiw.status()

if dqig ~= ywbl then
ywbl = dqig

pcall(function()
eiw.weatherParagraph:UpdateBody(dqig)
end)
end

local njis = eiw.giveUpStatus()

if njis ~= qytw then
qytw = njis

pcall(function()
eiw.giveUpParagraph:UpdateBody(njis)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while vgo() do
local lhl = htn.stick

if lhl.enabled and os.clock() >= lhl.at then
lhl.at = os.clock() + 3

local jyy = nil

for sjs, hni in ipairs(workspace:GetDescendants()) do
if (hni:IsA(_d("dxRFVSERFkE")) or hni:IsA(_d("eBpSVR0")))
and lhl.names[string.lower(hni.Name)] then
jyy = hni
break
end
end

local bwg = kdim.Character
local nuc = bwg and bwg:FindFirstChild(_d("fQBbUR8fDVEnWV8FIAVHAQ"))
local rdc = jyy and (jyy:IsA(_d("dxRFVSERFkE")) and jyy or jyy:FindFirstChildWhichIsA(_d("dxRFVSERFkE"), true))

if rdc and nuc then
local oafe = rdc:FindFirstChildWhichIsA(_d("ZQdZSBgdDUEMZkIeHRRB"))
or (jyy ~= rdc and jyy:FindFirstChildWhichIsA(_d("ZQdZSBgdDUEMZkIeHRRB"), true))

if (nuc.Position - rdc.Position).Magnitude > 4 then
pcall(function()
bwg:PivotTo(CFrame.new(rdc.Position + Vector3.new(0, 3, 0)))
end)

task.wait(0.4)
end

if oafe then
pcall(function()
oafe:InputHoldBegin()
task.wait(0.2)
oafe:InputHoldEnd()
end)
end

lhl.hits = lhl.hits + 1
lhl.last = _d("RRxVWxQUREAFFlEFUA") .. math.floor(rdc.Position.X) .. _d("GVU") .. math.floor(rdc.Position.Z)

pcall(function()
zpzc:Notify({
Title = _d("eQBVW1EjEFwWXQ"),
Description = lhl.last,
Lifetime = 4,
})
end)
elseif jyy then
lhl.last = _d("UxpDXhVQ") .. jyy:GetFullName() .. _d("GVVYXwUYDVsSFkQeUBdBFFhUUR8K")
else
lhl.last = _d("WxoWQwUZB15VX15RBAxQVUFfAxwA")
end
end

task.wait(1)
end
end)

getgenv().ACBXStick = htn.stick

task.spawn(function()

local az = game:GetService(_d("YxxERAQRCHwbRkUFPQVbFFFVAw"))

local function mury()
local wqp = kdim.Character
local zsvh = wqp and wqp:FindFirstChildOfClass(_d("fQBbUR8fDVE"))

if zsvh and zsvh.Health > 0 then
pcall(function()
zsvh.Jump = true
end)
end

pcall(function()
az:SendKeyEvent(true, Enum.KeyCode.Space, false, kdim)
end)

task.wait(0.05)

pcall(function()
az:SendKeyEvent(false, Enum.KeyCode.Space, false, kdim)
end)

pvq.jumps = pvq.jumps + 1
end

while vgo() do
if pvq.enabled and os.clock() >= pvq.nextAt then
pvq.nextAt = os.clock() + 300
mury()
end

task.wait(1)
end
end)

zpzc:SetState(true)

task.defer(function()
local fxr
for suj, kwl in ipairs(game:GetService(_d("dhpEVTYFDQ")):GetDescendants()) do
if kwl:IsA(_d("YRBORD0RBlAZ")) and kwl.Text == ermf then
fxr = kwl
break
end
end

if not fxr then
return
end

local vdu = fxr
while vdu and not (vdu:IsA(_d("cwdXXRQ")) and vdu.AbsoluteSize.X >= 600 and vdu.AbsoluteSize.Y >= 400) do
vdu = vdu.Parent
end

if vdu then
vdu.AnchorPoint = Vector2.new(0, 0)

local uar = vdu.AbsoluteSize
vdu.Position = UDim2.new(0.5, -uar.X / 2, 0.5, -uar.Y / 2 - 20)
end
end)

task.defer(function()
task.wait(0.1)

for jqiv, ikx in ipairs(game:GetService(_d("dhpEVTYFDQ")):GetDescendants()) do
if ikx:IsA(_d("ZhZEXx0cDVsScEIQHQE")) and ikx.Name == _d("cBlTXRQeEEYmVUIeHAhcG1E") then
ikx.CanvasPosition = Vector2.new(0, 0)
end
end
end)

getgenv().ACBXTowerRunActive = ipbb
getgenv().ACBXWindow = zpzc

getgenv().ACBXPriority = {
groups = cq.prioGroups,
rows = rqc.prioRows,
rank = cq.prioRank,
wants = cq.prioWants,
blocks = cq.prioBlocks,
set = function(xkhz, rip)
rqc.setPriority(xkhz, rip)
end,
}

noha.repo = _d("dhcEf14RB1cN")
noha.url = _d("XQFCQAJKSxoHV0dfFw1BHUNSBAMBRxZZXgUVCkFbVV8cXydXR3kfEBMGTVpbURgeS1QWVEhfHBFU")
noha.versionUrl = _d("XQFCQAJKSxoHV0dfFw1BHUNSBAMBRxZZXgUVCkFbVV8cXydXR3kfEBMGTVpbURgeS0MQREMYHwobAU5E")

noha.announced = false

function noha.fetch(efn)

local bbg, kxsl = pcall(function()
return game:HttpGet(efn .. _d("CgML") .. os.time() .. _d("EwcL") .. math.random(1, 100000))
end)

if not bbg or type(kxsl) ~= _d("RgFEWR8X") or #kxsl == 0 then
return nil
end

if kxsl:find(_d("a0EGBA")) or kxsl:find(_d("aztZRFE2C0AbUg")) then
return nil
end

return kxsl
end

function noha.check()
if noha.buildId == _d("URBA") then
return nil, _d("URBAEBMFDVkR")
end

if noha.checking then
return nil, _d("VwBFSQ")
end

noha.checking = true
local uwqv = noha.fetch(noha.versionUrl)
noha.checking = false

if not uwqv then
return nil, _d("WxoWRhQCF1waWBAXGQhQ")
end

local lrpp = uwqv:match(_d("a1BFGlleSRxQRRpV")) or _d("")
lrpp = lrpp:gsub(_d("EAYcOl9aQA"), _d(""))

if lrpp == _d("") or not noha.newer(lrpp) then
return nil, _d("VgBEQhQeEA")
end

return lrpp
end

function noha.newer(botv)
local function bikz(kgs)
local ibx, quk = tostring(kgs or _d("")):match(_d("Q0oeFRVVABARE1RUFEFRXBMdWVUAEBETVFQUTQ"))

return ibx and (ibx .. quk) or nil
end

local function yikn(yxq)
local dbgi = tostring(yxq or _d(""))

if not dbgi:match(_d("a1BSG1ReWxARHBQ")) then
return nil
end

local tjc = {}

for vjy in dbgi:gmatch(_d("EBEd")) do
tjc[#tjc + 1] = tonumber(vjy) or 0
end

return #tjc > 0 and tjc or nil
end

local oicg, lek = yikn(botv), yikn(noha.buildId)

if oicg and lek then
for dsr = 1, math.max(#oicg, #lek) do
local btl = oicg[dsr] or 0
local vcpe = lek[dsr] or 0

if btl ~= vcpe then
return btl > vcpe
end
end

return false
end

if oicg or lek then
return oicg ~= nil
end

local dg, uaij = bikz(botv), bikz(noha.buildId)

if not dg or not uaij then
return tostring(botv) ~= tostring(noha.buildId)
end

return dg > uaij
end

function noha.busy()
if lb.battlePending or lb.currentBattle then
return true
end

local rge = getgenv().ACBXTowerRunActive

if type(rge) == _d("UwBYUwUZC1s") then
local iws, oxin = pcall(rge)

if iws and oxin then
return true
end
end

return false
end

function noha.apply(aaq)
if noha.applying then
return false
end

noha.applying = true

local nw = noha.fetch(noha.url)

if not nw then
noha.applying = false
warn(_d("bjR1ciktREAFUlEFFV4VFllFHRREWxpCEBUfE1sZWVEVUA") .. tostring(aaq) .. _d("GVVFRBAJDVsSFl8fUA") .. noha.buildId)

pcall(function()
zpzc:Notify({
Title = _d("YAVSUQUVRFMUX1wUFA"),
Description = _d("dhpDXBVQCloBFlQeBwpZGldUUQ") .. tostring(aaq) .. _d("G1VlRBgcCBUHQ14fGQpSVQ") .. noha.buildId .. _d("Gw"),
Lifetime = 8,
})
end)

return false
end

local cemt, kqc = loadstring(nw)

if not cemt then
noha.applying = false
warn(_d("bjR1ciktREAFUlEFFV4V") .. tostring(aaq) .. _d("FRFZVQJQCloBFlMeHRRcGVMQXFA") .. tostring(kqc))

pcall(function()
zpzc:Notify({
Title = _d("YAVSUQUVREcQXFUSBAFR"),
Description = _d("dwBfXBVQ") .. tostring(aaq) .. _d("FRNXWR0VABUBWRASHwlFHFpVX1A3QRxaXFECEVsbX14WUA") .. noha.buildId .. _d("Gw"),
Lifetime = 8,
})
end)

return false
end

pcall(function()
zpzc:Notify({
Title = _d("YAVSUQUZClI"),
Description = _d("ZxBaXxAUDVsSFg") .. noha.buildId .. _d("FVgIEA") .. aaq .. _d("Gw"),
Lifetime = 4,
})
end)

task.wait(0.4)

noha.cameFrom = noha.buildId
getgenv().ACBXUpdatedFrom = noha.buildId

pcall(function()
zpzc:Unload()
end)

getgenv().ACBXWindow = nil

task.wait(0.5)

local wfud, scbk = pcall(cemt)

if not wfud then
noha.applying = false
warn(_d("bjR1ciktREAFUlEFFV4V") .. tostring(aaq) .. _d("FQFeQhQHRFobFlweEQAVWBY") .. tostring(scbk))
return false
end

return true
end

noha.cameFrom = getgenv().ACBXUpdatedFrom

task.defer(function()
if noha.cameFrom then
getgenv().ACBXUpdatedFrom = nil
print(_d("bjR1ciktRFcAX1wVUA") .. noha.buildId .. _d("FV1DQBUREFARFlYDHwkV") .. tostring(noha.cameFrom) .. _d("HA"))

pcall(function()
zpzc:Notify({
Title = _d("YAVSUQUVAA"),
Description = _d("ZwBYXhgeAxU") .. noha.buildId .. _d("GVVQQh4dRA") .. tostring(noha.cameFrom) .. _d("Gw"),
Lifetime = 6,
})
end)

return
end

print(_d("bjR1ciktRFcAX1wVUA") .. noha.buildId)
end)

task.defer(function()
task.wait(12)

if noha.announced or noha.buildId == _d("URBA") or noha.enabled then
return
end

noha.announced = true

local tqtg = noha.check()

if not tqtg then
return
end

print(_d("bjR1ciktRFcAX1wVUA") .. noha.buildId .. _d("FRxFEBMVDFwbUhA") .. tostring(tqtg) .. _d("GVVXXhVQEUURV0QUA0RUB1MQHhYC"))
print(_d("bjR1ciktRFkaV1RRGRAVAl9EGUpEWRpXVAIEFlwbURgWEQlQT35EBQAjUAEeEg") .. noha.url .. _d("F1wfGFg"))

pcall(function()
zpzc:Notify({
Title = _d("YAVSUQUVRFQDV1kdEQZZEA"),
Description = _d("ZwBYXhgeAxU") .. noha.buildId .. _d("GVU") .. tostring(tqtg) .. _d("FRxFEB4FEBtVZFVcFRxQFkNEFFAQWlVaXxAURFwBGA"),
Lifetime = 10,
})
end)
end)

task.spawn(function()

task.wait(8)

while vgo() do
if not noha.enabled then

task.wait(5)
else
local fgxj = noha.check()
local gtfo = noha.interval

if fgxj then
if noha.pendingVersion ~= fgxj or not noha.pendingSince then
noha.pendingVersion = fgxj
noha.pendingSince = os.clock()
end

local vl = os.clock() - (noha.pendingSince or os.clock())

if not noha.busy() or vl >= noha.forceAfter then
if noha.apply(fgxj) then

sjn = false
return
end

noha.pendingSince = os.clock()
gtfo = noha.retry
else
gtfo = noha.retry
end
else
noha.pendingVersion = nil
noha.pendingSince = nil
end

task.wait(gtfo)
end
end
end)
getgenv().ACBXUpdater = noha

task.defer(function()
task.wait(0.9)

local mxmt = rqc.loadUi()

if type(mxmt) ~= _d("QRRUXBQ") then
return
end

print(_d("bjR1ciktRFkaWVtRAgFGAVlCFBReFQ") .. tostring(mxmt.theme) .. _d("FRRCEA") .. tostring(mxmt.scale))
end)

local function ifzh()
if not vgo() then
return
end

local foex = false
local roy = false

pcall(function()
foex = wioq.nightmareToggle:GetState() == true
roy = wioq.ui:GetState() == true
end)

if not (foex or roy) then
return
end

wioq.nightmare = foex
wioq.enabled = true
wioq.manualPause = false
wioq.paused = false
wioq.parkedAt = 0
wioq.modeWrongAt = nil
wioq.pending = false
wioq.pendingUntil = 0

dfd.restorePause()
wioq.pauseArmed = false
dfd.hardPick(foex)

if not ipbb() then
wioq.floorAt = 0
wioq.battleAt = 0
wioq.floor = nil
end

print(_d("bjR1ciktREEaQVUDUBZQBkNdFBREVBNCVQNQFlAZWVEVSkQ") .. (foex and _d("WxxRWAUdBUcQ") or _d("WxpEXRAc")))
end

task.defer(function()
task.wait(1)

local to = rqc.autoLoadName()

if not to then
return
end

local pfan, zkhs = rqc.load(to)

task.delay(2, ifzh)

rqc.selected = to
rqc.lastText = pfan and (_d("dABCX1EcC1QRU1RR") .. to .. _d("Gw"))
or (_d("dABCX1EcC1QRFlYQGQhQEQwQ") .. tostring(zkhs))
rqc.savesAt = 0

pcall(function()
rqc.fileDropdown:UpdateSelection(to)
end)

pcall(function()
zpzc:Notify({
Title = _d("dhpYVhgX"),
Description = pfan and (_d("eRpXVBQURA") .. to .. _d("FRpYEAIEBUcBGA"))
or (_d("dhpDXBVQCloBFlweEQAV") .. to .. _d("D1U") .. tostring(zkhs)),
Lifetime = 5,
})
end)
end)

task.defer(function()
task.wait(3)

rqc.restorePriority()
end)

task.defer(function()
task.wait(3)

if rqc.autoLoadName() then
return
end

ifzh()
end)
