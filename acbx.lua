local _d = (function()
local A = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local M = {}
local cache = {}
for i = 1, #A do
M[string.sub(A, i, i)] = i - 1
end
local K = string.char(99, 49, 115, 114, 121, 103, 114)
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

local dsa = "ACB Rebirth v0.9993"

local function ulqn(xf)
for ox, lu in ipairs(xf:GetDescendants()) do
if lu:IsA(_d("N1QLBjUGEAZd")) and lu.Text == dsa then
local ejyy = lu
while ejyy and not ejyy:IsA(_d("MFIBFxwJNRZY")) do
ejyy = ejyy.Parent
end
return ejyy
end
end
end

local function wi()
local qgf = game:GetService(_d("M10SCxwVAQ")).LocalPlayer

for yxjw, kozw in ipairs({
(gethui and gethui() or game:GetService(_d("IF4BFz4SGw"))),
game:GetService(_d("IF4BFz4SGw")),
qgf and qgf:FindFirstChild(_d("M10SCxwVNRZY")),
}) do
for jlpr, aqfl in ipairs(kozw:GetChildren()) do

if aqfl:IsA(_d("MFIBFxwJNRZY")) then
local cm = aqfl:FindFirstChild(_d("IVAAFw"))

if cm and cm:FindFirstChild(_d("MFgXFxsGAA")) and cm:FindFirstChild(_d("IF4dBhwJBg")) then
return aqfl
end
end
end
end
end

if wi() and getgenv().ACBXAllowReload ~= true then
local hopv = getgenv().ACBXWindow
local vhma = false
local qi = false

if hopv and hopv.Dialog then
pcall(function()
if hopv.GetState and hopv:GetState() == false then
hopv:SetState(true)
end

hopv:Dialog({
Title = _d("InIxUisCEApDBxpZDgFDUB8AHAYWGhEBBxcJGw1W"),
Description = _d("IhEQHQkeUgpCUxMVFRcCVQpSFQgTB1QXUhAJUhdZGgFZFBcQQhodF0lSMVQDHhgEF0NYB1IODgYLEQcaEBRSDF8WTVkzGgYRAQcXCRsNVlMRFhcLQ0IHHQkUUgVYAQENS1IQXlMdFwsLQ14dF1kCBAZDUxYLDgQGQlMGEQJSAlIQHQwJBk0"),
Buttons = {
{
Name = _d("MVQDHhgEFw"),
Callback = function()
qi = true
vhma = true
end,
},
{
Name = _d("KFQWAg"),
Callback = function()
vhma = true
end,
},
},
})
end)
else

qi = true
vhma = true
end

local zbp = os.clock() + 90

while not vhma and os.clock() < zbp do
task.wait(0.25)
end

if not qi then
warn(_d("OHAwMCE6Ug9eEhZZFRcFRAAXHUdfQ0UbF1kEHRNIUwYRBgZDWABSCxIcDVgdFVkUBgJIAFxZJB4KUhhSKwICD1AQF1kTHUNCBBMJRxsXHVMdC0cHEFRTJxcLHQJVUwEaFRsTRVMbF0cbF0JTIRwTBgpfFAFZExMBHw"))

return
end

warn(_d("OHAwMCE6UhFUAx4YBBsNVlMGEQJSEUQdHBAJFUNSHAIARwUKRRtSDQ8bEBEcHBxJ"))
end

getgenv().ACBXAllowReload = nil

local ipl = getgenv().ACBXWindow
if ipl then
pcall(function()
ipl:Unload()
end)
end

for tbtq, fitj in ipairs({
game:GetService(_d("IF4BFz4SGw")),
game:GetService(_d("M10SCxwVAQ")).LocalPlayer:FindFirstChild(_d("M10SCxwVNRZY")),
}) do
if fitj then
local qm = ulqn(fitj)
if qm then
qm:Destroy()
end
end
end

local yw = game:GetService(_d("M10SCxwVAQ"))
local jjv = game:GetService(_d("MVQDHhAEExdUFyENCAACVhY"))
local yvnv = game:GetService(_d("M1AHGh8OHAdYHRUqAgAVWBAX"))
local iuk = game:GetService(_d("MUQdIRwVBApSFg"))
local mz = yw.LocalPlayer
local zt = mz:WaitForChild(_d("M10SCxwVNRZY"))

local czgi = false

local function kl()
pcall(function()
local mg = game:GetService(_d("N0YWFxc0FxFHGhEc"))
local jyu = (gethui and gethui()) or zt
local tzqj = Color3.fromRGB(77, 166, 255)
local etz = mz.DisplayName

local function vmrp(zd, xo, vmci)
mg:Create(
zd,
TweenInfo.new(xo, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
vmci
):Play()
task.wait(xo)
end

local xss = Instance.new(_d("MFIBFxwJNRZY"))
xss.Name = _d("InIxKjAJBhFe")
xss.IgnoreGuiInset = true
xss.DisplayOrder = 1000000
xss.ResetOnSpawn = false
xss.Parent = jyu

local rkvd = Instance.new(_d("JUMSHxw"))
rkvd.Size = UDim2.fromScale(1, 1)
rkvd.BackgroundColor3 = Color3.fromRGB(4, 6, 11)
rkvd.BackgroundTransparency = 1
rkvd.BorderSizePixel = 0
rkvd.Parent = xss

local lm = Instance.new(_d("JUMSHxw"))
lm.AnchorPoint = Vector2.new(0.5, 0.5)
lm.Position = UDim2.fromScale(0.5, 0.5)
lm.Size = UDim2.fromOffset(400, 176)
lm.BackgroundColor3 = Color3.fromRGB(11, 16, 26)
lm.BackgroundTransparency = 1
lm.BorderSizePixel = 0
lm.Parent = xss

local dawb = Instance.new(_d("NngwHQsJFxE"))
dawb.CornerRadius = UDim.new(0, 14)
dawb.Parent = lm

local gy = Instance.new(_d("NnggBgsIGQY"))
gy.Color = Color3.fromRGB(46, 60, 86)
gy.Thickness = 1
gy.Transparency = 1
gy.Parent = lm

local qtgb = Instance.new(_d("JUMSHxw"))
qtgb.Size = UDim2.fromOffset(44, 2)
qtgb.Position = UDim2.new(0.5, -22, 0, 34)
qtgb.BackgroundColor3 = tzqj
qtgb.BorderSizePixel = 0
qtgb.BackgroundTransparency = 1
qtgb.Parent = lm

local ls = Instance.new(_d("N1QLBjUGEAZd"))
ls.BackgroundTransparency = 1
ls.Size = UDim2.new(1, -48, 0, 48)
ls.Position = UDim2.fromOffset(24, 42)
ls.Font = Enum.Font.GothamBold
ls.Text = _d("IHNTOiwl")
ls.TextSize = 28
ls.TextYAlignment = Enum.TextYAlignment.Center
ls.TextColor3 = Color3.fromRGB(236, 242, 255)
ls.TextTransparency = 1
ls.Parent = lm

local fhsq = Instance.new(_d("N1QLBjUGEAZd"))
fhsq.BackgroundTransparency = 1
fhsq.Size = UDim2.new(1, -48, 0, 20)
fhsq.Position = UDim2.fromOffset(24, 94)
fhsq.Font = Enum.Font.Gotham
fhsq.Text = _d("D14SFhAJFQ")
fhsq.TextSize = 14
fhsq.TextColor3 = Color3.fromRGB(150, 163, 186)
fhsq.TextTransparency = 1
fhsq.Parent = lm

local cn = Instance.new(_d("JUMSHxw"))
cn.Size = UDim2.fromOffset(240, 3)
cn.Position = UDim2.new(0.5, -120, 0, 130)
cn.BackgroundColor3 = Color3.fromRGB(34, 44, 64)
cn.BorderSizePixel = 0
cn.BackgroundTransparency = 1
cn.Parent = lm

local qqk = Instance.new(_d("JUMSHxw"))
qqk.Size = UDim2.fromScale(0, 1)
qqk.BackgroundColor3 = tzqj
qqk.BorderSizePixel = 0
qqk.BackgroundTransparency = 1
qqk.Parent = cn

local jkw = Instance.new(_d("NngwHQsJFxE"))
jkw.CornerRadius = UDim.new(0, 4)
jkw.Parent = cn

local vlns = Instance.new(_d("NngwHQsJFxE"))
vlns.CornerRadius = UDim.new(0, 4)
vlns.Parent = qqk

vmrp(rkvd, 0.35, { BackgroundTransparency = 0.15 })
task.spawn(function()
vmrp(lm, 0.3, { BackgroundTransparency = 0 })
end)
task.spawn(function()
vmrp(gy, 0.3, { Transparency = 0 })
end)
vmrp(ls, 0.3, { TextTransparency = 0 })
vmrp(qtgb, 0.3, { BackgroundTransparency = 0 })
vmrp(fhsq, 0.3, { TextTransparency = 0 })
vmrp(cn, 0.3, { BackgroundTransparency = 0 })
vmrp(qqk, 0.3, { BackgroundTransparency = 0 })

local gn = { _d("D14SFhAJFQ"), _d("D14SFhAJFU0"), _d("D14SFhAJFU0f"), _d("D14SFhAJFU0fXQ") }
task.spawn(function()
mg:Create(qqk, TweenInfo.new(1.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
Size = UDim2.fromScale(1, 1),
}):Play()
for oxw = 1, 6 do
fhsq.Text = gn[(oxw - 1) % #gn + 1]
task.wait(0.2)
end
end)
task.wait(1.2)

vmrp(ls, 0.2, { TextTransparency = 1 })
vmrp(fhsq, 0.2, { TextTransparency = 1 })
vmrp(cn, 0.2, { BackgroundTransparency = 1 })
vmrp(qqk, 0.2, { BackgroundTransparency = 1 })

ls.Text = _d("N1kSHBIUUgVeAVIMFBsNVlMfAEcBAEMaAg0")
ls.TextSize = 22
ls.TextWrapped = true
fhsq.Text = dsa
vmrp(ls, 0.25, { TextTransparency = 0 })
vmrp(fhsq, 0.25, { TextTransparency = 0 })
task.wait(1.1)
vmrp(ls, 0.2, { TextTransparency = 1 })
vmrp(fhsq, 0.2, { TextTransparency = 1 })

ls.Text = _d("NFQfERYKF0M") .. etz .. _d("Q2UcUjolUitEEQ")
ls.TextSize = 22
fhsq.Text = _d("EEUSAA0OHAQ")
vmrp(ls, 0.3, { TextTransparency = 0 })
vmrp(fhsq, 0.3, { TextTransparency = 0 })
task.wait(1.3)

vmrp(ls, 0.25, { TextTransparency = 1 })
vmrp(fhsq, 0.25, { TextTransparency = 1 })
vmrp(rkvd, 0.35, { BackgroundTransparency = 1 })

xss:Destroy()
end)

czgi = true
end

task.spawn(kl)

local db = jjv:WaitForChild(_d("MVQeHQ0CAQ"))

local function mch(uehr, yon)
local nx = db:FindFirstChild(uehr)

if nx then
return nx
end

local pqqq = db:WaitForChild(uehr, yon or 3)

if not pqqq then
warn(_d("InIxKkNHAAZcHAYcR1U") .. uehr .. _d("RBEdHVkLHQ1WFgBZAgoKQgcBWQ4cQ0UbGwpHFQJcFlIPAgAQWBwcWUpSF1kSBlkBFwJFBgAcRxsQERwUHw"))
end

return pqqq
end

local qj = {
StartNPCBattle = mch(_d("MEUSAA0pIiBzEgYNCxc")),
NPCBattleResult = mch(_d("LWEwMBgTBg9UIRcKEh4X")),
SyncNPCCooldowns = mch(_d("MEgdETc3MSBeHB4dCAUNQg")),
SetNPCDifficulty = mch(_d("MFQHPCkkNgpXFRsaEh4XSA")),
StartRaidBattle = mch(_d("MEUSAA01EwpVMRMNEx4G")),
SetRaidDifficulty = mch(_d("MFQHIBgOFidYFRQQBAcPRQo")),
RaidProgress = mch(_d("MVAaFikVHQRDFgEK")),
RequestRaidProgress = mch(_d("MVQCBxwUBjFQGhYpFR0EQxYBCg")),
SyncInfiniteRoomProgress = mch(_d("MEgdETAJFApfGgYcNR0MXCMAFgAABkIA")),
BuyRaidItem = mch(_d("IUQKIBgOFipFFh8")),
RaidShopState = mch(_d("MVAaFioPHRNiBxMNAg")),
RaidNotify = mch(_d("MVAaFjcIBgpXCg")),
SyncItems = mch(_d("MEgdETATFw5C")),

UseItem = mch(_d("NkIWOw0CHw")),
RequestWeatherState = mch(_d("MVQCBxwUBjRUEgYRAgAwRRIGHA")),
WeatherChanged = mch(_d("NFQSBhECACBZEhweAhY")),
FishingUpdate = mch(_d("JVgAGhAJFTZBFxMNAg")),
FishingThrow = mch(_d("JVgAGhAJFTdZAR0O")),
FishingReel = mch(_d("JVgAGhAJFTFUFh4")),
FishingStop = mch(_d("JVgAGhAJFTBFHAI")),

FishingIslandTeleport = mch(_d("JVgAGhAJFSpCHxMXAyYGXRYCFhUG")),

SyncCollection = mch(_d("MEgdEToIHg9UEAYQCBw")),
RequestSync = mch(_d("MVQCBxwUBjBIHRE")),
ClaimIndexReward = mch(_d("IF0SGxQuHAdUCyAcEBMRVQ")),
RequestAchievements = mch(_d("MVQCBxwUBiJSGxscERcOVB0GCg")),
SyncAchievements = mch(_d("MEgdETgEGgpUBRcUAhwXQg")),
ClaimAchievement = mch(_d("IF0SGxQmEQtYFgQcChcNRQ")),
RequestQuests = mch(_d("MVQCBxwUBjJEFgENFA")),
SyncQuests = mch(_d("MEgdESgSFxBFAA")),
ClaimQuest = mch(_d("IF0SGxQ2BwZCBw")),
RequestPeriodicQuests = mch(_d("MVQCBxwUBjNUARsWAxsAYAYXChMB")),
SyncPeriodicQuests = mch(_d("MEgdESkCAApeFxsaNgcGQgcB")),
ClaimPeriodicQuest = mch(_d("IF0SGxQ3FxFYHBYQBCMWVAAG")),

OpenFuseDialog = mch(_d("LEEWHD8SAQZ1GhMVCBU")),
FuseCards = mch(_d("JUQAFzoGAAdC")),
OpenDeconstructDialog = mch(_d("LEEWHD0CEQxfAAYLEhEXdRoTFQgV")),
DeconstructCards = mch(_d("J1QQHRcUBhFEEAY6BgAHQg")),
OpenPackShop = mch(_d("LEEWHCkGEQhiGx0J")),
EquipPack = mch(_d("JkAGGwk3EwBa")),

RequestSkillTree = mch(_d("MVQCBxwUBjBaGh4VMwAGVA")),
BuySkillNode = mch(_d("IUQKIRIOHg9/HBYc")),
OpenAccessoryShop = mch(_d("LEEWHDgEEQZCAB0LHiELXgM")),
OpenAccessoryShop2 = mch(_d("LEEWHDgEEQZCAB0LHiELXgNA")),
BuyAccessory = mch(_d("IUQKMxoEFxBCHAAA")),
BuyAccessory2 = mch(_d("IUQKMxoEFxBCHAAAVQ")),
EquipAccessory = mch(_d("JkAGGwkmEQBUAAEWFQs")),

RedeemCode = mch(_d("MVQXFxwKMQxVFg")),

OpenNPCDialog = mch(_d("LEEWHDc3MSdYEh4WAA")),
TeleportToWorld = mch(_d("N1QfFwkIABdlHCUWFR4H")),
RaidBattleStarted = mch(_d("MVAaFjsGBhddFiENBgAXVBc")),
BattleEnd = mch(_d("IVAHBhUCNw1V")),
StartBattle = mch(_d("MEUSAA0lExdFHxc")),
RequestInfiniteRoomProgress = mch(_d("MVQCBxwUBipfFRsXDgYGYxwdFDcADFYBFwoU")),
EndTowerRemote = mch(_d("Jl8XJhYQFxFjFh8WExc")),
SaveClientData = mch(_d("MFAFFzoLGwZfBzYYExM")),
OpenRaidShop = mch(_d("LEEWHCsGGwdiGx0J")),
RequestItemSync = mch(_d("MVQCBxwUBipFFh8qHhwA")),
FishingGetState = mch(_d("JVgAGhAJFSRUByENBgYG")),
FishingSetAuto = mch(_d("JVgAGhAJFTBUBzMMEx0")),
FishingShop = mch(_d("JVgAGhAJFTBZHAI")),
DigGetState = mch(_d("J1gUNRwTIRdQBxc")),
DigShop = mch(_d("J1gUIREIAg")),
DigAction = mch(_d("J1gUMxoTGwxf")),
DigUpdate = mch(_d("J1gUJwkDExdU")),
}

local svf = require(jjv.ModuleScripts.NPCData)
local aa = require(jjv.ModuleScripts.WorldDifficultyData)
local nwfh = require(jjv.ModuleScripts.BossData)
local zo = require(jjv.ModuleScripts.RaidData)
local mrr = require(jjv.ModuleScripts.InfiniteRoomData)
local uqe = require(jjv.ModuleScripts.CraftData)
local st = require(jjv.ModuleScripts.AchievementData)
local kc = require(jjv.ModuleScripts.RaidShopData)
local mpr = require(jjv.ModuleScripts.ItemData)
local ph = require(jjv.ModuleScripts.CardData)
local beht = require(jjv.ModuleScripts.SkillTreeData)

local wx = {
enabled = false,
role = { _d("F14EFws"), _d("DUEQ") },

picked = { _d("N14EFws"), _d("LWEwUhsGBhddFgE") },
hasSlot2 = nil,
toggle = nil,

optionsFor = {
{ _d("N14EFws"), _d("K1AfHhYQFwZfUwYWEBcR"), _d("LWEwUhsGBhddFgE") },
{ _d("LWEwUhsGBhddFgE"), _d("KkIfExcDUgtQARYaCAAG") },
},
roleIds = {
Tower = _d("F14EFws"),

[_d("K1ABFhoIAAYRBx0OAgA")] = _d("C1ABFhoIAAY"),
[_d("LWEwUhsGBhddFgE")] = _d("DUEQ"),
[_d("K1AfHhYQFwZfUwYWEBcR")] = _d("C1AfHhYQFwZf"),
[_d("KkIfExcDUgtQARYaCAAG")] = _d("C1ABFhoIAAY"),
},
roleNames = {
tower = _d("N14EFws"),
hardcore = _d("KkIfExcDUgtQARYaCAAG"),
npc = _d("LWEwUhsGBhddFgE"),
halloween = _d("K1AfHhYQFwZfUwYWEBcR"),
},
}

function wx.detectSlot2()
local byh = zt:FindFirstChild(_d("MFQHBhAJFRB2Bhs"))
local xk = byh and byh:FindFirstChild(_d("MF0cBi0CEw4DIR0O"), true)

if xk then
return xk.Visible == true
end

return nil
end

function wx.roleSlot(ksvm)
if not wx.enabled then
return 1
end

for ypfc = 1, 2 do
if wx.role[ypfc] == ksvm then
return ypfc
end
end

return nil
end

function wx.isTowerRole(apip)
return apip == _d("F14EFws") or apip == _d("C1ABFhoIAAY") or apip == _d("C1AfHhYQFwZf")
end

function wx.towerSlot()
return wx.roleSlot(_d("F14EFws"))
end

function wx.hardcoreSlot()
local nyi = wx.roleSlot(_d("C1ABFhoIAAY"))

if nyi == 2 and wx.hasSlot2 == false then
return 1
end

return nyi
end

function wx.halloweenSlot()

local jqpn = wx.roleSlot(_d("C1AfHhYQFwZf"))

if jqpn == 1 then
return 1
end

return nil
end

function wx.roomSlot()
local ahr = wx.roleSlot(_d("DUEQ"))

if not wx.enabled then
return 1
end

if ahr == nil then
return nil
end

if ahr == 2 and wx.hasSlot2 == false then
return 1
end

return ahr
end

function wx.splitNpc()
return wx.enabled and wx.role[1] == _d("DUEQ") and wx.role[2] == _d("DUEQ")
end

function wx.busy(hupv)
local wryh = zt:FindFirstChild(hupv == 2 and _d("Kl8xEw0THgYD") or _d("Kl8xEw0THgY"))

return wryh ~= nil and wryh:IsA(_d("IV4cHi8GHhZU")) and wryh.Value == true
end

function wx.roleName(eoxr)
return wx.roleNames[wx.role[eoxr]] or wx.roleNames.npc
end

function wx.roleLabel(ccq)
return wx.picked[ccq] or wx.roleName(ccq)
end

local mw = nil

if jjv:FindFirstChild(_d("Ll4XBxUCIQBDGgINFA")) and jjv.ModuleScripts:FindFirstChild(_d("K1AfHhYQFwZfJx0OAgAnUAcT")) then
local lyv, hwpb = pcall(function()
return require(jjv.ModuleScripts.HalloweenTowerData)
end)

if lyv then
mw = hwpb
end
end

local zj = nil

if jjv:FindFirstChild(_d("Ll4XBxUCIQBDGgINFA")) and jjv.ModuleScripts:FindFirstChild(_d("JVgAGhAJFSdQBxM")) then
local verr, cba = pcall(function()
return require(jjv.ModuleScripts.FishingData)
end)

if verr then
zj = cba
end
end

local function fpo(ipil)
return tostring(ipil):reverse():gsub(_d("SxQXVx1CFko"), _d("RgBf")):reverse():gsub(_d("PR0"), _d(""))
end

local cmq = {
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

getgenv().ACBXHalloweenUpgrades = cmq.upgrade
getgenv().ACBXHalloweenTower = cmq.run

cmq.shopData = kc.ShopById.halloween
cmq.shopItems = {}
cmq.shopLabels = {}
cmq.cardNames = {
hw_brook = _d("IUMcHRJHWi5EABsaBh5DYhgXFQIGDF9a"),
hw_death_the_kid = _d("J1QSBhFHBgtUUzkQA1JLeRIAFAgcClJTNQwJUjRYFh4dAgBK"),
hw_barragan = _d("IVABABgAEw0RWyESAh4GRRwcWSwbDVZa"),
}
cmq.cardShortNames = {
hw_brook = _d("IUMcHRI"),
hw_death_the_kid = _d("J1QSBhFHBgtUUzkQAw"),
hw_barragan = _d("IVABABgAEw0"),
}

for qlae, yo in ipairs(cmq.shopData.Items) do
local fbrt, gv = next(yo.price or {})
local mao = yo.id
local dbrj = yo.id

if yo.itemId then
local jfl = mpr.ById[yo.itemId]
mao = jfl and (jfl.name or yo.itemId) or yo.itemId
dbrj = mao
elseif yo.cardId then
mao = cmq.cardNames[yo.cardId] or (ph.ById[yo.cardId] and ph.ById[yo.cardId].name) or yo.cardId
dbrj = cmq.cardShortNames[yo.cardId] or mao
end

local jf = fbrt == _d("C1AfHhYQFwZfLBEYCRYa") and _d("IFAdFgA") or (fbrt == _d("CVAQGSYILQ9QHQYcFRw") and _d("L1AdBhwVHBA") or tostring(fbrt))
local sv = mao .. _d("Q9Pz5lk") .. fpo(gv) .. _d("Qw") .. jf

table.insert(cmq.shopItems, {
id = yo.id,
label = sv,
shortName = dbrj,
currency = fbrt,
price = gv,
stock = yo.stock,
cardId = yo.cardId,
})

table.insert(cmq.shopLabels, sv)
end

for pp, ih in ipairs({
_d("MVQCBxwUBitQHx4WEBcGXyYCHhUTB1QA"),
_d("IUQKOhgLHgxGFhcXMgIEQxIWHA"),
_d("K1AfHhYQFwZfJgIeFRMHVCAGGBMX"),
_d("MVQCBxwUBitQHx4WEBcGXycdDgIAM0McFQsCARA"),
_d("MEgdETEGHg9eBBccCSYMRhYAKRUdBEMWAQo"),
_d("LEEWHDEGHg9eBBccCSYMRhYA"),
}) do
cmq.remote[ih] = mch(ih)
end

function cmq.fire(vdsh, ...)
local qsk = cmq.remote[vdsh]

if not qsk then
return
end

local qgd = { ... }

pcall(function()
qsk:FireServer(table.unpack(qgd))
end)
end

function cmq.on(zoa, qhly)
local dx = cmq.remote[zoa]

if dx then
dx.OnClientEvent:Connect(qhly)
end
end

if mw then
for hh, ujuv in ipairs(mw.Upgrades) do
table.insert(cmq.upgrades, {
id = ujuv.id,
name = ujuv.name,
maxLevel = ujuv.maxLevel,
})

table.insert(cmq.labels, ujuv.name)
end
end

function cmq.level(ol)
if not mw then
return 0
end

return mw.getUpgradeLevel(cmq.upgrade.levels, ol)
end

function cmq.cost(nep)
if not mw then
return nil
end

return mw.getUpgradeCost(nep, cmq.level(nep))
end

function cmq.bonus(lyke, lykq)
if not mw then
return _d("")
end

return mw.formatUpgradeBonus(lyke, lykq)
end

function cmq.request()
cmq.upgrade.lastRequest = os.time()
cmq.fire(_d("MVQCBxwUBitQHx4WEBcGXyYCHhUTB1QA"))
end

function cmq.text()
if not mw then
return _d("K1AfHhYQFwZfUyYWEBcRERcTDQZSCkJTHBYTUgpfUwYRDgFDUwYbFQNc")
end

local oeu = cmq.upgrade
local dbkj = {}

if oeu.balance == nil then
table.insert(dbkj, _d("M0QeAhIOHBALU19ZTxMQWhocHkcGC1RTARwVBAZDWg"))
else
table.insert(dbkj, _d("M0QeAhIOHBALUw") .. fpo(oeu.balance))
end

for pvot, ux in ipairs(cmq.upgrades) do
local zgq = cmq.level(ux.id)
local kog = cmq.cost(ux.id)
local siv = oeu.selected[ux.id] and _d("OEkuUg") or _d("OBEuUg")
local xhy = siv .. ux.name .. _d("QxE/BFk") .. zgq .. _d("TA") .. ux.maxLevel

if kog then
table.insert(dbkj, xhy .. _d("QxEdFwETUg") .. tostring(kog) .. _d("QxE") .. cmq.bonus(ux.id, zgq + 1))
else
table.insert(dbkj, xhy .. _d("QxEeEwECFg"))
end
end

if not next(oeu.selected) then
table.insert(dbkj, _d("M1gQGVkSAgRDEhYcFFIKX1MGEQJSB0McAh0IBQ0REhwdRzMWRRxSDBcVEVAXFwpHEBZIAFINDxdDUhsXGBcXEEVTHRcCUhpeBlIaBhxDUBUUFhUWTQ"))
end

return table.concat(dbkj, _d("aQ"))
end

function cmq.buy()
local sz = cmq.upgrade

if sz.waiting or sz.balance == nil or os.time() - sz.lastBuy < 1 then
return
end

local tx = nil
local azf = nil

for fja, yioh in ipairs(cmq.upgrades) do
if sz.selected[yioh.id] and os.time() >= (sz.failedUntil[yioh.id] or 0) then
local mis = cmq.cost(yioh.id)

if mis and sz.balance >= mis and (not azf or mis < azf) then
tx = yioh.id
azf = mis
end
end
end

if not tx then
return
end

sz.waiting = true
sz.lastBuy = os.time()
sz.pendingId = tx
sz.pendingLevel = cmq.level(tx)

sz.balance = sz.balance - azf

cmq.fire(_d("IUQKOhgLHgxGFhcXMgIEQxIWHA"), tx)
end

cmq.on(_d("K1AfHhYQFwZfJgIeFRMHVCAGGBMX"), function(mykd)
if type(mykd) ~= _d("F1ARHhw") then
return
end

local msd = cmq.upgrade

msd.balance = tonumber(mykd.balance) or 0
msd.levels = type(mykd.levels) == _d("F1ARHhw") and mykd.levels or {}

if msd.pendingId then
if cmq.level(msd.pendingId) <= msd.pendingLevel then
msd.failedUntil[msd.pendingId] = os.time() + 15
end

msd.pendingId = nil
end

if type(mykd.message) == _d("EEUBGxcA") then
msd.lastMessage = mykd.message
end

msd.waiting = false
end)

cmq.on(_d("MEgdETEGHg9eBBccCSYMRhYAKRUdBEMWAQo"), function(ajq, fgcy)
cmq.run.highest = tonumber(ajq) or 0
cmq.run.savedRun = type(fgcy) == _d("F1ARHhw") and fgcy or nil
end)

cmq.on(_d("LEEWHDEGHg9eBBccCSYMRhYA"), function(yred, kg, lvwv)
cmq.run.highest = tonumber(yred) or cmq.run.highest
cmq.run.savedRun = type(lvwv) == _d("F1ARHhw") and lvwv or nil
end)

qj.BattleEnd.OnClientEvent:Connect(function(kukm)
if type(kukm) == _d("F1ARHhw") and kukm.mode == _d("Cl8VGxcOBgZuAR0WCg") and kukm.tower == _d("C1AfHhYQFwZf") then
cmq.run.inBattle = false
cmq.run.pending = true
cmq.run.pendingUntil = os.time() + 3

task.delay(0.3, function()
cmq.requestProgress()
end)
end
end)

function cmq.requestProgress()
cmq.run.lastRequest = os.time()
cmq.fire(_d("MVQCBxwUBitQHx4WEBcGXycdDgIAM0McFQsCARA"))
end

function cmq.bestRoom()
local tg = cmq.run.highest

if not mw or tg == nil then
return nil
end

for jqbp, cj in ipairs(mw.Milestones) do
if mw.isMilestoneUnlocked(cj, tg)
and not mw.isMilestoneCleared(cj, tg) then
return cj
end
end

return nil
end

function cmq.startRun()
local wqx = cmq.bestRoom()

if not wqx then
return false
end

local hjyb = cmq.run.savedRun
local avd = type(hjyb) == _d("F1ARHhw") and hjyb.milestone == wqx
local rlm = avd and (tonumber(hjyb.currentFloor) or wqx) or wqx

local bqi = wx.halloweenSlot() or 1

local iqc = getgenv().ACBXAuto

iqc = type(iqc) == _d("F1ARHhw") and iqc.bossTeams or nil

if cmq.run.teamChosen and iqc and iqc.applyTeam then
iqc.applyTeam(cmq.run.team, bqi)
end

local oo = zt:FindFirstChild(bqi == 2 and _d("MVQAFw0lExdFHxc/Cx0MQ0E") or _d("MVQAFw0lExdFHxc/Cx0MQw"))

if oo and oo:IsA(_d("IVgdFhgFHgZ0BRcXEw")) then
pcall(function()
oo:Fire(rlm, _d("Cl8VGxcOBgZuAR0WCg"))
end)
end

local nv = zt:FindFirstChild(bqi == 2 and _d("MEUSAA0uHAVYHRsNAiAMXh4wGBMGD1RB") or _d("MEUSAA0uHAVYHRsNAiAMXh4wGBMGD1Q"))

if nv and nv:IsA(_d("IVgdFhgFHgZ0BRcXEw")) then
pcall(function()
nv:Fire(rlm, _d("C1AfHhYQFwZf"), rlm)
end)
end

cmq.run.milestone = wqx
cmq.run.savedRun = nil
cmq.run.inBattle = true
cmq.run.inBattleUntil = os.time() + 120
cmq.run.pending = true
cmq.run.pendingUntil = os.time() + 10

if avd then
qj.StartBattle:FireServer(_d("Cl8VGxcOBgZuAR0WCg"), {
continue = true,
tower = _d("C1AfHhYQFwZf"),
slot = bqi,
})
else
qj.StartBattle:FireServer(_d("Cl8VGxcOBgZuAR0WCg"), {
tower = _d("C1AfHhYQFwZf"),
milestone = wqx,
slot = bqi,
})
end

return true
end

local cgzs = {}
for qp, ny in ipairs(svf.NPCs) do
cgzs[ny.name] = ny.id
end

local cbmn = getgenv().ACBXCooldowns
if type(cbmn) ~= _d("F1ARHhw") then
cbmn = {}
getgenv().ACBXCooldowns = cbmn
end

local og = getgenv().ACBXAuto
if type(og) == _d("F1ARHhw") and type(og.cooldowns) == _d("F1ARHhw") then
for sb, sswt in pairs(og.cooldowns) do
if cbmn[sb] == nil then
cbmn[sb] = sswt
end
end
end

local pi = {
enabled = false,
story = false,
storyDifficulty = _d("DV4BHxgL"),
storyDropdown = nil,
selectedByWorld = {},
difficulties = { _d("DV4BHxgL") },
walkToNpc = false,
cooldowns = cbmn,
activeDifficulty = {},
lastFetch = {},
unlocked = {},
currentBattle = nil,
battlePending = false,
battlePendingUntil = 0,
}

pi.bossTeams = {
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

path = _d("InIxKlYTFwJcAFwTFB0N"),
}

function pi.bossTeams.trackCollection()
if pi.bossTeams.collectionHooked then
return
end

pi.bossTeams.collectionHooked = true

local acfl = db:FindFirstChild(_d("MEgdEToIHg9UEAYQCBw"))

if not acfl then
return
end

acfl.OnClientEvent:Connect(function(njom)
if type(njom) == _d("F1ARHhw") and type(njom.teams) == _d("F1ARHhw") then
pi.bossTeams.teams = njom.teams
pi.bossTeams.teamsAt = os.clock()
end
end)

task.spawn(function()

task.wait(3)

for ew = 1, 8 do
if pi.bossTeams.teams then
return
end

local mwfy = db:FindFirstChild(_d("MEYaBhoPJgZQHg"))
local no = pi.bossTeams.slotTeam
local pdi = nil

if mwfy and type(no) == _d("BUQdEQ0OHQ0") then
local tjl, pswp = pcall(no, 2)
pdi = tjl and pswp or nil

if not pdi then
tjl, pswp = pcall(no, 1)
pdi = tjl and pswp or nil
end
end

if pdi then
pcall(function()
mwfy:FireServer(pdi, false, 2)
end)
end

task.wait(6)
end
end)
end

function pi.bossTeams.teamCards(cvtv)
local stm = pi.bossTeams.teams

if type(stm) ~= _d("F1ARHhw") then
return nil
end

local xgh = stm[cvtv]

if type(xgh) ~= _d("F1ARHhw") then
return 0
end

local pg = 0

for hpbj, rae in pairs(xgh) do
if type(rae) == _d("F1ARHhw") then
pg = pg + 1
end
end

return pg
end

function pi.bossTeams.raidState()
return getgenv().ACBXAutoRaid
end

function pi.bossTeams.save()
if type(writefile) ~= _d("BUQdEQ0OHQ0") then
return false
end

local vu = {}

for ho, xt in pairs(pi.bossTeams.picked) do
vu[ho] = xt
end

local qkob = {}

for ztjd, tv in pairs(pi.bossTeams.raidPicked) do
qkob[ztjd] = tv
end

local mu = {}

for cas, knvk in pairs(pi.bossTeams.towerPicked) do
mu[cas] = knvk
end

return pcall(function()
if type(makefolder) == _d("BUQdEQ0OHQ0") and type(isfile) == _d("BUQdEQ0OHQ0") and not isfile(pi.bossTeams.path) then
pcall(makefolder, _d("InIxKg"))
end

local wrac = pi.bossTeams.raidState()
local ka = wrac and wrac.worldBoss
local yg = nil

if ka and ka.teamChosen then
yg = ka.team
end

writefile(pi.bossTeams.path, game:GetService(_d("K0UHAioCABVYEBc")):JSONEncode({
areas = vu,
raids = qkob,
towers = mu,
swap = pi.bossTeams.swap,
globalBoss = yg,
updatedAt = os.time(),
}))
end)
end

function pi.bossTeams.load()
if type(readfile) ~= _d("BUQdEQ0OHQ0") or type(isfile) ~= _d("BUQdEQ0OHQ0") then
return false
end

local ut, yjd = pcall(function()
if not isfile(pi.bossTeams.path) then
return nil
end

return readfile(pi.bossTeams.path)
end)

if not ut or type(yjd) ~= _d("EEUBGxcA") or #yjd == 0 then
return false
end

local dla
local hhr = pcall(function()
dla = game:GetService(_d("K0UHAioCABVYEBc")):JSONDecode(yjd)
end)

if not hhr or type(dla) ~= _d("F1ARHhw") then
return false
end

if type(dla.areas) == _d("F1ARHhw") then
for tb, nm in pairs(dla.areas) do
local ts = tonumber(nm)

if ts and ts >= 1 and ts <= 4 then
pi.bossTeams.picked[tb] = ts
end
end
end

if type(dla.raids) == _d("F1ARHhw") then
for jrl, gmhk in pairs(dla.raids) do
local rnb = tonumber(gmhk)

if rnb and rnb >= 1 and rnb <= 4 then
pi.bossTeams.raidPicked[jrl] = rnb
end
end
end

if type(dla.towers) == _d("F1ARHhw") then
for ymwi, ksa in pairs(dla.towers) do
local vor = tonumber(ksa)

if vor and vor >= 1 and vor <= 4 then
pi.bossTeams.towerPicked[ymwi] = vor
end
end
end

if type(dla.swap) == _d("F1ARHhw") then
local vlz = tonumber(dla.swap.team)
local lrf = tonumber(dla.swap.floor)

if vlz and vlz >= 1 and vlz <= 4 then
pi.bossTeams.swap.team = vlz
end

if lrf and lrf > 0 then
pi.bossTeams.swap.floor = lrf
end

local wdjp = tonumber(dla.swap.team2)
local cflx = tonumber(dla.swap.floor2)

if wdjp and wdjp >= 1 and wdjp <= 4 then
pi.bossTeams.swap.team2 = wdjp
end

if cflx and cflx > 0 then
pi.bossTeams.swap.floor2 = cflx
end

pi.bossTeams.swap.on = dla.swap.on == true
end

local cziq = tonumber(dla.globalBoss)
local ec = pi.bossTeams.raidState()
local sivu = ec and ec.worldBoss

if cziq and cziq >= 1 and cziq <= 4 and sivu then
sivu.team = cziq

sivu.teamChosen = true
end

return true
end

local qsc = nil
local gw = nil

local function bkv(yx, lmy)
return yx .. _d("Hw") .. lmy
end

local function dl(vdmp, vvxi)
return pi.cooldowns[bkv(vdmp, vvxi)] or 0
end

local function kpad(dvlm, fa, mn)
pi.cooldowns[bkv(dvlm, fa)] = mn
end

getgenv().ACBXAuto = pi

local hwbc = {
enabled = false,
picks = { [1] = {}, [2] = {} },
cursor = { [1] = 1, [2] = 1 },
losses = { [1] = {}, [2] = {} },
inFlight = {},

lossLimit = 3,
difficulties = { _d("DV4BHxgL") },
walkToBoss = false,
walkSpeed = 18,
pending = {},
pendingUntil = {},
cleared = {},
progress = {},
}

getgenv().ACBXAutoRaid = hwbc

hwbc.worldBoss = {
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

fishingMode = _d("F14UFw0PFxE"),
fishingDropdown = nil,

digHold = false,

walkToBoss = false,
walkToggle = nil,

building = false,
}

pi.bossTeams.trackCollection()
pi.bossTeams.load()

function hwbc.worldBoss.data()
local iizb = hwbc.worldBoss

if iizb.module == nil then
local exsb, xkt = pcall(function()
return require(jjv.ModuleScripts.WorldBossData)
end)

iizb.module = exsb and xkt or false
end

return iizb.module or nil
end

function hwbc.worldBoss.clock(znhe)
znhe = math.max(0, math.floor(tonumber(znhe) or 0))

local inb = math.floor(znhe / 3600)
local iuc = math.floor((znhe % 3600) / 60)
local aq = znhe % 60

if inb > 0 then
return string.format(_d("RlUbUlxXQAdc"), inb, iuc)
end

if iuc > 0 then
return string.format(_d("RlUeUlxXQAdC"), iuc, aq)
end

return string.format(_d("RlUA"), aq)
end

function hwbc.worldBoss.status()
local fe = nil

pcall(function()
fe = jjv:FindFirstChild(_d("NF4BHh0lHRBCIAYYEwcQ"))
end)

return fe
end

function hwbc.worldBoss.isOpen()
local ek = hwbc.worldBoss.status()

if not ek then
return nil
end

return ek:GetAttribute(_d("IlIHGw8C")) == true
end

function hwbc.worldBoss.window()
local liz = hwbc.worldBoss.status()

if not liz then
return nil, nil
end

return tonumber(liz:GetAttribute(_d("Jl8XATgT"))), tonumber(liz:GetAttribute(_d("LVQLBjgT")))
end

function hwbc.worldBoss.cycle()
local kyw = hwbc.worldBoss
local gys = kyw.data()

if not gys or not gys.getCycleState then
return nil
end

local vfma, ae = pcall(function()
return gys.getCycleState()
end)

return vfma and ae or nil
end

function hwbc.worldBoss.shopList()
local bhe = hwbc.worldBoss

if bhe.items then
return bhe.items
end

local ctzw = {}
local pco = bhe.data()

if not pco or type(pco.ShopItems) ~= _d("F1ARHhw") then
bhe.items = ctzw
return ctzw
end

for ei, fmh in ipairs(pco.ShopItems) do
local ujoo = nil

pcall(function()
if fmh.itemId then
local ejh = require(jjv.ModuleScripts.ItemData)
local xqs = ejh[fmh.itemId] or (ejh.ById and ejh.ById[fmh.itemId])
ujoo = xqs and xqs.name or nil
elseif fmh.cardId then
local jv = require(jjv.ModuleScripts.CardData)
local rm = jv[fmh.cardId] or (jv.ById and jv.ById[fmh.cardId])
ujoo = rm and rm.name or nil
end
end)

local chtb = hwbc.worldBoss.state

if type(chtb) == _d("F1ARHhw") and type(chtb.shop) == _d("F1ARHhw") then
for xifk, gelb in ipairs(chtb.shop) do
if gelb.id == fmh.id and gelb.name then
ujoo = gelb.name
break
end
end
end

if not ujoo then

ujoo = tostring(fmh.accessoryId or fmh.id or _d("XA")):gsub(_d("PA"), _d("Qw")):gsub(_d("SxQSW1E8VxQWLlhQ"), function(fzz, kj)
return fzz:upper() .. kj
end)
end

table.insert(ctzw, {
id = fmh.id,
name = ujoo,
price = tonumber(fmh.price) or 0,
kind = fmh.itemId and _d("CkUWHw") or (fmh.cardId and _d("AFABFg") or _d("AlIQFwoUHRFI")),
})
end

bhe.items = ctzw

return ctzw
end

function hwbc.worldBoss.bodyText()
local qf = hwbc.worldBoss
local wa = qf.state

if type(wa) ~= _d("F1ARHhw") then
return _d("MVQSFhAJFUNFGxdZBR0QQl1cVw")
end

local yp = {}
local rtf = qf.cycle()
local qfqh = qf.isOpen()
local adxh, ysv = qf.window()

if qfqh == nil then
qfqh = wa.open == true
end

if qfqh then
local qiv = _d("LEEWHA")

if not adxh and rtf then
adxh = rtf.endsAt
end

if adxh and adxh > os.time() then
qiv = qiv .. _d("Q/PEUg") .. qf.clock(adxh - os.time()) .. _d("Q10WFA0")
end

table.insert(yp, qiv)
else
local pagw = _d("J14EHFkBHRERHR0O")

if not ysv and rtf then
ysv = rtf.nextAt
end

if ysv and ysv > os.time() then
pagw = pagw .. _d("aXMSERJHGw0R") .. qf.clock(ysv - os.time())
end

table.insert(yp, pagw)
end

table.insert(yp, _d("LlQXExUUSEM") .. tostring(wa.medals or 0) .. _d("aXoaHhUUSEM") .. tostring(wa.kills or 0))

if wa.inFight then
table.insert(yp, _d("JVgUGg0OHAQ"))
elseif qfqh then

table.insert(yp, wa.killedThisSpawn and _d("MVQSFgBtOQpdHxcdRwYLWABSChcTFF9TExUVFwJVCg") or _d("MVQSFgA"))
end

if qf.stopAtFull then
local fy, ugx = qf.meter()

if fy and ugx then
local function lqp(fdks)
if fdks >= 1000000000 then
return string.format(_d("Rh9CFDs"), fdks / 1000000000)
elseif fdks >= 1000000 then
return string.format(_d("RlY+"), math.floor(fdks / 100000) / 10)
elseif fdks >= 1000 then
return string.format(_d("RlY4"), math.floor(fdks / 100) / 10)
end

return tostring(math.floor(fdks))
end

table.insert(yp, _d("MFQBBBwVUg5UBxcLXVI") .. lqp(fy) .. _d("Qx5T") .. lqp(ugx)
.. (qf.meterFull() and _d("aXcGHhVHX0NfHAZZARsEWQcbFwBSF1kaAVkUAgJGHQ") or _d("")))
end
end

return table.concat(yp, _d("aTs"))
end

function hwbc.worldBoss.shopText()
local rflw = hwbc.worldBoss
local hc = rflw.state

if type(hc) ~= _d("F1ARHhw") or type(hc.shop) ~= _d("F1ARHhw") then
return _d("MVQSFhAJFUNFGxdZFBoMQV1cVw")
end

local oaz = { _d("LlQXExUUSEM") .. tostring(hc.medals or 0) }

for su, jtxy in ipairs(hc.shop) do
local ewmf = tostring(jtxy.name or jtxy.id)
local wv = tostring(jtxy.price or _d("XA"))
local cno

if jtxy.kind == _d("CkUWHw") then
cno = ewmf .. _d("aQ") .. wv .. _d("Q/PEUg") .. tostring(jtxy.left or 0) .. _d("TA") .. tostring(jtxy.stock or _d("XA")) .. _d("Q10WFA0")
elseif jtxy.owned then
cno = ewmf .. _d("aX4EHBwD")
else
cno = ewmf .. _d("aQ") .. wv .. _d("Q/PEUhYJF0NeFRQ")
end

table.insert(oaz, cno)
end

return table.concat(oaz, _d("aTs"))
end

function hwbc.worldBoss.shopOptions()
local zvm = hwbc.worldBoss

if zvm.options then
return zvm.options
end

local mypr = {}

zvm.labelToId = {}

for fum, wdwp in ipairs(zvm.shopList()) do
local czmc = wdwp.name .. _d("Q/PEUg") .. tostring(wdwp.price)

table.insert(mypr, czmc)
zvm.labelToId[czmc] = wdwp.id
end

zvm.options = mypr

return mypr
end

local function sw(ez)
local pwm = hwbc.progress[ez]
local xalk = jjv:FindFirstChild(_d("MVAaFioTExdEAA"))
local mnrw = xalk and xalk:GetAttribute(_d("IEgQHhwuFg"))

if type(pwm) == _d("F1ARHhw") then
if pwm.cycleId then
mnrw = pwm.cycleId
end

if pwm.completed and pwm.completedRaidId then
return tostring(mnrw) .. _d("WVUcHBw")
end

local qlc = pwm.phaseIndex or pwm.phase

if qlc then
return tostring(mnrw) .. _d("WQ") .. tostring(qlc)
end
end

return tostring(mnrw)
end

function hwbc.finished(fq)
local oau = hwbc.progress[fq]

return type(oau) == _d("F1ARHhw") and oau.completed == true and oau.completedRaidId == fq
end

function hwbc.bossFor(eqr, zmp)
local fbl = hwbc.picks[zmp or eqr]

if not fbl or #fbl == 0 then
return nil
end

local pz = jjv:FindFirstChild(_d("MVAaFioTExdEAA"))
local yic = hwbc.losses[eqr] or {}
local jg = hwbc.cursor[eqr] or 1

for ssx = 0, #fbl - 1 do
local qh = (jg - 1 + ssx) % #fbl + 1
local uc = fbl[qh]
local jkx = not pz or pz:GetAttribute(_d("MVQSFgA4") .. uc) == true

if jkx and not hwbc.finished(uc) and (yic[uc] or 0) < hwbc.lossLimit then
hwbc.cursor[eqr] = qh

return uc
end
end

return nil
end

qj.RaidBattleStarted.OnClientEvent:Connect(function(cwus)

local hf = type(cwus) == _d("F1ARHhw") and cwus.raidId or nil

if type(hf) == _d("EEUBGxcA") then
hwbc.pending[hf] = false
else
for rftu in pairs(hwbc.pending) do
hwbc.pending[rftu] = false
end
end
end)

qj.BattleEnd.OnClientEvent:Connect(function(xeue)
for bp in pairs(hwbc.pending) do
hwbc.pending[bp] = false
end

if type(xeue) ~= _d("F1ARHhw") or not hwbc.enabled then
return
end

local got = type(xeue.raidId) == _d("EEUBGxcA") and xeue.raidId or nil
local bg = got and hwbc.inFlight[got] or nil

if not got then
for ohes, mpfx in pairs(hwbc.inFlight) do
got = ohes
bg = mpfx
break
end
end

if not got then
return
end

hwbc.inFlight[got] = nil

if xeue.result == _d("D14AFw") then

local jcie = hwbc.losses[bg or 1]

hwbc.cleared[got] = nil
jcie[got] = (jcie[got] or 0) + 1

for em in pairs(hwbc.pendingUntil) do
hwbc.pendingUntil[em] = os.time() + 3
end
else

hwbc.losses[bg or 1][got] = 0
end
end)

qj.RaidProgress.OnClientEvent:Connect(function(oe)
if type(oe) == _d("F1ARHhw") and type(oe.raidId) == _d("EEUBGxcA") then
hwbc.progress[oe.raidId] = oe
end
end)

qj.RequestRaidProgress:FireServer()

local ker = {
enabled = false,
progress = nil,
currentRoom = nil,
inBattle = false,
inBattleUntil = 0,
pending = false,
pendingUntil = 0,
}

getgenv().ACBXAutoRooms = ker

qj.SyncInfiniteRoomProgress.OnClientEvent:Connect(function(kvy)
if type(kvy) == _d("DUQeEBwV") then
ker.progress = kvy
ker.pending = false
end
end)

qj.BattleEnd.OnClientEvent:Connect(function(wsgl)
if type(wsgl) == _d("F1ARHhw") and wsgl.mode == _d("Cl8VGxcOBgZuAR0WCg") then
ker.inBattle = false
ker.pending = true
ker.pendingUntil = os.time() + 3

task.delay(0.3, function()
qj.RequestInfiniteRoomProgress:FireServer()
end)
end
end)

qj.RequestInfiniteRoomProgress:FireServer()

local qfnj = {
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

getgenv().ACBXAutoTower = qfnj

local fb = {
enabled = false,
floor = 0,
triggered = false,
}

getgenv().ACBXAutoPause = fb

local ej = {
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
Typhoon = _d("F0gDGhYIHA"),
Blizzard = _d("AV0aCAMGAAc"),
Lightning = _d("D1gUGg0JGw1W"),
Windstorm = _d("FFgdFgoTHRFc"),
Sharingan = _d("EFkSABAJFQJf"),
Singularity = _d("EFgdFQwLExFYBws"),
[_d("Ll4dEwsEGkN1HB8YDhw")] = _d("Dl4dEwsEGjxVHB8YDhw"),
Void = _d("FV4aFg"),
[_d("LlAXF1kOHEN5FhMPAhw")] = _d("DlAXFyYOHDxZFhMPAhw"),
Manga = _d("DlAdFRg"),
},
}

function ej.weatherWanted(uqv)
local zbg = ej.weatherNow

if type(zbg) ~= _d("EEUBGxcA") then
return nil
end

for vbtk, mon in pairs(uqv or ej.weathers) do
if mon and ej.weatherIds[vbtk] == zbg then
return vbtk
end
end

return nil
end

getgenv().ACBXAutoGiveUp = ej

local ht = {
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

if jjv:FindFirstChild(_d("Ll4XBxUCIQBDGgINFA")) and jjv.ModuleScripts:FindFirstChild(_d("K1ABFhoIAAZlHAUcFTYCRRI")) then
local mjkw, broc = pcall(function()
return require(jjv.ModuleScripts.HardcoreTowerData)
end)

if mjkw then
ht.data = broc
end
end

getgenv().ACBXHardcore = ht

task.spawn(function()
local tymc = jjv:FindFirstChild(_d("MVQeHQ0CAQ"))

if not tymc then
return
end

local ykg = tymc:WaitForChild(_d("MEgdETEGAAdSHAAcMx0UVAEiCwgVEVQAAQ"), 20)

if ykg and ykg:IsA(_d("MVQeHQ0CNxVUHQY")) then
ht.remotes.sync = ykg

ykg.OnClientEvent:Connect(function(ymbg)
if type(ymbg) ~= _d("F1ARHhw") then
return
end

ht.progress = tonumber(ymbg.progress) or ht.progress
ht.best = tonumber(ymbg.best) or ht.best

if type(ymbg.points) == _d("F1ARHhw") then
ht.points = ymbg.points
end
end)
end

local jz = tymc:WaitForChild(_d("MVQCBxwUBitQARYaCAAGZRwFHBUiEV4UABwUAQ"), 20)

if jz and jz:IsA(_d("MVQeHQ0CNxVUHQY")) then
ht.remotes.request = jz

pcall(function()
jz:FireServer()
end)
end

local ajpe = tymc:WaitForChild(_d("JF0cEBgLMBZXFScJAxMXVBc"), 20)

if ajpe and ajpe:IsA(_d("MVQeHQ0CNxVUHQY")) then
ajpe.OnClientEvent:Connect(function(rymz, dw, la, khp)
ht.globalLuck = tonumber(rymz) or 0
ht.globalRoll = tonumber(dw) or 0
ht.globalLuckTime = type(la) == _d("EEUBGxcA") and la or _d("")
ht.globalRollTime = type(khp) == _d("EEUBGxcA") and khp or _d("")
end)
end
end)

function wx.otherTowerOn(hcwi)
if wx.enabled then
return false
end

if hcwi == _d("F14EFws") then
return false
end

if hcwi == _d("C1AfHhYQFwZf") then
return ht.active()
end

return cmq.run.enabled
end

function ht.active()
return ht.island
end

function ht.unspentPoints()
local ykb = ht.data
local up = tonumber(ht.progress) or 0
local nb = 0

if type(ykb) == _d("F1ARHhw") and type(ykb.getEarnedPoints) == _d("BUQdEQ0OHQ0") then
local jk, ewb = pcall(ykb.getEarnedPoints, up)
nb = jk and tonumber(ewb) or 0
end

return math.max(0, nb - #(ht.points or {})), nb
end

function ht.buffText()
local ve = ht.data

if type(ve) ~= _d("F1ARHhw") then
return _d("K1ABFhoIAAZlHAUcFTYCRRJSEBRSDlgAARAJFUNXAR0URwYLWABSGxIbD1Vd")
end

local uqfg = tonumber(ht.progress) or 0
local imtj = tonumber(ht.best) or 0
local gnua, gwcv = ht.unspentPoints()
local qd = {
_d("JV0cHQtH") .. uqfg .. _d("QxFTMBwUBkM") .. imtj,
_d("M14aHA0USEM") .. gnua .. _d("Q0QdAQkCHBcRHBRZ") .. gwcv .. _d("Q1QSABcCFg"),
}

local vza = {}

for uqp, uqiy in ipairs(ht.points or {}) do
local cbe = ve.StatById and ve.StatById[uqiy]
local kqff = cbe and (cbe.name or uqiy) or tostring(uqiy)
local imb = ve.PointValue and ve.PointValue[uqiy]

table.insert(vza, imb and (kqff .. _d("Qxo") .. tostring(imb)) or kqff)
end

if #vza == 0 then
table.insert(qd, _d("IUQVFApdUg1eHRdZBR0WVhsGWR4XFw"))
else
table.insert(qd, _d("IUQVFApdUg") .. table.concat(vza, _d("TxE")))
end

local ooqr = {}

if (tonumber(ht.globalLuck) or 0) > 0 then
table.insert(ooqr, _d("L0QQGVlM") .. tostring(ht.globalLuck) .. _d("Rg") .. (ht.globalLuckTime ~= _d("") and (_d("Qxk") .. ht.globalLuckTime .. _d("Sg")) or _d("")))
end

if (tonumber(ht.globalRoll) or 0) > 0 then
table.insert(ooqr, _d("MV4fHlkUAgZUF1JS") .. tostring(ht.globalRoll) .. _d("Rg") .. (ht.globalRollTime ~= _d("") and (_d("Qxk") .. ht.globalRollTime .. _d("Sg")) or _d("")))
end

if #ooqr == 0 then
table.insert(qd, _d("JF0cEBgLUgFEFRQKXVINXh0XWQYRF1gFFw"))
else
table.insert(qd, _d("JF0cEBgLUgFEFRQKXVI") .. table.concat(ooqr, _d("TxE")))
end

return table.concat(qd, _d("aQ"))
end

function ht.nextMilestone()
local ckl = ht.data

if type(ckl) ~= _d("F1ARHhw") or type(ckl.Milestones) ~= _d("F1ARHhw") or #ckl.Milestones == 0 then
return nil
end

local kmp = tonumber(mz:GetAttribute(_d("K1ABFhoIAAZ3Hx0WFQ"))) or 0

return math.min(kmp + 1, ckl.Milestones[#ckl.Milestones])
end

function ht.start(mwvn)
local hqc = ht.nextMilestone()

if not hqc then
return false
end

local qiqd = zt:FindFirstChild(mwvn == 2 and _d("MVQAFw0lExdFHxc/Cx0MQ0E") or _d("MVQAFw0lExdFHxc/Cx0MQw"))

if qiqd and qiqd:IsA(_d("IVgdFhgFHgZ0BRcXEw")) then
pcall(function()
qiqd:Fire(hqc, _d("Cl8VGxcOBgZuAR0WCg"))
end)
end

local zn = zt:FindFirstChild(mwvn == 2 and _d("MEUSAA0uHAVYHRsNAiAMXh4wGBMGD1RB") or _d("MEUSAA0uHAVYHRsNAiAMXh4wGBMGD1Q"))

if zn and zn:IsA(_d("IVgdFhgFHgZ0BRcXEw")) then
pcall(function()
zn:Fire(hqc, _d("C1ABFhoIAAY"), hqc)
end)
end

if pi.bossTeams.applyTower then
pi.bossTeams.applyTower(_d("C1ABFhoIAAY"), mwvn)
end

ht.pending = true
ht.pendingUntil = os.time() + 10

return pcall(function()
qj.StartBattle:FireServer(_d("Cl8VGxcOBgZuAR0WCg"), {
tower = _d("C1ABFhoIAAY"),
milestone = hqc,
slot = mwvn,
})
end)
end

function ht.floorNow()
local zb = wx.hardcoreSlot()

if not zb or not wx.busy(zb) then
return nil
end

local cgvv = zt:FindFirstChild(zb == 2 and _d("IVAHBhUCNRZYQQ") or _d("IVAHBhUCNRZY"))
local fosj = cgvv and cgvv:FindFirstChild(_d("MUQdNBUIHRF9EhAcCw"))
local xu = fosj and fosj.Text or _d("")

return tonumber(xu:match(_d("PXcfHRYVVxAaW1cdTFs")))
end

local cvfl = {
enabled = true,
nextAt = os.clock() + 300,
jumps = 0,
}

getgenv().ACBXAntiKick = cvfl

local vkhd = getgenv().ACBXNoUpdate == true

local fhm = {
enabled = not vkhd,
buildId = "v261102-0658",
interval = 180,
retry = 45,
forceAfter = 900,
applying = false,
checking = false,
pendingVersion = nil,
pendingSince = nil,
cameFrom = nil,
}

getgenv().ACBXUpdater = fhm

local iong = {
enabled = false,
tpToBay = false,

stick = {
enabled = false,
at = 0,
hits = 0,
last = _d("DFcV"),

names = {
[_d("EEUaERI")] = true,
[_d("D0QQGVkUBgpSGA")] = true,
[_d("D0QQGQoTGwBa")] = true,
[_d("D0QQGSYUBgpSGA")] = true,
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
rod = _d("Tg"),
castTime = 0,
tutorialStep = 0,
phase = _d("ClUfFw"),
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
deepPhase = _d("ClUfFw"),
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

local mlnb = Vector3.new(-546.8, 13.9, -40250.1)

if type(getgenv().ACBXFishingCatches) == _d("F1ARHhw") then
iong.catches = getgenv().ACBXFishingCatches
end

iong.totalCatches = 0

for crr, lnro in pairs(iong.catches) do
iong.totalCatches = iong.totalCatches + lnro
end

getgenv().ACBXFishingCatches = iong.catches
getgenv().ACBXFishing = iong

iong.catchName = function(cyb)
local wup = mpr.ById[cyb]

if wup and wup.name then
return wup.name
end

local jeg = ph.ById[cyb]

if jeg and jeg.name then
return jeg.name
end

return cyb
end

local rh

rh = {
folder = _d("InIxKg"),
path = _d("InIxKlYEExdSGxcKSRgQXh0"),
at = 0,
save = function()
if type(writefile) ~= _d("BUQdEQ0OHQ0") then
return false
end

local rks = pcall(function()
if type(makefolder) == _d("BUQdEQ0OHQ0") and type(isfile) == _d("BUQdEQ0OHQ0") and not isfile(rh.path) then
pcall(makefolder, rh.folder)
end

writefile(rh.path, game:GetService(_d("K0UHAioCABVYEBc")):JSONEncode({
catches = iong.catches,
totalCatches = iong.totalCatches,
lastCatch = iong.lastCatch,
updatedAt = os.time(),
}))
end)

return rks
end,
load = function()
if type(readfile) ~= _d("BUQdEQ0OHQ0") or type(isfile) ~= _d("BUQdEQ0OHQ0") then
return false
end

local xhna, neu = pcall(function()
if not isfile(rh.path) then
return nil
end

return readfile(rh.path)
end)

if not xhna or type(neu) ~= _d("EEUBGxcA") or #neu == 0 then
return false
end

local fix
local az = pcall(function()
fix = game:GetService(_d("K0UHAioCABVYEBc")):JSONDecode(neu)
end)

if not az or type(fix) ~= _d("F1ARHhw") or type(fix.catches) ~= _d("F1ARHhw") then
return false
end

for qjg, gny in pairs(fix.catches) do
local szod = tonumber(gny) or 0

if szod > 0 then
iong.catches[tostring(qjg)] = math.max(iong.catches[tostring(qjg)] or 0, szod)
end
end

iong.totalCatches = 0

for fyl, qavm in pairs(iong.catches) do
iong.totalCatches = iong.totalCatches + qavm
end

return true
end,
}

rh.load()
getgenv().ACBXFishingStore = rh

local ly = {}

local ap = 0

local function vp()
local pt = {}

for sl, bpft in ipairs(workspace:GetDescendants()) do
if bpft:IsA(_d("IVAAFykGABc")) and bpft.Name == _d("NFAHFws") then
table.insert(pt, bpft)
end
end

ly = pt
ap = os.clock()
end

local function ulu(tp)
if type(tp) ~= _d("F1ARHhw") then
return false
end

iong.loaded = true
iong.dirty = false
iong.fishing = tp.fishing == true
iong.autoOn = tp.autoOn == true
iong.autoUnlocked = tp.autoUnlocked == true
iong.casts = tonumber(tp.casts) or iong.casts
iong.totalCasts = tonumber(tp.totalCasts) or iong.totalCasts
iong.luck = tonumber(tp.luck) or iong.luck
iong.rod = tostring(tp.equippedRod or iong.rod)
iong.castTime = tonumber(tp.castTime) or iong.castTime
iong.tutorialStep = tonumber(tp.tutorialStep) or iong.tutorialStep

if type(tp.rods) == _d("F1ARHhw") then
iong.rodsOwned = tp.rods
end

if type(tp.baits) == _d("F1ARHhw") then
iong.baitsOwned = tp.baits
end

if type(tp.boats) == _d("F1ARHhw") then
iong.boatsOwned = tp.boats
end

if type(tp.mats) == _d("F1ARHhw") then
iong.mats = tp.mats
end

if tp.bootOwned ~= nil then
iong.boot.owned = tp.bootOwned == true
end

if tp.bootEquipped ~= nil then
iong.boot.equipped = tp.bootEquipped == true
end

if tp.equippedBait ~= nil then
iong.equippedBait = tostring(tp.equippedBait)
end

if tp.activeBoat ~= nil then
iong.activeBoat = tostring(tp.activeBoat)
end

iong.boatTier = tonumber(tp.boatTier) or iong.boatTier
iong.islandLocked = tp.islandLocked == true
iong.rebirths = tonumber(tp.rebirths) or iong.rebirths

if type(tp.rebirthCards) == _d("F1ARHhw") then
iong.rebirthCards = tp.rebirthCards
end

iong.lastSync = os.time()

return true
end

local function qpfk()
local akt, dy = pcall(function()
return qj.FishingGetState:InvokeServer()
end)

if not akt or type(dy) ~= _d("F1ARHhw") then
iong.loaded = false
return false
end

return ulu(dy)
end

local ckvk = false

local function yy()
if ckvk then
return false
end

local ykj = mz.Character

if not ykj then
return false
end

if ykj:FindFirstChild(_d("JVgAGhAJFTFeFw")) then
return true
end

local mk = mz:FindFirstChild(_d("IVAQGQkGEQg"))
local pu = mk and mk:FindFirstChild(_d("JVgAGhAJFTFeFw"))
local qrt = ykj:FindFirstChildOfClass(_d("K0QeExcIGwc"))

if not (pu and qrt) then
return false
end

return pcall(function()
qrt:EquipTool(pu)
end)
end

local function bnzo()
local ofh = mz.Character
local pim = ofh and ofh:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not pim then
return nil
end

local eub = RaycastParams.new()
eub.FilterType = Enum.RaycastFilterType.Exclude
eub.FilterDescendantsInstances = { ofh }

local mzow = 24
local ea = {}
local icwg = 0

for eq = 0, mzow - 1 do
local nyh = math.rad(eq * (360 / mzow))
local wn = Vector3.new(math.sin(nyh), 0, math.cos(nyh))
local kynn = pim.Position + wn * 20 + Vector3.new(0, 40, 0)
local zm = workspace:Raycast(kynn, Vector3.new(0, -120, 0), eub)
local jub = zm and (pim.Position.Y - zm.Position.Y) or 120

ea[eq] = jub > 12

if ea[eq] then
icwg = icwg + 1
end
end

if icwg == 0 then
return nil
end

local oz, mgyq = nil, 0

for kced = 0, mzow - 1 do
if ea[kced] and not ea[(kced - 1) % mzow] then
local ilfg = 0

while ilfg < mzow and ea[(kced + ilfg) % mzow] do
ilfg = ilfg + 1
end

if ilfg > mgyq then
oz = kced
mgyq = ilfg
end
end
end

if not oz then
return nil
end

local on = oz + (mgyq - 1) / 2
local lthv = math.rad(on * (360 / mzow))

return Vector3.new(math.sin(lthv), 0, math.cos(lthv))
end

local function mzyv()
local hjjp = mz.Character
local ww = hjjp and hjjp:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not ww then
return nil
end

if #ly == 0 or os.clock() - ap > 20 then
vp()
end

local ed, wsmo = nil, math.huge

for lmq, ge in ipairs(ly) do
if ge.Parent then
local mo = (ge.Position - ww.Position).Magnitude

if mo < wsmo then
wsmo = mo
ed = ge
end
end
end

if not ed or wsmo > 25 then
local lroo = bnzo()

if lroo then
return lroo
end
end

if not ed then
return nil
end

local zkt = Vector3.new(ed.Position.X - ww.Position.X, 0, ed.Position.Z - ww.Position.Z)

if zkt.Magnitude < 0.05 then
return Vector3.new(0, 0, -1)
end

return zkt.Unit
end

local function of()
local si = mz.Character
local fgg = si and si:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not fgg then
return nil
end

local kvg = fgg.CFrame.LookVector
local ua = Vector3.new(kvg.X, 0, kvg.Z)

if ua.Magnitude < 0.05 then
return nil
end

return ua.Unit
end

local function kdd()
local tplj = mz.Character
local ynr = tplj and tplj:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not ynr then
return false
end

local kin = mlnb
local kgk = RaycastParams.new()
kgk.FilterType = Enum.RaycastFilterType.Exclude
kgk.FilterDescendantsInstances = { tplj }

local so = workspace:Raycast(mlnb + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), kgk)

if so and so.Instance.Name ~= _d("NFAHFws") then
kin = Vector3.new(mlnb.X, so.Position.Y + 3, mlnb.Z)
end

ynr.CFrame = CFrame.new(kin)
task.wait(0.5)
vp()

return true
end

local function zbxa()
local hvg = mz.Character
local znxd = hvg and hvg:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not znxd then
return false
end

local hmq = Vector3.new(mlnb.X - znxd.Position.X, 0, mlnb.Z - znxd.Position.Z)
local int = hmq.Magnitude

if int < 2 then
return false
end

local nw = hmq.Unit

if int > 12 then
local icpy = math.min(14, int - 6)
local pm = znxd.Position + nw * icpy
local ir = RaycastParams.new()
ir.FilterType = Enum.RaycastFilterType.Exclude
ir.FilterDescendantsInstances = { hvg }

local ttb = workspace:Raycast(pm + Vector3.new(0, 25, 0), Vector3.new(0, -80, 0), ir)

if ttb and ttb.Instance.Name ~= _d("NFAHFws") then
local irv = ttb.Position.Y + 3.2

if math.abs(irv - znxd.Position.Y) <= 10 then
local zmrk = Vector3.new(ttb.Position.X, irv, ttb.Position.Z)
znxd.CFrame = CFrame.lookAt(zmrk, zmrk + nw)

return true
end
end
end

znxd.CFrame = CFrame.lookAt(znxd.Position, znxd.Position + nw)

return true
end

local zeh = {}

zeh.surfaceWait = 8

zeh.walking = false
zeh.walkStartedAt = 0

zeh.islandHold = Vector3.new(-7384, 16.3, -40539)

zeh.custom = nil
zeh.customIsland = nil

zeh.islandAnchors = {
{ id = _d("AlMSHB0IHAZVLBsKCxMNVQ"), x = -3800 },
{ id = _d("F0YaHCYFFwJSGxcK"), x = -6180 },
{ id = _d("FFgdFhQOHg9uGgEVAg"), x = -7480 },
}

zeh.arrivals = {
abandoned_island = Vector3.new(-3825, 24, -40260),
twin_beaches = Vector3.new(-6180, 40, -40350),
windmill_isle = Vector3.new(-7480, 30, -40350),
lobby = Vector3.new(-499, 17, -40234),
}

function zeh.islandOf(zqew)
if not zqew then
return _d("D14REAA")
end

if zqew.X > -4500 then
return _d("D14REAA")
end

local vsjj, kio = _d("AlMSHB0IHAZVLBsKCxMNVQ"), math.huge

for rop, beux in ipairs(zeh.islandAnchors) do
local fjmg = math.abs(zqew.X - beux.x)

if fjmg < kio then
vsjj = beux.id
kio = fjmg
end
end

return vsjj
end

zeh.savedVersion = 2

do
local ud = getgenv().ACBXDeepSpot

if type(ud) == _d("F1ARHhw") and ud.v == zeh.savedVersion
and tonumber(ud.X) and tonumber(ud.Y) and tonumber(ud.Z) then
zeh.custom = Vector3.new(tonumber(ud.X), tonumber(ud.Y), tonumber(ud.Z))
zeh.customIsland = ud.island
end
end

function zeh.spot()
return zeh.custom or zeh.islandHold
end

function zeh.dropStale()
if not zeh.custom then
return false
end

if zeh.zoneAt(zeh.custom) then
return false
end

zeh.custom = nil
zeh.customIsland = nil
getgenv().ACBXDeepSpot = nil

return true
end

function zeh.capture()
local fv = mz.Character
local dlqe = fv and fv:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not dlqe then
return false, _d("LV5TEREGAAJSBxcLRwYMEQEXGANSAhEAAhYTUgVDHB9X")
end

local wpj = dlqe.Position
local ihon = zeh.floorAt(Vector3.new(wpj.X, wpj.Y + 10, wpj.Z))

if not ihon then
return false, _d("MEUSHB1HHQ0RAB0VDhZDVgEdDAkWQ1caAAoTUk4RBxoQFFIQQRwGWQ8TEBEdHVkBHgxeAVINCFIAUAAGWQEADFxd")
end

local tfgp = zeh.zoneAt(wpj)

if not tfgp then
return false, _d("N1kaAVkUAgxFUxsKRx0WRQAbHQJSBkcWAABHFApCGxsXAFIRWB0VWUpSEEUSHB1HHRVUAVINDxdDRhIGHBVSBVgBAQ1J")
end

zeh.custom = wpj
zeh.customIsland = zeh.islandOf(wpj)

getgenv().ACBXDeepSpot = {
X = wpj.X,
Y = wpj.Y,
Z = wpj.Z,
island = zeh.customIsland,
v = zeh.savedVersion,
}

return true, _d("MFAFFx1HBgtYAFIKFx0XERIBWRMaBhEXFxwXXxRQBxcLRxoMXRdSUQ") .. tostring(tfgp.name) .. _d("Sh8")
end

function zeh.zoneTable()
local ax = {}

if zj and type(zj.Zones) == _d("F1ARHhw") then
for ucsj, ans in ipairs(zj.Zones) do
ax[#ax + 1] = {
id = tostring(ans.id),
name = tostring(ans.name or ans.id),
half = tonumber(ans.half) or 0,
luck = tonumber(ans.luck) or 0,
index = tonumber(ans.index) or 0,
boatTier = tonumber(ans.boatTier) or 0,
}
end
end

table.sort(ax, function(un, lgr)
return un.index < lgr.index
end)

return ax
end

function zeh.zoneAt(uf)
local xwvj = zj and zj.ZoneCenter
local dkt = zeh.zoneTable()

if not (xwvj and uf and #dkt > 0) then
return nil
end

local qfb = math.max(math.abs(uf.X - xwvj.X), math.abs(uf.Z - xwvj.Z))

for hkp, icg in ipairs(dkt) do
if qfb < icg.half then
return icg
end
end

return nil
end

function zeh.current()
local fmvc = mz.Character
local riu = fmvc and fmvc:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

return riu and zeh.zoneAt(riu.Position) or nil
end

function zeh.sync()
local kok = zeh.current()
iong.zoneId = kok and kok.id or nil
end

function zeh.floorAt(vnc)
local uy = mz.Character
local qdfa = RaycastParams.new()
qdfa.FilterType = Enum.RaycastFilterType.Exclude
qdfa.FilterDescendantsInstances = { uy }

local bml = workspace:Raycast(Vector3.new(vnc.X, vnc.Y + 20, vnc.Z), Vector3.new(0, -80, 0), qdfa)

if bml and bml.Instance.Name ~= _d("NFAHFws") then
return bml
end

return nil
end

function zeh.ensureSpotMap()
local gll = zeh.spot()
local loaz = Vector3.new(gll.X, gll.Y + 20, gll.Z)

if zeh.floorAt(loaz) then
return true
end

local ygi = workspace:FindFirstChild(_d("LlADAQ"))

if ygi and ygi:FindFirstChild(_d("IF4SAQ0GHi9eERAA")) then
if os.clock() - (zeh.hopAt or 0) > 1 then
zeh.hopAt = os.clock()
zeh.hop(gll)
iong.lastMessage = _d("Ll4FGxcAUhdeUwYRAlIHVBYCVBATF1QBUgoXHRc")
end

return false
end

if os.clock() - (zeh.islandAskedAt or 0) > 1.2 then
zeh.islandAskedAt = os.clock()

local kdqg = zeh.customIsland or zeh.islandOf(gll)

if kdqg == _d("D14REAA") then
pcall(function()
qj.TeleportToWorld:FireServer(_d("D14REAA"))
end)
else
pcall(function()
qj.FishingIslandTeleport:FireServer(_d("FFAKAhYOHBc"), kdqg)
end)
end

iong.lastMessage = _d("N1AYGxcAUhdZFlIeBh8GFgBSDQIeBkEcAA1HBgwRBxocRxYGVANfDgYGBkNTHxgX")
end

return false
end

function zeh.hop(mrbg)
local ft = mz.Character
local wck = ft and ft:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))
local eke = ft and ft:FindFirstChildOfClass(_d("K0QeExcIGwc"))

if not (wck and eke) then
return false
end

if eke.SeatPart then
pcall(function()
eke.Sit = false
end)
end

wck.AssemblyLinearVelocity = Vector3.zero
wck.CFrame = CFrame.new(Vector3.new(mrbg.X, mrbg.Y + 8, mrbg.Z))

return true
end

function zeh.faceWater()
local wji = mz.Character
local mj = wji and wji:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not mj then
return false
end

local dbf = mzyv()

if not dbf then
local esfv = zj and zj.ZoneCenter

if esfv then
local bi = Vector3.new(esfv.X - mj.Position.X, 0, esfv.Z - mj.Position.Z)

dbf = bi.Magnitude > 1 and bi.Unit or nil
end
end

if not dbf then
return false
end

mj.CFrame = CFrame.lookAt(mj.Position, mj.Position + dbf)

return true
end

function zeh.aimWater(jwq)
local awhw = mz.Character
local hqq = awhw and awhw:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not hqq then
return false
end

if jwq then
vp()
end

local abu = hqq.CFrame.LookVector
local mc = Vector3.new(abu.X, 0, abu.Z)
local qbay = mzyv()

if not qbay then
return false
end

if mc.Magnitude > 0.05 and mc.Unit:Dot(qbay) > 0.985 then
return true
end

hqq.CFrame = CFrame.lookAt(hqq.Position, hqq.Position + qbay)

return true
end

function zeh.hold(tq)
local agp = mz.Character
local krg = agp and agp:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))
local zric = agp and agp:FindFirstChildOfClass(_d("K0QeExcIGwc"))

if not (krg and zric) then
return false
end

if zric.SeatPart then
pcall(function()
zric.Sit = false
end)
end

local jfik = zeh.floorAt(tq)

if not jfik then
return false
end

krg.AssemblyLinearVelocity = Vector3.zero
krg.CFrame = CFrame.new(Vector3.new(tq.X, jfik.Position.Y + 3.2, tq.Z))

pcall(zeh.aimWater, true)

iong.phase = _d("ClUfFw")
iong.nextCastAt = 0

return true
end

function zeh.dive()
local pze = zeh.spot()

if not zeh.ensureSpotMap() then
return false
end

if not zeh.hold(pze) then
return false
end

zeh.islandAskedAt = 0

local xfe = zeh.zoneAt(pze)

iong.lastMessage = xfe
and (_d("K14fFhAJFUNFGxdZAxcGQV4FGBMXEREAAhYTUks") .. tostring(xfe.name) .. _d("Sg"))
or _d("K14fFhAJFUNFGxdZAxcGQV4FGBMXEREAAhYT")

task.wait(0.25)
zeh.sync()
iong.deepDiveAt = os.clock() + 2

return true
end

function zeh.walk()
local lxy = mz.Character
local ot = lxy and lxy:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if zeh.walking and os.clock() - (zeh.walkStartedAt or 0) < 60 then
return false
end

if not ot then
return false
end

local kcos = zeh.spot()

if (ot.Position - Vector3.new(kcos.X, ot.Position.Y, kcos.Z)).Magnitude <= 8 then
iong.phase = _d("ClUfFw")
iong.nextCastAt = 0

return true
end

zeh.walking = true
zeh.walkStartedAt = os.clock()
iong.deepPhase = _d("FFAfGQ")
iong.deepStageAt = os.clock()
iong.lastMessage = _d("NFAfGRAJFUNFHFINDxdDVRYXCQIBFxEEEw0CAENCAx0N")

task.spawn(function()
local lb = lxy and lxy:FindFirstChildOfClass(_d("K0QeExcIGwc"))

local ow, ybe = pcall(function()

local qcbg = workspace:FindFirstChild(_d("LlADAQ"))
local as = zeh.customIsland or zeh.islandOf(kcos)
local xte = (ot.Position - Vector3.new(kcos.X, ot.Position.Y, kcos.Z)).Magnitude

if xte > 400 then
if not (qcbg and qcbg:FindFirstChild(_d("IF4SAQ0GHi9eERAA"))) then
pcall(function()
qj.TeleportToWorld:FireServer(_d("D14REAA"))
end)

local vfa = os.clock() + 20

while iong.deepWalk and os.clock() < vfa do
local pc = workspace:FindFirstChild(_d("LlADAQ"))

if pc and pc:FindFirstChild(_d("IF4SAQ0GHi9eERAA")) then
break
end

task.wait(0.5)
end
end

if iong.deepWalk then
local rlh = zeh.arrivals and zeh.arrivals[as]

if rlh then
zeh.hop(rlh)
else
local xhq = Vector3.new(kcos.X - ot.Position.X, 0, kcos.Z - ot.Position.Z)
local ian = xhq.Magnitude > 1 and xhq.Unit or Vector3.new(1, 0, 0)

zeh.hop(Vector3.new(kcos.X - ian.X * 120, kcos.Y, kcos.Z - ian.Z * 120))
end

task.wait(1.5)
end
end

if iong.deepWalk and lb then

local lk = (ot.Position - Vector3.new(kcos.X, ot.Position.Y, kcos.Z)).Magnitude
local mb = os.clock() + math.clamp(lk / 8, 30, 600)
local aj = 0
local ue = ot.Position
local ejbp = os.clock()

while iong.deepWalk and os.clock() < mb do
local vwhh = Vector3.new(kcos.X - ot.Position.X, 0, kcos.Z - ot.Position.Z)

if vwhh.Magnitude <= 3 then
break
end

if os.clock() - aj >= 0.25 then
lb:MoveTo(Vector3.new(kcos.X, ot.Position.Y, kcos.Z))
aj = os.clock()
end

if os.clock() - ejbp >= 1.2 then
if (ot.Position - ue).Magnitude < 2 then
lb.Jump = true
end

ue = ot.Position
ejbp = os.clock()
end

task.wait(0.1)
end

lb:MoveTo(ot.Position)
end
end)

zeh.walking = false

if not ow then
iong.deepPhase = _d("ClUfFw")
iong.deepStageAt = os.clock()
iong.lastMessage = _d("NFAfGVkTHUN1FhcJAgEXESQTDQIAQ1cSGxUCFlkR") .. tostring(ybe)

return
end

if not iong.deepWalk then
return
end

local ensz = Vector3.new(ot.Position.X - kcos.X, 0, ot.Position.Z - kcos.Z)

if ensz.Magnitude <= 6 then

pcall(zeh.aimWater, true)
iong.phase = _d("ClUfFw")
iong.nextCastAt = 0
iong.deepPhase = _d("C14fFg")
iong.deepStageAt = os.clock()
zeh.sync()
iong.lastMessage = _d("NFAfGRwDUhdeUwYRAlIQUAUXHUcWBlQDXw4GBgZDUwEJCAY")
else

iong.deepPhase = _d("ClUfFw")
iong.deepStageAt = os.clock()
iong.lastMessage = _d("IF4GHh1HHAxFUwUYCxlDRRxSDQ8XQ1UWFwkCARcRBBMNAgBDQgMdDUdfQ0UBCxAJFUNQFBMQCQ")
end
end)

return false
end

function zeh.settle()
for eih = 1, 30 do
if not iong.deepZone or iong.deepWalk then
return false
end

if zeh.dive() then
return true
end

task.wait(1)
end

return false
end

function zeh.surface()
local viaw = mz.Character
local ac = viaw and viaw:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not ac then
return false
end

local hj = RaycastParams.new()
hj.FilterType = Enum.RaycastFilterType.Exclude
hj.FilterDescendantsInstances = { viaw }

local zofq = workspace:Raycast(mlnb + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), hj)
local wxmi = mlnb

if zofq and zofq.Instance.Name ~= _d("NFAHFws") then
wxmi = Vector3.new(mlnb.X, zofq.Position.Y + 3, mlnb.Z)
end

ac.CFrame = CFrame.new(wxmi)
iong.phase = _d("ClUfFw")
iong.nextCastAt = 0

return true
end

function iong.gotoIsland()
local qdu = mz.Character
local uhat = qdu and qdu:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))
local zdy = workspace:FindFirstChild(_d("KkIfExcDNApCGxcLChMNfyMx"), true)

if not (uhat and zdy) then
return false
end

local re = zdy:GetPivot()
local mffm = RaycastParams.new()
mffm.FilterType = Enum.RaycastFilterType.Exclude
mffm.FilterDescendantsInstances = { qdu, zdy }

local tsh = nil
local fic = -math.huge

for li, vac in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local zfrq = workspace:Raycast(re.Position + vac + Vector3.new(0, 30, 0), Vector3.new(0, -120, 0), mffm)

if zfrq and zfrq.Position.Y > fic then
tsh = zfrq
fic = zfrq.Position.Y
end
end

if tsh then
uhat.CFrame = CFrame.new(Vector3.new(tsh.Position.X, fic + 3.5, tsh.Position.Z))
else
uhat.CFrame = CFrame.new(re.Position + Vector3.new(0, 4, 0))
end

iong.phase = _d("ClUfFw")
iong.nextCastAt = 0

return true
end

function zeh.cycle()
local rlsj = os.clock()
local dnqm = iong.deepPhase or _d("ClUfFw")
local kqs = tonumber(iong.deepStageAt) or 0

if rlsj < math.max(iong.shopTripUntil or 0, iong.tpHoldUntil or 0) then
return
end

if dnqm == _d("ClUfFw") then
iong.deepPhase = _d("C14fFg")
iong.deepStageAt = rlsj

if iong.deepWalk then
zeh.walk()
else
zeh.dive()
end

return
end

if dnqm == _d("FFAfGQ") then
return
end

if dnqm == _d("C14fFg") then
local oin = zeh.current()

local ga = zeh.zoneAt(zeh.spot())

if oin and not mz:GetAttribute(_d("MEYaHxQOHAQ")) and rlsj - (iong.deepAimAt or 0) > 2 then
iong.deepAimAt = rlsj
pcall(zeh.aimWater)
end

if mz:GetAttribute(_d("MEYaHxQOHAQ")) then
if iong.deepWalk then

iong.deepPhase = _d("ClUfFw")
iong.deepStageAt = rlsj
else
iong.deepPhase = _d("B1gD")
iong.deepStageAt = rlsj
iong.lastMessage = _d("MEYaHxQOHAQREgZZExoGERcXHBdSEEEcBllKUhBEARQYBBcHERUdC0cTCkM")
end
elseif not oin or (ga and oin.index < ga.index) then

iong.deepPhase = _d("ClUfFw")
iong.deepStageAt = rlsj
end

return
end

if dnqm == _d("B1gD") then
zeh.surface()
iong.deepPhase = _d("EEQBFBgEFw")
iong.deepStageAt = rlsj

return
end

if dnqm == _d("EEQBFBgEFw") and rlsj - kqs >= zeh.surfaceWait then
iong.deepPhase = _d("ClUfFw")
end
end

local function ia()
local vdg = mz.Character
local sg = vdg and vdg:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not sg then
return false
end

return (sg.Position - mlnb).Magnitude <= 12
end

local function mwxw()
if not yy() then
return false
end

local gwku = pcall(function()
qj.FishingSetAuto:FireServer(true)
end)

iong.usingGameAuto = gwku
return gwku
end

local function nfr()
iong.usingGameAuto = false

pcall(function()
qj.FishingSetAuto:FireServer(false)
end)

pcall(function()
qj.FishingStop:FireServer()
end)
end

function iong.recover()
iong.phase = _d("ClUfFw")
iong.nextCastAt = 0
iong.deepPhase = _d("ClUfFw")
iong.deepStageAt = 0
iong.deepDiveAt = 0
iong.waterRefusals = 0
iong.usingGameAuto = false
iong.castMark = iong.totalCasts
iong.castMarkAt = os.clock()

pcall(nfr)
pcall(yy)

if iong.deepZone and not zeh.current() then

pcall(function()
qj.TeleportToWorld:FireServer(_d("D14REAA"))
end)
elseif iong.tpToBay and not ia() then
pcall(kdd)
end

iong.lastMessage = _d("JVgAGhAJFUNCBxMVCxcHEV5SCwIBBkVTBhECUhRQBxcLRxMNVVMGFggZQ0UbF1kAEw5UVAFZCx0BUwpSCwgF")
end

local function ndl()
if not yy() then
iong.lastMessage = _d("LV5TFBAUGgpfFFILCBZDWB1SDQ8XQ1MSERIXEwBa")
return false
end

local rmxq = of()
local ozx = mzyv()
local bvh = rmxq or ozx

if not bvh then
iong.lastMessage = _d("LV5TBRgTFxERFR0MCRZDXxYTCwUL")
return false
end

if rmxq and ozx and rmxq:Dot(ozx) < 0.25 then
bvh = ozx
end

iong.phase = _d("AFAABhAJFQ")
iong.lastMessage = nil
iong.watchdogAt = os.clock() + 25

local agyw, alo = pcall(function()
qj.FishingThrow:FireServer(1, bvh)
end)

if not agyw then
iong.phase = _d("ClUfFw")
iong.lastMessage = tostring(alo)
iong.nextCastAt = os.clock() + 3
return false
end

return true
end

local tpdg = qj.FishingUpdate.OnClientEvent:Connect(function(gppr, ghdz)
iong.dirty = true

if gppr == _d("MEUSBhw") then
if type(ghdz) == _d("F1ARHhw") then
iong.autoOn = ghdz.autoOn == true
end

return
end

if gppr == _d("IFAABg") then
iong.phase = _d("FFAaBhAJFSFYBxc")
iong.waterRefusals = 0
return
end

if gppr == _d("IVgHFw") then
local qce = type(ghdz) == _d("F1ARHhw") and tonumber(ghdz.warning) or 1

iong.phase = _d("EVQWHhAJFQ")
iong.watchdogAt = os.clock() + 15

task.delay(math.max(0.3, qce + 0.8), function()
if iong.phase ~= _d("EVQWHhAJFQ") then
return
end

pcall(function()
qj.FishingReel:FireServer(true, 120)
end)

iong.phase = _d("EVQAHRURGw1W")
end)

return
end

if gppr == _d("IFAHERE") then

local xrw = type(ghdz) == _d("F1ARHhw") and tonumber(ghdz.totalCasts) or nil
local tu = tonumber(getgenv().ACBXFishingCatchMark) or 0

if xrw and xrw <= tu and tu - xrw < 25 then
return
end

if xrw then
getgenv().ACBXFishingCatchMark = xrw
end

local jhn = type(ghdz) == _d("F1ARHhw") and tostring(ghdz.itemId) or _d("Fl8YHBYQHA")
local dhmn = iong.catchName(jhn)

iong.catches[jhn] = (iong.catches[jhn] or 0) + 1
iong.totalCatches = (iong.totalCatches or 0) + 1

local eihh = type(ghdz) == _d("F1ARHhw") and ghdz.chest or nil

if type(eihh) == _d("F1ARHhw") and eihh.itemId then
local hzgb = tostring(eihh.itemId)

iong.catches[hzgb] = (iong.catches[hzgb] or 0) + 1
end

if os.clock() - (rh.at or 0) >= 5 then
rh.at = os.clock()
rh.save()
end
iong.lastCatch = dhmn
iong.lastMessage = nil
iong.phase = _d("ClUfFw")
iong.nextCastAt = os.clock() + 2.5

if type(ghdz) == _d("F1ARHhw") then
iong.casts = tonumber(ghdz.casts) or iong.casts
iong.totalCasts = tonumber(ghdz.totalCasts) or iong.totalCasts
iong.autoUnlocked = ghdz.autoUnlocked == true or iong.autoUnlocked
end

return
end

if gppr == _d("IkQHHTYBFA") then

iong.usingGameAuto = false
iong.phase = _d("ClUfFw")
iong.nextCastAt = os.clock() + 1
return
end

if gppr == _d("JkIQEwkCFg") then
iong.phase = _d("ClUfFw")
iong.lastMessage = _d("N1kWUh8OAQsRFB0NRxMUUAo")
iong.nextCastAt = os.clock() + 2.5
return
end

if gppr == _d("MVQZFxoTFwc") then
iong.phase = _d("ClUfFw")

local ulzp = type(ghdz) == _d("F1ARHhw") and tostring(ghdz.message) or _d("IFAABlkVFwlUEAYcAw")
iong.lastMessage = ulzp

if ulzp:lower():find(_d("FFAHFws"), 1, true) then
iong.waterRefusals = (iong.waterRefusals or 0) + 1

if iong.waterRefusals >= 2 then
iong.waterRefusals = 0

if zbxa() then
iong.lastMessage = _d("MVQVBwoCFkNFBBsaAlJOEQcHCwkXBxERExoMUhdeBBMLA1IXWRZSDgYGBkM")
iong.nextCastAt = os.clock() + 1.5
return
end
end

iong.nextCastAt = os.clock() + 8
return
end

iong.waterRefusals = 0
iong.nextCastAt = os.clock() + 3
return
end
end)

local function nz()
if not iong.loaded then
return _d("MVQSFhAJFUNXGgERDhwEEQAGGBMXTR9d")
end

local iabq = iong.autoUnlocked == true
or (iong.totalCasts or 0) > 0
or (iong.tutorialStep or 0) > 0
local pyuc = zj and zj.RodsById and zj.RodsById[iong.rod]
local kq = pyuc and tostring(pyuc.name) or tostring(iong.rod)
local da = math.floor((tonumber(iong.luck) or 0) * 100 + 0.5)

local eug = {
_d("MV4XSFk") .. kq,
_d("L0QQGUNH") .. da .. _d("Rg"),
}

local kokq = zeh.current()

if kokq then
table.insert(eug, _d("OV4dF0NH") .. kokq.name .. _d("QxlY") .. tostring(math.floor(kokq.luck * 100 + 0.5)) .. _d("RhEfBxoMWw"))
end

table.insert(eug, _d(""))
table.insert(eug, _d("IFAABgpHBgwRAAIcCRZZEQ") .. fpo(iong.casts or 0))
table.insert(eug, _d("N14HExVHEQJCBwFDRw") .. fpo(iong.totalCasts or 0))

table.insert(eug, _d(""))
table.insert(eug, _d("JVgAGhAJFUNEHR4WBBkGVUlS") .. (iabq and _d("GlQA") or _d("DV4")))
table.insert(eug, _d("IkQHHVQBGxBZUwcJAAACVRZIWQ") .. (iong.autoUnlocked and _d("DEYdFx0") or _d("DV4HUhYQHAZV")))

if iong.enabled then
local sj = iong.usingGameAuto and _d("BFAeF1kGBxde") or tostring(iong.phase)

if sj == _d("FFAaBhAJFSFYBxc") then
sj = _d("FFAaBhAJFUNXHABZBlIBWAcX")
elseif sj == _d("EVQWHhAJFQ") then
sj = _d("EVQWHhAJFUNYHQ")
elseif sj == _d("EVQAHRURGw1W") then
sj = _d("D1AdFhAJFUNYBw")
end

table.insert(eug, _d(""))
table.insert(eug, _d("IkQHHVkhGxBZSVI") .. sj)

local ruwh = hwbc.worldBoss

if ruwh and type(ruwh.hasWork) == _d("BUQdEQ0OHQ0") and ruwh.enabled and ruwh.hasWork() then
table.insert(eug, _d("K14fFhAJFVkRFB4WBRMPEREdChRSCkJTBwlHWhFUAAcUAgFDXh1SEBMBQ1IcHRUDHRRfWg"))
end

if iong.lastCatch then
table.insert(eug, _d("L1AABlkEExdSG0hZ") .. iong.lastCatch)
end
end

if iong.lastMessage then
table.insert(eug, _d(""))
table.insert(eug, _d("LV4HF0NH") .. iong.lastMessage)
end

return table.concat(eug, _d("aQ"))
end

local function lyxj()
local bzmf = 0

for ob, hyq in pairs(iong.catches) do
local fvqm = mpr.ById[ob]

if not (fvqm and fvqm.type == _d("AFkWAQ0")) then
bzmf = bzmf + hyq
end
end

return bzmf
end

local function kn()
local jtx = {}

for chor, bev in pairs(iong.catches) do
local gqls = mpr.ById[chor]
local lqcv = gqls and gqls.type == _d("AFkWAQ0") or false

table.insert(jtx, {
name = iong.catchName(chor),
count = bev,
chest = lqcv,
rank = lqcv and (tonumber(gqls.border) or 1) or 0,
})
end

if #jtx == 0 then
return _d("LV4HGhAJFUNSEgceDwZDSBYGV214N0QBHFkIHENwBgYWRzQKQhtSGAkWQ0UbF1kTEw9dClIKExMRRQBSEQIABh9TOw1HAQJHFgFZDgYQVB8UVUcBDBEaBlkEExFDGhcKRx0VVAFSFwIKFxEAFwoUGwxfXQ")
end

table.sort(jtx, function(ik, sdj)
if ik.chest ~= sdj.chest then
return ik.chest
end

if ik.chest and ik.rank ~= sdj.rank then
return ik.rank > sdj.rank
end

if ik.count ~= sdj.count then
return ik.count > sdj.count
end

return ik.name < sdj.name
end)

local rxmm = {}

for qqse, kbqi in ipairs(jtx) do
table.insert(rxmm, kbqi.name .. _d("Q9Pz5lk") .. fpo(kbqi.count))
end

local mzjk = {
table.concat(rxmm, _d("aTs")),
_d(""),
_d("N14HExVHEQJEFBoNXVI") .. fpo(lyxj()) .. _d("Q/PEUg") .. #jtx .. _d("Q1oaHB0U"),
}

if iong.lastCatch then
table.insert(mzjk, _d("L1AABlkEExdSG0hZ") .. tostring(iong.lastCatch))
end

return table.concat(mzjk, _d("aQ"))
end

local wh = {
rod = Vector3.new(-493, 18, -40254),
bait = Vector3.new(-493, 18, -40254),
}

local function br(iwrc)
if not zj then
return {}
end

local lcd

if iwrc == _d("EV4X") then
lcd = zj.RodsById
elseif iwrc == _d("AVAaBg") then
lcd = zj.BaitsById
else
lcd = nil
end

local qo = {}

for op, rsj in pairs(lcd or {}) do
if not rsj.crafted then
table.insert(qo, {
id = tostring(op),
name = tostring(rsj.name or op),
cost = tonumber(rsj.cost) or 0,
luck = tonumber(rsj.luck) or 0,
index = tonumber(rsj.index) or 0,
island = rsj.shop == _d("CkIfExcD"),
})
end
end

table.sort(qo, function(lv, ecyx)
if lv.index ~= ecyx.index then
return lv.index < ecyx.index
end

return lv.cost < ecyx.cost
end)

return qo
end

local function ps(ftom)
if ftom == _d("EV4X") then
return iong.rodsOwned or {}
elseif ftom == _d("AVAaBg") then
return iong.baitsOwned or {}
end

return {}
end

local function mmmz(llpv)
if llpv == _d("EV4X") then
return iong.rod
elseif llpv == _d("AVAaBg") then
return iong.equippedBait
end

return nil
end

local function qfy(gj)
local nczo = ps(gj)
local ex = nil

for wrj, xws in ipairs(br(gj)) do
if nczo[xws.id] == true then
ex = xws
end
end

return ex
end

local function uw(kwhz)
if kwhz.island and iong.islandLocked then
return false
end

return true
end

local function ald(es)
local gxt = ps(es)
local yr = iong.casts or 0
local apbk = nil

for mggd, all in ipairs(br(es)) do
if gxt[all.id] ~= true and all.cost <= yr and uw(all) then
apbk = all
end
end

return apbk
end

local function zzkl(yb)
local omfv = ps(yb)

for uwrs, pbgo in ipairs(br(yb)) do
if omfv[pbgo.id] ~= true and uw(pbgo) then
return pbgo
end
end

return nil
end

local function jb(pa, ct)
if not ct then
return _d("DV4dF1kIBQ1UFw")
end

return ct.name .. _d("QxlY") .. tostring(math.floor(ct.luck * 100 + 0.5)) .. _d("RhEfBxoMWw")
end

local function qmr()
if not zj then
return _d("JVgAGhAJFSdQBxNZCR0XERUdDAkWQxxTAREIAkNVEgYYRwcNUAUTEAsTAV0WXA")
end

local ckfd = {}
local hr = { rod = _d("MV4X"), bait = _d("IVAaBg") }

for zjuc, efj in ipairs({ _d("EV4X"), _d("AVAaBg") }) do
local pjoe = qfy(efj)
local tj = nil

for ampf, asj in ipairs(br(efj)) do
if asj.id == mmmz(efj) then
tj = asj.name
end
end

if #ckfd > 0 then
table.insert(ckfd, _d(""))
end

table.insert(ckfd, hr[efj] .. _d("WRE") .. jb(efj, pjoe))
table.insert(ckfd, _d("LF9THBYQSEM") .. (tj or _d("DV4dFw")))

local pfz = ald(efj) or zzkl(efj)

if pfz then
local vuk = pfz.cost - (iong.casts or 0)

table.insert(ckfd, _d("LVQLBkNH") .. pfz.name .. _d("Q/PEUg") .. fpo(pfz.cost) .. _d("Q1ISAQ0U"))

if vuk > 0 then
table.insert(ckfd, _d("LVQWFlk") .. fpo(vuk) .. _d("Q1wcABw"))
end
else
table.insert(ckfd, _d("LVQLBkNHFxVUAQsNDxsNVlMdDgkXBw"))
end
end

table.insert(ckfd, _d(""))
table.insert(ckfd, _d("IFAABgpHBgwRAAIcCRZZEQ") .. fpo(iong.casts or 0))

if iong.shopMessage then
table.insert(ckfd, _d(""))
table.insert(ckfd, iong.shopMessage)
end

return table.concat(ckfd, _d("aQ"))
end

local function uywn(xv, ah)
local rezl = os.clock()

if rezl < (iong.shopCallAt or 0) then
return false, _d("EF0cBQ")
end

iong.shopCallAt = rezl + 1.4

local py, nxvz, bpx, ns = pcall(function()
return qj.FishingShop:InvokeServer(xv, ah)
end)

if not py then
return false, _d("BkMBHQtH") .. tostring(nxvz)
end

ulu(ns)

if nxvz == true then
return true, nil
end

return false, tostring(bpx or _d("EVQVBwoCFg"))
end

function iong.rebirthCardsHeld()
local clhb = zj and type(zj.RebirthCards) == _d("F1ARHhw") and #zj.RebirthCards or 0

if clhb == 0 then
return 0, 0
end

local uzm = 0

for ky, szn in ipairs(zj.RebirthCards) do
if iong.rebirthCards[szn.cardId] then
uzm = uzm + 1
end
end

return uzm, clhb
end

function iong.rebirthReady()
local nczu, ms = iong.rebirthCardsHeld()

return ms > 0 and nczu >= ms and (tonumber(iong.rebirths) or 0) < 1
end

function iong.rebirthText()
local is, aedq = iong.rebirthCardsHeld()

if aedq == 0 then
return _d("JVgAGhAJFUNVEgYYRxwMRVMeFgYWBlVfUgoIUhFUERsLExpDWABSDAkTFVAaHhgFHgYf")
end

if (tonumber(iong.rebirths) or 0) >= 1 then
return _d("MVQRGwsTGgZVXVItDxdDcBETFwMdDVQXUjAUHgJfF1IQFFIMQRYcVw")
end

if is >= aedq then
return _d("Il0fUg") .. aedq .. _d("Q1ISAB0UUgVYABocA1xDYxYTHR5SF15TABwFGxFFG1w")
end

local vmf = {}

for rme, gocz in ipairs(zj.RebirthCards) do
if not iong.rebirthCards[gocz.cardId] then
table.insert(vmf, (string.gsub(gocz.cardId, _d("PVcaARE4"), _d(""))))
end
end

return is .. _d("TA") .. aedq .. _d("Q1ISAB0UXENiBxsVC1INVBYWWQ") .. table.concat(vmf, _d("TxE")) .. _d("TQ")
end

local function sng(avzt)
local vqwn = mz.Character
local jj = vqwn and vqwn:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not jj then
return false
end

return (jj.Position - (wh[avzt] or wh.rod)).Magnitude <= 26
end

local function nbz(gk)
if sng(gk) then
return true
end

local yv = mz.Character
local yi = yv and yv:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not yi then
return false
end

local rhp = wh[gk] or wh.rod
iong.shopTripUntil = os.clock() + 12
iong.shopHoldUntil = os.clock() + 12

pcall(function()
yi.CFrame = CFrame.new(rhp)
end)

task.wait(1.2)

return sng(gk)
end

local function dbjv(hi, fher, jtvh)
if not jtvh then
return false
end

if (iong.casts or 0) < jtvh.cost then
return false
end

if not nbz(hi) then
iong.shopMessage = _d("IF4GHh1HHAxFUwAcBhELEQcaHEcBC14DUh8IAEM") .. jtvh.name
return false
end

local cbpg, luy = uywn(fher, jtvh.id)

if not cbpg then
local fxl = tostring(luy)
local ygbi = fxl:find(_d("N1AfGVkTHUNFGxdZIRsQWRYAFAYc"), 1, true) or fxl:find(_d("IV4SBlkjFwJdFgA"), 1, true)

if ygbi then

iong.shopMessage = _d("NFAfGRAJFUNEA1INCFIXWRZSGggHDUUWAFkBHRER") .. jtvh.name
return false
end

if luy ~= _d("EF0cBQ") then
iong.shopAt = os.clock() + 15
iong.shopMessage = _d("MFQBBBwVUhFUFQcKAhZD") .. jtvh.name .. _d("Qxk") .. fxl .. _d("Sg")
end

return false
end

iong.shopMessage = _d("IV4GFRETUg") .. jtvh.name

return true
end

local function emra(xkxb)
local bmgy = qfy(xkxb)

if not bmgy or mmmz(xkxb) == bmgy.id then
return false
end

local dnsi

if xkxb == _d("EV4X") then
dnsi = _d("JkAGGwk1HQc")
elseif xkxb == _d("AVAaBg") then
dnsi = _d("JkAGGwklEwpF")
else
return false
end

local ftuo, ssm = uywn(dnsi, bmgy.id)

if not ftuo then
if ssm ~= _d("EF0cBQ") then
iong.shopMessage = _d("IF4GHh1HHAxFUxcIEhsTEQ") .. bmgy.name .. _d("Qxk") .. tostring(ssm) .. _d("Sg")
end

return false
end

if xkxb == _d("EV4X") then
iong.rod = bmgy.id
elseif xkxb == _d("AVAaBg") then
iong.equippedBait = bmgy.id
else
return false
end

iong.shopMessage = _d("JkAGGwkXFwcR") .. bmgy.name

return true
end

local function ioe()
local pd = iong.shop

if os.time() - (iong.lastSync or 0) >= 5 then
qpfk()
end

if pd.equipRod then
emra(_d("EV4X"))
end

if pd.equipBait then
emra(_d("AVAaBg"))
end

if pd.autoBuyRod then
dbjv(_d("EV4X"), _d("IUQKIBYD"), ald(_d("EV4X")))
end

if pd.autoBuyBait then
dbjv(_d("AVAaBg"), _d("IUQKMBgOBg"), ald(_d("AVAaBg")))
end
end

local function fhth()
local gky = iong.shop

return gky.autoBuyRod or gky.autoBuyBait or gky.equipRod or gky.equipBait
end

iong.shopIsland = {
rods = function()
local yiba = zj and zj.RodsById or {}
local cnkn = {}

for tsf, whcw in pairs(yiba) do
if tostring(whcw.shop) == _d("CkIfExcD") then
table.insert(cnkn, {
id = tostring(tsf),
name = tostring(whcw.name or tsf),
cost = tonumber(whcw.cost) or 0,
luck = tonumber(whcw.luck) or 0,
index = tonumber(whcw.index) or 0,
crafted = whcw.crafted == true,
})
end
end

table.sort(cnkn, function(siet, tfha)
return siet.index < tfha.index
end)

return cnkn
end,

angler = function()
local oj = workspace:FindFirstChild(_d("LWEwAQ"), true)

if not oj then
return nil
end

for qzs, cbr in ipairs(oj:GetChildren()) do
if cbr:GetAttribute(_d("MFQQABwTMw1WHxcLKSIg")) then
return cbr
end
end

return nil
end,
held = function(ngk)
return (iong.rodsOwned or {})[ngk] == true
end,
recipeHeld = function(xs)
for xox, vvki in ipairs(xs or {}) do
local tjp = tonumber((iong.mats or {})[vvki.id]) or 0

if tjp < (tonumber(vvki.count) or 0) then
return false
end
end

return true
end,
recipeText = function(mh)
local hmml = {}

for ihg, tcul in ipairs(mh or {}) do
local qvp = tonumber((iong.mats or {})[tcul.id]) or 0
local obie = (mpr.ById[tcul.id] and mpr.ById[tcul.id].name) or tostring(tcul.id)

table.insert(hmml, obie .. _d("Qw") .. fpo(qvp) .. _d("TA") .. fpo(tonumber(tcul.count) or 0))
end

return table.concat(hmml, _d("Q/PEUg"))
end,

stand = function(quf)
local ihio = mz.Character
local tf = ihio and ihio:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not (tf and quf) then
return false
end

local mmh = quf:GetPivot()
local auk = quf:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ")) or quf:FindFirstChildWhichIsA(_d("IVAAFykGABc"), true)
local uie = auk and (auk.CFrame * CFrame.new(0, 0, -5)).Position or nil

if not uie then
local fm = RaycastParams.new()
fm.FilterType = Enum.RaycastFilterType.Exclude
fm.FilterDescendantsInstances = { ihio, quf }

local yqev = nil
local kiio = math.huge

for aalg, xj in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local kmv = workspace:Raycast(mmh.Position + xj + Vector3.new(0, 30, 0), Vector3.new(0, -140, 0), fm)

if kmv and tostring(kmv.Instance.Name) ~= _d("NFAHFws") and kmv.Position.Y <= mmh.Position.Y + 10 then
local juvx = math.abs(kmv.Position.Y - mmh.Position.Y)

if juvx < kiio then
yqev = kmv
kiio = juvx
end
end
end

uie = yqev and Vector3.new(yqev.Position.X, yqev.Position.Y + 3.5, yqev.Position.Z) or (mmh.Position + Vector3.new(0, 4, 0))
end

iong.shopTripUntil = os.clock() + 12

iong.islandTripUntil = os.clock() + 12

pcall(function()
tf.CFrame = CFrame.new(uie)
end)

task.wait(1.2)

return true
end,
atIsland = function()
local ciop = workspace:FindFirstChild(_d("KkIfExcDNApCGxcLChMNfyMx"), true)
local afil = mz.Character
local ji = afil and afil:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not (ciop and ji) then
return false
end

return (ji.Position - ciop:GetPivot().Position).Magnitude <= 45
end,
toIsland = function()
if iong.shopIsland.atIsland() then
return true
end

iong.shopTripUntil = os.clock() + 12

if not iong.gotoIsland() then
return false
end

task.wait(1.2)

return iong.shopIsland.atIsland()
end,

craftExcalibur = function()
local qeky = iong.shopIsland.angler()

if not qeky or iong.shopIsland.held(_d("EV4XLQoCERFUBw")) then
return false
end

if not iong.shopIsland.recipeHeld(zj and zj.SecretRecipe) then
return false
end

iong.shopIsland.stand(qeky)

local jahq, tc = uywn(_d("IEMSFA01HQc"), _d("EV4XLQoCERFUBw"))

if jahq then
iong.rod = _d("EV4XLQoCERFUBw")
iong.islandMessage = _d("IEMSFA0CFkNFGxdZIgoAUB8bGxIAQ0McFlkGBkNFGxdZLxsHVRYcWSYcBF0WAA")
elseif tc ~= _d("EF0cBQ") then
iong.islandMessage = _d("K1gXFhwJUiJfFB4cFVIRVBUHCgIWQ0UbF1kiCgBQHxsbEgBDGQ") .. tostring(tc) .. _d("Sg")
end

return jahq
end,
buyRod = function()
if iong.islandLocked then
return false
end

local tjs = iong.rodsOwned or {}
local hiyo = nil

for jkfa, wex in ipairs(iong.shopIsland.rods()) do
if not wex.crafted
and tjs[wex.id] ~= true
and wex.cost <= (iong.casts or 0)
and (hiyo == nil or wex.index > hiyo.index) then
hiyo = wex
end
end

if not hiyo then
return false
end

if not iong.shopIsland.toIsland() then
iong.islandMessage = _d("IF4GHh1HHAxFUwAcBhELEQcaHEcbEF0SHB1HEQxEHQYcFQ")
return false
end

local ao, ie = uywn(_d("IUQKIBYD"), hiyo.id)

if ao then
iong.islandMessage = _d("IV4GFRETUg") .. hiyo.name
elseif ie ~= _d("EF0cBQ") then
local ktw = tostring(ie)

if not (ktw:find(_d("N1AfGVkTHQ"), 1, true) or ktw:find(_d("KkIfExcDFxE"), 1, true)) then
iong.islandAt = os.clock() + 15
iong.islandMessage = _d("MFQBBBwVUhFUFQcKAhZD") .. hiyo.name .. _d("Qxk") .. ktw .. _d("Sg")
end
end

return ao
end,
craftBoot = function()
if iong.boot.owned or iong.islandLocked then
return false
end

if not iong.shopIsland.recipeHeld(zj and zj.BootRecipe) then
return false
end

if not iong.shopIsland.toIsland() then
iong.islandMessage = _d("IF4GHh1HHAxFUwAcBhELEQcaHEcbEF0SHB1HEQxEHQYcFQ")
return false
end

local xcee, ngvy = uywn(_d("IEMSFA0lHQxF"))

if xcee then
iong.boot.owned = true
iong.islandMessage = _d("IEMSFA0CFkNFGxdZKxcEVB0WGBULQ3McHQ0")
elseif ngvy ~= _d("EF0cBQ") then
iong.islandMessage = _d("KkIfExcDUiVYABocFR8CX1MAHAEHEFQXUg0PF0NTHB0NR1o") .. tostring(ngvy) .. _d("Sg")
end

return xcee
end,
best = function()
local ay = iong.rodsOwned or {}
local yhlg = nil

for by, fz in ipairs(iong.shopIsland.rods()) do
if ay[fz.id] == true and (yhlg == nil or fz.luck > yhlg.luck) then
yhlg = fz
end
end

return yhlg
end,

equipRod = function()
local qvh = iong.shopIsland.best()

if not qvh or iong.rod == qvh.id then
return false
end

local yqo, am = uywn(_d("JkAGGwk1HQc"), qvh.id)

if yqo then
iong.rod = qvh.id
iong.islandMessage = _d("JkAGGwkXFwcR") .. qvh.name
elseif am ~= _d("EF0cBQ") then
iong.islandMessage = _d("IF4GHh1HHAxFUxcIEhsTEQ") .. qvh.name .. _d("Qxk") .. tostring(am) .. _d("Sg")
end

return yqo
end,
equipBoot = function()
if not iong.boot.owned or iong.boot.equipped then
return false
end

local ypn, etqe = uywn(_d("JkAGGwklHQxF"), true)

if ypn then
iong.boot.equipped = true
iong.islandMessage = _d("JkAGGwkXFwcRBxocRz4GVhYcHQYAGhExHRYT")
elseif etqe ~= _d("EF0cBQ") then
iong.islandMessage = _d("IF4GHh1HHAxFUxcIEhsTEQcaHEcQDF4HUlE") .. tostring(etqe) .. _d("Sg")
end

return ypn
end,
active = function()
local ffux = iong.island

return ffux.autoRod or ffux.equipRod or ffux.autoAcc or ffux.equipAcc
end,
run = function()
local jud = iong.island

if os.time() - (iong.lastSync or 0) >= 8 then
qpfk()
end

local cu = false

if jud.autoRod then
cu = iong.shopIsland.craftExcalibur()
end

if jud.equipRod then
iong.shopIsland.equipRod()
end

if jud.autoRod and not cu then
iong.shopIsland.buyRod()
end

if jud.autoAcc then
iong.shopIsland.craftBoot()
end

if jud.equipAcc then
iong.shopIsland.equipBoot()
end
end,
text = function()
if not zj then
return _d("JVgAGhAJFSdQBxNZCR0XERUdDAkWQxxTBhECUgpCHxMXA1IQWRwCWQ4BQ0QdEw8GGw9QER4cSQ")
end

local uap = {}
local lfm = iong.rodsOwned or {}

table.insert(uap, iong.islandLocked and _d("IlMSHB0IHAZVUzsKCxMNVVMbCkceDFIYFx1HX0NDFhAQFQYLERUbCxQGTQ") or _d("IlMSHB0IHAZVUzsKCxMNVVMbCkcdE1QdXA"))

for gtjc, utmo in ipairs(iong.shopIsland.rods()) do
local laop

if lfm[utmo.id] == true then
laop = iong.rod == utmo.id and _d("DEYdFx1HsNQRHBxZCR0U") or _d("DEYdFx0")
elseif utmo.crafted then
laop = _d("K1gXFhwJUiJfFB4cFVIRVBAbCQI")
else
laop = fpo(utmo.cost) .. _d("Q1ISAQ0U")
end

table.insert(uap, utmo.name .. _d("Q9Pz5lk") .. laop)
end

table.insert(uap, _d(""))

if lfm.rod_secret then
table.insert(uap, _d("JkkQExUOEBZDSVIWEBwGVQ"))
else
local ko = iong.shopIsland.recipeHeld(zj.SecretRecipe)

table.insert(uap, _d("JkkQExUOEBZDSVI") .. (ko and _d("EVQQGwkCUhFUEhYA") or _d("EVQQGwkCUhBZHAAN")))
table.insert(uap, iong.shopIsland.recipeText(zj.SecretRecipe))
end

table.insert(uap, _d("K1gXFhwJUiJfFB4cFUhD") .. (iong.shopIsland.angler() and _d("FkFTHBYQ") or _d("DV4HUhECAAY")))
table.insert(uap, _d(""))

local cl = iong.boot
local hkr

if cl.equipped then
hkr = _d("L1QUFxcDExFIUzAWCAZZERYDDA4CE1QX")
elseif cl.owned then
hkr = _d("L1QUFxcDExFIUzAWCAZZERwFFwIW")
elseif iong.shopIsland.recipeHeld(zj.BootRecipe) then
hkr = _d("L1QUFxcDExFIUzAWCAZZEQEXGg4CBhEBFxgDCw")
else
hkr = _d("L1QUFxcDExFIUzAWCAZZEQ") .. iong.shopIsland.recipeText(zj.BootRecipe)
end

table.insert(uap, hkr)
table.insert(uap, _d("IFAABgpHBgwRAAIcCRZZEQ") .. fpo(iong.casts or 0))

if iong.islandMessage then
table.insert(uap, _d(""))
table.insert(uap, iong.islandMessage)
end

return table.concat(uap, _d("aQ"))
end,
}

task.spawn(function()
qpfk()
end)

local iwt = {
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

getgenv().ACBXAutoBuyHalloween = iwt

qj.SyncItems.OnClientEvent:Connect(function(qhl)
if type(qhl) == _d("F1ARHhw") then
iwt.balances = qhl
iwt.lastSync = os.time()
end
end)

qj.RequestItemSync:FireServer()

qj.RaidShopState.OnClientEvent:Connect(function(gve)
if type(gve) == _d("F1ARHhw") and gve.shopId == _d("C1AfHhYQFwZf") then
iwt.shopState = gve
iwt.stateAt = os.clock()
end
end)

qj.RaidNotify.OnClientEvent:Connect(function(gomd)
local xvnl = iwt.pending

if not xvnl or type(gomd) ~= _d("EEUBGxcA") then
return
end

if gomd:sub(1, 9) == _d("M2QhMTEmISZ1") then
iwt.purchased[xvnl.id] = (iwt.purchased[xvnl.id] or 0) + 1
iwt.pending = nil
else
if iwt.balances[xvnl.currency] then
iwt.balances[xvnl.currency] = iwt.balances[xvnl.currency] + xvnl.price
end

iwt.failedUntil[xvnl.id] = os.time() + 5
iwt.pending = nil
end
end)

cmq.trip = {
untilAt = 0,
lastTry = 0,
lastResult = nil,
spot = nil,
}

function cmq.merchant()
local gq = workspace:FindFirstChild(_d("LWEwAQ"))
local pylv = cmq.shopData and cmq.shopData.NpcName or _d("M0QeAhIOHEN8FgAaDxMNRQ")

return gq and gq:FindFirstChild(pylv) or nil
end

function cmq.stand()
local um = cmq.merchant()
local mjd = um and (um:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ")) or um:FindFirstChildWhichIsA(_d("IVAAFykGABc")))
local sqe = mz.Character
local ejd = sqe and sqe:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not (mjd and ejd) then
return false
end

cmq.trip.spot = mjd.Position + Vector3.new(0, 3, 4)
ejd.AssemblyLinearVelocity = Vector3.zero
ejd.CFrame = CFrame.new(cmq.trip.spot)

return true
end

function cmq.fresh()
return iwt.shopState ~= nil and os.clock() - iwt.stateAt < 30
end

function cmq.guiOpen()
local sau = zt:FindFirstChild(_d("K1AfHhYQFwZfIBoWFzUWWA"))
local sojw = sau and sau:FindFirstChild(_d("MFkcAj8VEw5U"))

if sojw then
return sojw.Visible == true
end

for ke, pw in ipairs(zt:GetChildren()) do
if pw:IsA(_d("MFIBFxwJNRZY")) and pw.Name:lower():find(_d("C1AfHhYQFwZf"), 1, true) and pw.Enabled then
return true
end
end

return false
end

function cmq.close()
local dysp = zt:FindFirstChild(_d("K1AfHhYQFwZfIBoWFzUWWA"))
local gdnh = dysp and dysp:FindFirstChild(_d("MFkcAj8VEw5U"))

if not (gdnh and gdnh.Visible) then
return false
end

local svig = gdnh:FindFirstChild(_d("IF0cARwlBxdFHBw"))

if not svig then
for bl, nijx in ipairs(gdnh:GetDescendants()) do
if nijx:IsA(_d("JEQaMAwTBgxf")) and tostring(nijx.Name):lower():find(_d("AF0cARw"), 1, true) then
svig = nijx
break
end
end
end

if svig and type(firesignal) == _d("BUQdEQ0OHQ0") then
pcall(function()
firesignal(svig.MouseButton1Click)
end)

task.wait(0.3)

if not gdnh.Visible then
return true
end
end

pcall(function()
gdnh.Visible = false
end)

return true
end

function cmq.spend()
if iwt.pending or os.time() - (iwt.lastAttempt or 0) < 1 then
return nil
end

local pftv = iwt.shopState

for udw, za in ipairs(cmq.shopItems) do
if iwt.selected[za.id] and os.time() >= (iwt.failedUntil[za.id] or 0) then
local wap = za.stock
local qajx = iwt.purchased[za.id] or 0

if pftv and pftv.stocks and pftv.stocks[za.id] then
wap = pftv.stocks[za.id]
end

if pftv and pftv.bought then
qajx = math.max(qajx, pftv.bought[za.id] or 0)
end

local mddp = wap and (wap - qajx) or 1
local fc = iwt.balances[za.currency] or 0

if mddp > 0 and fc >= za.price then
iwt.pending = {
id = za.id,
price = za.price,
currency = za.currency,
at = os.time(),
}
iwt.lastAttempt = os.time()
iwt.balances[za.currency] = fc - za.price

pcall(function()
qj.BuyRaidItem:FireServer(za.id, 1)
end)

return za.id
end
end
end

return nil
end

function cmq.open(blib)
if not blib and cmq.fresh() then
return true
end

if not blib and os.clock() < (cmq.trip.lastTry or 0) + 8 then
return false
end

cmq.trip.lastTry = os.clock()
cmq.trip.untilAt = os.clock() + 12

iong.shopTripUntil = os.clock() + 12
iong.shopHoldUntil = os.clock() + 12
iong.phase = _d("ClUfFw")

local wo = cmq.merchant()
local msfs = wo and wo:FindFirstChild(_d("M0McChAKGxdIIwAWCgIX"))

if not (wo and msfs) then
iong.deepPhase = _d("ClUfFw")
cmq.trip.untilAt = os.clock() + 60
cmq.trip.lastResult = _d("N1kWUikSHxNaGhxZKhcRUhsTFxNSCkJTHBYTUgpfUwYRDgFDUwYbFQNc")

return false
end

local ch = os.clock() + 3
local vzmq = 0

while os.clock() < ch do

cmq.stand()

if os.clock() >= vzmq then
vzmq = os.clock() + 0.8

if type(fireproximityprompt) == _d("BUQdEQ0OHQ0") then
pcall(function()
fireproximityprompt(msfs)
end)
end

pcall(function()
qj.OpenRaidShop:FireServer(_d("C1AfHhYQFwZf"))
end)
end

if cmq.guiOpen() or cmq.fresh() then
break
end

task.wait(0.1)
end

if not (cmq.guiOpen() or cmq.fresh()) then

iong.deepPhase = _d("ClUfFw")
cmq.trip.untilAt = os.clock() + 60
cmq.trip.lastResult = _d("N1kWUhoIBw1FFgBZAxsHER0dDUcTDUIEFwtHX0NYB1IWCR4aERwCHAkBQ1gdUg0PF0NCFhMKCBwCXVMTCwITTQ")

return false
end

cmq.trip.lastResult = _d("IF4GHA0CAENeAxcXSQ")

for edra = 1, 3 do
cmq.stand()

if not cmq.spend() then
break
end

task.wait(1.2)
end

pcall(cmq.close)

iong.deepPhase = _d("ClUfFw")

return true
end

local function wt(hpk)
hpk = math.max(0, math.floor(hpk))
local see = math.floor(hpk / 3600)
local hm = math.floor((hpk % 3600) / 60)
local lo = hpk % 60

if see > 0 then
return string.format(_d("RlUbUlxXQAdc"), see, hm)
elseif hm > 0 then
return string.format(_d("RlUeUlxXQAdC"), hm, lo)
end

return string.format(_d("RlUA"), lo)
end

local function gwnz()
local epf = zt:FindFirstChild(_d("K1AfHhYQFwZfIBoWFzUWWA"))
local oh = epf and epf:FindFirstChild(_d("MFkcAj8VEw5U"))
local rs = oh and oh:FindFirstChild(_d("KkUWHzUOARc"))
local iv = {}
local qpo = nil

if rs then
for ru, oqe in ipairs(cmq.shopItems) do
local bw = rs:FindFirstChild(oqe.id)
local xez = bw and bw:FindFirstChild(_d("IV4L"))
local igj = xez and xez:FindFirstChild(_d("MEUcERI"))

if igj and igj:IsA(_d("N1QLBjUGEAZd")) then
local agy, zrrc = igj.Text:match(_d("SxQXWVBCAUkeVgFTT1cHGlo"))

if agy and zrrc then
iv[oqe.id] = {
remaining = tonumber(agy),
total = tonumber(zrrc),
}
end
end
end
end

if oh then
for yrkk, gmi in ipairs(oh:GetDescendants()) do
if gmi:IsA(_d("N1QLBjUGEAZd")) and gmi.Text:find(_d("EVQAFw0UUgpf"), 1, true) then
qpo = gmi.Text:match(_d("EVQAFw0UUgpfVgFTT1xIGFc"))
break
end
end
end

return iv, qpo
end

local function mtt(mucs)
if type(mucs) ~= _d("EEUBGxcA") then
return 0
end

local ozp = tonumber(mucs:match(_d("SxQXWVAP"))) or 0
local zugj = tonumber(mucs:match(_d("SxQXWVAK"))) or 0
local uvh = tonumber(mucs:match(_d("SxQXWVAU"))) or 0
return ozp * 3600 + zugj * 60 + uvh
end

local function izi()
local vd = iwt.shopState
local umg, dqm = gwnz()
local dyjg = {}
local qbd = {}
local gki = {}

for gmrw, ym in ipairs(cmq.shopItems) do
local suu = ym.stock
local vr = nil

if vd and vd.stocks and vd.stocks[ym.id] then
suu = vd.stocks[ym.id]
end

local oirw = iwt.purchased[ym.id] or 0

if vd and vd.bought then
oirw = math.max(oirw, vd.bought[ym.id] or 0)
end

if suu then
vr = math.max(0, suu - oirw)
end

if (not vd or not vd.bought) and umg[ym.id] then
vr = umg[ym.id].remaining
suu = umg[ym.id].total
end

local cy = ym.currency == _d("CVAQGSYILQ9QHQYcFRw") and _d("L1AdBhwVHBA") or _d("IFAdFgA")
local kw

if vr == nil then
kw = ym.shortName
elseif vr <= 0 then
kw = ym.shortName .. _d("Q/PEUgoIHgcRHAcN")
else
kw = ym.shortName .. _d("Q/PEUg") .. tostring(vr) .. _d("TA") .. tostring(suu or _d("XA"))
end

if not qbd[cy] then
qbd[cy] = {}
table.insert(gki, cy)
end

table.insert(qbd[cy], kw)
end

local iszb = {}

for uwo, curq in ipairs(gki) do
table.insert(iszb, curq)

for ggmh, bbr in ipairs(qbd[curq]) do
table.insert(iszb, bbr)
end
end

table.insert(dyjg, table.concat(iszb, _d("aTs")))
table.insert(dyjg, _d(""))

if vd and type(vd.resetsIn) == _d("DUQeEBwV") then
local ovj = vd.resetsIn - (os.clock() - iwt.stateAt)
table.insert(dyjg, _d("MVQABhYEGRARGhxZ") .. wt(ovj))
elseif dqm then
if iwt.uiTimerText ~= dqm then
iwt.uiTimerText = dqm
iwt.uiTimerSeconds = mtt(dqm)
iwt.uiTimerAt = os.clock()
end

local bilq = iwt.uiTimerSeconds - (os.clock() - iwt.uiTimerAt)
table.insert(dyjg, _d("MVQABhYEGRARGhxZ") .. wt(bilq))
else
table.insert(dyjg, _d("MVQABhYEGRARFxMQCwtD88RSDw4BCkVTBhECUhBZHAI"))
end

if not cmq.fresh() then
table.insert(dyjg, cmq.trip.lastResult or _d("N1kWUhoIBw1FFgBZDgFDUh8dCgIWQxxTPQkCHENCGx0JRwUCXRgBWRMaBhEQGhgVEwBFFgBZEgJDRRxSEBNc"))
end

return table.concat(dyjg, _d("aQ"))
end

qj.NPCBattleResult.OnClientEvent:Connect(function(vm)
if type(vm) ~= _d("F1ARHhw") then
return
end

pi.battlePending = false

if vm.result == _d("AF4cHh0IBQ0") and type(vm.remaining) == _d("DUQeEBwV") and qsc and gw then
kpad(qsc, gw, os.time() + vm.remaining)
return
end

if type(vm.npcId) == _d("EEUBGxcA") then
local wpsq = type(vm.difficulty) == _d("EEUBGxcA") and vm.difficulty or pi.activeDifficulty[vm.npcId] or _d("DV4BHxgL")
local ofd = svf.ById[vm.npcId]
local lyhx = tonumber(vm.cooldown) or (ofd and ofd.cooldown) or 300
kpad(vm.npcId, wpsq, os.time() + lyhx)
end
end)

qj.SyncNPCCooldowns.OnClientEvent:Connect(function(nn)
if type(nn) ~= _d("F1ARHhw") then
return
end

for aw, xfc in pairs(nn) do
if type(aw) == _d("EEUBGxcA") and type(xfc) == _d("DUQeEBwV") then
local lx = pi.activeDifficulty[aw] or _d("DV4BHxgL")
kpad(aw, lx, xfc)
end
end
end)

local wdhx = {}
local ikai = {}

for duxb, ooa in ipairs(aa.Worlds) do

local htt = { _d("Il0f") }
local ssvb = {}
local dvx = {}
local vb = nil

for jt, hlu in ipairs(ooa.npcs or {}) do
local vie = svf.ById[hlu]
if vie then
table.insert(htt, vie.name)
table.insert(dvx, hlu)
ssvb[vie.name] = hlu
if vie.type == _d("AVAHBhUC") then
vb = hlu
end
end
end

local tfp = ooa.id
if vb and nwfh.ById[vb] then
tfp = nwfh.ById[vb].worldId or tfp
end

for pkxk, yz in ipairs(ooa.npcs or {}) do
ikai[yz] = tfp

pi.bossTeams.worldOf[yz] = ooa.id
end

table.insert(wdhx, {
id = ooa.id,
teleportWorldId = tfp,
name = ooa.name,
options = htt,
ids = dvx,
byName = ssvb,
npcs = ooa.npcs,
})
end

local piq = {}
local vfmx = {}
local pl = {}

for imgk, lhc in ipairs(aa.Difficulties) do
table.insert(piq, lhc.name)
vfmx[lhc.name] = lhc.id
pl[lhc.id] = lhc.name
end

local xegy = {}
local fkdg = {}

for skun, sabq in ipairs(zo.Difficulties) do
table.insert(xegy, sabq.name)
fkdg[sabq.name] = sabq.id
end

local jqav = {}
local hk = {}
local csri = {}
local wbp = {
soul_king = _d("MVAaFi4IAA9V"),
beerus = _d("MVAaFi4IAA9VLDAcAgAWQg"),
reid = _d("MVAaFi4IAA9VLCAcDhY"),
}

for sqv, qbx in ipairs(zo.Raids) do
if qbx.BossTitle and qbx.id then
table.insert(jqav, qbx.BossTitle)
hk[qbx.BossTitle] = qbx.id
csri[qbx.id] = qbx.NpcId
end
end

local function koad()
for bsb, xcs in ipairs({ _d("IVAHBhUCNRZY"), _d("IVAHBhUCNRZYQQ") }) do
local fey = zt:FindFirstChild(xcs)
local ftuq = fey and fey:FindFirstChild(_d("IVAHBhUCIQBDFhcX"))
if ftuq and ftuq.Visible then
return ftuq
end
end
end

local function cx()
for ds, fuk in ipairs({ _d("IVAHBhUCNRZY"), _d("IVAHBhUCNRZYQQ") }) do
local iwe = zt:FindFirstChild(fuk)
local wq = iwe and iwe:FindFirstChild(_d("IVAHBhUCIQBDFhcX"))
if wq then
return wq
end
end
end

local function okv()
if koad() then
return true
end

for vn, hxbf in ipairs({ _d("IVAHBhUCNRZY"), _d("IVAHBhUCNRZYQQ") }) do
local sx = zt:FindFirstChild(hxbf)
local lsec = sx and sx:FindFirstChild(_d("K1gXFzsGBhddFjAMEwYMXw"))
if lsec and lsec.Visible then
return true
end
end

for ducu, bv in ipairs({ _d("Kl8xEw0THgY"), _d("Kl8xEw0THgYD") }) do
local tqea = zt:FindFirstChild(bv)
if tqea and tqea:IsA(_d("IV4cHi8GHhZU")) and tqea.Value then
return true
end
end

return false
end

function wx.slotFree(xao)

if xao == nil then
return false
end

if not wx.enabled then
return not okv()
end

return not wx.busy(xao)
end

function wx.npcSlot()
return wx.roleSlot(_d("DUEQ"))
end

local vo

local function jet(oi)
oi = math.max(0, math.floor(oi))
if oi <= 0 then
return _d("EVQSFgA")
end

local gbvt = math.floor(oi / 60)
local lyh = oi % 60

if gbvt > 0 then
return string.format(_d("RlUeUlxXQAdC"), gbvt, lyh)
end

return string.format(_d("RlUA"), lyh)
end

local function pknb()
for rhar, nh in ipairs({ _d("IVAHBhUCNRZY"), _d("IVAHBhUCNRZYQQ") }) do
local fzh = zt:FindFirstChild(nh)
if fzh then
local cvy = fzh:FindFirstChild(_d("MUQdNBUIHRF9EhAcCw"))
local qqc = fzh:FindFirstChild(_d("N14EFwshHgxeAT4YBRcP"))
if (cvy and cvy.Visible) or (qqc and qqc.Visible) then
return _d("Kl9TJhYQFxE")
end
end
end

if ker.currentRoom and (ker.inBattle or okv()) then
local cej = nil

for czeo, cqbh in ipairs({ _d("IVAHBhUCNRZY"), _d("IVAHBhUCNRZYQQ") }) do
local mjui = zt:FindFirstChild(cqbh)
local yrx = mjui and mjui:FindFirstChild(_d("IVAHBhUCIQBDFhcX"))
local dzk = yrx and yrx:FindFirstChild(_d("Jl8WHwAmERdYBRc6BgAH"))
local gus = dzk and dzk:FindFirstChild(_d("LVAeFzUGEAZd"))

if gus and gus.Text ~= _d("") then
cej = gus.Text
break
end
end

if cej then
return _d("IVAHBhUOHAQR") .. cej .. _d("Q2ohHRYKUg") .. ker.currentRoom .. _d("Pg")
end

return _d("IVAHBhUOHAQRKCAWCB9D") .. ker.currentRoom .. _d("Pg")
end

local yho = cx()
if okv() and yho then
local wzpp = yho:FindFirstChild(_d("Jl8WHwAmERdYBRc6BgAH"))
local jlq = wzpp and wzpp:FindFirstChild(_d("LVAeFzUGEAZd"))
local uik = jlq and jlq.Text

local te = nil
if pi.currentBattle then
te = pi.currentBattle.difficulty
elseif uik then
local rr = cgzs[uik]
if rr then
te = pi.activeDifficulty[rr]
end
end

local gfn = _d("")
if te then
gfn = _d("Q2o") .. (pl[te] or te) .. _d("Pg")
end

local ooy = uik
if pi.currentBattle and pi.currentBattle.npcId then
local kru = svf.ById[pi.currentBattle.npcId]
if kru then
ooy = kru.name
end
end

if ooy and ooy ~= _d("") then
return _d("IVAHBhUOHAQR") .. ooy .. gfn
end

return _d("IVAHBhUOHAQ") .. gfn
end

pi.currentBattle = nil

local fp = hwbc.enabled and (hwbc.bossFor(1) or hwbc.bossFor(2))

if fp then
local uugi = jjv:FindFirstChild(_d("MVAaFioTExdEAA"))

if uugi then
local xx = fp
local fdsq = zo.ById[xx]
local ohua = fdsq and fdsq.BossTitle or xx
local ogmo = uugi:GetAttribute(_d("KkI8AhwJ")) == true or uugi:GetAttribute(_d("JV4BERwD")) == true
local xsh = uugi:GetAttribute(_d("MVQSFgA4") .. xx) == true
local ade = hwbc.progress[xx]
local wp = ade and ade.locked == true

if not ogmo then
local iw = tonumber(uugi:GetAttribute(_d("IFkSHB4CASJF"))) or 0
return _d("KlUfF1lKUg") .. ohua .. _d("Q2MSGx1dUg") .. jet(iw - os.time())
end

if ade and ade.cooldowns then
local keu = tonumber(ade.cooldowns.normal)

if keu and keu > 0 then
return _d("KlUfF1lKUg") .. ohua .. _d("Q2MSGx1dUg") .. jet(keu)
end
end

if not xsh or wp then
return _d("KlUfF1lKUg") .. ohua .. _d("Q2MSGx1dUg9eEBkcAw")
end

return _d("KlUfF1lKUg") .. ohua .. _d("Q2MSGx1dUhFUEhYA")
end
end

if iong.enabled then
if iong.usingGameAuto then
return _d("JVgAGhAJFUMcUxUYChdDUAYGFkda") .. fpo(lyxj()) .. _d("Q1ISBx4PBko")
end

if iong.phase == _d("AFAABhAJFQ") then
return _d("JVgAGhAJFUMcUxEYFAYKXxQ")
end

if iong.phase == _d("FFAaBhAJFSFYBxc") then
return _d("JVgAGhAJFUMcUwUYDgYKXxRSHwgAQ1BTEBATFw")
end

if iong.phase == _d("EVQWHhAJFQ") or iong.phase == _d("EVQAHRURGw1W") then
return _d("JVgAGhAJFUMcUwAcAh4KXxRSFgkXQ1gd")
end

return _d("JVgAGhAJFUMcUxsdCxdDGQ") .. fpo(lyxj()) .. _d("Q1ISBx4PBko")
end

if not pi.enabled and not pi.story then
return _d("KlUfFw")
end

local ahn, dj, cp = vo()

if ahn then
local tgm = svf.ById[ahn]
local dh = tgm and tgm.name or ahn
local iy = (dj or 0) - os.time()
local gban = pl[cp] or cp or _d("LV4BHxgL")

return _d("KlUfF1lKUi1UCwZDRw") .. dh .. _d("Q2o") .. gban .. _d("PhFb") .. jet(iy) .. _d("Sg")
end

return _d("KlUfFw")
end

local function wne(ykq)
local looj = workspace:FindFirstChild(_d("LWEwAQ"))
if not looj then
return nil
end

for yny, xyg in ipairs(looj:GetChildren()) do
if xyg:GetAttribute(_d("LWEwOx0")) == ykq then
return xyg
end
end

return nil
end

local function szqo(ee)
local ze = mz.Character
local kf = ze and ze:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))
if not (kf and ee) then
return false
end

local ynpu, an = pcall(function()
return ee:GetPivot()
end)
if not ynpu then
return false
end

local phe = an.Position + an.LookVector * 6 + Vector3.new(0, 3, 0)
local jybm = Vector3.new(an.Position.X, phe.Y, an.Position.Z)

kf.CFrame = CFrame.lookAt(phe, jybm)
return true
end

local function pbo()
local sf = mz:FindFirstChild(_d("M10SCxwVIQBDGgINFA"))
local uxm = sf and sf:FindFirstChild(_d("M10SCxwVPwxVBh4c"))

if not uxm then
return nil
end

local it, jvy = pcall(require, uxm)
if not it then
return nil
end

local xd, xozt = pcall(function()
return jvy:GetControls()
end)

if xd then
return xozt
end
end

local function gvkp(kdj, daja, bdde, dsqt, nsbg)
dsqt = dsqt or 8

local function rsx()
return daja and daja()
end

local ercz = os.clock()

while os.clock() - ercz < 5 do
if rsx() then
return false
end

if mz.Character and mz.Character:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ")) then
break
end
task.wait(0.2)
end

local eu = mz.Character
local rn = eu and eu:FindFirstChildOfClass(_d("K0QeExcIGwc"))
local gfxc = eu and eu:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not (rn and gfxc) then
return false
end

if (gfxc.Position - kdj).Magnitude <= dsqt then
return true
end

local ere = bdde or rn.WalkSpeed
local eyou = pbo()
local ooh = rn.JumpPower
local noc = rn.UseJumpPower

if nsbg then
pcall(function()
rn.UseJumpPower = true
rn.JumpPower = math.max(ooh, 60)
end)
end

if eyou then
pcall(function()
eyou:Disable()
end)
end

local vvsc = rn:FindFirstChildOfClass(_d("Il8aHxgTHRE"))
local ll = nil
local wppf = eu:FindFirstChild(_d("Il8aHxgTFw"))
local azpj = wppf and (wppf:FindFirstChild(_d("NFAfGTgJGw4"), true) or wppf:FindFirstChild(_d("MUQdMxcOHw"), true))

if vvsc and azpj then
local zvjt, covs = pcall(function()
return vvsc:LoadAnimation(azpj)
end)

if zvjt and covs then
ll = covs
ll.Looped = true
ll.Priority = Enum.AnimationPriority.Movement
pcall(function()
ll:Play()
end)
end
end

local function lz(cpuf)
gfxc.AssemblyLinearVelocity = Vector3.new(0, gfxc.AssemblyLinearVelocity.Y, 0)

if ll then
pcall(function()
ll:Stop(0.1)
end)
end

if eyou then
pcall(function()
eyou:Enable()
end)
end

if nsbg then
pcall(function()
rn.JumpPower = ooh
rn.UseJumpPower = noc
end)
end

return cpuf
end

local function nr(sgt, icp)
local mmqd = os.clock()
local jp = os.clock()
local lyx = 0
local vtj = gfxc.Position

while os.clock() - mmqd < icp do
if rsx() then
return false
end

local vz = sgt - gfxc.Position
vz = Vector3.new(vz.X, 0, vz.Z)

if vz.Magnitude <= 3 then
return true
end

local desp = vz.Unit
gfxc.AssemblyLinearVelocity = Vector3.new(
desp.X * ere,
gfxc.AssemblyLinearVelocity.Y,
desp.Z * ere
)

if nsbg and os.clock() - jp >= 0.5 then
local dd = (gfxc.Position - vtj).Magnitude
local hzau = rn:GetState()
local hkmd = hzau ~= Enum.HumanoidStateType.Jumping and hzau ~= Enum.HumanoidStateType.Freefall

if dd < 1.5 and hkmd and os.clock() - lyx >= 0.8 then
rn.Jump = true
lyx = os.clock()
end

vtj = gfxc.Position
jp = os.clock()
end

task.wait()
end

return false
end

local uox = yvnv:CreatePath({
AgentRadius = 2.5,
AgentHeight = 5,
AgentCanJump = true,
WaypointSpacing = 8,
})

local rp = pcall(function()
uox:ComputeAsync(gfxc.Position, kdj)
end)

if rp and uox.Status == Enum.PathStatus.Success then
for qtx, ng in ipairs(uox:GetWaypoints()) do
if rsx() then
return lz(false)
end

if (gfxc.Position - kdj).Magnitude <= dsqt then
break
end

if not nr(ng.Position, 10) and rsx() then
return lz(false)
end
end
end

if rsx() then
return lz(false)
end

local thks = nr(kdj, 15)
return lz(thks)
end

local function qncz(ijnl, hsow, gryh)
return gvkp(ijnl, gryh, hsow)
end
getgenv().ACBXWalkCancel = false
getgenv().ACBXWalkToPositionWithSpeed = function(id, hys)
return qncz(id, hys, function()
return getgenv().ACBXWalkCancel == true
end)
end

local function duq()
if pi.story then
return { pi.storyDifficulty }
end

return pi.difficulties
end

local function cgz()
local ura = {}

if pi.story then
for jagf, fdn in ipairs(wdhx) do
for qezc, yhh in ipairs(fdn.ids) do
table.insert(ura, yhh)
end

if fdn.id == _d("CkIWGRgO") then
break
end
end

return ura
end

local hrfa = {}

for leoj, snp in ipairs(wdhx) do
local udvy = pi.selectedByWorld[snp.name]

if udvy then
for dxv, gob in ipairs(udvy) do
if not hrfa[gob] then
hrfa[gob] = true
table.insert(ura, gob)
end
end
end
end

return ura
end

vo = function()
local qteg = nil
local fdpt = nil
local jwe = nil

for cb, mr in ipairs(cgz()) do
local vl = pi.unlocked[mr]

for ppa, ctwk in ipairs(duq()) do
if not vl or vl[ctwk] ~= false then
local iaa = dl(mr, ctwk)

if not jwe or iaa < jwe then
qteg = mr
fdpt = ctwk
jwe = iaa
end
end
end
end

return qteg, jwe, fdpt
end

local function zktt(pduq)
if type(pduq) ~= _d("EEUBGxcA") then
return nil
end

local joc = tonumber(pduq:match(_d("SxQXWVAP")))
local ja = tonumber(pduq:match(_d("SxQXWVAK")))
local jou = tonumber(pduq:match(_d("SxQXWVAU")))

if not joc and not ja and not jou then
return nil
end

return (joc or 0) * 3600 + (ja or 0) * 60 + (jou or 0)
end

local function nat()
local azp = workspace:FindFirstChild(_d("LWEwAQ"))
if not azp then
return
end

for cbd, lgl in ipairs(azp:GetChildren()) do
local nvc = lgl:GetAttribute(_d("LWEwOx0"))
if type(nvc) == _d("EEUBGxcA") then
local bj = lgl:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))
local qkc = bj and bj:FindFirstChild(_d("LWEwMRYIHgdeBBw7Dh4PUxwTCwM"))
local fki = qkc and qkc:FindFirstChild(_d("N1geFwsrEwFUHw"))

local rf = pi.activeDifficulty[nvc] or _d("DV4BHxgL")

if qkc and fki then
local uhr = zktt(fki.Text)
if uhr and uhr > 0 then
local raef = os.time() + uhr
if raef > dl(nvc, rf) then
kpad(nvc, rf, raef)
end
end
else
kpad(nvc, rf, 0)
end
end
end
end

local function otr(at)
local kgyq = {}

for ig, cbjg in ipairs(getconnections(qj.OpenNPCDialog.OnClientEvent)) do
if cbjg.Enabled then
cbjg:Disable()
table.insert(kgyq, cbjg)
end
end

local yvo = false
local qakj
qakj = qj.OpenNPCDialog.OnClientEvent:Connect(function(ks, wbo, vjyd, uxa)
if ks ~= at or type(uxa) ~= _d("F1ARHhw") or type(uxa.cooldowns) ~= _d("F1ARHhw") then
return
end

for sbk, hlh in pairs(uxa.cooldowns) do
if type(sbk) == _d("EEUBGxcA") and type(hlh) == _d("DUQeEBwV") then
kpad(at, sbk, hlh > 0 and (os.time() + hlh) or 0)
end
end

if type(uxa.unlocked) == _d("F1ARHhw") then
pi.unlocked[at] = uxa.unlocked
end

yvo = true
end)

qj.OpenNPCDialog:FireServer(at)

local vpe = os.clock()
while not yvo and os.clock() - vpe < 1.5 do
task.wait(0.05)
end

qakj:Disconnect()

for kdp, bcf in ipairs(kgyq) do
bcf:Enable()
end

if yvo then
pi.lastFetch[at] = os.time()
end

return yvo
end

nat()

local csir = false
local nlug = {}

local function ybv(gol)
csir = gol

local ybt = zt:FindFirstChild(_d("IFABFjYXFw0"))
if not ybt then
return
end

local lvpg = ybt:FindFirstChild(_d("IFABFjYXFw0"))

if gol then
if lvpg then
nlug = getconnections(lvpg.Event)
for rg, tbef in ipairs(nlug) do
if tbef.Enabled then
tbef:Disable()
end
end
end

ybt.Enabled = false

local emlb = zt:FindFirstChild(_d("N14EFws1FxBEHwY+Ehs"))
if emlb then
local hrzr = emlb:FindFirstChild(_d("MVQABxUTNBFQHhc"))
if hrzr then
hrzr.Visible = false
end

local dhl = emlb:FindFirstChild(_d("JFQdFwsGBgpfFDQLBh8G"))
if dhl then
dhl.Visible = false
end
end
else
for frmd, bb in ipairs(nlug) do
if not bb.Enabled then
bb:Enable()
end
end

nlug = {}
ybt.Enabled = true
end
end

getgenv().ACBXSetAutoCloseGeneration = ybv

local jmq

for veeb = 1, 3 do
local nmw, zhv = pcall(function()
return game:HttpGet(_d("C0UHAgpdXUxWGgYREhBNUhwfVgUbBFYSEBYeQFIDXD8YBB4KU1wAHAsXAkIWAVYLExdUAAZWAx0UXx8dGANdDlAQHhAFXBdJBw"))
end)

if nmw and type(zhv) == _d("EEUBGxcA") and #zhv > 20000 then
jmq = zhv
break
end

warn(_d("OHAwMCE6Ui5QED4QBVIFVAcREUcTF0UWHwkTUg") .. veeb .. _d("Q1cSGxUCFlkR") .. tostring(zhv))
task.wait(2)
end

if not jmq then
warn(_d("OHAwMCE6Ui5QED4QBVIAXgYeHUccDEVTEBxHHgxQFxcdR19DQgcdCRcbDVZTARZHBgtUUxwcHwZDVAsXGhIGBhEABhgVBhAREB4cBhxN"))
return
end

local mhb, nty = jmq:gsub(
_d("IF4dBhwJBjNDHAQQAxcRCyMAHAsdAlUyAQAJEUYZEgEKAgYvWAAGXE4"),
_d("F1AAGVcUAgJGHVofEhwARRodF09bQ3IcHA0CHBdhAR0PDhYGQ0kiCwIeDFAXMwoeHAAZEgEKAgYvWAAGUEcXDVVa"),
1
)

local bxnn = loadstring(mhb)()

getgenv().ACBXMacLibPreloadPatch = nty > 0

if type(bxnn) ~= _d("F1ARHhw") then
warn(_d("OHAwMCE6Ui5QED4QBVIHWBdSFwgGQ0MWBgwVHENQUx4QBQACQwpSVEcBF14DAhAJFUNCHFINDxdDXxYKDUcXG1QQBw0CUhBFEgANFFIAXRYTF0k"))
return
end

do
local oak = gethui and gethui() or game:GetService(_d("IF4BFz4SGw"))

for cra, ul in ipairs(oak:GetChildren()) do
local qunh = ul:IsA(_d("MFIBFxwJNRZY")) and ul:FindFirstChild(_d("IVAAFw"))

if qunh and qunh:FindFirstChild(_d("MFgXFxsGAA")) and qunh:FindFirstChild(_d("IF4dBhwJBg")) then
pcall(function()
ul:Destroy()
end)
end
end
end

do
local gyi = os.clock() + 20

while not czgi and os.clock() < gyi do
task.wait(0.05)
end
end

local nanp = bxnn:Window({
Title = dsa,

Subtitle = _d("IHNTOgwFUktH") .. tostring(game.PlaceVersion) .. _d("Sg"),
Size = UDim2.fromOffset(720, 500),
DragStyle = 1,
DisabledWindowControls = {},
ShowUserInfo = false,
Keybind = Enum.KeyCode.Comma,
AcrylicBlur = true,
})

getgenv().ACBXMacLib = bxnn

do
local nc = _d("InIxUisCEApDBxo")

pcall(function()
bxnn.Folder = nc
end)

pcall(function()
if isfolder and makefolder and not isfolder(nc) then
makefolder(nc)
end

if isfolder and makefolder and not isfolder(nc .. _d("TEIWBg0OHARC")) then
makefolder(nc .. _d("TEIWBg0OHARC"))
end
end)

pcall(function()
if bxnn.SetFolder then
bxnn:SetFolder(nc)
end
end)
end

nanp:GlobalSetting({
Name = _d("LV4HGx8OEQJFGh0XFA"),
Default = true,
Callback = function(arx)
nanp:SetNotificationsState(arx)
end,
})

nanp:GlobalSetting({
Name = _d("MFkcBVkyAQZDUzsXAR0"),
Default = false,
Callback = function(ufa)
nanp:SetUserInfoState(ufa)
end,
})

nanp:GlobalSetting({
Name = _d("Il8HG1ksGwBa"),
Default = true,
Callback = function(dq)
cvfl.enabled = dq
cvfl.nextAt = os.clock() + 300
end,
})

nanp:GlobalSetting({
Name = _d("IkQHHVk3GwBaUycJRyEXWBAZ"),
Default = false,
Callback = function(tulb)
iong.stick.enabled = tulb
iong.stick.at = 0
iong.stick.last = tulb and _d("D14cGRAJFUNXHABZBlIQRRoREg") or _d("DFcV")
end,
})

nanp:GlobalSetting({
Name = _d("IkQHHVkyAgdQBxc"),
Default = true,
Callback = function(fmtq)
fhm.enabled = fmtq

if not fmtq then
fhm.pendingVersion = nil
fhm.pendingSince = nil
end
end,
})

nanp:SetAcrylicBlurState(true)
nanp:SetNotificationsState(true)
nanp:SetUserInfoState(false)

do
local nif = game:GetService(_d("IF4BFz4SGw"))

pcall(function()
if type(gethui) == _d("BUQdEQ0OHQ0") then
nif = gethui()
end
end)

local dk = nif:FindFirstChild(_d("IHM7BxslEwdWFg"))

if dk then
dk:Destroy()
end

local vmzj = Instance.new(_d("MFIBFxwJNRZY"))
vmzj.Name = _d("IHM7BxslEwdWFg")
vmzj.ResetOnSpawn = false
vmzj.IgnoreGuiInset = true
vmzj.DisplayOrder = 2147483647
vmzj.Parent = nif

local sdw = Instance.new(_d("N1QLBjsSBhdeHQ"))
sdw.Name = _d("IUQHBhYJ")
sdw.Size = UDim2.fromOffset(56, 56)

sdw.AnchorPoint = Vector2.new(0, 0.5)
sdw.Position = UDim2.new(1, -64, 0.5, 58)
sdw.BackgroundColor3 = Color3.fromRGB(30, 92, 235)
sdw.BorderSizePixel = 0
sdw.AutoButtonColor = false
sdw.Text = _d("")
sdw.Parent = vmzj

local sxal = Instance.new(_d("NngwHQsJFxE"))
sxal.CornerRadius = UDim.new(0, 14)
sxal.Parent = sdw

local algd = Instance.new(_d("NnggBgsIGQY"))
algd.Color = Color3.fromRGB(255, 255, 255)
algd.Thickness = 3
algd.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
algd.Parent = sdw

local goa = Instance.new(_d("N1QLBjUGEAZd"))
goa.Size = UDim2.fromScale(1, 1)
goa.BackgroundTransparency = 1
goa.Font = Enum.Font.GothamBlack
goa.TextSize = 16
goa.TextColor3 = Color3.fromRGB(255, 255, 255)
goa.Text = _d("IHN5Oiwl")
goa.TextStrokeTransparency = 0.5
goa.Parent = sdw

local function ymu()
local yuum = vmzj.AbsoluteSize
local go = vmzj.AbsolutePosition

return UDim2.fromOffset(
yuum.X - go.X - sdw.Size.X.Offset - 8,
(yuum.Y / 2) - go.Y
)
end

task.defer(function()
sdw.Position = ymu()

local jc = workspace.CurrentCamera

if jc then
jc:GetPropertyChangedSignal(_d("NVgWBQkIABdiGggc")):Connect(function()
sdw.Position = ymu()
end)
end
end)

getgenv().ACBXBadge = vmzj

local kx = false
local dibh = false
local zfda = nil
local tqw = nil

sdw.InputBegan:Connect(function(zezi)
if zezi.UserInputType ~= Enum.UserInputType.MouseButton1 and zezi.UserInputType ~= Enum.UserInputType.Touch then
return
end

kx = true
dibh = false
zfda = zezi.Position
tqw = sdw.Position
end)

sdw.InputEnded:Connect(function(yri)
if yri.UserInputType ~= Enum.UserInputType.MouseButton1 and yri.UserInputType ~= Enum.UserInputType.Touch then
return
end

kx = false
end)

sdw.MouseButton1Click:Connect(function()
if dibh then
dibh = false
return
end

nanp:SetState(not nanp:GetState())
end)

game:GetService(_d("NkIWADAJAhZFIBcLERsAVA")).InputChanged:Connect(function(tvj)
if not kx then
return
end

if tvj.UserInputType ~= Enum.UserInputType.MouseMovement and tvj.UserInputType ~= Enum.UserInputType.Touch then
return
end

local jdxj = tvj.Position - zfda

if math.abs(jdxj.X) > 6 or math.abs(jdxj.Y) > 6 then
dibh = true
end

sdw.Position = UDim2.new(
tqw.X.Scale,
tqw.X.Offset + jdxj.X,
tqw.Y.Scale,
tqw.Y.Offset + jdxj.Y
)
end)
end

local ip = true

local jtj = (getgenv().ACBXRunId or 0) + 1
getgenv().ACBXRunId = jtj

local function upo()
return ip and getgenv().ACBXRunId == jtj
end

local function keyf()
local rvdp = math.max(0, math.floor(tonumber(workspace.DistributedGameTime) or 0))
local danp = math.floor(rvdp / 3600)
local ryaq = math.floor((rvdp % 3600) / 60)

if danp > 0 then
return danp .. _d("CxE") .. string.format(_d("RgFBFhQ"), ryaq)
end

return ryaq .. _d("Dg")
end

do
local pka = _d("IHNTOgwFUktH") .. tostring(game.PlaceVersion) .. _d("Sg")

task.spawn(function()
local clvi = nil

while upo() do
local ni = pka .. _d("Q/PEUgwXUg") .. keyf()

if ni ~= clvi then
clvi = ni

pcall(function()
nanp:UpdateSubtitle(ni)
end)
end

task.wait(5)
end
end)
end

nanp.onUnloaded(function()
ip = false
rh.save()

local gg = getgenv().ACBXBadge

if gg then
pcall(function()
gg:Destroy()
end)
getgenv().ACBXBadge = nil
end

if iong.enabled then
nfr()
end

if tpdg then
pcall(function()
tpdg:Disconnect()
end)
end
end)

task.spawn(function()
while upo() do
nat()
task.wait(2)
end
end)

task.spawn(function()
while upo() do

local mfcr = iong.enabled
and (iong.deepZone or iong.tpToBay)
and hwbc.worldBoss ~= nil
and type(hwbc.worldBoss.holdsFishing) == _d("BUQdEQ0OHQ0")
and hwbc.worldBoss.holdsFishing() == true
local rlva = mfcr or (pi.workPending and pi.workPending())

if iong.enabled and iong.deepZone and not rlva then
zeh.cycle()
end

if iong.enabled then
if iong.phase ~= _d("ClUfFw") and os.clock() >= iong.watchdogAt then
iong.phase = _d("ClUfFw")
iong.nextCastAt = os.clock() + 1
end

if iong.autoUnlocked and not iong.usingGameAuto and not iong.perfectCasts then
mwxw()
end

if iong.phase ~= _d("ClUfFw") and (iong.watchdogAt or 0) > 0
and os.clock() > iong.watchdogAt then
iong.phase = _d("ClUfFw")
iong.nextCastAt = 0
iong.lastMessage = _d("IFAABlkTGw5UF1IWEgZDHFMGCx4bDVZTEx4GGw0")
end

if iong.phase == _d("ClUfFw") and os.clock() >= iong.nextCastAt
and os.clock() >= math.max(iong.shopTripUntil or 0, iong.tpHoldUntil or 0)
and not iong.usingGameAuto
and not zeh.walking
and (not iong.deepZone or zeh.current() ~= nil)
and not rlva then
if not iong.deepZone and iong.tpToBay and not ia() then
kdd()
end

if not ndl() then
task.wait(4)
end
end

if not rlva and os.clock() >= math.max(iong.shopTripUntil or 0, iong.tpHoldUntil or 0) then
if (iong.totalCasts or 0) ~= (iong.castMark or 0) then
iong.castMark = iong.totalCasts
iong.castMarkAt = os.clock()
elseif (iong.castMarkAt or 0) > 0
and os.clock() - (iong.castMarkAt or 0) > 45 then
pcall(iong.recover)
end
else
iong.castMark = iong.totalCasts
iong.castMarkAt = os.clock()
end

if os.time() - iong.lastSync >= 20 then
qpfk()
end
end

task.wait(0.5)
end
end)

local ma

task.spawn(function()
local mia = izi()

while upo() do
local rynn = izi()

if rynn ~= mia then
mia = rynn
pcall(function()
ma:UpdateBody(rynn)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while upo() do
if iwt.enabled then

if os.clock() >= (cmq.trip.untilAt or 0) then
cmq.open()
end

local irjp = iwt.pending

if irjp and os.time() - irjp.at > 5 then

iwt.failedUntil[irjp.id] = os.time() + 30
iwt.pending = nil
qj.RequestItemSync:FireServer()
end

if os.time() - iwt.lastSync >= 20 then
iwt.lastSync = os.time()
qj.RequestItemSync:FireServer()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
local pvxl = cmq.text()

while upo() do
local rak = cmq.text()

if rak ~= pvxl and cmq.paragraph then
pvxl = rak

pcall(function()
cmq.paragraph:UpdateBody(rak)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while upo() do

if cmq.upgrade.balance == nil or os.time() - cmq.upgrade.lastRequest >= 20 then
cmq.request()
end

if cmq.run.highest == nil and os.time() - cmq.run.lastRequest >= 5 then
cmq.requestProgress()
end

if cmq.upgrade.enabled then
cmq.buy()

if cmq.upgrade.waiting and os.time() - cmq.upgrade.lastBuy >= 5 then

cmq.upgrade.waiting = false
cmq.request()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
while upo() do
local gth = cmq.run

if gth.enabled then
if gth.highest == nil or os.time() - gth.lastRequest >= 20 then
cmq.requestProgress()
end

local ey = gth.inBattle and os.time() < gth.inBattleUntil

if not ey and wx.halloweenSlot() ~= nil
and wx.slotFree(wx.halloweenSlot() or 1)

and (not qfnj.enabled or wx.towerSlot() ~= 1)
and (not ht.island or wx.enabled)
and (not ker.enabled or wx.enabled)
and not (gth.pending and os.time() < gth.pendingUntil) then
if cmq.bestRoom() then
cmq.startRun()
elseif gth.highest ~= nil then

gth.enabled = false

pcall(function()
cmq.runToggle:UpdateState(false)
end)

pcall(function()
nanp:Dialog({
Title = _d("IkQHHVkvEw9dHAUcAhxDZRwFHBU"),
Description = _d("JkcWAABHOgJdHx0OAhcNEScdDgIAQ0IHEx4CUgpCUxEVAhMRVBdSGAsABlAXC1VHAQwRBxocFRdDWABSFwgGC1gdFVkLFwVFUwYWRwAWX10"),
Buttons = {
{
Name = _d("JF4HUhAT"),
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

local val = nanp:TabGroup()

local zmbl = val:Tab({
Name = _d("LlAaHA"),
Image = _d("EVMLEwoUFxdYF0hWSENRCUVBSVNKVglCRkFQSg"),
})

local lwsd = val:Tab({
Name = _d("N14EFwtHVENlFhMU"),
Image = _d("EVMLEwoUFxdYF0hWSENTB0ZCQF5LUARGREhQQw"),
})

task.spawn(function()
local cs = 0
local afr = 0

local gt = 0

while upo() do
local kyoz = iong.rebirthText()

if iong.rebirthParagraph and kyoz ~= iong.rebirthShown then
iong.rebirthShown = kyoz

pcall(function()
iong.rebirthParagraph:UpdateBody(kyoz)
end)
end

if os.clock() >= gt then
gt = os.clock() + 20

local zvhs = ht.remotes and ht.remotes.request

if zvhs then
pcall(function()
zvhs:FireServer()
end)
end
end

local xgrr = ht.buffText()

if ht.islandParagraph and xgrr ~= ht.buffShown then
ht.buffShown = xgrr

pcall(function()
ht.islandParagraph:UpdateBody(xgrr)
end)
end

if iong.autoRebirth then
if os.clock() - cs > 15 then
cs = os.clock()
qpfk()
end

if iong.rebirthReady() and os.clock() >= afr then
local jx = workspace:FindFirstChild(_d("LlAUGxoGHkNzHB0S"), true)

if jx then
szqo(jx)
task.wait(0.8)
end

local mt, peqd = uywn(_d("MVQRGwsTGg"))

if mt then
iong.autoRebirth = false

pcall(function()
iong.rebirthToggle:UpdateState(false)
end)

nanp:Notify({
Title = _d("MVQRGwsTGg"),
Description = _d("MVQRGwsTGgZVXVItDxdDcBETFwMdDVQXUjAUHgJfF1IQFFIMQRYcVw"),
Lifetime = 6,
})
elseif peqd ~= _d("EF0cBQ") then
afr = os.clock() + 20

nanp:Notify({
Title = _d("MVQRGwsTGg"),
Description = _d("MVQRGwsTGkNDFhQMFBcHC1M") .. tostring(peqd),
Lifetime = 6,
})
end
end
end

task.wait(3)
end
end)

local wiv = val:Tab({
Name = _d("JVgAGhAJFQ"),
Image = _d("EVMLEwoUFxdYF0hWSENSBUZHTFZGUQRFRE1UQw"),
})

local jvt = val:Tab({
Name = _d("J1gUFRAJFQ"),
Image = _d(""),
})

local rsvt = val:Tab({
Name = _d("JkcWHA0U"),
Image = _d("EVMLEwoUFxdYF0hWSENRBENDS1FHUwVKRUFfQQ"),
})

local bjkg = wiv:Section({
Side = _d("L1QVBg"),
})

bjkg:Header({
Name = _d("JVgAGhAJFUPB7Pza"),
})

local hobn

local function iq(hswd)
iong.enabled = hswd
iong.phase = _d("ClUfFw")
iong.nextCastAt = 0
iong.castMark = iong.totalCasts
iong.castMarkAt = os.clock()

if not hswd then
nfr()
return
end

task.spawn(function()
if not yy() then
nanp:Notify({
Title = _d("IkQHHVkhGxBZ"),
Description = _d("LV5TFBAUGgpfFFILCBZDWB1SDQ8XQ1MSERIXEwBaXQ"),
Lifetime = 5,
})
end

if iong.tpToBay and not ia() then
kdd()
end

qpfk()

if iong.autoUnlocked and not iong.perfectCasts then
mwxw()
end
end)
end

local zen = false

local function hw()
if iong.tpToBay or iong.deepZone then
if iong.autoFishWanted then

iong.autoFishWanted = false

pcall(function()
hobn:UpdateState(true)
end)

if not iong.enabled then
iq(true)
end
end

return true
end

if iong.enabled then

iong.autoFishWanted = true

iq(false)

if not zen then
nanp:Dialog({
Title = _d("IkQHHVkhGxBZUx0fAQ"),
Description = _d("KkVTHBwCFhARElIKFx0XEQcdWQEbEFlTEw1HX0NFBgAXRx0NESciWRMdQ3MSC1kIAENQUzYcAgJDZhIGHBUBQ0IEGw0EGk0"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})
end
end

return false
end

hobn = bjkg:Toggle({
Name = _d("IkQHHVkhGxBZ"),
Default = false,
Callback = function(fjm)
if fjm and ckvk then
pcall(function()
hobn:UpdateState(false)
end)

if not zen then
nanp:Dialog({
Title = _d("IkQHHVkhGxBZUxsKRwICQxgXHQ"),
Description = _d("IkQHHVkjGwQRGxMKRwYLVFMBEQgEBl1TGxdHGgJfF1xZMwcRX1MzDBMdQ3UaFVkIFAUREhwdRzMWRRxSPw4BCxEABhgVBhARHR0LChMPXQpc"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})
end

return
end

if fjm and not (iong.tpToBay or iong.deepZone) then

pcall(function()
hobn:UpdateState(false)
end)

iong.autoFishWanted = true

if not zen then
nanp:Dialog({
Title = _d("IkQHHVkhGxBZUxwcAhYQERJSChcdFw"),
Description = _d("N0QBHFkIHENlI1INCFIhUApSFhVSAhE3FxwXUjRQBxcLFFIQRhoGGg9SBVgBAQ1HX0NwBgYWRzQKQhtSChMTEUUAUhseUgpFABcVAVICQlMBFggcQ1AAUhYJF0NeFVINDxcOERoBWQgcTQ"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})
end

return
end

iong.autoFishWanted = false

iq(fjm)
end,
}, _d("AkQHHSYBGxBZ"))

iong.autoFishToggle = hobn

bjkg:Toggle({
Name = _d("M1QBFBwEBkNSEgENFFJLSUFSFRIRCBg"),
Default = true,
Callback = function(px)
iong.perfectCasts = px

if px and iong.usingGameAuto then
nfr()
end
end,
}, _d("E1QBFBwEBjxSEgENFC0bAyweDAQZ"))

bjkg:Toggle({
Name = _d("N2FTBhZHMAJI"),
Default = false,
Callback = function(ina)
iong.tpToBay = ina

hw()
end,
}, _d("F0EsBhY4EAJI"))

local hg
local edht

hg = bjkg:Toggle({
Name = _d("N1QfFwkIABcRBx1ZIxcGQRYBDUclAkUWAA"),
Default = false,
Callback = function(zlfd)
if zlfd then

iong.deepWalk = false
iong.deepDiveAt = 0
iong.deepPhase = _d("ClUfFw")
iong.deepStageAt = 0

pcall(function()
edht:UpdateState(false)
end)

iong.deepZone = true

task.spawn(function()
if not zeh.settle() and iong.deepZone and not iong.deepWalk then
nanp:Notify({
Title = _d("N1QfFwkIABcRBx1ZIxcGQRYBDUclAkUWAA"),
Description = _d("N1kWUh0CFxMcBBMNAgBDXBICWQkXFVQBUhUIEwdUF1xZMwcRX1MGEQJSEEYaBhoPUgxXFVIYCRZDXh1SGAATCl9TBhZHAAZFAQtX"),
Lifetime = 8,
})
end
end)

hw()

return
end

if iong.deepWalk then
return
end

iong.deepZone = false
iong.deepDiveAt = 0
iong.deepPhase = _d("ClUfFw")
iong.deepStageAt = 0

task.spawn(function()
pcall(function()
qj.TeleportToWorld:FireServer(_d("D14REAA"))
end)
end)

hw()
end,
}, _d("B1QWAiYQExdUAS0bAgEXbh8HGgw"))

edht = bjkg:Toggle({
Name = _d("NFAfGVkTHUN1FhcJAgEXESQTDQIA"),
Default = false,
Callback = function(tvo)
if tvo then

local esc = zeh.customIsland or zeh.islandOf(zeh.spot())

if iong.islandLocked and esc == _d("AlMSHB0IHAZVLBsKCxMNVQ") then
iong.deepWalk = false

pcall(function()
edht:UpdateState(false)
end)

nanp:Dialog({
Title = _d("NFAfGVkTHUN1FhcJAgEXESQTDQIAQ18WFx0UUhdZFlI4BRMNVRwcHANSKkIfExcD"),
Description = _d("N1kWUhAUHgJfF1IQFFIPXhAZHANSDF9TBhEOAUNQEBEWEhwXH1M9FwJSEVQRGwsTGkNeAxcXFFIKRVNfWRIcF1gfUg0PFw0RBxocRxUCXBZSEQYBQ18cUg0CHgZBHAANRwYLVAEXWRMdQ0USGRxJ"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})

return
end

iong.deepWalk = true
iong.deepDiveAt = 0
iong.deepPhase = _d("ClUfFw")
iong.deepStageAt = 0

pcall(function()
hg:UpdateState(false)
end)

iong.deepZone = true

task.spawn(function()
zeh.walk()
end)

hw()

return
end

if not iong.deepWalk then
return
end

iong.deepWalk = false
iong.deepZone = false
iong.deepDiveAt = 0
iong.deepPhase = _d("ClUfFw")
iong.deepStageAt = 0

task.spawn(function()
pcall(function()
qj.TeleportToWorld:FireServer(_d("D14REAA"))
end)
end)

hw()
end,
}, _d("FFAfGSYDFwZBLAUYExcR"))

bjkg:Paragraph({
Header = _d("J1QWAhwUBkNmEgYcFQ"),
Body = _d("IV4HGlkUBQpFEBocFFIPUB0WWQgcQ0UbF1kwGw1VHhsVC1IqQh8XWQMdAFpTX1kTGgYRFxccFxcQRVMAEAkVTxEkGxcDBQJDF1IuBgYGQwBSVEcBDBEHBwsJGw1WUx0XAlIMX1MUCwgfQ1AdCw4PFxFUUxsXRwYLVFMVGAoXQ1MBGxcAAUNIHAdZBRMAWlMGFkcGC1AHUgoXHRcfeXguBh4IERAdDwIAEBEHGhxHHgJCB1IKEwAGRRAaWQgcQ1ccHQ1HBQpFG1INDxdDVhIfHEABQ14EHFkGHApcEgYQCBxYEScXFQICDEMHUgkSBhARCh0MRwYLVAEXWRAbF1kcBw1HBgtUUwUYCxlNEScdWQ8dD1VTE1kDGwVXFgAcCQZDQgMdDUcbDUIHFxgDXkNDBhxZJjEhaTcXHBclAkUWAFcEExNFBgAcT1tDWB1SDQ8XQ1IcHAoIHgYRBBoQCxdDQgcTFwMbDVZTHRdHGxcf"),
})

local umz

umz = bjkg:Paragraph({
Header = _d("JVgAGhAJFUNCBxMNAg"),
Body = nz(),
})

local vtsx = rsvt:Section({
Side = _d("L1QVBg"),
})

vtsx:Header({
Name = _d("IkQHHVkvEw9dHAUcAhxDZRwFHBWC/L/wgubB9Q"),
})

cmq.runToggle = vtsx:Toggle({
Name = _d("IkQHHVkvEw9dHAUcAhxDZRwFHBU"),
Default = false,
Callback = function(fhkg)
cmq.run.enabled = fhkg
cmq.run.pending = false
cmq.run.pendingUntil = 0

if fhkg then
cmq.requestProgress()
end
end,
}, _d("AkQHHSYPEw9dHAUcAhw8RRwFHBU"))

cmq.run.team = math.clamp(math.floor(tonumber(pi.bossTeams.towerPicked.halloween) or 1), 1, 4)
cmq.run.teamChosen = tonumber(pi.bossTeams.towerPicked.halloween) ~= nil
cmq.run.building = true

cmq.run.teamDropdown = vtsx:Dropdown({
Name = _d("N1QSHw"),
Search = false,
Multi = false,
Required = false,
Default = cmq.run.team,
Options = { _d("N1QSH1lW"), _d("N1QSH1lV"), _d("N1QSH1lU"), _d("N1QSH1lT") },
Callback = function(ub)
local oxgc = type(ub) == _d("F1ARHhw") and ub[1] or ub
local gje = type(oxgc) == _d("EEUBGxcA") and tonumber(oxgc:match(_d("SxQXWVA"))) or nil

if not gje then
return
end

cmq.run.team = gje

if cmq.run.building then
return
end

cmq.run.teamChosen = true
pi.bossTeams.towerPicked.halloween = gje
pi.bossTeams.save()

pcall(function()
cmq.run.teamDropdown:UpdateName(_d("N1QSH1mF8sER") .. (oxgc or (_d("N1QSH1k") .. tostring(gje))))
end)
end,
}, _d("F1QSHyYPEw9dHAUcAhw"))

pcall(function()
cmq.run.teamDropdown:UpdateSelection(_d("N1QSH1k") .. tostring(cmq.run.team))
cmq.run.teamDropdown:UpdateName(_d("N1QSH1mF8sERJxcYClI") .. tostring(cmq.run.team))
end)

cmq.run.building = false

cmq.toggle = vtsx:Toggle({
Name = _d("IkQHHVkSAgRDEhYcFA"),
Default = false,
Callback = function(wgb)
if wgb and not next(cmq.upgrade.selected) then
cmq.upgrade.enabled = false

pcall(function()
cmq.toggle:UpdateState(false)
end)

nanp:Dialog({
Title = _d("IkQHHVkSAgRDEhYcFA"),
Description = _d("M1gQGVkGBkNdFhMKE1IMXxZSCRIfE1oaHFkSAgRDEhYcRxsNEQcaHEcWEV4DFhYQHENXGgAKE1JOETIHDQhSFkEUABgDFxARAAIcCRYQEQodDBVSKVAQGVkIVUN9EhwNAgANQlMdF0cGC1QeUhgUUhBeHBxZBgFDSBwHWQQTDRESFB8IAAcRHBwcSQ"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})

return
end

cmq.upgrade.enabled = wgb

if wgb then
cmq.request()
end
end,
}, _d("AkQHHSYSAgRDEhYcFA"))

vtsx:Dropdown({
Name = _d("M0QeAhIOHENEAxULBhYGQg"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = cmq.labels,
Callback = function(iwfg)
local th = {}

if type(iwfg) == _d("F1ARHhw") then
for hgq, wy in ipairs(cmq.upgrades) do
if iwfg[wy.name] then
th[wy.id] = true
end
end
end

cmq.upgrade.selected = th

if not next(th) and cmq.upgrade.enabled then
cmq.upgrade.enabled = false

pcall(function()
cmq.toggle:UpdateState(false)
end)

nanp:Dialog({
Title = _d("IkQHHVkSAgRDEhYcFFIMVxU"),
Description = _d("LV4HGhAJFUNYAFIKAh4GUgcXHUccDEZfUgoIUhdZFgAcRxsQER0dDQ8bDVZTHhwBBkNFHFIbEgtNESMbGgxSAl9TBwkAAAJVFlIYCRZDRQYAF0cbFxERExoMUgxfXQ"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})
end
end,
}, _d("E0QeAhIOHDxEAxULBhYGQg"))

cmq.paragraph = vtsx:Paragraph({
Header = _d("M0QeAhIOHBA"),
Body = cmq.text(),
})

local gb = rsvt:Section({
Side = _d("L1QVBg"),
})

gb:Header({
Name = _d("K1AfHhYQFwZfUwERCAKTrvzYifjg4w"),
})

gb:Toggle({
Name = _d("IkQHHVklBxo"),
Default = false,
Callback = function(ignd)
iwt.enabled = ignd
iwt.pending = nil

if ignd then
qj.RequestItemSync:FireServer()
task.spawn(function()
cmq.open(true)
end)
end
end,
}, _d("AkQHHSYFBxo"))

gb:Button({
Name = _d("LEEWHFkUGgxB"),
Callback = function()
task.spawn(function()
local fkw = cmq.open(true)

nanp:Notify({
Title = _d("K1AfHhYQFwZfUwERCAI"),
Description = fkw and _d("IF4GHA0CAENeAxcXR19DVRIbFR5SEEUcERJHAAZQF1IfFR0OEQcaHEcBBkMFFwtJ") or tostring(cmq.trip.lastResult),
Lifetime = 6,
})

if ma then
pcall(function()
ma:UpdateBody(izi())
end)
end
end)
end,
})

gb:Dropdown({
Name = _d("KkUWHwo"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = cmq.shopLabels,
Callback = function(vy)
local eabn = {}

if type(vy) == _d("F1ARHhw") then
for tgt, mtx in ipairs(cmq.shopItems) do
if vy[mtx.label] then
eabn[mtx.id] = true
end
end
end

iwt.selected = eabn
end,
}, _d("CkUWHwo"))

ma = gb:Paragraph({
Header = _d("MEUcERJHVENDFgEcEw"),
Body = izi(),
})

local hou = rsvt:Section({
Side = _d("MVgUGg0"),
})

hou:Paragraph({
Header = _d("MFQSARYJEw8RFgQcCQYQ"),
Body = _d("K1AfHhYQFwZfUxsKRx4KRxZIWRMaBhEAGhYXUgJfF1INDxdDZRwFHBVSAV4HGlkQHRFaXXhzJgcXXlM6GAseDEYWFxdHJgxGFgBZFAYCQwcBWR4dFkNTFhwCAgZCB1IMCR4MUhgXHUcADF4eXFkkHgZQARsXAFIQRRIVHBRSE1AKAVktEwBaUx1eRz4CXwcXCwkBTxESHB1HMxZFHFIMFxURUBcXCkcBE1QdFgpHBgtUHlIWCVITVAEfGAkXDUVTBhYQFxEREQcfAQFN"),
})

hwbc.worldBoss.section = rsvt:Section({
Side = _d("MVgUGg0"),
})

hwbc.worldBoss.section:Header({
Name = _d("IkQHHVkgHgxTEh5ZJR0QQg"),
})

hwbc.worldBoss.section:Paragraph({
Header = _d("M0MaHQsOBho"),
Body = _d("MVAdGQpHBQpFG1INDxdDQxIbHRRIQ0UbF1kTHRRUAVIKExMNVQBSHQgFDREVHQtHGxcdUxMXA1IiRAcdWSkiIBEcBw0VEw1aAFIQE1xpOycaHEcUClYbBlkTEwhUAFIYRwEPXgdeWRQdQ1gHUhoIBw1FAFIYFFICX1M8KSRSAVAHBhUCUhdZFgAcSQ"),
})

hwbc.worldBoss.toggle = hwbc.worldBoss.section:Toggle({
Name = _d("IkQHHVkgHgxTEh5ZJR0QQg"),
Default = false,
Callback = function(ry)
if ry and not hwbc.worldBoss.teamChosen then
hwbc.worldBoss.enabled = false

pcall(function()
hwbc.worldBoss.toggle:UpdateState(false)
end)

nanp:Dialog({
Title = _d("IkQHHVkgHgxTEh5ZJR0QQlMcHAIWEBESUg0CEw4"),
Description = _d("M1gQGVkTGgYRBxcYClIKRVMBEQgHD1VTFBAAGhcRBBsND1IKX1MGEQJSN1QSH1kDAAxBFx0OCVIFWAEBDUlSN1kWUgoEAApBB1IRBgFDRRxSChAbF1IbUg0PExcRAB4WE1UQEQcXGApSAVQVHQsCUhdZFlIfDhULRVMBDQYAF0JfUhgJFkNlFhMUR0NDWABSFgkeGhEHGhxHFgZXEgcVE1JOERoGWQ4BQ18cBlkGUgBZHBsaAlIWXwcbFUcLDERTHxgMF0NYB1w"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})

return
end

if ry then
local ihky = hwbc.worldBoss.team
local gam = pi.bossTeams.teamCards(ihky)

if gam == 0 then
hwbc.worldBoss.enabled = false

pcall(function()
hwbc.worldBoss.toggle:UpdateState(false)
end)

nanp:Dialog({
Title = _d("N1QSH1k") .. tostring(ihky) .. _d("Q1kSAVkJHUNSEgAdFA"),
Description = _d("M0QHUhgTUg9UEgENRx0NVFMRGBUWQ1gdUi0CEw4R") .. tostring(ihky) .. _d("Qxk3FxoMAUodUx0LRwIKUhhSGEcGBlAeUg0PExcREh4LAhMHSFMaGBRSAFABFgpHGw0RBxocRyYGUB5SHRUdE1UcBRdLUhdZFhxZEwcRX1MzDBMdQ3YfHRsGHkNzHAEKRxACUhhSFglc"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})

return
end
end

hwbc.worldBoss.enabled = ry
hwbc.worldBoss.holdUntil = 0

hwbc.worldBoss.nextFightAt = 0

if not ry then
hwbc.worldBoss.setRepeat(false)
end

if ry then

hwbc.worldBoss.syncedAt = 0
hwbc.worldBoss.askedAt = 0
hwbc.worldBoss.chainWaitAt = nil
hwbc.worldBoss.repeatSeeded = false
hwbc.worldBoss.seenKills = nil
hwbc.worldBoss.progressAt = os.clock()
hwbc.worldBoss.kickAt = 0
end
end,
}, _d("AkQHHSYAHgxTEh4mBR0QQg"))

hwbc.worldBoss.claimToggle = hwbc.worldBoss.section:Toggle({
Name = _d("IkQHHVkEHgJYHlILAgUCQxcB"),
Default = false,
Callback = function(fauw)
hwbc.worldBoss.autoClaim = fauw
hwbc.worldBoss.claimAt = 0

if fauw then
hwbc.worldBoss.syncedAt = 0
hwbc.worldBoss.askedAt = 0
hwbc.worldBoss.chainWaitAt = nil
end
end,
}, _d("AkQHHSYEHgJYHi0LAgUCQxcB"))

hwbc.worldBoss.applyFishingMode = function(tpk)
local sfk = hwbc.worldBoss

if tpk == _d("JVgAGhAJFUNGEhsNRxQMQ1MQFhQB") or tpk == _d("NFAaBlkBHREREB0WCxYMRh0") then
sfk.fishingMode = _d("FFAaBg")
elseif tpk == _d("J1gUUg4GGxdCUxQWFVIBXgAB") then

sfk.fishingMode = _d("F14UFw0PFxE")
else
sfk.fishingMode = _d("F14UFw0PFxE")
end

sfk.digHold = tpk == _d("J1gUUg4GGxdCUxQWFVIBXgAB")

sfk.nextFightAt = 0
sfk.chainWaitAt = nil
sfk.repeatSeeded = false
sfk.seenKills = nil
sfk.progressAt = os.clock()

return sfk
end

hwbc.worldBoss.fishingDropdown = hwbc.worldBoss.section:Dropdown({
Name = _d("M0MaHQsOBho"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("JVgAGlkGHgxfFAEQAxc"), _d("JVgAGhAJFUNGEhsNRxQMQ1MQFhQB"), _d("J1gUUg4GGxdCUxQWFVIBXgAB") },
Callback = function(cuzk)
local rdlf = type(cuzk) == _d("F1ARHhw") and cuzk[1] or cuzk

hwbc.worldBoss.applyFishingMode(rdlf)

settingsState.saveBossMode(rdlf)
end,
}, _d("FFMsFBAUGgpfFC0UCBYG"))

hwbc.worldBoss.fullToggle = hwbc.worldBoss.section:Toggle({
Name = _d("MEUcAlkQGgZfUwYRAlIBUAFSHw4eD0I"),
Default = false,
Callback = function(jfb)
hwbc.worldBoss.stopAtFull = jfb
hwbc.worldBoss.meterAt = 0
end,
}, _d("FFMsAQ0IAjxQBy0fEh4P"))

hwbc.worldBoss.walkToggle = hwbc.worldBoss.section:Toggle({
Name = _d("NFAfGVkTHUNWHx0bBh5DUxwBCg"),
Default = false,
Callback = function(yop)
hwbc.worldBoss.walkToBoss = yop

hwbc.worldBoss.travelUntil = 0
end,
}, _d("FFMsBRgLGTxFHC0bCAEQ"))

hwbc.worldBoss.bodyParagraph = hwbc.worldBoss.section:Paragraph({
Header = _d("IV4AAQ"),
Body = hwbc.worldBoss.bodyText(),
})

hwbc.worldBoss.section:Header({
Name = _d("IV4AAVkUGgxBU4Lm6e2Mifw"),
})

hwbc.worldBoss.shopParagraph = hwbc.worldBoss.section:Paragraph({
Header = _d("Kl9TAQ0IEQg"),
Body = hwbc.worldBoss.shopText(),
})

hwbc.worldBoss.itemsDropdown = hwbc.worldBoss.section:Dropdown({
Name = _d("KkUWHwo"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = hwbc.worldBoss.shopOptions(),
Callback = function(ylm)
local hyxe = {}

if type(ylm) == _d("F1ARHhw") then
for ffzk, jgqm in pairs(ylm) do
local zh = hwbc.worldBoss.labelToId[ffzk]

if jgqm and zh then
hyxe[zh] = true
end
end
end

hwbc.worldBoss.selected = hyxe

if not next(hyxe) and hwbc.worldBoss.autoBuy then
hwbc.worldBoss.autoBuy = false

pcall(function()
hwbc.worldBoss.shopToggle:UpdateState(false)
end)
end
end,
}, _d("CkUWHwo4QA"))

hwbc.worldBoss.shopToggle = hwbc.worldBoss.section:Toggle({
Name = _d("IkQHHVkFBxo"),
Default = false,
Callback = function(guxt)
if guxt and not next(hwbc.worldBoss.selected) then
hwbc.worldBoss.autoBuy = false

pcall(function()
hwbc.worldBoss.shopToggle:UpdateState(false)
end)

nanp:Dialog({
Title = _d("IkQHHVkFBxo"),
Description = _d("M1gQGVkGBkNdFhMKE1IMXxZSEBMXDhEaHFkuBgZcAFIfDgAQRVNfWSYHF15TEAweUhBBFhwdFFIxVBdSKw4QAV4dUjQCFgJdAFIWCVIUWRIGHBEXEREaBlkEEw0REhQfCAAHERUAFgpSF1kSBlkLGxBFXQ"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})

return
end

hwbc.worldBoss.autoBuy = guxt
end,
}, _d("AkQHHSYFBxpuQQ"))

hwbc.worldBoss.section:Button({
Name = _d("IUQKUgoCHgZSBxcd"),
Callback = function()
if not next(hwbc.worldBoss.selected) then
nanp:Dialog({
Title = _d("IUQKUgoCHgZSBxcd"),
Description = _d("M1gQGVkGBkNdFhMKE1IMXxZSEBMXDhEaHFkuBgZcAFIfDgAQRV0"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})

return
end

local bzyi = hwbc.worldBoss.buy()

if bzyi == 0 then
nanp:Dialog({
Title = _d("IUQKUgoCHgZSBxcd"),
Description = _d("LV4HGhAJFUNGEgFZBR0WVhsGQ0ccDBEeFx0GHhARBx1ZFAIGXxdeWQIEBkMKUgkOEQgRGgFZCAcXERwUWRQGDFIYXlkIAENFGxdZBR0QQlMBEQgCQ1kSAVkJHRcRAAsXBBcHEQoXDUk"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})
end
end,
})

hwbc.worldBoss.building = true

hwbc.worldBoss.teamDropdown = hwbc.worldBoss.section:Dropdown({
Name = _d("N1QSHw"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("N1QSH1lW"), _d("N1QSH1lV"), _d("N1QSH1lU"), _d("N1QSH1lT") },
Callback = function(ezlr)
if hwbc.worldBoss.building then
return
end

local gguv = type(ezlr) == _d("F1ARHhw") and ezlr[1] or ezlr
local jcd = type(gguv) == _d("EEUBGxcA") and tonumber(gguv:match(_d("SxQXWVA"))) or nil

if jcd then
hwbc.worldBoss.team = jcd
hwbc.worldBoss.teamChosen = true
pi.bossTeams.save()
end

pcall(function()
hwbc.worldBoss.teamDropdown:UpdateName(_d("N1QSH1mF8sER") .. (gguv or _d("N1QSH1lW")))
end)
end,
}, _d("F1QSHw"))

pcall(function()
hwbc.worldBoss.teamDropdown:UpdateSelection(_d("N1QSH1k") .. tostring(hwbc.worldBoss.team))
hwbc.worldBoss.teamDropdown:UpdateName(_d("N1QSH1mF8sERJxcYClI") .. tostring(hwbc.worldBoss.team))
end)

task.defer(function()
hwbc.worldBoss.building = false
end)

hwbc.misc = hwbc.misc or {}

hwbc.misc.expeditions = {
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
rewardPath = _d("InIxKlYCChNUFxsNDh0NQl0YCggc"),
module = nil,
action = nil,
section = nil,
paragraph = nil,
claimToggle = nil,
startToggle = nil,
dropdown = nil,
}

function hwbc.misc.expeditions.data()
local ejni = hwbc.misc.expeditions

if ejni.module ~= nil then
return ejni.module or nil
end

local vccs, ghsg = pcall(function()
return require(jjv.ModuleScripts.ExpeditionData)
end)

ejni.module = vccs and ghsg or false

return ejni.module or nil
end

function hwbc.misc.expeditions.tiers()
local bin = hwbc.misc.expeditions.data()

return bin and bin.Tiers or {}
end

function hwbc.misc.expeditions.remote()
local aqk = hwbc.misc.expeditions

if aqk.action and aqk.action.Parent then
return aqk.action
end

aqk.action = mch(_d("JkkDFx0OBgpeHTMaExsMXw"), 3)

return aqk.action
end

function hwbc.misc.expeditions.clockText(xocr)
local ql = hwbc.misc.expeditions.data()

if ql and type(ql.formatDuration) == _d("BUQdEQ0OHQ0") then
return ql.formatDuration(xocr)
end

local uia = math.max(0, math.floor((xocr or 0) / 60))

return tostring(uia) .. _d("Dg")
end

function hwbc.misc.expeditions.status(ursq)
local jn = hwbc.misc.expeditions
local iuj = jn.state
local kqgf = type(iuj) == _d("F1ARHhw") and type(iuj.active) == _d("F1ARHhw") and iuj.active[ursq] or nil

if type(kqgf) ~= _d("F1ARHhw") then
return _d("AkcSGxUGEA9U"), nil
end

local csx = (tonumber(kqgf.endsAt) or 0) - (os.time() + (jn.offset or 0))

if csx <= 0 then
return _d("EVQSFgA"), csx
end

return _d("EUQdHBAJFQ"), csx
end

function hwbc.misc.expeditions.candidates(tlf)
local iizc = hwbc.misc.expeditions
local ufc = iizc.data()
local zvt = iizc.state
local hir = ufc and ufc.ById and ufc.ById[tlf]
local czv = {}

if not (hir and type(zvt) == _d("F1ARHhw") and type(zvt.eligible) == _d("F1ARHhw")) then
return czv
end

for ztd, sie in ipairs(zvt.eligible) do
if type(sie) == _d("F1ARHhw") and sie.cardId then
local ugtq = tonumber(sie.rarity) or 0
local zjxs = (tonumber(sie.count) or 0) - (tonumber(sie.locked) or 0)

if ugtq >= (tonumber(hir.minRarity) or 0) and zjxs > 0 then

table.insert(czv, { cardId = sie.cardId, borderLevel = sie.borderLevel, rarity = ugtq, count = zjxs })
end
end
end

table.sort(czv, function(wz, jqgf)
if wz.rarity == jqgf.rarity then
return tostring(wz.cardId) < tostring(jqgf.cardId)
end

return wz.rarity < jqgf.rarity
end)

return czv
end

function hwbc.misc.expeditions.cards(vrwx, hhl)
local icb = hwbc.misc.expeditions
local zbz = icb.data()
local hu = zbz and tonumber(zbz.CardsPerExpedition) or 4
local sqnd = {}
local vvvj = icb.candidates(vrwx)

hhl = hhl or {}

local function dkxh(xc, sqa)
local bm = tostring(xc.cardId) .. _d("QA") .. tostring(xc.borderLevel)

while #sqnd < hu and (hhl[bm] or 0) < sqa do
hhl[bm] = (hhl[bm] or 0) + 1

table.insert(sqnd, { cardId = xc.cardId, borderLevel = xc.borderLevel })
end
end

for qsx, wez in ipairs(vvvj) do
if #sqnd >= hu then
break
end

if wez.count > 1 then
dkxh(wez, wez.count - 1)
end
end

if #sqnd < hu then
for ewni, aikx in ipairs(vvvj) do
if #sqnd >= hu then
break
end

dkxh(aikx, aikx.count)
end
end

return sqnd
end

function hwbc.misc.expeditions.available(sq)
local oxq = hwbc.misc.expeditions
local rnx = oxq.data()
local riji = rnx and tonumber(rnx.CardsPerExpedition) or 4
local aejc = 0

for wjj, juaw in ipairs(oxq.candidates(sq)) do
aejc = aejc + juaw.count

if aejc >= riji then
return riji
end
end

return aejc
end

function hwbc.misc.expeditions.text()
local kho = hwbc.misc.expeditions

if type(kho.state) ~= _d("F1ARHhw") then
return _d("MVQSFhAJFUNUCwIcAxsXWBwcCklcTQ")
end

local jr = kho.data()
local kqb = jr and tonumber(jr.CardsPerExpedition) or 4
local rwdf = {}

for xrh, okm in ipairs(kho.tiers()) do
local ylj, qz = kho.status(okm.id)
local wohx = tostring(okm.name)

if kho.tiersWanted[okm.id] then
wohx = _d("gbHRUg") .. wohx
end

if ylj == _d("EUQdHBAJFQ") then
wohx = wohx .. _d("aWMWBgwVHBARGhxZ") .. kho.clockText(qz)
elseif ylj == _d("EVQSFgA") then
wohx = wohx .. _d("aWMWEx0eUhdeUxEVBhsO")
else
local wcre = kho.available(okm.id)
wohx = wohx .. _d("aQ") .. tostring(wcre) .. _d("Q14VUg") .. tostring(kqb) .. _d("Q1ISAB0U")

if wcre >= kqb then
wohx = wohx .. _d("aXISHFkUBgJDBw")
end
end

table.insert(rwdf, wohx)
end

table.insert(rwdf, _d("JkcWAABHFhZBHxsaBgYGERoBWRQXDUVTEBwBHRFUUxNZBBMRVVMLFhJSC14fFlkIHAYRHBRVRxMNVVMdFwJSAF4DC1kIFENQUxEYFRZDWABSEgICFxERExoMUhRZFgAcRwYLVFMGEAIAQ1ISHFkUAgJDFlIQE1JOERJSFQgcBhEQHQkeUgxfHwtZAB0GQlMdDBNSFFkWHFkTGgYRBxscFVIAUB0cFhNSAVRTFBALHgZVUwUQExoMRAdSEBNc"))

return table.concat(rwdf, _d("aTs"))
end

function hwbc.misc.expeditions.request()
local uak = hwbc.misc.expeditions
local zado = uak.remote()

if zado then
pcall(function()
zado:FireServer(_d("EVQCBxwUBg"))
end)
end

uak.askedAt = os.clock()
end

function hwbc.misc.expeditions.claim()
local nyb = hwbc.misc.expeditions

if os.clock() < nyb.claimAt then
return false
end

local hdu = false

for ycr, cpcy in ipairs(nyb.tiers()) do
if nyb.status(cpcy.id) == _d("EVQSFgA") then
hdu = true
break
end
end

if not hdu then
return false
end

local slv = nyb.remote()

if not slv then
return false
end

pcall(function()
slv:FireServer(_d("AF0SGxQmHg8"))
end)

nyb.claimAt = os.clock() + 3
nyb.askedAt = 0

return true
end

function hwbc.misc.expeditions.popup()
local doc = zt:FindFirstChild(_d("JkkDFx0OBgpeHTUMDg"))

return doc and doc:FindFirstChild(_d("IF0SGxQ3HRNEAw")) or nil
end

function hwbc.misc.expeditions.closeRewards()
local mp = hwbc.misc.expeditions
local wzqy = mp.popup()

if not (wzqy and wzqy.Visible) then
return false
end

local sum = wzqy:FindFirstChild(_d("LFoxBw0THQ0"))

if sum and type(firesignal) == _d("BUQdEQ0OHQ0") then
pcall(firesignal, sum.Activated)
end

pcall(function()
wzqy.Visible = false
end)

return true
end

function hwbc.misc.expeditions.rewardsText()
local nt = hwbc.misc.expeditions

if #nt.rewardLog == 0 then
return _d("LV4HGhAJFUNSHxMQChcHEQoXDUlSJkcWAABHAgJIHAcNRwYLVFMBHBUEBkNTARwJFhARHxMXAwFDWRYAHEcFCkUbUhATAUNFGhcLRxMNVVMbDRRSAF4dBhwJBhAf")
end

local lwsa = {}

for fgdr, vt in ipairs(nt.rewardLog) do
local km = {}
local glqy = vt.items or {}

for zgf, rx in ipairs(glqy) do
if zgf > 4 then
table.insert(km, _d("SA") .. tostring(#glqy - 4) .. _d("Q1wcABw"))
break
end

local ahd = rx.id or rx.itemId
local unjj = ahd and mpr.ById[ahd] or nil
local ceux = (unjj and unjj.name) or (rx.potions and _d("M14HGxYJAQ")) or tostring(ahd or _d("EVQEEwsD"))

table.insert(km, ceux .. _d("Q0k") .. tostring(rx.count or rx.max or rx.min or 1))
end

local ygut = math.max(0, os.time() - (tonumber(vt.at) or os.time()))
local dght

if ygut < 60 then
dght = tostring(ygut) .. _d("EBESFRY")
elseif ygut < 3600 then
dght = tostring(math.floor(ygut / 60)) .. _d("DhESFRY")
else
dght = tostring(math.floor(ygut / 3600)) .. _d("CxESFRY")
end

table.insert(lwsa, tostring(vt.title) .. _d("Q/PEUg") .. dght)
table.insert(lwsa, table.concat(km, _d("TxE")))
end

return table.concat(lwsa, _d("aQ"))
end

function hwbc.misc.expeditions.saveRewards()
local kmk = hwbc.misc.expeditions

if type(writefile) ~= _d("BUQdEQ0OHQ0") then
return false
end

return pcall(function()
if type(makefolder) == _d("BUQdEQ0OHQ0") and type(isfolder) == _d("BUQdEQ0OHQ0") and not isfolder(_d("InIxKg")) then
makefolder(_d("InIxKg"))
end

writefile(kmk.rewardPath, game:GetService(_d("K0UHAioCABVYEBc")):JSONEncode({
rewards = kmk.rewardLog,
updatedAt = os.time(),
}))
end)
end

function hwbc.misc.expeditions.loadRewards()
local kprl = hwbc.misc.expeditions

if type(readfile) ~= _d("BUQdEQ0OHQ0") or type(isfile) ~= _d("BUQdEQ0OHQ0") then
return false
end

local ekp, vxj = pcall(function()
if not isfile(kprl.rewardPath) then
return nil
end

return readfile(kprl.rewardPath)
end)

if not ekp or type(vxj) ~= _d("EEUBGxcA") or #vxj == 0 then
return false
end

local yljb

if not pcall(function()
yljb = game:GetService(_d("K0UHAioCABVYEBc")):JSONDecode(vxj)
end) then
return false
end

if type(yljb) ~= _d("F1ARHhw") or type(yljb.rewards) ~= _d("F1ARHhw") then
return false
end

kprl.rewardLog = {}

for wqu, cisa in ipairs(yljb.rewards) do
if type(cisa) == _d("F1ARHhw") and type(cisa.items) == _d("F1ARHhw") then
table.insert(kprl.rewardLog, {
at = tonumber(cisa.at) or os.time(),
title = tostring(cisa.title or _d("JkkDFx0OBgpeHQ")),
items = cisa.items,
})
end
end

return #kprl.rewardLog > 0
end

function hwbc.misc.expeditions.start(pkj, elyq)
local mkhy = hwbc.misc.expeditions

if mkhy.status(pkj) ~= _d("AkcSGxUGEA9U") then
return false
end

if os.clock() < (mkhy.startedAt[pkj] or 0) then
return false
end

local ewu = mkhy.remote()

if not ewu then
return false
end

local hxz = mkhy.cards(pkj, elyq)
local pkg = mkhy.data()
local vofs = pkg and tonumber(pkg.CardsPerExpedition) or 4

if #hxz < vofs then
return false
end

local zjf = {}

for ff, xtlu in ipairs(hxz) do
zjf[ff] = { cardId = xtlu.cardId, borderLevel = xtlu.borderLevel }
end

pcall(function()
ewu:FireServer(_d("EEUSAA0"), pkj, zjf)
end)

mkhy.startedAt[pkj] = os.clock() + 6
mkhy.askedAt = 0

return true
end

hwbc.misc.icon = function()
local fo = gethui()

for sub, etiy in ipairs(fo:QueryDescendants(_d("KlwSFRwrEwFUHw"))) do
if etiy.Name == _d("N1AROxQGFQY") then
local tlu = etiy.Parent
local upq = tlu and tlu:FindFirstChild(_d("N1ARIQ4OBgBZFgA3Bh8G"))

if upq and upq.Text == _d("LlgAERwLHgJfFh0MFA") then
if etiy:GetAttribute(_d("InIxKjQOAQB4EB0X")) then
return true
end

etiy:SetAttribute(_d("InIxKjQOAQB4EB0X"), true)
etiy.Image = _d("")
etiy.BackgroundTransparency = 1

local function tst(wuic, bvz, jq, hho, ads, oqt, csey)
local ofu = Instance.new(wuic)

ofu.Size = UDim2.fromOffset(ads, oqt)
ofu.Position = UDim2.fromOffset(jq, hho)
ofu.BackgroundColor3 = bvz
ofu.BorderSizePixel = 0
ofu.Parent = etiy

if csey then
local udpm = Instance.new(_d("NngwHQsJFxE"))
udpm.CornerRadius = UDim.new(0, csey)
udpm.Parent = ofu
end

return ofu
end

local bgc = Color3.fromRGB(168, 170, 176)

local function cqy(bbi, xnfu, boo, mmo, hnu)
local igoh = tst(_d("JUMSHxw"), bgc, bbi, xnfu, boo, mmo, hnu)

igoh.BackgroundTransparency = 1

local dv = Instance.new(_d("NnggBgsIGQY"))

dv.Color = bgc
dv.Thickness = 1.4
dv.LineJoinMode = Enum.LineJoinMode.Round
dv.Parent = igoh

return igoh
end

cqy(3, 1, 6, 4, 1)
cqy(1, 4, 16, 12, 2)

local kzx = tst(_d("JUMSHxw"), bgc, 3, 8, 5, 5)

kzx.BackgroundTransparency = 1
kzx.ClipsDescendants = true

local rts = tst(_d("JUMSHxw"), bgc, 0, 1, 5, 5)

rts.Rotation = 45
rts.Parent = kzx

tst(_d("JUMSHxw"), bgc, 9, 9, 4, 4, 4)
tst(_d("JUMSHxw"), bgc, 13, 10, 3, 3, 1)

return true
end
end
end

return false
end

hwbc.misc.tab = val:Tab({
Name = _d("LlgAERwLHgJfFh0MFA"),

Image = _d(""),
})

task.defer(function()
for yaus = 1, 20 do
if hwbc.misc.icon() then
break
end

task.wait(0.25)
end
end)

local el = {
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
lastText = _d("LV4HGhAJFUNBHAIJAhZDSBYGVw"),
tab = nil,
weatherSection = nil,
giveUpSection = nil,
weatherParagraph = nil,
giveUpParagraph = nil,
weatherToggle = nil,
giveUpToggle = nil,
}

getgenv().ACBXPop = el

function el.options()
local ecyt = {}

for jtpu, xrj in pairs(mpr.ById) do
if xrj.type == _d("E14HGxYJ") and type(xrj.name) == _d("EEUBGxcA") then
ecyt[#ecyt + 1] = xrj.name
end
end

table.sort(ecyt)

return ecyt
end

function el.idOf(ppm)
for fs, nf in pairs(mpr.ById) do
if nf.type == _d("E14HGxYJ") and nf.name == ppm then
return fs
end
end

return nil
end

function el.count(cgjy)
local syna = iwt.balances

return tonumber(syna and syna[cgjy]) or 0
end

function el.pop(wwz, ukgx, sskc)
local lkn = {}

for evha, zfy in pairs(wwz) do
if zfy then
local owru = el.idOf(evha)

if owru then
local eh = el.count(owru)

if eh <= 0 then
lkn[#lkn + 1] = evha .. _d("QxxTHBYJF0NdFhQN")
else
local xcn = math.clamp(math.floor(tonumber(ukgx) or 1), 1, eh)

pcall(function()
qj.UseItem:FireServer(owru, xcn)
end)

lkn[#lkn + 1] = evha .. _d("Q0k") .. xcn
task.wait(0.3)
end
end
end
end

if #lkn == 0 then
return false
end

el.lastText = sskc .. _d("QxxT") .. table.concat(lkn, _d("TxE"))

pcall(function()
nanp:Notify({
Title = _d("M14D"),
Description = el.lastText,
Lifetime = 5,
})
end)

return true
end

function el.status()
local phn = ej.weatherWanted(el.weathers)
local mjh = ej.weatherNow or _d("Fl8YHBYQHA")
local czik = {
_d("NFQSBhECAFkR") .. mjh .. (phn and (_d("QxkDHQkXGw1WSVI") .. phn .. _d("Sg")) or _d("")),
_d("L1AABkNH") .. el.lastText,
}

return table.concat(czik, _d("aQ"))
end

function el.giveUpStatus()
if el.armedAt > 0 then
return _d("IkMeFx1HX0NGEhsNDhwEERUdC0cGC1RTAAwJUhdeUxcXA1xpfRIBDV1S") .. el.lastText
end

return _d("KlUfF1dtPgJCB0hZ") .. el.lastText
end

el.tab = val:Tab({
Name = _d("M14D"),

Image = _d(""),
})

el.icon = function()
local fk = gethui()

for czrq, hkzv in ipairs(fk:QueryDescendants(_d("KlwSFRwrEwFUHw"))) do
if hkzv.Name == _d("N1AROxQGFQY") then
local xlv = hkzv.Parent
local uzn = xlv and xlv:FindFirstChild(_d("N1ARIQ4OBgBZFgA3Bh8G"))

if uzn and uzn.Text == _d("M14D") then
if hkzv:GetAttribute(_d("InIxKikIAipSHBw")) then
return true
end

hkzv:SetAttribute(_d("InIxKikIAipSHBw"), true)
hkzv.Image = _d("")
hkzv.BackgroundTransparency = 1

local we = Color3.fromRGB(168, 170, 176)

local function gier(kk, bzft, nj, stu, eirj, yat)
local aamp = Instance.new(kk)

aamp.Size = UDim2.fromOffset(stu, eirj)
aamp.Position = UDim2.fromOffset(bzft, nj)
aamp.BackgroundColor3 = we
aamp.BorderSizePixel = 0
aamp.Parent = hkzv

if yat then
local lfux = Instance.new(_d("NngwHQsJFxE"))
lfux.CornerRadius = UDim.new(0, yat)
lfux.Parent = aamp
end

return aamp
end

local function iu(ne, gkty, xl, ypo, hwi)
local rk = gier(_d("JUMSHxw"), ne, gkty, xl, ypo, hwi)

rk.BackgroundTransparency = 1

local wg = Instance.new(_d("NnggBgsIGQY"))

wg.Color = we
wg.Thickness = 1.3
wg.LineJoinMode = Enum.LineJoinMode.Round
wg.Parent = rk

return rk
end

iu(1, 6, 16, 12, 6)
iu(6, 3, 6, 4, 1)
gier(_d("JUMSHxw"), 5, 1, 8, 2, 1)
gier(_d("JUMSHxw"), 7, 0, 4, 1, 0)

gier(_d("JUMSHxw"), 4, 11, 10, 1, 0)
gier(_d("JUMSHxw"), 13, 3, 2, 2, 2)
gier(_d("JUMSHxw"), 15, 6, 2, 2, 2)

return true
end
end
end

return false
end

task.defer(function()
for eec = 1, 20 do
if el.icon() then
break
end

task.wait(0.25)
end
end)

el.weatherSection = el.tab:Section({
Side = _d("L1QVBg"),
})

el.weatherSection:Header({
Name = _d("M14HGxYJAUNeHVIOAhMXWRYAWZftxJs"),
})

el.weatherToggle = el.weatherSection:Toggle({
Name = _d("M14DUhYJUhdZFgEcRwUGUAcaHBUB"),
Default = false,
Callback = function(ysb)
if ysb and (next(el.weatherPotions) == nil or next(el.weathers) == nil) then
el.onWeather = false

pcall(function()
el.weatherToggle:UpdateState(false)
end)

nanp:Dialog({
Title = _d("M14D"),
Description = _d("N1gQGVkGBkNdFhMKE1IMXxZSDgITF1kWAFkGHAcRHBwcRwIMRRodF0cUCkMABllKUjNeA1IXAhcHQlMQFhMaQ0UcUhIJHRQRBBoYE1IXXlMWCw4cCBESHB1HBQtUHVw"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})

return
end

el.onWeather = ysb

if ysb then
el.weatherSpent = nil
end
end,
}, _d("E14DLRYJLRdZFgEcOAUGUAcaHBUB"))

el.weatherSection:Dropdown({
Name = _d("NFQSBhECABA"),
Multi = true,
Required = false,
Options = { _d("N0gDGhYIHA"), _d("IV0aCAMGAAc"), _d("L1gUGg0JGw1W"), _d("NFgdFgoTHRFc"), _d("MFkSABAJFQJf"), _d("MFgdFQwLExFYBws"), _d("Ll4dEwsEGkN1HB8YDhw"), _d("NV4aFg"), _d("LlAXF1kOHEN5FhMPAhw"), _d("LlAdFRg") },
Callback = function(ref)
el.weathers = {}

if type(ref) == _d("F1ARHhw") then
for qucg, mpe in pairs(ref) do
if mpe then
el.weathers[qucg] = true
end
end
end
end,
}, _d("FFQSBhECABA"))

el.weatherSection:Dropdown({
Name = _d("M14HGxYJAQ"),
Multi = true,
Required = false,
Options = el.options(),
Callback = function(yd)
el.weatherPotions = {}

if type(yd) == _d("F1ARHhw") then
for eo, uk in pairs(yd) do
if uk then
el.weatherPotions[eo] = true
end
end
end
end,
}, _d("E14HGxYJAQ"))

el.weatherSection:Input({
Name = _d("IlwcBxcT"),
Placeholder = _d("Ug"),
AcceptedCharacters = _d("LUQeFwsOEQ"),
Callback = function(keut)
local vcx = math.floor(tonumber(keut) or 1)

el.weatherAmount = math.clamp(vcx, 1, 50)
end,
}, _d("AlwcBxcT"))

el.weatherParagraph = el.weatherSection:Paragraph({
Header = _d("MEUSBgwU"),
Body = el.status(),
})

el.giveUpSection = el.tab:Section({
Side = _d("MVgUGg0"),
})

el.giveUpSection:Header({
Name = _d("IlcHFwtHFQpHFlIMFw"),
})

el.giveUpToggle = el.giveUpSection:Toggle({
Name = _d("M14DUhgBBgZDUxNZEx0UVAFSHg4EBhEGAg"),
Default = false,
Callback = function(bsm)
if bsm and next(el.giveUpPotions) == nil then
el.afterGiveUp = false

pcall(function()
el.giveUpToggle:UpdateState(false)
end)

nanp:Dialog({
Title = _d("M14D"),
Description = _d("N1gQGVkGBkNdFhMKE1IMXxZSCQgGCl4dUh8OABBFU19ZExoGQxZSEBRSDV4HGhAJFUNFHFIdFRsNWlMTHxMXEREHGhxHABZfUx0NDxcRRhoBHEk"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})

return
end

el.afterGiveUp = bsm
end,
}, _d("E14DLRgBBgZDLBMmEx0UVAEtHg4EBm4GAg"))

el.giveUpSection:Dropdown({
Name = _d("M14HGxYJAQ"),
Multi = true,
Required = false,
Options = el.options(),
Callback = function(gsj)
el.giveUpPotions = {}

if type(gsj) == _d("F1ARHhw") then
for rmv, zus in pairs(gsj) do
if zus then
el.giveUpPotions[rmv] = true
end
end
end
end,
}, _d("E14HGxYJATwD"))

el.giveUpSection:Input({
Name = _d("IlwcBxcT"),
Placeholder = _d("Ug"),
AcceptedCharacters = _d("LUQeFwsOEQ"),
Callback = function(agub)
local fsv = math.floor(tonumber(agub) or 1)

el.giveUpAmount = math.clamp(fsv, 1, 50)
end,
}, _d("AlwcBxcTLVE"))

el.giveUpParagraph = el.giveUpSection:Paragraph({
Header = _d("MEUSBgwU"),
Body = el.giveUpStatus(),
})

local gcsp = {
autoSave = false,
autoRoll = true,
autoQuickRoll = true,

loading = false,
selected = nil,
lastText = _d("LV4HGhAJFUNGARsNExcNEQoXDUdfQ0EaERJHE0NCEgQcRxQKXRZSGwIeDEZd"),
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
theme = _d("NV4aFg"),
accent = nil,
savesAt = 0,
autoSaveAt = 0,
themeAt = 0,
capAt = 0,
scaleAnchor = nil,
statusAt = 0,
knownSaves = _d(""),
}

getgenv().ACBXSettings = gcsp

gcsp.presets = {
Void = { panel = Color3.fromRGB(15, 15, 15), element = Color3.fromRGB(0, 0, 0), accent = Color3.fromRGB(168, 170, 176) },
Ocean = { panel = Color3.fromRGB(6, 16, 26), element = Color3.fromRGB(8, 26, 40), accent = Color3.fromRGB(77, 166, 255) },
Ember = { panel = Color3.fromRGB(26, 10, 8), element = Color3.fromRGB(36, 16, 10), accent = Color3.fromRGB(255, 122, 69) },
Sakura = { panel = Color3.fromRGB(26, 9, 18), element = Color3.fromRGB(38, 14, 26), accent = Color3.fromRGB(255, 125, 177) },
Mint = { panel = Color3.fromRGB(7, 20, 14), element = Color3.fromRGB(9, 30, 22), accent = Color3.fromRGB(77, 227, 160) },
Graphite = { panel = Color3.fromRGB(20, 20, 22), element = Color3.fromRGB(30, 30, 33), accent = Color3.fromRGB(200, 200, 206) },
}

gcsp.themeOrder = { _d("NV4aFg"), _d("LFIWExc"), _d("JlwRFws"), _d("MFAYBwsG"), _d("LlgdBg"), _d("JEMSAhEOBgY") }

local ecr = _d("InIxUisCEApDBxpWFBcXRRocHhQ")

function gcsp.saves()
local kgn, sa = pcall(function()
return bxnn:RefreshConfigList()
end)

if kgn and type(sa) == _d("F1ARHhw") then
table.sort(sa)
return sa
end

return {}
end

function gcsp.autoLoadName()
local ndg, cium = pcall(function()
if isfile and isfile(ecr .. _d("TFAGBhYLHQJVXQYBEw")) then
return readfile(ecr .. _d("TFAGBhYLHQJVXQYBEw"))
end
end)

if ndg and type(cium) == _d("EEUBGxcA") then
cium = cium:gsub(_d("PRQAWQ"), _d("")):gsub(_d("RkJYVg"), _d(""))

if cium ~= _d("") then
return cium
end
end

return nil
end

function gcsp.setAutoLoad(hy)

return (pcall(function()
writefile(ecr .. _d("TFAGBhYLHQJVXQYBEw"), hy or _d(""))
end))
end

function gcsp.delete(zmva)
if type(zmva) ~= _d("EEUBGxcA") or zmva == _d("") then
return false, _d("M1gQGVkGUhBQBRdZARsPVFMUEBUBFx8")
end

local cbl = ecr .. _d("TA") .. zmva .. _d("TVsAHRc")
local dxw = false

pcall(function()
dxw = isfile ~= nil and isfile(cbl) == true
end)

if not dxw then
return false, _d("N1kWABxHGxARHR1ZARsPVFMRGAseBlVT") .. zmva .. _d("TQ")
end

local yq, myu = pcall(function()
delfile(cbl)
end)

if not yq then
return false, tostring(myu)
end

if gcsp.autoLoadName() == zmva then
gcsp.setAutoLoad(_d(""))
end

if gcsp.selected == zmva then
gcsp.selected = nil
gcsp.selectionShown = nil
end

gcsp.knownSaves = nil
gcsp.savesAt = 0

return true
end

function gcsp.save(jmdm)
if type(jmdm) ~= _d("EEUBGxcA") or jmdm:gsub(_d("RkI"), _d("")) == _d("") then
return false, _d("JFgFF1kTGgYRABMPAlICER0TFAJSBVgBAQ1J")
end

local mie, uz, ysfx = pcall(function()
return bxnn:SaveConfig(jmdm)
end)

if not mie then
return false, tostring(uz)
end

if uz ~= true then
return false, tostring(ysfx or _d("F1kWUh8OHgYREB0MCxZDXxwGWQUXQ0YBGw0TFw0"))
end

return true
end

function gcsp.replayOff(khj)
local ifps, tspi = pcall(function()
return readfile(ecr .. _d("TA") .. khj .. _d("TVsAHRc"))
end)

if not ifps or type(tspi) ~= _d("EEUBGxcA") then
return
end

local zwf
ifps, zwf = pcall(function()
return game:GetService(_d("K0UHAioCABVYEBc")):JSONDecode(tspi)
end)

if not ifps or type(zwf) ~= _d("F1ARHhw") or type(zwf.objects) ~= _d("F1ARHhw") then
return
end

for mry, he in ipairs(zwf.objects) do
if he.type == _d("N14UFRUC") and he.state == false and he.flag then
local utu = bxnn.Options[he.flag]

if utu then
pcall(function()
utu:UpdateState(false)
end)
end
end
end
end

function gcsp.load(hcgp)
if type(hcgp) ~= _d("EEUBGxcA") or hcgp == _d("") then
return false, _d("M1gQGVkGUhBQBRdZARsPVFMUEBUBFx8")
end

gcsp.loading = true
zen = true

local env, pknq, woya = pcall(function()
return bxnn:LoadConfig(hcgp)
end)

if not env then
gcsp.loading = false
zen = false

return false, tostring(pknq)
end

if pknq ~= true then
gcsp.loading = false
zen = false

return false, tostring(woya or _d("F1kWUh8OHgYREB0MCxZDXxwGWQUXQ0MWEx0"))
end

task.wait(0.25)
gcsp.replayOff(hcgp)
gcsp.loading = false
zen = false

return true
end

gcsp.uiPath = _d("InIxKlYSG01bAB0X")

function gcsp.saveUi()
if type(writefile) ~= _d("BUQdEQ0OHQ0") then
return false
end

if gcsp.restoring then
return false
end

local kppe = gcsp.accent

local lll = {
theme = gcsp.theme,
scale = tonumber(string.format(_d("Rh9BFA"), gcsp.scaleTarget or 1)),
accent = kppe and string.format(_d("RlVfVx1LVwc"),
math.floor(kppe.R * 255 + 0.5),
math.floor(kppe.G * 255 + 0.5),
math.floor(kppe.B * 255 + 0.5)) or nil,
}

return pcall(function()
if type(makefolder) == _d("BUQdEQ0OHQ0") and type(isfolder) == _d("BUQdEQ0OHQ0") and not isfolder(_d("InIxKg")) then
makefolder(_d("InIxKg"))
end

writefile(gcsp.uiPath, game:GetService(_d("K0UHAioCABVYEBc")):JSONEncode(lll))
end)
end

function gcsp.loadUi()
if type(readfile) ~= _d("BUQdEQ0OHQ0") or type(isfile) ~= _d("BUQdEQ0OHQ0") then
return nil
end

local hksc, lic = pcall(function()
if not isfile(gcsp.uiPath) then
return nil
end

return readfile(gcsp.uiPath)
end)

if not hksc or type(lic) ~= _d("EEUBGxcA") or lic == _d("") then
return nil
end

local aib
hksc, aib = pcall(function()
return game:GetService(_d("K0UHAioCABVYEBc")):JSONDecode(lic)
end)

if not hksc or type(aib) ~= _d("F1ARHhw") then
return nil
end

gcsp.restoring = true

if type(aib.theme) == _d("EEUBGxcA") and gcsp.presets[aib.theme] then
gcsp.theme = aib.theme

pcall(function()
gcsp.themeDropdown:UpdateSelection(aib.theme)
gcsp.themeDropdown:UpdateName(_d("N1kWHxxdUg") .. aib.theme)
end)
end

local zkxk, xi, dxem = tostring(aib.accent or _d("")):match(_d("PRlWFlJOXksUF1lQS1pGVVhbXQ"))

if zkxk then
local mksc = Color3.fromRGB(tonumber(zkxk), tonumber(xi), tonumber(dxem))

gcsp.accent = mksc

pcall(function()
gcsp.accentPicker:SetColor(mksc)
end)
else
gcsp.accent = nil

local vfo = gcsp.presets[gcsp.theme] or gcsp.presets.Void

pcall(function()
gcsp.accentPicker:SetColor(vfo.accent)
end)
end

local fce = tonumber(aib.scale)

if fce then
fce = math.clamp(fce, 0.5, gcsp.scaleCeiling())

gcsp.scaleTarget = fce
gcsp.scaleAnchor = nil

pcall(function()
gcsp.scaleSlider:UpdateValue(fce)
end)
end

gcsp.applyTheme()

gcsp.restoring = false
gcsp.saveUi()

return aib
end

gcsp.bossModePath = _d("InIxKlYFHRBCXRgKCBw")

function gcsp.saveBossMode(brrf)
if type(writefile) ~= _d("BUQdEQ0OHQ0") or type(brrf) ~= _d("EEUBGxcA") or brrf == _d("") then
return false
end

return pcall(function()
if type(makefolder) == _d("BUQdEQ0OHQ0") and type(isfolder) == _d("BUQdEQ0OHQ0") and not isfolder(_d("InIxKg")) then
makefolder(_d("InIxKg"))
end

writefile(gcsp.bossModePath, game:GetService(_d("K0UHAioCABVYEBc")):JSONEncode({ mode = brrf }))
end)
end

function gcsp.loadBossMode()
if type(readfile) ~= _d("BUQdEQ0OHQ0") or type(isfile) ~= _d("BUQdEQ0OHQ0") then
return nil
end

local auvg, qfa = pcall(function()
if not isfile(gcsp.bossModePath) then
return nil
end

return readfile(gcsp.bossModePath)
end)

if not auvg or type(qfa) ~= _d("EEUBGxcA") or qfa == _d("") then
return nil
end

local dvql

auvg, dvql = pcall(function()
return game:GetService(_d("K0UHAioCABVYEBc")):JSONDecode(qfa)
end)

if not auvg or type(dvql) ~= _d("F1ARHhw") or type(dvql.mode) ~= _d("EEUBGxcA") then
return nil
end

return dvql.mode
end

function gcsp.colourKey(lrkh)
return math.floor(lrkh.R * 255) .. _d("Tw") .. math.floor(lrkh.G * 255) .. _d("Tw") .. math.floor(lrkh.B * 255)
end

function gcsp.guiRoot()

if not upo() then
return nil
end

if gcsp.root and gcsp.root.Parent then
return gcsp.root
end

local qx = gethui and gethui() or game:GetService(_d("IF4BFz4SGw"))

for zaik, fipf in ipairs(qx:GetChildren()) do
if fipf:IsA(_d("MFIBFxwJNRZY")) and fipf:FindFirstChild(_d("IVAAFw")) then
gcsp.root = fipf.Base

return gcsp.root
end
end

return nil
end

function gcsp.applyTheme()
local ok = gcsp.guiRoot()
local zbze = gcsp.presets[gcsp.theme] or gcsp.presets.Void

if not ok then
return false
end

local rwfn = {
panel = zbze.panel,
element = zbze.element,
accent = gcsp.accent or zbze.accent,
}

local qr = {}

for afib, qyp in pairs(gcsp.presets) do
qr[gcsp.colourKey(qyp.panel)] = _d("E1AdFxU")
qr[gcsp.colourKey(qyp.element)] = _d("Bl0WHxwJBg")
qr[gcsp.colourKey(qyp.accent)] = _d("AlIQFxcT")
end

qr[gcsp.colourKey(rwfn.accent)] = _d("AlIQFxcT")

if qr[gcsp.colourKey(ok.BackgroundColor3)] == _d("E1AdFxU") then
ok.BackgroundColor3 = rwfn.panel
end

for rsrs, me in ipairs(ok:GetDescendants()) do
if me:IsA(_d("JEQaPRsNFwBF")) then
local vh = qr[gcsp.colourKey(me.BackgroundColor3)]

if vh then
me.BackgroundColor3 = rwfn[vh]
end
elseif me:IsA(_d("NnggBgsIGQY")) then
if qr[gcsp.colourKey(me.Color)] == _d("AlIQFxcT") then
me.Color = rwfn.accent
end
end

if me:IsA(_d("KlwSFRwrEwFUHw")) and me.Name == _d("N1AROxQGFQY") and me.Image ~= _d("") then
me.ImageColor3 = rwfn.accent
me.ImageTransparency = 0
me:SetAttribute(_d("InIxKi0GECJSEBcXEw"), rwfn.accent)

if not me:GetAttribute(_d("InIxKi0GEDdYHQY")) then
me:SetAttribute(_d("InIxKi0GEDdYHQY"), true)

local function zp()
local pun = me:GetAttribute(_d("InIxKi0GECJSEBcXEw"))

if pun and me.ImageColor3 ~= pun then
me.ImageColor3 = pun
end

if me.ImageTransparency ~= 0 then
me.ImageTransparency = 0
end
end

me:GetPropertyChangedSignal(_d("KlwSFRwzAAJfAAIYFRcNUgo")):Connect(zp)
me:GetPropertyChangedSignal(_d("KlwSFRwkHQ9eAUE")):Connect(zp)
end
end
end

return true
end

local wvj = val:Tab({
Name = _d("LlAD"),
Image = _d("EVMLEwoUFxdYF0hWSERTAkJCTlJLUAA"),
})

local htk = {
holdFor = 25,
fly = {
on = false,
speed = 55,
connection = nil,
},
islands = {
{ name = _d("L14REAA"), kind = _d("FF4BHh0"), arg = _d("D14REAA") },
{ name = _d("IlMSHB0IHAZVUzsKCxMNVQ"), kind = _d("CkIfExcD"), arg = _d("AlMSHB0IHAZVLBsKCxMNVQ") },
{ name = _d("N0YaHFklFwJSGxcK"), kind = _d("CkIfExcD"), arg = _d("F0YaHCYFFwJSGxcK"), note = _d("Q2UbF1kUFxFHFgBZAwAMQQBSEBNSFl8HGxVHCwxEUxoYERdDQhIbFQIWQ0UbFwsCXA") },
{ name = _d("NFgdFhQOHg8ROgEVAg"), kind = _d("CkIfExcD"), arg = _d("FFgdFhQOHg9uGgEVAg"), note = _d("Q2UbF1kUFxFHFgBZAwAMQQBSEBNSFl8HGxVHCwxEUxoYERdDQhIbFQIWQ0UbFwsCXA") },
},
npcs = {
{ name = _d("IFABFlkqFxFWFg"), npc = _d("BUQAFyYJAgA"), attr = _d("LWEwOx0"), at = Vector3.new(-272, 33, -40347) },
{ name = _d("JkkDFx0OBgpeHQE"), npc = _d("JkkDFx0OBgpeHTwpJA"), attr = _d("JkkDFx0OBgpeHTwpJA"), at = Vector3.new(-347, 35, -40361) },
{ name = _d("J1QQHRcUBhFEEAY"), npc = _d("B1QQHRcUBhFEEAYmCQIA"), attr = _d("LWEwOx0"), at = Vector3.new(-264, 33, -40331) },
{ name = _d("IEMSFA0"), npc = _d("AEMSFA04HBNS"), attr = _d("LWEwOx0"), at = Vector3.new(-330, 33, -40277) },
{ name = _d("MFoaHhVHJhFUFg"), npc = _d("MFoaHhUzAAZUPSI6"), attr = _d("MFoaHhUzAAZUPSI6"), at = Vector3.new(-290, 32, -40283) },
{ name = _d("IFABFlkuHAdUCw"), npc = _d("AFABFiYOHAdUCy0XFxE"), attr = _d("LWEwOx0"), at = Vector3.new(-313, 33, -40282) },
{ name = _d("M1AQGVkqFxFSGxMXEw"), npc = _d("E1AQGSYKFxFSGxMXEw"), attr = _d("LWEwOx0"), at = Vector3.new(-301, 33, -40270) },
{ name = _d("J0QdFRwIHA"), npc = _d("B0QdFRwIHDxfAxE"), attr = _d("LWEwOx0"), at = Vector3.new(-339, 41, -40399) },
{ name = _d("JVgAGhwVHwJf"), npc = _d("JVgAGhwVHwJfPSI6"), attr = _d("JVgAGhwVHwJfPSI6"), at = Vector3.new(-493, 14, -40262) },
{ name = _d("MFQQABwTUiJfFB4cFQ"), npc = _d("MFQQABwTMw1WHxcLKSIg"), attr = _d("MFQQABwTMw1WHxcLKSIg"), at = Vector3.new(-209, 34, -40382) },
{ name = _d("K1AfHhYQFwZfUyERCAI"), npc = _d("M0QeAhIOHEN8FgAaDxMNRQ"), at = Vector3.new(-29989, 78, -30259) },
{ name = _d("MFAQABABGwBUUzMVExMR"), landmark = _d("MFAQABABGwBUMh4NBgA"), island = _d("AlMSHB0IHAZVLBsKCxMNVQ"), at = Vector3.new(-3548, 11, -40462) },
{ name = _d("K1ABFhoIAAYRJx0OAgA"), npc = _d("K1ABFhoIAAZlHAUcFQ"), island = _d("AlMSHB0IHAZVLBsKCxMNVQ"), at = Vector3.new(-3795, 25, -40250) },
{ name = _d("KkIfExcDUiVYABocFR8CXw"), npc = _d("KkIfExcDNApCGxcLChMNfyMx"), attr = _d("KkIfExcDNApCGxcLChMNfyMx"), island = _d("AlMSHB0IHAZVLBsKCxMNVQ"), at = Vector3.new(-3825, 23, -40260) },
{ name = _d("J1gUFRwV"), npc = _d("J1gUFRwVPDNy"), attr = _d("J1gUFRwVPDNy"), island = _d("F0YaHCYFFwJSGxcK"), at = Vector3.new(-5998, 26, -40565) },
{ name = _d("MFQQABwTUidYFBUcFQ"), npc = _d("MFQQABwTNgpWFBcLKSIg"), attr = _d("MFQQABwTNgpWFBcLKSIg"), island = _d("FFgdFhQOHg9uGgEVAg"), at = Vector3.new(-7740, 17, -40343) },
},
}

function htk.hold()
iong.tpHoldUntil = os.clock() + htk.holdFor

iong.deepPhase = _d("ClUfFw")
iong.deepStageAt = 0
iong.phase = _d("ClUfFw")
iong.nextCastAt = 0
iong.watchdogAt = 0

return htk.holdFor
end

function htk.point(mf)
local nydt

if mf.landmark then
nydt = workspace:FindFirstChild(mf.landmark)
else
local jxt = workspace:FindFirstChild(_d("LWEwAQ"))

if jxt then
for jm, mln in ipairs(jxt:GetChildren()) do
local yl

if mf.attr then
yl = mln:GetAttribute(mf.attr) == mf.npc
else
yl = mln.Name == mf.npc
end

if yl then
nydt = mln
break
end
end
end
end

if nydt then
local gzm = nydt.PrimaryPart
or nydt:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"), true)
or nydt:FindFirstChildWhichIsA(_d("IVAAFykGABc"), true)

if gzm then
return gzm.Position
end
end

return mf.at
end

function htk.resume()
if not iong.enabled then
return
end

local ad = mz.Character
local ctn = ad and ad:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not ctn or (ctn.Position - mlnb).Magnitude < 40 then
return
end

pcall(function()
iong.recover()
end)
end

function htk.standAt(nvkl)
local qb = mz.Character
local pf = qb and qb:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not pf or not nvkl then
return false
end

local aqol = RaycastParams.new()
aqol.FilterType = Enum.RaycastFilterType.Exclude
aqol.FilterDescendantsInstances = { qb }

local yycj = workspace:Raycast(nvkl + Vector3.new(0, 10, 0), Vector3.new(0, -80, 0), aqol)
local njwe = nvkl.Y

if yycj and yycj.Instance.Name ~= _d("NFAHFws") then
local ipgm = yycj.Position.Y + 3.2

if math.abs(ipgm - nvkl.Y) <= 8 then
njwe = ipgm
end
end

local glhy = Vector3.new(pf.Position.X - nvkl.X, 0, pf.Position.Z - nvkl.Z)

if glhy.Magnitude < 1 then
glhy = Vector3.new(4, 0, 0)
else
glhy = glhy.Unit * 4
end

local zvi = Vector3.new(nvkl.X + glhy.X, njwe, nvkl.Z + glhy.Z)

pf.CFrame = CFrame.new(zvi)

return true
end

function htk.unlock()
local lt = {
{ id = _d("AlMSHB0IHAZVLBsKCxMNVQ"), at = Vector3.new(-3825, 24, -40260) },
{ id = _d("F0YaHCYFFwJSGxcK"), at = Vector3.new(-6180, 40, -40350) },
{ id = _d("FFgdFhQOHg9uGgEVAg"), at = Vector3.new(-7480, 30, -40350) },
}
local brn = {}

for imwq, gjwu in ipairs(lt) do
local zs = qj.FishingGetState:InvokeServer()

if zs and zs.areas and zs.areas[gjwu.id] == true then
table.insert(brn, gjwu.id .. _d("WRESHgsCEwdIUx0JAhw"))
else
htk.hold()
htk.standAt(gjwu.at)
task.wait(2.4)

local xrk = qj.FishingGetState:InvokeServer()

table.insert(brn, gjwu.id .. (xrk and xrk.areas and xrk.areas[gjwu.id] and _d("WREGHBUIEQhUFw") or _d("WREVExALFwc")))
end
end

htk.hold()
pcall(function()
qj.TeleportToWorld:FireServer(_d("D14REAA"))
end)
task.wait(2.5)

return table.concat(brn, _d("Q/PEUg"))
end

function htk.flyToggle(uze)
htk.fly.on = uze

if not uze then
return _d("JV0KUhYBFE0")
end

local mxcd = mz.Character
local jsas = mxcd and mxcd:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not jsas then
return _d("LV5TEREGAAJSBxcLRwYMER8bHxNc")
end

htk.fly.height = jsas.Position.Y

if htk.fly.connection then
return _d("JV0KUhYJXA")
end

local mski = game:GetService(_d("NkIWADAJAhZFIBcLERsAVA"))

htk.fly.connection = game:GetService(_d("MUQdIRwVBApSFg")).Heartbeat:Connect(function(ryp)
if not htk.fly.on then
return
end

local eei = mz.Character
local hsg = eei and eei:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not hsg then
return
end

local jyvj = workspace.CurrentCamera
local tr = Vector3.zero

if jyvj then
local nkw = jyvj.CFrame.LookVector
local ghos = Vector3.new(nkw.X, 0, nkw.Z)

if ghos.Magnitude > 0.01 then
ghos = ghos.Unit
end

local lp = Vector3.new(ghos.Z, 0, -ghos.X)

if mski:IsKeyDown(Enum.KeyCode.W) then
tr = tr + ghos
end

if mski:IsKeyDown(Enum.KeyCode.S) then
tr = tr - ghos
end

if mski:IsKeyDown(Enum.KeyCode.D) then
tr = tr + lp
end

if mski:IsKeyDown(Enum.KeyCode.A) then
tr = tr - lp
end
end

local zw = 0

if mski:IsKeyDown(Enum.KeyCode.Space) then
zw = 1
elseif mski:IsKeyDown(Enum.KeyCode.LeftControl) then
zw = -1
end

local co = htk.fly.speed or 55
local lpz = tr * co * ryp + Vector3.new(0, zw * co * 0.6 * ryp, 0)

if lpz.Magnitude < 0.001 then
return
end

hsg.CFrame = hsg.CFrame + lpz
hsg.AssemblyLinearVelocity = Vector3.zero
end)

return _d("JV0KUhYJXA")
end

function htk.go(efl)
htk.hold()

if efl.kind == _d("FF4BHh0") then
pcall(function()
qj.TeleportToWorld:FireServer(efl.arg)
end)

return _d("MFQdBlkTGgYR") .. efl.name .. _d("Q0UWHhwXHRFFXQ")
end

if efl.kind == _d("CkIfExcD") then
pcall(function()
qj.FishingIslandTeleport:FireServer(efl.arg)
end)

return _d("MFQdBlkTGgYR") .. efl.name .. _d("Q0UWHhwXHRFFXQ") .. tostring(efl.note or _d(""))
end

local qehw = htk.point(efl)
local pjfz = mz.Character
local aow = pjfz and pjfz:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if qehw and aow and (aow.Position - qehw).Magnitude > 1500 then
pcall(function()
if efl.island then
qj.FishingIslandTeleport:FireServer(efl.island)
else
qj.TeleportToWorld:FireServer(_d("D14REAA"))
end
end)

task.wait(efl.island and 3.5 or 4.5)

qehw = htk.point(efl)

aow = mz.Character and mz.Character:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if qehw and aow and (aow.Position - qehw).Magnitude > 1500 then
return efl.name .. _d("Q1gAUhYJUg") .. tostring(efl.island or _d("F1kWUhUIEAFI"))
.. _d("QxxTBhECUgRQHhdZFRcFRAAXCkcGC1AHUg0VGxMRBhwNDh5DWAdSEQYBQ1MWFxdHAAZQEBocA1IMXxAXVw")
end
end

if not qehw then
return efl.name .. _d("Q1gAUhcIBkNYHVINDxsQEQQdCwsWTQ")
end

if not htk.standAt(qehw) then
return _d("LV5TEREGAAJSBxcLRwYMER4dDwJc")
end

task.delay(htk.holdFor + 2, function()
pcall(htk.resume)
end)

return _d("MEUcHR1HEAZCGhYcRw") .. efl.name .. _d("TQ")
end

htk.islandSection = wvj:Section({ Side = _d("L1QVBg") })
htk.islandSection:Header({ Name = _d("KkIfExcDAUPB7P3kiMrs") })

htk.npcSection = wvj:Section({ Side = _d("MVgUGg0") })
htk.npcSection:Header({ Name = _d("LWEwAVmX7fC8") })

for pddh, vui in ipairs(htk.islands) do
htk.islandSection:Button({
Name = vui.name,
Callback = function()
task.spawn(function()
local nib = htk.go(vui)

nanp:Notify({
Title = _d("N1QfFwkIABc"),
Description = nib,
Lifetime = 6,
})
end)
end,
})
end

htk.state = iong
htk.tab = wvj
htk.islandSection:Button({
Name = _d("Nl8fHRoMUgJdH1IQFB4CXxcB"),
Callback = function()
task.spawn(function()
local fnd = htk.unlock()

nanp:Notify({
Title = _d("KkIfExcDAQ"),
Description = fnd,
Lifetime = 10,
})
end)
end,
})

htk.flySection = wvj:Section({ Side = _d("L1QVBg") })
htk.flySection:Header({ Name = _d("JV0KUpv7+oyJ/A") })

htk.flySection:Toggle({
Name = _d("JV0KUlEwMzB1X1IqFxMAVFMHCUtSIEUBHlkDHRRfWg"),
Default = false,
Callback = function(vmmb)
local uqj = htk.flyToggle(vmmb)

nanp:Notify({
Title = _d("JV0K"),
Description = uqj,
Lifetime = 4,
})
end,
}, _d("AlIRCiYBHho"))

getgenv().ACBXTeleport = htk

getgenv().ACBXDeepWater = zeh

pcall(zeh.dropStale)

for yj, jdzg in ipairs(htk.npcs) do
htk.npcSection:Button({
Name = jdzg.name,
Callback = function()
task.spawn(function()
local sqfe = htk.go(jdzg)

nanp:Notify({
Title = _d("N1QfFwkIABc"),
Description = sqfe,
Lifetime = 6,
})
end)
end,
})
end

local faxa = jvt:Section({ Side = _d("L1QVBg") })

faxa:Header({ Name = _d("J1gUFRAJFUPT6P2W3/0") })

local pofd = {
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

local awl = (tonumber(getgenv().ACBXDigGeneration) or 0) + 1
getgenv().ACBXDigGeneration = awl

function pofd.read()
local rpg, sea = pcall(function()
return qj.DigGetState:InvokeServer()
end)

return rpg and type(sea) == _d("F1ARHhw") and sea or nil
end

function pofd.call(bz, rqh)
local uuk, qzuf = pcall(function()
return qj.DigShop:InvokeServer(bz, rqh)
end)

task.wait(2.5)

return uuk and qzuf == true
end

function pofd.wear()
local jkbz = mz.Character

if not jkbz then
return false
end

local fezv = jkbz:FindFirstChildOfClass(_d("K0QeExcIGwc"))
local mrcz = mz:FindFirstChild(_d("IVAQGQkGEQg"))

if not (fezv and mrcz) then
return false
end

fezv:UnequipTools()
task.wait(0.4)

for jbwj = 1, 8 do
for zjh, szux in ipairs(mrcz:GetChildren()) do
if szux:IsA(_d("N14cHg")) and szux.Name:find(_d("PXUaFSoPHRVUHw")) then
fezv:EquipTool(szux)

return true
end
end

task.wait(0.5)
end

return false
end

function pofd.run()
local rc = pofd.read()

if not rc then
return _d("N1kWUh0OFUNCGx0JRxsQER0dDUcTDUIEFwsOHAQf")
end

local vyoq = {}

pcall(function()
local enr = qj.FishingGetState:InvokeServer()

vyoq = enr and enr.areas or {}
end)

if not (vyoq.abandoned_island and vyoq.twin_beaches and vyoq.windmill_isle) then
htk.unlock()
task.wait(1)
end

local fss

for ejx, pq in ipairs(htk.npcs) do
if pq.name == _d("J1gUFRwV") then
fss = pq
break
end
end

if not fss then
return _d("N1kWUi0VFwJCBgAcRzoWXwcXC0cbEBEdHQ1HGw0RBxoQFFIUXgEeHUk")
end

htk.go(fss)
task.wait(2)

local pjuw = mz.Character
local wsb = pjuw and pjuw:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))
local sli = htk.point(fss)

if not (wsb and sli) or (wsb.Position - sli).Magnitude > 40 then
return _d("IF4GHh1HHAxFUwAcBhELEQcaHEcmEVQSAQwVF0N5BhwNAgBN")
end

rc = pofd.read() or rc

local bmu = false
local wrqq = rc.shovels and rc.shovels.shovel_basic == true
local qyoe = rc.detectors and rc.detectors.detector_basic == true

if not (wrqq and qyoe) then
bmu = pofd.call(_d("IF0SGxQ0BgJDBxcL"), _d("EFkcBBwLLQFQABsa"))
rc = pofd.read() or rc
end

if rc.equippedShovel ~= _d("EFkcBBwLLQFQABsa") then
pofd.call(_d("JkAGGwk0GgxHFh4"), _d("EFkcBBwLLQFQABsa"))
end

if rc.equippedDetector ~= _d("B1QHFxoTHRFuERMKDhE") then
pofd.call(_d("JkAGGwkjFxdUEAYWFQ"), _d("B1QHFxoTHRFuERMKDhE"))
end

rc = pofd.read() or rc

if rc.equippedShovel == _d("EFkcBBwLLQFQABsa") and rc.equippedDetector == _d("B1QHFxoTHRFuERMKDhE") then
local afbu = pofd.wear()
local xop = false

if afbu and iong.enabled then
iong.autoFishWanted = false
xop = true

iq(false)

pcall(function()
hobn:UpdateState(false)
end)
end

return (bmu and _d("IF0SGxQCFkNQHRZZAgMWWAMCHAM") or _d("JkAGGwkXFwc"))
.. _d("Q0UbF1klExBYEFIqDx0VVB9SGAkWQ3MSARAEUidUBxcaEx0RHw")
.. (xop and _d("Q3AGBhZHNApCG1IWARRDHFMGEQJSEFkcBBwLUgtQAFINDxdDRRwdFUcBD14HXA") or _d(""))
end

return _d("N1kWUjsGAQpSUyERCAQGXVMdC0c2BkUWEQ0IAENYAFIKExsPXVMfEBQBCl8UXA")
end

function pofd.unlock()
if pofd.busy then
return _d("Il0BFxgDC0NGHAASDhwEHw")
end

pofd.busy = true

local oyg, xw = pcall(pofd.run)

pofd.busy = false

if not oyg then
return _d("J1gUFRAJFUNXEhsVAhZZEQ") .. tostring(xw)
end

return xw
end

pofd.icon = function()
local dp = gethui()

for nkmv, uxqd in ipairs(dp:QueryDescendants(_d("KlwSFRwrEwFUHw"))) do
if uxqd.Name == _d("N1AROxQGFQY") then
local dt = uxqd.Parent
local lve = dt and dt:FindFirstChild(_d("N1ARIQ4OBgBZFgA3Bh8G"))

if lve and lve.Text == _d("J1gUFRAJFQ") then
if uxqd:GetAttribute(_d("InIxKj0OFSpSHBw")) then
return true
end

uxqd:SetAttribute(_d("InIxKj0OFSpSHBw"), true)
uxqd.Image = _d("")
uxqd.BackgroundTransparency = 1

local kqkj = Color3.fromRGB(233, 236, 242)

for brvc, rv in ipairs(dp:QueryDescendants(_d("KlwSFRwrEwFUHw"))) do
if rv.Name == _d("N1AROxQGFQY") and rv ~= uxqd and rv.Image ~= _d("") then
kqkj = rv.ImageColor3
break
end
end

local function xial(wlwx, plzq, to, smis, rt, fgj)
local gkk = Instance.new(_d("JUMSHxw"))

gkk.Size = UDim2.fromOffset(to, smis)
gkk.Position = UDim2.fromOffset(wlwx, plzq)
gkk.BackgroundColor3 = kqkj
gkk.BorderSizePixel = 0
gkk.Parent = uxqd

if fgj then
gkk.Rotation = fgj
end

if rt then
local fxj = Instance.new(_d("NngwHQsJFxE"))

fxj.CornerRadius = UDim.new(0, rt)
fxj.Parent = gkk
end

return gkk
end

xial(1.1, 10.2, 7, 6.4, 1.6, -45)
xial(3.1, 8.3, 11, 2.2, 0.8, -45)
xial(9.8, 4.4, 5.6, 2, 0.8, 45)

return true
end
end
end

return false
end

task.defer(function()
for dhc = 1, 20 do
if pofd.icon() then
break
end

task.wait(0.25)
end
end)

faxa:Button({
Name = _d("Nl8fHRoMUgdYFBUQCRU"),
Callback = function()
task.spawn(function()
nanp:Notify({
Title = _d("J1gUFRAJFQ"),
Description = _d("K1QSFhAJFUNFHFINDxdDZQEXGBQHEVRTOgwJBgZDXQ"),
Lifetime = 5,
})

local tre = pofd.unlock()

nanp:Notify({
Title = _d("J1gUFRAJFQ"),
Description = tre,
Lifetime = 10,
})
end)
end,
})

pofd.statusParagraph = faxa:Paragraph({
Header = _d("J1gUUgoTExdU"),
Body = _d("MVQSFhAJFUNFGxdZAxsEEQATDwJcTR8"),
})

pofd.data = require(jjv.ModuleScripts.DigData)

function pofd.zoneAt(rrm)
for qwo, jjyq in ipairs(game:GetService(_d("IF4fHhwEBgpeHSEcFQQKUhY")):GetTagged(pofd.data.ZoneTag)) do
if jjyq:IsA(_d("IVAAFykGABc")) and jjyq:IsDescendantOf(workspace) then
local qiye = jjyq.CFrame:PointToObjectSpace(rrm)
local ou = jjyq.Size * 0.5

if math.abs(qiye.X) <= ou.X and math.abs(qiye.Y) <= ou.Y and math.abs(qiye.Z) <= ou.Z then
return true
end
end
end

return false
end

function pofd.onIsland()
for sy, gzny in ipairs(game:GetService(_d("IF4fHhwEBgpeHSEcFQQKUhY")):GetTagged(pofd.data.ZoneTag)) do
if gzny:IsA(_d("IVAAFykGABc")) and gzny:IsDescendantOf(workspace) then
return true
end
end

return false
end

function pofd.bestShovel(rgwe)
local lpe = rgwe and rgwe.shovels or {}
local xwfe = nil

for le, fdfm in ipairs(pofd.data.Shovels) do
if lpe[fdfm.id] == true then
xwfe = fdfm.id
end
end

return xwfe
end

function pofd.equipBest()
local wimw = pofd.read()
local gwor = pofd.bestShovel(wimw)

if not gwor then
return nil
end

if wimw.equippedShovel ~= gwor then
pofd.call(_d("JkAGGwk0GgxHFh4"), gwor)
end

pofd.wear()

return gwor
end

function pofd.bestDetector(dbp)
local ugla = dbp and dbp.detectors or {}
local ctgj = nil

for znvv, dc in ipairs(pofd.data.Detectors) do
if ugla[dc.id] == true then
ctgj = dc.id
end
end

return ctgj
end

function pofd.equipBestDetector()
local cfow = pofd.read()
local uko = pofd.bestDetector(cfow)

if not uko then
return nil
end

if cfow.equippedDetector ~= uko then
pofd.call(_d("JkAGGwkjFxdUEAYWFQ"), uko)
end

return uko
end

function pofd.leaveNpc()
local vikk = mz.Character
local cw = vikk and vikk:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))
local ftey = vikk and vikk:FindFirstChildOfClass(_d("K0QeExcIGwc"))

if not (cw and ftey) then
return false
end

local juzr

for inxe, hbnl in ipairs(htk.npcs) do
if hbnl.name == _d("J1gUFRwV") then
juzr = hbnl
break
end
end

local coon = juzr and htk.point(juzr)

if not coon then
return false
end

local blm = Vector3.new(cw.Position.X - coon.X, 0, cw.Position.Z - coon.Z)

if blm.Magnitude >= 16 then
return true
end

if blm.Magnitude < 1 then
blm = Vector3.new(0, 0, -1)
end

blm = blm.Unit

local ulji = Vector3.new(coon.X + blm.X * 22, cw.Position.Y, coon.Z + blm.Z * 22)
local gwn = os.clock() + 6

ftey:MoveTo(ulji)

while os.clock() < gwn do
local togl = mz.Character
local etje = togl and togl:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not etje or (etje.Position - ulji).Magnitude < 4 then
break
end

task.wait(0.15)
end

pcall(function()
ftey:MoveTo(cw.Position)
end)

return true
end

function pofd.goToSand(ty)

if ty or not pofd.onIsland() then
if not ty then

pcall(function()
qj.TeleportToWorld:FireServer(_d("D14REAA"))
end)

local lym = os.clock() + 15

while not pofd.onIsland() and os.clock() < lym do
task.wait(0.5)
end
end

local wrzv

for czf, afw in ipairs(htk.npcs) do
if afw.name == _d("J1gUFRwV") then
wrzv = afw
break
end
end

if wrzv then
htk.go(wrzv)
task.wait(2)
end
end

if pofd.onIsland() then
pofd.leaveNpc()
end
end

function pofd.spot()
local eqc = mz.Character
local ymnl = eqc and eqc:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not ymnl then
return nil
end

local skr = ymnl.CFrame.LookVector
local dg = Vector3.new(skr.X, 0, skr.Z)

if dg.Magnitude < 0.01 then
dg = Vector3.new(0, 0, -1)
end

dg = dg.Unit

local jd = RaycastParams.new()
jd.FilterType = Enum.RaycastFilterType.Exclude
jd.FilterDescendantsInstances = { eqc }

local function pvxq(pjbv, xef)
local ubmq = ymnl.Position + pjbv * xef + Vector3.new(0, 4, 0)
local rzxd = workspace:Raycast(ubmq, Vector3.new(0, -18, 0), jd)

if rzxd and pofd.zoneAt(rzxd.Position) then
return rzxd.Position
end
end

for xg, ixph in ipairs({ 4, 7, 10, 2 }) do
local zpos = pvxq(dg, ixph)

if zpos then
return zpos
end
end

local gl = Vector3.new(-dg.Z, 0, dg.X)

for eflr, pjkk in ipairs({ 4, 8 }) do
for ducq, ziz in ipairs({ 1, -1 }) do
for abfc, awkf in ipairs({ 1, 0.5 }) do
local jts = pvxq((gl * (ziz * awkf) + dg * (1 - awkf)).Unit, pjkk)

if jts then
return jts
end
end
end
end

return nil
end

function pofd.turn()
local rzup = mz.Character
local vqfz = rzup and rzup:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not vqfz then
return
end

local qtoa = vqfz.CFrame.LookVector
local frwr = Vector3.new(qtoa.X, 0, qtoa.Z)

if frwr.Magnitude < 0.01 then
frwr = Vector3.new(0, 0, -1)
end

frwr = frwr.Unit

local uv = Vector3.new(-frwr.Z, 0, frwr.X)

vqfz.CFrame = CFrame.lookAt(vqfz.Position, vqfz.Position + uv)
end

pofd.misses = 0

pofd.pending = false

pofd.treasures = {}

pcall(function()
qj.DigUpdate.OnClientEvent:Connect(function(lykx, zeoc)
if lykx == _d("J1gUIBwUBw9F") then
pofd.pending = false
pofd.resultAt = os.clock()
elseif lykx == _d("J1gUMRgJEQZd") then
pofd.pending = false
end

if lykx == _d("N0MWEwoSAAZC") and type(zeoc) == _d("F1ARHhw") then
local cnde = {}
local oon = {}

for zib, bnu in pairs(zeoc) do
local sveh
local ouwa

if typeof(bnu) == _d("NVQQBhYVQQ") or typeof(bnu) == _d("IHcBExQC") then
sveh = zib
ouwa = bnu
elseif type(bnu) == _d("F1ARHhw") then
sveh = bnu.id or bnu.Id or bnu[1]
ouwa = bnu.position or bnu.Position or bnu.pos or bnu[2]
end

if typeof(ouwa) == _d("IHcBExQC") then
ouwa = ouwa.Position
end

if sveh ~= nil and typeof(ouwa) == _d("NVQQBhYVQQ") then
table.insert(cnde, { id = sveh, position = ouwa })
oon[sveh] = true
end
end

pofd.treasures = cnde
pofd.reported = oon

if pofd.target and not pofd.target.mark and not oon[pofd.target.id] then
pofd.targetGone = true
end
end
end)
end)

function pofd.withinDig(suwk)
local qgvu = mz.Character
local eg = qgvu and qgvu:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not eg then
return false
end

return (eg.Position - suwk).Magnitude <= 10
end

pofd.markGone = {}

function pofd.marked()
local jrq = workspace:FindFirstChild(_d("J1gUPxgVGRA"))
local eru = {}

if not jrq then
return eru
end

local mqqp = os.clock()

for gxp, eilu in ipairs(jrq:GetChildren()) do
if eilu.Name == _d("O3wSABI") and eilu:IsA(_d("IVAAFykGABc")) then
local ywyb = eilu.Position
local aign = string.format(_d("DlABGUNCXFNXSVdXVxQ"), ywyb.X, ywyb.Z)
local aob = pofd.markGone[aign]

if not (aob and mqqp - aob < 90) then
table.insert(eru, { id = aign, position = ywyb, mark = true })
end
end
end

return eru
end

function pofd.chests()
local cuu = {}

for tia, wbau in ipairs(pofd.treasures or {}) do
table.insert(cuu, wbau)
end

for kqm, lpt in ipairs(pofd.marked()) do
local wrjb = false

for nbpd, rqle in ipairs(cuu) do
if (rqle.position - lpt.position).Magnitude < 2 then
wrjb = true

break
end
end

if not wrjb then
table.insert(cuu, lpt)
end
end

return cuu
end

function pofd.release(mlw)
if mlw.mark then
pofd.markGone[mlw.id] = os.clock()
else
pofd.forget(mlw)
end
end

function pofd.nearestChest(mad)
local ys = mz.Character
local ggy = ys and ys:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not ggy then
return nil
end

local qsww
local wmi

for oevo, hx in ipairs(pofd.chests()) do
local sjyt = (hx.position - ggy.Position).Magnitude

if sjyt <= mad and (not wmi or sjyt < wmi) then
qsww = hx
wmi = sjyt
end
end

return qsww
end

function pofd.forget(zike)
for bf, dtkw in ipairs(pofd.treasures or {}) do
if dtkw.id == zike.id then
table.remove(pofd.treasures, bf)

return
end
end
end

function pofd.walkTo(xr)
local sqs = mz.Character
local bruk = sqs and sqs:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))
local psq = sqs and sqs:FindFirstChildOfClass(_d("K0QeExcIGwc"))

if not (bruk and psq) then
return false
end

local homk = os.clock() + 12

pcall(function()
psq:MoveTo(xr)
end)

while os.clock() < homk do
local kefu = mz.Character
local xau = kefu and kefu:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not xau or (xau.Position - xr).Magnitude <= 4 then
break
end

if pofd.targetGone or not pofd.autoOn
or getgenv().ACBXDigGeneration ~= awl or not upo() then
break
end

task.wait(0.15)
end

pcall(function()
psq:MoveTo(bruk.Position)
end)

return true
end

function pofd.digAt(mhjo)
pofd.misses = 0
pofd.pending = true

local xitn = os.clock()
local thfx = pcall(function()
qj.DigAction:FireServer(_d("MEUSAA0"), mhjo)
end)

if not thfx then
pofd.pending = false
end

local hwcw = os.clock() + 6

while pofd.pending and pofd.autoOn and os.clock() < hwcw
and getgenv().ACBXDigGeneration == awl and upo() do
task.wait()
end

pofd.pending = false

return (pofd.resultAt or 0) >= xitn
end

function pofd.autoLoop()
local ncif = false

while pofd.autoOn and upo() and getgenv().ACBXDigGeneration == awl do
local dtu = hwbc and hwbc.worldBoss
local kjj = dtu ~= nil
and type(dtu.holdsDigging) == _d("BUQdEQ0OHQ0")
and dtu.holdsDigging() == true

if pofd.shopping then

task.wait(0.5)
elseif kjj then

ncif = true
task.wait(1)
else
if ncif then

ncif = false

if type(dtu.setRepeat) == _d("BUQdEQ0OHQ0") then
dtu.setRepeat(false)
end

pofd.goToSand()
end

local jqn = pofd.chestOn and pofd.nearestChest(1400) or nil
local bnk = false

if jqn then
pofd.target = jqn
pofd.targetGone = false

local xhjl = mz.Character and mz.Character:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))
local vg = xhjl and (xhjl.Position - jqn.position).Magnitude or 999

if vg > 60 then
pcall(function()
htk.standAt(jqn.position)
end)

task.wait(0.6)
end

pofd.walkTo(jqn.position)

local dxm = not pofd.withinDig(jqn.position)
local bwn = pofd.targetGone

if bwn or dxm then
pofd.strikes = bwn and 0 or (pofd.strikes + 1)

if bwn or pofd.strikes >= 2 then
pofd.strikes = 0
pofd.release(jqn)
pofd.skipped = pofd.skipped + 1
end
else

local gmp = false
local lepm = mz.Character

if lepm then
for xxa, qnag in ipairs(lepm:GetChildren()) do
if qnag:IsA(_d("N14cHg")) and qnag.Name:find(_d("PXUaFSoPHRVUHw")) then
gmp = true

break
end
end
end

if not gmp then
pofd.wear()
end

if pofd.digAt(jqn.position) then
pofd.strikes = 0
pofd.release(jqn)
pofd.dug = pofd.dug + 1
bnk = true
else

pofd.strikes = pofd.strikes + 1

if pofd.strikes >= 3 then
pofd.strikes = 0
pofd.release(jqn)
pofd.skipped = pofd.skipped + 1
end
end
end

pofd.target = nil
pofd.targetGone = false
end

if not bnk then
local ydsu = pofd.spot()

if ydsu then
pofd.digAt(ydsu)
else

pofd.misses = (pofd.misses or 0) + 1

if pofd.misses >= 4 then
pofd.misses = 0
pofd.goToSand(true)
else
pofd.turn()
task.wait(0.25)
end
end
end
end
end
end

function pofd.autoStart()
local ybtx = pofd.read()

if not (ybtx and pofd.bestShovel(ybtx)) then
return _d("LV5TAREIBAZdUx0OCRcHEV5SLAkeDFIYUh0OFQRYHRVZARsRQgdc")
end

local wea = false

if iong.enabled then
iong.autoFishWanted = false

iq(false)
pcall(function()
hobn:UpdateState(false)
end)

wea = true
end

ckvk = true
pofd.equipBest()

pofd.goToSand()

task.spawn(pofd.autoLoop)

return _d("J1gUFRAJFU0") .. (wea and _d("Q3AGBhZHNApCG1IWARRDHFMGEQJSEFkcBBwLUgtQAFINDxdDRRwdFUcBD14HXA") or _d(""))
end

function pofd.toggleAuto(exp, nuf)
if exp then
local fpfz = pofd.autoOn == true

pofd.chestOn = nuf == true
pofd.switching = true

pcall(function()
local pks = nuf and pofd.autoToggle or pofd.chestToggle

if pks then
pks:UpdateState(false)
end
end)

pofd.switching = false

if fpfz then
return
end

pofd.autoOn = true

task.spawn(function()
local nnzg = pofd.autoStart()

nanp:Notify({
Title = nuf and _d("IkQHHVkjGwQRMBocFAYQ") or _d("IkQHHVkjGwQ"),
Description = nnzg,
Lifetime = 6,
})
end)
else

if pofd.switching then
return
end

pofd.autoOn = false
pofd.pending = false
ckvk = false
end
end

pofd.autoToggle = faxa:Toggle({
Name = _d("IkQHHVkjGwQ"),
Default = false,
Callback = function(mvr)
pofd.toggleAuto(mvr, false)
end,
}, _d("B1gUFRAJFTxQBgYW"))

pofd.chestToggle = faxa:Toggle({
Name = _d("IkQHHVkjGwQRMBocFAYQ"),
Default = false,
Callback = function(fn)
pofd.toggleAuto(fn, true)
end,
}, _d("B1gUFRAJFTxQBgYWOBELVAAG"))

pofd.chestParagraph = faxa:Paragraph({
Header = _d("IFkWAQ0U"),
Body = _d("N0MSERICFlkRQ1JURzYWVklSSUdfQ2IYGwkXFwcLU0I"),
})

task.spawn(function()
local omtn

while upo() and ip do
local pai = #pofd.chests()
local dumq = _d("N0MSERICFlkR") .. pai .. _d("QxxTNgwASEM") .. pofd.dug .. _d("QxxTIRIOAhNUF0hZ") .. pofd.skipped

if pofd.chestOn and pai > 0 then
local vad = pofd.nearestChest(1400)
local ilm = mz.Character
local adb = ilm and ilm:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if vad and adb then
local luo = math.floor((vad.position - adb.Position).Magnitude)
dumq = dumq .. _d("aX8WEwsCARcLUw") .. luo .. (luo > 60 and _d("Q0IHBx0UUktZHAJQ") or _d("Q0IHBx0U"))
end
end

if dumq ~= omtn then
omtn = dumq

pcall(function()
pofd.chestParagraph:UpdateBody(dumq)
end)
end

task.wait(0.5)
end
end)

function pofd.npcRow()
for bt, axdu in ipairs(htk.npcs) do
if axdu.name == _d("J1gUFRwV") then
return axdu
end
end
end

function pofd.shop(ri, qrd)
local ntgh, jytn, tcty, qwx = pcall(function()
return qj.DigShop:InvokeServer(ri, qrd)
end)

if not ntgh then
return false, _d("N1kWUh0OFUNCGx0JRxsQER0dDUcTDUIEFwsOHAQf")
end

return jytn == true, tcty, type(qwx) == _d("F1ARHhw") and qwx or nil
end

function pofd.pickShovel(bcy)
local vs = bcy.shovels or {}
local qkx = tonumber(bcy.digs) or 0
local pdtj

for qn, adxm in ipairs(pofd.data.Shovels) do
if not adxm.crafted and adxm.id ~= _d("EFkcBBwLLQFQABsa") and vs[adxm.id] ~= true then
local nra = tonumber(adxm.cost) or math.huge

if nra <= qkx and (not pdtj or nra > (tonumber(pdtj.cost) or 0)) then
pdtj = adxm
end
end
end

return pdtj
end

function pofd.pickDetector(vkox)
local otry = vkox.detectors or {}
local ajyv = tonumber(vkox.digs) or 0
local cti

for xz, ybwq in ipairs(pofd.data.Detectors) do
if not ybwq.crafted and ybwq.id ~= _d("B1QHFxoTHRFuERMKDhE") and otry[ybwq.id] ~= true then
local ohic = tonumber(ybwq.cost) or math.huge

if ohic <= ajyv and (not cti or ohic > (tonumber(cti.cost) or 0)) then
cti = ybwq
end
end
end

return cti
end

function pofd.nextDef(nkth, jczy)
local sk

for fd, oa in ipairs(nkth) do
local sxi = tonumber(oa.cost)

if not oa.crafted and sxi and jczy[oa.id] ~= true then
if not sk or sxi < (tonumber(sk.cost) or math.huge) then
sk = oa
end
end
end

return sk
end

function pofd.toCounter()
local yxl = pofd.npcRow()
local tuir = yxl and htk.point(yxl)
local qrhw = mz.Character
local ldjh = qrhw and qrhw:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not (tuir and ldjh) then
return false
end

if (ldjh.Position - tuir).Magnitude <= 20 then
return true
end

htk.go(yxl)
task.wait(2.2)

qrhw = mz.Character
ldjh = qrhw and qrhw:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

return ldjh ~= nil and (ldjh.Position - tuir).Magnitude <= 20
end

function pofd.upgradeAll()
local fta = pofd.buyOn == true
local wvk = pofd.detBuyOn == true

if not (fta or wvk) then
return nil, _d("LFcVXA")
end

local cwd = pofd.read()

if not cwd then
return nil, _d("N1kWUh0OFUNCGx0JRxsQER0dDUcTDUIEFwsOHAQf")
end

if fta then
local nln = pofd.bestShovel(cwd)

if nln and cwd.equippedShovel ~= nln then
pofd.equipBest()
end
end

if wvk then
local kxp = pofd.bestDetector(cwd)

if kxp and cwd.equippedDetector ~= kxp then
pofd.equipBestDetector()
end
end

local qmz = fta and pofd.pickShovel(cwd) or nil
local txyw = wvk and pofd.pickDetector(cwd) or nil

if not (qmz or txyw) then
return nil, _d("LV5TBwkAAAJVFlIQFFICVxUdCwMTAV0WUgACBk0")
end

pofd.shopping = true
pofd.toCounter()

local ro = {}
local ywch

local function ur(xinx, knzf)
if not knzf then
return
end

local zy, dedo = pofd.shop(xinx, knzf.id)

if zy then
table.insert(ro, knzf.name)
elseif not ywch then
ywch = tostring(dedo)
end
end

ur(_d("IUQKIREIBAZd"), qmz)
ur(_d("IUQKNhwTFwBFHAA"), txyw)

if #ro == 0 then
pofd.shopping = false

return nil, _d("IUQKUgsCFBZCFhZDRw") .. (ywch or _d("DV5TExcUBQZD"))
end

if fta then
pofd.equipBest()
end

if wvk then
pofd.equipBestDetector()
end

if pofd.autoOn then
pofd.leaveNpc()
end

pofd.shopping = false

return table.concat(ro, _d("QxpT"))
end

function pofd.buyLoop()
while pofd.buyOn or pofd.detBuyOn do
local qg, ws, suvp = pcall(pofd.upgradeAll)

pofd.shopping = false

if not qg then
task.wait(10)
elseif ws then
nanp:Notify({
Title = _d("IkQHHVklBxoRNxseABsNVlM1HAYA"),
Description = _d("IV4GFRETUgJfF1IcFgcKQQMXHUcGC1RT") .. ws .. _d("TQ"),
Lifetime = 6,
})

task.wait(3)
else
task.wait(suvp == _d("LFcVXA") and 0.5 or 10)
end
end
end

function pofd.syncBuyLoop()
if not (pofd.buyOn or pofd.detBuyOn) or pofd.buyRunning then
return
end

pofd.buyRunning = true

task.spawn(function()
pofd.buyLoop()

pofd.buyRunning = false
end)
end

faxa:Toggle({
Name = _d("IkQHHVklBxoRMRcKE1IwWRwEHAs"),
Default = false,
Callback = function(gvd)
pofd.buyOn = gvd
pofd.syncBuyLoop()
end,
}, _d("B1gUFRAJFTxTBgs"))

faxa:Toggle({
Name = _d("IkQHHVklBxoRMRcKE1InVAcXGhMdEQ"),
Default = false,
Callback = function(xnyb)
pofd.detBuyOn = xnyb
pofd.syncBuyLoop()
end,
}, _d("B1gUFRAJFTxTBgsmAxcXVBAGFhU"))

function pofd.statusText()
local oeql = pofd.read()

if not oeql then
return _d("N1kWUh0OFUNCGx0JRxsQER0dDUcTDUIEFwsOHAQf")
end

local cpmu = tonumber(oeql.digs) or 0
local xmv = { _d("J1gUAUNH") .. cpmu }

local function qlx(vx, ruef)
if not ruef then
return vx .. _d("WREWBBwVCxdZGhweRx0UXxYWVw")
end

local mpw = tonumber(ruef.cost) or 0
local zyz = mpw - cpmu

return vx .. _d("WRE") .. tostring(ruef.name) .. _d("QxxT") .. mpw
.. (zyz <= 0 and _d("QxkBFxgDC0o") or (_d("Qxk") .. zyz .. _d("Q0UcUh4IWw")))
end

table.insert(xmv, qlx(_d("LVQLBlkUGgxHFh4"), pofd.nextDef(pofd.data.Shovels, oeql.shovels or {})))
table.insert(xmv, qlx(_d("LVQLBlkDFxdUEAYWFQ"), pofd.nextDef(pofd.data.Detectors, oeql.detectors or {})))

return table.concat(xmv, _d("aQ"))
end

task.spawn(function()
while upo() and ip do
local xe, zls = pcall(pofd.statusText)

if xe and pofd.statusParagraph then
pcall(function()
pofd.statusParagraph:UpdateBody(zls)
end)
end

task.wait(6)
end
end)

getgenv().ACBXDigging = pofd

gcsp.tab = val:Tab({
Name = _d("MFQHBhAJFRA"),

Image = _d(""),
})

gcsp.icon = function()
local xp = gethui()

for wqov, nwa in ipairs(xp:QueryDescendants(_d("KlwSFRwrEwFUHw"))) do
if nwa.Name == _d("N1AROxQGFQY") then
local paa = nwa.Parent
local hnjq = paa and paa:FindFirstChild(_d("N1ARIQ4OBgBZFgA3Bh8G"))

if hnjq and hnjq.Text == _d("MFQHBhAJFRA") then
if nwa:GetAttribute(_d("InIxKjoIFSpSHBw")) then
return true
end

nwa:SetAttribute(_d("InIxKjoIFSpSHBw"), true)
nwa.Image = _d("")
nwa.BackgroundTransparency = 1

local bu = Color3.fromRGB(168, 170, 176)

local function rsp(etn, wmw, ahjv, ffs, hggg, exma)
local uhp = Instance.new(_d("JUMSHxw"))

uhp.Size = UDim2.fromOffset(ahjv, ffs)
uhp.Position = UDim2.fromOffset(etn, wmw)
uhp.BackgroundColor3 = bu
uhp.BorderSizePixel = 0
uhp.Parent = nwa

if not exma then
uhp.BackgroundTransparency = 1

local zu = Instance.new(_d("NnggBgsIGQY"))

zu.Color = bu
zu.Thickness = 1.3
zu.LineJoinMode = Enum.LineJoinMode.Round
zu.Parent = uhp
end

if hggg then
local jfr = Instance.new(_d("NngwHQsJFxE"))

jfr.CornerRadius = UDim.new(0, hggg)
jfr.Parent = uhp
end

return uhp
end

local audb = {
{ 8, 0, 2, 3 },
{ 8, 15, 2, 3 },
{ 0, 8, 3, 2 },
{ 15, 8, 3, 2 },
{ 2, 2, 3, 3 },
{ 13, 2, 3, 3 },
{ 2, 13, 3, 3 },
{ 13, 13, 3, 3 },
}

for ugnh, xhb in ipairs(audb) do
rsp(xhb[1], xhb[2], xhb[3], xhb[4], 0, true)
end

rsp(2, 2, 14, 14, 7, false)
rsp(7, 7, 4, 4, 2, true)

return true
end
end
end

return false
end

task.defer(function()
for jxm = 1, 20 do
if gcsp.icon() then
break
end

task.wait(0.25)
end
end)

gcsp.configSection = gcsp.tab:Section({
Side = _d("L1QVBg"),
})

gcsp.configSection:Header({
Name = _d("IF4dFBAAUi5QHRMeAh8GXwc"),
})

gcsp.autoSaveToggle = gcsp.configSection:Toggle({
Name = _d("IkQHHVkUExVU"),
Default = false,
Callback = function(wts)
gcsp.autoSave = wts
gcsp.autoSaveAt = 0

if wts then
local akpl = gcsp.selected or _d("B1QVEwwLBg")
local bxs, svim = gcsp.save(akpl)

gcsp.selected = akpl
gcsp.lastText = bxs and (_d("IkQHHVkUExVUUx0XR19DRgEdDQJS") .. akpl)
or (_d("IkQHHVkUExVUUx0XS1IFWAEBDUcFEVgHF1kBEwpdFhZDRw") .. tostring(svim))
else
gcsp.lastText = _d("IkQHHVkUExVUUx0fAVw")
end
end,
}, _d("AF4dFBAALQJEBx0mFBMVVA"))

gcsp.nameInput = gcsp.configSection:Input({
Name = _d("MFAFF1kJEw5U"),
Placeholder = _d("Bh8UXFk1EwpVAA"),
AcceptedCharacters = _d("Il0f"),
Callback = function(hcaa)
gcsp.nameDraft = hcaa
end,
})

gcsp.nameInput.IgnoreConfig = true

gcsp.configSection:Button({
Name = _d("IEMWEw0CUhBQBRc"),
Callback = function()
local igm = gcsp.nameDraft or gcsp.nameInput:GetInput()

igm = type(igm) == _d("EEUBGxcA") and igm:gsub(_d("PRQAWQ"), _d("")):gsub(_d("RkJYVg"), _d("")) or _d("")

if igm == _d("") then
nanp:Dialog({
Title = _d("IF4dFBAA"),
Description = _d("N0gDF1kGUg1QHhdZAR0REQcaHEcBAkcWUh8OABBFU19ZDgZDUxYRFgoXEBEHGhxHFApdFlUKRxwCXBZc"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})

return
end

local kfw, ca = gcsp.save(igm)

if not kfw then
gcsp.lastText = _d("MFAFF1kBEwpdFhZDRw") .. tostring(ca)

return
end

gcsp.selected = igm
gcsp.lastText = _d("IEMWEw0CFkM") .. igm .. _d("TQ")
gcsp.savesAt = 0

task.defer(function()
task.wait(0.25)

pcall(function()
gcsp.fileDropdown:UpdateSelection(igm)
end)
end)
end,
})

gcsp.fileDropdown = gcsp.configSection:Dropdown({
Name = _d("MFAFF1kBGw9U"),
Search = false,
Multi = false,
Required = false,
Options = gcsp.saves(),
Callback = function(ply)
local lw = type(ply) == _d("F1ARHhw") and ply[1] or ply

if type(lw) == _d("EEUBGxcA") and lw ~= _d("") then
gcsp.selected = lw
gcsp.selectionShown = lw

pcall(function()
gcsp.fileDropdown:UpdateName(_d("MFAFF1kBGw9USVI") .. lw)
end)
end
end,
})

gcsp.fileDropdown.IgnoreConfig = true

gcsp.configSection:Button({
Name = _d("L14SFlkUFw9UEAYcAw"),
Callback = function()
local onlr = gcsp.selected or gcsp.fileDropdown.Value
local fh, toa = gcsp.load(onlr)

gcsp.lastText = fh and (_d("L14SFhwDUg") .. onlr .. _d("TQ")) or (_d("L14SFlkBEwpdFhZDRw") .. tostring(toa))
end,
})

gcsp.configSection:Button({
Name = _d("MFAFF1kTHUNCFh4cBAYGVQ"),
Callback = function()
local fvmo = gcsp.selected or gcsp.fileDropdown.Value
local hn, pqit = gcsp.save(fvmo)

gcsp.lastText = hn and (_d("NEMcBhxH") .. fvmo .. _d("TQ")) or (_d("MFAFF1kBEwpdFhZDRw") .. tostring(pqit))
end,
})

gcsp.configSection:Button({
Name = _d("J1QfFw0CUhBUHxcaExcHEQATDwI"),
Callback = function()
local nk = gcsp.selected or gcsp.fileDropdown.Value

if type(nk) ~= _d("EEUBGxcA") or nk == _d("") then
gcsp.lastText = _d("M1gQGVkGUhBQBRdZARsPVFMUEBUBFx8")

return
end

nanp:Dialog({
Title = _d("J1QfFw0CUg") .. nk .. _d("XA"),
Description = _d("N1kWUh8OHgYRGgFZFRcOXgUXHUcUEV4eUh0OAQgREhwdRxECXx0dDUcQBhEBFxoIBAZDFhZX"),
Buttons = {
{
Name = _d("J1QfFw0C"),
Callback = function()
local jyt, aufe = gcsp.delete(nk)

gcsp.lastText = jyt
and (_d("J1QfFw0CFkM") .. nk .. _d("TQ"))
or (_d("IF4GHh1HHAxFUxYcCxcXVElS") .. tostring(aufe))
end,
},
{
Name = _d("IFAdERwL"),
},
},
})
end,
})

gcsp.configSection:Button({
Name = _d("MVQVABwUGkNdGgEN"),
Callback = function()
gcsp.savesAt = 0
gcsp.lastText = _d("MFAFF1kLGxBFUwAcAQAGQhsXHUk")
end,
})

gcsp.configSection:Button({
Name = _d("LlABGVkGAUNQBgYWRx4MUBc"),
Callback = function()
local czc = gcsp.selected or gcsp.fileDropdown.Value

if type(czc) ~= _d("EEUBGxcA") or czc == _d("") then
gcsp.lastText = _d("M1gQGVkGUhBQBRdZARsPVFMUEBUBFx8")

return
end

if gcsp.setAutoLoad(czc) then
gcsp.lastText = czc .. _d("Q10cEx0UUgxfUwENBgAXHw")
else
gcsp.lastText = _d("IF4GHh1HHAxFUwULDgYGEQcaHEcTFkUcUhUIEwcRHhMLDBcRHw")
end
end,
})

gcsp.configSection:Button({
Name = _d("IF0WEwtHExZFHFIVCBMH"),
Callback = function()
gcsp.setAutoLoad(_d(""))
gcsp.lastText = _d("LV4HGhAJFUNdHBMdFFIMX1MBDQYAFx8")
end,
})

gcsp.statusParagraph = gcsp.configSection:Paragraph({
Header = _d("MEUSBgwU"),
Body = _d(""),
})

gcsp.miscSection = gcsp.tab:Section({
Side = _d("MVgUGg0"),
})

gcsp.miscSection:Header({
Name = _d("LlgAEQ"),
})

gcsp.miscSection:Toggle({
Name = _d("IkQHHVkEHgxCFlIeAhwGQxIGEAgcQ2Q6"),
Default = false,
Callback = function(unny)
ybv(unny)
end,
}, _d("DlgAESYGBxdeLBEVCAEGbhQXFwIAAkUaHRc"))

gcsp.miscSection:Toggle({
Name = _d("IkQHHVk1HQ9d"),
Default = true,
Callback = function(bc)
gcsp.autoRoll = bc

if bc and gcsp.setRollButton then
gcsp.setRollButton(_d("IkQHHSsIHg9zBgYNCBw"), true)
end
end,
}, _d("DlgAESYGBxdeLAAWCx4"))

gcsp.miscSection:Toggle({
Name = _d("IkQHHVk2BwpSGFIrCB4P"),
Default = true,
Callback = function(lpw)
gcsp.autoQuickRoll = lpw

if lpw and gcsp.setRollButton then
gcsp.setRollButton(_d("MkQaERI1HQ9dMQcNEx0N"), true)
end
end,
}, _d("DlgAESYGBxdeLAMMDhEIbgEdFQs"))

gcsp.uiSection = gcsp.tab:Section({
Side = _d("MVgUGg0"),
})

gcsp.uiSection:Header({
Name = _d("Nng"),
})

gcsp.uiSection:Toggle({
Name = _d("IVAQGR4VHRZfF1IbCwcR"),
Default = true,
Callback = function(ysi)
pcall(function()
nanp:SetAcrylicBlurState(ysi)
end)
end,
}, _d("FlgsEBgEGQRDHAcXAy0BXQYA"))

function gcsp.widthFactor(prwu)
return 1 + math.max(0, (prwu or 1) - 1) * 0.8
end

function gcsp.scaleCap()
local lflw = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local jaz = math.min(120, math.floor(((lflw.Y - 40 - 8 - 8) / 500) * 100))

while jaz > 50 and (gcsp.baseWidth or 720) * (jaz / 100) * gcsp.widthFactor(jaz / 100) > lflw.X - 16 do
jaz = jaz - 1
end

return math.max(50, jaz)
end

function gcsp.scaleCeiling()
return math.min(1.2, gcsp.scaleCap() / 100)
end

function gcsp.refreshScaleCap()
local vw = gcsp.scaleSlider

if not vw then
return
end

local arhr = gcsp.scaleCeiling()

pcall(function()
vw.Settings.Maximum = arhr
end)

local yneg = tonumber(vw:GetValue()) or 1

if yneg > arhr then
gcsp.scaleTarget = arhr

pcall(function()
vw:UpdateValue(arhr)
end)
end
end

gcsp.scaleSlider = gcsp.uiSection:Slider({
Name = _d("NnhTARoGHgY"),
Default = 1,
Minimum = 0.5,

Maximum = gcsp.scaleCeiling(),
DisplayMethod = _d("NVAfBxw"),
Precision = 2,

Callback = function(cit)
gcsp.scalePending = tonumber(cit)
gcsp.scalePendingAt = os.clock()
end,
onInputComplete = function(voc)
local emyw = gcsp.scaleCeiling()

gcsp.scaleTarget = math.clamp(tonumber(voc) or gcsp.scalePending or 1, 0.5, emyw)
gcsp.scalePending = nil

gcsp.scaleAnchor = nil

gcsp.saveUi()
end,
}, _d("FlgsARoGHgY"))

gcsp.refreshScaleCap()

gcsp.themeDropdown = gcsp.uiSection:Dropdown({
Name = _d("N1kWHxxdUjVeGhY"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = gcsp.themeOrder,
Callback = function(hofh)
local jap = type(hofh) == _d("F1ARHhw") and hofh[1] or hofh

if type(jap) == _d("EEUBGxcA") and gcsp.presets[jap] then
gcsp.theme = jap
gcsp.accent = nil
gcsp.applyTheme()

pcall(function()
gcsp.themeDropdown:UpdateName(_d("N1kWHxxdUg") .. jap)
end)

gcsp.saveUi()
end
end,
}, _d("FlgsBhECHwY"))

gcsp.accentPicker = gcsp.uiSection:Colorpicker({
Name = _d("IlIQFxcTUgBeHx0MFQ"),
Default = Color3.fromRGB(168, 170, 176),
Alpha = 0,
Callback = function(tlk)
gcsp.accent = tlk
gcsp.applyTheme()
gcsp.saveUi()
end,
}, _d("FlgsExoEFw1F"))

gcsp.codesSection = gcsp.tab:Section({
Side = _d("MVgUGg0"),
})

gcsp.codesSection:Header({
Name = _d("IF4XFwo"),
})

gcsp.codeText = _d("MVQXFxwKAUNUBRcLHlIAXhcXWRMaCkJTFRgKF0NCGxsJFFIUWAcaVUcdDVRTFw8CABoREB0MFx4GERwUWRQXAF4dFgpJ")

function gcsp.setCodeText(pcak)
gcsp.codeText = pcak

pcall(function()
gcsp.codeParagraph:UpdateBody(pcak)
end)
end

function gcsp.redeemCodes()
if gcsp.redeeming then
return
end

local uuzq = qj.RedeemCode
local ootf = jjv:FindFirstChild(_d("Ll4XBxUCIQBDGgINFA"))
local jogc = ootf and ootf:FindFirstChild(_d("IF4XFz0GBgI"))
local cnoa, jli = false, nil

if uuzq and jogc then
cnoa, jli = pcall(function()
return require(jogc)
end)
end

local qfn = cnoa and type(jli) == _d("F1ARHhw") and jli.Codes or nil

if not uuzq or type(qfn) ~= _d("F1ARHhw") then
gcsp.setCodeText(_d("N1kaAVkRFxFCGh0XRx0FEQcaHEcVAlwWUhEGAUNfHFIaCBYGER8bChNSDENTHBZHAAZVFhcURwAGXBwGHEk"))
return
end

local jqu = {}

for bkb in pairs(qfn) do
jqu[#jqu + 1] = bkb
end

table.sort(jqu)

local jo = #jqu

gcsp.redeeming = true
gcsp.setCodeText(_d("MVQXFxwKGw1WUw") .. jo .. _d("Q1IcFhwUXE0f"))

task.spawn(function()
local nlo, lf, eex = 0, 0, 0
local yu = {}

for zjd = 1, jo do
if not upo() then
break
end

local vdj = jqu[zjd]
local qqb, sde = pcall(function()
return uuzq:InvokeServer(vdj)
end)

local fjr = qqb and type(sde) == _d("F1ARHhw") and sde.success == true
local sona = qqb and type(sde) == _d("F1ARHhw") and tostring(sde.message or _d("")) or tostring(sde or _d(""))

if not fjr and string.find(string.lower(sona), _d("FFAaBg"), 1, true) then
task.wait(3.5)

qqb, sde = pcall(function()
return uuzq:InvokeServer(vdj)
end)

fjr = qqb and type(sde) == _d("F1ARHhw") and sde.success == true
sona = qqb and type(sde) == _d("F1ARHhw") and tostring(sde.message or _d("")) or tostring(sde or _d(""))
end

if fjr then
nlo = nlo + 1
elseif string.find(string.lower(sona), _d("Al0BFxgDCw"), 1, true) then
lf = lf + 1
else
eex = eex + 1

if #yu < 6 then
yu[#yu + 1] = vdj .. _d("WRE") .. (sona ~= _d("") and sona or _d("DV5TExcUBQZD"))
end
end

gcsp.setCodeText(string.format(_d("RlVTHR9HVwcRXlJcA1IRVBcXHAoXBx1TVx1HEw9DFhMdHl5DFBdSCwIUFkIWFlc"), zjd, jo, nlo, lf, eex))

if zjd < jo and upo() then
task.wait(1.8)
end
end

local afac = {
string.format(_d("MVQXFxwKFwcRVhZVRxMPQxYTHR5SC1AXUlwDXkNDFhQMFBcHEVYWWQgUQxQXXA"), nlo, lf, eex, jo),
}

for eqj, vq in ipairs(yu) do
afac[#afac + 1] = vq
end

gcsp.redeeming = false
gcsp.setCodeText(table.concat(afac, _d("aQ")))
end)
end

gcsp.codesSection:Button({
Name = _d("MVQXFxwKUgJdH1IaCBYGQg"),
Callback = function()
gcsp.redeemCodes()
end,
})

gcsp.codeParagraph = gcsp.codesSection:Paragraph({
Header = _d("IF4XFwo"),
Body = gcsp.codeText,
})

gcsp.scriptSection = gcsp.tab:Section({
Side = _d("MVgUGg0"),
})

gcsp.scriptSection:Header({
Name = _d("MFIBGwkT"),
})

gcsp.scriptSection:Button({
Name = _d("Nl8fHRgDUhBSARsJEw"),
Callback = function()
pcall(function()
nanp:Unload()
end)

getgenv().ACBXWindow = nil
getgenv().ACBXAllowReload = nil
end,
})

task.spawn(function()
while upo() do

if os.clock() >= gcsp.savesAt then
gcsp.savesAt = os.clock() + 3

local ugr = gcsp.saves()
local ybo = table.concat(ugr, _d("Hw"))

if ybo ~= gcsp.knownSaves then
gcsp.knownSaves = ybo

pcall(function()
gcsp.fileDropdown:ClearOptions()
gcsp.fileDropdown:InsertOptions(ugr)
end)
end

if gcsp.selected and gcsp.selectionShown ~= gcsp.selected then
gcsp.selectionShown = gcsp.selected

pcall(function()
gcsp.fileDropdown:UpdateSelection(gcsp.selected)
end)
end
end

if gcsp.autoSave and os.clock() >= gcsp.autoSaveAt then
gcsp.autoSaveAt = os.clock() + 60

local qeo = gcsp.selected or _d("B1QVEwwLBg")
local flkk, mqno = gcsp.save(qeo)

gcsp.selected = qeo
gcsp.lastText = flkk and (_d("IkQHHVkUExVUF1I") .. qeo .. _d("Q1AHUg") .. os.date(_d("RnlJVzQ")) .. _d("TQ"))
or (_d("IkQHHVkUExVUUxQYDh4GVUlS") .. tostring(mqno))
end

if os.clock() >= gcsp.themeAt then
gcsp.themeAt = os.clock() + 3
gcsp.applyTheme()
end

if os.clock() >= gcsp.capAt then
gcsp.capAt = os.clock() + 2
gcsp.refreshScaleCap()
end

if os.clock() >= gcsp.statusAt then
gcsp.statusAt = os.clock() + 2

local mjvu = gcsp.autoLoadName()
local via = table.concat({
_d("IkQHHVkLHQJVSVI") .. (mjvu or _d("DV4dFw")),
_d("MFAFFwpdUg") .. tostring(#gcsp.saves()),
gcsp.lastText,
}, _d("aQ"))

if via ~= gcsp.shownStatus then
gcsp.shownStatus = via

pcall(function()
gcsp.statusParagraph:UpdateBody(via)
end)
end
end

task.wait(0.25)
end
end)

task.spawn(function()
while upo() do

local gu = gcsp.scalePending

if gu and os.clock() - (gcsp.scalePendingAt or 0) > 0.35 then
local tn = gcsp.scaleCeiling()
local ye = math.clamp(gu, 0.5, tn)

gcsp.scalePending = nil

if math.abs(ye - gcsp.scaleTarget) > 0.002 then
gcsp.scaleTarget = ye
gcsp.scaleAnchor = nil

gcsp.saveUi()
end
end

if math.abs(gcsp.scaleTarget - gcsp.scale) > 0.002 then
local zggf = gcsp.guiRoot()

if zggf and not gcsp.baseWidth then
gcsp.baseWidth = zggf.Size.X.Offset
gcsp.baseHeight = zggf.Size.Y.Offset
end

local nst = gcsp.baseWidth or 720
local lvpr = gcsp.baseHeight or 500
local ymks = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local wyvl, afau = 8, 40

if not gcsp.scaleAnchor and zggf then

local uco = gcsp.widthFactor(gcsp.scaleTarget)
local rl, lurk = nst * uco * gcsp.scaleTarget, lvpr * gcsp.scaleTarget
local my = zggf.AbsolutePosition

gcsp.scaleAnchor = Vector2.new(
math.clamp(my.X, wyvl, math.max(wyvl, ymks.X - rl - wyvl)),
math.clamp(my.Y, afau, math.max(afau, ymks.Y - lurk - wyvl))
)
end

local idi = gcsp.scaleAnchor

gcsp.scale = gcsp.scale + (gcsp.scaleTarget - gcsp.scale) * 0.18

local kpf = gcsp.widthFactor(gcsp.scale)

pcall(function()
nanp:SetScale(gcsp.scale)

if zggf then
local hq = math.floor(nst * kpf)

zggf.Size = UDim2.fromOffset(hq, math.floor(lvpr))

local fbv = zggf:FindFirstChild(_d("IF4dBhwJBg"))

if fbv then
local rz = zggf:FindFirstChild(_d("MFgXFxsGAA"))
local fzhg = math.floor(rz and rz.Size.X.Scale * hq or hq * 0.325)

fbv.Size = UDim2.new(0, math.max(0, hq - fzhg), 1, 0)
end
end
end)

if zggf and idi then
local btri, skoo = nst * kpf * gcsp.scale, lvpr * gcsp.scale
local yawp = math.clamp(idi.X, wyvl, math.max(wyvl, ymks.X - btri - wyvl))
local luq = math.clamp(idi.Y, afau, math.max(afau, ymks.Y - skoo - wyvl))

local ers = zggf.Parent and zggf.Parent.AbsolutePosition or Vector2.zero

pcall(function()
zggf.Position = UDim2.fromOffset(math.floor(yawp - ers.X), math.floor(luq - ers.Y))
end)
end
else

gcsp.scaleAnchor = nil
end

task.wait()
end
end)

hwbc.misc.tierLabels = {}
hwbc.misc.labelToTier = {}

hwbc.misc.expSection = hwbc.misc.tab:Section({
Side = _d("L1QVBg"),
})

hwbc.misc.expSection:Header({
Name = _d("JkkDFx0OBgpeHQFZl+30s5zK9g"),
})

hwbc.misc.claimToggle = hwbc.misc.expSection:Toggle({
Name = _d("IkQHHVkEHgJYHg"),
Default = false,
Callback = function(vfpy)
local uwp = hwbc.misc.expeditions

uwp.enabled = vfpy
uwp.claimAt = 0

if vfpy then
uwp.askedAt = 0
uwp.request()
end
end,
}, _d("AkQHHSYEHgJYHg"))

hwbc.misc.rewardToggle = hwbc.misc.expSection:Toggle({
Name = _d("IkQHHVkEHgxCFlILAgUCQxcB"),
Default = false,
Callback = function(coj)
local mef = hwbc.misc.expeditions

mef.autoClose = coj

if coj then
mef.closeRewards()
end
end,
}, _d("BkkDLRgSBgxuEB4WFBc"))

hwbc.misc.startToggle = hwbc.misc.expSection:Toggle({
Name = _d("IkQHHVkUBgJDBw"),
Default = false,
Callback = function(dxiw)
local vlw = hwbc.misc.expeditions

if dxiw and not next(vlw.tiersWanted) then
vlw.autoStart = false

pcall(function()
hwbc.misc.startToggle:UpdateState(false)
end)

nanp:Dialog({
Title = _d("IkQHHVkUBgJDB1IXAhcHQlMTWRMbBkM"),
Description = _d("M1gQGVkGBkNdFhMKE1IMXxZSDQ4XEREaHFkTGgYRJxscFVIHQxwCHQgFDREVGwsUBk0RNhMKHlIXUBgXCkcGC1RTERECExNUAAZZBBMRVQBeWSkbBFkHHxgVF0NFGxdZFRMRVAAGVUcTDVVTExceUg1EHhAcFVIMV1MGEQIfQ1ISHFkVBw0REgZZCBwAVF0"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})

return
end

vlw.autoStart = dxiw
vlw.startedAt = {}

if dxiw then
vlw.askedAt = 0
vlw.request()
end
end,
}, _d("AkQHHSYUBgJDBw"))

for ffrv, wslm in ipairs(hwbc.misc.expeditions.tiers()) do
table.insert(hwbc.misc.tierLabels, tostring(wslm.name))
hwbc.misc.labelToTier[tostring(wslm.name)] = wslm.id
end

hwbc.misc.building = true

hwbc.misc.tierDropdown = hwbc.misc.expSection:Dropdown({
Name = _d("N1gWAA"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = hwbc.misc.tierLabels,
Callback = function(akwo)
local zxlu = hwbc.misc.expeditions

if hwbc.misc.building then
return
end

local mcz = {}
local hnne = {}

if type(akwo) == _d("F1ARHhw") then
for nve, vvdn in pairs(akwo) do
local jxrn = hwbc.misc.labelToTier[tostring(nve)]

if vvdn and jxrn then
mcz[jxrn] = true
table.insert(hnne, tostring(nve))
end
end
end

table.sort(hnne)
zxlu.tiersWanted = mcz

pcall(function()
hwbc.misc.tierDropdown:UpdateName(#hnne > 0 and (_d("N1gWAFmF8sER") .. table.concat(hnne, _d("TxE"))) or _d("N1gWAFmF8sERHR0XAg"))
end)
end,
}, _d("F1gWAA"))

task.defer(function()
hwbc.misc.building = false
end)

hwbc.misc.expSection:Button({
Name = _d("IF0SGxRHHAxG"),
Callback = function()
local wlb = hwbc.misc.expeditions

if not wlb.claim() then
nanp:Notify({
Title = _d("JkkDFx0OBgpeHQE"),
Description = _d("LV4HGhAJFUNZEgFZBB0OVFMQGAQZQ0gWBlc"),
Lifetime = 5,
})
end
end,
})

hwbc.misc.expSection:Button({
Name = _d("MFQdFlkUFw9UEAYcAw"),
Callback = function()
local obba = hwbc.misc.expeditions

if not next(obba.tiersWanted) then
nanp:Notify({
Title = _d("JkkDFx0OBgpeHQE"),
Description = _d("M1gQGVkGBkNdFhMKE1IMXxZSDQ4XEREaHFkTGgYRFwAWFxYMRh1SHw4AEEVd"),
Lifetime = 5,
})

return
end

local mcgl = {}
local ki = 0

for anri, bipe in ipairs(obba.tiers()) do
if obba.tiersWanted[bipe.id] and obba.status(bipe.id) == _d("AkcSGxUGEA9U") then
if obba.start(bipe.id, mcgl) then
ki = ki + 1
end
end
end

if ki == 0 then
nanp:Notify({
Title = _d("JkkDFx0OBgpeHQE"),
Description = _d("LV4HGhAJFUNSHAcVA1IBVFMBHAkGWREHGhxHAQZdFhENAhZDRRoXCxRSAkMWUhgLAAZQFwtZCAcXHVMdC0cGC1QBF1kGAAYRHR0NRxQMRAFSHAsbBFgRHhxHEQJDFwFZAR0REQcaHApc"),
Lifetime = 6,
})
end
end,
})

hwbc.misc.expInfo = hwbc.misc.tab:Section({
Side = _d("MVgUGg0"),
})

hwbc.misc.expInfo:Header({
Name = _d("JkkDFx0OBgpeHQE"),
})

hwbc.misc.expParagraph = hwbc.misc.expInfo:Paragraph({
Header = _d("MEUSBgwU"),
Body = hwbc.misc.expeditions.text(),
})

hwbc.misc.expeditions.loadRewards()

hwbc.misc.expRewardParagraph = hwbc.misc.expInfo:Paragraph({
Header = _d("IF0SGxQCFg"),
Body = hwbc.misc.expeditions.rewardsText(),
})

task.spawn(function()
local kji = hwbc.misc.expeditions
local znjj = mch(_d("MEgdETwfAgZVGgYQCBwQ"), 3)

if znjj then
znjj.OnClientEvent:Connect(function(bka)
if type(bka) ~= _d("F1ARHhw") then
return
end

kji.state = bka

kji.offset = (tonumber(bka.now) or os.time()) - os.time()
kji.syncedAt = os.clock()

if type(bka.rewards) == _d("F1ARHhw") and #bka.rewards > 0 then
table.insert(kji.rewardLog, 1, {
at = os.time(),
title = tostring(bka.rewardTitle or _d("JkkDFx0OBgpeHQ")),
items = bka.rewards,
})

while #kji.rewardLog > 8 do
table.remove(kji.rewardLog)
end

kji.saveRewards()

if kji.autoClose then

task.delay(0.35, kji.closeRewards)
end
end
end)
end

while upo() do

if os.clock() - kji.askedAt > 1 and os.clock() - kji.syncedAt > 20 then
kji.request()
end

if kji.enabled then
kji.claim()
end

if kji.autoClose then
kji.closeRewards()
end

if kji.autoStart and next(kji.tiersWanted) then
local rzzz = {}

for zzbg, xsfh in ipairs(kji.tiers()) do
if kji.tiersWanted[xsfh.id] and kji.status(xsfh.id) == _d("AkcSGxUGEA9U") then
if kji.start(xsfh.id, rzzz) then
break
end
end
end
end

local xft = kji.text()

if hwbc.misc.expParagraph and xft ~= hwbc.misc.expShown then
hwbc.misc.expShown = xft

pcall(function()
hwbc.misc.expParagraph:UpdateBody(xft)
end)
end

local yn = kji.rewardsText()

if hwbc.misc.expRewardParagraph and yn ~= kji.rewardsShown then
kji.rewardsShown = yn

pcall(function()
hwbc.misc.expRewardParagraph:UpdateBody(yn)
end)
end

task.wait(0.75)
end
end)

hwbc.misc.util = {
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

function hwbc.misc.util.hook()
local pxv = hwbc.misc.util

if pxv.hooked then
return
end

pxv.hooked = true

if qj.SyncCollection then
qj.SyncCollection.OnClientEvent:Connect(function(cjxl)
if type(cjxl) == _d("F1ARHhw") then
pxv.profile = cjxl
pxv.profileAt = os.clock()
end
end)
end

if qj.SyncAchievements then
qj.SyncAchievements.OnClientEvent:Connect(function(wir)
if type(wir) == _d("F1ARHhw") then
pxv.ach = wir
end
end)
end

if qj.SyncQuests then
qj.SyncQuests.OnClientEvent:Connect(function(ml)
if type(ml) == _d("F1ARHhw") and type(ml.list) == _d("F1ARHhw") then
pxv.quests = ml
end
end)
end

if qj.SyncPeriodicQuests then
qj.SyncPeriodicQuests.OnClientEvent:Connect(function(dkfd, mhlf)
if dkfd == _d("FFQWGRUe") and type(mhlf) == _d("F1ARHhw") and type(mhlf.list) == _d("F1ARHhw") then
pxv.weekly = mhlf
end
end)
end
end

function hwbc.misc.util.askProfile()
local txur = hwbc.misc.util

if os.clock() - txur.askedAt < 1.5 then
return
end

txur.askedAt = os.clock()

if qj.RequestSync then
pcall(function()
qj.RequestSync:FireServer()
end)
end
end

function hwbc.misc.util.currentProfile()
local civq = hwbc.misc.util

if type(civq.profile) ~= _d("F1ARHhw") then
civq.askProfile()

return nil
end

if os.clock() - civq.profileAt > 20 then
civq.askProfile()
end

return civq.profile
end

function hwbc.misc.util.forgetProfile()
local fi = hwbc.misc.util

fi.profile = nil
fi.profileAt = 0
fi.askedAt = 0
end

function hwbc.misc.util.indexedTotal(kelo)
local vtip = 0

for od, ukrn in pairs((kelo and kelo.cardIndex) or {}) do
if ukrn then
vtip = vtip + 1
end
end

return vtip
end

function hwbc.misc.util.indexPending(tts)
local zcjt = {}

if type(tts) ~= _d("F1ARHhw") then
return zcjt
end

local hlq = hwbc.misc.util.indexedTotal(tts)
local gxxx = tts.indexMilestones or {}

for cfp = 1, 30 do
if not gxxx[cfp] and cfp * 5 <= hlq then
table.insert(zcjt, cfp)
end
end

return zcjt
end

function hwbc.misc.util.indexFrame()
local midd = zt:FindFirstChild(_d("IFABFjAJFgZJNAcQ"))

return midd and midd:FindFirstChild(_d("Kl8XFwEhAAJcFg"))
end

function hwbc.misc.util.clickButton(sc)
if not sc then
return false
end

if firesignal then
local dwq = pcall(firesignal, sc.MouseButton1Click)

if dwq then
return true
end
end

return pcall(function()
sc:Activate()
end)
end

function hwbc.misc.util.closeIndex()
local fbvm = hwbc.misc.util.indexFrame()

if not fbvm or not fbvm.Visible then
return false
end

pcall(function()
local izd = jjv:FindFirstChild(_d("Ll4XBxUCIQBDGgINFA"))
local epxk = izd and izd:FindFirstChild(_d("LlQdBzQGHAJWFgA"))

if epxk then
require(epxk).close(fbvm)
end
end)

hwbc.misc.util.clickButton(fbvm:FindFirstChild(_d("IF0cARwlBxdFHBw")))

pcall(function()
fbvm.Visible = false
end)

return true
end

function hwbc.misc.util.claimIndex()
local po = hwbc.misc.util

if os.clock() < po.indexAt then
return false
end

local pawc = po.currentProfile()

if not pawc then
return false
end

local rhnx = po.indexPending(pawc)
local se = rhnx[1]

if not se then
return false
end

local qpr = po.indexedTotal(pawc)
local etg = po.indexAsked

if type(etg) == _d("F1ARHhw") and etg.milestone == se and etg.total == qpr then
return false
end

po.indexAsked = { milestone = se, total = qpr }

pcall(function()
qj.ClaimIndexReward:FireServer(se)
end)

po.indexAt = os.clock() + 1.5

po.profile = nil
po.profileAt = 0

task.delay(0.4, po.closeIndex)

return true
end

function hwbc.misc.util.achPending()
local xpht = {}
local wel = hwbc.misc.util.ach

if type(wel) ~= _d("F1ARHhw") then
return xpht
end

for zinw, vc in ipairs(wel.chains or {}) do
for ipw, xzgt in ipairs(vc.levels or {}) do
if xzgt.reached and not xzgt.claimed then
table.insert(xpht, { chain = tostring(vc.id), index = xzgt.index, name = tostring(xzgt.name or xzgt.index) })
end
end
end

return xpht
end

function hwbc.misc.util.claimAchievement()
local fyg = hwbc.misc.util

if os.clock() < fyg.achAt then
return false
end

if type(fyg.ach) ~= _d("F1ARHhw") then
if os.clock() - fyg.achAskedAt > 4 and qj.RequestAchievements then
fyg.achAskedAt = os.clock()

pcall(function()
qj.RequestAchievements:FireServer()
end)
end

return false
end

for gi, wsrp in ipairs(fyg.achPending()) do
pcall(function()
qj.ClaimAchievement:FireServer(wsrp.chain, wsrp.index)
end)

fyg.achAt = os.clock() + 1

task.delay(1, function()
if qj.RequestAchievements then
pcall(function()
qj.RequestAchievements:FireServer()
end)
end
end)

return true
end

return false
end

function hwbc.misc.util.questRows()
local akk = hwbc.misc.util
local rcbt = {}

for ttu, epwg in ipairs({ { list = _d("B1AaHgA"), payload = akk.quests }, { list = _d("FFQWGRUe"), payload = akk.weekly } }) do
for bxrj, qsro in ipairs((type(epwg.payload) == _d("F1ARHhw") and epwg.payload.list) or {}) do
if type(qsro) == _d("F1ARHhw") then
table.insert(rcbt, { list = epwg.list, index = bxrj, quest = qsro })
end
end
end

return rcbt
end

function hwbc.misc.util.questPending()
local ruk = {}

for umq, sjw in ipairs(hwbc.misc.util.questRows()) do
local zam = sjw.quest

if not zam.claimed and (tonumber(zam.progress) or 0) >= (tonumber(zam.target) or math.huge) then
table.insert(ruk, sjw)
end
end

return ruk
end

function hwbc.misc.util.askQuests()
local zr = hwbc.misc.util

if os.clock() - zr.questAskedAt > 4 and qj.RequestQuests then
zr.questAskedAt = os.clock()

pcall(function()
qj.RequestQuests:FireServer()
end)
end

if os.clock() - zr.weeklyAskedAt > 4 and qj.RequestPeriodicQuests then
zr.weeklyAskedAt = os.clock()

pcall(function()
qj.RequestPeriodicQuests:FireServer(_d("FFQWGRUe"))
end)
end
end

function hwbc.misc.util.claimQuest()
local jxxh = hwbc.misc.util

if os.clock() < jxxh.questAt then
return false
end

if type(jxxh.quests) ~= _d("F1ARHhw") and type(jxxh.weekly) ~= _d("F1ARHhw") then
jxxh.askQuests()

return false
end

for ljjt, obca in ipairs(jxxh.questPending()) do
if obca.list == _d("FFQWGRUe") then
if qj.ClaimPeriodicQuest then
pcall(function()
qj.ClaimPeriodicQuest:FireServer(_d("FFQWGRUe"), obca.index)
end)
end
else
pcall(function()
qj.ClaimQuest:FireServer(obca.index)
end)
end

jxxh.questAt = os.clock() + 1.2

task.delay(1, function()
jxxh.askQuests()
end)

return true
end

return false
end

function hwbc.misc.util.packCatalog()
local tih = hwbc.misc.util

if tih.packs then
return tih.packs
end

local adwo = {}
local vvqo, mbf = pcall(function()
return require(jjv.ModuleScripts.PackData)
end)

if vvqo and type(mbf) == _d("F1ARHhw") and type(mbf.Packs) == _d("F1ARHhw") then
for cnqw, uvmq in ipairs(mbf.Packs) do
if uvmq.id then
table.insert(adwo, { id = tostring(uvmq.id), name = tostring(uvmq.name or uvmq.id) })
end
end
end

tih.packs = adwo

return adwo
end

function hwbc.misc.util.packUnlocked(bahr, mmud)
if type(bahr) ~= _d("F1ARHhw") then
return true
end

local dvly, qex = pcall(function()
return require(jjv.ModuleScripts.PackData)
end)
local bn, js = pcall(function()
return require(jjv.ModuleScripts.PackSlotData)
end)

if not (dvly and bn) then
return true
end

local jowt = qex.ById and qex.ById[mmud]

if not jowt then
return false
end

local oow, ksv = pcall(js.isPackUnlocked, jowt, bahr)

return (not oow) or ksv == true
end

function hwbc.misc.util.visit(fleu)
local tnuy = workspace:FindFirstChild(_d("LWEwAQ"))
local hicc = tnuy and tnuy:FindFirstChild(fleu)
local ynct = mz.Character
local rax = ynct and ynct:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))
local gya = hicc and (hicc:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ")) or hicc:FindFirstChildWhichIsA(_d("IVAAFykGABc"), true))

if not (gya and rax) then
return nil
end

local ctaz = rax.CFrame

rax.CFrame = CFrame.new((gya.CFrame * CFrame.new(0, 0, -5)).Position)

return ctaz
end

function hwbc.misc.util.returnTo(yxn)
local yk = mz.Character
local zbcd = yk and yk:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if zbcd and yxn then
zbcd.CFrame = yxn
end
end

function hwbc.misc.util.applyPacks(bq, xioa)
local edbf = hwbc.misc.util

if os.clock() < edbf.packAt then
return false, _d("NFAaBlkGUg5eHhcXE1w")
end

local lzy = edbf.currentProfile()

if not lzy then
return false, _d("MVQSFhAJFUNIHAcLRwIRXhUbFQJSThEHAABHEwRQGhxZDhxDUFMBHAQdDVVd")
end

if xioa and (tonumber(lzy.packSlots) or 1) < 2 then
return false, _d("MF0cBllVUg1UFhYKRwYLVFMXARMAAhEDExoMUhBdHAZZABMOVAMTChRc")
end

if not (qj.OpenPackShop and qj.EquipPack) then
return false, _d("N1kWUgkGEQgRABoWF1IKQlMcFhNSCl9TBhEOAUNWEh8cRwQGQwAbFglc")
end

edbf.packAt = os.clock() + 8

task.spawn(function()
local rw = edbf.visit(_d("LV4RHhwUAQpfFAE"))

if not rw then
return
end

pcall(function()
qj.OpenPackShop:FireServer(_d("E1AQGSYKFxFSGxMXEw"))
end)

task.wait(1.2)

if bq then
pcall(function()
qj.EquipPack:FireServer(bq, 1)
end)
end

if xioa then
task.wait(0.8)

pcall(function()
qj.EquipPack:FireServer(xioa, 2)
end)
end

task.wait(0.8)
edbf.returnTo(rw)
edbf.forgetProfile()
end)

return true
end

function hwbc.misc.util.accScore(cib)
local jy = cib.effects or {}

return (jy.luckBonus or 0) * 10
+ ((jy.luckMult or 1) - 1) * 200
+ ((jy.borderLuckMult or 1) - 1) * 200
- ((jy.rollCdMult or 1) - 1) * 30
end

function hwbc.misc.util.accCatalog()
local ajfs = hwbc.misc.util

if ajfs.accessories then
return ajfs.accessories
end

local ocl = {}

for bfuk, txcl in ipairs({ _d("IlIQFwoUHRFINxMNBg"), _d("IlIQFwoUHRFINxMNBkA") }) do
local pbyo, jhda = pcall(function()
return require(jjv.ModuleScripts[txcl])
end)

if pbyo and type(jhda) == _d("F1ARHhw") and type(jhda.Accessories) == _d("F1ARHhw") then
for jte, fyfg in ipairs(jhda.Accessories) do
if fyfg.id then
table.insert(ocl, {
id = tostring(fyfg.id),
name = tostring(fyfg.name or fyfg.id),
shop = bfuk,

shopName = bfuk == 1 and _d("IlIQFwoUHRFIUyERCAI") or _d("LkgABhwVGwxEAFI0Bhw"),
raidable = fyfg.raidShopOnly == true,
hidden = fyfg.hidden == true,
requirements = fyfg.requirements or {},
score = hwbc.misc.util.accScore(fyfg),
})
end
end
end
end

ajfs.accessories = ocl

return ocl
end

function hwbc.misc.util.accOwned(wk)
local vys = {}

for los, cc in ipairs((wk and wk.accessories) or {}) do
vys[tostring(cc)] = true
end

return vys
end

function hwbc.misc.util.accMeets(gwx, ugkf)
for kd, rpj in ipairs(ugkf.requirements) do
local vzal = gwx.cards and gwx.cards[rpj.cardId]
local ggx = type(vzal) == _d("F1ARHhw") and (tonumber(vzal[rpj.borderLevel]) or 0) or 0

if ggx < (tonumber(rpj.amount) or 0) then
return false
end
end

return true
end

function hwbc.misc.util.accPlan(dygs)
local ocpt = hwbc.misc.util
local vsp = ocpt.accOwned(dygs)
local bkrj = {}

for pnc, sm in ipairs(ocpt.accCatalog()) do
if not vsp[sm.id] and not sm.raidable and not sm.hidden and ocpt.accMeets(dygs, sm) then
local nsy = bkrj[sm.shop]

if not nsy or sm.score > nsy.score then
bkrj[sm.shop] = sm
end
end
end

return bkrj
end

function hwbc.misc.util.accPicks(lehp)
local bdz = hwbc.misc.util
local vdpp = bdz.accOwned(lehp)
local kiv, lth

for uym, vlu in ipairs(bdz.accCatalog()) do
if vdpp[vlu.id] then
if not kiv or vlu.score > kiv.score then
kiv = vlu
end
elseif not vlu.raidable and not vlu.hidden and bdz.accMeets(lehp, vlu) then
if not lth or vlu.score > lth.score then
lth = vlu
end
end
end

return kiv, lth
end

function hwbc.misc.util.equipBest()
local pr = hwbc.misc.util
local afj = pr.currentProfile()

if not afj or not qj.EquipAccessory then
return false
end

local hbpo = pr.accPicks(afj)

if not hbpo or afj.equippedAccessory == hbpo.id then
return hbpo ~= nil
end

pcall(function()
qj.EquipAccessory:FireServer(hbpo.id)
end)

task.delay(1.5, function()
pr.forgetProfile()
end)

return true
end

function hwbc.misc.util.buyBest()
local xgi = hwbc.misc.util

if os.clock() < xgi.accAt then
return false, _d("NFAaBlkGUg5eHhcXE1w")
end

if wx.busy(1) or wx.busy(2) then
xgi.accNote = _d("Kl9TE1kFExdFHxdZSlICEQAaFhdSF0MaAlkQHRZdF1IcCRZDWAc")
return false, _d("Kl9TE1kFExdFHxdZSlICEQAaFhdSF0MaAlkQHRZdF1IcCRZDWAdc")
end

local ynyb = xgi.currentProfile()

if not ynyb then
xgi.accNote = _d("MVQSFhAJFUNIHAcLRwIRXhUbFQJSThEEGxULUhdDClIYABMKX1MbF0cTQ0IWERYJFg")
return false, _d("MVQSFhAJFUNIHAcLRwIRXhUbFQJSThEHAABHEwRQGhxZDhxDUFMBHAQdDVVd")
end

local eif = xgi.accPlan(ynyb)
local jhww = {}

for hwf = 1, 2 do
if eif[hwf] then
table.insert(jhww, eif[hwf].name)
end
end

if #jhww == 0 then
xgi.accNote = _d("LV4HGhAJFUNfFgVZEhwPXhAZHANSGlQHUlRHBgtUUxEYFRYQERUdC0cbFxESABxHHAxFUxsXRwYLVFMRFgseBlIHGxYJ")
return false, _d("LV4HGhAJFUNfFgVZBBMNEREXWRIcD14QGRwDUhpUB1JURwYLVFMRGBUWEBEVHQtHGxcREgAcRxwMRVMbF0cGC1RTERYLHgZSBxsWCVw")
end

xgi.accAt = os.clock() + 12
xgi.accNote = _d("NFAfGRAJFUNFHFINDxdDUhwHFxMXEREVHQtH") .. table.concat(jhww, _d("Q1AdFlk"))

task.spawn(function()
for wu = 1, 2 do
local byw = eif[wu]

if byw then
local rjvp = wu == 1 and _d("E0QBAQwOBgZVFw") or _d("FFAVFBwLHwJfFhMNFAUCVxUXFRQ")
local tngo = wu == 1 and qj.OpenAccessoryShop or qj.OpenAccessoryShop2
local dvub = wu == 1 and qj.BuyAccessory or qj.BuyAccessory2
local suv = rjvp and xgi.visit(rjvp) or nil

if not suv then
local yvtg = workspace:FindFirstChild(_d("LWEwAQ"))
local td = yvtg and yvtg:FindFirstChild(rjvp)

if td and os.clock() - (xgi.worldAskedAt or 0) > 25 then

xgi.worldAskedAt = os.clock()
xgi.accNote = _d("IFkSABgEBgZDUxwWE1IRVBIWAEdfQ0UBCxAJFUNQFBMQCVIQWRwADQsL")
elseif not td and os.clock() - (xgi.worldAskedAt or 0) > 25 then

xgi.worldAskedAt = os.clock()
xgi.accNote = _d("LV5TERYSHBdUAVIQCVIXWRoBWRAdEV0XUlRHBgJaGhweRwYLVFMeFgUQGhEHFxUCAgxDBw")

pcall(function()
qj.TeleportToWorld:FireServer(_d("D14REAA"))
end)

task.wait(4.5)
suv = xgi.visit(rjvp)
end
end

if suv and tngo and dvub then

task.wait(0.9)

pcall(function()
tngo:FireServer()
end)

task.wait(1.2)

pcall(function()
dvub:FireServer(byw.id)
end)

task.wait(0.9)
xgi.returnTo(suv)
xgi.accNote = _d("IV4GFRETUg") .. tostring(byw.name)
elseif not suv then
xgi.accNote = _d("IF4GHh1HHAxFUwAcBhELEQcaHEcRDEQdBhwVUk4RBwAARxMEUBocWQ4cQ1BTHxYKFw1F")
end

task.wait(0.6)
end
end

xgi.forgetProfile()

for btya = 1, 8 do
if type(xgi.profile) == _d("F1ARHhw") then
break
end

xgi.askProfile()
task.wait(0.7)
end

xgi.equipBest()
end)

return true, table.concat(jhww, _d("TxE"))
end

function hwbc.misc.util.indexText()
local lje = hwbc.misc.util

if type(lje.profile) ~= _d("F1ARHhw") then
return _d("MVQSFhAJFUNIHAcLRxECQxdSEAkWBkldXFc")
end

local pqgb = lje.indexPending(lje.profile)
local sxwl = 0

for qvz, lg in pairs(lje.profile.indexMilestones or {}) do
if lg then
sxwl = sxwl + 1
end
end

local ak = tostring(lje.indexedTotal(lje.profile)) .. _d("Q1ISAB0UUgpfFxcBAhZPEQ") .. tostring(sxwl) .. _d("Q14VUkpXUhFUBBMLAwFDUh8TEAoXBw")

if #pqgb > 0 then
ak = ak .. _d("aWMWEx0eSEM") .. table.concat(pqgb, _d("TxE"))
end

return ak
end

function hwbc.misc.util.achText()
local rsmg = hwbc.misc.util

if type(rsmg.ach) ~= _d("F1ARHhw") then
return _d("MVQSFhAJFUNQEBoQAgQGXBYcDRRcTR8")
end

local osiz = rsmg.achPending()
local zkhv = 0

for uoi, ezv in ipairs(rsmg.ach.chains or {}) do
for imz in ipairs(ezv.levels or {}) do
zkhv = zkhv + 1
end
end

return tostring(#osiz) .. _d("Q14VUg") .. tostring(zkhv) .. _d("Q1AQGhACBAZcFhwNFFIRVBIWAA")
end

function hwbc.misc.util.questText()
local kuhc = hwbc.misc.util

if type(kuhc.quests) ~= _d("F1ARHhw") and type(kuhc.weekly) ~= _d("F1ARHhw") then
return _d("MVQSFhAJFUNABhcKEwFNH10")
end

local rlvr, dxq = 0, 0

for ogym, om in ipairs(kuhc.questPending()) do
if om.list == _d("FFQWGRUe") then
dxq = dxq + 1
else
rlvr = rlvr + 1
end
end

local tid = type(kuhc.quests) == _d("F1ARHhw") and #(kuhc.quests.list or {}) or 0
local uxb = type(kuhc.weekly) == _d("F1ARHhw") and #(kuhc.weekly.list or {}) or 0

return tostring(rlvr) .. _d("Q14VUg") .. tostring(tid) .. _d("Q1USGxUeUhFUEhYAbQ")
.. tostring(dxq) .. _d("Q14VUg") .. tostring(uxb) .. _d("Q0YWFxILC0NDFhMdHg")
end

function hwbc.misc.util.packText()
local jpoh = hwbc.misc.util
local opaj = jpoh.profile

if type(opaj) ~= _d("F1ARHhw") then
return _d("MVQSFhAJFUNIHAcLRwICUhgBV0lc")
end

local function cycx(xn)
for wwzt, kfv in ipairs(jpoh.packCatalog()) do
if kfv.id == xn then
return kfv.name
end
end

return tostring(xn)
end

local jvr = _d("MF0cBllWSEM") .. cycx(opaj.equippedPack)

if (tonumber(opaj.packSlots) or 1) >= 2 then
jvr = jvr .. _d("aWIfHQ1HQFkR") .. cycx(opaj.equippedPack2)
else
jvr = jvr .. _d("aWIfHQ1HQFkRFBMUAgICQgBSFwgGQ14EHBwD")
end

return jvr
end

function hwbc.misc.util.accText()
local cf = hwbc.misc.util
local bpn = cf.profile

if type(bpn) ~= _d("F1ARHhw") then
return _d("MVQSFhAJFUNIHAcLRxMAUhYBCggAClQAXFdJ")
end

local vdi = cf.accPicks(bpn)
local zhc = cf.accPlan(bpn)
local im = _d("DV4dFw")

for bd, pkkv in ipairs(cf.accCatalog()) do
if pkkv.id == bpn.equippedAccessory then
im = pkkv.name .. _d("Qxk") .. pkkv.shopName .. _d("Sg")
end
end

local gvjz = _d("JkAGGwkXFwcLUw") .. im

if vdi then
gvjz = gvjz .. _d("aXMWAQ1HHRRfFhZDRw") .. vdi.name
end

gvjz = gvjz .. _d("aXAQERwUAQxDClIqDx0TC1M") .. (zhc[1] and zhc[1].name or _d("DV4HGhAJFUNfFgU"))
gvjz = gvjz .. _d("aXwKAQ0CAApeBgFZKhMNC1M") .. (zhc[2] and zhc[2].name or _d("DV4HGhAJFUNfFgU"))

if cf.accNote then
gvjz = gvjz .. _d("aX0SAQ1HBhFYA0hZ") .. cf.accNote
end

return gvjz
end

hwbc.misc.util.hook()
hwbc.misc.util.askProfile()

hwbc.misc.indexSection = hwbc.misc.tab:Section({
Side = _d("L1QVBg"),
})

hwbc.misc.indexSection:Header({
Name = _d("IFABFlkuHAdUC1KJ+OHk"),
})

hwbc.misc.indexToggle = hwbc.misc.indexSection:Toggle({
Name = _d("IkQHHVkEHgJYHg"),
Default = false,
Callback = function(er)
hwbc.misc.util.indexOn = er
hwbc.misc.util.indexAt = 0

hwbc.misc.util.indexAsked = nil
end,
}, _d("AkQHHSYEHgJYHi1L"))

hwbc.misc.indexSection:Button({
Name = _d("IF0SGxRHHAxG"),
Callback = function()
local ucwl = hwbc.misc.util

ucwl.indexAt = 0
ucwl.indexAsked = nil

if not ucwl.claimIndex() then
nanp:Notify({
Title = _d("IFABFlkuHAdUCw"),
Description = _d("LV5THxALFxBFHBwcRxsQEQEXGAMLQ0UcUhoLEwpcXQ"),
Lifetime = 5,
})
end
end,
})

hwbc.misc.claimSection = hwbc.misc.tab:Section({
Side = _d("L1QVBg"),
})

hwbc.misc.claimSection:Header({
Name = _d("IlIbGxwRFw5UHQYKR1RDYAYXChMBQ8Hs/f8"),
})

hwbc.misc.achToggle = hwbc.misc.claimSection:Toggle({
Name = _d("IkQHHVkEHgJYHlIYBBoKVAUXFAIcF0I"),
Default = false,
Callback = function(hex)
hwbc.misc.util.achOn = hex
hwbc.misc.util.achAt = 0

if hex and qj.RequestAchievements then
pcall(function()
qj.RequestAchievements:FireServer()
end)
end
end,
}, _d("AkQHHSYEHgJYHi0YBBoKVAUXFAIcF0I"))

hwbc.misc.questToggle = hwbc.misc.claimSection:Toggle({
Name = _d("IkQHHVkEHgJYHlIIEhcQRQA"),
Default = false,
Callback = function(mycf)
hwbc.misc.util.questOn = mycf
hwbc.misc.util.questAt = 0
hwbc.misc.util.questAskedAt = 0
hwbc.misc.util.weeklyAskedAt = 0

if mycf then
hwbc.misc.util.askQuests()
end
end,
}, _d("AkQHHSYEHgJYHi0IEhcQRQA"))

hwbc.misc.claimSection:Button({
Name = _d("IF0SGxRHEw9dUxwWEA"),
Callback = function()
local qezw = hwbc.misc.util

qezw.achAt = 0
qezw.questAt = 0

local recj = qezw.claimAchievement()
local apye = qezw.claimQuest()

if not (recj or apye) then
nanp:Notify({
Title = _d("IlIbGxwRFw5UHQYKR1RDYAYXChMB"),
Description = _d("LV4HGhAJFUNYAFILAhMHSFMGFkcRD1AaH1c"),
Lifetime = 5,
})
end
end,
})

hwbc.misc.packSection = hwbc.misc.tab:Section({
Side = _d("L1QVBg"),
})

hwbc.misc.packSection:Header({
Name = _d("IFABFlk3EwBaAFKJ+PzX"),
})

hwbc.misc.packSection:Paragraph({
Header = _d("N0YcUgoLHRdC"),
Body = _d("M1gQGQpHExNBHwtZCBwPSFMFEQIcQ0gcB1kXAAZCAFI4FwIPSFMCGAQZEB1TEBwEExZCFlINDxdDQgQbDQQaQ0YSHhIUUhdeUwYRAlIOVAEREQYcFx8"),
})

local acgj = {}
local ebt = {}

for pj, psqr in ipairs(hwbc.misc.util.packCatalog()) do
table.insert(acgj, psqr.name)
ebt[psqr.name] = psqr.id
end

hwbc.misc.packSlotOne = nil
hwbc.misc.packSlotTwo = nil

hwbc.misc.packDropdownOne = hwbc.misc.packSection:Dropdown({
Name = _d("MF0cBllW"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = acgj,
Callback = function(ofgf)
local lfy = type(ofgf) == _d("F1ARHhw") and ofgf[1] or ofgf

hwbc.misc.packSlotOne = ebt[tostring(lfy)]
end,
}, _d("EF0cBiZW"))

hwbc.misc.packDropdownTwo = hwbc.misc.packSection:Dropdown({
Name = _d("MF0cBllV"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = acgj,
Callback = function(tmla)
local vydd = type(tmla) == _d("F1ARHhw") and tmla[1] or tmla

hwbc.misc.packSlotTwo = ebt[tostring(vydd)]
end,
}, _d("EF0cBiZV"))

hwbc.misc.packSection:Button({
Name = _d("IkEDHgBHAgJSGAE"),
Callback = function()
local gd = hwbc.misc.util
local zldk = hwbc.misc.packSlotOne
local tsoz = hwbc.misc.packSlotTwo

if not zldk then
nanp:Notify({
Title = _d("IFABFlk3EwBaAA"),
Description = _d("M1gQGVkGUhNQEBlZAR0REQAeFhNSUhEVGwsUBk0"),
Lifetime = 5,
})

return
end

local ntxm, rnu = gd.applyPacks(zldk, tsoz)

if not ntxm then
nanp:Dialog({
Title = _d("IFABFlk3EwBaAA"),
Description = rnu,
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})
end
end,
})

hwbc.misc.cards = {
rarityLabels = { _d("Il0f"), _d("LV4BHxgL"), _d("JF4fFg"), _d("MVAaHBsIBQ"), _d("Nl8aBBwVAQJd") },
borderOf = { Normal = 1, Gold = 2, Rainbow = 3, Universal = 4 },
mergeOn = false,
deconOn = false,
mergeWanted = {},
deconWanted = {},
mergeAt = 0,
deconAt = 0,
mergeDone = _d("LV4HGhAJFUNCFhwNRwsGRQ"),
deconDone = _d("LV4HGhAJFUNCFhwNRwsGRQ"),

inFlight = false,

interval = 3600,
manualGap = 20,
manualAt = 0,

protectedPrefixes = { weather = true, boss = true, raid = true, wb = true, fish = true, hw = true, event = true },

deconExceptions = { weather_sayaka = true, weather_caesar = true },

deconConfirmed = false,
burnAskedAt = 0,
}

function hwbc.misc.cards.isProtected(ccvl, pjik)
local qbkn = hwbc.misc.cards
local ya = tostring(ccvl or _d(""))
local oxj = ya:match(_d("PRkoE1QdQk4ILllQOA"))

if not (oxj and qbkn.protectedPrefixes[oxj]) then
return false
end

return not (qbkn.deconExceptions[ya] and pjik == 2)
end

function hwbc.misc.cards.burnAllowed(csp)
local zgdi = hwbc.misc.cards
local eib = zgdi.wantedFor(_d("B1QQHRcwEw1FFhY"))

if not (eib == nil or eib[3] or eib[4]) then
zgdi.deconConfirmed = false

return true
end

if zgdi.deconConfirmed then
return true
end

if csp then
return false
end

if os.clock() < (zgdi.burnAskedAt or 0) then
return false
end

zgdi.burnAskedAt = os.clock() + 20

nanp:Dialog({
Title = _d("IUQBHFk1EwpfER0ORx0RESYcEBEXEUISHlkEExFVAE0"),
Description = _d("IkQHHVkDFwBeHQENFQcARVMBHAkWEBEWBBwVC0NSHAIARxsNEQcaHEcfAkUQGhAJFUNDHAUKRxMNVVMRGAkcDEVTEBxHBw1VHBwcSVI")
.. _d("NFQSBhECAE8RER0KFF5DQxIbHUcQDEIAXlkQHRFdF1IbCAEQHVMUEBQaCl8UXlkvEw9dHAUcAhxDUB0WWQIEBl8HUhoGAAdCUxMLAlILVB8WWQUTAFpTFxATGgZDUwUYHlw"),
Buttons = {
{
Name = _d("IUQBHFkTGgZc"),
Callback = function()
zgdi.deconConfirmed = true
zgdi.deconAt = 0
zgdi.manualAt = 0

pcall(function()
hwbc.misc.deconToggle:UpdateState(true)
end)
end,
},
{
Name = _d("IFAdERwL"),
Callback = function()
pcall(function()
hwbc.misc.deconToggle:UpdateState(false)
end)
end,
},
},
})

return false
end

function hwbc.misc.cards.wantedFor(bpoc)
local vfvi = hwbc.misc.cards[bpoc] or {}

if next(vfvi) == nil or vfvi[0] then
return nil
end

return vfvi
end

function hwbc.misc.cards.npcFor(nxx)
local efu = workspace:FindFirstChild(_d("LWEwAQ"))

if not efu then
return nil
end

local zjx = nxx and _d("BUQAFyYJAgA") or _d("B1QQHRcUBhFEEAYmCQIA")

for volb, rpy in ipairs(efu:GetChildren()) do
if rpy:GetAttribute(_d("LWEwOx0")) == zjx then
return rpy
end
end

local ngnm = nxx and { _d("LF4DGhUe"), _d("DF4DHgAC") } or { _d("MFkSBxUG"), _d("K1AFFy0QHSdQFwE") }

for jql, xkk in ipairs(efu:GetChildren()) do
for ab, igua in ipairs(ngnm) do
if xkk.Name == igua then
return xkk
end
end
end

local eyid = nxx and { _d("AFABFlkKFxFWGhwe"), _d("DF4DGhUe") } or { _d("B1QQHRcUBhFEEAYQCBw"), _d("EFkSBxUG") }

for elip, vtn in ipairs(efu:GetChildren()) do
for atcu, ocvi in ipairs(vtn:GetDescendants()) do
if ocvi:IsA(_d("N1QLBjUGEAZd")) and ocvi.Text ~= _d("") then
local zuby = ocvi.Text:lower()

for zau, ofoh in ipairs(eyid) do
if zuby:find(ofoh, 1, true) then
return vtn
end
end

break
end
end
end

return nil
end

function hwbc.misc.cards.rarityText(rdh)
local hgh = hwbc.misc.cards.wantedFor(rdh)

if not hgh then
return _d("Il0f")
end

local kath = {}

for ddm, qcxq in pairs(hwbc.misc.cards.borderOf) do
if hgh[qcxq] then
table.insert(kath, ddm)
end
end

if #kath == 0 then
return _d("Il0f")
end

table.sort(kath)

return table.concat(kath, _d("TxE"))
end

function hwbc.misc.cards.run(sqkb, kwk, dsz)
local mpz = hwbc.misc.cards
local lgfy = hwbc.misc.util
local vono = sqkb and _d("DlQBFRwmBg") or _d("B1QQHRcmBg")

if dsz then
if os.clock() < mpz[vono] then
return false, _d("LV4HUh0SF0NIFgZX")
end
elseif os.clock() < mpz.manualAt then
return false, _d("NFAaBlkGUg5eHhcXE1w")
end

if mpz.inFlight then
return false, _d("Il8cBhECAENSEgAdRwYRWANSEBRSAl0BFxgDC0NDBhwXDhwEHw")
end

local vv = wx.busy(1) and 1 or (wx.busy(2) and 2 or nil)
local lekk = os.clock() - (qfnj.floorAt or 0) < 90
local tbo = vv ~= nil and wx.towerSlot() == vv and lekk

if vv and not tbo then
return false, _d("Kl9TE1kFExdFHxdZSlIXWRZSDRUbExEEHQwLFkNUHRZZDgZN")
end

if pi.battlePending and os.time() < (pi.battlePendingUntil or 0) then
return false, _d("IhEREw0THgYRGgFZFAYCQwcbFwBSThEHGhxHBhFYA1IOCAcPVVMRGAkRBl1TGw1J")
end

if not sqkb and not mpz.burnAllowed() then
return false, _d("IF4dFBAVH0NjEhsXBR0UHiYcEBEXEUISHlkBGxFCB1w")
end

local zxpi = mpz.npcFor(sqkb)

if not zxpi then
return false, sqkb
and _d("LF4DGhUeUgpCUxwWE1IKX1MGEQ4BQ1wSAllKUhdDEgQcC1IXXlMaEApSAl8XUgkVFxBCUxsNRxMEUBocVw")
or _d("N1kWUh0CEQxfAAYLEhEXET0iOkcbEBEdHQ1HGw0RBxoQFFIOUANSVEcGEVAFFxVHBgwRGgZZBhwHEQMAHBQBQ1gHUhgAEwpfXQ")
end

local lyz = sqkb and qj.OpenFuseDialog or qj.OpenDeconstructDialog
local bojc = sqkb and qj.FuseCards or qj.DeconstructCards

if not (lyz and bojc) then
return false, _d("N1kSBlkOAUNfHAZZDhxDRRsbCkcVAlwWUg8CABBYHBxX")
end

local don = sqkb and _d("DlQBFRwwEw1FFhY") or _d("B1QQHRcwEw1FFhY")
local ikj = mpz.wantedFor(don)

mpz.manualAt = os.clock() + mpz.manualGap

if dsz then
mpz[vono] = os.clock() + mpz.interval
end

mpz.inFlight = true

task.spawn(function()

local qaus = nil

local function srng(yuzt, wfmt)
if sqkb then
mpz.mergeDone = yuzt
else
mpz.deconDone = yuzt
end

if wfmt and dsz then
mpz[vono] = os.clock() + 120
end

mpz.inFlight = false
end

local avti = lgfy.visit(zxpi.Name)

if not avti then
srng(_d("IFkSABgEBgZDUxsKRxwMRVMAHAYWGhFeUgsCBhFIGhweRxsNEQcFFkcfCl8GBhwUXA"), true)

return
end

task.wait(0.9)

local tky = nil
local ekcg = lyz.OnClientEvent:Connect(function(vea)
if type(vea) == _d("F1ARHhw") then
tky = vea
end
end)

for bonh = 1, 3 do
pcall(function()
lyz:FireServer()
end)

for aex = 1, 20 do
if tky then
break
end

task.wait(0.3)
end

if tky then
break
end

task.wait(1.5)
end

ekcg:Disconnect()
lgfy.returnTo(avti)

if type(tky) ~= _d("F1ARHhw") then
srng(_d("N1kWUh0OEw9eFFIdDhZDXxwGWQYcEEYWAFlKUhFUBwAADhwEERocWRMFDBEeGxcSBgZCXQ"), true)

return
end

local hqno = {}

for fre, fsfr in ipairs(tky) do
local hmeu = tonumber(fsfr.borderLevel)
local fyt = fsfr.cardId or fsfr.id

if hmeu and (not ikj or ikj[hmeu])
and (sqkb or not hwbc.misc.cards.isProtected(fyt, hmeu)) then
table.insert(hqno, fsfr)
end
end

if #hqno == 0 then

hwbc.misc.cards.closeFrame(sqkb)
srng(_d("LV4HGhAJFUNFHFIKAhwHERUdC0c") .. hwbc.misc.cards.rarityText(don) .. _d("TQ"))

return
end

if kwk then

local ahx = {}

for np, zjc in ipairs(hqno) do
if (tonumber(zjc.count) or 0) >= kwk then
table.insert(ahx, zjc)
end
end

if #ahx == 0 then
hwbc.misc.cards.closeFrame(sqkb)
srng(_d("LV5T") .. hwbc.misc.cards.rarityText(don) .. _d("Q0McBVkPExAR") .. kwk .. _d("Q1IcAhACAUNIFgZX"))

return
end

hqno = ahx

table.sort(hqno, function(lkps, wwga)
return (tonumber(lkps.count) or 0) < (tonumber(wwga.count) or 0)
end)

local pk, zoxl = {}, 0

for ogm, auqk in ipairs(hqno) do
local cd = tonumber(auqk.count) or 0

if #pk > 0 and zoxl + cd > kwk then
break
end

table.insert(pk, auqk)
zoxl = zoxl + cd
end

hqno = pk
qaus = zoxl
end

local qoya = 0

hwbc.misc.cards.closeFrame(sqkb)

if sqkb then
if not ikj then

pcall(function()
bojc:FireServer(_d("Al0f"), nil)
end)

qoya = #hqno
else
local ary = {}

for bpm, wb in ipairs(hqno) do
table.insert(ary, { wb.cardId, tonumber(wb.borderLevel) })
end

pcall(function()
bojc:FireServer(_d("EFQfFxoTFwduEh4V"), ary)
end)

qoya = #ary
end
else
local aao = {}

for mljk, wur in ipairs(hqno) do
if #aao >= 25 then
break
end

table.insert(aao, { wur.cardId, tonumber(wur.borderLevel), _d("Al0f") })
end

pcall(function()
bojc:FireServer(aao)
end)

qoya = #aao
end

srng(_d("MFQdBlk") .. tostring(qoya) .. _d("Q0McBQ") .. (qoya == 1 and _d("") or _d("EA"))
.. _d("Qxk") .. hwbc.misc.cards.rarityText(don) .. _d("Sg")
.. (qaus and (_d("TxE") .. tostring(qaus) .. _d("Q1ISAB0U")) or _d("")))
end)

return true
end

function hwbc.misc.cards.closeFrame(xh)
pcall(function()
local tl = xh and { _d("JUQAFz4SGw"), _d("JUQAFz8VEw5U") } or { _d("J1QQHRcUBhFEEAY+Ehs"), _d("J1QQHRcUBhFEEAY/FRMOVA") }
local mm = require(jjv.ModuleScripts.MenuManager)
local gdnj = zt:FindFirstChild(tl[1])
local be = gdnj and gdnj:FindFirstChild(tl[2])

if be then
mm.close(be)
end

if not xh then
local cqx = gdnj and gdnj:FindFirstChild(_d("J1QQHRcUBhFEEAYrBgYGQjUAGAoX"))

if cqx then
mm.close(cqx)
else
cqx = zt:FindFirstChild(_d("J1QQHRcUBhFEEAYrBgYGQjUAGAoX"))

if cqx then
mm.close(cqx)
end
end
end
end)
end

function hwbc.misc.cards.refresh(uqb)

local tifb = uqb and hwbc.misc.mergeParagraph or hwbc.misc.deconParagraph

if not tifb then
return
end

pcall(function()
tifb:UpdateBody(uqb
and hwbc.misc.cards.mergeText()
or hwbc.misc.cards.deconText())
end)
end

function hwbc.misc.cards.mergeText()
local pohe = hwbc.misc.cards

return _d("MVABGw0OFxALUw") .. pohe.rarityText(_d("DlQBFRwwEw1FFhY")) .. _d("aQ") .. pohe.mergeDone
end

function hwbc.misc.cards.deconText()
local uxe = hwbc.misc.cards

return _d("MVABGw0OFxALUw") .. uxe.rarityText(_d("B1QQHRcwEw1FFhY")) .. _d("aQ") .. uxe.deconDone
.. _d("aWYWEw0PFxEdUxAWFAFPEQETEANeQ0YcABUDUgFeAAFVRxQKQhsbFwBeQ3kSHhUIBQZUHVIYCRZDVAUXFxNSAFABFgpHExFUUxwcERcREQAXFxNc")
end

hwbc.misc.skill = {
on = false,
at = 0,
mainWanted = {},
raidWanted = {},

mainOrder = {},
raidOrder = {},
last = _d("LV4HGhAJFUNTHAceDwZDSBYG"),
shown = _d(""),
}

function hwbc.misc.skill.branchMap(uknn)
local miny = {}

for sfg, evm in ipairs(beht.Trees[uknn].branches) do
miny[evm.name] = evm
end

return miny
end

function hwbc.misc.skill.branchLabels(isij)
local hzc = {}

for yxt, yld in ipairs(beht.Trees[isij].branches) do
table.insert(hzc, yld.name)
end

return hzc
end

function hwbc.misc.skill.wantedFrom(djv, fgp)
local xcy = {}
local kr = hwbc.misc.skill.branchMap(fgp)

if type(djv) == _d("F1ARHhw") then
for tbud, otpt in pairs(djv) do
if otpt and kr[tostring(tbud)] then
xcy[kr[tostring(tbud)].id] = true
end
end
end

return xcy
end

function hwbc.misc.skill.ordered(rkn, qrgj)
local uu = {}
local mrdg = {}

for bk, gvw in ipairs(qrgj or {}) do
if rkn[gvw] then
table.insert(uu, gvw)
mrdg[gvw] = true
end
end

for tmmj in pairs(rkn) do
if not mrdg[tmmj] then
table.insert(uu, tmmj)
end
end

return uu
end

function hwbc.misc.skill.branchById(bhc)
local mox = {}

for nlrx, nrbh in ipairs(beht.Trees[bhc].branches) do
mox[nrbh.id] = nrbh
end

return mox
end

function hwbc.misc.skill.upgrade()
local elfs = hwbc.misc.skill
local xng = hwbc.misc.util
local ywkd = xng.currentProfile and xng.currentProfile()

if type(ywkd) ~= _d("F1ARHhw") then
return false, _d("LV5TAgsIFApdFlIAAgZN")
end

local ksew = ywkd.skillTrees or {}
local woqj = { [1] = elfs.mainOrder, [2] = elfs.raidOrder }
local rte = nil

for cayp, hgiw in ipairs(beht.Trees) do
local rq = ksew[hgiw.id]
local bfz = tonumber(ywkd[hgiw.pointsField or _d("EFoaHhU3HQpfBwE")]) or 0
local wtg = hwbc.misc.skill.branchById(cayp)

if type(rq) == _d("F1ARHhw") and bfz > 0 then
for kun, fpz in ipairs(woqj[cayp] or {}) do
local zl = wtg[fpz]

if zl and not rte then
local sd = beht.getBranchLevel(ksew, hgiw.id, zl.id) or 0
local ofcx = sd + 1

if ofcx <= zl.levels then
local xjqf = zl.id .. ofcx
local ius = 1

if type(zl.costs) == _d("F1ARHhw") and tonumber(zl.costs[ofcx]) then
ius = tonumber(zl.costs[ofcx])
elseif tonumber(zl.cost) then
ius = tonumber(zl.cost)
end

if ius <= bfz and beht.isAvailable(ksew, hgiw.id, xjqf) then
rte = { tree = hgiw.id, node = xjqf, name = zl.name, level = ofcx }
end
end
end
end
end
end

if not rte then
return false, _d("LV4HGhAJFUNFHFIbEgtDSBYGVw")
end

qj.BuySkillNode:FireServer(rte.tree, rte.node)

if xng.askProfile then
pcall(xng.askProfile)
end

elfs.last = _d("IV4GFRETUg") .. rte.name .. _d("Qw") .. tostring(rte.level)

return true
end

function hwbc.misc.skill.text()
local ozsj = hwbc.misc.skill
local gr = hwbc.misc.util
local zuad = gr.currentProfile and gr.currentProfile()

if type(zuad) ~= _d("F1ARHhw") then
return _d("M14aHA0USEMOeQ") .. ozsj.last
end

local bwl = zuad.skillTrees or {}
local wnf = {}

local fmff = { [1] = ozsj.mainOrder, [2] = ozsj.raidOrder }

for mjj, ekgv in ipairs(beht.Trees) do
local xfv = tonumber(zuad[ekgv.pointsField or _d("EFoaHhU3HQpfBwE")]) or 0
local hcv = {}
local qpjz = hwbc.misc.skill.branchById(mjj)

for bwd, qech in ipairs(fmff[mjj] or {}) do
local rtr = qpjz[qech]

if rtr then
local orr = beht.getBranchLevel(bwl, ekgv.id, rtr.id) or 0
table.insert(hcv, rtr.name .. _d("Qw") .. tostring(orr) .. _d("TA") .. tostring(rtr.levels))
end
end

wnf[#wnf + 1] = ekgv.name .. _d("WRE") .. tostring(xfv) .. _d("Q0EHAQ")
.. (#hcv > 0 and (_d("QxxT") .. table.concat(hcv, _d("TxE"))) or _d("QxxTHBYTGgpfFFIJDhEIVBc"))
end

wnf[#wnf + 1] = ozsj.last

return table.concat(wnf, _d("aQ"))
end

hwbc.misc.mergeSection = hwbc.misc.tab:Section({
Side = _d("L1QVBg"),
})

hwbc.misc.mergeSection:Header({
Name = _d("LlQBFRxHgvyW3w"),
})

hwbc.misc.mergeToggle = hwbc.misc.mergeSection:Toggle({
Name = _d("IkQHHVkKFxFWFg"),
Default = false,
Callback = function(szrm)
local pozl = hwbc.misc.cards

pozl.mergeOn = szrm

pozl.mergeAt = (szrm and gcsp.loading) and (os.clock() + pozl.interval) or 0
end,
}, _d("AkQHHSYKFxFWFg"))

hwbc.misc.mergeDropdown = hwbc.misc.mergeSection:Dropdown({
Name = _d("MVABGw0OFxA"),
Search = false,
Multi = true,
Required = false,
Default = { _d("Il0f") },
Options = hwbc.misc.cards.rarityLabels,
Callback = function(dmk)
local rozs = {}

if type(dmk) == _d("F1ARHhw") then
for krmx, zv in pairs(dmk) do
if zv then
if krmx == _d("Il0f") then
rozs[0] = true
else
rozs[hwbc.misc.cards.borderOf[tostring(krmx)]] = true
end
end
end
end

hwbc.misc.cards.mergeWanted = rozs
hwbc.misc.cards.refresh(true)
end,
}, _d("EVABGw0OFxA"))

hwbc.misc.mergeSection:Button({
Name = _d("LlQBFRxHHAxG"),
Callback = function()
local yvza, bqvi = hwbc.misc.cards.run(true)

if not yvza then
nanp:Notify({
Title = _d("LlQBFRw"),
Description = bqvi,
Lifetime = 6,
})
end
end,
})

hwbc.misc.mergeSection:Button({
Name = _d("LlQBFRxHS1M"),
Callback = function()

local idoe, jqf = hwbc.misc.cards.run(true, 90)

if not idoe then
nanp:Notify({
Title = _d("LlQBFRxHS1M"),
Description = jqf,
Lifetime = 6,
})
end
end,
})

hwbc.misc.mergeParagraph = hwbc.misc.mergeSection:Paragraph({
Header = _d("MEUSBgwU"),
Body = hwbc.misc.cards.mergeText(),
})

hwbc.misc.accSection = hwbc.misc.tab:Section({
Side = _d("MVgUGg0"),
})

hwbc.misc.accSection:Header({
Name = _d("IlIQFwoUHRFYFgFZl+3xvw"),
})

hwbc.misc.accToggle = hwbc.misc.accSection:Toggle({
Name = _d("IkQHHVkFFxBFUxMaBBcQQhwAAA"),
Default = false,
Callback = function(azx)
hwbc.misc.util.accOn = azx
hwbc.misc.util.accAt = 0
end,
}, _d("AkQHHSYFFxBFLBMaBBcQQhwAAA"))

hwbc.misc.accBuyToggle = hwbc.misc.accSection:Toggle({
Name = _d("IkQHHVkFBxoRERcKEw"),
Default = false,
Callback = function(ln)
hwbc.misc.util.accBuyOn = ln
hwbc.misc.util.accBuyAt = 0
hwbc.misc.util.accAt = 0
end,
}, _d("AkQHHSYFBxpuERcKEw"))

hwbc.misc.accSection:Button({
Name = _d("IUQKUhsCARc"),
Callback = function()
local wd, adt = hwbc.misc.util.buyBest()

if not wd then
nanp:Notify({
Title = _d("IlIQFwoUHRFYFgE"),
Description = adt,
Lifetime = 6,
})
end
end,
})

hwbc.misc.accSection:Button({
Name = _d("JkAGGwlHEAZCBw"),
Callback = function()
if not hwbc.misc.util.equipBest() then
nanp:Notify({
Title = _d("IlIQFwoUHRFYFgE"),
Description = _d("LV4HGhAJFUNTFgYNAgBDWABSFhAcBlVTCxwTXA"),
Lifetime = 5,
})
end
end,
})

hwbc.misc.accParagraph = hwbc.misc.accSection:Paragraph({
Header = _d("MEUSBgwU"),
Body = hwbc.misc.util.accText(),
})

hwbc.misc.claimInfo = hwbc.misc.tab:Section({
Side = _d("MVgUGg0"),
})

hwbc.misc.claimInfo:Header({
Name = _d("LlgAERwLHgJfFh0MFA"),
})

hwbc.misc.indexParagraph = hwbc.misc.claimInfo:Paragraph({
Header = _d("IFABFlkuHAdUCw"),
Body = hwbc.misc.util.indexText(),
})

hwbc.misc.achParagraph = hwbc.misc.claimInfo:Paragraph({
Header = _d("IlIbGxwRFw5UHQYK"),
Body = hwbc.misc.util.achText(),
})

hwbc.misc.questParagraph = hwbc.misc.claimInfo:Paragraph({
Header = _d("MkQWAQ0U"),
Body = hwbc.misc.util.questText(),
})

hwbc.misc.packParagraph = hwbc.misc.claimInfo:Paragraph({
Header = _d("M1AQGQo"),
Body = hwbc.misc.util.packText(),
})

hwbc.misc.skillSection = hwbc.misc.tab:Section({
Side = _d("MVgUGg0"),
})

hwbc.misc.skillSection:Header({
Name = _d("MFoaHhVHJhFUFlKJ+P7Q"),
})

hwbc.misc.skillToggle = hwbc.misc.skillSection:Toggle({
Name = _d("IkQHHVkSAgRDEhYc"),
Default = false,
Callback = function(pias)
local sby = hwbc.misc.skill

if pias and not (next(sby.mainWanted) or next(sby.raidWanted)) then
sby.on = false

pcall(function()
hwbc.misc.skillToggle:UpdateState(false)
end)

nanp:Dialog({
Title = _d("M1gQGVkGUgFDEhwaD1IFWAEBDQ"),
Description = _d("IFkcHQoCUgJFUx4cBgEXERwcHEcQEVAdERFHGw0RBxocRz8CWB1SDRUXBhEcAFk1EwpVUwYLAhdDVQEdCQMdFF9TX1k")
.. _d("IkQHHVkSAgRDEhYcRx0NXQpSChcXDVUAUgkIGw1FAFIODxcRVFMLFhJSE14aHA1HGxcf"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})

return
end

sby.on = pias
sby.at = 0
end,
}, _d("AkQHHSYSAgRDEhYc"))

hwbc.misc.skillMainDropdown = hwbc.misc.skillSection:Dropdown({
Name = _d("LlAaHFkTAAZU"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = hwbc.misc.skill.branchLabels(1),
Callback = function(xcxo)
local yel = hwbc.misc.skill
local jvba = yel.wantedFrom(xcxo, 1)

yel.mainWanted = jvba
yel.mainOrder = yel.ordered(jvba, yel.mainOrder)
yel.shown = _d("")
end,
}, _d("DlAaHCYTAAZU"))

hwbc.misc.skillRaidDropdown = hwbc.misc.skillSection:Dropdown({
Name = _d("MVAaFlkTAAZU"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = hwbc.misc.skill.branchLabels(2),
Callback = function(lcv)
local lnx = hwbc.misc.skill
local gdyb = lnx.wantedFrom(lcv, 2)

lnx.raidWanted = gdyb
lnx.raidOrder = lnx.ordered(gdyb, lnx.raidOrder)
lnx.shown = _d("")
end,
}, _d("EVAaFiYTAAZU"))

pcall(function()
hwbc.misc.skillMainDropdown:UpdateSelection({})
end)

pcall(function()
hwbc.misc.skillRaidDropdown:UpdateSelection({})
end)

hwbc.misc.skillParagraph = hwbc.misc.skillSection:Paragraph({
Header = _d("MEUSBgwU"),
Body = hwbc.misc.skill.text(),
})

task.spawn(function()
local dttm = hwbc.misc.util

while upo() do
if dttm.indexOn or dttm.achOn or dttm.questOn or dttm.accOn or dttm.accBuyOn then
dttm.currentProfile()
end

if dttm.indexOn then
dttm.claimIndex()
end

if dttm.achOn then
dttm.claimAchievement()
end

if dttm.questOn then

if os.clock() - dttm.questAskedAt > 20 or os.clock() - dttm.weeklyAskedAt > 20 then
dttm.askQuests()
end

dttm.claimQuest()
end

if dttm.accOn and os.clock() >= dttm.accAt then
dttm.accAt = os.clock() + 3
dttm.equipBest()
end

local ewo = hwbc.misc.cards

if not ewo.inFlight then
if ewo.mergeOn and os.clock() >= ewo.mergeAt then
ewo.run(true, nil, true)
elseif ewo.deconOn and os.clock() >= ewo.deconAt then
ewo.run(false, nil, true)
end
end

if ewo.mergeDone ~= ewo.mergeShown then
ewo.mergeShown = ewo.mergeDone

pcall(function()
hwbc.misc.mergeParagraph:UpdateBody(hwbc.misc.cards.mergeText())
end)
end

if ewo.deconDone ~= ewo.deconShown then
ewo.deconShown = ewo.deconDone

pcall(function()
hwbc.misc.deconParagraph:UpdateBody(hwbc.misc.cards.deconText())
end)
end

local pnke = hwbc.misc.skill

if pnke.on and os.clock() >= pnke.at then

pnke.at = os.clock() + 2
pnke.upgrade()
end

local mco = hwbc.misc.skill.text()

if pnke.shown ~= mco then
pnke.shown = mco

pcall(function()
hwbc.misc.skillParagraph:UpdateBody(mco)
end)
end

if dttm.accBuyOn and os.clock() >= dttm.accBuyAt then

local zrtz = dttm.buyBest()

dttm.accBuyAt = os.clock() + (zrtz and 45 or 10)
end

local xkp = {
{ key = _d("Cl8XFwE"), paragraph = hwbc.misc.indexParagraph, value = dttm.indexText() },
{ key = _d("AlIb"), paragraph = hwbc.misc.achParagraph, value = dttm.achText() },
{ key = _d("EkQWAQ0"), paragraph = hwbc.misc.questParagraph, value = dttm.questText() },
{ key = _d("E1AQGQ"), paragraph = hwbc.misc.packParagraph, value = dttm.packText() },
{ key = _d("AlIQ"), paragraph = hwbc.misc.accParagraph, value = dttm.accText() },
}

for jway, nex in ipairs(xkp) do
if nex.paragraph and dttm.shown[nex.key] ~= nex.value then
dttm.shown[nex.key] = nex.value

pcall(function()
nex.paragraph:UpdateBody(nex.value)
end)
end
end

task.wait(0.75)
end
end)

local ubeb = wiv:Section({
Side = _d("MVgUGg0"),
})

ubeb:Paragraph({
Header = _d("JVgAGhAJFQ"),
Body = _d("IkQHHVkhGxBZUxcIEhsTQlMLFhIAQ0McFlVHFAJSFgFZExoGEQQTDQIAQ1AdFlkEExBFAFIWCVIKRQBSFhAcTxEHGhwJUhFUFh4KRwULVB1SCggfBkUbGxcAUgFYBxcKSVI3YVMGFkcwAkhTAgwLHhARCh0MRxACUhhSDQhSF1kWUhsGC0NXGgAKE15DUB0WWRMaBhEHBRZHNgZUAxcKE1I0UAcXC0cBFFgHERECAUNZHB4dRwYLVFMBCQgGQ0gcB1kQFxFUUwENBhwHWB0VWQgcQ0YbFxdHCwxEUxMLChcHEQcaHApSThEHGhxHFgZUAxcKE1IRWB0VWQQTEUMaFwpHBgtUUxAQABUGQgdSFRIRCBERHRcSAU07eSYRAlIQWRwCWQUHGkJTExcDUgZABhsJFFIRXhcBWQYcBxERExATUhRYBxpZExoGERATChMBQ0gcB1kPExVUXVI7EgsKXxRSFwIXB0JTBhECUgBeBhwNAgBDHFMQFhMaQ1IcHxxHFBFeHlINDxdDdxoBEQIADlAdXHNtMQJFEBocFFIIVBYCCkcTQ0MGHBcOHAQRBxMVCwtDUwpSEBMXDhESHB1HAQJHFgFZDgZPEQAdWRMaBhEHHQ0GHkNSEgALDhcQERwEHBVSAVQHBRwCHENCFgEKDh0NQl0"),
})

local zxwy = wiv:Section({
Side = _d("MVgUGg0"),
})

zxwy:Header({
Name = _d("IFAHERECAQ"),
})

local fwu

fwu = zxwy:Paragraph({
Header = _d("NFkSBlkeHRYREBMMABoX"),
Body = kn(),
})

local bfnr = wiv:Section({
Side = _d("MVgUGg0"),
})

bfnr:Header({
Name = _d("KkIfExcDUhBZHAI"),
})

bfnr:Toggle({
Name = _d("IkQHHVkEAAJXB10bEgtDWAAeGAkWQ0McFg"),
Default = false,
Callback = function(yrvf)
iong.island.autoRod = yrvf
iong.islandAt = 0
end,
}, _d("CkIfExcDLQJEBx0mFR0H"))

bfnr:Toggle({
Name = _d("JkAGGwlHGxBdEhwdRwAMVQ"),
Default = false,
Callback = function(yzp)
iong.island.equipRod = yzp
iong.islandAt = 0
end,
}, _d("CkIfExcDLQZABhsJOAAMVQ"))

bfnr:Toggle({
Name = _d("IkQHHVkEAAJXB1IYBBEGQgAdCx4"),
Default = false,
Callback = function(jfy)
iong.island.autoAcc = jfy
iong.islandAt = 0
end,
}, _d("CkIfExcDLQJEBx0mBhEAVAABFhUL"))

bfnr:Toggle({
Name = _d("JkAGGwlHEwBSFgEKCAAa"),
Default = false,
Callback = function(jsmb)
iong.island.equipAcc = jsmb
iong.islandAt = 0
end,
}, _d("CkIfExcDLQZABhsJOBMAUhYBCggAGg"))

local uzo

uzo = bfnr:Paragraph({
Header = _d("KkIfExcDUgRUEgA"),
Body = iong.shopIsland.text(),
})

local gyry = wiv:Section({
Side = _d("L1QVBg"),
})

gyry:Header({
Name = _d("MVQRGwsTGg"),
})

iong.rebirthToggle = gyry:Toggle({
Name = _d("IkQHHVkVFwFYAQYR"),
Default = false,
Callback = function(ewem)
iong.autoRebirth = ewem
end,
}, _d("AkQHHSYVFwFYAQYR"))

iong.rebirthParagraph = gyry:Paragraph({
Header = _d("MEUSBgwU"),
Body = iong.rebirthText(),
})

gyry:Button({
Name = _d("N2FTBhZHGxBdEhwd"),
Callback = function()
if not iong.gotoIsland() then
nanp:Notify({
Title = _d("IlMSHB0IHAZVUzsKCxMNVQ"),
Description = _d("IFkSABgEBgZDUxsKRxwMRVMAHAYWGhEKFw1HX0NFAQtZBhUCWB1SEAlSAhEeHRQCHBcf"),
Lifetime = 5,
})
end
end,
})

local dub

dub = gyry:Toggle({
Name = _d("IkQHHVkuAQ9QHRZZLxMRVRAdCwI"),
Default = false,
Callback = function(ozl)
ht.island = ozl
ht.pending = false
ht.pendingUntil = 0
ht.paused = false
ht.gaveUp = false
ht.stoodDown = false
ht.manualPause = false

if not ozl then
return
end

if wx.otherTowerOn(_d("C1ABFhoIAAY")) then
ht.island = false

pcall(function()
dub:UpdateState(false)
end)

pcall(function()
nanp:Dialog({
Title = _d("IkQHHVkuAQ9QHRZZLxMRVRAdCwJSDFcV"),
Description = _d("N1kWUjEGHg9eBBccCVIXXgQXC0cbEBESHgsCEwdIUwAMCRwKXxReWQYcBxEEGw0PUgxfFlIKCx0XEQcaHEcVAlwWUhYJHhoRAQcXFFIMXxZSEAkUCl8aBhxHAAxeHlIYE1ICEQcbFAJcQ2UGABdHBgtQB1IWARRPERwAWRMHEV9THRdHMxZFHFIqCx0XEQAdWQITAFlTBhYQFxERFBcNFFIKRQBSFhAcQ0IfHQ1J"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})
end)

return
end

if wx.enabled and wx.hardcoreSlot() == nil then
ht.island = false

pcall(function()
dub:UpdateState(false)
end)

pcall(function()
nanp:Dialog({
Title = _d("IkQHHVkuAQ9QHRZZLxMRVRAdCwJSDFcV"),
Description = _d("LV5TARUIBkNYAFIKAgZDRRxSGEcGDEYWAFVHEw1VUwYRAlIEUB4XWQgcD0hTAQ0GABdCUxNZEx0UVAFSCxIcQ1cBHRRHE0NFHAUcFVIQXRwGV0chBkVTHRcCUhdeUzsKCxMNVVMaGBUWAF4BF1VHHRERBwcLCVIiRAcdWTQeDEVTHR8BXA"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})
end)

return
end

if not ht.data then
ht.island = false

pcall(function()
dub:UpdateState(false)
end)

pcall(function()
nanp:Dialog({
Title = _d("IkQHHVkuAQ9QHRZZLxMRVRAdCwJSDFcV"),
Description = _d("N1kaAVkFBwpdF1IRBgFDXxxSMQYAB1IcABwzHRRUATYYExNPEQAdWRMaBhEHHQ4CAERCUwENBhUGQlMRGAkcDEVTEBxHAAZQF1IYCRZDUFMADAlSAFAdHBYTUgFUUwENBgAXVBdc"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})
end)

return
end

local fop = ht.remotes.request

if fop then
pcall(function()
fop:FireServer()
end)
end
end,
}, _d("AkQHHSYOAQ9QHRYmDxMRVRAdCwI"))

ht.islandToggle = dub

ht.islandParagraph = gyry:Paragraph({
Header = _d("IUQVFAo"),
Body = ht.buffText(),
})

gyry:Button({
Name = _d("M1AGARxHOxBdEhwdRzoCQxcRFhUX"),
Callback = function()
if ht.pauseRun then
ht.pauseRun()
end
end,
})

gyry:Button({
Name = _d("JFgFF1kyAkN4AB4YCRZDeRIAHQQdEVQ"),
Callback = function()
if ht.giveUpRun then
ht.giveUpRun()
end
end,
})

local jjfh = wiv:Section({
Side = _d("L1QVBg"),
})

jjfh:Header({
Name = _d("JVgAGhAJFUNCGx0J"),
})

jjfh:Toggle({
Name = _d("IkQHHVkFBxoRERcKE1IRXhc"),
Default = false,
Callback = function(lbnd)
iong.shop.autoBuyRod = lbnd
iong.shopAt = 0
end,
}, _d("AkQHHSYFBxpuERcKEy0RXhc"))

jjfh:Toggle({
Name = _d("IkQHHVkFBxoRERcKE1IBUBoG"),
Default = false,
Callback = function(szyh)
iong.shop.autoBuyBait = szyh
iong.shopAt = 0
end,
}, _d("AkQHHSYFBxpuERcKEy0BUBoG"))

jjfh:Toggle({
Name = _d("JkAGGwlHEAZCB1ILCBY"),
Default = false,
Callback = function(emmp)
iong.shop.equipRod = emmp
iong.shopAt = 0
end,
}, _d("BkAGGwk4EAZCBy0LCBY"))

jjfh:Toggle({
Name = _d("JkAGGwlHEAZCB1IbBhsX"),
Default = false,
Callback = function(upv)
iong.shop.equipBait = upv
iong.shopAt = 0
end,
}, _d("BkAGGwk4EAZCBy0bBhsX"))

local biab

biab = jjfh:Paragraph({
Header = _d("IVQABlkeHRYREBMXRxcSRBoC"),
Body = qmr(),
})
task.spawn(function()
local otg = nz()
local fgi = kn()
local dxin = qmr()
local lium = iong.shopIsland.text()

while upo() do
local xq = nz()

if xq ~= otg then
otg = xq
pcall(function()
umz:UpdateBody(xq)
end)
end

local uoz = kn()

if uoz ~= fgi then
fgi = uoz
pcall(function()
fwu:UpdateBody(uoz)
end)
end

local iwma = qmr()

if iwma ~= dxin then
dxin = iwma
pcall(function()
biab:UpdateBody(iwma)
end)
end

local icre = iong.shopIsland.text()

if icre ~= lium then
lium = icre
pcall(function()
uzo:UpdateBody(icre)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while upo() do

if fhth() and os.clock() >= (iong.shopAt or 0)
and os.clock() >= (iong.islandTripUntil or 0) then
iong.shopAt = os.clock() + 1
pcall(ioe)
end

if iong.shopIsland.active() and os.clock() >= (iong.islandAt or 0)
and os.clock() >= math.max(iong.shopHoldUntil or 0, iong.tpHoldUntil or 0) then
iong.islandAt = os.clock() + 2
pcall(iong.shopIsland.run)
end

task.wait(1)
end
end)

zmbl:Select()

local qyzi = zmbl:Section({
Side = _d("L1QVBg"),
})

local pyto = zmbl:Section({
Side = _d("MVgUGg0"),
})

local vkk = qyzi:Paragraph({
Header = _d("MEUSBgwU"),
Body = pknb(),
})

qyzi:Divider()

pi.npcToggle = qyzi:Toggle({
Name = _d("IkQHHVkpIiA"),
Default = false,
Callback = function(aqmf)

if aqmf and not pi.story and #cgz() == 0 then
pcall(function()
pi.npcToggle:UpdateState(false)
end)

nanp:Dialog({
Title = _d("IkQHHVkpIiARHRccAwFDUFMGGBUVBkU"),
Description = _d("M1gQGVkGBkNdFhMKE1IMXxZSNzcxQ1cBHRRHBgtUUwUWFR4HQlMQHAsdFB1THQtHBhZDHVIWCVIiRAcdWSQdDkEfFw0CUjBFHAAASVI3WRYAHEcbEBEdHQ0PGw1WUwYWRxQKVhsGWR4XFx8"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})

return
end

pi.enabled = aqmf
end,
}, _d("AkQHHSYJAgA"))

qyzi:Toggle({
Name = _d("NFAfGVkTHUN/IzE"),
Default = false,
Callback = function(kcq)
pi.walkToNpc = kcq
end,
}, _d("FFAfGSYTHTxfAxE"))

qyzi:Dropdown({
Name = _d("J1gVFBAEBw9FCg"),
Search = false,
Multi = true,
Required = false,
Default = { _d("LV4BHxgL") },
Options = piq,
Callback = function(gew)
local wkmo = {}

if type(gew) == _d("F1ARHhw") then
for vuq, ydi in ipairs(piq) do
if gew[ydi] then
table.insert(wkmo, vfmx[ydi])
end
end
end

if #wkmo == 0 then
wkmo = { _d("DV4BHxgL") }
end

pi.difficulties = wkmo
end,
}, _d("B1gVFBAEBw9FCg"))

qyzi:Toggle({
Name = _d("IkQHHVk1HQxcAA"),
Default = false,
Callback = function(hxxw)
ker.enabled = hxxw
ker.inBattle = false
ker.pending = false
end,
}, _d("AkQHHSYVHQxcAA"))

local rpc = zmbl:Section({
Side = _d("L1QVBg"),
})

rpc:Header({
Name = _d("MF0cBg"),
})

rpc:Paragraph({
Header = _d("K14EUg0PF0NCHx0NFFIUXgEZ"),
Body = _d("MF0cBllWUk4ROhwfDhwKRQpSLQgFBkNTWhcIAA5QH1IWFVItWBQaDQoTEVRaUhYVUitQHx4WEBcGX1MmFhAXER1TAhUSAUN/IzFZBRMXRR8XCkcFC1QdUgoLHRcRQVIQFFIBRAALV214MF0cBllVUk4RPSI6FF5DQxIbHRReQ0McHRQUXkN4AB4YCRZDeRIAHQQdEVRdeHMlHRdZUwEVCAYQERwcWSkiIBEREw0THgZCSVINEB1DfyMxWQEXAkUGABwUUgJFUx0XBBdPERIcHUcTQ0MSGx1HEAxCAFIcBhELH3l4LRAdQ0UcBRwVUhFEHQFZDgFDRRsXWQgcD0hTABwBBxBUF1IJBhsREV5SMBQeAl8XUjEGAAdSHAAcRx0NEREdDQ9SEF0cBgpHGxARHBwcRwAWX1MTCgwXBxEVHQtHBhRYEBdXbXgwXRwGCkcdBVdJUhYJF0NCHx0NS1IXXgQXCxRSF1AYF1kTBxFfAFw"),
})

wx.toggle = rpc:Toggle({
Name = _d("IkQHHVk0HgxF"),
Default = false,
Callback = function(izx)
if izx and wx.role[1] == wx.role[2] and wx.role[1] ~= _d("DUEQ") then
wx.enabled = false

pcall(function()
wx.toggle:UpdateState(false)
end)

nanp:Dialog({
Title = _d("IkQHHVk0HgxF"),
Description = _d("MF0cBllWUgJfF1IqCx0XEUFSGBUXQ1McBhFH") .. wx.roleLabel(1) .. _d("TREnGhgTUgpCUx0XAlIRRB1SGBQZBlVTFBYVUhdGGhEcS1IQXlMdFwJSDFdTBhECUhdGHFIKCx0XQlMaGBRSF15TEBxHAQxcFgYRDhwEERYeCgJc"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})

return
end

wx.enabled = izx

if izx then
wx.hasSlot2 = wx.detectSlot2()

if wx.hasSlot2 == false then
nanp:Dialog({
Title = _d("IkQHHVk0HgxF"),
Description = _d("MF0cBllVUg9eHBkKRx4MUhgXHUdfQ1gHUhcCFwdCUwYRAlInRBIeWSUTF0UfF1k0HgxFUxUYChcTUAABVUcdERE6HB8OHApFFlIrCB0OEUFHSUcRD1QSABwDXkNTFhQWFRdDRRsXWRQXAF4dFlkUHgxFUxEYCVIBUAcGFQJcQ2McBw0OHAQRAAYYHgFDXh1SCgsdFxFCUgwJBgpdUwYRAhxN"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})
end
end
end,
}, _d("AkQHHSYUHgxF"))

function wx.applyRoles()
if not wx.enabled then
return
end

if wx.role[1] == wx.role[2] and wx.role[1] ~= _d("DUEQ") then
wx.enabled = false

pcall(function()
wx.toggle:UpdateState(false)
end)

pcall(function()
nanp:Dialog({
Title = _d("IkQHHVk0HgxFUx0fAQ"),
Description = _d("MF0cBllWUgJfF1IqCx0XEUFSGBUXQ1McBhFH") .. wx.roleLabel(1) .. _d("TREnGhgTUgpCUx0XAlIRRB1SGBQZBlVTFBYVUhdGGhEcS1ICXxdSEBNSAFAdHBYTUhdQGBdZEwUMEQAeFhMBTREgFw1HHQ1UUwEVCAZDRRxSCggfBkUbGxcAUgZdABdX"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})
end)

return
end

local nl = {}

if wx.towerSlot() ~= 1 and qfnj.enabled then
qfnj.enabled = false
table.insert(nl, _d("IkQHHVkzHRRUAQ"))

pcall(function()
qfnj.ui:UpdateState(false)
end)
end

if wx.hardcoreSlot() == nil and ht.island then
ht.island = false
table.insert(nl, _d("IkQHHVkuAQ9QHRZZLxMRVRAdCwI"))

pcall(function()
ht.islandToggle:UpdateState(false)
end)
end

if wx.halloweenSlot() == nil and cmq.run.enabled then
cmq.run.enabled = false
table.insert(nl, _d("IkQHHVkvEw9dHAUcAhxDZRwFHBU"))

pcall(function()
cmq.toggle:UpdateState(false)
end)
end

if #nl > 0 then
pcall(function()
nanp:Dialog({
Title = table.concat(nl, _d("Q1AdFlk")) .. _d("Q14VFA"),
Description = _d("LV5TARUIBkNYAFIKAgZDRRxSDQ8TFxEHHQ4CAENQHQtZCh0RVF9SCghSCkVTGhgDUg1eBBocFRdDRRxSCxIcTRE0Gw8CUgpFUxNZFB4MRVMTHgYbDR1THQtHBhZDHVI4EgYMESAeFhNSDFcVXA"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})
end)
end
end

wx.oneDropdown = rpc:Dropdown({
Name = _d("MF0cBllW"),
Search = false,
Multi = false,
Required = false,

Default = 1,
Options = wx.optionsFor[1],
Callback = function(stmh)
local xcce = type(stmh) == _d("F1ARHhw") and stmh[1] or stmh

if type(xcce) == _d("EEUBGxcA") and wx.roleIds[xcce] then
wx.role[1] = wx.roleIds[xcce]
wx.picked[1] = xcce
end

pcall(function()
wx.oneDropdown:UpdateName(_d("MF0cBllWUoGx0VI") .. wx.roleLabel(1))
end)

if wx.applyRoles then
wx.applyRoles()
end
end,
}, _d("EF0cBiZWLVE"))

wx.twoDropdown = rpc:Dropdown({
Name = _d("MF0cBllV"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = wx.optionsFor[2],
Callback = function(uzmn)
local iwo = type(uzmn) == _d("F1ARHhw") and uzmn[1] or uzmn

if type(iwo) == _d("EEUBGxcA") and wx.roleIds[iwo] then
wx.role[2] = wx.roleIds[iwo]
wx.picked[2] = iwo
end

pcall(function()
wx.twoDropdown:UpdateName(_d("MF0cBllVUoGx0VI") .. wx.roleLabel(2))
end)

if wx.applyRoles then
wx.applyRoles()
end
end,
}, _d("EF0cBiZVLVE"))

pcall(function()
wx.oneDropdown:UpdateSelection(_d("N14EFws"))
end)

pcall(function()
wx.twoDropdown:UpdateSelection(_d("LWEwUhsGBhddFgE"))
end)

getgenv().ACBXSlot = wx

local eqkl = zmbl:Section({
Side = _d("L1QVBg"),
})

eqkl:Header({
Name = _d("MVAaFlkFHRBC"),
})

eqkl:Toggle({
Name = _d("IkQHHVk1EwpVUzAWFAE"),
Default = false,
Callback = function(cus)
hwbc.enabled = cus
hwbc.pending = {}
hwbc.pendingUntil = {}

if cus then
hwbc.cleared = {}
end
end,
}, _d("AkQHHSYVEwpVLBAWFAE"))

eqkl:Toggle({
Name = _d("IkQHHVkwEw9aUwYWRyACWBdSOwgBEA"),
Default = false,
Callback = function(wzj)
hwbc.walkToBoss = wzj
end,
}, _d("AkQHHSYQEw9aLAYWOAACWBctGwgBEA"))

local bjzo
bjzo = eqkl:Slider({
Name = _d("NFAfGVk0AgZUFw"),
Minimum = 0,
Maximum = 72,
Default = 18,
Precision = 0,
Callback = function(mwlf)
local lce = math.floor(mwlf + 0.5)
hwbc.walkSpeed = lce

if bjzo and lce ~= mwlf then
bjzo:UpdateValue(lce)
end
end,
}, _d("FFAfGSYUAgZUFw"))

eqkl:Dropdown({
Name = _d("MVAaFlkjGwVXGhEMCwYa"),
Search = false,
Multi = true,
Required = false,
Default = { _d("LV4BHxgL") },
Options = xegy,
Callback = function(jix)
local pug = {}

if type(jix) == _d("F1ARHhw") then
for lhgm, ybh in ipairs(xegy) do
if jix[ybh] then
table.insert(pug, fkdg[ybh])
end
end
end

if #pug == 0 then
pug = { _d("DV4BHxgL") }
end

hwbc.difficulties = pug
end,
}, _d("EVAaFiYDGwVXGhEMCwYa"))

function hwbc.pickedIds(panf)
local hnfw = {}

if type(panf) == _d("F1ARHhw") then
for zlf, qelu in ipairs(jqav) do
if panf[qelu] and hk[qelu] then
table.insert(hnfw, hk[qelu])
end
end
elseif type(panf) == _d("EEUBGxcA") and hk[panf] then
hnfw = { hk[panf] }
end

return hnfw
end

eqkl:Dropdown({
Name = _d("MVAaFlklHRBC"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = jqav,
Callback = function(grh)
hwbc.picks[1] = hwbc.pickedIds(grh)
hwbc.cursor[1] = 1
hwbc.losses[1] = {}
end,
}, _d("EVAaFiYFHRBC"))

hwbc.boss2Dropdown = eqkl:Dropdown({
Name = _d("MVAaFlklHRBCU1oqCx0XEUFb"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = jqav,
Callback = function(en)
hwbc.picks[2] = hwbc.pickedIds(en)
hwbc.cursor[2] = 1
hwbc.losses[2] = {}
end,
}, _d("EVAaFiYFHRBCLAEVCAY8Aw"))

pcall(function()
hwbc.boss2Dropdown:SetVisibility(false)
end)

task.spawn(function()
local mjxi = nil

while upo() do
local rjkp = wx.splitNpc()

if rjkp ~= mjxi then
mjxi = rjkp

local tnpz = hwbc.boss2Dropdown

if tnpz then
pcall(function()
tnpz:SetVisibility(rjkp)
end)
end
end

task.wait(0.5)
end
end)

pyto:Paragraph({
Header = _d("IkQHHVkhGwRZBw"),
Body = _d("MFQfFxoTUgxfFlIWFVIOXgEXWSkiIEJTFAsIH0NFGxdZEB0RXRcBWQUXD14EXA"),
})

for bzkj, cz in ipairs(wdhx) do
pyto:Dropdown({
Name = cz.name,
Search = true,
Multi = true,
Required = false,
Default = {},
Options = cz.options,
Callback = function(apv)
local iabb = {}

if type(apv) == _d("F1ARHhw") then
if apv.All then
for cfxk, uhw in ipairs(cz.ids) do
table.insert(iabb, uhw)
end
else
for zvv, ymt in ipairs(cz.options) do
if apv[ymt] and cz.byName[ymt] then
table.insert(iabb, cz.byName[ymt])
end
end
end
elseif type(apv) == _d("EEUBGxcA") then
if apv == _d("Il0f") then
for pov, aamb in ipairs(cz.ids) do
table.insert(iabb, aamb)
end
else
iabb = { cz.byName[apv] }
end
end

pi.selectedByWorld[cz.name] = iabb
end,
}, _d("DUEQLQ") .. cz.id)
end

pyto:Toggle({
Name = _d("IkQHHVkkHQ5BHxcNAlIwRRwAAA"),
Default = false,
Callback = function(ylua)
pi.story = ylua
pi.battlePending = false
pi.battlePendingUntil = 0
end,
}, _d("AkQHHSYEHQ5BHxcNAi0QRRwAAA"))

pi.storyDropdown = pyto:Dropdown({
Name = _d("J1gVFBAEBw9FGhcK"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = piq,
Callback = function(twau)
local auw = type(twau) == _d("F1ARHhw") and twau[1] or twau

if type(auw) == _d("EEUBGxcA") and vfmx[auw] then
pi.storyDifficulty = vfmx[auw]
end
end,
}, _d("B1gVFBAEBw9FGhcK"))

pcall(function()
pi.storyDropdown:UpdateSelection(piq[1])
end)

pcall(function()
pi.storyDropdown:UpdateName(_d("J1gVFBAEBw9FGhcKR5Djk1M") .. piq[1])
end)

pyto:Paragraph({
Header = _d("K14EUjgSBgwRMB0UFx4GRRZSKhMdEUhTBRYVGRA"),
Body = _d("JVgUGg0UUgZHFgAARwEXXgELWSkiIBFeUjcGHwZaUwYRFR0WVhtSMBQXCFAaUlRHHQ0RBxocRx0NVFMWEAEUClIGHg0eUgJTHAQcS1IUXgEZEAkVQ0UbF1kGAAZQAFIQCVIMQxcXC0cTDVVTERYKGw1WUxAYBBlDQxwHFwNSAkJTERYIHgdeBBwKRxEPVBIAV214KkVTABwXHgJSFgFZExoGERIAHAZSB0McAh0IBQ1CUwURDh4GERoGWQ4BQ14dXlkGHAcRHxcYERcQEQETEANSAV4AARwUUgJdHBwcSQ"),
})

local yssk = lwsd:Section({
Side = _d("L1QVBg"),
})

yssk:Header({
Name = _d("N14EFws"),
})

local uvw
local royr

local ocv = {
remotes = {},
watcher = false,
hidMenu = false,

hardWatch = {},
}

pcall(function()
local hl = getgenv().ACBXHardWatch

if type(hl) == _d("F1ARHhw") then
for aas, giq in pairs(hl) do
pcall(function()
if giq.Connected then
giq:Disconnect()
end
end)
end
end

getgenv().ACBXHardWatch = ocv.hardWatch
end)

function ocv.hardPick(mlr)
mlr = mlr == true

for jwip, dnd in ipairs({ _d("IVAHBhUCNRZY"), _d("IVAHBhUCNRZYQQ") }) do
local oke = zt:FindFirstChild(dnd)

if oke then
if oke:GetAttribute(_d("N14EFwsvExFVIxsaDA")) ~= mlr then
pcall(function()
oke:SetAttribute(_d("N14EFwsvExFVIxsaDA"), mlr)
end)
end

if oke:GetAttribute(_d("N14EFwsvExFVIQcX")) ~= nil and oke:GetAttribute(_d("N14EFwsvExFVIQcX")) ~= mlr then
pcall(function()
oke:SetAttribute(_d("N14EFwsvExFVIQcX"), mlr)
end)
end
end
end
end

function ocv.pinMode()
if not (qfnj.enabled or qfnj.nightmare) then
return
end

local tzw = qfnj.nightmare == true

for gux, unal in ipairs({ _d("IVAHBhUCNRZY"), _d("IVAHBhUCNRZYQQ") }) do
local bvpz = zt:FindFirstChild(unal)

if bvpz then
if bvpz:GetAttribute(_d("N14EFwsvExFVIxsaDA")) ~= tzw then
pcall(function()
bvpz:SetAttribute(_d("N14EFwsvExFVIxsaDA"), tzw)
end)
end

local oks = ocv.hardWatch[bvpz]

if oks and oks.Connected == false then
ocv.hardWatch[bvpz] = nil
oks = nil
end

if oks == nil then
local upxh, jjvn = pcall(function()
return bvpz:GetAttributeChangedSignal(_d("N14EFwsvExFVIxsaDA")):Connect(function()
if not (qfnj.enabled or qfnj.nightmare) then
return
end

local rhnr = qfnj.nightmare == true

if bvpz.Parent and bvpz:GetAttribute(_d("N14EFwsvExFVIxsaDA")) ~= rhnr then
pcall(function()
bvpz:SetAttribute(_d("N14EFwsvExFVIxsaDA"), rhnr)
end)
end
end)
end)

if upxh then
ocv.hardWatch[bvpz] = jjvn
end
end
end
end
end

function ocv.pauseRows()
local iz = mz:FindFirstChild(_d("M10SCxwVNRZY")) and mz.PlayerGui:FindFirstChild(_d("MFQHBhAJFRB2Bhs"))

if not iz then
return nil, nil
end

return iz:FindFirstChild(_d("M1AGARwuHAVYHRsNAjsNQQYG"), true), iz:FindFirstChild(_d("M1AGARwuHAVYHRsNAjELVBAZ"), true)
end

function ocv.pauseState()
local cfpu = mz:FindFirstChild(_d("M10SCxwVNRZY")) and mz.PlayerGui:FindFirstChild(_d("MFQHBhAJFRB2Bhs"))
local gc = cfpu and cfpu:FindFirstChild(_d("JFQHIRwTBgpfFAE"), true)

if not gc then
return nil
end

local ezpx, sjpo = pcall(function()
return gc:Invoke()
end)

if ezpx and type(sjpo) == _d("F1ARHhw") then
return sjpo.pauseInfiniteEnabled == true
end

return nil
end

function ocv.pauseAt(bvn, tz)
tz = math.max(1, math.floor(tonumber(tz) or 1))

local lakz, xvx = ocv.pauseRows()

if not (lakz and xvx) then
return false
end

local pazs = pcall(function()
if tonumber(lakz.Text) ~= tz then
lakz.Text = tostring(tz)

if getconnections then
for ezsa, ylfw in ipairs(getconnections(lakz.FocusLost)) do
pcall(function()
ylfw:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end
end)

if bvn ~= nil then
local ypi = ocv.pauseState()

if ypi ~= nil and ypi ~= bvn and getconnections then
pcall(function()
for scku, qv in ipairs(getconnections(xvx.MouseButton1Click)) do
pcall(function()
qv:Fire()
end)
end
end)
end
end

return pazs
end

function ocv.restorePause()
fb.triggered = false

if fb.enabled and fb.floor > 0 then
ocv.pauseAt(true, fb.floor)

pcall(function()
qj.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = fb.floor,
})
end)

return
end

pcall(function()
qj.SaveClientData:FireServer({
pauseInfiniteEnabled = false,
pauseInfiniteAt = 1,
})
end)

ocv.pauseAt(false, 1)
end

function ocv.remote(ydx)
local mue = ocv.remotes[ydx]

if mue and mue.Parent then
return mue
end

local zvmf = jjv:FindFirstChild(_d("MVQeHQ0CAQ"))
local fxex = zvmf and zvmf:FindFirstChild(ydx)

if fxex then
ocv.remotes[ydx] = fxex
end

return fxex
end

function ocv.historyOpen()
for vsg, jqwb in ipairs({ _d("IVAHBhUCNRZY"), _d("IVAHBhUCNRZYQQ") }) do
local hsli = zt:FindFirstChild(jqwb)
local sfso = hsli and hsli:FindFirstChild(_d("N14EFwsvGxBFHAAAIQACXBY"))

if sfso and sfso.Visible then
return true
end
end

return false
end

function ocv.generationOpen()
local lfso = zt:FindFirstChild(_d("N14EFws1FxBEHwY+Ehs"))
local jmjf = lfso and lfso:FindFirstChild(_d("MVQABxUTNBFQHhc"))

return jmjf ~= nil and jmjf.Visible
end

function ocv.standDown(ta)
if not ocv.hidMenu then
local cqt = true

pcall(function()
cqt = nanp:GetState() ~= false
end)

if cqt then
ocv.hidMenu = true

pcall(function()
nanp:SetState(false)
end)
end
end

if ocv.watcher then
return
end

ocv.watcher = true

task.spawn(function()

local krh = os.clock() + 6

while upo() and os.clock() < krh and not ta() do
task.wait(0.2)
end

while upo() and ta() do
task.wait(0.4)
end

ocv.watcher = false

if ocv.hidMenu then
ocv.hidMenu = false

pcall(function()
nanp:SetState(true)
end)
end
end)
end

qfnj.floorAt = 0
qfnj.battleAt = 0
qfnj.floor = nil
qfnj.manualPause = false

task.spawn(function()
local ssw = mch(_d("IVAHBhUCJxNVEgYc"))
local bmhq = mch(_d("MEgdES0IBQZDNR4WCAA"))
local maw = mch(_d("IVAHBhUCNw1V"))
local mmyn = mch(_d("N14EFws1Bw10HRYcAw"))

if ssw then
ssw.OnClientEvent:Connect(function()
qfnj.battleAt = os.clock()
end)
end

if bmhq then
bmhq.OnClientEvent:Connect(function(paw)
qfnj.floorAt = os.clock()

if type(paw) == _d("DUQeEBwV") and paw > 1 then
qfnj.floor = paw
else
qfnj.floor = nil
end
end)
end

if maw then
maw.OnClientEvent:Connect(function(pzg)
if type(pzg) == _d("F1ARHhw") and pzg.mode == _d("F14EFws") then
qfnj.floorAt = os.clock()
end
end)
end

if mmyn then
mmyn.OnClientEvent:Connect(function()

qfnj.lastRunEnded = {
clock = os.clock(),
floor = qfnj.floor,
}

task.delay(1, function()
local yqa = zt:FindFirstChild(_d("N14EFws1FxBEHwY+Ehs"))
local ohnz = yqa and yqa:FindFirstChild(_d("MVQABxUTNBFQHhc"))
local zamo = {}

if ohnz then
for gf, nzk in ipairs(ohnz:GetDescendants()) do
if nzk:IsA(_d("N1QLBjUGEAZd")) and nzk.Visible and nzk.Text ~= _d("") and #zamo < 12 then
zamo[#zamo + 1] = nzk.Text
end
end
end

if qfnj.lastRunEnded then
qfnj.lastRunEnded.texts = table.concat(zamo, _d("Q01T"))
end
end)

qfnj.floorAt = 0
qfnj.battleAt = 0
qfnj.floor = nil

if qfnj.manualPause then
ocv.restorePause()
end
end)
end

end)

local function jufi()
local kovr = os.clock()

if kovr - (qfnj.floorAt or 0) < 90 and kovr - (qfnj.battleAt or 0) < 12 then
return true
end

for vzpb, btvf in ipairs({ _d("IVAHBhUCNRZY"), _d("IVAHBhUCNRZYQQ") }) do
local wr = zt:FindFirstChild(btvf)

if wr then

local sgrg = wr:FindFirstChild(_d("N14EFwshHgxeAT4YBRcP"))

if sgrg and sgrg.Visible then
return true
end

local odyr = wr:FindFirstChild(_d("JV0cHQs0ERFUFhw"))

if odyr and odyr.Visible then
return true
end

local lsc = wr:FindFirstChild(_d("IVAHBhUCIQBDFhcX"))

if lsc and lsc.Visible then
local rvvm = lsc:FindFirstChild(_d("MkQaERIgGxVUJgI7EgYXXh0"))

if rvvm and rvvm.Visible then
return true
end
end
end
end

return false
end

function ocv.hardNow()

local qcdf = zt:FindFirstChild(_d("IVAHBhUCNRZY"))
local qfh = qcdf and qcdf:GetAttribute(_d("N14EFwsvExFVIxsaDA"))

if qfh ~= nil then
return qfh == true
end

local qy = hwbc.misc.util.profile

return type(qy) == _d("F1ARHhw") and qy.lastTowerHard == true
end

function ocv.endIfWrongMode(ucb)
if not jufi() or ocv.hardNow() == (ucb == true) then
return false
end

pcall(function()
if type(royr) == _d("BUQdEQ0OHQ0") then
royr()
else
qj.EndTowerRemote:FireServer(1)
end
end)

qfnj.floor = nil

return true
end

function ocv.hardPickNow()
for kefa, mbxj in ipairs({ _d("IVAHBhUCNRZY"), _d("IVAHBhUCNRZYQQ") }) do
local ior = zt:FindFirstChild(mbxj)
local akog = ior and ior:GetAttribute(_d("N14EFwsvExFVIxsaDA"))

if akog ~= nil then
return akog == true
end
end

return nil
end

function ocv.parked()
for au, zce in ipairs({ _d("IVAHBhUCNRZY"), _d("IVAHBhUCNRZYQQ") }) do
local taiq = zt:FindFirstChild(zce)

if taiq then
local arll = taiq:FindFirstChild(_d("N14EFwshHgxeAT4YBRcP"))
local nntd = taiq:FindFirstChild(_d("JV0cHQs0ERFUFhw"))
local xbti = taiq:FindFirstChild(_d("IVAHBhUCIQBDFhcX"))

if arll and arll.Visible
and not (nntd and nntd.Visible)
and not (xbti and xbti.Visible) then
return true
end
end
end

return false
end

qfnj.ui = yssk:Toggle({
Name = _d("IkQHHVkzHRRUAQ"),
Default = false,
Callback = function(mdt)

if qfnj.quiet then
return
end

qfnj.enabled = mdt
qfnj.pending = false
qfnj.pendingUntil = 0

if mdt then

if wx.enabled and wx.role[1] ~= _d("F14EFws") then
qfnj.enabled = false

pcall(function()
qfnj.ui:UpdateState(false)
end)

pcall(function()
nanp:Dialog({
Title = _d("IkQHHVkzHRRUAVIWARQ"),
Description = _d("MF0cBllWUgpCUwEcE1IXXlM") .. wx.roleName(1) .. _d("TREnGhxHOw1XGhwQEwtDchIBDQsXQ14dHgBHARdQAQYKRx0NEQAeFhNSUh1TARZHAQZFUyEVCAZDAFMGFkcmDEYWAFkBGxFCB1w"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})
end)

return
end

if wx.otherTowerOn(_d("F14EFws")) then
qfnj.enabled = false

pcall(function()
qfnj.ui:UpdateState(false)
end)

pcall(function()
nanp:Dialog({
Title = _d("IkQHHVkzHRRUAVIWARQ"),
Description = _d("Il8cBhECAENFHAUcFVICRAcdFAYGCl4dUhAUUgJdARcYAwtDXh1eWQYcBxEHGhAUUgJSEB0MCQZDXh0eAEcTD10cBQpHHQ1UUwYWEBcREQEHF0cTFxESUg0OHwYfUyYMFRxDRRsTDUcdDVRTHR8BUgVYAQENS1IMQ1MGDBUcQ14dUjgSBgwRIB4WE1IQXlMXGAQaQ0IfHQ1HFQZFAFIQEwFDXgQcWRMdFFQBXA"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})
end)

return
end

qfnj.nightmare = false

pcall(function()
qfnj.quiet = true
qfnj.nightmareToggle:UpdateState(false)
qfnj.quiet = false
end)

qfnj.manualPause = false
qfnj.paused = false
ocv.restorePause()
qfnj.pauseArmed = false

ocv.endIfWrongMode(false)
ocv.hardPick(false)

return
end

if not jufi() then
return
end

qfnj.paused = true
local rkdf = uvw()

nanp:Notify({
Title = _d("IkQHHVkzHRRUAVIWARQ"),
Description = rkdf and _d("N14EFwtHABZfUwIYEgEGVV0") or _d("MUQdUhAUUg9YBRdVRxAWRVMcFkcQEVQSGVkFBxdFHBxZAR0WXxdc"),
Lifetime = 5,
})
end,
}, _d("AkQHHSYTHRRUAQ"))

qfnj.nightmareToggle = yssk:Toggle({
Name = _d("IkQHHVkpGwRZBx8YFRdDZRwFHBU"),
Default = false,
Callback = function(uach)
if qfnj.quiet then
return
end

qfnj.nightmare = uach

if not uach then

qfnj.enabled = false
qfnj.pending = false
qfnj.pendingUntil = 0

ocv.hardPick(false)

pcall(function()
qfnj.quiet = true
qfnj.ui:UpdateState(false)
qfnj.quiet = false
end)

if jufi() then
qfnj.paused = true
local ifsw = uvw()

nanp:Notify({
Title = _d("IkQHHVkpGwRZBx8YFRdDZRwFHBVSDFcV"),
Description = ifsw and _d("LVgUGg0KExFUUwAMCVITUAYBHANc") or _d("MUQdUhAUUg9YBRdVRxAWRVMcFkcQEVQSGVkFBxdFHBxZAR0WXxdc"),
Lifetime = 5,
})
end

return
end

if wx.enabled and wx.role[1] ~= _d("F14EFws") then
qfnj.nightmare = false

pcall(function()
qfnj.quiet = true
qfnj.nightmareToggle:UpdateState(false)
qfnj.quiet = false
end)

pcall(function()
nanp:Dialog({
Title = _d("IkQHHVkpGwRZBx8YFRdDZRwFHBVSDFcV"),
Description = _d("LVgUGg0KExFUUyYWEBcRERAdDAkGEBESAVkzHRRUAVIQCVIQXRwGWVZeQ1AdFlkeHRZDUwEVCAZDAFMbCkcdDRE") .. wx.roleName(1) .. _d("Q0MaFRETUg1eBFxZNBcXEQAeFhNSUhEHHVkzHRRUAVIfDgAQRV0"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})
end)

return
end

pcall(function()
qfnj.quiet = true
qfnj.ui:UpdateState(false)
qfnj.quiet = false
end)

qfnj.enabled = true
qfnj.manualPause = false
qfnj.paused = false

ocv.restorePause()
qfnj.pauseArmed = false

ocv.endIfWrongMode(true)
ocv.hardPick(true)

qfnj.pending = false
qfnj.pendingUntil = 0
end,
}, _d("AkQHHSYJGwRZBx8YFRc8RRwFHBU"))

yssk:Header({
Name = _d("IkQHHVk3ExZCFlItCAUGQw"),
})

local ndcn

ndcn = yssk:Toggle({
Name = _d("IkQHHVk3ExZCFlI/Cx0MQw"),
Default = false,
Callback = function(kuin)
fb.triggered = false

if kuin and fb.floor <= 0 then
fb.enabled = false

pcall(function()
ndcn:UpdateState(false)
end)

pcall(function()
qj.SaveClientData:FireServer({ pauseInfiniteEnabled = false })
end)

nanp:Dialog({
Title = _d("IkQHHVk3ExZCFlI/Cx0MQw"),
Description = _d("MFQHUhhHAgJEABdZAR4MXgFSGAUdFVRTQlkBGxFCB1JURzMWRRxSKQYHEFRTJhYQFxERHRccAwFDRRxSEgkdFBEEGhwVF0NFHFIKEx0THw"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})

return
end

fb.enabled = kuin

pcall(function()
qj.SaveClientData:FireServer({
pauseInfiniteEnabled = kuin,
pauseInfiniteAt = fb.floor,
})
end)
end,
}, _d("AkQHHSYXExZCFi0fCx0MQw"))

yssk:Input({
Name = _d("M1AGARxHExcRFR4WCAA"),
Placeholder = _d("Bh8UXFlSQg"),
AcceptedCharacters = _d("LUQeEBwVAQ"),
Callback = function(suw)
local yegc = tonumber(suw) or 0

if yegc < 0 then
yegc = 0
end

if yegc == fb.floor then
return
end

fb.floor = yegc
fb.triggered = false

if yegc <= 0 and fb.enabled then
fb.enabled = false

pcall(function()
ndcn:UpdateState(false)
end)
end

pcall(function()
qj.SaveClientData:FireServer({
pauseInfiniteAt = yegc,
pauseInfiniteEnabled = fb.enabled,
})
end)
end,
}, _d("E1AGARw4ExduFR4WCAA"))

yssk:Button({
Name = _d("M1AGARxHJgxGFgA"),
Callback = function()
local ckse = false

pcall(function()
ckse = uvw()
end)

if ckse then

qfnj.manualPause = true
return
end

nanp:Dialog({
Title = _d("M1AGARxHJgxGFgA"),
Description = _d("LV5THhARF0NFHAUcFVIRRB1SDQhSE1AGARxHAApWGwZZCR0UHw"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})
end,
})

yssk:Header({
Name = _d("IkQHHVkgGxVUUycJ"),
})

ej.toggle = yssk:Toggle({
Name = _d("IkQHHVkgGxVUUycJ"),
Default = false,
Callback = function(qvpc)
ej.triggered = false

if qvpc and ej.floor <= 0 then
ej.enabled = false

pcall(function()
ej.toggle:UpdateState(false)
end)

nanp:Dialog({
Title = _d("IkQHHVkgGxVUUycJ"),
Description = _d("MFQHUhhHFQpHFlIMF1IFXRwdC0cTAV4FF1lXUgVYAQENR19DcAYGFkc1CkcWUiwXUg1UFhYKRwYMERgcFhBSFFkWABxHBgwRAAYWF1w"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})

return
end

ej.enabled = qvpc
end,
}, _d("AkQHHSYAGxVULAcJ"))

yssk:Input({
Name = _d("JFgFF1kSAkNeHVIfCx0MQw"),
Placeholder = _d("Bh8UXFlQQg"),
AcceptedCharacters = _d("LUQeEBwVAQ"),
Callback = function(ar)
local wf = tonumber(ar) or 0

if wf < 0 then
wf = 0
end

if wf == ej.floor then
return
end

ej.floor = wf
ej.triggered = false

if wf <= 0 and ej.enabled then
ej.enabled = false

pcall(function()
ej.toggle:UpdateState(false)
end)
end
end,
}, _d("BFgFFyYSAjxeHS0fCx0MQw"))

ej.weatherToggle = yssk:Toggle({
Name = _d("IkQHHVkAGxVUUwcJRx0NEQQXGBMaBkM"),
Default = false,
Callback = function(dni)
ej.weatherTriggered = false

if dni and next(ej.weathers) == nil then
ej.weatherEnabled = false

pcall(function()
ej.weatherToggle:UpdateState(false)
end)

nanp:Dialog({
Title = _d("NFQSBhECAEN2GgQcRycT"),
Description = _d("N1gQGVkGBkNdFhMKE1IMXxZSDgITF1kWAFkFFw9eBFIfDgAQRVNfWQgGC1QBBRAUF0NFGxcLAlIKQlMcFhMaCl8UUg0IUgRYBRdZEgJDXh1c"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})

return
end

ej.weatherEnabled = dni
end,
}, _d("AkQHHSYAGxVULAcJOB0NbgQXGBMaBkM"))

yssk:Dropdown({
Name = _d("JFgFF1kSAkNGFhMNDxcRQg"),
Multi = true,
Required = false,
Options = { _d("N0gDGhYIHA"), _d("IV0aCAMGAAc"), _d("L1gUGg0JGw1W"), _d("NFgdFgoTHRFc"), _d("MFkSABAJFQJf"), _d("MFgdFQwLExFYBws"), _d("Ll4dEwsEGkN1HB8YDhw"), _d("NV4aFg"), _d("LlAXF1kOHEN5FhMPAhw"), _d("LlAdFRg") },
Callback = function(saf)
ej.weathers = {}

if type(saf) == _d("F1ARHhw") then
for eiai, gntn in pairs(saf) do
if gntn then
ej.weathers[eiai] = true
end
end
end

ej.weatherTriggered = false
end,
}, _d("BFgFFyYSAjxGFhMNDxcRQg"))

yssk:Input({
Name = _d("LlgdGxQSH0NXHx0WFQE"),
Placeholder = _d("UxFOUhgJC0NXHx0WFQ"),
AcceptedCharacters = _d("LUQeFwsOEQ"),
Callback = function(gzh)
local tm = math.floor(tonumber(gzh) or 0)

if tm < 0 then
tm = 0
end

ej.weatherMinFloor = tm
ej.weatherTriggered = false
end,
}, _d("DlgdGxQSHzxXHx0WFQE"))

yssk:Button({
Name = _d("JFgFF1kyAkNlHAUcFQ"),
Callback = function()
if not jufi() then
nanp:Dialog({
Title = _d("JFgFF1kyAkNlHAUcFQ"),
Description = _d("LV5THhARF0NFHAUcFVIRRB1SDQhSBFgFF1kSAkNDGhURE1INXgRc"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})

return
end

nanp:Dialog({
Title = _d("JFgFF1kyAkNlHAUcFQ"),
Description = _d("JV4BFBwOBkNFGxdZBAcRQxYcDUcGDEYWAFkVBw0OUyYRDgFDUhIcFwgGQ1MWUgwJFgxfFlw"),
Buttons = {
{
Name = _d("JF5TEBgEGQ"),
},
{
Name = _d("JFgFF1kSAg"),
Callback = function()
local hb = false

pcall(function()
hb = royr()
end)

if hb then
return
end

task.defer(function()
task.wait(0.3)

nanp:Dialog({
Title = _d("JFgFF1kyAkNlHAUcFQ"),
Description = _d("LV5TFRARF0NEA1IbEgYXXh1SGAkBFFQBFx1HX0NFGxdZFQcNER4TAEcTD0MWEx0eUgFUUx0PAgBN"),
Buttons = {
{
Name = _d("JF4HUhAT"),
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

yssk:Button({
Name = _d("IFkWERJHHgxCAFIRDgEXXgEL"),
Callback = function()
local loe = ocv.remote(_d("MVQCBxwUBjdeBBcLLxsQRRwAAA"))

if not loe then
nanp:Dialog({
Title = _d("L14AAVkvGxBFHAAA"),
Description = _d("N1kaAVkFBwpdF1IRBgFDXxxSDQgFBkNTGhAUBgxDClILAh8MRRZc"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})

return
end

ocv.standDown(ocv.historyOpen)

pcall(function()
loe:FireServer()
end)
end,
})

yssk:Button({
Name = _d("IFkWERJHFQZfFgAYExsMXwA"),
Callback = function()

local wrp = zt:FindFirstChild(_d("N14EFws1FxBEHwY+Ehs"))
local ehns = wrp and wrp:FindFirstChild(_d("LEEWHD4CHCtYAAYWFQs"))

if not ehns then
nanp:Dialog({
Title = _d("JFQdFwsGBgpeHQE"),
Description = _d("N1kaAVkFBwpdF1IRBgFDXxxSHgIcBkMSBhAIHBARBBsXAx0UHw"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})

return
end

ocv.standDown(ocv.generationOpen)

pcall(function()
ehns:Fire()
end)
end,
})

pi.bossTeams.towerSection = lwsd:Section({
Side = _d("L1QVBg"),
})

pi.bossTeams.towerSection:Header({
Name = _d("N14EFwtHJgZQHgE"),
})

pi.bossTeams.towerSection:Paragraph({
Header = _d("K14EUg0IBQZDUwYcBh8QEQQdCww"),
Body = _d("LFcVSFkCEwBZUwAMCVIWQhYBWRAaAkUWBBwVUhdUEh9ZDgYQEQAeFhNSAl0BFxgDC0NZHB4dFFxpOzwcQ0cXAlIbUg0IBQZDUxAcCx0UEQEHFxRSFFgHGlkTGgYRBxcYClITWBAZHANSBV4BUhATXA"),
})

pi.bossTeams.towerToggle = pi.bossTeams.towerSection:Toggle({
Name = _d("N14EFwtHJgZQHgE"),
Default = false,
Callback = function(svh)
pi.bossTeams.towersOn = svh
end,
}, _d("F14EFws4BgZQHgE"))

for itaa, dwc in ipairs({
{ kind = _d("F14EFws"), name = _d("Kl8VGxcOBhoRMBMKEx4GEVxSNw4VC0UeEwsC") },
{ kind = _d("C1ABFhoIAAY"), name = _d("KkIfExcDUitQARYaCAAG") },
}) do
local zheu = math.clamp(math.floor(tonumber(pi.bossTeams.towerPicked[dwc.kind]) or 1), 1, 4)

pi.bossTeams.towerPicked[dwc.kind] = zheu

pi.bossTeams.towerUi[dwc.kind] = pi.bossTeams.towerSection:Dropdown({
Name = dwc.name,
Search = false,
Multi = false,
Required = false,
Default = zheu,
Options = { _d("N1QSH1lW"), _d("N1QSH1lV"), _d("N1QSH1lU"), _d("N1QSH1lT") },
Callback = function(nged)
local tkxs = type(nged) == _d("F1ARHhw") and nged[1] or nged
local unnc = type(tkxs) == _d("EEUBGxcA") and tonumber(tkxs:match(_d("SxQXWVA"))) or nil

if unnc then
pi.bossTeams.towerPicked[dwc.kind] = unnc
pi.bossTeams.save()
end

pcall(function()
pi.bossTeams.towerUi[dwc.kind]:UpdateName(dwc.name .. _d("Q9Pz0Fk") .. (tkxs or _d("N1QSH1lW")))
end)
end,
}, _d("F1QSHyYTHRRUAS0") .. dwc.kind)

pcall(function()
pi.bossTeams.towerUi[dwc.kind]:UpdateSelection(_d("N1QSH1k") .. tostring(zheu))
pi.bossTeams.towerUi[dwc.kind]:UpdateName(dwc.name .. _d("Q9Pz0FkzFwJcUw") .. tostring(zheu))
end)
end

pi.bossTeams.towerSection:Header({
Name = _d("MEYSAlkIHENXHx0WFQ"),
})

pi.bossTeams.towerSection:Paragraph({
Header = _d("MEYSAlkTFwJcUx0XRxNDVx8dFhU"),
Body = _d("N1kWUh4GHwYWAFIWEBxDQgQTCUtSDV4HUhhHAgJEABdXRzcCUhtSCxIeBhEaAVkGUgVdHB0LRxMNVVMGEQJSF1QSH1kQHRFfUxQLCB9DRRsTDUcUD14cAFkIHE8RBAAQEwYGX1MbFxMdQ0UbF1kAEw5UVAFZNBcXRRocHhRSTg9TMwwTHUNlFhMURyEUUANSSEcTDVVTQFVHAQwRBxocRxUCXBZSFAYZBkJTBhECUhBGGgYaD1IKRQAXFQFSFFkWHFkGUhFEHVIKExMRRQBSDQ8TFxEVHhYIAE0RPR0NDxsNVlMbCkcBF14DAhwDUgJfF1INDxdDQwYcWQwXBkEAUhATAUNCHx0NSXhpcFMRGBQGD1RTAAwJUgRUBwFZExoGEQATFAJSEEYaBhoPUgVDHB9ZExoKQlMCGAkXDx1TEBwEExZCFlINDxdDVhIfHEABQ14EHFkUBQJBUx0XCwtDVxoAHBRSCl8AGx0CUipfFRsXDgYGESEdFgoBTTt5PhwGBAYRElIfCx0MQ1MTDUdCQ0UcUg0SAA0RBxoYE1IRRB8XWQgUBR8"),
})

function pi.bossTeams.swapStatusText()
local tpsc = pi.bossTeams.swap
local nud = {}

if tpsc.on then
table.insert(nud, _d("LF9TX1kQAApFBxcXRwYMEQcaHEcVAlwWVQpHMxZFHFItAhMOESAFGBdSEV4EAVc"))
else
table.insert(nud, _d("LFcVUlRHBgtUUxUYChdEQlMBDgYCQ1gAUhUCFBcREh4WCRdN"))
end

local wuun = {
{ index = 1, floor = tpsc.floor, team = tpsc.team },
{ index = 2, floor = tpsc.floor2, team = tpsc.team2 },
}

for maj, ebsx in ipairs(wuun) do
if ebsx.floor > 0 then
table.insert(nud, string.format(_d("MEYSAllCFlkRJxcYClJGVVMUCwgfQ1cfHRYVUkZV"), ebsx.index, ebsx.team, ebsx.floor))
else
table.insert(nud, string.format(_d("MEYSAllCFlkRHBQfR1oNXlMUFQgdEREAFw1O"), ebsx.index))
end
end

if pi.bossTeams.swapMessage ~= _d("") then
table.insert(nud, pi.bossTeams.swapMessage)
end

return table.concat(nud, _d("aQ"))
end

function pi.bossTeams.paintSwap()
pcall(function()
pi.bossTeams.swapStatus:UpdateBody(pi.bossTeams.swapStatusText())
end)
end

pi.bossTeams.swapToggle = pi.bossTeams.towerSection:Toggle({
Name = _d("MEYSAlkTFwJcUx0XRxQPXhwA"),
Default = pi.bossTeams.swap.on,
Callback = function(ikx)
pi.bossTeams.swap.on = ikx

pi.bossTeams.swapReset()

pi.bossTeams.swapApply()
pi.bossTeams.save()
end,
}, _d("EEYSAiYTFwJcLB0XOBQPXhwA"))

pi.bossTeams.swapInput = pi.bossTeams.towerSection:Input({
Name = _d("JV0cHQs"),
Placeholder = _d("Bh8UXFlSQlMRW0JZWlIMVxVb"),
AcceptedCharacters = _d("LUQeFwsOEQ"),
Callback = function(dgr)
local ep = tonumber(type(dgr) == _d("EEUBGxcA") and dgr:match(_d("SxQXWVA")) or dgr)

if ep then
pi.bossTeams.swap.floor = ep
pi.bossTeams.swapReset()
pi.bossTeams.swapApply()
pi.bossTeams.save()
end
end,
}, _d("BV0cHQs"))

pi.bossTeams.swapDropdown = pi.bossTeams.towerSection:Dropdown({
Name = _d("MEYSAlkTHQ"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(pi.bossTeams.swap.team) or 1), 1, 4),
Options = { _d("N1QSH1lW"), _d("N1QSH1lV"), _d("N1QSH1lU"), _d("N1QSH1lT") },
Callback = function(ifan)
local pfr = type(ifan) == _d("F1ARHhw") and ifan[1] or ifan
local ic = type(pfr) == _d("EEUBGxcA") and tonumber(pfr:match(_d("SxQXWVA"))) or nil

if ic then
pi.bossTeams.swap.team = ic
pi.bossTeams.swapReset()
pi.bossTeams.swapApply()
pi.bossTeams.save()
end

pcall(function()
pi.bossTeams.swapDropdown:UpdateName(_d("MEYSAlkTHUPT89BZ") .. (pfr or _d("N1QSH1lW")))
end)

pi.bossTeams.paintSwap()
end,
}, _d("EEYSAiYTHQ"))

pi.bossTeams.swapInput2 = pi.bossTeams.towerSection:Input({
Name = _d("JV0cHQtHQA"),
Placeholder = _d("Bh8UXFlWQlMBU1pJR09DXhUUUA"),
AcceptedCharacters = _d("LUQeFwsOEQ"),
Callback = function(ykjw)
local cse = tonumber(type(ykjw) == _d("EEUBGxcA") and ykjw:match(_d("SxQXWVA")) or ykjw)

if cse then
pi.bossTeams.swap.floor2 = cse
pi.bossTeams.swapReset()
pi.bossTeams.swapApply()
pi.bossTeams.save()
end
end,
}, _d("BV0cHQs4QA"))

pi.bossTeams.swapDropdown2 = pi.bossTeams.towerSection:Dropdown({
Name = _d("MEYSAlkTHUMD"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(pi.bossTeams.swap.team2) or 1), 1, 4),
Options = { _d("N1QSH1lW"), _d("N1QSH1lV"), _d("N1QSH1lU"), _d("N1QSH1lT") },
Callback = function(uyv)
local pfd = type(uyv) == _d("F1ARHhw") and uyv[1] or uyv
local yh = type(pfd) == _d("EEUBGxcA") and tonumber(pfd:match(_d("SxQXWVA"))) or nil

if yh then
pi.bossTeams.swap.team2 = yh
pi.bossTeams.swapReset()
pi.bossTeams.swapApply()
pi.bossTeams.save()
end

pcall(function()
pi.bossTeams.swapDropdown2:UpdateName(_d("MEYSAlkTHUMDU5D5xVI") .. (pfd or _d("N1QSH1lW")))
end)

pi.bossTeams.paintSwap()
end,
}, _d("EEYSAiYTHTwD"))

pi.bossTeams.swapStatus = pi.bossTeams.towerSection:Paragraph({
Header = _d("MEYSAlkUBgJFBgE"),
Body = pi.bossTeams.swapStatusText(),
})

pcall(function()
local guv = math.clamp(math.floor(tonumber(pi.bossTeams.swap.team) or 1), 1, 4)
local rchw = math.clamp(math.floor(tonumber(pi.bossTeams.swap.team2) or 1), 1, 4)

pi.bossTeams.swapDropdown:UpdateSelection(_d("N1QSH1k") .. tostring(guv))
pi.bossTeams.swapDropdown:UpdateName(_d("MEYSAlkTHUPT89BZMxcCXFM") .. tostring(guv))
pi.bossTeams.swapDropdown2:UpdateSelection(_d("N1QSH1k") .. tostring(rchw))
pi.bossTeams.swapDropdown2:UpdateName(_d("MEYSAlkTHUMDU5D5xVI3VBIfWQ") .. tostring(rchw))
end)

task.spawn(function()
local ruw = pi.bossTeams.swapStatusText()

while upo() do
local jhgz = pi.bossTeams.swapStatusText()

if jhgz ~= ruw then
ruw = jhgz
pi.bossTeams.paintSwap()
end

task.wait(2)
end
end)

if pi.bossTeams.swap.on then
task.delay(2, function()
pcall(pi.bossTeams.swapApply)
end)
end

pi.bossTeams.section = lwsd:Section({
Side = _d("MVgUGg0"),
})

pi.bossTeams.section:Header({
Name = _d("IV4AAVkzFwJcAA"),
})

pi.bossTeams.section:Paragraph({
Header = _d("K14EUhsIARARBxcYCgFDRhwAEg"),
Body = _d("LFcVSFkJHRdZGhweRxsQEQAFEBMRC1QXUlRHFxVUAQtZARsEWQdSDBQXEBEHGhxHBgZQHlIACAdDUB8AHAYWGhEbEw8CUg9YHRcdRwcTHVMFEQ4RCxEaAVkTGgYRIB4WE1JSEQcXGApSFl8fFwoUUhBdHAZZVVIXUBgXCkcGC1RTEBgTBg9UXXhzKBxZERYTGg9SAkMWE1kFFw9eBFIfDhULRQBSDg4GCxEHGhxHBgZQHlIACAdDQRoREkcUDENTGw1J"),
})

pi.bossTeams.toggle = pi.bossTeams.section:Toggle({
Name = _d("IV4AAVkzFwJcAA"),
Default = false,
Callback = function(aqlz)
pi.bossTeams.enabled = aqlz
end,
}, _d("AV4AASYTFwJcAA"))

for awx, pari in ipairs(wdhx) do
local vqx = pi.bossTeams.picked[pari.id] or 1

vqx = math.clamp(math.floor(tonumber(vqx) or 1), 1, 4)
pi.bossTeams.picked[pari.id] = vqx

pi.bossTeams.ui[pari.id] = pi.bossTeams.section:Dropdown({
Name = pari.name,
Search = false,
Multi = false,
Required = false,

Default = vqx,
Options = { _d("N1QSH1lW"), _d("N1QSH1lV"), _d("N1QSH1lU"), _d("N1QSH1lT") },
Callback = function(dbd)
local kmju = type(dbd) == _d("F1ARHhw") and dbd[1] or dbd
local vix = type(kmju) == _d("EEUBGxcA") and tonumber(kmju:match(_d("SxQXWVA"))) or nil

if vix then
pi.bossTeams.picked[pari.id] = vix

pi.bossTeams.save()
end

pcall(function()
pi.bossTeams.ui[pari.id]:UpdateName(pari.name .. _d("Q9Pz0Fk") .. (kmju or _d("N1QSH1lW")))
end)
end,
}, _d("F1QSHyYQHRFdFy0") .. pari.id)

pcall(function()
pi.bossTeams.ui[pari.id]:UpdateSelection(_d("N1QSH1k") .. tostring(vqx))
pi.bossTeams.ui[pari.id]:UpdateName(pari.name .. _d("Q9Pz0FkzFwJcUw") .. tostring(vqx))
end)
end

pi.bossTeams.raidSection = lwsd:Section({
Side = _d("MVgUGg0"),
})

pi.bossTeams.raidSection:Header({
Name = _d("MVAaFlkzFwJcAA"),
})

pi.bossTeams.raidSection:Paragraph({
Header = _d("K14EUgsGGwcRBxcYCgFDRhwAEg"),
Body = _d("LFcVSFkVEwpVAFIMFBdDRhsTDQIEBkNTBhwGH0NFGxdZFB4MRVMTFRUXAlUKUhEIHgdCXXhzKBxZERYTGg9SEVAaFlkFFw9eBFIQFFIFXgYVERNSFFgHGlkTGgYRBxcYClITWBAZHANSBV4BUhATXA"),
})

pi.bossTeams.raidToggle = pi.bossTeams.raidSection:Toggle({
Name = _d("MVAaFlkzFwJcAA"),
Default = false,
Callback = function(fzj)
pi.bossTeams.raidsOn = fzj
end,
}, _d("EVAaFiYTFwJcAA"))

for kfrq, lkza in ipairs(zo.Raids) do
if lkza.BossTitle and lkza.id then
local xpt = pi.bossTeams.raidPicked[lkza.id] or 1

xpt = math.clamp(math.floor(tonumber(xpt) or 1), 1, 4)
pi.bossTeams.raidPicked[lkza.id] = xpt

pi.bossTeams.raidUi[lkza.id] = pi.bossTeams.raidSection:Dropdown({
Name = lkza.BossTitle,
Search = false,
Multi = false,
Required = false,
Default = xpt,
Options = { _d("N1QSH1lW"), _d("N1QSH1lV"), _d("N1QSH1lU"), _d("N1QSH1lT") },
Callback = function(kvm)
local ce = type(kvm) == _d("F1ARHhw") and kvm[1] or kvm
local wya = type(ce) == _d("EEUBGxcA") and tonumber(ce:match(_d("SxQXWVA"))) or nil

if wya then
pi.bossTeams.raidPicked[lkza.id] = wya
pi.bossTeams.save()
end

pcall(function()
pi.bossTeams.raidUi[lkza.id]:UpdateName(lkza.BossTitle .. _d("Q9Pz0Fk") .. (ce or _d("N1QSH1lW")))
end)
end,
}, _d("F1QSHyYVEwpVLA") .. lkza.id)

pcall(function()
pi.bossTeams.raidUi[lkza.id]:UpdateSelection(_d("N1QSH1k") .. tostring(xpt))
pi.bossTeams.raidUi[lkza.id]:UpdateName(lkza.BossTitle .. _d("Q9Pz0FkzFwJcUw") .. tostring(xpt))
end)
end
end

task.spawn(function()
local iea = pknb()

while upo() do
local xcfo = pknb()

if wx.enabled and wx.statusText then
xcfo = wx.statusText()
end

xcfo = xcfo .. _d("aTsgFwsRFxERBgJZ") .. keyf()

if xcfo ~= iea then
iea = xcfo
pcall(function()
vkk:UpdateBody(xcfo)
end)
end
task.wait(0.5)
end
end)

task.spawn(function()
while upo() do
for xex, oasl in ipairs({ _d("IVAHBhUCNRZY"), _d("IVAHBhUCNRZYQQ") }) do
local uzea = zt:FindFirstChild(oasl)
local vj = uzea and uzea:FindFirstChild(_d("IVAHBhUCIQBDFhcX"))
local uo = uzea and uzea:FindFirstChild(_d("K1gXFzsGBhddFjAMEwYMXw"))

if vj and vj.Visible and uo and not uo.Visible then
uo.Visible = true
end
end

task.wait(0.5)
end
end)

task.spawn(function()
local nfhu = false

while upo() do
if csir then
local owf = zt:FindFirstChild(_d("N14EFws1FxBEHwY+Ehs"))
local rfh = owf and owf:FindFirstChild(_d("MVQABxUTNBFQHhc"))
local ezc = owf and owf:FindFirstChild(_d("JFQdFwsGBgpfFDQLBh8G"))

if ezc and ezc.Visible then
ezc.Visible = false
end

local duz = rfh and rfh.Visible or false

if duz and not nfhu then
local qtv = rfh:FindFirstChild(_d("IF0cARwlBxdFHBw"))
local qxfe = false

if qtv then
for mvds, gcos in ipairs({ _d("Ll4GARwlBxdFHBxIJB4KUhg"), _d("IlIHGw8GBgZV") }) do
local tfi = qtv[gcos]
if tfi then
for qw, xqqt in ipairs(getconnections(tfi)) do
pcall(function()
xqqt:Fire()
end)
qxfe = true
end
end
end
end

if not qxfe then
rfh.Visible = false
else
task.spawn(function()
task.wait(0.3)
if rfh.Parent and rfh.Visible then
rfh.Visible = false
end
end)
end
end

nfhu = duz
else
nfhu = false
end

task.wait(0.2)
end
end)

local khd = {}

function khd.active()
return pi.enabled or pi.story
end

function khd.towerHolds()
if wx.enabled then
return false
end

if cmq.run.enabled then
return true
end

return qfnj.enabled and not qfnj.paused
end

function khd.ready(nwci, axon, mhim)
local xzr = pi.unlocked[nwci]

return (not xzr or xzr[axon] ~= false) and dl(nwci, axon) <= mhim
end

function khd.hasReadyTarget()
local mnxe = os.time()

for ice, silm in ipairs(cgz()) do
for scw, ntoa in ipairs(duq()) do
if khd.ready(silm, ntoa, mnxe) then
return true
end
end
end

return false
end

function khd.backOff(ef, zanm)
kpad(ef, zanm, os.time() + 5)
end

function khd.findTarget()
for qvxi, bsh in ipairs(cgz()) do
local ssvh = wne(bsh)
local ug = os.time() - (pi.lastFetch[bsh] or 0) > 60

if ug and ssvh and not pi.walkToNpc then
szqo(ssvh)
task.wait(0.3)
otr(bsh)
end

for zmdl, wfss in ipairs(duq()) do
if khd.ready(bsh, wfss, os.time()) then
return bsh, wfss
end
end
end

return nil
end

function pi.bossTeams.slotForFight()
if wx.hasSlot2 == false then
return 1
end

if wx.busy(2) then
return 1
end

return 2
end

function pi.bossTeams.slotTeam(mlp)
local njtc = zt:FindFirstChild(_d("MFQHBhAJFRB2Bhs"))
local cnm = njtc and njtc:FindFirstChild(_d("MF0cBi0CEw4") .. mlp .. _d("IUQHBhYJ"), true)
local gqxb = cnm and cnm.Text

return gqxb and tonumber(gqxb:match(_d("SxQXWVA"))) or nil
end

function pi.bossTeams.applyTeam(na, ggjh)
na = tonumber(na)

if not na then
return false
end

ggjh = tonumber(ggjh) or pi.bossTeams.slotForFight()

if wx.busy(ggjh) then
return false
end

pi.bossTeams.lastSlot = ggjh

local avid = pi.bossTeams.slotTeam(ggjh) or pi.bossTeams.applied[ggjh]

if avid == na then
return true
end

local lbba = ocv.remote(_d("MEYaBhoPJgZQHg"))

if not lbba then
return false
end

local rcqk = pcall(function()
lbba:FireServer(na, false, ggjh)
end)

pi.bossTeams.applied[ggjh] = na
task.wait(0.2)

return rcqk
end

function pi.bossTeams.apply(epv)
if not pi.bossTeams.enabled then
return
end

local sxow = pi.bossTeams.worldOf[epv]
local zyk = sxow and pi.bossTeams.picked[sxow]

if not zyk then
return
end

pi.bossTeams.applyTeam(zyk)
end

function pi.bossTeams.applyTower(fubd, dcjq)
if not pi.bossTeams.towersOn then
return false
end

local kv = pi.bossTeams.towerPicked[fubd]

local iffa = pi.bossTeams.swapFired[fubd]

if pi.bossTeams.swap.on and type(iffa) == _d("F1ARHhw") then
kv = iffa[2] or iffa[1] or kv
end

if not kv then
return false
end

return pi.bossTeams.applyTeam(kv, dcjq)
end

function pi.bossTeams.applyRaid(dke)
if not pi.bossTeams.raidsOn then
return
end

local hdij = dke and pi.bossTeams.raidPicked[dke]

if not hdij then
return
end

pi.bossTeams.applyTeam(hdij)
end

function khd.fight(igy, hvdl)
local kmse = wne(igy)

if not kmse then
khd.backOff(igy, hvdl)
return false
end

local khk

if pi.walkToNpc then
local wlf = ikai[igy]

if wlf then
qj.TeleportToWorld:FireServer(wlf)
task.wait(2.5)

local jwpg = wne(igy) or kmse
local lqo = jwpg:GetPivot()

khk = gvkp(lqo.Position + lqo.LookVector * 6, function()
return not khd.active() or not pi.walkToNpc
end)

if khk then
otr(igy)
khk = khd.ready(igy, hvdl, os.time())
end
end
else
khk = szqo(kmse)
end

if not khk then
khd.backOff(igy, hvdl)
return false
end

task.wait(0.4)
pi.bossTeams.apply(igy)
pi.activeDifficulty[igy] = hvdl
qj.SetNPCDifficulty:FireServer(igy, hvdl)
task.wait(0.4)

pi.currentBattle = {
npcId = igy,
difficulty = hvdl,
}
qsc = igy
gw = hvdl
qj.StartNPCBattle:FireServer(igy)
kpad(igy, hvdl, os.time() + 10)
pi.battlePending = true
pi.battlePendingUntil = os.time() + 30
task.wait(1)

return true
end

pi.workPending = function()

if hwbc.misc and hwbc.misc.cards and hwbc.misc.cards.inFlight then
return true
end

if not khd.active() then
return false
end

if pi.battlePending then
return true
end

local lza = wx.npcSlot()

if lza and wx.busy(lza) then
return true
end

return khd.hasReadyTarget()
end

task.spawn(function()
while upo() do

local sqcs = (wx.enabled and (hwbc.enabled or ker.enabled or hwbc.worldBoss.enabled))
or khd.towerHolds()
or not wx.slotFree(wx.npcSlot())

or (hwbc.misc and hwbc.misc.cards and hwbc.misc.cards.inFlight)
or (pi.battlePending and os.time() < pi.battlePendingUntil)

if khd.active() and not sqcs then
local fqf, orwu = khd.findTarget()

if fqf then
khd.fight(fqf, orwu)
end
end

task.wait(0.5)
end
end)

task.spawn(function()
while upo() do

local zds = {}

if hwbc.enabled then
local io = wx.roleSlot(_d("DUEQ"))

if io then
table.insert(zds, io)
end

if wx.splitNpc() and io ~= 2 then
table.insert(zds, 2)
end
end

local unqz = jjv:FindFirstChild(_d("MVAaFioTExdEAA"))

if #zds > 0 and unqz and (not ker.enabled or wx.splitNpc()) and (wx.enabled or not pi.workPending()) then
for saot, atbx in ipairs(zds) do
local fgxp = unqz

local wdc = hwbc.bossFor(atbx, (atbx ~= 1 and not wx.splitNpc()) and 1 or nil)
local lxrd = fgxp:GetAttribute(_d("KkI8AhwJ")) == true or fgxp:GetAttribute(_d("JV4BERwD")) == true
local iowd = wdc ~= nil and fgxp:GetAttribute(_d("MVQSFgA4") .. wdc) == true
local ag = wdc and sw(wdc)

if wdc and hwbc.pending[wdc] and os.time() >= (hwbc.pendingUntil[wdc] or 0) then
hwbc.pending[wdc] = false
hwbc.cleared[wdc] = nil
end

if wdc and wx.slotFree(atbx) and lxrd and iowd and hwbc.cleared[wdc] ~= ag and not hwbc.pending[wdc] then
local nyyv = csri[wdc]
local qpx = nyyv and wne(nyyv)
local lppx = false

if qpx then
if hwbc.walkToBoss then
local gkuy = wbp[wdc]
local zybr = mz.Character and mz.Character:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))
local usck = qpx:GetPivot().Position
local rcj = zybr and (zybr.Position - usck).Magnitude <= 15

if rcj then
lppx = true
elseif gkuy then
qj.TeleportToWorld:FireServer(gkuy)

local vpq = os.clock()
while os.clock() - vpq < 2.5 and hwbc.enabled do
task.wait(0.1)
end

if hwbc.enabled then
local gze = wne(nyyv) or qpx
local sir = gze:GetPivot()
local bsy = sir.Position + sir.LookVector * 6
lppx = qncz(bsy, hwbc.walkSpeed, function()
return not hwbc.enabled or not hwbc.walkToBoss
end)
end
end

if not lppx then
lppx = szqo(qpx)
end
else
lppx = szqo(qpx)
end

if lppx then
task.wait(0.5)
end
end

if lppx then
hwbc.inFlight[wdc] = atbx
hwbc.pending[wdc] = true
hwbc.pendingUntil[wdc] = os.time() + 15
hwbc.cleared[wdc] = ag

local lwmr = hwbc.difficulties[1] or _d("DV4BHxgL")
local bh = hwbc.progress[wdc]

if bh then
local lgkh = bh.unlocked
local vfw = bh.cooldowns

for vcth, lseu in ipairs(hwbc.difficulties) do
local ccwb = not lgkh or lgkh[lseu] ~= false
local lrb = vfw and tonumber(vfw[lseu]) or 0

if ccwb and lrb <= 0 then
lwmr = lseu
break
end
end
end

pi.bossTeams.applyRaid(wdc)
qj.SetRaidDifficulty:FireServer(lwmr, wdc)
task.wait(0.3)
qj.StartRaidBattle:FireServer(wdc)
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while upo() do
local fcdr = ker.inBattle and os.time() < ker.inBattleUntil

if ker.enabled and (wx.enabled or not pi.workPending()) and not fcdr and wx.slotFree(wx.roomSlot()) and not (ker.pending and os.time() < ker.pendingUntil) then
local fqbu = ker.progress

if fqbu == nil then
qj.RequestInfiniteRoomProgress:FireServer()
task.wait(0.5)
else
local pgvh = nil

for cxs, kro in ipairs(mrr.Milestones) do
if mrr.isMilestoneUnlocked(kro, fqbu) and not mrr.isMilestoneCleared(kro, fqbu) then
pgvh = kro
break
end
end

if pgvh then

local ucq = wx.roomSlot()

ker.currentRoom = pgvh
ker.inBattle = true
ker.inBattleUntil = os.time() + 60
ker.pending = true
ker.pendingUntil = os.time() + 10

local ufcm = zt:FindFirstChild(ucq == 2 and _d("MVQAFw0lExdFHxc/Cx0MQ0E") or _d("MVQAFw0lExdFHxc/Cx0MQw"))
if ufcm and ufcm:IsA(_d("IVgdFhgFHgZ0BRcXEw")) then
ufcm:Fire(pgvh, _d("Cl8VGxcOBgZuAR0WCg"))
end

local ryu = zt:FindFirstChild(ucq == 2 and _d("MEUSAA0uHAVYHRsNAiAMXh4wGBMGD1RB") or _d("MEUSAA0uHAVYHRsNAiAMXh4wGBMGD1Q"))
if ryu and ryu:IsA(_d("IVgdFhgFHgZ0BRcXEw")) then
ryu:Fire(pgvh)
end

qj.StartBattle:FireServer(_d("Cl8VGxcOBgZuAR0WCg"), {
milestone = pgvh,
slot = ucq,
})
task.wait(2)
end
end
end

task.wait(1)
end
end)

local function nmu(cip, kp)
local ozg = zt:FindFirstChild(_d("MFIBFxwJNRZY"))

if not ozg then
return
end

local pzod = ozg:FindFirstChild(cip)
local zsfc = pzod and pzod:FindFirstChild(_d("NVAfBxwrEwFUHw"), true)
local flfz = pzod and pzod:FindFirstChild(_d("L1ARFxU"), true)

if not pzod then
return
end

local him = false

if zsfc then
him = zsfc.Text == _d("LF8")
elseif flfz then
him = not string.lower(flfz.Text):find(_d("DFcV"), 1, true)
end

if him ~= kp then
for lvst, qqu in ipairs(getconnections(pzod.MouseButton1Click)) do
local fufs = qqu.Function

if type(fufs) == _d("BUQdEQ0OHQ0") then
pcall(fufs)
else
pcall(function()
qqu:Fire()
end)
end
end
end
end

getgenv().ACBXSetRollButton = nmu

local function rcv(yict)
nmu(_d("MkQaERI1HQ9dMQcNEx0N"), yict)
nmu(_d("IkQHHSsIHg9zBgYNCBw"), yict)
end

getgenv().ACBXSetRollUi = rcv
gcsp.setRollButton = nmu

pcall(function()
qj.SaveClientData:FireServer({ autoHideBattle = false })
end)

task.defer(function()
task.wait(0.5)

local rfpp = zt:FindFirstChild(_d("IVAHBhUCNRZY"))
local qib = rfpp and rfpp:FindFirstChild(_d("IVAHBhUCIQBDFhcX"))
local sjh = rfpp and rfpp:FindFirstChild(_d("K1gXFzsGBhddFjAMEwYMXw"))

if sjh and sjh.Visible and qib and not qib.Visible and okv() then
for druo, rduc in ipairs(getconnections(sjh.MouseButton1Click)) do
local scpk = rduc.Function

if type(scpk) == _d("BUQdEQ0OHQ0") then
pcall(scpk)
else
pcall(function()
rduc:Fire()
end)
end
end
end
end)

rcv(true)

task.spawn(function()
while upo() do

if gcsp.autoRoll then
nmu(_d("IkQHHSsIHg9zBgYNCBw"), true)
end

if gcsp.autoQuickRoll then
nmu(_d("MkQaERI1HQ9dMQcNEx0N"), true)
end

task.wait(1)
end
end)

local function gblk()

if qfnj.floor then
return qfnj.floor
end

local oq = zt:FindFirstChild(_d("IVAHBhUCNRZY"))

if not oq then
return nil
end

for xix, vpl in ipairs({ _d("N14EFwshHgxeAT4YBRcP"), _d("MUQdNBUIHRF9EhAcCw") }) do
local ban = oq:FindFirstChild(vpl)

if ban and ban.Visible and ban.Text then
local gsa = tonumber(ban.Text:match(_d("SxQXWVA")))

if gsa then
return gsa
end
end
end

local ihd = oq:FindFirstChild(_d("JV0cHQs0ERFUFhw"))
local dzf = ihd and ihd:FindFirstChild(_d("N14DMBgV"))
local cr = dzf and dzf:FindFirstChild(_d("JV0cHQsrEwFUHw"))

if cr then
return tonumber(cr.Text:match(_d("SxQXWVA")))
end

return nil
end

function pi.bossTeams.swapRows(ba)
local izwi = zt:FindFirstChild(_d("MFQHBhAJFRB2Bhs"))
local ljmu = izwi and izwi:FindFirstChild(_d("IkQHHSoQExM") .. ba .. _d("MV4E"), true)

if not ljmu then
return nil
end

return ljmu:FindFirstChild(_d("IkQHHSoQExM") .. ba .. _d("IFkWERI")),
ljmu:FindFirstChild(_d("IkQHHSoQExM") .. ba .. _d("N1QSHw")),
ljmu:FindFirstChild(_d("IkQHHSoQExM") .. ba .. _d("JV0cHQs"))
end

function pi.bossTeams.swapOn(tvjd)
local bibm = zt:FindFirstChild(_d("MFQHBhAJFRB2Bhs"))
local hbjp = bibm and bibm:FindFirstChild(_d("JFQHIRwTBgpfFAE"), true)

if not hbjp then
return nil
end

local knsc, ibe = pcall(function()
return hbjp:Invoke()
end)

if knsc and type(ibe) == _d("F1ARHhw") then
return ibe[tvjd == 1 and _d("AkQHHS0CEw5iBBMJIhwCUx8XHQ") or _d("AkQHHS0CEw5iBBMJVTcNUBEeHAM")] == true
end

return nil
end

function pi.bossTeams.swapBox(gyh, hds)
if tonumber(gyh.Text) == hds then
return
end

gyh.Text = tostring(hds)

if getconnections then
for jhpd, bck in ipairs(getconnections(gyh.FocusLost)) do
pcall(function()
bck:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end

function pi.bossTeams.swapSet(hfa, df, fg, jnb)
local aiv, dyij, jum = pi.bossTeams.swapRows(hfa)

if not (aiv and dyij and jum) then
return false
end

fg = math.max(1, math.floor(tonumber(fg) or 1))
jnb = math.clamp(math.floor(tonumber(jnb) or 1), 1, 4)

pi.bossTeams.swapBox(jum, fg)
pi.bossTeams.swapBox(dyij, jnb)

local zxo = pi.bossTeams.swapOn(hfa)

if zxo ~= nil and zxo ~= (df == true) and getconnections then
pcall(function()
for wtrq, vihx in ipairs(getconnections(aiv.MouseButton1Click)) do
pcall(function()
vihx:Fire()
end)
end
end)
end

local eowe = hfa == 1 and _d("") or _d("UQ")

pcall(function()
qj.SaveClientData:FireServer({
[_d("AkQHHS0CEw5iBBMJ") .. eowe .. _d("Jl8SEBUCFg")] = df == true,
[_d("AkQHHS0CEw5iBBMJ") .. eowe .. _d("N1QSHw")] = jnb,
[_d("AkQHHS0CEw5iBBMJ") .. eowe .. _d("JV0cHQs")] = fg,
})
end)

return true
end

function pi.bossTeams.swapApply()
local ahbw = pi.bossTeams
local flgs = ahbw.swap
local nhj = true

if flgs.on then
nhj = ahbw.swapSet(1, flgs.floor > 0, flgs.floor, flgs.team)
nhj = ahbw.swapSet(2, flgs.floor2 > 0, flgs.floor2, flgs.team2) and nhj
else
nhj = ahbw.swapSet(1, false, flgs.floor, flgs.team)
nhj = ahbw.swapSet(2, false, flgs.floor2, flgs.team2) and nhj
end

ahbw.swapMessage = _d("")

if not nhj then
ahbw.swapMessage = _d("N1kWUh4GHwYWAFI4EgYMEScXGApSMEYSAlkVHRRCUxMLAlINXgdSGxIbD0VTCxwTUk4RARcNFQsKXxRc")
end

ahbw.paintSwap()
end

function pi.bossTeams.swapReset(gx)
local gdd = pi.bossTeams

if gx then
gdd.swapFired[gx] = nil
else
gdd.swapFired = {}
end
end

function pi.bossTeams.swapTick()
local muxk = pi.bossTeams
local scx = muxk.swap

if not scx.on or (scx.floor <= 0 and scx.floor2 <= 0) then
if next(muxk.swapFired) ~= nil then
muxk.swapFired = {}
end

return
end

local atoq = os.clock()
local tcss = ocv.remote(_d("MEYaBhoPJgZQHg"))

if atoq - (muxk.swapWroteAt or 0) > 10 then
muxk.swapWroteAt = atoq
muxk.swapApply()
end

local noea = {
{
kind = _d("F14EFws"),
slot = wx.towerSlot(),

live = atoq - (qfnj.floorAt or 0) < 90,
floor = gblk(),

own = true,
},
{
kind = _d("C1ABFhoIAAY"),
slot = wx.hardcoreSlot(),
live = ht.active(),
floor = ht.floorNow(),

own = false,
},
}

local rrs = {
{ index = 1, floor = scx.floor, team = scx.team },
{ index = 2, floor = scx.floor2, team = scx.team2 },
}

for mmyl, otnf in ipairs(noea) do
if not otnf.live then

muxk.swapFired[otnf.kind] = nil
elseif otnf.own and tcss and otnf.floor then
local hmh = muxk.swapFired[otnf.kind]

for mqet, lah in ipairs(rrs) do
local tyi = type(hmh) == _d("F1ARHhw") and hmh[lah.index]

if lah.floor > 0 and otnf.floor == lah.floor and not tyi then
local wj = pcall(function()
tcss:FireServer(math.clamp(math.floor(lah.team), 1, 4), true, otnf.slot or 1)
end)

if wj then
hmh = type(hmh) == _d("F1ARHhw") and hmh or {}
hmh[lah.index] = lah.team
muxk.swapFired[otnf.kind] = hmh

muxk.swapMessage = string.format(_d("IFAABhUCUgVdHB0LR1cHEV5SChAbF1IbFx1HBgwRJxcYClJGVV0"), otnf.floor, lah.team)
muxk.paintSwap()
end
end
end
end
end
end

task.spawn(function()
while upo() do
pcall(pi.bossTeams.swapTick)
task.wait(0.5)
end
end)

local function ebo()

return khd.active() and khd.hasReadyTarget()
end

function hwbc.worldBoss.remote(ywwg)
local xdh = hwbc.worldBoss

xdh.remotes = xdh.remotes or {}

local vsu = xdh.remotes[ywwg]

if vsu and vsu.Parent then
return vsu
end

local zi = ocv.remote(ywwg)

if zi then
xdh.remotes[ywwg] = zi
end

return zi
end

function hwbc.worldBoss.setRepeat(fvcd)
local rjx = hwbc.worldBoss
local cng = rjx.remote(_d("NF4BHh0lHRBCMhENDh0N"))

if not cng then
return false
end

local pgph = rjx.state
local hd = type(pgph) == _d("F1ARHhw") and pgph.repeatOn == true

if hd == (fvcd and true or false) then
rjx.repeatIntent = nil

return true
end

if fvcd then
local okev = workspace:FindFirstChild(_d("NF4BHh0lHRBCMgAcCRM"))
local hjal = okev and (okev:FindFirstChild(_d("IFQfHjQGCg")) or okev)
local sof = mz.Character and mz.Character:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not (hjal and sof) then
return false
end

local xhaa, ixs = pcall(function()
return hjal:GetPivot()
end)

if not xhaa or (sof.Position - ixs.Position).Magnitude > 60 then
return false
end
end

if rjx.repeatIntent == fvcd and os.clock() - (rjx.repeatAskedAt or 0) < 20 then
return false
end

rjx.repeatIntent = fvcd

pcall(function()
cng:FireServer(_d("EVQDFxgT"))
end)

rjx.repeatAskedAt = os.clock()

return true
end

function hwbc.worldBoss.requestSync()
local goi = hwbc.worldBoss
local gmoj = goi.remote(_d("NF4BHh0lHRBCMhENDh0N"))

if gmoj then
pcall(function()
gmoj:FireServer(_d("EEgdEQ"))
end)
end

goi.askedAt = os.clock()
end

function hwbc.worldBoss.hasWork()
local wbtv = hwbc.worldBoss
local cri = wbtv.state

if not wbtv.enabled or type(cri) ~= _d("F1ARHhw") then
return false
end

local ss = wbtv.isOpen()

if ss == nil then
ss = cri.open == true
end

return ss and cri.inFight ~= true
end

hwbc.worldBoss.bossUp = function()
local glee = hwbc.worldBoss

if not glee.enabled then
return false
end

local nq = glee.isOpen()

if nq ~= nil then
return nq == true
end

local ckgb = glee.state

return type(ckgb) == _d("F1ARHhw") and ckgb.open == true
end

function hwbc.worldBoss.meter()
local ktpo = hwbc.worldBoss
local gjdj = os.clock()

if gjdj - (ktpo.meterAt or 0) < 1 then
return ktpo.meterCurrent, ktpo.meterMax
end

ktpo.meterAt = gjdj
ktpo.meterCurrent = nil
ktpo.meterMax = nil

local qk = jjv:FindFirstChild(_d("NF4BHh0lHRBCIAYYEwcQ"))
local toxh = qk and tonumber(qk:GetAttribute(_d("LlQHFws")))
local ibvd = qk and tonumber(qk:GetAttribute(_d("LlQHFwsqExs")))

if toxh and ibvd and ibvd > 0 then
ktpo.meterCurrent = toxh
ktpo.meterMax = ibvd

return ktpo.meterCurrent, ktpo.meterMax
end

local function uzaw(nbn)
if type(nbn) ~= _d("EEUBGxcA") then
return nil
end

local il, vcs = nbn:match(_d("S2pWFlxJL0gYVgFTTykofDEZFAUvXBg"))
local al = tonumber(il)

if not al then
return nil
end

local ojn = ({ K = 1000, M = 1000000, B = 1000000000 })[string.upper(vcs or _d(""))] or 1

return al * ojn
end

local xlg = zt:FindFirstChild(_d("NF4BHh0lHRBCMRMXCRcRdgYb"))
local mntw = xlg and xlg:FindFirstChild(_d("IVAdHBwV"))
local gtg = mntw and mntw:FindFirstChild(_d("LlQHFwslExE"))
local fjlo = gtg

if gtg and not gtg:IsA(_d("N1QLBjUGEAZd")) then
fjlo = gtg:FindFirstChild(_d("N1QLBg"))
end

local kgw = fjlo and fjlo:IsA(_d("N1QLBjUGEAZd")) and fjlo.Text or nil

if type(kgw) == _d("EEUBGxcA") then
local awr, ogt = kgw:match(_d("S2otXSRMW0wZXVlQ"))

ktpo.meterCurrent = uzaw(awr)
ktpo.meterMax = uzaw(ogt)
end

return ktpo.meterCurrent, ktpo.meterMax
end

function hwbc.worldBoss.meterFull()
local ekqt, nd = hwbc.worldBoss.meter()

return ekqt ~= nil and nd ~= nil and nd > 0 and ekqt >= nd
end

hwbc.worldBoss.holdsFishing = function()
local gjd = hwbc.worldBoss

if not gjd.enabled then
return false
end

if gjd.fishingMode == _d("FFAaBg") then
return gjd.bossUp()
end

return os.clock() < (gjd.takingUntil or 0)
end

hwbc.worldBoss.holdsDigging = function()
local ovd = hwbc.worldBoss

if not ovd.enabled or ovd.digHold ~= true then
return false
end

if not ovd.bossUp() then
return false
end

return not (ovd.stopAtFull and ovd.meterFull())
end

hwbc.worldBoss.usesGameChain = function()
local rrg = hwbc.worldBoss

return rrg.fishingMode == _d("FFAaBg") or rrg.digHold == true
end

function hwbc.worldBoss.travel()
local llsj = hwbc.worldBoss
local rkc = mz.Character
local ifoo = rkc and rkc:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not ifoo or os.clock() < llsj.travelUntil then
return
end

llsj.travelUntil = os.clock() + 6

local yfv = workspace:FindFirstChild(_d("NF4BHh0lHRBCIx0LExMP"))
local qizh = yfv and yfv:FindFirstChild(_d("M14BBhgL"))

if not qizh then
return
end

if (ifoo.Position - qizh.Position).Magnitude > 150 then
local bbvx = ocv.remote(_d("N1QfFwkIABdlHCUWFR4H"))

if bbvx then
pcall(function()
bbvx:FireServer(_d("D14REAA"))
end)
end

return
end

if (ifoo.Position - qizh.Position).Magnitude > 6 then
llsj.walkLeg(qizh.Position + Vector3.new(0, 3, 0), 4)

if (ifoo.Position - qizh.Position).Magnitude > 9 then
return
end
end

local aexd = qizh:FindFirstChildOfClass(_d("M0McChAKGxdIIwAWCgIX"))

if not aexd then
return
end

pcall(function()
if type(fireproximityprompt) == _d("BUQdEQ0OHQ0") then
fireproximityprompt(aexd)
else
aexd:InputHoldBegin()
task.wait(0.25)
aexd:InputHoldEnd()
end
end)
end

function hwbc.worldBoss.reach()
local zwcg = hwbc.worldBoss

local lxb = workspace:FindFirstChild(_d("NF4BHh0lHRBCMgAcCRM")) or workspace:FindFirstChild(_d("NF4BHh0lHRBCIAIYEBw"), true)
local cvsr = mz.Character
local wwkz = cvsr and cvsr:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not (lxb and wwkz) then
zwcg.travel()
return false
end

local ljy = lxb:FindFirstChild(_d("IFQfHjQGCg")) or lxb
local hfpf, eb = pcall(function()
return ljy:GetPivot()
end)

if not hfpf then
return false
end

local yjo = eb.Position + eb.LookVector * 6 + Vector3.new(0, 3, 0)
local bs = Vector3.new(eb.Position.X, yjo.Y, eb.Position.Z)

wwkz.CFrame = CFrame.lookAt(yjo, bs)

return true
end

hwbc.worldBoss.cityBounds = { 19100, 20900, -850, 850 }

function hwbc.worldBoss.inArena()
local ohpr = mz.Character and mz.Character:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))
local gyzb = hwbc.worldBoss.cityBounds

if not ohpr then
return false
end

local tcl = ohpr.Position

return tcl.X >= gyzb[1] and tcl.X <= gyzb[2]
and tcl.Z >= gyzb[3] and tcl.Z <= gyzb[4]
end

function hwbc.worldBoss.enterCity(axu)
local umh = hwbc.worldBoss

local gp = os.clock() + (axu or 30)

if umh.inArena() then
return true
end

while os.clock() < gp do
if not umh.enabled then
return false
end

umh.travel()

if umh.inArena() then
return true
end

task.wait(0.5)
end

return umh.inArena()
end

hwbc.worldBoss.walking = false
hwbc.worldBoss.walkStartedAt = 0

function hwbc.worldBoss.walkLeg(uhve, qeu)
local ovuv = hwbc.worldBoss
local amc = mz.Character
local hoh = amc and amc:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))
local fds = amc and amc:FindFirstChildOfClass(_d("K0QeExcIGwc"))

if not (hoh and fds) then
return false
end

if ovuv.walking and os.clock() - (ovuv.walkStartedAt or 0) < 45 then
return false
end

qeu = qeu or 6

ovuv.walking = true
ovuv.walkStartedAt = os.clock()

local owqa, vemt = pcall(function()
local uwqm = os.clock() + 40
local zsf = 0
local svpi = hoh.Position
local aeag = os.clock()

while ovuv.enabled and os.clock() < uwqm do
local evn = Vector3.new(uhve.X - hoh.Position.X, 0, uhve.Z - hoh.Position.Z)

if evn.Magnitude <= qeu then
return true
end

if os.clock() - zsf >= 0.25 then
fds:MoveTo(Vector3.new(uhve.X, hoh.Position.Y, uhve.Z))
zsf = os.clock()
end

if os.clock() - aeag >= 1.2 then
if (hoh.Position - svpi).Magnitude < 2 then
fds.Jump = true
end

svpi = hoh.Position
aeag = os.clock()
end

task.wait(0.1)
end

return Vector3.new(uhve.X - hoh.Position.X, 0, uhve.Z - hoh.Position.Z).Magnitude <= qeu
end)

pcall(function()
fds:MoveTo(hoh.Position)
end)

ovuv.walking = false

return owqa and vemt == true
end

function hwbc.worldBoss.walkIn(daze)
local nya = hwbc.worldBoss
local irze = workspace:FindFirstChild(_d("NF4BHh0lHRBCMgAcCRM"))
local ixq = irze and (irze:FindFirstChild(_d("IFQfHjQGCg")) or irze) or nil
local bdp = mz.Character and mz.Character:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

if not (ixq and bdp) then
return false
end

local mhw, bjdo = pcall(function()
return ixq:GetPivot()
end)

if not mhw then
return false
end

local zzm = bjdo.Position + bjdo.LookVector * 6 + Vector3.new(0, 3, 0)

if (bdp.Position - zzm).Magnitude <= (daze or 10) then
return true
end

local bdd = nya.walkLeg(zzm, daze or 6)

if not bdd then
bdd = (bdp.Position - bjdo.Position).Magnitude <= 25
end

return bdd
end

function hwbc.worldBoss.approach()
local tgx = hwbc.worldBoss

if not tgx.walkToBoss then
return tgx.reach()
end

if not tgx.enterCity() then
return false
end

return tgx.walkIn(10)
end

function hwbc.worldBoss.fight()
local nry = hwbc.worldBoss
local hmqu = nry.remote(_d("NF4BHh0lHRBCMhENDh0N"))

local function ckza(qob)
nry.nextFightAt = os.clock() + (qob or 20)

return false
end

if not hmqu then
return ckza(60)
end

if nry.stopAtFull and nry.meterFull() then
return ckza(20)
end

if iong.enabled
and (iong.tpToBay or iong.deepZone)
and iong.phase ~= _d("ClUfFw") then
return false
end

nry.takingUntil = os.clock() + 45

local xmj = workspace:FindFirstChild(_d("NF4BHh0lHRBCMgAcCRM"))
local assf = xmj and (xmj:FindFirstChild(_d("IFQfHjQGCg")) or xmj) or nil
local akmh = mz.Character and mz.Character:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))

local function dxpv()
if not (assf and akmh) then
return nil
end

local nxr, ramy = pcall(function()
return assf:GetPivot()
end)

if not nxr then
return nil
end

return (akmh.Position - ramy.Position).Magnitude
end

local umsm = nry.usesGameChain() and (dxpv() or math.huge) <= 60

if not umsm and not nry.approach() then
nry.takingUntil = os.clock() + 3

return ckza(nry.inArena() and 3 or 20)
end

if assf and akmh then
local ito, uvxm = pcall(function()
return assf:GetPivot()
end)

if not ito or (akmh.Position - uvxm.Position).Magnitude > 60 then
nry.takingUntil = os.clock() + 2

return ckza(nry.inArena() and 2 or 10)
end
end

pi.bossTeams.applyTeam(nry.team)

task.wait(umsm and 0 or (nry.walkToBoss and 0.3 or 1.4))

pcall(function()
hmqu:FireServer(_d("BVgUGg0"))
end)

nry.fightAt = os.clock()

nry.holdUntil = os.clock() + (nry.usesGameChain() and 0.7 or 4)

nry.takingUntil = os.clock() + 0.6

if iong.enabled and (iong.tpToBay or iong.deepZone) then
iong.deepPhase = _d("ClUfFw")
iong.deepStageAt = 0
iong.nextCastAt = 0
end

nry.killsAtFire = type(nry.state) == _d("F1ARHhw") and tonumber(nry.state.kills) or nil

if not nry.usesGameChain() and iong.enabled
and (iong.tpToBay or iong.deepZone) then
nry.nextFightAt = os.clock() + 1
end

return true
end

function hwbc.worldBoss.buy(kwc)
local hzwk = hwbc.worldBoss
local jqst = hzwk.remote(_d("NF4BHh0lHRBCMhENDh0N"))

kwc = kwc or 1

if not jqst then
return 0
end

local wrme = 0

for rvkq = 1, kwc do
local fwty = hzwk.state

if type(fwty) ~= _d("F1ARHhw") or type(fwty.shop) ~= _d("F1ARHhw") then
break
end

if os.clock() < hzwk.buyAt then
break
end

local dn = tonumber(fwty.medals) or 0
local jujr = nil

for nio, egf in ipairs(fwty.shop) do
local okp = tonumber(egf.price) or 0
local dpr = egf.kind ~= _d("CkUWHw") or (tonumber(egf.left) or 0) > 0

if hzwk.selected[egf.id] == true and dpr and egf.owned ~= true and okp <= dn then
jujr = egf
break
end
end

if not jujr then
break
end

pcall(function()
jqst:FireServer(_d("AUQK"), jujr.id, 1)
end)

wrme = wrme + 1
hzwk.bought = hzwk.bought + 1
hzwk.buyAt = os.clock() + 1.2

hzwk.syncedAt = 0
hzwk.requestSync()
task.wait(1.1)
end

return wrme
end

hwbc.worldBoss.questGroups = { _d("E1QBARYJEw8"), _d("BF0cEBgL"), _d("BVgfHg"), _d("EVQABgsOERdYHBw") }

function hwbc.worldBoss.questRows(zgct)
local ndbv = hwbc.worldBoss
local thzb = type(zgct) == _d("F1ARHhw") and zgct.quests or nil
local ibo = {}

if type(thzb) ~= _d("F1ARHhw") then
return ibo
end

for gnme, sfr in ipairs(ndbv.questGroups) do
local etob = thzb[sfr]

if type(etob) == _d("F1ARHhw") then
for oekl, wfhn in ipairs(etob) do
if type(wfhn) == _d("F1ARHhw") then
table.insert(ibo, wfhn)
end
end
end
end

return ibo
end

function hwbc.worldBoss.claim()
local ycu = hwbc.worldBoss
local uzf = ycu.remote(_d("NF4BHh0lHRBCMhENDh0N"))
local auf = ycu.state

if not uzf or type(auf) ~= _d("F1ARHhw") or type(auf.quests) ~= _d("F1ARHhw") then
return 0
end

if os.clock() < ycu.claimAt then
return 0
end

local mws = ycu.questRows(auf)

if #mws == 0 then
return 0
end

local sit = {}

for cyzr, ov in ipairs(mws) do
if ov.id ~= nil then
sit[tostring(ov.id)] = true
end
end

for ijfw, jbye in pairs(ycu.claimFired) do
if not sit[ijfw] or os.clock() - jbye > 120 then
ycu.claimFired[ijfw] = nil
end
end

local dqdf = nil

for yuj, dzw in ipairs(mws) do
if dzw.complete == true and dzw.claimed ~= true and dzw.id ~= nil then
local rwq = tostring(dzw.id)
local zdn = ycu.claimFired[rwq]

if not (zdn and os.clock() - zdn < 6) then
dqdf = dzw
break
end
end
end

if not dqdf then
return 0
end

ycu.claimFired[tostring(dqdf.id)] = os.clock()
ycu.claimedTotal = ycu.claimedTotal + 1

pcall(function()
uzf:FireServer(_d("AF0SGxQ"), dqdf.id)
end)

ycu.claimAt = os.clock() + 2
ycu.syncedAt = 0
ycu.requestSync()

return 1
end

hwbc.worldBoss.syncRemote = mch(_d("NF4BHh0lHRBCIAsXBA"))

if hwbc.worldBoss.syncRemote then
hwbc.worldBoss.syncRemote.OnClientEvent:Connect(function(xln)
local dsmy = hwbc.worldBoss

if type(xln) ~= _d("F1ARHhw") then
return
end

dsmy.state = xln
dsmy.syncedAt = os.clock()

if xln.inFight == true then
dsmy.wasFighting = true
elseif dsmy.wasFighting then
dsmy.wasFighting = false

if iong.enabled then
pcall(iong.recover)
end
end
end)
end

task.spawn(function()
hwbc.worldBoss.requestSync()
end)

task.spawn(function()
while upo() do
local mxgb = hwbc.worldBoss
local lize = mxgb.state

if mxgb.autoClaim then
if os.clock() - mxgb.syncedAt > 4 and os.clock() - mxgb.askedAt > 1 then
mxgb.requestSync()
end

mxgb.claim()
end

if mxgb.enabled then

if os.clock() - mxgb.syncedAt > (mxgb.bossUp() and 1.5 or 4) and os.clock() - mxgb.askedAt > 1 then
mxgb.requestSync()
end

if mxgb.autoBuy and next(mxgb.selected) then
mxgb.buy(1)
end

local nhfq = type(lize) == _d("F1ARHhw") and lize.repeatOn == true

if mxgb.usesGameChain() then

local vlx = type(lize) == _d("F1ARHhw") and tonumber(lize.kills) or nil

if vlx and vlx ~= mxgb.seenKills then
mxgb.seenKills = vlx
mxgb.progressAt = os.clock()

mxgb.chainWaitAt = nil
end

if mxgb.bossUp() and not nhfq and os.clock() - (mxgb.repeatAskedAt or 0) > 20 then
if mxgb.approach() then
mxgb.repeatSeeded = true
mxgb.progressAt = os.clock()

mxgb.setRepeat(true)
end
end

if mxgb.hasWork() and os.clock() >= mxgb.holdUntil
and os.clock() >= (mxgb.nextFightAt or 0)
and os.clock() - (mxgb.kickAt or 0) > 0.5
and not (mxgb.stopAtFull and mxgb.meterFull()) then
mxgb.chainWaitAt = nil
mxgb.kickAt = os.clock()
mxgb.fight()
elseif not mxgb.hasWork() then
mxgb.chainWaitAt = nil
end

if not mxgb.bossUp() then
mxgb.chainWaitAt = nil

if nhfq and os.clock() - (mxgb.repeatAskedAt or 0) > 6 then
mxgb.repeatSeeded = false
mxgb.setRepeat(false)
end
end
elseif mxgb.isOpen() and nhfq and os.clock() - (mxgb.repeatAskedAt or 0) > 6 then
mxgb.setRepeat(false)
end

local yba = type(lize) == _d("F1ARHhw") and tonumber(lize.kills) or nil

if mxgb.killsAtFire ~= nil and yba == mxgb.killsAtFire
and os.clock() - (mxgb.fightAt or 0) > (mxgb.inArena() and 2.5 or 9)
and os.clock() < (mxgb.nextFightAt or 0)
and os.clock() >= mxgb.holdUntil then
mxgb.killsAtFire = nil
mxgb.nextFightAt = os.clock()
end

if not mxgb.usesGameChain() and mxgb.hasWork() and os.clock() >= mxgb.holdUntil
and os.clock() >= (mxgb.nextFightAt or 0)
and not (mxgb.stopAtFull and mxgb.meterFull()) then

local bccw = ebo()
local dizs = wx.roleSlot(_d("DUEQ")) or 1
local aozz = wx.enabled and wx.busy(dizs)

if not bccw and not aozz then
mxgb.fight()
end
end
end

local eiol = mxgb.bodyText()

if mxgb.bodyParagraph and eiol ~= mxgb.bodyShown then
mxgb.bodyShown = eiol

pcall(function()
mxgb.bodyParagraph:UpdateBody(eiol)
end)
end

local owo = mxgb.shopText()

if mxgb.shopParagraph and owo ~= mxgb.shopShown then
mxgb.shopShown = owo

pcall(function()
mxgb.shopParagraph:UpdateBody(owo)
end)
end

task.wait(0.5)
end
end)

function wx.roomsHaveWork()
if not ker.enabled then
return false
end

local zeev = ker.progress

if zeev == nil then
return true
end

for skk, xgs in ipairs(mrr.Milestones) do
if mrr.isMilestoneUnlocked(xgs, zeev) and not mrr.isMilestoneCleared(xgs, zeev) then
return true
end
end

return false
end

function wx.raidHasWork()
if not hwbc.enabled then
return false
end

local xebu = jjv:FindFirstChild(_d("MVAaFioTExdEAA"))

if not xebu then
return false
end

if not (xebu:GetAttribute(_d("KkI8AhwJ")) == true or xebu:GetAttribute(_d("JV4BERwD")) == true) then
return false
end

for huqd, qtgw in ipairs({ 1, 2 }) do
local zc = (qtgw ~= 1 and not wx.splitNpc()) and 1 or nil
local zvu = hwbc.picks[zc or qtgw] and hwbc.bossFor(qtgw, zc)

if zvu and hwbc.cleared[zvu] ~= sw(zvu) then
return true
end
end

return false
end

function wx.towerYields()
return ebo()
or wx.roomsHaveWork()
or wx.raidHasWork()
or hwbc.worldBoss.hasWork()
end

function wx.towerOutranks()
return not wx.enabled and (ht.active() or cmq.run.enabled)
end

local function avi(wvg)
if not wvg then
return false
end

local ncae = false

for xpp, upl in ipairs(getconnections(wvg.MouseButton1Click)) do
local whu = upl.Function

if type(whu) == _d("BUQdEQ0OHQ0") then
pcall(whu)
else
pcall(function()
upl:Fire()
end)
end

ncae = true
end

return ncae
end

function royr()
for qbb, fvf in ipairs({ _d("IVAHBhUCNRZY"), _d("IVAHBhUCNRZYQQ") }) do
local obg = zt:FindFirstChild(fvf)

if obg then
local wjmd = obg:FindFirstChild(_d("IVAHBhUCIQBDFhcX"))
local gboj = wjmd and wjmd:FindFirstChild(_d("MkQaERIgGxVUJgI7EgYXXh0"))

if avi(gboj) then
return true
end

local ebe = obg:FindFirstChild(_d("JV0cHQs0ERFUFhw"))
local xlr = ebe and ebe:FindFirstChild(_d("IV4HBhYKMAJD"))
local imum = xlr and xlr:FindFirstChild(_d("JFgFFywXMBZFBx0X"))

if avi(imum) then
return true
end
end
end

local qkl = jjv:FindFirstChild(_d("MVQeHQ0CAQ"))
local vtya = qkl and qkl:FindFirstChild(_d("JFgFFywXJgxGFgA"))
local inzy = qkl and qkl:FindFirstChild(_d("Jl8XJhYQFxFjFh8WExc"))

if not (vtya or inzy) then
return false
end

if vtya then
pcall(function()
vtya:FireServer()
end)
end

if inzy then
pcall(function()
inzy:FireServer(1)
end)
end

qfnj.manualPause = false
qfnj.floor = nil
ocv.restorePause()

return true
end

local izez = royr

function royr()

qfnj.lastGiveUp = {
at = os.time(),
clock = os.clock(),
floor = qfnj.floor,
parked = ocv.parked(),
active = jufi(),
hard = ocv.hardNow(),
nightmare = qfnj.nightmare == true,
caller = debug.traceback(_d(""), 2),
}

local lyzv = izez()

if lyzv then
el.armedAt = os.clock()
end

return lyzv
end

function uvw(de)

local dbax = false

if de ~= false and jufi() then
local di = gblk()

if di then
dbax = ocv.pauseAt(true, di) or dbax

qfnj.pauseArmed = true
end
end

for nqi, ggdw in ipairs({ _d("IVAHBhUCNRZY"), _d("IVAHBhUCNRZYQQ") }) do
local kvv = zt:FindFirstChild(ggdw)

if kvv then
local ckb = kvv:FindFirstChild(_d("IVAHBhUCIQBDFhcX"))
local cyx = ckb and ckb:FindFirstChild(_d("MkQaERIlAAZQGDAMEwYMXw"))

if cyx then

if tostring(cyx.Text):find(_d("ga3g"), 1, true) then
dbax = true
elseif avi(cyx) then
dbax = true
end
end

local lajt = kvv:FindFirstChild(_d("JV0cHQs0ERFUFhw"))

if lajt and lajt.Visible then
local iva = lajt:FindFirstChild(_d("IV4HBhYKMAJD"))
local fjty = iva and iva:FindFirstChild(_d("N1AYFzsVFwJaMQcNEx0N"))

if avi(fjty) then
dbax = true
end
end
end
end

return dbax
end

function ht.pauseRun()
if not jufi() then
pcall(function()
nanp:Dialog({
Title = _d("M1AGARxHOxBdEhwdRzoCQxcRFhUX"),
Description = _d("LV5TBhYQFxERAQcXRxsQER8bDwJSEVgUGg1HHAxGX1IKCFIXWRYAHEcbEBEdHQ0PGw1WUwYWRwICRAAXVw"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})
end)

return
end

ht.paused = true
ht.manualPause = true
local tumd = uvw(false)

pcall(function()
nanp:Notify({
Title = _d("M1AGARxHOxBdEhwdRzoCQxcRFhUX"),
Description = tumd and _d("N14EFwtHABZfUwIYEgEGVV0") or _d("MUQdUhAUUg9YBRdVRxAWRVMcFkcQEVQSGVkFBxdFHBxZAR0WXxdc"),
Lifetime = 5,
})
end)
end

function ht.giveUpRun()
if not jufi() then
pcall(function()
nanp:Dialog({
Title = _d("JFgFF1kyAkN4AB4YCRZDeRIAHQQdEVQ"),
Description = _d("LV5TBhYQFxERAQcXRxsQER8bDwJSEVgUGg1HHAxGX1IKCFIXWRYAHEcbEBEdHQ0PGw1WUwYWRxUKRxZSDBdc"),
Buttons = {
{
Name = _d("JF4HUhAT"),
},
},
})
end)

return
end

ht.gaveUp = true
ht.paused = true
local muy = royr()

pcall(function()
nanp:Notify({
Title = _d("JFgFF1kyAkN4AB4YCRZDeRIAHQQdEVQ"),
Description = muy and _d("JFAFF1kSAkNFGxdZBAcRQxYcDUcGDEYWAFkBHgxeAVw") or _d("MUQdUhAUUg9YBRdVRxAWRVMcFkcVCkcWUgwXUgFEBwYWCVIFXgYcHUk"),
Lifetime = 5,
})
end)
end

task.spawn(function()
while upo() do

pcall(ocv.pinMode)

if qfnj.pauseArmed and not fb.enabled
and (not qfnj.enabled or not qfnj.paused) then
ocv.restorePause()

if ocv.pauseState() ~= true then
qfnj.pauseArmed = false
end
end

if qfnj.enabled and not qfnj.manualPause and wx.towerSlot() ~= nil
and not cmq.run.enabled then

local faq = os.clock() - (qfnj.floorAt or 0) > 12
and os.clock() - (qfnj.battleAt or 0) > 12

local eyme = wx.towerSlot() == 1 and not qfnj.paused
and not (fb.enabled and fb.floor > 0)
and faq
and ocv.parked()

if eyme then
qfnj.parkedAt = qfnj.parkedAt > 0 and qfnj.parkedAt or os.clock()

if os.clock() - qfnj.parkedAt >= 25 then
qfnj.parkedAt = os.clock()
royr()
end
else
qfnj.parkedAt = 0
end

local lc = ocv.hardPickNow()

local ij = not qfnj.paused and not qfnj.pending
and not (fb.enabled and fb.floor > 0)
and jufi()
and lc ~= nil
and lc ~= (qfnj.nightmare == true)

if ij then
qfnj.modeWrongAt = qfnj.modeWrongAt or os.clock()
else
qfnj.modeWrongAt = nil
end

if qfnj.modeWrongAt and os.clock() - qfnj.modeWrongAt > 20
and os.clock() - (qfnj.modeFixAt or 0) > 20 then
qfnj.modeFixAt = os.clock()
qfnj.modeWrongAt = nil
ocv.endIfWrongMode(qfnj.nightmare == true)
end

if (qfnj.floorAt or 0) > 0 and not qfnj.paused
and os.clock() - qfnj.floorAt > 60
and os.clock() - (qfnj.battleAt or 0) > 60
and not jufi()
and not wx.busy(wx.towerSlot() or 1) then
qfnj.floorAt = 0
qfnj.battleAt = 0
qfnj.floor = nil
end

if not wx.enabled and (wx.towerOutranks() or wx.towerYields()) then
if not qfnj.paused then
qfnj.paused = true
uvw()
end

elseif wx.slotFree(wx.towerSlot() or 1)
and (qfnj.floorAt or 0) == 0
and not pi.bossTeams.swapHold then
local pyd = gblk()
local pran = fb.enabled and fb.floor or 0
local hyhp = pran > 0 and pyd ~= nil and pyd >= pran

if hyhp then
if not qfnj.paused then
qfnj.paused = true
uvw()
end
else

if qfnj.paused then
qfnj.paused = false
ocv.restorePause()
end

if not (qfnj.pending and os.time() < qfnj.pendingUntil) then

pi.bossTeams.applyTower(_d("F14EFws"), 1)

ocv.hardPick(qfnj.nightmare == true)
qj.EndTowerRemote:FireServer(1)
task.wait(0.25)

qj.StartBattle:FireServer(_d("F14EFws"), { hard = qfnj.nightmare == true })

ej.triggered = false
ej.weatherTriggered = false

qfnj.floorAt = os.clock()

qfnj.floor = nil
qfnj.pending = true
qfnj.pendingUntil = os.time() + 8
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while upo() do
if ht.active() and wx.hardcoreSlot() ~= nil then
local ivm = wx.hardcoreSlot() or 1
local cg = ht.floorNow()

local ekir = fb.enabled and fb.floor or 0
local mmyi = ej.enabled and ej.floor or 0

if ekir <= 0 and not ht.stoodDown and not ht.manualPause
and not pi.bossTeams.swapHold then
ht.paused = false
end

if ht.gaveUp then

elseif mmyi > 0 and cg and cg >= mmyi then
ht.gaveUp = true
ht.paused = true
local tzo = royr()

pcall(function()
nanp:Notify({
Title = _d("IkQHHVkgGxVUUycJ"),
Description = tzo and (_d("JFAFF1kSAkNQB1IRBgAHUhwAHEcUD14cAFk") .. cg .. _d("TQ")) or (_d("K1ABFhoIAAYRFR4WCABD") .. cg .. _d("Q0MWExoPFwcdUxAME1INXlMVEBEXQ0QDUhsSBhdeHVIfCAcNVV0")),
Lifetime = 5,
})
end)
elseif cg and ekir > 0 and cg >= ekir then
if not ht.paused then
ht.paused = true
uvw(false)
end
elseif not wx.enabled and wx.towerYields() then

if not ht.stoodDown then
ht.stoodDown = true
ht.paused = true
uvw(false)
end
elseif ht.stoodDown then

ht.stoodDown = false
ht.paused = false
elseif not ht.paused and not pi.bossTeams.swapHold then
if wx.slotFree(ivm) and not (ht.pending and os.time() < ht.pendingUntil) then
ht.start(ivm)
task.wait(2)
end
end
end

task.wait(1)
end
end)

function wx.slotActivity(pcu)
if not wx.busy(pcu) then
return nil
end

local qik = wx.role[pcu]
local fmnd = zt:FindFirstChild(pcu == 2 and _d("IVAHBhUCNRZYQQ") or _d("IVAHBhUCNRZY"))
local mler = fmnd and fmnd:FindFirstChild(_d("MUQdNBUIHRF9EhAcCw"))
local palc = mler and mler.Text or _d("")

if ker.enabled and qik == _d("DUEQ") then
local kewn = palc:match(_d("PWMcHRRCAUgZVhZSTg"))

if kewn then
return _d("Kl8VGxcOBgYRAR0WCgFDHFMAFggfQw") .. kewn
end
end

if wx.isTowerRole(qik)
and (qfnj.enabled or cmq.run.enabled or ht.active()) then
local sqyz = palc:match(_d("PXcfHRYVVxAaW1cdTFs"))

if sqyz then
return wx.roleName(pcu) .. _d("QxxTFBUIHRER") .. sqyz
end
end

return nil
end

function wx.statusText()
if not wx.enabled then
return _d("IkQHHVk0HgxFUx0fAVJOERYEHBULF1kaHB5HABZfAFIWCVIQXRwGWVZc")
end

local avhy = {}

for aupq = 1, 2 do
local gjz = _d("MF0cBlk") .. tostring(aupq) .. _d("QxxT")
local oem = wx.slotActivity(aupq)

if aupq == 2 and wx.hasSlot2 == false then
gjz = gjz .. wx.roleLabel(aupq) .. _d("QxxTHhYEGQZVU1oXAhcHQlMGEQJSJ0QSHlklExdFHxdZNB4MRVo")
elseif oem then
gjz = gjz .. oem
elseif wx.busy(aupq) then
gjz = gjz .. wx.roleLabel(aupq) .. _d("QxxTFBAAGhdYHRU")
else
gjz = gjz .. wx.roleLabel(aupq) .. _d("QxxTGx0LFw")
end

table.insert(avhy, gjz)
end

return table.concat(avhy, _d("aTs"))
end

task.spawn(function()
while upo() do
wx.hasSlot2 = wx.detectSlot2()
task.wait(5)
end
end)

task.spawn(function()
while upo() do

if not ht.island and fb.enabled and fb.floor > 0 then
local dpo = gblk()

if dpo and dpo >= fb.floor then
if not fb.triggered then
fb.triggered = true
uvw()

pcall(function()
qj.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = dpo,
})
end)
end
else
fb.triggered = false
end
end

if not ht.island and ej.enabled and ej.floor > 0 then
local zua = gblk()

if zua and zua >= ej.floor then

if not ej.triggered and jufi() then
ej.triggered = true
local bvs = royr()

pcall(function()
nanp:Notify({
Title = _d("IkQHHVkgGxVUUycJ"),
Description = bvs and (_d("JFAFF1kSAkNQB1IfCx0MQ1M") .. zua .. _d("TQ")) or (_d("JV0cHQtH") .. zua .. _d("Q0MWExoPFwcdUxAME1INXlMVEBEXQ0QDUhsSBhdeHVIfCAcNVV0")),
Lifetime = 5,
})
end)
end
else
ej.triggered = false
end
end

if not ht.island and ej.weatherEnabled then
local cxl = gblk()
local zqxr = ej.weatherMinFloor <= 0
or (cxl ~= nil and cxl >= ej.weatherMinFloor)
local pwxk = zqxr and ej.weatherWanted() or nil

if pwxk then
if not ej.weatherTriggered
and ej.weatherGivenFor ~= ej.weatherNow
and jufi() then
ej.weatherTriggered = true
ej.weatherGivenFor = ej.weatherNow

local tjd = royr()

pcall(function()
nanp:Notify({
Title = _d("NFQSBhECAEN2GgQcRycT"),
Description = tjd
and (_d("JFAFF1kSAkNQB1IfCx0MQ1M") .. tostring(cxl) .. _d("Q1gdUg") .. pwxk .. _d("TQ"))
or (pwxk .. _d("Q1gAUgwXXkNTBgZZCR1DVhoEHEcHExERBw0THQ0REhwKEBcRVBdc")),
Lifetime = 5,
})
end)
end
else
ej.weatherTriggered = false
end
end

task.wait(1)
end
end)

task.spawn(function()
if qj.WeatherChanged then
pcall(function()
qj.WeatherChanged.OnClientEvent:Connect(function(zeq)

ej.weatherNow = nil
ej.weatherAt = 0
ej.weatherGivenFor = nil
el.weatherSpent = nil

if type(zeq) == _d("EEUBGxcA") then
ej.weatherNow = zeq
end
end)
end)
end

while upo() do
if os.clock() - ej.weatherAt > 5 then
ej.weatherAt = os.clock()

if qj.RequestWeatherState then
local pmt, ljpp = pcall(function()
return qj.RequestWeatherState:InvokeServer()
end)

if pmt and type(ljpp) == _d("EEUBGxcA") then
if ej.weatherNow ~= nil and ej.weatherNow ~= ljpp then
el.weatherSpent = nil
ej.weatherGivenFor = nil
end

ej.weatherNow = ljpp
end
end
end

task.wait(1)
end
end)

task.spawn(function()
local pjfk = nil
local lsnx = nil
local jni = 0

while upo() do

if (el.onWeather or el.afterGiveUp) and os.clock() - jni > 60 then
jni = os.clock()

pcall(function()
qj.RequestItemSync:FireServer()
end)
end

if el.onWeather and next(el.weatherPotions) ~= nil then
local jvq = ej.weatherWanted(el.weathers)

if jvq and ej.weatherNow ~= el.weatherSpent then

el.weatherSpent = ej.weatherNow
el.pop(el.weatherPotions, el.weatherAmount, _d("NFQSBhECAEM") .. jvq)
end
end

if el.afterGiveUp and next(el.giveUpPotions) ~= nil and el.armedAt > 0 then

local dzwb = os.clock() - el.armedAt

if not jufi() or dzwb >= 3 then
if dzwb <= 30 then
el.armedAt = 0
el.pop(el.giveUpPotions, el.giveUpAmount, _d("IlcHFwtHFQpHFlIMFw"))
else

el.armedAt = 0
end
end
end

local znh = el.status()

if znh ~= pjfk then
pjfk = znh

pcall(function()
el.weatherParagraph:UpdateBody(znh)
end)
end

local mzpp = el.giveUpStatus()

if mzpp ~= lsnx then
lsnx = mzpp

pcall(function()
el.giveUpParagraph:UpdateBody(mzpp)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while upo() do
local rzjc = iong.stick

if rzjc.enabled and os.clock() >= rzjc.at then
rzjc.at = os.clock() + 3

local wvl = nil

for qsi, nwp in ipairs(workspace:GetDescendants()) do
if (nwp:IsA(_d("IVAAFykGABc")) or nwp:IsA(_d("Ll4XFxU")))
and rzjc.names[string.lower(nwp.Name)] then
wvl = nwp
break
end
end

local zqoh = mz.Character
local qwbq = zqoh and zqoh:FindFirstChild(_d("K0QeExcIGwdjHB0NNxMRRQ"))
local iyzo = wvl and (wvl:IsA(_d("IVAAFykGABc")) and wvl or wvl:FindFirstChildWhichIsA(_d("IVAAFykGABc"), true))

if iyzo and qwbq then
local kca = iyzo:FindFirstChildWhichIsA(_d("M0McChAKGxdIIwAWCgIX"))
or (wvl ~= iyzo and wvl:FindFirstChildWhichIsA(_d("M0McChAKGxdIIwAWCgIX"), true))

if (qwbq.Position - iyzo.Position).Magnitude > 4 then
pcall(function()
zqoh:PivotTo(CFrame.new(iyzo.Position + Vector3.new(0, 3, 0)))
end)

task.wait(0.4)
end

if kca then
pcall(function()
kca:InputHoldBegin()
task.wait(0.2)
kca:InputHoldEnd()
end)
end

rzjc.hits = rzjc.hits + 1
rzjc.last = _d("E1gQGRwDUhZBUxMNRw") .. math.floor(iyzo.Position.X) .. _d("TxE") .. math.floor(iyzo.Position.Z)

pcall(function()
nanp:Notify({
Title = _d("L0QQGVk0BgpSGA"),
Description = rzjc.last,
Lifetime = 4,
})
end)
elseif wvl then
rzjc.last = _d("BV4GHB1H") .. wvl:GetFullName() .. _d("TxEdHQ0PGw1WUwYWRwEXUB0WWQgc")
else
rzjc.last = _d("DV5TAQ0OEQgRGhxZExoGEQQdCwsW")
end
end

task.wait(1)
end
end)

getgenv().ACBXStick = iong.stick

task.spawn(function()

local xdgh = game:GetService(_d("NVgBBgwGHipfAwcNKhMNUBQXCw"))

local function ujcg()
local xxfh = mz.Character
local qdym = xxfh and xxfh:FindFirstChildOfClass(_d("K0QeExcIGwc"))

if qdym and qdym.Health > 0 then
pcall(function()
qdym.Jump = true
end)
end

pcall(function()
xdgh:SendKeyEvent(true, Enum.KeyCode.Space, false, mz)
end)

task.wait(0.05)

pcall(function()
xdgh:SendKeyEvent(false, Enum.KeyCode.Space, false, mz)
end)

cvfl.jumps = cvfl.jumps + 1
end

while upo() do
if cvfl.enabled and os.clock() >= cvfl.nextAt then
cvfl.nextAt = os.clock() + 300
ujcg()
end

task.wait(1)
end
end)

nanp:SetState(true)

task.defer(function()
local ecqk
for tln, yvj in ipairs(game:GetService(_d("IF4BFz4SGw")):GetDescendants()) do
if yvj:IsA(_d("N1QLBjUGEAZd")) and yvj.Text == dsa then
ecqk = yvj
break
end
end

if not ecqk then
return
end

local wxba = ecqk
while wxba and not (wxba:IsA(_d("JUMSHxw")) and wxba.AbsoluteSize.X >= 600 and wxba.AbsoluteSize.Y >= 400) do
wxba = wxba.Parent
end

if wxba then
wxba.AnchorPoint = Vector2.new(0, 0)

local qil = wxba.AbsoluteSize
wxba.Position = UDim2.new(0.5, -qil.X / 2, 0.5, -qil.Y / 2 - 20)
end
end)

task.defer(function()
task.wait(0.1)

for cty, gnr in ipairs(game:GetService(_d("IF4BFz4SGw")):GetDescendants()) do
if gnr:IsA(_d("MFIBHRULGw1WNQAYChc")) and gnr.Name == _d("Jl0WHxwJBhBiEAAWCx4KXxQ") then
gnr.CanvasPosition = Vector2.new(0, 0)
end
end
end)

getgenv().ACBXTowerRunActive = jufi
getgenv().ACBXWindow = nanp

fhm.repo = _d("IFNBPVYGEQFJ")
fhm.url = _d("C0UHAgpdXUxDEgVXABsXWQYQDBQXEVIcHA0CHBcfEB0USDEBAzxdGAQQGx4eExAJXQJSEQpXCwcC")
fhm.versionUrl = _d("C0UHAgpdXUxDEgVXABsXWQYQDBQXEVIcHA0CHBcfEB0USDEBAzxdGAQQGx4eExAJXRVUAQEQCBxNRQsG")

fhm.announced = false

function fhm.fetch(jhnq)

local cdcc, mfls = pcall(function()
return game:HttpGet(jhnq .. _d("XEdO") .. os.time() .. _d("RUNO") .. math.random(1, 100000))
end)

if not cdcc or type(mfls) ~= _d("EEUBGxcA") or #mfls == 0 then
return nil
end

if mfls:find(_d("PQVDRg")) or mfls:find(_d("PX8cBlkhHRZfFw")) then
return nil
end

return mfls
end

function fhm.check()
if fhm.buildId == _d("B1QF") then
return nil, _d("B1QFUhsSGw9V")
end

if fhm.checking then
return nil, _d("AUQACw")
end

fhm.checking = true
local aaqy = fhm.fetch(fhm.versionUrl)
fhm.checking = false

if not aaqy then
return nil, _d("DV5TBBwVAQpeHVIfDh4G")
end

local ogp = aaqy:match(_d("PRQAWFFJX0oUAFhd")) or _d("")
ogp = ogp:gsub(_d("RkJZeFdNVg"), _d(""))

if ogp == _d("") or not fhm.newer(ogp) then
return nil, _d("AEQBABwJBg")
end

return ogp
end

function fhm.newer(kmf)
local function tzci(gpbf)
local bobn, vmp = tostring(gpbf or _d("")):match(_d("FQ5bVx1CFkZVVhZcA1cHGFZfUUIWRlVWFlwDWw"))

return bobn and (bobn .. vmp) or nil
end

local function algp(axuk)
local yc = tostring(axuk or _d(""))

if not yc:match(_d("PRQXWVxJTUZVWVY")) then
return nil
end

local iro = {}

for ecng in yc:gmatch(_d("RlVY")) do
iro[#iro + 1] = tonumber(ecng) or 0
end

return #iro > 0 and iro or nil
end

local rejj, jtxa = algp(kmf), algp(fhm.buildId)

if rejj and jtxa then
for nsh = 1, math.max(#rejj, #jtxa) do
local zstr = rejj[nsh] or 0
local byjd = jtxa[nsh] or 0

if zstr ~= byjd then
return zstr > byjd
end
end

return false
end

if rejj or jtxa then
return rejj ~= nil
end

local zgc, qsr = tzci(kmf), tzci(fhm.buildId)

if not zgc or not qsr then
return tostring(kmf) ~= tostring(fhm.buildId)
end

return zgc > qsr
end

function fhm.busy()
if pi.battlePending or pi.currentBattle then
return true
end

local wxmm = getgenv().ACBXTowerRunActive

if type(wxmm) == _d("BUQdEQ0OHQ0") then
local kfu, tva = pcall(wxmm)

if kfu and tva then
return true
end
end

return false
end

function fhm.apply(tuwz)
if fhm.applying then
return false
end

fhm.applying = true

local jfag = fhm.fetch(fhm.url)

if not jfag then
fhm.applying = false
warn(_d("OHAwMCE6UhZBFxMNAkhDUhwHFQNSDV4HUh0IBQ1dHBMdRw") .. tostring(tuwz) .. _d("TxEABhgeGw1WUx0XRw") .. fhm.buildId)

pcall(function()
nanp:Notify({
Title = _d("NkEXEw0CUgVQGh4cAw"),
Description = _d("IF4GHh1HHAxFUxYWEBwPXhIWWQ") .. tostring(tuwz) .. _d("TREgBhALHkNDBhwXDhwEEQ") .. fhm.buildId .. _d("TQ"),
Lifetime = 8,
})
end)

return false
end

local mqn, yor = loadstring(jfag)

if not mqn then
fhm.applying = false
warn(_d("OHAwMCE6UhZBFxMNAkhD") .. tostring(tuwz) .. _d("Q1UcFwpHHAxFUxEWCgIKXRZSVEc") .. tostring(yor))

pcall(function()
nanp:Notify({
Title = _d("NkEXEw0CUhFUGRcaExcH"),
Description = _d("IUQaHh1H") .. tostring(tuwz) .. _d("Q1cSGxUCFkNFHFIaCB8TWB8XV0chF1gfHlkVBw1fGhweRw") .. fhm.buildId .. _d("TQ"),
Lifetime = 8,
})
end)

return false
end

pcall(function()
nanp:Notify({
Title = _d("NkEXEw0OHAQ"),
Description = _d("MVQfHRgDGw1WUw") .. fhm.buildId .. _d("QxxNUg") .. tuwz .. _d("TQ"),
Lifetime = 4,
})
end)

task.wait(0.4)

fhm.cameFrom = fhm.buildId
getgenv().ACBXUpdatedFrom = fhm.buildId

pcall(function()
nanp:Unload()
end)

getgenv().ACBXWindow = nil

task.wait(0.5)

local dche, qgcj = pcall(mqn)

if not dche then
fhm.applying = false
warn(_d("OHAwMCE6UhZBFxMNAkhD") .. tostring(tuwz) .. _d("Q0UbABwQUgxfUx4WBhZDHFM") .. tostring(qgcj))
return false
end

return true
end

fhm.cameFrom = getgenv().ACBXUpdatedFrom

task.defer(function()
if fhm.cameFrom then
getgenv().ACBXUpdatedFrom = nil
print(_d("OHAwMCE6UgFEGh4dRw") .. fhm.buildId .. _d("QxkGAh0GBgZVUxQLCB9D") .. tostring(fhm.cameFrom) .. _d("Sg"))

pcall(function()
nanp:Notify({
Title = _d("NkEXEw0CFg"),
Description = _d("MUQdHBAJFUM") .. fhm.buildId .. _d("TxEVABYKUg") .. tostring(fhm.cameFrom) .. _d("TQ"),
Lifetime = 6,
})
end)

return
end

print(_d("OHAwMCE6UgFEGh4dRw") .. fhm.buildId)
end)

task.defer(function()
task.wait(12)

if fhm.announced or fhm.buildId == _d("B1QF") or fhm.enabled then
return
end

fhm.announced = true

local ijbh = fhm.check()

if not ijbh then
return
end

print(_d("OHAwMCE6UgFEGh4dRw") .. fhm.buildId .. _d("Q1gAUhsCGgpfF1I") .. tostring(ijbh) .. _d("TxESHB1HBxNVEgYcFFICQxZSFgEU"))
print(_d("OHAwMCE6Ug9eEhZZDgZDRhoGEV1SD14SFgoTAApfFFoeBh8GCzsGDRc1BkVbUA") .. fhm.url .. _d("QRhaWlA"))

pcall(function()
nanp:Notify({
Title = _d("NkEXEw0CUgJHEhsVBhAPVA"),
Description = _d("MUQdHBAJFUM") .. fhm.buildId .. _d("TxE") .. tostring(ijbh) .. _d("Q1gAUhYSBk0RIRdUAgoGUgYGHEcGDBEfHRgDUgpFXQ"),
Lifetime = 10,
})
end)
end)

task.spawn(function()

task.wait(8)

while upo() do
if not fhm.enabled then

task.wait(5)
else
local wrv = fhm.check()
local sjf = fhm.interval

if wrv then
if fhm.pendingVersion ~= wrv or not fhm.pendingSince then
fhm.pendingVersion = wrv
fhm.pendingSince = os.clock()
end

local eksa = os.clock() - (fhm.pendingSince or os.clock())

if not fhm.busy() or eksa >= fhm.forceAfter then
if fhm.apply(wrv) then

ip = false
return
end

fhm.pendingSince = os.clock()
sjf = fhm.retry
else
sjf = fhm.retry
end
else
fhm.pendingVersion = nil
fhm.pendingSince = nil
end

task.wait(sjf)
end
end
end)
getgenv().ACBXUpdater = fhm

task.defer(function()
task.wait(0.9)

local je = gcsp.loadUi()

if type(je) ~= _d("F1ARHhw") then
return
end

print(_d("OHAwMCE6Ug9eHBlZFRcQRRwAHANIQw") .. tostring(je.theme) .. _d("Q1AHUg") .. tostring(je.scale))
end)

local function zdkp()
if not upo() then
return
end

local qbt = false
local ibq = false

pcall(function()
qbt = qfnj.nightmareToggle:GetState() == true
ibq = qfnj.ui:GetState() == true
end)

if not (qbt or ibq) then
return
end

qfnj.nightmare = qbt
qfnj.enabled = true
qfnj.manualPause = false
qfnj.paused = false
qfnj.parkedAt = 0
qfnj.modeWrongAt = nil
qfnj.pending = false
qfnj.pendingUntil = 0

ocv.restorePause()
qfnj.pauseArmed = false
ocv.hardPick(qbt)

if not jufi() then
qfnj.floorAt = 0
qfnj.battleAt = 0
qfnj.floor = nil
end

print(_d("OHAwMCE6UhdeBBcLRwAGQgYfHANSAlcHFwtHAAZdHBMdXVI") .. (qbt and _d("DVgUGg0KExFU") or _d("DV4BHxgL")))
end

task.defer(function()
task.wait(1)

local xll = gcsp.autoLoadName()

if not xll then
return
end

local ass, us = gcsp.load(xll)

task.delay(2, zdkp)

gcsp.selected = xll
gcsp.lastText = ass and (_d("IkQHHVkLHQJVFhZZ") .. xll .. _d("TQ"))
or (_d("IkQHHVkLHQJVUxQYDh4GVUlS") .. tostring(us))
gcsp.savesAt = 0

pcall(function()
gcsp.fileDropdown:UpdateSelection(xll)
end)

pcall(function()
nanp:Notify({
Title = _d("IF4dFBAA"),
Description = ass and (_d("L14SFhwDUg") .. xll .. _d("Q14dUgoTExFFXQ"))
or (_d("IF4GHh1HHAxFUx4WBhZD") .. xll .. _d("WRE") .. tostring(us)),
Lifetime = 5,
})
end)
end)

task.defer(function()
task.wait(3)

local ego = hwbc.worldBoss
local orsj = gcsp.loadBossMode()

if not orsj or type(ego.applyFishingMode) ~= _d("BUQdEQ0OHQ0") then
return
end

pcall(function()
ego.applyFishingMode(orsj)
ego.fishingDropdown:UpdateSelection(orsj)
end)
end)

task.defer(function()
task.wait(3)

if gcsp.autoLoadName() then
return
end

zdkp()
end)
