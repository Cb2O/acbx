local _d = (function()
local A = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local M = {}
local cache = {}
for i = 1, #A do
M[string.sub(A, i, i)] = i - 1
end
local K = string.char(49, 117, 99, 107, 49, 120, 116)
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

local dbvp = "ACB Rebirth v0.996"

local function giak(qkx)
for evyr, od in ipairs(qkx:GetDescendants()) do
if od:IsA(_d("ZRAbH30ZFlQZ")) and od.Text == dbvp then
local risv = od
while risv and not risv:IsA(_d("YhYRDlQWM0Qc")) do
risv = risv.Parent
end
return risv
end
end
end

local function epui()
local pqcq = game:GetService(_d("YRkCElQKBw")).LocalPlayer

for abi, uurp in ipairs({
(gethui and gethui() or game:GetService(_d("choRDnYNHQ"))),
game:GetService(_d("choRDnYNHQ")),
pqcq and pqcq:FindFirstChild(_d("YRkCElQKM0Qc")),
}) do
for see, br in ipairs(uurp:GetChildren()) do

if br:IsA(_d("YhYRDlQWM0Qc")) then
local jdaa = br:FindFirstChild(_d("cxQQDg"))

if jdaa and jdaa:FindFirstChild(_d("YhwHDlMZBg")) and jdaa:FindFirstChild(_d("choNH1QWAA")) then
return br
end
end
end
end
end

if epui() and getgenv().ACBXAllowReload ~= true then
local vqec = getgenv().ACBXWindow
local lmnc = false
local mjh = false

if vqec and vqec.Dialog then
pcall(function()
if vqec.GetState and vqec:GetState() == false then
vqec:SetState(true)
end

vqec:Dialog({
Title = _d("cDYhS2MdFlgHFwMREQcRFA8ZVBkQSFURHl8WHV8S"),
Description = _d("cFUABEEBVFgGQwpdChFQERpLXRcVVRAHS1gWVEUdChgRCxFCBgoEX1ZUYxATB1AbEREcF0tGEQBZVRcDWAtUXhsGVBEsHFRVER5fFh1fEkMIXggNEQYXBEELVFccERhFVFRCGkMEXxQNERoNDhEdAlQHQw9DEQJUBkMfWR1UUBYABEQWAB8"),
Buttons = {
{
Name = _d("YxATB1AbEQ"),
Callback = function()
mjh = true
lmnc = true
end,
},
{
Name = _d("ehAGGw"),
Callback = function()
lmnc = true
end,
},
},
})
end)
else

mjh = true
lmnc = true
end

local nri = os.clock() + 90

while not lmnc and os.clock() < nri do
task.wait(0.25)
end

if not mjh then
warn(_d("ajQgKWklVF0aAg8RChFXABAOVVhZEQELDhEbG0EMQx9ZGQARHBBLQw0aXxwNDBELAFAMEEUROxhYFghLYx0EXRQADhEMGxEGFApBWB1FWUMEQ1gBQhBDPl8UG1ARQxhSCh1BAUMCX1gdRQZDOFQMAFgbBBgRDBVTWw"))

return
end

warn(_d("ajQgKWklVEMQEwdQGx1fEkMfWR1UQwANBVgWExEWDBtIWANYAQtLRRAdQlUMBVRW"))
end

getgenv().ACBXAllowReload = nil

local gri = getgenv().ACBXWindow
if gri then
pcall(function()
gri:Unload()
end)
end

for lw, zv in ipairs({
game:GetService(_d("choRDnYNHQ")),
game:GetService(_d("YRkCElQKBw")).LocalPlayer:FindFirstChild(_d("YRkCElQKM0Qc")),
}) do
if zv then
local pqf = giak(zv)
if pqf then
pqf:Destroy()
end
end
end

local lnt = game:GetService(_d("YRkCElQKBw"))
local to = game:GetService(_d("YxATB1gbFUUQBzhFFwZQEgY"))
local rs = game:GetService(_d("YRQXA1cRGlUcDQxiHQZHHAAO"))
local yal = game:GetService(_d("YwANOFQKAlgWBg"))
local kxt = lnt.LocalPlayer
local spkj = kxt:WaitForChild(_d("YRkCElQKM0Qc"))

local mhzk = false

local function rbhc()
pcall(function()
local fbyb = game:GetService(_d("ZQIGDl8rEUMDCghU"))
local yja = (gethui and gethui()) or spkj
local mqbu = Color3.fromRGB(77, 166, 255)
local edtn = kxt.DisplayName

local function dwzl(yip, bg, mkzc)
fbyb:Create(
yip,
TweenInfo.new(bg, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
mkzc
):Play()
task.wait(bg)
end

local nsp = Instance.new(_d("YhYRDlQWM0Qc"))
nsp.Name = _d("cDYhM3gWAEMa")
nsp.IgnoreGuiInset = true
nsp.DisplayOrder = 1000000
nsp.ResetOnSpawn = false
nsp.Parent = yja

local trva = Instance.new(_d("dwcCBlQ"))
trva.Size = UDim2.fromScale(1, 1)
trva.BackgroundColor3 = Color3.fromRGB(4, 6, 11)
trva.BackgroundTransparency = 1
trva.BorderSizePixel = 0
trva.Parent = nsp

local jlwc = Instance.new(_d("dwcCBlQ"))
jlwc.AnchorPoint = Vector2.new(0.5, 0.5)
jlwc.Position = UDim2.fromScale(0.5, 0.5)
jlwc.Size = UDim2.fromOffset(400, 176)
jlwc.BackgroundColor3 = Color3.fromRGB(11, 16, 26)
jlwc.BackgroundTransparency = 1
jlwc.BorderSizePixel = 0
jlwc.Parent = nsp

local hy = Instance.new(_d("ZDwgBEMWEUM"))
hy.CornerRadius = UDim.new(0, 14)
hy.Parent = jlwc

local tt = Instance.new(_d("ZDwwH0MXH1Q"))
tt.Color = Color3.fromRGB(46, 60, 86)
tt.Thickness = 1
tt.Transparency = 1
tt.Parent = jlwc

local aiut = Instance.new(_d("dwcCBlQ"))
aiut.Size = UDim2.fromOffset(44, 2)
aiut.Position = UDim2.new(0.5, -22, 0, 34)
aiut.BackgroundColor3 = mqbu
aiut.BorderSizePixel = 0
aiut.BackgroundTransparency = 1
aiut.Parent = jlwc

local fb = Instance.new(_d("ZRAbH30ZFlQZ"))
fb.BackgroundTransparency = 1
fb.Size = UDim2.new(1, -48, 0, 48)
fb.Position = UDim2.fromOffset(24, 42)
fb.Font = Enum.Font.GothamBold
fb.Text = _d("cjdDI2Q6")
fb.TextSize = 28
fb.TextYAlignment = Enum.TextYAlignment.Center
fb.TextColor3 = Color3.fromRGB(236, 242, 255)
fb.TextTransparency = 1
fb.Parent = jlwc

local ds = Instance.new(_d("ZRAbH30ZFlQZ"))
ds.BackgroundTransparency = 1
ds.Size = UDim2.new(1, -48, 0, 20)
ds.Position = UDim2.fromOffset(24, 94)
ds.Font = Enum.Font.Gotham
ds.Text = _d("XRoCD1gWEw")
ds.TextSize = 14
ds.TextColor3 = Color3.fromRGB(150, 163, 186)
ds.TextTransparency = 1
ds.Parent = jlwc

local oua = Instance.new(_d("dwcCBlQ"))
oua.Size = UDim2.fromOffset(240, 3)
oua.Position = UDim2.new(0.5, -120, 0, 130)
oua.BackgroundColor3 = Color3.fromRGB(34, 44, 64)
oua.BorderSizePixel = 0
oua.BackgroundTransparency = 1
oua.Parent = jlwc

local hfqa = Instance.new(_d("dwcCBlQ"))
hfqa.Size = UDim2.fromScale(0, 1)
hfqa.BackgroundColor3 = mqbu
hfqa.BorderSizePixel = 0
hfqa.BackgroundTransparency = 1
hfqa.Parent = oua

local jh = Instance.new(_d("ZDwgBEMWEUM"))
jh.CornerRadius = UDim.new(0, 4)
jh.Parent = oua

local ks = Instance.new(_d("ZDwgBEMWEUM"))
ks.CornerRadius = UDim.new(0, 4)
ks.Parent = hfqa

dwzl(trva, 0.35, { BackgroundTransparency = 0.15 })
task.spawn(function()
dwzl(jlwc, 0.3, { BackgroundTransparency = 0 })
end)
task.spawn(function()
dwzl(tt, 0.3, { Transparency = 0 })
end)
dwzl(fb, 0.3, { TextTransparency = 0 })
dwzl(aiut, 0.3, { BackgroundTransparency = 0 })
dwzl(ds, 0.3, { TextTransparency = 0 })
dwzl(oua, 0.3, { BackgroundTransparency = 0 })
dwzl(hfqa, 0.3, { BackgroundTransparency = 0 })

local vsr = { _d("XRoCD1gWEw"), _d("XRoCD1gWEx8"), _d("XRoCD1gWEx9b"), _d("XRoCD1gWEx9bTQ") }
task.spawn(function()
fbyb:Create(hfqa, TweenInfo.new(1.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
Size = UDim2.fromScale(1, 1),
}):Play()
for vsg = 1, 6 do
ds.Text = vsr[(vsg - 1) % #vsr + 1]
task.wait(0.2)
end
end)
task.wait(1.2)

dwzl(fb, 0.2, { TextTransparency = 1 })
dwzl(ds, 0.2, { TextTransparency = 1 })
dwzl(oua, 0.2, { BackgroundTransparency = 1 })
dwzl(hfqa, 0.2, { BackgroundTransparency = 1 })

fb.Text = _d("ZR0CBVoLVFcaEUtECx1fEkMGSFgHUgcKG0U")
fb.TextSize = 22
fb.TextWrapped = true
ds.Text = dbvp
dwzl(fb, 0.25, { TextTransparency = 0 })
dwzl(ds, 0.25, { TextTransparency = 0 })
task.wait(1.1)
dwzl(fb, 0.2, { TextTransparency = 1 })
dwzl(ds, 0.2, { TextTransparency = 1 })

fb.Text = _d("ZhAPCF4VERE") .. edtn .. _d("ESEMS3I6VHkAAQ")
fb.TextSize = 22
ds.Text = _d("QgECGUURGlY")
dwzl(fb, 0.3, { TextTransparency = 0 })
dwzl(ds, 0.3, { TextTransparency = 0 })
task.wait(1.3)

dwzl(fb, 0.25, { TextTransparency = 1 })
dwzl(ds, 0.25, { TextTransparency = 1 })
dwzl(trva, 0.35, { BackgroundTransparency = 1 })

nsp:Destroy()
end)

mhzk = true
end

task.spawn(rbhc)

local qasf = to:WaitForChild(_d("YxAOBEUdBw"))

local function ii(qm, num)
local ufaz = qasf:FindFirstChild(qm)

if ufaz then
return ufaz
end

local cy = qasf:WaitForChild(qm, num or 3)

if not cy then
warn(_d("cDYhMwtYBlQYDB9UWFM") .. qm .. _d("FlUNBBEUG18SBhkRHQxYBhcYEREaEQELAkJYE1AYBktHHQZCHAwFEVVURR0CHxEeEVABFhlUWB1CVQwNVw"))
end

return cy
end

local cib = {
StartNPCBattle = ii(_d("YgECGUU2JHI3Ah9FFBE")),
NPCBattleResult = ii(_d("fyUgKVAMAF0QMQ5CDRhF")),
SyncNPCCooldowns = ii(_d("YgwNCH8oN3IaDAdVFwNfBg")),
SetNPCDifficulty = ii(_d("YhAXJWE7MFgTBQJSDRhFDA")),
StartRaidBattle = ii(_d("YgECGUUqFVgRIQpFDBhU")),
SetRaidDifficulty = ii(_d("YhAXOVAREHUcBQ1YGwFdARo")),
RaidProgress = ii(_d("YxQKD2EKG1YHBhhC")),
RequestRaidProgress = ii(_d("YxASHlQLAGMUCg9hChtWBwYYQg")),
SyncInfiniteRoomProgress = ii(_d("YgwNCHgWElgbCh9UKhteGDMZXh8GVAYQ")),
BuyRaidItem = ii(_d("cwAaOVAREHgBBgY")),
RaidShopState = ii(_d("YxQKD2IQG0EmFwpFHQ")),
RaidNotify = ii(_d("YxQKD38XAFgTGg")),
SyncItems = ii(_d("YgwNCHgMEVwG")),

UseItem = ii(_d("ZAYGIkUdGQ")),
RequestWeatherState = ii(_d("YxASHlQLAGYQAh9ZHQZiAQIfVA")),
WeatherChanged = ii(_d("ZhACH1kdBnIdAgVWHRA")),
FishingUpdate = ii(_d("dxwQA1gWE2QFBwpFHQ")),
FishingThrow = ii(_d("dxwQA1gWE2UdEQRG")),
FishingReel = ii(_d("dxwQA1gWE2MQBgc")),
FishingStop = ii(_d("dxwQA1gWE2IBDBs")),

FishingIslandTeleport = ii(_d("dxwQA1gWE3gGDwpfHCBUGQYbXgoA")),

SyncCollection = ii(_d("YgwNCHIXGF0QAB9YFxo")),
RequestSync = ii(_d("YxASHlQLAGIMDQg")),
ClaimIndexReward = ii(_d("chkCAlwxGlUQGzlUDxVDEQ")),
RequestAchievements = ii(_d("YxASHlQLAHAWCwJUDhFcEA0fQg")),
SyncAchievements = ii(_d("YgwNCHAbHFgQFQ5cHRpFBg")),
ClaimAchievement = ii(_d("chkCAlw5F1kcBh1UFRFfAQ")),
RequestQuests = ii(_d("YxASHlQLAGAABhhFCw")),
SyncQuests = ii(_d("YgwNCGANEUIBEA")),
ClaimQuest = ii(_d("chkCAlwpAVQGFw")),
RequestPeriodicQuests = ii(_d("YxASHlQLAGEQEQJeHB1SJBYOQgwH")),
SyncPeriodicQuests = ii(_d("YgwNCGEdBlgaBwJSKQFUBhcY")),
ClaimPeriodicQuest = ii(_d("chkCAlwoEUMcDA9YGyVEEBAf")),

OpenFuseDialog = ii(_d("fgUGBXcNB1QxCgpdFxM")),
FuseCards = ii(_d("dwAQDnIZBlUG")),
OpenDeconstructDialog = ii(_d("fgUGBXUdF14bEB9DDRdFMQoKXRcT")),
DeconstructCards = ii(_d("dRAABF8LAEMAAB9yGQZVBg")),
OpenPackShop = ii(_d("fgUGBWEZF1omCwRB")),
EquipPack = ii(_d("dAQWAkEoFVIe")),

RequestSkillTree = ii(_d("YxASHlQLAGIeCgddLAZUEA")),
BuySkillNode = ii(_d("cwAaOFoRGF07DA9U")),
OpenAccessoryShop = ii(_d("fgUGBXAbF1QGEARDASdZGhM")),
OpenAccessoryShop2 = ii(_d("fgUGBXAbF1QGEARDASdZGhNZ")),
BuyAccessory = ii(_d("cwAaKlIbEUIGDBlI")),
BuyAccessory2 = ii(_d("cwAaKlIbEUIGDBlISg")),
EquipAccessory = ii(_d("dAQWAkE5F1IQEBheCg0")),

RedeemCode = ii(_d("YxAHDlQVN14RBg")),

OpenNPCDialog = ii(_d("fgUGBX8oN3UcAgdeHw")),
TeleportToWorld = ii(_d("ZRAPDkEXBkUhDDxeChhV")),
RaidBattleStarted = ii(_d("YxQKD3MZAEUZBjhFGQZFEAc")),
BattleEnd = ii(_d("cxQXH10dMV8R")),
StartBattle = ii(_d("YgECGUU6FUUBDw4")),
RequestInfiniteRoomProgress = ii(_d("YxASHlQLAHgbBQJfEQBUJwwEXCgGXhIRDkIL")),
EndTowerRemote = ii(_d("dBsHP14PEUMnBgZeDBE")),
SaveClientData = ii(_d("YhQVDnIUHVQbFy9QDBU")),
OpenRaidShop = ii(_d("fgUGBWMZHVUmCwRB")),
RequestItemSync = ii(_d("YxASHlQLAHgBBgZiARpS")),
FishingGetState = ii(_d("dxwQA1gWE3YQFzhFGQBU")),
FishingSetAuto = ii(_d("dxwQA1gWE2IQFypEDBs")),
FishingShop = ii(_d("dxwQA1gWE2IdDBs")),
DigGetState = ii(_d("dRwELFQMJ0UUFw4")),
DigShop = ii(_d("dRwEOFkXBA")),
DigAction = ii(_d("dRwEKlIMHV4b")),
DigUpdate = ii(_d("dRwEPkEcFUUQ")),
}

local fbfj = require(to.ModuleScripts.NPCData)
local xxas = require(to.ModuleScripts.WorldDifficultyData)
local na = require(to.ModuleScripts.BossData)
local jtp = require(to.ModuleScripts.RaidData)
local zx = require(to.ModuleScripts.InfiniteRoomData)
local tj = require(to.ModuleScripts.CraftData)
local fhed = require(to.ModuleScripts.AchievementData)
local wpz = require(to.ModuleScripts.RaidShopData)
local krmu = require(to.ModuleScripts.ItemData)
local ooev = require(to.ModuleScripts.CardData)
local vs = require(to.ModuleScripts.SkillTreeData)

local jl = {
enabled = false,
role = { _d("RRoUDkM"), _d("XwUA") },

picked = { _d("ZRoUDkM"), _d("fyUgS1MZAEUZBhg") },
hasSlot2 = nil,
toggle = nil,

optionsFor = {
{ _d("ZRoUDkM"), _d("eRQPB14PEVQbQx9eDxFD"), _d("fyUgS1MZAEUZBhg") },
{ _d("fyUgS1MZAEUZBhg"), _d("eAYPCl8cVFkUEQ9SFwZU") },
},
roleIds = {
Tower = _d("RRoUDkM"),

[_d("eRQRD1IXBlRVFwRGHQY")] = _d("WRQRD1IXBlQ"),
[_d("fyUgS1MZAEUZBhg")] = _d("XwUA"),
[_d("eRQPB14PEVQbQx9eDxFD")] = _d("WRQPB14PEVQb"),
[_d("eAYPCl8cVFkUEQ9SFwZU")] = _d("WRQRD1IXBlQ"),
},
roleNames = {
tower = _d("ZRoUDkM"),
hardcore = _d("eAYPCl8cVFkUEQ9SFwZU"),
npc = _d("fyUgS1MZAEUZBhg"),
halloween = _d("eRQPB14PEVQbQx9eDxFD"),
},
}

function jl.detectSlot2()
local vfg = spkj:FindFirstChild(_d("YhAXH1gWE0IyFgI"))
local bj = vfg and vfg:FindFirstChild(_d("YhkMH2UdFVxHMQRG"), true)

if bj then
return bj.Visible == true
end

return nil
end

function jl.roleSlot(fxwk)
if not jl.enabled then
return 1
end

for mkq = 1, 2 do
if jl.role[mkq] == fxwk then
return mkq
end
end

return nil
end

function jl.isTowerRole(qs)
return qs == _d("RRoUDkM") or qs == _d("WRQRD1IXBlQ") or qs == _d("WRQPB14PEVQb")
end

function jl.towerSlot()
return jl.roleSlot(_d("RRoUDkM"))
end

function jl.hardcoreSlot()
local ysx = jl.roleSlot(_d("WRQRD1IXBlQ"))

if ysx == 2 and jl.hasSlot2 == false then
return 1
end

return ysx
end

function jl.halloweenSlot()

local xq = jl.roleSlot(_d("WRQPB14PEVQb"))

if xq == 1 then
return 1
end

return nil
end

function jl.roomSlot()
local kar = jl.roleSlot(_d("XwUA"))

if not jl.enabled then
return 1
end

if kar == nil then
return nil
end

if kar == 2 and jl.hasSlot2 == false then
return 1
end

return kar
end

function jl.splitNpc()
return jl.enabled and jl.role[1] == _d("XwUA") and jl.role[2] == _d("XwUA")
end

function jl.busy(zjnv)
local npj = spkj:FindFirstChild(zjnv == 2 and _d("eBshCkUMGFRH") or _d("eBshCkUMGFQ"))

return npj ~= nil and npj:IsA(_d("cxoMB2cZGEQQ")) and npj.Value == true
end

function jl.roleName(ob)
return jl.roleNames[jl.role[ob]] or jl.roleNames.npc
end

function jl.roleLabel(dw)
return jl.picked[dw] or jl.roleName(dw)
end

local lm = nil

if to:FindFirstChild(_d("fBoHHl0dJ1IHChtFCw")) and to.ModuleScripts:FindFirstChild(_d("eRQPB14PEVQbNwRGHQZ1FBcK")) then
local uaha, uhp = pcall(function()
return require(to.ModuleScripts.HalloweenTowerData)
end)

if uaha then
lm = uhp
end
end

local qgxy = nil

if to:FindFirstChild(_d("fBoHHl0dJ1IHChtFCw")) and to.ModuleScripts:FindFirstChild(_d("dxwQA1gWE3UUFwo")) then
local kfi, ado = pcall(function()
return require(to.ModuleScripts.FishingData)
end)

if kfi then
qgxy = ado
end
end

local function ees(eifu)
return tostring(eifu):reverse():gsub(_d("GVAHTlVdEBg"), _d("FERP")):reverse():gsub(_d("b1k"), _d(""))
end

local bz = {
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

getgenv().ACBXHalloweenUpgrades = bz.upgrade
getgenv().ACBXHalloweenTower = bz.run

bz.shopData = wpz.ShopById.halloween
bz.shopItems = {}
bz.shopLabels = {}
bz.cardNames = {
hw_brook = _d("cwcMBFpYXHwAEAJSGRgRJggOXR0AXhtK"),
hw_death_the_kid = _d("dRACH1lYAFkQQyBYHFQZPQIZXBcaWBZDLEQWVGYcBgdVHQYY"),
hw_barragan = _d("cxQRGVAfFV9VSzhaHRhUAQwFETMdXxJK"),
}
bz.cardShortNames = {
hw_brook = _d("cwcMBFo"),
hw_death_the_kid = _d("dRACH1lYAFkQQyBYHA"),
hw_barragan = _d("cxQRGVAfFV8"),
}

for vfqh, vfet in ipairs(bz.shopData.Items) do
local yhk, dor = next(vfet.price or {})
local hqfi = vfet.id
local aird = vfet.id

if vfet.itemId then
local un = krmu.ById[vfet.itemId]
hqfi = un and (un.name or vfet.itemId) or vfet.itemId
aird = hqfi
elseif vfet.cardId then
hqfi = bz.cardNames[vfet.cardId] or (ooev.ById[vfet.cardId] and ooev.ById[vfet.cardId].name) or vfet.cardId
aird = bz.cardShortNames[vfet.cardId] or hqfi
end

local uqr = yhk == _d("WRQPB14PEVQbPAhQFhBI") and _d("chQND0g") or (yhk == _d("WxQAAG4XK10UDR9UCho") and _d("fRQNH1QKGkI") or tostring(yhk))
local qat = hqfi .. _d("EZfj/xE") .. ees(dor) .. _d("EQ") .. uqr

table.insert(bz.shopItems, {
id = vfet.id,
label = qat,
shortName = aird,
currency = yhk,
price = dor,
stock = vfet.stock,
cardId = vfet.cardId,
})

table.insert(bz.shopLabels, qat)
end

for fj, iv in ipairs({
_d("YxASHlQLAHkUDwdeDxFUGzYbVgoVVRAQ"),
_d("cwAaI1AUGF4CBg5fLQRWBwIPVA"),
_d("eRQPB14PEVQbNhtWChVVEDAfUAwR"),
_d("YxASHlQLAHkUDwdeDxFUGzcERh0GYQcMDEMdB0I"),
_d("YgwNCHkZGF0aFA5UFiBeAgYZYQobVgcGGEI"),
_d("fgUGBXkZGF0aFA5UFiBeAgYZ"),
}) do
bz.remote[iv] = ii(iv)
end

function bz.fire(kyw, ...)
local dm = bz.remote[kyw]

if not dm then
return
end

local tzjc = { ... }

pcall(function()
dm:FireServer(table.unpack(tzjc))
end)
end

function bz.on(ftsn, warx)
local jcan = bz.remote[ftsn]

if jcan then
jcan.OnClientEvent:Connect(warx)
end
end

if lm then
for awie, elhw in ipairs(lm.Upgrades) do
table.insert(bz.upgrades, {
id = elhw.id,
name = elhw.name,
maxLevel = elhw.maxLevel,
})

table.insert(bz.labels, elhw.name)
end
end

function bz.level(mqrh)
if not lm then
return 0
end

return lm.getUpgradeLevel(bz.upgrade.levels, mqrh)
end

function bz.cost(vie)
if not lm then
return nil
end

return lm.getUpgradeCost(vie, bz.level(vie))
end

function bz.bonus(sqnh, jryz)
if not lm then
return _d("")
end

return lm.formatUpgradeBonus(sqnh, jryz)
end

function bz.request()
bz.upgrade.lastRequest = os.time()
bz.fire(_d("YxASHlQLAHkUDwdeDxFUGzYbVgoVVRAQ"))
end

function bz.text()
if not lm then
return _d("eRQPB14PEVQbQz9eDxFDVQcKRRlUWAZDBV4MVFgbQx9ZEQcRFxYCXRxa")
end

local ap = bz.upgrade
local vj = {}

if ap.balance == nil then
table.insert(vj, _d("YQAOG1oRGkJPQ0YRUBVCHgoFVlgAWRBDGFQKAlQHSg"))
else
table.insert(vj, _d("YQAOG1oRGkJPQw") .. ees(ap.balance))
end

for ug, kgri in ipairs(bz.upgrades) do
local vo = bz.level(kgri.id)
local btkm = bz.cost(kgri.id)
local ik = ap.selected[kgri.id] and _d("ag0+Sw") or _d("alU+Sw")
local vuou = ik .. kgri.name .. _d("EVUvHRE") .. vo .. _d("Hg") .. kgri.maxLevel

if btkm then
table.insert(vj, vuou .. _d("EVUNDkkMVA") .. tostring(btkm) .. _d("EVU") .. bz.bonus(kgri.id, vo + 1))
else
table.insert(vj, vuou .. _d("EVUOCkkdEA"))
end
end

if not next(ap.selected) then
table.insert(vj, _d("YRwAABENBFYHAg9UC1RYG0MfWR1UVQcMG1UXA19VAgVVWDVEAQxLRAgTQxQHDkJYFkQMEEtFEBERFgsOUAgRQgFDBF8dVEgaFktSGRoRFAUNXgoQHw"))
end

return table.concat(vj, _d("Ow"))
end

function bz.buy()
local phyl = bz.upgrade

if phyl.waiting or phyl.balance == nil or os.time() - phyl.lastBuy < 1 then
return
end

local jofm = nil
local tb = nil

for assn, jjwq in ipairs(bz.upgrades) do
if phyl.selected[jjwq.id] and os.time() >= (phyl.failedUntil[jjwq.id] or 0) then
local bmg = bz.cost(jjwq.id)

if bmg and phyl.balance >= bmg and (not tb or bmg < tb) then
jofm = jjwq.id
tb = bmg
end
end
end

if not jofm then
return
end

phyl.waiting = true
phyl.lastBuy = os.time()
phyl.pendingId = jofm
phyl.pendingLevel = bz.level(jofm)

phyl.balance = phyl.balance - tb

bz.fire(_d("cwAaI1AUGF4CBg5fLQRWBwIPVA"), jofm)
end

bz.on(_d("eRQPB14PEVQbNhtWChVVEDAfUAwR"), function(jb)
if type(jb) ~= _d("RRQBB1Q") then
return
end

local hw = bz.upgrade

hw.balance = tonumber(jb.balance) or 0
hw.levels = type(jb.levels) == _d("RRQBB1Q") and jb.levels or {}

if hw.pendingId then
if bz.level(hw.pendingId) <= hw.pendingLevel then
hw.failedUntil[hw.pendingId] = os.time() + 15
end

hw.pendingId = nil
end

if type(jb.message) == _d("QgERAl8f") then
hw.lastMessage = jb.message
end

hw.waiting = false
end)

bz.on(_d("YgwNCHkZGF0aFA5UFiBeAgYZYQobVgcGGEI"), function(yucr, lria)
bz.run.highest = tonumber(yucr) or 0
bz.run.savedRun = type(lria) == _d("RRQBB1Q") and lria or nil
end)

bz.on(_d("fgUGBXkZGF0aFA5UFiBeAgYZ"), function(om, vqlz, yh)
bz.run.highest = tonumber(om) or bz.run.highest
bz.run.savedRun = type(yh) == _d("RRQBB1Q") and yh or nil
end)

cib.BattleEnd.OnClientEvent:Connect(function(hvr)
if type(hvr) == _d("RRQBB1Q") and hvr.mode == _d("WBsFAl8RAFQqEQReFQ") and hvr.tower == _d("WRQPB14PEVQb") then
bz.run.inBattle = false
bz.run.pending = true
bz.run.pendingUntil = os.time() + 3

task.delay(0.3, function()
bz.requestProgress()
end)
end
end)

function bz.requestProgress()
bz.run.lastRequest = os.time()
bz.fire(_d("YxASHlQLAHkUDwdeDxFUGzcERh0GYQcMDEMdB0I"))
end

function bz.bestRoom()
local gxr = bz.run.highest

if not lm or gxr == nil then
return nil
end

for ltu, paq in ipairs(lm.Milestones) do
if lm.isMilestoneUnlocked(paq, gxr)
and not lm.isMilestoneCleared(paq, gxr) then
return paq
end
end

return nil
end

function bz.startRun()
local yw = bz.bestRoom()

if not yw then
return false
end

local mjmi = bz.run.savedRun
local gasv = type(mjmi) == _d("RRQBB1Q") and mjmi.milestone == yw
local um = gasv and (tonumber(mjmi.currentFloor) or yw) or yw

local zib = jl.halloweenSlot() or 1

local ga = getgenv().ACBXAuto

ga = type(ga) == _d("RRQBB1Q") and ga.bossTeams or nil

if bz.run.teamChosen and ga and ga.applyTeam then
ga.applyTeam(bz.run.team, zib)
end

local ou = spkj:FindFirstChild(zib == 2 and _d("YxAQDkU6FUUBDw53FBteB1E") or _d("YxAQDkU6FUUBDw53FBteBw"))

if ou and ou:IsA(_d("cxwND1AaGFQwFQ5fDA")) then
pcall(function()
ou:Fire(um, _d("WBsFAl8RAFQqEQReFQ"))
end)
end

local ml = spkj:FindFirstChild(zib == 2 and _d("YgECGUUxGlccDQJFHSZeGg4pUAwAXRBR") or _d("YgECGUUxGlccDQJFHSZeGg4pUAwAXRA"))

if ml and ml:IsA(_d("cxwND1AaGFQwFQ5fDA")) then
pcall(function()
ml:Fire(um, _d("WRQPB14PEVQb"), um)
end)
end

bz.run.milestone = yw
bz.run.savedRun = nil
bz.run.inBattle = true
bz.run.inBattleUntil = os.time() + 120
bz.run.pending = true
bz.run.pendingUntil = os.time() + 10

if gasv then
cib.StartBattle:FireServer(_d("WBsFAl8RAFQqEQReFQ"), {
continue = true,
tower = _d("WRQPB14PEVQb"),
slot = zib,
})
else
cib.StartBattle:FireServer(_d("WBsFAl8RAFQqEQReFQ"), {
tower = _d("WRQPB14PEVQb"),
milestone = yw,
slot = zib,
})
end

return true
end

local rxps = {}
for vkxs, kt in ipairs(fbfj.NPCs) do
rxps[kt.name] = kt.id
end

local xpr = getgenv().ACBXCooldowns
if type(xpr) ~= _d("RRQBB1Q") then
xpr = {}
getgenv().ACBXCooldowns = xpr
end

local qlvl = getgenv().ACBXAuto
if type(qlvl) == _d("RRQBB1Q") and type(qlvl.cooldowns) == _d("RRQBB1Q") then
for hg, cw in pairs(qlvl.cooldowns) do
if xpr[hg] == nil then
xpr[hg] = cw
end
end
end

local jzfp = {
enabled = false,
story = false,
storyDifficulty = _d("XxoRBlAU"),
storyDropdown = nil,
selectedByWorld = {},
difficulties = { _d("XxoRBlAU") },
walkToNpc = false,
cooldowns = xpr,
activeDifficulty = {},
lastFetch = {},
unlocked = {},
currentBattle = nil,
battlePending = false,
battlePendingUntil = 0,
}

jzfp.bossTeams = {
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

path = _d("cDYhMx4MEVAYEEVbCxtf"),
}

function jzfp.bossTeams.trackCollection()
if jzfp.bossTeams.collectionHooked then
return
end

jzfp.bossTeams.collectionHooked = true

local hlu = qasf:FindFirstChild(_d("YgwNCHIXGF0QAB9YFxo"))

if not hlu then
return
end

hlu.OnClientEvent:Connect(function(lsbu)
if type(lsbu) == _d("RRQBB1Q") and type(lsbu.teams) == _d("RRQBB1Q") then
jzfp.bossTeams.teams = lsbu.teams
jzfp.bossTeams.teamsAt = os.clock()
end
end)

task.spawn(function()

task.wait(3)

for ae = 1, 8 do
if jzfp.bossTeams.teams then
return
end

local dvx = qasf:FindFirstChild(_d("YgIKH1IQIFQUDg"))
local yc = jzfp.bossTeams.slotTeam
local uqn = nil

if dvx and type(yc) == _d("VwANCEURG18") then
local sv, kx = pcall(yc, 2)
uqn = sv and kx or nil

if not uqn then
sv, kx = pcall(yc, 1)
uqn = sv and kx or nil
end
end

if uqn then
pcall(function()
dvx:FireServer(uqn, false, 2)
end)
end

task.wait(6)
end
end)
end

function jzfp.bossTeams.teamCards(aub)
local aglz = jzfp.bossTeams.teams

if type(aglz) ~= _d("RRQBB1Q") then
return nil
end

local csox = aglz[aub]

if type(csox) ~= _d("RRQBB1Q") then
return 0
end

local wa = 0

for nq, pmk in pairs(csox) do
if type(pmk) == _d("RRQBB1Q") then
wa = wa + 1
end
end

return wa
end

function jzfp.bossTeams.raidState()
return getgenv().ACBXAutoRaid
end

function jzfp.bossTeams.save()
if type(writefile) ~= _d("VwANCEURG18") then
return false
end

local xmr = {}

for ytd, etpe in pairs(jzfp.bossTeams.picked) do
xmr[ytd] = etpe
end

local iyza = {}

for mavm, mo in pairs(jzfp.bossTeams.raidPicked) do
iyza[mavm] = mo
end

local fch = {}

for rl, uyuh in pairs(jzfp.bossTeams.towerPicked) do
fch[rl] = uyuh
end

return pcall(function()
if type(makefolder) == _d("VwANCEURG18") and type(isfile) == _d("VwANCEURG18") and not isfile(jzfp.bossTeams.path) then
pcall(makefolder, _d("cDYhMw"))
end

local bm = jzfp.bossTeams.raidState()
local psr = bm and bm.worldBoss
local wq = nil

if psr and psr.teamChosen then
wq = psr.team
end

writefile(jzfp.bossTeams.path, game:GetService(_d("eQEXG2IdBkccAA4")):JSONEncode({
areas = xmr,
raids = iyza,
towers = fch,
swap = jzfp.bossTeams.swap,
globalBoss = wq,
updatedAt = os.time(),
}))
end)
end

function jzfp.bossTeams.load()
if type(readfile) ~= _d("VwANCEURG18") or type(isfile) ~= _d("VwANCEURG18") then
return false
end

local gv, nmd = pcall(function()
if not isfile(jzfp.bossTeams.path) then
return nil
end

return readfile(jzfp.bossTeams.path)
end)

if not gv or type(nmd) ~= _d("QgERAl8f") or #nmd == 0 then
return false
end

local retg
local mww = pcall(function()
retg = game:GetService(_d("eQEXG2IdBkccAA4")):JSONDecode(nmd)
end)

if not mww or type(retg) ~= _d("RRQBB1Q") then
return false
end

if type(retg.areas) == _d("RRQBB1Q") then
for wuw, kit in pairs(retg.areas) do
local pje = tonumber(kit)

if pje and pje >= 1 and pje <= 4 then
jzfp.bossTeams.picked[wuw] = pje
end
end
end

if type(retg.raids) == _d("RRQBB1Q") then
for stnp, mzd in pairs(retg.raids) do
local uu = tonumber(mzd)

if uu and uu >= 1 and uu <= 4 then
jzfp.bossTeams.raidPicked[stnp] = uu
end
end
end

if type(retg.towers) == _d("RRQBB1Q") then
for psho, ol in pairs(retg.towers) do
local mtmu = tonumber(ol)

if mtmu and mtmu >= 1 and mtmu <= 4 then
jzfp.bossTeams.towerPicked[psho] = mtmu
end
end
end

if type(retg.swap) == _d("RRQBB1Q") then
local eip = tonumber(retg.swap.team)
local xxke = tonumber(retg.swap.floor)

if eip and eip >= 1 and eip <= 4 then
jzfp.bossTeams.swap.team = eip
end

if xxke and xxke > 0 then
jzfp.bossTeams.swap.floor = xxke
end

local aya = tonumber(retg.swap.team2)
local so = tonumber(retg.swap.floor2)

if aya and aya >= 1 and aya <= 4 then
jzfp.bossTeams.swap.team2 = aya
end

if so and so > 0 then
jzfp.bossTeams.swap.floor2 = so
end

jzfp.bossTeams.swap.on = retg.swap.on == true
end

local ycoa = tonumber(retg.globalBoss)
local uwh = jzfp.bossTeams.raidState()
local iequ = uwh and uwh.worldBoss

if ycoa and ycoa >= 1 and ycoa <= 4 and iequ then
iequ.team = ycoa

iequ.teamChosen = true
end

return true
end

local biu = nil
local ineh = nil

local function htap(szp, gla)
return szp .. _d("TQ") .. gla
end

local function xqxa(xjfv, bal)
return jzfp.cooldowns[htap(xjfv, bal)] or 0
end

local function dbbs(vbet, ouid, hd)
jzfp.cooldowns[htap(vbet, ouid)] = hd
end

getgenv().ACBXAuto = jzfp

local bs = {
enabled = false,
picks = { [1] = {}, [2] = {} },
cursor = { [1] = 1, [2] = 1 },
losses = { [1] = {}, [2] = {} },
inFlight = {},

lossLimit = 3,
difficulties = { _d("XxoRBlAU") },
walkToBoss = false,
walkSpeed = 18,
pending = {},
pendingUntil = {},
cleared = {},
progress = {},
}

getgenv().ACBXAutoRaid = bs

bs.worldBoss = {
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

fishingMode = _d("RRoEDkUQEUM"),
fishingDropdown = nil,

digHold = false,

walkToBoss = false,
walkToggle = nil,

building = false,
}

jzfp.bossTeams.trackCollection()
jzfp.bossTeams.load()

function bs.worldBoss.data()
local lrez = bs.worldBoss

if lrez.module == nil then
local xk, qg = pcall(function()
return require(to.ModuleScripts.WorldBossData)
end)

lrez.module = xk and qg or false
end

return lrez.module or nil
end

function bs.worldBoss.clock(xlq)
xlq = math.max(0, math.floor(tonumber(xlq) or 0))

local fv = math.floor(xlq / 3600)
local bn = math.floor((xlq % 3600) / 60)
local fllv = xlq % 60

if fv > 0 then
return string.format(_d("FBELSxRIRlUY"), fv, bn)
end

if bn > 0 then
return string.format(_d("FBEOSxRIRlUG"), bn, fllv)
end

return string.format(_d("FBEQ"), fllv)
end

function bs.worldBoss.status()
local qe = nil

pcall(function()
qe = to:FindFirstChild(_d("ZhoRB1U6G0IGMB9QDAFC"))
end)

return qe
end

function bs.worldBoss.isOpen()
local xl = bs.worldBoss.status()

if not xl then
return nil
end

return xl:GetAttribute(_d("cBYXAkcd")) == true
end

function bs.worldBoss.window()
local bk = bs.worldBoss.status()

if not bk then
return nil, nil
end

return tonumber(bk:GetAttribute(_d("dBsHGHAM"))), tonumber(bk:GetAttribute(_d("fxAbH3AM")))
end

function bs.worldBoss.cycle()
local gpg = bs.worldBoss
local cpwr = gpg.data()

if not cpwr or not cpwr.getCycleState then
return nil
end

local mwx, nxw = pcall(function()
return cpwr.getCycleState()
end)

return mwx and nxw or nil
end

function bs.worldBoss.shopList()
local av = bs.worldBoss

if av.items then
return av.items
end

local llw = {}
local qise = av.data()

if not qise or type(qise.ShopItems) ~= _d("RRQBB1Q") then
av.items = llw
return llw
end

for ywpr, bv in ipairs(qise.ShopItems) do
local ld = nil

pcall(function()
if bv.itemId then
local uye = require(to.ModuleScripts.ItemData)
local zeak = uye[bv.itemId] or (uye.ById and uye.ById[bv.itemId])
ld = zeak and zeak.name or nil
elseif bv.cardId then
local yksr = require(to.ModuleScripts.CardData)
local znxr = yksr[bv.cardId] or (yksr.ById and yksr.ById[bv.cardId])
ld = znxr and znxr.name or nil
end
end)

local mh = bs.worldBoss.state

if type(mh) == _d("RRQBB1Q") and type(mh.shop) == _d("RRQBB1Q") then
for zhxj, avbh in ipairs(mh.shop) do
if avbh.id == bv.id and avbh.name then
ld = avbh.name
break
end
end
end

if not ld then

ld = tostring(bv.accessoryId or bv.id or _d("Dg")):gsub(_d("bg"), _d("EQ")):gsub(_d("GVACQhkjUUZSPkEY"), function(mj, rhiy)
return mj:upper() .. rhiy
end)
end

table.insert(llw, {
id = bv.id,
name = ld,
price = tonumber(bv.price) or 0,
kind = bv.itemId and _d("WAEGBg") or (bv.cardId and _d("UhQRDw") or _d("UBYADkILG0MM")),
})
end

av.items = llw

return llw
end

function bs.worldBoss.bodyText()
local ltul = bs.worldBoss
local iib = ltul.state

if type(iib) ~= _d("RRQBB1Q") then
return _d("YxACD1gWExEBCw4RGhtCBk1FHw")
end

local bt = {}
local tr = ltul.cycle()
local qh = ltul.isOpen()
local ixih, rr = ltul.window()

if qh == nil then
qh = iib.open == true
end

if qh then
local eyjk = _d("fgUGBQ")

if not ixih and tr then
ixih = tr.endsAt
end

if ixih and ixih > os.time() then
eyjk = eyjk .. _d("EbfUSw") .. ltul.clock(ixih - os.time()) .. _d("ERkGDUU")
end

table.insert(bt, eyjk)
else
local vtqo = _d("dRoUBREeG0NVDQRG")

if not rr and tr then
rr = tr.nextAt
end

if rr and rr > os.time() then
vtqo = vtqo .. _d("OzcCCFpYHV9V") .. ltul.clock(rr - os.time())
end

table.insert(bt, vtqo)
end

table.insert(bt, _d("fBAHCl0LThE") .. tostring(iib.medals or 0) .. _d("Oz4KB10LThE") .. tostring(iib.kills or 0))

if iib.inFight then
table.insert(bt, _d("dxwEA0URGlY"))
elseif qh then

table.insert(bt, iib.killedThisSpawn and _d("YxACD0hyP1gZDw5VWABZHBBLQggVRhtDCl0KEVARGg") or _d("YxACD0g"))
end

if ltul.stopAtFull then
local wj, qecl = ltul.meter()

if wj and qecl then
local function zfr(dq)
if dq >= 1000000000 then
return string.format(_d("FFtSDXM"), dq / 1000000000)
elseif dq >= 1000000 then
return string.format(_d("FBIu"), math.floor(dq / 100000) / 10)
elseif dq >= 1000 then
return string.format(_d("FBIo"), math.floor(dq / 100) / 10)
end

return tostring(math.floor(dq))
end

table.insert(bt, _d("YhARHVQKVFwQFw5DQlQ") .. zfr(wj) .. _d("EVpD") .. zfr(qecl)
.. (ltul.meterFull() and _d("OzMWB11YWREbDB8RHh1WHRcCXx9URR0KGBELBFACDQ") or _d("")))
end
end

return table.concat(bt, _d("O38"))
end

function bs.worldBoss.shopText()
local dr = bs.worldBoss
local kv = dr.state

if type(kv) ~= _d("RRQBB1Q") or type(kv.shop) ~= _d("RRQBB1Q") then
return _d("YxACD1gWExEBCw4RCxxeBU1FHw")
end

local ek = { _d("fBAHCl0LThE") .. tostring(kv.medals or 0) }

for voei, gf in ipairs(kv.shop) do
local fw = tostring(gf.name or gf.id)
local ui = tostring(gf.price or _d("Dg"))
local qp

if gf.kind == _d("WAEGBg") then
qp = fw .. _d("Ow") .. ui .. _d("EbfUSw") .. tostring(gf.left or 0) .. _d("Hg") .. tostring(gf.stock or _d("Dg")) .. _d("ERkGDUU")
elseif gf.owned then
qp = fw .. _d("OzoUBVQc")
else
qp = fw .. _d("Ow") .. ui .. _d("EbfUS14WEREaBQ0")
end

table.insert(ek, qp)
end

return table.concat(ek, _d("O38"))
end

function bs.worldBoss.shopOptions()
local ill = bs.worldBoss

if ill.options then
return ill.options
end

local cht = {}

ill.labelToId = {}

for ln, zq in ipairs(ill.shopList()) do
local yvfc = zq.name .. _d("EbfUSw") .. tostring(zq.price)

table.insert(cht, yvfc)
ill.labelToId[yvfc] = zq.id
end

ill.options = cht

return cht
end

local function en(snfw)
local sf = bs.progress[snfw]
local bh = to:FindFirstChild(_d("YxQKD2IMFUUAEA"))
local rh = bh and bh:GetAttribute(_d("cgwAB1QxEA"))

if type(sf) == _d("RRQBB1Q") then
if sf.cycleId then
rh = sf.cycleId
end

if sf.completed and sf.completedRaidId then
return tostring(rh) .. _d("CxEMBVQ")
end

local cods = sf.phaseIndex or sf.phase

if cods then
return tostring(rh) .. _d("Cw") .. tostring(cods)
end
end

return tostring(rh)
end

function bs.finished(bjc)
local lviq = bs.progress[bjc]

return type(lviq) == _d("RRQBB1Q") and lviq.completed == true and lviq.completedRaidId == bjc
end

function bs.bossFor(yma)
local ujke = bs.picks[yma]

if not ujke or #ujke == 0 then
return nil
end

local fz = to:FindFirstChild(_d("YxQKD2IMFUUAEA"))
local hgd = bs.losses[yma] or {}
local pe = bs.cursor[yma] or 1

for vp = 0, #ujke - 1 do
local dv = (pe - 1 + vp) % #ujke + 1
local pnwm = ujke[dv]
local wld = not fz or fz:GetAttribute(_d("YxACD0gn") .. pnwm) == true

if wld and not bs.finished(pnwm) and (hgd[pnwm] or 0) < bs.lossLimit then
bs.cursor[yma] = dv

return pnwm
end
end

return nil
end

cib.RaidBattleStarted.OnClientEvent:Connect(function(je)

local ff = type(je) == _d("RRQBB1Q") and je.raidId or nil

if type(ff) == _d("QgERAl8f") then
bs.pending[ff] = false
else
for tza in pairs(bs.pending) do
bs.pending[tza] = false
end
end
end)

cib.BattleEnd.OnClientEvent:Connect(function(bjb)
for ymf in pairs(bs.pending) do
bs.pending[ymf] = false
end

if type(bjb) ~= _d("RRQBB1Q") or not bs.enabled then
return
end

local osj = type(bjb.raidId) == _d("QgERAl8f") and bjb.raidId or nil
local wjc = osj and bs.inFlight[osj] or nil

if not osj then
for tcr, zexi in pairs(bs.inFlight) do
osj = tcr
wjc = zexi
break
end
end

if not osj then
return
end

bs.inFlight[osj] = nil

if bjb.result == _d("XRoQDg") then

local zytd = bs.losses[wjc or 1]

bs.cleared[osj] = nil
zytd[osj] = (zytd[osj] or 0) + 1

for jhs in pairs(bs.pendingUntil) do
bs.pendingUntil[jhs] = os.time() + 3
end
else

bs.losses[wjc or 1][osj] = 0
end
end)

cib.RaidProgress.OnClientEvent:Connect(function(dcy)
if type(dcy) == _d("RRQBB1Q") and type(dcy.raidId) == _d("QgERAl8f") then
bs.progress[dcy.raidId] = dcy
end
end)

cib.RequestRaidProgress:FireServer()

local rdg = {
enabled = false,
progress = nil,
currentRoom = nil,
inBattle = false,
inBattleUntil = 0,
pending = false,
pendingUntil = 0,
}

getgenv().ACBXAutoRooms = rdg

cib.SyncInfiniteRoomProgress.OnClientEvent:Connect(function(zy)
if type(zy) == _d("XwAOCVQK") then
rdg.progress = zy
rdg.pending = false
end
end)

cib.BattleEnd.OnClientEvent:Connect(function(oyb)
if type(oyb) == _d("RRQBB1Q") and oyb.mode == _d("WBsFAl8RAFQqEQReFQ") then
rdg.inBattle = false
rdg.pending = true
rdg.pendingUntil = os.time() + 3

task.delay(0.3, function()
cib.RequestInfiniteRoomProgress:FireServer()
end)
end
end)

cib.RequestInfiniteRoomProgress:FireServer()

local dsra = {
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

getgenv().ACBXAutoTower = dsra

local yosm = {
enabled = false,
floor = 0,
triggered = false,
}

getgenv().ACBXAutoPause = yosm

local wzj = {
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
Typhoon = _d("RQwTA14XGg"),
Blizzard = _d("UxkKEUsZBlU"),
Lightning = _d("XRwEA0UWHV8S"),
Windstorm = _d("RhwND0IMG0MY"),
Sharingan = _d("Qh0CGVgWE1Ab"),
Singularity = _d("QhwNDEQUFUMcFxI"),
[_d("fBoNCkMbHBExDAZQERo")] = _d("XBoNCkMbHG4RDAZQERo"),
Void = _d("RxoKDw"),
[_d("fBQHDhERGhE9BgpHHRo")] = _d("XBQHDm4RGm4dBgpHHRo"),
Manga = _d("XBQNDFA"),
},
}

function wzj.weatherWanted(eux)
local rsx = wzj.weatherNow

if type(rsx) ~= _d("QgERAl8f") then
return nil
end

for yhow, qozp in pairs(eux or wzj.weathers) do
if qozp and wzj.weatherIds[yhow] == rsx then
return yhow
end
end

return nil
end

getgenv().ACBXAutoGiveUp = wzj

local zjmc = {
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

if to:FindFirstChild(_d("fBoHHl0dJ1IHChtFCw")) and to.ModuleScripts:FindFirstChild(_d("eRQRD1IXBlQhDBxUCjBQAQI")) then
local gpc, jji = pcall(function()
return require(to.ModuleScripts.HardcoreTowerData)
end)

if gpc then
zjmc.data = jji
end
end

getgenv().ACBXHardcore = zjmc

task.spawn(function()
local vu = to:FindFirstChild(_d("YxAOBEUdBw"))

if not vu then
return
end

local dmo = vu:WaitForChild(_d("YgwNCHkZBlUWDBlULBtGEBE7QxcTQxAQGA"), 20)

if dmo and dmo:IsA(_d("YxAOBEUdMUcQDR8")) then
zjmc.remotes.sync = dmo

dmo.OnClientEvent:Connect(function(vx)
if type(vx) ~= _d("RRQBB1Q") then
return
end

zjmc.progress = tonumber(vx.progress) or zjmc.progress
zjmc.best = tonumber(vx.best) or zjmc.best

if type(vx.points) == _d("RRQBB1Q") then
zjmc.points = vx.points
end
end)
end

local ysa = vu:WaitForChild(_d("YxASHlQLAHkUEQ9SFwZUIQwcVAokQxoEGVQLBw"), 20)

if ysa and ysa:IsA(_d("YxAOBEUdMUcQDR8")) then
zjmc.remotes.request = ysa

pcall(function()
ysa:FireServer()
end)
end

local qkg = vu:WaitForChild(_d("dhkMCVAUNkQTBT5BHBVFEAc"), 20)

if qkg and qkg:IsA(_d("YxAOBEUdMUcQDR8")) then
qkg.OnClientEvent:Connect(function(akvl, poir, xc, mvg)
zjmc.globalLuck = tonumber(akvl) or 0
zjmc.globalRoll = tonumber(poir) or 0
zjmc.globalLuckTime = type(xc) == _d("QgERAl8f") and xc or _d("")
zjmc.globalRollTime = type(mvg) == _d("QgERAl8f") and mvg or _d("")
end)
end
end)

function jl.otherTowerOn(heyu)
if jl.enabled then
return false
end

if heyu == _d("RRoUDkM") then
return false
end

if heyu == _d("WRQPB14PEVQb") then
return zjmc.active()
end

return bz.run.enabled
end

function zjmc.active()
return zjmc.island
end

function zjmc.unspentPoints()
local ag = zjmc.data
local ig = tonumber(zjmc.progress) or 0
local bfl = 0

if type(ag) == _d("RRQBB1Q") and type(ag.getEarnedPoints) == _d("VwANCEURG18") then
local vynv, ajfn = pcall(ag.getEarnedPoints, ig)
bfl = vynv and tonumber(ajfn) or 0
end

return math.max(0, bfl - #(zjmc.points or {})), bfl
end

function zjmc.buffText()
local cly = zjmc.data

if type(cly) ~= _d("RRQBB1Q") then
return _d("eRQRD1IXBlQhDBxUCjBQAQJLWAtUXBwQGFgWExETEQRcWABZHBBLUw0dXRFN")
end

local ts = tonumber(zjmc.progress) or 0
local bcd = tonumber(zjmc.best) or 0
local fo, fer = zjmc.unspentPoints()
local tmny = {
_d("dxkMBENY") .. ts .. _d("EVVDKVQLABE") .. bcd,
_d("YRoKBUULThE") .. fo .. _d("EQANGEEdGkVVDA0R") .. fer .. _d("ERACGV8dEA"),
}

local ftj = {}

for pufz, jw in ipairs(zjmc.points or {}) do
local rf = cly.StatById and cly.StatById[jw]
local otz = rf and (rf.name or jw) or tostring(jw)
local jf = cly.PointValue and cly.PointValue[jw]

table.insert(ftj, jf and (otz .. _d("EV4") .. tostring(jf)) or otz)
end

if #ftj == 0 then
table.insert(tmny, _d("cwAFDUJCVF8aDQ4RGhtEEgsfEQERRQ"))
else
table.insert(tmny, _d("cwAFDUJCVA") .. table.concat(ftj, _d("HVU")))
end

local qw = {}

if (tonumber(zjmc.globalLuck) or 0) > 0 then
table.insert(qw, _d("fQAAABFT") .. tostring(zjmc.globalLuck) .. _d("FA") .. (zjmc.globalLuckTime ~= _d("") and (_d("EV0") .. zjmc.globalLuckTime .. _d("GA")) or _d("")))
end

if (tonumber(zjmc.globalRoll) or 0) > 0 then
table.insert(qw, _d("YxoPBxELBFQQB0sa") .. tostring(zjmc.globalRoll) .. _d("FA") .. (zjmc.globalRollTime ~= _d("") and (_d("EV0") .. zjmc.globalRollTime .. _d("GA")) or _d("")))
end

if #qw == 0 then
table.insert(tmny, _d("dhkMCVAUVFMABQ1CQlRfGg0OERkXRRwVDg"))
else
table.insert(tmny, _d("dhkMCVAUVFMABQ1CQlQ") .. table.concat(qw, _d("HVU")))
end

return table.concat(tmny, _d("Ow"))
end

function zjmc.nextMilestone()
local yy = zjmc.data

if type(yy) ~= _d("RRQBB1Q") or type(yy.Milestones) ~= _d("RRQBB1Q") or #yy.Milestones == 0 then
return nil
end

local yjxs = tonumber(kxt:GetAttribute(_d("eRQRD1IXBlQzDwReCg"))) or 0

return math.min(yjxs + 1, yy.Milestones[#yy.Milestones])
end

function zjmc.start(kal)
local cu = zjmc.nextMilestone()

if not cu then
return false
end

local abu = spkj:FindFirstChild(kal == 2 and _d("YxAQDkU6FUUBDw53FBteB1E") or _d("YxAQDkU6FUUBDw53FBteBw"))

if abu and abu:IsA(_d("cxwND1AaGFQwFQ5fDA")) then
pcall(function()
abu:Fire(cu, _d("WBsFAl8RAFQqEQReFQ"))
end)
end

local qbcq = spkj:FindFirstChild(kal == 2 and _d("YgECGUUxGlccDQJFHSZeGg4pUAwAXRBR") or _d("YgECGUUxGlccDQJFHSZeGg4pUAwAXRA"))

if qbcq and qbcq:IsA(_d("cxwND1AaGFQwFQ5fDA")) then
pcall(function()
qbcq:Fire(cu, _d("WRQRD1IXBlQ"), cu)
end)
end

if jzfp.bossTeams.applyTower then
jzfp.bossTeams.applyTower(_d("WRQRD1IXBlQ"), kal)
end

zjmc.pending = true
zjmc.pendingUntil = os.time() + 10

return pcall(function()
cib.StartBattle:FireServer(_d("WBsFAl8RAFQqEQReFQ"), {
tower = _d("WRQRD1IXBlQ"),
milestone = cu,
slot = kal,
})
end)
end

function zjmc.floorNow()
local xej = jl.hardcoreSlot()

if not xej or not jl.busy(xej) then
return nil
end

local ueir = spkj:FindFirstChild(xej == 2 and _d("cxQXH10dM0QcUQ") or _d("cxQXH10dM0Qc"))
local xp = ueir and ueir:FindFirstChild(_d("YwANLV0XG0M5AglUFA"))
local vf = xp and xp.Text or _d("")

return tonumber(vf:match(_d("bzMPBF4KUUJeS05VU10")))
end

local jftc = {
enabled = true,
nextAt = os.clock() + 300,
jumps = 0,
}

getgenv().ACBXAntiKick = jftc

local zm = getgenv().ACBXNoUpdate == true

local au = {
enabled = not zm,
buildId = "v261101-2240",
interval = 180,
retry = 45,
forceAfter = 900,
applying = false,
checking = false,
pendingVersion = nil,
pendingSince = nil,
cameFrom = nil,
}

local rz = {
enabled = false,
tpToBay = false,

stick = {
enabled = false,
at = 0,
hits = 0,
last = _d("XhMF"),

names = {
[_d("QgEKCFo")] = true,
[_d("XQAAABELAFgWCA")] = true,
[_d("XQAAAEIMHVIe")] = true,
[_d("XQAAAG4LAFgWCA")] = true,
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
rod = _d("HA"),
castTime = 0,
tutorialStep = 0,
phase = _d("WBEPDg"),
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
deepPhase = _d("WBEPDg"),
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

local behi = Vector3.new(-546.8, 13.9, -40250.1)

if type(getgenv().ACBXFishingCatches) == _d("RRQBB1Q") then
rz.catches = getgenv().ACBXFishingCatches
end

rz.totalCatches = 0

for bvwl, srg in pairs(rz.catches) do
rz.totalCatches = rz.totalCatches + srg
end

getgenv().ACBXFishingCatches = rz.catches
getgenv().ACBXFishing = rz

rz.catchName = function(jaq)
local se = krmu.ById[jaq]

if se and se.name then
return se.name
end

local apy = ooev.ById[jaq]

if apy and apy.name then
return apy.name
end

return jaq
end

local wr

wr = {
folder = _d("cDYhMw"),
path = _d("cDYhMx4bFUUWCw5CVh5CGg0"),
at = 0,
save = function()
if type(writefile) ~= _d("VwANCEURG18") then
return false
end

local nl = pcall(function()
if type(makefolder) == _d("VwANCEURG18") and type(isfile) == _d("VwANCEURG18") and not isfile(wr.path) then
pcall(makefolder, wr.folder)
end

writefile(wr.path, game:GetService(_d("eQEXG2IdBkccAA4")):JSONEncode({
catches = rz.catches,
totalCatches = rz.totalCatches,
lastCatch = rz.lastCatch,
updatedAt = os.time(),
}))
end)

return nl
end,
load = function()
if type(readfile) ~= _d("VwANCEURG18") or type(isfile) ~= _d("VwANCEURG18") then
return false
end

local vyu, rnf = pcall(function()
if not isfile(wr.path) then
return nil
end

return readfile(wr.path)
end)

if not vyu or type(rnf) ~= _d("QgERAl8f") or #rnf == 0 then
return false
end

local cxn
local hhn = pcall(function()
cxn = game:GetService(_d("eQEXG2IdBkccAA4")):JSONDecode(rnf)
end)

if not hhn or type(cxn) ~= _d("RRQBB1Q") or type(cxn.catches) ~= _d("RRQBB1Q") then
return false
end

for jit, tazk in pairs(cxn.catches) do
local omq = tonumber(tazk) or 0

if omq > 0 then
rz.catches[tostring(jit)] = math.max(rz.catches[tostring(jit)] or 0, omq)
end
end

rz.totalCatches = 0

for sdh, ytj in pairs(rz.catches) do
rz.totalCatches = rz.totalCatches + ytj
end

return true
end,
}

wr.load()
getgenv().ACBXFishingStore = wr

local kev = {}

local xduv = 0

local function ldi()
local lh = {}

for flo, vbh in ipairs(workspace:GetDescendants()) do
if vbh:IsA(_d("cxQQDmEZBkU")) and vbh.Name == _d("ZhQXDkM") then
table.insert(lh, vbh)
end
end

kev = lh
xduv = os.clock()
end

local function rd(kk)
if type(kk) ~= _d("RRQBB1Q") then
return false
end

rz.loaded = true
rz.dirty = false
rz.fishing = kk.fishing == true
rz.autoOn = kk.autoOn == true
rz.autoUnlocked = kk.autoUnlocked == true
rz.casts = tonumber(kk.casts) or rz.casts
rz.totalCasts = tonumber(kk.totalCasts) or rz.totalCasts
rz.luck = tonumber(kk.luck) or rz.luck
rz.rod = tostring(kk.equippedRod or rz.rod)
rz.castTime = tonumber(kk.castTime) or rz.castTime
rz.tutorialStep = tonumber(kk.tutorialStep) or rz.tutorialStep

if type(kk.rods) == _d("RRQBB1Q") then
rz.rodsOwned = kk.rods
end

if type(kk.baits) == _d("RRQBB1Q") then
rz.baitsOwned = kk.baits
end

if type(kk.boats) == _d("RRQBB1Q") then
rz.boatsOwned = kk.boats
end

if type(kk.mats) == _d("RRQBB1Q") then
rz.mats = kk.mats
end

if kk.bootOwned ~= nil then
rz.boot.owned = kk.bootOwned == true
end

if kk.bootEquipped ~= nil then
rz.boot.equipped = kk.bootEquipped == true
end

if kk.equippedBait ~= nil then
rz.equippedBait = tostring(kk.equippedBait)
end

if kk.activeBoat ~= nil then
rz.activeBoat = tostring(kk.activeBoat)
end

rz.boatTier = tonumber(kk.boatTier) or rz.boatTier
rz.islandLocked = kk.islandLocked == true
rz.rebirths = tonumber(kk.rebirths) or rz.rebirths

if type(kk.rebirthCards) == _d("RRQBB1Q") then
rz.rebirthCards = kk.rebirthCards
end

rz.lastSync = os.time()

return true
end

local function ux()
local fc, diid = pcall(function()
return cib.FishingGetState:InvokeServer()
end)

if not fc or type(diid) ~= _d("RRQBB1Q") then
rz.loaded = false
return false
end

return rd(diid)
end

local qwm = false

local function iqw()
if qwm then
return false
end

local engw = kxt.Character

if not engw then
return false
end

if engw:FindFirstChild(_d("dxwQA1gWE2MaBw")) then
return true
end

local hbgl = kxt:FindFirstChild(_d("cxQAAEEZF1o"))
local yxnt = hbgl and hbgl:FindFirstChild(_d("dxwQA1gWE2MaBw"))
local oia = engw:FindFirstChildOfClass(_d("eQAOCl8XHVU"))

if not (yxnt and oia) then
return false
end

return pcall(function()
oia:EquipTool(yxnt)
end)
end

local function ni()
local ajhz = kxt.Character
local ces = ajhz and ajhz:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if not ces then
return nil
end

local idij = RaycastParams.new()
idij.FilterType = Enum.RaycastFilterType.Exclude
idij.FilterDescendantsInstances = { ajhz }

local senb = 24
local fvjs = {}
local mp = 0

for wym = 0, senb - 1 do
local qar = math.rad(wym * (360 / senb))
local lml = Vector3.new(math.sin(qar), 0, math.cos(qar))
local ukv = ces.Position + lml * 20 + Vector3.new(0, 40, 0)
local li = workspace:Raycast(ukv, Vector3.new(0, -120, 0), idij)
local dbq = li and (ces.Position.Y - li.Position.Y) or 120

fvjs[wym] = dbq > 12

if fvjs[wym] then
mp = mp + 1
end
end

if mp == 0 then
return nil
end

local dwuk, lwr = nil, 0

for vqfl = 0, senb - 1 do
if fvjs[vqfl] and not fvjs[(vqfl - 1) % senb] then
local farf = 0

while farf < senb and fvjs[(vqfl + farf) % senb] do
farf = farf + 1
end

if farf > lwr then
dwuk = vqfl
lwr = farf
end
end
end

if not dwuk then
return nil
end

local pzin = dwuk + (lwr - 1) / 2
local fmk = math.rad(pzin * (360 / senb))

return Vector3.new(math.sin(fmk), 0, math.cos(fmk))
end

local function qpu()
local pdbh = kxt.Character
local mg = pdbh and pdbh:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if not mg then
return nil
end

if #kev == 0 or os.clock() - xduv > 20 then
ldi()
end

local du, unyp = nil, math.huge

for dxci, jgf in ipairs(kev) do
if jgf.Parent then
local bl = (jgf.Position - mg.Position).Magnitude

if bl < unyp then
unyp = bl
du = jgf
end
end
end

if not du or unyp > 25 then
local wb = ni()

if wb then
return wb
end
end

if not du then
return nil
end

local of = Vector3.new(du.Position.X - mg.Position.X, 0, du.Position.Z - mg.Position.Z)

if of.Magnitude < 0.05 then
return Vector3.new(0, 0, -1)
end

return of.Unit
end

local function vxna()
local pqst = kxt.Character
local st = pqst and pqst:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if not st then
return nil
end

local mxor = st.CFrame.LookVector
local gwt = Vector3.new(mxor.X, 0, mxor.Z)

if gwt.Magnitude < 0.05 then
return nil
end

return gwt.Unit
end

local function nfrj()
local loj = kxt.Character
local qjm = loj and loj:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if not qjm then
return false
end

local lmwx = behi
local ax = RaycastParams.new()
ax.FilterType = Enum.RaycastFilterType.Exclude
ax.FilterDescendantsInstances = { loj }

local ipd = workspace:Raycast(behi + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), ax)

if ipd and ipd.Instance.Name ~= _d("ZhQXDkM") then
lmwx = Vector3.new(behi.X, ipd.Position.Y + 3, behi.Z)
end

qjm.CFrame = CFrame.new(lmwx)
task.wait(0.5)
ldi()

return true
end

local function cgpi()
local dkne = kxt.Character
local ouxb = dkne and dkne:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if not ouxb then
return false
end

local cpt = Vector3.new(behi.X - ouxb.Position.X, 0, behi.Z - ouxb.Position.Z)
local dx = cpt.Magnitude

if dx < 2 then
return false
end

local uuub = cpt.Unit

if dx > 12 then
local wdh = math.min(14, dx - 6)
local ugyk = ouxb.Position + uuub * wdh
local et = RaycastParams.new()
et.FilterType = Enum.RaycastFilterType.Exclude
et.FilterDescendantsInstances = { dkne }

local vjs = workspace:Raycast(ugyk + Vector3.new(0, 25, 0), Vector3.new(0, -80, 0), et)

if vjs and vjs.Instance.Name ~= _d("ZhQXDkM") then
local bw = vjs.Position.Y + 3.2

if math.abs(bw - ouxb.Position.Y) <= 10 then
local gw = Vector3.new(vjs.Position.X, bw, vjs.Position.Z)
ouxb.CFrame = CFrame.lookAt(gw, gw + uuub)

return true
end
end
end

ouxb.CFrame = CFrame.lookAt(ouxb.Position, ouxb.Position + uuub)

return true
end

local ykng = {}

ykng.surfaceWait = 8

ykng.walking = false
ykng.walkStartedAt = 0

ykng.islandHold = Vector3.new(-7384, 16.3, -40539)

ykng.custom = nil
ykng.customIsland = nil

ykng.islandAnchors = {
{ id = _d("UBcCBVUXGlQRPAJCFBVfEQ"), x = -3800 },
{ id = _d("RQIKBW4aEVAWCw5C"), x = -6180 },
{ id = _d("RhwND1wRGF0qChhdHQ"), x = -7480 },
}

ykng.arrivals = {
abandoned_island = Vector3.new(-3825, 24, -40260),
twin_beaches = Vector3.new(-6180, 40, -40350),
windmill_isle = Vector3.new(-7480, 30, -40350),
lobby = Vector3.new(-499, 17, -40234),
}

function ykng.islandOf(hrq)
if not hrq then
return _d("XRoBCUg")
end

if hrq.X > -4500 then
return _d("XRoBCUg")
end

local pny, qv = _d("UBcCBVUXGlQRPAJCFBVfEQ"), math.huge

for lq, nwy in ipairs(ykng.islandAnchors) do
local pomi = math.abs(hrq.X - nwy.x)

if pomi < qv then
pny = nwy.id
qv = pomi
end
end

return pny
end

ykng.savedVersion = 2

do
local ex = getgenv().ACBXDeepSpot

if type(ex) == _d("RRQBB1Q") and ex.v == ykng.savedVersion
and tonumber(ex.X) and tonumber(ex.Y) and tonumber(ex.Z) then
ykng.custom = Vector3.new(tonumber(ex.X), tonumber(ex.Y), tonumber(ex.Z))
ykng.customIsland = ex.island
end
end

function ykng.spot()
return ykng.custom or ykng.islandHold
end

function ykng.dropStale()
if not ykng.custom then
return false
end

if ykng.zoneAt(ykng.custom) then
return false
end

ykng.custom = nil
ykng.customIsland = nil
getgenv().ACBXDeepSpot = nil

return true
end

function ykng.capture()
local si = kxt.Character
local euy = si and si:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if not euy then
return false, _d("fxpDCFkZBlAWFw5DWABeVREOUBxUUFUQG14MVFcHDAYf")
end

local xh = euy.Position
local izp = ykng.floorAt(Vector3.new(xh.X, xh.Y + 10, xh.Z))

if not izp then
return false, _d("YgECBVVYG19VEARdERAREhEERBYQERMKGUIMVBxVFwNYC1RCBQwfERAVQlUNBBEeGF4aEUtFF1RSFBAfER4GXhhN")
end

local oi = ykng.zoneAt(xh)

if not oi then
return false, _d("ZR0KGBELBF4BQwJCWBtEARACVR1UVAMGGUhYElgGCwJfH1RDHA0MEVVUQgECBVVYG0cQEUtFEBERAgIfVApUVxwRGEVW")
end

ykng.custom = xh
ykng.customIsland = ykng.islandOf(xh)

getgenv().ACBXDeepSpot = {
X = xh.X,
Y = xh.Y,
Z = xh.Z,
island = ykng.customIsland,
v = ykng.savedVersion,
}

return true, _d("YhQVDlVYAFkcEEtCCBtFVQIYEQwcVFUHDlQIWUYUFw5DWBxeGQdLGQ") .. tostring(oi.name) .. _d("GFs")
end

function ykng.zoneTable()
local mx = {}

if qgxy and type(qgxy.Zones) == _d("RRQBB1Q") then
for ksjk, dei in ipairs(qgxy.Zones) do
mx[#mx + 1] = {
id = tostring(dei.id),
name = tostring(dei.name or dei.id),
half = tonumber(dei.half) or 0,
luck = tonumber(dei.luck) or 0,
index = tonumber(dei.index) or 0,
boatTier = tonumber(dei.boatTier) or 0,
}
end
end

table.sort(mx, function(iiq, pms)
return iiq.index < pms.index
end)

return mx
end

function ykng.zoneAt(kje)
local jv = qgxy and qgxy.ZoneCenter
local cv = ykng.zoneTable()

if not (jv and kje and #cv > 0) then
return nil
end

local tsml = math.max(math.abs(kje.X - jv.X), math.abs(kje.Z - jv.Z))

for asce, nwb in ipairs(cv) do
if tsml < nwb.half then
return nwb
end
end

return nil
end

function ykng.current()
local fl = kxt.Character
local skwv = fl and fl:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

return skwv and ykng.zoneAt(skwv.Position) or nil
end

function ykng.sync()
local hnu = ykng.current()
rz.zoneId = hnu and hnu.id or nil
end

function ykng.floorAt(dpf)
local ww = kxt.Character
local lcse = RaycastParams.new()
lcse.FilterType = Enum.RaycastFilterType.Exclude
lcse.FilterDescendantsInstances = { ww }

local xmn = workspace:Raycast(Vector3.new(dpf.X, dpf.Y + 20, dpf.Z), Vector3.new(0, -80, 0), lcse)

if xmn and xmn.Instance.Name ~= _d("ZhQXDkM") then
return xmn
end

return nil
end

function ykng.ensureSpotMap()
local cgeh = ykng.spot()
local fqe = Vector3.new(cgeh.X, cgeh.Y + 20, cgeh.Z)

if ykng.floorAt(fqe) then
return true
end

local udaq = workspace:FindFirstChild(_d("fBQTGA"))

if udaq and udaq:FindFirstChild(_d("choCGEUZGH0aAQlI")) then
if os.clock() - (ykng.hopAt or 0) > 1 then
ykng.hopAt = os.clock()
ykng.hop(cgeh)
rz.lastMessage = _d("fBoVAl8fVEUaQx9ZHVRVEAYbHA8VRRARS0IIG0U")
end

return false
end

if os.clock() - (ykng.islandAskedAt or 0) > 1.2 then
ykng.islandAskedAt = os.clock()

local kd = ykng.customIsland or ykng.islandOf(cgeh)

if kd == _d("XRoBCUg") then
pcall(function()
cib.TeleportToWorld:FireServer(_d("XRoBCUg"))
end)
else
pcall(function()
cib.FishingIslandTeleport:FireServer(_d("RhQaG14RGkU"), kd)
end)
end

rz.lastMessage = _d("ZRQIAl8fVEUdBktWGRlUUhBLRR0YVAUMGUVYAF5VFwNUWBBUEBNGRhkAVAdDBlAI")
end

return false
end

function ykng.hop(wqp)
local nn = kxt.Character
local tgad = nn and nn:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))
local kpuz = nn and nn:FindFirstChildOfClass(_d("eQAOCl8XHVU"))

if not (tgad and kpuz) then
return false
end

if kpuz.SeatPart then
pcall(function()
kpuz.Sit = false
end)
end

tgad.AssemblyLinearVelocity = Vector3.zero
tgad.CFrame = CFrame.new(Vector3.new(wqp.X, wqp.Y + 8, wqp.Z))

return true
end

function ykng.faceWater()
local tnk = kxt.Character
local em = tnk and tnk:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if not em then
return false
end

local ymfe = qpu()

if not ymfe then
local tdxt = qgxy and qgxy.ZoneCenter

if tdxt then
local ksa = Vector3.new(tdxt.X - em.Position.X, 0, tdxt.Z - em.Position.Z)

ymfe = ksa.Magnitude > 1 and ksa.Unit or nil
end
end

if not ymfe then
return false
end

em.CFrame = CFrame.lookAt(em.Position, em.Position + ymfe)

return true
end

function ykng.aimWater(oj)
local cjik = kxt.Character
local qn = cjik and cjik:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if not qn then
return false
end

if oj then
ldi()
end

local mwp = qn.CFrame.LookVector
local cx = Vector3.new(mwp.X, 0, mwp.Z)
local ypc = qpu()

if not ypc then
return false
end

if cx.Magnitude > 0.05 and cx.Unit:Dot(ypc) > 0.985 then
return true
end

qn.CFrame = CFrame.lookAt(qn.Position, qn.Position + ypc)

return true
end

function ykng.hold(ty)
local desp = kxt.Character
local lqad = desp and desp:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))
local ooat = desp and desp:FindFirstChildOfClass(_d("eQAOCl8XHVU"))

if not (lqad and ooat) then
return false
end

if ooat.SeatPart then
pcall(function()
ooat.Sit = false
end)
end

local pyei = ykng.floorAt(ty)

if not pyei then
return false
end

lqad.AssemblyLinearVelocity = Vector3.zero
lqad.CFrame = CFrame.new(Vector3.new(ty.X, pyei.Position.Y + 3.2, ty.Z))

pcall(ykng.aimWater, true)

rz.phase = _d("WBEPDg")
rz.nextCastAt = 0

return true
end

function ykng.dive()
local wwtq = ykng.spot()

if not ykng.ensureSpotMap() then
return false
end

if not ykng.hold(wwtq) then
return false
end

ykng.islandAskedAt = 0

local ka = ykng.zoneAt(wwtq)

rz.lastMessage = ka
and (_d("eRoPD1gWExEBCw4RHBFUBU4cUAwRQ1UQG14MVBk") .. tostring(ka.name) .. _d("GA"))
or _d("eRoPD1gWExEBCw4RHBFUBU4cUAwRQ1UQG14M")

task.wait(0.25)
ykng.sync()
rz.deepDiveAt = os.clock() + 2

return true
end

function ykng.walk()
local sq = kxt.Character
local oe = sq and sq:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if ykng.walking and os.clock() - (ykng.walkStartedAt or 0) < 60 then
return false
end

if not oe then
return false
end

local lep = ykng.spot()

if (oe.Position - Vector3.new(lep.X, oe.Position.Y, lep.Z)).Magnitude <= 8 then
rz.phase = _d("WBEPDg")
rz.nextCastAt = 0

return true
end

ykng.walking = true
ykng.walkStartedAt = os.clock()
rz.deepPhase = _d("RhQPAA")
rz.deepStageAt = os.clock()
rz.lastMessage = _d("ZhQPAFgWExEBDEtFEBEREQYOQR0HRVUUCkUdBhEGEwRF")

task.spawn(function()
local ziy = sq and sq:FindFirstChildOfClass(_d("eQAOCl8XHVU"))

local ze, yav = pcall(function()

local poca = workspace:FindFirstChild(_d("fBQTGA"))
local atwd = ykng.customIsland or ykng.islandOf(lep)
local ncha = (oe.Position - Vector3.new(lep.X, oe.Position.Y, lep.Z)).Magnitude

if ncha > 400 then
if not (poca and poca:FindFirstChild(_d("choCGEUZGH0aAQlI"))) then
pcall(function()
cib.TeleportToWorld:FireServer(_d("XRoBCUg"))
end)

local ufv = os.clock() + 20

while rz.deepWalk and os.clock() < ufv do
local kc = workspace:FindFirstChild(_d("fBQTGA"))

if kc and kc:FindFirstChild(_d("choCGEUZGH0aAQlI")) then
break
end

task.wait(0.5)
end
end

if rz.deepWalk then
local thh = ykng.arrivals and ykng.arrivals[atwd]

if thh then
ykng.hop(thh)
else
local nvtj = Vector3.new(lep.X - oe.Position.X, 0, lep.Z - oe.Position.Z)
local oyo = nvtj.Magnitude > 1 and nvtj.Unit or Vector3.new(1, 0, 0)

ykng.hop(Vector3.new(lep.X - oyo.X * 120, lep.Y, lep.Z - oyo.Z * 120))
end

task.wait(1.5)
end
end

if rz.deepWalk and ziy then

local equ = (oe.Position - Vector3.new(lep.X, oe.Position.Y, lep.Z)).Magnitude
local wc = os.clock() + math.clamp(equ / 8, 30, 600)
local gi = 0
local hsh = oe.Position
local wlpz = os.clock()

while rz.deepWalk and os.clock() < wc do
local zpi = Vector3.new(lep.X - oe.Position.X, 0, lep.Z - oe.Position.Z)

if zpi.Magnitude <= 3 then
break
end

if os.clock() - gi >= 0.25 then
ziy:MoveTo(Vector3.new(lep.X, oe.Position.Y, lep.Z))
gi = os.clock()
end

if os.clock() - wlpz >= 1.2 then
if (oe.Position - hsh).Magnitude < 2 then
ziy.Jump = true
end

hsh = oe.Position
wlpz = os.clock()
end

task.wait(0.1)
end

ziy:MoveTo(oe.Position)
end
end)

ykng.walking = false

if not ze then
rz.deepPhase = _d("WBEPDg")
rz.deepStageAt = os.clock()
rz.lastMessage = _d("ZhQPABEMGxExBg5BHQdFVTQKRR0GERMCAl0dEAtV") .. tostring(yav)

return
end

if not rz.deepWalk then
return
end

local yyo = Vector3.new(oe.Position.X - lep.X, 0, oe.Position.Z - lep.Z)

if yyo.Magnitude <= 6 then

pcall(ykng.aimWater, true)
rz.phase = _d("WBEPDg")
rz.nextCastAt = 0
rz.deepPhase = _d("WRoPDw")
rz.deepStageAt = os.clock()
ykng.sync()
rz.lastMessage = _d("ZhQPAFQcVEUaQx9ZHVRCFBUOVVgQVBATRkYZAFQHQxhBFwA")
else

rz.deepPhase = _d("WBEPDg")
rz.deepStageAt = os.clock()
rz.lastMessage = _d("choWB1VYGl4BQxxQFB8RAQxLRRAREREGDkEdB0VVFApFHQYRBhMERVhZEQERElgWExEUBApYFg")
end
end)

return false
end

function ykng.settle()
for ro = 1, 30 do
if not rz.deepZone or rz.deepWalk then
return false
end

if ykng.dive() then
return true
end

task.wait(1)
end

return false
end

function ykng.surface()
local cif = kxt.Character
local taoy = cif and cif:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if not taoy then
return false
end

local yasp = RaycastParams.new()
yasp.FilterType = Enum.RaycastFilterType.Exclude
yasp.FilterDescendantsInstances = { cif }

local klp = workspace:Raycast(behi + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), yasp)
local ofj = behi

if klp and klp.Instance.Name ~= _d("ZhQXDkM") then
ofj = Vector3.new(behi.X, klp.Position.Y + 3, behi.Z)
end

taoy.CFrame = CFrame.new(ofj)
rz.phase = _d("WBEPDg")
rz.nextCastAt = 0

return true
end

function rz.gotoIsland()
local gre = kxt.Character
local sbqm = gre and gre:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))
local ssgx = workspace:FindFirstChild(_d("eAYPCl8cMlgGCw5DFRVfOzMo"), true)

if not (sbqm and ssgx) then
return false
end

local asc = ssgx:GetPivot()
local hjht = RaycastParams.new()
hjht.FilterType = Enum.RaycastFilterType.Exclude
hjht.FilterDescendantsInstances = { gre, ssgx }

local urx = nil
local tjsc = -math.huge

for hk, egkn in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local yxn = workspace:Raycast(asc.Position + egkn + Vector3.new(0, 30, 0), Vector3.new(0, -120, 0), hjht)

if yxn and yxn.Position.Y > tjsc then
urx = yxn
tjsc = yxn.Position.Y
end
end

if urx then
sbqm.CFrame = CFrame.new(Vector3.new(urx.Position.X, tjsc + 3.5, urx.Position.Z))
else
sbqm.CFrame = CFrame.new(asc.Position + Vector3.new(0, 4, 0))
end

rz.phase = _d("WBEPDg")
rz.nextCastAt = 0

return true
end

function ykng.cycle()
local rrj = os.clock()
local wfy = rz.deepPhase or _d("WBEPDg")
local cksf = tonumber(rz.deepStageAt) or 0

if rrj < math.max(rz.shopTripUntil or 0, rz.tpHoldUntil or 0) then
return
end

if wfy == _d("WBEPDg") then
rz.deepPhase = _d("WRoPDw")
rz.deepStageAt = rrj

if rz.deepWalk then
ykng.walk()
else
ykng.dive()
end

return
end

if wfy == _d("RhQPAA") then
return
end

if wfy == _d("WRoPDw") then
local dp = ykng.current()

local qsio = ykng.zoneAt(ykng.spot())

if dp and not kxt:GetAttribute(_d("YgIKBlwRGlY")) and rrj - (rz.deepAimAt or 0) > 2 then
rz.deepAimAt = rrj
pcall(ykng.aimWater)
end

if kxt:GetAttribute(_d("YgIKBlwRGlY")) then
if rz.deepWalk then

rz.deepPhase = _d("WBEPDg")
rz.deepStageAt = rrj
else
rz.deepPhase = _d("VRwT")
rz.deepStageAt = rrj
rz.lastMessage = _d("YgIKBlwRGlZVAh8RDBxUVQcOVAhUQgUMHxFVVEIAEQ1QGxFVVQUEQ1gVWAc")
end
elseif not dp or (qsio and dp.index < qsio.index) then

rz.deepPhase = _d("WBEPDg")
rz.deepStageAt = rrj
end

return
end

if wfy == _d("VRwT") then
ykng.surface()
rz.deepPhase = _d("QgARDVAbEQ")
rz.deepStageAt = rrj

return
end

if wfy == _d("QgARDVAbEQ") and rrj - cksf >= ykng.surfaceWait then
rz.deepPhase = _d("WBEPDg")
end
end

local function svk()
local bjv = kxt.Character
local nr = bjv and bjv:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if not nr then
return false
end

return (nr.Position - behi).Magnitude <= 12
end

local function hesl()
if not iqw() then
return false
end

local blwj = pcall(function()
cib.FishingSetAuto:FireServer(true)
end)

rz.usingGameAuto = blwj
return blwj
end

local function ebl()
rz.usingGameAuto = false

pcall(function()
cib.FishingSetAuto:FireServer(false)
end)

pcall(function()
cib.FishingStop:FireServer()
end)
end

function rz.recover()
rz.phase = _d("WBEPDg")
rz.nextCastAt = 0
rz.deepPhase = _d("WBEPDg")
rz.deepStageAt = 0
rz.deepDiveAt = 0
rz.waterRefusals = 0
rz.usingGameAuto = false
rz.castMark = rz.totalCasts
rz.castMarkAt = os.clock()

pcall(ebl)
pcall(iqw)

if rz.deepZone and not ykng.current() then

pcall(function()
cib.TeleportToWorld:FireServer(_d("XRoBCUg"))
end)
elseif rz.tpToBay and not svk() then
pcall(nfrj)
end

rz.lastMessage = _d("dxwQA1gWExEGFwpdFBFVVU5LQx0HVAFDH1kdVEYUFw5DWBVfEUMfXhcfEQELDhEfFVwQRBgRFBtTFxpLQxcD")
end

local function ysof()
if not iqw() then
rz.lastMessage = _d("fxpDDVgLHFgbBEtDFxARHA1LRRARERcCCFoIFVIe")
return false
end

local vxuh = vxna()
local lhk = qpu()
local phm = vxuh or lhk

if not phm then
rz.lastMessage = _d("fxpDHFAMEUNVBQREFhARGwYKQxoN")
return false
end

if vxuh and lhk and vxuh:Dot(lhk) < 0.25 then
phm = lhk
end

rz.phase = _d("UhQQH1gWEw")
rz.lastMessage = nil
rz.watchdogAt = os.clock() + 25

local rwol, ayry = pcall(function()
cib.FishingThrow:FireServer(1, phm)
end)

if not rwol then
rz.phase = _d("WBEPDg")
rz.lastMessage = tostring(ayry)
rz.nextCastAt = os.clock() + 3
return false
end

return true
end

local ozsw = cib.FishingUpdate.OnClientEvent:Connect(function(zk, ao)
rz.dirty = true

if zk == _d("YgECH1Q") then
if type(ao) == _d("RRQBB1Q") then
rz.autoOn = ao.autoOn == true
end

return
end

if zk == _d("chQQHw") then
rz.phase = _d("RhQKH1gWE3McFw4")
rz.waterRefusals = 0
return
end

if zk == _d("cxwXDg") then
local yet = type(ao) == _d("RRQBB1Q") and tonumber(ao.warning) or 1

rz.phase = _d("QxAGB1gWEw")
rz.watchdogAt = os.clock() + 15

task.delay(math.max(0.3, yet + 0.8), function()
if rz.phase ~= _d("QxAGB1gWEw") then
return
end

pcall(function()
cib.FishingReel:FireServer(true, 120)
end)

rz.phase = _d("QxAQBF0OHV8S")
end)

return
end

if zk == _d("chQXCFk") then

local uwgp = type(ao) == _d("RRQBB1Q") and tonumber(ao.totalCasts) or nil
local ai = tonumber(getgenv().ACBXFishingCatchMark) or 0

if uwgp and uwgp <= ai and ai - uwgp < 25 then
return
end

if uwgp then
getgenv().ACBXFishingCatchMark = uwgp
end

local sa = type(ao) == _d("RRQBB1Q") and tostring(ao.itemId) or _d("RBsIBV4PGg")
local bjin = rz.catchName(sa)

rz.catches[sa] = (rz.catches[sa] or 0) + 1
rz.totalCatches = (rz.totalCatches or 0) + 1

local skuh = type(ao) == _d("RRQBB1Q") and ao.chest or nil

if type(skuh) == _d("RRQBB1Q") and skuh.itemId then
local rx = tostring(skuh.itemId)

rz.catches[rx] = (rz.catches[rx] or 0) + 1
end

if os.clock() - (wr.at or 0) >= 5 then
wr.at = os.clock()
wr.save()
end
rz.lastCatch = bjin
rz.lastMessage = nil
rz.phase = _d("WBEPDg")
rz.nextCastAt = os.clock() + 2.5

if type(ao) == _d("RRQBB1Q") then
rz.casts = tonumber(ao.casts) or rz.casts
rz.totalCasts = tonumber(ao.totalCasts) or rz.totalCasts
rz.autoUnlocked = ao.autoUnlocked == true or rz.autoUnlocked
end

return
end

if zk == _d("cAAXBH4eEg") then

rz.usingGameAuto = false
rz.phase = _d("WBEPDg")
rz.nextCastAt = os.clock() + 1
return
end

if zk == _d("dAYACkEdEA") then
rz.phase = _d("WBEPDg")
rz.lastMessage = _d("ZR0GS1cRB1lVBARFWBVGFBo")
rz.nextCastAt = os.clock() + 2.5
return
end

if zk == _d("YxAJDlIMEVU") then
rz.phase = _d("WBEPDg")

local jss = type(ao) == _d("RRQBB1Q") and tostring(ao.message) or _d("chQQHxEKEVsQAB9UHA")
rz.lastMessage = jss

if jss:lower():find(_d("RhQXDkM"), 1, true) then
rz.waterRefusals = (rz.waterRefusals or 0) + 1

if rz.waterRefusals >= 2 then
rz.waterRefusals = 0

if cgpi() then
rz.lastMessage = _d("YxAFHkIdEBEBFAJSHVQcVRceQxYRVVUBClITVEUaFApDHFRFHQZLRhkAVAc")
rz.nextCastAt = os.clock() + 1.5
return
end
end

rz.nextCastAt = os.clock() + 8
return
end

rz.waterRefusals = 0
rz.nextCastAt = os.clock() + 3
return
end
end)

local function ygc()
if not rz.loaded then
return _d("YxACD1gWExETChhZERpWVRAfUAwRH1tN")
end

local kwsz = rz.autoUnlocked == true
or (rz.totalCasts or 0) > 0
or (rz.tutorialStep or 0) > 0
local zi = qgxy and qgxy.RodsById and qgxy.RodsById[rz.rod]
local hl = zi and tostring(zi.name) or tostring(rz.rod)
local xx = math.floor((tonumber(rz.luck) or 0) * 100 + 0.5)

local ku = {
_d("YxoHURE") .. hl,
_d("fQAAAAtY") .. xx .. _d("FA"),
}

local nrcb = ykng.current()

if nrcb then
table.insert(ku, _d("axoNDgtY") .. nrcb.name .. _d("EV1I") .. tostring(math.floor(nrcb.luck * 100 + 0.5)) .. _d("FFUPHlITXQ"))
end

table.insert(ku, _d(""))
table.insert(ku, _d("chQQH0JYAF5VEBtUFhALVQ") .. ees(rz.casts or 0))
table.insert(ku, _d("ZRoXCl1YF1AGFxgLWA") .. ees(rz.totalCasts or 0))

table.insert(ku, _d(""))
table.insert(ku, _d("dxwQA1gWExEADQdeGx9UEVlL") .. (kwsz and _d("SBAQ") or _d("Xxo")))
table.insert(ku, _d("cAAXBBweHUIdQx5BHwZQEQZREQ") .. (rz.autoUnlocked and _d("XgINDlU") or _d("XxoXS14PGlQR")))

if rz.enabled then
local ssj = rz.usingGameAuto and _d("VhQODhEZAUUa") or tostring(rz.phase)

if ssj == _d("RhQKH1gWE3McFw4") then
ssj = _d("RhQKH1gWExETDBkRGVRTHBcO")
elseif ssj == _d("QxAGB1gWEw") then
ssj = _d("QxAGB1gWExEcDQ")
elseif ssj == _d("QxAQBF0OHV8S") then
ssj = _d("XRQND1gWExEcFw")
end

table.insert(ku, _d(""))
table.insert(ku, _d("cAAXBBE+HUIdWUs") .. ssj)

local sbnq = bs.worldBoss

if sbnq and type(sbnq.hasWork) == _d("VwANCEURG18") and sbnq.enabled and sbnq.hasWork() then
table.insert(ku, _d("eRoPD1gWEwtVBAdeGhVdVQEEQgtUWAZDHkFYXEMQEB5cHQcRGg1LWAwHERYMBF0cG0YbSg"))
end

if rz.lastCatch then
table.insert(ku, _d("fRQQHxEbFUUWC1ER") .. rz.lastCatch)
end
end

if rz.lastMessage then
table.insert(ku, _d(""))
table.insert(ku, _d("fxoXDgtY") .. rz.lastMessage)
end

return table.concat(ku, _d("Ow"))
end

local function xqpi()
local lyky = 0

for nv, seqh in pairs(rz.catches) do
local sjq = krmu.ById[nv]

if not (sjq and sjq.type == _d("Uh0GGEU")) then
lyky = lyky + seqh
end
end

return lyky
end

local function db()
local potw = {}

for yv, pp in pairs(rz.catches) do
local rpsv = krmu.ById[yv]
local eo = rpsv and rpsv.type == _d("Uh0GGEU") or false

table.insert(potw, {
name = rz.catchName(yv),
count = pp,
chest = eo,
rank = eo and (tonumber(rpsv.border) or 1) or 0,
})
end

if #potw == 0 then
return _d("fxoXA1gWExEWAh5WEAARDAYfH3J+ZQARBREXGhE0Fh9eWDJYBgtLUBYQEQELDhEMFV0ZGktCDBVDARBLWR0GVFtDIkVYB1ADBhgREQBCEA8NHVgHXlUKHxEbFUMHCg5CWBtHEBFLXx0MRVUQDkILHV4bTQ")
end

table.sort(potw, function(xzbr, gqsx)
if xzbr.chest ~= gqsx.chest then
return xzbr.chest
end

if xzbr.chest and xzbr.rank ~= gqsx.rank then
return xzbr.rank > gqsx.rank
end

if xzbr.count ~= gqsx.count then
return xzbr.count > gqsx.count
end

return xzbr.name < gqsx.name
end)

local umnm = {}

for bah, ghb in ipairs(potw) do
table.insert(umnm, ghb.name .. _d("EZfj/xE") .. ees(ghb.count))
end

local xj = {
table.concat(umnm, _d("O38")),
_d(""),
_d("ZRoXCl1YF1AABANFQlQ") .. ees(xqpi()) .. _d("EbfUSw") .. #potw .. _d("ER4KBVUL"),
}

if rz.lastCatch then
table.insert(xj, _d("fRQQHxEbFUUWC1ER") .. tostring(rz.lastCatch))
end

return table.concat(xj, _d("Ow"))
end

local fd = {
rod = Vector3.new(-493, 18, -40254),
bait = Vector3.new(-493, 18, -40254),
}

local function rmvs(ri)
if not qgxy then
return {}
end

local jiwj

if ri == _d("QxoH") then
jiwj = qgxy.RodsById
elseif ri == _d("UxQKHw") then
jiwj = qgxy.BaitsById
else
jiwj = nil
end

local qjb = {}

for bin, gxaj in pairs(jiwj or {}) do
if not gxaj.crafted then
table.insert(qjb, {
id = tostring(bin),
name = tostring(gxaj.name or bin),
cost = tonumber(gxaj.cost) or 0,
luck = tonumber(gxaj.luck) or 0,
index = tonumber(gxaj.index) or 0,
island = gxaj.shop == _d("WAYPCl8c"),
})
end
end

table.sort(qjb, function(op, rcv)
if op.index ~= rcv.index then
return op.index < rcv.index
end

return op.cost < rcv.cost
end)

return qjb
end

local function btsu(ivl)
if ivl == _d("QxoH") then
return rz.rodsOwned or {}
elseif ivl == _d("UxQKHw") then
return rz.baitsOwned or {}
end

return {}
end

local function pm(fmh)
if fmh == _d("QxoH") then
return rz.rod
elseif fmh == _d("UxQKHw") then
return rz.equippedBait
end

return nil
end

local function pgxi(vk)
local crq = btsu(vk)
local jz = nil

for omcw, gz in ipairs(rmvs(vk)) do
if crq[gz.id] == true then
jz = gz
end
end

return jz
end

local function ke(zt)
if zt.island and rz.islandLocked then
return false
end

return true
end

local function kcaj(ujkp)
local mn = btsu(ujkp)
local sh = rz.casts or 0
local cila = nil

for uh, bey in ipairs(rmvs(ujkp)) do
if mn[bey.id] ~= true and bey.cost <= sh and ke(bey) then
cila = bey
end
end

return cila
end

local function nnfp(lj)
local nggk = btsu(lj)

for fkcp, mqf in ipairs(rmvs(lj)) do
if nggk[mqf.id] ~= true and ke(mqf) then
return mqf
end
end

return nil
end

local function kua(jvra, mlz)
if not mlz then
return _d("XxoNDhEXA18QBw")
end

return mlz.name .. _d("EV1I") .. tostring(math.floor(mlz.luck * 100 + 0.5)) .. _d("FFUPHlITXQ")
end

local function hmrv()
if not qgxy then
return _d("dxwQA1gWE3UUFwoRFhtFVQUERBYQEVhDGFkXBBERAh9QWAFfFBUKWBQVUxkGRQ")
end

local yql = {}
local pfwj = { rod = _d("YxoH"), bait = _d("cxQKHw") }

for euwm, sqx in ipairs({ _d("QxoH"), _d("UxQKHw") }) do
local kleb = pgxi(sqx)
local up = nil

for kvf, dql in ipairs(rmvs(sqx)) do
if dql.id == pm(sqx) then
up = dql.name
end
end

if #yql > 0 then
table.insert(yql, _d(""))
end

table.insert(yql, pfwj[sqx] .. _d("C1U") .. kua(sqx, kleb))
table.insert(yql, _d("fhtDBV4PThE") .. (up or _d("XxoNDg")))

local yo = kcaj(sqx) or nnfp(sqx)

if yo then
local wojf = yo.cost - (rz.casts or 0)

table.insert(yql, _d("fxAbHwtY") .. yo.name .. _d("EbfUSw") .. ees(yo.cost) .. _d("ERYCGEUL"))

if wojf > 0 then
table.insert(yql, _d("fxAGDxE") .. ees(wojf) .. _d("ERgMGVQ"))
end
else
table.insert(yql, _d("fxAbHwtYEUcQERJFEB1fEkMERhYRVQ"))
end
end

table.insert(yql, _d(""))
table.insert(yql, _d("chQQH0JYAF5VEBtUFhALVQ") .. ees(rz.casts or 0))

if rz.shopMessage then
table.insert(yql, _d(""))
table.insert(yql, rz.shopMessage)
end

return table.concat(yql, _d("Ow"))
end

local function nx(dnqu, vq)
local ok = os.clock()

if ok < (rz.shopCallAt or 0) then
return false, _d("QhkMHA")
end

rz.shopCallAt = ok + 1.4

local xswc, fx, coo, zo = pcall(function()
return cib.FishingShop:InvokeServer(dnqu, vq)
end)

if not xswc then
return false, _d("VAcRBENY") .. tostring(fx)
end

rd(zo)

if fx == true then
return true, nil
end

return false, tostring(coo or _d("QxAFHkIdEA"))
end

function rz.rebirthCardsHeld()
local yey = qgxy and type(qgxy.RebirthCards) == _d("RRQBB1Q") and #qgxy.RebirthCards or 0

if yey == 0 then
return 0, 0
end

local lhii = 0

for csfe, pzft in ipairs(qgxy.RebirthCards) do
if rz.rebirthCards[pzft.cardId] then
lhii = lhii + 1
end
end

return lhii, yey
end

function rz.rebirthReady()
local jgb, xhu = rz.rebirthCardsHeld()

return xhu > 0 and jgb >= xhu and (tonumber(rz.rebirths) or 0) < 1
end

function rz.rebirthText()
local jtbm, ozda = rz.rebirthCardsHeld()

if ozda == 0 then
return _d("dxwQA1gWExERAh9QWBpeAUMHXhkQVBFPS0IXVEMQAQJDDBwRHBBLRBYVRxQKB1AaGFRb")
end

if (tonumber(rz.rebirths) or 0) >= 1 then
return _d("YxABAkMMHFQRTUtlEBERNAEKXxwbXxAHS3gLGFAbB0tYC1ReBQYFHw")
end

if jtbm >= ozda then
return _d("cBkPSw") .. ozda .. _d("ERYCGVULVFccEANUHFoRJwYKVQFURRpDGVQaHUMBC0U")
end

local ksh = {}

for vwl, dwg in ipairs(qgxy.RebirthCards) do
if not rz.rebirthCards[dwg.cardId] then
table.insert(ksh, (string.gsub(dwg.cardId, _d("bxMKGFkn"), _d(""))))
end
end

return jtbm .. _d("Hg") .. ozda .. _d("ERYCGVULWhEmFwJdFFRfEAYPEQ") .. table.concat(ksh, _d("HVU")) .. _d("Hw")
end

local function vbnl(dvo)
local fqb = kxt.Character
local xvod = fqb and fqb:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if not xvod then
return false
end

return (xvod.Position - (fd[dvo] or fd.rod)).Magnitude <= 26
end

local function ouzm(pj)
if vbnl(pj) then
return true
end

local jak = kxt.Character
local nvym = jak and jak:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if not nvym then
return false
end

local xbyu = fd[pj] or fd.rod
rz.shopTripUntil = os.clock() + 12
rz.shopHoldUntil = os.clock() + 12

pcall(function()
nvym.CFrame = CFrame.new(xbyu)
end)

task.wait(1.2)

return vbnl(pj)
end

local function fiu(anz, ar, jxf)
if not jxf then
return false
end

if (rz.casts or 0) < jxf.cost then
return false
end

if not ouzm(anz) then
rz.shopMessage = _d("choWB1VYGl4BQxlUGRdZVRcDVFgHWRoTS1cXBhE") .. jxf.name
return false
end

local xpza, lzrb = nx(ar, jxf.id)

if not xpza then
local tnlh = tostring(lzrb)
local necm = tnlh:find(_d("ZRQPABEMGxEBCw4RPh1CHQYZXBka"), 1, true) or tnlh:find(_d("cxoCHxE8EVAZBhk"), 1, true)

if necm then

rz.shopMessage = _d("ZhQPAFgWExEAE0tFF1RFHQZLUhcBXwEGGREeG0NV") .. jxf.name
return false
end

if lzrb ~= _d("QhkMHA") then
rz.shopAt = os.clock() + 15
rz.shopMessage = _d("YhARHVQKVEMQBR5CHRAR") .. jxf.name .. _d("EV0") .. tnlh .. _d("GA")
end

return false
end

rz.shopMessage = _d("cxoWDFkMVA") .. jxf.name

return true
end

local function jfss(fztl)
local jo = pgxi(fztl)

if not jo or pm(fztl) == jo.id then
return false
end

local oo

if fztl == _d("QxoH") then
oo = _d("dAQWAkEqG1U")
elseif fztl == _d("UxQKHw") then
oo = _d("dAQWAkE6FVgB")
else
return false
end

local phci, pgvd = nx(oo, jo.id)

if not phci then
if pgvd ~= _d("QhkMHA") then
rz.shopMessage = _d("choWB1VYGl4BQw5ADR1BVQ") .. jo.name .. _d("EV0") .. tostring(pgvd) .. _d("GA")
end

return false
end

if fztl == _d("QxoH") then
rz.rod = jo.id
elseif fztl == _d("UxQKHw") then
rz.equippedBait = jo.id
else
return false
end

rz.shopMessage = _d("dAQWAkEIEVVV") .. jo.name

return true
end

local function mmz()
local sy = rz.shop

if os.time() - (rz.lastSync or 0) >= 5 then
ux()
end

if sy.equipRod then
jfss(_d("QxoH"))
end

if sy.equipBait then
jfss(_d("UxQKHw"))
end

if sy.autoBuyRod then
fiu(_d("QxoH"), _d("cwAaOV4c"), kcaj(_d("QxoH")))
end

if sy.autoBuyBait then
fiu(_d("UxQKHw"), _d("cwAaKVARAA"), kcaj(_d("UxQKHw")))
end
end

local function tl()
local yxv = rz.shop

return yxv.autoBuyRod or yxv.autoBuyBait or yxv.equipRod or yxv.equipBait
end

rz.shopIsland = {
rods = function()
local ofgo = qgxy and qgxy.RodsById or {}
local pu = {}

for jgr, qeyu in pairs(ofgo) do
if tostring(qeyu.shop) == _d("WAYPCl8c") then
table.insert(pu, {
id = tostring(jgr),
name = tostring(qeyu.name or jgr),
cost = tonumber(qeyu.cost) or 0,
luck = tonumber(qeyu.luck) or 0,
index = tonumber(qeyu.index) or 0,
crafted = qeyu.crafted == true,
})
end
end

table.sort(pu, function(hfrd, qfoz)
return hfrd.index < qfoz.index
end)

return pu
end,

angler = function()
local qit = workspace:FindFirstChild(_d("fyUgGA"), true)

if not qit then
return nil
end

for hjhd, cwk in ipairs(qit:GetChildren()) do
if cwk:GetAttribute(_d("YhAAGVQMNV8SDw5DNiRy")) then
return cwk
end
end

return nil
end,
held = function(lc)
return (rz.rodsOwned or {})[lc] == true
end,
recipeHeld = function(kyqt)
for xg, bo in ipairs(kyqt or {}) do
local dt = tonumber((rz.mats or {})[bo.id]) or 0

if dt < (tonumber(bo.count) or 0) then
return false
end
end

return true
end,
recipeText = function(aoa)
local nb = {}

for kixg, nguy in ipairs(aoa or {}) do
local mgzx = tonumber((rz.mats or {})[nguy.id]) or 0
local zs = (krmu.ById[nguy.id] and krmu.ById[nguy.id].name) or tostring(nguy.id)

table.insert(nb, zs .. _d("EQ") .. ees(mgzx) .. _d("Hg") .. ees(tonumber(nguy.count) or 0))
end

return table.concat(nb, _d("EbfUSw"))
end,

stand = function(oy)
local dypx = kxt.Character
local dqtc = dypx and dypx:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if not (dqtc and oy) then
return false
end

local ir = oy:GetPivot()
local usx = oy:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ")) or oy:FindFirstChildWhichIsA(_d("cxQQDmEZBkU"), true)
local aw = usx and (usx.CFrame * CFrame.new(0, 0, -5)).Position or nil

if not aw then
local kb = RaycastParams.new()
kb.FilterType = Enum.RaycastFilterType.Exclude
kb.FilterDescendantsInstances = { dypx, oy }

local zvht = nil
local qqv = math.huge

for hfbn, tc in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local lltu = workspace:Raycast(ir.Position + tc + Vector3.new(0, 30, 0), Vector3.new(0, -140, 0), kb)

if lltu and tostring(lltu.Instance.Name) ~= _d("ZhQXDkM") and lltu.Position.Y <= ir.Position.Y + 10 then
local zzka = math.abs(lltu.Position.Y - ir.Position.Y)

if zzka < qqv then
zvht = lltu
qqv = zzka
end
end
end

aw = zvht and Vector3.new(zvht.Position.X, zvht.Position.Y + 3.5, zvht.Position.Z) or (ir.Position + Vector3.new(0, 4, 0))
end

rz.shopTripUntil = os.clock() + 12

rz.islandTripUntil = os.clock() + 12

pcall(function()
dqtc.CFrame = CFrame.new(aw)
end)

task.wait(1.2)

return true
end,
atIsland = function()
local rv = workspace:FindFirstChild(_d("eAYPCl8cMlgGCw5DFRVfOzMo"), true)
local qhm = kxt.Character
local kzc = qhm and qhm:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if not (rv and kzc) then
return false
end

return (kzc.Position - rv:GetPivot().Position).Magnitude <= 45
end,
toIsland = function()
if rz.shopIsland.atIsland() then
return true
end

rz.shopTripUntil = os.clock() + 12

if not rz.gotoIsland() then
return false
end

task.wait(1.2)

return rz.shopIsland.atIsland()
end,

craftExcalibur = function()
local enua = rz.shopIsland.angler()

if not enua or rz.shopIsland.held(_d("QxoHNEIdF0MQFw")) then
return false
end

if not rz.shopIsland.recipeHeld(qgxy and qgxy.SecretRecipe) then
return false
end

rz.shopIsland.stand(enua)

local qnu, siug = nx(_d("cgcCDUUqG1U"), _d("QxoHNEIdF0MQFw"))

if qnu then
rz.rod = _d("QxoHNEIdF0MQFw")
rz.islandMessage = _d("cgcCDUUdEBEBCw4RPQxSFA8CUw0GEQcMDxEZABEBCw4RMB1VEQYFETkaVhkGGQ")
elseif siug ~= _d("QhkMHA") then
rz.islandMessage = _d("eRwHD1QWVHAbBAdUClRDEAUeQh0QEQELDhE9DFIUDwJTDQYRXQ") .. tostring(siug) .. _d("GA")
end

return qnu
end,
buyRod = function()
if rz.islandLocked then
return false
end

local np = rz.rodsOwned or {}
local gh = nil

for edj, vkt in ipairs(rz.shopIsland.rods()) do
if not vkt.crafted
and np[vkt.id] ~= true
and vkt.cost <= (rz.casts or 0)
and (gh == nil or vkt.index > gh.index) then
gh = vkt
end
end

if not gh then
return false
end

if not rz.shopIsland.toIsland() then
rz.islandMessage = _d("choWB1VYGl4BQxlUGRdZVRcDVFgdQhkCBVVYF14ADR9UCg")
return false
end

local ey, hgip = nx(_d("cwAaOV4c"), gh.id)

if ey then
rz.islandMessage = _d("cxoWDFkMVA") .. gh.name
elseif hgip ~= _d("QhkMHA") then
local drnn = tostring(hgip)

if not (drnn:find(_d("ZRQPABEMGw"), 1, true) or drnn:find(_d("eAYPCl8cEUM"), 1, true)) then
rz.islandAt = os.clock() + 15
rz.islandMessage = _d("YhARHVQKVEMQBR5CHRAR") .. gh.name .. _d("EV0") .. drnn .. _d("GA")
end
end

return ey
end,
craftBoot = function()
if rz.boot.owned or rz.islandLocked then
return false
end

if not rz.shopIsland.recipeHeld(qgxy and qgxy.BootRecipe) then
return false
end

if not rz.shopIsland.toIsland() then
rz.islandMessage = _d("choWB1VYGl4BQxlUGRdZVRcDVFgdQhkCBVVYF14ADR9UCg")
return false
end

local rpfq, wmgc = nx(_d("cgcCDUU6G14B"))

if rpfq then
rz.boot.owned = true
rz.islandMessage = _d("cgcCDUUdEBEBCw4RNBFWEA0PUAoNETcMBEU")
elseif wmgc ~= _d("QhkMHA") then
rz.islandMessage = _d("eAYPCl8cVHccEANUChlQG0MZVB4BQhAHS0UQEREXDARFWFw") .. tostring(wmgc) .. _d("GA")
end

return rpfq
end,
best = function()
local po = rz.rodsOwned or {}
local ct = nil

for hyc, zdem in ipairs(rz.shopIsland.rods()) do
if po[zdem.id] == true and (ct == nil or zdem.luck > ct.luck) then
ct = zdem
end
end

return ct
end,

equipRod = function()
local iix = rz.shopIsland.best()

if not iix or rz.rod == iix.id then
return false
end

local dusp, tjb = nx(_d("dAQWAkEqG1U"), iix.id)

if dusp then
rz.rod = iix.id
rz.islandMessage = _d("dAQWAkEIEVVV") .. iix.name
elseif tjb ~= _d("QhkMHA") then
rz.islandMessage = _d("choWB1VYGl4BQw5ADR1BVQ") .. iix.name .. _d("EV0") .. tostring(tjb) .. _d("GA")
end

return dusp
end,
equipBoot = function()
if not rz.boot.owned or rz.boot.equipped then
return false
end

local teq, fzve = nx(_d("dAQWAkE6G14B"), true)

if teq then
rz.boot.equipped = true
rz.islandMessage = _d("dAQWAkEIEVVVFwNUWDhUEgYFVRkGSFUhBF4M")
elseif fzve ~= _d("QhkMHA") then
rz.islandMessage = _d("choWB1VYGl4BQw5ADR1BVRcDVFgWXhoXSxk") .. tostring(fzve) .. _d("GA")
end

return teq
end,
active = function()
local uakq = rz.island

return uakq.autoRod or uakq.equipRod or uakq.autoAcc or uakq.equipAcc
end,
run = function()
local emr = rz.island

if os.time() - (rz.lastSync or 0) >= 8 then
ux()
end

local pi = false

if emr.autoRod then
pi = rz.shopIsland.craftExcalibur()
end

if emr.equipRod then
rz.shopIsland.equipRod()
end

if emr.autoRod and not pi then
rz.shopIsland.buyRod()
end

if emr.autoAcc then
rz.shopIsland.craftBoot()
end

if emr.equipAcc then
rz.shopIsland.equipBoot()
end
end,
text = function()
if not qgxy then
return _d("dxwQA1gWE3UUFwoRFhtFVQUERBYQEVhDH1kdVFgGDwpfHFRCHQwbEREHEQANCkcZHV0UAQdUVg")
end

local ulsb = {}
local ffx = rz.rodsOwned or {}

table.insert(ulsb, rz.islandLocked and _d("cBcCBVUXGlQRQyJCFBVfEUMCQlgYXhYIDlVYWREHBglYCgBZVQUCQwsAHw") or _d("cBcCBVUXGlQRQyJCFBVfEUMCQlgbQRANRQ"))

for yvhq, pvw in ipairs(rz.shopIsland.rods()) do
local xva

if ffx[pvw.id] == true then
xva = rz.rod == pvw.id and _d("XgINDlVYtoZVDAURFhtG") or _d("XgINDlU")
elseif pvw.crafted then
xva = _d("eRwHD1QWVHAbBAdUClRDEAACQR0")
else
xva = ees(pvw.cost) .. _d("ERYCGEUL")
end

table.insert(ulsb, pvw.name .. _d("EZfj/xE") .. xva)
end

table.insert(ulsb, _d(""))

if ffx.rod_secret then
table.insert(ulsb, _d("dA0ACl0RFkQHWUteDxpUEQ"))
else
local kya = rz.shopIsland.recipeHeld(qgxy.SecretRecipe)

table.insert(ulsb, _d("dA0ACl0RFkQHWUs") .. (kya and _d("QxAAAkEdVEMQAg9I") or _d("QxAAAkEdVEIdDBlF")))
table.insert(ulsb, rz.shopIsland.recipeText(qgxy.SecretRecipe))
end

table.insert(ulsb, _d("eRwHD1QWVHAbBAdUCk4R") .. (rz.shopIsland.angler() and _d("RAVDBV4P") or _d("XxoXS1kdBlQ")))
table.insert(ulsb, _d(""))

local peu = rz.boot
local jgru

if peu.equipped then
jgru = _d("fRAEDl8cFUMMQyleFwALVQYaRBEEQRAH")
elseif peu.owned then
jgru = _d("fRAEDl8cFUMMQyleFwALVQwcXx0Q")
elseif rz.shopIsland.recipeHeld(qgxy.BootRecipe) then
jgru = _d("fRAEDl8cFUMMQyleFwALVREOUhEEVFURDlAcDQ")
else
jgru = _d("fRAEDl8cFUMMQyleFwALVQ") .. rz.shopIsland.recipeText(qgxy.BootRecipe)
end

table.insert(ulsb, jgru)
table.insert(ulsb, _d("chQQH0JYAF5VEBtUFhALVQ") .. ees(rz.casts or 0))

if rz.islandMessage then
table.insert(ulsb, _d(""))
table.insert(ulsb, rz.islandMessage)
end

return table.concat(ulsb, _d("Ow"))
end,
}

task.spawn(function()
ux()
end)

local pjfk = {
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

getgenv().ACBXAutoBuyHalloween = pjfk

cib.SyncItems.OnClientEvent:Connect(function(kcv)
if type(kcv) == _d("RRQBB1Q") then
pjfk.balances = kcv
pjfk.lastSync = os.time()
end
end)

cib.RequestItemSync:FireServer()

cib.RaidShopState.OnClientEvent:Connect(function(zoh)
if type(zoh) == _d("RRQBB1Q") and zoh.shopId == _d("WRQPB14PEVQb") then
pjfk.shopState = zoh
pjfk.stateAt = os.clock()
end
end)

cib.RaidNotify.OnClientEvent:Connect(function(pxt)
local upys = pjfk.pending

if not upys or type(pxt) ~= _d("QgERAl8f") then
return
end

if pxt:sub(1, 9) == _d("YSAxKHk5J3Qx") then
pjfk.purchased[upys.id] = (pjfk.purchased[upys.id] or 0) + 1
pjfk.pending = nil
else
if pjfk.balances[upys.currency] then
pjfk.balances[upys.currency] = pjfk.balances[upys.currency] + upys.price
end

pjfk.failedUntil[upys.id] = os.time() + 5
pjfk.pending = nil
end
end)

bz.trip = {
untilAt = 0,
lastTry = 0,
lastResult = nil,
spot = nil,
}

function bz.merchant()
local rzt = workspace:FindFirstChild(_d("fyUgGA"))
local xaay = bz.shopData and bz.shopData.NpcName or _d("YQAOG1oRGhE4BhlSEBVfAQ")

return rzt and rzt:FindFirstChild(xaay) or nil
end

function bz.stand()
local cf = bz.merchant()
local msnw = cf and (cf:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ")) or cf:FindFirstChildWhichIsA(_d("cxQQDmEZBkU")))
local ow = kxt.Character
local atl = ow and ow:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if not (msnw and atl) then
return false
end

bz.trip.spot = msnw.Position + Vector3.new(0, 3, 4)
atl.AssemblyLinearVelocity = Vector3.zero
atl.CFrame = CFrame.new(bz.trip.spot)

return true
end

function bz.fresh()
return pjfk.shopState ~= nil and os.clock() - pjfk.stateAt < 30
end

function bz.guiOpen()
local ytw = spkj:FindFirstChild(_d("eRQPB14PEVQbMANeCDNEHA"))
local zfv = ytw and ytw:FindFirstChild(_d("Yh0MG3cKFVwQ"))

if zfv then
return zfv.Visible == true
end

for atq, qf in ipairs(spkj:GetChildren()) do
if qf:IsA(_d("YhYRDlQWM0Qc")) and qf.Name:lower():find(_d("WRQPB14PEVQb"), 1, true) and qf.Enabled then
return true
end
end

return false
end

function bz.close()
local cod = spkj:FindFirstChild(_d("eRQPB14PEVQbMANeCDNEHA"))
local mjba = cod and cod:FindFirstChild(_d("Yh0MG3cKFVwQ"))

if not (mjba and mjba.Visible) then
return false
end

local esu = mjba:FindFirstChild(_d("chkMGFQ6AUUBDAU"))

if not esu then
for kjg, kgt in ipairs(mjba:GetDescendants()) do
if kgt:IsA(_d("dgAKKUQMAF4b")) and tostring(kgt.Name):lower():find(_d("UhkMGFQ"), 1, true) then
esu = kgt
break
end
end
end

if esu and type(firesignal) == _d("VwANCEURG18") then
pcall(function()
firesignal(esu.MouseButton1Click)
end)

task.wait(0.3)

if not mjba.Visible then
return true
end
end

pcall(function()
mjba.Visible = false
end)

return true
end

function bz.spend()
if pjfk.pending or os.time() - (pjfk.lastAttempt or 0) < 1 then
return nil
end

local eiuv = pjfk.shopState

for xdcf, rn in ipairs(bz.shopItems) do
if pjfk.selected[rn.id] and os.time() >= (pjfk.failedUntil[rn.id] or 0) then
local zmr = rn.stock
local bf = pjfk.purchased[rn.id] or 0

if eiuv and eiuv.stocks and eiuv.stocks[rn.id] then
zmr = eiuv.stocks[rn.id]
end

if eiuv and eiuv.bought then
bf = math.max(bf, eiuv.bought[rn.id] or 0)
end

local svei = zmr and (zmr - bf) or 1
local am = pjfk.balances[rn.currency] or 0

if svei > 0 and am >= rn.price then
pjfk.pending = {
id = rn.id,
price = rn.price,
currency = rn.currency,
at = os.time(),
}
pjfk.lastAttempt = os.time()
pjfk.balances[rn.currency] = am - rn.price

pcall(function()
cib.BuyRaidItem:FireServer(rn.id, 1)
end)

return rn.id
end
end
end

return nil
end

function bz.open(qa)
if not qa and bz.fresh() then
return true
end

if not qa and os.clock() < (bz.trip.lastTry or 0) + 8 then
return false
end

bz.trip.lastTry = os.clock()
bz.trip.untilAt = os.clock() + 12

rz.shopTripUntil = os.clock() + 12
rz.shopHoldUntil = os.clock() + 12
rz.phase = _d("WBEPDg")

local ictc = bz.merchant()
local bhhw = ictc and ictc:FindFirstChild(_d("YQcME1gVHUUMMxleFQRF"))

if not (ictc and bhhw) then
rz.deepPhase = _d("WBEPDg")
bz.trip.untilAt = os.clock() + 60
bz.trip.lastResult = _d("ZR0GS2ENGUEeCgURNRFDFgsKXwxUWAZDBV4MVFgbQx9ZEQcRFxYCXRxa")

return false
end

local lvv = os.clock() + 3
local lwue = 0

while os.clock() < lvv do

bz.stand()

if os.clock() >= lwue then
lwue = os.clock() + 0.8

if type(fireproximityprompt) == _d("VwANCEURG18") then
pcall(function()
fireproximityprompt(bhhw)
end)
end

pcall(function()
cib.OpenRaidShop:FireServer(_d("WRQPB14PEVQb"))
end)
end

if bz.guiOpen() or bz.fresh() then
break
end

task.wait(0.1)
end

if not (bz.guiOpen() or bz.fresh()) then

rz.deepPhase = _d("WBEPDg")
bz.trip.untilAt = os.clock() + 60
bz.trip.lastResult = _d("ZR0GS1IXAV8BBhkRHB1VVQ0ERVgVXwYUDkNYWREcF0teFhhIVQwbVBYHERwNS0UQEREGBgpCFxpQGUMKQx0VHw")

return false
end

bz.trip.lastResult = _d("choWBUUdBhEaEw5fVg")

for hbsi = 1, 3 do
bz.stand()

if not bz.spend() then
break
end

task.wait(1.2)
end

pcall(bz.close)

rz.deepPhase = _d("WBEPDg")

return true
end

local function teti(vzj)
vzj = math.max(0, math.floor(vzj))
local crd = math.floor(vzj / 3600)
local ggxw = math.floor((vzj % 3600) / 60)
local nk = vzj % 60

if crd > 0 then
return string.format(_d("FBELSxRIRlUY"), crd, ggxw)
elseif ggxw > 0 then
return string.format(_d("FBEOSxRIRlUG"), ggxw, nk)
end

return string.format(_d("FBEQ"), nk)
end

local function baq()
local ssz = spkj:FindFirstChild(_d("eRQPB14PEVQbMANeCDNEHA"))
local ayni = ssz and ssz:FindFirstChild(_d("Yh0MG3cKFVwQ"))
local wlf = ayni and ayni:FindFirstChild(_d("eAEGBn0RB0U"))
local jd = {}
local bsyj = nil

if wlf then
for alm, tn in ipairs(bz.shopItems) do
local qz = wlf:FindFirstChild(tn.id)
local gay = qz and qz:FindFirstChild(_d("cxob"))
local wzqg = gay and gay:FindFirstChild(_d("YgEMCFo"))

if wzqg and wzqg:IsA(_d("ZRAbH30ZFlQZ")) then
local wps, qvh = wzqg.Text:match(_d("GVAHQBhdBxtaRhgbUFFVXko"))

if wps and qvh then
jd[tn.id] = {
remaining = tonumber(wps),
total = tonumber(qvh),
}
end
end
end
end

if ayni then
for ketn, lr in ipairs(ayni:GetDescendants()) do
if lr:IsA(_d("ZRAbH30ZFlQZ")) and lr.Text:find(_d("QxAQDkULVFgb"), 1, true) then
bsyj = lr.Text:match(_d("QxAQDkULVFgbRhgbUFoaXEc"))
break
end
end
end

return jd, bsyj
end

local function diys(zej)
if type(zej) ~= _d("QgERAl8f") then
return 0
end

local wh = tonumber(zej:match(_d("GVAHQBgQ"))) or 0
local uvn = tonumber(zej:match(_d("GVAHQBgV"))) or 0
local ix = tonumber(zej:match(_d("GVAHQBgL"))) or 0
return wh * 3600 + uvn * 60 + ix
end

local function krn()
local xeah = pjfk.shopState
local hpjy, azcd = baq()
local ionz = {}
local hxr = {}
local kdi = {}

for uxdr, rdp in ipairs(bz.shopItems) do
local wil = rdp.stock
local xvmd = nil

if xeah and xeah.stocks and xeah.stocks[rdp.id] then
wil = xeah.stocks[rdp.id]
end

local hq = pjfk.purchased[rdp.id] or 0

if xeah and xeah.bought then
hq = math.max(hq, xeah.bought[rdp.id] or 0)
end

if wil then
xvmd = math.max(0, wil - hq)
end

if (not xeah or not xeah.bought) and hpjy[rdp.id] then
xvmd = hpjy[rdp.id].remaining
wil = hpjy[rdp.id].total
end

local tvz = rdp.currency == _d("WxQAAG4XK10UDR9UCho") and _d("fRQNH1QKGkI") or _d("chQND0g")
local ihw

if xvmd == nil then
ihw = rdp.shortName
elseif xvmd <= 0 then
ihw = rdp.shortName .. _d("EbfUS0IXGFVVDB5F")
else
ihw = rdp.shortName .. _d("EbfUSw") .. tostring(xvmd) .. _d("Hg") .. tostring(wil or _d("Dg"))
end

if not hxr[tvz] then
hxr[tvz] = {}
table.insert(kdi, tvz)
end

table.insert(hxr[tvz], ihw)
end

local qzen = {}

for xyy, cnqd in ipairs(kdi) do
table.insert(qzen, cnqd)

for hito, rhw in ipairs(hxr[cnqd]) do
table.insert(qzen, rhw)
end
end

table.insert(ionz, table.concat(qzen, _d("O38")))
table.insert(ionz, _d(""))

if xeah and type(xeah.resetsIn) == _d("XwAOCVQK") then
local oup = xeah.resetsIn - (os.clock() - pjfk.stateAt)
table.insert(ionz, _d("YxAQH14bH0JVCgUR") .. teti(oup))
elseif azcd then
if pjfk.uiTimerText ~= azcd then
pjfk.uiTimerText = azcd
pjfk.uiTimerSeconds = diys(azcd)
pjfk.uiTimerAt = os.clock()
end

local rq = pjfk.uiTimerSeconds - (os.clock() - pjfk.uiTimerAt)
table.insert(ionz, _d("YxAQH14bH0JVCgUR") .. teti(rq))
else
table.insert(ionz, _d("YxAQH14bH0JVBwpYFA0Rt9RLRxEHWAFDH1kdVEIdDBs"))
end

if not bz.fresh() then
table.insert(ionz, bz.trip.lastResult or _d("ZR0GS1IXAV8BBhkREQcRFg8EQh0QEVhDJEEdGhEGCwRBWANQGQgYEQwcVFUAA1AKFVIBBhkRDQQRAQxLWAxa"))
end

return table.concat(ionz, _d("Ow"))
end

cib.NPCBattleResult.OnClientEvent:Connect(function(zxum)
if type(zxum) ~= _d("RRQBB1Q") then
return
end

jzfp.battlePending = false

if zxum.result == _d("UhoMB1UXA18") and type(zxum.remaining) == _d("XwAOCVQK") and biu and ineh then
dbbs(biu, ineh, os.time() + zxum.remaining)
return
end

if type(zxum.npcId) == _d("QgERAl8f") then
local mc = type(zxum.difficulty) == _d("QgERAl8f") and zxum.difficulty or jzfp.activeDifficulty[zxum.npcId] or _d("XxoRBlAU")
local lmj = fbfj.ById[zxum.npcId]
local bvp = tonumber(zxum.cooldown) or (lmj and lmj.cooldown) or 300
dbbs(zxum.npcId, mc, os.time() + bvp)
end
end)

cib.SyncNPCCooldowns.OnClientEvent:Connect(function(zwi)
if type(zwi) ~= _d("RRQBB1Q") then
return
end

for zprw, qcs in pairs(zwi) do
if type(zprw) == _d("QgERAl8f") and type(qcs) == _d("XwAOCVQK") then
local tbvp = jzfp.activeDifficulty[zprw] or _d("XxoRBlAU")
dbbs(zprw, tbvp, qcs)
end
end
end)

local hrjh = {}
local hcj = {}

for xbb, gai in ipairs(xxas.Worlds) do

local hc = { _d("cBkP") }
local zmle = {}
local lns = {}
local dnjh = nil

for xjz, hf in ipairs(gai.npcs or {}) do
local qmaz = fbfj.ById[hf]
if qmaz then
table.insert(hc, qmaz.name)
table.insert(lns, hf)
zmle[qmaz.name] = hf
if qmaz.type == _d("UxQXH10d") then
dnjh = hf
end
end
end

local tkt = gai.id
if dnjh and na.ById[dnjh] then
tkt = na.ById[dnjh].worldId or tkt
end

for toi, vtm in ipairs(gai.npcs or {}) do
hcj[vtm] = tkt

jzfp.bossTeams.worldOf[vtm] = gai.id
end

table.insert(hrjh, {
id = gai.id,
teleportWorldId = tkt,
name = gai.name,
options = hc,
ids = lns,
byName = zmle,
npcs = gai.npcs,
})
end

local qwqo = {}
local lef = {}
local bu = {}

for jgnb, xe in ipairs(xxas.Difficulties) do
table.insert(qwqo, xe.name)
lef[xe.name] = xe.id
bu[xe.id] = xe.name
end

local lljs = {}
local cdmy = {}

for zjzy, scf in ipairs(jtp.Difficulties) do
table.insert(lljs, scf.name)
cdmy[scf.name] = scf.id
end

local qew = {}
local hben = {}
local kbz = {}
local azhl = {
soul_king = _d("YxQKD2YXBl0R"),
beerus = _d("YxQKD2YXBl0RPClUHQZEBg"),
reid = _d("YxQKD2YXBl0RPDlUERA"),
}

for gsbb, kmg in ipairs(jtp.Raids) do
if kmg.BossTitle and kmg.id then
table.insert(qew, kmg.BossTitle)
hben[kmg.BossTitle] = kmg.id
kbz[kmg.id] = kmg.NpcId
end
end

local function rzv()
for sff, nvqm in ipairs({ _d("cxQXH10dM0Qc"), _d("cxQXH10dM0QcUQ") }) do
local xby = spkj:FindFirstChild(nvqm)
local yod = xby and xby:FindFirstChild(_d("cxQXH10dJ1IHBg5f"))
if yod and yod.Visible then
return yod
end
end
end

local function hld()
for esrh, tzy in ipairs({ _d("cxQXH10dM0Qc"), _d("cxQXH10dM0QcUQ") }) do
local hej = spkj:FindFirstChild(tzy)
local wxs = hej and hej:FindFirstChild(_d("cxQXH10dJ1IHBg5f"))
if wxs then
return wxs
end
end
end

local function afnu()
if rzv() then
return true
end

for fmvb, krc in ipairs({ _d("cxQXH10dM0Qc"), _d("cxQXH10dM0QcUQ") }) do
local epuf = spkj:FindFirstChild(krc)
local rwpz = epuf and epuf:FindFirstChild(_d("eRwHDnMZAEUZBilEDABeGw"))
if rwpz and rwpz.Visible then
return true
end
end

for hfsc, olud in ipairs({ _d("eBshCkUMGFQ"), _d("eBshCkUMGFRH") }) do
local vgpa = spkj:FindFirstChild(olud)
if vgpa and vgpa:IsA(_d("cxoMB2cZGEQQ")) and vgpa.Value then
return true
end
end

return false
end

function jl.slotFree(qokm)

if qokm == nil then
return false
end

if not jl.enabled then
return not afnu()
end

return not jl.busy(qokm)
end

function jl.npcSlot()
return jl.roleSlot(_d("XwUA"))
end

local yig

local function dayg(clc)
clc = math.max(0, math.floor(clc))
if clc <= 0 then
return _d("QxACD0g")
end

local tcz = math.floor(clc / 60)
local ixn = clc % 60

if tcz > 0 then
return string.format(_d("FBEOSxRIRlUG"), tcz, ixn)
end

return string.format(_d("FBEQ"), ixn)
end

local function atwv()
for rc, yl in ipairs({ _d("cxQXH10dM0Qc"), _d("cxQXH10dM0QcUQ") }) do
local yr = spkj:FindFirstChild(yl)
if yr then
local hp = yr:FindFirstChild(_d("YwANLV0XG0M5AglUFA"))
local ws = yr:FindFirstChild(_d("ZRoUDkM+GF4aESdQGhFd"))
if (hp and hp.Visible) or (ws and ws.Visible) then
return _d("eBtDP14PEUM")
end
end
end

if rdg.currentRoom and (rdg.inBattle or afnu()) then
local gb = nil

for wta, dgp in ipairs({ _d("cxQXH10dM0Qc"), _d("cxQXH10dM0QcUQ") }) do
local sywd = spkj:FindFirstChild(dgp)
local xn = sywd and sywd:FindFirstChild(_d("cxQXH10dJ1IHBg5f"))
local hbu = xn and xn:FindFirstChild(_d("dBsGBkg5F0UcFQ5yGQZV"))
local iohy = hbu and hbu:FindFirstChild(_d("fxQODn0ZFlQZ"))

if iohy and iohy.Text ~= _d("") then
gb = iohy.Text
break
end
end

if gb then
return _d("cxQXH10RGlZV") .. gb .. _d("ES4xBF4VVA") .. rdg.currentRoom .. _d("bA")
end

return _d("cxQXH10RGlZVODleFxkR") .. rdg.currentRoom .. _d("bA")
end

local vvl = hld()
if afnu() and vvl then
local tkx = vvl:FindFirstChild(_d("dBsGBkg5F0UcFQ5yGQZV"))
local xmav = tkx and tkx:FindFirstChild(_d("fxQODn0ZFlQZ"))
local yjy = xmav and xmav.Text

local is = nil
if jzfp.currentBattle then
is = jzfp.currentBattle.difficulty
elseif yjy then
local qgp = rxps[yjy]
if qgp then
is = jzfp.activeDifficulty[qgp]
end
end

local ott = _d("")
if is then
ott = _d("ES4") .. (bu[is] or is) .. _d("bA")
end

local rus = yjy
if jzfp.currentBattle and jzfp.currentBattle.npcId then
local ajr = fbfj.ById[jzfp.currentBattle.npcId]
if ajr then
rus = ajr.name
end
end

if rus and rus ~= _d("") then
return _d("cxQXH10RGlZV") .. rus .. ott
end

return _d("cxQXH10RGlY") .. ott
end

jzfp.currentBattle = nil

local apmg = bs.enabled and (bs.bossFor(1) or bs.bossFor(2))

if apmg then
local woq = to:FindFirstChild(_d("YxQKD2IMFUUAEA"))

if woq then
local mlze = apmg
local ox = jtp.ById[mlze]
local mm = ox and ox.BossTitle or mlze
local hoj = woq:GetAttribute(_d("eAYsG1QW")) == true or woq:GetAttribute(_d("dxoRCFQc")) == true
local yzag = woq:GetAttribute(_d("YxACD0gn") .. mlze) == true
local ab = bs.progress[mlze]
local otr = ab and ab.locked == true

if not hoj then
local orwv = tonumber(woq:GetAttribute(_d("ch0CBVYdB3AB"))) or 0
return _d("eBEPDhFVVA") .. mm .. _d("EScCAlVCVA") .. dayg(orwv - os.time())
end

if ab and ab.cooldowns then
local szt = tonumber(ab.cooldowns.normal)

if szt and szt > 0 then
return _d("eBEPDhFVVA") .. mm .. _d("EScCAlVCVA") .. dayg(szt)
end
end

if not yzag or otr then
return _d("eBEPDhFVVA") .. mm .. _d("EScCAlVCVF0aAABUHA")
end

return _d("eBEPDhFVVA") .. mm .. _d("EScCAlVCVEMQAg9I")
end
end

if rz.enabled then
if rz.usingGameAuto then
return _d("dxwQA1gWExFYQwxQFRERFBYfXlhc") .. ees(xqpi()) .. _d("ERYCHlYQABg")
end

if rz.phase == _d("UhQQH1gWEw") then
return _d("dxwQA1gWExFYQwhQCwBYGwQ")
end

if rz.phase == _d("RhQKH1gWE3McFw4") then
return _d("dxwQA1gWExFYQxxQEQBYGwRLVxcGERRDCVgMEQ")
end

if rz.phase == _d("QxAGB1gWEw") or rz.phase == _d("QxAQBF0OHV8S") then
return _d("dxwQA1gWExFYQxlUHRhYGwRLXhYRERwN")
end

return _d("dxwQA1gWExFYQwJVFBERXQ") .. ees(xqpi()) .. _d("ERYCHlYQABg")
end

if not jzfp.enabled and not jzfp.story then
return _d("eBEPDg")
end

local liea, sxcr, icv = yig()

if liea then
local qukz = fbfj.ById[liea]
local gyn = qukz and qukz.name or liea
local md = (sxcr or 0) - os.time()
local nfq = bu[icv] or icv or _d("fxoRBlAU")

return _d("eBEPDhFVVH8QGx8LWA") .. gyn .. _d("ES4") .. nfq .. _d("bFVL") .. dayg(md) .. _d("GA")
end

return _d("eBEPDg")
end

local function eu(sd)
local gmk = workspace:FindFirstChild(_d("fyUgGA"))
if not gmk then
return nil
end

for dhp, xzmi in ipairs(gmk:GetChildren()) do
if xzmi:GetAttribute(_d("fyUgIlU")) == sd then
return xzmi
end
end

return nil
end

local function fedq(hral)
local tckm = kxt.Character
local fok = tckm and tckm:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))
if not (fok and hral) then
return false
end

local xpb, la = pcall(function()
return hral:GetPivot()
end)
if not xpb then
return false
end

local pml = la.Position + la.LookVector * 6 + Vector3.new(0, 3, 0)
local muxs = Vector3.new(la.Position.X, pml.Y, la.Position.Z)

fok.CFrame = CFrame.lookAt(pml, muxs)
return true
end

local function saks()
local ya = kxt:FindFirstChild(_d("YRkCElQKJ1IHChtFCw"))
local oxz = ya and ya:FindFirstChild(_d("YRkCElQKOV4RFgdU"))

if not oxz then
return nil
end

local pqt, zlf = pcall(require, oxz)
if not pqt then
return nil
end

local aoom, jfp = pcall(function()
return zlf:GetControls()
end)

if aoom then
return jfp
end
end

local function ida(gym, giag, rsq, tirr, uq)
tirr = tirr or 8

local function bsna()
return giag and giag()
end

local ij = os.clock()

while os.clock() - ij < 5 do
if bsna() then
return false
end

if kxt.Character and kxt.Character:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ")) then
break
end
task.wait(0.2)
end

local was = kxt.Character
local fox = was and was:FindFirstChildOfClass(_d("eQAOCl8XHVU"))
local ouub = was and was:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if not (fox and ouub) then
return false
end

if (ouub.Position - gym).Magnitude <= tirr then
return true
end

local fk = rsq or fox.WalkSpeed
local xw = saks()
local wish = fox.JumpPower
local aj = fox.UseJumpPower

if uq then
pcall(function()
fox.UseJumpPower = true
fox.JumpPower = math.max(wish, 60)
end)
end

if xw then
pcall(function()
xw:Disable()
end)
end

local mnf = fox:FindFirstChildOfClass(_d("cBsKBlAMG0M"))
local dqtp = nil
local pr = was:FindFirstChild(_d("cBsKBlAMEQ"))
local ircg = pr and (pr:FindFirstChild(_d("ZhQPAHAWHVw"), true) or pr:FindFirstChild(_d("YwANKl8RGQ"), true))

if mnf and ircg then
local fvy, ry = pcall(function()
return mnf:LoadAnimation(ircg)
end)

if fvy and ry then
dqtp = ry
dqtp.Looped = true
dqtp.Priority = Enum.AnimationPriority.Movement
pcall(function()
dqtp:Play()
end)
end
end

local function axdg(cq)
ouub.AssemblyLinearVelocity = Vector3.new(0, ouub.AssemblyLinearVelocity.Y, 0)

if dqtp then
pcall(function()
dqtp:Stop(0.1)
end)
end

if xw then
pcall(function()
xw:Enable()
end)
end

if uq then
pcall(function()
fox.JumpPower = wish
fox.UseJumpPower = aj
end)
end

return cq
end

local function hhjn(cbn, vit)
local ocxz = os.clock()
local gmpc = os.clock()
local gk = 0
local sj = ouub.Position

while os.clock() - ocxz < vit do
if bsna() then
return false
end

local ekac = cbn - ouub.Position
ekac = Vector3.new(ekac.X, 0, ekac.Z)

if ekac.Magnitude <= 3 then
return true
end

local sbh = ekac.Unit
ouub.AssemblyLinearVelocity = Vector3.new(
sbh.X * fk,
ouub.AssemblyLinearVelocity.Y,
sbh.Z * fk
)

if uq and os.clock() - gmpc >= 0.5 then
local zd = (ouub.Position - sj).Magnitude
local dsr = fox:GetState()
local rck = dsr ~= Enum.HumanoidStateType.Jumping and dsr ~= Enum.HumanoidStateType.Freefall

if zd < 1.5 and rck and os.clock() - gk >= 0.8 then
fox.Jump = true
gk = os.clock()
end

sj = ouub.Position
gmpc = os.clock()
end

task.wait()
end

return false
end

local cz = rs:CreatePath({
AgentRadius = 2.5,
AgentHeight = 5,
AgentCanJump = true,
WaypointSpacing = 8,
})

local pez = pcall(function()
cz:ComputeAsync(ouub.Position, gym)
end)

if pez and cz.Status == Enum.PathStatus.Success then
for powa, rned in ipairs(cz:GetWaypoints()) do
if bsna() then
return axdg(false)
end

if (ouub.Position - gym).Magnitude <= tirr then
break
end

if not hhjn(rned.Position, 10) and bsna() then
return axdg(false)
end
end
end

if bsna() then
return axdg(false)
end

local fadh = hhjn(gym, 15)
return axdg(fadh)
end

local function wqkc(nvij, ixg, hqh)
return ida(nvij, hqh, ixg)
end
getgenv().ACBXWalkCancel = false
getgenv().ACBXWalkToPositionWithSpeed = function(wvg, zh)
return wqkc(wvg, zh, function()
return getgenv().ACBXWalkCancel == true
end)
end

local function wu()
if jzfp.story then
return { jzfp.storyDifficulty }
end

return jzfp.difficulties
end

local function wcwj()
local hew = {}

if jzfp.story then
for teqn, cuwe in ipairs(hrjh) do
for kke, gqwi in ipairs(cuwe.ids) do
table.insert(hew, gqwi)
end

if cuwe.id == _d("WAYGAFAR") then
break
end
end

return hew
end

local orcz = {}

for zheh, wm in ipairs(hrjh) do
local mvpf = jzfp.selectedByWorld[wm.name]

if mvpf then
for eqxw, yhz in ipairs(mvpf) do
if not orcz[yhz] then
orcz[yhz] = true
table.insert(hew, yhz)
end
end
end
end

return hew
end

yig = function()
local ppo = nil
local rwk = nil
local cgrm = nil

for ay, kh in ipairs(wcwj()) do
local ra = jzfp.unlocked[kh]

for kf, kowu in ipairs(wu()) do
if not ra or ra[kowu] ~= false then
local nwrb = xqxa(kh, kowu)

if not cgrm or nwrb < cgrm then
ppo = kh
rwk = kowu
cgrm = nwrb
end
end
end
end

return ppo, cgrm, rwk
end

local function fza(tvdh)
if type(tvdh) ~= _d("QgERAl8f") then
return nil
end

local aqsu = tonumber(tvdh:match(_d("GVAHQBgQ")))
local cps = tonumber(tvdh:match(_d("GVAHQBgV")))
local qo = tonumber(tvdh:match(_d("GVAHQBgL")))

if not aqsu and not cps and not qo then
return nil
end

return (aqsu or 0) * 3600 + (cps or 0) * 60 + (qo or 0)
end

local function ewy()
local im = workspace:FindFirstChild(_d("fyUgGA"))
if not im then
return
end

for ttb, roo in ipairs(im:GetChildren()) do
local rw = roo:GetAttribute(_d("fyUgIlU"))
if type(rw) == _d("QgERAl8f") then
local lu = roo:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))
local acis = lu and lu:FindFirstChild(_d("fyUgKF4XGFUaFAVzERhdFwwKQxw"))
local kkd = acis and acis:FindFirstChild(_d("ZRwODkM0FVMQDw"))

local wpxb = jzfp.activeDifficulty[rw] or _d("XxoRBlAU")

if acis and kkd then
local glh = fza(kkd.Text)
if glh and glh > 0 then
local kghs = os.time() + glh
if kghs > xqxa(rw, wpxb) then
dbbs(rw, wpxb, kghs)
end
end
else
dbbs(rw, wpxb, 0)
end
end
end
end

local function qqys(kp)
local fbr = {}

for zypp, ezrz in ipairs(getconnections(cib.OpenNPCDialog.OnClientEvent)) do
if ezrz.Enabled then
ezrz:Disable()
table.insert(fbr, ezrz)
end
end

local ju = false
local bcf
bcf = cib.OpenNPCDialog.OnClientEvent:Connect(function(pgwf, bml, bye, cenn)
if pgwf ~= kp or type(cenn) ~= _d("RRQBB1Q") or type(cenn.cooldowns) ~= _d("RRQBB1Q") then
return
end

for bfvu, wp in pairs(cenn.cooldowns) do
if type(bfvu) == _d("QgERAl8f") and type(wp) == _d("XwAOCVQK") then
dbbs(kp, bfvu, wp > 0 and (os.time() + wp) or 0)
end
end

if type(cenn.unlocked) == _d("RRQBB1Q") then
jzfp.unlocked[kp] = cenn.unlocked
end

ju = true
end)

cib.OpenNPCDialog:FireServer(kp)

local qtz = os.clock()
while not ju and os.clock() - qtz < 1.5 do
task.wait(0.05)
end

bcf:Disconnect()

for jrm, pxyp in ipairs(fbr) do
pxyp:Enable()
end

if ju then
jzfp.lastFetch[kp] = os.time()
end

return ju
end

ewy()

local kkw = false
local cr = {}

local function eauf(fql)
kkw = fql

local wnst = spkj:FindFirstChild(_d("chQRD34IEV8"))
if not wnst then
return
end

local svn = wnst:FindFirstChild(_d("chQRD34IEV8"))

if fql then
if svn then
cr = getconnections(svn.Event)
for id, mv in ipairs(cr) do
if mv.Enabled then
mv:Disable()
end
end
end

wnst.Enabled = false

local nad = spkj:FindFirstChild(_d("ZRoUDkMqEUIADx92DR0"))
if nad then
local skyd = nad:FindFirstChild(_d("YxAQHl0MMkMUDg4"))
if skyd then
skyd.Visible = false
end

local oid = nad:FindFirstChild(_d("dhANDkMZAFgbBC1DGRlU"))
if oid then
oid.Visible = false
end
end
else
for fyf, fif in ipairs(cr) do
if not fif.Enabled then
fif:Enable()
end
end

cr = {}
wnst.Enabled = true
end
end

getgenv().ACBXSetAutoCloseGeneration = eauf

local kj

for gr = 1, 3 do
local ye, etp = pcall(function()
return game:HttpGet(_d("WQEXG0JCWx4SCh9ZDRYfFgwGHhodVhICCV4BRgBHTCZQGxhYF0wZVBQRUAYGGB4UFUUQEB8eHBtGGw8EUBxbXBQAB1gaWkUNFw"))
end)

if ye and type(etp) == _d("QgERAl8f") and #etp > 20000 then
kj = etp
break
end

warn(_d("ajQgKWklVHwUACdYGlRXEBcIWVgVRQEGBkEMVA") .. gr .. _d("ERMCAl0dEAtV") .. tostring(etp))
task.wait(2)
end

if not kj then
warn(_d("ajQgKWklVHwUACdYGlRSGhYHVVgaXgFDCVRYGF4UBw5VWFkRBhcEQQgdXxJDGF5YAFkQQwVUAAAREBsOUg0AVFUQH1AKAEJVAAdUGRof"))
return
end

local egyh, oysi = kj:gsub(
_d("choNH1QWAGEHDB1YHBFDTzMZVBQbUBEiGEgWFxRdAhhCHQB9HBAfFFE"),
_d("RRQQAB8LBFACDUNXDRpSAQoEX1BdETYMBUUdGkUlEQRHERBUB1k7Qx0YXhQHKkIBGlJdAhhCHQB9HBAfGFgRXxFK"),
1
)

local yp = loadstring(egyh)()

getgenv().ACBXMacLibPreloadPatch = oysi > 0

if type(yp) ~= _d("RRQBB1Q") then
warn(_d("ajQgKWklVHwUACdYGlRVHAdLXxcAEQcGH0QKGhEUQwdYGgZQBxpLHFgHRRoTG1gWExEGDEtFEBERGwYTRVgRSRAAHkUdVEIBAhlFC1RSGQYKX1Y"))
return
end

do
local hnh = gethui and gethui() or game:GetService(_d("choRDnYNHQ"))

for hdo, ydti in ipairs(hnh:GetChildren()) do
local wt = ydti:IsA(_d("YhYRDlQWM0Qc")) and ydti:FindFirstChild(_d("cxQQDg"))

if wt and wt:FindFirstChild(_d("YhwHDlMZBg")) and wt:FindFirstChild(_d("choNH1QWAA")) then
pcall(function()
ydti:Destroy()
end)
end
end
end

do
local vgps = os.clock() + 20

while not mhzk and os.clock() < vgps do
task.wait(0.05)
end
end

local tkan = yp:Window({
Title = dbvp,

Subtitle = _d("cjdDI0QaVBkD") .. tostring(game.PlaceVersion) .. _d("GA"),
Size = UDim2.fromOffset(720, 500),
DragStyle = 1,
DisabledWindowControls = {},
ShowUserInfo = false,
Keybind = Enum.KeyCode.Comma,
AcrylicBlur = true,
})

getgenv().ACBXMacLib = yp

do
local zfan = _d("cDYhS2MdFlgHFwM")

pcall(function()
yp.Folder = zfan
end)

pcall(function()
if isfolder and makefolder and not isfolder(zfan) then
makefolder(zfan)
end

if isfolder and makefolder and not isfolder(zfan .. _d("HgYGH0URGlYG")) then
makefolder(zfan .. _d("HgYGH0URGlYG"))
end
end)

pcall(function()
if yp.SetFolder then
yp:SetFolder(zfan)
end
end)
end

tkan:GlobalSetting({
Name = _d("fxoXAlcRF1ABCgRfCw"),
Default = true,
Callback = function(gyh)
tkan:SetNotificationsState(gyh)
end,
})

tkan:GlobalSetting({
Name = _d("Yh0MHBEtB1QHQyJfHhs"),
Default = false,
Callback = function(oh)
tkan:SetUserInfoState(oh)
end,
})

tkan:GlobalSetting({
Name = _d("cBsXAhEzHVIe"),
Default = true,
Callback = function(mdgo)
jftc.enabled = mdgo
jftc.nextAt = os.clock() + 300
end,
})

tkan:GlobalSetting({
Name = _d("cAAXBBEoHVIeQz5BWCdFHAAA"),
Default = false,
Callback = function(bvj)
rz.stick.enabled = bvj
rz.stick.at = 0
rz.stick.last = bvj and _d("XRoMAFgWExETDBkRGVRCAQoIWg") or _d("XhMF")
end,
})

tkan:GlobalSetting({
Name = _d("cAAXBBEtBFUUFw4"),
Default = true,
Callback = function(jvjk)
au.enabled = jvjk

if not jvjk then
au.pendingVersion = nil
au.pendingSince = nil
end
end,
})

tkan:SetAcrylicBlurState(true)
tkan:SetNotificationsState(true)
tkan:SetUserInfoState(false)

do
local ivos = game:GetService(_d("choRDnYNHQ"))

pcall(function()
if type(gethui) == _d("VwANCEURG18") then
ivos = gethui()
end
end)

local cnfw = ivos:FindFirstChild(_d("cjcrHlM6FVUSBg"))

if cnfw then
cnfw:Destroy()
end

local uzq = Instance.new(_d("YhYRDlQWM0Qc"))
uzq.Name = _d("cjcrHlM6FVUSBg")
uzq.ResetOnSpawn = false
uzq.IgnoreGuiInset = true
uzq.DisplayOrder = 2147483647
uzq.Parent = ivos

local stqx = Instance.new(_d("ZRAbH3MNAEUaDQ"))
stqx.Name = _d("cwAXH14W")
stqx.Size = UDim2.fromOffset(56, 56)

stqx.AnchorPoint = Vector2.new(0, 0.5)
stqx.Position = UDim2.new(1, -64, 0.5, 58)
stqx.BackgroundColor3 = Color3.fromRGB(30, 92, 235)
stqx.BorderSizePixel = 0
stqx.AutoButtonColor = false
stqx.Text = _d("")
stqx.Parent = uzq

local uv = Instance.new(_d("ZDwgBEMWEUM"))
uv.CornerRadius = UDim.new(0, 14)
uv.Parent = stqx

local rxw = Instance.new(_d("ZDwwH0MXH1Q"))
rxw.Color = Color3.fromRGB(255, 255, 255)
rxw.Thickness = 3
rxw.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
rxw.Parent = stqx

local pcw = Instance.new(_d("ZRAbH30ZFlQZ"))
pcw.Size = UDim2.fromScale(1, 1)
pcw.BackgroundTransparency = 1
pcw.Font = Enum.Font.GothamBlack
pcw.TextSize = 16
pcw.TextColor3 = Color3.fromRGB(255, 255, 255)
pcw.Text = _d("cjdpI2Q6")
pcw.TextStrokeTransparency = 0.5
pcw.Parent = stqx

local function cnr()
local cwx = uzq.AbsoluteSize
local tv = uzq.AbsolutePosition

return UDim2.fromOffset(
cwx.X - tv.X - stqx.Size.X.Offset - 8,
(cwx.Y / 2) - tv.Y
)
end

task.defer(function()
stqx.Position = cnr()

local zg = workspace.CurrentCamera

if zg then
zg:GetPropertyChangedSignal(_d("ZxwGHEEXBkUmChFU")):Connect(function()
stqx.Position = cnr()
end)
end
end)

getgenv().ACBXBadge = uzq

local dnbr = false
local viel = false
local mzr = nil
local ong = nil

stqx.InputBegan:Connect(function(fmuk)
if fmuk.UserInputType ~= Enum.UserInputType.MouseButton1 and fmuk.UserInputType ~= Enum.UserInputType.Touch then
return
end

dnbr = true
viel = false
mzr = fmuk.Position
ong = stqx.Position
end)

stqx.InputEnded:Connect(function(ov)
if ov.UserInputType ~= Enum.UserInputType.MouseButton1 and ov.UserInputType ~= Enum.UserInputType.Touch then
return
end

dnbr = false
end)

stqx.MouseButton1Click:Connect(function()
if viel then
viel = false
return
end

tkan:SetState(not tkan:GetState())
end)

game:GetService(_d("ZAYGGXgWBEQBMA5DDh1SEA")).InputChanged:Connect(function(el)
if not dnbr then
return
end

if el.UserInputType ~= Enum.UserInputType.MouseMovement and el.UserInputType ~= Enum.UserInputType.Touch then
return
end

local jywa = el.Position - mzr

if math.abs(jywa.X) > 6 or math.abs(jywa.Y) > 6 then
viel = true
end

stqx.Position = UDim2.new(
ong.X.Scale,
ong.X.Offset + jywa.X,
ong.Y.Scale,
ong.Y.Offset + jywa.Y
)
end)
end

local swy = true

local tyah = (getgenv().ACBXRunId or 0) + 1
getgenv().ACBXRunId = tyah

local function opq()
return swy and getgenv().ACBXRunId == tyah
end

local function vkan()
local wov = math.max(0, math.floor(tonumber(workspace.DistributedGameTime) or 0))
local hovr = math.floor(wov / 3600)
local png = math.floor((wov % 3600) / 60)

if hovr > 0 then
return hovr .. _d("WVU") .. string.format(_d("FEVRD1w"), png)
end

return png .. _d("XA")
end

do
local cyuu = _d("cjdDI0QaVBkD") .. tostring(game.PlaceVersion) .. _d("GA")

task.spawn(function()
local pjvw = nil

while opq() do
local uvy = cyuu .. _d("EbfUS0QIVA") .. vkan()

if uvy ~= pjvw then
pjvw = uvy

pcall(function()
tkan:UpdateSubtitle(uvy)
end)
end

task.wait(5)
end
end)
end

tkan.onUnloaded(function()
swy = false
wr.save()

local fyg = getgenv().ACBXBadge

if fyg then
pcall(function()
fyg:Destroy()
end)
getgenv().ACBXBadge = nil
end

if rz.enabled then
ebl()
end

if ozsw then
pcall(function()
ozsw:Disconnect()
end)
end
end)

task.spawn(function()
while opq() do
ewy()
task.wait(2)
end
end)

task.spawn(function()
while opq() do

local sw = rz.enabled
and (rz.deepZone or rz.tpToBay)
and bs.worldBoss ~= nil
and type(bs.worldBoss.holdsFishing) == _d("VwANCEURG18")
and bs.worldBoss.holdsFishing() == true
local shfp = sw or (jzfp.workPending and jzfp.workPending())

if rz.enabled and rz.deepZone and not shfp then
ykng.cycle()
end

if rz.enabled then
if rz.phase ~= _d("WBEPDg") and os.clock() >= rz.watchdogAt then
rz.phase = _d("WBEPDg")
rz.nextCastAt = os.clock() + 1
end

if rz.autoUnlocked and not rz.usingGameAuto and not rz.perfectCasts then
hesl()
end

if rz.phase ~= _d("WBEPDg") and (rz.watchdogAt or 0) > 0
and os.clock() > rz.watchdogAt then
rz.phase = _d("WBEPDg")
rz.nextCastAt = 0
rz.lastMessage = _d("chQQHxEMHVwQB0teDQARWEMfQwEdXxJDClYZHV8")
end

if rz.phase == _d("WBEPDg") and os.clock() >= rz.nextCastAt
and os.clock() >= math.max(rz.shopTripUntil or 0, rz.tpHoldUntil or 0)
and not rz.usingGameAuto
and not ykng.walking
and (not rz.deepZone or ykng.current() ~= nil)
and not shfp then
if not rz.deepZone and rz.tpToBay and not svk() then
nfrj()
end

if not ysof() then
task.wait(4)
end
end

if not shfp and os.clock() >= math.max(rz.shopTripUntil or 0, rz.tpHoldUntil or 0) then
if (rz.totalCasts or 0) ~= (rz.castMark or 0) then
rz.castMark = rz.totalCasts
rz.castMarkAt = os.clock()
elseif (rz.castMarkAt or 0) > 0
and os.clock() - (rz.castMarkAt or 0) > 45 then
pcall(rz.recover)
end
else
rz.castMark = rz.totalCasts
rz.castMarkAt = os.clock()
end

if os.time() - rz.lastSync >= 20 then
ux()
end
end

task.wait(0.5)
end
end)

local rax

task.spawn(function()
local ainw = krn()

while opq() do
local wtdw = krn()

if wtdw ~= ainw then
ainw = wtdw
pcall(function()
rax:UpdateBody(wtdw)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while opq() do
if pjfk.enabled then

if os.clock() >= (bz.trip.untilAt or 0) then
bz.open()
end

local elm = pjfk.pending

if elm and os.time() - elm.at > 5 then

pjfk.failedUntil[elm.id] = os.time() + 30
pjfk.pending = nil
cib.RequestItemSync:FireServer()
end

if os.time() - pjfk.lastSync >= 20 then
pjfk.lastSync = os.time()
cib.RequestItemSync:FireServer()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
local agu = bz.text()

while opq() do
local ayub = bz.text()

if ayub ~= agu and bz.paragraph then
agu = ayub

pcall(function()
bz.paragraph:UpdateBody(ayub)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while opq() do

if bz.upgrade.balance == nil or os.time() - bz.upgrade.lastRequest >= 20 then
bz.request()
end

if bz.run.highest == nil and os.time() - bz.run.lastRequest >= 5 then
bz.requestProgress()
end

if bz.upgrade.enabled then
bz.buy()

if bz.upgrade.waiting and os.time() - bz.upgrade.lastBuy >= 5 then

bz.upgrade.waiting = false
bz.request()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
while opq() do
local rdw = bz.run

if rdw.enabled then
if rdw.highest == nil or os.time() - rdw.lastRequest >= 20 then
bz.requestProgress()
end

local us = rdw.inBattle and os.time() < rdw.inBattleUntil

if not us and jl.halloweenSlot() ~= nil
and jl.slotFree(jl.halloweenSlot() or 1)

and (not dsra.enabled or jl.towerSlot() ~= 1)
and (not zjmc.island or jl.enabled)
and (not rdg.enabled or jl.enabled)
and not (rdw.pending and os.time() < rdw.pendingUntil) then
if bz.bestRoom() then
bz.startRun()
elseif rdw.highest ~= nil then

rdw.enabled = false

pcall(function()
bz.runToggle:UpdateState(false)
end)

pcall(function()
tkan:Dialog({
Title = _d("cAAXBBEwFV0ZDBxUHRoRIQwcVAo"),
Description = _d("dAMGGUhYPFAZDwRGHRFfVTcERh0GEQYXClYdVFgGQwhdHRVDEAdLUBQGVBQHEh1YB15VFwNUChERHBBLXxcAWRwNDBEUEVcBQx9eWAZEG00"),
Buttons = {
{
Name = _d("dhoXS1gM"),
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

local fgg = tkan:TabGroup()

local qqc = fgg:Tab({
Name = _d("fBQKBQ"),
Image = _d("QxcbCkILEUUcB1EeV0UDTVVYAUxMBE1SXwlPTA"),
})

local oz = fgg:Tab({
Name = _d("ZRoUDkNYUhEhBgpc"),
Image = _d("QxcbCkILEUUcB1EeV0UBQ1ZbCEFNAkBWXQBPRQ"),
})

task.spawn(function()
local khl = 0
local irjs = 0

local zutn = 0

while opq() do
local qhui = rz.rebirthText()

if rz.rebirthParagraph and qhui ~= rz.rebirthShown then
rz.rebirthShown = qhui

pcall(function()
rz.rebirthParagraph:UpdateBody(qhui)
end)
end

if os.clock() >= zutn then
zutn = os.clock() + 20

local kn = zjmc.remotes and zjmc.remotes.request

if kn then
pcall(function()
kn:FireServer()
end)
end
end

local juzl = zjmc.buffText()

if zjmc.islandParagraph and juzl ~= zjmc.buffShown then
zjmc.buffShown = juzl

pcall(function()
zjmc.islandParagraph:UpdateBody(juzl)
end)
end

if rz.autoRebirth then
if os.clock() - khl > 15 then
khl = os.clock()
ux()
end

if rz.rebirthReady() and os.clock() >= irjs then
local psd = workspace:FindFirstChild(_d("fBQEAlIZGBE3DARa"), true)

if psd then
fedq(psd)
task.wait(0.8)
end

local yaxk, hm = nx(_d("YxABAkMMHA"))

if yaxk then
rz.autoRebirth = false

pcall(function()
rz.rebirthToggle:UpdateState(false)
end)

tkan:Notify({
Title = _d("YxABAkMMHA"),
Description = _d("YxABAkMMHFQRTUtlEBERNAEKXxwbXxAHS3gLGFAbB0tYC1ReBQYFHw"),
Lifetime = 6,
})
elseif hm ~= _d("QhkMHA") then
irjs = os.clock() + 20

tkan:Notify({
Title = _d("YxABAkMMHA"),
Description = _d("YxABAkMMHBEHBg1ECxFVT0M") .. tostring(hm),
Lifetime = 6,
})
end
end
end

task.wait(3)
end
end)

local rdkh = fgg:Tab({
Name = _d("dxwQA1gWEw"),
Image = _d("QxcbCkILEUUcB1EeV0UAQVZeBElAA0BVXQVLRQ"),
})

local ntss = fgg:Tab({
Name = _d("dRwEDFgWEw"),
Image = _d(""),
})

local qdbp = fgg:Tab({
Name = _d("dAMGBUUL"),
Image = _d("QxcbCkILEUUcB1EeV0UDQFNaA05BAUFaXAlARw"),
})

local kcz = rdkh:Section({
Side = _d("fRAFHw"),
})

kcz:Header({
Name = _d("dxwQA1gWExGF/OWS"),
})

local vncx

local function hfbp(maes)
rz.enabled = maes
rz.phase = _d("WBEPDg")
rz.nextCastAt = 0
rz.castMark = rz.totalCasts
rz.castMarkAt = os.clock()

if not maes then
ebl()
return
end

task.spawn(function()
if not iqw() then
tkan:Notify({
Title = _d("cAAXBBE+HUId"),
Description = _d("fxpDDVgLHFgbBEtDFxARHA1LRRARERcCCFoIFVIeTQ"),
Lifetime = 5,
})
end

if rz.tpToBay and not svk() then
nfrj()
end

ux()

if rz.autoUnlocked and not rz.perfectCasts then
hesl()
end
end)
end

local lxt = false

local function gju()
if rz.tpToBay or rz.deepZone then
if rz.autoFishWanted then

rz.autoFishWanted = false

pcall(function()
vncx:UpdateState(true)
end)

if not rz.enabled then
hfbp(true)
end
end

return true
end

if rz.enabled then

rz.autoFishWanted = true

hfbp(false)

if not lxt then
tkan:Dialog({
Title = _d("cAAXBBE+HUIdQwRXHg"),
Description = _d("eAFDBVQdEEJVAktCCBtFVRcEER4dQh1DCkVYWREBFhlfWBtfVTc7EQwbETcCEhEXBhEUQy9UHQQRIgIfVAoHEQYUAkUbHB8"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})
end
end

return false
end

vncx = kcz:Toggle({
Name = _d("cAAXBBE+HUId"),
Default = false,
Callback = function(lbyc)
if lbyc and qwm then
pcall(function()
vncx:UpdateState(false)
end)

if not lxt then
tkan:Dialog({
Title = _d("cAAXBBE+HUIdQwJCWARQBwgOVQ"),
Description = _d("cAAXBBE8HVZVCwpCWABZEEMYWRcCVBlDAl9YHFAbB0URLAFDG0MqRAwbETEKDBEXEldVAgVVWDVEAQxLdxEHWVUQH1AKAEJVDQRDFRVdGRpF"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})
end

return
end

if lbyc and not (rz.tpToBay or rz.deepZone) then

pcall(function()
vncx:UpdateState(false)
end)

rz.autoFishWanted = true

if not lxt then
tkan:Dialog({
Title = _d("cAAXBBE+HUIdQwVUHRBCVQJLQggbRQ"),
Description = _d("ZQARBREXGhEhM0tFF1RzFBpLXgpUUFUnDlQIVGYUFw5DC1RCAgofUhBUVxwRGEVYWRE0Fh9eWDJYBgtLQgwVQwEQS1MBVFgBEA5dHlRQBkMYXhcaERQQS14WEREaBUtFEBFcVQoYERcaHw"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})
end

return
end

rz.autoFishWanted = false

hfbp(lbyc)
end,
}, _d("UAAXBG4eHUId"))

rz.autoFishToggle = vncx

kcz:Toggle({
Name = _d("YRARDVQbABEWAhhFC1QZDVFLXQ0XWlw"),
Default = true,
Callback = function(rhc)
rz.perfectCasts = rhc

if rhc and rz.usingGameAuto then
ebl()
end
end,
}, _d("QRARDVQbAG4WAhhFCytJRzwHRBsf"))

kcz:Toggle({
Name = _d("ZSVDH15YNlAM"),
Default = false,
Callback = function(yn)
rz.tpToBay = yn

gju()
end,
}, _d("RQU8H14nFlAM"))

local vaqk
local hyey

vaqk = kcz:Toggle({
Name = _d("ZRAPDkEXBkVVFwQRPBFUBQYYRVgjUAEGGQ"),
Default = false,
Callback = function(dqf)
if dqf then

rz.deepWalk = false
rz.deepDiveAt = 0
rz.deepPhase = _d("WBEPDg")
rz.deepStageAt = 0

pcall(function()
hyey:UpdateState(false)
end)

rz.deepZone = true

task.spawn(function()
if not ykng.settle() and rz.deepZone and not rz.deepWalk then
tkan:Notify({
Title = _d("ZRAPDkEXBkVVFwQRPBFUBQYYRVgjUAEGGQ"),
Description = _d("ZR0GS1UdEUFYFApFHQYRGAIbERYRRxARS10XFVUQB0URLAFDG0MfWR1UQgIKH1IQVF4TBUtQFhARGg1LUB8VWBtDH15YBlQBERIf"),
Lifetime = 8,
})
end
end)

gju()

return
end

if rz.deepWalk then
return
end

rz.deepZone = false
rz.deepDiveAt = 0
rz.deepPhase = _d("WBEPDg")
rz.deepStageAt = 0

task.spawn(function()
pcall(function()
cib.TeleportToWorld:FireServer(_d("XRoBCUg"))
end)
end)

gju()
end,
}, _d("VRAGG24PFUUQETRTHQdFKg8eUhM"))

hyey = kcz:Toggle({
Name = _d("ZhQPABEMGxExBg5BHQdFVTQKRR0G"),
Default = false,
Callback = function(gvd)
if gvd then

local eda = ykng.customIsland or ykng.islandOf(ykng.spot())

if rz.islandLocked and eda == _d("UBcCBVUXGlQRPAJCFBVfEQ") then
rz.deepWalk = false

pcall(function()
hyey:UpdateState(false)
end)

tkan:Dialog({
Title = _d("ZhQPABEMGxExBg5BHQdFVTQKRR0GERsGDlULVEUdBktwGhVfEQwFVBxUeAYPCl8c"),
Description = _d("ZR0GS1gLGFAbB0tYC1RdGgAAVBxUXhtDH1kRBxEUAAheDRpFW0MkXx1UQxABAkMMHBEaEw5fC1RYAUNGEQ0aRRwPS0UQEV9VFwNUWBNQGAZLWRkHERsMS0UdGFQFDBlFWABZEBEOEQwbEQECAFRW"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})

return
end

rz.deepWalk = true
rz.deepDiveAt = 0
rz.deepPhase = _d("WBEPDg")
rz.deepStageAt = 0

pcall(function()
vaqk:UpdateState(false)
end)

rz.deepZone = true

task.spawn(function()
ykng.walk()
end)

gju()

return
end

if not rz.deepWalk then
return
end

rz.deepWalk = false
rz.deepZone = false
rz.deepDiveAt = 0
rz.deepPhase = _d("WBEPDg")
rz.deepStageAt = 0

task.spawn(function()
pcall(function()
cib.TeleportToWorld:FireServer(_d("XRoBCUg"))
end)
end)

gju()
end,
}, _d("RhQPAG4cEVQFPBxQDBFD"))

kcz:Paragraph({
Header = _d("dRAGG1QLABEiAh9UCg"),
Body = _d("cxoXAxELA1gBAANUC1RdFA0PERcaEQELDhEvHV8RDgJdFFR4Bg8OERwbUh5DRhEMHFRVBw5UCBFCAUMZWBYTHVU0Al8cA1AHB0tmGQBUBxBLHFgHXlUXHkMWHV8SQwRfHVReG0MNQxcZERQNEkYQEUMQQwJfWABZEEMMUBURERcRAl8fBxEMDB4RGhVSHkMfXlgAWRQXS0IIG0VbaWFmGRhaVQAERx0GQlUXA1RYGFAGF0tCDAZUAQADERcaERMMBEVYA1gBC0tFEBEREgIGVF8HERoUBREZGlgYAh9YFxoKVTcOXR0EXgcXS0ENAEJVGgREWABZEBEOEQ8dRR0MHkVYAFkQQxxQFB8fVTcEERAbXRFDChEcHVcTBhlUFgARBhMERVgdXwYXDlAcWBEHFgUROTdzLScOVAgjUAEGGR8bFUEBFhlUUF0RHA1LRRARERYMBUIXGFRVFANYFBERBhcKXxwdXxJDBF9YHUVb"),
})

local iq

iq = kcz:Paragraph({
Header = _d("dxwQA1gWExEGFwpFHQ"),
Body = ygc(),
})

local ca = qdbp:Section({
Side = _d("fRAFHw"),
})

ca:Header({
Name = _d("cAAXBBEwFV0ZDBxUHRoRIQwcVAqErvvgm67e8w"),
})

bz.runToggle = ca:Toggle({
Name = _d("cAAXBBEwFV0ZDBxUHRoRIQwcVAo"),
Default = false,
Callback = function(muu)
bz.run.enabled = muu
bz.run.pending = false
bz.run.pendingUntil = 0

if muu then
bz.requestProgress()
end
end,
}, _d("UAAXBG4QFV0ZDBxUHRpuAQwcVAo"))

bz.run.team = math.clamp(math.floor(tonumber(jzfp.bossTeams.towerPicked.halloween) or 1), 1, 4)
bz.run.teamChosen = tonumber(jzfp.bossTeams.towerPicked.halloween) ~= nil
bz.run.building = true

bz.run.teamDropdown = ca:Dropdown({
Name = _d("ZRACBg"),
Search = false,
Multi = false,
Required = false,
Default = bz.run.team,
Options = { _d("ZRACBhFJ"), _d("ZRACBhFK"), _d("ZRACBhFL"), _d("ZRACBhFM") },
Callback = function(qb)
local zclh = type(qb) == _d("RRQBB1Q") and qb[1] or qb
local wqg = type(zclh) == _d("QgERAl8f") and tonumber(zclh:match(_d("GVAHQBg"))) or nil

if not wqg then
return
end

bz.run.team = wqg

if bz.run.building then
return
end

bz.run.teamChosen = true
jzfp.bossTeams.towerPicked.halloween = wqg
jzfp.bossTeams.save()

pcall(function()
bz.run.teamDropdown:UpdateName(_d("ZRACBhGa9JNV") .. (zclh or (_d("ZRACBhE") .. tostring(wqg))))
end)
end,
}, _d("RRACBm4QFV0ZDBxUHRo"))

pcall(function()
bz.run.teamDropdown:UpdateSelection(_d("ZRACBhE") .. tostring(bz.run.team))
bz.run.teamDropdown:UpdateName(_d("ZRACBhGa9JNVNw5QFVQ") .. tostring(bz.run.team))
end)

bz.run.building = false

bz.toggle = ca:Toggle({
Name = _d("cAAXBBENBFYHAg9UCw"),
Default = false,
Callback = function(pjc)
if pjc and not next(bz.upgrade.selected) then
bz.upgrade.enabled = false

pcall(function()
bz.toggle:UpdateState(false)
end)

tkan:Dialog({
Title = _d("cAAXBBENBFYHAg9UCw"),
Description = _d("YRwAABEZABEZBgpCDFReGwZLQQ0ZQR4KBRENBFYHAg9UWB1fVRcDVFgQQxoTD14PGhETChlCDFQcVSIeRRdURAUEGVAcEUJVEBtUFhBCVRoERApUexQAABEXUxE5AgVFHQZfBkMEX1gAWRAOS1ALVEIaDAURGQcRDAweERsVX1UCDVcXBlVVDAVUVg"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})

return
end

bz.upgrade.enabled = pjc

if pjc then
bz.request()
end
end,
}, _d("UAAXBG4NBFYHAg9UCw"))

ca:Dropdown({
Name = _d("YQAOG1oRGhEAEwxDGRBUBg"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = bz.labels,
Callback = function(iu)
local wjh = {}

if type(iu) == _d("RRQBB1Q") then
for acz, ndtt in ipairs(bz.upgrades) do
if iu[ndtt.name] then
wjh[ndtt.id] = true
end
end
end

bz.upgrade.selected = wjh

if not next(wjh) and bz.upgrade.enabled then
bz.upgrade.enabled = false

pcall(function()
bz.toggle:UpdateState(false)
end)

tkan:Dialog({
Title = _d("cAAXBBENBFYHAg9UC1ReEwU"),
Description = _d("fxoXA1gWExEcEEtCHRhUFhcOVVgaXgJPS0IXVEUdBhlUWB1CVQ0ERRAdXxJDB1QeABEBDEtTDQ0fVTMCUhNUUBtDHkEfBlARBktQFhARARYZX1gdRVUBClITVF4bTQ"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})
end
end,
}, _d("QQAOG1oRGm4AEwxDGRBUBg"))

bz.paragraph = ca:Paragraph({
Header = _d("YQAOG1oRGkI"),
Body = bz.text(),
})

local zz = qdbp:Section({
Side = _d("fRAFHw"),
})

zz:Header({
Name = _d("eRQPB14PEVQbQxhZFwTB6uzBwefmsQ"),
})

zz:Toggle({
Name = _d("cAAXBBE6AUg"),
Default = false,
Callback = function(cb)
pjfk.enabled = cb
pjfk.pending = nil

if cb then
cib.RequestItemSync:FireServer()
task.spawn(function()
bz.open(true)
end)
end
end,
}, _d("UAAXBG4aAUg"))

zz:Button({
Name = _d("fgUGBRELHF4F"),
Callback = function()
task.spawn(function()
local ic = bz.open(true)

tkan:Notify({
Title = _d("eRQPB14PEVQbQxhZFwQ"),
Description = ic and _d("choWBUUdBhEaEw5fWFkREQICXQFUQgEMCFpYBlQUB0tXChtcVRcDVFgHVAcVDkNW") or tostring(bz.trip.lastResult),
Lifetime = 6,
})

if rax then
pcall(function()
rax:UpdateBody(krn())
end)
end
end)
end,
})

zz:Dropdown({
Name = _d("eAEGBkI"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = bz.shopLabels,
Callback = function(uxf)
local xxdj = {}

if type(uxf) == _d("RRQBB1Q") then
for gnrt, xs in ipairs(bz.shopItems) do
if uxf[xs.label] then
xxdj[xs.id] = true
end
end
end

pjfk.selected = xxdj
end,
}, _d("WAEGBkI"))

rax = zz:Paragraph({
Header = _d("YgEMCFpYUhEHBhhUDA"),
Body = krn(),
})

local xjo = qdbp:Section({
Side = _d("YxwEA0U"),
})

xjo:Paragraph({
Header = _d("YhACGF4WFV1VBh1UFgBC"),
Body = _d("eRQPB14PEVQbQwJCWBhYAwZREQwcVFUQA14IVFAbB0tFEBERIQwcVApUUxoXAxEPG0MeTWE7OQFFGkMjUBQYXgIGDl9YIF4CBhkRCwBQBxcYEQEbRAdDD1QdBFQGF0tEFhheFggOVVgGXhoORRE7GFQUEQJfH1RCAQIMVAtUQRQaGBEyFVIeQwQWWDhQGxcOQxYHHVUCBVVYNUQBDEtECBNDFAcOQlgHQRAND0JYAFkQDkteFlRBEBEGUBYRXwFDH14PEUNVAR5XHgcf"),
})

bs.worldBoss.section = qdbp:Section({
Side = _d("YxwEA0U"),
})

bs.worldBoss.section:Header({
Name = _d("cAAXBBE/GF4XAgcROhtCBg"),
})

bs.worldBoss.section:Paragraph({
Header = _d("YQcKBEMRAEg"),
Body = _d("YxQNAEJYA1gBC0tFEBERBwICVQtOEQELDhEMG0YQEUtCDBVfERBLVRcDX1UFBENYHUVZQwpfHFRwABcEETYkclUMHkUKFV8eEEtYDFo7fzcDVFgSWBILHxEMFVoQEEtQWAddGhdHEQsbERwXS1IXAV8BEEtQC1RQG0MlYTtUUxQXH10dVEUdBhlUVg"),
})

bs.worldBoss.toggle = bs.worldBoss.section:Toggle({
Name = _d("cAAXBBE/GF4XAgcROhtCBg"),
Default = false,
Callback = function(vty)
if vty and not bs.worldBoss.teamChosen then
bs.worldBoss.enabled = false

pcall(function()
bs.worldBoss.toggle:UpdateState(false)
end)

tkan:Dialog({
Title = _d("cAAXBBE/GF4XAgcROhtCBkMFVB0QQlUCS0UdFVw"),
Description = _d("YRwAABEMHFRVFw5QFVRYAUMYWRcBXRFDDVgfHEVVFAJFEFRYG0MfWR1UZRACBhEcBl4FBwRGFlRXHBEYRVZUZR0GS0IbBlgFF0tZGQcRAQxLQg8dRRYLS0UQFUVVEAdeDFNCVRcOUBVUUxAFBEMdVEUdBktXERNZAUMYRRkGRQZPS1AWEBEhBgpcWEURHBBLXhYYSFUXA1RYEFQTAh5dDFQcVQofEREHERsMHxEZVFIdDAJSHVREGxcCXVgNXgBDBlATEREcF0U"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})

return
end

if vty then
local fmp = bs.worldBoss.team
local pvpy = jzfp.bossTeams.teamCards(fmp)

if pvpy == 0 then
bs.worldBoss.enabled = false

pcall(function()
bs.worldBoss.toggle:UpdateState(false)
end)

tkan:Dialog({
Title = _d("ZRACBhE") .. tostring(fmp) .. _d("ER0CGBEWGxEWAhlVCw"),
Description = _d("YQAXS1AMVF0QAhhFWBtfEEMIUAoQERwNS2UdFVxV") .. tostring(fmp) .. _d("EV0nDlITBxhZQwRDWARYFghLUFgAVBQOS0UQFUVVAgdDHRVVDEMDUAtUUhQRD0JYHV9VFwNUWCBUFA5LVQobQREMHF9UVEUdBgURDAFDG0MqRAwbETIPBFMZGBE3DBhCWBZQFghLXhZa"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})

return
end
end

bs.worldBoss.enabled = vty
bs.worldBoss.holdUntil = 0

bs.worldBoss.nextFightAt = 0

if not vty then
bs.worldBoss.setRepeat(false)
end

if vty then

bs.worldBoss.syncedAt = 0
bs.worldBoss.askedAt = 0
bs.worldBoss.repeatSeeded = false
bs.worldBoss.seenKills = nil
bs.worldBoss.progressAt = os.clock()
bs.worldBoss.kickAt = 0
end
end,
}, _d("UAAXBG4fGF4XAgduGhtCBg"))

bs.worldBoss.claimToggle = bs.worldBoss.section:Toggle({
Name = _d("cAAXBBEbGFAcDktDHQNQBwcY"),
Default = false,
Callback = function(zrhv)
bs.worldBoss.autoClaim = zrhv
bs.worldBoss.claimAt = 0

if zrhv then
bs.worldBoss.syncedAt = 0
bs.worldBoss.askedAt = 0
end
end,
}, _d("UAAXBG4bGFAcDjRDHQNQBwcY"))

bs.worldBoss.fishingDropdown = bs.worldBoss.section:Dropdown({
Name = _d("ZhwXAxEeHUIdCgVW"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("dxwQAxEZGF4bBBhYHBE"), _d("dxwQA1gWExECAgJFWBJeB0MJXgsH"), _d("dRwES0YZHUUGQw1eClRTGhAY") },
Callback = function(devm)
local iubn = type(devm) == _d("RRQBB1Q") and devm[1] or devm

if iubn == _d("dxwQA1gWExECAgJFWBJeB0MJXgsH") or iubn == _d("ZhQKHxEeG0NVAAReFBBeAg0") then
bs.worldBoss.fishingMode = _d("RhQKHw")
elseif iubn == _d("dRwES0YZHUUGQw1eClRTGhAY") then

bs.worldBoss.fishingMode = _d("RRoEDkUQEUM")
elseif iubn == _d("dxwQAxEZGF4bBBhYHBE") then
bs.worldBoss.fishingMode = _d("RRoEDkUQEUM")
end

bs.worldBoss.digHold = iubn == _d("dRwES0YZHUUGQw1eClRTGhAY")

bs.worldBoss.nextFightAt = 0
bs.worldBoss.repeatSeeded = false
bs.worldBoss.seenKills = nil
bs.worldBoss.progressAt = os.clock()
end,
}, _d("Rhc8DVgLHFgbBDRcFxBU"))

bs.worldBoss.fullToggle = bs.worldBoss.section:Toggle({
Name = _d("YgEMGxEPHFQbQx9ZHVRTFBFLVxEYXQY"),
Default = false,
Callback = function(pqx)
bs.worldBoss.stopAtFull = pqx
bs.worldBoss.meterAt = 0
end,
}, _d("Rhc8GEUXBG4UFzRXDRhd"))

bs.worldBoss.walkToggle = bs.worldBoss.section:Toggle({
Name = _d("ZhQPABEMGxESDwRTGRgRFwwYQg"),
Default = false,
Callback = function(njfx)
bs.worldBoss.walkToBoss = njfx

bs.worldBoss.travelUntil = 0
end,
}, _d("Rhc8HFAUH24BDDRTFwdC"))

bs.worldBoss.bodyParagraph = bs.worldBoss.section:Paragraph({
Header = _d("cxoQGA"),
Body = bs.worldBoss.bodyText(),
})

bs.worldBoss.section:Header({
Name = _d("cxoQGBELHF4FQ5uu9uvezew"),
})

bs.worldBoss.shopParagraph = bs.worldBoss.section:Paragraph({
Header = _d("eBtDGEUXF1o"),
Body = bs.worldBoss.shopText(),
})

bs.worldBoss.itemsDropdown = bs.worldBoss.section:Dropdown({
Name = _d("eAEGBkI"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = bs.worldBoss.shopOptions(),
Callback = function(kq)
local bavq = {}

if type(kq) == _d("RRQBB1Q") then
for mmi, pd in pairs(kq) do
local nj = bs.worldBoss.labelToId[mmi]

if pd and nj then
bavq[nj] = true
end
end
end

bs.worldBoss.selected = bavq

if not next(bavq) and bs.worldBoss.autoBuy then
bs.worldBoss.autoBuy = false

pcall(function()
bs.worldBoss.shopToggle:UpdateState(false)
end)
end
end,
}, _d("WAEGBkInRg"))

bs.worldBoss.shopToggle = bs.worldBoss.section:Toggle({
Name = _d("cAAXBBEaAUg"),
Default = false,
Callback = function(cyn)
if cyn and not next(bs.worldBoss.selected) then
bs.worldBoss.autoBuy = false

pcall(function()
bs.worldBoss.shopToggle:UpdateState(false)
end)

tkan:Dialog({
Title = _d("cAAXBBEaAUg"),
Description = _d("YRwAABEZABEZBgpCDFReGwZLWAwRXFUKBRExAFQYEEtXEQZCAUNGETkBRRpDCUQBVEIFBgVVC1RjEAdLYxEWUxoNS3wdEFAZEEteFlRGHQIfVA4RQ1UKHxEbFV9VAg1XFwZVVQUZXhVURR0CHxEUHUIBTQ"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})

return
end

bs.worldBoss.autoBuy = cyn
end,
}, _d("UAAXBG4aAUgqUQ"))

bs.worldBoss.section:Button({
Name = _d("cwAaS0IdGFQWFw5V"),
Callback = function()
if not next(bs.worldBoss.selected) then
tkan:Dialog({
Title = _d("cwAaS0IdGFQWFw5V"),
Description = _d("YRwAABEZABEZBgpCDFReGwZLWAwRXFUKBRExAFQYEEtXEQZCAU0"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})

return
end

local ozw = bs.worldBoss.buy()

if ozw == 0 then
tkan:Dialog({
Title = _d("cwAaS0IdGFQWFw5V"),
Description = _d("fxoXA1gWExECAhgRGhtEEgsfC1gaXlUODlUZGEJVFwQRCwRUGwdHER0CVAcaS0ERF1pVChgRFwFFVQwNEQsAXhYIRxEXBhEBCw4RGhtCBkMYWRcEER0CGBEWG0VVEBJfGxFVVRoORVY"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})
end
end,
})

bs.worldBoss.building = true

bs.worldBoss.teamDropdown = bs.worldBoss.section:Dropdown({
Name = _d("ZRACBg"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("ZRACBhFJ"), _d("ZRACBhFK"), _d("ZRACBhFL"), _d("ZRACBhFM") },
Callback = function(xmvc)
if bs.worldBoss.building then
return
end

local top = type(xmvc) == _d("RRQBB1Q") and xmvc[1] or xmvc
local mw = type(top) == _d("QgERAl8f") and tonumber(top:match(_d("GVAHQBg"))) or nil

if mw then
bs.worldBoss.team = mw
bs.worldBoss.teamChosen = true
jzfp.bossTeams.save()
end

pcall(function()
bs.worldBoss.teamDropdown:UpdateName(_d("ZRACBhGa9JNV") .. (top or _d("ZRACBhFJ")))
end)
end,
}, _d("RRACBg"))

pcall(function()
bs.worldBoss.teamDropdown:UpdateSelection(_d("ZRACBhE") .. tostring(bs.worldBoss.team))
bs.worldBoss.teamDropdown:UpdateName(_d("ZRACBhGa9JNVNw5QFVQ") .. tostring(bs.worldBoss.team))
end)

task.defer(function()
bs.worldBoss.building = false
end)

bs.misc = bs.misc or {}

bs.misc.expeditions = {
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
rewardPath = _d("cDYhMx4dDEEQBwJFERtfBk0BQhca"),
module = nil,
action = nil,
section = nil,
paragraph = nil,
claimToggle = nil,
startToggle = nil,
dropdown = nil,
}

function bs.misc.expeditions.data()
local llq = bs.misc.expeditions

if llq.module ~= nil then
return llq.module or nil
end

local ptf, qtp = pcall(function()
return require(to.ModuleScripts.ExpeditionData)
end)

llq.module = ptf and qtp or false

return llq.module or nil
end

function bs.misc.expeditions.tiers()
local cszp = bs.misc.expeditions.data()

return cszp and cszp.Tiers or {}
end

function bs.misc.expeditions.remote()
local hce = bs.misc.expeditions

if hce.action and hce.action.Parent then
return hce.action
end

hce.action = ii(_d("dA0TDlURAFgaDSpSDB1eGw"), 3)

return hce.action
end

function bs.misc.expeditions.clockText(gvrx)
local xtfd = bs.misc.expeditions.data()

if xtfd and type(xtfd.formatDuration) == _d("VwANCEURG18") then
return xtfd.formatDuration(gvrx)
end

local vsz = math.max(0, math.floor((gvrx or 0) / 60))

return tostring(vsz) .. _d("XA")
end

function bs.misc.expeditions.status(qbpo)
local uws = bs.misc.expeditions
local ykwd = uws.state
local kjs = type(ykwd) == _d("RRQBB1Q") and type(ykwd.active) == _d("RRQBB1Q") and ykwd.active[qbpo] or nil

if type(kjs) ~= _d("RRQBB1Q") then
return _d("UAMCAl0ZFl0Q"), nil
end

local sr = (tonumber(kjs.endsAt) or 0) - (os.time() + (uws.offset or 0))

if sr <= 0 then
return _d("QxACD0g"), sr
end

return _d("QwANBVgWEw"), sr
end

function bs.misc.expeditions.candidates(xiy)
local kzo = bs.misc.expeditions
local ynm = kzo.data()
local slxi = kzo.state
local nh = ynm and ynm.ById and ynm.ById[xiy]
local kio = {}

if not (nh and type(slxi) == _d("RRQBB1Q") and type(slxi.eligible) == _d("RRQBB1Q")) then
return kio
end

for fyw, dtxw in ipairs(slxi.eligible) do
if type(dtxw) == _d("RRQBB1Q") and dtxw.cardId then
local ndjo = tonumber(dtxw.rarity) or 0
local nvr = (tonumber(dtxw.count) or 0) - (tonumber(dtxw.locked) or 0)

if ndjo >= (tonumber(nh.minRarity) or 0) and nvr > 0 then

table.insert(kio, { cardId = dtxw.cardId, borderLevel = dtxw.borderLevel, rarity = ndjo, count = nvr })
end
end
end

table.sort(kio, function(lih, yxox)
if lih.rarity == yxox.rarity then
return tostring(lih.cardId) < tostring(yxox.cardId)
end

return lih.rarity < yxox.rarity
end)

return kio
end

function bs.misc.expeditions.cards(unsx, ba)
local mgn = bs.misc.expeditions
local jmjs = mgn.data()
local lfkj = jmjs and tonumber(jmjs.CardsPerExpedition) or 4
local gny = {}
local saq = mgn.candidates(unsx)

ba = ba or {}

local function isp(kevm, mpga)
local cby = tostring(kevm.cardId) .. _d("Eg") .. tostring(kevm.borderLevel)

while #gny < lfkj and (ba[cby] or 0) < mpga do
ba[cby] = (ba[cby] or 0) + 1

table.insert(gny, { cardId = kevm.cardId, borderLevel = kevm.borderLevel })
end
end

for bpn, qplf in ipairs(saq) do
if #gny >= lfkj then
break
end

if qplf.count > 1 then
isp(qplf, qplf.count - 1)
end
end

if #gny < lfkj then
for iud, sn in ipairs(saq) do
if #gny >= lfkj then
break
end

isp(sn, sn.count)
end
end

return gny
end

function bs.misc.expeditions.available(gqjx)
local nyrt = bs.misc.expeditions
local jps = nyrt.data()
local dcg = jps and tonumber(jps.CardsPerExpedition) or 4
local wpj = 0

for hxyg, buiz in ipairs(nyrt.candidates(gqjx)) do
wpj = wpj + buiz.count

if wpj >= dcg then
return dcg
end
end

return wpj
end

function bs.misc.expeditions.text()
local no = bs.misc.expeditions

if type(no.state) ~= _d("RRQBB1Q") then
return _d("YxACD1gWExEQGxtUHB1FHAwFQlZaHw")
end

local iz = no.data()
local jbl = iz and tonumber(iz.CardsPerExpedition) or 4
local mxov = {}

for nfxe, qok in ipairs(no.tiers()) do
local rt, ltrd = no.status(qok.id)
local ucn = tostring(qok.name)

if no.tiersWanted[qok.id] then
ucn = _d("0/XBSw") .. ucn
end

if rt == _d("QwANBVgWEw") then
ucn = ucn .. _d("OycGH0QKGkJVCgUR") .. no.clockText(ltrd)
elseif rt == _d("QxACD0g") then
ucn = ucn .. _d("OycGClUBVEUaQwhdGR1c")
else
local shxg = no.available(qok.id)
ucn = ucn .. _d("Ow") .. tostring(shxg) .. _d("ERoFSw") .. tostring(jbl) .. _d("ERYCGVUL")

if shxg >= jbl then
ucn = ucn .. _d("OzYCBRELAFAHFw")
end
end

table.insert(mxov, ucn)
end

table.insert(mxov, _d("dAMGGUhYEEQFDwJSGQBUVQoYEQsRXwFDCVQeG0MQQwoRGxVDEUMSXg1UWRoPDxEXGlRVDA0dWBVfEUMEXx1UUhoTEhEXEhEUQwhQChARHBBLWh0ERVUBClITVEYdBhlUWABZEEMfWB0GERYCBRELBFAHBktYDFQcVQJLXRcaVFUABEEBVF4bDxIRHxtUBkMERAxURh0GBREMHFRVFwJUClRSFA0FXgxUUxBDDVgUGFQRQxxYDBxeABdLWAxa"))

return table.concat(mxov, _d("O38"))
end

function bs.misc.expeditions.request()
local nd = bs.misc.expeditions
local vcqa = nd.remote()

if vcqa then
pcall(function()
vcqa:FireServer(_d("QxASHlQLAA"))
end)
end

nd.askedAt = os.clock()
end

function bs.misc.expeditions.claim()
local mqxe = bs.misc.expeditions

if os.clock() < mqxe.claimAt then
return false
end

local anq = false

for rk, vl in ipairs(mqxe.tiers()) do
if mqxe.status(vl.id) == _d("QxACD0g") then
anq = true
break
end
end

if not anq then
return false
end

local hb = mqxe.remote()

if not hb then
return false
end

pcall(function()
hb:FireServer(_d("UhkCAlw5GF0"))
end)

mqxe.claimAt = os.clock() + 3
mqxe.askedAt = 0

return true
end

function bs.misc.expeditions.popup()
local hqvt = spkj:FindFirstChild(_d("dA0TDlURAFgaDSxEEQ"))

return hqvt and hqvt:FindFirstChild(_d("chkCAlwoG0EAEw")) or nil
end

function bs.misc.expeditions.closeRewards()
local pwhf = bs.misc.expeditions
local hdn = pwhf.popup()

if not (hdn and hdn.Visible) then
return false
end

local ubvv = hdn:FindFirstChild(_d("fh4hHkUMG18"))

if ubvv and type(firesignal) == _d("VwANCEURG18") then
pcall(firesignal, ubvv.Activated)
end

pcall(function()
hdn.Visible = false
end)

return true
end

function bs.misc.expeditions.rewardsText()
local calh = bs.misc.expeditions

if #calh.rewardLog == 0 then
return _d("fxoXA1gWExEWDwpYFRFVVRoORVZUdAMGGUhYBFAMDB5FWABZEEMYVAoCVAdDGFQWEEJVDwpfHAcRHQYZVFgDWAELS1gMBxEBCg5DWBVfEUMCRQtUUhoNH1QWAEJb")
end

local wxmx = {}

for da, adk in ipairs(calh.rewardLog) do
local ptu = {}
local bbqd = adk.items or {}

for nnvy, hhj in ipairs(bbqd) do
if nnvy > 4 then
table.insert(ptu, _d("Gg") .. tostring(#bbqd - 4) .. _d("ERgMGVQ"))
break
end

local ruw = hhj.id or hhj.itemId
local qtuv = ruw and krmu.ById[ruw] or nil
local twps = (qtuv and qtuv.name) or (hhj.potions and _d("YRoXAl4WBw")) or tostring(ruw or _d("QxAUCkMc"))

table.insert(ptu, twps .. _d("EQ0") .. tostring(hhj.count or hhj.max or hhj.min or 1))
end

local aa = math.max(0, os.time() - (tonumber(adk.at) or os.time()))
local gm

if aa < 60 then
gm = tostring(aa) .. _d("QlUCDF4")
elseif aa < 3600 then
gm = tostring(math.floor(aa / 60)) .. _d("XFUCDF4")
else
gm = tostring(math.floor(aa / 3600)) .. _d("WVUCDF4")
end

table.insert(wxmx, tostring(adk.title) .. _d("EbfUSw") .. gm)
table.insert(wxmx, table.concat(ptu, _d("HVU")))
end

return table.concat(wxmx, _d("Ow"))
end

function bs.misc.expeditions.saveRewards()
local tzby = bs.misc.expeditions

if type(writefile) ~= _d("VwANCEURG18") then
return false
end

return pcall(function()
if type(makefolder) == _d("VwANCEURG18") and type(isfolder) == _d("VwANCEURG18") and not isfolder(_d("cDYhMw")) then
makefolder(_d("cDYhMw"))
end

writefile(tzby.rewardPath, game:GetService(_d("eQEXG2IdBkccAA4")):JSONEncode({
rewards = tzby.rewardLog,
updatedAt = os.time(),
}))
end)
end

function bs.misc.expeditions.loadRewards()
local eyhe = bs.misc.expeditions

if type(readfile) ~= _d("VwANCEURG18") or type(isfile) ~= _d("VwANCEURG18") then
return false
end

local ykl, qkm = pcall(function()
if not isfile(eyhe.rewardPath) then
return nil
end

return readfile(eyhe.rewardPath)
end)

if not ykl or type(qkm) ~= _d("QgERAl8f") or #qkm == 0 then
return false
end

local pac

if not pcall(function()
pac = game:GetService(_d("eQEXG2IdBkccAA4")):JSONDecode(qkm)
end) then
return false
end

if type(pac) ~= _d("RRQBB1Q") or type(pac.rewards) ~= _d("RRQBB1Q") then
return false
end

eyhe.rewardLog = {}

for vz, xy in ipairs(pac.rewards) do
if type(xy) == _d("RRQBB1Q") and type(xy.items) == _d("RRQBB1Q") then
table.insert(eyhe.rewardLog, {
at = tonumber(xy.at) or os.time(),
title = tostring(xy.title or _d("dA0TDlURAFgaDQ")),
items = xy.items,
})
end
end

return #eyhe.rewardLog > 0
end

function bs.misc.expeditions.start(meg, ruxu)
local xff = bs.misc.expeditions

if xff.status(meg) ~= _d("UAMCAl0ZFl0Q") then
return false
end

if os.clock() < (xff.startedAt[meg] or 0) then
return false
end

local zyx = xff.remote()

if not zyx then
return false
end

local bpm = xff.cards(meg, ruxu)
local ugkj = xff.data()
local puve = ugkj and tonumber(ugkj.CardsPerExpedition) or 4

if #bpm < puve then
return false
end

local jqru = {}

for yz, cjin in ipairs(bpm) do
jqru[yz] = { cardId = cjin.cardId, borderLevel = cjin.borderLevel }
end

pcall(function()
zyx:FireServer(_d("QgECGUU"), meg, jqru)
end)

xff.startedAt[meg] = os.clock() + 6
xff.askedAt = 0

return true
end

bs.misc.icon = function()
local gq = gethui()

for wni, razo in ipairs(gq:QueryDescendants(_d("eBgCDFQ0FVMQDw"))) do
if razo.Name == _d("ZRQBIlwZE1Q") then
local evq = razo.Parent
local unq = evq and evq:FindFirstChild(_d("ZRQBOEYRAFIdBhl/GRlU"))

if unq and unq.Text == _d("fBwQCFQUGFAbBgRECw") then
if razo:GetAttribute(_d("cDYhM3wRB1I8AARf")) then
return true
end

razo:SetAttribute(_d("cDYhM3wRB1I8AARf"), true)
razo.Image = _d("")
razo.BackgroundTransparency = 1

local function mfl(ejdc, hx, qcnl, avr, ibi, qeb, ny)
local krpd = Instance.new(ejdc)

krpd.Size = UDim2.fromOffset(ibi, qeb)
krpd.Position = UDim2.fromOffset(qcnl, avr)
krpd.BackgroundColor3 = hx
krpd.BorderSizePixel = 0
krpd.Parent = razo

if ny then
local kkyx = Instance.new(_d("ZDwgBEMWEUM"))
kkyx.CornerRadius = UDim.new(0, ny)
kkyx.Parent = krpd
end

return krpd
end

local otfk = Color3.fromRGB(168, 170, 176)

local function eksp(lqg, pl, mu, vtsw, fsh)
local npkj = mfl(_d("dwcCBlQ"), otfk, lqg, pl, mu, vtsw, fsh)

npkj.BackgroundTransparency = 1

local ihre = Instance.new(_d("ZDwwH0MXH1Q"))

ihre.Color = otfk
ihre.Thickness = 1.4
ihre.LineJoinMode = Enum.LineJoinMode.Round
ihre.Parent = npkj

return npkj
end

eksp(3, 1, 6, 4, 1)
eksp(1, 4, 16, 12, 2)

local qjxd = mfl(_d("dwcCBlQ"), otfk, 3, 8, 5, 5)

qjxd.BackgroundTransparency = 1
qjxd.ClipsDescendants = true

local xxwd = mfl(_d("dwcCBlQ"), otfk, 0, 1, 5, 5)

xxwd.Rotation = 45
xxwd.Parent = qjxd

mfl(_d("dwcCBlQ"), otfk, 9, 9, 4, 4, 4)
mfl(_d("dwcCBlQ"), otfk, 13, 10, 3, 3, 1)

return true
end
end
end

return false
end

bs.misc.tab = fgg:Tab({
Name = _d("fBwQCFQUGFAbBgRECw"),

Image = _d(""),
})

task.defer(function()
for ebyu = 1, 20 do
if bs.misc.icon() then
break
end

task.wait(0.25)
end
end)

local xdh = {
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
lastText = _d("fxoXA1gWExEFDBtBHRARDAYfHw"),
tab = nil,
weatherSection = nil,
giveUpSection = nil,
weatherParagraph = nil,
giveUpParagraph = nil,
weatherToggle = nil,
giveUpToggle = nil,
}

getgenv().ACBXPop = xdh

function xdh.options()
local xlrq = {}

for xhsw, kcfh in pairs(krmu.ById) do
if kcfh.type == _d("QRoXAl4W") and type(kcfh.name) == _d("QgERAl8f") then
xlrq[#xlrq + 1] = kcfh.name
end
end

table.sort(xlrq)

return xlrq
end

function xdh.idOf(orcj)
for wpox, rkh in pairs(krmu.ById) do
if rkh.type == _d("QRoXAl4W") and rkh.name == orcj then
return wpox
end
end

return nil
end

function xdh.count(raui)
local ufs = pjfk.balances

return tonumber(ufs and ufs[raui]) or 0
end

function xdh.pop(ec, gmh, dgbe)
local kku = {}

for hs, olw in pairs(ec) do
if olw then
local wf = xdh.idOf(hs)

if wf then
local xbu = xdh.count(wf)

if xbu <= 0 then
kku[#kku + 1] = hs .. _d("EVhDBV4WEREZBg1F")
else
local ecgq = math.clamp(math.floor(tonumber(gmh) or 1), 1, xbu)

pcall(function()
cib.UseItem:FireServer(wf, ecgq)
end)

kku[#kku + 1] = hs .. _d("EQ0") .. ecgq
task.wait(0.3)
end
end
end
end

if #kku == 0 then
return false
end

xdh.lastText = dgbe .. _d("EVhD") .. table.concat(kku, _d("HVU"))

pcall(function()
tkan:Notify({
Title = _d("YRoT"),
Description = xdh.lastText,
Lifetime = 5,
})
end)

return true
end

function xdh.status()
local phjg = wzj.weatherWanted(xdh.weathers)
local uaqe = wzj.weatherNow or _d("RBsIBV4PGg")
local ahvh = {
_d("ZhACH1kdBgtV") .. uaqe .. (phjg and (_d("EV0TBEEIHV8SWUs") .. phjg .. _d("GA")) or _d("")),
_d("fRQQHwtY") .. xdh.lastText,
}

return table.concat(ahvh, _d("Ow"))
end

function xdh.giveUpStatus()
if xdh.armedAt > 0 then
return _d("cAcODlVYWRECAgJFERpWVQUEQ1gAWRBDGUQWVEUaQw5fHFo7OQIYRUJU") .. xdh.lastText
end

return _d("eBEPDh9yOFAGF1ER") .. xdh.lastText
end

xdh.tab = fgg:Tab({
Name = _d("YRoT"),

Image = _d(""),
})

xdh.icon = function()
local xhgq = gethui()

for vr, gpuq in ipairs(xhgq:QueryDescendants(_d("eBgCDFQ0FVMQDw"))) do
if gpuq.Name == _d("ZRQBIlwZE1Q") then
local gkds = gpuq.Parent
local mrd = gkds and gkds:FindFirstChild(_d("ZRQBOEYRAFIdBhl/GRlU"))

if mrd and mrd.Text == _d("YRoT") then
if gpuq:GetAttribute(_d("cDYhM2EXBHgWDAU")) then
return true
end

gpuq:SetAttribute(_d("cDYhM2EXBHgWDAU"), true)
gpuq.Image = _d("")
gpuq.BackgroundTransparency = 1

local lxpj = Color3.fromRGB(168, 170, 176)

local function eoti(wuy, lltt, jaz, xsqd, ipso, apxp)
local nuwd = Instance.new(wuy)

nuwd.Size = UDim2.fromOffset(xsqd, ipso)
nuwd.Position = UDim2.fromOffset(lltt, jaz)
nuwd.BackgroundColor3 = lxpj
nuwd.BorderSizePixel = 0
nuwd.Parent = gpuq

if apxp then
local qwov = Instance.new(_d("ZDwgBEMWEUM"))
qwov.CornerRadius = UDim.new(0, apxp)
qwov.Parent = nuwd
end

return nuwd
end

local function tcud(xvms, pot, pks, znw, wv)
local cide = eoti(_d("dwcCBlQ"), xvms, pot, pks, znw, wv)

cide.BackgroundTransparency = 1

local by = Instance.new(_d("ZDwwH0MXH1Q"))

by.Color = lxpj
by.Thickness = 1.3
by.LineJoinMode = Enum.LineJoinMode.Round
by.Parent = cide

return cide
end

tcud(1, 6, 16, 12, 6)
tcud(6, 3, 6, 4, 1)
eoti(_d("dwcCBlQ"), 5, 1, 8, 2, 1)
eoti(_d("dwcCBlQ"), 7, 0, 4, 1, 0)

eoti(_d("dwcCBlQ"), 4, 11, 10, 1, 0)
eoti(_d("dwcCBlQ"), 13, 3, 2, 2, 2)
eoti(_d("dwcCBlQ"), 15, 6, 2, 2, 2)

return true
end
end
end

return false
end

task.defer(function()
for ctwu = 1, 20 do
if xdh.icon() then
break
end

task.wait(0.25)
end
end)

xdh.weatherSection = xdh.tab:Section({
Side = _d("fRAFHw"),
})

xdh.weatherSection:Header({
Name = _d("YRoXAl4WBxEaDUtGHRVFHQYZEYjrlt8"),
})

xdh.weatherToggle = xdh.weatherSection:Toggle({
Name = _d("YRoTS14WVEUdBhhUWANUFBcDVAoH"),
Default = false,
Callback = function(djzm)
if djzm and (next(xdh.weatherPotions) == nil or next(xdh.weathers) == nil) then
xdh.onWeather = false

pcall(function()
xdh.weatherToggle:UpdateState(false)
end)

tkan:Dialog({
Title = _d("YRoT"),
Description = _d("ZRwAABEZABEZBgpCDFReGwZLRh0VRR0GGREZGlVVDAVUWAReAQoEX1gSWAcQHxFVVGEaE0tfHRFVBkMJXgwcEQEMS1oWG0ZVFANQDFRFGkMPQxEaWlUCBVVYA1kQDUU"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})

return
end

xdh.onWeather = djzm

if djzm then
xdh.weatherSpent = nil
end
end,
}, _d("QRoTNF4WK0UdBhhUJwNUFBcDVAoH"))

xdh.weatherSection:Dropdown({
Name = _d("ZhACH1kdBkI"),
Multi = true,
Required = false,
Options = { _d("ZQwTA14XGg"), _d("cxkKEUsZBlU"), _d("fRwEA0UWHV8S"), _d("ZhwND0IMG0MY"), _d("Yh0CGVgWE1Ab"), _d("YhwNDEQUFUMcFxI"), _d("fBoNCkMbHBExDAZQERo"), _d("ZxoKDw"), _d("fBQHDhERGhE9BgpHHRo"), _d("fBQNDFA") },
Callback = function(fvzn)
xdh.weathers = {}

if type(fvzn) == _d("RRQBB1Q") then
for ftgr, bpx in pairs(fvzn) do
if bpx then
xdh.weathers[ftgr] = true
end
end
end
end,
}, _d("RhACH1kdBkI"))

xdh.weatherSection:Dropdown({
Name = _d("YRoXAl4WBw"),
Multi = true,
Required = false,
Options = xdh.options(),
Callback = function(ueee)
xdh.weatherPotions = {}

if type(ueee) == _d("RRQBB1Q") then
for usn, rsxl in pairs(ueee) do
if rsxl then
xdh.weatherPotions[usn] = true
end
end
end
end,
}, _d("QRoXAl4WBw"))

xdh.weatherSection:Input({
Name = _d("cBgMHl8M"),
Placeholder = _d("AA"),
AcceptedCharacters = _d("fwAODkMRFw"),
Callback = function(dy)
local bow = math.floor(tonumber(dy) or 1)

xdh.weatherAmount = math.clamp(bow, 1, 50)
end,
}, _d("UBgMHl8M"))

xdh.weatherParagraph = xdh.weatherSection:Paragraph({
Header = _d("YgECH0QL"),
Body = xdh.status(),
})

xdh.giveUpSection = xdh.tab:Section({
Side = _d("YxwEA0U"),
})

xdh.giveUpSection:Header({
Name = _d("cBMXDkNYE1gDBktECA"),
})

xdh.giveUpToggle = xdh.giveUpSection:Toggle({
Name = _d("YRoTS1AeAFQHQwoRDBtGEBFLVhECVFUWGw"),
Default = false,
Callback = function(awh)
if awh and next(xdh.giveUpPotions) == nil then
xdh.afterGiveUp = false

pcall(function()
xdh.giveUpToggle:UpdateState(false)
end)

tkan:Dialog({
Title = _d("YRoT"),
Description = _d("ZRwAABEZABEZBgpCDFReGwZLQRcAWBoNS1cRBkIBQ0YRDBxUBwZLWAtUXxoXA1gWExEBDEtVCh1fHkMKVwwRQ1UXA1RYBkQbQwRFEBFDAgoYVFY"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})

return
end

xdh.afterGiveUp = awh
end,
}, _d("QRoTNFAeAFQHPApuDBtGEBE0VhECVCoWGw"))

xdh.giveUpSection:Dropdown({
Name = _d("YRoXAl4WBw"),
Multi = true,
Required = false,
Options = xdh.options(),
Callback = function(qr)
xdh.giveUpPotions = {}

if type(qr) == _d("RRQBB1Q") then
for vomr, blv in pairs(qr) do
if blv then
xdh.giveUpPotions[vomr] = true
end
end
end
end,
}, _d("QRoXAl4WB25H"))

xdh.giveUpSection:Input({
Name = _d("cBgMHl8M"),
Placeholder = _d("AA"),
AcceptedCharacters = _d("fwAODkMRFw"),
Callback = function(sm)
local smpm = math.floor(tonumber(sm) or 1)

xdh.giveUpAmount = math.clamp(smpm, 1, 50)
end,
}, _d("UBgMHl8MKwM"))

xdh.giveUpParagraph = xdh.giveUpSection:Paragraph({
Header = _d("YgECH0QL"),
Body = xdh.giveUpStatus(),
})

local co = {
autoSave = false,
autoRoll = true,
autoQuickRoll = true,

loading = false,
selected = nil,
lastText = _d("fxoXA1gWExECEQJFDBFfVRoORVhZEQUKCFpYFREGAh1UWBJYGQZLUx0YXgJN"),
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
theme = _d("ZxoKDw"),
accent = nil,
savesAt = 0,
autoSaveAt = 0,
themeAt = 0,
capAt = 0,
scaleAnchor = nil,
statusAt = 0,
knownSaves = _d(""),
}

getgenv().ACBXSettings = co

co.presets = {
Void = { panel = Color3.fromRGB(15, 15, 15), element = Color3.fromRGB(0, 0, 0), accent = Color3.fromRGB(168, 170, 176) },
Ocean = { panel = Color3.fromRGB(6, 16, 26), element = Color3.fromRGB(8, 26, 40), accent = Color3.fromRGB(77, 166, 255) },
Ember = { panel = Color3.fromRGB(26, 10, 8), element = Color3.fromRGB(36, 16, 10), accent = Color3.fromRGB(255, 122, 69) },
Sakura = { panel = Color3.fromRGB(26, 9, 18), element = Color3.fromRGB(38, 14, 26), accent = Color3.fromRGB(255, 125, 177) },
Mint = { panel = Color3.fromRGB(7, 20, 14), element = Color3.fromRGB(9, 30, 22), accent = Color3.fromRGB(77, 227, 160) },
Graphite = { panel = Color3.fromRGB(20, 20, 22), element = Color3.fromRGB(30, 30, 33), accent = Color3.fromRGB(200, 200, 206) },
}

co.themeOrder = { _d("ZxoKDw"), _d("fhYGCl8"), _d("dBgBDkM"), _d("YhQIHkMZ"), _d("fBwNHw"), _d("dgcCG1kRAFQ") }

local vyh = _d("cDYhS2MdFlgHFwMeCxFFAQoFVgs")

function co.saves()
local vpzn, cokl = pcall(function()
return yp:RefreshConfigList()
end)

if vpzn and type(cokl) == _d("RRQBB1Q") then
table.sort(cokl)
return cokl
end

return {}
end

function co.autoLoadName()
local uqt, xz = pcall(function()
if isfile and isfile(vyh .. _d("HhQWH14UG1ARTR9JDA")) then
return readfile(vyh .. _d("HhQWH14UG1ARTR9JDA"))
end
end)

if uqt and type(xz) == _d("QgERAl8f") then
xz = xz:gsub(_d("b1AQQA"), _d("")):gsub(_d("FAZITw"), _d(""))

if xz ~= _d("") then
return xz
end
end

return nil
end

function co.setAutoLoad(ie)

return (pcall(function()
writefile(vyh .. _d("HhQWH14UG1ARTR9JDA"), ie or _d(""))
end))
end

function co.delete(tatf)
if type(tatf) ~= _d("QgERAl8f") or tatf == _d("") then
return false, _d("YRwAABEZVEIUFQ4RHh1dEEMNWAoHRVs")
end

local oq = vyh .. _d("Hg") .. tatf .. _d("Hx8QBF8")
local nlc = false

pcall(function()
nlc = isfile ~= nil and isfile(oq) == true
end)

if not nlc then
return false, _d("ZR0GGVRYHUJVDQQRHh1dEEMIUBQYVBFD") .. tatf .. _d("Hw")
end

local tdkk, vpx = pcall(function()
delfile(oq)
end)

if not tdkk then
return false, tostring(vpx)
end

if co.autoLoadName() == tatf then
co.setAutoLoad(_d(""))
end

if co.selected == tatf then
co.selected = nil
co.selectionShown = nil
end

co.knownSaves = nil
co.savesAt = 0

return true
end

function co.save(zzf)
if type(zzf) ~= _d("QgERAl8f") or zzf:gsub(_d("FAY"), _d("")) == _d("") then
return false, _d("dhwVDhEMHFRVEApHHVRQVQ0KXB1UVxwRGEVW")
end

local ftnw, bjrj, udu = pcall(function()
return yp:SaveConfig(zzf)
end)

if not ftnw then
return false, tostring(bjrj)
end

if bjrj ~= true then
return false, tostring(udu or _d("RR0GS1cRGFRVAAREFBARGwwfERoREQIRAkUMEV8"))
end

return true
end

function co.replayOff(wpvy)
local hyo, mf = pcall(function()
return readfile(vyh .. _d("Hg") .. wpvy .. _d("Hx8QBF8"))
end)

if not hyo or type(mf) ~= _d("QgERAl8f") then
return
end

local tid
hyo, tid = pcall(function()
return game:GetService(_d("eQEXG2IdBkccAA4")):JSONDecode(mf)
end)

if not hyo or type(tid) ~= _d("RRQBB1Q") or type(tid.objects) ~= _d("RRQBB1Q") then
return
end

for nyp, hmgz in ipairs(tid.objects) do
if hmgz.type == _d("ZRoEDF0d") and hmgz.state == false and hmgz.flag then
local gtuh = yp.Options[hmgz.flag]

if gtuh then
pcall(function()
gtuh:UpdateState(false)
end)
end
end
end
end

function co.load(xt)
if type(xt) ~= _d("QgERAl8f") or xt == _d("") then
return false, _d("YRwAABEZVEIUFQ4RHh1dEEMNWAoHRVs")
end

co.loading = true
lxt = true

local xfq, yoke, osm = pcall(function()
return yp:LoadConfig(xt)
end)

if not xfq then
co.loading = false
lxt = false

return false, tostring(yoke)
end

if yoke ~= true then
co.loading = false
lxt = false

return false, tostring(osm or _d("RR0GS1cRGFRVAAREFBARGwwfERoREQcGClU"))
end

task.wait(0.25)
co.replayOff(xt)
co.loading = false
lxt = false

return true
end

co.uiPath = _d("cDYhMx4NHR8fEARf")

function co.saveUi()
if type(writefile) ~= _d("VwANCEURG18") then
return false
end

if co.restoring then
return false
end

local aqqo = co.accent

local pxk = {
theme = co.theme,
scale = tonumber(string.format(_d("FFtRDQ"), co.scaleTarget or 1)),
accent = aqqo and string.format(_d("FBFPTlVUUVU"),
math.floor(aqqo.R * 255 + 0.5),
math.floor(aqqo.G * 255 + 0.5),
math.floor(aqqo.B * 255 + 0.5)) or nil,
}

return pcall(function()
if type(makefolder) == _d("VwANCEURG18") and type(isfolder) == _d("VwANCEURG18") and not isfolder(_d("cDYhMw")) then
makefolder(_d("cDYhMw"))
end

writefile(co.uiPath, game:GetService(_d("eQEXG2IdBkccAA4")):JSONEncode(pxk))
end)
end

function co.loadUi()
if type(readfile) ~= _d("VwANCEURG18") or type(isfile) ~= _d("VwANCEURG18") then
return nil
end

local xslq, oqu = pcall(function()
if not isfile(co.uiPath) then
return nil
end

return readfile(co.uiPath)
end)

if not xslq or type(oqu) ~= _d("QgERAl8f") or oqu == _d("") then
return nil
end

local hdso
xslq, hdso = pcall(function()
return game:GetService(_d("eQEXG2IdBkccAA4")):JSONDecode(oqu)
end)

if not xslq or type(hdso) ~= _d("RRQBB1Q") then
return nil
end

co.restoring = true

if type(hdso.theme) == _d("QgERAl8f") and co.presets[hdso.theme] then
co.theme = hdso.theme

pcall(function()
co.themeDropdown:UpdateSelection(hdso.theme)
co.themeDropdown:UpdateName(_d("ZR0GBlRCVA") .. hdso.theme)
end)
end

local py, lgr, mr = tostring(hdso.accent or _d("")):match(_d("b11GDxpRWBlQB0AYVFwUEUhCFQ"))

if py then
local tf = Color3.fromRGB(tonumber(py), tonumber(lgr), tonumber(mr))

co.accent = tf

pcall(function()
co.accentPicker:SetColor(tf)
end)
else
co.accent = nil

local my = co.presets[co.theme] or co.presets.Void

pcall(function()
co.accentPicker:SetColor(my.accent)
end)
end

local faq = tonumber(hdso.scale)

if faq then
faq = math.clamp(faq, 0.5, co.scaleCeiling())

co.scaleTarget = faq
co.scaleAnchor = nil

pcall(function()
co.scaleSlider:UpdateValue(faq)
end)
end

co.applyTheme()

co.restoring = false
co.saveUi()

return hdso
end

function co.colourKey(yejp)
return math.floor(yejp.R * 255) .. _d("HQ") .. math.floor(yejp.G * 255) .. _d("HQ") .. math.floor(yejp.B * 255)
end

function co.guiRoot()

if not opq() then
return nil
end

if co.root and co.root.Parent then
return co.root
end

local hmzu = gethui and gethui() or game:GetService(_d("choRDnYNHQ"))

for zty, jmk in ipairs(hmzu:GetChildren()) do
if jmk:IsA(_d("YhYRDlQWM0Qc")) and jmk:FindFirstChild(_d("cxQQDg")) then
co.root = jmk.Base

return co.root
end
end

return nil
end

function co.applyTheme()
local jpo = co.guiRoot()
local tiz = co.presets[co.theme] or co.presets.Void

if not jpo then
return false
end

local xbo = {
panel = tiz.panel,
element = tiz.element,
accent = co.accent or tiz.accent,
}

local gdko = {}

for jnpt, aytw in pairs(co.presets) do
gdko[co.colourKey(aytw.panel)] = _d("QRQNDl0")
gdko[co.colourKey(aytw.element)] = _d("VBkGBlQWAA")
gdko[co.colourKey(aytw.accent)] = _d("UBYADl8M")
end

gdko[co.colourKey(xbo.accent)] = _d("UBYADl8M")

if gdko[co.colourKey(jpo.BackgroundColor3)] == _d("QRQNDl0") then
jpo.BackgroundColor3 = xbo.panel
end

for af, cfed in ipairs(jpo:GetDescendants()) do
if cfed:IsA(_d("dgAKJFMSEVIB")) then
local fgyx = gdko[co.colourKey(cfed.BackgroundColor3)]

if fgyx then
cfed.BackgroundColor3 = xbo[fgyx]
end
elseif cfed:IsA(_d("ZDwwH0MXH1Q")) then
if gdko[co.colourKey(cfed.Color)] == _d("UBYADl8M") then
cfed.Color = xbo.accent
end
end

if cfed:IsA(_d("eBgCDFQ0FVMQDw")) and cfed.Name == _d("ZRQBIlwZE1Q") and cfed.Image ~= _d("") then
cfed.ImageColor3 = xbo.accent
cfed.ImageTransparency = 0
cfed:SetAttribute(_d("cDYhM2UZFnAWAA5fDA"), xbo.accent)

if not cfed:GetAttribute(_d("cDYhM2UZFmUcDR8")) then
cfed:SetAttribute(_d("cDYhM2UZFmUcDR8"), true)

local function ohmm()
local cnnz = cfed:GetAttribute(_d("cDYhM2UZFnAWAA5fDA"))

if cnnz and cfed.ImageColor3 ~= cnnz then
cfed.ImageColor3 = cnnz
end

if cfed.ImageTransparency ~= 0 then
cfed.ImageTransparency = 0
end
end

cfed:GetPropertyChangedSignal(_d("eBgCDFQsBlAbEBtQChFfFho")):Connect(ohmm)
cfed:GetPropertyChangedSignal(_d("eBgCDFQ7G10aEVg")):Connect(ohmm)
end
end
end

return true
end

local vdx = fgg:Tab({
Name = _d("fBQT"),
Image = _d("QxcbCkILEUUcB1EeV0IBRlJbBk1NAkQ"),
})

local feen = {
holdFor = 25,
fly = {
on = false,
speed = 55,
connection = nil,
},
islands = {
{ name = _d("fRoBCUg"), kind = _d("RhoRB1U"), arg = _d("XRoBCUg") },
{ name = _d("cBcCBVUXGlQRQyJCFBVfEQ"), kind = _d("WAYPCl8c"), arg = _d("UBcCBVUXGlQRPAJCFBVfEQ") },
{ name = _d("ZQIKBRE6EVAWCw5C"), kind = _d("WAYPCl8c"), arg = _d("RQIKBW4aEVAWCw5C"), note = _d("ESELDhELEUMDBhkRHAZeBRBLWAxURBsXAl1YDV4AQwNQDhERBgICXR0QEQELDkMdWg") },
{ name = _d("ZhwND1wRGF1VKhhdHQ"), kind = _d("WAYPCl8c"), arg = _d("RhwND1wRGF0qChhdHQ"), note = _d("ESELDhELEUMDBhkRHAZeBRBLWAxURBsXAl1YDV4AQwNQDhERBgICXR0QEQELDkMdWg") },
},
npcs = {
{ name = _d("chQRDxE1EUMSBg"), npc = _d("VwAQDm4WBFI"), attr = _d("fyUgIlU"), at = Vector3.new(-272, 33, -40347) },
{ name = _d("dA0TDlURAFgaDRg"), npc = _d("dA0TDlURAFgaDSVhOw"), attr = _d("dA0TDlURAFgaDSVhOw"), at = Vector3.new(-347, 35, -40361) },
{ name = _d("dRAABF8LAEMAAB8"), npc = _d("VRAABF8LAEMAAB9uFgRS"), attr = _d("fyUgIlU"), at = Vector3.new(-264, 33, -40331) },
{ name = _d("cgcCDUU"), npc = _d("UgcCDUUnGkEW"), attr = _d("fyUgIlU"), at = Vector3.new(-330, 33, -40277) },
{ name = _d("Yh4KB11YIEMQBg"), npc = _d("Yh4KB10sBlQQLTty"), attr = _d("Yh4KB10sBlQQLTty"), at = Vector3.new(-290, 32, -40283) },
{ name = _d("chQRDxExGlUQGw"), npc = _d("UhQRD24RGlUQGzRfCBc"), attr = _d("fyUgIlU"), at = Vector3.new(-313, 33, -40282) },
{ name = _d("YRQAABE1EUMWCwpfDA"), npc = _d("QRQAAG4VEUMWCwpfDA"), attr = _d("fyUgIlU"), at = Vector3.new(-301, 33, -40270) },
{ name = _d("dQANDFQXGg"), npc = _d("VQANDFQXGm4bEwg"), attr = _d("fyUgIlU"), at = Vector3.new(-339, 41, -40399) },
{ name = _d("dxwQA1QKGVAb"), npc = _d("dxwQA1QKGVAbLTty"), attr = _d("dxwQA1QKGVAbLTty"), at = Vector3.new(-493, 14, -40262) },
{ name = _d("YhAAGVQMVHAbBAdUCg"), npc = _d("YhAAGVQMNV8SDw5DNiRy"), attr = _d("YhAAGVQMNV8SDw5DNiRy"), at = Vector3.new(-209, 34, -40382) },
{ name = _d("eRQPB14PEVQbQzhZFwQ"), npc = _d("YQAOG1oRGhE4BhlSEBVfAQ"), at = Vector3.new(-29989, 78, -30259) },
{ name = _d("YhQAGVgeHVIQQypdDBVD"), landmark = _d("YhQAGVgeHVIQIgdFGQY"), island = _d("UBcCBVUXGlQRPAJCFBVfEQ"), at = Vector3.new(-3548, 11, -40462) },
{ name = _d("eRQRD1IXBlRVNwRGHQY"), npc = _d("eRQRD1IXBlQhDBxUCg"), island = _d("UBcCBVUXGlQRPAJCFBVfEQ"), at = Vector3.new(-3795, 25, -40250) },
{ name = _d("eAYPCl8cVHccEANUChlQGw"), npc = _d("eAYPCl8cMlgGCw5DFRVfOzMo"), attr = _d("eAYPCl8cMlgGCw5DFRVfOzMo"), island = _d("UBcCBVUXGlQRPAJCFBVfEQ"), at = Vector3.new(-3825, 23, -40260) },
{ name = _d("dRwEDFQK"), npc = _d("dRwEDFQKOmE2"), attr = _d("dRwEDFQKOmE2"), island = _d("RQIKBW4aEVAWCw5C"), at = Vector3.new(-5998, 26, -40565) },
{ name = _d("YhAAGVQMVHUcBAxUCg"), npc = _d("YhAAGVQMMFgSBA5DNiRy"), attr = _d("YhAAGVQMMFgSBA5DNiRy"), island = _d("RhwND1wRGF0qChhdHQ"), at = Vector3.new(-7740, 17, -40343) },
},
}

function feen.hold()
rz.tpHoldUntil = os.clock() + feen.holdFor

rz.deepPhase = _d("WBEPDg")
rz.deepStageAt = 0
rz.phase = _d("WBEPDg")
rz.nextCastAt = 0
rz.watchdogAt = 0

return feen.holdFor
end

function feen.point(kod)
local jxw

if kod.landmark then
jxw = workspace:FindFirstChild(kod.landmark)
else
local fgdq = workspace:FindFirstChild(_d("fyUgGA"))

if fgdq then
for tru, blo in ipairs(fgdq:GetChildren()) do
local lta

if kod.attr then
lta = blo:GetAttribute(kod.attr) == kod.npc
else
lta = blo.Name == kod.npc
end

if lta then
jxw = blo
break
end
end
end
end

if jxw then
local ee = jxw.PrimaryPart
or jxw:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"), true)
or jxw:FindFirstChildWhichIsA(_d("cxQQDmEZBkU"), true)

if ee then
return ee.Position
end
end

return kod.at
end

function feen.resume()
if not rz.enabled then
return
end

local bxn = kxt.Character
local gxnz = bxn and bxn:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if not gxnz or (gxnz.Position - behi).Magnitude < 40 then
return
end

pcall(function()
rz.recover()
end)
end

function feen.standAt(yyvb)
local wce = kxt.Character
local tjpp = wce and wce:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if not tjpp or not yyvb then
return false
end

local jr = RaycastParams.new()
jr.FilterType = Enum.RaycastFilterType.Exclude
jr.FilterDescendantsInstances = { wce }

local pw = workspace:Raycast(yyvb + Vector3.new(0, 10, 0), Vector3.new(0, -80, 0), jr)
local xzl = yyvb.Y

if pw and pw.Instance.Name ~= _d("ZhQXDkM") then
local iba = pw.Position.Y + 3.2

if math.abs(iba - yyvb.Y) <= 8 then
xzl = iba
end
end

local its = Vector3.new(tjpp.Position.X - yyvb.X, 0, tjpp.Position.Z - yyvb.Z)

if its.Magnitude < 1 then
its = Vector3.new(4, 0, 0)
else
its = its.Unit * 4
end

local hkjg = Vector3.new(yyvb.X + its.X, xzl, yyvb.Z + its.Z)

tjpp.CFrame = CFrame.new(hkjg)

return true
end

function feen.unlock()
local cxp = {
{ id = _d("UBcCBVUXGlQRPAJCFBVfEQ"), at = Vector3.new(-3825, 24, -40260) },
{ id = _d("RQIKBW4aEVAWCw5C"), at = Vector3.new(-6180, 40, -40350) },
{ id = _d("RhwND1wRGF0qChhdHQ"), at = Vector3.new(-7480, 30, -40350) },
}
local ebr = {}

for ksb, osb in ipairs(cxp) do
local wldo = cib.FishingGetState:InvokeServer()

if wldo and wldo.areas and wldo.areas[osb.id] == true then
table.insert(ebr, osb.id .. _d("C1UCB0MdFVUMQwRBHRo"))
else
feen.hold()
feen.standAt(osb.at)
task.wait(2.4)

local yob = cib.FishingGetState:InvokeServer()

table.insert(ebr, osb.id .. (yob and yob.areas and yob.areas[osb.id] and _d("C1UWBV0XF1oQBw") or _d("C1UFClgUEVU")))
end
end

feen.hold()
pcall(function()
cib.TeleportToWorld:FireServer(_d("XRoBCUg"))
end)
task.wait(2.5)

return table.concat(ebr, _d("EbfUSw"))
end

function feen.flyToggle(js)
feen.fly.on = js

if not js then
return _d("dxkaS14eEh8")
end

local dwn = kxt.Character
local xoix = dwn and dwn:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if not xoix then
return _d("fxpDCFkZBlAWFw5DWABeVQ8CVwxa")
end

feen.fly.height = xoix.Position.Y

if feen.fly.connection then
return _d("dxkaS14WWg")
end

local iwhn = game:GetService(_d("ZAYGGXgWBEQBMA5DDh1SEA"))

feen.fly.connection = game:GetService(_d("YwANOFQKAlgWBg")).Heartbeat:Connect(function(jjkz)
if not feen.fly.on then
return
end

local ordz = kxt.Character
local wkwo = ordz and ordz:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if not wkwo then
return
end

local nt = workspace.CurrentCamera
local xfk = Vector3.zero

if nt then
local irxu = nt.CFrame.LookVector
local wd = Vector3.new(irxu.X, 0, irxu.Z)

if wd.Magnitude > 0.01 then
wd = wd.Unit
end

local nm = Vector3.new(wd.Z, 0, -wd.X)

if iwhn:IsKeyDown(Enum.KeyCode.W) then
xfk = xfk + wd
end

if iwhn:IsKeyDown(Enum.KeyCode.S) then
xfk = xfk - wd
end

if iwhn:IsKeyDown(Enum.KeyCode.D) then
xfk = xfk + nm
end

if iwhn:IsKeyDown(Enum.KeyCode.A) then
xfk = xfk - nm
end
end

local ebgt = 0

if iwhn:IsKeyDown(Enum.KeyCode.Space) then
ebgt = 1
elseif iwhn:IsKeyDown(Enum.KeyCode.LeftControl) then
ebgt = -1
end

local pdq = feen.fly.speed or 55
local vfyd = xfk * pdq * jjkz + Vector3.new(0, ebgt * pdq * 0.6 * jjkz, 0)

if vfyd.Magnitude < 0.001 then
return
end

wkwo.CFrame = wkwo.CFrame + vfyd
wkwo.AssemblyLinearVelocity = Vector3.zero
end)

return _d("dxkaS14WWg")
end

function feen.go(mjz)
feen.hold()

if mjz.kind == _d("RhoRB1U") then
pcall(function()
cib.TeleportToWorld:FireServer(mjz.arg)
end)

return _d("YhANHxEMHFRV") .. mjz.name .. _d("EQEGB1QIG0MBTQ")
end

if mjz.kind == _d("WAYPCl8c") then
pcall(function()
cib.FishingIslandTeleport:FireServer(mjz.arg)
end)

return _d("YhANHxEMHFRV") .. mjz.name .. _d("EQEGB1QIG0MBTQ") .. tostring(mjz.note or _d(""))
end

local jrqu = feen.point(mjz)
local rllj = kxt.Character
local zyj = rllj and rllj:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if jrqu and zyj and (zyj.Position - jrqu).Magnitude > 1500 then
pcall(function()
if mjz.island then
cib.FishingIslandTeleport:FireServer(mjz.island)
else
cib.TeleportToWorld:FireServer(_d("XRoBCUg"))
end
end)

task.wait(mjz.island and 3.5 or 4.5)

jrqu = feen.point(mjz)

zyj = kxt.Character and kxt.Character:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if jrqu and zyj and (zyj.Position - jrqu).Magnitude > 1500 then
return mjz.name .. _d("ERwQS14WVA") .. tostring(mjz.island or _d("RR0GS10XFlMM"))
.. _d("EVhDH1kdVFYUDg4RChFXABAOQlgAWRQXS0UKHUFVFgVFERgRHBdLWRkHERcGDl9YBlQUAANUHFReGwAOHw")
end
end

if not jrqu then
return mjz.name .. _d("ERwQS18XABEcDUtFEB1CVRQEQxQQHw")
end

if not feen.standAt(jrqu) then
return _d("fxpDCFkZBlAWFw5DWABeVQ4ERx1a")
end

task.delay(feen.holdFor + 2, function()
pcall(feen.resume)
end)

return _d("YgEMBFVYFlQGCg9UWA") .. mjz.name .. _d("Hw")
end

feen.islandSection = vdx:Section({ Side = _d("fRAFHw") })
feen.islandSection:Header({ Name = _d("eAYPCl8cBxGF/OSsl8y+") })

feen.npcSection = vdx:Section({ Side = _d("YxwEA0U") })
feen.npcSection:Header({ Name = _d("fyUgGBGI66L4") })

for dgcs, dgl in ipairs(feen.islands) do
feen.islandSection:Button({
Name = dgl.name,
Callback = function()
task.spawn(function()
local gufu = feen.go(dgl)

tkan:Notify({
Title = _d("ZRAPDkEXBkU"),
Description = gufu,
Lifetime = 6,
})
end)
end,
})
end

feen.state = rz
feen.tab = vdx
feen.islandSection:Button({
Name = _d("ZBsPBFITVFAZD0tYCxhQGwcY"),
Callback = function()
task.spawn(function()
local jm = feen.unlock()

tkan:Notify({
Title = _d("eAYPCl8cBw"),
Description = jm,
Lifetime = 10,
})
end)
end,
})

feen.flySection = vdx:Section({ Side = _d("fRAFHw") })
feen.flySection:Header({ Name = _d("dxkaS9Pk/N7N7A") })

feen.flySection:Toggle({
Name = _d("dxkaSxkvNWIxT0tiCBVSEEMeQVRUcgERBxEcG0YbSg"),
Default = false,
Callback = function(pk)
local mb = feen.flyToggle(pk)

tkan:Notify({
Title = _d("dxka"),
Description = mb,
Lifetime = 4,
})
end,
}, _d("UBYBE24eGEg"))

getgenv().ACBXTeleport = feen

getgenv().ACBXDeepWater = ykng

pcall(ykng.dropStale)

for vev, wjf in ipairs(feen.npcs) do
feen.npcSection:Button({
Name = wjf.name,
Callback = function()
task.spawn(function()
local ps = feen.go(wjf)

tkan:Notify({
Title = _d("ZRAPDkEXBkU"),
Description = ps,
Lifetime = 6,
})
end)
end,
})
end

local pbq = ntss:Section({ Side = _d("fRAFHw") })

pbq:Header({ Name = _d("dRwEDFgWExGX+OTewPs") })

local ym = {
busy = false,
}

local yvft = (tonumber(getgenv().ACBXDigGeneration) or 0) + 1
getgenv().ACBXDigGeneration = yvft

function ym.read()
local fhln, xcsr = pcall(function()
return cib.DigGetState:InvokeServer()
end)

return fhln and type(xcsr) == _d("RRQBB1Q") and xcsr or nil
end

function ym.call(ysn, ng)
local rchn, pg = pcall(function()
return cib.DigShop:InvokeServer(ysn, ng)
end)

task.wait(2.5)

return rchn and pg == true
end

function ym.wear()
local yvu = kxt.Character

if not yvu then
return false
end

local puo = yvu:FindFirstChildOfClass(_d("eQAOCl8XHVU"))
local ajj = kxt:FindFirstChild(_d("cxQAAEEZF1o"))

if not (puo and ajj) then
return false
end

puo:UnequipTools()
task.wait(0.4)

for aqv = 1, 8 do
for npla, uket in ipairs(ajj:GetChildren()) do
if uket:IsA(_d("ZRoMBw")) and uket.Name:find(_d("bzEKDGIQG0cQDw")) then
puo:EquipTool(uket)

return true
end
end

task.wait(0.5)
end

return false
end

function ym.run()
local rgw = ym.read()

if not rgw then
return _d("ZR0GS1URExEGCwRBWB1CVQ0ERVgVXwYUDkMRGlZb")
end

local yvh = {}

pcall(function()
local cpl = cib.FishingGetState:InvokeServer()

yvh = cpl and cpl.areas or {}
end)

if not (yvh.abandoned_island and yvh.twin_beaches and yvh.windmill_isle) then
feen.unlock()
task.wait(1)
end

local hvvb

for nfs, ineb in ipairs(feen.npcs) do
if ineb.name == _d("dRwEDFQK") then
hvvb = ineb
break
end
end

if not hvvb then
return _d("ZR0GS2UKEVAGFhlUWDxEGxcOQ1gdQlUNBEVYHV9VFwNYC1RGGhEHVVY")
end

feen.go(hvvb)
task.wait(2)

local rzfd = kxt.Character
local fuh = rzfd and rzfd:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))
local qpdr = feen.point(hvvb)

if not (fuh and qpdr) or (fuh.Position - qpdr).Magnitude > 40 then
return _d("choWB1VYGl4BQxlUGRdZVRcDVFggQxACGEQKERE9FgVFHQYf")
end

rgw = ym.read() or rgw

local hti = false
local qtg = rgw.shovels and rgw.shovels.shovel_basic == true
local gj = rgw.detectors and rgw.detectors.detector_basic == true

if not (qtg and gj) then
hti = ym.call(_d("chkCAlwrAFAHFw5D"), _d("Qh0MHVQUK1MUEAJS"))
rgw = ym.read() or rgw
end

if rgw.equippedShovel ~= _d("Qh0MHVQUK1MUEAJS") then
ym.call(_d("dAQWAkErHF4DBgc"), _d("Qh0MHVQUK1MUEAJS"))
end

if rgw.equippedDetector ~= _d("VRAXDlIMG0MqAQpCERc") then
ym.call(_d("dAQWAkE8EUUQAB9eCg"), _d("VRAXDlIMG0MqAQpCERc"))
end

rgw = ym.read() or rgw

if rgw.equippedShovel == _d("Qh0MHVQUK1MUEAJS") and rgw.equippedDetector == _d("VRAXDlIMG0MqAQpCERc") then
local ozv = ym.wear()
local ck = false

if ozv and rz.enabled then
rz.autoFishWanted = false
ck = true

hfbp(false)

pcall(function()
vncx:UpdateState(false)
end)
end

return (hti and _d("chkCAlwdEBEUDQ8RHQVEHBMbVBw") or _d("dAQWAkEIEVU"))
.. _d("EQELDhE6FUIcAEtiEBtHEA9LUBYQETcCGFgbVHUQFw5SDBtDWw")
.. (ck and _d("ETQWH15YMlgGC0teHhIRWEMfWR1UQh0MHVQUVFkUEEtFEBERAQwEXVgHXRoXRQ") or _d(""))
end

return _d("ZR0GS3MZB1gWQzhZFwJUGUMEQ1gwVAEGCEUXBhEcEEtCDB1dGUMGWAsHWBsERQ")
end

function ym.unlock()
if ym.busy then
return _d("cBkRDlAcDRECDBlaERpWWw")
end

ym.busy = true

local rwmt, mqdt = pcall(ym.run)

ym.busy = false

if not rwmt then
return _d("dRwEDFgWExETAgJdHRALVQ") .. tostring(mqdt)
end

return mqdt
end

ym.icon = function()
local cub = gethui()

for hav, td in ipairs(cub:QueryDescendants(_d("eBgCDFQ0FVMQDw"))) do
if td.Name == _d("ZRQBIlwZE1Q") then
local vfga = td.Parent
local dzv = vfga and vfga:FindFirstChild(_d("ZRQBOEYRAFIdBhl/GRlU"))

if dzv and dzv.Text == _d("dRwEDFgWEw") then
if td:GetAttribute(_d("cDYhM3URE3gWDAU")) then
return true
end

td:SetAttribute(_d("cDYhM3URE3gWDAU"), true)
td.Image = _d("")
td.BackgroundTransparency = 1

local qwd = Color3.fromRGB(233, 236, 242)

for prfu, borf in ipairs(cub:QueryDescendants(_d("eBgCDFQ0FVMQDw"))) do
if borf.Name == _d("ZRQBIlwZE1Q") and borf ~= td and borf.Image ~= _d("") then
qwd = borf.ImageColor3
break
end
end

local function ocn(be, zeiz, ygr, czex, jc, ev)
local nrk = Instance.new(_d("dwcCBlQ"))

nrk.Size = UDim2.fromOffset(ygr, czex)
nrk.Position = UDim2.fromOffset(be, zeiz)
nrk.BackgroundColor3 = qwd
nrk.BorderSizePixel = 0
nrk.Parent = td

if ev then
nrk.Rotation = ev
end

if jc then
local pzyl = Instance.new(_d("ZDwgBEMWEUM"))

pzyl.CornerRadius = UDim.new(0, jc)
pzyl.Parent = nrk
end

return nrk
end

ocn(1.1, 10.2, 7, 6.4, 1.6, -45)
ocn(3.1, 8.3, 11, 2.2, 0.8, -45)
ocn(9.8, 4.4, 5.6, 2, 0.8, 45)

return true
end
end
end

return false
end

task.defer(function()
for nwzp = 1, 20 do
if ym.icon() then
break
end

task.wait(0.25)
end
end)

pbq:Button({
Name = _d("ZBsPBFITVFUcBAxYFhM"),
Callback = function()
task.spawn(function()
tkan:Notify({
Title = _d("dRwEDFgWEw"),
Description = _d("eRACD1gWExEBDEtFEBERIREOUAsBQxBDI0QWAFQHTQ"),
Lifetime = 5,
})

local fa = ym.unlock()

tkan:Notify({
Title = _d("dRwEDFgWEw"),
Description = fa,
Lifetime = 10,
})
end)
end,
})

ym.data = require(to.ModuleScripts.DigData)

function ym.zoneAt(imam)
for ql, vifl in ipairs(game:GetService(_d("choPB1QbAFgaDThUCgJYFgY")):GetTagged(ym.data.ZoneTag)) do
if vifl:IsA(_d("cxQQDmEZBkU")) and vifl:IsDescendantOf(workspace) then
local otk = vifl.CFrame:PointToObjectSpace(imam)
local qtiq = vifl.Size * 0.5

if math.abs(otk.X) <= qtiq.X and math.abs(otk.Y) <= qtiq.Y and math.abs(otk.Z) <= qtiq.Z then
return true
end
end
end

return false
end

function ym.onIsland()
for wjd, uyui in ipairs(game:GetService(_d("choPB1QbAFgaDThUCgJYFgY")):GetTagged(ym.data.ZoneTag)) do
if uyui:IsA(_d("cxQQDmEZBkU")) and uyui:IsDescendantOf(workspace) then
return true
end
end

return false
end

function ym.bestShovel(bch)
local fs = bch and bch.shovels or {}
local slmm = nil

for gwji, jse in ipairs(ym.data.Shovels) do
if fs[jse.id] == true then
slmm = jse.id
end
end

return slmm
end

function ym.equipBest()
local vgi = ym.read()
local xb = ym.bestShovel(vgi)

if not xb then
return nil
end

if vgi.equippedShovel ~= xb then
ym.call(_d("dAQWAkErHF4DBgc"), xb)
end

ym.wear()

return xb
end

function ym.leaveNpc()
local cjy = kxt.Character
local amn = cjy and cjy:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))
local egh = cjy and cjy:FindFirstChildOfClass(_d("eQAOCl8XHVU"))

if not (amn and egh) then
return false
end

local leaf

for fum, paqz in ipairs(feen.npcs) do
if paqz.name == _d("dRwEDFQK") then
leaf = paqz
break
end
end

local jvt = leaf and feen.point(leaf)

if not jvt then
return false
end

local szv = Vector3.new(amn.Position.X - jvt.X, 0, amn.Position.Z - jvt.Z)

if szv.Magnitude >= 16 then
return true
end

if szv.Magnitude < 1 then
szv = Vector3.new(0, 0, -1)
end

szv = szv.Unit

local chax = Vector3.new(jvt.X + szv.X * 22, amn.Position.Y, jvt.Z + szv.Z * 22)
local leao = os.clock() + 6

egh:MoveTo(chax)

while os.clock() < leao do
local xged = kxt.Character
local hr = xged and xged:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if not hr or (hr.Position - chax).Magnitude < 4 then
break
end

task.wait(0.15)
end

pcall(function()
egh:MoveTo(amn.Position)
end)

return true
end

function ym.goToSand()
if not ym.onIsland() then

pcall(function()
cib.TeleportToWorld:FireServer(_d("XRoBCUg"))
end)

local ej = os.clock() + 15

while not ym.onIsland() and os.clock() < ej do
task.wait(0.5)
end
end

if not ym.onIsland() then
local xm

for cdsp, ch in ipairs(feen.npcs) do
if ch.name == _d("dRwEDFQK") then
xm = ch
break
end
end

if xm then
feen.go(xm)
task.wait(2)
end
end

if ym.onIsland() then
ym.leaveNpc()
end
end

function ym.spot()
local psm = kxt.Character
local ljzl = psm and psm:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if not ljzl then
return nil
end

local ykcb = ljzl.CFrame.LookVector
local mixr = Vector3.new(ykcb.X, 0, ykcb.Z)

if mixr.Magnitude < 0.01 then
mixr = Vector3.new(0, 0, -1)
end

mixr = mixr.Unit

local ncf = RaycastParams.new()
ncf.FilterType = Enum.RaycastFilterType.Exclude
ncf.FilterDescendantsInstances = { psm }

local function oadl(paaq, yksd)
local qgoq = ljzl.Position + paaq * yksd + Vector3.new(0, 4, 0)
local vwf = workspace:Raycast(qgoq, Vector3.new(0, -18, 0), ncf)

if vwf and ym.zoneAt(vwf.Position) then
return vwf.Position
end
end

for yd, icdt in ipairs({ 4, 7, 10, 2 }) do
local an = oadl(mixr, icdt)

if an then
return an
end
end

local ibq = Vector3.new(-mixr.Z, 0, mixr.X)

for vfc, hz in ipairs({ 4, 8 }) do
for mpa, wyvm in ipairs({ 1, -1 }) do
for owp, gmcf in ipairs({ 1, 0.5 }) do
local gjdi = oadl((ibq * (wyvm * gmcf) + mixr * (1 - gmcf)).Unit, hz)

if gjdi then
return gjdi
end
end
end
end

return nil
end

function ym.turn()
local yfyv = kxt.Character
local yjl = yfyv and yfyv:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if not yjl then
return
end

local gxjf = yjl.CFrame.LookVector
local zp = Vector3.new(gxjf.X, 0, gxjf.Z)

if zp.Magnitude < 0.01 then
zp = Vector3.new(0, 0, -1)
end

zp = zp.Unit

local elb = Vector3.new(-zp.Z, 0, zp.X)

yjl.CFrame = CFrame.lookAt(yjl.Position, yjl.Position + elb)
end

ym.pending = false

pcall(function()
cib.DigUpdate.OnClientEvent:Connect(function(ur)
if ur == _d("dRwEOVQLAV0B") or ur == _d("dRwEKFAWF1QZ") then
ym.pending = false
end
end)
end)

function ym.autoLoop()
local ylr = false

while ym.autoOn and opq() and getgenv().ACBXDigGeneration == yvft do
local nhn = bs and bs.worldBoss
local gn = nhn ~= nil
and type(nhn.holdsDigging) == _d("VwANCEURG18")
and nhn.holdsDigging() == true

if gn then

ylr = true
task.wait(1)
else
if ylr then

ylr = false
ym.goToSand()
end

local wyjr = ym.spot()

if wyjr then
ym.pending = true

local xls = pcall(function()
cib.DigAction:FireServer(_d("YgECGUU"), wyjr)
end)

if not xls then
ym.pending = false
end

local ikvj = os.clock() + 6

while ym.pending and ym.autoOn and os.clock() < ikvj
and getgenv().ACBXDigGeneration == yvft and opq() do
task.wait()
end

ym.pending = false
else
ym.turn()
task.wait(0.25)
end
end
end
end

function ym.autoStart()
local bggv = ym.read()

if not (bggv and ym.bestShovel(bggv)) then
return _d("fxpDGFkXAlQZQwRGFhFVVU5LZBYYXhYIS1URE1YcDQwRHh1DBhdF")
end

local cltd = false

if rz.enabled then
rz.autoFishWanted = false

hfbp(false)
pcall(function()
vncx:UpdateState(false)
end)

cltd = true
end

qwm = true
ym.equipBest()

ym.goToSand()

task.spawn(ym.autoLoop)

return _d("dRwEDFgWEx8") .. (cltd and _d("ETQWH15YMlgGC0teHhIRWEMfWR1UQh0MHVQUVFkUEEtFEBERAQwEXVgHXRoXRQ") or _d(""))
end

pbq:Toggle({
Name = _d("cAAXBBE8HVY"),
Default = false,
Callback = function(zoc)
ym.autoOn = zoc

if not zoc then
ym.pending = false
qwm = false
return
end

task.spawn(function()
local cea = ym.autoStart()

tkan:Notify({
Title = _d("cAAXBBE8HVY"),
Description = cea,
Lifetime = 6,
})
end)
end,
}, _d("VRwEDFgWE24UFh9e"))

function ym.npcRow()
for tkyv, eh in ipairs(feen.npcs) do
if eh.name == _d("dRwEDFQK") then
return eh
end
end
end

function ym.shop(xkxe, jzc)
local cn, cfp, qqo, kkn = pcall(function()
return cib.DigShop:InvokeServer(xkxe, jzc)
end)

if not cn then
return false, _d("ZR0GS1URExEGCwRBWB1CVQ0ERVgVXwYUDkMRGlZb")
end

return cfp == true, qqo, type(kkn) == _d("RRQBB1Q") and kkn or nil
end

function ym.upgrade()
local ikxq = ym.read()

if not ikxq then
return nil, _d("ZR0GS1URExEGCwRBWB1CVQ0ERVgVXwYUDkMRGlZb")
end

local tnax = ym.bestShovel(ikxq)

if tnax and ikxq.equippedShovel ~= tnax then
ym.equipBest()
ikxq = ym.read() or ikxq
end

local ddrg = ikxq.shovels or {}
local fubh = tonumber(ikxq.digs) or 0
local jcc

for tfxt, yaiw in ipairs(ym.data.Shovels) do
if not yaiw.crafted and yaiw.id ~= _d("Qh0MHVQUK1MUEAJS") and ddrg[yaiw.id] ~= true then
local nf = tonumber(yaiw.cost) or math.huge

if nf <= fubh and (not jcc or nf > (tonumber(jcc.cost) or 0)) then
jcc = yaiw
end
end
end

if not jcc then
return nil, _d("fxpDHkEfBlARBktYC1RQEwUEQxwVUxkGS0gdAB8")
end

local rza = ym.npcRow()
local qwt = rza and feen.point(rza)
local irj = kxt.Character
local ikym = irj and irj:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if qwt and ikym and (ikym.Position - qwt).Magnitude > 20 then
feen.go(rza)
task.wait(2.2)

irj = kxt.Character
ikym = irj and irj:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))
end

local feq, jqnd = ym.shop(_d("cwAaOFkXAlQZ"), jcc.id)

if not feq then
return nil, _d("cwAaS0MdEkQGBg8LWA") .. tostring(jqnd)
end

ym.equipBest()

if ym.autoOn then
ym.leaveNpc()
end

return jcc.name
end

function ym.buyLoop()
while ym.buyOn do
local cd = ym.upgrade()

if cd then
tkan:Notify({
Title = _d("cAAXBBE6AUhVMANeDhFd"),
Description = _d("cxoWDFkMVFAbB0tUCQFYBRMOVVgAWRBD") .. cd .. _d("Hw"),
Lifetime = 6,
})

task.wait(3)
else
task.wait(10)
end
end
end

pbq:Toggle({
Name = _d("cAAXBBE6AUhVIQ5CDFRiHQwdVBQ"),
Default = false,
Callback = function(jtn)
ym.buyOn = jtn

if not jtn or ym.buyRunning then
return
end

ym.buyRunning = true

task.spawn(function()
ym.buyLoop()

ym.buyRunning = false
end)
end,
}, _d("VRwEDFgWE24XFhI"))

getgenv().ACBXDigging = ym

co.tab = fgg:Tab({
Name = _d("YhAXH1gWE0I"),

Image = _d(""),
})

co.icon = function()
local wto = gethui()

for uj, zb in ipairs(wto:QueryDescendants(_d("eBgCDFQ0FVMQDw"))) do
if zb.Name == _d("ZRQBIlwZE1Q") then
local bqzy = zb.Parent
local nwdq = bqzy and bqzy:FindFirstChild(_d("ZRQBOEYRAFIdBhl/GRlU"))

if nwdq and nwdq.Text == _d("YhAXH1gWE0I") then
if zb:GetAttribute(_d("cDYhM3IXE3gWDAU")) then
return true
end

zb:SetAttribute(_d("cDYhM3IXE3gWDAU"), true)
zb.Image = _d("")
zb.BackgroundTransparency = 1

local cqo = Color3.fromRGB(168, 170, 176)

local function ocr(dea, whe, togx, kqn, ggzw, dgz)
local nxqq = Instance.new(_d("dwcCBlQ"))

nxqq.Size = UDim2.fromOffset(togx, kqn)
nxqq.Position = UDim2.fromOffset(dea, whe)
nxqq.BackgroundColor3 = cqo
nxqq.BorderSizePixel = 0
nxqq.Parent = zb

if not dgz then
nxqq.BackgroundTransparency = 1

local iur = Instance.new(_d("ZDwwH0MXH1Q"))

iur.Color = cqo
iur.Thickness = 1.3
iur.LineJoinMode = Enum.LineJoinMode.Round
iur.Parent = nxqq
end

if ggzw then
local zra = Instance.new(_d("ZDwgBEMWEUM"))

zra.CornerRadius = UDim.new(0, ggzw)
zra.Parent = nxqq
end

return nxqq
end

local ksf = {
{ 8, 0, 2, 3 },
{ 8, 15, 2, 3 },
{ 0, 8, 3, 2 },
{ 15, 8, 3, 2 },
{ 2, 2, 3, 3 },
{ 13, 2, 3, 3 },
{ 2, 13, 3, 3 },
{ 13, 13, 3, 3 },
}

for qrje, ndw in ipairs(ksf) do
ocr(ndw[1], ndw[2], ndw[3], ndw[4], 0, true)
end

ocr(2, 2, 14, 14, 7, false)
ocr(7, 7, 4, 4, 2, true)

return true
end
end
end

return false
end

task.defer(function()
for lcjg = 1, 20 do
if co.icon() then
break
end

task.wait(0.25)
end
end)

co.configSection = co.tab:Section({
Side = _d("fRAFHw"),
})

co.configSection:Header({
Name = _d("choNDVgfVHwUDQpWHRlUGxc"),
})

co.autoSaveToggle = co.configSection:Toggle({
Name = _d("cAAXBBELFUcQ"),
Default = false,
Callback = function(nmcw)
co.autoSave = nmcw
co.autoSaveAt = 0

if nmcw then
local qyx = co.selected or _d("VRAFCkQUAA")
local eb, rbw = co.save(qyx)

co.selected = qyx
co.lastText = eb and (_d("cAAXBBELFUcQQwRfWFkRAhEERR1U") .. qyx)
or (_d("cAAXBBELFUcQQwRfVFRXHBEYRVgDQxwXDhEeFVgZBg8LWA") .. tostring(rbw))
else
co.lastText = _d("cAAXBBELFUcQQwRXHlo")
end
end,
}, _d("UhoNDVgfK1AAFwRuCxVHEA"))

co.nameInput = co.configSection:Input({
Name = _d("YhQVDhEWFVwQ"),
Placeholder = _d("VFsERREqFVgREA"),
AcceptedCharacters = _d("cBkP"),
Callback = function(fkqr)
co.nameDraft = fkqr
end,
})

co.nameInput.IgnoreConfig = true

co.configSection:Button({
Name = _d("cgcGCkUdVEIUFQ4"),
Callback = function()
local tszd = co.nameDraft or co.nameInput:GetInput()

tszd = type(tszd) == _d("QgERAl8f") and tszd:gsub(_d("b1AQQA"), _d("")):gsub(_d("FAZITw"), _d("")) or _d("")

if tszd == _d("") then
tkan:Dialog({
Title = _d("choNDVgf"),
Description = _d("ZQwTDhEZVF8UDg4RHhtDVRcDVFgHUAMGS1cRBkIBQ0YREQARFwYIXhURQlUXA1RYElgZBkxCWBpQGAZF"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})

return
end

local ibsc, wn = co.save(tszd)

if not ibsc then
co.lastText = _d("YhQVDhEeFVgZBg8LWA") .. tostring(wn)

return
end

co.selected = tszd
co.lastText = _d("cgcGCkUdEBE") .. tszd .. _d("Hw")
co.savesAt = 0

task.defer(function()
task.wait(0.25)

pcall(function()
co.fileDropdown:UpdateSelection(tszd)
end)
end)
end,
})

co.fileDropdown = co.configSection:Dropdown({
Name = _d("YhQVDhEeHV0Q"),
Search = false,
Multi = false,
Required = false,
Options = co.saves(),
Callback = function(aqyc)
local tq = type(aqyc) == _d("RRQBB1Q") and aqyc[1] or aqyc

if type(tq) == _d("QgERAl8f") and tq ~= _d("") then
co.selected = tq
co.selectionShown = tq

pcall(function()
co.fileDropdown:UpdateName(_d("YhQVDhEeHV0QWUs") .. tq)
end)
end
end,
})

co.fileDropdown.IgnoreConfig = true

co.configSection:Button({
Name = _d("fRoCDxELEV0QAB9UHA"),
Callback = function()
local pfj = co.selected or co.fileDropdown.Value
local dl, seg = co.load(pfj)

co.lastText = dl and (_d("fRoCD1QcVA") .. pfj .. _d("Hw")) or (_d("fRoCDxEeFVgZBg8LWA") .. tostring(seg))
end,
})

co.configSection:Button({
Name = _d("YhQVDhEMGxEGBgdUGwBUEQ"),
Callback = function()
local viud = co.selected or co.fileDropdown.Value
local ktfp, lyd = co.save(viud)

co.lastText = ktfp and (_d("ZgcMH1RY") .. viud .. _d("Hw")) or (_d("YhQVDhEeFVgZBg8LWA") .. tostring(lyd))
end,
})

co.configSection:Button({
Name = _d("dRAPDkUdVEIQDw5SDBFVVRAKRx0"),
Callback = function()
local jgxe = co.selected or co.fileDropdown.Value

if type(jgxe) ~= _d("QgERAl8f") or jgxe == _d("") then
co.lastText = _d("YRwAABEZVEIUFQ4RHh1dEEMNWAoHRVs")

return
end

tkan:Dialog({
Title = _d("dRAPDkUdVA") .. jgxe .. _d("Dg"),
Description = _d("ZR0GS1cRGFRVChgRChFcGhUOVVgSQxoOS1URB1pVAgVVWBdQGw0ERVgWVFURDlIXAlQHBg8f"),
Buttons = {
{
Name = _d("dRAPDkUd"),
Callback = function()
local xsq, hv = co.delete(jgxe)

co.lastText = xsq
and (_d("dRAPDkUdEBE") .. jgxe .. _d("Hw"))
or (_d("choWB1VYGl4BQw9UFBFFEFlL") .. tostring(hv))
end,
},
{
Name = _d("chQNCFQU"),
},
},
})
end,
})

co.configSection:Button({
Name = _d("YxAFGVQLHBEZChhF"),
Callback = function()
co.savesAt = 0
co.lastText = _d("YhQVDhEUHUIBQxlUHgZUBgsOVVY")
end,
})

co.configSection:Button({
Name = _d("fBQRABEZBxEUFh9eWBheFAc"),
Callback = function()
local cmpl = co.selected or co.fileDropdown.Value

if type(cmpl) ~= _d("QgERAl8f") or cmpl == _d("") then
co.lastText = _d("YRwAABEZVEIUFQ4RHh1dEEMNWAoHRVs")

return
end

if co.setAutoLoad(cmpl) then
co.lastText = cmpl .. _d("ERkMClULVF4bQxhFGQZFWw")
else
co.lastText = _d("choWB1VYGl4BQxxDEQBUVRcDVFgVRAEMS10XFVVVDgpDExFDWw")
end
end,
})

co.configSection:Button({
Name = _d("chkGCkNYFUQBDEtdFxVV"),
Callback = function()
co.setAutoLoad(_d(""))
co.lastText = _d("fxoXA1gWExEZDApVC1ReG0MYRRkGRVs")
end,
})

co.statusParagraph = co.configSection:Paragraph({
Header = _d("YgECH0QL"),
Body = _d(""),
})

co.miscSection = co.tab:Section({
Side = _d("YxwEA0U"),
})

co.miscSection:Header({
Name = _d("fBwQCA"),
})

co.miscSection:Toggle({
Name = _d("cAAXBBEbGF4GBktWHRpUBwIfWBcaESAq"),
Default = false,
Callback = function(ked)
eauf(ked)
end,
}, _d("XBwQCG4ZAUUaPAhdFwdUKgQOXx0GUAEKBF8"))

co.miscSection:Toggle({
Name = _d("cAAXBBEqG10Z"),
Default = true,
Callback = function(asm)
co.autoRoll = asm

if asm and co.setRollButton then
co.setRollButton(_d("cAAXBGMXGF03Fh9FFxo"), true)
end
end,
}, _d("XBwQCG4ZAUUaPBleFBg"))

co.miscSection:Toggle({
Name = _d("cAAXBBEpAVgWCEtjFxhd"),
Default = true,
Callback = function(ecqy)
co.autoQuickRoll = ecqy

if ecqy and co.setRollButton then
co.setRollButton(_d("YAAKCFoqG10ZIR5FDBtf"), true)
end
end,
}, _d("XBwQCG4ZAUUaPBpEERdaKhEEXRQ"))

co.uiSection = co.tab:Section({
Side = _d("YxwEA0U"),
})

co.uiSection:Header({
Name = _d("ZDw"),
})

co.uiSection:Toggle({
Name = _d("cxQAAFYKG0QbB0tTFAFD"),
Default = true,
Callback = function(fklp)
pcall(function()
tkan:SetAcrylicBlurState(fklp)
end)
end,
}, _d("RBw8CVAbH1YHDB5fHCtTGRYZ"))

function co.widthFactor(iy)
return 1 + math.max(0, (iy or 1) - 1) * 0.8
end

function co.scaleCap()
local giey = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local pby = math.min(120, math.floor(((giey.Y - 40 - 8 - 8) / 500) * 100))

while pby > 50 and (co.baseWidth or 720) * (pby / 100) * co.widthFactor(pby / 100) > giey.X - 16 do
pby = pby - 1
end

return math.max(50, pby)
end

function co.scaleCeiling()
return math.min(1.2, co.scaleCap() / 100)
end

function co.refreshScaleCap()
local zgmi = co.scaleSlider

if not zgmi then
return
end

local yj = co.scaleCeiling()

pcall(function()
zgmi.Settings.Maximum = yj
end)

local mvzo = tonumber(zgmi:GetValue()) or 1

if mvzo > yj then
co.scaleTarget = yj

pcall(function()
zgmi:UpdateValue(yj)
end)
end
end

co.scaleSlider = co.uiSection:Slider({
Name = _d("ZDxDGFIZGFQ"),
Default = 1,
Minimum = 0.5,

Maximum = co.scaleCeiling(),
DisplayMethod = _d("ZxQPHlQ"),
Precision = 2,

Callback = function(ozk)
co.scalePending = tonumber(ozk)
co.scalePendingAt = os.clock()
end,
onInputComplete = function(kmla)
local niuz = co.scaleCeiling()

co.scaleTarget = math.clamp(tonumber(kmla) or co.scalePending or 1, 0.5, niuz)
co.scalePending = nil

co.scaleAnchor = nil

co.saveUi()
end,
}, _d("RBw8GFIZGFQ"))

co.refreshScaleCap()

co.themeDropdown = co.uiSection:Dropdown({
Name = _d("ZR0GBlRCVGcaCg8"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = co.themeOrder,
Callback = function(gtqa)
local wgac = type(gtqa) == _d("RRQBB1Q") and gtqa[1] or gtqa

if type(wgac) == _d("QgERAl8f") and co.presets[wgac] then
co.theme = wgac
co.accent = nil
co.applyTheme()

pcall(function()
co.themeDropdown:UpdateName(_d("ZR0GBlRCVA") .. wgac)
end)

co.saveUi()
end
end,
}, _d("RBw8H1kdGVQ"))

co.accentPicker = co.uiSection:Colorpicker({
Name = _d("cBYADl8MVFIaDwRECg"),
Default = Color3.fromRGB(168, 170, 176),
Alpha = 0,
Callback = function(ijti)
co.accent = ijti
co.applyTheme()
co.saveUi()
end,
}, _d("RBw8ClIbEV8B"))

co.codesSection = co.tab:Section({
Side = _d("YxwEA0U"),
})

co.codesSection:Header({
Name = _d("choHDkI"),
})

co.codeText = _d("YxAHDlQVBxEQFQ5DAVRSGgcOEQwcWAZDDFAVEREGCwJBC1RGHBcDHVgbXxBDDkcdBkhVAARECBhUVQwNEQsRUhoND0JW")

function co.setCodeText(moa)
co.codeText = moa

pcall(function()
co.codeParagraph:UpdateBody(moa)
end)
end

function co.redeemCodes()
if co.redeeming then
return
end

local fyo = cib.RedeemCode
local mgug = to:FindFirstChild(_d("fBoHHl0dJ1IHChtFCw"))
local adlm = mgug and mgug:FindFirstChild(_d("choHDnUZAFA"))
local wjw, vmj = false, nil

if fyo and adlm then
wjw, vmj = pcall(function()
return require(adlm)
end)
end

local dubx = wjw and type(vmj) == _d("RRQBB1Q") and vmj.Codes or nil

if not fyo or type(dubx) ~= _d("RRQBB1Q") then
co.setCodeText(_d("ZR0KGBEOEUMGCgRfWBtXVRcDVFgTUBgGS1kZBxEbDEtSFxBUVQ8CQgxUXgdDBV5YBlQRBg5cWAZUGAwfVFY"))
return
end

local uinh = {}

for dsz in pairs(dubx) do
uinh[#uinh + 1] = dsz
end

table.sort(uinh)

local muuk = #uinh

co.redeeming = true
co.setCodeText(_d("YxAHDlQVHV8SQw") .. muuk .. _d("ERYMD1QLWh9b"))

task.spawn(function()
local lk, fadb, uz = 0, 0, 0
local wgds = {}

for rxpe = 1, muuk do
if not opq() then
break
end

local fxo = uinh[rxpe]
local ffrt, dnlg = pcall(function()
return fyo:InvokeServer(fxo)
end)

local gql = ffrt and type(dnlg) == _d("RRQBB1Q") and dnlg.success == true
local eig = ffrt and type(dnlg) == _d("RRQBB1Q") and tostring(dnlg.message or _d("")) or tostring(dnlg or _d(""))

if not gql and string.find(string.lower(eig), _d("RhQKHw"), 1, true) then
task.wait(3.5)

ffrt, dnlg = pcall(function()
return fyo:InvokeServer(fxo)
end)

gql = ffrt and type(dnlg) == _d("RRQBB1Q") and dnlg.success == true
eig = ffrt and type(dnlg) == _d("RRQBB1Q") and tostring(dnlg.message or _d("")) or tostring(dnlg or _d(""))
end

if gql then
lk = lk + 1
elseif string.find(string.lower(eig), _d("UBkRDlAcDQ"), 1, true) then
fadb = fadb + 1
else
uz = uz + 1

if #wgds < 6 then
wgds[#wgds + 1] = fxo .. _d("C1U") .. (eig ~= _d("") and eig or _d("XxpDCl8LA1QH"))
end
end

co.setCodeText(string.format(_d("FBFDBFdYUVVVTksUHFRDEAcOVBURVVlDTlVYFV0HBgpVAVgRUAdLQx0SRAYGDx8"), rxpe, muuk, lk, fadb, uz))

if rxpe < muuk and opq() then
task.wait(1.8)
end
end

local ebmi = {
string.format(_d("YxAHDlQVEVVVRg8dWBVdBwYKVQFUWRQHSxQcWBEHBg1ECxFVVUYPERcSEVAHRQ"), lk, fadb, uz, muuk),
}

for juc, rsj in ipairs(wgds) do
ebmi[#ebmi + 1] = rsj
end

co.redeeming = false
co.setCodeText(table.concat(ebmi, _d("Ow")))
end)
end

co.codesSection:Button({
Name = _d("YxAHDlQVVFAZD0tSFxBUBg"),
Callback = function()
co.redeemCodes()
end,
})

co.codeParagraph = co.codesSection:Paragraph({
Header = _d("choHDkI"),
Body = co.codeText,
})

co.scriptSection = co.tab:Section({
Side = _d("YxwEA0U"),
})

co.scriptSection:Header({
Name = _d("YhYRAkEM"),
})

co.scriptSection:Button({
Name = _d("ZBsPBFAcVEIWEQJBDA"),
Callback = function()
pcall(function()
tkan:Unload()
end)

getgenv().ACBXWindow = nil
getgenv().ACBXAllowReload = nil
end,
})

task.spawn(function()
while opq() do

if os.clock() >= co.savesAt then
co.savesAt = os.clock() + 3

local ahta = co.saves()
local gbo = table.concat(ahta, _d("TQ"))

if gbo ~= co.knownSaves then
co.knownSaves = gbo

pcall(function()
co.fileDropdown:ClearOptions()
co.fileDropdown:InsertOptions(ahta)
end)
end

if co.selected and co.selectionShown ~= co.selected then
co.selectionShown = co.selected

pcall(function()
co.fileDropdown:UpdateSelection(co.selected)
end)
end
end

if co.autoSave and os.clock() >= co.autoSaveAt then
co.autoSaveAt = os.clock() + 60

local pa = co.selected or _d("VRAFCkQUAA")
local uhqy, xmxh = co.save(pa)

co.selected = pa
co.lastText = uhqy and (_d("cAAXBBELFUcQB0s") .. pa .. _d("ERQXSw") .. os.date(_d("FD1ZTnw")) .. _d("Hw"))
or (_d("cAAXBBELFUcQQw1QERhUEVlL") .. tostring(xmxh))
end

if os.clock() >= co.themeAt then
co.themeAt = os.clock() + 3
co.applyTheme()
end

if os.clock() >= co.capAt then
co.capAt = os.clock() + 2
co.refreshScaleCap()
end

if os.clock() >= co.statusAt then
co.statusAt = os.clock() + 2

local xkqi = co.autoLoadName()
local stko = table.concat({
_d("cAAXBBEUG1ARWUs") .. (xkqi or _d("XxoNDg")),
_d("YhQVDkJCVA") .. tostring(#co.saves()),
co.lastText,
}, _d("Ow"))

if stko ~= co.shownStatus then
co.shownStatus = stko

pcall(function()
co.statusParagraph:UpdateBody(stko)
end)
end
end

task.wait(0.25)
end
end)

task.spawn(function()
while opq() do

local kld = co.scalePending

if kld and os.clock() - (co.scalePendingAt or 0) > 0.35 then
local lwj = co.scaleCeiling()
local ogxs = math.clamp(kld, 0.5, lwj)

co.scalePending = nil

if math.abs(ogxs - co.scaleTarget) > 0.002 then
co.scaleTarget = ogxs
co.scaleAnchor = nil

co.saveUi()
end
end

if math.abs(co.scaleTarget - co.scale) > 0.002 then
local ffl = co.guiRoot()

if ffl and not co.baseWidth then
co.baseWidth = ffl.Size.X.Offset
co.baseHeight = ffl.Size.Y.Offset
end

local dmxy = co.baseWidth or 720
local woc = co.baseHeight or 500
local fg = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local goou, jumu = 8, 40

if not co.scaleAnchor and ffl then

local vfoz = co.widthFactor(co.scaleTarget)
local vly, zbi = dmxy * vfoz * co.scaleTarget, woc * co.scaleTarget
local ugee = ffl.AbsolutePosition

co.scaleAnchor = Vector2.new(
math.clamp(ugee.X, goou, math.max(goou, fg.X - vly - goou)),
math.clamp(ugee.Y, jumu, math.max(jumu, fg.Y - zbi - goou))
)
end

local puzi = co.scaleAnchor

co.scale = co.scale + (co.scaleTarget - co.scale) * 0.18

local quu = co.widthFactor(co.scale)

pcall(function()
tkan:SetScale(co.scale)

if ffl then
local foyu = math.floor(dmxy * quu)

ffl.Size = UDim2.fromOffset(foyu, math.floor(woc))

local afo = ffl:FindFirstChild(_d("choNH1QWAA"))

if afo then
local dyjv = ffl:FindFirstChild(_d("YhwHDlMZBg"))
local mftj = math.floor(dyjv and dyjv.Size.X.Scale * foyu or foyu * 0.325)

afo.Size = UDim2.new(0, math.max(0, foyu - mftj), 1, 0)
end
end
end)

if ffl and puzi then
local wxzc, fwrc = dmxy * quu * co.scale, woc * co.scale
local zahg = math.clamp(puzi.X, goou, math.max(goou, fg.X - wxzc - goou))
local aqhp = math.clamp(puzi.Y, jumu, math.max(jumu, fg.Y - fwrc - goou))

local pwti = ffl.Parent and ffl.Parent.AbsolutePosition or Vector2.zero

pcall(function()
ffl.Position = UDim2.fromOffset(math.floor(zahg - pwti.X), math.floor(aqhp - pwti.Y))
end)
end
else

co.scaleAnchor = nil
end

task.wait()
end
end)

bs.misc.tierLabels = {}
bs.misc.labelToTier = {}

bs.misc.expSection = bs.misc.tab:Section({
Side = _d("fRAFHw"),
})

bs.misc.expSection:Header({
Name = _d("dA0TDlURAFgaDRgRiOum94zTvg"),
})

bs.misc.claimToggle = bs.misc.expSection:Toggle({
Name = _d("cAAXBBEbGFAcDg"),
Default = false,
Callback = function(kcuw)
local qcc = bs.misc.expeditions

qcc.enabled = kcuw
qcc.claimAt = 0

if kcuw then
qcc.askedAt = 0
qcc.request()
end
end,
}, _d("UAAXBG4bGFAcDg"))

bs.misc.rewardToggle = bs.misc.expSection:Toggle({
Name = _d("cAAXBBEbGF4GBktDHQNQBwcY"),
Default = false,
Callback = function(yx)
local ygpk = bs.misc.expeditions

ygpk.autoClose = yx

if yx then
ygpk.closeRewards()
end
end,
}, _d("VA0TNFANAF4qAAdeCxE"))

bs.misc.startToggle = bs.misc.expSection:Toggle({
Name = _d("cAAXBBELAFAHFw"),
Default = false,
Callback = function(ago)
local nxl = bs.misc.expeditions

if ago and not next(nxl.tiersWanted) then
nxl.autoStart = false

pcall(function()
bs.misc.startToggle:UpdateState(false)
end)

tkan:Dialog({
Title = _d("cAAXBBELAFAHF0tfHRFVBkMKEQwdVAc"),
Description = _d("YRwAABEZABEZBgpCDFReGwZLRRERQ1UKBREMHFRVNwJUClRVBwwbVRcDX1UFAkMLAB9VJgpCAVRFFAgOQlgAWRBDCFkdFUEQEB8RGxVDERBHETYdVh0XBlAKEREBCw4RChVDEBAfHVgVXxFDCl8BVF8ADglUClReE0MfWR0ZERYCBREKAV9VAh8RFxpSEE0"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})

return
end

nxl.autoStart = ago
nxl.startedAt = {}

if ago then
nxl.askedAt = 0
nxl.request()
end
end,
}, _d("UAAXBG4LAFAHFw"))

for feu, cwtb in ipairs(bs.misc.expeditions.tiers()) do
table.insert(bs.misc.tierLabels, tostring(cwtb.name))
bs.misc.labelToTier[tostring(cwtb.name)] = cwtb.id
end

bs.misc.building = true

bs.misc.tierDropdown = bs.misc.expSection:Dropdown({
Name = _d("ZRwGGQ"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = bs.misc.tierLabels,
Callback = function(gcb)
local dspv = bs.misc.expeditions

if bs.misc.building then
return
end

local tiu = {}
local tvxy = {}

if type(gcb) == _d("RRQBB1Q") then
for fnm, sts in pairs(gcb) do
local lam = bs.misc.labelToTier[tostring(fnm)]

if sts and lam then
tiu[lam] = true
table.insert(tvxy, tostring(fnm))
end
end
end

table.sort(tvxy)
dspv.tiersWanted = tiu

pcall(function()
bs.misc.tierDropdown:UpdateName(#tvxy > 0 and (_d("ZRwGGRGa9JNV") .. table.concat(tvxy, _d("HVU"))) or _d("ZRwGGRGa9JNVDQRfHQ"))
end)
end,
}, _d("RRwGGQ"))

task.defer(function()
bs.misc.building = false
end)

bs.misc.expSection:Button({
Name = _d("chkCAlxYGl4C"),
Callback = function()
local sfnc = bs.misc.expeditions

if not sfnc.claim() then
tkan:Notify({
Title = _d("dA0TDlURAFgaDRg"),
Description = _d("fxoXA1gWExEdAhgRGxtcEEMJUBsfEQwGHx8"),
Lifetime = 5,
})
end
end,
})

bs.misc.expSection:Button({
Name = _d("YhANDxELEV0QAB9UHA"),
Callback = function()
local ssss = bs.misc.expeditions

if not next(ssss.tiersWanted) then
tkan:Notify({
Title = _d("dA0TDlURAFgaDRg"),
Description = _d("YRwAABEZABEZBgpCDFReGwZLRRERQ1UKBREMHFRVBxleCBBeAg1LVxEGQgFN"),
Lifetime = 5,
})

return
end

local xuf = {}
local de = 0

for ge, aih in ipairs(ssss.tiers()) do
if ssss.tiersWanted[aih.id] and ssss.status(aih.id) == _d("UAMCAl0ZFl0Q") then
if ssss.start(aih.id, xuf) then
de = de + 1
end
end
end

if de == 0 then
tkan:Notify({
Title = _d("dA0TDlURAFgaDRg"),
Description = _d("fxoXA1gWExEWDB5dHFRTEEMYVBYAC1UXA1RYB1QZBghFHRARAQoOQwtUUAcGS1AUBlQUBxIRFwFFWUMEQ1gAWRARDhEZBlRVDQRFWBJeABFLVBQdVhwBB1RYF1AHBxgRHhtDVRcDVBVa"),
Lifetime = 6,
})
end
end,
})

bs.misc.expInfo = bs.misc.tab:Section({
Side = _d("YxwEA0U"),
})

bs.misc.expInfo:Header({
Name = _d("dA0TDlURAFgaDRg"),
})

bs.misc.expParagraph = bs.misc.expInfo:Paragraph({
Header = _d("YgECH0QL"),
Body = bs.misc.expeditions.text(),
})

bs.misc.expeditions.loadRewards()

bs.misc.expRewardParagraph = bs.misc.expInfo:Paragraph({
Header = _d("chkCAlwdEA"),
Body = bs.misc.expeditions.rewardsText(),
})

task.spawn(function()
local fwop = bs.misc.expeditions
local itw = ii(_d("YgwNCHQABFQRCh9YFxpC"), 3)

if itw then
itw.OnClientEvent:Connect(function(boq)
if type(boq) ~= _d("RRQBB1Q") then
return
end

fwop.state = boq

fwop.offset = (tonumber(boq.now) or os.time()) - os.time()
fwop.syncedAt = os.clock()

if type(boq.rewards) == _d("RRQBB1Q") and #boq.rewards > 0 then
table.insert(fwop.rewardLog, 1, {
at = os.time(),
title = tostring(boq.rewardTitle or _d("dA0TDlURAFgaDQ")),
items = boq.rewards,
})

while #fwop.rewardLog > 8 do
table.remove(fwop.rewardLog)
end

fwop.saveRewards()

if fwop.autoClose then

task.delay(0.35, fwop.closeRewards)
end
end
end)
end

while opq() do

if os.clock() - fwop.askedAt > 1 and os.clock() - fwop.syncedAt > 20 then
fwop.request()
end

if fwop.enabled then
fwop.claim()
end

if fwop.autoClose then
fwop.closeRewards()
end

if fwop.autoStart and next(fwop.tiersWanted) then
local tw = {}

for pvm, uk in ipairs(fwop.tiers()) do
if fwop.tiersWanted[uk.id] and fwop.status(uk.id) == _d("UAMCAl0ZFl0Q") then
if fwop.start(uk.id, tw) then
break
end
end
end
end

local obby = fwop.text()

if bs.misc.expParagraph and obby ~= bs.misc.expShown then
bs.misc.expShown = obby

pcall(function()
bs.misc.expParagraph:UpdateBody(obby)
end)
end

local px = fwop.rewardsText()

if bs.misc.expRewardParagraph and px ~= fwop.rewardsShown then
fwop.rewardsShown = px

pcall(function()
bs.misc.expRewardParagraph:UpdateBody(px)
end)
end

task.wait(0.75)
end
end)

bs.misc.util = {
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

function bs.misc.util.hook()
local yqdk = bs.misc.util

if yqdk.hooked then
return
end

yqdk.hooked = true

if cib.SyncCollection then
cib.SyncCollection.OnClientEvent:Connect(function(eex)
if type(eex) == _d("RRQBB1Q") then
yqdk.profile = eex
yqdk.profileAt = os.clock()
end
end)
end

if cib.SyncAchievements then
cib.SyncAchievements.OnClientEvent:Connect(function(pt)
if type(pt) == _d("RRQBB1Q") then
yqdk.ach = pt
end
end)
end

if cib.SyncQuests then
cib.SyncQuests.OnClientEvent:Connect(function(tnqe)
if type(tnqe) == _d("RRQBB1Q") and type(tnqe.list) == _d("RRQBB1Q") then
yqdk.quests = tnqe
end
end)
end

if cib.SyncPeriodicQuests then
cib.SyncPeriodicQuests.OnClientEvent:Connect(function(bbgx, clo)
if bbgx == _d("RhAGAF0B") and type(clo) == _d("RRQBB1Q") and type(clo.list) == _d("RRQBB1Q") then
yqdk.weekly = clo
end
end)
end
end

function bs.misc.util.askProfile()
local cna = bs.misc.util

if os.clock() - cna.askedAt < 1.5 then
return
end

cna.askedAt = os.clock()

if cib.RequestSync then
pcall(function()
cib.RequestSync:FireServer()
end)
end
end

function bs.misc.util.currentProfile()
local ria = bs.misc.util

if type(ria.profile) ~= _d("RRQBB1Q") then
ria.askProfile()

return nil
end

if os.clock() - ria.profileAt > 20 then
ria.askProfile()
end

return ria.profile
end

function bs.misc.util.forgetProfile()
local ytkt = bs.misc.util

ytkt.profile = nil
ytkt.profileAt = 0
ytkt.askedAt = 0
end

function bs.misc.util.indexedTotal(mi)
local uhrw = 0

for wtg, crb in pairs((mi and mi.cardIndex) or {}) do
if crb then
uhrw = uhrw + 1
end
end

return uhrw
end

function bs.misc.util.indexPending(lo)
local fkn = {}

if type(lo) ~= _d("RRQBB1Q") then
return fkn
end

local ah = bs.misc.util.indexedTotal(lo)
local svr = lo.indexMilestones or {}

for altr = 1, 30 do
if not svr[altr] and altr * 5 <= ah then
table.insert(fkn, altr)
end
end

return fkn
end

function bs.misc.util.indexFrame()
local rj = spkj:FindFirstChild(_d("chQRD3gWEFQNJB5Y"))

return rj and rj:FindFirstChild(_d("eBsHDkk+BlAYBg"))
end

function bs.misc.util.clickButton(kdgv)
if not kdgv then
return false
end

if firesignal then
local hi = pcall(firesignal, kdgv.MouseButton1Click)

if hi then
return true
end
end

return pcall(function()
kdgv:Activate()
end)
end

function bs.misc.util.closeIndex()
local vfwm = bs.misc.util.indexFrame()

if not vfwm or not vfwm.Visible then
return false
end

pcall(function()
local ys = to:FindFirstChild(_d("fBoHHl0dJ1IHChtFCw"))
local ewg = ys and ys:FindFirstChild(_d("fBANHnwZGlASBhk"))

if ewg then
require(ewg).close(vfwm)
end
end)

bs.misc.util.clickButton(vfwm:FindFirstChild(_d("chkMGFQ6AUUBDAU")))

pcall(function()
vfwm.Visible = false
end)

return true
end

function bs.misc.util.claimIndex()
local he = bs.misc.util

if os.clock() < he.indexAt then
return false
end

local ez = he.currentProfile()

if not ez then
return false
end

local xadj = he.indexPending(ez)
local fe = xadj[1]

if not fe then
return false
end

local xhmw = he.indexedTotal(ez)
local cg = he.indexAsked

if type(cg) == _d("RRQBB1Q") and cg.milestone == fe and cg.total == xhmw then
return false
end

he.indexAsked = { milestone = fe, total = xhmw }

pcall(function()
cib.ClaimIndexReward:FireServer(fe)
end)

he.indexAt = os.clock() + 1.5

he.profile = nil
he.profileAt = 0

task.delay(0.4, he.closeIndex)

return true
end

function bs.misc.util.achPending()
local bll = {}
local dc = bs.misc.util.ach

if type(dc) ~= _d("RRQBB1Q") then
return bll
end

for onp, gg in ipairs(dc.chains or {}) do
for cpkm, dyiz in ipairs(gg.levels or {}) do
if dyiz.reached and not dyiz.claimed then
table.insert(bll, { chain = tostring(gg.id), index = dyiz.index, name = tostring(dyiz.name or dyiz.index) })
end
end
end

return bll
end

function bs.misc.util.claimAchievement()
local bad = bs.misc.util

if os.clock() < bad.achAt then
return false
end

if type(bad.ach) ~= _d("RRQBB1Q") then
if os.clock() - bad.achAskedAt > 4 and cib.RequestAchievements then
bad.achAskedAt = os.clock()

pcall(function()
cib.RequestAchievements:FireServer()
end)
end

return false
end

for eg, qyz in ipairs(bad.achPending()) do
pcall(function()
cib.ClaimAchievement:FireServer(qyz.chain, qyz.index)
end)

bad.achAt = os.clock() + 1

task.delay(1, function()
if cib.RequestAchievements then
pcall(function()
cib.RequestAchievements:FireServer()
end)
end
end)

return true
end

return false
end

function bs.misc.util.questRows()
local cl = bs.misc.util
local tcq = {}

for gler, iqvj in ipairs({ { list = _d("VRQKB0g"), payload = cl.quests }, { list = _d("RhAGAF0B"), payload = cl.weekly } }) do
for pyc, ful in ipairs((type(iqvj.payload) == _d("RRQBB1Q") and iqvj.payload.list) or {}) do
if type(ful) == _d("RRQBB1Q") then
table.insert(tcq, { list = iqvj.list, index = pyc, quest = ful })
end
end
end

return tcq
end

function bs.misc.util.questPending()
local jzwg = {}

for tmn, wpyq in ipairs(bs.misc.util.questRows()) do
local shl = wpyq.quest

if not shl.claimed and (tonumber(shl.progress) or 0) >= (tonumber(shl.target) or math.huge) then
table.insert(jzwg, wpyq)
end
end

return jzwg
end

function bs.misc.util.askQuests()
local dzn = bs.misc.util

if os.clock() - dzn.questAskedAt > 4 and cib.RequestQuests then
dzn.questAskedAt = os.clock()

pcall(function()
cib.RequestQuests:FireServer()
end)
end

if os.clock() - dzn.weeklyAskedAt > 4 and cib.RequestPeriodicQuests then
dzn.weeklyAskedAt = os.clock()

pcall(function()
cib.RequestPeriodicQuests:FireServer(_d("RhAGAF0B"))
end)
end
end

function bs.misc.util.claimQuest()
local jdj = bs.misc.util

if os.clock() < jdj.questAt then
return false
end

if type(jdj.quests) ~= _d("RRQBB1Q") and type(jdj.weekly) ~= _d("RRQBB1Q") then
jdj.askQuests()

return false
end

for strm, izvm in ipairs(jdj.questPending()) do
if izvm.list == _d("RhAGAF0B") then
if cib.ClaimPeriodicQuest then
pcall(function()
cib.ClaimPeriodicQuest:FireServer(_d("RhAGAF0B"), izvm.index)
end)
end
else
pcall(function()
cib.ClaimQuest:FireServer(izvm.index)
end)
end

jdj.questAt = os.clock() + 1.2

task.delay(1, function()
jdj.askQuests()
end)

return true
end

return false
end

function bs.misc.util.packCatalog()
local abl = bs.misc.util

if abl.packs then
return abl.packs
end

local rvdj = {}
local kbd, veo = pcall(function()
return require(to.ModuleScripts.PackData)
end)

if kbd and type(veo) == _d("RRQBB1Q") and type(veo.Packs) == _d("RRQBB1Q") then
for xhfa, souj in ipairs(veo.Packs) do
if souj.id then
table.insert(rvdj, { id = tostring(souj.id), name = tostring(souj.name or souj.id) })
end
end
end

abl.packs = rvdj

return rvdj
end

function bs.misc.util.packUnlocked(tlko, bbus)
if type(tlko) ~= _d("RRQBB1Q") then
return true
end

local ms, ocdi = pcall(function()
return require(to.ModuleScripts.PackData)
end)
local tz, wnh = pcall(function()
return require(to.ModuleScripts.PackSlotData)
end)

if not (ms and tz) then
return true
end

local swig = ocdi.ById and ocdi.ById[bbus]

if not swig then
return false
end

local nsqa, wg = pcall(wnh.isPackUnlocked, swig, tlko)

return (not nsqa) or wg == true
end

function bs.misc.util.visit(ieb)
local mq = workspace:FindFirstChild(_d("fyUgGA"))
local bjyk = mq and mq:FindFirstChild(ieb)
local bcqk = kxt.Character
local dxbu = bcqk and bcqk:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))
local lz = bjyk and (bjyk:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ")) or bjyk:FindFirstChildWhichIsA(_d("cxQQDmEZBkU"), true))

if not (lz and dxbu) then
return nil
end

local rnkn = dxbu.CFrame

dxbu.CFrame = CFrame.new((lz.CFrame * CFrame.new(0, 0, -5)).Position)

return rnkn
end

function bs.misc.util.returnTo(hqhf)
local kyvm = kxt.Character
local wxt = kyvm and kyvm:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if wxt and hqhf then
wxt.CFrame = hqhf
end
end

function bs.misc.util.applyPacks(xjbq, qrqp)
local jfti = bs.misc.util

if os.clock() < jfti.packAt then
return false, _d("ZhQKHxEZVFwaDg5fDFo")
end

local ovu = jfti.currentProfile()

if not ovu then
return false, _d("YxACD1gWExEMDB5DWARDGgUCXR1UHFUXGUhYFVYUCgURERoRFEMYVBsbXxFN")
end

if qrqp and (tonumber(ovu.packSlots) or 1) < 2 then
return false, _d("YhkMHxFKVF8QBg9CWABZEEMOSQwGUFUTClITVEIZDB8RHxVcEBMKQgta")
end

if not (cib.OpenPackShop and cib.EquipPack) then
return false, _d("ZR0GS0EZF1pVEANeCFRYBkMFXgxUWBtDH1kRBxESAgZUWAJUBxACXhZa")
end

jfti.packAt = os.clock() + 8

task.spawn(function()
local ltg = jfti.visit(_d("fxoBB1QLB1gbBBg"))

if not ltg then
return
end

pcall(function()
cib.OpenPackShop:FireServer(_d("QRQAAG4VEUMWCwpfDA"))
end)

task.wait(1.2)

if xjbq then
pcall(function()
cib.EquipPack:FireServer(xjbq, 1)
end)
end

if qrqp then
task.wait(0.8)

pcall(function()
cib.EquipPack:FireServer(qrqp, 2)
end)
end

task.wait(0.8)
jfti.returnTo(ltg)
jfti.forgetProfile()
end)

return true
end

function bs.misc.util.accScore(yat)
local zvyp = yat.effects or {}

return (zvyp.luckBonus or 0) * 10
+ ((zvyp.luckMult or 1) - 1) * 200
+ ((zvyp.borderLuckMult or 1) - 1) * 200
- ((zvyp.rollCdMult or 1) - 1) * 30
end

function bs.misc.util.accCatalog()
local toxp = bs.misc.util

if toxp.accessories then
return toxp.accessories
end

local zrww = {}

for rwa, dh in ipairs({ _d("cBYADkILG0MMJwpFGQ"), _d("cBYADkILG0MMJwpFGUY") }) do
local pye, crl = pcall(function()
return require(to.ModuleScripts[dh])
end)

if pye and type(crl) == _d("RRQBB1Q") and type(crl.Accessories) == _d("RRQBB1Q") then
for pldr, fy in ipairs(crl.Accessories) do
if fy.id then
table.insert(zrww, {
id = tostring(fy.id),
name = tostring(fy.name or fy.id),
shop = rwa,

shopName = rwa == 1 and _d("cBYADkILG0MMQzhZFwQ") or _d("fAwQH1QKHV4AEEt8GRo"),
raidable = fy.raidShopOnly == true,
hidden = fy.hidden == true,
requirements = fy.requirements or {},
score = bs.misc.util.accScore(fy),
})
end
end
end
end

toxp.accessories = zrww

return zrww
end

function bs.misc.util.accOwned(puva)
local gzl = {}

for tgef, rfw in ipairs((puva and puva.accessories) or {}) do
gzl[tostring(rfw)] = true
end

return gzl
end

function bs.misc.util.accMeets(xiqx, lmu)
for dqk, apeu in ipairs(lmu.requirements) do
local cmu = xiqx.cards and xiqx.cards[apeu.cardId]
local ysqb = type(cmu) == _d("RRQBB1Q") and (tonumber(cmu[apeu.borderLevel]) or 0) or 0

if ysqb < (tonumber(apeu.amount) or 0) then
return false
end
end

return true
end

function bs.misc.util.accPlan(va)
local wkdd = bs.misc.util
local rnau = wkdd.accOwned(va)
local cws = {}

for rp, mdan in ipairs(wkdd.accCatalog()) do
if not rnau[mdan.id] and not mdan.raidable and not mdan.hidden and wkdd.accMeets(va, mdan) then
local iqnp = cws[mdan.shop]

if not iqnp or mdan.score > iqnp.score then
cws[mdan.shop] = mdan
end
end
end

return cws
end

function bs.misc.util.accPicks(pmr)
local jwe = bs.misc.util
local tpfy = jwe.accOwned(pmr)
local swwm, ep

for pyn, nvd in ipairs(jwe.accCatalog()) do
if tpfy[nvd.id] then
if not swwm or nvd.score > swwm.score then
swwm = nvd
end
elseif not nvd.raidable and not nvd.hidden and jwe.accMeets(pmr, nvd) then
if not ep or nvd.score > ep.score then
ep = nvd
end
end
end

return swwm, ep
end

function bs.misc.util.equipBest()
local wxty = bs.misc.util
local msf = wxty.currentProfile()

if not msf or not cib.EquipAccessory then
return false
end

local nw = wxty.accPicks(msf)

if not nw or msf.equippedAccessory == nw.id then
return nw ~= nil
end

pcall(function()
cib.EquipAccessory:FireServer(nw.id)
end)

task.delay(1.5, function()
wxty.forgetProfile()
end)

return true
end

function bs.misc.util.buyBest()
local ciez = bs.misc.util

if os.clock() < ciez.accAt then
return false, _d("ZhQKHxEZVFwaDg5fDFo")
end

if jl.busy(1) or jl.busy(2) then
ciez.accNote = _d("eBtDChEaFUUBDw4RVVRQVRADXghURQcKGxEPG0QZB0tUFhARHBc")
return false, _d("eBtDChEaFUUBDw4RVVRQVRADXghURQcKGxEPG0QZB0tUFhARHBdF")
end

local brt = ciez.currentProfile()

if not brt then
ciez.accNote = _d("YxACD1gWExEMDB5DWARDGgUCXR1UHFUUAl0UVEUHGktQHxVYG0MCX1gVEQYGCF4WEA")
return false, _d("YxACD1gWExEMDB5DWARDGgUCXR1UHFUXGUhYFVYUCgURERoRFEMYVBsbXxFN")
end

local yel = ciez.accPlan(brt)
local btd = {}

for ass = 1, 2 do
if yel[ass] then
table.insert(btd, yel[ass].name)
end
end

if #btd == 0 then
ciez.accNote = _d("fxoXA1gWExEbBhwRDRpdGgAAVBxUSBAXSxxYAFkQQwhQChBCVQUEQ1gdRVUCGVRYGl4BQwJfWABZEEMIXhQYVBYXAl4W")
return false, _d("fxoXA1gWExEbBhwRGxVfVQEOEQ0aXRoAAFQcVEgQF0scWABZEEMIUAoQQlUFBENYHUVVAhlUWBpeAUMCX1gAWRBDCF4UGFQWFwJeFlo")
end

ciez.accAt = os.clock() + 12
ciez.accNote = _d("ZhQPAFgWExEBDEtFEBERFgweXwwRQ1UFBENY") .. table.concat(btd, _d("ERQNDxE"))

task.spawn(function()
for son = 1, 2 do
local npjo = yel[son]

if npjo then
local oeu = son == 1 and _d("QQARGEQRAFQRBw") or _d("RhQFDVQUGVAbBgpFCwNQEwUOXQs")
local gvj = son == 1 and cib.OpenAccessoryShop or cib.OpenAccessoryShop2
local nkc = son == 1 and cib.BuyAccessory or cib.BuyAccessory2
local efq = oeu and ciez.visit(oeu) or nil

if not efq then
local jre = workspace:FindFirstChild(_d("fyUgGA"))
local wid = jre and jre:FindFirstChild(oeu)

if wid and os.clock() - (ciez.worldAskedAt or 0) > 25 then

ciez.worldAskedAt = os.clock()
ciez.accNote = _d("ch0CGVAbAFQHQwVeDFRDEAIPSFhZEQERElgWExEUBApYFlRCHQwZRRQN")
elseif not wid and os.clock() - (ciez.worldAskedAt or 0) > 25 then

ciez.worldAskedAt = os.clock()
ciez.accNote = _d("fxpDCF4NGkUQEUtYFlRFHQoYEQ8bQxkHSxxYAFAeCgVWWABZEEMHXhoWSFUXDl0dBF4HFw")

pcall(function()
cib.TeleportToWorld:FireServer(_d("XRoBCUg"))
end)

task.wait(4.5)
efq = ciez.visit(oeu)
end
end

if efq and gvj and nkc then

task.wait(0.9)

pcall(function()
gvj:FireServer()
end)

task.wait(1.2)

pcall(function()
nkc:FireServer(npjo.id)
end)

task.wait(0.9)
ciez.returnTo(efq)
ciez.accNote = _d("cxoWDFkMVA") .. tostring(npjo.name)
elseif not efq then
ciez.accNote = _d("choWB1VYGl4BQxlUGRdZVRcDVFgXXgANH1QKVBxVFxlIWBVWFAoFEREaERRDBl4VEV8B")
end

task.wait(0.6)
end
end

ciez.forgetProfile()

for luw = 1, 8 do
if type(ciez.profile) == _d("RRQBB1Q") then
break
end

ciez.askProfile()
task.wait(0.7)
end

ciez.equipBest()
end)

return true, table.concat(btd, _d("HVU"))
end

function bs.misc.util.indexText()
local ixuy = bs.misc.util

if type(ixuy.profile) ~= _d("RRQBB1Q") then
return _d("YxACD1gWExEMDB5DWBdQBwdLWBYQVA1NRR8")
end

local visj = ixuy.indexPending(ixuy.profile)
local ygpn = 0

for eqa, yrd in pairs(ixuy.profile.indexMilestones or {}) do
if yrd then
ygpn = ygpn + 1
end
end

local byv = tostring(ixuy.indexedTotal(ixuy.profile)) .. _d("ERYCGVULVFgbBw5JHRAdVQ") .. tostring(ygpn) .. _d("ERoFSwJIVEMQFApDHAcRFg8KWBURVQ")

if #visj > 0 then
byv = byv .. _d("OycGClUBThE") .. table.concat(visj, _d("HVU"))
end

return byv
end

function bs.misc.util.achText()
local hxp = bs.misc.util

if type(hxp.ach) ~= _d("RRQBB1Q") then
return _d("YxACD1gWExEUAANYHQJUGAYFRQtaH1s")
end

local jsy = hxp.achPending()
local rmt = 0

for olp, ukh in ipairs(hxp.ach.chains or {}) do
for ytz in ipairs(ukh.levels or {}) do
rmt = rmt + 1
end
end

return tostring(#jsy) .. _d("ERoFSw") .. tostring(rmt) .. _d("ERQAA1gdAlQYBgVFC1RDEAIPSA")
end

function bs.misc.util.questText()
local vxmy = bs.misc.util

if type(vxmy.quests) ~= _d("RRQBB1Q") and type(vxmy.weekly) ~= _d("RRQBB1Q") then
return _d("YxACD1gWExEEFg5CDAcfW00")
end

local ltb, pxd = 0, 0

for vsbv, drd in ipairs(vxmy.questPending()) do
if drd.list == _d("RhAGAF0B") then
pxd = pxd + 1
else
ltb = ltb + 1
end
end

local hsa = type(vxmy.quests) == _d("RRQBB1Q") and #(vxmy.quests.list or {}) or 0
local hoo = type(vxmy.weekly) == _d("RRQBB1Q") and #(vxmy.weekly.list or {}) or 0

return tostring(ltb) .. _d("ERoFSw") .. tostring(hsa) .. _d("ERECAl0BVEMQAg9Icg")
.. tostring(pxd) .. _d("ERoFSw") .. tostring(hoo) .. _d("EQIGDloUDREHBgpVAQ")
end

function bs.misc.util.packText()
local ua = bs.misc.util
local vhi = ua.profile

if type(vhi) ~= _d("RRQBB1Q") then
return _d("YxACD1gWExEMDB5DWARQFggYH1Za")
end

local function ky(fav)
for kbs, idpu in ipairs(ua.packCatalog()) do
if idpu.id == fav then
return idpu.name
end
end

return tostring(fav)
end

local ipxf = _d("YhkMHxFJThE") .. ky(vhi.equippedPack)

if (tonumber(vhi.packSlots) or 1) >= 2 then
ipxf = ipxf .. _d("OyYPBEVYRgtV") .. ky(vhi.equippedPack2)
else
ipxf = ipxf .. _d("OyYPBEVYRgtVBApcHQRQBhBLXxcAERoUBVQc")
end

return ipxf
end

function bs.misc.util.accText()
local mxqd = bs.misc.util
local cddm = mxqd.profile

if type(cddm) ~= _d("RRQBB1Q") then
return _d("YxACD1gWExEMDB5DWBVSFgYYQhcGWBAQRR9W")
end

local qc = mxqd.accPicks(cddm)
local svvz = mxqd.accPlan(cddm)
local tgh = _d("XxoNDg")

for tm, le in ipairs(mxqd.accCatalog()) do
if le.id == cddm.equippedAccessory then
tgh = le.name .. _d("EV0") .. le.shopName .. _d("GA")
end
end

local mow = _d("dAQWAkEIEVVPQw") .. tgh

if qc then
mow = mow .. _d("OzcGGEVYG0YbBg8LWA") .. qc.name
end

mow = mow .. _d("OzQACFQLB14HGktiEBtBT0M") .. (svvz[1] and svvz[1].name or _d("XxoXA1gWExEbBhw"))
mow = mow .. _d("OzgaGEUdBlgaFhgRNRVfT0M") .. (svvz[2] and svvz[2].name or _d("XxoXA1gWExEbBhw"))

if mxqd.accNote then
mow = mow .. _d("OzkCGEVYAEMcE1ER") .. mxqd.accNote
end

return mow
end

bs.misc.util.hook()
bs.misc.util.askProfile()

bs.misc.indexSection = bs.misc.tab:Section({
Side = _d("fRAFHw"),
})

bs.misc.indexSection:Header({
Name = _d("chQRDxExGlUQG0vB5+e2"),
})

bs.misc.indexToggle = bs.misc.indexSection:Toggle({
Name = _d("cAAXBBEbGFAcDg"),
Default = false,
Callback = function(sc)
bs.misc.util.indexOn = sc
bs.misc.util.indexAt = 0

bs.misc.util.indexAsked = nil
end,
}, _d("UAAXBG4bGFAcDjQD"))

bs.misc.indexSection:Button({
Name = _d("chkCAlxYGl4C"),
Callback = function()
local roh = bs.misc.util

roh.indexAt = 0
roh.indexAsked = nil

if not roh.claimIndex() then
tkan:Notify({
Title = _d("chQRDxExGlUQGw"),
Description = _d("fxpDBlgUEUIBDAVUWB1CVREOUBwNEQEMS1IUFVgYTQ"),
Lifetime = 5,
})
end
end,
})

bs.misc.claimSection = bs.misc.tab:Section({
Side = _d("fRAFHw"),
})

bs.misc.claimSection:Header({
Name = _d("cBYLAlQOEVwQDR9CWFIRJBYOQgwHEYX85Lc"),
})

bs.misc.achToggle = bs.misc.claimSection:Toggle({
Name = _d("cAAXBBEbGFAcDktQGxxYEBUOXB0aRQY"),
Default = false,
Callback = function(hmfj)
bs.misc.util.achOn = hmfj
bs.misc.util.achAt = 0

if hmfj and cib.RequestAchievements then
pcall(function()
cib.RequestAchievements:FireServer()
end)
end
end,
}, _d("UAAXBG4bGFAcDjRQGxxYEBUOXB0aRQY"))

bs.misc.questToggle = bs.misc.claimSection:Toggle({
Name = _d("cAAXBBEbGFAcDktADRFCARA"),
Default = false,
Callback = function(dzf)
bs.misc.util.questOn = dzf
bs.misc.util.questAt = 0
bs.misc.util.questAskedAt = 0
bs.misc.util.weeklyAskedAt = 0

if dzf then
bs.misc.util.askQuests()
end
end,
}, _d("UAAXBG4bGFAcDjRADRFCARA"))

bs.misc.claimSection:Button({
Name = _d("chkCAlxYFV0ZQwVeDw"),
Callback = function()
local yb = bs.misc.util

yb.achAt = 0
yb.questAt = 0

local pgbz = yb.claimAchievement()
local tgsa = yb.claimQuest()

if not (pgbz or tgsa) then
tkan:Notify({
Title = _d("cBYLAlQOEVwQDR9CWFIRJBYOQgwH"),
Description = _d("fxoXA1gWExEcEEtDHRVVDEMfXlgXXRQKBh8"),
Lifetime = 5,
})
end
end,
})

bs.misc.packSection = bs.misc.tab:Section({
Side = _d("fRAFHw"),
})

bs.misc.packSection:Header({
Name = _d("chQRDxEoFVIeEEvB5/qF"),
})

bs.misc.packSection:Paragraph({
Header = _d("ZQIMS0IUG0UG"),
Body = _d("YRwAAEJYFUEFDxIRFxpdDEMcWR0aEQwMHhEIBlQGEEtwCARdDEMbUBsfQllDCVQbFUQGBktFEBERBhQCRRscEQICB1oLVEUaQx9ZHVRcEBEIWRkaRVs"),
})

local bwr = {}
local slm = {}

for ecu, jeqv in ipairs(bs.misc.util.packCatalog()) do
table.insert(bwr, jeqv.name)
slm[jeqv.name] = jeqv.id
end

bs.misc.packSlotOne = nil
bs.misc.packSlotTwo = nil

bs.misc.packDropdownOne = bs.misc.packSection:Dropdown({
Name = _d("YhkMHxFJ"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = bwr,
Callback = function(knoj)
local gzd = type(knoj) == _d("RRQBB1Q") and knoj[1] or knoj

bs.misc.packSlotOne = slm[tostring(gzd)]
end,
}, _d("QhkMH25J"))

bs.misc.packDropdownTwo = bs.misc.packSection:Dropdown({
Name = _d("YhkMHxFK"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = bwr,
Callback = function(doz)
local giav = type(doz) == _d("RRQBB1Q") and doz[1] or doz

bs.misc.packSlotTwo = slm[tostring(giav)]
end,
}, _d("QhkMH25K"))

bs.misc.packSection:Button({
Name = _d("cAUTB0hYBFAWCBg"),
Callback = function()
local nxse = bs.misc.util
local eaw = bs.misc.packSlotOne
local tbbq = bs.misc.packSlotTwo

if not eaw then
tkan:Notify({
Title = _d("chQRDxEoFVIeEA"),
Description = _d("YRwAABEZVEEUAAARHhtDVRAHXgxUAFUFAkMLAB8"),
Lifetime = 5,
})

return
end

local lt, bfb = nxse.applyPacks(eaw, tbbq)

if not lt then
tkan:Dialog({
Title = _d("chQRDxEoFVIeEA"),
Description = bfb,
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})
end
end,
})

bs.misc.cards = {
rarityLabels = { _d("cBkP"), _d("fxoRBlAU"), _d("dhoPDw"), _d("YxQKBVMXAw"), _d("ZBsKHVQKB1AZ") },
borderOf = { Normal = 1, Gold = 2, Rainbow = 3, Universal = 4 },
mergeOn = false,
deconOn = false,
mergeWanted = {},
deconWanted = {},
mergeAt = 0,
deconAt = 0,
mergeDone = _d("fxoXA1gWExEGBgVFWA1UAQ"),
deconDone = _d("fxoXA1gWExEGBgVFWA1UAQ"),

inFlight = false,

interval = 3600,
manualGap = 20,
manualAt = 0,

protectedPrefixes = { weather = true, boss = true, raid = true, wb = true, fish = true, hw = true, event = true },

deconExceptions = { weather_sayaka = true, weather_caesar = true },

deconConfirmed = false,
burnAskedAt = 0,
}

function bs.misc.cards.isProtected(say, mzh)
local iibg = bs.misc.cards
local kno = tostring(say or _d(""))
local ikb = kno:match(_d("b104ChwCRBxMPkAYJw"))

if not (ikb and iibg.protectedPrefixes[ikb]) then
return false
end

return not (iibg.deconExceptions[kno] and mzh == 2)
end

function bs.misc.cards.burnAllowed(bupf)
local wtsz = bs.misc.cards
local wgsc = wtsz.wantedFor(_d("VRAABF8vFV8BBg8"))

if not (wgsc == nil or wgsc[3] or wgsc[4]) then
wtsz.deconConfirmed = false

return true
end

if wtsz.deconConfirmed then
return true
end

if bupf then
return false
end

if os.clock() < (wtsz.burnAskedAt or 0) then
return false
end

wtsz.burnAskedAt = os.clock() + 20

tkan:Dialog({
Title = _d("cwARBREqFVgbAQRGWBtDVTYFWA4RQwYCBxEbFUMREFQ"),
Description = _d("cAAXBBEcEVIaDRhFCgFSAUMYVBYQQlUGHVQKDREWDBtIWB1fVRcDVFgZUAEAA1gWExEHDBxCWBVfEUMIUBYaXgFDCVRYAV8RDAVUVlQ")
.. _d("ZhACH1kdBh1VAQRCC1gRBwICVVgWXgYQRxEPG0MZB0tTFwdCWUMNWAscWBsERxEwFV0ZDBxUHRoRFA0PER0CVBsXS1IZBlUGQwpDHVRZEA8PERoVUh5DDlgMHFQHQxxQAVo"),
Buttons = {
{
Name = _d("cwARBREMHFQY"),
Callback = function()
wtsz.deconConfirmed = true
wtsz.deconAt = 0
wtsz.manualAt = 0

pcall(function()
bs.misc.deconToggle:UpdateState(true)
end)
end,
},
{
Name = _d("chQNCFQU"),
Callback = function()
pcall(function()
bs.misc.deconToggle:UpdateState(false)
end)
end,
},
},
})

return false
end

function bs.misc.cards.wantedFor(lab)
local xos = bs.misc.cards[lab] or {}

if next(xos) == nil or xos[0] then
return nil
end

return xos
end

function bs.misc.cards.npcFor(lsad)
local wuaq = workspace:FindFirstChild(_d("fyUgGA"))

if not wuaq then
return nil
end

local coi = lsad and _d("VwAQDm4WBFI") or _d("VRAABF8LAEMAAB9uFgRS")

for nlti, pddc in ipairs(wuaq:GetChildren()) do
if pddc:GetAttribute(_d("fyUgIlU")) == coi then
return pddc
end
end

local kbmc = lsad and { _d("fhoTA10B"), _d("XhoTB0gd") } or { _d("Yh0CHl0Z"), _d("eRQVDmUPG3UUBxg") }

for bphn, lp in ipairs(wuaq:GetChildren()) do
for nec, gfoc in ipairs(kbmc) do
if lp.Name == gfoc then
return lp
end
end
end

local qgr = lsad and { _d("UhQRDxEVEUMSCgVW"), _d("XhoTA10B") } or { _d("VRAABF8LAEMAAB9YFxo"), _d("Qh0CHl0Z") }

for bou, edsy in ipairs(wuaq:GetChildren()) do
for vwi, ht in ipairs(edsy:GetDescendants()) do
if ht:IsA(_d("ZRAbH30ZFlQZ")) and ht.Text ~= _d("") then
local fpw = ht.Text:lower()

for pz, txfl in ipairs(qgr) do
if fpw:find(txfl, 1, true) then
return edsy
end
end

break
end
end
end

return nil
end

function bs.misc.cards.rarityText(yg)
local hgw = bs.misc.cards.wantedFor(yg)

if not hgw then
return _d("cBkP")
end

local ebn = {}

for sfn, eq in pairs(bs.misc.cards.borderOf) do
if hgw[eq] then
table.insert(ebn, sfn)
end
end

if #ebn == 0 then
return _d("cBkP")
end

table.sort(ebn)

return table.concat(ebn, _d("HVU"))
end

function bs.misc.cards.run(rhu, wo, flxz)
local nrex = bs.misc.cards
local dgd = bs.misc.util
local mkmm = rhu and _d("XBARDFQ5AA") or _d("VRAABF85AA")

if flxz then
if os.clock() < nrex[mkmm] then
return false, _d("fxoXS1UNEREMBh8f")
end
elseif os.clock() < nrex.manualAt then
return false, _d("ZhQKHxEZVFwaDg5fDFo")
end

if nrex.inFlight then
return false, _d("cBsMH1kdBhEWAhlVWABDHBNLWAtUUBkRDlAcDREHFgVfERpWWw")
end

local xbme = jl.busy(1) and 1 or (jl.busy(2) and 2 or nil)
local aihe = os.clock() - (dsra.floorAt or 0) < 90
local wdpd = xbme ~= nil and jl.towerSlot() == xbme and aihe

if xbme and not wdpd then
return false, _d("eBtDChEaFUUBDw4RVVRFHQZLRQodQVUUBEQUEBEQDQ8REQAf")
end

if jzfp.battlePending and os.time() < (jzfp.battlePendingUntil or 0) then
return false, _d("cFUBCkUMGFRVChgRCwBQBxcCXx9UHFUXA1RYAEMcE0tGFwFdEUMIUBYXVBlDAkVW")
end

if not rhu and not nrex.burnAllowed() then
return false, _d("choNDVgKGREnAgJfGhtGWjYFWA4RQwYCBxEeHUMGF0U")
end

local mrr = nrex.npcFor(rhu)

if not mrr then
return false, rhu
and _d("fhoTA10BVFgGQwVeDFRYG0MfWREHERgCGxFVVEUHAh1UFFRFGkMDWBVUUBsHS0EKEUIGQwJFWBVWFAoFHw")
or _d("ZR0GS1UdF14bEB9DDRdFVS07clgdQlUNBEVYHV9VFwNYC1RcFBNLHFgAQxQVDl1YAF5VCh8RGRpVVRMZVAsHERwXS1AfFVgbTQ")
end

local ujhs = rhu and cib.OpenFuseDialog or cib.OpenDeconstructDialog
local dplz = rhu and cib.FuseCards or cib.DeconstructCards

if not (ujhs and dplz) then
return false, _d("ZR0CHxERBxEbDB8RERoRAQsCQlgTUBgGS0cdBkIcDAUf")
end

local zwz = rhu and _d("XBARDFQvFV8BBg8") or _d("VRAABF8vFV8BBg8")
local iyi = nrex.wantedFor(zwz)

nrex.manualAt = os.clock() + nrex.manualGap

if flxz then
nrex[mkmm] = os.clock() + nrex.interval
end

nrex.inFlight = true

task.spawn(function()

local dwx = nil

local function qtm(ve, rwcj)
if rhu then
nrex.mergeDone = ve
else
nrex.deconDone = ve
end

if rwcj and flxz then
nrex[mkmm] = os.clock() + 120
end

nrex.inFlight = false
end

local me = dgd.visit(mrr.Name)

if not me then
qtm(_d("ch0CGVAbAFQHQwJCWBpeAUMZVBkQSFVOS0MdAEMMCgVWWB1fVRccXlgZWBsWH1QLWg"), true)

return
end

task.wait(0.9)

local sdvj = nil
local oc = ujhs.OnClientEvent:Connect(function(oknx)
if type(oknx) == _d("RRQBB1Q") then
sdvj = oknx
end
end)

for hjeg = 1, 3 do
pcall(function()
ujhs:FireServer()
end)

for ipp = 1, 20 do
if sdvj then
break
end

task.wait(0.3)
end

if sdvj then
break
end

task.wait(1.5)
end

oc:Disconnect()
dgd.returnTo(me)

if type(sdvj) ~= _d("RRQBB1Q") then
qtm(_d("ZR0GS1URFV0aBEtVERARGwwfERkaQgIGGRFVVEMQFxlIERpWVQoFEQwDXlUOAl8NAFQGTQ"), true)

return
end

local ns = {}

for rrm, pdan in ipairs(sdvj) do
local may = tonumber(pdan.borderLevel)
local omb = pdan.cardId or pdan.id

if may and (not iyi or iyi[may])
and (rhu or not bs.misc.cards.isProtected(omb, may)) then
table.insert(ns, pdan)
end
end

if #ns == 0 then

bs.misc.cards.closeFrame(rhu)
qtm(_d("fxoXA1gWExEBDEtCHRpVVQUEQ1g") .. bs.misc.cards.rarityText(zwz) .. _d("Hw"))

return
end

if wo then

local bsz = {}

for ima, smtz in ipairs(ns) do
if (tonumber(smtz.count) or 0) >= wo then
table.insert(bsz, smtz)
end
end

if #bsz == 0 then
bs.misc.cards.closeFrame(rhu)
qtm(_d("fxpD") .. bs.misc.cards.rarityText(zwz) .. _d("EQcMHBEQFUJV") .. wo .. _d("ERYMG1gdBxEMBh8f"))

return
end

ns = bsz

table.sort(ns, function(jvx, xxhj)
return (tonumber(jvx.count) or 0) < (tonumber(xxhj.count) or 0)
end)

local leie, lxo = {}, 0

for th, tfei in ipairs(ns) do
local qj = tonumber(tfei.count) or 0

if #leie > 0 and lxo + qj > wo then
break
end

table.insert(leie, tfei)
lxo = lxo + qj
end

ns = leie
dwx = lxo
end

local onx = 0

bs.misc.cards.closeFrame(rhu)

if rhu then
if not iyi then

pcall(function()
dplz:FireServer(_d("UBkP"), nil)
end)

onx = #ns
else
local supx = {}

for mffc, kzx in ipairs(ns) do
table.insert(supx, { kzx.cardId, tonumber(kzx.borderLevel) })
end

pcall(function()
dplz:FireServer(_d("QhAPDlIMEVUqAgdd"), supx)
end)

onx = #supx
end
else
local oonh = {}

for jbdx, yei in ipairs(ns) do
if #oonh >= 25 then
break
end

table.insert(oonh, { yei.cardId, tonumber(yei.borderLevel), _d("UBkP") })
end

pcall(function()
dplz:FireServer(oonh)
end)

onx = #oonh
end

qtm(_d("YhANHxE") .. tostring(onx) .. _d("EQcMHA") .. (onx == 1 and _d("") or _d("Qg"))
.. _d("EV0") .. bs.misc.cards.rarityText(zwz) .. _d("GA")
.. (dwx and (_d("HVU") .. tostring(dwx) .. _d("ERYCGVUL")) or _d("")))
end)

return true
end

function bs.misc.cards.closeFrame(zlrw)
pcall(function()
local uwrg = zlrw and { _d("dwAQDnYNHQ"), _d("dwAQDncKFVwQ") } or { _d("dRAABF8LAEMAAB92DR0"), _d("dRAABF8LAEMAAB93ChVcEA") }
local qd = require(to.ModuleScripts.MenuManager)
local ib = spkj:FindFirstChild(uwrg[1])
local imf = ib and ib:FindFirstChild(uwrg[2])

if imf then
qd.close(imf)
end

if not zlrw then
local azt = ib and ib:FindFirstChild(_d("dRAABF8LAEMAAB9jGQBUBiUZUBUR"))

if azt then
qd.close(azt)
else
azt = spkj:FindFirstChild(_d("dRAABF8LAEMAAB9jGQBUBiUZUBUR"))

if azt then
qd.close(azt)
end
end
end
end)
end

function bs.misc.cards.refresh(bwx)

local hwo = bwx and bs.misc.mergeParagraph or bs.misc.deconParagraph

if not hwo then
return
end

pcall(function()
hwo:UpdateBody(bwx
and bs.misc.cards.mergeText()
or bs.misc.cards.deconText())
end)
end

function bs.misc.cards.mergeText()
local zfk = bs.misc.cards

return _d("YxQRAkUREUJPQw") .. zfk.rarityText(_d("XBARDFQvFV8BBg8")) .. _d("Ow") .. zfk.mergeDone
end

function bs.misc.cards.deconText()
local twnf = bs.misc.cards

return _d("YxQRAkUREUJPQw") .. twnf.rarityText(_d("VRAABF8vFV8BBg8")) .. _d("Ow") .. twnf.deconDone
.. _d("OyIGCkUQEUNZQwleCwcdVREKWBxYEQIMGV0cVFMaEBgdWBJYBgsCXx9YET0CB10XA1QQDUtQFhAREBUOXwxUUhQRD0JYFUMQQwVUDhFDVRAOXwxa")
end

bs.misc.skill = {
on = false,
at = 0,
mainWanted = {},
raidWanted = {},

mainOrder = {},
raidOrder = {},
last = _d("fxoXA1gWExEXDB5WEAARDAYf"),
shown = _d(""),
}

function bs.misc.skill.branchMap(dts)
local nmay = {}

for pit, ppj in ipairs(vs.Trees[dts].branches) do
nmay[ppj.name] = ppj
end

return nmay
end

function bs.misc.skill.branchLabels(vy)
local jjgi = {}

for ncm, nu in ipairs(vs.Trees[vy].branches) do
table.insert(jjgi, nu.name)
end

return jjgi
end

function bs.misc.skill.wantedFrom(tgjf, doyl)
local prey = {}
local jcd = bs.misc.skill.branchMap(doyl)

if type(tgjf) == _d("RRQBB1Q") then
for bdl, tu in pairs(tgjf) do
if tu and jcd[tostring(bdl)] then
prey[jcd[tostring(bdl)].id] = true
end
end
end

return prey
end

function bs.misc.skill.ordered(dsh, bxp)
local yugn = {}
local ngjl = {}

for we, qy in ipairs(bxp or {}) do
if dsh[qy] then
table.insert(yugn, qy)
ngjl[qy] = true
end
end

for aux in pairs(dsh) do
if not ngjl[aux] then
table.insert(yugn, aux)
end
end

return yugn
end

function bs.misc.skill.branchById(okb)
local dmbs = {}

for zyus, pyod in ipairs(vs.Trees[okb].branches) do
dmbs[pyod.id] = pyod
end

return dmbs
end

function bs.misc.skill.upgrade()
local ki = bs.misc.skill
local vxb = bs.misc.util
local vzl = vxb.currentProfile and vxb.currentProfile()

if type(vzl) ~= _d("RRQBB1Q") then
return false, _d("fxpDG0MXElgZBktIHQAf")
end

local qgy = vzl.skillTrees or {}
local fmzj = { [1] = ki.mainOrder, [2] = ki.raidOrder }
local inld = nil

for lad, sb in ipairs(vs.Trees) do
local zqs = qgy[sb.id]
local xzd = tonumber(vzl[sb.pointsField or _d("Qh4KB10oG1gbFxg")]) or 0
local sbn = bs.misc.skill.branchById(lad)

if type(zqs) == _d("RRQBB1Q") and xzd > 0 then
for tov, qcl in ipairs(fmzj[lad] or {}) do
local wnn = sbn[qcl]

if wnn and not inld then
local mluq = vs.getBranchLevel(qgy, sb.id, wnn.id) or 0
local dhy = mluq + 1

if dhy <= wnn.levels then
local yaj = wnn.id .. dhy
local vh = 1

if type(wnn.costs) == _d("RRQBB1Q") and tonumber(wnn.costs[dhy]) then
vh = tonumber(wnn.costs[dhy])
elseif tonumber(wnn.cost) then
vh = tonumber(wnn.cost)
end

if vh <= xzd and vs.isAvailable(qgy, sb.id, yaj) then
inld = { tree = sb.id, node = yaj, name = wnn.name, level = dhy }
end
end
end
end
end
end

if not inld then
return false, _d("fxoXA1gWExEBDEtTDQ0RDAYfHw")
end

cib.BuySkillNode:FireServer(inld.tree, inld.node)

if vxb.askProfile then
pcall(vxb.askProfile)
end

ki.last = _d("cxoWDFkMVA") .. inld.name .. _d("EQ") .. tostring(inld.level)

return true
end

function bs.misc.skill.text()
local fhe = bs.misc.skill
local ywnm = bs.misc.util
local az = ywnm.currentProfile and ywnm.currentProfile()

if type(az) ~= _d("RRQBB1Q") then
return _d("YRoKBUULThFKaQ") .. fhe.last
end

local tfv = az.skillTrees or {}
local btx = {}

local tmde = { [1] = fhe.mainOrder, [2] = fhe.raidOrder }

for tmv, uncc in ipairs(vs.Trees) do
local akew = tonumber(az[uncc.pointsField or _d("Qh4KB10oG1gbFxg")]) or 0
local uth = {}
local puf = bs.misc.skill.branchById(tmv)

for tft, ne in ipairs(tmde[tmv] or {}) do
local ijd = puf[ne]

if ijd then
local zza = vs.getBranchLevel(tfv, uncc.id, ijd.id) or 0
table.insert(uth, ijd.name .. _d("EQ") .. tostring(zza) .. _d("Hg") .. tostring(ijd.levels))
end
end

btx[#btx + 1] = uncc.name .. _d("C1U") .. tostring(akew) .. _d("EQUXGA")
.. (#uth > 0 and (_d("EVhD") .. table.concat(uth, _d("HVU"))) or _d("EVhDBV4MHFgbBEtBERdaEAc"))
end

btx[#btx + 1] = fhe.last

return table.concat(btx, _d("Ow"))
end

bs.misc.mergeSection = bs.misc.tab:Section({
Side = _d("fRAFHw"),
})

bs.misc.mergeSection:Header({
Name = _d("fBARDFRYhK7Szw"),
})

bs.misc.mergeToggle = bs.misc.mergeSection:Toggle({
Name = _d("cAAXBBEVEUMSBg"),
Default = false,
Callback = function(kxhp)
local lgjg = bs.misc.cards

lgjg.mergeOn = kxhp

lgjg.mergeAt = (kxhp and co.loading) and (os.clock() + lgjg.interval) or 0
end,
}, _d("UAAXBG4VEUMSBg"))

bs.misc.mergeDropdown = bs.misc.mergeSection:Dropdown({
Name = _d("YxQRAkUREUI"),
Search = false,
Multi = true,
Required = false,
Default = { _d("cBkP") },
Options = bs.misc.cards.rarityLabels,
Callback = function(keq)
local fmjm = {}

if type(keq) == _d("RRQBB1Q") then
for cizw, jfb in pairs(keq) do
if jfb then
if cizw == _d("cBkP") then
fmjm[0] = true
else
fmjm[bs.misc.cards.borderOf[tostring(cizw)]] = true
end
end
end
end

bs.misc.cards.mergeWanted = fmjm
bs.misc.cards.refresh(true)
end,
}, _d("QxQRAkUREUI"))

bs.misc.mergeSection:Button({
Name = _d("fBARDFRYGl4C"),
Callback = function()
local qt, ral = bs.misc.cards.run(true)

if not qt then
tkan:Notify({
Title = _d("fBARDFQ"),
Description = ral,
Lifetime = 6,
})
end
end,
})

bs.misc.mergeSection:Button({
Name = _d("fBARDFRYTQE"),
Callback = function()

local wanz, vnfm = bs.misc.cards.run(true, 90)

if not wanz then
tkan:Notify({
Title = _d("fBARDFRYTQE"),
Description = vnfm,
Lifetime = 6,
})
end
end,
})

bs.misc.mergeParagraph = bs.misc.mergeSection:Paragraph({
Header = _d("YgECH0QL"),
Body = bs.misc.cards.mergeText(),
})

bs.misc.accSection = bs.misc.tab:Section({
Side = _d("YxwEA0U"),
})

bs.misc.accSection:Header({
Name = _d("cBYADkILG0McBhgRiOuj+w"),
})

bs.misc.accToggle = bs.misc.accSection:Toggle({
Name = _d("cAAXBBEaEUIBQwpSGxFCBgwZSA"),
Default = false,
Callback = function(wetx)
bs.misc.util.accOn = wetx
bs.misc.util.accAt = 0
end,
}, _d("UAAXBG4aEUIBPApSGxFCBgwZSA"))

bs.misc.accBuyToggle = bs.misc.accSection:Toggle({
Name = _d("cAAXBBEaAUhVAQ5CDA"),
Default = false,
Callback = function(qjy)
bs.misc.util.accBuyOn = qjy
bs.misc.util.accBuyAt = 0
bs.misc.util.accAt = 0
end,
}, _d("UAAXBG4aAUgqAQ5CDA"))

bs.misc.accSection:Button({
Name = _d("cwAaS1MdB0U"),
Callback = function()
local kwhv, cm = bs.misc.util.buyBest()

if not kwhv then
tkan:Notify({
Title = _d("cBYADkILG0McBhg"),
Description = cm,
Lifetime = 6,
})
end
end,
})

bs.misc.accSection:Button({
Name = _d("dAQWAkFYFlQGFw"),
Callback = function()
if not bs.misc.util.equipBest() then
tkan:Notify({
Title = _d("cBYADkILG0McBhg"),
Description = _d("fxoXA1gWExEXBh9FHQYRHBBLXg8aVBFDElQMWg"),
Lifetime = 5,
})
end
end,
})

bs.misc.accParagraph = bs.misc.accSection:Paragraph({
Header = _d("YgECH0QL"),
Body = bs.misc.util.accText(),
})

bs.misc.claimInfo = bs.misc.tab:Section({
Side = _d("YxwEA0U"),
})

bs.misc.claimInfo:Header({
Name = _d("fBwQCFQUGFAbBgRECw"),
})

bs.misc.indexParagraph = bs.misc.claimInfo:Paragraph({
Header = _d("chQRDxExGlUQGw"),
Body = bs.misc.util.indexText(),
})

bs.misc.achParagraph = bs.misc.claimInfo:Paragraph({
Header = _d("cBYLAlQOEVwQDR9C"),
Body = bs.misc.util.achText(),
})

bs.misc.questParagraph = bs.misc.claimInfo:Paragraph({
Header = _d("YAAGGEUL"),
Body = bs.misc.util.questText(),
})

bs.misc.packParagraph = bs.misc.claimInfo:Paragraph({
Header = _d("YRQAAEI"),
Body = bs.misc.util.packText(),
})

bs.misc.skillSection = bs.misc.tab:Section({
Side = _d("YxwEA0U"),
})

bs.misc.skillSection:Header({
Name = _d("Yh4KB11YIEMQBkvB5/iC"),
})

bs.misc.skillToggle = bs.misc.skillSection:Toggle({
Name = _d("cAAXBBENBFYHAg9U"),
Default = false,
Callback = function(wrhc)
local tx = bs.misc.skill

if wrhc and not (next(tx.mainWanted) or next(tx.raidWanted)) then
tx.on = false

pcall(function()
bs.misc.skillToggle:UpdateState(false)
end)

tkan:Dialog({
Title = _d("YRwAABEZVFMHAgVSEFRXHBEYRQ"),
Description = _d("ch0MBEIdVFABQwdUGQdFVQwFVFgWQxQNCFlYHV9VFwNUWDlQHA1LRQoRVFUMGREqFVgRQx9DHREREREEQRwbRhtDRhE")
.. _d("cAAXBBENBFYHAg9UWBtfGRpLQggRXxEQS0EXHV8BEEtGEBFDEEMSXg1UQRoKBUVYHUVb"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})

return
end

tx.on = wrhc
tx.at = 0
end,
}, _d("UAAXBG4NBFYHAg9U"))

bs.misc.skillMainDropdown = bs.misc.skillSection:Dropdown({
Name = _d("fBQKBREMBlQQ"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = bs.misc.skill.branchLabels(1),
Callback = function(rqzl)
local jscl = bs.misc.skill
local lvh = jscl.wantedFrom(rqzl, 1)

jscl.mainWanted = lvh
jscl.mainOrder = jscl.ordered(lvh, jscl.mainOrder)
jscl.shown = _d("")
end,
}, _d("XBQKBW4MBlQQ"))

bs.misc.skillRaidDropdown = bs.misc.skillSection:Dropdown({
Name = _d("YxQKDxEMBlQQ"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = bs.misc.skill.branchLabels(2),
Callback = function(vi)
local ft = bs.misc.skill
local jlds = ft.wantedFrom(vi, 2)

ft.raidWanted = jlds
ft.raidOrder = ft.ordered(jlds, ft.raidOrder)
ft.shown = _d("")
end,
}, _d("QxQKD24MBlQQ"))

pcall(function()
bs.misc.skillMainDropdown:UpdateSelection({})
end)

pcall(function()
bs.misc.skillRaidDropdown:UpdateSelection({})
end)

bs.misc.skillParagraph = bs.misc.skillSection:Paragraph({
Header = _d("YgECH0QL"),
Body = bs.misc.skill.text(),
})

task.spawn(function()
local pqz = bs.misc.util

while opq() do
if pqz.indexOn or pqz.achOn or pqz.questOn or pqz.accOn or pqz.accBuyOn then
pqz.currentProfile()
end

if pqz.indexOn then
pqz.claimIndex()
end

if pqz.achOn then
pqz.claimAchievement()
end

if pqz.questOn then

if os.clock() - pqz.questAskedAt > 20 or os.clock() - pqz.weeklyAskedAt > 20 then
pqz.askQuests()
end

pqz.claimQuest()
end

if pqz.accOn and os.clock() >= pqz.accAt then
pqz.accAt = os.clock() + 3
pqz.equipBest()
end

local nzq = bs.misc.cards

if not nzq.inFlight then
if nzq.mergeOn and os.clock() >= nzq.mergeAt then
nzq.run(true, nil, true)
elseif nzq.deconOn and os.clock() >= nzq.deconAt then
nzq.run(false, nil, true)
end
end

if nzq.mergeDone ~= nzq.mergeShown then
nzq.mergeShown = nzq.mergeDone

pcall(function()
bs.misc.mergeParagraph:UpdateBody(bs.misc.cards.mergeText())
end)
end

if nzq.deconDone ~= nzq.deconShown then
nzq.deconShown = nzq.deconDone

pcall(function()
bs.misc.deconParagraph:UpdateBody(bs.misc.cards.deconText())
end)
end

local acji = bs.misc.skill

if acji.on and os.clock() >= acji.at then

acji.at = os.clock() + 2
acji.upgrade()
end

local xkp = bs.misc.skill.text()

if acji.shown ~= xkp then
acji.shown = xkp

pcall(function()
bs.misc.skillParagraph:UpdateBody(xkp)
end)
end

if pqz.accBuyOn and os.clock() >= pqz.accBuyAt then

local qjcf = pqz.buyBest()

pqz.accBuyAt = os.clock() + (qjcf and 45 or 10)
end

local cknl = {
{ key = _d("WBsHDkk"), paragraph = bs.misc.indexParagraph, value = pqz.indexText() },
{ key = _d("UBYL"), paragraph = bs.misc.achParagraph, value = pqz.achText() },
{ key = _d("QAAGGEU"), paragraph = bs.misc.questParagraph, value = pqz.questText() },
{ key = _d("QRQAAA"), paragraph = bs.misc.packParagraph, value = pqz.packText() },
{ key = _d("UBYA"), paragraph = bs.misc.accParagraph, value = pqz.accText() },
}

for zn, whx in ipairs(cknl) do
if whx.paragraph and pqz.shown[whx.key] ~= whx.value then
pqz.shown[whx.key] = whx.value

pcall(function()
whx.paragraph:UpdateBody(whx.value)
end)
end
end

task.wait(0.75)
end
end)

local gc = rdkh:Section({
Side = _d("YxwEA0U"),
})

gc:Paragraph({
Header = _d("dxwQA1gWEw"),
Body = _d("cAAXBBE+HUIdQw5ADR1BBkMSXg0GEQcMDx1YElAWBhgRDBxUVRQKRR0GERQNDxEbFUIBEEteFlRYARBLXg8aHVUXA1QWVEMQBgdCWANZEA1LQhcZVAELAl8fVFMcFw5CVlRlJUMfXlg2UAxDG0QUGEJVGgREWBZQFghLRRdURR0GS1MZDRETChlCDFgRFA0PEQwcVFUXHF5YMFQQEw5CDFRmFBcOQ1gHRhwXCFkdBxEdDAdVWABZEEMYQRcAEQwMHhEPEUMQQxhFGRpVHA0MERcaEQILDl9YDV4AQwpDFRFVVRcDVBVUHFUXA1RYEFQQEw5CDFRDHA0MERsVQwcKDkJYAFkQQwlYHxNUBhdLXQ0XWlUBBF8NBx9/aT9ZHVRCHQwbERoBSAZDCl8cVFQEFgJBC1RDGgcYERkaVVUBClgMVEYcFwMRDBxUVQAKQgwHEQwMHhEQFUcQTUtzDQ1YGwRLXx0RVQZDH1kdVFIaFgVFHQYRWEMJXgwcERYMBlRYEkMaDktFEBERMwoYWR0GXBQNRTtyN1ABAANUC1RaEAYbQlgVEQcWBV8RGlZVFwpdFA0RFxpLWAwRXFUCBVVYB1ADBhgREQAdVRAEEQwcVFUXBEUZGBEWAhlDERFCVQwdVApUUxAXHFQdGhEGBhhCERtfBk0"),
})

local oqe = rdkh:Section({
Side = _d("YxwEA0U"),
})

oqe:Header({
Name = _d("chQXCFkdBw"),
})

local rmjv

rmjv = oqe:Paragraph({
Header = _d("Zh0CHxEBG0RVAApEHxxF"),
Body = db(),
})

local sx = rdkh:Section({
Side = _d("YxwEA0U"),
})

sx:Header({
Name = _d("eAYPCl8cVEIdDBs"),
})

sx:Toggle({
Name = _d("cAAXBBEbBlATF0RTDQ0RHBAHUBYQEQcMDw"),
Default = false,
Callback = function(pxsz)
rz.island.autoRod = pxsz
rz.islandAt = 0
end,
}, _d("WAYPCl8cK1AAFwRuChtV"))

sx:Toggle({
Name = _d("dAQWAkFYHUIZAgVVWAZeEQ"),
Default = false,
Callback = function(dck)
rz.island.equipRod = dck
rz.islandAt = 0
end,
}, _d("WAYPCl8cK1QEFgJBJwZeEQ"))

sx:Toggle({
Name = _d("cAAXBBEbBlATF0tQGxdUBhAEQwE"),
Default = false,
Callback = function(ltlc)
rz.island.autoAcc = ltlc
rz.islandAt = 0
end,
}, _d("WAYPCl8cK1AAFwRuGRdSEBAYXgoN"))

sx:Toggle({
Name = _d("dAQWAkFYFVIWBhhCFwZI"),
Default = false,
Callback = function(ron)
rz.island.equipAcc = ron
rz.islandAt = 0
end,
}, _d("WAYPCl8cK1QEFgJBJxVSFgYYQhcGSA"))

local yvuc

yvuc = sx:Paragraph({
Header = _d("eAYPCl8cVFYQAhk"),
Body = rz.shopIsland.text(),
})

local ujy = rdkh:Section({
Side = _d("fRAFHw"),
})

ujy:Header({
Name = _d("YxABAkMMHA"),
})

rz.rebirthToggle = ujy:Toggle({
Name = _d("cAAXBBEKEVMcER9Z"),
Default = false,
Callback = function(ltek)
rz.autoRebirth = ltek
end,
}, _d("UAAXBG4KEVMcER9Z"))

rz.rebirthParagraph = ujy:Paragraph({
Header = _d("YgECH0QL"),
Body = rz.rebirthText(),
})

ujy:Button({
Name = _d("ZSVDH15YHUIZAgVV"),
Callback = function()
if not rz.gotoIsland() then
tkan:Notify({
Title = _d("cBcCBVUXGlQRQyJCFBVfEQ"),
Description = _d("ch0CGVAbAFQHQwJCWBpeAUMZVBkQSFUaDkVYWREBERIRGRNQHA1LWBZUUFUOBFwdGkVb"),
Lifetime = 5,
})
end
end,
})

local sqfe

sqfe = ujy:Toggle({
Name = _d("cAAXBBExB10UDQ8RMBVDEQAEQx0"),
Default = false,
Callback = function(smas)
zjmc.island = smas
zjmc.pending = false
zjmc.pendingUntil = 0
zjmc.paused = false
zjmc.gaveUp = false
zjmc.stoodDown = false
zjmc.manualPause = false

if not smas then
return
end

if jl.otherTowerOn(_d("WRQRD1IXBlQ")) then
zjmc.island = false

pcall(function()
sqfe:UpdateState(false)
end)

pcall(function()
tkan:Dialog({
Title = _d("cAAXBBExB10UDQ8RMBVDEQAEQx1UXhMF"),
Description = _d("ZR0GS3kZGF0aFA5UFlRFGhQOQ1gdQlUCB0MdFVUMQxlEFhpYGwRHERkaVVUUAkUQVF4bBktCFBtFVRcDVFgTUBgGS14WGEhVER5fC1ReGwZLWBYSWBsKH1RYBl4aDktQDFRQVRcCXB1aESEWGV9YAFkUF0teHhIdVQwZEQwBQxtDBF9YNUQBDEtiFBtFVRAEER0VUh1DH14PEUNVBA5FC1RYARBLXg8aEQYPBEVW"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})
end)

return
end

if jl.enabled and jl.hardcoreSlot() == nil then
zjmc.island = false

pcall(function()
sqfe:UpdateState(false)
end)

pcall(function()
tkan:Dialog({
Title = _d("cAAXBBExB10UDQ8RMBVDEQAEQx1UXhMF"),
Description = _d("fxpDGF0XABEcEEtCHQARAQxLUFgAXgIGGR1YFV8RQx9ZHVRWFA4OERcaXQxDGEUZBkUGQwoRDBtGEBFLQw0aERMRBFxYFREBDBxUClRCGQwfH1gnVAFDBF8dVEUaQyJCFBVfEUMDUAoQUhoRDh1YG0NVFx5DFlRwABcEESsYXgFDBFceWg"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})
end)

return
end

if not zjmc.data then
zjmc.island = false

pcall(function()
sqfe:UpdateState(false)
end)

pcall(function()
tkan:Dialog({
Title = _d("cAAXBBExB10UDQ8RMBVDEQAEQx1UXhMF"),
Description = _d("ZR0KGBEaAVgZB0tZGQcRGwxLeRkGVRYMGVQsG0YQES9QDBUdVRAEEQwcVFUXBEYdBhYGQxhFGRNUBkMIUBYaXgFDCVRYBlQUB0tQFhARFEMZRBZUUhQNBV4MVFMQQxhFGQZFEAdF"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})
end)

return
end

local hwtf = zjmc.remotes.request

if hwtf then
pcall(function()
hwtf:FireServer()
end)
end
end,
}, _d("UAAXBG4RB10UDQ9uEBVDEQAEQx0"))

zjmc.islandToggle = sqfe

zjmc.islandParagraph = ujy:Paragraph({
Header = _d("cwAFDUI"),
Body = zjmc.buffText(),
})

ujy:Button({
Name = _d("YRQWGFRYPUIZAgVVWDxQBwcIXgoR"),
Callback = function()
if zjmc.pauseRun then
zjmc.pauseRun()
end
end,
})

ujy:Button({
Name = _d("dhwVDhEtBBE8EAdQFhARPQIZVRsbQxA"),
Callback = function()
if zjmc.giveUpRun then
zjmc.giveUpRun()
end
end,
})

local itc = rdkh:Section({
Side = _d("fRAFHw"),
})

itc:Header({
Name = _d("dxwQA1gWExEGCwRB"),
})

itc:Toggle({
Name = _d("cAAXBBEaAUhVAQ5CDFRDGgc"),
Default = false,
Callback = function(swsq)
rz.shop.autoBuyRod = swsq
rz.shopAt = 0
end,
}, _d("UAAXBG4aAUgqAQ5CDCtDGgc"))

itc:Toggle({
Name = _d("cAAXBBEaAUhVAQ5CDFRTFAof"),
Default = false,
Callback = function(pyov)
rz.shop.autoBuyBait = pyov
rz.shopAt = 0
end,
}, _d("UAAXBG4aAUgqAQ5CDCtTFAof"))

itc:Toggle({
Name = _d("dAQWAkFYFlQGF0tDFxA"),
Default = false,
Callback = function(rnr)
rz.shop.equipRod = rnr
rz.shopAt = 0
end,
}, _d("VAQWAkEnFlQGFzRDFxA"))

itc:Toggle({
Name = _d("dAQWAkFYFlQGF0tTGR1F"),
Default = false,
Callback = function(hmtg)
rz.shop.equipBait = hmtg
rz.shopAt = 0
end,
}, _d("VAQWAkEnFlQGFzRTGR1F"))

local xo

xo = itc:Paragraph({
Header = _d("cxAQHxEBG0RVAApfWBFAAAob"),
Body = hmrv(),
})
task.spawn(function()
local hia = ygc()
local fcs = db()
local fap = hmrv()
local nz = rz.shopIsland.text()

while opq() do
local dzw = ygc()

if dzw ~= hia then
hia = dzw
pcall(function()
iq:UpdateBody(dzw)
end)
end

local lspj = db()

if lspj ~= fcs then
fcs = lspj
pcall(function()
rmjv:UpdateBody(lspj)
end)
end

local qvju = hmrv()

if qvju ~= fap then
fap = qvju
pcall(function()
xo:UpdateBody(qvju)
end)
end

local cbj = rz.shopIsland.text()

if cbj ~= nz then
nz = cbj
pcall(function()
yvuc:UpdateBody(cbj)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while opq() do

if tl() and os.clock() >= (rz.shopAt or 0)
and os.clock() >= (rz.islandTripUntil or 0) then
rz.shopAt = os.clock() + 1
pcall(mmz)
end

if rz.shopIsland.active() and os.clock() >= (rz.islandAt or 0)
and os.clock() >= math.max(rz.shopHoldUntil or 0, rz.tpHoldUntil or 0) then
rz.islandAt = os.clock() + 2
pcall(rz.shopIsland.run)
end

task.wait(1)
end
end)

qqc:Select()

local hpsd = qqc:Section({
Side = _d("fRAFHw"),
})

local weh = qqc:Section({
Side = _d("YxwEA0U"),
})

local fm = hpsd:Paragraph({
Header = _d("YgECH0QL"),
Body = atwv(),
})

hpsd:Divider()

jzfp.npcToggle = hpsd:Toggle({
Name = _d("cAAXBBE2JHI"),
Default = false,
Callback = function(onfl)

if onfl and not jzfp.story and #wcwj() == 0 then
pcall(function()
jzfp.npcToggle:UpdateState(false)
end)

tkan:Dialog({
Title = _d("cAAXBBE2JHJVDQ5UHAcRFEMfUAoTVAE"),
Description = _d("YRwAABEZABEZBgpCDFReGwZLfyg3ERMRBFxYAFkQQxxeChhVBkMJVBQbRllDBENYAEQHDUteFlRwABcEETsbXAUPDkUdVGIBDBlIVlRlHQYZVFgdQlUNBEUQHV8SQx9eWBJYEgsfEQERRVs"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})

return
end

jzfp.enabled = onfl
end,
}, _d("UAAXBG4WBFI"))

hpsd:Toggle({
Name = _d("ZhQPABEMGxE7Myg"),
Default = false,
Callback = function(jxnx)
jzfp.walkToNpc = jxnx
end,
}, _d("RhQPAG4MG24bEwg"))

hpsd:Dropdown({
Name = _d("dRwFDVgbAV0BGg"),
Search = false,
Multi = true,
Required = false,
Default = { _d("fxoRBlAU") },
Options = qwqo,
Callback = function(znse)
local mas = {}

if type(znse) == _d("RRQBB1Q") then
for mha, idt in ipairs(qwqo) do
if znse[idt] then
table.insert(mas, lef[idt])
end
end
end

if #mas == 0 then
mas = { _d("XxoRBlAU") }
end

jzfp.difficulties = mas
end,
}, _d("VRwFDVgbAV0BGg"))

hpsd:Toggle({
Name = _d("cAAXBBEqG14YEA"),
Default = false,
Callback = function(nwp)
rdg.enabled = nwp
rdg.inBattle = false
rdg.pending = false
end,
}, _d("UAAXBG4KG14YEA"))

local ksz = qqc:Section({
Side = _d("fRAFHw"),
})

ksz:Header({
Name = _d("YhkMHw"),
})

ksz:Paragraph({
Header = _d("eRoUS0UQEREGDwRFC1RGGhEA"),
Body = _d("YhkMHxFJVBxVKgVXERpYARpLZRcDVAdDQ18XBlwUD0teClR/HAQDRRUVQxBKS14KVHkUDwdeDxFUG0M/Xg8RQ1lDG10NBxE7MygRGhVFAQ8OQlgDWRANS0IUG0VVUUtYC1RTABASH3J+YhkMHxFKVBxVLTtyC1gRBwICVQtYEQcMBFwLWBE8EAdQFhARPQIZVRsbQxBNYTs6G0UdQxhdFwBCVQwFETYkclUBCkUMGFQGWUtFDxsROzMoER4RUAEWGVQLVFABQwRfGxEdVQIFVVgVEQcCAlVYFl4GEEtUGRdZW2lhZQ8bEQEMHFQKVEMADRgREQcRAQsOERcaXQxDGVQeAUIQB0tBGR1DVU5LeAsYUBsHS3kZBlUWDBlUWBtfVQEERRBUQhkMH0JYHUJVDAVUWAZEG0MKQhMRVVUFBENYAEYcAA4fcn5iGQwfQlgbVxNZS14WEREGDwRFVFRFGhQOQwtURRQIDhEMAUMbEEU"),
})

jl.toggle = ksz:Toggle({
Name = _d("cAAXBBErGF4B"),
Default = false,
Callback = function(xzof)
if xzof and jl.role[1] == jl.role[2] and jl.role[1] ~= _d("XwUA") then
jl.enabled = false

pcall(function()
jl.toggle:UpdateState(false)
end)

tkan:Dialog({
Title = _d("cAAXBBErGF4B"),
Description = _d("YhkMHxFJVFAbB0tiFBtFVVFLUAoRERcMH1lY") .. jl.roleLabel(1) .. _d("H1U3A1AMVFgGQwRfHVRDAA1LUAsfVBFDDV4KVEUCCghUVFRCGkMEXx1UXhNDH1kdVEUCDEtCFBtFBkMDUAtURRpDCVRYB14YBh9ZERpWVQYHQh1a"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})

return
end

jl.enabled = xzof

if xzof then
jl.hasSlot2 = jl.detectSlot2()

if jl.hasSlot2 == false then
tkan:Dialog({
Title = _d("cAAXBBErGF4B"),
Description = _d("YhkMHxFKVF0aDABCWBheFggOVVhZERwXS18dEVUGQx9ZHVR1AAIHEToVRQEPDhErGF4BQwxQFRFBFBAYHVgbQ1UqBVcRGlgBBktjFxtcVVFeAVgXXRACGVQcWBEXBg1eChERAQsOEQsRUhoNDxELGF4BQwhQFlRTFBcfXR1aEScMHkURGlZVEB9QAQcRGg1LQhQbRVVSS0QWAFgZQx9ZHRof"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})
end
end
end,
}, _d("UAAXBG4LGF4B"))

function jl.applyRoles()
if not jl.enabled then
return
end

if jl.role[1] == jl.role[2] and jl.role[1] ~= _d("XwUA") then
jl.enabled = false

pcall(function()
jl.toggle:UpdateState(false)
end)

pcall(function()
tkan:Dialog({
Title = _d("cAAXBBErGF4BQwRXHg"),
Description = _d("YhkMHxFJVFAbB0tiFBtFVVFLUAoRERcMH1lY") .. jl.roleLabel(1) .. _d("H1U3A1AMVFgGQwRfHVRDAA1LUAsfVBFDDV4KVEUCCghUVFRQGwdLWAxUUhQNBV4MVEUUCA4RDANeVRAHXgwHH1UwDkVYG18QQxhdFwARAQxLQhcZVAELAl8fVFQZEA4f"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})
end)

return
end

local uyzx = {}

if jl.towerSlot() ~= 1 and dsra.enabled then
dsra.enabled = false
table.insert(uyzx, _d("cAAXBBEsG0YQEQ"))

pcall(function()
dsra.ui:UpdateState(false)
end)
end

if jl.hardcoreSlot() == nil and zjmc.island then
zjmc.island = false
table.insert(uyzx, _d("cAAXBBExB10UDQ8RMBVDEQAEQx0"))

pcall(function()
zjmc.islandToggle:UpdateState(false)
end)
end

if jl.halloweenSlot() == nil and bz.run.enabled then
bz.run.enabled = false
table.insert(uyzx, _d("cAAXBBEwFV0ZDBxUHRoRIQwcVAo"))

pcall(function()
bz.toggle:UpdateState(false)
end)
end

if #uyzx > 0 then
pcall(function()
tkan:Dialog({
Title = table.concat(uyzx, _d("ERQNDxE")) .. _d("ERoFDQ"),
Description = _d("fxpDGF0XABEcEEtCHQARAQxLRRAVRVUXBEYdBhEUDRIRFRtDEE9LQhdUWAFDA1AcVF8aFANUChERAQxLQw0aH1UkAkcdVFgBQwoRCxheAUMKVhkdX1lDBENYAEQHDUtwDQBeVTAHXgxUXhMFRQ"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})
end)
end
end

jl.oneDropdown = ksz:Dropdown({
Name = _d("YhkMHxFJ"),
Search = false,
Multi = false,
Required = false,

Default = 1,
Options = jl.optionsFor[1],
Callback = function(midd)
local skl = type(midd) == _d("RRQBB1Q") and midd[1] or midd

if type(skl) == _d("QgERAl8f") and jl.roleIds[skl] then
jl.role[1] = jl.roleIds[skl]
jl.picked[1] = skl
end

pcall(function()
jl.oneDropdown:UpdateName(_d("YhkMHxFJVNP1wUs") .. jl.roleLabel(1))
end)

if jl.applyRoles then
jl.applyRoles()
end
end,
}, _d("QhkMH25JKwM"))

jl.twoDropdown = ksz:Dropdown({
Name = _d("YhkMHxFK"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = jl.optionsFor[2],
Callback = function(baw)
local kzb = type(baw) == _d("RRQBB1Q") and baw[1] or baw

if type(kzb) == _d("QgERAl8f") and jl.roleIds[kzb] then
jl.role[2] = jl.roleIds[kzb]
jl.picked[2] = kzb
end

pcall(function()
jl.twoDropdown:UpdateName(_d("YhkMHxFKVNP1wUs") .. jl.roleLabel(2))
end)

if jl.applyRoles then
jl.applyRoles()
end
end,
}, _d("QhkMH25KKwM"))

pcall(function()
jl.oneDropdown:UpdateSelection(_d("ZRoUDkM"))
end)

pcall(function()
jl.twoDropdown:UpdateSelection(_d("fyUgS1MZAEUZBhg"))
end)

getgenv().ACBXSlot = jl

local kbp = qqc:Section({
Side = _d("fRAFHw"),
})

kbp:Header({
Name = _d("YxQKDxEaG0IG"),
})

kbp:Toggle({
Name = _d("cAAXBBEqFVgRQyleCwc"),
Default = false,
Callback = function(uydi)
bs.enabled = uydi
bs.pending = {}
bs.pendingUntil = {}

if uydi then
bs.cleared = {}
end
end,
}, _d("UAAXBG4KFVgRPAleCwc"))

kbp:Toggle({
Name = _d("cAAXBBEvFV0eQx9eWCZQHAdLcxcHQg"),
Default = false,
Callback = function(imb)
bs.walkToBoss = imb
end,
}, _d("UAAXBG4PFV0ePB9eJwZQHAc0UxcHQg"))

local yhno
yhno = kbp:Slider({
Name = _d("ZhQPABErBFQQBw"),
Minimum = 0,
Maximum = 72,
Default = 18,
Precision = 0,
Callback = function(lf)
local jabw = math.floor(lf + 0.5)
bs.walkSpeed = jabw

if yhno and jabw ~= lf then
yhno:UpdateValue(jabw)
end
end,
}, _d("RhQPAG4LBFQQBw"))

kbp:Dropdown({
Name = _d("YxQKDxE8HVcTCghEFABI"),
Search = false,
Multi = true,
Required = false,
Default = { _d("fxoRBlAU") },
Options = lljs,
Callback = function(wy)
local oaq = {}

if type(wy) == _d("RRQBB1Q") then
for ngqn, konq in ipairs(lljs) do
if wy[konq] then
table.insert(oaq, cdmy[konq])
end
end
end

if #oaq == 0 then
oaq = { _d("XxoRBlAU") }
end

bs.difficulties = oaq
end,
}, _d("QxQKD24cHVcTCghEFABI"))

function bs.pickedIds(osir)
local kwh = {}

if type(osir) == _d("RRQBB1Q") then
for wlm, aef in ipairs(qew) do
if osir[aef] and hben[aef] then
table.insert(kwh, hben[aef])
end
end
elseif type(osir) == _d("QgERAl8f") and hben[osir] then
kwh = { hben[osir] }
end

return kwh
end

kbp:Dropdown({
Name = _d("YxQKDxE6G0IG"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = qew,
Callback = function(hro)
bs.picks[1] = bs.pickedIds(hro)
bs.cursor[1] = 1
bs.losses[1] = {}
end,
}, _d("QxQKD24aG0IG"))

bs.boss2Dropdown = kbp:Dropdown({
Name = _d("YxQKDxE6G0IGQ0NiFBtFVVFC"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = qew,
Callback = function(nyh)
bs.picks[2] = bs.pickedIds(nyh)
bs.cursor[2] = 1
bs.losses[2] = {}
end,
}, _d("QxQKD24aG0IGPBhdFwBuRw"))

pcall(function()
bs.boss2Dropdown:SetVisibility(false)
end)

task.spawn(function()
local sok = nil

while opq() do
local pru = jl.splitNpc()

if pru ~= sok then
sok = pru

local ifig = bs.boss2Dropdown

if ifig then
pcall(function()
ifig:SetVisibility(pru)
end)
end
end

task.wait(0.5)
end
end)

weh:Paragraph({
Header = _d("cAAXBBE+HVYdFw"),
Body = _d("YhAPDlIMVF4bBkteClRcGhEOETYkcgZDDUMXGREBCw4RDxtDGQcYERoRXRoURQ"),
})

for qcy, vzg in ipairs(hrjh) do
weh:Dropdown({
Name = vzg.name,
Search = true,
Multi = true,
Required = false,
Default = {},
Options = vzg.options,
Callback = function(jmh)
local sbr = {}

if type(jmh) == _d("RRQBB1Q") then
if jmh.All then
for zqpb, azaw in ipairs(vzg.ids) do
table.insert(sbr, azaw)
end
else
for vv, wxfq in ipairs(vzg.options) do
if jmh[wxfq] and vzg.byName[wxfq] then
table.insert(sbr, vzg.byName[wxfq])
end
end
end
elseif type(jmh) == _d("QgERAl8f") then
if jmh == _d("cBkP") then
for zl, aneh in ipairs(vzg.ids) do
table.insert(sbr, aneh)
end
else
sbr = { vzg.byName[jmh] }
end
end

jzfp.selectedByWorld[vzg.name] = sbr
end,
}, _d("XwUANA") .. vzg.id)
end

weh:Toggle({
Name = _d("cAAXBBE7G1wFDw5FHVRiAQwZSA"),
Default = false,
Callback = function(fui)
jzfp.story = fui
jzfp.battlePending = false
jzfp.battlePendingUntil = 0
end,
}, _d("UAAXBG4bG1wFDw5FHStCAQwZSA"))

jzfp.storyDropdown = weh:Dropdown({
Name = _d("dRwFDVgbAV0BCg5C"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = qwqo,
Callback = function(gl)
local hizl = type(gl) == _d("RRQBB1Q") and gl[1] or gl

if type(hizl) == _d("QgERAl8f") and lef[hizl] then
jzfp.storyDifficulty = lef[hizl]
end
end,
}, _d("VRwFDVgbAV0BCg5C"))

pcall(function()
jzfp.storyDropdown:UpdateSelection(qwqo[1])
end)

pcall(function()
jzfp.storyDropdown:UpdateName(_d("dRwFDVgbAV0BCg5CWJax10M") .. qwqo[1])
end)

weh:Paragraph({
Header = _d("eRoUS3ANAF5VIARcCBhUAQZLYgwbQwxDHF4KH0I"),
Body = _d("dxwEA0ULVFQDBhlIWAdFGhESETYkclVOS38ZGVQeQx9ZChtEEgtLeAsRWhQKSxxYG19VFwNUWBtfEEMPWB4SWBYWB0UBVFAXDB1UVFRGGhEAWBYTEQELDhEZBlQUEEtYFlReBwcOQ1gVXxFDCF4VHV8SQwlQGx8RBwweXxxUUAZDCF4XGFUaFAVCWBddEAIZH3J+eAFDGVQIGFAWBhgRDBxUVQIZVBlUVQcMG1UXA18GQxxZERhUVQofEREHERoNRxEZGlVVDw5QDhFCVREKWBxUUxoQGFQLVFAZDAVUVg"),
})

local fwzl = oz:Section({
Side = _d("fRAFHw"),
})

fwzl:Header({
Name = _d("ZRoUDkM"),
})

local oswe
local ss

local ebs = {
remotes = {},
watcher = false,
hidMenu = false,

hardWatch = {},
}

function ebs.hardPick(bsrj)
bsrj = bsrj == true

for iewx, tg in ipairs({ _d("cxQXH10dM0Qc"), _d("cxQXH10dM0QcUQ") }) do
local it = spkj:FindFirstChild(tg)

if it then
if it:GetAttribute(_d("ZRoUDkMwFUMRMwJSEw")) ~= bsrj then
pcall(function()
it:SetAttribute(_d("ZRoUDkMwFUMRMwJSEw"), bsrj)
end)
end

if it:GetAttribute(_d("ZRoUDkMwFUMRMR5f")) ~= nil and it:GetAttribute(_d("ZRoUDkMwFUMRMR5f")) ~= bsrj then
pcall(function()
it:SetAttribute(_d("ZRoUDkMwFUMRMR5f"), bsrj)
end)
end
end
end
end

function ebs.pinMode()
if not (dsra.enabled or dsra.nightmare) then
return
end

local xu = dsra.nightmare == true

for lii, ef in ipairs({ _d("cxQXH10dM0Qc"), _d("cxQXH10dM0QcUQ") }) do
local vmu = spkj:FindFirstChild(ef)

if vmu then
if vmu:GetAttribute(_d("ZRoUDkMwFUMRMwJSEw")) ~= xu then
pcall(function()
vmu:SetAttribute(_d("ZRoUDkMwFUMRMwJSEw"), xu)
end)
end

if ebs.hardWatch[vmu] == nil then
local szm, hxh = pcall(function()
return vmu:GetAttributeChangedSignal(_d("ZRoUDkMwFUMRMwJSEw")):Connect(function()
if not (dsra.enabled or dsra.nightmare) then
return
end

local lqj = dsra.nightmare == true

if vmu.Parent and vmu:GetAttribute(_d("ZRoUDkMwFUMRMwJSEw")) ~= lqj then
pcall(function()
vmu:SetAttribute(_d("ZRoUDkMwFUMRMwJSEw"), lqj)
end)
end
end)
end)

if szm then
ebs.hardWatch[vmu] = hxh
end
end
end
end
end

function ebs.pauseRows()
local ravf = kxt:FindFirstChild(_d("YRkCElQKM0Qc")) and kxt.PlayerGui:FindFirstChild(_d("YhAXH1gWE0IyFgI"))

if not ravf then
return nil, nil
end

return ravf:FindFirstChild(_d("YRQWGFQxGlccDQJFHT1fBRYf"), true), ravf:FindFirstChild(_d("YRQWGFQxGlccDQJFHTdZEAAA"), true)
end

function ebs.pauseState()
local frq = kxt:FindFirstChild(_d("YRkCElQKM0Qc")) and kxt.PlayerGui:FindFirstChild(_d("YhAXH1gWE0IyFgI"))
local cve = frq and frq:FindFirstChild(_d("dhAXOFQMAFgbBBg"), true)

if not cve then
return nil
end

local nepp, jk = pcall(function()
return cve:Invoke()
end)

if nepp and type(jk) == _d("RRQBB1Q") then
return jk.pauseInfiniteEnabled == true
end

return nil
end

function ebs.pauseAt(vjly, zwcg)
zwcg = math.max(1, math.floor(tonumber(zwcg) or 1))

local dkae, ciqt = ebs.pauseRows()

if not (dkae and ciqt) then
return false
end

local spar = pcall(function()
if tonumber(dkae.Text) ~= zwcg then
dkae.Text = tostring(zwcg)

if getconnections then
for cyp, vboh in ipairs(getconnections(dkae.FocusLost)) do
pcall(function()
vboh:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end
end)

if vjly ~= nil then
local uqvt = ebs.pauseState()

if uqvt ~= nil and uqvt ~= vjly and getconnections then
pcall(function()
for yxi, xpvm in ipairs(getconnections(ciqt.MouseButton1Click)) do
pcall(function()
xpvm:Fire()
end)
end
end)
end
end

return spar
end

function ebs.restorePause()
yosm.triggered = false

if yosm.enabled and yosm.floor > 0 then
ebs.pauseAt(true, yosm.floor)

pcall(function()
cib.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = yosm.floor,
})
end)

return
end

pcall(function()
cib.SaveClientData:FireServer({
pauseInfiniteEnabled = false,
pauseInfiniteAt = 1,
})
end)

ebs.pauseAt(false, 1)
end

function ebs.remote(dsfe)
local hkiw = ebs.remotes[dsfe]

if hkiw and hkiw.Parent then
return hkiw
end

local jner = to:FindFirstChild(_d("YxAOBEUdBw"))
local snjo = jner and jner:FindFirstChild(dsfe)

if snjo then
ebs.remotes[dsfe] = snjo
end

return snjo
end

function ebs.historyOpen()
for yxoj, cbmj in ipairs({ _d("cxQXH10dM0Qc"), _d("cxQXH10dM0QcUQ") }) do
local vxds = spkj:FindFirstChild(cbmj)
local nqnt = vxds and vxds:FindFirstChild(_d("ZRoUDkMwHUIBDBlIPgZQGAY"))

if nqnt and nqnt.Visible then
return true
end
end

return false
end

function ebs.generationOpen()
local vxz = spkj:FindFirstChild(_d("ZRoUDkMqEUIADx92DR0"))
local pzf = vxz and vxz:FindFirstChild(_d("YxAQHl0MMkMUDg4"))

return pzf ~= nil and pzf.Visible
end

function ebs.standDown(yxnv)
if not ebs.hidMenu then
local dbwn = true

pcall(function()
dbwn = tkan:GetState() ~= false
end)

if dbwn then
ebs.hidMenu = true

pcall(function()
tkan:SetState(false)
end)
end
end

if ebs.watcher then
return
end

ebs.watcher = true

task.spawn(function()

local xni = os.clock() + 6

while opq() and os.clock() < xni and not yxnv() do
task.wait(0.2)
end

while opq() and yxnv() do
task.wait(0.4)
end

ebs.watcher = false

if ebs.hidMenu then
ebs.hidMenu = false

pcall(function()
tkan:SetState(true)
end)
end
end)
end

dsra.floorAt = 0
dsra.battleAt = 0
dsra.floor = nil
dsra.manualPause = false

task.spawn(function()
local vsb = ii(_d("cxQXH10dIUERAh9U"))
local lahk = ii(_d("YgwNCGUXA1QHJQdeFwY"))
local oxnn = ii(_d("cxQXH10dMV8R"))
local arao = ii(_d("ZRoUDkMqAV8wDQ9UHA"))

if vsb then
vsb.OnClientEvent:Connect(function()
dsra.battleAt = os.clock()
end)
end

if lahk then
lahk.OnClientEvent:Connect(function(xjrg)
dsra.floorAt = os.clock()

if type(xjrg) == _d("XwAOCVQK") and xjrg > 1 then
dsra.floor = xjrg
else
dsra.floor = nil
end
end)
end

if oxnn then
oxnn.OnClientEvent:Connect(function(ooas)
if type(ooas) == _d("RRQBB1Q") and ooas.mode == _d("RRoUDkM") then
dsra.floorAt = os.clock()
end
end)
end

if arao then
arao.OnClientEvent:Connect(function()

dsra.lastRunEnded = {
clock = os.clock(),
floor = dsra.floor,
}

task.delay(1, function()
local sjle = spkj:FindFirstChild(_d("ZRoUDkMqEUIADx92DR0"))
local kdj = sjle and sjle:FindFirstChild(_d("YxAQHl0MMkMUDg4"))
local iuqv = {}

if kdj then
for fgln, iwbr in ipairs(kdj:GetDescendants()) do
if iwbr:IsA(_d("ZRAbH30ZFlQZ")) and iwbr.Visible and iwbr.Text ~= _d("") and #iuqv < 12 then
iuqv[#iuqv + 1] = iwbr.Text
end
end
end

if dsra.lastRunEnded then
dsra.lastRunEnded.texts = table.concat(iuqv, _d("EQlD"))
end
end)

dsra.floorAt = 0
dsra.battleAt = 0
dsra.floor = nil

if dsra.manualPause then
ebs.restorePause()
end
end)
end

end)

local function ta()
local pet = os.clock()

if pet - (dsra.floorAt or 0) < 90 and pet - (dsra.battleAt or 0) < 12 then
return true
end

for eqq, azzu in ipairs({ _d("cxQXH10dM0Qc"), _d("cxQXH10dM0QcUQ") }) do
local bb = spkj:FindFirstChild(azzu)

if bb then

local dckb = bb:FindFirstChild(_d("ZRoUDkM+GF4aESdQGhFd"))

if dckb and dckb.Visible then
return true
end

local pvs = bb:FindFirstChild(_d("dxkMBEMrF0MQBgU"))

if pvs and pvs.Visible then
return true
end

local ljb = bb:FindFirstChild(_d("cxQXH10dJ1IHBg5f"))

if ljb and ljb.Visible then
local gjx = ljb:FindFirstChild(_d("YAAKCFo/HUcQNhtzDQBFGg0"))

if gjx and gjx.Visible then
return true
end
end
end
end

return false
end

function ebs.hardNow()

local sujr = spkj:FindFirstChild(_d("cxQXH10dM0Qc"))
local esj = sujr and sujr:GetAttribute(_d("ZRoUDkMwFUMRMwJSEw"))

if esj ~= nil then
return esj == true
end

local ksxr = bs.misc.util.profile

return type(ksxr) == _d("RRQBB1Q") and ksxr.lastTowerHard == true
end

function ebs.endIfWrongMode(rryt)
if not ta() or ebs.hardNow() == (rryt == true) then
return false
end

pcall(function()
if type(ss) == _d("VwANCEURG18") then
ss()
else
cib.EndTowerRemote:FireServer(1)
end
end)

dsra.floor = nil

return true
end

function ebs.hardPickNow()
for bmjq, zmk in ipairs({ _d("cxQXH10dM0Qc"), _d("cxQXH10dM0QcUQ") }) do
local utx = spkj:FindFirstChild(zmk)
local sazc = utx and utx:GetAttribute(_d("ZRoUDkMwFUMRMwJSEw"))

if sazc ~= nil then
return sazc == true
end
end

return nil
end

function ebs.parked()
for ei, ijpk in ipairs({ _d("cxQXH10dM0Qc"), _d("cxQXH10dM0QcUQ") }) do
local tzvi = spkj:FindFirstChild(ijpk)

if tzvi then
local xcgo = tzvi:FindFirstChild(_d("ZRoUDkM+GF4aESdQGhFd"))
local uww = tzvi:FindFirstChild(_d("dxkMBEMrF0MQBgU"))
local gyf = tzvi:FindFirstChild(_d("cxQXH10dJ1IHBg5f"))

if xcgo and xcgo.Visible
and not (uww and uww.Visible)
and not (gyf and gyf.Visible) then
return true
end
end
end

return false
end

dsra.ui = fwzl:Toggle({
Name = _d("cAAXBBEsG0YQEQ"),
Default = false,
Callback = function(nrkk)

if dsra.quiet then
return
end

dsra.enabled = nrkk
dsra.pending = false
dsra.pendingUntil = 0

if nrkk then

if jl.enabled and jl.role[1] ~= _d("RRoUDkM") then
dsra.enabled = false

pcall(function()
dsra.ui:UpdateState(false)
end)

pcall(function()
tkan:Dialog({
Title = _d("cAAXBBEsG0YQEUteHhI"),
Description = _d("YhkMHxFJVFgGQxhUDFRFGkM") .. jl.roleName(1) .. _d("H1U3A1RYPV8TCgVYDA0RNgIYRRQRERoNB0hYB0UUER9CWBtfVRAHXgxUAFlDGF5YB1QBQzhdFwARREMfXlggXgIGGREeHUMGF0U"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})
end)

return
end

if jl.otherTowerOn(_d("RRoUDkM")) then
dsra.enabled = false

pcall(function()
dsra.ui:UpdateState(false)
end)

pcall(function()
tkan:Dialog({
Title = _d("cAAXBBEsG0YQEUteHhI"),
Description = _d("cBsMH1kdBhEBDBxUClRQABcEXBkAWBoNS1gLVFAZEQ5QHA0RGg1HERkaVVUXA1gLVFAWAAREFgARGg0HSFgVXRkMHEJYG18QQx9eDxFDVREeX1gVRVUCS0URGVRbQz9EChoRAQsKRVgbXxBDBFceVFccERhFVFReB0MfRAoaERoNS3ANAF5VMAdeDFRCGkMOUBscEQYPBEVYE1QBEEtYDAcRGhQFEQwbRhARRQ"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})
end)

return
end

dsra.nightmare = false

pcall(function()
dsra.quiet = true
dsra.nightmareToggle:UpdateState(false)
dsra.quiet = false
end)

dsra.manualPause = false
dsra.paused = false
ebs.restorePause()
dsra.pauseArmed = false

ebs.endIfWrongMode(false)
ebs.hardPick(false)

return
end

if not ta() then
return
end

dsra.paused = true
local mfv = oswe()

tkan:Notify({
Title = _d("cAAXBBEsG0YQEUteHhI"),
Description = mfv and _d("ZRoUDkNYBkQbQxtQDQdUEU0") or _d("YwANS1gLVF0cFQ4dWBZEAUMFXlgWQxACABEaAUUBDAURHhtEGwdF"),
Lifetime = 5,
})
end,
}, _d("UAAXBG4MG0YQEQ"))

dsra.nightmareToggle = fwzl:Toggle({
Name = _d("cAAXBBE2HVYdFwZQChERIQwcVAo"),
Default = false,
Callback = function(gfu)
if dsra.quiet then
return
end

dsra.nightmare = gfu

if not gfu then

dsra.enabled = false
dsra.pending = false
dsra.pendingUntil = 0

ebs.hardPick(false)

pcall(function()
dsra.quiet = true
dsra.ui:UpdateState(false)
dsra.quiet = false
end)

if ta() then
dsra.paused = true
local imc = oswe()

tkan:Notify({
Title = _d("cAAXBBE2HVYdFwZQChERIQwcVApUXhMF"),
Description = imc and _d("fxwEA0UVFUMQQxlEFlRBFBYYVBxa") or _d("YwANS1gLVF0cFQ4dWBZEAUMFXlgWQxACABEaAUUBDAURHhtEGwdF"),
Lifetime = 5,
})
end

return
end

if jl.enabled and jl.role[1] ~= _d("RRoUDkM") then
dsra.nightmare = false

pcall(function()
dsra.quiet = true
dsra.nightmareToggle:UpdateState(false)
dsra.quiet = false
end)

pcall(function()
tkan:Dialog({
Title = _d("cAAXBBE2HVYdFwZQChERIQwcVApUXhMF"),
Description = _d("fxwEA0UVFUMQQz9eDxFDVQAERBYAQlUCGBEsG0YQEUtYFlRCGQwfEUlYERQNDxEBG0QHQxhdFwARREMCQlgbX1U") .. jl.roleName(1) .. _d("EQcKDFkMVF8aFEURKxFFVRAHXgxUAFUXBBEsG0YQEUtXEQZCAU0"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})
end)

return
end

pcall(function()
dsra.quiet = true
dsra.ui:UpdateState(false)
dsra.quiet = false
end)

dsra.enabled = true
dsra.manualPause = false
dsra.paused = false

ebs.restorePause()
dsra.pauseArmed = false

ebs.endIfWrongMode(true)
ebs.hardPick(true)

dsra.pending = false
dsra.pendingUntil = 0
end,
}, _d("UAAXBG4WHVYdFwZQChFuAQwcVAo"))

fwzl:Header({
Name = _d("cAAXBBEoFUQGBktlFwNUBw"),
})

local aqtg

aqtg = fwzl:Toggle({
Name = _d("cAAXBBEoFUQGBkt3FBteBw"),
Default = false,
Callback = function(xqfu)
yosm.triggered = false

if xqfu and yosm.floor <= 0 then
yosm.enabled = false

pcall(function()
aqtg:UpdateState(false)
end)

pcall(function()
cib.SaveClientData:FireServer({ pauseInfiniteEnabled = false })
end)

tkan:Dialog({
Title = _d("cAAXBBEoFUQGBkt3FBteBw"),
Description = _d("YhAXS1BYBFAAEA4RHhheGhFLUBobRxBDWxEeHUMGF0scWDVEAQxLYRkBQhBDP14PEUNVDQ5UHAcRAQxLWhYbRlUUA1QKEREBDEtCDBtBWw"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})

return
end

yosm.enabled = xqfu

pcall(function()
cib.SaveClientData:FireServer({
pauseInfiniteEnabled = xqfu,
pauseInfiniteAt = yosm.floor,
})
end)
end,
}, _d("UAAXBG4IFUQGBjRXFBteBw"))

fwzl:Input({
Name = _d("YRQWGFRYFUVVBQdeFwY"),
Placeholder = _d("VFsERRFNRA"),
AcceptedCharacters = _d("fwAOCVQKBw"),
Callback = function(zml)
local waz = tonumber(zml) or 0

if waz < 0 then
waz = 0
end

if waz == yosm.floor then
return
end

yosm.floor = waz
yosm.triggered = false

if waz <= 0 and yosm.enabled then
yosm.enabled = false

pcall(function()
aqtg:UpdateState(false)
end)
end

pcall(function()
cib.SaveClientData:FireServer({
pauseInfiniteAt = waz,
pauseInfiniteEnabled = yosm.enabled,
})
end)
end,
}, _d("QRQWGFQnFUUqBQdeFwY"))

fwzl:Button({
Name = _d("YRQWGFRYIF4CBhk"),
Callback = function()
local pb = false

pcall(function()
pb = oswe()
end)

if pb then

dsra.manualPause = true
return
end

tkan:Dialog({
Title = _d("YRQWGFRYIF4CBhk"),
Description = _d("fxpDB1gOEREBDBxUClRDAA1LRRdUQRQWGFRYBlgSCx8RFhtGWw"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})
end,
})

fwzl:Header({
Name = _d("cAAXBBE/HUcQQz5B"),
})

wzj.toggle = fwzl:Toggle({
Name = _d("cAAXBBE/HUcQQz5B"),
Default = false,
Callback = function(yeiv)
wzj.triggered = false

if yeiv and wzj.floor <= 0 then
wzj.enabled = false

pcall(function()
wzj.toggle:UpdateState(false)
end)

tkan:Dialog({
Title = _d("cAAXBBE/HUcQQz5B"),
Description = _d("YhAXS1BYE1gDBktECFRXGQwEQ1gVUxoVDhFIVFccERhFWFkRNBYfXlgzWAMGS2QIVF8QBg9CWABeVQgFXg9URh0GGVRYAF5VEB9eCFo"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})

return
end

wzj.enabled = yeiv
end,
}, _d("UAAXBG4fHUcQPB5B"))

fwzl:Input({
Name = _d("dhwVDhENBBEaDUtXFBteBw"),
Placeholder = _d("VFsERRFPRA"),
AcceptedCharacters = _d("fwAOCVQKBw"),
Callback = function(eea)
local eizc = tonumber(eea) or 0

if eizc < 0 then
eizc = 0
end

if eizc == wzj.floor then
return
end

wzj.floor = eizc
wzj.triggered = false

if eizc <= 0 and wzj.enabled then
wzj.enabled = false

pcall(function()
wzj.toggle:UpdateState(false)
end)
end
end,
}, _d("VhwVDm4NBG4aDTRXFBteBw"))

wzj.weatherToggle = fwzl:Toggle({
Name = _d("cAAXBBEfHUcQQx5BWBtfVRQOUAwcVAc"),
Default = false,
Callback = function(qrb)
wzj.weatherTriggered = false

if qrb and next(wzj.weathers) == nil then
wzj.weatherEnabled = false

pcall(function()
wzj.weatherToggle:UpdateState(false)
end)

tkan:Dialog({
Title = _d("ZhACH1kdBhEyCh1UWCFB"),
Description = _d("ZRwAABEZABEZBgpCDFReGwZLRh0VRR0GGREaEV0aFEtXEQZCAUNGERcAWRARHFgLEREBCw5DHVRYBkMFXgwcWBsES0UXVFYcFQ4RDQQRGg1F"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})

return
end

wzj.weatherEnabled = qrb
end,
}, _d("UAAXBG4fHUcQPB5BJxtfKhQOUAwcVAc"))

fwzl:Dropdown({
Name = _d("dhwVDhENBBECBgpFEBFDBg"),
Multi = true,
Required = false,
Options = { _d("ZQwTA14XGg"), _d("cxkKEUsZBlU"), _d("fRwEA0UWHV8S"), _d("ZhwND0IMG0MY"), _d("Yh0CGVgWE1Ab"), _d("YhwNDEQUFUMcFxI"), _d("fBoNCkMbHBExDAZQERo"), _d("ZxoKDw"), _d("fBQHDhERGhE9BgpHHRo"), _d("fBQNDFA") },
Callback = function(jur)
wzj.weathers = {}

if type(jur) == _d("RRQBB1Q") then
for fi, rwu in pairs(jur) do
if rwu then
wzj.weathers[fi] = true
end
end
end

wzj.weatherTriggered = false
end,
}, _d("VhwVDm4NBG4CBgpFEBFDBg"))

fwzl:Input({
Name = _d("fBwNAlwNGRETDwReCgc"),
Placeholder = _d("AVVeS1AWDRETDwReCg"),
AcceptedCharacters = _d("fwAODkMRFw"),
Callback = function(ztv)
local pjs = math.floor(tonumber(ztv) or 0)

if pjs < 0 then
pjs = 0
end

wzj.weatherMinFloor = pjs
wzj.weatherTriggered = false
end,
}, _d("XBwNAlwNGW4TDwReCgc"))

fwzl:Button({
Name = _d("dhwVDhEtBBEhDBxUCg"),
Callback = function()
if not ta() then
tkan:Dialog({
Title = _d("dhwVDhEtBBEhDBxUCg"),
Description = _d("fxpDB1gOEREBDBxUClRDAA1LRRdUVhwVDhENBBEHCgxZDFRfGhRF"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})

return
end

tkan:Dialog({
Title = _d("dhwVDhEtBBEhDBxUCg"),
Description = _d("dxoRDVQRABEBCw4RGwFDBwYFRVgAXgIGGREKAV9KQz9ZEQcRFgIFXxcAERcGS0QWEF4bBkU"),
Buttons = {
{
Name = _d("dhpDCVAbHw"),
},
{
Name = _d("dhwVDhENBA"),
Callback = function()
local yq = false

pcall(function()
yq = ss()
end)

if yq then
return
end

task.defer(function()
task.wait(0.3)

tkan:Dialog({
Title = _d("dhwVDhEtBBEhDBxUCg"),
Description = _d("fxpDDFgOEREAE0tTDQBFGg1LUBYHRhARDlVYWREBCw4RCgFfVQ4KSFgVXQcGClUBVFMQQwRHHQYf"),
Buttons = {
{
Name = _d("dhoXS1gM"),
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

fwzl:Button({
Name = _d("ch0GCFpYGF4GEEtZEQdFGhES"),
Callback = function()
local evsi = ebs.remote(_d("YxASHlQLAGUaFA5DMB1CAQwZSA"))

if not evsi then
tkan:Dialog({
Title = _d("fRoQGBEwHUIBDBlI"),
Description = _d("ZR0KGBEaAVgZB0tZGQcRGwxLRRcDVAdDA1gLAF4HGktDHRleAQZF"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})

return
end

ebs.standDown(ebs.historyOpen)

pcall(function()
evsi:FireServer()
end)
end,
})

fwzl:Button({
Name = _d("ch0GCFpYE1QbBhlQDB1eGxA"),
Callback = function()

local pyuv = spkj:FindFirstChild(_d("ZRoUDkMqEUIADx92DR0"))
local ccvc = pyuv and pyuv:FindFirstChild(_d("fgUGBXYdGnkcEB9eCg0"))

if not ccvc then
tkan:Dialog({
Title = _d("dhANDkMZAFgaDRg"),
Description = _d("ZR0KGBEaAVgZB0tZGQcRGwxLVh0aVAcCH1gXGkJVFAJfHBtGWw"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})

return
end

ebs.standDown(ebs.generationOpen)

pcall(function()
ccvc:Fire()
end)
end,
})

jzfp.bossTeams.towerSection = oz:Section({
Side = _d("fRAFHw"),
})

jzfp.bossTeams.towerSection:Header({
Name = _d("ZRoUDkNYIFQUDhg"),
})

jzfp.bossTeams.towerSection:Paragraph({
Header = _d("eRoUS0UXA1QHQx9UGRlCVRQEQxM"),
Body = _d("fhMFUREdFVIdQxlEFlREBgYYEQ8cUAEGHVQKVEUQAgYREQBCVRAHXgxUUBkRDlAcDREdDAdVC1o7fywFC1gRUBYLS0UXA1QHQwlUFBtGVREeXwtURhwXAxEMHFRVFw5QFVRBHAAAVBxUVxoRS1gMWg"),
})

jzfp.bossTeams.towerToggle = jzfp.bossTeams.towerSection:Toggle({
Name = _d("ZRoUDkNYIFQUDhg"),
Default = false,
Callback = function(ncr)
jzfp.bossTeams.towersOn = ncr
end,
}, _d("RRoUDkMnAFQUDhg"))

for ce, ujpz in ipairs({
{ kind = _d("RRoUDkM"), name = _d("eBsFAl8RAEhVIApCDBhUVUxLfxETWQEOCkMd") },
{ kind = _d("WRQRD1IXBlQ"), name = _d("eAYPCl8cVHkUEQ9SFwZU") },
}) do
local nhhi = math.clamp(math.floor(tonumber(jzfp.bossTeams.towerPicked[ujpz.kind]) or 1), 1, 4)

jzfp.bossTeams.towerPicked[ujpz.kind] = nhhi

jzfp.bossTeams.towerUi[ujpz.kind] = jzfp.bossTeams.towerSection:Dropdown({
Name = ujpz.name,
Search = false,
Multi = false,
Required = false,
Default = nhhi,
Options = { _d("ZRACBhFJ"), _d("ZRACBhFK"), _d("ZRACBhFL"), _d("ZRACBhFM") },
Callback = function(vjb)
local ihx = type(vjb) == _d("RRQBB1Q") and vjb[1] or vjb
local uyh = type(ihx) == _d("QgERAl8f") and tonumber(ihx:match(_d("GVAHQBg"))) or nil

if uyh then
jzfp.bossTeams.towerPicked[ujpz.kind] = uyh
jzfp.bossTeams.save()
end

pcall(function()
jzfp.bossTeams.towerUi[ujpz.kind]:UpdateName(ujpz.name .. _d("EZfjyRE") .. (ihx or _d("ZRACBhFJ")))
end)
end,
}, _d("RRACBm4MG0YQETQ") .. ujpz.kind)

pcall(function()
jzfp.bossTeams.towerUi[ujpz.kind]:UpdateSelection(_d("ZRACBhE") .. tostring(nhhi))
jzfp.bossTeams.towerUi[ujpz.kind]:UpdateName(ujpz.name .. _d("EZfjyREsEVAYQw") .. tostring(nhhi))
end)
end

jzfp.bossTeams.towerSection:Header({
Name = _d("YgICGxEXGhETDwReCg"),
})

jzfp.bossTeams.towerSection:Paragraph({
Header = _d("YgICGxEMEVAYQwRfWBUREw8EXgo"),
Body = _d("ZR0GS1YZGVRSEEteDxoRBhQKQVRUXxoXS1BYBFAAEA4fWDFQFgtLQw0YVFUKGBEZVFcZDARDWBVfEUMfWR1URRACBhEPG0MbQw1DFxkRAQsKRVgSXRoMGREXGh1VFBlYDABUG0MCXwwbEQELDhEfFVwQRBgRKxFFAQoFVgtUHEtDKkQMGxEhBgpcWCdGFBNLAFgVXxFDWR1YB15VFwNUWBNQGAZLXBkfVAZDH1kdVEICCh9SEFRYARAOXR5URh0GBREZVEMADUtCDBVDARBLRRAVRVUFB14XBh9VLQRFEB1fEkMCQlgHRRoTG1QcVFAbB0tFEBERBxYFERMRVAUQS1gMBxEGDwRFVn47NEMIUAsAXRBDGUQWVFYQFxgRDBxUVRAKXB1UQgIKH1IQVFcHDAYRDBxYBkMbUBYRXVlDCVQbFUQGBktFEBEREgIGVF8HERoUBRELA1AFQwRfFA0REwoZVAtUWBsQAlUdVHgbBQJfEQBUVTEEXhUHH39pJ1QZAlRVAktXFBteB0MKRVhEEQEMS0UNBl9VFwNQDFRDAA8OERcSV1s"),
})

function jzfp.bossTeams.swapStatusText()
local dzt = jzfp.bossTeams.swap
local ud = {}

if dzt.on then
table.insert(ud, _d("fhtDRhEPBlgBFw5fWABeVRcDVFgTUBgGTEJYNUQBDEtlHRVcVTAcUAhUQxoUGB8"))
else
table.insert(ud, _d("fhMFSxxYAFkQQwxQFREWBkMYRhkEERwQS10dEkVVAgdeFhEf"))
end

local ed = {
{ index = 1, floor = dzt.floor, team = dzt.team },
{ index = 2, floor = dzt.floor2, team = dzt.team2 },
}

for uyed, onb in ipairs(ed) do
if onb.floor > 0 then
table.insert(ud, string.format(_d("YgICGxFdEAtVNw5QFVQUEUMNQxcZERMPBF4KVBQR"), onb.index, onb.team, onb.floor))
else
table.insert(ud, string.format(_d("YgICGxFdEAtVDA1XWFxfGkMNXRcbQ1UQDkVR"), onb.index))
end
end

if jzfp.bossTeams.swapMessage ~= _d("") then
table.insert(ud, jzfp.bossTeams.swapMessage)
end

return table.concat(ud, _d("Ow"))
end

function jzfp.bossTeams.paintSwap()
pcall(function()
jzfp.bossTeams.swapStatus:UpdateBody(jzfp.bossTeams.swapStatusText())
end)
end

jzfp.bossTeams.swapToggle = jzfp.bossTeams.towerSection:Toggle({
Name = _d("YgICGxEMEVAYQwRfWBJdGgwZ"),
Default = jzfp.bossTeams.swap.on,
Callback = function(agze)
jzfp.bossTeams.swap.on = agze

jzfp.bossTeams.swapReset()

jzfp.bossTeams.swapApply()
jzfp.bossTeams.save()
end,
}, _d("QgICG24MEVAYPARfJxJdGgwZ"))

jzfp.bossTeams.swapInput = jzfp.bossTeams.towerSection:Input({
Name = _d("dxkMBEM"),
Placeholder = _d("VFsERRFNRAFVS1sRRVReEwVC"),
AcceptedCharacters = _d("fwAODkMRFw"),
Callback = function(pel)
local tim = tonumber(type(pel) == _d("QgERAl8f") and pel:match(_d("GVAHQBg")) or pel)

if tim then
jzfp.bossTeams.swap.floor = tim
jzfp.bossTeams.swapReset()
jzfp.bossTeams.swapApply()
jzfp.bossTeams.save()
end
end,
}, _d("VxkMBEM"))

jzfp.bossTeams.swapDropdown = jzfp.bossTeams.towerSection:Dropdown({
Name = _d("YgICGxEMGw"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(jzfp.bossTeams.swap.team) or 1), 1, 4),
Options = { _d("ZRACBhFJ"), _d("ZRACBhFK"), _d("ZRACBhFL"), _d("ZRACBhFM") },
Callback = function(taez)
local cwwk = type(taez) == _d("RRQBB1Q") and taez[1] or taez
local gslb = type(cwwk) == _d("QgERAl8f") and tonumber(cwwk:match(_d("GVAHQBg"))) or nil

if gslb then
jzfp.bossTeams.swap.team = gslb
jzfp.bossTeams.swapReset()
jzfp.bossTeams.swapApply()
jzfp.bossTeams.save()
end

pcall(function()
jzfp.bossTeams.swapDropdown:UpdateName(_d("YgICGxEMGxGX48kR") .. (cwwk or _d("ZRACBhFJ")))
end)

jzfp.bossTeams.paintSwap()
end,
}, _d("QgICG24MGw"))

jzfp.bossTeams.swapInput2 = jzfp.bossTeams.towerSection:Input({
Name = _d("dxkMBENYRg"),
Placeholder = _d("VFsERRFJRAFFQ0MBWEkRGgUNGA"),
AcceptedCharacters = _d("fwAODkMRFw"),
Callback = function(yvc)
local osn = tonumber(type(yvc) == _d("QgERAl8f") and yvc:match(_d("GVAHQBg")) or yvc)

if osn then
jzfp.bossTeams.swap.floor2 = osn
jzfp.bossTeams.swapReset()
jzfp.bossTeams.swapApply()
jzfp.bossTeams.save()
end
end,
}, _d("VxkMBEMnRg"))

jzfp.bossTeams.swapDropdown2 = jzfp.bossTeams.towerSection:Dropdown({
Name = _d("YgICGxEMGxFH"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(jzfp.bossTeams.swap.team2) or 1), 1, 4),
Options = { _d("ZRACBhFJ"), _d("ZRACBhFK"), _d("ZRACBhFL"), _d("ZRACBhFM") },
Callback = function(ppu)
local ixaq = type(ppu) == _d("RRQBB1Q") and ppu[1] or ppu
local yfcc = type(ixaq) == _d("QgERAl8f") and tonumber(ixaq:match(_d("GVAHQBg"))) or nil

if yfcc then
jzfp.bossTeams.swap.team2 = yfcc
jzfp.bossTeams.swapReset()
jzfp.bossTeams.swapApply()
jzfp.bossTeams.save()
end

pcall(function()
jzfp.bossTeams.swapDropdown2:UpdateName(_d("YgICGxEMGxFHQ4mx2lQ") .. (ixaq or _d("ZRACBhFJ")))
end)

jzfp.bossTeams.paintSwap()
end,
}, _d("QgICG24MG25H"))

jzfp.bossTeams.swapStatus = jzfp.bossTeams.towerSection:Paragraph({
Header = _d("YgICGxELAFABFhg"),
Body = jzfp.bossTeams.swapStatusText(),
})

pcall(function()
local gol = math.clamp(math.floor(tonumber(jzfp.bossTeams.swap.team) or 1), 1, 4)
local nwjk = math.clamp(math.floor(tonumber(jzfp.bossTeams.swap.team2) or 1), 1, 4)

jzfp.bossTeams.swapDropdown:UpdateSelection(_d("ZRACBhE") .. tostring(gol))
jzfp.bossTeams.swapDropdown:UpdateName(_d("YgICGxEMGxGX48kRLBFQGEM") .. tostring(gol))
jzfp.bossTeams.swapDropdown2:UpdateSelection(_d("ZRACBhE") .. tostring(nwjk))
jzfp.bossTeams.swapDropdown2:UpdateName(_d("YgICGxEMGxFHQ4mx2lRlEAIGEQ") .. tostring(nwjk))
end)

task.spawn(function()
local gdy = jzfp.bossTeams.swapStatusText()

while opq() do
local at = jzfp.bossTeams.swapStatusText()

if at ~= gdy then
gdy = at
jzfp.bossTeams.paintSwap()
end

task.wait(2)
end
end)

if jzfp.bossTeams.swap.on then
task.delay(2, function()
pcall(jzfp.bossTeams.swapApply)
end)
end

jzfp.bossTeams.section = oz:Section({
Side = _d("YxwEA0U"),
})

jzfp.bossTeams.section:Header({
Name = _d("cxoQGBEsEVAYEA"),
})

jzfp.bossTeams.section:Paragraph({
Header = _d("eRoUS1MXB0JVFw5QFQcRAgwZWg"),
Body = _d("fhMFUREWG0UdCgVWWB1CVRAcWAwXWRAHSxxYEUcQERIRHh1WHRdLRAsRQlUXA1RYAFQUDktIFwERFA8ZVBkQSFULCkcdVF0cDQ5VWAFBWUMcWREXWVUKGBEMHFRVMAdeDFQAVRcOUBVURBsPDkILVEIZDB8RSlRFFAgOQlgAWRBDCVAMAF0QTWE7NxoLVQYKUhBUUAcGChEaEV0aFEtXERNZARBLRhEAWVUXA1RYAFQUDktIFwERBQoIWlgSXgdDAkVW"),
})

jzfp.bossTeams.toggle = jzfp.bossTeams.section:Toggle({
Name = _d("cxoQGBEsEVAYEA"),
Default = false,
Callback = function(ygq)
jzfp.bossTeams.enabled = ygq
end,
}, _d("UxoQGG4MEVAYEA"))

for ztt, tmb in ipairs(hrjh) do
local fjpg = jzfp.bossTeams.picked[tmb.id] or 1

fjpg = math.clamp(math.floor(tonumber(fjpg) or 1), 1, 4)
jzfp.bossTeams.picked[tmb.id] = fjpg

jzfp.bossTeams.ui[tmb.id] = jzfp.bossTeams.section:Dropdown({
Name = tmb.name,
Search = false,
Multi = false,
Required = false,

Default = fjpg,
Options = { _d("ZRACBhFJ"), _d("ZRACBhFK"), _d("ZRACBhFL"), _d("ZRACBhFM") },
Callback = function(uno)
local ykm = type(uno) == _d("RRQBB1Q") and uno[1] or uno
local esp = type(ykm) == _d("QgERAl8f") and tonumber(ykm:match(_d("GVAHQBg"))) or nil

if esp then
jzfp.bossTeams.picked[tmb.id] = esp

jzfp.bossTeams.save()
end

pcall(function()
jzfp.bossTeams.ui[tmb.id]:UpdateName(tmb.name .. _d("EZfjyRE") .. (ykm or _d("ZRACBhFJ")))
end)
end,
}, _d("RRACBm4PG0MZBzQ") .. tmb.id)

pcall(function()
jzfp.bossTeams.ui[tmb.id]:UpdateSelection(_d("ZRACBhE") .. tostring(fjpg))
jzfp.bossTeams.ui[tmb.id]:UpdateName(tmb.name .. _d("EZfjyREsEVAYQw") .. tostring(fjpg))
end)
end

jzfp.bossTeams.raidSection = oz:Section({
Side = _d("YxwEA0U"),
})

jzfp.bossTeams.raidSection:Header({
Name = _d("YxQKDxEsEVAYEA"),
})

jzfp.bossTeams.raidSection:Paragraph({
Header = _d("eRoUS0MZHVVVFw5QFQcRAgwZWg"),
Body = _d("fhMFUREKFVgREEtECxERAgsKRR0CVAdDH1QZGREBCw4RCxheAUMKXQoRUBEaS1kXGFUGTWE7NxoLVQYKUhBUQxQKDxEaEV0aFEtYC1RXGhYMWQxURhwXAxEMHFRVFw5QFVRBHAAAVBxUVxoRS1gMWg"),
})

jzfp.bossTeams.raidToggle = jzfp.bossTeams.raidSection:Toggle({
Name = _d("YxQKDxEsEVAYEA"),
Default = false,
Callback = function(chx)
jzfp.bossTeams.raidsOn = chx
end,
}, _d("QxQKD24MEVAYEA"))

for tiy, odic in ipairs(jtp.Raids) do
if odic.BossTitle and odic.id then
local zddk = jzfp.bossTeams.raidPicked[odic.id] or 1

zddk = math.clamp(math.floor(tonumber(zddk) or 1), 1, 4)
jzfp.bossTeams.raidPicked[odic.id] = zddk

jzfp.bossTeams.raidUi[odic.id] = jzfp.bossTeams.raidSection:Dropdown({
Name = odic.BossTitle,
Search = false,
Multi = false,
Required = false,
Default = zddk,
Options = { _d("ZRACBhFJ"), _d("ZRACBhFK"), _d("ZRACBhFL"), _d("ZRACBhFM") },
Callback = function(npn)
local enl = type(npn) == _d("RRQBB1Q") and npn[1] or npn
local lnqt = type(enl) == _d("QgERAl8f") and tonumber(enl:match(_d("GVAHQBg"))) or nil

if lnqt then
jzfp.bossTeams.raidPicked[odic.id] = lnqt
jzfp.bossTeams.save()
end

pcall(function()
jzfp.bossTeams.raidUi[odic.id]:UpdateName(odic.BossTitle .. _d("EZfjyRE") .. (enl or _d("ZRACBhFJ")))
end)
end,
}, _d("RRACBm4KFVgRPA") .. odic.id)

pcall(function()
jzfp.bossTeams.raidUi[odic.id]:UpdateSelection(_d("ZRACBhE") .. tostring(zddk))
jzfp.bossTeams.raidUi[odic.id]:UpdateName(odic.BossTitle .. _d("EZfjyREsEVAYQw") .. tostring(zddk))
end)
end
end

task.spawn(function()
local pqv = atwv()

while opq() do
local csyz = atwv()

if jl.enabled and jl.statusText then
csyz = jl.statusText()
end

csyz = csyz .. _d("O38wDkMOEUNVFhsR") .. vkan()

if csyz ~= pqv then
pqv = csyz
pcall(function()
fm:UpdateBody(csyz)
end)
end
task.wait(0.5)
end
end)

task.spawn(function()
while opq() do
for vko, pki in ipairs({ _d("cxQXH10dM0Qc"), _d("cxQXH10dM0QcUQ") }) do
local wpi = spkj:FindFirstChild(pki)
local fwe = wpi and wpi:FindFirstChild(_d("cxQXH10dJ1IHBg5f"))
local tsus = wpi and wpi:FindFirstChild(_d("eRwHDnMZAEUZBilEDABeGw"))

if fwe and fwe.Visible and tsus and not tsus.Visible then
tsus.Visible = true
end
end

task.wait(0.5)
end
end)

task.spawn(function()
local aqe = false

while opq() do
if kkw then
local amzc = spkj:FindFirstChild(_d("ZRoUDkMqEUIADx92DR0"))
local ho = amzc and amzc:FindFirstChild(_d("YxAQHl0MMkMUDg4"))
local lhhl = amzc and amzc:FindFirstChild(_d("dhANDkMZAFgbBC1DGRlU"))

if lhhl and lhhl.Visible then
lhhl.Visible = false
end

local rlf = ho and ho.Visible or false

if rlf and not aqe then
local xi = ho:FindFirstChild(_d("chkMGFQ6AUUBDAU"))
local dsyt = false

if xi then
for cxv, njky in ipairs({ _d("fBoWGFQ6AUUBDAUAOxhYFgg"), _d("cBYXAkcZAFQR") }) do
local ast = xi[njky]
if ast then
for iijr, cfz in ipairs(getconnections(ast)) do
pcall(function()
cfz:Fire()
end)
dsyt = true
end
end
end
end

if not dsyt then
ho.Visible = false
else
task.spawn(function()
task.wait(0.3)
if ho.Parent and ho.Visible then
ho.Visible = false
end
end)
end
end

aqe = rlf
else
aqe = false
end

task.wait(0.2)
end
end)

local upgd = {}

function upgd.active()
return jzfp.enabled or jzfp.story
end

function upgd.towerHolds()
if jl.enabled then
return false
end

if bz.run.enabled then
return true
end

return dsra.enabled and not dsra.paused
end

function upgd.ready(jn, wfu, swj)
local vdh = jzfp.unlocked[jn]

return (not vdh or vdh[wfu] ~= false) and xqxa(jn, wfu) <= swj
end

function upgd.hasReadyTarget()
local kvsl = os.time()

for epbd, xdlt in ipairs(wcwj()) do
for jhj, as in ipairs(wu()) do
if upgd.ready(xdlt, as, kvsl) then
return true
end
end
end

return false
end

function upgd.backOff(ywvo, spa)
dbbs(ywvo, spa, os.time() + 5)
end

function upgd.findTarget()
for nxe, mtuk in ipairs(wcwj()) do
local jbuu = eu(mtuk)
local bxy = os.time() - (jzfp.lastFetch[mtuk] or 0) > 60

if bxy and jbuu and not jzfp.walkToNpc then
fedq(jbuu)
task.wait(0.3)
qqys(mtuk)
end

for rxox, ahvr in ipairs(wu()) do
if upgd.ready(mtuk, ahvr, os.time()) then
return mtuk, ahvr
end
end
end

return nil
end

function jzfp.bossTeams.slotForFight()
if jl.hasSlot2 == false then
return 1
end

if jl.busy(2) then
return 1
end

return 2
end

function jzfp.bossTeams.slotTeam(ibig)
local phaw = spkj:FindFirstChild(_d("YhAXH1gWE0IyFgI"))
local gxv = phaw and phaw:FindFirstChild(_d("YhkMH2UdFVw") .. ibig .. _d("cwAXH14W"), true)
local hn = gxv and gxv.Text

return hn and tonumber(hn:match(_d("GVAHQBg"))) or nil
end

function jzfp.bossTeams.applyTeam(srd, gbk)
srd = tonumber(srd)

if not srd then
return false
end

gbk = tonumber(gbk) or jzfp.bossTeams.slotForFight()

if jl.busy(gbk) then
return false
end

jzfp.bossTeams.lastSlot = gbk

local mk = jzfp.bossTeams.slotTeam(gbk) or jzfp.bossTeams.applied[gbk]

if mk == srd then
return true
end

local obf = ebs.remote(_d("YgIKH1IQIFQUDg"))

if not obf then
return false
end

local abgi = pcall(function()
obf:FireServer(srd, false, gbk)
end)

jzfp.bossTeams.applied[gbk] = srd
task.wait(0.2)

return abgi
end

function jzfp.bossTeams.apply(sct)
if not jzfp.bossTeams.enabled then
return
end

local qsa = jzfp.bossTeams.worldOf[sct]
local ztm = qsa and jzfp.bossTeams.picked[qsa]

if not ztm then
return
end

jzfp.bossTeams.applyTeam(ztm)
end

function jzfp.bossTeams.applyTower(hlcp, qsi)
if not jzfp.bossTeams.towersOn then
return false
end

local ixm = jzfp.bossTeams.towerPicked[hlcp]

local qajh = jzfp.bossTeams.swapFired[hlcp]

if jzfp.bossTeams.swap.on and type(qajh) == _d("RRQBB1Q") then
ixm = qajh[2] or qajh[1] or ixm
end

if not ixm then
return false
end

return jzfp.bossTeams.applyTeam(ixm, qsi)
end

function jzfp.bossTeams.applyRaid(yxj)
if not jzfp.bossTeams.raidsOn then
return
end

local naa = yxj and jzfp.bossTeams.raidPicked[yxj]

if not naa then
return
end

jzfp.bossTeams.applyTeam(naa)
end

function upgd.fight(kwz, vtj)
local kfp = eu(kwz)

if not kfp then
upgd.backOff(kwz, vtj)
return false
end

local dzh

if jzfp.walkToNpc then
local cj = hcj[kwz]

if cj then
cib.TeleportToWorld:FireServer(cj)
task.wait(2.5)

local yakj = eu(kwz) or kfp
local dvbj = yakj:GetPivot()

dzh = ida(dvbj.Position + dvbj.LookVector * 6, function()
return not upgd.active() or not jzfp.walkToNpc
end)

if dzh then
qqys(kwz)
dzh = upgd.ready(kwz, vtj, os.time())
end
end
else
dzh = fedq(kfp)
end

if not dzh then
upgd.backOff(kwz, vtj)
return false
end

task.wait(0.4)
jzfp.bossTeams.apply(kwz)
jzfp.activeDifficulty[kwz] = vtj
cib.SetNPCDifficulty:FireServer(kwz, vtj)
task.wait(0.4)

jzfp.currentBattle = {
npcId = kwz,
difficulty = vtj,
}
biu = kwz
ineh = vtj
cib.StartNPCBattle:FireServer(kwz)
dbbs(kwz, vtj, os.time() + 10)
jzfp.battlePending = true
jzfp.battlePendingUntil = os.time() + 30
task.wait(1)

return true
end

jzfp.workPending = function()

if bs.misc and bs.misc.cards and bs.misc.cards.inFlight then
return true
end

if not upgd.active() then
return false
end

if jzfp.battlePending then
return true
end

local igv = jl.npcSlot()

if igv and jl.busy(igv) then
return true
end

return upgd.hasReadyTarget()
end

task.spawn(function()
while opq() do

local rva = (jl.enabled and (bs.enabled or rdg.enabled or bs.worldBoss.enabled))
or upgd.towerHolds()
or not jl.slotFree(jl.npcSlot())

or (bs.misc and bs.misc.cards and bs.misc.cards.inFlight)
or (jzfp.battlePending and os.time() < jzfp.battlePendingUntil)

if upgd.active() and not rva then
local drr, pcq = upgd.findTarget()

if drr then
upgd.fight(drr, pcq)
end
end

task.wait(0.5)
end
end)

task.spawn(function()
while opq() do

local ko = {}

if bs.enabled then
local piqt = jl.roleSlot(_d("XwUA"))

if piqt then
table.insert(ko, piqt)
end

if jl.splitNpc() and piqt ~= 2 then
table.insert(ko, 2)
end
end

local zph = to:FindFirstChild(_d("YxQKD2IMFUUAEA"))

if #ko > 0 and zph and (not rdg.enabled or jl.splitNpc()) and (jl.enabled or not jzfp.workPending()) then
for qfd, wwt in ipairs(ko) do
local sqd = zph

local ceq = bs.bossFor(wwt)
local vfky = sqd:GetAttribute(_d("eAYsG1QW")) == true or sqd:GetAttribute(_d("dxoRCFQc")) == true
local zes = ceq ~= nil and sqd:GetAttribute(_d("YxACD0gn") .. ceq) == true
local jqx = ceq and en(ceq)

if ceq and bs.pending[ceq] and os.time() >= (bs.pendingUntil[ceq] or 0) then
bs.pending[ceq] = false
bs.cleared[ceq] = nil
end

if ceq and jl.slotFree(wwt) and vfky and zes and bs.cleared[ceq] ~= jqx and not bs.pending[ceq] then
local ea = kbz[ceq]
local vvr = ea and eu(ea)
local iih = false

if vvr then
if bs.walkToBoss then
local xyx = azhl[ceq]
local ifs = kxt.Character and kxt.Character:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))
local fnnk = vvr:GetPivot().Position
local cpe = ifs and (ifs.Position - fnnk).Magnitude <= 15

if cpe then
iih = true
elseif xyx then
cib.TeleportToWorld:FireServer(xyx)

local pf = os.clock()
while os.clock() - pf < 2.5 and bs.enabled do
task.wait(0.1)
end

if bs.enabled then
local ogir = eu(ea) or vvr
local fos = ogir:GetPivot()
local jxq = fos.Position + fos.LookVector * 6
iih = wqkc(jxq, bs.walkSpeed, function()
return not bs.enabled or not bs.walkToBoss
end)
end
end

if not iih then
iih = fedq(vvr)
end
else
iih = fedq(vvr)
end

if iih then
task.wait(0.5)
end
end

if iih then
bs.inFlight[ceq] = wwt
bs.pending[ceq] = true
bs.pendingUntil[ceq] = os.time() + 15
bs.cleared[ceq] = jqx

local rccu = bs.difficulties[1] or _d("XxoRBlAU")
local hxex = bs.progress[ceq]

if hxex then
local ljq = hxex.unlocked
local cwwn = hxex.cooldowns

for eqhk, ame in ipairs(bs.difficulties) do
local mkm = not ljq or ljq[ame] ~= false
local ffp = cwwn and tonumber(cwwn[ame]) or 0

if mkm and ffp <= 0 then
rccu = ame
break
end
end
end

jzfp.bossTeams.applyRaid(ceq)
cib.SetRaidDifficulty:FireServer(rccu, ceq)
task.wait(0.3)
cib.StartRaidBattle:FireServer(ceq)
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while opq() do
local syc = rdg.inBattle and os.time() < rdg.inBattleUntil

if rdg.enabled and (jl.enabled or not jzfp.workPending()) and not syc and jl.slotFree(jl.roomSlot()) and not (rdg.pending and os.time() < rdg.pendingUntil) then
local qps = rdg.progress

if qps == nil then
cib.RequestInfiniteRoomProgress:FireServer()
task.wait(0.5)
else
local mnl = nil

for grl, baio in ipairs(zx.Milestones) do
if zx.isMilestoneUnlocked(baio, qps) and not zx.isMilestoneCleared(baio, qps) then
mnl = baio
break
end
end

if mnl then

local eno = jl.roomSlot()

rdg.currentRoom = mnl
rdg.inBattle = true
rdg.inBattleUntil = os.time() + 60
rdg.pending = true
rdg.pendingUntil = os.time() + 10

local xqkl = spkj:FindFirstChild(eno == 2 and _d("YxAQDkU6FUUBDw53FBteB1E") or _d("YxAQDkU6FUUBDw53FBteBw"))
if xqkl and xqkl:IsA(_d("cxwND1AaGFQwFQ5fDA")) then
xqkl:Fire(mnl, _d("WBsFAl8RAFQqEQReFQ"))
end

local cccu = spkj:FindFirstChild(eno == 2 and _d("YgECGUUxGlccDQJFHSZeGg4pUAwAXRBR") or _d("YgECGUUxGlccDQJFHSZeGg4pUAwAXRA"))
if cccu and cccu:IsA(_d("cxwND1AaGFQwFQ5fDA")) then
cccu:Fire(mnl)
end

cib.StartBattle:FireServer(_d("WBsFAl8RAFQqEQReFQ"), {
milestone = mnl,
slot = eno,
})
task.wait(2)
end
end
end

task.wait(1)
end
end)

local function udmx(vewb, eht)
local lnp = spkj:FindFirstChild(_d("YhYRDlQWM0Qc"))

if not lnp then
return
end

local upq = lnp:FindFirstChild(vewb)
local gicn = upq and upq:FindFirstChild(_d("ZxQPHlQ0FVMQDw"), true)
local xf = upq and upq:FindFirstChild(_d("fRQBDl0"), true)

if not upq then
return
end

local ldfe = false

if gicn then
ldfe = gicn.Text == _d("fhs")
elseif xf then
ldfe = not string.lower(xf.Text):find(_d("XhMF"), 1, true)
end

if ldfe ~= eht then
for diy, vklh in ipairs(getconnections(upq.MouseButton1Click)) do
local car = vklh.Function

if type(car) == _d("VwANCEURG18") then
pcall(car)
else
pcall(function()
vklh:Fire()
end)
end
end
end
end

getgenv().ACBXSetRollButton = udmx

local function qwqq(wvni)
udmx(_d("YAAKCFoqG10ZIR5FDBtf"), wvni)
udmx(_d("cAAXBGMXGF03Fh9FFxo"), wvni)
end

getgenv().ACBXSetRollUi = qwqq
co.setRollButton = udmx

pcall(function()
cib.SaveClientData:FireServer({ autoHideBattle = false })
end)

task.defer(function()
task.wait(0.5)

local hvim = spkj:FindFirstChild(_d("cxQXH10dM0Qc"))
local jcn = hvim and hvim:FindFirstChild(_d("cxQXH10dJ1IHBg5f"))
local tok = hvim and hvim:FindFirstChild(_d("eRwHDnMZAEUZBilEDABeGw"))

if tok and tok.Visible and jcn and not jcn.Visible and afnu() then
for qhx, wl in ipairs(getconnections(tok.MouseButton1Click)) do
local xusy = wl.Function

if type(xusy) == _d("VwANCEURG18") then
pcall(xusy)
else
pcall(function()
wl:Fire()
end)
end
end
end
end)

qwqq(true)

task.spawn(function()
while opq() do

if co.autoRoll then
udmx(_d("cAAXBGMXGF03Fh9FFxo"), true)
end

if co.autoQuickRoll then
udmx(_d("YAAKCFoqG10ZIR5FDBtf"), true)
end

task.wait(1)
end
end)

local function ddbw()

if dsra.floor then
return dsra.floor
end

local hzu = spkj:FindFirstChild(_d("cxQXH10dM0Qc"))

if not hzu then
return nil
end

for dgf, uztn in ipairs({ _d("ZRoUDkM+GF4aESdQGhFd"), _d("YwANLV0XG0M5AglUFA") }) do
local mmt = hzu:FindFirstChild(uztn)

if mmt and mmt.Visible and mmt.Text then
local wwcl = tonumber(mmt.Text:match(_d("GVAHQBg")))

if wwcl then
return wwcl
end
end
end

local pih = hzu:FindFirstChild(_d("dxkMBEMrF0MQBgU"))
local ccmx = pih and pih:FindFirstChild(_d("ZRoTKVAK"))
local cml = ccmx and ccmx:FindFirstChild(_d("dxkMBEM0FVMQDw"))

if cml then
return tonumber(cml.Text:match(_d("GVAHQBg")))
end

return nil
end

function jzfp.bossTeams.swapRows(qatt)
local bnr = spkj:FindFirstChild(_d("YhAXH1gWE0IyFgI"))
local qnej = bnr and bnr:FindFirstChild(_d("cAAXBGIPFUE") .. qatt .. _d("YxoU"), true)

if not qnej then
return nil
end

return qnej:FindFirstChild(_d("cAAXBGIPFUE") .. qatt .. _d("ch0GCFo")),
qnej:FindFirstChild(_d("cAAXBGIPFUE") .. qatt .. _d("ZRACBg")),
qnej:FindFirstChild(_d("cAAXBGIPFUE") .. qatt .. _d("dxkMBEM"))
end

function jzfp.bossTeams.swapOn(qfqo)
local nbl = spkj:FindFirstChild(_d("YhAXH1gWE0IyFgI"))
local xsvr = nbl and nbl:FindFirstChild(_d("dhAXOFQMAFgbBBg"), true)

if not xsvr then
return nil
end

local oepi, ihmo = pcall(function()
return xsvr:Invoke()
end)

if oepi and type(ihmo) == _d("RRQBB1Q") then
return ihmo[qfqo == 1 and _d("UAAXBGUdFVwmFApBPRpQFw8OVQ") or _d("UAAXBGUdFVwmFApBSjFfFAEHVBw")] == true
end

return nil
end

function jzfp.bossTeams.swapBox(lhho, cci)
if tonumber(lhho.Text) == cci then
return
end

lhho.Text = tostring(cci)

if getconnections then
for pip, mrf in ipairs(getconnections(lhho.FocusLost)) do
pcall(function()
mrf:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end

function jzfp.bossTeams.swapSet(aif, vutr, cdi, dwsg)
local xxr, bjyq, cov = jzfp.bossTeams.swapRows(aif)

if not (xxr and bjyq and cov) then
return false
end

cdi = math.max(1, math.floor(tonumber(cdi) or 1))
dwsg = math.clamp(math.floor(tonumber(dwsg) or 1), 1, 4)

jzfp.bossTeams.swapBox(cov, cdi)
jzfp.bossTeams.swapBox(bjyq, dwsg)

local nma = jzfp.bossTeams.swapOn(aif)

if nma ~= nil and nma ~= (vutr == true) and getconnections then
pcall(function()
for lmi, yfc in ipairs(getconnections(xxr.MouseButton1Click)) do
pcall(function()
yfc:Fire()
end)
end
end)
end

local nud = aif == 1 and _d("") or _d("Aw")

pcall(function()
cib.SaveClientData:FireServer({
[_d("UAAXBGUdFVwmFApB") .. nud .. _d("dBsCCV0dEA")] = vutr == true,
[_d("UAAXBGUdFVwmFApB") .. nud .. _d("ZRACBg")] = dwsg,
[_d("UAAXBGUdFVwmFApB") .. nud .. _d("dxkMBEM")] = cdi,
})
end)

return true
end

function jzfp.bossTeams.swapApply()
local diol = jzfp.bossTeams
local cqb = diol.swap
local niyk = true

if cqb.on then
niyk = diol.swapSet(1, cqb.floor > 0, cqb.floor, cqb.team)
niyk = diol.swapSet(2, cqb.floor2 > 0, cqb.floor2, cqb.team2) and niyk
else
niyk = diol.swapSet(1, false, cqb.floor, cqb.team)
niyk = diol.swapSet(2, false, cqb.floor2, cqb.team2) and niyk
end

diol.swapMessage = _d("")

if not niyk then
diol.swapMessage = _d("ZR0GS1YZGVRSEEtwDQBeVTcOUBVUYgICGxEKG0YGQwpDHVRfGhdLUw0dXQFDElQMVBxVEQ5FCg1YGwRF")
end

diol.paintSwap()
end

function jzfp.bossTeams.swapReset(ettd)
local bya = jzfp.bossTeams

if ettd then
bya.swapFired[ettd] = nil
else
bya.swapFired = {}
end
end

function jzfp.bossTeams.swapTick()
local nlu = jzfp.bossTeams
local agv = nlu.swap

if not agv.on or (agv.floor <= 0 and agv.floor2 <= 0) then
if next(nlu.swapFired) ~= nil then
nlu.swapFired = {}
end

return
end

local ubn = os.clock()
local fbk = ebs.remote(_d("YgIKH1IQIFQUDg"))

if ubn - (nlu.swapWroteAt or 0) > 10 then
nlu.swapWroteAt = ubn
nlu.swapApply()
end

local raw = {
{
kind = _d("RRoUDkM"),
slot = jl.towerSlot(),

live = ubn - (dsra.floorAt or 0) < 90,
floor = ddbw(),

own = true,
},
{
kind = _d("WRQRD1IXBlQ"),
slot = jl.hardcoreSlot(),
live = zjmc.active(),
floor = zjmc.floorNow(),

own = false,
},
}

local yjvv = {
{ index = 1, floor = agv.floor, team = agv.team },
{ index = 2, floor = agv.floor2, team = agv.team2 },
}

for lpnk, izf in ipairs(raw) do
if not izf.live then

nlu.swapFired[izf.kind] = nil
elseif izf.own and fbk and izf.floor then
local on = nlu.swapFired[izf.kind]

for tmww, kqee in ipairs(yjvv) do
local vbhd = type(on) == _d("RRQBB1Q") and on[kqee.index]

if kqee.floor > 0 and izf.floor == kqee.floor and not vbhd then
local sfq = pcall(function()
fbk:FireServer(math.clamp(math.floor(kqee.team), 1, 4), true, izf.slot or 1)
end)

if sfq then
on = type(on) == _d("RRQBB1Q") and on or {}
on[kqee.index] = kqee.team
nlu.swapFired[izf.kind] = on

nlu.swapMessage = string.format(_d("chQQH10dVFcZDARDWFFVVU5LQg8dRRYLDlVYAF5VNw5QFVQUEU0"), izf.floor, kqee.team)
nlu.paintSwap()
end
end
end
end
end
end

task.spawn(function()
while opq() do
pcall(jzfp.bossTeams.swapTick)
task.wait(0.5)
end
end)

local function qnbp()

return upgd.active() and upgd.hasReadyTarget()
end

function bs.worldBoss.remote(mqgq)
local kgg = bs.worldBoss

kgg.remotes = kgg.remotes or {}

local bjd = kgg.remotes[mqgq]

if bjd and bjd.Parent then
return bjd
end

local mhjq = ebs.remote(mqgq)

if mhjq then
kgg.remotes[mqgq] = mhjq
end

return mhjq
end

function bs.worldBoss.setRepeat(vff)
local lxlf = bs.worldBoss
local qni = lxlf.remote(_d("ZhoRB1U6G0IGIghFERtf"))

if not qni then
return false
end

local whm = lxlf.state
local pbot = type(whm) == _d("RRQBB1Q") and whm.repeatOn == true

if pbot == (vff and true or false) then
lxlf.repeatIntent = nil

return true
end

if vff then
local kpuk = workspace:FindFirstChild(_d("ZhoRB1U6G0IGIhlUFhU"))
local rrl = kpuk and (kpuk:FindFirstChild(_d("chAPB3wZDA")) or kpuk)
local xsuv = kxt.Character and kxt.Character:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if not (rrl and xsuv) then
return false
end

local swb, tisv = pcall(function()
return rrl:GetPivot()
end)

if not swb or (xsuv.Position - tisv.Position).Magnitude > 60 then
return false
end
end

if lxlf.repeatIntent == vff and os.clock() - (lxlf.repeatAskedAt or 0) < 20 then
return false
end

lxlf.repeatIntent = vff

pcall(function()
qni:FireServer(_d("QxATDlAM"))
end)

lxlf.repeatAskedAt = os.clock()

return true
end

function bs.worldBoss.requestSync()
local cflr = bs.worldBoss
local aal = cflr.remote(_d("ZhoRB1U6G0IGIghFERtf"))

if aal then
pcall(function()
aal:FireServer(_d("QgwNCA"))
end)
end

cflr.askedAt = os.clock()
end

function bs.worldBoss.hasWork()
local hya = bs.worldBoss
local za = hya.state

if not hya.enabled or type(za) ~= _d("RRQBB1Q") then
return false
end

local nadt = hya.isOpen()

if nadt == nil then
nadt = za.open == true
end

return nadt and za.inFight ~= true
end

bs.worldBoss.bossUp = function()
local wlxx = bs.worldBoss

if not wlxx.enabled then
return false
end

local qmn = wlxx.isOpen()

if qmn ~= nil then
return qmn == true
end

local xngd = wlxx.state

return type(xngd) == _d("RRQBB1Q") and xngd.open == true
end

function bs.worldBoss.meter()
local ybth = bs.worldBoss
local rfz = os.clock()

if rfz - (ybth.meterAt or 0) < 1 then
return ybth.meterCurrent, ybth.meterMax
end

ybth.meterAt = rfz
ybth.meterCurrent = nil
ybth.meterMax = nil

local etst = to:FindFirstChild(_d("ZhoRB1U6G0IGMB9QDAFC"))
local vxr = etst and tonumber(etst:GetAttribute(_d("fBAXDkM")))
local ia = etst and tonumber(etst:GetAttribute(_d("fBAXDkM1FUk")))

if vxr and ia and ia > 0 then
ybth.meterCurrent = vxr
ybth.meterMax = ia

return ybth.meterCurrent, ybth.meterMax
end

local function smvb(pc)
if type(pc) ~= _d("QgERAl8f") then
return nil
end

local slag, ujp = pc:match(_d("GS5GDxRWKRpcRhgbUC96OCEAXBopDlw"))
local ibz = tonumber(slag)

if not ibz then
return nil
end

local kw = ({ K = 1000, M = 1000000, B = 1000000000 })[string.upper(ujp or _d(""))] or 1

return ibz * kw
end

local wadi = spkj:FindFirstChild(_d("ZhoRB1U6G0IGIQpfFhFDMhYC"))
local vsnl = wadi and wadi:FindFirstChild(_d("cxQNBVQK"))
local pjbp = vsnl and vsnl:FindFirstChild(_d("fBAXDkM6FUM"))
local rwo = pjbp

if pjbp and not pjbp:IsA(_d("ZRAbH30ZFlQZ")) then
rwo = pjbp:FindFirstChild(_d("ZRAbHw"))
end

local cfxf = rwo and rwo:IsA(_d("ZRAbH30ZFlQZ")) and rwo.Text or nil

if type(cfxf) == _d("QgERAl8f") then
local useg, tmys = cfxf:match(_d("GS49RGxTXR5dTUAY"))

ybth.meterCurrent = smvb(useg)
ybth.meterMax = smvb(tmys)
end

return ybth.meterCurrent, ybth.meterMax
end

function bs.worldBoss.meterFull()
local ihc, tdze = bs.worldBoss.meter()

return ihc ~= nil and tdze ~= nil and tdze > 0 and ihc >= tdze
end

bs.worldBoss.holdsFishing = function()
local eowd = bs.worldBoss

if not eowd.enabled then
return false
end

if eowd.fishingMode == _d("RhQKHw") then
return eowd.bossUp()
end

return os.clock() < (eowd.takingUntil or 0)
end

bs.worldBoss.holdsDigging = function()
local vlg = bs.worldBoss

if not vlg.enabled or vlg.digHold ~= true then
return false
end

if not vlg.bossUp() then
return false
end

return not (vlg.stopAtFull and vlg.meterFull())
end

function bs.worldBoss.travel()
local rjla = bs.worldBoss
local sl = kxt.Character
local cixc = sl and sl:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if not cixc or os.clock() < rjla.travelUntil then
return
end

rjla.travelUntil = os.clock() + 6

local enso = workspace:FindFirstChild(_d("ZhoRB1U6G0IGMwRDDBVd"))
local aob = enso and enso:FindFirstChild(_d("YRoRH1AU"))

if not aob then
return
end

if (cixc.Position - aob.Position).Magnitude > 150 then
local gfpy = ebs.remote(_d("ZRAPDkEXBkUhDDxeChhV"))

if gfpy then
pcall(function()
gfpy:FireServer(_d("XRoBCUg"))
end)
end

return
end

if (cixc.Position - aob.Position).Magnitude > 6 then
rjla.walkLeg(aob.Position + Vector3.new(0, 3, 0), 4)

if (cixc.Position - aob.Position).Magnitude > 9 then
return
end
end

local jdjf = aob:FindFirstChildOfClass(_d("YQcME1gVHUUMMxleFQRF"))

if not jdjf then
return
end

pcall(function()
if type(fireproximityprompt) == _d("VwANCEURG18") then
fireproximityprompt(jdjf)
else
jdjf:InputHoldBegin()
task.wait(0.25)
jdjf:InputHoldEnd()
end
end)
end

function bs.worldBoss.reach()
local exea = bs.worldBoss

local cc = workspace:FindFirstChild(_d("ZhoRB1U6G0IGIhlUFhU")) or workspace:FindFirstChild(_d("ZhoRB1U6G0IGMBtQDxo"), true)
local lbvu = kxt.Character
local oipc = lbvu and lbvu:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if not (cc and oipc) then
exea.travel()
return false
end

local plar = cc:FindFirstChild(_d("chAPB3wZDA")) or cc
local xthi, mnju = pcall(function()
return plar:GetPivot()
end)

if not xthi then
return false
end

local wlzt = mnju.Position + mnju.LookVector * 6 + Vector3.new(0, 3, 0)
local eel = Vector3.new(mnju.Position.X, wlzt.Y, mnju.Position.Z)

oipc.CFrame = CFrame.lookAt(wlzt, eel)

return true
end

bs.worldBoss.cityBounds = { 19100, 20900, -850, 850 }

function bs.worldBoss.inArena()
local kvj = kxt.Character and kxt.Character:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))
local fhbs = bs.worldBoss.cityBounds

if not kvj then
return false
end

local ptvp = kvj.Position

return ptvp.X >= fhbs[1] and ptvp.X <= fhbs[2]
and ptvp.Z >= fhbs[3] and ptvp.Z <= fhbs[4]
end

function bs.worldBoss.enterCity(lxls)
local kg = bs.worldBoss

local xok = os.clock() + (lxls or 30)

if kg.inArena() then
return true
end

while os.clock() < xok do
if not kg.enabled then
return false
end

kg.travel()

if kg.inArena() then
return true
end

task.wait(0.5)
end

return kg.inArena()
end

bs.worldBoss.walking = false
bs.worldBoss.walkStartedAt = 0

function bs.worldBoss.walkLeg(apu, bwnp)
local lrr = bs.worldBoss
local fr = kxt.Character
local zgdl = fr and fr:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))
local pcmh = fr and fr:FindFirstChildOfClass(_d("eQAOCl8XHVU"))

if not (zgdl and pcmh) then
return false
end

if lrr.walking and os.clock() - (lrr.walkStartedAt or 0) < 45 then
return false
end

bwnp = bwnp or 6

lrr.walking = true
lrr.walkStartedAt = os.clock()

local afg, gyp = pcall(function()
local tkk = os.clock() + 40
local jfq = 0
local tavf = zgdl.Position
local zac = os.clock()

while lrr.enabled and os.clock() < tkk do
local rppk = Vector3.new(apu.X - zgdl.Position.X, 0, apu.Z - zgdl.Position.Z)

if rppk.Magnitude <= bwnp then
return true
end

if os.clock() - jfq >= 0.25 then
pcmh:MoveTo(Vector3.new(apu.X, zgdl.Position.Y, apu.Z))
jfq = os.clock()
end

if os.clock() - zac >= 1.2 then
if (zgdl.Position - tavf).Magnitude < 2 then
pcmh.Jump = true
end

tavf = zgdl.Position
zac = os.clock()
end

task.wait(0.1)
end

return Vector3.new(apu.X - zgdl.Position.X, 0, apu.Z - zgdl.Position.Z).Magnitude <= bwnp
end)

pcall(function()
pcmh:MoveTo(zgdl.Position)
end)

lrr.walking = false

return afg and gyp == true
end

function bs.worldBoss.walkIn(bmw)
local vyy = bs.worldBoss
local mjdl = workspace:FindFirstChild(_d("ZhoRB1U6G0IGIhlUFhU"))
local ew = mjdl and (mjdl:FindFirstChild(_d("chAPB3wZDA")) or mjdl) or nil
local khyf = kxt.Character and kxt.Character:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if not (ew and khyf) then
return false
end

local nzvc, fzx = pcall(function()
return ew:GetPivot()
end)

if not nzvc then
return false
end

local mfsi = fzx.Position + fzx.LookVector * 6 + Vector3.new(0, 3, 0)

if (khyf.Position - mfsi).Magnitude <= (bmw or 10) then
return true
end

local temw = vyy.walkLeg(mfsi, bmw or 6)

if not temw then
temw = (khyf.Position - fzx.Position).Magnitude <= 25
end

return temw
end

function bs.worldBoss.approach()
local wcas = bs.worldBoss

if not wcas.walkToBoss then
return wcas.reach()
end

if not wcas.enterCity() then
return false
end

return wcas.walkIn(10)
end

function bs.worldBoss.fight()
local fp = bs.worldBoss
local al = fp.remote(_d("ZhoRB1U6G0IGIghFERtf"))

local function ici(llo)
fp.nextFightAt = os.clock() + (llo or 20)

return false
end

if not al then
return ici(60)
end

if fp.stopAtFull and fp.meterFull() then
return ici(20)
end

if rz.enabled
and (rz.tpToBay or rz.deepZone)
and rz.phase ~= _d("WBEPDg") then
return false
end

fp.takingUntil = os.clock() + 45

if not fp.approach() then
fp.takingUntil = os.clock() + 3

return ici(20)
end

local er = workspace:FindFirstChild(_d("ZhoRB1U6G0IGIhlUFhU"))
local pn = er and (er:FindFirstChild(_d("chAPB3wZDA")) or er) or nil
local pjvq = kxt.Character and kxt.Character:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))

if pn and pjvq then
local nfe, su = pcall(function()
return pn:GetPivot()
end)

if not nfe or (pjvq.Position - su.Position).Magnitude > 60 then
fp.takingUntil = os.clock() + 2

return ici(10)
end
end

jzfp.bossTeams.applyTeam(fp.team)

task.wait(1.4)

pcall(function()
al:FireServer(_d("VxwEA0U"))
end)

fp.fightAt = os.clock()
fp.holdUntil = os.clock() + 4

fp.takingUntil = os.clock() + 0.6

if rz.enabled and (rz.tpToBay or rz.deepZone) then
rz.deepPhase = _d("WBEPDg")
rz.deepStageAt = 0
rz.nextCastAt = 0
end

fp.killsAtFire = type(fp.state) == _d("RRQBB1Q") and tonumber(fp.state.kills) or nil

if fp.fishingMode ~= _d("RhQKHw") and rz.enabled
and (rz.tpToBay or rz.deepZone) then
fp.nextFightAt = os.clock() + 1
end

return true
end

function bs.worldBoss.buy(fhaf)
local gojb = bs.worldBoss
local bei = gojb.remote(_d("ZhoRB1U6G0IGIghFERtf"))

fhaf = fhaf or 1

if not bei then
return 0
end

local ngkk = 0

for hh = 1, fhaf do
local hozv = gojb.state

if type(hozv) ~= _d("RRQBB1Q") or type(hozv.shop) ~= _d("RRQBB1Q") then
break
end

if os.clock() < gojb.buyAt then
break
end

local qiw = tonumber(hozv.medals) or 0
local sbjb = nil

for fxxo, cshp in ipairs(hozv.shop) do
local yk = tonumber(cshp.price) or 0
local ojh = cshp.kind ~= _d("WAEGBg") or (tonumber(cshp.left) or 0) > 0

if gojb.selected[cshp.id] == true and ojh and cshp.owned ~= true and yk <= qiw then
sbjb = cshp
break
end
end

if not sbjb then
break
end

pcall(function()
bei:FireServer(_d("UwAa"), sbjb.id, 1)
end)

ngkk = ngkk + 1
gojb.bought = gojb.bought + 1
gojb.buyAt = os.clock() + 1.2

gojb.syncedAt = 0
gojb.requestSync()
task.wait(1.1)
end

return ngkk
end

bs.worldBoss.questGroups = { _d("QRARGF4WFV0"), _d("VhkMCVAU"), _d("VxwPBw"), _d("QxAQH0MRF0UcDAU") }

function bs.worldBoss.questRows(azwf)
local slrn = bs.worldBoss
local draz = type(azwf) == _d("RRQBB1Q") and azwf.quests or nil
local lwuh = {}

if type(draz) ~= _d("RRQBB1Q") then
return lwuh
end

for tzj, xgdu in ipairs(slrn.questGroups) do
local nrw = draz[xgdu]

if type(nrw) == _d("RRQBB1Q") then
for zmg, fdx in ipairs(nrw) do
if type(fdx) == _d("RRQBB1Q") then
table.insert(lwuh, fdx)
end
end
end
end

return lwuh
end

function bs.worldBoss.claim()
local zir = bs.worldBoss
local tjza = zir.remote(_d("ZhoRB1U6G0IGIghFERtf"))
local xgfc = zir.state

if not tjza or type(xgfc) ~= _d("RRQBB1Q") or type(xgfc.quests) ~= _d("RRQBB1Q") then
return 0
end

if os.clock() < zir.claimAt then
return 0
end

local vcn = zir.questRows(xgfc)

if #vcn == 0 then
return 0
end

local rebo = {}

for xrw, shh in ipairs(vcn) do
if shh.id ~= nil then
rebo[tostring(shh.id)] = true
end
end

for xr, ak in pairs(zir.claimFired) do
if not rebo[xr] or os.clock() - ak > 120 then
zir.claimFired[xr] = nil
end
end

local djdx = nil

for vmyz, hhuf in ipairs(vcn) do
if hhuf.complete == true and hhuf.claimed ~= true and hhuf.id ~= nil then
local twws = tostring(hhuf.id)
local ppdo = zir.claimFired[twws]

if not (ppdo and os.clock() - ppdo < 6) then
djdx = hhuf
break
end
end
end

if not djdx then
return 0
end

zir.claimFired[tostring(djdx.id)] = os.clock()
zir.claimedTotal = zir.claimedTotal + 1

pcall(function()
tjza:FireServer(_d("UhkCAlw"), djdx.id)
end)

zir.claimAt = os.clock() + 2
zir.syncedAt = 0
zir.requestSync()

return 1
end

bs.worldBoss.syncRemote = ii(_d("ZhoRB1U6G0IGMBJfGw"))

if bs.worldBoss.syncRemote then
bs.worldBoss.syncRemote.OnClientEvent:Connect(function(tqw)
local xrdj = bs.worldBoss

if type(tqw) ~= _d("RRQBB1Q") then
return
end

xrdj.state = tqw
xrdj.syncedAt = os.clock()

if tqw.inFight == true then
xrdj.wasFighting = true
elseif xrdj.wasFighting then
xrdj.wasFighting = false

if rz.enabled then
pcall(rz.recover)
end
end
end)
end

task.spawn(function()
bs.worldBoss.requestSync()
end)

task.spawn(function()
while opq() do
local fry = bs.worldBoss
local nmh = fry.state

if fry.autoClaim then
if os.clock() - fry.syncedAt > 4 and os.clock() - fry.askedAt > 1 then
fry.requestSync()
end

fry.claim()
end

if fry.enabled then

if os.clock() - fry.syncedAt > 4 and os.clock() - fry.askedAt > 1 then
fry.requestSync()
end

if fry.autoBuy and next(fry.selected) then
fry.buy(1)
end

local duxr = type(nmh) == _d("RRQBB1Q") and nmh.repeatOn == true

if fry.fishingMode == _d("RhQKHw") then

local boz = type(nmh) == _d("RRQBB1Q") and tonumber(nmh.kills) or nil

if boz and boz ~= fry.seenKills then
fry.seenKills = boz
fry.progressAt = os.clock()
end

if fry.bossUp() and not duxr and os.clock() - (fry.repeatAskedAt or 0) > 20 then
if fry.approach() then
fry.repeatSeeded = true
fry.progressAt = os.clock()

fry.setRepeat(true)
end
end

if fry.hasWork() and os.clock() >= fry.holdUntil
and os.clock() - (fry.progressAt or 0) > 20
and os.clock() - (fry.kickAt or 0) > 20 then
local fvhj = qnbp()
local vir = jl.roleSlot(_d("XwUA")) or 1
local gikz = jl.enabled and jl.busy(vir)

if not fvhj and not gikz then
fry.kickAt = os.clock()
fry.fight()
end
end

if not fry.bossUp() and duxr and os.clock() - (fry.repeatAskedAt or 0) > 6 then
fry.repeatSeeded = false
fry.setRepeat(false)
end
elseif fry.isOpen() and duxr and os.clock() - (fry.repeatAskedAt or 0) > 6 then
fry.setRepeat(false)
end

local hjv = type(nmh) == _d("RRQBB1Q") and tonumber(nmh.kills) or nil

if fry.killsAtFire ~= nil and hjv == fry.killsAtFire
and os.clock() - (fry.fightAt or 0) > 9
and os.clock() < (fry.nextFightAt or 0)
and os.clock() >= fry.holdUntil then
fry.killsAtFire = nil
fry.nextFightAt = os.clock()
end

if fry.fishingMode ~= _d("RhQKHw") and fry.hasWork() and os.clock() >= fry.holdUntil
and os.clock() >= (fry.nextFightAt or 0)
and not (fry.stopAtFull and fry.meterFull()) then

local belh = qnbp()
local bcfw = jl.roleSlot(_d("XwUA")) or 1
local xed = jl.enabled and jl.busy(bcfw)

if not belh and not xed then
fry.fight()
end
end
end

local nxcc = fry.bodyText()

if fry.bodyParagraph and nxcc ~= fry.bodyShown then
fry.bodyShown = nxcc

pcall(function()
fry.bodyParagraph:UpdateBody(nxcc)
end)
end

local veu = fry.shopText()

if fry.shopParagraph and veu ~= fry.shopShown then
fry.shopShown = veu

pcall(function()
fry.shopParagraph:UpdateBody(veu)
end)
end

task.wait(0.5)
end
end)

function jl.roomsHaveWork()
if not rdg.enabled then
return false
end

local tvy = rdg.progress

if tvy == nil then
return true
end

for whp, bek in ipairs(zx.Milestones) do
if zx.isMilestoneUnlocked(bek, tvy) and not zx.isMilestoneCleared(bek, tvy) then
return true
end
end

return false
end

function jl.raidHasWork()
if not bs.enabled then
return false
end

local wnqc = to:FindFirstChild(_d("YxQKD2IMFUUAEA"))

if not wnqc then
return false
end

if not (wnqc:GetAttribute(_d("eAYsG1QW")) == true or wnqc:GetAttribute(_d("dxoRCFQc")) == true) then
return false
end

for eja, qq in ipairs({ 1, 2 }) do
local ayfa = bs.picks[qq] and bs.bossFor(qq)

if ayfa and bs.cleared[ayfa] ~= en(ayfa) then
return true
end
end

return false
end

function jl.towerYields()
return qnbp()
or jl.roomsHaveWork()
or jl.raidHasWork()
or bs.worldBoss.hasWork()
end

function jl.towerOutranks()
return not jl.enabled and (zjmc.active() or bz.run.enabled)
end

local function qxo(wex)
if not wex then
return false
end

local udiq = false

for dhs, uumv in ipairs(getconnections(wex.MouseButton1Click)) do
local gomf = uumv.Function

if type(gomf) == _d("VwANCEURG18") then
pcall(gomf)
else
pcall(function()
uumv:Fire()
end)
end

udiq = true
end

return udiq
end

function ss()
for mt, bst in ipairs({ _d("cxQXH10dM0Qc"), _d("cxQXH10dM0QcUQ") }) do
local asmo = spkj:FindFirstChild(bst)

if asmo then
local nhe = asmo:FindFirstChild(_d("cxQXH10dJ1IHBg5f"))
local qguq = nhe and nhe:FindFirstChild(_d("YAAKCFo/HUcQNhtzDQBFGg0"))

if qxo(qguq) then
return true
end

local ffq = asmo:FindFirstChild(_d("dxkMBEMrF0MQBgU"))
local banq = ffq and ffq:FindFirstChild(_d("cxoXH14VNlAH"))
local ujv = banq and banq:FindFirstChild(_d("dhwVDmQINkQBFwRf"))

if qxo(ujv) then
return true
end
end
end

local dlj = to:FindFirstChild(_d("YxAOBEUdBw"))
local vb = dlj and dlj:FindFirstChild(_d("dhwVDmQIIF4CBhk"))
local gipz = dlj and dlj:FindFirstChild(_d("dBsHP14PEUMnBgZeDBE"))

if not (vb or gipz) then
return false
end

if vb then
pcall(function()
vb:FireServer()
end)
end

if gipz then
pcall(function()
gipz:FireServer(1)
end)
end

dsra.manualPause = false
dsra.floor = nil
ebs.restorePause()

return true
end

local qla = ss

function ss()

dsra.lastGiveUp = {
at = os.time(),
clock = os.clock(),
floor = dsra.floor,
parked = ebs.parked(),
active = ta(),
hard = ebs.hardNow(),
nightmare = dsra.nightmare == true,
caller = debug.traceback(_d(""), 2),
}

local kdo = qla()

if kdo then
xdh.armedAt = os.clock()
end

return kdo
end

function oswe(ada)

local quys = false

if ada ~= false and ta() then
local gzg = ddbw()

if gzg then
quys = ebs.pauseAt(true, gzg) or quys

dsra.pauseArmed = true
end
end

for madi, bxse in ipairs({ _d("cxQXH10dM0Qc"), _d("cxQXH10dM0QcUQ") }) do
local gsa = spkj:FindFirstChild(bxse)

if gsa then
local moq = gsa:FindFirstChild(_d("cxQXH10dJ1IHBg5f"))
local cmkk = moq and moq:FindFirstChild(_d("YAAKCFo6BlQUCClEDABeGw"))

if cmkk then

if tostring(cmkk.Text):find(_d("0+nw"), 1, true) then
quys = true
elseif qxo(cmkk) then
quys = true
end
end

local rkz = gsa:FindFirstChild(_d("dxkMBEMrF0MQBgU"))

if rkz and rkz.Visible then
local jhh = rkz:FindFirstChild(_d("cxoXH14VNlAH"))
local lqmg = jhh and jhh:FindFirstChild(_d("ZRQIDnMKEVAeIR5FDBtf"))

if qxo(lqmg) then
quys = true
end
end
end
end

return quys
end

function zjmc.pauseRun()
if not ta() then
pcall(function()
tkan:Dialog({
Title = _d("YRQWGFRYPUIZAgVVWDxQBwcIXgoR"),
Description = _d("fxpDH14PEUNVER5fWB1CVQ8CRx1UQxwEA0VYGl4CT0tCF1RFHQYZVFgdQlUNBEUQHV8SQx9eWARQABAOHw"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})
end)

return
end

zjmc.paused = true
zjmc.manualPause = true
local gyuy = oswe(false)

pcall(function()
tkan:Notify({
Title = _d("YRQWGFRYPUIZAgVVWDxQBwcIXgoR"),
Description = gyuy and _d("ZRoUDkNYBkQbQxtQDQdUEU0") or _d("YwANS1gLVF0cFQ4dWBZEAUMFXlgWQxACABEaAUUBDAURHhtEGwdF"),
Lifetime = 5,
})
end)
end

function zjmc.giveUpRun()
if not ta() then
pcall(function()
tkan:Dialog({
Title = _d("dhwVDhEtBBE8EAdQFhARPQIZVRsbQxA"),
Description = _d("fxpDH14PEUNVER5fWB1CVQ8CRx1UQxwEA0VYGl4CT0tCF1RFHQYZVFgdQlUNBEUQHV8SQx9eWBNYAwZLRAha"),
Buttons = {
{
Name = _d("dhoXS1gM"),
},
},
})
end)

return
end

zjmc.gaveUp = true
zjmc.paused = true
local husz = ss()

pcall(function()
tkan:Notify({
Title = _d("dhwVDhEtBBE8EAdQFhARPQIZVRsbQxA"),
Description = husz and _d("dhQVDhENBBEBCw4RGwFDBwYFRVgAXgIGGREeGF4aEUU") or _d("YwANS1gLVF0cFQ4dWBZEAUMFXlgTWAMGS0QIVFMAFx9eFlRXGhYFVVY"),
Lifetime = 5,
})
end)
end

task.spawn(function()
while opq() do

pcall(ebs.pinMode)

if dsra.pauseArmed and not yosm.enabled
and (not dsra.enabled or not dsra.paused) then
ebs.restorePause()

if ebs.pauseState() ~= true then
dsra.pauseArmed = false
end
end

if dsra.enabled and not dsra.manualPause and jl.towerSlot() ~= nil
and not bz.run.enabled then

local dhz = os.clock() - (dsra.floorAt or 0) > 12
and os.clock() - (dsra.battleAt or 0) > 12

local vkby = jl.towerSlot() == 1 and not dsra.paused
and not (yosm.enabled and yosm.floor > 0)
and dhz
and ebs.parked()

if vkby then
dsra.parkedAt = dsra.parkedAt > 0 and dsra.parkedAt or os.clock()

if os.clock() - dsra.parkedAt >= 25 then
dsra.parkedAt = os.clock()
ss()
end
else
dsra.parkedAt = 0
end

local ggch = ebs.hardPickNow()

local uw = not dsra.paused and not dsra.pending
and not (yosm.enabled and yosm.floor > 0)
and ta()
and ggch ~= nil
and ggch ~= (dsra.nightmare == true)

if uw then
dsra.modeWrongAt = dsra.modeWrongAt or os.clock()
else
dsra.modeWrongAt = nil
end

if dsra.modeWrongAt and os.clock() - dsra.modeWrongAt > 20
and os.clock() - (dsra.modeFixAt or 0) > 20 then
dsra.modeFixAt = os.clock()
dsra.modeWrongAt = nil
ebs.endIfWrongMode(dsra.nightmare == true)
end

if (dsra.floorAt or 0) > 0 and not dsra.paused
and os.clock() - dsra.floorAt > 60
and os.clock() - (dsra.battleAt or 0) > 60
and not ta()
and not jl.busy(jl.towerSlot() or 1) then
dsra.floorAt = 0
dsra.battleAt = 0
dsra.floor = nil
end

if not jl.enabled and (jl.towerOutranks() or jl.towerYields()) then
if not dsra.paused then
dsra.paused = true
oswe()
end

elseif jl.slotFree(jl.towerSlot() or 1)
and (dsra.floorAt or 0) == 0
and not jzfp.bossTeams.swapHold then
local udmn = ddbw()
local nuim = yosm.enabled and yosm.floor or 0
local eas = nuim > 0 and udmn ~= nil and udmn >= nuim

if eas then
if not dsra.paused then
dsra.paused = true
oswe()
end
else

if dsra.paused then
dsra.paused = false
ebs.restorePause()
end

if not (dsra.pending and os.time() < dsra.pendingUntil) then

jzfp.bossTeams.applyTower(_d("RRoUDkM"), 1)

ebs.hardPick(dsra.nightmare == true)
cib.EndTowerRemote:FireServer(1)
task.wait(0.25)

cib.StartBattle:FireServer(_d("RRoUDkM"), { hard = dsra.nightmare == true })

wzj.triggered = false
wzj.weatherTriggered = false

dsra.floorAt = os.clock()

dsra.floor = nil
dsra.pending = true
dsra.pendingUntil = os.time() + 8
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while opq() do
if zjmc.active() and jl.hardcoreSlot() ~= nil then
local zaw = jl.hardcoreSlot() or 1
local xzx = zjmc.floorNow()

local wnv = yosm.enabled and yosm.floor or 0
local wty = wzj.enabled and wzj.floor or 0

if wnv <= 0 and not zjmc.stoodDown and not zjmc.manualPause
and not jzfp.bossTeams.swapHold then
zjmc.paused = false
end

if zjmc.gaveUp then

elseif wty > 0 and xzx and xzx >= wty then
zjmc.gaveUp = true
zjmc.paused = true
local gkjy = ss()

pcall(function()
tkan:Notify({
Title = _d("cAAXBBE/HUcQQz5B"),
Description = gkjy and (_d("dhQVDhENBBEUF0tZGQZVFgwZVFgSXRoMGRE") .. xzx .. _d("Hw")) or (_d("eRQRD1IXBlRVBQdeFwYR") .. xzx .. _d("EQcGClIQEVVZQwlEDFRfGkMMWA4REQATS1MNAEUaDUtXFwFfEU0")),
Lifetime = 5,
})
end)
elseif xzx and wnv > 0 and xzx >= wnv then
if not zjmc.paused then
zjmc.paused = true
oswe(false)
end
elseif not jl.enabled and jl.towerYields() then

if not zjmc.stoodDown then
zjmc.stoodDown = true
zjmc.paused = true
oswe(false)
end
elseif zjmc.stoodDown then

zjmc.stoodDown = false
zjmc.paused = false
elseif not zjmc.paused and not jzfp.bossTeams.swapHold then
if jl.slotFree(zaw) and not (zjmc.pending and os.time() < zjmc.pendingUntil) then
zjmc.start(zaw)
task.wait(2)
end
end
end

task.wait(1)
end
end)

function jl.slotActivity(zyd)
if not jl.busy(zyd) then
return nil
end

local mah = jl.role[zyd]
local uvbe = spkj:FindFirstChild(zyd == 2 and _d("cxQXH10dM0QcUQ") or _d("cxQXH10dM0Qc"))
local aik = uvbe and uvbe:FindFirstChild(_d("YwANLV0XG0M5AglUFA"))
local uaz = aik and aik.Text or _d("")

if rdg.enabled and mah == _d("XwUA") then
local plm = uaz:match(_d("bycMBFxdBxpdRg8aUQ"))

if plm then
return _d("eBsFAl8RAFRVEQReFQcRWEMZXhcZEQ") .. plm
end
end

if jl.isTowerRole(mah)
and (dsra.enabled or bz.run.enabled or zjmc.active()) then
local bla = uaz:match(_d("bzMPBF4KUUJeS05VU10"))

if bla then
return jl.roleName(zyd) .. _d("EVhDDV0XG0NV") .. bla
end
end

return nil
end

function jl.statusText()
if not jl.enabled then
return _d("cAAXBBErGF4BQwRXHlQcVQYdVAoNRR0KBVZYBkQbEEteFlRCGQwfEUla")
end

local qdn = {}

for trkr = 1, 2 do
local cum = _d("YhkMHxE") .. tostring(trkr) .. _d("EVhD")
local gct = jl.slotActivity(trkr)

if trkr == 2 and jl.hasSlot2 == false then
cum = cum .. jl.roleLabel(trkr) .. _d("EVhDB14bH1QRQ0NfHRFVBkMfWR1UdQACBxE6FUUBDw4RKxheAUo")
elseif gct then
cum = cum .. gct
elseif jl.busy(trkr) then
cum = cum .. jl.roleLabel(trkr) .. _d("EVhDDVgfHEUcDQw")
else
cum = cum .. jl.roleLabel(trkr) .. _d("EVhDAlUUEQ")
end

table.insert(qdn, cum)
end

return table.concat(qdn, _d("O38"))
end

task.spawn(function()
while opq() do
jl.hasSlot2 = jl.detectSlot2()
task.wait(5)
end
end)

task.spawn(function()
while opq() do

if not zjmc.island and yosm.enabled and yosm.floor > 0 then
local bxid = ddbw()

if bxid and bxid >= yosm.floor then
if not yosm.triggered then
yosm.triggered = true
oswe()

pcall(function()
cib.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = bxid,
})
end)
end
else
yosm.triggered = false
end
end

if not zjmc.island and wzj.enabled and wzj.floor > 0 then
local cjo = ddbw()

if cjo and cjo >= wzj.floor then

if not wzj.triggered and ta() then
wzj.triggered = true
local tzal = ss()

pcall(function()
tkan:Notify({
Title = _d("cAAXBBE/HUcQQz5B"),
Description = tzal and (_d("dhQVDhENBBEUF0tXFBteB0M") .. cjo .. _d("Hw")) or (_d("dxkMBENY") .. cjo .. _d("EQcGClIQEVVZQwlEDFRfGkMMWA4REQATS1MNAEUaDUtXFwFfEU0")),
Lifetime = 5,
})
end)
end
else
wzj.triggered = false
end
end

if not zjmc.island and wzj.weatherEnabled then
local cty = ddbw()
local dneg = wzj.weatherMinFloor <= 0
or (cty ~= nil and cty >= wzj.weatherMinFloor)
local lgo = dneg and wzj.weatherWanted() or nil

if lgo then
if not wzj.weatherTriggered
and wzj.weatherGivenFor ~= wzj.weatherNow
and ta() then
wzj.weatherTriggered = true
wzj.weatherGivenFor = wzj.weatherNow

local emg = ss()

pcall(function()
tkan:Notify({
Title = _d("ZhACH1kdBhEyCh1UWCFB"),
Description = emg
and (_d("dhQVDhENBBEUF0tXFBteB0M") .. tostring(cty) .. _d("ERwNSw") .. lgo .. _d("Hw"))
or (lgo .. _d("ERwQS0QIWBEXFh8RFhsREgodVFgBQVUBHkUMG19VAgVCDxFDEAdF")),
Lifetime = 5,
})
end)
end
else
wzj.weatherTriggered = false
end
end

task.wait(1)
end
end)

task.spawn(function()
if cib.WeatherChanged then
pcall(function()
cib.WeatherChanged.OnClientEvent:Connect(function(wsd)

wzj.weatherNow = nil
wzj.weatherAt = 0
wzj.weatherGivenFor = nil
xdh.weatherSpent = nil

if type(wsd) == _d("QgERAl8f") then
wzj.weatherNow = wsd
end
end)
end)
end

while opq() do
if os.clock() - wzj.weatherAt > 5 then
wzj.weatherAt = os.clock()

if cib.RequestWeatherState then
local nfct, owg = pcall(function()
return cib.RequestWeatherState:InvokeServer()
end)

if nfct and type(owg) == _d("QgERAl8f") then
if wzj.weatherNow ~= nil and wzj.weatherNow ~= owg then
xdh.weatherSpent = nil
wzj.weatherGivenFor = nil
end

wzj.weatherNow = owg
end
end
end

task.wait(1)
end
end)

task.spawn(function()
local jkwr = nil
local hdlc = nil
local ycdt = 0

while opq() do

if (xdh.onWeather or xdh.afterGiveUp) and os.clock() - ycdt > 60 then
ycdt = os.clock()

pcall(function()
cib.RequestItemSync:FireServer()
end)
end

if xdh.onWeather and next(xdh.weatherPotions) ~= nil then
local vlty = wzj.weatherWanted(xdh.weathers)

if vlty and wzj.weatherNow ~= xdh.weatherSpent then

xdh.weatherSpent = wzj.weatherNow
xdh.pop(xdh.weatherPotions, xdh.weatherAmount, _d("ZhACH1kdBhE") .. vlty)
end
end

if xdh.afterGiveUp and next(xdh.giveUpPotions) ~= nil and xdh.armedAt > 0 then

local lqmu = os.clock() - xdh.armedAt

if not ta() or lqmu >= 3 then
if lqmu <= 30 then
xdh.armedAt = 0
xdh.pop(xdh.giveUpPotions, xdh.giveUpAmount, _d("cBMXDkNYE1gDBktECA"))
else

xdh.armedAt = 0
end
end
end

local ekp = xdh.status()

if ekp ~= jkwr then
jkwr = ekp

pcall(function()
xdh.weatherParagraph:UpdateBody(ekp)
end)
end

local swkr = xdh.giveUpStatus()

if swkr ~= hdlc then
hdlc = swkr

pcall(function()
xdh.giveUpParagraph:UpdateBody(swkr)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while opq() do
local sben = rz.stick

if sben.enabled and os.clock() >= sben.at then
sben.at = os.clock() + 3

local romz = nil

for ojam, uqyx in ipairs(workspace:GetDescendants()) do
if (uqyx:IsA(_d("cxQQDmEZBkU")) or uqyx:IsA(_d("fBoHDl0")))
and sben.names[string.lower(uqyx.Name)] then
romz = uqyx
break
end
end

local gd = kxt.Character
local pydt = gd and gd:FindFirstChild(_d("eQAOCl8XHVUnDARFKBVDAQ"))
local dnm = romz and (romz:IsA(_d("cxQQDmEZBkU")) and romz or romz:FindFirstChildWhichIsA(_d("cxQQDmEZBkU"), true))

if dnm and pydt then
local zqr = dnm:FindFirstChildWhichIsA(_d("YQcME1gVHUUMMxleFQRF"))
or (romz ~= dnm and romz:FindFirstChildWhichIsA(_d("YQcME1gVHUUMMxleFQRF"), true))

if (pydt.Position - dnm.Position).Magnitude > 4 then
pcall(function()
gd:PivotTo(CFrame.new(dnm.Position + Vector3.new(0, 3, 0)))
end)

task.wait(0.4)
end

if zqr then
pcall(function()
zqr:InputHoldBegin()
task.wait(0.2)
zqr:InputHoldEnd()
end)
end

sben.hits = sben.hits + 1
sben.last = _d("QRwAAFQcVEQFQwpFWA") .. math.floor(dnm.Position.X) .. _d("HVU") .. math.floor(dnm.Position.Z)

pcall(function()
tkan:Notify({
Title = _d("fQAAABErAFgWCA"),
Description = sben.last,
Lifetime = 4,
})
end)
elseif romz then
sben.last = _d("VxoWBVVY") .. romz:GetFullName() .. _d("HVUNBEUQHV8SQx9eWAdFFA0PERca")
else
sben.last = _d("XxpDGEURF1pVCgURDBxUVRQEQxQQ")
end
end

task.wait(1)
end
end)

getgenv().ACBXStick = rz.stick

task.spawn(function()

local jiv = game:GetService(_d("ZxwRH0QZGHgbEx5FNRVfFAQOQw"))

local function ndz()
local sjsq = kxt.Character
local uued = sjsq and sjsq:FindFirstChildOfClass(_d("eQAOCl8XHVU"))

if uued and uued.Health > 0 then
pcall(function()
uued.Jump = true
end)
end

pcall(function()
jiv:SendKeyEvent(true, Enum.KeyCode.Space, false, kxt)
end)

task.wait(0.05)

pcall(function()
jiv:SendKeyEvent(false, Enum.KeyCode.Space, false, kxt)
end)

jftc.jumps = jftc.jumps + 1
end

while opq() do
if jftc.enabled and os.clock() >= jftc.nextAt then
jftc.nextAt = os.clock() + 300
ndz()
end

task.wait(1)
end
end)

tkan:SetState(true)

task.defer(function()
local rwsx
for cmw, fwpj in ipairs(game:GetService(_d("choRDnYNHQ")):GetDescendants()) do
if fwpj:IsA(_d("ZRAbH30ZFlQZ")) and fwpj.Text == dbvp then
rwsx = fwpj
break
end
end

if not rwsx then
return
end

local abko = rwsx
while abko and not (abko:IsA(_d("dwcCBlQ")) and abko.AbsoluteSize.X >= 600 and abko.AbsoluteSize.Y >= 400) do
abko = abko.Parent
end

if abko then
abko.AnchorPoint = Vector2.new(0, 0)

local qic = abko.AbsoluteSize
abko.Position = UDim2.new(0.5, -qic.X / 2, 0.5, -qic.Y / 2 - 20)
end
end)

task.defer(function()
task.wait(0.1)

for anj, urf in ipairs(game:GetService(_d("choRDnYNHQ")):GetDescendants()) do
if urf:IsA(_d("YhYRBF0UHV8SJRlQFRE")) and urf.Name == _d("dBkGBlQWAEImABleFBhYGwQ") then
urf.CanvasPosition = Vector2.new(0, 0)
end
end
end)

getgenv().ACBXTowerRunActive = ta
getgenv().ACBXWindow = tkan

au.repo = _d("chdRJB4ZF1MN")
au.url = _d("WQEXG0JCWx4HAhwfHx1FHRYJRAsRQxYMBUUdGkVbAARcVzdTRyxEUBsWSVoOClgWW1AWARMfFAFQ")
au.versionUrl = _d("WQEXG0JCWx4HAhwfHx1FHRYJRAsRQxYMBUUdGkVbAARcVzdTRyxEUBsWSVoOClgWW0cQERhYFxofARsf")

function au.fetch(wzjm)

local derp, zif = pcall(function()
return game:HttpGet(wzjm .. _d("DgNe") .. os.time() .. _d("Fwde") .. math.random(1, 100000))
end)

if not derp or type(zif) ~= _d("QgERAl8f") or #zif == 0 then
return nil
end

if zif:find(_d("b0FTXw")) or zif:find(_d("bzsMHxE+G0QbBw")) then
return nil
end

return zif
end

function au.check()
if au.buildId == _d("VRAV") then
return nil, _d("VRAVS1MNHV0R")
end

if au.checking then
return nil, _d("UwAQEg")
end

au.checking = true
local gtbg = au.fetch(au.versionUrl)
au.checking = false

if not gtbg then
return nil, _d("XxpDHVQKB1gaDUtXERhU")
end

local mwss = gtbg:match(_d("b1AQQRlWWRhQEEEV")) or _d("")
mwss = mwss:gsub(_d("FAZJYR9SUA"), _d(""))

if mwss == _d("") or not au.newer(mwss) then
return nil, _d("UgARGVQWAA")
end

return mwss
end

function au.newer(fooy)
local function falp(zqvp)
local lpxr, ptt = tostring(zqvp or _d("")):match(_d("R0pLTlVdEBQRRg8UHFFVXEZGGV0QFBFGDxQcXQ"))

return lpxr and (lpxr .. ptt) or nil
end

local function lg(hjcu)
local rg = tostring(hjcu or _d(""))

if not rg:match(_d("b1AHQBRWSxQRSU8")) then
return nil
end

local oa = {}

for mgp in rg:gmatch(_d("FBFI")) do
oa[#oa + 1] = tonumber(mgp) or 0
end

return #oa > 0 and oa or nil
end

local mshi, kjmx = lg(fooy), lg(au.buildId)

if mshi and kjmx then
for kjqi = 1, math.max(#mshi, #kjmx) do
local yi = mshi[kjqi] or 0
local krj = kjmx[kjqi] or 0

if yi ~= krj then
return yi > krj
end
end

return false
end

if mshi or kjmx then
return mshi ~= nil
end

local ijat, bqgw = falp(fooy), falp(au.buildId)

if not ijat or not bqgw then
return tostring(fooy) ~= tostring(au.buildId)
end

return ijat > bqgw
end

function au.busy()
if jzfp.battlePending or jzfp.currentBattle then
return true
end

local qdwh = getgenv().ACBXTowerRunActive

if type(qdwh) == _d("VwANCEURG18") then
local gin, zmw = pcall(qdwh)

if gin and zmw then
return true
end
end

return false
end

function au.apply(eolf)
if au.applying then
return false
end

au.applying = true

local tkpt = au.fetch(au.url)

if not tkpt then
au.applying = false
warn(_d("ajQgKWklVEQFBwpFHU4RFgweXRxUXxoXS1UXA18ZDApVWA") .. tostring(eolf) .. _d("HVUQH1ABHV8SQwRfWA") .. au.buildId)

pcall(function()
tkan:Notify({
Title = _d("ZAUHCkUdVFcUCgdUHA"),
Description = _d("choWB1VYGl4BQw9eDxpdGgIPEQ") .. tostring(eolf) .. _d("H1UwH1gUGBEHFgVfERpWVQ") .. au.buildId .. _d("Hw"),
Lifetime = 8,
})
end)

return false
end

local exkl, jmkg = loadstring(tkpt)

if not exkl then
au.applying = false
warn(_d("ajQgKWklVEQFBwpFHU4R") .. tostring(eolf) .. _d("EREMDkJYGl4BQwheFQRYGQZLHFg") .. tostring(jmkg))

pcall(function()
tkan:Notify({
Title = _d("ZAUHCkUdVEMQCQ5SDBFV"),
Description = _d("cwAKB1VY") .. tostring(eolf) .. _d("ERMCAl0dEBEBDEtSFxlBHA8OH1gnRRwPBxEKAV8bCgVWWA") .. au.buildId .. _d("Hw"),
Lifetime = 8,
})
end)

return false
end

pcall(function()
tkan:Notify({
Title = _d("ZAUHCkURGlY"),
Description = _d("YxAPBFAcHV8SQw") .. au.buildId .. _d("EVhdSw") .. eolf .. _d("Hw"),
Lifetime = 4,
})
end)

task.wait(0.4)

au.cameFrom = au.buildId
getgenv().ACBXUpdatedFrom = au.buildId

pcall(function()
tkan:Unload()
end)

getgenv().ACBXWindow = nil

task.wait(0.5)

local zvyq, jt = pcall(exkl)

if not zvyq then
au.applying = false
warn(_d("ajQgKWklVEQFBwpFHU4R") .. tostring(eolf) .. _d("EQELGVQPVF4bQwdeGRARWEM") .. tostring(jt))
return false
end

return true
end

au.cameFrom = getgenv().ACBXUpdatedFrom

task.defer(function()
if au.cameFrom then
getgenv().ACBXUpdatedFrom = nil
print(_d("ajQgKWklVFMACgdVWA") .. au.buildId .. _d("EV0WG1UZAFQRQw1DFxkR") .. tostring(au.cameFrom) .. _d("GA"))

pcall(function()
tkan:Notify({
Title = _d("ZAUHCkUdEA"),
Description = _d("YwANBVgWExE") .. au.buildId .. _d("HVUFGV4VVA") .. tostring(au.cameFrom) .. _d("Hw"),
Lifetime = 6,
})
end)

return
end

print(_d("ajQgKWklVFMACgdVWA") .. au.buildId)
end)

task.spawn(function()

task.wait(8)

while opq() do
if not au.enabled then

task.wait(5)
else
local ngjh = au.check()
local ouxe = au.interval

if ngjh then
if au.pendingVersion ~= ngjh or not au.pendingSince then
au.pendingVersion = ngjh
au.pendingSince = os.clock()
end

local qjmh = os.clock() - (au.pendingSince or os.clock())

if not au.busy() or qjmh >= au.forceAfter then
if au.apply(ngjh) then

swy = false
return
end

au.pendingSince = os.clock()
ouxe = au.retry
else
ouxe = au.retry
end
else
au.pendingVersion = nil
au.pendingSince = nil
end

task.wait(ouxe)
end
end
end)
getgenv().ACBXUpdater = au

task.defer(function()
task.wait(0.9)

local nzgo = co.loadUi()

if type(nzgo) ~= _d("RRQBB1Q") then
return
end

print(_d("ajQgKWklVF0aDAARChFCAQwZVBxOEQ") .. tostring(nzgo.theme) .. _d("ERQXSw") .. tostring(nzgo.scale))
end)

local function zsm()
if not opq() then
return
end

local gt = false
local wef = false

pcall(function()
gt = dsra.nightmareToggle:GetState() == true
wef = dsra.ui:GetState() == true
end)

if not (gt or wef) then
return
end

dsra.nightmare = gt
dsra.enabled = true
dsra.manualPause = false
dsra.paused = false
dsra.parkedAt = 0
dsra.modeWrongAt = nil
dsra.pending = false
dsra.pendingUntil = 0

ebs.restorePause()
dsra.pauseArmed = false
ebs.hardPick(gt)

if not ta() then
dsra.floorAt = 0
dsra.battleAt = 0
dsra.floor = nil
end

print(_d("ajQgKWklVEUaFA5DWAZUBhYGVBxUUBMXDkNYBlQZDApVQlQ") .. (gt and _d("XxwEA0UVFUMQ") or _d("XxoRBlAU")))
end

task.defer(function()
task.wait(1)

local ygy = co.autoLoadName()

if not ygy then
return
end

local woct, qxkt = co.load(ygy)

task.delay(2, zsm)

co.selected = ygy
co.lastText = woct and (_d("cAAXBBEUG1ARBg8R") .. ygy .. _d("Hw"))
or (_d("cAAXBBEUG1ARQw1QERhUEVlL") .. tostring(qxkt))
co.savesAt = 0

pcall(function()
co.fileDropdown:UpdateSelection(ygy)
end)

pcall(function()
tkan:Notify({
Title = _d("choNDVgf"),
Description = woct and (_d("fRoCD1QcVA") .. ygy .. _d("ERoNS0IMFUMBTQ"))
or (_d("choWB1VYGl4BQwdeGRAR") .. ygy .. _d("C1U") .. tostring(qxkt)),
Lifetime = 5,
})
end)
end)

task.defer(function()
task.wait(3)

if co.autoLoadName() then
return
end

zsm()
end)
