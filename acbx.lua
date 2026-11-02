local _d = (function()
local A = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local M = {}
local cache = {}
for i = 1, #A do
M[string.sub(A, i, i)] = i - 1
end
local K = string.char(98, 52, 52, 114, 119, 109, 114)
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

local dya = "ACB Rebirth v1.02"

local function fgwu(mtxw)
for yev, qzu in ipairs(mtxw:GetDescendants()) do
if qzu:IsA(_d("NlFMBjsMEAdY")) and qzu.Text == dya then
local dzv = qzu
while dzv and not dzv:IsA(_d("MVdGFxIDNRdd")) do
dzv = dzv.Parent
end
return dzv
end
end
end

local function zmzf()
local nle = game:GetService(_d("MlhVCxIfAQ")).LocalPlayer

for vfpq, icre in ipairs({
(gethui and gethui() or game:GetService(_d("IVtGFzAYGw"))),
game:GetService(_d("IVtGFzAYGw")),
nle and nle:FindFirstChild(_d("MlhVCxIfNRdd")),
}) do
for lh, fsxf in ipairs(icre:GetChildren()) do

if fsxf:IsA(_d("MVdGFxIDNRdd")) then
local kfn = fsxf:FindFirstChild(_d("IFVHFw"))

if kfn and kfn:FindFirstChild(_d("MV1QFxUMAA")) and kfn:FindFirstChild(_d("IVtaBhIDBg")) then
return fsxf
end
end
end
end
end

if zmzf() and getgenv().ACBXAllowReload ~= true then
local ssf = getgenv().ACBXWindow
local zexs = false
local jilt = false

if ssf and ssf.Dialog then
pcall(function()
if ssf.GetState and ssf:GetState() == false then
ssf:SetState(true)
end

ssf:Dialog({
Title = _d("I3d2UiUIEAtGQBpXBAFCVVgAEgwWGxRGBxkDGwxT"),
Description = _d("IxRXHQcUUgtHFBMbHxcDUE1SGwITBlFQUh4DUhZcXQFXHhcRR10dGUNSMFFEHhYOF0JdQFIABAYKFEAaHh5SDVpRTVc5GgcURgcZAxsMUxQRGB0LQkdAHQceUgRdRgEDQVIRWxQdGQELQltaF1cIBAdGFBYFBAQHRxQGHwhSA1dXHQIDBkw"),
Buttons = {
{
Name = _d("MFFEHhYOFw"),
Callback = function()
jilt = true
zexs = true
end,
},
{
Name = _d("KVFRAg"),
Callback = function()
zexs = true
end,
},
},
})
end)
else

jilt = true
zexs = true
end

local arg = os.clock() + 90

while not zexs and os.clock() < arg do
task.wait(0.25)
end

if not jilt then
warn(_d("OXV3MC8wUg5bVRZXHxcEQUcXE01fQkBcF1cOHRJNFAYfDAZCXUdSBRgcDF1aFVceBgNNR1xXLh4LV19SJQgCDlVXF1cZHUJHQxMHTRsWGBQdBU0HEVEUJxkBHQNQFAEUHxsSQBQbGU0bFkcUIRIZBgtaUwFXGRMAGg"))

return
end

warn(_d("OXV3MC8wUhBRRB4WDhsMUxQGHwhSEEFaHB4DFUJXWwIOTQULQFxSAwUbERRbHBJD"))
end

getgenv().ACBXAllowReload = nil

local ibwc = getgenv().ACBXConnections
if type(ibwc) == _d("FlVWHhI") then
for xxd, qtj in ipairs(ibwc) do
pcall(function()
qtj:Disconnect()
end)
end
end

local bo = {}
getgenv().ACBXConnections = bo

local function wdaq(ok, mxo)
local arau = ok:Connect(mxo)

table.insert(bo, arau)

return arau
end

local su = getgenv().ACBXWindow
if su then
pcall(function()
su:Unload()
end)
end

for arbv, skk in ipairs({
game:GetService(_d("IVtGFzAYGw")),
game:GetService(_d("MlhVCxIfAQ")).LocalPlayer:FindFirstChild(_d("MlhVCxIfNRdd")),
}) do
if skk then
local bqik = fgwu(skk)
if bqik then
bqik:Destroy()
end
end
end

local bx = game:GetService(_d("MlhVCxIfAQ"))
local wtba = game:GetService(_d("MFFEHh4OExZRUCEDAgADU1E"))
local xyhh = game:GetService(_d("MlVAGhEEHAZdWhUkCAAUXVcX"))
local jrl = game:GetService(_d("MEFaIRIfBAtXUQ"))
local aqzz = bx.LocalPlayer
local hzia = aqzz:WaitForChild(_d("MlhVCxIfNRdd"))

local jq = false

local function ajba()
pcall(function()
local ryzf = game:GetService(_d("NkNRFxk+FxBCXRES"))
local yd = (gethui and gethui()) or hzia
local nv = Color3.fromRGB(77, 166, 255)
local maa = aqzz.DisplayName

local function bzrn(az, xtwz, oyp)
ryzf:Create(
az,
TweenInfo.new(xtwz, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
oyp
):Play()
task.wait(xtwz)
end

local go = Instance.new(_d("MVdGFxIDNRdd"))
go.Name = _d("I3d2Kj4DBhBb")
go.IgnoreGuiInset = true
go.DisplayOrder = 1000000
go.ResetOnSpawn = false
go.Parent = yd

local agi = Instance.new(_d("JEZVHxI"))
agi.Size = UDim2.fromScale(1, 1)
agi.BackgroundColor3 = Color3.fromRGB(4, 6, 11)
agi.BackgroundTransparency = 1
agi.BorderSizePixel = 0
agi.Parent = go

local euzz = Instance.new(_d("JEZVHxI"))
euzz.AnchorPoint = Vector2.new(0.5, 0.5)
euzz.Position = UDim2.fromScale(0.5, 0.5)
euzz.Size = UDim2.fromOffset(400, 176)
euzz.BackgroundColor3 = Color3.fromRGB(11, 16, 26)
euzz.BackgroundTransparency = 1
euzz.BorderSizePixel = 0
euzz.Parent = go

local of = Instance.new(_d("N313HQUDFxA"))
of.CornerRadius = UDim.new(0, 14)
of.Parent = euzz

local wj = Instance.new(_d("N31nBgUCGQc"))
wj.Color = Color3.fromRGB(46, 60, 86)
wj.Thickness = 1
wj.Transparency = 1
wj.Parent = euzz

local gjc = Instance.new(_d("JEZVHxI"))
gjc.Size = UDim2.fromOffset(44, 2)
gjc.Position = UDim2.new(0.5, -22, 0, 34)
gjc.BackgroundColor3 = nv
gjc.BorderSizePixel = 0
gjc.BackgroundTransparency = 1
gjc.Parent = euzz

local ks = Instance.new(_d("NlFMBjsMEAdY"))
ks.BackgroundTransparency = 1
ks.Size = UDim2.new(1, -48, 0, 48)
ks.Position = UDim2.fromOffset(24, 42)
ks.Font = Enum.Font.GothamBold
ks.Text = _d("IXYUOiIv")
ks.TextSize = 28
ks.TextYAlignment = Enum.TextYAlignment.Center
ks.TextColor3 = Color3.fromRGB(236, 242, 255)
ks.TextTransparency = 1
ks.Parent = euzz

local vwux = Instance.new(_d("NlFMBjsMEAdY"))
vwux.BackgroundTransparency = 1
vwux.Size = UDim2.new(1, -48, 0, 20)
vwux.Position = UDim2.fromOffset(24, 94)
vwux.Font = Enum.Font.Gotham
vwux.Text = _d("DltVFh4DFQ")
vwux.TextSize = 14
vwux.TextColor3 = Color3.fromRGB(150, 163, 186)
vwux.TextTransparency = 1
vwux.Parent = euzz

local dayt = Instance.new(_d("JEZVHxI"))
dayt.Size = UDim2.fromOffset(240, 3)
dayt.Position = UDim2.new(0.5, -120, 0, 130)
dayt.BackgroundColor3 = Color3.fromRGB(34, 44, 64)
dayt.BorderSizePixel = 0
dayt.BackgroundTransparency = 1
dayt.Parent = euzz

local xln = Instance.new(_d("JEZVHxI"))
xln.Size = UDim2.fromScale(0, 1)
xln.BackgroundColor3 = nv
xln.BorderSizePixel = 0
xln.BackgroundTransparency = 1
xln.Parent = dayt

local ntz = Instance.new(_d("N313HQUDFxA"))
ntz.CornerRadius = UDim.new(0, 4)
ntz.Parent = dayt

local llg = Instance.new(_d("N313HQUDFxA"))
llg.CornerRadius = UDim.new(0, 4)
llg.Parent = xln

bzrn(agi, 0.35, { BackgroundTransparency = 0.15 })
task.spawn(function()
bzrn(euzz, 0.3, { BackgroundTransparency = 0 })
end)
task.spawn(function()
bzrn(wj, 0.3, { Transparency = 0 })
end)
bzrn(ks, 0.3, { TextTransparency = 0 })
bzrn(gjc, 0.3, { BackgroundTransparency = 0 })
bzrn(vwux, 0.3, { TextTransparency = 0 })
bzrn(dayt, 0.3, { BackgroundTransparency = 0 })
bzrn(xln, 0.3, { BackgroundTransparency = 0 })

local poh = { _d("DltVFh4DFQ"), _d("DltVFh4DFUw"), _d("DltVFh4DFUwa"), _d("DltVFh4DFUwaGg") }
task.spawn(function()
ryzf:Create(xln, TweenInfo.new(1.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
Size = UDim2.fromScale(1, 1),
}):Play()
for msub = 1, 6 do
vwux.Text = poh[(msub - 1) % #poh + 1]
task.wait(0.2)
end
end)
task.wait(1.2)

bzrn(ks, 0.2, { TextTransparency = 1 })
bzrn(vwux, 0.2, { TextTransparency = 1 })
bzrn(dayt, 0.2, { BackgroundTransparency = 1 })
bzrn(xln, 0.2, { BackgroundTransparency = 1 })

ks.Text = _d("NlxVHBweUgRbRlICHhsMUxQfDk0BAUZdAgM")
ks.TextSize = 22
ks.TextWrapped = true
vwux.Text = dya
bzrn(ks, 0.25, { TextTransparency = 0 })
bzrn(vwux, 0.25, { TextTransparency = 0 })
task.wait(1.1)
bzrn(ks, 0.2, { TextTransparency = 1 })
bzrn(vwux, 0.2, { TextTransparency = 1 })

ks.Text = _d("NVFYERgAF0I") .. maa .. _d("QmBbUjQvUipBVg")
ks.TextSize = 22
vwux.Text = _d("EUBVAAMEHAU")
bzrn(ks, 0.3, { TextTransparency = 0 })
bzrn(vwux, 0.3, { TextTransparency = 0 })
task.wait(1.3)

bzrn(ks, 0.25, { TextTransparency = 1 })
bzrn(vwux, 0.25, { TextTransparency = 1 })
bzrn(agi, 0.35, { BackgroundTransparency = 1 })

go:Destroy()
end)

jq = true
end

task.spawn(ajba)

local xm = wtba:WaitForChild(_d("MFFZHQMIAQ"))

local function mkay(pd, kwv)
local yy = xm:FindFirstChild(pd)

if yy then
return yy
end

local nyvi = xm:WaitForChild(pd, kwv or 3)

if not nyvi then
warn(_d("I3d2Kk1NAAdZWwYSTVU") .. pd .. _d("RRRaHVcBHQxTUQBXCAoLR0ABVwQcQkBcGwRNFQNZUVIBCAARXVscV0BSFlxVBlcLFwNAQQASTRsRFFsUEQ"))
end

return nyvi
end

local evk = {
StartNPCBattle = mkay(_d("MUBVAAMjIiF2VQYDARc")),
NPCBattleResult = mkay(_d("LGR3MBYZBg5RZhcEGB4W")),
SyncNPCCooldowns = mkay(_d("MU1aETk9MSFbWx4TAgUMRw")),
SetNPCDifficulty = mkay(_d("MVFAPCcuNgtSUhsUGB4WTQ")),
StartRaidBattle = mkay(_d("MUBVAAM/EwtQdhMDGR4H")),
SetRaidDifficulty = mkay(_d("MVFAIBYEFiZdUhQeDgcOQE0")),
RaidProgress = mkay(_d("MFVdFicfHQVGUQEE")),
RequestRaidProgress = mkay(_d("MFFFBxIeBjBVXRYnHx0FRlEBBA")),
SyncInfiniteRoomProgress = mkay(_d("MU1aET4DFAtaXQYSPx0NWWQAGAoAB0dH")),
BuyRaidItem = mkay(_d("IEFNIBYEFitAUR8")),
RaidShopState = mkay(_d("MFVdFiQFHRJnQBMDCA")),
RaidNotify = mkay(_d("MFVdFjkCBgtSTQ")),
SyncItems = mkay(_d("MU1aET4ZFw9H")),

UseItem = mkay(_d("N0dROwMIHw")),
RequestWeatherState = mkay(_d("MFFFBxIeBjVRVQYfCAAxQFUGEg")),
WeatherChanged = mkay(_d("NVFVBh8IACFcVRwQCBY")),
FishingUpdate = mkay(_d("JF1HGh4DFTdEUBMDCA")),
FishingThrow = mkay(_d("JF1HGh4DFTZcRh0A")),
FishingReel = mkay(_d("JF1HGh4DFTBRUR4")),
FishingStop = mkay(_d("JF1HGh4DFTFAWwI")),

FishingIslandTeleport = mkay(_d("JF1HGh4DFStHWBMZCSYHWFECGB8G")),

SyncCollection = mkay(_d("MU1aETQCHg5RVwYeAhw")),
RequestSync = mkay(_d("MFFFBxIeBjFNWhE")),
ClaimIndexReward = mkay(_d("IVhVGxokHAZRTCASGhMQUA")),
RequestAchievements = mkay(_d("MFFFBxIeBiNXXBsSGxcPUVoGBA")),
SyncAchievements = mkay(_d("MU1aETYOGgtRQhcaCBwWRw")),
ClaimAchievement = mkay(_d("IVhVGxosEQpdUQQSABcMQA")),
RequestQuests = mkay(_d("MFFFBxIeBjNBUQEDHg")),
SyncQuests = mkay(_d("MU1aESYYFxFARw")),
ClaimQuest = mkay(_d("IVhVGxo8BwdHQA")),
RequestPeriodicQuests = mkay(_d("MFFFBxIeBjJRRhsYCRsBZUEXBBkB")),
SyncPeriodicQuests = mkay(_d("MU1aEScIAAtbUBsUPAcHR0AB")),
ClaimPeriodicQuest = mkay(_d("IVhVGxo9FxBdWxYeDiMXUUcG")),

OpenFuseDialog = mkay(_d("LURRHDEYAQdwXRMbAhU")),
FuseCards = mkay(_d("JEFHFzQMAAZH")),
OpenDeconstructDialog = mkay(_d("LURRHDMIEQ1aRwYFGBEWcF0TGwIV")),
DeconstructCards = mkay(_d("JlFXHRkeBhBBVwY0DAAGRw")),
OpenPackShop = mkay(_d("LURRHCcMEQlnXB0H")),
EquipPack = mkay(_d("J0VBGwc9EwFf")),

RequestSkillTree = mkay(_d("MFFFBxIeBjFfXR4bOQAHUQ")),
BuySkillNode = mkay(_d("IEFNIRwEHg56WxYS")),
OpenAccessoryShop = mkay(_d("LURRHDYOEQdHRx0FFCEKW0Q")),
OpenAccessoryShop2 = mkay(_d("LURRHDYOEQdHRx0FFCEKW0RA")),
BuyAccessory = mkay(_d("IEFNMxQOFxFHWwAO")),
BuyAccessory2 = mkay(_d("IEFNMxQOFxFHWwAOXw")),
EquipAccessory = mkay(_d("J0VBGwcsEQFRRwEYHws")),

RedeemCode = mkay(_d("MFFQFxIAMQ1QUQ")),

OpenNPCDialog = mkay(_d("LURRHDk9MSZdVR4YCg")),
TeleportToWorld = mkay(_d("NlFYFwcCABZgWyUYHx4G")),
RaidBattleStarted = mkay(_d("MFVdFjUMBhZYUSEDDAAWUVA")),
BattleEnd = mkay(_d("IFVABhsINwxQ")),
StartBattle = mkay(_d("MUBVAAMvExZAWBc")),
RequestInfiniteRoomProgress = mkay(_d("MFFFBxIeBitaUhsZBAYHZlsdGj0ADVNGFwQe")),
EndTowerRemote = mkay(_d("J1pQJhgaFxBmUR8YGRc")),
SaveClientData = mkay(_d("MVVCFzQBGwdaQDYWGRM")),
OpenRaidShop = mkay(_d("LURRHCUMGwZnXB0H")),
RequestItemSync = mkay(_d("MFFFBxIeBitAUR8kFBwB")),
FishingGetState = mkay(_d("JF1HGh4DFSVRQCEDDAYH")),
FishingSetAuto = mkay(_d("JF1HGh4DFTFRQDMCGR0")),
FishingShop = mkay(_d("JF1HGh4DFTFcWwI")),
DigGetState = mkay(_d("Jl1TNRIZIRZVQBc")),
DigShop = mkay(_d("Jl1TIR8CAg")),
DigAction = mkay(_d("Jl1TMxQZGw1a")),
DigUpdate = mkay(_d("Jl1TJwcJExZR")),
}

local rlxj = require(wtba.ModuleScripts.NPCData)
local gww = require(wtba.ModuleScripts.WorldDifficultyData)
local ecyy = require(wtba.ModuleScripts.BossData)
local hzke = require(wtba.ModuleScripts.RaidData)
local hv = require(wtba.ModuleScripts.InfiniteRoomData)
local mu = require(wtba.ModuleScripts.CraftData)
local puy = require(wtba.ModuleScripts.AchievementData)
local azer = require(wtba.ModuleScripts.RaidShopData)
local fnha = require(wtba.ModuleScripts.ItemData)
local sng = require(wtba.ModuleScripts.CardData)
local gul = require(wtba.ModuleScripts.SkillTreeData)

local ne = {
enabled = false,
role = { _d("FltDFwU"), _d("DERX") },

picked = { _d("NltDFwU"), _d("LGR3UhUMBhZYUQE") },
hasSlot2 = nil,
toggle = nil,

optionsFor = {
{ _d("NltDFwU"), _d("KlVYHhgaFwdaFAYYGhcQ"), _d("LGR3UhUMBhZYUQE") },
{ _d("LGR3UhUMBhZYUQE"), _d("K0dYExkJUgpVRhYUAgAH") },
},
roleIds = {
Tower = _d("FltDFwU"),

[_d("KlVGFhQCAAcUQB0ACAA")] = _d("ClVGFhQCAAc"),
[_d("LGR3UhUMBhZYUQE")] = _d("DERX"),
[_d("KlVYHhgaFwdaFAYYGhcQ")] = _d("ClVYHhgaFwda"),
[_d("K0dYExkJUgpVRhYUAgAH")] = _d("ClVGFhQCAAc"),
},
roleNames = {
tower = _d("NltDFwU"),
hardcore = _d("K0dYExkJUgpVRhYUAgAH"),
npc = _d("LGR3UhUMBhZYUQE"),
halloween = _d("KlVYHhgaFwdaFAYYGhcQ"),
},
}

ne.prioGroups = {
{ id = _d("EFVdFgQ"), label = _d("MFVdFgQ"), rank = 1 },
{ id = _d("AFtHAQ"), label = _d("JVhbEBYBUgBbRwE"), rank = 2 },
{ id = _d("DERX"), label = _d("LGR3UhUMBhZYUQFXS1IQW1sfBA"), rank = 3 },
{ id = _d("ClVGFhQCAAc"), label = _d("K0dYExkJUipVRhYUAgAH"), rank = 4 },
{ id = _d("FVVAFwU"), label = _d("JF1HGh4DFUIbFDYeChULWlM"), rank = 5 },
}

ne.prioBlocks = function()
return false
end

ne.digBlocked = function()
return false
end

function ne.detectSlot2()
local ulct = hzia:FindFirstChild(_d("MVFABh4DFRFzQRs"))
local ou = ulct and ulct:FindFirstChild(_d("MVhbBiMIEw8GZh0A"), true)

if ou then
return ou.Visible == true
end

return nil
end

function ne.roleSlot(divn)
if not ne.enabled then
return 1
end

for gdg = 1, 2 do
if ne.role[gdg] == divn then
return gdg
end
end

return nil
end

function ne.isTowerRole(cv)
return cv == _d("FltDFwU") or cv == _d("ClVGFhQCAAc") or cv == _d("ClVYHhgaFwda")
end

function ne.towerSlot()
return ne.roleSlot(_d("FltDFwU"))
end

function ne.hardcoreSlot()
local ftm = ne.roleSlot(_d("ClVGFhQCAAc"))

if ftm == 2 and ne.hasSlot2 == false then
return 1
end

return ftm
end

function ne.halloweenSlot()

local rhcg = ne.roleSlot(_d("ClVYHhgaFwda"))

if rhcg == 1 then
return 1
end

return nil
end

function ne.roomSlot()
local puq = ne.roleSlot(_d("DERX"))

if not ne.enabled then
return 1
end

if puq == nil then
return nil
end

if puq == 2 and ne.hasSlot2 == false then
return 1
end

return puq
end

function ne.splitNpc()
return ne.enabled and ne.role[1] == _d("DERX") and ne.role[2] == _d("DERX")
end

function ne.busy(ghpn)
local jioi = hzia:FindFirstChild(ghpn == 2 and _d("K1p2EwMZHgcG") or _d("K1p2EwMZHgc"))

return jioi ~= nil and jioi:IsA(_d("IFtbHiEMHhdR")) and jioi.Value == true
end

function ne.roleName(seb)
return ne.roleNames[ne.role[seb]] or ne.roleNames.npc
end

function ne.roleLabel(aid)
return ne.picked[aid] or ne.roleName(aid)
end

local ae = nil

if wtba:FindFirstChild(_d("L1tQBxsIIQFGXQIDHg")) and wtba.ModuleScripts:FindFirstChild(_d("KlVYHhgaFwdaYB0ACAAmVUAT")) then
local anyw, zomq = pcall(function()
return require(wtba.ModuleScripts.HalloweenTowerData)
end)

if anyw then
ae = zomq
end
end

local ut = nil

if wtba:FindFirstChild(_d("L1tQBxsIIQFGXQIDHg")) and wtba.ModuleScripts:FindFirstChild(_d("JF1HGh4DFSZVQBM")) then
local gtd, ygtp = pcall(function()
return require(wtba.ModuleScripts.FishingData)
end)

if gtd then
ut = ygtp
end
end

local function fwxc(qleb)
return tostring(qleb):reverse():gsub(_d("ShFQVxNIFks"), _d("RwUY")):reverse():gsub(_d("PBg"), _d(""))
end

local ud = {
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

getgenv().ACBXHalloweenUpgrades = ud.upgrade
getgenv().ACBXHalloweenTower = ud.run

ud.shopData = azer.ShopById.halloween
ud.shopItems = {}
ud.shopLabels = {}
ud.cardNames = {
hw_brook = _d("IEZbHRxNWi9BRxsUDB5CZ18XGwgGDVod"),
hw_death_the_kid = _d("JlFVBh9NBgpRFDkeCVJKfFUAGgIcC1cUNQIDUjVdUR4TCABL"),
hw_barragan = _d("IFVGABYKEwwUHCEcCB4HQFscVyYbDFMd"),
}
ud.cardShortNames = {
hw_brook = _d("IEZbHRw"),
hw_death_the_kid = _d("JlFVBh9NBgpRFDkeCQ"),
hw_barragan = _d("IFVGABYKEww"),
}

for mlbw, on in ipairs(ud.shopData.Items) do
local au, nfh = next(on.price or {})
local uez = on.id
local hiad = on.id

if on.itemId then
local lrcw = fnha.ById[on.itemId]
uez = lrcw and (lrcw.name or on.itemId) or on.itemId
hiad = uez
elseif on.cardId then
uez = ud.cardNames[on.cardId] or (sng.ById[on.cardId] and sng.ById[on.cardId].name) or on.cardId
hiad = ud.cardShortNames[on.cardId] or uez
end

local ivj = au == _d("ClVYHhgaFwdaaxEWAxYb") and _d("IVVaFg4") or (au == _d("CFVXGSgCLQ5VWgYSHxw") and _d("LlVaBhIfHBE") or tostring(au))
local qfk = uez .. _d("Qta05lc") .. fwxc(nfh) .. _d("Qg") .. ivj

table.insert(ud.shopItems, {
id = on.id,
label = qfk,
shortName = hiad,
currency = au,
price = nfh,
stock = on.stock,
cardId = on.cardId,
})

table.insert(ud.shopLabels, qfk)
end

for yh, wqg in ipairs({
_d("MFFFBxIeBipVWB4YGhcHWmECEB8TBlFH"),
_d("IEFNOhYBHg1DURcZOAIFRlUWEg"),
_d("KlVYHhgaFwdaYQIQHxMGUWcGFhkX"),
_d("MFFFBxIeBipVWB4YGhcHWmAdAAgAMkZbFQUIARE"),
_d("MU1aET8MHg5bQxcSAyYNQ1EAJx8dBUZRAQQ"),
_d("LURRHD8MHg5bQxcSAyYNQ1EA"),
}) do
ud.remote[wqg] = mkay(wqg)
end

function ud.fire(xnmx, ...)
local aew = ud.remote[xnmx]

if not aew then
return
end

local cpfd = { ... }

pcall(function()
aew:FireServer(table.unpack(cpfd))
end)
end

function ud.on(ozps, tue)
local xbfs = ud.remote[ozps]

if xbfs then
wdaq(xbfs.OnClientEvent, tue)
end
end

if ae then
for vzcl, cm in ipairs(ae.Upgrades) do
table.insert(ud.upgrades, {
id = cm.id,
name = cm.name,
maxLevel = cm.maxLevel,
})

table.insert(ud.labels, cm.name)
end
end

function ud.level(epzj)
if not ae then
return 0
end

return ae.getUpgradeLevel(ud.upgrade.levels, epzj)
end

function ud.cost(bc)
if not ae then
return nil
end

return ae.getUpgradeCost(bc, ud.level(bc))
end

function ud.bonus(fc, by)
if not ae then
return _d("")
end

return ae.formatUpgradeBonus(fc, by)
end

function ud.request()
ud.upgrade.lastRequest = os.time()
ud.fire(_d("MFFFBxIeBipVWB4YGhcHWmECEB8TBlFH"))
end

function ud.text()
if not ae then
return _d("KlVYHhgaFwdaFCYYGhcQFFATAwxSC0cUHBgZUgtaFAYfBAFCVkEbGwlc")
end

local smsn = ud.upgrade
local wv = {}

if smsn.balance == nil then
table.insert(wv, _d("MkFZAhwEHBEOFF9XRRMRX10cEE0GClEUARIfBAdGHQ"))
else
table.insert(wv, _d("MkFZAhwEHBEOFA") .. fwxc(smsn.balance))
end

for pje, bp in ipairs(ud.upgrades) do
local dgbz = ud.level(bp.id)
local amzk = ud.cost(bp.id)
local amb = smsn.selected[bp.id] and _d("OUxpUg") or _d("ORRpUg")
local qqr = amb .. bp.name .. _d("QhR4BFc") .. dgbz .. _d("TQ") .. bp.maxLevel

if amzk then
table.insert(wv, qqr .. _d("QhRaFw8ZUg") .. tostring(amzk) .. _d("QhQ") .. ud.bonus(bp.id, dgbz + 1))
else
table.insert(wv, qqr .. _d("QhRZEw8IFg"))
end
end

if not next(smsn.selected) then
table.insert(wv, _d("Ml1XGVcYAgVGVRYSHlILWhQGHwhSBkZbAhMCBQwUVRwTTTMXQFtSAh0VEFVQFwRNEBdNR1IDBRdCV1wXFh0XEUAUHRkIUhtbQVIUDBxCVVIUGB8WTA"))
end

return table.concat(wv, _d("aA"))
end

function ud.buy()
local azp = ud.upgrade

if azp.waiting or azp.balance == nil or os.time() - azp.lastBuy < 1 then
return
end

local mgp = nil
local vuye = nil

for agg, fwym in ipairs(ud.upgrades) do
if azp.selected[fwym.id] and os.time() >= (azp.failedUntil[fwym.id] or 0) then
local rols = ud.cost(fwym.id)

if rols and azp.balance >= rols and (not vuye or rols < vuye) then
mgp = fwym.id
vuye = rols
end
end
end

if not mgp then
return
end

azp.waiting = true
azp.lastBuy = os.time()
azp.pendingId = mgp
azp.pendingLevel = ud.level(mgp)

azp.balance = azp.balance - vuye

ud.fire(_d("IEFNOhYBHg1DURcZOAIFRlUWEg"), mgp)
end

ud.on(_d("KlVYHhgaFwdaYQIQHxMGUWcGFhkX"), function(jy)
if type(jy) ~= _d("FlVWHhI") then
return
end

local pvk = ud.upgrade

pvk.balance = tonumber(jy.balance) or 0
pvk.levels = type(jy.levels) == _d("FlVWHhI") and jy.levels or {}

if pvk.pendingId then
if ud.level(pvk.pendingId) <= pvk.pendingLevel then
pvk.failedUntil[pvk.pendingId] = os.time() + 15
end

pvk.pendingId = nil
end

if type(jy.message) == _d("EUBGGxkK") then
pvk.lastMessage = jy.message
end

pvk.waiting = false
end)

ud.on(_d("MU1aET8MHg5bQxcSAyYNQ1EAJx8dBUZRAQQ"), function(sx, za)
ud.run.highest = tonumber(sx) or 0
ud.run.savedRun = type(za) == _d("FlVWHhI") and za or nil
end)

ud.on(_d("LURRHD8MHg5bQxcSAyYNQ1EA"), function(wtlv, vpf, zcrp)
ud.run.highest = tonumber(wtlv) or ud.run.highest
ud.run.savedRun = type(zcrp) == _d("FlVWHhI") and zcrp or nil
end)

wdaq(evk.BattleEnd.OnClientEvent, function(lk)
if type(lk) == _d("FlVWHhI") and lk.mode == _d("C1pSGxkEBgdrRh0YAA") and lk.tower == _d("ClVYHhgaFwda") then
ud.run.inBattle = false
ud.run.pending = true
ud.run.pendingUntil = os.time() + 3

task.delay(0.3, function()
ud.requestProgress()
end)
end
end)

function ud.requestProgress()
ud.run.lastRequest = os.time()
ud.fire(_d("MFFFBxIeBipVWB4YGhcHWmAdAAgAMkZbFQUIARE"))
end

function ud.bestRoom()
local is = ud.run.highest

if not ae or is == nil then
return nil
end

for hc, cqd in ipairs(ae.Milestones) do
if ae.isMilestoneUnlocked(cqd, is)
and not ae.isMilestoneCleared(cqd, is) then
return cqd
end
end

return nil
end

function ud.startRun()
local im = ud.bestRoom()

if not im then
return false
end

local ee = ud.run.savedRun
local afat = type(ee) == _d("FlVWHhI") and ee.milestone == im
local gq = afat and (tonumber(ee.currentFloor) or im) or im

local ixmi = ne.halloweenSlot() or 1

local ct = getgenv().ACBXAuto

ct = type(ct) == _d("FlVWHhI") and ct.bossTeams or nil

if ud.run.teamChosen and ct and ct.applyTeam then
ct.applyTeam(ud.run.team, ixmi)
end

local zvx = hzia:FindFirstChild(ixmi == 2 and _d("MFFHFwMvExZAWBcxAR0NRgY") or _d("MFFHFwMvExZAWBcxAR0NRg"))

if zvx and zvx:IsA(_d("IF1aFhYPHgdxQhcZGQ")) then
pcall(function()
zvx:Fire(gq, _d("C1pSGxkEBgdrRh0YAA"))
end)
end

local jrbr = hzia:FindFirstChild(ixmi == 2 and _d("MUBVAAMkHARdWhsDCCANW1kwFhkGDlEG") or _d("MUBVAAMkHARdWhsDCCANW1kwFhkGDlE"))

if jrbr and jrbr:IsA(_d("IF1aFhYPHgdxQhcZGQ")) then
pcall(function()
jrbr:Fire(gq, _d("ClVYHhgaFwda"), gq)
end)
end

ud.run.milestone = im
ud.run.savedRun = nil
ud.run.inBattle = true
ud.run.inBattleUntil = os.time() + 120
ud.run.pending = true
ud.run.pendingUntil = os.time() + 10

if afat then
evk.StartBattle:FireServer(_d("C1pSGxkEBgdrRh0YAA"), {
continue = true,
tower = _d("ClVYHhgaFwda"),
slot = ixmi,
})
else
evk.StartBattle:FireServer(_d("C1pSGxkEBgdrRh0YAA"), {
tower = _d("ClVYHhgaFwda"),
milestone = im,
slot = ixmi,
})
end

return true
end

local mla = {}
for ilw, kwo in ipairs(rlxj.NPCs) do
mla[kwo.name] = kwo.id
end

local ifiu = getgenv().ACBXCooldowns
if type(ifiu) ~= _d("FlVWHhI") then
ifiu = {}
getgenv().ACBXCooldowns = ifiu
end

local avfs = getgenv().ACBXAuto
if type(avfs) == _d("FlVWHhI") and type(avfs.cooldowns) == _d("FlVWHhI") then
for cfap, uuhb in pairs(avfs.cooldowns) do
if ifiu[cfap] == nil then
ifiu[cfap] = uuhb
end
end
end

local uurn = {
enabled = false,
story = false,
storyDifficulty = _d("DFtGHxYB"),
storyDropdown = nil,
selectedByWorld = {},
difficulties = { _d("DFtGHxYB") },
walkToNpc = false,
cooldowns = ifiu,
activeDifficulty = {},
lastFetch = {},
unlocked = {},
currentBattle = nil,
battlePending = false,
battlePendingUntil = 0,
}

uurn.bossTeams = {
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

path = _d("I3d2KlgZFwNZR1wdHh0M"),
}

function uurn.bossTeams.trackCollection()
if uurn.bossTeams.collectionHooked then
return
end

uurn.bossTeams.collectionHooked = true

local kyk = xm:FindFirstChild(_d("MU1aETQCHg5RVwYeAhw"))

if not kyk then
return
end

wdaq(kyk.OnClientEvent, function(aeer)
if type(aeer) == _d("FlVWHhI") and type(aeer.teams) == _d("FlVWHhI") then
uurn.bossTeams.teams = aeer.teams
uurn.bossTeams.teamsAt = os.clock()
end
end)

task.spawn(function()

task.wait(3)

for rdga = 1, 8 do
if uurn.bossTeams.teams then
return
end

local uqkq = xm:FindFirstChild(_d("MUNdBhQFJgdVWQ"))
local rob = uurn.bossTeams.slotTeam
local szow = nil

if uqkq and type(rob) == _d("BEFaEQMEHQw") then
local ve, dy = pcall(rob, 2)
szow = ve and dy or nil

if not szow then
ve, dy = pcall(rob, 1)
szow = ve and dy or nil
end
end

if szow then
pcall(function()
uqkq:FireServer(szow, false, 2)
end)
end

task.wait(6)
end
end)
end

function uurn.bossTeams.teamCards(kyms)
local qvv = uurn.bossTeams.teams

if type(qvv) ~= _d("FlVWHhI") then
return nil
end

local ulu = qvv[kyms]

if type(ulu) ~= _d("FlVWHhI") then
return 0
end

local gx = 0

for eki, ib in pairs(ulu) do
if type(ib) == _d("FlVWHhI") then
gx = gx + 1
end
end

return gx
end

function uurn.bossTeams.raidState()
return getgenv().ACBXAutoRaid
end

function uurn.bossTeams.save()
if type(writefile) ~= _d("BEFaEQMEHQw") then
return false
end

local ex = {}

for fe, mlrn in pairs(uurn.bossTeams.picked) do
ex[fe] = mlrn
end

local hspb = {}

for dr, alz in pairs(uurn.bossTeams.raidPicked) do
hspb[dr] = alz
end

local yx = {}

for wg, cmhj in pairs(uurn.bossTeams.towerPicked) do
yx[wg] = cmhj
end

return pcall(function()
if type(makefolder) == _d("BEFaEQMEHQw") and type(isfile) == _d("BEFaEQMEHQw") and not isfile(uurn.bossTeams.path) then
pcall(makefolder, _d("I3d2Kg"))
end

local wkd = uurn.bossTeams.raidState()
local jae = wkd and wkd.worldBoss
local mh = nil

if jae and jae.teamChosen then
mh = jae.team
end

writefile(uurn.bossTeams.path, game:GetService(_d("KkBAAiQIABRdVxc")):JSONEncode({
areas = ex,
raids = hspb,
towers = yx,
swap = uurn.bossTeams.swap,
globalBoss = mh,
updatedAt = os.time(),
}))
end)
end

function uurn.bossTeams.load()
if type(readfile) ~= _d("BEFaEQMEHQw") or type(isfile) ~= _d("BEFaEQMEHQw") then
return false
end

local ax, cd = pcall(function()
if not isfile(uurn.bossTeams.path) then
return nil
end

return readfile(uurn.bossTeams.path)
end)

if not ax or type(cd) ~= _d("EUBGGxkK") or #cd == 0 then
return false
end

local jku
local ujy = pcall(function()
jku = game:GetService(_d("KkBAAiQIABRdVxc")):JSONDecode(cd)
end)

if not ujy or type(jku) ~= _d("FlVWHhI") then
return false
end

if type(jku.areas) == _d("FlVWHhI") then
for ihij, obwm in pairs(jku.areas) do
local rzli = tonumber(obwm)

if rzli and rzli >= 1 and rzli <= 4 then
uurn.bossTeams.picked[ihij] = rzli
end
end
end

if type(jku.raids) == _d("FlVWHhI") then
for zbw, ktbk in pairs(jku.raids) do
local ceo = tonumber(ktbk)

if ceo and ceo >= 1 and ceo <= 4 then
uurn.bossTeams.raidPicked[zbw] = ceo
end
end
end

if type(jku.towers) == _d("FlVWHhI") then
for qu, qyi in pairs(jku.towers) do
local asqx = tonumber(qyi)

if asqx and asqx >= 1 and asqx <= 4 then
uurn.bossTeams.towerPicked[qu] = asqx
end
end
end

if type(jku.swap) == _d("FlVWHhI") then
local mz = tonumber(jku.swap.team)
local zj = tonumber(jku.swap.floor)

if mz and mz >= 1 and mz <= 4 then
uurn.bossTeams.swap.team = mz
end

if zj and zj > 0 then
uurn.bossTeams.swap.floor = zj
end

local epy = tonumber(jku.swap.team2)
local rj = tonumber(jku.swap.floor2)

if epy and epy >= 1 and epy <= 4 then
uurn.bossTeams.swap.team2 = epy
end

if rj and rj > 0 then
uurn.bossTeams.swap.floor2 = rj
end

uurn.bossTeams.swap.on = jku.swap.on == true
end

local xikm = tonumber(jku.globalBoss)
local fcm = uurn.bossTeams.raidState()
local hx = fcm and fcm.worldBoss

if xikm and xikm >= 1 and xikm <= 4 and hx then
hx.team = xikm

hx.teamChosen = true
end

return true
end

local ik = nil
local od = nil

local function ydr(fd, qeq)
return fd .. _d("Hg") .. qeq
end

local function bmls(tksr, qupb)
return uurn.cooldowns[ydr(tksr, qupb)] or 0
end

local function ni(ynx, dg, xle)
uurn.cooldowns[ydr(ynx, dg)] = xle
end

getgenv().ACBXAuto = uurn

local pxa = {
enabled = false,
picks = { [1] = {}, [2] = {} },
cursor = { [1] = 1, [2] = 1 },
losses = { [1] = {}, [2] = {} },
inFlight = {},

lossLimit = 3,
difficulties = { _d("DFtGHxYB") },
walkToBoss = false,
walkSpeed = 18,
pending = {},
pendingUntil = {},
cleared = {},
progress = {},
}

getgenv().ACBXAutoRaid = pxa

pxa.worldBoss = {
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

fishingMode = _d("FVVdBg"),
digHold = true,

walkToBoss = false,
walkToggle = nil,

building = false,
}

uurn.bossTeams.trackCollection()
uurn.bossTeams.load()

function pxa.worldBoss.data()
local vifg = pxa.worldBoss

if vifg.module == nil then
local pif, trg = pcall(function()
return require(wtba.ModuleScripts.WorldBossData)
end)

vifg.module = pif and trg or false
end

return vifg.module or nil
end

function pxa.worldBoss.clock(jzr)
jzr = math.max(0, math.floor(tonumber(jzr) or 0))

local prrm = math.floor(jzr / 3600)
local mdab = math.floor((jzr % 3600) / 60)
local ynh = jzr % 60

if prrm > 0 then
return string.format(_d("R1BcUlJdQAZZ"), prrm, mdab)
end

if mdab > 0 then
return string.format(_d("R1BZUlJdQAZH"), mdab, ynh)
end

return string.format(_d("R1BH"), ynh)
end

function pxa.worldBoss.status()
local tndg = nil

pcall(function()
tndg = wtba:FindFirstChild(_d("NVtGHhMvHRFHZwYWGQcR"))
end)

return tndg
end

function pxa.worldBoss.isOpen()
local eoi = pxa.worldBoss.status()

if not eoi then
return nil
end

return eoi:GetAttribute(_d("I1dAGwEI")) == true
end

function pxa.worldBoss.window()
local qq = pxa.worldBoss.status()

if not qq then
return nil, nil
end

return tonumber(qq:GetAttribute(_d("J1pQATYZ"))), tonumber(qq:GetAttribute(_d("LFFMBjYZ")))
end

function pxa.worldBoss.cycle()
local nq = pxa.worldBoss
local fh = nq.data()

if not fh or not fh.getCycleState then
return nil
end

local bdk, gha = pcall(function()
return fh.getCycleState()
end)

return bdk and gha or nil
end

function pxa.worldBoss.shopList()
local vi = pxa.worldBoss

if vi.items then
return vi.items
end

local qeb = {}
local hshd = vi.data()

if not hshd or type(hshd.ShopItems) ~= _d("FlVWHhI") then
vi.items = qeb
return qeb
end

for ymm, vt in ipairs(hshd.ShopItems) do
local jl = nil

pcall(function()
if vt.itemId then
local clyf = require(wtba.ModuleScripts.ItemData)
local wx = clyf[vt.itemId] or (clyf.ById and clyf.ById[vt.itemId])
jl = wx and wx.name or nil
elseif vt.cardId then
local afl = require(wtba.ModuleScripts.CardData)
local gtu = afl[vt.cardId] or (afl.ById and afl.ById[vt.cardId])
jl = gtu and gtu.name or nil
end
end)

local ztyb = pxa.worldBoss.state

if type(ztyb) == _d("FlVWHhI") and type(ztyb.shop) == _d("FlVWHhI") then
for hp, gml in ipairs(ztyb.shop) do
if gml.id == vt.id and gml.name then
jl = gml.name
break
end
end
end

if not jl then

jl = tostring(vt.accessoryId or vt.id or _d("XQ")):gsub(_d("PQ"), _d("Qg")):gsub(_d("ShFVW182VxUTaVhe"), function(svsp, ma)
return svsp:upper() .. ma
end)
end

table.insert(qeb, {
id = vt.id,
name = jl,
price = tonumber(vt.price) or 0,
kind = vt.itemId and _d("C0BRHw") or (vt.cardId and _d("AVVGFg") or _d("A1dXFwQeHRBN")),
})
end

vi.items = qeb

return qeb
end

function pxa.worldBoss.bodyText()
local oqc = pxa.worldBoss
local mvp = oqc.state

if type(mvp) ~= _d("FlVWHhI") then
return _d("MFFVFh4DFUJAXBdXDx0RRxpcWQ")
end

local uo = {}
local esd = oqc.cycle()
local evz = oqc.isOpen()
local tf, oulc = oqc.window()

if evz == nil then
evz = mvp.open == true
end

if evz then
local xjc = _d("LURRHA")

if not tf and esd then
tf = esd.endsAt
end

if tf and tf > os.time() then
xjc = xjc .. _d("QvaDUg") .. oqc.clock(tf - os.time()) .. _d("QlhRFAM")
end

table.insert(uo, xjc)
else
local rwmm = _d("JltDHFcLHRAUWh0A")

if not oulc and esd then
oulc = esd.nextAt
end

if oulc and oulc > os.time() then
rwmm = rwmm .. _d("aHZVERxNGwwU") .. oqc.clock(oulc - os.time())
end

table.insert(uo, rwmm)
end

table.insert(uo, _d("L1FQExseSEI") .. tostring(mvp.medals or 0) .. _d("aH9dHhseSEI") .. tostring(mvp.kills or 0))

if mvp.inFight then
table.insert(uo, _d("JF1TGgMEHAU"))
elseif evz then

table.insert(uo, mvp.killedThisSpawn and _d("MFFVFg5nOQtYWBcTTQYKXUdSBB0TFVoUExsfFwNQTQ") or _d("MFFVFg4"))
end

if oqc.stopAtFull then
local xy, tkn = oqc.meter()

if xy and tkn then
local function xh(zc)
if zc >= 1000000000 then
return string.format(_d("RxoFFDU"), zc / 1000000000)
elseif zc >= 1000000 then
return string.format(_d("R1N5"), math.floor(zc / 100000) / 10)
elseif zc >= 1000 then
return string.format(_d("R1N/"), math.floor(zc / 100) / 10)
end

return tostring(math.floor(zc))
end

table.insert(uo, _d("MVFGBBIfUg9RQBcFV1I") .. xh(xy) .. _d("QhsU") .. xh(tkn)
.. (oqc.meterFull() and _d("aHJBHhtNX0JaWwZXCxsFXEAbGQpSFlxdAVceAgNDWg") or _d("")))
end
end

return table.concat(uo, _d("aD4"))
end

function pxa.worldBoss.shopText()
local vyfr = pxa.worldBoss
local xny = vyfr.state

if type(xny) ~= _d("FlVWHhI") or type(xny.shop) ~= _d("FlVWHhI") then
return _d("MFFVFh4DFUJAXBdXHhoNRBpcWQ")
end

local ptk = { _d("L1FQExseSEI") .. tostring(xny.medals or 0) }

for cz, ztc in ipairs(xny.shop) do
local zttd = tostring(ztc.name or ztc.id)
local qoik = tostring(ztc.price or _d("XQ"))
local cxxz

if ztc.kind == _d("C0BRHw") then
cxxz = zttd .. _d("aA") .. qoik .. _d("QvaDUg") .. tostring(ztc.left or 0) .. _d("TQ") .. tostring(ztc.stock or _d("XQ")) .. _d("QlhRFAM")
elseif ztc.owned then
cxxz = zttd .. _d("aHtDHBIJ")
else
cxxz = zttd .. _d("aA") .. qoik .. _d("QvaDUhgDF0JbUhQ")
end

table.insert(ptk, cxxz)
end

return table.concat(ptk, _d("aD4"))
end

function pxa.worldBoss.shopOptions()
local xdd = pxa.worldBoss

if xdd.options then
return xdd.options
end

local jv = {}

xdd.labelToId = {}

for mq, vse in ipairs(xdd.shopList()) do
local dxui = vse.name .. _d("QvaDUg") .. tostring(vse.price)

table.insert(jv, dxui)
xdd.labelToId[dxui] = vse.id
end

xdd.options = jv

return jv
end

local function ca(gvsl)
local pcwt = pxa.progress[gvsl]
local qy = wtba:FindFirstChild(_d("MFVdFiQZExZBRw"))
local fvu = qy and qy:GetAttribute(_d("IU1XHhIkFg"))

if type(pcwt) == _d("FlVWHhI") then
if pcwt.cycleId then
fvu = pcwt.cycleId
end

if pcwt.completed and pcwt.completedRaidId then
return tostring(fvu) .. _d("WFBbHBI")
end

local ydj = pcwt.phaseIndex or pcwt.phase

if ydj then
return tostring(fvu) .. _d("WA") .. tostring(ydj)
end
end

return tostring(fvu)
end

function pxa.finished(ojmj)
local ea = pxa.progress[ojmj]

return type(ea) == _d("FlVWHhI") and ea.completed == true and ea.completedRaidId == ojmj
end

function pxa.bossFor(tkf, slcj)
local izj = pxa.picks[slcj or tkf]

if not izj or #izj == 0 then
return nil
end

local ody = wtba:FindFirstChild(_d("MFVdFiQZExZBRw"))
local onj = pxa.losses[tkf] or {}
local rcg = pxa.cursor[tkf] or 1

for madm = 0, #izj - 1 do
local cqxf = (rcg - 1 + madm) % #izj + 1
local gsku = izj[cqxf]
local uwr = not ody or ody:GetAttribute(_d("MFFVFg4y") .. gsku) == true

if uwr and not pxa.finished(gsku) and (onj[gsku] or 0) < pxa.lossLimit then
pxa.cursor[tkf] = cqxf

return gsku
end
end

return nil
end

wdaq(evk.RaidBattleStarted.OnClientEvent, function(cmn)

local lp = type(cmn) == _d("FlVWHhI") and cmn.raidId or nil

if type(lp) == _d("EUBGGxkK") then
pxa.pending[lp] = false
else
for ao in pairs(pxa.pending) do
pxa.pending[ao] = false
end
end
end)

wdaq(evk.BattleEnd.OnClientEvent, function(vay)
for nm in pairs(pxa.pending) do
pxa.pending[nm] = false
end

if type(vay) ~= _d("FlVWHhI") or not pxa.enabled then
return
end

local xq = type(vay.raidId) == _d("EUBGGxkK") and vay.raidId or nil
local cp = xq and pxa.inFlight[xq] or nil

if not xq then
for sqj, wtbo in pairs(pxa.inFlight) do
xq = sqj
cp = wtbo
break
end
end

if not xq then
return
end

pxa.inFlight[xq] = nil

if vay.result == _d("DltHFw") then

local yw = pxa.losses[cp or 1]

pxa.cleared[xq] = nil
yw[xq] = (yw[xq] or 0) + 1

for lit in pairs(pxa.pendingUntil) do
pxa.pendingUntil[lit] = os.time() + 3
end
else

pxa.losses[cp or 1][xq] = 0
end
end)

wdaq(evk.RaidProgress.OnClientEvent, function(vhh)
if type(vhh) == _d("FlVWHhI") and type(vhh.raidId) == _d("EUBGGxkK") then
pxa.progress[vhh.raidId] = vhh
end
end)

evk.RequestRaidProgress:FireServer()

local vr = {
enabled = false,
progress = nil,
currentRoom = nil,
inBattle = false,
inBattleUntil = 0,
pending = false,
pendingUntil = 0,
}

getgenv().ACBXAutoRooms = vr

wdaq(evk.SyncInfiniteRoomProgress.OnClientEvent, function(akhx)
if type(akhx) == _d("DEFZEBIf") then
vr.progress = akhx
vr.pending = false
end
end)

wdaq(evk.BattleEnd.OnClientEvent, function(sscv)
if type(sscv) == _d("FlVWHhI") and sscv.mode == _d("C1pSGxkEBgdrRh0YAA") then
vr.inBattle = false
vr.pending = true
vr.pendingUntil = os.time() + 3

task.delay(0.3, function()
evk.RequestInfiniteRoomProgress:FireServer()
end)
end
end)

evk.RequestInfiniteRoomProgress:FireServer()

local oqnx = {
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

getgenv().ACBXAutoTower = oqnx

local gc = {
enabled = false,
floor = 0,
triggered = false,
}

getgenv().ACBXAutoPause = gc

local xzd = {
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
Typhoon = _d("Fk1EGhgCHA"),
Blizzard = _d("AFhdCA0MAAY"),
Lightning = _d("Dl1TGgMDGwxT"),
Windstorm = _d("FV1aFgQZHRBZ"),
Sharingan = _d("EVxVAB4DFQNa"),
Singularity = _d("EV1aFQIBExBdQAs"),
[_d("L1taEwUOGkJwWx8WBBw")] = _d("D1taEwUOGj1QWx8WBBw"),
Void = _d("FFtdFg"),
[_d("L1VQF1cEHEJ8URMBCBw")] = _d("D1VQFygEHD1cURMBCBw"),
Manga = _d("D1VaFRY"),
},
}

function xzd.weatherWanted(krwv)
local oksx = xzd.weatherNow

if type(oksx) ~= _d("EUBGGxkK") then
return nil
end

for gkhx, cuu in pairs(krwv or xzd.weathers) do
if cuu and xzd.weatherIds[gkhx] == oksx then
return gkhx
end
end

return nil
end

getgenv().ACBXAutoGiveUp = xzd

local yi = {
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

if wtba:FindFirstChild(_d("L1tQBxsIIQFGXQIDHg")) and wtba.ModuleScripts:FindFirstChild(_d("KlVGFhQCAAdgWwUSHzYDQFU")) then
local vtvy, kl = pcall(function()
return require(wtba.ModuleScripts.HardcoreTowerData)
end)

if vtvy then
yi.data = kl
end
end

getgenv().ACBXHardcore = yi

task.spawn(function()
local hgp = wtba:FindFirstChild(_d("MFFZHQMIAQ"))

if not hgp then
return
end

local eel = hgp:WaitForChild(_d("MU1aET8MAAZXWwASOR0VUUYiBQIVEFFHAQ"), 20)

if eel and eel:IsA(_d("MFFZHQMINxRRWgY")) then
yi.remotes.sync = eel

wdaq(eel.OnClientEvent, function(efqm)
if type(efqm) ~= _d("FlVWHhI") then
return
end

yi.progress = tonumber(efqm.progress) or yi.progress
yi.best = tonumber(efqm.best) or yi.best

if type(efqm.points) == _d("FlVWHhI") then
yi.points = efqm.points
end
end)
end

local rnbk = hgp:WaitForChild(_d("MFFFBxIeBipVRhYUAgAHYFsFEh8iEFtTABIeAQ"), 20)

if rnbk and rnbk:IsA(_d("MFFZHQMINxRRWgY")) then
yi.remotes.request = rnbk

pcall(function()
rnbk:FireServer()
end)
end

local vqbe = hgp:WaitForChild(_d("JVhbEBYBMBdSUicHCRMWUVA"), 20)

if vqbe and vqbe:IsA(_d("MFFZHQMINxRRWgY")) then
wdaq(vqbe.OnClientEvent, function(pjqn, mmqp, tzvz, zd)
yi.globalLuck = tonumber(pjqn) or 0
yi.globalRoll = tonumber(mmqp) or 0
yi.globalLuckTime = type(tzvz) == _d("EUBGGxkK") and tzvz or _d("")
yi.globalRollTime = type(zd) == _d("EUBGGxkK") and zd or _d("")
end)
end
end)

function ne.otherTowerOn(byxf)
if ne.enabled then
return false
end

if byxf == _d("FltDFwU") then
return false
end

if byxf == _d("ClVYHhgaFwda") then
return yi.active()
end

return ud.run.enabled
end

function yi.active()
return yi.island
end

function yi.unspentPoints()
local zl = yi.data
local dz = tonumber(yi.progress) or 0
local uqrm = 0

if type(zl) == _d("FlVWHhI") and type(zl.getEarnedPoints) == _d("BEFaEQMEHQw") then
local vtbe, jfjm = pcall(zl.getEarnedPoints, dz)
uqrm = vtbe and tonumber(jfjm) or 0
end

return math.max(0, uqrm - #(yi.points or {})), uqrm
end

function yi.buffText()
local xo = yi.data

if type(xo) ~= _d("FlVWHhI") then
return _d("KlVGFhQCAAdgWwUSHzYDQFVSHh5SD11HAR4DFUJSRh0aTQYKXUdSFRgbDlAa")
end

local bz = tonumber(yi.progress) or 0
local pf = tonumber(yi.best) or 0
local xj, xr = yi.unspentPoints()
local rzj = {
_d("JFhbHQVN") .. bz .. _d("QhQUMBIeBkI") .. pf,
_d("MltdHAMeSEI") .. xj .. _d("QkFaAQcIHBYUWxRX") .. xr .. _d("QlFVABkIFg"),
}

local id = {}

for bb, enu in ipairs(yi.points or {}) do
local br = xo.StatById and xo.StatById[enu]
local ix = br and (br.name or enu) or tostring(enu)
local hwy = xo.PointValue and xo.PointValue[enu]

table.insert(id, hwy and (ix .. _d("Qh8") .. tostring(hwy)) or ix)
end

if #id == 0 then
table.insert(rzj, _d("IEFSFARXUgxbWhdXDx0XU1wGVxQXFg"))
else
table.insert(rzj, _d("IEFSFARXUg") .. table.concat(id, _d("ThQ")))
end

local xxq = {}

if (tonumber(yi.globalLuck) or 0) > 0 then
table.insert(xxq, _d("LkFXGVdG") .. tostring(yi.globalLuck) .. _d("Rw") .. (yi.globalLuckTime ~= _d("") and (_d("Qhw") .. yi.globalLuckTime .. _d("Sw")) or _d("")))
end

if (tonumber(yi.globalRoll) or 0) > 0 then
table.insert(xxq, _d("MFtYHlceAgdRUFJc") .. tostring(yi.globalRoll) .. _d("Rw") .. (yi.globalRollTime ~= _d("") and (_d("Qhw") .. yi.globalRollTime .. _d("Sw")) or _d("")))
end

if #xxq == 0 then
table.insert(rzj, _d("JVhbEBYBUgBBUhQEV1IMW1oXVwwRFl1CFw"))
else
table.insert(rzj, _d("JVhbEBYBUgBBUhQEV1I") .. table.concat(xxq, _d("ThQ")))
end

return table.concat(rzj, _d("aA"))
end

function yi.nextMilestone()
local qkr = yi.data

if type(qkr) ~= _d("FlVWHhI") or type(qkr.Milestones) ~= _d("FlVWHhI") or #qkr.Milestones == 0 then
return nil
end

local hd = tonumber(aqzz:GetAttribute(_d("KlVGFhQCAAdyWB0YHw"))) or 0

return math.min(hd + 1, qkr.Milestones[#qkr.Milestones])
end

function yi.start(cdfs)
local ep = yi.nextMilestone()

if not ep then
return false
end

local dtyk = hzia:FindFirstChild(cdfs == 2 and _d("MFFHFwMvExZAWBcxAR0NRgY") or _d("MFFHFwMvExZAWBcxAR0NRg"))

if dtyk and dtyk:IsA(_d("IF1aFhYPHgdxQhcZGQ")) then
pcall(function()
dtyk:Fire(ep, _d("C1pSGxkEBgdrRh0YAA"))
end)
end

local zjkq = hzia:FindFirstChild(cdfs == 2 and _d("MUBVAAMkHARdWhsDCCANW1kwFhkGDlEG") or _d("MUBVAAMkHARdWhsDCCANW1kwFhkGDlE"))

if zjkq and zjkq:IsA(_d("IF1aFhYPHgdxQhcZGQ")) then
pcall(function()
zjkq:Fire(ep, _d("ClVGFhQCAAc"), ep)
end)
end

if uurn.bossTeams.applyTower then
uurn.bossTeams.applyTower(_d("ClVGFhQCAAc"), cdfs)
end

yi.pending = true
yi.pendingUntil = os.time() + 10

return pcall(function()
evk.StartBattle:FireServer(_d("C1pSGxkEBgdrRh0YAA"), {
tower = _d("ClVGFhQCAAc"),
milestone = ep,
slot = cdfs,
})
end)
end

function yi.floorNow()
local npm = ne.hardcoreSlot()

if not npm or not ne.busy(npm) then
return nil
end

local vjb = hzia:FindFirstChild(npm == 2 and _d("IFVABhsINRddBg") or _d("IFVABhsINRdd"))
local na = vjb and vjb:FindFirstChild(_d("MEFaNBsCHRB4VRASAQ"))
local fo = na and na.Text or _d("")

return tonumber(fo:match(_d("PHJYHRgfVxEfHFcTRls")))
end

local pckx = {
enabled = true,
nextAt = os.clock() + 300,
jumps = 0,
}

getgenv().ACBXAntiKick = pckx

local wmr = getgenv().ACBXNoUpdate == true

local uws = {
enabled = not wmr,
buildId = "v261102-2320",
interval = 180,
retry = 45,
forceAfter = 900,
applying = false,
checking = false,
pendingVersion = nil,
pendingSince = nil,
cameFrom = nil,
}

getgenv().ACBXUpdater = uws

local mt = {
enabled = false,
tpToBay = false,

stick = {
enabled = false,
at = 0,
hits = 0,
last = _d("DVJS"),

names = {
[_d("EUBdERw")] = true,
[_d("DkFXGVceBgtXXw")] = true,
[_d("DkFXGQQZGwFf")] = true,
[_d("DkFXGSgeBgtXXw")] = true,
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
rod = _d("Tw"),
castTime = 0,
tutorialStep = 0,
phase = _d("C1BYFw"),
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
deepPhase = _d("C1BYFw"),
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

local bsda = Vector3.new(-546.8, 13.9, -40250.1)

if type(getgenv().ACBXFishingCatches) == _d("FlVWHhI") then
mt.catches = getgenv().ACBXFishingCatches
end

mt.totalCatches = 0

for pa, zko in pairs(mt.catches) do
mt.totalCatches = mt.totalCatches + zko
end

getgenv().ACBXFishingCatches = mt.catches
getgenv().ACBXFishing = mt

mt.catchName = function(bm)
local hfd = fnha.ById[bm]

if hfd and hfd.name then
return hfd.name
end

local dvfi = sng.ById[bm]

if dvfi and dvfi.name then
return dvfi.name
end

return bm
end

local gtxa

gtxa = {
folder = _d("I3d2Kg"),
path = _d("I3d2KlgOExZXXBcEQxgRW1o"),
at = 0,
save = function()
if type(writefile) ~= _d("BEFaEQMEHQw") then
return false
end

local nmg = pcall(function()
if type(makefolder) == _d("BEFaEQMEHQw") and type(isfile) == _d("BEFaEQMEHQw") and not isfile(gtxa.path) then
pcall(makefolder, gtxa.folder)
end

writefile(gtxa.path, game:GetService(_d("KkBAAiQIABRdVxc")):JSONEncode({
catches = mt.catches,
totalCatches = mt.totalCatches,
lastCatch = mt.lastCatch,
updatedAt = os.time(),
}))
end)

return nmg
end,
load = function()
if type(readfile) ~= _d("BEFaEQMEHQw") or type(isfile) ~= _d("BEFaEQMEHQw") then
return false
end

local ng, sblr = pcall(function()
if not isfile(gtxa.path) then
return nil
end

return readfile(gtxa.path)
end)

if not ng or type(sblr) ~= _d("EUBGGxkK") or #sblr == 0 then
return false
end

local vk
local xxhf = pcall(function()
vk = game:GetService(_d("KkBAAiQIABRdVxc")):JSONDecode(sblr)
end)

if not xxhf or type(vk) ~= _d("FlVWHhI") or type(vk.catches) ~= _d("FlVWHhI") then
return false
end

for tcn, nir in pairs(vk.catches) do
local hs = tonumber(nir) or 0

if hs > 0 then
mt.catches[tostring(tcn)] = math.max(mt.catches[tostring(tcn)] or 0, hs)
end
end

mt.totalCatches = 0

for ewq, ws in pairs(mt.catches) do
mt.totalCatches = mt.totalCatches + ws
end

return true
end,
}

gtxa.load()
getgenv().ACBXFishingStore = gtxa

local uw = {}

local ikku = 0

local function nc()
local qa = {}

for mpx, xtul in ipairs(workspace:GetDescendants()) do
if xtul:IsA(_d("IFVHFycMABY")) and xtul.Name == _d("NVVAFwU") then
table.insert(qa, xtul)
end
end

uw = qa
ikku = os.clock()
end

local function nch(mmjr)
if type(mmjr) ~= _d("FlVWHhI") then
return false
end

mt.loaded = true
mt.dirty = false
mt.fishing = mmjr.fishing == true
mt.autoOn = mmjr.autoOn == true
mt.autoUnlocked = mmjr.autoUnlocked == true
mt.casts = tonumber(mmjr.casts) or mt.casts
mt.totalCasts = tonumber(mmjr.totalCasts) or mt.totalCasts
mt.luck = tonumber(mmjr.luck) or mt.luck
mt.rod = tostring(mmjr.equippedRod or mt.rod)
mt.castTime = tonumber(mmjr.castTime) or mt.castTime
mt.tutorialStep = tonumber(mmjr.tutorialStep) or mt.tutorialStep

if type(mmjr.rods) == _d("FlVWHhI") then
mt.rodsOwned = mmjr.rods
end

if type(mmjr.baits) == _d("FlVWHhI") then
mt.baitsOwned = mmjr.baits
end

if type(mmjr.boats) == _d("FlVWHhI") then
mt.boatsOwned = mmjr.boats
end

if type(mmjr.mats) == _d("FlVWHhI") then
mt.mats = mmjr.mats
end

if mmjr.bootOwned ~= nil then
mt.boot.owned = mmjr.bootOwned == true
end

if mmjr.bootEquipped ~= nil then
mt.boot.equipped = mmjr.bootEquipped == true
end

if mmjr.equippedBait ~= nil then
mt.equippedBait = tostring(mmjr.equippedBait)
end

if mmjr.activeBoat ~= nil then
mt.activeBoat = tostring(mmjr.activeBoat)
end

mt.boatTier = tonumber(mmjr.boatTier) or mt.boatTier
mt.islandLocked = mmjr.islandLocked == true
mt.rebirths = tonumber(mmjr.rebirths) or mt.rebirths

if type(mmjr.rebirthCards) == _d("FlVWHhI") then
mt.rebirthCards = mmjr.rebirthCards
end

mt.lastSync = os.time()

return true
end

local function jpeo()
local wdlh, pkpz = pcall(function()
return evk.FishingGetState:InvokeServer()
end)

if not wdlh or type(pkpz) ~= _d("FlVWHhI") then
mt.loaded = false
return false
end

return nch(pkpz)
end

local yql = false

local function fhi()
if yql then
return false
end

local nxv = aqzz.Character

if not nxv then
return false
end

if nxv:FindFirstChild(_d("JF1HGh4DFTBbUA")) then
return true
end

local dyy = aqzz:FindFirstChild(_d("IFVXGQcMEQk"))
local ruao = dyy and dyy:FindFirstChild(_d("JF1HGh4DFTBbUA"))
local rsmd = nxv:FindFirstChildOfClass(_d("KkFZExkCGwY"))

if not (ruao and rsmd) then
return false
end

return pcall(function()
rsmd:EquipTool(ruao)
end)
end

local function jyjg()
local ff = aqzz.Character
local xf = ff and ff:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not xf then
return nil
end

local vf = RaycastParams.new()
vf.FilterType = Enum.RaycastFilterType.Exclude
vf.FilterDescendantsInstances = { ff }

local ktzf = 24
local hfi = {}
local es = 0

for lvt = 0, ktzf - 1 do
local poem = math.rad(lvt * (360 / ktzf))
local cfx = Vector3.new(math.sin(poem), 0, math.cos(poem))
local mobq = xf.Position + cfx * 20 + Vector3.new(0, 40, 0)
local frfl = workspace:Raycast(mobq, Vector3.new(0, -120, 0), vf)
local fq = frfl and (xf.Position.Y - frfl.Position.Y) or 120

hfi[lvt] = fq > 12

if hfi[lvt] then
es = es + 1
end
end

if es == 0 then
return nil
end

local gb, ogj = nil, 0

for sb = 0, ktzf - 1 do
if hfi[sb] and not hfi[(sb - 1) % ktzf] then
local tka = 0

while tka < ktzf and hfi[(sb + tka) % ktzf] do
tka = tka + 1
end

if tka > ogj then
gb = sb
ogj = tka
end
end
end

if not gb then
return nil
end

local hf = gb + (ogj - 1) / 2
local mew = math.rad(hf * (360 / ktzf))

return Vector3.new(math.sin(mew), 0, math.cos(mew))
end

local function vbup()
local fzza = aqzz.Character
local ithe = fzza and fzza:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not ithe then
return nil
end

if #uw == 0 or os.clock() - ikku > 20 then
nc()
end

local ygqj, urkx = nil, math.huge

for abkm, awk in ipairs(uw) do
if awk.Parent then
local js = (awk.Position - ithe.Position).Magnitude

if js < urkx then
urkx = js
ygqj = awk
end
end
end

if not ygqj or urkx > 25 then
local btd = jyjg()

if btd then
return btd
end
end

if not ygqj then
return nil
end

local nrm = Vector3.new(ygqj.Position.X - ithe.Position.X, 0, ygqj.Position.Z - ithe.Position.Z)

if nrm.Magnitude < 0.05 then
return Vector3.new(0, 0, -1)
end

return nrm.Unit
end

local function xn()
local ql = aqzz.Character
local rjwy = ql and ql:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not rjwy then
return nil
end

local mjib = rjwy.CFrame.LookVector
local zrf = Vector3.new(mjib.X, 0, mjib.Z)

if zrf.Magnitude < 0.05 then
return nil
end

return zrf.Unit
end

local function oxt()
local iw = aqzz.Character
local oy = iw and iw:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not oy then
return false
end

local cwhe = bsda
local caal = RaycastParams.new()
caal.FilterType = Enum.RaycastFilterType.Exclude
caal.FilterDescendantsInstances = { iw }

local nxgx = workspace:Raycast(bsda + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), caal)

if nxgx and nxgx.Instance.Name ~= _d("NVVAFwU") then
cwhe = Vector3.new(bsda.X, nxgx.Position.Y + 3, bsda.Z)
end

oy.CFrame = CFrame.new(cwhe)
task.wait(0.5)
nc()

return true
end

local function fkso()
local cn = aqzz.Character
local iys = cn and cn:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not iys then
return false
end

local xtsw = Vector3.new(bsda.X - iys.Position.X, 0, bsda.Z - iys.Position.Z)
local apvr = xtsw.Magnitude

if apvr < 2 then
return false
end

local gmv = xtsw.Unit

if apvr > 12 then
local wjba = math.min(14, apvr - 6)
local uahv = iys.Position + gmv * wjba
local wtr = RaycastParams.new()
wtr.FilterType = Enum.RaycastFilterType.Exclude
wtr.FilterDescendantsInstances = { cn }

local mnwx = workspace:Raycast(uahv + Vector3.new(0, 25, 0), Vector3.new(0, -80, 0), wtr)

if mnwx and mnwx.Instance.Name ~= _d("NVVAFwU") then
local uiti = mnwx.Position.Y + 3.2

if math.abs(uiti - iys.Position.Y) <= 10 then
local jo = Vector3.new(mnwx.Position.X, uiti, mnwx.Position.Z)
iys.CFrame = CFrame.lookAt(jo, jo + gmv)

return true
end
end
end

iys.CFrame = CFrame.lookAt(iys.Position, iys.Position + gmv)

return true
end

local mzo = {}

mzo.surfaceWait = 8

mzo.walking = false
mzo.walkStartedAt = 0

mzo.islandHold = Vector3.new(-7384, 16.3, -40539)

mzo.custom = nil
mzo.customIsland = nil

mzo.islandAnchors = {
{ id = _d("A1ZVHBMCHAdQaxsEARMMUA"), x = -3800 },
{ id = _d("FkNdHCgPFwNXXBcE"), x = -6180 },
{ id = _d("FV1aFhoEHg5rXQEbCA"), x = -7480 },
}

mzo.arrivals = {
abandoned_island = Vector3.new(-3825, 24, -40260),
twin_beaches = Vector3.new(-6180, 40, -40350),
windmill_isle = Vector3.new(-7480, 30, -40350),
lobby = Vector3.new(-499, 17, -40234),
}

function mzo.islandOf(cmmb)
if not cmmb then
return _d("DltWEA4")
end

if cmmb.X > -4500 then
return _d("DltWEA4")
end

local vlkk, va = _d("A1ZVHBMCHAdQaxsEARMMUA"), math.huge

for cpgp, tz in ipairs(mzo.islandAnchors) do
local uz = math.abs(cmmb.X - tz.x)

if uz < va then
vlkk = tz.id
va = uz
end
end

return vlkk
end

mzo.savedVersion = 2

do
local whmm = getgenv().ACBXDeepSpot

if type(whmm) == _d("FlVWHhI") and whmm.v == mzo.savedVersion
and tonumber(whmm.X) and tonumber(whmm.Y) and tonumber(whmm.Z) then
mzo.custom = Vector3.new(tonumber(whmm.X), tonumber(whmm.Y), tonumber(whmm.Z))
mzo.customIsland = whmm.island
end
end

function mzo.spot()
return mzo.custom or mzo.islandHold
end

function mzo.dropStale()
if not mzo.custom then
return false
end

if mzo.zoneAt(mzo.custom) then
return false
end

mzo.custom = nil
mzo.customIsland = nil
getgenv().ACBXDeepSpot = nil

return true
end

function mzo.capture()
local ipii = aqzz.Character
local taxh = ipii and ipii:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not taxh then
return false, _d("LFsUER8MAANXQBcFTQYNFEYXFglSAxRHAhgZUgRGWx9Z")
end

local wl = taxh.Position
local sjq = mzo.floorAt(Vector3.new(wl.X, wl.Y + 10, wl.Z))

if not sjq then
return false, _d("MUBVHBNNHQwURx0bBBZCU0YdAgMWQlJdAAQZUk8UQBoeHlIRRFsGVwUTERRaHVcLHg1bRlIDAlIBVUcGVwsADVka")
end

local jmqt = mzo.zoneAt(wl)

if not jmqt then
return false, _d("NlxdAVceAg1AFBsETR0XQEcbEwhSB0JRAA5NFAtHXBsZClIQXVoVV0BSEUBVHBNNHRRRRlIDBRdCQ1UGEh9SBF1GAQND")
end

mzo.custom = wl
mzo.customIsland = mzo.islandOf(wl)

getgenv().ACBXDeepSpot = {
X = wl.X,
Y = wl.Y,
Z = wl.Z,
island = mzo.customIsland,
v = mzo.savedVersion,
}

return true, _d("MVVCFxNNBgpdR1IEHR0WFFUBVxkaBxRQFxIdXxVVQBcFTRoNWFBSXw") .. tostring(jmqt.name) .. _d("Sxo")
end

function mzo.zoneTable()
local kruf = {}

if ut and type(ut.Zones) == _d("FlVWHhI") then
for dt, oqr in ipairs(ut.Zones) do
kruf[#kruf + 1] = {
id = tostring(oqr.id),
name = tostring(oqr.name or oqr.id),
half = tonumber(oqr.half) or 0,
luck = tonumber(oqr.luck) or 0,
index = tonumber(oqr.index) or 0,
boatTier = tonumber(oqr.boatTier) or 0,
}
end
end

table.sort(kruf, function(qd, olm)
return qd.index < olm.index
end)

return kruf
end

function mzo.zoneAt(ddrc)
local qk = ut and ut.ZoneCenter
local fcgc = mzo.zoneTable()

if not (qk and ddrc and #fcgc > 0) then
return nil
end

local pahb = math.max(math.abs(ddrc.X - qk.X), math.abs(ddrc.Z - qk.Z))

for jgjp, qsli in ipairs(fcgc) do
if pahb < qsli.half then
return qsli
end
end

return nil
end

function mzo.current()
local pb = aqzz.Character
local xcn = pb and pb:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

return xcn and mzo.zoneAt(xcn.Position) or nil
end

function mzo.sync()
local li = mzo.current()
mt.zoneId = li and li.id or nil
end

function mzo.floorAt(qjc)
local ejgm = aqzz.Character
local ipwa = RaycastParams.new()
ipwa.FilterType = Enum.RaycastFilterType.Exclude
ipwa.FilterDescendantsInstances = { ejgm }

local epi = workspace:Raycast(Vector3.new(qjc.X, qjc.Y + 20, qjc.Z), Vector3.new(0, -80, 0), ipwa)

if epi and epi.Instance.Name ~= _d("NVVAFwU") then
return epi
end

return nil
end

function mzo.ensureSpotMap()
local rjgt = mzo.spot()
local wd = Vector3.new(rjgt.X, rjgt.Y + 20, rjgt.Z)

if mzo.floorAt(wd) then
return true
end

local tzv = workspace:FindFirstChild(_d("L1VEAQ"))

if tzv and tzv:FindFirstChild(_d("IVtVAQMMHi5bVhAO")) then
if os.clock() - (mzo.hopAt or 0) > 1 then
mzo.hopAt = os.clock()
mzo.hop(rjgt)
mt.lastMessage = _d("L1tCGxkKUhZbFAYfCFIGUVECWhoTFlFGUgQdHRY")
end

return false
end

if os.clock() - (mzo.islandAskedAt or 0) > 1.2 then
mzo.islandAskedAt = os.clock()

local je = mzo.customIsland or mzo.islandOf(rjgt)

if je == _d("DltWEA4") then
pcall(function()
evk.TeleportToWorld:FireServer(_d("DltWEA4"))
end)
else
pcall(function()
evk.FishingIslandTeleport:FireServer(_d("FVVNAhgEHBY"), je)
end)
end

mt.lastMessage = _d("NlVfGxkKUhZcUVIQDB8HE0dSAwgeB0RbAANNBg0UQBoSTRYHUURfAAwGB0YUHxYd")
end

return false
end

function mzo.hop(vrfe)
local nl = aqzz.Character
local webl = nl and nl:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))
local sxm = nl and nl:FindFirstChildOfClass(_d("KkFZExkCGwY"))

if not (webl and sxm) then
return false
end

if sxm.SeatPart then
pcall(function()
sxm.Sit = false
end)
end

webl.AssemblyLinearVelocity = Vector3.zero
webl.CFrame = CFrame.new(Vector3.new(vrfe.X, vrfe.Y + 8, vrfe.Z))

return true
end

function mzo.faceWater()
local fno = aqzz.Character
local jktm = fno and fno:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not jktm then
return false
end

local jhj = vbup()

if not jhj then
local lot = ut and ut.ZoneCenter

if lot then
local nbfi = Vector3.new(lot.X - jktm.Position.X, 0, lot.Z - jktm.Position.Z)

jhj = nbfi.Magnitude > 1 and nbfi.Unit or nil
end
end

if not jhj then
return false
end

jktm.CFrame = CFrame.lookAt(jktm.Position, jktm.Position + jhj)

return true
end

function mzo.aimWater(ewg)
local tm = aqzz.Character
local cx = tm and tm:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not cx then
return false
end

if ewg then
nc()
end

local mouw = cx.CFrame.LookVector
local glpg = Vector3.new(mouw.X, 0, mouw.Z)
local igbv = vbup()

if not igbv then
return false
end

if glpg.Magnitude > 0.05 and glpg.Unit:Dot(igbv) > 0.985 then
return true
end

cx.CFrame = CFrame.lookAt(cx.Position, cx.Position + igbv)

return true
end

function mzo.hold(rbp)
local wyjt = aqzz.Character
local xz = wyjt and wyjt:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))
local jiwr = wyjt and wyjt:FindFirstChildOfClass(_d("KkFZExkCGwY"))

if not (xz and jiwr) then
return false
end

if jiwr.SeatPart then
pcall(function()
jiwr.Sit = false
end)
end

local vlu = mzo.floorAt(rbp)

if not vlu then
return false
end

xz.AssemblyLinearVelocity = Vector3.zero
xz.CFrame = CFrame.new(Vector3.new(rbp.X, vlu.Position.Y + 3.2, rbp.Z))

pcall(mzo.aimWater, true)

mt.phase = _d("C1BYFw")
mt.nextCastAt = 0

return true
end

function mzo.dive()
local fpf = mzo.spot()

if not mzo.ensureSpotMap() then
return false
end

if not mzo.hold(fpf) then
return false
end

mzo.islandAskedAt = 0

local yykw = mzo.zoneAt(fpf)

mt.lastMessage = yykw
and (_d("KltYFh4DFUJAXBdXCRcHRBkFFhkXEBRHAhgZUko") .. tostring(yykw.name) .. _d("Sw"))
or _d("KltYFh4DFUJAXBdXCRcHRBkFFhkXEBRHAhgZ")

task.wait(0.25)
mzo.sync()
mt.deepDiveAt = os.clock() + 2

return true
end

function mzo.walk()
local jtyf = aqzz.Character
local pxi = jtyf and jtyf:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if mzo.walking and os.clock() - (mzo.walkStartedAt or 0) < 60 then
return false
end

if not pxi then
return false
end

local nww = mzo.spot()

if (pxi.Position - Vector3.new(nww.X, pxi.Position.Y, nww.Z)).Magnitude <= 8 then
mt.phase = _d("C1BYFw")
mt.nextCastAt = 0

return true
end

mzo.walking = true
mzo.walkStartedAt = os.clock()
mt.deepPhase = _d("FVVYGQ")
mt.deepStageAt = os.clock()
mt.lastMessage = _d("NVVYGR4DFUJAW1IDBRdCUFEXBwgBFhRDEwMIAEJHRB0D")

task.spawn(function()
local uvy = jtyf and jtyf:FindFirstChildOfClass(_d("KkFZExkCGwY"))

local lert, vrr = pcall(function()

local ohu = workspace:FindFirstChild(_d("L1VEAQ"))
local uxfy = mzo.customIsland or mzo.islandOf(nww)
local dbo = (pxi.Position - Vector3.new(nww.X, pxi.Position.Y, nww.Z)).Magnitude

if dbo > 400 then
if not (ohu and ohu:FindFirstChild(_d("IVtVAQMMHi5bVhAO"))) then
pcall(function()
evk.TeleportToWorld:FireServer(_d("DltWEA4"))
end)

local pp = os.clock() + 20

while mt.deepWalk and os.clock() < pp do
local izx = workspace:FindFirstChild(_d("L1VEAQ"))

if izx and izx:FindFirstChild(_d("IVtVAQMMHi5bVhAO")) then
break
end

task.wait(0.5)
end
end

if mt.deepWalk then
local cke = mzo.arrivals and mzo.arrivals[uxfy]

if cke then
mzo.hop(cke)
else
local oee = Vector3.new(nww.X - pxi.Position.X, 0, nww.Z - pxi.Position.Z)
local qnt = oee.Magnitude > 1 and oee.Unit or Vector3.new(1, 0, 0)

mzo.hop(Vector3.new(nww.X - qnt.X * 120, nww.Y, nww.Z - qnt.Z * 120))
end

task.wait(1.5)
end
end

if mt.deepWalk and uvy then

local wfw = (pxi.Position - Vector3.new(nww.X, pxi.Position.Y, nww.Z)).Magnitude
local ntm = os.clock() + math.clamp(wfw / 8, 30, 600)
local wavp = 0
local rsth = pxi.Position
local cwci = os.clock()

while mt.deepWalk and os.clock() < ntm do
local uzle = Vector3.new(nww.X - pxi.Position.X, 0, nww.Z - pxi.Position.Z)

if uzle.Magnitude <= 3 then
break
end

if os.clock() - wavp >= 0.25 then
uvy:MoveTo(Vector3.new(nww.X, pxi.Position.Y, nww.Z))
wavp = os.clock()
end

if os.clock() - cwci >= 1.2 then
if (pxi.Position - rsth).Magnitude < 2 then
uvy.Jump = true
end

rsth = pxi.Position
cwci = os.clock()
end

task.wait(0.1)
end

uvy:MoveTo(pxi.Position)
end
end)

mzo.walking = false

if not lert then
mt.deepPhase = _d("C1BYFw")
mt.deepStageAt = os.clock()
mt.lastMessage = _d("NVVYGVcZHUJwURcHCAEWFGMTAwgAQlJVGxsIFlgU") .. tostring(vrr)

return
end

if not mt.deepWalk then
return
end

local frro = Vector3.new(pxi.Position.X - nww.X, 0, pxi.Position.Z - nww.Z)

if frro.Magnitude <= 6 then

pcall(mzo.aimWater, true)
mt.phase = _d("C1BYFw")
mt.nextCastAt = 0
mt.deepPhase = _d("CltYFg")
mt.deepStageAt = os.clock()
mzo.sync()
mt.lastMessage = _d("NVVYGRIJUhZbFAYfCFIRVUIXE00WB1FEXwAMBgdGFAEHAgY")
else

mt.deepPhase = _d("C1BYFw")
mt.deepStageAt = os.clock()
mt.lastMessage = _d("IVtBHhNNHA1AFAUWARlCQFtSAwUXQlBRFwcIARYUQxMDCABCR0QdA01fQkBGCx4DFUJVUxMeAw")
end
end)

return false
end

function mzo.settle()
for bcg = 1, 30 do
if not mt.deepZone or mt.deepWalk then
return false
end

if mzo.dive() then
return true
end

task.wait(1)
end

return false
end

function mzo.surface()
local nb = aqzz.Character
local bvk = nb and nb:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not bvk then
return false
end

local htl = RaycastParams.new()
htl.FilterType = Enum.RaycastFilterType.Exclude
htl.FilterDescendantsInstances = { nb }

local gqt = workspace:Raycast(bsda + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), htl)
local zvst = bsda

if gqt and gqt.Instance.Name ~= _d("NVVAFwU") then
zvst = Vector3.new(bsda.X, gqt.Position.Y + 3, bsda.Z)
end

bvk.CFrame = CFrame.new(zvst)
mt.phase = _d("C1BYFw")
mt.nextCastAt = 0

return true
end

function mt.gotoIsland()
local ow = aqzz.Character
local yoh = ow and ow:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))
local da = workspace:FindFirstChild(_d("K0dYExkJNAtHXBcFABMMemQx"), true)

if not (yoh and da) then
return false
end

local oq = da:GetPivot()
local qigz = RaycastParams.new()
qigz.FilterType = Enum.RaycastFilterType.Exclude
qigz.FilterDescendantsInstances = { ow, da }

local ot = nil
local ugrh = -math.huge

for rw, ote in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local an = workspace:Raycast(oq.Position + ote + Vector3.new(0, 30, 0), Vector3.new(0, -120, 0), qigz)

if an and an.Position.Y > ugrh then
ot = an
ugrh = an.Position.Y
end
end

if ot then
yoh.CFrame = CFrame.new(Vector3.new(ot.Position.X, ugrh + 3.5, ot.Position.Z))
else
yoh.CFrame = CFrame.new(oq.Position + Vector3.new(0, 4, 0))
end

mt.phase = _d("C1BYFw")
mt.nextCastAt = 0

return true
end

function mzo.cycle()
local uawu = os.clock()
local zai = mt.deepPhase or _d("C1BYFw")
local agao = tonumber(mt.deepStageAt) or 0

if uawu < math.max(mt.shopTripUntil or 0, mt.tpHoldUntil or 0) then
return
end

if zai == _d("C1BYFw") then
mt.deepPhase = _d("CltYFg")
mt.deepStageAt = uawu

if mt.deepWalk then
mzo.walk()
else
mzo.dive()
end

return
end

if zai == _d("FVVYGQ") then
return
end

if zai == _d("CltYFg") then
local woc = mzo.current()

local egvu = mzo.zoneAt(mzo.spot())

if woc and not aqzz:GetAttribute(_d("MUNdHxoEHAU")) and uawu - (mt.deepAimAt or 0) > 2 then
mt.deepAimAt = uawu
pcall(mzo.aimWater)
end

if aqzz:GetAttribute(_d("MUNdHxoEHAU")) then
if mt.deepWalk then

mt.deepPhase = _d("C1BYFw")
mt.deepStageAt = uawu
else
mt.deepPhase = _d("Bl1E")
mt.deepStageAt = uawu
mt.lastMessage = _d("MUNdHxoEHAUUVQZXGRoHFFAXEh1SEURbBldAUhFBRhQWDhcGFFIdBU0TC0Y")
end
elseif not woc or (egvu and woc.index < egvu.index) then

mt.deepPhase = _d("C1BYFw")
mt.deepStageAt = uawu
end

return
end

if zai == _d("Bl1E") then
mzo.surface()
mt.deepPhase = _d("EUFGFBYOFw")
mt.deepStageAt = uawu

return
end

if zai == _d("EUFGFBYOFw") and uawu - agao >= mzo.surfaceWait then
mt.deepPhase = _d("C1BYFw")
end
end

local function pk()
local cu = aqzz.Character
local qht = cu and cu:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not qht then
return false
end

return (qht.Position - bsda).Magnitude <= 12
end

local function tkj()
if not fhi() then
return false
end

local yrg = pcall(function()
evk.FishingSetAuto:FireServer(true)
end)

mt.usingGameAuto = yrg
return yrg
end

local function tnt()
mt.usingGameAuto = false

pcall(function()
evk.FishingSetAuto:FireServer(false)
end)

pcall(function()
evk.FishingStop:FireServer()
end)
end

function mt.recover()
mt.phase = _d("C1BYFw")
mt.nextCastAt = 0
mt.deepPhase = _d("C1BYFw")
mt.deepStageAt = 0
mt.deepDiveAt = 0
mt.waterRefusals = 0
mt.usingGameAuto = false
mt.castMark = mt.totalCasts
mt.castMarkAt = os.clock()

pcall(tnt)
pcall(fhi)

if mt.deepZone and not mzo.current() then

pcall(function()
evk.TeleportToWorld:FireServer(_d("DltWEA4"))
end)
elseif mt.tpToBay and not pk() then
pcall(oxt)
end

mt.lastMessage = _d("JF1HGh4DFUJHQBMbARcGFBlSBQgBB0AUBh8IUhVVQBcFTRMMUBQGGAIZQkBcF1cKEw9REwFXAR0AVk1SBQIF")
end

local function rtl()
if not fhi() then
mt.lastMessage = _d("LFsUFB4eGgtaU1IFAhZCXVpSAwUXQlZVERwdEwFf")
return false
end

local gxjf = xn()
local xvde = vbup()
local aavj = gxjf or xvde

if not aavj then
mt.lastMessage = _d("LFsUBRYZFxAUUh0CAxZCWlETBQ8L")
return false
end

if gxjf and xvde and gxjf:Dot(xvde) < 0.25 then
aavj = xvde
end

mt.phase = _d("AVVHBh4DFQ")
mt.lastMessage = nil
mt.watchdogAt = os.clock() + 25

local ad, lo = pcall(function()
evk.FishingThrow:FireServer(1, aavj)
end)

if not ad then
mt.phase = _d("C1BYFw")
mt.lastMessage = tostring(lo)
mt.nextCastAt = os.clock() + 3
return false
end

return true
end

local py = wdaq(evk.FishingUpdate.OnClientEvent, function(dlc, qdiy)
mt.dirty = true

if dlc == _d("MUBVBhI") then
if type(qdiy) == _d("FlVWHhI") then
mt.autoOn = qdiy.autoOn == true
end

return
end

if dlc == _d("IVVHBg") then
mt.phase = _d("FVVdBh4DFSBdQBc")
mt.waterRefusals = 0
return
end

if dlc == _d("IF1AFw") then
local jcx = type(qdiy) == _d("FlVWHhI") and tonumber(qdiy.warning) or 1

mt.phase = _d("EFFRHh4DFQ")
mt.watchdogAt = os.clock() + 15

task.delay(math.max(0.3, jcx + 0.8), function()
if mt.phase ~= _d("EFFRHh4DFQ") then
return
end

pcall(function()
evk.FishingReel:FireServer(true, 120)
end)

mt.phase = _d("EFFHHRsbGwxT")
end)

return
end

if dlc == _d("IVVAER8") then

local lahp = type(qdiy) == _d("FlVWHhI") and tonumber(qdiy.totalCasts) or nil
local hmyq = tonumber(getgenv().ACBXFishingCatchMark) or 0

if lahp and lahp <= hmyq and hmyq - lahp < 25 then
return
end

if lahp then
getgenv().ACBXFishingCatchMark = lahp
end

local bfbu = type(qdiy) == _d("FlVWHhI") and tostring(qdiy.itemId) or _d("F1pfHBgaHA")
local ym = mt.catchName(bfbu)

mt.catches[bfbu] = (mt.catches[bfbu] or 0) + 1
mt.totalCatches = (mt.totalCatches or 0) + 1

local mhr = type(qdiy) == _d("FlVWHhI") and qdiy.chest or nil

if type(mhr) == _d("FlVWHhI") and mhr.itemId then
local klo = tostring(mhr.itemId)

mt.catches[klo] = (mt.catches[klo] or 0) + 1
end

if os.clock() - (gtxa.at or 0) >= 5 then
gtxa.at = os.clock()
gtxa.save()
end
mt.lastCatch = ym
mt.lastMessage = nil
mt.phase = _d("C1BYFw")
mt.nextCastAt = os.clock() + 2.5

if type(qdiy) == _d("FlVWHhI") then
mt.casts = tonumber(qdiy.casts) or mt.casts
mt.totalCasts = tonumber(qdiy.totalCasts) or mt.totalCasts
mt.autoUnlocked = qdiy.autoUnlocked == true or mt.autoUnlocked
end

return
end

if dlc == _d("I0FAHTgLFA") then

mt.usingGameAuto = false
mt.phase = _d("C1BYFw")
mt.nextCastAt = os.clock() + 1
return
end

if dlc == _d("J0dXEwcIFg") then
mt.phase = _d("C1BYFw")
mt.lastMessage = _d("NlxRUhEEAQoUUx0DTRMVVU0")
mt.nextCastAt = os.clock() + 2.5
return
end

if dlc == _d("MFFeFxQZFwY") then
mt.phase = _d("C1BYFw")

local gobq = type(qdiy) == _d("FlVWHhI") and tostring(qdiy.message) or _d("IVVHBlcfFwhRVwYSCQ")
mt.lastMessage = gobq

if gobq:lower():find(_d("FVVAFwU"), 1, true) then
mt.waterRefusals = (mt.waterRefusals or 0) + 1

if mt.waterRefusals >= 2 then
mt.waterRefusals = 0

if fkso() then
mt.lastMessage = _d("MFFSBwQIFkJAQxsUCFJPFEAHBQMXBhRWExQGUhZbQxMFCVIWXFFSAAwGB0Y")
mt.nextCastAt = os.clock() + 1.5
return
end
end

mt.nextCastAt = os.clock() + 8
return
end

mt.waterRefusals = 0
mt.nextCastAt = os.clock() + 3
return
end
end)

local function dlq()
if not mt.loaded then
return _d("MFFVFh4DFUJSXQEfBBwFFEcGFhkXTBoa")
end

local vite = mt.autoUnlocked == true
or (mt.totalCasts or 0) > 0
or (mt.tutorialStep or 0) > 0
local pu = ut and ut.RodsById and ut.RodsById[mt.rod]
local mvr = pu and tostring(pu.name) or tostring(mt.rod)
local ivon = math.floor((tonumber(mt.luck) or 0) * 100 + 0.5)

local mphh = {
_d("MFtQSFc") .. mvr,
_d("LkFXGU1N") .. ivon .. _d("Rw"),
}

local sowv = mzo.current()

if sowv then
table.insert(mphh, _d("OFtaF01N") .. sowv.name .. _d("Qhwf") .. tostring(math.floor(sowv.luck * 100 + 0.5)) .. _d("RxRYBxQGWw"))
end

table.insert(mphh, _d(""))
table.insert(mphh, _d("IVVHBgRNBg0URwISAxZYFA") .. fwxc(mt.casts or 0))
table.insert(mphh, _d("NltAExtNEQNHQAFNTQ") .. fwxc(mt.totalCasts or 0))

table.insert(mphh, _d(""))
table.insert(mphh, _d("JF1HGh4DFUJBWh4YDhkHUA5S") .. (vite and _d("G1FH") or _d("DFs")))
table.insert(mphh, _d("I0FAHVoLGxFcFAcHCgADUFFIVw") .. (mt.autoUnlocked and _d("DUNaFxM") or _d("DFtAUhgaHAdQ")))

if mt.enabled then
local xbsm = mt.usingGameAuto and _d("BVVZF1cMBxZb") or tostring(mt.phase)

if xbsm == _d("FVVdBh4DFSBdQBc") then
xbsm = _d("FVVdBh4DFUJSWwBXDFIAXUAX")
elseif xbsm == _d("EFFRHh4DFQ") then
xbsm = _d("EFFRHh4DFUJdWg")
elseif xbsm == _d("EFFHHRsbGwxT") then
xbsm = _d("DlVaFh4DFUJdQA")
end

table.insert(mphh, _d(""))
table.insert(mphh, _d("I0FAHVcrGxFcDlI") .. xbsm)

local iwm = pxa.worldBoss

if iwm and type(iwm.hasWork) == _d("BEFaEQMEHQw") and iwm.enabled and iwm.hasWork() then
table.insert(mphh, _d("KltYFh4DFVgUUx4YDxMOFFYdBB5SC0cUBwdNWhBRRwcaCAFCW1pSHhkBQldbHRsJHRVaHQ"))
end

if mt.lastCatch then
table.insert(mphh, _d("LlVHBlcOExZXXEhX") .. mt.lastCatch)
end
end

if mt.lastMessage then
table.insert(mphh, _d(""))
table.insert(mphh, _d("LFtAF01N") .. mt.lastMessage)
end

return table.concat(mphh, _d("aA"))
end

local function oxxp()
local bt = 0

for bl, ypa in pairs(mt.catches) do
local hcc = fnha.ById[bl]

if not (hcc and hcc.type == _d("AVxRAQM")) then
bt = bt + ypa
end
end

return bt
end

local function bs()
local yjz = {}

for yaj, bikq in pairs(mt.catches) do
local de = fnha.ById[yaj]
local bis = de and de.type == _d("AVxRAQM") or false

table.insert(yjz, {
name = mt.catchName(yaj),
count = bikq,
chest = bis,
rank = bis and (tonumber(de.border) or 1) or 0,
})
end

if #yjz == 0 then
return _d("LFtAGh4DFUJXVQcQBQZCTVEGWWd4NkFGHFcCHEJ1QQYYTTQLR1xSFgMWQkBcF1cZEw5YTVIEGRMQQEdSHwgABxoUOwNNAQNCUQFXBAYRUVgUW00BDRRdBlcOExBGXRcETR0UUUZSGQgKFhRHFwQeGw1aGg")
end

table.sort(yjz, function(altz, eqed)
if altz.chest ~= eqed.chest then
return altz.chest
end

if altz.chest and altz.rank ~= eqed.rank then
return altz.rank > eqed.rank
end

if altz.count ~= eqed.count then
return altz.count > eqed.count
end

return altz.name < eqed.name
end)

local xl = {}

for omm, utb in ipairs(yjz) do
table.insert(xl, utb.name .. _d("Qta05lc") .. fwxc(utb.count))
end

local gj = {
table.concat(xl, _d("aD4")),
_d(""),
_d("NltAExtNEQNBUxoDV1I") .. fwxc(oxxp()) .. _d("QvaDUg") .. #yjz .. _d("Ql9dHBMe"),
}

if mt.lastCatch then
table.insert(gj, _d("LlVHBlcOExZXXEhX") .. tostring(mt.lastCatch))
end

return table.concat(gj, _d("aA"))
end

local qzx = {
rod = Vector3.new(-493, 18, -40254),
bait = Vector3.new(-493, 18, -40254),
}

local function vo(hdmi)
if not ut then
return {}
end

local esth

if hdmi == _d("EFtQ") then
esth = ut.RodsById
elseif hdmi == _d("AFVdBg") then
esth = ut.BaitsById
else
esth = nil
end

local ucmh = {}

for kjqh, dqsj in pairs(esth or {}) do
if not dqsj.crafted then
table.insert(ucmh, {
id = tostring(kjqh),
name = tostring(dqsj.name or kjqh),
cost = tonumber(dqsj.cost) or 0,
luck = tonumber(dqsj.luck) or 0,
index = tonumber(dqsj.index) or 0,
island = dqsj.shop == _d("C0dYExkJ"),
})
end
end

table.sort(ucmh, function(wrb, cpyn)
if wrb.index ~= cpyn.index then
return wrb.index < cpyn.index
end

return wrb.cost < cpyn.cost
end)

return ucmh
end

local function fuca(mwfn)
if mwfn == _d("EFtQ") then
return mt.rodsOwned or {}
elseif mwfn == _d("AFVdBg") then
return mt.baitsOwned or {}
end

return {}
end

local function xnhn(cj)
if cj == _d("EFtQ") then
return mt.rod
elseif cj == _d("AFVdBg") then
return mt.equippedBait
end

return nil
end

local function syc(kp)
local jtyd = fuca(kp)
local eu = nil

for om, kifd in ipairs(vo(kp)) do
if jtyd[kifd.id] == true then
eu = kifd
end
end

if kp == _d("EFtQ") and ut and ut.RodsById then
local jmx = ut.RodsById.rod_secret

if jmx and jtyd.rod_secret == true then
eu = {
id = _d("EFtQLQQIERBRQA"),
name = tostring(jmx.name or _d("J0xXExsEEBdG")),
cost = tonumber(jmx.cost) or 0,
luck = tonumber(jmx.luck) or 0,
index = tonumber(jmx.index) or 0,
island = true,
}
end
end

return eu
end

local function gt(wna)
if wna.island and mt.islandLocked then
return false
end

return true
end

local function akhs(fmi)
local deb = fuca(fmi)
local bv = mt.casts or 0
local ly = nil

for cbz, vc in ipairs(vo(fmi)) do
if deb[vc.id] ~= true and vc.cost <= bv and gt(vc) then
ly = vc
end
end

return ly
end

local function vht(jlax)
local nhbh = fuca(jlax)

for jt, osqm in ipairs(vo(jlax)) do
if nhbh[osqm.id] ~= true and gt(osqm) then
return osqm
end
end

return nil
end

local function qr(wenn, jqzr)
if not jqzr then
return _d("DFtaF1cCBQxRUA")
end

return jqzr.name .. _d("Qhwf") .. tostring(math.floor(jqzr.luck * 100 + 0.5)) .. _d("RxRYBxQGWw")
end

local function pvas()
if not ut then
return _d("JF1HGh4DFSZVQBNXAx0WFFIdAgMWQhkUAR8CAkJQVQYWTQcMVUITHgETAFhRXA")
end

local hav = {}
local ncd = { rod = _d("MFtQ"), bait = _d("IFVdBg") }

for cymc, xid in ipairs({ _d("EFtQ"), _d("AFVdBg") }) do
local fbyj = syc(xid)
local ug = nil

for tysa, jxqd in ipairs(vo(xid)) do
if jxqd.id == xnhn(xid) then
ug = jxqd.name
end
end

if #hav > 0 then
table.insert(hav, _d(""))
end

table.insert(hav, ncd[xid] .. _d("WBQ") .. qr(xid, fbyj))
table.insert(hav, _d("LVoUHBgaSEI") .. (ug or _d("DFtaFw")))

local xlpt = akhs(xid) or vht(xid)

if xlpt then
local ijrk = xlpt.cost - (mt.casts or 0)

table.insert(hav, _d("LFFMBk1N") .. xlpt.name .. _d("QvaDUg") .. fwxc(xlpt.cost) .. _d("QldVAQMe"))

if ijrk > 0 then
table.insert(hav, _d("LFFRFlc") .. fwxc(ijrk) .. _d("QllbABI"))
end
else
table.insert(hav, _d("LFFMBk1NFxRRRgsDBRsMUxQdAAMXBg"))
end
end

table.insert(hav, _d(""))
table.insert(hav, _d("IVVHBgRNBg0URwISAxZYFA") .. fwxc(mt.casts or 0))

if mt.shopMessage then
table.insert(hav, _d(""))
table.insert(hav, mt.shopMessage)
end

return table.concat(hav, _d("aA"))
end

local function jp(zgi, fi)
local iqro = os.clock()

if iqro < (mt.shopCallAt or 0) then
return false, _d("EVhbBQ")
end

mt.shopCallAt = iqro + 1.4

local sqdf, foz, qgj, ycp = pcall(function()
return evk.FishingShop:InvokeServer(zgi, fi)
end)

if not sqdf then
return false, _d("B0ZGHQVN") .. tostring(foz)
end

nch(ycp)

if foz == true then
return true, nil
end

return false, tostring(qgj or _d("EFFSBwQIFg"))
end

function mt.rebirthCardsHeld()
local ncm = ut and type(ut.RebirthCards) == _d("FlVWHhI") and #ut.RebirthCards or 0

if ncm == 0 then
return 0, 0
end

local hjx = 0

for hgsd, jdd in ipairs(ut.RebirthCards) do
if mt.rebirthCards[jdd.cardId] then
hjx = hjx + 1
end
end

return hjx, ncm
end

function mt.rebirthReady()
local cnhl, cb = mt.rebirthCardsHeld()

return cb > 0 and cnhl >= cb and (tonumber(mt.rebirths) or 0) < 1
end

function mt.rebirthText()
local hekg, luhs = mt.rebirthCardsHeld()

if luhs == 0 then
return _d("JF1HGh4DFUJQVQYWTRwNQBQeGAwWB1AYUgQCUhBRVhsFGRpCXUdSAgMTFFVdHhYPHgca")
end

if (tonumber(mt.rebirths) or 0) >= 1 then
return _d("MFFWGwUZGgdQGlIjBRdCdVYTGQkdDFFQUj4eHgNaUFIeHlINRFEcWQ")
end

if hekg >= luhs then
return _d("I1hYUg") .. luhs .. _d("QldVABMeUgRdRxoSCVxCZlETExRSFlsUABIPGxBAXFw")
end

local scj = {}

for rd, hlel in ipairs(ut.RebirthCards) do
if not mt.rebirthCards[hlel.cardId] then
table.insert(scj, (string.gsub(hlel.cardId, _d("PFJdAR8y"), _d(""))))
end
end

return hekg .. _d("TQ") .. luhs .. _d("QldVABMeXEJnQBsbAVIMUVEWVw") .. table.concat(scj, _d("ThQ")) .. _d("TA")
end

local function kw(ry)
local cezs = aqzz.Character
local tbk = cezs and cezs:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not tbk then
return false
end

return (tbk.Position - (qzx[ry] or qzx.rod)).Magnitude <= 26
end

local function iibn(cbo, lb)

if lb and lb.island then
if not mt.shopIsland or not mt.shopIsland.toIsland() then
mt.shopMessage = _d("IVtBHhNNHA1AFAASDBEKFEAaEk0bEVhVHBNNEQ1BWgYSHw")

return false
end

return true
end

if kw(cbo) then
return true
end

local edzj = aqzz.Character
local jumb = edzj and edzj:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not jumb then
return false
end

local gyco = qzx[cbo] or qzx.rod
mt.shopTripUntil = os.clock() + 12
mt.shopHoldUntil = os.clock() + 12

pcall(function()
jumb.CFrame = CFrame.new(gyco)
end)

task.wait(1.2)

return kw(cbo)
end

local function fsf(qdi, njq, qe)
if not qe then
return false
end

if (mt.casts or 0) < qe.cost then
return false
end

if not iibn(qdi, qe) then
mt.shopMessage = _d("IVtBHhNNHA1AFAASDBEKFEAaEk0BCltEUhECAEI") .. qe.name
return false
end

local sl, bnvz = jp(njq, qe.id)

if not sl then
local dec = tostring(bnvz)
local zq = dec:find(_d("NlVYGVcZHUJAXBdXKxsRXFEAGgwc"), 1, true) or dec:find(_d("IFtVBlcpFwNYUQA"), 1, true)

if zq then

mt.shopMessage = _d("NVVYGR4DFUJBRFIDAlIWXFFSFAIHDEBRAFcLHRAU") .. qe.name
return false
end

if bnvz ~= _d("EVhbBQ") then
mt.shopAt = os.clock() + 15
mt.shopMessage = _d("MVFGBBIfUhBRUgcECBZC") .. qe.name .. _d("Qhw") .. dec .. _d("Sw")
end

return false
end

mt.shopMessage = _d("IFtBFR8ZUg") .. qe.name

return true
end

local function zzul(bvg)
local aq = syc(bvg)

if not aq or xnhn(bvg) == aq.id then
return false
end

local xas

if bvg == _d("EFtQ") then
xas = _d("J0VBGwc/HQY")
elseif bvg == _d("AFVdBg") then
xas = _d("J0VBGwcvEwtA")
else
return false
end

local czcd, zwkj = jp(xas, aq.id)

if not czcd then
if zwkj ~= _d("EVhbBQ") then
mt.shopMessage = _d("IVtBHhNNHA1AFBcGGBsSFA") .. aq.name .. _d("Qhw") .. tostring(zwkj) .. _d("Sw")
end

return false
end

if bvg == _d("EFtQ") then
mt.rod = aq.id
elseif bvg == _d("AFVdBg") then
mt.equippedBait = aq.id
else
return false
end

mt.shopMessage = _d("J0VBGwcdFwYU") .. aq.name

return true
end

local function pqfz()
local svu = mt.shop

if os.time() - (mt.lastSync or 0) >= 5 then
jpeo()
end

if svu.equipRod then
zzul(_d("EFtQ"))
end

if svu.equipBait then
zzul(_d("AFVdBg"))
end

if svu.autoBuyRod then
fsf(_d("EFtQ"), _d("IEFNIBgJ"), akhs(_d("EFtQ")))
end

if svu.autoBuyBait then
fsf(_d("AFVdBg"), _d("IEFNMBYEBg"), akhs(_d("AFVdBg")))
end
end

local function fcv()
local ulfl = mt.shop

return ulfl.autoBuyRod or ulfl.autoBuyBait or ulfl.equipRod or ulfl.equipBait
end

mt.shopIsland = {
rods = function()
local sy = ut and ut.RodsById or {}
local fzl = {}

for nqs, sey in pairs(sy) do
if tostring(sey.shop) == _d("C0dYExkJ") then
table.insert(fzl, {
id = tostring(nqs),
name = tostring(sey.name or nqs),
cost = tonumber(sey.cost) or 0,
luck = tonumber(sey.luck) or 0,
index = tonumber(sey.index) or 0,
crafted = sey.crafted == true,
})
end
end

table.sort(fzl, function(fwb, nezq)
return fwb.index < nezq.index
end)

return fzl
end,

angler = function()
local hqql = workspace:FindFirstChild(_d("LGR3AQ"), true)

if not hqql then
return nil
end

for dots, zqj in ipairs(hqql:GetChildren()) do
if zqj:GetAttribute(_d("MVFXABIZMwxTWBcFIyIh")) then
return zqj
end
end

return nil
end,
held = function(dai)
return (mt.rodsOwned or {})[dai] == true
end,
recipeHeld = function(rl)
for bhgu, liqz in ipairs(rl or {}) do
local mety = tonumber((mt.mats or {})[liqz.id]) or 0

if mety < (tonumber(liqz.count) or 0) then
return false
end
end

return true
end,
recipeText = function(ijdf)
local feez = {}

for zx, jap in ipairs(ijdf or {}) do
local tifc = tonumber((mt.mats or {})[jap.id]) or 0
local xapl = (fnha.ById[jap.id] and fnha.ById[jap.id].name) or tostring(jap.id)

table.insert(feez, xapl .. _d("Qg") .. fwxc(tifc) .. _d("TQ") .. fwxc(tonumber(jap.count) or 0))
end

return table.concat(feez, _d("QvaDUg"))
end,

stand = function(rf)
local sa = aqzz.Character
local mixk = sa and sa:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not (mixk and rf) then
return false
end

local nkt = rf:GetPivot()
local xzja = rf:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA")) or rf:FindFirstChildWhichIsA(_d("IFVHFycMABY"), true)
local gm = xzja and (xzja.CFrame * CFrame.new(0, 0, -5)).Position or nil

if not gm then
local knzn = RaycastParams.new()
knzn.FilterType = Enum.RaycastFilterType.Exclude
knzn.FilterDescendantsInstances = { sa, rf }

local zcz = nil
local pkef = math.huge

for bn, qc in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local diw = workspace:Raycast(nkt.Position + qc + Vector3.new(0, 30, 0), Vector3.new(0, -140, 0), knzn)

if diw and tostring(diw.Instance.Name) ~= _d("NVVAFwU") and diw.Position.Y <= nkt.Position.Y + 10 then
local bgl = math.abs(diw.Position.Y - nkt.Position.Y)

if bgl < pkef then
zcz = diw
pkef = bgl
end
end
end

gm = zcz and Vector3.new(zcz.Position.X, zcz.Position.Y + 3.5, zcz.Position.Z) or (nkt.Position + Vector3.new(0, 4, 0))
end

mt.shopTripUntil = os.clock() + 12

mt.islandTripUntil = os.clock() + 12

pcall(function()
mixk.CFrame = CFrame.new(gm)
end)

task.wait(1.2)

return true
end,
atIsland = function()
local sabg = workspace:FindFirstChild(_d("K0dYExkJNAtHXBcFABMMemQx"), true)
local ur = aqzz.Character
local rs = ur and ur:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not (sabg and rs) then
return false
end

return (rs.Position - sabg:GetPivot().Position).Magnitude <= 45
end,
toIsland = function()
if mt.shopIsland.atIsland() then
return true
end

mt.shopTripUntil = os.clock() + 12

if not mt.gotoIsland() then
return false
end

task.wait(1.2)

return mt.shopIsland.atIsland()
end,

craftExcalibur = function()
local lef = mt.shopIsland.angler()

if not lef or mt.shopIsland.held(_d("EFtQLQQIERBRQA")) then
return false
end

if not mt.shopIsland.recipeHeld(ut and ut.SecretRecipe) then
return false
end

mt.shopIsland.stand(lef)

local tiuy, xa = jp(_d("IUZVFAM/HQY"), _d("EFtQLQQIERBRQA"))

if tiuy then
mt.rod = _d("EFtQLQQIERBRQA")
mt.islandMessage = _d("IUZVFAMIFkJAXBdXKAoBVVgbFRgAQkZbFlcMBkJAXBdXJRsGUFEcVywcBVhRAA")
elseif xa ~= _d("EVhbBQ") then
mt.islandMessage = _d("Kl1QFhIDUiNaUx4SH1IQUVIHBAgWQkBcF1coCgFVWBsVGABCHA") .. tostring(xa) .. _d("Sw")
end

return tiuy
end,
craftBoot = function()
if mt.boot.owned or mt.islandLocked then
return false
end

if not mt.shopIsland.recipeHeld(ut and ut.BootRecipe) then
return false
end

if not mt.shopIsland.toIsland() then
mt.islandMessage = _d("IVtBHhNNHA1AFAASDBEKFEAaEk0bEVhVHBNNEQ1BWgYSHw")
return false
end

local msfa, xicf = jp(_d("IUZVFAMvHQ1A"))

if msfa then
mt.boot.owned = true
mt.islandMessage = _d("IUZVFAMIFkJAXBdXIRcFUVoWFh8LQnZbHQM")
elseif xicf ~= _d("EVhbBQ") then
mt.islandMessage = _d("K0dYExkJUiRdRxoSHx8DWhQAEgsHEVFQUgMFF0JWWx0DTVo") .. tostring(xicf) .. _d("Sw")
end

return msfa
end,
best = function()
local otx = mt.rodsOwned or {}
local jmz = nil

for fmg, mxyo in ipairs(mt.shopIsland.rods()) do
if otx[mxyo.id] == true and (jmz == nil or mxyo.luck > jmz.luck) then
jmz = mxyo
end
end

return jmz
end,

equipBoot = function()
if not mt.boot.owned or mt.boot.equipped then
return false
end

local kpdn, azv = jp(_d("J0VBGwcvHQ1A"), true)

if kpdn then
mt.boot.equipped = true
mt.islandMessage = _d("J0VBGwcdFwYUQBoSTT4HU1EcEwwAGxR2HRgZ")
elseif azv ~= _d("EVhbBQ") then
mt.islandMessage = _d("IVtBHhNNHA1AFBcGGBsSFEAaEk0QDVtAUl8") .. tostring(azv) .. _d("Sw")
end

return kpdn
end,
active = function()
local yjnc = mt.island

return yjnc.autoRod or yjnc.autoAcc or yjnc.equipAcc
end,
run = function()
local ja = mt.island

if os.time() - (mt.lastSync or 0) >= 8 then
jpeo()
end

if ja.autoRod then
mt.shopIsland.craftExcalibur()
end

if ja.autoAcc then
mt.shopIsland.craftBoot()
end

if ja.equipAcc then
mt.shopIsland.equipBoot()
end
end,
text = function()
if not ut then
return _d("JF1HGh4DFSZVQBNXAx0WFFIdAgMWQhkUBh8IUgtHWBMZCVIRXFsCVwQBQkFaEwEMGw5VVh4SQw")
end

local dtw = {}
local hl = mt.rodsOwned or {}

table.insert(dtw, mt.islandLocked and _d("I1ZVHBMCHAdQFDsEARMMUBQbBE0eDVdfFxNNX0JGURAeHwYKFFIbBR4GTA") or _d("I1ZVHBMCHAdQFDsEARMMUBQbBE0dElFaXA"))

for xqu, tnuh in ipairs(mt.shopIsland.rods()) do
local iewe

if hl[tnuh.id] == true then
iewe = mt.rod == tnuh.id and _d("DUNaFxNNsNUUWxxXAx0V") or _d("DUNaFxM")
elseif tnuh.crafted then
iewe = _d("Kl1QFhIDUiNaUx4SH1IQUVcbBwg")
else
iewe = fwxc(tnuh.cost) .. _d("QldVAQMe")
end

table.insert(dtw, tnuh.name .. _d("Qta05lc") .. iewe)
end

table.insert(dtw, _d(""))

if hl.rod_secret then
table.insert(dtw, _d("J0xXExsEEBdGDlIYGhwHUA"))
else
local cqab = mt.shopIsland.recipeHeld(ut.SecretRecipe)

table.insert(dtw, _d("J0xXExsEEBdGDlI") .. (cqab and _d("EFFXGwcIUhBRVRYO") or _d("EFFXGwcIUhFcWwAD")))
table.insert(dtw, mt.shopIsland.recipeText(ut.SecretRecipe))
end

table.insert(dtw, _d("Kl1QFhIDUiNaUx4SH0hC") .. (mt.shopIsland.angler() and _d("F0QUHBga") or _d("DFtAUh8IAAc")))
table.insert(dtw, _d(""))

local ap = mt.boot
local iu

if ap.equipped then
iu = _d("LlFTFxkJExBNFDAYAgZYFFEDAgQCElFQ")
elseif ap.owned then
iu = _d("LlFTFxkJExBNFDAYAgZYFFsFGQgW")
elseif mt.shopIsland.recipeHeld(ut.BootRecipe) then
iu = _d("LlFTFxkJExBNFDAYAgZYFEYXFAQCBxRGFxYJCw")
else
iu = _d("LlFTFxkJExBNFDAYAgZYFA") .. mt.shopIsland.recipeText(ut.BootRecipe)
end

table.insert(dtw, iu)
table.insert(dtw, _d("IVVHBgRNBg0URwISAxZYFA") .. fwxc(mt.casts or 0))

if mt.islandMessage then
table.insert(dtw, _d(""))
table.insert(dtw, mt.islandMessage)
end

return table.concat(dtw, _d("aA"))
end,
}

task.spawn(function()
jpeo()
end)

local pat = {
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

getgenv().ACBXAutoBuyHalloween = pat

wdaq(evk.SyncItems.OnClientEvent, function(srdi)
if type(srdi) == _d("FlVWHhI") then
pat.balances = srdi
pat.lastSync = os.time()
end
end)

evk.RequestItemSync:FireServer()

wdaq(evk.RaidShopState.OnClientEvent, function(am)
if type(am) == _d("FlVWHhI") and am.shopId == _d("ClVYHhgaFwda") then
pat.shopState = am
pat.stateAt = os.clock()
end
end)

wdaq(evk.RaidNotify.OnClientEvent, function(npx)
local sk = pat.pending

if not sk or type(npx) ~= _d("EUBGGxkK") then
return
end

if npx:sub(1, 9) == _d("MmFmMT8sISdw") then
pat.purchased[sk.id] = (pat.purchased[sk.id] or 0) + 1
pat.pending = nil
else
if pat.balances[sk.currency] then
pat.balances[sk.currency] = pat.balances[sk.currency] + sk.price
end

pat.failedUntil[sk.id] = os.time() + 5
pat.pending = nil
end
end)

ud.trip = {
untilAt = 0,
lastTry = 0,
lastResult = nil,
spot = nil,
}

function ud.merchant()
local emmh = workspace:FindFirstChild(_d("LGR3AQ"))
local jso = ud.shopData and ud.shopData.NpcName or _d("MkFZAhwEHEJ5UQAUBRMMQA")

return emmh and emmh:FindFirstChild(jso) or nil
end

function ud.stand()
local bhri = ud.merchant()
local cqk = bhri and (bhri:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA")) or bhri:FindFirstChildWhichIsA(_d("IFVHFycMABY")))
local gw = aqzz.Character
local rvb = gw and gw:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not (cqk and rvb) then
return false
end

ud.trip.spot = cqk.Position + Vector3.new(0, 3, 4)
rvb.AssemblyLinearVelocity = Vector3.zero
rvb.CFrame = CFrame.new(ud.trip.spot)

return true
end

function ud.fresh()
return pat.shopState ~= nil and os.clock() - pat.stateAt < 30
end

function ud.guiOpen()
local vzs = hzia:FindFirstChild(_d("KlVYHhgaFwdaZxoYHTUXXQ"))
local vaf = vzs and vzs:FindFirstChild(_d("MVxbAjEfEw9R"))

if vaf then
return vaf.Visible == true
end

for rocq, tlfo in ipairs(hzia:GetChildren()) do
if tlfo:IsA(_d("MVdGFxIDNRdd")) and tlfo.Name:lower():find(_d("ClVYHhgaFwda"), 1, true) and tlfo.Enabled then
return true
end
end

return false
end

function ud.close()
local onf = hzia:FindFirstChild(_d("KlVYHhgaFwdaZxoYHTUXXQ"))
local sdk = onf and onf:FindFirstChild(_d("MVxbAjEfEw9R"))

if not (sdk and sdk.Visible) then
return false
end

local mpi = sdk:FindFirstChild(_d("IVhbARIvBxZAWxw"))

if not mpi then
for sfm, tk in ipairs(sdk:GetDescendants()) do
if tk:IsA(_d("JUFdMAIZBg1a")) and tostring(tk.Name):lower():find(_d("AVhbARI"), 1, true) then
mpi = tk
break
end
end
end

if mpi and type(firesignal) == _d("BEFaEQMEHQw") then
pcall(function()
firesignal(mpi.MouseButton1Click)
end)

task.wait(0.3)

if not sdk.Visible then
return true
end
end

pcall(function()
sdk.Visible = false
end)

return true
end

function ud.spend()
if pat.pending or os.time() - (pat.lastAttempt or 0) < 1 then
return nil
end

local zoha = pat.shopState

for qip, vu in ipairs(ud.shopItems) do
if pat.selected[vu.id] and os.time() >= (pat.failedUntil[vu.id] or 0) then
local thbk = vu.stock
local ctn = pat.purchased[vu.id] or 0

if zoha and zoha.stocks and zoha.stocks[vu.id] then
thbk = zoha.stocks[vu.id]
end

if zoha and zoha.bought then
ctn = math.max(ctn, zoha.bought[vu.id] or 0)
end

local ccy = thbk and (thbk - ctn) or 1
local ke = pat.balances[vu.currency] or 0

if ccy > 0 and ke >= vu.price then
pat.pending = {
id = vu.id,
price = vu.price,
currency = vu.currency,
at = os.time(),
}
pat.lastAttempt = os.time()
pat.balances[vu.currency] = ke - vu.price

pcall(function()
evk.BuyRaidItem:FireServer(vu.id, 1)
end)

return vu.id
end
end
end

return nil
end

function ud.open(ebgm)
if not ebgm and ud.fresh() then
return true
end

if not ebgm and os.clock() < (ud.trip.lastTry or 0) + 8 then
return false
end

ud.trip.lastTry = os.clock()
ud.trip.untilAt = os.clock() + 12

mt.shopTripUntil = os.clock() + 12
mt.shopHoldUntil = os.clock() + 12
mt.phase = _d("C1BYFw")

local vznl = ud.merchant()
local ioqy = vznl and vznl:FindFirstChild(_d("MkZbCh4AGxZNZAAYAAIW"))

if not (vznl and ioqy) then
mt.deepPhase = _d("C1BYFw")
ud.trip.untilAt = os.clock() + 60
ud.trip.lastResult = _d("NlxRUicYHxJfXRxXIBcQV1wTGRlSC0cUHBgZUgtaFAYfBAFCVkEbGwlc")

return false
end

local gthp = os.clock() + 3
local igpi = 0

while os.clock() < gthp do

ud.stand()

if os.clock() >= igpi then
igpi = os.clock() + 0.8

if type(fireproximityprompt) == _d("BEFaEQMEHQw") then
pcall(function()
fireproximityprompt(ioqy)
end)
end

pcall(function()
evk.OpenRaidShop:FireServer(_d("ClVYHhgaFwda"))
end)
end

if ud.guiOpen() or ud.fresh() then
break
end

task.wait(0.1)
end

if not (ud.guiOpen() or ud.fresh()) then

mt.deepPhase = _d("C1BYFw")
ud.trip.untilAt = os.clock() + 60
ud.trip.lastResult = _d("NlxRUhQCBwxAUQBXCRsGFFodA00TDEdDFwVNX0JdQFIYAx4bFFsCEgMBQl1aUgMFF0JHURMEAhwDWBQTBQgTTA")

return false
end

ud.trip.lastResult = _d("IVtBHAMIAEJbRBcZQw")

for xda = 1, 3 do
ud.stand()

if not ud.spend() then
break
end

task.wait(1.2)
end

pcall(ud.close)

mt.deepPhase = _d("C1BYFw")

return true
end

local function qpyo(yya)
yya = math.max(0, math.floor(yya))
local iuv = math.floor(yya / 3600)
local abdt = math.floor((yya % 3600) / 60)
local kqt = yya % 60

if iuv > 0 then
return string.format(_d("R1BcUlJdQAZZ"), iuv, abdt)
elseif abdt > 0 then
return string.format(_d("R1BZUlJdQAZH"), abdt, kqt)
end

return string.format(_d("R1BH"), kqt)
end

local function inta()
local mmk = hzia:FindFirstChild(_d("KlVYHhgaFwdaZxoYHTUXXQ"))
local jcty = mmk and mmk:FindFirstChild(_d("MVxbAjEfEw9R"))
local ats = jcty and jcty:FindFirstChild(_d("K0BRHzsEARY"))
local ibg = {}
local bux = nil

if ats then
for vzn, vixw in ipairs(ud.shopItems) do
local bpza = ats:FindFirstChild(vixw.id)
local fmh = bpza and bpza:FindFirstChild(_d("IFtM"))
local fs = fmh and fmh:FindFirstChild(_d("MUBbERw"))

if fs and fs:IsA(_d("NlFMBjsMEAdY")) then
local jm, yq = fs.Text:match(_d("ShFQWV5IAUgbEQFdRVcGHx0"))

if jm and yq then
ibg[vixw.id] = {
remaining = tonumber(jm),
total = tonumber(yq),
}
end
end
end
end

if jcty then
for ftg, ilu in ipairs(jcty:GetDescendants()) do
if ilu:IsA(_d("NlFMBjsMEAdY")) and ilu.Text:find(_d("EFFHFwMeUgta"), 1, true) then
bux = ilu.Text:match(_d("EFFHFwMeUgtaEQFdRVxJHRA"))
break
end
end
end

return ibg, bux
end

local function lnlr(zckv)
if type(zckv) ~= _d("EUBGGxkK") then
return 0
end

local kqq = tonumber(zckv:match(_d("ShFQWV4F"))) or 0
local tw = tonumber(zckv:match(_d("ShFQWV4A"))) or 0
local th = tonumber(zckv:match(_d("ShFQWV4e"))) or 0
return kqq * 3600 + tw * 60 + th
end

local function ifw()
local eca = pat.shopState
local iuk, jisl = inta()
local jh = {}
local gv = {}
local xw = {}

for tcl, dude in ipairs(ud.shopItems) do
local tgh = dude.stock
local wie = nil

if eca and eca.stocks and eca.stocks[dude.id] then
tgh = eca.stocks[dude.id]
end

local xqkk = pat.purchased[dude.id] or 0

if eca and eca.bought then
xqkk = math.max(xqkk, eca.bought[dude.id] or 0)
end

if tgh then
wie = math.max(0, tgh - xqkk)
end

if (not eca or not eca.bought) and iuk[dude.id] then
wie = iuk[dude.id].remaining
tgh = iuk[dude.id].total
end

local pch = dude.currency == _d("CFVXGSgCLQ5VWgYSHxw") and _d("LlVaBhIfHBE") or _d("IVVaFg4")
local diix

if wie == nil then
diix = dude.shortName
elseif wie <= 0 then
diix = dude.shortName .. _d("QvaDUgQCHgYUWwcD")
else
diix = dude.shortName .. _d("QvaDUg") .. tostring(wie) .. _d("TQ") .. tostring(tgh or _d("XQ"))
end

if not gv[pch] then
gv[pch] = {}
table.insert(xw, pch)
end

table.insert(gv[pch], diix)
end

local pe = {}

for kita, xly in ipairs(xw) do
table.insert(pe, xly)

for plo, fw in ipairs(gv[xly]) do
table.insert(pe, fw)
end
end

table.insert(jh, table.concat(pe, _d("aD4")))
table.insert(jh, _d(""))

if eca and type(eca.resetsIn) == _d("DEFZEBIf") then
local qbhn = eca.resetsIn - (os.clock() - pat.stateAt)
table.insert(jh, _d("MFFHBhgOGREUXRxX") .. qpyo(qbhn))
elseif jisl then
if pat.uiTimerText ~= jisl then
pat.uiTimerText = jisl
pat.uiTimerSeconds = lnlr(jisl)
pat.uiTimerAt = os.clock()
end

local chw = pat.uiTimerSeconds - (os.clock() - pat.uiTimerAt)
table.insert(jh, _d("MFFHBhgOGREUXRxX") .. qpyo(chw))
else
table.insert(jh, _d("MFFHBhgOGREUUBMeAQtC9oNSAQQBC0AUBh8IUhFcWwI"))
end

if not ud.fresh() then
table.insert(jh, ud.trip.lastResult or _d("NlxRUhQCBwxAUQBXBAFCV1gdBAgWQhkUPQcIHEJHXB0HTQUDWF8BVxkaBxRXGhYfEwFAUQBXGAJCQFtSHhlc"))
end

return table.concat(jh, _d("aA"))
end

wdaq(evk.NPCBattleResult.OnClientEvent, function(bnq)
if type(bnq) ~= _d("FlVWHhI") then
return
end

uurn.battlePending = false

if bnq.result == _d("AVtbHhMCBQw") and type(bnq.remaining) == _d("DEFZEBIf") and ik and od then
ni(ik, od, os.time() + bnq.remaining)
return
end

if type(bnq.npcId) == _d("EUBGGxkK") then
local nn = type(bnq.difficulty) == _d("EUBGGxkK") and bnq.difficulty or uurn.activeDifficulty[bnq.npcId] or _d("DFtGHxYB")
local cir = rlxj.ById[bnq.npcId]
local biwu = tonumber(bnq.cooldown) or (cir and cir.cooldown) or 300
ni(bnq.npcId, nn, os.time() + biwu)
end
end)

wdaq(evk.SyncNPCCooldowns.OnClientEvent, function(rvod)
if type(rvod) ~= _d("FlVWHhI") then
return
end

for jf, lep in pairs(rvod) do
if type(jf) == _d("EUBGGxkK") and type(lep) == _d("DEFZEBIf") then
local gko = uurn.activeDifficulty[jf] or _d("DFtGHxYB")
ni(jf, gko, lep)
end
end
end)

local pi = {}
local kvg = {}

for xur, pwi in ipairs(gww.Worlds) do

local ijk = { _d("I1hY") }
local imtq = {}
local moxe = {}
local gjrx = nil

for nf, drzc in ipairs(pwi.npcs or {}) do
local pngj = rlxj.ById[drzc]
if pngj then
table.insert(ijk, pngj.name)
table.insert(moxe, drzc)
imtq[pngj.name] = drzc
if pngj.type == _d("AFVABhsI") then
gjrx = drzc
end
end
end

local thk = pwi.id
if gjrx and ecyy.ById[gjrx] then
thk = ecyy.ById[gjrx].worldId or thk
end

for xwk, cah in ipairs(pwi.npcs or {}) do
kvg[cah] = thk

uurn.bossTeams.worldOf[cah] = pwi.id
end

table.insert(pi, {
id = pwi.id,
teleportWorldId = thk,
name = pwi.name,
options = ijk,
ids = moxe,
byName = imtq,
npcs = pwi.npcs,
})
end

local bji = {}
local lli = {}
local cw = {}

for vp, zmy in ipairs(gww.Difficulties) do
table.insert(bji, zmy.name)
lli[zmy.name] = zmy.id
cw[zmy.id] = zmy.name
end

local bkjw = {}
local aib = {}

for hj, ttma in ipairs(hzke.Difficulties) do
table.insert(bkjw, ttma.name)
aib[ttma.name] = ttma.id
end

local lme = {}
local nyy = {}
local zutd = {}
local oiuw = {
soul_king = _d("MFVdFiACAA5Q"),
beerus = _d("MFVdFiACAA5QazASCAAXRw"),
reid = _d("MFVdFiACAA5QayASBBY"),
}

for mii, wmz in ipairs(hzke.Raids) do
if wmz.BossTitle and wmz.id then
table.insert(lme, wmz.BossTitle)
nyy[wmz.BossTitle] = wmz.id
zutd[wmz.id] = wmz.NpcId
end
end

local function scbo()
for proq, orj in ipairs({ _d("IFVABhsINRdd"), _d("IFVABhsINRddBg") }) do
local jb = hzia:FindFirstChild(orj)
local zdzw = jb and jb:FindFirstChild(_d("IFVABhsIIQFGURcZ"))
if zdzw and zdzw.Visible then
return zdzw
end
end
end

local function qj()
for otf, owsh in ipairs({ _d("IFVABhsINRdd"), _d("IFVABhsINRddBg") }) do
local jyq = hzia:FindFirstChild(owsh)
local uzyh = jyq and jyq:FindFirstChild(_d("IFVABhsIIQFGURcZ"))
if uzyh then
return uzyh
end
end
end

local function vdgv()
if scbo() then
return true
end

for aeyj, rh in ipairs({ _d("IFVABhsINRdd"), _d("IFVABhsINRddBg") }) do
local fpq = hzia:FindFirstChild(rh)
local psx = fpq and fpq:FindFirstChild(_d("Kl1QFzUMBhZYUTACGQYNWg"))
if psx and psx.Visible then
return true
end
end

for rb, nlcm in ipairs({ _d("K1p2EwMZHgc"), _d("K1p2EwMZHgcG") }) do
local syn = hzia:FindFirstChild(nlcm)
if syn and syn:IsA(_d("IFtbHiEMHhdR")) and syn.Value then
return true
end
end

return false
end

function ne.slotFree(ske)

if ske == nil then
return false
end

if not ne.enabled then
return not vdgv()
end

return not ne.busy(ske)
end

function ne.npcSlot()
return ne.roleSlot(_d("DERX"))
end

local hhw

local function tb(dov)
dov = math.max(0, math.floor(dov))
if dov <= 0 then
return _d("EFFVFg4")
end

local hebx = math.floor(dov / 60)
local pt = dov % 60

if hebx > 0 then
return string.format(_d("R1BZUlJdQAZH"), hebx, pt)
end

return string.format(_d("R1BH"), pt)
end

local function hia()
for ty, znu in ipairs({ _d("IFVABhsINRdd"), _d("IFVABhsINRddBg") }) do
local bjrk = hzia:FindFirstChild(znu)
if bjrk then
local ndyx = bjrk:FindFirstChild(_d("MEFaNBsCHRB4VRASAQ"))
local acvy = bjrk:FindFirstChild(_d("NltDFwUrHg1bRj4WDxcO"))
if (ndyx and ndyx.Visible) or (acvy and acvy.Visible) then
return _d("K1oUJhgaFxA")
end
end
end

if vr.currentRoom and (vr.inBattle or vdgv()) then
local aoss = nil

for awqf, rawr in ipairs({ _d("IFVABhsINRdd"), _d("IFVABhsINRddBg") }) do
local bov = hzia:FindFirstChild(rawr)
local ev = bov and bov:FindFirstChild(_d("IFVABhsIIQFGURcZ"))
local xykn = ev and ev:FindFirstChild(_d("J1pRHw4sERZdQhc0DAAG"))
local si = xykn and xykn:FindFirstChild(_d("LFVZFzsMEAdY"))

if si and si.Text ~= _d("") then
aoss = si.Text
break
end
end

if aoss then
return _d("IFVABhsEHAUU") .. aoss .. _d("Qm9mHRgAUg") .. vr.currentRoom .. _d("Pw")
end

return _d("IFVABhsEHAUUbyAYAh9C") .. vr.currentRoom .. _d("Pw")
end

local golr = qj()
if vdgv() and golr then
local zfbb = golr:FindFirstChild(_d("J1pRHw4sERZdQhc0DAAG"))
local iy = zfbb and zfbb:FindFirstChild(_d("LFVZFzsMEAdY"))
local sjya = iy and iy.Text

local dbaf = nil
if uurn.currentBattle then
dbaf = uurn.currentBattle.difficulty
elseif sjya then
local aed = mla[sjya]
if aed then
dbaf = uurn.activeDifficulty[aed]
end
end

local le = _d("")
if dbaf then
le = _d("Qm8") .. (cw[dbaf] or dbaf) .. _d("Pw")
end

local esh = sjya
if uurn.currentBattle and uurn.currentBattle.npcId then
local jsc = rlxj.ById[uurn.currentBattle.npcId]
if jsc then
esh = jsc.name
end
end

if esh and esh ~= _d("") then
return _d("IFVABhsEHAUU") .. esh .. le
end

return _d("IFVABhsEHAU") .. le
end

uurn.currentBattle = nil

local whti = pxa.enabled and (pxa.bossFor(1) or pxa.bossFor(2))

if whti then
local jcc = wtba:FindFirstChild(_d("MFVdFiQZExZBRw"))

if jcc then
local zojy = whti
local hyvz = hzke.ById[zojy]
local prh = hyvz and hyvz.BossTitle or zojy
local lc = jcc:GetAttribute(_d("K0d7AhID")) == true or jcc:GetAttribute(_d("JFtGERIJ")) == true
local hw = jcc:GetAttribute(_d("MFFVFg4y") .. zojy) == true
local eub = pxa.progress[zojy]
local xd = eub and eub.locked == true

if not lc then
local lgu = tonumber(jcc:GetAttribute(_d("IVxVHBAIASNA"))) or 0
return _d("K1BYF1dAUg") .. prh .. _d("QmZVGxNXUg") .. tb(lgu - os.time())
end

if eub and eub.cooldowns then
local bdtu = tonumber(eub.cooldowns.normal)

if bdtu and bdtu > 0 then
return _d("K1BYF1dAUg") .. prh .. _d("QmZVGxNXUg") .. tb(bdtu)
end
end

if not hw or xd then
return _d("K1BYF1dAUg") .. prh .. _d("QmZVGxNXUg5bVxkSCQ")
end

return _d("K1BYF1dAUg") .. prh .. _d("QmZVGxNXUhBRVRYO")
end
end

if mt.enabled then
if mt.usingGameAuto then
return _d("JF1HGh4DFUIZFBUWABdCVUEGGE1a") .. fwxc(oxxp()) .. _d("QldVBxAFBks")
end

if mt.phase == _d("AVVHBh4DFQ") then
return _d("JF1HGh4DFUIZFBEWHgYLWlM")
end

if mt.phase == _d("FVVdBh4DFSBdQBc") then
return _d("JF1HGh4DFUIZFAUWBAYLWlNSEQIAQlUUEB4ZFw")
end

if mt.phase == _d("EFFRHh4DFQ") or mt.phase == _d("EFFHHRsbGwxT") then
return _d("JF1HGh4DFUIZFAASCB4LWlNSGAMXQl1a")
end

return _d("JF1HGh4DFUIZFBsTARdCHA") .. fwxc(oxxp()) .. _d("QldVBxAFBks")
end

if not uurn.enabled and not uurn.story then
return _d("K1BYFw")
end

local rn, guc, pzwx = hhw()

if rn then
local xrr = rlxj.ById[rn]
local erbk = xrr and xrr.name or rn
local fcu = (guc or 0) - os.time()
local la = cw[pzwx] or pzwx or _d("LFtGHxYB")

return _d("K1BYF1dAUixRTAZNTQ") .. erbk .. _d("Qm8") .. la .. _d("PxQc") .. tb(fcu) .. _d("Sw")
end

return _d("K1BYFw")
end

local function kolr(bvso)
local ybh = workspace:FindFirstChild(_d("LGR3AQ"))
if not ybh then
return nil
end

for fu, hzq in ipairs(ybh:GetChildren()) do
if hzq:GetAttribute(_d("LGR3OxM")) == bvso then
return hzq
end
end

return nil
end

local function tv(vkn)
local okj = aqzz.Character
local af = okj and okj:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))
if not (af and vkn) then
return false
end

local dpcl, ymd = pcall(function()
return vkn:GetPivot()
end)
if not dpcl then
return false
end

local bpok = ymd.Position + ymd.LookVector * 6 + Vector3.new(0, 3, 0)
local xx = Vector3.new(ymd.Position.X, bpok.Y, ymd.Position.Z)

af.CFrame = CFrame.lookAt(bpok, xx)
return true
end

local function xnl()
local thlt = aqzz:FindFirstChild(_d("MlhVCxIfIQFGXQIDHg"))
local uqrg = thlt and thlt:FindFirstChild(_d("MlhVCxIfPw1QQR4S"))

if not uqrg then
return nil
end

local ul, vge = pcall(require, uqrg)
if not ul then
return nil
end

local gsar, ss = pcall(function()
return vge:GetControls()
end)

if gsar then
return ss
end
end

local function alx(ddg, epsh, drea, xu, mgvf)
xu = xu or 8

local function mqb()
return epsh and epsh()
end

local kjn = os.clock()

while os.clock() - kjn < 5 do
if mqb() then
return false
end

if aqzz.Character and aqzz.Character:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA")) then
break
end
task.wait(0.2)
end

local vkkq = aqzz.Character
local mhq = vkkq and vkkq:FindFirstChildOfClass(_d("KkFZExkCGwY"))
local oke = vkkq and vkkq:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not (mhq and oke) then
return false
end

if (oke.Position - ddg).Magnitude <= xu then
return true
end

local po = drea or mhq.WalkSpeed
local vvgb = xnl()
local dcmi = mhq.JumpPower
local ydq = mhq.UseJumpPower

if mgvf then
pcall(function()
mhq.UseJumpPower = true
mhq.JumpPower = math.max(dcmi, 60)
end)
end

if vvgb then
pcall(function()
vvgb:Disable()
end)
end

local cpi = mhq:FindFirstChildOfClass(_d("I1pdHxYZHRA"))
local dmk = nil
local gu = vkkq:FindFirstChild(_d("I1pdHxYZFw"))
local taka = gu and (gu:FindFirstChild(_d("NVVYGTYDGw8"), true) or gu:FindFirstChild(_d("MEFaMxkEHw"), true))

if cpi and taka then
local psaq, fnpy = pcall(function()
return cpi:LoadAnimation(taka)
end)

if psaq and fnpy then
dmk = fnpy
dmk.Looped = true
dmk.Priority = Enum.AnimationPriority.Movement
pcall(function()
dmk:Play()
end)
end
end

local function yg(st)
oke.AssemblyLinearVelocity = Vector3.new(0, oke.AssemblyLinearVelocity.Y, 0)

if dmk then
pcall(function()
dmk:Stop(0.1)
end)
end

if vvgb then
pcall(function()
vvgb:Enable()
end)
end

if mgvf then
pcall(function()
mhq.JumpPower = dcmi
mhq.UseJumpPower = ydq
end)
end

return st
end

local function tdga(idae, qor)
local dxkj = os.clock()
local we = os.clock()
local eovu = 0
local opx = oke.Position

while os.clock() - dxkj < qor do
if mqb() then
return false
end

local oi = idae - oke.Position
oi = Vector3.new(oi.X, 0, oi.Z)

if oi.Magnitude <= 3 then
return true
end

local fxi = oi.Unit
oke.AssemblyLinearVelocity = Vector3.new(
fxi.X * po,
oke.AssemblyLinearVelocity.Y,
fxi.Z * po
)

if mgvf and os.clock() - we >= 0.5 then
local wswj = (oke.Position - opx).Magnitude
local gl = mhq:GetState()
local uacs = gl ~= Enum.HumanoidStateType.Jumping and gl ~= Enum.HumanoidStateType.Freefall

if wswj < 1.5 and uacs and os.clock() - eovu >= 0.8 then
mhq.Jump = true
eovu = os.clock()
end

opx = oke.Position
we = os.clock()
end

task.wait()
end

return false
end

local wsv = xyhh:CreatePath({
AgentRadius = 2.5,
AgentHeight = 5,
AgentCanJump = true,
WaypointSpacing = 8,
})

local yqb = pcall(function()
wsv:ComputeAsync(oke.Position, ddg)
end)

if yqb and wsv.Status == Enum.PathStatus.Success then
for xnq, rg in ipairs(wsv:GetWaypoints()) do
if mqb() then
return yg(false)
end

if (oke.Position - ddg).Magnitude <= xu then
break
end

if not tdga(rg.Position, 10) and mqb() then
return yg(false)
end
end
end

if mqb() then
return yg(false)
end

local sgd = tdga(ddg, 15)
return yg(sgd)
end

local function co(rwkj, sf, xxsi)
return alx(rwkj, xxsi, sf)
end
getgenv().ACBXWalkCancel = false
getgenv().ACBXWalkToPositionWithSpeed = function(dtlt, cvi)
return co(dtlt, cvi, function()
return getgenv().ACBXWalkCancel == true
end)
end

local function fdys()
if uurn.story then
return { uurn.storyDifficulty }
end

return uurn.difficulties
end

local function jxn()
local ewqx = {}

if uurn.story then
for nyb, cczl in ipairs(pi) do
for bgha, gypv in ipairs(cczl.ids) do
table.insert(ewqx, gypv)
end

if cczl.id == _d("C0dRGRYE") then
break
end
end

return ewqx
end

local ysd = {}

for zy, npkb in ipairs(pi) do
local rkbh = uurn.selectedByWorld[npkb.name]

if rkbh then
for sxvw, asx in ipairs(rkbh) do
if not ysd[asx] then
ysd[asx] = true
table.insert(ewqx, asx)
end
end
end
end

return ewqx
end

hhw = function()
local nt = nil
local knng = nil
local wkk = nil

for wagw, mjyl in ipairs(jxn()) do
local wauk = uurn.unlocked[mjyl]

for tjjw, mwi in ipairs(fdys()) do
if not wauk or wauk[mwi] ~= false then
local uug = bmls(mjyl, mwi)

if not wkk or uug < wkk then
nt = mjyl
knng = mwi
wkk = uug
end
end
end
end

return nt, wkk, knng
end

local function kki(tt)
if type(tt) ~= _d("EUBGGxkK") then
return nil
end

local eo = tonumber(tt:match(_d("ShFQWV4F")))
local yxyk = tonumber(tt:match(_d("ShFQWV4A")))
local uto = tonumber(tt:match(_d("ShFQWV4e")))

if not eo and not yxyk and not uto then
return nil
end

return (eo or 0) * 3600 + (yxyk or 0) * 60 + (uto or 0)
end

local function vyxk()
local wre = workspace:FindFirstChild(_d("LGR3AQ"))
if not wre then
return
end

for xp, tdwe in ipairs(wre:GetChildren()) do
local iib = tdwe:GetAttribute(_d("LGR3OxM"))
if type(iib) == _d("EUBGGxkK") then
local xg = tdwe:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))
local fb = xg and xg:FindFirstChild(_d("LGR3MRgCHgZbQxw1BB4OVlsTBQk"))
local cq = fb and fb:FindFirstChild(_d("Nl1ZFwUhEwBRWA"))

local kmh = uurn.activeDifficulty[iib] or _d("DFtGHxYB")

if fb and cq then
local nahs = kki(cq.Text)
if nahs and nahs > 0 then
local eabz = os.time() + nahs
if eabz > bmls(iib, kmh) then
ni(iib, kmh, eabz)
end
end
else
ni(iib, kmh, 0)
end
end
end
end

local function et(yavb)
local vgv = {}

for gh, qerg in ipairs(getconnections(evk.OpenNPCDialog.OnClientEvent)) do
if qerg.Enabled then
qerg:Disable()
table.insert(vgv, qerg)
end
end

local hm = false
local ymia
ymia = wdaq(evk.OpenNPCDialog.OnClientEvent, function(ojw, en, uu, rqw)
if ojw ~= yavb or type(rqw) ~= _d("FlVWHhI") or type(rqw.cooldowns) ~= _d("FlVWHhI") then
return
end

for oip, yt in pairs(rqw.cooldowns) do
if type(oip) == _d("EUBGGxkK") and type(yt) == _d("DEFZEBIf") then
ni(yavb, oip, yt > 0 and (os.time() + yt) or 0)
end
end

if type(rqw.unlocked) == _d("FlVWHhI") then
uurn.unlocked[yavb] = rqw.unlocked
end

hm = true
end)

evk.OpenNPCDialog:FireServer(yavb)

local oim = os.clock()
while not hm and os.clock() - oim < 1.5 do
task.wait(0.05)
end

ymia:Disconnect()

for grix, sog in ipairs(vgv) do
sog:Enable()
end

if hm then
uurn.lastFetch[yavb] = os.time()
end

return hm
end

vyxk()

local mgn = false
local jpd = {}

local function uf(zlf)
mgn = zlf

local ti = hzia:FindFirstChild(_d("IVVGFjgdFww"))
if not ti then
return
end

local re = ti:FindFirstChild(_d("IVVGFjgdFww"))

if zlf then
if re then
jpd = getconnections(re.Event)
for aka, qg in ipairs(jpd) do
if qg.Enabled then
qg:Disable()
end
end
end

ti.Enabled = false

local up = hzia:FindFirstChild(_d("NltDFwU/FxFBWAYwGBs"))
if up then
local qjrl = up:FindFirstChild(_d("MFFHBxsZNBBVWRc"))
if qjrl then
qjrl.Visible = false
end

local vw = up:FindFirstChild(_d("JVFaFwUMBgtaUzQFDB8H"))
if vw then
vw.Visible = false
end
end
else
for xqry, vkaw in ipairs(jpd) do
if not vkaw.Enabled then
vkaw:Enable()
end
end

jpd = {}
ti.Enabled = true
end
end

getgenv().ACBXSetAutoCloseGeneration = uf

local nmu

for qze = 1, 3 do
local vmbv, bled = pcall(function()
return game:HttpGet(_d("CkBAAgRXXU1TXQYfGBBMV1sfWA8bBVNVEBgUQFMGGz8WDh4LVhsAEgEXA0dRAVgBExZRRwZYCR0VWlgdFgldD1VXHh4PXBZMQA"))
end)

if vmbv and type(bled) == _d("EUBGGxkK") and #bled > 20000 then
nmu = bled
break
end

warn(_d("OXV3MC8wUi9VVz4eD1IEUUARH00TFkBRHwcZUg") .. qze .. _d("QlJVGxsIFlgU") .. tostring(bled))
task.wait(2)
end

if not nmu then
warn(_d("OXV3MC8wUi9VVz4eD1IBW0EeE00cDUAUEBJNHg1VUBcTTV9CR0AdBx0bDFMUARhNBgpRFBwSFQZCUUwXFBgGBxRHBhYfBhEUVx4SDBxM"))
return
end

local aix, mk = nmu:gsub(
_d("IVtaBhIDBjJGWwQeCRcQDmQAEgEdA1B1AQ4DEUccVQEECAYuXUcGUkQ"),
_d("FlVHGVkeAgNDWloRGBwBQF0dGUVbQndbHAMIHBZkRh0BBBYHRg4iBQgeDVVQMwQUHAEcVQEECAYuXUcGXk0XDFAd"),
1
)

local lwqk = loadstring(aix)()

getgenv().ACBXMacLibPreloadPatch = mk > 0

if type(lwqk) ~= _d("FlVWHhI") then
warn(_d("OXV3MC8wUi9VVz4eD1IGXVBSGQIGQkZRBgIfHEJVFB4eDwADRk1SWk0BFltEAh4DFUJHW1IDBRdCWlEKA00XGlFXBwMIUhFAVQADHlIBWFETGUM"))
return
end

do
local vgde = gethui and gethui() or game:GetService(_d("IVtGFzAYGw"))

for jk, ndgz in ipairs(vgde:GetChildren()) do
local db = ndgz:IsA(_d("MVdGFxIDNRdd")) and ndgz:FindFirstChild(_d("IFVHFw"))

if db and db:FindFirstChild(_d("MV1QFxUMAA")) and db:FindFirstChild(_d("IVtaBhIDBg")) then
pcall(function()
ndgz:Destroy()
end)
end
end
end

do
local al = os.clock() + 20

while not jq and os.clock() < al do
task.wait(0.05)
end
end

local torj = lwqk:Window({
Title = dya,

Subtitle = _d("IXYUOgIPUkpC") .. tostring(game.PlaceVersion) .. _d("Sw"),
Size = UDim2.fromOffset(720, 500),
DragStyle = 1,
DisabledWindowControls = {},
ShowUserInfo = false,
Keybind = Enum.KeyCode.Comma,
AcrylicBlur = true,
})

getgenv().ACBXMacLib = lwqk

do
local ttob = _d("I3d2UiUIEAtGQBo")

pcall(function()
lwqk.Folder = ttob
end)

pcall(function()
if isfolder and makefolder and not isfolder(ttob) then
makefolder(ttob)
end

if isfolder and makefolder and not isfolder(ttob .. _d("TUdRBgMEHAVH")) then
makefolder(ttob .. _d("TUdRBgMEHAVH"))
end
end)

pcall(function()
if lwqk.SetFolder then
lwqk:SetFolder(ttob)
end
end)
end

torj:GlobalSetting({
Name = _d("LFtAGxEEEQNAXR0ZHg"),
Default = true,
Callback = function(rgbe)
torj:SetNotificationsState(rgbe)
end,
})

torj:GlobalSetting({
Name = _d("MVxbBVc4AQdGFDsZCx0"),
Default = false,
Callback = function(tgjx)
torj:SetUserInfoState(tgjx)
end,
})

torj:GlobalSetting({
Name = _d("I1pAG1cmGwFf"),
Default = true,
Callback = function(gjvf)
pckx.enabled = gjvf
pckx.nextAt = os.clock() + 300
end,
})

torj:GlobalSetting({
Name = _d("I0FAHVc9GwFfFCcHTSEWXVcZ"),
Default = false,
Callback = function(juux)
mt.stick.enabled = juux
mt.stick.at = 0
mt.stick.last = juux and _d("DltbGR4DFUJSWwBXDFIRQF0RHA") or _d("DVJS")
end,
})

torj:GlobalSetting({
Name = _d("I0FAHVc4AgZVQBc"),
Default = true,
Callback = function(fg)
uws.enabled = fg

if not fg then
uws.pendingVersion = nil
uws.pendingSince = nil
end
end,
})

torj:SetAcrylicBlurState(true)
torj:SetNotificationsState(true)
torj:SetUserInfoState(false)

do
local euzw = game:GetService(_d("IVtGFzAYGw"))

pcall(function()
if type(gethui) == _d("BEFaEQMEHQw") then
euzw = gethui()
end
end)

local hh = euzw:FindFirstChild(_d("IXZ8BxUvEwZTUQ"))

if hh then
hh:Destroy()
end

local pzv = Instance.new(_d("MVdGFxIDNRdd"))
pzv.Name = _d("IXZ8BxUvEwZTUQ")
pzv.ResetOnSpawn = false
pzv.IgnoreGuiInset = true
pzv.DisplayOrder = 2147483647
pzv.Parent = euzw

local owa = Instance.new(_d("NlFMBjUYBhZbWg"))
owa.Name = _d("IEFABhgD")
owa.Size = UDim2.fromOffset(56, 56)

owa.AnchorPoint = Vector2.new(0, 0.5)
owa.Position = UDim2.new(1, -64, 0.5, 58)
owa.BackgroundColor3 = Color3.fromRGB(30, 92, 235)
owa.BorderSizePixel = 0
owa.AutoButtonColor = false
owa.Text = _d("")
owa.Parent = pzv

local akgr = Instance.new(_d("N313HQUDFxA"))
akgr.CornerRadius = UDim.new(0, 14)
akgr.Parent = owa

local onb = Instance.new(_d("N31nBgUCGQc"))
onb.Color = Color3.fromRGB(255, 255, 255)
onb.Thickness = 3
onb.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
onb.Parent = owa

local er = Instance.new(_d("NlFMBjsMEAdY"))
er.Size = UDim2.fromScale(1, 1)
er.BackgroundTransparency = 1
er.Font = Enum.Font.GothamBlack
er.TextSize = 16
er.TextColor3 = Color3.fromRGB(255, 255, 255)
er.Text = _d("IXY+OiIv")
er.TextStrokeTransparency = 0.5
er.Parent = owa

local function cjqi()
local qtz = pzv.AbsoluteSize
local ic = pzv.AbsolutePosition

return UDim2.fromOffset(
qtz.X - ic.X - owa.Size.X.Offset - 8,
(qtz.Y / 2) - ic.Y
)
end

task.defer(function()
owa.Position = cjqi()

local wck = workspace.CurrentCamera

if wck then
wdaq(wck:GetPropertyChangedSignal(_d("NF1RBQcCABZnXQgS")), function()
owa.Position = cjqi()
end)
end
end)

getgenv().ACBXBadge = pzv

local vzp = false
local myv = false
local ttiv = nil
local fpej = nil

wdaq(owa.InputBegan, function(ovkr)
if ovkr.UserInputType ~= Enum.UserInputType.MouseButton1 and ovkr.UserInputType ~= Enum.UserInputType.Touch then
return
end

vzp = true
myv = false
ttiv = ovkr.Position
fpej = owa.Position
end)

wdaq(owa.InputEnded, function(igxr)
if igxr.UserInputType ~= Enum.UserInputType.MouseButton1 and igxr.UserInputType ~= Enum.UserInputType.Touch then
return
end

vzp = false
end)

wdaq(owa.MouseButton1Click, function()
if myv then
myv = false
return
end

torj:SetState(not torj:GetState())
end)

wdaq(game:GetService(_d("N0dRAD4DAhdAZxcFGxsBUQ")).InputChanged, function(nbr)
if not vzp then
return
end

if nbr.UserInputType ~= Enum.UserInputType.MouseMovement and nbr.UserInputType ~= Enum.UserInputType.Touch then
return
end

local vvbe = nbr.Position - ttiv

if math.abs(vvbe.X) > 6 or math.abs(vvbe.Y) > 6 then
myv = true
end

owa.Position = UDim2.new(
fpej.X.Scale,
fpej.X.Offset + vvbe.X,
fpej.Y.Scale,
fpej.Y.Offset + vvbe.Y
)
end)
end

local yl = true

local zgek = (getgenv().ACBXRunId or 0) + 1
getgenv().ACBXRunId = zgek

local function ha()
return yl and getgenv().ACBXRunId == zgek
end

local function uou()
local ig = math.max(0, math.floor(tonumber(workspace.DistributedGameTime) or 0))
local pvd = math.floor(ig / 3600)
local cbfo = math.floor((ig % 3600) / 60)

if pvd > 0 then
return pvd .. _d("ChQ") .. string.format(_d("RwQGFho"), cbfo)
end

return cbfo .. _d("Dw")
end

do
local afso = _d("IXYUOgIPUkpC") .. tostring(game.PlaceVersion) .. _d("Sw")

task.spawn(function()
local htv = nil

while ha() do
local eh = afso .. _d("QvaDUgIdUg") .. uou()

if eh ~= htv then
htv = eh

pcall(function()
torj:UpdateSubtitle(eh)
end)
end

task.wait(5)
end
end)
end

torj.onUnloaded(function()
yl = false
gtxa.save()

local ccoc = getgenv().ACBXBadge

if ccoc then
pcall(function()
ccoc:Destroy()
end)
getgenv().ACBXBadge = nil
end

if mt.enabled then
tnt()
end

if py then
pcall(function()
py:Disconnect()
end)
end
end)

task.spawn(function()
while ha() do
vyxk()
task.wait(2)
end
end)

task.spawn(function()
while ha() do

local pcqa = mt.enabled
and (mt.deepZone or mt.tpToBay)
and pxa.worldBoss ~= nil
and type(pxa.worldBoss.holdsFishing) == _d("BEFaEQMEHQw")
and pxa.worldBoss.holdsFishing() == true

local hiq = pcqa
or (uurn.workPending and uurn.workPending())
or ne.prioBlocks(_d("FVVAFwU"))

if mt.enabled and mt.deepZone and not hiq then
mzo.cycle()
end

if mt.enabled then
if mt.phase ~= _d("C1BYFw") and os.clock() >= mt.watchdogAt then
mt.phase = _d("C1BYFw")
mt.nextCastAt = os.clock() + 1
end

if mt.autoUnlocked and not mt.usingGameAuto and not mt.perfectCasts then
tkj()
end

if mt.phase ~= _d("C1BYFw") and (mt.watchdogAt or 0) > 0
and os.clock() > mt.watchdogAt then
mt.phase = _d("C1BYFw")
mt.nextCastAt = 0
mt.lastMessage = _d("IVVHBlcZGw9RUFIYGAZCGRQGBRQbDFMUExAMGww")
end

if mt.phase == _d("C1BYFw") and os.clock() >= mt.nextCastAt
and os.clock() >= math.max(mt.shopTripUntil or 0, mt.tpHoldUntil or 0)
and not mt.usingGameAuto
and not mzo.walking
and (not mt.deepZone or mzo.current() ~= nil)
and not hiq then
if not mt.deepZone and mt.tpToBay and not pk() then
oxt()
end

if not rtl() then
task.wait(4)
end
end

if not hiq and os.clock() >= math.max(mt.shopTripUntil or 0, mt.tpHoldUntil or 0) then
if (mt.totalCasts or 0) ~= (mt.castMark or 0) then
mt.castMark = mt.totalCasts
mt.castMarkAt = os.clock()
elseif (mt.castMarkAt or 0) > 0
and os.clock() - (mt.castMarkAt or 0) > 45 then
pcall(mt.recover)
end
else
mt.castMark = mt.totalCasts
mt.castMarkAt = os.clock()
end

if os.time() - mt.lastSync >= 20 then
jpeo()
end
end

task.wait(0.5)
end
end)

local cllk

task.spawn(function()
local aqic = ifw()

while ha() do
local nofc = ifw()

if nofc ~= aqic then
aqic = nofc
pcall(function()
cllk:UpdateBody(nofc)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while ha() do
if pat.enabled then

if os.clock() >= (ud.trip.untilAt or 0) then
ud.open()
end

local elu = pat.pending

if elu and os.time() - elu.at > 5 then

pat.failedUntil[elu.id] = os.time() + 30
pat.pending = nil
evk.RequestItemSync:FireServer()
end

if os.time() - pat.lastSync >= 20 then
pat.lastSync = os.time()
evk.RequestItemSync:FireServer()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
local zim = ud.text()

while ha() do
local xdjx = ud.text()

if xdjx ~= zim and ud.paragraph then
zim = xdjx

pcall(function()
ud.paragraph:UpdateBody(xdjx)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while ha() do

if ud.upgrade.balance == nil or os.time() - ud.upgrade.lastRequest >= 20 then
ud.request()
end

if ud.run.highest == nil and os.time() - ud.run.lastRequest >= 5 then
ud.requestProgress()
end

if ud.upgrade.enabled then
ud.buy()

if ud.upgrade.waiting and os.time() - ud.upgrade.lastBuy >= 5 then

ud.upgrade.waiting = false
ud.request()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
while ha() do
local ncg = ud.run

if ncg.enabled then
if ncg.highest == nil or os.time() - ncg.lastRequest >= 20 then
ud.requestProgress()
end

local ezgv = ncg.inBattle and os.time() < ncg.inBattleUntil

if not ezgv and ne.halloweenSlot() ~= nil
and ne.slotFree(ne.halloweenSlot() or 1)

and (not oqnx.enabled or ne.towerSlot() ~= 1)
and (not yi.island or ne.enabled)
and (not vr.enabled or ne.enabled)
and not (ncg.pending and os.time() < ncg.pendingUntil) then
if ud.bestRoom() then
ud.startRun()
elseif ncg.highest ~= nil then

ncg.enabled = false

pcall(function()
ud.runToggle:UpdateState(false)
end)

pcall(function()
torj:Dialog({
Title = _d("I0FAHVclEw5YWwUSCBxCYFsFEh8"),
Description = _d("J0JRAA5NOgNYWB0ACBcMFGAdAAgAQkdAExAIUgtHFBEbCBMQUVBSFgEAB1VQC1tNAQ0UQBoSHxdCXUdSGQIGCl1aFVcBFwRAFAYYTQAXWho"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
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

local xnfy = torj:TabGroup()

local du = xnfy:Tab({
Name = _d("L1VdHA"),
Image = _d("EFZMEwQeFxZdUEhYQkNQDAJBR1lKVwwFRk9aSg"),
})

local so = xnfy:Tab({
Name = _d("NltDFwVNVEJgURMa"),
Image = _d("EFZMEwQeFxZdUEhYQkNSAgFCTlRLUQEBREZaQw"),
})

task.spawn(function()
local hxwj = 0
local ujh = 0

local qsm = 0

while ha() do
local ahzk = mt.rebirthText()

if mt.rebirthParagraph and ahzk ~= mt.rebirthShown then
mt.rebirthShown = ahzk

pcall(function()
mt.rebirthParagraph:UpdateBody(ahzk)
end)
end

if os.clock() >= qsm then
qsm = os.clock() + 20

local ecdq = yi.remotes and yi.remotes.request

if ecdq then
pcall(function()
ecdq:FireServer()
end)
end
end

local aht = yi.buffText()

if yi.islandParagraph and aht ~= yi.buffShown then
yi.buffShown = aht

pcall(function()
yi.islandParagraph:UpdateBody(aht)
end)
end

if mt.autoRebirth then
if os.clock() - hxwj > 15 then
hxwj = os.clock()
jpeo()
end

if mt.rebirthReady() and os.clock() >= ujh then
local gzhe = workspace:FindFirstChild(_d("L1VTGxQMHkJ2Wx0c"), true)

if gzhe then
tv(gzhe)
task.wait(0.8)
end

local kzxu, jkx = jp(_d("MFFWGwUZGg"))

if kzxu then
mt.autoRebirth = false

pcall(function()
mt.rebirthToggle:UpdateState(false)
end)

torj:Notify({
Title = _d("MFFWGwUZGg"),
Description = _d("MFFWGwUZGgdQGlIjBRdCdVYTGQkdDFFQUj4eHgNaUFIeHlINRFEcWQ"),
Lifetime = 6,
})
elseif jkx ~= _d("EVhbBQ") then
ujh = os.clock() + 20

torj:Notify({
Title = _d("MFFWGwUZGg"),
Description = _d("MFFWGwUZGkJGURQCHhcGDhQ") .. tostring(jkx),
Lifetime = 6,
})
end
end
end

task.wait(3)
end
end)

local okbd = xnfy:Tab({
Name = _d("JF1HGh4DFQ"),
Image = _d("EFZMEwQeFxZdUEhYQkNTAAFHQlxGUAECRENeQw"),
})

local hibg = xnfy:Tab({
Name = _d("Jl1TFR4DFQ"),
Image = _d(""),
})

local lnvg = xnfy:Tab({
Name = _d("J0JRHAMe"),
Image = _d("EFZMEwQeFxZdUEhYQkNQAQRDRVtHUgANRU9VQQ"),
})

local vtk = okbd:Section({
Side = _d("LlFSBg"),
})

vtk:Header({
Name = _d("JF1HGh4DFULEq/zU"),
})

local zp

local function io(jcuz)
mt.enabled = jcuz
mt.phase = _d("C1BYFw")
mt.nextCastAt = 0
mt.castMark = mt.totalCasts
mt.castMarkAt = os.clock()

if not jcuz then
tnt()
return
end

task.spawn(function()
if not fhi() then
torj:Notify({
Title = _d("I0FAHVcrGxFc"),
Description = _d("LFsUFB4eGgtaU1IFAhZCXVpSAwUXQlZVERwdEwFfGg"),
Lifetime = 5,
})
end

if mt.tpToBay and not pk() then
oxt()
end

jpeo()

if mt.autoUnlocked and not mt.perfectCasts then
tkj()
end
end)
end

local lptm = false

local function geg()
if mt.tpToBay or mt.deepZone then
if mt.autoFishWanted then

mt.autoFishWanted = false

pcall(function()
zp:UpdateState(true)
end)

if not mt.enabled then
io(true)
end
end

return true
end

if mt.enabled then

mt.autoFishWanted = true

io(false)

if not lptm then
torj:Dialog({
Title = _d("I0FAHVcrGxFcFB0RCw"),
Description = _d("K0AUHBIIFhEUVVIEHR0WFEAdVwsbEVwUEwNNX0JAQQAZTR0MFGAiVxkdQnZVC1cCAEJVFDYSCAJCY1UGEh8BQkdDGwMOGkw"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})
end
end

return false
end

zp = vtk:Toggle({
Name = _d("I0FAHVcrGxFc"),
Default = false,
Callback = function(qs)
if qs and yql then
pcall(function()
zp:UpdateState(false)
end)

if not lptm then
torj:Dialog({
Title = _d("I0FAHVcrGxFcFBsETQIDRl8XEw"),
Description = _d("I0FAHVcpGwUUXBMETQYKURQBHwIEB1gUGxlNGgNaUFxXOQcQWhQzAhkdQnBdFVcCFAQUVRwTTTMXQFtSMQQBChRHBhYfBhEUWh0FABMOWE1c"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})
end

return
end

if qs and not (mt.tpToBay or mt.deepZone) then

pcall(function()
zp:UpdateState(false)
end)

mt.autoFishWanted = true

if not lptm then
torj:Dialog({
Title = _d("I0FAHVcrGxFcFBwSCBYRFFVSBB0dFg"),
Description = _d("NkFGHFcCHEJgZFIDAlIgVU1SGB9SAxRwFxIdUjVVQBcFHlIRQ10GFAVSBF1GAQNNX0J1QQYYTTQLR1xSBBkTEEBHUhUUUgtARxcbC1IDRxQBGAIcQlVHUhgDF0JbUlIDBRcPFF0BVwIcTA"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})
end

return
end

mt.autoFishWanted = false

io(qs)
end,
}, _d("A0FAHSgLGxFc"))

mt.autoFishToggle = zp

vtk:Toggle({
Name = _d("MlFGFBIOBkJXVQEDHlJKTAZSGxgRCR0"),
Default = true,
Callback = function(eqly)
mt.perfectCasts = eqly

if eqly and mt.usingGameAuto then
tnt()
end
end,
}, _d("ElFGFBIOBj1XVQEDHi0aBmseAg4Z"))

vtk:Toggle({
Name = _d("NmQUBhhNMANN"),
Default = false,
Callback = function(cyeg)
mt.tpToBay = cyeg

geg()
end,
}, _d("FkRrBhgyEANN"))

local sg
local zjsu

sg = vtk:Toggle({
Name = _d("NlFYFwcCABYUQB1XKRcHRFEBA00lA0BRAA"),
Default = false,
Callback = function(dkgg)
if dkgg then

mt.deepWalk = false
mt.deepDiveAt = 0
mt.deepPhase = _d("C1BYFw")
mt.deepStageAt = 0

pcall(function()
zjsu:UpdateState(false)
end)

mt.deepZone = true

task.spawn(function()
if not mzo.settle() and mt.deepZone and not mt.deepWalk then
torj:Notify({
Title = _d("NlFYFwcCABYUQB1XKRcHRFEBA00lA0BRAA"),
Description = _d("NlxRUhMIFxIZQxMDCABCWVUCVwMXFFFGUhsCEwZRUFxXOQcQWhQGHwhSEUNdBhQFUg1SUlIWAxZCW1pSFgoTC1oUBhhNAAdARgtZ"),
Lifetime = 8,
})
end
end)

geg()

return
end

if mt.deepWalk then
return
end

mt.deepZone = false
mt.deepDiveAt = 0
mt.deepPhase = _d("C1BYFw")
mt.deepStageAt = 0

task.spawn(function()
pcall(function()
evk.TeleportToWorld:FireServer(_d("DltWEA4"))
end)
end)

geg()
end,
}, _d("BlFRAigaExZRRi0VCAEWa1gHFAY"))

zjsu = vtk:Toggle({
Name = _d("NVVYGVcZHUJwURcHCAEWFGMTAwgA"),
Default = false,
Callback = function(vjqo)
if vjqo then

local pcw = mzo.customIsland or mzo.islandOf(mzo.spot())

if mt.islandLocked and pcw == _d("A1ZVHBMCHAdQaxsEARMMUA") then
mt.deepWalk = false

pcall(function()
zjsu:UpdateState(false)
end)

torj:Dialog({
Title = _d("NVVYGVcZHUJwURcHCAEWFGMTAwgAQlpRFxMeUhZcUVI2DxMMUFscEglSK0dYExkJ"),
Description = _d("NlxRUh4eHgNaUFIeHlIOW1cZEglSDVoUBh8EAUJVVxEYGBwWGhQ9GQhSEFFWGwUZGkJbRBcZHlILQBRfVxgcFl1YUgMFFwwUQBoSTRUDWVFSHwwBQlpbUgMIHgdEWwADTQYKUUYXVxkdQkBVGRJD"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})

return
end

mt.deepWalk = true
mt.deepDiveAt = 0
mt.deepPhase = _d("C1BYFw")
mt.deepStageAt = 0

pcall(function()
sg:UpdateState(false)
end)

mt.deepZone = true

task.spawn(function()
mzo.walk()
end)

geg()

return
end

if not mt.deepWalk then
return
end

mt.deepWalk = false
mt.deepZone = false
mt.deepDiveAt = 0
mt.deepPhase = _d("C1BYFw")
mt.deepStageAt = 0

task.spawn(function()
pcall(function()
evk.TeleportToWorld:FireServer(_d("DltWEA4"))
end)
end)

geg()
end,
}, _d("FVVYGSgJFwdEawUWGRcQ"))

vtk:Paragraph({
Header = _d("JlFRAhIeBkJjVQYSHw"),
Body = _d("IFtAGlceBQtAVxoSHlIOVVoWVwIcQkBcF1c6GwxQWRsbAVIrR1gXVwkdAV8UX1cZGgcUUBcSHRcRQBQAHgMVThRjGxkJBQNGUFIgDAYHRkdSWk0BDRRABwUDGwxTFB0ZCFINWhQUBQIfQlVaCwAFFxBRFBsZTQYKURQVFgAXQlZGGxkKAUJNWwdXDxMBXxQGGE0GClVAUgQdHRYaPnggDB4JFFcdAQgAERRAGhJNHgNHQFIEGQAHQFcaVwIcQlJbHQNNBQtAXFIDBRdCU1UfEkoBQltDHFcMHAtZVQYeAhxZFGAXGwgCDUZAUgcYBhEUTR0CTQYKUUYXVxobFlxbBwNNBgpRFAUWARlMFGAdVwUdDlAUE1cJGwRSUQASAwZCR0QdA00bDEdAFxYJXkJGQRxXLDEgbHAXEh0lA0BRAFkOExJAQQASRVtCXVpSAwUXQldbHAQCHgcUQxoeARdCR0ATGQkbDFMUHRlNGxYa"),
})

local ga

ga = vtk:Paragraph({
Header = _d("JF1HGh4DFUJHQBMDCA"),
Body = dlq(),
})

local kr = lnvg:Section({
Side = _d("LlFSBg"),
})

kr:Header({
Name = _d("I0FAHVclEw5YWwUSCBxCYFsFEh+C/bq3gujL9Q"),
})

ud.runToggle = kr:Toggle({
Name = _d("I0FAHVclEw5YWwUSCBxCYFsFEh8"),
Default = false,
Callback = function(kpq)
ud.run.enabled = kpq
ud.run.pending = false
ud.run.pendingUntil = 0

if kpq then
ud.requestProgress()
end
end,
}, _d("A0FAHSgFEw5YWwUSCBw9QFsFEh8"))

ud.run.team = math.clamp(math.floor(tonumber(uurn.bossTeams.towerPicked.halloween) or 1), 1, 4)
ud.run.teamChosen = tonumber(uurn.bossTeams.towerPicked.halloween) ~= nil
ud.run.building = true

ud.run.teamDropdown = kr:Dropdown({
Name = _d("NlFVHw"),
Search = false,
Multi = false,
Required = false,
Default = ud.run.team,
Options = { _d("NlFVH1dc"), _d("NlFVH1df"), _d("NlFVH1de"), _d("NlFVH1dZ") },
Callback = function(tkun)
local fk = type(tkun) == _d("FlVWHhI") and tkun[1] or tkun
local fhsv = type(fk) == _d("EUBGGxkK") and tonumber(fk:match(_d("ShFQWV4"))) or nil

if not fhsv then
return
end

ud.run.team = fhsv

if ud.run.building then
return
end

ud.run.teamChosen = true
uurn.bossTeams.towerPicked.halloween = fhsv
uurn.bossTeams.save()

pcall(function()
ud.run.teamDropdown:UpdateName(_d("NlFVH1eP8sAU") .. (fk or (_d("NlFVH1c") .. tostring(fhsv))))
end)
end,
}, _d("FlFVHygFEw5YWwUSCBw"))

pcall(function()
ud.run.teamDropdown:UpdateSelection(_d("NlFVH1c") .. tostring(ud.run.team))
ud.run.teamDropdown:UpdateName(_d("NlFVH1eP8sAUYBcWAFI") .. tostring(ud.run.team))
end)

ud.run.building = false

ud.toggle = kr:Toggle({
Name = _d("I0FAHVcYAgVGVRYSHg"),
Default = false,
Callback = function(decf)
if decf and not next(ud.upgrade.selected) then
ud.upgrade.enabled = false

pcall(function()
ud.toggle:UpdateState(false)
end)

torj:Dialog({
Title = _d("I0FAHVcYAgVGVRYSHg"),
Description = _d("Ml1XGVcMBkJYURMEGVINWlFSBxgfEl9dHFcYAgVGVRYSTRsMFEAaEk0WEFtEFhgaHEJSXQAEGVJPFHUHAwJSF0RTABYJFxEURwISAxYRFE0dAh9SKFVXGVcCVUJ4VRwDCAAMRxQdGU0GClFZUhYeUhFbWxxXDAFCTVsHVw4TDBRVFBECAAYUWxwSQw"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})

return
end

ud.upgrade.enabled = decf

if decf then
ud.request()
end
end,
}, _d("A0FAHSgYAgVGVRYSHg"))

kr:Dropdown({
Name = _d("MkFZAhwEHEJBRBUFDBYHRw"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = ud.labels,
Callback = function(iex)
local ius = {}

if type(iex) == _d("FlVWHhI") then
for yooz, wdu in ipairs(ud.upgrades) do
if iex[wdu.name] then
ius[wdu.id] = true
end
end
end

ud.upgrade.selected = ius

if not next(ius) and ud.upgrade.enabled then
ud.upgrade.enabled = false

pcall(function()
ud.toggle:UpdateState(false)
end)

torj:Dialog({
Title = _d("I0FAHVcYAgVGVRYSHlINUlI"),
Description = _d("LFtAGh4DFUJdR1IECB4HV0AXE00cDUMYUgQCUhZcUQASTRsRFFodAwUbDFMUHhILBkJAW1IVGAtMFGQbFAZSA1oUBwcKAANQUVIWAxZCQEEAGU0bFhRWExQGUg1aGg"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})
end
end,
}, _d("EkFZAhwEHD1BRBUFDBYHRw"))

ud.paragraph = kr:Paragraph({
Header = _d("MkFZAhwEHBE"),
Body = ud.text(),
})

local aext = lnvg:Section({
Side = _d("LlFSBg"),
})

aext:Header({
Name = _d("KlVYHhgaFwdaFAEfAgKSq7vYh/Lg4g"),
})

aext:Toggle({
Name = _d("I0FAHVcvBxs"),
Default = false,
Callback = function(rhht)
pat.enabled = rhht
pat.pending = nil

if rhht then
evk.RequestItemSync:FireServer()
task.spawn(function()
ud.open(true)
end)
end
end,
}, _d("A0FAHSgPBxs"))

aext:Button({
Name = _d("LURRHFceGg1E"),
Callback = function()
task.spawn(function()
local dzyc = ud.open(true)

torj:Notify({
Title = _d("KlVYHhgaFwdaFAEfAgI"),
Description = dzyc and _d("IVtBHAMIAEJbRBcZTV9CUFUbGxRSEUBbERxNAAdVUFIRHx0PFEAaEk0BB0ZCFwVD") or tostring(ud.trip.lastResult),
Lifetime = 6,
})

if cllk then
pcall(function()
cllk:UpdateBody(ifw())
end)
end
end)
end,
})

aext:Dropdown({
Name = _d("K0BRHwQ"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = ud.shopLabels,
Callback = function(inz)
local swx = {}

if type(inz) == _d("FlVWHhI") then
for esln, smb in ipairs(ud.shopItems) do
if inz[smb.label] then
swx[smb.id] = true
end
end
end

pat.selected = swx
end,
}, _d("C0BRHwQ"))

cllk = aext:Paragraph({
Header = _d("MUBbERxNVEJGUQESGQ"),
Body = ifw(),
})

local bu = lnvg:Section({
Side = _d("MF1TGgM"),
})

bu:Paragraph({
Header = _d("MVFVARgDEw4UUQQSAwYR"),
Body = _d("KlVYHhgaFwdaFBsETR4LQlFIVxkaBxRHGhgdUgNaUFIDBRdCYFsFEh9SAFtAGlcaHRBfGnh9LAcWWxQ6FgEeDUNRFxlNJg1DUQBXHgYDRkABVxQdF0YUFhIIAgdHQFICAx4NV18XE00ADVtZXFcuHgdVRhsZClIRQFUVEh5SElVNAVcnEwFfFB1QTT4DWkAXBQMBThRVHBNNMxdAW1ICHRUQVVAXBE0BElFaFgRNBgpRWVIYA1ISUUYfFgMXDEAUBhgaFxAUVgcRCwFM"),
})

pxa.worldBoss.section = lnvg:Section({
Side = _d("MF1TGgM"),
})

pxa.worldBoss.section:Header({
Name = _d("I0FAHVcqHg1WVR5XLx0RRw"),
})

pxa.worldBoss.section:Paragraph({
Header = _d("MkZdHQUEBhs"),
Body = _d("MFVaGQRNBQtAXFIDBRdCRlUbEx5IQkBcF1cZHRVRRlIEGRMMUEdSEwIFDBRSHQVNGxYYFBMZCVIjQUAdVyMiIRRbBwMfEwxfR1IeGVxoPmAaEk0UC1NcBlcZEwlRR1IWTQEOW0BeVx4dQl1AUhQCBwxAR1IWHlIDWhQ8Jy5SAFVABhsIUhZcUQASQw"),
})

pxa.worldBoss.toggle = pxa.worldBoss.section:Toggle({
Name = _d("I0FAHVcqHg1WVR5XLx0RRw"),
Default = false,
Callback = function(jip)
if jip and not pxa.worldBoss.teamChosen then
pxa.worldBoss.enabled = false

pcall(function()
pxa.worldBoss.toggle:UpdateState(false)
end)

torj:Dialog({
Title = _d("I0FAHVcqHg1WVR5XLx0RRxQcEggWERRVUgMIEw8"),
Description = _d("Ml1XGVcZGgcUQBcWAFILQBQBHwIHDlAUFB4KGhYUQxsDBVILWhQGHwhSNlFVH1cJAA1EUB0AA1IEXUYBA0NSNlxRUgQOAAtEQFIfDAFCQFtSBBobFldcUgMFExYURx4YGVURFEAXFgBSAFFSHQUIUhZcUVIRBBUKQBQBAwwAFkcYUhYDFkJgURMaTUNCXUdSGAMeGxRAGhJNFgdSVQcbGVJPFF0GVwQBQlpbBlcMUgFcWxsUCFIXWkAbG00LDUEUHxYGF0JdQFw"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})

return
end

if jip then
local wjc = pxa.worldBoss.team
local mnmi = uurn.bossTeams.teamCards(wjc)

if mnmi == 0 then
pxa.worldBoss.enabled = false

pcall(function()
pxa.worldBoss.toggle:UpdateState(false)
end)

torj:Dialog({
Title = _d("NlFVH1c") .. tostring(wjc) .. _d("QlxVAVcDHUJXVQATHg"),
Description = _d("MkFAUhYZUg5RVQEDTR0MURQRFh8WQl1aUiMIEw8U") .. tostring(wjc) .. _d("QhxwFxQGAUsYFB0FTQILV19SFk0GB1VZUgMFExYUVR4FCBMGTRQaFh5SAVVGFgRNGwwUQBoSTSYHVVlSEx8dElBbBRlBUhZcURxXGQcQWhQzAhkdQnNYHRUMHkJ2WwEETRADV19SGANc"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})

return
end
end

pxa.worldBoss.enabled = jip
pxa.worldBoss.holdUntil = 0

pxa.worldBoss.nextFightAt = 0

if not jip then
pxa.worldBoss.setRepeat(false)
end

if jip then

pxa.worldBoss.syncedAt = 0
pxa.worldBoss.askedAt = 0
pxa.worldBoss.chainWaitAt = nil
pxa.worldBoss.repeatSeeded = false
pxa.worldBoss.seenKills = nil
pxa.worldBoss.progressAt = os.clock()
pxa.worldBoss.kickAt = 0
end
end,
}, _d("A0FAHSgKHg1WVR4oDx0RRw"))

pxa.worldBoss.claimToggle = pxa.worldBoss.section:Toggle({
Name = _d("I0FAHVcOHgNdWVIFCAUDRlAB"),
Default = false,
Callback = function(qihy)
pxa.worldBoss.autoClaim = qihy
pxa.worldBoss.claimAt = 0

if qihy then
pxa.worldBoss.syncedAt = 0
pxa.worldBoss.askedAt = 0
pxa.worldBoss.chainWaitAt = nil
end
end,
}, _d("A0FAHSgOHgNdWS0FCAUDRlAB"))

pxa.worldBoss.fullToggle = pxa.worldBoss.section:Toggle({
Name = _d("MUBbAlcaGgdaFAYfCFIAVUZSEQQeDkc"),
Default = false,
Callback = function(eotg)
pxa.worldBoss.stopAtFull = eotg
pxa.worldBoss.meterAt = 0
end,
}, _d("FVZrAQMCAj1VQC0RGB4O"))

pxa.worldBoss.walkToggle = pxa.worldBoss.section:Toggle({
Name = _d("NVVYGVcZHUJTWB0VDB5CVlsBBA"),
Default = false,
Callback = function(ijf)
pxa.worldBoss.walkToBoss = ijf

pxa.worldBoss.travelUntil = 0
end,
}, _d("FVZrBRYBGT1AWy0VAgER"))

pxa.worldBoss.bodyParagraph = pxa.worldBoss.section:Paragraph({
Header = _d("IFtHAQ"),
Body = pxa.worldBoss.bodyText(),
})

pxa.worldBoss.section:Header({
Name = _d("IFtHAVceGg1EFILo4+2NjLs"),
})

pxa.worldBoss.shopParagraph = pxa.worldBoss.section:Paragraph({
Header = _d("K1oUAQMCEQk"),
Body = pxa.worldBoss.shopText(),
})

pxa.worldBoss.itemsDropdown = pxa.worldBoss.section:Dropdown({
Name = _d("K0BRHwQ"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = pxa.worldBoss.shopOptions(),
Callback = function(arr)
local yiz = {}

if type(arr) == _d("FlVWHhI") then
for yavi, bq in pairs(arr) do
local bgbj = pxa.worldBoss.labelToId[yavi]

if bq and bgbj then
yiz[bgbj] = true
end
end
end

pxa.worldBoss.selected = yiz

if not next(yiz) and pxa.worldBoss.autoBuy then
pxa.worldBoss.autoBuy = false

pcall(function()
pxa.worldBoss.shopToggle:UpdateState(false)
end)
end
end,
}, _d("C0BRHwQyQA"))

pxa.worldBoss.shopToggle = pxa.worldBoss.section:Toggle({
Name = _d("I0FAHVcPBxs"),
Default = false,
Callback = function(ahq)
if ahq and not next(pxa.worldBoss.selected) then
pxa.worldBoss.autoBuy = false

pcall(function()
pxa.worldBoss.shopToggle:UpdateState(false)
end)

torj:Dialog({
Title = _d("I0FAHVcPBxs"),
Description = _d("Ml1XGVcMBkJYURMEGVINWlFSHhkXDxRdHFckBgdZR1IRBAARQBRfVywHFlsUEAIUUhFEURwTHlIwUVBSJQQQAFtaUjoIFgNYR1IYA1IVXFUGEhsXEBRdBlcOEwwUVRQRAgAGFFIAGABSFlxVBlcBGxFAGg"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})

return
end

pxa.worldBoss.autoBuy = ahq
end,
}, _d("A0FAHSgPBxtrBg"))

pxa.worldBoss.section:Button({
Name = _d("IEFNUgQIHgdXQBcT"),
Callback = function()
if not next(pxa.worldBoss.selected) then
torj:Dialog({
Title = _d("IEFNUgQIHgdXQBcT"),
Description = _d("Ml1XGVcMBkJYURMEGVINWlFSHhkXDxRdHFckBgdZR1IRBAARQBo"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})

return
end

local ukz = pxa.worldBoss.buy()

if ukz == 0 then
torj:Dialog({
Title = _d("IEFNUgQIHgdXQBcT"),
Description = _d("LFtAGh4DFUJDVQFXDx0XU1wGTU0cDRRZFxMMHhEUQB1XHgIHWlBeVwgEB0ZNUgcEEQkUXQFXAgcWFFsUVx4GDVdfXlcCAEJAXBdXDx0RRxQBHwICQlxVAVcDHRYURwsZDhcGFE0XA0M"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})
end
end,
})

pxa.worldBoss.building = true

pxa.worldBoss.teamDropdown = pxa.worldBoss.section:Dropdown({
Name = _d("NlFVHw"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("NlFVH1dc"), _d("NlFVH1df"), _d("NlFVH1de"), _d("NlFVH1dZ") },
Callback = function(jym)
if pxa.worldBoss.building then
return
end

local unan = type(jym) == _d("FlVWHhI") and jym[1] or jym
local oodt = type(unan) == _d("EUBGGxkK") and tonumber(unan:match(_d("ShFQWV4"))) or nil

if oodt then
pxa.worldBoss.team = oodt
pxa.worldBoss.teamChosen = true
uurn.bossTeams.save()
end

pcall(function()
pxa.worldBoss.teamDropdown:UpdateName(_d("NlFVH1eP8sAU") .. (unan or _d("NlFVH1dc")))
end)
end,
}, _d("FlFVHw"))

pcall(function()
pxa.worldBoss.teamDropdown:UpdateSelection(_d("NlFVH1c") .. tostring(pxa.worldBoss.team))
pxa.worldBoss.teamDropdown:UpdateName(_d("NlFVH1eP8sAUYBcWAFI") .. tostring(pxa.worldBoss.team))
end)

task.defer(function()
pxa.worldBoss.building = false
end)

pxa.misc = pxa.misc or {}

pxa.misc.expeditions = {
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
rewardPath = _d("I3d2KlgIChJRUBsDBB0MRxoYBAIc"),
module = nil,
action = nil,
section = nil,
paragraph = nil,
claimToggle = nil,
startToggle = nil,
dropdown = nil,
}

function pxa.misc.expeditions.data()
local wk = pxa.misc.expeditions

if wk.module ~= nil then
return wk.module or nil
end

local ky, mru = pcall(function()
return require(wtba.ModuleScripts.ExpeditionData)
end)

wk.module = ky and mru or false

return wk.module or nil
end

function pxa.misc.expeditions.tiers()
local ids = pxa.misc.expeditions.data()

return ids and ids.Tiers or {}
end

function pxa.misc.expeditions.remote()
local hwuy = pxa.misc.expeditions

if hwuy.action and hwuy.action.Parent then
return hwuy.action
end

hwuy.action = mkay(_d("J0xEFxMEBgtbWjMUGRsNWg"), 3)

return hwuy.action
end

function pxa.misc.expeditions.clockText(vqnx)
local hhi = pxa.misc.expeditions.data()

if hhi and type(hhi.formatDuration) == _d("BEFaEQMEHQw") then
return hhi.formatDuration(vqnx)
end

local icjk = math.max(0, math.floor((vqnx or 0) / 60))

return tostring(icjk) .. _d("Dw")
end

function pxa.misc.expeditions.status(dud)
local lcfn = pxa.misc.expeditions
local ggur = lcfn.state
local qpg = type(ggur) == _d("FlVWHhI") and type(ggur.active) == _d("FlVWHhI") and ggur.active[dud] or nil

if type(qpg) ~= _d("FlVWHhI") then
return _d("A0JVGxsMEA5R"), nil
end

local krn = (tonumber(qpg.endsAt) or 0) - (os.time() + (lcfn.offset or 0))

if krn <= 0 then
return _d("EFFVFg4"), krn
end

return _d("EEFaHB4DFQ"), krn
end

function pxa.misc.expeditions.candidates(ls)
local ery = pxa.misc.expeditions
local hogt = ery.data()
local zyy = ery.state
local vzc = hogt and hogt.ById and hogt.ById[ls]
local wc = {}

if not (vzc and type(zyy) == _d("FlVWHhI") and type(zyy.eligible) == _d("FlVWHhI")) then
return wc
end

for jlph, nuqu in ipairs(zyy.eligible) do
if type(nuqu) == _d("FlVWHhI") and nuqu.cardId then
local jdla = tonumber(nuqu.rarity) or 0
local oe = (tonumber(nuqu.count) or 0) - (tonumber(nuqu.locked) or 0)

if jdla >= (tonumber(vzc.minRarity) or 0) and oe > 0 then

table.insert(wc, { cardId = nuqu.cardId, borderLevel = nuqu.borderLevel, rarity = jdla, count = oe })
end
end
end

table.sort(wc, function(ya, tlc)
if ya.rarity == tlc.rarity then
return tostring(ya.cardId) < tostring(tlc.cardId)
end

return ya.rarity < tlc.rarity
end)

return wc
end

function pxa.misc.expeditions.cards(baqu, tcs)
local tvlc = pxa.misc.expeditions
local enfi = tvlc.data()
local knyu = enfi and tonumber(enfi.CardsPerExpedition) or 4
local bmn = {}
local ju = tvlc.candidates(baqu)

tcs = tcs or {}

local function infq(zbs, ppuq)
local colu = tostring(zbs.cardId) .. _d("QQ") .. tostring(zbs.borderLevel)

while #bmn < knyu and (tcs[colu] or 0) < ppuq do
tcs[colu] = (tcs[colu] or 0) + 1

table.insert(bmn, { cardId = zbs.cardId, borderLevel = zbs.borderLevel })
end
end

for wej, pq in ipairs(ju) do
if #bmn >= knyu then
break
end

if pq.count > 1 then
infq(pq, pq.count - 1)
end
end

if #bmn < knyu then
for peed, oma in ipairs(ju) do
if #bmn >= knyu then
break
end

infq(oma, oma.count)
end
end

return bmn
end

function pxa.misc.expeditions.available(pcp)
local smlw = pxa.misc.expeditions
local lckw = smlw.data()
local dcx = lckw and tonumber(lckw.CardsPerExpedition) or 4
local ujv = 0

for dukj, tixo in ipairs(smlw.candidates(pcp)) do
ujv = ujv + tixo.count

if ujv >= dcx then
return dcx
end
end

return ujv
end

function pxa.misc.expeditions.text()
local wefq = pxa.misc.expeditions

if type(wefq.state) ~= _d("FlVWHhI") then
return _d("MFFVFh4DFUJRTAISCRsWXVscBENcTA")
end

local lg = wefq.data()
local iyjl = lg and tonumber(lg.CardsPerExpedition) or 4
local wsy = {}

for snk, ziuw in ipairs(wefq.tiers()) do
local kx, pcsc = wefq.status(ziuw.id)
local mx = tostring(ziuw.name)

if wefq.tiersWanted[ziuw.id] then
mx = _d("gLSWUg") .. mx
end

if kx == _d("EEFaHB4DFQ") then
mx = mx .. _d("aGZRBgIfHBEUXRxX") .. wefq.clockText(pcsc)
elseif kx == _d("EFFVFg4") then
mx = mx .. _d("aGZRExMUUhZbFBEbDBsP")
else
local cqw = wefq.available(ziuw.id)
mx = mx .. _d("aA") .. tostring(cqw) .. _d("QltSUg") .. tostring(iyjl) .. _d("QldVABMe")

if cqw >= iyjl then
mx = mx .. _d("aHdVHFceBgNGQA")
end
end

table.insert(wsy, mx)
end

table.insert(wsy, _d("J0JRAA5NFhdEWBsUDAYHFF0BVx4XDEAUEBILHRBRFBNXDhMQUBQLGBhSCltYFlcCHAcUWxRbTRMMUBQdGQhSAVtEC1cCFEJVFBEWHxZCXUdSHAgCFhRWExQGUhVcUQASTQYKURQGHggAQldVHFceAgNGUVIeGVJPFFVSGwIcBxRXHQcUUg1aWAtXCh0HRxQdAhlSFVxRHFcZGgcUQBsSH1IBVVocGBlSAFEUFB4BHgdQFAUeGRoNQUBSHhlc"))

return table.concat(wsy, _d("aD4"))
end

function pxa.misc.expeditions.request()
local yf = pxa.misc.expeditions
local njkw = yf.remote()

if njkw then
pcall(function()
njkw:FireServer(_d("EFFFBxIeBg"))
end)
end

yf.askedAt = os.clock()
end

function pxa.misc.expeditions.claim()
local bf = pxa.misc.expeditions

if os.clock() < bf.claimAt then
return false
end

local pca = false

for pxj, xykv in ipairs(bf.tiers()) do
if bf.status(xykv.id) == _d("EFFVFg4") then
pca = true
break
end
end

if not pca then
return false
end

local il = bf.remote()

if not il then
return false
end

pcall(function()
il:FireServer(_d("AVhVGxosHg4"))
end)

bf.claimAt = os.clock() + 3
bf.askedAt = 0

return true
end

function pxa.misc.expeditions.popup()
local esk = hzia:FindFirstChild(_d("J0xEFxMEBgtbWjUCBA"))

return esk and esk:FindFirstChild(_d("IVhVGxo9HRJBRA")) or nil
end

function pxa.misc.expeditions.closeRewards()
local twwe = pxa.misc.expeditions
local jz = twwe.popup()

if not (jz and jz.Visible) then
return false
end

local lf = jz:FindFirstChild(_d("LV92BwMZHQw"))

if lf and type(firesignal) == _d("BEFaEQMEHQw") then
pcall(firesignal, lf.Activated)
end

pcall(function()
jz.Visible = false
end)

return true
end

function pxa.misc.expeditions.rewardsText()
local fya = pxa.misc.expeditions

if #fya.rewardLog == 0 then
return _d("LFtAGh4DFUJXWBMeABcGFE0XA0NSJ0JRAA5NAgNNWwcDTQYKURQBEh8EB0YUARIDFhEUWBMZCQFCXFEAEk0FC0BcUh4ZAUJAXRcFTRMMUBQbAx5SAVtaBhIDBhEa")
end

local tyqg = {}

for ott, hne in ipairs(fya.rewardLog) do
local md = {}
local wcbg = hne.items or {}

for qtco, pvnp in ipairs(wcbg) do
if qtco > 4 then
table.insert(md, _d("SQ") .. tostring(#wcbg - 4) .. _d("QllbABI"))
break
end

local xff = pvnp.id or pvnp.itemId
local lw = xff and fnha.ById[xff] or nil
local wrxc = (lw and lw.name) or (pvnp.potions and _d("MltAGxgDAQ")) or tostring(xff or _d("EFFDEwUJ"))

table.insert(md, wrxc .. _d("Qkw") .. tostring(pvnp.count or pvnp.max or pvnp.min or 1))
end

local lnm = math.max(0, os.time() - (tonumber(hne.at) or os.time()))
local wkgn

if lnm < 60 then
wkgn = tostring(lnm) .. _d("ERRVFRg")
elseif lnm < 3600 then
wkgn = tostring(math.floor(lnm / 60)) .. _d("DxRVFRg")
else
wkgn = tostring(math.floor(lnm / 3600)) .. _d("ChRVFRg")
end

table.insert(tyqg, tostring(hne.title) .. _d("QvaDUg") .. wkgn)
table.insert(tyqg, table.concat(md, _d("ThQ")))
end

return table.concat(tyqg, _d("aA"))
end

function pxa.misc.expeditions.saveRewards()
local ter = pxa.misc.expeditions

if type(writefile) ~= _d("BEFaEQMEHQw") then
return false
end

return pcall(function()
if type(makefolder) == _d("BEFaEQMEHQw") and type(isfolder) == _d("BEFaEQMEHQw") and not isfolder(_d("I3d2Kg")) then
makefolder(_d("I3d2Kg"))
end

writefile(ter.rewardPath, game:GetService(_d("KkBAAiQIABRdVxc")):JSONEncode({
rewards = ter.rewardLog,
updatedAt = os.time(),
}))
end)
end

function pxa.misc.expeditions.loadRewards()
local pxu = pxa.misc.expeditions

if type(readfile) ~= _d("BEFaEQMEHQw") or type(isfile) ~= _d("BEFaEQMEHQw") then
return false
end

local ixsh, wwj = pcall(function()
if not isfile(pxu.rewardPath) then
return nil
end

return readfile(pxu.rewardPath)
end)

if not ixsh or type(wwj) ~= _d("EUBGGxkK") or #wwj == 0 then
return false
end

local ggxl

if not pcall(function()
ggxl = game:GetService(_d("KkBAAiQIABRdVxc")):JSONDecode(wwj)
end) then
return false
end

if type(ggxl) ~= _d("FlVWHhI") or type(ggxl.rewards) ~= _d("FlVWHhI") then
return false
end

pxu.rewardLog = {}

for ftf, bhf in ipairs(ggxl.rewards) do
if type(bhf) == _d("FlVWHhI") and type(bhf.items) == _d("FlVWHhI") then
table.insert(pxu.rewardLog, {
at = tonumber(bhf.at) or os.time(),
title = tostring(bhf.title or _d("J0xEFxMEBgtbWg")),
items = bhf.items,
})
end
end

return #pxu.rewardLog > 0
end

function pxa.misc.expeditions.start(iz, ue)
local azmk = pxa.misc.expeditions

if azmk.status(iz) ~= _d("A0JVGxsMEA5R") then
return false
end

if os.clock() < (azmk.startedAt[iz] or 0) then
return false
end

local ucka = azmk.remote()

if not ucka then
return false
end

local ade = azmk.cards(iz, ue)
local kfu = azmk.data()
local leab = kfu and tonumber(kfu.CardsPerExpedition) or 4

if #ade < leab then
return false
end

local pyoi = {}

for kqwn, eors in ipairs(ade) do
pyoi[kqwn] = { cardId = eors.cardId, borderLevel = eors.borderLevel }
end

pcall(function()
ucka:FireServer(_d("EUBVAAM"), iz, pyoi)
end)

azmk.startedAt[iz] = os.clock() + 6
azmk.askedAt = 0

return true
end

pxa.misc.icon = function()
local fz = gethui()

for usa, kcd in ipairs(fz:QueryDescendants(_d("K1lVFRIhEwBRWA"))) do
if kcd.Name == _d("NlVWOxoMFQc") then
local nhnl = kcd.Parent
local ahfg = nhnl and nhnl:FindFirstChild(_d("NlVWIQAEBgFcUQA5DB8H"))

if ahfg and ahfg.Text == _d("L11HERIBHgNaUR0CHg") then
if kcd:GetAttribute(_d("I3d2KjoEAQF9Vx0Z")) then
return true
end

kcd:SetAttribute(_d("I3d2KjoEAQF9Vx0Z"), true)
kcd.Image = _d("")
kcd.BackgroundTransparency = 1

local function ipc(vhqw, qf, xsi, uzu, kggb, xzot, jmr)
local bzzl = Instance.new(vhqw)

bzzl.Size = UDim2.fromOffset(kggb, xzot)
bzzl.Position = UDim2.fromOffset(xsi, uzu)
bzzl.BackgroundColor3 = qf
bzzl.BorderSizePixel = 0
bzzl.Parent = kcd

if jmr then
local yoco = Instance.new(_d("N313HQUDFxA"))
yoco.CornerRadius = UDim.new(0, jmr)
yoco.Parent = bzzl
end

return bzzl
end

local iueo = Color3.fromRGB(168, 170, 176)

local function hetc(kc, bmnw, to, rx, dpuz)
local wotb = ipc(_d("JEZVHxI"), iueo, kc, bmnw, to, rx, dpuz)

wotb.BackgroundTransparency = 1

local taxb = Instance.new(_d("N31nBgUCGQc"))

taxb.Color = iueo
taxb.Thickness = 1.4
taxb.LineJoinMode = Enum.LineJoinMode.Round
taxb.Parent = wotb

return wotb
end

hetc(3, 1, 6, 4, 1)
hetc(1, 4, 16, 12, 2)

local wkze = ipc(_d("JEZVHxI"), iueo, 3, 8, 5, 5)

wkze.BackgroundTransparency = 1
wkze.ClipsDescendants = true

local rr = ipc(_d("JEZVHxI"), iueo, 0, 1, 5, 5)

rr.Rotation = 45
rr.Parent = wkze

ipc(_d("JEZVHxI"), iueo, 9, 9, 4, 4, 4)
ipc(_d("JEZVHxI"), iueo, 13, 10, 3, 3, 1)

return true
end
end
end

return false
end

pxa.misc.tab = xnfy:Tab({
Name = _d("L11HERIBHgNaUR0CHg"),

Image = _d(""),
})

task.defer(function()
for ps = 1, 20 do
if pxa.misc.icon() then
break
end

task.wait(0.25)
end
end)

local vtd = {
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
lastText = _d("LFtAGh4DFUJEWwIHCBZCTVEGWQ"),
tab = nil,
weatherSection = nil,
giveUpSection = nil,
weatherParagraph = nil,
giveUpParagraph = nil,
weatherToggle = nil,
giveUpToggle = nil,
}

getgenv().ACBXPop = vtd

function vtd.options()
local srln = {}

for icq, dty in pairs(fnha.ById) do
if dty.type == _d("EltAGxgD") and type(dty.name) == _d("EUBGGxkK") then
srln[#srln + 1] = dty.name
end
end

table.sort(srln)

return srln
end

function vtd.idOf(bezy)
for xuo, uuj in pairs(fnha.ById) do
if uuj.type == _d("EltAGxgD") and uuj.name == bezy then
return xuo
end
end

return nil
end

function vtd.count(ys)
local qmsu = pat.balances

return tonumber(qmsu and qmsu[ys]) or 0
end

function vtd.pop(dmxu, vuxg, wvjl)
local ai = {}

for mp, fln in pairs(dmxu) do
if fln then
local lj = vtd.idOf(mp)

if lj then
local svn = vtd.count(lj)

if svn <= 0 then
ai[#ai + 1] = mp .. _d("QhkUHBgDF0JYURQD")
else
local zh = math.clamp(math.floor(tonumber(vuxg) or 1), 1, svn)

pcall(function()
evk.UseItem:FireServer(lj, zh)
end)

ai[#ai + 1] = mp .. _d("Qkw") .. zh
task.wait(0.3)
end
end
end
end

if #ai == 0 then
return false
end

vtd.lastText = wvjl .. _d("QhkU") .. table.concat(ai, _d("ThQ"))

pcall(function()
torj:Notify({
Title = _d("MltE"),
Description = vtd.lastText,
Lifetime = 5,
})
end)

return true
end

function vtd.status()
local aggg = xzd.weatherWanted(vtd.weathers)
local mrgv = xzd.weatherNow or _d("F1pfHBgaHA")
local kicl = {
_d("NVFVBh8IAFgU") .. mrgv .. (aggg and (_d("QhxEHQcdGwxTDlI") .. aggg .. _d("Sw")) or _d("")),
_d("LlVHBk1N") .. vtd.lastText,
}

return table.concat(kicl, _d("aA"))
end

function vtd.giveUpStatus()
if vtd.armedAt > 0 then
return _d("I0ZZFxNNX0JDVRsDBBwFFFIdBU0GClEUAAIDUhZbFBcZCVxoeFUBA1dS") .. vtd.lastText
end

return _d("K1BYF1lnPgNHQEhX") .. vtd.lastText
end

vtd.tab = xnfy:Tab({
Name = _d("MltE"),

Image = _d(""),
})

vtd.icon = function()
local wpf = gethui()

for ye, dsz in ipairs(wpf:QueryDescendants(_d("K1lVFRIhEwBRWA"))) do
if dsz.Name == _d("NlVWOxoMFQc") then
local tjch = dsz.Parent
local rlm = tjch and tjch:FindFirstChild(_d("NlVWIQAEBgFcUQA5DB8H"))

if rlm and rlm.Text == _d("MltE") then
if dsz:GetAttribute(_d("I3d2KicCAitXWxw")) then
return true
end

dsz:SetAttribute(_d("I3d2KicCAitXWxw"), true)
dsz.Image = _d("")
dsz.BackgroundTransparency = 1

local oa = Color3.fromRGB(168, 170, 176)

local function fmlt(gawq, edu, laog, ht, brnz, mm)
local lad = Instance.new(gawq)

lad.Size = UDim2.fromOffset(ht, brnz)
lad.Position = UDim2.fromOffset(edu, laog)
lad.BackgroundColor3 = oa
lad.BorderSizePixel = 0
lad.Parent = dsz

if mm then
local lujx = Instance.new(_d("N313HQUDFxA"))
lujx.CornerRadius = UDim.new(0, mm)
lujx.Parent = lad
end

return lad
end

local function blz(ze, mmoc, ie, djxh, avm)
local glx = fmlt(_d("JEZVHxI"), ze, mmoc, ie, djxh, avm)

glx.BackgroundTransparency = 1

local zu = Instance.new(_d("N31nBgUCGQc"))

zu.Color = oa
zu.Thickness = 1.3
zu.LineJoinMode = Enum.LineJoinMode.Round
zu.Parent = glx

return glx
end

blz(1, 6, 16, 12, 6)
blz(6, 3, 6, 4, 1)
fmlt(_d("JEZVHxI"), 5, 1, 8, 2, 1)
fmlt(_d("JEZVHxI"), 7, 0, 4, 1, 0)

fmlt(_d("JEZVHxI"), 4, 11, 10, 1, 0)
fmlt(_d("JEZVHxI"), 13, 3, 2, 2, 2)
fmlt(_d("JEZVHxI"), 15, 6, 2, 2, 2)

return true
end
end
end

return false
end

task.defer(function()
for cqaz = 1, 20 do
if vtd.icon() then
break
end

task.wait(0.25)
end
end)

vtd.weatherSection = vtd.tab:Section({
Side = _d("LlFSBg"),
})

vtd.weatherSection:Header({
Name = _d("MltAGxgDAUJbWlIACBMWXFEAV53txZ4"),
})

vtd.weatherToggle = vtd.weatherSection:Toggle({
Name = _d("MltEUhgDUhZcUQESTQUHVUAaEh8B"),
Default = false,
Callback = function(uc)
if uc and (next(vtd.weatherPotions) == nil or next(vtd.weathers) == nil) then
vtd.onWeather = false

pcall(function()
vtd.weatherToggle:UpdateState(false)
end)

torj:Dialog({
Title = _d("MltE"),
Description = _d("Nl1XGVcMBkJYURMEGVINWlFSAAgTFlxRAFcMHAYUWxwSTQINQF0dGU0UC0ZHBldAUjJbRFIZCBcGRxQQGBkaQkBbUhwDHRUUQxoWGVIWWxQWBQQcCRRVHBNNBQpRWlw"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})

return
end

vtd.onWeather = uc

if uc then
vtd.weatherSpent = nil
end
end,
}, _d("EltELRgDLRZcUQESMgUHVUAaEh8B"))

vtd.weatherSection:Dropdown({
Name = _d("NVFVBh8IABE"),
Multi = true,
Required = false,
Options = { _d("Nk1EGhgCHA"), _d("IFhdCA0MAAY"), _d("Ll1TGgMDGwxT"), _d("NV1aFgQZHRBZ"), _d("MVxVAB4DFQNa"), _d("MV1aFQIBExBdQAs"), _d("L1taEwUOGkJwWx8WBBw"), _d("NFtdFg"), _d("L1VQF1cEHEJ8URMBCBw"), _d("L1VaFRY") },
Callback = function(gzl)
vtd.weathers = {}

if type(gzl) == _d("FlVWHhI") then
for qjh, mf in pairs(gzl) do
if mf then
vtd.weathers[qjh] = true
end
end
end
end,
}, _d("FVFVBh8IABE"))

vtd.weatherSection:Dropdown({
Name = _d("MltAGxgDAQ"),
Multi = true,
Required = false,
Options = vtd.options(),
Callback = function(oyul)
vtd.weatherPotions = {}

if type(oyul) == _d("FlVWHhI") then
for pgvj, zrj in pairs(oyul) do
if zrj then
vtd.weatherPotions[pgvj] = true
end
end
end
end,
}, _d("EltAGxgDAQ"))

vtd.weatherSection:Input({
Name = _d("I1lbBxkZ"),
Placeholder = _d("Uw"),
AcceptedCharacters = _d("LEFZFwUEEQ"),
Callback = function(ndge)
local cmo = math.floor(tonumber(ndge) or 1)

vtd.weatherAmount = math.clamp(cmo, 1, 50)
end,
}, _d("A1lbBxkZ"))

vtd.weatherParagraph = vtd.weatherSection:Paragraph({
Header = _d("MUBVBgIe"),
Body = vtd.status(),
})

vtd.giveUpSection = vtd.tab:Section({
Side = _d("MF1TGgM"),
})

vtd.giveUpSection:Header({
Name = _d("I1JAFwVNFQtCUVICHQ"),
})

vtd.giveUpToggle = vtd.giveUpSection:Toggle({
Name = _d("MltEUhYLBgdGFBNXGR0VUUZSEAQEBxRBAg"),
Default = false,
Callback = function(tvpd)
if tvpd and next(vtd.giveUpPotions) == nil then
vtd.afterGiveUp = false

pcall(function()
vtd.giveUpToggle:UpdateState(false)
end)

torj:Dialog({
Title = _d("MltE"),
Description = _d("Nl1XGVcMBkJYURMEGVINWlFSBwIGC1taUhEEABFAFF9XGRoHRlFSHh5SDFtAGh4DFUJAW1ITHxsMXxQTERkXEBRAGhJNABdaFB0DBRcQQ10BEkM"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})

return
end

vtd.afterGiveUp = tvpd
end,
}, _d("EltELRYLBgdGaxMoGR0VUUYtEAQEB2tBAg"))

vtd.giveUpSection:Dropdown({
Name = _d("MltAGxgDAQ"),
Multi = true,
Required = false,
Options = vtd.options(),
Callback = function(egj)
vtd.giveUpPotions = {}

if type(egj) == _d("FlVWHhI") then
for ki, frhe in pairs(egj) do
if frhe then
vtd.giveUpPotions[ki] = true
end
end
end
end,
}, _d("EltAGxgDAT0G"))

vtd.giveUpSection:Input({
Name = _d("I1lbBxkZ"),
Placeholder = _d("Uw"),
AcceptedCharacters = _d("LEFZFwUEEQ"),
Callback = function(yecv)
local zv = math.floor(tonumber(yecv) or 1)

vtd.giveUpAmount = math.clamp(zv, 1, 50)
end,
}, _d("A1lbBxkZLVA"))

vtd.giveUpParagraph = vtd.giveUpSection:Paragraph({
Header = _d("MUBVBgIe"),
Body = vtd.giveUpStatus(),
})

local ubof = {
autoSave = false,
autoRoll = true,
autoQuickRoll = true,

loading = false,
selected = nil,
lastText = _d("LFtAGh4DFUJDRhsDGRcMFE0XA01fQkRdERxNE0JHVQQSTRQLWFFSFQgeDUMa"),
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
theme = _d("NFtdFg"),
accent = nil,
savesAt = 0,
autoSaveAt = 0,
themeAt = 0,
capAt = 0,
scaleAnchor = nil,
statusAt = 0,
knownSaves = _d(""),
}

getgenv().ACBXSettings = ubof

ubof.presets = {
Void = { panel = Color3.fromRGB(15, 15, 15), element = Color3.fromRGB(0, 0, 0), accent = Color3.fromRGB(168, 170, 176) },
Ocean = { panel = Color3.fromRGB(6, 16, 26), element = Color3.fromRGB(8, 26, 40), accent = Color3.fromRGB(77, 166, 255) },
Ember = { panel = Color3.fromRGB(26, 10, 8), element = Color3.fromRGB(36, 16, 10), accent = Color3.fromRGB(255, 122, 69) },
Sakura = { panel = Color3.fromRGB(26, 9, 18), element = Color3.fromRGB(38, 14, 26), accent = Color3.fromRGB(255, 125, 177) },
Mint = { panel = Color3.fromRGB(7, 20, 14), element = Color3.fromRGB(9, 30, 22), accent = Color3.fromRGB(77, 227, 160) },
Graphite = { panel = Color3.fromRGB(20, 20, 22), element = Color3.fromRGB(30, 30, 33), accent = Color3.fromRGB(200, 200, 206) },
}

ubof.themeOrder = { _d("NFtdFg"), _d("LVdRExk"), _d("J1lWFwU"), _d("MVVfBwUM"), _d("L11aBg"), _d("JUZVAh8EBgc") }

local bya = _d("I3d2UiUIEAtGQBpYHhcWQF0cEB4")

function ubof.saves()
local svc, lv = pcall(function()
return lwqk:RefreshConfigList()
end)

if svc and type(lv) == _d("FlVWHhI") then
table.sort(lv)
return lv
end

return {}
end

function ubof.autoLoadName()
local vd, ool = pcall(function()
if isfile and isfile(bya .. _d("TVVBBhgBHQNQGgYPGQ")) then
return readfile(bya .. _d("TVVBBhgBHQNQGgYPGQ"))
end
end)

if vd and type(ool) == _d("EUBGGxkK") then
ool = ool:gsub(_d("PBFHWQ"), _d("")):gsub(_d("R0cfVg"), _d(""))

if ool ~= _d("") then
return ool
end
end

return nil
end

function ubof.setAutoLoad(vhjr)

return (pcall(function()
writefile(bya .. _d("TVVBBhgBHQNQGgYPGQ"), vhjr or _d(""))
end))
end

function ubof.delete(xqx)
if type(xqx) ~= _d("EUBGGxkK") or xqx == _d("") then
return false, _d("Ml1XGVcMUhFVQhdXCxsOURQUHh8BFho")
end

local mae = bya .. _d("TQ") .. xqx .. _d("TF5HHRk")
local stv = false

pcall(function()
stv = isfile ~= nil and isfile(mae) == true
end)

if not stv then
return false, _d("NlxRABJNGxEUWh1XCxsOURQRFgEeB1AU") .. xqx .. _d("TA")
end

local gez, vypq = pcall(function()
delfile(mae)
end)

if not gez then
return false, tostring(vypq)
end

if ubof.autoLoadName() == xqx then
ubof.setAutoLoad(_d(""))
end

if ubof.selected == xqx then
ubof.selected = nil
ubof.selectionShown = nil
end

ubof.knownSaves = nil
ubof.savesAt = 0

return true
end

function ubof.save(rk)
if type(rk) ~= _d("EUBGGxkK") or rk:gsub(_d("R0c"), _d("")) == _d("") then
return false, _d("JV1CF1cZGgcURxMBCFIDFFoTGghSBF1GAQND")
end

local xrgj, koyd, qo = pcall(function()
return lwqk:SaveConfig(rk)
end)

if not xrgj then
return false, tostring(koyd)
end

if koyd ~= true then
return false, tostring(qo or _d("FlxRUhEEHgcUVx0CARZCWlsGVw8XQkNGGwMZFww"))
end

return true
end

function ubof.replayOff(febx)
local wvdh, vjgl = pcall(function()
return readfile(bya .. _d("TQ") .. febx .. _d("TF5HHRk"))
end)

if not wvdh or type(vjgl) ~= _d("EUBGGxkK") then
return
end

local ptdh
wvdh, ptdh = pcall(function()
return game:GetService(_d("KkBAAiQIABRdVxc")):JSONDecode(vjgl)
end)

if not wvdh or type(ptdh) ~= _d("FlVWHhI") or type(ptdh.objects) ~= _d("FlVWHhI") then
return
end

for mhxp, ljdw in ipairs(ptdh.objects) do
if ljdw.type == _d("NltTFRsI") and ljdw.state == false and ljdw.flag then
local cahl = lwqk.Options[ljdw.flag]

if cahl then
pcall(function()
cahl:UpdateState(false)
end)
end
end
end
end

function ubof.load(uqlp)
if type(uqlp) ~= _d("EUBGGxkK") or uqlp == _d("") then
return false, _d("Ml1XGVcMUhFVQhdXCxsOURQUHh8BFho")
end

ubof.loading = true
lptm = true

local whqe, zwas, sn = pcall(function()
return lwqk:LoadConfig(uqlp)
end)

if not whqe then
ubof.loading = false
lptm = false

return false, tostring(zwas)
end

if zwas ~= true then
ubof.loading = false
lptm = false

return false, tostring(sn or _d("FlxRUhEEHgcUVx0CARZCWlsGVw8XQkZRExM"))
end

task.wait(0.25)
ubof.replayOff(uqlp)
ubof.loading = false
lptm = false

return true
end

ubof.uiPath = _d("I3d2KlgYG0xeRx0Z")

function ubof.saveUi()
if type(writefile) ~= _d("BEFaEQMEHQw") then
return false
end

if ubof.restoring then
return false
end

local zhxl = ubof.accent

local bmtn = {
theme = ubof.theme,
scale = tonumber(string.format(_d("RxoGFA"), ubof.scaleTarget or 1)),
accent = zhxl and string.format(_d("R1AYVxNBVwY"),
math.floor(zhxl.R * 255 + 0.5),
math.floor(zhxl.G * 255 + 0.5),
math.floor(zhxl.B * 255 + 0.5)) or nil,
}

return pcall(function()
if type(makefolder) == _d("BEFaEQMEHQw") and type(isfolder) == _d("BEFaEQMEHQw") and not isfolder(_d("I3d2Kg")) then
makefolder(_d("I3d2Kg"))
end

writefile(ubof.uiPath, game:GetService(_d("KkBAAiQIABRdVxc")):JSONEncode(bmtn))
end)
end

function ubof.loadUi()
if type(readfile) ~= _d("BEFaEQMEHQw") or type(isfile) ~= _d("BEFaEQMEHQw") then
return nil
end

local ii, xrz = pcall(function()
if not isfile(ubof.uiPath) then
return nil
end

return readfile(ubof.uiPath)
end)

if not ii or type(xrz) ~= _d("EUBGGxkK") or xrz == _d("") then
return nil
end

local xxp
ii, xxp = pcall(function()
return game:GetService(_d("KkBAAiQIABRdVxc")):JSONDecode(xrz)
end)

if not ii or type(xxp) ~= _d("FlVWHhI") then
return nil
end

ubof.restoring = true

if type(xxp.theme) == _d("EUBGGxkK") and ubof.presets[xxp.theme] then
ubof.theme = xxp.theme

pcall(function()
ubof.themeDropdown:UpdateSelection(xxp.theme)
ubof.themeDropdown:UpdateName(_d("NlxRHxJXUg") .. xxp.theme)
end)
end

local ey, azly, gps = tostring(xxp.accent or _d("")):match(_d("PBwRFlxEXkoRUFleQVpHUB9bUw"))

if ey then
local jash = Color3.fromRGB(tonumber(ey), tonumber(azly), tonumber(gps))

ubof.accent = jash

pcall(function()
ubof.accentPicker:SetColor(jash)
end)
else
ubof.accent = nil

local zlhd = ubof.presets[ubof.theme] or ubof.presets.Void

pcall(function()
ubof.accentPicker:SetColor(zlhd.accent)
end)
end

local lcy = tonumber(xxp.scale)

if lcy then
lcy = math.clamp(lcy, 0.5, ubof.scaleCeiling())

ubof.scaleTarget = lcy
ubof.scaleAnchor = nil

pcall(function()
ubof.scaleSlider:UpdateValue(lcy)
end)
end

ubof.applyTheme()

ubof.restoring = false
ubof.saveUi()

return xxp
end

ubof.prioPath = _d("I3d2KlgdAAtbRhsDFFwIR1sc")

function ubof.groupAt(dn)
for omap, jvts in ipairs(ne.prioGroups) do
if jvts.rank == dn then
return jvts
end
end
end

function ubof.paintPriority()
if ubof.prioBusy then
return
end

ubof.prioBusy = true

for lec = 1, #ne.prioGroups do
local cbkg = ubof.prioRows and ubof.prioRows[lec]
local szi = ubof.groupAt(lec)

if cbkg and szi then
pcall(function()
cbkg:UpdateSelection(szi.label)
end)
end
end

ubof.prioBusy = false
end

function ubof.setPriority(zkt, ej)
if ubof.prioBusy or ubof.prioBuilding then
return
end

local nrdy

for rqn, ieb in ipairs(ne.prioGroups) do
if ieb.id == zkt then
nrdy = ieb.rank
ieb.rank = ej
end
end

if nrdy and nrdy ~= ej then
for yjux, nxks in ipairs(ne.prioGroups) do
if nxks.id ~= zkt and nxks.rank == ej then
nxks.rank = nrdy
end
end
end

ubof.paintPriority()
ubof.savePriority()
end

function ubof.savePriority()
if type(writefile) ~= _d("BEFaEQMEHQw") then
return false
end

local mcdh = {}

for ptdv, wf in ipairs(ne.prioGroups) do
mcdh[wf.id] = wf.rank
end

return pcall(function()
if type(makefolder) == _d("BEFaEQMEHQw") and type(isfolder) == _d("BEFaEQMEHQw") and not isfolder(_d("I3d2Kg")) then
makefolder(_d("I3d2Kg"))
end

writefile(ubof.prioPath, game:GetService(_d("KkBAAiQIABRdVxc")):JSONEncode({ ranks = mcdh }))
end)
end

function ubof.loadPriority()
if type(readfile) ~= _d("BEFaEQMEHQw") or type(isfile) ~= _d("BEFaEQMEHQw") then
return nil
end

local ype, dk = pcall(function()
if not isfile(ubof.prioPath) then
return nil
end

return readfile(ubof.prioPath)
end)

if not ype or type(dk) ~= _d("EUBGGxkK") or dk == _d("") then
return nil
end

local heka

ype, heka = pcall(function()
return game:GetService(_d("KkBAAiQIABRdVxc")):JSONDecode(dk)
end)

if not ype or type(heka) ~= _d("FlVWHhI") or type(heka.ranks) ~= _d("FlVWHhI") then
return nil
end

return heka.ranks
end

function ubof.restorePriority()
local bnx = ubof.loadPriority()

if not bnx then
return
end

local ku = {}
local uqz = {}

for eas, onli in ipairs(ne.prioGroups) do
local aaxm = tonumber(bnx[onli.id])

if aaxm then
ku[#ku + 1] = { group = onli, rank = aaxm }
uqz[onli.id] = true
end
end

table.sort(ku, function(gz, toen)
return gz.rank < toen.rank
end)

for upcv, byh in ipairs(ku) do
byh.group.rank = upcv
end

local ihdb = #ku + 1

for sd, gr in ipairs(ne.prioGroups) do
if not uqz[gr.id] then
gr.rank = ihdb
ihdb = ihdb + 1
end
end

ubof.paintPriority()
end

function ubof.colourKey(axyc)
return math.floor(axyc.R * 255) .. _d("Tg") .. math.floor(axyc.G * 255) .. _d("Tg") .. math.floor(axyc.B * 255)
end

function ubof.guiRoot()

if not ha() then
return nil
end

if ubof.root and ubof.root.Parent then
return ubof.root
end

local sthf = gethui and gethui() or game:GetService(_d("IVtGFzAYGw"))

for etvk, yll in ipairs(sthf:GetChildren()) do
if yll:IsA(_d("MVdGFxIDNRdd")) and yll:FindFirstChild(_d("IFVHFw")) then
ubof.root = yll.Base

return ubof.root
end
end

return nil
end

function ubof.applyTheme()
local xniy = ubof.guiRoot()
local gkbz = ubof.presets[ubof.theme] or ubof.presets.Void

if not xniy then
return false
end

local ojm = {
panel = gkbz.panel,
element = gkbz.element,
accent = ubof.accent or gkbz.accent,
}

local jhhv = {}

for mgg, nawx in pairs(ubof.presets) do
jhhv[ubof.colourKey(nawx.panel)] = _d("ElVaFxs")
jhhv[ubof.colourKey(nawx.element)] = _d("B1hRHxIDBg")
jhhv[ubof.colourKey(nawx.accent)] = _d("A1dXFxkZ")
end

jhhv[ubof.colourKey(ojm.accent)] = _d("A1dXFxkZ")

if jhhv[ubof.colourKey(xniy.BackgroundColor3)] == _d("ElVaFxs") then
xniy.BackgroundColor3 = ojm.panel
end

for jdo, kvk in ipairs(xniy:GetDescendants()) do
if kvk:IsA(_d("JUFdPRUHFwFA")) then
local wfnc = jhhv[ubof.colourKey(kvk.BackgroundColor3)]

if wfnc then
kvk.BackgroundColor3 = ojm[wfnc]
end
elseif kvk:IsA(_d("N31nBgUCGQc")) then
if jhhv[ubof.colourKey(kvk.Color)] == _d("A1dXFxkZ") then
kvk.Color = ojm.accent
end
end

if kvk:IsA(_d("K1lVFRIhEwBRWA")) and kvk.Name == _d("NlVWOxoMFQc") and kvk.Image ~= _d("") then
kvk.ImageColor3 = ojm.accent
kvk.ImageTransparency = 0
kvk:SetAttribute(_d("I3d2KiMMECNXVxcZGQ"), ojm.accent)

if not kvk:GetAttribute(_d("I3d2KiMMEDZdWgY")) then
kvk:SetAttribute(_d("I3d2KiMMEDZdWgY"), true)

local function nbj()
local rz = kvk:GetAttribute(_d("I3d2KiMMECNXVxcZGQ"))

if rz and kvk.ImageColor3 ~= rz then
kvk.ImageColor3 = rz
end

if kvk.ImageTransparency ~= 0 then
kvk.ImageTransparency = 0
end
end

wdaq(kvk:GetPropertyChangedSignal(_d("K1lVFRI5AANaRwIWHxcMV00")), nbj)
wdaq(kvk:GetPropertyChangedSignal(_d("K1lVFRIuHQ5bRkE")), nbj)
end
end
end

return true
end

local qfhu = xnfy:Tab({
Name = _d("L1VE"),
Image = _d("EFZMEwQeFxZdUEhYQkRSBwVCQFhLUQU"),
})

local epp = {
holdFor = 25,
fly = {
on = false,
speed = 55,
connection = nil,
},
islands = {
{ name = _d("LltWEA4"), kind = _d("FVtGHhM"), arg = _d("DltWEA4") },
{ name = _d("I1ZVHBMCHAdQFDsEARMMUA"), kind = _d("C0dYExkJ"), arg = _d("A1ZVHBMCHAdQaxsEARMMUA") },
{ name = _d("NkNdHFcvFwNXXBcE"), kind = _d("C0dYExkJ"), arg = _d("FkNdHCgPFwNXXBcE"), note = _d("QmBcF1ceFxBCUQBXCQANREdSHhlSF1pAGxtNCw1BFBoWGxdCR1UbGwgWQkBcFwUIXA") },
{ name = _d("NV1aFhoEHg4UfQEbCA"), kind = _d("C0dYExkJ"), arg = _d("FV1aFhoEHg5rXQEbCA"), note = _d("QmBcF1ceFxBCUQBXCQANREdSHhlSF1pAGxtNCw1BFBoWGxdCR1UbGwgWQkBcFwUIXA") },
},
npcs = {
{ name = _d("IVVGFlcgFxBTUQ"), npc = _d("BEFHFygDAgE"), attr = _d("LGR3OxM"), at = Vector3.new(-272, 33, -40347) },
{ name = _d("J0xEFxMEBgtbWgE"), npc = _d("J0xEFxMEBgtbWjwnLg"), attr = _d("J0xEFxMEBgtbWjwnLg"), at = Vector3.new(-347, 35, -40361) },
{ name = _d("JlFXHRkeBhBBVwY"), npc = _d("BlFXHRkeBhBBVwYoAwIB"), attr = _d("LGR3OxM"), at = Vector3.new(-264, 33, -40331) },
{ name = _d("IUZVFAM"), npc = _d("AUZVFAMyHBJX"), attr = _d("LGR3OxM"), at = Vector3.new(-330, 33, -40277) },
{ name = _d("MV9dHhtNJhBRUQ"), npc = _d("MV9dHhs5AAdReiI0"), attr = _d("MV9dHhs5AAdReiI0"), at = Vector3.new(-290, 32, -40283) },
{ name = _d("IVVGFlckHAZRTA"), npc = _d("AVVGFigEHAZRTC0ZHRE"), attr = _d("LGR3OxM"), at = Vector3.new(-313, 33, -40282) },
{ name = _d("MlVXGVcgFxBXXBMZGQ"), npc = _d("ElVXGSgAFxBXXBMZGQ"), attr = _d("LGR3OxM"), at = Vector3.new(-301, 33, -40270) },
{ name = _d("JkFaFRICHA"), npc = _d("BkFaFRICHD1aRBE"), attr = _d("LGR3OxM"), at = Vector3.new(-339, 41, -40399) },
{ name = _d("JF1HGhIfHwNa"), npc = _d("JF1HGhIfHwNaeiI0"), attr = _d("JF1HGhIfHwNaeiI0"), at = Vector3.new(-493, 14, -40262) },
{ name = _d("MVFXABIZUiNaUx4SHw"), npc = _d("MVFXABIZMwxTWBcFIyIh"), attr = _d("MVFXABIZMwxTWBcFIyIh"), at = Vector3.new(-209, 34, -40382) },
{ name = _d("KlVYHhgaFwdaFCEfAgI"), npc = _d("MkFZAhwEHEJ5UQAUBRMMQA"), at = Vector3.new(-29989, 78, -30259) },
{ name = _d("MVVXAB4LGwFRFDMbGRMQ"), landmark = _d("MVVXAB4LGwFRdR4DDAA"), island = _d("A1ZVHBMCHAdQaxsEARMMUA"), at = Vector3.new(-3548, 11, -40462) },
{ name = _d("KlVGFhQCAAcUYB0ACAA"), npc = _d("KlVGFhQCAAdgWwUSHw"), island = _d("A1ZVHBMCHAdQaxsEARMMUA"), at = Vector3.new(-3795, 25, -40250) },
{ name = _d("K0dYExkJUiRdRxoSHx8DWg"), npc = _d("K0dYExkJNAtHXBcFABMMemQx"), attr = _d("K0dYExkJNAtHXBcFABMMemQx"), island = _d("A1ZVHBMCHAdQaxsEARMMUA"), at = Vector3.new(-3825, 23, -40260) },
{ name = _d("Jl1TFRIf"), npc = _d("Jl1TFRIfPDJ3"), attr = _d("Jl1TFRIfPDJ3"), island = _d("FkNdHCgPFwNXXBcE"), at = Vector3.new(-5998, 26, -40565) },
{ name = _d("MVFXABIZUiZdUxUSHw"), npc = _d("MVFXABIZNgtTUxcFIyIh"), attr = _d("MVFXABIZNgtTUxcFIyIh"), island = _d("FV1aFhoEHg5rXQEbCA"), at = Vector3.new(-7740, 17, -40343) },
},
}

function epp.hold()
mt.tpHoldUntil = os.clock() + epp.holdFor

mt.deepPhase = _d("C1BYFw")
mt.deepStageAt = 0
mt.phase = _d("C1BYFw")
mt.nextCastAt = 0
mt.watchdogAt = 0

return epp.holdFor
end

function epp.point(enxv)
local kmyv

if enxv.landmark then
kmyv = workspace:FindFirstChild(enxv.landmark)
else
local oih = workspace:FindFirstChild(_d("LGR3AQ"))

if oih then
for oaf, rkr in ipairs(oih:GetChildren()) do
local qkt

if enxv.attr then
qkt = rkr:GetAttribute(enxv.attr) == enxv.npc
else
qkt = rkr.Name == enxv.npc
end

if qkt then
kmyv = rkr
break
end
end
end
end

if kmyv then
local tj = kmyv.PrimaryPart
or kmyv:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"), true)
or kmyv:FindFirstChildWhichIsA(_d("IFVHFycMABY"), true)

if tj then
return tj.Position
end
end

return enxv.at
end

function epp.resume()
if not mt.enabled then
return
end

local bwx = aqzz.Character
local vb = bwx and bwx:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not vb or (vb.Position - bsda).Magnitude < 40 then
return
end

pcall(function()
mt.recover()
end)
end

function epp.standAt(ieh)
local vehm = aqzz.Character
local ooqd = vehm and vehm:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not ooqd or not ieh then
return false
end

local bqbs = RaycastParams.new()
bqbs.FilterType = Enum.RaycastFilterType.Exclude
bqbs.FilterDescendantsInstances = { vehm }

local zhl = workspace:Raycast(ieh + Vector3.new(0, 10, 0), Vector3.new(0, -80, 0), bqbs)
local ph = ieh.Y

if zhl and zhl.Instance.Name ~= _d("NVVAFwU") then
local bzw = zhl.Position.Y + 3.2

if math.abs(bzw - ieh.Y) <= 8 then
ph = bzw
end
end

local hvn = Vector3.new(ooqd.Position.X - ieh.X, 0, ooqd.Position.Z - ieh.Z)

if hvn.Magnitude < 1 then
hvn = Vector3.new(4, 0, 0)
else
hvn = hvn.Unit * 4
end

local yzng = Vector3.new(ieh.X + hvn.X, ph, ieh.Z + hvn.Z)

ooqd.CFrame = CFrame.new(yzng)

return true
end

function epp.unlock()
local fap = {
{ id = _d("A1ZVHBMCHAdQaxsEARMMUA"), at = Vector3.new(-3825, 24, -40260) },
{ id = _d("FkNdHCgPFwNXXBcE"), at = Vector3.new(-6180, 40, -40350) },
{ id = _d("FV1aFhoEHg5rXQEbCA"), at = Vector3.new(-7480, 30, -40350) },
}
local zhfs = {}

for cult, ia in ipairs(fap) do
local gpml = evk.FishingGetState:InvokeServer()

if gpml and gpml.areas and gpml.areas[ia.id] == true then
table.insert(zhfs, ia.id .. _d("WBRVHgUIEwZNFB0HCBw"))
else
epp.hold()
epp.standAt(ia.at)
task.wait(2.4)

local wvfk = evk.FishingGetState:InvokeServer()

table.insert(zhfs, ia.id .. (wvfk and wvfk.areas and wvfk.areas[ia.id] and _d("WBRBHBsCEQlRUA") or _d("WBRSEx4BFwY")))
end
end

epp.hold()
pcall(function()
evk.TeleportToWorld:FireServer(_d("DltWEA4"))
end)
task.wait(2.5)

return table.concat(zhfs, _d("QvaDUg"))
end

function epp.flyToggle(cgjb)
epp.fly.on = cgjb

if not cgjb then
return _d("JFhNUhgLFEw")
end

local ld = aqzz.Character
local ewxb = ld and ld:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not ewxb then
return _d("LFsUER8MAANXQBcFTQYNFFgbERlc")
end

epp.fly.height = ewxb.Position.Y

if epp.fly.connection then
return _d("JFhNUhgDXA")
end

local olw = game:GetService(_d("N0dRAD4DAhdAZxcFGxsBUQ"))

epp.fly.connection = wdaq(game:GetService(_d("MEFaIRIfBAtXUQ")).Heartbeat, function(iwkz)
if not epp.fly.on then
return
end

local exn = aqzz.Character
local ump = exn and exn:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not ump then
return
end

local ggwn = workspace.CurrentCamera
local ko = Vector3.zero

if ggwn then
local kf = ggwn.CFrame.LookVector
local sdr = Vector3.new(kf.X, 0, kf.Z)

if sdr.Magnitude > 0.01 then
sdr = sdr.Unit
end

local zg = Vector3.new(sdr.Z, 0, -sdr.X)

if olw:IsKeyDown(Enum.KeyCode.W) then
ko = ko + sdr
end

if olw:IsKeyDown(Enum.KeyCode.S) then
ko = ko - sdr
end

if olw:IsKeyDown(Enum.KeyCode.D) then
ko = ko + zg
end

if olw:IsKeyDown(Enum.KeyCode.A) then
ko = ko - zg
end
end

local weuo = 0

if olw:IsKeyDown(Enum.KeyCode.Space) then
weuo = 1
elseif olw:IsKeyDown(Enum.KeyCode.LeftControl) then
weuo = -1
end

local qep = epp.fly.speed or 55
local rkk = ko * qep * iwkz + Vector3.new(0, weuo * qep * 0.6 * iwkz, 0)

if rkk.Magnitude < 0.001 then
return
end

ump.CFrame = ump.CFrame + rkk
ump.AssemblyLinearVelocity = Vector3.zero
end)

return _d("JFhNUhgDXA")
end

function epp.go(nrr)
epp.hold()

if nrr.kind == _d("FVtGHhM") then
pcall(function()
evk.TeleportToWorld:FireServer(nrr.arg)
end)

return _d("MVFaBlcZGgcU") .. nrr.name .. _d("QkBRHhIdHRBAGg")
end

if nrr.kind == _d("C0dYExkJ") then
pcall(function()
evk.FishingIslandTeleport:FireServer(nrr.arg)
end)

return _d("MVFaBlcZGgcU") .. nrr.name .. _d("QkBRHhIdHRBAGg") .. tostring(nrr.note or _d(""))
end

local add = epp.point(nrr)
local bsl = aqzz.Character
local xdl = bsl and bsl:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if add and xdl and (xdl.Position - add).Magnitude > 1500 then
pcall(function()
if nrr.island then
evk.FishingIslandTeleport:FireServer(nrr.island)
else
evk.TeleportToWorld:FireServer(_d("DltWEA4"))
end
end)

task.wait(nrr.island and 3.5 or 4.5)

add = epp.point(nrr)

xdl = aqzz.Character and aqzz.Character:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if add and xdl and (xdl.Position - add).Magnitude > 1500 then
return nrr.name .. _d("Ql1HUhgDUg") .. tostring(nrr.island or _d("FlxRUhsCEABN"))
.. _d("QhkUBh8IUgVVWRdXHxcEQUcXBE0GClVAUgMfGxIUQRwDBB5CXUBSHwwBQlZRFxlNAAdVVxoSCVINWlcXWQ")
end
end

if not add then
return nrr.name .. _d("Ql1HUhkCBkJdWlIDBRsRFEMdBQEWTA")
end

if not epp.standAt(add) then
return _d("LFsUER8MAANXQBcFTQYNFFkdAQhc")
end

task.delay(epp.holdFor + 2, function()
pcall(epp.resume)
end)

return _d("MUBbHRNNEAdHXRYSTQ") .. nrr.name .. _d("TA")
end

epp.islandSection = qfhu:Section({ Side = _d("LlFSBg") })
epp.islandSection:Header({ Name = _d("K0dYExkJAULEq/3qgsrt") })

epp.npcSection = qfhu:Section({ Side = _d("MF1TGgM") })
epp.npcSection:Header({ Name = _d("LGR3AVed7fG5") })

for vg, vq in ipairs(epp.islands) do
epp.islandSection:Button({
Name = vq.name,
Callback = function()
task.spawn(function()
local uq = epp.go(vq)

torj:Notify({
Title = _d("NlFYFwcCABY"),
Description = uq,
Lifetime = 6,
})
end)
end,
})
end

epp.state = mt
epp.tab = qfhu
epp.islandSection:Button({
Name = _d("N1pYHRQGUgNYWFIeHh4DWlAB"),
Callback = function()
task.spawn(function()
local xcyl = epp.unlock()

torj:Notify({
Title = _d("K0dYExkJAQ"),
Description = xcyl,
Lifetime = 10,
})
end)
end,
})

epp.flySection = qfhu:Section({ Side = _d("LlFSBg") })
epp.flySection:Header({ Name = _d("JFhNUpXx+o2Muw") })

epp.flySection:Toggle({
Name = _d("JFhNUl86MzFwGFIkHRMBURQHB0FSIUBGHlcJHRVaHQ"),
Default = false,
Callback = function(lfh)
local ab = epp.flyToggle(lfh)

torj:Notify({
Title = _d("JFhN"),
Description = ab,
Lifetime = 4,
})
end,
}, _d("A1dWCigLHhs"))

getgenv().ACBXTeleport = epp

getgenv().ACBXDeepWater = mzo

pcall(mzo.dropStale)

for wmi, yiu in ipairs(epp.npcs) do
epp.npcSection:Button({
Name = yiu.name,
Callback = function()
task.spawn(function()
local ln = epp.go(yiu)

torj:Notify({
Title = _d("NlFYFwcCABY"),
Description = ln,
Lifetime = 6,
})
end)
end,
})
end

local nzvs = hibg:Section({ Side = _d("LlFSBg") })

nzvs:Header({ Name = _d("Jl1TFR4DFULWr/2Y1f0") })

local zwc = {
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

local av = (tonumber(getgenv().ACBXDigGeneration) or 0) + 1
getgenv().ACBXDigGeneration = av

function zwc.read()
local xmzn, fki = pcall(function()
return evk.DigGetState:InvokeServer()
end)

return xmzn and type(fki) == _d("FlVWHhI") and fki or nil
end

function zwc.call(foyq, nz)
local gprn, uisv = pcall(function()
return evk.DigShop:InvokeServer(foyq, nz)
end)

task.wait(2.5)

return gprn and uisv == true
end

function zwc.wear()
local czk = aqzz.Character

if not czk then
return false
end

local gid = czk:FindFirstChildOfClass(_d("KkFZExkCGwY"))
local wpke = aqzz:FindFirstChild(_d("IFVXGQcMEQk"))

if not (gid and wpke) then
return false
end

gid:UnequipTools()
task.wait(0.4)

for xlu = 1, 8 do
for se, lzh in ipairs(wpke:GetChildren()) do
if lzh:IsA(_d("NltbHg")) and lzh.Name:find(_d("PHBdFSQFHRRRWA")) then
gid:EquipTool(lzh)

return true
end
end

task.wait(0.5)
end

return false
end

function zwc.run()
local gcu = zwc.read()

if not gcu then
return _d("NlxRUhMEFUJHXB0HTRsRFFodA00TDEdDFwUEHAUa")
end

local pqtx = {}

pcall(function()
local spo = evk.FishingGetState:InvokeServer()

pqtx = spo and spo.areas or {}
end)

if not (pqtx.abandoned_island and pqtx.twin_beaches and pqtx.windmill_isle) then
epp.unlock()
task.wait(1)
end

local rv

for dh, ioj in ipairs(epp.npcs) do
if ioj.name == _d("Jl1TFRIf") then
rv = ioj
break
end
end

if not rv then
return _d("NlxRUiMfFwNHQQASTToXWkAXBU0bERRaHQNNGwwUQBoeHlIVW0YeE0M")
end

epp.go(rv)
task.wait(2)

local ksz = aqzz.Character
local wtg = ksz and ksz:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))
local yswj = epp.point(rv)

if not (wtg and yswj) or (wtg.Position - yswj).Magnitude > 40 then
return _d("IVtBHhNNHA1AFAASDBEKFEAaEk0mEFFVAQIfF0J8QRwDCABM")
end

gcu = zwc.read() or gcu

local xho = false
local gxi = gcu.shovels and gcu.shovels.shovel_basic == true
local ddqz = gcu.detectors and gcu.detectors.detector_basic == true

if not (gxi and ddqz) then
xho = zwc.call(_d("IVhVGxo+BgNGQBcF"), _d("EVxbBBIBLQBVRxsU"))
gcu = zwc.read() or gcu
end

if gcu.equippedShovel ~= _d("EVxbBBIBLQBVRxsU") then
zwc.call(_d("J0VBGwc+Gg1CUR4"), _d("EVxbBBIBLQBVRxsU"))
end

if gcu.equippedDetector ~= _d("BlFAFxQZHRBrVhMEBBE") then
zwc.call(_d("J0VBGwcpFxZRVwYYHw"), _d("BlFAFxQZHRBrVhMEBBE"))
end

gcu = zwc.read() or gcu

if gcu.equippedShovel == _d("EVxbBBIBLQBVRxsU") and gcu.equippedDetector == _d("BlFAFxQZHRBrVhMEBBE") then
local oj = zwc.wear()
local kco = false

if oj and mt.enabled then
mt.autoFishWanted = false
kco = true

io(false)

pcall(function()
zp:UpdateState(false)
end)
end

return (xho and _d("IVhVGxoIFkJVWhZXCAMXXUQCEgk") or _d("J0VBGwcdFwY"))
.. _d("QkBcF1cvExFdV1IkBR0UUVhSFgMWQnZVAR4OUiZRQBcUGR0QGg")
.. (kco and _d("QnVBBhhNNAtHXFIYCxRCGRQGHwhSEVxbBBIBUgpVR1IDBRdCQFsdG00BDltAXA") or _d(""))
end

return _d("NlxRUjUMAQtXFCEfAgQHWBQdBU02B0BREQMCAEJdR1IEGRsOWBQfHh4BC1pTXA")
end

function zwc.unlock()
if zwc.busy then
return _d("I1hGFxYJC0JDWwAcBBwFGg")
end

zwc.busy = true

local thzf, lsm = pcall(zwc.run)

zwc.busy = false

if not thzf then
return _d("Jl1TFR4DFUJSVRsbCBZYFA") .. tostring(lsm)
end

return lsm
end

zwc.icon = function()
local ddxt = gethui()

for ptvi, hvz in ipairs(ddxt:QueryDescendants(_d("K1lVFRIhEwBRWA"))) do
if hvz.Name == _d("NlVWOxoMFQc") then
local ittb = hvz.Parent
local qnx = ittb and ittb:FindFirstChild(_d("NlVWIQAEBgFcUQA5DB8H"))

if qnx and qnx.Text == _d("Jl1TFR4DFQ") then
if hvz:GetAttribute(_d("I3d2KjMEFStXWxw")) then
return true
end

hvz:SetAttribute(_d("I3d2KjMEFStXWxw"), true)
hvz.Image = _d("")
hvz.BackgroundTransparency = 1

local fzs = Color3.fromRGB(233, 236, 242)

for uqla, kd in ipairs(ddxt:QueryDescendants(_d("K1lVFRIhEwBRWA"))) do
if kd.Name == _d("NlVWOxoMFQc") and kd ~= hvz and kd.Image ~= _d("") then
fzs = kd.ImageColor3
break
end
end

local function kewt(pbhj, jewd, edqn, zeq, di, pcf)
local ynk = Instance.new(_d("JEZVHxI"))

ynk.Size = UDim2.fromOffset(edqn, zeq)
ynk.Position = UDim2.fromOffset(pbhj, jewd)
ynk.BackgroundColor3 = fzs
ynk.BorderSizePixel = 0
ynk.Parent = hvz

if pcf then
ynk.Rotation = pcf
end

if di then
local bglc = Instance.new(_d("N313HQUDFxA"))

bglc.CornerRadius = UDim.new(0, di)
bglc.Parent = ynk
end

return ynk
end

kewt(1.1, 10.2, 7, 6.4, 1.6, -45)
kewt(3.1, 8.3, 11, 2.2, 0.8, -45)
kewt(9.8, 4.4, 5.6, 2, 0.8, 45)

return true
end
end
end

return false
end

task.defer(function()
for onz = 1, 20 do
if zwc.icon() then
break
end

task.wait(0.25)
end
end)

nzvs:Button({
Name = _d("N1pYHRQGUgZdUxUeAxU"),
Callback = function()
task.spawn(function()
torj:Notify({
Title = _d("Jl1TFR4DFQ"),
Description = _d("KlFVFh4DFUJAW1IDBRdCYEYXFh4HEFEUOgIDBgdGGg"),
Lifetime = 5,
})

local tvtz = zwc.unlock()

torj:Notify({
Title = _d("Jl1TFR4DFQ"),
Description = tvtz,
Lifetime = 10,
})
end)
end,
})

zwc.statusParagraph = nzvs:Paragraph({
Header = _d("Jl1TUgQZExZR"),
Body = _d("MFFVFh4DFUJAXBdXCRsFFEcTAQhcTBo"),
})

zwc.data = require(wtba.ModuleScripts.DigData)

function zwc.zoneAt(be)
for rsvq, mwna in ipairs(game:GetService(_d("IVtYHhIOBgtbWiESHwQLV1E")):GetTagged(zwc.data.ZoneTag)) do
if mwna:IsA(_d("IFVHFycMABY")) and mwna:IsDescendantOf(workspace) then
local mvgf = mwna.CFrame:PointToObjectSpace(be)
local jztl = mwna.Size * 0.5

if math.abs(mvgf.X) <= jztl.X and math.abs(mvgf.Y) <= jztl.Y and math.abs(mvgf.Z) <= jztl.Z then
return true
end
end
end

return false
end

function zwc.onIsland()
for srz, fye in ipairs(game:GetService(_d("IVtYHhIOBgtbWiESHwQLV1E")):GetTagged(zwc.data.ZoneTag)) do
if fye:IsA(_d("IFVHFycMABY")) and fye:IsDescendantOf(workspace) then
return true
end
end

return false
end

function zwc.bestShovel(cl)
local rzum = cl and cl.shovels or {}
local nvkw = nil

for ove, yhf in ipairs(zwc.data.Shovels) do
if rzum[yhf.id] == true then
nvkw = yhf.id
end
end

return nvkw
end

function zwc.equipBest()
local rbrj = zwc.read()
local xcbv = zwc.bestShovel(rbrj)

if not xcbv then
return nil
end

if rbrj.equippedShovel ~= xcbv then
zwc.call(_d("J0VBGwc+Gg1CUR4"), xcbv)
end

zwc.wear()

return xcbv
end

function zwc.bestDetector(mg)
local csi = mg and mg.detectors or {}
local agiz = nil

for vnh, cim in ipairs(zwc.data.Detectors) do
if csi[cim.id] == true then
agiz = cim.id
end
end

return agiz
end

function zwc.equipBestDetector()
local nfl = zwc.read()
local vbxo = zwc.bestDetector(nfl)

if not vbxo then
return nil
end

if nfl.equippedDetector ~= vbxo then
zwc.call(_d("J0VBGwcpFxZRVwYYHw"), vbxo)
end

return vbxo
end

function zwc.leaveNpc()
local wp = aqzz.Character
local jlbo = wp and wp:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))
local fuk = wp and wp:FindFirstChildOfClass(_d("KkFZExkCGwY"))

if not (jlbo and fuk) then
return false
end

local jdb

for ek, fcmw in ipairs(epp.npcs) do
if fcmw.name == _d("Jl1TFRIf") then
jdb = fcmw
break
end
end

local xyj = jdb and epp.point(jdb)

if not xyj then
return false
end

local fig = Vector3.new(jlbo.Position.X - xyj.X, 0, jlbo.Position.Z - xyj.Z)

if fig.Magnitude >= 16 then
return true
end

if fig.Magnitude < 1 then
fig = Vector3.new(0, 0, -1)
end

fig = fig.Unit

local opyd = Vector3.new(xyj.X + fig.X * 22, jlbo.Position.Y, xyj.Z + fig.Z * 22)
local ntfa = os.clock() + 6

fuk:MoveTo(opyd)

while os.clock() < ntfa do
local dqof = aqzz.Character
local hz = dqof and dqof:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not hz or (hz.Position - opyd).Magnitude < 4 then
break
end

task.wait(0.15)
end

pcall(function()
fuk:MoveTo(jlbo.Position)
end)

return true
end

function zwc.goToSand(ydsk)

if ydsk or not zwc.onIsland() then
if not ydsk then

pcall(function()
evk.TeleportToWorld:FireServer(_d("DltWEA4"))
end)

local zfft = os.clock() + 15

while not zwc.onIsland() and os.clock() < zfft do
task.wait(0.5)
end
end

local oo

for hlq, bhx in ipairs(epp.npcs) do
if bhx.name == _d("Jl1TFRIf") then
oo = bhx
break
end
end

if oo then
epp.go(oo)
task.wait(2)
end
end

if zwc.onIsland() then
zwc.leaveNpc()
end
end

function zwc.spot()
local efat = aqzz.Character
local gzqs = efat and efat:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not gzqs then
return nil
end

local bmwh = gzqs.CFrame.LookVector
local ydgs = Vector3.new(bmwh.X, 0, bmwh.Z)

if ydgs.Magnitude < 0.01 then
ydgs = Vector3.new(0, 0, -1)
end

ydgs = ydgs.Unit

local olgw = RaycastParams.new()
olgw.FilterType = Enum.RaycastFilterType.Exclude
olgw.FilterDescendantsInstances = { efat }

local function vv(ck, tr)
local ihqy = gzqs.Position + ck * tr + Vector3.new(0, 4, 0)
local mgo = workspace:Raycast(ihqy, Vector3.new(0, -18, 0), olgw)

if mgo and zwc.zoneAt(mgo.Position) then
return mgo.Position
end
end

for tfus, faf in ipairs({ 4, 7, 10, 2 }) do
local vok = vv(ydgs, faf)

if vok then
return vok
end
end

local fy = Vector3.new(-ydgs.Z, 0, ydgs.X)

for zr, ort in ipairs({ 4, 8 }) do
for wdt, enr in ipairs({ 1, -1 }) do
for benf, yel in ipairs({ 1, 0.5 }) do
local linp = vv((fy * (enr * yel) + ydgs * (1 - yel)).Unit, ort)

if linp then
return linp
end
end
end
end

return nil
end

function zwc.turn()
local fjl = aqzz.Character
local rhwj = fjl and fjl:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not rhwj then
return
end

local wsya = rhwj.CFrame.LookVector
local vro = Vector3.new(wsya.X, 0, wsya.Z)

if vro.Magnitude < 0.01 then
vro = Vector3.new(0, 0, -1)
end

vro = vro.Unit

local uwxv = Vector3.new(-vro.Z, 0, vro.X)

rhwj.CFrame = CFrame.lookAt(rhwj.Position, rhwj.Position + uwxv)
end

zwc.misses = 0

zwc.pending = false

zwc.spots = {}
zwc.treasures = {}

local function niw(sdp)
local ntoe = {}
local kccc = {}

for xrl, kn in pairs(sdp) do
local eho
local sme

if typeof(kn) == _d("NFFXBhgfQQ") or typeof(kn) == _d("IXJGExoI") then
eho = xrl
sme = kn
elseif type(kn) == _d("FlVWHhI") then
eho = kn.id or kn.Id or kn[1]
sme = kn.position or kn.Position or kn.pos or kn[2]
end

if typeof(sme) == _d("IXJGExoI") then
sme = sme.Position
end

if eho ~= nil and typeof(sme) == _d("NFFXBhgfQQ") then
table.insert(ntoe, { id = eho, position = sme, spot = true })
kccc[eho] = true
end
end

return ntoe, kccc
end

pcall(function()
wdaq(evk.DigUpdate.OnClientEvent, function(uxp, pfnq)
if uxp == _d("Jl1TIBIeBw5A") then
zwc.pending = false
zwc.resultAt = os.clock()
elseif uxp == _d("Jl1TMRYDEQdY") then
zwc.pending = false
end

if (uxp == _d("MURbBgQ") or uxp == _d("NkZREwQYAAdH")) and type(pfnq) == _d("FlVWHhI") then
local bbmf, jiow = niw(pfnq)

if uxp == _d("MURbBgQ") then
for mdyc, cxs in ipairs(bbmf) do
cxs.spot = true
end

zwc.spots = bbmf
zwc.reportedSpots = jiow
else
zwc.treasures = bbmf

for voj, wrf in ipairs(bbmf) do
wrf.spot = nil
end

zwc.reported = jiow
end

local qego = zwc.target

if qego and not qego.mark then
local kun = qego.spot and zwc.reportedSpots or zwc.reported

if kun and not kun[qego.id] then
zwc.targetGone = true
end
end
end
end)
end)

function zwc.withinDig(yr)
local ezdf = aqzz.Character
local pz = ezdf and ezdf:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not pz then
return false
end

return (pz.Position - yr).Magnitude <= 10
end

zwc.markGone = {}

function zwc.marked()
local sbo = workspace:FindFirstChild(_d("Jl1TPxYfGRE"))
local easb = {}

if not sbo then
return easb
end

local avj = os.clock()

for jqj, vep in ipairs(sbo:GetChildren()) do
if vep.Name == _d("OnlVABw") and vep:IsA(_d("IFVHFycMABY")) then
local hem = vep.Position
local ate = string.format(_d("D1VGGU1IXFJSDldZXRQ"), hem.X, hem.Z)
local mro = zwc.markGone[ate]

if not (mro and avj - mro < 90) then
table.insert(easb, { id = ate, position = hem, mark = true })
end
end
end

return easb
end

function zwc.chests()
local fylh = {}

for htpg, zyod in ipairs(zwc.spots or {}) do
table.insert(fylh, zyod)
end

for zed, daoh in ipairs(zwc.treasures or {}) do
table.insert(fylh, daoh)
end

for mehm, nua in ipairs(zwc.marked()) do
local dvdv = false

for ptm, fgry in ipairs(fylh) do
if (fgry.position - nua.position).Magnitude < 2 then
dvdv = true

break
end
end

if not dvdv then
table.insert(fylh, nua)
end
end

return fylh
end

function zwc.release(caf)
if caf.mark then
zwc.markGone[caf.id] = os.clock()
else
zwc.forget(caf)
end
end

function zwc.nearestChest(ru)
local bun = aqzz.Character
local rty = bun and bun:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not rty then
return nil
end

local ezh
local mr

for yuxb, bro in ipairs(zwc.chests()) do
local xnz = (bro.position - rty.Position).Magnitude

if xnz <= ru and (not mr or xnz < mr) then
ezh = bro
mr = xnz
end
end

return ezh
end

function zwc.forget(gsot)
for kj, uaq in ipairs({ zwc.spots or {}, zwc.treasures or {} }) do
for piz, jqe in ipairs(uaq) do
if jqe.id == gsot.id then
table.remove(uaq, piz)

return
end
end
end
end

function zwc.walkTo(koeg)
local sm = aqzz.Character
local xgi = sm and sm:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))
local vx = sm and sm:FindFirstChildOfClass(_d("KkFZExkCGwY"))

if not (xgi and vx) then
return false
end

local ak = os.clock() + 12
local mdsv = (xgi.Position - koeg).Magnitude
local slpn = os.clock()
local rvdk = false

pcall(function()
vx:MoveTo(koeg)
end)

while os.clock() < ak do
local vmr = aqzz.Character
local wfx = vmr and vmr:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not wfx then
break
end

local ij = (wfx.Position - koeg).Magnitude

if ij <= 4 then
rvdk = true

break
end

if zwc.targetGone or not zwc.autoOn
or getgenv().ACBXDigGeneration ~= av or not ha() then
break
end

if ij < mdsv - 1 then
mdsv = ij
slpn = os.clock()
elseif os.clock() - slpn > 1.5 then
break
end

task.wait(0.15)
end

pcall(function()
vx:MoveTo(xgi.Position)
end)

return rvdk
end

function zwc.digAt(jclr)
zwc.misses = 0
zwc.pending = true

local fows = os.clock()
local wpu = pcall(function()
evk.DigAction:FireServer(_d("MUBVAAM"), jclr)
end)

if not wpu then
zwc.pending = false
end

local tidy = os.clock() + 6

while zwc.pending and zwc.autoOn and os.clock() < tidy
and getgenv().ACBXDigGeneration == av and ha() do
task.wait()
end

zwc.pending = false

return (zwc.resultAt or 0) >= fows
end

function zwc.autoLoop()
local bdq = false

while zwc.autoOn and ha() and getgenv().ACBXDigGeneration == av do
local asuj = pxa and pxa.worldBoss
local yhvu = asuj ~= nil
and type(asuj.holdsDigging) == _d("BEFaEQMEHQw")
and asuj.holdsDigging() == true

if zwc.shopping then

task.wait(0.5)
elseif yhvu or ne.digBlocked() then

bdq = true
task.wait(1)
else
if bdq then

bdq = false

if type(asuj.setRepeat) == _d("BEFaEQMEHQw") then
asuj.setRepeat(false)
end

zwc.goToSand()
end

local rbxq = zwc.chestOn and zwc.nearestChest(2500) or nil
local jzxg = false

if rbxq then
zwc.target = rbxq
zwc.targetGone = false

local oewa = aqzz.Character and aqzz.Character:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))
local ddps = oewa and (oewa.Position - rbxq.position).Magnitude or 999

if ddps > 45 then
pcall(function()
epp.standAt(rbxq.position)
end)

task.wait(0.6)
end

if not zwc.walkTo(rbxq.position) and not zwc.targetGone then
pcall(function()
epp.standAt(rbxq.position)
end)

task.wait(0.6)
zwc.walkTo(rbxq.position)
end

local kem = not zwc.withinDig(rbxq.position)
local skn = zwc.targetGone

if skn or kem then
zwc.strikes = skn and 0 or (zwc.strikes + 1)

if skn or zwc.strikes >= 2 then
zwc.strikes = 0
zwc.release(rbxq)
zwc.skipped = zwc.skipped + 1
end
else

if zwc.digAt(rbxq.position) then
zwc.strikes = 0
zwc.release(rbxq)
zwc.dug = zwc.dug + 1
jzxg = true
else

zwc.strikes = zwc.strikes + 1

if zwc.strikes >= 3 then
zwc.strikes = 0
zwc.release(rbxq)
zwc.skipped = zwc.skipped + 1
end
end
end

zwc.target = nil
zwc.targetGone = false
end

if not jzxg then
local fjwy = zwc.spot()

if fjwy then
zwc.digAt(fjwy)
else

zwc.misses = (zwc.misses or 0) + 1

if zwc.misses >= 4 then
zwc.misses = 0
zwc.goToSand(true)
else
zwc.turn()
task.wait(0.25)
end
end
end
end
end
end

function zwc.autoStart()
local upz = zwc.read()

if not (upz and zwc.bestShovel(upz)) then
return _d("LFsUAR8CBAdYFB0AAxcGFBlSIgMeDVdfUhMEFQVdWhVXCxsQR0Bc")
end

local ggz = false

if mt.enabled then
mt.autoFishWanted = false

io(false)
pcall(function()
zp:UpdateState(false)
end)

ggz = true
end

yql = true
zwc.equipBest()

if zwc.chestOn then
pcall(zwc.equipBestDetector)
end

zwc.goToSand()

task.spawn(zwc.autoLoop)

return _d("Jl1TFR4DFUw") .. (ggz and _d("QnVBBhhNNAtHXFIYCxRCGRQGHwhSEVxbBBIBUgpVR1IDBRdCQFsdG00BDltAXA") or _d(""))
end

function zwc.toggleAuto(engy, jd)
if engy then
local ryn = zwc.autoOn == true

zwc.chestOn = jd == true
zwc.switching = true

pcall(function()
local ge = jd and zwc.autoToggle or zwc.chestToggle

if ge then
ge:UpdateState(false)
end
end)

zwc.switching = false

if ryn then
return
end

zwc.autoOn = true

task.spawn(function()
local akn = zwc.autoStart()

torj:Notify({
Title = jd and _d("I0FAHVcpGwUUdxoSHgYR") or _d("I0FAHVcpGwU"),
Description = akn,
Lifetime = 6,
})
end)
else

if zwc.switching then
return
end

zwc.autoOn = false
zwc.pending = false
yql = false
end
end

zwc.autoToggle = nzvs:Toggle({
Name = _d("I0FAHVcpGwU"),
Default = false,
Callback = function(yk)
zwc.toggleAuto(yk, false)
end,
}, _d("Bl1TFR4DFT1VQQYY"))

zwc.chestToggle = nzvs:Toggle({
Name = _d("I0FAHVcpGwUUdxoSHgYR"),
Default = false,
Callback = function(ho)
zwc.toggleAuto(ho, true)
end,
}, _d("Bl1TFR4DFT1VQQYYMhEKUUcG"))

zwc.chestParagraph = nzvs:Paragraph({
Header = _d("IVxRAQMe"),
Body = _d("NkZVERwIFlgUBFJaTTYXUw5SR01fQmdfGwcdFwYOFEI"),
})

task.spawn(function()
local jfih

while ha() and yl do
local qigt = #zwc.chests()
local moq = _d("NkZVERwIFlgU") .. qigt .. _d("QhkUNgIKSEI") .. zwc.dug .. _d("QhkUIRwEAhJRUEhX") .. zwc.skipped

if zwc.chestOn and qigt > 0 then
local ciji = zwc.nearestChest(2500)
local jc = aqzz.Character
local yp = jc and jc:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if ciji and yp then
local djat = math.floor((ciji.position - yp.Position).Magnitude)
moq = moq .. _d("aHpREwUIARYOFA") .. djat .. (djat > 45 and _d("QkdABxMeUkpcWwJe") or _d("QkdABxMe"))
end
end

if moq ~= jfih then
jfih = moq

pcall(function()
zwc.chestParagraph:UpdateBody(moq)
end)
end

task.wait(0.5)
end
end)

function zwc.npcRow()
for dll, kehs in ipairs(epp.npcs) do
if kehs.name == _d("Jl1TFRIf") then
return kehs
end
end
end

function zwc.shop(ojra, ewf)
local xhy, cnn, oga, owht = pcall(function()
return evk.DigShop:InvokeServer(ojra, ewf)
end)

if not xhy then
return false, _d("NlxRUhMEFUJHXB0HTRsRFFodA00TDEdDFwUEHAUa")
end

return cnn == true, oga, type(owht) == _d("FlVWHhI") and owht or nil
end

function zwc.pickShovel(pg)
local wi = pg.shovels or {}
local cbyz = tonumber(pg.digs) or 0
local sizs

for lppy, bpwn in ipairs(zwc.data.Shovels) do
if not bpwn.crafted and bpwn.id ~= _d("EVxbBBIBLQBVRxsU") and wi[bpwn.id] ~= true then
local gpfq = tonumber(bpwn.cost) or math.huge

if gpfq <= cbyz and (not sizs or gpfq > (tonumber(sizs.cost) or 0)) then
sizs = bpwn
end
end
end

return sizs
end

function zwc.pickDetector(dvj)
local rm = dvj.detectors or {}
local lnj = tonumber(dvj.digs) or 0
local vzo

for fzjr, ylnl in ipairs(zwc.data.Detectors) do
if not ylnl.crafted and ylnl.id ~= _d("BlFAFxQZHRBrVhMEBBE") and rm[ylnl.id] ~= true then
local pnju = tonumber(ylnl.cost) or math.huge

if pnju <= lnj and (not vzo or pnju > (tonumber(vzo.cost) or 0)) then
vzo = ylnl
end
end
end

return vzo
end

function zwc.nextDef(rzt, fudu)
local xkkb

for nhv, nwz in ipairs(rzt) do
local wr = tonumber(nwz.cost)

if not nwz.crafted and wr and fudu[nwz.id] ~= true then
if not xkkb or wr < (tonumber(xkkb.cost) or math.huge) then
xkkb = nwz
end
end
end

return xkkb
end

function zwc.toCounter()
local rkl = zwc.npcRow()
local kyuw = rkl and epp.point(rkl)
local mi = aqzz.Character
local dx = mi and mi:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not (kyuw and dx) then
return false
end

if (dx.Position - kyuw).Magnitude <= 20 then
return true
end

epp.go(rkl)
task.wait(2.2)

mi = aqzz.Character
dx = mi and mi:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

return dx ~= nil and (dx.Position - kyuw).Magnitude <= 20
end

function zwc.upgradeAll()
local zyd = zwc.buyOn == true
local nlcc = zwc.detBuyOn == true

if not (zyd or nlcc) then
return nil, _d("LVJSXA")
end

local yeg = zwc.read()

if not yeg then
return nil, _d("NlxRUhMEFUJHXB0HTRsRFFodA00TDEdDFwUEHAUa")
end

if zyd then
local dgto = zwc.bestShovel(yeg)

if dgto and yeg.equippedShovel ~= dgto then
zwc.equipBest()
end
end

if nlcc then
local ac = zwc.bestDetector(yeg)

if ac and yeg.equippedDetector ~= ac then
zwc.equipBestDetector()
end
end

local vuqx = zyd and zwc.pickShovel(yeg) or nil
local eny = nlcc and zwc.pickDetector(yeg) or nil

if not (vuqx or eny) then
return nil, _d("LFsUBwcKAANQUVIeHlIDUlIdBQkTAFhRUg4IBkw")
end

zwc.shopping = true
zwc.toCounter()

local riwg = {}
local qqxp

local function mhg(oazc, gequ)
if not gequ then
return
end

local llen, jvgl = zwc.shop(oazc, gequ.id)

if llen then
table.insert(riwg, gequ.name)
elseif not qqxp then
qqxp = tostring(jvgl)
end
end

mhg(_d("IEFNIR8CBAdY"), vuqx)
mhg(_d("IEFNNhIZFwFAWwA"), eny)

if #riwg == 0 then
zwc.shopping = false

return nil, _d("IEFNUgUIFBdHURZNTQ") .. (qqxp or _d("DFsUExkeBQdG"))
end

if zyd then
zwc.equipBest()
end

if nlcc then
zwc.equipBestDetector()
end

if zwc.autoOn then
zwc.leaveNpc()
end

zwc.shopping = false

return table.concat(riwg, _d("Qh8U"))
end

function zwc.buyLoop()
while zwc.buyOn or zwc.detBuyOn do
local ueb, ummr, gifi = pcall(zwc.upgradeAll)

zwc.shopping = false

if not ueb then
task.wait(10)
elseif ummr then
torj:Notify({
Title = _d("I0FAHVcvBxsUcBsQChsMUxQ1EgwA"),
Description = _d("IFtBFR8ZUgNaUFISHAcLREQXE00GClEU") .. ummr .. _d("TA"),
Lifetime = 6,
})

task.wait(3)
else
task.wait(gifi == _d("LVJSXA") and 0.5 or 10)
end
end
end

function zwc.syncBuyLoop()
if not (zwc.buyOn or zwc.detBuyOn) or zwc.buyRunning then
return
end

zwc.buyRunning = true

task.spawn(function()
zwc.buyLoop()

zwc.buyRunning = false
end)
end

nzvs:Toggle({
Name = _d("I0FAHVcvBxsUdhcEGVIxXFsEEgE"),
Default = false,
Callback = function(wz)
zwc.buyOn = wz
zwc.syncBuyLoop()
end,
}, _d("Bl1TFR4DFT1WQQs"))

nzvs:Toggle({
Name = _d("I0FAHVcvBxsUdhcEGVImUUAXFBkdEA"),
Default = false,
Callback = function(oozd)
zwc.detBuyOn = oozd
zwc.syncBuyLoop()
end,
}, _d("Bl1TFR4DFT1WQQsoCRcWUVcGGB8"))

function zwc.statusText()
local uly = zwc.read()

if not uly then
return _d("NlxRUhMEFUJHXB0HTRsRFFodA00TDEdDFwUEHAUa")
end

local asf = tonumber(uly.digs) or 0
local xi = { _d("Jl1TAU1N") .. asf }

local function jg(pcq, dfq)
if not dfq then
return pcq .. _d("WBRRBBIfCxZcXRwQTR0VWlEWWQ")
end

local icx = tonumber(dfq.cost) or 0
local ysn = icx - asf

return pcq .. _d("WBQ") .. tostring(dfq.name) .. _d("QhkU") .. icx
.. (ysn <= 0 and _d("QhxGFxYJC0s") or (_d("Qhw") .. ysn .. _d("QkBbUhACWw")))
end

table.insert(xi, jg(_d("LFFMBlceGg1CUR4"), zwc.nextDef(zwc.data.Shovels, uly.shovels or {})))
table.insert(xi, jg(_d("LFFMBlcJFxZRVwYYHw"), zwc.nextDef(zwc.data.Detectors, uly.detectors or {})))

return table.concat(xi, _d("aA"))
end

task.spawn(function()
while ha() and yl do
local firc, jex = pcall(zwc.statusText)

if firc and zwc.statusParagraph then
pcall(function()
zwc.statusParagraph:UpdateBody(jex)
end)
end

task.wait(6)
end
end)

getgenv().ACBXDigging = zwc

ubof.tab = xnfy:Tab({
Name = _d("MVFABh4DFRE"),

Image = _d(""),
})

ubof.icon = function()
local hvei = gethui()

for kkye, chef in ipairs(hvei:QueryDescendants(_d("K1lVFRIhEwBRWA"))) do
if chef.Name == _d("NlVWOxoMFQc") then
local yij = chef.Parent
local fjq = yij and yij:FindFirstChild(_d("NlVWIQAEBgFcUQA5DB8H"))

if fjq and fjq.Text == _d("MVFABh4DFRE") then
if chef:GetAttribute(_d("I3d2KjQCFStXWxw")) then
return true
end

chef:SetAttribute(_d("I3d2KjQCFStXWxw"), true)
chef.Image = _d("")
chef.BackgroundTransparency = 1

local fgo = Color3.fromRGB(168, 170, 176)

local function tam(enh, sbah, ikuk, jgjm, gtc, jsvg)
local dqny = Instance.new(_d("JEZVHxI"))

dqny.Size = UDim2.fromOffset(ikuk, jgjm)
dqny.Position = UDim2.fromOffset(enh, sbah)
dqny.BackgroundColor3 = fgo
dqny.BorderSizePixel = 0
dqny.Parent = chef

if not jsvg then
dqny.BackgroundTransparency = 1

local oni = Instance.new(_d("N31nBgUCGQc"))

oni.Color = fgo
oni.Thickness = 1.3
oni.LineJoinMode = Enum.LineJoinMode.Round
oni.Parent = dqny
end

if gtc then
local jnfn = Instance.new(_d("N313HQUDFxA"))

jnfn.CornerRadius = UDim.new(0, gtc)
jnfn.Parent = dqny
end

return dqny
end

local abl = {
{ 8, 0, 2, 3 },
{ 8, 15, 2, 3 },
{ 0, 8, 3, 2 },
{ 15, 8, 3, 2 },
{ 2, 2, 3, 3 },
{ 13, 2, 3, 3 },
{ 2, 13, 3, 3 },
{ 13, 13, 3, 3 },
}

for puz, ekj in ipairs(abl) do
tam(ekj[1], ekj[2], ekj[3], ekj[4], 0, true)
end

tam(2, 2, 14, 14, 7, false)
tam(7, 7, 4, 4, 2, true)

return true
end
end
end

return false
end

task.defer(function()
for yob = 1, 20 do
if ubof.icon() then
break
end

task.wait(0.25)
end
end)

ubof.prioSection = ubof.tab:Section({
Side = _d("LlFSBg"),
})

ubof.prioSection:Header({
Name = _d("MkZdHQUEBhs"),
})

ubof.prioSection:Paragraph({
Header = _d("NVxbUhACFxEUUhsFHgY"),
Body = _d("UxRAExwIAUJAXBdXDBEBW0EcA00UC0ZHBltNR0JDVRsDHlIEW0ZSEhsXEE1WHRMUXEJxVREfTQANQxQbBE0TQlpBHxUIAEJVWhZXGRoHFFAAGB0WDUNaUgIDFgdGFBsDTRsRFEMaFhlSEUBVHBMeUhZcUQASTV9CRF0RHE0TQlpVHxJNBgpVQFIWAQAHVVALVwUdDlBHUhYDHRZcUQBXAwcPVlEAVwwcBhRAGhJNBhVbFAEADAJMFHVSBQIFQl1HUh8IHgYUVhMUBlINWlgLVw8LQlUUHBYAF0JVVh0BCFILQBQGHwwGQlxVAVceHQ9RQBoeAxVCQFtSEwJSEF1TGgNNHA1DGnh9OR0VUUYBVwwABxRaHQNNHQwUQBoeHlIOXUcGTU0TQkBbBRIfUgRdUxoDHlINWhQGHwhSEVFGBBIfUgNaUFIbCBMUUUdSAwUXQldcEwUMERZRRlIRHxcHGBQBGE0bFhRGBxkeUgNYWxwQHhsGURQXAQgAG0BcGxkKUgpRRhdXDBwGFFscGxRSEUBVHBMeUgNHXRYSTRQNRhQAFgQWERgUBh8IUgVYWxAWAVIAW0cBVwwcBhR6IjRNEANAQB4SHlxoPmcaGB0BThRZFwUKGwxTGFISFQIHUF0GHgIcERRVHBNNBgpRFAASHgZCW1JSAwUXQltaF1oeGg1AFAYFBAIRFFUAEk0cDUAUGhIfF0JbWlIHGAASW0cXTU0GClFNUhYBAAdVUAtXHgYDWlBSAwUXQkZBHBkEHAUUVQcDAh8DQF0dGU0WDUNaUgAFGw5RFAYfCAtCUFtSAwUXC0YUGBgPXA"),
})

ubof.prioRows = {}

ubof.prioBuilding = true

local ddv = {}

for bvh, rof in ipairs(ne.prioGroups) do
ddv[#ddv + 1] = rof.label
end

for czyo = 1, #ne.prioGroups do
local bwz = nil

pcall(function()
bwz = ubof.prioSection:Dropdown({
Name = _d("MkZdHQUEBhsU") .. czyo,
Search = false,
Multi = false,
Required = false,
Default = czyo,
Options = ddv,
Callback = function(lgpa)
local sglr = type(lgpa) == _d("FlVWHhI") and lgpa[1] or lgpa
local gpr

for mzk, kyr in ipairs(ne.prioGroups) do
if kyr.label == sglr then
gpr = kyr

break
end
end

if gpr then
ubof.setPriority(gpr.id, czyo)
end
end,
}, _d("EkZdHSgfEwxfaw") .. czyo)
end)

ubof.prioRows[czyo] = bwz
end

ubof.prioBuilding = false

ubof.configSection = ubof.tab:Section({
Side = _d("LlFSBg"),
})

ubof.configSection:Header({
Name = _d("IVtaFB4KUi9VWhMQCB8HWkA"),
})

ubof.autoSaveToggle = ubof.configSection:Toggle({
Name = _d("I0FAHVceExRR"),
Default = false,
Callback = function(lq)
ubof.autoSave = lq
ubof.autoSaveAt = 0

if lq then
local zocf = ubof.selected or _d("BlFSEwIBBg")
local rrs, fr = ubof.save(zocf)

ubof.selected = zocf
ubof.lastText = rrs and (_d("I0FAHVceExRRFB0ZTV9CQ0YdAwhS") .. zocf)
or (_d("I0FAHVceExRRFB0ZQVIEXUYBA00FEF1AF1cLEwtYURZNTQ") .. tostring(fr))
else
ubof.lastText = _d("I0FAHVceExRRFB0RC1w")
end
end,
}, _d("AVtaFB4KLQNBQB0oHhMUUQ"))

ubof.nameInput = ubof.configSection:Input({
Name = _d("MVVCF1cDEw9R"),
Placeholder = _d("BxpTXFc/EwtQRw"),
AcceptedCharacters = _d("I1hY"),
Callback = function(mxf)
ubof.nameDraft = mxf
end,
})

ubof.nameInput.IgnoreConfig = true

ubof.configSection:Button({
Name = _d("IUZREwMIUhFVQhc"),
Callback = function()
local cds = ubof.nameDraft or ubof.nameInput:GetInput()

cds = type(cds) == _d("EUBGGxkK") and cds:gsub(_d("PBFHWQ"), _d("")):gsub(_d("R0cfVg"), _d("")) or _d("")

if cds == _d("") then
torj:Dialog({
Title = _d("IVtaFB4K"),
Description = _d("Nk1EF1cMUgxVWRdXCx0QFEAaEk0BA0JRUhEEABFAFF9XBAZCVlERGAAXERRAGhJNFAtYUVUETRwDWVFc"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})

return
end

local bxr, iasa = ubof.save(cds)

if not bxr then
ubof.lastText = _d("MVVCF1cLEwtYURZNTQ") .. tostring(iasa)

return
end

ubof.selected = cds
ubof.lastText = _d("IUZREwMIFkI") .. cds .. _d("TA")
ubof.savesAt = 0

task.defer(function()
task.wait(0.25)

pcall(function()
ubof.fileDropdown:UpdateSelection(cds)
end)
end)
end,
})

ubof.fileDropdown = ubof.configSection:Dropdown({
Name = _d("MVVCF1cLGw5R"),
Search = false,
Multi = false,
Required = false,
Options = ubof.saves(),
Callback = function(rgcr)
local rib = type(rgcr) == _d("FlVWHhI") and rgcr[1] or rgcr

if type(rib) == _d("EUBGGxkK") and rib ~= _d("") then
ubof.selected = rib
ubof.selectionShown = rib

pcall(function()
ubof.fileDropdown:UpdateName(_d("MVVCF1cLGw5RDlI") .. rib)
end)
end
end,
})

ubof.fileDropdown.IgnoreConfig = true

ubof.configSection:Button({
Name = _d("LltVFlceFw5RVwYSCQ"),
Callback = function()
local yrto = ubof.selected or ubof.fileDropdown.Value
local xwr, wqvl = ubof.load(yrto)

ubof.lastText = xwr and (_d("LltVFhIJUg") .. yrto .. _d("TA")) or (_d("LltVFlcLEwtYURZNTQ") .. tostring(wqvl))
end,
})

ubof.configSection:Button({
Name = _d("MVVCF1cZHUJHUR4SDgYHUA"),
Callback = function()
local jxji = ubof.selected or ubof.fileDropdown.Value
local votd, oymi = ubof.save(jxji)

ubof.lastText = votd and (_d("NUZbBhJN") .. jxji .. _d("TA")) or (_d("MVVCF1cLEwtYURZNTQ") .. tostring(oymi))
end,
})

ubof.configSection:Button({
Name = _d("JlFYFwMIUhFRWBcUGRcGFEcTAQg"),
Callback = function()
local tyh = ubof.selected or ubof.fileDropdown.Value

if type(tyh) ~= _d("EUBGGxkK") or tyh == _d("") then
ubof.lastText = _d("Ml1XGVcMUhFVQhdXCxsOURQUHh8BFho")

return
end

torj:Dialog({
Title = _d("JlFYFwMIUg") .. tyh .. _d("XQ"),
Description = _d("NlxRUhEEHgcUXQFXHxcPW0IXE00UEFtZUhMEAQkUVRwTTREDWlodA00QBxRGFxQCBAdGURZZ"),
Buttons = {
{
Name = _d("JlFYFwMI"),
Callback = function()
local bvu, og = ubof.delete(tyh)

ubof.lastText = bvu
and (_d("JlFYFwMIFkI") .. tyh .. _d("TA"))
or (_d("IVtBHhNNHA1AFBYSARcWUQ5S") .. tostring(og))
end,
},
{
Name = _d("IVVaERIB"),
},
},
})
end,
})

ubof.configSection:Button({
Name = _d("MFFSABIeGkJYXQED"),
Callback = function()
ubof.savesAt = 0
ubof.lastText = _d("MVVCF1cBGxFAFAASCwAHR1wXE0M")
end,
})

ubof.configSection:Button({
Name = _d("L1VGGVcMAUJVQQYYTR4NVVA"),
Callback = function()
local jzvm = ubof.selected or ubof.fileDropdown.Value

if type(jzvm) ~= _d("EUBGGxkK") or jzvm == _d("") then
ubof.lastText = _d("Ml1XGVcMUhFVQhdXCxsOURQUHh8BFho")

return
end

if ubof.setAutoLoad(jzvm) then
ubof.lastText = jzvm .. _d("QlhbExMeUg1aFAEDDAAWGg")
else
ubof.lastText = _d("IVtBHhNNHA1AFAUFBAYHFEAaEk0TF0BbUhsCEwYUWRMFBhcQGg")
end
end,
})

ubof.configSection:Button({
Name = _d("IVhREwVNExdAW1IbAhMG"),
Callback = function()
ubof.setAutoLoad(_d(""))
ubof.lastText = _d("LFtAGh4DFUJYWxMTHlINWhQBAwwAFho")
end,
})

ubof.statusParagraph = ubof.configSection:Paragraph({
Header = _d("MUBVBgIe"),
Body = _d(""),
})

ubof.miscSection = ubof.tab:Section({
Side = _d("MF1TGgM"),
})

ubof.miscSection:Header({
Name = _d("L11HEQ"),
})

ubof.miscSection:Toggle({
Name = _d("I0FAHVcOHg1HUVIQCBwHRlUGHgIcQmF9"),
Default = false,
Callback = function(fkiu)
uf(fkiu)
end,
}, _d("D11HESgMBxZbaxEbAgEHa1MXGQgAA0BdHRk"))

ubof.miscSection:Toggle({
Name = _d("I0FAHVc/HQ5Y"),
Default = true,
Callback = function(onvl)
ubof.autoRoll = onvl

if onvl and ubof.setRollButton then
ubof.setRollButton(_d("I0FAHSUCHg52QQYDAhw"), true)
end
end,
}, _d("D11HESgMBxZbawAYAR4"))

ubof.miscSection:Toggle({
Name = _d("I0FAHVc8BwtXX1IlAh4O"),
Default = true,
Callback = function(bcra)
ubof.autoQuickRoll = bcra

if bcra and ubof.setRollButton then
ubof.setRollButton(_d("M0FdERw/HQ5YdgcDGR0M"), true)
end
end,
}, _d("D11HESgMBxZbawMCBBEJa0YdGwE"))

ubof.uiSection = ubof.tab:Section({
Side = _d("MF1TGgM"),
})

ubof.uiSection:Header({
Name = _d("N30"),
})

ubof.uiSection:Toggle({
Name = _d("IFVXGRAfHRdaUFIVAQcQ"),
Default = true,
Callback = function(un)
pcall(function()
torj:SetAcrylicBlurState(un)
end)
end,
}, _d("F11rEBYOGQVGWwcZCS0AWEEA"))

function ubof.widthFactor(gymq)
return 1 + math.max(0, (gymq or 1) - 1) * 0.8
end

function ubof.scaleCap()
local hnwe = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local vosr = math.min(120, math.floor(((hnwe.Y - 40 - 8 - 8) / 500) * 100))

while vosr > 50 and (ubof.baseWidth or 720) * (vosr / 100) * ubof.widthFactor(vosr / 100) > hnwe.X - 16 do
vosr = vosr - 1
end

return math.max(50, vosr)
end

function ubof.scaleCeiling()
return math.min(1.2, ubof.scaleCap() / 100)
end

function ubof.refreshScaleCap()
local oczx = ubof.scaleSlider

if not oczx then
return
end

local ced = ubof.scaleCeiling()

pcall(function()
oczx.Settings.Maximum = ced
end)

local ydh = tonumber(oczx:GetValue()) or 1

if ydh > ced then
ubof.scaleTarget = ced

pcall(function()
oczx:UpdateValue(ced)
end)
end
end

ubof.scaleSlider = ubof.uiSection:Slider({
Name = _d("N30UARQMHgc"),
Default = 1,
Minimum = 0.5,

Maximum = ubof.scaleCeiling(),
DisplayMethod = _d("NFVYBxI"),
Precision = 2,

Callback = function(zww)
ubof.scalePending = tonumber(zww)
ubof.scalePendingAt = os.clock()
end,
onInputComplete = function(zcmr)
local hlpx = ubof.scaleCeiling()

ubof.scaleTarget = math.clamp(tonumber(zcmr) or ubof.scalePending or 1, 0.5, hlpx)
ubof.scalePending = nil

ubof.scaleAnchor = nil

ubof.saveUi()
end,
}, _d("F11rARQMHgc"))

ubof.refreshScaleCap()

ubof.themeDropdown = ubof.uiSection:Dropdown({
Name = _d("NlxRHxJXUjRbXRY"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = ubof.themeOrder,
Callback = function(vs)
local uavr = type(vs) == _d("FlVWHhI") and vs[1] or vs

if type(uavr) == _d("EUBGGxkK") and ubof.presets[uavr] then
ubof.theme = uavr
ubof.accent = nil
ubof.applyTheme()

pcall(function()
ubof.themeDropdown:UpdateName(_d("NlxRHxJXUg") .. uavr)
end)

ubof.saveUi()
end
end,
}, _d("F11rBh8IHwc"))

ubof.accentPicker = ubof.uiSection:Colorpicker({
Name = _d("I1dXFxkZUgFbWB0CHw"),
Default = Color3.fromRGB(168, 170, 176),
Alpha = 0,
Callback = function(agmf)
ubof.accent = agmf
ubof.applyTheme()
ubof.saveUi()
end,
}, _d("F11rExQOFwxA"))

ubof.codesSection = ubof.tab:Section({
Side = _d("MF1TGgM"),
})

ubof.codesSection:Header({
Name = _d("IVtQFwQ"),
})

ubof.codeText = _d("MFFQFxIAAUJRQhcFFFIBW1AXVxkaC0cUFRYAF0JHXBsHHlIVXUAaW00dDFEUFwEIABsUVx0CHR4HFFsUVx4XAVtaFgRD")

function ubof.setCodeText(zbda)
ubof.codeText = zbda

pcall(function()
ubof.codeParagraph:UpdateBody(zbda)
end)
end

function ubof.redeemCodes()
if ubof.redeeming then
return
end

local tl = evk.RedeemCode
local zb = wtba:FindFirstChild(_d("L1tQBxsIIQFGXQIDHg"))
local bjfn = zb and zb:FindFirstChild(_d("IVtQFzMMBgM"))
local ihdo, xno = false, nil

if tl and bjfn then
ihdo, xno = pcall(function()
return require(bjfn)
end)
end

local qtlb = ihdo and type(xno) == _d("FlVWHhI") and xno.Codes or nil

if not tl or type(qtlb) ~= _d("FlVWHhI") then
ubof.setCodeText(_d("NlxdAVcbFxBHXR0ZTR0EFEAaEk0VA1lRUh8MAUJaW1IUAhYHFFgbBBlSDUYUHBhNAAdQURcaTQAHWVsGEkM"))
return
end

local rrb = {}

for cxqq in pairs(qtlb) do
rrb[#rrb + 1] = cxqq
end

table.sort(rrb)

local nsk = #rrb

ubof.redeeming = true
ubof.setCodeText(_d("MFFQFxIAGwxTFA") .. nsk .. _d("QldbFhIeXEwa"))

task.spawn(function()
local jvzm, hpm, tpf = 0, 0, 0
local qez = {}

for hvqw = 1, nsk do
if not ha() then
break
end

local uanu = rrb[hvqw]
local mwgi, gvn = pcall(function()
return tl:InvokeServer(uanu)
end)

local nwdu = mwgi and type(gvn) == _d("FlVWHhI") and gvn.success == true
local qrhd = mwgi and type(gvn) == _d("FlVWHhI") and tostring(gvn.message or _d("")) or tostring(gvn or _d(""))

if not nwdu and string.find(string.lower(qrhd), _d("FVVdBg"), 1, true) then
task.wait(3.5)

mwgi, gvn = pcall(function()
return tl:InvokeServer(uanu)
end)

nwdu = mwgi and type(gvn) == _d("FlVWHhI") and gvn.success == true
qrhd = mwgi and type(gvn) == _d("FlVWHhI") and tostring(gvn.message or _d("")) or tostring(gvn or _d(""))
end

if nwdu then
jvzm = jvzm + 1
elseif string.find(string.lower(qrhd), _d("A1hGFxYJCw"), 1, true) then
hpm = hpm + 1
else
tpf = tpf + 1

if #qez < 6 then
qez[#qez + 1] = uanu .. _d("WBQ") .. (qrhd ~= _d("") and qrhd or _d("DFsUExkeBQdG"))
end
end

ubof.setCodeText(string.format(_d("R1AUHRFNVwYUGVJSCVIQUVAXEgAXBhgUVxNNEw5GURMTFF5CEVBSBQgUF0dRFlk"), hvqw, nsk, jvzm, hpm, tpf))

if hvqw < nsk and ha() then
task.wait(1.8)
end
end

local uakr = {
string.format(_d("MFFQFxIAFwYUERZbTRMORlETExRSClVQUlIJXkJGURQCHhcGFBEWVwIUQhFQXA"), jvzm, hpm, tpf, nsk),
}

for fuyq, biqt in ipairs(qez) do
uakr[#uakr + 1] = biqt
end

ubof.redeeming = false
ubof.setCodeText(table.concat(uakr, _d("aA")))
end)
end

ubof.codesSection:Button({
Name = _d("MFFQFxIAUgNYWFIUAhYHRw"),
Callback = function()
ubof.redeemCodes()
end,
})

ubof.codeParagraph = ubof.codesSection:Paragraph({
Header = _d("IVtQFwQ"),
Body = ubof.codeText,
})

ubof.scriptSection = ubof.tab:Section({
Side = _d("MF1TGgM"),
})

ubof.scriptSection:Header({
Name = _d("MVdGGwcZ"),
})

ubof.scriptSection:Button({
Name = _d("N1pYHRYJUhFXRhsHGQ"),
Callback = function()
pcall(function()
torj:Unload()
end)

getgenv().ACBXWindow = nil
getgenv().ACBXAllowReload = nil
end,
})

task.spawn(function()
while ha() do

if os.clock() >= ubof.savesAt then
ubof.savesAt = os.clock() + 3

local gcog = ubof.saves()
local jrea = table.concat(gcog, _d("Hg"))

if jrea ~= ubof.knownSaves then
ubof.knownSaves = jrea

pcall(function()
ubof.fileDropdown:ClearOptions()
ubof.fileDropdown:InsertOptions(gcog)
end)
end

if ubof.selected and ubof.selectionShown ~= ubof.selected then
ubof.selectionShown = ubof.selected

pcall(function()
ubof.fileDropdown:UpdateSelection(ubof.selected)
end)
end
end

if ubof.autoSave and os.clock() >= ubof.autoSaveAt then
ubof.autoSaveAt = os.clock() + 60

local tciq = ubof.selected or _d("BlFSEwIBBg")
local zn, rfm = ubof.save(tciq)

ubof.selected = tciq
ubof.lastText = zn and (_d("I0FAHVceExRRUFI") .. tciq .. _d("QlVAUg") .. os.date(_d("R3wOVzo")) .. _d("TA"))
or (_d("I0FAHVceExRRFBQWBB4HUA5S") .. tostring(rfm))
end

if os.clock() >= ubof.themeAt then
ubof.themeAt = os.clock() + 3
ubof.applyTheme()
end

if os.clock() >= ubof.capAt then
ubof.capAt = os.clock() + 2
ubof.refreshScaleCap()
end

if os.clock() >= ubof.statusAt then
ubof.statusAt = os.clock() + 2

local zi = ubof.autoLoadName()
local mj = table.concat({
_d("I0FAHVcBHQNQDlI") .. (zi or _d("DFtaFw")),
_d("MVVCFwRXUg") .. tostring(#ubof.saves()),
ubof.lastText,
}, _d("aA"))

if mj ~= ubof.shownStatus then
ubof.shownStatus = mj

pcall(function()
ubof.statusParagraph:UpdateBody(mj)
end)
end
end

task.wait(0.25)
end
end)

task.spawn(function()
while ha() do

local ilz = ubof.scalePending

if ilz and os.clock() - (ubof.scalePendingAt or 0) > 0.35 then
local wria = ubof.scaleCeiling()
local keqo = math.clamp(ilz, 0.5, wria)

ubof.scalePending = nil

if math.abs(keqo - ubof.scaleTarget) > 0.002 then
ubof.scaleTarget = keqo
ubof.scaleAnchor = nil

ubof.saveUi()
end
end

if math.abs(ubof.scaleTarget - ubof.scale) > 0.002 then
local zguh = ubof.guiRoot()

if zguh and not ubof.baseWidth then
ubof.baseWidth = zguh.Size.X.Offset
ubof.baseHeight = zguh.Size.Y.Offset
end

local ofzo = ubof.baseWidth or 720
local ef = ubof.baseHeight or 500
local jes = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local ybv, pfk = 8, 40

if not ubof.scaleAnchor and zguh then

local nka = ubof.widthFactor(ubof.scaleTarget)
local yhnl, mnde = ofzo * nka * ubof.scaleTarget, ef * ubof.scaleTarget
local wsj = zguh.AbsolutePosition

ubof.scaleAnchor = Vector2.new(
math.clamp(wsj.X, ybv, math.max(ybv, jes.X - yhnl - ybv)),
math.clamp(wsj.Y, pfk, math.max(pfk, jes.Y - mnde - ybv))
)
end

local gck = ubof.scaleAnchor

ubof.scale = ubof.scale + (ubof.scaleTarget - ubof.scale) * 0.18

local fji = ubof.widthFactor(ubof.scale)

pcall(function()
torj:SetScale(ubof.scale)

if zguh then
local hmo = math.floor(ofzo * fji)

zguh.Size = UDim2.fromOffset(hmo, math.floor(ef))

local zz = zguh:FindFirstChild(_d("IVtaBhIDBg"))

if zz then
local lfd = zguh:FindFirstChild(_d("MV1QFxUMAA"))
local yof = math.floor(lfd and lfd.Size.X.Scale * hmo or hmo * 0.325)

zz.Size = UDim2.new(0, math.max(0, hmo - yof), 1, 0)
end
end
end)

if zguh and gck then
local tyx, lm = ofzo * fji * ubof.scale, ef * ubof.scale
local hwnr = math.clamp(gck.X, ybv, math.max(ybv, jes.X - tyx - ybv))
local pm = math.clamp(gck.Y, pfk, math.max(pfk, jes.Y - lm - ybv))

local dpe = zguh.Parent and zguh.Parent.AbsolutePosition or Vector2.zero

pcall(function()
zguh.Position = UDim2.fromOffset(math.floor(hwnr - dpe.X), math.floor(pm - dpe.Y))
end)
end
else

ubof.scaleAnchor = nil
end

task.wait()
end
end)

pxa.misc.tierLabels = {}
pxa.misc.labelToTier = {}

pxa.misc.expSection = pxa.misc.tab:Section({
Side = _d("LlFSBg"),
})

pxa.misc.expSection:Header({
Name = _d("J0xEFxMEBgtbWgFXne31ttvK+A"),
})

pxa.misc.claimToggle = pxa.misc.expSection:Toggle({
Name = _d("I0FAHVcOHgNdWQ"),
Default = false,
Callback = function(ywv)
local rtnk = pxa.misc.expeditions

rtnk.enabled = ywv
rtnk.claimAt = 0

if ywv then
rtnk.askedAt = 0
rtnk.request()
end
end,
}, _d("A0FAHSgOHgNdWQ"))

pxa.misc.rewardToggle = pxa.misc.expSection:Toggle({
Name = _d("I0FAHVcOHg1HUVIFCAUDRlAB"),
Default = false,
Callback = function(jn)
local ziqx = pxa.misc.expeditions

ziqx.autoClose = jn

if jn then
ziqx.closeRewards()
end
end,
}, _d("B0xELRYYBg1rVx4YHhc"))

pxa.misc.startToggle = pxa.misc.expSection:Toggle({
Name = _d("I0FAHVceBgNGQA"),
Default = false,
Callback = function(wb)
local uh = pxa.misc.expeditions

if wb and not next(uh.tiersWanted) then
uh.autoStart = false

pcall(function()
pxa.misc.startToggle:UpdateState(false)
end)

torj:Dialog({
Title = _d("I0FAHVceBgNGQFIZCBcGRxQTVxkbB0Y"),
Description = _d("Ml1XGVcMBkJYURMEGVINWlFSAwQXEBRdHFcZGgcUYBsSH1IGRlsCEwIFDBRSGwUeBkwUcRMEFFIWVV8XBE0GClEUER8IExJRRwZXDhMQUEdeVyMbBVxAHxYfF0JAXBdXHxMQUUcGW00TDFAUExkUUgxBWRASH1INUhQGHwgfQldVHFcfBwwUVQZXAhwBURo"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})

return
end

uh.autoStart = wb
uh.startedAt = {}

if wb then
uh.askedAt = 0
uh.request()
end
end,
}, _d("A0FAHSgeBgNGQA"))

for nqn, vcps in ipairs(pxa.misc.expeditions.tiers()) do
table.insert(pxa.misc.tierLabels, tostring(vcps.name))
pxa.misc.labelToTier[tostring(vcps.name)] = vcps.id
end

pxa.misc.building = true

pxa.misc.tierDropdown = pxa.misc.expSection:Dropdown({
Name = _d("Nl1RAA"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = pxa.misc.tierLabels,
Callback = function(fgg)
local jpdy = pxa.misc.expeditions

if pxa.misc.building then
return
end

local yfm = {}
local mkpz = {}

if type(fgg) == _d("FlVWHhI") then
for mo, tslz in pairs(fgg) do
local brfd = pxa.misc.labelToTier[tostring(mo)]

if tslz and brfd then
yfm[brfd] = true
table.insert(mkpz, tostring(mo))
end
end
end

table.sort(mkpz)
jpdy.tiersWanted = yfm

pcall(function()
pxa.misc.tierDropdown:UpdateName(#mkpz > 0 and (_d("Nl1RAFeP8sAU") .. table.concat(mkpz, _d("ThQ"))) or _d("Nl1RAFeP8sAUWh0ZCA"))
end)
end,
}, _d("Fl1RAA"))

task.defer(function()
pxa.misc.building = false
end)

pxa.misc.expSection:Button({
Name = _d("IVhVGxpNHA1D"),
Callback = function()
local utie = pxa.misc.expeditions

if not utie.claim() then
torj:Notify({
Title = _d("J0xEFxMEBgtbWgE"),
Description = _d("LFtAGh4DFUJcVQFXDh0PURQQFg4ZQk1RBlk"),
Lifetime = 5,
})
end
end,
})

pxa.misc.expSection:Button({
Name = _d("MVFaFlceFw5RVwYSCQ"),
Callback = function()
local xhh = pxa.misc.expeditions

if not next(xhh.tiersWanted) then
torj:Notify({
Title = _d("J0xEFxMEBgtbWgE"),
Description = _d("Ml1XGVcMBkJYURMEGVINWlFSAwQXEBRdHFcZGgcUUAAYHRYNQ1pSEQQAEUAa"),
Lifetime = 5,
})

return
end

local iij = {}
local vcu = 0

for bhd, ppez in ipairs(xhh.tiers()) do
if xhh.tiersWanted[ppez.id] and xhh.status(ppez.id) == _d("A0JVGxsMEA5R") then
if xhh.start(ppez.id, iij) then
vcu = vcu + 1
end
end
end

if vcu == 0 then
torj:Notify({
Title = _d("J0xEFxMEBgtbWgE"),
Description = _d("LFtAGh4DFUJXWwcbCVIAURQBEgMGWBRAGhJNAQdYUREDCBZCQF0XBR5SA0ZRUhYBAAdVUAtXAgcWGBQdBU0GClFGF1cMAAcUWh0DTRQNQUZSEgEbBV1WHhJNEQNGUAFXCx0QFEAaEgBc"),
Lifetime = 6,
})
end
end,
})

pxa.misc.expInfo = pxa.misc.tab:Section({
Side = _d("MF1TGgM"),
})

pxa.misc.expInfo:Header({
Name = _d("J0xEFxMEBgtbWgE"),
})

pxa.misc.expParagraph = pxa.misc.expInfo:Paragraph({
Header = _d("MUBVBgIe"),
Body = pxa.misc.expeditions.text(),
})

pxa.misc.expeditions.loadRewards()

pxa.misc.expRewardParagraph = pxa.misc.expInfo:Paragraph({
Header = _d("IVhVGxoIFg"),
Body = pxa.misc.expeditions.rewardsText(),
})

task.spawn(function()
local mqtz = pxa.misc.expeditions
local kqgl = mkay(_d("MU1aETIVAgdQXQYeAhwR"), 3)

if kqgl then
wdaq(kqgl.OnClientEvent, function(gk)
if type(gk) ~= _d("FlVWHhI") then
return
end

mqtz.state = gk

mqtz.offset = (tonumber(gk.now) or os.time()) - os.time()
mqtz.syncedAt = os.clock()

if type(gk.rewards) == _d("FlVWHhI") and #gk.rewards > 0 then
table.insert(mqtz.rewardLog, 1, {
at = os.time(),
title = tostring(gk.rewardTitle or _d("J0xEFxMEBgtbWg")),
items = gk.rewards,
})

while #mqtz.rewardLog > 8 do
table.remove(mqtz.rewardLog)
end

mqtz.saveRewards()

if mqtz.autoClose then

task.delay(0.35, mqtz.closeRewards)
end
end
end)
end

while ha() do

if os.clock() - mqtz.askedAt > 1 and os.clock() - mqtz.syncedAt > 20 then
mqtz.request()
end

if mqtz.enabled then
mqtz.claim()
end

if mqtz.autoClose then
mqtz.closeRewards()
end

if mqtz.autoStart and next(mqtz.tiersWanted) then
local bxwm = {}

for rbl, giu in ipairs(mqtz.tiers()) do
if mqtz.tiersWanted[giu.id] and mqtz.status(giu.id) == _d("A0JVGxsMEA5R") then
if mqtz.start(giu.id, bxwm) then
break
end
end
end
end

local rkwm = mqtz.text()

if pxa.misc.expParagraph and rkwm ~= pxa.misc.expShown then
pxa.misc.expShown = rkwm

pcall(function()
pxa.misc.expParagraph:UpdateBody(rkwm)
end)
end

local dqr = mqtz.rewardsText()

if pxa.misc.expRewardParagraph and dqr ~= mqtz.rewardsShown then
mqtz.rewardsShown = dqr

pcall(function()
pxa.misc.expRewardParagraph:UpdateBody(dqr)
end)
end

task.wait(0.75)
end
end)

pxa.misc.util = {
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

function pxa.misc.util.hook()
local sty = pxa.misc.util

if sty.hooked then
return
end

sty.hooked = true

if evk.SyncCollection then
wdaq(evk.SyncCollection.OnClientEvent, function(twfy)
if type(twfy) == _d("FlVWHhI") then
sty.profile = twfy
sty.profileAt = os.clock()
end
end)
end

if evk.SyncAchievements then
wdaq(evk.SyncAchievements.OnClientEvent, function(cqlw)
if type(cqlw) == _d("FlVWHhI") then
sty.ach = cqlw
end
end)
end

if evk.SyncQuests then
wdaq(evk.SyncQuests.OnClientEvent, function(ffn)
if type(ffn) == _d("FlVWHhI") and type(ffn.list) == _d("FlVWHhI") then
sty.quests = ffn
end
end)
end

if evk.SyncPeriodicQuests then
wdaq(evk.SyncPeriodicQuests.OnClientEvent, function(yryz, eyd)
if yryz == _d("FVFRGRsU") and type(eyd) == _d("FlVWHhI") and type(eyd.list) == _d("FlVWHhI") then
sty.weekly = eyd
end
end)
end
end

function pxa.misc.util.askProfile()
local ctyz = pxa.misc.util

if os.clock() - ctyz.askedAt < 1.5 then
return
end

ctyz.askedAt = os.clock()

if evk.RequestSync then
pcall(function()
evk.RequestSync:FireServer()
end)
end
end

function pxa.misc.util.currentProfile()
local piic = pxa.misc.util

if type(piic.profile) ~= _d("FlVWHhI") then
piic.askProfile()

return nil
end

if os.clock() - piic.profileAt > 20 then
piic.askProfile()
end

return piic.profile
end

function pxa.misc.util.forgetProfile()
local tkv = pxa.misc.util

tkv.profile = nil
tkv.profileAt = 0
tkv.askedAt = 0
end

function pxa.misc.util.indexedTotal(jur)
local ozr = 0

for ka, xdkg in pairs((jur and jur.cardIndex) or {}) do
if xdkg then
ozr = ozr + 1
end
end

return ozr
end

function pxa.misc.util.indexPending(oufx)
local ux = {}

if type(oufx) ~= _d("FlVWHhI") then
return ux
end

local mb = pxa.misc.util.indexedTotal(oufx)
local pcol = oufx.indexMilestones or {}

for skh = 1, 30 do
if not pcol[skh] and skh * 5 <= mb then
table.insert(ux, skh)
end
end

return ux
end

function pxa.misc.util.indexFrame()
local dxz = hzia:FindFirstChild(_d("IVVGFj4DFgdMcwce"))

return dxz and dxz:FindFirstChild(_d("K1pQFw8rAANZUQ"))
end

function pxa.misc.util.clickButton(sz)
if not sz then
return false
end

if firesignal then
local kcw = pcall(firesignal, sz.MouseButton1Click)

if kcw then
return true
end
end

return pcall(function()
sz:Activate()
end)
end

function pxa.misc.util.closeIndex()
local cnd = pxa.misc.util.indexFrame()

if not cnd or not cnd.Visible then
return false
end

pcall(function()
local urrn = wtba:FindFirstChild(_d("L1tQBxsIIQFGXQIDHg"))
local uww = urrn and urrn:FindFirstChild(_d("L1FaBzoMHANTUQA"))

if uww then
require(uww).close(cnd)
end
end)

pxa.misc.util.clickButton(cnd:FindFirstChild(_d("IVhbARIvBxZAWxw")))

pcall(function()
cnd.Visible = false
end)

return true
end

function pxa.misc.util.claimIndex()
local asfd = pxa.misc.util

if os.clock() < asfd.indexAt then
return false
end

local aeev = asfd.currentProfile()

if not aeev then
return false
end

local mnk = asfd.indexPending(aeev)
local whgr = mnk[1]

if not whgr then
return false
end

local qfbo = asfd.indexedTotal(aeev)
local lgqz = asfd.indexAsked

if type(lgqz) == _d("FlVWHhI") and lgqz.milestone == whgr and lgqz.total == qfbo then
return false
end

asfd.indexAsked = { milestone = whgr, total = qfbo }

pcall(function()
evk.ClaimIndexReward:FireServer(whgr)
end)

asfd.indexAt = os.clock() + 1.5

asfd.profile = nil
asfd.profileAt = 0

task.delay(0.4, asfd.closeIndex)

return true
end

function pxa.misc.util.achPending()
local ico = {}
local fseb = pxa.misc.util.ach

if type(fseb) ~= _d("FlVWHhI") then
return ico
end

for vede, tog in ipairs(fseb.chains or {}) do
for mnv, jdbm in ipairs(tog.levels or {}) do
if jdbm.reached and not jdbm.claimed then
table.insert(ico, { chain = tostring(tog.id), index = jdbm.index, name = tostring(jdbm.name or jdbm.index) })
end
end
end

return ico
end

function pxa.misc.util.claimAchievement()
local beo = pxa.misc.util

if os.clock() < beo.achAt then
return false
end

if type(beo.ach) ~= _d("FlVWHhI") then
if os.clock() - beo.achAskedAt > 4 and evk.RequestAchievements then
beo.achAskedAt = os.clock()

pcall(function()
evk.RequestAchievements:FireServer()
end)
end

return false
end

for mxk, jqg in ipairs(beo.achPending()) do
pcall(function()
evk.ClaimAchievement:FireServer(jqg.chain, jqg.index)
end)

beo.achAt = os.clock() + 1

task.delay(1, function()
if evk.RequestAchievements then
pcall(function()
evk.RequestAchievements:FireServer()
end)
end
end)

return true
end

return false
end

function pxa.misc.util.questRows()
local dzb = pxa.misc.util
local ngzv = {}

for fiju, bd in ipairs({ { list = _d("BlVdHg4"), payload = dzb.quests }, { list = _d("FVFRGRsU"), payload = dzb.weekly } }) do
for mzz, quz in ipairs((type(bd.payload) == _d("FlVWHhI") and bd.payload.list) or {}) do
if type(quz) == _d("FlVWHhI") then
table.insert(ngzv, { list = bd.list, index = mzz, quest = quz })
end
end
end

return ngzv
end

function pxa.misc.util.questPending()
local haq = {}

for yn, uaz in ipairs(pxa.misc.util.questRows()) do
local vj = uaz.quest

if not vj.claimed and (tonumber(vj.progress) or 0) >= (tonumber(vj.target) or math.huge) then
table.insert(haq, uaz)
end
end

return haq
end

function pxa.misc.util.askQuests()
local pqz = pxa.misc.util

if os.clock() - pqz.questAskedAt > 4 and evk.RequestQuests then
pqz.questAskedAt = os.clock()

pcall(function()
evk.RequestQuests:FireServer()
end)
end

if os.clock() - pqz.weeklyAskedAt > 4 and evk.RequestPeriodicQuests then
pqz.weeklyAskedAt = os.clock()

pcall(function()
evk.RequestPeriodicQuests:FireServer(_d("FVFRGRsU"))
end)
end
end

function pxa.misc.util.claimQuest()
local vpos = pxa.misc.util

if os.clock() < vpos.questAt then
return false
end

if type(vpos.quests) ~= _d("FlVWHhI") and type(vpos.weekly) ~= _d("FlVWHhI") then
vpos.askQuests()

return false
end

for ijrj, fen in ipairs(vpos.questPending()) do
if fen.list == _d("FVFRGRsU") then
if evk.ClaimPeriodicQuest then
pcall(function()
evk.ClaimPeriodicQuest:FireServer(_d("FVFRGRsU"), fen.index)
end)
end
else
pcall(function()
evk.ClaimQuest:FireServer(fen.index)
end)
end

vpos.questAt = os.clock() + 1.2

task.delay(1, function()
vpos.askQuests()
end)

return true
end

return false
end

function pxa.misc.util.packCatalog()
local lurt = pxa.misc.util

if lurt.packs then
return lurt.packs
end

local tfi = {}
local jiga, gny = pcall(function()
return require(wtba.ModuleScripts.PackData)
end)

if jiga and type(gny) == _d("FlVWHhI") and type(gny.Packs) == _d("FlVWHhI") then
for hqct, yyqy in ipairs(gny.Packs) do
if yyqy.id then
table.insert(tfi, { id = tostring(yyqy.id), name = tostring(yyqy.name or yyqy.id) })
end
end
end

lurt.packs = tfi

return tfi
end

function pxa.misc.util.packUnlocked(lce, yytz)
if type(lce) ~= _d("FlVWHhI") then
return true
end

local lvx, nvb = pcall(function()
return require(wtba.ModuleScripts.PackData)
end)
local ognf, hyro = pcall(function()
return require(wtba.ModuleScripts.PackSlotData)
end)

if not (lvx and ognf) then
return true
end

local qqh = nvb.ById and nvb.ById[yytz]

if not qqh then
return false
end

local gsic, ivwe = pcall(hyro.isPackUnlocked, qqh, lce)

return (not gsic) or ivwe == true
end

function pxa.misc.util.visit(xfuu)
local efqx = workspace:FindFirstChild(_d("LGR3AQ"))
local tg = efqx and efqx:FindFirstChild(xfuu)
local qibl = aqzz.Character
local nip = qibl and qibl:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))
local kmn = tg and (tg:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA")) or tg:FindFirstChildWhichIsA(_d("IFVHFycMABY"), true))

if not (kmn and nip) then
return nil
end

local uy = nip.CFrame

nip.CFrame = CFrame.new((kmn.CFrame * CFrame.new(0, 0, -5)).Position)

return uy
end

function pxa.misc.util.returnTo(alqk)
local pls = aqzz.Character
local dtu = pls and pls:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if dtu and alqk then
dtu.CFrame = alqk
end
end

function pxa.misc.util.applyPacks(qprs, wkub)
local igha = pxa.misc.util

if os.clock() < igha.packAt then
return false, _d("NVVdBlcMUg9bWRcZGVw")
end

local hhp = igha.currentProfile()

if not hhp then
return false, _d("MFFVFh4DFUJNWwcFTQIQW1IbGwhSTxRAAA5NEwVVXRxXBBxCVRQBEg4dDFAa")
end

if wkub and (tonumber(hhp.packSlots) or 1) < 2 then
return false, _d("MVhbBldfUgxRURYETQYKURQXDxkAAxREExQGUhFYWwZXChMPUUQTBB5c")
end

if not (evk.OpenPackShop and evk.EquipPack) then
return false, _d("NlxRUgcMEQkURxoYHVILRxQcGBlSC1oUBh8EAUJTVR8STQQHRkcbGANc")
end

igha.packAt = os.clock() + 8

task.spawn(function()
local rwg = igha.visit(_d("LFtWHhIeAQtaUwE"))

if not rwg then
return
end

pcall(function()
evk.OpenPackShop:FireServer(_d("ElVXGSgAFxBXXBMZGQ"))
end)

task.wait(1.2)

if qprs then
pcall(function()
evk.EquipPack:FireServer(qprs, 1)
end)
end

if wkub then
task.wait(0.8)

pcall(function()
evk.EquipPack:FireServer(wkub, 2)
end)
end

task.wait(0.8)
igha.returnTo(rwg)
igha.forgetProfile()
end)

return true
end

function pxa.misc.util.accScore(jvic)
local ui = jvic.effects or {}

return (ui.luckBonus or 0) * 10
+ ((ui.luckMult or 1) - 1) * 200
+ ((ui.borderLuckMult or 1) - 1) * 200
- ((ui.rollCdMult or 1) - 1) * 30
end

function pxa.misc.util.accCatalog()
local nax = pxa.misc.util

if nax.accessories then
return nax.accessories
end

local xowi = {}

for spms, ineg in ipairs({ _d("I1dXFwQeHRBNcBMDDA"), _d("I1dXFwQeHRBNcBMDDEA") }) do
local hg, mjr = pcall(function()
return require(wtba.ModuleScripts[ineg])
end)

if hg and type(mjr) == _d("FlVWHhI") and type(mjr.Accessories) == _d("FlVWHhI") then
for lnn, eydf in ipairs(mjr.Accessories) do
if eydf.id then
table.insert(xowi, {
id = tostring(eydf.id),
name = tostring(eydf.name or eydf.id),
shop = spms,

shopName = spms == 1 and _d("I1dXFwQeHRBNFCEfAgI") or _d("L01HBhIfGw1BR1I6DBw"),
raidable = eydf.raidShopOnly == true,
hidden = eydf.hidden == true,
requirements = eydf.requirements or {},
score = pxa.misc.util.accScore(eydf),
})
end
end
end
end

nax.accessories = xowi

return xowi
end

function pxa.misc.util.accOwned(gru)
local izwz = {}

for yry, xemb in ipairs((gru and gru.accessories) or {}) do
izwz[tostring(xemb)] = true
end

return izwz
end

function pxa.misc.util.accMeets(jyt, zss)
for aior, bpyr in ipairs(zss.requirements) do
local ycit = jyt.cards and jyt.cards[bpyr.cardId]
local my = type(ycit) == _d("FlVWHhI") and (tonumber(ycit[bpyr.borderLevel]) or 0) or 0

if my < (tonumber(bpyr.amount) or 0) then
return false
end
end

return true
end

function pxa.misc.util.accPlan(zkmk)
local bqac = pxa.misc.util
local urrj = bqac.accOwned(zkmk)
local wzhc = {}

for klso, xtz in ipairs(bqac.accCatalog()) do
if not urrj[xtz.id] and not xtz.raidable and not xtz.hidden and bqac.accMeets(zkmk, xtz) then
local flm = wzhc[xtz.shop]

if not flm or xtz.score > flm.score then
wzhc[xtz.shop] = xtz
end
end
end

return wzhc
end

function pxa.misc.util.accPicks(fgcl)
local wqb = pxa.misc.util
local zqi = wqb.accOwned(fgcl)
local ktnu, px

for dj, oxb in ipairs(wqb.accCatalog()) do
if zqi[oxb.id] then
if not ktnu or oxb.score > ktnu.score then
ktnu = oxb
end
elseif not oxb.raidable and not oxb.hidden and wqb.accMeets(fgcl, oxb) then
if not px or oxb.score > px.score then
px = oxb
end
end
end

return ktnu, px
end

function pxa.misc.util.equipBest()
local zgd = pxa.misc.util
local jqda = zgd.currentProfile()

if not jqda or not evk.EquipAccessory then
return false
end

local tta = zgd.accPicks(jqda)

if not tta or jqda.equippedAccessory == tta.id then
return tta ~= nil
end

pcall(function()
evk.EquipAccessory:FireServer(tta.id)
end)

task.delay(1.5, function()
zgd.forgetProfile()
end)

return true
end

function pxa.misc.util.buyBest()
local tbz = pxa.misc.util

if os.clock() < tbz.accAt then
return false, _d("NVVdBlcMUg9bWRcZGVw")
end

if ne.busy(1) or ne.busy(2) then
tbz.accNote = _d("K1oUE1cPExZAWBdXQFIDFEcaGB1SFkZdAlcaHRdYUFISAxZCXUA")
return false, _d("K1oUE1cPExZAWBdXQFIDFEcaGB1SFkZdAlcaHRdYUFISAxZCXUBc")
end

local bzjz = tbz.currentProfile()

if not bzjz then
tbz.accNote = _d("MFFVFh4DFUJNWwcFTQIQW1IbGwhSTxRDGxsBUhZGTVIWChMLWhQbGU0TQkdRERgDFg")
return false, _d("MFFVFh4DFUJNWwcFTQIQW1IbGwhSTxRAAA5NEwVVXRxXBBxCVRQBEg4dDFAa")
end

local cyn = tbz.accPlan(bzjz)
local itzk = {}

for nkfc = 1, 2 do
if cyn[nkfc] then
table.insert(itzk, cyn[nkfc].name)
end
end

if #itzk == 0 then
tbz.accNote = _d("LFtAGh4DFUJaUQVXGBwOW1cZEglSG1FAUlpNBgpRFBEWHxYRFFIdBU0bFhRVABJNHA1AFBsZTQYKURQRGAEeB1dAGxgD")
return false, _d("LFtAGh4DFUJaUQVXDhMMFFYXVxgcDltXGRIJUhtRQFJaTQYKURQRFh8WERRSHQVNGxYUVQASTRwNQBQbGU0GClEUERgBHgdXQBsYA1w")
end

tbz.accAt = os.clock() + 12
tbz.accNote = _d("NVVYGR4DFUJAW1IDBRdCV1sHGRkXEBRSHQVN") .. table.concat(itzk, _d("QlVaFlc"))

task.spawn(function()
for huo = 1, 2 do
local goev = cyn[huo]

if goev then
local kjqc = huo == 1 and _d("EkFGAQIEBgdQUA") or _d("FVVSFBIBHwNaURMDHgUDUlIXGx4")
local hkwa = huo == 1 and evk.OpenAccessoryShop or evk.OpenAccessoryShop2
local cpx = huo == 1 and evk.BuyAccessory or evk.BuyAccessory2
local stk = kjqc and tbz.visit(kjqc) or nil

if not stk then
local zskc = workspace:FindFirstChild(_d("LGR3AQ"))
local gvma = zskc and zskc:FindFirstChild(kjqc)

if gvma and os.clock() - (tbz.worldAskedAt or 0) > 25 then

tbz.worldAskedAt = os.clock()
tbz.accNote = _d("IVxVABYOBgdGFBwYGVIQUVUWDk1fQkBGCx4DFUJVUxMeA1IRXFsAAwEL")
elseif not gvma and os.clock() - (tbz.worldAskedAt or 0) > 25 then

tbz.worldAskedAt = os.clock()
tbz.accNote = _d("LFsUERgYHBZRRlIeA1IWXF0BVxodEFhQUlpNBgNfXRwQTQYKURQeGA8QGxRAFxsIAg1GQA")

pcall(function()
evk.TeleportToWorld:FireServer(_d("DltWEA4"))
end)

task.wait(4.5)
stk = tbz.visit(kjqc)
end
end

if stk and hkwa and cpx then

task.wait(0.9)

pcall(function()
hkwa:FireServer()
end)

task.wait(1.2)

pcall(function()
cpx:FireServer(goev.id)
end)

task.wait(0.9)
tbz.returnTo(stk)
tbz.accNote = _d("IFtBFR8ZUg") .. tostring(goev.name)
elseif not stk then
tbz.accNote = _d("IVtBHhNNHA1AFAASDBEKFEAaEk0RDUFaBhIfUk8UQAAOTRMFVV0cVwQcQlUUHxgAFwxA")
end

task.wait(0.6)
end
end

tbz.forgetProfile()

for crl = 1, 8 do
if type(tbz.profile) == _d("FlVWHhI") then
break
end

tbz.askProfile()
task.wait(0.7)
end

tbz.equipBest()
end)

return true, table.concat(itzk, _d("ThQ"))
end

function pxa.misc.util.indexText()
local ds = pxa.misc.util

if type(ds.profile) ~= _d("FlVWHhI") then
return _d("MFFVFh4DFUJNWwcFTREDRlBSHgMWB0waXFk")
end

local yztv = ds.indexPending(ds.profile)
local fpg = 0

for kmr, dd in pairs(ds.profile.indexMilestones or {}) do
if dd then
fpg = fpg + 1
end
end

local dsvm = tostring(ds.indexedTotal(ds.profile)) .. _d("QldVABMeUgtaUBcPCBZOFA") .. tostring(fpg) .. _d("QltSUkRdUhBRQxMFCQFCV1gTHgAXBg")

if #yztv > 0 then
dsvm = dsvm .. _d("aGZRExMUSEI") .. table.concat(yztv, _d("ThQ"))
end

return dsvm
end

function pxa.misc.util.achText()
local jj = pxa.misc.util

if type(jj.ach) ~= _d("FlVWHhI") then
return _d("MFFVFh4DFUJVVxoeCAQHWVEcAx5cTBo")
end

local nr = jj.achPending()
local alex = 0

for dfrt, ny in ipairs(jj.ach.chains or {}) do
for hpch in ipairs(ny.levels or {}) do
alex = alex + 1
end
end

return tostring(#nr) .. _d("QltSUg") .. tostring(alex) .. _d("QlVXGh4IBAdZURwDHlIQUVUWDg")
end

function pxa.misc.util.questText()
local zlb = pxa.misc.util

if type(zlb.quests) ~= _d("FlVWHhI") and type(zlb.weekly) ~= _d("FlVWHhI") then
return _d("MFFVFh4DFUJFQRcEGQFMGho")
end

local pnl, sowf = 0, 0

for btr, vbah in ipairs(zlb.questPending()) do
if vbah.list == _d("FVFRGRsU") then
sowf = sowf + 1
else
pnl = pnl + 1
end
end

local svnf = type(zlb.quests) == _d("FlVWHhI") and #(zlb.quests.list or {}) or 0
local nk = type(zlb.weekly) == _d("FlVWHhI") and #(zlb.weekly.list or {}) or 0

return tostring(pnl) .. _d("QltSUg") .. tostring(svnf) .. _d("QlBVGxsUUhBRVRYOZw")
.. tostring(sowf) .. _d("QltSUg") .. tostring(nk) .. _d("QkNRFxwBC0JGURMTFA")
end

function pxa.misc.util.packText()
local hzpd = pxa.misc.util
local dl = hzpd.profile

if type(dl) ~= _d("FlVWHhI") then
return _d("MFFVFh4DFUJNWwcFTQIDV18BWUNc")
end

local function kze(djg)
for nw, phj in ipairs(hzpd.packCatalog()) do
if phj.id == djg then
return phj.name
end
end

return tostring(djg)
end

local kjz = _d("MVhbBldcSEI") .. kze(dl.equippedPack)

if (tonumber(dl.packSlots) or 1) >= 2 then
kjz = kjz .. _d("aGdYHQNNQFgU") .. kze(dl.equippedPack2)
else
kjz = kjz .. _d("aGdYHQNNQFgUUxMaCAIDR0dSGQIGQltDHBIJ")
end

return kjz
end

function pxa.misc.util.accText()
local skm = pxa.misc.util
local fjmc = skm.profile

if type(fjmc) ~= _d("FlVWHhI") then
return _d("MFFVFh4DFUJNWwcFTRMBV1EBBAIAC1FHXFlD")
end

local urt = skm.accPicks(fjmc)
local zsgn = skm.accPlan(fjmc)
local vqbq = _d("DFtaFw")

for lmz, dm in ipairs(skm.accCatalog()) do
if dm.id == fjmc.equippedAccessory then
vqbq = dm.name .. _d("Qhw") .. dm.shopName .. _d("Sw")
end
end

local qzcl = _d("J0VBGwcdFwYOFA") .. vqbq

if urt then
qzcl = qzcl .. _d("aHZRAQNNHRVaURZNTQ") .. urt.name
end

qzcl = qzcl .. _d("aHVXERIeAQ1GTVIkBR0SDhQ") .. (zsgn[1] and zsgn[1].name or _d("DFtAGh4DFUJaUQU"))
qzcl = qzcl .. _d("aHlNAQMIAAtbQQFXIBMMDhQ") .. (zsgn[2] and zsgn[2].name or _d("DFtAGh4DFUJaUQU"))

if skm.accNote then
qzcl = qzcl .. _d("aHhVAQNNBhBdREhX") .. skm.accNote
end

return qzcl
end

pxa.misc.util.hook()
pxa.misc.util.askProfile()

pxa.misc.indexSection = pxa.misc.tab:Section({
Side = _d("LlFSBg"),
})

pxa.misc.indexSection:Header({
Name = _d("IVVGFlckHAZRTFKH8uHl"),
})

pxa.misc.indexToggle = pxa.misc.indexSection:Toggle({
Name = _d("I0FAHVcOHgNdWQ"),
Default = false,
Callback = function(qw)
pxa.misc.util.indexOn = qw
pxa.misc.util.indexAt = 0

pxa.misc.util.indexAsked = nil
end,
}, _d("A0FAHSgOHgNdWS1F"))

pxa.misc.indexSection:Button({
Name = _d("IVhVGxpNHA1D"),
Callback = function()
local rlwx = pxa.misc.util

rlwx.indexAt = 0
rlwx.indexAsked = nil

if not rlwx.claimIndex() then
torj:Notify({
Title = _d("IVVGFlckHAZRTA"),
Description = _d("LFsUHx4BFxFAWxwSTRsRFEYXFgkLQkBbUhQBEwtZGg"),
Lifetime = 5,
})
end
end,
})

pxa.misc.claimSection = pxa.misc.tab:Section({
Side = _d("LlFSBg"),
})

pxa.misc.claimSection:Header({
Name = _d("I1dcGxIbFw9RWgYETVRCZUEXBBkBQsSr/fE"),
})

pxa.misc.achToggle = pxa.misc.claimSection:Toggle({
Name = _d("I0FAHVcOHgNdWVIWDhoLUUIXGggcFkc"),
Default = false,
Callback = function(xoq)
pxa.misc.util.achOn = xoq
pxa.misc.util.achAt = 0

if xoq and evk.RequestAchievements then
pcall(function()
evk.RequestAchievements:FireServer()
end)
end
end,
}, _d("A0FAHSgOHgNdWS0WDhoLUUIXGggcFkc"))

pxa.misc.questToggle = pxa.misc.claimSection:Toggle({
Name = _d("I0FAHVcOHgNdWVIGGBcRQEc"),
Default = false,
Callback = function(ckg)
pxa.misc.util.questOn = ckg
pxa.misc.util.questAt = 0
pxa.misc.util.questAskedAt = 0
pxa.misc.util.weeklyAskedAt = 0

if ckg then
pxa.misc.util.askQuests()
end
end,
}, _d("A0FAHSgOHgNdWS0GGBcRQEc"))

pxa.misc.claimSection:Button({
Name = _d("IVhVGxpNEw5YFBwYGg"),
Callback = function()
local lprb = pxa.misc.util

lprb.achAt = 0
lprb.questAt = 0

local uks = lprb.claimAchievement()
local sdz = lprb.claimQuest()

if not (uks or sdz) then
torj:Notify({
Title = _d("I1dcGxIbFw9RWgYETVRCZUEXBBkB"),
Description = _d("LFtAGh4DFUJdR1IFCBMGTRQGGE0RDlVdH1k"),
Lifetime = 5,
})
end
end,
})

pxa.misc.packSection = pxa.misc.tab:Section({
Side = _d("LlFSBg"),
})

pxa.misc.packSection:Header({
Name = _d("IVVGFlc9EwFfR1KH8vzW"),
})

pxa.misc.packSection:Paragraph({
Header = _d("NkNbUgQBHRZH"),
Body = _d("Ml1XGQRNExJEWAtXAhwOTRQFHwgcQk1bB1cdAAdHR1I2HQIOTRQCFg4ZERgUEBIOExdHUVIDBRdCR0MbAw4aQkNVHhweUhZbFAYfCFIPUUYRHwwcFho"),
})

local qco = {}
local kpi = {}

for zsut, jdm in ipairs(pxa.misc.util.packCatalog()) do
table.insert(qco, jdm.name)
kpi[jdm.name] = jdm.id
end

pxa.misc.packSlotOne = nil
pxa.misc.packSlotTwo = nil

pxa.misc.packDropdownOne = pxa.misc.packSection:Dropdown({
Name = _d("MVhbBldc"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = qco,
Callback = function(jtv)
local vcnd = type(jtv) == _d("FlVWHhI") and jtv[1] or jtv

pxa.misc.packSlotOne = kpi[tostring(vcnd)]
end,
}, _d("EVhbBihc"))

pxa.misc.packDropdownTwo = pxa.misc.packSection:Dropdown({
Name = _d("MVhbBldf"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = qco,
Callback = function(ewzf)
local gn = type(ewzf) == _d("FlVWHhI") and ewzf[1] or ewzf

pxa.misc.packSlotTwo = kpi[tostring(gn)]
end,
}, _d("EVhbBihf"))

pxa.misc.packSection:Button({
Name = _d("I0REHg5NAgNXXwE"),
Callback = function()
local sv = pxa.misc.util
local fbt = pxa.misc.packSlotOne
local xwvz = pxa.misc.packSlotTwo

if not fbt then
torj:Notify({
Title = _d("IVVGFlc9EwFfRw"),
Description = _d("Ml1XGVcMUhJVVxlXCx0QFEceGBlSUxRSGwUeBkw"),
Lifetime = 5,
})

return
end

local dek, img = sv.applyPacks(fbt, xwvz)

if not dek then
torj:Dialog({
Title = _d("IVVGFlc9EwFfRw"),
Description = img,
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})
end
end,
})

pxa.misc.cards = {
rarityLabels = { _d("I1hY"), _d("LFtGHxYB"), _d("JVtYFg"), _d("MFVdHBUCBQ"), _d("N1pdBBIfAQNY") },
borderOf = { Normal = 1, Gold = 2, Rainbow = 3, Universal = 4 },
mergeOn = false,
deconOn = false,
mergeWanted = {},
deconWanted = {},
mergeAt = 0,
deconAt = 0,
mergeDone = _d("LFtAGh4DFUJHURwDTQsHQA"),
deconDone = _d("LFtAGh4DFUJHURwDTQsHQA"),

inFlight = false,

interval = 3600,
manualGap = 20,
manualAt = 0,

protectedPrefixes = { weather = true, boss = true, raid = true, wb = true, fish = true, hw = true, event = true },

deconExceptions = { weather_sayaka = true, weather_caesar = true },

deconConfirmed = false,
burnAskedAt = 0,
}

function pxa.misc.cards.isProtected(bklx, xlce)
local xwoo = pxa.misc.cards
local smtw = tostring(bklx or _d(""))
local oz = smtw:match(_d("PBxvE1oXQk8NaVleMg"))

if not (oz and xwoo.protectedPrefixes[oz]) then
return false
end

return not (xwoo.deconExceptions[smtw] and xlce == 2)
end

function pxa.misc.cards.burnAllowed(wniv)
local yv = pxa.misc.cards
local vifr = yv.wantedFor(_d("BlFXHRk6EwxAURY"))

if not (vifr == nil or vifr[3] or vifr[4]) then
yv.deconConfirmed = false

return true
end

if yv.deconConfirmed then
return true
end

if wniv then
return false
end

if os.clock() < (yv.burnAskedAt or 0) then
return false
end

yv.burnAskedAt = os.clock() + 20

torj:Dialog({
Title = _d("IEFGHFc/EwtaVh0ATR0QFGEcHhsXEEdVHlcOExBQR00"),
Description = _d("I0FAHVcJFwFbWgEDHwcBQBQBEgMWERRRBBIfC0JXWwIOTRsMFEAaEk0fA0BXGh4DFUJGWwUETRMMUBQRFgMcDUAUEBJNBwxQWxwSQ1I")
.. _d("NVFVBh8IAE4UVh0EHl5CRlUbE00QDUdHXlcaHRBYUFIVAgERGBQUHh4aC1pTXlclEw5YWwUSCBxCVVoWVwgEB1pAUhQMAAZHFBMFCFIKUVgWVw8TAV8UFx4ZGgdGFAUWFFw"),
Buttons = {
{
Name = _d("IEFGHFcZGgdZ"),
Callback = function()
yv.deconConfirmed = true
yv.deconAt = 0
yv.manualAt = 0

pcall(function()
pxa.misc.deconToggle:UpdateState(true)
end)
end,
},
{
Name = _d("IVVaERIB"),
Callback = function()
pcall(function()
pxa.misc.deconToggle:UpdateState(false)
end)
end,
},
},
})

return false
end

function pxa.misc.cards.wantedFor(rrt)
local cmdc = pxa.misc.cards[rrt] or {}

if next(cmdc) == nil or cmdc[0] then
return nil
end

return cmdc
end

function pxa.misc.cards.npcFor(bhh)
local kv = workspace:FindFirstChild(_d("LGR3AQ"))

if not kv then
return nil
end

local eoa = bhh and _d("BEFHFygDAgE") or _d("BlFXHRkeBhBBVwYoAwIB")

for hag, pex in ipairs(kv:GetChildren()) do
if pex:GetAttribute(_d("LGR3OxM")) == eoa then
return pex
end
end

local nta = bhh and { _d("LVtEGhsU"), _d("DVtEHg4I") } or { _d("MVxVBxsM"), _d("KlVCFyMaHSZVUAE") }

for uphu, cso in ipairs(kv:GetChildren()) do
for dnjx, ygg in ipairs(nta) do
if cso.Name == ygg then
return cso
end
end
end

local sivy = bhh and { _d("AVVGFlcAFxBTXRwQ"), _d("DVtEGhsU") } or { _d("BlFXHRkeBhBBVwYeAhw"), _d("EVxVBxsM") }

for lhiu, gfjy in ipairs(kv:GetChildren()) do
for imq, avz in ipairs(gfjy:GetDescendants()) do
if avz:IsA(_d("NlFMBjsMEAdY")) and avz.Text ~= _d("") then
local jpy = avz.Text:lower()

for rsd, hbx in ipairs(sivy) do
if jpy:find(hbx, 1, true) then
return gfjy
end
end

break
end
end
end

return nil
end

function pxa.misc.cards.rarityText(hxb)
local ctff = pxa.misc.cards.wantedFor(hxb)

if not ctff then
return _d("I1hY")
end

local imf = {}

for wlv, yfqr in pairs(pxa.misc.cards.borderOf) do
if ctff[yfqr] then
table.insert(imf, wlv)
end
end

if #imf == 0 then
return _d("I1hY")
end

table.sort(imf)

return table.concat(imf, _d("ThQ"))
end

function pxa.misc.cards.run(ldmw, qv, zoxk)
local ibwh = pxa.misc.cards
local bwid = pxa.misc.util
local bvm = ldmw and _d("D1FGFRIsBg") or _d("BlFXHRksBg")

if zoxk then
if os.clock() < ibwh[bvm] then
return false, _d("LFtAUhMYF0JNUQZZ")
end
elseif os.clock() < ibwh.manualAt then
return false, _d("NVVdBlcMUg9bWRcZGVw")
end

if ibwh.inFlight then
return false, _d("I1pbBh8IAEJXVQATTQYQXURSHh5SA1hGFxYJC0JGQRwZBBwFGg")
end

local nemn = ne.busy(1) and 1 or (ne.busy(2) and 2 or nil)
local dvkg = os.clock() - (oqnx.floorAt or 0) < 90
local fmuz = nemn ~= nil and ne.towerSlot() == nemn and dvkg

if nemn and not fmuz then
return false, _d("K1oUE1cPExZAWBdXQFIWXFFSAx8bEhRDHQIBFkJRWhZXBAZM")
end

if uurn.battlePending and os.time() < (uurn.battlePendingUntil or 0) then
return false, _d("IxRWEwMZHgcUXQFXHgYDRkAbGQpSTxRAGhJNBhBdRFIAAgcOUBQRFgMRB1gUGwND")
end

if not ldmw and not ibwh.burnAllowed() then
return false, _d("IVtaFB4fH0JmVRsZDx0VG2EcHhsXEEdVHlcLGxBHQFw")
end

local niyw = ibwh.npcFor(ldmw)

if not niyw then
return false, ldmw
and _d("LVtEGhsUUgtHFBwYGVILWhQGHwQBQllVAldAUhZGVQQSAVIWWxQaHgBSA1pQUgcfFxFHFBsDTRMFVV0cWQ")
or _d("NlxRUhMIEQ1aRwYFGBEWFHoiNE0bERRaHQNNGwwUQBoeHlIPVURSWk0GEFVCFxtNBg0UXQZXDBwGFEQAEh4BQl1AUhYKEwtaGg")
end

local gbvm = ldmw and evk.OpenFuseDialog or evk.OpenDeconstructDialog
local vnk = ldmw and evk.FuseCards or evk.DeconstructCards

if not (gbvm and vnk) then
return false, _d("NlxVBlcEAUJaWwZXBBxCQFwbBE0VA1lRUgEIABFdWxxZ")
end

local rmox = ldmw and _d("D1FGFRI6EwxAURY") or _d("BlFXHRk6EwxAURY")
local ssfc = ibwh.wantedFor(rmox)

ibwh.manualAt = os.clock() + ibwh.manualGap

if zoxk then
ibwh[bvm] = os.clock() + ibwh.interval
end

ibwh.inFlight = true

task.spawn(function()

local gxl = nil

local function lr(wfhe, sdod)
if ldmw then
ibwh.mergeDone = wfhe
else
ibwh.deconDone = wfhe
end

if sdod and zoxk then
ibwh[bvm] = os.clock() + 120
end

ibwh.inFlight = false
end

local riae = bwid.visit(niyw.Name)

if not riae then
lr(_d("IVxVABYOBgdGFBsETRwNQBQAEgwWGxQZUgUIBhBNXRwQTRsMFEAFGE0fC1pBBhIeXA"), true)

return
end

task.wait(0.9)

local el = nil
local hud = wdaq(gbvm.OnClientEvent, function(wwc)
if type(wwc) == _d("FlVWHhI") then
el = wwc
end
end)

for ocey = 1, 3 do
pcall(function()
gbvm:FireServer()
end)

for mvl = 1, 20 do
if el then
break
end

task.wait(0.3)
end

if el then
break
end

task.wait(1.5)
end

hud:Disconnect()
bwid.returnTo(riae)

if type(el) ~= _d("FlVWHhI") then
lr(_d("NlxRUhMEEw5bU1ITBBZCWlsGVwwcEUNRAFdAUhBRQAAOBBwFFF0cVxkFDRRZGxkYBgdHGg"), true)

return
end

local moso = {}

for age, ffgt in ipairs(el) do
local uoel = tonumber(ffgt.borderLevel)
local hdnl = ffgt.cardId or ffgt.id

if uoel and (not ssfc or ssfc[uoel])
and (ldmw or not pxa.misc.cards.isProtected(hdnl, uoel)) then
table.insert(moso, ffgt)
end
end

if #moso == 0 then

pxa.misc.cards.closeFrame(ldmw)
lr(_d("LFtAGh4DFUJAW1IECBwGFFIdBU0") .. pxa.misc.cards.rarityText(rmox) .. _d("TA"))

return
end

if qv then

local jlfr = {}

for sc, amv in ipairs(moso) do
if (tonumber(amv.count) or 0) >= qv then
table.insert(jlfr, amv)
end
end

if #jlfr == 0 then
pxa.misc.cards.closeFrame(ldmw)
lr(_d("LFsU") .. pxa.misc.cards.rarityText(rmox) .. _d("QkZbBVcFExEU") .. qv .. _d("QldbAh4IAUJNUQZZ"))

return
end

moso = jlfr

table.sort(moso, function(gfk, zxl)
return (tonumber(gfk.count) or 0) < (tonumber(zxl.count) or 0)
end)

local xndu, nx = {}, 0

for pva, cwba in ipairs(moso) do
local ebd = tonumber(cwba.count) or 0

if #xndu > 0 and nx + ebd > qv then
break
end

table.insert(xndu, cwba)
nx = nx + ebd
end

moso = xndu
gxl = nx
end

local pqgs = 0

pxa.misc.cards.closeFrame(ldmw)

if ldmw then
if not ssfc then

pcall(function()
vnk:FireServer(_d("A1hY"), nil)
end)

pqgs = #moso
else
local cmlz = {}

for egf, trq in ipairs(moso) do
table.insert(cmlz, { trq.cardId, tonumber(trq.borderLevel) })
end

pcall(function()
vnk:FireServer(_d("EVFYFxQZFwZrVR4b"), cmlz)
end)

pqgs = #cmlz
end
else
local tvk = {}

for onlh, mxuk in ipairs(moso) do
if #tvk >= 25 then
break
end

table.insert(tvk, { mxuk.cardId, tonumber(mxuk.borderLevel), _d("A1hY") })
end

pcall(function()
vnk:FireServer(tvk)
end)

pqgs = #tvk
end

lr(_d("MVFaBlc") .. tostring(pqgs) .. _d("QkZbBQ") .. (pqgs == 1 and _d("") or _d("EQ"))
.. _d("Qhw") .. pxa.misc.cards.rarityText(rmox) .. _d("Sw")
.. (gxl and (_d("ThQ") .. tostring(gxl) .. _d("QldVABMe")) or _d("")))
end)

return true
end

function pxa.misc.cards.closeFrame(bsd)
pcall(function()
local prph = bsd and { _d("JEFHFzAYGw"), _d("JEFHFzEfEw9R") } or { _d("JlFXHRkeBhBBVwYwGBs"), _d("JlFXHRkeBhBBVwYxHxMPUQ") }
local lptv = require(wtba.ModuleScripts.MenuManager)
local biox = hzia:FindFirstChild(prph[1])
local hva = biox and biox:FindFirstChild(prph[2])

if hva then
lptv.close(hva)
end

if not bsd then
local cqn = biox and biox:FindFirstChild(_d("JlFXHRkeBhBBVwYlDAYHR3IAFgAX"))

if cqn then
lptv.close(cqn)
else
cqn = hzia:FindFirstChild(_d("JlFXHRkeBhBBVwYlDAYHR3IAFgAX"))

if cqn then
lptv.close(cqn)
end
end
end
end)
end

function pxa.misc.cards.refresh(lxx)

local yqw = lxx and pxa.misc.mergeParagraph or pxa.misc.deconParagraph

if not yqw then
return
end

pcall(function()
yqw:UpdateBody(lxx
and pxa.misc.cards.mergeText()
or pxa.misc.cards.deconText())
end)
end

function pxa.misc.cards.mergeText()
local ckr = pxa.misc.cards

return _d("MFVGGwMEFxEOFA") .. ckr.rarityText(_d("D1FGFRI6EwxAURY")) .. _d("aA") .. ckr.mergeDone
end

function pxa.misc.cards.deconText()
local ylq = pxa.misc.cards

return _d("MFVGGwMEFxEOFA") .. ylq.rarityText(_d("BlFXHRk6EwxAURY")) .. _d("aA") .. ylq.deconDone
.. _d("aGNREwMFFxAYFBAYHgFOFEYTHgleQkNbABsJUgBbRwFbTRQLR1wbGQpeQnxVHhsCBQdRWlIWAxZCUUIXGRlSAVVGFgRNExBRFBwSGxcQFEcXGRlc")
end

pxa.misc.skill = {
on = false,
at = 0,
mainWanted = {},
raidWanted = {},

mainOrder = {},
raidOrder = {},
last = _d("LFtAGh4DFUJWWwcQBQZCTVEG"),
shown = _d(""),
}

function pxa.misc.skill.branchMap(ayxs)
local htnx = {}

for uyl, dakw in ipairs(gul.Trees[ayxs].branches) do
htnx[dakw.name] = dakw
end

return htnx
end

function pxa.misc.skill.branchLabels(jtdt)
local dqyl = {}

for ozt, cwr in ipairs(gul.Trees[jtdt].branches) do
table.insert(dqyl, cwr.name)
end

return dqyl
end

function pxa.misc.skill.wantedFrom(rai, gki)
local cil = {}
local getv = pxa.misc.skill.branchMap(gki)

if type(rai) == _d("FlVWHhI") then
for mdza, tjy in pairs(rai) do
if tjy and getv[tostring(mdza)] then
cil[getv[tostring(mdza)].id] = true
end
end
end

return cil
end

function pxa.misc.skill.ordered(icqt, flq)
local zpyj = {}
local dc = {}

for ion, bhm in ipairs(flq or {}) do
if icqt[bhm] then
table.insert(zpyj, bhm)
dc[bhm] = true
end
end

for dyxp in pairs(icqt) do
if not dc[dyxp] then
table.insert(zpyj, dyxp)
end
end

return zpyj
end

function pxa.misc.skill.branchById(zf)
local lttv = {}

for vy, ts in ipairs(gul.Trees[zf].branches) do
lttv[ts.id] = ts
end

return lttv
end

function pxa.misc.skill.upgrade()
local ukm = pxa.misc.skill
local fwqc = pxa.misc.util
local zrx = fwqc.currentProfile and fwqc.currentProfile()

if type(zrx) ~= _d("FlVWHhI") then
return false, _d("LFsUAgUCFAtYUVIOCAZM")
end

local dnb = zrx.skillTrees or {}
local qi = { [1] = ukm.mainOrder, [2] = ukm.raidOrder }
local lgcz = nil

for pwm, mng in ipairs(gul.Trees) do
local qqaa = dnb[mng.id]
local xty = tonumber(zrx[mng.pointsField or _d("EV9dHhs9HQtaQAE")]) or 0
local gro = pxa.misc.skill.branchById(pwm)

if type(qqaa) == _d("FlVWHhI") and xty > 0 then
for nd, hbw in ipairs(qi[pwm] or {}) do
local dfgt = gro[hbw]

if dfgt and not lgcz then
local nxpv = gul.getBranchLevel(dnb, mng.id, dfgt.id) or 0
local afd = nxpv + 1

if afd <= dfgt.levels then
local qjk = dfgt.id .. afd
local nme = 1

if type(dfgt.costs) == _d("FlVWHhI") and tonumber(dfgt.costs[afd]) then
nme = tonumber(dfgt.costs[afd])
elseif tonumber(dfgt.cost) then
nme = tonumber(dfgt.cost)
end

if nme <= xty and gul.isAvailable(dnb, mng.id, qjk) then
lgcz = { tree = mng.id, node = qjk, name = dfgt.name, level = afd }
end
end
end
end
end
end

if not lgcz then
return false, _d("LFtAGh4DFUJAW1IVGAtCTVEGWQ")
end

evk.BuySkillNode:FireServer(lgcz.tree, lgcz.node)

if fwqc.askProfile then
pcall(fwqc.askProfile)
end

ukm.last = _d("IFtBFR8ZUg") .. lgcz.name .. _d("Qg") .. tostring(lgcz.level)

return true
end

function pxa.misc.skill.text()
local he = pxa.misc.skill
local xyu = pxa.misc.util
local at = xyu.currentProfile and xyu.currentProfile()

if type(at) ~= _d("FlVWHhI") then
return _d("MltdHAMeSEILPg") .. he.last
end

local xjw = at.skillTrees or {}
local xlct = {}

local bdnf = { [1] = he.mainOrder, [2] = he.raidOrder }

for uvb, ih in ipairs(gul.Trees) do
local gcp = tonumber(at[ih.pointsField or _d("EV9dHhs9HQtaQAE")]) or 0
local qqk = {}
local fund = pxa.misc.skill.branchById(uvb)

for lfli, hk in ipairs(bdnf[uvb] or {}) do
local cph = fund[hk]

if cph then
local ltvy = gul.getBranchLevel(xjw, ih.id, cph.id) or 0
table.insert(qqk, cph.name .. _d("Qg") .. tostring(ltvy) .. _d("TQ") .. tostring(cph.levels))
end
end

xlct[#xlct + 1] = ih.name .. _d("WBQ") .. tostring(gcp) .. _d("QkRAAQ")
.. (#qqk > 0 and (_d("QhkU") .. table.concat(qqk, _d("ThQ"))) or _d("QhkUHBgZGgtaU1IHBBEJUVA"))
end

xlct[#xlct + 1] = he.last

return table.concat(xlct, _d("aA"))
end

pxa.misc.mergeSection = pxa.misc.tab:Section({
Side = _d("LlFSBg"),
})

pxa.misc.mergeSection:Header({
Name = _d("L1FGFRJNgv2TmA"),
})

pxa.misc.mergeToggle = pxa.misc.mergeSection:Toggle({
Name = _d("I0FAHVcAFxBTUQ"),
Default = false,
Callback = function(sgwz)
local mhi = pxa.misc.cards

mhi.mergeOn = sgwz

mhi.mergeAt = (sgwz and ubof.loading) and (os.clock() + mhi.interval) or 0
end,
}, _d("A0FAHSgAFxBTUQ"))

pxa.misc.mergeDropdown = pxa.misc.mergeSection:Dropdown({
Name = _d("MFVGGwMEFxE"),
Search = false,
Multi = true,
Required = false,
Default = { _d("I1hY") },
Options = pxa.misc.cards.rarityLabels,
Callback = function(hehr)
local rky = {}

if type(hehr) == _d("FlVWHhI") then
for zje, psg in pairs(hehr) do
if psg then
if zje == _d("I1hY") then
rky[0] = true
else
rky[pxa.misc.cards.borderOf[tostring(zje)]] = true
end
end
end
end

pxa.misc.cards.mergeWanted = rky
pxa.misc.cards.refresh(true)
end,
}, _d("EFVGGwMEFxE"))

pxa.misc.mergeSection:Button({
Name = _d("L1FGFRJNHA1D"),
Callback = function()
local cnrs, ext = pxa.misc.cards.run(true)

if not cnrs then
torj:Notify({
Title = _d("L1FGFRI"),
Description = ext,
Lifetime = 6,
})
end
end,
})

pxa.misc.mergeSection:Button({
Name = _d("L1FGFRJNS1I"),
Callback = function()

local jas, aab = pxa.misc.cards.run(true, 90)

if not jas then
torj:Notify({
Title = _d("L1FGFRJNS1I"),
Description = aab,
Lifetime = 6,
})
end
end,
})

pxa.misc.mergeParagraph = pxa.misc.mergeSection:Paragraph({
Header = _d("MUBVBgIe"),
Body = pxa.misc.cards.mergeText(),
})

pxa.misc.accSection = pxa.misc.tab:Section({
Side = _d("MF1TGgM"),
})

pxa.misc.accSection:Header({
Name = _d("I1dXFwQeHRBdUQFXne3wug"),
})

pxa.misc.accToggle = pxa.misc.accSection:Toggle({
Name = _d("I0FAHVcPFxFAFBMUDhcRR1sADg"),
Default = false,
Callback = function(laa)
pxa.misc.util.accOn = laa
pxa.misc.util.accAt = 0
end,
}, _d("A0FAHSgPFxFAaxMUDhcRR1sADg"))

pxa.misc.accBuyToggle = pxa.misc.accSection:Toggle({
Name = _d("I0FAHVcPBxsUVhcEGQ"),
Default = false,
Callback = function(nrf)
pxa.misc.util.accBuyOn = nrf
pxa.misc.util.accBuyAt = 0
pxa.misc.util.accAt = 0
end,
}, _d("A0FAHSgPBxtrVhcEGQ"))

pxa.misc.accSection:Button({
Name = _d("IEFNUhUIARY"),
Callback = function()
local amk, xcq = pxa.misc.util.buyBest()

if not amk then
torj:Notify({
Title = _d("I1dXFwQeHRBdUQE"),
Description = xcq,
Lifetime = 6,
})
end
end,
})

pxa.misc.accSection:Button({
Name = _d("J0VBGwdNEAdHQA"),
Callback = function()
if not pxa.misc.util.equipBest() then
torj:Notify({
Title = _d("I1dXFwQeHRBdUQE"),
Description = _d("LFtAGh4DFUJWUQYDCABCXUdSGBocB1AUCxIZXA"),
Lifetime = 5,
})
end
end,
})

pxa.misc.accParagraph = pxa.misc.accSection:Paragraph({
Header = _d("MUBVBgIe"),
Body = pxa.misc.util.accText(),
})

pxa.misc.claimInfo = pxa.misc.tab:Section({
Side = _d("MF1TGgM"),
})

pxa.misc.claimInfo:Header({
Name = _d("L11HERIBHgNaUR0CHg"),
})

pxa.misc.indexParagraph = pxa.misc.claimInfo:Paragraph({
Header = _d("IVVGFlckHAZRTA"),
Body = pxa.misc.util.indexText(),
})

pxa.misc.achParagraph = pxa.misc.claimInfo:Paragraph({
Header = _d("I1dcGxIbFw9RWgYE"),
Body = pxa.misc.util.achText(),
})

pxa.misc.questParagraph = pxa.misc.claimInfo:Paragraph({
Header = _d("M0FRAQMe"),
Body = pxa.misc.util.questText(),
})

pxa.misc.packParagraph = pxa.misc.claimInfo:Paragraph({
Header = _d("MlVXGQQ"),
Body = pxa.misc.util.packText(),
})

pxa.misc.skillSection = pxa.misc.tab:Section({
Side = _d("MF1TGgM"),
})

pxa.misc.skillSection:Header({
Name = _d("MV9dHhtNJhBRUVKH8v7R"),
})

pxa.misc.skillToggle = pxa.misc.skillSection:Toggle({
Name = _d("I0FAHVcYAgVGVRYS"),
Default = false,
Callback = function(bwtx)
local gzb = pxa.misc.skill

if bwtx and not (next(gzb.mainWanted) or next(gzb.raidWanted)) then
gzb.on = false

pcall(function()
pxa.misc.skillToggle:UpdateState(false)
end)

torj:Dialog({
Title = _d("Ml1XGVcMUgBGVRwUBVIEXUYBAw"),
Description = _d("IVxbHQQIUgNAFB4SDAEWFFscEk0QEFVaER9NGwwUQBoSTT8DXVpSAx8XBxRbAFc/EwtQFAYFCBdCUEYdBwkdFVoUX1c")
.. _d("I0FAHVcYAgVGVRYSTR0MWE1SBB0XDFBHUgcCGwxAR1IABRcQURQLGBhSEltdHANNGxYa"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})

return
end

gzb.on = bwtx
gzb.at = 0
end,
}, _d("A0FAHSgYAgVGVRYS"))

pxa.misc.skillMainDropdown = pxa.misc.skillSection:Dropdown({
Name = _d("L1VdHFcZAAdR"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = pxa.misc.skill.branchLabels(1),
Callback = function(lz)
local tben = pxa.misc.skill
local jsas = tben.wantedFrom(lz, 1)

tben.mainWanted = jsas
tben.mainOrder = tben.ordered(jsas, tben.mainOrder)
tben.shown = _d("")
end,
}, _d("D1VdHCgZAAdR"))

pxa.misc.skillRaidDropdown = pxa.misc.skillSection:Dropdown({
Name = _d("MFVdFlcZAAdR"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = pxa.misc.skill.branchLabels(2),
Callback = function(krc)
local as = pxa.misc.skill
local vkbb = as.wantedFrom(krc, 2)

as.raidWanted = vkbb
as.raidOrder = as.ordered(vkbb, as.raidOrder)
as.shown = _d("")
end,
}, _d("EFVdFigZAAdR"))

pcall(function()
pxa.misc.skillMainDropdown:UpdateSelection({})
end)

pcall(function()
pxa.misc.skillRaidDropdown:UpdateSelection({})
end)

pxa.misc.skillParagraph = pxa.misc.skillSection:Paragraph({
Header = _d("MUBVBgIe"),
Body = pxa.misc.skill.text(),
})

task.spawn(function()
local sj = pxa.misc.util

while ha() do
if sj.indexOn or sj.achOn or sj.questOn or sj.accOn or sj.accBuyOn then
sj.currentProfile()
end

if sj.indexOn then
sj.claimIndex()
end

if sj.achOn then
sj.claimAchievement()
end

if sj.questOn then

if os.clock() - sj.questAskedAt > 20 or os.clock() - sj.weeklyAskedAt > 20 then
sj.askQuests()
end

sj.claimQuest()
end

if sj.accOn and os.clock() >= sj.accAt then
sj.accAt = os.clock() + 3
sj.equipBest()
end

local ghfz = pxa.misc.cards

if not ghfz.inFlight then
if ghfz.mergeOn and os.clock() >= ghfz.mergeAt then
ghfz.run(true, nil, true)
elseif ghfz.deconOn and os.clock() >= ghfz.deconAt then
ghfz.run(false, nil, true)
end
end

if ghfz.mergeDone ~= ghfz.mergeShown then
ghfz.mergeShown = ghfz.mergeDone

pcall(function()
pxa.misc.mergeParagraph:UpdateBody(pxa.misc.cards.mergeText())
end)
end

if ghfz.deconDone ~= ghfz.deconShown then
ghfz.deconShown = ghfz.deconDone

pcall(function()
pxa.misc.deconParagraph:UpdateBody(pxa.misc.cards.deconText())
end)
end

local peff = pxa.misc.skill

if peff.on and os.clock() >= peff.at then

peff.at = os.clock() + 2
peff.upgrade()
end

local ugxp = pxa.misc.skill.text()

if peff.shown ~= ugxp then
peff.shown = ugxp

pcall(function()
pxa.misc.skillParagraph:UpdateBody(ugxp)
end)
end

if sj.accBuyOn and os.clock() >= sj.accBuyAt then

local jcmw = sj.buyBest()

sj.accBuyAt = os.clock() + (jcmw and 45 or 10)
end

local mdl = {
{ key = _d("C1pQFw8"), paragraph = pxa.misc.indexParagraph, value = sj.indexText() },
{ key = _d("A1dc"), paragraph = pxa.misc.achParagraph, value = sj.achText() },
{ key = _d("E0FRAQM"), paragraph = pxa.misc.questParagraph, value = sj.questText() },
{ key = _d("ElVXGQ"), paragraph = pxa.misc.packParagraph, value = sj.packText() },
{ key = _d("A1dX"), paragraph = pxa.misc.accParagraph, value = sj.accText() },
}

for zsqb, eg in ipairs(mdl) do
if eg.paragraph and sj.shown[eg.key] ~= eg.value then
sj.shown[eg.key] = eg.value

pcall(function()
eg.paragraph:UpdateBody(eg.value)
end)
end
end

task.wait(0.75)
end
end)

local jopq = okbd:Section({
Side = _d("MF1TGgM"),
})

jopq:Paragraph({
Header = _d("JF1HGh4DFQ"),
Body = _d("I0FAHVcrGxFcFBcGGBsSRxQLGBgAQkZbFltNFANXUQFXGRoHFEMTAwgAQlVaFlcOExFAR1IYA1ILQEdSGBocThRAGhIDUhBRUR4ETQUKUVpSBAIfB0BcGxkKUgBdQBcEQ1I2ZBQGGE0wA00UAgIBHhEUTR0CTRADV19SAwJSFlxRUhUMC0JSXQAEGV5CVVoWVxkaBxRABRhNNgdRRBcEGVI1VUAXBU0BFV1AER8IAUJcWx4TTQYKURQBBwIGQk1bB1caFxBRFAEDDBwGXVoVVwIcQkNcFxlNCw1BFBMFABcGFEAaEgBSTxRAGhJNFgdRRBcEGVIQXVoVVw4TEEZdFwRNBgpRFBAeChUHR0BSGxgRCRRWHRkYAUw+PiYfCFIRXFsCVw8HG0cUExkJUgdFQRsHHlIQW1ABVwwcBhRWEx4ZUhVdQBpXGRoHFFcTBBkBQk1bB1cFExRRGlI1GAsLWlNSGQgXBkcUBh8IUgFbQRwDCABCGRQQGBkaQldbHxJNFBBbWVIDBRdCcl0BHwgAD1VaXH1nMQNAVxoSHlIJUVECBE0TQkZBHBkEHAUUQBMbAQtCVk1SHhkXDxRVHBNNAQNCUQFXBAZOFEcdVxkaBxRAHQMMHkJXVQAFBBcRFFsEEh9SAFFABRIIHEJHUQEEBB0MRxo"),
})

local teor = okbd:Section({
Side = _d("MF1TGgM"),
})

teor:Header({
Name = _d("IVVAER8IAQ"),
})

local dff

dff = teor:Paragraph({
Header = _d("NVxVBlcUHRcUVxMCChoW"),
Body = bs(),
})

local htf = okbd:Section({
Side = _d("MF1TGgM"),
})

htf:Header({
Name = _d("K0dYExkJUhFcWwI"),
})

htf:Toggle({
Name = _d("I0FAHVcOAANSQFIFAhY"),
Default = false,
Callback = function(ml)
mt.island.autoRod = ml
mt.islandAt = 0
end,
}, _d("C0dYExkJLQNBQB0oHx0G"))

htf:Toggle({
Name = _d("I0FAHVcOAANSQFIWDhEHR0cdBRQ"),
Default = false,
Callback = function(ghp)
mt.island.autoAcc = ghp
mt.islandAt = 0
end,
}, _d("C0dYExkJLQNBQB0oDBEBUUcBGB8L"))

htf:Toggle({
Name = _d("J0VBGwdNEwFXUQEEAgAb"),
Default = false,
Callback = function(egs)
mt.island.equipAcc = egs
mt.islandAt = 0
end,
}, _d("C0dYExkJLQdFQRsHMhMBV1EBBAIAGw"))

local lgi

lgi = htf:Paragraph({
Header = _d("K0dYExkJUgVRVQA"),
Body = mt.shopIsland.text(),
})

local kcfd = okbd:Section({
Side = _d("LlFSBg"),
})

kcfd:Header({
Name = _d("MFFWGwUZGg"),
})

mt.rebirthToggle = kcfd:Toggle({
Name = _d("I0FAHVcfFwBdRgYf"),
Default = false,
Callback = function(qn)
mt.autoRebirth = qn
end,
}, _d("A0FAHSgfFwBdRgYf"))

mt.rebirthParagraph = kcfd:Paragraph({
Header = _d("MUBVBgIe"),
Body = mt.rebirthText(),
})

kcfd:Button({
Name = _d("NmQUBhhNGxFYVRwT"),
Callback = function()
if not mt.gotoIsland() then
torj:Notify({
Title = _d("I1ZVHBMCHAdQFDsEARMMUA"),
Description = _d("IVxVABYOBgdGFBsETRwNQBQAEgwWGxRNFwNNX0JARgtXDBUDXVpSHgNSAxRZHRoIHBYa"),
Lifetime = 5,
})
end
end,
})

local wxom

wxom = kcfd:Toggle({
Name = _d("I0FAHVckAQ5VWhZXJRMQUFcdBQg"),
Default = false,
Callback = function(eyc)
yi.island = eyc
yi.pending = false
yi.pendingUntil = 0
yi.paused = false
yi.gaveUp = false
yi.stoodDown = false
yi.manualPause = false

if not eyc then
return
end

if ne.otherTowerOn(_d("ClVGFhQCAAc")) then
yi.island = false

pcall(function()
wxom:UpdateState(false)
end)

pcall(function()
torj:Dialog({
Title = _d("I0FAHVckAQ5VWhZXJRMQUFcdBQhSDVJS"),
Description = _d("NlxRUj8MHg5bQxcSA1IWW0MXBU0bERRVHgUIEwZNFAACAxwLWlNeVwwcBhRDGwMFUg1aUVIEAR0WFEAaEk0VA1lRUhgDHhsURgcZHlINWlFSHgMUC1pdBhJNAA1bWVIWGVIDFEAbGghcQmBBABlNBgpVQFIYCxROFFsAVxkHEFoUHRlNMxdAW1IkAR0WFEcdVwgTAVwUBhgaFxAUUxcDHlILQEdSGBocQkdYHQND"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})
end)

return
end

if ne.enabled and ne.hardcoreSlot() == nil then
yi.island = false

pcall(function()
wxom:UpdateState(false)
end)

pcall(function()
torj:Dialog({
Title = _d("I0FAHVckAQ5VWhZXJRMQUFcdBQhSDVJS"),
Description = _d("LFsUARsCBkJdR1IECAZCQFtSFk0GDUNRAFtNEwxQFAYfCFIFVVkXVwIcDk0UAQMMABZHFBNXGR0VUUZSBRgcQlJGHRpNE0JAWwUSH1IRWFsGWU0hB0AUHRkIUhZbFDsEARMMUBQaFh8WAVtGF1tNHRAUQAcFA1IjQUAdVz4eDUAUHRELXA"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})
end)

return
end

if not yi.data then
yi.island = false

pcall(function()
wxom:UpdateState(false)
end)

pcall(function()
torj:Dialog({
Title = _d("I0FAHVckAQ5VWhZXJRMQUFcdBQhSDVJS"),
Description = _d("NlxdAVcPBwtYUFIfDAFCWltSPwwABldbABI5HRVRRjYWGRNOFEcdVxkaBxRAHQAIAEVHFAEDDBUHRxQRFgMcDUAUEBJNAAdVUFIWAxZCVRQAAgNSAVVaHBgZUgBRFAEDDAAWUVBc"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})
end)

return
end

local fglj = yi.remotes.request

if fglj then
pcall(function()
fglj:FireServer()
end)
end
end,
}, _d("A0FAHSgEAQ5VWhYoBRMQUFcdBQg"))

yi.islandToggle = wxom

yi.islandParagraph = kcfd:Paragraph({
Header = _d("IEFSFAQ"),
Body = yi.buffText(),
})

kcfd:Button({
Name = _d("MlVBARJNOxFYVRwTTToDRlARGB8X"),
Callback = function()
if yi.pauseRun then
yi.pauseRun()
end
end,
})

kcfd:Button({
Name = _d("JV1CF1c4AkJ9Rx4WAxZCfFUAEw4dEFE"),
Callback = function()
if yi.giveUpRun then
yi.giveUpRun()
end
end,
})

local nyjm = okbd:Section({
Side = _d("LlFSBg"),
})

nyjm:Header({
Name = _d("JF1HGh4DFUJHXB0H"),
})

nyjm:Toggle({
Name = _d("I0FAHVcPBxsUVhcEGVIQW1A"),
Default = false,
Callback = function(csx)
mt.shop.autoBuyRod = csx
mt.shopAt = 0
end,
}, _d("A0FAHSgPBxtrVhcEGS0QW1A"))

nyjm:Toggle({
Name = _d("I0FAHVcPBxsUVhcEGVIAVV0G"),
Default = false,
Callback = function(dzbq)
mt.shop.autoBuyBait = dzbq
mt.shopAt = 0
end,
}, _d("A0FAHSgPBxtrVhcEGS0AVV0G"))

nyjm:Toggle({
Name = _d("J0VBGwdNEAdHQFIFAhY"),
Default = false,
Callback = function(qhr)
mt.shop.equipRod = qhr
mt.shopAt = 0
end,
}, _d("B0VBGwcyEAdHQC0FAhY"))

nyjm:Toggle({
Name = _d("J0VBGwdNEAdHQFIVDBsW"),
Default = false,
Callback = function(iwbc)
mt.shop.equipBait = iwbc
mt.shopAt = 0
end,
}, _d("B0VBGwcyEAdHQC0VDBsW"))

local xv

xv = nyjm:Paragraph({
Header = _d("IFFHBlcUHRcUVxMZTRcTQV0C"),
Body = pvas(),
})
task.spawn(function()
local cxmz = dlq()
local udv = bs()
local wn = pvas()
local yc = mt.shopIsland.text()

while ha() do
local ssas = dlq()

if ssas ~= cxmz then
cxmz = ssas
pcall(function()
ga:UpdateBody(ssas)
end)
end

local ed = bs()

if ed ~= udv then
udv = ed
pcall(function()
dff:UpdateBody(ed)
end)
end

local voa = pvas()

if voa ~= wn then
wn = voa
pcall(function()
xv:UpdateBody(voa)
end)
end

local yaho = mt.shopIsland.text()

if yaho ~= yc then
yc = yaho
pcall(function()
lgi:UpdateBody(yaho)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while ha() do

if fcv() and os.clock() >= (mt.shopAt or 0)
and os.clock() >= (mt.islandTripUntil or 0) then
mt.shopAt = os.clock() + 1
pcall(pqfz)
end

if mt.shopIsland.active() and os.clock() >= (mt.islandAt or 0)
and os.clock() >= math.max(mt.shopHoldUntil or 0, mt.tpHoldUntil or 0) then
mt.islandAt = os.clock() + 2
pcall(mt.shopIsland.run)
end

task.wait(1)
end
end)

du:Select()

local uisa = du:Section({
Side = _d("LlFSBg"),
})

local ted = du:Section({
Side = _d("MF1TGgM"),
})

local wcyj = uisa:Paragraph({
Header = _d("MUBVBgIe"),
Body = hia(),
})

uisa:Divider()

uurn.npcToggle = uisa:Toggle({
Name = _d("I0FAHVcjIiE"),
Default = false,
Callback = function(cqv)

if cqv and not uurn.story and #jxn() == 0 then
pcall(function()
uurn.npcToggle:UpdateState(false)
end)

torj:Dialog({
Title = _d("I0FAHVcjIiEUWhcSCQFCVRQGFh8VB0A"),
Description = _d("Ml1XGVcMBkJYURMEGVINWlFSOT0xQlJGHRpNBgpRFAUYHx4GRxQQEgEdFRgUHQVNBhdGWlIYA1IjQUAdVy4dD0RYFwMIUjFAWwAOQ1I2XFEAEk0bERRaHQMFGwxTFAYYTRQLU1wGVxQXFho"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})

return
end

uurn.enabled = cqv
end,
}, _d("A0FAHSgDAgE"))

uisa:Toggle({
Name = _d("NVVYGVcZHUJ6ZDE"),
Default = false,
Callback = function(bdgi)
uurn.walkToNpc = bdgi
end,
}, _d("FVVYGSgZHT1aRBE"))

uisa:Dropdown({
Name = _d("Jl1SFB4OBw5ATQ"),
Search = false,
Multi = true,
Required = false,
Default = { _d("LFtGHxYB") },
Options = bji,
Callback = function(gip)
local cyo = {}

if type(gip) == _d("FlVWHhI") then
for hys, kcpw in ipairs(bji) do
if gip[kcpw] then
table.insert(cyo, lli[kcpw])
end
end
end

if #cyo == 0 then
cyo = { _d("DFtGHxYB") }
end

uurn.difficulties = cyo
end,
}, _d("Bl1SFB4OBw5ATQ"))

uisa:Toggle({
Name = _d("I0FAHVc/HQ1ZRw"),
Default = false,
Callback = function(ra)
vr.enabled = ra
vr.inBattle = false
vr.pending = false
end,
}, _d("A0FAHSgfHQ1ZRw"))

local bst = du:Section({
Side = _d("LlFSBg"),
})

bst:Header({
Name = _d("MVhbBg"),
})

bst:Paragraph({
Header = _d("KltDUgMFF0JHWB0DHlIVW0YZ"),
Body = _d("MVhbBldcUk8UfRwRBBwLQE1SIwIFB0YUWhkCAA9VWFIYH1IsXVMaAwATEFEdUhgfUipVWB4YGhcHWhQmGBoXEBgUAhsYAUJ6ZDFXDxMWQFgXBE0FClFaUgQBHRYUBlIeHlIAQUcLWWd4MVhbBldfUk8UeiI0Hl5CRlUbEx5eQkZbHRoeXkJ9Rx4WAxZCfFUAEw4dEFEaeH0vHRZcFAEbAgYRFFscVyMiIRRWEwMZHgdHDlIDGh1CemQxVwsXA0BBABIeUgNAFB0ZDhdOFFUcE00TQkZVGxNNEA1HR1ISDBEKGj54IxodQkBbBRIfUhBBWgFXBAFCQFwXVwIcDk0UABILBxFRUFIHDBsQFBlSPh4eA1pQUj8MAAZXWwASTR0MFFYdAwVSEVhbBgRNGxEUWxwSTQAXWhQTBAYXBhRSHQVNBhVdVxdZZ3gxWFsGBE0dBFIOUhgDF0JHWB0DQVIWW0MXBR5SFlVfF1cZBxBaR1w"),
})

ne.toggle = bst:Toggle({
Name = _d("I0FAHVc+Hg1A"),
Default = false,
Callback = function(zyw)
if zyw and ne.role[1] == ne.role[2] and ne.role[1] ~= _d("DERX") then
ne.enabled = false

pcall(function()
ne.toggle:UpdateState(false)
end)

torj:Dialog({
Title = _d("I0FAHVc+Hg1A"),
Description = _d("MVhbBldcUgNaUFIkAR0WFAZSFh8XQlZbBh9N") .. ne.roleLabel(1) .. _d("TBRgGhYZUgtHFB0ZCFIQQVpSFh4ZB1AUFBgfUhZDXRESQVIRWxQdGQhSDVIUBh8IUhZDW1IEAR0WRxQaFh5SFlsUEBJNAQ1ZUQYfBBwFFFEeBAhc"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})

return
end

ne.enabled = zyw

if zyw then
ne.hasSlot2 = ne.detectSlot2()

if ne.hasSlot2 == false then
torj:Dialog({
Title = _d("I0FAHVc+Hg1A"),
Description = _d("MVhbBldfUg5bWxkETR4NV18XE01fQl1AUhkIFwZHFAYfCFImQVUeVy8TFkBYF1c+Hg1AFBUWABcSVUcBW00dEBR9HBEEHAtAUVIlAh0PFAZHR00RDlFVABIJXkJWURQYHxdCQFwXVx4XAVtaFlceHg1AFBEWA1IAVUAGGwhcQmZbBwMEHAUURwYWFAFCW1pSBAEdFhQFUgIDBgtYFAYfCBxM"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})
end
end
end,
}, _d("A0FAHSgeHg1A"))

function ne.applyRoles()
if not ne.enabled then
return
end

if ne.role[1] == ne.role[2] and ne.role[1] ~= _d("DERX") then
ne.enabled = false

pcall(function()
ne.toggle:UpdateState(false)
end)

pcall(function()
torj:Dialog({
Title = _d("I0FAHVc+Hg1AFB0RCw"),
Description = _d("MVhbBldcUgNaUFIkAR0WFAZSFh8XQlZbBh9N") .. ne.roleLabel(1) .. _d("TBRgGhYZUgtHFB0ZCFIQQVpSFh4ZB1AUFBgfUhZDXRESQVIDWlBSHhlSAVVaHBgZUhZVXxdXGQUNFEceGBkBTBRnFwNNHQxRFAEbAgZCQFtSBAIfB0BcGxkKUgdYRxdZ"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})
end)

return
end

local zru = {}

if ne.towerSlot() ~= 1 and oqnx.enabled then
oqnx.enabled = false
table.insert(zru, _d("I0FAHVc5HRVRRg"))

pcall(function()
oqnx.ui:UpdateState(false)
end)
end

if ne.hardcoreSlot() == nil and yi.island then
yi.island = false
table.insert(zru, _d("I0FAHVckAQ5VWhZXJRMQUFcdBQg"))

pcall(function()
yi.islandToggle:UpdateState(false)
end)
end

if ne.halloweenSlot() == nil and ud.run.enabled then
ud.run.enabled = false
table.insert(zru, _d("I0FAHVclEw5YWwUSCBxCYFsFEh8"))

pcall(function()
ud.toggle:UpdateState(false)
end)
end

if #zru > 0 then
pcall(function()
torj:Dialog({
Title = table.concat(zru, _d("QlVaFlc")) .. _d("QltSFA"),
Description = _d("LFsUARsCBkJdR1IECAZCQFtSAwUTFhRAHQAIAEJVWgtXAB0QURhSBAJSC0AUGhYJUgxbQxoSHxdCQFtSBRgcTBRzGwEIUgtAFBNXHh4NQBQTEAwbDBgUHQVNBhdGWlI2GAYNFGceGBlSDVJSXA"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})
end)
end
end

ne.oneDropdown = bst:Dropdown({
Name = _d("MVhbBldc"),
Search = false,
Multi = false,
Required = false,

Default = 1,
Options = ne.optionsFor[1],
Callback = function(kzn)
local cqdm = type(kzn) == _d("FlVWHhI") and kzn[1] or kzn

if type(cqdm) == _d("EUBGGxkK") and ne.roleIds[cqdm] then
ne.role[1] = ne.roleIds[cqdm]
ne.picked[1] = cqdm
end

pcall(function()
ne.oneDropdown:UpdateName(_d("MVhbBldcUoC0llI") .. ne.roleLabel(1))
end)

if ne.applyRoles then
ne.applyRoles()
end
end,
}, _d("EVhbBihcLVA"))

ne.twoDropdown = bst:Dropdown({
Name = _d("MVhbBldf"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = ne.optionsFor[2],
Callback = function(zbdp)
local itm = type(zbdp) == _d("FlVWHhI") and zbdp[1] or zbdp

if type(itm) == _d("EUBGGxkK") and ne.roleIds[itm] then
ne.role[2] = ne.roleIds[itm]
ne.picked[2] = itm
end

pcall(function()
ne.twoDropdown:UpdateName(_d("MVhbBldfUoC0llI") .. ne.roleLabel(2))
end)

if ne.applyRoles then
ne.applyRoles()
end
end,
}, _d("EVhbBihfLVA"))

pcall(function()
ne.oneDropdown:UpdateSelection(_d("NltDFwU"))
end)

pcall(function()
ne.twoDropdown:UpdateSelection(_d("LGR3UhUMBhZYUQE"))
end)

getgenv().ACBXSlot = ne

local tvo = du:Section({
Side = _d("LlFSBg"),
})

tvo:Header({
Name = _d("MFVdFlcPHRFH"),
})

tvo:Toggle({
Name = _d("I0FAHVc/EwtQFDAYHgE"),
Default = false,
Callback = function(sjh)
pxa.enabled = sjh
pxa.pending = {}
pxa.pendingUntil = {}

if sjh then
pxa.cleared = {}
end
end,
}, _d("A0FAHSgfEwtQaxAYHgE"))

tvo:Toggle({
Name = _d("I0FAHVc6Ew5fFAYYTSADXVBSNQIBEQ"),
Default = false,
Callback = function(uyc)
pxa.walkToBoss = uyc
end,
}, _d("A0FAHSgaEw5fawYYMgADXVAtFQIBEQ"))

local zbz
zbz = tvo:Slider({
Name = _d("NVVYGVc+AgdRUA"),
Minimum = 0,
Maximum = 72,
Default = 18,
Precision = 0,
Callback = function(alfh)
local rjcu = math.floor(alfh + 0.5)
pxa.walkSpeed = rjcu

if zbz and rjcu ~= alfh then
zbz:UpdateValue(rjcu)
end
end,
}, _d("FVVYGSgeAgdRUA"))

tvo:Dropdown({
Name = _d("MFVdFlcpGwRSXRECAQYb"),
Search = false,
Multi = true,
Required = false,
Default = { _d("LFtGHxYB") },
Options = bkjw,
Callback = function(pc)
local khm = {}

if type(pc) == _d("FlVWHhI") then
for ncuf, idy in ipairs(bkjw) do
if pc[idy] then
table.insert(khm, aib[idy])
end
end
end

if #khm == 0 then
khm = { _d("DFtGHxYB") }
end

pxa.difficulties = khm
end,
}, _d("EFVdFigJGwRSXRECAQYb"))

function pxa.pickedIds(oewp)
local kodm = {}

if type(oewp) == _d("FlVWHhI") then
for omqi, ydwp in ipairs(lme) do
if oewp[ydwp] and nyy[ydwp] then
table.insert(kodm, nyy[ydwp])
end
end
elseif type(oewp) == _d("EUBGGxkK") and nyy[oewp] then
kodm = { nyy[oewp] }
end

return kodm
end

tvo:Dropdown({
Name = _d("MFVdFlcvHRFH"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = lme,
Callback = function(iie)
pxa.picks[1] = pxa.pickedIds(iie)
pxa.cursor[1] = 1
pxa.losses[1] = {}
end,
}, _d("EFVdFigPHRFH"))

pxa.boss2Dropdown = tvo:Dropdown({
Name = _d("MFVdFlcvHRFHFFokAR0WFAZb"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = lme,
Callback = function(iqo)
pxa.picks[2] = pxa.pickedIds(iqo)
pxa.cursor[2] = 1
pxa.losses[2] = {}
end,
}, _d("EFVdFigPHRFHawEbAgY9Bg"))

pcall(function()
pxa.boss2Dropdown:SetVisibility(false)
end)

task.spawn(function()
local ial = nil

while ha() do
local bg = ne.splitNpc()

if bg ~= ial then
ial = bg

local jore = pxa.boss2Dropdown

if jore then
pcall(function()
jore:SetVisibility(bg)
end)
end
end

task.wait(0.5)
end
end)

ted:Paragraph({
Header = _d("I0FAHVcrGwVcQA"),
Body = _d("MVFYFxQZUg1aUVIYH1IPW0YXVyMiIUcUFAUCH0JAXBdXGh0QWFABVw8XDltDXA"),
})

for mqp, kxte in ipairs(pi) do
ted:Dropdown({
Name = kxte.name,
Search = true,
Multi = true,
Required = false,
Default = {},
Options = kxte.options,
Callback = function(cabe)
local xsu = {}

if type(cabe) == _d("FlVWHhI") then
if cabe.All then
for hqda, wgi in ipairs(kxte.ids) do
table.insert(xsu, wgi)
end
else
for lva, blyd in ipairs(kxte.options) do
if cabe[blyd] and kxte.byName[blyd] then
table.insert(xsu, kxte.byName[blyd])
end
end
end
elseif type(cabe) == _d("EUBGGxkK") then
if cabe == _d("I1hY") then
for gs, vmrd in ipairs(kxte.ids) do
table.insert(xsu, vmrd)
end
else
xsu = { kxte.byName[cabe] }
end
end

uurn.selectedByWorld[kxte.name] = xsu
end,
}, _d("DERXLQ") .. kxte.id)
end

ted:Toggle({
Name = _d("I0FAHVcuHQ9EWBcDCFIxQFsADg"),
Default = false,
Callback = function(iq)
uurn.story = iq
uurn.battlePending = false
uurn.battlePendingUntil = 0
end,
}, _d("A0FAHSgOHQ9EWBcDCC0RQFsADg"))

uurn.storyDropdown = ted:Dropdown({
Name = _d("Jl1SFB4OBw5AXRcE"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = bji,
Callback = function(xooo)
local gcwx = type(xooo) == _d("FlVWHhI") and xooo[1] or xooo

if type(gcwx) == _d("EUBGGxkK") and lli[gcwx] then
uurn.storyDifficulty = lli[gcwx]
end
end,
}, _d("Bl1SFB4OBw5AXRcE"))

pcall(function()
uurn.storyDropdown:UpdateSelection(bji[1])
end)

pcall(function()
uurn.storyDropdown:UpdateName(_d("Jl1SFB4OBw5AXRcETZDilhQ") .. bji[1])
end)

ted:Paragraph({
Header = _d("KltDUjYYBg0Udx0aHR4HQFFSJBkdEE0UBRgfGRE"),
Body = _d("JF1TGgMeUgdCUQAOTQEWW0YLVyMiIRQZUjkMHwdfFAYfHx0XU1xSPh4XCVVdUlpNHQwUQBoSTR0MURQWHgsUC1dBHgMUUgNWWwQSQVIVW0YZHgMVQkBcF1cMAAdVR1IeA1INRlAXBU0TDFAUERgAGwxTFBAWDhlCRlsHGQlSA0cUERgCHgZbQxwETREOUVUAWWd4K0AUABIdHgNXUQFXGRoHFFUAEgxSBkZbAhMCBQxHFAUfBB4HFF0GVwQBQltaXlcMHAYUWBcWGxcRFEYTHglSAFtHARIeUgNYWxwSQw"),
})

local wfbm = so:Section({
Side = _d("LlFSBg"),
})

wfbm:Header({
Name = _d("NltDFwU"),
})

local dtfe
local hr

local jvfa = {
remotes = {},
watcher = false,
hidMenu = false,

hardWatch = {},
}

pcall(function()
local ouy = getgenv().ACBXHardWatch

if type(ouy) == _d("FlVWHhI") then
for xprn, ygv in pairs(ouy) do
pcall(function()
if ygv.Connected then
ygv:Disconnect()
end
end)
end
end

getgenv().ACBXHardWatch = jvfa.hardWatch
end)

function jvfa.hardPick(ylu)
ylu = ylu == true

for nzl, ta in ipairs({ _d("IFVABhsINRdd"), _d("IFVABhsINRddBg") }) do
local amwz = hzia:FindFirstChild(ta)

if amwz then
if amwz:GetAttribute(_d("NltDFwUlExBQZBsUBg")) ~= ylu then
pcall(function()
amwz:SetAttribute(_d("NltDFwUlExBQZBsUBg"), ylu)
end)
end

if amwz:GetAttribute(_d("NltDFwUlExBQZgcZ")) ~= nil and amwz:GetAttribute(_d("NltDFwUlExBQZgcZ")) ~= ylu then
pcall(function()
amwz:SetAttribute(_d("NltDFwUlExBQZgcZ"), ylu)
end)
end
end
end
end

function jvfa.pinMode()
if not (oqnx.enabled or oqnx.nightmare) then
return
end

local xzrv = oqnx.nightmare == true

for wgb, dqw in ipairs({ _d("IFVABhsINRdd"), _d("IFVABhsINRddBg") }) do
local ozxr = hzia:FindFirstChild(dqw)

if ozxr then
if ozxr:GetAttribute(_d("NltDFwUlExBQZBsUBg")) ~= xzrv then
pcall(function()
ozxr:SetAttribute(_d("NltDFwUlExBQZBsUBg"), xzrv)
end)
end

local gijs = jvfa.hardWatch[ozxr]

if gijs and gijs.Connected == false then
jvfa.hardWatch[ozxr] = nil
gijs = nil
end

if gijs == nil then
local rhqr, pkj = pcall(function()
return wdaq(ozxr:GetAttributeChangedSignal(_d("NltDFwUlExBQZBsUBg")), function()
if not (oqnx.enabled or oqnx.nightmare) then
return
end

local xvsq = oqnx.nightmare == true

if ozxr.Parent and ozxr:GetAttribute(_d("NltDFwUlExBQZBsUBg")) ~= xvsq then
pcall(function()
ozxr:SetAttribute(_d("NltDFwUlExBQZBsUBg"), xvsq)
end)
end
end)
end)

if rhqr then
jvfa.hardWatch[ozxr] = pkj
end
end
end
end
end

function jvfa.pauseRows()
local srk = aqzz:FindFirstChild(_d("MlhVCxIfNRdd")) and aqzz.PlayerGui:FindFirstChild(_d("MVFABh4DFRFzQRs"))

if not srk then
return nil, nil
end

return srk:FindFirstChild(_d("MlVBARIkHARdWhsDCDsMREEG"), true), srk:FindFirstChild(_d("MlVBARIkHARdWhsDCDEKUVcZ"), true)
end

function jvfa.pauseState()
local fyy = aqzz:FindFirstChild(_d("MlhVCxIfNRdd")) and aqzz.PlayerGui:FindFirstChild(_d("MVFABh4DFRFzQRs"))
local ww = fyy and fyy:FindFirstChild(_d("JVFAIRIZBgtaUwE"), true)

if not ww then
return nil
end

local tln, czjv = pcall(function()
return ww:Invoke()
end)

if tln and type(czjv) == _d("FlVWHhI") then
return czjv.pauseInfiniteEnabled == true
end

return nil
end

function jvfa.pauseAt(fzrc, ygj)
ygj = math.max(1, math.floor(tonumber(ygj) or 1))

local jxbp, chbz = jvfa.pauseRows()

if not (jxbp and chbz) then
return false
end

local axql = pcall(function()
if tonumber(jxbp.Text) ~= ygj then
jxbp.Text = tostring(ygj)

if getconnections then
for iqb, hil in ipairs(getconnections(jxbp.FocusLost)) do
pcall(function()
hil:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end
end)

if fzrc ~= nil then
local nh = jvfa.pauseState()

if nh ~= nil and nh ~= fzrc and getconnections then
pcall(function()
for xup, tak in ipairs(getconnections(chbz.MouseButton1Click)) do
pcall(function()
tak:Fire()
end)
end
end)
end
end

return axql
end

function jvfa.restorePause()
gc.triggered = false

if gc.enabled and gc.floor > 0 then
jvfa.pauseAt(true, gc.floor)

pcall(function()
evk.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = gc.floor,
})
end)

return
end

pcall(function()
evk.SaveClientData:FireServer({
pauseInfiniteEnabled = false,
pauseInfiniteAt = 1,
})
end)

jvfa.pauseAt(false, 1)
end

function jvfa.remote(cbgn)
local gnck = jvfa.remotes[cbgn]

if gnck and gnck.Parent then
return gnck
end

local qx = wtba:FindFirstChild(_d("MFFZHQMIAQ"))
local rmqy = qx and qx:FindFirstChild(cbgn)

if rmqy then
jvfa.remotes[cbgn] = rmqy
end

return rmqy
end

function jvfa.historyOpen()
for jfh, yqui in ipairs({ _d("IFVABhsINRdd"), _d("IFVABhsINRddBg") }) do
local emzf = hzia:FindFirstChild(yqui)
local pytq = emzf and emzf:FindFirstChild(_d("NltDFwUlGxFAWwAOKwADWVE"))

if pytq and pytq.Visible then
return true
end
end

return false
end

function jvfa.generationOpen()
local pja = hzia:FindFirstChild(_d("NltDFwU/FxFBWAYwGBs"))
local tayj = pja and pja:FindFirstChild(_d("MFFHBxsZNBBVWRc"))

return tayj ~= nil and tayj.Visible
end

function jvfa.standDown(jyad)
if not jvfa.hidMenu then
local sju = true

pcall(function()
sju = torj:GetState() ~= false
end)

if sju then
jvfa.hidMenu = true

pcall(function()
torj:SetState(false)
end)
end
end

if jvfa.watcher then
return
end

jvfa.watcher = true

task.spawn(function()

local jzyg = os.clock() + 6

while ha() and os.clock() < jzyg and not jyad() do
task.wait(0.2)
end

while ha() and jyad() do
task.wait(0.4)
end

jvfa.watcher = false

if jvfa.hidMenu then
jvfa.hidMenu = false

pcall(function()
torj:SetState(true)
end)
end
end)
end

oqnx.floorAt = 0
oqnx.battleAt = 0
oqnx.floor = nil
oqnx.manualPause = false

task.spawn(function()
local zuio = mkay(_d("IFVABhsIJxJQVQYS"))
local jiuc = mkay(_d("MU1aESMCBQdGch4YAgA"))
local ykyb = mkay(_d("IFVABhsINwxQ"))
local szr = mkay(_d("NltDFwU/BwxxWhYSCQ"))

if zuio then
wdaq(zuio.OnClientEvent, function()
oqnx.battleAt = os.clock()
end)
end

if jiuc then
wdaq(jiuc.OnClientEvent, function(likm)
oqnx.floorAt = os.clock()

if type(likm) == _d("DEFZEBIf") and likm > 1 then
oqnx.floor = likm
else
oqnx.floor = nil
end
end)
end

if ykyb then
wdaq(ykyb.OnClientEvent, function(cg)
if type(cg) == _d("FlVWHhI") and cg.mode == _d("FltDFwU") then
oqnx.floorAt = os.clock()
end
end)
end

if szr then
wdaq(szr.OnClientEvent, function()

oqnx.lastRunEnded = {
clock = os.clock(),
floor = oqnx.floor,
}

task.delay(1, function()
local iwku = hzia:FindFirstChild(_d("NltDFwU/FxFBWAYwGBs"))
local asz = iwku and iwku:FindFirstChild(_d("MFFHBxsZNBBVWRc"))
local ptu = {}

if asz then
for maja, dwdh in ipairs(asz:GetDescendants()) do
if dwdh:IsA(_d("NlFMBjsMEAdY")) and dwdh.Visible and dwdh.Text ~= _d("") and #ptu < 12 then
ptu[#ptu + 1] = dwdh.Text
end
end
end

if oqnx.lastRunEnded then
oqnx.lastRunEnded.texts = table.concat(ptu, _d("QkgU"))
end
end)

oqnx.floorAt = 0
oqnx.battleAt = 0
oqnx.floor = nil

if oqnx.manualPause then
jvfa.restorePause()
end
end)
end

end)

local function pnoc()
local evwx = os.clock()

if evwx - (oqnx.floorAt or 0) < 90 and evwx - (oqnx.battleAt or 0) < 12 then
return true
end

for blqe, xdxi in ipairs({ _d("IFVABhsINRdd"), _d("IFVABhsINRddBg") }) do
local oggm = hzia:FindFirstChild(xdxi)

if oggm then

local vpld = oggm:FindFirstChild(_d("NltDFwUrHg1bRj4WDxcO"))

if vpld and vpld.Visible then
return true
end

local jtsi = oggm:FindFirstChild(_d("JFhbHQU+ERBRURw"))

if jtsi and jtsi.Visible then
return true
end

local blg = oggm:FindFirstChild(_d("IFVABhsIIQFGURcZ"))

if blg and blg.Visible then
local kikt = blg:FindFirstChild(_d("M0FdERwqGxRRYQI1GAYWW1o"))

if kikt and kikt.Visible then
return true
end
end
end
end

return false
end

function jvfa.hardNow()

local gjnq = hzia:FindFirstChild(_d("IFVABhsINRdd"))
local jqz = gjnq and gjnq:GetAttribute(_d("NltDFwUlExBQZBsUBg"))

if jqz ~= nil then
return jqz == true
end

local zubc = pxa.misc.util.profile

return type(zubc) == _d("FlVWHhI") and zubc.lastTowerHard == true
end

function jvfa.endIfWrongMode(efag)
if not pnoc() or jvfa.hardNow() == (efag == true) then
return false
end

pcall(function()
if type(hr) == _d("BEFaEQMEHQw") then
hr()
else
evk.EndTowerRemote:FireServer(1)
end
end)

oqnx.floor = nil

return true
end

function jvfa.hardPickNow()
for uyq, havr in ipairs({ _d("IFVABhsINRdd"), _d("IFVABhsINRddBg") }) do
local gf = hzia:FindFirstChild(havr)
local kg = gf and gf:GetAttribute(_d("NltDFwUlExBQZBsUBg"))

if kg ~= nil then
return kg == true
end
end

return nil
end

function jvfa.parked()
for pwv, ljsc in ipairs({ _d("IFVABhsINRdd"), _d("IFVABhsINRddBg") }) do
local jsq = hzia:FindFirstChild(ljsc)

if jsq then
local hmdx = jsq:FindFirstChild(_d("NltDFwUrHg1bRj4WDxcO"))
local sxl = jsq:FindFirstChild(_d("JFhbHQU+ERBRURw"))
local vh = jsq:FindFirstChild(_d("IFVABhsIIQFGURcZ"))

if hmdx and hmdx.Visible
and not (sxl and sxl.Visible)
and not (vh and vh.Visible) then
return true
end
end
end

return false
end

oqnx.ui = wfbm:Toggle({
Name = _d("I0FAHVc5HRVRRg"),
Default = false,
Callback = function(lolt)

if oqnx.quiet then
return
end

oqnx.enabled = lolt
oqnx.pending = false
oqnx.pendingUntil = 0

if lolt then

if ne.enabled and ne.role[1] ~= _d("FltDFwU") then
oqnx.enabled = false

pcall(function()
oqnx.ui:UpdateState(false)
end)

pcall(function()
torj:Dialog({
Title = _d("I0FAHVc5HRVRRlIYCxQ"),
Description = _d("MVhbBldcUgtHFAESGVIWWxQ") .. ne.roleName(1) .. _d("TBRgGhJNOwxSXRweGQtCd1UBAwEXQltaHg5NARZVRgYETR0MFEceGBlSUxgUARhNAQdAFCEbAgZCBRQGGE0mDUNRAFcLGxBHQFw"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})
end)

return
end

if ne.otherTowerOn(_d("FltDFwU")) then
oqnx.enabled = false

pcall(function()
oqnx.ui:UpdateState(false)
end)

pcall(function()
torj:Dialog({
Title = _d("I0FAHVc5HRVRRlIYCxQ"),
Description = _d("I1pbBh8IAEJAWwUSH1IDQUAdGgwGC1taUh4eUgNYRhcWCQtCW1peVwwcBhRAGh4eUgNXVx0CAwZCW1oeDk0TDlhbBQRNHQxRFAYYGhcQFEYHGU0TFhRVUgMEHwcaFCYCHxxCQFwTA00dDFEUHRELUgRdRgEDQVINRhQGAh8cQltaUjYYBg0UZx4YGVIRWxQXFg4aQkdYHQNNFQdAR1IeGQFCW0McVxkdFVFGXA"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})
end)

return
end

oqnx.nightmare = false

pcall(function()
oqnx.quiet = true
oqnx.nightmareToggle:UpdateState(false)
oqnx.quiet = false
end)

oqnx.manualPause = false
oqnx.paused = false
jvfa.restorePause()
oqnx.pauseArmed = false

jvfa.endIfWrongMode(false)
jvfa.hardPick(false)

return
end

if not pnoc() then
return
end

oqnx.paused = true
local igwx = dtfe()

torj:Notify({
Title = _d("I0FAHVc5HRVRRlIYCxQ"),
Description = igwx and _d("NltDFwVNABdaFAIWGAEHUBo") or _d("MEFaUh4eUg5dQhdbTRAXQBQcGE0QEFFVGVcPBxZAWxxXCx0XWlBc"),
Lifetime = 5,
})
end,
}, _d("A0FAHSgZHRVRRg"))

oqnx.nightmareToggle = wfbm:Toggle({
Name = _d("I0FAHVcjGwVcQB8WHxdCYFsFEh8"),
Default = false,
Callback = function(ler)
if oqnx.quiet then
return
end

oqnx.nightmare = ler

if not ler then

oqnx.enabled = false
oqnx.pending = false
oqnx.pendingUntil = 0

jvfa.hardPick(false)

pcall(function()
oqnx.quiet = true
oqnx.ui:UpdateState(false)
oqnx.quiet = false
end)

if pnoc() then
oqnx.paused = true
local jfm = dtfe()

torj:Notify({
Title = _d("I0FAHVcjGwVcQB8WHxdCYFsFEh9SDVJS"),
Description = jfm and _d("LF1TGgMAExBRFAACA1ISVUEBEglc") or _d("MEFaUh4eUg5dQhdbTRAXQBQcGE0QEFFVGVcPBxZAWxxXCx0XWlBc"),
Lifetime = 5,
})
end

return
end

if ne.enabled and ne.role[1] ~= _d("FltDFwU") then
oqnx.nightmare = false

pcall(function()
oqnx.quiet = true
oqnx.nightmareToggle:UpdateState(false)
oqnx.quiet = false
end)

pcall(function()
torj:Dialog({
Title = _d("I0FAHVcjGwVcQB8WHxdCYFsFEh9SDVJS"),
Description = _d("LF1TGgMAExBRFCYYGhcQFFcdAgMGERRVAVc5HRVRRlIeA1IRWFsGV1xeQlVaFlcUHRdGFAEbAgZCBRQbBE0dDBQ") .. ne.roleName(1) .. _d("QkZdFR8ZUgxbQ1xXPhcWFEceGBlSUxRAHVc5HRVRRlIRBAARQBo"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})
end)

return
end

pcall(function()
oqnx.quiet = true
oqnx.ui:UpdateState(false)
oqnx.quiet = false
end)

oqnx.enabled = true
oqnx.manualPause = false
oqnx.paused = false

jvfa.restorePause()
oqnx.pauseArmed = false

jvfa.endIfWrongMode(true)
jvfa.hardPick(true)

oqnx.pending = false
oqnx.pendingUntil = 0
end,
}, _d("A0FAHSgDGwVcQB8WHxc9QFsFEh8"))

wfbm:Header({
Name = _d("I0FAHVc9ExdHUVIjAgUHRg"),
})

local mvv

mvv = wfbm:Toggle({
Name = _d("I0FAHVc9ExdHUVIxAR0NRg"),
Default = false,
Callback = function(fto)
gc.triggered = false

if fto and gc.floor <= 0 then
gc.enabled = false

pcall(function()
mvv:UpdateState(false)
end)

pcall(function()
evk.SaveClientData:FireServer({ pauseInfiniteEnabled = false })
end)

torj:Dialog({
Title = _d("I0FAHVc9ExdHUVIxAR0NRg"),
Description = _d("MVFAUhZNAgNBRxdXCx4NW0ZSFg8dFFEUQlcLGxBHQFJaTTMXQFtSJwwHEVEUJhgaFxAUWhcSCQFCQFtSHAMdFRRDGhIfF0JAW1IEGR0SGg"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})

return
end

gc.enabled = fto

pcall(function()
evk.SaveClientData:FireServer({
pauseInfiniteEnabled = fto,
pauseInfiniteAt = gc.floor,
})
end)
end,
}, _d("A0FAHSgdExdHUS0RAR0NRg"))

wfbm:Input({
Name = _d("MlVBARJNExYUUh4YAgA"),
Placeholder = _d("BxpTXFdYQg"),
AcceptedCharacters = _d("LEFZEBIfAQ"),
Callback = function(gox)
local tpm = tonumber(gox) or 0

if tpm < 0 then
tpm = 0
end

if tpm == gc.floor then
return
end

gc.floor = tpm
gc.triggered = false

if tpm <= 0 and gc.enabled then
gc.enabled = false

pcall(function()
mvv:UpdateState(false)
end)
end

pcall(function()
evk.SaveClientData:FireServer({
pauseInfiniteAt = tpm,
pauseInfiniteEnabled = gc.enabled,
})
end)
end,
}, _d("ElVBARIyExZrUh4YAgA"))

wfbm:Button({
Name = _d("MlVBARJNJg1DUQA"),
Callback = function()
local vz = false

pcall(function()
vz = dtfe()
end)

if vz then

oqnx.manualPause = true
return
end

torj:Dialog({
Title = _d("MlVBARJNJg1DUQA"),
Description = _d("LFsUHh4bF0JAWwUSH1IQQVpSAwJSElVBARJNAAtTXAZXAx0VGg"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})
end,
})

wfbm:Header({
Name = _d("I0FAHVcqGxRRFCcH"),
})

xzd.toggle = wfbm:Toggle({
Name = _d("I0FAHVcqGxRRFCcH"),
Default = false,
Callback = function(sqi)
xzd.triggered = false

if sqi and xzd.floor <= 0 then
xzd.enabled = false

pcall(function()
xzd.toggle:UpdateState(false)
end)

torj:Dialog({
Title = _d("I0FAHVcqGxRRFCcH"),
Description = _d("MVFAUhZNFQtCUVICHVIEWFsdBU0TAFtCF1ddUgRdRgEDTV9CdUEGGE01C0JRUiIdUgxRURYETQYNFF8cGBpSFVxRABJNBg0URwYYHVw"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})

return
end

xzd.enabled = sqi
end,
}, _d("A0FAHSgKGxRRawcH"))

wfbm:Input({
Name = _d("JV1CF1cYAkJbWlIRAR0NRg"),
Placeholder = _d("BxpTXFdaQg"),
AcceptedCharacters = _d("LEFZEBIfAQ"),
Callback = function(oent)
local apx = tonumber(oent) or 0

if apx < 0 then
apx = 0
end

if apx == xzd.floor then
return
end

xzd.floor = apx
xzd.triggered = false

if apx <= 0 and xzd.enabled then
xzd.enabled = false

pcall(function()
xzd.toggle:UpdateState(false)
end)
end
end,
}, _d("BV1CFygYAj1bWi0RAR0NRg"))

xzd.weatherToggle = wfbm:Toggle({
Name = _d("I0FAHVcKGxRRFAcHTR0MFEMXFhkaB0Y"),
Default = false,
Callback = function(ftnn)
xzd.weatherTriggered = false

if ftnn and next(xzd.weathers) == nil then
xzd.weatherEnabled = false

pcall(function()
xzd.weatherToggle:UpdateState(false)
end)

torj:Dialog({
Title = _d("NVFVBh8IAEJzXQQSTScS"),
Description = _d("Nl1XGVcMBkJYURMEGVINWlFSAAgTFlxRAFcPFw5bQ1IRBAARQBRfVwIGClFGBR4eF0JAXBcFCFILRxQcGBkaC1pTUgMCUgVdQhdXGAJCW1pc"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})

return
end

xzd.weatherEnabled = ftnn
end,
}, _d("A0FAHSgKGxRRawcHMh0Ma0MXFhkaB0Y"))

wfbm:Dropdown({
Name = _d("JV1CF1cYAkJDURMDBRcQRw"),
Multi = true,
Required = false,
Options = { _d("Nk1EGhgCHA"), _d("IFhdCA0MAAY"), _d("Ll1TGgMDGwxT"), _d("NV1aFgQZHRBZ"), _d("MVxVAB4DFQNa"), _d("MV1aFQIBExBdQAs"), _d("L1taEwUOGkJwWx8WBBw"), _d("NFtdFg"), _d("L1VQF1cEHEJ8URMBCBw"), _d("L1VaFRY") },
Callback = function(ncy)
xzd.weathers = {}

if type(ncy) == _d("FlVWHhI") then
for ousw, pgql in pairs(ncy) do
if pgql then
xzd.weathers[ousw] = true
end
end
end

xzd.weatherTriggered = false
end,
}, _d("BV1CFygYAj1DURMDBRcQRw"))

wfbm:Input({
Name = _d("L11aGxoYH0JSWB0YHwE"),
Placeholder = _d("UhQJUhYDC0JSWB0YHw"),
AcceptedCharacters = _d("LEFZFwUEEQ"),
Callback = function(wpgt)
local abyt = math.floor(tonumber(wpgt) or 0)

if abyt < 0 then
abyt = 0
end

xzd.weatherMinFloor = abyt
xzd.weatherTriggered = false
end,
}, _d("D11aGxoYHz1SWB0YHwE"))

wfbm:Button({
Name = _d("JV1CF1c4AkJgWwUSHw"),
Callback = function()
if not pnoc() then
torj:Dialog({
Title = _d("JV1CF1c4AkJgWwUSHw"),
Description = _d("LFsUHh4bF0JAWwUSH1IQQVpSAwJSBV1CF1cYAkJGXRUfGVIMW0Nc"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})

return
end

torj:Dialog({
Title = _d("JV1CF1c4AkJgWwUSHw"),
Description = _d("JFtGFBIEBkJAXBdXDgcQRlEcA00GDUNRAFcfBwwLFCYfBAFCV1UcGQIGQlZRUgIDFg1aUVw"),
Buttons = {
{
Name = _d("JVsUEBYOGQ"),
},
{
Name = _d("JV1CF1cYAg"),
Callback = function()
local hqc = false

pcall(function()
hqc = hr()
end)

if hqc then
return
end

task.defer(function()
task.wait(0.3)

torj:Dialog({
Title = _d("JV1CF1c4AkJgWwUSHw"),
Description = _d("LFsUFR4bF0JBRFIVGAYWW1pSFgMBFVFGFxNNX0JAXBdXHwcMFFkTDk0TDkZRExMUUgBRFB0BCABM"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
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

wfbm:Button({
Name = _d("IVxRERxNHg1HR1IfBAEWW0YL"),
Callback = function()
local becf = jvfa.remote(_d("MFFFBxIeBjZbQxcFJRsRQFsADg"))

if not becf then
torj:Dialog({
Title = _d("LltHAVclGxFAWwAO"),
Description = _d("NlxdAVcPBwtYUFIfDAFCWltSAwIFB0YUGh4eBg1GTVIFCB8NQFFc"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})

return
end

jvfa.standDown(jvfa.historyOpen)

pcall(function()
becf:FireServer()
end)
end,
})

wfbm:Button({
Name = _d("IVxRERxNFQdaUQAWGRsNWkc"),
Callback = function()

local rp = hzia:FindFirstChild(_d("NltDFwU/FxFBWAYwGBs"))
local ofg = rp and rp:FindFirstChild(_d("LURRHDAIHCpdRwYYHws"))

if not ofg then
torj:Dialog({
Title = _d("JVFaFwUMBgtbWgE"),
Description = _d("NlxdAVcPBwtYUFIfDAFCWltSEAgcB0ZVBh4CHBEUQxsZCR0VGg"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})

return
end

jvfa.standDown(jvfa.generationOpen)

pcall(function()
ofg:Fire()
end)
end,
})

uurn.bossTeams.towerSection = so:Section({
Side = _d("LlFSBg"),
})

uurn.bossTeams.towerSection:Header({
Name = _d("NltDFwVNJgdVWQE"),
})

uurn.bossTeams.towerSection:Paragraph({
Header = _d("KltDUgMCBQdGFAYSDB8RFEMdBQY"),
Body = _d("LVJSSFcIEwFcFAACA1IXR1EBVxoaA0BRBBIfUhZRVR9XBAYRFEceGBlSA1hGFxYJC0JcWx4THlxoPnscTU0XA1dcUgMCBQdGFBASAR0VFEYHGR5SFV1AGlcZGgcUQBcWAFISXVcZEglSBFtGUh4ZXA"),
})

uurn.bossTeams.towerToggle = uurn.bossTeams.towerSection:Toggle({
Name = _d("NltDFwVNJgdVWQE"),
Default = false,
Callback = function(xyqa)
uurn.bossTeams.towersOn = xyqa
end,
}, _d("FltDFwUyBgdVWQE"))

for kghs, hyh in ipairs({
{ kind = _d("FltDFwU"), name = _d("K1pSGxkEBhsUdxMEGR4HFBtSOQQVCkBZEwUI") },
{ kind = _d("ClVGFhQCAAc"), name = _d("K0dYExkJUipVRhYUAgAH") },
}) do
local qb = math.clamp(math.floor(tonumber(uurn.bossTeams.towerPicked[hyh.kind]) or 1), 1, 4)

uurn.bossTeams.towerPicked[hyh.kind] = qb

uurn.bossTeams.towerUi[hyh.kind] = uurn.bossTeams.towerSection:Dropdown({
Name = hyh.name,
Search = false,
Multi = false,
Required = false,
Default = qb,
Options = { _d("NlFVH1dc"), _d("NlFVH1df"), _d("NlFVH1de"), _d("NlFVH1dZ") },
Callback = function(vuee)
local ijyx = type(vuee) == _d("FlVWHhI") and vuee[1] or vuee
local cnnd = type(ijyx) == _d("EUBGGxkK") and tonumber(ijyx:match(_d("ShFQWV4"))) or nil

if cnnd then
uurn.bossTeams.towerPicked[hyh.kind] = cnnd
uurn.bossTeams.save()
end

pcall(function()
uurn.bossTeams.towerUi[hyh.kind]:UpdateName(hyh.name .. _d("Qta00Fc") .. (ijyx or _d("NlFVH1dc")))
end)
end,
}, _d("FlFVHygZHRVRRi0") .. hyh.kind)

pcall(function()
uurn.bossTeams.towerUi[hyh.kind]:UpdateSelection(_d("NlFVH1c") .. tostring(qb))
uurn.bossTeams.towerUi[hyh.kind]:UpdateName(hyh.name .. _d("Qta00Fc5FwNZFA") .. tostring(qb))
end)
end

uurn.bossTeams.towerSection:Header({
Name = _d("MUNVAlcCHEJSWB0YHw"),
})

uurn.bossTeams.towerSection:Paragraph({
Header = _d("MUNVAlcZFwNZFB0ZTRNCUlgdGB8"),
Body = _d("NlxRUhAMHwcTR1IYGhxCR0MTB0FSDFtAUhZNAgNBRxdZTTcDV1xSBRgeBxRdAVcMUgRYWx0FTRMMUBQGHwhSFlFVH1caHRBaFBQFAh9CQFwTA00UDltbAFcCHE4UQwAeGQYHWhQbGRkdQkBcF1cKEw9REwFXPhcWQF0cEB5STwoUMwIZHUJgURMaTSEVVURSRk0TDFAUQFtNAQ0UQBoSTRUDWVFSGgwZB0cUBh8IUhFDXQYUBVILQEcXGwtSFVxRHFcMUhBBWlIEGRMQQEdSAwUTFhRSHhgCAEwUeh0DBRsMUxQbBE0BFltEAhIJUgNaUFIDBRdCRkEcVwYXB0RHUh4ZAUJHWB0DQ3hodRQRFh4GDlEUAAIDUgVRQAFXGRoHFEcTGghSEUNdBhQFUgRGWx9XGRoLRxQCFgMXDhgUEBIOExdHUVIDBRdCU1UfEkoBQltDHFceBQNEFB0ZAQtCUl0AEh5SC1pHGxMIUitaUhsZBAYHFGYdGAABTD4+PhIMBAcUVVIRAR0NRhQTA01CQkBbUgMYAAwUQBoWGVIQQVgXVwIUBBo"),
})

function uurn.bossTeams.swapStatusText()
local drvb = uurn.bossTeams.swap
local gees = {}

if drvb.on then
table.insert(gees, _d("LVoUX1caAAtAQBcZTQYNFEAaEk0VA1lRVQRNMxdAW1IjCBMPFGcFFh1SEFtDAVk"))
else
table.insert(gees, _d("LVJSUlpNBgpRFBUWABdFRxQBAAwCQl1HUhsIFBYUVR4YAxdM"))
end

local bawx = {
{ index = 1, floor = drvb.floor, team = drvb.team },
{ index = 2, floor = drvb.floor2, team = drvb.team2 },
}

for zrdh, ovku in ipairs(bawx) do
if ovku.floor > 0 then
table.insert(gees, string.format(_d("MUNVAldIFlgUYBcWAFJHUBQUBQIfQlJYHRgfUkdQ"), ovku.index, ovku.team, ovku.floor))
else
table.insert(gees, string.format(_d("MUNVAldIFlgUWxQRTVoMWxQUGwIdEBRHFwNE"), ovku.index))
end
end

if uurn.bossTeams.swapMessage ~= _d("") then
table.insert(gees, uurn.bossTeams.swapMessage)
end

return table.concat(gees, _d("aA"))
end

function uurn.bossTeams.paintSwap()
pcall(function()
uurn.bossTeams.swapStatus:UpdateBody(uurn.bossTeams.swapStatusText())
end)
end

uurn.bossTeams.swapToggle = uurn.bossTeams.towerSection:Toggle({
Name = _d("MUNVAlcZFwNZFB0ZTRQOW1sA"),
Default = uurn.bossTeams.swap.on,
Callback = function(svw)
uurn.bossTeams.swap.on = svw

uurn.bossTeams.swapReset()

uurn.bossTeams.swapApply()
uurn.bossTeams.save()
end,
}, _d("EUNVAigZFwNZax0ZMhQOW1sA"))

uurn.bossTeams.swapInput = uurn.bossTeams.towerSection:Input({
Name = _d("JFhbHQU"),
Placeholder = _d("BxpTXFdYQlIUHEJXUFINUlJb"),
AcceptedCharacters = _d("LEFZFwUEEQ"),
Callback = function(ztg)
local cmf = tonumber(type(ztg) == _d("EUBGGxkK") and ztg:match(_d("ShFQWV4")) or ztg)

if cmf then
uurn.bossTeams.swap.floor = cmf
uurn.bossTeams.swapReset()
uurn.bossTeams.swapApply()
uurn.bossTeams.save()
end
end,
}, _d("BFhbHQU"))

uurn.bossTeams.swapDropdown = uurn.bossTeams.towerSection:Dropdown({
Name = _d("MUNVAlcZHQ"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(uurn.bossTeams.swap.team) or 1), 1, 4),
Options = { _d("NlFVH1dc"), _d("NlFVH1df"), _d("NlFVH1de"), _d("NlFVH1dZ") },
Callback = function(np)
local xs = type(np) == _d("FlVWHhI") and np[1] or np
local mqn = type(xs) == _d("EUBGGxkK") and tonumber(xs:match(_d("ShFQWV4"))) or nil

if mqn then
uurn.bossTeams.swap.team = mqn
uurn.bossTeams.swapReset()
uurn.bossTeams.swapApply()
uurn.bossTeams.save()
end

pcall(function()
uurn.bossTeams.swapDropdown:UpdateName(_d("MUNVAlcZHULWtNBX") .. (xs or _d("NlFVH1dc")))
end)

uurn.bossTeams.paintSwap()
end,
}, _d("EUNVAigZHQ"))

uurn.bossTeams.swapInput2 = uurn.bossTeams.towerSection:Input({
Name = _d("JFhbHQVNQA"),
Placeholder = _d("BxpTXFdcQlIEFFpHTU9CW1IUXg"),
AcceptedCharacters = _d("LEFZFwUEEQ"),
Callback = function(ddns)
local bznt = tonumber(type(ddns) == _d("EUBGGxkK") and ddns:match(_d("ShFQWV4")) or ddns)

if bznt then
uurn.bossTeams.swap.floor2 = bznt
uurn.bossTeams.swapReset()
uurn.bossTeams.swapApply()
uurn.bossTeams.save()
end
end,
}, _d("BFhbHQUyQA"))

uurn.bossTeams.swapDropdown2 = uurn.bossTeams.towerSection:Dropdown({
Name = _d("MUNVAlcZHUIG"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(uurn.bossTeams.swap.team2) or 1), 1, 4),
Options = { _d("NlFVH1dc"), _d("NlFVH1df"), _d("NlFVH1de"), _d("NlFVH1dZ") },
Callback = function(nfdf)
local bon = type(nfdf) == _d("FlVWHhI") and nfdf[1] or nfdf
local ambn = type(bon) == _d("EUBGGxkK") and tonumber(bon:match(_d("ShFQWV4"))) or nil

if ambn then
uurn.bossTeams.swap.team2 = ambn
uurn.bossTeams.swapReset()
uurn.bossTeams.swapApply()
uurn.bossTeams.save()
end

pcall(function()
uurn.bossTeams.swapDropdown2:UpdateName(_d("MUNVAlcZHUIGFJD3z1I") .. (bon or _d("NlFVH1dc")))
end)

uurn.bossTeams.paintSwap()
end,
}, _d("EUNVAigZHT0G"))

uurn.bossTeams.swapStatus = uurn.bossTeams.towerSection:Paragraph({
Header = _d("MUNVAlceBgNAQQE"),
Body = uurn.bossTeams.swapStatusText(),
})

pcall(function()
local fjkq = math.clamp(math.floor(tonumber(uurn.bossTeams.swap.team) or 1), 1, 4)
local han = math.clamp(math.floor(tonumber(uurn.bossTeams.swap.team2) or 1), 1, 4)

uurn.bossTeams.swapDropdown:UpdateSelection(_d("NlFVH1c") .. tostring(fjkq))
uurn.bossTeams.swapDropdown:UpdateName(_d("MUNVAlcZHULWtNBXORcDWRQ") .. tostring(fjkq))
uurn.bossTeams.swapDropdown2:UpdateSelection(_d("NlFVH1c") .. tostring(han))
uurn.bossTeams.swapDropdown2:UpdateName(_d("MUNVAlcZHUIGFJD3z1I2UVUfVw") .. tostring(han))
end)

task.spawn(function()
local jylq = uurn.bossTeams.swapStatusText()

while ha() do
local xewr = uurn.bossTeams.swapStatusText()

if xewr ~= jylq then
jylq = xewr
uurn.bossTeams.paintSwap()
end

task.wait(2)
end
end)

if uurn.bossTeams.swap.on then
task.delay(2, function()
pcall(uurn.bossTeams.swapApply)
end)
end

uurn.bossTeams.section = so:Section({
Side = _d("MF1TGgM"),
})

uurn.bossTeams.section:Header({
Name = _d("IFtHAVc5FwNZRw"),
})

uurn.bossTeams.section:Paragraph({
Header = _d("KltDUhUCAREUQBcWAAFCQ1sAHA"),
Body = _d("LVJSSFcDHRZcXRwQTRsRFEcFHhkRClFQUlpNFxRRRgtXCxsFXEBSAh4XERRAGhJNBgdVWVIOAgdCVVgAEgwWGxRcEwEIUg5dWhcTTQcSGBQFHwQRChRdAVcZGgcUZx4YGVJTFEAXFgBSF1pYFwQeUhFYWwZXX1IWVV8XBE0GClEUEBYZBg5RGnh9IhxYFFETFAVSA0ZRE1cPFw5bQ1IRBBUKQEdSAAQGChRAGhJNBgdVWVIOAgdCRF0RHE0UDUYUGwND"),
})

uurn.bossTeams.toggle = uurn.bossTeams.section:Toggle({
Name = _d("IFtHAVc5FwNZRw"),
Default = false,
Callback = function(oie)
uurn.bossTeams.enabled = oie
end,
}, _d("AFtHASgZFwNZRw"))

for uejc, qema in ipairs(pi) do
local jraf = uurn.bossTeams.picked[qema.id] or 1

jraf = math.clamp(math.floor(tonumber(jraf) or 1), 1, 4)
uurn.bossTeams.picked[qema.id] = jraf

uurn.bossTeams.ui[qema.id] = uurn.bossTeams.section:Dropdown({
Name = qema.name,
Search = false,
Multi = false,
Required = false,

Default = jraf,
Options = { _d("NlFVH1dc"), _d("NlFVH1df"), _d("NlFVH1de"), _d("NlFVH1dZ") },
Callback = function(jx)
local rwr = type(jx) == _d("FlVWHhI") and jx[1] or jx
local raz = type(rwr) == _d("EUBGGxkK") and tonumber(rwr:match(_d("ShFQWV4"))) or nil

if raz then
uurn.bossTeams.picked[qema.id] = raz

uurn.bossTeams.save()
end

pcall(function()
uurn.bossTeams.ui[qema.id]:UpdateName(qema.name .. _d("Qta00Fc") .. (rwr or _d("NlFVH1dc")))
end)
end,
}, _d("FlFVHygaHRBYUC0") .. qema.id)

pcall(function()
uurn.bossTeams.ui[qema.id]:UpdateSelection(_d("NlFVH1c") .. tostring(jraf))
uurn.bossTeams.ui[qema.id]:UpdateName(qema.name .. _d("Qta00Fc5FwNZFA") .. tostring(jraf))
end)
end

uurn.bossTeams.raidSection = so:Section({
Side = _d("MF1TGgM"),
})

uurn.bossTeams.raidSection:Header({
Name = _d("MFVdFlc5FwNZRw"),
})

uurn.bossTeams.raidSection:Paragraph({
Header = _d("KltDUgUMGwYUQBcWAAFCQ1sAHA"),
Body = _d("LVJSSFcfEwtQR1ICHhdCQ1wTAwgEB0YUBhIMH0JAXBdXHh4NQBQTGx8XA1BNUh8CHgZHGnh9IhxYFFETFAVSEFVdFlcPFw5bQ1IeHlIEW0EVHxlSFV1AGlcZGgcUQBcWAFISXVcZEglSBFtGUh4ZXA"),
})

uurn.bossTeams.raidToggle = uurn.bossTeams.raidSection:Toggle({
Name = _d("MFVdFlc5FwNZRw"),
Default = false,
Callback = function(hnnn)
uurn.bossTeams.raidsOn = hnnn
end,
}, _d("EFVdFigZFwNZRw"))

for mvyn, xjir in ipairs(hzke.Raids) do
if xjir.BossTitle and xjir.id then
local mvhx = uurn.bossTeams.raidPicked[xjir.id] or 1

mvhx = math.clamp(math.floor(tonumber(mvhx) or 1), 1, 4)
uurn.bossTeams.raidPicked[xjir.id] = mvhx

uurn.bossTeams.raidUi[xjir.id] = uurn.bossTeams.raidSection:Dropdown({
Name = xjir.BossTitle,
Search = false,
Multi = false,
Required = false,
Default = mvhx,
Options = { _d("NlFVH1dc"), _d("NlFVH1df"), _d("NlFVH1de"), _d("NlFVH1dZ") },
Callback = function(eij)
local cux = type(eij) == _d("FlVWHhI") and eij[1] or eij
local dp = type(cux) == _d("EUBGGxkK") and tonumber(cux:match(_d("ShFQWV4"))) or nil

if dp then
uurn.bossTeams.raidPicked[xjir.id] = dp
uurn.bossTeams.save()
end

pcall(function()
uurn.bossTeams.raidUi[xjir.id]:UpdateName(xjir.BossTitle .. _d("Qta00Fc") .. (cux or _d("NlFVH1dc")))
end)
end,
}, _d("FlFVHygfEwtQaw") .. xjir.id)

pcall(function()
uurn.bossTeams.raidUi[xjir.id]:UpdateSelection(_d("NlFVH1c") .. tostring(mvhx))
uurn.bossTeams.raidUi[xjir.id]:UpdateName(xjir.BossTitle .. _d("Qta00Fc5FwNZFA") .. tostring(mvhx))
end)
end
end

task.spawn(function()
local dq = hia()

while ha() do
local dgo = hia()

if ne.enabled and ne.statusText then
dgo = ne.statusText()
end

dgo = dgo .. _d("aD5nFwUbFxAUQQJX") .. uou()

if dgo ~= dq then
dq = dgo
pcall(function()
wcyj:UpdateBody(dgo)
end)
end
task.wait(0.5)
end
end)

task.spawn(function()
while ha() do
for imj, qmv in ipairs({ _d("IFVABhsINRdd"), _d("IFVABhsINRddBg") }) do
local cjo = hzia:FindFirstChild(qmv)
local zqzl = cjo and cjo:FindFirstChild(_d("IFVABhsIIQFGURcZ"))
local fss = cjo and cjo:FindFirstChild(_d("Kl1QFzUMBhZYUTACGQYNWg"))

if zqzl and zqzl.Visible and fss and not fss.Visible then
fss.Visible = true
end
end

task.wait(0.5)
end
end)

task.spawn(function()
local ddbk = false

while ha() do
if mgn then
local cjj = hzia:FindFirstChild(_d("NltDFwU/FxFBWAYwGBs"))
local zrht = cjj and cjj:FindFirstChild(_d("MFFHBxsZNBBVWRc"))
local ci = cjj and cjj:FindFirstChild(_d("JVFaFwUMBgtaUzQFDB8H"))

if ci and ci.Visible then
ci.Visible = false
end

local fvob = zrht and zrht.Visible or false

if fvob and not ddbk then
local zhj = zrht:FindFirstChild(_d("IVhbARIvBxZAWxw"))
local ctrs = false

if zhj then
for dkl, vdn in ipairs({ _d("L1tBARIvBxZAWxxGLh4LV18"), _d("I1dAGwEMBgdQ") }) do
local lis = zhj[vdn]
if lis then
for sas, jxt in ipairs(getconnections(lis)) do
pcall(function()
jxt:Fire()
end)
ctrs = true
end
end
end
end

if not ctrs then
zrht.Visible = false
else
task.spawn(function()
task.wait(0.3)
if zrht.Parent and zrht.Visible then
zrht.Visible = false
end
end)
end
end

ddbk = fvob
else
ddbk = false
end

task.wait(0.2)
end
end)

local omyb = {}

function omyb.active()
return uurn.enabled or uurn.story
end

function omyb.towerHolds()
if ne.enabled then
return false
end

if ud.run.enabled then
return true
end

return oqnx.enabled and not oqnx.paused
end

function omyb.ready(gmba, gce, zhyr)
local xhtc = uurn.unlocked[gmba]

return (not xhtc or xhtc[gce] ~= false) and bmls(gmba, gce) <= zhyr
end

function omyb.hasReadyTarget()
local lu = os.time()

for zdwm, rtmm in ipairs(jxn()) do
for xsb, ptp in ipairs(fdys()) do
if omyb.ready(rtmm, ptp, lu) then
return true
end
end
end

return false
end

function omyb.backOff(rgzm, ew)
ni(rgzm, ew, os.time() + 5)
end

function omyb.findTarget()
for ctcp, mnc in ipairs(jxn()) do
local vpzr = kolr(mnc)
local qoyk = os.time() - (uurn.lastFetch[mnc] or 0) > 60

if qoyk and vpzr and not uurn.walkToNpc then
tv(vpzr)
task.wait(0.3)
et(mnc)
end

for kuh, sod in ipairs(fdys()) do
if omyb.ready(mnc, sod, os.time()) then
return mnc, sod
end
end
end

return nil
end

function uurn.bossTeams.slotForFight()
if ne.hasSlot2 == false then
return 1
end

if ne.busy(2) then
return 1
end

return 2
end

function uurn.bossTeams.slotTeam(jtd)
local zpij = hzia:FindFirstChild(_d("MVFABh4DFRFzQRs"))
local mtjf = zpij and zpij:FindFirstChild(_d("MVhbBiMIEw8") .. jtd .. _d("IEFABhgD"), true)
local ytj = mtjf and mtjf.Text

return ytj and tonumber(ytj:match(_d("ShFQWV4"))) or nil
end

function uurn.bossTeams.applyTeam(aryt, ar)
aryt = tonumber(aryt)

if not aryt then
return false
end

ar = tonumber(ar) or uurn.bossTeams.slotForFight()

if ne.busy(ar) then
return false
end

uurn.bossTeams.lastSlot = ar

local pvco = uurn.bossTeams.slotTeam(ar) or uurn.bossTeams.applied[ar]

if pvco == aryt then
return true
end

local qpzl = jvfa.remote(_d("MUNdBhQFJgdVWQ"))

if not qpzl then
return false
end

local bei = pcall(function()
qpzl:FireServer(aryt, false, ar)
end)

uurn.bossTeams.applied[ar] = aryt
task.wait(0.2)

return bei
end

function uurn.bossTeams.apply(fx)
if not uurn.bossTeams.enabled then
return
end

local lwy = uurn.bossTeams.worldOf[fx]
local tc = lwy and uurn.bossTeams.picked[lwy]

if not tc then
return
end

uurn.bossTeams.applyTeam(tc)
end

function uurn.bossTeams.applyTower(dkb, jpev)
if not uurn.bossTeams.towersOn then
return false
end

local vtxh = uurn.bossTeams.towerPicked[dkb]

local pxnf = uurn.bossTeams.swapFired[dkb]

if uurn.bossTeams.swap.on and type(pxnf) == _d("FlVWHhI") then
vtxh = pxnf[2] or pxnf[1] or vtxh
end

if not vtxh then
return false
end

return uurn.bossTeams.applyTeam(vtxh, jpev)
end

function uurn.bossTeams.applyRaid(opem)
if not uurn.bossTeams.raidsOn then
return
end

local ldev = opem and uurn.bossTeams.raidPicked[opem]

if not ldev then
return
end

uurn.bossTeams.applyTeam(ldev)
end

function omyb.fight(mxq, ooe)
local uoi = kolr(mxq)

if not uoi then
omyb.backOff(mxq, ooe)
return false
end

local ejbh

if uurn.walkToNpc then
local haqg = kvg[mxq]

if haqg then
evk.TeleportToWorld:FireServer(haqg)
task.wait(2.5)

local qpsv = kolr(mxq) or uoi
local aa = qpsv:GetPivot()

ejbh = alx(aa.Position + aa.LookVector * 6, function()
return not omyb.active() or not uurn.walkToNpc
end)

if ejbh then
et(mxq)
ejbh = omyb.ready(mxq, ooe, os.time())
end
end
else
ejbh = tv(uoi)
end

if not ejbh then
omyb.backOff(mxq, ooe)
return false
end

task.wait(0.4)
uurn.bossTeams.apply(mxq)
uurn.activeDifficulty[mxq] = ooe
evk.SetNPCDifficulty:FireServer(mxq, ooe)
task.wait(0.4)

uurn.currentBattle = {
npcId = mxq,
difficulty = ooe,
}
ik = mxq
od = ooe
evk.StartNPCBattle:FireServer(mxq)
ni(mxq, ooe, os.time() + 10)
uurn.battlePending = true
uurn.battlePendingUntil = os.time() + 30
task.wait(1)

return true
end

uurn.workPending = function()

if pxa.misc and pxa.misc.cards and pxa.misc.cards.inFlight then
return true
end

if not omyb.active() then
return false
end

if uurn.battlePending then
return true
end

local wzj = ne.npcSlot()

if wzj and ne.busy(wzj) then
return true
end

return omyb.hasReadyTarget()
end

task.spawn(function()
while ha() do

local xgv = (ne.enabled and (pxa.enabled or vr.enabled or pxa.worldBoss.enabled))
or omyb.towerHolds()
or not ne.slotFree(ne.npcSlot())

or (pxa.misc and pxa.misc.cards and pxa.misc.cards.inFlight)
or (uurn.battlePending and os.time() < uurn.battlePendingUntil)

if omyb.active() and not xgv and not ne.prioBlocks(_d("DERX")) then
local qbe, lrb = omyb.findTarget()

if qbe then
omyb.fight(qbe, lrb)
end
end

task.wait(0.5)
end
end)

task.spawn(function()
while ha() do

local hxow = {}

if pxa.enabled then
local fyu = ne.roleSlot(_d("DERX"))

if fyu then
table.insert(hxow, fyu)
end

if ne.splitNpc() and fyu ~= 2 then
table.insert(hxow, 2)
end
end

local cqe = wtba:FindFirstChild(_d("MFVdFiQZExZBRw"))

if #hxow > 0 and cqe and (not vr.enabled or ne.splitNpc()) and (ne.enabled or not uurn.workPending()) then
for xrf, ktu in ipairs(hxow) do
local trqs = cqe

local ykh = pxa.bossFor(ktu, (ktu ~= 1 and not ne.splitNpc()) and 1 or nil)
local mch = trqs:GetAttribute(_d("K0d7AhID")) == true or trqs:GetAttribute(_d("JFtGERIJ")) == true
local mwb = ykh ~= nil and trqs:GetAttribute(_d("MFFVFg4y") .. ykh) == true
local hwro = ykh and ca(ykh)

if ykh and pxa.pending[ykh] and os.time() >= (pxa.pendingUntil[ykh] or 0) then
pxa.pending[ykh] = false
pxa.cleared[ykh] = nil
end

if ykh and ne.slotFree(ktu) and mch and mwb and pxa.cleared[ykh] ~= hwro and not pxa.pending[ykh] then
local whq = zutd[ykh]
local fqlh = whq and kolr(whq)
local rod = false

if fqlh then
if pxa.walkToBoss then
local tphz = oiuw[ykh]
local npjn = aqzz.Character and aqzz.Character:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))
local me = fqlh:GetPivot().Position
local qcd = npjn and (npjn.Position - me).Magnitude <= 15

if qcd then
rod = true
elseif tphz then
evk.TeleportToWorld:FireServer(tphz)

local jcrm = os.clock()
while os.clock() - jcrm < 2.5 and pxa.enabled do
task.wait(0.1)
end

if pxa.enabled then
local flbu = kolr(whq) or fqlh
local tu = flbu:GetPivot()
local vef = tu.Position + tu.LookVector * 6
rod = co(vef, pxa.walkSpeed, function()
return not pxa.enabled or not pxa.walkToBoss
end)
end
end

if not rod then
rod = tv(fqlh)
end
else
rod = tv(fqlh)
end

if rod then
task.wait(0.5)
end
end

if rod and not ne.prioBlocks(_d("EFVdFgQ")) then
pxa.inFlight[ykh] = ktu
pxa.pending[ykh] = true
pxa.pendingUntil[ykh] = os.time() + 15
pxa.cleared[ykh] = hwro

local xkuy = pxa.difficulties[1] or _d("DFtGHxYB")
local hu = pxa.progress[ykh]

if hu then
local ora = hu.unlocked
local grru = hu.cooldowns

for kvnm, xhms in ipairs(pxa.difficulties) do
local ydn = not ora or ora[xhms] ~= false
local khg = grru and tonumber(grru[xhms]) or 0

if ydn and khg <= 0 then
xkuy = xhms
break
end
end
end

uurn.bossTeams.applyRaid(ykh)
evk.SetRaidDifficulty:FireServer(xkuy, ykh)
task.wait(0.3)
evk.StartRaidBattle:FireServer(ykh)
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while ha() do
local gli = vr.inBattle and os.time() < vr.inBattleUntil

if vr.enabled and (ne.enabled or not uurn.workPending()) and not gli and ne.slotFree(ne.roomSlot()) and not (vr.pending and os.time() < vr.pendingUntil) then
local ais = vr.progress

if ais == nil then
evk.RequestInfiniteRoomProgress:FireServer()
task.wait(0.5)
else
local osni = nil

for ghes, tfmc in ipairs(hv.Milestones) do
if hv.isMilestoneUnlocked(tfmc, ais) and not hv.isMilestoneCleared(tfmc, ais) then
osni = tfmc
break
end
end

if osni then

local obkl = ne.roomSlot()

vr.currentRoom = osni
vr.inBattle = true
vr.inBattleUntil = os.time() + 60
vr.pending = true
vr.pendingUntil = os.time() + 10

local ifyt = hzia:FindFirstChild(obkl == 2 and _d("MFFHFwMvExZAWBcxAR0NRgY") or _d("MFFHFwMvExZAWBcxAR0NRg"))
if ifyt and ifyt:IsA(_d("IF1aFhYPHgdxQhcZGQ")) then
ifyt:Fire(osni, _d("C1pSGxkEBgdrRh0YAA"))
end

local ufb = hzia:FindFirstChild(obkl == 2 and _d("MUBVAAMkHARdWhsDCCANW1kwFhkGDlEG") or _d("MUBVAAMkHARdWhsDCCANW1kwFhkGDlE"))
if ufb and ufb:IsA(_d("IF1aFhYPHgdxQhcZGQ")) then
ufb:Fire(osni)
end

evk.StartBattle:FireServer(_d("C1pSGxkEBgdrRh0YAA"), {
milestone = osni,
slot = obkl,
})
task.wait(2)
end
end
end

task.wait(1)
end
end)

local function wufq(cxik, ykcf)
local ndp = hzia:FindFirstChild(_d("MVdGFxIDNRdd"))

if not ndp then
return
end

local tq = ndp:FindFirstChild(cxik)
local rbbl = tq and tq:FindFirstChild(_d("NFVYBxIhEwBRWA"), true)
local mzv = tq and tq:FindFirstChild(_d("LlVWFxs"), true)

if not tq then
return
end

local qsy = false

if rbbl then
qsy = rbbl.Text == _d("LVo")
elseif mzv then
qsy = not string.lower(mzv.Text):find(_d("DVJS"), 1, true)
end

if qsy ~= ykcf then
for pmql, yfg in ipairs(getconnections(tq.MouseButton1Click)) do
local vafi = yfg.Function

if type(vafi) == _d("BEFaEQMEHQw") then
pcall(vafi)
else
pcall(function()
yfg:Fire()
end)
end
end
end
end

getgenv().ACBXSetRollButton = wufq

local function fkgc(kmm)
wufq(_d("M0FdERw/HQ5YdgcDGR0M"), kmm)
wufq(_d("I0FAHSUCHg52QQYDAhw"), kmm)
end

getgenv().ACBXSetRollUi = fkgc
ubof.setRollButton = wufq

pcall(function()
evk.SaveClientData:FireServer({ autoHideBattle = false })
end)

task.defer(function()
task.wait(0.5)

local wyxy = hzia:FindFirstChild(_d("IFVABhsINRdd"))
local jjoj = wyxy and wyxy:FindFirstChild(_d("IFVABhsIIQFGURcZ"))
local rkjw = wyxy and wyxy:FindFirstChild(_d("Kl1QFzUMBhZYUTACGQYNWg"))

if rkjw and rkjw.Visible and jjoj and not jjoj.Visible and vdgv() then
for mlr, dxjy in ipairs(getconnections(rkjw.MouseButton1Click)) do
local rvwr = dxjy.Function

if type(rvwr) == _d("BEFaEQMEHQw") then
pcall(rvwr)
else
pcall(function()
dxjy:Fire()
end)
end
end
end
end)

fkgc(true)

task.spawn(function()
while ha() do

if ubof.autoRoll then
wufq(_d("I0FAHSUCHg52QQYDAhw"), true)
end

if ubof.autoQuickRoll then
wufq(_d("M0FdERw/HQ5YdgcDGR0M"), true)
end

task.wait(1)
end
end)

local function jqgr()

if oqnx.floor then
return oqnx.floor
end

local apgl = hzia:FindFirstChild(_d("IFVABhsINRdd"))

if not apgl then
return nil
end

for pbb, hynu in ipairs({ _d("NltDFwUrHg1bRj4WDxcO"), _d("MEFaNBsCHRB4VRASAQ") }) do
local dlxh = apgl:FindFirstChild(hynu)

if dlxh and dlxh.Visible and dlxh.Text then
local eyrs = tonumber(dlxh.Text:match(_d("ShFQWV4")))

if eyrs then
return eyrs
end
end
end

local nygx = apgl:FindFirstChild(_d("JFhbHQU+ERBRURw"))
local reva = nygx and nygx:FindFirstChild(_d("NltEMBYf"))
local pamq = reva and reva:FindFirstChild(_d("JFhbHQUhEwBRWA"))

if pamq then
return tonumber(pamq.Text:match(_d("ShFQWV4")))
end

return nil
end

function uurn.bossTeams.swapRows(fnqo)
local fxly = hzia:FindFirstChild(_d("MVFABh4DFRFzQRs"))
local ebe = fxly and fxly:FindFirstChild(_d("I0FAHSQaExI") .. fnqo .. _d("MFtD"), true)

if not ebe then
return nil
end

return ebe:FindFirstChild(_d("I0FAHSQaExI") .. fnqo .. _d("IVxRERw")),
ebe:FindFirstChild(_d("I0FAHSQaExI") .. fnqo .. _d("NlFVHw")),
ebe:FindFirstChild(_d("I0FAHSQaExI") .. fnqo .. _d("JFhbHQU"))
end

function uurn.bossTeams.swapOn(kwi)
local wxd = hzia:FindFirstChild(_d("MVFABh4DFRFzQRs"))
local rt = wxd and wxd:FindFirstChild(_d("JVFAIRIZBgtaUwE"), true)

if not rt then
return nil
end

local ajfl, pizn = pcall(function()
return rt:Invoke()
end)

if ajfl and type(pizn) == _d("FlVWHhI") then
return pizn[kwi == 1 and _d("A0FAHSMIEw9nQxMHKBwDVlgXEw") or _d("A0FAHSMIEw9nQxMHXzcMVVYeEgk")] == true
end

return nil
end

function uurn.bossTeams.swapBox(sln, lslp)
if tonumber(sln.Text) == lslp then
return
end

sln.Text = tostring(lslp)

if getconnections then
for ieq, zynv in ipairs(getconnections(sln.FocusLost)) do
pcall(function()
zynv:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end

function uurn.bossTeams.swapSet(lzft, wfxs, axf, iznu)
local mizw, qjt, jnhd = uurn.bossTeams.swapRows(lzft)

if not (mizw and qjt and jnhd) then
return false
end

axf = math.max(1, math.floor(tonumber(axf) or 1))
iznu = math.clamp(math.floor(tonumber(iznu) or 1), 1, 4)

uurn.bossTeams.swapBox(jnhd, axf)
uurn.bossTeams.swapBox(qjt, iznu)

local park = uurn.bossTeams.swapOn(lzft)

if park ~= nil and park ~= (wfxs == true) and getconnections then
pcall(function()
for tvl, ojze in ipairs(getconnections(mizw.MouseButton1Click)) do
pcall(function()
ojze:Fire()
end)
end
end)
end

local wyhr = lzft == 1 and _d("") or _d("UA")

pcall(function()
evk.SaveClientData:FireServer({
[_d("A0FAHSMIEw9nQxMH") .. wyhr .. _d("J1pVEBsIFg")] = wfxs == true,
[_d("A0FAHSMIEw9nQxMH") .. wyhr .. _d("NlFVHw")] = iznu,
[_d("A0FAHSMIEw9nQxMH") .. wyhr .. _d("JFhbHQU")] = axf,
})
end)

return true
end

function uurn.bossTeams.swapApply()
local uv = uurn.bossTeams
local hnb = uv.swap
local fvoz = true

if hnb.on then
fvoz = uv.swapSet(1, hnb.floor > 0, hnb.floor, hnb.team)
fvoz = uv.swapSet(2, hnb.floor2 > 0, hnb.floor2, hnb.team2) and fvoz
else
fvoz = uv.swapSet(1, false, hnb.floor, hnb.team)
fvoz = uv.swapSet(2, false, hnb.floor2, hnb.team2) and fvoz
end

uv.swapMessage = _d("")

if not fvoz then
uv.swapMessage = _d("NlxRUhAMHwcTR1I2GAYNFGAXFgBSMUNVAlcfHRVHFBMFCFIMW0BSFRgbDkAUCxIZUk8URhcDHwsLWlNc")
end

uv.paintSwap()
end

function uurn.bossTeams.swapReset(bcue)
local oc = uurn.bossTeams

if bcue then
oc.swapFired[bcue] = nil
else
oc.swapFired = {}
end
end

function uurn.bossTeams.swapTick()
local wy = uurn.bossTeams
local vax = wy.swap

if not vax.on or (vax.floor <= 0 and vax.floor2 <= 0) then
if next(wy.swapFired) ~= nil then
wy.swapFired = {}
end

return
end

local chqs = os.clock()
local kbo = jvfa.remote(_d("MUNdBhQFJgdVWQ"))

if chqs - (wy.swapWroteAt or 0) > 10 then
wy.swapWroteAt = chqs
wy.swapApply()
end

local qngj = {
{
kind = _d("FltDFwU"),
slot = ne.towerSlot(),

live = chqs - (oqnx.floorAt or 0) < 90,
floor = jqgr(),

own = true,
},
{
kind = _d("ClVGFhQCAAc"),
slot = ne.hardcoreSlot(),
live = yi.active(),
floor = yi.floorNow(),

own = false,
},
}

local mfb = {
{ index = 1, floor = vax.floor, team = vax.team },
{ index = 2, floor = vax.floor2, team = vax.team2 },
}

for djlo, nkfz in ipairs(qngj) do
if not nkfz.live then

wy.swapFired[nkfz.kind] = nil
elseif nkfz.own and kbo and nkfz.floor then
local mvcw = wy.swapFired[nkfz.kind]

for qpfj, utf in ipairs(mfb) do
local najv = type(mvcw) == _d("FlVWHhI") and mvcw[utf.index]

if utf.floor > 0 and nkfz.floor == utf.floor and not najv then
local arvk = pcall(function()
kbo:FireServer(math.clamp(math.floor(utf.team), 1, 4), true, nkfz.slot or 1)
end)

if arvk then
mvcw = type(mvcw) == _d("FlVWHhI") and mvcw or {}
mvcw[utf.index] = utf.team
wy.swapFired[nkfz.kind] = mvcw

wy.swapMessage = string.format(_d("IVVHBhsIUgRYWx0FTVcGFBlSBBobFldcFxNNBg0UYBcWAFJHUBo"), nkfz.floor, utf.team)
wy.paintSwap()
end
end
end
end
end
end

task.spawn(function()
while ha() do
pcall(uurn.bossTeams.swapTick)
task.wait(0.5)
end
end)

local function okhr()

return omyb.active() and omyb.hasReadyTarget()
end

function pxa.worldBoss.remote(qh)
local emu = pxa.worldBoss

emu.remotes = emu.remotes or {}

local chn = emu.remotes[qh]

if chn and chn.Parent then
return chn
end

local lbfq = jvfa.remote(qh)

if lbfq then
emu.remotes[qh] = lbfq
end

return lbfq
end

function pxa.worldBoss.setRepeat(usv)
local qazx = pxa.worldBoss
local bywj = qazx.remote(_d("NVtGHhMvHRFHdREDBB0M"))

if not bywj then
return false
end

local xuxx = qazx.state
local soyr = type(xuxx) == _d("FlVWHhI") and xuxx.repeatOn == true

if soyr == (usv and true or false) then
qazx.repeatIntent = nil

return true
end

if usv then
local gnn = workspace:FindFirstChild(_d("NVtGHhMvHRFHdQASAxM"))
local pqn = gnn and (gnn:FindFirstChild(_d("IVFYHjoMCg")) or gnn)
local hmci = aqzz.Character and aqzz.Character:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not (pqn and hmci) then
return false
end

local zs, wrp = pcall(function()
return pqn:GetPivot()
end)

if not zs or (hmci.Position - wrp.Position).Magnitude > 60 then
return false
end
end

if qazx.repeatIntent == usv and os.clock() - (qazx.repeatAskedAt or 0) < 20 then
return false
end

qazx.repeatIntent = usv

pcall(function()
bywj:FireServer(_d("EFFEFxYZ"))
end)

qazx.repeatAskedAt = os.clock()

return true
end

function pxa.worldBoss.requestSync()
local kpl = pxa.worldBoss
local vta = kpl.remote(_d("NVtGHhMvHRFHdREDBB0M"))

if vta then
pcall(function()
vta:FireServer(_d("EU1aEQ"))
end)
end

kpl.askedAt = os.clock()
end

function pxa.worldBoss.hasWork()
local ldx = pxa.worldBoss
local ykxe = ldx.state

if not ldx.enabled or type(ykxe) ~= _d("FlVWHhI") then
return false
end

local dtha = ldx.isOpen()

if dtha == nil then
dtha = ykxe.open == true
end

return dtha and ykxe.inFight ~= true
end

pxa.worldBoss.bossUp = function()
local eyiz = pxa.worldBoss

if not eyiz.enabled then
return false
end

local dxw = eyiz.isOpen()

if dxw ~= nil then
return dxw == true
end

local urq = eyiz.state

return type(urq) == _d("FlVWHhI") and urq.open == true
end

function pxa.worldBoss.meter()
local okd = pxa.worldBoss
local kmla = os.clock()

if kmla - (okd.meterAt or 0) < 1 then
return okd.meterCurrent, okd.meterMax
end

okd.meterAt = kmla
okd.meterCurrent = nil
okd.meterMax = nil

local dau = wtba:FindFirstChild(_d("NVtGHhMvHRFHZwYWGQcR"))
local dmd = dau and tonumber(dau:GetAttribute(_d("L1FAFwU")))
local zwfi = dau and tonumber(dau:GetAttribute(_d("L1FAFwUgExo")))

if dmd and zwfi and zwfi > 0 then
okd.meterCurrent = dmd
okd.meterMax = zwfi

return okd.meterCurrent, okd.meterMax
end

local function cc(toew)
if type(toew) ~= _d("EUBGGxkK") then
return nil
end

local besz, kqk = toew:match(_d("Sm8RFlJDL0kdEQFdRSkpeXYZGg8vXR0"))
local bnwv = tonumber(besz)

if not bnwv then
return nil
end

local nute = ({ K = 1000, M = 1000000, B = 1000000000 })[string.upper(kqk or _d(""))] or 1

return bnwv * nute
end

local hfhh = hzia:FindFirstChild(_d("NVtGHhMvHRFHdhMZAxcQc0Eb"))
local mes = hfhh and hfhh:FindFirstChild(_d("IFVaHBIf"))
local fdle = mes and mes:FindFirstChild(_d("L1FAFwUvExA"))
local vxt = fdle

if fdle and not fdle:IsA(_d("NlFMBjsMEAdY")) then
vxt = fdle:FindFirstChild(_d("NlFMBg"))
end

local ycx = vxt and vxt:IsA(_d("NlFMBjsMEAdY")) and vxt.Text or nil

if type(ycx) == _d("EUBGGxkK") then
local jig, qjam = ycx:match(_d("Sm9qXSpGW00cGlle"))

okd.meterCurrent = cc(jig)
okd.meterMax = cc(qjam)
end

return okd.meterCurrent, okd.meterMax
end

function pxa.worldBoss.meterFull()
local szm, azl = pxa.worldBoss.meter()

return szm ~= nil and azl ~= nil and azl > 0 and szm >= azl
end

pxa.worldBoss.holdsFishing = function()
local uam = pxa.worldBoss

if not uam.enabled or not uam.bossUp() then
return false
end

if uam.stopAtFull and uam.meterFull() then
return false
end

return ne.prioBlocks(_d("FVVAFwU"))
end

pxa.worldBoss.holdsDigging = function()
local iyhp = pxa.worldBoss

if not iyhp.enabled or not iyhp.bossUp() then
return false
end

if iyhp.stopAtFull and iyhp.meterFull() then
return false
end

return ne.digBlocked()
end

pxa.worldBoss.usesGameChain = function()
return true
end

function pxa.worldBoss.travel()
local zuob = pxa.worldBoss
local ilh = aqzz.Character
local puf = ilh and ilh:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not puf or os.clock() < zuob.travelUntil then
return
end

zuob.travelUntil = os.clock() + 6

local slan = workspace:FindFirstChild(_d("NVtGHhMvHRFHZB0FGRMO"))
local dcsd = slan and slan:FindFirstChild(_d("MltGBhYB"))

if not dcsd then
return
end

if (puf.Position - dcsd.Position).Magnitude > 150 then
local fsv = jvfa.remote(_d("NlFYFwcCABZgWyUYHx4G"))

if fsv then
pcall(function()
fsv:FireServer(_d("DltWEA4"))
end)
end

return
end

if (puf.Position - dcsd.Position).Magnitude > 6 then
zuob.walkLeg(dcsd.Position + Vector3.new(0, 3, 0), 4)

if (puf.Position - dcsd.Position).Magnitude > 9 then
return
end
end

local wdd = dcsd:FindFirstChildOfClass(_d("MkZbCh4AGxZNZAAYAAIW"))

if not wdd then
return
end

pcall(function()
if type(fireproximityprompt) == _d("BEFaEQMEHQw") then
fireproximityprompt(wdd)
else
wdd:InputHoldBegin()
task.wait(0.25)
wdd:InputHoldEnd()
end
end)
end

function pxa.worldBoss.reach()
local jqf = pxa.worldBoss

local ov = workspace:FindFirstChild(_d("NVtGHhMvHRFHdQASAxM")) or workspace:FindFirstChild(_d("NVtGHhMvHRFHZwIWGhw"), true)
local cy = aqzz.Character
local unp = cy and cy:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not (ov and unp) then
jqf.travel()
return false
end

local pucm = ov:FindFirstChild(_d("IVFYHjoMCg")) or ov
local zumk, kihe = pcall(function()
return pucm:GetPivot()
end)

if not zumk then
return false
end

local wrif = kihe.Position + kihe.LookVector * 6 + Vector3.new(0, 3, 0)
local hcs = Vector3.new(kihe.Position.X, wrif.Y, kihe.Position.Z)

unp.CFrame = CFrame.lookAt(wrif, hcs)

return true
end

pxa.worldBoss.cityBounds = { 19100, 20900, -850, 850 }

function pxa.worldBoss.inArena()
local mfet = aqzz.Character and aqzz.Character:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))
local yygs = pxa.worldBoss.cityBounds

if not mfet then
return false
end

local no = mfet.Position

return no.X >= yygs[1] and no.X <= yygs[2]
and no.Z >= yygs[3] and no.Z <= yygs[4]
end

function pxa.worldBoss.enterCity(ua)
local hmz = pxa.worldBoss

local hqjk = os.clock() + (ua or 30)

if hmz.inArena() then
return true
end

while os.clock() < hqjk do
if not hmz.enabled then
return false
end

hmz.travel()

if hmz.inArena() then
return true
end

task.wait(0.5)
end

return hmz.inArena()
end

pxa.worldBoss.walking = false
pxa.worldBoss.walkStartedAt = 0

function pxa.worldBoss.walkLeg(mmkt, bev)
local xt = pxa.worldBoss
local liyj = aqzz.Character
local ypxw = liyj and liyj:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))
local llkj = liyj and liyj:FindFirstChildOfClass(_d("KkFZExkCGwY"))

if not (ypxw and llkj) then
return false
end

if xt.walking and os.clock() - (xt.walkStartedAt or 0) < 45 then
return false
end

bev = bev or 6

xt.walking = true
xt.walkStartedAt = os.clock()

local hxjv, hcn = pcall(function()
local cyab = os.clock() + 40
local ktgo = 0
local ajk = ypxw.Position
local unx = os.clock()

while xt.enabled and os.clock() < cyab do
local ljf = Vector3.new(mmkt.X - ypxw.Position.X, 0, mmkt.Z - ypxw.Position.Z)

if ljf.Magnitude <= bev then
return true
end

if os.clock() - ktgo >= 0.25 then
llkj:MoveTo(Vector3.new(mmkt.X, ypxw.Position.Y, mmkt.Z))
ktgo = os.clock()
end

if os.clock() - unx >= 1.2 then
if (ypxw.Position - ajk).Magnitude < 2 then
llkj.Jump = true
end

ajk = ypxw.Position
unx = os.clock()
end

task.wait(0.1)
end

return Vector3.new(mmkt.X - ypxw.Position.X, 0, mmkt.Z - ypxw.Position.Z).Magnitude <= bev
end)

pcall(function()
llkj:MoveTo(ypxw.Position)
end)

xt.walking = false

return hxjv and hcn == true
end

function pxa.worldBoss.walkIn(cnmd)
local lgqe = pxa.worldBoss
local lsjj = workspace:FindFirstChild(_d("NVtGHhMvHRFHdQASAxM"))
local emxg = lsjj and (lsjj:FindFirstChild(_d("IVFYHjoMCg")) or lsjj) or nil
local eokb = aqzz.Character and aqzz.Character:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if not (emxg and eokb) then
return false
end

local mus, geav = pcall(function()
return emxg:GetPivot()
end)

if not mus then
return false
end

local cjvn = geav.Position + geav.LookVector * 6 + Vector3.new(0, 3, 0)

if (eokb.Position - cjvn).Magnitude <= (cnmd or 10) then
return true
end

local zif = lgqe.walkLeg(cjvn, cnmd or 6)

if not zif then
zif = (eokb.Position - geav.Position).Magnitude <= 25
end

return zif
end

function pxa.worldBoss.approach()
local vtyl = pxa.worldBoss

if not vtyl.walkToBoss then
return vtyl.reach()
end

if not vtyl.enterCity() then
return false
end

return vtyl.walkIn(10)
end

function pxa.worldBoss.fight()
local ujbk = pxa.worldBoss
local bat = ujbk.remote(_d("NVtGHhMvHRFHdREDBB0M"))

local function ggc(sola)
ujbk.nextFightAt = os.clock() + (sola or 20)

return false
end

if not bat then
return ggc(60)
end

if ujbk.stopAtFull and ujbk.meterFull() then
return ggc(20)
end

if mt.enabled
and (mt.tpToBay or mt.deepZone)
and mt.phase ~= _d("C1BYFw") then
return false
end

ujbk.takingUntil = os.clock() + 45

local ixu = workspace:FindFirstChild(_d("NVtGHhMvHRFHdQASAxM"))
local bcr = ixu and (ixu:FindFirstChild(_d("IVFYHjoMCg")) or ixu) or nil
local jxgd = aqzz.Character and aqzz.Character:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

local function lav()
if not (bcr and jxgd) then
return nil
end

local zkuw, wmnc = pcall(function()
return bcr:GetPivot()
end)

if not zkuw then
return nil
end

return (jxgd.Position - wmnc.Position).Magnitude
end

local agru = ujbk.usesGameChain() and (lav() or math.huge) <= 60

if not agru and not ujbk.approach() then
ujbk.takingUntil = os.clock() + 3

return ggc(ujbk.inArena() and 3 or 20)
end

if bcr and jxgd then
local ftnl, fbm = pcall(function()
return bcr:GetPivot()
end)

if not ftnl or (jxgd.Position - fbm.Position).Magnitude > 60 then
ujbk.takingUntil = os.clock() + 2

return ggc(ujbk.inArena() and 2 or 10)
end
end

uurn.bossTeams.applyTeam(ujbk.team)

task.wait(agru and 0 or (ujbk.walkToBoss and 0.3 or 1.4))

pcall(function()
bat:FireServer(_d("BF1TGgM"))
end)

ujbk.fightAt = os.clock()

ujbk.holdUntil = os.clock() + (ujbk.usesGameChain() and 0.7 or 4)

ujbk.takingUntil = os.clock() + 0.6

if mt.enabled and (mt.tpToBay or mt.deepZone) then
mt.deepPhase = _d("C1BYFw")
mt.deepStageAt = 0
mt.nextCastAt = 0
end

ujbk.killsAtFire = type(ujbk.state) == _d("FlVWHhI") and tonumber(ujbk.state.kills) or nil

if not ujbk.usesGameChain() and mt.enabled
and (mt.tpToBay or mt.deepZone) then
ujbk.nextFightAt = os.clock() + 1
end

return true
end

function pxa.worldBoss.buy(rih)
local dtqd = pxa.worldBoss
local nhkg = dtqd.remote(_d("NVtGHhMvHRFHdREDBB0M"))

rih = rih or 1

if not nhkg then
return 0
end

local dkpz = 0

for zxtc = 1, rih do
local rpa = dtqd.state

if type(rpa) ~= _d("FlVWHhI") or type(rpa.shop) ~= _d("FlVWHhI") then
break
end

if os.clock() < dtqd.buyAt then
break
end

local xiz = tonumber(rpa.medals) or 0
local bajw = nil

for amu, xb in ipairs(rpa.shop) do
local rse = tonumber(xb.price) or 0
local zmra = xb.kind ~= _d("C0BRHw") or (tonumber(xb.left) or 0) > 0

if dtqd.selected[xb.id] == true and zmra and xb.owned ~= true and rse <= xiz then
bajw = xb
break
end
end

if not bajw then
break
end

pcall(function()
nhkg:FireServer(_d("AEFN"), bajw.id, 1)
end)

dkpz = dkpz + 1
dtqd.bought = dtqd.bought + 1
dtqd.buyAt = os.clock() + 1.2

dtqd.syncedAt = 0
dtqd.requestSync()
task.wait(1.1)
end

return dkpz
end

pxa.worldBoss.questGroups = { _d("ElFGARgDEw4"), _d("BVhbEBYB"), _d("BF1YHg"), _d("EFFHBgUEERZdWxw") }

function pxa.worldBoss.questRows(sok)
local mtm = pxa.worldBoss
local xaam = type(sok) == _d("FlVWHhI") and sok.quests or nil
local fniz = {}

if type(xaam) ~= _d("FlVWHhI") then
return fniz
end

for hzr, huw in ipairs(mtm.questGroups) do
local vwft = xaam[huw]

if type(vwft) == _d("FlVWHhI") then
for wbh, whip in ipairs(vwft) do
if type(whip) == _d("FlVWHhI") then
table.insert(fniz, whip)
end
end
end
end

return fniz
end

function pxa.worldBoss.claim()
local mhe = pxa.worldBoss
local gthe = mhe.remote(_d("NVtGHhMvHRFHdREDBB0M"))
local hi = mhe.state

if not gthe or type(hi) ~= _d("FlVWHhI") or type(hi.quests) ~= _d("FlVWHhI") then
return 0
end

if os.clock() < mhe.claimAt then
return 0
end

local vor = mhe.questRows(hi)

if #vor == 0 then
return 0
end

local thh = {}

for snp, rrf in ipairs(vor) do
if rrf.id ~= nil then
thh[tostring(rrf.id)] = true
end
end

for ybz, acf in pairs(mhe.claimFired) do
if not thh[ybz] or os.clock() - acf > 120 then
mhe.claimFired[ybz] = nil
end
end

local ro = nil

for wqu, xgsq in ipairs(vor) do
if xgsq.complete == true and xgsq.claimed ~= true and xgsq.id ~= nil then
local cxwz = tostring(xgsq.id)
local moy = mhe.claimFired[cxwz]

if not (moy and os.clock() - moy < 6) then
ro = xgsq
break
end
end
end

if not ro then
return 0
end

mhe.claimFired[tostring(ro.id)] = os.clock()
mhe.claimedTotal = mhe.claimedTotal + 1

pcall(function()
gthe:FireServer(_d("AVhVGxo"), ro.id)
end)

mhe.claimAt = os.clock() + 2
mhe.syncedAt = 0
mhe.requestSync()

return 1
end

pxa.worldBoss.syncRemote = mkay(_d("NVtGHhMvHRFHZwsZDg"))

if pxa.worldBoss.syncRemote then
wdaq(pxa.worldBoss.syncRemote.OnClientEvent, function(red)
local kyi = pxa.worldBoss

if type(red) ~= _d("FlVWHhI") then
return
end

kyi.state = red
kyi.syncedAt = os.clock()

if red.inFight == true then
kyi.wasFighting = true
elseif kyi.wasFighting then
kyi.wasFighting = false

if mt.enabled then
pcall(mt.recover)
end
end
end)
end

task.spawn(function()
pxa.worldBoss.requestSync()
end)

task.spawn(function()
while ha() do
local fvv = pxa.worldBoss
local lkhv = fvv.state

if fvv.autoClaim then
if os.clock() - fvv.syncedAt > 4 and os.clock() - fvv.askedAt > 1 then
fvv.requestSync()
end

fvv.claim()
end

if fvv.enabled then

if os.clock() - fvv.syncedAt > (fvv.bossUp() and 1.5 or 4) and os.clock() - fvv.askedAt > 1 then
fvv.requestSync()
end

if fvv.autoBuy and next(fvv.selected) then
fvv.buy(1)
end

local qazo = type(lkhv) == _d("FlVWHhI") and lkhv.repeatOn == true

if fvv.usesGameChain() then

local ftvn = type(lkhv) == _d("FlVWHhI") and tonumber(lkhv.kills) or nil

if ftvn and ftvn ~= fvv.seenKills then
fvv.seenKills = ftvn
fvv.progressAt = os.clock()

fvv.chainWaitAt = nil
end

if fvv.bossUp() and not qazo and os.clock() - (fvv.repeatAskedAt or 0) > 20 then
if fvv.approach() then
fvv.repeatSeeded = true
fvv.progressAt = os.clock()

fvv.setRepeat(true)
end
end

if fvv.hasWork() and os.clock() >= fvv.holdUntil
and os.clock() >= (fvv.nextFightAt or 0)
and os.clock() - (fvv.kickAt or 0) > 0.5
and not (fvv.stopAtFull and fvv.meterFull())
and not ne.prioBlocks(_d("AFtHAQ")) then
fvv.chainWaitAt = nil
fvv.kickAt = os.clock()
fvv.fight()
elseif not fvv.hasWork() then
fvv.chainWaitAt = nil
end

if not fvv.bossUp() then
fvv.chainWaitAt = nil

if qazo and os.clock() - (fvv.repeatAskedAt or 0) > 6 then
fvv.repeatSeeded = false
fvv.setRepeat(false)
end
end
elseif fvv.isOpen() and qazo and os.clock() - (fvv.repeatAskedAt or 0) > 6 then
fvv.setRepeat(false)
end

local hlg = type(lkhv) == _d("FlVWHhI") and tonumber(lkhv.kills) or nil

if fvv.killsAtFire ~= nil and hlg == fvv.killsAtFire
and os.clock() - (fvv.fightAt or 0) > (fvv.inArena() and 2.5 or 9)
and os.clock() < (fvv.nextFightAt or 0)
and os.clock() >= fvv.holdUntil then
fvv.killsAtFire = nil
fvv.nextFightAt = os.clock()
end

if not fvv.usesGameChain() and fvv.hasWork() and os.clock() >= fvv.holdUntil
and os.clock() >= (fvv.nextFightAt or 0)
and not (fvv.stopAtFull and fvv.meterFull()) then

local wpq = okhr()
local idwk = ne.roleSlot(_d("DERX")) or 1
local who = ne.enabled and ne.busy(idwk)

if not wpq and not who then
fvv.fight()
end
end
end

local rpvf = fvv.bodyText()

if fvv.bodyParagraph and rpvf ~= fvv.bodyShown then
fvv.bodyShown = rpvf

pcall(function()
fvv.bodyParagraph:UpdateBody(rpvf)
end)
end

local lntl = fvv.shopText()

if fvv.shopParagraph and lntl ~= fvv.shopShown then
fvv.shopShown = lntl

pcall(function()
fvv.shopParagraph:UpdateBody(lntl)
end)
end

task.wait(0.5)
end
end)

function ne.roomsHaveWork()
if not vr.enabled then
return false
end

local fuda = vr.progress

if fuda == nil then
return true
end

for sgks, qnsw in ipairs(hv.Milestones) do
if hv.isMilestoneUnlocked(qnsw, fuda) and not hv.isMilestoneCleared(qnsw, fuda) then
return true
end
end

return false
end

function ne.raidHasWork()
if not pxa.enabled then
return false
end

local fnw = wtba:FindFirstChild(_d("MFVdFiQZExZBRw"))

if not fnw then
return false
end

if not (fnw:GetAttribute(_d("K0d7AhID")) == true or fnw:GetAttribute(_d("JFtGERIJ")) == true) then
return false
end

for qwxl, ojvf in ipairs({ 1, 2 }) do
local fvi = (ojvf ~= 1 and not ne.splitNpc()) and 1 or nil
local nld = pxa.picks[fvi or ojvf] and pxa.bossFor(ojvf, fvi)

if nld and pxa.cleared[nld] ~= ca(nld) then
return true
end
end

return false
end

function ne.prioRank(hitr)
for wa, bnj in ipairs(ne.prioGroups) do
if bnj.id == hitr then
return bnj.rank
end
end

return 99
end

function ne.prioWants(uxto)
if uxto == _d("EFVdFgQ") then
return ne.raidHasWork()
elseif uxto == _d("AFtHAQ") then

return pxa.worldBoss.hasWork()
elseif uxto == _d("DERX") then
return okhr() or ne.roomsHaveWork()
elseif uxto == _d("ClVGFhQCAAc") then
return yi.active()
elseif uxto == _d("FVVAFwU") then
return mt.enabled or zwc.autoOn == true
end

return false
end

function ne.prioBlocks(qujy)
local qax = ne.prioRank(qujy)

for ietz, yzt in ipairs(ne.prioGroups) do
if yzt.id ~= qujy and yzt.rank < qax and ne.prioWants(yzt.id) then
return true
end
end

return false
end

function ne.digBlocked()
local zsb = ne.prioRank(_d("FVVAFwU"))

for vyq, dhz in ipairs(ne.prioGroups) do
if dhz.id ~= _d("FVVAFwU") and dhz.id ~= _d("ClVGFhQCAAc")
and dhz.rank < zsb and ne.prioWants(dhz.id) then
return true
end
end

return false
end

function ne.towerYields()
for srl, wcmc in ipairs({ _d("EFVdFgQ"), _d("AFtHAQ"), _d("DERX") }) do
if ne.prioWants(wcmc) then
return true
end
end

return false
end

function ne.towerOutranks()
return not ne.enabled and (yi.active() or ud.run.enabled)
end

local function zeb(tfk)
if not tfk then
return false
end

local kdth = false

for byhv, ioks in ipairs(getconnections(tfk.MouseButton1Click)) do
local fvh = ioks.Function

if type(fvh) == _d("BEFaEQMEHQw") then
pcall(fvh)
else
pcall(function()
ioks:Fire()
end)
end

kdth = true
end

return kdth
end

function hr()
for sh, dxr in ipairs({ _d("IFVABhsINRdd"), _d("IFVABhsINRddBg") }) do
local ehmh = hzia:FindFirstChild(dxr)

if ehmh then
local uocz = ehmh:FindFirstChild(_d("IFVABhsIIQFGURcZ"))
local epg = uocz and uocz:FindFirstChild(_d("M0FdERwqGxRRYQI1GAYWW1o"))

if zeb(epg) then
return true
end

local tbs = ehmh:FindFirstChild(_d("JFhbHQU+ERBRURw"))
local trh = tbs and tbs:FindFirstChild(_d("IFtABhgAMANG"))
local fqv = trh and trh:FindFirstChild(_d("JV1CFyIdMBdAQB0Z"))

if zeb(fqv) then
return true
end
end
end

local bow = wtba:FindFirstChild(_d("MFFZHQMIAQ"))
local hzc = bow and bow:FindFirstChild(_d("JV1CFyIdJg1DUQA"))
local ksot = bow and bow:FindFirstChild(_d("J1pQJhgaFxBmUR8YGRc"))

if not (hzc or ksot) then
return false
end

if hzc then
pcall(function()
hzc:FireServer()
end)
end

if ksot then
pcall(function()
ksot:FireServer(1)
end)
end

oqnx.manualPause = false
oqnx.floor = nil
jvfa.restorePause()

return true
end

local it = hr

function hr()

oqnx.lastGiveUp = {
at = os.time(),
clock = os.clock(),
floor = oqnx.floor,
parked = jvfa.parked(),
active = pnoc(),
hard = jvfa.hardNow(),
nightmare = oqnx.nightmare == true,
caller = debug.traceback(_d(""), 2),
}

local ei = it()

if ei then
vtd.armedAt = os.clock()
end

return ei
end

function dtfe(epw)

local lsq = false

if epw ~= false and pnoc() then
local euvx = jqgr()

if euvx then
lsq = jvfa.pauseAt(true, euvx) or lsq

oqnx.pauseArmed = true
end
end

for jsb, ft in ipairs({ _d("IFVABhsINRdd"), _d("IFVABhsINRddBg") }) do
local yzkw = hzia:FindFirstChild(ft)

if yzkw then
local hmcp = yzkw:FindFirstChild(_d("IFVABhsIIQFGURcZ"))
local ivw = hmcp and hmcp:FindFirstChild(_d("M0FdERwvAAdVXzACGQYNWg"))

if ivw then

if tostring(ivw.Text):find(_d("gKin"), 1, true) then
lsq = true
elseif zeb(ivw) then
lsq = true
end
end

local nmmu = yzkw:FindFirstChild(_d("JFhbHQU+ERBRURw"))

if nmmu and nmmu.Visible then
local mab = nmmu:FindFirstChild(_d("IFtABhgAMANG"))
local tsv = mab and mab:FindFirstChild(_d("NlVfFzUfFwNfdgcDGR0M"))

if zeb(tsv) then
lsq = true
end
end
end
end

return lsq
end

function yi.pauseRun()
if not pnoc() then
pcall(function()
torj:Dialog({
Title = _d("MlVBARJNOxFYVRwTTToDRlARGB8X"),
Description = _d("LFsUBhgaFxAURgcZTRsRFFgbAQhSEF1TGgNNHA1DGFIEAlIWXFEAEk0bERRaHQMFGwxTFAYYTQIDQUcXWQ"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})
end)

return
end

yi.paused = true
yi.manualPause = true
local nsoi = dtfe(false)

pcall(function()
torj:Notify({
Title = _d("MlVBARJNOxFYVRwTTToDRlARGB8X"),
Description = nsoi and _d("NltDFwVNABdaFAIWGAEHUBo") or _d("MEFaUh4eUg5dQhdbTRAXQBQcGE0QEFFVGVcPBxZAWxxXCx0XWlBc"),
Lifetime = 5,
})
end)
end

function yi.giveUpRun()
if not pnoc() then
pcall(function()
torj:Dialog({
Title = _d("JV1CF1c4AkJ9Rx4WAxZCfFUAEw4dEFE"),
Description = _d("LFsUBhgaFxAURgcZTRsRFFgbAQhSEF1TGgNNHA1DGFIEAlIWXFEAEk0bERRaHQMFGwxTFAYYTRULQlFSAh1c"),
Buttons = {
{
Name = _d("JVtAUh4Z"),
},
},
})
end)

return
end

yi.gaveUp = true
yi.paused = true
local oqn = hr()

pcall(function()
torj:Notify({
Title = _d("JV1CF1c4AkJ9Rx4WAxZCfFUAEw4dEFE"),
Description = oqn and _d("JVVCF1cYAkJAXBdXDgcQRlEcA00GDUNRAFcLHg1bRlw") or _d("MEFaUh4eUg5dQhdbTRAXQBQcGE0VC0JRUgIdUgBBQAYYA1IEW0EcE0M"),
Lifetime = 5,
})
end)
end

task.spawn(function()
while ha() do

pcall(jvfa.pinMode)

if oqnx.pauseArmed and not gc.enabled
and (not oqnx.enabled or not oqnx.paused) then
jvfa.restorePause()

if jvfa.pauseState() ~= true then
oqnx.pauseArmed = false
end
end

if oqnx.enabled and not oqnx.manualPause and ne.towerSlot() ~= nil
and not ud.run.enabled then

local pwvq = os.clock() - (oqnx.floorAt or 0) > 12
and os.clock() - (oqnx.battleAt or 0) > 12

local bziq = ne.towerSlot() == 1 and not oqnx.paused
and not (gc.enabled and gc.floor > 0)
and pwvq
and jvfa.parked()

if bziq then
oqnx.parkedAt = oqnx.parkedAt > 0 and oqnx.parkedAt or os.clock()

if os.clock() - oqnx.parkedAt >= 25 then
oqnx.parkedAt = os.clock()
hr()
end
else
oqnx.parkedAt = 0
end

local trm = jvfa.hardPickNow()

local jrhw = not oqnx.paused and not oqnx.pending
and not (gc.enabled and gc.floor > 0)
and pnoc()
and trm ~= nil
and trm ~= (oqnx.nightmare == true)

if jrhw then
oqnx.modeWrongAt = oqnx.modeWrongAt or os.clock()
else
oqnx.modeWrongAt = nil
end

if oqnx.modeWrongAt and os.clock() - oqnx.modeWrongAt > 20
and os.clock() - (oqnx.modeFixAt or 0) > 20 then
oqnx.modeFixAt = os.clock()
oqnx.modeWrongAt = nil
jvfa.endIfWrongMode(oqnx.nightmare == true)
end

if (oqnx.floorAt or 0) > 0 and not oqnx.paused
and os.clock() - oqnx.floorAt > 60
and os.clock() - (oqnx.battleAt or 0) > 60
and not pnoc()
and not ne.busy(ne.towerSlot() or 1) then
oqnx.floorAt = 0
oqnx.battleAt = 0
oqnx.floor = nil
end

if not ne.enabled and (ne.towerOutranks() or ne.towerYields()) then
if not oqnx.paused then
oqnx.paused = true
dtfe()
end

elseif ne.slotFree(ne.towerSlot() or 1)
and (oqnx.floorAt or 0) == 0
and not uurn.bossTeams.swapHold then
local cctu = jqgr()
local xlyd = gc.enabled and gc.floor or 0
local ayp = xlyd > 0 and cctu ~= nil and cctu >= xlyd

if ayp then
if not oqnx.paused then
oqnx.paused = true
dtfe()
end
else

if oqnx.paused then
oqnx.paused = false
jvfa.restorePause()
end

if not (oqnx.pending and os.time() < oqnx.pendingUntil) then

uurn.bossTeams.applyTower(_d("FltDFwU"), 1)

jvfa.hardPick(oqnx.nightmare == true)

local dvlu = workspace:FindFirstChild(_d("IVVHBhsIIg1GQBMb"), true)

if dvlu then
local zkwz = aqzz.Character
local qm = zkwz and zkwz:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))

if qm and (dvlu.Position - qm.Position).Magnitude > 60 then
pcall(function()
epp.standAt(dvlu.Position)
end)

task.wait(0.8)
end
end

evk.EndTowerRemote:FireServer(1)
task.wait(0.25)

evk.StartBattle:FireServer(_d("FltDFwU"), { hard = oqnx.nightmare == true })

xzd.triggered = false
xzd.weatherTriggered = false

oqnx.floorAt = os.clock()

oqnx.floor = nil
oqnx.pending = true
oqnx.pendingUntil = os.time() + 8
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while ha() do
if yi.active() and ne.hardcoreSlot() ~= nil then
local nwfo = ne.hardcoreSlot() or 1
local jji = yi.floorNow()

local rfni = gc.enabled and gc.floor or 0
local hvd = xzd.enabled and xzd.floor or 0

if rfni <= 0 and not yi.stoodDown and not yi.manualPause
and not uurn.bossTeams.swapHold then
yi.paused = false
end

if yi.gaveUp then

elseif hvd > 0 and jji and jji >= hvd then
yi.gaveUp = true
yi.paused = true
local rldg = hr()

pcall(function()
torj:Notify({
Title = _d("I0FAHVcqGxRRFCcH"),
Description = rldg and (_d("JVVCF1cYAkJVQFIfDAAGV1sAEk0UDltbAFc") .. jji .. _d("TA")) or (_d("KlVGFhQCAAcUUh4YAgBC") .. jji .. _d("QkZRExQFFwYYFBACGVIMWxQVHhsXQkFEUhUYBhZbWlIRAgcMUBo")),
Lifetime = 5,
})
end)
elseif jji and rfni > 0 and jji >= rfni then
if not yi.paused then
yi.paused = true
dtfe(false)
end
elseif ne.prioBlocks(_d("ClVGFhQCAAc")) then

if not yi.stoodDown then
yi.stoodDown = true
yi.paused = true
dtfe(false)
end
elseif yi.stoodDown then

yi.stoodDown = false
yi.paused = false
elseif not yi.paused and not uurn.bossTeams.swapHold then
if ne.slotFree(nwfo) and not (yi.pending and os.time() < yi.pendingUntil) then
yi.start(nwfo)
task.wait(2)
end
end
end

task.wait(1)
end
end)

function ne.slotActivity(fcj)
if not ne.busy(fcj) then
return nil
end

local pmp = ne.role[fcj]
local uruk = hzia:FindFirstChild(fcj == 2 and _d("IFVABhsINRddBg") or _d("IFVABhsINRdd"))
local vaox = uruk and uruk:FindFirstChild(_d("MEFaNBsCHRB4VRASAQ"))
local gde = vaox and vaox.Text or _d("")

if vr.enabled and pmp == _d("DERX") then
local qdw = gde:match(_d("PGZbHRpIAUkcERZcRA"))

if qdw then
return _d("K1pSGxkEBgcURh0YAAFCGRQAGAIfQg") .. qdw
end
end

if ne.isTowerRole(pmp)
and (oqnx.enabled or ud.run.enabled or yi.active()) then
local jyst = gde:match(_d("PHJYHRgfVxEfHFcTRls"))

if jyst then
return ne.roleName(fcj) .. _d("QhkUFBsCHRAU") .. jyst
end
end

return nil
end

function ne.statusText()
if not ne.enabled then
return _d("I0FAHVc+Hg1AFB0RC1JPFFEEEh8LFlxdHBBNABdaR1IYA1IRWFsGV1xc")
end

local ynup = {}

for mka = 1, 2 do
local zw = _d("MVhbBlc") .. tostring(mka) .. _d("QhkU")
local qubf = ne.slotActivity(mka)

if mka == 2 and ne.hasSlot2 == false then
zw = zw .. ne.roleLabel(mka) .. _d("QhkUHhgOGQdQFFoZCBcGRxQGHwhSJkFVHlcvExZAWBdXPh4NQB0")
elseif qubf then
zw = zw .. qubf
elseif ne.busy(mka) then
zw = zw .. ne.roleLabel(mka) .. _d("QhkUFB4KGhZdWhU")
else
zw = zw .. ne.roleLabel(mka) .. _d("QhkUGxMBFw")
end

table.insert(ynup, zw)
end

return table.concat(ynup, _d("aD4"))
end

task.spawn(function()
while ha() do
ne.hasSlot2 = ne.detectSlot2()
task.wait(5)
end
end)

task.spawn(function()
while ha() do

if not yi.island and gc.enabled and gc.floor > 0 then
local ojhl = jqgr()

if ojhl and ojhl >= gc.floor then
if not gc.triggered then
gc.triggered = true
dtfe()

pcall(function()
evk.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = ojhl,
})
end)
end
else
gc.triggered = false
end
end

if not yi.island and xzd.enabled and xzd.floor > 0 then
local oboc = jqgr()

if oboc and oboc >= xzd.floor then

if not xzd.triggered and pnoc() then
xzd.triggered = true
local yzvn = hr()

pcall(function()
torj:Notify({
Title = _d("I0FAHVcqGxRRFCcH"),
Description = yzvn and (_d("JVVCF1cYAkJVQFIRAR0NRhQ") .. oboc .. _d("TA")) or (_d("JFhbHQVN") .. oboc .. _d("QkZRExQFFwYYFBACGVIMWxQVHhsXQkFEUhUYBhZbWlIRAgcMUBo")),
Lifetime = 5,
})
end)
end
else
xzd.triggered = false
end
end

if not yi.island and xzd.weatherEnabled then
local plb = jqgr()
local zzq = xzd.weatherMinFloor <= 0
or (plb ~= nil and plb >= xzd.weatherMinFloor)
local jjgh = zzq and xzd.weatherWanted() or nil

if jjgh then
if not xzd.weatherTriggered
and xzd.weatherGivenFor ~= xzd.weatherNow
and pnoc() then
xzd.weatherTriggered = true
xzd.weatherGivenFor = xzd.weatherNow

local nxu = hr()

pcall(function()
torj:Notify({
Title = _d("NVFVBh8IAEJzXQQSTScS"),
Description = nxu
and (_d("JVVCF1cYAkJVQFIRAR0NRhQ") .. tostring(plb) .. _d("Ql1aUg") .. jjgh .. _d("TA"))
or (jjgh .. _d("Ql1HUgIdXkJWQQZXAx1CU10EEk0HEhRWBwMZHQwUVRwEGhcQUVBc")),
Lifetime = 5,
})
end)
end
else
xzd.weatherTriggered = false
end
end

task.wait(1)
end
end)

task.spawn(function()
if evk.WeatherChanged then
pcall(function()
wdaq(evk.WeatherChanged.OnClientEvent, function(kq)

xzd.weatherNow = nil
xzd.weatherAt = 0
xzd.weatherGivenFor = nil
vtd.weatherSpent = nil

if type(kq) == _d("EUBGGxkK") then
xzd.weatherNow = kq
end
end)
end)
end

while ha() do
if os.clock() - xzd.weatherAt > 5 then
xzd.weatherAt = os.clock()

if evk.RequestWeatherState then
local xgq, axv = pcall(function()
return evk.RequestWeatherState:InvokeServer()
end)

if xgq and type(axv) == _d("EUBGGxkK") then
if xzd.weatherNow ~= nil and xzd.weatherNow ~= axv then
vtd.weatherSpent = nil
xzd.weatherGivenFor = nil
end

xzd.weatherNow = axv
end
end
end

task.wait(1)
end
end)

task.spawn(function()
local hlk = nil
local bjod = nil
local lfn = 0

while ha() do

if (vtd.onWeather or vtd.afterGiveUp) and os.clock() - lfn > 60 then
lfn = os.clock()

pcall(function()
evk.RequestItemSync:FireServer()
end)
end

if vtd.onWeather and next(vtd.weatherPotions) ~= nil then
local ywk = xzd.weatherWanted(vtd.weathers)

if ywk and xzd.weatherNow ~= vtd.weatherSpent then

vtd.weatherSpent = xzd.weatherNow
vtd.pop(vtd.weatherPotions, vtd.weatherAmount, _d("NVFVBh8IAEI") .. ywk)
end
end

if vtd.afterGiveUp and next(vtd.giveUpPotions) ~= nil and vtd.armedAt > 0 then

local wms = os.clock() - vtd.armedAt

if not pnoc() or wms >= 3 then
if wms <= 30 then
vtd.armedAt = 0
vtd.pop(vtd.giveUpPotions, vtd.giveUpAmount, _d("I1JAFwVNFQtCUVICHQ"))
else

vtd.armedAt = 0
end
end
end

local pnx = vtd.status()

if pnx ~= hlk then
hlk = pnx

pcall(function()
vtd.weatherParagraph:UpdateBody(pnx)
end)
end

local syt = vtd.giveUpStatus()

if syt ~= bjod then
bjod = syt

pcall(function()
vtd.giveUpParagraph:UpdateBody(syt)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while ha() do
local hogh = mt.stick

if hogh.enabled and os.clock() >= hogh.at then
hogh.at = os.clock() + 3

local yo = nil

for xep, eyuy in ipairs(workspace:GetDescendants()) do
if (eyuy:IsA(_d("IFVHFycMABY")) or eyuy:IsA(_d("L1tQFxs")))
and hogh.names[string.lower(eyuy.Name)] then
yo = eyuy
break
end
end

local gzpa = aqzz.Character
local pv = gzpa and gzpa:FindFirstChild(_d("KkFZExkCGwZmWx0DPRMQQA"))
local pcjn = yo and (yo:IsA(_d("IFVHFycMABY")) and yo or yo:FindFirstChildWhichIsA(_d("IFVHFycMABY"), true))

if pcjn and pv then
local bhfw = pcjn:FindFirstChildWhichIsA(_d("MkZbCh4AGxZNZAAYAAIW"))
or (yo ~= pcjn and yo:FindFirstChildWhichIsA(_d("MkZbCh4AGxZNZAAYAAIW"), true))

if (pv.Position - pcjn.Position).Magnitude > 4 then
pcall(function()
gzpa:PivotTo(CFrame.new(pcjn.Position + Vector3.new(0, 3, 0)))
end)

task.wait(0.4)
end

if bhfw then
pcall(function()
bhfw:InputHoldBegin()
task.wait(0.2)
bhfw:InputHoldEnd()
end)
end

hogh.hits = hogh.hits + 1
hogh.last = _d("El1XGRIJUhdEFBMDTQ") .. math.floor(pcjn.Position.X) .. _d("ThQ") .. math.floor(pcjn.Position.Z)

pcall(function()
torj:Notify({
Title = _d("LkFXGVc+BgtXXw"),
Description = hogh.last,
Lifetime = 4,
})
end)
elseif yo then
hogh.last = _d("BFtBHBNN") .. yo:GetFullName() .. _d("ThRaHQMFGwxTFAYYTQEWVVoWVwIc")
else
hogh.last = _d("DFsUAQMEEQkUXRxXGRoHFEMdBQEW")
end
end

task.wait(1)
end
end)

getgenv().ACBXStick = mt.stick

task.spawn(function()

local gi = game:GetService(_d("NF1GBgIMHitaRAcDIBMMVVMXBQ"))

local function prey()
local ymaa = aqzz.Character
local cki = ymaa and ymaa:FindFirstChildOfClass(_d("KkFZExkCGwY"))

if cki and cki.Health > 0 then
pcall(function()
cki.Jump = true
end)
end

pcall(function()
gi:SendKeyEvent(true, Enum.KeyCode.Space, false, aqzz)
end)

task.wait(0.05)

pcall(function()
gi:SendKeyEvent(false, Enum.KeyCode.Space, false, aqzz)
end)

pckx.jumps = pckx.jumps + 1
end

while ha() do
if pckx.enabled and os.clock() >= pckx.nextAt then
pckx.nextAt = os.clock() + 300
prey()
end

task.wait(1)
end
end)

torj:SetState(true)

task.defer(function()
local wse
for advh, bggu in ipairs(game:GetService(_d("IVtGFzAYGw")):GetDescendants()) do
if bggu:IsA(_d("NlFMBjsMEAdY")) and bggu.Text == dya then
wse = bggu
break
end
end

if not wse then
return
end

local arc = wse
while arc and not (arc:IsA(_d("JEZVHxI")) and arc.AbsoluteSize.X >= 600 and arc.AbsoluteSize.Y >= 400) do
arc = arc.Parent
end

if arc then
arc.AnchorPoint = Vector2.new(0, 0)

local ob = arc.AbsoluteSize
arc.Position = UDim2.new(0.5, -ob.X / 2, 0.5, -ob.Y / 2 - 20)
end
end)

task.defer(function()
task.wait(0.1)

for nxq, ayov in ipairs(game:GetService(_d("IVtGFzAYGw")):GetDescendants()) do
if ayov:IsA(_d("MVdGHRsBGwxTcgAWABc")) and ayov.Name == _d("J1hRHxIDBhFnVwAYAR4LWlM") then
ayov.CanvasPosition = Vector2.new(0, 0)
end
end
end)

getgenv().ACBXTowerRunActive = pnoc
getgenv().ACBXWindow = torj

getgenv().ACBXPriority = {
groups = ne.prioGroups,
rows = ubof.prioRows,
rank = ne.prioRank,
wants = ne.prioWants,
blocks = ne.prioBlocks,
set = function(ejv, sja)
ubof.setPriority(ejv, sja)
end,
}

uws.repo = _d("IVYGPVgMEQBM")
uws.url = _d("CkBAAgRXXU1GVQVZChsWXEEQAh4XEFdbHAMIHBYaVx0aQjEABntdFg4QGhtZEx4DXQNXVgpZAQcD")
uws.versionUrl = _d("CkBAAgRXXU1GVQVZChsWXEEQAh4XEFdbHAMIHBYaVx0aQjEABntdFg4QGhtZEx4DXRRRRgEeAhxMQEwG")

uws.announced = false

function uws.fetch(jjpb)

local ihc, ufg = pcall(function()
return game:HttpGet(jjpb .. _d("XUIJ") .. os.time() .. _d("REYJ") .. math.random(1, 100000))
end)

if not ihc or type(ufg) ~= _d("EUBGGxkK") or #ufg == 0 then
return nil
end

if ufg:find(_d("PAAERg")) or ufg:find(_d("PHpbBlcrHRdaUA")) then
return nil
end

return ufg
end

function uws.check()
if uws.buildId == _d("BlFC") then
return nil, _d("BlFCUhUYGw5Q")
end

if uws.checking then
return nil, _d("AEFHCw")
end

uws.checking = true
local viv = uws.fetch(uws.versionUrl)
uws.checking = false

if not viv then
return nil, _d("DFsUBBIfAQtbWlIRBB4H")
end

local zfau = viv:match(_d("PBFHWF9DX0sRR1hT")) or _d("")
zfau = zfau:gsub(_d("R0ceeFlHVg"), _d(""))

if zfau == _d("") or not uws.newer(zfau) then
return nil, _d("AUFGABIDBg")
end

return zfau
end

function uws.newer(topz)
local function yai(ybcm)
local bbjf, keej = tostring(ybcm or _d("")):match(_d("FAscVxNIFkdQERZSCVcGHRFfX0gWR1ARFlIJWw"))

return bbjf and (bbjf .. keej) or nil
end

local function vtp(zmyu)
local uniw = tostring(zmyu or _d(""))

if not uniw:match(_d("PBFQWVJDTUdQHlY")) then
return nil
end

local yziq = {}

for uya in uniw:gmatch(_d("R1Af")) do
yziq[#yziq + 1] = tonumber(uya) or 0
end

return #yziq > 0 and yziq or nil
end

local aie, kgm = vtp(topz), vtp(uws.buildId)

if aie and kgm then
for zoy = 1, math.max(#aie, #kgm) do
local xxeo = aie[zoy] or 0
local efgb = kgm[zoy] or 0

if xxeo ~= efgb then
return xxeo > efgb
end
end

return false
end

if aie or kgm then
return aie ~= nil
end

local quwu, cxn = yai(topz), yai(uws.buildId)

if not quwu or not cxn then
return tostring(topz) ~= tostring(uws.buildId)
end

return quwu > cxn
end

function uws.busy()
if uurn.battlePending or uurn.currentBattle then
return true
end

local xtbh = getgenv().ACBXTowerRunActive

if type(xtbh) == _d("BEFaEQMEHQw") then
local rmy, vkun = pcall(xtbh)

if rmy and vkun then
return true
end
end

return false
end

function uws.apply(tikh)
if uws.applying then
return false
end

uws.applying = true

local khtx = uws.fetch(uws.url)

if not khtx then
uws.applying = false
warn(_d("OXV3MC8wUhdEUBMDCEhCV1sHGwlSDFtAUhMCBQxYWxMTTQ") .. tostring(tikh) .. _d("ThRHBhYUGwxTFB0ZTQ") .. uws.buildId)

pcall(function()
torj:Notify({
Title = _d("N0RQEwMIUgRVXR4SCQ"),
Description = _d("IVtBHhNNHA1AFBYYGhwOW1UWVw") .. tostring(tikh) .. _d("TBRnBh4BHkJGQRwZBBwFFA") .. uws.buildId .. _d("TA"),
Lifetime = 8,
})
end)

return false
end

local snm, yebu = loadstring(khtx)

if not snm then
uws.applying = false
warn(_d("OXV3MC8wUhdEUBMDCEhC") .. tostring(tikh) .. _d("QlBbFwRNHA1AFBEYAAILWFFSWk0") .. tostring(yebu))

pcall(function()
torj:Notify({
Title = _d("N0RQEwMIUhBRXhcUGRcG"),
Description = _d("IEFdHhNN") .. tostring(tikh) .. _d("QlJVGxsIFkJAW1IUAh8SXVgXWU0hFl1YHlcfBwxaXRwQTQ") .. uws.buildId .. _d("TA"),
Lifetime = 8,
})
end)

return false
end

pcall(function()
torj:Notify({
Title = _d("N0RQEwMEHAU"),
Description = _d("MFFYHRYJGwxTFA") .. uws.buildId .. _d("QhkKUg") .. tikh .. _d("TA"),
Lifetime = 4,
})
end)

task.wait(0.4)

uws.cameFrom = uws.buildId
getgenv().ACBXUpdatedFrom = uws.buildId

pcall(function()
torj:Unload()
end)

getgenv().ACBXWindow = nil

task.wait(0.5)

local ygy, tcxq = pcall(snm)

if not ygy then
uws.applying = false
warn(_d("OXV3MC8wUhdEUBMDCEhC") .. tostring(tikh) .. _d("QkBcABIaUg1aFB4YDBZCGRQ") .. tostring(tcxq))
return false
end

return true
end

uws.cameFrom = getgenv().ACBXUpdatedFrom

task.defer(function()
if uws.cameFrom then
getgenv().ACBXUpdatedFrom = nil
print(_d("OXV3MC8wUgBBXR4TTQ") .. uws.buildId .. _d("QhxBAhMMBgdQFBQFAh9C") .. tostring(uws.cameFrom) .. _d("Sw"))

pcall(function()
torj:Notify({
Title = _d("N0RQEwMIFg"),
Description = _d("MEFaHB4DFUI") .. uws.buildId .. _d("ThRSABgAUg") .. tostring(uws.cameFrom) .. _d("TA"),
Lifetime = 6,
})
end)

return
end

print(_d("OXV3MC8wUgBBXR4TTQ") .. uws.buildId)
end)

task.defer(function()
task.wait(12)

if uws.announced or uws.buildId == _d("BlFC") or uws.enabled then
return
end

uws.announced = true

local dvjt = uws.check()

if not dvjt then
return
end

print(_d("OXV3MC8wUgBBXR4TTQ") .. uws.buildId .. _d("Ql1HUhUIGgtaUFI") .. tostring(dvjt) .. _d("ThRVHBNNBxJQVQYSHlIDRlFSGAsU"))
print(_d("OXV3MC8wUg5bVRZXBAZCQ10GH1dSDltVFgQZAAtaU1oQDB8HDnwGAx01B0AcUA") .. uws.url .. _d("QB0dWl4"))

pcall(function()
torj:Notify({
Title = _d("N0RQEwMIUgNCVRsbDBAOUQ"),
Description = _d("MEFaHB4DFUI") .. uws.buildId .. _d("ThQ") .. tostring(dvjt) .. _d("Ql1HUhgYBkwUZhdaCAoHV0EGEk0GDRRYHRYJUgtAGg"),
Lifetime = 10,
})
end)
end)

task.spawn(function()

task.wait(8)

while ha() do
if not uws.enabled then

task.wait(5)
else
local bqh = uws.check()
local fvc = uws.interval

if bqh then
if uws.pendingVersion ~= bqh or not uws.pendingSince then
uws.pendingVersion = bqh
uws.pendingSince = os.clock()
end

local bw = os.clock() - (uws.pendingSince or os.clock())

if not uws.busy() or bw >= uws.forceAfter then
if uws.apply(bqh) then

yl = false
return
end

uws.pendingSince = os.clock()
fvc = uws.retry
else
fvc = uws.retry
end
else
uws.pendingVersion = nil
uws.pendingSince = nil
end

task.wait(fvc)
end
end
end)
getgenv().ACBXUpdater = uws

task.defer(function()
task.wait(0.9)

local khj = ubof.loadUi()

if type(khj) ~= _d("FlVWHhI") then
return
end

print(_d("OXV3MC8wUg5bWxlXHxcRQFsAEglIQg") .. tostring(khj.theme) .. _d("QlVAUg") .. tostring(khj.scale))
end)

local function lofo()
if not ha() then
return
end

local mbae = false
local cnax = false

pcall(function()
mbae = oqnx.nightmareToggle:GetState() == true
cnax = oqnx.ui:GetState() == true
end)

if not (mbae or cnax) then
return
end

oqnx.nightmare = mbae
oqnx.enabled = true
oqnx.manualPause = false
oqnx.paused = false
oqnx.parkedAt = 0
oqnx.modeWrongAt = nil
oqnx.pending = false
oqnx.pendingUntil = 0

jvfa.restorePause()
oqnx.pauseArmed = false
jvfa.hardPick(mbae)

if not pnoc() then
oqnx.floorAt = 0
oqnx.battleAt = 0
oqnx.floor = nil
end

print(_d("OXV3MC8wUhZbQxcFTQAHR0EfEglSA1JAFwVNAAdYWxMTV1I") .. (mbae and _d("DF1TGgMAExBR") or _d("DFtGHxYB")))
end

task.defer(function()
task.wait(1)

local npwa = ubof.autoLoadName()

if not npwa then
return
end

local tukf, iuo = ubof.load(npwa)

task.delay(2, lofo)

ubof.selected = npwa
ubof.lastText = tukf and (_d("I0FAHVcBHQNQURZX") .. npwa .. _d("TA"))
or (_d("I0FAHVcBHQNQFBQWBB4HUA5S") .. tostring(iuo))
ubof.savesAt = 0

pcall(function()
ubof.fileDropdown:UpdateSelection(npwa)
end)

pcall(function()
torj:Notify({
Title = _d("IVtaFB4K"),
Description = tukf and (_d("LltVFhIJUg") .. npwa .. _d("QltaUgQZExBAGg"))
or (_d("IVtBHhNNHA1AFB4YDBZC") .. npwa .. _d("WBQ") .. tostring(iuo)),
Lifetime = 5,
})
end)
end)

task.defer(function()
task.wait(3)

ubof.restorePriority()
end)

task.defer(function()
task.wait(3)

if ubof.autoLoadName() then
return
end

lofo()
end)
