local _d = (function()
local A = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local M = {}
local cache = {}
for i = 1, #A do
M[string.sub(A, i, i)] = i - 1
end
local K = string.char(50, 111, 49, 107, 115, 115, 50)
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

local vnu = "ACB Rebirth v0.9993"

local function uw(phig)
for cpbo, cah in ipairs(phig:GetDescendants()) do
if cah:IsA(_d("ZgpJHz8SUFcD")) and cah.Text == vnu then
local isl = cah
while isl and not isl:IsA(_d("YQxDDhYddUcG")) do
isl = isl.Parent
end
return isl
end
end
end

local function lglo()
local yeoo = game:GetService(_d("YgNQEhYBQQ")).LocalPlayer

for xigy, avud in ipairs({
(gethui and gethui() or game:GetService(_d("cQBDDjQGWw"))),
game:GetService(_d("cQBDDjQGWw")),
yeoo and yeoo:FindFirstChild(_d("YgNQEhYBdUcG")),
}) do
for hl, lp in ipairs(avud:GetChildren()) do

if lp:IsA(_d("YQxDDhYddUcG")) then
local ikg = lp:FindFirstChild(_d("cA5CDg"))

if ikg and ikg:FindFirstChild(_d("YQZVDhESQA")) and ikg:FindFirstChild(_d("cQBfHxYdRg")) then
return lp
end
end
end
end
end

if lglo() and getgenv().ACBXAllowReload ~= true then
local ljh = getgenv().ACBXWindow
local tgb = false
local nd = false

if ljh and ljh.Dialog then
pcall(function()
if ljh.GetState and ljh:GetState() == false then
ljh:SetState(true)
end

ljh:Dialog({
Title = _d("cyxzSyEWUFsdRQNTGkESDl0ZFhJWS09DHh0dW1wI"),
Description = _d("c09SBAMKElscEQofAVdTC0hLHxxTVgpVSxodEkYHWBhTAFdBHFgEHV0SYApBBxIQVxIGRUsEGkZaT0UDGgASXQFUVFMnWldPQx4dHVtcCBEIHANLEhxFBAMAElQGQxgHXxJBABEEHR9LEgBfDlMWRFcdEQ8BGkRXHBEfGxYSUwxSBAYdRhw"),
Buttons = {
{
Name = _d("YApBBxIQVw"),
Callback = function()
nd = true
tgb = true
end,
},
{
Name = _d("eQpUGw"),
Callback = function()
tgb = true
end,
},
},
})
end)
else

nd = true
tgb = true
end

local zgi = os.clock() + 90

while not tgb and os.clock() < zgi do
task.wait(0.25)
end

if not nd then
warn(_d("aS5yKSsuEl4AUA9TAVdUGkIOF1MfEhtZDlMQXUIWER8bEkYSBkJLAQZcXAZfDFMARlMWQkVTMF5bDFpLIRZCXg5SDlMHXRIcRgoDU1tGQxEEAVNHQQoRPh0fXVMLERgQAVtCGxECHVNbRhwROBYHRlsBVhhTB1NQQQ"))

return
end

warn(_d("aS5yKSsuEkAKQQcSEFtcCBEfGxYSQBpfBRodVRIMXhsKU0VbG1lLBxtbQU9eBRZd"))
end

getgenv().ACBXAllowReload = nil

local dor = getgenv().ACBXWindow
if dor then
pcall(function()
dor:Unload()
end)
end

for xex, wbt in ipairs({
game:GetService(_d("cQBDDjQGWw")),
game:GetService(_d("YgNQEhYBQQ")).LocalPlayer:FindFirstChild(_d("YgNQEhYBdUcG")),
}) do
if wbt then
local bvwp = uw(wbt)
if bvwp then
bvwp:Destroy()
end
end
end

local jjqm = game:GetService(_d("YgNQEhYBQQ"))
local gx = game:GetService(_d("YApBBxoQU0YKVTgHHEBTCFQ"))
local qaup = game:GetService(_d("Yg5FAxUaXFYGXwwgFkBEBlIO"))
local fvoa = game:GetService(_d("YBpfOBYBRFsMVA"))
local adn = jjqm.LocalPlayer
local ysuk = adn:WaitForChild(_d("YgNQEhYBdUcG"))

local xav = false

local function fgm()
pcall(function()
local byao = game:GetService(_d("ZhhUDh0gV0AZWAgW"))
local pky = (gethui and gethui()) or ysuk
local cvvu = Color3.fromRGB(77, 166, 255)
local gze = adn.DisplayName

local function hmzl(hls, jjr, mz)
byao:Create(
hls,
TweenInfo.new(jjr, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
mz
):Play()
task.wait(jjr)
end

local yfv = Instance.new(_d("YQxDDhYddUcG"))
yfv.Name = _d("cyxzMzodRkAA")
yfv.IgnoreGuiInset = true
yfv.DisplayOrder = 1000000
yfv.ResetOnSpawn = false
yfv.Parent = pky

local cjgw = Instance.new(_d("dB1QBhY"))
cjgw.Size = UDim2.fromScale(1, 1)
cjgw.BackgroundColor3 = Color3.fromRGB(4, 6, 11)
cjgw.BackgroundTransparency = 1
cjgw.BorderSizePixel = 0
cjgw.Parent = yfv

local sgws = Instance.new(_d("dB1QBhY"))
sgws.AnchorPoint = Vector2.new(0.5, 0.5)
sgws.Position = UDim2.fromScale(0.5, 0.5)
sgws.Size = UDim2.fromOffset(400, 176)
sgws.BackgroundColor3 = Color3.fromRGB(11, 16, 26)
sgws.BackgroundTransparency = 1
sgws.BorderSizePixel = 0
sgws.Parent = yfv

local qid = Instance.new(_d("ZyZyBAEdV0A"))
qid.CornerRadius = UDim.new(0, 14)
qid.Parent = sgws

local trub = Instance.new(_d("ZyZiHwEcWVc"))
trub.Color = Color3.fromRGB(46, 60, 86)
trub.Thickness = 1
trub.Transparency = 1
trub.Parent = sgws

local occ = Instance.new(_d("dB1QBhY"))
occ.Size = UDim2.fromOffset(44, 2)
occ.Position = UDim2.new(0.5, -22, 0, 34)
occ.BackgroundColor3 = cvvu
occ.BorderSizePixel = 0
occ.BackgroundTransparency = 1
occ.Parent = sgws

local zaw = Instance.new(_d("ZgpJHz8SUFcD"))
zaw.BackgroundTransparency = 1
zaw.Size = UDim2.new(1, -48, 0, 48)
zaw.Position = UDim2.fromOffset(24, 42)
zaw.Font = Enum.Font.GothamBold
zaw.Text = _d("cS0RIyYx")
zaw.TextSize = 28
zaw.TextYAlignment = Enum.TextYAlignment.Center
zaw.TextColor3 = Color3.fromRGB(236, 242, 255)
zaw.TextTransparency = 1
zaw.Parent = sgws

local wwkn = Instance.new(_d("ZgpJHz8SUFcD"))
wwkn.BackgroundTransparency = 1
wwkn.Size = UDim2.new(1, -48, 0, 20)
wwkn.Position = UDim2.fromOffset(24, 94)
wwkn.Font = Enum.Font.Gotham
wwkn.Text = _d("XgBQDxodVQ")
wwkn.TextSize = 14
wwkn.TextColor3 = Color3.fromRGB(150, 163, 186)
wwkn.TextTransparency = 1
wwkn.Parent = sgws

local lcqu = Instance.new(_d("dB1QBhY"))
lcqu.Size = UDim2.fromOffset(240, 3)
lcqu.Position = UDim2.new(0.5, -120, 0, 130)
lcqu.BackgroundColor3 = Color3.fromRGB(34, 44, 64)
lcqu.BorderSizePixel = 0
lcqu.BackgroundTransparency = 1
lcqu.Parent = sgws

local dxdp = Instance.new(_d("dB1QBhY"))
dxdp.Size = UDim2.fromScale(0, 1)
dxdp.BackgroundColor3 = cvvu
dxdp.BorderSizePixel = 0
dxdp.BackgroundTransparency = 1
dxdp.Parent = lcqu

local ghkx = Instance.new(_d("ZyZyBAEdV0A"))
ghkx.CornerRadius = UDim.new(0, 4)
ghkx.Parent = lcqu

local qd = Instance.new(_d("ZyZyBAEdV0A"))
qd.CornerRadius = UDim.new(0, 4)
qd.Parent = dxdp

hmzl(cjgw, 0.35, { BackgroundTransparency = 0.15 })
task.spawn(function()
hmzl(sgws, 0.3, { BackgroundTransparency = 0 })
end)
task.spawn(function()
hmzl(trub, 0.3, { Transparency = 0 })
end)
hmzl(zaw, 0.3, { TextTransparency = 0 })
hmzl(occ, 0.3, { BackgroundTransparency = 0 })
hmzl(wwkn, 0.3, { TextTransparency = 0 })
hmzl(lcqu, 0.3, { BackgroundTransparency = 0 })
hmzl(dxdp, 0.3, { BackgroundTransparency = 0 })

local aa = { _d("XgBQDxodVQ"), _d("XgBQDxodVRw"), _d("XgBQDxodVRxB"), _d("XgBQDxodVRxBHw") }
task.spawn(function()
byao:Create(dxdp, TweenInfo.new(1.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
Size = UDim2.fromScale(1, 1),
}):Play()
for oeo = 1, 6 do
wwkn.Text = aa[(oeo - 1) % #aa + 1]
task.wait(0.2)
end
end)
task.wait(1.2)

hmzl(zaw, 0.2, { TextTransparency = 1 })
hmzl(wwkn, 0.2, { TextTransparency = 1 })
hmzl(lcqu, 0.2, { BackgroundTransparency = 1 })
hmzl(dxdp, 0.2, { BackgroundTransparency = 1 })

zaw.Text = _d("ZgdQBRgAElQAQ0sGAFtcCBEGClNBUR1YGwc")
zaw.TextSize = 22
zaw.TextWrapped = true
wwkn.Text = vnu
hmzl(zaw, 0.25, { TextTransparency = 0 })
hmzl(wwkn, 0.25, { TextTransparency = 0 })
task.wait(1.1)
hmzl(zaw, 0.2, { TextTransparency = 1 })
hmzl(wwkn, 0.2, { TextTransparency = 1 })

zaw.Text = _d("ZQpdCBweVxI") .. gze .. _d("EjteSzAxEnoaUw")
zaw.TextSize = 22
wwkn.Text = _d("QRtQGQcaXFU")
hmzl(zaw, 0.3, { TextTransparency = 0 })
hmzl(wwkn, 0.3, { TextTransparency = 0 })
task.wait(1.3)

hmzl(zaw, 0.25, { TextTransparency = 1 })
hmzl(wwkn, 0.25, { TextTransparency = 1 })
hmzl(cjgw, 0.35, { BackgroundTransparency = 1 })

yfv:Destroy()
end)

xav = true
end

task.spawn(fgm)

local qp = gx:WaitForChild(_d("YApcBAcWQQ"))

local function tn(dbfu, mler)
local rqgy = qp:FindFirstChild(dbfu)

if rqgy then
return rqgy
end

local dtvz = qp:WaitForChild(dbfu, mler or 3)

if not dtvz then
warn(_d("cyxzM0lTQFcCXh8WUxU") .. dbfu .. _d("FU9fBFMfXVwIVBlTFkpbHEUYUxpcEhtZAgBTVVMCVEsFFkBBBl4FU14SRgdQH1MVV1MbRBkWU1tBT14NFQ"))
end

return dtvz
end

local ic = {
StartNPCBattle = tn(_d("YRtQGQc9YnEtUB8HH1c")),
NPCBattleResult = tn(_d("fD9yKRIHRl4KYw4ABl5G")),
SyncNPCCooldowns = tn(_d("YRZfCD0jcXEAXgcXHEVcHA")),
SetNPCDifficulty = tn(_d("YQpFJSMwdlsJVwIQBl5GFg")),
StartRaidBattle = tn(_d("YRtQGQchU1sLcwoHB15X")),
SetRaidDifficulty = tn(_d("YQpFORIaVnYGVw0aEEdeG0g")),
RaidProgress = tn(_d("YA5YDyMBXVUdVBgA")),
RequestRaidProgress = tn(_d("YApAHhYARmAOWA8jAV1VHVQYAA")),
SyncInfiniteRoomProgress = tn(_d("YRZfCDodVFsBWB8WIV1dAmEZHBRAVxxC")),
BuyRaidItem = tn(_d("cBpIORIaVnsbVAY")),
RaidShopState = tn(_d("YA5YDyAbXUI8RQoHFg")),
RaidNotify = tn(_d("YA5YDz0cRlsJSA")),
SyncItems = tn(_d("YRZfCDoHV18c")),

UseItem = tn(_d("ZxxUIgcWXw")),
RequestWeatherState = tn(_d("YApAHhYARmUKUB8bFkBhG1AfFg")),
WeatherChanged = tn(_d("ZQpQHxsWQHEHUAUUFlY")),
FishingUpdate = tn(_d("dAZCAxodVWcfVQoHFg")),
FishingThrow = tn(_d("dAZCAxodVWYHQwQE")),
FishingReel = tn(_d("dAZCAxodVWAKVAc")),
FishingStop = tn(_d("dAZCAxodVWEbXhs")),

FishingIslandTeleport = tn(_d("dAZCAxodVXscXQodF2ZXA1QbHAFG")),

SyncCollection = tn(_d("YRZfCDAcXl4KUh8aHFw")),
RequestSync = tn(_d("YApAHhYARmEWXwg")),
ClaimIndexReward = tn(_d("cQNQAh46XFYKSTkWBFNACw")),
RequestAchievements = tn(_d("YApAHhYARnMMWQIWBVdfCl8fAA")),
SyncAchievements = tn(_d("YRZfCDIQWlsKRw4eFlxGHA")),
ClaimAchievement = tn(_d("cQNQAh4yUVoGVB0WHldcGw")),
RequestQuests = tn(_d("YApAHhYARmMaVBgHAA")),
SyncQuests = tn(_d("YRZfCCIGV0EbQg")),
ClaimQuest = tn(_d("cQNQAh4iR1ccRQ")),
RequestPeriodicQuests = tn(_d("YApAHhYARmIKQwIcF1tRPkQOAAdB")),
SyncPeriodicQuests = tn(_d("YRZfCCMWQFsAVQIQIkdXHEUY")),
ClaimPeriodicQuest = tn(_d("cQNQAh4jV0AGXg8aEGNHCkIf")),

OpenFuseDialog = tn(_d("fR9UBTUGQVcrWAofHFU")),
FuseCards = tn(_d("dBpCDjASQFYc")),
OpenDeconstructDialog = tn(_d("fR9UBTcWUV0BQh8BBlFGK1gKHxxV")),
DeconstructCards = tn(_d("dgpSBB0ARkAaUh8wEkBWHA")),
OpenPackShop = tn(_d("fR9UBSMSUVk8WQQD")),
EquipPack = tn(_d("dx5EAgMjU1EE")),

RequestSkillTree = tn(_d("YApAHhYARmEEWAcfJ0BXCg")),
BuySkillNode = tn(_d("cBpIOBgaXl4hXg8W")),
OpenAccessoryShop = tn(_d("fR9UBTIQUVccQgQBCmFaAEE")),
OpenAccessoryShop2 = tn(_d("fR9UBTIQUVccQgQBCmFaAEFZ")),
BuyAccessory = tn(_d("cBpIKhAQV0EcXhkK")),
BuyAccessory2 = tn(_d("cBpIKhAQV0EcXhkKQQ")),
EquipAccessory = tn(_d("dx5EAgMyUVEKQhgcAUs")),

RedeemCode = tn(_d("YApVDhYecV0LVA")),

OpenNPCDialog = tn(_d("fR9UBT0jcXYGUAccFA")),
TeleportToWorld = tn(_d("ZgpdDgMcQEY7XjwcAV5W")),
RaidBattleStarted = tn(_d("YA5YDzESRkYDVDgHEkBGClU")),
BattleEnd = tn(_d("cA5FHx8Wd1wL")),
StartBattle = tn(_d("YRtQGQcxU0YbXQ4")),
RequestInfiniteRoomProgress = tn(_d("YApAHhYARnsBVwIdGkZXPV4EHiNAXQhDDgAA")),
EndTowerRemote = tn(_d("dwFVPxwEV0A9VAYcB1c")),
SaveClientData = tn(_d("YQ5HDjAfW1cBRS8SB1M")),
OpenRaidShop = tn(_d("fR9UBSESW1Y8WQQD")),
RequestItemSync = tn(_d("YApAHhYARnsbVAYgClxR")),
FishingGetState = tn(_d("dAZCAxodVXUKRTgHEkZX")),
FishingSetAuto = tn(_d("dAZCAxodVWEKRSoGB10")),
FishingShop = tn(_d("dAZCAxodVWEHXhs")),
DigGetState = tn(_d("dgZWLBYHYUYORQ4")),
DigShop = tn(_d("dgZWOBscQg")),
DigAction = tn(_d("dgZWKhAHW10B")),
DigUpdate = tn(_d("dgZWPgMXU0YK")),
}

local ru = require(gx.ModuleScripts.NPCData)
local kuyk = require(gx.ModuleScripts.WorldDifficultyData)
local eb = require(gx.ModuleScripts.BossData)
local rl = require(gx.ModuleScripts.RaidData)
local gh = require(gx.ModuleScripts.InfiniteRoomData)
local ss = require(gx.ModuleScripts.CraftData)
local wimr = require(gx.ModuleScripts.AchievementData)
local npn = require(gx.ModuleScripts.RaidShopData)
local vz = require(gx.ModuleScripts.ItemData)
local igas = require(gx.ModuleScripts.CardData)
local wsh = require(gx.ModuleScripts.SkillTreeData)

local my = {
enabled = false,
role = { _d("RgBGDgE"), _d("XB9S") },

picked = { _d("ZgBGDgE"), _d("fD9ySxESRkYDVBg") },
hasSlot2 = nil,
toggle = nil,

optionsFor = {
{ _d("ZgBGDgE"), _d("eg5dBxwEV1cBER8cBFdA"), _d("fD9ySxESRkYDVBg") },
{ _d("fD9ySxESRkYDVBg"), _d("exxdCh0XEloOQw8QHEBX") },
},
roleIds = {
Tower = _d("RgBGDgE"),

[_d("eg5DDxAcQFdPRQQEFkA")] = _d("Wg5DDxAcQFc"),
[_d("fD9ySxESRkYDVBg")] = _d("XB9S"),
[_d("eg5dBxwEV1cBER8cBFdA")] = _d("Wg5dBxwEV1cB"),
[_d("exxdCh0XEloOQw8QHEBX")] = _d("Wg5DDxAcQFc"),
},
roleNames = {
tower = _d("ZgBGDgE"),
hardcore = _d("exxdCh0XEloOQw8QHEBX"),
npc = _d("fD9ySxESRkYDVBg"),
halloween = _d("eg5dBxwEV1cBER8cBFdA"),
},
}

function my.detectSlot2()
local ijc = ysuk:FindFirstChild(_d("YQpFHxodVUEoRAI"))
local dr = ijc and ijc:FindFirstChild(_d("YQNeHycWU19dYwQE"), true)

if dr then
return dr.Visible == true
end

return nil
end

function my.roleSlot(rowl)
if not my.enabled then
return 1
end

for pvj = 1, 2 do
if my.role[pvj] == rowl then
return pvj
end
end

return nil
end

function my.isTowerRole(ooub)
return ooub == _d("RgBGDgE") or ooub == _d("Wg5DDxAcQFc") or ooub == _d("Wg5dBxwEV1cB")
end

function my.towerSlot()
return my.roleSlot(_d("RgBGDgE"))
end

function my.hardcoreSlot()
local vtqg = my.roleSlot(_d("Wg5DDxAcQFc"))

if vtqg == 2 and my.hasSlot2 == false then
return 1
end

return vtqg
end

function my.halloweenSlot()

local fy = my.roleSlot(_d("Wg5dBxwEV1cB"))

if fy == 1 then
return 1
end

return nil
end

function my.roomSlot()
local ka = my.roleSlot(_d("XB9S"))

if not my.enabled then
return 1
end

if ka == nil then
return nil
end

if ka == 2 and my.hasSlot2 == false then
return 1
end

return ka
end

function my.splitNpc()
return my.enabled and my.role[1] == _d("XB9S") and my.role[2] == _d("XB9S")
end

function my.busy(mmyw)
local ypr = ysuk:FindFirstChild(mmyw == 2 and _d("ewFzCgcHXldd") or _d("ewFzCgcHXlc"))

return ypr ~= nil and ypr:IsA(_d("cABeByUSXkcK")) and ypr.Value == true
end

function my.roleName(fcx)
return my.roleNames[my.role[fcx]] or my.roleNames.npc
end

function my.roleLabel(mxfo)
return my.picked[mxfo] or my.roleName(mxfo)
end

local zg = nil

if gx:FindFirstChild(_d("fwBVHh8WYVEdWBsHAA")) and gx.ModuleScripts:FindFirstChild(_d("eg5dBxwEV1cBZQQEFkB2DkUK")) then
local dq, kamm = pcall(function()
return require(gx.ModuleScripts.HalloweenTowerData)
end)

if dq then
zg = kamm
end
end

local rmrf = nil

if gx:FindFirstChild(_d("fwBVHh8WYVEdWBsHAA")) and gx.ModuleScripts:FindFirstChild(_d("dAZCAxodVXYORQo")) then
local bxj, bggh = pcall(function()
return require(gx.ModuleScripts.FishingData)
end)

if bxj then
rmrf = bggh
end
end

local function bq(tix)
return tostring(tix):reverse():gsub(_d("GkpVThdWVhs"), _d("F14d")):reverse():gsub(_d("bEM"), _d(""))
end

local jjrz = {
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

getgenv().ACBXHalloweenUpgrades = jjrz.upgrade
getgenv().ACBXHalloweenTower = jjrz.run

jjrz.shopData = npn.ShopById.halloween
jjrz.shopItems = {}
jjrz.shopLabels = {}
jjrz.cardNames = {
hw_brook = _d("cB1eBBhTGn8aQgIQEl4SPFoOHxZGXQEY"),
hw_death_the_kid = _d("dgpQHxtTRloKESAaFxIaJ1AZHhxcWwwRLAYdEmUGVAcXFkAb"),
hw_barragan = _d("cA5DGRIUU1xPGTgYFl5XG14FUzhbXAgY"),
}
jjrz.cardShortNames = {
hw_brook = _d("cB1eBBg"),
hw_death_the_kid = _d("dgpQHxtTRloKESAaFw"),
hw_barragan = _d("cA5DGRIUU1w"),
}

for yk, kdhv in ipairs(jjrz.shopData.Items) do
local xss, ew = next(kdhv.price or {})
local pm = kdhv.id
local wq = kdhv.id

if kdhv.itemId then
local xwc = vz.ById[kdhv.itemId]
pm = xwc and (xwc.name or kdhv.itemId) or kdhv.itemId
wq = pm
elseif kdhv.cardId then
pm = jjrz.cardNames[kdhv.cardId] or (igas.ById[kdhv.cardId] and igas.ById[kdhv.cardId].name) or kdhv.cardId
wq = jjrz.cardShortNames[kdhv.cardId] or pm
end

local bj = xss == _d("Wg5dBxwEV1cBbggSHVZL") and _d("cQ5fDwo") or (xss == _d("WA5SACwcbV4OXx8WAVw") and _d("fg5fHxYBXEE") or tostring(xss))
local glxe = pm .. _d("Eo2x/1M") .. bq(ew) .. _d("Eg") .. bj

table.insert(jjrz.shopItems, {
id = kdhv.id,
label = glxe,
shortName = wq,
currency = xss,
price = ew,
stock = kdhv.stock,
cardId = kdhv.cardId,
})

table.insert(jjrz.shopLabels, glxe)
end

for upjd, uc in ipairs({
_d("YApAHhYARnoOXQccBFdXAWQbFAFTVgpC"),
_d("cBpIIxIfXl0YVA4dJkJVHVAPFg"),
_d("eg5dBxwEV1cBZBsUAVNWCmIfEgdX"),
_d("YApAHhYARnoOXQccBFdXAWUEBBZAYh1eDAEWQUE"),
_d("YRZfCDsSXl4ARg4WHWZdGFQZIwFdVR1UGAA"),
_d("fR9UBTsSXl4ARg4WHWZdGFQZ"),
}) do
jjrz.remote[uc] = tn(uc)
end

function jjrz.fire(be, ...)
local tmut = jjrz.remote[be]

if not tmut then
return
end

local rda = { ... }

pcall(function()
tmut:FireServer(table.unpack(rda))
end)
end

function jjrz.on(cbo, pmc)
local wqgx = jjrz.remote[cbo]

if wqgx then
wqgx.OnClientEvent:Connect(pmc)
end
end

if zg then
for ty, oryc in ipairs(zg.Upgrades) do
table.insert(jjrz.upgrades, {
id = oryc.id,
name = oryc.name,
maxLevel = oryc.maxLevel,
})

table.insert(jjrz.labels, oryc.name)
end
end

function jjrz.level(cg)
if not zg then
return 0
end

return zg.getUpgradeLevel(jjrz.upgrade.levels, cg)
end

function jjrz.cost(adx)
if not zg then
return nil
end

return zg.getUpgradeCost(adx, jjrz.level(adx))
end

function jjrz.bonus(frhv, efzr)
if not zg then
return _d("")
end

return zg.formatUpgradeBonus(frhv, efzr)
end

function jjrz.request()
jjrz.upgrade.lastRequest = os.time()
jjrz.fire(_d("YApAHhYARnoOXQccBFdXAWQbFAFTVgpC"))
end

function jjrz.text()
if not zg then
return _d("eg5dBxwEV1cBET8cBFdAT1UKBxISWxwRBRwHElsBER8bGkESDUQCHxcc")
end

local idpx = jjrz.upgrade
local unk = {}

if idpx.balance == nil then
table.insert(unk, _d("YhpcGxgaXEFVEUZTW1NBBFgFFFNGWgoRGBYBRFcdGA"))
else
table.insert(unk, _d("YhpcGxgaXEFVEQ") .. bq(idpx.balance))
end

for xe, rumv in ipairs(jjrz.upgrades) do
local vdh = jjrz.level(rumv.id)
local eqry = jjrz.cost(rumv.id)
local hr = idpx.selected[rumv.id] and _d("aRdsSw") or _d("aU9sSw")
local zmln = hr .. rumv.name .. _d("Ek99HVM") .. vdh .. _d("HQ") .. rumv.maxLevel

if eqry then
table.insert(unk, zmln .. _d("Ek9fDgsHEg") .. tostring(eqry) .. _d("Ek8") .. jjrz.bonus(rumv.id, vdh + 1))
else
table.insert(unk, zmln .. _d("Ek9cCgsWVg"))
end
end

if not next(idpx.selected) then
table.insert(unk, _d("YgZSAFMGQlUdUA8WABJbAREfGxYSVh1eGxccRVxPUAUXU3NHG15LBgNVQA5VDgBTUEcWQksHG1cSDFkOEgNXQRsRBB0WEksAREsQElwSDlcNHAFWHA"))
end

return table.concat(unk, _d("OA"))
end

function jjrz.buy()
local cz = jjrz.upgrade

if cz.waiting or cz.balance == nil or os.time() - cz.lastBuy < 1 then
return
end

local uy = nil
local uklw = nil

for uxl, zti in ipairs(jjrz.upgrades) do
if cz.selected[zti.id] and os.time() >= (cz.failedUntil[zti.id] or 0) then
local aeia = jjrz.cost(zti.id)

if aeia and cz.balance >= aeia and (not uklw or aeia < uklw) then
uy = zti.id
uklw = aeia
end
end
end

if not uy then
return
end

cz.waiting = true
cz.lastBuy = os.time()
cz.pendingId = uy
cz.pendingLevel = jjrz.level(uy)

cz.balance = cz.balance - uklw

jjrz.fire(_d("cBpIIxIfXl0YVA4dJkJVHVAPFg"), uy)
end

jjrz.on(_d("eg5dBxwEV1cBZBsUAVNWCmIfEgdX"), function(zp)
if type(zp) ~= _d("Rg5TBxY") then
return
end

local esk = jjrz.upgrade

esk.balance = tonumber(zp.balance) or 0
esk.levels = type(zp.levels) == _d("Rg5TBxY") and zp.levels or {}

if esk.pendingId then
if jjrz.level(esk.pendingId) <= esk.pendingLevel then
esk.failedUntil[esk.pendingId] = os.time() + 15
end

esk.pendingId = nil
end

if type(zp.message) == _d("QRtDAh0U") then
esk.lastMessage = zp.message
end

esk.waiting = false
end)

jjrz.on(_d("YRZfCDsSXl4ARg4WHWZdGFQZIwFdVR1UGAA"), function(qf, ec)
jjrz.run.highest = tonumber(qf) or 0
jjrz.run.savedRun = type(ec) == _d("Rg5TBxY") and ec or nil
end)

jjrz.on(_d("fR9UBTsSXl4ARg4WHWZdGFQZ"), function(omb, rfwa, axrb)
jjrz.run.highest = tonumber(omb) or jjrz.run.highest
jjrz.run.savedRun = type(axrb) == _d("Rg5TBxY") and axrb or nil
end)

ic.BattleEnd.OnClientEvent:Connect(function(lley)
if type(lley) == _d("Rg5TBxY") and lley.mode == _d("WwFXAh0aRlcwQwQcHg") and lley.tower == _d("Wg5dBxwEV1cB") then
jjrz.run.inBattle = false
jjrz.run.pending = true
jjrz.run.pendingUntil = os.time() + 3

task.delay(0.3, function()
jjrz.requestProgress()
end)
end
end)

function jjrz.requestProgress()
jjrz.run.lastRequest = os.time()
jjrz.fire(_d("YApAHhYARnoOXQccBFdXAWUEBBZAYh1eDAEWQUE"))
end

function jjrz.bestRoom()
local wbp = jjrz.run.highest

if not zg or wbp == nil then
return nil
end

for cm, ay in ipairs(zg.Milestones) do
if zg.isMilestoneUnlocked(ay, wbp)
and not zg.isMilestoneCleared(ay, wbp) then
return ay
end
end

return nil
end

function jjrz.startRun()
local kew = jjrz.bestRoom()

if not kew then
return false
end

local jtrg = jjrz.run.savedRun
local wkh = type(jtrg) == _d("Rg5TBxY") and jtrg.milestone == kew
local oll = wkh and (tonumber(jtrg.currentFloor) or kew) or kew

local eevg = my.halloweenSlot() or 1

local ig = getgenv().ACBXAuto

ig = type(ig) == _d("Rg5TBxY") and ig.bossTeams or nil

if jjrz.run.teamChosen and ig and ig.applyTeam then
ig.applyTeam(jjrz.run.team, eevg)
end

local ched = ysuk:FindFirstChild(eevg == 2 and _d("YApCDgcxU0YbXQ41H11dHQM") or _d("YApCDgcxU0YbXQ41H11dHQ"))

if ched and ched:IsA(_d("cAZfDxIRXlcqRw4dBw")) then
pcall(function()
ched:Fire(oll, _d("WwFXAh0aRlcwQwQcHg"))
end)
end

local ng = ysuk:FindFirstChild(eevg == 2 and _d("YRtQGQc6XFQGXwIHFmBdAFwpEgdGXgoD") or _d("YRtQGQc6XFQGXwIHFmBdAFwpEgdGXgo"))

if ng and ng:IsA(_d("cAZfDxIRXlcqRw4dBw")) then
pcall(function()
ng:Fire(oll, _d("Wg5dBxwEV1cB"), oll)
end)
end

jjrz.run.milestone = kew
jjrz.run.savedRun = nil
jjrz.run.inBattle = true
jjrz.run.inBattleUntil = os.time() + 120
jjrz.run.pending = true
jjrz.run.pendingUntil = os.time() + 10

if wkh then
ic.StartBattle:FireServer(_d("WwFXAh0aRlcwQwQcHg"), {
continue = true,
tower = _d("Wg5dBxwEV1cB"),
slot = eevg,
})
else
ic.StartBattle:FireServer(_d("WwFXAh0aRlcwQwQcHg"), {
tower = _d("Wg5dBxwEV1cB"),
milestone = kew,
slot = eevg,
})
end

return true
end

local kmas = {}
for rdg, gww in ipairs(ru.NPCs) do
kmas[gww.name] = gww.id
end

local dgrp = getgenv().ACBXCooldowns
if type(dgrp) ~= _d("Rg5TBxY") then
dgrp = {}
getgenv().ACBXCooldowns = dgrp
end

local up = getgenv().ACBXAuto
if type(up) == _d("Rg5TBxY") and type(up.cooldowns) == _d("Rg5TBxY") then
for tw, ovt in pairs(up.cooldowns) do
if dgrp[tw] == nil then
dgrp[tw] = ovt
end
end
end

local pxwb = {
enabled = false,
story = false,
storyDifficulty = _d("XABDBhIf"),
storyDropdown = nil,
selectedByWorld = {},
difficulties = { _d("XABDBhIf") },
walkToNpc = false,
cooldowns = dgrp,
activeDifficulty = {},
lastFetch = {},
unlocked = {},
currentBattle = nil,
battlePending = false,
battlePendingUntil = 0,
}

pxwb.bossTeams = {
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

path = _d("cyxzM1wHV1MCQkUZAF1c"),
}

function pxwb.bossTeams.trackCollection()
if pxwb.bossTeams.collectionHooked then
return
end

pxwb.bossTeams.collectionHooked = true

local ayd = qp:FindFirstChild(_d("YRZfCDAcXl4KUh8aHFw"))

if not ayd then
return
end

ayd.OnClientEvent:Connect(function(sy)
if type(sy) == _d("Rg5TBxY") and type(sy.teams) == _d("Rg5TBxY") then
pxwb.bossTeams.teams = sy.teams
pxwb.bossTeams.teamsAt = os.clock()
end
end)

task.spawn(function()

task.wait(3)

for yczh = 1, 8 do
if pxwb.bossTeams.teams then
return
end

local etdg = qp:FindFirstChild(_d("YRhYHxAbZlcOXA"))
local ztv = pxwb.bossTeams.slotTeam
local lf = nil

if etdg and type(ztv) == _d("VBpfCAcaXVw") then
local gewi, tl = pcall(ztv, 2)
lf = gewi and tl or nil

if not lf then
gewi, tl = pcall(ztv, 1)
lf = gewi and tl or nil
end
end

if lf then
pcall(function()
etdg:FireServer(lf, false, 2)
end)
end

task.wait(6)
end
end)
end

function pxwb.bossTeams.teamCards(thqn)
local eyu = pxwb.bossTeams.teams

if type(eyu) ~= _d("Rg5TBxY") then
return nil
end

local vpn = eyu[thqn]

if type(vpn) ~= _d("Rg5TBxY") then
return 0
end

local jmd = 0

for xw, nhg in pairs(vpn) do
if type(nhg) == _d("Rg5TBxY") then
jmd = jmd + 1
end
end

return jmd
end

function pxwb.bossTeams.raidState()
return getgenv().ACBXAutoRaid
end

function pxwb.bossTeams.save()
if type(writefile) ~= _d("VBpfCAcaXVw") then
return false
end

local xoop = {}

for sela, yl in pairs(pxwb.bossTeams.picked) do
xoop[sela] = yl
end

local spvt = {}

for zlmy, rv in pairs(pxwb.bossTeams.raidPicked) do
spvt[zlmy] = rv
end

local lobm = {}

for efa, bx in pairs(pxwb.bossTeams.towerPicked) do
lobm[efa] = bx
end

return pcall(function()
if type(makefolder) == _d("VBpfCAcaXVw") and type(isfile) == _d("VBpfCAcaXVw") and not isfile(pxwb.bossTeams.path) then
pcall(makefolder, _d("cyxzMw"))
end

local mxwa = pxwb.bossTeams.raidState()
local lky = mxwa and mxwa.worldBoss
local wwyj = nil

if lky and lky.teamChosen then
wwyj = lky.team
end

writefile(pxwb.bossTeams.path, game:GetService(_d("ehtFGyAWQEQGUg4")):JSONEncode({
areas = xoop,
raids = spvt,
towers = lobm,
swap = pxwb.bossTeams.swap,
globalBoss = wwyj,
updatedAt = os.time(),
}))
end)
end

function pxwb.bossTeams.load()
if type(readfile) ~= _d("VBpfCAcaXVw") or type(isfile) ~= _d("VBpfCAcaXVw") then
return false
end

local jtu, on = pcall(function()
if not isfile(pxwb.bossTeams.path) then
return nil
end

return readfile(pxwb.bossTeams.path)
end)

if not jtu or type(on) ~= _d("QRtDAh0U") or #on == 0 then
return false
end

local uue
local dhkt = pcall(function()
uue = game:GetService(_d("ehtFGyAWQEQGUg4")):JSONDecode(on)
end)

if not dhkt or type(uue) ~= _d("Rg5TBxY") then
return false
end

if type(uue.areas) == _d("Rg5TBxY") then
for bvvg, ftml in pairs(uue.areas) do
local ii = tonumber(ftml)

if ii and ii >= 1 and ii <= 4 then
pxwb.bossTeams.picked[bvvg] = ii
end
end
end

if type(uue.raids) == _d("Rg5TBxY") then
for pl, dsdf in pairs(uue.raids) do
local pj = tonumber(dsdf)

if pj and pj >= 1 and pj <= 4 then
pxwb.bossTeams.raidPicked[pl] = pj
end
end
end

if type(uue.towers) == _d("Rg5TBxY") then
for dop, jv in pairs(uue.towers) do
local kmsy = tonumber(jv)

if kmsy and kmsy >= 1 and kmsy <= 4 then
pxwb.bossTeams.towerPicked[dop] = kmsy
end
end
end

if type(uue.swap) == _d("Rg5TBxY") then
local hxwm = tonumber(uue.swap.team)
local mbg = tonumber(uue.swap.floor)

if hxwm and hxwm >= 1 and hxwm <= 4 then
pxwb.bossTeams.swap.team = hxwm
end

if mbg and mbg > 0 then
pxwb.bossTeams.swap.floor = mbg
end

local ne = tonumber(uue.swap.team2)
local ifph = tonumber(uue.swap.floor2)

if ne and ne >= 1 and ne <= 4 then
pxwb.bossTeams.swap.team2 = ne
end

if ifph and ifph > 0 then
pxwb.bossTeams.swap.floor2 = ifph
end

pxwb.bossTeams.swap.on = uue.swap.on == true
end

local xwo = tonumber(uue.globalBoss)
local sen = pxwb.bossTeams.raidState()
local kff = sen and sen.worldBoss

if xwo and xwo >= 1 and xwo <= 4 and kff then
kff.team = xwo

kff.teamChosen = true
end

return true
end

local ph = nil
local oj = nil

local function vt(deq, dku)
return deq .. _d("Tg") .. dku
end

local function fqyn(djzd, ml)
return pxwb.cooldowns[vt(djzd, ml)] or 0
end

local function oqt(zz, cwe, zl)
pxwb.cooldowns[vt(zz, cwe)] = zl
end

getgenv().ACBXAuto = pxwb

local auqr = {
enabled = false,
picks = { [1] = {}, [2] = {} },
cursor = { [1] = 1, [2] = 1 },
losses = { [1] = {}, [2] = {} },
inFlight = {},

lossLimit = 3,
difficulties = { _d("XABDBhIf") },
walkToBoss = false,
walkSpeed = 18,
pending = {},
pendingUntil = {},
cleared = {},
progress = {},
}

getgenv().ACBXAutoRaid = auqr

auqr.worldBoss = {
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

fishingMode = _d("RgBWDgcbV0A"),
fishingDropdown = nil,

digHold = false,

walkToBoss = false,
walkToggle = nil,

building = false,
}

pxwb.bossTeams.trackCollection()
pxwb.bossTeams.load()

function auqr.worldBoss.data()
local uwyz = auqr.worldBoss

if uwyz.module == nil then
local ur, bxo = pcall(function()
return require(gx.ModuleScripts.WorldBossData)
end)

uwyz.module = ur and bxo or false
end

return uwyz.module or nil
end

function auqr.worldBoss.clock(nlxp)
nlxp = math.max(0, math.floor(tonumber(nlxp) or 0))

local kk = math.floor(nlxp / 3600)
local uv = math.floor((nlxp % 3600) / 60)
local hs = nlxp % 60

if kk > 0 then
return string.format(_d("FwtZS1ZDAFYC"), kk, uv)
end

if uv > 0 then
return string.format(_d("FwtcS1ZDAFYc"), uv, hs)
end

return string.format(_d("FwtC"), hs)
end

function auqr.worldBoss.status()
local zmi = nil

pcall(function()
zmi = gx:FindFirstChild(_d("ZQBDBxcxXUEcYh8SB0dB"))
end)

return zmi
end

function auqr.worldBoss.isOpen()
local kzl = auqr.worldBoss.status()

if not kzl then
return nil
end

return kzl:GetAttribute(_d("cwxFAgUW")) == true
end

function auqr.worldBoss.window()
local co = auqr.worldBoss.status()

if not co then
return nil, nil
end

return tonumber(co:GetAttribute(_d("dwFVGDIH"))), tonumber(co:GetAttribute(_d("fApJHzIH")))
end

function auqr.worldBoss.cycle()
local xx = auqr.worldBoss
local ah = xx.data()

if not ah or not ah.getCycleState then
return nil
end

local mm, kpet = pcall(function()
return ah.getCycleState()
end)

return mm and kpet or nil
end

function auqr.worldBoss.shopList()
local ewph = auqr.worldBoss

if ewph.items then
return ewph.items
end

local kuv = {}
local xb = ewph.data()

if not xb or type(xb.ShopItems) ~= _d("Rg5TBxY") then
ewph.items = kuv
return kuv
end

for twdo, kn in ipairs(xb.ShopItems) do
local vmb = nil

pcall(function()
if kn.itemId then
local ilux = require(gx.ModuleScripts.ItemData)
local hze = ilux[kn.itemId] or (ilux.ById and ilux.ById[kn.itemId])
vmb = hze and hze.name or nil
elseif kn.cardId then
local rde = require(gx.ModuleScripts.CardData)
local aeqs = rde[kn.cardId] or (rde.ById and rde.ById[kn.cardId])
vmb = aeqs and aeqs.name or nil
end
end)

local fyh = auqr.worldBoss.state

if type(fyh) == _d("Rg5TBxY") and type(fyh.shop) == _d("Rg5TBxY") then
for zmul, hyzo in ipairs(fyh.shop) do
if hyzo.id == kn.id and hyzo.name then
vmb = hyzo.name
break
end
end
end

if not vmb then

vmb = tostring(kn.accessoryId or kn.id or _d("DQ")):gsub(_d("bQ"), _d("Eg")):gsub(_d("GkpQQlsoF0VIbEFa"), function(aaqn, nlgb)
return aaqn:upper() .. nlgb
end)
end

table.insert(kuv, {
id = kn.id,
name = vmb,
price = tonumber(kn.price) or 0,
kind = kn.itemId and _d("WxtUBg") or (kn.cardId and _d("UQ5DDw") or _d("UwxSDgAAXUAW")),
})
end

ewph.items = kuv

return kuv
end

function auqr.worldBoss.bodyText()
local lw = auqr.worldBoss
local qobf = lw.state

if type(qobf) ~= _d("Rg5TBxY") then
return _d("YApQDxodVRIbWQ5TEV1BHB9FXQ")
end

local jdbr = {}
local to = lw.cycle()
local qx = lw.isOpen()
local gd, cmtr = lw.window()

if qx == nil then
qx = qobf.open == true
end

if qx then
local iwgf = _d("fR9UBQ")

if not gd and to then
gd = to.endsAt
end

if gd and gd > os.time() then
iwgf = iwgf .. _d("Eq2GSw") .. lw.clock(gd - os.time()) .. _d("EgNUDQc")
end

table.insert(jdbr, iwgf)
else
local izhv = _d("dgBGBVMVXUBPXwQE")

if not cmtr and to then
cmtr = to.nextAt
end

if cmtr and cmtr > os.time() then
izhv = izhv .. _d("OC1QCBhTW1xP") .. lw.clock(cmtr - os.time())
end

table.insert(jdbr, izhv)
end

table.insert(jdbr, _d("fwpVCh8ACBI") .. tostring(qobf.medals or 0) .. _d("OCRYBx8ACBI") .. tostring(qobf.kills or 0))

if qobf.inFight then
table.insert(jdbr, _d("dAZWAwcaXFU"))
elseif qx then

table.insert(jdbr, qobf.killedThisSpawn and _d("YApQDwp5eVsDXQ4XU0ZaBkJLAANTRQERCh8BV1MLSA") or _d("YApQDwo"))
end

if lw.stopAtFull then
local fhuk, ljeq = lw.meter()

if fhuk and ljeq then
local function je(kev)
if kev >= 1000000000 then
return string.format(_d("F0EADTE"), kev / 1000000000)
elseif kev >= 1000000 then
return string.format(_d("Fwh8"), math.floor(kev / 100000) / 10)
elseif kev >= 1000 then
return string.format(_d("Fwh6"), math.floor(kev / 100) / 10)
end

return tostring(math.floor(kev))
end

table.insert(jdbr, _d("YQpDHRYBEl8KRQ4BSRI") .. je(fhuk) .. _d("EkAR") .. je(ljeq)
.. (lw.meterFull() and _d("OClEBx9THxIBXh9TFVtVB0UCHRQSRgdYGFMAQlMYXw") or _d("")))
end
end

return table.concat(jdbr, _d("OGU"))
end

function auqr.worldBoss.shopText()
local rei = auqr.worldBoss
local erj = rei.state

if type(erj) ~= _d("Rg5TBxY") or type(erj.shop) ~= _d("Rg5TBxY") then
return _d("YApQDxodVRIbWQ5TAFpdHx9FXQ")
end

local beu = { _d("fwpVCh8ACBI") .. tostring(erj.medals or 0) }

for bwx, duho in ipairs(erj.shop) do
local jwnz = tostring(duho.name or duho.id)
local slrd = tostring(duho.price or _d("DQ"))
local pi

if duho.kind == _d("WxtUBg") then
pi = jwnz .. _d("OA") .. slrd .. _d("Eq2GSw") .. tostring(duho.left or 0) .. _d("HQ") .. tostring(duho.stock or _d("DQ")) .. _d("EgNUDQc")
elseif duho.owned then
pi = jwnz .. _d("OCBGBRYX")
else
pi = jwnz .. _d("OA") .. slrd .. _d("Eq2GSxwdVxIAVw0")
end

table.insert(beu, pi)
end

return table.concat(beu, _d("OGU"))
end

function auqr.worldBoss.shopOptions()
local nz = auqr.worldBoss

if nz.options then
return nz.options
end

local hexa = {}

nz.labelToId = {}

for mo, jpg in ipairs(nz.shopList()) do
local stn = jpg.name .. _d("Eq2GSw") .. tostring(jpg.price)

table.insert(hexa, stn)
nz.labelToId[stn] = jpg.id
end

nz.options = hexa

return hexa
end

local function ltd(oky)
local ha = auqr.progress[oky]
local sll = gx:FindFirstChild(_d("YA5YDyAHU0YaQg"))
local ym = sll and sll:GetAttribute(_d("cRZSBxY6Vg"))

if type(ha) == _d("Rg5TBxY") then
if ha.cycleId then
ym = ha.cycleId
end

if ha.completed and ha.completedRaidId then
return tostring(ym) .. _d("CAteBRY")
end

local ick = ha.phaseIndex or ha.phase

if ick then
return tostring(ym) .. _d("CA") .. tostring(ick)
end
end

return tostring(ym)
end

function auqr.finished(fxkr)
local egfd = auqr.progress[fxkr]

return type(egfd) == _d("Rg5TBxY") and egfd.completed == true and egfd.completedRaidId == fxkr
end

function auqr.bossFor(bku, xa)
local tny = auqr.picks[xa or bku]

if not tny or #tny == 0 then
return nil
end

local upf = gx:FindFirstChild(_d("YA5YDyAHU0YaQg"))
local bak = auqr.losses[bku] or {}
local tpxd = auqr.cursor[bku] or 1

for xezq = 0, #tny - 1 do
local ljr = (tpxd - 1 + xezq) % #tny + 1
local oo = tny[ljr]
local hj = not upf or upf:GetAttribute(_d("YApQDwos") .. oo) == true

if hj and not auqr.finished(oo) and (bak[oo] or 0) < auqr.lossLimit then
auqr.cursor[bku] = ljr

return oo
end
end

return nil
end

ic.RaidBattleStarted.OnClientEvent:Connect(function(qin)

local avyo = type(qin) == _d("Rg5TBxY") and qin.raidId or nil

if type(avyo) == _d("QRtDAh0U") then
auqr.pending[avyo] = false
else
for mst in pairs(auqr.pending) do
auqr.pending[mst] = false
end
end
end)

ic.BattleEnd.OnClientEvent:Connect(function(ep)
for pars in pairs(auqr.pending) do
auqr.pending[pars] = false
end

if type(ep) ~= _d("Rg5TBxY") or not auqr.enabled then
return
end

local bn = type(ep.raidId) == _d("QRtDAh0U") and ep.raidId or nil
local yxpe = bn and auqr.inFlight[bn] or nil

if not bn then
for bw, acr in pairs(auqr.inFlight) do
bn = bw
yxpe = acr
break
end
end

if not bn then
return
end

auqr.inFlight[bn] = nil

if ep.result == _d("XgBCDg") then

local nr = auqr.losses[yxpe or 1]

auqr.cleared[bn] = nil
nr[bn] = (nr[bn] or 0) + 1

for sk in pairs(auqr.pendingUntil) do
auqr.pendingUntil[sk] = os.time() + 3
end
else

auqr.losses[yxpe or 1][bn] = 0
end
end)

ic.RaidProgress.OnClientEvent:Connect(function(drxw)
if type(drxw) == _d("Rg5TBxY") and type(drxw.raidId) == _d("QRtDAh0U") then
auqr.progress[drxw.raidId] = drxw
end
end)

ic.RequestRaidProgress:FireServer()

local cnwj = {
enabled = false,
progress = nil,
currentRoom = nil,
inBattle = false,
inBattleUntil = 0,
pending = false,
pendingUntil = 0,
}

getgenv().ACBXAutoRooms = cnwj

ic.SyncInfiniteRoomProgress.OnClientEvent:Connect(function(rabm)
if type(rabm) == _d("XBpcCRYB") then
cnwj.progress = rabm
cnwj.pending = false
end
end)

ic.BattleEnd.OnClientEvent:Connect(function(qfy)
if type(qfy) == _d("Rg5TBxY") and qfy.mode == _d("WwFXAh0aRlcwQwQcHg") then
cnwj.inBattle = false
cnwj.pending = true
cnwj.pendingUntil = os.time() + 3

task.delay(0.3, function()
ic.RequestInfiniteRoomProgress:FireServer()
end)
end
end)

ic.RequestInfiniteRoomProgress:FireServer()

local qe = {
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

getgenv().ACBXAutoTower = qe

local rfo = {
enabled = false,
floor = 0,
triggered = false,
}

getgenv().ACBXAutoPause = rfo

local lum = {
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
Typhoon = _d("RhZBAxwcXA"),
Blizzard = _d("UANYEQkSQFY"),
Lightning = _d("XgZWAwcdW1wI"),
Windstorm = _d("RQZfDwAHXUAC"),
Sharingan = _d("QQdQGRodVVMB"),
Singularity = _d("QQZfDAYfU0AGRRI"),
[_d("fwBfCgEQWhIrXgYSGlw")] = _d("XwBfCgEQWm0LXgYSGlw"),
Void = _d("RABYDw"),
[_d("fw5VDlMaXBInVAoFFlw")] = _d("Xw5VDiwaXG0HVAoFFlw"),
Manga = _d("Xw5fDBI"),
},
}

function lum.weatherWanted(sb)
local ztxr = lum.weatherNow

if type(ztxr) ~= _d("QRtDAh0U") then
return nil
end

for cr, ybc in pairs(sb or lum.weathers) do
if ybc and lum.weatherIds[cr] == ztxr then
return cr
end
end

return nil
end

getgenv().ACBXAutoGiveUp = lum

local of = {
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

if gx:FindFirstChild(_d("fwBVHh8WYVEdWBsHAA")) and gx.ModuleScripts:FindFirstChild(_d("eg5DDxAcQFc7XhwWAXZTG1A")) then
local wpsb, kp = pcall(function()
return require(gx.ModuleScripts.HardcoreTowerData)
end)

if wpsb then
of.data = kp
end
end

getgenv().ACBXHardcore = of

task.spawn(function()
local azf = gx:FindFirstChild(_d("YApcBAcWQQ"))

if not azf then
return
end

local xeh = azf:WaitForChild(_d("YRZfCDsSQFYMXhkWJ11FCkM7ARxVQApCGA"), 20)

if xeh and xeh:IsA(_d("YApcBAcWd0QKXx8")) then
of.remotes.sync = xeh

xeh.OnClientEvent:Connect(function(nmnc)
if type(nmnc) ~= _d("Rg5TBxY") then
return
end

of.progress = tonumber(nmnc.progress) or of.progress
of.best = tonumber(nmnc.best) or of.best

if type(nmnc.points) == _d("Rg5TBxY") then
of.points = nmnc.points
end
end)
end

local ilh = azf:WaitForChild(_d("YApAHhYARnoOQw8QHEBXO14cFgFiQABWGRYAQQ"), 20)

if ilh and ilh:IsA(_d("YApcBAcWd0QKXx8")) then
of.remotes.request = ilh

pcall(function()
ilh:FireServer()
end)
end

local rhi = azf:WaitForChild(_d("dQNeCRIfcEcJVz4DF1NGClU"), 20)

if rhi and rhi:IsA(_d("YApcBAcWd0QKXx8")) then
rhi.OnClientEvent:Connect(function(fmr, yb, xtn, kh)
of.globalLuck = tonumber(fmr) or 0
of.globalRoll = tonumber(yb) or 0
of.globalLuckTime = type(xtn) == _d("QRtDAh0U") and xtn or _d("")
of.globalRollTime = type(kh) == _d("QRtDAh0U") and kh or _d("")
end)
end
end)

function my.otherTowerOn(ian)
if my.enabled then
return false
end

if ian == _d("RgBGDgE") then
return false
end

if ian == _d("Wg5dBxwEV1cB") then
return of.active()
end

return jjrz.run.enabled
end

function of.active()
return of.island
end

function of.unspentPoints()
local ch = of.data
local ug = tonumber(of.progress) or 0
local xrnr = 0

if type(ch) == _d("Rg5TBxY") and type(ch.getEarnedPoints) == _d("VBpfCAcaXVw") then
local tuvs, nkg = pcall(ch.getEarnedPoints, ug)
xrnr = tuvs and tonumber(nkg) or 0
end

return math.max(0, xrnr - #(of.points or {})), xrnr
end

function of.buffText()
local ujl = of.data

if type(ujl) ~= _d("Rg5TBxY") then
return _d("eg5DDxAcQFc7XhwWAXZTG1BLGgASXwZCGBodVRIJQwQeU0ZaBkJLEQZbXgsf")
end

local vadu = tonumber(of.progress) or 0
local ynjk = tonumber(of.best) or 0
local dbb, ews = of.unspentPoints()
local owhd = {
_d("dANeBAFT") .. vadu .. _d("Ek8RKRYARhI") .. ynjk,
_d("YgBYBQcACBI") .. dbb .. _d("EhpfGAMWXEZPXg1T") .. ews .. _d("EgpQGR0WVg"),
}

local vubk = {}

for fbyf, eewo in ipairs(of.points or {}) do
local uvxf = ujl.StatById and ujl.StatById[eewo]
local bcb = uvxf and (uvxf.name or eewo) or tostring(eewo)
local yh = ujl.PointValue and ujl.PointValue[eewo]

table.insert(vubk, yh and (bcb .. _d("EkQ") .. tostring(yh)) or bcb)
end

if #vubk == 0 then
table.insert(owhd, _d("cBpXDQBJElwAXw5TEV1HCFkfUwpXRg"))
else
table.insert(owhd, _d("cBpXDQBJEg") .. table.concat(vubk, _d("Hk8")))
end

local fd = {}

if (tonumber(of.globalLuck) or 0) > 0 then
table.insert(fd, _d("fhpSAFNY") .. tostring(of.globalLuck) .. _d("Fw") .. (of.globalLuckTime ~= _d("") and (_d("Ekc") .. of.globalLuckTime .. _d("Gw")) or _d("")))
end

if (tonumber(of.globalRoll) or 0) > 0 then
table.insert(fd, _d("YABdB1MAQlcKVUtY") .. tostring(of.globalRoll) .. _d("Fw") .. (of.globalRollTime ~= _d("") and (_d("Ekc") .. of.globalRollTime .. _d("Gw")) or _d("")))
end

if #fd == 0 then
table.insert(owhd, _d("dQNeCRIfElAaVw0ASRJcAF8OUxJRRgZHDg"))
else
table.insert(owhd, _d("dQNeCRIfElAaVw0ASRI") .. table.concat(fd, _d("Hk8")))
end

return table.concat(owhd, _d("OA"))
end

function of.nextMilestone()
local meoc = of.data

if type(meoc) ~= _d("Rg5TBxY") or type(meoc.Milestones) ~= _d("Rg5TBxY") or #meoc.Milestones == 0 then
return nil
end

local ca = tonumber(adn:GetAttribute(_d("eg5DDxAcQFcpXQQcAQ"))) or 0

return math.min(ca + 1, meoc.Milestones[#meoc.Milestones])
end

function of.start(fqn)
local lsxu = of.nextMilestone()

if not lsxu then
return false
end

local fm = ysuk:FindFirstChild(fqn == 2 and _d("YApCDgcxU0YbXQ41H11dHQM") or _d("YApCDgcxU0YbXQ41H11dHQ"))

if fm and fm:IsA(_d("cAZfDxIRXlcqRw4dBw")) then
pcall(function()
fm:Fire(lsxu, _d("WwFXAh0aRlcwQwQcHg"))
end)
end

local akk = ysuk:FindFirstChild(fqn == 2 and _d("YRtQGQc6XFQGXwIHFmBdAFwpEgdGXgoD") or _d("YRtQGQc6XFQGXwIHFmBdAFwpEgdGXgo"))

if akk and akk:IsA(_d("cAZfDxIRXlcqRw4dBw")) then
pcall(function()
akk:Fire(lsxu, _d("Wg5DDxAcQFc"), lsxu)
end)
end

if pxwb.bossTeams.applyTower then
pxwb.bossTeams.applyTower(_d("Wg5DDxAcQFc"), fqn)
end

of.pending = true
of.pendingUntil = os.time() + 10

return pcall(function()
ic.StartBattle:FireServer(_d("WwFXAh0aRlcwQwQcHg"), {
tower = _d("Wg5DDxAcQFc"),
milestone = lsxu,
slot = fqn,
})
end)
end

function of.floorNow()
local mmw = my.hardcoreSlot()

if not mmw or not my.busy(mmw) then
return nil
end

local laj = ysuk:FindFirstChild(mmw == 2 and _d("cA5FHx8WdUcGAw") or _d("cA5FHx8WdUcG"))
local vyq = laj and laj:FindFirstChild(_d("YBpfLR8cXUAjUAkWHw"))
local vvz = vyq and vyq.Text or _d("")

return tonumber(vvz:match(_d("bCldBBwBF0FEGU4XWBs")))
end

local zmtc = {
enabled = true,
nextAt = os.clock() + 300,
jumps = 0,
}

getgenv().ACBXAntiKick = zmtc

local ige = getgenv().ACBXNoUpdate == true

local fdee = {
enabled = not ige,
buildId = "v261102-0643",
interval = 180,
retry = 45,
forceAfter = 900,
applying = false,
checking = false,
pendingVersion = nil,
pendingSince = nil,
cameFrom = nil,
}

getgenv().ACBXUpdater = fdee

local msip = {
enabled = false,
tpToBay = false,

stick = {
enabled = false,
at = 0,
hits = 0,
last = _d("XQlX"),

names = {
[_d("QRtYCBg")] = true,
[_d("XhpSAFMARlsMWg")] = true,
[_d("XhpSAAAHW1EE")] = true,
[_d("XhpSACwARlsMWg")] = true,
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
rod = _d("Hw"),
castTime = 0,
tutorialStep = 0,
phase = _d("WwtdDg"),
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
deepPhase = _d("WwtdDg"),
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

local vd = Vector3.new(-546.8, 13.9, -40250.1)

if type(getgenv().ACBXFishingCatches) == _d("Rg5TBxY") then
msip.catches = getgenv().ACBXFishingCatches
end

msip.totalCatches = 0

for huj, gczo in pairs(msip.catches) do
msip.totalCatches = msip.totalCatches + gczo
end

getgenv().ACBXFishingCatches = msip.catches
getgenv().ACBXFishing = msip

msip.catchName = function(hud)
local vvqs = vz.ById[hud]

if vvqs and vvqs.name then
return vvqs.name
end

local jss = igas.ById[hud]

if jss and jss.name then
return jss.name
end

return hud
end

local nnh

nnh = {
folder = _d("cyxzMw"),
path = _d("cyxzM1wQU0YMWQ4AXVhBAF8"),
at = 0,
save = function()
if type(writefile) ~= _d("VBpfCAcaXVw") then
return false
end

local mgn = pcall(function()
if type(makefolder) == _d("VBpfCAcaXVw") and type(isfile) == _d("VBpfCAcaXVw") and not isfile(nnh.path) then
pcall(makefolder, nnh.folder)
end

writefile(nnh.path, game:GetService(_d("ehtFGyAWQEQGUg4")):JSONEncode({
catches = msip.catches,
totalCatches = msip.totalCatches,
lastCatch = msip.lastCatch,
updatedAt = os.time(),
}))
end)

return mgn
end,
load = function()
if type(readfile) ~= _d("VBpfCAcaXVw") or type(isfile) ~= _d("VBpfCAcaXVw") then
return false
end

local zbjd, bc = pcall(function()
if not isfile(nnh.path) then
return nil
end

return readfile(nnh.path)
end)

if not zbjd or type(bc) ~= _d("QRtDAh0U") or #bc == 0 then
return false
end

local romq
local mi = pcall(function()
romq = game:GetService(_d("ehtFGyAWQEQGUg4")):JSONDecode(bc)
end)

if not mi or type(romq) ~= _d("Rg5TBxY") or type(romq.catches) ~= _d("Rg5TBxY") then
return false
end

for uq, mq in pairs(romq.catches) do
local ip = tonumber(mq) or 0

if ip > 0 then
msip.catches[tostring(uq)] = math.max(msip.catches[tostring(uq)] or 0, ip)
end
end

msip.totalCatches = 0

for rqes, dp in pairs(msip.catches) do
msip.totalCatches = msip.totalCatches + dp
end

return true
end,
}

nnh.load()
getgenv().ACBXFishingStore = nnh

local mtw = {}

local kl = 0

local function abpa()
local zko = {}

for gt, cl in ipairs(workspace:GetDescendants()) do
if cl:IsA(_d("cA5CDiMSQEY")) and cl.Name == _d("ZQ5FDgE") then
table.insert(zko, cl)
end
end

mtw = zko
kl = os.clock()
end

local function vu(rg)
if type(rg) ~= _d("Rg5TBxY") then
return false
end

msip.loaded = true
msip.dirty = false
msip.fishing = rg.fishing == true
msip.autoOn = rg.autoOn == true
msip.autoUnlocked = rg.autoUnlocked == true
msip.casts = tonumber(rg.casts) or msip.casts
msip.totalCasts = tonumber(rg.totalCasts) or msip.totalCasts
msip.luck = tonumber(rg.luck) or msip.luck
msip.rod = tostring(rg.equippedRod or msip.rod)
msip.castTime = tonumber(rg.castTime) or msip.castTime
msip.tutorialStep = tonumber(rg.tutorialStep) or msip.tutorialStep

if type(rg.rods) == _d("Rg5TBxY") then
msip.rodsOwned = rg.rods
end

if type(rg.baits) == _d("Rg5TBxY") then
msip.baitsOwned = rg.baits
end

if type(rg.boats) == _d("Rg5TBxY") then
msip.boatsOwned = rg.boats
end

if type(rg.mats) == _d("Rg5TBxY") then
msip.mats = rg.mats
end

if rg.bootOwned ~= nil then
msip.boot.owned = rg.bootOwned == true
end

if rg.bootEquipped ~= nil then
msip.boot.equipped = rg.bootEquipped == true
end

if rg.equippedBait ~= nil then
msip.equippedBait = tostring(rg.equippedBait)
end

if rg.activeBoat ~= nil then
msip.activeBoat = tostring(rg.activeBoat)
end

msip.boatTier = tonumber(rg.boatTier) or msip.boatTier
msip.islandLocked = rg.islandLocked == true
msip.rebirths = tonumber(rg.rebirths) or msip.rebirths

if type(rg.rebirthCards) == _d("Rg5TBxY") then
msip.rebirthCards = rg.rebirthCards
end

msip.lastSync = os.time()

return true
end

local function ey()
local qt, ath = pcall(function()
return ic.FishingGetState:InvokeServer()
end)

if not qt or type(ath) ~= _d("Rg5TBxY") then
msip.loaded = false
return false
end

return vu(ath)
end

local vujf = false

local function skn()
if vujf then
return false
end

local bjbr = adn.Character

if not bjbr then
return false
end

if bjbr:FindFirstChild(_d("dAZCAxodVWAAVQ")) then
return true
end

local tyw = adn:FindFirstChild(_d("cA5SAAMSUVk"))
local oetb = tyw and tyw:FindFirstChild(_d("dAZCAxodVWAAVQ"))
local ptpz = bjbr:FindFirstChildOfClass(_d("ehpcCh0cW1Y"))

if not (oetb and ptpz) then
return false
end

return pcall(function()
ptpz:EquipTool(oetb)
end)
end

local function pfh()
local mwbx = adn.Character
local mg = mwbx and mwbx:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not mg then
return nil
end

local ox = RaycastParams.new()
ox.FilterType = Enum.RaycastFilterType.Exclude
ox.FilterDescendantsInstances = { mwbx }

local st = 24
local xnju = {}
local vi = 0

for qc = 0, st - 1 do
local lo = math.rad(qc * (360 / st))
local wc = Vector3.new(math.sin(lo), 0, math.cos(lo))
local fhcb = mg.Position + wc * 20 + Vector3.new(0, 40, 0)
local fs = workspace:Raycast(fhcb, Vector3.new(0, -120, 0), ox)
local vg = fs and (mg.Position.Y - fs.Position.Y) or 120

xnju[qc] = vg > 12

if xnju[qc] then
vi = vi + 1
end
end

if vi == 0 then
return nil
end

local lefd, yu = nil, 0

for ke = 0, st - 1 do
if xnju[ke] and not xnju[(ke - 1) % st] then
local rx = 0

while rx < st and xnju[(ke + rx) % st] do
rx = rx + 1
end

if rx > yu then
lefd = ke
yu = rx
end
end
end

if not lefd then
return nil
end

local wa = lefd + (yu - 1) / 2
local dvdi = math.rad(wa * (360 / st))

return Vector3.new(math.sin(dvdi), 0, math.cos(dvdi))
end

local function bzc()
local yjk = adn.Character
local sr = yjk and yjk:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not sr then
return nil
end

if #mtw == 0 or os.clock() - kl > 20 then
abpa()
end

local ya, zrx = nil, math.huge

for qos, pql in ipairs(mtw) do
if pql.Parent then
local hlxa = (pql.Position - sr.Position).Magnitude

if hlxa < zrx then
zrx = hlxa
ya = pql
end
end
end

if not ya or zrx > 25 then
local qq = pfh()

if qq then
return qq
end
end

if not ya then
return nil
end

local mcjp = Vector3.new(ya.Position.X - sr.Position.X, 0, ya.Position.Z - sr.Position.Z)

if mcjp.Magnitude < 0.05 then
return Vector3.new(0, 0, -1)
end

return mcjp.Unit
end

local function ocbv()
local tigb = adn.Character
local ygdu = tigb and tigb:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not ygdu then
return nil
end

local gzhz = ygdu.CFrame.LookVector
local btka = Vector3.new(gzhz.X, 0, gzhz.Z)

if btka.Magnitude < 0.05 then
return nil
end

return btka.Unit
end

local function qjmv()
local irm = adn.Character
local vli = irm and irm:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not vli then
return false
end

local ce = vd
local ioqj = RaycastParams.new()
ioqj.FilterType = Enum.RaycastFilterType.Exclude
ioqj.FilterDescendantsInstances = { irm }

local vmbt = workspace:Raycast(vd + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), ioqj)

if vmbt and vmbt.Instance.Name ~= _d("ZQ5FDgE") then
ce = Vector3.new(vd.X, vmbt.Position.Y + 3, vd.Z)
end

vli.CFrame = CFrame.new(ce)
task.wait(0.5)
abpa()

return true
end

local function qtbu()
local lsaa = adn.Character
local xkq = lsaa and lsaa:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not xkq then
return false
end

local vjot = Vector3.new(vd.X - xkq.Position.X, 0, vd.Z - xkq.Position.Z)
local eusm = vjot.Magnitude

if eusm < 2 then
return false
end

local lser = vjot.Unit

if eusm > 12 then
local wzsx = math.min(14, eusm - 6)
local bswv = xkq.Position + lser * wzsx
local cft = RaycastParams.new()
cft.FilterType = Enum.RaycastFilterType.Exclude
cft.FilterDescendantsInstances = { lsaa }

local mxy = workspace:Raycast(bswv + Vector3.new(0, 25, 0), Vector3.new(0, -80, 0), cft)

if mxy and mxy.Instance.Name ~= _d("ZQ5FDgE") then
local rft = mxy.Position.Y + 3.2

if math.abs(rft - xkq.Position.Y) <= 10 then
local ei = Vector3.new(mxy.Position.X, rft, mxy.Position.Z)
xkq.CFrame = CFrame.lookAt(ei, ei + lser)

return true
end
end
end

xkq.CFrame = CFrame.lookAt(xkq.Position, xkq.Position + lser)

return true
end

local rtx = {}

rtx.surfaceWait = 8

rtx.walking = false
rtx.walkStartedAt = 0

rtx.islandHold = Vector3.new(-7384, 16.3, -40539)

rtx.custom = nil
rtx.customIsland = nil

rtx.islandAnchors = {
{ id = _d("Uw1QBRccXFcLbgIAH1NcCw"), x = -3800 },
{ id = _d("RhhYBSwRV1MMWQ4A"), x = -6180 },
{ id = _d("RQZfDx4aXl4wWBgfFg"), x = -7480 },
}

rtx.arrivals = {
abandoned_island = Vector3.new(-3825, 24, -40260),
twin_beaches = Vector3.new(-6180, 40, -40350),
windmill_isle = Vector3.new(-7480, 30, -40350),
lobby = Vector3.new(-499, 17, -40234),
}

function rtx.islandOf(uadk)
if not uadk then
return _d("XgBTCQo")
end

if uadk.X > -4500 then
return _d("XgBTCQo")
end

local tanb, ckh = _d("Uw1QBRccXFcLbgIAH1NcCw"), math.huge

for jzoz, he in ipairs(rtx.islandAnchors) do
local jx = math.abs(uadk.X - he.x)

if jx < ckh then
tanb = he.id
ckh = jx
end
end

return tanb
end

rtx.savedVersion = 2

do
local tux = getgenv().ACBXDeepSpot

if type(tux) == _d("Rg5TBxY") and tux.v == rtx.savedVersion
and tonumber(tux.X) and tonumber(tux.Y) and tonumber(tux.Z) then
rtx.custom = Vector3.new(tonumber(tux.X), tonumber(tux.Y), tonumber(tux.Z))
rtx.customIsland = tux.island
end
end

function rtx.spot()
return rtx.custom or rtx.islandHold
end

function rtx.dropStale()
if not rtx.custom then
return false
end

if rtx.zoneAt(rtx.custom) then
return false
end

rtx.custom = nil
rtx.customIsland = nil
getgenv().ACBXDeepSpot = nil

return true
end

function rtx.capture()
local emrb = adn.Character
local yhge = emrb and emrb:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not yhge then
return false, _d("fAARCBsSQFMMRQ4BU0ZdT0MOEhcSU09CGxwHElQdXgZd")
end

local xu = yhge.Position
local jwns = rtx.floorAt(Vector3.new(xu.X, xu.Y + 10, xu.Z))

if not jwns then
return false, _d("YRtQBRdTXVxPQgQfGlYSCEMEBh1WEglYGQAHEh9PRQMaABJBH14fUxtTQU9fBFMVXl0AQ0sHHBJRDkIfUxVAXQIf")
end

local hnio = rtx.zoneAt(xu)

if not hnio then
return false, _d("ZgdYGFMAQl0bEQIAU11HG0ICFxYSVxlUGQpTVFscWQIdFBJABl8MU14SQRtQBRdTXUQKQ0sHG1cSGFAfFgESVAZDGAdd")
end

rtx.custom = xu
rtx.customIsland = rtx.islandOf(xu)

getgenv().ACBXDeepSpot = {
X = xu.X,
Y = xu.Y,
Z = xu.Z,
island = rtx.customIsland,
v = rtx.savedVersion,
}

return true, _d("YQ5HDhdTRloGQksAA11GT1AYUwdaV09VDhYDH0UORQ4BU1pdA1VLWw") .. tostring(hnio.name) .. _d("G0E")
end

function rtx.zoneTable()
local aei = {}

if rmrf and type(rmrf.Zones) == _d("Rg5TBxY") then
for mgbu, ps in ipairs(rmrf.Zones) do
aei[#aei + 1] = {
id = tostring(ps.id),
name = tostring(ps.name or ps.id),
half = tonumber(ps.half) or 0,
luck = tonumber(ps.luck) or 0,
index = tonumber(ps.index) or 0,
boatTier = tonumber(ps.boatTier) or 0,
}
end
end

table.sort(aei, function(qpvh, jpe)
return qpvh.index < jpe.index
end)

return aei
end

function rtx.zoneAt(rpm)
local sw = rmrf and rmrf.ZoneCenter
local njwj = rtx.zoneTable()

if not (sw and rpm and #njwj > 0) then
return nil
end

local qn = math.max(math.abs(rpm.X - sw.X), math.abs(rpm.Z - sw.Z))

for ibv, vfw in ipairs(njwj) do
if qn < vfw.half then
return vfw
end
end

return nil
end

function rtx.current()
local ga = adn.Character
local swf = ga and ga:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

return swf and rtx.zoneAt(swf.Position) or nil
end

function rtx.sync()
local znn = rtx.current()
msip.zoneId = znn and znn.id or nil
end

function rtx.floorAt(fab)
local rm = adn.Character
local zr = RaycastParams.new()
zr.FilterType = Enum.RaycastFilterType.Exclude
zr.FilterDescendantsInstances = { rm }

local xov = workspace:Raycast(Vector3.new(fab.X, fab.Y + 20, fab.Z), Vector3.new(0, -80, 0), zr)

if xov and xov.Instance.Name ~= _d("ZQ5FDgE") then
return xov
end

return nil
end

function rtx.ensureSpotMap()
local rq = rtx.spot()
local pwuw = Vector3.new(rq.X, rq.Y + 20, rq.Z)

if rtx.floorAt(pwuw) then
return true
end

local jxk = workspace:FindFirstChild(_d("fw5BGA"))

if jxk and jxk:FindFirstChild(_d("cQBQGAcSXn4AUwkK")) then
if os.clock() - (rtx.hopAt or 0) > 1 then
rtx.hopAt = os.clock()
rtx.hop(rq)
msip.lastMessage = _d("fwBHAh0UEkYAER8bFhJWClQbXgRTRgpDSwADXUY")
end

return false
end

if os.clock() - (rtx.islandAskedAt or 0) > 1.2 then
rtx.islandAskedAt = os.clock()

local dpa = rtx.customIsland or rtx.islandOf(rq)

if dpa == _d("XgBTCQo") then
pcall(function()
ic.TeleportToWorld:FireServer(_d("XgBTCQo"))
end)
else
pcall(function()
ic.FishingIslandTeleport:FireServer(_d("RQ5IGxwaXEY"), dpa)
end)
end

msip.lastMessage = _d("Zg5aAh0UEkYHVEsUEl9XSEJLBxZeVx9eGQdTRl1PRQMWU1ZXCkFGBBJGVx0RBhID")
end

return false
end

function rtx.hop(qivl)
local vkmn = adn.Character
local vm = vkmn and vkmn:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))
local yxr = vkmn and vkmn:FindFirstChildOfClass(_d("ehpcCh0cW1Y"))

if not (vm and yxr) then
return false
end

if yxr.SeatPart then
pcall(function()
yxr.Sit = false
end)
end

vm.AssemblyLinearVelocity = Vector3.zero
vm.CFrame = CFrame.new(Vector3.new(qivl.X, qivl.Y + 8, qivl.Z))

return true
end

function rtx.faceWater()
local lidx = adn.Character
local yhri = lidx and lidx:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not yhri then
return false
end

local qhxr = bzc()

if not qhxr then
local dm = rmrf and rmrf.ZoneCenter

if dm then
local lc = Vector3.new(dm.X - yhri.Position.X, 0, dm.Z - yhri.Position.Z)

qhxr = lc.Magnitude > 1 and lc.Unit or nil
end
end

if not qhxr then
return false
end

yhri.CFrame = CFrame.lookAt(yhri.Position, yhri.Position + qhxr)

return true
end

function rtx.aimWater(iao)
local we = adn.Character
local ymuc = we and we:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not ymuc then
return false
end

if iao then
abpa()
end

local pn = ymuc.CFrame.LookVector
local ys = Vector3.new(pn.X, 0, pn.Z)
local zivb = bzc()

if not zivb then
return false
end

if ys.Magnitude > 0.05 and ys.Unit:Dot(zivb) > 0.985 then
return true
end

ymuc.CFrame = CFrame.lookAt(ymuc.Position, ymuc.Position + zivb)

return true
end

function rtx.hold(hiup)
local blh = adn.Character
local hdix = blh and blh:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))
local qtv = blh and blh:FindFirstChildOfClass(_d("ehpcCh0cW1Y"))

if not (hdix and qtv) then
return false
end

if qtv.SeatPart then
pcall(function()
qtv.Sit = false
end)
end

local fq = rtx.floorAt(hiup)

if not fq then
return false
end

hdix.AssemblyLinearVelocity = Vector3.zero
hdix.CFrame = CFrame.new(Vector3.new(hiup.X, fq.Position.Y + 3.2, hiup.Z))

pcall(rtx.aimWater, true)

msip.phase = _d("WwtdDg")
msip.nextCastAt = 0

return true
end

function rtx.dive()
local rlr = rtx.spot()

if not rtx.ensureSpotMap() then
return false
end

if not rtx.hold(rlr) then
return false
end

rtx.islandAskedAt = 0

local fx = rtx.zoneAt(rlr)

msip.lastMessage = fx
and (_d("egBdDxodVRIbWQ5TF1dXHxwcEgdXQE9CGxwHEho") .. tostring(fx.name) .. _d("Gw"))
or _d("egBdDxodVRIbWQ5TF1dXHxwcEgdXQE9CGxwH")

task.wait(0.25)
rtx.sync()
msip.deepDiveAt = os.clock() + 2

return true
end

function rtx.walk()
local uyo = adn.Character
local nq = uyo and uyo:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if rtx.walking and os.clock() - (rtx.walkStartedAt or 0) < 60 then
return false
end

if not nq then
return false
end

local upnz = rtx.spot()

if (nq.Position - Vector3.new(upnz.X, nq.Position.Y, upnz.Z)).Magnitude <= 8 then
msip.phase = _d("WwtdDg")
msip.nextCastAt = 0

return true
end

rtx.walking = true
rtx.walkStartedAt = os.clock()
msip.deepPhase = _d("RQ5dAA")
msip.deepStageAt = os.clock()
msip.lastMessage = _d("ZQ5dABodVRIbXksHG1cSC1QOAxZBRk9GCgcWQBIcQQQH")

task.spawn(function()
local tdw = uyo and uyo:FindFirstChildOfClass(_d("ehpcCh0cW1Y"))

local qao, dyhy = pcall(function()

local ul = workspace:FindFirstChild(_d("fw5BGA"))
local cuof = rtx.customIsland or rtx.islandOf(upnz)
local pu = (nq.Position - Vector3.new(upnz.X, nq.Position.Y, upnz.Z)).Magnitude

if pu > 400 then
if not (ul and ul:FindFirstChild(_d("cQBQGAcSXn4AUwkK"))) then
pcall(function()
ic.TeleportToWorld:FireServer(_d("XgBTCQo"))
end)

local afux = os.clock() + 20

while msip.deepWalk and os.clock() < afux do
local pufq = workspace:FindFirstChild(_d("fw5BGA"))

if pufq and pufq:FindFirstChild(_d("cQBQGAcSXn4AUwkK")) then
break
end

task.wait(0.5)
end
end

if msip.deepWalk then
local br = rtx.arrivals and rtx.arrivals[cuof]

if br then
rtx.hop(br)
else
local tr = Vector3.new(upnz.X - nq.Position.X, 0, upnz.Z - nq.Position.Z)
local nlb = tr.Magnitude > 1 and tr.Unit or Vector3.new(1, 0, 0)

rtx.hop(Vector3.new(upnz.X - nlb.X * 120, upnz.Y, upnz.Z - nlb.Z * 120))
end

task.wait(1.5)
end
end

if msip.deepWalk and tdw then

local ngso = (nq.Position - Vector3.new(upnz.X, nq.Position.Y, upnz.Z)).Magnitude
local fw = os.clock() + math.clamp(ngso / 8, 30, 600)
local poad = 0
local ohsw = nq.Position
local ymtb = os.clock()

while msip.deepWalk and os.clock() < fw do
local sz = Vector3.new(upnz.X - nq.Position.X, 0, upnz.Z - nq.Position.Z)

if sz.Magnitude <= 3 then
break
end

if os.clock() - poad >= 0.25 then
tdw:MoveTo(Vector3.new(upnz.X, nq.Position.Y, upnz.Z))
poad = os.clock()
end

if os.clock() - ymtb >= 1.2 then
if (nq.Position - ohsw).Magnitude < 2 then
tdw.Jump = true
end

ohsw = nq.Position
ymtb = os.clock()
end

task.wait(0.1)
end

tdw:MoveTo(nq.Position)
end
end)

rtx.walking = false

if not qao then
msip.deepPhase = _d("WwtdDg")
msip.deepStageAt = os.clock()
msip.lastMessage = _d("ZQ5dAFMHXRIrVA4DFkFGT2YKBxZAEglQAh8WVghP") .. tostring(dyhy)

return
end

if not msip.deepWalk then
return
end

local yo = Vector3.new(nq.Position.X - upnz.X, 0, nq.Position.Z - upnz.Z)

if yo.Magnitude <= 6 then

pcall(rtx.aimWater, true)
msip.phase = _d("WwtdDg")
msip.nextCastAt = 0
msip.deepPhase = _d("WgBdDw")
msip.deepStageAt = os.clock()
rtx.sync()
msip.lastMessage = _d("ZQ5dABYXEkYAER8bFhJBDkcOF1NWVwpBRgQSRlcdERgDHEY")
else

msip.deepPhase = _d("WwtdDg")
msip.deepStageAt = os.clock()
msip.lastMessage = _d("cQBEBxdTXF0bERwSH1kSG15LBxtXEgtUDgMWQUZPRgoHFkASHEEEB1MfEhtDEhodVRIOVgoaHQ")
end
end)

return false
end

function rtx.settle()
for gel = 1, 30 do
if not msip.deepZone or msip.deepWalk then
return false
end

if rtx.dive() then
return true
end

task.wait(1)
end

return false
end

function rtx.surface()
local mqdh = adn.Character
local bou = mqdh and mqdh:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not bou then
return false
end

local zd = RaycastParams.new()
zd.FilterType = Enum.RaycastFilterType.Exclude
zd.FilterDescendantsInstances = { mqdh }

local fg = workspace:Raycast(vd + Vector3.new(0, 40, 0), Vector3.new(0, -200, 0), zd)
local fh = vd

if fg and fg.Instance.Name ~= _d("ZQ5FDgE") then
fh = Vector3.new(vd.X, fg.Position.Y + 3, vd.Z)
end

bou.CFrame = CFrame.new(fh)
msip.phase = _d("WwtdDg")
msip.nextCastAt = 0

return true
end

function msip.gotoIsland()
local ina = adn.Character
local bdw = ina and ina:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))
local coc = workspace:FindFirstChild(_d("exxdCh0XdFscWQ4BHlNcIWEo"), true)

if not (bdw and coc) then
return false
end

local go = coc:GetPivot()
local miau = RaycastParams.new()
miau.FilterType = Enum.RaycastFilterType.Exclude
miau.FilterDescendantsInstances = { ina, coc }

local dpaq = nil
local pbta = -math.huge

for dy, cmi in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local fa = workspace:Raycast(go.Position + cmi + Vector3.new(0, 30, 0), Vector3.new(0, -120, 0), miau)

if fa and fa.Position.Y > pbta then
dpaq = fa
pbta = fa.Position.Y
end
end

if dpaq then
bdw.CFrame = CFrame.new(Vector3.new(dpaq.Position.X, pbta + 3.5, dpaq.Position.Z))
else
bdw.CFrame = CFrame.new(go.Position + Vector3.new(0, 4, 0))
end

msip.phase = _d("WwtdDg")
msip.nextCastAt = 0

return true
end

function rtx.cycle()
local fu = os.clock()
local bi = msip.deepPhase or _d("WwtdDg")
local qkk = tonumber(msip.deepStageAt) or 0

if fu < math.max(msip.shopTripUntil or 0, msip.tpHoldUntil or 0) then
return
end

if bi == _d("WwtdDg") then
msip.deepPhase = _d("WgBdDw")
msip.deepStageAt = fu

if msip.deepWalk then
rtx.walk()
else
rtx.dive()
end

return
end

if bi == _d("RQ5dAA") then
return
end

if bi == _d("WgBdDw") then
local xiot = rtx.current()

local nel = rtx.zoneAt(rtx.spot())

if xiot and not adn:GetAttribute(_d("YRhYBh4aXFU")) and fu - (msip.deepAimAt or 0) > 2 then
msip.deepAimAt = fu
pcall(rtx.aimWater)
end

if adn:GetAttribute(_d("YRhYBh4aXFU")) then
if msip.deepWalk then

msip.deepPhase = _d("WwtdDg")
msip.deepStageAt = fu
else
msip.deepPhase = _d("VgZB")
msip.deepStageAt = fu
msip.lastMessage = _d("YRhYBh4aXFVPUB9TB1pXT1UOFgMSQR9eH1NeEkEaQw0SEFdWT1cEAVNTWx0")
end
elseif not xiot or (nel and xiot.index < nel.index) then

msip.deepPhase = _d("WwtdDg")
msip.deepStageAt = fu
end

return
end

if bi == _d("VgZB") then
rtx.surface()
msip.deepPhase = _d("QRpDDRIQVw")
msip.deepStageAt = fu

return
end

if bi == _d("QRpDDRIQVw") and fu - qkk >= rtx.surfaceWait then
msip.deepPhase = _d("WwtdDg")
end
end

local function ojbl()
local xkj = adn.Character
local tzre = xkj and xkj:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not tzre then
return false
end

return (tzre.Position - vd).Magnitude <= 12
end

local function vkf()
if not skn() then
return false
end

local ki = pcall(function()
ic.FishingSetAuto:FireServer(true)
end)

msip.usingGameAuto = ki
return ki
end

local function gbu()
msip.usingGameAuto = false

pcall(function()
ic.FishingSetAuto:FireServer(false)
end)

pcall(function()
ic.FishingStop:FireServer()
end)
end

function msip.recover()
msip.phase = _d("WwtdDg")
msip.nextCastAt = 0
msip.deepPhase = _d("WwtdDg")
msip.deepStageAt = 0
msip.deepDiveAt = 0
msip.waterRefusals = 0
msip.usingGameAuto = false
msip.castMark = msip.totalCasts
msip.castMarkAt = os.clock()

pcall(gbu)
pcall(skn)

if msip.deepZone and not rtx.current() then

pcall(function()
ic.TeleportToWorld:FireServer(_d("XgBTCQo"))
end)
elseif msip.tpToBay and not ojbl() then
pcall(qjmv)
end

msip.lastMessage = _d("dAZCAxodVRIcRQofH1dWTxxLARZBVxsRHxsWEkUORQ4BU1NcCxEfHBxZEhtZDlMUU18KFhhTH11QDUhLARxF")
end

local function acsr()
if not skn() then
msip.lastMessage = _d("fAARDRoAWlsBVksBHFYSBl9LBxtXEg1QCBgDU1EE")
return false
end

local ocyh = ocbv()
local xq = bzc()
local dtxs = ocyh or xq

if not dtxs then
msip.lastMessage = _d("fAARHBIHV0BPVwQGHVYSAVQKARFL")
return false
end

if ocyh and xq and ocyh:Dot(xq) < 0.25 then
dtxs = xq
end

msip.phase = _d("UQ5CHxodVQ")
msip.lastMessage = nil
msip.watchdogAt = os.clock() + 25

local lvaf, xtqw = pcall(function()
ic.FishingThrow:FireServer(1, dtxs)
end)

if not lvaf then
msip.phase = _d("WwtdDg")
msip.lastMessage = tostring(xtqw)
msip.nextCastAt = os.clock() + 3
return false
end

return true
end

local so = ic.FishingUpdate.OnClientEvent:Connect(function(ejpl, oa)
msip.dirty = true

if ejpl == _d("YRtQHxY") then
if type(oa) == _d("Rg5TBxY") then
msip.autoOn = oa.autoOn == true
end

return
end

if ejpl == _d("cQ5CHw") then
msip.phase = _d("RQ5YHxodVXAGRQ4")
msip.waterRefusals = 0
return
end

if ejpl == _d("cAZFDg") then
local sqyc = type(oa) == _d("Rg5TBxY") and tonumber(oa.warning) or 1

msip.phase = _d("QApUBxodVQ")
msip.watchdogAt = os.clock() + 15

task.delay(math.max(0.3, sqyc + 0.8), function()
if msip.phase ~= _d("QApUBxodVQ") then
return
end

pcall(function()
ic.FishingReel:FireServer(true, 120)
end)

msip.phase = _d("QApCBB8FW1wI")
end)

return
end

if ejpl == _d("cQ5FCBs") then

local htsi = type(oa) == _d("Rg5TBxY") and tonumber(oa.totalCasts) or nil
local nw = tonumber(getgenv().ACBXFishingCatchMark) or 0

if htsi and htsi <= nw and nw - htsi < 25 then
return
end

if htsi then
getgenv().ACBXFishingCatchMark = htsi
end

local mci = type(oa) == _d("Rg5TBxY") and tostring(oa.itemId) or _d("RwFaBRwEXA")
local ruy = msip.catchName(mci)

msip.catches[mci] = (msip.catches[mci] or 0) + 1
msip.totalCatches = (msip.totalCatches or 0) + 1

local xpf = type(oa) == _d("Rg5TBxY") and oa.chest or nil

if type(xpf) == _d("Rg5TBxY") and xpf.itemId then
local vlu = tostring(xpf.itemId)

msip.catches[vlu] = (msip.catches[vlu] or 0) + 1
end

if os.clock() - (nnh.at or 0) >= 5 then
nnh.at = os.clock()
nnh.save()
end
msip.lastCatch = ruy
msip.lastMessage = nil
msip.phase = _d("WwtdDg")
msip.nextCastAt = os.clock() + 2.5

if type(oa) == _d("Rg5TBxY") then
msip.casts = tonumber(oa.casts) or msip.casts
msip.totalCasts = tonumber(oa.totalCasts) or msip.totalCasts
msip.autoUnlocked = oa.autoUnlocked == true or msip.autoUnlocked
end

return
end

if ejpl == _d("cxpFBDwVVA") then

msip.usingGameAuto = false
msip.phase = _d("WwtdDg")
msip.nextCastAt = os.clock() + 1
return
end

if ejpl == _d("dxxSCgMWVg") then
msip.phase = _d("WwtdDg")
msip.lastMessage = _d("ZgdUSxUaQVpPVgQHU1NFDkg")
msip.nextCastAt = os.clock() + 2.5
return
end

if ejpl == _d("YApbDhAHV1Y") then
msip.phase = _d("WwtdDg")

local ntd = type(oa) == _d("Rg5TBxY") and tostring(oa.message) or _d("cQ5CH1MBV1gKUh8WFw")
msip.lastMessage = ntd

if ntd:lower():find(_d("RQ5FDgE"), 1, true) then
msip.waterRefusals = (msip.waterRefusals or 0) + 1

if msip.waterRefusals >= 2 then
msip.waterRefusals = 0

if qtbu() then
msip.lastMessage = _d("YApXHgAWVhIbRgIQFhIfT0UeAR1XVk9TChAYEkYARgoBFxJGB1RLBBJGVx0")
msip.nextCastAt = os.clock() + 1.5
return
end
end

msip.nextCastAt = os.clock() + 8
return
end

msip.waterRefusals = 0
msip.nextCastAt = os.clock() + 3
return
end
end)

local function pst()
if not msip.loaded then
return _d("YApQDxodVRIJWBgbGlxVT0IfEgdXHEEf")
end

local fzo = msip.autoUnlocked == true
or (msip.totalCasts or 0) > 0
or (msip.tutorialStep or 0) > 0
local gduy = rmrf and rmrf.RodsById and rmrf.RodsById[msip.rod]
local laev = gduy and tostring(gduy.name) or tostring(msip.rod)
local rub = math.floor((tonumber(msip.luck) or 0) * 100 + 0.5)

local cs = {
_d("YABVUVM") .. laev,
_d("fhpSAElT") .. rub .. _d("Fw"),
}

local svxa = rtx.current()

if svxa then
table.insert(cs, _d("aABfDklT") .. svxa.name .. _d("Ekca") .. tostring(math.floor(svxa.luck * 100 + 0.5)) .. _d("F09dHhAYGw"))
end

table.insert(cs, _d(""))
table.insert(cs, _d("cQ5CHwBTRl1PQhsWHVYITw") .. bq(msip.casts or 0))
table.insert(cs, _d("ZgBFCh9TUVMcRRhJUw") .. bq(msip.totalCasts or 0))

table.insert(cs, _d(""))
table.insert(cs, _d("dAZCAxodVRIaXwccEFlXCwtL") .. (fzo and _d("SwpC") or _d("XAA")))
table.insert(cs, _d("cxpFBF4VW0EHER4DFEBTC1RRUw") .. (msip.autoUnlocked and _d("XRhfDhc") or _d("XABFSxwEXFcL")))

if msip.enabled then
local behe = msip.usingGameAuto and _d("VQ5cDlMSR0YA") or tostring(msip.phase)

if behe == _d("RQ5YHxodVXAGRQ4") then
behe = _d("RQ5YHxodVRIJXhlTEhJQBkUO")
elseif behe == _d("QApUBxodVQ") then
behe = _d("QApUBxodVRIGXw")
elseif behe == _d("QApCBB8FW1wI") then
behe = _d("Xg5fDxodVRIGRQ")
end

table.insert(cs, _d(""))
table.insert(cs, _d("cxpFBFM1W0EHC0s") .. behe)

local mkex = auqr.worldBoss

if mkex and type(mkex.hasWork) == _d("VBpfCAcaXVw") and mkex.enabled and mkex.hasWork() then
table.insert(cs, _d("egBdDxodVQhPVgccEVNeT1MEAAASWxwRHgNTGkAKQh4eFkESAF9LGgdBEgxeBB8XXUUBGA"))
end

if msip.lastCatch then
table.insert(cs, _d("fg5CH1MQU0YMWVFT") .. msip.lastCatch)
end
end

if msip.lastMessage then
table.insert(cs, _d(""))
table.insert(cs, _d("fABFDklT") .. msip.lastMessage)
end

return table.concat(cs, _d("OA"))
end

local function zeg()
local lrnv = 0

for tzcp, dfp in pairs(msip.catches) do
local jygi = vz.ById[tzcp]

if not (jygi and jygi.type == _d("UQdUGAc")) then
lrnv = lrnv + dfp
end
end

return lrnv
end

local function kvtd()
local rni = {}

for jkbv, zyj in pairs(msip.catches) do
local ctd = vz.ById[jkbv]
local tgj = ctd and ctd.type == _d("UQdUGAc") or false

table.insert(rni, {
name = msip.catchName(jkbv),
count = zyj,
chest = tgj,
rank = tgj and (tonumber(ctd.border) or 1) or 0,
})
end

if #rni == 0 then
return _d("fABFAxodVRIMUB4UG0YSFlQfXXk4ZhpDBVMcXBIuRB8cU3RbHFlLEh1WEhtZDlMHU14DSEsAB1NAG0JLGxZAV0ERIgdTQVMZVBhTGkZBCl0NX1NBXU9YH1MQU0AdWA4AU11ECkNLHRZKRk9CDgAAW10BHw")
end

table.sort(rni, function(brc, nfuw)
if brc.chest ~= nfuw.chest then
return brc.chest
end

if brc.chest and brc.rank ~= nfuw.rank then
return brc.rank > nfuw.rank
end

if brc.count ~= nfuw.count then
return brc.count > nfuw.count
end

return brc.name < nfuw.name
end)

local vyli = {}

for wmgm, tvey in ipairs(rni) do
table.insert(vyli, tvey.name .. _d("Eo2x/1M") .. bq(tvey.count))
end

local rok = {
table.concat(vyli, _d("OGU")),
_d(""),
_d("ZgBFCh9TUVMaVgMHSRI") .. bq(zeg()) .. _d("Eq2GSw") .. #rni .. _d("EgRYBRcA"),
}

if msip.lastCatch then
table.insert(rok, _d("fg5CH1MQU0YMWVFT") .. tostring(msip.lastCatch))
end

return table.concat(rok, _d("OA"))
end

local kr = {
rod = Vector3.new(-493, 18, -40254),
bait = Vector3.new(-493, 18, -40254),
}

local function ln(pjm)
if not rmrf then
return {}
end

local ihsn

if pjm == _d("QABV") then
ihsn = rmrf.RodsById
elseif pjm == _d("UA5YHw") then
ihsn = rmrf.BaitsById
else
ihsn = nil
end

local drqj = {}

for mx, li in pairs(ihsn or {}) do
if not li.crafted then
table.insert(drqj, {
id = tostring(mx),
name = tostring(li.name or mx),
cost = tonumber(li.cost) or 0,
luck = tonumber(li.luck) or 0,
index = tonumber(li.index) or 0,
island = li.shop == _d("WxxdCh0X"),
})
end
end

table.sort(drqj, function(wd, ohm)
if wd.index ~= ohm.index then
return wd.index < ohm.index
end

return wd.cost < ohm.cost
end)

return drqj
end

local function avai(kgjk)
if kgjk == _d("QABV") then
return msip.rodsOwned or {}
elseif kgjk == _d("UA5YHw") then
return msip.baitsOwned or {}
end

return {}
end

local function nhrk(ifio)
if ifio == _d("QABV") then
return msip.rod
elseif ifio == _d("UA5YHw") then
return msip.equippedBait
end

return nil
end

local function dtai(bv)
local gxnm = avai(bv)
local ma = nil

for wnva, efk in ipairs(ln(bv)) do
if gxnm[efk.id] == true then
ma = efk
end
end

return ma
end

local function wz(hq)
if hq.island and msip.islandLocked then
return false
end

return true
end

local function crta(qwsq)
local jort = avai(qwsq)
local drcr = msip.casts or 0
local uzu = nil

for pq, tuk in ipairs(ln(qwsq)) do
if jort[tuk.id] ~= true and tuk.cost <= drcr and wz(tuk) then
uzu = tuk
end
end

return uzu
end

local function dwq(pdpk)
local wlw = avai(pdpk)

for ik, nkd in ipairs(ln(pdpk)) do
if wlw[nkd.id] ~= true and wz(nkd) then
return nkd
end
end

return nil
end

local function jyns(wk, fb)
if not fb then
return _d("XABfDlMcRVwKVQ")
end

return fb.name .. _d("Ekca") .. tostring(math.floor(fb.luck * 100 + 0.5)) .. _d("F09dHhAYGw")
end

local function tv()
if not rmrf then
return _d("dAZCAxodVXYORQpTHV1GT1cEBh1WEkIRGBscQhILUB8SU0dcDkcKGh9TUANURQ")
end

local zv = {}
local mso = { rod = _d("YABV"), bait = _d("cA5YHw") }

for giu, kce in ipairs({ _d("QABV"), _d("UA5YHw") }) do
local frku = dtai(kce)
local rr = nil

for soch, xxi in ipairs(ln(kce)) do
if xxi.id == nhrk(kce) then
rr = xxi.name
end
end

if #zv > 0 then
table.insert(zv, _d(""))
end

table.insert(zv, mso[kce] .. _d("CE8") .. jyns(kce, frku))
table.insert(zv, _d("fQERBRwECBI") .. (rr or _d("XABfDg")))

local vq = crta(kce) or dwq(kce)

if vq then
local jy = vq.cost - (msip.casts or 0)

table.insert(zv, _d("fApJH0lT") .. vq.name .. _d("Eq2GSw") .. bq(vq.cost) .. _d("EgxQGAcA"))

if jy > 0 then
table.insert(zv, _d("fApUD1M") .. bq(jy) .. _d("EgJeGRY"))
end
else
table.insert(zv, _d("fApJH0lTV0QKQxIHG1tcCBEEBB1XVg"))
end
end

table.insert(zv, _d(""))
table.insert(zv, _d("cQ5CHwBTRl1PQhsWHVYITw") .. bq(msip.casts or 0))

if msip.shopMessage then
table.insert(zv, _d(""))
table.insert(zv, msip.shopMessage)
end

return table.concat(zv, _d("OA"))
end

local function byls(lu, mpiv)
local va = os.clock()

if va < (msip.shopCallAt or 0) then
return false, _d("QQNeHA")
end

msip.shopCallAt = va + 1.4

local bgxm, asyn, nng, uva = pcall(function()
return ic.FishingShop:InvokeServer(lu, mpiv)
end)

if not bgxm then
return false, _d("Vx1DBAFT") .. tostring(asyn)
end

vu(uva)

if asyn == true then
return true, nil
end

return false, tostring(nng or _d("QApXHgAWVg"))
end

function msip.rebirthCardsHeld()
local ehhj = rmrf and type(rmrf.RebirthCards) == _d("Rg5TBxY") and #rmrf.RebirthCards or 0

if ehhj == 0 then
return 0, 0
end

local cn = 0

for jf, kd in ipairs(rmrf.RebirthCards) do
if msip.rebirthCards[kd.cardId] then
cn = cn + 1
end
end

return cn, ehhj
end

function msip.rebirthReady()
local fj, gc = msip.rebirthCardsHeld()

return gc > 0 and fj >= gc and (tonumber(msip.rebirths) or 0) < 1
end

function msip.rebirthText()
local bufc, yhg = msip.rebirthCardsHeld()

if yhg == 0 then
return _d("dAZCAxodVRILUB8SU1xdGxEHHBJWVwsdSwAcEkAKUwIBB1oSBkJLBh1TRA5YBxIRXldB")
end

if (tonumber(msip.rebirths) or 0) >= 1 then
return _d("YApTAgEHWlcLH0snG1cSLlMKHRddXApVSzoAXlMBVUsaABJdH1QFXQ")
end

if bufc >= yhg then
return _d("cwNdSw") .. yhg .. _d("EgxQGRcAElQGQgMWFxwSPVQKFwoSRgARGRYRW0AbWUU")
end

local ogk = {}

for xidw, nry in ipairs(rmrf.RebirthCards) do
if not msip.rebirthCards[nry.cardId] then
table.insert(ogk, (string.gsub(nry.cardId, _d("bAlYGBss"), _d(""))))
end
end

return bufc .. _d("HQ") .. yhg .. _d("EgxQGRcAHBI8RQIfHxJcClQPUw") .. table.concat(ogk, _d("Hk8")) .. _d("HA")
end

local function kumo(tvp)
local xfg = adn.Character
local kyk = xfg and xfg:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not kyk then
return false
end

return (kyk.Position - (kr[tvp] or kr.rod)).Magnitude <= 26
end

local function yhkl(gce)
if kumo(gce) then
return true
end

local umj = adn.Character
local tuz = umj and umj:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not tuz then
return false
end

local bri = kr[gce] or kr.rod
msip.shopTripUntil = os.clock() + 12
msip.shopHoldUntil = os.clock() + 12

pcall(function()
tuz.CFrame = CFrame.new(bri)
end)

task.wait(1.2)

return kumo(gce)
end

local function ksbu(aiy, qvkr, jik)
if not jik then
return false
end

if (msip.casts or 0) < jik.cost then
return false
end

if not yhkl(aiy) then
msip.shopMessage = _d("cQBEBxdTXF0bERkWElFaT0UDFlNBWgBBSxUcQBI") .. jik.name
return false
end

local is, krj = byls(qvkr, jik.id)

if not is then
local dwj = tostring(krj)
local ytw = dwj:find(_d("Zg5dAFMHXRIbWQ5TNVtBB1QZHhJc"), 1, true) or dwj:find(_d("cABQH1M3V1MDVBk"), 1, true)

if ytw then

msip.shopMessage = _d("ZQ5dABodVRIaQUsHHBJGB1RLEBxHXBtUGVMVXUBP") .. jik.name
return false
end

if krj ~= _d("QQNeHA") then
msip.shopAt = os.clock() + 15
msip.shopMessage = _d("YQpDHRYBEkAKVx4AFlYS") .. jik.name .. _d("Ekc") .. dwj .. _d("Gw")
end

return false
end

msip.shopMessage = _d("cABEDBsHEg") .. jik.name

return true
end

local function gv(rgp)
local hrf = dtai(rgp)

if not hrf or nhrk(rgp) == hrf.id then
return false
end

local pcn

if rgp == _d("QABV") then
pcn = _d("dx5EAgMhXVY")
elseif rgp == _d("UA5YHw") then
pcn = _d("dx5EAgMxU1sb")
else
return false
end

local arb, iq = byls(pcn, hrf.id)

if not arb then
if iq ~= _d("QQNeHA") then
msip.shopMessage = _d("cQBEBxdTXF0bEQ4CBltCTw") .. hrf.name .. _d("Ekc") .. tostring(iq) .. _d("Gw")
end

return false
end

if rgp == _d("QABV") then
msip.rod = hrf.id
elseif rgp == _d("UA5YHw") then
msip.equippedBait = hrf.id
else
return false
end

msip.shopMessage = _d("dx5EAgMDV1ZP") .. hrf.name

return true
end

local function eyzm()
local xi = msip.shop

if os.time() - (msip.lastSync or 0) >= 5 then
ey()
end

if xi.equipRod then
gv(_d("QABV"))
end

if xi.equipBait then
gv(_d("UA5YHw"))
end

if xi.autoBuyRod then
ksbu(_d("QABV"), _d("cBpIORwX"), crta(_d("QABV")))
end

if xi.autoBuyBait then
ksbu(_d("UA5YHw"), _d("cBpIKRIaRg"), crta(_d("UA5YHw")))
end
end

local function ceq()
local qpwb = msip.shop

return qpwb.autoBuyRod or qpwb.autoBuyBait or qpwb.equipRod or qpwb.equipBait
end

msip.shopIsland = {
rods = function()
local nawc = rmrf and rmrf.RodsById or {}
local age = {}

for udda, cbke in pairs(nawc) do
if tostring(cbke.shop) == _d("WxxdCh0X") then
table.insert(age, {
id = tostring(udda),
name = tostring(cbke.name or udda),
cost = tonumber(cbke.cost) or 0,
luck = tonumber(cbke.luck) or 0,
index = tonumber(cbke.index) or 0,
crafted = cbke.crafted == true,
})
end
end

table.sort(age, function(jl, cd)
return jl.index < cd.index
end)

return age
end,

angler = function()
local lzn = workspace:FindFirstChild(_d("fD9yGA"), true)

if not lzn then
return nil
end

for tkip, brhi in ipairs(lzn:GetChildren()) do
if brhi:GetAttribute(_d("YQpSGRYHc1wIXQ4BPWJx")) then
return brhi
end
end

return nil
end,
held = function(xk)
return (msip.rodsOwned or {})[xk] == true
end,
recipeHeld = function(lkde)
for opn, rkg in ipairs(lkde or {}) do
local kbd = tonumber((msip.mats or {})[rkg.id]) or 0

if kbd < (tonumber(rkg.count) or 0) then
return false
end
end

return true
end,
recipeText = function(gek)
local bmi = {}

for fdf, erjm in ipairs(gek or {}) do
local uz = tonumber((msip.mats or {})[erjm.id]) or 0
local ju = (vz.ById[erjm.id] and vz.ById[erjm.id].name) or tostring(erjm.id)

table.insert(bmi, ju .. _d("Eg") .. bq(uz) .. _d("HQ") .. bq(tonumber(erjm.count) or 0))
end

return table.concat(bmi, _d("Eq2GSw"))
end,

stand = function(zo)
local ehb = adn.Character
local lq = ehb and ehb:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not (lq and zo) then
return false
end

local smdy = zo:GetPivot()
local ge = zo:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw")) or zo:FindFirstChildWhichIsA(_d("cA5CDiMSQEY"), true)
local dzkg = ge and (ge.CFrame * CFrame.new(0, 0, -5)).Position or nil

if not dzkg then
local rfw = RaycastParams.new()
rfw.FilterType = Enum.RaycastFilterType.Exclude
rfw.FilterDescendantsInstances = { ehb, zo }

local mcd = nil
local fe = math.huge

for ymv, fopz in ipairs({ Vector3.new(0, 0, 6), Vector3.new(6, 0, 0), Vector3.new(0, 0, -6), Vector3.new(-6, 0, 0), Vector3.new(0, 0, 0) }) do
local frhf = workspace:Raycast(smdy.Position + fopz + Vector3.new(0, 30, 0), Vector3.new(0, -140, 0), rfw)

if frhf and tostring(frhf.Instance.Name) ~= _d("ZQ5FDgE") and frhf.Position.Y <= smdy.Position.Y + 10 then
local jfmy = math.abs(frhf.Position.Y - smdy.Position.Y)

if jfmy < fe then
mcd = frhf
fe = jfmy
end
end
end

dzkg = mcd and Vector3.new(mcd.Position.X, mcd.Position.Y + 3.5, mcd.Position.Z) or (smdy.Position + Vector3.new(0, 4, 0))
end

msip.shopTripUntil = os.clock() + 12

msip.islandTripUntil = os.clock() + 12

pcall(function()
lq.CFrame = CFrame.new(dzkg)
end)

task.wait(1.2)

return true
end,
atIsland = function()
local ncl = workspace:FindFirstChild(_d("exxdCh0XdFscWQ4BHlNcIWEo"), true)
local hfo = adn.Character
local oml = hfo and hfo:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not (ncl and oml) then
return false
end

return (oml.Position - ncl:GetPivot().Position).Magnitude <= 45
end,
toIsland = function()
if msip.shopIsland.atIsland() then
return true
end

msip.shopTripUntil = os.clock() + 12

if not msip.gotoIsland() then
return false
end

task.wait(1.2)

return msip.shopIsland.atIsland()
end,

craftExcalibur = function()
local pif = msip.shopIsland.angler()

if not pif or msip.shopIsland.held(_d("QABVNAAWUUAKRQ")) then
return false
end

if not msip.shopIsland.recipeHeld(rmrf and rmrf.SecretRecipe) then
return false
end

msip.shopIsland.stand(pif)

local db, pc = byls(_d("cR1QDQchXVY"), _d("QABVNAAWUUAKRQ"))

if db then
msip.rod = _d("QABVNAAWUUAKRQ")
msip.islandMessage = _d("cR1QDQcWVhIbWQ5TNkpRDl0CEQZAEh1eD1MSRhIbWQ5TO1tWC1QFUzJcVQNUGQ")
elseif pc ~= _d("QQNeHA") then
msip.islandMessage = _d("egZVDxYdEnMBVgcWARJAClceABZWEhtZDlM2SlEOXQIRBkASRw") .. tostring(pc) .. _d("Gw")
end

return db
end,
buyRod = function()
if msip.islandLocked then
return false
end

local tvma = msip.rodsOwned or {}
local bxth = nil

for nego, wop in ipairs(msip.shopIsland.rods()) do
if not wop.crafted
and tvma[wop.id] ~= true
and wop.cost <= (msip.casts or 0)
and (bxth == nil or wop.index > bxth.index) then
bxth = wop
end
end

if not bxth then
return false
end

if not msip.shopIsland.toIsland() then
msip.islandMessage = _d("cQBEBxdTXF0bERkWElFaT0UDFlNbQQNQBRdTUV0aXx8WAQ")
return false
end

local ptlh, ivwc = byls(_d("cBpIORwX"), bxth.id)

if ptlh then
msip.islandMessage = _d("cABEDBsHEg") .. bxth.name
elseif ivwc ~= _d("QQNeHA") then
local uqw = tostring(ivwc)

if not (uqw:find(_d("Zg5dAFMHXQ"), 1, true) or uqw:find(_d("exxdCh0XV0A"), 1, true)) then
msip.islandAt = os.clock() + 15
msip.islandMessage = _d("YQpDHRYBEkAKVx4AFlYS") .. bxth.name .. _d("Ekc") .. uqw .. _d("Gw")
end
end

return ptlh
end,
craftBoot = function()
if msip.boot.owned or msip.islandLocked then
return false
end

if not msip.shopIsland.recipeHeld(rmrf and rmrf.BootRecipe) then
return false
end

if not msip.shopIsland.toIsland() then
msip.islandMessage = _d("cQBEBxdTXF0bERkWElFaT0UDFlNbQQNQBRdTUV0aXx8WAQ")
return false
end

local dlo, kz = byls(_d("cR1QDQcxXV0b"))

if dlo then
msip.boot.owned = true
msip.islandMessage = _d("cR1QDQcWVhIbWQ5TP1dVCl8PEgFLEi1eBAc")
elseif kz ~= _d("QQNeHA") then
msip.islandMessage = _d("exxdCh0XEnQGQgMWAV9TAREZFhVHQQpVSwcbVxINXgQHUxo") .. tostring(kz) .. _d("Gw")
end

return dlo
end,
best = function()
local xugg = msip.rodsOwned or {}
local qvyw = nil

for uqgl, bhr in ipairs(msip.shopIsland.rods()) do
if xugg[bhr.id] == true and (qvyw == nil or bhr.luck > qvyw.luck) then
qvyw = bhr
end
end

return qvyw
end,

equipRod = function()
local qnzi = msip.shopIsland.best()

if not qnzi or msip.rod == qnzi.id then
return false
end

local ijhy, dc = byls(_d("dx5EAgMhXVY"), qnzi.id)

if ijhy then
msip.rod = qnzi.id
msip.islandMessage = _d("dx5EAgMDV1ZP") .. qnzi.name
elseif dc ~= _d("QQNeHA") then
msip.islandMessage = _d("cQBEBxdTXF0bEQ4CBltCTw") .. qnzi.name .. _d("Ekc") .. tostring(dc) .. _d("Gw")
end

return ijhy
end,
equipBoot = function()
if not msip.boot.owned or msip.boot.equipped then
return false
end

local kbip, ior = byls(_d("dx5EAgMxXV0b"), true)

if kbip then
msip.boot.equipped = true
msip.islandMessage = _d("dx5EAgMDV1ZPRQMWU35XCFQFFxJAS09zBBwH")
elseif ior ~= _d("QQNeHA") then
msip.islandMessage = _d("cQBEBxdTXF0bEQ4CBltCT0UDFlNQXQBFS1s") .. tostring(ior) .. _d("Gw")
end

return kbip
end,
active = function()
local dkwl = msip.island

return dkwl.autoRod or dkwl.equipRod or dkwl.autoAcc or dkwl.equipAcc
end,
run = function()
local qrpc = msip.island

if os.time() - (msip.lastSync or 0) >= 8 then
ey()
end

local aikp = false

if qrpc.autoRod then
aikp = msip.shopIsland.craftExcalibur()
end

if qrpc.equipRod then
msip.shopIsland.equipRod()
end

if qrpc.autoRod and not aikp then
msip.shopIsland.buyRod()
end

if qrpc.autoAcc then
msip.shopIsland.craftBoot()
end

if qrpc.equipAcc then
msip.shopIsland.equipBoot()
end
end,
text = function()
if not rmrf then
return _d("dAZCAxodVXYORQpTHV1GT1cEBh1WEkIRHxsWElscXQodFxJBB14bUxpBEhpfCgUSW14OUwcWXQ")
end

local xvg = {}
local wzu = msip.rodsOwned or {}

table.insert(xvg, msip.islandLocked and _d("cw1QBRccXFcLESIAH1NcCxECAFNeXQxaDhdTHxIdVAkaAUZaT1cCAQBGHA") or _d("cw1QBRccXFcLESIAH1NcCxECAFNdQgpfRQ"))

for qi, xzs in ipairs(msip.shopIsland.rods()) do
local tffe

if wzu[xzs.id] == true then
tffe = msip.rod == xzs.id and _d("XRhfDhdT8IVPXgVTHV1F") or _d("XRhfDhc")
elseif xzs.crafted then
tffe = _d("egZVDxYdEnMBVgcWARJAClICAxY")
else
tffe = bq(xzs.cost) .. _d("EgxQGAcA")
end

table.insert(xvg, xzs.name .. _d("Eo2x/1M") .. tffe)
end

table.insert(xvg, _d(""))

if wzu.rod_secret then
table.insert(xvg, _d("dxdSCh8aUEcdC0scBFxXCw"))
else
local fc = msip.shopIsland.recipeHeld(rmrf.SecretRecipe)

table.insert(xvg, _d("dxdSCh8aUEcdC0s") .. (fc and _d("QApSAgMWEkAKUA8K") or _d("QApSAgMWEkEHXhkH")))
table.insert(xvg, msip.shopIsland.recipeText(rmrf.SecretRecipe))
end

table.insert(xvg, _d("egZVDxYdEnMBVgcWAQgS") .. (msip.shopIsland.angler() and _d("Rx8RBRwE") or _d("XABFSxsWQFc")))
table.insert(xvg, _d(""))

local xgp = msip.boot
local qm

if xgp.equipped then
qm = _d("fgpWDh0XU0AWESkcHEYIT1QaBhpCQgpV")
elseif xgp.owned then
qm = _d("fgpWDh0XU0AWESkcHEYIT14cHRZW")
elseif msip.shopIsland.recipeHeld(rmrf.BootRecipe) then
qm = _d("fgpWDh0XU0AWESkcHEYIT0MOEBpCV09DDhIXSw")
else
qm = _d("fgpWDh0XU0AWESkcHEYITw") .. msip.shopIsland.recipeText(rmrf.BootRecipe)
end

table.insert(xvg, qm)
table.insert(xvg, _d("cQ5CHwBTRl1PQhsWHVYITw") .. bq(msip.casts or 0))

if msip.islandMessage then
table.insert(xvg, _d(""))
table.insert(xvg, msip.islandMessage)
end

return table.concat(xvg, _d("OA"))
end,
}

task.spawn(function()
ey()
end)

local fsjn = {
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

getgenv().ACBXAutoBuyHalloween = fsjn

ic.SyncItems.OnClientEvent:Connect(function(rcpv)
if type(rcpv) == _d("Rg5TBxY") then
fsjn.balances = rcpv
fsjn.lastSync = os.time()
end
end)

ic.RequestItemSync:FireServer()

ic.RaidShopState.OnClientEvent:Connect(function(sfl)
if type(sfl) == _d("Rg5TBxY") and sfl.shopId == _d("Wg5dBxwEV1cB") then
fsjn.shopState = sfl
fsjn.stateAt = os.clock()
end
end)

ic.RaidNotify.OnClientEvent:Connect(function(noht)
local rqs = fsjn.pending

if not rqs or type(noht) ~= _d("QRtDAh0U") then
return
end

if noht:sub(1, 9) == _d("YjpjKDsyYXcr") then
fsjn.purchased[rqs.id] = (fsjn.purchased[rqs.id] or 0) + 1
fsjn.pending = nil
else
if fsjn.balances[rqs.currency] then
fsjn.balances[rqs.currency] = fsjn.balances[rqs.currency] + rqs.price
end

fsjn.failedUntil[rqs.id] = os.time() + 5
fsjn.pending = nil
end
end)

jjrz.trip = {
untilAt = 0,
lastTry = 0,
lastResult = nil,
spot = nil,
}

function jjrz.merchant()
local vxy = workspace:FindFirstChild(_d("fD9yGA"))
local vj = jjrz.shopData and jjrz.shopData.NpcName or _d("YhpcGxgaXBIiVBkQG1NcGw")

return vxy and vxy:FindFirstChild(vj) or nil
end

function jjrz.stand()
local zxws = jjrz.merchant()
local mjlp = zxws and (zxws:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw")) or zxws:FindFirstChildWhichIsA(_d("cA5CDiMSQEY")))
local pa = adn.Character
local rz = pa and pa:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not (mjlp and rz) then
return false
end

jjrz.trip.spot = mjlp.Position + Vector3.new(0, 3, 4)
rz.AssemblyLinearVelocity = Vector3.zero
rz.CFrame = CFrame.new(jjrz.trip.spot)

return true
end

function jjrz.fresh()
return fsjn.shopState ~= nil and os.clock() - fsjn.stateAt < 30
end

function jjrz.guiOpen()
local wu = ysuk:FindFirstChild(_d("eg5dBxwEV1cBYgMcA3VHBg"))
local mlw = wu and wu:FindFirstChild(_d("YQdeGzUBU18K"))

if mlw then
return mlw.Visible == true
end

for nuxg, lysz in ipairs(ysuk:GetChildren()) do
if lysz:IsA(_d("YQxDDhYddUcG")) and lysz.Name:lower():find(_d("Wg5dBxwEV1cB"), 1, true) and lysz.Enabled then
return true
end
end

return false
end

function jjrz.close()
local yq = ysuk:FindFirstChild(_d("eg5dBxwEV1cBYgMcA3VHBg"))
local usc = yq and yq:FindFirstChild(_d("YQdeGzUBU18K"))

if not (usc and usc.Visible) then
return false
end

local bgrk = usc:FindFirstChild(_d("cQNeGBYxR0YbXgU"))

if not bgrk then
for nrdq, azi in ipairs(usc:GetDescendants()) do
if azi:IsA(_d("dRpYKQYHRl0B")) and tostring(azi.Name):lower():find(_d("UQNeGBY"), 1, true) then
bgrk = azi
break
end
end
end

if bgrk and type(firesignal) == _d("VBpfCAcaXVw") then
pcall(function()
firesignal(bgrk.MouseButton1Click)
end)

task.wait(0.3)

if not usc.Visible then
return true
end
end

pcall(function()
usc.Visible = false
end)

return true
end

function jjrz.spend()
if fsjn.pending or os.time() - (fsjn.lastAttempt or 0) < 1 then
return nil
end

local obu = fsjn.shopState

for xz, uzz in ipairs(jjrz.shopItems) do
if fsjn.selected[uzz.id] and os.time() >= (fsjn.failedUntil[uzz.id] or 0) then
local xld = uzz.stock
local uu = fsjn.purchased[uzz.id] or 0

if obu and obu.stocks and obu.stocks[uzz.id] then
xld = obu.stocks[uzz.id]
end

if obu and obu.bought then
uu = math.max(uu, obu.bought[uzz.id] or 0)
end

local zc = xld and (xld - uu) or 1
local ydv = fsjn.balances[uzz.currency] or 0

if zc > 0 and ydv >= uzz.price then
fsjn.pending = {
id = uzz.id,
price = uzz.price,
currency = uzz.currency,
at = os.time(),
}
fsjn.lastAttempt = os.time()
fsjn.balances[uzz.currency] = ydv - uzz.price

pcall(function()
ic.BuyRaidItem:FireServer(uzz.id, 1)
end)

return uzz.id
end
end
end

return nil
end

function jjrz.open(vlz)
if not vlz and jjrz.fresh() then
return true
end

if not vlz and os.clock() < (jjrz.trip.lastTry or 0) + 8 then
return false
end

jjrz.trip.lastTry = os.clock()
jjrz.trip.untilAt = os.clock() + 12

msip.shopTripUntil = os.clock() + 12
msip.shopHoldUntil = os.clock() + 12
msip.phase = _d("WwtdDg")

local gdg = jjrz.merchant()
local okd = gdg and gdg:FindFirstChild(_d("Yh1eExoeW0YWYRkcHkJG"))

if not (gdg and okd) then
msip.deepPhase = _d("WwtdDg")
jjrz.trip.untilAt = os.clock() + 60
jjrz.trip.lastResult = _d("ZgdUSyMGX0IEWAVTPldADFkKHQcSWxwRBRwHElsBER8bGkESDUQCHxcc")

return false
end

local wkhs = os.clock() + 3
local gk = 0

while os.clock() < wkhs do

jjrz.stand()

if os.clock() >= gk then
gk = os.clock() + 0.8

if type(fireproximityprompt) == _d("VBpfCAcaXVw") then
pcall(function()
fireproximityprompt(okd)
end)
end

pcall(function()
ic.OpenRaidShop:FireServer(_d("Wg5dBxwEV1cB"))
end)
end

if jjrz.guiOpen() or jjrz.fresh() then
break
end

task.wait(0.1)
end

if not (jjrz.guiOpen() or jjrz.fresh()) then

msip.deepPhase = _d("WwtdDg")
jjrz.trip.untilAt = os.clock() + 60
jjrz.trip.lastResult = _d("ZgdUSxAcR1wbVBlTF1tWT18EB1NTXBxGDgFTHxIGRUscHV5LT14bFh1BEgZfSwcbVxIcVAoAHFxTAxEKARZTHA")

return false
end

jjrz.trip.lastResult = _d("cQBEBQcWQBIAQQ4dXQ")

for vzzd = 1, 3 do
jjrz.stand()

if not jjrz.spend() then
break
end

task.wait(1.2)
end

pcall(jjrz.close)

msip.deepPhase = _d("WwtdDg")

return true
end

local function dnye(eh)
eh = math.max(0, math.floor(eh))
local sj = math.floor(eh / 3600)
local pagw = math.floor((eh % 3600) / 60)
local brai = eh % 60

if sj > 0 then
return string.format(_d("FwtZS1ZDAFYC"), sj, pagw)
elseif pagw > 0 then
return string.format(_d("FwtcS1ZDAFYc"), pagw, brai)
end

return string.format(_d("FwtC"), brai)
end

local function ksd()
local ra = ysuk:FindFirstChild(_d("eg5dBxwEV1cBYgMcA3VHBg"))
local gnt = ra and ra:FindFirstChild(_d("YQdeGzUBU18K"))
local jxpx = gnt and gnt:FindFirstChild(_d("extUBj8aQUY"))
local hh = {}
local hoqs = nil

if jxpx then
for pwwv, jq in ipairs(jjrz.shopItems) do
local kctc = jxpx:FindFirstChild(jq.id)
local ddwy = kctc and kctc:FindFirstChild(_d("cABJ"))
local ui = ddwy and ddwy:FindFirstChild(_d("YRteCBg"))

if ui and ui:IsA(_d("ZgpJHz8SUFcD")) then
local los, rujh = ui.Text:match(_d("GkpVQFpWQRhAFBhZWxdWRBg"))

if los and rujh then
hh[jq.id] = {
remaining = tonumber(los),
total = tonumber(rujh),
}
end
end
end
end

if gnt then
for yqov, py in ipairs(gnt:GetDescendants()) do
if py:IsA(_d("ZgpJHz8SUFcD")) and py.Text:find(_d("QApCDgcAElsB"), 1, true) then
hoqs = py.Text:match(_d("QApCDgcAElsBFBhZWxwZRhU"))
break
end
end
end

return hh, hoqs
end

local function qsn(dd)
if type(dd) ~= _d("QRtDAh0U") then
return 0
end

local ocmn = tonumber(dd:match(_d("GkpVQFob"))) or 0
local uhma = tonumber(dd:match(_d("GkpVQFoe"))) or 0
local xoi = tonumber(dd:match(_d("GkpVQFoA"))) or 0
return ocmn * 3600 + uhma * 60 + xoi
end

local function gtd()
local kvw = fsjn.shopState
local pegk, gkb = ksd()
local pll = {}
local oehi = {}
local nsdn = {}

for lbvh, ocx in ipairs(jjrz.shopItems) do
local guau = ocx.stock
local askn = nil

if kvw and kvw.stocks and kvw.stocks[ocx.id] then
guau = kvw.stocks[ocx.id]
end

local bon = fsjn.purchased[ocx.id] or 0

if kvw and kvw.bought then
bon = math.max(bon, kvw.bought[ocx.id] or 0)
end

if guau then
askn = math.max(0, guau - bon)
end

if (not kvw or not kvw.bought) and pegk[ocx.id] then
askn = pegk[ocx.id].remaining
guau = pegk[ocx.id].total
end

local boqu = ocx.currency == _d("WA5SACwcbV4OXx8WAVw") and _d("fg5fHxYBXEE") or _d("cQ5fDwo")
local blj

if askn == nil then
blj = ocx.shortName
elseif askn <= 0 then
blj = ocx.shortName .. _d("Eq2GSwAcXlZPXh4H")
else
blj = ocx.shortName .. _d("Eq2GSw") .. tostring(askn) .. _d("HQ") .. tostring(guau or _d("DQ"))
end

if not oehi[boqu] then
oehi[boqu] = {}
table.insert(nsdn, boqu)
end

table.insert(oehi[boqu], blj)
end

local xvmz = {}

for jgod, achl in ipairs(nsdn) do
table.insert(xvmz, achl)

for mn, ajt in ipairs(oehi[achl]) do
table.insert(xvmz, ajt)
end
end

table.insert(pll, table.concat(xvmz, _d("OGU")))
table.insert(pll, _d(""))

if kvw and type(kvw.resetsIn) == _d("XBpcCRYB") then
local di = kvw.resetsIn - (os.clock() - fsjn.stateAt)
table.insert(pll, _d("YApCHxwQWUFPWAVT") .. dnye(di))
elseif gkb then
if fsjn.uiTimerText ~= gkb then
fsjn.uiTimerText = gkb
fsjn.uiTimerSeconds = qsn(gkb)
fsjn.uiTimerAt = os.clock()
end

local mol = fsjn.uiTimerSeconds - (os.clock() - fsjn.uiTimerAt)
table.insert(pll, _d("YApCHxwQWUFPWAVT") .. dnye(mol))
else
table.insert(pll, _d("YApCHxwQWUFPVQoaH0sSrYZLBRpBWxsRHxsWEkEHXhs"))
end

if not jjrz.fresh() then
table.insert(pll, jjrz.trip.lastResult or _d("ZgdUSxAcR1wbVBlTGkESDF0EABZWEkIRJAMWXBIcWQQDU0VTA1oYUwdaV09SAxIBU1EbVBlTBkISG15LGgcc"))
end

return table.concat(pll, _d("OA"))
end

ic.NPCBattleResult.OnClientEvent:Connect(function(vyei)
if type(vyei) ~= _d("Rg5TBxY") then
return
end

pxwb.battlePending = false

if vyei.result == _d("UQBeBxccRVw") and type(vyei.remaining) == _d("XBpcCRYB") and ph and oj then
oqt(ph, oj, os.time() + vyei.remaining)
return
end

if type(vyei.npcId) == _d("QRtDAh0U") then
local zsav = type(vyei.difficulty) == _d("QRtDAh0U") and vyei.difficulty or pxwb.activeDifficulty[vyei.npcId] or _d("XABDBhIf")
local hsgn = ru.ById[vyei.npcId]
local gi = tonumber(vyei.cooldown) or (hsgn and hsgn.cooldown) or 300
oqt(vyei.npcId, zsav, os.time() + gi)
end
end)

ic.SyncNPCCooldowns.OnClientEvent:Connect(function(jna)
if type(jna) ~= _d("Rg5TBxY") then
return
end

for knk, vpe in pairs(jna) do
if type(knk) == _d("QRtDAh0U") and type(vpe) == _d("XBpcCRYB") then
local tp = pxwb.activeDifficulty[knk] or _d("XABDBhIf")
oqt(knk, tp, vpe)
end
end
end)

local lr = {}
local gnn = {}

for hvug, wo in ipairs(kuyk.Worlds) do

local ovr = { _d("cwNd") }
local ouxu = {}
local dgip = {}
local fzpy = nil

for hwo, wbw in ipairs(wo.npcs or {}) do
local vxon = ru.ById[wbw]
if vxon then
table.insert(ovr, vxon.name)
table.insert(dgip, wbw)
ouxu[vxon.name] = wbw
if vxon.type == _d("UA5FHx8W") then
fzpy = wbw
end
end
end

local gflz = wo.id
if fzpy and eb.ById[fzpy] then
gflz = eb.ById[fzpy].worldId or gflz
end

for fts, rcsu in ipairs(wo.npcs or {}) do
gnn[rcsu] = gflz

pxwb.bossTeams.worldOf[rcsu] = wo.id
end

table.insert(lr, {
id = wo.id,
teleportWorldId = gflz,
name = wo.name,
options = ovr,
ids = dgip,
byName = ouxu,
npcs = wo.npcs,
})
end

local gguu = {}
local ivtv = {}
local pw = {}

for qhe, eyo in ipairs(kuyk.Difficulties) do
table.insert(gguu, eyo.name)
ivtv[eyo.name] = eyo.id
pw[eyo.id] = eyo.name
end

local uddd = {}
local zxlg = {}

for jgf, ouhj in ipairs(rl.Difficulties) do
table.insert(uddd, ouhj.name)
zxlg[ouhj.name] = ouhj.id
end

local bqtq = {}
local bvpf = {}
local xo = {}
local vyt = {
soul_king = _d("YA5YDyQcQF4L"),
beerus = _d("YA5YDyQcQF4LbikWFkBHHA"),
reid = _d("YA5YDyQcQF4LbjkWGlY"),
}

for xyc, lij in ipairs(rl.Raids) do
if lij.BossTitle and lij.id then
table.insert(bqtq, lij.BossTitle)
bvpf[lij.BossTitle] = lij.id
xo[lij.id] = lij.NpcId
end
end

local function mdii()
for uik, qcj in ipairs({ _d("cA5FHx8WdUcG"), _d("cA5FHx8WdUcGAw") }) do
local dgau = ysuk:FindFirstChild(qcj)
local xg = dgau and dgau:FindFirstChild(_d("cA5FHx8WYVEdVA4d"))
if xg and xg.Visible then
return xg
end
end
end

local function reck()
for aqfs, gxdo in ipairs({ _d("cA5FHx8WdUcG"), _d("cA5FHx8WdUcGAw") }) do
local zlyc = ysuk:FindFirstChild(gxdo)
local ap = zlyc and zlyc:FindFirstChild(_d("cA5FHx8WYVEdVA4d"))
if ap then
return ap
end
end
end

local function ekr()
if mdii() then
return true
end

for pz, mdq in ipairs({ _d("cA5FHx8WdUcG"), _d("cA5FHx8WdUcGAw") }) do
local oq = ysuk:FindFirstChild(mdq)
local xvsg = oq and oq:FindFirstChild(_d("egZVDjESRkYDVCkGB0ZdAQ"))
if xvsg and xvsg.Visible then
return true
end
end

for ayan, bg in ipairs({ _d("ewFzCgcHXlc"), _d("ewFzCgcHXldd") }) do
local iofa = ysuk:FindFirstChild(bg)
if iofa and iofa:IsA(_d("cABeByUSXkcK")) and iofa.Value then
return true
end
end

return false
end

function my.slotFree(ecs)

if ecs == nil then
return false
end

if not my.enabled then
return not ekr()
end

return not my.busy(ecs)
end

function my.npcSlot()
return my.roleSlot(_d("XB9S"))
end

local fo

local function rlfo(uf)
uf = math.max(0, math.floor(uf))
if uf <= 0 then
return _d("QApQDwo")
end

local dw = math.floor(uf / 60)
local vfsl = uf % 60

if dw > 0 then
return string.format(_d("FwtcS1ZDAFYc"), dw, vfsl)
end

return string.format(_d("FwtC"), vfsl)
end

local function qfg()
for yslp, alv in ipairs({ _d("cA5FHx8WdUcG"), _d("cA5FHx8WdUcGAw") }) do
local frlq = ysuk:FindFirstChild(alv)
if frlq then
local scim = frlq:FindFirstChild(_d("YBpfLR8cXUAjUAkWHw"))
local zmnp = frlq:FindFirstChild(_d("ZgBGDgE1Xl0AQycSEVde"))
if (scim and scim.Visible) or (zmnp and zmnp.Visible) then
return _d("ewERPxwEV0A")
end
end
end

if cnwj.currentRoom and (cnwj.inBattle or ekr()) then
local hnz = nil

for bvrx, rif in ipairs({ _d("cA5FHx8WdUcG"), _d("cA5FHx8WdUcGAw") }) do
local opp = ysuk:FindFirstChild(rif)
local jiy = opp and opp:FindFirstChild(_d("cA5FHx8WYVEdVA4d"))
local qyo = jiy and jiy:FindFirstChild(_d("dwFUBgoyUUYGRw4wEkBW"))
local nsu = qyo and qyo:FindFirstChild(_d("fA5cDj8SUFcD"))

if nsu and nsu.Text ~= _d("") then
hnz = nsu.Text
break
end
end

if hnz then
return _d("cA5FHx8aXFVP") .. hnz .. _d("EjRjBBweEg") .. cnwj.currentRoom .. _d("bw")
end

return _d("cA5FHx8aXFVPajkcHF8S") .. cnwj.currentRoom .. _d("bw")
end

local hlet = reck()
if ekr() and hlet then
local eur = hlet:FindFirstChild(_d("dwFUBgoyUUYGRw4wEkBW"))
local gb = eur and eur:FindFirstChild(_d("fA5cDj8SUFcD"))
local oid = gb and gb.Text

local bove = nil
if pxwb.currentBattle then
bove = pxwb.currentBattle.difficulty
elseif oid then
local jtd = kmas[oid]
if jtd then
bove = pxwb.activeDifficulty[jtd]
end
end

local aim = _d("")
if bove then
aim = _d("EjQ") .. (pw[bove] or bove) .. _d("bw")
end

local zeb = oid
if pxwb.currentBattle and pxwb.currentBattle.npcId then
local jva = ru.ById[pxwb.currentBattle.npcId]
if jva then
zeb = jva.name
end
end

if zeb and zeb ~= _d("") then
return _d("cA5FHx8aXFVP") .. zeb .. aim
end

return _d("cA5FHx8aXFU") .. aim
end

pxwb.currentBattle = nil

local sgor = auqr.enabled and (auqr.bossFor(1) or auqr.bossFor(2))

if sgor then
local ij = gx:FindFirstChild(_d("YA5YDyAHU0YaQg"))

if ij then
local ytab = sgor
local uqk = rl.ById[ytab]
local byn = uqk and uqk.BossTitle or ytab
local yp = ij:GetAttribute(_d("exx+GxYd")) == true or ij:GetAttribute(_d("dABDCBYX")) == true
local yoj = ij:GetAttribute(_d("YApQDwos") .. ytab) == true
local kutv = auqr.progress[ytab]
local wec = kutv and kutv.locked == true

if not yp then
local plhh = tonumber(ij:GetAttribute(_d("cQdQBRQWQXMb"))) or 0
return _d("ewtdDlNeEg") .. byn .. _d("Ej1QAhdJEg") .. rlfo(plhh - os.time())
end

if kutv and kutv.cooldowns then
local fmfw = tonumber(kutv.cooldowns.normal)

if fmfw and fmfw > 0 then
return _d("ewtdDlNeEg") .. byn .. _d("Ej1QAhdJEg") .. rlfo(fmfw)
end
end

if not yoj or wec then
return _d("ewtdDlNeEg") .. byn .. _d("Ej1QAhdJEl4AUgAWFw")
end

return _d("ewtdDlNeEg") .. byn .. _d("Ej1QAhdJEkAKUA8K")
end
end

if msip.enabled then
if msip.usingGameAuto then
return _d("dAZCAxodVRJCEQwSHlcSDkQfHFMa") .. bq(zeg()) .. _d("EgxQHhQbRhs")
end

if msip.phase == _d("UQ5CHxodVQ") then
return _d("dAZCAxodVRJCEQgSAEZbAVY")
end

if msip.phase == _d("RQ5YHxodVXAGRQ4") then
return _d("dAZCAxodVRJCERwSGkZbAVZLFRxAEg4RCRoHVw")
end

if msip.phase == _d("QApUBxodVQ") or msip.phase == _d("QApCBB8FW1wI") then
return _d("dAZCAxodVRJCERkWFl5bAVZLHB1XEgZf")
end

return _d("dAZCAxodVRJCEQIXH1cSRw") .. bq(zeg()) .. _d("EgxQHhQbRhs")
end

if not pxwb.enabled and not pxwb.story then
return _d("ewtdDg")
end

local xlu, kek, wnsr = fo()

if xlu then
local ofm = ru.ById[xlu]
local cjk = ofm and ofm.name or xlu
local vqb = (kek or 0) - os.time()
local peyh = pw[wnsr] or wnsr or _d("fABDBhIf")

return _d("ewtdDlNeEnwKSR9JUw") .. cjk .. _d("EjQ") .. peyh .. _d("b08Z") .. rlfo(vqb) .. _d("Gw")
end

return _d("ewtdDg")
end

local function ir(xnp)
local vujp = workspace:FindFirstChild(_d("fD9yGA"))
if not vujp then
return nil
end

for xsfn, ixd in ipairs(vujp:GetChildren()) do
if ixd:GetAttribute(_d("fD9yIhc")) == xnp then
return ixd
end
end

return nil
end

local function ixx(vo)
local wdr = adn.Character
local rc = wdr and wdr:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))
if not (rc and vo) then
return false
end

local eyw, zem = pcall(function()
return vo:GetPivot()
end)
if not eyw then
return false
end

local kyyu = zem.Position + zem.LookVector * 6 + Vector3.new(0, 3, 0)
local aan = Vector3.new(zem.Position.X, kyyu.Y, zem.Position.Z)

rc.CFrame = CFrame.lookAt(kyyu, aan)
return true
end

local function jka()
local ux = adn:FindFirstChild(_d("YgNQEhYBYVEdWBsHAA"))
local ewy = ux and ux:FindFirstChild(_d("YgNQEhYBf10LRAcW"))

if not ewy then
return nil
end

local kyfj, dal = pcall(require, ewy)
if not kyfj then
return nil
end

local hfck, oivn = pcall(function()
return dal:GetControls()
end)

if hfck then
return oivn
end
end

local function pdn(hmw, ahpq, fva, ozs, tjp)
ozs = ozs or 8

local function kgry()
return ahpq and ahpq()
end

local po = os.clock()

while os.clock() - po < 5 do
if kgry() then
return false
end

if adn.Character and adn.Character:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw")) then
break
end
task.wait(0.2)
end

local bgxo = adn.Character
local uyir = bgxo and bgxo:FindFirstChildOfClass(_d("ehpcCh0cW1Y"))
local szt = bgxo and bgxo:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not (uyir and szt) then
return false
end

if (szt.Position - hmw).Magnitude <= ozs then
return true
end

local blb = fva or uyir.WalkSpeed
local voe = jka()
local uro = uyir.JumpPower
local fzig = uyir.UseJumpPower

if tjp then
pcall(function()
uyir.UseJumpPower = true
uyir.JumpPower = math.max(uro, 60)
end)
end

if voe then
pcall(function()
voe:Disable()
end)
end

local av = uyir:FindFirstChildOfClass(_d("cwFYBhIHXUA"))
local jxdz = nil
local nmbe = bgxo:FindFirstChild(_d("cwFYBhIHVw"))
local hugn = nmbe and (nmbe:FindFirstChild(_d("ZQ5dADIdW18"), true) or nmbe:FindFirstChild(_d("YBpfKh0aXw"), true))

if av and hugn then
local dsk, ohfz = pcall(function()
return av:LoadAnimation(hugn)
end)

if dsk and ohfz then
jxdz = ohfz
jxdz.Looped = true
jxdz.Priority = Enum.AnimationPriority.Movement
pcall(function()
jxdz:Play()
end)
end
end

local function dypa(wllb)
szt.AssemblyLinearVelocity = Vector3.new(0, szt.AssemblyLinearVelocity.Y, 0)

if jxdz then
pcall(function()
jxdz:Stop(0.1)
end)
end

if voe then
pcall(function()
voe:Enable()
end)
end

if tjp then
pcall(function()
uyir.JumpPower = uro
uyir.UseJumpPower = fzig
end)
end

return wllb
end

local function heyd(bqni, lx)
local bgpr = os.clock()
local ikjg = os.clock()
local eckd = 0
local fci = szt.Position

while os.clock() - bgpr < lx do
if kgry() then
return false
end

local szdx = bqni - szt.Position
szdx = Vector3.new(szdx.X, 0, szdx.Z)

if szdx.Magnitude <= 3 then
return true
end

local msfk = szdx.Unit
szt.AssemblyLinearVelocity = Vector3.new(
msfk.X * blb,
szt.AssemblyLinearVelocity.Y,
msfk.Z * blb
)

if tjp and os.clock() - ikjg >= 0.5 then
local hzsh = (szt.Position - fci).Magnitude
local et = uyir:GetState()
local ccas = et ~= Enum.HumanoidStateType.Jumping and et ~= Enum.HumanoidStateType.Freefall

if hzsh < 1.5 and ccas and os.clock() - eckd >= 0.8 then
uyir.Jump = true
eckd = os.clock()
end

fci = szt.Position
ikjg = os.clock()
end

task.wait()
end

return false
end

local qja = qaup:CreatePath({
AgentRadius = 2.5,
AgentHeight = 5,
AgentCanJump = true,
WaypointSpacing = 8,
})

local cq = pcall(function()
qja:ComputeAsync(szt.Position, hmw)
end)

if cq and qja.Status == Enum.PathStatus.Success then
for okv, hy in ipairs(qja:GetWaypoints()) do
if kgry() then
return dypa(false)
end

if (szt.Position - hmw).Magnitude <= ozs then
break
end

if not heyd(hy.Position, 10) and kgry() then
return dypa(false)
end
end
end

if kgry() then
return dypa(false)
end

local yyd = heyd(hmw, 15)
return dypa(yyd)
end

local function hf(mri, xpk, bgq)
return pdn(mri, bgq, xpk)
end
getgenv().ACBXWalkCancel = false
getgenv().ACBXWalkToPositionWithSpeed = function(sl, ry)
return hf(sl, ry, function()
return getgenv().ACBXWalkCancel == true
end)
end

local function sc()
if pxwb.story then
return { pxwb.storyDifficulty }
end

return pxwb.difficulties
end

local function re()
local gph = {}

if pxwb.story then
for vdi, wzrh in ipairs(lr) do
for gvyv, hnit in ipairs(wzrh.ids) do
table.insert(gph, hnit)
end

if wzrh.id == _d("WxxUABIa") then
break
end
end

return gph
end

local vtd = {}

for dt, ndfc in ipairs(lr) do
local fn = pxwb.selectedByWorld[ndfc.name]

if fn then
for ewao, lpwi in ipairs(fn) do
if not vtd[lpwi] then
vtd[lpwi] = true
table.insert(gph, lpwi)
end
end
end
end

return gph
end

fo = function()
local efmc = nil
local uknn = nil
local cnk = nil

for dvf, vf in ipairs(re()) do
local dhca = pxwb.unlocked[vf]

for eer, ppj in ipairs(sc()) do
if not dhca or dhca[ppj] ~= false then
local sod = fqyn(vf, ppj)

if not cnk or sod < cnk then
efmc = vf
uknn = ppj
cnk = sod
end
end
end
end

return efmc, cnk, uknn
end

local function ndu(sq)
if type(sq) ~= _d("QRtDAh0U") then
return nil
end

local mct = tonumber(sq:match(_d("GkpVQFob")))
local hmix = tonumber(sq:match(_d("GkpVQFoe")))
local khc = tonumber(sq:match(_d("GkpVQFoA")))

if not mct and not hmix and not khc then
return nil
end

return (mct or 0) * 3600 + (hmix or 0) * 60 + (khc or 0)
end

local function napl()
local zhko = workspace:FindFirstChild(_d("fD9yGA"))
if not zhko then
return
end

for rdd, qdn in ipairs(zhko:GetChildren()) do
local nyjw = qdn:GetAttribute(_d("fD9yIhc"))
if type(nyjw) == _d("QRtDAh0U") then
local ny = qdn:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))
local xkb = ny and ny:FindFirstChild(_d("fD9yKBwcXlYARgUxGl5eDV4KARc"))
local tpeg = xkb and xkb:FindFirstChild(_d("ZgZcDgE/U1AKXQ"))

local syej = pxwb.activeDifficulty[nyjw] or _d("XABDBhIf")

if xkb and tpeg then
local kmbu = ndu(tpeg.Text)
if kmbu and kmbu > 0 then
local epvl = os.time() + kmbu
if epvl > fqyn(nyjw, syej) then
oqt(nyjw, syej, epvl)
end
end
else
oqt(nyjw, syej, 0)
end
end
end
end

local function uvjc(yf)
local na = {}

for bzts, agzx in ipairs(getconnections(ic.OpenNPCDialog.OnClientEvent)) do
if agzx.Enabled then
agzx:Disable()
table.insert(na, agzx)
end
end

local wil = false
local wxat
wxat = ic.OpenNPCDialog.OnClientEvent:Connect(function(ydrl, qu, jyh, qcpd)
if ydrl ~= yf or type(qcpd) ~= _d("Rg5TBxY") or type(qcpd.cooldowns) ~= _d("Rg5TBxY") then
return
end

for qrae, curs in pairs(qcpd.cooldowns) do
if type(qrae) == _d("QRtDAh0U") and type(curs) == _d("XBpcCRYB") then
oqt(yf, qrae, curs > 0 and (os.time() + curs) or 0)
end
end

if type(qcpd.unlocked) == _d("Rg5TBxY") then
pxwb.unlocked[yf] = qcpd.unlocked
end

wil = true
end)

ic.OpenNPCDialog:FireServer(yf)

local ve = os.clock()
while not wil and os.clock() - ve < 1.5 do
task.wait(0.05)
end

wxat:Disconnect()

for nzga, irex in ipairs(na) do
irex:Enable()
end

if wil then
pxwb.lastFetch[yf] = os.time()
end

return wil
end

napl()

local uot = false
local isy = {}

local function slje(su)
uot = su

local vswf = ysuk:FindFirstChild(_d("cQ5DDzwDV1w"))
if not vswf then
return
end

local odt = vswf:FindFirstChild(_d("cQ5DDzwDV1w"))

if su then
if odt then
isy = getconnections(odt.Event)
for dn, vjid in ipairs(isy) do
if vjid.Enabled then
vjid:Disable()
end
end
end

vswf.Enabled = false

local zgui = ysuk:FindFirstChild(_d("ZgBGDgEhV0EaXR80Bls"))
if zgui then
local dur = zgui:FindFirstChild(_d("YApCHh8HdEAOXA4"))
if dur then
dur.Visible = false
end

local mwi = zgui:FindFirstChild(_d("dQpfDgESRlsBVi0BEl9X"))
if mwi then
mwi.Visible = false
end
end
else
for uhj, hb in ipairs(isy) do
if not hb.Enabled then
hb:Enable()
end
end

isy = {}
vswf.Enabled = true
end
end

getgenv().ACBXSetAutoCloseGeneration = slje

local krpx

for hx = 1, 3 do
local vny, ovq = pcall(function()
return game:HttpGet(_d("WhtFGwBJHR0IWB8bBlAcDF4GXBFbVQhQCRwKAANdHiYSEF5bDR4ZFh9XUxxUGFwfU0YKQh9cF11FAV0EEhcdXw5SBxoRHEYXRQ"))
end)

if vny and type(ovq) == _d("QRtDAh0U") and #ovq > 20000 then
krpx = ovq
break
end

warn(_d("aS5yKSsuEn8OUicaERJUCkUIG1NTRhtUBgMHEg") .. hx .. _d("EglQAh8WVghP") .. tostring(ovq))
task.wait(2)
end

if not krpx then
warn(_d("aS5yKSsuEn8OUicaERJRAEQHF1NcXRsRCRZTXl0OVQ4XUx8SHEUEAwNbXAgRGBxTRloKEQUWC0YSCkkOEAZGV09CHxIBRkFPUgcWElwc"))
return
end

local bzm, ppz = krpx:gsub(
_d("cQBfHxYdRmIdXh0aF1dAVWEZFh9dUwtwGAodURdHUBgAFkZ+BkIfVlo"),
_d("Rg5CAF0AQlMYX0MVBlxRG1gEHVsbEixeBQcWXEY/QwQFGlZXHQs7ARZeXQ5VKgAKXFFHUBgAFkZ+BkIfWlNXXAsY"),
1
)

local tf = loadstring(bzm)()

getgenv().ACBXMacLibPreloadPatch = ppz > 0

if type(tf) ~= _d("Rg5TBxY") then
warn(_d("aS5yKSsuEn8OUicaERJWBlVLHRxGEh1UHwYBXBIOEQcaEUBTHUhLXlNBRgBBGxodVRIcXksHG1cSAVQTB1NXSgpSHgcWEkEbUBkHABJRA1QKHV0"))
return
end

do
local oulq = gethui and gethui() or game:GetService(_d("cQBDDjQGWw"))

for tt, nrg in ipairs(oulq:GetChildren()) do
local czus = nrg:IsA(_d("YQxDDhYddUcG")) and nrg:FindFirstChild(_d("cA5CDg"))

if czus and czus:FindFirstChild(_d("YQZVDhESQA")) and czus:FindFirstChild(_d("cQBfHxYdRg")) then
pcall(function()
nrg:Destroy()
end)
end
end
end

do
local uoqg = os.clock() + 20

while not xav and os.clock() < uoqg do
task.wait(0.05)
end
end

local ib = tf:Window({
Title = vnu,

Subtitle = _d("cS0RIwYREhoZ") .. tostring(game.PlaceVersion) .. _d("Gw"),
Size = UDim2.fromOffset(720, 500),
DragStyle = 1,
DisabledWindowControls = {},
ShowUserInfo = false,
Keybind = Enum.KeyCode.Comma,
AcrylicBlur = true,
})

getgenv().ACBXMacLib = tf

do
local cp = _d("cyxzSyEWUFsdRQM")

pcall(function()
tf.Folder = cp
end)

pcall(function()
if isfolder and makefolder and not isfolder(cp) then
makefolder(cp)
end

if isfolder and makefolder and not isfolder(cp .. _d("HRxUHwcaXFUc")) then
makefolder(cp .. _d("HRxUHwcaXFUc"))
end
end)

pcall(function()
if tf.SetFolder then
tf:SetFolder(cp)
end
end)
end

ib:GlobalSetting({
Name = _d("fABFAhUaUVMbWAQdAA"),
Default = true,
Callback = function(brla)
ib:SetNotificationsState(brla)
end,
})

ib:GlobalSetting({
Name = _d("YQdeHFMmQVcdESIdFV0"),
Default = false,
Callback = function(ese)
ib:SetUserInfoState(ese)
end,
})

ib:GlobalSetting({
Name = _d("cwFFAlM4W1EE"),
Default = true,
Callback = function(doyd)
zmtc.enabled = doyd
zmtc.nextAt = os.clock() + 300
end,
})

ib:GlobalSetting({
Name = _d("cxpFBFMjW1EEET4DU2FGBlIA"),
Default = false,
Callback = function(iur)
msip.stick.enabled = iur
msip.stick.at = 0
msip.stick.last = iur and _d("XgBeABodVRIJXhlTEhJBG1gIGA") or _d("XQlX")
end,
})

ib:GlobalSetting({
Name = _d("cxpFBFMmQlYORQ4"),
Default = true,
Callback = function(du)
fdee.enabled = du

if not du then
fdee.pendingVersion = nil
fdee.pendingSince = nil
end
end,
})

ib:SetAcrylicBlurState(true)
ib:SetNotificationsState(true)
ib:SetUserInfoState(false)

do
local usua = game:GetService(_d("cQBDDjQGWw"))

pcall(function()
if type(gethui) == _d("VBpfCAcaXVw") then
usua = gethui()
end
end)

local rvi = usua:FindFirstChild(_d("cS15HhExU1YIVA"))

if rvi then
rvi:Destroy()
end

local imat = Instance.new(_d("YQxDDhYddUcG"))
imat.Name = _d("cS15HhExU1YIVA")
imat.ResetOnSpawn = false
imat.IgnoreGuiInset = true
imat.DisplayOrder = 2147483647
imat.Parent = usua

local dogu = Instance.new(_d("ZgpJHzEGRkYAXw"))
dogu.Name = _d("cBpFHxwd")
dogu.Size = UDim2.fromOffset(56, 56)

dogu.AnchorPoint = Vector2.new(0, 0.5)
dogu.Position = UDim2.new(1, -64, 0.5, 58)
dogu.BackgroundColor3 = Color3.fromRGB(30, 92, 235)
dogu.BorderSizePixel = 0
dogu.AutoButtonColor = false
dogu.Text = _d("")
dogu.Parent = imat

local mt = Instance.new(_d("ZyZyBAEdV0A"))
mt.CornerRadius = UDim.new(0, 14)
mt.Parent = dogu

local tbl = Instance.new(_d("ZyZiHwEcWVc"))
tbl.Color = Color3.fromRGB(255, 255, 255)
tbl.Thickness = 3
tbl.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
tbl.Parent = dogu

local rmro = Instance.new(_d("ZgpJHz8SUFcD"))
rmro.Size = UDim2.fromScale(1, 1)
rmro.BackgroundTransparency = 1
rmro.Font = Enum.Font.GothamBlack
rmro.TextSize = 16
rmro.TextColor3 = Color3.fromRGB(255, 255, 255)
rmro.Text = _d("cS07IyYx")
rmro.TextStrokeTransparency = 0.5
rmro.Parent = dogu

local function kws()
local cnj = imat.AbsoluteSize
local dqb = imat.AbsolutePosition

return UDim2.fromOffset(
cnj.X - dqb.X - dogu.Size.X.Offset - 8,
(cnj.Y / 2) - dqb.Y
)
end

task.defer(function()
dogu.Position = kws()

local fnp = workspace.CurrentCamera

if fnp then
fnp:GetPropertyChangedSignal(_d("ZAZUHAMcQEY8WBEW")):Connect(function()
dogu.Position = kws()
end)
end
end)

getgenv().ACBXBadge = imat

local obe = false
local sd = false
local zups = nil
local hw = nil

dogu.InputBegan:Connect(function(wiy)
if wiy.UserInputType ~= Enum.UserInputType.MouseButton1 and wiy.UserInputType ~= Enum.UserInputType.Touch then
return
end

obe = true
sd = false
zups = wiy.Position
hw = dogu.Position
end)

dogu.InputEnded:Connect(function(ylrw)
if ylrw.UserInputType ~= Enum.UserInputType.MouseButton1 and ylrw.UserInputType ~= Enum.UserInputType.Touch then
return
end

obe = false
end)

dogu.MouseButton1Click:Connect(function()
if sd then
sd = false
return
end

ib:SetState(not ib:GetState())
end)

game:GetService(_d("ZxxUGTodQkcbYg4BBVtRCg")).InputChanged:Connect(function(pto)
if not obe then
return
end

if pto.UserInputType ~= Enum.UserInputType.MouseMovement and pto.UserInputType ~= Enum.UserInputType.Touch then
return
end

local zn = pto.Position - zups

if math.abs(zn.X) > 6 or math.abs(zn.Y) > 6 then
sd = true
end

dogu.Position = UDim2.new(
hw.X.Scale,
hw.X.Offset + zn.X,
hw.Y.Scale,
hw.Y.Offset + zn.Y
)
end)
end

local haej = true

local hi = (getgenv().ACBXRunId or 0) + 1
getgenv().ACBXRunId = hi

local function enj()
return haej and getgenv().ACBXRunId == hi
end

local function qkm()
local ufd = math.max(0, math.floor(tonumber(workspace.DistributedGameTime) or 0))
local rk = math.floor(ufd / 3600)
local rvz = math.floor((ufd % 3600) / 60)

if rk > 0 then
return rk .. _d("Wk8") .. string.format(_d("F18DDx4"), rvz)
end

return rvz .. _d("Xw")
end

do
local kyn = _d("cS0RIwYREhoZ") .. tostring(game.PlaceVersion) .. _d("Gw")

task.spawn(function()
local iql = nil

while enj() do
local dggm = kyn .. _d("Eq2GSwYDEg") .. qkm()

if dggm ~= iql then
iql = dggm

pcall(function()
ib:UpdateSubtitle(dggm)
end)
end

task.wait(5)
end
end)
end

ib.onUnloaded(function()
haej = false
nnh.save()

local wwk = getgenv().ACBXBadge

if wwk then
pcall(function()
wwk:Destroy()
end)
getgenv().ACBXBadge = nil
end

if msip.enabled then
gbu()
end

if so then
pcall(function()
so:Disconnect()
end)
end
end)

task.spawn(function()
while enj() do
napl()
task.wait(2)
end
end)

task.spawn(function()
while enj() do

local rhh = msip.enabled
and (msip.deepZone or msip.tpToBay)
and auqr.worldBoss ~= nil
and type(auqr.worldBoss.holdsFishing) == _d("VBpfCAcaXVw")
and auqr.worldBoss.holdsFishing() == true
local sh = rhh or (pxwb.workPending and pxwb.workPending())

if msip.enabled and msip.deepZone and not sh then
rtx.cycle()
end

if msip.enabled then
if msip.phase ~= _d("WwtdDg") and os.clock() >= msip.watchdogAt then
msip.phase = _d("WwtdDg")
msip.nextCastAt = os.clock() + 1
end

if msip.autoUnlocked and not msip.usingGameAuto and not msip.perfectCasts then
vkf()
end

if msip.phase ~= _d("WwtdDg") and (msip.watchdogAt or 0) > 0
and os.clock() > msip.watchdogAt then
msip.phase = _d("WwtdDg")
msip.nextCastAt = 0
msip.lastMessage = _d("cQ5CH1MHW18KVUscBkYSQhEfAQpbXAgRChQSW1w")
end

if msip.phase == _d("WwtdDg") and os.clock() >= msip.nextCastAt
and os.clock() >= math.max(msip.shopTripUntil or 0, msip.tpHoldUntil or 0)
and not msip.usingGameAuto
and not rtx.walking
and (not msip.deepZone or rtx.current() ~= nil)
and not sh then
if not msip.deepZone and msip.tpToBay and not ojbl() then
qjmv()
end

if not acsr() then
task.wait(4)
end
end

if not sh and os.clock() >= math.max(msip.shopTripUntil or 0, msip.tpHoldUntil or 0) then
if (msip.totalCasts or 0) ~= (msip.castMark or 0) then
msip.castMark = msip.totalCasts
msip.castMarkAt = os.clock()
elseif (msip.castMarkAt or 0) > 0
and os.clock() - (msip.castMarkAt or 0) > 45 then
pcall(msip.recover)
end
else
msip.castMark = msip.totalCasts
msip.castMarkAt = os.clock()
end

if os.time() - msip.lastSync >= 20 then
ey()
end
end

task.wait(0.5)
end
end)

local mrvm

task.spawn(function()
local cry = gtd()

while enj() do
local yup = gtd()

if yup ~= cry then
cry = yup
pcall(function()
mrvm:UpdateBody(yup)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while enj() do
if fsjn.enabled then

if os.clock() >= (jjrz.trip.untilAt or 0) then
jjrz.open()
end

local tuyv = fsjn.pending

if tuyv and os.time() - tuyv.at > 5 then

fsjn.failedUntil[tuyv.id] = os.time() + 30
fsjn.pending = nil
ic.RequestItemSync:FireServer()
end

if os.time() - fsjn.lastSync >= 20 then
fsjn.lastSync = os.time()
ic.RequestItemSync:FireServer()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
local an = jjrz.text()

while enj() do
local ak = jjrz.text()

if ak ~= an and jjrz.paragraph then
an = ak

pcall(function()
jjrz.paragraph:UpdateBody(ak)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while enj() do

if jjrz.upgrade.balance == nil or os.time() - jjrz.upgrade.lastRequest >= 20 then
jjrz.request()
end

if jjrz.run.highest == nil and os.time() - jjrz.run.lastRequest >= 5 then
jjrz.requestProgress()
end

if jjrz.upgrade.enabled then
jjrz.buy()

if jjrz.upgrade.waiting and os.time() - jjrz.upgrade.lastBuy >= 5 then

jjrz.upgrade.waiting = false
jjrz.request()
end

task.wait(0.5)
else
task.wait(1)
end
end
end)

task.spawn(function()
while enj() do
local gqpd = jjrz.run

if gqpd.enabled then
if gqpd.highest == nil or os.time() - gqpd.lastRequest >= 20 then
jjrz.requestProgress()
end

local uj = gqpd.inBattle and os.time() < gqpd.inBattleUntil

if not uj and my.halloweenSlot() ~= nil
and my.slotFree(my.halloweenSlot() or 1)

and (not qe.enabled or my.towerSlot() ~= 1)
and (not of.island or my.enabled)
and (not cnwj.enabled or my.enabled)
and not (gqpd.pending and os.time() < gqpd.pendingUntil) then
if jjrz.bestRoom() then
jjrz.startRun()
elseif gqpd.highest ~= nil then

gqpd.enabled = false

pcall(function()
jjrz.runToggle:UpdateState(false)
end)

pcall(function()
ib:Dialog({
Title = _d("cxpFBFM7U14DXhwWFlwSO14cFgE"),
Description = _d("dxlUGQpTelMDXQQEFldcT2UEBBZAEhxFChQWElscEQgfFlNAClVLEh9AVw5VEl9TQV1PRQMWAVcSBkJLHRxGWgZfDFMfV1QbER8cU0BHAR8"),
Buttons = {
{
Name = _d("dQBFSxoH"),
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

local vzvj = ib:TabGroup()

local drv = vzvj:Tab({
Name = _d("fw5YBQ"),
Image = _d("QA1JCgAAV0YGVVFcXAMAVwdYQ0cKB1cAX0tECg"),
})

local jbo = vzvj:Tab({
Name = _d("ZgBGDgFTFBI7VAoe"),
Image = _d("QA1JCgAAV0YGVVFcXAMCWQRbSkoLAVoEXUJEAw"),
})

task.spawn(function()
local bgh = 0
local gzi = 0

local xsg = 0

while enj() do
local bpqy = msip.rebirthText()

if msip.rebirthParagraph and bpqy ~= msip.rebirthShown then
msip.rebirthShown = bpqy

pcall(function()
msip.rebirthParagraph:UpdateBody(bpqy)
end)
end

if os.clock() >= xsg then
xsg = os.clock() + 20

local vctm = of.remotes and of.remotes.request

if vctm then
pcall(function()
vctm:FireServer()
end)
end
end

local tepy = of.buffText()

if of.islandParagraph and tepy ~= of.buffShown then
of.buffShown = tepy

pcall(function()
of.islandParagraph:UpdateBody(tepy)
end)
end

if msip.autoRebirth then
if os.clock() - bgh > 15 then
bgh = os.clock()
ey()
end

if msip.rebirthReady() and os.clock() >= gzi then
local qk = workspace:FindFirstChild(_d("fw5WAhASXhItXgQY"), true)

if qk then
ixx(qk)
task.wait(0.8)
end

local kzw, ffz = byls(_d("YApTAgEHWg"))

if kzw then
msip.autoRebirth = false

pcall(function()
msip.rebirthToggle:UpdateState(false)
end)

ib:Notify({
Title = _d("YApTAgEHWg"),
Description = _d("YApTAgEHWlcLH0snG1cSLlMKHRddXApVSzoAXlMBVUsaABJdH1QFXQ"),
Lifetime = 6,
})
elseif ffz ~= _d("QQNeHA") then
gzi = os.clock() + 20

ib:Notify({
Title = _d("YApTAgEHWg"),
Description = _d("YApTAgEHWhIdVA0GAFdWVRE") .. tostring(ffz),
Lifetime = 6,
})
end
end
end

task.wait(3)
end
end)

local injc = vzvj:Tab({
Name = _d("dAZCAxodVQ"),
Image = _d("QA1JCgAAV0YGVVFcXAMDWwReRkIGAFoHXUdAAw"),
})

local spe = vzvj:Tab({
Name = _d("dgZWDBodVQ"),
Image = _d(""),
})

local yds = vzvj:Tab({
Name = _d("dxlUBQcA"),
Image = _d("QA1JCgAAV0YGVVFcXAMAWgFaQUUHAlsIXEtLAQ"),
})

local mjts = injc:Section({
Side = _d("fgpXHw"),
})

mjts:Header({
Name = _d("dAZCAxodVRKfruXQ"),
})

local inp

local function nfc(gj)
msip.enabled = gj
msip.phase = _d("WwtdDg")
msip.nextCastAt = 0
msip.castMark = msip.totalCasts
msip.castMarkAt = os.clock()

if not gj then
gbu()
return
end

task.spawn(function()
if not skn() then
ib:Notify({
Title = _d("cxpFBFM1W0EH"),
Description = _d("fAARDRoAWlsBVksBHFYSBl9LBxtXEg1QCBgDU1EEHw"),
Lifetime = 5,
})
end

if msip.tpToBay and not ojbl() then
qjmv()
end

ey()

if msip.autoUnlocked and not msip.perfectCasts then
vkf()
end
end)
end

local ywu = false

local function stij()
if msip.tpToBay or msip.deepZone then
if msip.autoFishWanted then

msip.autoFishWanted = false

pcall(function()
inp:UpdateState(true)
end)

if not msip.enabled then
nfc(true)
end
end

return true
end

if msip.enabled then

msip.autoFishWanted = true

nfc(false)

if not ywu then
ib:Dialog({
Title = _d("cxpFBFM1W0EHEQQVFQ"),
Description = _d("exsRBRYWVkFPUEsAA11GT0UEUxVbQQcRCgdTHxIbRBkdU11cT2U7UwddEi1QElMcQBIOES8WFkISOFAfFgFBEhxGAgcQWhw"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})
end
end

return false
end

inp = mjts:Toggle({
Name = _d("cxpFBFM1W0EH"),
Default = false,
Callback = function(jjps)
if jjps and vujf then
pcall(function()
inp:UpdateState(false)
end)

if not ywu then
ib:Dialog({
Title = _d("cxpFBFM1W0EHEQIAU0JTHVoOFw"),
Description = _d("cxpFBFM3W1VPWQoAU0ZaChEYGxxEVwMRAh1TWlMBVUVTJ0dAAREqBgddEitYDFMcVFRPUAUXU3NHG15LNRpBWk9CHxIBRkFPXwQBHlNeA0hF"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})
end

return
end

if jjps and not (msip.tpToBay or msip.deepZone) then

pcall(function()
inp:UpdateState(false)
end)

msip.autoFishWanted = true

if not ywu then
ib:Dialog({
Title = _d("cxpFBFM1W0EHEQUWFlZBT1BLAANdRg"),
Description = _d("ZhpDBVMcXBI7YUsHHBJwDkhLHAESU091DhYDEmUORQ4BABJBGFgfEBsSVAZDGAdTHxIuRB8cU3RbHFlLAAdTQBtCSxEKElsbQg4fFRJTHBEYHBxcEg5CSxwdVxIAV0sHG1dfT1gYUxxcHA"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})
end

return
end

msip.autoFishWanted = false

nfc(jjps)
end,
}, _d("UxpFBCwVW0EH"))

msip.autoFishToggle = inp

mjts:Toggle({
Name = _d("YgpDDRYQRhIMUBgHABIaFwNLHwZRWUY"),
Default = true,
Callback = function(jwv)
msip.perfectCasts = jwv

if jwv and msip.usingGameAuto then
gbu()
end
end,
}, _d("QgpDDRYQRm0MUBgHAG1KXW4HBhBZ"))

mjts:Toggle({
Name = _d("Zj8RHxxTcFMW"),
Default = false,
Callback = function(lhs)
msip.tpToBay = lhs

stij()
end,
}, _d("Rh9uHxwsUFMW"))

local faiv
local rt

faiv = mjts:Toggle({
Name = _d("ZgpdDgMcQEZPRQRTN1dXH1QYB1NlUxtUGQ"),
Default = false,
Callback = function(mv)
if mv then

msip.deepWalk = false
msip.deepDiveAt = 0
msip.deepPhase = _d("WwtdDg")
msip.deepStageAt = 0

pcall(function()
rt:UpdateState(false)
end)

msip.deepZone = true

task.spawn(function()
if not rtx.settle() and msip.deepZone and not msip.deepWalk then
ib:Notify({
Title = _d("ZgpdDgMcQEZPRQRTN1dXH1QYB1NlUxtUGQ"),
Description = _d("ZgdUSxcWV0JCRgoHFkASAlAbUx1XRApDSx8cU1YKVUVTJ0dAAREfGxYSQRhYHxAbEl0JV0sSHVYSAF9LEhRTWwERHxxTQFcbQxJd"),
Lifetime = 8,
})
end
end)

stij()

return
end

if msip.deepWalk then
return
end

msip.deepZone = false
msip.deepDiveAt = 0
msip.deepPhase = _d("WwtdDg")
msip.deepStageAt = 0

task.spawn(function()
pcall(function()
ic.TeleportToWorld:FireServer(_d("XgBTCQo"))
end)
end)

stij()
end,
}, _d("VgpUGywEU0YKQzQRFkFGMF0eEBg"))

rt = mjts:Toggle({
Name = _d("ZQ5dAFMHXRIrVA4DFkFGT2YKBxZA"),
Default = false,
Callback = function(ioae)
if ioae then

local vvn = rtx.customIsland or rtx.islandOf(rtx.spot())

if msip.islandLocked and vvn == _d("Uw1QBRccXFcLbgIAH1NcCw") then
msip.deepWalk = false

pcall(function()
rt:UpdateState(false)
end)

ib:Dialog({
Title = _d("ZQ5dAFMHXRIrVA4DFkFGT2YKBxZAEgFUDhcAEkYHVEsyEVNcC14FFhcSexxdCh0X"),
Description = _d("ZgdUSxoAXlMBVUsaABJeAFIAFhcSXQERHxsaQRIOUggcBlxGQREkHRYSQApTAgEHWhIAQQ4dABJbGxFGUwZcRgZdSwcbV1xPRQMWU1VTAlRLGxJBEgFeSwcWXlcfXhkHU0ZaCkMOUwddEhtQABZd"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})

return
end

msip.deepWalk = true
msip.deepDiveAt = 0
msip.deepPhase = _d("WwtdDg")
msip.deepStageAt = 0

pcall(function()
faiv:UpdateState(false)
end)

msip.deepZone = true

task.spawn(function()
rtx.walk()
end)

stij()

return
end

if not msip.deepWalk then
return
end

msip.deepWalk = false
msip.deepZone = false
msip.deepDiveAt = 0
msip.deepPhase = _d("WwtdDg")
msip.deepStageAt = 0

task.spawn(function()
pcall(function()
ic.TeleportToWorld:FireServer(_d("XgBTCQo"))
end)
end)

stij()
end,
}, _d("RQ5dACwXV1cfbhwSB1dA"))

mjts:Paragraph({
Header = _d("dgpUGxYARhI4UB8WAQ"),
Body = _d("cABFA1MARVsbUgMWABJeDl8PUxxcEhtZDlMkW1wLXAIfHxJ7HF0OUxddUQQRRlMHWldPVQ4WA1dBGxEZGh1VHk9mAh0XRVMdVUskEkZXHUJLXlNBXU9FHgEdW1wIEQQdFhJdARENARxfEg5fEgQbV0AKEQIdU0ZaChEMEh5XEg1DAh0UQRIWXh5TEVNRBBEfHFNGWg5FSwADXUZBO2EkEl5ZT1IEBRZAQU9FAxZTXlMcRUsAB0BXG1IDUxxcEgleBAdTRVsbWUsHG1cSCFAGFlRBEgBGBVMSXFsCUB8aHFwJT2UOHxZCXR1FSwMGRkFPSAQGU0ZaCkMOUwRbRgdeHgdTRloKERwSH1kcT2UEUxtdXgsRClMXW1QJVBkWHUYSHEEEB1NbXBxFDhIXHhIdRAVTMnFwN3UOFgNlUxtUGV0QU0IbRBkWWxsSBl9LBxtXEgxeBQAcXldPRgMaH1cSHEUKHRdbXAgRBB1TW0ZB"),
})

local nex

nex = mjts:Paragraph({
Header = _d("dAZCAxodVRIcRQoHFg"),
Body = pst(),
})

local qlc = yds:Section({
Side = _d("fgpXHw"),
})

qlc:Header({
Name = _d("cxpFBFM7U14DXhwWFlwSO14cFgHCreGym+zVtQ"),
})

jjrz.runToggle = qlc:Toggle({
Name = _d("cxpFBFM7U14DXhwWFlwSO14cFgE"),
Default = false,
Callback = function(roh)
jjrz.run.enabled = roh
jjrz.run.pending = false
jjrz.run.pendingUntil = 0

if roh then
jjrz.requestProgress()
end
end,
}, _d("UxpFBCwbU14DXhwWFlxtG14cFgE"))

jjrz.run.team = math.clamp(math.floor(tonumber(pxwb.bossTeams.towerPicked.halloween) or 1), 1, 4)
jjrz.run.teamChosen = tonumber(pxwb.bossTeams.towerPicked.halloween) ~= nil
jjrz.run.building = true

jjrz.run.teamDropdown = qlc:Dropdown({
Name = _d("ZgpQBg"),
Search = false,
Multi = false,
Required = false,
Default = jjrz.run.team,
Options = { _d("ZgpQBlNC"), _d("ZgpQBlNB"), _d("ZgpQBlNA"), _d("ZgpQBlNH") },
Callback = function(ztvg)
local lwp = type(ztvg) == _d("Rg5TBxY") and ztvg[1] or ztvg
local kx = type(lwp) == _d("QRtDAh0U") and tonumber(lwp:match(_d("GkpVQFo"))) or nil

if not kx then
return
end

jjrz.run.team = kx

if jjrz.run.building then
return
end

jjrz.run.teamChosen = true
pxwb.bossTeams.towerPicked.halloween = kx
pxwb.bossTeams.save()

pcall(function()
jjrz.run.teamDropdown:UpdateName(_d("ZgpQBlORspBP") .. (lwp or (_d("ZgpQBlM") .. tostring(kx))))
end)
end,
}, _d("RgpQBiwbU14DXhwWFlw"))

pcall(function()
jjrz.run.teamDropdown:UpdateSelection(_d("ZgpQBlM") .. tostring(jjrz.run.team))
jjrz.run.teamDropdown:UpdateName(_d("ZgpQBlORspBPZQ4SHhI") .. tostring(jjrz.run.team))
end)

jjrz.run.building = false

jjrz.toggle = qlc:Toggle({
Name = _d("cxpFBFMGQlUdUA8WAA"),
Default = false,
Callback = function(nln)
if nln and not next(jjrz.upgrade.selected) then
jjrz.upgrade.enabled = false

pcall(function()
jjrz.toggle:UpdateState(false)
end)

ib:Dialog({
Title = _d("cxpFBFMGQlUdUA8WAA"),
Description = _d("YgZSAFMSRhIDVAoABxJdAVRLAwZfQgRYBVMGQlUdUA8WU1tcT0UDFlNWQABBDxwEXBIJWBkABxIfT3AeBxwSRx9WGRIXV0FPQhsWHVZBT0gEBgESeA5SAFMcFRIjUAUHFkBcHBEEHVNGWgpcSxIAEkEAXgVTEkESFl4eUxBTXE9QDRUcQFZPXgUWXQ"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})

return
end

jjrz.upgrade.enabled = nln

if nln then
jjrz.request()
end
end,
}, _d("UxpFBCwGQlUdUA8WAA"))

qlc:Dropdown({
Name = _d("YhpcGxgaXBIaQQwBElZXHA"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = jjrz.labels,
Callback = function(pgi)
local xhnq = {}

if type(pgi) == _d("Rg5TBxY") then
for fpbm, nc in ipairs(jjrz.upgrades) do
if pgi[nc.name] then
xhnq[nc.id] = true
end
end
end

jjrz.upgrade.selected = xhnq

if not next(xhnq) and jjrz.upgrade.enabled then
jjrz.upgrade.enabled = false

pcall(function()
jjrz.toggle:UpdateState(false)
end)

ib:Dialog({
Title = _d("cxpFBFMGQlUdUA8WABJdCVc"),
Description = _d("fABFAxodVRIGQksAFl5XDEUOF1NcXRgdSwAcEkYHVBkWU1tBT18EBxtbXAgRBxYVRhIbXksRBkscT2ECEBgSUwERHgMUQFMLVEsSHVYSG0QZHVNbRk9TChAYEl0BHw"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})
end
end,
}, _d("QhpcGxgaXG0aQQwBElZXHA"))

jjrz.paragraph = qlc:Paragraph({
Header = _d("YhpcGxgaXEE"),
Body = jjrz.text(),
})

local qnq = yds:Section({
Side = _d("fgpXHw"),
})

qnq:Header({
Name = _d("eg5dBxwEV1cBERgbHELC8L7Bg+ygsg"),
})

qnq:Toggle({
Name = _d("cxpFBFMxR0s"),
Default = false,
Callback = function(snj)
fsjn.enabled = snj
fsjn.pending = nil

if snj then
ic.RequestItemSync:FireServer()
task.spawn(function()
jjrz.open(true)
end)
end
end,
}, _d("UxpFBCwRR0s"))

qnq:Button({
Name = _d("fR9UBVMAWl0f"),
Callback = function()
task.spawn(function()
local eon = jjrz.open(true)

ib:Notify({
Title = _d("eg5dBxwEV1cBERgbHEI"),
Description = eon and _d("cQBEBQcWQBIAQQ4dUx8SC1ACHwoSQRteCBhTQFcOVUsVAV1fT0UDFlNBVx1HDgFd") or tostring(jjrz.trip.lastResult),
Lifetime = 6,
})

if mrvm then
pcall(function()
mrvm:UpdateBody(gtd())
end)
end
end)
end,
})

qnq:Dropdown({
Name = _d("extUBgA"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = jjrz.shopLabels,
Callback = function(tg)
local adcb = {}

if type(tg) == _d("Rg5TBxY") then
for jzkr, ok in ipairs(jjrz.shopItems) do
if tg[ok.label] then
adcb[ok.id] = true
end
end
end

fsjn.selected = adcb
end,
}, _d("WxtUBgA"))

mrvm = qnq:Paragraph({
Header = _d("YRteCBhTFBIdVBgWBw"),
Body = gtd(),
})

local lcxj = yds:Section({
Side = _d("YAZWAwc"),
})

lcxj:Paragraph({
Header = _d("YQpQGBwdU15PVB0WHUZB"),
Body = _d("eg5dBxwEV1cBEQIAU15bGVRRUwdaV09CAxwDElMBVUsHG1cSO14cFgESUABFA1MEXUAEH2F5MkdGABEjEh9eXRhUDh1TZl0YVBlTAEZTHUUYUwpdRx0RDxYWQlccRUsGHV5dDFoOF1NAXQBcRVMwXlcOQwIdFBJBG1AMFgASQg5IGFM5U1EEEQRUU35TAUUOAR1BHk9QBRdTc0cbXksGA1VADlUOAFNBQgpfDwBTRloKXEscHRJCCkMGEh1XXBsRHxwEV0BPUx4VFUEc"),
})

auqr.worldBoss.section = yds:Section({
Side = _d("YAZWAwc"),
})

auqr.worldBoss.section:Header({
Name = _d("cxpFBFM0Xl0NUAdTMV1BHA"),
})

auqr.worldBoss.section:Paragraph({
Header = _d("Yh1YBAEaRks"),
Body = _d("YA5fAABTRVsbWUsHG1cSHVACFwAIEhtZDlMHXUUKQ0sAB1NcC0JLFxxFXE9XBAFTW0ZDEQodFxJzGkUEUz1icU9eHgcBU1wEQksaBxw4ZWUDFlNUWwhZH1MHU1kKQksSU0FeAEVHUwBdEgZFSxAcR1wbQksSABJTARElIzASUA5FHx8WEkYHVBkWXQ"),
})

auqr.worldBoss.toggle = auqr.worldBoss.section:Toggle({
Name = _d("cxpFBFM0Xl0NUAdTMV1BHA"),
Default = false,
Callback = function(eol)
if eol and not auqr.worldBoss.teamChosen then
auqr.worldBoss.enabled = false

pcall(function()
auqr.worldBoss.toggle:UpdateState(false)
end)

ib:Dialog({
Title = _d("cxpFBFM0Xl0NUAdTMV1BHBEFFhZWQU9QSwcWU18"),
Description = _d("YgZSAFMHWldPRQ4SHhJbGxEYGxxHXgsRDRoUWkZPRgIHGxJbAREfGxYSZgpQBlMXQF0fVQQEHRJUBkMYB10SZgdUSwAQQFsfRUsbEkESG15LAARbRgxZSwcbU0ZPQgccBxVBT0UOEh4SUApXBAEWEkYHVEsVGlVaGxEYBxJARhwdSxIdVhI7VAoeUwMSBkJLHB1eS09FAxZTVlcJUB4fBxIfT1gfUxpBEgFeH1MSElEHXgIQFhJHAUUCH1NLXRoRBhIYVxIGRUU"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})

return
end

if eol then
local cmo = auqr.worldBoss.team
local gr = pxwb.bossTeams.teamCards(cmo)

if gr == 0 then
auqr.worldBoss.enabled = false

pcall(function()
auqr.worldBoss.toggle:UpdateState(false)
end)

ib:Dialog({
Title = _d("ZgpQBlM") .. tostring(cmo) .. _d("EgdQGFMdXRIMUBkXAA"),
Description = _d("YhpFSxIHEl4KUBgHU11cChEIEgFWEgZfSycWU19P") .. tostring(cmo) .. _d("Ekd1DhAYQRtDEQQBU0JbDFpLElNGVw5cSwcbU0ZPUAcBFlNWFhEDEgASUQ5DDwBTW1xPRQMWU2ZXDlxLFwFdQgteHB1fEkYHVAVTB0dAAREqBgddEihdBBESXhItXhgAU1BTDFpLHB0c"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})

return
end
end

auqr.worldBoss.enabled = eol
auqr.worldBoss.holdUntil = 0

auqr.worldBoss.nextFightAt = 0

if not eol then
auqr.worldBoss.setRepeat(false)
end

if eol then

auqr.worldBoss.syncedAt = 0
auqr.worldBoss.askedAt = 0
auqr.worldBoss.chainWaitAt = nil
auqr.worldBoss.repeatSeeded = false
auqr.worldBoss.seenKills = nil
auqr.worldBoss.progressAt = os.clock()
auqr.worldBoss.kickAt = 0
end
end,
}, _d("UxpFBCwUXl0NUAcsEV1BHA"))

auqr.worldBoss.claimToggle = auqr.worldBoss.section:Toggle({
Name = _d("cxpFBFMQXlMGXEsBFkVTHVUY"),
Default = false,
Callback = function(grqr)
auqr.worldBoss.autoClaim = grqr
auqr.worldBoss.claimAt = 0

if grqr then
auqr.worldBoss.syncedAt = 0
auqr.worldBoss.askedAt = 0
auqr.worldBoss.chainWaitAt = nil
end
end,
}, _d("UxpFBCwQXlMGXDQBFkVTHVUY"))

auqr.worldBoss.applyFishingMode = function(gtjq)
local hn = auqr.worldBoss

if gtjq == _d("dAZCAxodVRIYUAIHU1RdHREJHABB") or gtjq == _d("ZQ5YH1MVXUBPUgQcH1ZdGF8") then
hn.fishingMode = _d("RQ5YHw")
elseif gtjq == _d("dgZWSwQSW0YcEQ0cARJQAEIY") then

hn.fishingMode = _d("RgBWDgcbV0A")
else
hn.fishingMode = _d("RgBWDgcbV0A")
end

hn.digHold = gtjq == _d("dgZWSwQSW0YcEQ0cARJQAEIY")

hn.nextFightAt = 0
hn.chainWaitAt = nil
hn.repeatSeeded = false
hn.seenKills = nil
hn.progressAt = os.clock()

return hn
end

auqr.worldBoss.fishingDropdown = auqr.worldBoss.section:Dropdown({
Name = _d("Yh1YBAEaRks"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("dAZCA1MSXl0BVhgaF1c"), _d("dAZCAxodVRIYUAIHU1RdHREJHABB"), _d("dgZWSwQSW0YcEQ0cARJQAEIY") },
Callback = function(qbl)
local xew = type(qbl) == _d("Rg5TBxY") and qbl[1] or qbl

auqr.worldBoss.applyFishingMode(xew)

settingsState.saveBossMode(xew)
end,
}, _d("RQ1uDRoAWlsBVjQeHFZX"))

auqr.worldBoss.fullToggle = auqr.worldBoss.section:Toggle({
Name = _d("YRteG1MEWlcBER8bFhJQDkNLFRpeXhw"),
Default = false,
Callback = function(pew)
auqr.worldBoss.stopAtFull = pew
auqr.worldBoss.meterAt = 0
end,
}, _d("RQ1uGAccQm0ORTQVBl5e"))

auqr.worldBoss.walkToggle = auqr.worldBoss.section:Toggle({
Name = _d("ZQ5dAFMHXRIIXQQREl4SDV4YAA"),
Default = false,
Callback = function(ye)
auqr.worldBoss.walkToBoss = ye

auqr.worldBoss.travelUntil = 0
end,
}, _d("RQ1uHBIfWW0bXjQRHEFB"))

auqr.worldBoss.bodyParagraph = auqr.worldBoss.section:Paragraph({
Header = _d("cABCGA"),
Body = auqr.worldBoss.bodyText(),
})

auqr.worldBoss.section:Header({
Name = _d("cABCGFMAWl0fEZvs/a3d174"),
})

auqr.worldBoss.shopParagraph = auqr.worldBoss.section:Paragraph({
Header = _d("ewERGAccUVk"),
Body = auqr.worldBoss.shopText(),
})

auqr.worldBoss.itemsDropdown = auqr.worldBoss.section:Dropdown({
Name = _d("extUBgA"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = auqr.worldBoss.shopOptions(),
Callback = function(upv)
local ibx = {}

if type(upv) == _d("Rg5TBxY") then
for iy, nt in pairs(upv) do
local zyg = auqr.worldBoss.labelToId[iy]

if nt and zyg then
ibx[zyg] = true
end
end
end

auqr.worldBoss.selected = ibx

if not next(ibx) and auqr.worldBoss.autoBuy then
auqr.worldBoss.autoBuy = false

pcall(function()
auqr.worldBoss.shopToggle:UpdateState(false)
end)
end
end,
}, _d("WxtUBgAsAA"))

auqr.worldBoss.shopToggle = auqr.worldBoss.section:Toggle({
Name = _d("cxpFBFMRR0s"),
Default = false,
Callback = function(nlcb)
if nlcb and not next(auqr.worldBoss.selected) then
auqr.worldBoss.autoBuy = false

pcall(function()
auqr.worldBoss.shopToggle:UpdateState(false)
end)

ib:Dialog({
Title = _d("cxpFBFMRR0s"),
Description = _d("YgZSAFMSRhIDVAoABxJdAVRLGgdXX09YBVM6RlcCQksVGkBBGxFGUzJHRgARCQYKEkEfVAUXABJgClVLIRpQUABfSz4WVlMDQkscHRJFB1AfFgVXQE9YH1MQU1xPUA0VHEBWT1cZHB4SRgdQH1MfW0EbHw"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})

return
end

auqr.worldBoss.autoBuy = nlcb
end,
}, _d("UxpFBCwRR0swAw"))

auqr.worldBoss.section:Button({
Name = _d("cBpISwAWXlcMRQ4X"),
Callback = function()
if not next(auqr.worldBoss.selected) then
ib:Dialog({
Title = _d("cBpISwAWXlcMRQ4X"),
Description = _d("YgZSAFMSRhIDVAoABxJdAVRLGgdXX09YBVM6RlcCQksVGkBBGx8"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})

return
end

local dcr = auqr.worldBoss.buy()

if dcr == 0 then
ib:Dialog({
Title = _d("cBpISwAWXlcMRQ4X"),
Description = _d("fABFAxodVRIYUBhTEV1HCFkfSVNcXU9cDhcSXkFPRQRTAEJXAVVHUxZEVx1ISwMaUVlPWBhTHEdGT14NUwBGXQxaR1McQBIbWQ5TEV1BHBEYGxxCEgdQGFMdXUZPQhIdEFdWT0gOB10"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})
end
end,
})

auqr.worldBoss.building = true

auqr.worldBoss.teamDropdown = auqr.worldBoss.section:Dropdown({
Name = _d("ZgpQBg"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = { _d("ZgpQBlNC"), _d("ZgpQBlNB"), _d("ZgpQBlNA"), _d("ZgpQBlNH") },
Callback = function(fya)
if auqr.worldBoss.building then
return
end

local hjbj = type(fya) == _d("Rg5TBxY") and fya[1] or fya
local hgil = type(hjbj) == _d("QRtDAh0U") and tonumber(hjbj:match(_d("GkpVQFo"))) or nil

if hgil then
auqr.worldBoss.team = hgil
auqr.worldBoss.teamChosen = true
pxwb.bossTeams.save()
end

pcall(function()
auqr.worldBoss.teamDropdown:UpdateName(_d("ZgpQBlORspBP") .. (hjbj or _d("ZgpQBlNC")))
end)
end,
}, _d("RgpQBg"))

pcall(function()
auqr.worldBoss.teamDropdown:UpdateSelection(_d("ZgpQBlM") .. tostring(auqr.worldBoss.team))
auqr.worldBoss.teamDropdown:UpdateName(_d("ZgpQBlORspBPZQ4SHhI") .. tostring(auqr.worldBoss.team))
end)

task.defer(function()
auqr.worldBoss.building = false
end)

auqr.misc = auqr.misc or {}

auqr.misc.expeditions = {
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
rewardPath = _d("cyxzM1wWSkIKVQIHGl1cHB8BABxc"),
module = nil,
action = nil,
section = nil,
paragraph = nil,
claimToggle = nil,
startToggle = nil,
dropdown = nil,
}

function auqr.misc.expeditions.data()
local tmon = auqr.misc.expeditions

if tmon.module ~= nil then
return tmon.module or nil
end

local lrl, fce = pcall(function()
return require(gx.ModuleScripts.ExpeditionData)
end)

tmon.module = lrl and fce or false

return tmon.module or nil
end

function auqr.misc.expeditions.tiers()
local ttau = auqr.misc.expeditions.data()

return ttau and ttau.Tiers or {}
end

function auqr.misc.expeditions.remote()
local zlq = auqr.misc.expeditions

if zlq.action and zlq.action.Parent then
return zlq.action
end

zlq.action = tn(_d("dxdBDhcaRlsAXyoQB1tdAQ"), 3)

return zlq.action
end

function auqr.misc.expeditions.clockText(qat)
local bvti = auqr.misc.expeditions.data()

if bvti and type(bvti.formatDuration) == _d("VBpfCAcaXVw") then
return bvti.formatDuration(qat)
end

local vsep = math.max(0, math.floor((qat or 0) / 60))

return tostring(vsep) .. _d("Xw")
end

function auqr.misc.expeditions.status(zfir)
local spdz = auqr.misc.expeditions
local meo = spdz.state
local dioz = type(meo) == _d("Rg5TBxY") and type(meo.active) == _d("Rg5TBxY") and meo.active[zfir] or nil

if type(dioz) ~= _d("Rg5TBxY") then
return _d("UxlQAh8SUF4K"), nil
end

local ybs = (tonumber(dioz.endsAt) or 0) - (os.time() + (spdz.offset or 0))

if ybs <= 0 then
return _d("QApQDwo"), ybs
end

return _d("QBpfBRodVQ"), ybs
end

function auqr.misc.expeditions.candidates(wxf)
local hyfa = auqr.misc.expeditions
local ql = hyfa.data()
local grif = hyfa.state
local hmz = ql and ql.ById and ql.ById[wxf]
local npge = {}

if not (hmz and type(grif) == _d("Rg5TBxY") and type(grif.eligible) == _d("Rg5TBxY")) then
return npge
end

for aq, hqg in ipairs(grif.eligible) do
if type(hqg) == _d("Rg5TBxY") and hqg.cardId then
local ptk = tonumber(hqg.rarity) or 0
local jias = (tonumber(hqg.count) or 0) - (tonumber(hqg.locked) or 0)

if ptk >= (tonumber(hmz.minRarity) or 0) and jias > 0 then

table.insert(npge, { cardId = hqg.cardId, borderLevel = hqg.borderLevel, rarity = ptk, count = jias })
end
end
end

table.sort(npge, function(hsz, mljy)
if hsz.rarity == mljy.rarity then
return tostring(hsz.cardId) < tostring(mljy.cardId)
end

return hsz.rarity < mljy.rarity
end)

return npge
end

function auqr.misc.expeditions.cards(evi, izkq)
local ih = auqr.misc.expeditions
local ugex = ih.data()
local qpob = ugex and tonumber(ugex.CardsPerExpedition) or 4
local lciu = {}
local jnda = ih.candidates(evi)

izkq = izkq or {}

local function en(enlu, ozie)
local pcny = tostring(enlu.cardId) .. _d("EQ") .. tostring(enlu.borderLevel)

while #lciu < qpob and (izkq[pcny] or 0) < ozie do
izkq[pcny] = (izkq[pcny] or 0) + 1

table.insert(lciu, { cardId = enlu.cardId, borderLevel = enlu.borderLevel })
end
end

for oaj, ktf in ipairs(jnda) do
if #lciu >= qpob then
break
end

if ktf.count > 1 then
en(ktf, ktf.count - 1)
end
end

if #lciu < qpob then
for bluz, cpeg in ipairs(jnda) do
if #lciu >= qpob then
break
end

en(cpeg, cpeg.count)
end
end

return lciu
end

function auqr.misc.expeditions.available(gxr)
local qspv = auqr.misc.expeditions
local ircs = qspv.data()
local lj = ircs and tonumber(ircs.CardsPerExpedition) or 4
local ldpt = 0

for kb, als in ipairs(qspv.candidates(gxr)) do
ldpt = ldpt + als.count

if ldpt >= lj then
return lj
end
end

return ldpt
end

function auqr.misc.expeditions.text()
local smr = auqr.misc.expeditions

if type(smr.state) ~= _d("Rg5TBxY") then
return _d("YApQDxodVRIKSRsWF1tGBl4FAF0cHA")
end

local exg = smr.data()
local ybw = exg and tonumber(exg.CardsPerExpedition) or 4
local csst = {}

for yg, lghk in ipairs(smr.tiers()) do
local zx, lb = smr.status(lghk.id)
local ssz = tostring(lghk.name)

if smr.tiersWanted[lghk.id] then
ssz = _d("0O+TSw") .. ssz
end

if zx == _d("QBpfBRodVQ") then
ssz = ssz .. _d("OD1UHwYBXEFPWAVT") .. smr.clockText(lb)
elseif zx == _d("QApQDwo") then
ssz = ssz .. _d("OD1UChcKEkYAEQgfEltf")
else
local bqd = smr.available(lghk.id)
ssz = ssz .. _d("OA") .. tostring(bqd) .. _d("EgBXSw") .. tostring(ybw) .. _d("EgxQGRcA")

if bqd >= ybw then
ssz = ssz .. _d("OCxQBVMARlMdRQ")
end
end

table.insert(csst, ssz)
end

table.insert(csst, _d("dxlUGQpTVkcfXQIQEkZXT1gYUwBXXBsRCRYVXUAKEQpTEFNACxESHAYSWgBdD1McXFdPXg1fU1NcCxEEHRYSUQBBElMcVBIOEQgSAVYSBkJLGBZCRk9TChAYEkUHVBkWU0ZaChEfGhZAEgxQBVMAQlMdVEsaBxIfT1BLHxxcV09SBAMKEl0BXRJTFF1XHBEEBgcSRQdUBVMHWldPRQIWARJRDl8FHAcSUAoRDRofXlcLERwaB1pdGkVLGgcc"))

return table.concat(csst, _d("OGU"))
end

function auqr.misc.expeditions.request()
local spl = auqr.misc.expeditions
local tlyz = spl.remote()

if tlyz then
pcall(function()
tlyz:FireServer(_d("QApAHhYARg"))
end)
end

spl.askedAt = os.clock()
end

function auqr.misc.expeditions.claim()
local wb = auqr.misc.expeditions

if os.clock() < wb.claimAt then
return false
end

local ub = false

for mudm, ljnw in ipairs(wb.tiers()) do
if wb.status(ljnw.id) == _d("QApQDwo") then
ub = true
break
end
end

if not ub then
return false
end

local ab = wb.remote()

if not ab then
return false
end

pcall(function()
ab:FireServer(_d("UQNQAh4yXl4"))
end)

wb.claimAt = os.clock() + 3
wb.askedAt = 0

return true
end

function auqr.misc.expeditions.popup()
local gck = ysuk:FindFirstChild(_d("dxdBDhcaRlsAXywGGg"))

return gck and gck:FindFirstChild(_d("cQNQAh4jXUIaQQ")) or nil
end

function auqr.misc.expeditions.closeRewards()
local qrft = auqr.misc.expeditions
local grbf = qrft.popup()

if not (grbf and grbf.Visible) then
return false
end

local yra = grbf:FindFirstChild(_d("fQRzHgcHXVw"))

if yra and type(firesignal) == _d("VBpfCAcaXVw") then
pcall(firesignal, yra.Activated)
end

pcall(function()
grbf.Visible = false
end)

return true
end

function auqr.misc.expeditions.rewardsText()
local hwcv = auqr.misc.expeditions

if #hwcv.rewardLog == 0 then
return _d("fABFAxodVRIMXQoaHldWT0gOB10SdxlUGQpTQlMWXh4HU0ZaChEYFgFEVx0RGBYdVkFPXQodF0ESB1QZFlNFWxtZSxoHQRIbWA4BU1NcCxECBwASUQBfHxYdRkFB")
end

local dhzu = {}

for ltga, mviy in ipairs(hwcv.rewardLog) do
local wt = {}
local jeu = mviy.items or {}

for khk, ild in ipairs(jeu) do
if khk > 4 then
table.insert(wt, _d("GQ") .. tostring(#jeu - 4) .. _d("EgJeGRY"))
break
end

local xcf = ild.id or ild.itemId
local lkbs = xcf and vz.ById[xcf] or nil
local juby = (lkbs and lkbs.name) or (ild.potions and _d("YgBFAhwdQQ")) or tostring(xcf or _d("QApGCgEX"))

table.insert(wt, juby .. _d("Ehc") .. tostring(ild.count or ild.max or ild.min or 1))
end

local wj = math.max(0, os.time() - (tonumber(mviy.at) or os.time()))
local jc

if wj < 60 then
jc = tostring(wj) .. _d("QU9QDBw")
elseif wj < 3600 then
jc = tostring(math.floor(wj / 60)) .. _d("X09QDBw")
else
jc = tostring(math.floor(wj / 3600)) .. _d("Wk9QDBw")
end

table.insert(dhzu, tostring(mviy.title) .. _d("Eq2GSw") .. jc)
table.insert(dhzu, table.concat(wt, _d("Hk8")))
end

return table.concat(dhzu, _d("OA"))
end

function auqr.misc.expeditions.saveRewards()
local pt = auqr.misc.expeditions

if type(writefile) ~= _d("VBpfCAcaXVw") then
return false
end

return pcall(function()
if type(makefolder) == _d("VBpfCAcaXVw") and type(isfolder) == _d("VBpfCAcaXVw") and not isfolder(_d("cyxzMw")) then
makefolder(_d("cyxzMw"))
end

writefile(pt.rewardPath, game:GetService(_d("ehtFGyAWQEQGUg4")):JSONEncode({
rewards = pt.rewardLog,
updatedAt = os.time(),
}))
end)
end

function auqr.misc.expeditions.loadRewards()
local lvlw = auqr.misc.expeditions

if type(readfile) ~= _d("VBpfCAcaXVw") or type(isfile) ~= _d("VBpfCAcaXVw") then
return false
end

local gnl, zjoa = pcall(function()
if not isfile(lvlw.rewardPath) then
return nil
end

return readfile(lvlw.rewardPath)
end)

if not gnl or type(zjoa) ~= _d("QRtDAh0U") or #zjoa == 0 then
return false
end

local elya

if not pcall(function()
elya = game:GetService(_d("ehtFGyAWQEQGUg4")):JSONDecode(zjoa)
end) then
return false
end

if type(elya) ~= _d("Rg5TBxY") or type(elya.rewards) ~= _d("Rg5TBxY") then
return false
end

lvlw.rewardLog = {}

for pmah, op in ipairs(elya.rewards) do
if type(op) == _d("Rg5TBxY") and type(op.items) == _d("Rg5TBxY") then
table.insert(lvlw.rewardLog, {
at = tonumber(op.at) or os.time(),
title = tostring(op.title or _d("dxdBDhcaRlsAXw")),
items = op.items,
})
end
end

return #lvlw.rewardLog > 0
end

function auqr.misc.expeditions.start(nzk, zfsm)
local cnhb = auqr.misc.expeditions

if cnhb.status(nzk) ~= _d("UxlQAh8SUF4K") then
return false
end

if os.clock() < (cnhb.startedAt[nzk] or 0) then
return false
end

local zs = cnhb.remote()

if not zs then
return false
end

local ku = cnhb.cards(nzk, zfsm)
local zq = cnhb.data()
local rnp = zq and tonumber(zq.CardsPerExpedition) or 4

if #ku < rnp then
return false
end

local ot = {}

for afxh, id in ipairs(ku) do
ot[afxh] = { cardId = id.cardId, borderLevel = id.borderLevel }
end

pcall(function()
zs:FireServer(_d("QRtQGQc"), nzk, ot)
end)

cnhb.startedAt[nzk] = os.clock() + 6
cnhb.askedAt = 0

return true
end

auqr.misc.icon = function()
local mcha = gethui()

for wbzu, mla in ipairs(mcha:QueryDescendants(_d("ewJQDBY/U1AKXQ"))) do
if mla.Name == _d("Zg5TIh4SVVc") then
local bdmj = mla.Parent
local bpv = bdmj and bdmj:FindFirstChild(_d("Zg5TOAQaRlEHVBk9El9X"))

if bpv and bpv.Text == _d("fwZCCBYfXlMBVAQGAA") then
if mla:GetAttribute(_d("cyxzMz4aQVEmUgQd")) then
return true
end

mla:SetAttribute(_d("cyxzMz4aQVEmUgQd"), true)
mla.Image = _d("")
mla.BackgroundTransparency = 1

local function sv(rbsq, adpo, fqrp, kzz, mzs, uh, shcf)
local al = Instance.new(rbsq)

al.Size = UDim2.fromOffset(mzs, uh)
al.Position = UDim2.fromOffset(fqrp, kzz)
al.BackgroundColor3 = adpo
al.BorderSizePixel = 0
al.Parent = mla

if shcf then
local oc = Instance.new(_d("ZyZyBAEdV0A"))
oc.CornerRadius = UDim.new(0, shcf)
oc.Parent = al
end

return al
end

local klqx = Color3.fromRGB(168, 170, 176)

local function lmio(gg, ozjr, liq, wez, cpkk)
local uzpq = sv(_d("dB1QBhY"), klqx, gg, ozjr, liq, wez, cpkk)

uzpq.BackgroundTransparency = 1

local vegm = Instance.new(_d("ZyZiHwEcWVc"))

vegm.Color = klqx
vegm.Thickness = 1.4
vegm.LineJoinMode = Enum.LineJoinMode.Round
vegm.Parent = uzpq

return uzpq
end

lmio(3, 1, 6, 4, 1)
lmio(1, 4, 16, 12, 2)

local ptn = sv(_d("dB1QBhY"), klqx, 3, 8, 5, 5)

ptn.BackgroundTransparency = 1
ptn.ClipsDescendants = true

local jkpq = sv(_d("dB1QBhY"), klqx, 0, 1, 5, 5)

jkpq.Rotation = 45
jkpq.Parent = ptn

sv(_d("dB1QBhY"), klqx, 9, 9, 4, 4, 4)
sv(_d("dB1QBhY"), klqx, 13, 10, 3, 3, 1)

return true
end
end
end

return false
end

auqr.misc.tab = vzvj:Tab({
Name = _d("fwZCCBYfXlMBVAQGAA"),

Image = _d(""),
})

task.defer(function()
for ldeh = 1, 20 do
if auqr.misc.icon() then
break
end

task.wait(0.25)
end
end)

local ofmg = {
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
lastText = _d("fABFAxodVRIfXhsDFlYSFlQfXQ"),
tab = nil,
weatherSection = nil,
giveUpSection = nil,
weatherParagraph = nil,
giveUpParagraph = nil,
weatherToggle = nil,
giveUpToggle = nil,
}

getgenv().ACBXPop = ofmg

function ofmg.options()
local bf = {}

for zgsb, nfus in pairs(vz.ById) do
if nfus.type == _d("QgBFAhwd") and type(nfus.name) == _d("QRtDAh0U") then
bf[#bf + 1] = nfus.name
end
end

table.sort(bf)

return bf
end

function ofmg.idOf(vb)
for qix, cmjt in pairs(vz.ById) do
if cmjt.type == _d("QgBFAhwd") and cmjt.name == vb then
return qix
end
end

return nil
end

function ofmg.count(bh)
local kvd = fsjn.balances

return tonumber(kvd and kvd[bh]) or 0
end

function ofmg.pop(bb, lyz, omq)
local le = {}

for jj, esze in pairs(bb) do
if esze then
local gn = ofmg.idOf(jj)

if gn then
local qqi = ofmg.count(gn)

if qqi <= 0 then
le[#le + 1] = jj .. _d("EkIRBRwdVxIDVA0H")
else
local amkg = math.clamp(math.floor(tonumber(lyz) or 1), 1, qqi)

pcall(function()
ic.UseItem:FireServer(gn, amkg)
end)

le[#le + 1] = jj .. _d("Ehc") .. amkg
task.wait(0.3)
end
end
end
end

if #le == 0 then
return false
end

ofmg.lastText = omq .. _d("EkIR") .. table.concat(le, _d("Hk8"))

pcall(function()
ib:Notify({
Title = _d("YgBB"),
Description = ofmg.lastText,
Lifetime = 5,
})
end)

return true
end

function ofmg.status()
local af = lum.weatherWanted(ofmg.weathers)
local icze = lum.weatherNow or _d("RwFaBRwEXA")
local dfj = {
_d("ZQpQHxsWQAhP") .. icze .. (af and (_d("EkdBBAMDW1wIC0s") .. af .. _d("Gw")) or _d("")),
_d("fg5CH0lT") .. ofmg.lastText,
}

return table.concat(dfj, _d("OA"))
end

function ofmg.giveUpStatus()
if ofmg.armedAt > 0 then
return _d("cx1cDhdTHxIYUAIHGlxVT1cEAVNGWgoRGQYdEkYAEQ4dFxw4I1AYB0kS") .. ofmg.lastText
end

return _d("ewtdDl15flMcRVFT") .. ofmg.lastText
end

ofmg.tab = vzvj:Tab({
Name = _d("YgBB"),

Image = _d(""),
})

ofmg.icon = function()
local lvyp = gethui()

for rsh, ob in ipairs(lvyp:QueryDescendants(_d("ewJQDBY/U1AKXQ"))) do
if ob.Name == _d("Zg5TIh4SVVc") then
local rn = ob.Parent
local hbjo = rn and rn:FindFirstChild(_d("Zg5TOAQaRlEHVBk9El9X"))

if hbjo and hbjo.Text == _d("YgBB") then
if ob:GetAttribute(_d("cyxzMyMcQnsMXgU")) then
return true
end

ob:SetAttribute(_d("cyxzMyMcQnsMXgU"), true)
ob.Image = _d("")
ob.BackgroundTransparency = 1

local edxj = Color3.fromRGB(168, 170, 176)

local function bxs(ltu, mkcb, dwy, jbs, kvue, dsas)
local png = Instance.new(ltu)

png.Size = UDim2.fromOffset(jbs, kvue)
png.Position = UDim2.fromOffset(mkcb, dwy)
png.BackgroundColor3 = edxj
png.BorderSizePixel = 0
png.Parent = ob

if dsas then
local loa = Instance.new(_d("ZyZyBAEdV0A"))
loa.CornerRadius = UDim.new(0, dsas)
loa.Parent = png
end

return png
end

local function eerb(ko, iva, gy, prg, zyr)
local dx = bxs(_d("dB1QBhY"), ko, iva, gy, prg, zyr)

dx.BackgroundTransparency = 1

local xp = Instance.new(_d("ZyZiHwEcWVc"))

xp.Color = edxj
xp.Thickness = 1.3
xp.LineJoinMode = Enum.LineJoinMode.Round
xp.Parent = dx

return dx
end

eerb(1, 6, 16, 12, 6)
eerb(6, 3, 6, 4, 1)
bxs(_d("dB1QBhY"), 5, 1, 8, 2, 1)
bxs(_d("dB1QBhY"), 7, 0, 4, 1, 0)

bxs(_d("dB1QBhY"), 4, 11, 10, 1, 0)
bxs(_d("dB1QBhY"), 13, 3, 2, 2, 2)
bxs(_d("dB1QBhY"), 15, 6, 2, 2, 2)

return true
end
end
end

return false
end

task.defer(function()
for by = 1, 20 do
if ofmg.icon() then
break
end

task.wait(0.25)
end
end)

ofmg.weatherSection = ofmg.tab:Section({
Side = _d("fgpXHw"),
})

ofmg.weatherSection:Header({
Name = _d("YgBFAhwdQRIAX0sEFlNGB1QZU4OtlcU"),
})

ofmg.weatherToggle = ofmg.weatherSection:Toggle({
Name = _d("YgBBSxwdEkYHVBgWU0VXDkUDFgFB"),
Default = false,
Callback = function(iry)
if iry and (next(ofmg.weatherPotions) == nil or next(ofmg.weathers) == nil) then
ofmg.onWeather = false

pcall(function()
ofmg.weatherToggle:UpdateState(false)
end)

ib:Dialog({
Title = _d("YgBB"),
Description = _d("ZgZSAFMSRhIDVAoABxJdAVRLBBZTRgdUGVMSXFZPXgUWU0JdG1gEHVNUWx1CH1NeEmIAQUsdFldWHBEJHAdaEhteSxgdXUVPRgMSBxJGABEPARpcWU9QBRdTRVoKX0U"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})

return
end

ofmg.onWeather = iry

if iry then
ofmg.weatherSpent = nil
end
end,
}, _d("QgBBNBwdbUYHVBgWLEVXDkUDFgFB"))

ofmg.weatherSection:Dropdown({
Name = _d("ZQpQHxsWQEE"),
Multi = true,
Required = false,
Options = { _d("ZhZBAxwcXA"), _d("cANYEQkSQFY"), _d("fgZWAwcdW1wI"), _d("ZQZfDwAHXUAC"), _d("YQdQGRodVVMB"), _d("YQZfDAYfU0AGRRI"), _d("fwBfCgEQWhIrXgYSGlw"), _d("ZABYDw"), _d("fw5VDlMaXBInVAoFFlw"), _d("fw5fDBI") },
Callback = function(nkip)
ofmg.weathers = {}

if type(nkip) == _d("Rg5TBxY") then
for hga, ngl in pairs(nkip) do
if ngl then
ofmg.weathers[hga] = true
end
end
end
end,
}, _d("RQpQHxsWQEE"))

ofmg.weatherSection:Dropdown({
Name = _d("YgBFAhwdQQ"),
Multi = true,
Required = false,
Options = ofmg.options(),
Callback = function(ghpo)
ofmg.weatherPotions = {}

if type(ghpo) == _d("Rg5TBxY") then
for wef, djy in pairs(ghpo) do
if djy then
ofmg.weatherPotions[wef] = true
end
end
end
end,
}, _d("QgBFAhwdQQ"))

ofmg.weatherSection:Input({
Name = _d("cwJeHh0H"),
Placeholder = _d("Aw"),
AcceptedCharacters = _d("fBpcDgEaUQ"),
Callback = function(xpt)
local wym = math.floor(tonumber(xpt) or 1)

ofmg.weatherAmount = math.clamp(wym, 1, 50)
end,
}, _d("UwJeHh0H"))

ofmg.weatherParagraph = ofmg.weatherSection:Paragraph({
Header = _d("YRtQHwYA"),
Body = ofmg.status(),
})

ofmg.giveUpSection = ofmg.tab:Section({
Side = _d("YAZWAwc"),
})

ofmg.giveUpSection:Header({
Name = _d("cwlFDgFTVVsZVEsGAw"),
})

ofmg.giveUpToggle = ofmg.giveUpSection:Toggle({
Name = _d("YgBBSxIVRlcdEQpTB11FCkNLFBpEV09EGw"),
Default = false,
Callback = function(wx)
if wx and next(ofmg.giveUpPotions) == nil then
ofmg.afterGiveUp = false

pcall(function()
ofmg.giveUpToggle:UpdateState(false)
end)

ib:Dialog({
Title = _d("YgBB"),
Description = _d("ZgZSAFMSRhIDVAoABxJdAVRLAxxGWwBfSxUaQEEbEUZTB1pXHVRLGgASXABFAxodVRIbXksXAVtcBBEKFQdXQE9FAxZTQEcBEQQHG1dAGFgYFl0"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})

return
end

ofmg.afterGiveUp = wx
end,
}, _d("QgBBNBIVRlcdbgosB11FCkM0FBpEVzBEGw"))

ofmg.giveUpSection:Dropdown({
Name = _d("YgBFAhwdQQ"),
Multi = true,
Required = false,
Options = ofmg.options(),
Callback = function(ycq)
ofmg.giveUpPotions = {}

if type(ycq) == _d("Rg5TBxY") then
for ypq, sex in pairs(ycq) do
if sex then
ofmg.giveUpPotions[ypq] = true
end
end
end
end,
}, _d("QgBFAhwdQW1d"))

ofmg.giveUpSection:Input({
Name = _d("cwJeHh0H"),
Placeholder = _d("Aw"),
AcceptedCharacters = _d("fBpcDgEaUQ"),
Callback = function(oh)
local ecx = math.floor(tonumber(oh) or 1)

ofmg.giveUpAmount = math.clamp(ecx, 1, 50)
end,
}, _d("UwJeHh0HbQA"))

ofmg.giveUpParagraph = ofmg.giveUpSection:Paragraph({
Header = _d("YRtQHwYA"),
Body = ofmg.giveUpStatus(),
})

local tcc = {
autoSave = false,
autoRoll = true,
autoQuickRoll = true,

loading = false,
selected = nil,
lastText = _d("fABFAxodVRIYQwIHB1dcT0gOB1MfEh9YCBhTUxIcUB0WU1RbA1RLERZeXRgf"),
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
theme = _d("ZABYDw"),
accent = nil,
savesAt = 0,
autoSaveAt = 0,
themeAt = 0,
capAt = 0,
scaleAnchor = nil,
statusAt = 0,
knownSaves = _d(""),
}

getgenv().ACBXSettings = tcc

tcc.presets = {
Void = { panel = Color3.fromRGB(15, 15, 15), element = Color3.fromRGB(0, 0, 0), accent = Color3.fromRGB(168, 170, 176) },
Ocean = { panel = Color3.fromRGB(6, 16, 26), element = Color3.fromRGB(8, 26, 40), accent = Color3.fromRGB(77, 166, 255) },
Ember = { panel = Color3.fromRGB(26, 10, 8), element = Color3.fromRGB(36, 16, 10), accent = Color3.fromRGB(255, 122, 69) },
Sakura = { panel = Color3.fromRGB(26, 9, 18), element = Color3.fromRGB(38, 14, 26), accent = Color3.fromRGB(255, 125, 177) },
Mint = { panel = Color3.fromRGB(7, 20, 14), element = Color3.fromRGB(9, 30, 22), accent = Color3.fromRGB(77, 227, 160) },
Graphite = { panel = Color3.fromRGB(20, 20, 22), element = Color3.fromRGB(30, 30, 33), accent = Color3.fromRGB(200, 200, 206) },
}

tcc.themeOrder = { _d("ZABYDw"), _d("fQxUCh0"), _d("dwJTDgE"), _d("YQ5aHgES"), _d("fwZfHw"), _d("dR1QGxsaRlc") }

local yd = _d("cyxzSyEWUFsdRQNcAFdGG1gFFAA")

function tcc.saves()
local xmbr, fnmq = pcall(function()
return tf:RefreshConfigList()
end)

if xmbr and type(fnmq) == _d("Rg5TBxY") then
table.sort(fnmq)
return fnmq
end

return {}
end

function tcc.autoLoadName()
local etdy, bbl = pcall(function()
if isfile and isfile(yd .. _d("HQ5EHxwfXVMLHx8LBw")) then
return readfile(yd .. _d("HQ5EHxwfXVMLHx8LBw"))
end
end)

if etdy and type(bbl) == _d("QRtDAh0U") then
bbl = bbl:gsub(_d("bEpCQA"), _d("")):gsub(_d("FxwaTw"), _d(""))

if bbl ~= _d("") then
return bbl
end
end

return nil
end

function tcc.setAutoLoad(fqsy)

return (pcall(function()
writefile(yd .. _d("HQ5EHxwfXVMLHx8LBw"), fqsy or _d(""))
end))
end

function tcc.delete(xhb)
if type(xhb) ~= _d("QRtDAh0U") or xhb == _d("") then
return false, _d("YgZSAFMSEkEORw5TFVteChENGgFBRkE")
end

local beq = yd .. _d("HQ") .. xhb .. _d("HAVCBB0")
local qild = false

pcall(function()
qild = isfile ~= nil and isfile(beq) == true
end)

if not qild then
return false, _d("ZgdUGRZTW0FPXwRTFVteChEIEh9eVwsR") .. xhb .. _d("HA")
end

local dsd, uigo = pcall(function()
delfile(beq)
end)

if not dsd then
return false, tostring(uigo)
end

if tcc.autoLoadName() == xhb then
tcc.setAutoLoad(_d(""))
end

if tcc.selected == xhb then
tcc.selected = nil
tcc.selectionShown = nil
end

tcc.knownSaves = nil
tcc.savesAt = 0

return true
end

function tcc.save(fmu)
if type(fmu) ~= _d("QRtDAh0U") or fmu:gsub(_d("Fxw"), _d("")) == _d("") then
return false, _d("dQZHDlMHWldPQgoFFhJTT18KHhYSVAZDGAdd")
end

local vbrw, omxi, byq = pcall(function()
return tf:SaveConfig(fmu)
end)

if not vbrw then
return false, tostring(omxi)
end

if omxi ~= true then
return false, tostring(byq or _d("RgdUSxUaXldPUgQGH1YSAV4fUxFXEhhDAgcHV1w"))
end

return true
end

function tcc.replayOff(rvro)
local pfe, voj = pcall(function()
return readfile(yd .. _d("HQ") .. rvro .. _d("HAVCBB0"))
end)

if not pfe or type(voj) ~= _d("QRtDAh0U") then
return
end

local cti
pfe, cti = pcall(function()
return game:GetService(_d("ehtFGyAWQEQGUg4")):JSONDecode(voj)
end)

if not pfe or type(cti) ~= _d("Rg5TBxY") or type(cti.objects) ~= _d("Rg5TBxY") then
return
end

for hujw, ks in ipairs(cti.objects) do
if ks.type == _d("ZgBWDB8W") and ks.state == false and ks.flag then
local vsyj = tf.Options[ks.flag]

if vsyj then
pcall(function()
vsyj:UpdateState(false)
end)
end
end
end
end

function tcc.load(aezw)
if type(aezw) ~= _d("QRtDAh0U") or aezw == _d("") then
return false, _d("YgZSAFMSEkEORw5TFVteChENGgFBRkE")
end

tcc.loading = true
ywu = true

local ysa, syh, zoo = pcall(function()
return tf:LoadConfig(aezw)
end)

if not ysa then
tcc.loading = false
ywu = false

return false, tostring(syh)
end

if syh ~= true then
tcc.loading = false
ywu = false

return false, tostring(zoo or _d("RgdUSxUaXldPUgQGH1YSAV4fUxFXEh1UChc"))
end

task.wait(0.25)
tcc.replayOff(aezw)
tcc.loading = false
ywu = false

return true
end

tcc.uiPath = _d("cyxzM1wGWxwFQgQd")

function tcc.saveUi()
if type(writefile) ~= _d("VBpfCAcaXVw") then
return false
end

if tcc.restoring then
return false
end

local gkhf = tcc.accent

local lpi = {
theme = tcc.theme,
scale = tonumber(string.format(_d("F0EDDQ"), tcc.scaleTarget or 1)),
accent = gkhf and string.format(_d("FwsdThdfF1Y"),
math.floor(gkhf.R * 255 + 0.5),
math.floor(gkhf.G * 255 + 0.5),
math.floor(gkhf.B * 255 + 0.5)) or nil,
}

return pcall(function()
if type(makefolder) == _d("VBpfCAcaXVw") and type(isfolder) == _d("VBpfCAcaXVw") and not isfolder(_d("cyxzMw")) then
makefolder(_d("cyxzMw"))
end

writefile(tcc.uiPath, game:GetService(_d("ehtFGyAWQEQGUg4")):JSONEncode(lpi))
end)
end

function tcc.loadUi()
if type(readfile) ~= _d("VBpfCAcaXVw") or type(isfile) ~= _d("VBpfCAcaXVw") then
return nil
end

local hxfr, muio = pcall(function()
if not isfile(tcc.uiPath) then
return nil
end

return readfile(tcc.uiPath)
end)

if not hxfr or type(muio) ~= _d("QRtDAh0U") or muio == _d("") then
return nil
end

local yhw
hxfr, yhw = pcall(function()
return game:GetService(_d("ehtFGyAWQEQGUg4")):JSONDecode(muio)
end)

if not hxfr or type(yhw) ~= _d("Rg5TBxY") then
return nil
end

tcc.restoring = true

if type(yhw.theme) == _d("QRtDAh0U") and tcc.presets[yhw.theme] then
tcc.theme = yhw.theme

pcall(function()
tcc.themeDropdown:UpdateSelection(yhw.theme)
tcc.themeDropdown:UpdateName(_d("ZgdUBhZJEg") .. yhw.theme)
end)
end

local vx, za, jats = tostring(yhw.accent or _d("")):match(_d("bEcUD1haHhpKVUBaXxoXCxpCVw"))

if vx then
local bwdf = Color3.fromRGB(tonumber(vx), tonumber(za), tonumber(jats))

tcc.accent = bwdf

pcall(function()
tcc.accentPicker:SetColor(bwdf)
end)
else
tcc.accent = nil

local dbq = tcc.presets[tcc.theme] or tcc.presets.Void

pcall(function()
tcc.accentPicker:SetColor(dbq.accent)
end)
end

local hwca = tonumber(yhw.scale)

if hwca then
hwca = math.clamp(hwca, 0.5, tcc.scaleCeiling())

tcc.scaleTarget = hwca
tcc.scaleAnchor = nil

pcall(function()
tcc.scaleSlider:UpdateValue(hwca)
end)
end

tcc.applyTheme()

tcc.restoring = false
tcc.saveUi()

return yhw
end

tcc.bossModePath = _d("cyxzM1wRXUEcHwEAHFw")

function tcc.saveBossMode(itr)
if type(writefile) ~= _d("VBpfCAcaXVw") or type(itr) ~= _d("QRtDAh0U") or itr == _d("") then
return false
end

return pcall(function()
if type(makefolder) == _d("VBpfCAcaXVw") and type(isfolder) == _d("VBpfCAcaXVw") and not isfolder(_d("cyxzMw")) then
makefolder(_d("cyxzMw"))
end

writefile(tcc.bossModePath, game:GetService(_d("ehtFGyAWQEQGUg4")):JSONEncode({ mode = itr }))
end)
end

function tcc.loadBossMode()
if type(readfile) ~= _d("VBpfCAcaXVw") or type(isfile) ~= _d("VBpfCAcaXVw") then
return nil
end

local upj, hpt = pcall(function()
if not isfile(tcc.bossModePath) then
return nil
end

return readfile(tcc.bossModePath)
end)

if not upj or type(hpt) ~= _d("QRtDAh0U") or hpt == _d("") then
return nil
end

local ncq

upj, ncq = pcall(function()
return game:GetService(_d("ehtFGyAWQEQGUg4")):JSONDecode(hpt)
end)

if not upj or type(ncq) ~= _d("Rg5TBxY") or type(ncq.mode) ~= _d("QRtDAh0U") then
return nil
end

return ncq.mode
end

function tcc.colourKey(rauv)
return math.floor(rauv.R * 255) .. _d("Hg") .. math.floor(rauv.G * 255) .. _d("Hg") .. math.floor(rauv.B * 255)
end

function tcc.guiRoot()

if not enj() then
return nil
end

if tcc.root and tcc.root.Parent then
return tcc.root
end

local zfyb = gethui and gethui() or game:GetService(_d("cQBDDjQGWw"))

for amok, qz in ipairs(zfyb:GetChildren()) do
if qz:IsA(_d("YQxDDhYddUcG")) and qz:FindFirstChild(_d("cA5CDg")) then
tcc.root = qz.Base

return tcc.root
end
end

return nil
end

function tcc.applyTheme()
local jpw = tcc.guiRoot()
local uwv = tcc.presets[tcc.theme] or tcc.presets.Void

if not jpw then
return false
end

local pqp = {
panel = uwv.panel,
element = uwv.element,
accent = tcc.accent or uwv.accent,
}

local mfer = {}

for ixeq, cuai in pairs(tcc.presets) do
mfer[tcc.colourKey(cuai.panel)] = _d("Qg5fDh8")
mfer[tcc.colourKey(cuai.element)] = _d("VwNUBhYdRg")
mfer[tcc.colourKey(cuai.accent)] = _d("UwxSDh0H")
end

mfer[tcc.colourKey(pqp.accent)] = _d("UwxSDh0H")

if mfer[tcc.colourKey(jpw.BackgroundColor3)] == _d("Qg5fDh8") then
jpw.BackgroundColor3 = pqp.panel
end

for ptb, dxs in ipairs(jpw:GetDescendants()) do
if dxs:IsA(_d("dRpYJBEZV1Eb")) then
local qw = mfer[tcc.colourKey(dxs.BackgroundColor3)]

if qw then
dxs.BackgroundColor3 = pqp[qw]
end
elseif dxs:IsA(_d("ZyZiHwEcWVc")) then
if mfer[tcc.colourKey(dxs.Color)] == _d("UwxSDh0H") then
dxs.Color = pqp.accent
end
end

if dxs:IsA(_d("ewJQDBY/U1AKXQ")) and dxs.Name == _d("Zg5TIh4SVVc") and dxs.Image ~= _d("") then
dxs.ImageColor3 = pqp.accent
dxs.ImageTransparency = 0
dxs:SetAttribute(_d("cyxzMycSUHMMUg4dBw"), pqp.accent)

if not dxs:GetAttribute(_d("cyxzMycSUGYGXx8")) then
dxs:SetAttribute(_d("cyxzMycSUGYGXx8"), true)

local function ukx()
local bvl = dxs:GetAttribute(_d("cyxzMycSUHMMUg4dBw"))

if bvl and dxs.ImageColor3 ~= bvl then
dxs.ImageColor3 = bvl
end

if dxs.ImageTransparency ~= 0 then
dxs.ImageTransparency = 0
end
end

dxs:GetPropertyChangedSignal(_d("ewJQDBYnQFMBQhsSAVdcDEg")):Connect(ukx)
dxs:GetPropertyChangedSignal(_d("ewJQDBYwXV4AQ1g")):Connect(ukx)
end
end
end

return true
end

local gmqp = vzvj:Tab({
Name = _d("fw5B"),
Image = _d("QA1JCgAAV0YGVVFcXAQCXABbREYLAV4"),
})

local bz = {
holdFor = 25,
fly = {
on = false,
speed = 55,
connection = nil,
},
islands = {
{ name = _d("fgBTCQo"), kind = _d("RQBDBxc"), arg = _d("XgBTCQo") },
{ name = _d("cw1QBRccXFcLESIAH1NcCw"), kind = _d("WxxdCh0X"), arg = _d("Uw1QBRccXFcLbgIAH1NcCw") },
{ name = _d("ZhhYBVMxV1MMWQ4A"), kind = _d("WxxdCh0X"), arg = _d("RhhYBSwRV1MMWQ4A"), note = _d("EjtZDlMAV0AZVBlTF0BdH0JLGgcSRwFFAh9TS10aEQMSBVcSHFACHxZWEhtZDgEWHA") },
{ name = _d("ZQZfDx4aXl5PeBgfFg"), kind = _d("WxxdCh0X"), arg = _d("RQZfDx4aXl4wWBgfFg"), note = _d("EjtZDlMAV0AZVBlTF0BdH0JLGgcSRwFFAh9TS10aEQMSBVcSHFACHxZWEhtZDgEWHA") },
},
npcs = {
{ name = _d("cQ5DD1M+V0AIVA"), npc = _d("VBpCDiwdQlE"), attr = _d("fD9yIhc"), at = Vector3.new(-272, 33, -40347) },
{ name = _d("dxdBDhcaRlsAXxg"), npc = _d("dxdBDhcaRlsAXyUjMA"), attr = _d("dxdBDhcaRlsAXyUjMA"), at = Vector3.new(-347, 35, -40361) },
{ name = _d("dgpSBB0ARkAaUh8"), npc = _d("VgpSBB0ARkAaUh8sHUJR"), attr = _d("fD9yIhc"), at = Vector3.new(-264, 33, -40331) },
{ name = _d("cR1QDQc"), npc = _d("UR1QDQcsXEIM"), attr = _d("fD9yIhc"), at = Vector3.new(-330, 33, -40277) },
{ name = _d("YQRYBx9TZkAKVA"), npc = _d("YQRYBx8nQFcKfzsw"), attr = _d("YQRYBx8nQFcKfzsw"), at = Vector3.new(-290, 32, -40283) },
{ name = _d("cQ5DD1M6XFYKSQ"), npc = _d("UQ5DDywaXFYKSTQdA1E"), attr = _d("fD9yIhc"), at = Vector3.new(-313, 33, -40282) },
{ name = _d("Yg5SAFM+V0AMWQodBw"), npc = _d("Qg5SACweV0AMWQodBw"), attr = _d("fD9yIhc"), at = Vector3.new(-301, 33, -40270) },
{ name = _d("dhpfDBYcXA"), npc = _d("VhpfDBYcXG0BQQg"), attr = _d("fD9yIhc"), at = Vector3.new(-339, 41, -40399) },
{ name = _d("dAZCAxYBX1MB"), npc = _d("dAZCAxYBX1MBfzsw"), attr = _d("dAZCAxYBX1MBfzsw"), at = Vector3.new(-493, 14, -40262) },
{ name = _d("YQpSGRYHEnMBVgcWAQ"), npc = _d("YQpSGRYHc1wIXQ4BPWJx"), attr = _d("YQpSGRYHc1wIXQ4BPWJx"), at = Vector3.new(-209, 34, -40382) },
{ name = _d("eg5dBxwEV1cBETgbHEI"), npc = _d("YhpcGxgaXBIiVBkQG1NcGw"), at = Vector3.new(-29989, 78, -30259) },
{ name = _d("YQ5SGRoVW1EKESofB1NA"), landmark = _d("YQ5SGRoVW1EKcAcHEkA"), island = _d("Uw1QBRccXFcLbgIAH1NcCw"), at = Vector3.new(-3548, 11, -40462) },
{ name = _d("eg5DDxAcQFdPZQQEFkA"), npc = _d("eg5DDxAcQFc7XhwWAQ"), island = _d("Uw1QBRccXFcLbgIAH1NcCw"), at = Vector3.new(-3795, 25, -40250) },
{ name = _d("exxdCh0XEnQGQgMWAV9TAQ"), npc = _d("exxdCh0XdFscWQ4BHlNcIWEo"), attr = _d("exxdCh0XdFscWQ4BHlNcIWEo"), island = _d("Uw1QBRccXFcLbgIAH1NcCw"), at = Vector3.new(-3825, 23, -40260) },
{ name = _d("dgZWDBYB"), npc = _d("dgZWDBYBfGIs"), attr = _d("dgZWDBYBfGIs"), island = _d("RhhYBSwRV1MMWQ4A"), at = Vector3.new(-5998, 26, -40565) },
{ name = _d("YQpSGRYHEnYGVgwWAQ"), npc = _d("YQpSGRYHdlsIVg4BPWJx"), attr = _d("YQpSGRYHdlsIVg4BPWJx"), island = _d("RQZfDx4aXl4wWBgfFg"), at = Vector3.new(-7740, 17, -40343) },
},
}

function bz.hold()
msip.tpHoldUntil = os.clock() + bz.holdFor

msip.deepPhase = _d("WwtdDg")
msip.deepStageAt = 0
msip.phase = _d("WwtdDg")
msip.nextCastAt = 0
msip.watchdogAt = 0

return bz.holdFor
end

function bz.point(okh)
local lrnj

if okh.landmark then
lrnj = workspace:FindFirstChild(okh.landmark)
else
local sx = workspace:FindFirstChild(_d("fD9yGA"))

if sx then
for vkq, pan in ipairs(sx:GetChildren()) do
local mstk

if okh.attr then
mstk = pan:GetAttribute(okh.attr) == okh.npc
else
mstk = pan.Name == okh.npc
end

if mstk then
lrnj = pan
break
end
end
end
end

if lrnj then
local fgp = lrnj.PrimaryPart
or lrnj:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"), true)
or lrnj:FindFirstChildWhichIsA(_d("cA5CDiMSQEY"), true)

if fgp then
return fgp.Position
end
end

return okh.at
end

function bz.resume()
if not msip.enabled then
return
end

local kub = adn.Character
local fzym = kub and kub:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not fzym or (fzym.Position - vd).Magnitude < 40 then
return
end

pcall(function()
msip.recover()
end)
end

function bz.standAt(osd)
local frp = adn.Character
local ipb = frp and frp:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not ipb or not osd then
return false
end

local biv = RaycastParams.new()
biv.FilterType = Enum.RaycastFilterType.Exclude
biv.FilterDescendantsInstances = { frp }

local szp = workspace:Raycast(osd + Vector3.new(0, 10, 0), Vector3.new(0, -80, 0), biv)
local afp = osd.Y

if szp and szp.Instance.Name ~= _d("ZQ5FDgE") then
local jnzs = szp.Position.Y + 3.2

if math.abs(jnzs - osd.Y) <= 8 then
afp = jnzs
end
end

local gqr = Vector3.new(ipb.Position.X - osd.X, 0, ipb.Position.Z - osd.Z)

if gqr.Magnitude < 1 then
gqr = Vector3.new(4, 0, 0)
else
gqr = gqr.Unit * 4
end

local cj = Vector3.new(osd.X + gqr.X, afp, osd.Z + gqr.Z)

ipb.CFrame = CFrame.new(cj)

return true
end

function bz.unlock()
local xv = {
{ id = _d("Uw1QBRccXFcLbgIAH1NcCw"), at = Vector3.new(-3825, 24, -40260) },
{ id = _d("RhhYBSwRV1MMWQ4A"), at = Vector3.new(-6180, 40, -40350) },
{ id = _d("RQZfDx4aXl4wWBgfFg"), at = Vector3.new(-7480, 30, -40350) },
}
local vjs = {}

for svb, ntme in ipairs(xv) do
local esit = ic.FishingGetState:InvokeServer()

if esit and esit.areas and esit.areas[ntme.id] == true then
table.insert(vjs, ntme.id .. _d("CE9QBwEWU1YWEQQDFlw"))
else
bz.hold()
bz.standAt(ntme.at)
task.wait(2.4)

local pzv = ic.FishingGetState:InvokeServer()

table.insert(vjs, ntme.id .. (pzv and pzv.areas and pzv.areas[ntme.id] and _d("CE9EBR8cUVkKVQ") or _d("CE9XChofV1Y")))
end
end

bz.hold()
pcall(function()
ic.TeleportToWorld:FireServer(_d("XgBTCQo"))
end)
task.wait(2.5)

return table.concat(vjs, _d("Eq2GSw"))
end

function bz.flyToggle(ybpt)
bz.fly.on = ybpt

if not ybpt then
return _d("dANISxwVVBw")
end

local llz = adn.Character
local fvir = llz and llz:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not fvir then
return _d("fAARCBsSQFMMRQ4BU0ZdT10CFQcc")
end

bz.fly.height = fvir.Position.Y

if bz.fly.connection then
return _d("dANISxwdHA")
end

local klr = game:GetService(_d("ZxxUGTodQkcbYg4BBVtRCg"))

bz.fly.connection = game:GetService(_d("YBpfOBYBRFsMVA")).Heartbeat:Connect(function(ylh)
if not bz.fly.on then
return
end

local fxz = adn.Character
local ck = fxz and fxz:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not ck then
return
end

local oobn = workspace.CurrentCamera
local unp = Vector3.zero

if oobn then
local vuw = oobn.CFrame.LookVector
local ettl = Vector3.new(vuw.X, 0, vuw.Z)

if ettl.Magnitude > 0.01 then
ettl = ettl.Unit
end

local neh = Vector3.new(ettl.Z, 0, -ettl.X)

if klr:IsKeyDown(Enum.KeyCode.W) then
unp = unp + ettl
end

if klr:IsKeyDown(Enum.KeyCode.S) then
unp = unp - ettl
end

if klr:IsKeyDown(Enum.KeyCode.D) then
unp = unp + neh
end

if klr:IsKeyDown(Enum.KeyCode.A) then
unp = unp - neh
end
end

local uhwm = 0

if klr:IsKeyDown(Enum.KeyCode.Space) then
uhwm = 1
elseif klr:IsKeyDown(Enum.KeyCode.LeftControl) then
uhwm = -1
end

local kpje = bz.fly.speed or 55
local juf = unp * kpje * ylh + Vector3.new(0, uhwm * kpje * 0.6 * ylh, 0)

if juf.Magnitude < 0.001 then
return
end

ck.CFrame = ck.CFrame + juf
ck.AssemblyLinearVelocity = Vector3.zero
end)

return _d("dANISxwdHA")
end

function bz.go(vujs)
bz.hold()

if vujs.kind == _d("RQBDBxc") then
pcall(function()
ic.TeleportToWorld:FireServer(vujs.arg)
end)

return _d("YQpfH1MHWldP") .. vujs.name .. _d("EhtUBxYDXUAbHw")
end

if vujs.kind == _d("WxxdCh0X") then
pcall(function()
ic.FishingIslandTeleport:FireServer(vujs.arg)
end)

return _d("YQpfH1MHWldP") .. vujs.name .. _d("EhtUBxYDXUAbHw") .. tostring(vujs.note or _d(""))
end

local qbh = bz.point(vujs)
local adf = adn.Character
local xpmv = adf and adf:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if qbh and xpmv and (xpmv.Position - qbh).Magnitude > 1500 then
pcall(function()
if vujs.island then
ic.FishingIslandTeleport:FireServer(vujs.island)
else
ic.TeleportToWorld:FireServer(_d("XgBTCQo"))
end
end)

task.wait(vujs.island and 3.5 or 4.5)

qbh = bz.point(vujs)

xpmv = adn.Character and adn.Character:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if qbh and xpmv and (xpmv.Position - qbh).Magnitude > 1500 then
return vujs.name .. _d("EgZCSxwdEg") .. tostring(vujs.island or _d("RgdUSx8cUFAW"))
.. _d("EkIRHxsWElUOXA5TAVdUGkIOAFNGWg5FSwcBW0JPRAUHGl4SBkVLGxJBEg1UDh1TQFcOUgMWFxJdAVIOXQ")
end
end

if not qbh then
return vujs.name .. _d("EgZCSx0cRhIGX0sHG1tBT0YEAR9WHA")
end

if not bz.standAt(qbh) then
return _d("fAARCBsSQFMMRQ4BU0ZdT1wEBRYc")
end

task.delay(bz.holdFor + 2, function()
pcall(bz.resume)
end)

return _d("YRteBBdTUFccWA8WUw") .. vujs.name .. _d("HA")
end

bz.islandSection = gmqp:Section({ Side = _d("fgpXHw") })
bz.islandSection:Header({ Name = _d("exxdCh0XQRKfruTunIq9") })

bz.npcSection = gmqp:Section({ Side = _d("YAZWAwc") })
bz.npcSection:Header({ Name = _d("fD9yGFODraHi") })

for ehe, kdzc in ipairs(bz.islands) do
bz.islandSection:Button({
Name = kdzc.name,
Callback = function()
task.spawn(function()
local rp = bz.go(kdzc)

ib:Notify({
Title = _d("ZgpdDgMcQEY"),
Description = rp,
Lifetime = 6,
})
end)
end,
})
end

bz.state = msip
bz.tab = gmqp
bz.islandSection:Button({
Name = _d("ZwFdBBAYElMDXUsaAF5TAVUY"),
Callback = function()
task.spawn(function()
local xt = bz.unlock()

ib:Notify({
Title = _d("exxdCh0XQQ"),
Description = xt,
Lifetime = 10,
})
end)
end,
})

bz.flySection = gmqp:Section({ Side = _d("fgpXHw") })
bz.flySection:Header({ Name = _d("dANIS5Hvut3Xvg") })

bz.flySection:Toggle({
Name = _d("dANIS1skc2ErHUsgA1NRChEeA18ScRtDB1MXXUUBGA"),
Default = false,
Callback = function(uqzj)
local ioi = bz.flyToggle(uqzj)

ib:Notify({
Title = _d("dANI"),
Description = ioi,
Lifetime = 4,
})
end,
}, _d("UwxTEywVXks"))

getgenv().ACBXTeleport = bz

getgenv().ACBXDeepWater = rtx

pcall(rtx.dropStale)

for nwu, xc in ipairs(bz.npcs) do
bz.npcSection:Button({
Name = xc.name,
Callback = function()
task.spawn(function()
local jqo = bz.go(xc)

ib:Notify({
Title = _d("ZgpdDgMcQEY"),
Description = jqo,
Lifetime = 6,
})
end)
end,
})
end

local rfj = spe:Section({ Side = _d("fgpXHw") })

rfj:Header({ Name = _d("dgZWDBodVRKNquScy70") })

local hdj = {
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

local aeo = (tonumber(getgenv().ACBXDigGeneration) or 0) + 1
getgenv().ACBXDigGeneration = aeo

function hdj.read()
local hylc, hyb = pcall(function()
return ic.DigGetState:InvokeServer()
end)

return hylc and type(hyb) == _d("Rg5TBxY") and hyb or nil
end

function hdj.call(lh, hbm)
local wy, pea = pcall(function()
return ic.DigShop:InvokeServer(lh, hbm)
end)

task.wait(2.5)

return wy and pea == true
end

function hdj.wear()
local xs = adn.Character

if not xs then
return false
end

local wkn = xs:FindFirstChildOfClass(_d("ehpcCh0cW1Y"))
local ef = adn:FindFirstChild(_d("cA5SAAMSUVk"))

if not (wkn and ef) then
return false
end

wkn:UnequipTools()
task.wait(0.4)

for zuz = 1, 8 do
for gun, mh in ipairs(ef:GetChildren()) do
if mh:IsA(_d("ZgBeBw")) and mh.Name:find(_d("bCtYDCAbXUQKXQ")) then
wkn:EquipTool(mh)

return true
end
end

task.wait(0.5)
end

return false
end

function hdj.run()
local eq = hdj.read()

if not eq then
return _d("ZgdUSxcaVRIcWQQDU1tBT18EB1NTXBxGDgEaXFVB")
end

local klz = {}

pcall(function()
local bee = ic.FishingGetState:InvokeServer()

klz = bee and bee.areas or {}
end)

if not (klz.abandoned_island and klz.twin_beaches and klz.windmill_isle) then
bz.unlock()
task.wait(1)
end

local agcw

for yv, qg in ipairs(bz.npcs) do
if qg.name == _d("dgZWDBYB") then
agcw = qg
break
end
end

if not agcw then
return _d("ZgdUSycBV1McRBkWU3pHAUUOAVNbQU9fBAdTW1xPRQMaABJFAEMHF10")
end

bz.go(agcw)
task.wait(2)

local awh = adn.Character
local bwjx = awh and awh:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))
local uypq = bz.point(agcw)

if not (bwjx and uypq) or (bwjx.Position - uypq).Magnitude > 40 then
return _d("cQBEBxdTXF0bERkWElFaT0UDFlNmQApQGAYBVxInRAUHFkAc")
end

eq = hdj.read() or eq

local ww = false
local asr = eq.shovels and eq.shovels.shovel_basic == true
local xggq = eq.detectors and eq.detectors.detector_basic == true

if not (asr and xggq) then
ww = hdj.call(_d("cQNQAh4gRlMdRQ4B"), _d("QQdeHRYfbVAOQgIQ"))
eq = hdj.read() or eq
end

if eq.equippedShovel ~= _d("QQdeHRYfbVAOQgIQ") then
hdj.call(_d("dx5EAgMgWl0ZVAc"), _d("QQdeHRYfbVAOQgIQ"))
end

if eq.equippedDetector ~= _d("VgpFDhAHXUAwUwoAGlE") then
hdj.call(_d("dx5EAgM3V0YKUh8cAQ"), _d("VgpFDhAHXUAwUwoAGlE"))
end

eq = hdj.read() or eq

if eq.equippedShovel == _d("QQdeHRYfbVAOQgIQ") and eq.equippedDetector == _d("VgpFDhAHXUAwUwoAGlE") then
local napx = hdj.wear()
local qkv = false

if napx and msip.enabled then
msip.autoFishWanted = false
qkv = true

nfc(false)

pcall(function()
inp:UpdateState(false)
end)
end

return (ww and _d("cQNQAh4WVhIOXw9TFkNHBkEbFhc") or _d("dx5EAgMDV1Y"))
.. _d("EhtZDlMxU0EGUksgG11ECl1LEh1WEi1QGBoQEnYKRQ4QB11AQQ")
.. (qkv and _d("Ei5EHxxTdFscWUscFVQSQhEfGxYSQQdeHRYfEloOQksHG1cSG14EH1NBXgBFRQ") or _d(""))
end

return _d("ZgdUSzESQVsMETgbHERXAxEEAVN2VxtUCAccQBIGQksAB1teAxEGGgBBWwFWRQ")
end

function hdj.unlock()
if hdj.busy then
return _d("cwNDDhIXSxIYXhkYGlxVQQ")
end

hdj.busy = true

local twu, ugc = pcall(hdj.run)

hdj.busy = false

if not twu then
return _d("dgZWDBodVRIJUAIfFlYITw") .. tostring(ugc)
end

return ugc
end

hdj.icon = function()
local ufwj = gethui()

for doh, nygt in ipairs(ufwj:QueryDescendants(_d("ewJQDBY/U1AKXQ"))) do
if nygt.Name == _d("Zg5TIh4SVVc") then
local hije = nygt.Parent
local umvi = hije and hije:FindFirstChild(_d("Zg5TOAQaRlEHVBk9El9X"))

if umvi and umvi.Text == _d("dgZWDBodVQ") then
if nygt:GetAttribute(_d("cyxzMzcaVXsMXgU")) then
return true
end

nygt:SetAttribute(_d("cyxzMzcaVXsMXgU"), true)
nygt.Image = _d("")
nygt.BackgroundTransparency = 1

local zlcy = Color3.fromRGB(233, 236, 242)

for bld, cwj in ipairs(ufwj:QueryDescendants(_d("ewJQDBY/U1AKXQ"))) do
if cwj.Name == _d("Zg5TIh4SVVc") and cwj ~= nygt and cwj.Image ~= _d("") then
zlcy = cwj.ImageColor3
break
end
end

local function ysxk(mzw, eus, djbc, mr, idt, gfm)
local zt = Instance.new(_d("dB1QBhY"))

zt.Size = UDim2.fromOffset(djbc, mr)
zt.Position = UDim2.fromOffset(mzw, eus)
zt.BackgroundColor3 = zlcy
zt.BorderSizePixel = 0
zt.Parent = nygt

if gfm then
zt.Rotation = gfm
end

if idt then
local ba = Instance.new(_d("ZyZyBAEdV0A"))

ba.CornerRadius = UDim.new(0, idt)
ba.Parent = zt
end

return zt
end

ysxk(1.1, 10.2, 7, 6.4, 1.6, -45)
ysxk(3.1, 8.3, 11, 2.2, 0.8, -45)
ysxk(9.8, 4.4, 5.6, 2, 0.8, 45)

return true
end
end
end

return false
end

task.defer(function()
for as = 1, 20 do
if hdj.icon() then
break
end

task.wait(0.25)
end
end)

rfj:Button({
Name = _d("ZwFdBBAYElYGVgwaHVU"),
Callback = function()
task.spawn(function()
ib:Notify({
Title = _d("dgZWDBodVQ"),
Description = _d("egpQDxodVRIbXksHG1cSO0MOEgBHQAoRIwYdRlcdHw"),
Lifetime = 5,
})

local ciux = hdj.unlock()

ib:Notify({
Title = _d("dgZWDBodVQ"),
Description = ciux,
Lifetime = 10,
})
end)
end,
})

hdj.statusParagraph = rfj:Paragraph({
Header = _d("dgZWSwAHU0YK"),
Body = _d("YApQDxodVRIbWQ5TF1tVT0IKBRYcHEE"),
})

hdj.data = require(gx.ModuleScripts.DigData)

function hdj.zoneAt(mf)
for qir, wvz in ipairs(game:GetService(_d("cQBdBxYQRlsAXzgWAURbDFQ")):GetTagged(hdj.data.ZoneTag)) do
if wvz:IsA(_d("cA5CDiMSQEY")) and wvz:IsDescendantOf(workspace) then
local yw = wvz.CFrame:PointToObjectSpace(mf)
local srdx = wvz.Size * 0.5

if math.abs(yw.X) <= srdx.X and math.abs(yw.Y) <= srdx.Y and math.abs(yw.Z) <= srdx.Z then
return true
end
end
end

return false
end

function hdj.onIsland()
for xhm, fsp in ipairs(game:GetService(_d("cQBdBxYQRlsAXzgWAURbDFQ")):GetTagged(hdj.data.ZoneTag)) do
if fsp:IsA(_d("cA5CDiMSQEY")) and fsp:IsDescendantOf(workspace) then
return true
end
end

return false
end

function hdj.bestShovel(hc)
local vdok = hc and hc.shovels or {}
local qejj = nil

for ovvc, vxz in ipairs(hdj.data.Shovels) do
if vdok[vxz.id] == true then
qejj = vxz.id
end
end

return qejj
end

function hdj.equipBest()
local um = hdj.read()
local fej = hdj.bestShovel(um)

if not fej then
return nil
end

if um.equippedShovel ~= fej then
hdj.call(_d("dx5EAgMgWl0ZVAc"), fej)
end

hdj.wear()

return fej
end

function hdj.bestDetector(cnuz)
local vdml = cnuz and cnuz.detectors or {}
local neg = nil

for cib, cev in ipairs(hdj.data.Detectors) do
if vdml[cev.id] == true then
neg = cev.id
end
end

return neg
end

function hdj.equipBestDetector()
local tdr = hdj.read()
local gl = hdj.bestDetector(tdr)

if not gl then
return nil
end

if tdr.equippedDetector ~= gl then
hdj.call(_d("dx5EAgM3V0YKUh8cAQ"), gl)
end

return gl
end

function hdj.leaveNpc()
local fqx = adn.Character
local yyf = fqx and fqx:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))
local qig = fqx and fqx:FindFirstChildOfClass(_d("ehpcCh0cW1Y"))

if not (yyf and qig) then
return false
end

local gtjo

for oyzi, ata in ipairs(bz.npcs) do
if ata.name == _d("dgZWDBYB") then
gtjo = ata
break
end
end

local ispc = gtjo and bz.point(gtjo)

if not ispc then
return false
end

local bll = Vector3.new(yyf.Position.X - ispc.X, 0, yyf.Position.Z - ispc.Z)

if bll.Magnitude >= 16 then
return true
end

if bll.Magnitude < 1 then
bll = Vector3.new(0, 0, -1)
end

bll = bll.Unit

local xnu = Vector3.new(ispc.X + bll.X * 22, yyf.Position.Y, ispc.Z + bll.Z * 22)
local dmp = os.clock() + 6

qig:MoveTo(xnu)

while os.clock() < dmp do
local roz = adn.Character
local qjd = roz and roz:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not qjd or (qjd.Position - xnu).Magnitude < 4 then
break
end

task.wait(0.15)
end

pcall(function()
qig:MoveTo(yyf.Position)
end)

return true
end

function hdj.goToSand(ytbn)

if ytbn or not hdj.onIsland() then
if not ytbn then

pcall(function()
ic.TeleportToWorld:FireServer(_d("XgBTCQo"))
end)

local ezz = os.clock() + 15

while not hdj.onIsland() and os.clock() < ezz do
task.wait(0.5)
end
end

local esm

for yop, fr in ipairs(bz.npcs) do
if fr.name == _d("dgZWDBYB") then
esm = fr
break
end
end

if esm then
bz.go(esm)
task.wait(2)
end
end

if hdj.onIsland() then
hdj.leaveNpc()
end
end

function hdj.spot()
local xoh = adn.Character
local vno = xoh and xoh:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not vno then
return nil
end

local otw = vno.CFrame.LookVector
local dkzj = Vector3.new(otw.X, 0, otw.Z)

if dkzj.Magnitude < 0.01 then
dkzj = Vector3.new(0, 0, -1)
end

dkzj = dkzj.Unit

local rek = RaycastParams.new()
rek.FilterType = Enum.RaycastFilterType.Exclude
rek.FilterDescendantsInstances = { xoh }

local function hu(uii, qolf)
local eqr = vno.Position + uii * qolf + Vector3.new(0, 4, 0)
local xopv = workspace:Raycast(eqr, Vector3.new(0, -18, 0), rek)

if xopv and hdj.zoneAt(xopv.Position) then
return xopv.Position
end
end

for md, pr in ipairs({ 4, 7, 10, 2 }) do
local nm = hu(dkzj, pr)

if nm then
return nm
end
end

local kji = Vector3.new(-dkzj.Z, 0, dkzj.X)

for bec, lza in ipairs({ 4, 8 }) do
for tkhh, rb in ipairs({ 1, -1 }) do
for rmvd, vel in ipairs({ 1, 0.5 }) do
local ush = hu((kji * (rb * vel) + dkzj * (1 - vel)).Unit, lza)

if ush then
return ush
end
end
end
end

return nil
end

function hdj.turn()
local ngxk = adn.Character
local huab = ngxk and ngxk:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not huab then
return
end

local sob = huab.CFrame.LookVector
local ws = Vector3.new(sob.X, 0, sob.Z)

if ws.Magnitude < 0.01 then
ws = Vector3.new(0, 0, -1)
end

ws = ws.Unit

local svup = Vector3.new(-ws.Z, 0, ws.X)

huab.CFrame = CFrame.lookAt(huab.Position, huab.Position + svup)
end

hdj.misses = 0

hdj.pending = false

hdj.treasures = {}

pcall(function()
ic.DigUpdate.OnClientEvent:Connect(function(yklp, xh)
if yklp == _d("dgZWORYAR14b") then
hdj.pending = false
hdj.resultAt = os.clock()
elseif yklp == _d("dgZWKBIdUVcD") then
hdj.pending = false
end

if yklp == _d("Zh1UCgAGQFcc") and type(xh) == _d("Rg5TBxY") then
local wzjx = {}
local ltjl = {}

for yjp, ube in pairs(xh) do
local gjg
local azpk

if typeof(ube) == _d("ZApSHxwBAQ") or typeof(ube) == _d("cSlDCh4W") then
gjg = yjp
azpk = ube
elseif type(ube) == _d("Rg5TBxY") then
gjg = ube.id or ube.Id or ube[1]
azpk = ube.position or ube.Position or ube.pos or ube[2]
end

if typeof(azpk) == _d("cSlDCh4W") then
azpk = azpk.Position
end

if gjg ~= nil and typeof(azpk) == _d("ZApSHxwBAQ") then
table.insert(wzjx, { id = gjg, position = azpk })
ltjl[gjg] = true
end
end

hdj.treasures = wzjx
hdj.reported = ltjl

if hdj.target and not ltjl[hdj.target.id] then
hdj.targetGone = true
end
end
end)
end)

function hdj.withinDig(yea)
local cfzp = adn.Character
local dhps = cfzp and cfzp:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not dhps then
return false
end

return (dhps.Position - yea).Magnitude <= 10
end

function hdj.nearestChest(wpvn)
local wuw = adn.Character
local crs = wuw and wuw:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not crs then
return nil
end

local mieb
local yxy

for qag, nqs in ipairs(hdj.treasures or {}) do
local rwn = (nqs.position - crs.Position).Magnitude

if rwn <= wpvn and (not yxy or rwn < yxy) then
mieb = nqs
yxy = rwn
end
end

return mieb
end

function hdj.forget(lfkr)
for lsc, nku in ipairs(hdj.treasures or {}) do
if nku.id == lfkr.id then
table.remove(hdj.treasures, lsc)

return
end
end
end

function hdj.walkTo(fld)
local mth = adn.Character
local bndp = mth and mth:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))
local vpb = mth and mth:FindFirstChildOfClass(_d("ehpcCh0cW1Y"))

if not (bndp and vpb) then
return false
end

local ssq = os.clock() + 12

pcall(function()
vpb:MoveTo(fld)
end)

while os.clock() < ssq do
local ag = adn.Character
local oxni = ag and ag:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not oxni or (oxni.Position - fld).Magnitude <= 4 then
break
end

if hdj.targetGone or not hdj.autoOn
or getgenv().ACBXDigGeneration ~= aeo or not enj() then
break
end

task.wait(0.15)
end

pcall(function()
vpb:MoveTo(bndp.Position)
end)

return true
end

function hdj.digAt(zzl)
hdj.misses = 0
hdj.pending = true

local irx = os.clock()
local jt = pcall(function()
ic.DigAction:FireServer(_d("YRtQGQc"), zzl)
end)

if not jt then
hdj.pending = false
end

local zqka = os.clock() + 6

while hdj.pending and hdj.autoOn and os.clock() < zqka
and getgenv().ACBXDigGeneration == aeo and enj() do
task.wait()
end

hdj.pending = false

return (hdj.resultAt or 0) >= irx
end

function hdj.autoLoop()
local var = false

while hdj.autoOn and enj() and getgenv().ACBXDigGeneration == aeo do
local nizb = auqr and auqr.worldBoss
local jd = nizb ~= nil
and type(nizb.holdsDigging) == _d("VBpfCAcaXVw")
and nizb.holdsDigging() == true

if hdj.shopping then

task.wait(0.5)
elseif jd then

var = true
task.wait(1)
else
if var then

var = false

if type(nizb.setRepeat) == _d("VBpfCAcaXVw") then
nizb.setRepeat(false)
end

hdj.goToSand()
end

local utcn = hdj.chestOn and hdj.nearestChest(70) or nil
local ad = false

if utcn then
hdj.target = utcn
hdj.targetGone = false

hdj.walkTo(utcn.position)

local blm = not hdj.withinDig(utcn.position)
local iwc = hdj.targetGone

if iwc or blm then
hdj.strikes = iwc and 0 or (hdj.strikes + 1)

if iwc or hdj.strikes >= 2 then
hdj.strikes = 0
hdj.forget(utcn)
hdj.skipped = hdj.skipped + 1
end
elseif hdj.digAt(utcn.position) then
hdj.strikes = 0
hdj.forget(utcn)
hdj.dug = hdj.dug + 1
ad = true
else

hdj.strikes = hdj.strikes + 1

if hdj.strikes >= 3 then
hdj.strikes = 0
hdj.forget(utcn)
hdj.skipped = hdj.skipped + 1
end
end

hdj.target = nil
hdj.targetGone = false
end

if not ad then
local bjz = hdj.spot()

if bjz then
hdj.digAt(bjz)
else

hdj.misses = (hdj.misses or 0) + 1

if hdj.misses >= 4 then
hdj.misses = 0
hdj.goToSand(true)
else
hdj.turn()
task.wait(0.25)
end
end
end
end
end
end

function hdj.autoStart()
local hzz = hdj.read()

if not (hzz and hdj.bestShovel(hzz)) then
return _d("fAARGBscRFcDEQQEHVdWTxxLJh1eXQxaSxcaVVUGXwxTFVtAHEVF")
end

local qnz = false

if msip.enabled then
msip.autoFishWanted = false

nfc(false)
pcall(function()
inp:UpdateState(false)
end)

qnz = true
end

vujf = true
hdj.equipBest()

hdj.goToSand()

task.spawn(hdj.autoLoop)

return _d("dgZWDBodVRw") .. (qnz and _d("Ei5EHxxTdFscWUscFVQSQhEfGxYSQQdeHRYfEloOQksHG1cSG14EH1NBXgBFRQ") or _d(""))
end

function hdj.toggleAuto(ieg, jpp)
if ieg then
local mff = hdj.autoOn == true

hdj.chestOn = jpp == true
hdj.switching = true

pcall(function()
local rrp = jpp and hdj.autoToggle or hdj.chestToggle

if rrp then
rrp:UpdateState(false)
end
end)

hdj.switching = false

if mff then
return
end

hdj.autoOn = true

task.spawn(function()
local xxh = hdj.autoStart()

ib:Notify({
Title = jpp and _d("cxpFBFM3W1VPcgMWAEZB") or _d("cxpFBFM3W1U"),
Description = xxh,
Lifetime = 6,
})
end)
else

if hdj.switching then
return
end

hdj.autoOn = false
hdj.pending = false
vujf = false
end
end

hdj.autoToggle = rfj:Toggle({
Name = _d("cxpFBFM3W1U"),
Default = false,
Callback = function(gq)
hdj.toggleAuto(gq, false)
end,
}, _d("VgZWDBodVW0ORB8c"))

hdj.chestToggle = rfj:Toggle({
Name = _d("cxpFBFM3W1VPcgMWAEZB"),
Default = false,
Callback = function(yt)
hdj.toggleAuto(yt, true)
end,
}, _d("VgZWDBodVW0ORB8cLFFaCkIf"))

hdj.chestParagraph = rfj:Paragraph({
Header = _d("cQdUGAcA"),
Body = _d("Zh1QCBgWVghPAUteU3ZHCAtLQ1MfEjxaAgMDV1ZVEVs"),
})

task.spawn(function()
local ov

while enj() and haej do
local uzpk = #(hdj.treasures or {})
local uus = _d("Zh1QCBgWVghP") .. uzpk .. _d("EkIRLwYUCBI") .. hdj.dug .. _d("EkIROBgaQkIKVVFT") .. hdj.skipped

if hdj.chestOn and uzpk > 0 then
local jxra = hdj.nearestChest(70)
local onut = adn.Character
local dhj = onut and onut:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if jxra and dhj then
uus = uus .. _d("OCFUCgEWQUZVEQ") .. math.floor((jxra.position - dhj.Position).Magnitude) .. _d("EhxFHhcA")
end
end

if uus ~= ov then
ov = uus

pcall(function()
hdj.chestParagraph:UpdateBody(uus)
end)
end

task.wait(0.5)
end
end)

function hdj.npcRow()
for gvmz, hvw in ipairs(bz.npcs) do
if hvw.name == _d("dgZWDBYB") then
return hvw
end
end
end

function hdj.shop(lcnh, jps)
local sezk, sqxf, orw, zii = pcall(function()
return ic.DigShop:InvokeServer(lcnh, jps)
end)

if not sezk then
return false, _d("ZgdUSxcaVRIcWQQDU1tBT18EB1NTXBxGDgEaXFVB")
end

return sqxf == true, orw, type(zii) == _d("Rg5TBxY") and zii or nil
end

function hdj.pickShovel(izv)
local twf = izv.shovels or {}
local sm = tonumber(izv.digs) or 0
local ykwa

for jtzw, moo in ipairs(hdj.data.Shovels) do
if not moo.crafted and moo.id ~= _d("QQdeHRYfbVAOQgIQ") and twf[moo.id] ~= true then
local ainf = tonumber(moo.cost) or math.huge

if ainf <= sm and (not ykwa or ainf > (tonumber(ykwa.cost) or 0)) then
ykwa = moo
end
end
end

return ykwa
end

function hdj.pickDetector(wtg)
local qbvd = wtg.detectors or {}
local dchf = tonumber(wtg.digs) or 0
local iu

for dbc, amd in ipairs(hdj.data.Detectors) do
if not amd.crafted and amd.id ~= _d("VgpFDhAHXUAwUwoAGlE") and qbvd[amd.id] ~= true then
local eicb = tonumber(amd.cost) or math.huge

if eicb <= dchf and (not iu or eicb > (tonumber(iu.cost) or 0)) then
iu = amd
end
end
end

return iu
end

function hdj.nextDef(gwi, tusj)
local vfpj

for auj, dfb in ipairs(gwi) do
local ihqe = tonumber(dfb.cost)

if not dfb.crafted and ihqe and tusj[dfb.id] ~= true then
if not vfpj or ihqe < (tonumber(vfpj.cost) or math.huge) then
vfpj = dfb
end
end
end

return vfpj
end

function hdj.toCounter()
local qbo = hdj.npcRow()
local nrv = qbo and bz.point(qbo)
local zqa = adn.Character
local giv = zqa and zqa:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not (nrv and giv) then
return false
end

if (giv.Position - nrv).Magnitude <= 20 then
return true
end

bz.go(qbo)
task.wait(2.2)

zqa = adn.Character
giv = zqa and zqa:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

return giv ~= nil and (giv.Position - nrv).Magnitude <= 20
end

function hdj.upgradeAll()
local pnm = hdj.buyOn == true
local vv = hdj.detBuyOn == true

if not (pnm or vv) then
return nil, _d("fQlXRQ")
end

local pie = hdj.read()

if not pie then
return nil, _d("ZgdUSxcaVRIcWQQDU1tBT18EB1NTXBxGDgEaXFVB")
end

if pnm then
local bfee = hdj.bestShovel(pie)

if bfee and pie.equippedShovel ~= bfee then
hdj.equipBest()
end
end

if vv then
local zek = hdj.bestDetector(pie)

if zek and pie.equippedDetector ~= zek then
hdj.equipBestDetector()
end
end

local vh = pnm and hdj.pickShovel(pie) or nil
local gutk = vv and hdj.pickDetector(pie) or nil

if not (vh or gutk) then
return nil, _d("fAARHgMUQFMLVEsaABJTCVcEARdTUANUSwoWRhw")
end

hdj.shopping = true
hdj.toCounter()

local yaj = {}
local wbn

local function ycma(uovz, phc)
if not phc then
return
end

local exj, yqap = hdj.shop(uovz, phc.id)

if exj then
table.insert(yaj, phc.name)
elseif not wbn then
wbn = tostring(yqap)
end
end

ycma(_d("cBpIOBscRFcD"), vh)
ycma(_d("cBpILxYHV1EbXhk"), gutk)

if #yaj == 0 then
hdj.shopping = false

return nil, _d("cBpISwEWVEccVA9JUw") .. (wbn or _d("XAARCh0ARVcd"))
end

if pnm then
hdj.equipBest()
end

if vv then
hdj.equipBestDetector()
end

if hdj.autoOn then
hdj.leaveNpc()
end

hdj.shopping = false

return table.concat(yaj, _d("EkQR"))
end

function hdj.buyLoop()
while hdj.buyOn or hdj.detBuyOn do
local tjne, uun, lhpi = pcall(hdj.upgradeAll)

hdj.shopping = false

if not tjne then
task.wait(10)
elseif uun then
ib:Notify({
Title = _d("cxpFBFMxR0tPdQIUFFtcCBEsFhJA"),
Description = _d("cABEDBsHElMBVUsWAkdbH0EOF1NGWgoR") .. uun .. _d("HA"),
Lifetime = 6,
})

task.wait(3)
else
task.wait(lhpi == _d("fQlXRQ") and 0.5 or 10)
end
end
end

function hdj.syncBuyLoop()
if not (hdj.buyOn or hdj.detBuyOn) or hdj.buyRunning then
return
end

hdj.buyRunning = true

task.spawn(function()
hdj.buyLoop()

hdj.buyRunning = false
end)
end

rfj:Toggle({
Name = _d("cxpFBFMxR0tPcw4ABxJhB14dFh8"),
Default = false,
Callback = function(yqb)
hdj.buyOn = yqb
hdj.syncBuyLoop()
end,
}, _d("VgZWDBodVW0NRBI"))

rfj:Toggle({
Name = _d("cxpFBFMxR0tPcw4ABxJ2CkUOEAddQA"),
Default = false,
Callback = function(gmz)
hdj.detBuyOn = gmz
hdj.syncBuyLoop()
end,
}, _d("VgZWDBodVW0NRBIsF1dGClIfHAE"))

function hdj.statusText()
local jjlj = hdj.read()

if not jjlj then
return _d("ZgdUSxcaVRIcWQQDU1tBT18EB1NTXBxGDgEaXFVB")
end

local beex = tonumber(jjlj.digs) or 0
local us = { _d("dgZWGElT") .. beex }

local function swd(kkj, aqmc)
if not aqmc then
return kkj .. _d("CE9UHRYBS0YHWAUUU11FAVQPXQ")
end

local mofv = tonumber(aqmc.cost) or 0
local ao = mofv - beex

return kkj .. _d("CE8") .. tostring(aqmc.name) .. _d("EkIR") .. mofv
.. (ao <= 0 and _d("EkdDDhIXSxs") or (_d("Ekc") .. ao .. _d("EhteSxQcGw")))
end

table.insert(us, swd(_d("fApJH1MAWl0ZVAc"), hdj.nextDef(hdj.data.Shovels, jjlj.shovels or {})))
table.insert(us, swd(_d("fApJH1MXV0YKUh8cAQ"), hdj.nextDef(hdj.data.Detectors, jjlj.detectors or {})))

return table.concat(us, _d("OA"))
end

task.spawn(function()
while enj() and haej do
local owo, gjl = pcall(hdj.statusText)

if owo and hdj.statusParagraph then
pcall(function()
hdj.statusParagraph:UpdateBody(gjl)
end)
end

task.wait(6)
end
end)

getgenv().ACBXDigging = hdj

tcc.tab = vzvj:Tab({
Name = _d("YQpFHxodVUE"),

Image = _d(""),
})

tcc.icon = function()
local luio = gethui()

for wi, rxb in ipairs(luio:QueryDescendants(_d("ewJQDBY/U1AKXQ"))) do
if rxb.Name == _d("Zg5TIh4SVVc") then
local xah = rxb.Parent
local piy = xah and xah:FindFirstChild(_d("Zg5TOAQaRlEHVBk9El9X"))

if piy and piy.Text == _d("YQpFHxodVUE") then
if rxb:GetAttribute(_d("cyxzMzAcVXsMXgU")) then
return true
end

rxb:SetAttribute(_d("cyxzMzAcVXsMXgU"), true)
rxb.Image = _d("")
rxb.BackgroundTransparency = 1

local tfc = Color3.fromRGB(168, 170, 176)

local function sxmk(wp, nbr, qitp, ls, imxz, ekk)
local lph = Instance.new(_d("dB1QBhY"))

lph.Size = UDim2.fromOffset(qitp, ls)
lph.Position = UDim2.fromOffset(wp, nbr)
lph.BackgroundColor3 = tfc
lph.BorderSizePixel = 0
lph.Parent = rxb

if not ekk then
lph.BackgroundTransparency = 1

local jibo = Instance.new(_d("ZyZiHwEcWVc"))

jibo.Color = tfc
jibo.Thickness = 1.3
jibo.LineJoinMode = Enum.LineJoinMode.Round
jibo.Parent = lph
end

if imxz then
local wzi = Instance.new(_d("ZyZyBAEdV0A"))

wzi.CornerRadius = UDim.new(0, imxz)
wzi.Parent = lph
end

return lph
end

local qldc = {
{ 8, 0, 2, 3 },
{ 8, 15, 2, 3 },
{ 0, 8, 3, 2 },
{ 15, 8, 3, 2 },
{ 2, 2, 3, 3 },
{ 13, 2, 3, 3 },
{ 2, 13, 3, 3 },
{ 13, 13, 3, 3 },
}

for pk, xuy in ipairs(qldc) do
sxmk(xuy[1], xuy[2], xuy[3], xuy[4], 0, true)
end

sxmk(2, 2, 14, 14, 7, false)
sxmk(7, 7, 4, 4, 2, true)

return true
end
end
end

return false
end

task.defer(function()
for cfr = 1, 20 do
if tcc.icon() then
break
end

task.wait(0.25)
end
end)

tcc.configSection = tcc.tab:Section({
Side = _d("fgpXHw"),
})

tcc.configSection:Header({
Name = _d("cQBfDRoUEn8OXwoUFl9XAUU"),
})

tcc.autoSaveToggle = tcc.configSection:Toggle({
Name = _d("cxpFBFMAU0QK"),
Default = false,
Callback = function(zw)
tcc.autoSave = zw
tcc.autoSaveAt = 0

if zw then
local gdl = tcc.selected or _d("VgpXCgYfRg")
local vdic, uws = tcc.save(gdl)

tcc.selected = gdl
tcc.lastText = vdic and (_d("cxpFBFMAU0QKEQQdUx8SGEMEBxYS") .. gdl)
or (_d("cxpFBFMAU0QKEQQdXxJUBkMYB1NFQAZFDlMVU1sDVA9JUw") .. tostring(uws))
else
tcc.lastText = _d("cxpFBFMAU0QKEQQVFRw")
end
end,
}, _d("UQBfDRoUbVMaRQQsAFNECg"))

tcc.nameInput = tcc.configSection:Input({
Name = _d("YQ5HDlMdU18K"),
Placeholder = _d("V0FWRVMhU1sLQg"),
AcceptedCharacters = _d("cwNd"),
Callback = function(lm)
tcc.nameDraft = lm
end,
})

tcc.nameInput.IgnoreConfig = true

tcc.configSection:Button({
Name = _d("cR1UCgcWEkEORw4"),
Callback = function()
local bqe = tcc.nameDraft or tcc.nameInput:GetInput()

bqe = type(bqe) == _d("QRtDAh0U") and bqe:gsub(_d("bEpCQA"), _d("")):gsub(_d("FxwaTw"), _d("")) or _d("")

if bqe == _d("") then
ib:Dialog({
Title = _d("cQBfDRoU"),
Description = _d("ZhZBDlMSElwOXA5TFV1AT0UDFlNBUxlUSxUaQEEbEUZTGkYSDVQIHB5XQU9FAxZTVFsDVEwAU1xTAlRF"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})

return
end

local gqvr, nndp = tcc.save(bqe)

if not gqvr then
tcc.lastText = _d("YQ5HDlMVU1sDVA9JUw") .. tostring(nndp)

return
end

tcc.selected = bqe
tcc.lastText = _d("cR1UCgcWVhI") .. bqe .. _d("HA")
tcc.savesAt = 0

task.defer(function()
task.wait(0.25)

pcall(function()
tcc.fileDropdown:UpdateSelection(bqe)
end)
end)
end,
})

tcc.fileDropdown = tcc.configSection:Dropdown({
Name = _d("YQ5HDlMVW14K"),
Search = false,
Multi = false,
Required = false,
Options = tcc.saves(),
Callback = function(tz)
local rly = type(tz) == _d("Rg5TBxY") and tz[1] or tz

if type(rly) == _d("QRtDAh0U") and rly ~= _d("") then
tcc.selected = rly
tcc.selectionShown = rly

pcall(function()
tcc.fileDropdown:UpdateName(_d("YQ5HDlMVW14KC0s") .. rly)
end)
end
end,
})

tcc.fileDropdown.IgnoreConfig = true

tcc.configSection:Button({
Name = _d("fgBQD1MAV14KUh8WFw"),
Callback = function()
local ev = tcc.selected or tcc.fileDropdown.Value
local zh, kpes = tcc.load(ev)

tcc.lastText = zh and (_d("fgBQDxYXEg") .. ev .. _d("HA")) or (_d("fgBQD1MVU1sDVA9JUw") .. tostring(kpes))
end,
})

tcc.configSection:Button({
Name = _d("YQ5HDlMHXRIcVAcWEEZXCw"),
Callback = function()
local tzc = tcc.selected or tcc.fileDropdown.Value
local nj, rte = tcc.save(tzc)

tcc.lastText = nj and (_d("ZR1eHxZT") .. tzc .. _d("HA")) or (_d("YQ5HDlMVU1sDVA9JUw") .. tostring(rte))
end,
})

tcc.configSection:Button({
Name = _d("dgpdDgcWEkEKXQ4QB1dWT0IKBRY"),
Callback = function()
local pd = tcc.selected or tcc.fileDropdown.Value

if type(pd) ~= _d("QRtDAh0U") or pd == _d("") then
tcc.lastText = _d("YgZSAFMSEkEORw5TFVteChENGgFBRkE")

return
end

ib:Dialog({
Title = _d("dgpdDgcWEg") .. pd .. _d("DQ"),
Description = _d("ZgdUSxUaXldPWBhTAVdfAEcOF1NUQABcSxcaQVlPUAUXU1FTAV8EB1NQV09DDhAcRFcdVA9d"),
Buttons = {
{
Name = _d("dgpdDgcW"),
Callback = function()
local pczo, de = tcc.delete(pd)

tcc.lastText = pczo
and (_d("dgpdDgcWVhI") .. pd .. _d("HA"))
or (_d("cQBEBxdTXF0bEQ8WH1dGCgtL") .. tostring(de))
end,
},
{
Name = _d("cQ5fCBYf"),
},
},
})
end,
})

tcc.configSection:Button({
Name = _d("YApXGRYAWhIDWBgH"),
Callback = function()
tcc.savesAt = 0
tcc.lastText = _d("YQ5HDlMfW0EbERkWFUBXHFkOF10")
end,
})

tcc.configSection:Button({
Name = _d("fw5DAFMSQRIORB8cU15dDlU"),
Callback = function()
local wn = tcc.selected or tcc.fileDropdown.Value

if type(wn) ~= _d("QRtDAh0U") or wn == _d("") then
tcc.lastText = _d("YgZSAFMSEkEORw5TFVteChENGgFBRkE")

return
end

if tcc.setAutoLoad(wn) then
tcc.lastText = wn .. _d("EgNeChcAEl0BERgHEkBGQQ")
else
tcc.lastText = _d("cQBEBxdTXF0bERwBGkZXT0UDFlNTRxteSx8cU1ZPXAoBGFdAQQ")
end
end,
})

tcc.configSection:Button({
Name = _d("cQNUCgFTU0cbXksfHFNW"),
Callback = function()
tcc.setAutoLoad(_d(""))
tcc.lastText = _d("fABFAxodVRIDXgoXABJdAREYBxJARkE")
end,
})

tcc.statusParagraph = tcc.configSection:Paragraph({
Header = _d("YRtQHwYA"),
Body = _d(""),
})

tcc.miscSection = tcc.tab:Section({
Side = _d("YAZWAwc"),
})

tcc.miscSection:Header({
Name = _d("fwZCCA"),
})

tcc.miscSection:Toggle({
Name = _d("cxpFBFMQXl0cVEsUFlxXHVAfGhxcEjp4"),
Default = false,
Callback = function(bja)
slje(bja)
end,
}, _d("XwZCCCwSR0YAbggfHEFXMFYOHRZAUxtYBB0"))

tcc.miscSection:Toggle({
Name = _d("cxpFBFMhXV4D"),
Default = true,
Callback = function(qgqy)
tcc.autoRoll = qgqy

if qgqy and tcc.setRollButton then
tcc.setRollButton(_d("cxpFBCEcXl4tRB8HHFw"), true)
end
end,
}, _d("XwZCCCwSR0YAbhkcH14"))

tcc.miscSection:Toggle({
Name = _d("cxpFBFMiR1sMWkshHF5e"),
Default = true,
Callback = function(xcgi)
tcc.autoQuickRoll = xcgi

if xcgi and tcc.setRollButton then
tcc.setRollButton(_d("YxpYCBghXV4Dcx4HB11c"), true)
end
end,
}, _d("XwZCCCwSR0YAbhoGGlFZMEMEHx8"))

tcc.uiSection = tcc.tab:Section({
Side = _d("YAZWAwc"),
})

tcc.uiSection:Header({
Name = _d("ZyY"),
})

tcc.uiSection:Toggle({
Name = _d("cA5SABQBXUcBVUsRH0dA"),
Default = true,
Callback = function(hquo)
pcall(function()
ib:SetAcrylicBlurState(hquo)
end)
end,
}, _d("RwZuCRIQWVUdXh4dF21QA0QZ"))

function tcc.widthFactor(hk)
return 1 + math.max(0, (hk or 1) - 1) * 0.8
end

function tcc.scaleCap()
local swx = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local hix = math.min(120, math.floor(((swx.Y - 40 - 8 - 8) / 500) * 100))

while hix > 50 and (tcc.baseWidth or 720) * (hix / 100) * tcc.widthFactor(hix / 100) > swx.X - 16 do
hix = hix - 1
end

return math.max(50, hix)
end

function tcc.scaleCeiling()
return math.min(1.2, tcc.scaleCap() / 100)
end

function tcc.refreshScaleCap()
local biux = tcc.scaleSlider

if not biux then
return
end

local xdz = tcc.scaleCeiling()

pcall(function()
biux.Settings.Maximum = xdz
end)

local sevu = tonumber(biux:GetValue()) or 1

if sevu > xdz then
tcc.scaleTarget = xdz

pcall(function()
biux:UpdateValue(xdz)
end)
end
end

tcc.scaleSlider = tcc.uiSection:Slider({
Name = _d("ZyYRGBASXlc"),
Default = 1,
Minimum = 0.5,

Maximum = tcc.scaleCeiling(),
DisplayMethod = _d("ZA5dHhY"),
Precision = 2,

Callback = function(sfn)
tcc.scalePending = tonumber(sfn)
tcc.scalePendingAt = os.clock()
end,
onInputComplete = function(uav)
local olf = tcc.scaleCeiling()

tcc.scaleTarget = math.clamp(tonumber(uav) or tcc.scalePending or 1, 0.5, olf)
tcc.scalePending = nil

tcc.scaleAnchor = nil

tcc.saveUi()
end,
}, _d("RwZuGBASXlc"))

tcc.refreshScaleCap()

tcc.themeDropdown = tcc.uiSection:Dropdown({
Name = _d("ZgdUBhZJEmQAWA8"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = tcc.themeOrder,
Callback = function(eg)
local ix = type(eg) == _d("Rg5TBxY") and eg[1] or eg

if type(ix) == _d("QRtDAh0U") and tcc.presets[ix] then
tcc.theme = ix
tcc.accent = nil
tcc.applyTheme()

pcall(function()
tcc.themeDropdown:UpdateName(_d("ZgdUBhZJEg") .. ix)
end)

tcc.saveUi()
end
end,
}, _d("RwZuHxsWX1c"))

tcc.accentPicker = tcc.uiSection:Colorpicker({
Name = _d("cwxSDh0HElEAXQQGAQ"),
Default = Color3.fromRGB(168, 170, 176),
Alpha = 0,
Callback = function(qxj)
tcc.accent = qxj
tcc.applyTheme()
tcc.saveUi()
end,
}, _d("RwZuChAQV1wb"))

tcc.codesSection = tcc.tab:Section({
Side = _d("YAZWAwc"),
})

tcc.codesSection:Header({
Name = _d("cQBVDgA"),
})

tcc.codeText = _d("YApVDhYeQRIKRw4BChJRAFUOUwdaWxwRDBIeVxIcWQIDABJFBkUDX1NdXAoRDgUWQEtPUgQGA15XT14NUwBXUQBfDwBd")

function tcc.setCodeText(qvuq)
tcc.codeText = qvuq

pcall(function()
tcc.codeParagraph:UpdateBody(qvuq)
end)
end

function tcc.redeemCodes()
if tcc.redeeming then
return
end

local kulr = ic.RedeemCode
local dudm = gx:FindFirstChild(_d("fwBVHh8WYVEdWBsHAA"))
local jcke = dudm and dudm:FindFirstChild(_d("cQBVDjcSRlM"))
local cuhd, ft = false, nil

if kulr and jcke then
cuhd, ft = pcall(function()
return require(jcke)
end)
end

local dzm = cuhd and type(ft) == _d("Rg5TBxY") and ft.Codes or nil

if not kulr or type(dzm) ~= _d("Rg5TBxY") then
tcc.setCodeText(_d("ZgdYGFMFV0AcWAQdU11UT0UDFlNVUwJUSxsSQRIBXksQHFZXT10CAAcSXR0RBRxTQFcLVA4eU0BXAl4fFl0"))
return
end

local udn = {}

for gdu in pairs(dzm) do
udn[#udn + 1] = gdu
end

table.sort(udn)

local adqp = #udn

tcc.redeeming = true
tcc.setCodeText(_d("YApVDhYeW1wIEQ") .. adqp .. _d("EgxeDxYAHBxB"))

task.spawn(function()
local cni, yxv, lz = 0, 0, 0
local ujh = {}

for mop = 1, adqp do
if not enj() then
break
end

local jsy = udn[mop]
local fuv, jfv = pcall(function()
return kulr:InvokeServer(jsy)
end)

local nww = fuv and type(jfv) == _d("Rg5TBxY") and jfv.success == true
local fpp = fuv and type(jfv) == _d("Rg5TBxY") and tostring(jfv.message or _d("")) or tostring(jfv or _d(""))

if not nww and string.find(string.lower(fpp), _d("RQ5YHw"), 1, true) then
task.wait(3.5)

fuv, jfv = pcall(function()
return kulr:InvokeServer(jsy)
end)

nww = fuv and type(jfv) == _d("Rg5TBxY") and jfv.success == true
fpp = fuv and type(jfv) == _d("Rg5TBxY") and tostring(jfv.message or _d("")) or tostring(jfv or _d(""))
end

if nww then
cni = cni + 1
elseif string.find(string.lower(fpp), _d("UwNDDhIXSw"), 1, true) then
yxv = yxv + 1
else
lz = lz + 1

if #ujh < 6 then
ujh[#ujh + 1] = jsy .. _d("CE8") .. (fpp ~= _d("") and fpp or _d("XAARCh0ARVcd"))
end
end

tcc.setCodeText(string.format(_d("FwsRBBVTF1ZPHEtWFxJAClUOFh5XVkMRThdTU14dVAoXCh4SSlVLARZURxxUD10"), mop, adqp, cni, yxv, lz))

if mop < adqp and enj() then
task.wait(1.8)
end
end

local dbw = {
string.format(_d("YApVDhYeV1ZPFA9fU1NeHVQKFwoSWg5VS1YXHhIdVA0GAFdWTxQPUxxUEkpVRQ"), cni, yxv, lz, adqp),
}

for pvd, rpcd in ipairs(ujh) do
dbw[#dbw + 1] = rpcd
end

tcc.redeeming = false
tcc.setCodeText(table.concat(dbw, _d("OA")))
end)
end

tcc.codesSection:Button({
Name = _d("YApVDhYeElMDXUsQHFZXHA"),
Callback = function()
tcc.redeemCodes()
end,
})

tcc.codeParagraph = tcc.codesSection:Paragraph({
Header = _d("cQBVDgA"),
Body = tcc.codeText,
})

tcc.scriptSection = tcc.tab:Section({
Side = _d("YAZWAwc"),
})

tcc.scriptSection:Header({
Name = _d("YQxDAgMH"),
})

tcc.scriptSection:Button({
Name = _d("ZwFdBBIXEkEMQwIDBw"),
Callback = function()
pcall(function()
ib:Unload()
end)

getgenv().ACBXWindow = nil
getgenv().ACBXAllowReload = nil
end,
})

task.spawn(function()
while enj() do

if os.clock() >= tcc.savesAt then
tcc.savesAt = os.clock() + 3

local amb = tcc.saves()
local nwlf = table.concat(amb, _d("Tg"))

if nwlf ~= tcc.knownSaves then
tcc.knownSaves = nwlf

pcall(function()
tcc.fileDropdown:ClearOptions()
tcc.fileDropdown:InsertOptions(amb)
end)
end

if tcc.selected and tcc.selectionShown ~= tcc.selected then
tcc.selectionShown = tcc.selected

pcall(function()
tcc.fileDropdown:UpdateSelection(tcc.selected)
end)
end
end

if tcc.autoSave and os.clock() >= tcc.autoSaveAt then
tcc.autoSaveAt = os.clock() + 60

local bemi = tcc.selected or _d("VgpXCgYfRg")
local hysu, jbm = tcc.save(bemi)

tcc.selected = bemi
tcc.lastText = hysu and (_d("cxpFBFMAU0QKVUs") .. bemi .. _d("Eg5FSw") .. os.date(_d("FycLTj4")) .. _d("HA"))
or (_d("cxpFBFMAU0QKEQ0SGl5XCwtL") .. tostring(jbm))
end

if os.clock() >= tcc.themeAt then
tcc.themeAt = os.clock() + 3
tcc.applyTheme()
end

if os.clock() >= tcc.capAt then
tcc.capAt = os.clock() + 2
tcc.refreshScaleCap()
end

if os.clock() >= tcc.statusAt then
tcc.statusAt = os.clock() + 2

local syq = tcc.autoLoadName()
local tct = table.concat({
_d("cxpFBFMfXVMLC0s") .. (syq or _d("XABfDg")),
_d("YQ5HDgBJEg") .. tostring(#tcc.saves()),
tcc.lastText,
}, _d("OA"))

if tct ~= tcc.shownStatus then
tcc.shownStatus = tct

pcall(function()
tcc.statusParagraph:UpdateBody(tct)
end)
end
end

task.wait(0.25)
end
end)

task.spawn(function()
while enj() do

local azfn = tcc.scalePending

if azfn and os.clock() - (tcc.scalePendingAt or 0) > 0.35 then
local mw = tcc.scaleCeiling()
local vgu = math.clamp(azfn, 0.5, mw)

tcc.scalePending = nil

if math.abs(vgu - tcc.scaleTarget) > 0.002 then
tcc.scaleTarget = vgu
tcc.scaleAnchor = nil

tcc.saveUi()
end
end

if math.abs(tcc.scaleTarget - tcc.scale) > 0.002 then
local tgbn = tcc.guiRoot()

if tgbn and not tcc.baseWidth then
tcc.baseWidth = tgbn.Size.X.Offset
tcc.baseHeight = tgbn.Size.Y.Offset
end

local xnzj = tcc.baseWidth or 720
local rcki = tcc.baseHeight or 500
local qys = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
local fek, wgx = 8, 40

if not tcc.scaleAnchor and tgbn then

local ypjf = tcc.widthFactor(tcc.scaleTarget)
local hejq, kme = xnzj * ypjf * tcc.scaleTarget, rcki * tcc.scaleTarget
local jdn = tgbn.AbsolutePosition

tcc.scaleAnchor = Vector2.new(
math.clamp(jdn.X, fek, math.max(fek, qys.X - hejq - fek)),
math.clamp(jdn.Y, wgx, math.max(wgx, qys.Y - kme - fek))
)
end

local xeut = tcc.scaleAnchor

tcc.scale = tcc.scale + (tcc.scaleTarget - tcc.scale) * 0.18

local ddir = tcc.widthFactor(tcc.scale)

pcall(function()
ib:SetScale(tcc.scale)

if tgbn then
local cuo = math.floor(xnzj * ddir)

tgbn.Size = UDim2.fromOffset(cuo, math.floor(rcki))

local dqr = tgbn:FindFirstChild(_d("cQBfHxYdRg"))

if dqr then
local gen = tgbn:FindFirstChild(_d("YQZVDhESQA"))
local zlc = math.floor(gen and gen.Size.X.Scale * cuo or cuo * 0.325)

dqr.Size = UDim2.new(0, math.max(0, cuo - zlc), 1, 0)
end
end
end)

if tgbn and xeut then
local wfyv, ctcf = xnzj * ddir * tcc.scale, rcki * tcc.scale
local phzv = math.clamp(xeut.X, fek, math.max(fek, qys.X - wfyv - fek))
local coe = math.clamp(xeut.Y, wgx, math.max(wgx, qys.Y - ctcf - fek))

local ie = tgbn.Parent and tgbn.Parent.AbsolutePosition or Vector2.zero

pcall(function()
tgbn.Position = UDim2.fromOffset(math.floor(phzv - ie.X), math.floor(coe - ie.Y))
end)
end
else

tcc.scaleAnchor = nil
end

task.wait()
end
end)

auqr.misc.tierLabels = {}
auqr.misc.labelToTier = {}

auqr.misc.expSection = auqr.misc.tab:Section({
Side = _d("fgpXHw"),
})

auqr.misc.expSection:Header({
Name = _d("dxdBDhcaRlsAXxhTg62l7d7T/A"),
})

auqr.misc.claimToggle = auqr.misc.expSection:Toggle({
Name = _d("cxpFBFMQXlMGXA"),
Default = false,
Callback = function(ccb)
local rdk = auqr.misc.expeditions

rdk.enabled = ccb
rdk.claimAt = 0

if ccb then
rdk.askedAt = 0
rdk.request()
end
end,
}, _d("UxpFBCwQXlMGXA"))

auqr.misc.rewardToggle = auqr.misc.expSection:Toggle({
Name = _d("cxpFBFMQXl0cVEsBFkVTHVUY"),
Default = false,
Callback = function(jpu)
local dhe = auqr.misc.expeditions

dhe.autoClose = jpu

if jpu then
dhe.closeRewards()
end
end,
}, _d("VxdBNBIGRl0wUgccAFc"))

auqr.misc.startToggle = auqr.misc.expSection:Toggle({
Name = _d("cxpFBFMARlMdRQ"),
Default = false,
Callback = function(kt)
local wrkd = auqr.misc.expeditions

if kt and not next(wrkd.tiersWanted) then
wrkd.autoStart = false

pcall(function()
auqr.misc.startToggle:UpdateState(false)
end)

ib:Dialog({
Title = _d("cxpFBFMARlMdRUsdFldWHBEKUwdbVx0"),
Description = _d("YgZSAFMSRhIDVAoABxJdAVRLBxpXQE9YBVMHWldPZQIWARJWHV4bFxxFXE9XAgEARhxPdAoAChJGDloOAFNGWgoRCBsWU0IKQh9TEFNAC0JHUz1bVQdFBhIBVxIbWQ5TAVNACkIfX1NTXAsRCh0KElwaXAkWARJdCREfGxZfEgxQBVMBR1xPUB9THFxRCh8"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})

return
end

wrkd.autoStart = kt
wrkd.startedAt = {}

if kt then
wrkd.askedAt = 0
wrkd.request()
end
end,
}, _d("UxpFBCwARlMdRQ"))

for akeb, oho in ipairs(auqr.misc.expeditions.tiers()) do
table.insert(auqr.misc.tierLabels, tostring(oho.name))
auqr.misc.labelToTier[tostring(oho.name)] = oho.id
end

auqr.misc.building = true

auqr.misc.tierDropdown = auqr.misc.expSection:Dropdown({
Name = _d("ZgZUGQ"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = auqr.misc.tierLabels,
Callback = function(rhjc)
local jg = auqr.misc.expeditions

if auqr.misc.building then
return
end

local aaj = {}
local onhn = {}

if type(rhjc) == _d("Rg5TBxY") then
for iwe, iqzl in pairs(rhjc) do
local bes = auqr.misc.labelToTier[tostring(iwe)]

if iqzl and bes then
aaj[bes] = true
table.insert(onhn, tostring(iwe))
end
end
end

table.sort(onhn)
jg.tiersWanted = aaj

pcall(function()
auqr.misc.tierDropdown:UpdateName(#onhn > 0 and (_d("ZgZUGVORspBP") .. table.concat(onhn, _d("Hk8"))) or _d("ZgZUGVORspBPXwQdFg"))
end)
end,
}, _d("RgZUGQ"))

task.defer(function()
auqr.misc.building = false
end)

auqr.misc.expSection:Button({
Name = _d("cQNQAh5TXF0Y"),
Callback = function()
local viwg = auqr.misc.expeditions

if not viwg.claim() then
ib:Notify({
Title = _d("dxdBDhcaRlsAXxg"),
Description = _d("fABFAxodVRIHUBhTEF1fChEJEhBZEhZUH10"),
Lifetime = 5,
})
end
end,
})

auqr.misc.expSection:Button({
Name = _d("YQpfD1MAV14KUh8WFw"),
Callback = function()
local tj = auqr.misc.expeditions

if not next(tj.tiersWanted) then
ib:Notify({
Title = _d("dxdBDhcaRlsAXxg"),
Description = _d("YgZSAFMSRhIDVAoABxJdAVRLBxpXQE9YBVMHWldPVRkcA1ZdGF9LFRpAQRsf"),
Lifetime = 5,
})

return
end

local asam = {}
local rja = 0

for kcy, crk in ipairs(tj.tiers()) do
if tj.tiersWanted[crk.id] and tj.status(crk.id) == _d("UxlQAh8SUF4K") then
if tj.start(crk.id, asam) then
rja = rja + 1
end
end
end

if rja == 0 then
ib:Notify({
Title = _d("dxdBDhcaRlsAXxg"),
Description = _d("fABFAxodVRIMXh4fFxJQChEYFh1GCE9FAxZTQVcDVAgHFlYSG1gOAQASUx1USxIfQFcOVRJTHEdGQxEEAVNGWgpDDlMSQFdPXwQHU1RdGkNLFh9bVQZTBxZTUVMdVRhTFV1AT0UDFh4c"),
Lifetime = 6,
})
end
end,
})

auqr.misc.expInfo = auqr.misc.tab:Section({
Side = _d("YAZWAwc"),
})

auqr.misc.expInfo:Header({
Name = _d("dxdBDhcaRlsAXxg"),
})

auqr.misc.expParagraph = auqr.misc.expInfo:Paragraph({
Header = _d("YRtQHwYA"),
Body = auqr.misc.expeditions.text(),
})

auqr.misc.expeditions.loadRewards()

auqr.misc.expRewardParagraph = auqr.misc.expInfo:Paragraph({
Header = _d("cQNQAh4WVg"),
Body = auqr.misc.expeditions.rewardsText(),
})

task.spawn(function()
local jvh = auqr.misc.expeditions
local gs = tn(_d("YRZfCDYLQlcLWB8aHFxB"), 3)

if gs then
gs.OnClientEvent:Connect(function(aceb)
if type(aceb) ~= _d("Rg5TBxY") then
return
end

jvh.state = aceb

jvh.offset = (tonumber(aceb.now) or os.time()) - os.time()
jvh.syncedAt = os.clock()

if type(aceb.rewards) == _d("Rg5TBxY") and #aceb.rewards > 0 then
table.insert(jvh.rewardLog, 1, {
at = os.time(),
title = tostring(aceb.rewardTitle or _d("dxdBDhcaRlsAXw")),
items = aceb.rewards,
})

while #jvh.rewardLog > 8 do
table.remove(jvh.rewardLog)
end

jvh.saveRewards()

if jvh.autoClose then

task.delay(0.35, jvh.closeRewards)
end
end
end)
end

while enj() do

if os.clock() - jvh.askedAt > 1 and os.clock() - jvh.syncedAt > 20 then
jvh.request()
end

if jvh.enabled then
jvh.claim()
end

if jvh.autoClose then
jvh.closeRewards()
end

if jvh.autoStart and next(jvh.tiersWanted) then
local vk = {}

for yikh, cy in ipairs(jvh.tiers()) do
if jvh.tiersWanted[cy.id] and jvh.status(cy.id) == _d("UxlQAh8SUF4K") then
if jvh.start(cy.id, vk) then
break
end
end
end
end

local vxuq = jvh.text()

if auqr.misc.expParagraph and vxuq ~= auqr.misc.expShown then
auqr.misc.expShown = vxuq

pcall(function()
auqr.misc.expParagraph:UpdateBody(vxuq)
end)
end

local pids = jvh.rewardsText()

if auqr.misc.expRewardParagraph and pids ~= jvh.rewardsShown then
jvh.rewardsShown = pids

pcall(function()
auqr.misc.expRewardParagraph:UpdateBody(pids)
end)
end

task.wait(0.75)
end
end)

auqr.misc.util = {
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

function auqr.misc.util.hook()
local cqtj = auqr.misc.util

if cqtj.hooked then
return
end

cqtj.hooked = true

if ic.SyncCollection then
ic.SyncCollection.OnClientEvent:Connect(function(kkvi)
if type(kkvi) == _d("Rg5TBxY") then
cqtj.profile = kkvi
cqtj.profileAt = os.clock()
end
end)
end

if ic.SyncAchievements then
ic.SyncAchievements.OnClientEvent:Connect(function(filn)
if type(filn) == _d("Rg5TBxY") then
cqtj.ach = filn
end
end)
end

if ic.SyncQuests then
ic.SyncQuests.OnClientEvent:Connect(function(fjk)
if type(fjk) == _d("Rg5TBxY") and type(fjk.list) == _d("Rg5TBxY") then
cqtj.quests = fjk
end
end)
end

if ic.SyncPeriodicQuests then
ic.SyncPeriodicQuests.OnClientEvent:Connect(function(wrsl, gaes)
if wrsl == _d("RQpUAB8K") and type(gaes) == _d("Rg5TBxY") and type(gaes.list) == _d("Rg5TBxY") then
cqtj.weekly = gaes
end
end)
end
end

function auqr.misc.util.askProfile()
local jqi = auqr.misc.util

if os.clock() - jqi.askedAt < 1.5 then
return
end

jqi.askedAt = os.clock()

if ic.RequestSync then
pcall(function()
ic.RequestSync:FireServer()
end)
end
end

function auqr.misc.util.currentProfile()
local cgxr = auqr.misc.util

if type(cgxr.profile) ~= _d("Rg5TBxY") then
cgxr.askProfile()

return nil
end

if os.clock() - cgxr.profileAt > 20 then
cgxr.askProfile()
end

return cgxr.profile
end

function auqr.misc.util.forgetProfile()
local dhd = auqr.misc.util

dhd.profile = nil
dhd.profileAt = 0
dhd.askedAt = 0
end

function auqr.misc.util.indexedTotal(dnq)
local oi = 0

for yexu, vxvl in pairs((dnq and dnq.cardIndex) or {}) do
if vxvl then
oi = oi + 1
end
end

return oi
end

function auqr.misc.util.indexPending(dev)
local lsd = {}

if type(dev) ~= _d("Rg5TBxY") then
return lsd
end

local dlw = auqr.misc.util.indexedTotal(dev)
local limk = dev.indexMilestones or {}

for ou = 1, 30 do
if not limk[ou] and ou * 5 <= dlw then
table.insert(lsd, ou)
end
end

return lsd
end

function auqr.misc.util.indexFrame()
local ojif = ysuk:FindFirstChild(_d("cQ5DDzodVlcXdh4a"))

return ojif and ojif:FindFirstChild(_d("ewFVDgs1QFMCVA"))
end

function auqr.misc.util.clickButton(nu)
if not nu then
return false
end

if firesignal then
local ns = pcall(firesignal, nu.MouseButton1Click)

if ns then
return true
end
end

return pcall(function()
nu:Activate()
end)
end

function auqr.misc.util.closeIndex()
local wmr = auqr.misc.util.indexFrame()

if not wmr or not wmr.Visible then
return false
end

pcall(function()
local fdo = gx:FindFirstChild(_d("fwBVHh8WYVEdWBsHAA"))
local pzeb = fdo and fdo:FindFirstChild(_d("fwpfHj4SXFMIVBk"))

if pzeb then
require(pzeb).close(wmr)
end
end)

auqr.misc.util.clickButton(wmr:FindFirstChild(_d("cQNeGBYxR0YbXgU")))

pcall(function()
wmr.Visible = false
end)

return true
end

function auqr.misc.util.claimIndex()
local jvxl = auqr.misc.util

if os.clock() < jvxl.indexAt then
return false
end

local hgq = jvxl.currentProfile()

if not hgq then
return false
end

local rns = jvxl.indexPending(hgq)
local mcj = rns[1]

if not mcj then
return false
end

local yber = jvxl.indexedTotal(hgq)
local wwg = jvxl.indexAsked

if type(wwg) == _d("Rg5TBxY") and wwg.milestone == mcj and wwg.total == yber then
return false
end

jvxl.indexAsked = { milestone = mcj, total = yber }

pcall(function()
ic.ClaimIndexReward:FireServer(mcj)
end)

jvxl.indexAt = os.clock() + 1.5

jvxl.profile = nil
jvxl.profileAt = 0

task.delay(0.4, jvxl.closeIndex)

return true
end

function auqr.misc.util.achPending()
local tixh = {}
local xf = auqr.misc.util.ach

if type(xf) ~= _d("Rg5TBxY") then
return tixh
end

for fdse, vwtl in ipairs(xf.chains or {}) do
for vjd, uwtn in ipairs(vwtl.levels or {}) do
if uwtn.reached and not uwtn.claimed then
table.insert(tixh, { chain = tostring(vwtl.id), index = uwtn.index, name = tostring(uwtn.name or uwtn.index) })
end
end
end

return tixh
end

function auqr.misc.util.claimAchievement()
local htwk = auqr.misc.util

if os.clock() < htwk.achAt then
return false
end

if type(htwk.ach) ~= _d("Rg5TBxY") then
if os.clock() - htwk.achAskedAt > 4 and ic.RequestAchievements then
htwk.achAskedAt = os.clock()

pcall(function()
ic.RequestAchievements:FireServer()
end)
end

return false
end

for zov, zskc in ipairs(htwk.achPending()) do
pcall(function()
ic.ClaimAchievement:FireServer(zskc.chain, zskc.index)
end)

htwk.achAt = os.clock() + 1

task.delay(1, function()
if ic.RequestAchievements then
pcall(function()
ic.RequestAchievements:FireServer()
end)
end
end)

return true
end

return false
end

function auqr.misc.util.questRows()
local inrn = auqr.misc.util
local rzh = {}

for fowi, mmz in ipairs({ { list = _d("Vg5YBwo"), payload = inrn.quests }, { list = _d("RQpUAB8K"), payload = inrn.weekly } }) do
for mzeq, lpu in ipairs((type(mmz.payload) == _d("Rg5TBxY") and mmz.payload.list) or {}) do
if type(lpu) == _d("Rg5TBxY") then
table.insert(rzh, { list = mmz.list, index = mzeq, quest = lpu })
end
end
end

return rzh
end

function auqr.misc.util.questPending()
local crcc = {}

for kqc, mb in ipairs(auqr.misc.util.questRows()) do
local xwm = mb.quest

if not xwm.claimed and (tonumber(xwm.progress) or 0) >= (tonumber(xwm.target) or math.huge) then
table.insert(crcc, mb)
end
end

return crcc
end

function auqr.misc.util.askQuests()
local ntb = auqr.misc.util

if os.clock() - ntb.questAskedAt > 4 and ic.RequestQuests then
ntb.questAskedAt = os.clock()

pcall(function()
ic.RequestQuests:FireServer()
end)
end

if os.clock() - ntb.weeklyAskedAt > 4 and ic.RequestPeriodicQuests then
ntb.weeklyAskedAt = os.clock()

pcall(function()
ic.RequestPeriodicQuests:FireServer(_d("RQpUAB8K"))
end)
end
end

function auqr.misc.util.claimQuest()
local osix = auqr.misc.util

if os.clock() < osix.questAt then
return false
end

if type(osix.quests) ~= _d("Rg5TBxY") and type(osix.weekly) ~= _d("Rg5TBxY") then
osix.askQuests()

return false
end

for nhsb, cfby in ipairs(osix.questPending()) do
if cfby.list == _d("RQpUAB8K") then
if ic.ClaimPeriodicQuest then
pcall(function()
ic.ClaimPeriodicQuest:FireServer(_d("RQpUAB8K"), cfby.index)
end)
end
else
pcall(function()
ic.ClaimQuest:FireServer(cfby.index)
end)
end

osix.questAt = os.clock() + 1.2

task.delay(1, function()
osix.askQuests()
end)

return true
end

return false
end

function auqr.misc.util.packCatalog()
local at = auqr.misc.util

if at.packs then
return at.packs
end

local dvnj = {}
local djep, spr = pcall(function()
return require(gx.ModuleScripts.PackData)
end)

if djep and type(spr) == _d("Rg5TBxY") and type(spr.Packs) == _d("Rg5TBxY") then
for kqu, yn in ipairs(spr.Packs) do
if yn.id then
table.insert(dvnj, { id = tostring(yn.id), name = tostring(yn.name or yn.id) })
end
end
end

at.packs = dvnj

return dvnj
end

function auqr.misc.util.packUnlocked(jnph, tq)
if type(jnph) ~= _d("Rg5TBxY") then
return true
end

local ltp, afmq = pcall(function()
return require(gx.ModuleScripts.PackData)
end)
local ht, iw = pcall(function()
return require(gx.ModuleScripts.PackSlotData)
end)

if not (ltp and ht) then
return true
end

local wjtl = afmq.ById and afmq.ById[tq]

if not wjtl then
return false
end

local tamt, oeab = pcall(iw.isPackUnlocked, wjtl, jnph)

return (not tamt) or oeab == true
end

function auqr.misc.util.visit(qhm)
local odqr = workspace:FindFirstChild(_d("fD9yGA"))
local ral = odqr and odqr:FindFirstChild(qhm)
local hed = adn.Character
local buvf = hed and hed:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))
local pkea = ral and (ral:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw")) or ral:FindFirstChildWhichIsA(_d("cA5CDiMSQEY"), true))

if not (pkea and buvf) then
return nil
end

local beuf = buvf.CFrame

buvf.CFrame = CFrame.new((pkea.CFrame * CFrame.new(0, 0, -5)).Position)

return beuf
end

function auqr.misc.util.returnTo(uuxq)
local iz = adn.Character
local gyfc = iz and iz:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if gyfc and uuxq then
gyfc.CFrame = uuxq
end
end

function auqr.misc.util.applyPacks(blu, ujnz)
local kf = auqr.misc.util

if os.clock() < kf.packAt then
return false, _d("ZQ5YH1MSEl8AXA4dBxw")
end

local kox = kf.currentProfile()

if not kox then
return false, _d("YApQDxodVRIWXh4BU0JAAFcCHxYSH09FGQpTU1UOWAVTGlwSDhEYFhBdXAsf")
end

if ujnz and (tonumber(kox.packSlots) or 1) < 2 then
return false, _d("YQNeH1NBElwKVA8AU0ZaChEOCwdAU09BChAYEkEDXh9TFFNfCkEKAAAc")
end

if not (ic.OpenPackShop and ic.EquipPack) then
return false, _d("ZgdUSwMSUVlPQgMcAxJbHBEFHAcSWwERHxsaQRIIUAYWU0RXHUICHB0c")
end

kf.packAt = os.clock() + 8

task.spawn(function()
local ziy = kf.visit(_d("fABTBxYAQVsBVhg"))

if not ziy then
return
end

pcall(function()
ic.OpenPackShop:FireServer(_d("Qg5SACweV0AMWQodBw"))
end)

task.wait(1.2)

if blu then
pcall(function()
ic.EquipPack:FireServer(blu, 1)
end)
end

if ujnz then
task.wait(0.8)

pcall(function()
ic.EquipPack:FireServer(ujnz, 2)
end)
end

task.wait(0.8)
kf.returnTo(ziy)
kf.forgetProfile()
end)

return true
end

function auqr.misc.util.accScore(xmy)
local xom = xmy.effects or {}

return (xom.luckBonus or 0) * 10
+ ((xom.luckMult or 1) - 1) * 200
+ ((xom.borderLuckMult or 1) - 1) * 200
- ((xom.rollCdMult or 1) - 1) * 30
end

function auqr.misc.util.accCatalog()
local caeq = auqr.misc.util

if caeq.accessories then
return caeq.accessories
end

local bap = {}

for qbha, urqq in ipairs({ _d("cwxSDgAAXUAWdQoHEg"), _d("cwxSDgAAXUAWdQoHEgA") }) do
local zru, ctc = pcall(function()
return require(gx.ModuleScripts[urqq])
end)

if zru and type(ctc) == _d("Rg5TBxY") and type(ctc.Accessories) == _d("Rg5TBxY") then
for nlg, ebws in ipairs(ctc.Accessories) do
if ebws.id then
table.insert(bap, {
id = tostring(ebws.id),
name = tostring(ebws.name or ebws.id),
shop = qbha,

shopName = qbha == 1 and _d("cwxSDgAAXUAWETgbHEI") or _d("fxZCHxYBW10aQks+Elw"),
raidable = ebws.raidShopOnly == true,
hidden = ebws.hidden == true,
requirements = ebws.requirements or {},
score = auqr.misc.util.accScore(ebws),
})
end
end
end
end

caeq.accessories = bap

return bap
end

function auqr.misc.util.accOwned(rhtf)
local mcr = {}

for ow, exra in ipairs((rhtf and rhtf.accessories) or {}) do
mcr[tostring(exra)] = true
end

return mcr
end

function auqr.misc.util.accMeets(zvpq, yrv)
for kj, rh in ipairs(yrv.requirements) do
local yno = zvpq.cards and zvpq.cards[rh.cardId]
local gia = type(yno) == _d("Rg5TBxY") and (tonumber(yno[rh.borderLevel]) or 0) or 0

if gia < (tonumber(rh.amount) or 0) then
return false
end
end

return true
end

function auqr.misc.util.accPlan(aud)
local vwq = auqr.misc.util
local eoqs = vwq.accOwned(aud)
local xoiy = {}

for iuxq, mvj in ipairs(vwq.accCatalog()) do
if not eoqs[mvj.id] and not mvj.raidable and not mvj.hidden and vwq.accMeets(aud, mvj) then
local bpx = xoiy[mvj.shop]

if not bpx or mvj.score > bpx.score then
xoiy[mvj.shop] = mvj
end
end
end

return xoiy
end

function auqr.misc.util.accPicks(bgge)
local jzxk = auqr.misc.util
local kvyb = jzxk.accOwned(bgge)
local wsm, jawi

for uds, ucr in ipairs(jzxk.accCatalog()) do
if kvyb[ucr.id] then
if not wsm or ucr.score > wsm.score then
wsm = ucr
end
elseif not ucr.raidable and not ucr.hidden and jzxk.accMeets(bgge, ucr) then
if not jawi or ucr.score > jawi.score then
jawi = ucr
end
end
end

return wsm, jawi
end

function auqr.misc.util.equipBest()
local uowa = auqr.misc.util
local qxr = uowa.currentProfile()

if not qxr or not ic.EquipAccessory then
return false
end

local hm = uowa.accPicks(qxr)

if not hm or qxr.equippedAccessory == hm.id then
return hm ~= nil
end

pcall(function()
ic.EquipAccessory:FireServer(hm.id)
end)

task.delay(1.5, function()
uowa.forgetProfile()
end)

return true
end

function auqr.misc.util.buyBest()
local vcg = auqr.misc.util

if os.clock() < vcg.accAt then
return false, _d("ZQ5YH1MSEl8AXA4dBxw")
end

if my.busy(1) or my.busy(2) then
vcg.accNote = _d("ewERClMRU0YbXQ5TXhJTT0IDHAMSRh1YG1MEXUcDVUsWHVYSBkU")
return false, _d("ewERClMRU0YbXQ5TXhJTT0IDHAMSRh1YG1MEXUcDVUsWHVYSBkVF")
end

local xsm = vcg.currentProfile()

if not xsm then
vcg.accNote = _d("YApQDxodVRIWXh4BU0JAAFcCHxYSH09GAh8fEkYdSEsSFFNbARECHVNTEhxUCBwdVg")
return false, _d("YApQDxodVRIWXh4BU0JAAFcCHxYSH09FGQpTU1UOWAVTGlwSDhEYFhBdXAsf")
end

local vtmd = vcg.accPlan(xsm)
local haas = {}

for ohuf = 1, 2 do
if vtmd[ohuf] then
table.insert(haas, vtmd[ohuf].name)
end
end

if #haas == 0 then
vcg.accNote = _d("fABFAxodVRIBVBxTBlxeAFIAFhcSSwpFS15TRloKEQgSAVZBT1cEAVNbRk9QGRZTXF0bEQIdU0ZaChEIHB9eVwxFAhwd")
return false, _d("fABFAxodVRIBVBxTEFNcT1MOUwZcXgBSABYXEksKRUteU0ZaChEIEgFWQU9XBAFTW0ZPUBkWU1xdGxECHVNGWgoRCBwfXlcMRQIcHRw")
end

vcg.accAt = os.clock() + 12
vcg.accNote = _d("ZQ5dABodVRIbXksHG1cSDF4eHQdXQE9XBAFT") .. table.concat(haas, _d("Eg5fD1M"))

task.spawn(function()
for yua = 1, 2 do
local hcz = vtmd[yua]

if hcz then
local qev = yua == 1 and _d("QhpDGAYaRlcLVQ") or _d("RQ5XDRYfX1MBVAoHAEVTCVcOHwA")
local amy = yua == 1 and ic.OpenAccessoryShop or ic.OpenAccessoryShop2
local vy = yua == 1 and ic.BuyAccessory or ic.BuyAccessory2
local uzd = qev and vcg.visit(qev) or nil

if not uzd then
local hld = workspace:FindFirstChild(_d("fD9yGA"))
local nlt = hld and hld:FindFirstChild(qev)

if nlt and os.clock() - (vcg.worldAskedAt or 0) > 25 then

vcg.worldAskedAt = os.clock()
vcg.accNote = _d("cQdQGRIQRlcdEQUcBxJAClAPClMfEhtDEhodVRIOVgoaHRJBB14ZBx9L")
elseif not nlt and os.clock() - (vcg.worldAskedAt or 0) > 25 then

vcg.worldAskedAt = os.clock()
vcg.accNote = _d("fAARCBwGXEYKQ0saHRJGB1gYUwRdQANVS15TRlMEWAUUU0ZaChEHHBFQS09FDh8WQl0dRQ")

pcall(function()
ic.TeleportToWorld:FireServer(_d("XgBTCQo"))
end)

task.wait(4.5)
uzd = vcg.visit(qev)
end
end

if uzd and amy and vy then

task.wait(0.9)

pcall(function()
amy:FireServer()
end)

task.wait(1.2)

pcall(function()
vy:FireServer(hcz.id)
end)

task.wait(0.9)
vcg.returnTo(uzd)
vcg.accNote = _d("cABEDBsHEg") .. tostring(hcz.name)
elseif not uzd then
vcg.accNote = _d("cQBEBxdTXF0bERkWElFaT0UDFlNRXRpfHxYBEh9PRRkKU1NVDlgFUxpcEg4RBhweV1wb")
end

task.wait(0.6)
end
end

vcg.forgetProfile()

for ref = 1, 8 do
if type(vcg.profile) == _d("Rg5TBxY") then
break
end

vcg.askProfile()
task.wait(0.7)
end

vcg.equipBest()
end)

return true, table.concat(haas, _d("Hk8"))
end

function auqr.misc.util.indexText()
local kyc = auqr.misc.util

if type(kyc.profile) ~= _d("Rg5TBxY") then
return _d("YApQDxodVRIWXh4BU1FTHVVLGh1WVxcfRV0")
end

local yfa = kyc.indexPending(kyc.profile)
local nv = 0

for qdq, dj in pairs(kyc.profile.indexMilestones or {}) do
if dj then
nv = nv + 1
end
end

local tte = tostring(kyc.indexedTotal(kyc.profile)) .. _d("EgxQGRcAElsBVQ4LFlYeTw") .. tostring(nv) .. _d("EgBXS0BDEkAKRgoBF0ESDF0KGh5XVg")

if #yfa > 0 then
tte = tte .. _d("OD1UChcKCBI") .. table.concat(yfa, _d("Hk8"))
end

return tte
end

function auqr.misc.util.achText()
local brk = auqr.misc.util

if type(brk.ach) ~= _d("Rg5TBxY") then
return _d("YApQDxodVRIOUgMaFkRXAlQFBwAcHEE")
end

local sja = brk.achPending()
local me = 0

for enq, coq in ipairs(brk.ach.chains or {}) do
for xbg in ipairs(coq.levels or {}) do
me = me + 1
end
end

return tostring(#sja) .. _d("EgBXSw") .. tostring(me) .. _d("Eg5SAxoWRFcCVAUHABJAClAPCg")
end

function auqr.misc.util.questText()
local wg = auqr.misc.util

if type(wg.quests) ~= _d("Rg5TBxY") and type(wg.weekly) ~= _d("Rg5TBxY") then
return _d("YApQDxodVRIeRA4AB0EcQR8")
end

local wtpf, uec = 0, 0

for eqdv, kfu in ipairs(wg.questPending()) do
if kfu.list == _d("RQpUAB8K") then
uec = uec + 1
else
wtpf = wtpf + 1
end
end

local alsh = type(wg.quests) == _d("Rg5TBxY") and #(wg.quests.list or {}) or 0
local fkk = type(wg.weekly) == _d("Rg5TBxY") and #(wg.weekly.list or {}) or 0

return tostring(wtpf) .. _d("EgBXSw") .. tostring(alsh) .. _d("EgtQAh8KEkAKUA8KeQ")
.. tostring(uec) .. _d("EgBXSw") .. tostring(fkk) .. _d("EhhUDhgfSxIdVAoXCg")
end

function auqr.misc.util.packText()
local szs = auqr.misc.util
local mrb = szs.profile

if type(mrb) ~= _d("Rg5TBxY") then
return _d("YApQDxodVRIWXh4BU0JTDFoYXV0c")
end

local function saa(hpbs)
for qvga, nko in ipairs(szs.packCatalog()) do
if nko.id == hpbs then
return nko.name
end
end

return tostring(hpbs)
end

local lnh = _d("YQNeH1NCCBI") .. saa(mrb.equippedPack)

if (tonumber(mrb.packSlots) or 1) >= 2 then
lnh = lnh .. _d("ODxdBAdTAAhP") .. saa(mrb.equippedPack2)
else
lnh = lnh .. _d("ODxdBAdTAAhPVgoeFkJTHEJLHRxGEgBGBRYX")
end

return lnh
end

function auqr.misc.util.accText()
local km = auqr.misc.util
local nbkm = km.profile

if type(nbkm) ~= _d("Rg5TBxY") then
return _d("YApQDxodVRIWXh4BU1NRDFQYABxAWwpCRV1d")
end

local xy = km.accPicks(nbkm)
local gxs = km.accPlan(nbkm)
local jdk = _d("XABfDg")

for lzg, oqh in ipairs(km.accCatalog()) do
if oqh.id == nbkm.equippedAccessory then
jdk = oqh.name .. _d("Ekc") .. oqh.shopName .. _d("Gw")
end
end

local tdv = _d("dx5EAgMDV1ZVEQ") .. jdk

if xy then
tdv = tdv .. _d("OC1UGAdTXUUBVA9JUw") .. xy.name
end

tdv = tdv .. _d("OC5SCBYAQV0dSEsgG11CVRE") .. (gxs[1] and gxs[1].name or _d("XABFAxodVRIBVBw"))
tdv = tdv .. _d("OCJIGAcWQFsARBhTPlNcVRE") .. (gxs[2] and gxs[2].name or _d("XABFAxodVRIBVBw"))

if km.accNote then
tdv = tdv .. _d("OCNQGAdTRkAGQVFT") .. km.accNote
end

return tdv
end

auqr.misc.util.hook()
auqr.misc.util.askProfile()

auqr.misc.indexSection = auqr.misc.tab:Section({
Side = _d("fgpXHw"),
})

auqr.misc.indexSection:Header({
Name = _d("cQ5DD1M6XFYKSUuD7KG1"),
})

auqr.misc.indexToggle = auqr.misc.indexSection:Toggle({
Name = _d("cxpFBFMQXlMGXA"),
Default = false,
Callback = function(xalp)
auqr.misc.util.indexOn = xalp
auqr.misc.util.indexAt = 0

auqr.misc.util.indexAsked = nil
end,
}, _d("UxpFBCwQXlMGXDRB"))

auqr.misc.indexSection:Button({
Name = _d("cQNQAh5TXF0Y"),
Callback = function()
local nfu = auqr.misc.util

nfu.indexAt = 0
nfu.indexAsked = nil

if not nfu.claimIndex() then
ib:Notify({
Title = _d("cQ5DD1M6XFYKSQ"),
Description = _d("fAARBhofV0EbXgUWU1tBT0MOEhdLEhteSxAfU1sCHw"),
Lifetime = 5,
})
end
end,
})

auqr.misc.claimSection = auqr.misc.tab:Section({
Side = _d("fgpXHw"),
})

auqr.misc.claimSection:Header({
Name = _d("cwxZAhYFV18KXx8AUxQSPkQOAAdBEp+u5PU"),
})

auqr.misc.achToggle = auqr.misc.claimSection:Toggle({
Name = _d("cxpFBFMQXlMGXEsSEFpbCkcOHhZcRhw"),
Default = false,
Callback = function(sobg)
auqr.misc.util.achOn = sobg
auqr.misc.util.achAt = 0

if sobg and ic.RequestAchievements then
pcall(function()
ic.RequestAchievements:FireServer()
end)
end
end,
}, _d("UxpFBCwQXlMGXDQSEFpbCkcOHhZcRhw"))

auqr.misc.questToggle = auqr.misc.claimSection:Toggle({
Name = _d("cxpFBFMQXlMGXEsCBldBG0I"),
Default = false,
Callback = function(xr)
auqr.misc.util.questOn = xr
auqr.misc.util.questAt = 0
auqr.misc.util.questAskedAt = 0
auqr.misc.util.weeklyAskedAt = 0

if xr then
auqr.misc.util.askQuests()
end
end,
}, _d("UxpFBCwQXlMGXDQCBldBG0I"))

auqr.misc.claimSection:Button({
Name = _d("cQNQAh5TU14DEQUcBA"),
Callback = function()
local krzx = auqr.misc.util

krzx.achAt = 0
krzx.questAt = 0

local gzef = krzx.claimAchievement()
local ilv = krzx.claimQuest()

if not (gzef or ilv) then
ib:Notify({
Title = _d("cwxZAhYFV18KXx8AUxQSPkQOAAdB"),
Description = _d("fABFAxodVRIGQksBFlNWFhEfHFNRXg5YBl0"),
Lifetime = 5,
})
end
end,
})

auqr.misc.packSection = auqr.misc.tab:Section({
Side = _d("fgpXHw"),
})

auqr.misc.packSection:Header({
Name = _d("cQ5DD1MjU1EEQkuD7LyG"),
})

auqr.misc.packSection:Paragraph({
Header = _d("ZhheSwAfXUYc"),
Body = _d("YgZSAABTU0IfXRJTHFxeFhEcGxZcEhZeHlMDQFccQksyA0JeFhEbEhBZQUMRCRYQU0ccVEsHG1cSHEYCBxBaEhhQBxgAEkYAER8bFhJfCkMIGxJcRkE"),
})

local ijyk = {}
local lg = {}

for ek, xkaz in ipairs(auqr.misc.util.packCatalog()) do
table.insert(ijyk, xkaz.name)
lg[xkaz.name] = xkaz.id
end

auqr.misc.packSlotOne = nil
auqr.misc.packSlotTwo = nil

auqr.misc.packDropdownOne = auqr.misc.packSection:Dropdown({
Name = _d("YQNeH1NC"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = ijyk,
Callback = function(ufb)
local xfyu = type(ufb) == _d("Rg5TBxY") and ufb[1] or ufb

auqr.misc.packSlotOne = lg[tostring(xfyu)]
end,
}, _d("QQNeHyxC"))

auqr.misc.packDropdownTwo = auqr.misc.packSection:Dropdown({
Name = _d("YQNeH1NB"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = ijyk,
Callback = function(uwc)
local klb = type(uwc) == _d("Rg5TBxY") and uwc[1] or uwc

auqr.misc.packSlotTwo = lg[tostring(klb)]
end,
}, _d("QQNeHyxB"))

auqr.misc.packSection:Button({
Name = _d("cx9BBwpTQlMMWhg"),
Callback = function()
local lhy = auqr.misc.util
local bcm = auqr.misc.packSlotOne
local zft = auqr.misc.packSlotTwo

if not bcm then
ib:Notify({
Title = _d("cQ5DD1MjU1EEQg"),
Description = _d("YgZSAFMSEkIOUgBTFV1AT0IHHAcSA09XAgEARhw"),
Lifetime = 5,
})

return
end

local phrk, am = lhy.applyPacks(bcm, zft)

if not phrk then
ib:Dialog({
Title = _d("cQ5DD1MjU1EEQg"),
Description = am,
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})
end
end,
})

auqr.misc.cards = {
rarityLabels = { _d("cwNd"), _d("fABDBhIf"), _d("dQBdDw"), _d("YA5YBREcRQ"), _d("ZwFYHRYBQVMD") },
borderOf = { Normal = 1, Gold = 2, Rainbow = 3, Universal = 4 },
mergeOn = false,
deconOn = false,
mergeWanted = {},
deconWanted = {},
mergeAt = 0,
deconAt = 0,
mergeDone = _d("fABFAxodVRIcVAUHU0tXGw"),
deconDone = _d("fABFAxodVRIcVAUHU0tXGw"),

inFlight = false,

interval = 3600,
manualGap = 20,
manualAt = 0,

protectedPrefixes = { weather = true, boss = true, raid = true, wb = true, fish = true, hw = true, event = true },

deconExceptions = { weather_sayaka = true, weather_caesar = true },

deconConfirmed = false,
burnAskedAt = 0,
}

function auqr.misc.cards.isProtected(qacm, aybz)
local pldy = auqr.misc.cards
local avi = tostring(qacm or _d(""))
local bfff = avi:match(_d("bEdqCl4JAh9WbEBaLA"))

if not (bfff and pldy.protectedPrefixes[bfff]) then
return false
end

return not (pldy.deconExceptions[avi] and aybz == 2)
end

function auqr.misc.cards.burnAllowed(eoif)
local qmsp = auqr.misc.cards
local te = qmsp.wantedFor(_d("VgpSBB0kU1wbVA8"))

if not (te == nil or te[3] or te[4]) then
qmsp.deconConfirmed = false

return true
end

if qmsp.deconConfirmed then
return true
end

if eoif then
return false
end

if os.clock() < (qmsp.burnAskedAt or 0) then
return false
end

qmsp.burnAskedAt = os.clock() + 20

ib:Dialog({
Title = _d("cBpDBVMhU1sBUwQEU11AT2QFGgVXQBxQB1MQU0ALQlQ"),
Description = _d("cxpFBFMXV1EAXxgHAUdRGxEYFh1WQU9UHRYBSxIMXhsKU1tcT0UDFlNfUxtSAxodVRIdXhwAU1NcCxEIEh1cXRsRCRZTR1wLXgUWXRI")
.. _d("ZQpQHxsWQB5PUwQAAB4SHVACF1NQXRxCR1MEXUADVUsRHEFBQxENGgBaWwFWR1M7U14DXhwWFlwSDl8PUxZEVwFFSxASQFYcEQoBFhJaCl0PUxFTUQQRDhoHWlcdERwSChw"),
Buttons = {
{
Name = _d("cBpDBVMHWlcC"),
Callback = function()
qmsp.deconConfirmed = true
qmsp.deconAt = 0
qmsp.manualAt = 0

pcall(function()
auqr.misc.deconToggle:UpdateState(true)
end)
end,
},
{
Name = _d("cQ5fCBYf"),
Callback = function()
pcall(function()
auqr.misc.deconToggle:UpdateState(false)
end)
end,
},
},
})

return false
end

function auqr.misc.cards.wantedFor(wyva)
local xkr = auqr.misc.cards[wyva] or {}

if next(xkr) == nil or xkr[0] then
return nil
end

return xkr
end

function auqr.misc.cards.npcFor(kdww)
local debb = workspace:FindFirstChild(_d("fD9yGA"))

if not debb then
return nil
end

local mnh = kdww and _d("VBpCDiwdQlE") or _d("VgpSBB0ARkAaUh8sHUJR")

for hzys, jcsf in ipairs(debb:GetChildren()) do
if jcsf:GetAttribute(_d("fD9yIhc")) == mnh then
return jcsf
end
end

local owgs = kdww and { _d("fQBBAx8K"), _d("XQBBBwoW") } or { _d("YQdQHh8S"), _d("eg5HDicEXXYOVRg") }

for ndap, sxgs in ipairs(debb:GetChildren()) do
for yuf, hgb in ipairs(owgs) do
if sxgs.Name == hgb then
return sxgs
end
end
end

local np = kdww and { _d("UQ5DD1MeV0AIWAUU"), _d("XQBBAx8K") } or { _d("VgpSBB0ARkAaUh8aHFw"), _d("QQdQHh8S") }

for smnt, pyee in ipairs(debb:GetChildren()) do
for om, el in ipairs(pyee:GetDescendants()) do
if el:IsA(_d("ZgpJHz8SUFcD")) and el.Text ~= _d("") then
local cri = el.Text:lower()

for xvxu, amc in ipairs(np) do
if cri:find(amc, 1, true) then
return pyee
end
end

break
end
end
end

return nil
end

function auqr.misc.cards.rarityText(yvi)
local hz = auqr.misc.cards.wantedFor(yvi)

if not hz then
return _d("cwNd")
end

local oge = {}

for rnk, pgqd in pairs(auqr.misc.cards.borderOf) do
if hz[pgqd] then
table.insert(oge, rnk)
end
end

if #oge == 0 then
return _d("cwNd")
end

table.sort(oge)

return table.concat(oge, _d("Hk8"))
end

function auqr.misc.cards.run(td, gpnq, mvn)
local sik = auqr.misc.cards
local tccb = auqr.misc.util
local skm = td and _d("XwpDDBYyRg") or _d("VgpSBB0yRg")

if mvn then
if os.clock() < sik[skm] then
return false, _d("fABFSxcGVxIWVB9d")
end
elseif os.clock() < sik.manualAt then
return false, _d("ZQ5YH1MSEl8AXA4dBxw")
end

if sik.inFlight then
return false, _d("cwFeHxsWQBIMUBkXU0ZABkFLGgASUwNDDhIXSxIdRAUdGlxVQQ")
end

local jqhc = my.busy(1) and 1 or (my.busy(2) and 2 or nil)
local dhfi = os.clock() - (qe.floorAt or 0) < 90
local fmje = jqhc ~= nil and my.towerSlot() == jqhc and dhfi

if jqhc and not fmje then
return false, _d("ewERClMRU0YbXQ5TXhJGB1RLBwFbQk9GBAYfVhIKXw9TGkYc")
end

if pxwb.battlePending and os.time() < (pxwb.battlePendingUntil or 0) then
return false, _d("c09TCgcHXldPWBhTAEZTHUUCHRQSH09FAxZTRkAGQUsEHEdeCxEIEh1RVwMRAgdd")
end

if not td and not sik.burnAllowed() then
return false, _d("cQBfDRoBXxI9UAIdEV1FQGQFGgVXQBxQB1MVW0AcRUU")
end

local iqf = sik.npcFor(td)

if not iqf then
return false, td
and _d("fQBBAx8KElscEQUcBxJbAREfGxpBEgJQG1NeEkYdUB0WHxJGABEDGh4SUwFVSwMBV0EcEQIHU1NVDlgFXQ")
or _d("ZgdUSxcWUV0BQh8BBlFGT387MFNbQU9fBAdTW1xPRQMaABJfDkFLXlNGQA5HDh9TRl1PWB9TElxWT0EZFgBBEgZFSxIUU1sBHw")
end

local ldz = td and ic.OpenFuseDialog or ic.OpenDeconstructDialog
local vtns = td and ic.FuseCards or ic.DeconstructCards

if not (ldz and vtns) then
return false, _d("ZgdQH1MaQRIBXh9TGlwSG1kCAFNVUwJUSwUWQEEGXgVd")
end

local wgq = td and _d("XwpDDBYkU1wbVA8") or _d("VgpSBB0kU1wbVA8")
local nieb = sik.wantedFor(wgq)

sik.manualAt = os.clock() + sik.manualGap

if mvn then
sik[skm] = os.clock() + sik.interval
end

sik.inFlight = true

task.spawn(function()

local eo = nil

local function bfuw(tdyh, px)
if td then
sik.mergeDone = tdyh
else
sik.deconDone = tdyh
end

if px and mvn then
sik[skm] = os.clock() + 120
end

sik.inFlight = false
end

local zvcs = tccb.visit(iqf.Name)

if not zvcs then
bfuw(_d("cQdQGRIQRlcdEQIAU1xdGxEZFhJWS08cSwEWRkAWWAUUU1tcT0UcHFNfWwFEHxYAHA"), true)

return
end

task.wait(0.9)

local apv = nil
local eaw = ldz.OnClientEvent:Connect(function(zki)
if type(zki) == _d("Rg5TBxY") then
apv = zki
end
end)

for sdj = 1, 3 do
pcall(function()
ldz:FireServer()
end)

for xusi = 1, 20 do
if apv then
break
end

task.wait(0.3)
end

if apv then
break
end

task.wait(1.5)
end

eaw:Disconnect()
tccb.returnTo(zvcs)

if type(apv) ~= _d("Rg5TBxY") then
bfuw(_d("ZgdUSxcaU14AVksXGlYSAV4fUxJcQRhUGVNeEkAKRRkKGlxVT1gFUwdFXU9cAh0GRlccHw"), true)

return
end

local apj = {}

for ufsm, hkxj in ipairs(apv) do
local eixz = tonumber(hkxj.borderLevel)
local mrse = hkxj.cardId or hkxj.id

if eixz and (not nieb or nieb[eixz])
and (td or not auqr.misc.cards.isProtected(mrse, eixz)) then
table.insert(apj, hkxj)
end
end

if #apj == 0 then

auqr.misc.cards.closeFrame(td)
bfuw(_d("fABFAxodVRIbXksAFlxWT1cEAVM") .. auqr.misc.cards.rarityText(wgq) .. _d("HA"))

return
end

if gpnq then

local bbn = {}

for sp, lkmb in ipairs(apj) do
if (tonumber(lkmb.count) or 0) >= gpnq then
table.insert(bbn, lkmb)
end
end

if #bbn == 0 then
auqr.misc.cards.closeFrame(td)
bfuw(_d("fAAR") .. auqr.misc.cards.rarityText(wgq) .. _d("Eh1eHFMbU0FP") .. gpnq .. _d("EgxeGxoWQRIWVB9d"))

return
end

apj = bbn

table.sort(apj, function(wlp, vc)
return (tonumber(wlp.count) or 0) < (tonumber(vc.count) or 0)
end)

local hbvw, vmd = {}, 0

for gdp, lwxw in ipairs(apj) do
local elob = tonumber(lwxw.count) or 0

if #hbvw > 0 and vmd + elob > gpnq then
break
end

table.insert(hbvw, lwxw)
vmd = vmd + elob
end

apj = hbvw
eo = vmd
end

local aqln = 0

auqr.misc.cards.closeFrame(td)

if td then
if not nieb then

pcall(function()
vtns:FireServer(_d("UwNd"), nil)
end)

aqln = #apj
else
local tbek = {}

for qr, plw in ipairs(apj) do
table.insert(tbek, { plw.cardId, tonumber(plw.borderLevel) })
end

pcall(function()
vtns:FireServer(_d("QQpdDhAHV1YwUAcf"), tbek)
end)

aqln = #tbek
end
else
local svq = {}

for lt, ytt in ipairs(apj) do
if #svq >= 25 then
break
end

table.insert(svq, { ytt.cardId, tonumber(ytt.borderLevel), _d("UwNd") })
end

pcall(function()
vtns:FireServer(svq)
end)

aqln = #svq
end

bfuw(_d("YQpfH1M") .. tostring(aqln) .. _d("Eh1eHA") .. (aqln == 1 and _d("") or _d("QQ"))
.. _d("Ekc") .. auqr.misc.cards.rarityText(wgq) .. _d("Gw")
.. (eo and (_d("Hk8") .. tostring(eo) .. _d("EgxQGRcA")) or _d("")))
end)

return true
end

function auqr.misc.cards.closeFrame(kgu)
pcall(function()
local udz = kgu and { _d("dBpCDjQGWw"), _d("dBpCDjUBU18K") } or { _d("dgpSBB0ARkAaUh80Bls"), _d("dgpSBB0ARkAaUh81AVNfCg") }
local gryc = require(gx.ModuleScripts.MenuManager)
local fxhx = ysuk:FindFirstChild(udz[1])
local cx = fxhx and fxhx:FindFirstChild(udz[2])

if cx then
gryc.close(cx)
end

if not kgu then
local kyhr = fxhx and fxhx:FindFirstChild(_d("dgpSBB0ARkAaUh8hEkZXHHcZEh5X"))

if kyhr then
gryc.close(kyhr)
else
kyhr = ysuk:FindFirstChild(_d("dgpSBB0ARkAaUh8hEkZXHHcZEh5X"))

if kyhr then
gryc.close(kyhr)
end
end
end
end)
end

function auqr.misc.cards.refresh(iv)

local kyvj = iv and auqr.misc.mergeParagraph or auqr.misc.deconParagraph

if not kyvj then
return
end

pcall(function()
kyvj:UpdateBody(iv
and auqr.misc.cards.mergeText()
or auqr.misc.cards.deconText())
end)
end

function auqr.misc.cards.mergeText()
local vum = auqr.misc.cards

return _d("YA5DAgcaV0FVEQ") .. vum.rarityText(_d("XwpDDBYkU1wbVA8")) .. _d("OA") .. vum.mergeDone
end

function auqr.misc.cards.deconText()
local hjj = auqr.misc.cards

return _d("YA5DAgcaV0FVEQ") .. hjj.rarityText(_d("VgpSBB0kU1wbVA8")) .. _d("OA") .. hjj.deconDone
.. _d("ODhUCgcbV0BDEQkcAEEeT0MKGhceEhheGR8XElAAQhhfU1RbHFkCHRQeEidQBx8cRVcKX0sSHVYSCkcOHQcSUQ5DDwBTU0AKEQUWBVdAT0IOHQcc")
end

auqr.misc.skill = {
on = false,
at = 0,
mainWanted = {},
raidWanted = {},

mainOrder = {},
raidOrder = {},
last = _d("fABFAxodVRINXh4UG0YSFlQf"),
shown = _d(""),
}

function auqr.misc.skill.branchMap(wf)
local ecd = {}

for cmqx, dynt in ipairs(wsh.Trees[wf].branches) do
ecd[dynt.name] = dynt
end

return ecd
end

function auqr.misc.skill.branchLabels(trmr)
local wmz = {}

for udl, znvo in ipairs(wsh.Trees[trmr].branches) do
table.insert(wmz, znvo.name)
end

return wmz
end

function auqr.misc.skill.wantedFrom(xuu, ovn)
local okkn = {}
local jloj = auqr.misc.skill.branchMap(ovn)

if type(xuu) == _d("Rg5TBxY") then
for emf, gvcx in pairs(xuu) do
if gvcx and jloj[tostring(emf)] then
okkn[jloj[tostring(emf)].id] = true
end
end
end

return okkn
end

function auqr.misc.skill.ordered(lnzn, ed)
local cjp = {}
local vsrt = {}

for adz, veqy in ipairs(ed or {}) do
if lnzn[veqy] then
table.insert(cjp, veqy)
vsrt[veqy] = true
end
end

for dgt in pairs(lnzn) do
if not vsrt[dgt] then
table.insert(cjp, dgt)
end
end

return cjp
end

function auqr.misc.skill.branchById(jek)
local vpz = {}

for szvf, nzl in ipairs(wsh.Trees[jek].branches) do
vpz[nzl.id] = nzl
end

return vpz
end

function auqr.misc.skill.upgrade()
local zi = auqr.misc.skill
local nl = auqr.misc.util
local upg = nl.currentProfile and nl.currentProfile()

if type(upg) ~= _d("Rg5TBxY") then
return false, _d("fAARGwEcVFsDVEsKFkYc")
end

local xdyu = upg.skillTrees or {}
local zdk = { [1] = zi.mainOrder, [2] = zi.raidOrder }
local qwob = nil

for zlvt, izt in ipairs(wsh.Trees) do
local lpa = xdyu[izt.id]
local sds = tonumber(upg[izt.pointsField or _d("QQRYBx8jXVsBRRg")]) or 0
local ngp = auqr.misc.skill.branchById(zlvt)

if type(lpa) == _d("Rg5TBxY") and sds > 0 then
for mfj, yz in ipairs(zdk[zlvt] or {}) do
local fbi = ngp[yz]

if fbi and not qwob then
local hbk = wsh.getBranchLevel(xdyu, izt.id, fbi.id) or 0
local mdfz = hbk + 1

if mdfz <= fbi.levels then
local irik = fbi.id .. mdfz
local rwg = 1

if type(fbi.costs) == _d("Rg5TBxY") and tonumber(fbi.costs[mdfz]) then
rwg = tonumber(fbi.costs[mdfz])
elseif tonumber(fbi.cost) then
rwg = tonumber(fbi.cost)
end

if rwg <= sds and wsh.isAvailable(xdyu, izt.id, irik) then
qwob = { tree = izt.id, node = irik, name = fbi.name, level = mdfz }
end
end
end
end
end
end

if not qwob then
return false, _d("fABFAxodVRIbXksRBksSFlQfXQ")
end

ic.BuySkillNode:FireServer(qwob.tree, qwob.node)

if nl.askProfile then
pcall(nl.askProfile)
end

zi.last = _d("cABEDBsHEg") .. qwob.name .. _d("Eg") .. tostring(qwob.level)

return true
end

function auqr.misc.skill.text()
local omf = auqr.misc.skill
local zkb = auqr.misc.util
local tffb = zkb.currentProfile and zkb.currentProfile()

if type(tffb) ~= _d("Rg5TBxY") then
return _d("YgBYBQcACBJQOw") .. omf.last
end

local peed = tffb.skillTrees or {}
local dpbe = {}

local qlwp = { [1] = omf.mainOrder, [2] = omf.raidOrder }

for ccki, crj in ipairs(wsh.Trees) do
local ikrp = tonumber(tffb[crj.pointsField or _d("QQRYBx8jXVsBRRg")]) or 0
local zzz = {}
local cnd = auqr.misc.skill.branchById(ccki)

for oth, zkr in ipairs(qlwp[ccki] or {}) do
local lym = cnd[zkr]

if lym then
local un = wsh.getBranchLevel(peed, crj.id, lym.id) or 0
table.insert(zzz, lym.name .. _d("Eg") .. tostring(un) .. _d("HQ") .. tostring(lym.levels))
end
end

dpbe[#dpbe + 1] = crj.name .. _d("CE8") .. tostring(ikrp) .. _d("Eh9FGA")
.. (#zzz > 0 and (_d("EkIR") .. table.concat(zzz, _d("Hk8"))) or _d("EkIRBRwHWlsBVksDGlFZClU"))
end

dpbe[#dpbe + 1] = omf.last

return table.concat(dpbe, _d("OA"))
end

auqr.misc.mergeSection = auqr.misc.tab:Section({
Side = _d("fgpXHw"),
})

auqr.misc.mergeSection:Header({
Name = _d("fwpDDBZTwq3InQ"),
})

auqr.misc.mergeToggle = auqr.misc.mergeSection:Toggle({
Name = _d("cxpFBFMeV0AIVA"),
Default = false,
Callback = function(clq)
local nknh = auqr.misc.cards

nknh.mergeOn = clq

nknh.mergeAt = (clq and tcc.loading) and (os.clock() + nknh.interval) or 0
end,
}, _d("UxpFBCweV0AIVA"))

auqr.misc.mergeDropdown = auqr.misc.mergeSection:Dropdown({
Name = _d("YA5DAgcaV0E"),
Search = false,
Multi = true,
Required = false,
Default = { _d("cwNd") },
Options = auqr.misc.cards.rarityLabels,
Callback = function(jlq)
local pqd = {}

if type(jlq) == _d("Rg5TBxY") then
for dcu, tso in pairs(jlq) do
if tso then
if dcu == _d("cwNd") then
pqd[0] = true
else
pqd[auqr.misc.cards.borderOf[tostring(dcu)]] = true
end
end
end
end

auqr.misc.cards.mergeWanted = pqd
auqr.misc.cards.refresh(true)
end,
}, _d("QA5DAgcaV0E"))

auqr.misc.mergeSection:Button({
Name = _d("fwpDDBZTXF0Y"),
Callback = function()
local nwg, astt = auqr.misc.cards.run(true)

if not nwg then
ib:Notify({
Title = _d("fwpDDBY"),
Description = astt,
Lifetime = 6,
})
end
end,
})

auqr.misc.mergeSection:Button({
Name = _d("fwpDDBZTCwI"),
Callback = function()

local ksix, gumi = auqr.misc.cards.run(true, 90)

if not ksix then
ib:Notify({
Title = _d("fwpDDBZTCwI"),
Description = gumi,
Lifetime = 6,
})
end
end,
})

auqr.misc.mergeParagraph = auqr.misc.mergeSection:Paragraph({
Header = _d("YRtQHwYA"),
Body = auqr.misc.cards.mergeText(),
})

auqr.misc.accSection = auqr.misc.tab:Section({
Side = _d("YAZWAwc"),
})

auqr.misc.accSection:Header({
Name = _d("cwxSDgAAXUAGVBhTg62g4Q"),
})

auqr.misc.accToggle = auqr.misc.accSection:Toggle({
Name = _d("cxpFBFMRV0EbEQoQEFdBHF4ZCg"),
Default = false,
Callback = function(ioui)
auqr.misc.util.accOn = ioui
auqr.misc.util.accAt = 0
end,
}, _d("UxpFBCwRV0EbbgoQEFdBHF4ZCg"))

auqr.misc.accBuyToggle = auqr.misc.accSection:Toggle({
Name = _d("cxpFBFMRR0tPUw4ABw"),
Default = false,
Callback = function(nrj)
auqr.misc.util.accBuyOn = nrj
auqr.misc.util.accBuyAt = 0
auqr.misc.util.accAt = 0
end,
}, _d("UxpFBCwRR0swUw4ABw"))

auqr.misc.accSection:Button({
Name = _d("cBpISxEWQUY"),
Callback = function()
local fhzr, ixa = auqr.misc.util.buyBest()

if not fhzr then
ib:Notify({
Title = _d("cwxSDgAAXUAGVBg"),
Description = ixa,
Lifetime = 6,
})
end
end,
})

auqr.misc.accSection:Button({
Name = _d("dx5EAgNTUFccRQ"),
Callback = function()
if not auqr.misc.util.equipBest() then
ib:Notify({
Title = _d("cwxSDgAAXUAGVBg"),
Description = _d("fABFAxodVRINVB8HFkASBkJLHARcVwsREhYHHA"),
Lifetime = 5,
})
end
end,
})

auqr.misc.accParagraph = auqr.misc.accSection:Paragraph({
Header = _d("YRtQHwYA"),
Body = auqr.misc.util.accText(),
})

auqr.misc.claimInfo = auqr.misc.tab:Section({
Side = _d("YAZWAwc"),
})

auqr.misc.claimInfo:Header({
Name = _d("fwZCCBYfXlMBVAQGAA"),
})

auqr.misc.indexParagraph = auqr.misc.claimInfo:Paragraph({
Header = _d("cQ5DD1M6XFYKSQ"),
Body = auqr.misc.util.indexText(),
})

auqr.misc.achParagraph = auqr.misc.claimInfo:Paragraph({
Header = _d("cwxZAhYFV18KXx8A"),
Body = auqr.misc.util.achText(),
})

auqr.misc.questParagraph = auqr.misc.claimInfo:Paragraph({
Header = _d("YxpUGAcA"),
Body = auqr.misc.util.questText(),
})

auqr.misc.packParagraph = auqr.misc.claimInfo:Paragraph({
Header = _d("Yg5SAAA"),
Body = auqr.misc.util.packText(),
})

auqr.misc.skillSection = auqr.misc.tab:Section({
Side = _d("YAZWAwc"),
})

auqr.misc.skillSection:Header({
Name = _d("YQRYBx9TZkAKVEuD7L6B"),
})

auqr.misc.skillToggle = auqr.misc.skillSection:Toggle({
Name = _d("cxpFBFMGQlUdUA8W"),
Default = false,
Callback = function(vl)
local tu = auqr.misc.skill

if vl and not (next(tu.mainWanted) or next(tu.raidWanted)) then
tu.on = false

pcall(function()
auqr.misc.skillToggle:UpdateState(false)
end)

ib:Dialog({
Title = _d("YgZSAFMSElAdUAUQGxJUBkMYBw"),
Description = _d("cQdeBAAWElMbEQcWEkFGT14FFlNQQA5fCBtTW1xPRQMWU39TBl9LBwFXV09eGVMhU1sLER8BFlcSC0MEAxddRQERRlM")
.. _d("cxpFBFMGQlUdUA8WU11cA0hLAANXXAtCSwMcW1wbQksEG1dAChESHAYSQgBYBQdTW0ZB"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})

return
end

tu.on = vl
tu.at = 0
end,
}, _d("UxpFBCwGQlUdUA8W"))

auqr.misc.skillMainDropdown = auqr.misc.skillSection:Dropdown({
Name = _d("fw5YBVMHQFcK"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = auqr.misc.skill.branchLabels(1),
Callback = function(vr)
local axkb = auqr.misc.skill
local dec = axkb.wantedFrom(vr, 1)

axkb.mainWanted = dec
axkb.mainOrder = axkb.ordered(dec, axkb.mainOrder)
axkb.shown = _d("")
end,
}, _d("Xw5YBSwHQFcK"))

auqr.misc.skillRaidDropdown = auqr.misc.skillSection:Dropdown({
Name = _d("YA5YD1MHQFcK"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = auqr.misc.skill.branchLabels(2),
Callback = function(uipj)
local wlrf = auqr.misc.skill
local odx = wlrf.wantedFrom(uipj, 2)

wlrf.raidWanted = odx
wlrf.raidOrder = wlrf.ordered(odx, wlrf.raidOrder)
wlrf.shown = _d("")
end,
}, _d("QA5YDywHQFcK"))

pcall(function()
auqr.misc.skillMainDropdown:UpdateSelection({})
end)

pcall(function()
auqr.misc.skillRaidDropdown:UpdateSelection({})
end)

auqr.misc.skillParagraph = auqr.misc.skillSection:Paragraph({
Header = _d("YRtQHwYA"),
Body = auqr.misc.skill.text(),
})

task.spawn(function()
local bnjb = auqr.misc.util

while enj() do
if bnjb.indexOn or bnjb.achOn or bnjb.questOn or bnjb.accOn or bnjb.accBuyOn then
bnjb.currentProfile()
end

if bnjb.indexOn then
bnjb.claimIndex()
end

if bnjb.achOn then
bnjb.claimAchievement()
end

if bnjb.questOn then

if os.clock() - bnjb.questAskedAt > 20 or os.clock() - bnjb.weeklyAskedAt > 20 then
bnjb.askQuests()
end

bnjb.claimQuest()
end

if bnjb.accOn and os.clock() >= bnjb.accAt then
bnjb.accAt = os.clock() + 3
bnjb.equipBest()
end

local qrhh = auqr.misc.cards

if not qrhh.inFlight then
if qrhh.mergeOn and os.clock() >= qrhh.mergeAt then
qrhh.run(true, nil, true)
elseif qrhh.deconOn and os.clock() >= qrhh.deconAt then
qrhh.run(false, nil, true)
end
end

if qrhh.mergeDone ~= qrhh.mergeShown then
qrhh.mergeShown = qrhh.mergeDone

pcall(function()
auqr.misc.mergeParagraph:UpdateBody(auqr.misc.cards.mergeText())
end)
end

if qrhh.deconDone ~= qrhh.deconShown then
qrhh.deconShown = qrhh.deconDone

pcall(function()
auqr.misc.deconParagraph:UpdateBody(auqr.misc.cards.deconText())
end)
end

local wvbi = auqr.misc.skill

if wvbi.on and os.clock() >= wvbi.at then

wvbi.at = os.clock() + 2
wvbi.upgrade()
end

local ctuf = auqr.misc.skill.text()

if wvbi.shown ~= ctuf then
wvbi.shown = ctuf

pcall(function()
auqr.misc.skillParagraph:UpdateBody(ctuf)
end)
end

if bnjb.accBuyOn and os.clock() >= bnjb.accBuyAt then

local bdqk = bnjb.buyBest()

bnjb.accBuyAt = os.clock() + (bdqk and 45 or 10)
end

local dgbf = {
{ key = _d("WwFVDgs"), paragraph = auqr.misc.indexParagraph, value = bnjb.indexText() },
{ key = _d("UwxZ"), paragraph = auqr.misc.achParagraph, value = bnjb.achText() },
{ key = _d("QxpUGAc"), paragraph = auqr.misc.questParagraph, value = bnjb.questText() },
{ key = _d("Qg5SAA"), paragraph = auqr.misc.packParagraph, value = bnjb.packText() },
{ key = _d("UwxS"), paragraph = auqr.misc.accParagraph, value = bnjb.accText() },
}

for ar, qxi in ipairs(dgbf) do
if qxi.paragraph and bnjb.shown[qxi.key] ~= qxi.value then
bnjb.shown[qxi.key] = qxi.value

pcall(function()
qxi.paragraph:UpdateBody(qxi.value)
end)
end
end

task.wait(0.75)
end
end)

local uhuo = injc:Section({
Side = _d("YAZWAwc"),
})

uhuo:Paragraph({
Header = _d("dAZCAxodVQ"),
Body = _d("cxpFBFM1W0EHEQ4CBltCHBESHAZAEh1eD19TVFMMVBhTB1pXT0YKBxZAEg5fD1MQU0EbQkscHRJbG0JLHARcHk9FAxYdEkAKVAcAU0VaCl9LABxfVxtZAh0UElAGRQ4AXRJmPxEfHFNwUxYRGwYfXkFPSAQGU1BTDFpLBxwSRgdUSxESSxIJWBkABx4SDl8PUwdaV09FHBxTdlcKQQ4ABxJlDkUOAVNBRQZFCBsWQRIHXgcXU0ZaChEYAxxGEhZeHlMEV0AKERgHElxWBl8MUxxcEhhZDh1TS10aEQoBHldWT0UDFh4SH09FAxZTVlcKQQ4ABxJABl8MUxBTQB1YDgBTRloKEQkaFFVXHEVLHwZRWU9TBB0GQRxlOz8bFhJBB14bUxFHSxwRCh0XElceRAIDABJAAFUYUxJcVk9TChoHEkUGRQNTB1pXT1IKAAdBEhZeHlMbU0QKH0sxBktbAVZLHRZXVhwRHxsWElEARAUHFkASQhEJHAdaEgxeBhZTVEAAXEsHG1cSKVgYGxZAXw5fRXl5cVMbUgMWABJZClQbAFNTEh1EBR0aXFVPRQofH0sSDUhLGgdXX09QBRdTQVMZVBhTGkYeT0IEUwdaV09FBAcSXhIMUBkBGldBT14dFgESUApFHBYWXBIcVBgAGl1cHB8"),
})

local btor = injc:Section({
Side = _d("YAZWAwc"),
})

btor:Header({
Name = _d("cQ5FCBsWQQ"),
})

local mwlo

mwlo = btor:Paragraph({
Header = _d("ZQdQH1MKXUdPUgoGFFpG"),
Body = kvtd(),
})

local oklk = injc:Section({
Side = _d("YAZWAwc"),
})

oklk:Header({
Name = _d("exxdCh0XEkEHXhs"),
})

oklk:Toggle({
Name = _d("cxpFBFMQQFMJRUQRBksSBkIHEh1WEh1eDw"),
Default = false,
Callback = function(afog)
msip.island.autoRod = afog
msip.islandAt = 0
end,
}, _d("WxxdCh0XbVMaRQQsAV1W"))

oklk:Toggle({
Name = _d("dx5EAgNTW0EDUAUXU0BdCw"),
Default = false,
Callback = function(fru)
msip.island.equipRod = fru
msip.islandAt = 0
end,
}, _d("WxxdCh0XbVceRAIDLEBdCw"))

oklk:Toggle({
Name = _d("cxpFBFMQQFMJRUsSEFFXHEIEAQo"),
Default = false,
Callback = function(ywwz)
msip.island.autoAcc = ywwz
msip.islandAt = 0
end,
}, _d("WxxdCh0XbVMaRQQsElFRCkIYHAFL"))

oklk:Toggle({
Name = _d("dx5EAgNTU1EMVBgAHEBL"),
Default = false,
Callback = function(llgb)
msip.island.equipAcc = llgb
msip.islandAt = 0
end,
}, _d("WxxdCh0XbVceRAIDLFNRDFQYABxASw"))

local zntl

zntl = oklk:Paragraph({
Header = _d("exxdCh0XElUKUBk"),
Body = msip.shopIsland.text(),
})

local wme = injc:Section({
Side = _d("fgpXHw"),
})

wme:Header({
Name = _d("YApTAgEHWg"),
})

msip.rebirthToggle = wme:Toggle({
Name = _d("cxpFBFMBV1AGQx8b"),
Default = false,
Callback = function(evod)
msip.autoRebirth = evod
end,
}, _d("UxpFBCwBV1AGQx8b"))

msip.rebirthParagraph = wme:Paragraph({
Header = _d("YRtQHwYA"),
Body = msip.rebirthText(),
})

wme:Button({
Name = _d("Zj8RHxxTW0EDUAUX"),
Callback = function()
if not msip.gotoIsland() then
ib:Notify({
Title = _d("cw1QBRccXFcLESIAH1NcCw"),
Description = _d("cQdQGRIQRlcdEQIAU1xdGxEZFhJWS09IDgdTHxIbQxJTElVTBl9LGh0SU09cBB4WXEZB"),
Lifetime = 5,
})
end
end,
})

local yhww

yhww = wme:Toggle({
Name = _d("cxpFBFM6QV4OXw9TO1NAC1IEARY"),
Default = false,
Callback = function(lsfh)
of.island = lsfh
of.pending = false
of.pendingUntil = 0
of.paused = false
of.gaveUp = false
of.stoodDown = false
of.manualPause = false

if not lsfh then
return
end

if my.otherTowerOn(_d("Wg5DDxAcQFc")) then
of.island = false

pcall(function()
yhww:UpdateState(false)
end)

pcall(function()
ib:Dialog({
Title = _d("cxpFBFM6QV4OXw9TO1NAC1IEARYSXQlX"),
Description = _d("ZgdUSzsSXl4ARg4WHRJGAEYOAVNbQU9QBwEWU1YWERkGHVxbAVZHUxJcVk9GAgcbEl0BVEsAH11GT0UDFlNVUwJUSxwdXktPQx4dABJdAVRLGh1UWwFYHxZTQF0AXEsSBxJTT0UCHhYcEjtEGR1TRloORUscFVQeT14ZUwdHQAERBB1Tc0cbXksgH11GT0IEUxZTUQcRHxwEV0BPVg4HABJbG0JLHARcEhxdBAdd"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})
end)

return
end

if my.enabled and my.hardcoreSlot() == nil then
of.island = false

pcall(function()
yhww:UpdateState(false)
end)

pcall(function()
ib:Dialog({
Title = _d("cxpFBFM6QV4OXw9TO1NAC1IEARYSXQlX"),
Description = _d("fAARGB8cRhIGQksAFkYSG15LElNGXRhUGV9TU1wLER8bFhJVDlwOUxxcXhYRGAcSQEYcEQpTB11FCkNLAQZcEglDBB5TUxIbXhwWARJBA14fXVNhVxsRBB0WEkYAESIAH1NcCxEDEgFWUQBDDl9TXUBPRR4BHRJzGkUEUyBeXRsRBBUVHA"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})
end)

return
end

if not of.data then
of.island = false

pcall(function()
yhww:UpdateState(false)
end)

pcall(function()
ib:Dialog({
Title = _d("cxpFBFM6QV4OXw9TO1NAC1IEARYSXQlX"),
Description = _d("ZgdYGFMRR1sDVUsbEkESAV5LOxJAVgxeGRYnXUUKQy8SB1MeT0IEUwdaV09FBAQWQBUcERgHElVXHBEIEh1cXRsRCRZTQFcOVUsSHVYSDhEZBh0SUQ5fBRwHElAKERgHEkBGClVF"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})
end)

return
end

local nujk = of.remotes.request

if nujk then
pcall(function()
nujk:FireServer()
end)
end
end,
}, _d("UxpFBCwaQV4OXw8sG1NAC1IEARY"))

of.islandToggle = yhww

of.islandParagraph = wme:Paragraph({
Header = _d("cBpXDQA"),
Body = of.buffText(),
})

wme:Button({
Name = _d("Yg5EGBZTe0EDUAUXU3pTHVUIHAFX"),
Callback = function()
if of.pauseRun then
of.pauseRun()
end
end,
})

wme:Button({
Name = _d("dQZHDlMmQhImQgcSHVYSJ1AZFxBdQAo"),
Callback = function()
if of.giveUpRun then
of.giveUpRun()
end
end,
})

local hlq = injc:Section({
Side = _d("fgpXHw"),
})

hlq:Header({
Name = _d("dAZCAxodVRIcWQQD"),
})

hlq:Toggle({
Name = _d("cxpFBFMRR0tPUw4ABxJAAFU"),
Default = false,
Callback = function(zhuq)
msip.shop.autoBuyRod = zhuq
msip.shopAt = 0
end,
}, _d("UxpFBCwRR0swUw4AB21AAFU"))

hlq:Toggle({
Name = _d("cxpFBFMRR0tPUw4ABxJQDlgf"),
Default = false,
Callback = function(ctqn)
msip.shop.autoBuyBait = ctqn
msip.shopAt = 0
end,
}, _d("UxpFBCwRR0swUw4AB21QDlgf"))

hlq:Toggle({
Name = _d("dx5EAgNTUFccRUsBHFY"),
Default = false,
Callback = function(ptg)
msip.shop.equipRod = ptg
msip.shopAt = 0
end,
}, _d("Vx5EAgMsUFccRTQBHFY"))

hlq:Toggle({
Name = _d("dx5EAgNTUFccRUsREltG"),
Default = false,
Callback = function(jycx)
msip.shop.equipBait = jycx
msip.shopAt = 0
end,
}, _d("Vx5EAgMsUFccRTQREltG"))

local rdoj

rdoj = hlq:Paragraph({
Header = _d("cApCH1MKXUdPUgodU1dDGlgb"),
Body = tv(),
})
task.spawn(function()
local ajlk = pst()
local vwm = kvtd()
local qbci = tv()
local sbg = msip.shopIsland.text()

while enj() do
local fjde = pst()

if fjde ~= ajlk then
ajlk = fjde
pcall(function()
nex:UpdateBody(fjde)
end)
end

local opx = kvtd()

if opx ~= vwm then
vwm = opx
pcall(function()
mwlo:UpdateBody(opx)
end)
end

local wmd = tv()

if wmd ~= qbci then
qbci = wmd
pcall(function()
rdoj:UpdateBody(wmd)
end)
end

local mlid = msip.shopIsland.text()

if mlid ~= sbg then
sbg = mlid
pcall(function()
zntl:UpdateBody(mlid)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while enj() do

if ceq() and os.clock() >= (msip.shopAt or 0)
and os.clock() >= (msip.islandTripUntil or 0) then
msip.shopAt = os.clock() + 1
pcall(eyzm)
end

if msip.shopIsland.active() and os.clock() >= (msip.islandAt or 0)
and os.clock() >= math.max(msip.shopHoldUntil or 0, msip.tpHoldUntil or 0) then
msip.islandAt = os.clock() + 2
pcall(msip.shopIsland.run)
end

task.wait(1)
end
end)

drv:Select()

local dagf = drv:Section({
Side = _d("fgpXHw"),
})

local shua = drv:Section({
Side = _d("YAZWAwc"),
})

local czr = dagf:Paragraph({
Header = _d("YRtQHwYA"),
Body = qfg(),
})

dagf:Divider()

pxwb.npcToggle = dagf:Toggle({
Name = _d("cxpFBFM9YnE"),
Default = false,
Callback = function(skw)

if skw and not pxwb.story and #re() == 0 then
pcall(function()
pxwb.npcToggle:UpdateState(false)
end)

ib:Dialog({
Title = _d("cxpFBFM9YnFPXw4WF0ESDhEfEgFVVxs"),
Description = _d("YgZSAFMSRhIDVAoABxJdAVRLPSNxEglDBB5TRloKERwcAV5WHBEJFh9dRUMRBAFTRkcdX0scHRJzGkUEUzBdXx9dDgcWEmEbXhkKXRJmB1QZFlNbQU9fBAcbW1wIER8cU1RbCFkfUwpXRkE"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})

return
end

pxwb.enabled = skw
end,
}, _d("UxpFBCwdQlE"))

dagf:Toggle({
Name = _d("ZQ5dAFMHXRIhYSg"),
Default = false,
Callback = function(cnxt)
pxwb.walkToNpc = cnxt
end,
}, _d("RQ5dACwHXW0BQQg"))

dagf:Dropdown({
Name = _d("dgZXDRoQR14bSA"),
Search = false,
Multi = true,
Required = false,
Default = { _d("fABDBhIf") },
Options = gguu,
Callback = function(dab)
local bxp = {}

if type(dab) == _d("Rg5TBxY") then
for eps, kadw in ipairs(gguu) do
if dab[kadw] then
table.insert(bxp, ivtv[kadw])
end
end
end

if #bxp == 0 then
bxp = { _d("XABDBhIf") }
end

pxwb.difficulties = bxp
end,
}, _d("VgZXDRoQR14bSA"))

dagf:Toggle({
Name = _d("cxpFBFMhXV0CQg"),
Default = false,
Callback = function(rkz)
cnwj.enabled = rkz
cnwj.inBattle = false
cnwj.pending = false
end,
}, _d("UxpFBCwBXV0CQg"))

local rmi = drv:Section({
Side = _d("fgpXHw"),
})

rmi:Header({
Name = _d("YQNeHw"),
})

rmi:Paragraph({
Header = _d("egBGSwcbVxIcXQQHABJFAEMA"),
Body = _d("YQNeH1NCEh9PeAUVGlxbG0hLJxxFVx0RQx0cQF8OXUscARJ8BlYDBx5TQAoYSxwBEnoOXQccBFdXARE/HARXQEMRGx8GQRIhYShTEVNGG10OAFNFWgpfSwAfXUZPA0saABJQGkISXXk4YQNeH1NBEh9PfzswAB4SHVACFwAeEh1eBB4AHhImQgcSHVYSJ1AZFxBdQAofYXkxXUYHERgfHEZBT14FUz1icU9TCgcHXlccC0sHBF0SIWEoUxVXUxtEGRYAElMbEQQdEFceT1AFF1NTEh1QAhdTUF0cQksWElFaQTthJwRdEhteHBYBEkAaXxhTGkESG1kOUxxcXhYRGRYVR0EKVUsDEltATxxLOgBeUwFVSzsSQFYMXhkWU11cT1MEBxsSQQNeHwBTW0FPXgUWU0BHAREKABhXVk9XBAFTRkUGUg5deThhA14fAFNdVAkLSxwdVxIcXQQHXxJGAEYOAQASRg5aDlMHR0ABQkU"),
})

my.toggle = rmi:Toggle({
Name = _d("cxpFBFMgXl0b"),
Default = false,
Callback = function(utrq)
if utrq and my.role[1] == my.role[2] and my.role[1] ~= _d("XB9S") then
my.enabled = false

pcall(function()
my.toggle:UpdateState(false)
end)

ib:Dialog({
Title = _d("cxpFBFMgXl0b"),
Description = _d("YQNeH1NCElMBVUsgH11GTwNLEgFXEg1eHxtT") .. my.roleLabel(1) .. _d("HE9lAxIHElscEQQdFhJAGl9LEgBZVwsRDRwBEkYYWAgWXxJBABEEHRYSXQkRHxsWEkYYXksAH11GHBEDEgASRgARCRZTQV0CVB8bGlxVT1QHABYc"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})

return
end

my.enabled = utrq

if utrq then
my.hasSlot2 = my.detectSlot2()

if my.hasSlot2 == false then
ib:Dialog({
Title = _d("cxpFBFMgXl0b"),
Description = _d("YQNeH1NBEl4AXgAAU15dDFoOF1MfEgZFSx0WV1YcER8bFhJ2GlAHUzFTRhtdDlMgXl0bEQwSHldCDkIYX1NdQE94BRUaXFsbVEshHF1fTwNeQ1NRXgpQGRYXHhINVA0cAVcSG1kOUwBXUQBfD1MAXl0bEQgSHRJQDkUfHxYcEj1eHgcaXFVPQh8SCkESAF9LAB9dRk8ASwYdRlsDER8bFlwc"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})
end
end
end,
}, _d("UxpFBCwAXl0b"))

function my.applyRoles()
if not my.enabled then
return
end

if my.role[1] == my.role[2] and my.role[1] ~= _d("XB9S") then
my.enabled = false

pcall(function()
my.toggle:UpdateState(false)
end)

pcall(function()
ib:Dialog({
Title = _d("cxpFBFMgXl0bEQQVFQ"),
Description = _d("YQNeH1NCElMBVUsgH11GTwNLEgFXEg1eHxtT") .. my.roleLabel(1) .. _d("HE9lAxIHElscEQQdFhJAGl9LEgBZVwsRDRwBEkYYWAgWXxJTAVVLGgcSUQ5fBRwHEkYOWg5TB0VdT0IHHAdBHE9iDgdTXVwKERgfHEYSG15LABxfVxtZAh0UElcDQg5d"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})
end)

return
end

local efqr = {}

if my.towerSlot() ~= 1 and qe.enabled then
qe.enabled = false
table.insert(efqr, _d("cxpFBFMnXUUKQw"))

pcall(function()
qe.ui:UpdateState(false)
end)
end

if my.hardcoreSlot() == nil and of.island then
of.island = false
table.insert(efqr, _d("cxpFBFM6QV4OXw9TO1NAC1IEARY"))

pcall(function()
of.islandToggle:UpdateState(false)
end)
end

if my.halloweenSlot() == nil and jjrz.run.enabled then
jjrz.run.enabled = false
table.insert(efqr, _d("cxpFBFM7U14DXhwWFlwSO14cFgE"))

pcall(function()
jjrz.toggle:UpdateState(false)
end)
end

if #efqr > 0 then
pcall(function()
ib:Dialog({
Title = table.concat(efqr, _d("Eg5fD1M")) .. _d("EgBXDQ"),
Description = _d("fAARGB8cRhIGQksAFkYSG15LBxtTRk9FBAQWQBIOXxJTHl1ACh1LABwSWxsRAxIXElwARgMWAVcSG15LAQZcHE92AgUWElsbEQpTAF5dGxEKFBJbXEMRBAFTRkcdX0syBkZdT2IHHAcSXQlXRQ"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})
end)
end
end

my.oneDropdown = rmi:Dropdown({
Name = _d("YQNeH1NC"),
Search = false,
Multi = false,
Required = false,

Default = 1,
Options = my.optionsFor[1],
Callback = function(cheu)
local lnez = type(cheu) == _d("Rg5TBxY") and cheu[1] or cheu

if type(lnez) == _d("QRtDAh0U") and my.roleIds[lnez] then
my.role[1] = my.roleIds[lnez]
my.picked[1] = lnez
end

pcall(function()
my.oneDropdown:UpdateName(_d("YQNeH1NCEtDvk0s") .. my.roleLabel(1))
end)

if my.applyRoles then
my.applyRoles()
end
end,
}, _d("QQNeHyxCbQA"))

my.twoDropdown = rmi:Dropdown({
Name = _d("YQNeH1NB"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = my.optionsFor[2],
Callback = function(ale)
local hqjf = type(ale) == _d("Rg5TBxY") and ale[1] or ale

if type(hqjf) == _d("QRtDAh0U") and my.roleIds[hqjf] then
my.role[2] = my.roleIds[hqjf]
my.picked[2] = hqjf
end

pcall(function()
my.twoDropdown:UpdateName(_d("YQNeH1NBEtDvk0s") .. my.roleLabel(2))
end)

if my.applyRoles then
my.applyRoles()
end
end,
}, _d("QQNeHyxBbQA"))

pcall(function()
my.oneDropdown:UpdateSelection(_d("ZgBGDgE"))
end)

pcall(function()
my.twoDropdown:UpdateSelection(_d("fD9ySxESRkYDVBg"))
end)

getgenv().ACBXSlot = my

local nn = drv:Section({
Side = _d("fgpXHw"),
})

nn:Header({
Name = _d("YA5YD1MRXUEc"),
})

nn:Toggle({
Name = _d("cxpFBFMhU1sLESkcAEE"),
Default = false,
Callback = function(qtzq)
auqr.enabled = qtzq
auqr.pending = {}
auqr.pendingUntil = {}

if qtzq then
auqr.cleared = {}
end
end,
}, _d("UxpFBCwBU1sLbgkcAEE"))

nn:Toggle({
Name = _d("cxpFBFMkU14EER8cU2BTBlVLMRxBQQ"),
Default = false,
Callback = function(ja)
auqr.walkToBoss = ja
end,
}, _d("UxpFBCwEU14Ebh8cLEBTBlU0ERxBQQ"))

local gjxs
gjxs = nn:Slider({
Name = _d("ZQ5dAFMgQlcKVQ"),
Minimum = 0,
Maximum = 72,
Default = 18,
Precision = 0,
Callback = function(qyn)
local uyls = math.floor(qyn + 0.5)
auqr.walkSpeed = uyls

if gjxs and uyls ~= qyn then
gjxs:UpdateValue(uyls)
end
end,
}, _d("RQ5dACwAQlcKVQ"))

nn:Dropdown({
Name = _d("YA5YD1M3W1QJWAgGH0ZL"),
Search = false,
Multi = true,
Required = false,
Default = { _d("fABDBhIf") },
Options = uddd,
Callback = function(ltvd)
local em = {}

if type(ltvd) == _d("Rg5TBxY") then
for gku, hwj in ipairs(uddd) do
if ltvd[hwj] then
table.insert(em, zxlg[hwj])
end
end
end

if #em == 0 then
em = { _d("XABDBhIf") }
end

auqr.difficulties = em
end,
}, _d("QA5YDywXW1QJWAgGH0ZL"))

function auqr.pickedIds(tyg)
local amw = {}

if type(tyg) == _d("Rg5TBxY") then
for pvkd, zf in ipairs(bqtq) do
if tyg[zf] and bvpf[zf] then
table.insert(amw, bvpf[zf])
end
end
elseif type(tyg) == _d("QRtDAh0U") and bvpf[tyg] then
amw = { bvpf[tyg] }
end

return amw
end

nn:Dropdown({
Name = _d("YA5YD1MxXUEc"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = bqtq,
Callback = function(htdg)
auqr.picks[1] = auqr.pickedIds(htdg)
auqr.cursor[1] = 1
auqr.losses[1] = {}
end,
}, _d("QA5YDywRXUEc"))

auqr.boss2Dropdown = nn:Dropdown({
Name = _d("YA5YD1MxXUEcEUMgH11GTwNC"),
Search = false,
Multi = true,
Required = false,
Default = {},
Options = bqtq,
Callback = function(ajxn)
auqr.picks[2] = auqr.pickedIds(ajxn)
auqr.cursor[2] = 1
auqr.losses[2] = {}
end,
}, _d("QA5YDywRXUEcbhgfHEZtXQ"))

pcall(function()
auqr.boss2Dropdown:SetVisibility(false)
end)

task.spawn(function()
local gamz = nil

while enj() do
local txks = my.splitNpc()

if txks ~= gamz then
gamz = txks

local jec = auqr.boss2Dropdown

if jec then
pcall(function()
jec:SetVisibility(txks)
end)
end
end

task.wait(0.5)
end
end)

shua:Paragraph({
Header = _d("cxpFBFM1W1UHRQ"),
Body = _d("YQpdDhAHEl0BVEscARJfAEMOUz1icRwRDQEcXxIbWQ5TBF1AA1UYUxFXXgBGRQ"),
})

for nzo, iloc in ipairs(lr) do
shua:Dropdown({
Name = iloc.name,
Search = true,
Multi = true,
Required = false,
Default = {},
Options = iloc.options,
Callback = function(cf)
local krgj = {}

if type(cf) == _d("Rg5TBxY") then
if cf.All then
for wczw, uqz in ipairs(iloc.ids) do
table.insert(krgj, uqz)
end
else
for ofdl, bxuf in ipairs(iloc.options) do
if cf[bxuf] and iloc.byName[bxuf] then
table.insert(krgj, iloc.byName[bxuf])
end
end
end
elseif type(cf) == _d("QRtDAh0U") then
if cf == _d("cwNd") then
for lerh, bmxp in ipairs(iloc.ids) do
table.insert(krgj, bmxp)
end
else
krgj = { iloc.byName[cf] }
end
end

pxwb.selectedByWorld[iloc.name] = krgj
end,
}, _d("XB9SNA") .. iloc.id)
end

shua:Toggle({
Name = _d("cxpFBFMwXV8fXQ4HFhJhG14ZCg"),
Default = false,
Callback = function(egfr)
pxwb.story = egfr
pxwb.battlePending = false
pxwb.battlePendingUntil = 0
end,
}, _d("UxpFBCwQXV8fXQ4HFm1BG14ZCg"))

pxwb.storyDropdown = shua:Dropdown({
Name = _d("dgZXDRoQR14bWA4A"),
Search = false,
Multi = false,
Required = false,
Default = 1,
Options = gguu,
Callback = function(unbl)
local yxw = type(unbl) == _d("Rg5TBxY") and unbl[1] or unbl

if type(yxw) == _d("QRtDAh0U") and ivtv[yxw] then
pxwb.storyDifficulty = ivtv[yxw]
end
end,
}, _d("VgZXDRoQR14bWA4A"))

pcall(function()
pxwb.storyDropdown:UpdateSelection(gguu[1])
end)

pcall(function()
pxwb.storyDropdown:UpdateName(_d("dgZXDRoQR14bWA4AU9CyzRE") .. gguu[1])
end)

shua:Paragraph({
Header = _d("egBGSzIGRl1PcgQeA15XG1RLIAddQBYRHBwBWUE"),
Body = _d("dAZWAwcAElcZVBkKU0FGAEMSUz1icU8cSz0SX1cEER8bAV1HCFlLOgBXWQ5YS15TXVxPRQMWU11cChEPGhVUWwxEBwcKElMNXh0WXxJFAEMAGh1VEhtZDlMSQFcOQksaHRJdHVUOAVNTXAsRCBweW1wIEQkSEFkSHV4eHRcSUxwRCBwcXlYARgUAU1FeClAZXXk4exsRGRYDXlMMVBhTB1pXT1AZFhISVh1eGxccRVwcERwbGl5XT1gfUxpBEgBfR1MSXFZPXQ4SBVdBT0MKGhcSUABCGBYAElMDXgUWXQ"),
})

local fitb = jbo:Section({
Side = _d("fgpXHw"),
})

fitb:Header({
Name = _d("ZgBGDgE"),
})

local rtnn
local spm

local vn = {
remotes = {},
watcher = false,
hidMenu = false,

hardWatch = {},
}

pcall(function()
local qna = getgenv().ACBXHardWatch

if type(qna) == _d("Rg5TBxY") then
for qleo, tkr in pairs(qna) do
pcall(function()
if tkr.Connected then
tkr:Disconnect()
end
end)
end
end

getgenv().ACBXHardWatch = vn.hardWatch
end)

function vn.hardPick(kpz)
kpz = kpz == true

for ff, pemy in ipairs({ _d("cA5FHx8WdUcG"), _d("cA5FHx8WdUcGAw") }) do
local syr = ysuk:FindFirstChild(pemy)

if syr then
if syr:GetAttribute(_d("ZgBGDgE7U0ALYQIQGA")) ~= kpz then
pcall(function()
syr:SetAttribute(_d("ZgBGDgE7U0ALYQIQGA"), kpz)
end)
end

if syr:GetAttribute(_d("ZgBGDgE7U0ALYx4d")) ~= nil and syr:GetAttribute(_d("ZgBGDgE7U0ALYx4d")) ~= kpz then
pcall(function()
syr:SetAttribute(_d("ZgBGDgE7U0ALYx4d"), kpz)
end)
end
end
end
end

function vn.pinMode()
if not (qe.enabled or qe.nightmare) then
return
end

local qcs = qe.nightmare == true

for mu, ci in ipairs({ _d("cA5FHx8WdUcG"), _d("cA5FHx8WdUcGAw") }) do
local ayb = ysuk:FindFirstChild(ci)

if ayb then
if ayb:GetAttribute(_d("ZgBGDgE7U0ALYQIQGA")) ~= qcs then
pcall(function()
ayb:SetAttribute(_d("ZgBGDgE7U0ALYQIQGA"), qcs)
end)
end

local cgbk = vn.hardWatch[ayb]

if cgbk and cgbk.Connected == false then
vn.hardWatch[ayb] = nil
cgbk = nil
end

if cgbk == nil then
local vnx, qrbr = pcall(function()
return ayb:GetAttributeChangedSignal(_d("ZgBGDgE7U0ALYQIQGA")):Connect(function()
if not (qe.enabled or qe.nightmare) then
return
end

local htt = qe.nightmare == true

if ayb.Parent and ayb:GetAttribute(_d("ZgBGDgE7U0ALYQIQGA")) ~= htt then
pcall(function()
ayb:SetAttribute(_d("ZgBGDgE7U0ALYQIQGA"), htt)
end)
end
end)
end)

if vnx then
vn.hardWatch[ayb] = qrbr
end
end
end
end
end

function vn.pauseRows()
local gey = adn:FindFirstChild(_d("YgNQEhYBdUcG")) and adn.PlayerGui:FindFirstChild(_d("YQpFHxodVUEoRAI"))

if not gey then
return nil, nil
end

return gey:FindFirstChild(_d("Yg5EGBY6XFQGXwIHFntcH0Qf"), true), gey:FindFirstChild(_d("Yg5EGBY6XFQGXwIHFnFaClIA"), true)
end

function vn.pauseState()
local bacv = adn:FindFirstChild(_d("YgNQEhYBdUcG")) and adn.PlayerGui:FindFirstChild(_d("YQpFHxodVUEoRAI"))
local ctbl = bacv and bacv:FindFirstChild(_d("dQpFOBYHRlsBVhg"), true)

if not ctbl then
return nil
end

local cfm, cqr = pcall(function()
return ctbl:Invoke()
end)

if cfm and type(cqr) == _d("Rg5TBxY") then
return cqr.pauseInfiniteEnabled == true
end

return nil
end

function vn.pauseAt(bmj, srot)
srot = math.max(1, math.floor(tonumber(srot) or 1))

local rpfw, qawz = vn.pauseRows()

if not (rpfw and qawz) then
return false
end

local qo = pcall(function()
if tonumber(rpfw.Text) ~= srot then
rpfw.Text = tostring(srot)

if getconnections then
for puc, vnh in ipairs(getconnections(rpfw.FocusLost)) do
pcall(function()
vnh:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end
end)

if bmj ~= nil then
local qxv = vn.pauseState()

if qxv ~= nil and qxv ~= bmj and getconnections then
pcall(function()
for oaca, ouy in ipairs(getconnections(qawz.MouseButton1Click)) do
pcall(function()
ouy:Fire()
end)
end
end)
end
end

return qo
end

function vn.restorePause()
rfo.triggered = false

if rfo.enabled and rfo.floor > 0 then
vn.pauseAt(true, rfo.floor)

pcall(function()
ic.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = rfo.floor,
})
end)

return
end

pcall(function()
ic.SaveClientData:FireServer({
pauseInfiniteEnabled = false,
pauseInfiniteAt = 1,
})
end)

vn.pauseAt(false, 1)
end

function vn.remote(palz)
local ciy = vn.remotes[palz]

if ciy and ciy.Parent then
return ciy
end

local txfz = gx:FindFirstChild(_d("YApcBAcWQQ"))
local iqe = txfz and txfz:FindFirstChild(palz)

if iqe then
vn.remotes[palz] = iqe
end

return iqe
end

function vn.historyOpen()
for tzuy, lieq in ipairs({ _d("cA5FHx8WdUcG"), _d("cA5FHx8WdUcGAw") }) do
local mj = ysuk:FindFirstChild(lieq)
local zhh = mj and mj:FindFirstChild(_d("ZgBGDgE7W0EbXhkKNUBTAlQ"))

if zhh and zhh.Visible then
return true
end
end

return false
end

function vn.generationOpen()
local cji = ysuk:FindFirstChild(_d("ZgBGDgEhV0EaXR80Bls"))
local qqku = cji and cji:FindFirstChild(_d("YApCHh8HdEAOXA4"))

return qqku ~= nil and qqku.Visible
end

function vn.standDown(nmy)
if not vn.hidMenu then
local oruh = true

pcall(function()
oruh = ib:GetState() ~= false
end)

if oruh then
vn.hidMenu = true

pcall(function()
ib:SetState(false)
end)
end
end

if vn.watcher then
return
end

vn.watcher = true

task.spawn(function()

local urah = os.clock() + 6

while enj() and os.clock() < urah and not nmy() do
task.wait(0.2)
end

while enj() and nmy() do
task.wait(0.4)
end

vn.watcher = false

if vn.hidMenu then
vn.hidMenu = false

pcall(function()
ib:SetState(true)
end)
end
end)
end

qe.floorAt = 0
qe.battleAt = 0
qe.floor = nil
qe.manualPause = false

task.spawn(function()
local ujg = tn(_d("cA5FHx8WZ0ILUB8W"))
local wyo = tn(_d("YRZfCCccRVcddwccHEA"))
local khml = tn(_d("cA5FHx8Wd1wL"))
local nisx = tn(_d("ZgBGDgEhR1wqXw8WFw"))

if ujg then
ujg.OnClientEvent:Connect(function()
qe.battleAt = os.clock()
end)
end

if wyo then
wyo.OnClientEvent:Connect(function(cih)
qe.floorAt = os.clock()

if type(cih) == _d("XBpcCRYB") and cih > 1 then
qe.floor = cih
else
qe.floor = nil
end
end)
end

if khml then
khml.OnClientEvent:Connect(function(pyn)
if type(pyn) == _d("Rg5TBxY") and pyn.mode == _d("RgBGDgE") then
qe.floorAt = os.clock()
end
end)
end

if nisx then
nisx.OnClientEvent:Connect(function()

qe.lastRunEnded = {
clock = os.clock(),
floor = qe.floor,
}

task.delay(1, function()
local vp = ysuk:FindFirstChild(_d("ZgBGDgEhV0EaXR80Bls"))
local znx = vp and vp:FindFirstChild(_d("YApCHh8HdEAOXA4"))
local sesa = {}

if znx then
for kunc, ondo in ipairs(znx:GetDescendants()) do
if ondo:IsA(_d("ZgpJHz8SUFcD")) and ondo.Visible and ondo.Text ~= _d("") and #sesa < 12 then
sesa[#sesa + 1] = ondo.Text
end
end
end

if qe.lastRunEnded then
qe.lastRunEnded.texts = table.concat(sesa, _d("EhMR"))
end
end)

qe.floorAt = 0
qe.battleAt = 0
qe.floor = nil

if qe.manualPause then
vn.restorePause()
end
end)
end

end)

local function cqzq()
local mqh = os.clock()

if mqh - (qe.floorAt or 0) < 90 and mqh - (qe.battleAt or 0) < 12 then
return true
end

for hd, jbfn in ipairs({ _d("cA5FHx8WdUcG"), _d("cA5FHx8WdUcGAw") }) do
local wvli = ysuk:FindFirstChild(jbfn)

if wvli then

local jscw = wvli:FindFirstChild(_d("ZgBGDgE1Xl0AQycSEVde"))

if jscw and jscw.Visible then
return true
end

local uvrt = wvli:FindFirstChild(_d("dANeBAEgUUAKVAU"))

if uvrt and uvrt.Visible then
return true
end

local sepg = wvli:FindFirstChild(_d("cA5FHx8WYVEdVA4d"))

if sepg and sepg.Visible then
local thbu = sepg:FindFirstChild(_d("YxpYCBg0W0QKZBsxBkZGAF8"))

if thbu and thbu.Visible then
return true
end
end
end
end

return false
end

function vn.hardNow()

local xn = ysuk:FindFirstChild(_d("cA5FHx8WdUcG"))
local kv = xn and xn:GetAttribute(_d("ZgBGDgE7U0ALYQIQGA"))

if kv ~= nil then
return kv == true
end

local zat = auqr.misc.util.profile

return type(zat) == _d("Rg5TBxY") and zat.lastTowerHard == true
end

function vn.endIfWrongMode(hszu)
if not cqzq() or vn.hardNow() == (hszu == true) then
return false
end

pcall(function()
if type(spm) == _d("VBpfCAcaXVw") then
spm()
else
ic.EndTowerRemote:FireServer(1)
end
end)

qe.floor = nil

return true
end

function vn.hardPickNow()
for mwd, ile in ipairs({ _d("cA5FHx8WdUcG"), _d("cA5FHx8WdUcGAw") }) do
local msbn = ysuk:FindFirstChild(ile)
local aln = msbn and msbn:GetAttribute(_d("ZgBGDgE7U0ALYQIQGA"))

if aln ~= nil then
return aln == true
end
end

return nil
end

function vn.parked()
for iua, uqr in ipairs({ _d("cA5FHx8WdUcG"), _d("cA5FHx8WdUcGAw") }) do
local ozr = ysuk:FindFirstChild(uqr)

if ozr then
local itb = ozr:FindFirstChild(_d("ZgBGDgE1Xl0AQycSEVde"))
local kmpk = ozr:FindFirstChild(_d("dANeBAEgUUAKVAU"))
local il = ozr:FindFirstChild(_d("cA5FHx8WYVEdVA4d"))

if itb and itb.Visible
and not (kmpk and kmpk.Visible)
and not (il and il.Visible) then
return true
end
end
end

return false
end

qe.ui = fitb:Toggle({
Name = _d("cxpFBFMnXUUKQw"),
Default = false,
Callback = function(kmul)

if qe.quiet then
return
end

qe.enabled = kmul
qe.pending = false
qe.pendingUntil = 0

if kmul then

if my.enabled and my.role[1] ~= _d("RgBGDgE") then
qe.enabled = false

pcall(function()
qe.ui:UpdateState(false)
end)

pcall(function()
ib:Dialog({
Title = _d("cxpFBFMnXUUKQ0scFVQ"),
Description = _d("YQNeH1NCElscERgWBxJGABE") .. my.roleName(1) .. _d("HE9lAxZTe1wJWAUaB0sSLFAYBx9XEgBfBwpTQUYOQx8AU11cT0IHHAcSA0MRGBxTQVcbETgfHEYSXhEfHFNmXRhUGVMVW0AcRUU"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})
end)

return
end

if my.otherTowerOn(_d("RgBGDgE")) then
qe.enabled = false

pcall(function()
qe.ui:UpdateState(false)
end)

pcall(function()
ib:Dialog({
Title = _d("cxpFBFMnXUUKQ0scFVQ"),
Description = _d("cwFeHxsWQBIbXhwWARJTGkUEHhJGWwBfSxoAElMDQw4SF0sSAF9HUxJcVk9FAxoAElMMUgQGHUYSAF8HClNTXgNeHABTXVwKER8cBFdAT0MeHVNTRk9QSwcaX1dBET8GAVwSG1kKB1NdXAoRBBUVElQGQxgHXxJdHREfBgFcEgBfSzIGRl1PYgccBxJBABEOEhBaEhxdBAdTVVcbQksaB0ESAEYFUwddRQpDRQ"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})
end)

return
end

qe.nightmare = false

pcall(function()
qe.quiet = true
qe.nightmareToggle:UpdateState(false)
qe.quiet = false
end)

qe.manualPause = false
qe.paused = false
vn.restorePause()
qe.pauseArmed = false

vn.endIfWrongMode(false)
vn.hardPick(false)

return
end

if not cqzq() then
return
end

qe.paused = true
local hjqo = rtnn()

ib:Notify({
Title = _d("cxpFBFMnXUUKQ0scFVQ"),
Description = hjqo and _d("ZgBGDgFTQEcBERsSBkFXCx8") or _d("YBpfSxoAEl4GRw5fU1BHGxEFHFNQQApQAFMRR0YbXgVTFV1HAVVF"),
Lifetime = 5,
})
end,
}, _d("UxpFBCwHXUUKQw"))

qe.nightmareToggle = fitb:Toggle({
Name = _d("cxpFBFM9W1UHRQYSAVcSO14cFgE"),
Default = false,
Callback = function(mklp)
if qe.quiet then
return
end

qe.nightmare = mklp

if not mklp then

qe.enabled = false
qe.pending = false
qe.pendingUntil = 0

vn.hardPick(false)

pcall(function()
qe.quiet = true
qe.ui:UpdateState(false)
qe.quiet = false
end)

if cqzq() then
qe.paused = true
local viq = rtnn()

ib:Notify({
Title = _d("cxpFBFM9W1UHRQYSAVcSO14cFgESXQlX"),
Description = viq and _d("fAZWAwceU0AKERkGHRJCDkQYFhcc") or _d("YBpfSxoAEl4GRw5fU1BHGxEFHFNQQApQAFMRR0YbXgVTFV1HAVVF"),
Lifetime = 5,
})
end

return
end

if my.enabled and my.role[1] ~= _d("RgBGDgE") then
qe.nightmare = false

pcall(function()
qe.quiet = true
qe.nightmareToggle:UpdateState(false)
qe.quiet = false
end)

pcall(function()
ib:Dialog({
Title = _d("cxpFBFM9W1UHRQYSAVcSO14cFgESXQlX"),
Description = _d("fAZWAwceU0AKET8cBFdAT1IEBh1GQU9QGFMnXUUKQ0saHRJBA14fU0IeEg5fD1MKXUcdERgfHEYSXhECAFNdXE8") .. my.roleName(1) .. _d("Eh1YDBsHElwARkVTIFdGT0IHHAcSA09FBFMnXUUKQ0sVGkBBGx8"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})
end)

return
end

pcall(function()
qe.quiet = true
qe.ui:UpdateState(false)
qe.quiet = false
end)

qe.enabled = true
qe.manualPause = false
qe.paused = false

vn.restorePause()
qe.pauseArmed = false

vn.endIfWrongMode(true)
vn.hardPick(true)

qe.pending = false
qe.pendingUntil = 0
end,
}, _d("UxpFBCwdW1UHRQYSAVdtG14cFgE"))

fitb:Header({
Name = _d("cxpFBFMjU0ccVEsnHEVXHQ"),
})

local rfgo

rfgo = fitb:Toggle({
Name = _d("cxpFBFMjU0ccVEs1H11dHQ"),
Default = false,
Callback = function(cvpl)
rfo.triggered = false

if cvpl and rfo.floor <= 0 then
rfo.enabled = false

pcall(function()
rfgo:UpdateState(false)
end)

pcall(function()
ic.SaveClientData:FireServer({ pauseInfiniteEnabled = false })
end)

ib:Dialog({
Title = _d("cxpFBFMjU0ccVEs1H11dHQ"),
Description = _d("YQpFSxJTQlMaQg5TFV5dAENLEhFdRAoRW1MVW0AcRUteU3NHG15LIxJHQQoRPxwEV0BPXw4WF0ESG15LGB1dRU9GAxYBVxIbXksAB11CQQ"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})

return
end

rfo.enabled = cvpl

pcall(function()
ic.SaveClientData:FireServer({
pauseInfiniteEnabled = cvpl,
pauseInfiniteAt = rfo.floor,
})
end)
end,
}, _d("UxpFBCwDU0ccVDQVH11dHQ"))

fitb:Input({
Name = _d("Yg5EGBZTU0ZPVwccHEA"),
Placeholder = _d("V0FWRVNGAg"),
AcceptedCharacters = _d("fBpcCRYBQQ"),
Callback = function(eatt)
local part = tonumber(eatt) or 0

if part < 0 then
part = 0
end

if part == rfo.floor then
return
end

rfo.floor = part
rfo.triggered = false

if part <= 0 and rfo.enabled then
rfo.enabled = false

pcall(function()
rfgo:UpdateState(false)
end)
end

pcall(function()
ic.SaveClientData:FireServer({
pauseInfiniteAt = part,
pauseInfiniteEnabled = rfo.enabled,
})
end)
end,
}, _d("Qg5EGBYsU0YwVwccHEA"))

fitb:Button({
Name = _d("Yg5EGBZTZl0YVBk"),
Callback = function()
local ojb = false

pcall(function()
ojb = rtnn()
end)

if ojb then

qe.manualPause = true
return
end

ib:Dialog({
Title = _d("Yg5EGBZTZl0YVBk"),
Description = _d("fAARBxoFVxIbXhwWARJAGl9LBxwSQg5EGBZTQFsIWR9THV1FQQ"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})
end,
})

fitb:Header({
Name = _d("cxpFBFM0W0QKET4D"),
})

lum.toggle = fitb:Toggle({
Name = _d("cxpFBFM0W0QKET4D"),
Default = false,
Callback = function(ltn)
lum.triggered = false

if ltn and lum.floor <= 0 then
lum.enabled = false

pcall(function()
lum.toggle:UpdateState(false)
end)

ib:Dialog({
Title = _d("cxpFBFM0W0QKET4D"),
Description = _d("YQpFSxJTVVsZVEsGAxJUA14EAVNTUABHDlNDElQGQxgHUx8SLkQfHFN1WxlUSyYDElwKVA8AU0ZdT1oFHAQSRQdUGRZTRl1PQh8cAxw"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})

return
end

lum.enabled = ltn
end,
}, _d("UxpFBCwUW0QKbh4D"))

fitb:Input({
Name = _d("dQZHDlMGQhIAX0sVH11dHQ"),
Placeholder = _d("V0FWRVNEAg"),
AcceptedCharacters = _d("fBpcCRYBQQ"),
Callback = function(afl)
local bdtk = tonumber(afl) or 0

if bdtk < 0 then
bdtk = 0
end

if bdtk == lum.floor then
return
end

lum.floor = bdtk
lum.triggered = false

if bdtk <= 0 and lum.enabled then
lum.enabled = false

pcall(function()
lum.toggle:UpdateState(false)
end)
end
end,
}, _d("VQZHDiwGQm0AXzQVH11dHQ"))

lum.weatherToggle = fitb:Toggle({
Name = _d("cxpFBFMUW0QKER4DU11cT0YOEgdaVx0"),
Default = false,
Callback = function(uiyp)
lum.weatherTriggered = false

if uiyp and next(lum.weathers) == nil then
lum.weatherEnabled = false

pcall(function()
lum.weatherToggle:UpdateState(false)
end)

ib:Dialog({
Title = _d("ZQpQHxsWQBIoWB0WU2dC"),
Description = _d("ZgZSAFMSRhIDVAoABxJdAVRLBBZTRgdUGVMRV14ARksVGkBBGxFGUxxGWgpDHBoAVxIbWQ4BFhJbHBEFHAdaWwFWSwccElUGRw5TBkISAF9F"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})

return
end

lum.weatherEnabled = uiyp
end,
}, _d("UxpFBCwUW0QKbh4DLF1cMEYOEgdaVx0"))

fitb:Dropdown({
Name = _d("dQZHDlMGQhIYVAoHG1dAHA"),
Multi = true,
Required = false,
Options = { _d("ZhZBAxwcXA"), _d("cANYEQkSQFY"), _d("fgZWAwcdW1wI"), _d("ZQZfDwAHXUAC"), _d("YQdQGRodVVMB"), _d("YQZfDAYfU0AGRRI"), _d("fwBfCgEQWhIrXgYSGlw"), _d("ZABYDw"), _d("fw5VDlMaXBInVAoFFlw"), _d("fw5fDBI") },
Callback = function(yi)
lum.weathers = {}

if type(yi) == _d("Rg5TBxY") then
for xix, iiby in pairs(yi) do
if iiby then
lum.weathers[xix] = true
end
end
end

lum.weatherTriggered = false
end,
}, _d("VQZHDiwGQm0YVAoHG1dAHA"))

fitb:Input({
Name = _d("fwZfAh4GXxIJXQQcAUE"),
Placeholder = _d("Ak8MSxIdSxIJXQQcAQ"),
AcceptedCharacters = _d("fBpcDgEaUQ"),
Callback = function(aecp)
local nmgm = math.floor(tonumber(aecp) or 0)

if nmgm < 0 then
nmgm = 0
end

lum.weatherMinFloor = nmgm
lum.weatherTriggered = false
end,
}, _d("XwZfAh4GX20JXQQcAUE"))

fitb:Button({
Name = _d("dQZHDlMmQhI7XhwWAQ"),
Callback = function()
if not cqzq() then
ib:Dialog({
Title = _d("dQZHDlMmQhI7XhwWAQ"),
Description = _d("fAARBxoFVxIbXhwWARJAGl9LBxwSVQZHDlMGQhIdWAwbBxJcAEZF"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})

return
end

ib:Dialog({
Title = _d("dQZHDlMmQhI7XhwWAQ"),
Description = _d("dABDDRYaRhIbWQ5TEEdAHVQFB1NGXRhUGVMBR1xQET8bGkESDFAFHRxGEg1USwYdVl0BVEU"),
Buttons = {
{
Name = _d("dQARCRIQWQ"),
},
{
Name = _d("dQZHDlMGQg"),
Callback = function()
local ace = false

pcall(function()
ace = spm()
end)

if ace then
return
end

task.defer(function()
task.wait(0.3)

ib:Dialog({
Title = _d("dQZHDlMmQhI7XhwWAQ"),
Description = _d("fAARDBoFVxIaQUsRBkZGAF9LEh1BRQpDDhdTHxIbWQ5TAUdcT1wKClNTXh1UChcKElAKEQQFFkAc"),
Buttons = {
{
Name = _d("dQBFSxoH"),
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

fitb:Button({
Name = _d("cQdUCBhTXl0cQksbGkFGAEMS"),
Callback = function()
local uuaf = vn.remote(_d("YApAHhYARmYARg4BO1tBG14ZCg"))

if not uuaf then
ib:Dialog({
Title = _d("fgBCGFM7W0EbXhkK"),
Description = _d("ZgdYGFMRR1sDVUsbEkESAV5LBxxFVx0RAxoARl0dSEsBFl9dG1RF"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})

return
end

vn.standDown(vn.historyOpen)

pcall(function()
uuaf:FireServer()
end)
end,
})

fitb:Button({
Name = _d("cQdUCBhTVVcBVBkSB1tdAUI"),
Callback = function()

local zvo = ysuk:FindFirstChild(_d("ZgBGDgEhV0EaXR80Bls"))
local kq = zvo and zvo:FindFirstChild(_d("fR9UBTQWXHoGQh8cAUs"))

if not kq then
ib:Dialog({
Title = _d("dQpfDgESRlsAXxg"),
Description = _d("ZgdYGFMRR1sDVUsbEkESAV5LFBZcVx1QHxocXEFPRgIdF11FQQ"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})

return
end

vn.standDown(vn.generationOpen)

pcall(function()
kq:Fire()
end)
end,
})

pxwb.bossTeams.towerSection = jbo:Section({
Side = _d("fgpXHw"),
})

pxwb.bossTeams.towerSection:Header({
Name = _d("ZgBGDgFTZlcOXBg"),
})

pxwb.bossTeams.towerSection:Paragraph({
Header = _d("egBGSwccRVcdER8WEl9BT0YEARg"),
Body = _d("fQlXUVMWU1EHERkGHRJHHFQYUwRaUxtUHRYBEkYKUAZTGkZBT0IHHAcSUwNDDhIXSxIHXgcXABw4ZX4FSVNXUwxZSwccRVcdEQkWH11FT0MeHQASRQZFA1MHWldPRQ4SHhJCBlIAFhcSVABDSxoHHA"),
})

pxwb.bossTeams.towerToggle = pxwb.bossTeams.towerSection:Toggle({
Name = _d("ZgBGDgFTZlcOXBg"),
Default = false,
Callback = function(kyvc)
pxwb.bossTeams.towersOn = kyvc
end,
}, _d("RgBGDgEsRlcOXBg"))

for nzz, voah in ipairs({
{ kind = _d("RgBGDgE"), name = _d("ewFXAh0aRktPcgoAB15XTx5LPRpVWhtcCgEW") },
{ kind = _d("Wg5DDxAcQFc"), name = _d("exxdCh0XEnoOQw8QHEBX") },
}) do
local tyt = math.clamp(math.floor(tonumber(pxwb.bossTeams.towerPicked[voah.kind]) or 1), 1, 4)

pxwb.bossTeams.towerPicked[voah.kind] = tyt

pxwb.bossTeams.towerUi[voah.kind] = pxwb.bossTeams.towerSection:Dropdown({
Name = voah.name,
Search = false,
Multi = false,
Required = false,
Default = tyt,
Options = { _d("ZgpQBlNC"), _d("ZgpQBlNB"), _d("ZgpQBlNA"), _d("ZgpQBlNH") },
Callback = function(peaj)
local aj = type(peaj) == _d("Rg5TBxY") and peaj[1] or peaj
local zoet = type(aj) == _d("QRtDAh0U") and tonumber(aj:match(_d("GkpVQFo"))) or nil

if zoet then
pxwb.bossTeams.towerPicked[voah.kind] = zoet
pxwb.bossTeams.save()
end

pcall(function()
pxwb.bossTeams.towerUi[voah.kind]:UpdateName(voah.name .. _d("Eo2xyVM") .. (aj or _d("ZgpQBlNC")))
end)
end,
}, _d("RgpQBiwHXUUKQzQ") .. voah.kind)

pcall(function()
pxwb.bossTeams.towerUi[voah.kind]:UpdateSelection(_d("ZgpQBlM") .. tostring(tyt))
pxwb.bossTeams.towerUi[voah.kind]:UpdateName(voah.name .. _d("Eo2xyVMnV1MCEQ") .. tostring(tyt))
end)
end

pxwb.bossTeams.towerSection:Header({
Name = _d("YRhQG1McXBIJXQQcAQ"),
})

pxwb.bossTeams.towerSection:Paragraph({
Header = _d("YRhQG1MHV1MCEQQdU1MSCV0EHAE"),
Body = _d("ZgdUSxQSX1dIQkscBFwSHEYKA18SXABFSxJTQlMaQg5dU3dTDFlLAQZeV09YGFMSElQDXgQBU1NcCxEfGxYSRgpQBlMEXUABEQ0BHF8SG1kKB1NUXgBeGVMcXB5PRhkaB0ZXARECHQddEhtZDlMUU18KFhhTIFdGG1gFFAASH1ERKgYHXRI7VAoeU2FFDkFLQlNTXAsRWV9TQV1PRQMWU1VTAlRLHhJZVxwRHxsWEkEYWB8QGxJbG0IOHxUSRQdUBVMSEkAaX0sAB1NAG0JLBxtTRk9XBxwcQBxPfwQHG1tcCBECAFNBRgBBGxYXElMBVUsHG1cSHUQFUxhXVx9CSxoHQRIcXQQHXTg4LhEIEgBGXgoRGQYdElUKRRhTB1pXT0IKHhYSQRhYHxAbElQdXgZTB1pbHBEbEh1XXkMRCRYQU0ccVEsHG1cSCFAGFlRBEgBGBVMARVMfEQQdH0sSCVgZFgASWwFCAhcWEnsBVwIdGkZXT2MEHB5BHGU7JxYSRFdPUEsVH11dHREKB1MCEhteSwcGQFxPRQMSBxJAGl0OUxxUVEE"),
})

function pxwb.bossTeams.swapStatusText()
local ksbc = pxwb.bossTeams.swap
local wke = {}

if ksbc.on then
table.insert(wke, _d("fQERRlMEQFsbRQ4dU0ZdT0UDFlNVUwJUTABTc0cbXksnFlNfT2IcEgMSQABGGF0"))
else
table.insert(wke, _d("fQlXS15TRloKEQwSHlcVHBEYBBJCEgZCSx8WVEZPUAccHVcc"))
end

local jmlb = {
{ index = 1, floor = ksbc.floor, team = ksbc.team },
{ index = 2, floor = ksbc.floor2, team = ksbc.team2 },
}

for vqp, rw in ipairs(jmlb) do
if rw.floor > 0 then
table.insert(wke, string.format(_d("YRhQG1NWVghPZQ4SHhIXCxENARxfEgldBBwBEhcL"), rw.index, rw.team, rw.floor))
else
table.insert(wke, string.format(_d("YRhQG1NWVghPXg0VUxpcABENHxxdQE9CDgda"), rw.index))
end
end

if pxwb.bossTeams.swapMessage ~= _d("") then
table.insert(wke, pxwb.bossTeams.swapMessage)
end

return table.concat(wke, _d("OA"))
end

function pxwb.bossTeams.paintSwap()
pcall(function()
pxwb.bossTeams.swapStatus:UpdateBody(pxwb.bossTeams.swapStatusText())
end)
end

pxwb.bossTeams.swapToggle = pxwb.bossTeams.towerSection:Toggle({
Name = _d("YRhQG1MHV1MCEQQdU1ReAF4Z"),
Default = pxwb.bossTeams.swap.on,
Callback = function(asjo)
pxwb.bossTeams.swap.on = asjo

pxwb.bossTeams.swapReset()

pxwb.bossTeams.swapApply()
pxwb.bossTeams.save()
end,
}, _d("QRhQGywHV1MCbgQdLFReAF4Z"))

pxwb.bossTeams.swapInput = pxwb.bossTeams.towerSection:Input({
Name = _d("dANeBAE"),
Placeholder = _d("V0FWRVNGAgJPGVtTThJdCVdC"),
AcceptedCharacters = _d("fBpcDgEaUQ"),
Callback = function(sqne)
local efh = tonumber(type(sqne) == _d("QRtDAh0U") and sqne:match(_d("GkpVQFo")) or sqne)

if efh then
pxwb.bossTeams.swap.floor = efh
pxwb.bossTeams.swapReset()
pxwb.bossTeams.swapApply()
pxwb.bossTeams.save()
end
end,
}, _d("VANeBAE"))

pxwb.bossTeams.swapDropdown = pxwb.bossTeams.towerSection:Dropdown({
Name = _d("YRhQG1MHXQ"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(pxwb.bossTeams.swap.team) or 1), 1, 4),
Options = { _d("ZgpQBlNC"), _d("ZgpQBlNB"), _d("ZgpQBlNA"), _d("ZgpQBlNH") },
Callback = function(kcq)
local bwk = type(kcq) == _d("Rg5TBxY") and kcq[1] or kcq
local xee = type(bwk) == _d("QRtDAh0U") and tonumber(bwk:match(_d("GkpVQFo"))) or nil

if xee then
pxwb.bossTeams.swap.team = xee
pxwb.bossTeams.swapReset()
pxwb.bossTeams.swapApply()
pxwb.bossTeams.save()
end

pcall(function()
pxwb.bossTeams.swapDropdown:UpdateName(_d("YRhQG1MHXRKNsclT") .. (bwk or _d("ZgpQBlNC")))
end)

pxwb.bossTeams.paintSwap()
end,
}, _d("QRhQGywHXQ"))

pxwb.bossTeams.swapInput2 = pxwb.bossTeams.towerSection:Input({
Name = _d("dANeBAFTAA"),
Placeholder = _d("V0FWRVNCAgJfEUNDUw8SAFcNWg"),
AcceptedCharacters = _d("fBpcDgEaUQ"),
Callback = function(mdb)
local srj = tonumber(type(mdb) == _d("QRtDAh0U") and mdb:match(_d("GkpVQFo")) or mdb)

if srj then
pxwb.bossTeams.swap.floor2 = srj
pxwb.bossTeams.swapReset()
pxwb.bossTeams.swapApply()
pxwb.bossTeams.save()
end
end,
}, _d("VANeBAEsAA"))

pxwb.bossTeams.swapDropdown2 = pxwb.bossTeams.towerSection:Dropdown({
Name = _d("YRhQG1MHXRJd"),
Search = false,
Multi = false,
Required = false,
Default = math.clamp(math.floor(tonumber(pxwb.bossTeams.swap.team2) or 1), 1, 4),
Options = { _d("ZgpQBlNC"), _d("ZgpQBlNB"), _d("ZgpQBlNA"), _d("ZgpQBlNH") },
Callback = function(pcm)
local czb = type(pcm) == _d("Rg5TBxY") and pcm[1] or pcm
local oal = type(czb) == _d("QRtDAh0U") and tonumber(czb:match(_d("GkpVQFo"))) or nil

if oal then
pxwb.bossTeams.swap.team2 = oal
pxwb.bossTeams.swapReset()
pxwb.bossTeams.swapApply()
pxwb.bossTeams.save()
end

pcall(function()
pxwb.bossTeams.swapDropdown2:UpdateName(_d("YRhQG1MHXRJdEYnz0RI") .. (czb or _d("ZgpQBlNC")))
end)

pxwb.bossTeams.paintSwap()
end,
}, _d("QRhQGywHXW1d"))

pxwb.bossTeams.swapStatus = pxwb.bossTeams.towerSection:Paragraph({
Header = _d("YRhQG1MARlMbRBg"),
Body = pxwb.bossTeams.swapStatusText(),
})

pcall(function()
local rpu = math.clamp(math.floor(tonumber(pxwb.bossTeams.swap.team) or 1), 1, 4)
local vgok = math.clamp(math.floor(tonumber(pxwb.bossTeams.swap.team2) or 1), 1, 4)

pxwb.bossTeams.swapDropdown:UpdateSelection(_d("ZgpQBlM") .. tostring(rpu))
pxwb.bossTeams.swapDropdown:UpdateName(_d("YRhQG1MHXRKNsclTJ1dTAhE") .. tostring(rpu))
pxwb.bossTeams.swapDropdown2:UpdateSelection(_d("ZgpQBlM") .. tostring(vgok))
pxwb.bossTeams.swapDropdown2:UpdateName(_d("YRhQG1MHXRJdEYnz0RJmClAGUw") .. tostring(vgok))
end)

task.spawn(function()
local heto = pxwb.bossTeams.swapStatusText()

while enj() do
local pyc = pxwb.bossTeams.swapStatusText()

if pyc ~= heto then
heto = pyc
pxwb.bossTeams.paintSwap()
end

task.wait(2)
end
end)

if pxwb.bossTeams.swap.on then
task.delay(2, function()
pcall(pxwb.bossTeams.swapApply)
end)
end

pxwb.bossTeams.section = jbo:Section({
Side = _d("YAZWAwc"),
})

pxwb.bossTeams.section:Header({
Name = _d("cABCGFMnV1MCQg"),
})

pxwb.bossTeams.section:Paragraph({
Header = _d("egBGSxEcQUFPRQ4SHkESGF4ZGA"),
Body = _d("fQlXUVMdXUYHWAUUU1tBT0IcGgdRWgpVS15TV0QKQxJTFVtVB0VLBgBXQU9FAxZTRlcOXEsKHEcSDl0ZFhJWS09ZCgUWEl4GXw4XU0dCQxEcGxpRWk9YGFMHWldPYgccBxIDT0UOEh4SRwFdDgAAEkEDXh9TQRJGDloOAFNGWgoRCRIHRl4KH2F5PFwIT1QKEBsSUx1UClMRV14ARksVGlVaG0JLBBpGWk9FAxZTRlcOXEsKHEcSH1gIGFNUXR0RAgdd"),
})

pxwb.bossTeams.toggle = pxwb.bossTeams.section:Toggle({
Name = _d("cABCGFMnV1MCQg"),
Default = false,
Callback = function(gtfr)
pxwb.bossTeams.enabled = gtfr
end,
}, _d("UABCGCwHV1MCQg"))

for rkur, og in ipairs(lr) do
local ljrx = pxwb.bossTeams.picked[og.id] or 1

ljrx = math.clamp(math.floor(tonumber(ljrx) or 1), 1, 4)
pxwb.bossTeams.picked[og.id] = ljrx

pxwb.bossTeams.ui[og.id] = pxwb.bossTeams.section:Dropdown({
Name = og.name,
Search = false,
Multi = false,
Required = false,

Default = ljrx,
Options = { _d("ZgpQBlNC"), _d("ZgpQBlNB"), _d("ZgpQBlNA"), _d("ZgpQBlNH") },
Callback = function(xhqi)
local au = type(xhqi) == _d("Rg5TBxY") and xhqi[1] or xhqi
local xip = type(au) == _d("QRtDAh0U") and tonumber(au:match(_d("GkpVQFo"))) or nil

if xip then
pxwb.bossTeams.picked[og.id] = xip

pxwb.bossTeams.save()
end

pcall(function()
pxwb.bossTeams.ui[og.id]:UpdateName(og.name .. _d("Eo2xyVM") .. (au or _d("ZgpQBlNC")))
end)
end,
}, _d("RgpQBiwEXUADVTQ") .. og.id)

pcall(function()
pxwb.bossTeams.ui[og.id]:UpdateSelection(_d("ZgpQBlM") .. tostring(ljrx))
pxwb.bossTeams.ui[og.id]:UpdateName(og.name .. _d("Eo2xyVMnV1MCEQ") .. tostring(ljrx))
end)
end

pxwb.bossTeams.raidSection = jbo:Section({
Side = _d("YAZWAwc"),
})

pxwb.bossTeams.raidSection:Header({
Name = _d("YA5YD1MnV1MCQg"),
})

pxwb.bossTeams.raidSection:Paragraph({
Header = _d("egBGSwESW1ZPRQ4SHkESGF4ZGA"),
Body = _d("fQlXUVMBU1sLQksGAFcSGFkKBxZEVx0RHxYSXxIbWQ5TAF5dGxEKHwFXUwtISxscXlYcH2F5PFwIT1QKEBsSQA5YD1MRV14ARksaABJUAEQMGwcSRQZFA1MHWldPRQ4SHhJCBlIAFhcSVABDSxoHHA"),
})

pxwb.bossTeams.raidToggle = pxwb.bossTeams.raidSection:Toggle({
Name = _d("YA5YD1MnV1MCQg"),
Default = false,
Callback = function(lir)
pxwb.bossTeams.raidsOn = lir
end,
}, _d("QA5YDywHV1MCQg"))

for olv, hpm in ipairs(rl.Raids) do
if hpm.BossTitle and hpm.id then
local nrcu = pxwb.bossTeams.raidPicked[hpm.id] or 1

nrcu = math.clamp(math.floor(tonumber(nrcu) or 1), 1, 4)
pxwb.bossTeams.raidPicked[hpm.id] = nrcu

pxwb.bossTeams.raidUi[hpm.id] = pxwb.bossTeams.raidSection:Dropdown({
Name = hpm.BossTitle,
Search = false,
Multi = false,
Required = false,
Default = nrcu,
Options = { _d("ZgpQBlNC"), _d("ZgpQBlNB"), _d("ZgpQBlNA"), _d("ZgpQBlNH") },
Callback = function(czsm)
local nfmo = type(czsm) == _d("Rg5TBxY") and czsm[1] or czsm
local mmh = type(nfmo) == _d("QRtDAh0U") and tonumber(nfmo:match(_d("GkpVQFo"))) or nil

if mmh then
pxwb.bossTeams.raidPicked[hpm.id] = mmh
pxwb.bossTeams.save()
end

pcall(function()
pxwb.bossTeams.raidUi[hpm.id]:UpdateName(hpm.BossTitle .. _d("Eo2xyVM") .. (nfmo or _d("ZgpQBlNC")))
end)
end,
}, _d("RgpQBiwBU1sLbg") .. hpm.id)

pcall(function()
pxwb.bossTeams.raidUi[hpm.id]:UpdateSelection(_d("ZgpQBlM") .. tostring(nrcu))
pxwb.bossTeams.raidUi[hpm.id]:UpdateName(hpm.BossTitle .. _d("Eo2xyVMnV1MCEQ") .. tostring(nrcu))
end)
end
end

task.spawn(function()
local nho = qfg()

while enj() do
local npz = qfg()

if my.enabled and my.statusText then
npz = my.statusText()
end

npz = npz .. _d("OGViDgEFV0BPRBtT") .. qkm()

if npz ~= nho then
nho = npz
pcall(function()
czr:UpdateBody(npz)
end)
end
task.wait(0.5)
end
end)

task.spawn(function()
while enj() do
for ea, gadb in ipairs({ _d("cA5FHx8WdUcG"), _d("cA5FHx8WdUcGAw") }) do
local zhdr = ysuk:FindFirstChild(gadb)
local qgj = zhdr and zhdr:FindFirstChild(_d("cA5FHx8WYVEdVA4d"))
local thc = zhdr and zhdr:FindFirstChild(_d("egZVDjESRkYDVCkGB0ZdAQ"))

if qgj and qgj.Visible and thc and not thc.Visible then
thc.Visible = true
end
end

task.wait(0.5)
end
end)

task.spawn(function()
local rsti = false

while enj() do
if uot then
local lxs = ysuk:FindFirstChild(_d("ZgBGDgEhV0EaXR80Bls"))
local xmt = lxs and lxs:FindFirstChild(_d("YApCHh8HdEAOXA4"))
local uasz = lxs and lxs:FindFirstChild(_d("dQpfDgESRlsBVi0BEl9X"))

if uasz and uasz.Visible then
uasz.Visible = false
end

local yovg = xmt and xmt.Visible or false

if yovg and not rsti then
local ds = xmt:FindFirstChild(_d("cQNeGBYxR0YbXgU"))
local ieyh = false

if ds then
for sewn, zsc in ipairs({ _d("fwBEGBYxR0YbXgVCMF5bDFo"), _d("cwxFAgUSRlcL") }) do
local eplq = ds[zsc]
if eplq then
for zpyl, fqy in ipairs(getconnections(eplq)) do
pcall(function()
fqy:Fire()
end)
ieyh = true
end
end
end
end

if not ieyh then
xmt.Visible = false
else
task.spawn(function()
task.wait(0.3)
if xmt.Parent and xmt.Visible then
xmt.Visible = false
end
end)
end
end

rsti = yovg
else
rsti = false
end

task.wait(0.2)
end
end)

local wok = {}

function wok.active()
return pxwb.enabled or pxwb.story
end

function wok.towerHolds()
if my.enabled then
return false
end

if jjrz.run.enabled then
return true
end

return qe.enabled and not qe.paused
end

function wok.ready(icx, vke, dlrd)
local kcoz = pxwb.unlocked[icx]

return (not kcoz or kcoz[vke] ~= false) and fqyn(icx, vke) <= dlrd
end

function wok.hasReadyTarget()
local duy = os.time()

for lhin, mtnp in ipairs(re()) do
for thd, pclz in ipairs(sc()) do
if wok.ready(mtnp, pclz, duy) then
return true
end
end
end

return false
end

function wok.backOff(oku, cwzp)
oqt(oku, cwzp, os.time() + 5)
end

function wok.findTarget()
for wig, flbd in ipairs(re()) do
local kxbt = ir(flbd)
local rpkn = os.time() - (pxwb.lastFetch[flbd] or 0) > 60

if rpkn and kxbt and not pxwb.walkToNpc then
ixx(kxbt)
task.wait(0.3)
uvjc(flbd)
end

for lsw, jrht in ipairs(sc()) do
if wok.ready(flbd, jrht, os.time()) then
return flbd, jrht
end
end
end

return nil
end

function pxwb.bossTeams.slotForFight()
if my.hasSlot2 == false then
return 1
end

if my.busy(2) then
return 1
end

return 2
end

function pxwb.bossTeams.slotTeam(jmk)
local otag = ysuk:FindFirstChild(_d("YQpFHxodVUEoRAI"))
local avqv = otag and otag:FindFirstChild(_d("YQNeHycWU18") .. jmk .. _d("cBpFHxwd"), true)
local twd = avqv and avqv.Text

return twd and tonumber(twd:match(_d("GkpVQFo"))) or nil
end

function pxwb.bossTeams.applyTeam(nvo, tgdo)
nvo = tonumber(nvo)

if not nvo then
return false
end

tgdo = tonumber(tgdo) or pxwb.bossTeams.slotForFight()

if my.busy(tgdo) then
return false
end

pxwb.bossTeams.lastSlot = tgdo

local gqp = pxwb.bossTeams.slotTeam(tgdo) or pxwb.bossTeams.applied[tgdo]

if gqp == nvo then
return true
end

local cbg = vn.remote(_d("YRhYHxAbZlcOXA"))

if not cbg then
return false
end

local nth = pcall(function()
cbg:FireServer(nvo, false, tgdo)
end)

pxwb.bossTeams.applied[tgdo] = nvo
task.wait(0.2)

return nth
end

function pxwb.bossTeams.apply(ouyo)
if not pxwb.bossTeams.enabled then
return
end

local gmrz = pxwb.bossTeams.worldOf[ouyo]
local tkp = gmrz and pxwb.bossTeams.picked[gmrz]

if not tkp then
return
end

pxwb.bossTeams.applyTeam(tkp)
end

function pxwb.bossTeams.applyTower(iyo, uoyo)
if not pxwb.bossTeams.towersOn then
return false
end

local qnk = pxwb.bossTeams.towerPicked[iyo]

local pehp = pxwb.bossTeams.swapFired[iyo]

if pxwb.bossTeams.swap.on and type(pehp) == _d("Rg5TBxY") then
qnk = pehp[2] or pehp[1] or qnk
end

if not qnk then
return false
end

return pxwb.bossTeams.applyTeam(qnk, uoyo)
end

function pxwb.bossTeams.applyRaid(pvle)
if not pxwb.bossTeams.raidsOn then
return
end

local txi = pvle and pxwb.bossTeams.raidPicked[pvle]

if not txi then
return
end

pxwb.bossTeams.applyTeam(txi)
end

function wok.fight(jtjj, ggsw)
local elq = ir(jtjj)

if not elq then
wok.backOff(jtjj, ggsw)
return false
end

local ayh

if pxwb.walkToNpc then
local iwq = gnn[jtjj]

if iwq then
ic.TeleportToWorld:FireServer(iwq)
task.wait(2.5)

local mqk = ir(jtjj) or elq
local iyb = mqk:GetPivot()

ayh = pdn(iyb.Position + iyb.LookVector * 6, function()
return not wok.active() or not pxwb.walkToNpc
end)

if ayh then
uvjc(jtjj)
ayh = wok.ready(jtjj, ggsw, os.time())
end
end
else
ayh = ixx(elq)
end

if not ayh then
wok.backOff(jtjj, ggsw)
return false
end

task.wait(0.4)
pxwb.bossTeams.apply(jtjj)
pxwb.activeDifficulty[jtjj] = ggsw
ic.SetNPCDifficulty:FireServer(jtjj, ggsw)
task.wait(0.4)

pxwb.currentBattle = {
npcId = jtjj,
difficulty = ggsw,
}
ph = jtjj
oj = ggsw
ic.StartNPCBattle:FireServer(jtjj)
oqt(jtjj, ggsw, os.time() + 10)
pxwb.battlePending = true
pxwb.battlePendingUntil = os.time() + 30
task.wait(1)

return true
end

pxwb.workPending = function()

if auqr.misc and auqr.misc.cards and auqr.misc.cards.inFlight then
return true
end

if not wok.active() then
return false
end

if pxwb.battlePending then
return true
end

local itu = my.npcSlot()

if itu and my.busy(itu) then
return true
end

return wok.hasReadyTarget()
end

task.spawn(function()
while enj() do

local nqqs = (my.enabled and (auqr.enabled or cnwj.enabled or auqr.worldBoss.enabled))
or wok.towerHolds()
or not my.slotFree(my.npcSlot())

or (auqr.misc and auqr.misc.cards and auqr.misc.cards.inFlight)
or (pxwb.battlePending and os.time() < pxwb.battlePendingUntil)

if wok.active() and not nqqs then
local fpu, mel = wok.findTarget()

if fpu then
wok.fight(fpu, mel)
end
end

task.wait(0.5)
end
end)

task.spawn(function()
while enj() do

local jdc = {}

if auqr.enabled then
local zzi = my.roleSlot(_d("XB9S"))

if zzi then
table.insert(jdc, zzi)
end

if my.splitNpc() and zzi ~= 2 then
table.insert(jdc, 2)
end
end

local ubz = gx:FindFirstChild(_d("YA5YDyAHU0YaQg"))

if #jdc > 0 and ubz and (not cnwj.enabled or my.splitNpc()) and (my.enabled or not pxwb.workPending()) then
for xgjj, bt in ipairs(jdc) do
local cdcj = ubz

local nrct = auqr.bossFor(bt, (bt ~= 1 and not my.splitNpc()) and 1 or nil)
local tnty = cdcj:GetAttribute(_d("exx+GxYd")) == true or cdcj:GetAttribute(_d("dABDCBYX")) == true
local rvp = nrct ~= nil and cdcj:GetAttribute(_d("YApQDwos") .. nrct) == true
local yyep = nrct and ltd(nrct)

if nrct and auqr.pending[nrct] and os.time() >= (auqr.pendingUntil[nrct] or 0) then
auqr.pending[nrct] = false
auqr.cleared[nrct] = nil
end

if nrct and my.slotFree(bt) and tnty and rvp and auqr.cleared[nrct] ~= yyep and not auqr.pending[nrct] then
local imjy = xo[nrct]
local uaf = imjy and ir(imjy)
local wist = false

if uaf then
if auqr.walkToBoss then
local liu = vyt[nrct]
local xqa = adn.Character and adn.Character:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))
local jcje = uaf:GetPivot().Position
local ushq = xqa and (xqa.Position - jcje).Magnitude <= 15

if ushq then
wist = true
elseif liu then
ic.TeleportToWorld:FireServer(liu)

local uhfn = os.clock()
while os.clock() - uhfn < 2.5 and auqr.enabled do
task.wait(0.1)
end

if auqr.enabled then
local lmc = ir(imjy) or uaf
local jsne = lmc:GetPivot()
local ele = jsne.Position + jsne.LookVector * 6
wist = hf(ele, auqr.walkSpeed, function()
return not auqr.enabled or not auqr.walkToBoss
end)
end
end

if not wist then
wist = ixx(uaf)
end
else
wist = ixx(uaf)
end

if wist then
task.wait(0.5)
end
end

if wist then
auqr.inFlight[nrct] = bt
auqr.pending[nrct] = true
auqr.pendingUntil[nrct] = os.time() + 15
auqr.cleared[nrct] = yyep

local cpn = auqr.difficulties[1] or _d("XABDBhIf")
local ize = auqr.progress[nrct]

if ize then
local xmxc = ize.unlocked
local lihj = ize.cooldowns

for xce, oe in ipairs(auqr.difficulties) do
local yut = not xmxc or xmxc[oe] ~= false
local cvh = lihj and tonumber(lihj[oe]) or 0

if yut and cvh <= 0 then
cpn = oe
break
end
end
end

pxwb.bossTeams.applyRaid(nrct)
ic.SetRaidDifficulty:FireServer(cpn, nrct)
task.wait(0.3)
ic.StartRaidBattle:FireServer(nrct)
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while enj() do
local ly = cnwj.inBattle and os.time() < cnwj.inBattleUntil

if cnwj.enabled and (my.enabled or not pxwb.workPending()) and not ly and my.slotFree(my.roomSlot()) and not (cnwj.pending and os.time() < cnwj.pendingUntil) then
local wxjq = cnwj.progress

if wxjq == nil then
ic.RequestInfiniteRoomProgress:FireServer()
task.wait(0.5)
else
local iuyb = nil

for drd, qyzy in ipairs(gh.Milestones) do
if gh.isMilestoneUnlocked(qyzy, wxjq) and not gh.isMilestoneCleared(qyzy, wxjq) then
iuyb = qyzy
break
end
end

if iuyb then

local muo = my.roomSlot()

cnwj.currentRoom = iuyb
cnwj.inBattle = true
cnwj.inBattleUntil = os.time() + 60
cnwj.pending = true
cnwj.pendingUntil = os.time() + 10

local zcsl = ysuk:FindFirstChild(muo == 2 and _d("YApCDgcxU0YbXQ41H11dHQM") or _d("YApCDgcxU0YbXQ41H11dHQ"))
if zcsl and zcsl:IsA(_d("cAZfDxIRXlcqRw4dBw")) then
zcsl:Fire(iuyb, _d("WwFXAh0aRlcwQwQcHg"))
end

local fi = ysuk:FindFirstChild(muo == 2 and _d("YRtQGQc6XFQGXwIHFmBdAFwpEgdGXgoD") or _d("YRtQGQc6XFQGXwIHFmBdAFwpEgdGXgo"))
if fi and fi:IsA(_d("cAZfDxIRXlcqRw4dBw")) then
fi:Fire(iuyb)
end

ic.StartBattle:FireServer(_d("WwFXAh0aRlcwQwQcHg"), {
milestone = iuyb,
slot = muo,
})
task.wait(2)
end
end
end

task.wait(1)
end
end)

local function sfis(gpit, xlm)
local czf = ysuk:FindFirstChild(_d("YQxDDhYddUcG"))

if not czf then
return
end

local mwrt = czf:FindFirstChild(gpit)
local rfgb = mwrt and mwrt:FindFirstChild(_d("ZA5dHhY/U1AKXQ"), true)
local byoe = mwrt and mwrt:FindFirstChild(_d("fg5TDh8"), true)

if not mwrt then
return
end

local elu = false

if rfgb then
elu = rfgb.Text == _d("fQE")
elseif byoe then
elu = not string.lower(byoe.Text):find(_d("XQlX"), 1, true)
end

if elu ~= xlm then
for zknj, xxvh in ipairs(getconnections(mwrt.MouseButton1Click)) do
local oqzn = xxvh.Function

if type(oqzn) == _d("VBpfCAcaXVw") then
pcall(oqzn)
else
pcall(function()
xxvh:Fire()
end)
end
end
end
end

getgenv().ACBXSetRollButton = sfis

local function idx(utt)
sfis(_d("YxpYCBghXV4Dcx4HB11c"), utt)
sfis(_d("cxpFBCEcXl4tRB8HHFw"), utt)
end

getgenv().ACBXSetRollUi = idx
tcc.setRollButton = sfis

pcall(function()
ic.SaveClientData:FireServer({ autoHideBattle = false })
end)

task.defer(function()
task.wait(0.5)

local psl = ysuk:FindFirstChild(_d("cA5FHx8WdUcG"))
local zaqh = psl and psl:FindFirstChild(_d("cA5FHx8WYVEdVA4d"))
local qfi = psl and psl:FindFirstChild(_d("egZVDjESRkYDVCkGB0ZdAQ"))

if qfi and qfi.Visible and zaqh and not zaqh.Visible and ekr() then
for wgp, gbv in ipairs(getconnections(qfi.MouseButton1Click)) do
local qs = gbv.Function

if type(qs) == _d("VBpfCAcaXVw") then
pcall(qs)
else
pcall(function()
gbv:Fire()
end)
end
end
end
end)

idx(true)

task.spawn(function()
while enj() do

if tcc.autoRoll then
sfis(_d("cxpFBCEcXl4tRB8HHFw"), true)
end

if tcc.autoQuickRoll then
sfis(_d("YxpYCBghXV4Dcx4HB11c"), true)
end

task.wait(1)
end
end)

local function pqlg()

if qe.floor then
return qe.floor
end

local nqr = ysuk:FindFirstChild(_d("cA5FHx8WdUcG"))

if not nqr then
return nil
end

for hqj, qzy in ipairs({ _d("ZgBGDgE1Xl0AQycSEVde"), _d("YBpfLR8cXUAjUAkWHw") }) do
local io = nqr:FindFirstChild(qzy)

if io and io.Visible and io.Text then
local aqxc = tonumber(io.Text:match(_d("GkpVQFo")))

if aqxc then
return aqxc
end
end
end

local pg = nqr:FindFirstChild(_d("dANeBAEgUUAKVAU"))
local ol = pg and pg:FindFirstChild(_d("ZgBBKRIB"))
local bjt = ol and ol:FindFirstChild(_d("dANeBAE/U1AKXQ"))

if bjt then
return tonumber(bjt.Text:match(_d("GkpVQFo")))
end

return nil
end

function pxwb.bossTeams.swapRows(lyqt)
local vjv = ysuk:FindFirstChild(_d("YQpFHxodVUEoRAI"))
local mkkd = vjv and vjv:FindFirstChild(_d("cxpFBCAEU0I") .. lyqt .. _d("YABG"), true)

if not mkkd then
return nil
end

return mkkd:FindFirstChild(_d("cxpFBCAEU0I") .. lyqt .. _d("cQdUCBg")),
mkkd:FindFirstChild(_d("cxpFBCAEU0I") .. lyqt .. _d("ZgpQBg")),
mkkd:FindFirstChild(_d("cxpFBCAEU0I") .. lyqt .. _d("dANeBAE"))
end

function pxwb.bossTeams.swapOn(zmyo)
local dl = ysuk:FindFirstChild(_d("YQpFHxodVUEoRAI"))
local onw = dl and dl:FindFirstChild(_d("dQpFOBYHRlsBVhg"), true)

if not onw then
return nil
end

local nyt, osz = pcall(function()
return onw:Invoke()
end)

if nyt and type(osz) == _d("Rg5TBxY") then
return osz[zmyo == 1 and _d("UxpFBCcWU188RgoDNlxTDV0OFw") or _d("UxpFBCcWU188RgoDQXdcDlMHFhc")] == true
end

return nil
end

function pxwb.bossTeams.swapBox(soyd, umgy)
if tonumber(soyd.Text) == umgy then
return
end

soyd.Text = tostring(umgy)

if getconnections then
for ai, huoy in ipairs(getconnections(soyd.FocusLost)) do
pcall(function()
huoy:Fire(true, Enum.UserInputType.Focus)
end)
end
end
end

function pxwb.bossTeams.swapSet(sipg, mlcv, aqk, clvj)
local wts, quum, jdz = pxwb.bossTeams.swapRows(sipg)

if not (wts and quum and jdz) then
return false
end

aqk = math.max(1, math.floor(tonumber(aqk) or 1))
clvj = math.clamp(math.floor(tonumber(clvj) or 1), 1, 4)

pxwb.bossTeams.swapBox(jdz, aqk)
pxwb.bossTeams.swapBox(quum, clvj)

local rzwz = pxwb.bossTeams.swapOn(sipg)

if rzwz ~= nil and rzwz ~= (mlcv == true) and getconnections then
pcall(function()
for nnp, vun in ipairs(getconnections(wts.MouseButton1Click)) do
pcall(function()
vun:Fire()
end)
end
end)
end

local goq = sipg == 1 and _d("") or _d("AA")

pcall(function()
ic.SaveClientData:FireServer({
[_d("UxpFBCcWU188RgoD") .. goq .. _d("dwFQCR8WVg")] = mlcv == true,
[_d("UxpFBCcWU188RgoD") .. goq .. _d("ZgpQBg")] = clvj,
[_d("UxpFBCcWU188RgoD") .. goq .. _d("dANeBAE")] = aqk,
})
end)

return true
end

function pxwb.bossTeams.swapApply()
local dabc = pxwb.bossTeams
local ndl = dabc.swap
local imr = true

if ndl.on then
imr = dabc.swapSet(1, ndl.floor > 0, ndl.floor, ndl.team)
imr = dabc.swapSet(2, ndl.floor2 > 0, ndl.floor2, ndl.team2) and imr
else
imr = dabc.swapSet(1, false, ndl.floor, ndl.team)
imr = dabc.swapSet(2, false, ndl.floor2, ndl.team2) and imr
end

dabc.swapMessage = _d("")

if not imr then
dabc.swapMessage = _d("ZgdUSxQSX1dIQksyBkZdT2UOEh4SYRhQG1MBXUUcEQoBFhJcAEVLEQZbXhsREhYHEh9PQw4HAUtbAVZF")
end

dabc.paintSwap()
end

function pxwb.bossTeams.swapReset(mmmw)
local njmk = pxwb.bossTeams

if mmmw then
njmk.swapFired[mmmw] = nil
else
njmk.swapFired = {}
end
end

function pxwb.bossTeams.swapTick()
local yj = pxwb.bossTeams
local ybqv = yj.swap

if not ybqv.on or (ybqv.floor <= 0 and ybqv.floor2 <= 0) then
if next(yj.swapFired) ~= nil then
yj.swapFired = {}
end

return
end

local tm = os.clock()
local baa = vn.remote(_d("YRhYHxAbZlcOXA"))

if tm - (yj.swapWroteAt or 0) > 10 then
yj.swapWroteAt = tm
yj.swapApply()
end

local warb = {
{
kind = _d("RgBGDgE"),
slot = my.towerSlot(),

live = tm - (qe.floorAt or 0) < 90,
floor = pqlg(),

own = true,
},
{
kind = _d("Wg5DDxAcQFc"),
slot = my.hardcoreSlot(),
live = of.active(),
floor = of.floorNow(),

own = false,
},
}

local ud = {
{ index = 1, floor = ybqv.floor, team = ybqv.team },
{ index = 2, floor = ybqv.floor2, team = ybqv.team2 },
}

for dei, cwf in ipairs(warb) do
if not cwf.live then

yj.swapFired[cwf.kind] = nil
elseif cwf.own and baa and cwf.floor then
local irk = yj.swapFired[cwf.kind]

for pczu, wnlv in ipairs(ud) do
local kemn = type(irk) == _d("Rg5TBxY") and irk[wnlv.index]

if wnlv.floor > 0 and cwf.floor == wnlv.floor and not kemn then
local ooj = pcall(function()
baa:FireServer(math.clamp(math.floor(wnlv.team), 1, 4), true, cwf.slot or 1)
end)

if ooj then
irk = type(irk) == _d("Rg5TBxY") and irk or {}
irk[wnlv.index] = wnlv.team
yj.swapFired[cwf.kind] = irk

yj.swapMessage = string.format(_d("cQ5CHx8WElQDXgQBUxdWTxxLAARbRgxZDhdTRl1PZQ4SHhIXCx8"), cwf.floor, wnlv.team)
yj.paintSwap()
end
end
end
end
end
end

task.spawn(function()
while enj() do
pcall(pxwb.bossTeams.swapTick)
task.wait(0.5)
end
end)

local function rln()

return wok.active() and wok.hasReadyTarget()
end

function auqr.worldBoss.remote(uig)
local huw = auqr.worldBoss

huw.remotes = huw.remotes or {}

local vw = huw.remotes[uig]

if vw and vw.Parent then
return vw
end

local djkr = vn.remote(uig)

if djkr then
huw.remotes[uig] = djkr
end

return djkr
end

function auqr.worldBoss.setRepeat(cup)
local nnyr = auqr.worldBoss
local azfp = nnyr.remote(_d("ZQBDBxcxXUEccAgHGl1c"))

if not azfp then
return false
end

local aw = nnyr.state
local ztk = type(aw) == _d("Rg5TBxY") and aw.repeatOn == true

if ztk == (cup and true or false) then
nnyr.repeatIntent = nil

return true
end

if cup then
local qlj = workspace:FindFirstChild(_d("ZQBDBxcxXUEccBkWHVM"))
local qxle = qlj and (qlj:FindFirstChild(_d("cQpdBz4SSg")) or qlj)
local zohx = adn.Character and adn.Character:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not (qxle and zohx) then
return false
end

local pgjy, qv = pcall(function()
return qxle:GetPivot()
end)

if not pgjy or (zohx.Position - qv.Position).Magnitude > 60 then
return false
end
end

if nnyr.repeatIntent == cup and os.clock() - (nnyr.repeatAskedAt or 0) < 20 then
return false
end

nnyr.repeatIntent = cup

pcall(function()
azfp:FireServer(_d("QApBDhIH"))
end)

nnyr.repeatAskedAt = os.clock()

return true
end

function auqr.worldBoss.requestSync()
local xbu = auqr.worldBoss
local stzq = xbu.remote(_d("ZQBDBxcxXUEccAgHGl1c"))

if stzq then
pcall(function()
stzq:FireServer(_d("QRZfCA"))
end)
end

xbu.askedAt = os.clock()
end

function auqr.worldBoss.hasWork()
local hzhx = auqr.worldBoss
local rf = hzhx.state

if not hzhx.enabled or type(rf) ~= _d("Rg5TBxY") then
return false
end

local vod = hzhx.isOpen()

if vod == nil then
vod = rf.open == true
end

return vod and rf.inFight ~= true
end

auqr.worldBoss.bossUp = function()
local ide = auqr.worldBoss

if not ide.enabled then
return false
end

local tpx = ide.isOpen()

if tpx ~= nil then
return tpx == true
end

local kay = ide.state

return type(kay) == _d("Rg5TBxY") and kay.open == true
end

function auqr.worldBoss.meter()
local ybzq = auqr.worldBoss
local xrq = os.clock()

if xrq - (ybzq.meterAt or 0) < 1 then
return ybzq.meterCurrent, ybzq.meterMax
end

ybzq.meterAt = xrq
ybzq.meterCurrent = nil
ybzq.meterMax = nil

local hzme = gx:FindFirstChild(_d("ZQBDBxcxXUEcYh8SB0dB"))
local txdu = hzme and tonumber(hzme:GetAttribute(_d("fwpFDgE")))
local fbyi = hzme and tonumber(hzme:GetAttribute(_d("fwpFDgE+U0o")))

if txdu and fbyi and fbyi > 0 then
ybzq.meterCurrent = txdu
ybzq.meterMax = fbyi

return ybzq.meterCurrent, ybzq.meterMax
end

local function fwun(znwv)
if type(znwv) ~= _d("QRtDAh0U") then
return nil
end

local hul, becy = znwv:match(_d("GjQUD1ZdbxlGFBhZW2l5InMAHhFvDUY"))
local hsui = tonumber(hul)

if not hsui then
return nil
end

local pfnu = ({ K = 1000, M = 1000000, B = 1000000000 })[string.upper(becy or _d(""))] or 1

return hsui * pfnu
end

local iev = ysuk:FindFirstChild(_d("ZQBDBxcxXUEccwodHVdAKEQC"))
local eeb = iev and iev:FindFirstChild(_d("cA5fBRYB"))
local ogza = eeb and eeb:FindFirstChild(_d("fwpFDgExU0A"))
local vwb = ogza

if ogza and not ogza:IsA(_d("ZgpJHz8SUFcD")) then
vwb = ogza:FindFirstChild(_d("ZgpJHw"))
end

local bsyp = vwb and vwb:IsA(_d("ZgpJHz8SUFcD")) and vwb.Text or nil

if type(bsyp) == _d("QRtDAh0U") then
local anwx, dguf = bsyp:match(_d("GjRvRC5YGx1HH0Ba"))

ybzq.meterCurrent = fwun(anwx)
ybzq.meterMax = fwun(dguf)
end

return ybzq.meterCurrent, ybzq.meterMax
end

function auqr.worldBoss.meterFull()
local lpvy, xrnz = auqr.worldBoss.meter()

return lpvy ~= nil and xrnz ~= nil and xrnz > 0 and lpvy >= xrnz
end

auqr.worldBoss.holdsFishing = function()
local cjr = auqr.worldBoss

if not cjr.enabled then
return false
end

if cjr.fishingMode == _d("RQ5YHw") then
return cjr.bossUp()
end

return os.clock() < (cjr.takingUntil or 0)
end

auqr.worldBoss.holdsDigging = function()
local pdc = auqr.worldBoss

if not pdc.enabled or pdc.digHold ~= true then
return false
end

if not pdc.bossUp() then
return false
end

return not (pdc.stopAtFull and pdc.meterFull())
end

auqr.worldBoss.usesGameChain = function()
local hie = auqr.worldBoss

return hie.fishingMode == _d("RQ5YHw") or hie.digHold == true
end

function auqr.worldBoss.travel()
local jbeh = auqr.worldBoss
local towq = adn.Character
local lje = towq and towq:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not lje or os.clock() < jbeh.travelUntil then
return
end

jbeh.travelUntil = os.clock() + 6

local zld = workspace:FindFirstChild(_d("ZQBDBxcxXUEcYQQBB1Ne"))
local ooqp = zld and zld:FindFirstChild(_d("YgBDHxIf"))

if not ooqp then
return
end

if (lje.Position - ooqp.Position).Magnitude > 150 then
local kiwz = vn.remote(_d("ZgpdDgMcQEY7XjwcAV5W"))

if kiwz then
pcall(function()
kiwz:FireServer(_d("XgBTCQo"))
end)
end

return
end

if (lje.Position - ooqp.Position).Magnitude > 6 then
jbeh.walkLeg(ooqp.Position + Vector3.new(0, 3, 0), 4)

if (lje.Position - ooqp.Position).Magnitude > 9 then
return
end
end

local pba = ooqp:FindFirstChildOfClass(_d("Yh1eExoeW0YWYRkcHkJG"))

if not pba then
return
end

pcall(function()
if type(fireproximityprompt) == _d("VBpfCAcaXVw") then
fireproximityprompt(pba)
else
pba:InputHoldBegin()
task.wait(0.25)
pba:InputHoldEnd()
end
end)
end

function auqr.worldBoss.reach()
local nyoy = auqr.worldBoss

local hdgb = workspace:FindFirstChild(_d("ZQBDBxcxXUEccBkWHVM")) or workspace:FindFirstChild(_d("ZQBDBxcxXUEcYhsSBFw"), true)
local epu = adn.Character
local tb = epu and epu:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not (hdgb and tb) then
nyoy.travel()
return false
end

local ckn = hdgb:FindFirstChild(_d("cQpdBz4SSg")) or hdgb
local jh, laxu = pcall(function()
return ckn:GetPivot()
end)

if not jh then
return false
end

local apmi = laxu.Position + laxu.LookVector * 6 + Vector3.new(0, 3, 0)
local pdgq = Vector3.new(laxu.Position.X, apmi.Y, laxu.Position.Z)

tb.CFrame = CFrame.lookAt(apmi, pdgq)

return true
end

auqr.worldBoss.cityBounds = { 19100, 20900, -850, 850 }

function auqr.worldBoss.inArena()
local frvk = adn.Character and adn.Character:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))
local ewj = auqr.worldBoss.cityBounds

if not frvk then
return false
end

local xsch = frvk.Position

return xsch.X >= ewj[1] and xsch.X <= ewj[2]
and xsch.Z >= ewj[3] and xsch.Z <= ewj[4]
end

function auqr.worldBoss.enterCity(hmvd)
local no = auqr.worldBoss

local smip = os.clock() + (hmvd or 30)

if no.inArena() then
return true
end

while os.clock() < smip do
if not no.enabled then
return false
end

no.travel()

if no.inArena() then
return true
end

task.wait(0.5)
end

return no.inArena()
end

auqr.worldBoss.walking = false
auqr.worldBoss.walkStartedAt = 0

function auqr.worldBoss.walkLeg(jhz, bmlf)
local nli = auqr.worldBoss
local mgr = adn.Character
local fjkk = mgr and mgr:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))
local bl = mgr and mgr:FindFirstChildOfClass(_d("ehpcCh0cW1Y"))

if not (fjkk and bl) then
return false
end

if nli.walking and os.clock() - (nli.walkStartedAt or 0) < 45 then
return false
end

bmlf = bmlf or 6

nli.walking = true
nli.walkStartedAt = os.clock()

local lzv, mbpy = pcall(function()
local ixxa = os.clock() + 40
local lngp = 0
local vcq = fjkk.Position
local xwi = os.clock()

while nli.enabled and os.clock() < ixxa do
local mbtz = Vector3.new(jhz.X - fjkk.Position.X, 0, jhz.Z - fjkk.Position.Z)

if mbtz.Magnitude <= bmlf then
return true
end

if os.clock() - lngp >= 0.25 then
bl:MoveTo(Vector3.new(jhz.X, fjkk.Position.Y, jhz.Z))
lngp = os.clock()
end

if os.clock() - xwi >= 1.2 then
if (fjkk.Position - vcq).Magnitude < 2 then
bl.Jump = true
end

vcq = fjkk.Position
xwi = os.clock()
end

task.wait(0.1)
end

return Vector3.new(jhz.X - fjkk.Position.X, 0, jhz.Z - fjkk.Position.Z).Magnitude <= bmlf
end)

pcall(function()
bl:MoveTo(fjkk.Position)
end)

nli.walking = false

return lzv and mbpy == true
end

function auqr.worldBoss.walkIn(qiv)
local pbx = auqr.worldBoss
local ehm = workspace:FindFirstChild(_d("ZQBDBxcxXUEccBkWHVM"))
local eku = ehm and (ehm:FindFirstChild(_d("cQpdBz4SSg")) or ehm) or nil
local nuuh = adn.Character and adn.Character:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

if not (eku and nuuh) then
return false
end

local yuk, hmxn = pcall(function()
return eku:GetPivot()
end)

if not yuk then
return false
end

local gtnc = hmxn.Position + hmxn.LookVector * 6 + Vector3.new(0, 3, 0)

if (nuuh.Position - gtnc).Magnitude <= (qiv or 10) then
return true
end

local xoa = pbx.walkLeg(gtnc, qiv or 6)

if not xoa then
xoa = (nuuh.Position - hmxn.Position).Magnitude <= 25
end

return xoa
end

function auqr.worldBoss.approach()
local dbvm = auqr.worldBoss

if not dbvm.walkToBoss then
return dbvm.reach()
end

if not dbvm.enterCity() then
return false
end

return dbvm.walkIn(10)
end

function auqr.worldBoss.fight()
local yphb = auqr.worldBoss
local ghqe = yphb.remote(_d("ZQBDBxcxXUEccAgHGl1c"))

local function zksj(kvrg)
yphb.nextFightAt = os.clock() + (kvrg or 20)

return false
end

if not ghqe then
return zksj(60)
end

if yphb.stopAtFull and yphb.meterFull() then
return zksj(20)
end

if msip.enabled
and (msip.tpToBay or msip.deepZone)
and msip.phase ~= _d("WwtdDg") then
return false
end

yphb.takingUntil = os.clock() + 45

local emgb = workspace:FindFirstChild(_d("ZQBDBxcxXUEccBkWHVM"))
local jqms = emgb and (emgb:FindFirstChild(_d("cQpdBz4SSg")) or emgb) or nil
local agbo = adn.Character and adn.Character:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))

local function rgi()
if not (jqms and agbo) then
return nil
end

local kgn, ewmw = pcall(function()
return jqms:GetPivot()
end)

if not kgn then
return nil
end

return (agbo.Position - ewmw.Position).Magnitude
end

local mgg = yphb.usesGameChain() and (rgi() or math.huge) <= 60

if not mgg and not yphb.approach() then
yphb.takingUntil = os.clock() + 3

return zksj(yphb.inArena() and 3 or 20)
end

if jqms and agbo then
local xbsi, trx = pcall(function()
return jqms:GetPivot()
end)

if not xbsi or (agbo.Position - trx.Position).Magnitude > 60 then
yphb.takingUntil = os.clock() + 2

return zksj(yphb.inArena() and 2 or 10)
end
end

pxwb.bossTeams.applyTeam(yphb.team)

task.wait(mgg and 0 or (yphb.walkToBoss and 0.3 or 1.4))

pcall(function()
ghqe:FireServer(_d("VAZWAwc"))
end)

yphb.fightAt = os.clock()

yphb.holdUntil = os.clock() + (yphb.usesGameChain() and 0.7 or 4)

yphb.takingUntil = os.clock() + 0.6

if msip.enabled and (msip.tpToBay or msip.deepZone) then
msip.deepPhase = _d("WwtdDg")
msip.deepStageAt = 0
msip.nextCastAt = 0
end

yphb.killsAtFire = type(yphb.state) == _d("Rg5TBxY") and tonumber(yphb.state.kills) or nil

if not yphb.usesGameChain() and msip.enabled
and (msip.tpToBay or msip.deepZone) then
yphb.nextFightAt = os.clock() + 1
end

return true
end

function auqr.worldBoss.buy(ptpf)
local xgg = auqr.worldBoss
local zpod = xgg.remote(_d("ZQBDBxcxXUEccAgHGl1c"))

ptpf = ptpf or 1

if not zpod then
return 0
end

local uzo = 0

for mgfv = 1, ptpf do
local piuh = xgg.state

if type(piuh) ~= _d("Rg5TBxY") or type(piuh.shop) ~= _d("Rg5TBxY") then
break
end

if os.clock() < xgg.buyAt then
break
end

local tdg = tonumber(piuh.medals) or 0
local ue = nil

for fvm, sag in ipairs(piuh.shop) do
local gda = tonumber(sag.price) or 0
local bcly = sag.kind ~= _d("WxtUBg") or (tonumber(sag.left) or 0) > 0

if xgg.selected[sag.id] == true and bcly and sag.owned ~= true and gda <= tdg then
ue = sag
break
end
end

if not ue then
break
end

pcall(function()
zpod:FireServer(_d("UBpI"), ue.id, 1)
end)

uzo = uzo + 1
xgg.bought = xgg.bought + 1
xgg.buyAt = os.clock() + 1.2

xgg.syncedAt = 0
xgg.requestSync()
task.wait(1.1)
end

return uzo
end

auqr.worldBoss.questGroups = { _d("QgpDGBwdU14"), _d("VQNeCRIf"), _d("VAZdBw"), _d("QApCHwEaUUYGXgU") }

function auqr.worldBoss.questRows(yxz)
local bui = auqr.worldBoss
local eox = type(yxz) == _d("Rg5TBxY") and yxz.quests or nil
local avcx = {}

if type(eox) ~= _d("Rg5TBxY") then
return avcx
end

for ttwh, pfg in ipairs(bui.questGroups) do
local nvf = eox[pfg]

if type(nvf) == _d("Rg5TBxY") then
for phqy, psad in ipairs(nvf) do
if type(psad) == _d("Rg5TBxY") then
table.insert(avcx, psad)
end
end
end
end

return avcx
end

function auqr.worldBoss.claim()
local gdrn = auqr.worldBoss
local uoyt = gdrn.remote(_d("ZQBDBxcxXUEccAgHGl1c"))
local bcd = gdrn.state

if not uoyt or type(bcd) ~= _d("Rg5TBxY") or type(bcd.quests) ~= _d("Rg5TBxY") then
return 0
end

if os.clock() < gdrn.claimAt then
return 0
end

local abge = gdrn.questRows(bcd)

if #abge == 0 then
return 0
end

local togn = {}

for axg, kykz in ipairs(abge) do
if kykz.id ~= nil then
togn[tostring(kykz.id)] = true
end
end

for xiqt, yoq in pairs(gdrn.claimFired) do
if not togn[xiqt] or os.clock() - yoq > 120 then
gdrn.claimFired[xiqt] = nil
end
end

local gwaf = nil

for qwrm, pdl in ipairs(abge) do
if pdl.complete == true and pdl.claimed ~= true and pdl.id ~= nil then
local clnm = tostring(pdl.id)
local katu = gdrn.claimFired[clnm]

if not (katu and os.clock() - katu < 6) then
gwaf = pdl
break
end
end
end

if not gwaf then
return 0
end

gdrn.claimFired[tostring(gwaf.id)] = os.clock()
gdrn.claimedTotal = gdrn.claimedTotal + 1

pcall(function()
uoyt:FireServer(_d("UQNQAh4"), gwaf.id)
end)

gdrn.claimAt = os.clock() + 2
gdrn.syncedAt = 0
gdrn.requestSync()

return 1
end

auqr.worldBoss.syncRemote = tn(_d("ZQBDBxcxXUEcYhIdEA"))

if auqr.worldBoss.syncRemote then
auqr.worldBoss.syncRemote.OnClientEvent:Connect(function(wall)
local si = auqr.worldBoss

if type(wall) ~= _d("Rg5TBxY") then
return
end

si.state = wall
si.syncedAt = os.clock()

if wall.inFight == true then
si.wasFighting = true
elseif si.wasFighting then
si.wasFighting = false

if msip.enabled then
pcall(msip.recover)
end
end
end)
end

task.spawn(function()
auqr.worldBoss.requestSync()
end)

task.spawn(function()
while enj() do
local qnvw = auqr.worldBoss
local qvi = qnvw.state

if qnvw.autoClaim then
if os.clock() - qnvw.syncedAt > 4 and os.clock() - qnvw.askedAt > 1 then
qnvw.requestSync()
end

qnvw.claim()
end

if qnvw.enabled then

if os.clock() - qnvw.syncedAt > (qnvw.bossUp() and 1.5 or 4) and os.clock() - qnvw.askedAt > 1 then
qnvw.requestSync()
end

if qnvw.autoBuy and next(qnvw.selected) then
qnvw.buy(1)
end

local ydoz = type(qvi) == _d("Rg5TBxY") and qvi.repeatOn == true

if qnvw.usesGameChain() then

local jutr = type(qvi) == _d("Rg5TBxY") and tonumber(qvi.kills) or nil

if jutr and jutr ~= qnvw.seenKills then
qnvw.seenKills = jutr
qnvw.progressAt = os.clock()

qnvw.chainWaitAt = nil
end

if qnvw.bossUp() and not ydoz and os.clock() - (qnvw.repeatAskedAt or 0) > 20 then
if qnvw.approach() then
qnvw.repeatSeeded = true
qnvw.progressAt = os.clock()

qnvw.setRepeat(true)
end
end

if qnvw.hasWork() and os.clock() >= qnvw.holdUntil
and os.clock() >= (qnvw.nextFightAt or 0)
and os.clock() - (qnvw.kickAt or 0) > 0.5
and not (qnvw.stopAtFull and qnvw.meterFull()) then
qnvw.chainWaitAt = nil
qnvw.kickAt = os.clock()
qnvw.fight()
elseif not qnvw.hasWork() then
qnvw.chainWaitAt = nil
end

if not qnvw.bossUp() then
qnvw.chainWaitAt = nil

if ydoz and os.clock() - (qnvw.repeatAskedAt or 0) > 6 then
qnvw.repeatSeeded = false
qnvw.setRepeat(false)
end
end
elseif qnvw.isOpen() and ydoz and os.clock() - (qnvw.repeatAskedAt or 0) > 6 then
qnvw.setRepeat(false)
end

local ljhb = type(qvi) == _d("Rg5TBxY") and tonumber(qvi.kills) or nil

if qnvw.killsAtFire ~= nil and ljhb == qnvw.killsAtFire
and os.clock() - (qnvw.fightAt or 0) > (qnvw.inArena() and 2.5 or 9)
and os.clock() < (qnvw.nextFightAt or 0)
and os.clock() >= qnvw.holdUntil then
qnvw.killsAtFire = nil
qnvw.nextFightAt = os.clock()
end

if not qnvw.usesGameChain() and qnvw.hasWork() and os.clock() >= qnvw.holdUntil
and os.clock() >= (qnvw.nextFightAt or 0)
and not (qnvw.stopAtFull and qnvw.meterFull()) then

local hdl = rln()
local lyrl = my.roleSlot(_d("XB9S")) or 1
local qiaj = my.enabled and my.busy(lyrl)

if not hdl and not qiaj then
qnvw.fight()
end
end
end

local ciq = qnvw.bodyText()

if qnvw.bodyParagraph and ciq ~= qnvw.bodyShown then
qnvw.bodyShown = ciq

pcall(function()
qnvw.bodyParagraph:UpdateBody(ciq)
end)
end

local bjr = qnvw.shopText()

if qnvw.shopParagraph and bjr ~= qnvw.shopShown then
qnvw.shopShown = bjr

pcall(function()
qnvw.shopParagraph:UpdateBody(bjr)
end)
end

task.wait(0.5)
end
end)

function my.roomsHaveWork()
if not cnwj.enabled then
return false
end

local mwmb = cnwj.progress

if mwmb == nil then
return true
end

for iwj, rnfq in ipairs(gh.Milestones) do
if gh.isMilestoneUnlocked(rnfq, mwmb) and not gh.isMilestoneCleared(rnfq, mwmb) then
return true
end
end

return false
end

function my.raidHasWork()
if not auqr.enabled then
return false
end

local ulp = gx:FindFirstChild(_d("YA5YDyAHU0YaQg"))

if not ulp then
return false
end

if not (ulp:GetAttribute(_d("exx+GxYd")) == true or ulp:GetAttribute(_d("dABDCBYX")) == true) then
return false
end

for qnzb, ynxu in ipairs({ 1, 2 }) do
local jqyp = (ynxu ~= 1 and not my.splitNpc()) and 1 or nil
local ngnp = auqr.picks[jqyp or ynxu] and auqr.bossFor(ynxu, jqyp)

if ngnp and auqr.cleared[ngnp] ~= ltd(ngnp) then
return true
end
end

return false
end

function my.towerYields()
return rln()
or my.roomsHaveWork()
or my.raidHasWork()
or auqr.worldBoss.hasWork()
end

function my.towerOutranks()
return not my.enabled and (of.active() or jjrz.run.enabled)
end

local function cym(ffh)
if not ffh then
return false
end

local kdb = false

for yms, ots in ipairs(getconnections(ffh.MouseButton1Click)) do
local rfq = ots.Function

if type(rfq) == _d("VBpfCAcaXVw") then
pcall(rfq)
else
pcall(function()
ots:Fire()
end)
end

kdb = true
end

return kdb
end

function spm()
for ikco, nlh in ipairs({ _d("cA5FHx8WdUcG"), _d("cA5FHx8WdUcGAw") }) do
local okg = ysuk:FindFirstChild(nlh)

if okg then
local tudt = okg:FindFirstChild(_d("cA5FHx8WYVEdVA4d"))
local ivma = tudt and tudt:FindFirstChild(_d("YxpYCBg0W0QKZBsxBkZGAF8"))

if cym(ivma) then
return true
end

local wkal = okg:FindFirstChild(_d("dANeBAEgUUAKVAU"))
local jwmc = wkal and wkal:FindFirstChild(_d("cABFHxwecFMd"))
local vutj = jwmc and jwmc:FindFirstChild(_d("dQZHDiYDcEcbRQQd"))

if cym(vutj) then
return true
end
end
end

local blum = gx:FindFirstChild(_d("YApcBAcWQQ"))
local yes = blum and blum:FindFirstChild(_d("dQZHDiYDZl0YVBk"))
local wvo = blum and blum:FindFirstChild(_d("dwFVPxwEV0A9VAYcB1c"))

if not (yes or wvo) then
return false
end

if yes then
pcall(function()
yes:FireServer()
end)
end

if wvo then
pcall(function()
wvo:FireServer(1)
end)
end

qe.manualPause = false
qe.floor = nil
vn.restorePause()

return true
end

local qju = spm

function spm()

qe.lastGiveUp = {
at = os.time(),
clock = os.clock(),
floor = qe.floor,
parked = vn.parked(),
active = cqzq(),
hard = vn.hardNow(),
nightmare = qe.nightmare == true,
caller = debug.traceback(_d(""), 2),
}

local gch = qju()

if gch then
ofmg.armedAt = os.clock()
end

return gch
end

function rtnn(lub)

local kai = false

if lub ~= false and cqzq() then
local mls = pqlg()

if mls then
kai = vn.pauseAt(true, mls) or kai

qe.pauseArmed = true
end
end

for ose, owhc in ipairs({ _d("cA5FHx8WdUcG"), _d("cA5FHx8WdUcGAw") }) do
local omj = ysuk:FindFirstChild(owhc)

if omj then
local bkur = omj:FindFirstChild(_d("cA5FHx8WYVEdVA4d"))
local chke = bkur and bkur:FindFirstChild(_d("YxpYCBgxQFcOWikGB0ZdAQ"))

if chke then

if tostring(chke.Text):find(_d("0POi"), 1, true) then
kai = true
elseif cym(chke) then
kai = true
end
end

local uick = omj:FindFirstChild(_d("dANeBAEgUUAKVAU"))

if uick and uick.Visible then
local jiit = uick:FindFirstChild(_d("cABFHxwecFMd"))
local wkr = jiit and jiit:FindFirstChild(_d("Zg5aDjEBV1MEcx4HB11c"))

if cym(wkr) then
kai = true
end
end
end
end

return kai
end

function of.pauseRun()
if not cqzq() then
pcall(function()
ib:Dialog({
Title = _d("Yg5EGBZTe0EDUAUXU3pTHVUIHAFX"),
Description = _d("fAARHxwEV0BPQx4dU1tBT10CBRYSQAZWAwdTXF0YHUsAHBJGB1QZFlNbQU9fBAcbW1wIER8cU0JTGkIOXQ"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})
end)

return
end

of.paused = true
of.manualPause = true
local cne = rtnn(false)

pcall(function()
ib:Notify({
Title = _d("Yg5EGBZTe0EDUAUXU3pTHVUIHAFX"),
Description = cne and _d("ZgBGDgFTQEcBERsSBkFXCx8") or _d("YBpfSxoAEl4GRw5fU1BHGxEFHFNQQApQAFMRR0YbXgVTFV1HAVVF"),
Lifetime = 5,
})
end)
end

function of.giveUpRun()
if not cqzq() then
pcall(function()
ib:Dialog({
Title = _d("dQZHDlMmQhImQgcSHVYSJ1AZFxBdQAo"),
Description = _d("fAARHxwEV0BPQx4dU1tBT10CBRYSQAZWAwdTXF0YHUsAHBJGB1QZFlNbQU9fBAcbW1wIER8cU1VbGVRLBgMc"),
Buttons = {
{
Name = _d("dQBFSxoH"),
},
},
})
end)

return
end

of.gaveUp = true
of.paused = true
local ms = spm()

pcall(function()
ib:Notify({
Title = _d("dQZHDlMmQhImQgcSHVYSJ1AZFxBdQAo"),
Description = ms and _d("dQ5HDlMGQhIbWQ5TEEdAHVQFB1NGXRhUGVMVXl0AQ0U") or _d("YBpfSxoAEl4GRw5fU1BHGxEFHFNVWxlUSwYDElAaRR8cHRJUAEQFF10"),
Lifetime = 5,
})
end)
end

task.spawn(function()
while enj() do

pcall(vn.pinMode)

if qe.pauseArmed and not rfo.enabled
and (not qe.enabled or not qe.paused) then
vn.restorePause()

if vn.pauseState() ~= true then
qe.pauseArmed = false
end
end

if qe.enabled and not qe.manualPause and my.towerSlot() ~= nil
and not jjrz.run.enabled then

local rqq = os.clock() - (qe.floorAt or 0) > 12
and os.clock() - (qe.battleAt or 0) > 12

local ekp = my.towerSlot() == 1 and not qe.paused
and not (rfo.enabled and rfo.floor > 0)
and rqq
and vn.parked()

if ekp then
qe.parkedAt = qe.parkedAt > 0 and qe.parkedAt or os.clock()

if os.clock() - qe.parkedAt >= 25 then
qe.parkedAt = os.clock()
spm()
end
else
qe.parkedAt = 0
end

local srxu = vn.hardPickNow()

local lbm = not qe.paused and not qe.pending
and not (rfo.enabled and rfo.floor > 0)
and cqzq()
and srxu ~= nil
and srxu ~= (qe.nightmare == true)

if lbm then
qe.modeWrongAt = qe.modeWrongAt or os.clock()
else
qe.modeWrongAt = nil
end

if qe.modeWrongAt and os.clock() - qe.modeWrongAt > 20
and os.clock() - (qe.modeFixAt or 0) > 20 then
qe.modeFixAt = os.clock()
qe.modeWrongAt = nil
vn.endIfWrongMode(qe.nightmare == true)
end

if (qe.floorAt or 0) > 0 and not qe.paused
and os.clock() - qe.floorAt > 60
and os.clock() - (qe.battleAt or 0) > 60
and not cqzq()
and not my.busy(my.towerSlot() or 1) then
qe.floorAt = 0
qe.battleAt = 0
qe.floor = nil
end

if not my.enabled and (my.towerOutranks() or my.towerYields()) then
if not qe.paused then
qe.paused = true
rtnn()
end

elseif my.slotFree(my.towerSlot() or 1)
and (qe.floorAt or 0) == 0
and not pxwb.bossTeams.swapHold then
local psyt = pqlg()
local bgb = rfo.enabled and rfo.floor or 0
local eqxn = bgb > 0 and psyt ~= nil and psyt >= bgb

if eqxn then
if not qe.paused then
qe.paused = true
rtnn()
end
else

if qe.paused then
qe.paused = false
vn.restorePause()
end

if not (qe.pending and os.time() < qe.pendingUntil) then

pxwb.bossTeams.applyTower(_d("RgBGDgE"), 1)

vn.hardPick(qe.nightmare == true)
ic.EndTowerRemote:FireServer(1)
task.wait(0.25)

ic.StartBattle:FireServer(_d("RgBGDgE"), { hard = qe.nightmare == true })

lum.triggered = false
lum.weatherTriggered = false

qe.floorAt = os.clock()

qe.floor = nil
qe.pending = true
qe.pendingUntil = os.time() + 8
task.wait(2)
end
end
end
end

task.wait(1)
end
end)

task.spawn(function()
while enj() do
if of.active() and my.hardcoreSlot() ~= nil then
local th = my.hardcoreSlot() or 1
local tmny = of.floorNow()

local bzw = rfo.enabled and rfo.floor or 0
local fww = lum.enabled and lum.floor or 0

if bzw <= 0 and not of.stoodDown and not of.manualPause
and not pxwb.bossTeams.swapHold then
of.paused = false
end

if of.gaveUp then

elseif fww > 0 and tmny and tmny >= fww then
of.gaveUp = true
of.paused = true
local jgqi = spm()

pcall(function()
ib:Notify({
Title = _d("cxpFBFM0W0QKET4D"),
Description = jgqi and (_d("dQ5HDlMGQhIORUsbEkBWDF4ZFlNUXgBeGVM") .. tmny .. _d("HA")) or (_d("eg5DDxAcQFdPVwccHEAS") .. tmny .. _d("Eh1UChAbV1ZDEQkGBxJcABEMGgVXEhpBSxEGRkYAX0sVHEdcCx8")),
Lifetime = 5,
})
end)
elseif tmny and bzw > 0 and tmny >= bzw then
if not of.paused then
of.paused = true
rtnn(false)
end
elseif not my.enabled and my.towerYields() then

if not of.stoodDown then
of.stoodDown = true
of.paused = true
rtnn(false)
end
elseif of.stoodDown then

of.stoodDown = false
of.paused = false
elseif not of.paused and not pxwb.bossTeams.swapHold then
if my.slotFree(th) and not (of.pending and os.time() < of.pendingUntil) then
of.start(th)
task.wait(2)
end
end
end

task.wait(1)
end
end)

function my.slotActivity(sjyp)
if not my.busy(sjyp) then
return nil
end

local kwp = my.role[sjyp]
local yiuu = ysuk:FindFirstChild(sjyp == 2 and _d("cA5FHx8WdUcGAw") or _d("cA5FHx8WdUcG"))
local bymz = yiuu and yiuu:FindFirstChild(_d("YBpfLR8cXUAjUAkWHw"))
local ilj = bymz and bymz.Text or _d("")

if cnwj.enabled and kwp == _d("XB9S") then
local vckf = ilj:match(_d("bD1eBB5WQRlHFA9YWg"))

if vckf then
return _d("ewFXAh0aRldPQwQcHkESQhEZHBxfEg") .. vckf
end
end

if my.isTowerRole(kwp)
and (qe.enabled or jjrz.run.enabled or of.active()) then
local xqvv = ilj:match(_d("bCldBBwBF0FEGU4XWBs"))

if xqvv then
return my.roleName(sjyp) .. _d("EkIRDR8cXUBP") .. xqvv
end
end

return nil
end

function my.statusText()
if not my.enabled then
return _d("cxpFBFMgXl0bEQQVFRIfT1QdFgFLRgdYBRRTQEcBQkscHRJBA14fU0Ic")
end

local sdl = {}

for ezu = 1, 2 do
local rvq = _d("YQNeH1M") .. tostring(ezu) .. _d("EkIR")
local uk = my.slotActivity(ezu)

if ezu == 2 and my.hasSlot2 == false then
rvq = rvq .. my.roleLabel(ezu) .. _d("EkIRBxwQWVcLEUMdFldWHBEfGxYSdhpQB1MxU0YbXQ5TIF5dGxg")
elseif uk then
rvq = rvq .. uk
elseif my.busy(ezu) then
rvq = rvq .. my.roleLabel(ezu) .. _d("EkIRDRoUWkYGXww")
else
rvq = rvq .. my.roleLabel(ezu) .. _d("EkIRAhcfVw")
end

table.insert(sdl, rvq)
end

return table.concat(sdl, _d("OGU"))
end

task.spawn(function()
while enj() do
my.hasSlot2 = my.detectSlot2()
task.wait(5)
end
end)

task.spawn(function()
while enj() do

if not of.island and rfo.enabled and rfo.floor > 0 then
local tx = pqlg()

if tx and tx >= rfo.floor then
if not rfo.triggered then
rfo.triggered = true
rtnn()

pcall(function()
ic.SaveClientData:FireServer({
pauseInfiniteEnabled = true,
pauseInfiniteAt = tx,
})
end)
end
else
rfo.triggered = false
end
end

if not of.island and lum.enabled and lum.floor > 0 then
local cril = pqlg()

if cril and cril >= lum.floor then

if not lum.triggered and cqzq() then
lum.triggered = true
local jp = spm()

pcall(function()
ib:Notify({
Title = _d("cxpFBFM0W0QKET4D"),
Description = jp and (_d("dQ5HDlMGQhIORUsVH11dHRE") .. cril .. _d("HA")) or (_d("dANeBAFT") .. cril .. _d("Eh1UChAbV1ZDEQkGBxJcABEMGgVXEhpBSxEGRkYAX0sVHEdcCx8")),
Lifetime = 5,
})
end)
end
else
lum.triggered = false
end
end

if not of.island and lum.weatherEnabled then
local uww = pqlg()
local ycqv = lum.weatherMinFloor <= 0
or (uww ~= nil and uww >= lum.weatherMinFloor)
local joqq = ycqv and lum.weatherWanted() or nil

if joqq then
if not lum.weatherTriggered
and lum.weatherGivenFor ~= lum.weatherNow
and cqzq() then
lum.weatherTriggered = true
lum.weatherGivenFor = lum.weatherNow

local bm = spm()

pcall(function()
ib:Notify({
Title = _d("ZQpQHxsWQBIoWB0WU2dC"),
Description = bm
and (_d("dQ5HDlMGQhIORUsVH11dHRE") .. tostring(uww) .. _d("EgZfSw") .. joqq .. _d("HA"))
or (joqq .. _d("EgZCSwYDHhINRB9THV0SCFgdFlNHQk9THgcHXVxPUAUABFdAClVF")),
Lifetime = 5,
})
end)
end
else
lum.weatherTriggered = false
end
end

task.wait(1)
end
end)

task.spawn(function()
if ic.WeatherChanged then
pcall(function()
ic.WeatherChanged.OnClientEvent:Connect(function(icfd)

lum.weatherNow = nil
lum.weatherAt = 0
lum.weatherGivenFor = nil
ofmg.weatherSpent = nil

if type(icfd) == _d("QRtDAh0U") then
lum.weatherNow = icfd
end
end)
end)
end

while enj() do
if os.clock() - lum.weatherAt > 5 then
lum.weatherAt = os.clock()

if ic.RequestWeatherState then
local qsfw, gluz = pcall(function()
return ic.RequestWeatherState:InvokeServer()
end)

if qsfw and type(gluz) == _d("QRtDAh0U") then
if lum.weatherNow ~= nil and lum.weatherNow ~= gluz then
ofmg.weatherSpent = nil
lum.weatherGivenFor = nil
end

lum.weatherNow = gluz
end
end
end

task.wait(1)
end
end)

task.spawn(function()
local hvy = nil
local otkf = nil
local uxj = 0

while enj() do

if (ofmg.onWeather or ofmg.afterGiveUp) and os.clock() - uxj > 60 then
uxj = os.clock()

pcall(function()
ic.RequestItemSync:FireServer()
end)
end

if ofmg.onWeather and next(ofmg.weatherPotions) ~= nil then
local ydu = lum.weatherWanted(ofmg.weathers)

if ydu and lum.weatherNow ~= ofmg.weatherSpent then

ofmg.weatherSpent = lum.weatherNow
ofmg.pop(ofmg.weatherPotions, ofmg.weatherAmount, _d("ZQpQHxsWQBI") .. ydu)
end
end

if ofmg.afterGiveUp and next(ofmg.giveUpPotions) ~= nil and ofmg.armedAt > 0 then

local rqn = os.clock() - ofmg.armedAt

if not cqzq() or rqn >= 3 then
if rqn <= 30 then
ofmg.armedAt = 0
ofmg.pop(ofmg.giveUpPotions, ofmg.giveUpAmount, _d("cwlFDgFTVVsZVEsGAw"))
else

ofmg.armedAt = 0
end
end
end

local nyj = ofmg.status()

if nyj ~= hvy then
hvy = nyj

pcall(function()
ofmg.weatherParagraph:UpdateBody(nyj)
end)
end

local eit = ofmg.giveUpStatus()

if eit ~= otkf then
otkf = eit

pcall(function()
ofmg.giveUpParagraph:UpdateBody(eit)
end)
end

task.wait(1)
end
end)

task.spawn(function()
while enj() do
local rspc = msip.stick

if rspc.enabled and os.clock() >= rspc.at then
rspc.at = os.clock() + 3

local vyyl = nil

for zehx, zvgw in ipairs(workspace:GetDescendants()) do
if (zvgw:IsA(_d("cA5CDiMSQEY")) or zvgw:IsA(_d("fwBVDh8")))
and rspc.names[string.lower(zvgw.Name)] then
vyyl = zvgw
break
end
end

local jtg = adn.Character
local tgu = jtg and jtg:FindFirstChild(_d("ehpcCh0cW1Y9XgQHI1NAGw"))
local xjp = vyyl and (vyyl:IsA(_d("cA5CDiMSQEY")) and vyyl or vyyl:FindFirstChildWhichIsA(_d("cA5CDiMSQEY"), true))

if xjp and tgu then
local zvi = xjp:FindFirstChildWhichIsA(_d("Yh1eExoeW0YWYRkcHkJG"))
or (vyyl ~= xjp and vyyl:FindFirstChildWhichIsA(_d("Yh1eExoeW0YWYRkcHkJG"), true))

if (tgu.Position - xjp.Position).Magnitude > 4 then
pcall(function()
jtg:PivotTo(CFrame.new(xjp.Position + Vector3.new(0, 3, 0)))
end)

task.wait(0.4)
end

if zvi then
pcall(function()
zvi:InputHoldBegin()
task.wait(0.2)
zvi:InputHoldEnd()
end)
end

rspc.hits = rspc.hits + 1
rspc.last = _d("QgZSABYXEkcfEQoHUw") .. math.floor(xjp.Position.X) .. _d("Hk8") .. math.floor(xjp.Position.Z)

pcall(function()
ib:Notify({
Title = _d("fhpSAFMgRlsMWg"),
Description = rspc.last,
Lifetime = 4,
})
end)
elseif vyyl then
rspc.last = _d("VABEBRdT") .. vyyl:GetFullName() .. _d("Hk9fBAcbW1wIER8cU0FGDl8PUxxc")
else
rspc.last = _d("XAARGAcaUVlPWAVTB1pXT0YEAR9W")
end
end

task.wait(1)
end
end)

getgenv().ACBXStick = msip.stick

task.spawn(function()

local codx = game:GetService(_d("ZAZDHwYSXnsBQR4HPlNcDlYOAQ"))

local function innn()
local gwox = adn.Character
local ery = gwox and gwox:FindFirstChildOfClass(_d("ehpcCh0cW1Y"))

if ery and ery.Health > 0 then
pcall(function()
ery.Jump = true
end)
end

pcall(function()
codx:SendKeyEvent(true, Enum.KeyCode.Space, false, adn)
end)

task.wait(0.05)

pcall(function()
codx:SendKeyEvent(false, Enum.KeyCode.Space, false, adn)
end)

zmtc.jumps = zmtc.jumps + 1
end

while enj() do
if zmtc.enabled and os.clock() >= zmtc.nextAt then
zmtc.nextAt = os.clock() + 300
innn()
end

task.wait(1)
end
end)

ib:SetState(true)

task.defer(function()
local dne
for yfzd, lqcj in ipairs(game:GetService(_d("cQBDDjQGWw")):GetDescendants()) do
if lqcj:IsA(_d("ZgpJHz8SUFcD")) and lqcj.Text == vnu then
dne = lqcj
break
end
end

if not dne then
return
end

local zlkp = dne
while zlkp and not (zlkp:IsA(_d("dB1QBhY")) and zlkp.AbsoluteSize.X >= 600 and zlkp.AbsoluteSize.Y >= 400) do
zlkp = zlkp.Parent
end

if zlkp then
zlkp.AnchorPoint = Vector2.new(0, 0)

local yr = zlkp.AbsoluteSize
zlkp.Position = UDim2.new(0.5, -yr.X / 2, 0.5, -yr.Y / 2 - 20)
end
end)

task.defer(function()
task.wait(0.1)

for bs, ct in ipairs(game:GetService(_d("cQBDDjQGWw")):GetDescendants()) do
if ct:IsA(_d("YQxDBB8fW1wIdxkSHlc")) and ct.Name == _d("dwNUBhYdRkE8UhkcH15bAVY") then
ct.CanvasPosition = Vector2.new(0, 0)
end
end
end)

getgenv().ACBXTowerRunActive = cqzq
getgenv().ACBXWindow = ib

fdee.repo = _d("cQ0DJFwSUVAX")
fdee.url = _d("WhtFGwBJHR0dUBxdFFtGB0QJBgBXQAxeBQcWXEZBUgQeXHFQXX5EEhBQSkBcChodHVMMUxNdH0dT")
fdee.versionUrl = _d("WhtFGwBJHR0dUBxdFFtGB0QJBgBXQAxeBQcWXEZBUgQeXHFQXX5EEhBQSkBcChodHUQKQxgaHFwcG0kf")

fdee.announced = false

function fdee.fetch(mlrf)

local lmu, ti = pcall(function()
return game:HttpGet(mlrf .. _d("DRkM") .. os.time() .. _d("FB0M") .. math.random(1, 100000))
end)

if not lmu or type(ti) ~= _d("QRtDAh0U") or #ti == 0 then
return nil
end

if ti:find(_d("bFsBXw")) or ti:find(_d("bCFeH1M1XUcBVQ")) then
return nil
end

return ti
end

function fdee.check()
if fdee.buildId == _d("VgpH") then
return nil, _d("VgpHSxEGW14L")
end

if fdee.checking then
return nil, _d("UBpCEg")
end

fdee.checking = true
local ilxb = fdee.fetch(fdee.versionUrl)
fdee.checking = false

if not ilxb then
return nil, _d("XAARHRYBQVsAX0sVGl5X")
end

local pljt = ilxb:match(_d("bEpCQVtdHxtKQkFX")) or _d("")
pljt = pljt:gsub(_d("FxwbYV1ZFg"), _d(""))

if pljt == _d("") or not fdee.newer(pljt) then
return nil, _d("URpDGRYdRg")
end

return pljt
end

function fdee.newer(rrb)
local function ttu(caxx)
local znq, ldo = tostring(caxx or _d("")):match(_d("RFAZThdWVhcLFA9WFxdWRhRGW1ZWFwsUD1YXGw"))

return znq and (znq .. ldo) or nil
end

local function dac(rgzd)
local ncs = tostring(rgzd or _d(""))

if not ncs:match(_d("bEpVQFZdDRcLG08")) then
return nil
end

local dbdb = {}

for reh in ncs:gmatch(_d("Fwsa")) do
dbdb[#dbdb + 1] = tonumber(reh) or 0
end

return #dbdb > 0 and dbdb or nil
end

local qvd, ntfh = dac(rrb), dac(fdee.buildId)

if qvd and ntfh then
for huc = 1, math.max(#qvd, #ntfh) do
local qkd = qvd[huc] or 0
local pljp = ntfh[huc] or 0

if qkd ~= pljp then
return qkd > pljp
end
end

return false
end

if qvd or ntfh then
return qvd ~= nil
end

local jbql, nk = ttu(rrb), ttu(fdee.buildId)

if not jbql or not nk then
return tostring(rrb) ~= tostring(fdee.buildId)
end

return jbql > nk
end

function fdee.busy()
if pxwb.battlePending or pxwb.currentBattle then
return true
end

local dmva = getgenv().ACBXTowerRunActive

if type(dmva) == _d("VBpfCAcaXVw") then
local uxm, xnmh = pcall(dmva)

if uxm and xnmh then
return true
end
end

return false
end

function fdee.apply(zgr)
if fdee.applying then
return false
end

fdee.applying = true

local rak = fdee.fetch(fdee.url)

if not rak then
fdee.applying = false
warn(_d("aS5yKSsuEkcfVQoHFggSDF4eHxcSXABFSxccRVwDXgoXUw") .. tostring(zgr) .. _d("Hk9CHxIKW1wIEQQdUw") .. fdee.buildId)

pcall(function()
ib:Notify({
Title = _d("Zx9VCgcWElQOWAcWFw"),
Description = _d("cQBEBxdTXF0bEQ8cBFxeAFAPUw") .. tostring(zgr) .. _d("HE9iHxofXhIdRAUdGlxVTw") .. fdee.buildId .. _d("HA"),
Lifetime = 8,
})
end)

return false
end

local roqn, jn = loadstring(rak)

if not roqn then
fdee.applying = false
warn(_d("aS5yKSsuEkcfVQoHFggS") .. tostring(zgr) .. _d("EgteDgBTXF0bEQgcHkJbA1RLXlM") .. tostring(jn))

pcall(function()
ib:Notify({
Title = _d("Zx9VCgcWEkAKWw4QB1dW"),
Description = _d("cBpYBxdT") .. tostring(zgr) .. _d("EglQAh8WVhIbXksQHF9CBl0OXVNhRgZdB1MBR1wBWAUUUw") .. fdee.buildId .. _d("HA"),
Lifetime = 8,
})
end)

return false
end

pcall(function()
ib:Notify({
Title = _d("Zx9VCgcaXFU"),
Description = _d("YApdBBIXW1wIEQ") .. fdee.buildId .. _d("EkIPSw") .. zgr .. _d("HA"),
Lifetime = 4,
})
end)

task.wait(0.4)

fdee.cameFrom = fdee.buildId
getgenv().ACBXUpdatedFrom = fdee.buildId

pcall(function()
ib:Unload()
end)

getgenv().ACBXWindow = nil

task.wait(0.5)

local are, yeqi = pcall(roqn)

if not are then
fdee.applying = false
warn(_d("aS5yKSsuEkcfVQoHFggS") .. tostring(zgr) .. _d("EhtZGRYEEl0BEQccElYSQhE") .. tostring(yeqi))
return false
end

return true
end

fdee.cameFrom = getgenv().ACBXUpdatedFrom

task.defer(function()
if fdee.cameFrom then
getgenv().ACBXUpdatedFrom = nil
print(_d("aS5yKSsuElAaWAcXUw") .. fdee.buildId .. _d("EkdEGxcSRlcLEQ0BHF8S") .. tostring(fdee.cameFrom) .. _d("Gw"))

pcall(function()
ib:Notify({
Title = _d("Zx9VCgcWVg"),
Description = _d("YBpfBRodVRI") .. fdee.buildId .. _d("Hk9XGRweEg") .. tostring(fdee.cameFrom) .. _d("HA"),
Lifetime = 6,
})
end)

return
end

print(_d("aS5yKSsuElAaWAcXUw") .. fdee.buildId)
end)

task.defer(function()
task.wait(12)

if fdee.announced or fdee.buildId == _d("VgpH") or fdee.enabled then
return
end

fdee.announced = true

local fzp = fdee.check()

if not fzp then
return
end

print(_d("aS5yKSsuElAaWAcXUw") .. fdee.buildId .. _d("EgZCSxEWWlsBVUs") .. tostring(fzp) .. _d("Hk9QBRdTR0ILUB8WABJTHVRLHBVU"))
print(_d("aS5yKSsuEl4AUA9TGkYSGFgfG0kSXgBQDwAHQFsBVkMUEl9XVXkfBwN1VxsZSQ") .. fdee.url .. _d("EEYYQ1o"))

pcall(function()
ib:Notify({
Title = _d("Zx9VCgcWElMZUAIfElBeCg"),
Description = _d("YBpfBRodVRI") .. fdee.buildId .. _d("Hk8") .. tostring(fzp) .. _d("EgZCSxwGRhxPYw5eFkpXDEQfFlNGXU9dBBIXElsbHw"),
Lifetime = 10,
})
end)
end)

task.spawn(function()

task.wait(8)

while enj() do
if not fdee.enabled then

task.wait(5)
else
local pgcv = fdee.check()
local eiip = fdee.interval

if pgcv then
if fdee.pendingVersion ~= pgcv or not fdee.pendingSince then
fdee.pendingVersion = pgcv
fdee.pendingSince = os.clock()
end

local dg = os.clock() - (fdee.pendingSince or os.clock())

if not fdee.busy() or dg >= fdee.forceAfter then
if fdee.apply(pgcv) then

haej = false
return
end

fdee.pendingSince = os.clock()
eiip = fdee.retry
else
eiip = fdee.retry
end
else
fdee.pendingVersion = nil
fdee.pendingSince = nil
end

task.wait(eiip)
end
end
end)
getgenv().ACBXUpdater = fdee

task.defer(function()
task.wait(0.9)

local oza = tcc.loadUi()

if type(oza) ~= _d("Rg5TBxY") then
return
end

print(_d("aS5yKSsuEl4AXgBTAVdBG14ZFhcIEg") .. tostring(oza.theme) .. _d("Eg5FSw") .. tostring(oza.scale))
end)

local function drf()
if not enj() then
return
end

local qmnr = false
local gmsy = false

pcall(function()
qmnr = qe.nightmareToggle:GetState() == true
gmsy = qe.ui:GetState() == true
end)

if not (qmnr or gmsy) then
return
end

qe.nightmare = qmnr
qe.enabled = true
qe.manualPause = false
qe.paused = false
qe.parkedAt = 0
qe.modeWrongAt = nil
qe.pending = false
qe.pendingUntil = 0

vn.restorePause()
qe.pauseArmed = false
vn.hardPick(qmnr)

if not cqzq() then
qe.floorAt = 0
qe.battleAt = 0
qe.floor = nil
end

print(_d("aS5yKSsuEkYARg4BU0BXHEQGFhcSUwlFDgFTQFcDXgoXSRI") .. (qmnr and _d("XAZWAwceU0AK") or _d("XABDBhIf")))
end

task.defer(function()
task.wait(1)

local jo = tcc.autoLoadName()

if not jo then
return
end

local ywy, svsu = tcc.load(jo)

task.delay(2, drf)

tcc.selected = jo
tcc.lastText = ywy and (_d("cxpFBFMfXVMLVA9T") .. jo .. _d("HA"))
or (_d("cxpFBFMfXVMLEQ0SGl5XCwtL") .. tostring(svsu))
tcc.savesAt = 0

pcall(function()
tcc.fileDropdown:UpdateSelection(jo)
end)

pcall(function()
ib:Notify({
Title = _d("cQBfDRoU"),
Description = ywy and (_d("fgBQDxYXEg") .. jo .. _d("EgBfSwAHU0AbHw"))
or (_d("cQBEBxdTXF0bEQccElYS") .. jo .. _d("CE8") .. tostring(svsu)),
Lifetime = 5,
})
end)
end)

task.defer(function()
task.wait(3)

local gwj = auqr.worldBoss
local kiwf = tcc.loadBossMode()

if not kiwf or type(gwj.applyFishingMode) ~= _d("VBpfCAcaXVw") then
return
end

pcall(function()
gwj.applyFishingMode(kiwf)
gwj.fishingDropdown:UpdateSelection(kiwf)
end)
end)

task.defer(function()
task.wait(3)

if tcc.autoLoadName() then
return
end

drf()
end)
